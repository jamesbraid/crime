/* generated from defs/mace_timer.toml by defs-gen - do not edit, change the source */
/* O2 MACE free-running counter, three compare registers and audio and video time stamps */
#ifndef MACE_TIMER_GEN_H
#define MACE_TIMER_GEN_H

#include <stdint.h>


/*
 * One 32-bit counter, clocked every 960 ns (the 33.333 MHz PCI clock divided by 32). It starts at zero on power-on reset and wraps in 32 bits (established, printed page 147). The prose calls it read-only while the register table labels it read/write (printed page 148); the access is open (see docs/open-questions.md).
 */
/* counter: rw64, reset 0x0; published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout */
#define MACE_TIMER_COUNTER_OFFSET                    0x0u /* established */
#define MACE_TIMER_COUNTER_COUNT_SHIFT               0 /* established */
#define MACE_TIMER_COUNTER_COUNT_MASK                0xffffffffull
#define MACE_TIMER_COUNTER_COUNT_INPLACE             (MACE_TIMER_COUNTER_COUNT_MASK << MACE_TIMER_COUNTER_COUNT_SHIFT)

/*
 * 32-bit compare. Equality sets level interrupt latch 0, which drives peripheral status bit 13. Writing the register clears the latch, and the latch resets low. The reset value of the compare is not stated (established, printed page 147).
 */
/* cmp0: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout */
#define MACE_TIMER_CMP0_OFFSET                       0x8u /* established */
#define MACE_TIMER_CMP0_VALUE_SHIFT                  0 /* established */
#define MACE_TIMER_CMP0_VALUE_MASK                   0xffffffffull
#define MACE_TIMER_CMP0_VALUE_INPLACE                (MACE_TIMER_CMP0_VALUE_MASK << MACE_TIMER_CMP0_VALUE_SHIFT)

/*
 * 32-bit compare. Equality sets level interrupt latch 1, which drives peripheral status bit 14. Writing clears the latch. Reset value not stated (established, printed page 147).
 */
/* cmp1: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout */
#define MACE_TIMER_CMP1_OFFSET                       0x10u /* established */
#define MACE_TIMER_CMP1_VALUE_SHIFT                  0 /* established */
#define MACE_TIMER_CMP1_VALUE_MASK                   0xffffffffull
#define MACE_TIMER_CMP1_VALUE_INPLACE                (MACE_TIMER_CMP1_VALUE_MASK << MACE_TIMER_CMP1_VALUE_SHIFT)

/*
 * 32-bit compare. Equality sets level interrupt latch 2, which drives peripheral status bit 15. Writing clears the latch. Reset value not stated (established, printed page 147).
 */
/* cmp2: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout */
#define MACE_TIMER_CMP2_OFFSET                       0x18u /* established */
#define MACE_TIMER_CMP2_VALUE_SHIFT                  0 /* established */
#define MACE_TIMER_CMP2_VALUE_MASK                   0xffffffffull
#define MACE_TIMER_CMP2_VALUE_INPLACE                (MACE_TIMER_CMP2_VALUE_MASK << MACE_TIMER_CMP2_VALUE_SHIFT)

/*
 * Audio time stamp pairs: capture at 0x20, playback 1 at 0x28 and playback 2 at 0x30. A 64-bit read of a pair returns UST in bits 63:32 and MSC in bits 31:0. UST is the 960 ns counter at the last counted sample, and MSC is the sample pair count. MSC is writable so software can clear it (established, printed page 63 and the table on printed page 147). Section 7.2.1 of the same chapter swaps the two offsets in its prose; the table and the figure on page 63 agree with this layout.
 */
