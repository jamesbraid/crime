/* generated from devices/vice/registers.toml by defs-gen - do not edit, change
 * the source */
/* SPDX-License-Identifier: BSD-3-Clause */
/* defs-gen 5 */
/* input sha256 531a15113af2c834f84b093118e096274948ae8d18d527fe6d6aa066db1c0a2b */
/* O2 VICE imaging and compression engine registers */
/* Names are VICE_*; name source: ours. */
#ifndef HW_VICE_REGS_H
#define HW_VICE_REGS_H

#include "hw/core/registerfields.h"

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG8(VICE_ID, 0x8)
#define VICE_ID_RESET 0xe1u /* established */
FIELD(VICE_ID, REVISION, 0, 4) /* established */
#define VICE_ID_REVISION_VICE_A 1 /* established */
#define VICE_ID_REVISION_VICE_B 2 /* established */
#define VICE_ID_REVISION_VICE_C 3 /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_HST_BSP_IN_BOX, 0x28)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_HST_BSP_OUT_BOX, 0x30)

REG32(VICE_MSP_CTL_STAT, 0x40) /* established */
#define VICE_MSP_CTL_STAT_RESET 0x0u /* established */
FIELD(VICE_MSP_CTL_STAT, RESET_RELEASE, 1, 1) /* established */
FIELD(VICE_MSP_CTL_STAT, GO, 0, 1) /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_MSP_EXCP_FLAG, 0x48)
#define VICE_MSP_EXCP_FLAG_RESET 0x0u /* established */
FIELD(VICE_MSP_EXCP_FLAG, ADEI, 7, 1) /* established */
FIELD(VICE_MSP_EXCP_FLAG, CON, 6, 1) /* established */
FIELD(VICE_MSP_EXCP_FLAG, VURI, 5, 1) /* established */
FIELD(VICE_MSP_EXCP_FLAG, SURI, 4, 1) /* established */
FIELD(VICE_MSP_EXCP_FLAG, WP, 3, 1) /* established */
FIELD(VICE_MSP_EXCP_FLAG, BP, 2, 1) /* established */
FIELD(VICE_MSP_EXCP_FLAG, ADES, 1, 1) /* established */
FIELD(VICE_MSP_EXCP_FLAG, ADEL, 0, 1) /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_MSP_PC, 0x50)
FIELD(VICE_MSP_PC, PC, 2, 14) /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_MSP_BAD_ADDR, 0x58)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_MSP_WATCHPOINT, 0x60)
#define VICE_MSP_WATCHPOINT_RESET 0x0u /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_MSP_EPC, 0x68)
FIELD(VICE_MSP_EPC, PC, 2, 14) /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_MSP_CAUSE, 0x70)
FIELD(VICE_MSP_CAUSE, BRANCH_DELAY, 31, 1) /* established */
FIELD(VICE_MSP_CAUSE, CODE, 2, 5) /* established */
#define VICE_MSP_CAUSE_CODE_ADEL 0 /* established */
#define VICE_MSP_CAUSE_CODE_ADES 1 /* established */
#define VICE_MSP_CAUSE_CODE_BP 2 /* established */
#define VICE_MSP_CAUSE_CODE_WP 3 /* established */
#define VICE_MSP_CAUSE_CODE_SURI 4 /* established */
#define VICE_MSP_CAUSE_CODE_VURI 5 /* established */
#define VICE_MSP_CAUSE_CODE_CON 6 /* established */
#define VICE_MSP_CAUSE_CODE_ADEI 7 /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_RPAGE, 0x78)

REG32(VICE_BSP_SW_INT, 0x80) /* inferred */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_MSP_D_RAM, 0x100)
#define VICE_MSP_D_RAM_RESET 0x0u /* established */
FIELD(VICE_MSP_D_RAM, BANK_C, 2, 1) /* established */
FIELD(VICE_MSP_D_RAM, BANK_B, 1, 1) /* established */
FIELD(VICE_MSP_D_RAM, BANK_A, 0, 1) /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_MSP_COUNT, 0x108)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_CTL_STAT, 0x110)
FIELD(VICE_BSP_CTL_STAT, FLAGS, 12, 4) /* established */
FIELD(VICE_BSP_CTL_STAT, EXT, 9, 3) /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_WATCHPOINT, 0x118)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_BSP_IN_COUNT, 0x120)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_BSP_OUT_COUNT, 0x128)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_PC, 0x140)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_EPC, 0x148)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_HALT_RESET, 0x150)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_CAUSE, 0x158)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_INT, 0x160)

