Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $v1, .L00000270

Traceback (most recent call last):
  File "/work/m2c/m2c/instruction.py", line 216, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 2345, in set_current_instr
    yield
  File "/work/m2c/m2c/translate.py", line 4001, in translate_node_body
    evaluate_instruction(instr_ref, state)
    ~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
  File "/work/m2c/m2c/translate.py", line 3987, in evaluate_instruction
    eval_fn(state, args)
    ~~~~~~~^^^^^^^^^^^^^
  File "/work/m2c/m2c/arch_mips.py", line 1155, in eval_fn
    cond = cls.instrs_branches[mnemonic](a)
  File "/work/m2c/m2c/arch_mips.py", line 1403, in <lambda>
    "bgez": lambda a: handle_bgez(a),
                      ~~~~~~~~~~~^^^
  File "/work/m2c/m2c/evaluate.py", line 1324, in handle_bgez
    return fold_shift_bgez(expr) or BinaryOp.scmp(expr, ">=", Literal(0))
           ~~~~~~~~~~~~~~~^^^^^^
  File "/work/m2c/m2c/evaluate.py", line 1318, in fold_shift_bgez
    bitand = BinaryOp.int(uw_expr.left, "&", Literal(1 << (31 - shift)))
                                                     ~~^^~~~~~~~~~~~~~
ValueError: negative shift count
Error occurred while processing instruction: bgez $v1, .L00000270

M2C_UNK GfxRegisterBoard(void *, M2C_UNK *, M2C_UNK *); /* extern */
s32 RRM_CheckValidFault(void *);                    /* extern */
M2C_UNK add_to_inventory(M2C_UNK, M2C_UNK, M2C_UNK, M2C_UNK); /* extern */
M2C_UNK bcopy(void *, void *, u8);                  /* extern */
M2C_UNK bzero(M2C_UNK *, M2C_UNK, M2C_UNK *);       /* extern */
M2C_UNK cmn_err(M2C_UNK, M2C_UNK, void *, u32);     /* extern */
s32 copyin(u32, M2C_UNK *, s32, u32);               /* extern */
s32 copyout(u8 *, u32, M2C_UNK, s32);               /* extern */
M2C_UNK crimeBlankscreen(void *, M2C_UNK *);        /* extern */
M2C_UNK crimeFrameInfo(void *, u8 *, u32);          /* extern */
M2C_UNK crimeInitHW(M2C_UNK *, M2C_UNK *, M2C_UNK *, void *); /* extern */
M2C_UNK crimeInitInfo(M2C_UNK *, M2C_UNK *, M2C_UNK *, M2C_UNK); /* extern */
s32 crimePixelDma(void *, M2C_UNK *);               /* extern */
s32 crimeProbe(M2C_UNK *);                          /* extern */
M2C_UNK crimeRetraceCloseRN(void *);                /* extern */
M2C_UNK crimeRetraceInit(M2C_UNK *);                /* extern */
s32 crimeSetDisplayMode(void *, M2C_UNK *, s32);    /* extern */
s32 crimeSetGammaRamp(void *, M2C_UNK *);           /* extern */
s32 crimeUnSchedSwapBuf(void *, M2C_UNK, M2C_UNK *); /* extern */
s32 crime_clear_buffer(void *, void *, void *, u8 *); /* extern */
M2C_UNK crime_clearfb(M2C_UNK *, M2C_UNK *);        /* extern */
M2C_UNK crime_hli_handler(s32, s32, M2C_UNK, s32);  /* extern */
u8 crime_i2cFpProbe(M2C_UNK *, M2C_UNK, s32);       /* extern */
s32 crime_i2cProbe(M2C_UNK *, M2C_UNK *, s32, s32); /* extern */
s32 crime_i2c_cmd(void *, M2C_UNK *, u32);          /* extern */
s32 crime_i2cfp_command(void *, u8 *);              /* extern */
M2C_UNK crime_intr_disable(M2C_UNK);                /* extern */
M2C_UNK crime_intr_enable(M2C_UNK);                 /* extern */
s32 crime_load_linear_tlb(void *, void *, void *, M2C_UNK *); /* extern */
M2C_UNK crime_setvideotiming(s32, M2C_UNK *);       /* extern */
M2C_UNK crime_validate_ddc_data(M2C_UNK *, s32);    /* extern */
s32 crmAddBackTiles(M2C_UNK, u8, void *);           /* extern */
s64 crmAddZ(M2C_UNK *, u16 *, s16, s32);            /* extern */
s32 crmAllocBackbuffer(M2C_UNK *, u16, u16, u8);    /* extern */
s32 crmAllocCid(void *, u16, u16);                  /* extern */
s32 crmAllocFrameBuffer(M2C_UNK, u16, u16, u8);     /* extern */
M2C_UNK crmAllocGbeTables(void *, void *, M2C_UNK, void *); /* extern */
s32 crmAllocOverlayBuffer(M2C_UNK *, u16, u16);     /* extern */
s32 crmAllocPbufTiles(s32, s32);                    /* extern */
s32 crmAllocPbuffer(M2C_UNK *, s32, s32, s32);      /* extern */
s32 crmAllocTex(void *, M2C_UNK *, u8 *, M2C_UNK);  /* extern */
s64 crmAllocZbuffer(M2C_UNK *, s16, s16);           /* extern */
s32 crmDeallocTex(void *, u32, s32);                /* extern */
s32 crmDefineTex(void *, void *, M2C_UNK *);        /* extern */
M2C_UNK crmDestroyPbuffer(M2C_UNK *, s32);          /* extern */
s32 crmFindFreeDidTbl(void *);                      /* extern */
s32 crmFindPP(s32);                                 /* extern */
M2C_UNK crmFreeChunk(M2C_UNK *, s32, s32, s32);     /* extern */
M2C_UNK crmFreeTex(void *, s32, s64);               /* extern */
M2C_UNK crmInitGbeData(void *);                     /* extern */
M2C_UNK crmInitTp(M2C_UNK *, M2C_UNK *, M2C_UNK *, void *); /* extern */
s32 crmInvalidVideoTiming(M2C_UNK *, M2C_UNK, M2C_UNK); /* extern */
M2C_UNK crmLoadCidTlb(M2C_UNK *, M2C_UNK);          /* extern */
M2C_UNK crmLoadTexTlb(M2C_UNK *);                   /* extern */
M2C_UNK crmLoadTlbABC(void *, M2C_UNK *, s32);      /* extern */
s32 crmMapChunk(M2C_UNK, s32 *);                    /* extern */
s32 crmMapPages(void *, M2C_UNK, M2C_UNK *);        /* extern */
M2C_UNK crmRetraceCloseAllRn(s64);                  /* extern */
M2C_UNK crmSubtractBackTiles(M2C_UNK, u8, s32);     /* extern */
M2C_UNK crmSubtractZ(M2C_UNK *, u16 *, void *, s32); /* extern */
M2C_UNK crmSwapBufd(void *);                        /* extern */
s32 crmUnmapChunk(void *, M2C_UNK *, s32);          /* extern */
s32 crmUnmapPages(M2C_UNK *, M2C_UNK);              /* extern */
M2C_UNK crmValidateDrawable(void *, void *);        /* extern */
s32 crm_get_dms_tiles(M2C_UNK *, u8, M2C_UNK);      /* extern */
M2C_UNK crm_tileclassinit();                        /* extern */
s32 curthreadhandle();                              /* extern */
M2C_UNK ddv_destroy_handle(s32);                    /* extern */
u64 ddv_getaddr(M2C_UNK *);                         /* extern */
s32 ddv_invalphys_fal(s32, M2C_UNK, M2C_UNK);       /* extern */
M2C_UNK ddv_invaltlb(s32, M2C_UNK, M2C_UNK);        /* extern */
M2C_UNK fast_undma(s32, s32, s32, M2C_UNK);         /* extern */
s32 find_inventory(M2C_UNK, M2C_UNK, M2C_UNK, M2C_UNK); /* extern */
M2C_UNK flushbus(s32, s64, s32);                    /* extern */
M2C_UNK force_resched();                            /* extern */
M2C_UNK gbeBlankScreen(M2C_UNK *, M2C_UNK *, M2C_UNK *, M2C_UNK); /* extern */
M2C_UNK gbeProbe(M2C_UNK *);                        /* extern */
M2C_UNK gbeRun(M2C_UNK *, M2C_UNK *, M2C_UNK);      /* extern */
M2C_UNK gbeStop(M2C_UNK *, void *, void *, void *); /* extern */
M2C_UNK gfx_waitc_off();                            /* extern */
M2C_UNK gfx_waitc_on();                             /* extern */
M2C_UNK gfx_waitf_off();                            /* extern */
M2C_UNK gfx_waitf_on();                             /* extern */
s32 gfxdd_lookup(M2C_UNK *, M2C_UNK *);             /* extern */
s32 gfxdd_mmap(s32, M2C_UNK, s32, M2C_UNK);         /* extern */
M2C_UNK gfxdd_munmap(s32);                          /* extern */
s32 gfxdd_recycle(M2C_UNK, void *, s64, M2C_UNK);   /* extern */
void *gthread_find(s32);                            /* extern */
void *gthread_find_gfxp(s32);                       /* extern */
M2C_UNK htp_register_board(M2C_UNK *, M2C_UNK, u16, s32); /* extern */
s32 i2cfp_DMI2_BkltFuncs(M2C_UNK *, M2C_UNK, M2C_UNK, M2C_UNK); /* extern */
M2C_UNK i2cfp_DMI2_FailedEDID(M2C_UNK *, s32);      /* extern */
s32 i2cfp_DMI2_KernelEDID(M2C_UNK *, M2C_UNK *, s32); /* extern */
s32 i2cfp_DualChannelProbe(M2C_UNK *);              /* extern */
M2C_UNK i2cfp_PanelOff(M2C_UNK *);                  /* extern */
s32 in_panic_mode();                                /* extern */
M2C_UNK init_mutex(M2C_UNK *, M2C_UNK, M2C_UNK, M2C_UNK); /* extern */
M2C_UNK init_sema(M2C_UNK *, M2C_UNK, M2C_UNK, s32); /* extern */
M2C_UNK init_sv(M2C_UNK *, M2C_UNK, M2C_UNK, M2C_UNK); /* extern */
s32 is_specified(M2C_UNK);                          /* extern */
M2C_UNK kern_free(M2C_UNK *, u32, s32);             /* extern */
s64 kern_malloc(s32, u32);                          /* extern */
M2C_UNK *kvpalloc(M2C_UNK, M2C_UNK, M2C_UNK, M2C_UNK *); /* extern */
M2C_UNK kvpfree(s32, M2C_UNK);                      /* extern */
M2C_UNK mrlock_init(M2C_UNK *, M2C_UNK, M2C_UNK, M2C_UNK); /* extern */
M2C_UNK mrunlock(s32);                              /* extern */
M2C_UNK mrupdatef(s32, M2C_UNK);                    /* extern */
M2C_UNK mutex_lock(void *, M2C_UNK);                /* extern */
s32 mutex_mine(void *);                             /* extern */
M2C_UNK mutex_unlock(void *);                       /* extern */
s32 psema(s32, M2C_UNK);                            /* extern */
M2C_UNK replace_in_inventory(s32, M2C_UNK, M2C_UNK, M2C_UNK); /* extern */
s32 sema_alloc(M2C_UNK, M2C_UNK, M2C_UNK);          /* extern */
M2C_UNK sema_dealloc(s32);                          /* extern */
s32 setcrimevector(M2C_UNK *, M2C_UNK, M2C_UNK, M2C_UNK *); /* extern */
M2C_UNK spinlock_init(M2C_UNK *, M2C_UNK);          /* extern */
s32 splhi(s32, void *);                             /* extern */
M2C_UNK splx(s32);                                  /* extern */
M2C_UNK sv_signal(void *);                          /* extern */
M2C_UNK sv_wait(void *, M2C_UNK, void *, s32);      /* extern */
s32 thread_issproc(s32);                            /* extern */
s32 timeout(M2C_UNK, void *, s32, s32);             /* extern */
M2C_UNK untimeout(s32, void *);                     /* extern */
M2C_UNK us_delay(s32, u32);                         /* extern */
M2C_UNK v_mapkvsegment(M2C_UNK *, u64, s32, M2C_UNK); /* extern */
s32 valusema(s32);                                  /* extern */
M2C_UNK vsema(s32);                                 /* extern */
void crimeError(void *arg0, void *arg1);            /* static */
s32 crmAllocGfxBuffers(void *arg0);                 /* static */
void crmLoadGlobalsFromShadow(void *arg0, void *arg1); /* static */
void crmLoadNonglobalsFromShadow(void *arg0, void *arg1); /* static */
void crmRestorePP(void *arg0, s64 arg1, s64 arg2, s32 arg3); /* static */
s32 crmSavePP(void *arg0, void *arg1, void *arg2);  /* static */
void crm_destroydrawable(M2C_UNK *arg0, M2C_UNK *, M2C_UNK *, s32); /* static */
s32 crm_makecurrentpbuf(void *arg1, M2C_UNK *, s32, s32); /* static */

void crimeFifoEmptyHandler(void *arg1) {
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a2_2;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_a2;
    void *temp_v1;

    temp_a2 = M2C_FIELD(arg1, void **, 0x220);
    if (temp_a2 != (void *)2) {
        if (temp_a2 == (void *)1) {
            temp_v0 = splhi(M2C_FIELD(arg1, s32 *, 0x78), temp_a2);
            temp_a0 = M2C_FIELD(arg1, s32 *, 0x13C);
            temp_s1 = temp_v0;
            M2C_FIELD(arg1, void **, 0x220) = NULL;
            if (temp_a0 != 0) {
                untimeout(temp_a0);
                M2C_FIELD(arg1, s32 *, 0x13C) = 0;
                splx(temp_s1);
                temp_v1 = M2C_FIELD(M2C_FIELD(arg1, void **, 0x28), void **, 0x18);
                M2C_FIELD(temp_v1, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_v1, s32 *, 0x2C) - 1);
                temp_v0_2 = splhi();
                temp_a2_2 = ~0x0FE00000;
                temp_a0_2 = (*saved_reg_gp & temp_a2_2) | (*saved_reg_gp << 0x15);
                *saved_reg_gp = temp_a0_2;
                M2C_FIELD(subroutine_arg0, s32 *, 0x400) = temp_a0_2;
                flushbus(temp_a0_2, subroutine_arg0, temp_a2_2);
                splx(temp_v0_2);
                M2C_FIELD(arg1, s32 *, 0x3C) = 0;
                force_resched();
            } else {
                splx(temp_v0);
            }
        } else {
            cmn_err(5, 0, temp_a2);
        }
    } else {
        untimeout(M2C_FIELD(arg1, s32 *, 0x228), temp_a2);
        temp_s1_2 = splhi();
        sv_signal(arg1 + 0x22C);
        M2C_FIELD(arg1, void **, 0x220) = NULL;
        splx(temp_s1_2);
    }
}

void crimeEmptyWaitTimeout(void *arg0) {
    s32 temp_s1;
    s32 temp_v0;
    void *temp_a3;

    temp_v0 = splhi();
    temp_s1 = temp_v0;
    if (M2C_FIELD(arg0, s32 *, 0x220) != 0) {
        crime_intr_disable(0x19);
        M2C_FIELD(arg0, s32 *, 0x13C) = 0;
        splx(temp_s1);
        crimeError(M2C_FIELD(arg0, void **, 0x78), (void *)0x30);
        M2C_FIELD(arg0, s32 *, 0x220) = 0;
        M2C_FIELD(arg0, s32 *, 0x3C) = 0;
        temp_a3 = M2C_FIELD(M2C_FIELD(arg0, void **, 0x28), void **, 0x18);
        M2C_FIELD(temp_a3, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_a3, s32 *, 0x2C) - 1);
    } else {
        splx(temp_v0);
    }
}

void crimeFifoFullHandler(void *arg1) {
    s32 temp_v0;
    s32 temp_v0_3;
    s32 var_s1;
    s32 var_s3;
    u32 temp_a5;
    u32 temp_v0_2;
    u32 var_a1;
    void *temp_s0;
    void *temp_t1;

    temp_s0 = M2C_FIELD(arg1, void **, 0x78);
    temp_v0 = ((u32) M2C_FIELD(temp_s0, u32 *, 0x4000) >> 0x12) & 0x7F;
    if (temp_v0 >= 0x41) {
        cmn_err(0, 0x40, temp_v0 - 1, M2C_FIELD(temp_s0, u32 *, 0x400));
    }
    // Error: negative shift count
    // At instruction: bgez $v1, .L00000270
    if (M2C_ERROR()) {
        gfx_waitf_on();
        var_s1 = 0;
        var_a1 = ((u32) *saved_reg_gp >> 0x15) & 0x7F;
loop_4:
        var_s3 = var_s1 < 0x64;
        if ((u32) (((u32) M2C_FIELD(temp_s0, u32 *, 0x4000) >> 0x12) & 0x7F) >= var_a1) {
            us_delay(1, var_a1);
            var_s1 += 1;
            var_s3 = var_s1 < 0x64;
            var_a1 = ((u32) *saved_reg_gp >> 0x15) & 0x7F;
            if (var_s3 != 0) {
                goto loop_4;
            }
        }
        gfx_waitf_off();
        temp_v0_2 = *saved_reg_gp;
        if (var_s3 != 0) {
            M2C_FIELD(temp_v0_2, s32 *, 0x1C) = (s32) (M2C_FIELD(temp_v0_2, s32 *, 0x1C) + 1);
        } else {
            M2C_FIELD(temp_v0_2, s32 *, 0x18) = (s32) (M2C_FIELD(temp_v0_2, s32 *, 0x18) + 1);
            temp_v0_3 = splhi();
            temp_a5 = (*saved_reg_gp & ~0x0FE00000) | (((((u64) subroutine_arg0 >> 0x12) & 0x7F) + 1) << 0x15);
            *saved_reg_gp = temp_a5;
            M2C_FIELD(temp_s0, u32 *, 0x400) = temp_a5;
            flushbus();
            splx(temp_v0_3);
            if (M2C_FIELD(arg1, s32 *, 0x3C) != 0) {
                cmn_err(0, 0x70);
            }
            M2C_FIELD(arg1, s32 *, 0x3C) = 1;
            temp_t1 = M2C_FIELD(M2C_FIELD(arg1, void **, 0x28), void **, 0x18);
            M2C_FIELD(temp_t1, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_t1, s32 *, 0x2C) + 1);
            M2C_FIELD(arg1, s32 *, 0x48) = 1;
            force_resched();
            M2C_FIELD(arg1, s32 *, 0x220) = 1;
            M2C_FIELD(arg1, s32 *, 0x13C) = timeout(0, arg1, 0xC8);
            crime_intr_enable(0x19);
        }
    } else {
        M2C_FIELD(M2C_ERROR(/* Read from unset register $a3 */), s32 *, 0x1C) = (s32) (M2C_FIELD(M2C_ERROR(/* Read from unset register $a3 */), s32 *, 0x1C) + 1);
    }
}

s32 crimeInfo(void *arg0, u32 arg2, s64 arg3) {
    s32 var_v0;
    u32 var_s0;

    var_s0 = arg2;
    if (arg2 >= 0x1F1U) {
        var_s0 = 0x1F0;
    }
    if (copyout(M2C_FIELD(arg0, u8 **, 0x7C), var_s0) != 0) {
        var_v0 = 0xE;
    } else {
        *subroutine_arg0 = var_s0;
        var_v0 = 0;
    }
    return var_v0;
}

s32 crmNextIncarnation(void) {
    s32 temp_a0;
    s32 temp_s8;

    temp_a0 = splhi();
    temp_s8 = M2C_FIELD(saved_reg_gp, s32 *, -0x77F8) + 1;
    M2C_FIELD(saved_reg_gp, s32 *, -0x77F8) = temp_s8;
    splx(temp_a0);
    return temp_s8;
}

s32 crimeAttach(void *arg0, s64 arg1) {
    s64 sp20;
    s64 sp18;
    s32 var_v0;

    sp20 = arg1;
    var_v0 = 0x16;
    sp18 = (s64) M2C_FIELD(arg0, s32 *, 0x18);
    if (!(arg1 & 0xFFF)) {
        if (gfxdd_recycle(0, arg0, sp20, 0x86000) != 0) {
            var_v0 = 0;
        } else if (gfxdd_mmap((M2C_FIELD(arg0, s32 *, 4) & 8) != 0, 0x86000, subroutine_arg0 + sp20, 0) != 0) {
            var_v0 = 0xC;
        } else {
            M2C_FIELD(arg0, s32 *, 4) = (s32) (M2C_FIELD(arg0, s32 *, 4) & ~1);
            var_v0 = 0;
            M2C_FIELD(sp18, s32 *, 0x140) = (s32) (M2C_FIELD(sp18, s32 *, 0x140) + 1);
        }
    }
    return var_v0;
}

s32 crimeDetach(void *arg0) {
    s32 temp_at;
    void *temp_s8;

    temp_at = M2C_FIELD(arg0, s32 *, 0x1C);
    M2C_FIELD(arg0, s32 *, 0x1C) = 0;
    temp_s8 = M2C_FIELD(arg0, void **, 0x18);
    gfxdd_munmap(temp_at);
    M2C_FIELD(temp_s8, s32 *, 0x140) = (s32) (M2C_FIELD(temp_s8, s32 *, 0x140) - 1);
    return 0;
}

s32 crimeInitialize(void *arg0) {
    void *temp_s8;

    temp_s8 = M2C_FIELD(arg0, void **, 0x18);
    M2C_FIELD(temp_s8, s8 *, 0x98) = 0;
    *(s16 *)0x3C = 0;
    htp_register_board(NULL, 0, 0U, 0);
    M2C_FIELD(temp_s8, s8 *, 0x98) = 1;
    return 0;
}

s32 crimeStart(void *arg0) {
    M2C_UNK *temp_s4;
    M2C_UNK *temp_s5;
    s32 *var_s1;
    s32 var_s2;
    void *var_s0;

    temp_s4 = M2C_FIELD(arg0, M2C_UNK **, 0x18);
    temp_s5 = M2C_FIELD(temp_s4, M2C_UNK **, 0x7C);
    gbeBlankScreen(temp_s4, temp_s5, M2C_FIELD(temp_s4, M2C_UNK **, 0x80), 0);
    var_s1 = saved_reg_gp;
    var_s2 = 0;
    var_s0 = NULL;
    if (*saved_reg_gp > 0) {
loop_3:
        if (M2C_FIELD(var_s0, s16 *, 0x22) != 0) {
            if ((*var_s1 == 3) && (M2C_FIELD(var_s0, s16 *, 0x32) == 0)) {
                goto block_6;
            }
            var_s2 += 1;
            var_s0 += 8;
            var_s1 += 4;
            if (var_s2 < *saved_reg_gp) {
                goto loop_3;
            }
        } else {
            if (crime_i2cProbe(M2C_FIELD(temp_s4, M2C_UNK **, 0x80), temp_s5, var_s2) != 0) {
                crime_validate_ddc_data(temp_s5, var_s2);
            }
            if (*var_s1 != 3) {

            } else if (M2C_FIELD(var_s0, s16 *, 0x32) == 0) {
block_6:
                if (i2cfp_DMI2_KernelEDID(M2C_FIELD(temp_s4, M2C_UNK **, 0x80), temp_s5, var_s2) == 0) {
                    i2cfp_DMI2_FailedEDID(temp_s5, var_s2);
                }
            }
            var_s2 += 1;
            var_s0 += 8;
            var_s1 += 4;
            if (var_s2 < *saved_reg_gp) {
                goto loop_3;
            }
        }
    }
    M2C_FIELD(temp_s4, u8 *, 0x98) = (u8) (M2C_FIELD(temp_s4, u8 *, 0x98) | 4);
    return 0;
}

