/* generated from defs/vice.toml by defs-gen - do not edit, change the source */
/* O2 VICE imaging and compression engine registers */
#ifndef VICE_GEN_H
#define VICE_GEN_H

#include <stdint.h>


/* id: r8, space vice, reset 0xe1; published VICE design specification */
#define VICE_ID_OFFSET                               0x8u /* established */
#define VICE_ID_REVISION_SHIFT                       0 /* established */
#define VICE_ID_REVISION_MASK                        0xfu
#define VICE_ID_REVISION_INPLACE                     (VICE_ID_REVISION_MASK << VICE_ID_REVISION_SHIFT)
#define VICE_ID_REVISION_VICE_A                      1 /* established */
#define VICE_ID_REVISION_VICE_B                      2 /* established */
#define VICE_ID_REVISION_VICE_C                      3 /* established */

/* hst_bsp_in_box: r16, space vice, reset unknown; published VICE design specification */
#define VICE_HST_BSP_IN_BOX_OFFSET                   0x28u /* established */

/* hst_bsp_out_box: r16, space vice, reset unknown; published VICE design specification */
#define VICE_HST_BSP_OUT_BOX_OFFSET                  0x30u /* established */

/* msp_ctl_stat: rw32, space vice, reset 0x0; published VICE design specification */
#define VICE_MSP_CTL_STAT_OFFSET                     0x40u /* established */
#define VICE_MSP_CTL_STAT_RESET_RELEASE_SHIFT        1 /* established */
#define VICE_MSP_CTL_STAT_RESET_RELEASE_MASK         0x1u
#define VICE_MSP_CTL_STAT_RESET_RELEASE_INPLACE      (VICE_MSP_CTL_STAT_RESET_RELEASE_MASK << VICE_MSP_CTL_STAT_RESET_RELEASE_SHIFT)
#define VICE_MSP_CTL_STAT_GO_SHIFT                   0 /* established */
#define VICE_MSP_CTL_STAT_GO_MASK                    0x1u
#define VICE_MSP_CTL_STAT_GO_INPLACE                 (VICE_MSP_CTL_STAT_GO_MASK << VICE_MSP_CTL_STAT_GO_SHIFT)

/* msp_excp_flag: rw32, space vice, reset 0x0; published VICE design specification */
#define VICE_MSP_EXCP_FLAG_OFFSET                    0x48u /* established */
#define VICE_MSP_EXCP_FLAG_ADEI_SHIFT                7 /* established */
#define VICE_MSP_EXCP_FLAG_ADEI_MASK                 0x1u
#define VICE_MSP_EXCP_FLAG_ADEI_INPLACE              (VICE_MSP_EXCP_FLAG_ADEI_MASK << VICE_MSP_EXCP_FLAG_ADEI_SHIFT)
#define VICE_MSP_EXCP_FLAG_CON_SHIFT                 6 /* established */
#define VICE_MSP_EXCP_FLAG_CON_MASK                  0x1u
#define VICE_MSP_EXCP_FLAG_CON_INPLACE               (VICE_MSP_EXCP_FLAG_CON_MASK << VICE_MSP_EXCP_FLAG_CON_SHIFT)
#define VICE_MSP_EXCP_FLAG_VURI_SHIFT                5 /* established */
#define VICE_MSP_EXCP_FLAG_VURI_MASK                 0x1u
#define VICE_MSP_EXCP_FLAG_VURI_INPLACE              (VICE_MSP_EXCP_FLAG_VURI_MASK << VICE_MSP_EXCP_FLAG_VURI_SHIFT)
#define VICE_MSP_EXCP_FLAG_SURI_SHIFT                4 /* established */
#define VICE_MSP_EXCP_FLAG_SURI_MASK                 0x1u
#define VICE_MSP_EXCP_FLAG_SURI_INPLACE              (VICE_MSP_EXCP_FLAG_SURI_MASK << VICE_MSP_EXCP_FLAG_SURI_SHIFT)
#define VICE_MSP_EXCP_FLAG_WP_SHIFT                  3 /* established */
#define VICE_MSP_EXCP_FLAG_WP_MASK                   0x1u
#define VICE_MSP_EXCP_FLAG_WP_INPLACE                (VICE_MSP_EXCP_FLAG_WP_MASK << VICE_MSP_EXCP_FLAG_WP_SHIFT)
#define VICE_MSP_EXCP_FLAG_BP_SHIFT                  2 /* established */
#define VICE_MSP_EXCP_FLAG_BP_MASK                   0x1u
#define VICE_MSP_EXCP_FLAG_BP_INPLACE                (VICE_MSP_EXCP_FLAG_BP_MASK << VICE_MSP_EXCP_FLAG_BP_SHIFT)
#define VICE_MSP_EXCP_FLAG_ADES_SHIFT                1 /* established */
#define VICE_MSP_EXCP_FLAG_ADES_MASK                 0x1u
#define VICE_MSP_EXCP_FLAG_ADES_INPLACE              (VICE_MSP_EXCP_FLAG_ADES_MASK << VICE_MSP_EXCP_FLAG_ADES_SHIFT)
#define VICE_MSP_EXCP_FLAG_ADEL_SHIFT                0 /* established */
#define VICE_MSP_EXCP_FLAG_ADEL_MASK                 0x1u
#define VICE_MSP_EXCP_FLAG_ADEL_INPLACE              (VICE_MSP_EXCP_FLAG_ADEL_MASK << VICE_MSP_EXCP_FLAG_ADEL_SHIFT)

/* msp_pc: rw32, space vice, reset unknown; published VICE design specification */
#define VICE_MSP_PC_OFFSET                           0x50u /* established */
#define VICE_MSP_PC_PC_SHIFT                         2 /* established */
#define VICE_MSP_PC_PC_MASK                          0x3fffu
#define VICE_MSP_PC_PC_INPLACE                       (VICE_MSP_PC_PC_MASK << VICE_MSP_PC_PC_SHIFT)

