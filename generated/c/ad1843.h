/* generated from devices/ad1843/registers.toml by defs-gen - do not edit, change the source */
/* Analog Devices AD1843 stereo codec: the 29 internal registers */
#ifndef AD1843_GEN_H
#define AD1843_GEN_H

#include <stdint.h>


/* enum analog_source: ADC analog input selection, one per channel. */
#define AD1843_ANALOG_SOURCE_LINE                    0 /* established */
#define AD1843_ANALOG_SOURCE_MIC                     1 /* established */
#define AD1843_ANALOG_SOURCE_AUX1                    2 /* established */
#define AD1843_ANALOG_SOURCE_AUX2                    3 /* established */
#define AD1843_ANALOG_SOURCE_AUX3                    4 /* established */
#define AD1843_ANALOG_SOURCE_MONO_IN                 5 /* established */
#define AD1843_ANALOG_SOURCE_DAC1_OUT                6 /* established */
#define AD1843_ANALOG_SOURCE_DAC2_OUT                7 /* established */

/* enum clock_select: Sample-rate source for a converter or ADC. */
#define AD1843_CLOCK_SELECT_FIXED48K                 0 /* established */
#define AD1843_CLOCK_SELECT_GEN1                     1 /* established */
#define AD1843_CLOCK_SELECT_GEN2                     2 /* established */
#define AD1843_CLOCK_SELECT_GEN3                     3 /* established */

/* enum digital_source: ADC digital source. Code 1 is reserved. */
#define AD1843_DIGITAL_SOURCE_ANALOG                 0 /* established */
#define AD1843_DIGITAL_SOURCE_RESERVED               1 /* established */
#define AD1843_DIGITAL_SOURCE_DAC1                   2 /* established */
#define AD1843_DIGITAL_SOURCE_DAC2                   3 /* established */

/* enum gain_timing: When a DAC gain change takes effect. */
#define AD1843_GAIN_TIMING_ZERO_CROSS                0 /* established */
#define AD1843_GAIN_TIMING_IMMEDIATE                 1 /* established */

/* enum line_mode: Line input wiring for one channel. */
#define AD1843_LINE_MODE_SINGLE_ENDED                0 /* established */
#define AD1843_LINE_MODE_DIFFERENTIAL                1 /* established */

/* enum pcm_format: Serial sample format of a converter or ADC. */
#define AD1843_PCM_FORMAT_UNSIGNED8                  0 /* established */
#define AD1843_PCM_FORMAT_SIGNED16                   1 /* established */
#define AD1843_PCM_FORMAT_MULAW                      2 /* established */
#define AD1843_PCM_FORMAT_ALAW                       3 /* established */

/*
 * INIT, the converter power-down state and the silicon revision. Reset sets INIT and power-down, so the codec starts in initialisation. The revision field is read-only and resets to 1, the first-silicon value in the table; the revision of a fitted part is not measured here (established, register pages 28-50 and summary page 52).
 */
/* status_id: rw16, space codec_reg, reset 0xc001; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_STATUS_ID_OFFSET                      0x0u /* established */
#define AD1843_STATUS_ID_INIT_SHIFT                  15 /* established */
#define AD1843_STATUS_ID_INIT_MASK                   0x1u
#define AD1843_STATUS_ID_INIT_INPLACE                (AD1843_STATUS_ID_INIT_MASK << AD1843_STATUS_ID_INIT_SHIFT)
#define AD1843_STATUS_ID_CONVERTER_POWERDOWN_SHIFT   14 /* established */
#define AD1843_STATUS_ID_CONVERTER_POWERDOWN_MASK    0x1u
#define AD1843_STATUS_ID_CONVERTER_POWERDOWN_INPLACE (AD1843_STATUS_ID_CONVERTER_POWERDOWN_MASK << AD1843_STATUS_ID_CONVERTER_POWERDOWN_SHIFT)
#define AD1843_STATUS_ID_REVISION_SHIFT              0 /* established */
#define AD1843_STATUS_ID_REVISION_MASK               0xfu
#define AD1843_STATUS_ID_REVISION_INPLACE            (AD1843_STATUS_ID_REVISION_MASK << AD1843_STATUS_ID_REVISION_SHIFT)

/*
 * DAC underrun flags and the peak level of each ADC channel. A read returns the status and clears all of it. Any write clears all of it too, so this register is not write-one-to-clear (established, register pages 28-50).
 */
/* underrun_peak: rw16, space codec_reg, reset 0x0; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_UNDERRUN_PEAK_OFFSET                  0x1u /* established */
#define AD1843_UNDERRUN_PEAK_DAC2_UNDERRUN_SHIFT     9 /* established */
#define AD1843_UNDERRUN_PEAK_DAC2_UNDERRUN_MASK      0x1u
#define AD1843_UNDERRUN_PEAK_DAC2_UNDERRUN_INPLACE   (AD1843_UNDERRUN_PEAK_DAC2_UNDERRUN_MASK << AD1843_UNDERRUN_PEAK_DAC2_UNDERRUN_SHIFT)
#define AD1843_UNDERRUN_PEAK_DAC1_UNDERRUN_SHIFT     8 /* established */
#define AD1843_UNDERRUN_PEAK_DAC1_UNDERRUN_MASK      0x1u
#define AD1843_UNDERRUN_PEAK_DAC1_UNDERRUN_INPLACE   (AD1843_UNDERRUN_PEAK_DAC1_UNDERRUN_MASK << AD1843_UNDERRUN_PEAK_DAC1_UNDERRUN_SHIFT)
#define AD1843_UNDERRUN_PEAK_R_PEAK_SHIFT            2 /* established */
#define AD1843_UNDERRUN_PEAK_R_PEAK_MASK             0x3u
#define AD1843_UNDERRUN_PEAK_R_PEAK_INPLACE          (AD1843_UNDERRUN_PEAK_R_PEAK_MASK << AD1843_UNDERRUN_PEAK_R_PEAK_SHIFT)
#define AD1843_UNDERRUN_PEAK_L_PEAK_SHIFT            0 /* established */
#define AD1843_UNDERRUN_PEAK_L_PEAK_MASK             0x3u
#define AD1843_UNDERRUN_PEAK_L_PEAK_INPLACE          (AD1843_UNDERRUN_PEAK_L_PEAK_MASK << AD1843_UNDERRUN_PEAK_L_PEAK_SHIFT)

/*
 * Analog source, microphone boost and gain for each ADC channel. The gain steps are 1.5 dB per code and the microphone boost adds 20 dB (established, register pages 28-50 and the routing text).
 */
/* adc_input: rw16, space codec_reg, reset 0x0; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_ADC_INPUT_OFFSET                      0x2u /* established */
#define AD1843_ADC_INPUT_L_SOURCE_SHIFT              13 /* established */
#define AD1843_ADC_INPUT_L_SOURCE_MASK               0x7u
#define AD1843_ADC_INPUT_L_SOURCE_INPLACE            (AD1843_ADC_INPUT_L_SOURCE_MASK << AD1843_ADC_INPUT_L_SOURCE_SHIFT)
#define AD1843_ADC_INPUT_L_MIC_BOOST_SHIFT           12 /* established */
#define AD1843_ADC_INPUT_L_MIC_BOOST_MASK            0x1u
#define AD1843_ADC_INPUT_L_MIC_BOOST_INPLACE         (AD1843_ADC_INPUT_L_MIC_BOOST_MASK << AD1843_ADC_INPUT_L_MIC_BOOST_SHIFT)
#define AD1843_ADC_INPUT_L_GAIN_SHIFT                8 /* established */
#define AD1843_ADC_INPUT_L_GAIN_MASK                 0xfu
#define AD1843_ADC_INPUT_L_GAIN_INPLACE              (AD1843_ADC_INPUT_L_GAIN_MASK << AD1843_ADC_INPUT_L_GAIN_SHIFT)
#define AD1843_ADC_INPUT_R_SOURCE_SHIFT              5 /* established */
#define AD1843_ADC_INPUT_R_SOURCE_MASK               0x7u
#define AD1843_ADC_INPUT_R_SOURCE_INPLACE            (AD1843_ADC_INPUT_R_SOURCE_MASK << AD1843_ADC_INPUT_R_SOURCE_SHIFT)
#define AD1843_ADC_INPUT_R_MIC_BOOST_SHIFT           4 /* established */
#define AD1843_ADC_INPUT_R_MIC_BOOST_MASK            0x1u
#define AD1843_ADC_INPUT_R_MIC_BOOST_INPLACE         (AD1843_ADC_INPUT_R_MIC_BOOST_MASK << AD1843_ADC_INPUT_R_MIC_BOOST_SHIFT)
#define AD1843_ADC_INPUT_R_GAIN_SHIFT                0 /* established */
#define AD1843_ADC_INPUT_R_GAIN_MASK                 0xfu
#define AD1843_ADC_INPUT_R_GAIN_INPLACE              (AD1843_ADC_INPUT_R_GAIN_MASK << AD1843_ADC_INPUT_R_GAIN_SHIFT)

