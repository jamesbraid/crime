s32 RRM_CheckValidFault(s32);                       /* extern */
M2C_UNK bcopy(u32 *, s32, s64, u8);                 /* extern */
M2C_UNK bzero(u32 *, s32, s32, s32);                /* extern */
M2C_UNK cmn_err(M2C_UNK, M2C_UNK);                  /* extern */
M2C_UNK crmFifoWait(s64, s32, M2C_UNK);             /* extern */
s32 crmNextIncarnation(u32 *);                      /* extern */
s32 curthreadhandle();                              /* extern */
s32 ddv_getaddr(s32);                               /* extern */
M2C_UNK ddv_lock(s32);                              /* extern */
M2C_UNK ddv_mappages(s32, M2C_UNK, s64, u32);       /* extern */
s64 ddv_mappfns(s32, s32, s32 *, M2C_UNK);          /* extern */
M2C_UNK ddv_unlock(s32);                            /* extern */
s64 dms_block_get_tile_list(s32, u32, s32, u32 *);  /* extern */
M2C_UNK dms_block_info(s32, void *);                /* extern */
s64 dms_block_start_dma(s32, u32, M2C_UNK, s32);    /* extern */
M2C_UNK dms_close(s32, s32);                        /* extern */
s64 dms_open(void *, s32);                          /* extern */
M2C_UNK freesema(void *);                           /* extern */
s32 gfxdd_mmap_mem(s64, s32 *);                     /* extern */
M2C_UNK gfxdd_munmap(s32);                          /* extern */
s32 gthread_find_gfxp(s32);                         /* extern */
M2C_UNK kern_free(u32 *, s32);                      /* extern */
u32 *kern_malloc(s64, M2C_UNK, u8, s32);            /* extern */
u32 *kmem_alloc(M2C_UNK, M2C_UNK);                  /* extern */
M2C_UNK kmem_free(s32, M2C_UNK);                    /* extern */
M2C_UNK mutex_lock(s64, M2C_UNK);                   /* extern */
M2C_UNK mutex_unlock(s64, s32);                     /* extern */
s32 psema(void *, M2C_UNK, u32 *);                  /* extern */
s32 tile_alloc(s64, u32 *, s32, s32);               /* extern */
M2C_UNK tile_free(s32, u32 *, M2C_UNK);             /* extern */
s32 tile_nclasses();                                /* extern */
M2C_UNK vsema(void *, s32, s64);                    /* extern */
s64 crmCreateRegion(s32 *arg0, s64 arg3, M2C_UNK, s32); /* static */
void crmLoadTlbABC(void *arg0, void *arg1, s32 arg2); /* static */
u32 *crmMapChunk(u32 *arg0, s32 *arg1, u32, s64);   /* static */
s32 crmUnmapChunk(u32 *arg0);                       /* static */
s32 crm_update_sz_tiles(u32 *arg0, s64 arg1);       /* static */

s32 crime_tileaddr_for_vice(s32 arg0, s16 *arg1, s32 arg2) {
    s16 *var_a1;
    s16 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_a5;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t1;
    s32 temp_v1;
    s32 var_a5;
    u16 temp_a6_2;
    u8 temp_a6;
    void *temp_a0;
    void *temp_v0;

    var_a1 = arg1;
    temp_a5 = arg0 & 0xFFFF;
    if ((temp_a5 > 0) && (temp_a5 < *saved_reg_gp)) {
        temp_t0 = temp_a5 * 0x74;
        if (M2C_FIELD(temp_t0, u8 *, 0x3A) != 0) {
            /* Duplicate return node #3. Try simplifying control flow for better match */
            return 0x13;
        }
        if (M2C_FIELD(temp_t0, s32 *, 0) == arg0) {
            temp_a0 = M2C_FIELD(temp_t0, void **, 0x4C);
            if (temp_a0 != NULL) {
                temp_v0 = M2C_FIELD(M2C_FIELD(temp_a0, void **, 0xC), void **, 0x18);
                if (arg2 > 0) {
                    var_a5 = 1;
loop_9:
                    temp_a0_2 = *var_a1;
                    temp_a6 = M2C_FIELD(temp_v0, u8 *, 0x18);
                    temp_a7 = temp_a0_2 & 0xF;
                    temp_v1 = temp_a7 < (s32) temp_a6;
                    var_a1 += 2;
                    temp_t1 = var_a5 < arg2;
                    temp_t0_2 = temp_a0_2 >> 4;
                    if ((temp_v1 != 0) && (temp_t0_2 < (s32) M2C_FIELD(temp_v0, u8 *, 0x19))) {
                        temp_a0_3 = temp_a7 + (temp_t0_2 * temp_a6);
                        if (temp_a0_3 < M2C_FIELD(temp_v0, s32 *, 4)) {
                            temp_a6_2 = *(M2C_FIELD(temp_v0, s32 *, 8) + (temp_a0_3 * 2));
                            var_a5 += 1;
                            if (temp_a6_2 != 0) {
                                M2C_FIELD(var_a1, u16 *, -2) = temp_a6_2;
                                if (temp_t1 == 0) {
                                    /* Duplicate return node #14. Try simplifying control flow for better match */
                                    return 0;
                                }
                                goto loop_9;
                            }
                            return 0xE;
                        }
                        return 0x16;
                    }
                    return 0x16;
                }
                return 0;
            }
        }
        return 0x13;
    }
    return 0x13;
}

s64 crm_get_dms_tiles(u32 *arg0) {
    s64 spD0;
    s64 spC8;
    M2C_UNK spC0;
    u32 sp40;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_v0;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_3;
    s64 var_a0;
    u32 *temp_a0;
    u32 *var_a0_2;
    u32 *var_s1;

    temp_a3 = M2C_FIELD(arg0, s32 *, 0x20);
    if (M2C_FIELD(arg0, u32 *, 0) != 0) {
        if (temp_a3 != 0) {
            goto block_2;
        }
        temp_v0 = dms_open(arg0 + 0x20, temp_a3);
        var_a0 = temp_v0;
        if (temp_v0 != 0) {

        } else {
block_2:
            dms_block_info(M2C_FIELD(arg0, s32 *, 0x20), sp);
            var_a0 = 0x16;
            if (sp10 > 0) {
                if (M2C_FIELD(arg0, s32 *, 4) != sp10) {
                    var_a0 = 0x16;
                    if (sp10 >= 0x101) {

                    } else {
                        temp_a0 = M2C_FIELD(arg0, u32 **, 8);
                        var_a2 = sp10;
                        M2C_FIELD(arg0, s32 *, 4) = sp10;
                        if (temp_a0 != NULL) {
                            kern_free(temp_a0);
                            var_a2 = M2C_FIELD(arg0, s32 *, 4);
                        }
                        M2C_FIELD(arg0, u32 **, 8) = kern_malloc(var_a2 * 2);
                        goto block_9;
                    }
                } else {
block_9:
                    var_s1 = &sp40;
                    if (M2C_FIELD(arg0, s32 *, 4) >= 0x21) {
                        var_s1 = kern_malloc(M2C_FIELD(arg0, s32 *, 4) * 4);
                    }
                    temp_v0_2 = dms_block_get_tile_list(M2C_FIELD(arg0, s32 *, 0x20), M2C_FIELD(arg0, u32 *, 0), M2C_FIELD(arg0, s32 *, 4), var_s1);
                    spD0 = temp_v0_2;
                    temp_a3_2 = M2C_FIELD(arg0, s32 *, 0x20);
                    if (temp_v0_2 != 0) {
                        dms_close(temp_a3_2);
                        M2C_FIELD(arg0, s32 *, 0x20) = 0;
                        if (var_s1 != &sp40) {
                            kern_free(var_s1);
                        }
                        var_a0 = spD0;
                    } else {
                        temp_v0_3 = dms_block_start_dma(temp_a3_2, M2C_FIELD(arg0, u32 *, 0), 3, temp_a3_2);
                        var_a2_2 = 0;
                        spC8 = temp_v0_3;
                        if (temp_v0_3 != 0) {
                            dms_close(M2C_FIELD(arg0, s32 *, 0x20));
                            M2C_FIELD(arg0, s32 *, 0x20) = 0;
                            if (var_s1 != &sp40) {
                                kern_free(var_s1);
                            }
                            var_a0 = spC8;
                        } else {
                            var_v0 = 0;
                            if (M2C_FIELD(arg0, s32 *, 4) > 0) {
                                var_a0_2 = var_s1;
                                do {
                                    *(M2C_FIELD(arg0, u32 **, 8) + var_a2_2) = ((u32) *var_a0_2 >> 4) | 0x8000;
                                    var_v0 += 1;
                                    var_a0_2 += 4;
                                    var_a2_2 += 2;
                                } while (var_v0 < M2C_FIELD(arg0, s32 *, 4));
                            }
                            if (var_s1 != &sp40) {
                                kern_free(var_s1);
                            }
                            M2C_FIELD(arg0, s32 *, 0x10) = crmNextIncarnation();
                            var_a0 = 0;
                        }
                    }
                }
            }
        }
    } else {
        if (temp_a3 != 0) {
            dms_close(temp_a3, temp_a3);
        }
        M2C_FIELD(arg0, s32 *, 0x20) = 0;
        var_a0 = 0;
    }
    return var_a0;
}