/* msp_bad_addr: r32, space vice, reset unknown; published VICE design specification */
#define VICE_MSP_BAD_ADDR_OFFSET                     0x58u /* established */

/* msp_watchpoint: rw32, space vice, reset 0x0; published VICE design specification */
#define VICE_MSP_WATCHPOINT_OFFSET                   0x60u /* established */

/* msp_epc: r32, space vice, reset unknown; published VICE design specification */
#define VICE_MSP_EPC_OFFSET                          0x68u /* established */
#define VICE_MSP_EPC_PC_SHIFT                        2 /* established */
#define VICE_MSP_EPC_PC_MASK                         0x3fffu
#define VICE_MSP_EPC_PC_INPLACE                      (VICE_MSP_EPC_PC_MASK << VICE_MSP_EPC_PC_SHIFT)

/* msp_cause: r32, space vice, reset unknown; published VICE design specification */
#define VICE_MSP_CAUSE_OFFSET                        0x70u /* established */
#define VICE_MSP_CAUSE_BRANCH_DELAY_SHIFT            31 /* established */
#define VICE_MSP_CAUSE_BRANCH_DELAY_MASK             0x1u
#define VICE_MSP_CAUSE_BRANCH_DELAY_INPLACE          (VICE_MSP_CAUSE_BRANCH_DELAY_MASK << VICE_MSP_CAUSE_BRANCH_DELAY_SHIFT)
#define VICE_MSP_CAUSE_CODE_SHIFT                    2 /* established */
#define VICE_MSP_CAUSE_CODE_MASK                     0x1fu
#define VICE_MSP_CAUSE_CODE_INPLACE                  (VICE_MSP_CAUSE_CODE_MASK << VICE_MSP_CAUSE_CODE_SHIFT)
#define VICE_MSP_CAUSE_CODE_ADEL                     0 /* established */
#define VICE_MSP_CAUSE_CODE_ADES                     1 /* established */
#define VICE_MSP_CAUSE_CODE_BP                       2 /* established */
#define VICE_MSP_CAUSE_CODE_WP                       3 /* established */
#define VICE_MSP_CAUSE_CODE_SURI                     4 /* established */
#define VICE_MSP_CAUSE_CODE_VURI                     5 /* established */
#define VICE_MSP_CAUSE_CODE_CON                      6 /* established */
#define VICE_MSP_CAUSE_CODE_ADEI                     7 /* established */

/*
 * Listed in the register map as the BSP R Page, 16 bits read and write, with no
 * register section. The specification names an RPage register as the base for
 * bitstream processor loads and stores; that it is the host's view of the same
 * register is inferred.
 */
/* bsp_rpage: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_RPAGE_OFFSET                        0x78u /* established */

/*
 * The software-interrupt registers carry no data in the specification's
 * register map (size 0): any write sets the matching cause bit. The 32-bit
 * width is a placeholder and the grade says so.
 */
/* bsp_sw_int: w32, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_SW_INT_OFFSET                       0x80u /* inferred */

/* msp_d_ram: rw32, space vice, reset 0x0; published VICE design specification */
#define VICE_MSP_D_RAM_OFFSET                        0x100u /* established */
#define VICE_MSP_D_RAM_BANK_C_SHIFT                  2 /* established */
#define VICE_MSP_D_RAM_BANK_C_MASK                   0x1u
#define VICE_MSP_D_RAM_BANK_C_INPLACE                (VICE_MSP_D_RAM_BANK_C_MASK << VICE_MSP_D_RAM_BANK_C_SHIFT)
#define VICE_MSP_D_RAM_BANK_B_SHIFT                  1 /* established */
#define VICE_MSP_D_RAM_BANK_B_MASK                   0x1u
#define VICE_MSP_D_RAM_BANK_B_INPLACE                (VICE_MSP_D_RAM_BANK_B_MASK << VICE_MSP_D_RAM_BANK_B_SHIFT)
#define VICE_MSP_D_RAM_BANK_A_SHIFT                  0 /* established */
#define VICE_MSP_D_RAM_BANK_A_MASK                   0x1u
#define VICE_MSP_D_RAM_BANK_A_INPLACE                (VICE_MSP_D_RAM_BANK_A_MASK << VICE_MSP_D_RAM_BANK_A_SHIFT)

/* msp_count: rw32, space vice, reset unknown; published VICE design specification */
#define VICE_MSP_COUNT_OFFSET                        0x108u /* established */

/* bsp_ctl_stat: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_CTL_STAT_OFFSET                     0x110u /* established */
#define VICE_BSP_CTL_STAT_FLAGS_SHIFT                12 /* established */
#define VICE_BSP_CTL_STAT_FLAGS_MASK                 0xfu
#define VICE_BSP_CTL_STAT_FLAGS_INPLACE              (VICE_BSP_CTL_STAT_FLAGS_MASK << VICE_BSP_CTL_STAT_FLAGS_SHIFT)
#define VICE_BSP_CTL_STAT_EXT_SHIFT                  9 /* established */
#define VICE_BSP_CTL_STAT_EXT_MASK                   0x7u
#define VICE_BSP_CTL_STAT_EXT_INPLACE                (VICE_BSP_CTL_STAT_EXT_MASK << VICE_BSP_CTL_STAT_EXT_SHIFT)

/* bsp_watchpoint: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_WATCHPOINT_OFFSET                   0x118u /* established */

/* bsp_in_count: r32, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_IN_COUNT_OFFSET                     0x120u /* established */

/* bsp_out_count: r32, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_OUT_COUNT_OFFSET                    0x128u /* established */

/* bsp_pc: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_PC_OFFSET                           0x140u /* established */

/* bsp_epc: r16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_EPC_OFFSET                          0x148u /* established */