/*
 * Analog mix of DAC2 into the DAC1 output. Page 53 identifies the register as DAC2-to-DAC1 mixing; the summary's own names for it differ (inferred). Gain is 12 minus 1.5 times the code, in dB. The mute bits are separate from the gain.
 */
/* dac2_to_dac1_mix: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_DAC2_TO_DAC1_MIX_OFFSET               0x3u /* inferred */
#define AD1843_DAC2_TO_DAC1_MIX_L_MUTE_SHIFT         15 /* established */
#define AD1843_DAC2_TO_DAC1_MIX_L_MUTE_MASK          0x1u
#define AD1843_DAC2_TO_DAC1_MIX_L_MUTE_INPLACE       (AD1843_DAC2_TO_DAC1_MIX_L_MUTE_MASK << AD1843_DAC2_TO_DAC1_MIX_L_MUTE_SHIFT)
#define AD1843_DAC2_TO_DAC1_MIX_L_GAIN_SHIFT         8 /* established */
#define AD1843_DAC2_TO_DAC1_MIX_L_GAIN_MASK          0x1fu
#define AD1843_DAC2_TO_DAC1_MIX_L_GAIN_INPLACE       (AD1843_DAC2_TO_DAC1_MIX_L_GAIN_MASK << AD1843_DAC2_TO_DAC1_MIX_L_GAIN_SHIFT)
#define AD1843_DAC2_TO_DAC1_MIX_R_MUTE_SHIFT         7 /* established */
#define AD1843_DAC2_TO_DAC1_MIX_R_MUTE_MASK          0x1u
#define AD1843_DAC2_TO_DAC1_MIX_R_MUTE_INPLACE       (AD1843_DAC2_TO_DAC1_MIX_R_MUTE_MASK << AD1843_DAC2_TO_DAC1_MIX_R_MUTE_SHIFT)
#define AD1843_DAC2_TO_DAC1_MIX_R_GAIN_SHIFT         0 /* established */
#define AD1843_DAC2_TO_DAC1_MIX_R_GAIN_MASK          0x1fu
#define AD1843_DAC2_TO_DAC1_MIX_R_GAIN_INPLACE       (AD1843_DAC2_TO_DAC1_MIX_R_GAIN_MASK << AD1843_DAC2_TO_DAC1_MIX_R_GAIN_SHIFT)

/*
 * Analog mix of the AUX1 input. Same layout and gain law as dac2_to_dac1_mix (established, register pages 28-50).
 */
/* aux1_mix: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_AUX1_MIX_OFFSET                       0x4u /* established */
#define AD1843_AUX1_MIX_L_MUTE_SHIFT                 15 /* established */
#define AD1843_AUX1_MIX_L_MUTE_MASK                  0x1u
#define AD1843_AUX1_MIX_L_MUTE_INPLACE               (AD1843_AUX1_MIX_L_MUTE_MASK << AD1843_AUX1_MIX_L_MUTE_SHIFT)
#define AD1843_AUX1_MIX_L_GAIN_SHIFT                 8 /* established */
#define AD1843_AUX1_MIX_L_GAIN_MASK                  0x1fu
#define AD1843_AUX1_MIX_L_GAIN_INPLACE               (AD1843_AUX1_MIX_L_GAIN_MASK << AD1843_AUX1_MIX_L_GAIN_SHIFT)
#define AD1843_AUX1_MIX_R_MUTE_SHIFT                 7 /* established */
#define AD1843_AUX1_MIX_R_MUTE_MASK                  0x1u
#define AD1843_AUX1_MIX_R_MUTE_INPLACE               (AD1843_AUX1_MIX_R_MUTE_MASK << AD1843_AUX1_MIX_R_MUTE_SHIFT)
#define AD1843_AUX1_MIX_R_GAIN_SHIFT                 0 /* established */
#define AD1843_AUX1_MIX_R_GAIN_MASK                  0x1fu
#define AD1843_AUX1_MIX_R_GAIN_INPLACE               (AD1843_AUX1_MIX_R_GAIN_MASK << AD1843_AUX1_MIX_R_GAIN_SHIFT)

/*
 * Analog mix of the AUX2 input. Same layout and gain law as dac2_to_dac1_mix (established, register pages 28-50).
 */
/* aux2_mix: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_AUX2_MIX_OFFSET                       0x5u /* established */
#define AD1843_AUX2_MIX_L_MUTE_SHIFT                 15 /* established */
#define AD1843_AUX2_MIX_L_MUTE_MASK                  0x1u
#define AD1843_AUX2_MIX_L_MUTE_INPLACE               (AD1843_AUX2_MIX_L_MUTE_MASK << AD1843_AUX2_MIX_L_MUTE_SHIFT)
#define AD1843_AUX2_MIX_L_GAIN_SHIFT                 8 /* established */
#define AD1843_AUX2_MIX_L_GAIN_MASK                  0x1fu
#define AD1843_AUX2_MIX_L_GAIN_INPLACE               (AD1843_AUX2_MIX_L_GAIN_MASK << AD1843_AUX2_MIX_L_GAIN_SHIFT)
#define AD1843_AUX2_MIX_R_MUTE_SHIFT                 7 /* established */
#define AD1843_AUX2_MIX_R_MUTE_MASK                  0x1u
#define AD1843_AUX2_MIX_R_MUTE_INPLACE               (AD1843_AUX2_MIX_R_MUTE_MASK << AD1843_AUX2_MIX_R_MUTE_SHIFT)
#define AD1843_AUX2_MIX_R_GAIN_SHIFT                 0 /* established */
#define AD1843_AUX2_MIX_R_GAIN_MASK                  0x1fu
#define AD1843_AUX2_MIX_R_GAIN_INPLACE               (AD1843_AUX2_MIX_R_GAIN_MASK << AD1843_AUX2_MIX_R_GAIN_SHIFT)

/*
 * Analog mix of the AUX3 input. Same layout and gain law as dac2_to_dac1_mix (established, register pages 28-50).
 */
/* aux3_mix: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_AUX3_MIX_OFFSET                       0x6u /* established */
#define AD1843_AUX3_MIX_L_MUTE_SHIFT                 15 /* established */
#define AD1843_AUX3_MIX_L_MUTE_MASK                  0x1u
#define AD1843_AUX3_MIX_L_MUTE_INPLACE               (AD1843_AUX3_MIX_L_MUTE_MASK << AD1843_AUX3_MIX_L_MUTE_SHIFT)
#define AD1843_AUX3_MIX_L_GAIN_SHIFT                 8 /* established */
#define AD1843_AUX3_MIX_L_GAIN_MASK                  0x1fu
#define AD1843_AUX3_MIX_L_GAIN_INPLACE               (AD1843_AUX3_MIX_L_GAIN_MASK << AD1843_AUX3_MIX_L_GAIN_SHIFT)
#define AD1843_AUX3_MIX_R_MUTE_SHIFT                 7 /* established */
#define AD1843_AUX3_MIX_R_MUTE_MASK                  0x1u
#define AD1843_AUX3_MIX_R_MUTE_INPLACE               (AD1843_AUX3_MIX_R_MUTE_MASK << AD1843_AUX3_MIX_R_MUTE_SHIFT)
#define AD1843_AUX3_MIX_R_GAIN_SHIFT                 0 /* established */
#define AD1843_AUX3_MIX_R_GAIN_MASK                  0x1fu
#define AD1843_AUX3_MIX_R_GAIN_INPLACE               (AD1843_AUX3_MIX_R_GAIN_MASK << AD1843_AUX3_MIX_R_GAIN_SHIFT)

/*
 * Analog mix of the microphone input. Same layout and gain law as dac2_to_dac1_mix (established, register pages 28-50).
 */
/* mic_mix: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_MIC_MIX_OFFSET                        0x7u /* established */
#define AD1843_MIC_MIX_L_MUTE_SHIFT                  15 /* established */
#define AD1843_MIC_MIX_L_MUTE_MASK                   0x1u
#define AD1843_MIC_MIX_L_MUTE_INPLACE                (AD1843_MIC_MIX_L_MUTE_MASK << AD1843_MIC_MIX_L_MUTE_SHIFT)
#define AD1843_MIC_MIX_L_GAIN_SHIFT                  8 /* established */
#define AD1843_MIC_MIX_L_GAIN_MASK                   0x1fu
#define AD1843_MIC_MIX_L_GAIN_INPLACE                (AD1843_MIC_MIX_L_GAIN_MASK << AD1843_MIC_MIX_L_GAIN_SHIFT)
#define AD1843_MIC_MIX_R_MUTE_SHIFT                  7 /* established */
#define AD1843_MIC_MIX_R_MUTE_MASK                   0x1u
#define AD1843_MIC_MIX_R_MUTE_INPLACE                (AD1843_MIC_MIX_R_MUTE_MASK << AD1843_MIC_MIX_R_MUTE_SHIFT)
#define AD1843_MIC_MIX_R_GAIN_SHIFT                  0 /* established */
#define AD1843_MIC_MIX_R_GAIN_MASK                   0x1fu
#define AD1843_MIC_MIX_R_GAIN_INPLACE                (AD1843_MIC_MIX_R_GAIN_MASK << AD1843_MIC_MIX_R_GAIN_SHIFT)

