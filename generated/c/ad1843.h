/* generated from devices/ad1843/registers.toml by defs-gen - do not edit,
 * change the source */
/* defs-gen 4 */
/* input sha256 8c5aee84504454f4cf65a84aedb87a4571f16f099bea697abb6e49f5efe9deda */
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
 * INIT, the converter power-down state and the silicon revision. Read-only
 * ([AD1843 REV.0 page 28]). Reset sets INIT and power-down, so the codec starts
 * in initialisation. The revision field is read-only and resets to 1, the
 * first-silicon value in the table; the revision of a fitted part is not
 * measured here (established, register pages 28-50 and summary page 52).
 */
/* status_id: r16, space codec_reg, reset 0xc001; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_STATUS_ID_OFFSET                      0x0u /* established */
#define AD1843_STATUS_ID_INIT_SHIFT                  15 /* established */
#define AD1843_STATUS_ID_INIT_MASK                   0x1u
#define AD1843_STATUS_ID_INIT_INPLACE (AD1843_STATUS_ID_INIT_MASK << AD1843_STATUS_ID_INIT_SHIFT)
#define AD1843_STATUS_ID_PDNO_SHIFT                  14 /* established */
#define AD1843_STATUS_ID_PDNO_MASK                   0x1u
#define AD1843_STATUS_ID_PDNO_INPLACE (AD1843_STATUS_ID_PDNO_MASK << AD1843_STATUS_ID_PDNO_SHIFT)
#define AD1843_STATUS_ID_ID_SHIFT                    0 /* established */
#define AD1843_STATUS_ID_ID_MASK                     0xfu
#define AD1843_STATUS_ID_ID_INPLACE (AD1843_STATUS_ID_ID_MASK << AD1843_STATUS_ID_ID_SHIFT)

/*
 * DAC underrun flags and the peak level of each ADC channel. A read returns the
 * status and clears all of it. Any write clears all of it too, so this register
 * is not write-one-to-clear (established, register pages 28-50).
 */
/* underrun_peak: rw16, space codec_reg, reset 0x0; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_UNDERRUN_PEAK_OFFSET                  0x1u /* established */
#define AD1843_UNDERRUN_PEAK_SU2_SHIFT               9 /* established */
#define AD1843_UNDERRUN_PEAK_SU2_MASK                0x1u
#define AD1843_UNDERRUN_PEAK_SU2_INPLACE (AD1843_UNDERRUN_PEAK_SU2_MASK << AD1843_UNDERRUN_PEAK_SU2_SHIFT)
#define AD1843_UNDERRUN_PEAK_SU1_SHIFT               8 /* established */
#define AD1843_UNDERRUN_PEAK_SU1_MASK                0x1u
#define AD1843_UNDERRUN_PEAK_SU1_INPLACE (AD1843_UNDERRUN_PEAK_SU1_MASK << AD1843_UNDERRUN_PEAK_SU1_SHIFT)
#define AD1843_UNDERRUN_PEAK_OVR_SHIFT               2 /* established */
#define AD1843_UNDERRUN_PEAK_OVR_MASK                0x3u
#define AD1843_UNDERRUN_PEAK_OVR_INPLACE (AD1843_UNDERRUN_PEAK_OVR_MASK << AD1843_UNDERRUN_PEAK_OVR_SHIFT)
#define AD1843_UNDERRUN_PEAK_OVL_SHIFT               0 /* established */
#define AD1843_UNDERRUN_PEAK_OVL_MASK                0x3u
#define AD1843_UNDERRUN_PEAK_OVL_INPLACE (AD1843_UNDERRUN_PEAK_OVL_MASK << AD1843_UNDERRUN_PEAK_OVL_SHIFT)

/*
 * Analog source, microphone boost and gain for each ADC channel. The gain steps
 * are 1.5 dB per code and the microphone boost adds 20 dB (established,
 * register pages 28-50 and the routing text).
 */
/* adc_input: rw16, space codec_reg, reset 0x0; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_ADC_INPUT_OFFSET                      0x2u /* established */
#define AD1843_ADC_INPUT_LSS_SHIFT                   13 /* established */
#define AD1843_ADC_INPUT_LSS_MASK                    0x7u
#define AD1843_ADC_INPUT_LSS_INPLACE (AD1843_ADC_INPUT_LSS_MASK << AD1843_ADC_INPUT_LSS_SHIFT)
#define AD1843_ADC_INPUT_LMGE_SHIFT                  12 /* established */
#define AD1843_ADC_INPUT_LMGE_MASK                   0x1u
#define AD1843_ADC_INPUT_LMGE_INPLACE (AD1843_ADC_INPUT_LMGE_MASK << AD1843_ADC_INPUT_LMGE_SHIFT)
#define AD1843_ADC_INPUT_LIG_SHIFT                   8 /* established */
#define AD1843_ADC_INPUT_LIG_MASK                    0xfu
#define AD1843_ADC_INPUT_LIG_INPLACE (AD1843_ADC_INPUT_LIG_MASK << AD1843_ADC_INPUT_LIG_SHIFT)
#define AD1843_ADC_INPUT_RSS_SHIFT                   5 /* established */
#define AD1843_ADC_INPUT_RSS_MASK                    0x7u
#define AD1843_ADC_INPUT_RSS_INPLACE (AD1843_ADC_INPUT_RSS_MASK << AD1843_ADC_INPUT_RSS_SHIFT)
#define AD1843_ADC_INPUT_RMGE_SHIFT                  4 /* established */
#define AD1843_ADC_INPUT_RMGE_MASK                   0x1u
#define AD1843_ADC_INPUT_RMGE_INPLACE (AD1843_ADC_INPUT_RMGE_MASK << AD1843_ADC_INPUT_RMGE_SHIFT)
#define AD1843_ADC_INPUT_RIG_SHIFT                   0 /* established */
#define AD1843_ADC_INPUT_RIG_MASK                    0xfu
#define AD1843_ADC_INPUT_RIG_INPLACE (AD1843_ADC_INPUT_RIG_MASK << AD1843_ADC_INPUT_RIG_SHIFT)

/*
 * Analog mix of DAC2 into the DAC1 output. Page 53 identifies the register as
 * DAC2-to-DAC1 mixing; the summary's own names for it differ (inferred). Gain
 * is 12 minus 1.5 times the code, in dB. The mute bits are separate from the
 * gain.
 */
/* dac2_to_dac1_mix: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_DAC2_TO_DAC1_MIX_OFFSET               0x3u /* inferred */
#define AD1843_DAC2_TO_DAC1_MIX_LD2MM_SHIFT          15 /* established */
#define AD1843_DAC2_TO_DAC1_MIX_LD2MM_MASK           0x1u
#define AD1843_DAC2_TO_DAC1_MIX_LD2MM_INPLACE (AD1843_DAC2_TO_DAC1_MIX_LD2MM_MASK << AD1843_DAC2_TO_DAC1_MIX_LD2MM_SHIFT)
#define AD1843_DAC2_TO_DAC1_MIX_LD2M_SHIFT           8 /* established */
#define AD1843_DAC2_TO_DAC1_MIX_LD2M_MASK            0x1fu
#define AD1843_DAC2_TO_DAC1_MIX_LD2M_INPLACE (AD1843_DAC2_TO_DAC1_MIX_LD2M_MASK << AD1843_DAC2_TO_DAC1_MIX_LD2M_SHIFT)
#define AD1843_DAC2_TO_DAC1_MIX_RD2MM_SHIFT          7 /* established */
#define AD1843_DAC2_TO_DAC1_MIX_RD2MM_MASK           0x1u
#define AD1843_DAC2_TO_DAC1_MIX_RD2MM_INPLACE (AD1843_DAC2_TO_DAC1_MIX_RD2MM_MASK << AD1843_DAC2_TO_DAC1_MIX_RD2MM_SHIFT)
#define AD1843_DAC2_TO_DAC1_MIX_RD2M_SHIFT           0 /* established */
#define AD1843_DAC2_TO_DAC1_MIX_RD2M_MASK            0x1fu
#define AD1843_DAC2_TO_DAC1_MIX_RD2M_INPLACE (AD1843_DAC2_TO_DAC1_MIX_RD2M_MASK << AD1843_DAC2_TO_DAC1_MIX_RD2M_SHIFT)

