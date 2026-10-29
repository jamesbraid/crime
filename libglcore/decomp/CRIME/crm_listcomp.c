s32 __glCrmStoreStippledLine(s32, s64, s64, s64, s64, s64); /* extern */
s64 __glDlistAllocOp2(s32, s32, ?);                 /* extern */
? __glDlistAppendOp(s32, s64, void *(*)(void *));   /* extern */
? __glFillImage(s32, s64, s64, s64, s64, s64, s32, s64); /* extern */
s32 __glImageSize(s64, s64, s64, s64);              /* extern */
void *__glcrmle_Color3fv(void *arg0);               /* extern */
void *__glcrmle_Normal3fv(void *arg0);              /* extern */
void *__glcrmle_TexCoord2fv(void *arg0);            /* extern */
void *__glcrmle_Vertex3fv(void *arg0);              /* extern */
? __glcrmlei_TexImage1D(s32, s32, s32, s32, s32, s32, s32, s32, void *); /* extern */
? __glcrmlei_TexImage2D(s32, s32, s32, s32, s32, s32, s32, s32, s32, void *); /* extern */
? __glcrmlei_TexSubImage1DEXT(s32, s32, s32, s32, s32, s32, s32, void *); /* extern */
? __glcrmlei_TexSubImage2DEXT(s32, s32, s32, s32, s32, s32, s32, s32, s32, void *); /* extern */
? __gllc_InvalidEnum(s32, s32, s32, s32, s32);      /* extern */
? __gllc_InvalidOperation(s32, s32, s32, s32, s32); /* extern */
? __gllc_InvalidValue();                            /* extern */
void *__glle_Color3fv(void *arg0);                  /* extern */
void *__glle_Normal3fv(void *arg0);                 /* extern */
void *__glle_TexCoord2fv(void *arg0);               /* extern */
void *__glle_Vertex3fv(void *arg0);                 /* extern */