/*
 * Mono mix gain and mute in the upper byte. The lower byte holds the all-mix mute, the mono and headphone mutes, the output swing, the sum mute and the gain-change timing of each DAC (established, register page 33). The all-mix mute is read from the detailed diagram as covering the DAC2, AUX1 to AUX3 and microphone analog contributions only (inferred). The prose describes it more broadly, and the two readings conflict (see docs/mace-audio.md).
 */
/* mono_control: rw16, space codec_reg, reset 0x8868; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_MONO_CONTROL_OFFSET                   0x8u /* established */
#define AD1843_MONO_CONTROL_MONO_MIX_MUTE_SHIFT      15 /* established */
#define AD1843_MONO_CONTROL_MONO_MIX_MUTE_MASK       0x1u
#define AD1843_MONO_CONTROL_MONO_MIX_MUTE_INPLACE    (AD1843_MONO_CONTROL_MONO_MIX_MUTE_MASK << AD1843_MONO_CONTROL_MONO_MIX_MUTE_SHIFT)
#define AD1843_MONO_CONTROL_MONO_MIX_GAIN_SHIFT      8 /* established */
#define AD1843_MONO_CONTROL_MONO_MIX_GAIN_MASK       0x1fu
#define AD1843_MONO_CONTROL_MONO_MIX_GAIN_INPLACE    (AD1843_MONO_CONTROL_MONO_MIX_GAIN_MASK << AD1843_MONO_CONTROL_MONO_MIX_GAIN_SHIFT)
#define AD1843_MONO_CONTROL_ALL_MIX_MUTE_SHIFT       7 /* inferred */
#define AD1843_MONO_CONTROL_ALL_MIX_MUTE_MASK        0x1u
#define AD1843_MONO_CONTROL_ALL_MIX_MUTE_INPLACE     (AD1843_MONO_CONTROL_ALL_MIX_MUTE_MASK << AD1843_MONO_CONTROL_ALL_MIX_MUTE_SHIFT)
#define AD1843_MONO_CONTROL_MONO_MUTE_SHIFT          6 /* established */
#define AD1843_MONO_CONTROL_MONO_MUTE_MASK           0x1u
#define AD1843_MONO_CONTROL_MONO_MUTE_INPLACE        (AD1843_MONO_CONTROL_MONO_MUTE_MASK << AD1843_MONO_CONTROL_MONO_MUTE_SHIFT)
#define AD1843_MONO_CONTROL_HEADPHONE_MUTE_SHIFT     5 /* established */
#define AD1843_MONO_CONTROL_HEADPHONE_MUTE_MASK      0x1u
#define AD1843_MONO_CONTROL_HEADPHONE_MUTE_INPLACE   (AD1843_MONO_CONTROL_HEADPHONE_MUTE_MASK << AD1843_MONO_CONTROL_HEADPHONE_MUTE_SHIFT)
#define AD1843_MONO_CONTROL_SWING_SHIFT              4 /* established */
#define AD1843_MONO_CONTROL_SWING_MASK               0x1u
#define AD1843_MONO_CONTROL_SWING_INPLACE            (AD1843_MONO_CONTROL_SWING_MASK << AD1843_MONO_CONTROL_SWING_SHIFT)
#define AD1843_MONO_CONTROL_SUM_MUTE_SHIFT           3 /* established */
#define AD1843_MONO_CONTROL_SUM_MUTE_MASK            0x1u
#define AD1843_MONO_CONTROL_SUM_MUTE_INPLACE         (AD1843_MONO_CONTROL_SUM_MUTE_MASK << AD1843_MONO_CONTROL_SUM_MUTE_SHIFT)
#define AD1843_MONO_CONTROL_DAC2_GAIN_TIMING_SHIFT   1 /* established */
#define AD1843_MONO_CONTROL_DAC2_GAIN_TIMING_MASK    0x1u
#define AD1843_MONO_CONTROL_DAC2_GAIN_TIMING_INPLACE (AD1843_MONO_CONTROL_DAC2_GAIN_TIMING_MASK << AD1843_MONO_CONTROL_DAC2_GAIN_TIMING_SHIFT)
#define AD1843_MONO_CONTROL_DAC1_GAIN_TIMING_SHIFT   0 /* established */
#define AD1843_MONO_CONTROL_DAC1_GAIN_TIMING_MASK    0x1u
#define AD1843_MONO_CONTROL_DAC1_GAIN_TIMING_INPLACE (AD1843_MONO_CONTROL_DAC1_GAIN_TIMING_MASK << AD1843_MONO_CONTROL_DAC1_GAIN_TIMING_SHIFT)

/*
 * DAC1 output gain and mute, left and right. Gain is six bits, mute is separate. Resets muted (established, register pages 28-50).
 */
/* dac1_output: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_DAC1_OUTPUT_OFFSET                    0x9u /* established */
#define AD1843_DAC1_OUTPUT_L_MUTE_SHIFT              15 /* established */
#define AD1843_DAC1_OUTPUT_L_MUTE_MASK               0x1u
#define AD1843_DAC1_OUTPUT_L_MUTE_INPLACE            (AD1843_DAC1_OUTPUT_L_MUTE_MASK << AD1843_DAC1_OUTPUT_L_MUTE_SHIFT)
#define AD1843_DAC1_OUTPUT_L_GAIN_SHIFT              8 /* established */
#define AD1843_DAC1_OUTPUT_L_GAIN_MASK               0x3fu
#define AD1843_DAC1_OUTPUT_L_GAIN_INPLACE            (AD1843_DAC1_OUTPUT_L_GAIN_MASK << AD1843_DAC1_OUTPUT_L_GAIN_SHIFT)
#define AD1843_DAC1_OUTPUT_R_MUTE_SHIFT              7 /* established */
#define AD1843_DAC1_OUTPUT_R_MUTE_MASK               0x1u
#define AD1843_DAC1_OUTPUT_R_MUTE_INPLACE            (AD1843_DAC1_OUTPUT_R_MUTE_MASK << AD1843_DAC1_OUTPUT_R_MUTE_SHIFT)
#define AD1843_DAC1_OUTPUT_R_GAIN_SHIFT              0 /* established */
#define AD1843_DAC1_OUTPUT_R_GAIN_MASK               0x3fu
#define AD1843_DAC1_OUTPUT_R_GAIN_INPLACE            (AD1843_DAC1_OUTPUT_R_GAIN_MASK << AD1843_DAC1_OUTPUT_R_GAIN_SHIFT)

/*
 * DAC2 output gain and mute, left and right. Same layout as dac1_output. Gain and mute here control the separate DAC2 output branch. The DAC2 contribution into the DAC1 mix is taken before this gain (inferred from the routing diagram, page 53).
 */
/* dac2_output: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_DAC2_OUTPUT_OFFSET                    0xau /* established */
#define AD1843_DAC2_OUTPUT_L_MUTE_SHIFT              15 /* established */
#define AD1843_DAC2_OUTPUT_L_MUTE_MASK               0x1u
#define AD1843_DAC2_OUTPUT_L_MUTE_INPLACE            (AD1843_DAC2_OUTPUT_L_MUTE_MASK << AD1843_DAC2_OUTPUT_L_MUTE_SHIFT)
#define AD1843_DAC2_OUTPUT_L_GAIN_SHIFT              8 /* established */
#define AD1843_DAC2_OUTPUT_L_GAIN_MASK               0x3fu
#define AD1843_DAC2_OUTPUT_L_GAIN_INPLACE            (AD1843_DAC2_OUTPUT_L_GAIN_MASK << AD1843_DAC2_OUTPUT_L_GAIN_SHIFT)
#define AD1843_DAC2_OUTPUT_R_MUTE_SHIFT              7 /* established */
#define AD1843_DAC2_OUTPUT_R_MUTE_MASK               0x1u
#define AD1843_DAC2_OUTPUT_R_MUTE_INPLACE            (AD1843_DAC2_OUTPUT_R_MUTE_MASK << AD1843_DAC2_OUTPUT_R_MUTE_SHIFT)
#define AD1843_DAC2_OUTPUT_R_GAIN_SHIFT              0 /* established */
#define AD1843_DAC2_OUTPUT_R_GAIN_MASK               0x3fu
#define AD1843_DAC2_OUTPUT_R_GAIN_INPLACE            (AD1843_DAC2_OUTPUT_R_GAIN_MASK << AD1843_DAC2_OUTPUT_R_GAIN_SHIFT)

/*
 * DAC1 digital attenuation and mute, left and right. Attenuation is 1.5 dB per code and code 63 is finite attenuation, not mute (established, register pages 28-50 and the routing text).
 */
