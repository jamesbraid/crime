M2C_UNK bzero(s32, M2C_UNK, M2C_UNK);               /* extern */
M2C_UNK crmFifoWait(void *, M2C_UNK, M2C_UNK, s32); /* extern */
M2C_UNK crmIdleWait(void *, M2C_UNK, s32, s32);     /* extern */
M2C_UNK gbeBlankScreen(M2C_UNK, void *, void *, M2C_UNK); /* extern */
M2C_UNK us_delay(M2C_UNK, s64, s64, s64);           /* extern */

void crime_color(s32 arg1) {
    s32 temp_v0;
    s32 var_a2;

    var_a2 = 0xFF;
    if (arg1 < 0xFF) {
        var_a2 = arg1 + 1;
    }
    temp_v0 = var_a2 | (var_a2 << 8);
    *(s32 *)8 = temp_v0 | (temp_v0 << 0x10);
}

void crime_mapcolor(s64 arg1, s64 arg2, s64 arg3) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 var_a5;
    s64 var_a1;
    s64 var_a2;
    s64 var_a3;
    void *var_a6;

    var_a1 = arg1;
    var_a2 = arg2;
    var_a3 = arg3;
    var_a6 = *(void **)4;
    var_a5 = M2C_FIELD(var_a6, s32 *, 0x58000);
    if (var_a5 & 0x3F) {
loop_2:
        sp10 = M2C_ERROR(/* Read from unset register $a4 */);
        sp18 = var_a3;
        sp20 = var_a2;
        sp28 = var_a1;
        if (var_a5 == 0) {
            us_delay(1, var_a1, var_a2, var_a3);
            var_a1 = sp28;
            var_a5 = M2C_FIELD(subroutine_arg0, s32 *, -0x8000);
            var_a2 = sp20;
            var_a3 = sp18;
            var_a6 = (void *) subroutine_arg2;
            if (var_a5 & 0x3F) {
                goto loop_2;
            }
        }
    }
    M2C_FIELD((var_a6 + (var_a1 * 4)), s32 *, 0x54404) = (s32) ((var_a2 << 0x18) | (var_a3 << 0x10) | (M2C_ERROR(/* Read from unset register $a4 */) << 8));
}

void crime_sboxfi(void *arg0, s64 arg1, s32 arg2, s64 arg3) {
    s64 sp30;
    s64 sp28;
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_s0;
    s32 var_s1;
    s32 var_t9;
    void *temp_s3;
    void *temp_t8;
    void *temp_t9;

    sp28 = arg3;
    sp30 = arg1;
    temp_s3 = M2C_FIELD(*(void **)0x10, void **, 4);
    crmFifoWait((void *)7, 0xABCDE);
    temp_t9 = *(s32 *)8;
    temp_t8 = *(void **)0x10;
    M2C_FIELD(temp_s3, s32 *, 0x18) = 0x2F8;
    M2C_FIELD(arg0, s32 *, 0x2018) = 0x2F8;
    var_s1 = temp_t8 - arg2;
    M2C_FIELD(temp_s3, void **, 0xD0) = temp_t9;
    M2C_FIELD(arg0, void **, 0x20D0) = temp_t9;
    temp_s0 = temp_t8 - M2C_ERROR(/* Read from unset register $a4 */);
    if (var_s1 != 1) {
        var_t9 = temp_s0 < var_s1;
        goto block_2;
    }
    var_t9 = temp_s0 < var_s1;
    if (temp_s0 == 1) {
        var_s1 = 0;
        if (temp_s0 >= 0) {
            goto block_6;
        }
        var_s1 = 0;
        goto block_3;
    }
block_2:
    if (var_t9 != 0) {
block_3:
        M2C_FIELD(temp_s3, s32 *, 0x60) = 0x03000000;
        M2C_FIELD(arg0, s32 *, 0x2060) = 0x03000000;
    } else {
block_6:
        M2C_FIELD(temp_s3, s32 *, 0x60) = 0x03020000;
        M2C_FIELD(arg0, s32 *, 0x2060) = 0x03020000;
    }
    temp_a3 = (temp_s0 & 0xFFFF) | ((sp28 << 0x10) | (((var_s1 & 0xFFFF) | (sp30 << 0x10)) << 0x20));
    M2C_FIELD(temp_s3, s32 *, 0x70) = temp_a3;
    temp_a2 = (s32) (arg0 + 0x21F0) | 0x800;
    M2C_FIELD(arg0, s64 *, 0x2070) = (s64) temp_a3;
    *temp_a2 = 0;
    M2C_FIELD(arg0, s32 *, 0x21F8) = 0;
    crmIdleWait(arg0, 0xABCDE, temp_a2, temp_a3);
}

