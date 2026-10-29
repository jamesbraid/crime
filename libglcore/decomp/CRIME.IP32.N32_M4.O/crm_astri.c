void __glCrmFlatTriangle(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    f32 temp_f3;
    f64 temp_f2;
    s32 var_t0;
    void *temp_a5;
    void *temp_v1;

    temp_v1 = arg0->unk7DB8;
    if (arg0->unk75E4 < 0) {
        var_t0 = (arg4 != 0) ? 0x02020000 : 0x02010000;
    } else {
        var_t0 = (arg4 != 0) ? 0x02000000 : 0x02030000;
    }
    arg0->unk7D60 = (s32) saved_reg_ra;
    temp_v1->unk2060 = var_t0;
    temp_f2 = arg3->unk80;
    temp_v1->unk2080 = (f64) (second half of f64);
    temp_v1->unk2088 = (f64) arg2->unk80;
    if (!(arg0->unk807C & 2)) {
        temp_a5 = arg0->unk6DA8->unk8;
        temp_f3 = temp_a5->unk0;
        if (arg0->unk76E4 & 1) {
            arg0->unk8080 = 0;
            temp_v1->unk2090 = temp_f2;
            temp_v1->unk28D0 = (s32) ((s32) temp_a5->unkC | ((s32) temp_f3 << 0x18) | ((s32) temp_a5->unk4 << 0x10) | ((s32) temp_a5->unk8 << 8));
            return;
        }
        arg0->unk8080 = 0;
        temp_v1->unk2090 = temp_f2;
        temp_v1->unk28D0 = (s32) temp_f3;
        return;
    }
    temp_v1->unk2090 = temp_f2;
    temp_v1->unk29F0 = 0;
}

f32 __glCrmFlatZTriangle(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    f32 temp_f0;
    f32 temp_f10;
    f32 temp_f15;
    s32 var_a5;
    s64 temp_f13;
    void *temp_t0;
    void *temp_t1;
    void *var_t2;

    M2C_ERROR(/* unknown instruction: recip.s $f9, $f7 */);
    temp_t1 = arg0->unk7DB8;
    if (arg0->unk75E4 < 0) {
        var_a5 = (arg4 != 0) ? 0x02020000 : 0x02010000;
        var_t2 = (arg4 == 0) ? arg3 : arg1;
    } else {
        var_a5 = (arg4 != 0) ? 0x02000000 : 0x02030000;
        var_t2 = (arg4 != 0) ? arg3 : arg1;
    }
    temp_t1->unk2060 = var_a5;
    temp_t1->unk2080 = (s64) arg1->unk80;
    temp_t1->unk2088 = (s64) arg2->unk80;
    temp_t1->unk2090 = (s64) arg3->unk80;
    temp_f0 = (bitwise f32) (var_t2->unk80 & ~0x3F) - (bitwise f32) var_t2->unk80;
    arg0->unk7D60 = (s32) saved_reg_ra;
    temp_f10 = arg0->unk7D18;
    M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f9, $f0 */);
    temp_t0 = arg0->unk6DA8->unk8;
    temp_t1->unk21D0 = (s64) (M2C_ERROR(/* unknown instruction: msub.s $f9, $f4, $f19, $f1 */) * temp_f10);
    temp_t1->unk21D8 = (s64) (M2C_ERROR(/* unknown instruction: msub.s $f11, $f6, $f18, $f2 */) * temp_f10);
    temp_f15 = temp_t0->unk0;
    temp_f13 = (s64) (M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f11, $f8 */) * temp_f10);
    if (!(arg0->unk807C & 2)) {
        temp_t1->unk21C8 = temp_f13;
        if (arg0->unk76E4 & 1) {
            arg0->unk8080 = 0;
            temp_t1->unk28D0 = (s32) ((s32) temp_t0->unkC | ((s32) temp_f15 << 0x18) | ((s32) temp_t0->unk4 << 0x10) | ((s32) temp_t0->unk8 << 8));
            return temp_f0;
        }
        arg0->unk8080 = 0;
        temp_t1->unk28D0 = (s32) temp_f15;
        return temp_f0;
    }
    temp_t1->unk29C8 = temp_f13;
    return temp_f0;
}

