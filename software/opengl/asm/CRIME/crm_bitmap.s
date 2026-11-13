# Source: ../CRIME/crm_bitmap.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_bitmap.c
# Total Functions: 3

.text

# Function: __glCrmRenderBitmap
# Declared: Line 37 (Source lines: 39-237)
# Address: 0x0d940e90 - 0x0d941ae4 (Size: 3156 bytes, Frame: 160)
.globl __glCrmRenderBitmap
.ent __glCrmRenderBitmap
__glCrmRenderBitmap:
    # Line 39
    addiu	$sp,$sp,-288
    sd	$s2,200($sp)
    # Line 41
    lw	$s2,32188($a0)
    # Line 39
    sd	$s1,176($sp)
    # Line 41
    lw	$s1,32184($a0)
    sd	$s8,232($sp)
    sd	$s5,224($sp)
    sd	$s7,216($sp)
    sd	$s4,264($sp)
    sd	$ra,256($sp)
    # Line 39
    sd	$s0,184($sp)
    # Line 41
    lbu	$at,452($a0)
    # Line 39
    move	$s0,$a2
    sd	$s3,192($sp)
    lui	$v0,0x11
    move	$s3,$a0
    sd	$s6,248($sp)
    addiu	$v0,$v0,-260
    sd	$gp,168($sp)
    # Line 41
    beqz	$at,.L0d941224
    # Line 39
    addu	$gp,$t9,$v0
    # Line 64
    lwc1	$f0,372($a0)
    # Line 62
    lwc1	$f1,368($a0)
    # Line 69
    lwc1	$f4,16($a1)
    # Line 62
    lwc1	$f2,8($a1)
    # Line 64
    lwc1	$f3,12($a1)
    # Line 59
    lw	$s8,0($a1)
    # Line 69
    add.s	$f4,$f4,$f1
    # Line 58
    lw	$s5,4($a1)
    # Line 62
    sub.s	$f1,$f1,$f2
    # Line 64
    add.s	$f3,$f3,$f0
    # Line 69
    swc1	$f4,368($a0)
    # Line 70
    lwc1	$f2,20($a1)
    # Line 62
    trunc.w.s	$f1,$f1
    # Line 64
    trunc.w.s	$f3,$f3
    # Line 62
    mfc1	$v1,$f1
    # Line 70
    sub.s	$f0,$f0,$f2
    # Line 62
    sd	$v1,208($sp)
    # Line 64
    mfc1	$s4,$f3
    # Line 72
    beqz	$s8,.L0d941224
    # Line 70
    swc1	$f0,372($a0)
    # Line 72
    beqz	$s5,.L0d941228
    ld	$s6,248($sp)
    # Line 79
    lw	$a2,32088($a0)
    sw	$a2,0($sp)
    lw	$a0,0($sp)
    sll	$a1,$a0,0xd
    bltz	$a1,.L0d9419a0
    nop
    # Line 81
    lw	$a4,32092($s3)
    lui	$a5,0x4
    or	$a0,$a0,$a5
    beq	$a4,$a0,.L0d940f84
    # Line 82
    li	$t0,1
    sw	$a0,0($sp)
    lw	$a7,0($sp)
    sw	$a0,8216($s1)
    lw	$t0,32188($s3)
    sw	$a7,8216($t0)
    sw	$a7,32092($s3)
    li	$t0,1
.L0d940f84:
    sd	$t0,160($sp)
.L0d940f88:
    lui	$a0,0x1
    addu	$a0,$s3,$a0
    lw	$t1,-32644($a0)
    andi	$t1,$t1,0x1
    beqz	$t1,.L0d9419a8
    nop
    lw	$a1,-32640($a0)
    li	$a2,1
    beq	$a1,$a2,.L0d940fc0
    # Line 89
    li	$s6,1
    # lw $t9, -31936($gp) # &__glCrmDownloadRasterColor
    bal __glCrmDownloadRasterColor
    move	$a0,$s3
    li	$s6,1
.L0d940fc0:
    # Line 94
    lw	$a3,32096($s3)
    lw	$a0,32180($s3)
    beq	$a3,$a0,.L0d940ff0
    # Line 97
    slti	$t0,$s8,9
    lw	$a7,32184($s3)
    sw	$a0,8288($a7)
    lw	$a6,32188($s3)
    lw	$a5,32180($s3)
    sw	$a5,8288($a6)
    lw	$a4,32180($s3)
    sw	$a4,32096($s3)
    slti	$t0,$s8,9
.L0d940ff0:
    beqz	$t0,.L0d941258
    # Line 114
    ld	$v1,208($sp)
    addu	$a0,$s8,$v1
    mtc1	$a0,$f5
    ldc1	$f6,_lit8_bff0000000000000
    cvt.d.w	$f5,$f5
    add.d	$f5,$f5,$f6
    # Line 113
    sll	$v1,$v1,0x6
    sw	$v1,8($sp)
    lw	$v0,8($sp)
    # Line 114
    trunc.w.d	$f5,$f5
    # Line 113
    lw	$at,8($sp)
    sw	$v0,8320($s1)
    # Line 114
    mfc1	$ra,$f5
    # Line 113
    sw	$at,8320($s2)
    # Line 114
    sll	$ra,$ra,0x6
    sw	$ra,12($sp)
    lw	$t9,12($sp)
    lw	$t8,12($sp)
    sw	$t9,8328($s1)
    sw	$t8,8328($s2)
    # Line 115
    sll	$t3,$s4,0x6
    sw	$t3,16($sp)
    lw	$t1,16($sp)
    # Line 116
    sw	$t3,20($sp)
    lw	$t2,20($sp)
    sw	$t2,8332($s1)
    beqz	$s6,.L0d9419e4
    # Line 115
    sw	$t1,8324($s1)
