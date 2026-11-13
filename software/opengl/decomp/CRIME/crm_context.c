? __glChangeWindowSize(void *, s32, s32, s32, s32); /* extern */
? *__glContextSetColorScales(void *, ?, void *, s64, u8, u8, s32, s32); /* extern */
? __glCrmEnableAlphaTest();                         /* extern */
? __glCrmEnableBlend(void *);                       /* extern */
? __glCrmEnableDepthTest(void *);                   /* extern */
? __glCrmEnableDither(void *);                      /* extern */
? __glCrmEnableFogTest(void *);                     /* extern */
? __glCrmEnableLogicOp(void *);                     /* extern */
? __glCrmEnableStencilTest(void *);                 /* extern */
? __glCrmFreeTextureState(void *);                  /* extern */
? __glCrmInitAccum64(void *, void *);               /* extern */
? __glCrmInitCI(void *, void *);                    /* extern */
? __glCrmInitDepth(void *, void *);                 /* extern */
? __glCrmInitRGB(void *, void *);                   /* extern */
? __glCrmInitStencil(void *, void *);               /* extern */
? __glCrmPassAlphaFunc(void *);                     /* extern */
? __glCrmPassBlendColor(void *);                    /* extern */
? __glCrmPassBlendFunc(void *);                     /* extern */
? __glCrmPassColorMask(void *);                     /* extern */
? __glCrmPassDepthFunc(void *, s32, u8, void *, s32, void *, s32, s32); /* extern */
? __glCrmPassDepthMask(void *);                     /* extern */
? __glCrmPassFog(void *);                           /* extern */
? __glCrmPassLogicOp(void *);                       /* extern */
? __glCrmPassStencilMask(void *);                   /* extern */
? __glCrmPassStencilMode(void *);                   /* extern */
? __glCrmResetTextureState(void *);                 /* extern */
? __glCrmShadeModel(void *);                        /* extern */
? __glDestroyContext(void *);                       /* extern */
? __glEarlyInitContext(s64);                        /* extern */
? __glFreeBufData(void *);                          /* extern */
? __glInitAccum64(void *, void *);                  /* extern */
? __glInitDepth(void *, void *);                    /* extern */
? __glInitStencil8(void *, void *);                 /* extern */
? __glLoseCurrentBuffers(void *, s32);              /* extern */
s32 __glMakeCurrentBuffers(void *, void *, void *); /* extern */
s32 __glPixmapMakeCurrent(void *, s64);             /* extern */
? __glShareDlist(s64, s64, s64);                    /* extern */
s64 _dmBufferGetDmsEvent(s64);                      /* extern */
s32 _dmBufferGetNoECC(s64);                         /* extern */
s32 dmBufferAttach(s64);                            /* extern */
s32 dmBufferFree(s32);                              /* extern */
s64 dmBufferGetSize(s64, s32, s32, s32, s64, s32);  /* extern */
s32 dmParamsCopyAllElems(s64, s32);                 /* extern */
? dmParamsDestroy(s32);                             /* extern */
s64 dmParamsGetEnum(s32, void *, ?, ?);             /* extern */
s64 dmParamsGetInt(s32, void *);                    /* extern */
s32 dmParamsIsPresent(s32, void *);                 /* extern */
? fprintf(void *, void *);                          /* extern */
void *getenv(void *, ? *, ? *, ? *, ? *, ? *, void *, ? *); /* extern */
? ioctl();                                          /* extern */
? memcpy(void *, void *, ?);                        /* extern */
? scaninvent(void *, void *);                       /* extern */
s32 sub_0d940000(void *, ? *, void *, u32);         /* extern */
? viceCloseDev(void *);                             /* extern */
extern ? __glBeginLLoop;
extern ? __glBeginLStrip;
extern ? __glBeginLines;
extern ? __glBeginPoints;
extern ? __glBeginPolygon;
extern ? __glBeginQStrip;
extern ? __glBeginQuads;
extern ? __glBeginTStrip;
extern ? __glBeginTriangles;
extern ? __glClipPolygon;
extern ? __glColorTableSGI;
extern ? __glComputeClipBox;
extern ? __glComputeInverseTranspose;
extern ? __glConvertStipple;
extern ? __glCopyMatrix;
extern ? __glCrimeDlistOps;
extern ? __glCrmFetchSPBuffColor;
extern ? __glCrmFetchSPBuffRed;
extern ? __glCrmFetchSPBuffRed_8bit;
extern ? __glCrmInitTextureObject;
extern ? __glCrmPickAllProcs;
extern ? __glCrmPickClipProcs;
extern ? __glCrmPickLineProcs;
extern ? __glCrmPickPixelProcs;
extern ? __glCrmPickPointProcs;
extern ? __glCrmPickRenderBitmapProcs;
extern ? __glCrmPickSpanProcs;
extern ? __glCrmPickStoreProcs;
extern ? __glCrmPickTextureProcs;
extern ? __glCrmPickTriangleProcs;
extern ? __glCrmPickVertexProcs;
extern ? __glCrmRasterPos2;
extern ? __glCrmRasterPos3;
extern ? __glCrmRasterPos4;
extern ? __glCrmReadSPBuffColor;
extern ? __glCrmReadSPBuffRed;
extern ? __glCrmSpanReadColor;
extern ? __glCrmSpanReadColor2;
extern ? __glCrmSpanReadDepth;
extern ? __glCrmSpanReadDepth2;
extern ? __glCrmSpanReadStencil;
extern ? __glCrmSpanReadStencil2;
extern ? __glCrmSpanRenderCI;
extern ? __glCrmSpanRenderCI2;
extern ? __glCrmSpanRenderDepth;
extern ? __glCrmSpanRenderDepth2;
extern ? __glCrmSpanRenderRGBA;
extern ? __glCrmSpanRenderRGBA2;
extern ? __glCrmSpanRenderStencil2;
extern ? __glDoEvalCoord1;
extern ? __glDoEvalCoord2;
extern ? __glDrawBitmap;
extern ? __glEndPrim;
extern ? __glEvenTStripVertex;
extern ? __glFirstLinesVertex;
extern ? __glGenericDlistCompiler;
extern ? __glGenericDlistOptimizer;
extern ? __glGenericPickBlendProcs;
extern ? __glGenericPickColorMaterialProcs;
extern ? __glGenericPickCopyImage;
extern ? __glGenericPickDepthProcs;
extern ? __glGenericPickInvTransposeProcs;
extern ? __glGenericPickMatrixProcs;
extern ? __glGenericPickMvpMatrixProcs;
extern ? __glGenericPickParameterClipProcs;
extern ? __glGenericPickReadImage;
extern ? __glGenericPickTransformProcs;
extern ? __glInvertTransposeMatrix;
extern ? __glListExecTable;
extern ? __glLoadIdentityModelViewMatrix;
extern ? __glMakeIdentity;
extern ? __glMipsMultMatrix;
extern ? __glMipsNormalize;
extern ? __glNop;
extern ? __glOddTStripVertex;
extern ? __glPopModelViewMatrix;
extern ? __glPushModelViewMatrix;
extern ? __glReadSpan;
extern ? __glSecondLinesVertex;
extern ? __gl_GenericDlOps;
extern ? __gl_varray_funcs;
extern ? __glcrmim_colorDispatchTable;
extern ? __glcrmim_dispatchTable;
extern ? __glcrmim_normalDispatchTable;
extern ? __glcrmim_rasterPosDispatchTable;
extern ? __glcrmim_rectDispatchTable;
extern ? __glcrmim_texCoordDispatchTable;
extern ? __glcrmim_vertexDispatchTable;
extern ? __glcrmlc_colorDispatchTable;
extern ? __glcrmlc_dispatchTable;
extern ? __glcrmlc_normalDispatchTable;
extern ? __glcrmlc_rectDispatchTable;
extern ? __glcrmlc_texCoordDispatchTable;
extern ? __glcrmlc_vertexDispatchTable;
extern ? __iob;
extern ? sub_0da40000;
extern ? sub_0da50000;

void __glCrmIoctl(void) {
    ioctl();
}

s32 crmScanVice(void *arg0, s32 *arg1) {
    if ((arg0->unk4 != 0xF) || (arg0->unk8 != 3)) {
        return 0;
    }
    *arg1 = arg0->unk14;
    return 1;
}

void GetBoardInfo(void *arg0) {
    arg0->unk80F4 = -1;
    if (__glCrmIoctl(arg0->unk7B10, (void *)0x66, sp, 0U, arg0 + 0x7B18, 0x1F0U) < 0) {
        M2C_ERROR(/* Read from unset register $t9 */)(&sub_0da40000 + 0x18A8);
        arg0->unk7B42 = 0;
        arg0->unk7B41 = 0;
        arg0->unk7B40 = 0;
    }
    scaninvent(sub_0d940000 + 0x37D0, arg0 + 0x80F4);
}

void __glCrmAllocAccum(void *arg0, void *arg1) {
    arg0->unk7AB8(arg1, arg0->unkE74, arg0->unkE78);
}

void CheckViewport(void *arg0) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    f32 temp_f10;
    f32 temp_f5;
    f32 temp_f6;
    f32 var_f12;
    f32 var_f13;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a3_2;
    s32 temp_a5;
    s32 temp_s1;
    s32 var_a0;
    s64 temp_a3_3;
    s64 temp_a4;
    u8 temp_a0;
    void *temp_a3;

    temp_a3 = arg0->unk7DBC;
    temp_a5 = arg0->unk69C;
    temp_s1 = arg0->unk698;
    if (temp_a3->unk2284 & 1) {
        var_a0 = temp_a5;
        if (temp_s1 != 0) {

        } else if (temp_a5 == 0) {
            if (arg0->unk6A4 == temp_a3->unk227E) {
                var_a0 = temp_a5 + 0x14;
                arg0->unk69C = var_a0;
            }
        }
    } else {
        var_a0 = arg0->unk69C;
    }
    temp_a3_2 = arg0->unk6A0;
    temp_a1 = arg0->unkE78;
    temp_f10 = arg0->unkDD4;
    var_f12 = M2C_ERROR(/* unknown instruction: madd.s $f12, $f12, $f11, $f10 */);
    var_f13 = arg0->unkE5C;
    sp0 = (s64) temp_a1;
    arg0->unk6C0 = (f32) -((f32) arg0->unk6A4 * temp_f10);
    arg0->unk6B8 = (f32) ((f32) temp_a3_2 * temp_f10);
    temp_f5 = arg0->unkE58 + (((f32) temp_a1 - var_f13) - var_f12);
    temp_f6 = arg0->unkE54 + M2C_ERROR(/* unknown instruction: madd.s $f7, $f7, $f9, $f10 */);
    arg0->unk6C4 = temp_f5;
    arg0->unk6BC = temp_f6;
    if (arg0->unkC84 == 0x1C00) {
        var_f13 = temp_f5 + -0.5f;
        var_f12 = temp_f6 + -0.5f;
        arg0->unk6C4 = var_f13;
        arg0->unk6BC = var_f12;
    }
    temp_a4 = var_a0 + arg0->unk6A4;
    sp8 = temp_a4;
    temp_a3_3 = temp_a3_2 + temp_s1;
    sp18 = temp_a3_3;
    temp_a2 = arg0->unkE74;
    sp10 = (s64) temp_a2;
    arg0->unk2E8C(arg0, temp_a1, temp_a2, temp_a3_3, temp_a4, temp_a5, var_f12, var_f13);
    temp_a0 = arg0->unk748C;
    if ((temp_s1 >= 0) && (var_a0 >= 0) && (sp10 >= sp18) && (sp0 >= sp8)) {
        arg0->unk748C = 1U;
        if (temp_a0 != 1) {
            /* Duplicate return node #13. Try simplifying control flow for better match */
            *(s32 *)0x1018 = 2;
            arg0->unk2DEC = (s32) (arg0->unk2DEC | 1);
        }
    } else {
        arg0->unk748C = 0U;
        if (temp_a0 != 0) {
            *(s32 *)0x1018 = 2;
            arg0->unk2DEC = (s32) (arg0->unk2DEC | 1);
        }
    }
}

void FindWindowSize(void *arg0) {
    s32 spC;
    s32 sp8;
    ? sp4;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a4;
    void *temp_a2;
    void *temp_t1;

    temp_a2 = arg0->unk7D38;
    temp_a1 = temp_a2->unk0;
    if (temp_a1 != 5) {
        if (temp_a1 == 4) {
            if ((arg0->unk7D48 == 0) || (arg0->unkE74 == 0) || (arg0->unkE78 == 0)) {
                arg0->unk7D48 = 1;
                goto block_6;
            }
        } else {
block_6:
            arg0->unk1C(arg0, sp, &sp4, &sp8, &spC);
            goto block_7;
        }
    } else if ((arg0->unk7D48 == 0) || (arg0->unkE74 == 0) || (arg0->unkE78 == 0)) {
        temp_t1 = temp_a2->unk1C;
        sp8 = temp_t1->unk8C;
        spC = temp_t1->unk90;
        arg0->unk7D48 = 1;
block_7:
        temp_a3 = arg0->unkE74;
        temp_a4 = arg0->unkE78;
        if ((temp_a3 != sp8) || (temp_a4 != spC)) {
            __glChangeWindowSize(arg0, sp8, spC, temp_a3, temp_a4);
        }
    }
}

void ApplyViewport(void *arg0) {
    f32 temp_f20;
    f32 temp_f4;

    temp_f20 = (f32) arg0->unkE78;
    __glCrmAllocAccum();
    if (arg0->unk812C != 0) {
        arg0->unkE78 = (s32) arg0->unk7B3A;
        arg0->unkE74 = (s32) arg0->unk7B38;
    }
    __glCrmAllocAccum(arg0);
    temp_f4 = (f32) arg0->unkE78;
    if (temp_f4 != temp_f20) {
        arg0->unk174 = (f32) (arg0->unk174 + (temp_f4 - temp_f20));
        if (arg0->unk7D58 & 0x100000) {
            sub_0d940000(arg0);
        }
    }
}