void __glCrmSmoothCITriangle(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    f32 temp_f6;
    s32 temp_t0;
    s32 var_a5;
    void *temp_a4;

    M2C_ERROR(/* unknown instruction: recip.s $f2, $f19 */);
    temp_t0 = arg0->unk75E4;
    temp_a4 = arg0->unk7DB8;
    if (arg4 == 0) {
        var_a5 = 0x10000;
        if (temp_t0 < 0) {

        } else {
            var_a5 = 0x30000;
        }
    } else {
        var_a5 = 0x20000;
        if (temp_t0 < 0) {

        } else {
            var_a5 = 0;
        }
    }
    temp_a4->unk2060 = (s32) (arg0->unk7D68 | var_a5);
    arg0->unk7D60 = (s32) saved_reg_ra;
    temp_a4->unk2080 = (f64) arg1->unk80;
    temp_a4->unk2088 = (f64) arg2->unk80;
    temp_a4->unk2090 = (f64) arg3->unk80;
    temp_f6 = arg0->unk7D10;
    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f5, $f3 */);
    temp_a4->unk2104 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f5, $f19, $f14, $f15 */) * temp_f6);
    temp_a4->unk210C = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f7, $f1, $f13, $f17 */) * temp_f6);
    temp_a4->unk28EC = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f7, $f4 */) * temp_f6);
}

void __glCrmSmoothRGBTriangle(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    f32 temp_f13;
    s32 var_a7;
    void *temp_t9;

    M2C_ERROR(/* unknown instruction: recip.s $f14, $f11 */);
    if (arg0->unk75E4 < 0) {
        var_a7 = (arg4 != 0) ? 0x02020000 : 0x02010000;
    } else {
        var_a7 = (arg4 != 0) ? 0x02000000 : 0x02030000;
    }
    temp_t9 = arg0->unk7DB8;
    temp_t9->unk2060 = var_a7;
    temp_t9->unk2080 = (s64) arg1->unk80;
    temp_f13 = arg0->unk7D10;
    temp_t9->unk2088 = (s64) arg2->unk80;
    arg0->unk7D60 = (s32) saved_reg_ra;
    temp_t9->unk2090 = (s64) arg3->unk80;
    M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f9, $f4 */);
    M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f11, $f4 */);
    temp_t9->unk20F0 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f9, $f9, $f19, $f7 */) * temp_f13);
    temp_t9->unk20F8 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f10, $f10, $f18, $f8 */) * temp_f13);
    temp_t9->unk20F4 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f11, $f11, $f2, $f7 */) * temp_f13);
    temp_t9->unk20FC = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f12, $f12, $f0, $f8 */) * temp_f13);
    temp_t9->unk20E0 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f10, $f3 */) * temp_f13);
    temp_t9->unk20E4 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f1, $f1, $f12, $f3 */) * temp_f13);
    M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f14, $f4 */);
    temp_t9->unk2100 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f14, $f14, $f12, $f7 */) * temp_f13);
    temp_t9->unk2108 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f15, $f15, $f11, $f8 */) * temp_f13);
    temp_t9->unk28E8 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f15, $f3 */) * arg0->unk7D10);
}

void __glCrmSmoothRGBATriangle(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    f32 temp_f2;
    f32 temp_f5;
    s32 var_v0;
    void *temp_t0;

    M2C_ERROR(/* unknown instruction: recip.s $f3, $f0 */);
    if (arg0->unk75E4 < 0) {
        var_v0 = (arg4 != 0) ? 0x02020000 : 0x02010000;
    } else {
        var_v0 = (arg4 != 0) ? 0x02000000 : 0x02030000;
    }
    temp_t0 = arg0->unk7DB8;
    temp_t0->unk2060 = var_v0;
    temp_t0->unk2080 = (s64) arg1->unk80;
    temp_f2 = arg0->unk7D10;
    temp_t0->unk2088 = (s64) arg2->unk80;
    arg0->unk7D60 = (s32) saved_reg_ra;
    temp_t0->unk2090 = (s64) arg3->unk80;
    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f18, $f13 */);
    M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f0, $f13 */);
    temp_t0->unk20F0 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f18, $f18, $f8, $f16 */) * temp_f2);
    temp_t0->unk20F8 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f19, $f19, $f7, $f17 */) * temp_f2);
    temp_t0->unk20F4 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f0, $f0, $f11, $f16 */) * temp_f2);
    temp_t0->unk20FC = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f1, $f1, $f9, $f17 */) * temp_f2);
    temp_t0->unk20E0 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f19, $f12 */) * temp_f2);
    temp_f5 = arg0->unk7D10;
    temp_t0->unk20E4 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f10, $f10, $f1, $f12 */) * temp_f2);
    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f2, $f13 */);
    M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f6, $f13 */);
    temp_t0->unk2100 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f2, $f2, $f19, $f16 */) * temp_f5);
    temp_t0->unk2108 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f4, $f4, $f11, $f17 */) * temp_f5);
    temp_t0->unk2104 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f6, $f6, $f3, $f16 */) * temp_f5);
    temp_t0->unk210C = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f8, $f8, $f0, $f17 */) * temp_f5);
    temp_t0->unk20E8 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f4, $f12 */) * arg0->unk7D10);
    temp_t0->unk28EC = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f8, $f12 */) * arg0->unk7D10);
}

