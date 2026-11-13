s32 __glElementsPerGroup(s32);                      /* extern */
s32 __viceMapCode(?, void *, s32, ?);               /* extern */

void __viceSetHTableParam(void *arg0, void *arg1) {
    f32 temp_f4;
    s32 temp_a4;
    s32 temp_f6;
    s32 temp_f7;

    temp_a4 = arg1->unk8;
    temp_f4 = (f32) ((f64) (second half of f64) * (second half of f64));
    switch (temp_a4) {                              /* irregular */
    case 0x1909:
        arg0->unk1048->unk0 = (s16) (s32) (temp_f4 * 32767.0f);
        arg0->unk1048->unk2 = (s16) arg0->unk103C;
        arg0->unk1048->unk4 = 0;
        arg0->unk1048->unk6 = (s16) arg0->unk103C;
        arg0->unk1048->unk8 = 0;
        arg0->unk1048->unkA = (s16) arg0->unk103C;
        arg0->unk1048->unkC = 0;
        arg0->unk1048->unkE = (s16) arg0->unk103C;
        return;
    case 0x1908:
        temp_f6 = (s32) (temp_f4 * 32767.0f);
        arg0->unk1048->unk0 = (s16) temp_f6;
        arg0->unk1048->unk2 = (s16) arg0->unk103C;
        arg0->unk1048->unk4 = (s16) temp_f6;
        arg0->unk1048->unk6 = (s16) (arg0->unk103C + 1);
        arg0->unk1048->unk8 = (s16) temp_f6;
        arg0->unk1048->unkA = (s16) (arg0->unk103C + 2);
        arg0->unk1048->unkC = (s16) temp_f6;
        arg0->unk1048->unkE = (s16) (arg0->unk103C + 3);
        return;
    case 0x190A:
        temp_f7 = (s32) (temp_f4 * 32767.0f);
        arg0->unk1048->unk0 = (s16) temp_f7;
        arg0->unk1048->unk2 = (s16) arg0->unk103C;
        arg0->unk1048->unk4 = (s16) temp_f7;
        arg0->unk1048->unk6 = (s16) (arg0->unk103C + 1);
        arg0->unk1048->unk8 = 0;
        arg0->unk1048->unkA = (s16) arg0->unk103C;
        arg0->unk1048->unkC = 0;
        arg0->unk1048->unkE = (s16) (arg0->unk103C + 1);
        return;
    }
}

void __viceSetTable(void *arg0, void *arg1) {
    s32 temp_a4;
    s32 temp_a4_2;
    s32 temp_a6;
    s32 temp_lo;
    s32 var_a1;
    void *var_a2;
    void *var_s1;

    var_s1 = arg1;
    temp_lo = arg0->unkC * __glElementsPerGroup(arg0->unk48);
    var_a1 = 0;
    temp_a6 = temp_lo + 3;
    if (temp_lo > 0) {
        temp_a4 = (s32) ((temp_a6 >= 0) ? temp_a6 : (temp_lo + 6)) >> 2;
        if (temp_a4 & 1) {
            var_s1->unk0 = (s8) (s32) (arg0->unk4->unk0 * 255.0f);
            var_s1->unk1 = (s8) (s32) (arg0->unk4->unk4 * 255.0f);
            var_s1->unk2 = (s8) (s32) (arg0->unk4->unk8 * 255.0f);
            var_s1 += 4;
            var_a1 = 0x10;
            var_s1->unk-1 = (s8) (s32) (arg0->unk4->unkC * 255.0f);
        }
        var_a2 = var_s1;
        if ((temp_a4 >> 1) != 0) {
            do {
                var_a2->unk0 = (s8) (s32) (*(arg0->unk4 + var_a1) * 255.0f);
                var_a2->unk1 = (s8) (s32) ((arg0->unk4 + var_a1)->unk4 * 255.0f);
                var_a2->unk2 = (s8) (s32) ((arg0->unk4 + var_a1)->unk8 * 255.0f);
                var_a2->unk3 = (s8) (s32) ((arg0->unk4 + var_a1)->unkC * 255.0f);
                temp_a4_2 = var_a1 + 0x10;
                var_a2->unk4 = (s8) (s32) (*(arg0->unk4 + temp_a4_2) * 255.0f);
                var_a2->unk5 = (s8) (s32) ((arg0->unk4 + temp_a4_2)->unk4 * 255.0f);
                var_a2->unk6 = (s8) (s32) ((arg0->unk4 + temp_a4_2)->unk8 * 255.0f);
                var_a1 += 0x20;
                var_a2 += 8;
                var_a2->unk-1 = (s8) (s32) ((arg0->unk4 + temp_a4_2)->unkC * 255.0f);
            } while (var_a1 < (temp_lo * 4));
        }
    }
}

