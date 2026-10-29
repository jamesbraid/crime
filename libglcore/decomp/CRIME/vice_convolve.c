s32 __viceMapCode(s32, void *, s32, s32, s32, s32); /* extern */
? exit(?, ?);                                       /* extern */
extern f32 fic3;
extern f32 fic5;
extern f32 fic7;
extern f32 fig3;
extern f32 fig5;
extern f32 fig7;

s32 __viceLoadCNVCode(void *arg0, void *arg1, s32 arg2) {
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_a1;
    s32 var_a2;
    s32 var_a4;
    s32 var_v0;
    s32 var_v0_2;

    var_a2 = arg2;
    temp_v0_3 = arg1->unk40;
    switch (temp_v0_3) {                            /* irregular */
    default:
        exit(1, 7);
        /* fallthrough */
    case 7:
        var_a2 = arg0->unk1054;
        var_a1 = arg0->unk1050;
        var_a4 = 0x2D;
        var_v0 = arg0->unk104C;
        if (var_a2 != 1) {
            var_a1 = arg0->unk1050;
            var_a4 = 0x1D;
            if (var_v0 == 1) {
                if ((var_a1 == 1) && (arg0->unk102C != 0) && (arg0->unk1030 != 0) && (arg0->unk1028 == 0)) {
                    arg0->unk1020 = 1;
                }
            }
        }
        break;
    case 3:
        var_a1 = arg0->unk1050;
        var_v0 = arg0->unk104C;
        var_a4 = (arg0->unk1054 != 1) ? 0x15 : 0x21;
        break;
    case 5:
        var_a1 = arg0->unk1050;
        var_a4 = 0x27;
        var_v0 = arg0->unk104C;
        if (arg0->unk1054 != 1) {
            var_a1 = arg0->unk1050;
            var_a4 = 0x19;
            if ((var_v0 == 1) && (var_a1 == 1) && (arg0->unk102C != 0) && (arg0->unk1030 != 0) && (arg0->unk1028 == 0)) {
                arg0->unk1020 = 1;
            }
        }
        break;
    }
    if (var_v0 != 1) {
        goto block_7;
    }
    temp_a0 = arg0->unk102C;
    if (var_a1 != 1) {
        goto block_24;
    }
    if (temp_a0 != 0) {
        if (arg0->unk1030 != 0) {
            var_v0_2 = __viceMapCode(var_a4, arg0, var_a2);
            goto block_12;
        }
block_24:
        if (temp_a0 != 0) {
            var_a0 = __viceMapCode(var_a4 + 1, arg0, var_a2);
            arg0->unk1020 = 1;
            /* Duplicate return node #13. Try simplifying control flow for better match */
            arg0->unk102C = 0;
            return var_a0;
        }
        goto block_7;
    }
block_7:
    if (var_a1 == 1) {
        temp_a3 = arg0->unk1030;
        if (temp_a3 != 0) {
            if (var_v0 != 1) {
                temp_a5 = arg0->unk1014;
                if (temp_a5 != 0) {
                    var_v0_2 = __viceMapCode(var_a4 + 5, arg0, var_a2, temp_a3, var_a4, temp_a5);
                    goto block_12;
                }
                temp_v0_2 = __viceMapCode(var_a4 + 4, arg0, var_a2, temp_a3, var_a4, temp_a5);
                arg0->unk102C = 0;
                return temp_v0_2;
            }
            var_v0_2 = __viceMapCode(var_a4 + 2, arg0, var_a2, temp_a3, var_a4);
block_12:
            var_a0 = var_v0_2;
            arg0->unk102C = 0;
            return var_a0;
        }
    }
    temp_v0 = __viceMapCode(var_a4 + 3, arg0, var_a2);
    arg0->unk102C = 0;
    return temp_v0;
}

