s32 RRM_CheckValidFault(void *);                    /* extern */
M2C_UNK bcopy(s32 *, s32 *, s32, M2C_UNK);          /* extern */
M2C_UNK bzero(s64, M2C_UNK);                        /* extern */
M2C_UNK cmn_err(M2C_UNK, M2C_UNK, s32);             /* extern */
s32 crmFifoWait(s64, M2C_UNK, M2C_UNK);             /* extern */
M2C_UNK crmIdleWait(void *, M2C_UNK);               /* extern */
M2C_UNK crmLoadTlbABC(void *, M2C_UNK, M2C_UNK, void *); /* extern */
s32 crmNextIncarnation(s32, s64);                   /* extern */
M2C_UNK flushbus(M2C_UNK, M2C_UNK);                 /* extern */
M2C_UNK get_ust_nano(void *);                       /* extern */
M2C_UNK init_mutex(s32, M2C_UNK, M2C_UNK, M2C_UNK); /* extern */
M2C_UNK init_sema(void *, M2C_UNK, M2C_UNK, M2C_UNK); /* extern */
M2C_UNK kern_free(void *, void *, s32, s32);        /* extern */
s64 kern_malloc(M2C_UNK);                           /* extern */
s32 kvtophys(void *, M2C_UNK, u32, void *);         /* extern */
M2C_UNK mraccessf(void *, M2C_UNK, s32);            /* extern */
s32 mrtryaccess(s64, s64, u8, s32);                 /* extern */
M2C_UNK mrunlock(void *);                           /* extern */
M2C_UNK mutex_lock(void *, M2C_UNK, s32, s32);      /* extern */
M2C_UNK mutex_unlock(void *, u8);                   /* extern */
s32 psema(void *, M2C_UNK);                         /* extern */
M2C_UNK rrmDoUnMapGfx(void *);                      /* extern */
M2C_UNK rrmInvalidateRN(void *, void *, M2C_UNK);   /* extern */
M2C_UNK rrmValidateBuffer(void *, u8, u8, u8);      /* extern */
M2C_UNK rrmValidateMGRSwapBuf(void *, s32, u8, u8); /* extern */
M2C_UNK rrmValidateRetrace(void *);                 /* extern */
M2C_UNK rrmValidateVideoSync(void *);               /* extern */
M2C_UNK semahistoff(void *);                        /* extern */
s64 splprof(s32);                                   /* extern */
M2C_UNK splx(s64);                                  /* extern */
s32 *tile_mapin(s32, M2C_UNK);                      /* extern */
M2C_UNK tile_mapout(s32 *, s32 *, void *, s32);     /* extern */
M2C_UNK untimeout(s32, M2C_UNK, s32, void *);       /* extern */
M2C_UNK update_ust();                               /* extern */
M2C_UNK vsema(void *, u8, u8, u8);                  /* extern */
void crime_i2cFpGbeRetrace(s32 *arg0, void *arg1);  /* static */

void crimeRetraceInit(void *arg0) {
    s64 sp10;
    s64 temp_v0;

    temp_v0 = kern_malloc(0x350);
    sp10 = temp_v0;
    bzero(temp_v0, 0x350);
    M2C_FIELD(arg0, s32 *, 0x8C) = (s32) temp_v0;
    *saved_reg_gp = (s32) temp_v0;
    M2C_FIELD(temp_v0, s8 *, 0x1C) = 0;
    M2C_FIELD(temp_v0, s32 *, 0x20) = 0;
    M2C_FIELD(temp_v0, s32 *, 0x328) = 0xFFFFFF;
    init_mutex(temp_v0 + 0x348, 0, 0, -1);
}

void gbeCacheVtInfo(void *arg0, void *arg1) {
    s64 sp0;
    s16 temp_a3_2;
    s16 temp_a4;
    s16 var_a4;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 var_t8;
    u16 temp_at;
    void *temp_s0;
    void *temp_s1;
    void *temp_v0;

    if (arg0 != NULL) {
        temp_s0 = M2C_FIELD(arg0, void **, 0x8C);
        temp_s1 = M2C_FIELD(arg0, void **, 0x80);
        if (arg1 == NULL) {
            temp_v0 = M2C_FIELD(arg0, void **, 0x84);
            M2C_FIELD(temp_v0, s32 *, 0x58) = (s32) (-2 & M2C_FIELD(temp_v0, s32 *, 0x58));
            M2C_FIELD(temp_v0, s32 *, 0x54) = (s32) (-2 & M2C_FIELD(temp_v0, s32 *, 0x54));
            M2C_FIELD(temp_v0, s32 *, 0x50) = (s32) (-2 & M2C_FIELD(temp_v0, s32 *, 0x50));
            temp_a3 = -2 & M2C_FIELD(temp_v0, s32 *, 0x4C);
            M2C_FIELD(temp_v0, s32 *, 0x4C) = temp_a3;
            temp_a2 = -2 & M2C_FIELD(temp_v0, s32 *, 0);
            M2C_FIELD(temp_v0, s32 *, 0) = temp_a2;
            M2C_FIELD(temp_v0, s32 *, 4) = (s32) (-2 & M2C_FIELD(temp_v0, s32 *, 4));
            M2C_FIELD(temp_v0, s32 *, 8) = (s32) (-2 & M2C_FIELD(temp_v0, s32 *, 8));
            if (temp_s0 != NULL) {
                if (*saved_reg_gp == 0) {
                    mutex_lock(temp_s0 + 0x348, 0x19, temp_a2, temp_a3);
                }
                M2C_FIELD(temp_s0, u16 *, 8) = 0xFFFU;
                M2C_FIELD(temp_s0, s16 *, 0xA) = 0xFFF;
                sp0 = temp_s1 + 0x10000;
                M2C_FIELD(temp_s1, s32 *, 0x10020) = 0xFFFFFF;
                flushbus();
                M2C_FIELD(temp_s0, s32 *, 0x328) = 0xFFFFFF;
                M2C_FIELD(sp0, s32 *, 0x24) = 0xFFFFFF;
                flushbus();
                if (*saved_reg_gp == 0) {
                    mutex_unlock(temp_s0 + 0x348);
                }
            }
        } else {
            temp_a4 = M2C_FIELD(arg1, s16 *, 0x20);
            M2C_FIELD(temp_s0, s16 *, 0xC) = temp_a4;
            M2C_FIELD(temp_s0, u16 *, 8) = (u16) (temp_a4 - 0x20);
            var_a4 = (temp_a4 + 4) & 0xFFFF;
            M2C_FIELD(temp_s0, s16 *, 0xA) = var_a4;
            temp_a3_2 = M2C_FIELD(arg1, s16 *, 0x1E);
            if (var_a4 >= temp_a3_2) {
                var_a4 = (var_a4 - temp_a3_2) & 0xFFFF;
                M2C_FIELD(temp_s0, s16 *, 0xA) = var_a4;
            }
            M2C_FIELD(temp_s1, s32 *, 0x10020) = (s32) (M2C_FIELD(temp_s0, u16 *, 8) | (var_a4 << 0xC));
            M2C_FIELD(temp_s0, s32 *, 0x20) = 0;
            temp_a3_3 = M2C_FIELD(arg1, s32 *, 4);
            var_t8 = temp_a3_3 & 2;
            if (temp_a3_3 & 0x10) {
                M2C_FIELD(temp_s0, s32 *, 0x20) = 0x10;
                var_t8 = M2C_FIELD(arg1, s32 *, 4) & 2;
            }
            if (var_t8 != 0) {
                M2C_FIELD(temp_s0, s32 *, 0x20) = 2;
            }
            M2C_FIELD(temp_s0, s32 *, 0x10) = (s32) ((M2C_FIELD(M2C_FIELD(arg0, void **, 0x7C), u16 *, 0x22) << 0xF) & 0x0FFF0000);
            temp_at = M2C_FIELD(arg1, u16 *, 0xA);
            M2C_FIELD(temp_s0, s8 *, 0x18) = 0;
            M2C_FIELD(temp_s0, u16 *, 0xE) = temp_at;
            M2C_FIELD(temp_s0, s16 *, 0x14) = (s16) ((temp_at * 2) - 1);
        }
    }
}

void crmInitGbeData(void *arg0) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a6;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a3;
    s32 var_a3_4;
    s32 var_a3_7;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a5_2;
    u16 temp_t2;
    u16 temp_t2_2;
    u16 temp_t9;
    u16 temp_t9_2;
    u32 var_a2_8;
    void *temp_s0;
    void *var_a3_2;
    void *var_a3_3;
    void *var_a3_5;
    void *var_a3_6;
    void *var_a3_8;
    void *var_a4_3;
    void *var_a6;
    void *var_a6_2;

    temp_s0 = M2C_FIELD(arg0, void **, 0x84);
    bzero((s64) temp_s0, 0x600);
    M2C_FIELD(M2C_FIELD(arg0, void **, 0x8C), u8 *, 0x1A) = (u8) *(u8 *)0x18;
    M2C_FIELD(M2C_FIELD(arg0, void **, 0x8C), u8 *, 0x1B) = (u8) *(u8 *)0x19;
    if (*saved_reg_gp != 0) {
        var_a2 = 0;
        temp_a4 = (s32) (*(u8 *)0x18 * *(u8 *)0x19) >> 1;
        var_a3 = 0;
        var_a6 = temp_s0;
        var_a5 = temp_a4 * 2;
        if ((temp_a4 < 1) == 0) {
loop_2:
            temp_a2 = var_a2 + 1;
            temp_a3 = var_a3 + 2;
            M2C_FIELD(var_a6, s16 *, 0x200) = (s16) (*(*(u8 *)8 + var_a3) & 0x1FFF);
            if (temp_a2 < temp_a4) {
                var_a2 = temp_a2 + 1;
                temp_t2 = *(*(u8 *)8 + temp_a3);
                var_a6 += 4;
                var_a3 = temp_a3 + 2;
                M2C_FIELD(var_a6, s16 *, 0x1FE) = (s16) (temp_t2 & 0x1FFF);
                if (var_a2 < temp_a4) {
                    goto loop_2;
                }
            }
            var_a3_2 = temp_s0;
            if (temp_a4 >= 1) {
                var_a2_2 = 0;
loop_6:
                temp_a2_2 = var_a2_2 + 1;
                temp_a5 = var_a5 + 2;
                M2C_FIELD(var_a3_2, s16 *, 0x300) = (s16) (*(*(u8 *)8 + var_a5) & 0x1FFF);
                if (temp_a2_2 < temp_a4) {
                    var_a2_2 = temp_a2_2 + 1;
                    temp_t9 = *(*(u8 *)8 + temp_a5);
                    var_a3_2 += 4;
                    var_a5 = temp_a5 + 2;
                    M2C_FIELD(var_a3_2, s16 *, 0x2FE) = (s16) (temp_t9 & 0x1FFF);
                    if (var_a2_2 < temp_a4) {
                        goto loop_6;
                    }
                }
            }
        }
    } else {
        var_a2_3 = 0;
        if (*(u8 *)4 > 0) {
            var_a4 = 0;
            var_a3_3 = temp_s0;
            do {
                M2C_FIELD(var_a3_3, s16 *, 0x200) = (s16) (*(*(u8 *)8 + var_a4) & 0x1FFF);
                var_a2_3 += 1;
                var_a3_3 += 2;
                var_a4 += 2;
            } while (var_a2_3 < *(u8 *)4);
        }
    }
    var_a2_4 = 0;
    temp_a6 = *(void *)4;
    if (*saved_reg_gp != 0) {
        var_a2_5 = 0;
        temp_a4_2 = temp_a6 >> 1;
        var_a3_4 = 0;
        var_a6_2 = temp_s0;
        var_a5_2 = temp_a4_2 * 2;
        if ((temp_a4_2 < 1) == 0) {
loop_11:
            temp_a2_3 = var_a2_5 + 1;
            temp_a3_2 = var_a3_4 + 2;
            M2C_FIELD(var_a6_2, s16 *, 0x120) = (s16) (*(*(void *)8 + var_a3_4) & 0x1FFF);
            if (temp_a2_3 < temp_a4_2) {
                var_a2_5 = temp_a2_3 + 1;
                temp_t2_2 = *(*(void *)8 + temp_a3_2);
                var_a6_2 += 4;
                var_a3_4 = temp_a3_2 + 2;
                M2C_FIELD(var_a6_2, s16 *, 0x11E) = (s16) (temp_t2_2 & 0x1FFF);
                if (var_a2_5 < temp_a4_2) {
                    goto loop_11;
                }
            }
            var_a2_6 = 0;
            if (temp_a4_2 >= 1) {
                var_a3_5 = temp_s0;
                var_a2_7 = 0;
loop_15:
                temp_a2_4 = var_a2_7 + 1;
                temp_a5_2 = var_a5_2 + 2;
                M2C_FIELD(var_a3_5, s16 *, 0x160) = (s16) (*(*(void *)8 + var_a5_2) & 0x1FFF);
                if (temp_a2_4 < temp_a4_2) {
                    var_a2_7 = temp_a2_4 + 1;
                    temp_t9_2 = *(*(void *)8 + temp_a5_2);
                    var_a3_5 += 4;
                    var_a5_2 = temp_a5_2 + 2;
                    M2C_FIELD(var_a3_5, s16 *, 0x15E) = (s16) (temp_t9_2 & 0x1FFF);
                    if (var_a2_7 < temp_a4_2) {
                        goto loop_15;
                    }
                }
                goto block_17;
            }
        } else {
            goto block_17;
        }
    } else {
        var_a3_6 = temp_s0;
        if (temp_a6 > 0) {
            var_a4_2 = 0;
            do {
                M2C_FIELD(var_a3_6, s16 *, 0x120) = (s16) (*(*(void *)8 + var_a4_2) & 0x1FFF);
                var_a2_4 += 1;
                var_a3_6 += 2;
                var_a4_2 += 2;
            } while (var_a2_4 < *(void *)4);
        }
block_17:
        var_a2_6 = 0;
    }
    var_a3_7 = 0;
    var_a4_3 = temp_s0;
    do {
        var_a4_3 += 0xC;
        var_a2_6 += 1;
        M2C_FIELD(var_a4_3, s32 *, 0x10) = 0;
        M2C_FIELD(var_a4_3, s32 *, 0x14) = 0;
        temp_a5_3 = *(*(void *)8 + var_a3_7) << 0x10;
        var_a3_7 += 2;
        M2C_FIELD(var_a4_3, s32 *, 0x18) = temp_a5_3;
    } while (var_a2_6 < 4);
    var_a2_8 = 0;
    var_a3_8 = temp_s0;
