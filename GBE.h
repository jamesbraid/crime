/*
 * GBE.h - SGI O2 (IP32) GBE display back end, as IRIX 6.5.30 programs it.
 *
 * Labels: [E] established, [I] inferred, [U] unknown.
 * Sources: [linux] include/video/gbe.h, drivers/video/fbdev/gbefb.c;
 * [netbsd] sys/arch/sgimips/dev/crmfbreg.h; [k:FILE:FUNC+OFF] IRIX 6.5.30
 * IP32boot crime.a; [x:LINE] IRIX 6.5.30 crm.so, line in
 * ddx/asm/crm/crm/crm.s (the module is stripped).
 * Offsets are from 0x16000000. All registers are 32-bit [E, linux].
 */
#ifndef GBE_H
#define GBE_H

/* ---- Control ------------------------------------------------------------- */
#define GBE_CTRLSTAT        0x00000 /* low 4 bits: chip revision [E, linux gbe_revision] */
#define   GBE_CTRLSTAT_PCLK_MASK    0x30000000u /* [E, netbsd] 0 external, 3 internal */
#define   GBE_CTRLSTAT_GPIO_IDLE    0x000aa000u /* GPIO3..6 input bits [E, netbsd names] */
#define GBE_DOTCLOCK        0x00004
#define GBE_I2C             0x00008
#define GBE_SYSCLK          0x0000c
#define GBE_I2CFP           0x00010
#define GBE_ID              0x00014
#define   GBE_ID_VALUE      0x666   /* gbeProbe requires this [E, k:crime_init:gbeProbe] */
/*
 * Blanking: gbeBlankScreen writes CTRLSTAT = 0x000aa000 to blank and
 * 0x300aa000 to unblank [E, k:crime_init:gbeBlankScreen]. IRIX therefore
 * blanks by deselecting the pixel clock (bits 29:28) rather than through
 * the timing registers [I]. gbeProbe writes 0x30000000 and clears VT_XY when
 * its freeze bit (31) is set [E].
 */

/* ---- Video timing (+0x10000) [E, linux names] ---------------------------- */
#define GBE_VT_XY           0x10000 /* bit 31 freeze */
#define GBE_VT_XYMAX        0x10004 /* htotal | vtotal << 12 [E, gbeStartVideoTiming] */
#define GBE_VT_VSYNC        0x10008
#define GBE_VT_HSYNC        0x1000c
#define GBE_VT_VBLANK       0x10010
#define GBE_VT_HBLANK       0x10014
#define GBE_VT_FLAGS        0x10018 /* IRIX pulses bit 6 each stereo field [E, crimeRetraceHandler] */
#define GBE_VT_F2RF_LOCK    0x1001c
#define GBE_VT_INTR01       0x10020 /* intr1 | intr0 << 12; rewritten in the retrace handler [E] */
#define GBE_VT_INTR23       0x10024
#define GBE_FP_HDRV         0x10028 /* names [linux]; IRIX parks them for CRT formats [E] */
#define GBE_FP_VDRV         0x1002c
#define GBE_FP_DE           0x10030
#define GBE_VT_HPIXEN       0x10034
#define GBE_VT_VPIXEN       0x10038
#define GBE_VT_HCMAP        0x1003c
#define GBE_VT_VCMAP        0x10040
#define GBE_DID_START_XY    0x10044 /* names [linux]; formulas in docs/gbe.md [E] */
#define GBE_CRS_START_XY    0x10048
#define GBE_VC_START_XY     0x1004c
/*
 * DOTCLOCK [E, k:crime_init:gbeSetTimingRegs; layout agrees with linux]:
 * (M - 1) | (N - 1) << 8 | P << 14 | 1 << 20 (run). M 1..256, N 1..64,
 * P 0..3 are the only values the kernel accepts from a user table.
 * How every timing register is derived from the kernel's timing record,
 * and the .vfo timing values: docs/gbe.md.
 */
#define GBE_DOTCLOCK_RUN    (1u << 20)
#define GBE_DOTCLOCK(m, n, p) ((((m) - 1) & 0xff) | ((((n) - 1) & 0x3f) << 8) | (((p) & 3) << 14))