void crm_tileclassinit(void) {
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_v0;
    s32 var_a2;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    u32 temp_t2;

    temp_v0 = tile_nclasses();
    var_a5 = 2;
    if (temp_v0 != 2) {
        temp_a3 = (s32) (((u32) (temp_v0 >> 1) >> 0x1E) + temp_v0) >> 2;
        temp_t2 = temp_v0 - (temp_a3 * 2);
        var_a2 = (1 << temp_a3) - 1;
        var_a3 = var_a2 << temp_a3;
        temp_a5 = ((1 << temp_v0) - 1) ^ (var_a2 | var_a3);
        temp_a4 = temp_a5 >> ((s32) ((temp_t2 >> 0x1F) + temp_t2) >> 1);
        var_a4 = temp_a5 & temp_a4;
        var_a5 = temp_a5 & ~temp_a4;
    } else {
        var_a4 = 1;
        var_a3 = 2;
        var_a2 = 1;
    }
    *(s32 *)0x18 = -1;
    *(s32 *)0x34 = var_a4;
    *(s32 *)0x30 = var_a5;
    *(s32 *)0x28 = var_a3;
    *(s32 *)0x38 = var_a2;
    *(s32 *)0x2C = var_a2;
    *(s32 *)0x24 = var_a2;
    *(s32 *)0x20 = var_a2;
}

s32 crmAllocTiles(s64 arg0, s64 arg1, s32 arg2, s32 arg3) {
    s32 temp_a2;
    s32 var_a2;
    s32 var_a3;
    s32 var_v0;
    s64 var_a3_2;
    u32 *temp_s1;
    u32 *var_a6;
    u32 temp_a7;

    temp_s1 = kern_malloc(arg1 * 4);
    var_a3 = *(s32 *)0x14 | 4;
    if (arg2 & 8) {
        var_a3 |= 8;
    }
    var_a6 = temp_s1;
    if (tile_alloc(arg1, temp_s1, M2C_FIELD((arg3 * 4), s32 *, 0x18), var_a3) != 0) {
        var_a2 = 0;
        if (arg1 > 0) {
            var_a3_2 = subroutine_arg0;
loop_5:
            temp_a2 = var_a2 + 1;
            *var_a3_2 = (s16) ((u32) M2C_FIELD(var_a6, u32 *, 0) >> 4);
            if (temp_a2 < arg1) {
                var_a2 = temp_a2 + 1;
                var_a3_2 += 4;
                temp_a7 = (u32) M2C_FIELD(var_a6, u32 *, 4) >> 4;
                var_a6 += 8;
                M2C_FIELD(var_a3_2, s16 *, -2) = (s16) temp_a7;
                if (var_a2 < arg1) {
                    goto loop_5;
                }
            }
        }
        kern_free(temp_s1);
        var_v0 = 0;
    } else {
        kern_free(temp_s1);
        var_v0 = 1;
    }
    return var_v0;
}

void crmFreeTiles(s64 arg0, s32 arg1, s32 arg3) {
    s32 temp_a1;
    s32 temp_a5;
    s32 temp_a6;
    s32 temp_v0_2;
    s32 var_a5;
    s64 var_a6;
    u32 *temp_v0;
    u32 *var_a7;
    void *temp_a1_2;

    unksp20 = (s64) *(s32 *)0xC;
    temp_v0 = kern_malloc(arg1 * 4);
    var_a6 = subroutine_arg2;
    if (arg1 > 0) {
        var_a5 = 0;
        var_a7 = temp_v0;
loop_2:
        temp_a5 = var_a5 + 1;
        *var_a7 = M2C_FIELD(var_a6, u16 *, 0) * 0x10;
        if (temp_a5 < arg1) {
            var_a5 = temp_a5 + 1;
            var_a7 += 8;
            temp_a1 = M2C_FIELD(var_a6, u16 *, 2) * 0x10;
            var_a6 += 4;
            M2C_FIELD(var_a7, s32 *, -4) = temp_a1;
            if (var_a5 < arg1) {
                goto loop_2;
            }
        }
    }
    temp_v0_2 = gthread_find_gfxp(curthreadhandle());
    temp_a1_2 = M2C_FIELD(unksp20, void **, 4);
    if (temp_a1_2 != NULL) {
        if (M2C_FIELD(temp_a1_2, s32 *, 0x30) == temp_v0_2) {
            crmFifoWait(subroutine_arg0, *saved_reg_gp, 0xF4240);
        }
    }
    tile_free(arg1, temp_v0, 0);
    kern_free(temp_v0);
    temp_a6 = arg3 * 2;
    *temp_a6 = (s16) (*temp_a6 - arg1);
    *(s16 *)2 -= arg1;
}

void crmFreeChunk(u32 *arg0) {
    s32 temp_a2;
    s32 var_a0;
    s32 var_a2;
    s32 var_a2_2;
    s32 var_a2_3;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    u16 temp_a6;
    u32 *temp_a7;

    var_a3 = M2C_FIELD(arg0, s32 *, 4);
    M2C_FIELD(arg0, s32 *, 0x10) = 0;
    if (var_a3 != 0) {
        var_a2 = M2C_FIELD(arg0, s32 *, 0xC);
        var_a0 = 0;
        if (var_a2 & 1) {
            if (var_a3 > 0) {
                var_a4 = 0;
                var_a3 = 0;
                var_a2_2 = 1;
                var_a5 = 1 < 0x100;
loop_5:
                temp_a7 = M2C_FIELD(arg0, u32 **, 8);
                temp_a6 = *(temp_a7 + var_a3);
                var_a3 += 2;
                if (temp_a6 != 0) {
                    var_a4 += 2;
                    var_a0 += 1;
                    M2C_FIELD((temp_a7 + var_a4), u16 *, -2) = temp_a6;
                }
                if (var_a5 != 0) {
                    var_a2_2 += 1;
                    var_a5 = var_a2_2 < 0x100;
                    if (var_a0 < M2C_FIELD(arg0, s32 *, 4)) {
                        goto loop_5;
                    }
                }
            }
            temp_a2 = M2C_FIELD(arg0, s32 *, 0x1C);
            if (temp_a2 != 0) {
                bzero(temp_a2 + 8, 0x400, temp_a2, var_a3);
            }
            var_a2 = M2C_FIELD(arg0, s32 *, 0xC);
        }
        if (var_a2 & 0x20) {
            M2C_FIELD(arg0, u32 *, 0) = 0;
            crm_get_dms_tiles(arg0);
        } else {
            crmFreeTiles((s64) M2C_FIELD(arg0, u32 **, 8), M2C_FIELD(arg0, s32 *, 4), var_a2, M2C_FIELD(arg0, u8 *, 0x15));
        }
        var_a2_3 = 0x100;
        if (!(M2C_FIELD(arg0, s32 *, 0xC) & 1)) {
            var_a2_3 = M2C_FIELD(arg0, s32 *, 4);
        }
        bzero(M2C_FIELD(arg0, u32 **, 8), var_a2_3 * 2, var_a2_3);
        M2C_FIELD(arg0, s32 *, 4) = 0;
    }
}

u32 *crmAllocChunk(u32 *arg0, s32 arg1, s32 arg2, s8 arg3) {
    s32 temp_v0;
    s32 temp_v0_2;
    u32 *temp_s3;
    u32 *var_a0;

    var_a0 = arg0;
    temp_s3 = var_a0;
    if ((arg1 == 0) || (var_a0 = (u32 *)1, (crmAllocTiles((s64) M2C_FIELD(var_a0, s32 *, 8)) == 0))) {
        temp_v0 = crmNextIncarnation(var_a0);
        M2C_FIELD(temp_s3, s8 *, 0x15) = arg3;
        M2C_FIELD(temp_s3, s8 *, 0x17) = 0;
        M2C_FIELD(temp_s3, s8 *, 0x16) = 0;
        M2C_FIELD(temp_s3, s32 *, 0xC) = arg2;
        M2C_FIELD(temp_s3, s32 *, 4) = arg1;
        M2C_FIELD(temp_s3, s32 *, 0x10) = temp_v0;
        temp_v0_2 = arg3 * 2;
        *(s16 *)2 += arg1;
        var_a0 = NULL;
        *temp_v0_2 = (s16) (*temp_v0_2 + arg1);
    }
    return var_a0;
}

void resizechunk(void *arg0, u16 *arg1, u8 arg2, u8 arg3) {
    s32 temp_lo;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_t0;
    s32 var_t3;
    s32 var_t8;
    s32 var_t9;
    s32 var_t9_2;
    s64 temp_a0;
    u16 *var_a6_2;
    u16 *var_t1;
    u16 *var_t1_2;
    u32 *temp_v0;
    u32 *var_a6;

    temp_lo = arg2 * arg3;
    temp_a0 = temp_lo * 2;
    unksp8 = temp_a0;
    temp_v0 = kern_malloc(temp_a0);
    var_t3 = 0;
    var_t0 = 0;
    var_t8 = 0;
    var_t1 = arg1;
    var_a6 = temp_v0;
    var_t9 = 0;
    if ((s32) M2C_FIELD(arg0, u8 *, 0x19) > 0) {
        var_t3 = 0;
        var_t0 = 0;
        do {
            var_a7 = 0;
            if ((s32) M2C_FIELD(arg0, u8 *, 0x18) > 0) {
                do {
                    var_t8 += 2;
                    *var_a6 = (u16) M2C_FIELD((M2C_FIELD(arg0, s32 *, 8) + var_t8), u16 *, -2);
                    var_a7 += 1;
                    var_a6 += 2;
                    var_t0 += 1;
                } while (var_a7 < (s32) M2C_FIELD(arg0, u8 *, 0x18));
            }
            var_a7_2 = 0;
            if ((arg2 - M2C_FIELD(arg0, u8 *, 0x18)) > 0) {
                do {
                    *var_a6 = (u16) *var_t1;
                    var_a7_2 += 1;
                    var_a6 += 2;
                    var_t0 += 1;
                    var_t1 += 2;
                    var_t3 += 1;
                } while (var_a7_2 < (arg2 - M2C_FIELD(arg0, u8 *, 0x18)));
            }
            var_t9 += 1;
        } while (var_t9 < (s32) M2C_FIELD(arg0, u8 *, 0x19));
    }
    var_t9_2 = 0;
    var_a6_2 = temp_v0 + (var_t0 * 2);
    var_t1_2 = (var_t3 * 2) + arg1;
    if ((arg2 * (arg3 - M2C_FIELD(arg0, u8 *, 0x19))) > 0) {
        do {
            *var_a6_2 = *var_t1_2;
            var_t9_2 += 1;
            var_a6_2 += 2;
            var_t1_2 += 2;
        } while (var_t9_2 < (arg2 * (arg3 - M2C_FIELD(arg0, u8 *, 0x19))));
    }
    M2C_FIELD(arg0, u8 *, 0x18) = arg2;
    M2C_FIELD(arg0, u8 *, 0x19) = arg3;
    M2C_FIELD(arg0, s32 *, 4) = temp_lo;
    bcopy(temp_v0, M2C_FIELD(arg0, s32 *, 8), unksp8, M2C_FIELD(arg0, u8 *, 0x19));
    kern_free(temp_v0);
    M2C_FIELD(arg0, s32 *, 0x10) = crmNextIncarnation();
}