loop_21:
    var_a2_8 += 1;
    M2C_FIELD(var_a3_8, s16 *, 0xA0) = (s16) (M2C_FIELD(*(void *)8, u16 *, 6) & 0x1FFF);
    if (var_a2_8 < 0x40U) {
        var_a2_8 += 1;
        var_a3_8 += 4;
        M2C_FIELD(var_a3_8, s16 *, 0x9E) = (s16) (M2C_FIELD(*(void *)8, u16 *, 6) & 0x1FFF);
        if (var_a2_8 < 0x40U) {
            goto loop_21;
        }
    }
    M2C_FIELD(temp_s0, s32 *, 8) = kvtophys(temp_s0 + 0xA0, 0, var_a2_8, var_a3_8);
    M2C_FIELD(temp_s0, s32 *, 4) = kvtophys(temp_s0 + 0x120);
    M2C_FIELD(temp_s0, s32 *, 0) = kvtophys(temp_s0 + 0x160);
    M2C_FIELD(temp_s0, s32 *, 0x4C) = kvtophys(temp_s0 + 0x200);
    M2C_FIELD(temp_s0, s32 *, 0x50) = kvtophys(temp_s0 + 0x300);
    M2C_FIELD(temp_s0, s32 *, 0x54) = kvtophys(temp_s0 + 0x400);
    M2C_FIELD(temp_s0, s32 *, 0x58) = kvtophys(temp_s0 + 0x500);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x30, 0x34, 0x48, 0x4c], gap at: 0x40. */
void crmLoadGbelists(void *arg0, void *arg1) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s16 temp_ra;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_a7_4;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_lo_5;
    s32 temp_lo_6;
    s32 temp_lo_7;
    s32 temp_t8;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a2_4;
    s32 var_a2_5;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a5;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_a7_3;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_t0_3;
    s32 var_t0_4;
    s32 var_t0_5;
    s32 var_t0_6;
    s32 var_t1;
    s32 var_t1_2;
    s32 var_t2;
    s32 var_t3;
    u16 temp_t8_2;
    u8 temp_a4;
    u8 temp_t1;
    void *temp_s0;
    void *var_a0;
    void *var_a0_2;
    void *var_a0_3;
    void *var_a5_2;
    void *var_a5_3;
    void *var_a5_4;

    temp_ra = M2C_FIELD(arg1, s16 *, 8);
    temp_a7 = M2C_FIELD(arg1, s16 *, 0xA) + 0x7F;
    temp_s0 = M2C_FIELD(arg0, void **, 0x84);
    var_a5 = (s32) (((u32) (temp_a7 >> 6) >> 0x19) + temp_a7) >> 7;
    temp_a4 = *(s32 *)0x14;
    var_t3 = var_a5;
    if (*(s32 *)4 != 0) {
        temp_lo = 0x200 / (s32) temp_a4;
        temp_lo_2 = (s32) ((temp_lo + temp_ra) - 1) / temp_lo;
        M2C_TRAP_IF(temp_a4 == 0);
        var_a2 = M2C_FIELD(arg1, s32 *, 4) & 2;
        M2C_TRAP_IF(temp_lo == 0);
        temp_a7_2 = temp_lo_2 - 1;
        if (var_a2 != 0) {
            var_t3 = var_a5 * 2;
        }
        sp10 = var_t3 >= 1;
        if ((var_t3 < 1) == 0) {
            var_t0 = 0;
            var_a5_2 = temp_s0;
            do {
                temp_lo_3 = var_t0 * *(s32 *)0x18;
                var_a2_2 = 0;
                var_t0 += 1;
                if (temp_a7_2 >= 0) {
                    var_a4 = temp_lo_3 * 2;
loop_7:
                    temp_a4_2 = var_a4 + 2;
                    temp_a2 = var_a2_2 + 1;
                    var_a5_2 += 2;
                    M2C_FIELD(var_a5_2, s16 *, 0x1FE) = (s16) (M2C_FIELD((*(s32 *)8 + temp_a4_2), u16 *, -2) & 0x1FFF);
                    if (temp_a7_2 >= temp_a2) {
                        var_a4 = temp_a4_2 + 2;
                        var_a2_2 = temp_a2 + 1;
                        var_a5_2 += 2;
                        M2C_FIELD(var_a5_2, s16 *, 0x1FE) = (s16) (M2C_FIELD((*(s32 *)8 + var_a4), u16 *, -2) & 0x1FFF);
                        if (temp_a7_2 >= var_a2_2) {
                            goto loop_7;
                        }
                    }
                }
            } while (var_t0 < var_t3);
            var_a2 = M2C_FIELD(arg1, s32 *, 4) & 2;
        }
        temp_a7_3 = temp_lo_2 - 1;
        unksp38 = ((u32) var_t3 >> 0x1F) + var_t3;
        if (var_a2 != 0) {
            var_t3 = unksp38 >> 1;
            var_a5_3 = temp_s0;
            var_t0_2 = var_t3;
            if (var_t3 > 0) {
                var_t1 = 1;
                do {
                    var_a4_2 = 0;
                    if (temp_lo_2 >= 1) {
                        var_a2_3 = var_t0_2 * *(s32 *)0x18 * 2;
loop_16:
                        temp_a2_2 = var_a2_3 + 2;
                        temp_a4_3 = var_a4_2 + 1;
                        var_a5_3 += 2;
                        M2C_FIELD(var_a5_3, s16 *, 0x2FE) = (s16) (M2C_FIELD((*(s32 *)8 + temp_a2_2), u16 *, -2) & 0x1FFF);
                        if (temp_a7_3 >= temp_a4_3) {
                            var_a2_3 = temp_a2_2 + 2;
                            var_a4_2 = temp_a4_3 + 1;
                            var_a5_3 += 2;
                            M2C_FIELD(var_a5_3, s16 *, 0x2FE) = (s16) (M2C_FIELD((*(s32 *)8 + var_a2_3), u16 *, -2) & 0x1FFF);
                            if (temp_a7_3 >= var_a4_2) {
                                goto loop_16;
                            }
                        }
                    }
                    var_t0_2 += 1;
                    var_t1 += 1;
                } while (var_t1 < var_t3);
            }
        } else {
            temp_a7_4 = temp_lo_2 - 1;
            var_a5_4 = temp_s0;
            var_t0_3 = var_t3;
            if (*saved_reg_gp != NULL) {
                if (sp10 != 0) {
                    var_t1_2 = 1;
                    do {
                        var_a2_4 = 0;
                        if (temp_lo_2 >= 1) {
                            var_a4_3 = var_t0_3 * *(s32 *)0x18 * 2;
loop_50:
                            temp_a4_4 = var_a4_3 + 2;
                            temp_a2_3 = var_a2_4 + 1;
                            var_a5_4 += 2;
                            M2C_FIELD(var_a5_4, s16 *, 0x2FE) = (s16) (M2C_FIELD((*(s32 *)8 + temp_a4_4), u16 *, -2) & 0x1FFF);
                            if (temp_a7_4 >= temp_a2_3) {
                                var_a4_3 = temp_a4_4 + 2;
                                var_a2_4 = temp_a2_3 + 1;
                                var_a5_4 += 2;
                                M2C_FIELD(var_a5_4, s16 *, 0x2FE) = (s16) (M2C_FIELD((*(s32 *)8 + var_a4_3), u16 *, -2) & 0x1FFF);
                                if (temp_a7_4 >= var_a2_4) {
                                    goto loop_50;
                                }
                            }
                        }
                        var_t0_3 += 1;
                        var_t1_2 += 1;
                    } while (var_t1_2 < var_t3);
                }
                var_t3 *= 2;
            }
        }
        M2C_FIELD(M2C_FIELD(arg0, void **, 0x8C), s8 *, 0x1A) = (s8) temp_lo_2;
        M2C_FIELD(M2C_FIELD(arg0, void **, 0x8C), s8 *, 0x1B) = (s8) var_t3;
        temp_a6 = M2C_FIELD(arg1, s16 *, 0xA) + 0x7F;
        var_a5 = (s32) (((u32) (temp_a6 >> 6) >> 0x19) + temp_a6) >> 7;
    }
    temp_t1 = *(void *)0x14;
    temp_lo_4 = 0x200 / (s32) temp_t1;
    var_a2_5 = M2C_FIELD(arg1, s32 *, 4) & 2;
    var_t2 = var_a5;
    M2C_TRAP_IF(temp_t1 == 0);
    if (var_a2_5 != 0) {
        var_t2 = var_a5 * 2;
    }
    var_a7 = 0;
    sp20 = (temp_lo_4 + temp_ra) - 1;
    sp18 = var_t2 >= 1;
    if ((var_t2 < 1) == 0) {
        M2C_TRAP_IF(temp_lo_4 == 0);
        var_t0_4 = 0;
        var_a0 = temp_s0;
        temp_a5 = ((s32) ((temp_lo_4 + temp_ra) - 1) / temp_lo_4) - 1;
        do {
            temp_lo_5 = var_t0_4 * *(void *)0x18;
            var_a2_6 = 0;
            var_t0_4 += 1;
            if (temp_a5 >= 0) {
                var_a6 = temp_lo_5 * 2;
                do {
                    var_a6 += 2;
                    var_a2_6 += 1;
                    var_a0 += 2;
                    var_a7 += 1;
                    M2C_FIELD(var_a0, s16 *, 0x11E) = (s16) (M2C_FIELD((*(void *)8 + var_a6), u16 *, -2) & 0x1FFF);
                } while (temp_a5 >= var_a2_6);
            }
        } while (var_t0_4 < var_t2);
        var_a2_5 = M2C_FIELD(arg1, s32 *, 4) & 2;
    }
    unksp40 = (s64) ((u32) var_t2 >> 0x1F);
    if (var_a2_5 != 0) {
        var_a2_7 = 0;
        var_a7_2 = (s32) (unksp40 + var_t2) >> 1;
        var_a0_2 = temp_s0;
        temp_t8 = var_a7_2 - 1;
        if (var_a7_2 > 0) {
            temp_lo_6 = sp20 / temp_lo_4;
            var_a2_7 = 0;
            M2C_TRAP_IF(temp_lo_4 == 0);
            var_t0_5 = 1;
            do {
                var_a6_2 = 0;
                if (temp_lo_6 >= 1) {
                    var_a1 = var_a7_2 * *(void *)0x18 * 2;
                    do {
                        var_a1 += 2;
                        var_a6_2 += 1;
                        var_a0_2 += 2;
                        var_a2_7 += 2;
                        M2C_FIELD(var_a0_2, s16 *, 0x15E) = (s16) (M2C_FIELD((*(void *)8 + var_a1), u16 *, -2) & 0x1FFF);
                    } while ((temp_lo_6 - 1) >= var_a6_2);
                }
                var_a7_2 += 1;
                var_t0_5 += 1;
            } while (temp_t8 >= var_t0_5);
        }
    } else {
        var_a2_7 = var_a7 * 2;
        var_a7_3 = var_t2;
        var_a0_3 = temp_s0;
        if (*saved_reg_gp != NULL) {
            if (sp18 != 0) {
                temp_lo_7 = (s32) ((temp_lo_4 + temp_ra) - 1) / temp_lo_4;
                M2C_TRAP_IF(temp_lo_4 == 0);
                var_a2_7 = 0;
                var_t0_6 = 1;
                do {
                    var_a1_2 = 0;
                    if (temp_lo_7 >= 1) {
                        var_a6_3 = var_a7_3 * *(void *)0x18 * 2;
                        do {
                            var_a1_2 += 1;
                            var_a0_3 += 2;
                            temp_t8_2 = *(*(void *)8 + var_a6_3);
                            var_a2_7 += 2;
                            var_a6_3 += 2;
                            M2C_FIELD(var_a0_3, s16 *, 0x15E) = (s16) (temp_t8_2 & 0x1FFF);
                        } while ((temp_lo_7 - 1) >= var_a1_2);
                    }
                    var_a7_3 += 1;
                    var_t0_6 += 1;
                } while (var_t0_6 < var_t2);
            } else {
                var_a2_7 = 0;
            }
        }
    }
    bcopy(temp_s0 + 0x120, *saved_reg_gp, var_a2_7, 0x200);
    M2C_FIELD(temp_s0, s32 *, 0x58) = (s32) (M2C_FIELD(temp_s0, s32 *, 0x58) | 1);
    M2C_FIELD(temp_s0, s32 *, 0x54) = (s32) (M2C_FIELD(temp_s0, s32 *, 0x54) | 1);
    M2C_FIELD(temp_s0, s32 *, 0x50) = (s32) (M2C_FIELD(temp_s0, s32 *, 0x50) | 1);
    M2C_FIELD(temp_s0, s32 *, 0x4C) = (s32) (M2C_FIELD(temp_s0, s32 *, 0x4C) | 1);
    M2C_FIELD(temp_s0, s32 *, 0) = (s32) (M2C_FIELD(temp_s0, s32 *, 0) | 1);
    M2C_FIELD(temp_s0, s32 *, 4) = (s32) (M2C_FIELD(temp_s0, s32 *, 4) | 1);
    M2C_FIELD(temp_s0, s32 *, 8) = (s32) (M2C_FIELD(temp_s0, s32 *, 8) | 1);
}

void crimeBlankscreen(void *arg0, s8 arg1) {
    s32 temp_a2;
    void *temp_a5;

    temp_a5 = M2C_FIELD(arg0, void **, 0x8C);
    M2C_FIELD(temp_a5, s8 *, 0x19) = arg1;
    temp_a2 = *saved_reg_gp;
    if (M2C_FIELD(M2C_FIELD(arg0, void **, 0x7C), u8 *, 0x2E) != 0x84) {
        if ((arg1 & 0xFF) != 2) {
            if (temp_a2 != 0) {
                M2C_FIELD(M2C_FIELD(arg0, void **, 0x80), s32 *, 0x1002C) = (s32) ((((M2C_FIELD(temp_a5, u16 *, 0xE) + 1) & 0xFFF) << 0xC) | 1);
            }
        } else if (temp_a2 != 0) {
            M2C_FIELD(M2C_FIELD(arg0, void **, 0x80), s32 *, 0x1002C) = 0xFFF001;
        }
    }
}