s32 crmlcCheckTexImageArgs(s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_a1;
    s32 var_a2;
    s32 var_a3;
    s32 var_a6;
    s32 var_a7;
    s32 var_t8;

    var_a2 = arg2;
    var_a3 = arg3;
    var_a6 = arg6;
    var_a7 = arg7;
    if ((var_a3 >= 0) && (var_a3 < 2)) {
        if (arg1 >= 0) {
            temp_v0 = arg4 < 0x1907;
            if (var_a2 >= 0) {
                var_a1 = arg4 < 0x1904;
                if (temp_v0 == 0) {
                    var_a7 = arg5 < 0x1406;
                    if (arg4 >= 0x1908) {
                        temp_v0_2 = arg4 < 0x190A;
                        if (temp_v0_2 == 0) {
                            var_a7 = arg5 < 0x1406;
                            if (arg4 >= 0x190B) {
                                var_a1 = 0x8000;
                                var_a7 = arg5 < 0x1406;
                                if (arg4 != 0x8000) {
                                    /* Duplicate return node #53. Try simplifying control flow for better match */
                                    __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                                    return 1;
                                }
                            }
                            goto block_18;
                        }
                        if (arg4 >= 0x1909) {
                            var_a7 = arg5 < 0x1406;
                            if (temp_v0_2 == 0) {
                                /* Duplicate return node #53. Try simplifying control flow for better match */
                                __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                                return 1;
                            }
                            goto block_18;
                        }
                        if (arg4 != 0x1908) {
                            goto block_52;
                        }
                        goto block_17;
                    }
                    goto block_18;
                }
                var_a6 = arg4 < 0x1903;
                if (var_a1 == 0) {
                    var_a2 = arg4 < 0x1905;
                    var_a7 = arg5 < 0x1406;
                    if (var_a2 == 0) {
                        var_a3 = arg4 < 0x1906;
                        var_a6 = 0x1905;
                        if (var_a3 == 0) {
                            var_a7 = arg5 < 0x1406;
                            if (temp_v0 == 0) {
                                /* Duplicate return node #53. Try simplifying control flow for better match */
                                __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                                return 1;
                            }
                            goto block_18;
                        }
                        var_a7 = arg5 < 0x1406;
                        if (arg4 != 0x1905) {
                            /* Duplicate return node #53. Try simplifying control flow for better match */
                            __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                            return 1;
                        }
                        goto block_18;
                    }
                    goto block_18;
                }
                if (var_a6 == 0) {
                    if (var_a1 != 0) {
block_17:
                        var_a7 = arg5 < 0x1406;
block_18:
                        var_t8 = arg5 < 0x1403;
                        if (var_a7 == 0) {
                            if (arg5 >= 0x1407) {
                                var_a3 = arg5 > 0x8034;
                                if (arg5 < 0x8034) {
                                    var_a1 = arg5 > 0x8032;
                                    if (arg5 < 0x8032) {
                                        if (arg5 != 0x1A00) {
                                            /* Duplicate return node #23. Try simplifying control flow for better match */
                                            __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                                            return 1;
                                        }
                                        __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                                        /* Duplicate return node #31. Try simplifying control flow for better match */
                                        return 1;
                                    }
                                    goto block_58;
                                }
                                goto block_36;
                            }
                            goto block_29;
                        }
                        goto block_25;
                    }
                    /* Duplicate return node #53. Try simplifying control flow for better match */
                    __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                    return 1;
                }
                if (arg4 == 0x1900) {
                    var_a1 = arg5 < 0x1407;
                    if (arg5 >= 0x1406) {
                        if (var_a1 == 0) {
                            var_a2 = arg5 < 0x8034;
                            var_a3 = arg5 > 0x8034;
                            if (var_a2 == 0) {
block_36:
                                if (var_a3 != 0) {
                                    var_a6 = arg5 < 0x8036;
                                    var_a7 = 0x8035;
                                    if (var_a6 == 0) {
                                        var_a7 = arg5 > 0x8036;
                                        if (var_a7 == 0) {
                                            goto block_40;
                                        }
                                        /* Duplicate return node #23. Try simplifying control flow for better match */
                                        __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                                        return 1;
                                    }
                                    if (arg5 != 0x8035) {
                                        /* Duplicate return node #23. Try simplifying control flow for better match */
                                        __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                                        return 1;
                                    }
                                    goto block_40;
                                }
                                goto block_40;
                            }
                            if (arg5 >= 0x8032) {
                                var_a1 = arg5 > 0x8032;
block_58:
                                var_a2 = 0x1907;
                                if (var_a1 == 0) {
                                    if (arg4 != 0x1907) {
                                        __gllc_InvalidOperation(var_a1, 0x1907, var_a3, var_a6, var_a7);
                                        /* Duplicate return node #31. Try simplifying control flow for better match */
                                        return 1;
                                    }
                                    goto block_29;
                                }
                                if (arg5 != 0x8033) {
                                    /* Duplicate return node #23. Try simplifying control flow for better match */
                                    __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                                    return 1;
                                }
block_40:
                                if ((arg4 != 0x1908) && (arg4 != 0x8000)) {
                                    __gllc_InvalidOperation(var_a1, var_a2, var_a3, var_a6, var_a7);
                                    /* Duplicate return node #31. Try simplifying control flow for better match */
                                    return 1;
                                }
                                goto block_29;
                            }
                            if (arg5 == 0x1A00) {
                                goto block_29;
                            }
                            /* Duplicate return node #23. Try simplifying control flow for better match */
                            __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                            return 1;
                        }
                        goto block_29;
                    }
                    var_t8 = arg5 < 0x1403;
block_25:
                    if (var_t8 == 0) {
                        if (arg5 >= 0x1404) {
                            var_a3 = 0x1404;
                            if (arg5 >= 0x1405) {
                                if (arg5 < 0x1406) {
                                    goto block_29;
                                }
                                /* Duplicate return node #23. Try simplifying control flow for better match */
                                __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                                return 1;
                            }
                            if (arg5 != 0x1404) {
                                /* Duplicate return node #23. Try simplifying control flow for better match */
                                __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                                return 1;
                            }
                            /* Duplicate return node #30. Try simplifying control flow for better match */
                            return 0;
                        }
                        goto block_29;
                    }
                    if (arg5 >= 0x1401) {
                        if (arg5 >= 0x1402) {
                            if (arg5 != 0x1402) {
                                /* Duplicate return node #23. Try simplifying control flow for better match */
                                __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                                return 1;
                            }
                            /* Duplicate return node #30. Try simplifying control flow for better match */
                            return 0;
                        }
block_29:
                        /* Duplicate return node #30. Try simplifying control flow for better match */
                        return 0;
                    }
                    if (arg5 != 0x1400) {
                        __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                        return 1;
                    }
                    return 0;
                }
block_52:
                __gllc_InvalidEnum(var_a1, var_a2, var_a3, var_a6, var_a7);
                return 1;
            }
        }
        __gllc_InvalidValue();
        /* Duplicate return node #31. Try simplifying control flow for better match */
        return 1;
    }
    __gllc_InvalidValue();
    return 1;
}

