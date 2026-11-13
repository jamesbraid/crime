s32 RRM_CheckValidFault(s64);                       /* extern */
M2C_UNK bzero(void *, M2C_UNK);                     /* extern */
M2C_UNK crimeError(void *, M2C_UNK);                /* extern */
s64 crmIdleWait(void *, M2C_UNK, s32, u16);         /* extern */
s32 curproc_vtop(M2C_UNK);                          /* extern */
M2C_UNK fast_undma(u32, s64, s32, M2C_UNK);         /* extern */
s32 fast_userdma(s64, s64, s32, M2C_UNK);           /* extern */
M2C_UNK kern_free(s64);                             /* extern */
s64 kern_malloc(s32);                               /* extern */
M2C_UNK undma(u32, s32, s32);                       /* extern */
s32 loadLinearTlb(void *arg0, u32 arg1, s32 *arg2, u32 arg3); /* static */

s32 crm_curproc_vtop(s64 arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s32 temp_a5;
    s32 var_v0;
    s64 var_v0_2;
    u32 temp_a4;
    u32 var_a2;

    sp10 = arg0;
    if (curproc_vtop(4) != 0) {
        temp_a4 = (u32) (subroutine_arg2 + (sp10 & 0xFFF) + 0xFFF) >> 0xC;
        var_v0_2 = subroutine_arg0;
        if (temp_a4 != 0) {
            var_a2 = 1;
loop_3:
            temp_a5 = *var_v0_2;
            var_v0_2 += 4;
            if (temp_a5 != 0) {
                var_a2 += 1;
                if (var_a2 >= temp_a4) {
                    goto block_5;
                }
                goto loop_3;
            }
            var_v0 = 0xE;
        } else {
block_5:
            var_v0 = 0;
        }
    } else {
        var_v0 = 0xE;
    }
    return var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x10, 0x14, 0x18, 0x1c, 0x20, 0x24, 0x28, 0x2c, 0x30, 0x34, 0x50, 0x54, 0x58, 0x5c, 0x60, 0x64], gap at: 0x40. */