s32 crime_retrace_callback(s32 arg1, s32 arg2) {
    M2C_FIELD(saved_reg_gp, s32 *, -0x77E4) = arg2;
    M2C_FIELD(saved_reg_gp, s32 *, -0x77E8) = arg1;
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x48, 0x4c], gap at: 0x38. */
s32 crimeRetraceHandler(void *arg1) {
    M2C_UNK (*temp_a1)(s32, M2C_UNK, void *);
    s32 temp_a1_3;
    s32 temp_a3;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a4;
    s32 temp_a6;
    s32 temp_s2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_at;
    s32 var_s3;
    s32 var_s8;
    u8 temp_a1_2;
    u8 temp_a2_2;
    u8 temp_a3_2;
    void *temp_a2;
    void *temp_s1;
    void *temp_s5;
    void *var_a1;
    void *var_a4;
    void *var_s0;
    void *var_s0_2;
    void *var_s2;
    void *var_s7;

    temp_s1 = M2C_FIELD(arg1, void **, 0x8C);
    temp_s5 = M2C_FIELD(arg1, void **, 0x80);
    mutex_lock(temp_s1 + 0x348, 0x19);
    *(s64 *)0xB4000028 = ((*(s64 *)0xB4000028 << 0) & 0xFFFEFFFF) << 0;
    M2C_FIELD(temp_s5, s32 *, 0x10020) = (s32) (M2C_FIELD(temp_s1, u16 *, 8) | (M2C_FIELD(temp_s1, u16 *, 0xA) << 0xC));
    flushbus(0xB4000000, 0xFFFEFFFF);
    M2C_FIELD(temp_s1, s64 *, 0) = (s64) (M2C_FIELD(temp_s1, s64 *, 0) + 1);
    temp_a2 = M2C_FIELD(saved_reg_gp, void **, 0);
    temp_a1 = M2C_FIELD(saved_reg_gp, M2C_UNK (**)(s32, M2C_UNK, void *), -0x77E8);
    M2C_FIELD(temp_a2, s32 *, 0x10) = (s32) (M2C_FIELD(temp_a2, s32 *, 0x10) + 1);
    if (temp_a1 != NULL) {
        temp_a1(M2C_FIELD(saved_reg_gp, s32 *, -0x77E4), temp_a1, temp_a2);
    }
    var_a5 = 1;
    if (M2C_FIELD(temp_s1, s32 *, 0x20) == 2) {
        if ((M2C_FIELD(temp_s1, s64 *, 0) & 1) == 1) {
            M2C_FIELD(temp_s5, s32 *, 0x10018) = 0x40;
            M2C_FIELD(temp_s5, s32 *, 0x10018) = 0;
        }
    }
    var_s2 = temp_s5 + 0x50000;
    if (M2C_FIELD(temp_s1, s32 *, 0x20) == 0x10) {
        var_a4 = temp_s5 + 0x50000;
        if (M2C_FIELD(temp_s1, u8 *, 0x1C) != 0) {
            M2C_FIELD(temp_s1, u8 *, 0x1C) = 0U;
            if (!(M2C_FIELD(temp_s1, s64 *, 0) & 1)) {
                M2C_FIELD(temp_s5, s32 *, 0x10018) = 0x40;
                var_a5 = 2;
                M2C_FIELD(temp_s5, s32 *, 0x10018) = 0;
            }
            var_a1 = temp_s1;
            var_a3 = 1;
loop_39:
            if (M2C_FIELD(var_a1, u8 *, 0x3A) != 0) {
                M2C_FIELD(var_a4, s32 *, -0x8000) = (s32) (var_a5 | (-4 & M2C_FIELD(var_a1, s32 *, 0x24)));
                M2C_FIELD(temp_s1, u8 *, 0x1C) = 1U;
            }
            temp_a3 = var_a3 + 1;
            if (var_a3 < 0x20) {
                temp_a6 = temp_a3 < 0x20;
                if (M2C_FIELD(var_a1, u8 *, 0x52) != 0) {
                    M2C_FIELD(var_a4, s32 *, -0x7FFC) = (s32) (var_a5 | (-4 & M2C_FIELD(var_a1, s32 *, 0x3C)));
                    M2C_FIELD(temp_s1, u8 *, 0x1C) = 1U;
                }
                var_a4 += 8;
                var_a3 = temp_a3 + 1;
                var_a1 += 0x30;
                if (temp_a6 != 0) {
                    goto loop_39;
                }
            }
        }
    }
    var_s3 = 0;
    var_s0 = temp_s1;
    var_s8 = 0;
    if ((M2C_FIELD(temp_s1, u8 *, 0x17) != 0) && ((M2C_FIELD(temp_s1, s32 *, 0x20) == 0) || !(M2C_FIELD(temp_s1, s64 *, 0) & 1))) {
        var_s7 = M2C_FIELD(arg1, void **, 4);
loop_19:
        var_a3_2 = 0;
        if (M2C_FIELD(var_s0, u8 *, 0x38) != 0) {
            temp_a4 = M2C_FIELD(var_s0, s32 *, 0x30);
            if (temp_a4 < 2) {
                temp_a1_2 = M2C_FIELD(var_s0, u8 *, 0x39);
                if ((M2C_FIELD(var_s0, void **, 0x2C) != var_s7) || (temp_a1_2 != 0)) {
                    goto block_23;
                }
                if (!(0x10000000 & M2C_FIELD(M2C_FIELD(arg1, void **, 0x78), s32 *, 0x4000))) {
                    var_a3_2 = 1;
                    M2C_FIELD(var_s0, s32 *, 0x30) = 1;
                }
                if (var_a3_2 == 0) {
block_23:
                    if (temp_a1_2 != 1) {
                        M2C_FIELD(var_s0, s32 *, 0x30) = 0;
                        temp_a3_2 = M2C_FIELD(temp_s1, u8 *, 0x17) - 1;
                        M2C_FIELD(temp_s1, u8 *, 0x17) = temp_a3_2;
                        temp_a2_2 = M2C_FIELD(var_s0, u8 *, 0x39);
                        if (temp_a2_2 != 0) {
                            var_s8 += 1;
                            if (var_s8 == 1) {
                                vsema(saved_reg_gp, temp_a1_2, temp_a2_2, temp_a3_2);
                            }
                            M2C_FIELD(var_s0, u8 *, 0x38) = 0U;
                        } else {
                            M2C_FIELD(var_s2, s32 *, -0x8000) = (s32) M2C_FIELD(var_s0, s32 *, 0x28);
                            M2C_FIELD(var_s0, s32 *, 0x24) = (s32) M2C_FIELD(var_s0, s32 *, 0x28);
                            if (M2C_FIELD(var_s0, u8 *, 0x38) != 2) {
                                var_s7 = M2C_FIELD(var_s0, void **, 0x2C);
                                rrmValidateBuffer(var_s7, temp_a1_2, temp_a2_2, temp_a3_2);
                                M2C_FIELD(M2C_FIELD(var_s7, void **, 0x4C), s8 *, 0x550) = 0;
                            } else {
                                rrmValidateMGRSwapBuf(M2C_FIELD(arg1, void **, 0), M2C_FIELD(var_s0, s32 *, 0x34), temp_a2_2, temp_a3_2);
                            }
                            M2C_FIELD(var_s0, u8 *, 0x38) = 0U;
                            M2C_FIELD(var_s0, s32 *, 0x34) = 0;
                            M2C_FIELD(var_s0, void **, 0x2C) = NULL;
                        }
                    } else {
                        M2C_FIELD(var_s0, s32 *, 0x30) = 1;
                    }
                }
            } else {
                var_a5_2 = temp_a4 - 1;
                if ((M2C_FIELD(saved_reg_gp, void **, 0) == NULL) || (var_a5_2 = temp_a4 - 1, ((M2C_FIELD(temp_s1, u8 *, 0x18) & 1) == 0))) {
                    M2C_FIELD(var_s0, s32 *, 0x30) = var_a5_2;
                }
            }
        }
        var_s3 += 1;
        var_s0 += 0x18;
        var_s2 += 4;
        if (var_s3 < 0x20) {
            goto loop_19;
        }
    }
    var_s0_2 = M2C_FIELD(temp_s1, void **, 0x340);
    if (var_s0_2 != NULL) {
        do {
            rrmValidateRetrace(var_s0_2);
            var_s0_2 = M2C_FIELD(var_s0_2, void **, 0x24);
        } while (var_s0_2 != NULL);
    }
    M2C_FIELD(temp_s1, void **, 0x340) = NULL;
    M2C_FIELD(arg1, s32 *, 0x50) = (s32) (M2C_FIELD(arg1, s32 *, 0x50) + 1);
    M2C_FIELD(arg1, s32 *, 0x4C) = (s32) (M2C_FIELD(arg1, s32 *, 0x4C) + 1);
    if (M2C_FIELD(arg1, s32 *, 0x54) != 0) {
        rrmValidateVideoSync(arg1);
    }
    if (M2C_FIELD(saved_reg_gp, void **, 0) != NULL) {
        if (M2C_FIELD(temp_s1, u8 *, 0x16) == 0) {
            temp_s2 = M2C_FIELD(temp_s5, s32 *, 0x70004);
            temp_a3_3 = M2C_FIELD(arg1, s32 *, 0x94);
            temp_a1_3 = temp_a3_3 & 0x0FFF0000;
            temp_a3_4 = temp_a3_3 & 0xFFF;
            if (temp_s2 & 1) {
                M2C_FIELD(temp_s5, s32 *, 0x70004) = 0;
                var_at = temp_a3_4 | temp_a1_3;
                if (M2C_FIELD(temp_s1, u8 *, 0x18) & 1) {
                    var_at = temp_a3_4 | (temp_a1_3 - M2C_FIELD(temp_s1, s32 *, 0x10));
                }
                M2C_FIELD(temp_s5, s32 *, 0x70000) = var_at;
                flushbus();
                M2C_FIELD(temp_s5, s32 *, 0x70004) = temp_s2;
            }
            M2C_FIELD(arg1, u8 *, 0x99) = 0U;
        }
    } else if (M2C_FIELD(arg1, u8 *, 0x99) != 0) {
        M2C_FIELD(temp_s5, s32 *, 0x70000) = (s32) M2C_FIELD(arg1, s32 *, 0x94);
        M2C_FIELD(arg1, u8 *, 0x99) = 0U;
    }
    if (M2C_FIELD(temp_s1, s32 *, 0x344) != 0) {
        crime_i2cFpGbeRetrace(temp_s1 + 0x344, temp_s5);
    }
    mutex_unlock((void *) subroutine_arg0);
    return 0;
}

void crime_i2cFpGbeRetrace(s32 *arg0, void *arg1) {
    s32 *var_a6;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a6;
    s32 var_a1;
    s32 var_a3_2;
    s32 var_a4;
    u8 *var_a3;
    u8 temp_t1;
    void *var_a4_2;

    temp_a6 = *arg0;
    var_a3 = NULL;
    if (temp_a6 == 2) {
        var_a4 = 0;
        var_a3_2 = 0;
        var_a6 = arg1 + 0x60000;
loop_2:
        temp_a3 = var_a3_2 + 1;
        *var_a6 = var_a4;
        temp_a4 = var_a4 + 0x01010100;
        var_a3_2 = temp_a3 + 1;
        if (temp_a3 < 0x100) {
            var_a6 += 8;
            M2C_FIELD(var_a6, s32 *, -4) = temp_a4;
            var_a4 = temp_a4 + 0x01010100;
            if (var_a3_2 < 0x100) {
                goto loop_2;
            }
        }
        *saved_reg_gp = 0;
        *arg0 = 0;
        return;
    }
    var_a4_2 = arg1 + 0x60000;
    var_a1 = 0;
    if (temp_a6 == 1) {
        do {
            temp_t1 = *var_a3;
            var_a3 += 1;
            var_a4_2 += 4;
            var_a1 += 1;
            M2C_FIELD(var_a4_2, s32 *, -4) = (s32) ((temp_t1 << 8) | ((temp_t1 << 0x10) | (temp_t1 << 0x18)));
        } while (var_a1 < 0x100);
        *saved_reg_gp = 1;
        *arg0 = 0;
    }
}

void crime_FpSchedForRetrace(void *arg0, s32 arg1) {
    u8 temp_a3;
    void *temp_a4;

    temp_a4 = M2C_FIELD(arg0, void **, 0x8C);
    M2C_FIELD(temp_a4, s32 *, 0x344) = 0;
    temp_a3 = M2C_FIELD(M2C_FIELD(arg0, void **, 0x7C), u8 *, 0x28);
    if (arg1 != 0) {
        if (temp_a3 != 0) {

        } else {
            M2C_FIELD(temp_a4, s32 *, 0x344) = 2;
        }
    } else if (temp_a3 == 0) {
        M2C_FIELD(temp_a4, s32 *, 0x344) = 1;
    }
}