void *__glcrmle_TexImage1D(void *arg0) {
    __glcrmlei_TexImage1D(*(s32 *)0x1010, arg0->unk0, arg0->unk4, arg0->unk8, arg0->unkC, arg0->unk10, arg0->unk14, arg0->unk18, arg0 + 0x20);
    return arg0 + ((arg0->unk1C + 3) & ~3) + 0x20;
}

void __glcrmlc_TexImage1D(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_s0;
    s64 temp_a1;
    s64 temp_v0;

    temp_s0 = *(s32 *)0x1010;
    if (arg0 != 0x8063) {
        sp20 = arg1;
        sp18 = arg2;
        sp10 = arg7;
        sp40 = arg4;
        sp38 = arg5;
        sp30 = arg6;
        sp28 = arg3;
        if (arg0 != 0xDE0) {
            __gllc_InvalidEnum(temp_s0);
        } else if (__glCrmStoreStippledLine(temp_s0, sp28, 1, sp40, sp38, sp30) == 0) {
            temp_a1 = (__glImageSize(sp28, 1, sp38, sp30) + 3) & ~3;
            sp0 = temp_a1;
            temp_v0 = __glDlistAllocOp2(temp_s0, temp_a1 + 0x20, -4);
            if (temp_v0 != 0) {
                sp8 = temp_v0;
                temp_v0->unk10 = arg0;
                temp_v0->unkC = 0x2710;
                temp_v0->unk2C = (s32) sp0;
                temp_v0->unk28 = (s32) sp30;
                temp_v0->unk24 = (s32) sp38;
                temp_v0->unk20 = (s32) sp40;
                temp_v0->unk1C = (s32) sp28;
                temp_v0->unk18 = (s32) sp18;
                temp_v0->unk14 = (s32) sp20;
                if ((sp0 <= 0) || (sp10 == 0)) {

                } else {
                    __glFillImage(temp_s0, sp28, 1, sp38, sp30, sp10, sp8 + 0x30, sp28);
                }
                __glDlistAppendOp(temp_s0, sp8, __glcrmle_TexImage1D);
            }
        }
    } else {
        temp_s0->unk17B8->unkB0();
    }
}

void *__glcrmle_TexImage2D(void *arg0) {
    __glcrmlei_TexImage2D(*(s32 *)0x1010, arg0->unk0, arg0->unk4, arg0->unk8, arg0->unkC, arg0->unk10, arg0->unk14, arg0->unk18, arg0->unk1C, arg0 + 0x24);
    return arg0 + ((arg0->unk20 + 3) & ~3) + 0x24;
}

void __glcrmlc_TexImage2D(s32 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 temp_s0;
    s64 temp_a1;
    s64 temp_v0;

    temp_s0 = *(s32 *)0x1010;
    if (arg0 != 0x8064) {
        sp50 = arg1;
        sp48 = arg2;
        sp40 = arg5;
        sp30 = arg6;
        sp38 = arg7;
        sp20 = arg3;
        sp28 = arg4;
        if (arg0 != 0xDE1) {
            __gllc_InvalidEnum(temp_s0);
        } else if (__glCrmStoreStippledLine(temp_s0, sp20, sp28, sp40, sp30, sp38) == 0) {
            temp_a1 = (__glImageSize(sp20, sp28, sp30, sp38) + 3) & ~3;
            sp10 = temp_a1;
            temp_v0 = __glDlistAllocOp2(temp_s0, temp_a1 + 0x24, -4);
            if (temp_v0 != 0) {
                sp18 = temp_v0;
                temp_v0->unk2C = (s32) sp38;
                temp_v0->unk28 = (s32) sp30;
                temp_v0->unk20 = (s32) sp28;
                temp_v0->unk1C = (s32) sp20;
                temp_v0->unk10 = arg0;
                temp_v0->unkC = 0x2711;
                temp_v0->unk30 = (s32) sp10;
                temp_v0->unk24 = (s32) sp40;
                temp_v0->unk18 = (s32) sp48;
                temp_v0->unk14 = (s32) sp50;
                if ((sp10 > 0) && (arg_sp4 != 0)) {
                    __glFillImage(temp_s0, sp20, sp28, sp30, sp38, (s64) arg_sp4, sp18 + 0x34, sp30);
                }
                __glDlistAppendOp(temp_s0, sp18, __glcrmle_TexImage2D);
            }
        }
    } else {
        temp_s0->unk17B8->unkB4(arg_sp4);
    }
}

