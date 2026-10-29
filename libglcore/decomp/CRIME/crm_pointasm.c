void __glCrmRenderPointRGBA(void *arg0, void *arg1) {
    s32 temp_a3;
    void *temp_a1;
    void *temp_v0;

    temp_v0 = arg1->unk8;
    temp_a1 = arg0->unk7DB8;
    temp_a3 = arg0->unk7D64;
    temp_a1->unk2080 = (f64) arg1->unk80;
    arg0->unk8080 = 0;
    if (temp_a3 != arg0->unk7D60) {
        temp_a1->unk2060 = temp_a3;
        arg0->unk7DBC->unk2060 = temp_a3;
        arg0->unk7D60 = temp_a3;
    }
    temp_a1->unk28D0 = (s32) ((s32) temp_v0->unkC | ((s32) temp_v0->unk0 << 0x18) | ((s32) temp_v0->unk4 << 0x10) | ((s32) temp_v0->unk8 << 8));
}

void __glCrmRenderPointDepthRGBA(void *arg0, void *arg1) {
    s32 temp_t8;
    void *temp_a3;
    void *temp_v0;

    temp_t8 = arg0->unk7D64;
    temp_v0 = arg0->unk7DB8;
    temp_v0->unk2080 = (f64) arg1->unk80;
    if (temp_t8 != arg0->unk7D60) {
        temp_v0->unk2060 = temp_t8;
        arg0->unk7DBC->unk2060 = temp_t8;
        arg0->unk7D60 = temp_t8;
    }
    temp_a3 = arg1->unk8;
    if (!(arg0->unk807C & 2)) {
        arg0->unk8080 = 0;
        temp_v0->unk20D0 = (s32) ((s32) temp_a3->unkC | ((s32) temp_a3->unk0 << 0x18) | ((s32) temp_a3->unk4 << 0x10) | ((s32) temp_a3->unk8 << 8));
    }
    temp_v0->unk29C8 = (s64) (arg1->unk88 * (second half of f64));
}
