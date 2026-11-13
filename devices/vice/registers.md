<!-- generated from devices/vice/registers.toml by defs-gen - do not edit, change the source -->

# O2 VICE imaging and compression engine registers

VICE imaging and compression engine chip, signal processor, bitstream processor, mailbox and DMA channel registers.

Unit `vice`, macro prefix `VICE`.
Default source: published VICE design specification.

Every item has a grade: established, inferred or unknown. A grade says how the item was derived from its source; it does not claim the item was measured on silicon.

## Address spaces

| Space | Offset unit | Description |
|---|---|---|
| vice | byte |  |

## Registers

| Register | Offset | Access | Width | Count | Space | Reset | Grade | Source |
|---|---|---|---|---|---|---|---|---|
| `id` | 0x8 | r | 8 |  | vice | 0xe1 | established | published VICE design specification |
| `hst_bsp_in_box` | 0x28 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `hst_bsp_out_box` | 0x30 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `msp_ctl_stat` | 0x40 | rw | 32 |  | vice | 0x0 | established | published VICE design specification |
| `msp_excp_flag` | 0x48 | rw | 32 |  | vice | 0x0 | established | published VICE design specification |
| `msp_pc` | 0x50 | rw | 32 |  | vice | unknown | established | published VICE design specification |
| `msp_bad_addr` | 0x58 | r | 32 |  | vice | unknown | established | published VICE design specification |
| `msp_watchpoint` | 0x60 | rw | 32 |  | vice | 0x0 | established | published VICE design specification |
| `msp_epc` | 0x68 | r | 32 |  | vice | unknown | established | published VICE design specification |
| `msp_cause` | 0x70 | r | 32 |  | vice | unknown | established | published VICE design specification |
| `bsp_rpage` | 0x78 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `bsp_sw_int` | 0x80 | w | 32 |  | vice | unknown | inferred | published VICE design specification |
| `msp_d_ram` | 0x100 | rw | 32 |  | vice | 0x0 | established | published VICE design specification |
| `msp_count` | 0x108 | rw | 32 |  | vice | unknown | established | published VICE design specification |
| `bsp_ctl_stat` | 0x110 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `bsp_watchpoint` | 0x118 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `bsp_in_count` | 0x120 | r | 32 |  | vice | unknown | established | published VICE design specification |
| `bsp_out_count` | 0x128 | r | 32 |  | vice | unknown | established | published VICE design specification |
| `bsp_pc` | 0x140 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `bsp_epc` | 0x148 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `bsp_halt_reset` | 0x150 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `bsp_cause` | 0x158 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `int` | 0x160 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `bsp_fifo_ctl_stat` | 0x168 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `bsp_avalid_bits` | 0x170 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `bsp_fvalid_bits` | 0x178 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_ctl_ch1` | 0x180 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_stat_ch1` | 0x188 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_data_ch1` | 0x190 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_mem_pt_ch1` | 0x198 | r | 32 |  | vice | unknown | established | published VICE design specification |
| `dma_vice_pt_ch1` | 0x1a0 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_count_ch1` | 0x1a8 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `msp_sw_int` | 0x1b8 | w | 32 |  | vice | unknown | inferred | published VICE design specification |
| `dma_ctl_ch2` | 0x1c0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_stat_ch2` | 0x1c8 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_data_ch2` | 0x1d0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_mem_pt_ch2` | 0x1d8 | r | 32 |  | vice | unknown | established | published VICE design specification |
| `dma_vice_pt_ch2` | 0x1e0 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_count_ch2` | 0x1e8 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `bsp_in_box` | 0x1f0 | r | 16 |  | vice | unknown | established | published VICE design specification |
| `bsp_out_box` | 0x1f8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_ctl_ch1_d1` | 0x1000 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_hi_ch1_d1` | 0x1008 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_lo_ch1_d1` | 0x1010 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_width_ch1_d1` | 0x1018 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_stride_ch1_d1` | 0x1020 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_lines_ch1_d1` | 0x1028 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_y_ch1_d1` | 0x1030 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_c_ch1_d1` | 0x1038 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_ctl_ch1_d2` | 0x1040 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_hi_ch1_d2` | 0x1048 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_lo_ch1_d2` | 0x1050 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_width_ch1_d2` | 0x1058 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_stride_ch1_d2` | 0x1060 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_lines_ch1_d2` | 0x1068 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_y_ch1_d2` | 0x1070 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_c_ch1_d2` | 0x1078 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_ctl_ch1_d3` | 0x1080 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_hi_ch1_d3` | 0x1088 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_lo_ch1_d3` | 0x1090 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_width_ch1_d3` | 0x1098 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_stride_ch1_d3` | 0x10a0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_lines_ch1_d3` | 0x10a8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_y_ch1_d3` | 0x10b0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_c_ch1_d3` | 0x10b8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_ctl_ch1_d4` | 0x10c0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_hi_ch1_d4` | 0x10c8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_lo_ch1_d4` | 0x10d0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_width_ch1_d4` | 0x10d8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_stride_ch1_d4` | 0x10e0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_lines_ch1_d4` | 0x10e8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_y_ch1_d4` | 0x10f0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_c_ch1_d4` | 0x10f8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_ctl_ch2_d1` | 0x1100 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_hi_ch2_d1` | 0x1108 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_lo_ch2_d1` | 0x1110 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_width_ch2_d1` | 0x1118 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_stride_ch2_d1` | 0x1120 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_lines_ch2_d1` | 0x1128 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_y_ch2_d1` | 0x1130 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_c_ch2_d1` | 0x1138 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_ctl_ch2_d2` | 0x1140 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_hi_ch2_d2` | 0x1148 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_lo_ch2_d2` | 0x1150 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_width_ch2_d2` | 0x1158 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_stride_ch2_d2` | 0x1160 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_lines_ch2_d2` | 0x1168 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_y_ch2_d2` | 0x1170 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_c_ch2_d2` | 0x1178 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_ctl_ch2_d3` | 0x1180 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_hi_ch2_d3` | 0x1188 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_lo_ch2_d3` | 0x1190 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_width_ch2_d3` | 0x1198 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_stride_ch2_d3` | 0x11a0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_lines_ch2_d3` | 0x11a8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_y_ch2_d3` | 0x11b0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_c_ch2_d3` | 0x11b8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_ctl_ch2_d4` | 0x11c0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_hi_ch2_d4` | 0x11c8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_smem_lo_ch2_d4` | 0x11d0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_width_ch2_d4` | 0x11d8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_stride_ch2_d4` | 0x11e0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_lines_ch2_d4` | 0x11e8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_y_ch2_d4` | 0x11f0 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `dma_vmem_c_ch2_d4` | 0x11f8 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `msp_i_ram` | 0x2000 | rw | 32 | 1024 | vice | unknown | inferred | published VICE design specification |
| `bsp_i_ram` | 0x4000 | rw | 16 | 1024 | vice | unknown | established | published VICE design specification |
| `table_mem` | 0x5000 | rw | 32 | 1280 | vice | unknown | inferred | published VICE design specification |
| `bsp_out_buf` | 0x7000 | rw | 16 | 1024 | vice | unknown | inferred | published VICE design specification |
| `bsp_in_buf` | 0x7800 | rw | 16 | 1024 | vice | unknown | inferred | published VICE design specification |
| `data_ram_a` | 0x8000 | rw | 32 | 512 | vice | unknown | inferred | published VICE design specification |
| `data_ram_b` | 0x8800 | rw | 32 | 512 | vice | unknown | inferred | published VICE design specification |
| `data_ram_c` | 0x9000 | rw | 32 | 512 | vice | unknown | inferred | published VICE design specification |
| `cfg` | 0xe000 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `int_reset` | 0xe008 | w | 16 |  | vice | unknown | established | published VICE design specification |
| `int_en` | 0xe010 | rw | 16 |  | vice | unknown | established | published VICE design specification |
| `tlb` | 0xf000 | rw | 32 |  | vice | unknown | established | published VICE design specification |