s32 crmResizeFb(void *arg0) {
    s64 sp20;
    s64 sp0;
    s16 temp_s5;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a4;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_lo_4;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 var_a2;
    s32 var_s0;
    s32 var_s1;
    s32 var_s3;
    s32 var_s4;
    s32 var_s6;
    s32 var_s8;
    s32 var_v0;
    s64 temp_a0_4;
    s64 temp_v0_4;
    u8 temp_a0_2;
    u8 temp_a0_3;
    u8 temp_a0_5;
    u8 temp_a2;
    u8 temp_a6;
    u8 temp_a6_2;
    u8 temp_a6_3;
    u8 temp_a6_4;
    u8 temp_ra;
    u8 temp_t8;
    void *temp_v0_5;

    temp_a4 = M2C_FIELD(arg0, s16 *, 0xA) + 0x7F;
    temp_s5 = M2C_FIELD(arg0, s16 *, 8);
    temp_a3 = (s32) (((u32) (temp_a4 >> 6) >> 0x19) + temp_a4) >> 7;
    var_s6 = temp_a3;
    var_s0 = temp_a3;
    if (M2C_FIELD(arg0, s32 *, 4) & 2) {
        var_s0 = temp_a3 * 2;
    }
    if (var_s0 < 0x11) {
        temp_a0 = *(s32 *)4;
        if (temp_a0 != 0) {
            temp_ra = *(s32 *)0x14;
            temp_lo = 0x200 / (s32) temp_ra;
            var_s1 = (s32) ((temp_lo + temp_s5) - 1) / temp_lo;
            M2C_TRAP_IF(temp_ra == 0);
            M2C_TRAP_IF(temp_lo == 0);
            if (var_s1 < 0x11) {
                temp_a2 = *(s32 *)0x18;
                temp_a6 = *(s32 *)0x19;
                temp_v0 = (s32) temp_a6 < var_s0;
                if ((s32) temp_a2 >= var_s1) {
                    if (temp_v0 != 0) {
                        var_s1 = (s32) temp_a2;
                        goto block_9;
                    }
                    var_v0 = 0;
                } else {
                    if (temp_v0 == 0) {
                        var_s0 = (s32) temp_a6;
                    }
block_9:
                    temp_t8 = *(void *)0x14;
                    temp_lo_2 = 0x200 / (s32) temp_t8;
                    var_a2 = (s32) ((temp_lo_2 + temp_s5) - 1) / temp_lo_2;
                    M2C_TRAP_IF(temp_t8 == 0);
                    var_s3 = (var_s1 * var_s0) - temp_a0;
                    M2C_TRAP_IF(temp_lo_2 == 0);
                    var_s8 = var_a2;
                    if (var_a2 < 4) {
                        temp_a6_2 = *(void *)0x18;
                        temp_a0_2 = *(void *)0x19;
                        temp_v0_2 = (s32) temp_a0_2 < temp_a3;
                        if ((s32) temp_a6_2 >= var_a2) {
                            var_a2 = (s32) temp_a6_2;
                            if (temp_v0_2 != 0) {
                                goto block_16;
                            }
                            var_s4 = 0;
                            if (var_s3 != 0) {
                                goto block_19;
                            }
                            goto block_41;
                        }
                        var_s6 = (s32) temp_a0_2;
                        if (temp_v0_2 != 0) {
block_16:
                            var_s6 = temp_a3;
                        }
                        var_s8 = var_a2;
                        var_s4 = (var_a2 * var_s6) - *(void *)4;
                        if (var_s3 == 0) {
                            goto block_18;
                        }
                        goto block_19;
                    }
                    goto block_36;
                }
            } else {
                goto block_13;
            }
        } else {
            temp_a6_3 = *(void *)0x14;
            temp_lo_3 = 0x200 / (s32) temp_a6_3;
            var_a2 = (s32) ((temp_lo_3 + temp_s5) - 1) / temp_lo_3;
            M2C_TRAP_IF(temp_a6_3 == 0);
            temp_a6_4 = *(void *)0x18;
            temp_t0 = *(void *)4;
            M2C_TRAP_IF(temp_lo_3 == 0);
            temp_a0_3 = *(void *)0x19;
            if (var_a2 < 4) {
                temp_v0_3 = (s32) temp_a0_3 < temp_a3;
                if ((s32) temp_a6_4 >= var_a2) {
                    var_s3 = 0;
                    if (temp_v0_3 != 0) {
                        var_s1 = 0;
                        var_s6 = temp_a3;
                        var_s8 = (s32) temp_a6_4;
                        var_s4 = (temp_a3 * temp_a6_4) - temp_t0;
                        goto block_18;
                    }
                    goto block_41;
                }
                if (temp_v0_3 != 0) {
                    var_s3 = 0;
                    var_s1 = 0;
                    var_s6 = temp_a3;
                    var_s8 = var_a2;
                    var_s4 = (var_a2 * temp_a3) - temp_t0;
                } else {
                    var_s3 = 0;
                    var_s1 = 0;
                    var_s6 = (s32) temp_a0_3;
                    var_s8 = var_a2;
                    var_s4 = (var_a2 * temp_a0_3) - temp_t0;
                }
block_18:
                if (var_s4 != 0) {
block_19:
                    temp_a0_4 = var_s4 + var_s3;
                    sp0 = temp_a0_4;
                    temp_v0_4 = kern_malloc(temp_a0_4 * 2, 0x200, (u8) var_a2, temp_a3);
                    sp20 = temp_v0_4;
                    if (crmAllocTiles(temp_v0_4, sp0, 8, 2) != 0) {
                        kern_free((u32 *) sp20);
                        var_v0 = 0xC;
                    } else {
                        if (var_s1 != 0) {
                            resizechunk(NULL, (u16 *) sp20, (u8) var_s1, (u8) var_s0);
                        }
                        if (var_s4 != 0) {
                            resizechunk(NULL, sp20 + (var_s3 * 2), (u8) var_s8, (u8) var_s6);
                        }
                        kern_free((u32 *) sp20);
                        if (var_s1 != 0) {
                            temp_v0_5 = *NULL;
                            *(void *)0x19 = (u8) var_s0;
                            *(void *)0x18 = (u8) var_s1;
                            if (temp_v0_5 != NULL) {
                                temp_a0_5 = M2C_FIELD(temp_v0_5, u8 *, 0x14);
                                if (*(s32 *)0x14 != temp_a0_5) {
                                    temp_lo_4 = 0x200 / (s32) temp_a0_5;
                                    M2C_TRAP_IF(temp_a0_5 == 0);
                                    M2C_TRAP_IF(temp_lo_4 == 0);
                                    var_s1 = (s32) ((temp_s5 + temp_lo_4) - 1) / temp_lo_4;
                                }
                                M2C_FIELD(temp_v0_5, s8 *, 0x19) = (s8) var_s0;
                                M2C_FIELD(temp_v0_5, s8 *, 0x18) = (s8) var_s1;
                            }
                        }
                        var_v0 = 0;
                    }
                } else {
block_41:
                    var_v0 = 0;
                }
            } else {
block_36:
                goto block_13;
            }
        }
    } else {
block_13:
        var_v0 = 0x16;
    }
    return var_v0;
}

u32 *crmAllocBackbuffer(u32 *arg0, s64 arg1, s64 arg2, s32 arg3) {
    s64 sp10;
    s64 sp8;
    s32 sp0;
    s32 temp_a0;
    s32 temp_a4;
    s32 temp_s1;
    s32 var_a0;
    s32 var_a3;
    u32 *temp_v0;
    u32 *temp_v0_2;
    u32 *var_v0;

    var_a3 = arg3;
    temp_v0 = M2C_FIELD(arg0, u32 **, 8);
    temp_s1 = var_a3;
    if (var_a3 != 0x20) {
        var_a0 = temp_s1 >> 2;
        if (var_a3 == 0x10) {
            goto block_7;
        }
    } else {
        var_a0 = temp_s1 >> 2;
block_7:
        var_a3 = 0x200;
        temp_a0 = (s32) (((u32) var_a0 >> 0x1D) + temp_s1) >> 3;
        M2C_TRAP_IF(temp_a0 == 0);
        sp0 = 0x200 / temp_a0;
    }
    sp10 = arg1;
    sp8 = arg2;
    if (temp_v0 != NULL) {
        kern_free(temp_v0, var_a3);
    }
    bzero(arg0, 0x28);
    temp_v0_2 = kern_malloc(0x200);
    M2C_FIELD(arg0, u32 **, 8) = temp_v0_2;
    bzero(temp_v0_2, 0x200);
    var_v0 = crmAllocChunk(arg0, 0, 0xD, 3);
    if (var_v0 == NULL) {
        temp_a4 = sp8 + 0x7F;
        M2C_FIELD(arg0, s8 *, 0x14) = (s8) ((s32) (((u32) (temp_s1 >> 2) >> 0x1D) + temp_s1) >> 3);
        M2C_TRAP_IF(sp0 == 0);
        var_v0 = NULL;
        M2C_FIELD(arg0, s8 *, 0x19) = (s8) ((s32) (((u32) (temp_a4 >> 6) >> 0x19) + temp_a4) >> 7);
        M2C_FIELD(arg0, s8 *, 0x18) = (s8) ((s32) ((sp10 + sp0) - 1) / sp0);
    }
    return var_v0;
}

