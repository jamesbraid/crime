s64 __glCrmSetStoreBuffer(void *, s32, s32);        /* extern */
? __glInitAALineData();                             /* extern */
? __glInitLineData();                               /* extern */
f32 ceilf(f32);                                     /* extern */

s32 __glCrmWideLineRep(void *arg0) {
    s64 sp0;
    s32 temp_a2;
    s32 temp_a3;
    s32 var_s2;
    s32 var_s4;
    void *var_s0;

    temp_a3 = arg0->unk3054;
    temp_a2 = arg0->unk3050;
    var_s4 = arg0->unk74F8 - 1;
    if (var_s4 >= 0) {
        sp0 = temp_a3 - temp_a2;
loop_8:
        var_s2 = 0;
        if (temp_a2 < temp_a3) {
            var_s0 = (temp_a2 * 4) + arg0;
loop_15:
            if (var_s2 == 0) {
                if (var_s0->unk2FD0(arg0) != 0) {
                    var_s2 = 1;
                    if (arg0->unk770C == 0) {
                        goto block_14;
                    }
                    arg0->unk770C = 0U;
                } else {
                    goto block_14;
                }
            } else if (var_s0->unk3010(arg0) == 0) {
block_14:
                var_s0 += 4;
                if (var_s0 != ((temp_a3 * 4) + arg0)) {
                    goto loop_15;
                }
                if (var_s2 != 0) {
                    arg0->unk306C(arg0);
                } else {
                    goto block_20;
                }
            }
        } else {
block_20:
            arg0->unk3068(arg0);
        }
        var_s4 -= 1;
        if (arg0->unk749C != 0) {
            arg0->unk7D9C = (s32) (arg0->unk7D9C + 0x800);
            arg0->unk7D94 = (s32) (arg0->unk7D94 + 0x800);
            arg0->unk7D78 = (s32) (arg0->unk7D78 + 1);
            arg0->unk74AC = (s32) (arg0->unk74AC + 1);
        } else {
            arg0->unk7DA0 = (s32) (arg0->unk7DA0 + 0x800);
            arg0->unk7D98 = (s32) (arg0->unk7D98 + 0x800);
            arg0->unk7D7C = (s32) (arg0->unk7D7C + 1);
            arg0->unk74B0 = (s32) (arg0->unk74B0 + 1);
        }
        if (var_s4 != -1) {
            goto loop_8;
        }
    }
    return 0;
}

s32 __glCrmWideStippledLineRep(void *arg0) {
    s64 sp100;
    s32 sp4;
    s32 sp0;
    s32 *var_a2;
    s32 *var_a2_2;
    s32 *var_a3;
    s32 *var_a3_2;
    s32 temp_a1;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_s3;
    s32 temp_t9;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_s4;
    void *var_s0;

    var_a2 = arg0->unk7708;
    temp_a7 = arg0->unk3054;
    temp_a6 = arg0->unk3050;
    temp_s3 = (s32) (arg0->unk7628 + 0x1F) >> 5;
    if (temp_s3 > 0) {
        var_a4 = 0;
        var_a3 = sp;
        if (temp_s3 & 1) {
            var_a3 = &sp4;
            temp_t9 = *var_a2;
            var_a4 = 1;
            var_a2 += 4;
            sp0 = temp_t9;
        }
        if ((temp_s3 >> 1) != 0) {
            do {
                var_a4 += 2;
                *var_a3 = var_a2->unk0;
                var_a3 += 8;
                temp_at = var_a2->unk4;
                var_a2 += 8;
                var_a3->unk-4 = temp_at;
            } while (temp_s3 != var_a4);
        }
    }
    var_s4 = arg0->unk1DC - 1;
    if (var_s4 >= 0) {
        sp100 = temp_a7 - temp_a6;
loop_11:
        var_s0 = (temp_a6 * 4) + arg0;
        if (temp_a6 < temp_a7) {
loop_13:
            var_s0 += 4;
            if (var_s0->unk3010(arg0) == 0) {
                if (var_s0 == ((temp_a7 * 4) + arg0)) {
                    goto block_15;
                }
                goto loop_13;
            }
        } else {
block_15:
            arg0->unk306C(arg0);
        }
        if (var_s4 != 0) {
            var_a3_2 = arg0->unk7708;
            if (temp_s3 > 0) {
                var_a2_2 = sp;
                var_a4_2 = 0;
                if (temp_s3 & 1) {
                    var_a3_2 += 4;
                    var_a4_2 = 1;
                    var_a2_2 = &sp4;
                    var_a3_2->unk-4 = sp0;
                }
                if ((temp_s3 >> 1) != 0) {
                    do {
                        var_a4_2 += 2;
                        *var_a3_2 = var_a2_2->unk0;
                        var_a3_2 += 8;
                        temp_a1 = var_a2_2->unk4;
                        var_a2_2 += 8;
                        var_a3_2->unk-4 = temp_a1;
                    } while (temp_s3 != var_a4_2);
                }
            }
            if (arg0->unk749C == 0) {
                arg0->unk7DA0 = (s32) (arg0->unk7DA0 + 0x800);
                arg0->unk7D98 = (s32) (arg0->unk7D98 + 0x800);
                arg0->unk7D7C = (s32) (arg0->unk7D7C + 1);
                arg0->unk74B0 = (s32) (arg0->unk74B0 + 1);
            } else {
                arg0->unk7D9C = (s32) (arg0->unk7D9C + 0x800);
                arg0->unk7D94 = (s32) (arg0->unk7D94 + 0x800);
                arg0->unk7D78 = (s32) (arg0->unk7D78 + 1);
                arg0->unk74AC = (s32) (arg0->unk74AC + 1);
            }
        }
        var_s4 -= 1;
        if (var_s4 != -1) {
            goto loop_11;
        }
    }
    return 0;
}