s32 crmpixdma(void *arg0, void *arg1, s64 arg2, s32 arg3) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_lo;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_a6;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_s2;
    s32 var_s3;
    s32 var_s5;
    s32 var_v0;
    s32 var_v0_2;
    u32 var_a0_2;
    u32 var_s6;
    u8 temp_a6;

    var_s2 = M2C_FIELD(arg1, s32 *, 0xC);
    if (M2C_FIELD(arg1, u8 *, 0x25) & 1) {

    }
    if (arg3 != 0) {
        M2C_FIELD(arg1, s32 *, 0x10) = (s32) (M2C_FIELD(arg1, s32 *, 0x10) + 0x1000);
        M2C_FIELD(arg1, s32 *, 0x14) = (s32) (M2C_FIELD(arg1, s32 *, 0x14) + 0x1000);
        M2C_FIELD(arg1, s32 *, 0x18) = (s32) (M2C_FIELD(arg1, s32 *, 0x18) + 0x1000);
        M2C_FIELD(arg1, s32 *, 0x1C) = (s32) (M2C_FIELD(arg1, s32 *, 0x1C) + 0x1000);
        M2C_FIELD(arg0, s32 *, 0x20AC) = (s32) (((M2C_FIELD(arg1, u8 *, 0x24) - 1) << 0x1C) | ((M2C_FIELD(arg1, s32 *, 4) + M2C_FIELD(arg1, s32 *, 0x20)) - M2C_FIELD(arg1, s32 *, 8)));
    }
    var_s5 = M2C_FIELD(arg1, s32 *, 0x14);
    if (var_s2 > 0) {
        var_s6 = subroutine_arg1;
        var_s3 = subroutine_arg0;
        unksp38 = (s32) (arg0 + 0x20A0) | 0x800;
        var_a6 = M2C_FIELD(arg1, u8 *, 0x25) & 1;
loop_6:
        var_s1 = 0x20000;
        if (var_a6 != 0) {
            temp_v0 = var_s3 & 0xFFF;
            if (temp_v0 != 0) {
                var_s1 = temp_v0 + 0x1F000;
            }
        } else {
            var_s1 = 0x20000 - (var_s6 & 0xFFF);
        }
        var_s1_2 = var_s1 / M2C_FIELD(arg1, s32 *, 4);
        M2C_TRAP_IF(M2C_FIELD(arg1, s32 *, 4) == 0);
        if (var_s2 < var_s1_2) {
            var_s1_2 = var_s2;
        }
        temp_v0_2 = M2C_FIELD(arg1, s32 *, 8) + (M2C_FIELD(arg1, s32 *, 4) * (var_s1_2 - 1));
        if (var_a6 != 0) {
            var_s6 = var_s3 - temp_v0_2;
        } else {
            var_s3 = temp_v0_2 + var_s6;
        }
        var_s2 -= var_s1_2;
        if (loadLinearTlb(arg0, var_s6, arg2 + (((var_s6 >> 0xC) - ((u32) M2C_FIELD(arg1, u32 *, 0) >> 0xC)) * 4), (u32) (temp_v0_2 + (var_s6 & 0xFFF) + 0xFFF) >> 0xC) != 0) {
            var_v0 = 0xE;
        } else {
            temp_a6 = M2C_FIELD(arg1, u8 *, 0x25);
            temp_a0 = M2C_FIELD(arg1, s32 *, 0x1C);
            temp_a1 = temp_a6 & 2;
            temp_a3 = M2C_FIELD(arg1, s32 *, 0x10);
            temp_v0_3 = (var_s1_2 * M2C_FIELD(arg1, u8 *, 0x24)) - 1;
            if (temp_a0 < M2C_FIELD(arg1, s32 *, 0x14)) {
                var_v0_2 = var_s5 - temp_v0_3;
                if (var_v0_2 < temp_a0) {
                    goto block_20;
                }
            } else {
                var_v0_2 = var_s5 + temp_v0_3;
                if (temp_a0 < var_v0_2) {
block_20:
                    var_v0_2 = temp_a0;
                }
            }
            if (temp_a6 & 1) {
                if (temp_a1 != 0) {
                    var_a0 = M2C_FIELD(arg1, s32 *, 0x20);
                } else {
                    var_a0 = M2C_FIELD(arg1, s32 *, 8);
                }
                var_a0_2 = var_s3 - var_a0;
            } else {
                var_a0_2 = var_s6;
                if (temp_a1 != 0) {
                    var_a0_2 = (M2C_FIELD(arg1, s32 *, 8) + var_s6) - M2C_FIELD(arg1, s32 *, 0x20);
                }
            }
            if (arg3 != 0) {
                M2C_FIELD(arg0, s64 *, 0x2080) = (s64) ((var_s5 << 6) | ((s64) temp_a3 << 0x26));
                M2C_FIELD(arg0, s64 *, 0x2088) = (s64) ((var_v0_2 << 6) | ((s64) M2C_FIELD(arg1, s32 *, 0x18) << 0x26));
            } else {
                M2C_FIELD(arg0, s64 *, 0x2070) = (s64) ((var_v0_2 & 0xFFFF) | (M2C_FIELD(arg1, s32 *, 0x18) << 0x10) | (((s64) temp_a3 << 0x30) | ((var_s5 & 0xFFFF) << 0x20)));
            }
            if (M2C_FIELD(arg1, u8 *, 0x25) & 8) {
                *unksp38 = var_a0_2;
            } else {
                M2C_FIELD(arg0, s32 *, 0x20A0) = (s32) ((var_s5 & 0xFFFF) | (M2C_FIELD(arg1, s32 *, 0x10) << 0x10));
                *subroutine_arg2 = var_a0_2;
            }
            temp_lo = M2C_FIELD(arg1, s32 *, 4) * var_s1_2;
            var_a6 = M2C_FIELD(arg1, u8 *, 0x25) & 1;
            var_s5 = var_v0_2 - 1;
            if (var_a6 != 0) {
                var_s3 -= temp_lo;
            } else {
                var_s6 += temp_lo;
            }
            if (M2C_FIELD(arg1, s32 *, 0x1C) < M2C_FIELD(arg1, s32 *, 0x14)) {

            } else {
                var_s5 = var_v0_2 + 1;
            }
            if (var_s2 <= 0) {
                goto block_35;
            }
            goto loop_6;
        }
    } else {
block_35:
        var_v0 = 0;
    }
    return var_v0;
}