/*
 * Analog mix of the AUX1 input. Same layout and gain law as dac2_to_dac1_mix
 * (established, register pages 28-50).
 */
/* aux1_mix: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_AUX1_MIX_OFFSET                       0x4u /* established */
#define AD1843_AUX1_MIX_LX1MM_SHIFT                  15 /* established */
#define AD1843_AUX1_MIX_LX1MM_MASK                   0x1u
#define AD1843_AUX1_MIX_LX1MM_INPLACE (AD1843_AUX1_MIX_LX1MM_MASK << AD1843_AUX1_MIX_LX1MM_SHIFT)
#define AD1843_AUX1_MIX_LX1M_SHIFT                   8 /* established */
#define AD1843_AUX1_MIX_LX1M_MASK                    0x1fu
#define AD1843_AUX1_MIX_LX1M_INPLACE (AD1843_AUX1_MIX_LX1M_MASK << AD1843_AUX1_MIX_LX1M_SHIFT)
#define AD1843_AUX1_MIX_RX1MM_SHIFT                  7 /* established */
#define AD1843_AUX1_MIX_RX1MM_MASK                   0x1u
#define AD1843_AUX1_MIX_RX1MM_INPLACE (AD1843_AUX1_MIX_RX1MM_MASK << AD1843_AUX1_MIX_RX1MM_SHIFT)
#define AD1843_AUX1_MIX_RX1M_SHIFT                   0 /* established */
#define AD1843_AUX1_MIX_RX1M_MASK                    0x1fu
#define AD1843_AUX1_MIX_RX1M_INPLACE (AD1843_AUX1_MIX_RX1M_MASK << AD1843_AUX1_MIX_RX1M_SHIFT)

/*
 * Analog mix of the AUX2 input. Same layout and gain law as dac2_to_dac1_mix
 * (established, register pages 28-50).
 */
/* aux2_mix: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_AUX2_MIX_OFFSET                       0x5u /* established */
#define AD1843_AUX2_MIX_LX2MM_SHIFT                  15 /* established */
#define AD1843_AUX2_MIX_LX2MM_MASK                   0x1u
#define AD1843_AUX2_MIX_LX2MM_INPLACE (AD1843_AUX2_MIX_LX2MM_MASK << AD1843_AUX2_MIX_LX2MM_SHIFT)
#define AD1843_AUX2_MIX_LX2M_SHIFT                   8 /* established */
#define AD1843_AUX2_MIX_LX2M_MASK                    0x1fu
#define AD1843_AUX2_MIX_LX2M_INPLACE (AD1843_AUX2_MIX_LX2M_MASK << AD1843_AUX2_MIX_LX2M_SHIFT)
#define AD1843_AUX2_MIX_RX2MM_SHIFT                  7 /* established */
#define AD1843_AUX2_MIX_RX2MM_MASK                   0x1u
#define AD1843_AUX2_MIX_RX2MM_INPLACE (AD1843_AUX2_MIX_RX2MM_MASK << AD1843_AUX2_MIX_RX2MM_SHIFT)
#define AD1843_AUX2_MIX_RX2M_SHIFT                   0 /* established */
#define AD1843_AUX2_MIX_RX2M_MASK                    0x1fu
#define AD1843_AUX2_MIX_RX2M_INPLACE (AD1843_AUX2_MIX_RX2M_MASK << AD1843_AUX2_MIX_RX2M_SHIFT)

/*
 * Analog mix of the AUX3 input. Same layout and gain law as dac2_to_dac1_mix
 * (established, register pages 28-50).
 */
/* aux3_mix: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_AUX3_MIX_OFFSET                       0x6u /* established */
#define AD1843_AUX3_MIX_LX3MM_SHIFT                  15 /* established */
#define AD1843_AUX3_MIX_LX3MM_MASK                   0x1u
#define AD1843_AUX3_MIX_LX3MM_INPLACE (AD1843_AUX3_MIX_LX3MM_MASK << AD1843_AUX3_MIX_LX3MM_SHIFT)
#define AD1843_AUX3_MIX_LX3M_SHIFT                   8 /* established */
#define AD1843_AUX3_MIX_LX3M_MASK                    0x1fu
#define AD1843_AUX3_MIX_LX3M_INPLACE (AD1843_AUX3_MIX_LX3M_MASK << AD1843_AUX3_MIX_LX3M_SHIFT)
#define AD1843_AUX3_MIX_RX3MM_SHIFT                  7 /* established */
#define AD1843_AUX3_MIX_RX3MM_MASK                   0x1u
#define AD1843_AUX3_MIX_RX3MM_INPLACE (AD1843_AUX3_MIX_RX3MM_MASK << AD1843_AUX3_MIX_RX3MM_SHIFT)
#define AD1843_AUX3_MIX_RX3M_SHIFT                   0 /* established */
#define AD1843_AUX3_MIX_RX3M_MASK                    0x1fu
#define AD1843_AUX3_MIX_RX3M_INPLACE (AD1843_AUX3_MIX_RX3M_MASK << AD1843_AUX3_MIX_RX3M_SHIFT)

/*
 * Analog mix of the microphone input. Same layout and gain law as
 * dac2_to_dac1_mix (established, register pages 28-50).
 */
/* mic_mix: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_MIC_MIX_OFFSET                        0x7u /* established */
#define AD1843_MIC_MIX_LMCMM_SHIFT                   15 /* established */
#define AD1843_MIC_MIX_LMCMM_MASK                    0x1u
#define AD1843_MIC_MIX_LMCMM_INPLACE (AD1843_MIC_MIX_LMCMM_MASK << AD1843_MIC_MIX_LMCMM_SHIFT)
#define AD1843_MIC_MIX_LMCM_SHIFT                    8 /* established */
#define AD1843_MIC_MIX_LMCM_MASK                     0x1fu
#define AD1843_MIC_MIX_LMCM_INPLACE (AD1843_MIC_MIX_LMCM_MASK << AD1843_MIC_MIX_LMCM_SHIFT)
#define AD1843_MIC_MIX_RMCMM_SHIFT                   7 /* established */
#define AD1843_MIC_MIX_RMCMM_MASK                    0x1u
#define AD1843_MIC_MIX_RMCMM_INPLACE (AD1843_MIC_MIX_RMCMM_MASK << AD1843_MIC_MIX_RMCMM_SHIFT)
#define AD1843_MIC_MIX_RMCM_SHIFT                    0 /* established */
#define AD1843_MIC_MIX_RMCM_MASK                     0x1fu
#define AD1843_MIC_MIX_RMCM_INPLACE (AD1843_MIC_MIX_RMCM_MASK << AD1843_MIC_MIX_RMCM_SHIFT)

/*
 * Mono mix gain and mute in the upper byte. The lower byte holds the all-mix
 * mute, the mono and headphone mutes, the output swing, the sum mute and the
 * gain-change timing of each DAC (established, register page 33). The all-mix
 * mute is read from the detailed diagram as covering the DAC2, AUX1 to AUX3 and
 * microphone analog contributions only (inferred). The prose describes it more
 * broadly, and the two readings conflict (see
 * devices/mace_audio/mace-audio.md).
 */