.L0d941064:
    # Line 128
    lw	$a0,30436($s3)
    andi	$a1,$a0,0x4
    beqz	$a1,.L0d9410d4
    # Line 138
    andi	$a2,$a0,0x2000
    # Line 136
    sd	$zero,32($sp)
    ldc1	$f14,32($sp)
    ldc1	$f13,32($sp)
    sdc1	$f14,8656($s1)
    sdc1	$f13,8656($s2)
    # Line 137
    sd	$zero,40($sp)
    ldc1	$f12,40($sp)
    ldc1	$f11,40($sp)
    sdc1	$f12,8664($s1)
    sdc1	$f11,8664($s2)
    # Line 138
    lwc1	$f9,376($s3)
    lwc1	$f10,_lit_42800000
    mul.s	$f9,$f9,$f10
    cvt.d.s	$f9,$f9
    sdc1	$f9,48($sp)
    ldc1	$f8,48($sp)
    trunc.l.d	$f8,$f8
    sdc1	$f8,56($sp)
    ldc1	$f7,56($sp)
    ldc1	$f6,56($sp)
    sdc1	$f7,8648($s1)
    sdc1	$f6,8648($s2)
    lw	$a0,30436($s3)
    andi	$a2,$a0,0x2000
.L0d9410d4:
    beqz	$a2,.L0d941138
    nop
    # Line 143
    sw	$zero,64($sp)
    lw	$t0,64($sp)
    sw	$t0,8576($s1)
    lw	$a7,64($sp)
    sw	$a7,8576($s2)
    # Line 144
    sw	$zero,68($sp)
    lw	$a6,68($sp)
    sw	$a6,8584($s1)
    lw	$a5,68($sp)
    sw	$a5,8584($s2)
    # Line 145
    lwc1	$f15,416($s3)
    ldc1	$f16,_lit8_406fe00000000000
    cvt.d.s	$f15,$f15
    mul.d	$f15,$f15,$f16
    lwc1	$f16,_lit_45800000
    cvt.s.d	$f15,$f15
    mul.s	$f15,$f15,$f16
    trunc.w.s	$f15,$f15
    swc1	$f15,72($sp)
    lw	$a4,72($sp)
    sw	$a4,8568($s1)
    lw	$a3,72($sp)
    sw	$a3,8568($s2)
.L0d941138:
    # Line 149
    lbu	$ra,0($s0)
    sd	$s4,240($sp)
    sll	$ra,$ra,0x18
    sw	$ra,76($sp)
    # Line 150
    lui	$t9,0x1f
    sw	$t9,80($sp)
    lw	$t8,80($sp)
    lw	$t3,80($sp)
    sw	$t8,8384($s1)
    # Line 151
    slti	$t1,$s5,2
    # Line 150
    sw	$t3,8384($s2)
    # Line 151
    lw	$t2,76($sp)
    # Line 149
    addiu	$s0,$s0,1
    # Line 151
    bnez	$t1,.L0d9411bc
    sw	$t2,10436($s1)
    ld	$s4,240($sp)
    subu	$s7,$s4,$s5
    addiu	$s4,$s4,-1
.L0d941180:
    # Line 154
    sll	$at,$s4,0x6
    sw	$at,84($sp)
    lw	$v0,84($sp)
    sw	$v0,8324($s1)
    # Line 155
    sw	$at,88($sp)
    lw	$ra,88($sp)
    sw	$ra,8332($s1)
    # Line 156
    lbu	$t9,0($s0)
    # Line 153
    addiu	$s4,$s4,-1
    # Line 156
    sll	$t9,$t9,0x18
    sw	$t9,76($sp)
    # Line 157
    lw	$t8,76($sp)
    # Line 156
    addiu	$s0,$s0,1
    # Line 153
    bne	$s4,$s7,.L0d941180
    # Line 157
    sw	$t8,10436($s1)