REG16(VICE_BSP_FIFO_CTL_STAT, 0x168) /* established */
FIELD(VICE_BSP_FIFO_CTL_STAT, BSP_SIGNAL, 4, 1) /* established */
FIELD(VICE_BSP_FIFO_CTL_STAT, MSP_SIGNAL, 3, 1) /* established */
FIELD(VICE_BSP_FIFO_CTL_STAT, IN_RESET, 2, 1) /* established */
FIELD(VICE_BSP_FIFO_CTL_STAT, IN_FULL, 1, 1) /* established */
FIELD(VICE_BSP_FIFO_CTL_STAT, IN_EMPTY, 0, 1) /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_AVALID_BITS, 0x170)
FIELD(VICE_BSP_AVALID_BITS, POINTER, 0, 6) /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_FVALID_BITS, 0x178)
FIELD(VICE_BSP_FVALID_BITS, POINTER, 0, 6) /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_CTL_CH1, 0x180)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_STAT_CH1, 0x188)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_DATA_CH1, 0x190)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_DMA_MEM_PT_CH1, 0x198)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VICE_PT_CH1, 0x1a0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_COUNT_CH1, 0x1a8)

REG32(VICE_MSP_SW_INT, 0x1b8) /* inferred */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_CTL_CH2, 0x1c0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_STAT_CH2, 0x1c8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_DATA_CH2, 0x1d0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_DMA_MEM_PT_CH2, 0x1d8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VICE_PT_CH2, 0x1e0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_COUNT_CH2, 0x1e8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_IN_BOX, 0x1f0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_OUT_BOX, 0x1f8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_CTL_CH1_D1, 0x1000)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_HI_CH1_D1, 0x1008)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_LO_CH1_D1, 0x1010)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_WIDTH_CH1_D1, 0x1018)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_STRIDE_CH1_D1, 0x1020)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_LINES_CH1_D1, 0x1028)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_Y_CH1_D1, 0x1030)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_C_CH1_D1, 0x1038)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_CTL_CH1_D2, 0x1040)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_HI_CH1_D2, 0x1048)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_LO_CH1_D2, 0x1050)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_WIDTH_CH1_D2, 0x1058)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_STRIDE_CH1_D2, 0x1060)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_LINES_CH1_D2, 0x1068)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_Y_CH1_D2, 0x1070)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_C_CH1_D2, 0x1078)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_CTL_CH1_D3, 0x1080)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_HI_CH1_D3, 0x1088)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_LO_CH1_D3, 0x1090)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_WIDTH_CH1_D3, 0x1098)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_STRIDE_CH1_D3, 0x10a0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_LINES_CH1_D3, 0x10a8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_Y_CH1_D3, 0x10b0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_C_CH1_D3, 0x10b8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_CTL_CH1_D4, 0x10c0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_HI_CH1_D4, 0x10c8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_LO_CH1_D4, 0x10d0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_WIDTH_CH1_D4, 0x10d8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_STRIDE_CH1_D4, 0x10e0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_LINES_CH1_D4, 0x10e8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_Y_CH1_D4, 0x10f0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_C_CH1_D4, 0x10f8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_CTL_CH2_D1, 0x1100)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_HI_CH2_D1, 0x1108)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_LO_CH2_D1, 0x1110)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_WIDTH_CH2_D1, 0x1118)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_STRIDE_CH2_D1, 0x1120)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_LINES_CH2_D1, 0x1128)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_Y_CH2_D1, 0x1130)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_C_CH2_D1, 0x1138)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_CTL_CH2_D2, 0x1140)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_HI_CH2_D2, 0x1148)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_LO_CH2_D2, 0x1150)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_WIDTH_CH2_D2, 0x1158)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_STRIDE_CH2_D2, 0x1160)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_LINES_CH2_D2, 0x1168)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_Y_CH2_D2, 0x1170)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_C_CH2_D2, 0x1178)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_CTL_CH2_D3, 0x1180)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_HI_CH2_D3, 0x1188)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_LO_CH2_D3, 0x1190)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_WIDTH_CH2_D3, 0x1198)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_STRIDE_CH2_D3, 0x11a0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_LINES_CH2_D3, 0x11a8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_Y_CH2_D3, 0x11b0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_C_CH2_D3, 0x11b8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_CTL_CH2_D4, 0x11c0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_HI_CH2_D4, 0x11c8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_SMEM_LO_CH2_D4, 0x11d0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_WIDTH_CH2_D4, 0x11d8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_STRIDE_CH2_D4, 0x11e0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_LINES_CH2_D4, 0x11e8)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_Y_CH2_D4, 0x11f0)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_DMA_VMEM_C_CH2_D4, 0x11f8)