void ApplyScissor(void *arg0) {
    s32 spC;
    s32 sp8;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a6_2;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t1;
    s32 temp_t2;
    s32 var_a0;
    s32 var_a2;
    s32 var_a4;
    s32 var_a7;
    s32 var_t1;
    u32 temp_a1;
    u32 temp_a6;
    u8 temp_a2_2;
    void *temp_a3;
    void *temp_a5;

    temp_a3 = arg0->unk7DBC;
    temp_a6 = arg0->unk7D58;
    temp_a5 = arg0->unk7DB8;
    temp_t0 = (temp_a6 >> 0x14) & 1;
    if ((temp_a3->unk2284 & 1) && (arg0->unk9DC == 0)) {
        temp_a0 = arg0->unk9E0;
        if ((temp_a0 == 0) && (arg0->unk9E8 == temp_a3->unk227E)) {
            arg0->unk9E0 = (s32) (temp_a0 + 0x14);
        }
    }
    if (arg0->unk700 & 0x4000) {
        temp_t2 = arg0->unkE78;
        temp_t1 = arg0->unk9E0;
        temp_a4 = temp_t2 - temp_t1;
        temp_a7 = arg0->unk9DC;
        var_t1 = 0;
        temp_a2 = arg0->unk9E4 + temp_a7;
        var_a4 = (temp_a4 > 0x800) ? 0x800 : temp_a4;
        var_a7 = (temp_a7 < 0) ? 0 : temp_a7;
        var_a2 = (temp_a2 > 0x800) ? 0x800 : temp_a2;
        temp_a0_2 = temp_t2 - (arg0->unk9E8 + temp_t1);
        arg0->unk7D58 = (u32) (temp_a6 | 0x100000);
        var_a0 = (temp_a0_2 < 0) ? 0 : temp_a0_2;
        if (var_a7 == 0) {
            var_t1 = 0;
            if (var_a0 != 0) {

            } else if (arg0->unkE74 == var_a2) {
                var_t1 = ((temp_t2 ^ var_a4) == 0) ? 1 : 0;
            } else {
                var_t1 = 0;
            }
        }
    } else {
        var_a2 = 0x800;
        var_a4 = 0x800;
        var_a0 = 0;
        var_t1 = 0;
        arg0->unk7D58 = (u32) (temp_a6 & ~0x100000);
        var_a7 = 0;
    }
    temp_a6_2 = (0xFFFF0000 & ((sp0 & 0xFFFF) | ((var_a7 + 0x1000) << 0x10))) | ((var_a0 + 0x1000) & 0xFFFF);
    sp8 = temp_a6_2;
    spC = (0xFFFF0000 & ((sp4 & 0xFFFF) | ((var_a2 + 0x1000) << 0x10))) | ((var_a4 + 0x1000) & 0xFFFF);
    temp_a5->unk2048 = (f64) (second half of f64);
    temp_a3->unk2048 = (f64) sp8;
    if ((arg0->unk79FC != 0) && (temp_a2_2 = arg0->unk7A5C, (arg0->unk7A60 != 0))) {
        temp_a1 = arg0->unk7D58;
        temp_a1_2 = temp_a1 << 0xB;
        if (!(temp_a1 & 0x100000)) {
            if ((temp_t0 != 0) && (temp_a2_2 != 0)) {
                arg0->unk7A4C = 0;
                arg0->unk7A5C = 0U;
                __glCrmPassDepthFunc(arg0, temp_a1_2, temp_a2_2, temp_a3, var_a4, temp_a5, temp_a6_2, var_a7);
            }
        } else if (var_t1 != 0) {
            if ((temp_t0 != 0) && (arg0->unk7A5C != 0)) {
                arg0->unk7A4C = 0;
                arg0->unk7A5C = 0U;
                __glCrmPassDepthFunc(arg0, temp_a1_2, temp_a2_2, temp_a3, var_a4, temp_a5, temp_a6_2, var_a7);
            }
        } else if ((arg0->unk7A5C == 0) && (arg0->unk7A4C != arg0->unk7A50)) {
            __glCrmPassDepthFunc(arg0, (s32) (arg0 + 0x79FC), 0U, temp_a3, var_a4, temp_a5, temp_a6_2, var_a7);
            arg0->unk7A5C = 1U;
            __glCrmPassDepthFunc(arg0);
            arg0->unk7A50 = (s32) arg0->unk7A4C;
        }
    }
}

s32 crmGetBufMode(void *arg0, s32 arg1, s32 arg2, u32 *arg3) {
    void *sp0;
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a6_2;
    s32 temp_t2_2;
    s32 temp_t9;
    s32 var_a1;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a6_3;
    s32 var_t0;
    s32 var_t1;
    s32 var_v0;
    u32 temp_a2_2;
    u32 temp_a2_3;
    u32 temp_a2_4;
    u32 temp_a2_5;
    u32 temp_a2_6;
    u32 temp_t2;
    u32 var_a2;
    u32 var_a2_2;
    u32 var_a2_3;
    u32 var_a5;
    u8 temp_a6;

    if (arg1 != 0xC01) {
        if (arg1 == 0xC02) {
            sp0 = arg0 + 0xD30;
        }
    } else {
        sp0 = arg0 + 0xC90;
    }
    if (*arg0->unk7D38 != 1) {
        goto block_3;
    }
    var_t0 = 1;
    if (arg0->unkCE4 == 0) {

    } else {
block_3:
        var_t0 = 0;
    }
    if (*arg0->unk7D3C != 1) {
        goto block_5;
    }
    var_t1 = 1;
    if (arg0->unkD84 == 0) {

    } else {
block_5:
        var_t1 = 0;
    }
    var_v0 = 0x404;
    if (arg0->unk77C0 == arg2) {
        goto block_7;
    }
    if (arg0->unk77C4 == arg2) {
        var_v0 = 0x405;
        goto block_7;
    }
    if (arg2 == (arg0 + 0x79FC)) {
        goto block_43;
    }
    if (arg2 == (arg0 + 0x7984)) {
block_43:
        if ((arg1 == 0xC01) || (arg0->unkDD0 != 0)) {
            goto block_45;
        }
        if (!(var_t0 & 0xFF) || !(var_t1 & 0xFF)) {
            var_a2 = (*arg3 & ~0x1C00) | 0x400;
        } else {
block_45:
            var_a2 = (*arg3 & ~0x1C00) | 0x800;
        }
        *arg3 = var_a2;
        *arg3 = ((((((var_a2 & ~0x300) | 0x200) & ~0xF0) | 0x20) & ~0xC) | 8) & ~2 & ~1;
        return 0x1801;
    }
    if (arg2 == 0) {
        var_v0 = 0x405;
        if (arg1 == 0xC02) {
            if (arg0->unkD36 != 0) {
block_7:
                temp_t2 = *arg3 & ~0xF0;
                if (sp0->unk4 != 0) {
                    temp_a2 = sp0->unk34;
                    temp_a4 = sp0->unk2C + (sp0->unk28 + sp0->unk30);
                    var_a6 = (temp_a2 == 0) ? temp_a4 : (temp_a2 + temp_a4);
                    var_a2_2 = temp_t2 | 0x20;
                    if (var_a6 >= 9) {

                    } else {
                        var_a2_2 = temp_t2 | 0x10;
                    }
                    *arg3 = var_a2_2;
                } else {
                    var_a6 = sp0->unk24;
                    *arg3 = temp_t2;
                    var_a2_2 = temp_t2;
                }
                switch (var_a6) {                   /* irregular */
                case 16:
                    /* fallthrough */
                case 12:
                case 15:
                    var_a2_2 = (var_a2_2 & ~0xC) | 4;
                    *arg3 = var_a2_2;
                    break;
                case 32:
                    /* fallthrough */
                case 24:
                    var_a2_2 = (var_a2_2 & ~0xC) | 8;
                    *arg3 = var_a2_2;
                    break;
                case 8:
                    var_a2_2 &= ~0xC;
                    *arg3 = var_a2_2;
                    break;
                }
                temp_t9 = var_t1 & 0xFF;
                temp_t2_2 = var_t0 & 0xFF;
                if (((arg1 == 0xC01) ? temp_t2_2 : temp_t9) != 0) {
                    temp_a6 = arg0->unk7B47;
                    if (temp_a6 != 0x20) {
                        if (temp_a6 == 0x10) {
                            temp_a2_2 = (var_a2_2 & ~0x300) | 0x100;
                            *arg3 = temp_a2_2;
                            var_a6_2 = 0;
                            if (sp0->unk6 != 0) {
                                var_a6_2 = 0;
                                if (!((temp_a2_2 >> 2) & 3)) {
                                    var_a6_2 = 1;
                                }
                            }
                            var_a2_2 = (temp_a2_2 & ~2) | ((var_a6_2 & 1) * 2);
                            *arg3 = var_a2_2;
                        }
                    } else {
                        temp_a2_3 = (var_a2_2 & ~0x300) | 0x200;
                        *arg3 = temp_a2_3;
                        var_a6_3 = 0;
                        if (sp0->unk6 != 0) {
                            var_a6_3 = 0;
                            if (((temp_a2_3 >> 2) & 3) == 1) {
                                var_a6_3 = 1;
                            }
                        }
                        var_a2_2 = (temp_a2_3 & ~2) | ((var_a6_3 & 1) * 2);
                        *arg3 = var_a2_2;
                    }
                } else if ((sp0->unk6 != 0) && ((u32) ((var_a2_2 >> 2) & 3) < 2U)) {
                    temp_a2_4 = var_a2_2 | 2;
                    var_a2_2 = (temp_a2_4 & ~0x300) | (((((temp_a2_4 >> 2) & 3) + 1) & 3) << 8);
                    *arg3 = var_a2_2;
                } else {
                    temp_a2_5 = var_a2_2 & ~2;
                    var_a2_2 = (temp_a2_5 & ~0x300) | (((temp_a2_5 >> 2) & 3) << 8);
                    *arg3 = var_a2_2;
                }
                if (arg1 != 0xC01) {
                    if (arg0->unkDD0 != 0) {
                        goto block_25;
                    }
                    if ((temp_t2_2 == 0) || (temp_t9 == 0)) {
                        var_a2_3 = (-0x1C01 & var_a2_2) | 0x400;
                    } else {
block_25:
                        goto block_26;
                    }
                } else {
block_26:
                    var_a2_3 = -0x1C01 & var_a2_2;
                }
                *arg3 = var_a2_3;
                if (sp0->unk7 != 0) {
                    temp_a2_6 = var_a2_3 | 2;
                    *arg3 = temp_a2_6;
                    temp_a6_2 = arg0->unk764;
                    if ((temp_a6_2 != 0x400) && (temp_a6_2 != 0x402) && (temp_a6_2 != 0x406)) {
                        var_a2_3 = temp_a2_6 & ~1;
                    } else {
                        var_a2_3 = temp_a2_6 | 1;
                    }
                    *arg3 = var_a2_3;
                }
                if (sp0->unk6 != 0) {
                    if (arg1 != 0xC02) {
                        goto block_35;
                    }
                    if (arg0->unkDD0 == 0) {
                        var_a1 = arg0->unk7D34;
                    } else {
block_35:
                        var_a1 = arg0->unk7D30;
                    }
                    if (sp0->unk7 != 0) {
                        goto block_37;
                    }
                    if (var_a2_3 & 2) {
                        if (var_v0 != 0x404) {
                            goto block_75;
                        }
                        var_a5 = var_a2_3 | 1;
                        if (var_a1 != 0) {
                            goto block_98;
                        }
block_75:
                        if (var_v0 != 0x405) {
                            goto block_76;
                        }
                        if (var_a1 == 0) {
                            var_a5 = var_a2_3 | 1;
block_98:
                            *arg3 = var_a5;
                        } else {
block_76:
                            *arg3 = var_a2_3 & ~1;
                        }
                        return 0x408;
                    }
block_37:
                    if ((var_v0 == 0x405) && ((arg0->unkDD0 != 0) || ((temp_t2_2 != 0) && (temp_t9 != 0)))) {
                        *arg3 = (-0x1C01 & var_a2_3) | 0x400;
                        return var_v0;
                    }
                    /* Duplicate return node #47. Try simplifying control flow for better match */
                    return var_v0;
                }
                return var_v0;
            }
            return 0;
        }
        return 0;
    }
    return 0;
}

void __glCrmGetSrcBufMode(void *arg1, void *arg2) {
    __glCrmAllocAccum((void *)0xC02, arg1, arg2);
}

void __glCrmGetDstBufMode(void *arg1, void *arg2) {
    __glCrmAllocAccum((void *)0xC01, arg1, arg2);
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c], gap at: 0x20. */
void __glCrmSetDrawBuffer(void *arg0, void *arg1) {
    s32 spC;
    s8 spB;
    s8 spA;
    s8 sp9;
    s8 sp8;
    s32 temp_v0;
    s8 temp_a0;
    void *temp_v0_2;

    unksp20 = (s64) arg0->unk7DBC;
    unksp18 = (s64) arg0->unk7DB8;
    temp_v0 = __glCrmAllocAccum((void *)0xC01, arg1, sp);
    unksp18->unk2008 = sp0;
    unksp20->unk2008 = sp0;
    arg0->unk80CC = sp0;
    temp_a0 = (sp0 >> 0xA) & 7;
    if ((arg0 + (temp_a0 * 4))->unk7D4C != temp_v0) {
        switch (temp_v0) {                          /* irregular */
        case 0x404:
        case 0x408:
            sp8 = 0;
            break;
        case 0x405:
            sp8 = 1;
            break;
        case 0x1801:
            sp8 = 2;
            break;
        }
        spA = temp_a0;
        sp9 = 0;
        temp_v0_2 = arg0->unk7D38;
        if (temp_v0_2->unk0 != 5) {
            spC = 0;
            spB = 0;
        } else {
            spB = 1;
            spC = *temp_v0_2->unk1C->unk9C;
        }
        if (__glCrmIoctl(arg0->unk7B10, (void *)0x55F7, &sp8, sp0, (u32) unksp20, sp0, unksp18, 0x404) < 0) {
            __glCrmIoctl(arg0, &sub_0da40000 + 0x18D8);
        }
        (arg0 + (((sp0 >> 0xA) & 7) * 4))->unk7D4C = temp_v0;
    }
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x28, 0x2c, 0x30, 0x34, 0x38, 0x3c], gap at: 0x20. */
void __glCrmSetReadBuffer(void *arg0, void *arg1) {
    s32 spC;
    s8 spB;
    s8 spA;
    s8 sp9;
    s8 sp8;
    s32 temp_v0;
    s8 temp_a0;
    void *temp_v0_2;

    unksp20 = (s64) arg0->unk7DBC;
    unksp18 = (s64) arg0->unk7DB8;
    temp_v0 = __glCrmAllocAccum((void *)0xC02, arg1, sp);
    unksp18->unk2000 = sp0;
    unksp20->unk2000 = sp0;
    arg0->unk80D0 = sp0;
    temp_a0 = (sp0 >> 0xA) & 7;
    if ((arg0 + (temp_a0 * 4))->unk7D4C != temp_v0) {
        switch (temp_v0) {                          /* irregular */
        case 0x404:
        case 0x408:
            sp8 = 0;
            break;
        case 0x405:
            sp8 = 1;
            break;
        case 0x1801:
            sp8 = 2;
            break;
        }
        spA = temp_a0;
        sp9 = 1;
        temp_v0_2 = arg0->unk7D3C;
        if (temp_v0_2->unk0 != 5) {
            spC = 0;
            spB = 0;
        } else {
            spB = 1;
            spC = *temp_v0_2->unk1C->unk9C;
        }
        if (__glCrmIoctl(arg0->unk7B10, (void *)0x55F7, &sp8, 1U, (u32) unksp20, sp0, unksp18, 0x404) < 0) {
            __glCrmIoctl(arg0, &sub_0da40000 + 0x18F8);
        }
        (arg0 + (((sp0 >> 0xA) & 7) * 4))->unk7D4C = temp_v0;
    }
}