s8 __glCrmScissorLine(void *arg0) {
    s32 *var_s6;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_at;
    s32 temp_ra;
    s32 temp_ra_2;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s7;
    s32 temp_t1;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1;
    s32 var_a2;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_s5;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_v0;
    s32 var_v1;
    s32 var_v1_2;
    u32 temp_a3_2;
    u32 var_a3;

    temp_a5 = arg0->unk7D7C;
    temp_a3 = arg0->unk7D78;
    var_a4 = arg0->unk74B0;
    temp_s4 = arg0->unk7410;
    temp_s3 = arg0->unk7408;
    temp_s1 = arg0->unk740C;
    temp_t2 = arg0->unk7404;
    var_a2 = arg0->unk74AC;
    if ((var_a2 < temp_t2) || (var_a2 >= temp_s1) || (var_a4 < temp_s3) || (var_a4 >= temp_s4) || (temp_a3 < temp_t2) || (temp_a3 >= temp_s1) || (temp_a5 < temp_s3) || (temp_a5 >= temp_s4)) {
        var_s6 = arg0->unk7708;
        temp_t1 = arg0->unk7D8C;
        var_a5 = arg0->unk7D88;
        temp_ra = arg0->unk7D84;
        temp_v0 = arg0->unk749C;
        temp_t3 = arg0->unk7D80;
        temp_t8 = (temp_v0 == 0) ? temp_ra : 0;
        temp_at = arg0->unk7628;
        temp_ra_2 = (temp_v0 == 0) ? 0 : temp_ra;
        temp_t9 = (temp_v0 == 0) ? temp_t3 : 0;
        var_s5 = temp_at;
        temp_t3_2 = (temp_v0 == 0) ? 0 : temp_t3;
        if (temp_at != 0) {
            var_a7 = 0;
            temp_s0 = arg0->unk7D90 - temp_t1;
loop_15:
            temp_s7 = (var_s5 > 0x20) ? 0x20 : var_s5;
            var_t0 = temp_s7 - 1;
            var_a6 = -1;
            var_s5 -= temp_s7;
            if (var_t0 >= 0) {
                var_a3 = 0x80000000;
                var_a6 = -1;
                if (temp_s7 & 1) {
                    if (var_a2 >= temp_t2) {
                        var_v1 = ~0x80000000U;
                        if ((var_a2 < temp_s1) && (var_v1 = ~0x80000000U, ((var_a4 < temp_s3) == 0))) {
                            if (var_a4 >= temp_s4) {
                                goto block_10;
                            }
                        } else {
                            goto block_11;
                        }
                    } else {
block_10:
                        var_v1 = ~0x80000000U;
block_11:
                        var_a7 += 1;
                        var_a6 = -1 & var_v1;
                    }
                    temp_a2 = var_a2 + temp_t9;
                    var_a3 = 0x80000000U >> 1;
                    temp_a1 = var_a5 < 1;
                    var_t0 -= 1;
                    var_a2 = (temp_a1 == 0) ? (temp_a2 + temp_t3_2) : temp_a2;
                    temp_a4 = var_a4 + temp_ra_2;
                    var_a5 = ((temp_a1 != 0) ? var_a5 : (temp_s0 + var_a5)) + temp_t1;
                    var_a4 = (temp_a1 == 0) ? (temp_a4 + temp_t8) : temp_a4;
                }
                var_t0_2 = var_t0 - 2;
                if ((temp_s7 >> 1) != 0) {
loop_26:
                    if (var_a2 >= temp_t2) {
                        var_v1_2 = ~var_a3;
                        if ((var_a2 < temp_s1) && (var_v1_2 = ~var_a3, ((var_a4 < temp_s3) == 0))) {
                            if (var_a4 >= temp_s4) {
                                goto block_30;
                            }
                        } else {
                            goto block_31;
                        }
                    } else {
block_30:
                        var_v1_2 = ~var_a3;
block_31:
                        var_a7 += 1;
                        var_a6 &= var_v1_2;
                    }
                    temp_a4_2 = var_a4 + temp_ra_2;
                    temp_a2_2 = var_a2 + temp_t9;
                    temp_a1_2 = var_a5 < 1;
                    temp_a2_3 = (temp_a1_2 == 0) ? (temp_a2_2 + temp_t3_2) : temp_a2_2;
                    temp_a3_2 = var_a3 >> 1;
                    temp_a5_2 = ((temp_a1_2 != 0) ? var_a5 : (temp_s0 + var_a5)) + temp_t1;
                    temp_a4_3 = (temp_a1_2 == 0) ? (temp_a4_2 + temp_t8) : temp_a4_2;
                    if ((temp_a2_3 >= temp_t2) && (temp_a2_3 < temp_s1)) {
                        var_v0 = ~temp_a3_2;
                        if (temp_a4_3 >= temp_s3) {
                            if (temp_a4_3 >= temp_s4) {
                                goto block_22;
                            }
                        } else {
                            goto block_23;
                        }
                    } else {
block_22:
                        var_v0 = ~temp_a3_2;
block_23:
                        var_a7 += 1;
                        var_a6 &= var_v0;
                    }
                    var_a3 = temp_a3_2 >> 1;
                    temp_a4_4 = temp_a4_3 + temp_ra_2;
                    temp_a2_4 = temp_a2_3 + temp_t9;
                    temp_v1 = temp_a5_2 < 1;
                    var_a2 = (temp_v1 == 0) ? (temp_a2_4 + temp_t3_2) : temp_a2_4;
                    var_a5 = ((temp_v1 != 0) ? temp_a5_2 : (temp_s0 + temp_a5_2)) + temp_t1;
                    var_a4 = (temp_v1 == 0) ? (temp_a4_4 + temp_t8) : temp_a4_4;
                    if (var_t0_2 != -1) {
                        var_t0_2 -= 2;
                        goto loop_26;
                    }
                }
            }
            *var_s6 = var_a6;
            var_s6 += 4;
            if (var_s5 != 0) {
                goto loop_15;
            }
            if (arg0->unk7628 != var_a7) {
                return 1;
            }
            /* Duplicate return node #40. Try simplifying control flow for better match */
            arg0->unk770C = 1;
            return 1;
        }
        arg0->unk770C = 1;
        return 1;
    }
    return 0;
}

