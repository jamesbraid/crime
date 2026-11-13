s32 __viceMapCode(?, void *, s32);                  /* extern */
u16 viceConvolve(s32, void *, s32, s32, s32, ?, ?); /* extern */

void vHistA(void *arg0, void *arg1) {
    s32 *var_a2;
    s32 *var_a5;
    s32 temp_a4;
    s32 var_a1;
    u16 temp_a0;
    void *var_a3;

    temp_a4 = arg1->unk4;
    var_a3 = arg0 + 6;
    var_a5 = arg1->unk0;
    if (temp_a4 != 0) {
        var_a1 = 0;
        if (temp_a4 & 1) {
            var_a5 += 4;
            var_a1 = 1;
            var_a3 = arg0 + 0xE;
            var_a5->unk-4 = (s32) arg0->unk6;
        }
        var_a2 = var_a5;
        if ((temp_a4 >> 1) != 0) {
            do {
                var_a1 += 2;
                *var_a2 = (s32) var_a3->unk0;
                var_a2 += 8;
                temp_a0 = var_a3->unk8;
                var_a3 += 0x10;
                var_a2->unk-4 = (s32) temp_a0;
            } while (temp_a4 != var_a1);
        }
    }
}

void vHistL(void *arg0, void *arg1) {
    s32 *var_a3;
    s32 temp_a4;
    s32 var_a2;
    u16 temp_a5;
    u16 temp_a6;
    u16 temp_t0;
    u16 temp_v0;
    u16 temp_v1;
    void *var_a0;

    var_a0 = arg0;
    temp_a4 = arg1->unk4;
    var_a3 = arg1->unk0;
    if (temp_a4 != 0) {
        var_a2 = 0;
        if (temp_a4 & 1) {
            temp_v1 = var_a0->unk0;
            *var_a3 = (s32) temp_v1;
            temp_v0 = var_a0->unk2;
            var_a2 = 1;
            var_a3 += 4;
            var_a0 += 4;
            var_a3->unk-4 = (s32) (temp_v0 + temp_v1);
        }
        if ((temp_a4 >> 1) != 0) {
            do {
                temp_t0 = var_a0->unk0;
                var_a3->unk0 = (s32) temp_t0;
                var_a3->unk0 = var_a0->unk2 + temp_t0;
                temp_a6 = var_a0->unk4;
                var_a3->unk4 = (s32) temp_a6;
                var_a2 += 2;
                temp_a5 = var_a0->unk6;
                var_a3 += 8;
                var_a0 += 8;
                var_a3->unk-4 = (s32) (temp_a5 + temp_a6);
            } while (temp_a4 != var_a2);
        }
    }
}

void vHistLA(void *arg0, void *arg1) {
    s32 *var_a3;
    s32 temp_a4;
    s32 var_a2;
    u16 temp_at;
    void *var_a0;

    var_a0 = arg0;
    temp_a4 = arg1->unk4;
    var_a2 = 0;
    var_a3 = arg1->unk0;
    if (temp_a4 != 0) {
        do {
            var_a2 += 1;
            *var_a3 = (s32) var_a0->unk0;
            var_a3 += 8;
            temp_at = var_a0->unk2;
            var_a0 += 4;
            var_a3->unk-4 = (s32) temp_at;
        } while (temp_a4 != var_a2);
    }
}

void vHistRGB(void *arg0, void *arg1) {
    s32 temp_a4;
    s32 var_a2;
    u16 temp_at;
    void *var_a0;
    void *var_a3;

    var_a0 = arg0;
    temp_a4 = arg1->unk4;
    var_a2 = 0;
    var_a3 = arg1->unk0;
    if (temp_a4 != 0) {
        do {
            var_a3->unk0 = (s32) var_a0->unk0;
            var_a2 += 1;
            var_a3->unk4 = (s32) var_a0->unk2;
            var_a3 += 0xC;
            temp_at = var_a0->unk4;
            var_a0 += 8;
            var_a3->unk-4 = (s32) temp_at;
        } while (temp_a4 != var_a2);
    }
}

void vHistRGBA(void *arg0, void *arg1) {
    s32 temp_a4;
    s32 var_a2;
    u16 temp_at;
    void *var_a0;
    void *var_a3;

    var_a0 = arg0;
    temp_a4 = arg1->unk4;
    var_a2 = 0;
    var_a3 = arg1->unk0;
    if (temp_a4 != 0) {
        do {
            var_a3->unk0 = (s32) var_a0->unk0;
            var_a3->unk4 = (s32) var_a0->unk2;
            var_a2 += 1;
            var_a3->unk8 = (s32) var_a0->unk4;
            var_a3 += 0x10;
            temp_at = var_a0->unk6;
            var_a0 += 8;
            var_a3->unk-4 = (s32) temp_at;
        } while (temp_a4 != var_a2);
    }
}