/* dac1_digital_att: rw16, space codec_reg, reset 0x0; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_DAC1_DIGITAL_ATT_OFFSET               0xbu /* established */
#define AD1843_DAC1_DIGITAL_ATT_L_MUTE_SHIFT         15 /* established */
#define AD1843_DAC1_DIGITAL_ATT_L_MUTE_MASK          0x1u
#define AD1843_DAC1_DIGITAL_ATT_L_MUTE_INPLACE       (AD1843_DAC1_DIGITAL_ATT_L_MUTE_MASK << AD1843_DAC1_DIGITAL_ATT_L_MUTE_SHIFT)
#define AD1843_DAC1_DIGITAL_ATT_L_ATT_SHIFT          8 /* established */
#define AD1843_DAC1_DIGITAL_ATT_L_ATT_MASK           0x3fu
#define AD1843_DAC1_DIGITAL_ATT_L_ATT_INPLACE        (AD1843_DAC1_DIGITAL_ATT_L_ATT_MASK << AD1843_DAC1_DIGITAL_ATT_L_ATT_SHIFT)
#define AD1843_DAC1_DIGITAL_ATT_R_MUTE_SHIFT         7 /* established */
#define AD1843_DAC1_DIGITAL_ATT_R_MUTE_MASK          0x1u
#define AD1843_DAC1_DIGITAL_ATT_R_MUTE_INPLACE       (AD1843_DAC1_DIGITAL_ATT_R_MUTE_MASK << AD1843_DAC1_DIGITAL_ATT_R_MUTE_SHIFT)
#define AD1843_DAC1_DIGITAL_ATT_R_ATT_SHIFT          0 /* established */
#define AD1843_DAC1_DIGITAL_ATT_R_ATT_MASK           0x3fu
#define AD1843_DAC1_DIGITAL_ATT_R_ATT_INPLACE        (AD1843_DAC1_DIGITAL_ATT_R_ATT_MASK << AD1843_DAC1_DIGITAL_ATT_R_ATT_SHIFT)

/*
 * DAC2 digital attenuation and mute, left and right. Same layout and law as dac1_digital_att (established, register pages 28-50).
 */
/* dac2_digital_att: rw16, space codec_reg, reset 0x0; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_DAC2_DIGITAL_ATT_OFFSET               0xcu /* established */
#define AD1843_DAC2_DIGITAL_ATT_L_MUTE_SHIFT         15 /* established */
#define AD1843_DAC2_DIGITAL_ATT_L_MUTE_MASK          0x1u
#define AD1843_DAC2_DIGITAL_ATT_L_MUTE_INPLACE       (AD1843_DAC2_DIGITAL_ATT_L_MUTE_MASK << AD1843_DAC2_DIGITAL_ATT_L_MUTE_SHIFT)
#define AD1843_DAC2_DIGITAL_ATT_L_ATT_SHIFT          8 /* established */
#define AD1843_DAC2_DIGITAL_ATT_L_ATT_MASK           0x3fu
#define AD1843_DAC2_DIGITAL_ATT_L_ATT_INPLACE        (AD1843_DAC2_DIGITAL_ATT_L_ATT_MASK << AD1843_DAC2_DIGITAL_ATT_L_ATT_SHIFT)
#define AD1843_DAC2_DIGITAL_ATT_R_MUTE_SHIFT         7 /* established */
#define AD1843_DAC2_DIGITAL_ATT_R_MUTE_MASK          0x1u
#define AD1843_DAC2_DIGITAL_ATT_R_MUTE_INPLACE       (AD1843_DAC2_DIGITAL_ATT_R_MUTE_MASK << AD1843_DAC2_DIGITAL_ATT_R_MUTE_SHIFT)
#define AD1843_DAC2_DIGITAL_ATT_R_ATT_SHIFT          0 /* established */
#define AD1843_DAC2_DIGITAL_ATT_R_ATT_MASK           0x3fu
#define AD1843_DAC2_DIGITAL_ATT_R_ATT_INPLACE        (AD1843_DAC2_DIGITAL_ATT_R_ATT_MASK << AD1843_DAC2_DIGITAL_ATT_R_ATT_SHIFT)

/*
 * Digital mix of the ADC data into DAC1, attenuation and mute per channel. Code 63 is full mute here, unlike the ordinary DAC attenuator (established, register pages 28-50 and the routing text).
 */
/* adc_to_dac1_mix: rw16, space codec_reg, reset 0x8080; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_ADC_TO_DAC1_MIX_OFFSET                0xdu /* established */
#define AD1843_ADC_TO_DAC1_MIX_L_MUTE_SHIFT          15 /* established */
#define AD1843_ADC_TO_DAC1_MIX_L_MUTE_MASK           0x1u
#define AD1843_ADC_TO_DAC1_MIX_L_MUTE_INPLACE        (AD1843_ADC_TO_DAC1_MIX_L_MUTE_MASK << AD1843_ADC_TO_DAC1_MIX_L_MUTE_SHIFT)
#define AD1843_ADC_TO_DAC1_MIX_L_ATT_SHIFT           8 /* established */
#define AD1843_ADC_TO_DAC1_MIX_L_ATT_MASK            0x3fu
#define AD1843_ADC_TO_DAC1_MIX_L_ATT_INPLACE         (AD1843_ADC_TO_DAC1_MIX_L_ATT_MASK << AD1843_ADC_TO_DAC1_MIX_L_ATT_SHIFT)
#define AD1843_ADC_TO_DAC1_MIX_R_MUTE_SHIFT          7 /* established */
#define AD1843_ADC_TO_DAC1_MIX_R_MUTE_MASK           0x1u
#define AD1843_ADC_TO_DAC1_MIX_R_MUTE_INPLACE        (AD1843_ADC_TO_DAC1_MIX_R_MUTE_MASK << AD1843_ADC_TO_DAC1_MIX_R_MUTE_SHIFT)
#define AD1843_ADC_TO_DAC1_MIX_R_ATT_SHIFT           0 /* established */
#define AD1843_ADC_TO_DAC1_MIX_R_ATT_MASK            0x3fu
#define AD1843_ADC_TO_DAC1_MIX_R_ATT_INPLACE         (AD1843_ADC_TO_DAC1_MIX_R_ATT_MASK << AD1843_ADC_TO_DAC1_MIX_R_ATT_SHIFT)

/*
 * Digital mix of the ADC data into DAC2. Same layout and code-63 rule as adc_to_dac1_mix (established, register pages 28-50).
 */
/* adc_to_dac2_mix: rw16, space codec_reg, reset 0x8080; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_ADC_TO_DAC2_MIX_OFFSET                0xeu /* established */
#define AD1843_ADC_TO_DAC2_MIX_L_MUTE_SHIFT          15 /* established */
#define AD1843_ADC_TO_DAC2_MIX_L_MUTE_MASK           0x1u
#define AD1843_ADC_TO_DAC2_MIX_L_MUTE_INPLACE        (AD1843_ADC_TO_DAC2_MIX_L_MUTE_MASK << AD1843_ADC_TO_DAC2_MIX_L_MUTE_SHIFT)
#define AD1843_ADC_TO_DAC2_MIX_L_ATT_SHIFT           8 /* established */
#define AD1843_ADC_TO_DAC2_MIX_L_ATT_MASK            0x3fu
#define AD1843_ADC_TO_DAC2_MIX_L_ATT_INPLACE         (AD1843_ADC_TO_DAC2_MIX_L_ATT_MASK << AD1843_ADC_TO_DAC2_MIX_L_ATT_SHIFT)
#define AD1843_ADC_TO_DAC2_MIX_R_MUTE_SHIFT          7 /* established */
#define AD1843_ADC_TO_DAC2_MIX_R_MUTE_MASK           0x1u
#define AD1843_ADC_TO_DAC2_MIX_R_MUTE_INPLACE        (AD1843_ADC_TO_DAC2_MIX_R_MUTE_MASK << AD1843_ADC_TO_DAC2_MIX_R_MUTE_SHIFT)
#define AD1843_ADC_TO_DAC2_MIX_R_ATT_SHIFT           0 /* established */
#define AD1843_ADC_TO_DAC2_MIX_R_ATT_MASK            0x3fu
#define AD1843_ADC_TO_DAC2_MIX_R_ATT_INPLACE         (AD1843_ADC_TO_DAC2_MIX_R_ATT_MASK << AD1843_ADC_TO_DAC2_MIX_R_ATT_SHIFT)

/*
 * Sample-rate source of each DAC and ADC: 0 is the fixed 48 kHz clock and 1 to 3 are generators 1 to 3. The published table lists code 1 twice for the ADC selectors. Page 53 reads the right ADC code 2 as clock 2, as for the other three selectors (inferred).
 */
