void __glMipsXForm2_2DNRW(void *arg0, void *arg1, void *arg2) {
    arg0->unk8 = (f32) arg2->unk38;
    arg0->unkC = 0x3F800000;
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f3, $f1, $f2 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f7, $f5, $f6 */);
}

void __glMipsXForm2_2DW(void *arg0, void *arg1, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f10, $f8, $f9 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f12, $f8, $f11 */);
    arg0->unk8 = (f32) arg2->unk38;
    arg0->unkC = 0x3F800000;
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f13, $f14 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f13, $f15 */);
}

void __glMipsXForm2_W(void *arg0, void *arg1, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f18, $f16, $f17 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f1, $f16, $f19 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f5, $f16, $f3 */);
    arg0->unkC = 0x3F800000;
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f6, $f7 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f6, $f8 */);
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f6, $f9 */);
}

void __glMipsXForm2(void *arg0, void *arg1, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f6, $f12, $f10, $f11 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f14, $f10, $f13 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f16, $f10, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f18, $f10, $f17 */);
    arg0->unkC = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f19, $f1 */);
    M2C_ERROR(/* unknown instruction: recip.s $f8, $f6 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f19, $f3 */);
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f19, $f5 */);
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f19, $f7 */);
}

void __glMipsXForm3_2DNRW(void *arg0, void *arg1, void *arg2) {
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f10, $f8, $f9 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f13, $f11, $f12 */);
    arg0->unkC = 0x3F800000;
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f15, $f14, $f16 */);
}

void __glMipsXForm3_2DW(void *arg0, void *arg1, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f19, $f17, $f18 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f3, $f17, $f1 */);
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f4, $f5 */);
    arg0->unkC = 0x3F800000;
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f4, $f6 */);
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f9, $f8, $f7 */);
}

void __glMipsXForm3_W(void *arg0, void *arg1, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f12, $f10, $f11 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f13, $f10, $f14 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f15, $f10, $f16 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f17, $f18 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f17, $f19 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f17, $f1 */);
    arg0->unkC = 0x3F800000;
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f5, $f3 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f5, $f6 */);
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f7 */);
}

void __glMipsXForm3AsmLink_W(void *arg0, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f9, $f14, $f8 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f11, $f14, $f13 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f15, $f14, $f16 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f12, $f17 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f12, $f18 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f12, $f19 */);
    arg0->unkC = 0x3F800000;
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f10, $f1 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f10, $f3 */);
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f10, $f5 */);
}

void __glMipsXForm3(void *arg0, void *arg1, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f6, $f9, $f7, $f8 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f11, $f7, $f10 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f13, $f7, $f12 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f15, $f7, $f14 */);
    M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f16, $f17 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f16, $f18 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f16, $f19 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f16, $f1 */);
    arg0->unkC = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f3, $f5 */);
    M2C_ERROR(/* unknown instruction: recip.s $f8, $f6 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f7 */);
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f3, $f8 */);
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f3, $f9 */);
}

void __glMipsXForm3AsmLink(void *arg0, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f6, $f13, $f14, $f11 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f16, $f14, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f18, $f14, $f17 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f1, $f14, $f19 */);
    M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f12, $f3 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f12, $f5 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f12, $f7 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f12, $f8 */);
    arg0->unkC = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f10, $f9 */);
    M2C_ERROR(/* unknown instruction: recip.s $f8, $f6 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f10, $f11 */);
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f10, $f12 */);
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f10, $f13 */);
}

void __glMipsXForm4_2DNRW(void *arg0, void *arg1, void *arg2) {
    arg0->unkC = (f32) arg1->unkC;
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f17, $f18 */);
    M2C_ERROR(/* unknown instruction: recip.s $f8, $f6 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f1, $f19 */);
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f3 */);
}

void __glMipsXForm4_2DW(void *arg0, void *arg1, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f10, $f11 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f10, $f12 */);
    arg0->unkC = (f32) arg1->unkC;
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f14, $f13 */);
    M2C_ERROR(/* unknown instruction: recip.s $f8, $f6 */);
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f15, $f16 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f15, $f17 */);
}

void __glMipsXForm4_W(void *arg0, void *arg1, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f3, $f5 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f3, $f7 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f3, $f8 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f9, $f10 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f9, $f11 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f9, $f12 */);
    arg0->unkC = (f32) arg1->unkC;
    M2C_ERROR(/* unknown instruction: recip.s $f8, $f6 */);
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f13, $f14 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f13, $f15 */);
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f13, $f16 */);
}

void __glMipsXForm4(void *arg0, void *arg1, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f5, $f7 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f5, $f8 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f5, $f9 */);
    M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f5, $f10 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f11, $f12 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f11, $f13 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f11, $f14 */);
    M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f11, $f15 */);
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f16, $f17 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f16, $f18 */);
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f16, $f19 */);
    arg0->unkC = (f32) M2C_ERROR(/* unknown instruction: madd.s $f6, $f6, $f16, $f1 */);
    M2C_ERROR(/* unknown instruction: recip.s $f8, $f6 */);
}

void __glMipsMultMatrix(void *arg0, void *arg1, void *arg2) {
    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f10, $f8 */);
    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f12, $f8 */);
    M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f14, $f8 */);
    M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f16, $f8 */);
    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f17, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f18, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f19, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f1, $f15 */);
    arg0->unk0 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f3, $f0 */);
    arg0->unk10 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f8, $f0 */);
    arg0->unk20 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f15, $f0 */);
    arg0->unk30 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f13, $f13, $f16, $f0 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f10, $f16 */);
    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f12, $f16 */);
    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f14, $f16 */);
    M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f13, $f16 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f17, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f18, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f19, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f1, $f15 */);
    arg0->unk4 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f3, $f16 */);
    arg0->unk14 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f8, $f16 */);
    arg0->unk24 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f13, $f16 */);
    arg0->unk34 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f11, $f11, $f15, $f16 */);
    M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f10, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f12, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f14, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f11, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f17, $f13 */);
    M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f18, $f13 */);
    M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f19, $f13 */);
    M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f1, $f13 */);
    arg0->unk8 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f16, $f16, $f3, $f15 */);
    arg0->unk18 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f0, $f0, $f8, $f15 */);
    arg0->unk28 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f18, $f15 */);
    arg0->unk38 = (f32) M2C_ERROR(/* unknown instruction: madd.s $f9, $f9, $f11, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f10, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f12, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f14, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f6, $f15 */);
    M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f17, $f7 */);
    M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f9, $f7 */);
    M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f19, $f7 */);
    M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f1, $f7 */);
    arg0->unkC = (f32) M2C_ERROR(/* unknown instruction: madd.s $f18, $f18, $f3, $f10 */);
    arg0->unk1C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f2, $f2, $f8, $f10 */);
    arg0->unk2C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f4, $f4, $f11, $f10 */);
    arg0->unk3C = (f32) M2C_ERROR(/* unknown instruction: madd.s $f5, $f5, $f12, $f10 */);
}