void *__glcrmle_TexSubImage1DEXT(void *arg0) {
    __glcrmlei_TexSubImage1DEXT(*(s32 *)0x1010, arg0->unk0, arg0->unk4, arg0->unk8, arg0->unkC, arg0->unk10, arg0->unk14, arg0 + 0x1C);
    return arg0 + ((arg0->unk18 + 3) & ~3) + 0x1C;
}

void __glcrmlc_TexSubImage1DEXT(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6) {
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_s0;
    s64 temp_a1;
    s64 temp_v0;

    sp10 = arg6;
    sp40 = arg5;
    sp38 = arg4;
    sp30 = arg3;
    sp28 = arg2;
    sp20 = arg1;
    sp18 = arg0;
    temp_s0 = *(s32 *)0x1010;
    if (arg0 != 0xDE0) {
        __gllc_InvalidEnum(temp_s0);
    } else if (__glCrmStoreStippledLine(temp_s0, sp30, 1, 0, sp38, sp40) == 0) {
        temp_a1 = (__glImageSize(sp30, 1, sp38, sp40) + 3) & ~3;
        sp0 = temp_a1;
        temp_v0 = __glDlistAllocOp2(temp_s0, temp_a1 + 0x1C, -4);
        if (temp_v0 != 0) {
            sp8 = temp_v0;
            temp_v0->unkC = 0x2712;
            temp_v0->unk28 = (s32) sp0;
            temp_v0->unk24 = (s32) sp40;
            temp_v0->unk20 = (s32) sp38;
            temp_v0->unk1C = (s32) sp30;
            temp_v0->unk18 = (s32) sp28;
            temp_v0->unk14 = (s32) sp20;
            temp_v0->unk10 = (s32) sp18;
            if (sp0 > 0) {
                __glFillImage(temp_s0, sp30, 1, sp38, sp40, sp10, sp8 + 0x2C, sp28);
            }
            __glDlistAppendOp(temp_s0, sp8, __glcrmle_TexSubImage1DEXT);
        }
    }
}

void *__glcrmle_TexSubImage2DEXT(void *arg0) {
    __glcrmlei_TexSubImage2DEXT(*(s32 *)0x1010, arg0->unk0, arg0->unk4, arg0->unk8, arg0->unkC, arg0->unk10, arg0->unk14, arg0->unk18, arg0->unk1C, arg0 + 0x24);
    return arg0 + ((arg0->unk20 + 3) & ~3) + 0x24;
}

void __glcrmlc_TexSubImage2DEXT(s64 arg0, s64 arg1, s64 arg2, s64 arg3, s64 arg4, s64 arg5, s64 arg6, s64 arg7, s32 arg_sp4) {
    s64 sp48;
    s64 sp40;
    s64 sp38;
    s64 sp30;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s64 sp0;
    s32 temp_s0;
    s64 temp_a1;
    s64 temp_v0;

    sp48 = arg7;
    sp40 = arg6;
    sp38 = arg5;
    sp30 = arg4;
    sp20 = arg3;
    sp18 = arg2;
    sp28 = arg1;
    sp10 = arg0;
    temp_s0 = *(s32 *)0x1010;
    if (arg0 != 0xDE1) {
        __gllc_InvalidEnum(temp_s0);
    } else if (__glCrmStoreStippledLine(temp_s0, sp30, sp38, 0, sp40, sp48) == 0) {
        temp_a1 = (__glImageSize(sp30, sp38, sp40, sp48) + 3) & ~3;
        sp0 = temp_a1;
        temp_v0 = __glDlistAllocOp2(temp_s0, temp_a1 + 0x24, -4);
        if (temp_v0 != 0) {
            sp8 = temp_v0;
            temp_v0->unkC = 0x2713;
            temp_v0->unk30 = (s32) sp0;
            temp_v0->unk2C = (s32) sp48;
            temp_v0->unk28 = (s32) sp40;
            temp_v0->unk24 = (s32) sp38;
            temp_v0->unk20 = (s32) sp30;
            temp_v0->unk1C = (s32) sp20;
            temp_v0->unk18 = (s32) sp18;
            temp_v0->unk14 = (s32) sp28;
            temp_v0->unk10 = (s32) sp10;
            if (sp0 > 0) {
                __glFillImage(temp_s0, sp30, sp38, sp40, sp48, (s64) arg_sp4, sp8 + 0x34, sp18);
            }
            __glDlistAppendOp(temp_s0, sp8, __glcrmle_TexSubImage2DEXT);
        }
    }
}