REG32(VICE_MSP_I_RAM, 0x2000) /* inferred */
#define VICE_MSP_I_RAM_COUNT 1024
#define VICE_MSP_I_RAM_STRIDE 0x4

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_BSP_I_RAM, 0x4000)
#define VICE_BSP_I_RAM_COUNT 1024
#define VICE_BSP_I_RAM_STRIDE 0x2

REG32(VICE_TABLE_MEM, 0x5000) /* inferred */
#define VICE_TABLE_MEM_COUNT 1280
#define VICE_TABLE_MEM_STRIDE 0x4
FIELD(VICE_TABLE_MEM, VALUE, 0, 22) /* established */

REG16(VICE_BSP_OUT_BUF, 0x7000) /* inferred */
#define VICE_BSP_OUT_BUF_COUNT 1024
#define VICE_BSP_OUT_BUF_STRIDE 0x2

REG16(VICE_BSP_IN_BUF, 0x7800) /* inferred */
#define VICE_BSP_IN_BUF_COUNT 1024
#define VICE_BSP_IN_BUF_STRIDE 0x2

REG32(VICE_DATA_RAM_A, 0x8000) /* inferred */
#define VICE_DATA_RAM_A_COUNT 512
#define VICE_DATA_RAM_A_STRIDE 0x4

REG32(VICE_DATA_RAM_B, 0x8800) /* inferred */
#define VICE_DATA_RAM_B_COUNT 512
#define VICE_DATA_RAM_B_STRIDE 0x4

REG32(VICE_DATA_RAM_C, 0x9000) /* inferred */
#define VICE_DATA_RAM_C_COUNT 512
#define VICE_DATA_RAM_C_STRIDE 0x4

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_CFG, 0xe000)
FIELD(VICE_CFG, MSP_TLB_BYPASS, 1, 1) /* established */
FIELD(VICE_CFG, CHECK_DATA, 0, 1) /* established */

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_INT_RESET, 0xe008)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG16(VICE_INT_EN, 0xe010)

/* established; name source: public (VICE design specification 099-0123-003,
 * register address map summary (table 6) and DMA descriptor address map (table
 * 7)) */
REG32(VICE_TLB, 0xf000)

#define VICE_CAUSE_WIDTH 32 /* established; word */
FIELD(VICE_CAUSE, DMA2_ERROR, 8, 1) /* established */
FIELD(VICE_CAUSE, DMA2_DONE, 7, 1) /* established */
FIELD(VICE_CAUSE, BAD_DATA, 6, 1) /* established */
FIELD(VICE_CAUSE, BSP_EXCEPTION, 5, 1) /* established */
FIELD(VICE_CAUSE, BSP_SW, 4, 1) /* established */
FIELD(VICE_CAUSE, MSP_EXCEPTION, 3, 1) /* established */
FIELD(VICE_CAUSE, MSP_SW, 2, 1) /* established */
FIELD(VICE_CAUSE, DMA1_ERROR, 1, 1) /* established */
FIELD(VICE_CAUSE, DMA1_DONE, 0, 1) /* established */

