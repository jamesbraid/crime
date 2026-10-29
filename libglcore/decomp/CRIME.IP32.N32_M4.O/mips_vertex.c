void __glValidateVertex2(void *arg0, void *arg1, s32 arg2) {
    ? sp18;
    s32 temp_a2;
    s32 temp_s3;
    u8 temp_a3;
    void *temp_s2;

    temp_s2 = arg0->unk73DC;
    temp_s3 = ~arg1->unk0 & arg2;
    arg1->unk6C = 0x3F800000;
    if (temp_s3 & 0x10) {
        temp_s2->unk48(arg1 + 0x60, arg1 + 0x10, temp_s2);
    }
    temp_a2 = temp_s2->unk40;
    if (temp_s3 & 8) {
        temp_a3 = temp_s2->unk10C;
        if (temp_a2 == 0) {
            arg1->unk2C = (f32) -((arg1->unk20 * arg1->unk10) + (arg1->unk24 * arg1->unk14));
        }
        if (temp_a3 != 0) {
            arg0->unk2E7C(arg0, temp_s2, temp_a2, temp_a3);
        }
        if (arg0->unk700 & 0x400000) {
            temp_s2->unkA4(&sp18, arg1 + 0x20, temp_s2 + 0x58);
            arg0->unk2E80(arg1 + 0x20, &sp18);
        } else {
            temp_s2->unkA4(arg1 + 0x20, arg1 + 0x20, temp_s2 + 0x58);
        }
    }
    if (temp_s3 & 0x44) {
        if (!(temp_s3 & 0x40) || (arg1->unkB0 = arg0->unk30F8(arg0, arg1), ((temp_s3 & 4) != 0))) {
            arg1->unk18 = 0;
            arg1->unk1C = 0x3F800000;
            arg0->unk2EDC(arg0, arg1);
        }
    }
    if (temp_s3 & 1) {
        arg0->unk2EE4(arg0, 0, arg1);
    }
    if (temp_s3 & 2) {
        arg0->unk2EE4(arg0, 1, arg1);
    }
    arg1->unk0 = (s32) (arg1->unk0 | temp_s3);
}

void __glValidateVertex3(void *arg0, void *arg1, s32 arg2) {
    ? sp18;
    s32 temp_s3;
    void *temp_s2;

    temp_s2 = arg0->unk73DC;
    temp_s3 = ~arg1->unk0 & arg2;
    arg1->unk6C = 0x3F800000;
    if (temp_s3 & 0x10) {
        temp_s2->unk4C(arg1 + 0x60, arg1 + 0x10, temp_s2);
    }
    if (temp_s3 & 8) {
        if (temp_s2->unk40 == 0) {
            arg1->unk2C = (f32) -((arg1->unk20 * arg1->unk10) + (arg1->unk24 * arg1->unk14) + (arg1->unk28 * arg1->unk18));
        }
        if (temp_s2->unk10C != 0) {
            arg0->unk2E7C(arg0, temp_s2, arg0->unk700);
        }
        if (arg0->unk700 & 0x400000) {
            temp_s2->unkA4(&sp18, arg1 + 0x20, temp_s2 + 0x58);
            arg0->unk2E80(arg1 + 0x20, &sp18);
        } else {
            temp_s2->unkA4(arg1 + 0x20, arg1 + 0x20, temp_s2 + 0x58);
        }
    }
    if (temp_s3 & 0x44) {
        if (!(temp_s3 & 0x40) || (arg1->unkB0 = arg0->unk30F8(arg0, arg1), ((temp_s3 & 4) != 0))) {
            arg1->unk1C = 0x3F800000;
            arg0->unk2EDC(arg0, arg1);
        }
    }
    if (temp_s3 & 1) {
        arg0->unk2EE4(arg0, 0, arg1);
    }
    if (temp_s3 & 2) {
        arg0->unk2EE4(arg0, 1, arg1);
    }
    arg1->unk0 = (s32) (arg1->unk0 | temp_s3);
}