void crimePreblankHandler(void *arg1, s32 arg3) {
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s16 *var_a5_5;
    s16 *var_a5_6;
    s16 *var_t3;
    s16 *var_t9;
    s32 *temp_a1;
    s32 *temp_a1_2;
    s32 *temp_v0_2;
    s32 *var_a2_2;
    s32 *var_a2_3;
    s32 *var_a5_3;
    s32 *var_a6;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a2;
    s32 temp_a2_5;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_lo;
    s32 temp_lo_3;
    s32 temp_s0;
    s32 temp_t2_3;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a2_6;
    s32 var_a2_7;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_ra;
    s32 var_s4;
    s32 var_t0_2;
    s32 var_t2;
    s32 var_t2_2;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s64 temp_lo_2;
    s64 temp_t2_2;
    s64 temp_v1;
    s64 var_t1;
    u16 *var_a6_2;
    u16 temp_a0_4;
    u16 temp_a2_4;
    u16 temp_v0_4;
    u32 temp_a2_2;
    u32 temp_a7;
    u32 var_a2;
    u32 var_a2_4;
    u32 var_a7;
    u32 var_s2;
    u8 *var_a7_2;
    u8 temp_a2_3;
    u8 temp_a4;
    u8 temp_at;
    u8 temp_ra;
    u8 temp_t2;
    u8 temp_v0_3;
    u8 var_a5_4;
    u8 var_t0;
    u8 var_t8;
    void *temp_a6;
    void *temp_s1;
    void *temp_s8;
    void *var_a0_2;
    void *var_a1_3;
    void *var_a2_5;
    void *var_s2_2;
    void *var_s3;
    void *var_v0;
    void *var_v0_5;

    var_a3 = arg3;
    temp_s8 = M2C_FIELD(arg1, void **, 0x84);
    temp_s1 = M2C_FIELD(arg1, void **, 0x8C);
    *(s64 *)0xB4000028 = ((*(s64 *)0xB4000028 << 0) & 0xFFFDFFFF) << 0;
    temp_a6 = temp_s8 + 0x1C;
    if (M2C_FIELD(arg1, u8 *, 0x98) & 4) {
        sp70 = (s64) M2C_FIELD(arg1, void **, 0x80);
        if (M2C_FIELD(temp_s1, s32 *, 0x20) == 2) {
            M2C_FIELD(temp_s1, u8 *, 0x18) = (u8) ((M2C_FIELD(temp_s1, u8 *, 0x18) & ~1) | (M2C_FIELD(temp_s1, s64 *, 0) & 1));
        }
        var_a5 = 3;
        var_a7 = 0;
        var_v0 = temp_a6;
        var_a0 = 0;
        var_a1 = 3;
loop_8:
        var_a2 = M2C_FIELD(var_v0, u32 *, 4);
        if (var_a2 != 1) {
            if (var_a2 == 2) {
                var_a1 = var_a0;
            }
        } else {
            var_a2 = M2C_FIELD(var_v0, u32 *, 0);
            var_a3 = var_a7 < var_a2;
            if (var_a3 != 0) {
                var_a7 = var_a2;
                if (var_a5 != 3) {
                    M2C_FIELD((temp_a6 + (var_a5 * 0xC)), s32 *, 4) = 0;
                }
                var_a5 = var_a0;
            } else {
                M2C_FIELD(var_v0, u32 *, 4) = 0U;
            }
        }
        temp_a0 = var_a0 + 1;
        if (temp_a0 < 3) {
            var_a2 = M2C_FIELD(var_v0, u32 *, 0x10);
            if (var_a2 != 1) {
                if (var_a2 == 2) {
                    var_a1 = temp_a0;
                }
            } else {
                var_a2 = M2C_FIELD(var_v0, u32 *, 0xC);
                var_a3 = var_a7 < var_a2;
                if (var_a3 != 0) {
                    var_a7 = var_a2;
                    if (var_a5 != 3) {
                        M2C_FIELD((temp_a6 + (var_a5 * 0xC)), s32 *, 4) = 0;
                        var_a7 = var_a2;
                    }
                    var_a5 = temp_a0;
                } else {
                    M2C_FIELD(var_v0, u32 *, 0x10) = 0U;
                }
            }
            var_a0 = temp_a0 + 1;
            var_v0 += 0x18;
            if (var_a0 < 3) {
                goto loop_8;
            }
        }
        if (var_a5 != 3) {
            temp_v0 = var_a5 * 2;
            M2C_FIELD(M2C_FIELD(arg1, void **, 0x80), s32 *, 0x40004) = (s32) (0x10000 | *(*(s32 *)8 + temp_v0));
            M2C_FIELD((temp_a6 + (var_a5 * 0xC)), s32 *, 4) = 2;
            if (var_a1 != 3) {
                var_a2 = (u32) (temp_a6 + (var_a1 * 0xC));
                M2C_FIELD(var_a2, s32 *, 4) = 0;
            }
            temp_a1 = M2C_FIELD(saved_reg_gp, s32 **, -0x77FC);
            temp_s0 = *(*(s32 *)8 + temp_v0) * 0x10;
            if (temp_a1 != NULL) {
                tile_mapout(temp_a1, temp_a1, (void *) var_a2, var_a3);
            }
            temp_v0_2 = tile_mapin(temp_s0, 0x10);
            temp_a0_2 = M2C_FIELD(temp_v0_2, s32 *, 0);
            M2C_FIELD(saved_reg_gp, s32 **, -0x77FC) = temp_v0_2;
            if ((u32) (temp_a0_2 & 0x7FF) >= (u16) M2C_FIELD(temp_s1, u16 *, 0x14)) {
                M2C_FIELD(temp_v0_2, s32 *, 4) = temp_a0_2;
                M2C_FIELD(temp_v0_2, s32 *, 0) = temp_a0_2 - M2C_FIELD(temp_s1, u16 *, 0xE);
            }
            var_a1_2 = 0;
            if (M2C_FIELD(saved_reg_gp, s32 *, 0) != 0) {
                var_a5_2 = 0;
                var_a2_2 = temp_v0_2;
loop_23:
                var_a2_2 += 4;
                if ((u32) (*var_a2_2 & 0x7FF) < (u16) M2C_FIELD(temp_s1, u16 *, 0xE)) {
                    var_a5_2 += 1;
                    var_v0_2 = var_a5_2 < 0x800;
                    if (var_v0_2 == 0) {
                        M2C_FIELD(saved_reg_gp, s32 **, -0x77FC) = NULL;
                    } else {
                        goto loop_23;
                    }
                } else {
                    var_a1_2 = var_a5_2;
                    var_v0_2 = var_a5_2 < 0x800;
                    M2C_FIELD(saved_reg_gp, s32 **, -0x77FC) = (s32 *) var_a5_2;
                }
                if (var_v0_2 != 0) {
                    var_a2_3 = &temp_v0_2[var_a5_2];
loop_29:
                    var_a2_3 += 4;
                    if ((u32) (*var_a2_3 & 0x7FF) >= (u16) M2C_FIELD(temp_s1, u16 *, 0x14)) {
                        var_s2 = (var_a5_2 - var_a1_2) + 1;
                        if ((var_s2 == 0) || (var_s2 >= 0x401U)) {
                            goto block_32;
                        }
                    } else {
                        var_a5_2 += 1;
                        var_s2 = 1 - var_a1_2;
                        if (var_a5_2 < 0x800) {
                            goto loop_29;
                        }
                        goto block_83;
                    }
                } else {
                    var_s2 = 1 - var_a1_2;
block_83:
                    if ((var_s2 != 0) && (var_s2 < 0x401U)) {

                    } else {
block_32:
                        var_s2 = 0;
                    }
                }
                temp_a2 = var_s2 * 4;
                M2C_FIELD(saved_reg_gp, s32 *, -0x77F8) = temp_a2;
                bcopy(temp_v0_2, NULL, temp_a2);
                var_a2_4 = 0;
                if (var_s2 != 0) {
                    temp_a7 = var_s2 - 1;
                    var_a5_3 = (s32 *)0x1000;
                    var_a6 = &temp_v0_2[(s32) M2C_FIELD(saved_reg_gp, s32 **, -0x77FC)];
loop_36:
                    temp_a2_2 = var_a2_4 + 1;
                    *var_a5_3 = M2C_FIELD(var_a6, s32 *, 0) - M2C_FIELD(temp_s1, u16 *, 0xE);
                    if (temp_a7 >= temp_a2_2) {
                        var_a2_4 = temp_a2_2 + 1;
                        temp_t3 = M2C_FIELD(var_a6, s32 *, 4);
                        var_a6 += 8;
                        var_a5_3 += 8;
                        M2C_FIELD(var_a5_3, s32 *, -4) = (s32) (temp_t3 - M2C_FIELD(temp_s1, u16 *, 0xE));
                        if (temp_a7 >= var_a2_4) {
                            goto loop_36;
                        }
                    }
                }
            }
        }
        if (M2C_FIELD(temp_s1, u8 *, 0x17) != 0) {
            if ((M2C_FIELD(temp_s1, s32 *, 0x20) == 0) || (M2C_FIELD(temp_s1, s64 *, 0) & 1)) {
                unksp90 = 0;
                var_a7_2 = sp10;
                sp38 = temp_s8 + 0x300;
                sp30 = temp_s8 + 0x200;
                var_a1_3 = subroutine_arg3;
                sp48 = temp_s8 + 0x500;
                var_t1 = 0;
                var_ra = subroutine_arg2;
                var_s4 = 0;
                sp50 = (s64) (arg1 + 0x1E4);
                var_s3 = arg1;
                sp40 = temp_s8 + 0x400;
                var_s2_2 = temp_s1;
                var_t9 = subroutine_arg1;
                var_t3 = subroutine_arg0;
loop_44:
                temp_v0_3 = M2C_FIELD(var_s2_2, u8 *, 0x39);
                if ((temp_v0_3 == 1) && (temp_a2_3 = M2C_FIELD(var_s2_2, u8 *, 0x38), (temp_a2_3 != 0)) && (var_a3_2 = M2C_FIELD(var_s2_2, s32 *, 0x30) < 2, (var_a3_2 != 0))) {
                    if (temp_a2_3 != 2) {
                        goto block_48;
                    }
                    if (M2C_FIELD(var_s2_2, s32 *, 0x34) != 0) {
                        var_a0_2 = M2C_FIELD(var_s3, void **, 0xB8);
                        if (var_a0_2 != NULL) {
                            var_a5_4 = M2C_FIELD(var_a0_2, u8 *, 8);
                            var_a2_5 = (void *) (temp_v0_3 | 2);
                            if (var_a5_4 != 0) {
                                if (M2C_FIELD(arg1, s32 *, 4) == 0) {
                                    goto block_53;
                                }
                                goto block_54;
                            }
                            goto block_106;
                        }
                        goto block_43;
                    }
block_48:
                    var_a2_5 = M2C_FIELD(var_s2_2, void **, 0x2C);
                    if ((var_a2_5 != NULL) && (M2C_FIELD(var_a2_5, s32 *, 0x50) != 0) && (var_a0_2 = M2C_FIELD(M2C_FIELD(M2C_FIELD(var_a2_5, void **, 0x4C), void **, 0xC), void **, 0x14), (var_a0_2 != NULL))) {
                        var_a5_4 = M2C_FIELD(var_a0_2, u8 *, 8);
                        if (var_a5_4 != 0) {
                            var_a3_2 = M2C_FIELD(arg1, s32 *, 4);
                            if (var_a2_5 == var_a3_2) {
block_53:
                                if (0x10000000 & M2C_FIELD(M2C_FIELD(arg1, void **, 0x78), s32 *, 0x4000)) {
                                    goto block_54;
                                }
                                goto block_43;
                            }
block_54:
                            var_t1 += 1;
                            spD0 = var_t1;
                            spE8 = (s64) var_a0_2;
                            if (var_t1 != 1) {
                                goto block_55;
                            }
                            var_a0_2 = (void *) spE8;
                            var_t1 = spD0;
                            if (mrtryaccess(sp50, (s64) var_a1_3, (u8) var_a2_5, var_a3_2) != 0) {
                                temp_a4 = M2C_FIELD(temp_s1, u8 *, 0x18) ^ 2;
                                M2C_FIELD(temp_s1, u8 *, 0x18) = temp_a4;
                                if (temp_a4 & 2) {
                                    var_t3 = (s16 *) sp40;
                                    var_t9 = (s16 *) sp48;
                                } else {
                                    var_t3 = (s16 *) sp30;
                                    var_t9 = (s16 *) sp38;
                                }
                                var_a7_2 = NULL;
                                var_t0 = M2C_FIELD(temp_s1, u8 *, 0x1B);
                                if (M2C_FIELD(saved_reg_gp, s32 *, 0) != 0) {
                                    var_t0 = (u8) ((s32) var_t0 >> 1);
                                }
                                var_ra = var_t0 * M2C_FIELD(temp_s1, u8 *, 0x1A);
                                sp18 = (s32) var_t0 >= 1;
                                if (((s32) var_t0 < 1) == 0) {
                                    var_a5_5 = var_t3;
                                    var_t2 = 0;
                                    do {
                                        temp_lo = var_t2 * *(u8 *)0x18;
                                        var_a2_6 = 0;
                                        var_t2 += 1;
                                        if ((s32) M2C_FIELD(temp_s1, u8 *, 0x1A) > 0) {
                                            var_v0_3 = temp_lo * 2;
                                            do {
                                                var_v0_3 += 2;
                                                *var_a5_5 = M2C_FIELD((*(u8 *)8 + var_v0_3), u16 *, -2) & 0x1FFF;
                                                var_a2_6 += 1;
                                                var_a5_5 += 2;
                                            } while (var_a2_6 < (s32) M2C_FIELD(temp_s1, u8 *, 0x1A));
                                        }
                                    } while (var_t2 < (s32) var_t0);
                                }
                                if (M2C_FIELD(saved_reg_gp, s32 *, 0) != 0) {
                                    if (sp18 != 0) {
                                        var_t8 = var_t0;
                                        var_a5_6 = var_t9;
                                        var_t2_2 = 1;
                                        do {
                                            temp_lo_2 = var_t8 * *(u8 *)0x18;
                                            var_v0_4 = 0;
                                            var_t8 += 1;
                                            sp20 = temp_lo_2;
                                            if ((s32) M2C_FIELD(temp_s1, u8 *, 0x1A) > 0) {
                                                var_a2_7 = sp20 * 2;
                                                do {
                                                    var_a2_7 += 2;
                                                    *var_a5_6 = M2C_FIELD((*(u8 *)8 + var_a2_7), u16 *, -2) & 0x1FFF;
                                                    var_v0_4 += 1;
                                                    var_a5_6 += 2;
                                                } while (var_v0_4 < (s32) M2C_FIELD(temp_s1, u8 *, 0x1A));
                                            }
                                            var_t2_2 += 1;
                                        } while (var_t2_2 < (s32) var_t0);
                                    }
                                }
                                unksp90 = 1;
                                var_a5_4 = M2C_FIELD(var_a0_2, u8 *, 8);
                                var_a1_3 = NULL;
block_55:
                                if ((s32) var_a5_4 > 0) {
                                    var_v0_5 = var_a0_2;
                                    var_t0_2 = 1;
loop_90:
                                    temp_t2 = M2C_FIELD(var_v0_5, u8 *, 0x14);
                                    temp_at = M2C_FIELD(temp_s1, u8 *, 0x1A);
                                    temp_a5 = (s32) temp_t2 >> 4;
                                    temp_lo_3 = temp_a5 * temp_at;
                                    var_v0_5 += 1;
                                    temp_t8 = temp_t2 & 0xF;
                                    temp_t2_2 = temp_t2 * 2;
                                    sp68 = temp_t2_2;
                                    var_a6_2 = M2C_FIELD(var_a1_3, s32 *, 8) + temp_t2_2;
                                    temp_a2_4 = *var_a6_2;
                                    temp_t2_3 = temp_t8 + temp_lo_3;
                                    if (temp_t8 < (s32) temp_at) {
                                        sp60 = temp_t2_3 < var_ra;
                                        temp_v1 = temp_t2_3 - var_ra;
                                        sp28 = temp_v1;
                                        sp58 = temp_v1 * 2;
                                        if (temp_a5 < (s32) M2C_FIELD(temp_s1, u8 *, 0x1B)) {
                                            if (sp60 == 0) {
                                                *(var_t9 + sp58) = temp_a2_4;
                                            } else {
                                                *(var_t3 + (temp_t2_3 * 2)) = temp_a2_4;
                                            }
                                            var_a6_2 = M2C_FIELD(var_a1_3, s32 *, 8) + sp68;
                                        }
                                    }
                                    temp_a3 = (temp_t8 + (temp_a5 * M2C_FIELD(var_a7_2, u8 *, 0x18))) * 2;
                                    *var_a6_2 = *(M2C_FIELD(var_a7_2, s32 *, 8) + temp_a3);
                                    *(M2C_FIELD(var_a7_2, s32 *, 8) + temp_a3) = temp_a2_4;
                                    var_t0_2 += 1;
                                    if (var_t0_2 < (s32) M2C_FIELD(var_a0_2, u8 *, 8)) {
                                        goto loop_90;
                                    }
                                }
                                M2C_FIELD(var_s2_2, u8 *, 0x39) = (u8) (M2C_FIELD(var_s2_2, u8 *, 0x39) | 2);
                                goto block_43;
                            }
                        } else {
                            var_a2_5 = (void *) (temp_v0_3 | 2);
block_106:
                            M2C_FIELD(var_s2_2, u8 *, 0x39) = (u8) var_a2_5;
                            goto block_43;
                        }
                    } else {
                        goto block_43;
                    }
                } else {
block_43:
                    var_s4 += 1;
                    temp_a0_3 = var_s4 < 0x20;
                    var_s2_2 += 0x18;
                    var_s3 += 4;
                    if (temp_a0_3 != 0) {
                        goto loop_44;
                    }
                    spD8 = (s64) var_a7_2;
                    spE0 = (s64) var_a1_3;
                    if (var_t1 != 0) {
                        M2C_FIELD(spD8, s32 *, 0x10) = crmNextIncarnation(temp_a0_3, (s64) var_a1_3);
                        M2C_FIELD(spE0, s32 *, 0x10) = crmNextIncarnation();
                    }
                }
            } else {
                unksp90 = 0;
            }
        } else {
            unksp90 = 0;
        }
        temp_v0_4 = M2C_FIELD(temp_s1, u16 *, 0xC);
        if ((((u32) M2C_FIELD(M2C_FIELD(arg1, void **, 0x80), u32 *, 0x10000) >> 0xC) & 0xFFF) >= (temp_v0_4 - 4)) {
            temp_a0_4 = M2C_FIELD(temp_s1, u16 *, 8);
            if ((temp_v0_4 - temp_a0_4) < 0x64) {
                M2C_FIELD(temp_s1, u16 *, 8) = (u16) (temp_a0_4 - 4);
            }
            if (M2C_FIELD(saved_reg_gp, s32 *, 0) != 0) {
                M2C_FIELD(temp_s1, s8 *, 0x16) = 1;
                if (unksp90 != 0) {
                    mrunlock(arg1 + 0x1E4);
                }
            } else {
                goto block_69;
            }
        } else {
            if (M2C_FIELD(saved_reg_gp, s32 *, 0) != 0) {
                temp_a1_2 = M2C_FIELD(saved_reg_gp, s32 **, -0x77FC);
                temp_ra = M2C_FIELD(temp_s1, u8 *, 0x18) ^ 1;
                temp_a2_5 = M2C_FIELD(saved_reg_gp, s32 *, -0x77F8);
                M2C_FIELD(temp_s1, s8 *, 0x16) = 0;
                M2C_FIELD(temp_s1, u8 *, 0x18) = temp_ra;
                if (temp_ra & 1) {
                    bcopy((s32 *)0x1000, temp_a1_2, temp_a2_5);
                } else {
                    bcopy(NULL, temp_a1_2, temp_a2_5);
                }
                M2C_FIELD(sp70, s32 *, 0x10030) = (s32) *(saved_reg_gp - 0x77F8 + ((M2C_FIELD(temp_s1, u8 *, 0x18) & 1) * 4));
            }
block_69:
            if (M2C_FIELD(temp_s1, u8 *, 0x19) != 0) {
                M2C_FIELD(sp70, s32 *, 0x20008) = (s32) M2C_FIELD(temp_s8, s32 *, 8);
            } else {
                M2C_FIELD(sp70, s32 *, 0x3000C) = (s32) M2C_FIELD((temp_s8 + (M2C_FIELD(temp_s1, u8 *, 0x18) * 4)), s32 *, 0x4C);
                if (M2C_FIELD(temp_s1, u8 *, 0x18) & 1) {
                    M2C_FIELD(sp70, s32 *, 0x20008) = (s32) M2C_FIELD(temp_s8, s32 *, 0);
                } else {
                    M2C_FIELD(sp70, s32 *, 0x20008) = (s32) M2C_FIELD(temp_s8, s32 *, 4);
                }
            }
            if (unksp90 != 0) {
                mrunlock(arg1 + 0x1E4);
            }
        }
    }
}