s32 crimePixelDma(void *arg0, void *arg1) {
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_v0;
    s32 var_s1;
    s32 var_s4;
    s32 var_v0;
    s64 temp_s2;
    s64 temp_v0_2;
    s64 temp_v0_3;
    void *temp_a5;
    void *temp_a5_2;
    void *temp_a6;
    void *temp_s3;

    temp_v0 = M2C_FIELD(arg1, s32 *, 8);
    temp_a2 = M2C_FIELD(arg1, s32 *, 4);
    temp_a5 = M2C_FIELD(arg0, void **, 0x18);
    temp_s3 = M2C_FIELD(temp_a5, void **, 0x78);
    if ((temp_a2 >= temp_v0) && (temp_a2 > 0) && (temp_v0 < 0x2001) && (temp_v0 >= 0) && (temp_a1 = M2C_FIELD(arg1, s32 *, 0xC), ((temp_a1 < 0x801) != 0)) && (temp_a1 >= 0)) {
        temp_s2 = temp_v0 + (temp_a2 * (temp_a1 - 1));
        if (temp_s2 <= 0x180000) {
            sp20 = (s64) temp_a5;
            if (M2C_FIELD(arg1, u8 *, 0x25) & 8) {
                var_s4 = 0;
            } else {
                var_s4 = 1;
            }
            if (M2C_FIELD(M2C_FIELD(arg0, void **, 8), s32 *, 4) != arg0) {
                sp18 = (s64) arg0;
                M2C_FIELD(arg1, s32 *, 0x1C) = (s32) (M2C_FIELD(arg1, s32 *, 0x1C) + 0xFFFDF000);
                M2C_FIELD(arg1, s32 *, 0x18) = (s32) (M2C_FIELD(arg1, s32 *, 0x18) + 0xFFFDF000);
                var_s1 = 2;
                M2C_FIELD(arg1, s32 *, 0x14) = (s32) (M2C_FIELD(arg1, s32 *, 0x14) + 0xFFFDF000);
                M2C_FIELD(arg1, s32 *, 0x10) = (s32) (M2C_FIELD(arg1, s32 *, 0x10) + 0xFFFDF000);
            } else {
                var_s1 = 0;
                sp18 = (s64) arg0;
            }
            var_v0 = fast_userdma(subroutine_arg2, temp_s2, var_s4, 0);
            if (var_v0 != 0) {

            } else {
                temp_v0_2 = kern_malloc(((u32) (temp_s2 + (subroutine_arg2 & 0xFFF) + 0xFFF) >> 0xC) * 4);
                sp10 = temp_v0_2;
                if (crm_curproc_vtop((s64) M2C_FIELD(arg1, u32 *, 0), temp_s2, temp_v0_2) != 0) {
                    kern_free(sp10);
                    if (!(var_s1 & 1)) {
                        fast_undma(M2C_FIELD(arg1, u32 *, 0), temp_s2, var_s4, 0);
                    }
                    var_v0 = 0xE;
                } else if (RRM_CheckValidFault(sp18) < 0) {
                    if (!(var_s1 & 1)) {
                        fast_undma(M2C_FIELD(arg1, u32 *, 0), temp_s2, var_s4, 0);
                    }
                    var_v0 = 4;
                } else {
                    temp_a6 = M2C_FIELD(M2C_FIELD(sp20, void **, 0x28), void **, 0x18);
                    M2C_FIELD(temp_a6, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_a6, s32 *, 0x2C) + 1);
                    if (crmpixdma(temp_s3, arg1, sp10, var_s1 & 2) != 0) {
                        var_s1 |= 0x20;
                    }
                    temp_v0_3 = crmIdleWait(temp_s3, 0x7A120);
                    if (var_s1 & 0x10) {
                        M2C_FIELD(temp_s3, s32 *, 0x2010) = (s32) M2C_FIELD(subroutine_arg0, s32 *, 0x10);
                        M2C_FIELD(temp_s3, s32 *, 0x4008) = 0;
                    }
                    temp_a5_2 = M2C_FIELD(M2C_FIELD(sp20, void **, 0x28), void **, 0x18);
                    unksp38 = temp_v0_3;
                    M2C_FIELD(temp_a5_2, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_a5_2, s32 *, 0x2C) - 1);
                    fast_undma(M2C_FIELD(arg1, u32 *, 0), temp_s2, var_s4, 0);
                    kern_free(sp10);
                    if (unksp38 != 0) {
                        crimeError(temp_s3, 0);
                        var_v0 = 0xE;
                    } else {
                        var_v0 = 0;
                    }
                }
            }
        } else {
            goto block_11;
        }
    } else {
block_11:
        var_v0 = 0x16;
    }
    return var_v0;
}