u32 *crmAllocPbuffer(u32 *arg0, s64 arg1, s64 arg2, s32 arg3) {
    s64 sp10;
    s32 temp_a6;
    u32 *var_v0;

    sp10 = arg2;
    if ((arg3 == 0x20) || (arg3 == 0x10) || (arg3 == 8)) {
        M2C_TRAP_IF(((s32) (((u32) (arg3 >> 2) >> 0x1D) + arg3) >> 3) == 0);
    }
    var_v0 = crmAllocChunk(arg0, 0, 0xC, 0);
    if (var_v0 == NULL) {
        temp_a6 = sp10 + 0x7F;
        M2C_FIELD(arg0, s8 *, 0x14) = (s8) ((s32) (((u32) (arg3 >> 2) >> 0x1D) + arg3) >> 3);
        M2C_TRAP_IF(subroutine_arg0 == 0);
        var_v0 = NULL;
        M2C_FIELD(arg0, s8 *, 0x19) = (s8) ((s32) (((u32) (temp_a6 >> 6) >> 0x19) + temp_a6) >> 7);
        M2C_FIELD(arg0, s8 *, 0x18) = (s8) ((s32) ((subroutine_arg2 + subroutine_arg0) - 1) / (s32) subroutine_arg0);
    }
    return var_v0;
}

u32 *crmAllocPbufTiles(u32 *arg0, s32 arg1) {
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_lo;
    u32 *temp_v0;
    u32 *temp_v0_2;
    u32 *var_s1;

    temp_lo = M2C_FIELD(arg0, u8 *, 0x18) * M2C_FIELD(arg0, u8 *, 0x19);
    M2C_FIELD(arg0, s32 *, 4) = temp_lo;
    temp_v0 = kern_malloc(temp_lo * 2);
    M2C_FIELD(arg0, u32 **, 8) = temp_v0;
    temp_a2 = M2C_FIELD(arg0, s32 *, 0xC);
    if (arg1 == 0) {
        temp_v0_2 = crmAllocChunk(arg0, M2C_FIELD(arg0, s32 *, 4), temp_a2, 8);
        var_s1 = temp_v0_2;
        if (temp_v0_2 != NULL) {
            kern_free(M2C_FIELD(arg0, u32 **, 8));
            M2C_FIELD(arg0, s32 *, 4) = 0;
            M2C_FIELD(arg0, u32 **, 8) = NULL;
        }
    } else {
        M2C_FIELD(arg0, s8 *, 0x15) = 9;
        temp_a2_2 = temp_a2 | 0x20;
        M2C_FIELD(arg0, s32 *, 0xC) = temp_a2_2;
        bzero(temp_v0, M2C_FIELD(arg0, s32 *, 4) * 2, temp_a2_2, 9);
        var_s1 = NULL;
    }
    return var_s1;
}

void crmDestroyPbuffer(void *arg0) {
    u32 *temp_a0;
    u32 *temp_a0_2;
    u32 *temp_a2;
    u32 *temp_a3;

    temp_a3 = M2C_FIELD(arg0, u32 **, 0x20);
    if (temp_a3 != NULL) {
        if (psema(M2C_FIELD(M2C_FIELD(temp_a3, void **, 0x1C), void **, 4), 0x11A, temp_a3) == 0) {
            crmFreeChunk(M2C_FIELD(arg0, u32 **, 0x20));
            temp_a0 = M2C_FIELD(M2C_FIELD(arg0, u32 **, 0x20), u32 **, 8);
            if (temp_a0 != NULL) {
                kern_free(temp_a0);
            }
            vsema(M2C_FIELD(M2C_FIELD(M2C_FIELD(arg0, u32 **, 0x20), void **, 0x1C), void **, 4));
            kern_free(M2C_FIELD(M2C_FIELD(arg0, u32 **, 0x20), u32 **, 0x1C));
            kern_free(M2C_FIELD(arg0, u32 **, 0x20));
            M2C_FIELD(arg0, u32 **, 0x20) = NULL;
            goto block_5;
        }
        cmn_err(4, 0);
    } else {
block_5:
        temp_a0_2 = M2C_FIELD(arg0, u32 **, 0x18);
        if (temp_a0_2 != NULL) {
            crmFreeChunk(temp_a0_2);
            temp_a2 = M2C_FIELD(M2C_FIELD(arg0, u32 **, 0x18), u32 **, 8);
            if (temp_a2 != NULL) {
                kern_free(temp_a2);
            }
            kern_free(M2C_FIELD(arg0, u32 **, 0x18));
            M2C_FIELD(arg0, u32 **, 0x18) = NULL;
        }
    }
}

u32 *crmAllocFrameBuffer(u32 *arg0, s32 arg1, s32 arg2, s32 arg3) {
    s32 temp_a1;
    s32 temp_a2;
    s32 var_v0_2;
    u32 *var_v0;

    if ((arg3 == 0x20) || (arg3 == 0x10) || (var_v0_2 = 0x100, (arg3 == 8))) {
        temp_a2 = (s32) (((u32) (arg3 >> 2) >> 0x1D) + arg3) >> 3;
        var_v0_2 = 0x200 / temp_a2;
        M2C_TRAP_IF(temp_a2 == 0);
    }
    temp_a1 = arg2 + 0x7F;
    M2C_TRAP_IF(var_v0_2 == 0);
    var_v0 = crmAllocChunk(arg0, ((s32) (((u32) (temp_a1 >> 6) >> 0x19) + temp_a1) >> 7) * ((s32) ((arg1 + var_v0_2) - 1) / var_v0_2), 0xC, 2);
    if (var_v0 == NULL) {
        M2C_FIELD(arg0, s8 *, 0x18) = (s8) subroutine_arg2;
        M2C_FIELD(arg0, s8 *, 0x19) = (s8) subroutine_arg0;
        var_v0 = NULL;
        M2C_FIELD(arg0, s8 *, 0x14) = (s8) ((s32) (((u32) (arg3 >> 2) >> 0x1D) + arg3) >> 3);
    }
    return var_v0;
}

u32 *crmAllocOverlayBuffer(s64 arg0, s32 arg1, s32 arg2) {
    s64 sp18;
    s64 sp10;
    s64 sp8;
    s32 temp_a1;
    s32 temp_at;
    s32 temp_v0;
    s32 temp_v1;
    u32 *var_v0;

    temp_a1 = arg1 + 0x1FF;
    temp_v1 = arg2 + 0x7F;
    temp_v0 = (s32) (((u32) (temp_v1 >> 6) >> 0x19) + temp_v1) >> 7;
    temp_at = (s32) (((u32) (temp_a1 >> 8) >> 0x17) + temp_a1) >> 9;
    sp8 = arg0;
    sp10 = (s64) temp_at;
    sp18 = (s64) temp_v0;
    var_v0 = crmAllocChunk((u32 *) (temp_at * temp_v0), 0x1C, 5);
    if (var_v0 == NULL) {
        M2C_FIELD(sp8, s8 *, 0x18) = (s8) sp10;
        M2C_FIELD(sp8, s8 *, 0x19) = (s8) sp18;
        M2C_FIELD(sp8, s8 *, 0x14) = 1;
        var_v0 = NULL;
    }
    return var_v0;
}

u32 *crmAllocCid(void *arg0, s32 arg1, s64 arg2) {
    s32 temp_a2;
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a0_2;
    s32 var_a2;
    s32 var_v0;
    u16 *temp_a7;
    u32 *temp_v0;
    u32 *var_a0;
    void *temp_a6;

    if (arg1 != 0x500) {
        temp_a2 = arg2 + 0x7F;
        if (M2C_FIELD(arg0, s32 *, 4) != 0) {
            goto block_2;
        }
        var_a0 = crmAllocChunk((u32 *) ((s32) (((u32) (temp_a2 >> 6) >> 0x19) + temp_a2) >> 7), 8, 0);
    } else {
        temp_v0 = crmAllocChunk(NULL, 0x10, 0);
        var_a0 = temp_v0;
        if (temp_v0 != NULL) {

        } else {
            bzero(M2C_FIELD(arg0, u32 **, 8), 0x20);
            temp_a5 = subroutine_arg0 + 0x7F;
            temp_a4 = (s32) (((u32) (temp_a5 >> 6) >> 0x19) + temp_a5) >> 7;
            var_v0 = 0;
            if (temp_a4 > 0) {
                var_a2 = 0;
                var_a0_2 = 1;
                do {
                    var_v0 += 1;
                    temp_a6 = *(u8 *)8 + (var_a0_2 * *(u8 *)0x18 * 2);
                    var_a0_2 += 1;
                    temp_a7 = M2C_FIELD(arg0, u32 **, 8) + var_a2;
                    var_a2 += 2;
                    *temp_a7 = M2C_FIELD(temp_a6, u16 *, -2);
                } while (var_v0 < temp_a4);
            }
            M2C_FIELD(arg0, s32 *, 4) = temp_a4;
block_2:
            var_a0 = NULL;
        }
    }
    return var_a0;
}