s32 crmInitialize(void *arg0, M2C_UNK *arg1) {
    M2C_UNK *temp_s1;
    s32 *temp_t3;
    s32 temp_a0;
    s32 temp_t2;
    s32 var_a1;
    s32 var_a7;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    u16 temp_v0_2;
    u32 temp_a1;
    u8 temp_v0;
    u8 var_a0;
    void *temp_a7;
    void *temp_v0_3;
    void *var_a2;
    void *var_a6;

    temp_s1 = M2C_FIELD(arg0, M2C_UNK **, 0x7C);
    gbeStop(M2C_FIELD(arg0, M2C_UNK **, 0x80), sp, sp, sp);
    if (arg1 != NULL) {
        temp_v0 = M2C_FIELD(arg1, u8 *, 0x30);
        if ((temp_v0 == 0x10) || (temp_v0 == 0x20)) {
            M2C_FIELD(temp_s1, u8 *, 0x2F) = temp_v0;
            *saved_reg_gp = (u32) temp_v0;
        }
        M2C_FIELD(temp_s1, u8 *, 0x2B) = (u8) M2C_FIELD(arg1, u8 *, 0x31);
        M2C_FIELD(temp_s1, s16 *, 0x20) = (s16) M2C_FIELD(arg1, s16 *, 0x32);
        temp_v0_2 = M2C_FIELD(arg1, u16 *, 0x34);
        M2C_FIELD(temp_s1, u16 *, 0x22) = temp_v0_2;
        if (*saved_reg_gp != 0) {
            M2C_FIELD(temp_s1, u8 *, 0x2D) = (u8) M2C_FIELD(arg1, u8 *, 0x36);
        }
        var_a2 = (void *)1;
        if (*saved_reg_gp < 0x2001U) {
            M2C_FIELD(temp_s1, u8 *, 0x2D) = 0U;
            M2C_FIELD(temp_s1, u8 *, 0x2B) = 0U;
            M2C_FIELD(temp_s1, u8 *, 0x2F) = 0x10U;
            goto block_7;
        }
        if (M2C_FIELD(temp_s1, u8 *, 0x2D) != 0) {
            M2C_FIELD(temp_s1, u16 *, 0x22) = (u16) (temp_v0_2 * 2);
            *saved_reg_gp = 1;
        } else {
block_7:
            *saved_reg_gp = 0;
        }
        var_v0_2 = M2C_FIELD(arg1, s32 *, 0);
        temp_a0 = M2C_FIELD(arg1, s32 *, 4);
        if ((var_v0_2 == 0xD) || (temp_a0 & 2)) {
            M2C_FIELD(arg1, s32 *, 0) = 9;
            var_v0_2 = 9;
            M2C_FIELD(arg1, s32 *, 4) = (s32) (temp_a0 & ~2);
        }
        if ((var_v0_2 > 0) && (var_v0_2 < 0x10)) {
            var_a7 = 1;
            var_a6 = (void *)0x30;
loop_14:
            if (M2C_FIELD(var_a6, s32 *, 0) != var_v0_2) {
                var_a7 += 1;
                var_a6 += 0x30;
                if (var_a7 >= 0x10) {
                    goto block_16;
                }
                goto loop_14;
            }
            var_v0 = 0x16;
            if (M2C_FIELD(var_a6, s16 *, 0x14) != 0) {
                M2C_FIELD(temp_s1, void **, 0x30) = var_a6;
                M2C_FIELD(temp_s1, s32 *, 0xE4) = var_a7;
                goto block_21;
            }
        } else {
block_16:
            temp_a7 = temp_s1 + 0x34;
            if (crmInvalidVideoTiming(arg1, 0x10, 1) != 0) {
                var_v0 = 0x16;
            } else {
                var_a1 = 0;
                var_v0_3 = 0xC;
                var_a2 = temp_a7;
                do {
                    var_v0_3 -= 2;
                    *(var_a1 + var_a2) = *(var_a1 + arg1);
                    temp_t3 = var_a1 + (temp_s1 + 0x38);
                    temp_t2 = *(var_a1 + (arg1 + 4));
                    var_a1 += 8;
                    *temp_t3 = temp_t2;
                } while (var_v0_3 > 0);
                M2C_FIELD(temp_s1, s32 *, 0xE4) = 0x10;
                M2C_FIELD(temp_s1, void **, 0x30) = temp_a7;
block_21:
                if (!(M2C_FIELD(arg1, s32 *, 4) & 2)) {
                    goto block_23;
                }
                cmn_err(4, 0x90, var_a2);
                var_v0 = 0x16;
            }
        }
    } else {
block_23:
        if (*saved_reg_gp != 0) {
            var_a0 = M2C_FIELD(temp_s1, u8 *, 0x2E);
        } else {
            var_a0 = crime_i2cFpProbe(M2C_FIELD(arg0, M2C_UNK **, 0x80)) & 0xFF;
            M2C_FIELD(temp_s1, u8 *, 0x2E) = var_a0;
        }
        if (var_a0 != 0x82) {
            if (var_a0 == 0x83) {
                M2C_FIELD(temp_s1, void **, 0x30) = (void *)0x1B0;
            }
        } else {
            M2C_FIELD(temp_s1, void **, 0x30) = (void *)0xC0;
        }
        if (M2C_FIELD(arg0, s32 *, 0x1D0) == 0) {
            if ((M2C_FIELD(temp_s1, u8 *, 0x2E) != 0x84) && (M2C_FIELD(temp_s1, u8 *, 0x2C) == 0)) {
                M2C_FIELD(arg0, s32 *, 0x1D0) = timeout(0, arg0, 0xBB8);
            }
        }
        temp_a1 = *saved_reg_gp;
        if (M2C_FIELD(arg0, u8 *, 0x98) & 2) {
            us_delay(temp_a1 * 0x3E8, temp_a1);
        }
        if (crmAllocGfxBuffers(arg0) == 0) {
            crmInitGbeData(arg0);
            temp_v0_3 = gthread_find_gfxp(curthreadhandle());
            if (M2C_FIELD(arg0, s32 *, 0x28) != temp_v0_3) {
                psema(M2C_FIELD(temp_v0_3, void **, 0x18) + 0x20, 0x219);
                M2C_FIELD(M2C_FIELD(temp_v0_3, void **, 0x18), void **, 0x28) = temp_v0_3;
                if (M2C_FIELD(M2C_FIELD(temp_v0_3, void **, 0x18), s32 *, 0x3C) != 0) {
                    do {
                        us_delay(2);
                    } while (M2C_FIELD(M2C_FIELD(temp_v0_3, void **, 0x18), s32 *, 0x3C) != 0);
                }
            }
            crimeInitHW(M2C_FIELD(arg0, M2C_UNK **, 0x78), M2C_FIELD(arg0, M2C_UNK **, 0x80), temp_s1, arg0);
            crmLoadTlbABC(arg0, NULL, 0);
            crmLoadTlbABC(arg0, (M2C_UNK *)0x228, 2);
            crmLoadCidTlb(M2C_FIELD(arg0, M2C_UNK **, 0x78), 0x2D0);
            var_v0 = 0;
            M2C_FIELD(arg0, u8 *, 0x98) = (u8) (M2C_FIELD(arg0, u8 *, 0x98) | 2);
        } else {
            cmn_err(4, 0xC8);
            var_v0 = 0xC;
        }
    }
    return var_v0;
}

s32 crimeDownload(void) {
    return 0;
}

s32 crimeSetNullClip(void *arg0) {
    M2C_FIELD(arg0, s32 *, 0x34) = 0;
    M2C_FIELD(arg0, s32 *, 0x24) = 0;
    M2C_FIELD(arg0, s32 *, 0x20) = -1;
    M2C_FIELD(arg0, s32 *, 0x18) = 0;
    M2C_FIELD(arg0, s32 *, 0x14) = 0;
    M2C_FIELD(arg0, s32 *, 0x10) = 0;
    M2C_FIELD(arg0, s32 *, 0xC) = -1;
    M2C_FIELD(arg0, s32 *, 8) = -1;
    M2C_FIELD(arg0, s32 *, 0x2C) = 1;
    M2C_FIELD(arg0, s32 *, 0x28) = 1;
    return 0;
}

s32 crimePositionCursor(void *arg0, s32 arg1, s32 arg2) {
    s32 var_a2;
    s32 var_v1;
    u8 temp_a5;

    var_a2 = arg2;
    M2C_FIELD(arg0, s32 *, 0x9C) = arg1;
    M2C_FIELD(arg0, s32 *, 0xA0) = var_a2;
    temp_a5 = M2C_FIELD(arg0, u8 *, 0x9B);
    if (M2C_FIELD(M2C_FIELD(arg0, void **, 0x7C), s32 *, 0x38) & 2) {
        var_v1 = var_a2 - temp_a5;
        if (var_a2 >= 0x201) {
            var_a2 -= 0x200;
            goto block_3;
        }
    } else {
block_3:
        var_v1 = var_a2 - temp_a5;
    }
    M2C_FIELD(arg0, s8 *, 0x99) = 1;
    M2C_FIELD(arg0, s32 *, 0x94) = (s32) (((arg1 - M2C_FIELD(arg0, u8 *, 0x9A)) & 0xFFF) | ((var_v1 & 0xFFF) << 0x10));
    return 0;
}

void crm_freedrawable(M2C_UNK *arg0) {
    M2C_UNK *temp_a2;

    *M2C_FIELD(arg0, M2C_UNK ***, 4) = M2C_FIELD(arg0, M2C_UNK **, 0);
    temp_a2 = M2C_FIELD(arg0, M2C_UNK **, 0);
    if (temp_a2 != NULL) {
        M2C_FIELD(temp_a2, M2C_UNK ***, 4) = (M2C_UNK **) M2C_FIELD(arg0, M2C_UNK ***, 4);
    }
    bzero(arg0, 0x6C, temp_a2);
    kern_free(arg0);
}

void crm_createdrawable(s32 arg0) {
    s64 sp10;
    s64 temp_v0;

    temp_v0 = kern_malloc(0x6C);
    sp10 = temp_v0;
    bzero((M2C_UNK *) temp_v0, 0x6C);
    M2C_FIELD(temp_v0, s32 *, 0x24) = 0x10;
    M2C_FIELD(temp_v0, s32 *, 8) = arg0;
}

M2C_UNK *crm_mapcliptodraw(s32 arg0) {
    M2C_UNK *var_v0;

    var_v0 = *(M2C_UNK **)0xCE0;
    if ((var_v0 != NULL) && (M2C_FIELD(var_v0, s32 *, 8) < arg0)) {
loop_2:
        var_v0 = *var_v0;
        if (var_v0 != NULL) {
            if (M2C_FIELD(var_v0, s32 *, 8) >= arg0) {
                goto block_4;
            }
            goto loop_2;
        }
        goto block_6;
    }
block_4:
    if ((var_v0 == NULL) || (M2C_FIELD(var_v0, s32 *, 8) != arg0)) {
block_6:
        var_v0 = NULL;
    }
    return var_v0;
}

M2C_UNK *crm_finddrawable(s32 arg0) {
    M2C_UNK *temp_a0;
    M2C_UNK *temp_v0;
    M2C_UNK *var_s0;
    M2C_UNK *var_s1;
    M2C_UNK *var_v0;

    mutex_lock(saved_reg_gp, 0x19);
    var_v0 = *(M2C_UNK **)0xCE0;
    var_s1 = NULL + 0xCE0;
    if (var_v0 != NULL) {
        var_s1 = NULL + 0xCE0;
        if (M2C_FIELD(var_v0, s32 *, 8) < arg0) {
loop_2:
            var_s1 = var_v0;
            var_v0 = *var_v0;
            if (var_v0 != NULL) {
                if (M2C_FIELD(var_v0, s32 *, 8) >= arg0) {
                    goto block_4;
                }
                goto loop_2;
            }
            goto block_8;
        }
    }
block_4:
    if ((var_v0 != NULL) && (M2C_FIELD(var_v0, s32 *, 8) == arg0)) {
        var_s0 = var_v0;
    } else {
block_8:
        temp_v0 = crm_createdrawable(arg0);
        M2C_FIELD(temp_v0, M2C_UNK **, 4) = var_s1;
        M2C_FIELD(temp_v0, M2C_UNK **, 0) = *var_s1;
        *var_s1 = temp_v0;
        temp_a0 = M2C_FIELD(temp_v0, M2C_UNK **, 0);
        var_s0 = temp_v0;
        if (temp_a0 != NULL) {
            M2C_FIELD(temp_a0, M2C_UNK **, 4) = temp_v0;
        }
    }
    mutex_unlock(saved_reg_gp);
    return var_s0;
}

void crm_unbinddrawable(M2C_UNK *arg0, s32 arg1) {
    M2C_UNK *temp_a0;
    M2C_UNK *temp_a1;
    M2C_UNK *temp_a2;
    M2C_UNK *temp_a2_2;
    M2C_UNK *var_a0_2;
    M2C_UNK *var_a1;
    M2C_UNK *var_a1_2;
    M2C_UNK *var_a1_3;
    M2C_UNK *var_a3;
    s32 temp_a3;
    s32 temp_a4;
    s32 var_a0;
    s32 var_a4;

    var_a3 = (M2C_UNK *)1;
    if (arg1 == 3) {
        var_a1 = arg0;
        var_a0 = 0;
        do {
            var_a0 += 1;
            var_a1 += 4;
            M2C_FIELD(var_a1, s32 *, -4) = 0;
        } while (var_a0 < 3);
        temp_a2 = M2C_FIELD(arg0, M2C_UNK **, 0xC);
        M2C_FIELD(temp_a2, s32 *, 0x28) = (s32) (M2C_FIELD(temp_a2, s32 *, 0x28) - 1);
        temp_a1 = M2C_FIELD(arg0, M2C_UNK **, 0x10);
        M2C_FIELD(temp_a1, M2C_UNK **, 0x28) = (M2C_UNK *) (M2C_FIELD(temp_a1, M2C_UNK **, 0x28) - 1);
        var_a1_2 = M2C_FIELD(arg0, M2C_UNK **, 0xC);
        if (M2C_FIELD(var_a1_2, s32 *, 0x28) == 0) {
            if (M2C_FIELD(var_a1_2, s32 *, 0x24) & 0x20) {
                crm_destroydrawable((M2C_UNK *) subroutine_arg0, var_a1_2, temp_a2, 1);
                var_a1_2 = (M2C_UNK *) subroutine_arg0;
            }
        }
        temp_a0 = M2C_FIELD(arg0, M2C_UNK **, 0x10);
        if (var_a1_2 != temp_a0) {
            temp_a2_2 = M2C_FIELD(temp_a0, M2C_UNK **, 0x28);
            if (temp_a2_2 == NULL) {
                temp_a3 = M2C_FIELD(temp_a0, s32 *, 0x24) & 0x20;
                if (temp_a3 != 0) {
                    crm_destroydrawable(temp_a0, var_a1_2, temp_a2_2, temp_a3);
                }
            }
        }
    } else {
        if (arg1 != 1) {
            var_a0_2 = M2C_FIELD(arg0, M2C_UNK **, 0x10);
        } else {
            var_a0_2 = M2C_FIELD(arg0, M2C_UNK **, 0xC);
        }
        M2C_FIELD(var_a0_2, s32 *, 0x28) = (s32) (M2C_FIELD(var_a0_2, s32 *, 0x28) - 1);
        var_a1_3 = arg0;
        if (M2C_FIELD(arg0, M2C_UNK **, 0xC) != M2C_FIELD(arg0, M2C_UNK **, 0x10)) {
            var_a4 = 0;
loop_14:
            var_a3 = M2C_FIELD(var_a1_3, M2C_UNK **, 0);
            temp_a4 = var_a4 + 1;
            if ((M2C_FIELD(var_a0_2, s32 *, 0x18) == var_a3) || (M2C_FIELD(var_a0_2, s32 *, 0x1C) == var_a3) || (M2C_FIELD(var_a0_2, s32 *, 0x20) == var_a3)) {
                M2C_FIELD(var_a1_3, M2C_UNK **, 0) = NULL;
            }
            if (temp_a4 < 3) {
                var_a3 = M2C_FIELD(var_a1_3, M2C_UNK **, 4);
                var_a4 = temp_a4 + 1;
                if ((M2C_FIELD(var_a0_2, s32 *, 0x18) != var_a3) && (M2C_FIELD(var_a0_2, s32 *, 0x1C) != var_a3)) {
                    if (M2C_FIELD(var_a0_2, s32 *, 0x20) == var_a3) {
                        goto block_12;
                    }
                } else {
block_12:
                    M2C_FIELD(var_a1_3, M2C_UNK **, 4) = NULL;
                }
                var_a1_3 += 8;
                if (var_a4 < 3) {
                    goto loop_14;
                }
            }
        }
        if ((M2C_FIELD(var_a0_2, s32 *, 0x24) & 0x20) && (M2C_FIELD(var_a0_2, s32 *, 0x28) == 0)) {
            crm_destroydrawable(var_a0_2, var_a1_3, var_a3);
        }
    }
}

void crimeInitSpecialDDRN(M2C_UNK *arg0) {
    M2C_UNK *temp_v0;

    temp_v0 = crm_finddrawable(0);
    M2C_FIELD(arg0, M2C_UNK **, 0x10) = temp_v0;
    M2C_FIELD(arg0, M2C_UNK **, 0xC) = temp_v0;
    M2C_FIELD(temp_v0, s32 *, 0x28) = 2;
    M2C_FIELD(M2C_FIELD(arg0, M2C_UNK **, 0xC), s32 *, 0x18) = 0;
    M2C_FIELD(arg0, M2C_UNK **, 0) = NULL;
    M2C_FIELD(M2C_FIELD(arg0, M2C_UNK **, 0xC), s32 *, 0x1C) = 0;
    M2C_FIELD(arg0, s32 *, 4) = 0;
    M2C_FIELD(M2C_FIELD(arg0, M2C_UNK **, 0xC), s32 *, 0x20) = 0;
    M2C_FIELD(arg0, s32 *, 8) = 0x228;
}

s32 crimeCreateDDRN(void *arg0, s64 arg1) {
    M2C_UNK *temp_a1;
    M2C_UNK *temp_a2;
    M2C_UNK *temp_s2;
    M2C_UNK *temp_v0;
    s32 temp_a3;
    s32 var_v0;
    s64 temp_s0;
    void *temp_a4;

    if (*(s32 *)0x10 == 0) {
        var_v0 = -1;
        if (M2C_FIELD(arg0, s32 *, 8) < 0) {
            M2C_FIELD(arg0, s32 *, 8) = 0;
        }
    } else {
        temp_s0 = kern_malloc(0x558);
        temp_s2 = kvpalloc(1, 0x20000000, 0);
        bzero((M2C_UNK *) temp_s0, 0x558);
        bzero(temp_s2, 0x288);
        M2C_FIELD(temp_s0, M2C_UNK **, 0x4C) = temp_s2;
        M2C_FIELD(temp_s2, s16 *, 0x27C) = (s16) M2C_FIELD(M2C_FIELD(M2C_FIELD(arg0, void **, 0x7C), void **, 0x30), s16 *, 8);
        temp_a2 = M2C_FIELD(temp_s0, M2C_UNK **, 0x4C);
        M2C_FIELD(temp_a2, s16 *, 0x27E) = (s16) M2C_FIELD(M2C_FIELD(M2C_FIELD(arg0, void **, 0x7C), void **, 0x30), s16 *, 0xA);
        temp_a1 = M2C_FIELD(temp_s0, M2C_UNK **, 0x4C);
        M2C_FIELD(temp_a1, s32 *, 0x280) = (s32) M2C_FIELD(M2C_FIELD(M2C_FIELD(arg0, void **, 0x7C), void **, 0x30), s32 *, 0xC);
        temp_v0 = M2C_FIELD(temp_s0, M2C_UNK **, 0x4C);
        if (M2C_FIELD(M2C_FIELD(M2C_FIELD(arg0, void **, 0x7C), void **, 0x30), s32 *, 4) & 2) {
            M2C_FIELD(temp_v0, s16 *, 0x284) = 1;
        } else {
            M2C_FIELD(temp_v0, s16 *, 0x284) = 0;
        }
        M2C_FIELD(subroutine_arg0, s32 *, 0x4C) = (s32) temp_s0;
        temp_a4 = M2C_FIELD(subroutine_arg0, void **, 0x30);
        M2C_FIELD(subroutine_arg0, M2C_UNK **, 8) = temp_s2;
        temp_a3 = M2C_FIELD(M2C_FIELD(temp_a4, void **, 8), s32 *, 4);
        if (temp_a3 == temp_a4) {
            crimeInitSpecialDDRN((M2C_UNK *) temp_s0, temp_a1, temp_a2, temp_a3);
        }
        M2C_FIELD(temp_s0, s32 *, 0x14) = (s32) M2C_FIELD(arg0, s32 *, 0x1C4);
        var_v0 = 0;
        M2C_FIELD(arg0, s32 *, 0x1C4) = (s32) temp_s0;
    }
    return var_v0;
}

void crmunpinscratch(void *arg0) {
    fast_undma(M2C_FIELD(arg0, s32 *, 0), M2C_FIELD(arg0, s32 *, 4), M2C_FIELD(arg0, s32 *, 8), 0);
}

s32 crimeDestroyDDRN(void *arg0, s64 arg1, void *arg2) {
    M2C_UNK *temp_a0;
    M2C_UNK *temp_a1;
    M2C_UNK *temp_s0;
    s32 temp_a1_2;
    s32 temp_v0;
    s32 temp_v0_2;
    void *temp_a1_3;
    void *temp_a1_4;
    void *var_a0;
    void *var_v0;

    temp_s0 = M2C_FIELD(arg2, M2C_UNK **, 0x4C);
    if (temp_s0 == NULL) {

    } else {
        crimeRetraceCloseRN(arg2);
        if (M2C_FIELD(temp_s0, s32 *, 0x30) != 0) {
            crmunpinscratch(temp_s0 + 0x24);
        }
        if (M2C_FIELD(temp_s0, s32 *, 0x40) != 0) {
            crmunpinscratch(temp_s0 + 0x34);
        }
        if (M2C_FIELD(arg2, s32 *, 8) != 0) {
            temp_a1 = temp_s0 + 0x48;
            if (*(s32 *)0x10 == temp_a1) {
                *(s32 *)0x10 = 0x5E8;
            }
            temp_a0 = M2C_FIELD(temp_s0, M2C_UNK **, 0x18);
            if (temp_a0 != NULL) {
                temp_v0 = gfxdd_lookup(temp_a0, temp_a1);
                if (M2C_FIELD(temp_s0, M2C_UNK **, 0x18) != NULL) {
                    if (temp_v0 != 0) {
                        crmUnmapPages(temp_s0 + 0x18, 1);
                    }
                }
            }
            kvpfree(M2C_FIELD(arg2, s32 *, 8), 1);
            M2C_FIELD(arg2, s32 *, 8) = 0;
        }
        if (M2C_FIELD(M2C_FIELD(subroutine_arg0, void **, 8), s32 *, 4) == subroutine_arg0) {
            if (M2C_FIELD(arg0, s32 *, 0x1CC) != 0) {
                crmUnmapPages(arg0 + 0x1CC);
            }
            if (*(s32 *)0x35C != 0) {
                crmUnmapChunk(NULL + 0x338);
            }
        }
        if (*(s32 *)0xCE0 != 0) {
            temp_v0_2 = M2C_FIELD(temp_s0, s32 *, 0x10);
            if (M2C_FIELD(temp_s0, s32 *, 0xC) != 0) {
                if (temp_v0_2 != 0) {
                    crm_unbinddrawable(temp_s0, 3);
                } else {
                    crm_unbinddrawable(temp_s0, 1);
                }
            } else if (temp_v0_2 != 0) {
                crm_unbinddrawable(temp_s0, 2);
            }
        }
        temp_a1_2 = M2C_FIELD(temp_s0, s32 *, 0x20);
        if (temp_a1_2 != 0) {
            crmFreeTex(arg0, temp_a1_2, subroutine_arg2);
            M2C_FIELD(temp_s0, s32 *, 0x20) = 0;
        }
        var_v0 = M2C_FIELD(arg0, void **, 0x1C4);
        var_a0 = NULL;
        if (var_v0 != NULL) {
loop_31:
            if (temp_s0 != var_v0) {
                temp_a1_3 = M2C_FIELD(var_v0, void **, 0x14);
                var_a0 = var_v0;
                var_v0 = temp_a1_3;
                if (temp_a1_3 == NULL) {

                } else {
                    goto loop_31;
                }
            } else {
                temp_a1_4 = M2C_FIELD(var_v0, void **, 0x14);
                if (var_a0 != NULL) {
                    M2C_FIELD(var_a0, void **, 0x14) = temp_a1_4;
                } else {
                    M2C_FIELD(arg0, void **, 0x1C4) = temp_a1_4;
                }
            }
        }
        M2C_FIELD(arg2, M2C_UNK **, 0x4C) = NULL;
        kern_free(temp_s0);
    }
    return 0;
}

void crm_destroydrawable(M2C_UNK *arg0) {
    M2C_UNK **temp_at;
    M2C_UNK **var_a3;
    M2C_UNK **var_a3_2;
    M2C_UNK *temp_a0_2;
    M2C_UNK *temp_v0_3;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_v0;
    s32 var_a0;
    void *temp_a2;
    void *temp_v0_2;

    temp_v0 = mutex_mine(saved_reg_gp);
    if (temp_v0 == 0) {
        mutex_lock(saved_reg_gp, 0x19);
    }
    temp_at = *(M2C_UNK ***)0xCE0;
    var_a3 = temp_at;
    if (temp_at != NULL) {
        var_a0 = 0;
loop_5:
        if (arg0 == var_a3) {
            var_a3_2 = NULL;
            var_a0 = 1;
        } else {
            var_a3_2 = *var_a3;
        }
        if (var_a3_2 != NULL) {
            if (arg0 == var_a3_2) {
                var_a3 = NULL;
                var_a0 = 1;
            } else {
                var_a3 = *var_a3_2;
            }
            if (var_a3 != NULL) {
                goto loop_5;
            }
        }
        if (var_a0 != 0) {
            temp_a0 = M2C_FIELD(arg0, s32 *, 0x24);
            temp_a1 = temp_a0 & 2;
            temp_v0_2 = *NULL;
            if (temp_a1 != 0) {
                crmDestroyPbuffer(arg0, temp_a1);
                crm_freedrawable(arg0);
                if (temp_v0 == 0) {
                    mutex_unlock(saved_reg_gp);
                }
            } else {
                if ((temp_a0 & 1) && (temp_v0_2 != NULL)) {
                    temp_a2 = M2C_FIELD(temp_v0_2, void **, 4);
                    if (temp_a2 != NULL) {
                        crmSubtractZ(arg0, (u16 *) (arg0 + 0x2C), temp_a2, 0);
                    }
                }
                temp_a0_2 = M2C_FIELD(arg0, M2C_UNK **, 0x14);
                if (temp_a0_2 != NULL) {
                    temp_v0_3 = M2C_FIELD(temp_a0_2, M2C_UNK **, 0x114);
                    if (temp_v0_3 != NULL) {
                        kern_free(temp_v0_3);
                    }
                    kern_free(M2C_FIELD(arg0, M2C_UNK **, 0x14));
                }
                crm_freedrawable(arg0);
                if (temp_v0 == 0) {
                    mutex_unlock(saved_reg_gp);
                }
            }
        } else {
            goto block_27;
        }
    } else {
block_27:
        mutex_unlock(saved_reg_gp);
    }
}