void crime_pnt2i(void *arg0, s64 arg1, s64 arg2) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 temp_a2;
    s32 temp_a3;
    void *temp_a6;

    sp20 = arg1;
    sp18 = arg2;
    sp10 = (s64) M2C_FIELD(*(void **)0x10, s32 *, 4);
    crmFifoWait((void *)6, 0xABCDE);
    M2C_FIELD(sp10, s32 *, 0x18) = 0x2F8;
    M2C_FIELD(arg0, s32 *, 0x2018) = 0x2F8;
    M2C_FIELD(sp10, s32 *, 0x60) = 0;
    M2C_FIELD(arg0, s32 *, 0x2060) = 0;
    temp_a6 = *(s32 *)8;
    M2C_FIELD(sp10, s32 *, 0xD0) = temp_a6;
    M2C_FIELD(arg0, s32 *, 0x20D0) = temp_a6;
    temp_a3 = (sp20 << 0x10) | ((*(void **)0x10 - sp18) & 0xFFFF);
    M2C_FIELD(sp10, s32 *, 0x70) = temp_a3;
    temp_a2 = (s32) (arg0 + 0x21F0) | 0x800;
    M2C_FIELD(arg0, s32 *, 0x2070) = temp_a3;
    *temp_a2 = 0;
    M2C_FIELD(arg0, s32 *, 0x21F8) = 0;
    crmIdleWait(arg0, 0xABCDE, temp_a2, temp_a3);
}

void crime_cmov2i(s32 arg1, s32 arg2) {
    *NULL = arg1;
    *(s32 *)4 = arg2;
}