void crmAllocGbeTables(void) {
    crmAllocChunk((u32 *)4, 0, 0);
}

s64 crmAllocZbuffer(void *arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_s0;
    s64 temp_v0_3;
    s8 var_a3;
    u32 *temp_v0;
    u32 *temp_v0_2;

    temp_s0 = M2C_FIELD(arg0, s32 *, 4);
    bzero((u32 *)0x408);
    M2C_FIELD(arg0, s32 *, 4) = temp_s0;
    temp_v0 = kern_malloc(0x28);
    bzero(temp_v0, 0x28);
    temp_v0_2 = kern_malloc(0x200);
    M2C_FIELD(temp_v0, u32 **, 8) = temp_v0_2;
    bzero(temp_v0_2, 0x200);
    M2C_FIELD(arg0, u32 **, 0) = temp_v0;
    var_a3 = 4;
    M2C_FIELD(temp_v0, void **, 0x1C) = arg0;
    if (arg0 != NULL) {
        var_a3 = 8;
    }
    temp_v0_3 = crmAllocChunk(temp_v0, 0, 0xD, var_a3);
    sp10 = temp_v0_3;
    if (temp_v0_3 != 0) {
        kern_free(M2C_FIELD(temp_v0, u32 **, 8));
        kern_free(temp_v0);
        M2C_FIELD(arg0, u32 **, 0) = NULL;
        return sp10;
    }
    temp_a1 = subroutine_arg2 + 0x7F;
    temp_a3 = subroutine_arg0 + 0x7F;
    M2C_FIELD(temp_v0, s8 *, 0x14) = 4;
    M2C_FIELD(temp_v0, s8 *, 0x18) = (s8) ((s32) (((u32) (temp_a3 >> 6) >> 0x19) + temp_a3) >> 7);
    M2C_FIELD(temp_v0, s8 *, 0x19) = (s8) ((s32) (((u32) (temp_a1 >> 6) >> 0x19) + temp_a1) >> 7);
    return 0;
}

u32 *crmAllocTex(s64 arg0, void *arg1, void *arg2, s32 arg3) {
    s64 sp10;
    s32 temp_s4;
    s32 var_a2;
    s64 temp_v0_3;
    u32 *temp_a0;
    u32 *temp_a0_2;
    u32 *temp_v0;
    u32 *temp_v0_2;
    u32 *temp_v0_4;
    u32 *temp_v0_5;
    u32 *var_v0;
    u32 temp_a2;
    void *temp_s3;

    temp_s4 = M2C_FIELD(arg2, s32 *, 4);
    if ((arg1 != NULL) && (temp_s3 = M2C_FIELD(arg1, void **, 0x20), (temp_s3 != NULL))) {
        if (arg3 != 0) {
            goto block_3;
        }
        if (psema(temp_s3 + 0x10, 0x11A) != 0) {
            var_v0 = (u32 *)4;
        } else {
block_3:
            if (M2C_FIELD(arg2, s32 *, 8) & 1) {
                sp10 = 7;
            } else {
                sp10 = 6;
            }
            temp_v0 = kern_malloc(0x28);
            bzero(temp_v0, 0x28);
            var_a2 = 0x22;
            if (arg3 == 0) {
                var_a2 = 2;
                M2C_FIELD(temp_v0, u32 **, 8) = kern_malloc(temp_s4 * 2);
            }
            temp_v0_2 = crmAllocChunk(temp_v0, temp_s4, var_a2, (s8) sp10);
            if (temp_v0_2 != NULL) {
                temp_a0 = M2C_FIELD(temp_v0, u32 **, 8);
                if (temp_a0 != NULL) {
                    kern_free(temp_a0);
                }
                kern_free(temp_v0);
                var_v0 = temp_v0_2;
                if (arg3 == 0) {
                    vsema(temp_s3 + 0x10);
                    var_v0 = temp_v0_2;
                }
            } else if (arg3 != 0) {
                M2C_FIELD(temp_v0, u32 *, 0) = M2C_FIELD(arg2, u32 *, 0);
                temp_v0_3 = crm_get_dms_tiles(temp_v0);
                if (temp_v0_3 != 0) {
                    temp_a0_2 = M2C_FIELD(temp_v0, u32 **, 8);
                    if (temp_a0_2 != NULL) {
                        kern_free(temp_a0_2);
                    }
                    kern_free(temp_v0);
                    var_v0 = (u32 *) temp_v0_3;
                } else {
                    goto block_24;
                }
            } else {
                temp_a2 = M2C_FIELD(subroutine_arg2, u32 *, 0x138) + 1;
                M2C_FIELD(subroutine_arg2, u32 *, 0x138) = temp_a2;
                M2C_FIELD(arg2, u32 *, 0) = temp_a2;
                M2C_FIELD(temp_v0, u32 *, 0) = temp_a2;
                temp_v0_4 = crmMapChunk(temp_v0, sp, temp_a2, subroutine_arg2);
                if (temp_v0_4 != NULL) {
                    kern_free(M2C_FIELD(temp_v0, u32 **, 8));
                    kern_free(temp_v0);
                    vsema(temp_s3 + 0x10);
                    var_v0 = temp_v0_4;
                } else {
block_24:
                    temp_v0_5 = kern_malloc(0xC);
                    bzero(temp_v0_5, 0xC);
                    M2C_FIELD(temp_v0_5, u32 *, 0) = (u32) temp_v0;
                    M2C_FIELD(temp_v0_5, s32 *, 4) = (s32) subroutine_arg0;
                    M2C_FIELD(temp_v0_5, u32 **, 8) = (u32 *) M2C_FIELD(temp_s3, u32 **, 0x18);
                    M2C_FIELD(temp_s3, u32 **, 0x18) = temp_v0_5;
                    if (arg3 == 0) {
                        vsema(temp_s3 + 0x10);
                    }
                    var_v0 = NULL;
                    M2C_FIELD(arg2, s32 *, 0xC) = (s32) subroutine_arg0;
                }
            }
        }
    } else {
        var_v0 = (u32 *)0x16;
    }
    return var_v0;
}

s32 crmFreeTex(s64 arg0, u32 *arg1, s64 arg2) {
    s64 sp18;
    s64 sp10;
    s32 temp_a0_2;
    s32 temp_a1;
    s32 var_v0;
    u32 **temp_s1_2;
    u32 **var_v0_2;
    u32 *temp_a0;
    u32 *temp_s1;
    u32 *var_s1;
    u32 var_s2;
    void **temp_a4;
    void *temp_s3;
    void *temp_v0;
    void *temp_v0_2;

    sp10 = arg2;
    temp_s3 = arg1 + 0x10;
    sp18 = arg0;
    var_v0 = -1;
    if (psema(temp_s3, 0x11A) == 0) {
        mutex_lock(sp18 + 0x1DC, 0x19);
        temp_a1 = M2C_FIELD(arg1, s32 *, 0xC) - 1;
        M2C_FIELD(arg1, s32 *, 0xC) = temp_a1;
        if (temp_a1 > 0) {
            vsema(temp_s3, temp_a1);
            mutex_unlock(subroutine_arg0);
            var_v0 = 0;
        } else {
            temp_a4 = M2C_FIELD(arg1, void ***, 4);
            temp_v0 = M2C_FIELD(arg1, void **, 0);
            if (temp_a4 != NULL) {
                *temp_a4 = temp_v0;
            } else {
                M2C_FIELD(sp18, void **, 0x1C8) = temp_v0;
            }
            temp_v0_2 = M2C_FIELD(arg1, void **, 0);
            if (temp_v0_2 != NULL) {
                M2C_FIELD(temp_v0_2, void ***, 4) = (void **) M2C_FIELD(arg1, void ***, 4);
            }
            mutex_unlock(subroutine_arg0, temp_a1);
            var_v0_2 = M2C_FIELD(arg1, u32 ***, 0x18);
            if (var_v0_2 != NULL) {
loop_13:
                temp_s1 = *var_v0_2;
                if (!(M2C_FIELD(temp_s1, s32 *, 0xC) & 0x20) && (sp10 == 0)) {
                    crmUnmapChunk(temp_s1);
                }
                crmFreeChunk(temp_s1);
                temp_a0 = M2C_FIELD(temp_s1, u32 **, 8);
                if (temp_a0 != NULL) {
                    kern_free(temp_a0);
                }
                kern_free(temp_s1);
                temp_s1_2 = M2C_FIELD(subroutine_arg2, u32 ***, 8);
                kern_free((u32 *) subroutine_arg2);
                var_v0_2 = temp_s1_2;
                if (temp_s1_2 != NULL) {
                    goto loop_13;
                }
            }
            var_s1 = arg1;
            var_s2 = 0;
loop_19:
            temp_a0_2 = M2C_FIELD(var_s1, s32 *, 0x20);
            if (temp_a0_2 == 0) {
                var_s2 += 1;
                var_s1 += 4;
                if (var_s2 < 0x80U) {
                    goto loop_19;
                }
            } else {
                kmem_free(temp_a0_2, 0x1D0);
                var_s2 += 1;
                var_s1 += 4;
                M2C_FIELD(var_s1, s32 *, 0x1C) = 0;
                if (var_s2 < 0x80U) {
                    goto loop_19;
                }
            }
            vsema(temp_s3);
            freesema(temp_s3);
            kern_free(arg1);
            var_v0 = 0;
        }
    }
    return var_v0;
}