s32 __glCrmScissorStippledLine(void *arg0) {
    s64 sp0;
    s32 *var_s7;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a3_4;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a6;
    s32 temp_at;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s2;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s8;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_t9_2;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    s32 var_at;
    s32 var_s6;
    s32 var_t1;
    s32 var_v0;
    s32 var_v1;
    s32 var_v1_2;
    u32 temp_a2;
    u32 var_a2;

    var_a4 = arg0->unk74B0;
    temp_a6 = arg0->unk7D7C;
    temp_a5 = arg0->unk7D78;
    temp_s5 = arg0->unk7410;
    temp_s4 = arg0->unk7408;
    temp_s2 = arg0->unk740C;
    var_a3 = arg0->unk74AC;
    temp_s1 = arg0->unk7404;
    if ((var_a3 < temp_s1) || (var_a3 >= temp_s2) || (var_a4 < temp_s4) || (var_a4 >= temp_s5) || (temp_a5 < temp_s1) || (temp_a5 >= temp_s2) || (temp_a6 < temp_s4) || (temp_a6 >= temp_s5)) {
        var_s7 = arg0->unk7708;
        temp_t2 = arg0->unk7D8C;
        temp_t3 = arg0->unk7D84;
        temp_v0 = arg0->unk749C;
        temp_t9 = arg0->unk7D80;
        temp_t8 = (temp_v0 == 0) ? temp_t3 : 0;
        temp_at = arg0->unk7628;
        var_a5 = arg0->unk7D88;
        temp_t3_2 = (temp_v0 == 0) ? 0 : temp_t3;
        temp_ra = (temp_v0 == 0) ? temp_t9 : 0;
        var_s6 = temp_at;
        temp_t9_2 = (temp_v0 == 0) ? 0 : temp_t9;
        if (temp_at != 0) {
            var_a6 = 0;
            temp_s0 = arg0->unk7D90 - temp_t2;
            sp0 = (s64) arg0;
            var_v1 = var_a3 < temp_s1;
loop_15:
            var_a2 = 0x80000000;
            temp_s8 = (var_s6 > 0x20) ? 0x20 : var_s6;
            var_t1 = temp_s8 - 1;
            var_a7 = -1;
            temp_t0 = *var_s7;
            var_s6 -= temp_s8;
            if (var_t1 >= 0) {
                var_a7 = -1;
                if (temp_s8 & 1) {
                    var_t1 -= 1;
                    temp_a3 = var_a3 + temp_ra;
                    if (temp_t0 & 0x80000000) {
                        if (var_v1 == 0) {
                            var_v1_2 = ~0x80000000U;
                            if ((var_a3 < temp_s2) && (var_v1_2 = ~0x80000000U, ((var_a4 < temp_s4) == 0))) {
                                if (var_a4 >= temp_s5) {
                                    goto block_10;
                                }
                            } else {
                                goto block_11;
                            }
                        } else {
block_10:
                            var_v1_2 = ~0x80000000U;
block_11:
                            var_a6 += 1;
                            var_a7 = -1 & var_v1_2;
                        }
                    } else {
                        var_a6 += 1;
                    }
                    var_a2 = 0x80000000U >> 1;
                    temp_a1 = var_a5 < 1;
                    var_a3 = (temp_a1 == 0) ? (temp_a3 + temp_t9_2) : temp_a3;
                    temp_a4 = var_a4 + temp_t3_2;
                    var_a5 = ((temp_a1 != 0) ? var_a5 : (temp_s0 + var_a5)) + temp_t2;
                    var_a4 = (temp_a1 == 0) ? (temp_a4 + temp_t8) : temp_a4;
                }
                var_v0 = var_a3 < temp_s2;
                if ((temp_s8 >> 1) != 0) {
loop_26:
                    var_t1 -= 2;
                    if (temp_t0 & var_a2) {
                        if (var_a3 >= temp_s1) {
                            var_at = ~var_a2;
                            if ((var_v0 != 0) && (var_at = ~var_a2, ((var_a4 < temp_s4) == 0))) {
                                if (var_a4 >= temp_s5) {
                                    goto block_31;
                                }
                            } else {
                                goto block_32;
                            }
                        } else {
block_31:
                            var_at = ~var_a2;
block_32:
                            var_a6 += 1;
                            var_a7 &= var_at;
                        }
                    } else {
                        var_a6 += 1;
                    }
                    temp_a4_2 = var_a4 + temp_t3_2;
                    temp_a3_2 = var_a3 + temp_ra;
                    temp_v0_2 = var_a5 < 1;
                    temp_a2 = var_a2 >> 1;
                    temp_a3_3 = (temp_v0_2 == 0) ? (temp_a3_2 + temp_t9_2) : temp_a3_2;
                    temp_a5_2 = ((temp_v0_2 != 0) ? var_a5 : (temp_s0 + var_a5)) + temp_t2;
                    temp_a4_3 = (temp_v0_2 == 0) ? (temp_a4_2 + temp_t8) : temp_a4_2;
                    if (temp_t0 & temp_a2) {
                        if ((temp_a3_3 >= temp_s1) && (temp_a3_3 < temp_s2) && (temp_a4_3 >= temp_s4)) {
                            if (temp_a4_3 >= temp_s5) {
                                goto block_24;
                            }
                        } else {
block_24:
                            var_a6 += 1;
                            var_a7 &= ~temp_a2;
                        }
                    } else {
                        var_a6 += 1;
                    }
                    var_a2 = temp_a2 >> 1;
                    temp_a1_2 = temp_a5_2 < 1;
                    temp_a4_4 = temp_a4_3 + temp_t3_2;
                    temp_a3_4 = temp_a3_3 + temp_ra;
                    var_a4 = (temp_a1_2 == 0) ? (temp_a4_4 + temp_t8) : temp_a4_4;
                    var_a5 = ((temp_a1_2 != 0) ? temp_a5_2 : (temp_s0 + temp_a5_2)) + temp_t2;
                    var_a3 = (temp_a1_2 == 0) ? (temp_a3_4 + temp_t9_2) : temp_a3_4;
                    var_v0 = var_a3 < temp_s2;
                    if (var_t1 != -1) {
                        goto loop_26;
                    }
                }
            }
            var_v1 = var_a3 < temp_s1;
            *var_s7 = temp_t0 & var_a7;
            var_s7 += 4;
            if (var_s6 != 0) {
                goto loop_15;
            }
            if (sp0->unk7628 != var_a6) {
                return 0;
            }
            /* Duplicate return node #44. Try simplifying control flow for better match */
            return 1;
        }
        return 1;
    }
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x60, 0x64, 0x68, 0x6c], gap at: 0x50. */
void __glCrmRenderCheapFogLine(? *arg0, void *arg1, void *arg2) {
    s32 sp24;
    s32 sp20;
    ? sp10;
    ? *temp_a6;
    ? *temp_a7;
    void *temp_s8;

    unksp58 = (s64) arg0->unk7DBC;
    temp_s8 = arg0->unk7DB8;
    arg0->unk30F4(sp, arg1->unk8, arg1->unkB0);
    arg0->unk30F4(arg0, &sp10, arg2->unk8);
    temp_a6 = arg2->unk8;
    temp_a7 = arg1->unk8;
    arg1->unk8 = (? *) sp;
    arg2->unk8 = &sp10;
    sp20 = 0xFF000;
    temp_s8->unk2178 = sp20;
    unksp58->unk2178 = sp20;
    sp24 = 0;
    temp_s8->unk2180 = sp24;
    unksp58->unk2180 = sp24;
    unksp50 = (s64) temp_a7;
    unksp48 = (s64) temp_a6;
    arg0->unk30BC(arg0, arg1, arg2, sp20, 0xFF000, &sp10, temp_a6, temp_a7);
    arg1->unk8 = (? *) unksp50;
    arg2->unk8 = (? *) unksp48;
}

