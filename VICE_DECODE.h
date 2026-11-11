/*
 * VICE_DECODE.h - O2 VICE imaging and compression engine registers
 *
 * Publish-safe register contract for VICE, the image-processing ASIC on the CPU
 * bus beside CRIME (physical 0x17000000, 64 KiB of registers, data RAM and
 * buffers). Offsets are from the start of that window. Every register sits on a
 * doubleword boundary whatever its data size; the access width in each REG line
 * is the data size the specification's register map gives, rounded up to 8, 16,
 * 32 or 64 bits. Registers are the chip's third revision.
 *
 * Grammar (one annotation per comment line, do not reformat):
 *   REG: <BLOCK>.<name> <offset> <acc><width> [count=<n>] reset=<v> <grade>
 *   FIELD: <BLOCK>.<name>.<field> <hi>:<lo> <grade>     a register field
 *   FIELD: <WORD>.<field> <hi>:<lo> <grade>             a field shared by several registers
 *   ENUM: <target> <value> <label> <grade>
 *
 * Derivation. Offsets, widths, directions and bit layouts come from the
 * published VICE design specification (register address map and register
 * description chapters). No shipped software reading is used here. Reset
 * values are left unknown in the REG lines, because the specification's reset
 * column gives unknown for several registers and this header does not copy it
 * per register. The interrupt cause layout, the mailbox layout and the DMA
 * control and status layouts are shared by the registers that use them and are
 * declared once. The signal-processor and bitstream-processor instruction sets,
 * the translation buffer, and the second to fourth descriptor sets of each DMA
 * channel (the same eight registers again at a stride of 0x40), are not decoded here.
 */
#ifndef VICE_DECODE_H
#define VICE_DECODE_H

#include <stdint.h>

/* ---- memory regions ---- */
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
/* REG: VICE.bsp_out_buf 0x7000 rw16 count=1024 reset=unknown inferred */
/* REG: VICE.bsp_in_buf 0x7800 rw16 count=1024 reset=unknown inferred */
/* REG: VICE.data_ram_a 0x8000 rw32 count=512 reset=unknown inferred */
/* REG: VICE.data_ram_b 0x8800 rw32 count=512 reset=unknown inferred */
/* REG: VICE.data_ram_c 0x9000 rw32 count=512 reset=unknown inferred */
/* REG: VICE.tlb 0xf000 rw32 reset=unknown established */
/*
 * A translation buffer entry is a 32-bit word written whole: valid in bit 0,
 * writable (permits DMA writes to the page) in bit 1 and the 64 KiB physical
 * page number in bits 31:16.
 */
/* FIELD: TLB_ENTRY.valid 0:0 established */
#define VICE_TLB_ENTRY_VALID_SHIFT 0
#define VICE_TLB_ENTRY_VALID_MASK  0x1u
/* FIELD: TLB_ENTRY.writable 1:1 established */
#define VICE_TLB_ENTRY_WRITABLE_SHIFT 1
#define VICE_TLB_ENTRY_WRITABLE_MASK  0x1u
/* FIELD: TLB_ENTRY.page 31:16 established */
#define VICE_TLB_ENTRY_PAGE_SHIFT 16
#define VICE_TLB_ENTRY_PAGE_MASK  0xffffu

/* ---- chip ---- */
/* REG: VICE.id 0x0008 r8 reset=unknown established */
/* REG: VICE.cfg 0xe000 rw16 reset=unknown established */
/* FIELD: VICE.cfg.check_data 0:0 established */
#define VICE_CFG_CHECK_DATA_SHIFT 0
#define VICE_CFG_CHECK_DATA_MASK  0x1u
/* FIELD: VICE.cfg.msp_tlb_bypass 1:1 established */
#define VICE_CFG_MSP_TLB_BYPASS_SHIFT 1
#define VICE_CFG_MSP_TLB_BYPASS_MASK  0x1u
/*
 * The three interrupt registers share one nine-bit cause layout (CAUSE).
 * VICE.int reads the causes, VICE.int_reset clears the bits written as one and
 * VICE.int_en masks the interrupt pin only; the cause bits are set whatever
 * the mask says. The cause bits are set by hardware and by any write to the
 * two software-interrupt registers.
 */