void __glcrmlc_Vertex3f(f64 fparg0, f64 fparg1, f64 fparg2) {
    f64 sp10;
    f64 sp8;
    f64 sp0;
    s32 temp_s0;
    s64 temp_v0;

    sp10 = fparg2;
    sp8 = fparg1;
    temp_s0 = *(s32 *)0x1010;
    sp0 = fparg0;
    temp_v0 = __glDlistAllocOp2(temp_s0, 0xC);
    if (temp_v0 != 0) {
        temp_v0->unkC = 0x2714;
        temp_v0->unk10 = (bitwise f32) sp0;
        temp_v0->unk18 = (bitwise f32) sp10;
        temp_v0->unk14 = (f32) (second half of f64);
        temp_s0->unk1384 = (s32) (temp_s0->unk1384 | 1);
        if (temp_s0->unk1378 != 0x1301) {
            __glDlistAppendOp(temp_s0, temp_v0, __glcrmle_Vertex3fv);
        } else {
            __glDlistAppendOp(temp_s0, temp_v0, __glle_Vertex3fv);
        }
    }
}

void __glcrmlc_Vertex3fv(s64 arg0) {
    s64 sp0;
    s32 temp_s0;
    s64 temp_v0;

    temp_s0 = *(s32 *)0x1010;
    sp0 = arg0;
    temp_v0 = __glDlistAllocOp2(temp_s0, 0xC);
    if (temp_v0 != 0) {
        temp_v0->unkC = 0x2714;
        temp_v0->unk10 = (f32) arg0->unk0;
        temp_v0->unk14 = (f32) arg0->unk4;
        temp_v0->unk18 = (f32) arg0->unk8;
        temp_s0->unk1384 = (s32) (temp_s0->unk1384 | 1);
        if (temp_s0->unk1378 != 0x1301) {
            __glDlistAppendOp(temp_s0, temp_v0, __glcrmle_Vertex3fv);
        } else {
            __glDlistAppendOp(temp_s0, temp_v0, __glle_Vertex3fv);
        }
    }
}

void __glcrmlc_Color3f(f64 fparg0, f64 fparg1, f64 fparg2) {
    f64 sp10;
    f64 sp8;
    f64 sp0;
    s32 temp_s0;
    s64 temp_v0;

    sp10 = fparg2;
    sp8 = fparg1;
    temp_s0 = *(s32 *)0x1010;
    sp0 = fparg0;
    temp_v0 = __glDlistAllocOp2(temp_s0, 0xC);
    if (temp_v0 != 0) {
        temp_v0->unkC = 0x2715;
        temp_v0->unk10 = (bitwise f32) sp0;
        temp_v0->unk18 = (bitwise f32) sp10;
        temp_v0->unk14 = (f32) (second half of f64);
        temp_s0->unk1384 = (s32) (temp_s0->unk1384 | 4);
        if (temp_s0->unk1378 != 0x1301) {
            __glDlistAppendOp(temp_s0, temp_v0, __glcrmle_Color3fv);
        } else {
            __glDlistAppendOp(temp_s0, temp_v0, __glle_Color3fv);
        }
    }
}

void __glcrmlc_Color3fv(s64 arg0) {
    s64 sp0;
    s32 temp_s0;
    s64 temp_v0;

    temp_s0 = *(s32 *)0x1010;
    sp0 = arg0;
    temp_v0 = __glDlistAllocOp2(temp_s0, 0xC);
    if (temp_v0 != 0) {
        temp_v0->unkC = 0x2715;
        temp_v0->unk10 = (f32) sp0->unk0;
        temp_v0->unk14 = (f32) sp0->unk4;
        temp_v0->unk18 = (f32) sp0->unk8;
        temp_s0->unk1384 = (s32) (temp_s0->unk1384 | 4);
        if (temp_s0->unk1378 != 0x1301) {
            __glDlistAppendOp(temp_s0, temp_v0, __glcrmle_Color3fv);
        } else {
            __glDlistAppendOp(temp_s0, temp_v0, __glle_Color3fv);
        }
    }
}