s32 __viceLoadGCNVCode(void *arg0, void *arg1) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 var_a0;
    s32 var_a4;
    s32 var_v0;

    temp_v0_3 = arg1->unk40;
    switch (temp_v0_3) {                            /* irregular */
    default:
        exit(1, 7);
        /* fallthrough */
    case 7:
        temp_v0_4 = arg0->unk1054;
        var_a4 = 0x57;
        if (temp_v0_4 != 1) {
            var_a4 = 0x3B;
            if (temp_v0_4 == M2C_ERROR(/* Read from unset register $a0 */)) {
                if (M2C_ERROR(/* Read from unset register $a1 */)->unkC == M2C_ERROR(/* Read from unset register $a0 */)) {
                    var_a4 = 0x47;
                }
            }
        }
        break;
    case 3:
        var_a4 = (arg0->unk1054 != 1) ? 0x3F : 0x4B;
        break;
    case 5:
        var_a4 = (arg0->unk1054 != 1) ? 0x43 : 0x51;
        break;
    }
    temp_a0 = arg0->unk104C;
    temp_v0_5 = arg0->unk1050;
    if (temp_a0 != 1) {
        goto block_7;
    }
    temp_a1 = arg0->unk102C;
    if (temp_v0_5 != 1) {
        goto block_18;
    }
    if (temp_a1 != 0) {
        if (arg0->unk1030 != 0) {
            var_v0 = __viceMapCode(var_a4, arg0);
            goto block_12;
        }
block_18:
        if (temp_a1 != 0) {
            var_a0 = __viceMapCode(var_a4 + 1, arg0);
            arg0->unk1020 = 1;
            /* Duplicate return node #13. Try simplifying control flow for better match */
            arg0->unk102C = 0;
            return var_a0;
        }
        goto block_7;
    }
block_7:
    if ((temp_v0_5 == 1) && (arg0->unk1030 != 0)) {
        if (temp_a0 != 1) {
            if (arg0->unk1014 != 0) {
                var_v0 = __viceMapCode(var_a4 + 5, arg0);
                goto block_12;
            }
            temp_v0_2 = __viceMapCode(var_a4 + 4, arg0);
            arg0->unk102C = 0;
            return temp_v0_2;
        }
        var_v0 = __viceMapCode(var_a4 + 2, arg0);
block_12:
        var_a0 = var_v0;
        arg0->unk102C = 0;
        return var_a0;
    }
    temp_v0 = __viceMapCode(var_a4 + 3, arg0);
    arg0->unk102C = 0;
    return temp_v0;
}

s32 cnvFmtA(f32 **arg0, f32 *arg1) {
    arg0->unk8 = arg1;
    arg0->unk4 = arg1;
    arg0->unk0 = arg1;
    return 1;
}

s32 cnvFmtL(f32 **arg0, f32 *arg1, s32 arg2) {
    switch (arg2) {                                 /* irregular */
    default:
        return 0;
    case 0x1907:
    case 0x1908:
block_7:
        arg0->unkC = arg1;
        /* fallthrough */
    case 0x1909:
    case 0x8049:
        return 1;
    case 0x8000:
        arg0->unk0 = arg1;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return 1;
    case 0x190A:
        arg0->unk4 = arg1;
        goto block_7;
    }
}

s32 cnvFmtI(f32 **arg0, f32 *arg1, s32 arg2) {
    switch (arg2) {                                 /* irregular */
    default:
        return 0;
    case 0x190A:
        arg0->unk4 = arg1;
        arg0->unkC = arg1;
        /* fallthrough */
    case 0x1907:
    case 0x1908:
    case 0x1909:
    case 0x8000:
    case 0x8049:
        return 1;
    }
}

s32 cnvFmtLA(f32 **arg0, f32 *arg2) {
    switch (arg2) {                                 /* irregular */
    default:
        return 0;
    case 0x1907:
    case 0x1908:
    case 0x190A:
        arg0->unkC = (s32) (arg0->unk0 + 4);
        /* fallthrough */
    case 0x1909:
    case 0x8049:
        return 1;
    case 0x8000:
        arg0->unk0 += 4;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return 1;
    }
}

s32 cnvFmtRGB(f32 **arg0, f32 *arg1, s32 arg2) {
    f32 *temp_a6;

    switch (arg2) {                                 /* irregular */
    default:
        return 0;
    case 0x1907:
    case 0x1908:
        temp_a6 = arg0->unk0;
        arg0->unkC = arg1;
        arg0->unk8 = (s32) (temp_a6 + 8);
        arg0->unk4 = (f32 *) (temp_a6 + 4);
        /* fallthrough */
    case 0x1909:
    case 0x8049:
        return 1;
    case 0x190A:
        arg0->unk4 = arg1;
        arg0->unkC = arg1;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return 1;
    case 0x8000:
        arg0->unk0 = arg1;
        arg0->unk8 = (s32) (arg0->unk8 + 4);
        arg0->unk4 = (f32 *) (arg0->unk4 + 8);
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return 1;
    }
}