/* REG: VICE.int 0x0160 r16 reset=unknown established */
/* REG: VICE.int_reset 0xe008 w16 reset=unknown established */
/* REG: VICE.int_en 0xe010 rw16 reset=unknown established */
/* FIELD: CAUSE.dma1_done 0:0 established */
#define VICE_CAUSE_DMA1_DONE_SHIFT 0
#define VICE_CAUSE_DMA1_DONE_MASK  0x1u
/* FIELD: CAUSE.dma1_error 1:1 established */
#define VICE_CAUSE_DMA1_ERROR_SHIFT 1
#define VICE_CAUSE_DMA1_ERROR_MASK  0x1u
/* FIELD: CAUSE.msp_sw 2:2 established */
#define VICE_CAUSE_MSP_SW_SHIFT 2
#define VICE_CAUSE_MSP_SW_MASK  0x1u
/* FIELD: CAUSE.msp_exception 3:3 established */
#define VICE_CAUSE_MSP_EXCEPTION_SHIFT 3
#define VICE_CAUSE_MSP_EXCEPTION_MASK  0x1u
/* FIELD: CAUSE.bsp_sw 4:4 established */
#define VICE_CAUSE_BSP_SW_SHIFT 4
#define VICE_CAUSE_BSP_SW_MASK  0x1u
/* FIELD: CAUSE.bsp_exception 5:5 established */
#define VICE_CAUSE_BSP_EXCEPTION_SHIFT 5
#define VICE_CAUSE_BSP_EXCEPTION_MASK  0x1u
/* FIELD: CAUSE.bad_data 6:6 established */
#define VICE_CAUSE_BAD_DATA_SHIFT 6
#define VICE_CAUSE_BAD_DATA_MASK  0x1u
/* FIELD: CAUSE.dma2_done 7:7 established */
#define VICE_CAUSE_DMA2_DONE_SHIFT 7
#define VICE_CAUSE_DMA2_DONE_MASK  0x1u
/* FIELD: CAUSE.dma2_error 8:8 established */
#define VICE_CAUSE_DMA2_ERROR_SHIFT 8
#define VICE_CAUSE_DMA2_ERROR_MASK  0x1u
/*
 * The software-interrupt registers carry no data in the specification's
 * register map (size 0): any write sets the matching cause bit. The 32-bit
 * width is a placeholder and the grade says so.
 */