s32 crmDeallocTex(void *arg0, s32 arg1) {
    s32 var_v0;
    u32 *temp_a0;
    u32 *temp_s1;
    u32 *temp_v0;
    u32 *var_s0;
    u32 *var_s4;
    void *temp_a4;
    void *temp_s2;

    temp_a4 = M2C_FIELD(arg0, void **, 0x4C);
    var_v0 = 0x16;
    if (temp_a4 != NULL) {
        temp_s2 = M2C_FIELD(temp_a4, void **, 0x20);
        var_v0 = 0x16;
        if (temp_s2 != NULL) {
            if (psema((void *) (temp_s2 + 0x10), 0x11A) != 0) {
                var_v0 = 4;
            } else {
                var_s0 = M2C_FIELD(temp_s2, u32 **, 0x18);
                if (var_s0 != NULL) {
                    var_s4 = NULL;
loop_9:
                    temp_s1 = M2C_FIELD(var_s0, u32 **, 0);
                    if (M2C_FIELD(temp_s1, u32 *, 0) != arg1) {
                        var_s4 = var_s0;
                        goto block_8;
                    }
                    if (M2C_FIELD(temp_s1, s32 *, 0xC) & 0x20) {
block_8:
                        var_s0 = M2C_FIELD(var_s0, u32 **, 8);
                        if (var_s0 != NULL) {
                            goto loop_9;
                        }
                        goto block_11;
                    }
                    crmUnmapChunk(temp_s1);
                    crmFreeChunk(temp_s1);
                    temp_a0 = M2C_FIELD(temp_s1, u32 **, 8);
                    if (temp_a0 != NULL) {
                        kern_free(temp_a0);
                    }
                    kern_free(temp_s1);
                    temp_v0 = M2C_FIELD(var_s0, u32 **, 8);
                    if (var_s4 != NULL) {
                        M2C_FIELD(var_s4, u32 **, 8) = temp_v0;
                    } else {
                        M2C_FIELD(temp_s2, u32 **, 0x18) = temp_v0;
                    }
                    kern_free(var_s0);
                    vsema((void *) subroutine_arg0);
                    var_v0 = 0;
                } else {
block_11:
                    vsema((void *) subroutine_arg0);
                    var_v0 = 0x16;
                }
            }
        }
    }
    return var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x30, 0x34, 0x38, 0x3c, 0x40, 0x44, 0x48, 0x4c, 0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7c, 0x80, 0x84, 0x88, 0x8c], gap at: 0x58. */
s32 crmDefineTex(s64 arg0, void *arg1, void *arg2) {
    s64 sp90;
    s64 sp28;
    s64 sp20;
    s64 sp18;
    s64 sp10;
    s32 temp_a6;
    s32 temp_s1;
    s32 temp_v1;
    s32 var_a5_4;
    s32 var_a7;
    s32 var_s3;
    s32 var_t0;
    s32 var_v0;
    s64 temp_v0_3;
    s64 var_a1;
    s64 var_a6;
    s64 var_t1;
    u16 temp_ra;
    u32 *temp_a0;
    u32 *temp_v0_2;
    u32 *var_a0;
    u32 *var_a5_2;
    u32 *var_s1;
    u32 *var_s4;
    u32 temp_a5;
    u32 temp_a5_2;
    u32 temp_s5;
    u32 temp_v0;
    u32 var_a2;
    u32 var_a5;
    u32 var_a5_3;
    u32 var_a6_2;
    u32 var_s0;
    u32 var_s2;
    u32 var_s5;
    u32 var_s7;
    u32 var_v0_3;
    u64 temp_a7;
    void *temp_a3;
    void *temp_at;
    void *temp_s0;
    void *temp_s4;
    void *temp_s6;
    void *var_a2_2;
    void *var_v0_2;

    var_s7 = M2C_FIELD(arg2, u32 *, 8);
    var_s2 = M2C_FIELD(arg2, u32 *, 4);
    temp_s4 = M2C_FIELD(arg1, void **, 0x4C);
    if (temp_s4 != NULL) {
        temp_s1 = M2C_FIELD(temp_s4, s32 *, 0x20);
        sp28 = arg0;
        if (temp_s1 != 0) {
            if (RRM_CheckValidFault(M2C_FIELD(arg1, s32 *, 0x30)) >= 0) {
                temp_v0 = M2C_FIELD(arg2, u32 *, 0);
                var_s3 = 0x20;
                if (!(temp_v0 & 0x80000000)) {
                    var_s3 = 0;
                }
                temp_s5 = temp_v0 & 0x7FFFFFFF;
                M2C_FIELD(arg2, u32 *, 0) = temp_s5;
                if (temp_s5 >= 0x80U) {
                    goto block_5;
                }
                temp_s0 = temp_s1 + 0x10;
                if (psema(temp_s0, 0x11A) != 0) {
                    var_v0 = 4;
                } else {
                    temp_s6 = temp_s1 + (temp_s5 * 4);
                    var_a0 = M2C_FIELD(temp_s6, u32 **, 0x20);
                    sp10 = (s64) temp_s1;
                    sp18 = (s64) temp_s4;
                    sp20 = (s64) temp_s0;
                    if (var_a0 != NULL) {
                        var_s4 = var_a0;
                        var_a5 = 0;
loop_13:
                        temp_a5 = var_a5 + 1;
                        M2C_FIELD(var_a0, s64 *, 8) = 0;
                        temp_a5_2 = temp_a5 + 1;
                        if (temp_a5 < 0x1DU) {
                            M2C_FIELD(var_a0, s64 *, 0x18) = 0;
                            var_a5 = temp_a5_2 + 1;
                            if (temp_a5_2 < 0x1DU) {
                                var_a0 += 0x30;
                                M2C_FIELD(var_a0, s64 *, -8) = 0;
                                if (var_a5 < 0x1DU) {
                                    goto loop_13;
                                }
                            }
                        }
                    } else {
                        temp_v0_2 = kmem_alloc(0x1D0, 0x900);
                        var_s4 = temp_v0_2;
                        M2C_FIELD(temp_s6, u32 **, 0x20) = temp_v0_2;
                        bzero(temp_v0_2, 0x1D0);
                        var_a5_2 = temp_v0_2;
                        var_a2 = 0;
                        var_a6 = M2C_FIELD(sp28, s32 *, 0x78) + 0x1600;
                        do {
                            var_a2 += 1;
                            var_a5_2 += 0x10;
                            temp_a7 = (u64) (var_a6 << 0x20) >> 0x20;
                            var_a6 += 8;
                            M2C_FIELD(var_a5_2, u64 *, -0x10) = temp_a7;
                        } while (var_a2 < 0x1CU);
                        M2C_FIELD(temp_v0_2, s64 *, 0x1C0) = 0;
                    }
                    var_s5 = 0;
                    var_a2_2 = arg2;
                    var_s0 = 0;
                    var_a1 = 0;
                    var_s1 = NULL;
                    var_t1 = 0;
loop_17:
                    temp_a6 = M2C_FIELD(var_a2_2, s32 *, 0xC);
                    if (temp_a6 != 0) {
                        var_a1 += 1;
                        if (var_s3 != 0) {
                            if (var_s1 != NULL) {
                                goto block_20;
                            }
                            goto block_46;
                        }
block_46:
                        var_v0_2 = M2C_FIELD((void *) sp10, void **, 0x18);
                        if (var_v0_2 != NULL) {
loop_49:
                            temp_a0 = M2C_FIELD(var_v0_2, u32 **, 0);
                            if ((M2C_FIELD(temp_a0, u32 *, 0) == temp_a6) && (var_s3 == (M2C_FIELD(temp_a0, s32 *, 0xC) & 0x20))) {
                                var_s1 = temp_a0;
                                if (temp_a0 == NULL) {
                                    goto block_52;
                                }
block_20:
                                if ((var_s3 == 0) || (sp90 = var_a1, unksp50 = var_t1, unksp58 = (s64) var_a2_2, (var_a1 != 1))) {
                                    goto block_22;
                                }
                                temp_v0_3 = crm_get_dms_tiles(var_s1, var_a1, var_a2_2);
                                var_a1 = sp90;
                                var_a2_2 = (void *) unksp58;
                                var_t1 = unksp50;
                                if (temp_v0_3 != 0) {
                                    vsema((void *) sp20, (s32) var_a1, (s64) var_a2_2);
                                    goto block_5;
                                }
                                goto block_22;
                            }
                            var_v0_2 = M2C_FIELD(var_v0_2, void **, 8);
                            if (var_v0_2 != NULL) {
                                goto loop_49;
                            }
                            goto block_52;
                        }
block_52:
                        unksp50 = var_t1;
                        unksp58 = (s64) var_a2_2;
                        sp90 = var_a1;
                        if (var_s3 != 0) {
                            var_a1 = sp90;
                            var_a2_2 = (void *) unksp58;
                            var_t1 = unksp50;
                            if (crmAllocTex(sp28, (void *) sp18, sp, 1) == NULL) {
                                var_s1 = *M2C_FIELD(sp10, u32 ***, 0x18);
block_22:
                                var_v0_3 = 0;
                                if (M2C_FIELD(var_s1, s32 *, 4) >= (var_s2 * var_s7)) {
                                    if (var_s3 == 0) {
                                        var_s0 = 0;
                                    }
                                    var_a6_2 = *var_t1;
                                    var_t0 = var_s0 * 2;
                                    if (var_s7 != 0) {
loop_25:
                                        var_a7 = var_a6_2 - 1;
                                        if (var_s2 != 0) {
                                            var_a5_3 = 1;
loop_30:
                                            if ((var_s3 != 0) && (var_s5 == 5)) {
                                                temp_a3 = var_s4 + ((var_a6_2 >> 2) * 0x10);
                                                M2C_FIELD((temp_a3 + ((var_a6_2 & 3) * 2)), u16 *, 8) = (u16) M2C_FIELD((temp_a3 + ((var_a7 & 3) * 2)), u16 *, 8);
                                                goto block_29;
                                            }
                                            var_a7 += 1;
                                            if (var_s0 < (u32) M2C_FIELD(var_s1, s32 *, 4)) {
                                                var_s0 += 1;
                                                temp_v1 = (var_a6_2 & 3) * 2;
                                                temp_at = var_s4 + ((var_a6_2 >> 2) * 0x10);
                                                temp_ra = *(M2C_FIELD(var_s1, s32 *, 8) + var_t0);
                                                var_a6_2 += 1;
                                                var_t0 += 2;
                                                M2C_FIELD((temp_at + temp_v1), s16 *, 8) = (s16) (temp_ra | 0x8000);
block_29:
                                                var_a5_3 += 1;
                                                if (var_a5_3 < var_s2) {
                                                    goto loop_30;
                                                }
                                                goto block_33;
                                            }
                                            vsema((void *) sp20, (s32) var_a1, (s64) var_a2_2);
                                            goto block_5;
                                        }
block_33:
                                        var_a5_4 = 4;
                                        var_v0_3 += 1;
                                        if (var_s5 == 0) {
                                            var_a5_4 = 8;
                                        }
                                        var_a6_2 += var_a5_4 - var_s2;
                                        if (var_v0_3 >= var_s7) {
                                            goto block_35;
                                        }
                                        goto loop_25;
                                    }
                                    goto block_35;
                                }
                                vsema((void *) sp20, (s32) var_a1, (s64) var_a2_2);
                                goto block_5;
                            }
                            vsema((void *) sp20, (s32) var_a1, (s64) var_a2_2);
                            goto block_5;
                        }
                        vsema((void *) sp20, (s32) var_a1, (s64) var_a2_2);
                        goto block_5;
                    }
block_35:
                    var_a2_2 += 4;
                    var_s5 += 1;
                    if (var_a1 != 0) {
                        if ((s32) var_s2 >= 2) {
                            var_s2 = (u32) ((s32) var_s2 >> 1);
                        }
                        if ((s32) var_s7 >= 2) {
                            var_s7 = (u32) ((s32) var_s7 >> 1);
                        }
                    }
                    var_t1 += 4;
                    if (var_s5 >= 6U) {
                        vsema((void *) sp20, (s32) var_a1, (s64) var_a2_2);
                        var_v0 = 0;
                    } else {
                        goto loop_17;
                    }
                }
            } else {
                var_v0 = 4;
            }
        } else {
            goto block_5;
        }
    } else {
block_5:
        var_v0 = 0x16;
    }
    return var_v0;
}