s32 cnvFmtRGBA(f32 **arg0, f32 *arg2) {
    s32 temp_t0;

    switch (arg2) {                                 /* irregular */
    default:
        return 0;
    case 0x1907:
    case 0x1908:
        arg0->unkC = (s32) (arg0->unkC + 0xC);
        arg0->unk8 = (s32) (arg0->unk8 + 8);
        arg0->unk4 = (s32) (arg0->unk4 + 4);
        /* fallthrough */
    case 0x1909:
    case 0x8049:
        return 1;
    case 0x190A:
        temp_t0 = arg0->unk0 + 0xC;
        arg0->unk4 = temp_t0;
        arg0->unkC = temp_t0;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return 1;
    case 0x8000:
        arg0->unk8 = (s32) (arg0->unk8 + 4);
        arg0->unk4 = (s32) (arg0->unk4 + 8);
        arg0->unk0 += 0xC;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return 1;
    }
}

s32 cnvFmtABGR(f32 **arg0, f32 *arg2) {
    f32 *temp_t0;

    switch (arg2) {                                 /* irregular */
    default:
        return 0;
    case 0x1907:
    case 0x1908:
        arg0->unkC = (s32) (arg0->unkC + 0xC);
        arg0->unk8 = (s32) (arg0->unk8 + 8);
        arg0->unk4 = (s32) (arg0->unk4 + 4);
        /* fallthrough */
    case 0x1909:
    case 0x8049:
        return 1;
    case 0x190A:
        temp_t0 = arg0->unk4 + 0xC;
        arg0->unk0 = temp_t0;
        arg0->unk8 = temp_t0;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return 1;
    case 0x8000:
        arg0->unk8 = (f32 *) (arg0->unk8 + 4);
        arg0->unk4 = (s32) (arg0->unk4 + 8);
        arg0->unk0 += 0xC;
        /* Duplicate return node #8. Try simplifying control flow for better match */
        return 1;
    }
}