s32 crm_enableovl(void *arg0, void *arg1, M2C_UNK *arg2, void *arg3) {
    s32 temp_s1;
    s32 var_v0;

    if (M2C_FIELD(arg3, M2C_UNK **, 0x18) != (M2C_UNK *)0x228) {
        M2C_FIELD(arg3, M2C_UNK **, 0x18) = (M2C_UNK *)0x228;
        if (M2C_FIELD(arg2, s32 *, 0xC) == arg3) {
            M2C_FIELD(arg2, M2C_UNK **, 0) = (M2C_UNK *)0x228;
        }
        var_v0 = 0;
        if (M2C_FIELD(M2C_FIELD(arg0, void **, 0x18), s32 *, 4) == arg1) {
            if (RRM_CheckValidFault(arg0) >= 0) {
                temp_s1 = crmSavePP(M2C_FIELD(M2C_FIELD(arg0, void **, 0x18), void **, 0x78), arg2 + 0x350, arg2 + 0x150);
                crmLoadTlbABC(M2C_FIELD(arg0, void **, 0x18), M2C_FIELD(arg3, M2C_UNK **, 0x18), 0);
                var_v0 = 0;
                if (temp_s1 > 0) {
                    crmRestorePP(M2C_FIELD(M2C_FIELD(arg0, void **, 0x18), void **, 0x78), subroutine_arg0, subroutine_arg2, temp_s1);
                    goto block_7;
                }
            } else {
                var_v0 = 0xE;
            }
        }
    } else {
block_7:
        var_v0 = 0;
    }
    return var_v0;
}

s64 crm_enablesz(void *arg0, void *arg2, M2C_UNK *arg3) {
    s64 sp18;
    s64 sp10;
    M2C_UNK *temp_v0;
    M2C_UNK *var_a0;
    s16 temp_a0_2;
    s16 temp_a0_3;
    s16 temp_a1_4;
    s16 temp_v0_5;
    s16 var_a2_2;
    s32 temp_a0;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a4_2;
    s32 temp_a4_3;
    s32 temp_a4_4;
    s32 temp_s1;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v1;
    s32 var_a0_2;
    s32 var_a1_2;
    s32 var_a3;
    s32 var_a3_2;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_4;
    s64 temp_v0_2;
    s64 temp_v0_8;
    s64 var_s0;
    s64 var_v0;
    u16 *temp_a1_5;
    u16 var_a1;
    u16 var_a2;
    void *temp_a1;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_a4;
    void *temp_a7;
    void *temp_ra;
    void *temp_t9;
    void *var_a0_3;

    temp_v0 = M2C_FIELD(arg3, M2C_UNK **, 0x20);
    if (temp_v0 != NULL) {
        if (M2C_FIELD(arg2, s32 *, 0xC) == arg3) {
            M2C_FIELD(arg2, M2C_UNK **, 8) = temp_v0;
        }
        var_v0 = 0;
    } else {
        if (M2C_FIELD(arg3, s32 *, 0x24) & 2) {
            temp_v0_2 = kern_malloc(0x408);
            var_s0 = temp_v0_2;
            bzero((M2C_UNK *) temp_v0_2, 0x408);
            M2C_FIELD(var_s0, s32 *, 4) = sema_alloc(0, 1, 0xF8);
        } else {
            var_s0 = 0;
        }
        temp_t9 = M2C_FIELD(arg0, void **, 0x18);
        M2C_FIELD(temp_t9, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_t9, s32 *, 0x2C) + 1);
        if (psema(M2C_FIELD(var_s0, s32 *, 4), 0x11A) != 0) {
            temp_ra = M2C_FIELD(arg0, void **, 0x18);
            var_v0 = 4;
            M2C_FIELD(temp_ra, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_ra, s32 *, 0x2C) - 1);
        } else {
            if (M2C_FIELD(var_s0, M2C_UNK **, 0) != NULL) {
                goto block_11;
            }
            if (var_s0 == 0) {
                temp_a1 = *M2C_FIELD(arg0, void ***, 8);
                var_a2 = M2C_FIELD(temp_a1, u16 *, 0x22);
                var_a1 = M2C_FIELD(temp_a1, u16 *, 0x20);
            } else {
                var_a2 = (u16) M2C_FIELD(arg3, s16 *, 0x12);
                var_a1 = (u16) M2C_FIELD(arg3, s16 *, 0x10);
            }
            if (crmAllocZbuffer((M2C_UNK *) var_s0, (s16) var_a1, (s16) var_a2) != 0) {
                temp_a0 = M2C_FIELD(var_s0, s32 *, 4);
                if (var_s0 != 0) {
                    vsema(temp_a0);
                    if (valusema(M2C_FIELD(var_s0, s32 *, 4)) > 0) {
                        sema_dealloc(M2C_FIELD(var_s0, s32 *, 4));
                        kern_free((M2C_UNK *) var_s0);
                    }
                } else {
                    vsema(temp_a0);
                }
                temp_a4 = M2C_FIELD(arg0, void **, 0x18);
                var_v0 = subroutine_arg0;
                M2C_FIELD(temp_a4, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_a4, s32 *, 0x2C) - 1);
            } else {
block_11:
                M2C_FIELD(arg3, M2C_UNK **, 0x20) = M2C_FIELD(var_s0, M2C_UNK **, 0);
                M2C_FIELD(arg3, s32 *, 0x24) = (s32) (M2C_FIELD(arg3, s32 *, 0x24) | 1);
                var_a0 = arg3;
                if (M2C_FIELD(arg2, s32 *, 0xC) == arg3) {
                    M2C_FIELD(arg2, M2C_UNK **, 8) = M2C_FIELD(var_s0, M2C_UNK **, 0);
                    var_a0 = arg3;
                }
                var_v0_2 = 0;
loop_14:
                temp_v0_3 = var_v0_2 + 1;
                M2C_FIELD(var_a0, s16 *, 0x2C) = 0;
                temp_v0_4 = temp_v0_3 + 1;
                if (temp_v0_3 < 0x20) {
                    M2C_FIELD(var_a0, s16 *, 0x2E) = 0;
                    var_v0_2 = temp_v0_4 + 1;
                    if (temp_v0_4 < 0x20) {
                        var_a0 += 6;
                        M2C_FIELD(var_a0, s16 *, 0x2A) = 0;
                        if (var_v0_2 < 0x20) {
                            goto loop_14;
                        }
                    }
                }
                temp_a0_2 = M2C_FIELD(arg3, s16 *, 0xC);
                temp_v0_5 = M2C_FIELD(arg3, s16 *, 0x10);
                if (temp_a0_2 >= 0) {
                    temp_a1_2 = (s32) (((u32) (temp_a0_2 >> 6) >> 0x19) + temp_a0_2) >> 7;
                    if (temp_v0_5 != 0) {
                        temp_a4_2 = (temp_a0_2 + temp_v0_5) - 1;
                        var_a3 = (((s32) (((u32) (temp_a4_2 >> 6) >> 0x19) + temp_a4_2) >> 7) - temp_a1_2) + 1;
                    } else {
                        var_a3 = 0;
                    }
                    var_a2_2 = ((1 << var_a3) - 1) << temp_a1_2;
                } else {
                    temp_a1_3 = temp_a0_2 + temp_v0_5;
                    temp_v1 = temp_a1_3 - 1;
                    if (temp_a1_3 != 0) {
                        var_v0_3 = ((s32) (((u32) (temp_v1 >> 6) >> 0x19) + temp_v1) >> 7) + 1;
                    } else {
                        var_v0_3 = 0;
                    }
                    var_a2_2 = (1 << var_v0_3) - 1;
                }
                temp_a1_4 = M2C_FIELD(arg3, s16 *, 0xE);
                temp_a0_3 = M2C_FIELD(arg3, s16 *, 0x12);
                if (temp_a1_4 >= 0) {
                    var_v0_4 = (s32) (((u32) (temp_a1_4 >> 6) >> 0x19) + temp_a1_4) >> 7;
                    if (temp_a0_3 != 0) {
                        temp_a4_3 = (temp_a1_4 + temp_a0_3) - 1;
                        var_a3_2 = (((s32) (((u32) (temp_a4_3 >> 6) >> 0x19) + temp_a4_3) >> 7) - var_v0_4) + 1;
                    } else {
                        var_a3_2 = 0;
                    }
                    var_a1_2 = var_a3_2 + var_v0_4;
                    var_a0_2 = var_v0_4 * 2;
                    if (var_v0_4 < var_a1_2) {
                        goto block_25;
                    }
                } else {
                    var_a3_2 = temp_a1_4 + temp_a0_3;
                    var_v0_4 = 0;
                    if (var_a3_2 != 0) {
                        temp_a4_4 = var_a3_2 - 1;
                        var_a1_2 = ((s32) (((u32) (temp_a4_4 >> 6) >> 0x19) + temp_a4_4) >> 7) + 1;
                    } else {
                        var_a1_2 = 0;
                    }
                    var_a0_2 = 0;
                    if (var_a1_2 <= 0) {

                    } else {
block_25:
                        var_a0_3 = arg3 + var_a0_2;
loop_26:
                        temp_v0_6 = var_v0_4 + 1;
                        var_a3_2 = temp_v0_6 < var_a1_2;
                        M2C_FIELD(var_a0_3, s16 *, 0x2C) = var_a2_2;
                        temp_v0_7 = temp_v0_6 + 1;
                        if (var_a3_2 != 0) {
                            M2C_FIELD(var_a0_3, s16 *, 0x2E) = var_a2_2;
                            var_v0_4 = temp_v0_7 + 1;
                            if (temp_v0_7 < var_a1_2) {
                                M2C_FIELD(var_a0_3, s16 *, 0x30) = var_a2_2;
                                var_a0_3 += 6;
                                if (var_v0_4 < var_a1_2) {
                                    goto loop_26;
                                }
                            }
                        }
                    }
                }
                temp_a1_5 = arg3 + 0x2C;
                sp18 = (s64) temp_a1_5;
                temp_v0_8 = crmAddZ(arg3, temp_a1_5, var_a2_2, var_a3_2);
                if (temp_v0_8 != 0) {
                    bzero((M2C_UNK *) sp18, 0x40);
                    vsema(M2C_FIELD(var_s0, s32 *, 4));
                    temp_a7 = M2C_FIELD(arg0, void **, 0x18);
                    var_v0 = temp_v0_8;
                    M2C_FIELD(temp_a7, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_a7, s32 *, 0x2C) - 1);
                } else {
                    temp_a2 = arg2 + 0x150;
                    sp10 = (s64) temp_a2;
                    temp_s1 = crmSavePP(M2C_FIELD(M2C_FIELD(arg0, void **, 0x18), void **, 0x78), arg2 + 0x350, temp_a2);
                    crmLoadTlbABC(M2C_FIELD(arg0, void **, 0x18), M2C_FIELD(var_s0, M2C_UNK **, 0), 2);
                    if (temp_s1 > 0) {
                        crmRestorePP(M2C_FIELD(M2C_FIELD(arg0, void **, 0x18), void **, 0x78), subroutine_arg2, sp10, temp_s1);
                    }
                    vsema(M2C_FIELD(var_s0, s32 *, 4));
                    temp_a2_2 = M2C_FIELD(arg0, void **, 0x18);
                    var_v0 = 0;
                    M2C_FIELD(temp_a2_2, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_a2_2, s32 *, 0x2C) - 1);
                }
            }
        }
    }
    return var_v0;
}

s32 crmRecomputeSZ(void *arg0, M2C_UNK *arg1, void *arg2, s32 arg3) {
    s64 sp80;
    u16 sp40;
    M2C_UNK *var_a1_4;
    M2C_UNK *var_a7_2;
    M2C_UNK *var_s1;
    M2C_UNK *var_v0_5;
    M2C_UNK *var_v0_8;
    s16 temp_a5_4;
    s16 temp_a6;
    s16 temp_ra;
    s16 temp_s0;
    s16 temp_t9;
    s32 temp_a4;
    s32 temp_a5;
    s32 temp_a5_2;
    s32 temp_a5_3;
    s32 temp_a6_2;
    s32 temp_a6_3;
    s32 temp_a6_4;
    s32 temp_a7;
    s32 temp_at;
    s32 temp_at_2;
    s32 temp_at_3;
    s32 temp_at_4;
    s32 temp_ra_2;
    s32 temp_s2;
    s32 temp_s2_2;
    s32 temp_t0;
    s32 temp_t2;
    s32 temp_t3;
    s32 temp_t3_2;
    s32 temp_t9_2;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_6;
    s32 temp_v0_7;
    s32 temp_v0_8;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a1;
    s32 var_a1_3;
    s32 var_a1_5;
    s32 var_a3;
    s32 var_a6;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_s2;
    s32 var_s3;
    s32 var_t0;
    s32 var_t1;
    s32 var_t2;
    s32 var_t8;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    s32 var_v0_7;
    s64 temp_s3;
    s64 temp_v0_9;
    u16 *var_a0;
    u16 *var_a0_2;
    u16 *var_a0_3;
    u16 *var_a2_2;
    u16 *var_a5;
    u16 *var_a5_2;
    u16 *var_a5_3;
    u16 *var_v0_4;
    u16 *var_v0_6;
    u16 temp_a2;
    u16 temp_a4_2;
    u16 temp_ra_3;
    u16 temp_t0_2;
    u16 temp_t0_3;
    u16 temp_t2_2;
    u8 temp_s0_2;
    void *temp_t9_3;
    void *var_a1_2;
    void *var_a2;

    var_a2 = arg2;
    var_a3 = arg3;
    temp_t3 = M2C_FIELD(var_a2, s32 *, 0x14);
    temp_v0 = M2C_FIELD(var_a2, s32 *, 0xC);
    temp_t2 = M2C_FIELD(var_a2, s32 *, 0x10);
    temp_a5 = M2C_FIELD(var_a2, s32 *, 8);
    temp_a6 = M2C_FIELD(arg1, s16 *, 0xE);
    temp_ra = M2C_FIELD(arg1, s16 *, 0x12);
    temp_s0 = M2C_FIELD(arg1, s16 *, 0x10);
    temp_t9 = M2C_FIELD(arg1, s16 *, 0xC);
    var_s1 = arg1;
    if (temp_t9 >= 0) {
        temp_s2 = (s32) (((u32) (temp_t9 >> 6) >> 0x19) + temp_t9) >> 7;
        if (temp_a6 >= 0) {
            var_t0 = temp_a5 + temp_t2;
            if (temp_a5 >= 0) {
                var_a7 = temp_a5;
                var_t0 = temp_t2;
                if (temp_v0 >= 0) {
                    goto block_4;
                }
                goto block_49;
            }
            var_a7 = 0;
            if (temp_v0 < 0) {
block_49:
                var_t1 = temp_v0 + temp_t3;
                var_a1 = 0;
            } else {
block_4:
                var_a1 = temp_v0;
                var_t1 = temp_t3;
            }
            var_t8 = (s32) (((u32) (var_a7 >> 6) >> 0x19) + var_a7) >> 7;
            var_a3 = temp_s0 + temp_t9;
            if (temp_s2 == var_t8) {
                var_a3 -= 1;
                temp_v1 = (var_t0 + var_a7) - 1;
                if ((((s32) (((u32) (var_a3 >> 6) >> 0x19) + var_a3) >> 7) == ((s32) (((u32) (temp_v1 >> 6) >> 0x19) + temp_v1) >> 7)) && (((s32) (((u32) (temp_a6 >> 6) >> 0x19) + temp_a6) >> 7) == ((s32) (((u32) (var_a1 >> 6) >> 0x19) + var_a1) >> 7))) {
                    temp_v0_2 = (temp_ra + temp_a6) - 1;
                    temp_at = (var_t1 + var_a1) - 1;
                    if (((s32) (((u32) (temp_v0_2 >> 6) >> 0x19) + temp_v0_2) >> 7) == ((s32) (((u32) (temp_at >> 6) >> 0x19) + temp_at) >> 7)) {
                        goto block_9;
                    }
                }
            }
            goto block_15;
        }
        if (temp_a5 >= 0) {
            var_a7 = temp_a5;
            var_t0 = temp_t2;
            if (temp_v0 >= 0) {
                goto block_52;
            }
            goto block_74;
        }
        var_a7 = 0;
        var_t0 = temp_a5 + temp_t2;
        if (temp_v0 < 0) {
block_74:
            var_t1 = temp_v0 + temp_t3;
            var_a1 = 0;
        } else {
block_52:
            var_a1 = temp_v0;
            var_t1 = temp_t3;
        }
        var_t8 = (s32) (((u32) (var_a7 >> 6) >> 0x19) + var_a7) >> 7;
        if (temp_s2 == var_t8) {
            temp_a5_2 = (temp_s0 + temp_t9) - 1;
            temp_a4 = (var_t0 + var_a7) - 1;
            var_a3 = (s32) (((u32) (temp_a4 >> 6) >> 0x19) + temp_a4) >> 7;
            if (((s32) (((u32) (temp_a5_2 >> 6) >> 0x19) + temp_a5_2) >> 7) == var_a3) {
                temp_at_2 = (temp_ra + temp_a6) - 1;
                if (((s32) (((u32) (var_a1 >> 6) >> 0x19) + var_a1) >> 7) == 0) {
                    temp_ra_2 = (var_t1 + var_a1) - 1;
                    if (((s32) (((u32) (temp_at_2 >> 6) >> 0x19) + temp_at_2) >> 7) == ((s32) (((u32) (temp_ra_2 >> 6) >> 0x19) + temp_ra_2) >> 7)) {
                        goto block_9;
                    }
                }
            }
        }
        goto block_15;
    }
    temp_s3 = temp_s0 + temp_t9;
    sp80 = temp_s3;
    if (temp_a6 >= 0) {
        var_a7 = temp_a5;
        if (temp_a5 >= 0) {
            var_t0 = temp_t2;
            if (temp_v0 >= 0) {
                goto block_13;
            }
            goto block_72;
        }
        var_a7 = 0;
        var_t0 = temp_a5 + temp_t2;
        if (temp_v0 < 0) {
block_72:
            var_t1 = temp_v0 + temp_t3;
            var_a1 = 0;
        } else {
block_13:
            var_a1 = temp_v0;
            var_t1 = temp_t3;
        }
        var_t8 = (s32) (((u32) (var_a7 >> 6) >> 0x19) + var_a7) >> 7;
        temp_at_3 = temp_s3 - 1;
        if (var_t8 != 0) {
            goto block_15;
        }
        temp_t9_2 = (var_t0 + var_a7) - 1;
        if ((((s32) (((u32) (temp_at_3 >> 6) >> 0x19) + temp_at_3) >> 7) == ((s32) (((u32) (temp_t9_2 >> 6) >> 0x19) + temp_t9_2) >> 7)) && (((s32) (((u32) (temp_a6 >> 6) >> 0x19) + temp_a6) >> 7) == ((s32) (((u32) (var_a1 >> 6) >> 0x19) + var_a1) >> 7))) {
            temp_v1_2 = (temp_ra + temp_a6) - 1;
            temp_v0_3 = (var_t1 + var_a1) - 1;
            if (((s32) (((u32) (temp_v1_2 >> 6) >> 0x19) + temp_v1_2) >> 7) == ((s32) (((u32) (temp_v0_3 >> 6) >> 0x19) + temp_v0_3) >> 7)) {
                goto block_9;
            }
        }
        goto block_15;
    }
    var_t0 = temp_t2;
    if (temp_a5 >= 0) {
        var_a7 = temp_a5;
        if (temp_v0 >= 0) {
            goto block_77;
        }
        goto block_92;
    }
    var_t0 = temp_a5 + temp_t2;
    var_a7 = 0;
    if (temp_v0 < 0) {
block_92:
        var_t1 = temp_v0 + temp_t3;
        var_a1 = 0;
    } else {
block_77:
        var_t1 = temp_t3;
        var_a1 = temp_v0;
    }
    var_t8 = (s32) (((u32) (var_a7 >> 6) >> 0x19) + var_a7) >> 7;
    if ((var_t8 == 0) && (temp_at_4 = (var_t0 + var_a7) - 1, temp_v0_4 = sp80 - 1, (((s32) (((u32) (temp_v0_4 >> 6) >> 0x19) + temp_v0_4) >> 7) == ((s32) (((u32) (temp_at_4 >> 6) >> 0x19) + temp_at_4) >> 7))) && (temp_a6_2 = (temp_ra + temp_a6) - 1, (((s32) (((u32) (var_a1 >> 6) >> 0x19) + var_a1) >> 7) == 0)) && (temp_a5_3 = (var_t1 + var_a1) - 1, var_a3 = (s32) (((u32) (temp_a6_2 >> 6) >> 0x19) + temp_a6_2) >> 7, (var_a3 == ((s32) (((u32) (temp_a5_3 >> 6) >> 0x19) + temp_a5_3) >> 7)))) {
block_9:
        var_v0 = 0;
    } else {
block_15:
        temp_t9_3 = M2C_FIELD(var_s1, void **, 0x20);
        temp_s0_2 = M2C_FIELD(temp_t9_3, u8 *, 0x19);
        temp_a6_3 = temp_s0_2 - 1;
        var_a5 = sp;
        if (temp_a6_3 >= 0) {
            var_v0_2 = 0;
loop_17:
            temp_v0_5 = var_v0_2 + 1;
            M2C_FIELD(var_a5, u16 *, 0) = 0;
            temp_v0_6 = temp_v0_5 + 1;
            if (temp_a6_3 >= temp_v0_5) {
                M2C_FIELD(var_a5, s16 *, 2) = 0;
                var_v0_2 = temp_v0_6 + 1;
                if (temp_a6_3 >= temp_v0_6) {
                    var_a5 += 6;
                    M2C_FIELD(var_a5, s16 *, -2) = 0;
                    if (temp_a6_3 >= var_v0_2) {
                        goto loop_17;
                    }
                }
            }
        }
        var_s2 = (s32) temp_s0_2 < 1;
        if (temp_t2 > 0) {
            var_s2 = (s32) temp_s0_2 < 1;
            if (temp_t3 > 0) {
                if (var_t0 != 0) {
                    temp_t3_2 = (var_t0 + var_a7) - 1;
                    var_t2 = (((s32) (((u32) (temp_t3_2 >> 6) >> 0x19) + temp_t3_2) >> 7) - var_t8) + 1;
                } else {
                    var_t2 = 0;
                }
                var_v0_3 = (s32) (((u32) (var_a1 >> 6) >> 0x19) + var_a1) >> 7;
                if (var_t1 != 0) {
                    temp_t0 = (var_t1 + var_a1) - 1;
                    temp_a7 = (s32) (((u32) (temp_t0 >> 6) >> 0x19) + temp_t0) >> 7;
                    temp_a6_4 = temp_a7 + 1;
                    if ((temp_a7 - var_v0_3) >= 0) {
                        var_a1_2 = (var_v0_3 * 2) + sp;
                        temp_a5_4 = (((1 << var_t2) - 1) << var_t8) & ((1 << M2C_FIELD(temp_t9_3, u8 *, 0x18)) - 1);
loop_27:
                        temp_v0_7 = var_v0_3 + 1;
                        M2C_FIELD(var_a1_2, s16 *, 0) = temp_a5_4;
                        temp_v0_8 = temp_v0_7 + 1;
                        if (temp_v0_7 < temp_a6_4) {
                            M2C_FIELD(var_a1_2, s16 *, 2) = temp_a5_4;
                            var_v0_3 = temp_v0_8 + 1;
                            if (temp_v0_8 < temp_a6_4) {
                                M2C_FIELD(var_a1_2, s16 *, 4) = temp_a5_4;
                                var_a1_2 += 6;
                                if (var_v0_3 < temp_a6_4) {
                                    goto loop_27;
                                }
                            }
                        }
                    }
                }
                var_s2 = (s32) temp_s0_2 < 1;
            }
        }
        temp_s2_2 = var_s2 ^ 1;
        if (var_s2 == 0) {
            var_a6 = 0;
            var_a7_2 = var_s1;
            var_v0_4 = &sp40;
            var_a5_2 = sp;
            do {
                var_a7_2 += 2;
                var_a6 += 1;
                temp_ra_3 = *var_a5_2;
                var_a5_2 += 2;
                var_v0_4 += 2;
                M2C_FIELD(var_v0_4, s16 *, -2) = (s16) (M2C_FIELD(var_a7_2, u16 *, 0x2A) & ~temp_ra_3);
            } while (var_a6 < (s32) temp_s0_2);
        }
        if (M2C_FIELD(M2C_FIELD(M2C_FIELD(arg0, void **, 0x7C), void **, 0x30), s32 *, 4) & 2) {
            temp_v0_9 = (s64) ((M2C_FIELD(var_s1, s16 *, 0xE) - M2C_FIELD(var_a2, s32 *, 0xC)) << 0x30) >> 0x30;
            if (M2C_FIELD(var_s1, s16 *, 0xC) == M2C_FIELD(var_a2, s32 *, 8)) {
                var_a2 = (void *)0x200;
                var_a3 = -0x200;
                if ((temp_v0_9 == 0x200) || (temp_v0_9 == -0x200)) {
                    var_s3 = 1;
                } else {
                    goto block_40;
                }
            } else {
block_40:
                crmSubtractZ(var_s1, &sp40, var_a2, var_a3);
                goto block_41;
            }
        } else {
            crmSubtractZ(var_s1, &sp40, (void *) var_a3);
block_41:
            var_s3 = 0;
        }
        var_a6_2 = 0;
        if (temp_s2_2 != 0) {
            var_a5_3 = &sp40;
            var_v0_5 = var_s1;
            var_a2_2 = sp;
            do {
                var_a2_2 += 2;
                var_a6_2 += 1;
                temp_t0_2 = M2C_FIELD(var_v0_5, u16 *, 0x2C);
                var_v0_5 += 2;
                var_a5_3 += 2;
                M2C_FIELD(var_a5_3, s16 *, -2) = (s16) (M2C_FIELD(var_a2_2, u16 *, -2) & ~temp_t0_2);
            } while (var_a6_2 < (s32) temp_s0_2);
        }
        if (psema(M2C_FIELD(M2C_FIELD(M2C_FIELD(var_s1, void **, 0x20), void **, 0x1C), s32 *, 4), 0x11A) != 0) {
            var_v0 = 4;
        } else if (crmAddZ(var_s1, &sp40) != 0) {
            vsema(M2C_FIELD(M2C_FIELD(M2C_FIELD(var_s1, void **, 0x20), void **, 0x1C), s32 *, 4));
            var_a1_3 = 0;
            if (temp_s2_2 != 0) {
                var_v0_6 = &sp40;
                var_a0 = sp;
                do {
                    var_a0 += 2;
                    var_a1_3 += 1;
                    temp_a4_2 = *var_v0_6;
                    var_v0_6 += 2;
                    var_s1 += 2;
                    M2C_FIELD(var_s1, s16 *, 0x2A) = (s16) (M2C_FIELD(var_a0, u16 *, -2) & ~temp_a4_2);
                } while (var_a1_3 < (s32) temp_s0_2);
            }
            var_v0 = 0xC;
        } else {
            if (var_s3 != 0) {
                var_v0_7 = 0;
                if (temp_s2_2 != 0) {
                    var_a1_4 = var_s1;
                    var_a0_2 = sp;
loop_68:
                    temp_v0_10 = var_v0_7 + 1;
                    M2C_FIELD(var_a1_4, u16 *, 0x2C) = (u16) (M2C_FIELD(var_a0_2, u16 *, 0) | M2C_FIELD(var_a1_4, u16 *, 0x2C));
                    if (temp_v0_10 < (s32) temp_s0_2) {
                        temp_t2_2 = M2C_FIELD(var_a1_4, u16 *, 0x2E);
                        var_v0_7 = temp_v0_10 + 1;
                        temp_t0_3 = M2C_FIELD(var_a0_2, u16 *, 2);
                        var_a1_4 += 4;
                        var_a0_2 += 4;
                        M2C_FIELD(var_a1_4, s16 *, 0x2A) = (s16) (temp_t0_3 | temp_t2_2);
                        if (var_v0_7 < (s32) temp_s0_2) {
                            goto loop_68;
                        }
                    }
                }
            } else {
                var_a1_5 = 0;
                if (temp_s2_2 != 0) {
                    var_a0_3 = sp;
                    var_v0_8 = var_s1;
                    do {
                        var_a1_5 += 1;
                        var_v0_8 += 2;
                        temp_a2 = *var_a0_3;
                        var_a0_3 += 2;
                        M2C_FIELD(var_v0_8, u16 *, 0x2A) = temp_a2;
                    } while (var_a1_5 < (s32) temp_s0_2);
                }
            }
            vsema(M2C_FIELD(M2C_FIELD(M2C_FIELD(var_s1, void **, 0x20), void **, 0x1C), s32 *, 4));
            var_v0 = 0;
        }
    }
    return var_v0;
}