void crmLoadTexTlb(void **arg0) {
    s32 temp_t2;
    s64 temp_t1;
    u32 temp_a2;
    u32 var_a2;
    void *var_a4;

    var_a2 = 0;
    var_a4 = M2C_FIELD((M2C_FIELD(arg0, s32 *, 0x20) + (M2C_FIELD(arg0, s32 *, 0x1C) * 4)), void **, 0x20);
loop_1:
    temp_a2 = var_a2 + 1;
    *(0xA0000000 | M2C_FIELD(var_a4, s32 *, 4)) = (s64) M2C_FIELD(var_a4, s64 *, 8);
    if (temp_a2 < 0x1CU) {
        var_a2 = temp_a2 + 1;
        temp_t1 = M2C_FIELD(var_a4, s64 *, 0x18);
        temp_t2 = 0xA0000000 | M2C_FIELD(var_a4, s32 *, 0x14);
        var_a4 += 0x20;
        *temp_t2 = temp_t1;
        if (var_a2 < 0x1CU) {
            goto loop_1;
        }
    }
}

s64 crmMapPages(s64 arg0, s64 arg1, s32 *arg2) {
    s64 sp10;
    s64 var_v0;

    sp10 = arg1;
    var_v0 = crmCreateRegion(arg2, arg0, 0);
    if (var_v0 == 0) {
        ddv_lock(*arg2);
        ddv_mappages(*arg2, 0, subroutine_arg2, (u32) (sp10 + 0xFFF) >> 0xC);
        ddv_unlock(*arg2);
        var_v0 = 0;
        if (subroutine_arg0 != 0) {
            gfxdd_munmap(*arg2);
            var_v0 = subroutine_arg0;
        }
    }
    return var_v0;
}

s32 crmUnmapPages(s32 *arg0) {
    s32 temp_at;

    temp_at = *arg0;
    *arg0 = 0;
    gfxdd_munmap(temp_at);
    return 0;
}

u32 *crmMapChunk(u32 *arg0, s32 *arg1) {
    s64 sp50;
    s64 sp48;
    s64 sp40;
    s32 *var_a5;
    s32 temp_a4;
    s32 temp_v0_3;
    s32 var_a4;
    s32 var_s2;
    s32 var_v0;
    s64 temp_a2;
    s64 temp_v0;
    s64 temp_v0_2;
    s64 temp_v0_4;
    s64 var_s1;
    s64 var_s3;

    *arg1 = 0;
    sp40 = (s64) arg1;
    temp_v0 = crmCreateRegion(arg0 + 0x24, M2C_FIELD(arg0, s32 *, 4) << 0x10, 0, (M2C_FIELD(arg0, s32 *, 0xC) & 2) == 0);
    var_s1 = temp_v0;
    if (temp_v0 == 0) {
        if (M2C_FIELD(arg0, s32 *, 0xC) & 1) {
            temp_v0_2 = kern_malloc(M2C_FIELD(arg0, s32 *, 4) * 2);
            sp50 = temp_v0_2;
            crm_update_sz_tiles(arg0, temp_v0_2);
        } else {
            sp50 = (s64) M2C_FIELD(arg0, s32 *, 8);
        }
        ddv_lock(M2C_FIELD(arg0, s32 *, 0x24));
        var_s2 = 0;
        if (M2C_FIELD(arg0, s32 *, 4) > 0) {
            var_s3 = sp50;
            sp48 = 0;
loop_7:
            var_a5 = sp;
            var_a4 = 0;
            var_v0 = (*var_s3 * 0x10) - 1;
loop_8:
            temp_a4 = var_a4 + 1;
            temp_v0_3 = var_v0 + 1;
            *var_a5 = temp_v0_3;
            var_a4 = temp_a4 + 1;
            if (temp_a4 < 0x10) {
                var_a5 += 8;
                var_v0 = temp_v0_3 + 1;
                M2C_FIELD(var_a5, s32 *, -4) = var_v0;
                if (var_a4 < 0x10) {
                    goto loop_8;
                }
            }
            temp_v0_4 = ddv_mappfns(M2C_FIELD(arg0, s32 *, 0x24), var_s2, sp, 0x10);
            var_s1 = temp_v0_4;
            var_s2 += 0x10000;
            if (temp_v0_4 == 0) {
                temp_a2 = sp48 + 1;
                sp48 = temp_a2;
                var_s3 += 2;
                if (temp_a2 < M2C_FIELD(arg0, s32 *, 4)) {
                    goto loop_7;
                }
            }
        }
        ddv_unlock(M2C_FIELD(arg0, s32 *, 0x24));
        if (var_s1 != 0) {
            if (M2C_FIELD(arg0, s32 *, 0xC) & 1) {
                kern_free((u32 *) sp50);
            }
            gfxdd_munmap(M2C_FIELD(arg0, s32 *, 0x24));
        } else {
            var_s1 = 0;
            *sp40 = ddv_getaddr(M2C_FIELD(arg0, s32 *, 0x24));
        }
    }
    return (u32 *) var_s1;
}

