s32 crmAllocTiles(u16 *, s32, s32, M2C_UNK);        /* extern */
M2C_UNK crmFreeTiles(u16 *, s32, s32, u8);          /* extern */
s32 crmNextIncarnation();                           /* extern */
M2C_UNK kern_free(u16 *);                           /* extern */
u16 *kern_malloc(s32);                              /* extern */
void crmSubtractZ(s64 arg0, u16 *arg1);             /* static */

s32 crmAddZ(void *arg0, void *arg1) {
    s64 sp20;
    s16 temp_t0;
    s16 temp_t1;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_at;
    s32 temp_t0_2;
    s32 temp_t1_2;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a5_3;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_s1;
    s32 var_t9;
    s32 var_v0;
    s32 var_v0_3;
    u16 *temp_v0_2;
    u16 *var_a1_2;
    u16 *var_a5_2;
    u16 *var_s5;
    u16 *var_t2;
    u16 *var_t8_2;
    u16 temp_a1;
    u16 temp_a3;
    u16 temp_a7;
    u16 temp_t0_3;
    u16 temp_t2;
    u16 var_a6;
    u16 var_t0;
    u8 temp_s0_2;
    u8 temp_s2;
    void **temp_s3;
    void **var_a0;
    void **var_a4_3;
    void **var_t3;
    void **var_v0_2;
    void *temp_s0;
    void *temp_t8;
    void *temp_v0;
    void *var_a1;
    void *var_t8;

    temp_s3 = M2C_FIELD(M2C_FIELD(arg0, void **, 0x20), void ***, 0x1C);
    temp_s0 = *temp_s3;
    temp_s2 = M2C_FIELD(temp_s0, u8 *, 0x19);
    var_t2 = sp;
    temp_s0_2 = M2C_FIELD(temp_s0, u8 *, 0x18);
    if ((s32) temp_s2 > 0) {
        var_t8 = arg1;
        var_t3 = temp_s3;
        var_t9 = 0;
        var_s1 = 0;
        sp20 = (s64) arg0;
loop_4:
        var_t9 += 1;
        var_t8 += 2;
        *var_t2 = 0;
        var_a4 = 1;
        temp_a7 = M2C_FIELD(var_t8, u16 *, -2);
        var_v0_2 = var_t3;
        var_t3 += 0x20;
        var_a6 = temp_a7;
        if ((temp_a7 != 0) && ((s32) temp_s0_2 > 0)) {
            var_a5 = 1;
loop_9:
            temp_a5 = var_a5 + 1;
            if (var_a6 & var_a4) {
                temp_t0 = M2C_FIELD(var_v0_2, s16 *, 8);
                if (temp_t0 != 0) {
                    M2C_FIELD(var_v0_2, s16 *, 8) = (s16) (temp_t0 + 1);
                    goto block_12;
                }
                var_a6 = (var_a6 ^ var_a4) & 0xFFFF;
                var_s1 += 1;
                *var_t2 |= var_a4;
                if (var_a6 != 0) {
                    goto block_12;
                }
            } else {
block_12:
                temp_v0 = var_v0_2 + 2;
                temp_a4 = (var_a4 * 2) & 0xFFFF;
                temp_t0_2 = temp_a5 < (s32) temp_s0_2;
                if (var_a5 < (s32) temp_s0_2) {
                    if (var_a6 & temp_a4) {
                        temp_t1 = M2C_FIELD(temp_v0, s16 *, 8);
                        if (temp_t1 == 0) {
                            var_a6 = (var_a6 ^ temp_a4) & 0xFFFF;
                            var_s1 += 1;
                            *var_t2 |= temp_a4;
                            if (var_a6 == 0) {

                            } else {
                                goto block_8;
                            }
                        } else {
                            M2C_FIELD(temp_v0, s16 *, 8) = (s16) (temp_t1 + 1);
                            goto block_8;
                        }
                    } else {
block_8:
                        var_a5 = temp_a5 + 1;
                        var_v0_2 = temp_v0 + 2;
                        var_a4 = (temp_a4 * 2) & 0xFFFF;
                        if (temp_t0_2 != 0) {
                            goto loop_9;
                        }
                    }
                }
            }
        }
        var_t2 += 2;
        if (var_t9 < (s32) temp_s2) {
            goto loop_4;
        }
        if (var_s1 != 0) {
            temp_v0_2 = kern_malloc(var_s1 * 2);
            var_s5 = temp_v0_2;
            var_a1 = arg1;
            if (crmAllocTiles(temp_v0_2, var_s1, M2C_FIELD(*temp_s3, s32 *, 0xC), 4) != 0) {
                var_a4_2 = 0;
                var_a5_2 = sp;
loop_20:
                temp_a4_2 = var_a4_2 + 1;
                M2C_FIELD(var_a5_2, u16 *, 0) ^= M2C_FIELD(var_a1, u16 *, 0);
                if (temp_a4_2 < (s32) temp_s2) {
                    temp_t2 = M2C_FIELD(var_a5_2, u16 *, 2);
                    var_a4_2 = temp_a4_2 + 1;
                    temp_t0_3 = M2C_FIELD(var_a1, u16 *, 2);
                    var_a1 += 4;
                    var_a5_2 += 4;
                    M2C_FIELD(var_a5_2, s16 *, -2) = (s16) (temp_t0_3 ^ temp_t2);
                    if (var_a4_2 >= (s32) temp_s2) {

                    } else {
                        goto loop_20;
                    }
                }
                crmSubtractZ(sp20, sp);
                kern_free(var_s5);
                var_v0 = 0xC;
            } else {
                temp_at = M2C_FIELD(*temp_s3, u8 *, 0x15) * 2;
                *temp_at = (s16) (*temp_at + var_s1);
                *(s16 *)2 += var_s1;
                temp_t8 = *temp_s3;
                M2C_FIELD(temp_t8, s32 *, 4) = (s32) (M2C_FIELD(temp_t8, s32 *, 4) + var_s1);
                M2C_FIELD(*temp_s3, s32 *, 0x10) = crmNextIncarnation();
                if ((s32) temp_s2 > 0) {
                    var_a5_3 = 0;
                    var_a0 = temp_s3;
                    var_t8_2 = sp + 2;
                    var_v0_3 = 1;
                    do {
                        temp_a1 = M2C_FIELD(var_t8_2, u16 *, -2);
                        var_a7 = 1;
                        var_a6_2 = 0;
                        var_a4_3 = var_a0;
                        var_t0 = temp_a1;
                        if (temp_a1 != 0) {
                            var_a1_2 = M2C_FIELD(*temp_s3, s32 *, 8) + var_a5_3;
                            if ((s32) temp_s0_2 > 0) {
loop_30:
                                var_a6_2 += 1;
                                if (!(var_t0 & var_a7) || (M2C_FIELD(var_a4_3, s16 *, 8) = 1, var_t0 = (var_t0 ^ var_a7) & 0xFFFF, temp_a3 = *var_s5, var_s5 += 2, *var_a1_2 = temp_a3, (var_t0 != 0))) {
                                    var_a7 = (var_a7 * 2) & 0xFFFF;
                                    var_a1_2 += 2;
                                    var_a4_3 += 2;
                                    if (var_a6_2 < (s32) temp_s0_2) {
                                        goto loop_30;
                                    }
                                }
                            }
                        }
                        var_a0 += 0x20;
                        temp_t1_2 = var_v0_3 < (s32) temp_s2;
                        var_t8_2 += 2;
                        var_v0_3 += 1;
                        var_a5_3 += 0x20;
                    } while (temp_t1_2 != 0);
                }
                var_v0 = 0;
            }
        } else {
            goto block_25;
        }
    } else {
block_25:
        var_v0 = 0;
    }
    return var_v0;
}

