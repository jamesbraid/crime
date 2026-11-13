f32 __glCrmFillTriangle(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    f32 sp18;
    f32 sp14;
    f32 sp10;
    f32 spC;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f17;
    f32 temp_f18;
    f32 temp_f19;
    f32 temp_f19_2;
    f32 temp_f2;
    f32 temp_f3;
    f32 temp_f3_2;
    f32 temp_f4;
    f32 temp_f5;
    f32 temp_f5_2;
    f32 temp_f5_3;
    f32 temp_f7;
    f32 temp_f7_2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f0_3;
    f32 var_f16;
    f32 var_f16_2;
    f32 var_f17;
    f32 var_f17_2;
    f32 var_f19;
    f32 var_f19_2;
    f32 var_f2;
    f32 var_f3;
    f32 var_f5;
    f32 var_f6;
    f32 var_f7;
    f32 var_f8;
    f32 var_f8_2;
    s32 temp_f6;
    s32 temp_v0;
    s32 var_a4;
    s32 var_condition_bit;
    s32 var_condition_bit_2;
    s32 var_t1;
    s32 var_t3;
    s32 var_v0;
    void *temp_a6;
    void *temp_a7;
    void *temp_v0_2;
    void *var_v1;

    var_f0 = arg0->unk75E0;
    M2C_ERROR(/* unknown instruction: recip.s $f2, $f0 */);
    if (arg0->unk75E4 < 0) {
        var_t1 = (arg4 != 0) ? 0x02020000 : 0x02010000;
        var_v1 = (arg4 == 0) ? arg3 : arg1;
    } else {
        var_t1 = (arg4 != 0) ? 0x02000000 : 0x02030000;
        var_v1 = (arg4 != 0) ? arg3 : arg1;
    }
    temp_a6 = arg0->unk7DB8;
    temp_a6->unk2060 = var_t1;
    arg0->unk7D60 = (s32) saved_reg_ra;
    temp_a6->unk2080 = (s64) arg1->unk80;
    temp_v0 = arg0->unk76E4;
    temp_a6->unk2088 = (s64) arg2->unk80;
    temp_a6->unk2090 = (s64) arg3->unk80;
    if (temp_v0 & 0x20000) {
        if (temp_v0 & 1) {
            if (arg0->unk812E == 0) {
                temp_f18 = arg0->unk7D10;
                M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f16, $f10 */);
                M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f19, $f10 */);
                temp_a6->unk20F0 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f16, $f6, $f2, $f13 */) * temp_f18);
                temp_a6->unk20F8 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f17, $f7, $f0, $f14 */) * temp_f18);
                temp_a6->unk20F4 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f19, $f8, $f5, $f13 */) * temp_f18);
                temp_a6->unk20FC = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f0, $f9, $f4, $f14 */) * temp_f18);
                temp_a6->unk20E0 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f17, $f11 */) * temp_f18);
                temp_f5 = arg0->unk7D10;
                var_f0 = M2C_ERROR(/* unknown instruction: msub.s $f0, $f0, $f9, $f13 */);
                temp_a6->unk20E4 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f0, $f11 */) * temp_f18);
                M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f0, $f10 */);
                M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f9, $f10 */);
                temp_f5_2 = arg0->unk7D10;
                temp_a6->unk2100 = (s32) (var_f0 * temp_f5);
                temp_a6->unk2108 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f1, $f1, $f7, $f14 */) * temp_f5);
                temp_a6->unk2104 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f9, $f3, $f19, $f13 */) * temp_f5);
                temp_a6->unk210C = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f17, $f4, $f16, $f14 */) * temp_f5);
                temp_a6->unk20E8 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f8, $f8, $f1, $f11 */) * temp_f5_2);
                temp_a6->unk20EC = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f17, $f11 */) * temp_f5_2);
            } else {
                temp_f19 = arg0->unk7D10;
                var_f0 = M2C_ERROR(/* unknown instruction: msub.s $f0, $f16, $f6, $f14 */);
                M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f18, $f10 */);
                temp_a6->unk2104 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f18, $f9, $f8, $f13 */) * temp_f19);
                temp_a6->unk210C = (s32) (var_f0 * temp_f19);
                temp_a6->unk20EC = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f0, $f11 */) * arg0->unk7D10);
            }
        } else {
            temp_f17 = arg0->unk7D10;
            M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f16, $f10 */);
            var_f0 = (bitwise f32) (s32) (M2C_ERROR(/* unknown instruction: msub.s $f18, $f8, $f4, $f14 */) * temp_f17);
            temp_a6->unk2104 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f16, $f7, $f6, $f13 */) * temp_f17);
            temp_a6->unk210C = (bitwise s32) var_f0;
            temp_a6->unk20EC = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f18, $f11 */) * arg0->unk7D10);
        }
    } else {
        temp_a7 = arg0->unk6DA8->unk8;
        if (!(arg0->unk807C & 2)) {
            arg0->unk8080 = 0;
            temp_a6->unk20D0 = (s32) ((s32) temp_a7->unkC | ((s32) temp_a7->unk0 << 0x18) | ((s32) temp_a7->unk4 << 0x10) | ((s32) temp_a7->unk8 << 8));
        }
    }
    if (temp_v0 & 4) {
        var_f17 = M2C_ERROR(/* unknown instruction: msub.s $f17, $f17, $f16, $f13 */);
        var_f19 = M2C_ERROR(/* unknown instruction: msub.s $f19, $f19, $f9, $f14 */);
        if (temp_v0 & 0x40000) {
            M2C_ERROR(/* unknown instruction: movt.s $f17, $f19, $fcc0 */);
            M2C_ERROR(/* unknown instruction: madd.s $f4, $f2, $f3, $f17 */);
            M2C_ERROR(/* unknown instruction: movt.s $f8, $f5, $fcc0 */);
            M2C_ERROR(/* unknown instruction: movt.s $f8, $f1, $fcc1 */);
            M2C_ERROR(/* unknown instruction: movt.s $f6, $f5, $fcc2 */);
            M2C_ERROR(/* unknown instruction: movt.s $f6, $f1, $fcc3 */);
            M2C_ERROR(/* unknown instruction: movt.s $f7, $f5, $fcc4 */);
            M2C_ERROR(/* unknown instruction: movt.s $f7, $f1, $fcc5 */);
            M2C_ERROR(/* unknown instruction: movt.s $f0, $f5, $fcc6 */);
            M2C_ERROR(/* unknown instruction: movt.s $f0, $f1, $fcc7 */);
            var_f17 = M2C_ERROR(/* unknown instruction: msub.s $f17, $f17, $f9, $f13 */);
            var_f19 = M2C_ERROR(/* unknown instruction: msub.s $f19, $f19, $f16, $f14 */);
        }
        M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f17, $f10 */);
        temp_a6->unk21D0 = (s64) (var_f17 * arg0->unk7D18);
        temp_a6->unk21D8 = (s64) (var_f19 * arg0->unk7D18);
        var_f0 = (bitwise f32) (s64) (M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f19, $f11 */) * arg0->unk7D18);
        temp_a6->unk21C8 = (bitwise f64) var_f0;
    }
    if (temp_v0 & 0x2000) {
        temp_f19_2 = arg0->unk7D10;
        M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f10, $f16 */);
        temp_a6->unk2180 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f16, $f16, $f8, $f13 */) * temp_f19_2);
        temp_a6->unk2188 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f18, $f18, $f9, $f14 */) * temp_f19_2);
        temp_a6->unk2178 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f11, $f18 */) * arg0->unk7D10);
    }
    temp_v0_2 = arg0->unk6E30;
    if (temp_v0 & 8) {
        var_f0_3 = arg1->unk3C;
        var_f2 = arg2->unk3C;
        var_f3 = arg3->unk3C;
        if ((var_f0_3 != 1.0f) || (var_f2 != 1.0f) || (var_f3 != 1.0f)) {
            temp_f7 = fabsf(var_f3);
            var_condition_bit = fabsf(var_f2) < 0.0000076293945f;
            if (fabsf(var_f0_3) < 0.0000076293945f) {
                var_condition_bit = var_f0_3 < 0.0f;
                var_f0_3 = M2C_ERROR(/* unknown instruction: movt.s $f0, $f9, $fcc0 */);
            }
            var_condition_bit_2 = temp_f7 < 0.0000076293945f;
            if (var_condition_bit) {
                var_condition_bit_2 = var_f2 < 0.0f;
                var_f2 = M2C_ERROR(/* unknown instruction: movt.s $f2, $f9, $fcc0 */);
            }
            if (var_condition_bit_2) {
                var_f3 = M2C_ERROR(/* unknown instruction: movt.s $f3, $f9, $fcc0 */);
            }
            temp_f0 = M2C_ERROR(/* unknown instruction: recip.s $f0, $f0 */);
            M2C_ERROR(/* unknown instruction: recip.s $f2, $f2 */);
            var_f5 = arg1->unk8C * var_f0_3;
            var_f6 = arg2->unk8C * var_f2;
            var_f7 = arg3->unk8C * var_f3;
            temp_f3 = M2C_ERROR(/* unknown instruction: recip.s $f3, $f3 */);
            var_t3 = temp_v0_2->unkE8 < 2;
            var_f8 = arg1->unk30 * temp_f0;
            var_f16 = arg3->unk30 * temp_f3;
            if (var_t3 == 0) {
                var_f17_2 = arg1->unk34 * temp_f0;
                var_f19_2 = arg3->unk34 * temp_f3;
            } else {
                var_f17_2 = 1.0f;
                var_f19_2 = 1.0f;
            }
        } else {
            var_f5 = arg1->unk8C;
            var_f6 = arg2->unk8C;
            var_f7 = arg3->unk8C;
            var_t3 = temp_v0_2->unkE8 < 2;
            var_f8 = arg1->unk30;
            var_f16 = arg3->unk30;
            var_f17_2 = arg1->unk34;
            if (var_t3 == 0) {
                var_f19_2 = arg3->unk34;
            } else {
                var_f17_2 = 1.0f;
                var_f19_2 = 1.0f;
            }
        }
        if ((var_f5 <= 0.0f) || (var_f6 <= 0.0f) || (var_f7 <= 0.0f)) {
            M2C_ERROR(/* unknown instruction: movt.s $f4, $f6, $fcc0 */);
            temp_f4 = (f32) (s32) M2C_ERROR(/* unknown instruction: movt.s $f4, $f5, $fcc0 */) - 0.0000076293945f;
            var_f7 += temp_f4;
            var_f5 += temp_f4;
        }
        M2C_ERROR(/* unknown instruction: movt.s $f0, $f6, $fcc0 */);
        M2C_ERROR(/* unknown instruction: movt.s $f0, $f5, $fcc1 */);
        M2C_ERROR(/* unknown instruction: movt.s $f0, $f1, $fcc0 */);
        temp_f0_2 = M2C_ERROR(/* unknown instruction: recip.s $f0, $f0 */);
        if (temp_v0_2->unk4 == 0x2901) {
            M2C_ERROR(/* unknown instruction: movt.s $f2, $f9, $fcc0 */);
            temp_f2 = (f32) (s32) M2C_ERROR(/* unknown instruction: movt.s $f2, $f8, $fcc1 */);
            var_f16_2 = (var_f16 + 1.0f) - temp_f2;
            var_f8_2 = (var_f8 + 1.0f) - temp_f2;
            M2C_ERROR(/* unknown instruction: movt.s $f1, $f9, $fcc0 */);
            M2C_ERROR(/* unknown instruction: movt.s $f1, $f8, $fcc1 */);
            var_a4 = M2C_ERROR(/* unknown instruction: movf $a4, $zero, $fcc0 */);
        } else {
            var_f16_2 = var_f16 + 1.0f;
            var_f8_2 = var_f8 + 1.0f;
            M2C_ERROR(/* unknown instruction: movt.s $f1, $f9, $fcc0 */);
            M2C_ERROR(/* unknown instruction: movt.s $f2, $f9, $fcc1 */);
            M2C_ERROR(/* unknown instruction: movt.s $f1, $f8, $fcc2 */);
            M2C_ERROR(/* unknown instruction: movt.s $f2, $f8, $fcc3 */);
            M2C_ERROR(/* unknown instruction: movt $a4, $t8, $fcc1 */);
            var_a4 = M2C_ERROR(/* unknown instruction: movt $a4, $t8, $fcc2 */);
        }
        var_v0 = 0;
        if (var_t3 == 0) {
            if (temp_v0_2->unk8 == 0x2901) {
                M2C_ERROR(/* unknown instruction: movt.s $f3, $f18, $fcc0 */);
                temp_f3_2 = (f32) (s32) M2C_ERROR(/* unknown instruction: movt.s $f3, $f17, $fcc0 */);
                var_f19_2 = (var_f19_2 + 1.0f) - temp_f3_2;
                var_f17_2 = (var_f17_2 + 1.0f) - temp_f3_2;
                M2C_ERROR(/* unknown instruction: movt.s $f2, $f18, $fcc0 */);
                M2C_ERROR(/* unknown instruction: movt.s $f2, $f17, $fcc1 */);
                var_v0 = M2C_ERROR(/* unknown instruction: movf $v0, $zero, $fcc0 */);
            } else {
                var_f19_2 += 1.0f;
                var_f17_2 += 1.0f;
                M2C_ERROR(/* unknown instruction: movt.s $f2, $f18, $fcc0 */);
                M2C_ERROR(/* unknown instruction: movt.s $f3, $f18, $fcc1 */);
                M2C_ERROR(/* unknown instruction: movt.s $f2, $f17, $fcc2 */);
                M2C_ERROR(/* unknown instruction: movt.s $f3, $f17, $fcc3 */);
                M2C_ERROR(/* unknown instruction: movt $v0, $t3, $fcc1 */);
                var_v0 = M2C_ERROR(/* unknown instruction: movt $v0, $t3, $fcc2 */);
            }
        }
        temp_a6->unk2134 = (s32) (var_a4 | (var_v0 * 2));
        temp_f7_2 = var_f7 * temp_f0_2;
        temp_f5_3 = var_f5 * temp_f0_2;
        M2C_ERROR(/* unknown instruction: msub.s $f2, $f4, $f9, $f6 */);
        sp14 = var_f16_2 * temp_f7_2;
        M2C_ERROR(/* unknown instruction: msub.s $f3, $f4, $f8, $f5 */);
        sp18 = var_f8_2 * temp_f5_3;
        M2C_ERROR(/* unknown instruction: msub.s $f4, $f0, $f18, $f6 */);
        spC = var_f19_2 * temp_f7_2;
        M2C_ERROR(/* unknown instruction: msub.s $f8, $f0, $f17, $f5 */);
        sp10 = var_f17_2 * temp_f5_3;
        M2C_ERROR(/* unknown instruction: msub.s $f16, $f16, $f2, $f14 */);
        M2C_ERROR(/* unknown instruction: msub.s $f17, $f17, $f8, $f13 */);
        temp_a6->unk2138 = (s64) (M2C_ERROR(/* unknown instruction: msub.s $f9, $f9, $f3, $f13 */) * (((var_a4 * 4) != 0) ? 5.497558e11f : 8.796093e12f));
        temp_a6->unk2140 = (f64) (second half of f64);
        M2C_ERROR(/* unknown instruction: msub.s $f19, $f12, $f8, $f13 */);
        M2C_ERROR(/* unknown instruction: msub.s $f1, $f15, $f6, $f14 */);
        temp_a6->unk2148 = (s64) (second half of f64);
        temp_a6->unk2150 = (s64) (M2C_ERROR(/* unknown instruction: msub.s $f18, $f18, $f4, $f14 */) * (((var_v0 * 4) != 0) ? 5.497558e11f : 8.796093e12f));
        M2C_ERROR(/* unknown instruction: movt.s $f19, $f2, $fcc0 */);
        M2C_ERROR(/* unknown instruction: movt.s $f1, $f2, $fcc2 */);
        temp_f6 = (s32) (M2C_ERROR(/* unknown instruction: movt.s $f1, $f0, $fcc3 */) * 5.368709e8f);
        temp_a6->unk2158 = (s32) (M2C_ERROR(/* unknown instruction: movt.s $f19, $f0, $fcc1 */) * 5.368709e8f);
        if (var_v1 == arg1) {
            M2C_ERROR(/* unknown instruction: madd.s $f14, $f8, $f10, $f9 */);
            M2C_ERROR(/* unknown instruction: madd.s $f0, $f13, $f10, $f17 */);
            M2C_ERROR(/* unknown instruction: madd.s $f2, $f5, $f10, $f19 */);
            M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f11, $f16 */);
            temp_a6->unk215C = temp_f6;
            var_f0_2 = M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f11, $f18 */);
        } else {
            M2C_ERROR(/* unknown instruction: madd.s $f14, $f12, $f10, $f9 */);
            M2C_ERROR(/* unknown instruction: madd.s $f0, $f5, $f10, $f17 */);
            M2C_ERROR(/* unknown instruction: madd.s $f2, $f7, $f10, $f19 */);
            M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f11, $f16 */);
            temp_a6->unk215C = temp_f6;
            var_f0_2 = M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f11, $f18 */);
        }
        temp_a6->unk2120 = (s64) ((second half of f64) + 0x800);
        temp_a6->unk2128 = (s64) ((s64) (second half of f64) + 0x800);
        temp_a6->unk2930 = (s32) ((s32) (M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f11, $f1 */) * 5.368709e8f) + 0x800);
        return var_f0_2;
    }
    temp_a6->unk29F0 = 0;
    return var_f0;
}