/*
 * bsp_halt_reset: the specification's field table puts the reset bit at 0 and
 * the go and halt bit at 1, while its prose says bit 1 releases reset and
 * does not number the go bit. No field is declared until that is settled.
 */
/* bsp_halt_reset: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_HALT_RESET_OFFSET                   0x150u /* established */

/* bsp_cause: r16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_CAUSE_OFFSET                        0x158u /* established */

/*
 * The three interrupt registers share one nine-bit cause layout (CAUSE).
 * VICE.int reads the causes, VICE.int_reset clears the bits written as one and
 * VICE.int_en masks the interrupt pin only; the cause bits are set whatever
 * the mask says. The cause bits are set by hardware and by any write to the
 * two software-interrupt registers.
 */
/* int: r16, space vice, reset unknown; published VICE design specification */
#define VICE_INT_OFFSET                              0x160u /* established */

/* bsp_fifo_ctl_stat: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_FIFO_CTL_STAT_OFFSET                0x168u /* established */
#define VICE_BSP_FIFO_CTL_STAT_BSP_SIGNAL_SHIFT      4 /* established */
#define VICE_BSP_FIFO_CTL_STAT_BSP_SIGNAL_MASK       0x1u
#define VICE_BSP_FIFO_CTL_STAT_BSP_SIGNAL_INPLACE    (VICE_BSP_FIFO_CTL_STAT_BSP_SIGNAL_MASK << VICE_BSP_FIFO_CTL_STAT_BSP_SIGNAL_SHIFT)
#define VICE_BSP_FIFO_CTL_STAT_MSP_SIGNAL_SHIFT      3 /* established */
#define VICE_BSP_FIFO_CTL_STAT_MSP_SIGNAL_MASK       0x1u
#define VICE_BSP_FIFO_CTL_STAT_MSP_SIGNAL_INPLACE    (VICE_BSP_FIFO_CTL_STAT_MSP_SIGNAL_MASK << VICE_BSP_FIFO_CTL_STAT_MSP_SIGNAL_SHIFT)
#define VICE_BSP_FIFO_CTL_STAT_IN_RESET_SHIFT        2 /* established */
#define VICE_BSP_FIFO_CTL_STAT_IN_RESET_MASK         0x1u
#define VICE_BSP_FIFO_CTL_STAT_IN_RESET_INPLACE      (VICE_BSP_FIFO_CTL_STAT_IN_RESET_MASK << VICE_BSP_FIFO_CTL_STAT_IN_RESET_SHIFT)
#define VICE_BSP_FIFO_CTL_STAT_IN_FULL_SHIFT         1 /* established */
#define VICE_BSP_FIFO_CTL_STAT_IN_FULL_MASK          0x1u
#define VICE_BSP_FIFO_CTL_STAT_IN_FULL_INPLACE       (VICE_BSP_FIFO_CTL_STAT_IN_FULL_MASK << VICE_BSP_FIFO_CTL_STAT_IN_FULL_SHIFT)
#define VICE_BSP_FIFO_CTL_STAT_IN_EMPTY_SHIFT        0 /* established */
#define VICE_BSP_FIFO_CTL_STAT_IN_EMPTY_MASK         0x1u
#define VICE_BSP_FIFO_CTL_STAT_IN_EMPTY_INPLACE      (VICE_BSP_FIFO_CTL_STAT_IN_EMPTY_MASK << VICE_BSP_FIFO_CTL_STAT_IN_EMPTY_SHIFT)

/* bsp_avalid_bits: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_AVALID_BITS_OFFSET                  0x170u /* established */
#define VICE_BSP_AVALID_BITS_POINTER_SHIFT           0 /* established */
#define VICE_BSP_AVALID_BITS_POINTER_MASK            0x3fu
#define VICE_BSP_AVALID_BITS_POINTER_INPLACE         (VICE_BSP_AVALID_BITS_POINTER_MASK << VICE_BSP_AVALID_BITS_POINTER_SHIFT)

/* bsp_fvalid_bits: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_FVALID_BITS_OFFSET                  0x178u /* established */
#define VICE_BSP_FVALID_BITS_POINTER_SHIFT           0 /* established */
#define VICE_BSP_FVALID_BITS_POINTER_MASK            0x3fu
#define VICE_BSP_FVALID_BITS_POINTER_INPLACE         (VICE_BSP_FVALID_BITS_POINTER_MASK << VICE_BSP_FVALID_BITS_POINTER_SHIFT)

/*
 * Channel 2 repeats channel 1's registers at a fixed distance and shares the
 * control (DMACTL) and status layouts. The four descriptor sets of each channel
 * are separate registers below; every set uses the DMA_DESC_CTL layout for its
 * control word.
 */
/* dma_ctl_ch1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_CTL_CH1_OFFSET                      0x180u /* established */

/* dma_stat_ch1: r16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_STAT_CH1_OFFSET                     0x188u /* established */

/* dma_data_ch1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_DATA_CH1_OFFSET                     0x190u /* established */

/* dma_mem_pt_ch1: r32, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_MEM_PT_CH1_OFFSET                   0x198u /* established */

/* dma_vice_pt_ch1: r16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VICE_PT_CH1_OFFSET                  0x1a0u /* established */

/* dma_count_ch1: r16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_COUNT_CH1_OFFSET                    0x1a8u /* established */

/* msp_sw_int: w32, space vice, reset unknown; published VICE design specification */
#define VICE_MSP_SW_INT_OFFSET                       0x1b8u /* inferred */

/* dma_ctl_ch2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_CTL_CH2_OFFSET                      0x1c0u /* established */

/* dma_stat_ch2: r16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_STAT_CH2_OFFSET                     0x1c8u /* established */

/* dma_data_ch2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_DATA_CH2_OFFSET                     0x1d0u /* established */

