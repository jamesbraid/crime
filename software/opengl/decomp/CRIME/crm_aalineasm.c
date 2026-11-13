void __glCrmAntiAliasLineRGB(void *arg0, void *arg1, void *arg2, s32 arg_sp10, s32 arg_sp18) {
    f32 temp_f0;
    f32 temp_f11;
    f32 temp_f12;
    f32 temp_f12_2;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f1;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f4;
    f32 temp_f4_2;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f6;
    f32 temp_f7;
    f32 temp_f8;
    f32 temp_f9;
    f32 temp_f9_2;
    f32 var_f10;
    f32 var_f9;
    s32 temp_a7;
    s32 temp_f19;
    s32 temp_f19_2;
    s32 temp_f1_2;
    s32 temp_f2_2;
    s32 temp_f3_2;
    s32 temp_t8;
    s32 temp_t9;
    s32 temp_v0;
    s32 var_a4;
    s32 var_a4_2;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_condition_bit;
    s32 var_lo;
    s32 var_t1;
    s32 var_t9;
    s64 temp_a5_2;
    s64 temp_f11_2;
    s64 temp_t3_2;
    s64 temp_t8_2;
    s64 temp_t9_2;
    s64 var_f12;
    s64 var_t8;
    void *temp_a3;
    void *temp_a5;
    void *temp_t3;
    void *temp_v1;
    void *var_t2;

    temp_f0 = arg2->unk80;
    temp_f1 = arg1->unk80;
    temp_f2 = arg2->unk84;
    temp_f3 = arg1->unk84;
    temp_f4 = temp_f1 - temp_f0;
    arg0->unk7D60 = (s32) saved_reg_ra;
    temp_f5 = temp_f3 - temp_f2;
    temp_v1 = arg0->unk7DB8;
    temp_f6 = fabsf(temp_f4);
    temp_f8 = fabsf(temp_f5);
    temp_v1->unk2060 = (s32) arg0->unk7D74;
    if (temp_f8 <= temp_f6) {
        var_f9 = temp_f5;
        var_t2 = temp_v1 + 0x20F8;
        if ((bitwise s32) temp_f6 != 0) {
            var_f10 = M2C_ERROR(/* unknown instruction: recip.s $f10, $f4 */);
            goto block_6;
        }
        return;
    }
    var_f10 = M2C_ERROR(/* unknown instruction: recip.s $f10, $f5 */);
    var_t2 = temp_v1 + 0x20F0;
    var_f9 = temp_f4;
block_6:
    temp_v1->unk2080 = (bitwise s64) arg2->unk80;
    temp_f11 = var_f9 * arg0->unk7D1C;
    temp_t3 = arg2->unk8;
    temp_a5 = arg1->unk8;
    temp_t8 = arg0->unk76E4;
    temp_v0 = temp_t8 & 0x2004;
    temp_v1->unk2088 = (bitwise s64) arg1->unk80;
    var_t2->unk0 = 0;
    if (temp_f8 <= temp_f6) {
        var_condition_bit = temp_f4 < 0.0f;
        var_t9 = (bitwise s32) temp_f2 << 8;
        var_t2->unk10 = 0;
        var_a4 = ((bitwise s32) temp_f0 + 0x20) & 0x3F;
        var_t1 = (s32) (temp_f11 * var_f10);
        var_a6 = ((bitwise s32) temp_f1 + 0x20) & 0x3F;
        var_lo = ((M2C_ERROR(/* unknown instruction: movf $a6, $t2, $fcc4 */) & ~0x3F) - (bitwise s32) temp_f0) * var_t1;
        if (!(temp_f4 < 0.0f)) {
            var_a4_2 = 0x40 - var_a4;
            var_a6_2 = (var_a6 == 0) ? 0x40 : var_a6;
        } else {
            goto block_11;
        }
    } else {
        var_condition_bit = temp_f5 < 0.0f;
        var_t9 = (bitwise s32) temp_f0 << 8;
        var_t2->unk10 = 0;
        var_a4 = ((bitwise s32) temp_f2 + 0x20) & 0x3F;
        var_t1 = (s32) (temp_f11 * var_f10);
        var_a6 = ((bitwise s32) temp_f3 + 0x20) & 0x3F;
        var_lo = ((M2C_ERROR(/* unknown instruction: movf $a4, $t2, $fcc5 */) & ~0x3F) - (bitwise s32) temp_f2) * var_t1;
        if (!(temp_f5 < 0.0f)) {
            var_a4_2 = 0x40 - var_a4;
            var_a6_2 = (var_a6 == 0) ? 0x40 : var_a6;
        } else {
block_11:
            var_a6_2 = 0x40 - var_a6;
            var_a4_2 = (var_a4 == 0) ? 0x40 : var_a4;
        }
    }
    temp_t9 = var_t9 + (var_lo >> 6);
    if (temp_t8 & 0x20000) {
        temp_a7 = arg0->unk7DB0;
        if (temp_t3->unk0 == temp_a5->unk0) {
            temp_t8_2 = (s64) var_t1 << 0x30;
            if (temp_t3->unk8 == temp_a5->unk8) {
                temp_t9_2 = (temp_t9 & 0xFFFF) << 0x20;
                if (temp_a7 == 0) {
                    var_t8 = temp_t8_2 | temp_t9_2 | ((var_a4_2 << 8) | var_a6_2);
                    if (temp_v0 == 0) {
                        temp_v1->unk2990 = var_t8;
                        return;
                    }
                    goto block_27;
                }
                temp_f16 = arg0->unk7D10;
                temp_a3 = arg0->unk7DBC;
                arg0->unk7DB0 = (s32) (temp_a7 & 2);
                temp_f19 = (s32) ((bitwise f32) temp_t3->unk0 * temp_f16);
                temp_f1_2 = (s32) (temp_t3->unk4 * temp_f16);
                temp_v1->unk20F0 = 0;
                temp_a3->unk20F0 = 0;
                temp_f2_2 = (s32) ((bitwise f32) temp_t3->unk8 * temp_f16);
                temp_v1->unk20F8 = 0;
                temp_a3->unk20F8 = 0;
                temp_f3_2 = (s32) (temp_t3->unkC * temp_f16);
                temp_v1->unk2100 = 0;
                temp_a3->unk2100 = 0;
                temp_v1->unk2108 = 0;
                temp_a3->unk2108 = 0;
                temp_v1->unk20E0 = temp_f19;
                temp_a3->unk20E0 = temp_f19;
                temp_v1->unk20E4 = temp_f1_2;
                temp_a3->unk20E4 = temp_f1_2;
                temp_v1->unk20E8 = temp_f2_2;
                temp_a3->unk20E8 = temp_f2_2;
                var_t8 = temp_t8_2 | temp_t9_2 | ((var_a4_2 << 8) | var_a6_2);
                temp_a3->unk20EC = temp_f3_2;
                temp_v1->unk20EC = temp_f3_2;
                if (temp_v0 == 0) {
                    temp_v1->unk2990 = var_t8;
                    return;
                }
                goto block_27;
            }
        }
        temp_f5_2 = (bitwise f32) temp_t3->unk0;
        temp_f4_2 = arg0->unk7D10 * var_f10;
        temp_f7 = temp_t3->unk4;
        temp_f9 = (bitwise f32) temp_t3->unk8;
        temp_f12 = temp_t3->unkC;
        temp_f14 = arg0->unk7D10;
        var_t8 = ((s64) var_t1 << 0x30) | ((temp_t9 & 0xFFFF) << 0x20) | ((var_a4_2 << 8) | var_a6_2);
        arg_sp10 = (s32) (((bitwise f32) temp_a5->unk0 - temp_f5_2) * temp_f4_2);
        arg_sp14 = (s32) ((temp_a5->unk4 - temp_f7) * temp_f4_2);
        arg_sp18 = (s32) (((bitwise f32) temp_a5->unk8 - temp_f9) * temp_f4_2);
        arg_sp1C = (s32) ((temp_a5->unkC - temp_f12) * temp_f4_2);
        temp_t3_2 = (s64) arg_sp10;
        temp_a5_2 = (s64) arg_sp18;
        arg0->unk7DB0 = (s32) (temp_a7 | 1);
        arg_sp10 = (s32) (temp_f5_2 * temp_f14);
        arg_sp14 = (s32) (temp_f7 * temp_f14);
        arg_sp18 = (s32) (temp_f9 * temp_f14);
        arg_sp1C = (s32) (temp_f12 * temp_f14);
        temp_v1->unk20E0 = (s64) arg_sp10;
        temp_v1->unk20E8 = (s64) arg_sp18;
        if (var_condition_bit) {
            temp_v1->unk20F0 = temp_t3_2;
            temp_v1->unk2100 = temp_a5_2;
            if (temp_v0 == 0) {
                temp_v1->unk2990 = var_t8;
                return;
            }
            goto block_27;
        }
        temp_v1->unk20F8 = temp_t3_2;
        temp_v1->unk2108 = temp_a5_2;
        if (temp_v0 == 0) {
            temp_v1->unk2990 = var_t8;
            return;
        }
        goto block_27;
    }
    var_t8 = ((s64) var_t1 << 0x30) | ((temp_t9 & 0xFFFF) << 0x20) | ((var_a4_2 << 8) | var_a6_2);
    if (!(arg0->unk807C & 2)) {
        arg0->unk8080 = 0;
        temp_v1->unk20D0 = (s32) ((s32) temp_a5->unkC | ((s32) (bitwise f32) temp_a5->unk0 << 0x18) | ((s32) temp_a5->unk4 << 0x10) | ((s32) (bitwise f32) temp_a5->unk8 << 8));
    }
block_27:
    if (temp_v0 != 0) {
        if (temp_v0 & 4) {
            M2C_ERROR(/* unknown instruction: movf.s $f5, $f6, $fcc0 */);
            temp_f9_2 = arg0->unk7D18;
            temp_f11_2 = (s64) ((arg1->unk88 - arg2->unk88) * var_f10 * temp_f9_2);
            var_f10 = second half of f64;
            temp_f12_2 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f3, $f7, $f5 */);
            if (var_condition_bit) {
                temp_v1->unk21D8 = 0;
                temp_v1->unk21D0 = temp_f11_2;
                var_f12 = (s64) (temp_f12_2 * temp_f9_2);
            } else {
                temp_v1->unk21D0 = 0;
                temp_v1->unk21D8 = temp_f11_2;
                var_f12 = (s64) (temp_f12_2 * temp_f9_2);
            }
            temp_v1->unk21C8 = var_f12;
        }
        if (temp_v0 & 0x2000) {
            temp_f16_2 = arg0->unk7D10;
            temp_f19_2 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f19, $f17, $f14, $f15 */) * (var_f10 * temp_f16_2));
            temp_v1->unk2178 = (s32) (arg2->unkB0 * 255.0f * temp_f16_2);
            if (var_condition_bit) {
                temp_v1->unk2188 = 0;
                temp_v1->unk2180 = temp_f19_2;
            } else {
                temp_v1->unk2180 = 0;
                temp_v1->unk2188 = temp_f19_2;
            }
        }
    }
    temp_v1->unk2990 = var_t8;
}