void crm_copy_swap_boxes(s64 arg0, s64 arg1, s64 arg2, s64 arg3) {
    s64 spC0;
    s64 spB8;
    u64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp88;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    u64 sp60;
    s64 sp58;
    s16 var_s1;
    s16 var_s3;
    s32 temp_s4;
    s32 temp_s4_2;
    s32 temp_s6;
    s32 temp_t1_2;
    s32 temp_t1_3;
    s32 temp_t2;
    s32 temp_t2_2;
    s32 temp_t3;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 var_s4;
    s32 var_s5;
    s32 var_s8;
    s32 var_t2;
    s64 temp_at;
    s64 temp_t1;
    s64 temp_v1;
    s64 var_s2;
    u32 var_t1;
    u64 var_t2_2;
    void *temp_a1;
    void *var_s0;

    spB8 = arg0;
    sp58 = arg1;
    sp98 = arg2;
    spA8 = arg3;
    sp78 = M2C_ERROR(/* Read from unset register $a4 */);
    sp80 = M2C_ERROR(/* Read from unset register $a5 */);
    sp88 = M2C_ERROR(/* Read from unset register $a6 */);
    sp60 = M2C_ERROR(/* Read from unset register $a7 */);
    if (M2C_ERROR(/* Read from unset register $a7 */) != 0) {
        var_t1 = 0;
        sp70 = (spB8 + 0x3038) | 0x800;
        sp68 = (spB8 + 0x20A0) | 0x800;
        var_t2 = 0U < 0x80U;
loop_4:
        if (var_t2 != 0) {
            var_t2_2 = var_t1 + 0x1F;
        } else {
            var_t2_2 = var_t1 + 0x7F;
        }
        var_s5 = 0;
        spB0 = var_t2_2;
        if (sp60 < var_t2_2) {
            spB0 = sp60;
        }
        var_s2 = sp58;
        if (sp98 > 0) {
loop_15:
            temp_a1 = M2C_FIELD(var_s2, void **, 0);
            var_s0 = M2C_FIELD(var_s2, void **, 4);
            if ((M2C_FIELD(temp_a1, s32 *, 0xC) - ((s32) (var_s0 - M2C_FIELD(temp_a1, s32 *, 0x114)) >> 3)) > 0) {
                spC0 = 0;
loop_17:
                var_s1 = M2C_FIELD(var_s0, s16 *, 2);
                if (spB0 >= (u32) var_s1) {
                    var_s3 = M2C_FIELD(var_s0, s16 *, 0);
                    temp_t1 = M2C_FIELD(var_s0, s16 *, 6) - 1;
                    spA0 = temp_t1;
                    temp_s6 = M2C_FIELD(var_s0, s16 *, 4) - 1;
                    temp_t1_2 = (temp_t1 - var_s1) + 1;
                    temp_t2 = temp_t1_2 & ~7;
                    var_s8 = (temp_s6 - var_s3) + 1;
                    var_s4 = temp_t1_2;
                    if (temp_t2 != 0) {
                        var_s4 = temp_t1_2 - temp_t2;
                        sp90 = var_s1 | (var_s3 << spA8);
                        var_s1 += temp_t2;
                        if (crmFifoWait(spB8, 4, 0xF4240) == 0) {
                            M2C_FIELD(spB8, s32 *, 0x3020) = (s32) sp90;
                            temp_t8 = (var_s1 - 1) | (sp78 | (temp_s6 << spA8));
                            M2C_FIELD(spB8, s32 *, 0x3028) = temp_t8;
                            M2C_FIELD(spB8, s32 *, 0x3030) = (s32) sp90;
                            *sp70 = temp_t8;
                            goto block_21;
                        }
                    } else {
block_21:
                        if (var_s4 != 0) {
                            temp_t1_3 = var_s3 & sp80;
                            temp_t2_2 = (temp_s6 - temp_t1_3) + 1;
                            temp_t3 = temp_t2_2 & sp88;
                            if (temp_t3 != 0) {
                                var_s8 = temp_t2_2 - temp_t3;
                                temp_s4 = var_s3 << spA8;
                                var_s3 = temp_t1_3 + temp_t3;
                                temp_s4_2 = var_s1 | temp_s4;
                                if (crmFifoWait(spB8, 4, 0xF4240) == 0) {
                                    M2C_FIELD(spB8, s32 *, 0x3020) = temp_s4_2;
                                    temp_t8_2 = spA0 | (sp78 | ((var_s3 - 1) << spA8));
                                    M2C_FIELD(spB8, s32 *, 0x3028) = temp_t8_2;
                                    M2C_FIELD(spB8, s32 *, 0x3030) = temp_s4_2;
                                    *sp70 = temp_t8_2;
                                    goto block_25;
                                }
                            } else {
block_25:
                                if (var_s8 != 0) {
                                    if (crmFifoWait(spB8, 4, 0xF4240) == 0) {
                                        temp_v1 = (var_s1 & 0xFFFF) | (var_s3 << 0x10);
                                        M2C_FIELD(spB8, s32 *, 0x3078) = 0;
                                        M2C_FIELD(spB8, s64 *, 0x2070) = (s64) ((spA0 & 0xFFFF) | ((temp_s6 << 0x10) | (temp_v1 << 0x20)));
                                        *sp68 = (s32) temp_v1;
                                        M2C_FIELD(spB8, s32 *, 0x21F8) = 0;
                                        goto block_11;
                                    }
                                } else {
                                    goto block_12;
                                }
                            }
                        } else {
block_11:
block_12:
                            temp_at = spC0 + 1;
                            spC0 = temp_at;
                            var_s0 += 8;
                            if (temp_at < subroutine_arg0) {
                                goto loop_17;
                            }
                        }
                    }
                }
            }
            var_s5 += 1;
            var_s2 += 8;
            M2C_FIELD(var_s2, void **, -4) = var_s0;
            if (var_s5 < sp98) {
                goto loop_15;
            }
        }
        var_t1 = spB0 + 1;
        var_t2 = var_t1 < 0x80U;
        if (var_t1 < sp60) {
            goto loop_4;
        }
    }
}

void crmSwapBufd(void *arg0) {
    s64 sp258;
    s64 sp250;
    void *sp100;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_t0;
    s32 var_a4;
    s32 var_s3;
    s64 temp_v0;
    s64 var_a3;
    s64 var_a3_2;
    s64 var_s2;
    u8 temp_a5;
    u8 temp_a5_4;
    void **var_t2;
    void *temp_a0_3;
    void *temp_a5_2;
    void *temp_a5_3;
    void *temp_a5_5;
    void *temp_a5_6;
    void *temp_s4;
    void *temp_s6;
    void *temp_s7;
    void *temp_t1;
    void *temp_t1_2;
    void *var_a2;
    void *var_a6;
    void *var_s2_2;

    init_sema(saved_reg_gp, 0, 0x28, -1);
    semahistoff(saved_reg_gp);
    temp_s4 = M2C_FIELD(arg0, void **, 0x18);
    temp_s6 = M2C_FIELD(temp_s4, void **, 0x78);
    temp_s7 = temp_s4 + 0x1E4;
    sp258 = (s64) M2C_FIELD(temp_s4, s32 *, 0x8C);
loop_6:
    temp_a2 = *(s32 *)4;
    if (psema(saved_reg_gp, 0x1A) != -1) {
        if (temp_a2 != 0) {
            mraccessf(temp_s7, 0, temp_a2);
            var_s2 = 0;
            if (RRM_CheckValidFault(arg0) >= 0) {
                var_s3 = 0;
                var_a6 = temp_s4;
                var_a2 = sp;
                var_t2 = &sp100;
                var_a3 = sp258;
                var_a4 = 1;
loop_13:
                temp_a5 = M2C_FIELD(var_a3, u8 *, 0x39);
                if ((temp_a5 & 2) && (M2C_FIELD(var_a3, s32 *, 0x30) <= 0)) {
                    temp_t1 = M2C_FIELD(var_a3, void **, 0x2C);
                    M2C_FIELD(var_a3, u8 *, 0x39) = (u8) (-3 & temp_a5);
                    if (temp_t1 != NULL) {
                        if (M2C_FIELD(temp_t1, s32 *, 0x50) != 0) {
                            temp_a5_2 = M2C_FIELD(M2C_FIELD(M2C_FIELD(temp_t1, void **, 0x4C), void **, 0xC), void **, 0x14);
                            var_a2 += 8;
                            M2C_FIELD(var_a2, s32 *, -4) = 0;
                            var_s3 += 1;
                            M2C_FIELD(var_a2, void **, -8) = temp_t1;
                            if (M2C_FIELD(temp_a5_2, s32 *, 0xC) != 0) {
                                *var_t2 = temp_a5_2;
                                var_t2 += 8;
                                var_s2 += 1;
                                M2C_FIELD(var_t2, s32 *, -4) = (s32) M2C_FIELD(temp_a5_2, s32 *, 0x114);
                            }
                        }
                        M2C_FIELD(var_a3, void **, 0x2C) = NULL;
                    } else {
                        temp_a0 = M2C_FIELD(var_a3, s32 *, 0x34);
                        if (temp_a0 != 0) {
                            temp_a5_3 = M2C_FIELD(var_a6, void **, 0xB8);
                            M2C_FIELD(var_a2, s32 *, 4) = temp_a0;
                            var_a2 += 8;
                            var_s3 += 1;
                            M2C_FIELD(var_a2, s32 *, -8) = (s32) M2C_FIELD(temp_s4, s32 *, 0);
                            if (M2C_FIELD(temp_a5_3, s32 *, 0xC) != 0) {
                                *var_t2 = temp_a5_3;
                                var_t2 += 8;
                                var_s2 += 1;
                                M2C_FIELD(var_t2, s32 *, -4) = (s32) M2C_FIELD(temp_a5_3, s32 *, 0x114);
                            }
                            M2C_FIELD(var_a3, s32 *, 0x34) = 0;
                        }
                    }
                }
                if (var_a4 < 0x20) {
                    temp_a5_4 = M2C_FIELD(var_a3, u8 *, 0x51);
                    temp_a4 = var_a4 + 1;
                    temp_t0 = temp_a4 < 0x20;
                    if ((temp_a5_4 & 2) && (M2C_FIELD(var_a3, s32 *, 0x48) <= 0)) {
                        temp_t1_2 = M2C_FIELD(var_a3, void **, 0x44);
                        M2C_FIELD(var_a3, u8 *, 0x51) = (u8) (-3 & temp_a5_4);
                        if (temp_t1_2 != NULL) {
                            if (M2C_FIELD(temp_t1_2, s32 *, 0x50) != 0) {
                                temp_a5_5 = M2C_FIELD(M2C_FIELD(M2C_FIELD(temp_t1_2, void **, 0x4C), void **, 0xC), void **, 0x14);
                                var_a2 += 8;
                                M2C_FIELD(var_a2, s32 *, -4) = 0;
                                var_s3 += 1;
                                M2C_FIELD(var_a2, void **, -8) = temp_t1_2;
                                if (M2C_FIELD(temp_a5_5, s32 *, 0xC) == 0) {

                                } else {
                                    *var_t2 = temp_a5_5;
                                    var_t2 += 8;
                                    var_s2 += 1;
                                    M2C_FIELD(var_t2, s32 *, -4) = (s32) M2C_FIELD(temp_a5_5, s32 *, 0x114);
                                }
                            }
                            M2C_FIELD(var_a3, void **, 0x44) = NULL;
                        } else {
                            temp_a0_2 = M2C_FIELD(var_a3, s32 *, 0x4C);
                            if (temp_a0_2 != 0) {
                                temp_a5_6 = M2C_FIELD(var_a6, void **, 0xBC);
                                M2C_FIELD(var_a2, s32 *, 4) = temp_a0_2;
                                var_a2 += 8;
                                var_s3 += 1;
                                M2C_FIELD(var_a2, s32 *, -8) = (s32) M2C_FIELD(temp_s4, s32 *, 0);
                                if (M2C_FIELD(temp_a5_6, s32 *, 0xC) != 0) {
                                    *var_t2 = temp_a5_6;
                                    var_t2 += 8;
                                    var_s2 += 1;
                                    M2C_FIELD(var_t2, s32 *, -4) = (s32) M2C_FIELD(temp_a5_6, s32 *, 0x114);
                                }
                                M2C_FIELD(var_a3, s32 *, 0x4C) = 0;
                            }
                        }
                    }
                    var_a6 += 8;
                    var_a4 = temp_a4 + 1;
                    var_a3 += 0x30;
                    if (temp_t0 != 0) {
                        goto loop_13;
                    }
                }
                if (var_s2 > 0) {
                    crmLoadTlbABC(temp_s4, 0, 0, (void *) var_a3);
                    crmLoadTlbABC(temp_s4, 0, 1);
                    var_a3_2 = 0x11;
                    if (M2C_FIELD(M2C_FIELD(temp_s4, void **, 0x7C), u8 *, 0x2F) != 0x20) {
                        M2C_FIELD(temp_s6, s32 *, 0x2000) = 0x504;
                        M2C_FIELD(temp_s6, s32 *, 0x2008) = 0x104;
                    } else {
                        var_a3_2 = 0x12;
                        M2C_FIELD(temp_s6, s32 *, 0x2000) = 0x628;
                        M2C_FIELD(temp_s6, s32 *, 0x2008) = 0x228;
                    }
                    M2C_FIELD(temp_s6, s32 *, 0x2018) = 0x200278;
                    M2C_FIELD(temp_s6, s32 *, 0x2060) = 0x03020000;
                    M2C_FIELD(temp_s6, s32 *, 0x21B0) = 3;
                    M2C_FIELD(temp_s6, s32 *, 0x2050) = 0;
                    M2C_FIELD(temp_s6, s32 *, 0x2058) = 0;
                    M2C_FIELD(temp_s6, s32 *, 0x2010) = 0;
                    M2C_FIELD(temp_s6, s64 *, 0x20A8) = (s64) M2C_FIELD(saved_reg_gp, s64 *, -0x7800);
                    M2C_FIELD(temp_s6, s32 *, 0x3008) = -1;
                    M2C_FIELD(temp_s6, s32 *, 0x3000) = 0x820;
                    M2C_FIELD(temp_s6, s32 *, 0x3040) = 1;
                    M2C_FIELD(temp_s6, s32 *, 0x3048) = 1;
                    crm_copy_swap_boxes((s64) temp_s6, (s64) &sp100, var_s2, var_a3_2);
                    M2C_FIELD(temp_s6, s32 *, 0x3078) = 0;
                    crmIdleWait(temp_s6, 0xF423F);
                }
                mrunlock(temp_s7);
                if (var_s3 > 0) {
                    sp250 = 0;
                    var_s2_2 = sp;
loop_39:
                    temp_a1 = M2C_FIELD(var_s2_2, s32 *, 4);
                    temp_a0_3 = M2C_FIELD(var_s2_2, void **, 0);
                    if (temp_a1 == 0) {
                        rrmValidateBuffer(temp_a0_3, (u8) temp_a1);
                    } else {
                        rrmValidateMGRSwapBuf(temp_a0_3, temp_a1);
                    }
                    temp_v0 = sp250 + 1;
                    sp250 = temp_v0;
                    var_s2_2 += 8;
                    if (temp_v0 < var_s3) {
                        goto loop_39;
                    }
                }
                goto loop_6;
            }
            mrunlock(temp_s7);
            cmn_err(1, 0);
        } else {
            goto loop_6;
        }
    }
}

