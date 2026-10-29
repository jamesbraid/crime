? __glClampAndScaleColor();                         /* extern */
extern ? __glcrmim_colorCIDownloadDT;
extern ? __glcrmim_colorDispatchTable;
extern ? __glcrmim_colorRGBDownloadDT;
extern ? sub_0d940000;

void __glCrmDownloadCurrentColor(void *arg0) {
    s32 var_a3;

    if (arg0->unkC94 != 0) {
        var_a3 = (s32) arg0->unkCC | ((s32) arg0->unkC0 << 0x18) | (((s32) arg0->unkC4 << 0x10) | ((s32) arg0->unkC8 << 8));
    } else {
        var_a3 = arg0->unk7810 & (s32) arg0->unk1C0;
    }
    if ((arg0->unk8080 == 0) || (var_a3 != arg0->unk8084)) {
        arg0->unk7DB8->unk20D0 = var_a3;
        arg0->unk7DBC->unk20D0 = var_a3;
        arg0->unk8080 = 2;
        arg0->unk8084 = var_a3;
        return;
    }
    arg0->unk8080 = 2;
}

void __glCrmDownloadRasterColor(void *arg0) {
    f32 temp_f4;
    s32 var_a3;

    temp_f4 = arg0->unk180;
    if (arg0->unkC94 != 0) {
        var_a3 = (s32) arg0->unk18C | ((s32) temp_f4 << 0x18) | (((s32) arg0->unk184 << 0x10) | ((s32) arg0->unk188 << 8));
    } else {
        var_a3 = arg0->unk7810 & ((s64) temp_f4 << 0);
    }
    if ((arg0->unk8080 == 0) || (arg0->unk8084 != var_a3)) {
        arg0->unk7DB8->unk20D0 = var_a3;
        arg0->unk7DBC->unk20D0 = var_a3;
        arg0->unk8080 = 1;
        arg0->unk8084 = var_a3;
        return;
    }
    arg0->unk8080 = 1;
}

void __glCrmClampScaleAndDownload(void *arg0) {
    __glClampAndScaleColor();
    if ((arg0->unkC94 != 0) && (arg0->unk8088 == 0)) {
        __glCrmDownloadCurrentColor(arg0);
    }
}

void __glcrmim_Indexf(f32 fparg0) {
    s32 temp_a3;
    void *temp_a2;

    temp_a2 = *(void **)0x1010;
    temp_a2->unk1C0 = fparg0;
    if (temp_a2->unk8088 == 0) {
        temp_a3 = temp_a2->unk7810 & ((s64) fparg0 << 0);
        if ((temp_a2->unk8080 == 0) || (temp_a2->unk8084 != temp_a3)) {
            temp_a2->unk7DB8->unk20D0 = temp_a3;
            temp_a2->unk7DBC->unk20D0 = temp_a3;
            temp_a2->unk8084 = temp_a3;
        }
        temp_a2->unk8080 = 2;
    }
}

void __glcrmim_Indexd(f64 fparg0) {
    (*(void **)0x1010)->unk17B8->unk610((f32) fparg0);
}

void __glcrmim_Indexi(s32 arg0) {
    (*(void **)0x1010)->unk17B8->unk610((f32) arg0);
}

void __glcrmim_Indexs(s32 arg0) {
    (*(void **)0x1010)->unk17B8->unk610((f32) arg0);
}

void __glcrmim_Indexdv(f64 *arg0) {
    (*(void **)0x1010)->unk17B8->unk610((f32) *arg0, second half of f64);
}

void __glcrmim_Indexfv(f32 *arg0) {
    (*(void **)0x1010)->unk17B8->unk610(*arg0);
}

void __glcrmim_Indexiv(s32 *arg0) {
    (*(void **)0x1010)->unk17B8->unk610((f32) *arg0);
}

void __glcrmim_Indexsv(s16 *arg0) {
    (*(void **)0x1010)->unk17B8->unk610((f32) *arg0);
}

void __glcrmim_Indexub(s32 arg0) {
    (*(void **)0x1010)->unk17B8->unk610((f32) arg0);
}

void __glcrmim_Indexubv(u8 *arg0) {
    (*(void **)0x1010)->unk17B8->unk610((f32) *arg0);
}

void RasterPos2SetColor(void *arg0) {
    arg0->unk808C();
    if (arg0->unk8080 != 1) {
        return;
    }
    arg0->unk8080 = 0;
}

void RasterPos3SetColor(void *arg0) {
    arg0->unk8090();
    if (arg0->unk8080 != 1) {
        return;
    }
    arg0->unk8080 = 0;
}

void RasterPos4SetColor(void *arg0) {
    arg0->unk8094();
    if (arg0->unk8080 != 1) {
        return;
    }
    arg0->unk8080 = 0;
}