/* dma_mem_pt_ch2: r32, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_MEM_PT_CH2_OFFSET                   0x1d8u /* established */

/* dma_vice_pt_ch2: r16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VICE_PT_CH2_OFFSET                  0x1e0u /* established */

/* dma_count_ch2: r16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_COUNT_CH2_OFFSET                    0x1e8u /* established */

/*
 * The two mailboxes share a layout (MBOX): a 15-bit message and a signal bit
 * that any write sets and any read clears. The host shadow registers read
 * the same words without clearing the signal. The specification's register map
 * lists the input mailbox read-only and the output mailbox read-write, while
 * its register text lets the signal processor write the input one and the
 * bitstream processor the output one; the directions here are the map's.
 */
/* bsp_in_box: r16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_IN_BOX_OFFSET                       0x1f0u /* established */

/* bsp_out_box: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_OUT_BOX_OFFSET                      0x1f8u /* established */

/* dma_ctl_ch1_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_CTL_CH1_D1_OFFSET                   0x1000u /* established */

/* dma_smem_hi_ch1_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_HI_CH1_D1_OFFSET               0x1008u /* established */

/* dma_smem_lo_ch1_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_LO_CH1_D1_OFFSET               0x1010u /* established */

/* dma_width_ch1_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_WIDTH_CH1_D1_OFFSET                 0x1018u /* established */

/* dma_stride_ch1_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_STRIDE_CH1_D1_OFFSET                0x1020u /* established */

/* dma_lines_ch1_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_LINES_CH1_D1_OFFSET                 0x1028u /* established */

/* dma_vmem_y_ch1_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_Y_CH1_D1_OFFSET                0x1030u /* established */

/* dma_vmem_c_ch1_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_C_CH1_D1_OFFSET                0x1038u /* established */

/* dma_ctl_ch1_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_CTL_CH1_D2_OFFSET                   0x1040u /* established */

/* dma_smem_hi_ch1_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_HI_CH1_D2_OFFSET               0x1048u /* established */

/* dma_smem_lo_ch1_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_LO_CH1_D2_OFFSET               0x1050u /* established */

/* dma_width_ch1_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_WIDTH_CH1_D2_OFFSET                 0x1058u /* established */

/* dma_stride_ch1_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_STRIDE_CH1_D2_OFFSET                0x1060u /* established */

/* dma_lines_ch1_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_LINES_CH1_D2_OFFSET                 0x1068u /* established */

/* dma_vmem_y_ch1_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_Y_CH1_D2_OFFSET                0x1070u /* established */

/* dma_vmem_c_ch1_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_C_CH1_D2_OFFSET                0x1078u /* established */

/* dma_ctl_ch1_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_CTL_CH1_D3_OFFSET                   0x1080u /* established */

/* dma_smem_hi_ch1_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_HI_CH1_D3_OFFSET               0x1088u /* established */

/* dma_smem_lo_ch1_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_LO_CH1_D3_OFFSET               0x1090u /* established */

/* dma_width_ch1_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_WIDTH_CH1_D3_OFFSET                 0x1098u /* established */

/* dma_stride_ch1_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_STRIDE_CH1_D3_OFFSET                0x10a0u /* established */

/* dma_lines_ch1_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_LINES_CH1_D3_OFFSET                 0x10a8u /* established */

/* dma_vmem_y_ch1_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_Y_CH1_D3_OFFSET                0x10b0u /* established */

/* dma_vmem_c_ch1_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_C_CH1_D3_OFFSET                0x10b8u /* established */

/* dma_ctl_ch1_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_CTL_CH1_D4_OFFSET                   0x10c0u /* established */

/* dma_smem_hi_ch1_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_HI_CH1_D4_OFFSET               0x10c8u /* established */

/* dma_smem_lo_ch1_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_LO_CH1_D4_OFFSET               0x10d0u /* established */

/* dma_width_ch1_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_WIDTH_CH1_D4_OFFSET                 0x10d8u /* established */

/* dma_stride_ch1_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_STRIDE_CH1_D4_OFFSET                0x10e0u /* established */

/* dma_lines_ch1_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_LINES_CH1_D4_OFFSET                 0x10e8u /* established */

/* dma_vmem_y_ch1_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_Y_CH1_D4_OFFSET                0x10f0u /* established */

/* dma_vmem_c_ch1_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_C_CH1_D4_OFFSET                0x10f8u /* established */

/* dma_ctl_ch2_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_CTL_CH2_D1_OFFSET                   0x1100u /* established */

/* dma_smem_hi_ch2_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_HI_CH2_D1_OFFSET               0x1108u /* established */

/* dma_smem_lo_ch2_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_LO_CH2_D1_OFFSET               0x1110u /* established */

/* dma_width_ch2_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_WIDTH_CH2_D1_OFFSET                 0x1118u /* established */

/* dma_stride_ch2_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_STRIDE_CH2_D1_OFFSET                0x1120u /* established */

/* dma_lines_ch2_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_LINES_CH2_D1_OFFSET                 0x1128u /* established */

/* dma_vmem_y_ch2_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_Y_CH2_D1_OFFSET                0x1130u /* established */

/* dma_vmem_c_ch2_d1: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_C_CH2_D1_OFFSET                0x1138u /* established */

/* dma_ctl_ch2_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_CTL_CH2_D2_OFFSET                   0x1140u /* established */

/* dma_smem_hi_ch2_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_HI_CH2_D2_OFFSET               0x1148u /* established */

/* dma_smem_lo_ch2_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_LO_CH2_D2_OFFSET               0x1150u /* established */

/* dma_width_ch2_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_WIDTH_CH2_D2_OFFSET                 0x1158u /* established */

/* dma_stride_ch2_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_STRIDE_CH2_D2_OFFSET                0x1160u /* established */

/* dma_lines_ch2_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_LINES_CH2_D2_OFFSET                 0x1168u /* established */

