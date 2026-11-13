? .L0d962df0(u64);                                  /* extern */
? __glBeginPoints();                                /* extern */
? __glBeginPolygon(s32);                            /* extern */
? __glBeginTStrip(s32);                             /* extern */
? __glCrmDownloadCurrentColor(s64);                 /* extern */
? __glCrmFillAATriangle(s64, u8, s64, void *, void *); /* extern */
? __glEndPrim();                                    /* extern */
void __glRasterPos2(s64 arg0, s32 arg1);            /* extern */
void __glRasterPos3(s64 arg0, s32 arg1);            /* extern */
void __glRasterPos4(s64 arg0, s32 arg1);            /* extern */
? __glReCompute2DMatrix(s64, s32);                  /* extern */
? __glSetError(void *, s32, void *, void *, void *); /* extern */
s32 __glim_RenderMode(?, void *, ?, ?, s32, void (*)(s64, s32), void (*)(s64, s32)); /* extern */
extern ? __glFirstLStripVertex;
extern ? __glMatValidateVbuf0N;
extern ? __glNop;
extern ? __glSecondLLoopVertex;
extern ? __glcrmim_vertexDispatchTable;
extern ? sub_0d960000;

void RemoveHalfPixelAdjust(void *arg0) {
    s64 sp0;

    arg0->unk6C4 = (f32) (arg0->unk6C4 + 0.5f);
    arg0->unk6BC = (f32) (arg0->unk6BC + 0.5f);
    sp0 = (s64) arg0;
    if (arg0->unk809C != 0) {
        __glReCompute2DMatrix(sp0, sp0->unk73DC + 0xB0);
        sp0->unk7424 = (f32) sp0->unk7414;
        sp0->unk7428 = (f32) ((f32) sp0->unk7418 - sp0->unkE5C);
    }
}

void RestoreHalfPixelAdjust(void *arg0) {
    s64 sp0;

    arg0->unk6C4 = (f32) (arg0->unk6C4 + -0.5f);
    arg0->unk6BC = (f32) (arg0->unk6BC + -0.5f);
    sp0 = (s64) arg0;
    if (arg0->unk809C != 0) {
        __glReCompute2DMatrix(sp0, sp0->unk73DC + 0xB0);
        sp0->unk7428 = (f32) ((f32) sp0->unk7418 + -0.5f);
        sp0->unk7424 = (f32) ((f32) sp0->unk7414 + -0.5f);
    }
}

void __glcrmim_Begin(u64 arg0) {
    s64 sp18;
    s64 sp8;
    u64 sp0;
    s32 temp_a2;
    u8 temp_a1;
    void *temp_a2_2;
    void *temp_a3;
    void *temp_a4;

    temp_a2 = *(s32 *)0x1018;
    temp_a3 = *(void **)0x1010;
    if (temp_a2 != 0) {
        sp0 = arg0;
        sp8 = (s64) temp_a3;
        if (temp_a2 != 2) {
            __glSetError((void *)0x502, temp_a2, temp_a3);
        } else {
            sp8->unk2E08(sp8, temp_a2, temp_a3);
            *(void *)0x1018 = 0;
            .L0d962df0(sp0);
        }
    } else {
        temp_a4 = arg0 + temp_a3;
        temp_a2_2 = temp_a3 + 0x10000;
        if (arg0 < 0xAU) {
            temp_a3->unk80D4 = (s32) arg0;
            temp_a1 = temp_a4->unk80DC;
            sp8 = (s64) temp_a3;
            sp0 = arg0;
            if (temp_a1 != 0) {
                sp18 = (s64) temp_a2_2;
                __glCrmFillAATriangle(sp8, temp_a1, (s64) temp_a2_2, temp_a3, temp_a4);
            }
            if ((temp_a3->unk807C & 2) && (temp_a3->unk8080 != 2)) {
                __glCrmDownloadCurrentColor(sp8);
            }
            sp8->unk7DB0 = 2;
            *(void *)0x1018 = 1;
            (sp8 + (sp0 * 4))->unk2EFC(sp8);
        } else {
            __glSetError((void *)0x500, 0x10000, temp_a2_2, temp_a3, temp_a4);
        }
    }
}