void ApplySetColor(void *arg0) {
    s64 sp0;

    sp0 = (s64) arg0;
    arg0->unk8098();
    if (arg0->unk8088 == 0) {
        __glCrmDownloadCurrentColor((void *) sp0);
    }
}

void __glCrmUnlayerColorProcs(void *arg0) {
    s32 *temp_t0;
    s32 *temp_v1;
    s32 temp_a3;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a3;
    s32 var_a6;
    s32 var_t2;

    temp_a3 = arg0->unk807C;
    if (temp_a3 != 0) {
        var_t2 = temp_a3 & 2;
        if (temp_a3 & 1) {
            arg0->unk3148 = (s32) arg0->unk808C;
            arg0->unk314C = (s32) arg0->unk8090;
            arg0->unk3150 = (s32) arg0->unk8094;
            var_t2 = arg0->unk807C & 2;
        }
        var_a3 = 0;
        var_a6 = 2;
        var_a0 = 0x2A;
        if (var_t2 != 0) {
            if (arg0->unkC94 != 0) {
                arg0->unk2EE0 = (s32) arg0->unk8098;
            }
            temp_a5 = arg0->unk17B8 + 0x588;
            do {
                var_a6 -= 1;
                var_a0 -= 1;
                temp_t0 = var_a3 + temp_a5;
                temp_a7 = *(var_a3 + &__glcrmim_colorDispatchTable);
                var_a3 += 4;
                *temp_t0 = temp_a7;
            } while (var_a6 != 0);
            do {
                *(var_a3 + temp_a5) = *(var_a3 + &__glcrmim_colorDispatchTable);
                *(var_a3 + (temp_a5 + 4)) = *(var_a3 + (&__glcrmim_colorDispatchTable + 4));
                *(var_a3 + (temp_a5 + 8)) = *(var_a3 + (&__glcrmim_colorDispatchTable + 8));
                *(var_a3 + (temp_a5 + 0xC)) = *(var_a3 + (&__glcrmim_colorDispatchTable + 0xC));
                *(var_a3 + (temp_a5 + 0x10)) = *(var_a3 + (&__glcrmim_colorDispatchTable + 0x10));
                *(var_a3 + (temp_a5 + 0x14)) = *(var_a3 + (&__glcrmim_colorDispatchTable + 0x14));
                var_a0 -= 8;
                *(var_a3 + (temp_a5 + 0x18)) = *(var_a3 + (&__glcrmim_colorDispatchTable + 0x18));
                temp_v1 = var_a3 + (temp_a5 + 0x1C);
                temp_v0 = *(var_a3 + (&__glcrmim_colorDispatchTable + 0x1C));
                var_a3 += 0x20;
                *temp_v1 = temp_v0;
            } while (var_a0 > 0);
        }
    }
}