#define VICE_DMACTL_WIDTH 32 /* established; word */
FIELD(VICE_DMACTL, FLUSH_BUF, 9, 1) /* established */
FIELD(VICE_DMACTL, TLB_BYPASS, 8, 1) /* established */
FIELD(VICE_DMACTL, DESCR_PT, 4, 4) /* established */
FIELD(VICE_DMACTL, RESET, 3, 1) /* established */
FIELD(VICE_DMACTL, STOP, 2, 1) /* established */
FIELD(VICE_DMACTL, IE, 1, 1) /* established */
FIELD(VICE_DMACTL, GO, 0, 1) /* established */

#define VICE_DMASTAT_WIDTH 32 /* established; word */
FIELD(VICE_DMASTAT, CODE, 8, 4) /* established */
FIELD(VICE_DMASTAT, DESCR_PT, 4, 4) /* established */
FIELD(VICE_DMASTAT, RW, 3, 1) /* established */
FIELD(VICE_DMASTAT, ACTIVE, 2, 1) /* established */
FIELD(VICE_DMASTAT, ERROR, 1, 1) /* established */
FIELD(VICE_DMASTAT, DONE, 0, 1) /* established */

#define VICE_DMA_DESC_CTL_WIDTH 16 /* established; word */
FIELD(VICE_DMA_DESC_CTL, HALT, 15, 1) /* established */
FIELD(VICE_DMA_DESC_CTL, SKIP, 14, 1) /* established */
FIELD(VICE_DMA_DESC_CTL, DIRECTION, 13, 1) /* established */
#define VICE_DMA_DESC_CTL_DIRECTION_WRITE 0 /* established */
#define VICE_DMA_DESC_CTL_DIRECTION_READ 1 /* established */
FIELD(VICE_DMA_DESC_CTL, FILL_SOURCE, 12, 1) /* established */
#define VICE_DMA_DESC_CTL_FILL_SOURCE_SYSTEM 0 /* established */
#define VICE_DMA_DESC_CTL_FILL_SOURCE_DATA_REGISTER 1 /* established */
FIELD(VICE_DMA_DESC_CTL, YC, 10, 2) /* established */
#define VICE_DMA_DESC_CTL_YC_BLOCK 0 /* established */
#define VICE_DMA_DESC_CTL_YC_SPLIT_420 1 /* established */
#define VICE_DMA_DESC_CTL_YC_SPLIT_422 2 /* established */
#define VICE_DMA_DESC_CTL_YC_Y_ONLY 3 /* established */
FIELD(VICE_DMA_DESC_CTL, LUMA_HALF, 8, 2) /* established */
FIELD(VICE_DMA_DESC_CTL, INTERLEAVE, 7, 1) /* established */
#define VICE_DMA_DESC_CTL_INTERLEAVE_BLOCK 0 /* established */
#define VICE_DMA_DESC_CTL_INTERLEAVE_INTERLEAVE 1 /* established */
FIELD(VICE_DMA_DESC_CTL, LOCATION, 4, 3) /* established */
#define VICE_DMA_DESC_CTL_LOCATION_RAM_A 0 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_RAM_B 1 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_RAM_C 2 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_MSP_I_RAM 3 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_BSP_I_RAM 4 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_BSP_TABLE 5 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_BSP_FIFO 6 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_TLB_RAM 7 /* established */
FIELD(VICE_DMA_DESC_CTL, HALF_PEL_ENABLE, 3, 1) /* established */
FIELD(VICE_DMA_DESC_CTL, CHROMA_ONLY, 2, 1) /* established */
FIELD(VICE_DMA_DESC_CTL, CHROMA_HALF, 0, 2) /* established */

#define VICE_MBOX_WIDTH 32 /* established; word */
FIELD(VICE_MBOX, SIGNAL, 15, 1) /* established */
FIELD(VICE_MBOX, MESSAGE, 0, 15) /* established */

#define VICE_TLB_ENTRY_WIDTH 32 /* established; word */
FIELD(VICE_TLB_ENTRY, PAGE, 16, 16) /* established */
FIELD(VICE_TLB_ENTRY, WRITABLE, 1, 1) /* established */
FIELD(VICE_TLB_ENTRY, VALID, 0, 1) /* established */

#endif /* HW_VICE_REGS_H */