/* mono_control: rw16, space codec_reg, reset 0x8868; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_MONO_CONTROL_OFFSET                   0x8u /* established */
#define AD1843_MONO_CONTROL_MNMM_SHIFT               15 /* established */
#define AD1843_MONO_CONTROL_MNMM_MASK                0x1u
#define AD1843_MONO_CONTROL_MNMM_INPLACE (AD1843_MONO_CONTROL_MNMM_MASK << AD1843_MONO_CONTROL_MNMM_SHIFT)
#define AD1843_MONO_CONTROL_MNM_SHIFT                8 /* established */
#define AD1843_MONO_CONTROL_MNM_MASK                 0x1fu
#define AD1843_MONO_CONTROL_MNM_INPLACE (AD1843_MONO_CONTROL_MNM_MASK << AD1843_MONO_CONTROL_MNM_SHIFT)
#define AD1843_MONO_CONTROL_ALLMM_SHIFT              7 /* inferred */
#define AD1843_MONO_CONTROL_ALLMM_MASK               0x1u
#define AD1843_MONO_CONTROL_ALLMM_INPLACE (AD1843_MONO_CONTROL_ALLMM_MASK << AD1843_MONO_CONTROL_ALLMM_SHIFT)
#define AD1843_MONO_CONTROL_MNOM_SHIFT               6 /* established */
#define AD1843_MONO_CONTROL_MNOM_MASK                0x1u
#define AD1843_MONO_CONTROL_MNOM_INPLACE (AD1843_MONO_CONTROL_MNOM_MASK << AD1843_MONO_CONTROL_MNOM_SHIFT)
#define AD1843_MONO_CONTROL_HPOM_SHIFT               5 /* established */
#define AD1843_MONO_CONTROL_HPOM_MASK                0x1u
#define AD1843_MONO_CONTROL_HPOM_INPLACE (AD1843_MONO_CONTROL_HPOM_MASK << AD1843_MONO_CONTROL_HPOM_SHIFT)
#define AD1843_MONO_CONTROL_HPOS_SHIFT               4 /* established */
#define AD1843_MONO_CONTROL_HPOS_MASK                0x1u
#define AD1843_MONO_CONTROL_HPOS_INPLACE (AD1843_MONO_CONTROL_HPOS_MASK << AD1843_MONO_CONTROL_HPOS_SHIFT)
#define AD1843_MONO_CONTROL_SUMM_SHIFT               3 /* established */
#define AD1843_MONO_CONTROL_SUMM_MASK                0x1u
#define AD1843_MONO_CONTROL_SUMM_INPLACE (AD1843_MONO_CONTROL_SUMM_MASK << AD1843_MONO_CONTROL_SUMM_SHIFT)
#define AD1843_MONO_CONTROL_DAC2T_SHIFT              1 /* established */
#define AD1843_MONO_CONTROL_DAC2T_MASK               0x1u
#define AD1843_MONO_CONTROL_DAC2T_INPLACE (AD1843_MONO_CONTROL_DAC2T_MASK << AD1843_MONO_CONTROL_DAC2T_SHIFT)
#define AD1843_MONO_CONTROL_DAC1T_SHIFT              0 /* established */
#define AD1843_MONO_CONTROL_DAC1T_MASK               0x1u
#define AD1843_MONO_CONTROL_DAC1T_INPLACE (AD1843_MONO_CONTROL_DAC1T_MASK << AD1843_MONO_CONTROL_DAC1T_SHIFT)

/*
 * DAC1 output gain and mute, left and right. Gain is six bits, mute is
 * separate. Resets muted (established, register pages 28-50).
 */
/* dac1_output: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_DAC1_OUTPUT_OFFSET                    0x9u /* established */
#define AD1843_DAC1_OUTPUT_LDA1GM_SHIFT              15 /* established */
#define AD1843_DAC1_OUTPUT_LDA1GM_MASK               0x1u
#define AD1843_DAC1_OUTPUT_LDA1GM_INPLACE (AD1843_DAC1_OUTPUT_LDA1GM_MASK << AD1843_DAC1_OUTPUT_LDA1GM_SHIFT)
#define AD1843_DAC1_OUTPUT_LDA1G_SHIFT               8 /* established */
#define AD1843_DAC1_OUTPUT_LDA1G_MASK                0x3fu
#define AD1843_DAC1_OUTPUT_LDA1G_INPLACE (AD1843_DAC1_OUTPUT_LDA1G_MASK << AD1843_DAC1_OUTPUT_LDA1G_SHIFT)
#define AD1843_DAC1_OUTPUT_RDA1GM_SHIFT              7 /* established */
#define AD1843_DAC1_OUTPUT_RDA1GM_MASK               0x1u
#define AD1843_DAC1_OUTPUT_RDA1GM_INPLACE (AD1843_DAC1_OUTPUT_RDA1GM_MASK << AD1843_DAC1_OUTPUT_RDA1GM_SHIFT)
#define AD1843_DAC1_OUTPUT_RDA1G_SHIFT               0 /* established */
#define AD1843_DAC1_OUTPUT_RDA1G_MASK                0x3fu
#define AD1843_DAC1_OUTPUT_RDA1G_INPLACE (AD1843_DAC1_OUTPUT_RDA1G_MASK << AD1843_DAC1_OUTPUT_RDA1G_SHIFT)

/*
 * DAC2 output gain and mute, left and right. Same layout as dac1_output. Gain
 * and mute here control the separate DAC2 output branch. The DAC2 contribution
 * into the DAC1 mix is taken before this gain (inferred from the routing
 * diagram, page 53).
 */
/* dac2_output: rw16, space codec_reg, reset 0x8888; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_DAC2_OUTPUT_OFFSET                    0xau /* established */
#define AD1843_DAC2_OUTPUT_LDA2GM_SHIFT              15 /* established */
#define AD1843_DAC2_OUTPUT_LDA2GM_MASK               0x1u
#define AD1843_DAC2_OUTPUT_LDA2GM_INPLACE (AD1843_DAC2_OUTPUT_LDA2GM_MASK << AD1843_DAC2_OUTPUT_LDA2GM_SHIFT)
#define AD1843_DAC2_OUTPUT_LDA2G_SHIFT               8 /* established */
#define AD1843_DAC2_OUTPUT_LDA2G_MASK                0x3fu
#define AD1843_DAC2_OUTPUT_LDA2G_INPLACE (AD1843_DAC2_OUTPUT_LDA2G_MASK << AD1843_DAC2_OUTPUT_LDA2G_SHIFT)
#define AD1843_DAC2_OUTPUT_RDA2GM_SHIFT              7 /* established */
#define AD1843_DAC2_OUTPUT_RDA2GM_MASK               0x1u
#define AD1843_DAC2_OUTPUT_RDA2GM_INPLACE (AD1843_DAC2_OUTPUT_RDA2GM_MASK << AD1843_DAC2_OUTPUT_RDA2GM_SHIFT)
#define AD1843_DAC2_OUTPUT_RDA2G_SHIFT               0 /* established */
#define AD1843_DAC2_OUTPUT_RDA2G_MASK                0x3fu
#define AD1843_DAC2_OUTPUT_RDA2G_INPLACE (AD1843_DAC2_OUTPUT_RDA2G_MASK << AD1843_DAC2_OUTPUT_RDA2G_SHIFT)

/*
 * DAC1 digital attenuation and mute, left and right. Attenuation is 1.5 dB per
 * code and code 63 is finite attenuation, not mute (established, register pages
 * 28-50 and the routing text).
 */
/* dac1_digital_attenuation: rw16, space codec_reg, reset 0x0; Analog Devices
 * AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50
 * and the register summary on page 52. Every register layout and reset value
 * was checked against those pages. */
#define AD1843_DAC1_DIGITAL_ATTENUATION_OFFSET       0xbu /* established */
#define AD1843_DAC1_DIGITAL_ATTENUATION_LDA1AM_SHIFT 15 /* established */
#define AD1843_DAC1_DIGITAL_ATTENUATION_LDA1AM_MASK  0x1u
#define AD1843_DAC1_DIGITAL_ATTENUATION_LDA1AM_INPLACE (AD1843_DAC1_DIGITAL_ATTENUATION_LDA1AM_MASK << AD1843_DAC1_DIGITAL_ATTENUATION_LDA1AM_SHIFT)
#define AD1843_DAC1_DIGITAL_ATTENUATION_LDA1A_SHIFT  8 /* established */
#define AD1843_DAC1_DIGITAL_ATTENUATION_LDA1A_MASK   0x3fu
#define AD1843_DAC1_DIGITAL_ATTENUATION_LDA1A_INPLACE (AD1843_DAC1_DIGITAL_ATTENUATION_LDA1A_MASK << AD1843_DAC1_DIGITAL_ATTENUATION_LDA1A_SHIFT)
#define AD1843_DAC1_DIGITAL_ATTENUATION_RDA1AM_SHIFT 7 /* established */
#define AD1843_DAC1_DIGITAL_ATTENUATION_RDA1AM_MASK  0x1u
#define AD1843_DAC1_DIGITAL_ATTENUATION_RDA1AM_INPLACE (AD1843_DAC1_DIGITAL_ATTENUATION_RDA1AM_MASK << AD1843_DAC1_DIGITAL_ATTENUATION_RDA1AM_SHIFT)
#define AD1843_DAC1_DIGITAL_ATTENUATION_RDA1A_SHIFT  0 /* established */
#define AD1843_DAC1_DIGITAL_ATTENUATION_RDA1A_MASK   0x3fu
#define AD1843_DAC1_DIGITAL_ATTENUATION_RDA1A_INPLACE (AD1843_DAC1_DIGITAL_ATTENUATION_RDA1A_MASK << AD1843_DAC1_DIGITAL_ATTENUATION_RDA1A_SHIFT)

