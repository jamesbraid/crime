/*
 * GBE.h - SGI O2 (IP32) GBE display back end, as IRIX 6.5.30 programs it.
 *
 * Labels: [E] established, [I] inferred, [U] unknown.
 * Sources: [linux] include/video/gbe.h, drivers/video/fbdev/gbefb.c;
 * [netbsd] sys/arch/sgimips/dev/crmfbreg.h; [k:FILE:FUNC+OFF] IRIX 6.5.30
 * IP32boot crime.a; [x:LINE] IRIX 6.5.30 crm.so, line in
 * software/xsgi/asm/crm/crm/crm.s (the module is stripped).
 * [gbe-spec] "GBE ASIC spec for REV1.1", 18 July 1996 (its own page numbers);
 * it describes revision 1.1 only, so "rev 1.1" marks facts from it.
 * Offsets are from 0x16000000. All registers are 32-bit [E, linux; gbe-spec p.34].
 * Reset values (rev 1.1, [gbe-spec] pp.36-47): CTRLSTAT chip id 1, every io pin
 * pair 11 (input), clock select 00; DOTCLK 0; I2C and I2CFP released (1);
 * SYSCLK tm(0) 1; DEVICE_ID 0x666; VT_XY freeze 1; all other timing, plane,
 * DID and cursor registers 0; CMFIFO 0; VC_2 flicker and auto-field 1.
 * Details and what IRIX does with them: devices/gbe/gbe.md, pass 6.
 */
#ifndef GBE_H
#define GBE_H

/* ---- Control ------------------------------------------------------------- */
#define GBE_CTRLSTAT        0x00000 /* low 4 bits: chip revision [E, linux gbe_revision] */
#define   GBE_CTRLSTAT_PCLK_MASK    0x30000000u /* [E, netbsd] 0 external, 3 internal */
#define   GBE_CTRLSTAT_GPIO_IDLE    0x000aa000u /* GPIO3..6 input bits [E, netbsd names] */
/* CTRLSTAT bits 3:0 read 1 on the rev 1.1 part and 2 on its successor; the
 * data bits 12, 14, 16, 18 of io_3..io_6, read as inputs, form a 4-bit
 * board strap (bit 12 = bit 0) whose only known use is the gamma
 * workaround on value 0 [E, ide.IP32 0xa00e2c54 and 0xa00e2be4; k:crime_init;
 * devices/gbe/gbe.md pass 7]. */
#define   GBE_CTRLSTAT_REV_MASK     0x0000000fu /* 1 rev 1.1 part, 2 successor [E] */
#define   GBE_CTRLSTAT_BOARDREV_BITS 0x00055000u /* [E] */
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
#define GBE_DID_START_XY    0x10044 /* names [linux]; formulas in devices/gbe/gbe.md [E] */
#define GBE_CRS_START_XY    0x10048
#define GBE_VC_START_XY     0x1004c
/*
 * DOTCLOCK [E, k:crime_init:gbeSetTimingRegs; layout agrees with linux]:
 * (M - 1) | (N - 1) << 8 | P << 14 | 1 << 20 (run). M 1..256, N 1..64,
 * P 0..3 are the only values the kernel accepts from a user table.
 * How every timing register is derived from the kernel's timing record,
 * and the .vfo timing values: devices/gbe/gbe.md.
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
 * DID table, as IRIX 6.5.30 builds it [E, x crm.so gbeLoadDispIDs 0x45a350;
 * devices/gbe/gbe.md pass 9]:
 * one 64 KiB table per DID_CONTROL base. Frame table of 32-bit entries from
 * byte 0 (blocks 0-15): yend 10:0 (last line of the band), offset 18:11
 * (16-bit units), block 25:19 (512-byte block). Line tables packed in
 * blocks 16-127, never crossing a block: entries did 15:11 | xend 10:0, one
 * per run, sorted by xend; a visible line's last entry ends at the display
 * width - 1, not 2047. A final band below the screen uses yend 2047 and one
 * entry xend 2047 with the RG3B2 reserved window ID (index 5, or 6 on GBE
 * revision >= 2). DID index = the window's slot in the 32-entry window-ID
 * slot table; windows matching in key and in entry bits 10:2 (TYP, CM, GM)
 * share a slot [E, x StealID; rrm record masks 0xffffffff and 0x7fc].
 */
/*
 * Base-address latching [E, k:crime_init:gbeStartVideoTiming+0x0..]:
 * after writing FRM_CONTROL and OVR_CONTROL the kernel polls
 * FRM_INHWCTRL bit 0 and OVR_INHWCTRL bit 0 until each equals the DMA
 * enable bit it wrote, then waits for VT_XY to pass a programmed line
 * before setting VT_HPIXEN/VT_VPIXEN (parked at 0xffffff meanwhile).
 * Established, rev 1.1 [gbe-spec pp.42-44]: GBE copies each *_CONTROL register
 * (spec names OVR_2, FRM_3, DID_SHADOW) into its *_INHWCTRL twin (OVR_1,
 * FRM_2, DID) at the beginning of blanking, not on the write, and software
 * that needs the new value live must wait for it. The tile-list pointer is
 * bits 31:5, so IRIX's gbeStop adds 0x20 to see a changed pointer arrive.
 * The DID control word is separate: bits 15:0 did_base (upper 16 bits of
 * the physical address of one 64 KiB DID table), bit 16 DMA enable, not a
 * pointer to a list [E, spec p.44; k:crime_retrace store of 0x10000 | tile]. A model that applies *_CONTROL immediately
 * would let this loop exit early but would tear mid-frame.
 */