void __glcrmlc_Normal3f(f64 fparg0, f64 fparg1, f64 fparg2) {
    f64 sp10;
    f64 sp8;
    f64 sp0;
    s32 temp_s0;
    s64 temp_v0;

    sp10 = fparg2;
    sp8 = fparg1;
    temp_s0 = *(s32 *)0x1010;
    sp0 = fparg0;
    temp_v0 = __glDlistAllocOp2(temp_s0, 0xC);
    if (temp_v0 != 0) {
        temp_v0->unkC = 0x2716;
        temp_v0->unk10 = (bitwise f32) sp0;
        temp_v0->unk18 = (bitwise f32) sp10;
        temp_v0->unk14 = (f32) (second half of f64);
        temp_s0->unk1384 = (s32) (temp_s0->unk1384 | 2);
        if (temp_s0->unk1378 != 0x1301) {
            __glDlistAppendOp(temp_s0, temp_v0, __glcrmle_Normal3fv);
        } else {
            __glDlistAppendOp(temp_s0, temp_v0, __glle_Normal3fv);
        }
    }
}

void __glcrmlc_Normal3fv(s64 arg0) {
    s64 sp0;
    s32 temp_s0;
    s64 temp_v0;

    temp_s0 = *(s32 *)0x1010;
    sp0 = arg0;
    temp_v0 = __glDlistAllocOp2(temp_s0, 0xC);
    if (temp_v0 != 0) {
        temp_v0->unkC = 0x2716;
        temp_v0->unk10 = (f32) arg0->unk0;
        temp_v0->unk14 = (f32) arg0->unk4;
        temp_v0->unk18 = (f32) arg0->unk8;
        temp_s0->unk1384 = (s32) (temp_s0->unk1384 | 2);
        if (temp_s0->unk1378 != 0x1301) {
            __glDlistAppendOp(temp_s0, temp_v0, __glcrmle_Normal3fv);
        } else {
            __glDlistAppendOp(temp_s0, temp_v0, __glle_Normal3fv);
        }
    }
}

void __glcrmlc_TexCoord2f(f64 fparg0, f64 fparg1) {
    f64 sp8;
    f64 sp0;
    s32 temp_s0;
    s64 temp_v0;

    sp8 = fparg1;
    temp_s0 = *(s32 *)0x1010;
    sp0 = fparg0;
    temp_v0 = __glDlistAllocOp2(temp_s0, 8);
    if (temp_v0 != 0) {
        temp_v0->unkC = 0x2717;
        temp_v0->unk14 = (f32) (second half of f64);
        temp_v0->unk10 = (bitwise f32) sp0;
        temp_s0->unk1384 = (s32) (temp_s0->unk1384 | 8);
        if (temp_s0->unk1378 != 0x1301) {
            __glDlistAppendOp(temp_s0, temp_v0, __glcrmle_TexCoord2fv);
        } else {
            __glDlistAppendOp(temp_s0, temp_v0, __glle_TexCoord2fv);
        }
    }
}

void __glcrmlc_TexCoord2fv(s64 arg0) {
    s64 sp0;
    s32 temp_s0;
    s64 temp_v0;

    temp_s0 = *(s32 *)0x1010;
    sp0 = arg0;
    temp_v0 = __glDlistAllocOp2(temp_s0, 8);
    if (temp_v0 != 0) {
        temp_v0->unkC = 0x2717;
        temp_v0->unk10 = (f32) sp0->unk0;
        temp_v0->unk14 = (f32) sp0->unk4;
        temp_s0->unk1384 = (s32) (temp_s0->unk1384 | 8);
        if (temp_s0->unk1378 != 0x1301) {
            __glDlistAppendOp(temp_s0, temp_v0, __glcrmle_TexCoord2fv);
        } else {
            __glDlistAppendOp(temp_s0, temp_v0, __glle_TexCoord2fv);
        }
    }
}