/* clock_select: rw16, space codec_reg, reset 0x0; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_CLOCK_SELECT_OFFSET                   0xfu /* established */
#define AD1843_CLOCK_SELECT_DAC2_CLOCK_SHIFT         10 /* established */
#define AD1843_CLOCK_SELECT_DAC2_CLOCK_MASK          0x3u
#define AD1843_CLOCK_SELECT_DAC2_CLOCK_INPLACE       (AD1843_CLOCK_SELECT_DAC2_CLOCK_MASK << AD1843_CLOCK_SELECT_DAC2_CLOCK_SHIFT)
#define AD1843_CLOCK_SELECT_DAC1_CLOCK_SHIFT         8 /* established */
#define AD1843_CLOCK_SELECT_DAC1_CLOCK_MASK          0x3u
#define AD1843_CLOCK_SELECT_DAC1_CLOCK_INPLACE       (AD1843_CLOCK_SELECT_DAC1_CLOCK_MASK << AD1843_CLOCK_SELECT_DAC1_CLOCK_SHIFT)
#define AD1843_CLOCK_SELECT_R_ADC_CLOCK_SHIFT        2 /* inferred */
#define AD1843_CLOCK_SELECT_R_ADC_CLOCK_MASK         0x3u
#define AD1843_CLOCK_SELECT_R_ADC_CLOCK_INPLACE      (AD1843_CLOCK_SELECT_R_ADC_CLOCK_MASK << AD1843_CLOCK_SELECT_R_ADC_CLOCK_SHIFT)
#define AD1843_CLOCK_SELECT_L_ADC_CLOCK_SHIFT        0 /* established */
#define AD1843_CLOCK_SELECT_L_ADC_CLOCK_MASK         0x3u
#define AD1843_CLOCK_SELECT_L_ADC_CLOCK_INPLACE      (AD1843_CLOCK_SELECT_L_ADC_CLOCK_MASK << AD1843_CLOCK_SELECT_L_ADC_CLOCK_SHIFT)

/*
 * Mode of generator 1. Clock 2 and clock 3 use the same layout at registers 19 and 22. Bits 9 and 8 are not defined (established, register pages 38 to 43).
 */
/* clock1_mode: rw16, space codec_reg, reset 0xff; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_CLOCK1_MODE_OFFSET                    0x10u /* established */
#define AD1843_CLOCK1_MODE_REF_SHIFT                 15 /* inferred */
#define AD1843_CLOCK1_MODE_REF_MASK                  0x1u
#define AD1843_CLOCK1_MODE_REF_INPLACE               (AD1843_CLOCK1_MODE_REF_MASK << AD1843_CLOCK1_MODE_REF_SHIFT)
#define AD1843_CLOCK1_MODE_VIDEO_SELECT_SHIFT        14 /* unknown */
#define AD1843_CLOCK1_MODE_VIDEO_SELECT_MASK         0x1u
#define AD1843_CLOCK1_MODE_VIDEO_SELECT_INPLACE      (AD1843_CLOCK1_MODE_VIDEO_SELECT_MASK << AD1843_CLOCK1_MODE_VIDEO_SELECT_SHIFT)
#define AD1843_CLOCK1_MODE_PLL_GAIN_SHIFT            13 /* unknown */
#define AD1843_CLOCK1_MODE_PLL_GAIN_MASK             0x1u
#define AD1843_CLOCK1_MODE_PLL_GAIN_INPLACE          (AD1843_CLOCK1_MODE_PLL_GAIN_MASK << AD1843_CLOCK1_MODE_PLL_GAIN_SHIFT)
#define AD1843_CLOCK1_MODE_BIT_PLUS_200HZ_SHIFT      12 /* established */
#define AD1843_CLOCK1_MODE_BIT_PLUS_200HZ_MASK       0x1u
#define AD1843_CLOCK1_MODE_BIT_PLUS_200HZ_INPLACE    (AD1843_CLOCK1_MODE_BIT_PLUS_200HZ_MASK << AD1843_CLOCK1_MODE_BIT_PLUS_200HZ_SHIFT)
#define AD1843_CLOCK1_MODE_CONV_8_7_MULTIPLIER_SHIFT 11 /* established */
#define AD1843_CLOCK1_MODE_CONV_8_7_MULTIPLIER_MASK  0x1u
#define AD1843_CLOCK1_MODE_CONV_8_7_MULTIPLIER_INPLACE (AD1843_CLOCK1_MODE_CONV_8_7_MULTIPLIER_MASK << AD1843_CLOCK1_MODE_CONV_8_7_MULTIPLIER_SHIFT)
#define AD1843_CLOCK1_MODE_CONV_128_MULTIPLIER_SHIFT 10 /* established */
#define AD1843_CLOCK1_MODE_CONV_128_MULTIPLIER_MASK  0x1u
#define AD1843_CLOCK1_MODE_CONV_128_MULTIPLIER_INPLACE (AD1843_CLOCK1_MODE_CONV_128_MULTIPLIER_MASK << AD1843_CLOCK1_MODE_CONV_128_MULTIPLIER_SHIFT)
#define AD1843_CLOCK1_MODE_CONV_MODIFIER_SHIFT       4 /* established */
#define AD1843_CLOCK1_MODE_CONV_MODIFIER_MASK        0xfu
#define AD1843_CLOCK1_MODE_CONV_MODIFIER_INPLACE     (AD1843_CLOCK1_MODE_CONV_MODIFIER_MASK << AD1843_CLOCK1_MODE_CONV_MODIFIER_SHIFT)
#define AD1843_CLOCK1_MODE_BIT_MODIFIER_SHIFT        0 /* established */
#define AD1843_CLOCK1_MODE_BIT_MODIFIER_MASK         0xfu
#define AD1843_CLOCK1_MODE_BIT_MODIFIER_INPLACE      (AD1843_CLOCK1_MODE_BIT_MODIFIER_MASK << AD1843_CLOCK1_MODE_BIT_MODIFIER_SHIFT)

/*
 * Nominal rate of generator 1 in Hz. Reset is 48000 (established, register pages 28-50). Clock 2 and clock 3 use registers 20 and 23.
 */
/* clock1_hz: rw16, space codec_reg, reset 0xbb80; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_CLOCK1_HZ_OFFSET                      0x11u /* established */
#define AD1843_CLOCK1_HZ_HZ_SHIFT                    0 /* established */
#define AD1843_CLOCK1_HZ_HZ_MASK                     0xffffu
#define AD1843_CLOCK1_HZ_HZ_INPLACE                  (AD1843_CLOCK1_HZ_HZ_MASK << AD1843_CLOCK1_HZ_HZ_SHIFT)

/*
 * Phase work for generator 1. A write replaces the remaining work. Units are 1/3000 of a conversion cycle (0.12 degrees). Direction 0 advances the phase and 1 retards it. Clock 2 and clock 3 use registers 21 and 24 (established, register pages 39, 42 and 45, and the phase section).
 */
/* clock1_phase: rw16, space codec_reg, reset 0x0; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_CLOCK1_PHASE_OFFSET                   0x12u /* established */
#define AD1843_CLOCK1_PHASE_DIRECTION_SHIFT          8 /* established */
#define AD1843_CLOCK1_PHASE_DIRECTION_MASK           0x1u
#define AD1843_CLOCK1_PHASE_DIRECTION_INPLACE        (AD1843_CLOCK1_PHASE_DIRECTION_MASK << AD1843_CLOCK1_PHASE_DIRECTION_SHIFT)
#define AD1843_CLOCK1_PHASE_MAGNITUDE_SHIFT          0 /* established */
#define AD1843_CLOCK1_PHASE_MAGNITUDE_MASK           0xffu
#define AD1843_CLOCK1_PHASE_MAGNITUDE_INPLACE        (AD1843_CLOCK1_PHASE_MAGNITUDE_MASK << AD1843_CLOCK1_PHASE_MAGNITUDE_SHIFT)

/*
 * Mode of generator 2, same layout and reset as clock1_mode (established, register pages 38 to 43). The source notes that a description citing registers 17 and 18 for clock 2 means 20 and 21 (inferred).
 */