void __glCrmLayerColorProcs(void *arg0) {
    s32 *temp_t0_2;
    s32 *temp_t8;
    s32 *temp_v1;
    s32 *temp_v1_2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_a6;
    s32 var_a6_2;

    temp_a3 = arg0->unk807C;
    var_a6 = 2;
    if (temp_a3 != 0) {
        if (temp_a3 & 1) {
            arg0->unk808C = (void *) arg0->unk3148;
            arg0->unk3148 = (void *) (&sub_0d940000 + 0x2F50);
            arg0->unk8090 = (void *) arg0->unk314C;
            arg0->unk314C = (void *) (&sub_0d940000 + 0x2FC0);
            arg0->unk8094 = (s32) arg0->unk3150;
            arg0->unk3150 = (s32) (M2C_ERROR(/* Read from unset register $t9 */) + 0x3030);
        }
        var_a0 = 0x2A;
        if (arg0->unk807C & 2) {
            temp_t0 = arg0->unk17B8;
            if (arg0->unkC94 != 0) {
                temp_a4 = temp_t0 + 0x588;
                var_a3 = 0;
                arg0->unk8098 = (void *) arg0->unk2EE0;
                arg0->unk2EE0 = (void *) (&sub_0d940000 + 0x30A0);
                do {
                    var_a6 -= 1;
                    var_a0 -= 1;
                    temp_t8 = var_a3 + temp_a4;
                    temp_t3 = *(var_a3 + &__glcrmim_colorRGBDownloadDT);
                    var_a3 += 4;
                    *temp_t8 = temp_t3;
                } while (var_a6 != 0);
                do {
                    *(var_a3 + temp_a4) = *(var_a3 + &__glcrmim_colorRGBDownloadDT);
                    *(var_a3 + (temp_a4 + 4)) = *(var_a3 + (&__glcrmim_colorRGBDownloadDT + 4));
                    *(var_a3 + (temp_a4 + 8)) = *(var_a3 + (&__glcrmim_colorRGBDownloadDT + 8));
                    *(var_a3 + (temp_a4 + 0xC)) = *(var_a3 + (&__glcrmim_colorRGBDownloadDT + 0xC));
                    *(var_a3 + (temp_a4 + 0x10)) = *(var_a3 + (&__glcrmim_colorRGBDownloadDT + 0x10));
                    *(var_a3 + (temp_a4 + 0x14)) = *(var_a3 + (&__glcrmim_colorRGBDownloadDT + 0x14));
                    var_a0 -= 8;
                    *(var_a3 + (temp_a4 + 0x18)) = *(var_a3 + (&__glcrmim_colorRGBDownloadDT + 0x18));
                    temp_v1 = var_a3 + (temp_a4 + 0x1C);
                    temp_v0 = *(var_a3 + (&__glcrmim_colorRGBDownloadDT + 0x1C));
                    var_a3 += 0x20;
                    *temp_v1 = temp_v0;
                } while (var_a0 > 0);
            } else {
                var_a6_2 = 2;
                var_a0_2 = 0x2A;
                temp_a5 = temp_t0 + 0x588;
                var_a3_2 = 0;
                do {
                    var_a6_2 -= 1;
                    var_a0_2 -= 1;
                    temp_t0_2 = var_a3_2 + temp_a5;
                    temp_a7 = *(var_a3_2 + &__glcrmim_colorCIDownloadDT);
                    var_a3_2 += 4;
                    *temp_t0_2 = temp_a7;
                } while (var_a6_2 != 0);
                do {
                    *(var_a3_2 + temp_a5) = *(var_a3_2 + &__glcrmim_colorCIDownloadDT);
                    *(var_a3_2 + (temp_a5 + 4)) = *(var_a3_2 + (&__glcrmim_colorCIDownloadDT + 4));
                    *(var_a3_2 + (temp_a5 + 8)) = *(var_a3_2 + (&__glcrmim_colorCIDownloadDT + 8));
                    *(var_a3_2 + (temp_a5 + 0xC)) = *(var_a3_2 + (&__glcrmim_colorCIDownloadDT + 0xC));
                    *(var_a3_2 + (temp_a5 + 0x10)) = *(var_a3_2 + (&__glcrmim_colorCIDownloadDT + 0x10));
                    *(var_a3_2 + (temp_a5 + 0x14)) = *(var_a3_2 + (&__glcrmim_colorCIDownloadDT + 0x14));
                    var_a0_2 -= 8;
                    *(var_a3_2 + (temp_a5 + 0x18)) = *(var_a3_2 + (&__glcrmim_colorCIDownloadDT + 0x18));
                    temp_v1_2 = var_a3_2 + (temp_a5 + 0x1C);
                    temp_v0_2 = *(var_a3_2 + (&__glcrmim_colorCIDownloadDT + 0x1C));
                    var_a3_2 += 0x20;
                    *temp_v1_2 = temp_v0_2;
                } while (var_a0_2 > 0);
            }
        }
        arg0->unk8080 = 0;
    }
}

void __glcrmim_FastColor4ub(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
    s32 temp_a7;
    void *temp_a6;

    temp_a6 = *(void **)0x1010;
    temp_a6->unk1B0 = (f32) (temp_a6 + (arg0 * 4))->unkEF0;
    temp_a6->unk1B4 = (f32) (temp_a6 + (arg1 * 4))->unkEF0;
    temp_a6->unk1B8 = (f32) (temp_a6 + (arg2 * 4))->unkEF0;
    temp_a6->unkCC = (f32) arg3;
    temp_a6->unkC8 = (f32) arg2;
    temp_a6->unkC4 = (f32) arg1;
    temp_a6->unkC0 = (f32) arg0;
    temp_a6->unk1BC = (f32) (temp_a6 + (arg3 * 4))->unkEF0;
    if (temp_a6->unk8088 == 0) {
        temp_a7 = (arg1 << 0x10) | (arg2 << 8) | ((arg0 << 0x18) | arg3);
        if ((temp_a6->unk8080 == 0) || (temp_a7 != temp_a6->unk8084)) {
            temp_a6->unk7DB8->unk20D0 = temp_a7;
            temp_a6->unk7DBC->unk20D0 = temp_a7;
            temp_a6->unk8084 = temp_a7;
        }
        temp_a6->unk8080 = 2;
    }
}

void __glcrmim_FastColor3ub(void) {
    __glcrmim_FastColor4ub(0xFFU);
}

void __glcrmim_FastColor3ubv(void *arg0) {
    __glcrmim_FastColor4ub(arg0->unk0, arg0->unk1, arg0->unk2, 0xFFU);
}

void __glcrmim_FastColor4ubv(void *arg0) {
    __glcrmim_FastColor4ub(arg0->unk0, arg0->unk1, arg0->unk2, arg0->unk3);
}

void __glCrmCalcAlphaColor(void *arg0, s32 arg1, void *arg2) {
    if (arg1 != 0) {
        arg2->unkAC = (f32) arg0->unk6E10;
        return;
    }
    arg2->unk9C = (f32) arg0->unk6DE8;
}
