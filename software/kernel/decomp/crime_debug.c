u8 crmIsGlobalRegWrite(u32 arg0) {
    if (((s32) arg0 >= 0x2000) && (arg0 < 0x2200U)) {
        return *(((s32) arg0 >> 2) & 0x3FF);
    }
    return 1U;
}

s32 crmFindPP(s32 arg0, s32 arg1) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 var_v0;
    s64 var_a0;
    s64 var_s0;
    s64 var_v0_2;
    void *temp_a2;

    if (arg1 != 0) {
        var_s0 = arg1 - 1;
    } else {
        var_s0 = 0x3F;
    }
    var_v0 = -1;
    if (!(subroutine_arg0 & 0x2000)) {
        temp_a1 = (((u32) subroutine_arg0 >> 8) & 7) << 0xC;
        var_v0 = -1;
        if (crmIsGlobalRegWrite(((subroutine_arg0 & 0xFF) * 8) | temp_a1, temp_a1) == 0) {
            var_v0_2 = var_s0 - 1;
            if (var_s0 != arg1) {
loop_6:
                if (var_s0 == 0) {
                    var_v0_2 = 0x3F;
                }
                temp_a2 = arg0 + (var_v0_2 * 8);
                var_a0 = var_v0_2;
                unksp18 = var_v0_2;
                var_s0 = var_v0_2;
                if ((subroutine_arg0 & 0x2000) || (temp_a1_2 = (((u32) subroutine_arg0 >> 8) & 7) << 0xC, var_a0 = unksp18, (crmIsGlobalRegWrite(((subroutine_arg0 & 0xFF) * 8) | temp_a1_2, temp_a1_2, M2C_FIELD(temp_a2, s32 *, 0x204), M2C_FIELD(temp_a2, s32 *, 0x200)) != 0))) {
                    var_v0 = 0;
                    if (var_a0 != 0x3F) {
                        var_v0 = var_a0 + 1;
                    }
                } else {
                    var_v0_2 = var_s0 - 1;
                    if (var_a0 == arg1) {
                        goto block_14;
                    }
                    goto loop_6;
                }
            } else {
block_14:
                var_v0 = -1;
            }
        }
    }
    return var_v0;
}