void crime_drawbitmap(void *arg0, s64 arg1) {
    s64 spB8;
    s64 spB0;
    s64 spA8;
    s64 spA0;
    s64 sp98;
    s64 sp90;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s16 temp_s0;
    s16 var_s8;
    s32 temp_a3;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_ra_3;
    s32 temp_t1;
    s32 temp_t8_2;
    s32 temp_t8_4;
    s32 temp_t8_6;
    s32 temp_t8_7;
    s32 temp_t8_8;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_s2;
    s32 var_s4;
    s32 var_s6;
    s32 var_s7;
    s32 var_s8_2;
    s64 temp_a0;
    s64 temp_s2;
    s64 temp_s2_2;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 var_a1;
    s64 var_a2;
    s64 var_a4;
    u16 *var_s0;
    u16 *var_s0_2;
    u16 *var_s5;
    u16 temp_t8;
    u16 temp_t8_3;
    u16 temp_t8_5;
    void *temp_s3;
    void *temp_s4;

    sp28 = arg1;
    var_s5 = M2C_FIELD(arg1, u16 **, 0);
    var_s8 = M2C_FIELD(arg1, s16 *, 6);
    temp_s0 = M2C_FIELD(arg1, s16 *, 4);
    temp_s4 = *(void **)8;
    temp_s2 = *NULL - M2C_FIELD(arg1, s16 *, 8);
    temp_s3 = M2C_FIELD(*(void *)0x10, void **, 4);
    var_s6 = M2C_FIELD(arg1, s16 *, 0xA) + (*(void **)0x10 - *(void **)4);
    crmFifoWait((void *)0x14, 0xABCDE);
    sp38 = temp_s2;
    spA8 = var_s8 > 0x10;
    M2C_FIELD(temp_s3, s32 *, 0x18) = 0x802F8;
    M2C_FIELD(arg0, s32 *, 0x2018) = 0x802F8;
    M2C_FIELD(temp_s3, s32 *, 0x60) = 0x01000020;
    M2C_FIELD(arg0, s32 *, 0x2060) = 0x01000020;
    M2C_FIELD(temp_s3, void **, 0xD0) = temp_s4;
    M2C_FIELD(arg0, void **, 0x20D0) = temp_s4;
    M2C_FIELD(temp_s3, s32 *, 0xC0) = 0x1F0000;
    M2C_FIELD(arg0, s32 *, 0x20C0) = 0x1F0000;
    if (temp_s0 < 0x11) {
        sp20 = (s64) temp_s0;
        if (spA8 != 0) {
            var_a0 = 0;
            do {
loop_3:
                temp_t8 = *var_s5;
                var_a0 += 1;
                temp_ra = var_s6 | ((((sp38 + sp20) - 1) << 0x10) | (((sp38 << 0x10) | var_s6) << 0x20));
                M2C_FIELD(temp_s3, s32 *, 0x70) = temp_ra;
                M2C_FIELD(arg0, s64 *, 0x2070) = (s64) temp_ra;
                var_s5 += 2;
                temp_t8_2 = temp_t8 << 0x10;
                M2C_FIELD(temp_s3, s32 *, 0xC4) = temp_t8_2;
                var_s6 -= 1;
                *((s32) (arg0 + 0x20C4) | 0x800) = temp_t8_2;
                if (var_a0 < 0x10) {
                    goto loop_3;
                }
                crmFifoWait(arg0, 0x10, 0xABCDE);
                var_s8 -= 0x10;
                var_a0 = 0;
            } while (var_s8 >= 0x11);
        }
        var_a0_2 = var_s8 - 1;
        if (var_s8 != 0) {
            do {
                temp_t8_3 = *var_s5;
                temp_t9 = var_s6 | ((((sp38 + sp20) - 1) << 0x10) | (((sp38 << 0x10) | var_s6) << 0x20));
                M2C_FIELD(temp_s3, s32 *, 0x70) = temp_t9;
                var_a0_2 -= 1;
                M2C_FIELD(arg0, s64 *, 0x2070) = (s64) temp_t9;
                var_s5 += 2;
                temp_t8_4 = temp_t8_3 << 0x10;
                M2C_FIELD(temp_s3, s32 *, 0xC4) = temp_t8_4;
                var_s6 -= 1;
                *((s32) (arg0 + 0x20C4) | 0x800) = temp_t8_4;
            } while (var_a0_2 != -1);
        }
    } else {
        sp20 = (s64) temp_s0;
        if (temp_s0 < 0x21) {
            if (spA8 != 0) {
                var_a0_3 = 0;
                do {
loop_13:
                    temp_t8_5 = M2C_FIELD(var_s5, u16 *, 2);
                    var_a0_3 += 1;
                    temp_at = var_s6 | ((((sp38 + sp20) - 1) << 0x10) | (((sp38 << 0x10) | var_s6) << 0x20));
                    M2C_FIELD(temp_s3, s32 *, 0x70) = temp_at;
                    temp_ra_2 = M2C_FIELD(var_s5, u16 *, 0) << 0x10;
                    M2C_FIELD(arg0, s64 *, 0x2070) = (s64) temp_at;
                    var_s5 += 4;
                    temp_t8_6 = temp_t8_5 | temp_ra_2;
                    M2C_FIELD(temp_s3, s32 *, 0xC4) = temp_t8_6;
                    var_s6 -= 1;
                    *((s32) (arg0 + 0x20C4) | 0x800) = temp_t8_6;
                    if (var_a0_3 < 0x10) {
                        goto loop_13;
                    }
                    crmFifoWait(arg0, 0x10, 0xABCDE);
                    var_s8 -= 0x10;
                    var_a0_3 = 0;
                } while (var_s8 >= 0x11);
            }
            var_a0_4 = var_s8 - 1;
            if (var_s8 != 0) {
                do {
                    temp_at_2 = var_s6 | ((((sp38 + sp20) - 1) << 0x10) | (((sp38 << 0x10) | var_s6) << 0x20));
                    M2C_FIELD(temp_s3, s32 *, 0x70) = temp_at_2;
                    M2C_FIELD(arg0, s64 *, 0x2070) = (s64) temp_at_2;
                    var_a0_4 -= 1;
                    temp_t9_2 = M2C_FIELD(var_s5, u16 *, 2) | (M2C_FIELD(var_s5, u16 *, 0) << 0x10);
                    M2C_FIELD(temp_s3, s32 *, 0xC4) = temp_t9_2;
                    var_s5 += 4;
                    M2C_FIELD(arg0, s32 *, 0x20C4) = temp_t9_2;
                    var_s6 -= 1;
                    *((s32) (arg0 + 0x21F0) | 0x800) = 0;
                } while (var_a0_4 != -1);
            }
        } else {
            spB0 = sp38;
            temp_a0 = sp38 + 0xF;
            temp_v0 = (sp38 + sp20) - 1;
            sp90 = temp_v0;
            sp30 = (s64) var_s8;
            sp18 = temp_a0;
            if (temp_a0 < temp_v0) {
                var_s4 = (s32) (arg0 + 0x20C4) | 0x800;
                var_s7 = sp20 >> 4;
                sp98 = sp38 + 0x10;
                var_s8_2 = sp20 & 0xF;
loop_30:
                var_s0 = var_s5;
                var_s2 = var_s6;
                var_a1 = sp18 << 0x10;
                if (spA8 == 0) {
                    var_a4 = sp30;
                } else {
                    var_a2 = spB0 << 0x10;
                    do {
                        var_a0_5 = 0;
loop_23:
                        temp_a6 = var_s2 | (var_a1 | ((var_a2 | var_s2) << 0x20));
                        M2C_FIELD(temp_s3, s32 *, 0x70) = temp_a6;
                        M2C_FIELD(arg0, s64 *, 0x2070) = (s64) temp_a6;
                        var_a0_5 += 1;
                        sp10 = var_a2;
                        var_s2 -= 1;
                        temp_a3 = *var_s0 << 0x10;
                        M2C_FIELD(temp_s3, s32 *, 0xC4) = temp_a3;
                        var_s0 += (var_s7 + (var_s8_2 != 0)) * 2;
                        *var_s4 = temp_a3;
                        if (var_a0_5 < 0x10) {
                            goto loop_23;
                        }
                        crmFifoWait(arg0, 0x10, 0xABCDE, temp_a3);
                        var_a4 = subroutine_arg0 - 0x10;
                        var_a1 = subroutine_arg2;
                        var_a2 = sp10;
                    } while (var_a4 >= 0x11);
                }
                if ((var_a4 != 0) && (var_a4 > 0)) {
                    var_a0_6 = var_a4 - 1;
                    sp10 = spB0 << 0x10;
                    do {
                        temp_t1 = var_s2 | (subroutine_arg2 | ((sp10 | var_s2) << 0x20));
                        M2C_FIELD(temp_s3, s32 *, 0x70) = temp_t1;
                        M2C_FIELD(arg0, s64 *, 0x2070) = (s64) temp_t1;
                        var_a0_6 -= 1;
                        var_s2 -= 1;
                        temp_a7 = *var_s0 << 0x10;
                        M2C_FIELD(temp_s3, s32 *, 0xC4) = temp_a7;
                        var_s0 += (var_s7 + (var_s8_2 != 0)) * 2;
                        *var_s4 = temp_a7;
                    } while (var_a0_6 >= 0);
                }
                var_s5 += 2;
                spB0 = sp98;
                temp_s2_2 = sp18 + 0x10;
                sp98 += 0x10;
                crmFifoWait(arg0, 0x10, 0xABCDE);
                sp18 = temp_s2_2;
                if (temp_s2_2 < sp90) {
                    goto loop_30;
                }
                if (spA8 == 0) {
                    goto block_33;
                }
                goto block_41;
            }
            if (spA8 != 0) {
                var_s4 = (s32) (arg0 + 0x20C4) | 0x800;
                var_s7 = sp20 >> 4;
                var_s8_2 = sp20 & 0xF;
block_41:
                spA0 = sp30;
                var_s0_2 = var_s5;
                spB8 = spB0 << 0x10;
                do {
                    var_a0_7 = 0;
loop_43:
                    temp_at_3 = var_s6 | ((sp90 << 0x10) | ((var_s6 | spB8) << 0x20));
                    M2C_FIELD(temp_s3, s32 *, 0x70) = temp_at_3;
                    M2C_FIELD(arg0, s64 *, 0x2070) = (s64) temp_at_3;
                    var_a0_7 += 1;
                    var_s6 -= 1;
                    temp_t8_7 = *var_s0_2 << 0x10;
                    M2C_FIELD(temp_s3, s32 *, 0xC4) = temp_t8_7;
                    var_s0_2 += (var_s7 + (var_s8_2 != 0)) * 2;
                    *var_s4 = temp_t8_7;
                    if (var_a0_7 < 0x10) {
                        goto loop_43;
                    }
                    crmFifoWait(arg0, 0x10, 0xABCDE);
                    temp_v0_2 = spA0 - 0x10;
                    spA0 = temp_v0_2;
                } while (temp_v0_2 >= 0x11);
            } else {
block_33:
                var_s0_2 = var_s5;
                spA0 = sp30;
            }
            if (spA0 != 0) {
                if (spA0 > 0) {
                    spB8 = spB0 << 0x10;
                    var_a0_8 = spA0 - 1;
                    do {
                        temp_ra_3 = var_s6 | ((sp90 << 0x10) | ((var_s6 | spB8) << 0x20));
                        M2C_FIELD(temp_s3, s32 *, 0x70) = temp_ra_3;
                        M2C_FIELD(arg0, s64 *, 0x2070) = (s64) temp_ra_3;
                        var_a0_8 -= 1;
                        var_s6 -= 1;
                        temp_t8_8 = *var_s0_2 << 0x10;
                        M2C_FIELD(temp_s3, s32 *, 0xC4) = temp_t8_8;
                        var_s0_2 += ((sp20 >> 4) + ((sp20 & 0xF) != 0)) * 2;
                        *((s32) (arg0 + 0x20C4) | 0x800) = temp_t8_8;
                    } while (var_a0_8 >= 0);
                }
            }
        }
    }
    M2C_FIELD(arg0, s32 *, 0x21F8) = 0;
    crmIdleWait(arg0, 0xABCDE);
    *(void *)4 = (void *) (M2C_FIELD(sp28, s16 *, 0xE) + *(void *)4);
    *NULL = (void *) (M2C_FIELD(sp28, s16 *, 0xC) + *NULL);
}