.L0d9411bc:
    # Line 163
    ld	$v1,160($sp)
    beqz	$v1,.L0d941228
    ld	$s6,248($sp)
    lw	$a1,32092($s3)
    lw	$a0,32088($s3)
    beq	$a1,$a0,.L0d941224
    ld	$s4,264($sp)
    ld	$s6,248($sp)
    ld	$s8,232($sp)
    ld	$s5,224($sp)
    ld	$s7,216($sp)
    # Line 237
    ld	$gp,168($sp)
    ld	$s0,184($sp)
    ld	$s1,176($sp)
    ld	$s2,200($sp)
    # Line 235
    lw	$a5,32184($s3)
    ld	$ra,256($sp)
    sw	$a0,8216($a5)
    lw	$a4,32188($s3)
    lw	$a3,32088($s3)
    sw	$a3,8216($a4)
    lw	$a2,32088($s3)
    sw	$a2,32092($s3)
    # Line 237
    ld	$s3,192($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d941224:
    ld	$s6,248($sp)
.L0d941228:
    ld	$s4,264($sp)
    ld	$s7,216($sp)
    ld	$s5,224($sp)
    ld	$s8,232($sp)
    ld	$gp,168($sp)
    ld	$s0,184($sp)
    ld	$ra,256($sp)
    ld	$s1,176($sp)
    ld	$s2,200($sp)
    ld	$s3,192($sp)
    jr	$ra
    addiu	$sp,$sp,288
.L0d941258:
    sd	$s5,272($sp)
    # Line 153
    blez	$s5,.L0d9411bc
    sd	$s4,240($sp)
    li	$ra,1
    li	$t8,2
    li	$t3,3
    lui	$s5,0x1f
    li	$t2,4
    li	$t1,32
    ld	$s7,272($sp)
    addiu	$v0,$s8,-1
    ld	$s4,240($sp)
    addiu	$t9,$s8,30
    slti	$at,$s8,1
    move	$t0,$zero
    lwc1	$f4,_lit_42800000
    movz	$t9,$v0,$at
    lwc1	$f6,_lit_45800000
    subu	$s7,$s4,$s7
    sra	$t9,$t9,0x5
    ldc1	$f5,_lit8_406fe00000000000
    b	.L0d941360
    addiu	$t9,$t9,1
    nop
    nop
    nop
.L0d9412c0:
    # Line 183
    lbu	$at,3($s0)
    sw	$at,76($sp)
.L0d9412c8:
    # Line 185
    lbu	$v1,2($s0)
    lw	$v0,76($sp)
    sll	$v1,$v1,0x8
    or	$v0,$v0,$v1
    sw	$v0,76($sp)
.L0d9412dc:
    # Line 187
    lbu	$a1,1($s0)
    lw	$a0,76($sp)
    sll	$a1,$a1,0x10
    or	$a0,$a0,$a1
    sw	$a0,76($sp)
    # Line 189
    lbu	$at,0($s0)
.L0d9412f4:
    lw	$a3,76($sp)
    sll	$at,$at,0x18
    or	$a3,$a3,$at
    sw	$a3,76($sp)
    # Line 194
    sll	$v1,$a2,0x6
.L0d941308:
    sw	$v1,100($sp)
    lw	$v0,100($sp)
    # Line 195
    addu	$at,$a6,$a2
    # Line 194
    sw	$v0,8320($s1)
    # Line 195
    addiu	$at,$at,-1
    sll	$at,$at,0x6
    sw	$at,104($sp)
    # Line 170
    addiu	$a2,$a2,32
    # Line 191
    addu	$s0,$a7,$s0
    # Line 195
    lw	$v0,104($sp)
    # Line 191
    addiu	$s0,$s0,1
    # Line 197
    beqz	$t0,.L0d9417f0
    # Line 195
    sw	$v0,8328($s1)
.L0d94133c:
    # Line 226
    lw	$a0,76($sp)
    # Line 170
    addiu	$a4,$a4,1
    # Line 226
    sw	$a0,10436($s1)
    sra	$a1,$t9,0x1
.L0d94134c:
    # Line 173
    move	$a6,$a5
    bnez	$a1,.L0d941ad0
    li	$v1,32
.L0d941358:
    # Line 163
    beq	$s4,$s7,.L0d9411bc
    addiu	$t0,$t0,1
.L0d941360:
    # Line 173
    li	$v1,32
    # Line 164
    sll	$a4,$s4,0x6
    sw	$a4,92($sp)
    lw	$a6,92($sp)
    lw	$a5,92($sp)
    sw	$a6,8324($s1)
    sw	$a5,8324($s2)
    # Line 166
    sw	$a4,96($sp)
    andi	$a7,$t9,0x1
    # Line 163
    addiu	$s4,$s4,-1
    # Line 166
    lw	$a3,96($sp)
    # Line 173
    slt	$v1,$v1,$s8
    # Line 166
    lw	$a2,96($sp)
    # Line 173
    move	$a6,$s8
    # Line 169
    move	$a5,$s8
    # Line 166
    sw	$a3,8332($s1)
    # Line 173
    movn	$a6,$t1,$v1
    # Line 170
    move	$a4,$zero
    # Line 166
    sw	$a2,8332($s2)
    # Line 181
    slti	$at,$a6,1
    # Line 170
    ld	$a2,208($sp)
    blez	$t9,.L0d941358
    # Line 181
    addiu	$v0,$a6,-1
    beqz	$a7,.L0d94134c
    sra	$a1,$t9,0x1
    addiu	$a7,$a6,6
    movz	$a7,$v0,$at
    sra	$a7,$a7,0x3
    addiu	$a1,$a7,1
    # Line 180
    sw	$zero,76($sp)
    # Line 181
    beq	$a1,$t2,.L0d9412c0
    # Line 175
    subu	$a5,$s8,$a6
    # Line 181
    beq	$a1,$t3,.L0d9412c8
    nop
    beq	$a1,$t8,.L0d9412dc
    nop
    bne	$a1,$ra,.L0d941308
    # Line 194
    sll	$v1,$a2,0x6
    b	.L0d9412f4
    # Line 189
    lbu	$at,0($s0)
.L0d941400:
    # Line 183
    lbu	$a0,3($s0)
    sw	$a0,76($sp)
.L0d941408:
    # Line 185
    lbu	$a3,2($s0)
    lw	$a1,76($sp)
    sll	$a3,$a3,0x8
    or	$a1,$a1,$a3
    sw	$a1,76($sp)
.L0d94141c:
    # Line 187
    lbu	$v0,1($s0)
    lw	$at,76($sp)
    sll	$v0,$v0,0x10
    or	$at,$at,$v0
    sw	$at,76($sp)
    # Line 189
    lbu	$a0,0($s0)
.L0d941434:
    lw	$v1,76($sp)
    sll	$a0,$a0,0x18
    or	$v1,$v1,$a0
    sw	$v1,76($sp)
    # Line 194
    sll	$v1,$a2,0x6
.L0d941448:
    sw	$v1,100($sp)
    lw	$v0,100($sp)
    # Line 195
    addu	$at,$a6,$a2
    # Line 194
    sw	$v0,8320($s1)
    # Line 195
    addiu	$at,$at,-1
    sll	$at,$at,0x6
    sw	$at,104($sp)
    # Line 170
    addiu	$a2,$a2,32
    # Line 191
    addu	$s0,$a7,$s0
    # Line 195
    lw	$a1,104($sp)
    # Line 191
    addiu	$s0,$s0,1
    # Line 197
    beqz	$t0,.L0d9415bc
    # Line 195
    sw	$a1,8328($s1)
.L0d94147c:
    # Line 170
    addiu	$a4,$a4,1
    # Line 173
    li	$v1,32
    move	$a6,$a5
    slt	$v1,$v1,$a5
    # Line 226
    lw	$a0,76($sp)
    # Line 173
    movn	$a6,$t1,$v1
    # Line 226
    sw	$a0,10436($s1)
    # Line 170
    beq	$t9,$a4,.L0d941358
    # Line 181
    addiu	$v0,$a6,-1
    addiu	$a7,$a6,6
.L0d9414a4:
    slti	$at,$a6,1
    movz	$a7,$v0,$at
    sra	$a7,$a7,0x3
    addiu	$a1,$a7,1
    # Line 175
    subu	$a5,$a5,$a6
    # Line 181
    beq	$a1,$t2,.L0d9414e0
    # Line 180
    sw	$zero,76($sp)
    # Line 181
    beq	$a1,$t3,.L0d9414e8
    nop
    beq	$a1,$t8,.L0d9414fc
    nop
    bne	$a1,$ra,.L0d941528
    # Line 194
    sll	$v1,$a2,0x6
    b	.L0d941514
    # Line 189
    lbu	$a0,0($s0)
.L0d9414e0:
    # Line 183
    lbu	$a0,3($s0)
    sw	$a0,76($sp)
.L0d9414e8:
    # Line 185
    lbu	$a3,2($s0)
    lw	$a1,76($sp)
    sll	$a3,$a3,0x8
    or	$a1,$a1,$a3
    sw	$a1,76($sp)
.L0d9414fc:
    # Line 187
    lbu	$v0,1($s0)
    lw	$at,76($sp)
    sll	$v0,$v0,0x10
    or	$at,$at,$v0
    sw	$at,76($sp)
    # Line 189
    lbu	$a0,0($s0)
.L0d941514:
    lw	$v1,76($sp)
    sll	$a0,$a0,0x18
    or	$v1,$v1,$a0
    sw	$v1,76($sp)
    # Line 194
    sll	$v1,$a2,0x6
.L0d941528:
    sw	$v1,100($sp)
    lw	$v0,100($sp)
    # Line 195
    addu	$at,$a6,$a2
    # Line 194
    sw	$v0,8320($s1)
    # Line 195
    addiu	$at,$at,-1
    sll	$at,$at,0x6
    sw	$at,104($sp)
    # Line 170
    addiu	$a2,$a2,32
    # Line 191
    addu	$s0,$a7,$s0
    # Line 195
    lw	$a1,104($sp)
    # Line 191
    addiu	$s0,$s0,1
    # Line 197
    beqz	$t0,.L0d9416b0
    # Line 195
    sw	$a1,8328($s1)
.L0d94155c:
    # Line 173
    li	$v1,32
.L0d941560:
    move	$a6,$a5
    slt	$v1,$v1,$a5
    movn	$a6,$t1,$v1
    # Line 181
    addiu	$v0,$a6,-1
    addiu	$a7,$a6,6
    slti	$at,$a6,1
    movz	$a7,$v0,$at
    sra	$a7,$a7,0x3
    # Line 226
    lw	$a0,76($sp)
    # Line 181
    addiu	$a1,$a7,1
    # Line 180
    sw	$zero,76($sp)
    # Line 170
    addiu	$a4,$a4,1
    # Line 226
    sw	$a0,10436($s1)
    # Line 181
    beq	$a1,$t2,.L0d941400
    # Line 175
    subu	$a5,$a5,$a6
    # Line 181
    beq	$a1,$t3,.L0d941408
    nop
    beq	$a1,$t8,.L0d94141c
    nop
    bne	$a1,$ra,.L0d941448
    # Line 194
    sll	$v1,$a2,0x6
    b	.L0d941434
    # Line 189
    lbu	$a0,0($s0)
.L0d9415bc:
    # Line 197
    bnez	$a4,.L0d94147c
    nop
    beqz	$s6,.L0d9417a0
    # Line 200
    lw	$v1,4($sp)
.L0d9415cc:
    # Line 203
    lw	$a0,30436($s3)
    andi	$a1,$a0,0x4
    beqz	$a1,.L0d941638
    # Line 213
    andi	$a3,$a0,0x2000
    # Line 211
    sd	$zero,112($sp)
    ldc1	$f27,112($sp)
    ldc1	$f25,112($sp)
    # Line 212
    sd	$zero,120($sp)
    ldc1	$f23,120($sp)
    ldc1	$f21,120($sp)
    # Line 211
    sdc1	$f27,8656($s1)
    sdc1	$f25,8656($s2)
    # Line 212
    sdc1	$f23,8664($s1)
    sdc1	$f21,8664($s2)
    # Line 213
    lwc1	$f19,376($s3)
    mul.s	$f19,$f19,$f4
    cvt.d.s	$f19,$f19
    sdc1	$f19,128($sp)
    ldc1	$f18,128($sp)
    trunc.l.d	$f18,$f18
    sdc1	$f18,136($sp)
    ldc1	$f17,136($sp)
    ldc1	$f16,136($sp)
    sdc1	$f17,8648($s1)
    sdc1	$f16,8648($s2)
    lw	$a0,30436($s3)
    andi	$a3,$a0,0x2000
.L0d941638:
    beqz	$a3,.L0d941694
    nop
    # Line 217
    sw	$zero,144($sp)
    lw	$a0,144($sp)
    lw	$v1,144($sp)
    sw	$a0,8576($s1)
    sw	$v1,8576($s2)
    # Line 218
    sw	$zero,148($sp)
    lw	$v0,148($sp)
    lw	$at,148($sp)
    sw	$v0,8584($s1)
    sw	$at,8584($s2)
    # Line 219
    lwc1	$f29,416($s3)
    cvt.d.s	$f29,$f29
    mul.d	$f29,$f29,$f5
    cvt.s.d	$f29,$f29
    mul.s	$f29,$f6,$f29
    trunc.w.s	$f29,$f29
    swc1	$f29,152($sp)
    lw	$a7,152($sp)
    lw	$a6,152($sp)
    sw	$a7,8568($s1)
    sw	$a6,8568($s2)
.L0d941694:
    # Line 223
    sw	$s5,156($sp)
    lw	$a3,156($sp)
    lw	$a1,156($sp)
    sw	$a3,8384($s1)
    b	.L0d94147c
    sw	$a1,8384($s2)
    nop
.L0d9416b0:
    # Line 197
    bnez	$a4,.L0d941560
    # Line 173
    li	$v1,32
    # Line 197
    beqz	$s6,.L0d9417c8
    # Line 200
    lw	$a6,4($sp)
.L0d9416c0:
    # Line 203
    lw	$a0,30436($s3)
    andi	$a6,$a0,0x4
    beqz	$a6,.L0d94172c
    # Line 213
    andi	$a7,$a0,0x2000
    # Line 211
    sd	$zero,112($sp)
    ldc1	$f9,112($sp)
    ldc1	$f8,112($sp)
    # Line 212
    sd	$zero,120($sp)
    ldc1	$f7,120($sp)
    ldc1	$f3,120($sp)
    # Line 211
    sdc1	$f9,8656($s1)
    sdc1	$f8,8656($s2)
    # Line 212
    sdc1	$f7,8664($s1)
    sdc1	$f3,8664($s2)
    # Line 213
    lwc1	$f2,376($s3)
    mul.s	$f2,$f2,$f4
    cvt.d.s	$f2,$f2
    sdc1	$f2,128($sp)
    ldc1	$f1,128($sp)
    trunc.l.d	$f1,$f1
    sdc1	$f1,136($sp)
    ldc1	$f0,136($sp)
    ldc1	$f31,136($sp)
    sdc1	$f0,8648($s1)
    sdc1	$f31,8648($s2)
    lw	$a0,30436($s3)
    andi	$a7,$a0,0x2000
.L0d94172c:
    beqz	$a7,.L0d941788
    nop
    # Line 217
    sw	$zero,144($sp)
    lw	$a3,144($sp)
    lw	$a1,144($sp)
    sw	$a3,8576($s1)
    sw	$a1,8576($s2)
    # Line 218
    sw	$zero,148($sp)
    lw	$a0,148($sp)
    lw	$v1,148($sp)
    sw	$a0,8584($s1)
    sw	$v1,8584($s2)
    # Line 219
    lwc1	$f10,416($s3)
    cvt.d.s	$f10,$f10
    mul.d	$f10,$f10,$f5
    cvt.s.d	$f10,$f10
    mul.s	$f10,$f6,$f10
    trunc.w.s	$f10,$f10
    swc1	$f10,152($sp)
    lw	$v0,152($sp)
    lw	$at,152($sp)
    sw	$v0,8568($s1)
    sw	$at,8568($s2)
.L0d941788:
    # Line 223
    sw	$s5,156($sp)
    lw	$a7,156($sp)
    lw	$a6,156($sp)
    sw	$a7,8384($s1)
    b	.L0d94155c
    sw	$a6,8384($s2)
.L0d9417a0:
    # Line 197
    lbu	$at,3221($s3)
    beqz	$at,.L0d9418e0
    # Line 203
    lw	$at,4($sp)
    # Line 200
    lw	$a0,0($v1)
    sw	$a0,8400($s1)
    lwc1	$f11,0($v1)
    trunc.l.s	$f11,$f11
    dmfc1	$v0,$f11
    b	.L0d9415cc
    sw	$v0,8400($s2)
.L0d9417c8:
    # Line 197
    lbu	$a1,3221($s3)
    beqz	$a1,.L0d941940
    # Line 203
    lw	$a7,4($sp)
    # Line 200
    lw	$a7,0($a6)
    sw	$a7,8400($s1)
    lwc1	$f12,0($a6)
    trunc.l.s	$f12,$f12
    dmfc1	$a3,$f12
    b	.L0d9416c0
    sw	$a3,8400($s2)
.L0d9417f0:
    # Line 197
    bnez	$a4,.L0d94133c
    nop
    beqz	$s6,.L0d9419bc
    # Line 200
    lw	$v1,4($sp)
.L0d941800:
    # Line 203
    lw	$a0,30436($s3)
    andi	$at,$a0,0x4
    beqz	$at,.L0d94186c
    # Line 213
    andi	$v0,$a0,0x2000
    # Line 211
    sd	$zero,112($sp)
    ldc1	$f21,112($sp)
    ldc1	$f19,112($sp)
    # Line 212
    sd	$zero,120($sp)
    ldc1	$f18,120($sp)
    ldc1	$f17,120($sp)
    # Line 211
    sdc1	$f21,8656($s1)
    sdc1	$f19,8656($s2)
    # Line 212
    sdc1	$f18,8664($s1)
    sdc1	$f17,8664($s2)
    # Line 213
    lwc1	$f16,376($s3)
    mul.s	$f16,$f16,$f4
    cvt.d.s	$f16,$f16
    sdc1	$f16,128($sp)
    ldc1	$f15,128($sp)
    trunc.l.d	$f15,$f15
    sdc1	$f15,136($sp)
    ldc1	$f14,136($sp)
    ldc1	$f13,136($sp)
    sdc1	$f14,8648($s1)
    sdc1	$f13,8648($s2)
    lw	$a0,30436($s3)
    andi	$v0,$a0,0x2000
.L0d94186c:
    beqz	$v0,.L0d9418c8
    nop
    # Line 217
    sw	$zero,144($sp)
    lw	$a7,144($sp)
    lw	$a6,144($sp)
    sw	$a7,8576($s1)
    sw	$a6,8576($s2)
    # Line 218
    sw	$zero,148($sp)
    lw	$a3,148($sp)
    lw	$a1,148($sp)
    sw	$a3,8584($s1)
    sw	$a1,8584($s2)
    # Line 219
    lwc1	$f23,416($s3)
    cvt.d.s	$f23,$f23
    mul.d	$f23,$f23,$f5
    cvt.s.d	$f23,$f23
    mul.s	$f23,$f6,$f23
    trunc.w.s	$f23,$f23
    swc1	$f23,152($sp)
    lw	$a0,152($sp)
    lw	$v1,152($sp)
    sw	$a0,8568($s1)
    sw	$v1,8568($s2)
.L0d9418c8:
    # Line 223
    sw	$s5,156($sp)
    lw	$v0,156($sp)
    lw	$at,156($sp)
    sw	$v0,8384($s1)
    b	.L0d94133c
    sw	$at,8384($s2)
.L0d9418e0:
    # Line 203
    lwc1	$f31,0($at)
    lwc1	$f27,8($at)
    lwc1	$f29,4($at)
    lwc1	$f25,12($at)
    trunc.w.s	$f31,$f31
    trunc.w.s	$f27,$f27
    trunc.w.s	$f29,$f29
    mfc1	$a7,$f31
    trunc.w.s	$f25,$f25
    mfc1	$a6,$f27
    mfc1	$a3,$f29
    sll	$a7,$a7,0x18
    mfc1	$a1,$f25
    sll	$a6,$a6,0x8
    sll	$a3,$a3,0x10
    or	$a3,$a3,$a6
    or	$a1,$a1,$a7
    or	$a1,$a1,$a3
    sw	$a1,108($sp)
    lw	$a0,108($sp)
    lw	$v1,108($sp)
    sw	$a0,8400($s1)
    b	.L0d9415cc
    sw	$v1,8400($s2)
.L0d941940:
    lwc1	$f3,0($a7)
    lwc1	$f1,8($a7)
    lwc1	$f2,4($a7)
    lwc1	$f0,12($a7)
    trunc.w.s	$f3,$f3
    trunc.w.s	$f1,$f1
    trunc.w.s	$f2,$f2
    mfc1	$a6,$f3
    trunc.w.s	$f0,$f0
    mfc1	$a3,$f1
    mfc1	$a1,$f2
    sll	$a6,$a6,0x18
    mfc1	$a0,$f0
    sll	$a3,$a3,0x8
    sll	$a1,$a1,0x10
    or	$a1,$a1,$a3
    or	$a0,$a0,$a6
    or	$a0,$a0,$a1
    sw	$a0,108($sp)
    lw	$v1,108($sp)
    lw	$v0,108($sp)
    sw	$v1,8400($s1)
    b	.L0d9416c0
    sw	$v0,8400($s2)
.L0d9419a0:
    b	.L0d940f88
    # Line 82
    sd	$zero,160($sp)
.L0d9419a8:
    # Line 93
    lw	$t0,248($s3)
    # Line 94
    sw	$zero,-32640($a0)
    move	$s6,$zero
    b	.L0d940fc0
    # Line 93
    sw	$t0,4($sp)
.L0d9419bc:
    # Line 197
    lbu	$at,3221($s3)
    beqz	$at,.L0d941a10
    # Line 203
    lw	$a1,4($sp)
    # Line 200
    lw	$a0,0($v1)
    sw	$a0,8400($s1)
    lwc1	$f7,0($v1)
    trunc.l.s	$f7,$f7
    dmfc1	$v0,$f7
    b	.L0d941800
    sw	$v0,8400($s2)
.L0d9419e4:
    # Line 116
    lbu	$a1,3221($s3)
    beqz	$a1,.L0d941a70
    # Line 128
    lw	$t0,4($sp)
    # Line 125
    lw	$a3,4($sp)
    lw	$a4,0($a3)
    sw	$a4,8400($s1)
    lwc1	$f8,0($a3)
    trunc.l.s	$f8,$f8
    dmfc1	$a2,$f8
    b	.L0d941064
    sw	$a2,8400($s2)
.L0d941a10:
    # Line 203
    lwc1	$f12,0($a1)
    lwc1	$f10,8($a1)
    lwc1	$f11,4($a1)
    lwc1	$f9,12($a1)
    trunc.w.s	$f12,$f12
    trunc.w.s	$f10,$f10
    trunc.w.s	$f11,$f11
    mfc1	$a0,$f12
    trunc.w.s	$f9,$f9
    mfc1	$v1,$f10
    mfc1	$v0,$f11
    sll	$a0,$a0,0x18
    mfc1	$at,$f9
    sll	$v1,$v1,0x8
    sll	$v0,$v0,0x10
    or	$v0,$v0,$v1
    or	$at,$at,$a0
    or	$at,$at,$v0
    sw	$at,108($sp)
    lw	$a7,108($sp)
    lw	$a6,108($sp)
    sw	$a7,8400($s1)
    b	.L0d941800
    sw	$a6,8400($s2)
.L0d941a70:
    # Line 128
    lwc1	$f16,0($t0)
    lwc1	$f14,8($t0)
    lwc1	$f15,4($t0)
    lwc1	$f13,12($t0)
    trunc.w.s	$f16,$f16
    trunc.w.s	$f14,$f14
    trunc.w.s	$f15,$f15
    mfc1	$a7,$f16
    trunc.w.s	$f13,$f13
    mfc1	$a6,$f14
    mfc1	$a5,$f15
    sll	$a7,$a7,0x18
    mfc1	$a4,$f13
    sll	$a6,$a6,0x8
    sll	$a5,$a5,0x10
    or	$a5,$a5,$a6
    or	$a4,$a4,$a7
    or	$a4,$a4,$a5
    sw	$a4,24($sp)
    lw	$a3,24($sp)
    lw	$a2,24($sp)
    sw	$a3,8400($s1)
    b	.L0d941064
    sw	$a2,8400($s2)
.L0d941ad0:
    # Line 173
    slt	$v1,$v1,$a5
    movn	$a6,$t1,$v1
    # Line 181
    addiu	$v0,$a6,-1
    b	.L0d9414a4
    addiu	$a7,$a6,6
.end __glCrmRenderBitmap

# Function: __glCrmRenderFrontBackBitmap
# Declared: Line 243 (Source lines: 245-285)
# Address: 0x0d941af0 - 0x0d941cb8 (Size: 456 bytes, Frame: 240)
.globl __glCrmRenderFrontBackBitmap
.ent __glCrmRenderFrontBackBitmap
__glCrmRenderFrontBackBitmap:
    # Line 252
    lw	$v0,32088($a0)
    # Line 245
    addiu	$sp,$sp,-112
    sd	$s3,24($sp)
    move	$s3,$a1
    # Line 260
    lw	$a1,30656($a0)
    # Line 245
    sd	$s1,72($sp)
    # Line 247
    lw	$s1,32184($a0)
    # Line 252
    sw	$v0,0($sp)
    # Line 245
    sd	$ra,32($sp)
    sd	$s4,40($sp)
    sd	$s2,16($sp)
    lui	$v1,0x11
    # Line 247
    lw	$s2,32188($a0)
    # Line 245
    addiu	$v1,$v1,-3428
    sd	$gp,88($sp)
    addu	$gp,$t9,$v1
    # Line 260
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    # Line 245
    sd	$s0,48($sp)
    move	$s0,$a0
    # Line 253
    lw	$at,8680($s2)
    # Line 245
    move	$s4,$a2
    # Line 260
    bal __glCrmSetStoreBuffer
    sd	$at,56($sp)
    # Line 261
    lw	$a2,32088($s0)
    lw	$a1,32092($s0)
    li	$a0,-3
    # Line 260
    sd	$v0,80($sp)
    # Line 261
    and	$a0,$a0,$a2
    sdc1	$f30,96($sp)
    beq	$a1,$a0,.L0d941b88
    sw	$a0,32088($s0)
    # Line 262
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    lw	$a3,32088($s0)
    sw	$a3,32092($s0)
.L0d941b88:
    # Line 267
    lui	$t9,0x1
    addu	$t9,$s0,$t9
    sd	$t9,64($sp)
    # Line 263
    sw	$zero,4($sp)
    lw	$ra,4($sp)
    sw	$ra,8680($s1)
    lw	$ra,4($sp)
    sw	$ra,8680($s2)
    # Line 267
    lw	$t9,-32496($t9)
    # Line 265
    lwc1	$f0,372($s0)
    # Line 267
    move	$a2,$s4
    move	$a1,$s3
    # Line 264
    lwc1	$f30,368($s0)
    # Line 267
    move	$a0,$s0
    jal	__glCrmSetStoreBuffer
    # Line 265
    sdc1	$f0,8($sp)
    # Line 273
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    move	$a0,$s0
    bal __glCrmSetStoreBuffer
    lw	$a1,30660($s0)
    # Line 274
    lw	$a1,0($sp)
    lw	$a2,32088($s0)
    srl	$a1,$a1,0x1
    ld	$v0,56($sp)
    li	$a0,-3
    andi	$a1,$a1,0x1
    lw	$at,32092($s0)
    and	$a0,$a0,$a2
    sll	$a1,$a1,0x1
    ld	$a5,64($sp)
    or	$a0,$a0,$a1
    ldc1	$f4,8($sp)
    beq	$at,$a0,.L0d941c2c
    sw	$a0,32088($s0)
    # Line 275
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    sw	$a2,32092($s0)
.L0d941c2c:
    # Line 276
    sw	$v0,8680($s1)
    sw	$v0,8680($s2)
    # Line 278
    swc1	$f4,372($s0)
    # Line 277
    swc1	$f30,368($s0)
    # Line 280
    lw	$t9,-32496($a5)
    move	$a2,$s4
    move	$a1,$s3
    jal	__glCrmSetStoreBuffer
    move	$a0,$s0
    ld	$s2,16($sp)
    ld	$s3,24($sp)
    ld	$s4,40($sp)
    ld	$s1,72($sp)
    # Line 282
    lw	$a0,0($sp)
    lw	$a7,32092($s0)
    ld	$v0,80($sp)
    ldc1	$f30,96($sp)
    beq	$a7,$a0,.L0d941c94
    sw	$a0,32088($s0)
    # Line 283
    lw	$t3,32184($s0)
    sw	$a0,8216($t3)
    lw	$t2,32188($s0)
    lw	$t1,32088($s0)
    sw	$t1,8216($t2)
    lw	$t0,32088($s0)
    sw	$t0,32092($s0)
.L0d941c94:
    # Line 284
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    move	$a0,$s0
    bal __glCrmSetStoreBuffer
    move	$a1,$v0
    ld	$ra,32($sp)
    ld	$s0,48($sp)
    # Line 285
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glCrmRenderFrontBackBitmap

# Function: __glCrmRenderLeftRightBitmap
# Declared: Line 295 (Source lines: 297-354)
# Address: 0x0d941cc0 - 0x0d941edc (Size: 540 bytes, Frame: 224)
.globl __glCrmRenderLeftRightBitmap
.ent __glCrmRenderLeftRightBitmap
__glCrmRenderLeftRightBitmap:
    # Line 304
    lw	$v1,32088($a0)
    # Line 297
    addiu	$sp,$sp,-96
    # Line 304
    sw	$v1,0($sp)
    sd	$ra,88($sp)
    # Line 297
    sd	$s3,56($sp)
    sd	$gp,80($sp)
    sd	$s2,16($sp)
    # Line 299
    lw	$s2,32188($a0)
    # Line 297
    lui	$a3,0x11
    sd	$s1,24($sp)
    addiu	$a3,$a3,-3892
    # Line 310
    lw	$a6,8200($s2)
    # Line 299
    lw	$s1,32184($a0)
    # Line 297
    addu	$gp,$t9,$a3
    # Line 310
    li	$a4,-2
    # Line 297
    la	$v0,__glCrmRenderFrontBackBitmap
    # Line 310
    nor	$a5,$a6,$zero
    # Line 305
    lw	$a7,8680($s2)
    # Line 310
    and	$a4,$a4,$a6
    andi	$a5,$a5,0x1
    or	$a4,$a4,$a5
    sw	$a4,8200($s2)
    # Line 311
    sw	$a4,8200($s1)
    lw	$at,12512($a0)
    # Line 297
    move	$s3,$a2
    sd	$s0,72($sp)
    move	$s0,$a0
    sd	$s4,64($sp)
    move	$s4,$a1
    # Line 318
    li	$a1,-3
    # Line 311
    beq	$at,$v0,.L0d941d84
    # Line 305
    sd	$a7,8($sp)
    # Line 318
    lw	$a0,32088($a0)
    lw	$t0,32092($s0)
    and	$a0,$a0,$a1
    beq	$t0,$a0,.L0d941d70
    sw	$a0,32088($s0)
    # Line 319
    lw	$a5,32184($s0)
    sw	$a0,8216($a5)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    sw	$a2,32092($s0)
.L0d941d70:
    # Line 320
    sw	$zero,4($sp)
    lw	$a7,4($sp)
    lw	$a6,4($sp)
    sw	$a7,8680($s1)
    sw	$a6,8680($s2)
.L0d941d84:
    # Line 327
    lwc1	$f1,372($s0)
    # Line 326
    lwc1	$f0,368($s0)
    # Line 329
    lui	$t9,0x1
    addu	$t9,$s0,$t9
    sd	$t9,48($sp)
    # Line 327
    trunc.w.s	$f1,$f1
    # Line 329
    lw	$t9,-32476($t9)
    # Line 326
    trunc.w.s	$f0,$f0
    # Line 327
    mfc1	$t1,$f1
    # Line 329
    move	$a2,$s3
    move	$a1,$s4
    # Line 326
    mfc1	$t0,$f0
    # Line 327
    sd	$t1,40($sp)
    # Line 329
    move	$a0,$s0
    jalr	$t9
    sd	$t0,32($sp)
    # Line 334
    lw	$a0,8200($s2)
    li	$v0,-2
    nor	$v1,$a0,$zero
    # Line 335
    la	$at,__glCrmRenderFrontBackBitmap
    # Line 334
    and	$v0,$v0,$a0
    andi	$v1,$v1,0x1
    or	$v0,$v0,$v1
    sw	$v0,8200($s2)
    # Line 335
    sw	$v0,8200($s1)
    lw	$ra,12512($s0)
    # Line 342
    lw	$a2,0($sp)
    li	$a3,-3
    # Line 335
    beq	$ra,$at,.L0d941e44
    # Line 342
    srl	$a2,$a2,0x1
    # Line 344
    ld	$a7,8($sp)
    # Line 342
    lw	$a0,32088($s0)
    andi	$a2,$a2,0x1
    lw	$a1,32092($s0)
    sll	$a2,$a2,0x1
    and	$a0,$a0,$a3
    or	$a0,$a0,$a2
    beq	$a1,$a0,.L0d941e3c
    sw	$a0,32088($s0)
    # Line 343
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    lw	$a3,32088($s0)
    sw	$a3,32092($s0)
.L0d941e3c:
    # Line 344
    sw	$a7,8680($s1)
    sw	$a7,8680($s2)
.L0d941e44:
    # Line 348
    ld	$ra,40($sp)
    # Line 347
    ld	$at,32($sp)
    # Line 348
    mtc1	$ra,$f2
    # Line 347
    mtc1	$at,$f3
    # Line 348
    cvt.s.w	$f2,$f2
    # Line 347
    cvt.s.w	$f3,$f3
    # Line 350
    ld	$t9,48($sp)
    # Line 348
    swc1	$f2,372($s0)
    # Line 347
    swc1	$f3,368($s0)
    # Line 350
    lw	$t9,-32476($t9)
    ld	$s2,16($sp)
    move	$a2,$s3
    move	$a1,$s4
    ld	$s1,24($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$s3,56($sp)
    # Line 352
    lw	$a0,0($sp)
    lw	$v0,32092($s0)
    ld	$ra,88($sp)
    ld	$s4,64($sp)
    beq	$v0,$a0,.L0d941ecc
    sw	$a0,32088($s0)
    # Line 353
    lw	$a2,32184($s0)
    # Line 354
    ld	$gp,80($sp)
    # Line 353
    sw	$a0,8216($a2)
    lw	$a1,32188($s0)
    lw	$a0,32088($s0)
    sw	$a0,8216($a1)
    lw	$v1,32088($s0)
    sw	$v1,32092($s0)
    # Line 354
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d941ecc:
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glCrmRenderLeftRightBitmap

.rdata
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_42800000:
    .word 0x42800000
_lit_45800000:
    .word 0x45800000