void __glCrmRenderAliasLine(void *arg0, void *arg1, void *arg2) {
    f64 sp38;
    f64 sp0;
    f32 temp_f20;
    f32 temp_f6;
    f32 var_f6;
    f64 temp_f0;
    s32 temp_a2;
    s32 temp_f25;
    s32 temp_s1;
    s32 var_a7;
    void *temp_a3;
    void *var_a0;

    temp_s1 = arg0->unk76E4;
    __glInitLineData();
    if (arg0->unk74A0 != 0) {
        temp_a2 = temp_s1 & 0x8000;
        temp_f20 = arg0->unkDD8 / arg0->unk74A8;
        if (temp_s1 & 0x4000) {
            temp_f25 = (s32) (temp_f20 * (arg2->unk88 - arg1->unk88));
            arg0->unk7674 = temp_f25;
            arg0->unk7678 = (s32) (temp_f25 << 5);
            arg0->unk75FC = (s32) (s64) M2C_ERROR(/* unknown instruction: madd.s $f23, $f23, $f22, $f25 */);
        }
        if ((temp_a2 != 0) && (arg0->unk7498 == 0)) {
            arg0->unk7498 = 1U;
            arg0->unk7494 = 0;
            arg0->unk7490 = 0;
        }
        var_a7 = temp_s1 & 8;
        if (temp_s1 & 0x1000) {
            if (arg0->unk778 == 0x1102) {
                arg0->unk74F4 = (f32) arg1->unk68;
                var_f6 = temp_f20 * (arg2->unk68 - arg1->unk68);
            } else {
                temp_f0 = arg0->unk30F8(arg0, arg1, temp_a2);
                sp0 = temp_f0;
                sp38 = temp_f0;
                temp_f6 = arg0->unk30F8(arg0, arg2) - (f32) sp0;
                arg0->unk74F4 = (f32) sp0;
                var_f6 = temp_f20 * temp_f6;
            }
            arg0->unk76E0 = var_f6;
            arg0->unk7624 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f5, $f22, $f6 */);
            var_a7 = temp_s1 & 8;
        }
        if (var_a7 != 0) {
            arg0->unk76AC = (f32) (temp_f20 * (arg2->unk30 - arg1->unk30));
            arg0->unk76B0 = (f32) (temp_f20 * (arg2->unk34 - arg1->unk34));
            arg0->unk7610 = (f32) arg1->unk30;
            arg0->unk7614 = (f32) arg1->unk34;
            arg0->unk76B8 = (f32) (temp_f20 * (arg2->unk3C - arg1->unk3C));
            arg0->unk761C = (f32) arg1->unk3C;
            arg0->unk7DA4 = (f32) arg1->unk8C;
            arg0->unk7DA8 = (f32) arg2->unk8C;
        }
        var_a0 = arg2->unk8;
        if (temp_s1 & 2) {
            temp_a3 = arg1->unk8;
            if (arg0->unkC94 != 0) {
                arg0->unk7658 = (f32) (temp_f20 * (var_a0->unkC - temp_a3->unkC));
                arg0->unk7654 = (f32) (temp_f20 * (var_a0->unk8 - temp_a3->unk8));
                arg0->unk7650 = (f32) (temp_f20 * (var_a0->unk4 - temp_a3->unk4));
            }
            arg0->unk764C = (f32) (temp_f20 * (var_a0->unk0 - temp_a3->unk0));
            var_a0 = arg1->unk8;
        }
        if (temp_s1 & 1) {
            arg0->unk7604 = (f32) var_a0->unk4;
            arg0->unk7608 = (f32) var_a0->unk8;
            arg0->unk760C = (f32) var_a0->unkC;
        }
        arg0->unk7628 = arg0->unk74A0;
        arg0->unk7600 = (f32) var_a0->unk0;
        arg0->unk305C(arg0, arg0->unk74A0);
    }
}

