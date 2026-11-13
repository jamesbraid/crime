f32 __glBuildAntiAliasIndex(f32, f32);              /* extern */
s32 __glFloor(f32, s32, f32, u8, s64, u8, u8, u8, f32, ?); /* extern */
? floorf(s64, s64, s64, s32, f64, ?);               /* extern */
f64 powf(s32, f32, f32, s32, f64, s64, f32, f32);   /* extern */

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x1f0, 0x1f4, 0x1f8, 0x1fc, 0x200, 0x204, 0x208, 0x20c, 0x210, 0x214, 0x218, 0x21c, 0x220, 0x224, 0x228, 0x22c, 0x230, 0x234, 0x238, 0x23c, 0x2e8, 0x2ec, 0x2f0, 0x2f4, 0x2f8, 0x2fc, 0x300, 0x304, 0x308, 0x30c, 0x310, 0x314, 0x318, 0x31c], gap at: 0x248. */
s32 __glCrmStoreLine(void *arg0, s64 arg4, u8 arg5, u8 arg6, u8 arg7) {
    s64 sp320;
    s64 sp1E8;
    s64 sp1E0;
    s64 sp1D8;
    s64 sp1D0;
    f64 sp1C8;
    f64 sp1C0;
    f64 sp1B8;
    f64 sp1B0;
    f64 sp1A8;
    f64 sp1A0;
    f64 sp198;
    f64 sp190;
    f64 sp188;
    f64 sp180;
    f64 sp178;
    f64 sp170;
    s32 sp168;
    s32 sp164;
    s32 sp160;
    s32 sp15C;
    s32 sp158;
    f32 sp154;
    f32 sp150;
    f32 sp14C;
    f32 sp148;
    s32 sp144;
    f32 sp140;
    s64 sp138;
    f64 sp130;
    s64 sp128;
    f64 sp120;
    s64 sp118;
    f64 sp110;
    s32 sp10C;
    s32 sp108;
    s32 sp104;
    s32 sp100;
    f32 spF8;
    f32 spF4;
    f32 spF0;
    f32 spEC;
    f32 spE8;
    f32 spE4;
    f32 spE0;
    f32 spDC;
    f32 spD8;
    f32 spD4;
    f32 spD0;
    f32 spCC;
    f32 spC8;
    s32 spC4;
    s32 spC0;
    s64 spB8;
    s64 spB0;
    s32 spAC;
    f32 spA8;
    s64 spA0;
    f64 sp98;
    s64 sp90;
    f64 sp88;
    s32 sp84;
    f32 sp80;
    s64 sp78;
    f64 sp70;
    s64 sp68;
    f64 sp60;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    u32 sp0;
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f1_2;
    f32 temp_f21_3;
    f32 temp_f25;
    f32 temp_f26;
    f32 temp_f2;
    f32 temp_f4_2;
    f32 temp_f5_2;
    f32 var_f20_2;
    f32 var_f22_2;
    f32 var_f24_2;
    f32 var_f28;
    f32 var_f30;
    f32 var_f5;
    f64 temp_f0_2;
    f64 temp_f21;
    f64 temp_f21_2;
    f64 temp_f29;
    f64 temp_f2_2;
    f64 temp_f4;
    f64 temp_f5;
    f64 temp_f7;
    f64 var_f14;
    f64 var_f20;
    f64 var_f22;
    f64 var_f24;
    f64 var_f26;
    f64 var_f4;
    f64 var_f4_2;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_s1;
    s32 temp_s7_2;
    s32 var_a0;
    s32 var_condition_bit;
    s32 var_f13;
    s32 var_s1;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6;
    s32 var_s8;
    s64 temp_at;
    s64 temp_t0;
    s64 temp_t1;
    s64 temp_t3;
    s64 temp_t8;
    s64 var_a0_2;
    s64 var_a2;
    s64 var_a4;
    u8 var_a5;
    u8 var_a6;
    u8 var_a7;
    u8 var_f15;
    void *temp_a0;
    void *temp_s2;
    void *temp_s7;
    void *temp_s8;
    u32 phi_f23;

    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a1 = arg0->unk74B4;
    var_s6 = arg0->unk75FC;
    var_s5 = arg0->unk74B0;
    var_s4 = arg0->unk74AC;
    unksp2A8 = (s64) arg0->unk74C8;
    var_s3 = arg0->unk74C4;
    unksp288 = (s64) arg0->unk74BC;
    unksp280 = (s64) temp_a1;
    temp_s7 = arg0->unk7DBC;
    temp_s2 = arg0->unk7DB8;
    temp_s1 = arg0->unk76E4;
    unksp258 = (s64) arg0->unk74C0;
    unksp240 = (s64) arg0->unk7628;
    temp_s8 = arg0 + 0x10000;
    unksp250 = (s64) arg0->unk74B8;
    sp0 = arg0->unk7D64;
    if (arg0->unk807C & 2) {
        var_a4 = temp_s1 & 1;
        if (var_a4 != 0) {
            var_a7 = arg0->unk8086;
            var_a6 = arg0->unk8085;
            var_a5 = arg0->unk8084;
            spC = (f32) arg0->unk8087;
            sp8 = (f32) var_a7;
            var_f28 = (f32) var_a5;
            sp4 = (f32) var_a6;
        } else {
            var_f28 = (f32) ((u64) ((s64) (s32) arg0->unk8084 << 0x20) >> 0x20);
        }
    } else {
        var_f28 = arg0->unk7600;
        spC = arg0->unk760C;
        sp8 = arg0->unk7608;
        sp4 = arg0->unk7604;
    }
    if (temp_s1 & 8) {
        temp_f0 = arg0->unk7610;
        temp_f2 = arg0->unk761C;
        temp_f1 = arg0->unk7614;
        sp1B8 = (bitwise f64) temp_f2;
        sp18 = temp_f2;
        sp1A8 = (bitwise f64) temp_f1;
        sp1B0 = (bitwise f64) temp_f0;
        sp14 = temp_f1;
        sp10 = temp_f0;
        if ((arg0->unk6E38 == 0) || (var_a0 = 0, (arg0->unk7D58 & 0x8000))) {
            var_a0 = 1;
        }
        temp_t8 = var_a0 & 0xFF;
        var_a2 = 0;
        unksp2C0 = temp_t8;
        if (temp_t8 != 0) {
            temp_f7 = (f64) sp1B8;
            temp_a0 = arg0->unk6E30;
            sp188 = (bitwise f64) (arg0->unkDD4 - arg0->unk74A4);
            var_f24 = temp_f7;
            var_f22 = (f64) M2C_ERROR(/* unknown instruction: madd.s $f22, $f7, $f5, $f22 */);
            sp190 = second half of f64;
            phi_f23 = (bitwise u32) (second half of f64);
            if ((temp_f7 != 1.0) || (var_f22 != 1.0)) {
                if (fabsf((f32) sp1B8) < 0.0000076293945f) {
                    M2C_ERROR(/* unknown instruction: movf.s $f24, $f4, $fcc3 */);
                }
                if ((f32) fabs(var_f22) < 0.0000076293945f) {
                    var_f22 = (f64) M2C_ERROR(/* unknown instruction: movf.s $f27, $f4, $fcc5 */);
                }
                var_f26 = (f64) arg0->unk7DA8 * var_f22;
                var_f20 = (f64) arg0->unk7DA4 * (second half of f64);
                var_f24 = 1.0 / (second half of f64);
                phi_f23 = second half of f64;
            } else {
                var_f26 = (f64) arg0->unk7DA8;
                var_f20 = (f64) arg0->unk7DA4;
            }
            M2C_ERROR(/* unknown instruction: madd.d $f30, $f4, $f30, $f22 */);
            if (temp_a0->unk4 != 0x2901) {
                sp198 = M2C_ERROR(/* unknown instruction: madd.d $f8, $f2, $f4, $f24 */);
                if ((M2C_ERROR(/* unknown instruction: movf.d $f1, $f30, $fcc7 */) > 7.0) || (M2C_ERROR(/* unknown instruction: movf.d $f3, $f30, $fcc1 */) < -7.0)) {
                    var_a2 = 1;
                }
                sp1D8 = var_a2;
            } else {
                sp178 = (f64) sp1B0 * var_f24;
                unksp2E0 = second half of f64;
                sp320 = (s64) temp_a0;
                M2C_ERROR(/* unknown instruction: movf.d $f15, $f30, $fcc3 */);
                sp198 = sp178 - (f64) (s32) ((f32) __glFloor((bitwise f32) temp_a0, temp_a1, (bitwise f32) 0, 0x2901U, var_a4, var_a5, var_a6, var_a7, (f32) M2C_ERROR(/* unknown instruction: movf.d $f12, $f30, $fcc1 */), second half of f64) + -1.0f);
                sp1D8 = M2C_ERROR(/* unknown instruction: movf $t3, $zero, $fcc2 */);
            }
            var_f14 = -7.0;
            var_f15 = second half of f64;
            if (temp_a0->unkE8 != 1) {
                temp_a1_2 = temp_a0->unk8;
                var_a0_2 = 0;
                temp_f4 = M2C_ERROR(/* unknown instruction: madd.d $f4, $f7, $f4, $f22 */);
                if (temp_a1_2 != 0x2901) {
                    M2C_ERROR(/* unknown instruction: madd.d $f5, $f12, $f7, $f24 */);
                    var_f4 = temp_f4 + 1.0;
                    unksp2D8 = second half of f64;
                    if ((M2C_ERROR(/* unknown instruction: movf.d $f11, $f4, $fcc3 */) > 7.0) || (M2C_ERROR(/* unknown instruction: movf.d $f13, $f4, $fcc5 */) < -7.0)) {
                        var_a0_2 = 1;
                    }
                    sp1E0 = var_a0_2;
                } else {
                    sp170 = (f64) sp1A8 * var_f24;
                    sp180 = temp_f4;
                    __glFloor((bitwise f32) 0, temp_a1_2, (f32) M2C_ERROR(/* unknown instruction: movf.d $f12, $f4, $fcc4 */), second half of f64, 0xC01C000000000000, second half of f64);
                    var_f4 = temp_f4 - (f64) (second half of f64);
                    var_f15 = second half of f64;
                    var_f14 = M2C_ERROR(/* unknown instruction: movf.d $f14, $f4, $fcc6 */);
                    sp1E0 = M2C_ERROR(/* unknown instruction: movf $t8, $zero, $fcc5 */);
                }
            } else {
                sp1E0 = 0;
                var_f4 = 1.0;
            }
            var_f13 = second half of f64;
            if (!(var_f20 <= GLUE_F64(phi_f23, 0U))) {
                var_f4 = second half of f64;
                if (var_f26 <= GLUE_F64(phi_f23, 0U)) {
                    var_f13 = second half of f64;
                    goto block_28;
                }
            } else {
block_28:
                sp180 = var_f4;
                var_f26 += (f64) (0.0000076293945f - (f32) __glFloor((f32) M2C_ERROR(/* unknown instruction: movf.d $f12, $f26, $fcc0 */), var_f13, (f32) var_f14, var_f15));
            }
            temp_f5 = M2C_ERROR(/* unknown instruction: movf.d $f5, $f26, $fcc2 */);
            if (temp_f5 != GLUE_F64(phi_f23, 0U)) {
                if (temp_f5 != 1.0) {
                    var_f26 *= 1.0 / temp_f5;
                }
            }
            temp_t1 = (sp1D8 != 0) ? 4 : sp1D8;
            temp_t0 = (sp1E0 == 0) ? sp1E0 : 4;
            M2C_ERROR(/* unknown instruction: nmsub.d $f2, $f2, $f20, $f6 */);
            sp58 = (s32) temp_t0;
            temp_f21 = (f64) sp190;
            sp54 = (s32) temp_t1;
            temp_t3 = 1 << 0x2B;
            sp50 = (sp1D8 & 1) | ((sp1E0 & 1) * 2);
            temp_s2->unk2134 = sp50;
            temp_f2_2 = temp_f21 * (second half of f64);
            sp0 = (((sp0 & 0xFFFFFF) | 0x03000000) & ~0x30000) | 0x20000;
            temp_f21_2 = temp_f21 * (var_f26 - (second half of f64));
            sp28 = temp_f21 * M2C_ERROR(/* unknown instruction: nmsub.d $f1, $f1, $f20, $f24 */);
            sp30 = temp_f21_2;
            M2C_ERROR(/* unknown instruction: madd.d $f3, $f20, $f3, $f21 */);
            sp20 = temp_f2_2;
            temp_f0_2 = (f64) (temp_t3 >> temp_t1) * temp_f2_2;
            sp60 = temp_f0_2;
            sp40 = M2C_ERROR(/* unknown instruction: madd.d $f5, $f5, $f3, $f1 */);
            sp48 = second half of f64;
            sp38 = M2C_ERROR(/* unknown instruction: madd.d $f6, $f6, $f3, $f2 */);
            sp68 = (s64) sp60;
            temp_f29 = (f64) (temp_t3 >> temp_t0) * (second half of f64);
            var_f28 = second half of f64;
            sp70 = temp_f29;
            temp_s2->unk2138 = sp68;
            temp_s7->unk2138 = sp68;
            sp78 = (s64) sp70;
            temp_f21_3 = (f32) (temp_f21_2 * 536870912.0);
            sp80 = temp_f21_3;
            temp_s2->unk2148 = (f64) (second half of f64);
            temp_s7->unk2148 = sp78;
            sp84 = (s32) sp80;
            temp_s2->unk2158 = sp84;
            temp_s7->unk2158 = sp84;
            sp88 = temp_f0_2;
            sp90 = (s64) sp88;
            sp98 = temp_f29;
            temp_s2->unk2140 = sp90;
            temp_s7->unk2140 = sp90;
            spA0 = (s64) sp98;
            spA8 = temp_f21_3;
            temp_s2->unk2150 = (f64) (second half of f64);
            temp_s7->unk2150 = spA0;
            spAC = (s32) spA8;
            temp_s2->unk215C = spAC;
            temp_s7->unk215C = spAC;
            if (temp_s1 & 4) {
                spB0 = 0;
                spB8 = 0;
                temp_s2->unk21D0 = spB0;
                temp_s7->unk21D0 = (f64) (second half of f64);
                temp_s2->unk21D8 = spB8;
                temp_s7->unk21D8 = spB8;
            }
            if (arg0->unk700 & 0x20) {
                spC0 = 0;
                temp_s2->unk2180 = spC0;
                temp_s7->unk2180 = spC0;
                spC4 = 0;
                temp_s2->unk2188 = spC4;
                temp_s7->unk2188 = spC4;
            }
        } else {
            spCC = arg0->unk7620;
            spC8 = arg0->unk7618;
        }
        unksp2D0 = 1;
    } else {
        unksp2D0 = 0;
        unksp2C0 = 0;
    }
    sp1C0 = (bitwise f64) arg0->unk7624;
    if (arg0->unk778 == 0x1102) {
        temp_f1_2 = arg0->unk648;
        spD8 = arg0->unk650;
        spD0 = temp_f1_2;
        spD4 = temp_f1_2 * temp_f1_2;
    }
    temp_s7_2 = arg0->unk700 & 0x200;
    if (temp_s7_2 != 0) {
        sp1E8 = (s64) temp_s8;
        spF8 = arg0->unk7524;
        spF0 = arg0->unk751C;
        spF4 = arg0->unk7520;
        spEC = arg0->unk7518;
        spE0 = arg0->unk752C;
        spDC = arg0->unk7528;
        spE4 = arg0->unk7504 - arg0->unkDD4;
        spE8 = M2C_ERROR(/* unknown instruction: msub.s $f8, $f10, $f8, $f10 */);
    }
    sp1E8 = (s64) temp_s8;
    var_s8 = unksp240 - 1;
    if (var_s8 >= 0) {
        var_f22_2 = spDC;
        var_f24_2 = spE0;
        unksp2B0 = 0;
        unksp278 = temp_s1 & 0x8000;
        unksp248 = temp_s1 & 0x2000;
        unksp2A0 = temp_s1 & 2;
        unksp298 = temp_s1 & 4;
        unksp260 = (s64) sp0;
        unksp2B8 = temp_s1 & 0x1000;
        unksp2C8 = temp_s1 & 1;
        sp1C8 = (bitwise f64) spFC;
        sp1A0 = (bitwise f64) spD0;
        var_f30 = 0.0f;
        sp1B8 = (bitwise f64) sp18;
        temp_at = 1 << 0x2B;
        sp1B0 = (bitwise f64) sp10;
        sp1A8 = (bitwise f64) sp14;
        unksp270 = temp_at >> sp58;
        unksp268 = temp_at >> sp54;
        unksp290 = (s64) (sp0 >> 0x18);
loop_81:
        if (temp_s7_2 != 0) {
            temp_f4_2 = arg0->unkDD4;
            temp_f26 = arg0->unkDD8;
            var_s1 = 1;
            if (spE8 < var_f24_2) {
                var_condition_bit = (temp_f26 + (spE8 - var_f24_2)) < var_f30;
                var_f20_2 = M2C_ERROR(/* unknown instruction: movt.s $f20, $f30, $fcc6 */);
            } else {
                temp_f25 = -spE8;
                var_condition_bit = var_f24_2 < temp_f25;
                var_f20_2 = temp_f26;
                if (var_f24_2 < temp_f25) {
                    var_condition_bit = (temp_f26 + (spE8 + var_f24_2)) < var_f30;
                    var_f20_2 = M2C_ERROR(/* unknown instruction: movt.s $f20, $f30, $fcc3 */);
                }
            }
            if (var_condition_bit) {
                var_f20_2 = M2C_ERROR(/* unknown instruction: movt.s $f20, $f30, $fcc0 */);
            } else if (spE4 < var_f22_2) {
                var_f20_2 = M2C_ERROR(/* unknown instruction: movt.s $f20, $f30, $fcc5 */);
            }
            if (unksp278 != 0) {
                temp_f5_2 = arg0->unk7530;
                if (!(temp_f4_2 < var_f22_2)) {
                    sp1D0 = (bitwise s64) (temp_f4_2 + temp_f5_2);
                } else {
                    sp1D0 = (bitwise s64) (temp_f5_2 + var_f22_2);
                }
                floorf(sp1D0, second half of f64);
                var_f24_2 = second half of f64;
                var_f20_2 *= M2C_ERROR(/* unknown instruction: madd.s $f19, $f19, $f21, $f23 */);
                var_s1 = M2C_ERROR(/* unknown instruction: movt $s1, $zero, $fcc4 */);
                if (var_s1 != 0) {
                    goto block_47;
                }
            } else {
                goto block_47;
            }
        } else {
            var_f20_2 = 1.0f;
            var_s1 = 1;
block_47:
            temp_a2 = var_s5 << 6;
            temp_a0_2 = var_s4 << 6;
            if (unksp2B0 == 0) {
                if (arg0->unk7D60 != unksp260) {
                    arg0->unk7DB8->unk2060 = (s32) unksp260;
                    arg0->unk7DBC->unk2060 = sp0;
                    arg0->unk7D60 = sp0;
                }
                unksp2B0 = 1;
            }
            sp100 = temp_a0_2;
            sp104 = temp_a2;
            temp_s2->unk2084 = sp104;
            temp_s2->unk2080 = sp100;
            if (unksp290 == 3) {
                sp108 = temp_a0_2;
                sp10C = temp_a2;
                temp_s2->unk208C = sp10C;
                temp_s2->unk2088 = sp108;
            }
        }
        if (unksp298 != 0) {
            if (var_s1 != 0) {
                var_f28 = second half of f64;
                sp110 = (f64) (64.0f * (f32) ((u64) ((s64) var_s6 << 0x20) >> 0x20));
                sp118 = (s64) sp110;
                var_f24_2 = second half of f64;
                temp_s2->unk21C8 = sp118;
            }
            var_s6 += arg0->unk7674;
        }
        if (unksp2D0 != 0) {
            if (unksp2C0 != 0) {
                if (var_s1 != 0) {
                    sp120 = (f64) unksp268 * (second half of f64);
                    sp128 = (s64) sp120 + 0x800;
                    sp130 = (f64) (second half of f64) * (second half of f64);
                    sp138 = (s64) (second half of f64) + 0x800;
                    sp140 = (f32) ((second half of f64) * (second half of f64));
                    temp_s2->unk2120 = (f64) (second half of f64);
                    temp_s2->unk2128 = sp138;
                    sp144 = (s32) sp140 + 0x800;
                    temp_s2->unk2130 = sp144;
                }
                sp48 += sp30;
                sp40 += sp28;
                sp38 += sp20;
            } else {
                sp148 = var_f28;
                sp14C = sp4;
                sp150 = sp8;
                sp154 = spC;
                arg0->unk30EC(arg0, &sp148);
                if (temp_s7_2 != 0) {
                    sp154 *= var_f20_2;
                    if (var_s1 != 0) {
                        goto block_132;
                    }
                } else if (var_s1 == 0) {

                } else {
block_132:
                    sp158 = (s32) sp154 | ((s32) sp148 << 0x18) | (((s32) sp14C << 0x10) | ((s32) sp150 << 8));
                    temp_s2->unk20D0 = sp158;
                }
                var_f30 = second half of f64;
                spCC += arg0->unk76BC;
                var_f22_2 = second half of f64;
                spC8 += arg0->unk76B4;
                sp1B8 = (f64) (arg0->unk76B8 + (f32) sp1B8);
                sp1A8 = (f64) (arg0->unk76B0 + (f32) sp1A8);
                sp1B0 = (f64) (arg0->unk76AC + (f32) sp1B0);
            }
        }
        if (unksp2B8 != 0) {
            goto block_59;
        }
        if ((unksp248 == 0) || (unksp2C0 == 0)) {
            goto block_91;
        }
block_59:
        if (var_s1 != 0) {
            if (arg0->unk778 != 0x1102) {
                sp1C8 = sp1C0;
                goto block_62;
            }
            temp_a0_3 = arg0->unk634;
            var_f4_2 = sp1C0;
            if ((f32) sp1C0 < var_f30) {
                var_f4_2 = (f64) -(f32) sp1C0;
            }
            switch (temp_a0_3) {                    /* irregular */
            case 0x2601:
                sp1C8 = (f64) (arg0->unk654 * (spD8 - (second half of f64)));
                break;
            case 0x800:
                sp1C8 = powf(temp_a0_3, 2.7182817f, -((f32) var_f4_2 * (bitwise f32) sp1A0), second half of f64, sp1C0);
                break;
            case 0x801:
                sp1C8 = powf(temp_a0_3, 2.7182817f, -((f32) var_f4_2 * ((f32) var_f4_2 * spD4)), second half of f64, sp1C0);
                break;
            }
            if ((f32) sp1C8 < var_f30) {
                sp1C8 = (f64) var_f30;
                if (unksp2C8 == 0) {

                } else {
                    goto block_63;
                }
            } else {
                sp1C8 = M2C_ERROR(/* unknown instruction: movt.s $f7, $f8, $fcc0 */);
block_62:
                if (unksp2C8 != 0) {
block_63:
                    sp15C = (s32) (4096.0f * (f32) ((f64) sp1C8 * 255.0));
                    temp_s2->unk2178 = sp15C;
                }
            }
            sp1C0 = (f64) (arg0->unk76E0 + (f32) sp1C0);
            if (unksp2C8 != 0) {
                goto block_66;
            }
            goto block_92;
        }
block_91:
        if (unksp2C8 == 0) {
block_92:
            if (var_s1 != 0) {
                var_f5 = var_f28;
                if (temp_s7_2 != 0) {
                    var_f5 = __glBuildAntiAliasIndex(var_f28, var_f20_2);
                    if (unksp2B8 == 0) {

                    } else {
                        goto block_106;
                    }
                } else if (unksp2B8 != 0) {
block_106:
                    var_f5 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f5, $f5, $f6, $f7 */);
                }
                sp168 = (s32) var_f5;
                temp_s2->unk20D0 = sp168;
            }
            if (unksp2A0 != 0) {
                var_f28 += arg0->unk764C;
            }
            if (var_s1 == 0) {

            } else {
                goto block_73;
            }
        } else {
block_66:
            if ((unksp2D0 == 0) || (unksp2C0 != 0)) {
                if (var_s1 != 0) {
                    sp160 = (s32) (var_f20_2 * spC) | ((s32) var_f28 << 0x18) | (((s32) sp8 << 8) | ((s32) sp4 << 0x10));
                    temp_s2->unk20D0 = sp160;
                    if (unksp2A0 != 0) {
                        goto block_71;
                    }
                } else {
                    goto block_103;
                }
            } else {
block_103:
                if (unksp2A0 == 0) {

                } else {
block_71:
                    spC += arg0->unk7658;
                    sp8 += arg0->unk7654;
                    var_f28 += arg0->unk764C;
                    sp4 += arg0->unk7650;
                }
            }
            if (var_s1 != 0) {
block_73:
                sp164 = 0;
                temp_s2->unk29F0 = sp164;
            }
        }
        var_s8 -= 1;
        var_s3 += unksp2A8;
        if (temp_s7_2 != 0) {
            if (var_s3 >= 0) {
                var_f24_2 += spF4;
                var_f22_2 += spEC;
            } else {
                var_f24_2 += spF8;
                var_f22_2 += spF0;
            }
            if (var_s3 >= 0) {
                goto block_79;
            }
            goto block_101;
        }
        if (var_s3 < 0) {
block_101:
            var_s5 += unksp258;
            var_s4 += unksp250;
            var_s3 &= 0x7FFFFFFF;
        } else {
block_79:
            var_s5 += unksp288;
            var_s4 += unksp280;
        }
        if (var_s8 != -1) {
            goto loop_81;
        }
    }
    sp1E8->unk-7F80 = 0;
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x1e0, 0x1e4, 0x1e8, 0x1ec, 0x1f0, 0x1f4, 0x1f8, 0x1fc, 0x200, 0x204, 0x208, 0x20c, 0x210, 0x214, 0x218, 0x21c, 0x300, 0x304, 0x308, 0x30c, 0x310, 0x314, 0x318, 0x31c, 0x320, 0x324, 0x328, 0x32c, 0x338, 0x33c, 0x340, 0x344, 0x348, 0x34c], gap at: 0x228. */
s32 __glCrmStoreStippledLine(void *arg0, u8 arg7, f64 fparg2, f64 fparg3) {
    f64 sp1D8;
    f64 sp1D0;
    f64 sp1C8;
    f64 sp1C0;
    f64 sp1B8;
    f64 sp1B0;
    f64 sp1A8;
    f64 sp1A0;
    f64 sp198;
    f64 sp190;
    f64 sp188;
    f64 sp180;
    f64 sp178;
    f64 sp170;
    s32 sp168;
    s32 sp164;
    s32 sp160;
    s32 sp15C;
    s32 sp158;
    f32 sp154;
    f32 sp150;
    f32 sp14C;
    f32 sp148;
    s32 sp144;
    f32 sp140;
    s64 sp138;
    f64 sp130;
    s64 sp128;
    f64 sp120;
    s32 sp11C;
    s32 sp118;
    s64 sp110;
    s64 sp108;
    s32 sp104;
    f32 sp100;
    s64 spF8;
    f64 spF0;
    s64 spE8;
    f64 spE0;
    s32 spDC;
    f32 spD8;
    s64 spD0;
    f64 spC8;
    s64 spC0;
    f64 spB8;
    s64 spB0;
    f64 spA8;
    s32 spA0;
    s32 sp9C;
    s32 sp98;
    s32 sp94;
    f32 sp8C;
    f32 sp88;
    f32 sp84;
    f32 sp80;
    f32 sp7C;
    f32 sp78;
    f32 sp74;
    f32 sp70;
    f32 sp6C;
    f32 sp68;
    f32 sp64;
    f32 sp60;
    f32 sp5C;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    f64 sp48;
    f64 sp40;
    f64 sp38;
    f64 sp30;
    f64 sp28;
    f64 sp20;
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 sp8;
    f32 sp4;
    u32 sp0;
    f32 temp_a2;
    f32 temp_f25;
    f32 temp_f28;
    f32 temp_f2;
    f32 temp_f2_2;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f4_3;
    f32 temp_f7_2;
    f32 var_f20_2;
    f32 var_f22_2;
    f32 var_f24_2;
    f32 var_f26_2;
    f32 var_f30;
    f32 var_f4_2;
    f32 var_f4_3;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    f64 temp_f21;
    f64 temp_f4_2;
    f64 temp_f5;
    f64 temp_f7;
    f64 var_f14;
    f64 var_f15;
    f64 var_f20;
    f64 var_f22;
    f64 var_f24;
    f64 var_f26;
    f64 var_f4;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_s0;
    s32 temp_s8;
    s32 var_a0;
    s32 var_condition_bit;
    s32 var_f13;
    s32 var_s0;
    s32 var_s3;
    s32 var_s4;
    s32 var_s5;
    s32 var_s6;
    s32 var_s7;
    s32 var_s8;
    s64 temp_at;
    s64 temp_at_2;
    s64 temp_t1;
    s64 temp_t3;
    s64 var_a0_2;
    s64 var_a2;
    u32 var_a1;
    u32 var_s4_2;
    u8 var_a7;
    void *temp_s2;
    void *temp_s4;
    u32 phi_f23;

    var_a7 = arg7;
    var_f14 = fparg2;
    var_f15 = fparg3;
    temp_a1 = arg0->unk7708;
    temp_a2 = arg0->unk74B8;
    temp_a3 = arg0->unk74C0;
    temp_a4 = arg0->unk74B4;
    temp_a5 = arg0->unk74BC;
    temp_a6 = arg0->unk74C8;
    var_s7 = arg0->unk75FC;
    var_s6 = arg0->unk74B0;
    var_s5 = arg0->unk74AC;
    unksp2B8 = (s64) temp_a6;
    var_s3 = arg0->unk74C4;
    unksp298 = (s64) temp_a5;
    unksp290 = (s64) temp_a4;
    unksp248 = (s64) temp_a3;
    unksp250 = (bitwise s64) temp_a2;
    unksp228 = (s64) temp_a1;
    temp_s2 = arg0->unk7DB8;
    temp_s0 = arg0->unk76E4;
    unksp230 = (s64) arg0->unk7628;
    unksp220 = (s64) (arg0 + 0x10000);
    unksp260 = (s64) arg0->unk7DBC;
    sp0 = arg0->unk7D64;
    if (arg0->unk807C & 2) {
        var_a7 = temp_s0 & 1;
        if (var_a7 != 0) {
            spC = (f32) unksp220->unk-7F79;
            sp8 = (f32) unksp220->unk-7F7A;
            var_f30 = (f32) unksp220->unk-7F7C;
            sp4 = (f32) unksp220->unk-7F7B;
        } else {
            var_f30 = (f32) ((u64) ((s64) (s32) unksp220->unk-7F7C << 0x20) >> 0x20);
        }
    } else {
        var_f30 = arg0->unk7600;
        spC = arg0->unk760C;
        sp8 = arg0->unk7608;
        sp4 = arg0->unk7604;
    }
    if (temp_s0 & 8) {
        temp_f2 = arg0->unk7610;
        temp_f4 = arg0->unk761C;
        temp_f3 = arg0->unk7614;
        sp1D0 = (bitwise f64) temp_f4;
        sp18 = temp_f4;
        sp1C0 = (bitwise f64) temp_f3;
        sp1C8 = (bitwise f64) temp_f2;
        sp14 = temp_f3;
        sp10 = temp_f2;
        if ((arg0->unk6E38 == 0) || (var_a0 = 0, (arg0->unk7D58 & 0x8000))) {
            var_a0 = 1;
        }
        temp_at = var_a0 & 0xFF;
        unksp2D0 = temp_at;
        if (temp_at != 0) {
            temp_f7 = (f64) sp1D0;
            temp_s4 = arg0->unk6E30;
            sp188 = (bitwise f64) (arg0->unkDD4 - arg0->unk74A4);
            var_f24 = temp_f7;
            var_f22 = (f64) M2C_ERROR(/* unknown instruction: madd.s $f22, $f7, $f5, $f22 */);
            sp190 = second half of f64;
            phi_f23 = (bitwise u32) (second half of f64);
            if ((temp_f7 != 1.0) || (var_f22 != 1.0)) {
                if (fabsf((f32) sp1D0) < 0.0000076293945f) {
                    M2C_ERROR(/* unknown instruction: movf.s $f24, $f4, $fcc3 */);
                }
                if ((f32) fabs(var_f22) < 0.0000076293945f) {
                    var_f22 = (f64) M2C_ERROR(/* unknown instruction: movf.s $f27, $f4, $fcc5 */);
                }
                var_f26 = (f64) arg0->unk7DA8 * var_f22;
                var_f20 = (f64) arg0->unk7DA4 * (second half of f64);
                var_f24 = 1.0 / (second half of f64);
                phi_f23 = second half of f64;
            } else {
                var_f26 = (f64) arg0->unk7DA8;
                var_f20 = (f64) arg0->unk7DA4;
            }
            M2C_ERROR(/* unknown instruction: madd.d $f28, $f4, $f28, $f22 */);
            if (temp_s4->unk4 != 0x2901) {
                var_f30 = second half of f64;
                sp198 = M2C_ERROR(/* unknown instruction: madd.d $f8, $f1, $f4, $f24 */);
                if ((M2C_ERROR(/* unknown instruction: movf.d $f0, $f28, $fcc7 */) > 7.0) || (M2C_ERROR(/* unknown instruction: movf.d $f2, $f28, $fcc1 */) < -7.0)) {
                    var_s8 = 1;
                } else {
                    var_s8 = 0;
                }
            } else {
                sp178 = (f64) sp1C8 * var_f24;
                unksp2F8 = second half of f64;
                var_f14 = 15.0;
                var_f15 = M2C_ERROR(/* unknown instruction: movf.d $f15, $f28, $fcc3 */);
                sp198 = sp178 - (f64) (s32) ((f32) __glFloor(1.471e-41f, temp_a1, temp_a2, (u8) temp_a3, (s64) temp_a4, (u8) temp_a5, (u8) temp_a6, var_a7, (f32) M2C_ERROR(/* unknown instruction: movf.d $f12, $f28, $fcc1 */), second half of f64) + -1.0f);
                var_s8 = M2C_ERROR(/* unknown instruction: movf $fp, $zero, $fcc2 */);
            }
            temp_a1_2 = temp_s4->unkE8;
            if (temp_a1_2 != 1) {
                temp_a3_2 = temp_s4->unk8;
                temp_f4_2 = M2C_ERROR(/* unknown instruction: madd.d $f4, $f7, $f4, $f22 */);
                if (temp_a3_2 != 0x2901) {
                    M2C_ERROR(/* unknown instruction: madd.d $f5, $f12, $f7, $f24 */);
                    var_f4 = temp_f4_2 + 1.0;
                    unksp2F0 = second half of f64;
                    if ((M2C_ERROR(/* unknown instruction: movf.d $f11, $f4, $fcc3 */) > 7.0) || (var_f14 = -7.0, var_f15 = second half of f64, (M2C_ERROR(/* unknown instruction: movf.d $f13, $f4, $fcc5 */) < -7.0))) {
                        var_s4 = 1;
                    } else {
                        var_s4 = 0;
                    }
                } else {
                    sp170 = (f64) sp1C0 * var_f24;
                    sp180 = temp_f4_2;
                    __glFloor(1.471e-41f, temp_a1_2, 1e-45f, (u8) temp_a3_2, (bitwise s64) (f32) M2C_ERROR(/* unknown instruction: movf.d $f12, $f4, $fcc4 */), second half of f64, (bitwise u8) var_f14, (bitwise u8) var_f15);
                    var_f4 = temp_f4_2 - (f64) (second half of f64);
                    var_f15 = second half of f64;
                    var_f14 = M2C_ERROR(/* unknown instruction: movf.d $f14, $f4, $fcc6 */);
                    var_s4 = M2C_ERROR(/* unknown instruction: movf $s4, $zero, $fcc5 */);
                }
            } else {
                var_s4 = 0;
                var_f4 = 1.0;
            }
            var_f13 = second half of f64;
            if ((var_f20 <= GLUE_F64(phi_f23, 0U)) || (var_f13 = second half of f64, (var_f26 <= GLUE_F64(phi_f23, 0U)))) {
                sp180 = var_f4;
                var_f26 += (f64) (0.0000076293945f - (f32) __glFloor((f32) M2C_ERROR(/* unknown instruction: movf.d $f12, $f26, $fcc0 */), var_f13, (f32) var_f14, (bitwise u8) var_f15));
            }
            temp_f5 = M2C_ERROR(/* unknown instruction: movf.d $f5, $f26, $fcc2 */);
            if ((temp_f5 != GLUE_F64(phi_f23, 0U)) && (temp_f5 != 1.0)) {
                var_f26 *= 1.0 / temp_f5;
            }
            sp58 = (var_s4 == 0) ? var_s4 : 4;
            temp_f21 = (f64) sp190;
            sp50 = (var_s8 & 1) | ((var_s4 & 1) * 2);
            sp54 = (var_s8 != 0) ? 4 : var_s8;
            temp_s2->unk2134 = sp50;
            sp0 = (((sp0 & 0xFFFFFF) | 0x03000000) & ~0x30000) | 0x20000;
            sp30 = temp_f21 * (var_f26 - (second half of f64));
            sp28 = temp_f21 * M2C_ERROR(/* unknown instruction: nmsub.d $f23, $f23, $f20, $f24 */);
            sp20 = temp_f21 * M2C_ERROR(/* unknown instruction: nmsub.d $f29, $f29, $f20, $f17 */);
            sp48 = M2C_ERROR(/* unknown instruction: madd.d $f19, $f17, $f25, $f27 */);
            sp40 = M2C_ERROR(/* unknown instruction: madd.d $f18, $f18, $f25, $f23 */);
            sp38 = M2C_ERROR(/* unknown instruction: madd.d $f17, $f17, $f25, $f21 */);
        } else {
            sp60 = arg0->unk7620;
            sp5C = arg0->unk7618;
        }
        unksp2D8 = 1;
    } else {
        unksp2D8 = 0;
        unksp2D0 = 0;
    }
    var_f26_2 = arg0->unk7624;
    if (arg0->unk778 == 0x1102) {
        temp_f2_2 = arg0->unk648;
        sp6C = arg0->unk650;
        sp64 = temp_f2_2;
        sp68 = temp_f2_2 * temp_f2_2;
    }
    temp_s8 = arg0->unk700 & 0x200;
    if (temp_s8 != 0) {
        sp8C = arg0->unk7524;
        sp88 = arg0->unk7520;
        sp84 = arg0->unk751C;
        sp80 = arg0->unk7518;
        sp74 = arg0->unk752C;
        sp70 = arg0->unk7528;
        sp78 = arg0->unk7504 - arg0->unkDD4;
        sp7C = M2C_ERROR(/* unknown instruction: msub.s $f25, $f29, $f25, $f29 */);
    }
    if (unksp230 != 0) {
        var_f6 = sp90;
        var_f22_2 = sp70;
        var_f24_2 = sp74;
        unksp2A0 = 0;
        unksp278 = 0;
        unksp288 = temp_s0 & 0x8000;
        unksp240 = temp_s0 & 0x2000;
        unksp238 = temp_s0 & 0x3000;
        unksp2B0 = temp_s0 & 2;
        var_a2 = temp_s0 & 1;
        unksp2E0 = var_a2;
        unksp2A8 = temp_s0 & 0x1000;
        unksp2C8 = temp_s0 & 4;
        unksp258 = (s64) sp0;
        sp1A0 = (bitwise f64) sp64;
        sp1C8 = (bitwise f64) sp10;
        temp_at_2 = 1 << 0x2B;
        sp1D0 = (bitwise f64) sp18;
        var_a1 = sp0 >> 0x18;
        unksp280 = (s64) var_a1;
        unksp270 = temp_at_2 >> sp58;
        sp1B8 = sp30;
        unksp268 = temp_at_2 >> sp54;
        sp1C0 = (bitwise f64) sp14;
        var_f5 = 0.0f;
        sp1B0 = second half of f64;
        sp1A8 = sp20;
        var_s4_2 = 0x80000000;
loop_38:
        temp_t3 = unksp228 + 4;
        unksp228 = temp_t3;
        var_a0_2 = (unksp230 > 0x20) ? 0x20 : unksp230;
        temp_t1 = var_a0_2 - 1;
        unksp2E8 = temp_t1;
        unksp2C0 = (s64) temp_t3->unk-4;
        unksp230 -= var_a0_2;
        if (temp_t1 >= 0) {
loop_82:
            var_f20_2 = 1.0f;
            var_s0 = unksp2C0 & var_s4_2;
            if (temp_s8 != 0) {
                temp_f4_3 = arg0->unkDD4;
                temp_f28 = arg0->unkDD8;
                if (sp7C < var_f24_2) {
                    var_condition_bit = (temp_f28 + (sp7C - var_f24_2)) < var_f5;
                    var_f20_2 = M2C_ERROR(/* unknown instruction: movt.s $f20, $f5, $fcc6 */);
                } else {
                    temp_f25 = -sp7C;
                    var_condition_bit = var_f24_2 < temp_f25;
                    if (var_f24_2 < temp_f25) {
                        var_condition_bit = (temp_f28 + (sp7C + var_f24_2)) < var_f5;
                        var_f20_2 = M2C_ERROR(/* unknown instruction: movt.s $f20, $f5, $fcc3 */);
                    } else {
                        var_f20_2 = temp_f28;
                    }
                }
                if (var_condition_bit) {
                    var_f20_2 = M2C_ERROR(/* unknown instruction: movt.s $f20, $f5, $fcc0 */);
                } else if (sp78 < var_f22_2) {
                    var_f20_2 = M2C_ERROR(/* unknown instruction: movt.s $f20, $f5, $fcc5 */);
                }
                if (unksp288 != 0) {
                    temp_f7_2 = arg0->unk7530;
                    if (!(temp_f4_3 < var_f22_2)) {
                        unksp330 = (bitwise f64) var_f6;
                        sp1D8 = (bitwise f64) (temp_f4_3 + temp_f7_2);
                    } else {
                        unksp330 = (bitwise f64) var_f6;
                        sp1D8 = (bitwise f64) (temp_f7_2 + var_f22_2);
                    }
                    floorf(var_a0_2, (s64) var_a1, var_a2, -1, sp1D8, second half of f64);
                    var_f5 = 0.0f;
                    var_f20_2 *= M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f11, $f12 */);
                    var_f6 = (bitwise f32) unksp330;
                    var_s0 = M2C_ERROR(/* unknown instruction: movt $s0, $zero, $fcc4 */);
                }
            }
            if (var_s0 != 0) {
                temp_a2_2 = var_s6 << 6;
                temp_a0 = var_s5 << 6;
                if (unksp2A0 == 0) {
                    if (arg0->unk7D60 != unksp258) {
                        arg0->unk7DB8->unk2060 = (s32) unksp258;
                        arg0->unk7DBC->unk2060 = sp0;
                        arg0->unk7D60 = sp0;
                    }
                    unksp2A0 = 1;
                }
                sp94 = temp_a0;
                sp98 = temp_a2_2;
                temp_s2->unk2084 = sp98;
                temp_s2->unk2080 = sp94;
                if (unksp280 == 3) {
                    sp9C = temp_a0;
                    spA0 = temp_a2_2;
                    temp_s2->unk208C = spA0;
                    temp_s2->unk2088 = sp9C;
                }
            }
            if (unksp2C8 != 0) {
                if (var_s0 != 0) {
                    spA8 = (f64) (64.0f * (f32) ((u64) ((s64) var_s7 << 0x20) >> 0x20));
                    spB0 = (s64) spA8;
                    temp_s2->unk21C8 = spB0;
                }
                var_s7 += arg0->unk7674;
            }
            if (unksp2D8 != 0) {
                if (unksp2D0 != 0) {
                    if (unksp278 != 0) {
                        goto block_53;
                    }
                    if (var_s0 != 0) {
                        spB8 = (f64) unksp268 * sp1A8;
                        spC0 = (s64) spB8;
                        spC8 = second half of f64;
                        temp_s2->unk2138 = (f64) (second half of f64);
                        unksp260->unk2138 = spC0;
                        spD0 = (s64) (second half of f64);
                        var_f20_2 = second half of f64;
                        spD8 = (f32) (sp1B8 * (second half of f64));
                        temp_s2->unk2148 = spD0;
                        unksp260->unk2148 = spD0;
                        spDC = (s32) spD8;
                        temp_s2->unk2158 = spDC;
                        unksp260->unk2158 = spDC;
                        spE0 = second half of f64;
                        spE8 = (s64) spE0;
                        spF0 = second half of f64;
                        temp_s2->unk2140 = spE8;
                        unksp260->unk2140 = (f64) (second half of f64);
                        spF8 = (s64) spF0;
                        sp100 = second half of f64;
                        temp_s2->unk2150 = spF8;
                        unksp260->unk2150 = spF8;
                        sp104 = (s32) sp100;
                        temp_s2->unk215C = sp104;
                        unksp260->unk215C = sp104;
                        if (unksp2C8 != 0) {
                            sp108 = 0;
                            var_f22_2 = second half of f64;
                            var_f20_2 = second half of f64;
                            sp110 = 0;
                            temp_s2->unk21D0 = sp108;
                            unksp260->unk21D0 = sp108;
                            temp_s2->unk21D8 = (f64) (second half of f64);
                            unksp260->unk21D8 = sp110;
                        }
                        if (arg0->unk700 & 0x20) {
                            sp118 = 0;
                            temp_s2->unk2180 = sp118;
                            unksp260->unk2180 = sp118;
                            sp11C = 0;
                            temp_s2->unk2188 = sp11C;
                            unksp260->unk2188 = sp11C;
                        }
                        unksp278 = 1;
block_53:
                        var_f6 = second half of f64;
                        if (var_s0 != 0) {
                            var_f30 = second half of f64;
                            sp120 = (f64) unksp268 * sp38;
                            sp128 = (s64) sp120 + 0x800;
                            var_f26_2 = second half of f64;
                            sp130 = (f64) unksp270 * sp40;
                            var_f22_2 = second half of f64;
                            var_f24_2 = second half of f64;
                            var_f20_2 = second half of f64;
                            sp138 = (s64) sp130 + 0x800;
                            sp140 = (f32) (536870912.0 * sp48);
                            temp_s2->unk2120 = sp128;
                            temp_s2->unk2128 = sp138;
                            sp144 = (s32) sp140 + 0x800;
                            temp_s2->unk2130 = sp144;
                            goto block_55;
                        }
                    } else {
block_55:
                        var_f6 = second half of f64;
                    }
                    var_f5 = second half of f64;
                    sp48 += sp30;
                    sp40 += second half of f64;
                    sp38 += second half of f64;
                } else {
                    if (var_s0 != 0) {
                        sp148 = var_f30;
                        sp14C = sp4;
                        sp150 = sp8;
                        sp154 = spC;
                        unksp330 = (bitwise f64) var_f6;
                        arg0->unk30EC(arg0, &sp148);
                        var_f6 = (bitwise f32) unksp330;
                        var_f5 = 0.0f;
                        var_f4_2 = sp154;
                        if (temp_s8 != 0) {
                            var_f4_2 *= var_f20_2;
                            sp154 = var_f4_2;
                        }
                        sp158 = (s32) var_f4_2 | ((s32) sp148 << 0x18) | (((s32) sp14C << 0x10) | ((s32) sp150 << 8));
                        temp_s2->unk20D0 = sp158;
                    }
                    var_f20_2 = second half of f64;
                    sp60 += arg0->unk76BC;
                    var_f24_2 = second half of f64;
                    sp5C += arg0->unk76B4;
                    sp1D0 = (f64) (arg0->unk76B8 + (f32) sp1D0);
                    sp1C0 = (f64) (arg0->unk76B0 + (f32) sp1C0);
                    sp1C8 = (f64) (arg0->unk76AC + (f32) sp1C8);
                }
            }
            if (unksp2A8 != 0) {
                goto block_59;
            }
            if ((unksp240 == 0) || (unksp2D0 == 0)) {
                if (unksp2E0 == 0) {
                    goto block_97;
                }
                goto block_66;
            }
block_59:
            if (var_s0 != 0) {
                if (arg0->unk778 != 0x1102) {
                    var_f6 = var_f26_2;
                    goto block_62;
                }
                temp_a0_2 = arg0->unk634;
                var_f4_3 = var_f26_2;
                if (var_f26_2 < var_f5) {
                    var_f4_3 = -var_f26_2;
                }
                switch (temp_a0_2) {                /* irregular */
                case 0x2601:
                    var_f6 = arg0->unk654 * (sp6C - var_f4_3);
                    break;
                case 0x800:
                    var_f5 = 0.0f;
                    var_f6 = powf(temp_a0_2, 2.87e-42f, 2.871e-42f, -1, 4.807e-320, unksp2E0, 2.7182817f, -(var_f4_3 * (bitwise f32) sp1A0));
                    break;
                case 0x801:
                    var_f5 = 0.0f;
                    var_f6 = powf(temp_a0_2, 2.87e-42f, 2.871e-42f, -1, 4.807e-320, unksp2E0, 2.7182817f, -(var_f4_3 * (var_f4_3 * sp68)));
                    break;
                }
                if (var_f6 < var_f5) {
                    var_f6 = var_f5;
                    if (unksp2E0 == 0) {

                    } else {
                        goto block_64;
                    }
                } else {
                    var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f25, $fcc0 */);
block_62:
                    goto block_63;
                }
            } else {
block_63:
                if (unksp2E0 != 0) {
block_64:
                    sp160 = (s32) (4096.0f * (f32) ((f64) var_f6 * 255.0));
                    temp_s2->unk2178 = sp160;
                }
            }
            var_f26_2 += arg0->unk76E0;
            if (unksp2E0 != 0) {
block_66:
                if (var_s0 != 0) {
                    if (unksp2D8 != 0) {
                        if (unksp2D0 != 0) {
                            goto block_70;
                        }
                        goto block_105;
                    }
block_70:
                    sp15C = (s32) (var_f20_2 * spC) | ((s32) var_f30 << 0x18) | (((s32) sp8 << 8) | ((s32) sp4 << 0x10));
                    temp_s2->unk20D0 = sp15C;
                    if (unksp2B0 != 0) {
                        goto block_72;
                    }
                } else {
block_105:
                    if (unksp2B0 == 0) {

                    } else {
block_72:
                        spC += arg0->unk7658;
                        sp8 += arg0->unk7654;
                        var_f30 += arg0->unk764C;
                        sp4 += arg0->unk7650;
                    }
                }
                if (var_s0 != 0) {
                    goto block_74;
                }
            } else {
block_97:
                if (var_s0 != 0) {
                    var_f7 = var_f30;
                    if (temp_s8 != 0) {
                        unksp330 = (bitwise f64) var_f6;
                        var_f5 = 0.0f;
                        var_f7 = __glBuildAntiAliasIndex(var_f30, var_f20_2);
                        if (unksp238 == 0) {

                        } else {
                            goto block_110;
                        }
                    } else if (unksp238 != 0) {
block_110:
                        var_f6 = second half of f64;
                        var_f7 = (f32) M2C_ERROR(/* unknown instruction: madd.d $f7, $f7, $f8, $f9 */);
                    }
                    sp164 = (s32) var_f7;
                    temp_s2->unk20D0 = sp164;
                }
                if (unksp2B0 != 0) {
                    var_f30 += arg0->unk764C;
                }
                if (var_s0 == 0) {

                } else {
block_74:
                    sp168 = 0;
                    temp_s2->unk29F0 = sp168;
                }
            }
            var_s4_2 = var_s4_2 >> 1;
            var_a2 = unksp2E8 - 1;
            var_s3 += unksp2B8;
            if (temp_s8 != 0) {
                if (var_s3 >= 0) {
                    var_f24_2 += sp88;
                    var_f22_2 += sp80;
                } else {
                    var_f24_2 += sp8C;
                    var_f22_2 += sp84;
                }
                var_a0_2 = unksp250;
                if (var_s3 >= 0) {
                    goto block_80;
                }
                goto block_103;
            }
            var_a0_2 = unksp250;
            if (var_s3 < 0) {
block_103:
                var_a1 = (u32) unksp248;
                var_s6 += var_a1;
                var_s5 += var_a0_2;
                var_s3 &= 0x7FFFFFFF;
            } else {
block_80:
                var_a1 = (u32) unksp298;
                var_a0_2 = unksp290;
                var_s6 += var_a1;
                var_s5 += var_a0_2;
            }
            unksp2E8 = var_a2;
            if (var_a2 != -1) {
                goto loop_82;
            }
        }
        var_s4_2 = 0x80000000;
        if (unksp230 != 0) {
            goto loop_38;
        }
    }
    unksp220->unk-7F80 = 0;
    return 0;
}
