s32 __viceMapCode(?, void *, void *);               /* extern */

s32 __viceLoadCMMCode(void *arg0, void *arg2) {
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_v0;
    void *var_a2;

    var_a2 = arg2;
    temp_v0_3 = arg0->unk1050;
    if (arg0->unk104C != 1) {
        goto block_1;
    }
    temp_a0 = arg0->unk102C;
    if (temp_v0_3 != 1) {
        goto block_7;
    }
    if (temp_a0 != 0) {
        var_a2 = arg0->unk1030;
        if (var_a2 != NULL) {
            var_v0 = __viceMapCode(0x11, arg0, var_a2);
            /* Duplicate return node #4. Try simplifying control flow for better match */
            arg0->unk102C = 0;
            return var_v0;
        }
block_7:
        if (temp_a0 != 0) {
            temp_v0_2 = __viceMapCode(0x12, arg0, var_a2);
            arg0->unk102C = 0;
            arg0->unk1020 = 1;
            return temp_v0_2;
        }
        goto block_1;
    }
block_1:
    if ((temp_v0_3 == 1) && (arg0->unk1030 != NULL)) {
        var_v0 = __viceMapCode(0x13, arg0, var_a2);
        arg0->unk102C = 0;
        return var_v0;
    }
    temp_v0 = __viceMapCode(0x14, arg0, var_a2);
    arg0->unk102C = 0;
    return temp_v0;
}

s32 viceColorMatrix(void *arg0, s32 arg1) {
    f32 *temp_a7;
    s32 temp_a6;
    s32 temp_f0;
    s32 temp_s8;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t9;
    s32 temp_v1;
    s32 var_a3;
    s32 var_a4;
    void *temp_a2;

    var_a3 = 0;
    var_a4 = 0;
    temp_s8 = (((u32) (arg0->unk1054 * arg0->unk0->unk72) >> 5) - 1) << 8;
    do {
        temp_t9 = (s32) ((var_a3 >= 0) ? var_a3 : (var_a3 + 3)) >> 2;
        temp_t2 = var_a3 + 1;
        temp_t3 = (s32) ((temp_t2 >= 0) ? temp_t2 : (var_a3 + 4)) >> 2;
        temp_a7 = arg1 + (temp_t3 * 0x10) + ((temp_t2 - (temp_t3 * 4)) * 4);
        (arg0->unk0 + var_a4)->unk30 = (s16) (s32) ((f64) (*(arg1 + (temp_t9 * 0x10) + ((var_a3 - (temp_t9 * 4)) * 4)) * 32767.0f) + 0.5);
        temp_f0 = (s32) ((f64) (*temp_a7 * 32767.0f) + 0.5);
        var_a3 += 2;
        temp_a6 = var_a4 + 2;
        temp_a2 = arg0->unk0 + temp_a6;
        var_a4 += 4;
        temp_a2->unk30 = (s16) temp_f0;
    } while (var_a3 != 0x10);
    (arg0->unk4 + (arg0->unk106C * 4))->unk50 = (s32) (__viceLoadCMMCode(arg0, temp_a2, var_a3, var_a4, 0x10, temp_a6, temp_a7) | temp_s8);
    temp_v1 = arg0->unk106C + 1;
    arg0->unk106C = temp_v1;
    return ((0xFFFF0000 ^ (0xFFFF0000 & (arg0->unk4 + (temp_v1 * 4))->unk4C)) == 0) ? 0 : 1;
}