/* dma_vmem_y_ch2_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_Y_CH2_D2_OFFSET                0x1170u /* established */

/* dma_vmem_c_ch2_d2: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_C_CH2_D2_OFFSET                0x1178u /* established */

/* dma_ctl_ch2_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_CTL_CH2_D3_OFFSET                   0x1180u /* established */

/* dma_smem_hi_ch2_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_HI_CH2_D3_OFFSET               0x1188u /* established */

/* dma_smem_lo_ch2_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_LO_CH2_D3_OFFSET               0x1190u /* established */

/* dma_width_ch2_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_WIDTH_CH2_D3_OFFSET                 0x1198u /* established */

/* dma_stride_ch2_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_STRIDE_CH2_D3_OFFSET                0x11a0u /* established */

/* dma_lines_ch2_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_LINES_CH2_D3_OFFSET                 0x11a8u /* established */

/* dma_vmem_y_ch2_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_Y_CH2_D3_OFFSET                0x11b0u /* established */

/* dma_vmem_c_ch2_d3: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_C_CH2_D3_OFFSET                0x11b8u /* established */

/* dma_ctl_ch2_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_CTL_CH2_D4_OFFSET                   0x11c0u /* established */

/* dma_smem_hi_ch2_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_HI_CH2_D4_OFFSET               0x11c8u /* established */

/* dma_smem_lo_ch2_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_SMEM_LO_CH2_D4_OFFSET               0x11d0u /* established */

/* dma_width_ch2_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_WIDTH_CH2_D4_OFFSET                 0x11d8u /* established */

/* dma_stride_ch2_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_STRIDE_CH2_D4_OFFSET                0x11e0u /* established */

/* dma_lines_ch2_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_LINES_CH2_D4_OFFSET                 0x11e8u /* established */

/* dma_vmem_y_ch2_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_Y_CH2_D4_OFFSET                0x11f0u /* established */

/* dma_vmem_c_ch2_d4: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_DMA_VMEM_C_CH2_D4_OFFSET                0x11f8u /* established */

/*
 * MSP instruction RAM, 4 KB. The map gives the size and the specification says
 * the host loads it, while the MSP itself can only fetch from it. The access
 * width is not published: 32 bits is inferred from the scalar instruction size.
 * The DMA location table lists this RAM at 16 bits, so the width is unresolved.
 */
/* msp_i_ram: rw32, space vice, reset unknown; published VICE design specification */
#define VICE_MSP_I_RAM_OFFSET                        0x2000u /* inferred */
#define VICE_MSP_I_RAM_COUNT                         1024
#define VICE_MSP_I_RAM_STRIDE                        4

/*
 * BSP instruction RAM, 1K by 16 bits (2 KB). The host loads it; the BSP can only
 * fetch from it. The unused tail of the window is not implemented and reads zero.
 */
/* bsp_i_ram: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_I_RAM_OFFSET                        0x4000u /* established */
#define VICE_BSP_I_RAM_COUNT                         1024
#define VICE_BSP_I_RAM_STRIDE                        2

/*
 * Bitstream processor table memory, 1280 entries of 22 bits (block diagram and
 * map). Each entry is presented as a 32-bit word, with the top ten bits reading
 * zero. The 32-bit presentation is inferred from the span the map gives.
 */
/* table_mem: rw32, space vice, reset unknown; published VICE design specification */
#define VICE_TABLE_MEM_OFFSET                        0x5000u /* inferred */
#define VICE_TABLE_MEM_COUNT                         1280
#define VICE_TABLE_MEM_STRIDE                        4
#define VICE_TABLE_MEM_VALUE_SHIFT                   0 /* established */
#define VICE_TABLE_MEM_VALUE_MASK                    0x3fffffu
#define VICE_TABLE_MEM_VALUE_INPLACE                 (VICE_TABLE_MEM_VALUE_MASK << VICE_TABLE_MEM_VALUE_SHIFT)

/*
 * The chip's memories sit in the same 64 KiB window as its registers. Each
 * region's base and extent are the specification's address map: the bitstream
 * processor's output buffer and input buffer (2 KiB each), the three
 * 2 KiB data RAM banks and the translation buffer. An access to an
 * unimplemented part of a range reads zeros. The access width is not given
 * by the map: banks are listed at the 32-bit width of the signal processor's
 * scalar unit and the bitstream buffers at the 16-bit width of the bitstream
 * processor, which is inferred. The translation buffer has 64 entries and the
 * specification gives no entry stride, so only its first entry is listed.
 */
/* bsp_out_buf: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_OUT_BUF_OFFSET                      0x7000u /* inferred */
#define VICE_BSP_OUT_BUF_COUNT                       1024
#define VICE_BSP_OUT_BUF_STRIDE                      2

/* bsp_in_buf: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_BSP_IN_BUF_OFFSET                       0x7800u /* inferred */
#define VICE_BSP_IN_BUF_COUNT                        1024
#define VICE_BSP_IN_BUF_STRIDE                       2

/* data_ram_a: rw32, space vice, reset unknown; published VICE design specification */
#define VICE_DATA_RAM_A_OFFSET                       0x8000u /* inferred */
#define VICE_DATA_RAM_A_COUNT                        512
#define VICE_DATA_RAM_A_STRIDE                       4

/* data_ram_b: rw32, space vice, reset unknown; published VICE design specification */
#define VICE_DATA_RAM_B_OFFSET                       0x8800u /* inferred */
#define VICE_DATA_RAM_B_COUNT                        512
#define VICE_DATA_RAM_B_STRIDE                       4

/* data_ram_c: rw32, space vice, reset unknown; published VICE design specification */
#define VICE_DATA_RAM_C_OFFSET                       0x9000u /* inferred */
#define VICE_DATA_RAM_C_COUNT                        512
#define VICE_DATA_RAM_C_STRIDE                       4