### Register `id`

Published names: revision 2 is "DX" (Vice-B, 099-0123-002) and revision 3 is
"TRE" (Vice-C, 099-0123-003), spec PDF 44, table 8 (established). The IRIX
identity probe reads the 32-bit word at offset 0xc, the low half of this doubleword,
and compares the whole word (established, kernel add_vice and hinv disassembly).
The upper word is not read by the probe, and its value is unknown.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 3:0 | `revision` | established | vice_a=1, vice_b=2, vice_c=3 | published VICE design specification |  |

### Register `hst_bsp_in_box`

### Register `hst_bsp_out_box`

### Register `msp_ctl_stat`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `reset_release` | established |  | published VICE design specification |  |
| 0 | `go` | established |  | published VICE design specification |  |

### Register `msp_excp_flag`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 7 | `adei` | established |  | published VICE design specification |  |
| 6 | `con` | established |  | published VICE design specification |  |
| 5 | `vuri` | established |  | published VICE design specification |  |
| 4 | `suri` | established |  | published VICE design specification |  |
| 3 | `wp` | established |  | published VICE design specification |  |
| 2 | `bp` | established |  | published VICE design specification |  |
| 1 | `ades` | established |  | published VICE design specification |  |
| 0 | `adel` | established |  | published VICE design specification |  |

