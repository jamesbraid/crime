void __glCrmColorOptLine(void *arg0, void *arg1, void *arg2) {
    s32 temp_v0;
    void *temp_a3;

    temp_v0 = arg0->unk7D74;
    temp_a3 = arg0->unk7DB8;
    if (temp_v0 != arg0->unk7D60) {
        temp_a3->unk2060 = temp_v0;
        arg0->unk7DBC->unk2060 = temp_v0;
        arg0->unk7D60 = temp_v0;
    }
    temp_a3->unk2080 = (f64) (second half of f64);
    temp_a3->unk2888 = (f64) arg2->unk80;
}

void __glCrmStippledColorOptLine(void *arg0, void *arg1, void *arg2) {
    f32 temp_f3;
    f32 temp_f9;
    f32 var_f0;
    f32 var_f14;
    f32 var_f17;
    f32 var_f18;
    f32 var_f1;
    f32 var_f2;
    f32 var_f4;
    f32 var_f6;
    s32 temp_cond;
    s32 temp_cond_2;
    s32 temp_t1;
    s32 temp_t8;
    s32 var_a5;
    void *temp_t3;

    var_f2 = arg1->unk80;
    temp_f3 = arg2->unk80;
    var_f4 = arg1->unk84;
    var_f6 = temp_f3 - var_f2;
    temp_t1 = arg0->unk7D74;
    temp_t3 = arg0->unk7DB8;
    temp_f9 = fabsf(var_f6);
    if (!(temp_f9 < fabsf(arg2->unk84 - var_f4))) {
        var_a5 = 1;
        var_f6 = M2C_ERROR(/* unknown instruction: movz.s $f6, $f7, $a4 */);
    } else {
        var_a5 = 0;
    }
    if (temp_t1 != arg0->unk7D60) {
        temp_t3->unk2060 = temp_t1;
        arg0->unk7DBC->unk2060 = temp_t1;
        arg0->unk7D60 = temp_t1;
    }
    temp_t8 = arg0->unk7D6C;
    if (arg0->unk7498 == 0) {
        temp_t3->unk20C4 = temp_t8;
        arg0->unk7DBC->unk20C4 = temp_t8;
        temp_t3->unk20C0 = (s32) arg0->unk7D70;
        arg0->unk7498 = 1U;
    }
    temp_t3->unk2080 = (f64) (second half of f64);
    if (var_a5 != 0) {
        var_f14 = 127.0f;
        if (!(temp_f9 < 127.0f)) {
            var_f17 = var_f2 + 127.0f;
            if (!(var_f6 < 0.0f)) {
                var_f18 = M2C_ERROR(/* unknown instruction: madd.s $f18, $f4, $f14, $f11 */);
                do {
                    temp_t3->unk2080 = var_f2;
                    temp_t3->unk2084 = var_f4;
                    temp_t3->unk2088 = var_f17;
                    temp_t3->unk288C = var_f18;
                    var_f2 = var_f17;
                    var_f4 = var_f18;
                    temp_cond = (temp_f3 - var_f17) < var_f14;
                    var_f14 = M2C_ERROR(/* unknown instruction: movt.s $f14, $f19, $fcc1 */);
                    var_f17 = var_f2 + var_f14;
                    var_f18 = M2C_ERROR(/* unknown instruction: madd.s $f18, $f4, $f14, $f11 */);
                } while (temp_cond);
                return;
            }
            var_f0 = var_f2 - 127.0f;
            var_f1 = M2C_ERROR(/* unknown instruction: nmsub.s $f1, $f4, $f14, $f11 */);
            do {
                temp_t3->unk2080 = var_f2;
                temp_t3->unk2084 = var_f4;
                temp_t3->unk2088 = var_f0;
                temp_t3->unk288C = var_f1;
                var_f2 = var_f0;
                var_f4 = var_f1;
                temp_cond_2 = (var_f0 - temp_f3) < var_f14;
                var_f14 = M2C_ERROR(/* unknown instruction: movt.s $f14, $f3, $fcc1 */);
                var_f0 = var_f2 - var_f14;
                var_f1 = M2C_ERROR(/* unknown instruction: nmsub.s $f1, $f4, $f14, $f11 */);
            } while (temp_cond_2);
            return;
        }
    }
    temp_t3->unk2888 = (bitwise f64) arg2->unk80;
}

/*
Decompilation failure in function __glCrmSmoothRGBLine:

Cannot find branch target __glCrmDepthLine
*/

/*
Decompilation failure in function __glCrmSmoothCILine:

Cannot find branch target __glCrmDepthLine
*/

/*
Decompilation failure in function __glCrmFogRGBLine:

Cannot find branch target __glCrmDepthLine
*/

/*
Decompilation failure in function __glCrmDepthLine:

Cannot find branch target __glCrmDepthLine
*/