/* audio_pair: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout */
#define MACE_TIMER_AUDIO_PAIR_OFFSET                 0x20u /* established */
#define MACE_TIMER_AUDIO_PAIR_COUNT                  3
#define MACE_TIMER_AUDIO_PAIR_STRIDE                 8
#define MACE_TIMER_AUDIO_PAIR_UST_SHIFT              32 /* established */
#define MACE_TIMER_AUDIO_PAIR_UST_MASK               0xffffffffull
#define MACE_TIMER_AUDIO_PAIR_UST_INPLACE            (MACE_TIMER_AUDIO_PAIR_UST_MASK << MACE_TIMER_AUDIO_PAIR_UST_SHIFT)
#define MACE_TIMER_AUDIO_PAIR_MSC_SHIFT              0 /* established */
#define MACE_TIMER_AUDIO_PAIR_MSC_MASK               0xffffffffull
#define MACE_TIMER_AUDIO_PAIR_MSC_INPLACE            (MACE_TIMER_AUDIO_PAIR_MSC_MASK << MACE_TIMER_AUDIO_PAIR_MSC_SHIFT)

/*
 * Video time stamp pairs: input channel 1 at 0x38, input channel 2 at 0x40 and the output channel at 0x48 (printed page 148, table 75; printed page 56 for the layout). A 64-bit aligned read returns UST in bits 63:32 and the field count in bits 31:0, which holds the frame count in bits 31:1 and the field ID in bit 0, zero for odd and one for even (established, printed page 56, table 25). UST is the 960 ns counter captured at field start. The count advances at field end while a video signal is active. DMA enable does not clock it, and software can write it (established, printed page 56). The timer chapter's table on printed page 148 names UST at the pair base and MSC at base plus four, the reverse of this bit layout; the chapter's atomic-read rule on the same page agrees with the layout here. Whether 32-bit accesses to each half reach UST or MSC, and how a partial access behaves, is not published.
 */
/* video_pair: rw64, reset unknown; published MACE 2.0 I/O ASIC specification (printed pages 63, 147 and 148) and the public Linux mace_timers layout */
#define MACE_TIMER_VIDEO_PAIR_OFFSET                 0x38u /* established */
#define MACE_TIMER_VIDEO_PAIR_COUNT                  3
#define MACE_TIMER_VIDEO_PAIR_STRIDE                 8
#define MACE_TIMER_VIDEO_PAIR_UST_SHIFT              32 /* established */
#define MACE_TIMER_VIDEO_PAIR_UST_MASK               0xffffffffull
#define MACE_TIMER_VIDEO_PAIR_UST_INPLACE            (MACE_TIMER_VIDEO_PAIR_UST_MASK << MACE_TIMER_VIDEO_PAIR_UST_SHIFT)
#define MACE_TIMER_VIDEO_PAIR_FRAME_COUNT_SHIFT      1 /* established */
#define MACE_TIMER_VIDEO_PAIR_FRAME_COUNT_MASK       0x7fffffffull
#define MACE_TIMER_VIDEO_PAIR_FRAME_COUNT_INPLACE    (MACE_TIMER_VIDEO_PAIR_FRAME_COUNT_MASK << MACE_TIMER_VIDEO_PAIR_FRAME_COUNT_SHIFT)
#define MACE_TIMER_VIDEO_PAIR_FIELD_ID_SHIFT         0 /* established */
#define MACE_TIMER_VIDEO_PAIR_FIELD_ID_MASK          0x1ull
#define MACE_TIMER_VIDEO_PAIR_FIELD_ID_INPLACE       (MACE_TIMER_VIDEO_PAIR_FIELD_ID_MASK << MACE_TIMER_VIDEO_PAIR_FIELD_ID_SHIFT)

#define MACE_TIMER_BLOCK_BASE                        0x1f340000u /* established */
#define MACE_TIMER_CMP0_ALIAS                        0x1f350000u /* established */
#define MACE_TIMER_CMP1_ALIAS                        0x1f360000u /* established */
#define MACE_TIMER_CMP2_ALIAS                        0x1f370000u /* established */

#endif /* MACE_TIMER_GEN_H */