void crime_unblank(void) {
    gbeBlankScreen(0, *(void **)8, *(void **)4, 0);
}

s32 crime_getdesc(s32 arg1) {
    s32 var_v0;

    var_v0 = 1;
    if (arg1 != 1) {
        var_v0 = 0;
    }
    return var_v0;
}

s32 crime_positioncursor(s32 arg1, s32 arg2) {
    M2C_FIELD(*(void **)4, s32 *, 0x70000) = (s32) ((arg1 & 0xFFF) | ((arg2 & 0xFFF) << 0x10));
    return 0;
}

void crime_clearfb(s64 arg0) {
    s32 temp_a0;
    s64 temp_a5;
    u16 temp_s2;
    u16 var_s0;
    void *temp_s5;

    temp_s5 = *(void **)8;
    *(void **)0x3C = 1;
    temp_a0 = M2C_FIELD(*(void **)0x10, s32 *, 4);
    unksp8 = (s64) temp_a0;
    bzero(temp_a0, 0x288, 0);
    var_s0 = M2C_FIELD(temp_s5, u16 *, 0x22);
    temp_s2 = M2C_FIELD(temp_s5, u16 *, 0x20);
    if (M2C_FIELD(temp_s5, u8 *, 0x2D) != 0) {
        var_s0 = (u16) ((s32) var_s0 >> 1);
    }
    *(s32 *)0xC = (s32) temp_s2;
    *(void **)0x10 = (void *) var_s0;
    *(void **)8 = (void *)1;
    crime_mapcolor(arg0, 0, 0, 0);
    crmIdleWait((void *) arg0, 0xABCDE);
    M2C_FIELD(unksp8, s32 *, 0x50) = 0;
    M2C_FIELD(arg0, s32 *, 0x2050) = 0;
    M2C_FIELD(unksp8, s32 *, 0x58) = 0;
    M2C_FIELD(arg0, s32 *, 0x2058) = 0;
    M2C_FIELD(unksp8, s32 *, 0x10) = 0x21;
    M2C_FIELD(arg0, s32 *, 0x2010) = 0x21;
    temp_a5 = var_s0 | (temp_s2 << 0x10);
    M2C_FIELD(unksp8, s64 *, 0x20) = temp_a5;
    M2C_FIELD(arg0, s64 *, 0x2020) = temp_a5;
    M2C_FIELD(unksp8, s32 *, 0x1B0) = 3;
    M2C_FIELD(arg0, s32 *, 0x21B0) = 3;
    M2C_FIELD(unksp8, s32 *, 0) = 0x800;
    M2C_FIELD(arg0, s32 *, 0x2000) = 0x800;
    M2C_FIELD(unksp8, s32 *, 8) = 0x800;
    M2C_FIELD(arg0, s32 *, 0x2008) = 0x800;
    crime_sboxfi((void *) arg0, 0, 0, (s64) temp_s2);
}