/* REG: VICE.bsp_sw_int 0x0080 w32 reset=unknown inferred */
/* REG: VICE.msp_sw_int 0x01b8 w32 reset=unknown inferred */
/* ---- media signal processor ---- */
/* REG: VICE.msp_ctl_stat 0x0040 rw32 reset=unknown established */
/* FIELD: VICE.msp_ctl_stat.go 0:0 established */
#define VICE_MSP_CTL_STAT_GO_SHIFT 0
#define VICE_MSP_CTL_STAT_GO_MASK  0x1u
/* FIELD: VICE.msp_ctl_stat.reset_release 1:1 established */
#define VICE_MSP_CTL_STAT_RESET_RELEASE_SHIFT 1
#define VICE_MSP_CTL_STAT_RESET_RELEASE_MASK  0x1u
/* REG: VICE.msp_excp_flag 0x0048 rw32 reset=unknown established */
/* REG: VICE.msp_pc 0x0050 rw32 reset=unknown established */
/* FIELD: VICE.msp_pc.pc 15:2 established */
#define VICE_MSP_PC_PC_SHIFT 2
#define VICE_MSP_PC_PC_MASK  0x3fffu
/* REG: VICE.msp_bad_addr 0x0058 r32 reset=unknown established */
/* REG: VICE.msp_watchpoint 0x0060 rw32 reset=unknown established */
/* REG: VICE.msp_epc 0x0068 r32 reset=unknown established */
/* FIELD: VICE.msp_epc.pc 15:2 established */
#define VICE_MSP_EPC_PC_SHIFT 2
#define VICE_MSP_EPC_PC_MASK  0x3fffu
/* REG: VICE.msp_cause 0x0070 r32 reset=unknown established */
/* FIELD: VICE.msp_cause.code 6:2 established */
#define VICE_MSP_CAUSE_CODE_SHIFT 2
#define VICE_MSP_CAUSE_CODE_MASK  0x1fu
/* FIELD: VICE.msp_cause.branch_delay 31:31 established */
#define VICE_MSP_CAUSE_BRANCH_DELAY_SHIFT 31
#define VICE_MSP_CAUSE_BRANCH_DELAY_MASK  0x1u
/* ENUM: VICE.msp_cause.code 0 adel established */
#define VICE_MSP_CAUSE_CODE_ADEL 0
/* ENUM: VICE.msp_cause.code 1 ades established */
#define VICE_MSP_CAUSE_CODE_ADES 1
/* ENUM: VICE.msp_cause.code 2 bp established */
#define VICE_MSP_CAUSE_CODE_BP 2
/* ENUM: VICE.msp_cause.code 3 wp established */
#define VICE_MSP_CAUSE_CODE_WP 3
/* ENUM: VICE.msp_cause.code 4 suri established */
#define VICE_MSP_CAUSE_CODE_SURI 4
/* ENUM: VICE.msp_cause.code 5 vuri established */
#define VICE_MSP_CAUSE_CODE_VURI 5
/* ENUM: VICE.msp_cause.code 6 con established */
#define VICE_MSP_CAUSE_CODE_CON 6
/* ENUM: VICE.msp_cause.code 7 adei established */
#define VICE_MSP_CAUSE_CODE_ADEI 7
/* REG: VICE.msp_d_ram 0x0100 rw32 reset=unknown established */
/* FIELD: VICE.msp_d_ram.bank_a 0:0 established */
#define VICE_MSP_D_RAM_BANK_A_SHIFT 0
#define VICE_MSP_D_RAM_BANK_A_MASK  0x1u
/* FIELD: VICE.msp_d_ram.bank_b 1:1 established */
#define VICE_MSP_D_RAM_BANK_B_SHIFT 1
#define VICE_MSP_D_RAM_BANK_B_MASK  0x1u
/* FIELD: VICE.msp_d_ram.bank_c 2:2 established */
#define VICE_MSP_D_RAM_BANK_C_SHIFT 2
#define VICE_MSP_D_RAM_BANK_C_MASK  0x1u
/* REG: VICE.msp_count 0x0108 rw32 reset=unknown established */
/* ---- bitstream processor and mailboxes ---- */
/* REG: VICE.bsp_ctl_stat 0x0110 rw16 reset=unknown established */
/* FIELD: VICE.bsp_ctl_stat.flags 15:12 established */
#define VICE_BSP_CTL_STAT_FLAGS_SHIFT 12
#define VICE_BSP_CTL_STAT_FLAGS_MASK  0xfu
/* FIELD: VICE.bsp_ctl_stat.ext 11:9 established */
#define VICE_BSP_CTL_STAT_EXT_SHIFT 9
#define VICE_BSP_CTL_STAT_EXT_MASK  0x7u
/* REG: VICE.bsp_watchpoint 0x0118 rw16 reset=unknown established */
/* REG: VICE.bsp_in_count 0x0120 r32 reset=unknown established */
/* REG: VICE.bsp_out_count 0x0128 r32 reset=unknown established */
/* REG: VICE.bsp_pc 0x0140 rw16 reset=unknown established */
/* REG: VICE.bsp_epc 0x0148 r16 reset=unknown established */
/*
 * bsp_halt_reset: the specification's field table puts the reset bit at 0 and
 * the go and halt bit at 1, while its prose says bit 1 releases reset and
 * does not number the go bit. No field is declared until that is settled.
 */