void __glCrmSetCurrentBuffers(void *arg0, s32 arg1, s32 arg2) {
    s64 sp8;
    s32 temp_a4;
    s32 temp_a4_2;
    u8 temp_a3;
    u8 var_a7;
    void *temp_a6;
    void *var_a1;
    void *var_a5;

    temp_a6 = arg0->unk2DF4;
    temp_a4 = arg0->unk4D4;
    sp8 = (s64) arg0->unk2DF0;
    var_a7 = 0x404;
    var_a5 = temp_a6;
    if (temp_a4 != 0x404) {
        if (temp_a4 == 0x405) {
            var_a7 = arg0->unkD36;
            if (var_a7 != 0) {
                var_a5 = arg0->unk77C4;
                arg0->unk2DF4 = var_a5;
            } else {
                var_a5 = arg0->unk77C0;
                arg0->unk2DF4 = var_a5;
            }
        }
    } else {
        var_a5 = arg0->unk77C0;
        arg0->unk2DF4 = var_a5;
    }
    if ((arg1 != 0) || (var_a5 != temp_a6)) {
        __glCrmSetReadBuffer(arg0, var_a5, temp_a4, var_a5, temp_a6, var_a7);
    }
    temp_a4_2 = arg0->unk760;
    switch (temp_a4_2) {                            /* irregular */
    default:
        var_a1 = arg0->unk2DF0;
        break;
    case 0x405:
    case 0x408:
        if (arg0->unkC96 != 0) {
            var_a1 = arg0->unk77C4;
            arg0->unk2DF0 = var_a1;
        } else {
            var_a1 = arg0->unk77C0;
            arg0->unk2DF0 = var_a1;
        }
        break;
    case 0x404:
        var_a1 = arg0->unk77C0;
        arg0->unk2DF0 = var_a1;
        break;
    }
    if ((arg2 != 0) || (var_a1 != sp8)) {
        __glCrmSetDrawBuffer(arg0, var_a1, sp8);
    }
    temp_a3 = arg0->unk7D08;
    if (temp_a3 != 0) {
        if ((arg2 != 0) || (arg0->unk7D54 != 0x1801)) {
            if (__glCrmIoctl(arg0->unk7B10, (void *)0x55F7, sp, (u32) temp_a3, 2U, 0U, 2, 0, 0) < 0) {
                __glCrmIoctl(arg0, &sub_0da40000 + 0x1918);
            }
            arg0->unk7D54 = 0x1801;
        }
    }
}

s32 __glCrmSetStoreBuffer(void *arg0, s32 arg1) {
    s32 temp_s0;

    temp_s0 = arg0->unk2DF0;
    if ((arg0->unk77BC != 0) && (arg1 != temp_s0)) {
        arg0->unk2DF0 = arg1;
        __glCrmSetDrawBuffer();
    }
    return temp_s0;
}

void PickBufferProcs(void *arg0, u8 arg6) {
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a4_2;
    s32 var_a3;
    u8 var_a5;
    u8 var_a6;
    void *var_a2;

    var_a6 = arg6;
    var_a5 = 0x405;
    if (arg0->unkC97 != 0) {
        temp_a2 = arg0->unk764;
        switch (temp_a2) {                          /* irregular */
        default:
            var_a3 = 0;
            if ((temp_a2 != 0x404) && (temp_a2 != 0x405)) {
                var_a2 = arg0 + 0x10000;
                arg0->unk812D = 0;
            } else {
                var_a2 = arg0 + 0x10000;
                arg0->unk812D = 1;
                var_a3 = 0;
            }
block_7:
            arg0->unk77BC = 0;
            break;
        case 0x406:
        case 0x407:
            var_a2 = arg0 + 0x10000;
            arg0->unk812D = 0;
            var_a6 = arg0->unkC96;
            var_a3 = 0;
            if (var_a6 != 0) {
                arg0->unk77BC = 1;
                var_a3 = 1;
            } else {
                goto block_7;
            }
            break;
        case 0x408:
            var_a2 = arg0 + 0x10000;
            arg0->unk812D = 1;
            var_a3 = 1;
            arg0->unk77BC = 1;
            break;
        }
    } else {
        var_a6 = 0x408;
        var_a3 = 0;
        var_a2 = arg0 + 0x10000;
        if ((arg0->unkC96 == 0) || (var_a5 = (u8) arg0->unk760, (var_a5 != 0x408))) {
            arg0->unk77BC = 0;
        } else {
            arg0->unk77BC = 1;
            var_a3 = 1;
        }
    }
    temp_a4 = var_a2->unk-7F34;
    temp_a4_2 = temp_a4 << 0x1E;
    if (!(temp_a4 & 2) || (var_a5 = var_a2->unk-7ED3, (var_a5 != 0)) || (var_a3 != 0)) {
        __glCrmSetCurrentBuffers(NULL, 0, var_a3, temp_a4_2, var_a5, var_a6);
    } else {
        __glCrmSetCurrentBuffers((void *)1, 1, var_a3, temp_a4_2, var_a5, var_a6);
    }
}

void SwapBuffers(void *arg0) {
    s32 temp_a2;
    u32 temp_a3;
    u32 var_a0;

    if (arg0->unkC96 != 0) {
        var_a0 = 1 - arg0->unk7D30;
        arg0->unk7D30 = var_a0;
        if (arg0->unk80CC & 2) {
            __glCrmSetReadBuffer(arg0, arg0->unk2DF4);
            __glCrmSetDrawBuffer(arg0, arg0->unk2DF0);
            var_a0 = arg0->unk7D30;
        }
        temp_a2 = arg0->unk7D28;
        if (var_a0 != 0) {
            arg0->unk7D28 = (s32) (temp_a2 | 4);
        } else {
            arg0->unk7D28 = (s32) (temp_a2 & ~4);
        }
        temp_a3 = arg0->unk7B14;
        if (__glCrmIoctl(arg0->unk7B10, (void *)0x3ED, sp, temp_a3, temp_a3, arg0->unk7D30, (s64) arg0->unk7D28) < 0) {
            fprintf(&__iob + 0x20, &sub_0da40000 + 0x1938);
        }
    }
}

void DecoupleSwapBuffers(void *arg0) {
    s32 temp_a2;
    s32 var_a0;

    if (arg0->unkC96 != 0) {
        var_a0 = 1 - arg0->unk7D30;
        arg0->unk7D30 = var_a0;
        if (arg0->unk80CC & 2) {
            __glCrmSetReadBuffer(arg0, arg0->unk2DF4);
            __glCrmSetDrawBuffer(arg0, arg0->unk2DF0);
            var_a0 = arg0->unk7D30;
        }
        temp_a2 = arg0->unk7D28;
        if (var_a0 != 0) {
            arg0->unk7D28 = (s32) (temp_a2 | 4);
        } else {
            arg0->unk7D28 = (s32) (temp_a2 & ~4);
        }
        if (__glCrmIoctl(arg0->unk7B10, (void *)0x55F4, sp, 0xAU, arg0->unk7D30 + 0x11) < 0) {
            __glCrmSetDrawBuffer(arg0, &sub_0da40000 + 0x1960);
        }
    }
}

void __glCrmFlushAndConfirm(void *arg0) {
    s32 sp0;
    void *temp_a2;

    temp_a2 = arg0->unk7DB8;
    sp0 = 0;
    temp_a2->unk21F8 = sp0;
loop_1:
    if (!(temp_a2->unk4000 & 0x10000000)) {
        if (!(temp_a2->unk4000 & 0x10000000)) {
            goto loop_1;
        }
    }
}

void Finish(void *arg0) {
    if ((arg0 != NULL) && (arg0->unk7DB8 != 0)) {
        __glCrmFlushAndConfirm();
    }
}

void Flush(void) {

}

void DestroyHWContext(void *arg0) {
    ? (*temp_a3)(?, ?);

    temp_a3 = arg0->unk7E44;
    if (temp_a3 != NULL) {
        temp_a3(-1, temp_a3);
    }
    if (arg0->unk7F38 >= 0) {
        viceCloseDev(arg0);
    }
    __glCrmFreeTextureState(arg0);
    arg0->unk30(arg0);
    __glFreeBufData(arg0);
    __glDestroyContext(arg0);
}

s32 LoseCurrent(void *arg0) {
    s32 temp_a1;
    s32 temp_a2;
    void *temp_a3;

    if (arg0->unkC84 == 0x1C00) {
        if (*(s32 *)0x1018 != 1) {
            if (arg0->unkAC & 2) {
                temp_a1 = arg0->unk7E44;
                temp_a2 = arg0->unk7E3C;
                temp_a3 = arg0->unk7E40;
                if ((temp_a1 != 0) && ((temp_a2 != 0) || (temp_a3 != NULL))) {
                    __glCrmFlushAndConfirm(arg0, temp_a1, temp_a2, temp_a3);
                    __glCrmFlushAndConfirm(arg0, -1);
                }
                arg0->unk7F28 = 0;
            }
            __glLoseCurrentBuffers(arg0, arg0->unk7D30);
            arg0->unkC80 = (s32) *(void *)0x1018;
            *(s32 *)0x1010 = 0;
            return 1;
        }
        /* Duplicate return node #10. Try simplifying control flow for better match */
        return 0;
    }
    return 0;
}

void __glCrmUpdateHardwareState(void *arg0) {
    __glCrmEnableAlphaTest();
    __glCrmPassAlphaFunc(arg0);
    __glCrmEnableBlend(arg0);
    __glCrmPassBlendFunc(arg0);
    __glCrmPassBlendColor(arg0);
    __glCrmPassColorMask(arg0);
    __glCrmEnableDither(arg0);
    __glCrmEnableLogicOp(arg0);
    __glCrmPassLogicOp(arg0);
    __glCrmPassDepthFunc(arg0);
    __glCrmPassDepthMask(arg0);
    __glCrmEnableDepthTest(arg0);
    __glCrmShadeModel(arg0);
    __glCrmEnableFogTest(arg0);
    __glCrmPassFog(arg0);
    __glCrmPassStencilMode(arg0);
    __glCrmEnableStencilTest(arg0);
    __glCrmPassStencilMask(arg0);
    __glCrmResetTextureState(arg0);
}

s32 DissociateDMPbuffer(s32 arg0, void *arg1) {
    s64 sp8;
    s32 *temp_a0_3;
    s32 temp_a0;
    s32 temp_a0_2;
    s64 var_ra;

    var_ra = saved_reg_ra;
    if (arg0 != 0) {
        if (arg1 != NULL) {
            temp_a0 = arg1->unk94;
            if (temp_a0 != 0) {
                var_ra = sp8;
                if (dmBufferFree(temp_a0) != 0) {
                    goto block_4;
                }
            }
            temp_a0_2 = arg1->unk98;
            sp8 = var_ra;
            if (temp_a0_2 != 0) {
                dmParamsDestroy(temp_a0_2);
            }
            temp_a0_3 = arg1->unk9C;
            if (temp_a0_3 != NULL) {
                *temp_a0_3 = 0;
            }
            arg1->unk98 = 0;
            arg1->unk94 = 0;
            return 1;
        }
        /* Duplicate return node #5. Try simplifying control flow for better match */
        return 0;
    }
block_4:
    return 0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x8, 0xc, 0x58, 0x5c], gap at: 0x18. */
s32 IsCompatibleDMPbuffer(s64 arg0, s64 arg1, s64 arg2, s32 arg3, s64 arg4, s64 arg5) {
    s64 sp68;
    s64 sp60;
    s64 sp0;
    s32 *temp_v0_7;
    s32 *var_a1_2;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_t1;
    s32 var_v0;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 temp_v0_4;
    s64 temp_v0_5;
    s64 temp_v0_6;
    s64 var_a2_2;
    s64 var_a4;
    s64 var_a5;
    s64 var_t0;
    s64 var_t2;
    s64 var_t3;
    void *temp_a3;

    unksp50 = arg1;
    unksp30 = arg2;
    unksp48 = arg4;
    unksp38 = arg0;
    unksp40 = arg5;
    if (_dmBufferGetNoECC(arg4) != 0) {
        if ((dmParamsIsPresent(arg3, &sub_0da40000 + 0x1978) != 0) && (dmParamsIsPresent(arg3, &sub_0da40000 + 0x1988) != 0) && (dmParamsIsPresent(arg3, &sub_0da40000 + 0x19A0) != 0) && (dmParamsIsPresent(arg3, &sub_0da40000 + 0x19B0) != 0)) {
            temp_v0 = dmParamsGetEnum(arg3, &sub_0da40000 + 0x1978);
            if (temp_v0 != 1) {
                unksp28 = temp_v0;
                if (temp_v0 != 2) {
                    return 0;
                }
            }
            unksp28 = temp_v0;
            temp_v0_2 = dmParamsGetEnum(arg3, &sub_0da40000 + 0x1988, 2, 1);
            temp_a3 = unksp50->unk4;
            switch (temp_v0_2) {                    /* irregular */
            case 0x7D1:
            case 0x7D2:
                if ((temp_a3->unk28 != 8) || (temp_a3->unk2C != 8) || (temp_a3->unk30 != 8) || (temp_a3->unk34 != 8)) {
                    goto block_9;
                }
                unksp18 = 4;
block_33:
                temp_v0_3 = dmParamsGetInt(arg3, &sub_0da40000 + 0x19A0);
                sp68 = temp_v0_3;
                unksp20 = temp_v0_3;
                temp_v0_4 = dmParamsGetInt(arg3, &sub_0da40000 + 0x19B0);
                var_t3 = temp_v0_4;
                if ((unksp30->unk8C == sp68) && (var_a4 = unksp18, (unksp30->unk90 == temp_v0_4))) {
                    var_a5 = unksp28;
                    var_a1 = 2;
                    var_a3 = (s32) (temp_v0_4 + 0x7F) >> 7;
                    var_a2 = (s32) ((sp68 * var_a4) + 0x1FF) >> 9;
                    if (var_a5 != 2) {
                        var_a5 = var_a3 * var_a2;
                        unksp10 = var_a5;
                    } else {
                        var_a1 = sp68 > 0x40;
                        var_t1 = temp_v0_4 > 0x40;
                        if (var_a1 != 0) {
                            goto block_46;
                        }
                        if (var_t1 == 0) {
                            unksp10 = 1;
                        } else {
block_46:
                            var_t2 = unksp20;
                            var_t0 = 1;
                            do {
loop_47:
                                var_a4 = var_a2 * var_a3;
                                var_t0 += var_a4;
                                if (var_a1 != 0) {
                                    var_t2 = (s64) (var_t2 >> 1);
                                    var_a5 = var_a2 < 2;
                                    var_a1 = var_t2 > 0x40;
                                    var_a2 = (var_a5 == 0) ? (var_a2 >> 1) : var_a2;
                                }
                                if (var_t1 != 0) {
                                    var_t3 = (s64) (var_t3 >> 1);
                                    var_a5 = (s64) (var_a3 >> 1);
                                    var_a4 = var_a3 < 2;
                                    var_t1 = var_t3 > 0x40;
                                    var_a3 = (s32) ((var_a4 == 0) ? var_a5 : (s64) var_a3);
                                }
                                if (var_a1 != 0) {
                                    goto loop_47;
                                }
                            } while (var_t1 != 0);
                            unksp10 = var_t0;
                        }
                    }
                    temp_v0_5 = dmBufferGetSize(unksp48, var_a1, var_a2, var_a3, var_a4, (s32) var_a5);
                    sp0 = temp_v0_5;
                    if ((temp_v0_5 >> 0x10) < unksp10) {
                        goto block_9;
                    }
                    temp_v0_6 = _dmBufferGetDmsEvent(unksp48);
                    var_a2_2 = temp_v0_6;
                    if (temp_v0_6 != 0) {
                        var_a1_2 = *unksp40;
                        if (var_a1_2 != NULL) {
                            goto block_43;
                        }
                        sp60 = temp_v0_6;
                        temp_v0_7 = unksp38->unk4(unksp38, 1, 0x18);
                        var_a2_2 = sp60;
                        var_a1_2 = temp_v0_7;
                        *unksp40 = temp_v0_7;
                        if (temp_v0_7 == NULL) {
                            goto block_9;
                        }
block_43:
                        *var_a1_2 = var_a2_2->unk10;
                        (*unksp40)->unk4 = (s32) sp0;
                        (*unksp40)->unk8 = (s32) unksp10;
                        (*unksp40)->unkC = (s32) unksp18;
                        (*unksp40)->unk10 = (s32) (unksp28 == 2);
                        var_v0 = 1;
                        (*unksp40)->unk14 = (s32) unksp38->unkC;
                    } else {
                        goto block_9;
                    }
                } else {
                    goto block_9;
                }
                break;
            case 0x3EF:
                if ((unksp28 != 1) || (temp_a3->unk28 != 3) || (temp_a3->unk2C != 3) || (temp_a3->unk30 != 2)) {
                    goto block_9;
                }
                unksp18 = 1;
                goto block_33;
            case 0x443:
                if ((temp_a3->unk28 != 5) || (temp_a3->unk2C != 5) || (temp_a3->unk30 != 5) || (temp_a3->unk34 != 1)) {
                    goto block_9;
                }
                unksp18 = 2;
                goto block_33;
            }
            /* Duplicate return node #10. Try simplifying control flow for better match */
            return var_v0;
        }
block_9:
        var_v0 = 0;
        return var_v0;
    }
    return 0;
}