s32 crm_changedrawables(void *arg0, s32 arg1, s32 arg2) {
    M2C_UNK *temp_a3;
    M2C_UNK *temp_a5;
    M2C_UNK *temp_a5_2;
    M2C_UNK *temp_s0;
    M2C_UNK *temp_v0;
    M2C_UNK *temp_v0_2;
    M2C_UNK *temp_v0_3;
    M2C_UNK *temp_v0_4;
    M2C_UNK *temp_v0_6;
    M2C_UNK *temp_v0_7;
    M2C_UNK *var_a5;
    s32 temp_a0;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_s3;
    s32 temp_v0_5;
    s32 var_a1;
    s32 var_s1;
    s32 var_s1_2;
    s32 var_v0;

    var_a1 = arg1;
    temp_s0 = M2C_FIELD(arg0, M2C_UNK **, 0x4C);
    var_a5 = M2C_FIELD(temp_s0, M2C_UNK **, 0xC);
    temp_s3 = var_a1;
    temp_v0 = M2C_FIELD(temp_s0, M2C_UNK **, 0x10);
    if (var_a5 != NULL) {
        if (M2C_FIELD(var_a5, s32 *, 8) != var_a1) {
            var_s1 = 1;
            if ((temp_v0 != NULL) && (M2C_FIELD(temp_v0, s32 *, 8) != arg2)) {
                var_s1_2 = 1;
                goto block_5;
            }
            goto block_6;
        }
        if (temp_v0 != NULL) {
            var_s1_2 = 0;
            if (M2C_FIELD(temp_v0, s32 *, 8) != arg2) {
                goto block_5;
            }
        }
    } else if (temp_v0 != NULL) {
        var_s1_2 = 0;
        if (M2C_FIELD(temp_v0, s32 *, 8) != arg2) {
block_5:
            var_s1 = var_s1_2 | 2;
            if (var_s1 != 0) {
block_6:
                crm_unbinddrawable(temp_s0, var_s1);
                var_a5 = NULL;
                if (var_s1 & 1) {
                    M2C_FIELD(temp_s0, M2C_UNK **, 0xC) = NULL;
                } else {
                    var_a5 = M2C_FIELD(temp_s0, M2C_UNK **, 0xC);
                }
                var_a1 = var_s1 & 2;
                if (var_a1 != 0) {
                    M2C_FIELD(temp_s0, M2C_UNK **, 0x10) = NULL;
                }
            }
        }
    }
    if (var_a5 == NULL) {
        temp_v0_2 = crm_finddrawable(temp_s3, var_a1);
        M2C_FIELD(temp_s0, M2C_UNK **, 0xC) = temp_v0_2;
        M2C_FIELD(temp_v0_2, s32 *, 0x28) = (s32) (M2C_FIELD(temp_v0_2, s32 *, 0x28) + 1);
    }
    temp_v0_3 = M2C_FIELD(temp_s0, M2C_UNK **, 0x10);
    if (temp_s3 == arg2) {
        if (temp_v0_3 == NULL) {
            temp_a3 = M2C_FIELD(temp_s0, M2C_UNK **, 0xC);
            M2C_FIELD(temp_s0, M2C_UNK **, 0x10) = temp_a3;
            M2C_FIELD(temp_a3, s32 *, 0x28) = (s32) (M2C_FIELD(temp_a3, s32 *, 0x28) + 1);
        }
    } else if (temp_v0_3 == NULL) {
        temp_v0_4 = crm_finddrawable(arg2);
        M2C_FIELD(temp_s0, M2C_UNK **, 0x10) = temp_v0_4;
        M2C_FIELD(temp_v0_4, s32 *, 0x28) = (s32) (M2C_FIELD(temp_v0_4, s32 *, 0x28) + 1);
    }
    temp_a5 = M2C_FIELD(temp_s0, M2C_UNK **, 0xC);
    temp_v0_5 = M2C_FIELD(temp_a5, s32 *, 0x24);
    temp_a3_2 = temp_v0_5 & 0x10;
    if (temp_a3_2 != 0) {
        temp_a2 = temp_v0_5 & ~0x10;
        M2C_FIELD(temp_a5, s32 *, 0x24) = temp_a2;
        temp_a5_2 = M2C_FIELD(temp_s0, M2C_UNK **, 0xC);
        if (M2C_FIELD(temp_a5_2, s32 *, 0x24) & 2) {
            var_v0 = crm_makecurrentpbuf(arg0, temp_a5_2, temp_a2, temp_a3_2);
            if (var_v0 != 0) {

            } else {
                goto block_20;
            }
        } else {
            M2C_FIELD(temp_a5_2, s32 *, 0x18) = 0;
            goto block_20;
        }
    } else {
block_20:
        temp_v0_6 = M2C_FIELD(temp_s0, M2C_UNK **, 0x10);
        temp_a0 = M2C_FIELD(temp_v0_6, s32 *, 0x24);
        temp_a2_2 = temp_a0 & 0x10;
        if (temp_a2_2 != 0) {
            M2C_FIELD(temp_v0_6, s32 *, 0x24) = (s32) (temp_a0 & ~0x10);
            temp_v0_7 = M2C_FIELD(temp_s0, M2C_UNK **, 0x10);
            temp_a3_3 = M2C_FIELD(temp_v0_7, s32 *, 0x24) & 2;
            if (temp_a3_3 != 0) {
                var_v0 = crm_makecurrentpbuf(arg0, temp_v0_7, temp_a2_2, temp_a3_3);
                if (var_v0 != 0) {

                } else {
                    goto block_25;
                }
            } else {
                M2C_FIELD(temp_v0_7, s32 *, 0x18) = 0;
                goto block_25;
            }
        } else {
block_25:
            var_v0 = 0;
        }
    }
    return var_v0;
}

s32 crimeValidateClip(void *arg0, void *arg1, s64 arg2, void *arg3) {
    M2C_UNK **temp_s2;
    M2C_UNK **var_s0;
    M2C_UNK *temp_a1_2;
    M2C_UNK *temp_s6;
    M2C_UNK *temp_v0;
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_a3_3;
    s32 temp_s5;
    s32 temp_s8;
    s32 temp_t1;
    s32 temp_t9;
    s32 temp_v0_3;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_a1;
    s32 var_a3;
    s32 var_a6_2;
    s32 var_a7;
    s32 var_a7_2;
    s32 var_s1;
    s32 var_s4;
    s32 var_s5;
    s32 var_t0;
    s32 var_t1;
    s32 var_t3;
    s32 var_t8;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    void *temp_s3;
    void *temp_s4;
    void *temp_s6_2;
    void *temp_s8_2;
    void *temp_v0_2;
    void *temp_v0_4;
    void *var_a6;
    void *var_t2;

    temp_s3 = M2C_FIELD(arg1, void **, 8);
    temp_s2 = M2C_FIELD(arg1, M2C_UNK ***, 0x4C);
    if (arg2 != 0) {
        var_s5 = M2C_FIELD(M2C_FIELD(arg1, void **, 0x54), s32 *, 4);
        var_s4 = M2C_FIELD(M2C_FIELD(arg1, void **, 0x50), s32 *, 4);
    } else {
        var_s5 = M2C_FIELD(arg1, s32 *, 0x14);
        var_s4 = M2C_FIELD(arg1, s32 *, 0x10);
    }
    temp_v0 = M2C_FIELD(temp_s2, M2C_UNK **, 0xC);
    if ((temp_v0 != NULL) && (M2C_FIELD(temp_v0, s32 *, 8) == var_s4)) {
        temp_v0_2 = M2C_FIELD(temp_s2, void **, 0x10);
        if ((temp_v0_2 != NULL) && (M2C_FIELD(temp_v0_2, s32 *, 8) == var_s5)) {
            goto block_7;
        }
    }
    if (crm_changedrawables(arg1, var_s4, var_s5) != 0) {
        var_v0 = -1;
    } else {
block_7:
        temp_a0 = M2C_FIELD(arg3, s32 *, 8);
        temp_v0_3 = M2C_FIELD(arg3, s32 *, 0xC);
        var_a3 = M2C_FIELD(arg3, s32 *, 0x18);
        var_a6 = M2C_FIELD(arg3, void **, 0x1C);
        temp_s8 = ((temp_v0_3 - 0x1000) & 0xFFFF) | ((temp_a0 - 0x1000) << 0x10);
        if (var_a3 > 0) {
            var_t2 = temp_s3;
            if (var_a3 < 6) {
                var_t0 = 0x21;
                var_a0 = 0x21 << 0;
                var_a7 = 1;
loop_17:
                temp_a1 = M2C_FIELD(var_a6, s32 *, 0);
                temp_t1 = M2C_FIELD(var_a6, s32 *, 8);
                temp_t9 = M2C_FIELD(var_a6, s32 *, 0xC);
                var_a6 += 0x10;
                var_t0 |= var_a0;
                temp_a3 = M2C_FIELD(var_a6, s32 *, -0xC);
                var_v0_2 = temp_a1;
                if (temp_a1 < 0) {
                    var_t8 = temp_t1 + temp_a1;
                    var_v0_2 = 0;
                } else {
                    var_t8 = temp_t1;
                }
                var_t1 = temp_a3;
                if (temp_a3 >= 0) {
                    var_t3 = temp_t9;
                } else {
                    var_t3 = temp_t9 + temp_a3;
                    var_t1 = 0;
                }
                M2C_FIELD(var_t2, s64 *, 0x20) = (s64) ((var_t3 + var_t1) | ((var_t8 + var_v0_2) << 0x10) | (((s64) var_t1 << 0x20) | ((s64) var_v0_2 << 0x30)));
                var_a3 = M2C_FIELD(arg3, s32 *, 0x18);
                var_t2 += 8;
                var_a0 = 0x21 << var_a7;
                var_a7 += 1;
                if (var_a7 < var_a3) {
                    goto loop_17;
                }
                if (var_a3 != 0) {
                    goto block_21;
                }
                goto block_39;
            }
            goto block_38;
        }
        var_a1 = temp_a0;
        if (var_a3 == 0) {
            temp_a3_2 = M2C_FIELD(arg3, s32 *, 0x10);
            if (temp_a0 >= 0) {
                var_a6_2 = temp_a3_2;
            } else {
                var_a6_2 = temp_a3_2 + temp_a0;
                var_a1 = 0;
            }
            var_a0_2 = temp_v0_3;
            temp_a3_3 = M2C_FIELD(arg3, s32 *, 0x14);
            if (temp_v0_3 >= 0) {
                var_a7_2 = temp_a3_3;
            } else {
                var_a7_2 = temp_a3_3 + temp_v0_3;
                var_a0_2 = 0;
            }
            M2C_FIELD(temp_s3, s64 *, 0x20) = (s64) ((var_a7_2 + var_a0_2) | ((var_a6_2 + var_a1) << 0x10) | (((s64) var_a0_2 << 0x20) | ((s64) var_a1 << 0x30)));
            var_a3 = M2C_FIELD(arg3, s32 *, 0x18);
        }
block_38:
        var_t0 = 0x21;
        if (var_a3 == 0) {
block_39:
            var_v0_3 = var_t0 | 0x800;
            if (M2C_FIELD(arg3, s32 *, 0x24) != 0) {
                var_a3 = M2C_FIELD(arg3, s32 *, 0x20);
                if (var_a3 == 1) {
                    var_v0_3 |= 0x400;
                }
            } else {
                goto block_21;
            }
        } else {
block_21:
            var_v0_3 = var_t0;
        }
        M2C_FIELD(temp_s3, s32 *, 0x58) = temp_s8;
        M2C_FIELD(temp_s3, s32 *, 0x10) = var_v0_3;
        temp_s6 = M2C_FIELD(temp_s2, M2C_UNK **, 0xC);
        if ((M2C_FIELD(temp_s6, s32 *, 0x24) & 1) && (crmRecomputeSZ(M2C_FIELD(arg0, void **, 0x18), temp_s6, arg3, var_a3) != 0)) {
            var_v0 = -1;
        } else {
            M2C_FIELD(temp_s6, s16 *, 0xC) = (s16) M2C_FIELD(arg3, s32 *, 8);
            M2C_FIELD(temp_s6, s16 *, 0xE) = (s16) M2C_FIELD(arg3, s32 *, 0xC);
            M2C_FIELD(temp_s6, s16 *, 0x10) = (s16) M2C_FIELD(arg3, s32 *, 0x10);
            M2C_FIELD(temp_s6, s16 *, 0x12) = (s16) M2C_FIELD(arg3, s32 *, 0x14);
            temp_v0_4 = M2C_FIELD(arg1, void **, 0x54);
            M2C_FIELD(arg1, s32 *, 0x58) = (s32) M2C_FIELD(M2C_FIELD(arg1, void **, 0x50), s32 *, 8);
            M2C_FIELD(arg1, s32 *, 0x5C) = (s32) M2C_FIELD(temp_v0_4, s32 *, 8);
            if (var_s4 == var_s5) {
                M2C_FIELD(temp_s3, s32 *, 0x50) = temp_s8;
            } else {
                M2C_FIELD(temp_s3, s32 *, 0x50) = (s32) (((M2C_FIELD(temp_v0_4, s32 *, 0x4C) - 0x1000) & 0xFFFF) | ((M2C_FIELD(temp_v0_4, s32 *, 0x48) - 0x1000) << 0x10));
            }
            var_v0 = 0;
            if (subroutine_arg2 != 0) {
                temp_s4 = M2C_FIELD(arg0, void **, 0x18);
                temp_s8_2 = temp_s2 + 0x150;
                temp_s6_2 = M2C_FIELD(temp_s4, void **, 0x78);
                temp_s5 = crmSavePP(temp_s6_2, temp_s2 + 0x350, temp_s8_2);
                var_s0 = temp_s2;
                var_s1 = 0;
loop_26:
                temp_a1_2 = *var_s0;
                if (temp_a1_2 == NULL) {
                    var_s1 += 1;
                    var_s0 += 4;
                    if (var_s1 < 3) {
                        goto loop_26;
                    }
                } else {
                    crmLoadTlbABC(temp_s4, temp_a1_2, var_s1);
                    var_s1 += 1;
                    var_s0 += 4;
                    if (var_s1 < 3) {
                        goto loop_26;
                    }
                }
                M2C_FIELD(temp_s6_2, s32 *, 0x2010) = (s32) M2C_FIELD(temp_s3, s32 *, 0x10);
                M2C_FIELD(temp_s6_2, s64 *, 0x2020) = (s64) M2C_FIELD(temp_s3, s64 *, 0x20);
                M2C_FIELD(temp_s6_2, s64 *, 0x2028) = (s64) M2C_FIELD(temp_s3, s64 *, 0x28);
                M2C_FIELD(temp_s6_2, s64 *, 0x2030) = (s64) M2C_FIELD(temp_s3, s64 *, 0x30);
                M2C_FIELD(temp_s6_2, s64 *, 0x2038) = (s64) M2C_FIELD(temp_s3, s64 *, 0x38);
                M2C_FIELD(temp_s6_2, s64 *, 0x2040) = (s64) M2C_FIELD(temp_s3, s64 *, 0x40);
                M2C_FIELD(temp_s6_2, s32 *, 0x2050) = (s32) M2C_FIELD(temp_s3, s32 *, 0x50);
                M2C_FIELD(temp_s6_2, s32 *, 0x2058) = (s32) M2C_FIELD(temp_s3, s32 *, 0x58);
                M2C_FIELD(temp_s6_2, s32 *, 0x4008) = 0;
                if (temp_s5 > 0) {
                    crmRestorePP(temp_s6_2, subroutine_arg0, (s64) temp_s8_2, temp_s5);
                }
                var_v0 = 0;
            }
        }
    }
    return var_v0;
}

s32 crimeValidateDDClip(void *arg0, M2C_UNK *arg1) {
    M2C_UNK *temp_a0;
    M2C_UNK *temp_a0_2;
    M2C_UNK *temp_a5_2;
    M2C_UNK *temp_v0_2;
    M2C_UNK *temp_v0_3;
    M2C_UNK *temp_v0_4;
    M2C_UNK *var_a5;
    M2C_UNK *var_s1;
    s32 temp_a2_2;
    s32 temp_a2_4;
    s32 temp_a2_5;
    s32 temp_v0;
    s32 var_a0;
    u32 temp_a1;
    u32 temp_a1_2;
    u32 temp_a1_3;
    u32 temp_a1_4;
    u32 temp_a4;
    u32 temp_a5;
    u8 temp_a2;
    u8 temp_a2_3;
    void *temp_v1;

    temp_v0 = M2C_FIELD(arg1, s32 *, 4);
    if (temp_v0 != 0) {
        if ((temp_v0 < 0) || (temp_v0 >= 0x20)) {
            var_a0 = 0x16;
        } else {
            temp_a1 = temp_v0 * 4;
            temp_v1 = M2C_FIELD(arg0, s32 *, 0x18) + temp_a1;
            var_s1 = M2C_FIELD(temp_v1, M2C_UNK **, 0xB8);
            M2C_FIELD(temp_v1, M2C_UNK **, 0xB8) = NULL;
            if (var_s1 == NULL) {
                temp_v0_2 = kern_malloc(0x118, temp_a1);
                var_s1 = temp_v0_2;
                bzero(temp_v0_2, 0x118);
                temp_a5 = M2C_FIELD(arg1, u32 *, 0xC);
                M2C_FIELD(var_s1, u32 *, 0x10) = temp_a5;
                if (temp_a5 != 0) {
                    M2C_FIELD(var_s1, s32 *, 0x114) = kern_malloc(M2C_FIELD(arg1, u32 *, 0xC) * 8);
                }
            }
            temp_a2 = M2C_FIELD(arg1, u8 *, 8);
            M2C_FIELD(var_s1, u8 *, 8) = temp_a2;
            if (temp_a2 != 0) {
                bcopy(arg1 + 0x14, var_s1 + 0x14, M2C_FIELD(arg1, u8 *, 8));
            }
            temp_a1_2 = M2C_FIELD(arg1, u32 *, 0xC);
            if ((u32) M2C_FIELD(var_s1, u32 *, 0x10) < temp_a1_2) {
                temp_a0 = M2C_FIELD(var_s1, M2C_UNK **, 0x114);
                if (temp_a0 != NULL) {
                    kern_free(temp_a0, temp_a1_2);
                }
                M2C_FIELD(var_s1, M2C_UNK **, 0x114) = kern_malloc(M2C_FIELD(arg1, u32 *, 0xC) * 8, M2C_FIELD(arg1, u32 *, 0xC));
                M2C_FIELD(var_s1, u32 *, 0x10) = (u32) M2C_FIELD(arg1, u32 *, 0xC);
            }
            M2C_FIELD(var_s1, u32 *, 0xC) = M2C_FIELD(arg1, u32 *, 0xC);
            temp_a2_2 = M2C_FIELD(arg1, u32 *, 0xC) * 8;
            if ((temp_a2_2 > 0) && (copyin(M2C_FIELD(arg1, u32 *, 0x114), M2C_FIELD(var_s1, M2C_UNK **, 0x114), temp_a2_2) != 0)) {
                kern_free(M2C_FIELD(var_s1, M2C_UNK **, 0x114));
                if (var_s1 != (M2C_UNK *)-0x14) {
                    kern_free(var_s1 + 0x14);
                }
                kern_free(var_s1);
                var_a0 = 0xE;
            } else {
                var_a0 = 0;
                M2C_FIELD(subroutine_arg0, M2C_UNK **, 0xB8) = var_s1;
            }
        }
    } else {
        temp_v0_3 = crm_finddrawable(M2C_FIELD(arg1, s32 *, 0));
        temp_a1_3 = M2C_FIELD(temp_v0_3, s32 *, 0x24) & 2;
        var_a0 = 0x16;
        if (temp_a1_3 != 0) {

        } else {
            var_a5 = M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14);
            if (var_a5 == NULL) {
                temp_v0_4 = kern_malloc(0x118, temp_a1_3);
                M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14) = temp_v0_4;
                bzero(temp_v0_4, 0x118);
                temp_a4 = M2C_FIELD(arg1, u32 *, 0xC);
                M2C_FIELD(M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14), u32 *, 0x10) = temp_a4;
                if (temp_a4 != 0) {
                    M2C_FIELD(M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14), M2C_UNK **, 0x114) = kern_malloc(M2C_FIELD(arg1, u32 *, 0xC) * 8);
                }
                var_a5 = M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14);
            }
            temp_a2_3 = M2C_FIELD(arg1, u8 *, 8);
            M2C_FIELD(var_a5, u8 *, 8) = temp_a2_3;
            if (temp_a2_3 != 0) {
                bcopy(arg1 + 0x14, M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14) + 0x14, M2C_FIELD(arg1, u8 *, 8));
            }
            temp_a5_2 = M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14);
            temp_a1_4 = M2C_FIELD(arg1, u32 *, 0xC);
            temp_a2_4 = (u32) M2C_FIELD(temp_a5_2, u32 *, 0x10) < temp_a1_4;
            if (temp_a2_4 != 0) {
                temp_a0_2 = M2C_FIELD(temp_a5_2, M2C_UNK **, 0x114);
                if (temp_a0_2 != NULL) {
                    kern_free(temp_a0_2, temp_a1_4, temp_a2_4);
                }
                M2C_FIELD(M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14), M2C_UNK **, 0x114) = kern_malloc(M2C_FIELD(arg1, u32 *, 0xC) * 8, M2C_FIELD(arg1, u32 *, 0xC));
                M2C_FIELD(M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14), u32 *, 0x10) = (u32) M2C_FIELD(arg1, u32 *, 0xC);
            }
            M2C_FIELD(M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14), u32 *, 0xC) = M2C_FIELD(arg1, u32 *, 0xC);
            temp_a2_5 = M2C_FIELD(arg1, u32 *, 0xC) * 8;
            var_a0 = 0;
            if ((temp_a2_5 > 0) && (var_a0 = 0, (copyin(M2C_FIELD(arg1, u32 *, 0x114), M2C_FIELD(M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14), M2C_UNK **, 0x114), temp_a2_5) != 0))) {
                var_a0 = 0xE;
                M2C_FIELD(M2C_FIELD(temp_v0_3, M2C_UNK **, 0x14), s32 *, 0xC) = 0;
            } else {
                M2C_FIELD(temp_v0_3, s32 *, 0x1C) = 0;
            }
        }
    }
    return var_a0;
}