/* ---- Overlay, frame and DID planes --------------------------------------- */
#define GBE_OVR_WIDTH_TILE  0x20000 /* bit 13 pulsed to reset the overlay FIFO [E] */
#define GBE_OVR_INHWCTRL    0x20004 /* live copy [E, linux name] */
#define GBE_OVR_CONTROL     0x20008 /* software-written copy */
#define GBE_FRM_SIZE_TILE   0x30000 /* bit 15 pulsed to reset the frame FIFO [E] */
#define GBE_FRM_SIZE_PIXEL  0x30004
#define GBE_FRM_INHWCTRL    0x30008 /* live copy */
#define GBE_FRM_CONTROL     0x3000c /* tile-list pointer | DMA enable (bit 0) */
#define GBE_DID_INHWCTRL    0x40000
#define GBE_DID_CONTROL     0x40004
/*
 * Base-address latching [E, k:crime_init:gbeStartVideoTiming+0x0..]:
 * after writing FRM_CONTROL and OVR_CONTROL the kernel polls
 * FRM_INHWCTRL bit 0 and OVR_INHWCTRL bit 0 until each equals the DMA
 * enable bit it wrote, then waits for VT_XY to pass a programmed line
 * before setting VT_HPIXEN/VT_VPIXEN (parked at 0xffffff meanwhile).
 * Inferred: GBE copies each *_CONTROL register into its *_INHWCTRL twin at
 * a frame boundary, not on the write, and software that needs the new
 * value live must wait for it. A model that applies *_CONTROL immediately
 * would let this loop exit early but would tear mid-frame.
 */

/* ---- Window ID (mode) table (+0x48000) ----------------------------------- */
#define GBE_MODE(n)         (0x48000 + 4 * (n)) /* 32 entries [E, linux] */
#define   GBE_MODE_BUF_MASK 0x3   /* buffer select [E, netbsd]; 1 or 2 per buffer */
/*
 * Buffer swaps: at retrace the kernel rewrites pending GBE_MODE entries
 * as (value & ~3) | buffer, choosing buffer 1 or 2 [E,
 * k:crime_retrace:crimeRetraceHandler]. Inferred: double buffering in
 * IRIX is a WID-table flip timed by the retrace interrupt, not a frame
 * pointer change.
 */

/* ---- Colour maps and the colour-map FIFO --------------------------------- */
#define GBE_CMAP(n)         (0x50000 + 4 * (n)) /* 6144 entries [E, linux] */
#define   GBE_CMAP_ENTRY(r, g, b) (((r) << 24) | ((g) << 16) | ((b) << 8)) /* [E] */
#define GBE_CMAP_FIFO       0x58000
#define   GBE_CMAP_FIFO_COUNT_MASK  0x3f    /* [E, x and k mask with 0x3f] */
/*
 * Colour-map FIFO, as the X server reads it [E, x:28129-28155, inside
 * crmInstallPseudoColorMap, and the same pattern at x:28204-28215]:
 *   GBE revision < 2:  spin while 0 < (FIFO & 0x3f) < 48, then write
 *   GBE revision >= 2: spin while (FIFO & 0x3f) < 48
 * (the revision word is tested with sltiu 2 at x:28122; the loop at
 * x:28129 is the >= 2 case and the one at x:28146 the < 2 case).
 * The X server reads the field as free slots and writes a batch once 48
 * are free. On revisions before 2 it also accepts 0, which a six-bit
 * count of a 64-entry FIFO would show with all 64 slots free; later
 * revisions apparently never report 0 for an empty FIFO [I]. The
 * revision test reads a per-screen word that tracks GBE revision the way
 * the Linux driver's gbe_revision < 2 tests do [I].
 * Conflict: Linux gbefb waits while cm_fifo >= 63, which treats the same
 * field as an occupancy count [E, linux gbefb.c]. The two readings cannot
 * both be right for one revision; a capture of the register at reset and
 * after a burst of writes would settle it [U].
 * The kernel textport path writes map 17 (entries 0x1100 + i) without
 * effectively waiting [E, k:crime_tp:crime_mapcolor].
 */
#define GBE_CMAP_FIFO_LOW_WATER 48  /* [E, X server threshold] */
#define GBE_CMAP_FIFO_DEPTH     64  /* [I] */

/* ---- Gamma ---------------------------------------------------------------- */
#define GBE_GMAP(n)         (0x60000 + 4 * (n)) /* 256 entries [E] */
/* gbeGmapInit loads a linear ramp i * 0x01010100, or a table from crime_init
 * .data when gbe_gammawar is set [E, k:crime_init:gbeGmapInit]. */

/* ---- Cursor --------------------------------------------------------------- */
#define GBE_CRS_POS         0x70000
#define GBE_CRS_CTL         0x70004 /* bit 0 enable */
/* The retrace handler disables the cursor (CRS_CTL = 0), writes CRS_POS,
 * flushes, and re-enables it [E, crimeRetraceHandler]; why is [U]. */
#define GBE_CRS_CMAP(n)     (0x70008 + 4 * (n))
#define GBE_CRS_GLYPH(n)    (0x78000 + 4 * (n))

/* ---- Interrupts ------------------------------------------------------------ */
/* GBE lines 0-3 reach CRIME inputs 16-19; see CRIME.h. Line 0 is the
 * retrace handler, line 1 pre-blank [E]. */

#endif /* GBE_H */