/*
 * DAC2 digital attenuation and mute, left and right. Same layout and law as
 * dac1_digital_attenuation (established, register pages 28-50).
 */
/* dac2_digital_attenuation: rw16, space codec_reg, reset 0x0; Analog Devices
 * AD1843 Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50
 * and the register summary on page 52. Every register layout and reset value
 * was checked against those pages. */
#define AD1843_DAC2_DIGITAL_ATTENUATION_OFFSET       0xcu /* established */
#define AD1843_DAC2_DIGITAL_ATTENUATION_LDA2AM_SHIFT 15 /* established */
#define AD1843_DAC2_DIGITAL_ATTENUATION_LDA2AM_MASK  0x1u
#define AD1843_DAC2_DIGITAL_ATTENUATION_LDA2AM_INPLACE (AD1843_DAC2_DIGITAL_ATTENUATION_LDA2AM_MASK << AD1843_DAC2_DIGITAL_ATTENUATION_LDA2AM_SHIFT)
#define AD1843_DAC2_DIGITAL_ATTENUATION_LDA2A_SHIFT  8 /* established */
#define AD1843_DAC2_DIGITAL_ATTENUATION_LDA2A_MASK   0x3fu
#define AD1843_DAC2_DIGITAL_ATTENUATION_LDA2A_INPLACE (AD1843_DAC2_DIGITAL_ATTENUATION_LDA2A_MASK << AD1843_DAC2_DIGITAL_ATTENUATION_LDA2A_SHIFT)
#define AD1843_DAC2_DIGITAL_ATTENUATION_RDA2AM_SHIFT 7 /* established */
#define AD1843_DAC2_DIGITAL_ATTENUATION_RDA2AM_MASK  0x1u
#define AD1843_DAC2_DIGITAL_ATTENUATION_RDA2AM_INPLACE (AD1843_DAC2_DIGITAL_ATTENUATION_RDA2AM_MASK << AD1843_DAC2_DIGITAL_ATTENUATION_RDA2AM_SHIFT)
#define AD1843_DAC2_DIGITAL_ATTENUATION_RDA2A_SHIFT  0 /* established */
#define AD1843_DAC2_DIGITAL_ATTENUATION_RDA2A_MASK   0x3fu
#define AD1843_DAC2_DIGITAL_ATTENUATION_RDA2A_INPLACE (AD1843_DAC2_DIGITAL_ATTENUATION_RDA2A_MASK << AD1843_DAC2_DIGITAL_ATTENUATION_RDA2A_SHIFT)

/*
 * Digital mix of the ADC data into DAC1, attenuation and mute per channel. Code
 * 63 is full mute here, unlike the ordinary DAC attenuator (established,
 * register pages 28-50 and the routing text).
 */
/* adc_to_dac1_mix: rw16, space codec_reg, reset 0x8080; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_ADC_TO_DAC1_MIX_OFFSET                0xdu /* established */
#define AD1843_ADC_TO_DAC1_MIX_LAD1MM_SHIFT          15 /* established */
#define AD1843_ADC_TO_DAC1_MIX_LAD1MM_MASK           0x1u
#define AD1843_ADC_TO_DAC1_MIX_LAD1MM_INPLACE (AD1843_ADC_TO_DAC1_MIX_LAD1MM_MASK << AD1843_ADC_TO_DAC1_MIX_LAD1MM_SHIFT)
#define AD1843_ADC_TO_DAC1_MIX_LAD1M_SHIFT           8 /* established */
#define AD1843_ADC_TO_DAC1_MIX_LAD1M_MASK            0x3fu
#define AD1843_ADC_TO_DAC1_MIX_LAD1M_INPLACE (AD1843_ADC_TO_DAC1_MIX_LAD1M_MASK << AD1843_ADC_TO_DAC1_MIX_LAD1M_SHIFT)
#define AD1843_ADC_TO_DAC1_MIX_RAD1MM_SHIFT          7 /* established */
#define AD1843_ADC_TO_DAC1_MIX_RAD1MM_MASK           0x1u
#define AD1843_ADC_TO_DAC1_MIX_RAD1MM_INPLACE (AD1843_ADC_TO_DAC1_MIX_RAD1MM_MASK << AD1843_ADC_TO_DAC1_MIX_RAD1MM_SHIFT)
#define AD1843_ADC_TO_DAC1_MIX_RAD1M_SHIFT           0 /* established */
#define AD1843_ADC_TO_DAC1_MIX_RAD1M_MASK            0x3fu
#define AD1843_ADC_TO_DAC1_MIX_RAD1M_INPLACE (AD1843_ADC_TO_DAC1_MIX_RAD1M_MASK << AD1843_ADC_TO_DAC1_MIX_RAD1M_SHIFT)

/*
 * Digital mix of the ADC data into DAC2. Same layout and code-63 rule as
 * adc_to_dac1_mix (established, register pages 28-50).
 */
/* adc_to_dac2_mix: rw16, space codec_reg, reset 0x8080; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_ADC_TO_DAC2_MIX_OFFSET                0xeu /* established */
#define AD1843_ADC_TO_DAC2_MIX_LAD2MM_SHIFT          15 /* established */
#define AD1843_ADC_TO_DAC2_MIX_LAD2MM_MASK           0x1u
#define AD1843_ADC_TO_DAC2_MIX_LAD2MM_INPLACE (AD1843_ADC_TO_DAC2_MIX_LAD2MM_MASK << AD1843_ADC_TO_DAC2_MIX_LAD2MM_SHIFT)
#define AD1843_ADC_TO_DAC2_MIX_LAD2M_SHIFT           8 /* established */
#define AD1843_ADC_TO_DAC2_MIX_LAD2M_MASK            0x3fu
#define AD1843_ADC_TO_DAC2_MIX_LAD2M_INPLACE (AD1843_ADC_TO_DAC2_MIX_LAD2M_MASK << AD1843_ADC_TO_DAC2_MIX_LAD2M_SHIFT)
#define AD1843_ADC_TO_DAC2_MIX_RAD2MM_SHIFT          7 /* established */
#define AD1843_ADC_TO_DAC2_MIX_RAD2MM_MASK           0x1u
#define AD1843_ADC_TO_DAC2_MIX_RAD2MM_INPLACE (AD1843_ADC_TO_DAC2_MIX_RAD2MM_MASK << AD1843_ADC_TO_DAC2_MIX_RAD2MM_SHIFT)
#define AD1843_ADC_TO_DAC2_MIX_RAD2M_SHIFT           0 /* established */
#define AD1843_ADC_TO_DAC2_MIX_RAD2M_MASK            0x3fu
#define AD1843_ADC_TO_DAC2_MIX_RAD2M_INPLACE (AD1843_ADC_TO_DAC2_MIX_RAD2M_MASK << AD1843_ADC_TO_DAC2_MIX_RAD2M_SHIFT)

/*
 * Sample-rate source of each DAC and ADC: 0 is the fixed 48 kHz clock and 1 to
 * 3 are generators 1 to 3. The published table lists code 1 twice for the ADC
 * selectors. Page 53 reads the right ADC code 2 as clock 2, as for the other
 * three selectors (inferred).
 */
/* clock_select: rw16, space codec_reg, reset 0x0; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_CLOCK_SELECT_OFFSET                   0xfu /* established */
#define AD1843_CLOCK_SELECT_DA2C_SHIFT               10 /* established */
#define AD1843_CLOCK_SELECT_DA2C_MASK                0x3u
#define AD1843_CLOCK_SELECT_DA2C_INPLACE (AD1843_CLOCK_SELECT_DA2C_MASK << AD1843_CLOCK_SELECT_DA2C_SHIFT)
#define AD1843_CLOCK_SELECT_DA1C_SHIFT               8 /* established */
#define AD1843_CLOCK_SELECT_DA1C_MASK                0x3u
#define AD1843_CLOCK_SELECT_DA1C_INPLACE (AD1843_CLOCK_SELECT_DA1C_MASK << AD1843_CLOCK_SELECT_DA1C_SHIFT)
#define AD1843_CLOCK_SELECT_ADRC_SHIFT               2 /* inferred */
#define AD1843_CLOCK_SELECT_ADRC_MASK                0x3u
#define AD1843_CLOCK_SELECT_ADRC_INPLACE (AD1843_CLOCK_SELECT_ADRC_MASK << AD1843_CLOCK_SELECT_ADRC_SHIFT)
#define AD1843_CLOCK_SELECT_ADLC_SHIFT               0 /* established */
#define AD1843_CLOCK_SELECT_ADLC_MASK                0x3u
#define AD1843_CLOCK_SELECT_ADLC_INPLACE (AD1843_CLOCK_SELECT_ADLC_MASK << AD1843_CLOCK_SELECT_ADLC_SHIFT)