/* REG: VICE.bsp_halt_reset 0x0150 rw16 reset=unknown established */
/* REG: VICE.bsp_cause 0x0158 r16 reset=unknown established */
/* REG: VICE.bsp_fifo_ctl_stat 0x0168 rw16 reset=unknown established */
/* FIELD: VICE.bsp_fifo_ctl_stat.in_empty 0:0 established */
#define VICE_BSP_FIFO_CTL_STAT_IN_EMPTY_SHIFT 0
#define VICE_BSP_FIFO_CTL_STAT_IN_EMPTY_MASK  0x1u
/* FIELD: VICE.bsp_fifo_ctl_stat.in_full 1:1 established */
#define VICE_BSP_FIFO_CTL_STAT_IN_FULL_SHIFT 1
#define VICE_BSP_FIFO_CTL_STAT_IN_FULL_MASK  0x1u
/* FIELD: VICE.bsp_fifo_ctl_stat.in_reset 2:2 established */
#define VICE_BSP_FIFO_CTL_STAT_IN_RESET_SHIFT 2
#define VICE_BSP_FIFO_CTL_STAT_IN_RESET_MASK  0x1u
/* FIELD: VICE.bsp_fifo_ctl_stat.msp_signal 3:3 established */
#define VICE_BSP_FIFO_CTL_STAT_MSP_SIGNAL_SHIFT 3
#define VICE_BSP_FIFO_CTL_STAT_MSP_SIGNAL_MASK  0x1u
/* FIELD: VICE.bsp_fifo_ctl_stat.bsp_signal 4:4 established */
#define VICE_BSP_FIFO_CTL_STAT_BSP_SIGNAL_SHIFT 4
#define VICE_BSP_FIFO_CTL_STAT_BSP_SIGNAL_MASK  0x1u
/* REG: VICE.bsp_avalid_bits 0x0170 rw16 reset=unknown established */
/* FIELD: VICE.bsp_avalid_bits.pointer 5:0 established */
#define VICE_BSP_AVALID_BITS_POINTER_SHIFT 0
#define VICE_BSP_AVALID_BITS_POINTER_MASK  0x3fu
/* REG: VICE.bsp_fvalid_bits 0x0178 rw16 reset=unknown established */
/* FIELD: VICE.bsp_fvalid_bits.pointer 5:0 established */
#define VICE_BSP_FVALID_BITS_POINTER_SHIFT 0
#define VICE_BSP_FVALID_BITS_POINTER_MASK  0x3fu
/*
 * The two mailboxes share a layout (MBOX): a 15-bit message and a signal bit
 * that any write sets and any read clears. The host shadow registers read
 * the same words without clearing the signal. The specification's register map
 * lists the input mailbox read-only and the output mailbox read-write, while
 * its register text lets the signal processor write the input one and the
 * bitstream processor the output one; the directions here are the map's.
 */
/* REG: VICE.bsp_in_box 0x01f0 r16 reset=unknown established */
/* REG: VICE.bsp_out_box 0x01f8 rw16 reset=unknown established */
/* REG: VICE.hst_bsp_in_box 0x0028 r16 reset=unknown established */
/* REG: VICE.hst_bsp_out_box 0x0030 r16 reset=unknown established */
/* FIELD: MBOX.message 14:0 established */
#define VICE_MBOX_MESSAGE_SHIFT 0
#define VICE_MBOX_MESSAGE_MASK  0x7fffu
/* FIELD: MBOX.signal 15:15 established */
#define VICE_MBOX_SIGNAL_SHIFT 15
#define VICE_MBOX_SIGNAL_MASK  0x1u
/* ---- DMA channels ---- */
/*
 * Channel 2 repeats channel 1's registers at a fixed distance and shares the
 * control (DMACTL) and status layouts. Only the first descriptor set of each channel
 * is decoded; the bit layouts of its registers are not.
 */