s32 AssociateDMPbuffer(void *arg0, void *arg1, s64 arg2, s64 arg3) {
    s64 sp120;
    s64 sp118;
    s64 sp110;
    s64 sp108;
    s64 sp100;
    s64 spF8;
    s64 spF0;
    s64 spE8;
    s64 spE0;
    s64 spD8;
    s64 spD0;
    s64 spC8;
    s64 spC0;
    s32 spBC;
    ? sp20;
    s32 sp8;
    s32 sp0;
    ? *temp_a1;
    s32 *temp_a5_2;
    s32 *temp_a6_2;
    s32 temp_a1_2;
    s32 temp_a2;
    s32 temp_v1;
    s32 var_a0;
    s32 var_a4;
    s64 var_a7;
    u8 *temp_a5;
    u8 *temp_a6;
    void *temp_a4;
    void *temp_a4_2;
    void *temp_a4_3;
    void *temp_a4_4;
    void *temp_a4_5;
    void *var_a3;

    if ((arg1 != NULL) && (arg1->unk0 == 5)) {
        temp_a1 = arg1->unk1C;
        if (temp_a1 != NULL) {
            temp_a4 = arg0->unk7D38;
            if ((temp_a4 == arg1) || (temp_a5 = arg0->unk7D3C, (temp_a5 == arg1))) {
                var_a7 = 1;
                if (arg3 != 0) {
                    goto block_6;
                }
                var_a0 = 0;
                /* Duplicate return node #15. Try simplifying control flow for better match */
                return var_a0;
            }
            var_a7 = 0;
            if (arg3 == 0) {
                var_a0 = __glCrmUpdateHardwareState(arg1, temp_a1, temp_a4, temp_a5, 0);
                /* Duplicate return node #15. Try simplifying control flow for better match */
                return var_a0;
            }
block_6:
            if (arg2 != 0) {
                temp_a6 = temp_a1->unk94;
                if (temp_a6 != arg3) {
                    sp0 = 0;
                    temp_a4_2 = temp_a1->unk9C;
                    if (temp_a4_2 != NULL) {
                        sp110 = var_a7;
                        sp120 = (s64) temp_a1;
                        sp108 = arg2;
                        sp100 = (s64) arg0;
                        spF8 = arg3;
                        sp118 = (s64) arg1;
                        sp8.unk4 = (s32) temp_a4_2->unk4;
                        sp8.unk8 = (s32) temp_a4_2->unk8;
                        sp8.unkC = (s32) temp_a4_2->unkC;
                        sp8.unk10 = (s32) temp_a4_2->unk10;
                        sp8.unk14 = (s32) temp_a4_2->unk14;
                        sp8 = temp_a4_2->unk0;
                    } else {
                        sp8 = 0;
                        sp110 = var_a7;
                        sp120 = (s64) temp_a1;
                        sp108 = arg2;
                        sp100 = (s64) arg0;
                        spF8 = arg3;
                        sp118 = (s64) arg1;
                    }
                    if (__glCrmUpdateHardwareState((void *) sp100, (? *) sp118, (void *) sp120, (u8 *) sp108, spF8, sp120 + 0x9C, temp_a6, var_a7) == 0) {
                        temp_a4_3 = sp120->unk9C;
                        if (temp_a4_3 != NULL) {
                            temp_a4_3->unk0 = sp8;
                            temp_a4_3->unk14 = (s32) sp8.unk14;
                            temp_a4_3->unk10 = (s32) sp8.unk10;
                            temp_a4_3->unkC = (s32) sp8.unkC;
                            temp_a4_3->unk8 = (s32) sp8.unk8;
                            temp_a4_3->unk4 = (s32) sp8.unk4;
                        }
                        return 0;
                    }
                    if (sub_0d940000(sp) != 0) {
                        goto block_19;
                    }
                    if (dmParamsCopyAllElems(sp108, sp0) == 0) {
                        if (dmBufferAttach(spF8) != 0) {
                            dmParamsDestroy(sp0);
                            temp_a4_4 = sp120->unk9C;
                            if (temp_a4_4 != NULL) {
                                temp_a4_4->unk0 = sp8;
                                temp_a4_4->unk14 = (s32) sp8.unk14;
                                temp_a4_4->unk10 = (s32) sp8.unk10;
                                temp_a4_4->unkC = (s32) sp8.unkC;
                                temp_a4_4->unk8 = (s32) sp8.unk8;
                                temp_a4_4->unk4 = (s32) sp8.unk4;
                            }
                            var_a0 = 0;
                        } else {
                            var_a4 = 0x28;
                            var_a3 = NULL;
                            spC8 = (s64) &sp20;
                            spD8 = (s64) (&sp20 + 0xC);
                            temp_a1_2 = sp120 + 0x1C;
                            spE8 = (s64) (&sp20 + 4);
                            temp_a2 = sp120 + 4;
                            spC0 = sp120;
                            spD0 = sp120 + 0x14;
                            spE0 = sp120 + 0xC;
                            spF0 = (s64) (&sp20 + 0x14);
                            do {
                                *(var_a3 + spC8) = *(var_a3 + spC0);
                                *(var_a3 + spE8) = *(var_a3 + temp_a2);
                                *(var_a3 + (&sp20 + 8)) = *(var_a3 + (sp120 + 8));
                                *(var_a3 + spD8) = *(var_a3 + spE0);
                                *(var_a3 + (&sp20 + 0x10)) = *(var_a3 + (sp120 + 0x10));
                                *(var_a3 + spF0) = *(var_a3 + spD0);
                                temp_a6_2 = var_a3 + (&sp20 + 0x18);
                                var_a4 -= 8;
                                *temp_a6_2 = *(var_a3 + (sp120 + 0x18));
                                temp_v1 = *(var_a3 + temp_a1_2);
                                temp_a5_2 = var_a3 + (&sp20 + 0x1C);
                                var_a3 += 0x20;
                                *temp_a5_2 = temp_v1;
                            } while (var_a4 > 0);
                            sp120->unk94 = (s32) spF8;
                            sp120->unk98 = sp0;
                            if (sp110 & 0xFF) {
                                if (sp100->unk7D38 != sp118) {
                                    if (sp100->unk7D3C == sp118) {
                                        sp100->unk7D50 = 0;
                                        __glCrmSetReadBuffer((void *) sp100, sp100->unk2DF4, temp_a2, var_a3, (void *) var_a4, (u8) temp_a5_2, temp_a6_2, sp0);
                                    }
                                } else {
                                    __glCrmFlushAndConfirm((void *) sp100, temp_a1_2, temp_a2, var_a3, var_a4, temp_a5_2, temp_a6_2, sp0);
                                    sp100->unk7D4C = 0;
                                    __glCrmSetDrawBuffer((void *) sp100, sp100->unk2DF0);
                                }
                            }
                            if ((spB4 != 0) || (spB8 != 0)) {
                                spBC = 0;
                                __glCrmUpdateHardwareState((void *) sp118, &sp20);
                            }
                            goto block_33;
                        }
                        /* Duplicate return node #15. Try simplifying control flow for better match */
                        return var_a0;
                    }
block_19:
                    if (sp0 != 0) {
                        dmParamsDestroy(sp0);
                    }
                    temp_a4_5 = sp120->unk9C;
                    if (temp_a4_5 != NULL) {
                        temp_a4_5->unk0 = sp8;
                        temp_a4_5->unk14 = (s32) sp8.unk14;
                        temp_a4_5->unk10 = (s32) sp8.unk10;
                        temp_a4_5->unkC = (s32) sp8.unkC;
                        temp_a4_5->unk8 = (s32) sp8.unk8;
                        temp_a4_5->unk4 = (s32) sp8.unk4;
                    }
                    return 0;
                }
block_33:
                var_a0 = 1;
                return var_a0;
            }
            return 0;
        }
    }
    return 0;
}

s32 ValidateDMPbuffers(s64 arg0, void *arg1, void *arg2, s64 arg3, u8 *arg4, u8 *arg6) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    ? *temp_a2;
    s32 *temp_a7;
    s32 *temp_a7_2;
    s32 temp_t1_2;
    s64 var_a0;
    s64 var_ra;
    u8 *temp_t1;
    u8 *var_a4;
    u8 *var_a6;
    void *temp_a2_2;
    void *var_v0;

    var_ra = saved_reg_ra;
    var_a0 = arg0;
    var_a4 = arg4;
    var_a6 = arg6;
    var_v0 = arg2;
    if (arg1->unk0 != 5) {
        goto block_1;
    }
    temp_a2 = arg1->unk1C;
    temp_t1 = temp_a2->unk94;
    temp_a7 = temp_a2->unk9C;
    if (temp_t1 != NULL) {
        sp0 = var_a0;
        sp8 = arg3;
        sp10 = (s64) var_v0;
        if ((temp_a7 != NULL) && (*temp_a7 != 0)) {
            goto block_11;
        }
        sp18 = (s64) var_a4;
        var_ra = sp20;
        if (__glCrmUpdateHardwareState((void *) sp0, temp_a2, temp_a2->unk98, temp_t1, (s64) (temp_a2 + 0x9C), temp_a7) == 0) {
            /* Duplicate return node #7. Try simplifying control flow for better match */
            return 0;
        }
block_11:
        var_a6 = (u8 *) sp8;
        var_v0 = (void *) sp10;
        var_a0 = sp0;
        *var_a6 |= 1;
block_1:
        if (var_v0->unk0 == 5) {
            temp_a2_2 = var_v0->unk1C;
            temp_t1_2 = temp_a2_2->unk94;
            temp_a7_2 = temp_a2_2->unk9C;
            if (temp_t1_2 != 0) {
                if (temp_a7_2 != NULL) {
                    sp0 = var_a0;
                    sp10 = (s64) var_v0;
                    if (*temp_a7_2 != 0) {
                        goto block_5;
                    }
                }
                sp20 = var_ra;
                sp18 = (s64) var_a4;
                sp0 = var_a0;
                sp10 = (s64) var_v0;
                if (__glCrmUpdateHardwareState((void *) var_a0, (? *) sp10, temp_a2_2, temp_a2_2->unk98, (s64) temp_t1_2, temp_a2_2 + 0x9C, var_a6, (s64) temp_a7_2) == 0) {
                    /* Duplicate return node #7. Try simplifying control flow for better match */
                    return 0;
                }
block_5:
                *var_a4 |= 1;
                /* Duplicate return node #6. Try simplifying control flow for better match */
                return 1;
            }
            /* Duplicate return node #7. Try simplifying control flow for better match */
            return 0;
        }
        return 1;
    }
    return 0;
}

void FreeDMPbuffer(void *arg1) {
    ? *temp_a1;
    ? *temp_s0;

    temp_s0 = arg1->unk1C;
    if (temp_s0 != NULL) {
        __glCrmUpdateHardwareState(arg1, temp_s0);
        temp_a1 = temp_s0->unk9C;
        if ((temp_a1 != NULL) && (temp_a1->unk14 != 0)) {
            sub_0d940000(NULL, temp_a1);
            temp_s0->unk9C = NULL;
        }
    }
}

s32 MakeCurrentDMPbuffer(void *arg0, void *arg1, void *arg2) {
    s32 temp_s8;
    void *var_s1;

    var_s1 = arg1->unk1C;
    if (var_s1->unk0 != 0) {
        goto block_1;
    }
    if (var_s1->unk4 == 0) {
        *var_s1->unk8 = var_s1->unkC;
        *var_s1->unk10 = var_s1->unk14;
        arg1->unk1C = NULL;
    } else {
block_1:
        var_s1 = NULL;
    }
    temp_s8 = __glMakeCurrentBuffers(arg0, arg2) & 0xFF;
    if ((temp_s8 != 0) && (var_s1 != NULL)) {
        memcpy(var_s1, arg1->unk1C, 0x8C);
        arg1->unk14(arg1->unk1C);
        arg1->unk1C = var_s1;
        var_s1->unk18 = (void *) (sub_0d940000 + 0x5B40);
        arg0->unk780C = (void *) (var_s1 + 8);
        if (arg0->unkC96 != 0) {
            arg0->unk78E8 = (void *) (var_s1 + 0x1C);
        }
        if (arg0->unkC98 != 0) {
            arg0->unk7AC4 = (void *) (var_s1 + 0x78);
        }
        if (arg0->unkC99 != 0) {
            arg0->unk7A40 = (void *) (var_s1 + 0x48);
        }
        if (arg0->unkC9A != 0) {
            arg0->unk79C8 = (void *) (var_s1 + 0x34);
            return temp_s8;
        }
        /* Duplicate return node #12. Try simplifying control flow for better match */
        return temp_s8;
    }
    return temp_s8;
}

s32 VisualsMatch(void *arg1, void *arg3) {
    if ((arg1 != NULL) && (arg3 != NULL) && (arg1->unk4 == arg3->unk4)) {
        return 1;
    }
    return 0;
}