/* ---- Window ID (mode) table (+0x48000) ----------------------------------- */
#define GBE_MODE(n)         (0x48000 + 4 * (n)) /* 32 entries [E, linux] */
#define   GBE_MODE_BUF_MASK 0x3   /* buffer select [E, netbsd; gbe-spec p.44]: 01 lower half, 10 upper half, 11 both */
/* Entry fields, rev 1.1 [gbe-spec p.44]: BUF 1:0; TYP 4:2 (0 I8, 1 I12, 2 RG3B2,
 * 3 RGB4, 4 RGB5, 5 RGB8); CM 9:5 colour-map group (I8) or RGB8 direct map when
 * non-zero; GM 10 (1 = gamma off); AUX 12:11 digital pixel bus [E, spec]. */
/*
 * Buffer swaps: at retrace the kernel rewrites pending GBE_MODE entries
 * as (value & ~3) | buffer, choosing buffer 1 or 2 [E,
 * k:crime_retrace:crimeRetraceHandler]. Inferred: double buffering in
 * IRIX is a WID-table flip timed by the retrace interrupt, not a frame
 * pointer change.
 */

/* ---- Colour maps and the colour-map FIFO --------------------------------- */
#define GBE_CMAP(n)         (0x50000 + 4 * (n)) /* 4608 entries on revision 1 [E, gbe-spec]; 6144 on revision 2 [I, X module's revision-2 window tables; linux]; overlay at 0x1100-0x11ff on both [E, software use] */
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
 * Established, rev 1.1 [gbe-spec p.18, p.45]: the field is the number of FREE
 * entries of a 64-deep FIFO (the true count may be higher, never lower),
 * which is the X server's reading. Linux gbefb waits while cm_fifo >= 63,
 * which treats the same field as an occupancy count [E, linux gbefb.c];
 * Linux's reading disagrees with the specification and with IRIX.
 * Established [shipped 6.5.30 ide.IP32 colour-map waits, revision-gated,
 * 0xa00d2674..0xa00d2788; devices/gbe/gbe.md pass 7]: software reads the field as
 * free entries on both revisions; it waits for 63 on revision 2 and for 0
 * on revision 1 to see an empty FIFO, and wants more than 16 free (or 0 on
 * revision 1) before a batch. Inferred: revision 2 queues at most 63, so
 * 0 = full; revision 1's count wraps, so 0 = empty or full, which is why
 * its waits accept 0 and why the spec's reset value is 0. A model:
 * free = (64 - used) mod 64 on revision 1; 63 - used on revision 2.
 * The kernel textport path writes map 17 (entries 0x1100 + i) without
 * effectively waiting [E, k:crime_tp:crime_mapcolor].
 */
#define GBE_CMAP_FIFO_LOW_WATER 48  /* [E, X server threshold] */
#define GBE_CMAP_FIFO_DEPTH     64  /* revision 1 [E, gbe-spec]; 63 on revision 2 [I, ide.IP32 waits] */

/* ---- Gamma ---------------------------------------------------------------- */
#define GBE_GMAP(n)         (0x60000 + 4 * (n)) /* 256 entries [E] */
/* gbeGmapInit loads a linear ramp i * 0x01010100, or a table from crime_init
 * .data when gbe_gammawar is set [E, k:crime_init:gbeGmapInit]. */

/* ---- Video capture (+0x80000) --------------------------------------------- */
/* VC_0/VC_1 region bounds, VC_2 mode, VC_3 field and descriptor control;
 * VC_4 to VC_8 hold the ten capture tile addresses, two 16-bit entries per
 * register with the earlier tile in the upper half [E, gbe-spec pp. 47-48].
 * VC_8 has no read path. Fields: generated/c/gbe.h. */
#define GBE_VC_0            0x80000
#define GBE_VC_1            0x80004
#define GBE_VC_2            0x80008
#define GBE_VC_3            0x8000c
#define GBE_VC_TILES(n)     (0x80010 + 4 * (n)) /* n = 0..4: VC_4..VC_8 [E] */

/* ---- Cursor --------------------------------------------------------------- */
#define GBE_CRS_POS         0x70000
#define GBE_CRS_CTL         0x70004 /* bit 0 enable */
/* The retrace handler disables the cursor (CRS_CTL = 0), writes CRS_POS,
 * flushes, and re-enables it [E, crimeRetraceHandler]; why is [U]. */
#define GBE_CRS_CMAP(n)     (0x70008 + 4 * (n))
#define GBE_CRS_GLYPH(n)    (0x78000 + 4 * (n))

/* ---- Interrupts ------------------------------------------------------------ */
/* GBE lines 0-3 reach CRIME inputs 16-19; see CRIME.h. Line 0 is the
 * retrace handler, line 1 pre-blank [E]. Each fires when vt_y equals its
 * programmed line (VT_INTR01: line1 11:0, line0 23:12; VT_INTR23: line3,
 * line2) and is latched in CRIME, which software can only clear [E, rev 1.1
 * gbe-spec p.20]. IRIX programs line 1 at vblank start - 32 and line 0 at
 * vblank start + 4, wrapped at the frame total [E, k:crime_retrace:
 * gbeCacheVtInfo]. Lines 2 (VT_INTR23 23:12, CRIME input 18) and 3
 * (11:0, input 19) belong to the kernel's high-level interrupt scheduler,
 * which multiplexes per-frame line requests over them and parks an idle
 * line at 0xfff [E, k:crime_retrace 0x2a64-0x316c, crime:crimeInterrupt;
 * devices/gbe/gbe.md]. */

#endif /* GBE_H */