u16 returnHistogramMinMax(void *arg0, s64 arg1, s64 arg2) {
    s64 sp8;
    s64 sp0;
    f32 temp_f10;
    f32 temp_f13;
    f32 temp_f16;
    f32 temp_f1;
    f32 temp_f23;
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_a4_2;
    u16 temp_t0;
    u16 temp_t2;
    u16 temp_t2_2;
    u16 temp_t8;
    u16 temp_v0;
    u16 var_v0;
    void *temp_a1;

    sp8 = arg1;
    sp0 = arg2;
    var_v0 = 0x174FC;
    if (arg1 & 0x400) {
        temp_a4 = arg0->unk4FC;
        temp_a0 = arg0->unk7F80 + 0x2000;
        switch (temp_a4) {                          /* switch 1; irregular */
        case 0x1906:                                /* switch 1 */
            var_v0 = viceConvolve(temp_a0, arg0 + 0x4DC, temp_a4);
            break;
        case 0x1909:                                /* switch 1 */
            var_v0 = viceConvolve(temp_a0, arg0 + 0x4DC, 0x1909, temp_a4);
            break;
        case 0x190A:                                /* switch 1 */
            var_v0 = viceConvolve(temp_a0, arg0 + 0x4DC, 0x1909, 0x190A, temp_a4);
            break;
        case 0x1907:                                /* switch 1 */
            var_v0 = viceConvolve(temp_a0, arg0 + 0x4DC, 0x1909, 0x190A, temp_a4, 0x1907);
            break;
        case 0x1908:                                /* switch 1 */
            var_v0 = viceConvolve(temp_a0, arg0 + 0x4DC, 0x1909, 0x190A, temp_a4, 0x1907, 0x1908);
            break;
        }
        if (arg0->unk500 != 0) {
            goto block_7;
        }
        goto block_9;
    }
block_9:
    if (sp8 & 0x800) {
        temp_a4_2 = arg0->unk55C;
        temp_a1 = arg0->unk7F80;
        switch (temp_a4_2) {                        /* switch 2; irregular */
        case 0x1908:                                /* switch 2 */
            temp_f1 = M2C_ERROR(/* unknown instruction: movz.s $f1, $f9, $a6 */);
            arg0->unk534 = (f32) ((f32) temp_a1->unk2800 / temp_f1);
            arg0->unk538 = (f32) ((f32) temp_a1->unk2802 / temp_f1);
            arg0->unk53C = (f32) ((f32) temp_a1->unk2804 / temp_f1);
            arg0->unk540 = (f32) ((f32) temp_a1->unk2806 / temp_f1);
            arg0->unk544 = (f32) ((f32) temp_a1->unk2808 / temp_f1);
            arg0->unk548 = (f32) ((f32) temp_a1->unk280A / temp_f1);
            temp_v0 = temp_a1->unk280C;
            arg0->unk54C = (f32) ((f32) temp_v0 / temp_f1);
            arg0->unk550 = (f32) ((f32) (temp_a1 + 0x2800)->unkE / temp_f1);
            return temp_v0;
        case 0x1909:                                /* switch 2 */
            temp_t8 = temp_a1->unk2804;
            temp_t2 = temp_a1->unk2800;
            temp_f10 = M2C_ERROR(/* unknown instruction: movz.s $f10, $f12, $t1 */);
            arg0->unk534 = (f32) ((f32) (((s32) temp_t2 >= (s32) temp_t8) ? temp_t8 : temp_t2) / temp_f10);
            temp_t0 = temp_a1->unk2802;
            temp_t2_2 = temp_a1->unk2806;
            arg0->unk538 = (f32) ((f32) (((s32) temp_t2_2 >= (s32) temp_t0) ? temp_t2_2 : temp_t0) / temp_f10);
            return var_v0;
        case 0x1906:                                /* switch 2 */
            temp_f13 = M2C_ERROR(/* unknown instruction: movz.s $f13, $f15, $v0 */);
            arg0->unk534 = (f32) ((f32) temp_a1->unk2806 / temp_f13);
            arg0->unk538 = (f32) ((f32) temp_a1->unk280E / temp_f13);
            return sp0 == 0x1402;
        case 0x190A:                                /* switch 2 */
            temp_f16 = M2C_ERROR(/* unknown instruction: movz.s $f16, $f21, $a4 */);
            arg0->unk534 = (f32) ((f32) temp_a1->unk2800 / temp_f16);
            arg0->unk538 = (f32) ((f32) temp_a1->unk2802 / temp_f16);
            arg0->unk53C = (f32) ((f32) temp_a1->unk2804 / temp_f16);
            arg0->unk540 = (f32) ((f32) temp_a1->unk2806 / temp_f16);
            return var_v0;
        case 0x1907:                                /* switch 2 */
            temp_f23 = M2C_ERROR(/* unknown instruction: movz.s $f23, $f1, $t3 */);
            arg0->unk534 = (f32) ((f32) temp_a1->unk2800 / temp_f23);
            arg0->unk538 = (f32) ((f32) temp_a1->unk2802 / temp_f23);
            arg0->unk53C = (f32) ((f32) temp_a1->unk2804 / temp_f23);
            arg0->unk540 = (f32) ((f32) temp_a1->unk2808 / temp_f23);
            arg0->unk544 = (f32) ((f32) temp_a1->unk280A / temp_f23);
            arg0->unk548 = (f32) ((f32) temp_a1->unk280C / temp_f23);
            goto block_7;
        }
    } else {
block_7:
    default:                                        /* switch 2 */
        return var_v0;
    }
}