s32 crimeUpdateBackTiles(void *arg0, s64 arg1, M2C_UNK *arg2) {
    s64 sp10;
    s32 temp_s3;
    s32 temp_v0;
    s32 var_v0;
    u8 temp_a1_2;
    u8 temp_a1_3;
    void *temp_a1;
    void *temp_at;
    void *temp_s0;
    void *temp_s1;
    void *temp_t9;

    sp10 = arg1;
    if ((M2C_FIELD(arg2, u8 *, 1) != 0) || (M2C_FIELD(arg2, u8 *, 0) != 0)) {
        temp_s0 = M2C_FIELD(arg0, void **, 0x18);
        temp_s3 = temp_s0 + 0x1E4;
        mrupdatef(temp_s3, 0);
        if (RRM_CheckValidFault(M2C_FIELD(temp_s0, void **, 0)) != 0) {
            mrunlock(temp_s3);
            var_v0 = 4;
        } else {
            temp_a1 = M2C_FIELD(M2C_FIELD(temp_s0, void **, 0x28), void **, 0x18);
            M2C_FIELD(temp_a1, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_a1, s32 *, 0x2C) + 1);
            temp_a1_2 = M2C_FIELD(arg2, u8 *, 1);
            if (temp_a1_2 != 0) {
                crmSubtractBackTiles(0, temp_a1_2, (arg2 - temp_a1_2) + 0x102);
            }
            temp_a1_3 = M2C_FIELD(arg2, u8 *, 0);
            if ((temp_a1_3 != 0) && (crmAddBackTiles(0, temp_a1_3, arg2 + 2) != 0)) {
                mrunlock(temp_s3);
                temp_t9 = M2C_FIELD(M2C_FIELD(temp_s0, void **, 0x28), void **, 0x18);
                var_v0 = 0xC;
                M2C_FIELD(temp_t9, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_t9, s32 *, 0x2C) - 1);
            } else {
                temp_at = M2C_FIELD(M2C_FIELD(temp_s0, void **, 0x28), void **, 0x18);
                M2C_FIELD(temp_at, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_at, s32 *, 0x2C) - 1);
                mrunlock(temp_s3);
                temp_s1 = M2C_FIELD(sp10, void **, 0x4C);
                temp_v0 = crmSavePP(M2C_FIELD(temp_s0, void **, 0x78), (void *) (temp_s1 + 0x350), (void *) (temp_s1 + 0x150));
                M2C_FIELD(temp_s1, s32 *, 0x48) = temp_v0;
                crmLoadTlbABC(temp_s0, NULL, 1);
                if (temp_v0 > 0) {
                    crmRestorePP(M2C_FIELD(temp_s0, void **, 0x78), subroutine_arg0, subroutine_arg2, temp_v0);
                }
                if (*(s32 *)4 != 0) {
                    M2C_FIELD(temp_s1, M2C_UNK32 *, 4) = 0;
                } else {
                    M2C_FIELD(temp_s1, M2C_UNK32 *, 4) = 0;
                }
                goto block_13;
            }
        }
    } else {
block_13:
        var_v0 = 0;
    }
    return var_v0;
}

s32 crimeInvalTLB(void *arg0) {
    ddv_invaltlb(M2C_FIELD(arg0, s32 *, 0x1C), 0, -1);
    return 0;
}

s32 crimeMapGfx(void *arg0, s64 arg1) {
    u64 sp28;
    M2C_UNK *temp_s2;
    u64 temp_a1;
    u64 temp_v0;
    void *temp_s1;

    temp_s2 = M2C_FIELD(arg0, M2C_UNK **, 0x1C);
    temp_s1 = M2C_FIELD(arg0, void **, 0x18);
    temp_v0 = ddv_getaddr(temp_s2);
    sp28 = temp_v0;
    v_mapkvsegment(temp_s2, temp_v0, M2C_FIELD(temp_s1, s32 *, 0x78), 5);
    temp_a1 = sp28 + 0x5000;
    if (M2C_FIELD(M2C_FIELD(arg0, void **, 8), s32 *, 4) != arg0) {
        if ((u64) subroutine_arg0 >= temp_a1) {
            return -1;
        }
        goto block_4;
    }
    v_mapkvsegment(temp_s2, temp_a1, M2C_FIELD(temp_s1, s32 *, 0x80), 0x81);
block_4:
    M2C_FIELD(arg0, s32 *, 4) = (s32) (M2C_FIELD(arg0, s32 *, 4) | 1);
    return 0;
}

s32 crimeUnMapGfx(void *arg0) {
    void *temp_v0;

    M2C_FIELD(arg0, s32 *, 4) = (s32) (M2C_FIELD(arg0, s32 *, 4) & ~1);
    if (M2C_FIELD(arg0, s32 *, 0x1C) != 0) {
        temp_v0 = gthread_find(curthreadhandle());
        if ((M2C_FIELD(temp_v0, s32 *, 4) & 4) && (thread_issproc(M2C_FIELD(temp_v0, s32 *, 0)) != 0)) {

        } else if (ddv_invalphys_fal(M2C_FIELD(arg0, s32 *, 0x1C), 0, -1) == 2) {

        } else {
            crimeInvalTLB(arg0, 2);
            M2C_FIELD(arg0, s32 *, 0x38) = 1;
        }
    }
    return 0;
}

void crimeFifoWaitTimeout(void *arg0) {
    s32 temp_s8;

    cmn_err(4, 0x100);
    crime_intr_disable(0x19);
    M2C_FIELD(arg0, s32 *, 0x224) = 1;
    temp_s8 = splhi();
    sv_signal(arg0 + 0x22C);
    splx(temp_s8);
}

s32 crmFifoWait(void *arg0, s32 arg1, s32 arg2) {
    s32 temp_a0;
    s32 temp_lo;
    s32 temp_s0;
    s32 temp_t8;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 var_s0;
    s32 var_s5;
    s32 var_v0;
    s64 temp_a1;
    u32 temp_s2;
    void *temp_ra;
    void *temp_s3;
    void *temp_v1;

    var_s5 = arg2;
    temp_s3 = *(s16 *)0xC;
    temp_s2 = *saved_reg_gp - arg1;
    if (*(s16 *)0x3C != 0) {
        var_s5 = arg2;
    } else if (arg2 >= 0x65) {
        var_s5 = 0x64;
    }
    var_s0 = var_s5;
    if (var_s5 <= 0) {
        goto block_8;
    }
loop_5:
    var_v0 = 0;
    if (temp_s2 < (u32) (((u32) M2C_FIELD(arg0, u32 *, 0x4000) >> 0x12) & 0x7F)) {
        us_delay(1);
        var_s0 -= 1;
        if (var_s0 > 0) {
            goto loop_5;
        }
block_8:
        if (subroutine_arg0 != 0) {
            var_v0 = 1;
        } else {
            var_v0 = 1;
            if (var_s5 >= arg2) {
                M2C_FIELD(temp_s3, s32 *, 0x224) = 1;
            } else {
                temp_v1 = M2C_FIELD(M2C_FIELD(temp_s3, void **, 0x28), void **, 0x18);
                M2C_FIELD(temp_v1, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_v1, s32 *, 0x2C) + 1);
                M2C_FIELD(temp_s3, s32 *, 0x220) = 2;
                M2C_FIELD(temp_s3, s32 *, 0x224) = 0;
                temp_v0 = splhi(1);
                temp_a1 = temp_s2 << 0xE;
                temp_a0 = (0xFFE03FFF & *saved_reg_gp) | temp_a1;
                *saved_reg_gp = temp_a0;
                M2C_FIELD(arg0, s32 *, 0x400) = temp_a0;
                flushbus(temp_a0, temp_a1);
                splx(temp_v0);
                temp_lo = (s32) (arg2 - var_s5) / 1000000;
                M2C_TRAP_IF(0xF4240 == 0);
                M2C_FIELD(temp_s3, s32 *, 0x228) = timeout(0, temp_s3, (temp_lo * 0x64) + 0x64, temp_lo);
                temp_s0 = splhi();
                crime_intr_enable(0x19);
                sv_wait(temp_s3 + 0x22C, 0x19, temp_s3 + 0x21C, temp_s0);
                temp_v0_2 = splhi();
                temp_t8 = (0xFFE03FFF & *saved_reg_gp) | (*saved_reg_gp << 0xE);
                *saved_reg_gp = temp_t8;
                M2C_FIELD(arg0, s32 *, 0x400) = temp_t8;
                flushbus();
                splx(temp_v0_2);
                temp_ra = M2C_FIELD(M2C_FIELD(temp_s3, void **, 0x28), void **, 0x18);
                M2C_FIELD(temp_ra, s32 *, 0x2C) = (s32) (M2C_FIELD(temp_ra, s32 *, 0x2C) - 1);
                var_v0 = M2C_FIELD(temp_s3, s32 *, 0x224);
                M2C_FIELD(temp_s3, s32 *, 0x228) = 0;
            }
            if (var_v0 != 0) {
                cmn_err(4, 0x118, (void *) arg2);
                var_v0 = M2C_FIELD(temp_s3, s32 *, 0x224);
            }
        }
    }
    return var_v0;
}

s32 crmIdleWait(void *arg0, s64 arg1) {
    s64 var_s0;
    u32 temp_a4;

    unksp8 = arg1;
    var_s0 = arg1;
    if (arg1 > 0) {
loop_2:
        temp_a4 = M2C_FIELD(arg0, u32 *, 0x4000);
        if (!(0x10000000 & temp_a4) || ((temp_a4 >> 0x12) & 0x7F)) {
            us_delay(1);
            var_s0 -= 1;
            if (var_s0 > 0) {
                goto loop_2;
            }
        }
    }
    if (var_s0 == 0) {
        cmn_err(4, 0x140, (void *) unksp8);
    }
    return var_s0 == 0;
}

s32 crimePcxSwap(void *arg0, void *arg1, void *arg2) {
    s32 temp_a3;
    s32 var_v0;
    void *temp_s0;
    void *temp_s2;
    void *temp_s2_2;
    void *temp_s3;
    void *temp_s3_2;
    void *temp_v0;
    void *var_a3;

    temp_s0 = M2C_FIELD(arg0, void **, 0x78);
    gfx_waitc_on();
    if (arg1 == NULL) {
        goto block_1;
    }
    temp_s2 = M2C_FIELD(arg1, void **, 0x4C);
    temp_s3 = M2C_FIELD(arg1, void **, 8);
    M2C_FIELD(temp_s2, s32 *, 0x48) = crmSavePP(temp_s0, temp_s2 + 0x350, temp_s2 + 0x150);
    if (M2C_FIELD(temp_s3, s32 *, 0x1F0) & 1) {
        if (crmIdleWait(temp_s0, 0xF4240) != 0) {
            crimeError(temp_s0, (void *)0x168);
            goto block_12;
        }
        M2C_FIELD(temp_s3, s32 *, 0xC4) = (s32) M2C_FIELD(temp_s0, s32 *, 0x20C4);
        goto block_1;
    }
block_1:
    M2C_FIELD(temp_s0, s32 *, 0x4008) = 0;
    if (arg2 != NULL) {
        temp_s2_2 = M2C_FIELD(arg2, void **, 0x4C);
        temp_s3_2 = M2C_FIELD(arg2, void **, 8);
        if (crmIdleWait(temp_s0, 0xF4240) != 0) {
            crimeError(temp_s0, (void *)0x178);
            goto block_12;
        }
        *M2C_FIELD(arg0, s32 **, 0x90) = temp_s2_2 + 0x48;
        if (M2C_FIELD(arg2, u16 *, 4) & 2) {
            temp_v0 = M2C_FIELD(arg2, void **, 0x50);
            var_a3 = temp_v0 + 0x40;
            if (((M2C_FIELD(temp_v0, s32 *, 8) == M2C_FIELD(arg2, s32 *, 0x58)) && (var_a3 = temp_v0 + 0x40, (M2C_FIELD(M2C_FIELD(arg2, void **, 0x54), s32 *, 8) == M2C_FIELD(arg2, s32 *, 0x5C)))) || (crimeValidateClip(M2C_FIELD(arg2, void **, 0x30), arg2, 0, var_a3) >= 0)) {
                goto block_9;
            }
            var_v0 = -1;
        } else {
block_9:
            crmValidateDrawable(arg0, temp_s2_2);
            crmLoadGlobalsFromShadow(temp_s0, temp_s3_2);
            crmLoadNonglobalsFromShadow(temp_s0, temp_s3_2);
            M2C_FIELD(temp_s0, s32 *, 0x4008) = 0;
            temp_a3 = M2C_FIELD(temp_s2_2, s32 *, 0x48);
            if (temp_a3 != 0) {
                crmRestorePP(temp_s0, (s64) (temp_s2_2 + 0x350), (s64) (temp_s2_2 + 0x150), temp_a3);
            }
            goto block_11;
        }
    } else {
block_11:
        gfx_waitc_off();
block_12:
        var_v0 = 0;
    }
    return var_v0;
}

s32 crmSavePP(void *arg0, s64 arg1, s64 arg2) {
    s64 sp10;
    s32 temp_a3;
    s32 temp_at;
    s32 temp_v0;
    s32 var_a5;
    s32 var_s0;
    s32 var_s0_2;
    s32 var_s1;
    s64 var_a1;
    s64 var_a2;
    u32 temp_s0;
    void *var_a3;

    temp_s0 = M2C_FIELD(arg0, u32 *, 0x4000);
    sp10 = arg2;
    var_s0 = temp_s0 & 0x3F;
    temp_at = ((temp_s0 >> 6) & 0x3F) - var_s0;
    var_s1 = temp_at;
    if (temp_at != 0) {
        goto block_1;
    }
    temp_v0 = crmFindPP(var_s0);
    var_s0 = temp_v0;
    var_s1 = subroutine_arg0 - temp_v0;
    if (temp_v0 == -1) {
        var_s1 = 0;
    } else {
block_1:
        if (var_s1 < 0) {
            var_s1 += 0x40;
        }
        if (crmFifoWait(arg0, *saved_reg_gp, 0xF4240) != 0) {
            crimeError(arg0, (void *)0x188);
            var_s1 = 0;
        } else {
            var_a5 = 0;
            if (var_s1 > 0) {
                var_a2 = sp10;
                var_a1 = subroutine_arg2;
                var_s0_2 = var_s0 + 1;
                var_a3 = arg0 + (var_s0 * 8);
                do {
                    *var_a1 = (s64) M2C_FIELD(var_a3, s64 *, 0x200);
                    M2C_FIELD(var_a2, s32 *, 0) = (s32) M2C_FIELD(var_a3, s32 *, 0);
                    var_a1 += 8;
                    var_a5 += 1;
                    M2C_FIELD(var_a2, s32 *, 4) = (s32) M2C_FIELD(var_a3, s32 *, 4);
                    if (var_s0_2 >= 0x40) {
                        var_s0_2 = 0;
                    }
                    temp_a3 = var_s0_2 * 8;
                    var_s0_2 += 1;
                    var_a2 += 8;
                    var_a3 = arg0 + temp_a3;
                } while (var_a5 < var_s1);
            }
            M2C_FIELD(arg0, s32 *, 0x4008) = 0;
        }
    }
    return var_s1;
}

void crmRestorePP(void *arg0, u64 *arg1, void *arg2, s32 arg3) {
    s32 temp_a1;
    s32 temp_a2;
    s32 var_s2;
    u64 *var_s1;
    u64 temp_a3;
    void *var_s0;

    var_s2 = 0;
    var_s0 = arg2;
    if (arg3 > 0) {
        var_s1 = arg1;
loop_5:
        temp_a3 = *var_s1;
        temp_a1 = (temp_a3 >> 0x2B) & 3;
        temp_a2 = arg0 + (((u64) ((((temp_a3 >> 0x20) & 0xFF) * 8) | (((temp_a3 >> 0x28) & 7) << 0xC)) >> 2) * 4);
        if (temp_a1 != 2) {
            if (temp_a1 == 1) {
                *(0xA0000000 | (temp_a2 + 4)) = (s32) M2C_FIELD(var_s0, s32 *, 4);
            } else if (temp_a1 == 3) {
                *(0xA0000000 | temp_a2) = (s64) M2C_FIELD(var_s0, s64 *, 0);
            } else {
                cmn_err(0, 0x190, (void *) temp_a2, (u32) temp_a3);
            }
        } else {
            *(0xA0000000 | temp_a2) = (s32) M2C_FIELD(var_s0, s64 *, 0);
        }
        var_s2 += 1;
        var_s1 += 8;
        var_s0 += 8;
        if (var_s2 < arg3) {
            goto loop_5;
        }
    }
}

void crmLoadNonglobalsFromShadow(void *arg0, void *arg1) {
    s32 temp_a5;

    temp_a5 = M2C_FIELD(arg1, s32 *, 0x1F0);
    M2C_FIELD(arg0, s32 *, 0x2060) = (s32) M2C_FIELD(arg1, s32 *, 0x60);
    M2C_FIELD(arg0, s32 *, 0x20A0) = (s32) M2C_FIELD(arg1, s32 *, 0xA0);
    M2C_FIELD(arg0, s32 *, 0x20A8) = (s32) M2C_FIELD(arg1, s32 *, 0xA8);
    M2C_FIELD(arg0, s32 *, 0x20AC) = (s32) M2C_FIELD(arg1, s32 *, 0xAC);
    M2C_FIELD(arg0, s32 *, 0x20B0) = (s32) M2C_FIELD(arg1, s32 *, 0xB0);
    M2C_FIELD(arg0, s32 *, 0x20B4) = (s32) M2C_FIELD(arg1, s32 *, 0xB4);
    M2C_FIELD(arg0, s32 *, 0x20D0) = (s32) M2C_FIELD(arg1, s32 *, 0xD0);
    if (temp_a5 & 1) {
        M2C_FIELD(arg0, s32 *, 0x20C0) = (s32) M2C_FIELD(arg1, s32 *, 0xC0);
        M2C_FIELD(arg0, s32 *, 0x20C4) = (s32) M2C_FIELD(arg1, s32 *, 0xC4);
    }
    if (temp_a5 & 4) {
        M2C_FIELD(arg0, s32 *, 0x3010) = (s32) M2C_FIELD(arg1, s32 *, 0x210);
        M2C_FIELD(arg0, s32 *, 0x3030) = (s32) M2C_FIELD(arg1, s32 *, 0x230);
        M2C_FIELD(arg0, s32 *, 0x3038) = (s32) M2C_FIELD(arg1, s32 *, 0x238);
    }
    if (temp_a5 & 0x80) {
        M2C_FIELD(arg0, s32 *, 0x2070) = (s32) M2C_FIELD(arg1, s32 *, 0x70);
        M2C_FIELD(arg0, s32 *, 0x2074) = (s32) M2C_FIELD(arg1, s32 *, 0x74);
        M2C_FIELD(arg0, s32 *, 0x2078) = (s32) M2C_FIELD(arg1, s32 *, 0x78);
    } else {
        M2C_FIELD(arg0, s32 *, 0x2080) = (s32) M2C_FIELD(arg1, s32 *, 0x80);
        M2C_FIELD(arg0, s32 *, 0x2084) = (s32) M2C_FIELD(arg1, s32 *, 0x84);
        M2C_FIELD(arg0, s32 *, 0x2088) = (s32) M2C_FIELD(arg1, s32 *, 0x88);
        M2C_FIELD(arg0, s32 *, 0x208C) = (s32) M2C_FIELD(arg1, s32 *, 0x8C);
        M2C_FIELD(arg0, s32 *, 0x2090) = (s32) M2C_FIELD(arg1, s32 *, 0x90);
        M2C_FIELD(arg0, s32 *, 0x2094) = (s32) M2C_FIELD(arg1, s32 *, 0x94);
        if (temp_a5 & 0x40) {
            M2C_FIELD(arg0, s32 *, 0x2178) = (s32) M2C_FIELD(arg1, s32 *, 0x178);
            M2C_FIELD(arg0, s32 *, 0x2180) = (s32) M2C_FIELD(arg1, s32 *, 0x180);
            M2C_FIELD(arg0, s32 *, 0x2188) = (s32) M2C_FIELD(arg1, s32 *, 0x188);
            M2C_FIELD(arg0, s32 *, 0x2190) = (s32) M2C_FIELD(arg1, s32 *, 0x190);
            M2C_FIELD(arg0, s32 *, 0x2194) = (s32) M2C_FIELD(arg1, s32 *, 0x194);
        }
        if (temp_a5 & 0x20) {
            M2C_FIELD(arg0, s64 *, 0x21C8) = (s64) M2C_FIELD(arg1, s64 *, 0x1C8);
            M2C_FIELD(arg0, s64 *, 0x21D0) = (s64) M2C_FIELD(arg1, s64 *, 0x1D0);
            M2C_FIELD(arg0, s64 *, 0x21D8) = (s64) M2C_FIELD(arg1, s64 *, 0x1D8);
        }
        if (temp_a5 & 0x10) {
            M2C_FIELD(arg0, s32 *, 0x20E0) = (s32) M2C_FIELD(arg1, s32 *, 0xE0);
            M2C_FIELD(arg0, s32 *, 0x20E4) = (s32) M2C_FIELD(arg1, s32 *, 0xE4);
            M2C_FIELD(arg0, s32 *, 0x20E8) = (s32) M2C_FIELD(arg1, s32 *, 0xE8);
            M2C_FIELD(arg0, s32 *, 0x20EC) = (s32) M2C_FIELD(arg1, s32 *, 0xEC);
            M2C_FIELD(arg0, s32 *, 0x20F0) = (s32) M2C_FIELD(arg1, s32 *, 0xF0);
            M2C_FIELD(arg0, s32 *, 0x20F4) = (s32) M2C_FIELD(arg1, s32 *, 0xF4);
            M2C_FIELD(arg0, s32 *, 0x20F8) = (s32) M2C_FIELD(arg1, s32 *, 0xF8);
            M2C_FIELD(arg0, s32 *, 0x20FC) = (s32) M2C_FIELD(arg1, s32 *, 0xFC);
            M2C_FIELD(arg0, s32 *, 0x2100) = (s32) M2C_FIELD(arg1, s32 *, 0x100);
            M2C_FIELD(arg0, s32 *, 0x2104) = (s32) M2C_FIELD(arg1, s32 *, 0x104);
            M2C_FIELD(arg0, s32 *, 0x2108) = (s32) M2C_FIELD(arg1, s32 *, 0x108);
            M2C_FIELD(arg0, s32 *, 0x210C) = (s32) M2C_FIELD(arg1, s32 *, 0x10C);
        }
        if (temp_a5 & 8) {
            M2C_FIELD(arg0, s64 *, 0x2120) = (s64) M2C_FIELD(arg1, s64 *, 0x120);
            M2C_FIELD(arg0, s64 *, 0x2128) = (s64) M2C_FIELD(arg1, s64 *, 0x128);
            M2C_FIELD(arg0, s32 *, 0x2130) = (s32) M2C_FIELD(arg1, s32 *, 0x130);
            M2C_FIELD(arg0, s32 *, 0x2134) = (s32) M2C_FIELD(arg1, s32 *, 0x134);
            M2C_FIELD(arg0, s64 *, 0x2138) = (s64) M2C_FIELD(arg1, s64 *, 0x138);
            M2C_FIELD(arg0, s64 *, 0x2140) = (s64) M2C_FIELD(arg1, s64 *, 0x140);
            M2C_FIELD(arg0, s64 *, 0x2148) = (s64) M2C_FIELD(arg1, s64 *, 0x148);
            M2C_FIELD(arg0, s64 *, 0x2150) = (s64) M2C_FIELD(arg1, s64 *, 0x150);
            M2C_FIELD(arg0, s32 *, 0x2158) = (s32) M2C_FIELD(arg1, s32 *, 0x158);
            M2C_FIELD(arg0, s32 *, 0x215C) = (s32) M2C_FIELD(arg1, s32 *, 0x15C);
        }
    }
}