s32 crimeSchedSwapBuf(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a6;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a3;
    s32 var_v0;
    u8 temp_a1;
    void *temp_s0;
    void *temp_s1;

    var_a3 = arg3;
    temp_s1 = M2C_FIELD(arg0, void **, 0x8C);
    if ((arg2 >= 0) && (arg2 < 0x20)) {
        temp_s0 = temp_s1 + (arg2 * 0x18);
        if (M2C_FIELD(temp_s0, u8 *, 0x38) == 0) {
            temp_v0 = M2C_FIELD(temp_s0, s32 *, 0x24);
            temp_a6 = temp_v0 & 0x1C;
            if (M2C_FIELD(M2C_FIELD(arg0, void **, 0x7C), u8 *, 0x2F) != 0x20) {
                if ((temp_a6 != 4) && (temp_a6 != 0x10)) {
                    M2C_FIELD(temp_s0, u8 *, 0x39) = 0U;
                    temp_a0 = M2C_FIELD(arg1, s32 *, 0x1C);
                    if (temp_a0 >= 2) {
                        M2C_FIELD(temp_s0, s32 *, 0x30) = temp_a0;
                    } else {
                        M2C_FIELD(temp_s0, s32 *, 0x30) = 1;
                    }
                    M2C_FIELD(temp_s0, s32 *, 0x34) = 0;
                    goto block_10;
                }
                var_a3 = M2C_FIELD(temp_s0, u8 *, 0x39) & 2;
                if (var_a3 == 0) {
                    M2C_FIELD(temp_s0, u8 *, 0x39) = 1U;
                    M2C_FIELD(temp_s0, s32 *, 0x28) = temp_v0;
                    temp_a0_2 = M2C_FIELD(arg1, s32 *, 0x1C);
                    if (temp_a0_2 >= 2) {
                        M2C_FIELD(temp_s0, s32 *, 0x30) = temp_a0_2;
                    } else {
                        M2C_FIELD(temp_s0, s32 *, 0x30) = 1;
                    }
                    M2C_FIELD(temp_s0, s32 *, 0x34) = 0;
                    M2C_FIELD(temp_s0, void **, 0x2C) = arg1;
                    goto block_12;
                }
                goto block_34;
            }
            if ((temp_a6 == 0x14) || (M2C_FIELD(temp_s0, u8 *, 0x3A) != 0)) {
                if (!(M2C_FIELD(temp_s0, u8 *, 0x39) & 2)) {
                    M2C_FIELD(temp_s0, u8 *, 0x39) = 1U;
                    M2C_FIELD(temp_s0, s32 *, 0x28) = temp_v0;
                    temp_a0_3 = M2C_FIELD(arg1, s32 *, 0x1C);
                    if (temp_a0_3 >= 2) {
                        M2C_FIELD(temp_s0, s32 *, 0x30) = temp_a0_3;
                    } else {
                        M2C_FIELD(temp_s0, s32 *, 0x30) = 1;
                    }
                    M2C_FIELD(temp_s0, s32 *, 0x34) = 0;
                    M2C_FIELD(temp_s0, void **, 0x2C) = arg1;
                    goto block_12;
                }
block_34:
                cmn_err(4, 0x68, var_a3);
                var_v0 = 0x10;
            } else {
                M2C_FIELD(temp_s0, u8 *, 0x39) = 0U;
                temp_a0_4 = M2C_FIELD(arg1, s32 *, 0x1C);
                if (temp_a0_4 >= 2) {
                    M2C_FIELD(temp_s0, s32 *, 0x30) = temp_a0_4;
                } else {
                    M2C_FIELD(temp_s0, s32 *, 0x30) = 1;
                }
                M2C_FIELD(temp_s0, s32 *, 0x34) = 0;
block_10:
                M2C_FIELD(temp_s0, void **, 0x2C) = arg1;
                temp_v0_2 = temp_v0 & ~3;
                M2C_FIELD(temp_s0, s32 *, 0x24) = temp_v0_2;
                if (var_a3 != 0) {
                    M2C_FIELD(temp_s0, s32 *, 0x28) = (s32) (temp_v0_2 | 2);
                } else {
                    M2C_FIELD(temp_s0, s32 *, 0x28) = (s32) (temp_v0_2 | 1);
                }
block_12:
                mutex_lock((void *) (temp_s1 + 0x348), 0x19, var_a3);
                M2C_FIELD(temp_s0, u8 *, 0x38) = 1U;
                temp_a1 = M2C_FIELD(temp_s1, u8 *, 0x17) + 1;
                M2C_FIELD(temp_s1, u8 *, 0x17) = temp_a1;
                mutex_unlock((void *) subroutine_arg0, temp_a1);
                var_v0 = 0;
            }
        } else {
            cmn_err(4, 0x30);
            var_v0 = 0x10;
        }
    } else {
        var_v0 = 0x16;
    }
    return var_v0;
}

s32 crimeUnSchedSwapBuf(void *arg0, s32 arg2) {
    s32 var_v0;
    u8 temp_a0;
    u8 temp_v0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_s0;
    void *temp_s1;
    void *temp_s1_2;
    void *temp_s2;
    void *temp_s3;
    void *temp_s4;

    temp_s4 = M2C_FIELD(arg0, void **, 0x18);
    var_v0 = -0x16;
    temp_s1 = M2C_FIELD(temp_s4, void **, 0x8C);
    if ((arg2 >= 0) && (arg2 < 0x20)) {
        temp_s3 = temp_s1 + 0x348;
        mutex_lock(temp_s3, 0x19);
        temp_s0 = temp_s1 + (arg2 * 0x18);
        temp_a0 = M2C_FIELD(temp_s0, u8 *, 0x39);
        if (temp_a0 != 0) {
            temp_v0 = M2C_FIELD(temp_s0, u8 *, 0x38);
            if (temp_a0 & 2) {
                if (temp_v0 != 0) {
                    goto block_6;
                }
                mutex_unlock(temp_s3);
                goto block_11;
            }
            if (temp_v0 == 0) {
                mutex_unlock(temp_s3);
                var_v0 = 0;
            } else {
block_6:
                M2C_FIELD(temp_s0, u8 *, 0x38) = 0U;
                M2C_FIELD(temp_s1, u8 *, 0x17) = (u8) (M2C_FIELD(temp_s1, u8 *, 0x17) - 1);
                mutex_unlock(temp_s3);
                if (M2C_FIELD(temp_s0, u8 *, 0x39) & 2) {
                    temp_s1_2 = M2C_FIELD(temp_s4, void **, 4);
                    if (temp_s1_2 != NULL) {
                        temp_a0_2 = M2C_FIELD(temp_s1_2, void **, 0x30);
                        if (M2C_FIELD(temp_s4, s32 *, 0) == temp_a0_2) {
                            rrmInvalidateRN(temp_a0_2, temp_s1_2, 1);
                            temp_a0_3 = M2C_FIELD(temp_s1_2, void **, 0x30);
                            if (M2C_FIELD(temp_a0_3, s32 *, 4) & 1) {
                                rrmDoUnMapGfx(temp_a0_3);
                            }
                        }
                    }
                }
block_11:
                M2C_FIELD(temp_s0, u8 *, 0x39) = 0U;
                M2C_FIELD(temp_s0, void **, 0x2C) = NULL;
                M2C_FIELD(temp_s0, s32 *, 0x30) = 0;
                var_v0 = 1;
                M2C_FIELD(temp_s0, s32 *, 0x34) = 0;
            }
        } else {
            temp_s2 = M2C_FIELD(temp_s0, void **, 0x2C);
            if (temp_s2 != NULL) {
                M2C_FIELD(temp_s0, u8 *, 0x38) = 0U;
                M2C_FIELD(temp_s1, u8 *, 0x17) = (u8) (M2C_FIELD(temp_s1, u8 *, 0x17) - 1);
                mutex_unlock(temp_s3);
                M2C_FIELD(temp_s0, void **, 0x2C) = NULL;
                M2C_FIELD(temp_s0, s32 *, 0x30) = 0;
                M2C_FIELD(temp_s0, s32 *, 0x34) = 0;
                temp_a0_4 = M2C_FIELD(temp_s2, void **, 0x4C);
                var_v0 = 1;
                if (temp_a0_4 != NULL) {
                    M2C_FIELD(temp_a0_4, u8 *, 0x550) = (u8) (M2C_FIELD(temp_a0_4, u8 *, 0x550) + 1);
                }
            } else {
                mutex_unlock(temp_s3);
                var_v0 = 0;
            }
        }
    }
    return var_v0;
}

s32 crimeSchedMgrSwapBuf(void *arg0, s64 arg1, s32 arg2) {
    s32 temp_s2;
    s32 temp_v0;
    s32 var_v0;
    void *temp_s0;
    void *temp_s1;
    void *temp_s3;

    temp_s2 = M2C_ERROR(/* Read from unset register $a4 */);
    temp_s1 = M2C_FIELD(M2C_FIELD(arg0, void **, 0x18), void **, 0x8C);
    if (RRM_CheckValidFault() >= 0) {
        temp_s0 = temp_s1 + (arg2 * 0x18);
        temp_v0 = temp_s2 & 0x1C;
        if (M2C_FIELD(temp_s0, u8 *, 0x38) == 0) {
            if (M2C_FIELD(M2C_FIELD(subroutine_arg0, void **, 0x7C), u8 *, 0x2F) != 0x20) {
                if ((temp_v0 != 4) && (temp_v0 != 0x10)) {
                    goto block_5;
                }
                goto block_8;
            }
            if ((temp_v0 == 0x14) || (M2C_FIELD(temp_s0, u8 *, 0x3A) != 0)) {
block_8:
                M2C_FIELD(temp_s0, s32 *, 0x24) = temp_s2;
                M2C_FIELD(temp_s0, s8 *, 0x39) = 1;
            } else {
block_5:
                M2C_FIELD(temp_s0, s8 *, 0x39) = 0;
            }
            M2C_FIELD(temp_s0, s32 *, 0x28) = temp_s2;
            M2C_FIELD(temp_s0, s32 *, 0x2C) = 0;
            M2C_FIELD(temp_s0, s32 *, 0x30) = 1;
            temp_s3 = temp_s1 + 0x348;
            M2C_FIELD(temp_s0, s32 *, 0x34) = (s32) subroutine_arg2;
            mutex_lock(temp_s3, 0x19, 0x14);
            M2C_FIELD(temp_s0, u8 *, 0x38) = 2U;
            M2C_FIELD(temp_s1, u8 *, 0x17) = (u8) (M2C_FIELD(temp_s1, u8 *, 0x17) + 1);
            mutex_unlock(temp_s3);
            var_v0 = 0;
        } else {
            cmn_err(4, 0x90, arg2);
            var_v0 = 0x10;
        }
    } else {
        var_v0 = -0xE;
    }
    return var_v0;
}

s32 crimeSchedRetraceEvent(void *arg0, void *arg1) {
    void *temp_a3;
    void *temp_s1;
    void *temp_s2;
    void *var_v0;

    temp_s1 = M2C_FIELD(arg0, void **, 0x8C);
    temp_s2 = temp_s1 + 0x348;
    mutex_lock(temp_s2, 0x19);
    temp_a3 = M2C_FIELD(temp_s1, void **, 0x340);
    var_v0 = temp_a3;
    if (temp_a3 != NULL) {
loop_1:
        if (arg1 != var_v0) {
            var_v0 = M2C_FIELD(var_v0, void **, 0x24);
            if (var_v0 == NULL) {
                goto block_3;
            }
            goto loop_1;
        }
        mutex_unlock(temp_s2);
    } else {
block_3:
        M2C_FIELD(arg1, void **, 0x24) = temp_a3;
        M2C_FIELD(temp_s1, void **, 0x340) = arg1;
        mutex_unlock(temp_s2);
    }
    return 0;
}