void LongStippledLine(void *arg0, void *arg1, void *arg2) {
    f32 temp_f0;
    f32 temp_f11;
    f32 temp_f11_2;
    f32 temp_f11_3;
    f32 temp_f13;
    f32 temp_f14;
    f32 temp_f14_2;
    f32 temp_f16;
    f32 temp_f16_2;
    f32 temp_f18;
    f32 temp_f22;
    f32 temp_f26;
    f32 temp_f30;
    f32 temp_f5;
    f32 temp_f8;
    f32 var_f10;
    f32 var_f4;
    f32 var_f6;
    f32 var_f7;
    f32 var_f9;
    s32 temp_a0;
    s32 temp_a4_2;
    s32 temp_f20;
    s32 temp_t2;
    s32 temp_t9;
    s32 temp_v0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_condition_bit;
    s32 var_t1;
    s32 var_t2;
    s32 var_t3;
    s32 var_v0;
    s64 var_a5;
    void *temp_a4;
    void *temp_t3;

    var_f4 = arg1->unk80;
    temp_f5 = arg2->unk80;
    var_f7 = arg1->unk84;
    var_condition_bit = M2C_ERROR(/* Read from unset register $f2 */) < 0.0f;
    temp_t2 = arg0->unk76E4;
    temp_t3 = arg1->unk8;
    temp_a4 = arg2->unk8;
    temp_t9 = temp_t2 & 1;
    var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f8, $fcc7 */);
    var_f9 = var_f4 + var_f6;
    var_f10 = M2C_ERROR(/* unknown instruction: madd.s $f10, $f7, $f6, $f1 */);
    if (temp_t2 & 4) {
        temp_f16 = arg0->unk7D18;
        M2C_ERROR(/* Read from unset register $t0 */)->unk21D0 = (s64) ((arg2->unk88 - arg1->unk88) * M2C_ERROR(/* Read from unset register $f0 */) * temp_f16);
        M2C_ERROR(/* Read from unset register $t0 */)->unk21D8 = 0;
        var_a5 = (s64) (M2C_ERROR(/* unknown instruction: madd.s $f17, $f13, $f14, $f15 */) * temp_f16);
    } else {
        var_a5 = 0;
    }
    if (temp_t2 & 0x2000) {
        temp_f26 = arg0->unk7D10;
        temp_f22 = arg1->unkB0 * 255.0f;
        var_a1 = (s32) (temp_f22 * temp_f26);
        temp_f30 = ((arg2->unkB0 * 255.0f) - temp_f22) * M2C_ERROR(/* Read from unset register $f0 */) * temp_f26;
        M2C_ERROR(/* Read from unset register $t0 */)->unk2180 = (s32) temp_f30;
        M2C_ERROR(/* Read from unset register $t0 */)->unk2188 = 0;
        var_t1 = (s32) (temp_f30 * var_f6);
    } else {
        var_a1 = 0;
        var_t1 = 0;
    }
    temp_f8 = temp_t3->unk0;
    if (temp_t2 & 0x20000) {
        temp_f11 = temp_a4->unk0;
        if (temp_t9 != 0) {
            temp_f13 = arg0->unk7D10;
            temp_f0 = M2C_ERROR(/* Read from unset register $f0 */) * temp_f13;
            temp_f11_2 = (temp_f11 - temp_f8) * temp_f0;
            temp_f14 = (temp_a4->unk4 - temp_t3->unk4) * temp_f0;
            temp_f16_2 = (temp_a4->unk8 - temp_t3->unk8) * temp_f0;
            temp_f18 = (temp_a4->unkC - temp_t3->unkC) * temp_f0;
            M2C_ERROR(/* Read from unset register $t0 */)->unk20F0 = (s32) temp_f11_2;
            M2C_ERROR(/* Read from unset register $t0 */)->unk20F4 = (s32) temp_f14;
            M2C_ERROR(/* Read from unset register $t0 */)->unk2100 = (s32) temp_f16_2;
            M2C_ERROR(/* Read from unset register $t0 */)->unk2104 = (s32) temp_f18;
            M2C_ERROR(/* Read from unset register $t0 */)->unk20F8 = 0;
            M2C_ERROR(/* Read from unset register $t0 */)->unk2108 = 0;
            var_a2 = (s32) (temp_t3->unk0 * temp_f13);
            var_a3 = (s32) (temp_t3->unk4 * temp_f13);
            var_t2 = (s32) (temp_t3->unk8 * temp_f13);
            var_t3 = (s32) (temp_t3->unkC * temp_f13);
            temp_v0 = (s32) (temp_f11_2 * var_f6);
            temp_v1 = (s32) (temp_f14 * var_f6);
            temp_a0 = (s32) (temp_f16_2 * var_f6);
            temp_a4_2 = (s32) (temp_f18 * var_f6);
loop_9:
            M2C_ERROR(/* Read from unset register $t0 */)->unk20E0 = var_a2;
            M2C_ERROR(/* Read from unset register $t0 */)->unk20E4 = var_a3;
            M2C_ERROR(/* Read from unset register $t0 */)->unk20E8 = var_t2;
            M2C_ERROR(/* Read from unset register $t0 */)->unk20EC = var_t3;
            M2C_ERROR(/* Read from unset register $t0 */)->unk21C8 = var_a5;
            M2C_ERROR(/* Read from unset register $t0 */)->unk2178 = var_a1;
            M2C_ERROR(/* Read from unset register $t0 */)->unk2080 = var_f4;
            M2C_ERROR(/* Read from unset register $t0 */)->unk2084 = var_f7;
            M2C_ERROR(/* Read from unset register $t0 */)->unk2088 = var_f9;
            M2C_ERROR(/* Read from unset register $t0 */)->unk288C = var_f10;
            if (!var_condition_bit) {
                var_condition_bit = (temp_f5 - var_f9) < var_f6;
                var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f12, $fcc1 */);
            } else {
                var_condition_bit = var_f6 < (temp_f5 - var_f9);
                var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f13, $fcc1 */);
            }
            var_f4 = var_f9;
            if (var_condition_bit) {
                var_f7 = var_f10;
                var_a2 += temp_v0;
                var_a3 += temp_v1;
                var_t2 += temp_a0;
                var_t3 += temp_a4_2;
                var_a5 = M2C_ERROR(/* unknown instruction: dadd $a5, $a5, $a7 */);
                var_a1 += var_t1;
                var_f9 = var_f4 + var_f6;
                var_f10 = M2C_ERROR(/* unknown instruction: madd.s $f10, $f7, $f6, $f1 */);
                goto loop_9;
            }
        } else {
            temp_f14_2 = arg0->unk7D10;
            temp_f11_3 = (temp_f11 - temp_f8) * (M2C_ERROR(/* Read from unset register $f0 */) * temp_f14_2);
            M2C_ERROR(/* Read from unset register $t0 */)->unk2104 = (s32) temp_f11_3;
            M2C_ERROR(/* Read from unset register $t0 */)->unk210C = 0;
            var_v0 = (s32) (temp_t3->unk0 * temp_f14_2);
            temp_v1_2 = (s32) (temp_f11_3 * var_f6);
loop_15:
            M2C_ERROR(/* Read from unset register $t0 */)->unk20EC = var_v0;
            M2C_ERROR(/* Read from unset register $t0 */)->unk2080 = var_f4;
            M2C_ERROR(/* Read from unset register $t0 */)->unk2084 = var_f7;
            M2C_ERROR(/* Read from unset register $t0 */)->unk2088 = var_f9;
            M2C_ERROR(/* Read from unset register $t0 */)->unk288C = var_f10;
            if (!var_condition_bit) {
                var_condition_bit = (temp_f5 - var_f9) < var_f6;
                var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f18, $fcc1 */);
            } else {
                var_condition_bit = var_f6 < (temp_f5 - var_f9);
                var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f19, $fcc1 */);
            }
            var_f4 = var_f9;
            if (var_condition_bit) {
                var_f7 = var_f10;
                var_v0 += temp_v1_2;
                M2C_ERROR(/* unknown instruction: dadd $a5, $a5, $a7 */);
                var_f9 = var_f4 + var_f6;
                var_f10 = M2C_ERROR(/* unknown instruction: madd.s $f10, $f7, $f6, $f1 */);
                goto loop_15;
            }
        }
    } else {
        if (!(arg0->unk807C & 2)) {
            temp_f20 = (s32) temp_a4->unk0;
            arg0->unk8080 = 0;
            if (temp_t9 != 0) {
                M2C_ERROR(/* Read from unset register $t0 */)->unk20D0 = (s32) ((s32) temp_a4->unkC | (temp_f20 << 0x18) | ((s32) temp_a4->unk4 << 0x10) | ((s32) temp_a4->unk8 << 8));
            } else {
                M2C_ERROR(/* Read from unset register $t0 */)->unk20D0 = temp_f20;
            }
        }
loop_24:
        M2C_ERROR(/* Read from unset register $t0 */)->unk21C8 = var_a5;
        M2C_ERROR(/* Read from unset register $t0 */)->unk2178 = var_a1;
        M2C_ERROR(/* Read from unset register $t0 */)->unk2080 = var_f4;
        M2C_ERROR(/* Read from unset register $t0 */)->unk2084 = var_f7;
        M2C_ERROR(/* Read from unset register $t0 */)->unk2088 = var_f9;
        M2C_ERROR(/* Read from unset register $t0 */)->unk288C = var_f10;
        if (!var_condition_bit) {
            var_condition_bit = (temp_f5 - var_f9) < var_f6;
            var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f28, $fcc1 */);
        } else {
            var_condition_bit = var_f6 < (temp_f5 - var_f9);
            var_f6 = M2C_ERROR(/* unknown instruction: movt.s $f6, $f30, $fcc1 */);
        }
        var_f4 = var_f9;
        if (var_condition_bit) {
            var_f7 = var_f10;
            var_a5 = M2C_ERROR(/* unknown instruction: dadd $a5, $a5, $a7 */);
            var_a1 += var_t1;
            var_f9 = var_f4 + var_f6;
            var_f10 = M2C_ERROR(/* unknown instruction: madd.s $f10, $f7, $f6, $f1 */);
            goto loop_24;
        }
    }
}