### Register `msp_pc`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:2 | `pc` | established |  | published VICE design specification |  |

### Register `msp_bad_addr`

### Register `msp_watchpoint`

### Register `msp_epc`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:2 | `pc` | established |  | published VICE design specification |  |

### Register `msp_cause`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31 | `branch_delay` | established |  | published VICE design specification |  |
| 6:2 | `code` | established | adel=0, ades=1, bp=2, wp=3, suri=4, vuri=5, con=6, adei=7 | published VICE design specification |  |

### Register `bsp_rpage`

Listed in the register map as the BSP R Page, 16 bits read and write, with no
register section. The specification names an RPage register as the base for
bitstream processor loads and stores; that it is the host's view of the same
register is inferred.

### Register `bsp_sw_int`

The software-interrupt registers carry no data in the specification's
register map (size 0): any write sets the matching cause bit. The 32-bit
width is a placeholder and the grade says so.

### Register `msp_d_ram`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 2 | `bank_c` | established |  | published VICE design specification |  |
| 1 | `bank_b` | established |  | published VICE design specification |  |
| 0 | `bank_a` | established |  | published VICE design specification |  |

### Register `msp_count`

### Register `bsp_ctl_stat`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15:12 | `flags` | established |  | published VICE design specification |  |
| 11:9 | `ext` | established |  | published VICE design specification |  |

### Register `bsp_watchpoint`

### Register `bsp_in_count`

### Register `bsp_out_count`

### Register `bsp_pc`

### Register `bsp_epc`

### Register `bsp_halt_reset`

bsp_halt_reset: the specification's field table puts the reset bit at 0 and
the go and halt bit at 1, while its prose says bit 1 releases reset and
does not number the go bit. No field is declared until that is settled.

### Register `bsp_cause`

### Register `int`

The three interrupt registers share one nine-bit cause layout (CAUSE).
VICE.int reads the causes, VICE.int_reset clears the bits written as one and
VICE.int_en masks the interrupt pin only; the cause bits are set whatever
the mask says. The cause bits are set by hardware and by any write to the
two software-interrupt registers.

### Register `bsp_fifo_ctl_stat`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 4 | `bsp_signal` | established |  | published VICE design specification |  |
| 3 | `msp_signal` | established |  | published VICE design specification |  |
| 2 | `in_reset` | established |  | published VICE design specification |  |
| 1 | `in_full` | established |  | published VICE design specification |  |
| 0 | `in_empty` | established |  | published VICE design specification |  |

### Register `bsp_avalid_bits`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5:0 | `pointer` | established |  | published VICE design specification |  |

### Register `bsp_fvalid_bits`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 5:0 | `pointer` | established |  | published VICE design specification |  |

### Register `dma_ctl_ch1`

Channel 2 repeats channel 1's registers at a fixed distance and shares the
control (DMACTL) and status layouts. The four descriptor sets of each channel
are separate registers below; every set uses the DMA_DESC_CTL layout for its
control word.

### Register `dma_stat_ch1`

### Register `dma_data_ch1`

### Register `dma_mem_pt_ch1`

### Register `dma_vice_pt_ch1`

### Register `dma_count_ch1`

### Register `msp_sw_int`

### Register `dma_ctl_ch2`

### Register `dma_stat_ch2`

### Register `dma_data_ch2`

### Register `dma_mem_pt_ch2`

### Register `dma_vice_pt_ch2`

### Register `dma_count_ch2`

### Register `bsp_in_box`

The two mailboxes share a layout (MBOX): a 15-bit message and a signal bit
that any write sets and any read clears. The host shadow registers read
the same words without clearing the signal. The specification's register map
lists the input mailbox read-only and the output mailbox read-write, while
its register text lets the signal processor write the input one and the
bitstream processor the output one; the directions here are the map's.

### Register `bsp_out_box`

### Register `dma_ctl_ch1_d1`

### Register `dma_smem_hi_ch1_d1`

### Register `dma_smem_lo_ch1_d1`

### Register `dma_width_ch1_d1`