/* clock2_mode: rw16, space codec_reg, reset 0xff; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_CLOCK2_MODE_OFFSET                    0x13u /* established */
#define AD1843_CLOCK2_MODE_REF_SHIFT                 15 /* inferred */
#define AD1843_CLOCK2_MODE_REF_MASK                  0x1u
#define AD1843_CLOCK2_MODE_REF_INPLACE               (AD1843_CLOCK2_MODE_REF_MASK << AD1843_CLOCK2_MODE_REF_SHIFT)
#define AD1843_CLOCK2_MODE_VIDEO_SELECT_SHIFT        14 /* unknown */
#define AD1843_CLOCK2_MODE_VIDEO_SELECT_MASK         0x1u
#define AD1843_CLOCK2_MODE_VIDEO_SELECT_INPLACE      (AD1843_CLOCK2_MODE_VIDEO_SELECT_MASK << AD1843_CLOCK2_MODE_VIDEO_SELECT_SHIFT)
#define AD1843_CLOCK2_MODE_PLL_GAIN_SHIFT            13 /* unknown */
#define AD1843_CLOCK2_MODE_PLL_GAIN_MASK             0x1u
#define AD1843_CLOCK2_MODE_PLL_GAIN_INPLACE          (AD1843_CLOCK2_MODE_PLL_GAIN_MASK << AD1843_CLOCK2_MODE_PLL_GAIN_SHIFT)
#define AD1843_CLOCK2_MODE_BIT_PLUS_200HZ_SHIFT      12 /* established */
#define AD1843_CLOCK2_MODE_BIT_PLUS_200HZ_MASK       0x1u
#define AD1843_CLOCK2_MODE_BIT_PLUS_200HZ_INPLACE    (AD1843_CLOCK2_MODE_BIT_PLUS_200HZ_MASK << AD1843_CLOCK2_MODE_BIT_PLUS_200HZ_SHIFT)
#define AD1843_CLOCK2_MODE_CONV_8_7_MULTIPLIER_SHIFT 11 /* established */
#define AD1843_CLOCK2_MODE_CONV_8_7_MULTIPLIER_MASK  0x1u
#define AD1843_CLOCK2_MODE_CONV_8_7_MULTIPLIER_INPLACE (AD1843_CLOCK2_MODE_CONV_8_7_MULTIPLIER_MASK << AD1843_CLOCK2_MODE_CONV_8_7_MULTIPLIER_SHIFT)
#define AD1843_CLOCK2_MODE_CONV_128_MULTIPLIER_SHIFT 10 /* established */
#define AD1843_CLOCK2_MODE_CONV_128_MULTIPLIER_MASK  0x1u
#define AD1843_CLOCK2_MODE_CONV_128_MULTIPLIER_INPLACE (AD1843_CLOCK2_MODE_CONV_128_MULTIPLIER_MASK << AD1843_CLOCK2_MODE_CONV_128_MULTIPLIER_SHIFT)
#define AD1843_CLOCK2_MODE_CONV_MODIFIER_SHIFT       4 /* established */
#define AD1843_CLOCK2_MODE_CONV_MODIFIER_MASK        0xfu
#define AD1843_CLOCK2_MODE_CONV_MODIFIER_INPLACE     (AD1843_CLOCK2_MODE_CONV_MODIFIER_MASK << AD1843_CLOCK2_MODE_CONV_MODIFIER_SHIFT)
#define AD1843_CLOCK2_MODE_BIT_MODIFIER_SHIFT        0 /* established */
#define AD1843_CLOCK2_MODE_BIT_MODIFIER_MASK         0xfu
#define AD1843_CLOCK2_MODE_BIT_MODIFIER_INPLACE      (AD1843_CLOCK2_MODE_BIT_MODIFIER_MASK << AD1843_CLOCK2_MODE_BIT_MODIFIER_SHIFT)

/*
 * Nominal rate of generator 2 in Hz. Reset is 48000 (established, register pages 28-50).
 */
/* clock2_hz: rw16, space codec_reg, reset 0xbb80; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_CLOCK2_HZ_OFFSET                      0x14u /* established */
#define AD1843_CLOCK2_HZ_HZ_SHIFT                    0 /* established */
#define AD1843_CLOCK2_HZ_HZ_MASK                     0xffffu
#define AD1843_CLOCK2_HZ_HZ_INPLACE                  (AD1843_CLOCK2_HZ_HZ_MASK << AD1843_CLOCK2_HZ_HZ_SHIFT)

/*
 * Phase work for generator 2, same units and direction rule as clock1_phase (established, register pages 39, 42 and 45).
 */
/* clock2_phase: rw16, space codec_reg, reset 0x0; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_CLOCK2_PHASE_OFFSET                   0x15u /* established */
#define AD1843_CLOCK2_PHASE_DIRECTION_SHIFT          8 /* established */
#define AD1843_CLOCK2_PHASE_DIRECTION_MASK           0x1u
#define AD1843_CLOCK2_PHASE_DIRECTION_INPLACE        (AD1843_CLOCK2_PHASE_DIRECTION_MASK << AD1843_CLOCK2_PHASE_DIRECTION_SHIFT)
#define AD1843_CLOCK2_PHASE_MAGNITUDE_SHIFT          0 /* established */
#define AD1843_CLOCK2_PHASE_MAGNITUDE_MASK           0xffu
#define AD1843_CLOCK2_PHASE_MAGNITUDE_INPLACE        (AD1843_CLOCK2_PHASE_MAGNITUDE_MASK << AD1843_CLOCK2_PHASE_MAGNITUDE_SHIFT)

/*
 * Mode of generator 3, same layout and reset as clock1_mode (established, register pages 38 to 43).
 */
/* clock3_mode: rw16, space codec_reg, reset 0xff; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_CLOCK3_MODE_OFFSET                    0x16u /* established */
#define AD1843_CLOCK3_MODE_REF_SHIFT                 15 /* inferred */
#define AD1843_CLOCK3_MODE_REF_MASK                  0x1u
#define AD1843_CLOCK3_MODE_REF_INPLACE               (AD1843_CLOCK3_MODE_REF_MASK << AD1843_CLOCK3_MODE_REF_SHIFT)
#define AD1843_CLOCK3_MODE_VIDEO_SELECT_SHIFT        14 /* unknown */
#define AD1843_CLOCK3_MODE_VIDEO_SELECT_MASK         0x1u
#define AD1843_CLOCK3_MODE_VIDEO_SELECT_INPLACE      (AD1843_CLOCK3_MODE_VIDEO_SELECT_MASK << AD1843_CLOCK3_MODE_VIDEO_SELECT_SHIFT)
#define AD1843_CLOCK3_MODE_PLL_GAIN_SHIFT            13 /* unknown */
#define AD1843_CLOCK3_MODE_PLL_GAIN_MASK             0x1u
#define AD1843_CLOCK3_MODE_PLL_GAIN_INPLACE          (AD1843_CLOCK3_MODE_PLL_GAIN_MASK << AD1843_CLOCK3_MODE_PLL_GAIN_SHIFT)
#define AD1843_CLOCK3_MODE_BIT_PLUS_200HZ_SHIFT      12 /* established */
#define AD1843_CLOCK3_MODE_BIT_PLUS_200HZ_MASK       0x1u
#define AD1843_CLOCK3_MODE_BIT_PLUS_200HZ_INPLACE    (AD1843_CLOCK3_MODE_BIT_PLUS_200HZ_MASK << AD1843_CLOCK3_MODE_BIT_PLUS_200HZ_SHIFT)
#define AD1843_CLOCK3_MODE_CONV_8_7_MULTIPLIER_SHIFT 11 /* established */
#define AD1843_CLOCK3_MODE_CONV_8_7_MULTIPLIER_MASK  0x1u
#define AD1843_CLOCK3_MODE_CONV_8_7_MULTIPLIER_INPLACE (AD1843_CLOCK3_MODE_CONV_8_7_MULTIPLIER_MASK << AD1843_CLOCK3_MODE_CONV_8_7_MULTIPLIER_SHIFT)
#define AD1843_CLOCK3_MODE_CONV_128_MULTIPLIER_SHIFT 10 /* established */
#define AD1843_CLOCK3_MODE_CONV_128_MULTIPLIER_MASK  0x1u
#define AD1843_CLOCK3_MODE_CONV_128_MULTIPLIER_INPLACE (AD1843_CLOCK3_MODE_CONV_128_MULTIPLIER_MASK << AD1843_CLOCK3_MODE_CONV_128_MULTIPLIER_SHIFT)
#define AD1843_CLOCK3_MODE_CONV_MODIFIER_SHIFT       4 /* established */
#define AD1843_CLOCK3_MODE_CONV_MODIFIER_MASK        0xfu
#define AD1843_CLOCK3_MODE_CONV_MODIFIER_INPLACE     (AD1843_CLOCK3_MODE_CONV_MODIFIER_MASK << AD1843_CLOCK3_MODE_CONV_MODIFIER_SHIFT)
#define AD1843_CLOCK3_MODE_BIT_MODIFIER_SHIFT        0 /* established */
#define AD1843_CLOCK3_MODE_BIT_MODIFIER_MASK         0xfu
#define AD1843_CLOCK3_MODE_BIT_MODIFIER_INPLACE      (AD1843_CLOCK3_MODE_BIT_MODIFIER_MASK << AD1843_CLOCK3_MODE_BIT_MODIFIER_SHIFT)

/*
 * Nominal rate of generator 3 in Hz. Reset is 48000 (established, register pages 28-50).
 */
/* clock3_hz: rw16, space codec_reg, reset 0xbb80; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_CLOCK3_HZ_OFFSET                      0x17u /* established */
#define AD1843_CLOCK3_HZ_HZ_SHIFT                    0 /* established */
#define AD1843_CLOCK3_HZ_HZ_MASK                     0xffffu
#define AD1843_CLOCK3_HZ_HZ_INPLACE                  (AD1843_CLOCK3_HZ_HZ_MASK << AD1843_CLOCK3_HZ_HZ_SHIFT)

/*
 * Phase work for generator 3, same units and direction rule as clock1_phase (established, register pages 39, 42 and 45).
 */