void MakeCurrent(void *arg0) {
    s32 temp_s8;

    temp_s8 = arg0->unk3C();
    arg0->unk64(arg0, temp_s8, arg0->unk40(arg0));
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x50, 0x54, 0x58, 0x5c, 0x60, 0x64, 0x68, 0x6c, 0xa0, 0xa4], gap at: 0x78. */
s32 MakeCurrentRead(void *arg0, s32 *arg1, s32 *arg2, s64 *arg4, void *arg7) {
    s64 spE0;
    s64 spD8;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s32 sp28;
    ? sp24;
    ? sp20;
    s32 sp1C;
    s8 sp18;
    s32 sp14;
    s32 sp10;
    u32 spC;
    u32 sp8;
    s8 sp4;
    u8 sp1;
    u8 sp0;
    ? (*temp_t9)(void *, ?, s32);
    ? *temp_a4_5;
    ? *temp_a5_5;
    ? *temp_a7;
    ? *temp_v0_4;
    s32 *temp_s2;
    s32 *temp_t3;
    s32 *temp_v0_10;
    s32 *var_a1;
    s32 *var_a6;
    s32 temp_a0_3;
    s32 temp_a2;
    s32 temp_a3_3;
    s32 temp_a5_2;
    s32 temp_s6;
    s32 temp_v0_11;
    s32 temp_v0_13;
    s32 temp_v0_2;
    s32 temp_v0_5;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a0_4;
    s32 var_a0_5;
    s32 var_a0_6;
    s32 var_a0_7;
    s32 var_a0_8;
    s32 var_a1_2;
    s32 var_a5;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_a5_5;
    s32 var_v0;
    s32 var_v0_10;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s32 var_v0_5;
    s32 var_v0_6;
    s32 var_v0_7;
    s32 var_v0_8;
    s32 var_v0_9;
    s64 *temp_a3_2;
    s64 *temp_a4_2;
    s64 *temp_a4_6;
    s64 *temp_a5_3;
    s64 *temp_a6_4;
    s64 *temp_at;
    s64 *temp_ra;
    s64 *temp_ra_2;
    s64 *temp_t8_2;
    s64 *temp_v1_2;
    s64 *temp_v1_3;
    s64 *var_a4;
    s64 *var_a6_2;
    s64 temp_a3;
    s64 temp_a3_4;
    s64 temp_a3_7;
    s64 temp_a4;
    s64 temp_a4_7;
    s64 temp_a4_8;
    s64 temp_at_2;
    s64 temp_at_3;
    s64 temp_t3_6;
    s64 temp_t8;
    s64 temp_t9_2;
    s64 temp_v0_3;
    s64 temp_v1;
    s64 var_a1_3;
    s64 var_a5_2;
    s64 var_a7_2;
    s64 var_t9;
    u32 temp_a3_5;
    u32 temp_a3_6;
    u32 temp_a4_4;
    u32 temp_a5_4;
    u8 temp_a4_3;
    u8 temp_v0;
    void *temp_a0;
    void *temp_a0_2;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_a2_4;
    void *temp_a5;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_3;
    void *temp_gp;
    void *temp_t3_2;
    void *temp_t3_3;
    void *temp_t3_4;
    void *temp_t3_5;
    void *temp_t9_3;
    void *temp_v0_12;
    void *temp_v0_6;
    void *temp_v0_7;
    void *temp_v0_8;
    void *temp_v0_9;
    void *var_a0_10;
    void *var_a0_9;
    void *var_a7;
    void *var_s3;

    var_a1 = arg1;
    var_a4 = arg4;
    var_a7 = arg7;
    sp1 = 0;
    sp0 = 0;
    var_a6 = var_a1->unk4;
    temp_s2 = var_a1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x10AFDC;
    if (*var_a6 != arg0->unkC90) {
        var_a1 = (s32 *)0x20;
        var_v0 = 0x14;
        var_a0 = 0;
        var_a7 = arg0 + 0xCA0;
        do {
            *(var_a0 + (arg0 + 0xC90)) = *(var_a0 + var_a6);
            *(var_a0 + (arg0 + 0xC98)) = *(var_a0 + (var_a6 + 8));
            var_v0 -= 4;
            *(var_a0 + var_a7) = *(var_a0 + (var_a6 + 0x10));
            var_a4 = var_a0 + (arg0 + 0xCA8);
            temp_a3 = *(var_a0 + (var_a6 + 0x18));
            var_a0 += 0x20;
            *var_a4 = temp_a3;
        } while (var_v0 > 0);
        var_t9 = 1;
    } else {
        var_t9 = 0;
    }
    temp_t3 = arg2->unk4;
    temp_a5 = temp_t3 + 0x18;
    if (*temp_t3 != arg0->unkD30) {
        var_a1 = arg0 + 0xD48;
        var_a6 = (s32 *)0x20;
        var_a0_2 = 0x14;
        var_v0_2 = 0;
        var_a7 = arg0 + 0xD40;
        do {
            *(var_v0_2 + (arg0 + 0xD30)) = *(var_v0_2 + temp_t3);
            *(var_v0_2 + (arg0 + 0xD38)) = *(var_v0_2 + (temp_t3 + 8));
            var_a4 = var_v0_2 + var_a7;
            var_a0_2 -= 4;
            *var_a4 = *(var_v0_2 + (temp_t3 + 0x10));
            temp_a3_2 = var_v0_2 + var_a1;
            temp_v1 = *(var_v0_2 + temp_a5);
            var_v0_2 += 0x20;
            *temp_a3_2 = temp_v1;
        } while (var_a0_2 > 0);
    }
    sp1 = ((arg0->unk7D38 ^ (s32) temp_s2) != 0) ? 1U : sp1;
    temp_v0 = (s32) temp_s2 == (s32) arg2;
    if ((temp_v0 != arg0->unkDD0) || (var_a1 = arg0->unk7D3C, (var_a1 != arg2))) {
        sp0 = 1;
    }
    arg0->unkDD0 = temp_v0;
    arg0->unk7D38 = (s32) temp_s2;
    arg0->unk7D3C = arg2;
    if (sp1 != 0) {
        goto block_11;
    }
    temp_v0_2 = temp_s2->unk0;
    if ((temp_v0_2 == 4) || (temp_v0_2 == 5)) {
        var_v0_3 = 1;
    } else {
block_11:
        var_v0_3 = 0;
    }
    sp48 = var_t9;
    arg0->unk7D48 = var_v0_3;
    *(void **)0x1010 = arg0;
    temp_a3_3 = arg0->unkC80;
    *(s32 *)0x1018 = temp_a3_3;
    temp_v0_3 = arg0->unk38(arg0, var_a1, sp1, temp_a3_3, var_a4, temp_a5, var_a6, var_a7);
    temp_a5_2 = arg0->unkAC;
    if (temp_v0_3 != 0) {
        if (temp_a5_2 & 2) {
            /* Duplicate return node #14. Try simplifying control flow for better match */
            return 0;
        }
        temp_a2 = temp_a5_2 & 4;
        if (arg0->unkDD0 != 0) {
            sp40 = temp_v0_3;
            if (temp_a2 == 0) {
                temp_t9 = arg0->unk7E44;
                if (temp_t9 != NULL) {
                    temp_t9(arg0, -1, temp_a2);
                }
                if (arg0->unk7F38 >= 0) {
                    viceCloseDev(arg0);
                }
                __glCrmFreeTextureState(arg0);
                arg0->unk30(arg0);
                __glFreeBufData(arg0);
            }
            return __glPixmapMakeCurrent(arg0, sp40);
        }
        return 0;
    }
    var_a1_2 = 4;
    if (temp_a5_2 & 4) {
        return 0;
    }
    var_a0_3 = 0xEC;
    var_v0_4 = 0;
    temp_a6 = arg0 + 0x1F28;
    arg0->unk17B8 = temp_a6;
    temp_t3_2 = &sub_0da50000 - 0x4688 + 0x760;
    do {
        var_a1_2 -= 1;
        var_a0_3 -= 1;
        temp_t9_2 = *(var_v0_4 + temp_t3_2);
        temp_ra = var_v0_4 + temp_a6;
        var_v0_4 += 8;
        *temp_ra = temp_t9_2;
    } while (var_a1_2 != 0);
    unksp88 = (s64) (temp_t3_2 + 0x10);
    unksp98 = (s64) (temp_a6 + 8);
    unksp90 = (s64) (temp_t3_2 + 8);
    sp38 = (s64) temp_a6;
    spD8 = (s64) arg2;
    spE0 = (s64) temp_s2;
    sp30 = (s64) temp_a5_2;
    do {
        temp_a4 = *(var_v0_4 + (temp_t3_2 + 0x38));
        *(var_v0_4 + temp_a6) = *(var_v0_4 + temp_t3_2);
        *(var_v0_4 + unksp98) = *(var_v0_4 + unksp90);
        *(var_v0_4 + (temp_a6 + 0x10)) = *(var_v0_4 + unksp88);
        *(var_v0_4 + (temp_a6 + 0x18)) = *(var_v0_4 + (temp_t3_2 + 0x18));
        *(var_v0_4 + (temp_a6 + 0x20)) = *(var_v0_4 + (temp_t3_2 + 0x20));
        var_a0_3 -= 8;
        *(var_v0_4 + (temp_a6 + 0x28)) = *(var_v0_4 + (temp_t3_2 + 0x28));
        temp_a5_3 = var_v0_4 + (temp_a6 + 0x38);
        *(var_v0_4 + (temp_a6 + 0x30)) = *(var_v0_4 + (temp_t3_2 + 0x30));
        var_v0_4 += 0x40;
        *temp_a5_3 = temp_a4;
    } while (var_a0_3 > 0);
    var_a5 = 4;
    var_a0_4 = 0xEC;
    var_v0_5 = 0;
    temp_t9_3 = arg0 + 0x17C0;
    temp_t3_3 = &sub_0da50000 - 0x4688;
    do {
        var_a5 -= 1;
        var_a0_4 -= 1;
        temp_t8 = *(var_v0_5 + temp_t3_3);
        temp_ra_2 = var_v0_5 + temp_t9_3;
        var_v0_5 += 8;
        *temp_ra_2 = temp_t8;
    } while (var_a5 != 0);
    unksp80 = (s64) (temp_t9_3 + 0x18);
    temp_a2_2 = temp_t3_3 + 0x28;
    unksp78 = (s64) (temp_t9_3 + 8);
    unksp70 = (s64) (temp_t3_3 + 8);
    do {
        temp_a3_4 = *(var_v0_5 + (temp_t3_3 + 0x38));
        var_a5_2 = *(var_v0_5 + (temp_t3_3 + 0x30));
        var_a7_2 = *(var_v0_5 + temp_a2_2);
        *(var_v0_5 + temp_t9_3) = *(var_v0_5 + temp_t3_3);
        *(var_v0_5 + unksp78) = *(var_v0_5 + unksp70);
        *(var_v0_5 + (temp_t9_3 + 0x10)) = *(var_v0_5 + (temp_t3_3 + 0x10));
        *(var_v0_5 + unksp80) = *(var_v0_5 + (temp_t3_3 + 0x18));
        *(var_v0_5 + (temp_t9_3 + 0x20)) = *(var_v0_5 + (temp_t3_3 + 0x20));
        var_a0_4 -= 8;
        var_a6_2 = var_v0_5 + (temp_t9_3 + 0x30);
        *(var_v0_5 + (temp_t9_3 + 0x28)) = var_a7_2;
        temp_a4_2 = var_v0_5 + (temp_t9_3 + 0x38);
        *var_a6_2 = var_a5_2;
        var_v0_5 += 0x40;
        *temp_a4_2 = temp_a3_4;
    } while (var_a0_4 > 0);
    temp_a4_3 = arg0->unkC99;
    if (temp_a4_3 != 0) {
        var_a5_2 = (s64) arg0->unk7D08;
        if (var_a5_2 != 0) {
            *(void *)0x1018 = 2;
            var_a7_2 = (s64) arg0->unkAC;
            sp30 = var_a7_2;
            var_a6_2 = (s64 *) (arg0->unk2DEC | 0x80);
            arg0->unk2DEC = (s32) var_a6_2;
        }
    }
    if (sp30 & 1) {
        goto block_30;
    }
    temp_v0_4 = __glContextSetColorScales((void *) var_a0_4, 0x40, temp_a2_2, temp_a3_4, temp_a4_3, (u8) var_a5_2, (s32) var_a6_2, (s32) var_a7_2);
    arg0->unk7DB8 = temp_v0_4;
    arg0->unk7B10 = arg0->unk28(arg0, temp_v0_4);
    temp_v0_5 = arg0->unk2C(arg0, arg0->unk7DB8);
    arg0->unk7B14 = temp_v0_5;
    if (temp_v0_5 >= 0) {
        __glCrmIoctl(arg0);
        sp48 = 1;
        arg0->unk7F38 = -1;
block_30:
        if (sp48 != 0) {
            if (arg0->unkC99 != 0) {
                arg0->unk7D20 = 0x18;
                arg0->unk7D08 = 1U;
            } else {
                arg0->unk7D20 = 0;
                arg0->unk7D08 = 0U;
            }
            if (arg0->unkC9A != 0) {
                arg0->unk7D24 = 8;
                arg0->unk7D09 = 1U;
            } else {
                arg0->unk7D24 = 0;
                arg0->unk7D09 = 0U;
            }
            var_a0_5 = temp_gp->unk-545C;
            if (var_a0_5 < 0) {
                var_a0_5 = (s32 (*)(void *))0x18(&sub_0da40000 + 0x19C0) != 0;
                temp_gp->unk-545C = var_a0_5;
            }
            if ((arg0->unkC98 == 0) || (arg0->unk80F4 == -1) || (var_a0_5 != 0)) {
                arg0->unk7D0A = 0U;
            } else {
                arg0->unk7D0A = 1U;
            }
        }
        arg0->unk7B10 = getenv(arg0, arg0->unk7DB8);
        arg0->unk34(arg0);
        if (!(arg0->unkAC & 1)) {
            if (__glCrmIoctl(arg0->unk7B10, (void *)0x55F3, &sp4) < 0) {
                arg0->unk14(arg0, &sub_0da40000 + 0x19D0);
            }
            arg0->unk7DBC = (void *) ((s32) sp4 - 0x2000);
        }
        temp_a5_4 = spE0->unk0;
        sp8 = temp_a5_4;
        temp_a4_4 = temp_gp->unk-5460;
        temp_a3_5 = spD8->unk0;
        sp10 = 0;
        var_v0_6 = 0;
        spC = temp_a3_5;
        if (temp_a4_4 == 0) {
            var_a0_6 = arg0->unk7F30->unk4;
            if (var_a0_6 == 0) {
                if (__glCrmIoctl(arg0->unk7B10, (void *)0x5604, &sp18, temp_a3_5, temp_a4_4, temp_a5_4) < 0) {
                    arg0->unk14(arg0, &sub_0da40000 + 0x19E8);
                }
                arg0->unk7F30->unk4 = (s32) sp18;
                var_v0_6 = sp10;
                var_a0_6 = arg0->unk7F30->unk4;
            }
            var_v0_6 |= 0x10;
            sp10 = var_v0_6;
            sp14 = var_a0_6;
        }
        if ((arg0->unkC99 != 0) && (arg0->unk7D08 != 0)) {
            goto block_44;
        }
        if (arg0->unkC9A != 0) {
            if (arg0->unk7D09 == 0) {

            } else {
block_44:
                var_v0_6 |= 1;
                sp10 = var_v0_6;
            }
        }
        if (arg0->unkCE4 == 1) {
            var_v0_6 |= 4;
            sp10 = var_v0_6;
        }
        if (arg0->unkD39 != 0) {
            goto block_47;
        }
        if (arg0->unkD3A == 0) {

        } else {
block_47:
            var_v0_6 |= 2;
            sp10 = var_v0_6;
        }
        if (arg0->unkD84 == 1) {
            sp10 = var_v0_6 | 8;
        }
        if (__glCrmIoctl(arg0->unk7B10, (void *)0x5609, (s8 *) &sp8) >= 0) {
            arg0->unk7DC0 = 0x7D;
            arg0->unk7DBC->unk21F0 = 0x7D;
            arg0->unk7D0B = 0U;
            if (spE0->unk0 != 4) {
                goto block_51;
            }
            temp_a6_2 = spE0->unk4;
            if ((temp_a6_2->unk4 != 0) && ((temp_a6_2->unk28 == 0x10) || (temp_a6_2->unk2C == 0))) {
                if (arg0->unk80F4 >= 0) {
                    arg0->unk7D0B = 1U;
                    goto block_51;
                }
                return 0;
            }
block_51:
            arg0->unk7D0C = 0U;
            if (spD8->unk0 != 4) {
                goto block_52;
            }
            temp_t3_4 = spD8->unk4;
            if ((temp_t3_4->unk4 != 0) && ((temp_t3_4->unk28 == 0x10) || (temp_t3_4->unk2C == 0)) && (spE0 != spD8)) {
                if (arg0->unk80F4 >= 0) {
                    arg0->unk7D0C = 1U;
                    goto block_52;
                }
                return 0;
            }
block_52:
            if ((spE0->unk0 != 5) && (spD8->unk0 != 5)) {
                goto block_54;
            }
            if (__glCrmUpdateHardwareState(arg0, (? *) spE0, (void *) spD8, &sp1, (s64) sp) == 0) {
                return 0;
            }
block_54:
            if (arg0->unkAC & 2) {
                if (sp48 != 0) {
                    goto block_57;
                }
                var_s3 = arg0 + 0x10000;
            } else {
block_57:
                *(void *)0x1018 = 2;
                temp_a0 = arg0 + 0x77C8;
                arg0->unk2DEC = (s32) (arg0->unk2DEC | 0xFF);
                if (arg0->unkC94 != 0) {
                    __glCrmInitRGB(temp_a0, arg0);
                    if (arg0->unkC96 != 0) {
                        __glCrmInitRGB(arg0 + 0x78A4, arg0);
                    }
                    arg0->unk7D10 = 4096.0f;
                } else {
                    __glCrmInitCI(temp_a0, arg0);
                    if (arg0->unkC96 != 0) {
                        __glCrmInitCI(arg0 + 0x78A4, arg0);
                    }
                    if (arg0->unkCB4 != 0xC) {
                        arg0->unk7D10 = 4096.0f;
                    } else {
                        arg0->unk7D10 = 256.0f;
                    }
                }
                arg0->unk12F4 = -1;
                arg0->unk12F0 = 1;
                arg0->unk7D1C = 16384.0f;
                arg0->unk7D18 = 64.0f;
                var_s3 = arg0 + 0x10000;
                arg0->unk7D14 = 2048.0f;
                arg0->unk812C = 0;
                if (arg0->unkC98 != 0) {
                    temp_a0_2 = arg0 + 0x7A80;
                    if (arg0->unk7D0A != 0) {
                        __glCrmInitAccum64(temp_a0_2, arg0);
                    } else {
                        __glInitAccum64(temp_a0_2, arg0);
                        arg0->unk7B04 = __glCrmAllocAccum;
                    }
                }
                if (arg0->unkC99 != 0) {
                    temp_v0_6 = arg0 + 0x79FC;
                    if (arg0->unk7D08 != 0) {
                        __glCrmInitDepth(arg0, temp_v0_6);
                    } else {
                        __glInitDepth(temp_v0_6, arg0);
                    }
                }
                arg0->unk7A48 = 0x3FFFFFFF;
                if (arg0->unkC9A != 0) {
                    temp_v0_7 = arg0 + 0x7984;
                    if (arg0->unk7D09 != 0) {
                        __glCrmInitStencil(arg0, temp_v0_7);
                    } else {
                        __glInitStencil8(temp_v0_7, arg0);
                    }
                }
            }
            if (arg0->unk7D0B != 0) {
                goto block_71;
            }
            if (arg0->unk7D0C == 0) {
                goto block_76;
            }
block_71:
            if (var_s3->unk-7F0C >= 0) {
                if (spE0->unk0 == 4) {
                    if (spE0 != spD8) {
                        arg0->unk2DF4 = (void *) (arg0 + 0x77C8);
                    }
                }
                if (((s32) var_s3->unk-7F00 <= 0) || (sp48 != 0)) {
                    temp_a3_6 = spE0->unk0;
                    if (temp_a3_6 == 4) {
                        sub_0d940000(arg0 + 0x77C8, (? *) spE0, arg0, temp_a3_6);
                    }
                }
block_76:
                sp1C = arg0->unkE78;
                temp_a2_3 = arg0 + 0x7D30;
                if (spE0->unk0 != 5) {
                    var_v0_7 = __glMakeCurrentBuffers(arg0, temp_a2_3, temp_a2_3);
                } else {
                    var_v0_7 = __glCrmUpdateHardwareState(arg0, (? *) spE0, temp_a2_3);
                }
                temp_s6 = var_v0_7 & 0xFF;
                arg0->unk7D4C = 0;
                arg0->unk7D50 = 0;
                arg0->unk7D54 = 0;
                if (sp1 != 0) {
                    if (arg0->unkC96 != 0) {
                        arg0->unk77C4 = (void *) (arg0 + 0x78A4);
                    }
                    arg0->unk77C0 = (void *) (arg0 + 0x77C8);
                    arg0->unk2DF4 = NULL;
                    arg0->unk2DF0 = 0;
                }
                if ((sp0 != 0) && (spE0 != spD8)) {
                    temp_v0_8 = spD8->unk1C;
                    arg0->unk2DF4 = NULL;
                    if (temp_v0_8 != NULL) {
                        arg0->unk7D34 = (s32) temp_v0_8->unk30;
                    } else {
                        arg0->unk7D34 = 0;
                    }
                }
                if ((arg0->unk7D0C != 0) && (temp_v0_9 = spD8->unk1C, (temp_v0_9 != NULL)) && (spE0 != spD8)) {
                    var_s3->unk-7F04 = (s32 *) temp_v0_9->unk8;
                    arg0->unk7878 = &__glReadSpan;
                    temp_t3_5 = spD8->unk4;
                    if (temp_t3_5->unk2C != 0x10) {
                        if (temp_t3_5->unk28 != 8) {
                            arg0->unk7874 = &__glCrmFetchSPBuffRed;
                        } else {
                            arg0->unk7874 = &__glCrmFetchSPBuffRed_8bit;
                        }
                    } else {
                        arg0->unk7874 = &__glCrmFetchSPBuffColor;
                    }
                } else {
                    temp_v0_10 = var_s3->unk-7F04;
                    if ((temp_v0_10 != NULL) && (spE0 != spD8)) {
                        *temp_v0_10 = 0;
                    }
                }
                if (!(arg0->unkAC & 2)) {
                    arg0->unk2E8C = &__glComputeClipBox;
                    arg0->unk30B4 = &__glCrmSpanRenderStencil2;
                    arg0->unk30B0 = (s32) M2C_ERROR(/* Read from unset register $t9 */);
                    arg0->unk30AC = &__glCrmSpanRenderDepth2;
                    arg0->unk30A8 = &__glCrmSpanRenderDepth;
                    arg0->unk30A4 = &__glCrmSpanRenderRGBA2;
                    arg0->unk30A0 = &__glCrmSpanRenderRGBA;
                    arg0->unk309C = &__glCrmSpanRenderCI2;
                    arg0->unk3098 = &__glCrmSpanRenderCI;
                    arg0->unk3094 = &__glCrmSpanReadStencil2;
                    arg0->unk3090 = &__glCrmSpanReadStencil;
                    arg0->unk308C = &__glCrmSpanReadDepth2;
                    arg0->unk3088 = &__glCrmSpanReadDepth;
                    arg0->unk3084 = &__glCrmSpanReadColor2;
                    arg0->unk3080 = &__glCrmSpanReadColor;
                    arg0->unk307C = &__glCrmSpanReadColor2;
                    arg0->unk3078 = &__glCrmSpanReadColor;
                    arg0->unk3120 = &__glGenericPickReadImage;
                    arg0->unk311C = &__glGenericPickCopyImage;
                    arg0->unk2E14 = &__glCrmPickTextureProcs;
                    arg0->unk2E38 = &__glGenericPickParameterClipProcs;
                    arg0->unk2E1C = &__glGenericPickTransformProcs;
                    arg0->unk2E18 = (s32) M2C_ERROR(/* Read from unset register $t9 */);
                    arg0->unk2E54 = &__glGenericPickMvpMatrixProcs;
                    arg0->unk2E50 = &__glGenericPickInvTransposeProcs;
                    arg0->unk2E4C = &__glGenericPickMatrixProcs;
                    arg0->unk2E10 = &__glGenericPickColorMaterialProcs;
                    arg0->unk2E0C = &__glGenericPickBlendProcs;
                    arg0->unk3150 = &__glCrmRasterPos4;
                    arg0->unk314C = &__glCrmRasterPos3;
                    arg0->unk3148 = &__glCrmRasterPos2;
                    arg0->unk2EBC = &__glSecondLinesVertex;
                    arg0->unk2EB8 = &__glFirstLinesVertex;
                    arg0->unk2EC0 = &__glOddTStripVertex;
                    arg0->unk2EC4 = &__glEvenTStripVertex;
                    arg0->unk2EAC = &__glNop;
                    arg0->unk2F24 = &__glEndPrim;
                    arg0->unk2F18 = &__glBeginQuads;
                    arg0->unk2F1C = &__glBeginQStrip;
                    arg0->unk2F0C = &__glBeginTriangles;
                    arg0->unk2F14 = (s32) M2C_ERROR(/* Read from unset register $t9 */);
                    arg0->unk2F10 = &__glBeginTStrip;
                    arg0->unk2F20 = &__glBeginPolygon;
                    arg0->unk2EFC = &__glBeginPoints;
                    arg0->unk2F00 = &__glBeginLines;
                    arg0->unk2F08 = &__glBeginLStrip;
                    arg0->unk2F04 = &__glBeginLLoop;
                    arg0->unk2E7C = &__glComputeInverseTranspose;
                    arg0->unk2E80 = &__glMipsNormalize;
                    arg0->unk2E6C = &__glMipsMultMatrix;
                    arg0->unk2E68 = &__glMakeIdentity;
                    arg0->unk2E64 = &__glInvertTransposeMatrix;
                    arg0->unk2E60 = &__glCopyMatrix;
                    arg0->unk2E78 = &__glLoadIdentityModelViewMatrix;
                    arg0->unk2E74 = &__glPopModelViewMatrix;
                    arg0->unk2E70 = &__glPushModelViewMatrix;
                    arg0->unk3170 = &__glConvertStipple;
                    arg0->unk2E5C = &__glCrmPickAllProcs;
                    arg0->unk2E08 = (? (*)(void *)) M2C_ERROR(/* Read from unset register $t9 */);
                    arg0->unk2F3C = &__glClipPolygon;
                    arg0->unk30DC = &__glDrawBitmap;
                    arg0->unk2ED8 = &__glDoEvalCoord2;
                    arg0->unk2ED4 = &__glDoEvalCoord1;
                    arg0->unk58 = (void *) (sub_0d940000 + 0x4E20);
                    temp_a7 = sub_0d940000 + 0x4E10;
                    arg0->unk2DF8 = temp_a7;
                    temp_a6_3 = sub_0d940000 + 0x4DC0;
                    arg0->unk2DFC = temp_a6_3;
                    var_a0_7 = temp_gp->unk-5458;
                    temp_a5_5 = sub_0d940000 + 0x3BB0;
                    arg0->unk2E88 = temp_a5_5;
                    temp_a4_5 = sub_0d940000 + 0x3C80;
                    arg0->unk2E84 = temp_a4_5;
                    if (var_a0_7 < 0) {
                        var_a0_7 = getenv(&sub_0da40000 + 0x1A00, &__glCopyMatrix, &__glInvertTransposeMatrix, &__glMakeIdentity, temp_a4_5, temp_a5_5, temp_a6_3, temp_a7) != NULL;
                        temp_gp->unk-5458 = var_a0_7;
                    }
                    if (var_a0_7 != 0) {
                        arg0->unk7C = (void *) (sub_0d940000 + 0x4C90);
                    } else {
                        arg0->unk7C = (void *) (sub_0d940000 + 0x4B90);
                    }
                    arg0->unk7D60 = 0;
                    arg0->unk7D5C = 0;
                    arg0->unk7D58 = 0x400000;
                    arg0->unk3178 = &__glColorTableSGI;
                    arg0->unk3174 = &__gl_varray_funcs;
                    arg0->unk2E58 = &__glGenericPickDepthProcs;
                    arg0->unk2E48 = &__glCrmPickVertexProcs;
                    arg0->unk2E40 = &__glCrmPickStoreProcs;
                    arg0->unk2E20 = &__glCrmPickPointProcs;
                    arg0->unk2E2C = &__glCrmPickRenderBitmapProcs;
                    arg0->unk2E28 = &__glCrmPickTriangleProcs;
                    arg0->unk2E44 = &__glCrmPickSpanProcs;
                    arg0->unk2E24 = &__glCrmPickLineProcs;
                    arg0->unk2E34 = &__glCrmPickClipProcs;
                    arg0->unk2E30 = &__glCrmPickPixelProcs;
                    arg0->unk2E3C = (void *) (sub_0d940000 + 0x4A20);
                }
                __glCrmAllocAccum(arg0);
                if (arg0->unkAC & 6) {
                    if (temp_s6 != 0) {
                        __glCrmAllocAccum(arg0);
                    }
                    temp_v0_11 = arg0->unkE78;
                    if (temp_v0_11 != sp1C) {
                        arg0->unk174 = (f32) ((f32) (temp_v0_11 - sp1C) + arg0->unk174);
                    }
                    __glCrmAllocAccum(arg0);
                    __glCrmSetCurrentBuffers(arg0, 1, 1);
                } else {
                    M2C_ERROR(/* Read from unset register $t9 */)(arg0);
                    arg0->unkDF8 = (void *) (temp_gp - 0x5484);
                    arg0->unkE00 = (void *) (&sub_0da40000 + 0x1A28);
                    arg0->unkDFC = (void *) (&sub_0da40000 + 0x1A18);
                    arg0->unk2E08(arg0);
                    arg0->unk1C(arg0, &sp20, &sp24, &sp28, &sp1C);
                    __glcrmim_dispatchTable.unk29C(0, 0, sp28, sp1C);
                    __glcrmim_dispatchTable.unk98(0, 0, sp28, sp1C);
                    arg0->unk7E40 = 0;
                    arg0->unk7E30 = 0;
                    arg0->unk7E3C = 0;
                    arg0->unk170 = (f32) arg0->unkE54;
                    arg0->unk174 = (f32) (((f32) arg0->unkE78 + arg0->unkE58) - arg0->unkE5C);
                }
                if (spE0 == spD8) {
                    if (spD8->unk0 != 4) {

                    } else if (arg0->unk7D0B == 1) {
                        if (spD8->unk4->unk2C != 0x10) {
                            arg0->unk7874 = &__glCrmReadSPBuffRed;
                        } else {
                            arg0->unk7874 = &__glCrmReadSPBuffColor;
                        }
                    }
                }
                __glContextSetColorScales(arg0);
                if (arg0->unkDD0 == 0) {
                    temp_v0_12 = spD8->unk1C;
                    if ((temp_v0_12 != NULL) && (temp_a0_3 = temp_v0_12->unk0, (temp_a0_3 != 0)) && (temp_v0_12->unk4 != 0)) {
                        arg0->unk7D40 = temp_a0_3;
                        arg0->unk7D44 = (s32) temp_v0_12->unk4;
                    } else {
                        if (spD8->unk0 != 5) {
                            goto block_188;
                        }
                        if (temp_v0_12 != NULL) {
                            arg0->unk7D40 = (s32) temp_v0_12->unk8C;
                            arg0->unk7D44 = (s32) temp_v0_12->unk90;
                            *temp_v0_12->unk8 = temp_v0_12->unkC;
                        } else {
block_188:
                            arg0->unk7D44 = (s32) arg0->unkE78;
                            arg0->unk7D40 = (s32) arg0->unkE74;
                        }
                    }
                }
                __glCrmUpdateHardwareState(arg0);
                temp_v0_13 = arg0->unk137C;
                if (*(s32 *)0x1048 != 0) {
                    var_a1_3 = sp38;
                    if (temp_v0_13 != 0) {
                        var_a5_3 = 4;
                        var_v0_8 = 0xEC;
                        var_a0_8 = 0;
                        temp_a2_4 = arg0 + 0x1F28;
                        var_a1_3 = (s64) (arg0 + 0x17C0);
                        arg0->unk17B8 = (void *) (arg0 + 0x2688);
                        do {
                            var_a5_3 -= 1;
                            var_v0_8 -= 1;
                            temp_a4_6 = var_a0_8 + temp_a2_4;
                            temp_a3_7 = *(var_a0_8 + var_a1_3);
                            var_a0_8 += 8;
                            *temp_a4_6 = temp_a3_7;
                        } while (var_a5_3 != 0);
                        do {
                            *(var_a0_8 + temp_a2_4) = *(var_a0_8 + var_a1_3);
                            *(var_a0_8 + (temp_a2_4 + 8)) = *(var_a0_8 + (var_a1_3 + 8));
                            *(var_a0_8 + (temp_a2_4 + 0x10)) = *(var_a0_8 + (var_a1_3 + 0x10));
                            *(var_a0_8 + (temp_a2_4 + 0x18)) = *(var_a0_8 + (var_a1_3 + 0x18));
                            *(var_a0_8 + (temp_a2_4 + 0x20)) = *(var_a0_8 + (var_a1_3 + 0x20));
                            *(var_a0_8 + (temp_a2_4 + 0x28)) = *(var_a0_8 + (var_a1_3 + 0x28));
                            var_v0_8 -= 8;
                            *(var_a0_8 + (temp_a2_4 + 0x30)) = *(var_a0_8 + (var_a1_3 + 0x30));
                            temp_at = var_a0_8 + (temp_a2_4 + 0x38);
                            temp_a4_7 = *(var_a0_8 + (var_a1_3 + 0x38));
                            var_a0_8 += 0x40;
                            *temp_at = temp_a4_7;
                        } while (var_v0_8 > 0);
                    } else {
                        arg0->unk17B8 = (void *) var_a1_3;
                    }
                } else {
                    var_a5_4 = 4;
                    if (temp_v0_13 != 0) {
                        var_a5_5 = 4;
                        var_v0_9 = 0xEC;
                        var_a0_9 = NULL;
                        var_a1_3 = (s64) (arg0 + 0x17C0);
                        arg0->unk17B8 = (void *) (arg0 + 0x2688);
                        do {
                            var_a5_5 -= 1;
                            var_v0_9 -= 1;
                            temp_t8_2 = var_a0_9 + 0x1050;
                            temp_t3_6 = *(var_a0_9 + var_a1_3);
                            var_a0_9 += 8;
                            *temp_t8_2 = temp_t3_6;
                        } while (var_a5_5 != 0);
                        do {
                            var_a0_9->unk1050 = (s64) *(var_a0_9 + var_a1_3);
                            var_a0_9->unk1058 = (s64) *(var_a0_9 + (var_a1_3 + 8));
                            var_a0_9->unk1060 = (s64) *(var_a0_9 + (var_a1_3 + 0x10));
                            var_a0_9->unk1068 = (s64) *(var_a0_9 + (var_a1_3 + 0x18));
                            var_a0_9->unk1070 = (s64) *(var_a0_9 + (var_a1_3 + 0x20));
                            var_a0_9->unk1078 = (s64) *(var_a0_9 + (var_a1_3 + 0x28));
                            var_v0_9 -= 8;
                            var_a0_9->unk1080 = (s64) *(var_a0_9 + (var_a1_3 + 0x30));
                            temp_v1_2 = var_a0_9 + 0x1088;
                            temp_at_2 = *(var_a0_9 + (var_a1_3 + 0x38));
                            var_a0_9 += 0x40;
                            *temp_v1_2 = temp_at_2;
                        } while (var_v0_9 > 0);
                    } else {
                        var_v0_10 = 0xEC;
                        var_a0_10 = NULL;
                        var_a1_3 = (s64) (arg0 + 0x1F28);
                        arg0->unk17B8 = (void *)0x1050;
                        do {
                            var_a5_4 -= 1;
                            var_v0_10 -= 1;
                            temp_a6_4 = var_a0_10 + 0x1050;
                            temp_a4_8 = *(var_a0_10 + var_a1_3);
                            var_a0_10 += 8;
                            *temp_a6_4 = temp_a4_8;
                        } while (var_a5_4 != 0);
                        do {
                            var_a0_10->unk1050 = (s64) *(var_a0_10 + var_a1_3);
                            var_a0_10->unk1058 = (s64) *(var_a0_10 + (var_a1_3 + 8));
                            var_a0_10->unk1060 = (s64) *(var_a0_10 + (var_a1_3 + 0x10));
                            var_a0_10->unk1068 = (s64) *(var_a0_10 + (var_a1_3 + 0x18));
                            var_a0_10->unk1070 = (s64) *(var_a0_10 + (var_a1_3 + 0x20));
                            var_a0_10->unk1078 = (s64) *(var_a0_10 + (var_a1_3 + 0x28));
                            var_v0_10 -= 8;
                            var_a0_10->unk1080 = (s64) *(var_a0_10 + (var_a1_3 + 0x30));
                            temp_v1_3 = var_a0_10 + 0x1088;
                            temp_at_3 = *(var_a0_10 + (var_a1_3 + 0x38));
                            var_a0_10 += 0x40;
                            *temp_v1_3 = temp_at_3;
                        } while (var_v0_10 > 0);
                    }
                }
                arg0->unkAC = (s32) ((arg0->unkAC | 3) & ~4);
                if (arg0->unkC94 != 0) {
                    if ((temp_s6 != 0) && (arg0->unkCC4 == 0)) {
                        if (arg0->unkCBC == 8) {
                            M2C_ERROR(/* Read from unset register $t9 */)(0x4000, var_a1_3);
                        }
                    }
                }
                return 1;
            }
            return 0;
        }
        return 0;
    }
    arg0->unkC(0, arg0);
    return 0;
}