s32 viceConvolve(void *arg0, void *arg1, s32 arg2) {
    s64 sp20;
    s64 sp18;
    f32 *sp14;
    f32 *sp10;
    f32 *spC;
    f32 *sp8;
    f32 *sp0;
    f32 *temp_a3;
    f32 *temp_t1;
    f32 *var_a3;
    f32 *var_a3_2;
    f32 *var_a3_3;
    f32 *var_a3_4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_lo;
    s32 temp_t2;
    s32 temp_v0;
    s32 var_a1;
    s32 var_a1_2;
    s32 var_a1_3;
    s32 var_a1_4;
    s32 var_t2;
    s32 var_t3;
    s32 var_v0;
    s64 temp_a7;
    s64 temp_at;
    u32 temp_a0_3;
    void *temp_a1;
    void *temp_a1_2;

    temp_at = arg2 & 8;
    sp18 = temp_at;
    if (temp_at != 0) {
        (arg0->unk4 + (arg0->unk106C * 4))->unk50 = __viceLoadCNVCode();
        temp_a1 = arg0->unk4;
        temp_a2 = arg0->unk106C + 1;
        arg0->unk106C = temp_a2;
        if ((0xFFFF0000 & (temp_a1 + (temp_a2 * 4))->unk4C) != 0xFFFF0000) {
            temp_a0 = arg1->unk40;
            switch (temp_a0) {                      /* switch 1; irregular */
            case 3:                                 /* switch 1 */
                sp0 = &fic3;
                break;
            case 5:                                 /* switch 1 */
                sp0 = &fic5;
                break;
            case 7:                                 /* switch 1 */
                sp0 = &fic7;
                break;
            }
            temp_a7 = arg1->unk44 + temp_a0;
            sp20 = temp_a7;
            temp_a1->unk4E = (s16) (temp_a7 * 8);
            goto block_6;
        }
        return 0;
    }
    (arg0->unk4 + (arg0->unk106C * 4))->unk50 = __viceLoadGCNVCode();
    temp_a1_2 = arg0->unk4;
    temp_t2 = arg0->unk106C + 1;
    arg0->unk106C = temp_t2;
    if ((0xFFFF0000 & (temp_a1_2 + (temp_t2 * 4))->unk4C) != 0xFFFF0000) {
        temp_a0_2 = arg1->unk40;
        switch (temp_a0_2) {                        /* switch 2; irregular */
        case 3:                                     /* switch 2 */
            sp0 = &fig3;
            break;
        case 5:                                     /* switch 2 */
            sp0 = &fig5;
            break;
        case 7:                                     /* switch 2 */
            sp0 = &fig7;
            break;
        }
        temp_v0 = arg1->unk44;
        temp_a1_2->unk4E = (s16) (temp_v0 << 6);
        sp20 = temp_v0 * temp_a0_2;
block_6:
        temp_t1 = arg1->unk50;
        sp14 = temp_t1;
        sp10 = temp_t1;
        spC = temp_t1;
        sp8 = temp_t1;
        temp_a0_3 = arg1->unk8;
        if (temp_a0_3 >= 0x1909U) {
            if (temp_a0_3 >= 0x190AU) {
                if (temp_a0_3 >= 0x8000U) {
                    if (temp_a0_3 > 0x8000U) {
                        if (temp_a0_3 == 0x8049) {
                            var_v0 = cnvFmtI(&sp8, sp0, arg0->unk1060);
                            var_t2 = 1;
                            var_t3 = 1;
                            goto block_21;
                        }
                        /* Duplicate return node #17. Try simplifying control flow for better match */
                        return 0;
                    }
                    var_v0 = cnvFmtABGR(&sp8, sp0, arg0->unk1060);
                    var_t2 = 4;
                    var_t3 = 4;
                    goto block_21;
                }
                if (temp_a0_3 == 0x190A) {
                    var_v0 = cnvFmtLA(&sp8, sp0, arg0->unk1060);
                    var_t2 = 2;
                    var_t3 = 1;
                    goto block_21;
                }
                /* Duplicate return node #17. Try simplifying control flow for better match */
                return 0;
            }
            var_v0 = cnvFmtL(&sp8, sp0, arg0->unk1060);
            var_t2 = 1;
            var_t3 = 1;
            goto block_21;
        }
        if (temp_a0_3 >= 0x1907U) {
            if (temp_a0_3 >= 0x1908U) {
                if (temp_a0_3 == 0x1908) {
                    var_v0 = cnvFmtRGBA(&sp8, sp0, arg0->unk1060);
                    var_t2 = 4;
                    var_t3 = 4;
                    goto block_21;
                }
                /* Duplicate return node #17. Try simplifying control flow for better match */
                return 0;
            }
            var_v0 = cnvFmtRGB(&sp8, sp0, arg0->unk1060);
            var_t2 = 3;
            var_t3 = 1;
            goto block_21;
        }
        if (temp_a0_3 != 0x1906) {
            return 0;
        }
        var_v0 = cnvFmtA(&sp8, sp0, arg0->unk1060);
        var_t2 = 1;
        var_t3 = 1;
block_21:
        temp_a0_4 = arg0->unk1060;
        if (sp18 != 0) {
            if (temp_a0_4 != 0x1909) {
                if (temp_a0_4 != 0x8049) {
                    if ((sp20 * 4) > 0) {
                        var_a3 = sp8;
                        var_a1 = 0;
                        do {
                            *(arg0->unkC + var_a1) = (s16) (s32) ((f64) (*var_a3 * 32767.0f) + 0.5);
                            (arg0->unkC + var_a1)->unk2 = (s16) (s32) ((f64) (*spC * 32767.0f) + 0.5);
                            (arg0->unkC + var_a1)->unk4 = (s16) (s32) ((f64) (*sp10 * 32767.0f) + 0.5);
                            (arg0->unkC + var_a1)->unk6 = (s16) (s32) ((f64) (*sp14 * 32767.0f) + 0.5);
                            sp14 = &sp14[var_t3];
                            sp10 = &sp10[var_t2];
                            var_a1 += 8;
                            spC = &spC[var_t2];
                            var_a3 = &sp8[var_t2];
                            sp8 = var_a3;
                        } while (var_a1 < (sp20 * 8));
                    }
                } else {
                    goto block_37;
                }
            } else {
block_37:
                if (sp20 > 0) {
                    var_a1_2 = 0;
                    var_a3_2 = sp8;
                    temp_a4 = sp20 * 2;
loop_39:
                    *(arg0->unkC + var_a1_2) = (s16) (s32) ((f64) (*var_a3_2 * 32767.0f) + 0.5);
                    temp_a1_3 = var_a1_2 + 2;
                    temp_a3 = &sp8[var_t2];
                    sp8 = temp_a3;
                    if (temp_a1_3 != temp_a4) {
                        *(arg0->unkC + temp_a1_3) = (s16) (s32) ((f64) (*temp_a3 * 32767.0f) + 0.5);
                        var_a1_2 = temp_a1_3 + 2;
                        var_a3_2 = &sp8[var_t2];
                        sp8 = var_a3_2;
                        if (var_a1_2 != temp_a4) {
                            goto loop_39;
                        }
                    }
                }
            }
        } else if ((temp_a0_4 != 0x1909) && (var_a1_3 = 0, (temp_a0_4 != 0x8049))) {
            temp_a0_5 = arg1->unk40;
            if (temp_a0_5 != 7) {
                goto block_48;
            }
            if (arg1->unkC == 1) {
                goto block_60;
            }
block_48:
            temp_a5 = (temp_a0_5 == 3) ? 8 : 4;
            temp_lo = sp20 * temp_a5;
            if (temp_lo > 0) {
                var_a3_3 = sp8;
loop_53:
                *(arg0->unkC + var_a1_3) = (s16) (s32) ((f64) (*var_a3_3 * (second half of f64)) + 0.5);
                (arg0->unkC + var_a1_3)->unk2 = (s16) (s32) ((f64) (*spC * (second half of f64)) + 0.5);
                (arg0->unkC + var_a1_3)->unk4 = (s16) (s32) ((f64) (*sp10 * (second half of f64)) + 0.5);
                (arg0->unkC + var_a1_3)->unk6 = (s16) (s32) ((f64) (*sp14 * (second half of f64)) + 0.5);
                if (temp_a5 == 8) {
                    (arg0->unkC + var_a1_3)->unk8 = (s16) (s32) ((f64) (*sp8 * (second half of f64)) + 0.5);
                    (arg0->unkC + var_a1_3)->unkA = (s16) (s32) ((f64) (*spC * (second half of f64)) + 0.5);
                    (arg0->unkC + var_a1_3)->unkC = (s16) (s32) ((f64) (*sp10 * (second half of f64)) + 0.5);
                    (arg0->unkC + var_a1_3)->unkE = (s16) (s32) ((f64) (*sp14 * (second half of f64)) + 0.5);
                }
                sp14 = &sp14[var_t3];
                var_a1_3 += temp_a5 * 2;
                sp10 = &sp10[var_t2];
                spC = &spC[var_t2];
                var_a3_3 = &sp8[var_t2];
                sp8 = var_a3_3;
                if (var_a1_3 < (temp_lo * 2)) {
                    goto loop_53;
                }
            }
        } else {
block_60:
            arg0->unk4->unk4E = (s16) (arg1->unk44 << 6);
            if (sp20 > 0) {
                var_a3_4 = sp8;
                var_a1_4 = 0;
                do {
                    temp_a5_2 = arg1->unk40;
                    *(arg0->unkC + (((second half of f64) + ((var_a1_4 - ((s32) (second half of f64) * temp_a5_2)) * 8)) * 2)) = (s16) (s32) ((f64) (*var_a3_4 * 32767.0f) + 0.5);
                    M2C_TRAP_IF(temp_a5_2 == 0);
                    var_a1_4 += 1;
                    M2C_TRAP_IF(arg1->unk44 == 0);
                    var_a3_4 = &sp8[var_t2];
                    sp8 = var_a3_4;
                } while (sp20 != var_a1_4);
            }
        }
        return var_v0 & 0xFF;
    }
    return 0;
}