/* cfg: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_CFG_OFFSET                              0xe000u /* established */
#define VICE_CFG_MSP_TLB_BYPASS_SHIFT                1 /* established */
#define VICE_CFG_MSP_TLB_BYPASS_MASK                 0x1u
#define VICE_CFG_MSP_TLB_BYPASS_INPLACE              (VICE_CFG_MSP_TLB_BYPASS_MASK << VICE_CFG_MSP_TLB_BYPASS_SHIFT)
#define VICE_CFG_CHECK_DATA_SHIFT                    0 /* established */
#define VICE_CFG_CHECK_DATA_MASK                     0x1u
#define VICE_CFG_CHECK_DATA_INPLACE                  (VICE_CFG_CHECK_DATA_MASK << VICE_CFG_CHECK_DATA_SHIFT)

/* int_reset: w16, space vice, reset unknown; published VICE design specification */
#define VICE_INT_RESET_OFFSET                        0xe008u /* established */

/* int_en: rw16, space vice, reset unknown; published VICE design specification */
#define VICE_INT_EN_OFFSET                           0xe010u /* established */

/* tlb: rw32, space vice, reset unknown; published VICE design specification */
#define VICE_TLB_OFFSET                              0xf000u /* established */

/* word CAUSE: 32 bits; published VICE design specification */
#define VICE_CAUSE_WIDTH                             32 /* established */
#define VICE_CAUSE_DMA2_ERROR_SHIFT                  8 /* established */
#define VICE_CAUSE_DMA2_ERROR_MASK                   0x1u
#define VICE_CAUSE_DMA2_ERROR_INPLACE                (VICE_CAUSE_DMA2_ERROR_MASK << VICE_CAUSE_DMA2_ERROR_SHIFT)
#define VICE_CAUSE_DMA2_DONE_SHIFT                   7 /* established */
#define VICE_CAUSE_DMA2_DONE_MASK                    0x1u
#define VICE_CAUSE_DMA2_DONE_INPLACE                 (VICE_CAUSE_DMA2_DONE_MASK << VICE_CAUSE_DMA2_DONE_SHIFT)
#define VICE_CAUSE_BAD_DATA_SHIFT                    6 /* established */
#define VICE_CAUSE_BAD_DATA_MASK                     0x1u
#define VICE_CAUSE_BAD_DATA_INPLACE                  (VICE_CAUSE_BAD_DATA_MASK << VICE_CAUSE_BAD_DATA_SHIFT)
#define VICE_CAUSE_BSP_EXCEPTION_SHIFT               5 /* established */
#define VICE_CAUSE_BSP_EXCEPTION_MASK                0x1u
#define VICE_CAUSE_BSP_EXCEPTION_INPLACE             (VICE_CAUSE_BSP_EXCEPTION_MASK << VICE_CAUSE_BSP_EXCEPTION_SHIFT)
#define VICE_CAUSE_BSP_SW_SHIFT                      4 /* established */
#define VICE_CAUSE_BSP_SW_MASK                       0x1u
#define VICE_CAUSE_BSP_SW_INPLACE                    (VICE_CAUSE_BSP_SW_MASK << VICE_CAUSE_BSP_SW_SHIFT)
#define VICE_CAUSE_MSP_EXCEPTION_SHIFT               3 /* established */
#define VICE_CAUSE_MSP_EXCEPTION_MASK                0x1u
#define VICE_CAUSE_MSP_EXCEPTION_INPLACE             (VICE_CAUSE_MSP_EXCEPTION_MASK << VICE_CAUSE_MSP_EXCEPTION_SHIFT)
#define VICE_CAUSE_MSP_SW_SHIFT                      2 /* established */
#define VICE_CAUSE_MSP_SW_MASK                       0x1u
#define VICE_CAUSE_MSP_SW_INPLACE                    (VICE_CAUSE_MSP_SW_MASK << VICE_CAUSE_MSP_SW_SHIFT)
#define VICE_CAUSE_DMA1_ERROR_SHIFT                  1 /* established */
#define VICE_CAUSE_DMA1_ERROR_MASK                   0x1u
#define VICE_CAUSE_DMA1_ERROR_INPLACE                (VICE_CAUSE_DMA1_ERROR_MASK << VICE_CAUSE_DMA1_ERROR_SHIFT)
#define VICE_CAUSE_DMA1_DONE_SHIFT                   0 /* established */
#define VICE_CAUSE_DMA1_DONE_MASK                    0x1u
#define VICE_CAUSE_DMA1_DONE_INPLACE                 (VICE_CAUSE_DMA1_DONE_MASK << VICE_CAUSE_DMA1_DONE_SHIFT)

/* word DMACTL: 32 bits; published VICE design specification */
#define VICE_DMACTL_WIDTH                            32 /* established */
#define VICE_DMACTL_FLUSH_BUF_SHIFT                  9 /* established */
#define VICE_DMACTL_FLUSH_BUF_MASK                   0x1u
#define VICE_DMACTL_FLUSH_BUF_INPLACE                (VICE_DMACTL_FLUSH_BUF_MASK << VICE_DMACTL_FLUSH_BUF_SHIFT)
#define VICE_DMACTL_TLB_BYPASS_SHIFT                 8 /* established */
#define VICE_DMACTL_TLB_BYPASS_MASK                  0x1u
#define VICE_DMACTL_TLB_BYPASS_INPLACE               (VICE_DMACTL_TLB_BYPASS_MASK << VICE_DMACTL_TLB_BYPASS_SHIFT)
#define VICE_DMACTL_DESCR_PT_SHIFT                   4 /* established */
#define VICE_DMACTL_DESCR_PT_MASK                    0xfu
#define VICE_DMACTL_DESCR_PT_INPLACE                 (VICE_DMACTL_DESCR_PT_MASK << VICE_DMACTL_DESCR_PT_SHIFT)
#define VICE_DMACTL_RESET_SHIFT                      3 /* established */
#define VICE_DMACTL_RESET_MASK                       0x1u
#define VICE_DMACTL_RESET_INPLACE                    (VICE_DMACTL_RESET_MASK << VICE_DMACTL_RESET_SHIFT)
#define VICE_DMACTL_STOP_SHIFT                       2 /* established */
#define VICE_DMACTL_STOP_MASK                        0x1u
#define VICE_DMACTL_STOP_INPLACE                     (VICE_DMACTL_STOP_MASK << VICE_DMACTL_STOP_SHIFT)
#define VICE_DMACTL_IE_SHIFT                         1 /* established */
#define VICE_DMACTL_IE_MASK                          0x1u
#define VICE_DMACTL_IE_INPLACE                       (VICE_DMACTL_IE_MASK << VICE_DMACTL_IE_SHIFT)
#define VICE_DMACTL_GO_SHIFT                         0 /* established */
#define VICE_DMACTL_GO_MASK                          0x1u
#define VICE_DMACTL_GO_INPLACE                       (VICE_DMACTL_GO_MASK << VICE_DMACTL_GO_SHIFT)