/* clock3_phase: rw16, space codec_reg, reset 0x0; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_CLOCK3_PHASE_OFFSET                   0x18u /* established */
#define AD1843_CLOCK3_PHASE_DIRECTION_SHIFT          8 /* established */
#define AD1843_CLOCK3_PHASE_DIRECTION_MASK           0x1u
#define AD1843_CLOCK3_PHASE_DIRECTION_INPLACE        (AD1843_CLOCK3_PHASE_DIRECTION_MASK << AD1843_CLOCK3_PHASE_DIRECTION_SHIFT)
#define AD1843_CLOCK3_PHASE_MAGNITUDE_SHIFT          0 /* established */
#define AD1843_CLOCK3_PHASE_MAGNITUDE_MASK           0xffu
#define AD1843_CLOCK3_PHASE_MAGNITUDE_INPLACE        (AD1843_CLOCK3_PHASE_MAGNITUDE_MASK << AD1843_CLOCK3_PHASE_MAGNITUDE_SHIFT)

/*
 * Digital ADC source, resample filter and DAC mix mode. The resample filter and DAC mix mode change only while the converters they affect are off (established, register pages 28-50 and the constraints text).
 */
/* digital_filter: rw16, space codec_reg, reset 0x0; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_DIGITAL_FILTER_OFFSET                 0x19u /* established */
#define AD1843_DIGITAL_FILTER_RESAMPLE_FILTER_SHIFT  15 /* established */
#define AD1843_DIGITAL_FILTER_RESAMPLE_FILTER_MASK   0x1u
#define AD1843_DIGITAL_FILTER_RESAMPLE_FILTER_INPLACE (AD1843_DIGITAL_FILTER_RESAMPLE_FILTER_MASK << AD1843_DIGITAL_FILTER_RESAMPLE_FILTER_SHIFT)
#define AD1843_DIGITAL_FILTER_DAC_MIX_SHIFT          14 /* established */
#define AD1843_DIGITAL_FILTER_DAC_MIX_MASK           0x1u
#define AD1843_DIGITAL_FILTER_DAC_MIX_INPLACE        (AD1843_DIGITAL_FILTER_DAC_MIX_MASK << AD1843_DIGITAL_FILTER_DAC_MIX_SHIFT)
#define AD1843_DIGITAL_FILTER_DAC2_FILTER_SHIFT      9 /* established */
#define AD1843_DIGITAL_FILTER_DAC2_FILTER_MASK       0x1u
#define AD1843_DIGITAL_FILTER_DAC2_FILTER_INPLACE    (AD1843_DIGITAL_FILTER_DAC2_FILTER_MASK << AD1843_DIGITAL_FILTER_DAC2_FILTER_SHIFT)
#define AD1843_DIGITAL_FILTER_DAC1_FILTER_SHIFT      8 /* established */
#define AD1843_DIGITAL_FILTER_DAC1_FILTER_MASK       0x1u
#define AD1843_DIGITAL_FILTER_DAC1_FILTER_INPLACE    (AD1843_DIGITAL_FILTER_DAC1_FILTER_MASK << AD1843_DIGITAL_FILTER_DAC1_FILTER_SHIFT)
#define AD1843_DIGITAL_FILTER_R_DIGITAL_SOURCE_SHIFT 6 /* established */
#define AD1843_DIGITAL_FILTER_R_DIGITAL_SOURCE_MASK  0x3u
#define AD1843_DIGITAL_FILTER_R_DIGITAL_SOURCE_INPLACE (AD1843_DIGITAL_FILTER_R_DIGITAL_SOURCE_MASK << AD1843_DIGITAL_FILTER_R_DIGITAL_SOURCE_SHIFT)
#define AD1843_DIGITAL_FILTER_L_DIGITAL_SOURCE_SHIFT 4 /* established */
#define AD1843_DIGITAL_FILTER_L_DIGITAL_SOURCE_MASK  0x3u
#define AD1843_DIGITAL_FILTER_L_DIGITAL_SOURCE_INPLACE (AD1843_DIGITAL_FILTER_L_DIGITAL_SOURCE_MASK << AD1843_DIGITAL_FILTER_L_DIGITAL_SOURCE_SHIFT)
#define AD1843_DIGITAL_FILTER_R_ADC_FILTER_SHIFT     1 /* established */
#define AD1843_DIGITAL_FILTER_R_ADC_FILTER_MASK      0x1u
#define AD1843_DIGITAL_FILTER_R_ADC_FILTER_INPLACE   (AD1843_DIGITAL_FILTER_R_ADC_FILTER_MASK << AD1843_DIGITAL_FILTER_R_ADC_FILTER_SHIFT)
#define AD1843_DIGITAL_FILTER_L_ADC_FILTER_SHIFT     0 /* established */
#define AD1843_DIGITAL_FILTER_L_ADC_FILTER_MASK      0x1u
#define AD1843_DIGITAL_FILTER_L_ADC_FILTER_INPLACE   (AD1843_DIGITAL_FILTER_L_ADC_FILTER_MASK << AD1843_DIGITAL_FILTER_L_ADC_FILTER_SHIFT)

/*
 * Sample format, mono mode, the frame-rate and SDFS options and the ADC lock. Bits 7 to 5 are the SCF, FRS and FRST controls (established, register pages 28-50 and the serial-frame section).
 */
/* format_lock: rw16, space codec_reg, reset 0x0; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_FORMAT_LOCK_OFFSET                    0x1au /* established */
#define AD1843_FORMAT_LOCK_DAC2_MONO_SHIFT           15 /* established */
#define AD1843_FORMAT_LOCK_DAC2_MONO_MASK            0x1u
#define AD1843_FORMAT_LOCK_DAC2_MONO_INPLACE         (AD1843_FORMAT_LOCK_DAC2_MONO_MASK << AD1843_FORMAT_LOCK_DAC2_MONO_SHIFT)
#define AD1843_FORMAT_LOCK_DAC1_MONO_SHIFT           14 /* established */
#define AD1843_FORMAT_LOCK_DAC1_MONO_MASK            0x1u
#define AD1843_FORMAT_LOCK_DAC1_MONO_INPLACE         (AD1843_FORMAT_LOCK_DAC1_MONO_MASK << AD1843_FORMAT_LOCK_DAC1_MONO_SHIFT)
#define AD1843_FORMAT_LOCK_DAC2_FORMAT_SHIFT         10 /* established */
#define AD1843_FORMAT_LOCK_DAC2_FORMAT_MASK          0x3u
#define AD1843_FORMAT_LOCK_DAC2_FORMAT_INPLACE       (AD1843_FORMAT_LOCK_DAC2_FORMAT_MASK << AD1843_FORMAT_LOCK_DAC2_FORMAT_SHIFT)
#define AD1843_FORMAT_LOCK_DAC1_FORMAT_SHIFT         8 /* established */
#define AD1843_FORMAT_LOCK_DAC1_FORMAT_MASK          0x3u
#define AD1843_FORMAT_LOCK_DAC1_FORMAT_INPLACE       (AD1843_FORMAT_LOCK_DAC1_FORMAT_MASK << AD1843_FORMAT_LOCK_DAC1_FORMAT_SHIFT)
#define AD1843_FORMAT_LOCK_SCF_SHIFT                 7 /* established */
#define AD1843_FORMAT_LOCK_SCF_MASK                  0x1u
#define AD1843_FORMAT_LOCK_SCF_INPLACE               (AD1843_FORMAT_LOCK_SCF_MASK << AD1843_FORMAT_LOCK_SCF_SHIFT)
#define AD1843_FORMAT_LOCK_FRS_SHIFT                 6 /* established */
#define AD1843_FORMAT_LOCK_FRS_MASK                  0x1u
#define AD1843_FORMAT_LOCK_FRS_INPLACE               (AD1843_FORMAT_LOCK_FRS_MASK << AD1843_FORMAT_LOCK_FRS_SHIFT)
#define AD1843_FORMAT_LOCK_FRST_SHIFT                5 /* established */
#define AD1843_FORMAT_LOCK_FRST_MASK                 0x1u
#define AD1843_FORMAT_LOCK_FRST_INPLACE              (AD1843_FORMAT_LOCK_FRST_MASK << AD1843_FORMAT_LOCK_FRST_SHIFT)
#define AD1843_FORMAT_LOCK_ADC_LOCK_SHIFT            4 /* established */
#define AD1843_FORMAT_LOCK_ADC_LOCK_MASK             0x1u
#define AD1843_FORMAT_LOCK_ADC_LOCK_INPLACE          (AD1843_FORMAT_LOCK_ADC_LOCK_MASK << AD1843_FORMAT_LOCK_ADC_LOCK_SHIFT)
#define AD1843_FORMAT_LOCK_R_ADC_FORMAT_SHIFT        2 /* established */
#define AD1843_FORMAT_LOCK_R_ADC_FORMAT_MASK         0x3u
#define AD1843_FORMAT_LOCK_R_ADC_FORMAT_INPLACE      (AD1843_FORMAT_LOCK_R_ADC_FORMAT_MASK << AD1843_FORMAT_LOCK_R_ADC_FORMAT_SHIFT)
#define AD1843_FORMAT_LOCK_L_ADC_FORMAT_SHIFT        0 /* established */
#define AD1843_FORMAT_LOCK_L_ADC_FORMAT_MASK         0x3u
#define AD1843_FORMAT_LOCK_L_ADC_FORMAT_INPLACE      (AD1843_FORMAT_LOCK_L_ADC_FORMAT_MASK << AD1843_FORMAT_LOCK_L_ADC_FORMAT_SHIFT)