void crimeRetraceCloseRN(void *arg0, s32 arg1) {
    s32 temp_a3;
    s32 var_a3;
    void *temp_a7;
    void *temp_s1;
    void *temp_s8;
    void *temp_t0;
    void *var_a2;
    void *var_a2_2;
    void *var_a3_2;

    temp_s1 = M2C_FIELD(arg0, void **, 0x8C);
    temp_s8 = temp_s1 + 0x348;
    mutex_lock(temp_s8, 0x19);
    var_a2 = temp_s1;
    var_a3 = 0;
loop_2:
    temp_a3 = var_a3 + 1;
    if ((M2C_FIELD(var_a2, u8 *, 0x38) != 0) && (M2C_FIELD(var_a2, s32 *, 0x2C) == arg1)) {
        M2C_FIELD(var_a2, s32 *, 0x30) = 0;
        M2C_FIELD(var_a2, u8 *, 0x38) = 0U;
        M2C_FIELD(temp_s1, u8 *, 0x17) = (u8) (M2C_FIELD(temp_s1, u8 *, 0x17) - 1);
        M2C_FIELD(var_a2, s8 *, 0x3A) = 0;
        M2C_FIELD(var_a2, s8 *, 0x39) = 0;
        M2C_FIELD(var_a2, s32 *, 0x34) = 0;
        M2C_FIELD(var_a2, s32 *, 0x2C) = 0;
    }
    if (temp_a3 < 0x20) {
        var_a3 = temp_a3 + 1;
        if ((M2C_FIELD(var_a2, u8 *, 0x50) != 0) && (M2C_FIELD(var_a2, s32 *, 0x44) == arg1)) {
            M2C_FIELD(var_a2, s32 *, 0x48) = 0;
            M2C_FIELD(var_a2, u8 *, 0x50) = 0U;
            M2C_FIELD(temp_s1, u8 *, 0x17) = (u8) (M2C_FIELD(temp_s1, u8 *, 0x17) - 1);
            M2C_FIELD(var_a2, s8 *, 0x52) = 0;
            M2C_FIELD(var_a2, s8 *, 0x51) = 0;
            M2C_FIELD(var_a2, s32 *, 0x4C) = 0;
            M2C_FIELD(var_a2, s32 *, 0x44) = 0;
        }
        var_a2 += 0x30;
        if (var_a3 < 0x20) {
            goto loop_2;
        }
    }
    var_a3_2 = M2C_FIELD(temp_s1, void **, 0x340);
    if (var_a3_2 == arg1) {
        M2C_FIELD(temp_s1, void **, 0x340) = (void *) M2C_FIELD(var_a3_2, void **, 0x24);
    } else if (var_a3_2 != NULL) {
        temp_a7 = M2C_FIELD(var_a3_2, void **, 0x24);
        var_a2_2 = temp_a7;
        if (temp_a7 != NULL) {
loop_15:
            if (arg1 != var_a2_2) {
                temp_t0 = M2C_FIELD(var_a2_2, void **, 0x24);
                var_a3_2 = var_a2_2;
                var_a2_2 = temp_t0;
                if (temp_t0 == NULL) {

                } else {
                    goto loop_15;
                }
            } else {
                M2C_FIELD(var_a3_2, void **, 0x24) = (void *) M2C_FIELD(var_a2_2, void **, 0x24);
            }
        }
    }
    mutex_unlock(temp_s8);
}

void crmRetraceCloseAllRn(void *arg0) {
    s32 temp_a0;
    s32 var_a2;
    void *temp_s0;
    void *temp_s8;
    void *var_a3;

    temp_s0 = M2C_FIELD(arg0, void **, 0x8C);
    temp_s8 = temp_s0 + 0x348;
    mutex_lock(temp_s8, 0x19);
    M2C_FIELD(temp_s0, s8 *, 0x17) = 0;
    var_a3 = temp_s0;
    var_a2 = 0;
    do {
        var_a3 += 0x18;
        M2C_FIELD(var_a3, s8 *, 0x22) = 0;
        M2C_FIELD(var_a3, s32 *, 0x1C) = 0;
        var_a2 += 1;
        M2C_FIELD(var_a3, s8 *, 0x21) = 0;
        M2C_FIELD(var_a3, s32 *, 0x14) = 0;
        M2C_FIELD(var_a3, s8 *, 0x20) = 0;
    } while (var_a2 < 0x20);
    M2C_FIELD(temp_s0, s8 *, 0x1C) = 0;
    temp_a0 = M2C_FIELD(arg0, s32 *, 0x1D0);
    if (temp_a0 != 0) {
        untimeout(temp_a0, 4, var_a2, var_a3);
        M2C_FIELD(arg0, s32 *, 0x1D0) = 0;
    }
    bzero((s64) (temp_s0 + 0x344), 4);
    mutex_unlock(temp_s8);
}

s32 crimeSetDisplayMode(void *arg0, s32 arg1, s32 arg2) {
    s32 var_a2;
    void *temp_a5;
    void *temp_a6;
    void *temp_v0;

    var_a2 = arg2;
    temp_a6 = M2C_FIELD(arg0, void **, 0x18);
    if ((arg1 >= 0) && (arg1 < 0x20)) {
        temp_v0 = M2C_FIELD(temp_a6, void **, 0x8C);
        if (*saved_reg_gp != 0) {
            var_a2 &= ~0x400;
        }
        M2C_FIELD((M2C_FIELD(temp_a6, s32 *, 0x80) + (arg1 * 4)), s32 *, 0x48000) = var_a2;
        temp_a5 = temp_v0 + (arg1 * 0x18);
        M2C_FIELD(temp_a5, s32 *, 0x24) = var_a2;
        M2C_FIELD(temp_a5, s8 *, 0x3A) = 0;
        if (!(var_a2 & 3)) {
            M2C_FIELD(temp_a5, s8 *, 0x3A) = 1;
            M2C_FIELD(temp_v0, s8 *, 0x1C) = 1;
        }
        return 0;
    }
    return -0x16;
}

s32 crimeSetGammaRamp(void *arg0, void *arg1) {
    s32 var_v0;
    s32 var_v0_2;
    u8 temp_a6;
    u8 temp_t0;
    u8 temp_t1;
    void *temp_a5;
    void *var_a1;
    void *var_a3;
    void *var_a3_2;

    var_a1 = arg1;
    temp_a5 = M2C_FIELD(M2C_FIELD(arg0, void **, 0x18), s32 *, 0x80) + 0x60000;
    if (*saved_reg_gp != 0) {
        var_v0 = 0;
        var_a3 = temp_a5;
        do {
            temp_t1 = M2C_FIELD(var_a1, u8 *, 0x100);
            temp_a6 = M2C_FIELD(var_a1, u8 *, 0);
            temp_t0 = M2C_FIELD(var_a1, u8 *, 0x200);
            var_a1 += 1;
            var_a3 += 4;
            var_v0 += 1;
            M2C_FIELD(var_a3, s32 *, -4) = (s32) ((*temp_a6 << 0x18) | (*temp_t1 << 0x10) | (*temp_t0 << 8));
        } while (var_v0 < 0x100);
        return 0;
    }
    var_v0_2 = 0;
    var_a3_2 = temp_a5;
    do {
        var_a1 += 1;
        var_a3_2 += 4;
        var_v0_2 += 1;
        M2C_FIELD(var_a3_2, s32 *, -4) = (s32) ((M2C_FIELD(var_a1, u8 *, -1) << 0x18) | (M2C_FIELD(var_a1, u8 *, 0xFF) << 0x10) | (M2C_FIELD(var_a1, u8 *, 0x1FF) << 8));
    } while (var_v0_2 < 0x100);
    return 0;
}

s32 crmFindFreeDidTbl(void *arg0) {
    s32 temp_a4;
    s32 var_s0;
    s32 var_s1;
    u32 temp_a4_2;
    u32 var_a5;
    void *temp_s2;
    void *var_a3;
    void *var_a3_2;

    temp_s2 = M2C_FIELD(arg0, s32 *, 0x84) + 0x1C;
    var_s0 = 0;
    var_a3 = temp_s2;
loop_1:
    var_a3 += 0xC;
    if (M2C_FIELD(var_a3, s32 *, 4) != 0) {
        var_s0 += 1;
        if (var_s0 >= 3) {
            mutex_lock((void *) (M2C_FIELD(arg0, s32 *, 0x8C) + 0x348), 0x19, (s32) var_a3);
            var_a3_2 = temp_s2;
            var_a5 = -1U;
            var_s1 = 3;
            var_s0 = 0;
loop_6:
            temp_a4 = M2C_FIELD(var_a3_2, s32 *, 4);
            if (temp_a4 != 0) {
                if (temp_a4 != 2) {
                    temp_a4_2 = M2C_FIELD(var_a3_2, u32 *, 0);
                    if (temp_a4_2 < var_a5) {
                        var_a5 = temp_a4_2;
                        var_s1 = var_s0;
                    }
                }
                var_s0 += 1;
                var_a3_2 += 0xC;
                if (var_s0 < 3) {
                    goto loop_6;
                }
                M2C_FIELD((temp_s2 + (var_s1 * 0xC)), s32 *, 4) = 0;
                mutex_unlock((void *) subroutine_arg0);
                var_s0 = var_s1;
            } else {
                mutex_unlock((void *) subroutine_arg0);
            }
        } else {
            goto loop_1;
        }
    }
    return var_s0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x28, 0x2c], gap at: 0x20. */
void crime_hli_handler(void *arg0, s32 arg1) {
    M2C_UNK (*temp_a3)(s32);
    s32 temp_a2;
    s32 temp_a3_2;
    s32 temp_t2;
    s64 temp_s0;
    s64 var_a0_2;
    void *temp_a6;
    void *temp_ra;
    void *temp_s2;
    void *var_a0;
    void *var_a1;
    void *var_s0;
    void *var_s0_2;

    temp_s2 = M2C_FIELD(arg0, void **, 0x8C);
    temp_s0 = temp_s2 + (arg1 * 4);
    unksp20 = temp_s0;
    var_s0 = M2C_FIELD(temp_s0, void **, 0x32C);
    unksp18 = (s64) arg0;
    if (var_s0 == NULL) {

    } else {
loop_3:
        temp_a3 = M2C_FIELD(var_s0, M2C_UNK (**)(s32), 4);
        if (temp_a3 == NULL) {
            var_s0 = M2C_FIELD(var_s0, void **, 0x14);
            if (var_s0 != NULL) {
                goto loop_3;
            }
        } else {
            temp_a3(M2C_FIELD(var_s0, s32 *, 8));
            var_s0 = M2C_FIELD(var_s0, void **, 0x14);
            if (var_s0 != NULL) {
                goto loop_3;
            }
        }
    }
    var_a1 = M2C_FIELD(temp_s2, void **, 0x33C);
    if (var_a1 != NULL) {
        temp_a6 = M2C_FIELD(unksp20, void **, 0x32C);
        M2C_FIELD(unksp20, void **, 0x32C) = var_a1;
        temp_a3_2 = M2C_FIELD(var_a1, s32 *, 0xC);
        if (arg1 != 2) {
            if (arg1 == 3) {
                temp_t2 = (M2C_FIELD(temp_s2, s32 *, 0x328) & ~0xFFF) | (temp_a3_2 & 0xFFF);
                M2C_FIELD(temp_s2, s32 *, 0x328) = temp_t2;
                M2C_FIELD(M2C_FIELD(unksp18, void **, 0x80), s32 *, 0x10024) = temp_t2;
            }
        } else {
            temp_a2 = (M2C_FIELD(temp_s2, s32 *, 0x328) & M2C_FIELD(saved_reg_gp, s64 *, -0x77F8)) | ((temp_a3_2 & 0xFFF) << 0xC);
            M2C_FIELD(temp_s2, s32 *, 0x328) = temp_a2;
            M2C_FIELD(M2C_FIELD(unksp18, void **, 0x80), s32 *, 0x10024) = temp_a2;
        }
        var_s0_2 = M2C_FIELD(var_a1, void **, 0x14);
        if (var_s0_2 != NULL) {
loop_9:
            if ((u32) M2C_FIELD(var_s0_2, u32 *, 0xC) < (u32) (temp_a3_2 + 3)) {
                temp_ra = M2C_FIELD(var_s0_2, void **, 0x14);
                var_a1 = var_s0_2;
                var_s0_2 = temp_ra;
                if (temp_ra == NULL) {

                } else {
                    goto loop_9;
                }
            } else {
                M2C_FIELD(var_a1, s32 *, 0x14) = 0;
                M2C_FIELD(temp_s2, void **, 0x33C) = var_s0_2;
                var_a0 = M2C_FIELD(var_s0_2, void **, 0x14);
                if (var_a0 != NULL) {
                    do {
                        var_s0_2 = var_a0;
                        var_a0 = M2C_FIELD(var_a0, void **, 0x14);
                    } while (var_a0 != NULL);
                }
                M2C_FIELD(var_s0_2, void **, 0x14) = temp_a6;
            }
        } else {
            M2C_FIELD(temp_s2, void **, 0x33C) = temp_a6;
        }
    }
    var_a0_2 = *(u64 *)0xB4000028 << 0;
    switch (arg1) {                                 /* irregular */
    case 3:
        var_a0_2 = (var_a0_2 & 0xFFF7FFFF) << 0;
        break;
    case 0:
        var_a0_2 = (var_a0_2 & 0xFFFEFFFF) << 0;
        break;
    case 1:
        var_a0_2 = (var_a0_2 & 0xFFFDFFFF) << 0;
        break;
    case 2:
        var_a0_2 = (var_a0_2 & 0xFFFBFFFF) << 0;
        break;
    }
    *(void *)0xB4000028 = (u64) ((u64) (var_a0_2 << 0x20) >> 0x20);
}