/*
 * Mode of generator 1. Clock 2 and clock 3 use the same layout at registers 19
 * and 22. Bits 9 and 8 are not defined (established, register pages 38 to 43).
 */
/* clock1_mode: rw16, space codec_reg, reset 0xff; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_CLOCK1_MODE_OFFSET                    0x10u /* established */
#define AD1843_CLOCK1_MODE_C1REF_SHIFT               15 /* established */
#define AD1843_CLOCK1_MODE_C1REF_MASK                0x1u
#define AD1843_CLOCK1_MODE_C1REF_INPLACE (AD1843_CLOCK1_MODE_C1REF_MASK << AD1843_CLOCK1_MODE_C1REF_SHIFT)
#define AD1843_CLOCK1_MODE_C1VID_SHIFT               14 /* established */
#define AD1843_CLOCK1_MODE_C1VID_MASK                0x1u
#define AD1843_CLOCK1_MODE_C1VID_INPLACE (AD1843_CLOCK1_MODE_C1VID_MASK << AD1843_CLOCK1_MODE_C1VID_SHIFT)
#define AD1843_CLOCK1_MODE_C1PLLG_SHIFT              13 /* established */
#define AD1843_CLOCK1_MODE_C1PLLG_MASK               0x1u
#define AD1843_CLOCK1_MODE_C1PLLG_INPLACE (AD1843_CLOCK1_MODE_C1PLLG_MASK << AD1843_CLOCK1_MODE_C1PLLG_SHIFT)
#define AD1843_CLOCK1_MODE_C1P200_SHIFT              12 /* established */
#define AD1843_CLOCK1_MODE_C1P200_MASK               0x1u
#define AD1843_CLOCK1_MODE_C1P200_INPLACE (AD1843_CLOCK1_MODE_C1P200_MASK << AD1843_CLOCK1_MODE_C1P200_SHIFT)
#define AD1843_CLOCK1_MODE_C1X8_7_SHIFT              11 /* established */
#define AD1843_CLOCK1_MODE_C1X8_7_MASK               0x1u
#define AD1843_CLOCK1_MODE_C1X8_7_INPLACE (AD1843_CLOCK1_MODE_C1X8_7_MASK << AD1843_CLOCK1_MODE_C1X8_7_SHIFT)
#define AD1843_CLOCK1_MODE_C1C128_SHIFT              10 /* established */
#define AD1843_CLOCK1_MODE_C1C128_MASK               0x1u
#define AD1843_CLOCK1_MODE_C1C128_INPLACE (AD1843_CLOCK1_MODE_C1C128_MASK << AD1843_CLOCK1_MODE_C1C128_SHIFT)
#define AD1843_CLOCK1_MODE_C1M_7_4_SHIFT             4 /* established */
#define AD1843_CLOCK1_MODE_C1M_7_4_MASK              0xfu
#define AD1843_CLOCK1_MODE_C1M_7_4_INPLACE (AD1843_CLOCK1_MODE_C1M_7_4_MASK << AD1843_CLOCK1_MODE_C1M_7_4_SHIFT)
#define AD1843_CLOCK1_MODE_C1M_3_0_SHIFT             0 /* established */
#define AD1843_CLOCK1_MODE_C1M_3_0_MASK              0xfu
#define AD1843_CLOCK1_MODE_C1M_3_0_INPLACE (AD1843_CLOCK1_MODE_C1M_3_0_MASK << AD1843_CLOCK1_MODE_C1M_3_0_SHIFT)

/*
 * Nominal rate of generator 1 in Hz. Reset is 48000 (established, register
 * pages 28-50). Clock 2 and clock 3 use registers 20 and 23.
 */
/* clock1_hz: rw16, space codec_reg, reset 0xbb80; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_CLOCK1_HZ_OFFSET                      0x11u /* established */
#define AD1843_CLOCK1_HZ_C1C_SHIFT                   0 /* established */
#define AD1843_CLOCK1_HZ_C1C_MASK                    0xffffu
#define AD1843_CLOCK1_HZ_C1C_INPLACE (AD1843_CLOCK1_HZ_C1C_MASK << AD1843_CLOCK1_HZ_C1C_SHIFT)

/*
 * Phase work for generator 1. A write replaces the remaining work. Units are
 * 1/3000 of a conversion cycle (0.12 degrees). Direction 0 advances the phase
 * and 1 retards it. Clock 2 and clock 3 use registers 21 and 24 (established,
 * register pages 39, 42 and 45, and the phase section).
 */
/* clock1_phase: rw16, space codec_reg, reset 0x0; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_CLOCK1_PHASE_OFFSET                   0x12u /* established */
#define AD1843_CLOCK1_PHASE_C1PD_SHIFT               8 /* established */
#define AD1843_CLOCK1_PHASE_C1PD_MASK                0x1u
#define AD1843_CLOCK1_PHASE_C1PD_INPLACE (AD1843_CLOCK1_PHASE_C1PD_MASK << AD1843_CLOCK1_PHASE_C1PD_SHIFT)
#define AD1843_CLOCK1_PHASE_C1P_SHIFT                0 /* established */
#define AD1843_CLOCK1_PHASE_C1P_MASK                 0xffu
#define AD1843_CLOCK1_PHASE_C1P_INPLACE (AD1843_CLOCK1_PHASE_C1P_MASK << AD1843_CLOCK1_PHASE_C1P_SHIFT)

/*
 * Mode of generator 2, same layout and reset as clock1_mode (established,
 * register pages 38 to 43). The source notes that a description citing
 * registers 17 and 18 for clock 2 means 20 and 21 (inferred).
 */
/* clock2_mode: rw16, space codec_reg, reset 0xff; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_CLOCK2_MODE_OFFSET                    0x13u /* established */
#define AD1843_CLOCK2_MODE_C2REF_SHIFT               15 /* established */
#define AD1843_CLOCK2_MODE_C2REF_MASK                0x1u
#define AD1843_CLOCK2_MODE_C2REF_INPLACE (AD1843_CLOCK2_MODE_C2REF_MASK << AD1843_CLOCK2_MODE_C2REF_SHIFT)
#define AD1843_CLOCK2_MODE_C2VID_SHIFT               14 /* established */
#define AD1843_CLOCK2_MODE_C2VID_MASK                0x1u
#define AD1843_CLOCK2_MODE_C2VID_INPLACE (AD1843_CLOCK2_MODE_C2VID_MASK << AD1843_CLOCK2_MODE_C2VID_SHIFT)
#define AD1843_CLOCK2_MODE_C2PLLG_SHIFT              13 /* established */
#define AD1843_CLOCK2_MODE_C2PLLG_MASK               0x1u
#define AD1843_CLOCK2_MODE_C2PLLG_INPLACE (AD1843_CLOCK2_MODE_C2PLLG_MASK << AD1843_CLOCK2_MODE_C2PLLG_SHIFT)
#define AD1843_CLOCK2_MODE_C2P200_SHIFT              12 /* established */
#define AD1843_CLOCK2_MODE_C2P200_MASK               0x1u
#define AD1843_CLOCK2_MODE_C2P200_INPLACE (AD1843_CLOCK2_MODE_C2P200_MASK << AD1843_CLOCK2_MODE_C2P200_SHIFT)
#define AD1843_CLOCK2_MODE_C2X8_7_SHIFT              11 /* established */
#define AD1843_CLOCK2_MODE_C2X8_7_MASK               0x1u
#define AD1843_CLOCK2_MODE_C2X8_7_INPLACE (AD1843_CLOCK2_MODE_C2X8_7_MASK << AD1843_CLOCK2_MODE_C2X8_7_SHIFT)
#define AD1843_CLOCK2_MODE_C2C128_SHIFT              10 /* established */
#define AD1843_CLOCK2_MODE_C2C128_MASK               0x1u
#define AD1843_CLOCK2_MODE_C2C128_INPLACE (AD1843_CLOCK2_MODE_C2C128_MASK << AD1843_CLOCK2_MODE_C2C128_SHIFT)
#define AD1843_CLOCK2_MODE_C2M_7_4_SHIFT             4 /* established */
#define AD1843_CLOCK2_MODE_C2M_7_4_MASK              0xfu
#define AD1843_CLOCK2_MODE_C2M_7_4_INPLACE (AD1843_CLOCK2_MODE_C2M_7_4_MASK << AD1843_CLOCK2_MODE_C2M_7_4_SHIFT)
#define AD1843_CLOCK2_MODE_C2M_3_0_SHIFT             0 /* established */
#define AD1843_CLOCK2_MODE_C2M_3_0_MASK              0xfu
#define AD1843_CLOCK2_MODE_C2M_3_0_INPLACE (AD1843_CLOCK2_MODE_C2M_3_0_MASK << AD1843_CLOCK2_MODE_C2M_3_0_SHIFT)