### Register `dma_stride_ch1_d1`

### Register `dma_lines_ch1_d1`

### Register `dma_vmem_y_ch1_d1`

### Register `dma_vmem_c_ch1_d1`

### Register `dma_ctl_ch1_d2`

### Register `dma_smem_hi_ch1_d2`

### Register `dma_smem_lo_ch1_d2`

### Register `dma_width_ch1_d2`

### Register `dma_stride_ch1_d2`

### Register `dma_lines_ch1_d2`

### Register `dma_vmem_y_ch1_d2`

### Register `dma_vmem_c_ch1_d2`

### Register `dma_ctl_ch1_d3`

### Register `dma_smem_hi_ch1_d3`

### Register `dma_smem_lo_ch1_d3`

### Register `dma_width_ch1_d3`

### Register `dma_stride_ch1_d3`

### Register `dma_lines_ch1_d3`

### Register `dma_vmem_y_ch1_d3`

### Register `dma_vmem_c_ch1_d3`

### Register `dma_ctl_ch1_d4`

### Register `dma_smem_hi_ch1_d4`

### Register `dma_smem_lo_ch1_d4`

### Register `dma_width_ch1_d4`

### Register `dma_stride_ch1_d4`

### Register `dma_lines_ch1_d4`

### Register `dma_vmem_y_ch1_d4`

### Register `dma_vmem_c_ch1_d4`

### Register `dma_ctl_ch2_d1`

### Register `dma_smem_hi_ch2_d1`

### Register `dma_smem_lo_ch2_d1`

### Register `dma_width_ch2_d1`

### Register `dma_stride_ch2_d1`

### Register `dma_lines_ch2_d1`

### Register `dma_vmem_y_ch2_d1`

### Register `dma_vmem_c_ch2_d1`

### Register `dma_ctl_ch2_d2`

### Register `dma_smem_hi_ch2_d2`

### Register `dma_smem_lo_ch2_d2`

### Register `dma_width_ch2_d2`

### Register `dma_stride_ch2_d2`

### Register `dma_lines_ch2_d2`

### Register `dma_vmem_y_ch2_d2`

### Register `dma_vmem_c_ch2_d2`

### Register `dma_ctl_ch2_d3`

### Register `dma_smem_hi_ch2_d3`

### Register `dma_smem_lo_ch2_d3`

### Register `dma_width_ch2_d3`

### Register `dma_stride_ch2_d3`

### Register `dma_lines_ch2_d3`

### Register `dma_vmem_y_ch2_d3`

### Register `dma_vmem_c_ch2_d3`

### Register `dma_ctl_ch2_d4`

### Register `dma_smem_hi_ch2_d4`

### Register `dma_smem_lo_ch2_d4`

### Register `dma_width_ch2_d4`

### Register `dma_stride_ch2_d4`

### Register `dma_lines_ch2_d4`

### Register `dma_vmem_y_ch2_d4`

### Register `dma_vmem_c_ch2_d4`

### Register `msp_i_ram`

MSP instruction RAM, 4 KB. The map gives the size and the specification says
the host loads it, while the MSP itself can only fetch from it. The access
width is not published: 32 bits is inferred from the scalar instruction size.
The DMA location table lists this RAM at 16 bits, so the width is unresolved.

Array of 1024 registers, stride 4.

### Register `bsp_i_ram`

BSP instruction RAM, 1K by 16 bits (2 KB). The host loads it; the BSP can only
fetch from it. The unused tail of the window is not implemented and reads zero.

Array of 1024 registers, stride 2.

### Register `table_mem`

Bitstream processor table memory, 1280 entries of 22 bits (block diagram and
map). Each entry is presented as a 32-bit word, with the top ten bits reading
zero. The 32-bit presentation is inferred from the span the map gives.

Array of 1280 registers, stride 4.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 21:0 | `value` | established |  | published VICE design specification |  |

### Register `bsp_out_buf`

The chip's memories sit in the same 64 KiB window as its registers. Each
region's base and extent are the specification's address map: the bitstream
processor's output buffer and input buffer (2 KiB each), the three
2 KiB data RAM banks and the translation buffer. An access to an
unimplemented part of a range reads zeros. The access width is not given
by the map: banks are listed at the 32-bit width of the signal processor's
scalar unit and the bitstream buffers at the 16-bit width of the bitstream
processor, which is inferred. The translation buffer has 64 entries and the
specification gives no entry stride, so only its first entry is listed.

Array of 1024 registers, stride 2.