/* word DMASTAT: 32 bits; published VICE design specification */
#define VICE_DMASTAT_WIDTH                           32 /* established */
#define VICE_DMASTAT_CODE_SHIFT                      8 /* established */
#define VICE_DMASTAT_CODE_MASK                       0xfu
#define VICE_DMASTAT_CODE_INPLACE                    (VICE_DMASTAT_CODE_MASK << VICE_DMASTAT_CODE_SHIFT)
#define VICE_DMASTAT_DESCR_PT_SHIFT                  4 /* established */
#define VICE_DMASTAT_DESCR_PT_MASK                   0xfu
#define VICE_DMASTAT_DESCR_PT_INPLACE                (VICE_DMASTAT_DESCR_PT_MASK << VICE_DMASTAT_DESCR_PT_SHIFT)
#define VICE_DMASTAT_RW_SHIFT                        3 /* established */
#define VICE_DMASTAT_RW_MASK                         0x1u
#define VICE_DMASTAT_RW_INPLACE                      (VICE_DMASTAT_RW_MASK << VICE_DMASTAT_RW_SHIFT)
#define VICE_DMASTAT_ACTIVE_SHIFT                    2 /* established */
#define VICE_DMASTAT_ACTIVE_MASK                     0x1u
#define VICE_DMASTAT_ACTIVE_INPLACE                  (VICE_DMASTAT_ACTIVE_MASK << VICE_DMASTAT_ACTIVE_SHIFT)
#define VICE_DMASTAT_ERROR_SHIFT                     1 /* established */
#define VICE_DMASTAT_ERROR_MASK                      0x1u
#define VICE_DMASTAT_ERROR_INPLACE                   (VICE_DMASTAT_ERROR_MASK << VICE_DMASTAT_ERROR_SHIFT)
#define VICE_DMASTAT_DONE_SHIFT                      0 /* established */
#define VICE_DMASTAT_DONE_MASK                       0x1u
#define VICE_DMASTAT_DONE_INPLACE                    (VICE_DMASTAT_DONE_MASK << VICE_DMASTAT_DONE_SHIFT)

/*
 * Control word of a DMA descriptor set. Each set of each channel uses this layout.
 * The published field table marks the half-pel flags, the half-pel enable and the
 * location field as not implemented; the bits are still defined so that software
 * writes are seen.
 */