s32 __viceLoadCLTCode(void *arg0, s32 arg2) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a2;
    s32 var_v0;

    var_a2 = arg2;
    temp_a1 = arg0->unk1050;
    if (arg0->unk104C != 1) {
        goto block_1;
    }
    temp_a0 = arg0->unk102C;
    if (temp_a1 != 1) {
        goto block_8;
    }
    if (temp_a0 != 0) {
        var_a2 = arg0->unk1030;
        if (var_a2 != 0) {
            var_v0 = __viceMapCode(0xD, arg0, var_a2, 1);
            goto block_4;
        }
block_8:
        if (temp_a0 != 0) {
            var_a0 = __viceMapCode(0xE, arg0, var_a2, 1);
            arg0->unk1020 = 1;
            /* Duplicate return node #5. Try simplifying control flow for better match */
            arg0->unk102C = 0;
            return arg0->unk1038 | var_a0 | (arg0->unk1040 * 4);
        }
        goto block_1;
    }
block_1:
    if ((temp_a1 == 1) && (arg0->unk1030 != 0)) {
        var_v0 = __viceMapCode(0xF, arg0, var_a2, 1);
block_4:
        var_a0 = var_v0;
        arg0->unk102C = 0;
        return arg0->unk1038 | var_a0 | (arg0->unk1040 * 4);
    }
    temp_v0 = __viceMapCode(0x10, arg0, var_a2, 1);
    arg0->unk102C = 0;
    return arg0->unk1038 | temp_v0 | (arg0->unk1040 * 4);
}

s32 viceColorTable(void *arg0, void *arg1, u16 arg2, s32 arg4, u16 arg5) {
    u64 sp0;
    s32 temp_at;
    s32 temp_lo;
    s32 var_a3;
    s32 var_a4;
    u16 var_a2;
    u16 var_a5;
    void *temp_t3;
    void *temp_v1;

    var_a2 = arg2;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a3 = arg1->unk0;
    switch (var_a3) {                               /* irregular */
    default:
        return 0;
    case 0x80D1:
    case 0x80D2:
        var_a2 = arg0->unk0->unk72;
        sp0 = arg0->unk1054 * var_a2;
block_6:
        __viceSetHTableParam(arg0, arg1, var_a2, (u64) var_a3, var_a4, var_a5);
        __viceSetTable(arg1, arg0->unk8);
        temp_lo = arg1->unkC * arg1->unk4C;
        temp_t3 = arg0->unk4;
        temp_t3->unk36 = (u16) (temp_lo + temp_t3->unk36);
        arg0->unk8 = (void *) (temp_lo + arg0->unk8);
        arg0->unk103C = (s32) (arg0->unk103C + temp_lo);
        arg0->unk1040 = (s32) arg1->unk4C;
        (arg0->unk4 + (arg0->unk106C * 4))->unk50 = __viceLoadCLTCode(arg0);
        temp_v1 = arg0->unk4 + (arg0->unk106C * 4);
        temp_v1->unk50 = (s32) (temp_v1->unk50 | (((sp0 >> 3) - 1) << 8));
        temp_at = arg0->unk106C + 1;
        arg0->unk106C = temp_at;
        if ((0xFFFF0000 & (arg0->unk4 + (temp_at * 4))->unk4C) != 0xFFFF0000) {
            arg0->unk1038 = (s32) (arg0->unk1038 + 1);
            arg0->unk1048 = (s32) (arg0->unk1048 + 0x10);
            return 1;
        }
        return 0;
    case 0x80D0:
        var_a4 = arg0->unk1054;
        var_a5 = arg0->unk0->unk70;
        var_a3 = var_a4 * var_a5;
        sp0 = (u64) var_a3;
        goto block_6;
    }
}