void crime_schedule_hli(void *arg0, void *arg1) {
    s32 temp_t8;
    s32 temp_t9;
    u32 temp_a7;
    u32 temp_t0;
    u32 var_a4;
    void *temp_t1;
    void *var_a0;
    void *var_a0_2;
    void *var_a3;
    void *var_a5;
    void *var_a5_2;

    temp_t1 = M2C_FIELD(arg0, void **, 0x8C);
    var_a4 = 2;
    var_a3 = temp_t1 + 8;
loop_2:
    var_a5 = M2C_FIELD(var_a3, void **, 0x32C);
    if (var_a5 != NULL) {
        temp_a7 = M2C_FIELD(var_a5, u32 *, 0xC);
        temp_t0 = M2C_FIELD(arg1, u32 *, 0xC);
        var_a4 += 1;
        if ((temp_t0 >= temp_a7) && (temp_t0 < (u32) (temp_a7 + 3))) {
            var_a0 = NULL;
            if (M2C_FIELD(var_a5, s32 *, 0x14) != 0) {
loop_18:
                if ((u32) (temp_t0 + M2C_FIELD(arg1, s32 *, 0x10)) < (u32) (M2C_FIELD(var_a5, s32 *, 0xC) + M2C_FIELD(var_a5, s32 *, 0x10))) {
                    if (var_a0 != NULL) {
                        M2C_FIELD(var_a0, void **, 0x14) = arg1;
                    } else {
                        M2C_FIELD(var_a3, void **, 0x32C) = arg1;
                    }
                    M2C_FIELD(arg1, void **, 0x14) = var_a5;
                    return;
                }
                var_a0 = var_a5;
                var_a5 = M2C_FIELD(var_a5, void **, 0x14);
                if (M2C_FIELD(var_a5, s32 *, 0x14) != 0) {
                    goto loop_18;
                }
                /* Duplicate return node #23. Try simplifying control flow for better match */
                M2C_FIELD(var_a5, void **, 0x14) = arg1;
                return;
            }
            M2C_FIELD(var_a5, void **, 0x14) = arg1;
            return;
        }
        var_a3 += 4;
        if (var_a4 < 4U) {
            goto loop_2;
        }
        var_a5_2 = M2C_FIELD(temp_t1, void **, 0x33C);
        var_a0_2 = NULL;
        if (M2C_FIELD(var_a5_2, s32 *, 0x14) != 0) {
loop_13:
            if ((u32) (temp_t0 + M2C_FIELD(arg1, s32 *, 0x10)) < (u32) (M2C_FIELD(var_a5_2, s32 *, 0xC) + M2C_FIELD(var_a5_2, s32 *, 0x10))) {
                if (var_a0_2 != NULL) {
                    M2C_FIELD(var_a0_2, void **, 0x14) = arg1;
                } else {
                    M2C_FIELD(temp_t1, void **, 0x33C) = arg1;
                }
                M2C_FIELD(arg1, void **, 0x14) = var_a5_2;
                return;
            }
            var_a0_2 = var_a5_2;
            var_a5_2 = M2C_FIELD(var_a5_2, void **, 0x14);
            if (M2C_FIELD(var_a5_2, s32 *, 0x14) != 0) {
                goto loop_13;
            }
            /* Duplicate return node #22. Try simplifying control flow for better match */
            M2C_FIELD(var_a5_2, void **, 0x14) = arg1;
            return;
        }
        M2C_FIELD(var_a5_2, void **, 0x14) = arg1;
        return;
    }
    M2C_FIELD(var_a3, void **, 0x32C) = arg1;
    switch (var_a4) {                               /* irregular */
    case 3:
        temp_t8 = (M2C_FIELD(arg1, u32 *, 0xC) & 0xFFF) | (M2C_FIELD(temp_t1, s32 *, 0x328) & ~0xFFF);
        M2C_FIELD(temp_t1, s32 *, 0x328) = temp_t8;
        M2C_FIELD(M2C_FIELD(arg0, void **, 0x80), s32 *, 0x10024) = temp_t8;
        return;
    case 2:
        temp_t9 = (M2C_FIELD(temp_t1, s32 *, 0x328) & M2C_FIELD(saved_reg_gp, s64 *, -0x77F8)) | ((M2C_FIELD(arg1, u32 *, 0xC) & 0xFFF) << 0xC);
        M2C_FIELD(temp_t1, s32 *, 0x328) = temp_t9;
        M2C_FIELD(M2C_FIELD(arg0, void **, 0x80), s32 *, 0x10024) = temp_t9;
        return;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x10, 0x14, 0x30, 0x34], gap at: 0x20. */
s32 crime_hli_sched(s32 arg0, s32 arg1, s32 arg2, s64 arg3) {
    s64 sp40;
    s64 sp38;
    s32 temp_v1;
    s64 temp_v0;
    void *temp_at;

    unksp28 = arg3;
    sp40 = M2C_ERROR(/* Read from unset register $a4 */);
    unksp20 = M2C_ERROR(/* Read from unset register $a5 */);
    temp_at = M2C_FIELD((arg0 * 0x40), void **, 0xC);
    sp38 = (s64) temp_at;
    unksp18 = (s64) M2C_FIELD(temp_at, s32 *, 0x8C);
    temp_v0 = kern_malloc(0x18);
    temp_v1 = M2C_FIELD(unksp18, s32 *, 0x324) + 1;
    M2C_FIELD(unksp18, s32 *, 0x324) = temp_v1;
    M2C_FIELD(temp_v0, s32 *, 8) = arg2;
    M2C_FIELD(temp_v0, s32 *, 4) = arg1;
    M2C_FIELD(temp_v0, s32 *, 0xC) = (s32) unksp28;
    M2C_FIELD(temp_v0, s32 *, 0) = temp_v1;
    if (unksp20 == 1) {
        M2C_FIELD(temp_v0, s32 *, 0xC) = (s32) (unksp28 + 0x28);
    }
    M2C_FIELD(temp_v0, s32 *, 0x10) = (s32) sp40;
    M2C_FIELD(temp_v0, s32 *, 0x14) = 0;
    crime_schedule_hli((void *) sp38, (void *) temp_v0, sp40, unksp20);
    return M2C_FIELD(temp_v0, s32 *, 0);
}

s32 crime_hli_unsched(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_a3;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_v1;
    s32 var_a2;
    s32 var_v0;
    u32 var_a5;
    void *temp_a1;
    void *temp_a6;
    void *temp_a7_2;
    void *temp_t1;
    void *temp_t2;
    void *var_a0;
    void *var_a0_2;
    void *var_a1;
    void *var_a4;
    void *var_v0_2;
    void *var_v0_3;

    var_a2 = arg2;
    temp_a7 = arg0 * 0x40;
    temp_a6 = M2C_FIELD(M2C_FIELD(temp_a7, void **, 0xC), void **, 0x8C);
    temp_a7_2 = M2C_FIELD(temp_a7, void **, 4);
    var_a5 = 2;
    var_a4 = temp_a6 + 8;
loop_1:
    temp_t1 = M2C_FIELD(var_a4, void **, 0x32C);
    var_v0_2 = NULL;
    var_a0 = temp_t1;
    if (temp_t1 != NULL) {
loop_4:
        if (M2C_FIELD(var_a0, s32 *, 0) == arg1) {
            var_a1 = M2C_FIELD(var_a0, void **, 0x14);
            if (var_v0_2 != NULL) {
                M2C_FIELD(var_v0_2, void **, 0x14) = var_a1;
            } else {
                M2C_FIELD(var_a4, void **, 0x32C) = var_a1;
                if (M2C_FIELD(var_a0, void **, 0x14) == NULL) {
                    var_a1 = (void *)0x10000;
                    if (var_a5 != 2) {
                        if (var_a5 == 3) {
                            temp_at = M2C_FIELD(temp_a6, s32 *, 0x328) | 0xFFF;
                            M2C_FIELD(temp_a6, s32 *, 0x328) = temp_at;
                            M2C_FIELD(temp_a7_2, s32 *, 0x10024) = temp_at;
                        }
                    } else {
                        var_a2 = 0xFFF000;
                        var_a1 = temp_a7_2 + 0x10024;
                        temp_v1 = M2C_FIELD(temp_a6, s32 *, 0x328) | 0xFFF000;
                        M2C_FIELD(temp_a6, s32 *, 0x328) = temp_v1;
                        M2C_FIELD(temp_a7_2, s32 *, 0x10024) = temp_v1;
                    }
                }
            }
            kern_free(var_a0, var_a1, var_a2);
            goto block_8;
        }
        temp_t2 = M2C_FIELD(var_a0, void **, 0x14);
        var_v0_2 = var_a0;
        var_a0 = temp_t2;
        if (temp_t2 != NULL) {
            goto loop_4;
        }
        goto block_10;
    }
block_10:
    var_a5 += 1;
    var_a4 += 4;
    if (var_a5 >= 4U) {
        var_a0_2 = M2C_FIELD(temp_a6, void **, 0x33C);
        if ((var_a0_2 != NULL) && (M2C_FIELD(var_a0_2, s32 *, 0x14) != 0)) {
            var_v0_3 = NULL;
loop_20:
            temp_a3 = M2C_FIELD(var_a0_2, s32 *, 0);
            if (temp_a3 == arg1) {
                temp_a1 = M2C_FIELD(var_a0_2, void **, 0x14);
                if (var_v0_3 != NULL) {
                    M2C_FIELD(var_v0_3, void **, 0x14) = temp_a1;
                } else {
                    M2C_FIELD(temp_a6, void **, 0x33C) = temp_a1;
                }
                kern_free(var_a0_2, temp_a1, var_a2, temp_a3);
block_8:
                var_v0 = 0;
            } else {
                var_v0_3 = var_a0_2;
                var_a0_2 = M2C_FIELD(var_a0_2, void **, 0x14);
                var_a2 = M2C_FIELD(var_a0_2, s32 *, 0x14);
                if (var_a2 != 0) {
                    goto loop_20;
                }
                goto block_24;
            }
        } else {
block_24:
            var_v0 = 6;
        }
    } else {
        goto loop_1;
    }
    return var_v0;
}

s32 crime_hli_update(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 var_v0;
    u32 var_t0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_t1;
    void *temp_t2;
    void *var_a1;
    void *var_a1_2;
    void *var_a6;
    void *var_v0_2;
    void *var_v0_3;

    temp_t1 = M2C_FIELD((arg0 * 0x40), void **, 0xC);
    temp_t2 = M2C_FIELD(temp_t1, void **, 0x8C);
    var_t0 = 1;
    var_a6 = temp_t2 + 4;
loop_1:
    var_a1 = M2C_FIELD(var_a6, void **, 0x32C);
    var_v0_2 = NULL;
    if ((var_a1 != NULL) && (M2C_FIELD(var_a1, s32 *, 0x14) != 0)) {
loop_5:
        if (M2C_FIELD(var_a1, s32 *, 0) == arg1) {
            temp_a0 = M2C_FIELD(var_a1, void **, 0x14);
            if (var_v0_2 != NULL) {
                M2C_FIELD(var_v0_2, void **, 0x14) = temp_a0;
            } else {
                M2C_FIELD(var_a6, void **, 0x32C) = temp_a0;
            }
            M2C_FIELD(var_a1, s32 *, 0xC) = arg2;
            M2C_FIELD(var_a1, s32 *, 0x10) = arg3;
            crime_schedule_hli(temp_t1, var_a1);
            goto block_9;
        }
        var_v0_2 = var_a1;
        var_a1 = M2C_FIELD(var_a1, void **, 0x14);
        if (M2C_FIELD(var_a1, s32 *, 0x14) != 0) {
            goto loop_5;
        }
        goto block_11;
    }
block_11:
    var_t0 += 1;
    var_a6 += 4;
    if (var_t0 >= 4U) {
        var_a1_2 = M2C_FIELD(temp_t2, void **, 0x33C);
        if ((var_a1_2 != NULL) && (M2C_FIELD(var_a1_2, s32 *, 0x14) != 0)) {
            var_v0_3 = NULL;
loop_17:
            if (M2C_FIELD(var_a1_2, s32 *, 0) == arg1) {
                temp_a0_2 = M2C_FIELD(var_a1_2, void **, 0x14);
                if (var_v0_3 != NULL) {
                    M2C_FIELD(var_v0_3, void **, 0x14) = temp_a0_2;
                } else {
                    M2C_FIELD(temp_t2, void **, 0x33C) = temp_a0_2;
                }
                M2C_FIELD(var_a1_2, s32 *, 0x10) = arg3;
                M2C_FIELD(var_a1_2, s32 *, 0xC) = arg2;
                crime_schedule_hli(temp_t1, var_a1_2);
block_9:
                var_v0 = 0;
            } else {
                var_v0_3 = var_a1_2;
                var_a1_2 = M2C_FIELD(var_a1_2, void **, 0x14);
                if (M2C_FIELD(var_a1_2, s32 *, 0x14) != 0) {
                    goto loop_17;
                }
                goto block_21;
            }
        } else {
block_21:
            var_v0 = 6;
        }
    } else {
        goto loop_1;
    }
    return var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24], gap at: 0x18. */
void crm_getustmsc(void *arg0, s64 *arg1, void *arg2, void *arg3) {
    s16 temp_at;
    s16 temp_t0;
    s32 temp_lo;
    s64 temp_v0;

    temp_lo = (s32) (M2C_FIELD(arg2, s32 *, 0xC) + 0x1F4) / 1000;
    unksp10 = (s64) arg2;
    M2C_FIELD(arg3, s16 *, 0x14) = (s16) temp_lo;
    M2C_FIELD(arg3, s32 *, 0x10) = (s32) M2C_FIELD(arg2, s32 *, 4);
    M2C_FIELD(arg3, s16 *, 0x16) = (s16) M2C_FIELD(arg2, s16 *, 0x1E);
    M2C_FIELD(arg3, s64 *, 8) = (s64) *arg1;
    unksp18 = splprof(temp_lo);
    update_ust();
    get_ust_nano(arg3);
    M2C_FIELD(arg3, s16 *, 0x18) = (s16) (((u32) M2C_FIELD(arg0, u32 *, 0x10000) >> 0xC) & 0xFFF);
    splx(unksp18);
    temp_at = M2C_FIELD(unksp10, s16 *, 0x14);
    temp_v0 = M2C_FIELD(unksp10, s16 *, 0x24) - M2C_FIELD(arg3, s16 *, 0x18);
    DMULT_HI((s64) temp_at, temp_v0);
    temp_t0 = M2C_FIELD(unksp10, s16 *, 0x28);
    M2C_FIELD(arg3, s64 *, 0) = (s64) (M2C_FIELD(arg3, s64 *, 0) + ((s64) ((M2C_FIELD(unksp10, s16 *, 0x2A) << M2C_FIELD(unksp10, s16 *, 0x2C)) * ((s64) temp_at * temp_v0) * 0x32) / (s64) temp_t0));
    M2C_TRAP_IF(temp_t0 == 0);
    M2C_FIELD(arg3, s16 *, 0x18) = (s16) M2C_FIELD(unksp10, s16 *, 0x24);
}

s32 crime_getustmsc(s32 arg0, void *arg1) {
    void *temp_a1;

    temp_a1 = M2C_FIELD((arg0 * 0x40), void **, 0xC);
    crm_getustmsc(M2C_FIELD(temp_a1, void **, 0x80), M2C_FIELD(temp_a1, s64 **, 0x8C), M2C_FIELD(M2C_FIELD(temp_a1, void **, 0x7C), void **, 0x30), arg1);
    return 0;
}

void crimeFrameInfo(void *arg0, void *arg1, void *arg2) {
    s64 sp28;
    s32 var_a6;
    s64 *temp_s2;
    s64 *var_a5;
    s64 temp_a0;
    void *temp_a1;

    temp_s2 = M2C_FIELD(arg0, s64 **, 0x8C);
    M2C_FIELD(arg2, s8 *, 0x1A) = 0;
    M2C_FIELD(arg2, u8 *, 0x1B) = 0U;
    temp_a0 = temp_s2 + 0x348;
    sp28 = temp_a0;
    mutex_lock((void *) temp_a0, 0x19);
    var_a5 = temp_s2;
    var_a6 = 0;
loop_1:
    var_a6 += 1;
    if (M2C_FIELD(var_a5, s32 *, 0x2C) != arg1) {
        var_a5 += 0x18;
        if (var_a6 < 0x20) {
            goto loop_1;
        }
    } else if (M2C_FIELD(var_a5, u8 *, 0x38) != 0) {
        M2C_FIELD(arg2, s8 *, 0x1A) = 1;
    }
    temp_a1 = M2C_FIELD(arg1, void **, 0x4C);
    if (temp_a1 != NULL) {
        M2C_FIELD(arg2, u8 *, 0x1B) = (u8) M2C_FIELD(temp_a1, u8 *, 0x550);
    }
    crm_getustmsc(M2C_FIELD(arg0, void **, 0x80), temp_s2, M2C_FIELD(M2C_FIELD(arg0, void **, 0x7C), void **, 0x30), arg2);
    mutex_unlock((void *) sp28);
}