s32 __viceLoadHSTCode(void *arg0) {
    s32 temp_a0;
    s32 temp_a1;
    s32 var_a0;

    temp_a1 = arg0->unk1050;
    if (arg0->unk104C != 1) {
        goto block_1;
    }
    temp_a0 = arg0->unk102C;
    if (temp_a1 != 1) {
        goto block_7;
    }
    if (temp_a0 != 0) {
        if (arg0->unk1030 != 0) {
            var_a0 = __viceMapCode(0x5D, arg0, 1);
            arg0->unk1024 = 1;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            arg0->unk102C = 0;
            return arg0->unk1038 | var_a0;
        }
block_7:
        if (temp_a0 != 0) {
            var_a0 = -1;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            arg0->unk102C = 0;
            return arg0->unk1038 | var_a0;
        }
        goto block_1;
    }
block_1:
    if ((temp_a1 == 1) && (arg0->unk1030 != 0)) {
        var_a0 = __viceMapCode(0x5E, arg0, 1);
        arg0->unk102C = 0;
        return arg0->unk1038 | var_a0;
    }
    arg0->unk102C = 0;
    return arg0->unk1038 | ~0;
}

s32 __viceLoadMNMCode(void *arg0, s32 arg2) {
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a2;

    var_a2 = arg2;
    temp_v0_2 = arg0->unk1050;
    if (arg0->unk104C != 1) {
        goto block_1;
    }
    temp_a0 = arg0->unk102C;
    if (temp_v0_2 != 1) {
        goto block_7;
    }
    if (temp_a0 != 0) {
        var_a2 = arg0->unk1030;
        if (var_a2 != 0) {
            var_a0 = __viceMapCode(0x5F, arg0, var_a2);
            arg0->unk1024 = 1;
            /* Duplicate return node #4. Try simplifying control flow for better match */
            arg0->unk102C = 0;
            return var_a0;
        }
block_7:
        if (temp_a0 != 0) {
            arg0->unk102C = 0;
            return -1;
        }
        goto block_1;
    }
block_1:
    if ((temp_v0_2 == 1) && (arg0->unk1030 != 0)) {
        var_a0 = __viceMapCode(0x60, arg0, var_a2);
        arg0->unk102C = 0;
        return var_a0;
    }
    temp_v0 = __viceMapCode(0x61, arg0, var_a2);
    arg0->unk102C = 0;
    return temp_v0;
}

s32 viceHistogram(void *arg0, void *arg1) {
    s64 sp0;
    s16 temp_a3;
    s16 temp_a5;
    s32 temp_a7;
    s32 temp_f0;
    s32 temp_t9;
    s64 temp_v0;
    void *temp_a1;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a4;
    void *temp_a6;

    temp_f0 = (s32) ((f32) ((f64) (second half of f64) * (second half of f64)) * 32767.0f);
    arg0->unk1048->unk0 = (s16) temp_f0;
    temp_a7 = arg0->unk103C;
    arg0->unk1048->unk2 = (s16) temp_a7;
    arg0->unk1048->unk4 = (s16) temp_f0;
    temp_a6 = arg0->unk1048;
    temp_a5 = arg0->unk103C + 2;
    temp_a6->unk6 = temp_a5;
    arg0->unk1048->unk8 = (s16) temp_f0;
    temp_a4 = arg0->unk1048;
    temp_a3 = arg0->unk103C + 4;
    temp_a4->unkA = temp_a3;
    temp_a2 = arg0->unk1048;
    temp_v0 = arg1->unk260 * 8;
    sp0 = temp_v0;
    temp_a2->unkC = (s16) temp_f0;
    temp_a1 = arg0->unk1048;
    temp_a1->unkE = (s16) (arg0->unk103C + 6);
    arg0->unk8 = (s32) (temp_v0 + arg0->unk8);
    arg0->unk103C = (s32) (arg0->unk103C + temp_v0);
    (arg0->unk4 + (arg0->unk106C * 4))->unk50 = __viceLoadHSTCode(temp_a1, temp_a2, temp_a3, temp_a4, temp_a5, temp_a6, temp_a7);
    temp_a2_2 = arg0->unk4;
    temp_t9 = arg0->unk106C + 1;
    arg0->unk106C = temp_t9;
    if ((0xFFFF0000 & (temp_a2_2 + (temp_t9 * 4))->unk4C) != 0xFFFF0000) {
        arg0->unk1048 = (void *) (arg0->unk1048 + 0x10);
        arg0->unk1038 = (s32) (arg0->unk1038 + 1);
        temp_a2_2->unk46 = (s16) sp0;
        return 1;
    }
    return 0;
}
