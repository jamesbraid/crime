/*
 * MACE_VIDEO_DECODE.h - O2 MACE video chip-level configuration
 *
 * Publish-safe register contract for the one MACE video register that belongs
 * to neither the input nor the output channels: the video hardware
 * configuration word. Its offset is from the start of the video output
 * channel register window. The word is 64 bits wide because the chip revision
 * sits in bits 35:32; shipped software reads it with a 64-bit access.
 *
 * Grammar (one annotation per comment line, do not reformat):
 *   REG: <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>     a register field
 *   ENUM: <target> <value> <label> <grade>
 *
 * Derivation. The layout is the video hardware configuration table of the
 * published MACE 2.0 specification. Shipped video software sets and clears
 * the reset, source, precision, correction, count and output-pin bits as the
 * table says and reads the revision code from bits 35:32, which agrees with
 * the table. The meaning of each source and count field outside those uses
 * is the specification's wording.
 */
#ifndef MACE_VIDEO_DECODE_H
#define MACE_VIDEO_DECODE_H

#include <stdint.h>

/* REG: VOUT.vhw_cfg 0x0058 rw64 reset=unknown established */
/* FIELD: VOUT.vhw_cfg.port_ab_reset 0:0 established */
#define VOUT_VHW_CFG_PORT_AB_RESET_SHIFT 0
#define VOUT_VHW_CFG_PORT_AB_RESET_MASK  0x1u
/* FIELD: VOUT.vhw_cfg.port_ab_select 1:1 established */
#define VOUT_VHW_CFG_PORT_AB_SELECT_SHIFT 1
#define VOUT_VHW_CFG_PORT_AB_SELECT_MASK  0x1u
/* FIELD: VOUT.vhw_cfg.port_cd_reset 2:2 established */
#define VOUT_VHW_CFG_PORT_CD_RESET_SHIFT 2
#define VOUT_VHW_CFG_PORT_CD_RESET_MASK  0x1u
/* FIELD: VOUT.vhw_cfg.port_cd_select 3:3 established */
#define VOUT_VHW_CFG_PORT_CD_SELECT_SHIFT 3
#define VOUT_VHW_CFG_PORT_CD_SELECT_MASK  0x1u
/* FIELD: VOUT.vhw_cfg.audio_sync_reset 4:4 established */
#define VOUT_VHW_CFG_AUDIO_SYNC_RESET_SHIFT 4
#define VOUT_VHW_CFG_AUDIO_SYNC_RESET_MASK  0x1u
/* FIELD: VOUT.vhw_cfg.audio_sync_source 6:5 established */
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_SHIFT 5
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_MASK  0x3u
/* FIELD: VOUT.vhw_cfg.audio_sync_precision 7:7 established */
#define VOUT_VHW_CFG_AUDIO_SYNC_PRECISION_SHIFT 7
#define VOUT_VHW_CFG_AUDIO_SYNC_PRECISION_MASK  0x1u
/* FIELD: VOUT.vhw_cfg.audio_sync_ecc 8:8 established */
#define VOUT_VHW_CFG_AUDIO_SYNC_ECC_SHIFT 8
#define VOUT_VHW_CFG_AUDIO_SYNC_ECC_MASK  0x1u
/* FIELD: VOUT.vhw_cfg.gbe_framelock_reset 9:9 established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_RESET_SHIFT 9
#define VOUT_VHW_CFG_GBE_FRAMELOCK_RESET_MASK  0x1u
/* FIELD: VOUT.vhw_cfg.gbe_framelock_source 11:10 established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_SHIFT 10
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_MASK  0x3u
/* FIELD: VOUT.vhw_cfg.gbe_framelock_precision 12:12 established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_PRECISION_SHIFT 12
#define VOUT_VHW_CFG_GBE_FRAMELOCK_PRECISION_MASK  0x1u
/* FIELD: VOUT.vhw_cfg.gbe_framelock_ecc 13:13 established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_ECC_SHIFT 13
#define VOUT_VHW_CFG_GBE_FRAMELOCK_ECC_MASK  0x1u
/* FIELD: VOUT.vhw_cfg.sof_count_odd 17:14 established */
#define VOUT_VHW_CFG_SOF_COUNT_ODD_SHIFT 14
#define VOUT_VHW_CFG_SOF_COUNT_ODD_MASK  0xfu
/* FIELD: VOUT.vhw_cfg.gpibo 18:18 established */
#define VOUT_VHW_CFG_GPIBO_SHIFT 18
#define VOUT_VHW_CFG_GPIBO_MASK  0x1u
/* FIELD: VOUT.vhw_cfg.sof_count_even 22:19 established */
#define VOUT_VHW_CFG_SOF_COUNT_EVEN_SHIFT 19
#define VOUT_VHW_CFG_SOF_COUNT_EVEN_MASK  0xfu
/* FIELD: VOUT.vhw_cfg.revision 35:32 established */
#define VOUT_VHW_CFG_REVISION_SHIFT 32
#define VOUT_VHW_CFG_REVISION_MASK  0xfull
/* Reset fields: 0 holds the circuit in reset, 1 enables it. Select fields: AB 0 analog decoder and 1 primary D1 port; CD 0 camera and 1 secondary D1 port. */
/* ENUM: VOUT.vhw_cfg.audio_sync_source 0 none established */
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_NONE 0
/* ENUM: VOUT.vhw_cfg.audio_sync_source 1 external established */
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_EXTERNAL 1
/* ENUM: VOUT.vhw_cfg.audio_sync_source 2 port_ab established */
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_PORT_AB 2
/* ENUM: VOUT.vhw_cfg.audio_sync_source 3 port_cd established */
#define VOUT_VHW_CFG_AUDIO_SYNC_SOURCE_PORT_CD 3
/* ENUM: VOUT.vhw_cfg.gbe_framelock_source 0 output_ef established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_OUTPUT_EF 0
/* ENUM: VOUT.vhw_cfg.gbe_framelock_source 1 external established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_EXTERNAL 1
/* ENUM: VOUT.vhw_cfg.gbe_framelock_source 2 port_ab established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_PORT_AB 2
/* ENUM: VOUT.vhw_cfg.gbe_framelock_source 3 port_cd established */
#define VOUT_VHW_CFG_GBE_FRAMELOCK_SOURCE_PORT_CD 3

#endif /* MACE_VIDEO_DECODE_H */