s32 loadLinearTlb(void *arg0, u32 arg1, s32 *arg2, s32 arg3) {
    s32 *var_a2;
    s32 temp_a6;
    s32 temp_a7;
    s32 temp_t0;
    s32 var_a0;
    s32 var_a3;
    s32 var_ra;
    s32 var_v0;
    s32 var_v0_2;
    u32 var_a1;

    var_a2 = arg2;
    var_a3 = arg3;
    if (M2C_ERROR(/* Read from unset register $a4 */) != 0) {
        var_ra = arg0 + 0x1700;
    } else {
        var_ra = arg0 + 0x1780;
    }
    var_a1 = arg1 >> 0xC;
    var_v0_2 = 1;
    if (!(var_a1 & 1) || (var_a3 != 0x20)) {
        goto block_5;
    }
    var_a3 -= 1;
    if (M2C_FIELD(var_a2, s32 *, 0x7C) != 0) {
block_5:
        if (var_a3 > 0) {
            var_a0 = 1;
loop_9:
            temp_a7 = *var_a2;
            temp_a6 = var_a1 & 1;
            temp_t0 = var_a0 < var_a3;
            if (temp_a7 != 0) {
                *(sp + (temp_a6 * 4)) = temp_a7 | 0x80000000;
                if (temp_a6 == 0) {
                    if (var_v0_2 == var_a3) {
                        goto block_7;
                    }
                } else {
block_7:
                    *(0xA0000000 | (var_ra + (((var_a1 >> 1) & 0xF) * 8))) = (s64) subroutine_arg0;
                }
                var_a2 += 4;
                var_a1 += 1;
                var_a0 += 1;
                var_v0_2 += 1;
                if (temp_t0 != 0) {
                    goto loop_9;
                }
                goto block_13;
            }
            var_v0 = -1;
        } else {
block_13:
            var_v0 = 0;
        }
    } else {
        var_v0 = -1;
    }
    return var_v0;
}