void crmLoadGlobalsFromShadow(void *arg0, void *arg1) {
    s32 temp_a4;

    temp_a4 = M2C_FIELD(arg1, s32 *, 0x1F0);
    M2C_FIELD(arg0, s32 *, 0x2000) = (s32) M2C_FIELD(arg1, s32 *, 0);
    M2C_FIELD(arg0, s32 *, 0x2008) = (s32) M2C_FIELD(arg1, s32 *, 8);
    M2C_FIELD(arg0, s32 *, 0x2010) = (s32) M2C_FIELD(arg1, s32 *, 0x10);
    M2C_FIELD(arg0, s32 *, 0x2018) = (s32) M2C_FIELD(arg1, s32 *, 0x18);
    M2C_FIELD(arg0, s64 *, 0x2020) = (s64) M2C_FIELD(arg1, s64 *, 0x20);
    M2C_FIELD(arg0, s64 *, 0x2028) = (s64) M2C_FIELD(arg1, s64 *, 0x28);
    M2C_FIELD(arg0, s64 *, 0x2030) = (s64) M2C_FIELD(arg1, s64 *, 0x30);
    M2C_FIELD(arg0, s64 *, 0x2038) = (s64) M2C_FIELD(arg1, s64 *, 0x38);
    M2C_FIELD(arg0, s64 *, 0x2040) = (s64) M2C_FIELD(arg1, s64 *, 0x40);
    M2C_FIELD(arg0, s32 *, 0x2050) = (s32) M2C_FIELD(arg1, s32 *, 0x50);
    M2C_FIELD(arg0, s32 *, 0x2058) = (s32) M2C_FIELD(arg1, s32 *, 0x58);
    M2C_FIELD(arg0, s32 *, 0x21B0) = (s32) M2C_FIELD(arg1, s32 *, 0x1B0);
    M2C_FIELD(arg0, s32 *, 0x21B8) = (s32) M2C_FIELD(arg1, s32 *, 0x1B8);
    M2C_FIELD(arg0, s32 *, 0x20D8) = (s32) M2C_FIELD(arg1, s32 *, 0xD8);
    if (temp_a4 & 4) {
        M2C_FIELD(arg0, s32 *, 0x3000) = (s32) M2C_FIELD(arg1, s32 *, 0x200);
        M2C_FIELD(arg0, s32 *, 0x3008) = (s32) M2C_FIELD(arg1, s32 *, 0x208);
        M2C_FIELD(arg0, s32 *, 0x3018) = (s32) M2C_FIELD(arg1, s32 *, 0x218);
        M2C_FIELD(arg0, s32 *, 0x3020) = (s32) M2C_FIELD(arg1, s32 *, 0x220);
        M2C_FIELD(arg0, s32 *, 0x3028) = (s32) M2C_FIELD(arg1, s32 *, 0x228);
        M2C_FIELD(arg0, s32 *, 0x3040) = (s32) M2C_FIELD(arg1, s32 *, 0x240);
        M2C_FIELD(arg0, s32 *, 0x3048) = (s32) M2C_FIELD(arg1, s32 *, 0x248);
    }
    if (temp_a4 & 0x80) {

    } else {
        M2C_FIELD(arg0, s64 *, 0x2048) = (s64) M2C_FIELD(arg1, s64 *, 0x48);
        if (temp_a4 & 0x40) {
            M2C_FIELD(arg0, s32 *, 0x2170) = (s32) M2C_FIELD(arg1, s32 *, 0x170);
            M2C_FIELD(arg0, s32 *, 0x21A0) = (s32) M2C_FIELD(arg1, s32 *, 0x1A0);
            M2C_FIELD(arg0, s32 *, 0x21A8) = (s32) M2C_FIELD(arg1, s32 *, 0x1A8);
            M2C_FIELD(arg0, s32 *, 0x2198) = (s32) M2C_FIELD(arg1, s32 *, 0x198);
        }
        if (temp_a4 & 0x20) {
            M2C_FIELD(arg0, s32 *, 0x21C0) = (s32) M2C_FIELD(arg1, s32 *, 0x1C0);
            M2C_FIELD(arg0, s32 *, 0x21E0) = (s32) M2C_FIELD(arg1, s32 *, 0x1E0);
            M2C_FIELD(arg0, s32 *, 0x21E8) = (s32) M2C_FIELD(arg1, s32 *, 0x1E8);
        }
        if (temp_a4 & 8) {
            M2C_FIELD(arg0, s32 *, 0x2110) = (s32) M2C_FIELD(arg1, s32 *, 0x110);
            M2C_FIELD(arg0, s64 *, 0x2118) = (s64) M2C_FIELD(arg1, s64 *, 0x118);
            M2C_FIELD(arg0, s32 *, 0x2160) = (s32) M2C_FIELD(arg1, s32 *, 0x160);
            M2C_FIELD(arg0, s32 *, 0x2168) = (s32) M2C_FIELD(arg1, s32 *, 0x168);
        }
    }
}

void restore_linear(s32 arg0, void *arg1, s32 arg2) {
    s32 temp_a5;
    s32 temp_t2;
    s32 var_a2;
    s32 var_a4;
    u32 var_a6;

    var_a2 = arg2;
    if (var_a2 != 0) {
        var_a4 = 0;
        var_a6 = 0U >> 0x1F;
loop_2:
        temp_a5 = 3 << var_a4;
        if (temp_a5 & var_a2) {
            temp_t2 = ((s32) (var_a6 + var_a4) >> 1) * 8;
            var_a2 &= ~temp_a5;
            *(0xA0000000 | (temp_t2 + arg0)) = (s64) *(temp_t2 + arg1);
        }
        var_a4 += 2;
        if (var_a4 < 0x20) {
            var_a6 = (u32) var_a4 >> 0x1F;
            if (var_a2 != 0) {
                goto loop_2;
            }
        }
    }
}

void crimeRestore(s32 arg0, s32 arg1, u32 *arg2, s32 arg3) {
    s64 sp8;
    s64 sp0;
    s32 temp_s2;
    s32 temp_t8;
    s32 temp_t8_2;
    s32 temp_t9;
    s32 var_t0;
    u32 *var_a2;
    void *temp_s0;
    void *temp_s1;

    var_a2 = arg2;
    temp_s1 = *(void **)0x10;
    temp_s2 = M2C_ERROR(/* Read from unset register $a6 */);
    temp_s0 = *NULL;
    if (arg3 > 0) {
        var_t0 = 0;
        do {
            var_t0 += 1;
            temp_t8 = ((u32) *var_a2 >> 2) * 4;
            temp_t9 = 0xA0000000 | (temp_t8 + temp_s0 + 0x3000);
            temp_t8_2 = *(temp_t8 + (M2C_FIELD(temp_s1, s32 *, 4) + 0x200));
            var_a2 += 4;
            *temp_t9 = temp_t8_2;
        } while (var_t0 < arg3);
    }
    sp8 = M2C_ERROR(/* Read from unset register $a4 */);
    sp0 = M2C_ERROR(/* Read from unset register $a5 */);
    if (arg0 != 0) {
        restore_linear(temp_s0 + 0x1700, temp_s1 + 8, arg0);
    }
    if (arg1 != 0) {
        restore_linear(temp_s0 + 0x1780, temp_s1 + 0x88, arg1);
    }
    M2C_FIELD(temp_s0, s32 *, 0x4008) = 0;
    if (temp_s2 > 0) {
        crmRestorePP(temp_s0, sp8, sp0, temp_s2);
    }
}

s32 crimeLockOut(void) {
    return 1;
}

s32 crimePcxSwitch(void) {
    return 0;
}

s32 crimeSuspend(void *arg0) {
    if ((arg0 != NULL) && (M2C_FIELD(arg0, s32 *, 0x3C) == 0)) {
        M2C_FIELD(arg0, s32 *, 0x48) = 0;
    }
    return 0;
}

s32 crimeResume(void *arg0) {
    if (arg0 != NULL) {
        if (M2C_FIELD(arg0, s32 *, 0x48) != 0) {
            M2C_FIELD(arg0, s32 *, 0x48) = 0;
            force_resched();
        }
    }
    return 0;
}

void crimeLoadTimingTable(void *arg0, M2C_UNK *arg1) {
    crime_setvideotiming(M2C_FIELD(arg0, s32 *, 0x7C), arg1);
}

s32 crimeOpenPbuf(void *arg1) {
    M2C_UNK *temp_v0_4;
    M2C_UNK *temp_v0_5;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_a0_3;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_6;
    s32 var_a4;
    u32 temp_a1;

    temp_a0 = M2C_FIELD(arg1, s32 *, 0);
    var_a4 = 0x16;
    if (temp_a0 != 0) {
        temp_v0 = M2C_FIELD(arg1, s32 *, 0xC);
        if ((temp_v0 >= 0) && (temp_v0 < 3)) {
            temp_v0_2 = M2C_FIELD(arg1, s32 *, 4);
            if ((temp_v0_2 > 0) && (temp_v0_2 < 0x801)) {
                temp_v0_3 = M2C_FIELD(arg1, s32 *, 8);
                if ((temp_v0_3 > 0) && (temp_v0_3 < 0x801)) {
                    temp_v0_4 = crm_finddrawable(temp_a0);
                    temp_a0_2 = M2C_FIELD(temp_v0_4, s32 *, 0x24);
                    var_a4 = 0xB;
                    if (temp_a0_2 != 0x10) {

                    } else {
                        temp_a0_3 = temp_a0_2 | 2;
                        M2C_FIELD(temp_v0_4, s32 *, 0x24) = temp_a0_3;
                        temp_a1 = M2C_FIELD(arg1, s32 *, 0x10) & 1;
                        if (temp_a1 != 0) {
                            M2C_FIELD(temp_v0_4, s32 *, 0x24) = (s32) (temp_a0_3 | 8);
                        }
                        temp_v0_5 = kern_malloc(0x28, temp_a1);
                        M2C_FIELD(temp_v0_4, M2C_UNK **, 0x18) = temp_v0_5;
                        bzero(temp_v0_5, 0x28);
                        temp_v0_6 = crmAllocPbuffer(M2C_FIELD(temp_v0_4, M2C_UNK **, 0x18), M2C_FIELD(arg1, s32 *, 4), M2C_FIELD(arg1, s32 *, 8), (1 << M2C_FIELD(arg1, s32 *, 0xC)) * 8);
                        if (temp_v0_6 != 0) {
                            crm_destroydrawable(temp_v0_4);
                            var_a4 = temp_v0_6;
                        } else {
                            var_a4 = 0;
                        }
                    }
                }
            }
        }
    }
    return var_a4;
}

s32 crimeClosePbuf(s64 arg0, s32 *arg1) {
    M2C_UNK *temp_v0;
    s32 var_v0;

    mutex_lock(saved_reg_gp, 0x19);
    temp_v0 = crm_mapcliptodraw(*arg1);
    if (temp_v0 != NULL) {
        if (M2C_FIELD(temp_v0, s32 *, 0x28) != 0) {
            M2C_FIELD(temp_v0, s32 *, 0x24) = (s32) (M2C_FIELD(temp_v0, s32 *, 0x24) | 0x20);
            mutex_unlock(saved_reg_gp);
            var_v0 = 4;
            if (RRM_CheckValidFault(*subroutine_arg0) == 0) {
                var_v0 = 0;
            }
        } else {
            crm_destroydrawable((M2C_UNK *) temp_v0);
            mutex_unlock(saved_reg_gp);
            var_v0 = 0;
        }
    } else {
        mutex_unlock(saved_reg_gp);
        var_v0 = 0x16;
    }
    return var_v0;
}

s32 crm_makecurrentpbuf(void *arg1) {
    s64 sp8;
    s32 var_v0;

    sp8 = (s64) arg1;
    if (crmAllocPbufTiles(M2C_FIELD(arg1, s32 *, 0x18), M2C_FIELD(arg1, s32 *, 0x24) & 8) != 0) {
        var_v0 = 0xC;
    } else {
        var_v0 = 0;
        M2C_FIELD(sp8, s32 *, 0x24) = (s32) (M2C_FIELD(sp8, s32 *, 0x24) | 4);
    }
    return var_v0;
}

s32 crime_load_fbtlb(s64 arg0, void *arg1, void *arg2, M2C_UNK *arg3) {
    s64 sp18;
    s64 sp10;
    M2C_UNK *temp_v0_2;
    M2C_UNK *var_s0;
    s32 temp_a2;
    s32 temp_s2_2;
    s32 temp_v0_3;
    s32 var_v0;
    s64 var_a0;
    u8 temp_a1;
    u8 temp_v0;
    void *temp_s2;
    void *temp_s3;
    void *temp_t9;
    void *var_v0_2;

    sp18 = arg0;
    temp_s2 = M2C_FIELD(arg1, void **, 0x4C);
    if (RRM_CheckValidFault() >= 0) {
        temp_a2 = M2C_FIELD(arg1, s32 *, 0x14);
        var_a0 = 0;
        if (M2C_FIELD(M2C_FIELD(temp_s2, void **, 0x10), s32 *, 8) == temp_a2) {
            goto block_2;
        }
        if (crm_changedrawables(arg1, M2C_FIELD(arg1, s32 *, 0x10), temp_a2) != 0) {
            goto block_4;
        }
        temp_t9 = M2C_FIELD(temp_s2, void **, 0x10);
        var_a0 = (s64) M2C_FIELD(arg1, s32 *, 8);
        M2C_FIELD(var_a0, s32 *, 0x50) = (s32) (((M2C_FIELD(temp_t9, s16 *, 0xE) - 0x1000) & 0xFFFF) | ((M2C_FIELD(temp_t9, s16 *, 0xC) - 0x1000) << 0x10));
block_2:
        temp_v0 = M2C_FIELD(arg3, u8 *, 1);
        if (temp_v0 != 0) {
            if (temp_v0 != 1) {
                goto block_4;
            }
            if (temp_v0 != 0) {
                var_v0_2 = M2C_FIELD(temp_s2, void **, 0x10);
                if (var_v0_2 != NULL) {
                    goto block_8;
                }
                goto block_15;
            }
            goto block_14;
        }
block_14:
        var_v0_2 = M2C_FIELD(temp_s2, void **, 0xC);
        if (var_v0_2 == NULL) {
block_15:
            goto block_4;
        }
block_8:
        temp_a1 = M2C_FIELD(arg3, u8 *, 0);
        switch (temp_a1) {                          /* irregular */
        case 2:
            var_s0 = M2C_FIELD(var_v0_2, M2C_UNK **, 0x20);
            if (var_s0 != NULL) {
block_17:
                var_v0 = 0x16;
                if ((s32) M2C_FIELD(arg3, u8 *, 2) < 3) {
                    if (!(M2C_FIELD(var_s0, s32 *, 0xC) & 0x20) || (temp_v0_2 = M2C_FIELD(arg3, s32 *, 4), sp10 = var_a0, (M2C_FIELD(var_s0, M2C_UNK **, 0) == temp_v0_2))) {
                        goto block_20;
                    }
                    M2C_FIELD(var_s0, M2C_UNK **, 0) = temp_v0_2;
                    var_v0 = crm_get_dms_tiles(var_s0, temp_a1, 1);
                    var_a0 = sp10;
                    if (var_v0 != 0) {

                    } else {
block_20:
                        var_v0 = 0xE;
                        if (M2C_FIELD(var_s0, s32 *, 8) != 0) {
                            temp_v0_3 = M2C_FIELD(var_s0, s32 *, 4);
                            if (temp_v0_3 > 0) {
                                goto block_22;
                            }
                            if (temp_v0_3 >= 0) {
                                if (!(M2C_FIELD(var_s0, s32 *, 0xC) & 1)) {
                                    goto block_4;
                                }
block_22:
                                *(temp_s2 + (M2C_FIELD(arg3, u8 *, 2) * 4)) = var_s0;
                                sp10 = var_a0;
                                if (M2C_FIELD(arg2, s32 *, 4) == arg1) {
                                    temp_s3 = M2C_FIELD(arg2, void **, 0x78);
                                    if (RRM_CheckValidFault((void *) sp18) >= 0) {
                                        temp_s2_2 = crmSavePP(temp_s3, temp_s2 + 0x350, temp_s2 + 0x150);
                                        if (sp10 != 0) {
                                            M2C_FIELD(temp_s3, s32 *, 0x2050) = (s32) M2C_FIELD(sp10, s32 *, 0x50);
                                        }
                                        crmLoadTlbABC(arg2, var_s0, (s32) M2C_FIELD(arg3, u8 *, 2));
                                        if (temp_s2_2 > 0) {
                                            crmRestorePP(temp_s3, subroutine_arg2, subroutine_arg0, temp_s2_2);
                                        }
                                        goto block_28;
                                    }
                                    var_v0 = 4;
                                } else {
block_28:
                                    var_v0 = 0;
                                }
                            } else {
block_4:
                                var_v0 = 0x16;
                            }
                        }
                    }
                }
            } else {
block_33:
                var_v0 = 0xE;
            }
            break;
        case 0:
            var_s0 = M2C_FIELD(var_v0_2, M2C_UNK **, 0x18);
block_32:
            if (var_s0 == NULL) {
                goto block_33;
            }
            goto block_17;
        case 1:
            var_s0 = M2C_FIELD(var_v0_2, M2C_UNK **, 0x1C);
            if (var_s0 == NULL) {
                var_s0 = NULL;
                goto block_32;
            }
            goto block_17;
        }
    } else {
        var_v0 = 0xE;
    }
    return var_v0;
}

