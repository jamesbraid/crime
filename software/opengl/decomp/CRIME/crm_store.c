extern ? sub_0d970000;

void crmDoDepthStore(void **arg0, void *arg1) {
    s64 sp8;
    f64 sp0;
    u64 temp_a3;
    void *temp_a2;
    void *temp_at;

    temp_a3 = (u64) ((arg1->unk8 << 6) << 0x20) >> 0x20;
    sp0 = (f64) temp_a3;
    temp_at = *arg0;
    sp8 = (s64) sp0;
    temp_a2 = temp_at->unk7DB8;
    temp_a2->unk21C8 = (f64) (second half of f64);
    temp_at->unk7DBC->unk21C8 = sp8;
    temp_at->unk3144(temp_a2, temp_a3);
}

void crmDoDoubleStore(void **arg0, s32 arg1) {
    s64 sp18;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;

    temp_a0 = *arg0;
    sp18 = (s64) temp_a0;
    temp_a0_2 = temp_a0->unk77C0;
    temp_a0_2->unkA4(temp_a0_2);
    temp_a0_3 = temp_a0->unk77C4;
    temp_a0_3->unkA4(temp_a0_3, arg1);
}

void crmDoDoubleStore_S(void **arg0, s32 arg1) {
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s16 temp_a1;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a0_3;
    void *temp_a2;
    void *temp_a3;

    temp_a0 = *arg0;
    sp28 = (s64) temp_a0;
    temp_a3 = temp_a0->unk7DB8;
    temp_a2 = temp_a0->unk7DBC;
    temp_a3->unk21E8 = 0;
    temp_a2->unk21E8 = 0;
    temp_a0_2 = temp_a0->unk77C0;
    sp20 = (s64) temp_a3;
    sp18 = (s64) temp_a2;
    temp_a0_2->unkA4(temp_a0_2, temp_a2, temp_a3);
    temp_a1 = temp_a0->unk68A;
    temp_a3->unk21E8 = (s32) temp_a1;
    temp_a2->unk21E8 = (s32) temp_a1;
    temp_a0_3 = temp_a0->unk77C4;
    temp_a0_3->unkA4(temp_a0_3, arg1, temp_a2, temp_a3);
}

void crmDoDoubleStore_D(void **arg0, void *arg1, s32 arg2, s32 arg6) {
    s64 sp10;
    f64 sp8;
    s32 sp0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a5;
    s32 var_a2;
    s32 var_a6;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a3;
    void *temp_a4;
    void *temp_s0;

    var_a2 = arg2;
    var_a6 = arg6;
    temp_s0 = *arg0;
    temp_a5 = temp_s0->unk7D58;
    sp0 = temp_a5;
    temp_a4 = temp_s0->unk7DBC;
    temp_a3 = temp_s0->unk7DB8;
    if (sp0 & 2) {
        var_a6 = temp_s0->unk7D5C;
        temp_a1 = temp_a5 & ~2;
        temp_s0->unk7D58 = temp_a1;
        if (var_a6 != temp_a1) {
            temp_a3->unk2018 = temp_a1;
            var_a6 = (s32) temp_s0->unk7DBC;
            var_a6->unk2018 = (s32) temp_s0->unk7D58;
            var_a2 = temp_s0->unk7D58;
            temp_s0->unk7D5C = var_a2;
        }
    }
    sp8 = (f64) ((u64) ((arg1->unk8 << 6) << 0x20) >> 0x20);
    sp10 = (s64) sp8;
    temp_a3->unk21C8 = (f64) (second half of f64);
    temp_a4->unk21C8 = sp10;
    temp_a0 = temp_s0->unk77C0;
    temp_a0->unkA4(temp_a0, arg1, var_a2, temp_a3, temp_a4, temp_s0->unk7D58, var_a6);
    if (sp0 & 2) {
        temp_a1_2 = temp_s0->unk7D58 | 2;
        temp_s0->unk7D58 = temp_a1_2;
        if (temp_s0->unk7D5C != temp_a1_2) {
            temp_s0->unk7DB8->unk2018 = temp_a1_2;
            temp_s0->unk7DBC->unk2018 = (s32) temp_s0->unk7D58;
            temp_s0->unk7D5C = (s32) temp_s0->unk7D58;
        }
    }
    temp_a0_2 = temp_s0->unk77C4;
    temp_a0_2->unkA4(temp_a0_2, arg1);
}