void crime_tpinit(void *arg0) {
    s32 temp_a7;
    s32 temp_a7_2;
    s32 var_a6;
    s32 var_a7;
    void *temp_a2;
    void *var_a4;
    void *var_a5;
    void *var_t0;

    var_a7 = 0x20;
    var_a6 = 0;
    temp_a2 = *(void **)4;
    M2C_FIELD(temp_a2, s32 *, 0x70008) = -0x100;
    var_a5 = NULL;
    M2C_FIELD(temp_a2, s32 *, 0x7000C) = 0xFF000000;
    var_a4 = temp_a2 + 0x80000;
    var_t0 = temp_a2 + 0x80080;
    M2C_FIELD(temp_a2, s32 *, 0x70000) = 0;
    do {
        var_a6 += 1;
        var_a5 += 4;
        M2C_FIELD(var_a4, s32 *, -0x8000) = (s32) M2C_FIELD(var_a5, s32 *, -4);
        var_a4 += 4;
    } while (var_a6 < 0x20);
loop_3:
    temp_a7 = var_a7 + 1;
    M2C_FIELD(var_t0, s32 *, -0x8000) = 0;
    if (temp_a7 < 0x40) {
        temp_a7_2 = temp_a7 + 1;
        M2C_FIELD(var_t0, s32 *, -0x7FFC) = 0;
        var_a7 = temp_a7_2 + 1;
        if ((temp_a7_2 >= 0x40) || (M2C_FIELD(var_t0, s32 *, -0x7FF8) = 0, var_t0 += 0xC, ((var_a7 < 0x40) == 0))) {

        } else {
            goto loop_3;
        }
    }
    M2C_FIELD(temp_a2, s32 *, 0x70004) = 1;
    gbeBlankScreen(0, *(void **)8, temp_a2, 0);
    crmIdleWait(arg0, 0xABCDE);
}