void crmSubtractZ(void *arg0, s64 arg1) {
    s32 temp_t8;
    s32 var_a5;
    s32 var_a7;
    s32 var_ra;
    s32 var_s0;
    s32 var_t9;
    s64 temp_v0;
    s64 var_a1;
    u16 *temp_s4;
    u16 *var_a6;
    u16 *var_t8;
    u16 temp_at;
    u16 var_t2;
    u8 temp_s2;
    u8 temp_t3_2;
    void **temp_s3;
    void **var_a4;
    void **var_s1;
    void *temp_a2;
    void *temp_at_2;
    void *temp_t3;

    temp_s3 = M2C_FIELD(M2C_FIELD(arg0, void **, 0x20), void ***, 0x1C);
    temp_t3 = *temp_s3;
    temp_s2 = M2C_FIELD(temp_t3, u8 *, 0x19);
    temp_s4 = kern_malloc(0x200);
    var_a1 = subroutine_arg0;
    var_t9 = 0;
    var_s0 = 0;
    var_s1 = temp_s3;
    temp_t3_2 = M2C_FIELD(temp_t3, u8 *, 0x18);
    if ((s32) temp_s2 > 0) {
        var_ra = 1;
loop_7:
        temp_at = *var_a1;
        var_a1 += 2;
        var_t2 = temp_at;
        if (temp_at != 0) {
            var_a6 = M2C_FIELD(*temp_s3, s32 *, 8) + var_t9;
            if ((s32) temp_t3_2 > 0) {
                var_a7 = 0;
                var_a4 = var_s1;
                var_a5 = 1;
                var_t8 = &temp_s4[var_s0];
loop_3:
                var_a7 += 1;
                if (!(var_t2 & var_a5) || (temp_v0 = (s64) ((M2C_FIELD(var_a4, s16 *, 8) - 1) << 0x30) >> 0x30, M2C_FIELD(var_a4, s16 *, 8) = (s16) temp_v0, (temp_v0 != 0)) || (var_t8 += 2, var_t2 = (var_t2 ^ var_a5) & 0xFFFF, M2C_FIELD(var_t8, u16 *, -2) = (u16) *var_a6, var_s0 += 1, *var_a6 = 0, (var_t2 != 0))) {
                    var_a6 += 2;
                    var_a4 += 2;
                    var_a5 = (var_a5 * 2) & 0xFFFF;
                    if (var_a7 < (s32) temp_t3_2) {
                        goto loop_3;
                    }
                }
            }
        }
        temp_t8 = var_ra < (s32) temp_s2;
        var_s1 += 0x20;
        var_ra += 1;
        var_t9 += 0x20;
        if (temp_t8 != 0) {
            goto loop_7;
        }
        if (var_s0 != 0) {
            temp_at_2 = *temp_s3;
            M2C_FIELD(temp_at_2, s32 *, 4) = (s32) (M2C_FIELD(temp_at_2, s32 *, 4) - var_s0);
            M2C_FIELD(*temp_s3, s32 *, 0x10) = crmNextIncarnation();
            temp_a2 = *temp_s3;
            crmFreeTiles(temp_s4, var_s0, M2C_FIELD(temp_a2, s32 *, 0xC), M2C_FIELD(temp_a2, u8 *, 0x15));
        }
    }
    kern_free(temp_s4);
}