s32 crimePrivate(void *arg0, void *arg1, u32 arg2, u32 arg3) {
    s64 sp3D8;
    s64 sp3D0;
    s64 sp3C8;
    u8 sp3B8;
    u16 sp3B4;
    s32 sp3B0;
    M2C_UNK sp388;
    M2C_UNK sp380;
    M2C_UNK sp350;
    M2C_UNK *sp348;
    s32 sp340;
    s32 sp33C;
    M2C_UNK *sp338;
    M2C_UNK sp320;
    s32 sp31C;
    M2C_UNK *sp318;
    s32 sp310;
    u8 sp300;
    M2C_UNK sp1E8;
    s32 sp1E0;
    M2C_UNK sp1D0;
    s8 sp1C9;
    u8 sp1C8;
    u8 sp1C2;
    u8 sp1B8;
    M2C_UNK sp1A8;
    M2C_UNK sp198;
    M2C_UNK *sp190;
    M2C_UNK sp88;
    M2C_UNK sp50;
    s32 sp4C;
    M2C_UNK *sp48;
    u8 sp28;
    M2C_UNK *temp_a0;
    M2C_UNK *temp_a0_2;
    M2C_UNK *temp_a0_3;
    M2C_UNK *temp_a1_2;
    M2C_UNK *temp_s1_2;
    M2C_UNK *temp_s2_3;
    M2C_UNK *temp_s3;
    M2C_UNK *temp_s4;
    M2C_UNK *temp_s4_2;
    M2C_UNK *temp_v0_16;
    M2C_UNK *temp_v0_19;
    M2C_UNK *temp_v0_6;
    M2C_UNK *temp_v0_8;
    M2C_UNK *var_a0;
    M2C_UNK *var_a2;
    M2C_UNK *var_s1;
    M2C_UNK *var_v0_2;
    s32 temp_a1;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_ra;
    s32 temp_s3_2;
    s32 temp_t0;
    s32 temp_v0;
    s32 temp_v0_10;
    s32 temp_v0_11;
    s32 temp_v0_12;
    s32 temp_v0_13;
    s32 temp_v0_14;
    s32 temp_v0_15;
    s32 temp_v0_17;
    s32 temp_v0_18;
    s32 temp_v0_20;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 temp_v0_9;
    s32 var_a0_2;
    s32 var_a0_3;
    s32 var_a1;
    s32 var_s0;
    s32 var_v0;
    s32 var_v0_3;
    s32 var_v0_4;
    s64 temp_v0_2;
    u32 temp_s2;
    u32 var_a3;
    u8 var_s0_2;
    void *temp_a4;
    void *temp_at;
    void *temp_s0;
    void *temp_s1;
    void *temp_s2_2;
    void *temp_s2_4;

    var_a3 = arg3;
    temp_s1 = M2C_FIELD(arg0, void **, 0x18);
    temp_s2 = var_a3;
    if (arg2 >= 0x5603U) {
        if (arg2 < 0x5604U) {
            if (arg1 == NULL) {
                goto block_3;
            }
            if (copyin(var_a3, sp, 0x24) != 0) {
                goto block_3;
            }
            var_s0 = crmDefineTex(temp_s1, arg1, sp);
            goto block_4;
        }
        var_a3 = arg2 < 0x560CU;
        if (var_a3 == 0) {
            if (arg2 >= 0x560DU) {
                if (arg2 >= 0x5610U) {
                    if (arg2 >= 0x5611U) {
                        if (arg2 >= 0x5650U) {
                            if (arg2 < 0x5651U) {
                                if (arg1 == NULL) {
                                    var_s0 = 0x13;
                                } else {
                                    temp_s4 = M2C_FIELD(arg1, M2C_UNK **, 0x4C);
                                    temp_t0 = M2C_FIELD(temp_s4, s32 *, 0x20);
                                    sp3D0 = 0;
                                    sp3C8 = (s64) temp_t0;
                                    if (temp_t0 == 0) {
                                        var_s0 = 0x16;
                                    } else {
                                        if (copyin(temp_s2, (M2C_UNK *) &sp4C, 4, var_a3) != 0) {
                                            goto block_3;
                                        }
                                        if ((sp4C >= 0x80) || (M2C_FIELD((sp3C8 + (sp4C * 4)), s32 *, 0x20) == 0)) {
                                            var_s0 = 0x16;
                                        } else {
                                            M2C_FIELD(temp_s4, s32 *, 0x1C) = sp4C;
                                            if (M2C_FIELD(temp_s1, s32 *, 4) != arg1) {
                                                var_s0 = 0;
                                            } else {
                                                temp_s2_2 = M2C_FIELD(temp_s1, void **, 0x78);
                                                var_s0 = 4;
                                                if (RRM_CheckValidFault(arg0) < 0) {
                                                    sp3D0 = 1;
                                                } else {
                                                    crmLoadTexTlb(temp_s4);
                                                    M2C_FIELD(temp_s2_2, s32 *, 0x4008) = 0;
                                                    var_s0 = 0;
                                                }
                                            }
                                        }
                                    }
                                }
                                goto block_4;
                            }
                            if (arg2 == 0x5651) {
                                if (M2C_FIELD(saved_reg_gp, s32 *, -0x77F0) != 0) {
                                    var_v0 = 0x10;
                                } else {
                                    M2C_FIELD(saved_reg_gp, s32 *, -0x77F0) = 1;
                                    M2C_FIELD(M2C_FIELD(arg1, void **, 8), s32 *, 0x1F0) = 0x84;
                                    crimeInitSpecialDDRN(M2C_FIELD(arg1, M2C_UNK **, 0x4C), (M2C_UNK *) var_a3);
                                    M2C_FIELD(arg0, s32 *, 4) = (s32) (M2C_FIELD(arg0, s32 *, 4) | 2);
                                    crmSwapBufd(arg0);
                                    M2C_FIELD(saved_reg_gp, s32 *, -0x77F0) = 0;
                                    var_s0 = 0;
                                    goto block_4;
                                }
                            } else {
                                goto block_271;
                            }
                        } else {
                            if (arg2 == 0x564F) {
                                cmn_err(1, 0x1B8, (void *) var_a3);
                                var_s0 = 0;
                            } else {
                                goto block_271;
                            }
                            goto block_4;
                        }
                    } else {
                        if (copyin(temp_s2, &sp48, 4, var_a3) != 0) {
                            goto block_3;
                        }
                        crimeBlankscreen(temp_s1, sp48);
                        var_s0 = 0;
                        goto block_4;
                    }
                } else {
                    if (arg2 >= 0x560EU) {
                        var_a3 = 0x560F;
                        if (arg2 >= 0x560FU) {
                            if (arg2 == 0x560F) {
                                if ((M2C_FIELD(temp_s1, M2C_UNK **, 0x7C) == NULL) || (M2C_FIELD(temp_s1, M2C_UNK **, 0x80) == NULL)) {
                                    var_s0 = 0x16;
                                } else {
                                    M2C_FIELD(saved_reg_gp, s32 *, 0) = 1;
                                    var_s0 = 0;
                                    M2C_FIELD(M2C_FIELD(temp_s1, M2C_UNK **, 0x7C), u8 *, 0x2E) = crime_i2cFpProbe(M2C_FIELD(temp_s1, M2C_UNK **, 0x80), 1, 0x560F);
                                }
                            } else {
                                goto block_271;
                            }
                        } else {
                            if (copyout(NULL, temp_s2, 0x14, 0x560F) != 0) {
                                goto block_3;
                            }
                            var_s0 = 0;
                        }
                    } else if (arg2 == 0x560D) {
                        if (!(M2C_FIELD(temp_s1, u8 *, 0x98) & 1)) {
                            var_s0 = 0xB;
                        } else {
                            if (copyin(temp_s2, (M2C_UNK *) &sp50, 0x38, var_a3) != 0) {
                                goto block_3;
                            }
                            var_s0 = crmInitialize(temp_s1, &sp50);
                        }
                    } else {
                        goto block_271;
                    }
                    goto block_4;
                }
            } else {
                crimeFrameInfo(temp_s1, &sp28, var_a3);
                if (copyout(&sp28, temp_s2, 0x20) != 0) {
                    goto block_3;
                }
                var_s0 = 0;
                goto block_4;
            }
        } else {
            if (arg2 >= 0x5608U) {
                if (arg2 >= 0x5609U) {
                    if (arg2 >= 0x560AU) {
                        if (arg2 >= 0x560BU) {
                            var_a3 = 0x560B;
                            if (arg2 == 0x560B) {
                                sp3D8 = M2C_ERROR(/* Read from unset register $a4 */);
                                if (!(M2C_FIELD(temp_s1, u8 *, 0x98) & 1)) {
                                    var_s0 = 0xB;
                                } else {
                                    if (copyin(temp_s2, (M2C_UNK *) &sp198, 0x10, 0x560BU) != 0) {
                                        goto block_3;
                                    }
                                    temp_v0 = crime_i2c_cmd(temp_s1, &sp198, temp_s2);
                                    if (temp_v0 >= 0) {
                                        var_s0 = 0;
                                        *sp3D8 = temp_v0;
                                    } else {
                                        var_s0 = -temp_v0;
                                    }
                                }
                            } else {
                                goto block_271;
                            }
                        } else {
                            if (copyin(temp_s2, &sp190, 4, var_a3) != 0) {
                                goto block_3;
                            }
                            var_s0 = crimeUnSchedSwapBuf(arg0, 0, sp190);
                        }
                    } else if (arg2 == 0x5609) {
                        if (copyin(temp_s2, (M2C_UNK *) &sp1A8, 0x10, var_a3) != 0) {
                            goto block_3;
                        }
                        temp_s2_3 = M2C_FIELD(arg1, M2C_UNK **, 0x4C);
                        if (temp_s2_3 == NULL) {
                            var_s0 = 0x16;
                        } else if (RRM_CheckValidFault(arg0) >= 0) {
                            if (sp1B0 & 1) {
                                temp_v0_2 = crm_enablesz(arg0, arg1, temp_s2_3, M2C_FIELD(temp_s2_3, void **, 0xC));
                                if (temp_v0_2 != 0) {
                                    goto block_196;
                                }
                                if (!(sp1B0 & 4)) {
block_196:
                                    if (temp_v0_2 != 0) {
                                        goto block_197;
                                    }
                                    goto block_220;
                                }
                                goto block_218;
                            }
                            if (sp1B0 & 4) {
block_218:
                                if (crm_enableovl(arg0, arg1, temp_s2_3, M2C_FIELD(temp_s2_3, void **, 0xC)) == 0) {
                                    goto block_219;
                                }
block_197:
                                var_s0 = 0xC;
                            } else {
block_219:
block_220:
                                temp_s0 = temp_s1 + 0x1DC;
                                mutex_lock(temp_s0, 0x19);
                                var_v0_2 = M2C_FIELD(temp_s1, M2C_UNK **, 0x1C8);
                                if (var_v0_2 != NULL) {
loop_250:
                                    if (M2C_FIELD(var_v0_2, s32 *, 8) == sp1B4) {
                                        if (var_v0_2 != NULL) {
                                            temp_a0 = M2C_FIELD(temp_s2_3, M2C_UNK **, 0x20);
                                            if (temp_a0 != NULL) {
                                                if (temp_a0 != var_v0_2) {
                                                    mutex_unlock(temp_s0);
                                                    var_s0 = 0xB;
                                                } else {
                                                    goto block_265;
                                                }
                                            } else {
                                                M2C_FIELD(temp_s2_3, M2C_UNK **, 0x20) = var_v0_2;
                                                M2C_FIELD(var_v0_2, s32 *, 0xC) = (s32) (M2C_FIELD(var_v0_2, s32 *, 0xC) + 1);
block_265:
                                                mutex_unlock(temp_s0);
                                                var_s0 = 0;
                                            }
                                        } else {
                                            goto block_256;
                                        }
                                    } else {
                                        var_v0_2 = M2C_FIELD(var_v0_2, M2C_UNK **, 0);
                                        if (var_v0_2 != NULL) {
                                            goto loop_250;
                                        }
                                        goto block_256;
                                    }
                                } else {
block_256:
                                    mutex_unlock(temp_s0);
                                    var_s0 = 0x16;
                                }
                            }
                        } else {
                            goto block_3;
                        }
                    } else {
                        goto block_271;
                    }
                } else {
                    if (copyin(temp_s2, (M2C_UNK *) &sp88, 0x102, var_a3) != 0) {
                        goto block_3;
                    }
                    var_s0 = crimeUpdateBackTiles(arg0, (s64) arg1, &sp88);
                }
            } else {
                temp_v0_3 = arg2 < 0x5606U;
                if (temp_v0_3 == 0) {
                    if (arg2 >= 0x5607U) {
                        if (arg2 == 0x5607) {
                            temp_s3 = M2C_FIELD(temp_s1, M2C_UNK **, 0x7C);
                            if (!(M2C_FIELD(temp_s1, u8 *, 0x98) & 1)) {
                                var_s0 = 0xB;
                            } else {
                                if (copyin(temp_s2, (M2C_UNK *) &sp1C8, 8, var_a3) != 0) {
                                    goto block_3;
                                }
                                temp_v0_4 = M2C_FIELD(saved_reg_gp, s32 *, 0);
                                if ((s32) sp1C8 > 0) {
                                    var_s0_2 = sp1C8;
                                    if (temp_v0_4 != 0) {
                                        goto block_178;
                                    }
                                    var_s0 = 0x16;
                                } else {
                                    var_s0_2 = sp1C8;
                                    if (temp_v0_4 == 0) {
                                        var_s0_2 = 0;
                                    }
block_178:
                                    temp_a3 = M2C_FIELD(temp_s1, u8 *, 0x98) & 4;
                                    if (temp_a3 != 0) {
                                        crime_i2cProbe(M2C_FIELD(temp_s1, M2C_UNK **, 0x80), temp_s3, (s32) var_s0_2, temp_a3);
                                        crime_validate_ddc_data(temp_s3, (s32) var_s0_2);
                                    }
                                    var_s1 = temp_s3 + 0xE8;
                                    var_a0 = temp_s3 + 0x64;
                                    if (var_s0_2 == 1) {
                                        var_s1 = temp_s3 + 0x16A;
                                        var_a0 = temp_s3 + 0xEA;
                                    }
                                    if (M2C_FIELD((var_s0_2 * 8), s16 *, 0x22) != 2) {
                                        goto block_182;
                                    }
                                    if (copyout((u8 *) var_a0, sp1CC, 0x80) != 0) {
                                        goto block_3;
                                    }
block_182:
                                    sp1C9 = (s8) *var_s1;
                                    if (copyout(&sp1C8, temp_s2, 8) != 0) {
                                        goto block_3;
                                    }
                                    var_s0 = 0;
                                }
                            }
                        } else {
                            goto block_271;
                        }
                    } else {
                        if (copyin(temp_s2, (M2C_UNK *) &sp1B8, 0xC, var_a3) != 0) {
                            goto block_3;
                        }
                        temp_v0_5 = crime_clear_buffer(arg0, arg1, M2C_FIELD(temp_s1, void **, 0x78), &sp1B8);
                        var_s0 = temp_v0_5;
                        if (temp_v0_5 == -1) {
                            sp1C2 |= 2;
                            if (copyout(&sp1B8, temp_s2, 0xC) != 0) {
                                goto block_3;
                            }
                            var_s0 = 0;
                        }
                    }
                } else if (arg2 >= 0x5605U) {
                    if (temp_v0_3 != 0) {
                        if (copyin(temp_s2, (M2C_UNK *) &sp1D0, 0xC, var_a3) != 0) {
                            goto block_3;
                        }
                        var_s0 = crime_load_linear_tlb(arg0, arg1, temp_s1, &sp1D0);
                    } else {
                        goto block_271;
                    }
                } else if (arg2 == 0x5604) {
                    temp_v0_6 = kern_malloc(0x220, var_a3);
                    bzero(temp_v0_6, 0x220);
                    temp_v0_7 = M2C_FIELD(temp_s1, s32 *, 0x138) + 1;
                    M2C_FIELD(temp_s1, s32 *, 0x138) = temp_v0_7;
                    M2C_FIELD(temp_v0_6, s32 *, 8) = temp_v0_7;
                    sp1E0 = temp_v0_7;
                    if (copyout((u8 *) &sp1E0, temp_s2, 4) != 0) {
                        kern_free(temp_v0_6, 1U);
                        goto block_3;
                    }
                    init_sema(temp_v0_6 + 0x10, 1, 0x200, M2C_FIELD(temp_v0_6, s32 *, 8));
                    temp_s2_4 = temp_s1 + 0x1DC;
                    mutex_lock(temp_s2_4, 0x19);
                    temp_v0_8 = M2C_FIELD(temp_s1, M2C_UNK **, 0x1C8);
                    M2C_FIELD(temp_v0_6, M2C_UNK **, 0) = temp_v0_8;
                    if (temp_v0_8 != NULL) {
                        M2C_FIELD(temp_v0_8, M2C_UNK **, 4) = temp_v0_6;
                    }
                    M2C_FIELD(temp_s1, M2C_UNK **, 0x1C8) = temp_v0_6;
                    mutex_unlock(temp_s2_4);
                    var_s0 = 0;
                } else {
                    goto block_271;
                }
            }
            goto block_4;
        }
    } else if (arg2 >= 0x55F8U) {
        temp_a1 = arg2 < 0x55F9U;
        if (temp_a1 != 0) {
            if (arg1 == NULL) {
                goto block_3;
            }
            temp_s1_2 = M2C_FIELD(arg1, M2C_UNK **, 0x4C);
            if (temp_s1_2 != NULL) {
                temp_a0_2 = M2C_FIELD(temp_s1_2, M2C_UNK **, 0x18);
                if ((temp_a0_2 != NULL) && (gfxdd_lookup(temp_a0_2, (M2C_UNK *) temp_a1) == 0)) {
                    var_s0 = 0xB;
                } else {
                    temp_v0_9 = crmUnmapPages(temp_s1_2 + 0x18);
                    var_s0 = temp_v0_9;
                    if (temp_v0_9 == 0) {
                        M2C_FIELD(temp_s1_2, M2C_UNK **, 0x18) = NULL;
                    }
                }
            } else {
                var_s0 = 0x16;
            }
            goto block_4;
        }
        temp_v0_10 = arg2 < 0x55FDU;
        if (arg2 >= 0x55FFU) {
            if (arg2 >= 0x5600U) {
                if (arg2 >= 0x5601U) {
                    if (arg2 < 0x5602U) {
                        if (arg1 == NULL) {
                            goto block_3;
                        }
                        if (copyin(var_a3, (M2C_UNK *) &sp300, 0x10) != 0) {
                            goto block_3;
                        }
                        temp_v0_11 = crmAllocTex(temp_s1, M2C_FIELD(arg1, M2C_UNK **, 0x4C), &sp300, 0);
                        var_s0 = temp_v0_11;
                        if (temp_v0_11 == 0) {
                            var_v0 = var_s0;
                            if (copyout(&sp300, temp_s2, 0x10) != 0) {
                                goto block_3;
                            }
                        } else {
                            goto block_4;
                        }
                    } else {
                        var_a3 = 0x5602;
                        if (arg2 == 0x5602) {
                            if (arg1 == NULL) {
                                goto block_3;
                            }
                            var_s0 = crmDeallocTex(arg1, temp_s2, 0x5602);
                        } else {
                            goto block_271;
                        }
                        goto block_4;
                    }
                } else {
                    if (arg2 == 0x5600) {
                        if (copyin(var_a3, (M2C_UNK *) &sp310, 8) != 0) {
                            goto block_3;
                        }
                        var_s0 = crimeClosePbuf((s64) temp_s1, &sp310);
                    } else {
                        goto block_271;
                    }
                    goto block_4;
                }
            } else {
                if (copyin(var_a3, (M2C_UNK *) &sp1E8, 0x118) != 0) {
                    goto block_3;
                }
                var_s0 = crimeValidateDDClip(arg0, &sp1E8);
                goto block_4;
            }
        } else {
            if (temp_v0_10 == 0) {
                if (arg2 < 0x55FEU) {
                    if (M2C_FIELD(M2C_FIELD(arg0, void **, 8), s32 *, 4) != arg0) {
                        var_s0 = 0x16;
                    } else {
                        if (copyin(var_a3, &sp318, 8) != 0) {
                            goto block_3;
                        }
                        if (sp318 == (M2C_UNK *)1) {
                            sp31C = crmFindFreeDidTbl(temp_s1);
                        }
                        if (copyout((u8 *) &sp318, temp_s2, 8) != 0) {
                            goto block_3;
                        }
                        var_s0 = 0;
                    }
                } else if (arg2 == 0x55FE) {
                    if (copyin(var_a3, (M2C_UNK *) &sp320, 0x14) != 0) {
                        goto block_3;
                    }
                    var_s0 = crimeOpenPbuf(arg1, &sp320);
                } else {
                    goto block_271;
                }
            } else if (arg2 >= 0x55FCU) {
                if (temp_v0_10 != 0) {
                    if (M2C_FIELD(arg1, M2C_UNK **, 0x4C) == NULL) {
                        var_s0 = 0x16;
                    } else if (M2C_FIELD(M2C_FIELD(arg0, void **, 8), s32 *, 4) != arg0) {
                        var_s0 = 0x16;
                    } else if (M2C_FIELD(temp_s1, s32 *, 0x88) != 0) {
                        var_s0 = 0xB;
                    } else {
                        temp_v0_12 = crmMapPages(M2C_FIELD(temp_s1, void **, 0x84), 0x600, &sp338);
                        var_s0 = temp_v0_12;
                        if (temp_v0_12 == 0) {
                            M2C_FIELD(temp_s1, M2C_UNK **, 0x1CC) = sp338;
                            M2C_FIELD(temp_s1, s32 *, 0x88) = ddv_getaddr(sp338);
                            sp33C = ddv_getaddr(sp338);
                            copyout((u8 *) &sp33C, temp_s2, 4);
                            temp_v0_13 = crmMapChunk(0x338, &sp340);
                            var_s0 = temp_v0_13;
                            if (temp_v0_13 != 0) {
                                goto block_3;
                            }
                            var_a1 = 0;
                            var_a0_2 = 0;
                            var_v0_3 = 0;
                            do {
                                var_v0_3 += 1;
                                temp_ra = var_a1 + sp340;
                                var_a1 += 0x10000;
                                temp_at = M2C_FIELD(temp_s1, void **, 0x84) + var_a0_2;
                                var_a0_2 += 4;
                                M2C_FIELD(temp_at, s32 *, 0xC) = temp_ra;
                            } while (var_v0_3 < 4);
                        }
                    }
                } else {
                    goto block_271;
                }
            } else if (arg2 == 0x55F9) {
                temp_a1_2 = M2C_FIELD(arg1, M2C_UNK **, 0x4C);
                if (temp_a1_2 == NULL) {
                    var_s0 = 0x16;
                } else if (M2C_FIELD(M2C_FIELD(arg0, void **, 8), s32 *, 4) != arg0) {
                    var_s0 = 0x16;
                } else {
                    temp_a3_2 = M2C_FIELD(temp_s1, s32 *, 0x88);
                    var_v0_4 = 0;
                    if (temp_a3_2 != 0) {
                        var_a0_3 = 0;
                        do {
                            var_a0_3 += 1;
                            temp_a4 = M2C_FIELD(temp_s1, void **, 0x84) + var_v0_4;
                            var_v0_4 += 4;
                            M2C_FIELD(temp_a4, s32 *, 0xC) = 0;
                        } while (var_a0_3 < 4);
                        if (crmUnmapChunk((void *)0x338, temp_a1_2, temp_a3_2) != 0) {
                            goto block_3;
                        }
                        temp_v0_14 = crmUnmapPages(temp_s1 + 0x1CC);
                        var_s0 = temp_v0_14;
                        if (temp_v0_14 == 0) {
                            M2C_FIELD(temp_s1, M2C_UNK **, 0x1CC) = NULL;
                            M2C_FIELD(temp_s1, s32 *, 0x88) = 0;
                        }
                    } else {
                        var_s0 = 0xB;
                    }
                }
            } else {
                goto block_271;
            }
            goto block_4;
        }
    } else {
        temp_v0_15 = arg2 < 0x55F2U;
        if (arg2 >= 0x55F4U) {
            if (arg2 >= 0x55F5U) {
                if (arg2 >= 0x55F6U) {
                    if (arg2 >= 0x55F7U) {
                        if (arg2 == 0x55F7) {
                            if (copyin(var_a3, (M2C_UNK *) &sp380, 8) != 0) {
                                goto block_3;
                            }
                            var_s0 = crime_load_fbtlb((s64) arg0, arg1, temp_s1, &sp380);
                        } else {
                            goto block_271;
                        }
                    } else {
                        if (copyin(var_a3, (M2C_UNK *) &sp350, 0x30) != 0) {
                            goto block_3;
                        }
                        var_s0 = crimeLoadTimingTable(temp_s1, &sp350);
                    }
                } else if (arg2 == 0x55F5) {
                    temp_v0_16 = kern_malloc(0x304);
                    if (copyin(temp_s2, temp_v0_16, 0x304) != 0) {
                        kern_free(temp_v0_16);
                        goto block_3;
                    }
                    var_s0 = crimeSetGammaRamp(arg0, temp_v0_16);
                    kern_free(temp_v0_16);
                } else {
                    goto block_271;
                }
            } else {
                if (copyin(var_a3, &sp348, 8) != 0) {
                    goto block_3;
                }
                temp_v0_17 = crimeSetDisplayMode(arg0, sp348, sp34C);
                if (temp_v0_17 >= 0) {
                    var_s0 = 0;
                } else {
                    var_s0 = -temp_v0_17;
                }
            }
            goto block_4;
        }
        if (temp_v0_15 == 0) {
            if (arg2 >= 0x55F3U) {
                if (arg2 == 0x55F3) {
                    if (arg1 == NULL) {
                        goto block_3;
                    }
                    temp_s4_2 = M2C_FIELD(arg1, M2C_UNK **, 0x4C);
                    if (temp_s4_2 != NULL) {
                        temp_a0_3 = M2C_FIELD(temp_s4_2, M2C_UNK **, 0x18);
                        var_a2 = temp_s4_2 + 0x18;
                        if (temp_a0_3 != NULL) {
                            var_a2 = temp_s4_2 + 0x18;
                            if (gfxdd_lookup(temp_a0_3, var_a2) == 0) {
                                var_s0 = 0xB;
                                goto block_4;
                            }
                        }
                        temp_v0_18 = crmMapPages(M2C_FIELD(arg1, void **, 8), 0x288, var_a2);
                        var_s0 = temp_v0_18;
                        if (temp_v0_18 == 0) {
                            sp3B0 = ddv_getaddr(M2C_FIELD(temp_s4_2, M2C_UNK **, 0x18));
                            var_v0 = var_s0;
                            if (copyout((u8 *) &sp3B0, temp_s2, 4) != 0) {
                                goto block_3;
                            }
                        } else {
                            goto block_4;
                        }
                    } else {
                        var_s0 = 0x16;
                        goto block_4;
                    }
                } else {
                    goto block_271;
                }
            } else {
                if (copyin(var_a3, (M2C_UNK *) &sp388, 0x28) != 0) {
                    goto block_3;
                }
                var_s0 = crimePixelDma(arg0, &sp388);
                goto block_4;
            }
        } else {
            if (arg2 >= 0x55F1U) {
                if (temp_v0_15 != 0) {
                    if (copyin(var_a3, (M2C_UNK *) &sp3B4, 4) != 0) {
                        goto block_3;
                    }
                    M2C_FIELD(temp_s1, s8 *, 0x9A) = (s8) sp3B4;
                    M2C_FIELD(temp_s1, s8 *, 0x9B) = (s8) sp3B6;
                    crimePositionCursor(temp_s1, M2C_FIELD(temp_s1, s32 *, 0x9C), M2C_FIELD(temp_s1, s32 *, 0xA0));
                    var_s0 = 0;
                } else {
                    goto block_271;
                }
                goto block_4;
            }
            if (arg2 == 0x5213) {
                if (copyin(var_a3, (M2C_UNK *) &sp3B8, 0xC) != 0) {
                    goto block_3;
                }
                temp_v0_19 = M2C_FIELD(temp_s1, M2C_UNK **, 0x7C);
                if ((temp_v0_19 == NULL) || (M2C_FIELD(temp_v0_19, u8 *, 0x2E) == 0)) {
                    var_s0 = 0x13;
                    goto block_4;
                }
                temp_s3_2 = M2C_FIELD(saved_reg_gp, s32 *, 0);
                M2C_FIELD(saved_reg_gp, s32 *, 0) = 1;
                temp_v0_20 = crime_i2cfp_command(temp_s1, &sp3B8);
                var_s0 = temp_v0_20;
                if (M2C_FIELD(saved_reg_gp, s32 *, 0) == 1) {
                    M2C_FIELD(saved_reg_gp, s32 *, 0) = temp_s3_2;
                }
                if (temp_v0_20 == 0) {
                    var_v0 = var_s0;
                    if (copyout(&sp3B8, temp_s2, 0xC) != 0) {
block_3:
                        var_s0 = 0xE;
                        goto block_4;
                    }
                } else {
                    goto block_4;
                }
            } else {
block_271:
                cmn_err(1, 0x1E0, (void *) var_a3);
                var_s0 = 0x16;
block_4:
                var_v0 = var_s0;
            }
        }
    }
    return var_v0;
}

void crimeInterrupt(s32 arg1) {
    if (arg1 != 0x12) {
        if (arg1 == 0x13) {
            goto block_4;
        }
    } else {
block_4:
        crime_hli_handler(*(s32 *)0xC, arg1 - 0x10, 0x13, arg1);
    }
}