void __glValidateVertex4(void *arg0, void *arg1, s32 arg2) {
    ? sp18;
    s32 temp_a6;
    s32 temp_s3;
    void *temp_s2;

    temp_s2 = arg0->unk73DC;
    temp_a6 = ~arg1->unk0;
    temp_s3 = temp_a6 & arg2;
    arg1->unk6C = 0x3F800000;
    if (temp_s3 & 0x10) {
        temp_s2->unk50(arg1 + 0x60, arg1 + 0x10, temp_s2, temp_a6, 0x3F800000);
    }
    if (temp_s3 & 8) {
        arg1->unk2C = 0.0f;
        if (arg1->unk1C != 0) {
            arg1->unk2C = (f32) (-((arg1->unk20 * arg1->unk10) + (arg1->unk24 * arg1->unk14) + (arg1->unk28 * arg1->unk18)) / (bitwise f32) arg1->unk1C);
        }
        if (temp_s2->unk10C != 0) {
            arg0->unk2E7C(arg0, temp_s2);
        }
        if (arg0->unk700 & 0x400000) {
            temp_s2->unkA4(&sp18, arg1 + 0x20, temp_s2 + 0x58);
            arg0->unk2E80(arg1 + 0x20, &sp18);
        } else {
            temp_s2->unkA4(arg1 + 0x20, arg1 + 0x20, temp_s2 + 0x58);
        }
    }
    if (temp_s3 & 0x44) {
        if (!(temp_s3 & 0x40) || (arg1->unkB0 = arg0->unk30F8(arg0, arg1), ((temp_s3 & 4) != 0))) {
            arg0->unk2EDC(arg0, arg1);
        }
    }
    if (temp_s3 & 1) {
        arg0->unk2EE4(arg0, 0, arg1);
    }
    if (temp_s3 & 2) {
        arg0->unk2EE4(arg0, 1, arg1);
    }
    arg1->unk0 = (s32) (arg1->unk0 | temp_s3);
}

/*
Decompilation failure in function __glValidateLitVertex2:

Unable to determine jump table for jr instruction at mips_vertex.s line 870.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glValidateLitVertex3:

Unable to determine jump table for jr instruction at mips_vertex.s line 942.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

/*
Decompilation failure in function __glValidateLitVertex4:

Unable to determine jump table for jr instruction at mips_vertex.s line 1154.

There must be a read of a variable before the instruction
which has a name starting with with "jtbl"/"jpt_"/"lbl_"/"jumptable_".
*/

void __glValidateVertex2Clip(void *arg0, s32 *arg1, s32 arg2) {
    s32 temp_a5;
    s32 temp_a7;
    void *temp_a6;

    temp_a6 = arg0->unk73DC;
    temp_a7 = arg2 & 0x20;
    temp_a5 = *arg1 | 0x20;
    if (temp_a7 != 0) {
        *arg1 = temp_a5;
        temp_a6->unkFC(arg1 + 0x70, arg1 + 0x10, temp_a6 + 0xB0, temp_a5, temp_a6, temp_a7);
    }
}

void __glValidateVertex3Clip(void *arg0, s32 *arg1, s32 arg2) {
    void *temp_v0;

    temp_v0 = arg0->unk73DC;
    if (arg2 & 0x20) {
        *arg1 |= 0x20;
        temp_v0->unkFC(arg1 + 0x70, arg1 + 0x10, temp_v0 + 0xB0);
    }
}

void __glValidateVertex4Clip(void *arg0, s32 *arg1, s32 arg2) {
    s32 temp_a3;
    void *temp_t0;

    temp_t0 = arg0->unk73DC;
    temp_a3 = *arg1 | 0x20;
    if (arg2 & 0x20) {
        *arg1 = temp_a3;
        temp_t0->unkFC(arg1 + 0x70, arg1 + 0x10, temp_t0 + 0xB0, temp_a3);
    }
}