s32 crime_load_linear_tlb(s64 arg0, s64 arg1, void *arg2, void *arg3) {
    s32 temp_a2;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_v1;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a3_2;
    s32 var_s5;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_4;
    s64 temp_v0;
    s64 var_a3;
    u32 temp_s7;
    u32 var_v0_3;
    void *temp_a0;
    void *temp_a1;
    void *temp_s2;
    void *temp_s3;
    void *var_a1;
    void *var_s0;
    void *var_s0_2;
    void *var_s4;

    temp_s3 = M2C_FIELD(arg1, void **, 0x4C);
    temp_s2 = M2C_FIELD(arg2, void **, 0x78);
    if (M2C_FIELD(arg3, s32 *, 8) & 4) {
        var_s4 = temp_s3 + 0x50;
        var_s0 = temp_s3 + 0x24;
    } else {
        var_s4 = temp_s3 + 0xD0;
        var_s0 = temp_s3 + 0x34;
    }
    if (M2C_FIELD(var_s0, s32 *, 0xC) != 0) {
        undma(M2C_FIELD(var_s0, u32 *, 0), M2C_FIELD(var_s0, s32 *, 4), M2C_FIELD(var_s0, s32 *, 8));
        M2C_FIELD(var_s0, u32 *, 0) = 0U;
    }
    M2C_FIELD(var_s0, s32 *, 0xC) = 0;
    temp_a2 = M2C_FIELD(arg3, s32 *, 4);
    var_v0_2 = 0;
    if (temp_a2 != 0) {
        temp_s7 = (u32) (temp_a2 + (M2C_FIELD(arg3, u32 *, 0) & 0xFFF) + 0xFFF) >> 0xC;
        var_s5 = 0x16;
        if ((s32) temp_s7 >= 0x21) {
            goto block_6;
        }
        var_a2 = 0;
        if (M2C_FIELD(arg3, s32 *, 8) & 8) {
            M2C_FIELD(var_s0, s32 *, 8) = 0;
        } else {
            M2C_FIELD(var_s0, s32 *, 8) = 1;
            var_a2 = 1;
        }
        var_v0 = fast_userdma((s64) M2C_FIELD(arg3, u32 *, 0), (s64) M2C_FIELD(arg3, s32 *, 4), var_a2, 0);
        if (var_v0 != 0) {

        } else {
            M2C_FIELD(var_s0, s32 *, 0xC) = 1;
            M2C_FIELD(var_s0, u32 *, 0) = (u32) M2C_FIELD(arg3, u32 *, 0);
            M2C_FIELD(var_s0, s32 *, 4) = (s32) M2C_FIELD(arg3, s32 *, 4);
            temp_v0 = kern_malloc(temp_s7 * 4);
            if (crm_curproc_vtop((s64) M2C_FIELD(arg3, u32 *, 0), (s64) M2C_FIELD(arg3, s32 *, 4), temp_v0) != 0) {
                goto block_28;
            }
            bzero(var_s4, 0x80);
            var_v0_3 = (u32) M2C_FIELD(arg3, u32 *, 0) >> 0xC;
            if ((s32) temp_s7 > 0) {
                var_a3 = temp_v0;
                var_a2_2 = 0;
                do {
                    var_a3 += 4;
                    var_a2_2 += 1;
                    temp_a0 = var_s4 + (((var_v0_3 >> 1) & 0xF) * 8);
                    temp_a4 = (var_v0_3 & 1) * 4;
                    var_v0_3 += 1;
                    *(temp_a0 + temp_a4) = M2C_FIELD(var_a3, s32 *, -4) | 0x80000000;
                } while (var_a2_2 < (s32) temp_s7);
            }
            if (RRM_CheckValidFault(subroutine_arg2) < 0) {
                var_s5 = 4;
                goto block_29;
            }
            if (loadLinearTlb(temp_s2, M2C_FIELD(arg3, u32 *, 0), (s32 *) temp_v0, temp_s7) != 0) {
block_28:
                var_s5 = 0xE;
block_29:
                if (temp_v0 == 0) {
                    var_v0_2 = M2C_FIELD(var_s0, s32 *, 0xC);
                } else {
                    kern_free(temp_v0);
                    var_v0_2 = M2C_FIELD(var_s0, s32 *, 0xC);
                }
                goto block_6;
            }
            if (!(M2C_FIELD(arg3, s32 *, 8) & 0x40)) {
                M2C_FIELD(temp_s2, s32 *, 0x4008) = 0;
            }
            M2C_FIELD(arg2, s32 *, 0xB4) = 1;
            kern_free(temp_v0);
            if (M2C_FIELD(arg3, s32 *, 8) & 0x40) {
                *((s32) (temp_s2 + 0x21F0) | 0x800) = 0;
                crmIdleWait(temp_s2, 0x7A120);
                if (M2C_FIELD(var_s0, s32 *, 0xC) != 0) {
                    fast_undma(M2C_FIELD(var_s0, u32 *, 0), (s64) M2C_FIELD(var_s0, s32 *, 4), M2C_FIELD(var_s0, s32 *, 8), 0);
                    M2C_FIELD(var_s0, s32 *, 0xC) = 0;
                    M2C_FIELD(var_s0, u32 *, 0) = 0U;
                }
            }
            var_v0 = 0;
        }
    } else {
        var_s5 = 0;
block_6:
        if (var_v0_2 != 0) {
            undma(M2C_FIELD(var_s0, u32 *, 0), M2C_FIELD(var_s0, s32 *, 4), M2C_FIELD(var_s0, s32 *, 8));
            M2C_FIELD(var_s0, s32 *, 0xC) = 0;
            M2C_FIELD(var_s0, u32 *, 0) = 0U;
        }
        bzero(var_s4, 0x80);
        var_v0 = var_s5;
        if (M2C_FIELD(arg2, s32 *, 4) == subroutine_arg0) {
            var_s0_2 = temp_s2 + 0x1700;
            if (!(M2C_FIELD(arg3, s32 *, 8) & 4)) {
                var_s0_2 = temp_s2 + 0x1780;
            }
            var_a1 = var_s0_2;
            if (RRM_CheckValidFault(subroutine_arg2) >= 0) {
                var_a3_2 = 0;
loop_12:
                temp_a3 = var_a3_2 + 1;
                temp_a1 = var_a1 + 8;
                *(0xA0000000 | (s32) var_a1) = 0;
                var_a3_2 = temp_a3 + 1;
                if (temp_a3 < 0x10) {
                    temp_v1 = 0xA0000000 | (s32) temp_a1;
                    var_a1 = temp_a1 + 8;
                    *temp_v1 = 0;
                    if (var_a3_2 < 0x10) {
                        goto loop_12;
                    }
                }
                M2C_FIELD(temp_s2, s32 *, 0x4008) = 0;
                var_v0_4 = 1;
                if (M2C_FIELD(temp_s3, s32 *, 0x24) == 0) {
                    var_v0_4 = 1;
                    if (M2C_FIELD(temp_s3, s32 *, 0x34) == 0) {
                        var_v0_4 = 0;
                    }
                }
                M2C_FIELD(arg2, s32 *, 0xB4) = var_v0_4;
                var_v0 = var_s5;
            } else {
                var_v0 = 4;
            }
        }
    }
    return var_v0;
}