### Register `bsp_in_buf`

Array of 1024 registers, stride 2.

### Register `data_ram_a`

Array of 512 registers, stride 4.

### Register `data_ram_b`

Array of 512 registers, stride 4.

### Register `data_ram_c`

Array of 512 registers, stride 4.

### Register `cfg`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 1 | `msp_tlb_bypass` | established |  | published VICE design specification |  |
| 0 | `check_data` | established |  | published VICE design specification |  |

### Register `int_reset`

### Register `int_en`

### Register `tlb`

## Words

| Word | Width | Grade | Source |
|---|---|---|---|
| `CAUSE` | 32 | established | published VICE design specification |
| `DMACTL` | 32 | established | published VICE design specification |
| `DMASTAT` | 32 | established | published VICE design specification |
| `DMA_DESC_CTL` | 16 | established | published VICE design specification |
| `MBOX` | 32 | established | published VICE design specification |
| `TLB_ENTRY` | 32 | established | published VICE design specification |

### Word `CAUSE`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 8 | `dma2_error` | established |  | published VICE design specification |  |
| 7 | `dma2_done` | established |  | published VICE design specification |  |
| 6 | `bad_data` | established |  | published VICE design specification |  |
| 5 | `bsp_exception` | established |  | published VICE design specification |  |
| 4 | `bsp_sw` | established |  | published VICE design specification |  |
| 3 | `msp_exception` | established |  | published VICE design specification |  |
| 2 | `msp_sw` | established |  | published VICE design specification |  |
| 1 | `dma1_error` | established |  | published VICE design specification |  |
| 0 | `dma1_done` | established |  | published VICE design specification |  |

### Word `DMACTL`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 9 | `flush_buf` | established |  | published VICE design specification |  |
| 8 | `tlb_bypass` | established |  | published VICE design specification |  |
| 7:4 | `descr_pt` | established |  | published VICE design specification |  |
| 3 | `reset` | established |  | published VICE design specification |  |
| 2 | `stop` | established |  | published VICE design specification |  |
| 1 | `ie` | established |  | published VICE design specification |  |
| 0 | `go` | established |  | published VICE design specification |  |

### Word `DMASTAT`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 11:8 | `code` | established |  | published VICE design specification |  |
| 7:4 | `descr_pt` | established |  | published VICE design specification |  |
| 3 | `rw` | established |  | published VICE design specification |  |
| 2 | `active` | established |  | published VICE design specification |  |
| 1 | `error` | established |  | published VICE design specification |  |
| 0 | `done` | established |  | published VICE design specification |  |

### Word `DMA_DESC_CTL`

Control word of a DMA descriptor set. Each set of each channel uses this layout.
The published field table marks the half-pel flags, the half-pel enable and the
location field as not implemented; the bits are still defined so that software
writes are seen.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `halt` | established |  | published VICE design specification |  |
| 14 | `skip` | established |  | published VICE design specification |  |
| 13 | `direction` | established | write=0, read=1 | published VICE design specification |  |
| 12 | `fill_source` | established | system=0, data_register=1 | published VICE design specification |  |
| 11:10 | `yc` | established | block=0, split_420=1, split_422=2, y_only=3 | published VICE design specification |  |
| 9:8 | `luma_half` | established |  | published VICE design specification |  |
| 7 | `interleave` | established | block=0, interleave=1 | published VICE design specification |  |
| 6:4 | `location` | established | ram_a=0, ram_b=1, ram_c=2, msp_i_ram=3, bsp_i_ram=4, bsp_table=5, bsp_fifo=6, tlb_ram=7 | published VICE design specification |  |
| 3 | `half_pel_enable` | established |  | published VICE design specification |  |
| 2 | `chroma_only` | established |  | published VICE design specification |  |
| 1:0 | `chroma_half` | established |  | published VICE design specification |  |

### Word `MBOX`

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 15 | `signal` | established |  | published VICE design specification |  |
| 14:0 | `message` | established |  | published VICE design specification |  |

### Word `TLB_ENTRY`

A translation buffer entry is a 32-bit word written whole: valid in bit 0,
writable (permits DMA writes to the page) in bit 1 and the 64 KiB physical
page number in bits 31:16.

| Bits | Field | Grade | Values | Source | Description |
|---|---|---|---|---|---|
| 31:16 | `page` | established |  | published VICE design specification |  |
| 1 | `writable` | established |  | published VICE design specification |  |
| 0 | `valid` | established |  | published VICE design specification |  |