/*
 * Nominal rate of generator 2 in Hz. Reset is 48000 (established, register
 * pages 28-50).
 */
/* clock2_hz: rw16, space codec_reg, reset 0xbb80; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_CLOCK2_HZ_OFFSET                      0x14u /* established */
#define AD1843_CLOCK2_HZ_C2C_SHIFT                   0 /* established */
#define AD1843_CLOCK2_HZ_C2C_MASK                    0xffffu
#define AD1843_CLOCK2_HZ_C2C_INPLACE (AD1843_CLOCK2_HZ_C2C_MASK << AD1843_CLOCK2_HZ_C2C_SHIFT)

/*
 * Phase work for generator 2, same units and direction rule as clock1_phase
 * (established, register pages 39, 42 and 45).
 */
/* clock2_phase: rw16, space codec_reg, reset 0x0; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_CLOCK2_PHASE_OFFSET                   0x15u /* established */
#define AD1843_CLOCK2_PHASE_C2PD_SHIFT               8 /* established */
#define AD1843_CLOCK2_PHASE_C2PD_MASK                0x1u
#define AD1843_CLOCK2_PHASE_C2PD_INPLACE (AD1843_CLOCK2_PHASE_C2PD_MASK << AD1843_CLOCK2_PHASE_C2PD_SHIFT)
#define AD1843_CLOCK2_PHASE_C2P_SHIFT                0 /* established */
#define AD1843_CLOCK2_PHASE_C2P_MASK                 0xffu
#define AD1843_CLOCK2_PHASE_C2P_INPLACE (AD1843_CLOCK2_PHASE_C2P_MASK << AD1843_CLOCK2_PHASE_C2P_SHIFT)

/*
 * Mode of generator 3, same layout and reset as clock1_mode (established,
 * register pages 38 to 43).
 */
/* clock3_mode: rw16, space codec_reg, reset 0xff; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_CLOCK3_MODE_OFFSET                    0x16u /* established */
#define AD1843_CLOCK3_MODE_C3REF_SHIFT               15 /* established */
#define AD1843_CLOCK3_MODE_C3REF_MASK                0x1u
#define AD1843_CLOCK3_MODE_C3REF_INPLACE (AD1843_CLOCK3_MODE_C3REF_MASK << AD1843_CLOCK3_MODE_C3REF_SHIFT)
#define AD1843_CLOCK3_MODE_C3VID_SHIFT               14 /* established */
#define AD1843_CLOCK3_MODE_C3VID_MASK                0x1u
#define AD1843_CLOCK3_MODE_C3VID_INPLACE (AD1843_CLOCK3_MODE_C3VID_MASK << AD1843_CLOCK3_MODE_C3VID_SHIFT)
#define AD1843_CLOCK3_MODE_C3PLLG_SHIFT              13 /* established */
#define AD1843_CLOCK3_MODE_C3PLLG_MASK               0x1u
#define AD1843_CLOCK3_MODE_C3PLLG_INPLACE (AD1843_CLOCK3_MODE_C3PLLG_MASK << AD1843_CLOCK3_MODE_C3PLLG_SHIFT)
#define AD1843_CLOCK3_MODE_C3P200_SHIFT              12 /* established */
#define AD1843_CLOCK3_MODE_C3P200_MASK               0x1u
#define AD1843_CLOCK3_MODE_C3P200_INPLACE (AD1843_CLOCK3_MODE_C3P200_MASK << AD1843_CLOCK3_MODE_C3P200_SHIFT)
#define AD1843_CLOCK3_MODE_C3X8_7_SHIFT              11 /* established */
#define AD1843_CLOCK3_MODE_C3X8_7_MASK               0x1u
#define AD1843_CLOCK3_MODE_C3X8_7_INPLACE (AD1843_CLOCK3_MODE_C3X8_7_MASK << AD1843_CLOCK3_MODE_C3X8_7_SHIFT)
#define AD1843_CLOCK3_MODE_C3C128_SHIFT              10 /* established */
#define AD1843_CLOCK3_MODE_C3C128_MASK               0x1u
#define AD1843_CLOCK3_MODE_C3C128_INPLACE (AD1843_CLOCK3_MODE_C3C128_MASK << AD1843_CLOCK3_MODE_C3C128_SHIFT)
#define AD1843_CLOCK3_MODE_C3M_7_4_SHIFT             4 /* established */
#define AD1843_CLOCK3_MODE_C3M_7_4_MASK              0xfu
#define AD1843_CLOCK3_MODE_C3M_7_4_INPLACE (AD1843_CLOCK3_MODE_C3M_7_4_MASK << AD1843_CLOCK3_MODE_C3M_7_4_SHIFT)
#define AD1843_CLOCK3_MODE_C3M_3_0_SHIFT             0 /* established */
#define AD1843_CLOCK3_MODE_C3M_3_0_MASK              0xfu
#define AD1843_CLOCK3_MODE_C3M_3_0_INPLACE (AD1843_CLOCK3_MODE_C3M_3_0_MASK << AD1843_CLOCK3_MODE_C3M_3_0_SHIFT)

/*
 * Nominal rate of generator 3 in Hz. Reset is 48000 (established, register
 * pages 28-50).
 */
/* clock3_hz: rw16, space codec_reg, reset 0xbb80; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_CLOCK3_HZ_OFFSET                      0x17u /* established */
#define AD1843_CLOCK3_HZ_C3C_SHIFT                   0 /* established */
#define AD1843_CLOCK3_HZ_C3C_MASK                    0xffffu
#define AD1843_CLOCK3_HZ_C3C_INPLACE (AD1843_CLOCK3_HZ_C3C_MASK << AD1843_CLOCK3_HZ_C3C_SHIFT)

/*
 * Phase work for generator 3, same units and direction rule as clock1_phase
 * (established, register pages 39, 42 and 45).
 */
/* clock3_phase: rw16, space codec_reg, reset 0x0; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_CLOCK3_PHASE_OFFSET                   0x18u /* established */
#define AD1843_CLOCK3_PHASE_C3PD_SHIFT               8 /* established */
#define AD1843_CLOCK3_PHASE_C3PD_MASK                0x1u
#define AD1843_CLOCK3_PHASE_C3PD_INPLACE (AD1843_CLOCK3_PHASE_C3PD_MASK << AD1843_CLOCK3_PHASE_C3PD_SHIFT)
#define AD1843_CLOCK3_PHASE_C3P_SHIFT                0 /* established */
#define AD1843_CLOCK3_PHASE_C3P_MASK                 0xffu
#define AD1843_CLOCK3_PHASE_C3P_INPLACE (AD1843_CLOCK3_PHASE_C3P_MASK << AD1843_CLOCK3_PHASE_C3P_SHIFT)

/*
 * Digital ADC source, resample filter and DAC mix mode. The resample filter and
 * DAC mix mode change only while the converters they affect are off
 * (established, register pages 28-50 and the constraints text).
 */