/*
 * Power and enable bits for the converters, ADCs, analog paths and headphone output. Registers 1 to 15, 25 and 27 are held at reset while converter power-down is set (established, register pages 28-50).
 */
/* enables: rw16, space codec_reg, reset 0xc0; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_ENABLES_OFFSET                        0x1bu /* established */
#define AD1843_ENABLES_RESOURCE_FREE_SHIFT           15 /* established */
#define AD1843_ENABLES_RESOURCE_FREE_MASK            0x1u
#define AD1843_ENABLES_RESOURCE_FREE_INPLACE         (AD1843_ENABLES_RESOURCE_FREE_MASK << AD1843_ENABLES_RESOURCE_FREE_SHIFT)
#define AD1843_ENABLES_DAC2_ANALOG_MIX_SHIFT         12 /* established */
#define AD1843_ENABLES_DAC2_ANALOG_MIX_MASK          0x1u
#define AD1843_ENABLES_DAC2_ANALOG_MIX_INPLACE       (AD1843_ENABLES_DAC2_ANALOG_MIX_MASK << AD1843_ENABLES_DAC2_ANALOG_MIX_SHIFT)
#define AD1843_ENABLES_DAC2_ENABLE_SHIFT             9 /* established */
#define AD1843_ENABLES_DAC2_ENABLE_MASK              0x1u
#define AD1843_ENABLES_DAC2_ENABLE_INPLACE           (AD1843_ENABLES_DAC2_ENABLE_MASK << AD1843_ENABLES_DAC2_ENABLE_SHIFT)
#define AD1843_ENABLES_DAC1_ENABLE_SHIFT             8 /* established */
#define AD1843_ENABLES_DAC1_ENABLE_MASK              0x1u
#define AD1843_ENABLES_DAC1_ENABLE_INPLACE           (AD1843_ENABLES_DAC1_ENABLE_MASK << AD1843_ENABLES_DAC1_ENABLE_SHIFT)
#define AD1843_ENABLES_ANALOG_ENABLE_SHIFT           7 /* established */
#define AD1843_ENABLES_ANALOG_ENABLE_MASK            0x1u
#define AD1843_ENABLES_ANALOG_ENABLE_INPLACE         (AD1843_ENABLES_ANALOG_ENABLE_MASK << AD1843_ENABLES_ANALOG_ENABLE_SHIFT)
#define AD1843_ENABLES_HEADPHONE_ENABLE_SHIFT        6 /* established */
#define AD1843_ENABLES_HEADPHONE_ENABLE_MASK         0x1u
#define AD1843_ENABLES_HEADPHONE_ENABLE_INPLACE      (AD1843_ENABLES_HEADPHONE_ENABLE_MASK << AD1843_ENABLES_HEADPHONE_ENABLE_SHIFT)
#define AD1843_ENABLES_ANALOG_MIX_ENABLE_SHIFT       4 /* established */
#define AD1843_ENABLES_ANALOG_MIX_ENABLE_MASK        0x1u
#define AD1843_ENABLES_ANALOG_MIX_ENABLE_INPLACE     (AD1843_ENABLES_ANALOG_MIX_ENABLE_MASK << AD1843_ENABLES_ANALOG_MIX_ENABLE_SHIFT)
#define AD1843_ENABLES_R_ADC_ENABLE_SHIFT            1 /* established */
#define AD1843_ENABLES_R_ADC_ENABLE_MASK             0x1u
#define AD1843_ENABLES_R_ADC_ENABLE_INPLACE          (AD1843_ENABLES_R_ADC_ENABLE_MASK << AD1843_ENABLES_R_ADC_ENABLE_SHIFT)
#define AD1843_ENABLES_L_ADC_ENABLE_SHIFT            0 /* established */
#define AD1843_ENABLES_L_ADC_ENABLE_MASK             0x1u
#define AD1843_ENABLES_L_ADC_ENABLE_INPLACE          (AD1843_ENABLES_L_ADC_ENABLE_MASK << AD1843_ENABLES_L_ADC_ENABLE_SHIFT)

/*
 * Converter power, auto-calibration, generator enables, clock output and the line input modes. Bit 15 is PDNI, which resets to 1. Clearing it starts converter startup. Auto-calibration cannot be cleared before the first completed startup (established, register pages 28-50 and the initialisation text).
 */
/* power_clock: rw16, space codec_reg, reset 0xc400; Analog Devices AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register summary on page 52. The PDF is not stored in this repository, so these values were not re-checked against it here. */
#define AD1843_POWER_CLOCK_OFFSET                    0x1cu /* established */
#define AD1843_POWER_CLOCK_PDNI_SHIFT                15 /* established */
#define AD1843_POWER_CLOCK_PDNI_MASK                 0x1u
#define AD1843_POWER_CLOCK_PDNI_INPLACE              (AD1843_POWER_CLOCK_PDNI_MASK << AD1843_POWER_CLOCK_PDNI_SHIFT)
#define AD1843_POWER_CLOCK_AUTOCAL_SHIFT             14 /* established */
#define AD1843_POWER_CLOCK_AUTOCAL_MASK              0x1u
#define AD1843_POWER_CLOCK_AUTOCAL_INPLACE           (AD1843_POWER_CLOCK_AUTOCAL_MASK << AD1843_POWER_CLOCK_AUTOCAL_SHIFT)
#define AD1843_POWER_CLOCK_CLOCK3_ENABLE_SHIFT       13 /* established */
#define AD1843_POWER_CLOCK_CLOCK3_ENABLE_MASK        0x1u
#define AD1843_POWER_CLOCK_CLOCK3_ENABLE_INPLACE     (AD1843_POWER_CLOCK_CLOCK3_ENABLE_MASK << AD1843_POWER_CLOCK_CLOCK3_ENABLE_SHIFT)
#define AD1843_POWER_CLOCK_CLOCK2_ENABLE_SHIFT       12 /* established */
#define AD1843_POWER_CLOCK_CLOCK2_ENABLE_MASK        0x1u
#define AD1843_POWER_CLOCK_CLOCK2_ENABLE_INPLACE     (AD1843_POWER_CLOCK_CLOCK2_ENABLE_MASK << AD1843_POWER_CLOCK_CLOCK2_ENABLE_SHIFT)
#define AD1843_POWER_CLOCK_CLOCK1_ENABLE_SHIFT       11 /* established */
#define AD1843_POWER_CLOCK_CLOCK1_ENABLE_MASK        0x1u
#define AD1843_POWER_CLOCK_CLOCK1_ENABLE_INPLACE     (AD1843_POWER_CLOCK_CLOCK1_ENABLE_MASK << AD1843_POWER_CLOCK_CLOCK1_ENABLE_SHIFT)
#define AD1843_POWER_CLOCK_CLOCK_OUTPUT_SHIFT        10 /* established */
#define AD1843_POWER_CLOCK_CLOCK_OUTPUT_MASK         0x1u
#define AD1843_POWER_CLOCK_CLOCK_OUTPUT_INPLACE      (AD1843_POWER_CLOCK_CLOCK_OUTPUT_MASK << AD1843_POWER_CLOCK_CLOCK_OUTPUT_SHIFT)
#define AD1843_POWER_CLOCK_TTL_OUTPUTS_SHIFT         8 /* established */
#define AD1843_POWER_CLOCK_TTL_OUTPUTS_MASK          0x3u
#define AD1843_POWER_CLOCK_TTL_OUTPUTS_INPLACE       (AD1843_POWER_CLOCK_TTL_OUTPUTS_MASK << AD1843_POWER_CLOCK_TTL_OUTPUTS_SHIFT)
#define AD1843_POWER_CLOCK_CONV_BIT_OUTPUTS_SHIFT    2 /* established */
#define AD1843_POWER_CLOCK_CONV_BIT_OUTPUTS_MASK     0x3fu
#define AD1843_POWER_CLOCK_CONV_BIT_OUTPUTS_INPLACE  (AD1843_POWER_CLOCK_CONV_BIT_OUTPUTS_MASK << AD1843_POWER_CLOCK_CONV_BIT_OUTPUTS_SHIFT)
#define AD1843_POWER_CLOCK_R_LINE_MODE_SHIFT         1 /* established */
#define AD1843_POWER_CLOCK_R_LINE_MODE_MASK          0x1u
#define AD1843_POWER_CLOCK_R_LINE_MODE_INPLACE       (AD1843_POWER_CLOCK_R_LINE_MODE_MASK << AD1843_POWER_CLOCK_R_LINE_MODE_SHIFT)
#define AD1843_POWER_CLOCK_L_LINE_MODE_SHIFT         0 /* established */
#define AD1843_POWER_CLOCK_L_LINE_MODE_MASK          0x1u
#define AD1843_POWER_CLOCK_L_LINE_MODE_INPLACE       (AD1843_POWER_CLOCK_L_LINE_MODE_MASK << AD1843_POWER_CLOCK_L_LINE_MODE_SHIFT)

#endif /* AD1843_GEN_H */