s32 crmAllocGfxBuffers(void *arg0) {
    M2C_UNK *temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_a7;
    s32 temp_lo;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 var_a0;
    s32 var_a0_2;
    s32 var_v0;
    s32 var_v0_2;
    s32 var_v0_3;
    u16 temp_s1;
    u16 temp_s2;
    u8 temp_a5;
    u8 temp_a5_2;
    u8 temp_a6;
    u8 temp_a6_2;
    u8 temp_t0;
    void *temp_s3;

    temp_s3 = M2C_FIELD(arg0, void **, 0x7C);
    bzero(arg0 + 0xA4, 0x14);
    temp_a2 = *(s32 *)0x22C;
    temp_s1 = M2C_FIELD(temp_s3, u16 *, 0x22);
    temp_s2 = M2C_FIELD(temp_s3, u16 *, 0x20);
    if (temp_a2 != 0) {
        temp_a1 = temp_s2 + 0x1FF;
        temp_v1 = temp_s1 + 0x7F;
        var_a0 = (s32) (((u32) (temp_a1 >> 8) >> 0x17) + temp_a1) >> 9;
        var_v0_2 = (s32) (((u32) (temp_v1 >> 6) >> 0x19) + temp_v1) >> 7;
        if (var_a0 < 0x11) {
            temp_a6 = *(s32 *)0x240;
            if (var_v0_2 < 0x11) {
                temp_a5 = *(s32 *)0x241;
                temp_a3 = (s32) temp_a6 < var_a0;
                temp_a1_2 = (s32) temp_a5 < var_v0_2;
                if (temp_a3 == 0) {
                    if (temp_a1_2 != 0) {
                        var_a0 = (s32) temp_a6;
                        goto block_6;
                    }
                } else {
block_6:
                    if (temp_a1_2 == 0) {
                        var_v0_2 = (s32) temp_a5;
                    }
                }
                if (temp_a2 != (var_a0 * var_v0_2)) {
                    crmFreeChunk(NULL + 0x228, *(s32 *)4, temp_a2, temp_a3);
                }
                goto block_9;
            }
        }
        goto block_17;
    }
block_9:
    temp_a1_3 = *(s32 *)4;
    if (temp_a1_3 != 0) {
        temp_t0 = M2C_FIELD(temp_s3, u8 *, 0x2F);
        temp_a7 = (s32) (((u32) ((s32) temp_t0 >> 2) >> 0x1D) + temp_t0) >> 3;
        temp_lo = 0x200 / temp_a7;
        M2C_TRAP_IF(temp_a7 == 0);
        M2C_TRAP_IF(temp_lo == 0);
        temp_v1_2 = temp_s1 + 0x7F;
        var_a0_2 = (s32) ((temp_s2 + temp_lo) - 1) / temp_lo;
        var_v0_3 = (s32) (((u32) (temp_v1_2 >> 6) >> 0x19) + temp_v1_2) >> 7;
        if (var_a0_2 < 0x11) {
            temp_a6_2 = *(s32 *)0x18;
            if (var_v0_3 < 0x11) {
                temp_a5_2 = *(s32 *)0x19;
                temp_a2_2 = (s32) temp_a5_2 < var_v0_3;
                if ((s32) temp_a6_2 >= var_a0_2) {
                    if (temp_a2_2 != 0) {
                        var_a0_2 = (s32) temp_a6_2;
                        goto block_15;
                    }
                } else {
block_15:
                    if (temp_a2_2 != 0) {

                    } else {
                        var_v0_3 = (s32) temp_a5_2;
                    }
                }
                if (temp_a1_3 != (var_a0_2 * var_v0_3)) {
                    crmFreeChunk(NULL, *(s32 *)4, temp_a2_2);
                    crmFreeChunk(NULL);
                }
                goto block_22;
            }
        }
block_17:
        var_v0 = 0x16;
    } else {
block_22:
        if (*(s32 *)4 != 0) {
            *(s32 *)0x10 = crmNextIncarnation();
            goto block_24;
        }
        if (crmAllocFrameBuffer(0, temp_s2, temp_s1, M2C_FIELD(temp_s3, u8 *, 0x2F)) != 0) {
            var_v0 = -1;
        } else {
block_24:
            if (*(void *)4 != 0) {
                *(void *)0x10 = crmNextIncarnation(NULL);
                goto block_26;
            }
            if (crmAllocBackbuffer(NULL, temp_s2, temp_s1, M2C_FIELD(temp_s3, u8 *, 0x2F)) != 0) {
                var_v0 = -1;
            } else {
block_26:
                temp_a0 = NULL + 0x228;
                if (*(s32 *)0x22C != 0) {
                    *(s32 *)0x238 = crmNextIncarnation(temp_a0);
                    goto block_28;
                }
                if (crmAllocOverlayBuffer(temp_a0, temp_s2, temp_s1) != 0) {
                    var_v0 = -1;
                } else {
block_28:
                    if (*(s32 *)0x2D4 != 0) {
                        goto block_30;
                    }
                    if (crmAllocCid(NULL + 0x2D0, temp_s2, temp_s1) != 0) {
                        var_v0 = -1;
                    } else {
block_30:
                        if (*(void *)4 == 0) {
                            *(void *)4 = sema_alloc(0, 1, 0xF8);
                        }
                        var_v0 = 0;
                    }
                }
            }
        }
    }
    return var_v0;
}

void crmFirstInit(void) {
    void *temp_a1;
    void *temp_a3;

    if (*(s32 *)0x5EC == 0) {
        *(void *)0x5EC = 0x360;
        crm_tileclassinit();
        *(void **)0x340 = saved_reg_gp - 0x7800;
        *(void **)0x2D8 = NULL + 0x2F8;
        temp_a3 = NULL + 0x250;
        *(void **)0x230 = temp_a3;
        temp_a1 = NULL + 0x28;
        *(void **)8 = temp_a1;
        crmAllocGbeTables(NULL + 0x338, temp_a1, 0, temp_a3);
    }
}

s32 crime_earlyinit(void) {
    M2C_UNK *temp_a0;
    M2C_UNK *temp_a0_2;
    M2C_UNK *temp_s4;
    M2C_UNK *temp_s5;
    M2C_UNK *temp_s6;
    M2C_UNK *temp_v0_2;
    M2C_UNK *var_a0;
    s32 *var_s1;
    s32 temp_a0_3;
    s32 temp_t1;
    s32 temp_t3;
    s32 temp_v0;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 var_s2;
    s32 var_s3;
    s32 var_v0;
    s32 var_v0_3;
    s32 var_v0_5;
    u16 temp_s3;
    u16 var_s2_2;
    u32 temp_a1;
    u8 var_v0_4;
    void *temp_a1_2;
    void *var_a1;
    void *var_a1_2;
    void *var_v0_2;

    temp_s6 = *NULL;
    temp_s4 = *(M2C_UNK **)8;
    temp_s5 = *(M2C_UNK **)4;
    if (crimeProbe(temp_s6) != 0) {
        if (*(M2C_UNK **)0xC != NULL) {
            *(M2C_UNK **)0x38 = 0;
            gbeStop(temp_s5, sp, sp, sp);
            if (in_panic_mode() == 0) {
                crmRetraceCloseAllRn(subroutine_arg2);
            }
            var_s1 = NULL;
            crmFreeChunk(NULL);
            crmFreeChunk(NULL);
            temp_a0 = *NULL;
            if (temp_a0 != NULL) {
                crmFreeChunk(temp_a0);
                kern_free(*NULL);
                *NULL = NULL;
            }
            temp_v0 = *(s32 *)0x2DC;
            if (temp_v0 & 0x10) {
                *(s32 *)0x2E0 = 0;
                *(s32 *)0x2D4 = 0;
                *(s32 *)0x2DC = temp_v0 & ~0x10;
                bzero(*(s32 *)0x2D8, 0x40);
            } else {
                crmFreeChunk(NULL + 0x2D0);
            }
            if (*(s32 *)0xCE0 != NULL) {
                do {
                    crm_destroydrawable(*(s32 *)0xCE0);
                } while (*(s32 *)0xCE0 != NULL);
            }
            temp_a0_2 = *(M2C_UNK **)0xC;
            M2C_FIELD(temp_a0_2, s32 *, 0x88) = 0;
            M2C_FIELD(*(M2C_UNK **)0xC, s32 *, 0x1CC) = 0;
            M2C_FIELD(*(M2C_UNK **)0xC, s32 *, 0x138) = 0;
            M2C_FIELD(saved_reg_gp, s32 *, -0x77F8) = 0;
            M2C_FIELD(*(M2C_UNK **)0xC, s8 *, 0x98) = 0;
            var_s2 = 0;
            *(s32 *)0x348 = crmNextIncarnation(temp_a0_2);
            var_s3 = 0;
loop_13:
            var_v0_2 = *(M2C_UNK **)0xC + var_s2;
loop_14:
            var_a0 = M2C_FIELD(var_v0_2, M2C_UNK **, 0xB8);
            temp_a1 = var_s3 + 1;
            var_v0_2 += 4;
            if (var_a0 == NULL) {
                var_s2 += 4;
                var_s3 = (s32) temp_a1;
                if (var_s3 < 0x1F) {
                    goto loop_14;
                }
            } else {
                temp_v0_2 = M2C_FIELD(var_a0, M2C_UNK **, 0x114);
                if (temp_v0_2 != NULL) {
                    kern_free(temp_v0_2, temp_a1);
                    var_a0 = M2C_FIELD((*(M2C_UNK **)0xC + var_s2), M2C_UNK **, 0xB8);
                }
                kern_free(var_a0);
                var_s3 += 1;
                temp_a1_2 = *(M2C_UNK **)0xC + var_s2;
                var_s2 += 4;
                M2C_FIELD(temp_a1_2, s32 *, 0xB8) = 0;
                if (var_s3 < 0x20) {
                    goto loop_13;
                }
            }
            if (M2C_FIELD(M2C_FIELD(temp_s4, void **, 0x30), s32 *, 4) & 2) {
                M2C_FIELD(temp_s4, s32 *, 0xE4) = 0;
            }
            M2C_FIELD(saved_reg_gp, s32 *, 0) = 0;
            if (M2C_FIELD(saved_reg_gp, s32 *, 0) > 0) {
                var_v0_3 = 0;
                var_a1 = NULL;
loop_20:
                temp_v0_3 = var_v0_3 + 1;
                M2C_FIELD(var_a1, s16 *, 0x22) = 0;
                M2C_FIELD(var_a1, s16 *, 0x20) = 0;
                var_v0_3 = temp_v0_3 + 1;
                if (temp_v0_3 < M2C_FIELD(saved_reg_gp, s32 *, 0)) {
                    var_a1 += 0x10;
                    M2C_FIELD(var_a1, s16 *, 0x1A) = 0;
                    M2C_FIELD(var_a1, s16 *, 0x18) = 0;
                    if (var_v0_3 < M2C_FIELD(saved_reg_gp, s32 *, 0)) {
                        goto loop_20;
                    }
                }
            }
            M2C_FIELD(temp_s4, s16 *, 0x16A) = 0xFF;
            M2C_FIELD(temp_s4, s16 *, 0xE8) = 0xFF;
            crimeInitInfo(temp_s6, temp_s5, temp_s4, 0);
            if (M2C_FIELD(temp_s4, u8 *, 0x2E) == 0x84) {
                if (i2cfp_DMI2_BkltFuncs(temp_s5, 0x10, 0, 0) == 0) {
                    cmn_err(4, 0x208);
                }
            }
        } else {
            var_v0_4 = (u8) *NULL;
            if (is_specified(0) != 0) {
                if (var_v0_4 == 0x47) {
                    var_v0_4 = 0x67;
                }
            } else {
                var_v0_4 = 0x67;
            }
            *(M2C_UNK **)0x3E = var_v0_4;
            *(M2C_UNK **)0x38 = 0;
            gbeProbe(temp_s5);
            gbeStop(temp_s5, sp, sp, sp);
            M2C_FIELD(temp_s6, s32 *, 0x408) = 0;
            M2C_FIELD(saved_reg_gp, s32 *, 0) = 0;
            M2C_FIELD(temp_s4, s16 *, 0xE8) = 0xFF;
            M2C_FIELD(temp_s4, s16 *, 0x1EC) = 0xFF;
            M2C_FIELD(temp_s4, s16 *, 0x16A) = 0xFF;
            temp_v0_4 = i2cfp_DualChannelProbe(temp_s5);
            M2C_FIELD(saved_reg_gp, s32 *, 0) = temp_v0_4;
            if (temp_v0_4 != 0) {
                M2C_FIELD(saved_reg_gp, s32 *, 0) = 2;
            }
            M2C_FIELD(temp_s4, s8 *, 0x2C) = (s8) temp_v0_4;
            temp_a0_3 = M2C_FIELD(saved_reg_gp, s32 *, 0);
            var_v0_5 = 0;
            if (temp_a0_3 > 0) {
                var_a1_2 = NULL;
                do {
                    var_a1_2 += 8;
                    M2C_FIELD(var_a1_2, s16 *, 0x2A) = 0;
                    var_v0_5 += 1;
                    M2C_FIELD(var_a1_2, s16 *, 0x28) = 0;
                    M2C_FIELD(var_a1_2, s16 *, 0x1A) = 0;
                    M2C_FIELD(var_a1_2, s16 *, 0x18) = 0;
                } while (var_v0_5 < temp_a0_3);
            }
            crimeInitInfo(temp_s6, temp_s5, temp_s4, 0);
            if (M2C_FIELD(temp_s4, u8 *, 0x2E) == 0x84) {
                if (i2cfp_DMI2_BkltFuncs(temp_s5, 0x10, 0, 0) == 0) {
                    cmn_err(4, 0x208);
                }
            }
            crmFirstInit(0);
            var_s1 = NULL;
        }
        temp_s3 = M2C_FIELD(temp_s4, u16 *, 0x20);
        temp_t1 = temp_s3 + 0x1FF;
        var_s2_2 = M2C_FIELD(temp_s4, u16 *, 0x22);
        if ((M2C_FIELD(var_s1, u8 *, 0x240) == ((s32) (((u32) (temp_t1 >> 8) >> 0x17) + temp_t1) >> 9)) && (temp_t3 = var_s2_2 + 0x7F, (M2C_FIELD(var_s1, u8 *, 0x241) == ((s32) (((u32) (temp_t3 >> 6) >> 0x19) + temp_t3) >> 7)))) {
            M2C_FIELD(var_s1, s32 *, 0x238) = crmNextIncarnation();
        } else {
            crmFreeChunk(var_s1 + 0x228);
            crmAllocOverlayBuffer(var_s1 + 0x228, temp_s3, var_s2_2);
        }
        crimeInitHW(temp_s6, temp_s5, temp_s4, NULL);
        gbeRun(temp_s5, temp_s4, 0);
        gbeBlankScreen(*(M2C_UNK **)0xC, temp_s4, temp_s5, 0);
        if (*(M2C_UNK **)0x3E == 0x64) {
            if (M2C_FIELD(temp_s4, u8 *, 0x2E) != 0) {
                i2cfp_PanelOff(temp_s5);
            }
        }
        crmInitTp(temp_s6, temp_s5, temp_s4, var_s1 + 0x228);
        if (M2C_FIELD(temp_s4, u8 *, 0x2D) != 0) {
            var_s2_2 = (u16) ((s32) var_s2_2 >> 1);
        }
        crime_clearfb(temp_s6, temp_s5);
        htp_register_board(temp_s6, 0, temp_s3, (s32) var_s2_2);
        var_v0 = 1;
    } else {
        var_v0 = 0;
    }
    return var_v0;
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x8, 0xc, 0x20, 0x24, 0x28, 0x2c], gap at: 0x18. */
void crime_init(void) {
    M2C_UNK *temp_a3;
    M2C_UNK *temp_s5;
    M2C_UNK *temp_v0;
    M2C_UNK *temp_v0_3;
    M2C_UNK *var_s0_2;
    s32 temp_v0_2;
    s32 var_a0;
    s32 var_s2;
    s32 var_s2_2;
    u8 temp_a2;
    void *var_a1;
    void *var_s0;

    temp_s5 = *(M2C_UNK **)8;
    if (temp_s5 != NULL) {
        temp_a2 = M2C_FIELD(temp_s5, u8 *, 0x2E);
        if ((temp_a2 != 0x82) && (temp_a2 != 0x83) && (temp_a2 != 0x84)) {
            if (temp_a2 != 0) {
                cmn_err(4, 0x240, (void *) temp_a2);
            }
        } else {
            *saved_reg_gp = NULL;
        }
        temp_v0 = kern_malloc(0x230);
        bzero(temp_v0, 0x230);
        M2C_FIELD(temp_v0, M2C_UNK **, 0x78) = (M2C_UNK *) *NULL;
        M2C_FIELD(temp_v0, void **, 0x90) = (void *) (NULL + 0x10);
        M2C_FIELD(temp_v0, M2C_UNK **, 0x7C) = temp_s5;
        M2C_FIELD(temp_v0, M2C_UNK **, 0x80) = (M2C_UNK *) *(M2C_UNK **)4;
        add_to_inventory(7, 0x11, 0, 0);
        if (*saved_reg_gp != 0) {
            add_to_inventory(0x11, 3, 0, 0);
        }
        if (M2C_FIELD(temp_s5, u8 *, 0x2E) == 0x84) {
            temp_v0_2 = find_inventory(0, 0x11, 4, 0);
            if (temp_v0_2 != 0) {
                replace_in_inventory(temp_v0_2, 0x11, 5, 0);
            } else {
                add_to_inventory(0x11, 5, 0, 0);
            }
        }
        M2C_FIELD(temp_v0, s32 *, 0x34) = 0x20;
        temp_a3 = temp_v0 + 0x144;
        M2C_FIELD(temp_v0, M2C_UNK **, 0x38) = temp_a3;
        M2C_FIELD(temp_v0, s32 *, 0xC) = 1;
        temp_v0_3 = kvpalloc(1, 0x10080010, 0, temp_a3);
        M2C_FIELD(temp_v0, M2C_UNK **, 0x84) = temp_v0_3;
        bzero(temp_v0_3, 0x600);
        init_mutex(temp_v0 + 0x1D4, 0, 0x268, -1);
        if (*saved_reg_gp > 0) {
            var_s0 = NULL;
            var_s2 = 0;
loop_10:
            if (M2C_FIELD(var_s0, s16 *, 0x22) != 0) {
                var_s2 += 1;
                var_s0 += 8;
                if (var_s2 < *saved_reg_gp) {
                    goto loop_10;
                }
            } else {
                if (crime_i2cProbe(*(M2C_UNK **)4, temp_s5, var_s2) != 0) {
                    crime_validate_ddc_data(temp_s5, var_s2);
                }
                var_s2 += 1;
                var_s0 += 8;
                if (var_s2 >= *saved_reg_gp) {

                } else {
                    goto loop_10;
                }
            }
        }
        if (*(M2C_UNK **)0x3C == 0) {
            var_a1 = NULL;
            if (*saved_reg_gp > 0) {
                var_a0 = 1;
loop_28:
                var_a1 += 8;
                if (M2C_FIELD(var_a1, s16 *, 0x22) != 0) {
                    var_a0 += 1;
                    if (var_a0 >= *saved_reg_gp) {
                        goto block_30;
                    }
                    goto loop_28;
                }
            } else {
block_30:
                gbeBlankScreen(temp_v0, temp_s5, M2C_FIELD(temp_v0, M2C_UNK **, 0x80), 1);
            }
        }
        init_mutex(temp_v0 + 0x1DC, 0, 0x278, -1);
        mrlock_init(temp_v0 + 0x1E4, 0, 0x288, -1);
        spinlock_init(temp_v0 + 0x21C, 0x298);
        init_sv(temp_v0 + 0x22C, 0, 0x2A8, -1);
        init_mutex(saved_reg_gp, 0, 0, -1);
        crimeRetraceInit(temp_v0);
        GfxRegisterBoard(NULL + 0x40, temp_v0, temp_s5);
        *(M2C_UNK **)0xC = temp_v0;
        *(M2C_UNK **)0x14 &= ~1;
        *(s64 *)0xB4000028 = ((*(s64 *)0xB4000028 << 0) & 0xFFF0FFFF) << 0;
        M2C_FIELD(*(M2C_UNK **)4, s32 *, 0x10020) = 0xFFFFFF;
        var_s0_2 = (M2C_UNK *)0x12;
        var_s2_2 = 2;
        M2C_FIELD(*(M2C_UNK **)4, s32 *, 0x10024) = 0xFFFFFF;
        do {
            if (setcrimevector(var_s0_2, 1, 0, var_s0_2) != 0) {
                cmn_err(4, 0x2B8, (void *) var_s2_2);
            }
            var_s2_2 += 1;
            var_s0_2 += 1;
        } while (var_s2_2 < 4);
        if (setcrimevector((M2C_UNK *)0x10, 1, 0, temp_v0) != 0) {
            cmn_err(4, 0x2E0);
        }
        if (setcrimevector((M2C_UNK *)0x11, 1, 0, temp_v0) != 0) {
            cmn_err(4, 0x308);
        }
        if (setcrimevector((M2C_UNK *)0x1A, 1, 0, temp_v0) != 0) {
            cmn_err(4, 0x328);
        }
        if (setcrimevector((M2C_UNK *)0x19, 1, 0, temp_v0) != 0) {
            cmn_err(4, 0x348);
        }
    }
}

void crimeError(void *arg0, void *arg1) {
    s32 temp_a2;

    cmn_err(4, 0x368, arg1);
    M2C_FIELD(arg0, s32 *, 0x408) = 0;
    us_delay(0xA);
    temp_a2 = *saved_reg_gp | (*saved_reg_gp << 0xE) | ((*saved_reg_gp << 0x15) | (*saved_reg_gp << 7));
    *saved_reg_gp = temp_a2;
    M2C_FIELD(arg0, s32 *, 0x400) = temp_a2;
    flushbus();
}

/* Warning: Gap in callee-saved word stack region.
 * Saved: [0x0, 0x4, 0x18, 0x1c], gap at: 0x10. */
void crime_regmatch(void *arg0, s64 arg1, s64 arg2) {
    s32 temp_a0;

    unksp8 = arg1;
    unksp10 = arg2;
    if (arg0 != NULL) {
        crimeUnMapGfx();
        temp_a0 = M2C_FIELD(arg0, s32 *, 0x1C);
        M2C_FIELD(arg0, s32 *, 0x28) = 0;
        if (temp_a0 != 0) {
            M2C_FIELD(arg0, s32 *, 0x1C) = 0;
            ddv_destroy_handle(temp_a0);
        }
    }
    M2C_FIELD(unksp10, s32 *, 0x1C) = (s32) unksp8;
}

u8 crime_channel_info(s16 *arg0, s16 *arg1) {
    s16 temp_a6;
    u8 temp_v0;
    void *temp_a4;
    void *temp_a5;

    temp_a4 = *(void **)8;
    if (temp_a4 != NULL) {
        temp_a5 = M2C_FIELD(temp_a4, void **, 0x30);
        if (temp_a5 != NULL) {
            *arg0 = M2C_FIELD(temp_a5, s16 *, 8);
            temp_a6 = M2C_FIELD(M2C_FIELD(temp_a4, void **, 0x30), s16 *, 0xA);
            *arg1 = temp_a6;
            temp_v0 = M2C_FIELD(temp_a4, u8 *, 0x2D);
            if (temp_v0 != 0) {
                *arg1 = temp_a6 * 2;
                return M2C_FIELD(temp_a4, u8 *, 0x2D);
            }
            return temp_v0;
        }
    }
    return 0U;
}

s32 crime_present(s32 arg0) {
    s32 var_v0;

    var_v0 = -1;
    if (arg0 != 0) {
        /* Duplicate return node #1. Try simplifying control flow for better match */
        return var_v0;
    }
    var_v0 = 0;
    if (*(s32 *)8 != 0) {
        return 1;
    }
    return var_v0;
}

s32 crime_video_info(s32 arg0, void *arg1) {
    s32 temp_a4;
    s32 var_v0;
    s32 var_v0_2;
    void *temp_a3;
    void *temp_a5;

    temp_a4 = arg0 * 0x40;
    temp_a5 = M2C_FIELD(temp_a4, void **, 8);
    var_v0 = -1;
    if (temp_a5 != NULL) {
        M2C_FIELD(arg1, u8 *, 0) = (u8) M2C_FIELD(temp_a5, u8 *, 0x28);
        M2C_FIELD(arg1, u8 *, 1) = (u8) M2C_FIELD(temp_a5, u8 *, 0x29);
        M2C_FIELD(arg1, u8 *, 2) = (u8) M2C_FIELD(temp_a5, u8 *, 0x2A);
        M2C_FIELD(arg1, s8 *, 3) = (s8) ((s32) (M2C_FIELD(temp_a5, s32 *, 0x40) + 0x1F4) / 1000);
        M2C_FIELD(arg1, s16 *, 4) = (s16) M2C_FIELD(temp_a5, s16 *, 0x3C);
        M2C_FIELD(arg1, s16 *, 8) = 0;
        M2C_FIELD(arg1, s16 *, 6) = (s16) M2C_FIELD(temp_a5, s16 *, 0x3E);
        var_v0_2 = 0;
        if (M2C_FIELD(temp_a5, s32 *, 0x38) & 2) {
            M2C_FIELD(arg1, s16 *, 8) = 2;
            var_v0_2 = 2;
        }
        temp_a3 = M2C_FIELD(temp_a4, void **, 0xC);
        if (temp_a3 != NULL) {
            var_v0 = 0;
            if (M2C_FIELD(temp_a3, s32 *, 0x88) != 0) {
                M2C_FIELD(arg1, s16 *, 8) = (s16) (var_v0_2 | 1);
                goto block_6;
            }
        } else {
block_6:
            var_v0 = 0;
        }
    }
    return var_v0;
}

s32 crime_resync_sched(s32 arg0, s32 arg1, s32 arg2) {
    s32 temp_at;

    temp_at = arg0 * 0x40;
    M2C_FIELD(temp_at, s32 *, 0x1C) = arg2;
    M2C_FIELD(temp_at, s32 *, 0x18) = arg1;
    return 0;
}

void crm_callvideo(s32 arg0) {
    M2C_UNK (*temp_a4)(s32, void *);
    s32 var_a4;
    void *var_a3;

    var_a4 = 0;
    var_a3 = NULL;
loop_1:
    var_a4 += 1;
    if (M2C_FIELD(var_a3, s32 *, 4) != arg0) {
        var_a3 += 0x40;
        if (var_a4 <= 0) {
            goto loop_1;
        }
    } else {
        temp_a4 = M2C_FIELD(var_a3, M2C_UNK (**)(s32, void *), 0x18);
        if (temp_a4 != NULL) {
            temp_a4(M2C_FIELD(var_a3, s32 *, 0x1C), var_a3);
        }
    }
}