void __glcrmim_End(void) {
    s32 temp_a0;
    void *temp_s0;

    temp_a0 = *(s32 *)0x1018;
    temp_s0 = *(void **)0x1010;
    if ((temp_a0 != 0) && (temp_a0 != 2)) {
        __glSetError(temp_s0);
        *(void *)0x1018 = 0;
        if ((temp_s0->unk80D4 + temp_s0)->unk80DC != 0) {
            __glCrmFillAATriangle((s64) temp_s0);
        }
    } else {
        __glSetError((void *)0x502);
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c], gap at: 0x8. */
void __glCrmRect(void *arg0, f32 fparg1, f64 fparg2, f64 fparg3, f64 fparg4) {
    ? (*temp_s8)(?, f64);

    unksp8 = fparg4;
    unksp10 = fparg3;
    unksp18 = fparg2;
    if (arg0->unk80E3 != 0) {
        __glCrmFillAATriangle();
    }
    if ((arg0->unk807C & 2) && (arg0->unk8080 != 2)) {
        __glCrmDownloadCurrentColor((s64) arg0);
    }
    arg0->unk80D4 = 7;
    arg0->unk2F18(arg0);
    temp_s8 = arg0->unk17B8->unk530;
    temp_s8(second half of f64, unksp18);
    temp_s8(second half of f64, unksp18);
    temp_s8(second half of f64, unksp8);
    temp_s8(second half of f64, unksp8);
    arg0->unk2F24(arg0);
    if (arg0->unk80E3 != 0) {
        __glCrmFillAATriangle((s64) arg0);
    }
}

void crmAdjustPolygonPoint(void *arg0, void *arg1) {
    arg1->unk84 = (f32) (arg1->unk84 + 0.5f);
    arg1->unk80 = (f32) (arg1->unk80 + 0.5f);
    arg0->unk80E8();
    arg1->unk84 = (f32) (arg1->unk84 + -0.5f);
    arg1->unk80 = (f32) (arg1->unk80 + -0.5f);
}

void crmAdjustPolygonLine(void *arg0, void *arg1, void *arg2) {
    s64 sp18;

    arg1->unk84 = (f32) (arg1->unk84 + 0.5f);
    arg1->unk80 = (f32) (arg1->unk80 + 0.5f);
    arg2->unk84 = (f32) (arg2->unk84 + 0.5f);
    arg2->unk80 = (f32) (arg2->unk80 + 0.5f);
    sp18 = (s64) arg2;
    arg0->unk80EC();
    arg1->unk84 = (f32) (arg1->unk84 + -0.5f);
    arg1->unk80 = (f32) (arg1->unk80 + -0.5f);
    sp18->unk84 = (f32) (sp18->unk84 + -0.5f);
    sp18->unk80 = (f32) (sp18->unk80 + -0.5f);
}

void crmAdjustPolygonFill(void *arg0, void *arg1, void *arg2, void *arg3) {
    s64 sp20;
    s64 sp18;

    arg1->unk84 = (f32) (arg1->unk84 + 0.5f);
    arg1->unk80 = (f32) (arg1->unk80 + 0.5f);
    arg2->unk84 = (f32) (arg2->unk84 + 0.5f);
    arg2->unk80 = (f32) (arg2->unk80 + 0.5f);
    arg3->unk84 = (f32) (arg3->unk84 + 0.5f);
    arg3->unk80 = (f32) (arg3->unk80 + 0.5f);
    sp20 = (s64) arg2;
    sp18 = (s64) arg3;
    arg0->unk80F0();
    arg1->unk84 = (f32) (arg1->unk84 + -0.5f);
    arg1->unk80 = (f32) (arg1->unk80 + -0.5f);
    sp20->unk84 = (f32) (sp20->unk84 + -0.5f);
    sp20->unk80 = (f32) (sp20->unk80 + -0.5f);
    sp18->unk84 = (f32) (sp18->unk84 + -0.5f);
    sp18->unk80 = (f32) (sp18->unk80 + -0.5f);
}

void crmEndPolygonMode(void *arg0) {
    ? (*temp_at)();
    s32 temp_a1;

    temp_at = arg0->unk80AC;
    unksp8 = (s64) arg0;
    arg0->unk2F24 = temp_at;
    temp_at();
    temp_a1 = arg0->unk80D8;
    switch (temp_a1) {                              /* irregular */
    case 0x1B02:
        unksp8->unk2F30 = (s32) arg0->unk80F0;
        return;
    case 0x1B00:
        unksp8->unk30D0 = (s32) arg0->unk80E8;
        return;
    case 0x1B01:
        unksp8->unk30B8 = (s32) arg0->unk80EC;
        return;
    }
}

void __glCrmBeginPolygonMode(void *arg0) {
    s32 temp_a2;
    s32 temp_a2_2;

    temp_a2 = arg0->unk80D4;
    switch (temp_a2) {                              /* switch 1; irregular */
    case 9:                                         /* switch 1 */
        __glBeginPolygon(temp_a2);
        break;
    case 5:                                         /* switch 1 */
        __glBeginTStrip(temp_a2);
        break;
    case 6:                                         /* switch 1 */
        (? (*)(s32))6(temp_a2);
        break;
    case 4:                                         /* switch 1 */
        (? (*)(s32))6(temp_a2);
        break;
    case 8:                                         /* switch 1 */
        (? (*)(s32))6(temp_a2);
        break;
    case 7:                                         /* switch 1 */
        (? (*)(s32))6(temp_a2);
        break;
    }
    temp_a2_2 = arg0->unk80D8;
    switch (temp_a2_2) {                            /* switch 2; irregular */
    default:                                        /* switch 2 */
        arg0->unk80AC = (void *) arg0->unk2F24;
        arg0->unk2F24 = (void *) (&sub_0d960000 + 0x3310);
        return;
    case 0x1B02:                                    /* switch 2 */
        arg0->unk80F0 = (void *) arg0->unk2F30;
        arg0->unk2F30 = (void *) (&sub_0d960000 + 0x3220);
        arg0->unk80AC = (void *) arg0->unk2F24;
        arg0->unk2F24 = (void *) (&sub_0d960000 + 0x3310);
        return;
    case 0x1B00:                                    /* switch 2 */
        arg0->unk80E8 = (void *) arg0->unk30D0;
        arg0->unk30D0 = (void *) (&sub_0d960000 + 0x30E0);
        /* Duplicate return node #9. Try simplifying control flow for better match */
        arg0->unk80AC = (void *) arg0->unk2F24;
        arg0->unk2F24 = (void *) (&sub_0d960000 + 0x3310);
        return;
    case 0x1B01:                                    /* switch 2 */
        arg0->unk80EC = (void *) arg0->unk30B8;
        arg0->unk30B8 = (void *) (&sub_0d960000 + 0x3160);
        /* Duplicate return node #9. Try simplifying control flow for better match */
        arg0->unk80AC = (void *) arg0->unk2F24;
        arg0->unk2F24 = (void *) (&sub_0d960000 + 0x3310);
        return;
    }
}

void __glCrmRasterPos2(s64 arg0, s32 arg1) {
    __glCrmFillAATriangle();
    __glRasterPos2(arg0, arg1);
    __glCrmFillAATriangle(arg0);
}

void __glCrmRasterPos3(s64 arg0, s32 arg1) {
    __glCrmFillAATriangle();
    __glRasterPos3(arg0, arg1);
    __glCrmFillAATriangle(arg0);
}

void __glCrmRasterPos4(s64 arg0, s32 arg1) {
    __glCrmFillAATriangle();
    __glRasterPos4(arg0, arg1);
    __glCrmFillAATriangle(arg0);
}

s32 __glcrmim_RenderMode(s32 arg0, s32 arg5, void (*arg6)(s64, s32), void (*arg7)(s64, s32)) {
    s32 var_a5;
    void (*var_a6)(s64, s32);
    void (*var_a7)(s64, s32);
    void *temp_a2;

    var_a5 = arg5;
    var_a6 = arg6;
    var_a7 = arg7;
    temp_a2 = *(void **)0x1010;
    if (*(s32 *)0x1018 != 1) {
        switch (arg0) {                             /* irregular */
        default:
            __glSetError((void *)0x500, 0x1C01, temp_a2, (void *)0x1C00, (void *)0x1C02);
            return 0;
        case 0x1C01:
        case 0x1C02:
            var_a5 = temp_a2->unkC84;
            if (var_a5 == 0x1C00) {
                var_a6 = __glRasterPos2;
                var_a7 = __glRasterPos3;
                temp_a2->unk3150 = __glRasterPos4;
                temp_a2->unk314C = __glRasterPos3;
                temp_a2->unk3148 = __glRasterPos2;
                temp_a2->unk6C4 = (f32) (temp_a2->unk6C4 + 0.5f);
                temp_a2->unk6BC = (f32) (temp_a2->unk6BC + 0.5f);
            }
            return __glim_RenderMode(0x1C01, temp_a2, 0x1C00, 0x1C02, var_a5, var_a6, var_a7);
        case 0x1C00:
            if (temp_a2->unkC84 != 0x1C00) {
                temp_a2->unk3148 = __glCrmRasterPos2;
                temp_a2->unk314C = __glCrmRasterPos3;
                temp_a2->unk3150 = __glCrmRasterPos4;
                temp_a2->unk6C4 = (f32) (temp_a2->unk6C4 + -0.5f);
                temp_a2->unk6BC = (f32) (temp_a2->unk6BC + -0.5f);
            }
            /* Duplicate return node #6. Try simplifying control flow for better match */
            return __glim_RenderMode(0x1C01, temp_a2, 0x1C00, 0x1C02, var_a5, var_a6, var_a7);
        }
    } else {
        __glSetError((void *)0x502, 0x1C01, temp_a2, (void *)0x1C02);
        return 0;
    }
}

void FirstLLoopVertex(void *arg0, void *arg1) {
    if (arg0->unkC94 != 0) {
        arg1->unk9C = (f32) arg0->unkCC;
        arg1->unk98 = (f32) arg0->unkC8;
        arg1->unk94 = (f32) arg0->unkC4;
        arg1->unk90 = (f32) arg0->unkC0;
        arg0->unk2EAC = &__glSecondLLoopVertex;
        arg0->unk3190 = (void *) (arg1 + 0xC0);
        return;
    }
    arg1->unk90 = (f32) arg0->unk1C0;
    arg0->unk2EAC = &__glSecondLLoopVertex;
    arg0->unk3190 = (void *) (arg1 + 0xC0);
}

void EndLLoop(void *arg0, s32 arg3) {
    ? *temp_a2;
    f32 temp_f4;
    s32 var_a0;
    s32 var_a3;
    void *var_a4;

    var_a3 = arg3;
    temp_a2 = arg0->unk2EAC;
    if (temp_a2 != (&sub_0d960000 + 0x37F0)) {
        if (temp_a2 != &__glSecondLLoopVertex) {
            temp_f4 = arg0->unk3238;
            if (arg0->unkC94 != 0) {
                var_a3 = (s32) temp_f4 << 0x18;
                var_a0 = (s32) arg0->unk3244 | var_a3 | (((s32) arg0->unk323C << 0x10) | ((s32) arg0->unk3240 << 8));
            } else {
                var_a0 = (s64) temp_f4 << 0;
            }
            var_a4 = arg0->unk8084;
            if (var_a4 != var_a0) {
                var_a4 = arg0->unk7DB8;
                var_a3 = arg0->unk7DBC;
                var_a4->unk20D0 = var_a0;
                var_a3->unk20D0 = var_a0;
                arg0->unk8084 = (void *) var_a0;
            }
            arg0->unk30C4(arg0, arg0->unk3194, arg0 + 0x31A8, var_a3, var_a4, __glEndPrim);
            __glCrmDownloadCurrentColor((s64) arg0);
        }
    }
    arg0->unk2F24 = __glEndPrim;
    arg0->unk2EAC = &__glNop;
}

void __glCrmBeginLLoop(void *arg0) {
    arg0->unk3190 = (s32) (arg0 + 0x31A8);
    arg0->unk7498 = 0;
    arg0->unk2EF4 = &__glMatValidateVbuf0N;
    arg0->unk2F24 = (void *) (&sub_0d960000 + 0x3860);
    arg0->unk2EAC = (void *) (&sub_0d960000 + 0x37F0);
}

void __glCrmBeginLStrip(void *arg0) {
    arg0->unk7DB0 = -3;
    arg0->unk3190 = (void *) (arg0 + 0x31A8);
    arg0->unk7498 = 0;
    arg0->unk2EF4 = &__glMatValidateVbuf0N;
    arg0->unk2EAC = &__glFirstLStripVertex;
}

void SetHoldVertex(void *arg0) {
    ? (*temp_at)(?);

    arg0->unk8088 = 1;
    temp_at = arg0->unk80A8;
    arg0->unk2EAC = temp_at;
    temp_at(1);
}

void EndPolygon(void *arg0) {
    ? (*temp_at)();

    arg0->unk8088 = 0;
    temp_at = arg0->unk80AC;
    arg0->unk2F24 = temp_at;
    temp_at();
    __glCrmDownloadCurrentColor((s64) arg0);
}

void __glCrmBeginPolygon(void *arg0) {
    __glBeginPolygon();
    arg0->unk80A8 = (void *) arg0->unk2EAC;
    arg0->unk2EAC = (void *) (&sub_0d960000 + 0x39F0);
    arg0->unk80AC = (void *) arg0->unk2F24;
    arg0->unk2F24 = (void *) (&sub_0d960000 + 0x3A40);
}

void EndPoints(void *arg0) {
    s32 *temp_ra;
    s32 temp_a3;
    s32 temp_t0;
    s32 temp_t9;
    s32 var_a1;
    s32 var_a2;
    u32 temp_a1;

    __glEndPrim();
    var_a2 = 0x18;
    var_a1 = 0;
    if (arg0->unk700 & 0x400) {
        temp_t0 = arg0->unk80A4;
        if (temp_t0 != &__glcrmim_vertexDispatchTable) {
            temp_a3 = arg0->unk17B8;
            do {
                *(var_a1 + (temp_a3 + 0x528)) = *(var_a1 + temp_t0);
                *(var_a1 + (temp_a3 + 0x52C)) = *(var_a1 + (temp_t0 + 4));
                var_a2 -= 4;
                *(var_a1 + (temp_a3 + 0x530)) = *(var_a1 + (temp_t0 + 8));
                temp_ra = var_a1 + (temp_a3 + 0x534);
                temp_t9 = *(var_a1 + (temp_t0 + 0xC));
                var_a1 += 0x10;
                *temp_ra = temp_t9;
            } while (var_a2 > 0);
            arg0->unk2F24 = __glEndPrim;
        }
    }
    if (arg0->unk7D58 & 0x8000) {
        temp_a1 = arg0->unk7E68;
        if (((temp_a1 >> 7) & 7) || (temp_a1 & 0x40)) {
            arg0->unk7DB8->unk2110 = temp_a1;
            arg0->unk7DBC->unk2110 = (u32) arg0->unk7E68;
            arg0->unk2F24 = __glEndPrim;
        }
    }
}

void __glCrmBeginPoints(void *arg0) {
    u32 sp0;
    s32 *temp_ra;
    s32 temp_t2;
    s32 temp_t9;
    s32 var_a1;
    s32 var_a2;
    u32 temp_a0;
    u32 temp_a1;

    __glBeginPoints();
    var_a2 = 0x18;
    var_a1 = 0;
    if ((arg0->unk700 & 0x400) && (arg0->unk80A4 != &__glcrmim_vertexDispatchTable)) {
        temp_t2 = arg0->unk17B8;
        do {
            *(var_a1 + (temp_t2 + 0x528)) = *(var_a1 + &__glcrmim_vertexDispatchTable);
            *(var_a1 + (temp_t2 + 0x52C)) = *(var_a1 + (&__glcrmim_vertexDispatchTable + 4));
            var_a2 -= 4;
            *(var_a1 + (temp_t2 + 0x530)) = *(var_a1 + (&__glcrmim_vertexDispatchTable + 8));
            temp_ra = var_a1 + (temp_t2 + 0x534);
            temp_t9 = *(var_a1 + (&__glcrmim_vertexDispatchTable + 0xC));
            var_a1 += 0x10;
            *temp_ra = temp_t9;
        } while (var_a2 > 0);
        arg0->unk2F24 = (void *) (&sub_0d960000 + 0x3B10);
    }
    if (arg0->unk7D58 & 0x8000) {
        temp_a1 = arg0->unk7E68;
        if (((temp_a1 >> 7) & 7) || (temp_a1 & 0x40)) {
            sp0 = arg0->unk7E68;
            temp_a0 = sp0 & ~0x3C0;
            sp0 = temp_a0;
            arg0->unk7DB8->unk2110 = temp_a0;
            arg0->unk7DBC->unk2110 = sp0;
            arg0->unk2F24 = (void *) (&sub_0d960000 + 0x3B10);
        }
    }
}