void crmDoDoubleStore_SD(void **arg0, void *arg1, s32 arg2, s32 arg3, s32 arg4, void *arg5, s32 arg6) {
    s64 sp10;
    f64 sp8;
    s32 sp0;
    s16 temp_v1;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a6;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_s0;
    void *temp_s2;
    void *temp_s3;
    void *var_a5;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a4 = arg4;
    var_a5 = arg5;
    var_a6 = arg6;
    temp_s0 = *arg0;
    sp0 = temp_s0->unk7D58;
    temp_s2 = temp_s0->unk7DB8;
    temp_s3 = temp_s0->unk7DBC;
    temp_s2->unk21E8 = 0;
    temp_s3->unk21E8 = 0;
    if (sp0 & 2) {
        var_a6 = temp_s0->unk7D5C;
        var_a2 = -3;
        temp_a1 = temp_s0->unk7D58 & ~2;
        temp_s0->unk7D58 = temp_a1;
        if (var_a6 != temp_a1) {
            var_a6 = (s32) temp_s0->unk7DB8;
            var_a6->unk2018 = temp_a1;
            var_a5 = temp_s0->unk7DBC;
            var_a4 = temp_s0->unk7D58;
            var_a5->unk2018 = var_a4;
            var_a3 = temp_s0->unk7D58;
            temp_s0->unk7D5C = var_a3;
        }
    }
    sp8 = (f64) ((u64) ((arg1->unk8 << 6) << 0x20) >> 0x20);
    sp10 = (s64) sp8;
    temp_s2->unk21C8 = (f64) (second half of f64);
    temp_s3->unk21C8 = sp10;
    temp_a0 = temp_s0->unk77C0;
    temp_a0->unkA4(temp_a0, arg1, var_a2, var_a3, var_a4, var_a5, var_a6);
    temp_v1 = temp_s0->unk68A;
    temp_s2->unk21E8 = (s32) temp_v1;
    temp_s3->unk21E8 = (s32) temp_v1;
    if (sp0 & 2) {
        temp_a1_2 = temp_s0->unk7D58 | 2;
        temp_s0->unk7D58 = temp_a1_2;
        if (temp_s0->unk7D5C != temp_a1_2) {
            temp_s0->unk7DB8->unk2018 = temp_a1_2;
            temp_s0->unk7DBC->unk2018 = (s32) temp_s0->unk7D58;
            temp_s0->unk7D5C = (s32) temp_s0->unk7D58;
        }
    }
    temp_a0_2 = temp_s0->unk77C4;
    temp_a0_2->unkA4(temp_a0_2, arg1);
}

void __glCrmGenericPickStoreProcs(void *arg0) {
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a4;
    s32 var_a2;

    temp_a3 = arg0->unk760;
    temp_a4 = arg0->unk76E4;
    if (temp_a3 != 0x408) {
        var_a2 = temp_a4 & 4;
        if ((temp_a3 != 0) && (var_a2 = temp_a4 & 4, (temp_a3 != 0x404)) && (var_a2 = temp_a4 & 4, (temp_a3 != 0x405))) {

        } else {
            goto block_6;
        }
    } else {
        temp_a3_2 = temp_a4 & 0x24;
        if (arg0->unk77BC != 0) {
            switch (temp_a3_2) {                    /* irregular */
            case 0:
                arg0->unk3140 = (void *) (&sub_0d970000 - 0x20A0);
                return;
            case 4:
                arg0->unk3140 = (void *) (&sub_0d970000 - 0x1FB0);
                /* fallthrough */
            case 32:
                arg0->unk3140 = (void *) (&sub_0d970000 - 0x2040);
                return;
            case 36:
                arg0->unk3140 = (void *) (M2C_ERROR(/* Read from unset register $t9 */) - 0x1E80);
                return;
            }
        } else {
            var_a2 = temp_a4 & 4;
block_6:
            if (var_a2 != 0) {
                arg0->unk3140 = (void *) (&sub_0d970000 - 0x2120);
                arg0->unk3144 = (void *) arg0->unk2DF0->unkA4;
                return;
            }
            arg0->unk3140 = (void *) arg0->unk2DF0->unkA4;
        }
    }
}