void __glCrmSmoothCIZTriangle(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    f32 temp_f11;
    f32 temp_f18;
    s32 temp_v0;
    s32 var_t3;
    void *temp_t2;

    M2C_ERROR(/* unknown instruction: recip.s $f0, $f17 */);
    temp_v0 = arg0->unk75E4;
    temp_t2 = arg0->unk7DB8;
    if (arg4 == 0) {
        var_t3 = 0x10000;
        if (temp_v0 < 0) {

        } else {
            var_t3 = 0x30000;
        }
    } else {
        var_t3 = 0x20000;
        if (temp_v0 < 0) {

        } else {
            var_t3 = 0;
        }
    }
    temp_t2->unk2060 = (s32) (arg0->unk7D68 | var_t3);
    arg0->unk7D60 = (s32) saved_reg_ra;
    temp_t2->unk2080 = (s64) arg1->unk80;
    temp_f11 = arg0->unk7D10;
    temp_t2->unk2088 = (s64) arg2->unk80;
    temp_f18 = arg0->unk7D18;
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f12, $f13 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f16, $f13 */);
    temp_t2->unk2090 = (s64) arg3->unk80;
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f14, $f15 */);
    temp_t2->unk2104 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f12, $f5, $f19, $f4 */) * temp_f11);
    temp_t2->unk210C = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f14, $f7, $f17, $f6 */) * temp_f11);
    temp_t2->unk21D0 = (s64) (M2C_ERROR(/* unknown instruction: msub.s $f16, $f9, $f2, $f4 */) * temp_f18);
    temp_t2->unk21D8 = (s64) (M2C_ERROR(/* unknown instruction: msub.s $f17, $f10, $f1, $f6 */) * temp_f18);
    temp_t2->unk20EC = (s32) ((second half of f64) * temp_f11);
    temp_t2->unk29C8 = (s64) (M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f17, $f15 */) * temp_f18);
}

f32 __glCrmSmoothRGBZTriangle(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    f32 temp_f14;
    f32 temp_f4;
    f32 temp_f9;
    s32 var_v1;
    void *temp_t1;
    void *var_t9;

    M2C_ERROR(/* unknown instruction: recip.s $f8, $f5 */);
    if (arg0->unk75E4 < 0) {
        var_v1 = (arg4 != 0) ? 0x02020000 : 0x02010000;
        var_t9 = (arg4 == 0) ? arg3 : arg1;
    } else {
        var_v1 = (arg4 != 0) ? 0x02000000 : 0x02030000;
        var_t9 = (arg4 != 0) ? arg3 : arg1;
    }
    temp_t1 = arg0->unk7DB8;
    temp_t1->unk2060 = var_v1;
    temp_t1->unk2080 = (s64) arg1->unk80;
    temp_f9 = arg0->unk7D10;
    temp_t1->unk2088 = (s64) arg2->unk80;
    arg0->unk7D60 = (s32) saved_reg_ra;
    temp_t1->unk2090 = (s64) arg3->unk80;
    M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f5, $f0 */);
    M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f7, $f0 */);
    temp_t1->unk20F0 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f5, $f5, $f13, $f3 */) * temp_f9);
    temp_t1->unk20F8 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f6, $f6, $f12, $f4 */) * temp_f9);
    temp_t1->unk20F4 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f7, $f7, $f19, $f3 */) * temp_f9);
    temp_t1->unk20FC = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f8, $f8, $f17, $f4 */) * temp_f9);
    temp_t1->unk20E0 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f6, $f18 */) * temp_f9);
    temp_f14 = arg0->unk7D10;
    temp_t1->unk20E4 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f8, $f18 */) * temp_f9);
    M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f10, $f0 */);
    temp_f4 = arg0->unk7D18;
    M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f15, $f0 */);
    temp_t1->unk2100 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f10, $f10, $f6, $f3 */) * temp_f14);
    temp_t1->unk2108 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f11, $f11, $f19, $f4 */) * temp_f14);
    temp_t1->unk21D0 = (s64) (M2C_ERROR(/* unknown instruction: msub.s $f15, $f15, $f13, $f3 */) * temp_f4);
    temp_t1->unk21D8 = (s64) (M2C_ERROR(/* unknown instruction: msub.s $f19, $f19, $f12, $f4 */) * temp_f4);
    temp_t1->unk20E8 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f11, $f18 */) * temp_f14);
    temp_t1->unk29C8 = (s64) (M2C_ERROR(/* unknown instruction: madd.s $f3, $f3, $f19, $f18 */) * (second half of f64));
    return (bitwise f32) (var_t9->unk80 & ~0x3F) - (bitwise f32) var_t9->unk80;
}