s32 crime_clear_buffer(void *arg1, void *arg2, void *arg3) {
    s64 sp58;
    s64 sp50;
    s64 sp48;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a2;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_ra;
    s32 temp_t3;
    s32 var_a1;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s32 var_a7;
    s32 var_s4;
    s32 var_s6;
    s32 var_s7;
    s32 var_s8;
    s32 var_t0_2;
    s32 var_t1;
    s32 var_v0;
    u32 temp_a5;
    u32 temp_a5_2;
    u32 temp_v0_2;
    u32 var_a7_2;
    u32 var_t0;
    u32 var_t2;
    u32 var_v0_2;
    u64 var_a5_2;
    u8 temp_a0;
    void *temp_s0;
    void *temp_v0;
    void *var_a6;

    sp20 = (s64) M2C_FIELD(arg1, s32 *, 0x4C);
    temp_s0 = M2C_FIELD(arg1, void **, 8);
    if (RRM_CheckValidFault() >= 0) {
        temp_v0 = M2C_FIELD(sp20, void **, 0xC);
        if ((M2C_FIELD(temp_v0, s16 *, 0x10) != 0) && (var_v0 = -1, (M2C_FIELD(temp_v0, s16 *, 0x12) != 0))) {
            temp_ra = M2C_FIELD(temp_s0, s32 *, 0x10);
            if (!(temp_ra & 0x800)) {
                var_v0 = 0x16;
                temp_a0 = M2C_FIELD(arg3, u8 *, 8);
                temp_a2 = (arg2 + 0x3038) | 0x800;
                if ((temp_a0 != 1) && (temp_a0 != 2) && (temp_a0 != 4)) {

                } else {
                    sp48 = ((s32) temp_a0 >> 1) + 0x10;
                    if (M2C_FIELD(arg3, u8 *, 0xA) & 1) {
                        var_s4 = (((u32) M2C_FIELD(temp_s0, u32 *, 0x58) >> 0x10) + ((u64) M2C_FIELD(temp_s0, u64 *, 0x48) >> 0x30)) & 0xFFFF;
                        var_a3 = (((u32) M2C_FIELD(temp_s0, u32 *, 0x58) >> 0x10) + ((u64) M2C_FIELD(temp_s0, u64 *, 0x48) >> 0x10)) & 0xFFFF;
                        sp58 = (M2C_FIELD(temp_s0, u32 *, 0x58) + M2C_FIELD(temp_s0, u64 *, 0x48)) & 0xFFFF;
                        var_s6 = (M2C_FIELD(temp_s0, u32 *, 0x58) + ((u64) M2C_FIELD(temp_s0, u64 *, 0x48) >> 0x20)) & 0xFFFF;
                        if (var_a3 < var_s4) {
                            var_s4 = 0;
                            var_a4 = sp58 < var_s6;
                            goto block_12;
                        }
                        var_a4 = sp58 < var_s6;
                        if (var_s4 == var_a3) {
                            var_v0 = 0;
                        } else {
block_12:
                            if (var_a4 != 0) {
                                var_s6 = 0;
                                goto block_14;
                            }
                            var_s7 = 0;
                            if (var_s6 == sp58) {
                                var_v0 = 0;
                            } else {
                                goto block_15;
                            }
                        }
                    } else {
                        var_a3 = (s32) subroutine_arg1;
                        var_s4 = (s32) subroutine_arg1;
                        var_s6 = (s32) subroutine_arg0;
                        sp58 = (s64) subroutine_arg0;
block_14:
                        var_s7 = 0;
block_15:
                        var_a6 = temp_s0;
                        var_a5 = 0x21 << 0;
                        var_t1 = 1;
                        var_a7 = temp_ra & var_a5;
loop_18:
                        temp_t3 = var_t1 < 5;
                        if (var_a5 == var_a7) {
                            var_t0 = M2C_FIELD(var_a6, u64 *, 0x20) & 0xFFFF;
                            var_a5_2 = (u64) M2C_FIELD(var_a6, u64 *, 0x20) >> 0x30;
                            var_t2 = ((u64) M2C_FIELD(var_a6, u64 *, 0x20) >> 0x20) & 0xFFFF;
                            temp_a7 = var_a5_2 < (u32) var_a3;
                            var_v0_2 = ((u64) M2C_FIELD(var_a6, u64 *, 0x20) >> 0x10) & 0xFFFF;
                            temp_a0_2 = (u32) var_s4 < var_v0_2;
                            if (M2C_FIELD(arg3, u8 *, 0xA) & 1) {
                                if (temp_a7 != 0) {
                                    sp50 = (u32) var_s4 >= var_v0_2;
                                    if (temp_a0_2 != 0) {
                                        sp18 = (u32) sp58 < var_t0;
                                        temp_a0_3 = var_t2 < (u32) sp58;
                                        if (var_a5_2 < (u32) var_s4) {
                                            var_a5_2 = (u64) var_s4;
                                        }
                                        var_s8 = var_t2 >= (u32) sp58;
                                        if ((u32) var_a3 < var_v0_2) {
                                            var_v0_2 = (u32) var_a3;
                                            var_s8 = var_t2 >= (u32) sp58;
                                        }
                                        sp10 = (u32) var_s6 >= var_t0;
                                        if (temp_a0_3 != 0) {
                                            if ((u32) var_s6 < var_t0) {
                                                if (var_t2 < (u32) var_s6) {
                                                    var_t2 = (u32) var_s6;
                                                }
                                                if (sp18 != 0) {
                                                    var_t0 = (u32) sp58;
                                                }
                                            }
                                            if ((temp_a7 != 0) && (sp50 == 0) && (var_s8 == 0) && (sp10 == 0)) {
                                                goto block_36;
                                            }
                                        } else if ((temp_a7 != 0) && (sp50 == 0) && (temp_a0_3 != 0)) {
                                            goto block_36;
                                        }
                                    } else if ((temp_a7 != 0) && (temp_a0_2 != 0)) {
                                        goto block_36;
                                    }
                                }
                            } else {
block_36:
                                if (var_s7 == 0) {
                                    M2C_FIELD(temp_s0, s32 *, 0x218) = (s32) M2C_FIELD(arg3, s32 *, 0);
                                    M2C_FIELD(arg2, s32 *, 0x3018) = (s32) M2C_FIELD(arg3, s32 *, 0);
                                    M2C_FIELD(temp_s0, s32 *, 0x208) = (s32) M2C_FIELD(arg3, s32 *, 4);
                                    M2C_FIELD(arg2, s32 *, 0x3008) = (s32) M2C_FIELD(arg3, s32 *, 4);
                                    var_s7 = 1;
                                    M2C_FIELD(temp_s0, s32 *, 0x248) = 1;
                                    M2C_FIELD(arg2, s32 *, 0x3048) = 1;
                                    M2C_FIELD(temp_s0, s32 *, 0x200) = (s32) subroutine_arg2;
                                    M2C_FIELD(arg2, s32 *, 0x3000) = (s32) subroutine_arg2;
                                }
                                temp_a5 = var_a5_2 << sp48;
                                temp_v0_2 = ((M2C_FIELD(arg3, u8 *, 8) - 1) << 0x10) + ((var_v0_2 - 1) << sp48);
                                var_a7_2 = 0x01FF0000 | temp_a5;
                                if (temp_v0_2 >= temp_a5) {
                                    var_a1 = var_a7_2 < temp_v0_2;
                                    var_t0_2 = var_t2 | temp_a5;
loop_40:
                                    if (var_a1 == 0) {
                                        var_a7_2 = temp_v0_2;
                                    }
                                    M2C_FIELD(temp_s0, s32 *, 0x230) = var_t0_2;
                                    temp_a5_2 = var_a7_2 + 0x10000;
                                    M2C_FIELD(arg2, s32 *, 0x3030) = var_t0_2;
                                    temp_at = (var_t0 - 1) | var_a7_2;
                                    M2C_FIELD(temp_s0, s32 *, 0x238) = temp_at;
                                    var_t0_2 = var_t2 | temp_a5_2;
                                    var_a7_2 = 0x01FF0000 | temp_a5_2;
                                    *temp_a2 = temp_at;
                                    var_a1 = var_a7_2 < temp_v0_2;
                                    if (temp_v0_2 >= temp_a5_2) {
                                        goto loop_40;
                                    }
                                }
                            }
                        }
                        var_a5 = 0x21 << var_t1;
                        var_t1 += 1;
                        var_a6 += 8;
                        var_a7 = temp_ra & var_a5;
                        if (temp_t3 != 0) {
                            goto loop_18;
                        }
                        if (var_s7 != 0) {
                            M2C_FIELD(arg2, s32 *, 0x3078) = 0;
                            crmIdleWait(arg2, 0x7A120, temp_a2, (u16) var_a3);
                        }
                        var_v0 = 0;
                    }
                }
            }
        } else {
            var_v0 = 0;
        }
    } else {
        var_v0 = 4;
    }
    return var_v0;
}