/* word DMA_DESC_CTL: 16 bits; published VICE design specification */
#define VICE_DMA_DESC_CTL_WIDTH                      16 /* established */
#define VICE_DMA_DESC_CTL_HALT_SHIFT                 15 /* established */
#define VICE_DMA_DESC_CTL_HALT_MASK                  0x1u
#define VICE_DMA_DESC_CTL_HALT_INPLACE               (VICE_DMA_DESC_CTL_HALT_MASK << VICE_DMA_DESC_CTL_HALT_SHIFT)
#define VICE_DMA_DESC_CTL_SKIP_SHIFT                 14 /* established */
#define VICE_DMA_DESC_CTL_SKIP_MASK                  0x1u
#define VICE_DMA_DESC_CTL_SKIP_INPLACE               (VICE_DMA_DESC_CTL_SKIP_MASK << VICE_DMA_DESC_CTL_SKIP_SHIFT)
#define VICE_DMA_DESC_CTL_DIRECTION_SHIFT            13 /* established */
#define VICE_DMA_DESC_CTL_DIRECTION_MASK             0x1u
#define VICE_DMA_DESC_CTL_DIRECTION_INPLACE          (VICE_DMA_DESC_CTL_DIRECTION_MASK << VICE_DMA_DESC_CTL_DIRECTION_SHIFT)
#define VICE_DMA_DESC_CTL_DIRECTION_WRITE            0 /* established */
#define VICE_DMA_DESC_CTL_DIRECTION_READ             1 /* established */
#define VICE_DMA_DESC_CTL_FILL_SOURCE_SHIFT          12 /* established */
#define VICE_DMA_DESC_CTL_FILL_SOURCE_MASK           0x1u
#define VICE_DMA_DESC_CTL_FILL_SOURCE_INPLACE        (VICE_DMA_DESC_CTL_FILL_SOURCE_MASK << VICE_DMA_DESC_CTL_FILL_SOURCE_SHIFT)
#define VICE_DMA_DESC_CTL_FILL_SOURCE_SYSTEM         0 /* established */
#define VICE_DMA_DESC_CTL_FILL_SOURCE_DATA_REGISTER  1 /* established */
#define VICE_DMA_DESC_CTL_YC_SHIFT                   10 /* established */
#define VICE_DMA_DESC_CTL_YC_MASK                    0x3u
#define VICE_DMA_DESC_CTL_YC_INPLACE                 (VICE_DMA_DESC_CTL_YC_MASK << VICE_DMA_DESC_CTL_YC_SHIFT)
#define VICE_DMA_DESC_CTL_YC_BLOCK                   0 /* established */
#define VICE_DMA_DESC_CTL_YC_SPLIT_420               1 /* established */
#define VICE_DMA_DESC_CTL_YC_SPLIT_422               2 /* established */
#define VICE_DMA_DESC_CTL_YC_Y_ONLY                  3 /* established */
#define VICE_DMA_DESC_CTL_LUMA_HALF_SHIFT            8 /* established */
#define VICE_DMA_DESC_CTL_LUMA_HALF_MASK             0x3u
#define VICE_DMA_DESC_CTL_LUMA_HALF_INPLACE          (VICE_DMA_DESC_CTL_LUMA_HALF_MASK << VICE_DMA_DESC_CTL_LUMA_HALF_SHIFT)
#define VICE_DMA_DESC_CTL_INTERLEAVE_SHIFT           7 /* established */
#define VICE_DMA_DESC_CTL_INTERLEAVE_MASK            0x1u
#define VICE_DMA_DESC_CTL_INTERLEAVE_INPLACE         (VICE_DMA_DESC_CTL_INTERLEAVE_MASK << VICE_DMA_DESC_CTL_INTERLEAVE_SHIFT)
#define VICE_DMA_DESC_CTL_INTERLEAVE_BLOCK           0 /* established */
#define VICE_DMA_DESC_CTL_INTERLEAVE_INTERLEAVE      1 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_SHIFT             4 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_MASK              0x7u
#define VICE_DMA_DESC_CTL_LOCATION_INPLACE           (VICE_DMA_DESC_CTL_LOCATION_MASK << VICE_DMA_DESC_CTL_LOCATION_SHIFT)
#define VICE_DMA_DESC_CTL_LOCATION_RAM_A             0 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_RAM_B             1 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_RAM_C             2 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_MSP_I_RAM         3 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_BSP_I_RAM         4 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_BSP_TABLE         5 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_BSP_FIFO          6 /* established */
#define VICE_DMA_DESC_CTL_LOCATION_TLB_RAM           7 /* established */
#define VICE_DMA_DESC_CTL_HALF_PEL_ENABLE_SHIFT      3 /* established */
#define VICE_DMA_DESC_CTL_HALF_PEL_ENABLE_MASK       0x1u
#define VICE_DMA_DESC_CTL_HALF_PEL_ENABLE_INPLACE    (VICE_DMA_DESC_CTL_HALF_PEL_ENABLE_MASK << VICE_DMA_DESC_CTL_HALF_PEL_ENABLE_SHIFT)
#define VICE_DMA_DESC_CTL_CHROMA_ONLY_SHIFT          2 /* established */
#define VICE_DMA_DESC_CTL_CHROMA_ONLY_MASK           0x1u
#define VICE_DMA_DESC_CTL_CHROMA_ONLY_INPLACE        (VICE_DMA_DESC_CTL_CHROMA_ONLY_MASK << VICE_DMA_DESC_CTL_CHROMA_ONLY_SHIFT)
#define VICE_DMA_DESC_CTL_CHROMA_HALF_SHIFT          0 /* established */
#define VICE_DMA_DESC_CTL_CHROMA_HALF_MASK           0x3u
#define VICE_DMA_DESC_CTL_CHROMA_HALF_INPLACE        (VICE_DMA_DESC_CTL_CHROMA_HALF_MASK << VICE_DMA_DESC_CTL_CHROMA_HALF_SHIFT)

/* word MBOX: 32 bits; published VICE design specification */
#define VICE_MBOX_WIDTH                              32 /* established */
#define VICE_MBOX_SIGNAL_SHIFT                       15 /* established */
#define VICE_MBOX_SIGNAL_MASK                        0x1u
#define VICE_MBOX_SIGNAL_INPLACE                     (VICE_MBOX_SIGNAL_MASK << VICE_MBOX_SIGNAL_SHIFT)
#define VICE_MBOX_MESSAGE_SHIFT                      0 /* established */
#define VICE_MBOX_MESSAGE_MASK                       0x7fffu
#define VICE_MBOX_MESSAGE_INPLACE                    (VICE_MBOX_MESSAGE_MASK << VICE_MBOX_MESSAGE_SHIFT)

/*
 * A translation buffer entry is a 32-bit word written whole: valid in bit 0,
 * writable (permits DMA writes to the page) in bit 1 and the 64 KiB physical
 * page number in bits 31:16.
 */
/* word TLB_ENTRY: 32 bits; published VICE design specification */
#define VICE_TLB_ENTRY_WIDTH                         32 /* established */
#define VICE_TLB_ENTRY_PAGE_SHIFT                    16 /* established */
#define VICE_TLB_ENTRY_PAGE_MASK                     0xffffu
#define VICE_TLB_ENTRY_PAGE_INPLACE                  (VICE_TLB_ENTRY_PAGE_MASK << VICE_TLB_ENTRY_PAGE_SHIFT)
#define VICE_TLB_ENTRY_WRITABLE_SHIFT                1 /* established */
#define VICE_TLB_ENTRY_WRITABLE_MASK                 0x1u
#define VICE_TLB_ENTRY_WRITABLE_INPLACE              (VICE_TLB_ENTRY_WRITABLE_MASK << VICE_TLB_ENTRY_WRITABLE_SHIFT)
#define VICE_TLB_ENTRY_VALID_SHIFT                   0 /* established */
#define VICE_TLB_ENTRY_VALID_MASK                    0x1u
#define VICE_TLB_ENTRY_VALID_INPLACE                 (VICE_TLB_ENTRY_VALID_MASK << VICE_TLB_ENTRY_VALID_SHIFT)

#endif /* VICE_GEN_H */