f32 __glCrmSmoothRGBAZTriangle(void *arg0, void *arg1, void *arg2, void *arg3, s32 arg4) {
    f32 temp_f10;
    f32 temp_f5;
    f32 temp_f9;
    s32 var_a7;
    void *temp_t9;
    void *var_a5;

    M2C_ERROR(/* unknown instruction: recip.s $f10, $f7 */);
    if (arg0->unk75E4 < 0) {
        var_a7 = (arg4 != 0) ? 0x02020000 : 0x02010000;
        var_a5 = (arg4 == 0) ? arg3 : arg1;
    } else {
        var_a7 = (arg4 != 0) ? 0x02000000 : 0x02030000;
        var_a5 = (arg4 != 0) ? arg3 : arg1;
    }
    temp_t9 = arg0->unk7DB8;
    temp_t9->unk2060 = var_a7;
    temp_t9->unk2080 = (s64) arg1->unk80;
    temp_f9 = arg0->unk7D10;
    temp_t9->unk2088 = (s64) arg2->unk80;
    arg0->unk7D60 = (s32) saved_reg_ra;
    temp_t9->unk2090 = (s64) arg3->unk80;
    M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f5, $f0 */);
    M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f7, $f0 */);
    temp_t9->unk20F0 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f5, $f5, $f15, $f3 */) * temp_f9);
    temp_t9->unk20F8 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f6, $f6, $f14, $f4 */) * temp_f9);
    temp_t9->unk20F4 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f7, $f7, $f18, $f3 */) * temp_f9);
    temp_t9->unk20FC = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f8, $f8, $f16, $f4 */) * temp_f9);
    temp_t9->unk20E0 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f14, $f14, $f6, $f19 */) * temp_f9);
    temp_f5 = arg0->unk7D10;
    temp_t9->unk20E4 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f17, $f17, $f8, $f19 */) * temp_f9);
    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f12, $f0 */);
    M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f6, $f0 */);
    temp_t9->unk2100 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f12, $f12, $f10, $f3 */) * temp_f5);
    temp_t9->unk2108 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f15, $f15, $f7, $f4 */) * temp_f5);
    temp_t9->unk2104 = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f6, $f6, $f18, $f3 */) * temp_f5);
    temp_f10 = arg0->unk7D18;
    temp_t9->unk210C = (s32) (M2C_ERROR(/* unknown instruction: msub.s $f8, $f8, $f16, $f4 */) * temp_f5);
    M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f6, $f0 */);
    temp_t9->unk20E8 = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f15, $f19 */) * arg0->unk7D10);
    temp_t9->unk20EC = (s32) (M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f8, $f19 */) * arg0->unk7D10);
    temp_t9->unk21D0 = (s64) (M2C_ERROR(/* unknown instruction: msub.s $f6, $f6, $f5, $f3 */) * temp_f10);
    temp_t9->unk21D8 = (s64) (M2C_ERROR(/* unknown instruction: msub.s $f9, $f9, $f18, $f4 */) * temp_f10);
    temp_t9->unk29C8 = (s64) (M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f9, $f19 */) * temp_f10);
    return (bitwise f32) (var_a5->unk80 & ~0x3F) - (bitwise f32) var_a5->unk80;
}