/* REG: VICE.dma_ctl_ch1 0x0180 rw16 reset=unknown established */
/* REG: VICE.dma_stat_ch1 0x0188 r16 reset=unknown established */
/* REG: VICE.dma_data_ch1 0x0190 rw16 reset=unknown established */
/* REG: VICE.dma_mem_pt_ch1 0x0198 r32 reset=unknown established */
/* REG: VICE.dma_vice_pt_ch1 0x01a0 r16 reset=unknown established */
/* REG: VICE.dma_count_ch1 0x01a8 r16 reset=unknown established */
/* REG: VICE.dma_ctl_ch2 0x01c0 rw16 reset=unknown established */
/* REG: VICE.dma_stat_ch2 0x01c8 r16 reset=unknown established */
/* REG: VICE.dma_data_ch2 0x01d0 rw16 reset=unknown established */
/* REG: VICE.dma_mem_pt_ch2 0x01d8 r32 reset=unknown established */
/* REG: VICE.dma_vice_pt_ch2 0x01e0 r16 reset=unknown established */
/* REG: VICE.dma_count_ch2 0x01e8 r16 reset=unknown established */
/* REG: VICE.dma_ctl_ch1_d1 0x1000 rw16 reset=unknown established */
/* REG: VICE.dma_smem_hi_ch1_d1 0x1008 rw16 reset=unknown established */
/* REG: VICE.dma_smem_lo_ch1_d1 0x1010 rw16 reset=unknown established */
/* REG: VICE.dma_width_ch1_d1 0x1018 rw16 reset=unknown established */
/* REG: VICE.dma_stride_ch1_d1 0x1020 rw16 reset=unknown established */
/* REG: VICE.dma_lines_ch1_d1 0x1028 rw16 reset=unknown established */
/* REG: VICE.dma_vmem_y_ch1_d1 0x1030 rw16 reset=unknown established */
/* REG: VICE.dma_vmem_c_ch1_d1 0x1038 rw16 reset=unknown established */
/* REG: VICE.dma_ctl_ch2_d1 0x1100 rw16 reset=unknown established */
/* REG: VICE.dma_smem_hi_ch2_d1 0x1108 rw16 reset=unknown established */
/* REG: VICE.dma_smem_lo_ch2_d1 0x1110 rw16 reset=unknown established */
/* REG: VICE.dma_width_ch2_d1 0x1118 rw16 reset=unknown established */
/* REG: VICE.dma_stride_ch2_d1 0x1120 rw16 reset=unknown established */
/* REG: VICE.dma_lines_ch2_d1 0x1128 rw16 reset=unknown established */
/* REG: VICE.dma_vmem_y_ch2_d1 0x1130 rw16 reset=unknown established */
/* REG: VICE.dma_vmem_c_ch2_d1 0x1138 rw16 reset=unknown established */
/* FIELD: DMACTL.go 0:0 established */
#define VICE_DMACTL_GO_SHIFT 0
#define VICE_DMACTL_GO_MASK  0x1u
/* FIELD: DMACTL.ie 1:1 established */
#define VICE_DMACTL_IE_SHIFT 1
#define VICE_DMACTL_IE_MASK  0x1u
/* FIELD: DMACTL.stop 2:2 established */
#define VICE_DMACTL_STOP_SHIFT 2
#define VICE_DMACTL_STOP_MASK  0x1u
/* FIELD: DMACTL.reset 3:3 established */
#define VICE_DMACTL_RESET_SHIFT 3
#define VICE_DMACTL_RESET_MASK  0x1u
/* FIELD: DMACTL.descr_pt 7:4 established */
#define VICE_DMACTL_DESCR_PT_SHIFT 4
#define VICE_DMACTL_DESCR_PT_MASK  0xfu
/* FIELD: DMACTL.tlb_bypass 8:8 established */
#define VICE_DMACTL_TLB_BYPASS_SHIFT 8
#define VICE_DMACTL_TLB_BYPASS_MASK  0x1u
/* FIELD: DMACTL.flush_buf 9:9 established */
#define VICE_DMACTL_FLUSH_BUF_SHIFT 9
#define VICE_DMACTL_FLUSH_BUF_MASK  0x1u
/* FIELD: DMASTAT.done 0:0 established */
#define VICE_DMASTAT_DONE_SHIFT 0
#define VICE_DMASTAT_DONE_MASK  0x1u
/* FIELD: DMASTAT.error 1:1 established */
#define VICE_DMASTAT_ERROR_SHIFT 1
#define VICE_DMASTAT_ERROR_MASK  0x1u
/* FIELD: DMASTAT.active 2:2 established */
#define VICE_DMASTAT_ACTIVE_SHIFT 2
#define VICE_DMASTAT_ACTIVE_MASK  0x1u
/* FIELD: DMASTAT.rw 3:3 established */
#define VICE_DMASTAT_RW_SHIFT 3
#define VICE_DMASTAT_RW_MASK  0x1u
/* FIELD: DMASTAT.descr_pt 7:4 established */
#define VICE_DMASTAT_DESCR_PT_SHIFT 4
#define VICE_DMASTAT_DESCR_PT_MASK  0xfu
/* FIELD: DMASTAT.code 11:8 established */
#define VICE_DMASTAT_CODE_SHIFT 8
#define VICE_DMASTAT_CODE_MASK  0xfu

#endif /* VICE_DECODE_H */