s64 crmCreateRegion(s32 *arg0, s64 arg3) {
    s64 var_v0;

    if (gfxdd_mmap_mem(arg3, arg0) != 0) {
        var_v0 = 0xC;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

s32 crm_update_sz_tiles(u32 *arg0, u16 *arg1) {
    s32 temp_a4;
    s32 temp_a5;
    s32 var_a4;
    s32 var_a5;
    s32 var_v0;
    u16 *var_a1;
    u16 temp_a6;
    u16 temp_a6_2;

    var_a1 = arg1;
    var_v0 = 0;
    if (arg0 != NULL) {
        var_a4 = 0;
        var_a5 = 1;
loop_2:
        temp_a6 = *(M2C_FIELD(arg0, s32 *, 8) + var_a4);
        temp_a5 = var_a5 + 1;
        temp_a4 = var_a4 + 2;
        if (temp_a6 != 0) {
            *var_a1 = temp_a6;
            var_a1 += 2;
            var_v0 += 1;
        }
        if (var_a5 < 0x100) {
            temp_a6_2 = *(M2C_FIELD(arg0, s32 *, 8) + temp_a4);
            var_a4 = temp_a4 + 2;
            if (temp_a6_2 != 0) {
                *var_a1 = temp_a6_2;
                var_a1 += 2;
                var_v0 += 1;
            }
            var_a5 = temp_a5 + 1;
            if (temp_a5 < 0x100) {
                goto loop_2;
            }
        }
        return var_v0;
    }
    return 0;
}

s32 crm_tile_list(void *arg0, u16 *arg1, s32 arg2) {
    s32 temp_a5;
    s32 temp_v0;
    s32 var_a0;
    s32 var_a5;
    s32 var_v0;
    u16 *var_a1;
    u16 temp_a4;

    var_a1 = arg1;
    var_v0 = 0;
    var_a5 = 0;
    if (M2C_FIELD(arg0, s32 *, 0xC) & 1) {
        var_a0 = crm_update_sz_tiles();
    } else {
        if (arg2 > 0) {
loop_3:
            temp_v0 = var_v0 + 1;
            temp_a5 = var_a5 + 2;
            *var_a1 = *(M2C_FIELD(arg0, s32 *, 8) + var_a5);
            if (temp_v0 < arg2) {
                var_v0 = temp_v0 + 1;
                var_a1 += 4;
                temp_a4 = *(M2C_FIELD(arg0, s32 *, 8) + temp_a5);
                var_a5 = temp_a5 + 2;
                M2C_FIELD(var_a1, u16 *, -2) = temp_a4;
                if (var_v0 < arg2) {
                    goto loop_3;
                }
            }
        }
        var_a0 = arg2;
        if (arg2 < 0) {
            var_a0 = 0;
        }
    }
    return var_a0;
}

s32 crmUnmapChunk(u32 *arg0) {
    s32 temp_at;

    temp_at = M2C_FIELD(arg0, s32 *, 0x24);
    M2C_FIELD(arg0, s32 *, 0x24) = 0;
    gfxdd_munmap(temp_at);
    return 0;
}

void crmValidateDrawable(void *arg0, void **arg1) {
    s32 temp_a0;
    s32 temp_a0_3;
    s32 var_a0;
    s32 var_a1;
    s32 var_a5;
    s32 var_s1;
    s64 temp_a0_2;
    void **var_a2;
    void **var_s0;
    void *temp_a1;
    void *temp_s4;
    void *var_a4;

    temp_s4 = M2C_FIELD(arg0, void **, 0x78);
    var_s0 = arg1;
    var_s1 = 0;
loop_2:
    temp_a1 = *var_s0;
    if (temp_a1 == NULL) {
        var_s1 += 1;
        var_s0 += 4;
        if (var_s1 < 3) {
            goto loop_2;
        }
    } else {
        crmLoadTlbABC(arg0, temp_a1, var_s1);
        var_s1 += 1;
        var_s0 += 4;
        if (var_s1 < 3) {
            goto loop_2;
        }
    }
    var_a2 = arg1;
    var_a4 = temp_s4;
    if (M2C_FIELD(arg1, s32 *, 0x24) != 0) {
        var_a5 = 0;
        goto block_6;
    }
    var_a5 = 0;
    if (M2C_FIELD(arg1, s32 *, 0x34) == 0) {
        var_a1 = (s32) temp_s4;
        var_a0 = 0;
        if (M2C_FIELD(arg0, s32 *, 0xB4) != 0) {
            M2C_FIELD(arg0, s32 *, 0xB4) = 0;
loop_16:
            temp_a0 = var_a0 + 1;
            M2C_FIELD(var_a1, s64 *, 0x1700) = 0;
            M2C_FIELD(var_a1, s64 *, 0x1780) = 0;
            var_a0 = temp_a0 + 1;
            if (temp_a0 < 0x10) {
                var_a1 += 0x10;
                M2C_FIELD(var_a1, s64 *, 0x16F8) = 0;
                M2C_FIELD(var_a1, s64 *, 0x1778) = 0;
                if (var_a0 >= 0x10) {

                } else {
                    goto loop_16;
                }
            }
        }
    } else {
block_6:
        M2C_FIELD(arg0, s32 *, 0xB4) = 1;
        do {
            var_a5 += 1;
            M2C_FIELD(var_a4, s64 *, 0x1700) = (s64) M2C_FIELD(var_a2, s64 *, 0x50);
            var_a1 = var_a5 < 0x10;
            var_a4 += 8;
            temp_a0_2 = M2C_FIELD(var_a2, s64 *, 0xD0);
            var_a2 += 8;
            M2C_FIELD(var_a4, s64 *, 0x1778) = temp_a0_2;
        } while (var_a1 != 0);
    }
    M2C_FIELD(temp_s4, s32 *, 0x4008) = 0;
    temp_a0_3 = M2C_FIELD(arg1, s32 *, 0x20);
    if (temp_a0_3 != 0) {
        if (M2C_FIELD((temp_a0_3 + (M2C_FIELD(arg1, s32 *, 0x1C) * 4)), s32 *, 0x20) != 0) {
            crmLoadTexTlb(arg1, (void *) var_a1, var_a2);
            M2C_FIELD(temp_s4, s32 *, 0x4008) = 0;
        }
    }
}

void crmLoadTlbABC(void *arg0, void *arg1, s32 arg2) {
    s64 sp10;
    s64 sp8;
    s32 sp0;
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a7;
    s32 temp_t0;
    s32 temp_t2;
    s32 var_a1;
    s32 var_a2;
    s32 var_a4_2;
    s32 var_a5;
    s32 var_t1;
    s32 var_v0;
    s32 var_v1;
    s64 temp_t1;
    s64 temp_t1_2;
    s64 temp_v0;
    u16 temp_at;
    u8 temp_a6;
    u8 var_a2_2;
    u8 var_t8;
    void *temp_a4;
    void *temp_s0;
    void *var_a4;

    temp_a5 = M2C_FIELD(arg1, s32 *, 0x10);
    temp_s0 = M2C_FIELD(arg0, void **, 0x78);
    temp_a4 = (arg2 * 4) + arg0;
    if (M2C_FIELD(temp_a4, s32 *, 0xA4) != temp_a5) {
        M2C_FIELD(temp_a4, s32 *, 0xA4) = temp_a5;
        switch (arg2) {                             /* irregular */
        case 0:
            sp0 = temp_s0 + 0x1000;
            break;
        case 1:
            sp0 = temp_s0 + 0x1200;
            break;
        case 2:
            sp0 = temp_s0 + 0x1400;
            break;
        }
        temp_a6 = M2C_FIELD(arg1, u8 *, 0x19);
        var_a2 = sp0;
        if (M2C_FIELD(arg1, s32 *, 0xC) & 1) {
            temp_a5_2 = temp_a6 * 4;
            var_a4 = M2C_FIELD(arg1, void **, 8);
            var_a1 = 0;
            if (temp_a5_2 > 0) {
loop_6:
                temp_a1 = var_a1 + 1;
                temp_a2 = var_a2 + 8;
                *(0xA0000000 | var_a2) = (s64) M2C_FIELD(var_a4, s64 *, 0);
                var_a1 = temp_a1 + 1;
                if (temp_a1 < temp_a5_2) {
                    temp_t2 = 0xA0000000 | temp_a2;
                    var_a2 = temp_a2 + 8;
                    temp_t1 = M2C_FIELD(var_a4, s64 *, 8);
                    var_a4 += 0x10;
                    *temp_t2 = temp_t1;
                    if (var_a1 < temp_a5_2) {
                        goto loop_6;
                    }
                }
            }
        } else {
            var_t8 = M2C_FIELD(arg1, u8 *, 0x17);
            temp_t1_2 = var_t8 + temp_a6;
            var_a4_2 = 0;
            sp10 = temp_t1_2;
            temp_a7 = M2C_FIELD(arg1, u8 *, 0x16) + M2C_FIELD(arg1, u8 *, 0x18);
            if ((s32) var_t8 < temp_t1_2) {
                var_a5 = 0;
                do {
                    var_a2_2 = M2C_FIELD(arg1, u8 *, 0x16);
                    temp_t0 = var_t8 * 4;
                    var_t8 += 1;
                    var_v1 = var_a2_2 & 3;
                    var_v0 = var_v1 * 2;
                    if ((s32) var_a2_2 < temp_a7) {
                        sp8 = 0;
                        var_t1 = temp_t0 | ((s32) var_a2_2 >> 2);
                        do {
                            var_a4_2 += 1;
                            temp_at = *(M2C_FIELD(arg1, void **, 8) + var_a5);
                            var_a5 += 2;
                            *(&sp8 + var_v0) = temp_at;
                            if ((var_v1 == 3) || (var_a2_2 == (temp_a7 - 1))) {
                                temp_v0 = sp8;
                                sp8 = 0;
                                *(0xA0000000 | (sp0 + (var_t1 * 8))) = temp_v0;
                            }
                            var_a2_2 += 1;
                            var_v1 = var_a2_2 & 3;
                            var_v0 = var_v1 * 2;
                            var_t1 = temp_t0 | ((s32) var_a2_2 >> 2);
                        } while ((s32) var_a2_2 < temp_a7);
                    }
                    var_a5 = var_a4_2 * 2;
                } while ((s32) var_t8 < sp10);
            }
        }
        M2C_FIELD(temp_s0, s32 *, 0x4008) = 0;
    }
}

void crmLoadCidTlb(void *arg0, void *arg1) {
    s64 sp0;
    s32 var_a3;
    s32 var_a4;
    s32 var_a5;
    s64 temp_a2;

    var_a4 = 0;
    var_a3 = 0;
    sp0 = 0;
    var_a5 = 0 & 3;
loop_2:
    if (var_a3 < M2C_FIELD(arg1, s32 *, 4)) {
        *(sp + (var_a5 * 2)) = *(M2C_FIELD(arg1, s32 *, 8) + var_a4);
    }
    if (var_a5 == 3) {
        temp_a2 = sp0;
        sp0 = 0;
        M2C_FIELD((arg0 + (((s32) (((u32) (var_a3 >> 1) >> 0x1E) + var_a3) >> 2) * 8)), s64 *, 0x16E0) = temp_a2;
    }
    var_a3 += 1;
    var_a4 += 2;
    var_a5 = var_a3 & 3;
    if (var_a3 < 0x10) {
        goto loop_2;
    }
    M2C_FIELD(arg0, s32 *, 0x4008) = 0;
}