/* digital_filter: rw16, space codec_reg, reset 0x0; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_DIGITAL_FILTER_OFFSET                 0x19u /* established */
#define AD1843_DIGITAL_FILTER_DRSFLT_SHIFT           15 /* established */
#define AD1843_DIGITAL_FILTER_DRSFLT_MASK            0x1u
#define AD1843_DIGITAL_FILTER_DRSFLT_INPLACE (AD1843_DIGITAL_FILTER_DRSFLT_MASK << AD1843_DIGITAL_FILTER_DRSFLT_SHIFT)
#define AD1843_DIGITAL_FILTER_DAMIX_SHIFT            14 /* established */
#define AD1843_DIGITAL_FILTER_DAMIX_MASK             0x1u
#define AD1843_DIGITAL_FILTER_DAMIX_INPLACE (AD1843_DIGITAL_FILTER_DAMIX_MASK << AD1843_DIGITAL_FILTER_DAMIX_SHIFT)
#define AD1843_DIGITAL_FILTER_DA2FLT_SHIFT           9 /* established */
#define AD1843_DIGITAL_FILTER_DA2FLT_MASK            0x1u
#define AD1843_DIGITAL_FILTER_DA2FLT_INPLACE (AD1843_DIGITAL_FILTER_DA2FLT_MASK << AD1843_DIGITAL_FILTER_DA2FLT_SHIFT)
#define AD1843_DIGITAL_FILTER_DA1FLT_SHIFT           8 /* established */
#define AD1843_DIGITAL_FILTER_DA1FLT_MASK            0x1u
#define AD1843_DIGITAL_FILTER_DA1FLT_INPLACE (AD1843_DIGITAL_FILTER_DA1FLT_MASK << AD1843_DIGITAL_FILTER_DA1FLT_SHIFT)
#define AD1843_DIGITAL_FILTER_DAADR_SHIFT            6 /* established */
#define AD1843_DIGITAL_FILTER_DAADR_MASK             0x3u
#define AD1843_DIGITAL_FILTER_DAADR_INPLACE (AD1843_DIGITAL_FILTER_DAADR_MASK << AD1843_DIGITAL_FILTER_DAADR_SHIFT)
#define AD1843_DIGITAL_FILTER_DAADL_SHIFT            4 /* established */
#define AD1843_DIGITAL_FILTER_DAADL_MASK             0x3u
#define AD1843_DIGITAL_FILTER_DAADL_INPLACE (AD1843_DIGITAL_FILTER_DAADL_MASK << AD1843_DIGITAL_FILTER_DAADL_SHIFT)
#define AD1843_DIGITAL_FILTER_ADRFLT_SHIFT           1 /* established */
#define AD1843_DIGITAL_FILTER_ADRFLT_MASK            0x1u
#define AD1843_DIGITAL_FILTER_ADRFLT_INPLACE (AD1843_DIGITAL_FILTER_ADRFLT_MASK << AD1843_DIGITAL_FILTER_ADRFLT_SHIFT)
#define AD1843_DIGITAL_FILTER_ADLFLT_SHIFT           0 /* established */
#define AD1843_DIGITAL_FILTER_ADLFLT_MASK            0x1u
#define AD1843_DIGITAL_FILTER_ADLFLT_INPLACE (AD1843_DIGITAL_FILTER_ADLFLT_MASK << AD1843_DIGITAL_FILTER_ADLFLT_SHIFT)

/*
 * Sample format, mono mode, the frame-rate and SDFS options and the ADC lock.
 * Bits 7 to 5 are the SCF, FRS and FRST controls (established, register pages
 * 28-50 and the serial-frame section).
 */
/* format_lock: rw16, space codec_reg, reset 0x0; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_FORMAT_LOCK_OFFSET                    0x1au /* established */
#define AD1843_FORMAT_LOCK_DA2SM_SHIFT               15 /* established */
#define AD1843_FORMAT_LOCK_DA2SM_MASK                0x1u
#define AD1843_FORMAT_LOCK_DA2SM_INPLACE (AD1843_FORMAT_LOCK_DA2SM_MASK << AD1843_FORMAT_LOCK_DA2SM_SHIFT)
#define AD1843_FORMAT_LOCK_DA1SM_SHIFT               14 /* established */
#define AD1843_FORMAT_LOCK_DA1SM_MASK                0x1u
#define AD1843_FORMAT_LOCK_DA1SM_INPLACE (AD1843_FORMAT_LOCK_DA1SM_MASK << AD1843_FORMAT_LOCK_DA1SM_SHIFT)
#define AD1843_FORMAT_LOCK_DA2F_SHIFT                10 /* established */
#define AD1843_FORMAT_LOCK_DA2F_MASK                 0x3u
#define AD1843_FORMAT_LOCK_DA2F_INPLACE (AD1843_FORMAT_LOCK_DA2F_MASK << AD1843_FORMAT_LOCK_DA2F_SHIFT)
#define AD1843_FORMAT_LOCK_DA1F_SHIFT                8 /* established */
#define AD1843_FORMAT_LOCK_DA1F_MASK                 0x3u
#define AD1843_FORMAT_LOCK_DA1F_INPLACE (AD1843_FORMAT_LOCK_DA1F_MASK << AD1843_FORMAT_LOCK_DA1F_SHIFT)
#define AD1843_FORMAT_LOCK_SCF_SHIFT                 7 /* established */
#define AD1843_FORMAT_LOCK_SCF_MASK                  0x1u
#define AD1843_FORMAT_LOCK_SCF_INPLACE (AD1843_FORMAT_LOCK_SCF_MASK << AD1843_FORMAT_LOCK_SCF_SHIFT)
#define AD1843_FORMAT_LOCK_FRS_SHIFT                 6 /* established */
#define AD1843_FORMAT_LOCK_FRS_MASK                  0x1u
#define AD1843_FORMAT_LOCK_FRS_INPLACE (AD1843_FORMAT_LOCK_FRS_MASK << AD1843_FORMAT_LOCK_FRS_SHIFT)
#define AD1843_FORMAT_LOCK_FRST_SHIFT                5 /* established */
#define AD1843_FORMAT_LOCK_FRST_MASK                 0x1u
#define AD1843_FORMAT_LOCK_FRST_INPLACE (AD1843_FORMAT_LOCK_FRST_MASK << AD1843_FORMAT_LOCK_FRST_SHIFT)
#define AD1843_FORMAT_LOCK_ADTLK_SHIFT               4 /* established */
#define AD1843_FORMAT_LOCK_ADTLK_MASK                0x1u
#define AD1843_FORMAT_LOCK_ADTLK_INPLACE (AD1843_FORMAT_LOCK_ADTLK_MASK << AD1843_FORMAT_LOCK_ADTLK_SHIFT)
#define AD1843_FORMAT_LOCK_ADRF_SHIFT                2 /* established */
#define AD1843_FORMAT_LOCK_ADRF_MASK                 0x3u
#define AD1843_FORMAT_LOCK_ADRF_INPLACE (AD1843_FORMAT_LOCK_ADRF_MASK << AD1843_FORMAT_LOCK_ADRF_SHIFT)
#define AD1843_FORMAT_LOCK_ADLF_SHIFT                0 /* established */
#define AD1843_FORMAT_LOCK_ADLF_MASK                 0x3u
#define AD1843_FORMAT_LOCK_ADLF_INPLACE (AD1843_FORMAT_LOCK_ADLF_MASK << AD1843_FORMAT_LOCK_ADLF_SHIFT)

/*
 * Power and enable bits for the converters, ADCs, analog paths and headphone
 * output. Registers 1 to 15, 25 and 27 are held at reset while converter
 * power-down is set (established, register pages 28-50).
 */
/* enables: rw16, space codec_reg, reset 0xc0; Analog Devices AD1843 Serial-Port
 * 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and the register
 * summary on page 52. Every register layout and reset value was checked against
 * those pages. */