s64 __glCrmCreateContext(void *arg0, s64 arg1, s64 arg2) {
    s64 spC0;
    s64 sp80;
    s64 sp78;
    s64 sp70;
    s64 sp68;
    s64 sp60;
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp18;
    s64 sp10;
    s64 sp0;
    s32 *temp_a0;
    s32 *temp_a0_3;
    s32 *temp_a1;
    s32 *temp_a3;
    s32 *temp_a5;
    s32 *temp_a6_3;
    s32 *temp_a6_6;
    s32 *temp_a7;
    s32 *temp_a7_2;
    s32 *temp_at_3;
    s32 *temp_at_4;
    s32 *temp_t2;
    s32 *temp_t2_2;
    s32 *temp_v0_5;
    s32 *temp_v1;
    s32 *temp_v1_4;
    s32 temp_a0_2;
    s32 temp_a2;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_a6_4;
    s32 temp_a6_7;
    s32 temp_at;
    s32 temp_ra;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t9_2;
    s32 temp_v0_3;
    s32 temp_v1_3;
    s32 temp_v1_5;
    s32 var_a4;
    s32 var_a4_10;
    s32 var_a4_11;
    s32 var_a4_12;
    s32 var_a4_2;
    s32 var_a4_3;
    s32 var_a4_4;
    s32 var_a4_5;
    s32 var_a4_6;
    s32 var_a4_7;
    s32 var_a4_8;
    s32 var_a4_9;
    s32 var_a5;
    s32 var_a5_10;
    s32 var_a5_11;
    s32 var_a5_12;
    s32 var_a5_2;
    s32 var_a5_3;
    s32 var_a5_4;
    s32 var_a5_5;
    s32 var_a5_6;
    s32 var_a5_7;
    s32 var_a5_8;
    s32 var_a5_9;
    s32 var_a6;
    s32 var_a7;
    s32 var_t0;
    s32 var_t0_2;
    s64 *temp_v1_2;
    s64 temp_at_2;
    s64 temp_v0;
    void *temp_a6;
    void *temp_a6_2;
    void *temp_a6_5;
    void *temp_gp;
    void *temp_t3;
    void *temp_t8;
    void *temp_t9;
    void *temp_v0_2;
    void *temp_v0_4;

    sp18 = arg1;
    temp_gp = M2C_ERROR(/* Read from unset register $t9 */) + 0x10989C;
    sp10 = (s64) arg0;
    temp_v0 = arg0->unk4(0, 1, 0x8130);
    if (temp_v0 != 0) {
        var_a5 = 0x14;
        var_a4 = 0;
        sp0 = arg2;
        temp_a6 = &sub_0da50000 - 0x4688;
        do {
            *(var_a4 + temp_v0) = *(var_a4 + sp10);
            *(var_a4 + (temp_v0 + 4)) = *(var_a4 + (sp10 + 4));
            var_a5 -= 4;
            *(var_a4 + (temp_v0 + 8)) = *(var_a4 + (sp10 + 8));
            temp_v1 = var_a4 + (temp_v0 + 0xC);
            temp_at = *(var_a4 + (sp10 + 0xC));
            var_a4 += 0x10;
            *temp_v1 = temp_at;
        } while (var_a5 > 0);
        var_a4_2 = 0x14;
        var_a5_2 = 0;
        do {
            *(var_a5_2 + (temp_v0 + 0xC90)) = *(var_a5_2 + sp18);
            *(var_a5_2 + (temp_v0 + 0xC98)) = *(var_a5_2 + (sp18 + 8));
            var_a4_2 -= 4;
            *(var_a5_2 + (temp_v0 + 0xCA0)) = *(var_a5_2 + (sp18 + 0x10));
            temp_v1_2 = var_a5_2 + (temp_v0 + 0xCA8);
            temp_at_2 = *(var_a5_2 + (sp18 + 0x18));
            var_a5_2 += 0x20;
            *temp_v1_2 = temp_at_2;
        } while (var_a4_2 > 0);
        spC0 = temp_v0;
        temp_v0->unkA8 = (void *) (sub_0d940000 + 0x5560);
        var_a7 = 2;
        temp_v0->unk68 = (void *) (sub_0d940000 + 0x5D10);
        var_a4_3 = 0x14A;
        temp_v0->unk64 = (void *) (sub_0d940000 + 0x5DB0);
        var_a5_3 = 0;
        temp_v0->unk5C = (void *) (sub_0d940000 + 0x4EB0);
        temp_v0->unk60 = (void *) (sub_0d940000 + 0x5D40);
        do {
            var_a7 -= 1;
            var_a4_3 -= 1;
            temp_ra = *(var_a5_3 + &__glcrmlc_dispatchTable);
            temp_at_3 = var_a5_3 + temp_a6;
            var_a5_3 += 4;
            *temp_at_3 = temp_ra;
        } while (var_a7 != 0);
        sp70 = (s64) (temp_a6 + 4);
        sp68 = (s64) (&__glcrmlc_dispatchTable + 4);
        do {
            temp_a2 = *(var_a5_3 + (&__glcrmlc_dispatchTable + 0x1C));
            *(var_a5_3 + temp_a6) = *(var_a5_3 + &__glcrmlc_dispatchTable);
            *(var_a5_3 + sp70) = *(var_a5_3 + sp68);
            *(var_a5_3 + (temp_a6 + 8)) = *(var_a5_3 + (&__glcrmlc_dispatchTable + 8));
            *(var_a5_3 + (temp_a6 + 0xC)) = *(var_a5_3 + (&__glcrmlc_dispatchTable + 0xC));
            *(var_a5_3 + (temp_a6 + 0x10)) = *(var_a5_3 + (&__glcrmlc_dispatchTable + 0x10));
            var_a4_3 -= 8;
            *(var_a5_3 + (temp_a6 + 0x14)) = *(var_a5_3 + (&__glcrmlc_dispatchTable + 0x14));
            temp_a3 = var_a5_3 + (temp_a6 + 0x1C);
            *(var_a5_3 + (temp_a6 + 0x18)) = *(var_a5_3 + (&__glcrmlc_dispatchTable + 0x18));
            var_a5_3 += 0x20;
            *temp_a3 = temp_a2;
        } while (var_a4_3 > 0);
        var_a5_4 = 0x18;
        var_a4_4 = 0;
        temp_v0_2 = &sub_0da50000 - 0x4688;
        do {
            temp_v1_3 = *(var_a4_4 + (&__glcrmlc_vertexDispatchTable + 0xC));
            *(var_a4_4 + (temp_v0_2 + 0x528)) = *(var_a4_4 + &__glcrmlc_vertexDispatchTable);
            var_a5_4 -= 4;
            *(var_a4_4 + (temp_v0_2 + 0x52C)) = *(var_a4_4 + (&__glcrmlc_vertexDispatchTable + 4));
            temp_a0 = var_a4_4 + (temp_v0_2 + 0x534);
            *(var_a4_4 + (temp_v0_2 + 0x530)) = *(var_a4_4 + (&__glcrmlc_vertexDispatchTable + 8));
            var_a4_4 += 0x10;
            *temp_a0 = temp_v1_3;
        } while (var_a5_4 > 0);
        var_t0 = 2;
        var_a4_5 = 0x2A;
        var_a5_5 = 0;
        temp_a6_2 = temp_v0_2 + 0x588;
        do {
            var_t0 -= 1;
            var_a4_5 -= 1;
            temp_a0_2 = *(var_a5_5 + &__glcrmlc_colorDispatchTable);
            temp_a1 = var_a5_5 + temp_a6_2;
            var_a5_5 += 4;
            *temp_a1 = temp_a0_2;
        } while (var_t0 != 0);
        sp60 = (s64) (&__glcrmlc_colorDispatchTable + 0xC);
        sp58 = (s64) (temp_a6_2 + 4);
        sp50 = (s64) (&__glcrmlc_colorDispatchTable + 4);
        do {
            temp_t1 = *(var_a5_5 + (&__glcrmlc_colorDispatchTable + 0x1C));
            *(var_a5_5 + temp_a6_2) = *(var_a5_5 + &__glcrmlc_colorDispatchTable);
            *(var_a5_5 + sp58) = *(var_a5_5 + sp50);
            *(var_a5_5 + (temp_a6_2 + 8)) = *(var_a5_5 + (&__glcrmlc_colorDispatchTable + 8));
            *(var_a5_5 + (temp_a6_2 + 0xC)) = *(var_a5_5 + sp60);
            *(var_a5_5 + (temp_a6_2 + 0x10)) = *(var_a5_5 + (&__glcrmlc_colorDispatchTable + 0x10));
            var_a4_5 -= 8;
            *(var_a5_5 + (temp_a6_2 + 0x14)) = *(var_a5_5 + (&__glcrmlc_colorDispatchTable + 0x14));
            temp_t2 = var_a5_5 + (temp_a6_2 + 0x1C);
            *(var_a5_5 + (temp_a6_2 + 0x18)) = *(var_a5_5 + (&__glcrmlc_colorDispatchTable + 0x18));
            var_a5_5 += 0x20;
            *temp_t2 = temp_t1;
        } while (var_a4_5 > 0);
        temp_v0_2->unk630 = (s32) __glcrmlc_normalDispatchTable.unk0;
        temp_v0_2->unk634 = (s32) __glcrmlc_normalDispatchTable.unk4;
        temp_v0_2->unk638 = (s32) __glcrmlc_normalDispatchTable.unk8;
        temp_v0_2->unk63C = (s32) __glcrmlc_normalDispatchTable.unkC;
        temp_v0_2->unk640 = (s32) __glcrmlc_normalDispatchTable.unk10;
        temp_v0_2->unk644 = (s32) __glcrmlc_normalDispatchTable.unk14;
        temp_v0_2->unk648 = (s32) __glcrmlc_normalDispatchTable.unk18;
        temp_v0_2->unk64C = (s32) __glcrmlc_normalDispatchTable.unk1C;
        temp_v0_2->unk654 = (s32) __glcrmlc_normalDispatchTable.unk24;
        temp_v0_2->unk650 = (s32) __glcrmlc_normalDispatchTable.unk20;
        temp_t9 = temp_v0_2 + 0x65C;
        var_a4_6 = 0x20;
        var_a5_6 = 0;
        do {
            temp_a3_2 = *(var_a5_6 + (&__glcrmlc_texCoordDispatchTable + 0xC));
            *(var_a5_6 + (temp_v0_2 + 0x658)) = *(var_a5_6 + &__glcrmlc_texCoordDispatchTable);
            var_a4_6 -= 4;
            *(var_a5_6 + temp_t9) = *(var_a5_6 + (&__glcrmlc_texCoordDispatchTable + 4));
            temp_a6_3 = var_a5_6 + (temp_v0_2 + 0x664);
            *(var_a5_6 + (temp_v0_2 + 0x660)) = *(var_a5_6 + (&__glcrmlc_texCoordDispatchTable + 8));
            var_a5_6 += 0x10;
            *temp_a6_3 = temp_a3_2;
        } while (var_a4_6 > 0);
        var_a5_7 = 0x18;
        var_a4_7 = 0;
        do {
            temp_a6_4 = *(var_a4_7 + (temp_t9 + 0xC));
            *(var_a4_7 + (temp_v0_2 + 0x6D8)) = *(var_a4_7 + temp_t9);
            var_a5_7 -= 4;
            *(var_a4_7 + (temp_v0_2 + 0x6DC)) = *(var_a4_7 + (temp_t9 + 4));
            temp_a7 = var_a4_7 + (temp_v0_2 + 0x6E4);
            *(var_a4_7 + (temp_v0_2 + 0x6E0)) = *(var_a4_7 + (temp_t9 + 8));
            var_a4_7 += 0x10;
            *temp_a7 = temp_a6_4;
        } while (var_a5_7 > 0);
        temp_v0_2->unk754 = (s32) __glcrmlc_rectDispatchTable.unk1C;
        temp_v0_2->unk750 = (s32) __glcrmlc_rectDispatchTable.unk18;
        temp_v0_2->unk74C = (s32) __glcrmlc_rectDispatchTable.unk14;
        temp_v0_2->unk748 = (s32) __glcrmlc_rectDispatchTable.unk10;
        temp_v0_2->unk744 = (s32) __glcrmlc_rectDispatchTable.unkC;
        temp_v0_2->unk740 = (s32) __glcrmlc_rectDispatchTable.unk8;
        temp_v0_2->unk73C = (s32) __glcrmlc_rectDispatchTable.unk4;
        temp_v0_2->unk738 = (s32) __glcrmlc_rectDispatchTable.unk0;
        var_a6 = 2;
        var_a5_8 = 0x14A;
        var_a4_8 = 0;
        temp_t8 = temp_v0_2 + 0x760;
        do {
            var_a6 -= 1;
            var_a5_8 -= 1;
            temp_v0_3 = *(var_a4_8 + __glcrmlc_rectDispatchTable.unk14);
            temp_v1_4 = var_a4_8 + temp_t8;
            var_a4_8 += 4;
            *temp_v1_4 = temp_v0_3;
        } while (var_a6 != 0);
        sp78 = 0x20;
        sp80 = __glcrmlc_rectDispatchTable.unk14 + 8;
        do {
            *(var_a4_8 + temp_t8) = *(var_a4_8 + __glcrmlc_rectDispatchTable.unk14);
            *(var_a4_8 + (temp_t8 + 4)) = *(var_a4_8 + (__glcrmlc_rectDispatchTable.unk14 + 4));
            *(var_a4_8 + (temp_t8 + 8)) = *(var_a4_8 + sp80);
            *(var_a4_8 + (temp_t8 + 0xC)) = *(var_a4_8 + (__glcrmlc_rectDispatchTable.unk14 + 0xC));
            *(var_a4_8 + (temp_t8 + 0x10)) = *(var_a4_8 + (__glcrmlc_rectDispatchTable.unk14 + 0x10));
            *(var_a4_8 + (temp_t8 + 0x14)) = *(var_a4_8 + (__glcrmlc_rectDispatchTable.unk14 + 0x14));
            var_a5_8 -= 8;
            *(var_a4_8 + (temp_t8 + 0x18)) = *(var_a4_8 + (__glcrmlc_rectDispatchTable.unk14 + 0x18));
            *(var_a4_8 + (temp_t8 + 0x1C)) = *(var_a4_8 + (__glcrmlc_rectDispatchTable.unk14 + 0x1C));
            var_a4_8 += sp78;
        } while (var_a5_8 > 0);
        var_a4_9 = 0x18;
        var_a5_9 = 0;
        temp_t3 = &sub_0da50000 - 0x4688;
        do {
            temp_t9_2 = *(var_a5_9 + (&__glcrmim_vertexDispatchTable + 0xC));
            *(var_a5_9 + (temp_t3 + 0xC88)) = *(var_a5_9 + &__glcrmim_vertexDispatchTable);
            var_a4_9 -= 4;
            *(var_a5_9 + (temp_t3 + 0xC8C)) = *(var_a5_9 + (&__glcrmim_vertexDispatchTable + 4));
            temp_at_4 = var_a5_9 + (temp_t3 + 0xC94);
            *(var_a5_9 + (temp_t3 + 0xC90)) = *(var_a5_9 + (&__glcrmim_vertexDispatchTable + 8));
            var_a5_9 += 0x10;
            *temp_at_4 = temp_t9_2;
        } while (var_a4_9 > 0);
        var_t0_2 = 2;
        var_a5_10 = 0x2A;
        temp_v0_4 = &sub_0da50000 - 0x4688;
        var_a4_10 = 0;
        temp_a6_5 = temp_v0_4 + 0xCE8;
        do {
            var_t0_2 -= 1;
            var_a5_10 -= 1;
            temp_v1_5 = *(var_a4_10 + &__glcrmim_colorDispatchTable);
            temp_a0_3 = var_a4_10 + temp_a6_5;
            var_a4_10 += 4;
            *temp_a0_3 = temp_v1_5;
        } while (var_t0_2 != 0);
        sp48 = (s64) (temp_a6_5 + 0xC);
        sp40 = (s64) (temp_a6_5 + 4);
        sp38 = (s64) (&__glcrmim_colorDispatchTable + 4);
        do {
            temp_t1_2 = *(var_a4_10 + (&__glcrmim_colorDispatchTable + 0x1C));
            *(var_a4_10 + temp_a6_5) = *(var_a4_10 + &__glcrmim_colorDispatchTable);
            *(var_a4_10 + sp40) = *(var_a4_10 + sp38);
            *(var_a4_10 + (temp_a6_5 + 8)) = *(var_a4_10 + (&__glcrmim_colorDispatchTable + 8));
            *(var_a4_10 + sp48) = *(var_a4_10 + (&__glcrmim_colorDispatchTable + 0xC));
            *(var_a4_10 + (temp_a6_5 + 0x10)) = *(var_a4_10 + (&__glcrmim_colorDispatchTable + 0x10));
            var_a5_10 -= 8;
            *(var_a4_10 + (temp_a6_5 + 0x14)) = *(var_a4_10 + (&__glcrmim_colorDispatchTable + 0x14));
            temp_t2_2 = var_a4_10 + (temp_a6_5 + 0x1C);
            *(var_a4_10 + (temp_a6_5 + 0x18)) = *(var_a4_10 + (&__glcrmim_colorDispatchTable + 0x18));
            var_a4_10 += 0x20;
            *temp_t2_2 = temp_t1_2;
        } while (var_a5_10 > 0);
        temp_v0_4->unkD90 = (s32) __glcrmim_normalDispatchTable.unk0;
        temp_v0_4->unkD94 = (s32) __glcrmim_normalDispatchTable.unk4;
        temp_v0_4->unkD98 = (s32) __glcrmim_normalDispatchTable.unk8;
        temp_v0_4->unkD9C = (s32) __glcrmim_normalDispatchTable.unkC;
        temp_v0_4->unkDA0 = (s32) __glcrmim_normalDispatchTable.unk10;
        temp_v0_4->unkDA4 = (s32) __glcrmim_normalDispatchTable.unk14;
        temp_v0_4->unkDA8 = (s32) __glcrmim_normalDispatchTable.unk18;
        temp_v0_4->unkDAC = (s32) __glcrmim_normalDispatchTable.unk1C;
        temp_v0_4->unkDB4 = (s32) __glcrmim_normalDispatchTable.unk24;
        temp_v0_4->unkDB0 = (s32) __glcrmim_normalDispatchTable.unk20;
        var_a5_11 = 0x20;
        var_a4_11 = 0;
        do {
            temp_a3_3 = *(var_a4_11 + (&__glcrmim_texCoordDispatchTable + 0xC));
            *(var_a4_11 + (temp_v0_4 + 0xDB8)) = *(var_a4_11 + &__glcrmim_texCoordDispatchTable);
            var_a5_11 -= 4;
            *(var_a4_11 + (temp_v0_4 + 0xDBC)) = *(var_a4_11 + (&__glcrmim_texCoordDispatchTable + 4));
            temp_a6_6 = var_a4_11 + (temp_v0_4 + 0xDC4);
            *(var_a4_11 + (temp_v0_4 + 0xDC0)) = *(var_a4_11 + (&__glcrmim_texCoordDispatchTable + 8));
            var_a4_11 += 0x10;
            *temp_a6_6 = temp_a3_3;
        } while (var_a5_11 > 0);
        var_a4_12 = 0x18;
        var_a5_12 = 0;
        do {
            temp_a6_7 = *(var_a5_12 + (&__glcrmim_rasterPosDispatchTable + 0xC));
            *(var_a5_12 + (temp_v0_4 + 0xE38)) = *(var_a5_12 + &__glcrmim_rasterPosDispatchTable);
            var_a4_12 -= 4;
            *(var_a5_12 + (temp_v0_4 + 0xE3C)) = *(var_a5_12 + (&__glcrmim_rasterPosDispatchTable + 4));
            temp_a7_2 = var_a5_12 + (temp_v0_4 + 0xE44);
            *(var_a5_12 + (temp_v0_4 + 0xE40)) = *(var_a5_12 + (&__glcrmim_rasterPosDispatchTable + 8));
            var_a5_12 += 0x10;
            *temp_a7_2 = temp_a6_7;
        } while (var_a4_12 > 0);
        temp_v0_4->unkEB4 = (s32) __glcrmim_rectDispatchTable.unk1C;
        temp_v0_4->unkEB0 = (s32) __glcrmim_rectDispatchTable.unk18;
        temp_v0_4->unkEAC = (s32) __glcrmim_rectDispatchTable.unk14;
        temp_v0_4->unkEA8 = (s32) __glcrmim_rectDispatchTable.unk10;
        temp_v0_4->unkEA4 = (s32) __glcrmim_rectDispatchTable.unkC;
        temp_v0_4->unkEA0 = (s32) __glcrmim_rectDispatchTable.unk8;
        temp_v0_4->unkE9C = (s32) __glcrmim_rectDispatchTable.unk4;
        temp_v0_4->unkE98 = (s32) __glcrmim_rectDispatchTable.unk0;
        spC0->unk1358 = &__glNop;
        spC0->unk1354 = &__glNop;
        spC0->unkE38 = 0xB;
        spC0->unkE34 = 0xB;
        spC0->unkE30 = 0xB;
        spC0->unkE2C = 0xB;
        spC0->unkE28 = 0xB;
        spC0->unkED8 = 2;
        spC0->unkEBC = 0x10000;
        spC0->unkEB8 = 0x1E;
        spC0->unkE9C = 0x40;
        spC0->unkE94 = 0xB;
        spC0->unkE8C = 0x400;
        spC0->unkE18 = 1;
        spC0->unkE14 = 2;
        spC0->unkE10 = 6;
        spC0->unkE04 = 8;
        spC0->unkE98 = 3;
        spC0->unkE24 = 0x800;
        spC0->unkE20 = 0x800;
        spC0->unkEA0 = 0.5f;
        spC0->unkEB0 = 10.0f;
        spC0->unkEA4 = 10.0f;
        spC0->unkECC = 0x20;
        spC0->unkEC8 = 0x80;
        spC0->unkED4 = 0xA;
        spC0->unkED0 = 0xA;
        spC0->unk6E44 = &__glCrmInitTextureObject;
        spC0->unk1364 = &__glCrimeDlistOps;
        spC0->unk135C = &__glListExecTable;
        spC0->unk1360 = &__gl_GenericDlOps;
        spC0->unk134C = &__glGenericDlistOptimizer;
        spC0->unk1350 = &__glGenericDlistCompiler;
        spC0->unkE50 = 0x21000;
        spC0->unkE4C = 0x21000;
        spC0->unkEC4 = 0x10;
        spC0->unkEC0 = 0x10;
        spC0->unkEB4 = 0.125f;
        spC0->unkEA8 = 0.125f;
        spC0->unkEAC = 1.0f;
        if (temp_gp->unk-5460 < 0) {
            temp_gp->unk-5460 = (s32) (getenv(&sub_0da40000 + 0x1C08, &__glGenericDlistOptimizer, &__gl_GenericDlOps, &__glListExecTable, &__glCrimeDlistOps, &__glCrmInitTextureObject, (void *)0x800, &__glNop) != NULL);
        }
        if (sp0 != 0) {
            __glShareDlist(spC0, sp0, sp0);
            if (temp_gp->unk-5460 == 0) {
                M2C_ERROR(/* Read from unset register $t9 */)(spC0, sp0);
                temp_a5 = sp0->unk7F30;
                spC0->unk7F30 = temp_a5;
                *temp_a5 += 1;
            }
        } else {
            temp_v0_5 = spC0->unk4(spC0, 1, 0x40C);
            spC0->unk7F30 = temp_v0_5;
            *temp_v0_5 = 1;
        }
        __glEarlyInitContext(spC0);
        return spC0;
    }
    return 0;
}