void __glCrmRenderAntiAliasLine(void *arg0, void *arg1, void *arg2) {
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 sp0;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f20;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f26;
    f32 temp_f28;
    f32 temp_f30;
    f32 temp_f5;
    f32 var_f20;
    f32 var_f22;
    f32 var_f5;
    s16 temp_t0;
    s16 temp_t0_2;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a4;
    s32 temp_f25;
    s32 temp_f3;
    s32 temp_s3;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s8;
    s32 var_a7;
    s32 var_s0;
    s32 var_s1;
    s32 var_s2;
    s32 var_s8;
    s64 temp_a2;
    u8 temp_a1;
    void *temp_a3;
    void *var_a0;

    sp18 = (s64) arg0->unk7DBC;
    sp10 = (s64) arg0->unk7DB8;
    temp_s8 = arg0->unk76E4;
    __glInitAALineData();
    temp_f0 = arg0->unk74A8;
    if (temp_f0 != 0.0f) {
        temp_f20 = arg0->unkDD8 / temp_f0;
        if (temp_s8 & 0x4000) {
            temp_f25 = (s32) (temp_f20 * (arg2->unk88 - arg1->unk88));
            arg0->unk7674 = temp_f25;
            arg0->unk7678 = (s32) (temp_f25 << 5);
            arg0->unk75FC = (s32) M2C_ERROR(/* unknown instruction: madd.s $f21, $f21, $f23, $f22 */);
        }
        temp_a2 = temp_s8 & 0x8000;
        sp50 = temp_a2;
        if ((temp_a2 != 0) && (arg0->unk7498 == 0)) {
            arg0->unk7498 = 1U;
            arg0->unk7494 = 0;
            arg0->unk7490 = 0;
        }
        var_a7 = temp_s8 & 2;
        if (temp_s8 & 0x1000) {
            if (arg0->unk778 == 0x1102) {
                arg0->unk74F4 = (f32) arg1->unk68;
                var_f5 = temp_f20 * (arg2->unk68 - arg1->unk68);
            } else {
                temp_f24 = arg0->unk30F8(arg0, arg1, temp_a2);
                temp_f5 = arg0->unk30F8(arg0, arg2) - temp_f24;
                arg0->unk74F4 = temp_f24;
                var_f5 = temp_f20 * temp_f5;
            }
            arg0->unk76E0 = var_f5;
            arg0->unk7624 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f6, $f22, $f5 */);
            var_a7 = temp_s8 & 2;
        }
        temp_a1 = arg0->unkC94;
        var_a0 = arg2->unk8;
        if (var_a7 != 0) {
            temp_a3 = arg1->unk8;
            arg0->unk764C = (f32) (temp_f20 * (var_a0->unk0 - temp_a3->unk0));
            if (temp_a1 != 0) {
                arg0->unk7650 = (f32) (temp_f20 * (var_a0->unk4 - temp_a3->unk4));
                arg0->unk7654 = (f32) (temp_f20 * (var_a0->unk8 - temp_a3->unk8));
                arg0->unk7658 = (f32) (temp_f20 * (var_a0->unkC - temp_a3->unkC));
            }
            var_a0 = arg1->unk8;
        }
        arg0->unk7600 = (f32) var_a0->unk0;
        if (temp_a1 != 0) {
            arg0->unk7604 = (f32) var_a0->unk4;
            arg0->unk7608 = (f32) var_a0->unk8;
            arg0->unk760C = (f32) var_a0->unkC;
        }
        if ((arg0->unk6E38 != 0) && ((arg0->unk76AC = (f32) (temp_f20 * (arg2->unk30 - arg1->unk30)), arg0->unk76B0 = (f32) (temp_f20 * (arg2->unk34 - arg1->unk34)), arg0->unk7610 = (f32) arg1->unk30, arg0->unk7614 = (f32) arg1->unk34, arg0->unk76B8 = (f32) (temp_f20 * (arg2->unk3C - arg1->unk3C)), arg0->unk761C = (f32) arg1->unk3C, arg0->unk7DA4 = (f32) arg1->unk8C, arg0->unk7DA8 = (f32) arg2->unk8C, temp_a0 = *arg0->unk9B4, (temp_a0 == 0x8062)) || (temp_a0 == 0x1E01))) {
            sp0 = arg0->unk7E68;
            temp_a4 = (sp0 & ~3) | 1;
            sp0 = temp_a4;
            sp10->unk2110 = temp_a4;
            sp18->unk2110 = sp0;
            arg0->unk7658 = 0.0f;
            arg0->unk760C = (f32) arg0->unk7848;
        }
        temp_f30 = arg0->unk7524;
        temp_f26 = arg0->unk7520;
        temp_f28 = arg0->unk751C;
        temp_f24_2 = arg0->unk7518;
        temp_s4 = arg0->unk74BC;
        temp_s5 = arg0->unk74B4;
        var_s2 = arg0->unk74B0;
        var_s1 = arg0->unk74AC;
        temp_s3 = arg0->unk74C8;
        var_s0 = arg0->unk74C4;
        var_f22 = M2C_ERROR(/* unknown instruction: madd.s $f22, $f22, $f27, $f23 */);
        sp58 = (s64) arg0->unk74C0;
        sp60 = (s64) arg0->unk74B8;
        var_f20 = M2C_ERROR(/* unknown instruction: madd.s $f20, $f20, $f21, $f23 */);
        if (sp50 != 0) {
            temp_t0 = arg0->unk1E2;
            sp8 = (s64) temp_s8;
            arg0->unk7530 = (f32) ((f32) (arg0->unk7494 + (arg0->unk7490 * temp_t0)) - arg0->unkDD4);
            arg0->unk7534 = (f32) (arg0->unkDD8 / (f32) temp_t0);
        }
        sp8 = (s64) temp_s8;
        var_s8 = arg0->unk74F8 - 1;
        if (var_s8 >= 0) {
loop_27:
            temp_f0_2 = -arg0->unkDD4;
            if (temp_f0_2 < var_f20) {
loop_31:
                var_s0 -= temp_s3;
                if (var_s0 >= 0) {
                    var_f22 -= temp_f26;
                    var_s2 -= temp_s4;
                    var_s1 -= temp_s5;
                    var_f20 -= temp_f24_2;
                } else {
                    var_f22 -= temp_f30;
                    var_s0 &= 0x7FFFFFFF;
                    var_s2 -= sp58;
                    var_f20 -= temp_f28;
                    var_s1 -= sp60;
                }
                if (temp_f0_2 < var_f20) {
                    var_s0 -= temp_s3;
                    if (var_s0 < 0) {
                        var_f22 -= temp_f30;
                        var_s0 &= 0x7FFFFFFF;
                        var_s2 -= sp58;
                        var_f20 -= temp_f28;
                        var_s1 -= sp60;
                    } else {
                        var_f22 -= temp_f26;
                        var_s2 -= temp_s4;
                        var_s1 -= temp_s5;
                        var_f20 -= temp_f24_2;
                    }
                    if (temp_f0_2 < var_f20) {
                        goto loop_31;
                    }
                }
            }
            if (var_f20 <= temp_f0_2) {
loop_40:
                var_s0 += temp_s3;
                if (var_s0 >= 0) {
                    var_f22 += temp_f26;
                    var_s2 += temp_s4;
                    var_s1 += temp_s5;
                    var_f20 += temp_f24_2;
                } else {
                    var_f22 += temp_f30;
                    var_s0 &= 0x7FFFFFFF;
                    var_s2 += sp58;
                    var_f20 += temp_f28;
                    var_s1 += sp60;
                }
                if (var_f20 <= temp_f0_2) {
                    var_s0 += temp_s3;
                    if (var_s0 < 0) {
                        var_f22 += temp_f30;
                        var_s0 &= 0x7FFFFFFF;
                        var_s2 += sp58;
                        var_f20 += temp_f28;
                        var_s1 += sp60;
                    } else {
                        var_f22 += temp_f26;
                        var_s2 += temp_s4;
                        var_s1 += temp_s5;
                        var_f20 += temp_f24_2;
                    }
                    if (var_f20 <= temp_f0_2) {
                        goto loop_40;
                    }
                }
            }
            arg0->unk74B0 = var_s2;
            arg0->unk74AC = var_s1;
            arg0->unk74C8 = temp_s3;
            arg0->unk74C4 = var_s0;
            arg0->unk752C = var_f22;
            arg0->unk7528 = var_f20;
            arg0->unk7628 = (s32) arg0->unk74A0;
            arg0->unk305C(arg0);
            var_s8 -= 1;
            if (arg0->unk749C != 0) {
                var_f22 += arg0->unk7510;
                var_s1 += 1;
                var_f20 += arg0->unk7508;
            } else {
                var_f22 += arg0->unk7514;
                var_s2 += 1;
                var_f20 += arg0->unk750C;
            }
            if (var_s8 != -1) {
                goto loop_27;
            }
        }
        if (sp50 != 0) {
            temp_f3 = (s32) ceilf(arg0->unk7504);
            temp_t0_2 = arg0->unk1E2;
            M2C_TRAP_IF(temp_t0_2 == 0);
            arg0->unk7490 = (s32) ((arg0->unk7490 + (s32) ((f64) temp_f3 / (second half of f64))) & 0xF);
            M2C_TRAP_IF(temp_t0_2 == 0);
            arg0->unk7494 = (s32) ((arg0->unk7494 + temp_f3) - ((s32) ((second half of f64) / (f64) (second half of f64)) * temp_t0_2));
        }
        if ((sp8 & 8) && (arg0->unk7D58 & 0x8000)) {
            temp_a0_2 = *arg0->unk9B4;
            if ((temp_a0_2 != 0x8062) && (temp_a0_2 != 0x1E01)) {

            } else {
                sp10->unk2110 = (s32) arg0->unk7E68;
                sp18->unk2110 = (s32) arg0->unk7E68;
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x40, 0x44, 0x50, 0x54], gap at: 0x38. */
void __glCrmRenderFrontBackLine(void *arg0, s32 arg1, s32 arg2) {
    s32 sp4;
    u32 sp0;
    u32 temp_a0;
    u32 temp_a0_2;
    void *temp_s1;
    void *temp_s2;

    temp_s1 = arg0->unk7DB8;
    sp0 = arg0->unk7D58;
    temp_s2 = arg0->unk7DBC;
    unksp30 = (s64) temp_s2->unk21E8;
    temp_a0 = -3 & arg0->unk7D58;
    unksp48 = __glCrmSetStoreBuffer(arg0->unk77C0);
    arg0->unk7D58 = temp_a0;
    if (arg0->unk7D5C != temp_a0) {
        arg0->unk7DB8->unk2018 = temp_a0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    unksp38 = (s64) (arg0 + 0x10000);
    sp4 = 0;
    temp_s1->unk21E8 = sp4;
    temp_s2->unk21E8 = sp4;
    __glCrmSetStoreBuffer(arg0, arg1, arg2);
    __glCrmSetStoreBuffer(arg0, arg0->unk77C4);
    temp_a0_2 = (-3 & arg0->unk7D58) | (((sp0 >> 1) & 1) * 2);
    arg0->unk7D58 = temp_a0_2;
    if (arg0->unk7D5C != temp_a0_2) {
        arg0->unk7DB8->unk2018 = temp_a0_2;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    temp_s1->unk21E8 = (s32) unksp30;
    temp_s2->unk21E8 = (s32) unksp30;
    __glCrmSetStoreBuffer(arg0, arg1, arg2);
    arg0->unk7D58 = sp0;
    if (arg0->unk7D5C != sp0) {
        arg0->unk7DB8->unk2018 = sp0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    __glCrmSetStoreBuffer(arg0, (s32) unksp48);
}

void __glCrmRenderLeftRightLine(void *arg0, s32 arg1, s32 arg2) {
    s64 sp8;
    s32 sp4;
    u32 sp0;
    s32 temp_a0_2;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a5;
    s32 var_a6;
    s32 var_a7;
    u32 temp_a0;
    u32 temp_a0_3;
    u32 var_a3;
    u32 var_a3_2;
    void *temp_s1;
    void *temp_s2;

    sp0 = arg0->unk7D58;
    temp_s2 = arg0->unk7DBC;
    var_a3 = 0x10448C;
    var_a6 = temp_s2->unk2008;
    temp_s1 = arg0->unk7DB8;
    var_a7 = temp_s2->unk21E8;
    var_a5 = ~var_a6 & 1;
    var_a4 = (-2 & var_a6) | var_a5;
    temp_s2->unk2008 = var_a4;
    temp_s1->unk2008 = var_a4;
    sp8 = (s64) var_a7;
    if (arg0->unk30B8 != __glCrmRenderFrontBackLine) {
        temp_a0 = arg0->unk7D58 & ~2;
        arg0->unk7D58 = temp_a0;
        if (arg0->unk7D5C != temp_a0) {
            var_a5 = (s32) arg0->unk7DB8;
            var_a5->unk2018 = temp_a0;
            var_a4 = (s32) arg0->unk7DBC;
            var_a3 = arg0->unk7D58;
            var_a4->unk2018 = var_a3;
            arg0->unk7D5C = (u32) arg0->unk7D58;
        }
        sp4 = 0;
        var_a7 = sp4;
        var_a6 = sp4;
        temp_s1->unk21E8 = var_a7;
        temp_s2->unk21E8 = var_a6;
    }
    unksp20 = (s64) (arg0 + 0x10000);
    arg0->unk811C(arg0, arg1, arg2, var_a3, var_a4, var_a5, var_a6, var_a7);
    temp_a0_2 = temp_s2->unk2008;
    temp_v0 = (-2 & temp_a0_2) | (~temp_a0_2 & 1);
    temp_s2->unk2008 = temp_v0;
    temp_s1->unk2008 = temp_v0;
    var_a3_2 = -3U;
    if (arg0->unk30B8 != __glCrmRenderFrontBackLine) {
        temp_a0_3 = (arg0->unk7D58 & ~2) | (((sp0 >> 1) & 1) * 2);
        arg0->unk7D58 = temp_a0_3;
        if (arg0->unk7D5C != temp_a0_3) {
            arg0->unk7DB8->unk2018 = temp_a0_3;
            arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
            var_a3_2 = arg0->unk7D58;
            arg0->unk7D5C = var_a3_2;
        }
        temp_s1->unk21E8 = (s32) sp8;
        temp_s2->unk21E8 = (s32) sp8;
    }
    unksp20->unk-7EE4(arg0, arg1, arg2, var_a3_2);
    arg0->unk7D58 = sp0;
    if (arg0->unk7D5C != sp0) {
        arg0->unk7DB8->unk2018 = sp0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
}