#define AD1843_ENABLES_OFFSET                        0x1bu /* established */
#define AD1843_ENABLES_DFREE_SHIFT                   15 /* established */
#define AD1843_ENABLES_DFREE_MASK                    0x1u
#define AD1843_ENABLES_DFREE_INPLACE (AD1843_ENABLES_DFREE_MASK << AD1843_ENABLES_DFREE_SHIFT)
#define AD1843_ENABLES_DDMEN_SHIFT                   12 /* established */
#define AD1843_ENABLES_DDMEN_MASK                    0x1u
#define AD1843_ENABLES_DDMEN_INPLACE (AD1843_ENABLES_DDMEN_MASK << AD1843_ENABLES_DDMEN_SHIFT)
#define AD1843_ENABLES_DA2EN_SHIFT                   9 /* established */
#define AD1843_ENABLES_DA2EN_MASK                    0x1u
#define AD1843_ENABLES_DA2EN_INPLACE (AD1843_ENABLES_DA2EN_MASK << AD1843_ENABLES_DA2EN_SHIFT)
#define AD1843_ENABLES_DA1EN_SHIFT                   8 /* established */
#define AD1843_ENABLES_DA1EN_MASK                    0x1u
#define AD1843_ENABLES_DA1EN_INPLACE (AD1843_ENABLES_DA1EN_MASK << AD1843_ENABLES_DA1EN_SHIFT)
#define AD1843_ENABLES_ANAEN_SHIFT                   7 /* established */
#define AD1843_ENABLES_ANAEN_MASK                    0x1u
#define AD1843_ENABLES_ANAEN_INPLACE (AD1843_ENABLES_ANAEN_MASK << AD1843_ENABLES_ANAEN_SHIFT)
#define AD1843_ENABLES_HPEN_SHIFT                    6 /* established */
#define AD1843_ENABLES_HPEN_MASK                     0x1u
#define AD1843_ENABLES_HPEN_INPLACE (AD1843_ENABLES_HPEN_MASK << AD1843_ENABLES_HPEN_SHIFT)
#define AD1843_ENABLES_AAMEN_SHIFT                   4 /* established */
#define AD1843_ENABLES_AAMEN_MASK                    0x1u
#define AD1843_ENABLES_AAMEN_INPLACE (AD1843_ENABLES_AAMEN_MASK << AD1843_ENABLES_AAMEN_SHIFT)
#define AD1843_ENABLES_ADREN_SHIFT                   1 /* established */
#define AD1843_ENABLES_ADREN_MASK                    0x1u
#define AD1843_ENABLES_ADREN_INPLACE (AD1843_ENABLES_ADREN_MASK << AD1843_ENABLES_ADREN_SHIFT)
#define AD1843_ENABLES_ADLEN_SHIFT                   0 /* established */
#define AD1843_ENABLES_ADLEN_MASK                    0x1u
#define AD1843_ENABLES_ADLEN_INPLACE (AD1843_ENABLES_ADLEN_MASK << AD1843_ENABLES_ADLEN_SHIFT)

/*
 * Converter power, auto-calibration, generator enables, clock output and the
 * line input modes. Bit 15 is PDNI, which resets to 1. Clearing it starts
 * converter startup. Auto-calibration cannot be cleared before the first
 * completed startup (established, register pages 28-50 and the initialisation
 * text).
 */
/* power_clock: rw16, space codec_reg, reset 0xc400; Analog Devices AD1843
 * Serial-Port 16-Bit SoundComm Codec, REV.0 (1996): register pages 28-50 and
 * the register summary on page 52. Every register layout and reset value was
 * checked against those pages. */
#define AD1843_POWER_CLOCK_OFFSET                    0x1cu /* established */
#define AD1843_POWER_CLOCK_PDNI_SHIFT                15 /* established */
#define AD1843_POWER_CLOCK_PDNI_MASK                 0x1u
#define AD1843_POWER_CLOCK_PDNI_INPLACE (AD1843_POWER_CLOCK_PDNI_MASK << AD1843_POWER_CLOCK_PDNI_SHIFT)
#define AD1843_POWER_CLOCK_ACEN_SHIFT                14 /* established */
#define AD1843_POWER_CLOCK_ACEN_MASK                 0x1u
#define AD1843_POWER_CLOCK_ACEN_INPLACE (AD1843_POWER_CLOCK_ACEN_MASK << AD1843_POWER_CLOCK_ACEN_SHIFT)
#define AD1843_POWER_CLOCK_C3EN_SHIFT                13 /* established */
#define AD1843_POWER_CLOCK_C3EN_MASK                 0x1u
#define AD1843_POWER_CLOCK_C3EN_INPLACE (AD1843_POWER_CLOCK_C3EN_MASK << AD1843_POWER_CLOCK_C3EN_SHIFT)
#define AD1843_POWER_CLOCK_C2EN_SHIFT                12 /* established */
#define AD1843_POWER_CLOCK_C2EN_MASK                 0x1u
#define AD1843_POWER_CLOCK_C2EN_INPLACE (AD1843_POWER_CLOCK_C2EN_MASK << AD1843_POWER_CLOCK_C2EN_SHIFT)
#define AD1843_POWER_CLOCK_C1EN_SHIFT                11 /* established */
#define AD1843_POWER_CLOCK_C1EN_MASK                 0x1u
#define AD1843_POWER_CLOCK_C1EN_INPLACE (AD1843_POWER_CLOCK_C1EN_MASK << AD1843_POWER_CLOCK_C1EN_SHIFT)
#define AD1843_POWER_CLOCK_ENCLKO_SHIFT              10 /* established */
#define AD1843_POWER_CLOCK_ENCLKO_MASK               0x1u
#define AD1843_POWER_CLOCK_ENCLKO_INPLACE (AD1843_POWER_CLOCK_ENCLKO_MASK << AD1843_POWER_CLOCK_ENCLKO_SHIFT)
#define AD1843_POWER_CLOCK_XCTL_SHIFT                8 /* established */
#define AD1843_POWER_CLOCK_XCTL_MASK                 0x3u
#define AD1843_POWER_CLOCK_XCTL_INPLACE (AD1843_POWER_CLOCK_XCTL_MASK << AD1843_POWER_CLOCK_XCTL_SHIFT)
#define AD1843_POWER_CLOCK_ENCV3_SHIFT               7 /* established */
#define AD1843_POWER_CLOCK_ENCV3_MASK                0x1u
#define AD1843_POWER_CLOCK_ENCV3_INPLACE (AD1843_POWER_CLOCK_ENCV3_MASK << AD1843_POWER_CLOCK_ENCV3_SHIFT)
#define AD1843_POWER_CLOCK_ENBT3_SHIFT               6 /* established */
#define AD1843_POWER_CLOCK_ENBT3_MASK                0x1u
#define AD1843_POWER_CLOCK_ENBT3_INPLACE (AD1843_POWER_CLOCK_ENBT3_MASK << AD1843_POWER_CLOCK_ENBT3_SHIFT)
#define AD1843_POWER_CLOCK_ENCV2_SHIFT               5 /* established */
#define AD1843_POWER_CLOCK_ENCV2_MASK                0x1u
#define AD1843_POWER_CLOCK_ENCV2_INPLACE (AD1843_POWER_CLOCK_ENCV2_MASK << AD1843_POWER_CLOCK_ENCV2_SHIFT)
#define AD1843_POWER_CLOCK_ENBT2_SHIFT               4 /* established */
#define AD1843_POWER_CLOCK_ENBT2_MASK                0x1u
#define AD1843_POWER_CLOCK_ENBT2_INPLACE (AD1843_POWER_CLOCK_ENBT2_MASK << AD1843_POWER_CLOCK_ENBT2_SHIFT)
#define AD1843_POWER_CLOCK_ENCV1_SHIFT               3 /* established */
#define AD1843_POWER_CLOCK_ENCV1_MASK                0x1u
#define AD1843_POWER_CLOCK_ENCV1_INPLACE (AD1843_POWER_CLOCK_ENCV1_MASK << AD1843_POWER_CLOCK_ENCV1_SHIFT)
#define AD1843_POWER_CLOCK_ENBT1_SHIFT               2 /* established */
#define AD1843_POWER_CLOCK_ENBT1_MASK                0x1u
#define AD1843_POWER_CLOCK_ENBT1_INPLACE (AD1843_POWER_CLOCK_ENBT1_MASK << AD1843_POWER_CLOCK_ENBT1_SHIFT)
#define AD1843_POWER_CLOCK_LINRSD_SHIFT              1 /* established */
#define AD1843_POWER_CLOCK_LINRSD_MASK               0x1u
#define AD1843_POWER_CLOCK_LINRSD_INPLACE (AD1843_POWER_CLOCK_LINRSD_MASK << AD1843_POWER_CLOCK_LINRSD_SHIFT)
#define AD1843_POWER_CLOCK_LINLSD_SHIFT              0 /* established */
#define AD1843_POWER_CLOCK_LINLSD_MASK               0x1u
#define AD1843_POWER_CLOCK_LINLSD_INPLACE (AD1843_POWER_CLOCK_LINLSD_MASK << AD1843_POWER_CLOCK_LINLSD_SHIFT)

#endif /* AD1843_GEN_H */
