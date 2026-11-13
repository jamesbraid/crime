? __glCrmDownloadRasterColor(void *, s32, ?, s32, s32, s32); /* extern */
s64 __glCrmSetStoreBuffer(void *, s32, s32);        /* extern */

void __glCrmRenderBitmap(void *arg0, void *arg1, u8 *arg2, s32 arg4, s32 arg5, s32 arg7) {
    s64 sp110;
    s64 spA0;
    s32 sp9C;
    s32 sp98;
    s32 sp94;
    s32 sp90;
    s64 sp88;
    f64 sp80;
    s64 sp78;
    s64 sp70;
    s32 sp6C;
    s32 sp68;
    s32 sp64;
    s32 sp60;
    s32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    s32 sp44;
    s32 sp40;
    s64 sp38;
    f64 sp30;
    s64 sp28;
    s64 sp20;
    s32 sp18;
    s32 sp14;
    s32 sp10;
    s32 spC;
    s32 sp8;
    void *sp4;
    s32 sp0;
    f32 temp_f0;
    f32 temp_f1;
    f32 var_f6;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a0_4;
    s32 temp_a0_5;
    s32 temp_a0_6;
    s32 temp_a0_7;
    s32 temp_a0_8;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_a7_2;
    s32 temp_a7_3;
    s32 temp_at;
    s32 temp_s4;
    s32 temp_s5;
    s32 temp_s7;
    s32 temp_s8;
    s32 temp_t3;
    s32 temp_t9;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_a5_2;
    s32 var_a6;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_s4;
    s32 var_s6;
    s32 var_t0;
    s32 var_t0_2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v1;
    s32 var_v1_2;
    s32 var_v1_3;
    s64 var_a2_2;
    s64 var_s4_2;
    u8 *var_s0;
    u8 *var_s0_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_s1;
    void *temp_s2;

    var_a4 = arg4;
    var_a5 = arg5;
    var_a7 = arg7;
    temp_s2 = arg0->unk7DBC;
    temp_s1 = arg0->unk7DB8;
    var_s0 = arg2;
    if ((arg0->unk1C4 != 0) && (temp_f0 = arg0->unk174, temp_f1 = arg0->unk170, temp_s8 = arg1->unk0, temp_s5 = arg1->unk4, arg0->unk170 = (f32) (arg1->unk10 + temp_f1), unkspD0 = (s64) (s32) (temp_f1 - arg1->unk8), temp_s4 = (s32) (arg1->unkC + temp_f0), arg0->unk174 = (f32) (temp_f0 - arg1->unk14), (temp_s8 != 0))) {
        if (temp_s5 != 0) {
            sp0 = arg0->unk7D58;
            if (!(sp0 & 0x40000)) {
                var_a4 = arg0->unk7D5C;
                var_a5 = 0x40000;
                temp_a0 = sp0 | 0x40000;
                if (var_a4 != temp_a0) {
                    sp0 = temp_a0;
                    var_a7 = sp0;
                    temp_s1->unk2018 = temp_a0;
                    arg0->unk7DBC->unk2018 = var_a7;
                    arg0->unk7D5C = var_a7;
                }
                spA0 = 1;
            } else {
                spA0 = 0;
            }
            if (arg0->unk807C & 1) {
                temp_a1 = arg0->unk8080;
                var_s6 = 1;
                if (temp_a1 != 1) {
                    __glCrmDownloadRasterColor(arg0, temp_a1, 1, var_a4, var_a5, var_a7);
                    var_s6 = 1;
                }
            } else {
                arg0->unk8080 = 0;
                var_s6 = 0;
                sp4 = arg0->unkF8;
            }
            temp_a0_2 = arg0->unk7DB4;
            var_t0 = temp_s8 < 9;
            if (arg0->unk7D60 != temp_a0_2) {
                arg0->unk7DB8->unk2060 = temp_a0_2;
                arg0->unk7DBC->unk2060 = (s32) arg0->unk7DB4;
                arg0->unk7D60 = (s32) arg0->unk7DB4;
                var_t0 = temp_s8 < 9;
            }
            if (var_t0 != 0) {
                sp8 = unkspD0 << 6;
                temp_s1->unk2080 = sp8;
                temp_s2->unk2080 = sp8;
                spC = (s32) ((f64) (temp_s8 + unkspD0) + -1.0) << 6;
                temp_s1->unk2088 = spC;
                temp_s2->unk2088 = spC;
                temp_t3 = temp_s4 << 6;
                sp10 = temp_t3;
                sp14 = temp_t3;
                temp_s1->unk208C = sp14;
                temp_s1->unk2084 = sp10;
                if (var_s6 == 0) {
                    if (arg0->unkC95 != 0) {
                        temp_s1->unk20D0 = (f32) sp4->unk0;
                        temp_s2->unk20D0 = (s32) (s64) sp4->unk0;
                    } else {
                        sp18 = (s32) sp4->unkC | ((s32) sp4->unk0 << 0x18) | (((s32) sp4->unk4 << 0x10) | ((s32) sp4->unk8 << 8));
                        temp_s1->unk20D0 = (bitwise f32) sp18;
                        temp_s2->unk20D0 = sp18;
                    }
                }
                temp_a0_3 = arg0->unk76E4;
                var_a2 = temp_a0_3 & 0x2000;
                if (temp_a0_3 & 4) {
                    sp20 = 0;
                    temp_s1->unk21D0 = sp20;
                    temp_s2->unk21D0 = sp20;
                    sp28 = 0;
                    temp_s1->unk21D8 = sp28;
                    temp_s2->unk21D8 = sp28;
                    sp30 = (f64) (arg0->unk178 * 64.0f);
                    sp38 = (s64) sp30;
                    temp_s1->unk21C8 = (s64) (second half of f64);
                    temp_s2->unk21C8 = sp38;
                    var_a2 = arg0->unk76E4 & 0x2000;
                }
                if (var_a2 != 0) {
                    sp40 = 0;
                    temp_s1->unk2180 = sp40;
                    temp_s2->unk2180 = sp40;
                    sp44 = 0;
                    temp_s1->unk2188 = sp44;
                    temp_s2->unk2188 = sp44;
                    sp48 = (s32) ((f32) ((f64) arg0->unk1A0 * 255.0) * 4096.0f);
                    temp_s1->unk2178 = sp48;
                    temp_s2->unk2178 = sp48;
                }
                unkspF0 = (s64) temp_s4;
                sp4C = *var_s0 << 0x18;
                sp50 = 0x1F0000;
                temp_s1->unk20C0 = sp50;
                temp_s2->unk20C0 = sp50;
                var_s0_2 = var_s0 + 1;
                temp_s1->unk28C4 = sp4C;
                if (temp_s5 >= 2) {
                    var_s4 = unkspF0 - 1;
                    do {
                        temp_at = var_s4 << 6;
                        sp54 = temp_at;
                        temp_s1->unk2084 = sp54;
                        sp58 = temp_at;
                        temp_s1->unk208C = sp58;
                        var_s4 -= 1;
                        sp4C = *var_s0_2 << 0x18;
                        var_s0_2 += 1;
                        temp_s1->unk28C4 = sp4C;
                    } while (var_s4 != (unkspF0 - temp_s5));
                }
            } else {
                sp110 = (s64) temp_s5;
                unkspF0 = (s64) temp_s4;
                if (temp_s5 > 0) {
                    var_s4_2 = unkspF0;
                    var_t0_2 = 0;
                    var_f6 = 4096.0f;
                    temp_s7 = var_s4_2 - sp110;
                    temp_t9 = ((s32) ((temp_s8 >= 1) ? (temp_s8 - 1) : (temp_s8 + 0x1E)) >> 5) + 1;
loop_37:
                    temp_a4 = var_s4_2 << 6;
                    sp5C = temp_a4;
                    temp_s1->unk2084 = sp5C;
                    temp_s2->unk2084 = sp5C;
                    sp60 = temp_a4;
                    var_s4_2 -= 1;
                    var_a5_2 = temp_s8;
                    temp_s1->unk208C = sp60;
                    temp_a6 = (temp_s8 > 0x20) ? 0x20 : temp_s8;
                    var_a4_2 = 0;
                    temp_s2->unk208C = sp60;
                    var_a2_2 = unkspD0;
                    if (temp_t9 > 0) {
                        var_a1 = temp_t9 >> 1;
                        if (temp_t9 & 1) {
                            temp_a7 = (s32) ((temp_a6 >= 1) ? (temp_a6 - 1) : (temp_a6 + 6)) >> 3;
                            temp_a1_2 = temp_a7 + 1;
                            sp4C = 0;
                            var_a5_2 = temp_s8 - temp_a6;
                            switch (temp_a1_2) {    /* switch 1; irregular */
                            case 4:                 /* switch 1 */
                                sp4C = (s32) var_s0->unk3;
                                /* fallthrough */
                            case 3:                 /* switch 1 */
                                sp4C |= var_s0->unk2 << 8;
                                /* fallthrough */
                            case 2:                 /* switch 1 */
                                sp4C |= var_s0->unk1 << 0x10;
block_32:
                                sp4C |= var_s0->unk0 << 0x18;
                                var_v1 = var_a2_2 << 6;
                                break;
                            default:                /* switch 1 */
                                var_v1 = var_a2_2 << 6;
                                if (temp_a1_2 == 1) {
                                    goto block_32;
                                }
                                break;
                            }
                            sp64 = var_v1;
                            temp_s1->unk2080 = sp64;
                            sp68 = ((temp_a6 + var_a2_2) - 1) << 6;
                            var_a2_2 += 0x20;
                            var_s0 = temp_a7 + var_s0 + 1;
                            temp_s1->unk2088 = sp68;
                            if (var_t0_2 == 0) {
                                if (0 == 0) {
                                    if (var_s6 == 0) {
                                        if (arg0->unkC95 != 0) {
                                            temp_s1->unk20D0 = (f32) sp4->unk0;
                                            var_f6 = second half of f64;
                                            temp_s2->unk20D0 = (s32) (s64) sp4->unk0;
                                        } else {
                                            sp6C = (s32) sp4->unkC | ((s32) sp4->unk0 << 0x18) | (((s32) sp4->unk4 << 0x10) | ((s32) sp4->unk8 << 8));
                                            temp_s1->unk20D0 = (bitwise f32) sp6C;
                                            temp_s2->unk20D0 = sp6C;
                                        }
                                    }
                                    temp_a0_4 = arg0->unk76E4;
                                    var_v0 = temp_a0_4 & 0x2000;
                                    if (temp_a0_4 & 4) {
                                        sp70 = 0;
                                        sp78 = 0;
                                        temp_s1->unk21D0 = sp70;
                                        temp_s2->unk21D0 = (s64) (second half of f64);
                                        temp_s1->unk21D8 = sp78;
                                        temp_s2->unk21D8 = sp78;
                                        sp80 = (f64) (arg0->unk178 * (second half of f64));
                                        sp88 = (s64) sp80;
                                        temp_s1->unk21C8 = sp88;
                                        temp_s2->unk21C8 = sp88;
                                        var_v0 = arg0->unk76E4 & 0x2000;
                                    }
                                    if (var_v0 != 0) {
                                        sp90 = 0;
                                        temp_s1->unk2180 = sp90;
                                        temp_s2->unk2180 = sp90;
                                        sp94 = 0;
                                        temp_s1->unk2188 = sp94;
                                        temp_s2->unk2188 = sp94;
                                        sp98 = (s32) (var_f6 * (f32) ((f64) arg0->unk1A0 * 255.0));
                                        temp_s1->unk2178 = sp98;
                                        temp_s2->unk2178 = sp98;
                                    }
                                    sp9C = 0x1F0000;
                                    temp_s1->unk20C0 = sp9C;
                                    temp_s2->unk20C0 = sp9C;
                                }
                            }
                            var_a4_2 = 1;
                            temp_s1->unk28C4 = sp4C;
                            var_a1 = temp_t9 >> 1;
                        }
                        if (var_a1 != 0) {
                            var_a6 = (var_a5_2 > 0x20) ? 0x20 : var_a5_2;
                            var_v0_2 = var_a6 - 1;
loop_50:
                            temp_a7_2 = (s32) ((var_a6 >= 1) ? var_v0_2 : (var_a6 + 6)) >> 3;
                            temp_a1_3 = temp_a7_2 + 1;
                            temp_a5 = var_a5_2 - var_a6;
                            sp4C = 0;
                            switch (temp_a1_3) {    /* switch 2; irregular */
                            default:                /* switch 2 */
                                var_v1_2 = var_a2_2 << 6;
                                if (temp_a1_3 == 1) {
block_58:
                                    sp4C |= var_s0->unk0 << 0x18;
                                    var_v1_2 = var_a2_2 << 6;
                                }
                                break;
                            case 4:                 /* switch 2 */
                                sp4C = (s32) var_s0->unk3;
                                /* fallthrough */
                            case 3:                 /* switch 2 */
                                sp4C |= var_s0->unk2 << 8;
                                /* fallthrough */
                            case 2:                 /* switch 2 */
                                sp4C |= var_s0->unk1 << 0x10;
                                goto block_58;
                            }
                            sp64 = var_v1_2;
                            temp_s1->unk2080 = sp64;
                            sp68 = ((var_a6 + var_a2_2) - 1) << 6;
                            temp_a2 = var_a2_2 + 0x20;
                            temp_s0 = temp_a7_2 + var_s0;
                            temp_s0_2 = temp_s0 + 1;
                            temp_s1->unk2088 = sp68;
                            if (var_t0_2 != 0) {

                            } else if (var_a4_2 == 0) {
                                if (var_s6 == 0) {
                                    if (arg0->unkC95 != 0) {
                                        temp_s1->unk20D0 = (f32) sp4->unk0;
                                        temp_s2->unk20D0 = (s32) (s64) sp4->unk0;
                                    } else {
                                        sp6C = (s32) sp4->unkC | ((s32) sp4->unk0 << 0x18) | (((s32) sp4->unk4 << 0x10) | ((s32) sp4->unk8 << 8));
                                        temp_s1->unk20D0 = (bitwise f32) sp6C;
                                        temp_s2->unk20D0 = sp6C;
                                    }
                                }
                                temp_a0_5 = arg0->unk76E4;
                                var_a7_2 = temp_a0_5 & 0x2000;
                                if (temp_a0_5 & 4) {
                                    sp70 = 0;
                                    sp78 = 0;
                                    var_f6 = second half of f64;
                                    temp_s1->unk21D0 = (s64) (second half of f64);
                                    temp_s2->unk21D0 = sp70;
                                    temp_s1->unk21D8 = sp78;
                                    temp_s2->unk21D8 = sp78;
                                    sp80 = (f64) (arg0->unk178 * (second half of f64));
                                    sp88 = (s64) sp80;
                                    temp_s1->unk21C8 = sp88;
                                    temp_s2->unk21C8 = sp88;
                                    var_a7_2 = arg0->unk76E4 & 0x2000;
                                }
                                if (var_a7_2 != 0) {
                                    sp90 = 0;
                                    temp_s1->unk2180 = sp90;
                                    temp_s2->unk2180 = sp90;
                                    sp94 = 0;
                                    temp_s1->unk2188 = sp94;
                                    temp_s2->unk2188 = sp94;
                                    sp98 = (s32) (var_f6 * (f32) ((f64) arg0->unk1A0 * 255.0));
                                    temp_s1->unk2178 = sp98;
                                    temp_s2->unk2178 = sp98;
                                }
                                sp9C = 0x1F0000;
                                temp_s1->unk20C0 = sp9C;
                                temp_s2->unk20C0 = sp9C;
                            }
                            temp_a6_2 = (temp_a5 > 0x20) ? 0x20 : temp_a5;
                            temp_a7_3 = (s32) ((temp_a6_2 >= 1) ? (temp_a6_2 - 1) : (temp_a6_2 + 6)) >> 3;
                            temp_a0_6 = sp4C;
                            temp_a1_4 = temp_a7_3 + 1;
                            sp4C = 0;
                            temp_a4_2 = var_a4_2 + 1;
                            temp_s1->unk28C4 = temp_a0_6;
                            var_a5_2 = temp_a5 - temp_a6_2;
                            switch (temp_a1_4) {    /* switch 3; irregular */
                            case 4:                 /* switch 3 */
                                sp4C = (s32) temp_s0_2->unk3;
                                /* fallthrough */
                            case 3:                 /* switch 3 */
                                sp4C |= temp_s0_2->unk2 << 8;
                                /* fallthrough */
                            case 2:                 /* switch 3 */
                                sp4C |= temp_s0_2->unk1 << 0x10;
block_47:
                                sp4C |= temp_s0->unk1 << 0x18;
                                var_v1_3 = temp_a2 << 6;
                                break;
                            default:                /* switch 3 */
                                var_v1_3 = temp_a2 << 6;
                                if (temp_a1_4 == 1) {
                                    goto block_47;
                                }
                                break;
                            }
                            sp64 = var_v1_3;
                            temp_s1->unk2080 = sp64;
                            sp68 = ((temp_a6_2 + temp_a2) - 1) << 6;
                            var_a2_2 = temp_a2 + 0x20;
                            var_s0 = temp_a7_3 + temp_s0_2 + 1;
                            temp_s1->unk2088 = sp68;
                            if (var_t0_2 == 0) {
                                if (temp_a4_2 == 0) {
                                    if (var_s6 == 0) {
                                        if (arg0->unkC95 != 0) {
                                            temp_s1->unk20D0 = (f32) sp4->unk0;
                                            temp_s2->unk20D0 = (s32) (s64) sp4->unk0;
                                        } else {
                                            sp6C = (s32) sp4->unkC | ((s32) sp4->unk0 << 0x18) | (((s32) sp4->unk4 << 0x10) | ((s32) sp4->unk8 << 8));
                                            temp_s1->unk20D0 = (bitwise f32) sp6C;
                                            temp_s2->unk20D0 = sp6C;
                                        }
                                    }
                                    temp_a0_7 = arg0->unk76E4;
                                    var_a3 = temp_a0_7 & 0x2000;
                                    if (temp_a0_7 & 4) {
                                        sp70 = 0;
                                        sp78 = 0;
                                        temp_s1->unk21D0 = sp70;
                                        temp_s2->unk21D0 = sp70;
                                        temp_s1->unk21D8 = sp78;
                                        temp_s2->unk21D8 = sp78;
                                        sp80 = (f64) (arg0->unk178 * (second half of f64));
                                        sp88 = (s64) sp80;
                                        temp_s1->unk21C8 = (s64) (second half of f64);
                                        temp_s2->unk21C8 = sp88;
                                        var_a3 = arg0->unk76E4 & 0x2000;
                                    }
                                    if (var_a3 != 0) {
                                        sp90 = 0;
                                        temp_s1->unk2180 = sp90;
                                        temp_s2->unk2180 = sp90;
                                        sp94 = 0;
                                        temp_s1->unk2188 = sp94;
                                        temp_s2->unk2188 = sp94;
                                        sp98 = (s32) (var_f6 * (f32) ((f64) arg0->unk1A0 * 255.0));
                                        temp_s1->unk2178 = sp98;
                                        temp_s2->unk2178 = sp98;
                                    }
                                    sp9C = 0x1F0000;
                                    temp_s1->unk20C0 = sp9C;
                                    temp_s2->unk20C0 = sp9C;
                                }
                            }
                            var_a4_2 = temp_a4_2 + 1;
                            var_a6 = (var_a5_2 > 0x20) ? 0x20 : var_a5_2;
                            temp_s1->unk28C4 = sp4C;
                            var_v0_2 = var_a6 - 1;
                            if (temp_t9 != var_a4_2) {
                                goto loop_50;
                            }
                        }
                    }
                    var_t0_2 += 1;
                    if (var_s4_2 != temp_s7) {
                        goto loop_37;
                    }
                }
            }
            if (spA0 != 0) {
                temp_a0_8 = arg0->unk7D58;
                if (arg0->unk7D5C != temp_a0_8) {
                    arg0->unk7DB8->unk2018 = temp_a0_8;
                    arg0->unk7DBC->unk2018 = (s32) arg0->unk7D58;
                    arg0->unk7D5C = (s32) arg0->unk7D58;
                }
            }
        }
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x48, 0x4c, 0x58, 0x5c], gap at: 0x40. */
void __glCrmRenderFrontBackBitmap(void *arg0, s32 arg1, s32 arg2) {
    f64 sp8;
    s32 sp4;
    u32 sp0;
    f32 temp_f30;
    u32 temp_a0;
    u32 temp_a0_2;
    void *temp_s1;
    void *temp_s2;

    temp_s1 = arg0->unk7DB8;
    sp0 = arg0->unk7D58;
    temp_s2 = arg0->unk7DBC;
    unksp38 = (s64) temp_s2->unk21E8;
    unksp50 = __glCrmSetStoreBuffer(arg0->unk77C0);
    temp_a0 = -3 & arg0->unk7D58;
    arg0->unk7D58 = temp_a0;
    if (arg0->unk7D5C != temp_a0) {
        arg0->unk7DB8->unk2018 = temp_a0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    unksp40 = (s64) (arg0 + 0x10000);
    sp4 = 0;
    temp_s1->unk21E8 = sp4;
    temp_s2->unk21E8 = sp4;
    temp_f30 = arg0->unk170;
    sp8 = (f64) arg0->unk174;
    __glCrmSetStoreBuffer(arg0, arg1, arg2);
    __glCrmSetStoreBuffer(arg0, arg0->unk77C4);
    temp_a0_2 = (-3 & arg0->unk7D58) | (((sp0 >> 1) & 1) * 2);
    arg0->unk7D58 = temp_a0_2;
    if (arg0->unk7D5C != temp_a0_2) {
        arg0->unk7DB8->unk2018 = temp_a0_2;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    temp_s1->unk21E8 = (s32) unksp38;
    temp_s2->unk21E8 = (s32) unksp38;
    arg0->unk174 = (f32) sp8;
    arg0->unk170 = temp_f30;
    __glCrmSetStoreBuffer(arg0, arg1, arg2);
    arg0->unk7D58 = sp0;
    if (arg0->unk7D5C != sp0) {
        arg0->unk7DB8->unk2018 = sp0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
    __glCrmSetStoreBuffer(arg0, (s32) unksp50);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x50, 0x54, 0x58, 0x5c], gap at: 0x28. */
void __glCrmRenderLeftRightBitmap(void *arg0, s32 arg1, s32 arg2) {
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
    var_a3 = 0x10F0CC;
    var_a6 = temp_s2->unk2008;
    temp_s1 = arg0->unk7DB8;
    var_a7 = temp_s2->unk21E8;
    var_a5 = ~var_a6 & 1;
    var_a4 = (-2 & var_a6) | var_a5;
    temp_s2->unk2008 = var_a4;
    temp_s1->unk2008 = var_a4;
    sp8 = (s64) var_a7;
    if (arg0->unk30E0 != __glCrmRenderFrontBackBitmap) {
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
    unksp30 = (s64) (arg0 + 0x10000);
    unksp28 = (s64) (s32) arg0->unk174;
    unksp20 = (s64) (s32) arg0->unk170;
    arg0->unk8124(arg0, arg1, arg2, var_a3, var_a4, var_a5, var_a6, var_a7);
    temp_a0_2 = temp_s2->unk2008;
    temp_v0 = (-2 & temp_a0_2) | (~temp_a0_2 & 1);
    temp_s2->unk2008 = temp_v0;
    temp_s1->unk2008 = temp_v0;
    var_a3_2 = -3U;
    if (arg0->unk30E0 != __glCrmRenderFrontBackBitmap) {
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
    arg0->unk174 = (f32) unksp28;
    arg0->unk170 = (f32) unksp20;
    unksp30->unk-7EDC(arg0, arg1, arg2, var_a3_2);
    arg0->unk7D58 = sp0;
    if (arg0->unk7D5C != sp0) {
        arg0->unk7DB8->unk2018 = sp0;
        arg0->unk7DBC->unk2018 = (u32) arg0->unk7D58;
        arg0->unk7D5C = (u32) arg0->unk7D58;
    }
}
