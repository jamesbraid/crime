# Source: ../CRIME/crm_context.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_context.c
# Total Functions: 34

.text

# Function: __glCrmIoctl
# Declared: Line 99 (Source lines: 100-102)
# Address: 0x0d943790 - 0x0d9437c4 (Size: 52 bytes, Frame: 16)
.globl __glCrmIoctl
.ent __glCrmIoctl
__glCrmIoctl:
    # Line 100
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,-10756
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 102
    # lw $t9, -22896($gp) # &ioctl
    # Line 100
    sd	$ra,0($sp)
    # Line 102
    jal	ioctl
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glCrmIoctl

# Function: crmScanVice
# Declared: Line 115 (Source lines: 117-122)
# Address: 0x0d9437d0 - 0x0d943804 (Size: 52 bytes, Frame: 0)
.ent crmScanVice
crmScanVice:
    # Line 117
    lw	$at,4($a0)
    li	$v0,15
    li	$a2,3
    bne	$at,$v0,.L0d9437ec
    lw	$v1,8($a0)
    beq	$v1,$a2,.L0d9437f4
    nop
.L0d9437ec:
    # Line 122
    jr	$ra
    move	$v0,$zero
.L0d9437f4:
    # Line 119
    lw	$a3,20($a0)
    # Line 120
    li	$v0,1
    # Line 122
    jr	$ra
    # Line 119
    sw	$a3,0($a1)
.end crmScanVice

# Function: GetBoardInfo
# Declared: Line 130 (Source lines: 131-147)
# Address: 0x0d943810 - 0x0d9438a4 (Size: 148 bytes, Frame: 32)
.ent GetBoardInfo
GetBoardInfo:
    # Line 131
    addiu	$sp,$sp,-32
    sd	$ra,24($sp)
    sd	$s0,16($sp)
    # Line 135
    addiu	$v1,$a0,31512
    sw	$v1,4($sp)
    # Line 136
    li	$v1,496
    sw	$v1,8($sp)
    # Line 137
    li	$v0,0x80f4
    # Line 139
    # lw $t9, -31864($gp) # &__glCrmIoctl
    li	$a1,102
    # Line 134
    sw	$zero,0($sp)
    # Line 137
    addu	$v0,$v0,$a0
    li	$at,-1
    # Line 139
    addiu	$a2,$sp,0
    # Line 137
    sw	$at,0($v0)
    # Line 131
    move	$s0,$a0
    # Line 139
    bal __glCrmIoctl
    lw	$a0,31504($a0)
    bltz	$v0,.L0d943888
    # Line 140
    nop	# was lw $t9, -22892($gp) # &printf
.L0d943860:
    # Line 146
    # lw $t9, -22888($gp) # &scaninvent
    li	$a1,0x80f4
    la	$a0,sub_0d940000
    addu	$a1,$s0,$a1
    jal	scaninvent
    addiu	$a0,$a0,14288
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    # Line 147
    jr	$ra
    addiu	$sp,$sp,32
.L0d943888:
    # Line 140
    la	$a0,sub_0da40000
    jalr	$t9
    addiu	$a0,$a0,6312
    # Line 143
    sb	$zero,31554($s0)
    # Line 142
    sb	$zero,31553($s0)
    b	.L0d943860
    # Line 141
    sb	$zero,31552($s0)
.end GetBoardInfo

# Function: __glCrmAllocAccum
# Declared: Line 150 (Source lines: 151-154)
# Address: 0x0d9438b0 - 0x0d9438f0 (Size: 64 bytes, Frame: 16)
.globl __glCrmAllocAccum
.ent __glCrmAllocAccum
__glCrmAllocAccum:
    # Line 151
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    sd	$gp,8($sp)
    addiu	$v0,$v0,-11044
    addu	$gp,$t9,$v0
    # Line 152
    lw	$t9,31416($a0)
    lw	$a2,3704($a0)
    # Line 151
    move	$at,$a0
    sd	$ra,0($sp)
    move	$a0,$a1
    # Line 152
    jalr	$t9
    lw	$a1,3700($at)
    ld	$ra,0($sp)
    # Line 154
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glCrmAllocAccum

# Function: CheckViewport
# Declared: Line 161 (Source lines: 162-233)
# Address: 0x0d9438f0 - 0x0d943ab4 (Size: 452 bytes, Frame: 192)
.ent CheckViewport
CheckViewport:
    # Line 174
    lw	$a3,32188($a0)
    # Line 176
    lw	$a5,1692($a0)
    # Line 162
    addiu	$sp,$sp,-64
    # Line 174
    lhu	$at,8836($a3)
    # Line 162
    sd	$s0,40($sp)
    sd	$s1,32($sp)
    # Line 174
    andi	$at,$at,0x1
    lw	$s1,1688($a0)
    # Line 162
    move	$s0,$a0
    sd	$ra,56($sp)
    # Line 174
    beqz	$at,.L0d943a68
    # Line 191
    mtc1	$s1,$f7
    # Line 176
    beqz	$s1,.L0d943a90
    move	$a0,$a5
    # Line 179
    lw	$a2,1700($s0)
    sd	$s2,48($sp)
.L0d943930:
    # Line 197
    li	$v1,7168
.L0d943934:
    # Line 189
    lw	$a3,1696($s0)
    # Line 194
    mtc1	$a2,$f11
    # Line 189
    mtc1	$a3,$f9
    # Line 197
    mtc1	$a0,$f12
    lw	$a1,3704($s0)
    # Line 194
    cvt.s.w	$f11,$f11
    # Line 189
    lwc1	$f10,3540($s0)
    # Line 197
    mtc1	$a1,$f8
    # Line 189
    cvt.s.w	$f9,$f9
    # Line 197
    cvt.s.w	$f12,$f12
    # Line 191
    cvt.s.w	$f7,$f7
    # Line 197
    cvt.s.w	$f8,$f8
    madd.s	$f12,$f12,$f11,$f10
    lwc1	$f13,3676($s0)
    # Line 191
    madd.s	$f7,$f7,$f9,$f10
    # Line 197
    sd	$a1,0($sp)
    # Line 194
    mul.s	$f11,$f11,$f10
    # Line 197
    lw	$v0,3204($s0)
    sub.s	$f8,$f8,$f13
    lwc1	$f5,3672($s0)
    # Line 195
    neg.s	$f11,$f11
    # Line 191
    lwc1	$f6,3668($s0)
    # Line 197
    sub.s	$f8,$f8,$f12
    # Line 189
    mul.s	$f9,$f9,$f10
    # Line 195
    swc1	$f11,1728($s0)
    # Line 190
    swc1	$f9,1720($s0)
    # Line 197
    add.s	$f5,$f5,$f8
    # Line 191
    add.s	$f6,$f6,$f7
    # Line 197
    swc1	$f5,1732($s0)
    move	$s2,$a0
    beq	$v0,$v1,.L0d943a78
    # Line 191
    swc1	$f6,1724($s0)
.L0d9439b4:
    # Line 220
    addu	$a4,$s2,$a2
    sd	$a4,8($sp)
    # Line 222
    lw	$t9,11916($s0)
    # Line 219
    addu	$a3,$a3,$s1
    sd	$a3,24($sp)
    # Line 215
    lw	$a2,3700($s0)
    # Line 222
    move	$a0,$s0
    jalr	$t9
    sd	$a2,16($sp)
    ld	$ra,56($sp)
    # Line 226
    li	$t1,1
    li	$a2,1
    # Line 231
    li	$t3,2
    # Line 225
    bltz	$s1,.L0d943a28
    # Line 224
    lbu	$a0,29836($s0)
    # Line 225
    bltz	$s2,.L0d943a28
    ld	$a5,16($sp)
    ld	$a6,24($sp)
    slt	$a5,$a5,$a6
    bnez	$a5,.L0d943a28
    ld	$t0,8($sp)
    ld	$a7,0($sp)
    slt	$a7,$a7,$t0
    bnez	$a7,.L0d943a28
    nop
    # Line 228
    beq	$a0,$a2,.L0d943a54
    # Line 226
    sb	$t1,29836($s0)
    b	.L0d943a34
    ld	$s2,48($sp)
.L0d943a28:
    # Line 228
    beqz	$a0,.L0d943a54
    sb	$zero,29836($s0)
    ld	$s2,48($sp)
.L0d943a34:
    # Line 231
    sw	$t3,4120($zero)
    lw	$t2,11756($s0)
    # Line 233
    ld	$s1,32($sp)
    # Line 231
    ori	$t2,$t2,0x1
    sw	$t2,11756($s0)
    # Line 233
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d943a54:
    ld	$s2,48($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d943a68:
    # Line 179
    lw	$a0,1692($a0)
    lw	$a2,1700($s0)
    b	.L0d943930
    sd	$s2,48($sp)
.L0d943a78:
    # Line 208
    lwc1	$f12,_lit_bf000000
    # Line 209
    add.s	$f13,$f5,$f12
    # Line 208
    add.s	$f12,$f6,$f12
    # Line 209
    swc1	$f13,1732($s0)
    b	.L0d9439b4
    # Line 208
    swc1	$f12,1724($s0)
.L0d943a90:
    # Line 176
    lw	$a2,1700($s0)
    bnez	$a5,.L0d943930
    sd	$s2,48($sp)
    lhu	$t8,8830($a3)
    bne	$a2,$t8,.L0d943934
    # Line 197
    li	$v1,7168
    # Line 179
    addiu	$a0,$a5,20
    b	.L0d943930
    sw	$a0,1692($s0)
.end CheckViewport

# Function: FindWindowSize
# Declared: Line 236 (Source lines: 237-268)
# Address: 0x0d943ac0 - 0x0d943bac (Size: 236 bytes, Frame: 32)
.ent FindWindowSize
FindWindowSize:
    # Line 242
    lw	$a2,32056($a0)
    lw	$a1,0($a2)
    # Line 237
    addiu	$sp,$sp,-32
    # Line 242
    li	$at,5
    # Line 252
    li	$t0,1
    # Line 237
    sd	$s0,16($sp)
    move	$s0,$a0
    # Line 242
    beq	$a1,$at,.L0d943b70
    sd	$ra,24($sp)
    li	$v0,4
    bne	$a1,$v0,.L0d943b18
    # Line 259
    li	$a2,1
    # Line 255
    lw	$v1,32072($a0)
    beqz	$v1,.L0d943b14
    nop
    lw	$a0,3700($a0)
    beqz	$a0,.L0d943b14
    nop
    lw	$a1,3704($s0)
    bnez	$a1,.L0d943b50
    ld	$ra,24($sp)
.L0d943b14:
    # Line 259
    sw	$a2,32072($s0)
.L0d943b18:
    # Line 262
    lw	$t9,28($s0)
    move	$a0,$s0
    addiu	$a4,$sp,12
    addiu	$a3,$sp,8
    addiu	$a2,$sp,4
    jalr	$t9
    addiu	$a1,$sp,0
.L0d943b34:
    # Line 265
    lw	$a1,8($sp)
    lw	$a3,3700($s0)
    lw	$a4,3704($s0)
    bne	$a3,$a1,.L0d943b5c
    lw	$a2,12($sp)
    bne	$a4,$a2,.L0d943b5c
    ld	$ra,24($sp)
.L0d943b50:
    # Line 268
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d943b5c:
    # Line 266
    # lw $t9, -26444($gp) # &__glChangeWindowSize
    jal	__glChangeWindowSize
    move	$a0,$s0
    b	.L0d943b50
    ld	$ra,24($sp)
.L0d943b70:
    # Line 244
    lw	$a5,32072($a0)
    beqz	$a5,.L0d943b90
    nop
    lw	$a6,3700($a0)
    beqz	$a6,.L0d943b90
    lw	$a7,3704($a0)
    bnez	$a7,.L0d943b50
    ld	$ra,24($sp)
.L0d943b90:
    # Line 248
    lw	$t1,28($a2)
    # Line 250
    lw	$t2,140($t1)
    sw	$t2,8($sp)
    # Line 251
    lw	$t1,144($t1)
    sw	$t1,12($sp)
    b	.L0d943b34
    # Line 252
    sw	$t0,32072($s0)
.end FindWindowSize

# Function: ApplyViewport
# Declared: Line 271 (Source lines: 272-305)
# Address: 0x0d943bb0 - 0x0d943c80 (Size: 208 bytes, Frame: 32)
.ent ApplyViewport
ApplyViewport:
    # Line 272
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    lui	$at,0x11
    # Line 274
    lw	$ra,3704($a0)
    # Line 272
    addiu	$at,$at,-11812
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 276
    # lw $t9, -32744($gp) # &sub_0d940000
    # Line 272
    sdc1	$f20,0($sp)
    # Line 274
    mtc1	$ra,$f20
    # Line 276
    addiu	$t9,$t9,15040
    # Line 272
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 276
    bal __glCrmAllocAccum
    # Line 274
    cvt.s.w	$f20,$f20
    # Line 276
    li	$v0,0x812c
    addu	$v0,$v0,$s0
    lbu	$v0,0($v0)
    beqz	$v0,.L0d943c14
    # Line 288
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 284
    lhu	$v1,31544($s0)
    # Line 285
    lhu	$a0,31546($s0)
    sw	$a0,3704($s0)
    # Line 284
    sw	$v1,3700($s0)
    # Line 288
    # lw $t9, -32744($gp) # &sub_0d940000
.L0d943c14:
    addiu	$t9,$t9,14576
    bal __glCrmAllocAccum
    move	$a0,$s0
    lw	$ra,3704($s0)
    mtc1	$ra,$f4
    cvt.s.w	$f4,$f4
    c.eq.s	$f4,$f20
    bc1t	.L0d943c58
    ld	$ra,16($sp)
    # Line 291
    lwc1	$f5,372($s0)
    lw	$at,32088($s0)
    sub.s	$f6,$f4,$f20
    sll	$at,$at,0xb
    add.s	$f5,$f5,$f6
    bltz	$at,.L0d943c6c
    swc1	$f5,372($s0)
    ld	$ra,16($sp)
.L0d943c58:
    ld	$s0,8($sp)
    ldc1	$f20,0($sp)
    # Line 305
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d943c6c:
    # Line 303
    lw	$t9,11908($s0)
    jal	sub_0d940000
    move	$a0,$s0
    b	.L0d943c58
    ld	$ra,16($sp)
.end ApplyViewport

# Function: ApplyScissor
# Declared: Line 312 (Source lines: 313-432)
# Address: 0x0d943c80 - 0x0d943f10 (Size: 656 bytes, Frame: 48)
.ent ApplyScissor
ApplyScissor:
    # Line 313
    addiu	$sp,$sp,-48
    # Line 315
    lw	$a3,32188($a0)
    # Line 313
    sd	$s0,16($sp)
    # Line 328
    lhu	$t1,8836($a3)
    # Line 313
    move	$s0,$a0
    lui	$t2,0x11
    # Line 322
    lw	$a6,32088($a0)
    # Line 313
    addiu	$t2,$t2,-12020
    # Line 328
    andi	$t1,$t1,0x1
    sd	$gp,24($sp)
    # Line 313
    addu	$gp,$t9,$t2
    # Line 322
    srl	$t0,$a6,0x14
    # Line 315
    lw	$a5,32184($a0)
    # Line 328
    beqz	$t1,.L0d943cc8
    # Line 322
    andi	$t0,$t0,0x1
    # Line 330
    lw	$t3,2524($a0)
    beqz	$t3,.L0d943e1c
    nop
.L0d943cc8:
    # Line 333
    lw	$t8,1792($s0)
    andi	$t8,$t8,0x4000
    beqz	$t8,.L0d943df4
    li	$t3,2048
    # Line 339
    lw	$a2,2532($s0)
    # Line 343
    lw	$t2,3704($s0)
    # Line 344
    lw	$t1,2528($s0)
    # Line 354
    lui	$at,0x10
    # Line 345
    lw	$a0,2536($s0)
    # Line 354
    or	$at,$a6,$at
    # Line 344
    subu	$a4,$t2,$t1
    # Line 337
    lw	$a7,2524($s0)
    # Line 345
    addu	$a0,$a0,$t1
    # Line 356
    move	$t1,$zero
    # Line 339
    addu	$a2,$a2,$a7
    # Line 352
    slt	$t8,$t3,$a4
    movn	$a4,$t3,$t8
    # Line 348
    slti	$a1,$a7,0
    # Line 350
    slt	$v0,$t3,$a2
    # Line 348
    movn	$a7,$zero,$a1
    # Line 350
    movn	$a2,$t3,$v0
    # Line 345
    subu	$a0,$t2,$a0
    # Line 354
    sw	$at,32088($s0)
    # Line 349
    slti	$t9,$a0,0
    # Line 356
    beqz	$a7,.L0d943e40
    # Line 349
    movn	$a0,$zero,$t9
.L0d943d30:
    # Line 370
    lui	$a6,0xffff
.L0d943d34:
    addiu	$t2,$a0,4096
    andi	$t2,$t2,0xffff
    # Line 369
    addiu	$t8,$a7,4096
    # Line 372
    lw	$v1,4($sp)
    addiu	$a1,$a2,4096
    # Line 369
    sll	$t8,$t8,0x10
    lw	$t3,0($sp)
    # Line 372
    sll	$a1,$a1,0x10
    andi	$v1,$v1,0xffff
    # Line 369
    andi	$t3,$t3,0xffff
    # Line 372
    or	$v1,$v1,$a1
    addiu	$a1,$a4,4096
    # Line 369
    or	$t3,$t3,$t8
    # Line 372
    and	$v1,$a6,$v1
    # Line 370
    and	$a6,$a6,$t3
    # Line 372
    andi	$a1,$a1,0xffff
    # Line 370
    or	$a6,$a6,$t2
    # Line 374
    sw	$a6,8($sp)
    # Line 372
    or	$v1,$v1,$a1
    # Line 374
    sw	$v1,12($sp)
    ldc1	$f1,8($sp)
    ldc1	$f0,8($sp)
    sdc1	$f1,8264($a5)
    sdc1	$f0,8264($a3)
    # Line 377
    lw	$v0,31228($s0)
    beqz	$v0,.L0d943de4
    nop
    lw	$a0,31328($s0)
    beqz	$a0,.L0d943de4
    # Line 425
    lbu	$a2,31324($s0)
    # Line 378
    lw	$a1,32088($s0)
    sll	$a1,$a1,0xb
    bltz	$a1,.L0d943e50
    nop
    # Line 417
    beqz	$t0,.L0d943de4
    nop
    # Line 425
    beqz	$a2,.L0d943de4
    # Line 428
    nop	# was lw $t9, -31800($gp) # &__glCrmPassDepthFunc
    # Line 427
    sw	$zero,31308($s0)
    sd	$ra,32($sp)
    # Line 428
    move	$a0,$s0
    bal __glCrmPassDepthFunc
    # Line 426
    sb	$zero,31324($s0)
    ld	$ra,32($sp)
.L0d943de4:
    # Line 432
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d943df4:
    move	$a2,$t3
    move	$a4,$t3
    # Line 366
    lui	$a7,0x10
    move	$a0,$zero
    nor	$a7,$a7,$zero
    move	$t1,$zero
    and	$a7,$a6,$a7
    sw	$a7,32088($s0)
    b	.L0d943d30
    move	$a7,$zero
.L0d943e1c:
    # Line 330
    lw	$a0,2528($a0)
    bnez	$a0,.L0d943cc8
    nop
    lhu	$t2,8830($a3)
    lw	$t1,2536($s0)
    bne	$t1,$t2,.L0d943cc8
    # Line 333
    addiu	$t3,$a0,20
    b	.L0d943cc8
    sw	$t3,2528($s0)
.L0d943e40:
    # Line 356
    beqz	$a0,.L0d943e88
    move	$t1,$zero
    b	.L0d943d34
    # Line 370
    lui	$a6,0xffff
.L0d943e50:
    # Line 378
    beqz	$t1,.L0d943ea4
    nop
    beqz	$t0,.L0d943de4
    nop
    # Line 396
    lbu	$t8,31324($s0)
    beqz	$t8,.L0d943de4
    # Line 404
    nop	# was lw $t9, -31800($gp) # &__glCrmPassDepthFunc
    # Line 403
    sw	$zero,31308($s0)
    sd	$ra,32($sp)
    # Line 404
    move	$a0,$s0
    bal __glCrmPassDepthFunc
    # Line 402
    sb	$zero,31324($s0)
    b	.L0d943de4
    ld	$ra,32($sp)
.L0d943e88:
    # Line 356
    lw	$t9,3700($s0)
    bne	$t9,$a2,.L0d943f08
    xor	$at,$t2,$a4
    li	$v0,1
    move	$t1,$zero
    b	.L0d943d30
    movz	$t1,$v0,$at
.L0d943ea4:
    # Line 412
    lbu	$v1,31324($s0)
    bnez	$v1,.L0d943de4
    nop
    lw	$a0,31308($s0)
    lw	$a1,31312($s0)
    beq	$a0,$a1,.L0d943de4
    nop
    # Line 414
    lw	$t9,31336($s0)
    move	$a0,$s0
    move	$a2,$zero
    sd	$ra,32($sp)
    jal	__glCrmPassDepthFunc
    addiu	$a1,$s0,31228
    # Line 416
    # lw $t9, -31800($gp) # &__glCrmPassDepthFunc
    move	$a0,$s0
    # Line 415
    li	$a2,1
    # Line 416
    bal __glCrmPassDepthFunc
    # Line 415
    sb	$a2,31324($s0)
    # Line 432
    ld	$gp,24($sp)
    ld	$ra,32($sp)
    # Line 417
    lw	$a3,31308($s0)
    sw	$a3,31312($s0)
    # Line 432
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d943f08:
    # Line 356
    b	.L0d943d30
    move	$t1,$zero
.end ApplyScissor

# Function: crmGetBufMode
# Declared: Line 460 (Source lines: 462-651)
# Address: 0x0d943f10 - 0x0d94440c (Size: 1276 bytes, Frame: 16)
.ent crmGetBufMode
crmGetBufMode:
    # Line 462
    li	$t3,3073
    beq	$t3,$a1,.L0d9441d8
    addiu	$sp,$sp,-16
    # Line 470
    li	$at,3074
    beq	$a1,$at,.L0d944208
    # Line 473
    addiu	$at,$a0,3376
.L0d943f28:
    # Line 479
    lw	$v0,32056($a0)
    lw	$v0,0($v0)
    li	$t8,1
    beq	$v0,$t8,.L0d9441b0
.L0d943f38:
    move	$t0,$zero
    # Line 481
    lw	$v1,32060($a0)
.L0d943f40:
    lw	$v1,0($v1)
    beq	$v1,$t8,.L0d9441c4
.L0d943f48:
    move	$t1,$zero
    lw	$a4,30656($a0)
.L0d943f50:
    bne	$a4,$a2,.L0d943fa4
    # Line 494
    li	$v0,1028
.L0d943f58:
    # Line 532
    lw	$a7,0($sp)
.L0d943f5c:
    lbu	$at,4($a7)
    lw	$t2,0($a3)
    li	$t9,-241
    beqz	$at,.L0d9442c0
    and	$t2,$t2,$t9
    # Line 533
    lw	$a5,40($a7)
    lw	$a6,48($a7)
    lw	$a4,44($a7)
    lw	$a2,52($a7)
    addu	$a5,$a5,$a6
    addu	$a4,$a4,$a5
    # Line 536
    addu	$a6,$a2,$a4
    movz	$a6,$a4,$a2
    slti	$v1,$a6,9
    bnez	$v1,.L0d943fb8
    # Line 540
    ori	$a2,$t2,0x20
    b	.L0d943fc0
    sw	$a2,0($a3)
.L0d943fa4:
    # Line 494
    lw	$a7,30660($a0)
    bne	$a7,$a2,.L0d9440ec
    # Line 498
    addiu	$t2,$a0,31228
    b	.L0d943f58
    li	$v0,1029
.L0d943fb8:
    # Line 542
    ori	$a2,$t2,0x10
    sw	$a2,0($a3)
.L0d943fc0:
    # Line 548
    li	$t2,24
    beq	$a6,$t2,.L0d9441a0
    # Line 551
    li	$a4,-13
    # Line 548
    li	$t9,32
    beq	$a6,$t9,.L0d94419c
    li	$at,12
    beq	$a6,$at,.L0d94418c
    # Line 556
    li	$a4,-13
    # Line 548
    li	$v1,15
    beq	$a6,$v1,.L0d94418c
    # Line 556
    li	$a4,-13
    # Line 548
    li	$a4,16
    beq	$a6,$a4,.L0d944188
    li	$a5,8
    beq	$a6,$a5,.L0d944398
.L0d943ffc:
    # Line 567
    xor	$at,$t3,$a1
    sltiu	$at,$at,1
    andi	$t9,$t1,0xff
    andi	$t2,$t0,0xff
    move	$a6,$t9
    movn	$a6,$t2,$at
    beqz	$a6,.L0d944230
    nop
    # Line 569
    lbu	$a6,31559($a0)
    li	$v1,32
    beq	$a6,$v1,.L0d9442d0
    # Line 571
    li	$a4,-769
    # Line 569
    li	$a4,16
    beq	$a6,$a4,.L0d944314
    # Line 576
    li	$a4,-769
.L0d944038:
    # Line 594
    beq	$t3,$a1,.L0d94404c
    # Line 596
    li	$t0,-7169
    # Line 594
    lbu	$a5,3536($a0)
    beqz	$a5,.L0d944210
.L0d944048:
    # Line 596
    li	$t0,-7169
.L0d94404c:
    and	$a2,$t0,$a2
    sw	$a2,0($a3)
.L0d944054:
    # Line 598
    lbu	$a6,7($a7)
    beqz	$a6,.L0d944090
    nop
    # Line 605
    ori	$a2,$a2,0x2
    sw	$a2,0($a3)
    # Line 615
    lw	$a6,1892($a0)
    li	$t1,1024
    beq	$a6,$t1,.L0d94417c
    li	$t3,1026
    beq	$a6,$t3,.L0d94417c
    li	$t8,1030
    beq	$a6,$t8,.L0d94417c
    # Line 622
    li	$at,-2
    and	$a2,$a2,$at
    sw	$a2,0($a3)
.L0d944090:
    # Line 624
    lbu	$v1,6($a7)
    beqz	$v1,.L0d944160
    # Line 629
    li	$a4,3074
    beq	$a1,$a4,.L0d94427c
    nop
.L0d9440a4:
    # Line 632
    lw	$a1,32048($a0)
.L0d9440a8:
    # Line 635
    lbu	$a5,7($a7)
    beqz	$a5,.L0d944290
.L0d9440b0:
    # Line 644
    li	$a6,1029
    bne	$v0,$a6,.L0d944160
    nop
    lbu	$a7,3536($a0)
    bnez	$a7,.L0d9440d8
    nop
    beqz	$t2,.L0d944160
    nop
    beqz	$t9,.L0d944160
    nop
.L0d9440d8:
    # Line 651
    addiu	$sp,$sp,16
    # Line 646
    and	$t0,$t0,$a2
    ori	$t0,$t0,0x400
    # Line 651
    jr	$ra
    # Line 646
    sw	$t0,0($a3)
.L0d9440ec:
    # Line 498
    bne	$a2,$t2,.L0d944168
    # Line 502
    li	$v0,6145
.L0d9440f4:
    # Line 518
    beq	$t3,$a1,.L0d94410c
    nop
    lbu	$t3,3536($a0)
    andi	$a7,$t0,0xff
    beqz	$t3,.L0d9443a8
    andi	$t0,$t1,0xff
.L0d94410c:
    # Line 520
    lw	$a2,0($a3)
    li	$a4,-7169
    and	$a2,$a2,$a4
    ori	$a2,$a2,0x800
    sw	$a2,0($a3)
.L0d944120:
    # Line 524
    li	$a5,-769
    and	$a5,$a2,$a5
    # Line 525
    li	$a6,-241
    # Line 524
    ori	$a5,$a5,0x200
    # Line 525
    and	$a5,$a5,$a6
    # Line 526
    li	$a6,-13
    # Line 525
    ori	$a5,$a5,0x20
    # Line 651
    addiu	$sp,$sp,16
    # Line 526
    and	$a5,$a5,$a6
    # Line 527
    li	$a6,-3
    # Line 526
    ori	$a5,$a5,0x8
    # Line 527
    and	$a5,$a5,$a6
    # Line 528
    li	$a6,-2
    and	$a5,$a5,$a6
    # Line 651
    jr	$ra
    # Line 528
    sw	$a5,0($a3)
.L0d944160:
    # Line 651
    jr	$ra
    addiu	$sp,$sp,16
.L0d944168:
    # Line 502
    addiu	$a6,$a0,31108
    bne	$a2,$a6,.L0d9441e4
    nop
    # Line 506
    b	.L0d9440f4
    li	$v0,6145
.L0d94417c:
    # Line 619
    ori	$a2,$a2,0x1
    b	.L0d944090
    sw	$a2,0($a3)
.L0d944188:
    # Line 556
    li	$a4,-13
.L0d94418c:
    and	$a2,$a2,$a4
    ori	$a2,$a2,0x4
    # Line 557
    b	.L0d943ffc
    # Line 556
    sw	$a2,0($a3)
.L0d94419c:
    # Line 551
    li	$a4,-13
.L0d9441a0:
    and	$a2,$a2,$a4
    ori	$a2,$a2,0x8
    b	.L0d943ffc
    sw	$a2,0($a3)
.L0d9441b0:
    # Line 479
    lw	$a5,3300($a0)
    bnez	$a5,.L0d943f38
    move	$t0,$t8
    b	.L0d943f40
    # Line 481
    lw	$v1,32060($a0)
.L0d9441c4:
    lw	$a6,3460($a0)
    bnez	$a6,.L0d943f48
    li	$t1,1
    b	.L0d943f50
    lw	$a4,30656($a0)
.L0d9441d8:
    # Line 470
    addiu	$a7,$a0,3216
    b	.L0d943f28
    sw	$a7,0($sp)
.L0d9441e4:
    # Line 508
    bnez	$a2,.L0d94438c
    li	$t2,3074
    bne	$a1,$t2,.L0d944380
    li	$v0,1029
    lbu	$t9,3382($a0)
    beqz	$t9,.L0d944400
    nop
    b	.L0d943f5c
    # Line 532
    lw	$a7,0($sp)
.L0d944208:
    # Line 473
    b	.L0d943f28
    sw	$at,0($sp)
.L0d944210:
    # Line 594
    beqz	$t2,.L0d944220
    # Line 598
    li	$t0,-7169
    # Line 594
    bnez	$t9,.L0d944048
    # Line 598
    li	$t0,-7169
.L0d944220:
    and	$a2,$t0,$a2
    ori	$a2,$a2,0x400
    b	.L0d944054
    sw	$a2,0($a3)
.L0d944230:
    # Line 584
    lbu	$a4,6($a7)
    beqz	$a4,.L0d94435c
    # Line 589
    li	$a5,-3
    # Line 584
    srl	$a5,$a2,0x2
    andi	$a5,$a5,0x3
    sltiu	$a5,$a5,2
    beqz	$a5,.L0d94435c
    # Line 589
    li	$a5,-3
    # Line 586
    ori	$a2,$a2,0x2
    # Line 587
    srl	$a4,$a2,0x2
    andi	$a4,$a4,0x3
    addiu	$a4,$a4,1
    li	$a5,-769
    andi	$a4,$a4,0x3
    and	$a2,$a2,$a5
    sll	$a4,$a4,0x8
    or	$a2,$a2,$a4
    b	.L0d944038
    sw	$a2,0($a3)
.L0d94427c:
    # Line 629
    lbu	$a5,3536($a0)
    bnez	$a5,.L0d9440a4
    nop
    # Line 630
    b	.L0d9440a8
    lw	$a1,32052($a0)
.L0d944290:
    # Line 635
    sll	$a6,$a2,0x1e
    bgez	$a6,.L0d9440b0
    # Line 636
    li	$a7,1028
    beq	$v0,$a7,.L0d9443f0
.L0d9442a0:
    li	$t0,1029
    beq	$v0,$t0,.L0d9443e0
    # Line 640
    li	$t1,-2
.L0d9442ac:
    and	$t1,$a2,$t1
    sw	$t1,0($a3)
.L0d9442b4:
    # Line 642
    li	$v0,1032
    # Line 651
    jr	$ra
    addiu	$sp,$sp,16
.L0d9442c0:
    # Line 545
    lw	$a6,36($a7)
    # Line 546
    sw	$t2,0($a3)
    b	.L0d943fc0
    move	$a2,$t2
.L0d9442d0:
    # Line 571
    and	$a2,$a2,$a4
    ori	$a2,$a2,0x200
    sw	$a2,0($a3)
    # Line 572
    lbu	$at,6($a7)
    beqz	$at,.L0d9442f8
    move	$a6,$zero
    srl	$a5,$a2,0x2
    andi	$a5,$a5,0x3
    beq	$t8,$a5,.L0d9443d0
    move	$a6,$zero
.L0d9442f8:
    andi	$a4,$a6,0x1
    li	$a5,-3
    sll	$a4,$a4,0x1
    and	$a2,$a2,$a5
    or	$a2,$a2,$a4
    b	.L0d944038
    sw	$a2,0($a3)
.L0d944314:
    # Line 576
    and	$a2,$a2,$a4
    ori	$a2,$a2,0x100
    sw	$a2,0($a3)
    # Line 577
    lbu	$a5,6($a7)
    beqz	$a5,.L0d94433c
    move	$a6,$zero
    srl	$a5,$a2,0x2
    andi	$a5,$a5,0x3
    beqz	$a5,.L0d9443d8
    move	$a6,$zero
.L0d94433c:
    andi	$a4,$a6,0x1
    li	$a5,-3
    sll	$a4,$a4,0x1
    and	$a2,$a2,$a5
    or	$a2,$a2,$a4
    # Line 579
    b	.L0d944038
    # Line 577
    sw	$a2,0($a3)
    # Line 589
    li	$a5,-3
.L0d94435c:
    and	$a2,$a2,$a5
    # Line 590
    srl	$a4,$a2,0x2
    li	$a5,-769
    andi	$a4,$a4,0x3
    and	$a2,$a2,$a5
    sll	$a4,$a4,0x8
    or	$a2,$a2,$a4
    b	.L0d944038
    sw	$a2,0($a3)
.L0d944380:
    # Line 511
    move	$v0,$zero
    # Line 651
    jr	$ra
    addiu	$sp,$sp,16
.L0d94438c:
    # Line 511
    move	$v0,$zero
    # Line 651
    jr	$ra
    addiu	$sp,$sp,16
.L0d944398:
    # Line 559
    li	$a6,-13
    and	$a2,$a2,$a6
    # Line 560
    b	.L0d943ffc
    # Line 559
    sw	$a2,0($a3)
.L0d9443a8:
    # Line 518
    beqz	$a7,.L0d9443b8
    nop
    bnez	$t0,.L0d94410c
    nop
.L0d9443b8:
    # Line 522
    lw	$a2,0($a3)
    li	$a4,-7169
    and	$a2,$a2,$a4
    ori	$a2,$a2,0x400
    b	.L0d944120
    sw	$a2,0($a3)
.L0d9443d0:
    # Line 572
    b	.L0d9442f8
    li	$a6,1
.L0d9443d8:
    # Line 577
    b	.L0d94433c
    li	$a6,1
.L0d9443e0:
    # Line 636
    bnez	$a1,.L0d9442ac
    # Line 640
    li	$t1,-2
    b	.L0d9443f8
    # Line 638
    ori	$a5,$a2,0x1
.L0d9443f0:
    # Line 636
    beqz	$a1,.L0d9442a0
    # Line 638
    ori	$a5,$a2,0x1
.L0d9443f8:
    b	.L0d9442b4
    sw	$a5,0($a3)
.L0d944400:
    # Line 511
    move	$v0,$zero
    # Line 651
    jr	$ra
    addiu	$sp,$sp,16
.end crmGetBufMode

# Function: __glCrmGetSrcBufMode
# Declared: Line 655 (Source lines: 656-658)
# Address: 0x0d944410 - 0x0d944454 (Size: 68 bytes, Frame: 16)
.globl __glCrmGetSrcBufMode
.ent __glCrmGetSrcBufMode
__glCrmGetSrcBufMode:
    # Line 656
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    lui	$ra,0x11
    addiu	$ra,$ra,-13956
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 657
    # lw $t9, -32744($gp) # &sub_0d940000
    # Line 656
    move	$at,$a1
    # Line 657
    addiu	$t9,$t9,16144
    li	$a1,3074
    # Line 656
    move	$a3,$a2
    # Line 657
    bal __glCrmAllocAccum
    move	$a2,$at
    ld	$ra,0($sp)
    # Line 658
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glCrmGetSrcBufMode

# Function: __glCrmGetDstBufMode
# Declared: Line 660 (Source lines: 661-663)
# Address: 0x0d944460 - 0x0d9444a4 (Size: 68 bytes, Frame: 16)
.globl __glCrmGetDstBufMode
.ent __glCrmGetDstBufMode
__glCrmGetDstBufMode:
    # Line 661
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    lui	$ra,0x11
    addiu	$ra,$ra,-14036
    sd	$gp,8($sp)
    addu	$gp,$t9,$ra
    # Line 662
    # lw $t9, -32744($gp) # &sub_0d940000
    # Line 661
    move	$at,$a1
    # Line 662
    addiu	$t9,$t9,16144
    li	$a1,3073
    # Line 661
    move	$a3,$a2
    # Line 662
    bal __glCrmAllocAccum
    move	$a2,$at
    ld	$ra,0($sp)
    # Line 663
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glCrmGetDstBufMode

# Function: __glCrmSetDrawBuffer
# Declared: Line 670 (Source lines: 671-717)
# Address: 0x0d9444b0 - 0x0d944650 (Size: 416 bytes, Frame: 192)
.globl __glCrmSetDrawBuffer
.ent __glCrmSetDrawBuffer
__glCrmSetDrawBuffer:
    # Line 676
    lw	$at,32184($a0)
    # Line 671
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    lui	$ra,0x11
    # Line 676
    lw	$v0,32188($a0)
    # Line 671
    addiu	$ra,$ra,-14116
    sd	$gp,56($sp)
    addu	$gp,$t9,$ra
    # Line 678
    # lw $t9, -32744($gp) # &sub_0d940000
    # Line 676
    sd	$v0,32($sp)
    # Line 671
    move	$a2,$a1
    # Line 676
    sd	$at,24($sp)
    # Line 678
    addiu	$t9,$t9,16144
    li	$a1,3073
    addiu	$a3,$sp,0
    # Line 671
    sd	$s0,40($sp)
    move	$s0,$a0
    # Line 678
    bal __glCrmAllocAccum
    sd	$s1,16($sp)
    # Line 679
    ld	$a4,32($sp)
    ld	$a6,24($sp)
    lw	$a5,0($sp)
    sw	$a5,8200($a6)
    lw	$a3,0($sp)
    # Line 680
    li	$a2,0x80cc
    # Line 679
    sw	$a3,8200($a4)
    # Line 680
    addu	$a2,$s0,$a2
    lw	$a1,0($sp)
    sw	$a1,0($a2)
    lw	$a0,0($sp)
    srl	$a0,$a0,0xa
    andi	$a0,$a0,0x7
    sll	$at,$a0,0x2
    addu	$at,$s0,$at
    # Line 686
    li	$t2,6145
    # Line 695
    li	$v1,2
    # Line 680
    lw	$at,32076($at)
    # Line 686
    li	$t1,1029
    li	$t0,1032
    li	$a7,1028
    # Line 701
    li	$t8,5
    ld	$ra,48($sp)
    # Line 680
    beq	$at,$v0,.L0d9445e8
    # Line 678
    move	$s1,$v0
    # Line 686
    beq	$v0,$a7,.L0d9445fc
    nop
    beq	$v0,$t0,.L0d9445fc
    nop
    beq	$v0,$t1,.L0d944620
    nop
    beq	$v0,$t2,.L0d94462c
    nop
.L0d944580:
    # Line 701
    sb	$a0,10($sp)
    # Line 700
    sb	$zero,9($sp)
    # Line 701
    lw	$v0,32056($s0)
    lw	$t3,0($v0)
    beq	$t3,$t8,.L0d944604
    nop
    # Line 711
    sw	$zero,12($sp)
    # Line 710
    sb	$zero,11($sp)
.L0d9445a0:
    # Line 713
    # lw $t9, -31864($gp) # &__glCrmIoctl
    addiu	$a2,$sp,8
    li	$a1,22007
    bal __glCrmIoctl
    lw	$a0,31504($s0)
    bltz	$v0,.L0d944634
    # Line 716
    lw	$t9,0($sp)
.L0d9445bc:
    srl	$t9,$t9,0xa
    # Line 717
    ld	$gp,56($sp)
    # Line 716
    andi	$t9,$t9,0x7
    # Line 717
    ld	$ra,48($sp)
    # Line 716
    sll	$t9,$t9,0x2
    addu	$t9,$s0,$t9
    # Line 717
    ld	$s0,40($sp)
    # Line 716
    sw	$s1,32076($t9)
    # Line 717
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9445e8:
    ld	$s0,40($sp)
    ld	$s1,16($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9445fc:
    b	.L0d944580
    # Line 689
    sb	$zero,8($sp)
.L0d944604:
    # Line 704
    lw	$ra,28($v0)
    # Line 707
    li	$at,1
    sb	$at,11($sp)
    # Line 708
    lw	$ra,156($ra)
    lw	$ra,0($ra)
    b	.L0d9445a0
    sw	$ra,12($sp)
.L0d944620:
    # Line 692
    li	$v0,1
    # Line 693
    b	.L0d944580
    # Line 692
    sb	$v0,8($sp)
.L0d94462c:
    # Line 696
    b	.L0d944580
    # Line 695
    sb	$v1,8($sp)
.L0d944634:
    # Line 714
    lw	$t9,20($s0)
    la	$a1,sub_0da40000
    move	$a0,$s0
    jal	__glCrmIoctl
    addiu	$a1,$a1,6360
    b	.L0d9445bc
    # Line 716
    lw	$t9,0($sp)
.end __glCrmSetDrawBuffer

# Function: __glCrmSetReadBuffer
# Declared: Line 720 (Source lines: 721-767)
# Address: 0x0d944650 - 0x0d9447f4 (Size: 420 bytes, Frame: 192)
.globl __glCrmSetReadBuffer
.ent __glCrmSetReadBuffer
__glCrmSetReadBuffer:
    # Line 726
    lw	$at,32184($a0)
    # Line 721
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    lui	$ra,0x11
    # Line 726
    lw	$v0,32188($a0)
    # Line 721
    addiu	$ra,$ra,-14532
    sd	$gp,56($sp)
    addu	$gp,$t9,$ra
    # Line 728
    # lw $t9, -32744($gp) # &sub_0d940000
    # Line 726
    sd	$v0,32($sp)
    # Line 721
    move	$a2,$a1
    # Line 726
    sd	$at,24($sp)
    # Line 728
    addiu	$t9,$t9,16144
    li	$a1,3074
    addiu	$a3,$sp,0
    # Line 721
    sd	$s0,40($sp)
    move	$s0,$a0
    # Line 728
    bal __glCrmAllocAccum
    sd	$s1,16($sp)
    # Line 729
    ld	$a4,32($sp)
    ld	$a6,24($sp)
    lw	$a5,0($sp)
    sw	$a5,8192($a6)
    lw	$a3,0($sp)
    # Line 730
    li	$a2,0x80d0
    # Line 729
    sw	$a3,8192($a4)
    # Line 730
    addu	$a2,$s0,$a2
    lw	$a1,0($sp)
    sw	$a1,0($a2)
    lw	$a0,0($sp)
    srl	$a0,$a0,0xa
    andi	$a0,$a0,0x7
    sll	$at,$a0,0x2
    addu	$at,$s0,$at
    lw	$at,32076($at)
    # Line 736
    li	$t2,6145
    li	$t1,1029
    li	$t0,1032
    # Line 728
    move	$s1,$v0
    ld	$ra,48($sp)
    # Line 730
    beq	$at,$v0,.L0d944788
    # Line 742
    li	$a3,1
    # Line 751
    li	$t8,5
    # Line 736
    li	$a7,1028
    beq	$v0,$a7,.L0d94479c
    nop
    beq	$v0,$t0,.L0d94479c
    nop
    beq	$v0,$t1,.L0d9447c0
    nop
    beq	$v0,$t2,.L0d9447c8
    li	$a3,1
.L0d944720:
    # Line 751
    sb	$a0,10($sp)
    # Line 750
    sb	$a3,9($sp)
    # Line 751
    lw	$v0,32060($s0)
    lw	$t3,0($v0)
    beq	$t3,$t8,.L0d9447a8
    nop
    # Line 761
    sw	$zero,12($sp)
    # Line 760
    sb	$zero,11($sp)
.L0d944740:
    # Line 763
    # lw $t9, -31864($gp) # &__glCrmIoctl
    addiu	$a2,$sp,8
    li	$a1,22007
    bal __glCrmIoctl
    lw	$a0,31504($s0)
    bltz	$v0,.L0d9447d8
    # Line 766
    lw	$t9,0($sp)
.L0d94475c:
    srl	$t9,$t9,0xa
    # Line 767
    ld	$gp,56($sp)
    # Line 766
    andi	$t9,$t9,0x7
    # Line 767
    ld	$ra,48($sp)
    # Line 766
    sll	$t9,$t9,0x2
    addu	$t9,$s0,$t9
    # Line 767
    ld	$s0,40($sp)
    # Line 766
    sw	$s1,32076($t9)
    # Line 767
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d944788:
    ld	$s0,40($sp)
    ld	$s1,16($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d94479c:
    # Line 739
    li	$a3,1
    b	.L0d944720
    sb	$zero,8($sp)
.L0d9447a8:
    # Line 754
    lw	$ra,28($v0)
    # Line 757
    sb	$a3,11($sp)
    # Line 758
    lw	$ra,156($ra)
    lw	$ra,0($ra)
    b	.L0d944740
    sw	$ra,12($sp)
.L0d9447c0:
    # Line 743
    b	.L0d944720
    # Line 742
    sb	$a3,8($sp)
.L0d9447c8:
    # Line 746
    li	$a3,1
    # Line 745
    li	$at,2
    # Line 746
    b	.L0d944720
    # Line 745
    sb	$at,8($sp)
.L0d9447d8:
    # Line 764
    lw	$t9,20($s0)
    la	$a1,sub_0da40000
    move	$a0,$s0
    jal	__glCrmIoctl
    addiu	$a1,$a1,6392
    b	.L0d94475c
    # Line 766
    lw	$t9,0($sp)
.end __glCrmSetReadBuffer

# Function: __glCrmSetCurrentBuffers
# Declared: Line 770 (Source lines: 772-823)
# Address: 0x0d944800 - 0x0d9449b4 (Size: 436 bytes, Frame: 48)
.globl __glCrmSetCurrentBuffers
.ent __glCrmSetCurrentBuffers
__glCrmSetCurrentBuffers:
    # Line 774
    lw	$v0,11760($a0)
    # Line 772
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$s1,16($sp)
    # Line 775
    lw	$a6,11764($a0)
    # Line 772
    move	$s1,$a2
    move	$s0,$a0
    # Line 777
    lw	$a4,1236($a0)
    # Line 774
    sd	$v0,8($sp)
    # Line 777
    li	$a7,1028
    # Line 772
    lui	$at,0x11
    sd	$ra,40($sp)
    addiu	$at,$at,-14964
    # Line 775
    move	$a5,$a6
    sd	$gp,32($sp)
    # Line 777
    beq	$a7,$a4,.L0d944968
    # Line 772
    addu	$gp,$t9,$at
    # Line 777
    li	$v0,1029
    beq	$a4,$v0,.L0d944950
    nop
.L0d944850:
    # Line 789
    bnez	$a1,.L0d944860
    # Line 790
    nop	# was lw $t9, -31848($gp) # &__glCrmSetReadBuffer
    # Line 789
    beq	$a5,$a6,.L0d94486c
    # Line 790
    nop	# was lw $t9, -31848($gp) # &__glCrmSetReadBuffer
.L0d944860:
    move	$a0,$s0
    bal __glCrmSetReadBuffer
    move	$a1,$a5
.L0d94486c:
    # Line 793
    lw	$a4,1888($s0)
    li	$v1,1028
    li	$a1,1032
    beq	$v1,$a4,.L0d944974
    li	$a0,1029
    beq	$a4,$a0,.L0d944938
    nop
    beq	$a4,$a1,.L0d944938
    nop
    lw	$a1,11760($s0)
.L0d944894:
    # Line 806
    bnez	$s1,.L0d9448a0
    ld	$a2,8($sp)
    beq	$a1,$a2,.L0d9448ac
.L0d9448a0:
    # Line 807
    nop	# was lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    bal __glCrmSetDrawBuffer
    move	$a0,$s0
.L0d9448ac:
    # Line 810
    lbu	$a3,32008($s0)
    beqz	$a3,.L0d944920
    li	$a0,6145
    bnez	$s1,.L0d9448cc
    nop
    lw	$a4,32084($s0)
    beq	$a0,$a4,.L0d944924
    ld	$ra,40($sp)
.L0d9448cc:
    # Line 817
    sw	$zero,4($sp)
    # Line 816
    sb	$zero,3($sp)
    # Line 813
    li	$a5,2
    # Line 815
    sb	$a5,2($sp)
    # Line 818
    # lw $t9, -31864($gp) # &__glCrmIoctl
    # Line 814
    sb	$zero,1($sp)
    li	$s1,6145
    # Line 818
    addiu	$a2,$sp,0
    # Line 813
    sb	$a5,0($sp)
    # Line 818
    li	$a1,22007
    bal __glCrmIoctl
    lw	$a0,31504($s0)
    bltz	$v0,.L0d944980
    nop
    # Line 823
    ld	$gp,32($sp)
.L0d944908:
    ld	$ra,40($sp)
    # Line 821
    sw	$s1,32084($s0)
    # Line 823
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d944920:
    ld	$ra,40($sp)
.L0d944924:
    ld	$gp,32($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d944938:
    # Line 799
    lbu	$a6,3222($s0)
    beqz	$a6,.L0d94499c
    nop
    # Line 800
    lw	$a1,30660($s0)
    b	.L0d944894
    sw	$a1,11760($s0)
.L0d944950:
    # Line 782
    lbu	$a7,3382($a0)
    beqz	$a7,.L0d9449a8
    nop
    # Line 783
    lw	$a5,30660($a0)
    b	.L0d944850
    sw	$a5,11764($a0)
.L0d944968:
    # Line 779
    lw	$a5,30656($a0)
    b	.L0d944850
    sw	$a5,11764($a0)
.L0d944974:
    # Line 795
    lw	$a1,30656($s0)
    b	.L0d944894
    sw	$a1,11760($s0)
.L0d944980:
    # Line 819
    lw	$t9,20($s0)
    la	$a1,sub_0da40000
    move	$a0,$s0
    jal	__glCrmIoctl
    addiu	$a1,$a1,6424
    b	.L0d944908
    # Line 823
    ld	$gp,32($sp)
.L0d94499c:
    # Line 802
    lw	$a1,30656($s0)
    b	.L0d944894
    sw	$a1,11760($s0)
.L0d9449a8:
    # Line 785
    lw	$a5,30656($a0)
    b	.L0d944850
    sw	$a5,11764($a0)
.end __glCrmSetCurrentBuffers

# Function: __glCrmSetStoreBuffer
# Declared: Line 826 (Source lines: 828-838)
# Address: 0x0d9449c0 - 0x0d944a14 (Size: 84 bytes, Frame: 32)
.globl __glCrmSetStoreBuffer
.ent __glCrmSetStoreBuffer
__glCrmSetStoreBuffer:
    # Line 828
    addiu	$sp,$sp,-32
    # Line 834
    lbu	$v0,30652($a0)
    # Line 828
    sd	$s0,8($sp)
    lui	$at,0x11
    # Line 829
    lw	$s0,11760($a0)
    # Line 828
    addiu	$at,$at,-15412
    sd	$gp,0($sp)
    # Line 834
    beqz	$v0,.L0d9449ec
    # Line 828
    addu	$gp,$t9,$at
    # Line 834
    bne	$a1,$s0,.L0d944a00
    # Line 836
    nop	# was lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
.L0d9449ec:
    # Line 838
    ld	$gp,0($sp)
    move	$v0,$s0
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d944a00:
    sd	$ra,16($sp)
    # Line 836
    bal __glCrmSetDrawBuffer
    # Line 835
    sw	$a1,11760($a0)
    b	.L0d9449ec
    ld	$ra,16($sp)
.end __glCrmSetStoreBuffer

# Function: PickBufferProcs
# Declared: Line 842 (Source lines: 843-884)
# Address: 0x0d944a20 - 0x0d944b88 (Size: 360 bytes, Frame: 16)
.ent PickBufferProcs
PickBufferProcs:
    # Line 847
    li	$a5,1029
    li	$a4,1028
    # Line 843
    lbu	$at,3223($a0)
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 847
    li	$a1,1030
    sd	$ra,8($sp)
    # Line 843
    addiu	$v0,$v0,-15508
    sd	$gp,0($sp)
    beqz	$at,.L0d944af0
    addu	$gp,$t9,$v0
    # Line 847
    li	$v1,1032
    lw	$a2,1892($a0)
    beq	$a2,$v1,.L0d944b3c
    nop
    beq	$a2,$a1,.L0d944ac8
    li	$a3,1031
    beq	$a2,$a3,.L0d944ac8
    nop
    beq	$a2,$a4,.L0d944b20
    # Line 867
    move	$a3,$zero
    # Line 847
    beq	$a2,$a5,.L0d944b20
    # Line 866
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    sb	$zero,-32467($a2)
    # Line 867
    sb	$zero,30652($a0)
.L0d944a88:
    # Line 878
    lw	$a4,-32564($a2)
.L0d944a8c:
    sll	$a4,$a4,0x1e
    bgez	$a4,.L0d944aac
    # Line 883
    nop	# was lw $t9, -31844($gp) # &__glCrmSetCurrentBuffers
    # Line 878
    lbu	$a5,-32467($a2)
    bnez	$a5,.L0d944aac
    # Line 883
    nop	# was lw $t9, -31844($gp) # &__glCrmSetCurrentBuffers
    # Line 878
    beqz	$a3,.L0d944b58
    # Line 883
    nop	# was lw $t9, -31844($gp) # &__glCrmSetCurrentBuffers
.L0d944aac:
    move	$a1,$zero
    bal __glCrmSetCurrentBuffers
    move	$a2,$zero
    ld	$ra,8($sp)
.L0d944abc:
    # Line 884
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d944ac8:
    # Line 854
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    sb	$zero,-32467($a2)
    lbu	$a6,3222($a0)
    beqz	$a6,.L0d944b70
    # Line 858
    move	$a3,$zero
    # Line 856
    li	$a3,1
    sb	$a3,30652($a0)
    b	.L0d944a88
    li	$a3,1
.L0d944af0:
    # Line 871
    lbu	$a4,3222($a0)
    li	$a6,1032
    # Line 875
    move	$a3,$zero
    lui	$a2,0x1
    # Line 871
    beqz	$a4,.L0d944b14
    # Line 875
    addu	$a2,$a0,$a2
    # Line 871
    lw	$a5,1888($a0)
    beq	$a5,$a6,.L0d944b78
    nop
.L0d944b14:
    # Line 875
    sb	$zero,30652($a0)
.L0d944b18:
    b	.L0d944a8c
    # Line 878
    lw	$a4,-32564($a2)
.L0d944b20:
    # Line 862
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    li	$a3,1
    sb	$a3,-32467($a2)
    # Line 863
    move	$a3,$zero
    # Line 864
    b	.L0d944a88
    # Line 863
    sb	$zero,30652($a0)
.L0d944b3c:
    # Line 849
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    li	$a4,1
    sb	$a4,-32467($a2)
    move	$a3,$a4
    b	.L0d944a88
    # Line 850
    sb	$a4,30652($a0)
.L0d944b58:
    # Line 880
    # lw $t9, -31844($gp) # &__glCrmSetCurrentBuffers
    li	$a2,1
    bal __glCrmSetCurrentBuffers
    li	$a1,1
    b	.L0d944abc
    ld	$ra,8($sp)
.L0d944b70:
    b	.L0d944a88
    # Line 858
    sb	$zero,30652($a0)
.L0d944b78:
    # Line 873
    li	$a3,1
    sb	$a3,30652($a0)
    b	.L0d944b18
    li	$a3,1
.end PickBufferProcs

# Function: SwapBuffers
# Declared: Line 887 (Source lines: 888-974)
# Address: 0x0d944b90 - 0x0d944c88 (Size: 248 bytes, Frame: 48)
.ent SwapBuffers
SwapBuffers:
    # Line 930
    li	$v1,0x80cc
    # Line 888
    addiu	$sp,$sp,-48
    lbu	$at,3222($a0)
    lui	$v0,0x11
    sd	$s0,24($sp)
    move	$s0,$a0
    sd	$ra,32($sp)
    addiu	$v0,$v0,-15876
    # Line 930
    addu	$v1,$v1,$s0
    sd	$gp,16($sp)
    # Line 888
    beqz	$at,.L0d944c20
    addu	$gp,$t9,$v0
    # Line 930
    lw	$a1,32048($a0)
    li	$a0,1
    subu	$a0,$a0,$a1
    sw	$a0,32048($s0)
    lw	$v1,0($v1)
    sll	$v1,$v1,0x1e
    bltz	$v1,.L0d944c44
    # Line 940
    nop	# was lw $t9, -31848($gp) # &__glCrmSetReadBuffer
.L0d944be0:
    # Line 941
    beqz	$a0,.L0d944c34
    lw	$a2,32040($s0)
    # Line 949
    ori	$a0,$a2,0x4
    sw	$a0,32040($s0)
.L0d944bf0:
    # Line 957
    # lw $t9, -31864($gp) # &__glCrmIoctl
    # Line 954
    lw	$a3,31508($s0)
    sw	$a3,0($sp)
    # Line 955
    lw	$a2,32048($s0)
    sw	$a2,4($sp)
    # Line 956
    lw	$a1,32040($s0)
    # Line 957
    addiu	$a2,$sp,0
    # Line 956
    sw	$a1,8($sp)
    # Line 957
    li	$a1,1005
    bal __glCrmIoctl
    lw	$a0,31504($s0)
    bltz	$v0,.L0d944c68
.L0d944c20:
    ld	$ra,32($sp)
.L0d944c24:
    # Line 974
    ld	$gp,16($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d944c34:
    # Line 951
    li	$a4,-5
    and	$a4,$a2,$a4
    b	.L0d944bf0
    sw	$a4,32040($s0)
.L0d944c44:
    # Line 940
    move	$a0,$s0
    bal __glCrmSetReadBuffer
    lw	$a1,11764($s0)
    # Line 941
    # lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    move	$a0,$s0
    bal __glCrmSetDrawBuffer
    lw	$a1,11760($s0)
    b	.L0d944be0
    lw	$a0,32048($s0)
.L0d944c68:
    # Line 969
    la	$a1,sub_0da40000
    # lw $t9, -22924($gp) # &fprintf
    la	$a0,__iob
    addiu	$a1,$a1,6456
    jal	fprintf
    addiu	$a0,$a0,32
    b	.L0d944c24
    ld	$ra,32($sp)
.end SwapBuffers

# Function: DecoupleSwapBuffers
# Declared: Line 986 (Source lines: 987-1020)
# Address: 0x0d944c90 - 0x0d944d80 (Size: 240 bytes, Frame: 32)
.ent DecoupleSwapBuffers
DecoupleSwapBuffers:
    # Line 995
    li	$v1,0x80cc
    # Line 987
    addiu	$sp,$sp,-32
    lbu	$at,3222($a0)
    lui	$v0,0x11
    sd	$s0,16($sp)
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,-16132
    # Line 995
    addu	$v1,$v1,$s0
    sd	$gp,8($sp)
    # Line 987
    beqz	$at,.L0d944d1c
    addu	$gp,$t9,$v0
    # Line 995
    lw	$a1,32048($a0)
    li	$a0,1
    subu	$a0,$a0,$a1
    sw	$a0,32048($s0)
    lw	$v1,0($v1)
    sll	$v1,$v1,0x1e
    bltz	$v1,.L0d944d40
    # Line 1004
    nop	# was lw $t9, -31848($gp) # &__glCrmSetReadBuffer
.L0d944ce0:
    # Line 1005
    beqz	$a0,.L0d944d30
    lw	$a2,32040($s0)
    # Line 1010
    ori	$a0,$a2,0x4
    sw	$a0,32040($s0)
.L0d944cf0:
    # Line 1015
    li	$a2,10
    sw	$a2,0($sp)
    # Line 1016
    lw	$a1,32048($s0)
    # Line 1017
    # lw $t9, -31864($gp) # &__glCrmIoctl
    addiu	$a2,$sp,0
    # Line 1016
    addiu	$a1,$a1,17
    sw	$a1,4($sp)
    # Line 1017
    li	$a1,22004
    bal __glCrmIoctl
    lw	$a0,31504($s0)
    bltz	$v0,.L0d944d64
.L0d944d1c:
    ld	$ra,24($sp)
.L0d944d20:
    # Line 1020
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d944d30:
    # Line 1012
    li	$a3,-5
    and	$a3,$a2,$a3
    b	.L0d944cf0
    sw	$a3,32040($s0)
.L0d944d40:
    # Line 1004
    move	$a0,$s0
    bal __glCrmSetReadBuffer
    lw	$a1,11764($s0)
    # Line 1005
    # lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    move	$a0,$s0
    bal __glCrmSetDrawBuffer
    lw	$a1,11760($s0)
    b	.L0d944ce0
    lw	$a0,32048($s0)
.L0d944d64:
    # Line 1018
    lw	$t9,20($s0)
    la	$a1,sub_0da40000
    move	$a0,$s0
    jal	__glCrmSetDrawBuffer
    addiu	$a1,$a1,6496
    b	.L0d944d20
    ld	$ra,24($sp)
.end DecoupleSwapBuffers

# Function: __glCrmFlushAndConfirm
# Declared: Line 1023 (Source lines: 1024-1043)
# Address: 0x0d944d80 - 0x0d944dbc (Size: 60 bytes, Frame: 16)
.globl __glCrmFlushAndConfirm
.ent __glCrmFlushAndConfirm
__glCrmFlushAndConfirm:
    # Line 1028
    lw	$a2,32184($a0)
    # Line 1024
    addiu	$sp,$sp,-16
    # Line 1031
    sw	$zero,0($sp)
    lw	$at,0($sp)
    sw	$at,8696($a2)
.L0d944d94:
    # Line 1032
    lw	$v0,16384($a2)
    sll	$v0,$v0,0x3
    bltz	$v0,.L0d944db4
    nop
    lw	$v1,16384($a2)
    sll	$v1,$v1,0x3
    bgez	$v1,.L0d944d94
    nop
.L0d944db4:
    # Line 1043
    jr	$ra
    addiu	$sp,$sp,16
.end __glCrmFlushAndConfirm

# Function: Finish
# Declared: Line 1046 (Source lines: 1047-1061)
# Address: 0x0d944dc0 - 0x0d944e04 (Size: 68 bytes, Frame: 16)
.ent Finish
Finish:
    # Line 1047
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,-16436
    sd	$gp,0($sp)
    # Line 1050
    beqz	$a0,.L0d944de4
    # Line 1047
    addu	$gp,$t9,$at
    # Line 1050
    lw	$v0,32184($a0)
    bnez	$v0,.L0d944df0
    # Line 1051
    nop	# was lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
.L0d944de4:
    # Line 1061
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d944df0:
    sd	$ra,8($sp)
    # Line 1051
    bal __glCrmFlushAndConfirm
    nop
    b	.L0d944de4
    ld	$ra,8($sp)
.end Finish

# Function: Flush
# Declared: Line 1064 (Source lines: 1079-1079)
# Address: 0x0d944e10 - 0x0d944e18 (Size: 8 bytes, Frame: 0)
.ent Flush
Flush:
    # Line 1079
    jr	$ra
    nop
.end Flush

# Function: DestroyHWContext
# Declared: Line 1082 (Source lines: 1083-1102)
# Address: 0x0d944e20 - 0x0d944eac (Size: 140 bytes, Frame: 32)
.ent DestroyHWContext
DestroyHWContext:
    # Line 1083
    addiu	$sp,$sp,-32
    lw	$a3,32324($a0)
    sd	$s0,0($sp)
    lui	$at,0x11
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$at,$at,-16532
    sd	$gp,8($sp)
    beqz	$a3,.L0d944e54
    addu	$gp,$t9,$at
    # Line 1087
    move	$t9,$a3
    jalr	$t9
    li	$a1,-1
.L0d944e54:
    lw	$v0,32568($s0)
    bltz	$v0,.L0d944e68
    # Line 1090
    nop	# was lw $t9, -23220($gp) # &viceCloseDev
    jal	viceCloseDev
    move	$a0,$s0
.L0d944e68:
    # Line 1092
    # lw $t9, -31296($gp) # &__glCrmFreeTextureState
    jal	__glCrmFreeTextureState
    move	$a0,$s0
    # Line 1094
    lw	$t9,48($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1097
    # lw $t9, -26424($gp) # &__glFreeBufData
    jal	__glFreeBufData
    move	$a0,$s0
    # Line 1101
    # lw $t9, -26464($gp) # &__glDestroyContext
    jal	__glDestroyContext
    move	$a0,$s0
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    # Line 1102
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end DestroyHWContext

# Function: LoseCurrent
# Declared: Line 1105 (Source lines: 1106-1131)
# Address: 0x0d944eb0 - 0x0d944f7c (Size: 204 bytes, Frame: 32)
.ent LoseCurrent
LoseCurrent:
    # Line 1106
    addiu	$sp,$sp,-32
    # Line 1111
    lw	$v0,3204($a0)
    li	$v1,7168
    # Line 1106
    lui	$at,0x11
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$at,$at,-16676
    sd	$gp,0($sp)
    # Line 1111
    bne	$v0,$v1,.L0d944f68
    # Line 1106
    addu	$gp,$t9,$at
    # Line 1111
    lw	$v0,4120($zero)
    li	$v1,1
    beq	$v0,$v1,.L0d944f6c
    # Line 1112
    move	$v0,$zero
    lw	$a0,172($a0)
    andi	$a0,$a0,0x2
    beqz	$a0,.L0d944f34
    sd	$ra,16($sp)
    # Line 1118
    lw	$a1,32324($s0)
    lw	$a2,32316($s0)
    beqz	$a1,.L0d944f30
    lw	$a3,32320($s0)
    bnez	$a2,.L0d944f18
    # Line 1120
    nop	# was lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    # Line 1118
    beqz	$a3,.L0d944f30
    # Line 1120
    nop	# was lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
.L0d944f18:
    bal __glCrmFlushAndConfirm
    move	$a0,$s0
    # Line 1121
    lw	$t9,32324($s0)
    move	$a0,$s0
    jal	__glCrmFlushAndConfirm
    li	$a1,-1
.L0d944f30:
    # Line 1123
    sw	$zero,32552($s0)
.L0d944f34:
    # Line 1126
    # lw $t9, -26428($gp) # &__glLoseCurrentBuffers
    move	$a0,$s0
    jal	__glLoseCurrentBuffers
    lw	$a1,32048($s0)
    # Line 1131
    ld	$gp,0($sp)
    # Line 1128
    lw	$a4,4120($zero)
    ld	$ra,16($sp)
    sw	$a4,3200($s0)
    # Line 1131
    li	$v0,1
    # Line 1129
    sw	$zero,4112($zero)
    # Line 1131
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d944f68:
    # Line 1112
    move	$v0,$zero
.L0d944f6c:
    # Line 1131
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end LoseCurrent

# Function: __glCrmUpdateHardwareState
# Declared: Line 1135 (Source lines: 1136-1166)
# Address: 0x0d944f80 - 0x0d945098 (Size: 280 bytes, Frame: 32)
.globl __glCrmUpdateHardwareState
.ent __glCrmUpdateHardwareState
__glCrmUpdateHardwareState:
    # Line 1136
    lui	$at,0x11
    addiu	$sp,$sp,-32
    addiu	$at,$at,-16884
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1138
    # lw $t9, -32004($gp) # &__glCrmEnableAlphaTest
    # Line 1136
    sd	$s0,0($sp)
    # Line 1138
    nop
    # Line 1136
    sd	$ra,8($sp)
    # Line 1138
    bal __glCrmEnableAlphaTest
    # Line 1136
    move	$s0,$a0
    # Line 1139
    # lw $t9, -32000($gp) # &__glCrmPassAlphaFunc
    bal __glCrmPassAlphaFunc
    move	$a0,$s0
    # Line 1140
    # lw $t9, -31996($gp) # &__glCrmEnableBlend
    bal __glCrmEnableBlend
    move	$a0,$s0
    # Line 1141
    # lw $t9, -31992($gp) # &__glCrmPassBlendFunc
    bal __glCrmPassBlendFunc
    move	$a0,$s0
    # Line 1142
    # lw $t9, -31988($gp) # &__glCrmPassBlendColor
    bal __glCrmPassBlendColor
    move	$a0,$s0
    # Line 1143
    # lw $t9, -31964($gp) # &__glCrmPassColorMask
    bal __glCrmPassColorMask
    move	$a0,$s0
    # Line 1144
    # lw $t9, -31984($gp) # &__glCrmEnableDither
    bal __glCrmEnableDither
    move	$a0,$s0
    # Line 1145
    # lw $t9, -31980($gp) # &__glCrmEnableLogicOp
    bal __glCrmEnableLogicOp
    move	$a0,$s0
    # Line 1146
    # lw $t9, -31976($gp) # &__glCrmPassLogicOp
    bal __glCrmPassLogicOp
    move	$a0,$s0
    # Line 1149
    # lw $t9, -31800($gp) # &__glCrmPassDepthFunc
    bal __glCrmPassDepthFunc
    move	$a0,$s0
    # Line 1150
    # lw $t9, -31804($gp) # &__glCrmPassDepthMask
    bal __glCrmPassDepthMask
    move	$a0,$s0
    # Line 1151
    # lw $t9, -31796($gp) # &__glCrmEnableDepthTest
    bal __glCrmEnableDepthTest
    move	$a0,$s0
    # Line 1154
    # lw $t9, -31960($gp) # &__glCrmShadeModel
    bal __glCrmShadeModel
    move	$a0,$s0
    # Line 1157
    # lw $t9, -31972($gp) # &__glCrmEnableFogTest
    bal __glCrmEnableFogTest
    move	$a0,$s0
    # Line 1158
    # lw $t9, -31968($gp) # &__glCrmPassFog
    bal __glCrmPassFog
    move	$a0,$s0
    # Line 1161
    # lw $t9, -31324($gp) # &__glCrmPassStencilMode
    jal	__glCrmPassStencilMode
    move	$a0,$s0
    # Line 1162
    # lw $t9, -31328($gp) # &__glCrmEnableStencilTest
    jal	__glCrmEnableStencilTest
    move	$a0,$s0
    # Line 1163
    # lw $t9, -31332($gp) # &__glCrmPassStencilMask
    jal	__glCrmPassStencilMask
    move	$a0,$s0
    # Line 1165
    # lw $t9, -31304($gp) # &__glCrmResetTextureState
    jal	__glCrmResetTextureState
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 1166
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glCrmUpdateHardwareState

# Function: DissociateDMPbuffer
# Declared: Line 1174 (Source lines: 1176-1192)
# Address: 0x0d9450a0 - 0x0d945128 (Size: 136 bytes, Frame: 16)
.ent DissociateDMPbuffer
DissociateDMPbuffer:
    # Line 1176
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    # Line 1179
    beqz	$a0,.L0d9450d8
    # Line 1176
    move	$s0,$a1
    # Line 1179
    beqz	$a1,.L0d9450dc
    # Line 1182
    move	$v0,$zero
    # Line 1179
    lw	$a0,148($a1)
    beqz	$a0,.L0d9450e8
    nop	# was lw $t9, -22964($gp) # &dmBufferFree
    sd	$ra,8($sp)
    jal	dmBufferFree
    nop
    beqz	$v0,.L0d9450e8
    ld	$ra,8($sp)
.L0d9450d8:
    # Line 1182
    move	$v0,$zero
.L0d9450dc:
    # Line 1192
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9450e8:
    # Line 1179
    lw	$a0,152($s0)
    beqz	$a0,.L0d945100
    sd	$ra,8($sp)
    # Line 1185
    # lw $t9, -22956($gp) # &dmParamsDestroy
    jal	dmParamsDestroy
    nop
.L0d945100:
    lw	$a0,156($s0)
    # Line 1192
    li	$v0,1
    # Line 1185
    beqz	$a0,.L0d945114
    ld	$ra,8($sp)
    # Line 1188
    sw	$zero,0($a0)
.L0d945114:
    # Line 1191
    sw	$zero,152($s0)
    # Line 1190
    sw	$zero,148($s0)
    # Line 1192
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end DissociateDMPbuffer

# Function: IsCompatibleDMPbuffer
# Declared: Line 1196 (Source lines: 1202-1310)
# Address: 0x0d945130 - 0x0d945558 (Size: 1064 bytes, Frame: 240)
.ent IsCompatibleDMPbuffer
IsCompatibleDMPbuffer:
    # Line 1202
    addiu	$sp,$sp,-112
    sd	$a1,80($sp)
    sd	$a2,48($sp)
    sd	$a4,72($sp)
    sd	$ra,88($sp)
    # Line 1213
    # lw $t9, -22884($gp) # &_dmBufferGetNoECC
    # Line 1202
    sd	$s0,8($sp)
    move	$s0,$a3
    sd	$a0,56($sp)
    move	$a0,$a4
    # Line 1213
    jal	_dmBufferGetNoECC
    # Line 1202
    sd	$a5,64($sp)
    # Line 1213
    beqz	$v0,.L0d945214
    # Line 1217
    nop	# was lw $t9, -22880($gp) # &dmParamsIsPresent
    la	$a1,sub_0da40000
    move	$a0,$s0
    jal	dmParamsIsPresent
    addiu	$a1,$a1,6520
    beqz	$v0,.L0d945200
    nop	# was lw $t9, -22880($gp) # &dmParamsIsPresent
    la	$a1,sub_0da40000
    move	$a0,$s0
    jal	dmParamsIsPresent
    addiu	$a1,$a1,6536
    beqz	$v0,.L0d945200
    nop	# was lw $t9, -22880($gp) # &dmParamsIsPresent
    la	$a1,sub_0da40000
    move	$a0,$s0
    jal	dmParamsIsPresent
    addiu	$a1,$a1,6560
    beqz	$v0,.L0d945200
    nop	# was lw $t9, -22880($gp) # &dmParamsIsPresent
    la	$a1,sub_0da40000
    move	$a0,$s0
    jal	dmParamsIsPresent
    addiu	$a1,$a1,6576
    beqz	$v0,.L0d945200
    # Line 1224
    nop	# was lw $t9, -22876($gp) # &dmParamsGetEnum
    la	$a1,sub_0da40000
    move	$a0,$s0
    jal	dmParamsGetEnum
    addiu	$a1,$a1,6520
    # Line 1225
    li	$a3,1
    beq	$v0,$a3,.L0d945228
    li	$a2,2
    beq	$v0,$a2,.L0d945228
    sd	$v0,40($sp)
    # Line 1310
    ld	$ra,88($sp)
    # Line 1227
    move	$v0,$zero
    # Line 1310
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d945200:
    ld	$s0,8($sp)
    # Line 1221
    move	$v0,$zero
.L0d945208:
    ld	$ra,88($sp)
    # Line 1310
    jr	$ra
    addiu	$sp,$sp,112
.L0d945214:
    ld	$ra,88($sp)
    # Line 1214
    move	$v0,$zero
    # Line 1310
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d945228:
    # Line 1230
    # lw $t9, -22876($gp) # &dmParamsGetEnum
    la	$a1,sub_0da40000
    move	$a0,$s0
    sd	$v0,40($sp)
    jal	dmParamsGetEnum
    addiu	$a1,$a1,6536
    # Line 1232
    ld	$a3,80($sp)
    li	$a4,2001
    beq	$v0,$a4,.L0d945278
    # Line 1231
    lw	$a3,4($a3)
    # Line 1232
    li	$a5,2002
    beq	$v0,$a5,.L0d945278
    li	$a6,1091
    beq	$v0,$a6,.L0d9452fc
    li	$a7,1007
    beq	$v0,$a7,.L0d9452b8
    # Line 1249
    ld	$t8,40($sp)
    ld	$s0,8($sp)
    # Line 1257
    b	.L0d945208
    move	$v0,$zero
.L0d945278:
    # Line 1235
    lw	$t0,40($a3)
    li	$a1,8
    bne	$t0,$a1,.L0d9452ac
    nop
    lw	$t1,44($a3)
    bne	$t1,$a1,.L0d9452ac
    nop
    lw	$t2,48($a3)
    bne	$t2,$a1,.L0d9452ac
    nop
    lw	$t3,52($a3)
    beq	$t3,$a1,.L0d945340
    # Line 1239
    li	$a7,4
.L0d9452ac:
    ld	$s0,8($sp)
    # Line 1237
    b	.L0d945208
    move	$v0,$zero
.L0d9452b8:
    # Line 1249
    li	$t9,1
    bne	$t8,$t9,.L0d9452f0
    nop
    lw	$ra,40($a3)
    li	$a1,3
    bne	$ra,$a1,.L0d9452f0
    nop
    lw	$at,44($a3)
    bne	$at,$a1,.L0d9452f0
    nop
    lw	$v0,48($a3)
    li	$v1,2
    beq	$v0,$v1,.L0d9453fc
    move	$t1,$t9
.L0d9452f0:
    ld	$s0,8($sp)
    # Line 1252
    b	.L0d945208
    move	$v0,$zero
.L0d9452fc:
    # Line 1242
    lw	$a0,40($a3)
    li	$a1,5
    bne	$a0,$a1,.L0d945334
    nop
    lw	$a2,44($a3)
    bne	$a2,$a1,.L0d945334
    nop
    lw	$a4,48($a3)
    bne	$a4,$a1,.L0d945334
    nop
    lw	$a5,52($a3)
    li	$a6,1
    beq	$a5,$a6,.L0d945488
    # Line 1247
    li	$at,2
.L0d945334:
    ld	$s0,8($sp)
    # Line 1244
    b	.L0d945208
    move	$v0,$zero
.L0d945340:
    sd	$a7,24($sp)
.L0d945344:
    # Line 1260
    # lw $t9, -22872($gp) # &dmParamsGetInt
    la	$a1,sub_0da40000
    move	$a0,$s0
    jal	dmParamsGetInt
    addiu	$a1,$a1,6560
    # Line 1261
    # lw $t9, -22872($gp) # &dmParamsGetInt
    la	$a1,sub_0da40000
    # Line 1260
    sd	$v0,104($sp)
    # Line 1261
    move	$a0,$s0
    # Line 1260
    sd	$v0,32($sp)
    # Line 1261
    jal	dmParamsGetInt
    addiu	$a1,$a1,6576
    # Line 1262
    ld	$a0,48($sp)
    ld	$t0,104($sp)
    lw	$a3,140($a0)
    ld	$s0,8($sp)
    bne	$a3,$t0,.L0d9453f4
    # Line 1261
    move	$t3,$v0
    # Line 1262
    lw	$a4,144($a0)
    bne	$a4,$v0,.L0d9453f4
    # Line 1266
    ld	$a4,24($sp)
    mult	$t0,$a4
    # Line 1267
    ld	$a5,40($sp)
    addiu	$a3,$v0,127
    li	$a1,2
    sra	$a3,$a3,0x7
    # Line 1266
    mflo	$a2
    addiu	$a2,$a2,511
    # Line 1267
    beq	$a5,$a1,.L0d945490
    # Line 1266
    sra	$a2,$a2,0x9
    # Line 1283
    mult	$a3,$a2
    mflo	$a5
    nop
    sd	$a5,16($sp)
.L0d9453cc:
    # Line 1286
    # lw $t9, -22868($gp) # &dmBufferGetSize
    jal	dmBufferGetSize
    ld	$a0,72($sp)
    ld	$a7,16($sp)
    sra	$a6,$v0,0x10
    slt	$a6,$a6,$a7
    beqz	$a6,.L0d945404
    sd	$v0,0($sp)
    # Line 1288
    b	.L0d945208
    move	$v0,$zero
.L0d9453f4:
    # Line 1263
    b	.L0d945208
    move	$v0,$zero
.L0d9453fc:
    # Line 1255
    b	.L0d945344
    sd	$t1,24($sp)
.L0d945404:
    # Line 1291
    # lw $t9, -22864($gp) # &_dmBufferGetDmsEvent
    jal	_dmBufferGetDmsEvent
    ld	$a0,72($sp)
    beqz	$v0,.L0d945550
    move	$a2,$v0
    # Line 1293
    ld	$a1,64($sp)
    lw	$a1,0($a1)
    beqz	$a1,.L0d94550c
    # Line 1297
    ld	$t9,56($sp)
.L0d945428:
    # Line 1307
    ld	$a5,40($sp)
    # Line 1303
    lw	$ra,16($a2)
    # Line 1304
    ld	$a4,64($sp)
    # Line 1303
    sw	$ra,0($a1)
    # Line 1304
    lw	$t9,0($a4)
    ld	$t8,0($sp)
    sw	$t8,4($t9)
    # Line 1305
    lw	$t3,0($a4)
    ld	$t2,16($sp)
    sw	$t2,8($t3)
    # Line 1306
    lw	$t1,0($a4)
    ld	$t0,24($sp)
    sw	$t0,12($t1)
    # Line 1307
    li	$a7,2
    lw	$a6,0($a4)
    # Line 1308
    ld	$a3,56($sp)
    # Line 1307
    xor	$a5,$a5,$a7
    sltiu	$a5,$a5,1
    sw	$a5,16($a6)
    # Line 1308
    lw	$a4,0($a4)
    lw	$a3,12($a3)
    # Line 1310
    li	$v0,1
    b	.L0d945208
    # Line 1308
    sw	$a3,20($a4)
.L0d945488:
    # Line 1247
    b	.L0d945344
    sd	$at,24($sp)
.L0d945490:
    # Line 1271
    li	$a1,64
    slt	$a1,$a1,$t0
    li	$t1,64
    beqz	$a1,.L0d945540
    slt	$t1,$t1,$v0
.L0d9454a4:
    ld	$t2,32($sp)
    li	$t0,1
.L0d9454ac:
    # Line 1272
    mult	$a2,$a3
    mflo	$a4
    beqz	$a1,.L0d9454d4
    addu	$t0,$t0,$a4
    # Line 1275
    li	$a1,64
    # Line 1274
    sra	$t2,$t2,0x1
    # Line 1275
    sra	$a6,$a2,0x1
    # Line 1274
    slti	$a5,$a2,2
    # Line 1275
    slt	$a1,$a1,$t2
    movz	$a2,$a6,$a5
.L0d9454d4:
    beqz	$t1,.L0d9454f4
    nop
    # Line 1279
    li	$t1,64
    # Line 1278
    sra	$t3,$t3,0x1
    # Line 1279
    sra	$a5,$a3,0x1
    # Line 1278
    slti	$a4,$a3,2
    # Line 1279
    slt	$t1,$t1,$t3
    movz	$a3,$a5,$a4
.L0d9454f4:
    # Line 1277
    bnez	$a1,.L0d9454ac
    nop
    bnez	$t1,.L0d9454ac
    nop
    b	.L0d9453cc
    sd	$t0,16($sp)
.L0d94550c:
    # Line 1297
    move	$a0,$t9
    lw	$t9,4($t9)
    li	$a2,24
    sd	$v0,96($sp)
    jalr	$t9
    li	$a1,1
    ld	$ra,64($sp)
    ld	$a2,96($sp)
    move	$a1,$v0
    bnez	$v0,.L0d945428
    sw	$v0,0($ra)
    # Line 1300
    b	.L0d945208
    move	$v0,$zero
.L0d945540:
    # Line 1271
    bnez	$t1,.L0d9454a4
    # Line 1277
    li	$at,1
    b	.L0d9453cc
    sd	$at,16($sp)
.L0d945550:
    # Line 1293
    b	.L0d945208
    move	$v0,$zero
.end IsCompatibleDMPbuffer

# Function: AssociateDMPbuffer
# Declared: Line 1314 (Source lines: 1317-1394)
# Address: 0x0d945560 - 0x0d945a00 (Size: 1184 bytes, Frame: 192)
.ent AssociateDMPbuffer
AssociateDMPbuffer:
    # Line 1317
    move	$v0,$a1
    lui	$at,0x11
    addiu	$sp,$sp,-320
    addiu	$at,$at,-18388
    sd	$gp,296($sp)
    # Line 1322
    beqz	$a1,.L0d9456b4
    # Line 1317
    addu	$gp,$t9,$at
    # Line 1322
    lw	$v1,0($a1)
    li	$a1,5
    bne	$v1,$a1,.L0d9456b4
    nop
    lw	$a1,28($v0)
    beqz	$a1,.L0d9456b4
    nop
    # Line 1329
    lw	$a4,32056($a0)
    beq	$a4,$v0,.L0d9455b0
    nop
    lw	$a5,32060($a0)
    bne	$a5,$v0,.L0d9456d4
    nop
.L0d9455b0:
    beqz	$a3,.L0d94590c
    li	$a7,1
.L0d9455b8:
    # Line 1335
    beqz	$a2,.L0d945770
    nop
    # Line 1341
    lw	$a6,148($a1)
    beq	$a6,$a3,.L0d945904
    nop
    # Line 1345
    sw	$zero,0($sp)
    lw	$a4,156($a1)
    beqz	$a4,.L0d945914
    nop
    sd	$a7,272($sp)
    sd	$a1,288($sp)
    sd	$a2,264($sp)
    sd	$a0,256($sp)
    sd	$a3,248($sp)
    sd	$v0,280($sp)
    sd	$ra,304($sp)
    # Line 1350
    lw	$t0,0($a4)
    lw	$at,20($a4)
    lw	$t9,16($a4)
    lw	$t8,12($a4)
    lw	$t3,8($a4)
    addiu	$t1,$sp,8
    lw	$t2,4($a4)
    sw	$t2,4($t1)
    sw	$t3,8($t1)
    sw	$t8,12($t1)
    sw	$t9,16($t1)
    sw	$at,20($t1)
    sw	$t0,8($sp)
.L0d94562c:
    # Line 1354
    ld	$a0,256($sp)
    # lw $t9, -32744($gp) # &sub_0d940000
    ld	$a5,288($sp)
    ld	$a1,280($sp)
    addiu	$t9,$t9,20784
    ld	$a3,264($sp)
    move	$a2,$a5
    ld	$a4,248($sp)
    bal __glCrmUpdateHardwareState
    addiu	$a5,$a5,156
    bnez	$v0,.L0d9456fc
    # Line 1360
    nop	# was lw $t9, -22948($gp) # &dmParamsCreate
    # Line 1354
    ld	$a4,288($sp)
    lw	$a4,156($a4)
    beqz	$a4,.L0d9456a4
    ld	$ra,304($sp)
    # Line 1357
    lw	$t2,8($sp)
    sw	$t2,0($a4)
    addiu	$a5,$sp,8
    lw	$t1,20($a5)
    sw	$t1,20($a4)
    lw	$t0,16($a5)
    sw	$t0,16($a4)
    lw	$a7,12($a5)
    sw	$a7,12($a4)
    lw	$a6,8($a5)
    sw	$a6,8($a4)
    lw	$a5,4($a5)
    sw	$a5,4($a4)
    ld	$ra,304($sp)
.L0d9456a4:
    # Line 1358
    move	$v0,$zero
    # Line 1337
    ld	$gp,296($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d9456b4:
    # Line 1324
    move	$v0,$zero
    # Line 1337
    ld	$gp,296($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d9456c4:
    move	$v0,$a0
    ld	$gp,296($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d9456d4:
    # Line 1329
    bnez	$a3,.L0d9455b8
    move	$a7,$zero
    # Line 1337
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,20640
    sd	$ra,304($sp)
    bal __glCrmUpdateHardwareState
    move	$a0,$v0
    ld	$ra,304($sp)
    b	.L0d9456c4
    move	$a0,$v0
.L0d9456fc:
    # Line 1360
    jal	sub_0d940000
    addiu	$a0,$sp,0
    beqz	$v0,.L0d945938
.L0d945708:
    lw	$a0,0($sp)
    beqz	$a0,.L0d94571c
    # Line 1363
    nop	# was lw $t9, -22956($gp) # &dmParamsDestroy
    jal	dmParamsDestroy
    nop
.L0d94571c:
    # Line 1391
    ld	$a4,288($sp)
    lw	$a4,156($a4)
    beqz	$a4,.L0d945760
    ld	$ra,304($sp)
    # Line 1364
    lw	$t2,8($sp)
    sw	$t2,0($a4)
    addiu	$a5,$sp,8
    lw	$t1,20($a5)
    sw	$t1,20($a4)
    lw	$t0,16($a5)
    sw	$t0,16($a4)
    lw	$a7,12($a5)
    sw	$a7,12($a4)
    lw	$a6,8($a5)
    sw	$a6,8($a4)
    lw	$a5,4($a5)
    sw	$a5,4($a4)
.L0d945760:
    # Line 1365
    move	$v0,$zero
    # Line 1337
    ld	$gp,296($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d945770:
    # Line 1341
    move	$v0,$zero
    # Line 1337
    ld	$gp,296($sp)
    jr	$ra
    addiu	$sp,$sp,320
.L0d945780:
    ld	$v0,248($sp)
    li	$a7,0x20
    # Line 1373
    li	$a4,40
    move	$a3,$zero
    addiu	$t1,$sp,32
    ld	$t2,288($sp)
    sd	$t1,200($sp)
    addiu	$a0,$t1,28
    addiu	$v1,$t1,12
    sd	$v1,216($sp)
    addiu	$at,$t1,4
    addiu	$a1,$t2,28
    sd	$at,232($sp)
    addiu	$a2,$t2,4
    addiu	$t3,$t2,8
    sd	$t2,192($sp)
    addiu	$t9,$t2,12
    addiu	$t8,$t2,20
    addiu	$t0,$t2,24
    addiu	$t2,$t2,16
    sd	$t8,208($sp)
    addiu	$t8,$t1,8
    sd	$t9,224($sp)
    addiu	$t9,$t1,20
    sd	$t9,240($sp)
    addiu	$t9,$t1,24
    addiu	$t1,$t1,16
.L0d9457ec:
    ld	$a6,192($sp)
    ld	$at,200($sp)
    ld	$a5,232($sp)
    addu	$a6,$a3,$a6
    addu	$at,$a3,$at
    lw	$a6,0($a6)
    sw	$a6,0($at)
    addu	$v1,$a3,$a2
    ld	$a6,216($sp)
    addu	$a5,$a3,$a5
    lw	$v1,0($v1)
    addu	$at,$a3,$t3
    sw	$v1,0($a5)
    lw	$at,0($at)
    addu	$v1,$a3,$t8
    ld	$a5,224($sp)
    sw	$at,0($v1)
    ld	$at,240($sp)
    addu	$a5,$a3,$a5
    addu	$a6,$a3,$a6
    lw	$a5,0($a5)
    sw	$a5,0($a6)
    addu	$v1,$a3,$t2
    ld	$a6,208($sp)
    addu	$a5,$a3,$t1
    lw	$v1,0($v1)
    sw	$v1,0($a5)
    addu	$a6,$a3,$a6
    addu	$at,$a3,$at
    lw	$a6,0($a6)
    addu	$a5,$a3,$t0
    sw	$a6,0($at)
    addu	$a6,$a3,$t9
    lw	$a5,0($a5)
    addiu	$a4,$a4,-8
    addu	$v1,$a3,$a1
    sw	$a5,0($a6)
    lw	$v1,0($v1)
    addu	$a5,$a3,$a0
    addu	$a3,$a3,$a7
    bgtz	$a4,.L0d9457ec
    sw	$v1,0($a5)
    # Line 1374
    ld	$t0,288($sp)
    # Line 1375
    ld	$t1,272($sp)
    # Line 1374
    sw	$v0,148($t0)
    # Line 1375
    andi	$t1,$t1,0xff
    lw	$a7,0($sp)
    beqz	$t1,.L0d9458d4
    sw	$a7,152($t0)
    ld	$t2,256($sp)
    ld	$t3,280($sp)
    lw	$t2,32056($t2)
    beq	$t2,$t3,.L0d9459b8
    # Line 1379
    nop	# was lw $t9, -31836($gp) # &__glCrmFlushAndConfirm
    # Line 1381
    ld	$t3,256($sp)
    ld	$t8,280($sp)
    lw	$t3,32060($t3)
    beq	$t3,$t8,.L0d9459e0
.L0d9458d4:
    # Line 1389
    lw	$t8,180($sp)
    bnez	$t8,.L0d9458ec
    # Line 1391
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 1389
    lw	$t9,184($sp)
    beqz	$t9,.L0d945904
    # Line 1391
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
.L0d9458ec:
    addiu	$t9,$t9,20640
    ld	$a0,280($sp)
    addiu	$a1,$sp,32
    bal __glCrmUpdateHardwareState
    # Line 1390
    sw	$zero,188($sp)
    ld	$ra,304($sp)
.L0d945904:
    # Line 1394
    b	.L0d9456c4
    li	$a0,1
.L0d94590c:
    # Line 1335
    b	.L0d9456c4
    move	$a0,$zero
.L0d945914:
    # Line 1352
    sw	$zero,8($sp)
    sd	$a7,272($sp)
    sd	$a1,288($sp)
    sd	$a2,264($sp)
    sd	$a0,256($sp)
    sd	$a3,248($sp)
    sd	$v0,280($sp)
    b	.L0d94562c
    sd	$ra,304($sp)
.L0d945938:
    # Line 1360
    # lw $t9, -22860($gp) # &dmParamsCopyAllElems
    ld	$a0,264($sp)
    jal	dmParamsCopyAllElems
    lw	$a1,0($sp)
    bnez	$v0,.L0d945708
    # Line 1367
    nop	# was lw $t9, -22856($gp) # &dmBufferAttach
    jal	dmBufferAttach
    ld	$a0,248($sp)
    beqz	$v0,.L0d945780
    ld	$ra,304($sp)
    # Line 1368
    # lw $t9, -22956($gp) # &dmParamsDestroy
    jal	dmParamsDestroy
    lw	$a0,0($sp)
    ld	$a4,288($sp)
    lw	$a4,156($a4)
    beqz	$a4,.L0d9459b0
    ld	$ra,304($sp)
    # Line 1369
    lw	$t2,8($sp)
    sw	$t2,0($a4)
    addiu	$a5,$sp,8
    lw	$t1,20($a5)
    sw	$t1,20($a4)
    lw	$t0,16($a5)
    sw	$t0,16($a4)
    lw	$a7,12($a5)
    sw	$a7,12($a4)
    lw	$a6,8($a5)
    sw	$a6,8($a4)
    lw	$a5,4($a5)
    sw	$a5,4($a4)
.L0d9459b0:
    # Line 1370
    b	.L0d9456c4
    move	$a0,$zero
.L0d9459b8:
    # Line 1379
    bal __glCrmFlushAndConfirm
    ld	$a0,256($sp)
    # Line 1381
    ld	$t3,256($sp)
    # lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    lw	$a1,11760($t3)
    move	$a0,$t3
    bal __glCrmSetDrawBuffer
    # Line 1380
    sw	$zero,32076($t3)
    b	.L0d9458d4
    ld	$ra,304($sp)
.L0d9459e0:
    # Line 1385
    ld	$t8,256($sp)
    # lw $t9, -31848($gp) # &__glCrmSetReadBuffer
    lw	$a1,11764($t8)
    move	$a0,$t8
    bal __glCrmSetReadBuffer
    # Line 1384
    sw	$zero,32080($t8)
    b	.L0d9458d4
    ld	$ra,304($sp)
.end AssociateDMPbuffer

# Function: ValidateDMPbuffers
# Declared: Line 1398 (Source lines: 1403-1436)
# Address: 0x0d945a00 - 0x0d945b3c (Size: 316 bytes, Frame: 48)
.ent ValidateDMPbuffers
ValidateDMPbuffers:
    # Line 1403
    lw	$at,0($a1)
    li	$t0,5
    addiu	$sp,$sp,-48
    beq	$at,$t0,.L0d945a6c
    move	$v0,$a2
.L0d945a14:
    # Line 1418
    lw	$at,0($v0)
    # lw $t9, -32744($gp) # &sub_0d940000
    bne	$at,$t0,.L0d945a58
    addiu	$t9,$t9,20784
    # Line 1422
    lw	$a2,28($v0)
    lw	$t1,148($a2)
    beqz	$t1,.L0d945af0
    # Line 1427
    lw	$a7,156($a2)
    beqz	$a7,.L0d945ab4
    nop
    lw	$v1,0($a7)
    sd	$a0,0($sp)
    beqz	$v1,.L0d945ab4
    sd	$v0,16($sp)
.L0d945a4c:
    # Line 1433
    lbu	$a0,0($a4)
    ori	$a0,$a0,0x1
    sb	$a0,0($a4)
.L0d945a58:
    # Line 1436
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,48
.L0d945a64:
    jr	$ra
    addiu	$sp,$sp,48
.L0d945a6c:
    # Line 1407
    lw	$a2,28($a1)
    lw	$t1,148($a2)
    beqz	$t1,.L0d945b34
    # Line 1412
    lw	$a7,156($a2)
    sd	$a0,0($sp)
    sd	$a3,8($sp)
    beqz	$a7,.L0d945af8
    sd	$v0,16($sp)
    lw	$a3,0($a7)
    beqz	$a3,.L0d945afc
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
.L0d945a98:
    # Line 1418
    ld	$a6,8($sp)
    ld	$v0,16($sp)
    lbu	$a5,0($a6)
    ld	$a0,0($sp)
    ori	$a5,$a5,0x1
    b	.L0d945a14
    sb	$a5,0($a6)
.L0d945ab4:
    # Line 1427
    lw	$a3,152($a2)
    sd	$ra,32($sp)
    sd	$a4,24($sp)
    sd	$a0,0($sp)
    sd	$v0,16($sp)
    addiu	$a5,$a2,156
    ld	$a0,0($sp)
    move	$a4,$t1
    bal __glCrmUpdateHardwareState
    ld	$a1,16($sp)
    ld	$ra,32($sp)
    bnez	$v0,.L0d945a4c
    ld	$a4,24($sp)
    # Line 1431
    b	.L0d945a64
    move	$v0,$zero
.L0d945af0:
    # Line 1425
    b	.L0d945a64
    move	$v0,$zero
.L0d945af8:
    # Line 1412
    # lw $t9, -32744($gp) # &sub_0d940000
.L0d945afc:
    lw	$a3,152($a2)
    sd	$ra,32($sp)
    addiu	$t9,$t9,20784
    addiu	$a5,$a2,156
    sd	$a4,24($sp)
    move	$a4,$t1
    bal __glCrmUpdateHardwareState
    ld	$a0,0($sp)
    ld	$ra,32($sp)
    ld	$a4,24($sp)
    bnez	$v0,.L0d945a98
    li	$t0,5
    # Line 1416
    b	.L0d945a64
    move	$v0,$zero
.L0d945b34:
    # Line 1410
    b	.L0d945a64
    move	$v0,$zero
.end ValidateDMPbuffers

# Function: FreeDMPbuffer
# Declared: Line 1440 (Source lines: 1440-1450)
# Address: 0x0d945b40 - 0x0d945bc4 (Size: 132 bytes, Frame: 32)
.ent FreeDMPbuffer
FreeDMPbuffer:
    # Line 1440
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 1442
    lw	$s0,28($a1)
    # Line 1440
    lui	$at,0x11
    move	$a0,$a1
    sd	$ra,16($sp)
    addiu	$at,$at,-19892
    sd	$gp,8($sp)
    # Line 1442
    beqz	$s0,.L0d945bb0
    # Line 1440
    addu	$gp,$t9,$at
    # Line 1444
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,20640
    bal __glCrmUpdateHardwareState
    move	$a1,$s0
    # Line 1445
    lw	$a1,156($s0)
    beqz	$a1,.L0d945bb4
    ld	$ra,16($sp)
    lw	$t9,20($a1)
    beqz	$t9,.L0d945bb4
    ld	$ra,16($sp)
    # Line 1446
    jal	sub_0d940000
    move	$a0,$zero
    ld	$ra,16($sp)
    # Line 1450
    ld	$gp,8($sp)
    # Line 1447
    sw	$zero,156($s0)
    # Line 1450
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d945bb0:
    ld	$ra,16($sp)
.L0d945bb4:
    ld	$s0,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end FreeDMPbuffer

# Function: MakeCurrentDMPbuffer
# Declared: Line 1453 (Source lines: 1456-1506)
# Address: 0x0d945bd0 - 0x0d945d08 (Size: 312 bytes, Frame: 48)
.ent MakeCurrentDMPbuffer
MakeCurrentDMPbuffer:
    # Line 1456
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 1461
    lw	$s1,28($a1)
    # Line 1456
    sd	$s8,24($sp)
    # Line 1465
    lw	$at,0($s1)
    # Line 1456
    sd	$s0,8($sp)
    move	$s0,$a0
    sd	$s2,0($sp)
    move	$s2,$a1
    # Line 1465
    beqz	$at,.L0d945cdc
    sd	$ra,32($sp)
.L0d945bfc:
    # Line 1474
    move	$s1,$zero
.L0d945c00:
    # Line 1477
    # lw $t9, -26432($gp) # &__glMakeCurrentBuffers
    move	$a0,$s0
    jal	__glMakeCurrentBuffers
    move	$a1,$a2
    # Line 1479
    andi	$s8,$v0,0xff
    beqz	$s8,.L0d945cbc
    nop
    beqz	$s1,.L0d945cbc
    # Line 1481
    nop	# was lw $t9, -22900($gp) # &memcpy
    move	$a0,$s1
    li	$a2,140
    jal	memcpy
    lw	$a1,28($s2)
    # Line 1484
    lw	$t9,20($s2)
    jalr	$t9
    lw	$a0,28($s2)
    # Line 1489
    la	$a0,sub_0d940000
    # Line 1485
    sw	$s1,28($s2)
    # Line 1489
    addiu	$a0,$a0,23360
    sw	$a0,24($s1)
    # Line 1490
    lbu	$v1,3222($s0)
    ld	$ra,32($sp)
    # Line 1493
    addiu	$a1,$s1,28
    # Line 1502
    addiu	$a7,$s1,52
    # Line 1506
    ld	$s2,0($sp)
    # Line 1496
    addiu	$a3,$s1,120
    # Line 1499
    addiu	$a5,$s1,72
    # Line 1490
    addiu	$v0,$s1,8
    beqz	$v1,.L0d945c7c
    sw	$v0,30732($s0)
    # Line 1493
    sw	$a1,30952($s0)
.L0d945c7c:
    lbu	$a2,3224($s0)
    beqz	$a2,.L0d945c8c
    nop
    # Line 1496
    sw	$a3,31428($s0)
.L0d945c8c:
    lbu	$a4,3225($s0)
    beqz	$a4,.L0d945c9c
    # Line 1506
    move	$v0,$s8
    # Line 1499
    sw	$a5,31296($s0)
.L0d945c9c:
    lbu	$a6,3226($s0)
    beqz	$a6,.L0d945cbc
    # Line 1506
    ld	$s1,16($sp)
    # Line 1502
    sw	$a7,31176($s0)
    # Line 1506
    ld	$s0,8($sp)
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d945cbc:
    ld	$s2,0($sp)
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    move	$v0,$s8
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d945cdc:
    # Line 1465
    lw	$t0,4($s1)
    bnez	$t0,.L0d945bfc
    nop
    # Line 1469
    lw	$t8,8($s1)
    lw	$t3,12($s1)
    sw	$t3,0($t8)
    # Line 1470
    lw	$t2,16($s1)
    lw	$t1,20($s1)
    sw	$t1,0($t2)
    # Line 1471
    b	.L0d945c00
    sw	$zero,28($a1)
.end MakeCurrentDMPbuffer

# Function: VisualsMatch
# Declared: Line 1510 (Source lines: 1517-1517)
# Address: 0x0d945d10 - 0x0d945d40 (Size: 48 bytes, Frame: 0)
.ent VisualsMatch
VisualsMatch:
    # Line 1517
    beqz	$a1,.L0d945d38
    nop
    beqz	$a3,.L0d945d38
    nop
    lbu	$v0,4($a3)
    lbu	$at,4($a1)
    bne	$at,$v0,.L0d945d38
    nop
    jr	$ra
    li	$v0,0x1
.L0d945d38:
    jr	$ra
    li	$v0,0x0
.end VisualsMatch

# Function: MakeCurrent
# Declared: Line 1524 (Source lines: 1525-1529)
# Address: 0x0d945d40 - 0x0d945da8 (Size: 104 bytes, Frame: 32)
.ent MakeCurrent
MakeCurrent:
    # Line 1525
    addiu	$sp,$sp,-32
    lui	$at,0x11
    sd	$gp,16($sp)
    addiu	$at,$at,-20404
    addu	$gp,$t9,$at
    # Line 1526
    lw	$t9,60($a0)
    # Line 1525
    sd	$ra,8($sp)
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 1526
    jalr	$t9
    sd	$s8,24($sp)
    # Line 1527
    lw	$t9,64($s0)
    # Line 1526
    move	$s8,$v0
    # Line 1527
    jalr	$t9
    move	$a0,$s0
    # Line 1529
    lw	$t9,100($s0)
    # Line 1527
    move	$a2,$v0
    # Line 1529
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s8
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    ld	$s8,24($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end MakeCurrent

# Function: MakeCurrentRead
# Declared: Line 1536 (Source lines: 1539-2388)
# Address: 0x0d945db0 - 0x0d9474e4 (Size: 5940 bytes, Frame: 240)
.ent MakeCurrentRead
MakeCurrentRead:
    # Line 1539
    addiu	$sp,$sp,-240
    sd	$s2,96($sp)
    sd	$s1,80($sp)
    # Line 1545
    sb	$zero,1($sp)
    # Line 1544
    sb	$zero,0($sp)
    # Line 1545
    lw	$a6,4($a1)
    lw	$v0,3216($a0)
    li	$t8,1
    # Line 1539
    move	$s1,$a2
    # Line 1545
    lw	$at,0($a6)
    # Line 1539
    move	$s2,$a1
    sd	$s0,88($sp)
    lui	$v1,0x11
    move	$s0,$a0
    sd	$ra,160($sp)
    addiu	$v1,$v1,-20516
    sd	$gp,104($sp)
    # Line 1545
    beq	$at,$v0,.L0d945fdc
    # Line 1539
    addu	$gp,$t9,$v1
    addiu	$t0,$a6,24
    li	$a1,0x20
    addiu	$t3,$a6,8
    # Line 1569
    li	$v0,20
    addiu	$a5,$a0,3240
    addiu	$t2,$a0,3224
    move	$a0,$zero
    addiu	$t1,$s0,3216
    addiu	$a7,$s0,3232
    addiu	$a2,$a6,16
    nop
    nop
    nop
.L0d945e30:
    addu	$ra,$a0,$a6
    addu	$at,$a0,$t1
    ld	$ra,0($ra)
    addu	$t9,$a0,$t3
    sd	$ra,0($at)
    addu	$ra,$a0,$t2
    ld	$t9,0($t9)
    addu	$a4,$a0,$a2
    sd	$t9,0($ra)
    addu	$t9,$a0,$a7
    ld	$a4,0($a4)
    addiu	$v0,$v0,-4
    addu	$a3,$a0,$t0
    sd	$a4,0($t9)
    addu	$a4,$a0,$a5
    ld	$a3,0($a3)
    addu	$a0,$a0,$a1
    bgtz	$v0,.L0d945e30
    sd	$a3,0($a4)
    li	$t9,1
.L0d945e80:
    lw	$t3,4($s1)
    lw	$at,0($t3)
    lw	$v0,3376($s0)
    beq	$at,$v0,.L0d945f0c
    addiu	$a5,$t3,24
    addiu	$a1,$s0,3400
    li	$a6,0x20
    addiu	$t2,$t3,8
    addiu	$a2,$s0,3384
    # Line 1575
    li	$a0,20
    move	$v0,$zero
    addiu	$t1,$s0,3376
    addiu	$a7,$s0,3392
    addiu	$t0,$t3,16
    nop
    nop
.L0d945ec0:
    addu	$ra,$v0,$t3
    addu	$at,$v0,$t1
    ld	$ra,0($ra)
    addu	$a4,$v0,$t2
    sd	$ra,0($at)
    addu	$ra,$v0,$a2
    ld	$a4,0($a4)
    addu	$a3,$v0,$t0
    sd	$a4,0($ra)
    addu	$a4,$v0,$a7
    ld	$a3,0($a3)
    addiu	$a0,$a0,-4
    addu	$v1,$v0,$a5
    sd	$a3,0($a4)
    addu	$a3,$v0,$a1
    ld	$v1,0($v1)
    addu	$v0,$v0,$a6
    bgtz	$a0,.L0d945ec0
    sd	$v1,0($a3)
.L0d945f0c:
    # Line 1581
    lw	$a0,32056($s0)
    lbu	$v1,1($sp)
    xor	$a0,$a0,$s2
    movn	$v1,$t8,$a0
    sb	$v1,1($sp)
    # Line 1585
    xor	$v0,$s2,$s1
    lbu	$at,3536($s0)
    sltiu	$v0,$v0,1
    bne	$v0,$at,.L0d945f40
    nop
    lw	$a1,32060($s0)
    beq	$a1,$s1,.L0d945f44
    nop
.L0d945f40:
    # Line 1586
    sb	$t8,0($sp)
.L0d945f44:
    # Line 1589
    sb	$v0,3536($s0)
    # Line 1590
    sw	$s2,32056($s0)
    # Line 1591
    sw	$s1,32060($s0)
    # Line 1593
    lbu	$a2,1($sp)
    beqz	$a2,.L0d946964
.L0d945f58:
    move	$v0,$zero
    sd	$t9,72($sp)
.L0d945f60:
    sw	$v0,32072($s0)
    # Line 1598
    sw	$s0,4112($zero)
    # Line 1599
    lw	$a3,3200($s0)
    sw	$a3,4120($zero)
    # Line 1601
    lw	$t9,56($s0)
    jalr	$t9
    move	$a0,$s0
    beqz	$v0,.L0d945fb0
    lw	$a5,172($s0)
    andi	$a4,$a5,0x2
    beqz	$a4,.L0d946664
    nop
    # Line 1605
    move	$v0,$zero
.L0d945f94:
    # Line 2388
    ld	$gp,104($sp)
    ld	$ra,160($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d945fb0:
    # Line 1631
    andi	$a6,$a5,0x4
    beqz	$a6,.L0d945fe4
    li	$a1,4
    # Line 2388
    ld	$gp,104($sp)
    ld	$ra,160($sp)
    ld	$s0,88($sp)
    # Line 1637
    move	$v0,$zero
    # Line 2388
    ld	$s1,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d945fdc:
    b	.L0d945e80
    # Line 1569
    move	$t9,$zero
.L0d945fe4:
    # Line 1641
    la	$t3,sub_0da50000
    # Line 1642
    li	$a0,236
    move	$v0,$zero
    # Line 1641
    addiu	$a6,$s0,7976
    addiu	$t3,$t3,-18056
    sw	$a6,6072($s0)
    move	$t8,$a6
    # Line 1642
    addiu	$t3,$t3,1888
.L0d946004:
    addiu	$a1,$a1,-1
    addu	$t9,$v0,$t3
    addiu	$a0,$a0,-1
    ld	$t9,0($t9)
    addu	$ra,$v0,$t8
    addiu	$v0,$v0,8
    bnez	$a1,.L0d946004
    sd	$t9,0($ra)
    addiu	$a3,$t3,16
    sd	$a3,136($sp)
    addiu	$v1,$t8,8
    sd	$v1,152($sp)
    addiu	$at,$t3,8
    sd	$at,144($sp)
    sd	$a6,56($sp)
    sd	$s3,208($sp)
    sd	$s5,168($sp)
    sd	$s6,200($sp)
    addiu	$s6,$t3,56
    addiu	$s5,$t8,56
    sd	$s4,192($sp)
    li	$ra,0x40
    addiu	$s4,$t8,16
    sd	$s7,176($sp)
    addiu	$a1,$t3,24
    addiu	$a2,$t8,24
    sd	$s8,184($sp)
    addiu	$s8,$t3,40
    addiu	$s7,$t8,40
    sd	$s1,216($sp)
    addiu	$t9,$t8,48
    addiu	$s1,$t3,48
    sd	$s2,224($sp)
    addiu	$s2,$t8,32
    addiu	$s3,$t3,32
    sd	$a5,48($sp)
    nop
    nop
    nop
.L0d9460a0:
    addu	$a4,$v0,$s6
    addu	$a6,$v0,$s1
    ld	$a4,0($a4)
    addu	$t0,$v0,$s8
    ld	$a6,0($a6)
    addu	$t2,$v0,$s3
    ld	$t0,0($t0)
    addu	$v1,$v0,$a1
    ld	$t2,0($t2)
    ld	$v1,0($v1)
    ld	$at,152($sp)
    addu	$a3,$v0,$t3
    ld	$a3,0($a3)
    ld	$a5,136($sp)
    addu	$a7,$v0,$t8
    ld	$t1,144($sp)
    sd	$a3,0($a7)
    addu	$a5,$v0,$a5
    addu	$t1,$v0,$t1
    ld	$a5,0($a5)
    addu	$at,$v0,$at
    ld	$t1,0($t1)
    addu	$a7,$v0,$s4
    sd	$t1,0($at)
    addu	$a3,$v0,$a2
    sd	$a5,0($a7)
    sd	$v1,0($a3)
    addu	$at,$v0,$s2
    addu	$t1,$v0,$s7
    sd	$t2,0($at)
    addiu	$a0,$a0,-8
    addu	$a7,$v0,$t9
    sd	$t0,0($t1)
    addu	$a5,$v0,$s5
    sd	$a6,0($a7)
    addu	$v0,$v0,$ra
    bgtz	$a0,.L0d9460a0
    sd	$a4,0($a5)
    li	$a5,4
    # Line 1643
    la	$t3,sub_0da50000
    li	$a0,236
    move	$v0,$zero
    addiu	$t9,$s0,6080
    addiu	$t3,$t3,-18056
.L0d946150:
    addiu	$a5,$a5,-1
    addu	$t8,$v0,$t3
    addiu	$a0,$a0,-1
    ld	$t8,0($t8)
    addu	$ra,$v0,$t9
    addiu	$v0,$v0,8
    bnez	$a5,.L0d946150
    sd	$t8,0($ra)
    addiu	$s2,$t3,56
    addiu	$t8,$t9,56
    li	$a1,0x40
    addiu	$s1,$t9,16
    addiu	$ra,$t3,16
    addiu	$s6,$t3,24
    addiu	$a2,$t9,24
    sd	$a2,128($sp)
    addiu	$a2,$t3,40
    addiu	$s5,$t9,40
    addiu	$s8,$t9,48
    addiu	$s7,$t3,48
    addiu	$s4,$t9,32
    addiu	$v1,$t9,8
    sd	$v1,120($sp)
    addiu	$s3,$t3,32
    addiu	$at,$t3,8
    sd	$at,112($sp)
    nop
    nop
.L0d9461c0:
    addu	$a3,$v0,$s2
    addu	$a5,$v0,$s7
    ld	$a3,0($a3)
    addu	$a7,$v0,$a2
    ld	$a5,0($a5)
    addu	$t1,$v0,$s3
    ld	$a7,0($a7)
    addu	$at,$v0,$s6
    ld	$t1,0($t1)
    ld	$at,0($at)
    addu	$a4,$v0,$ra
    ld	$a4,0($a4)
    ld	$t2,120($sp)
    ld	$t0,112($sp)
    addu	$v1,$v0,$t3
    addu	$a6,$v0,$t9
    ld	$v1,0($v1)
    sd	$v1,0($a6)
    ld	$v1,128($sp)
    addu	$t0,$v0,$t0
    addu	$t2,$v0,$t2
    ld	$t0,0($t0)
    addu	$a6,$v0,$s1
    sd	$t0,0($t2)
    sd	$a4,0($a6)
    addu	$v1,$v0,$v1
    addu	$t2,$v0,$s4
    sd	$at,0($v1)
    addu	$t0,$v0,$s5
    sd	$t1,0($t2)
    addiu	$a0,$a0,-8
    addu	$a6,$v0,$s8
    sd	$a7,0($t0)
    addu	$a4,$v0,$t8
    sd	$a5,0($a6)
    addu	$v0,$v0,$a1
    bgtz	$a0,.L0d9461c0
    sd	$a3,0($a4)
    # Line 1645
    lbu	$a4,3225($s0)
    ld	$s1,224($sp)
    beqz	$a4,.L0d946294
    ld	$s2,216($sp)
    lbu	$a5,32008($s0)
    ld	$s1,224($sp)
    beqz	$a5,.L0d946294
    ld	$s2,216($sp)
    # Line 1648
    li	$t0,2
    sw	$t0,4120($zero)
    lw	$a7,172($s0)
    lw	$a6,11756($s0)
    sd	$a7,48($sp)
    ori	$a6,$a6,0x80
    sw	$a6,11756($s0)
.L0d946294:
    ld	$t1,48($sp)
    andi	$t1,$t1,0x1
    beqz	$t1,.L0d947208
.L0d9462a0:
    # Line 1668
    ld	$t2,72($sp)
    beqz	$t2,.L0d946314
    nop
    lbu	$t3,3225($s0)
    beqz	$t3,.L0d946c10
    # Line 1675
    li	$t9,24
    sw	$t9,32032($s0)
    # Line 1674
    li	$t8,1
    sb	$t8,32008($s0)
.L0d9462c4:
    # Line 1678
    lbu	$ra,3226($s0)
    beqz	$ra,.L0d946c1c
    # Line 1683
    li	$v0,8
    sw	$v0,32036($s0)
    # Line 1682
    li	$at,1
    sb	$at,32009($s0)
.L0d9462dc:
    # Line 1686
    lw	$a0,-21596($gp)
    bltz	$a0,.L0d94733c
    # Line 1689
    nop	# was lw $t9, -22904($gp) # &getenv
.L0d9462e8:
    # Line 1691
    lbu	$v1,3224($s0)
    beqz	$v1,.L0d946310
    li	$a1,0x80f4
    addu	$a1,$a1,$s0
    lw	$a1,0($a1)
    li	$a2,-1
    beq	$a1,$a2,.L0d946310
    nop
    beqz	$a0,.L0d946f78
    # Line 1693
    li	$t9,1
.L0d946310:
    # Line 1695
    sb	$zero,32010($s0)
.L0d946314:
    # Line 1700
    lw	$t9,40($s0)
    move	$a0,$s0
    jal	getenv
    lw	$a1,32184($s0)
    # Line 1701
    lw	$t9,52($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 1700
    sw	$v0,31504($s0)
    # Line 1701
    lw	$a2,172($s0)
    andi	$a2,$a2,0x1
    beqz	$a2,.L0d9471d0
    # Line 1717
    nop	# was lw $t9, -31864($gp) # &__glCrmIoctl
.L0d946344:
    # Line 1742
    lw	$a5,0($s1)
    sw	$a5,8($sp)
    # Line 1744
    lw	$a4,-21600($gp)
    # Line 1743
    lw	$a3,0($s2)
    # Line 1744
    sw	$zero,16($sp)
    move	$v0,$zero
    beqz	$a4,.L0d946b1c
    # Line 1743
    sw	$a3,12($sp)
.L0d946364:
    # Line 1758
    lbu	$a6,3225($s0)
    beqz	$a6,.L0d946aa4
    nop
    lbu	$a7,32008($s0)
    beqz	$a7,.L0d946aa4
    nop
.L0d94637c:
    # Line 1760
    ori	$v0,$v0,0x1
    sw	$v0,16($sp)
.L0d946384:
    lw	$t0,3300($s0)
.L0d946388:
    li	$t1,1
    beq	$t0,$t1,.L0d946bfc
    nop
.L0d946394:
    # Line 1764
    lbu	$t2,3385($s0)
    beqz	$t2,.L0d946ac4
    nop
.L0d9463a0:
    # Line 1765
    ori	$v0,$v0,0x2
    sw	$v0,16($sp)
    lw	$t3,3460($s0)
.L0d9463ac:
    li	$t8,1
    beq	$t3,$t8,.L0d946c08
    # Line 1767
    ori	$v1,$v0,0x8
.L0d9463b8:
    # Line 1769
    # lw $t9, -31864($gp) # &__glCrmIoctl
    addiu	$a2,$sp,8
    li	$a1,22025
    bal __glCrmIoctl
    lw	$a0,31504($s0)
    bltz	$v0,.L0d946ff4
    ld	$s3,208($sp)
    # Line 1776
    lw	$at,32188($s0)
    # Line 1775
    li	$ra,125
    sw	$ra,32192($s0)
    # Line 1776
    sw	$ra,8688($at)
    # Line 1778
    sb	$zero,32011($s0)
    # Line 1779
    lw	$t9,0($s1)
    li	$s4,4
    beq	$t9,$s4,.L0d946ad8
    nop
.L0d9463f8:
    # Line 1790
    sb	$zero,32012($s0)
    # Line 1791
    lw	$v0,0($s2)
    beq	$v0,$s4,.L0d946b4c
    nop
.L0d946408:
    # Line 1802
    lw	$v1,0($s1)
    li	$s5,5
    beq	$v1,$s5,.L0d946f84
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    lw	$a0,0($s2)
    beq	$a0,$s5,.L0d946f84
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
.L0d946424:
    # Line 1810
    lw	$a1,172($s0)
    andi	$a1,$a1,0x2
    beqz	$a1,.L0d946444
    # Line 1817
    li	$a4,2
    # Line 1810
    ld	$a2,72($sp)
    beqz	$a2,.L0d946b44
    # Line 1886
    lui	$s3,0x1
    # Line 1817
    li	$a4,2
.L0d946444:
    sw	$a4,4120($zero)
    lbu	$a4,3220($s0)
    lw	$a3,11756($s0)
    addiu	$a0,$s0,30664
    ori	$a3,$a3,0xff
    beqz	$a4,.L0d946c38
    sw	$a3,11756($s0)
    # Line 1821
    # lw $t9, -31412($gp) # &__glCrmInitRGB
    jal	__glCrmInitRGB
    move	$a1,$s0
    lbu	$a5,3222($s0)
    beqz	$a5,.L0d94648c
    # Line 1825
    lwc1	$f0,_lit_45800000
    # Line 1823
    # lw $t9, -31412($gp) # &__glCrmInitRGB
    move	$a1,$s0
    jal	__glCrmInitRGB
    addiu	$a0,$s0,30884
    # Line 1825
    lwc1	$f0,_lit_45800000
.L0d94648c:
    swc1	$f0,32016($s0)
.L0d946490:
    # Line 1851
    li	$a7,-1
    sw	$a7,4852($s0)
    # Line 1850
    li	$t8,1
    sb	$t8,4848($s0)
    # Line 1845
    lwc1	$f3,_lit_45000000
    # Line 1848
    lwc1	$f1,_lit_46800000
    # Line 1847
    lwc1	$f2,_lit_42800000
    # Line 1848
    swc1	$f1,32028($s0)
    # Line 1853
    lui	$s3,0x1
    # Line 1847
    swc1	$f2,32024($s0)
    # Line 1853
    addu	$s3,$s0,$s3
    # Line 1845
    swc1	$f3,32020($s0)
    # Line 1853
    sb	$zero,-32468($s3)
    lbu	$a6,3224($s0)
    beqz	$a6,.L0d9464e8
    nop
    lbu	$t9,32010($s0)
    beqz	$t9,.L0d946fdc
    addiu	$a0,$s0,31360
    # Line 1858
    # lw $t9, -32112($gp) # &__glCrmInitAccum64
    jal	__glCrmInitAccum64
    move	$a1,$s0
.L0d9464e8:
    # Line 1861
    lbu	$t8,3225($s0)
    lui	$s6,0x3fff
    beqz	$t8,.L0d946f58
    ori	$s6,$s6,0xffff
    lbu	$t9,32008($s0)
    beqz	$t9,.L0d946f40
    addiu	$v0,$s0,31228
    # Line 1866
    # lw $t9, -31788($gp) # &__glCrmInitDepth
    move	$a0,$s0
    bal __glCrmInitDepth
    move	$a1,$v0
.L0d946514:
    # Line 1876
    sw	$s6,31304($s0)
.L0d946518:
    # Line 1879
    lbu	$ra,3226($s0)
    beqz	$ra,.L0d946540
    nop
    lbu	$at,32009($s0)
    beqz	$at,.L0d946f60
    addiu	$v0,$s0,31108
    # Line 1884
    # lw $t9, -31312($gp) # &__glCrmInitStencil
    move	$a0,$s0
    jal	__glCrmInitStencil
    move	$a1,$v0
.L0d946540:
    # Line 1891
    lbu	$v0,32011($s0)
.L0d946544:
    beqz	$v0,.L0d946b98
    nop
.L0d94654c:
    lw	$v1,-32524($s3)
    bltz	$v1,.L0d947048
    nop
    # Line 1899
    lw	$a0,0($s1)
    beq	$a0,$s4,.L0d946c28
    nop
.L0d946564:
    # Line 1902
    lbu	$a1,-32512($s3)
    blez	$a1,.L0d946578
    ld	$a2,72($sp)
    beqz	$a2,.L0d946584
    nop
.L0d946578:
    lw	$a3,0($s1)
    beq	$a3,$s4,.L0d947268
    # Line 1904
    nop	# was lw $t9, -23228($gp) # &__glInitSPBuff
.L0d946584:
    # Line 1910
    lw	$a5,3704($s0)
.L0d946588:
    sw	$a5,28($sp)
    lw	$a4,0($s1)
    beq	$a4,$s5,.L0d946bac
    addiu	$a2,$s0,32048
    # Line 1914
    # lw $t9, -26432($gp) # &__glMakeCurrentBuffers
    move	$a0,$s0
    jal	__glMakeCurrentBuffers
    move	$a1,$a2
    andi	$s6,$v0,0xff
.L0d9465ac:
    # Line 1921
    sw	$zero,32076($s0)
    # Line 1922
    sw	$zero,32080($s0)
    # Line 1923
    sw	$zero,32084($s0)
    lbu	$a6,1($sp)
    beqz	$a6,.L0d9465e8
    # Line 1946
    lbu	$t1,0($sp)
    # Line 1923
    lbu	$a7,3222($s0)
    beqz	$a7,.L0d946f38
    addiu	$a0,$s0,30664
    # Line 1929
    addiu	$t0,$s0,30884
    sw	$t0,30660($s0)
    # Line 1928
    sw	$a0,30656($s0)
.L0d9465dc:
    # Line 1943
    sw	$zero,11764($s0)
    # Line 1942
    sw	$zero,11760($s0)
    # Line 1946
    lbu	$t1,0($sp)
.L0d9465e8:
    beqz	$t1,.L0d94660c
    nop
    beq	$s1,$s2,.L0d94660c
    nop
    # Line 1947
    lw	$v0,28($s2)
    # Line 1949
    beqz	$v0,.L0d946b3c
    sw	$zero,11764($s0)
    # Line 1951
    lw	$t2,48($v0)
    sw	$t2,32052($s0)
.L0d94660c:
    # Line 2005
    lbu	$t3,32012($s0)
    beqz	$t3,.L0d9466f4
    nop
    lw	$v0,28($s2)
    beqz	$v0,.L0d9466f4
    nop
    beq	$s1,$s2,.L0d9466f4
    # Line 2011
    la	$ra,__glReadSpan
    # Line 2009
    lw	$at,8($v0)
    sw	$at,-32516($s3)
    # Line 2011
    sw	$ra,30840($s0)
    lw	$t3,4($s2)
    lw	$t8,44($t3)
    li	$t9,16
    beq	$t8,$t9,.L0d947200
    # Line 2013
    la	$a7,__glCrmFetchSPBuffColor
    lw	$v0,40($t3)
    li	$v1,8
    beq	$v0,$v1,.L0d9471f4
    # Line 2017
    la	$a0,__glCrmFetchSPBuffRed
    b	.L0d94670c
    sw	$a0,30836($s0)
.L0d946664:
    # Line 1605
    lbu	$a1,3536($s0)
    beqz	$a1,.L0d947028
    # Line 1609
    andi	$a2,$a5,0x4
    bnez	$a2,.L0d9466c8
    sd	$v0,64($sp)
    lw	$t9,32324($s0)
    beqz	$t9,.L0d94668c
    # Line 1617
    move	$a0,$s0
    jalr	$t9
    li	$a1,-1
.L0d94668c:
    lw	$a3,32568($s0)
    bltz	$a3,.L0d9466a8
    # Line 1622
    nop	# was lw $t9, -31296($gp) # &__glCrmFreeTextureState
    # Line 1620
    # lw $t9, -23220($gp) # &viceCloseDev
    jal	viceCloseDev
    move	$a0,$s0
    # Line 1622
    # lw $t9, -31296($gp) # &__glCrmFreeTextureState
.L0d9466a8:
    jal	__glCrmFreeTextureState
    move	$a0,$s0
    # Line 1624
    lw	$t9,48($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1627
    # lw $t9, -26424($gp) # &__glFreeBufData
    jal	__glFreeBufData
    move	$a0,$s0
.L0d9466c8:
    # Line 1631
    # lw $t9, -28488($gp) # &__glPixmapMakeCurrent
    move	$a0,$s0
    jal	__glPixmapMakeCurrent
    ld	$a1,64($sp)
    # Line 2388
    ld	$gp,104($sp)
    ld	$ra,160($sp)
    ld	$s0,88($sp)
    ld	$s1,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d9466f4:
    # Line 2019
    lw	$v0,-32516($s3)
    beqz	$v0,.L0d94670c
    nop
    beq	$s1,$s2,.L0d94670c
    nop
    # Line 2020
    sw	$zero,0($v0)
.L0d94670c:
    # Line 2019
    lw	$a4,172($s0)
    andi	$a4,$a4,0x2
    beqz	$a4,.L0d946c74
.L0d946718:
    # Line 2222
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,15488
    bal __glCrmAllocAccum
    move	$a0,$s0
    lw	$ra,172($s0)
    andi	$ra,$ra,0x6
    beqz	$ra,.L0d947280
    # Line 2227
    nop	# was lw $t9, -26468($gp) # &__glSoftResetContext
    # Line 2263
    beqz	$s6,.L0d94674c
    # Line 2269
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,15040
    bal __glCrmAllocAccum
    move	$a0,$s0
.L0d94674c:
    lw	$v0,3704($s0)
    lw	$a0,28($sp)
    beq	$v0,$a0,.L0d946778
    # Line 2278
    nop	# was lw $t9, -32744($gp) # &sub_0d940000
    # Line 2275
    subu	$ra,$v0,$a0
    mtc1	$ra,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,372($s0)
    add.s	$f4,$f4,$f5
    swc1	$f4,372($s0)
    # Line 2278
    # lw $t9, -32744($gp) # &sub_0d940000
.L0d946778:
    addiu	$t9,$t9,14576
    bal __glCrmAllocAccum
    move	$a0,$s0
    # Line 2280
    # lw $t9, -31844($gp) # &__glCrmSetCurrentBuffers
    move	$a0,$s0
    li	$a2,1
    bal __glCrmSetCurrentBuffers
    li	$a1,1
.L0d946798:
    # Line 2282
    bne	$s1,$s2,.L0d9467ac
    # Line 2292
    nop	# was lw $t9, -26472($gp) # &__glContextSetColorScales
    # Line 2282
    lw	$ra,0($s2)
    beq	$ra,$s4,.L0d9470a0
.L0d9467a8:
    # Line 2292
    nop	# was lw $t9, -26472($gp) # &__glContextSetColorScales
.L0d9467ac:
    jal	__glContextSetColorScales
    move	$a0,$s0
    lbu	$at,3536($s0)
    beqz	$at,.L0d946bc8
.L0d9467bc:
    # Line 2333
    nop	# was lw $t9, -31832($gp) # &__glCrmUpdateHardwareState
    bal __glCrmUpdateHardwareState
    move	$a0,$s0
    lw	$v0,4168($zero)
    beqz	$v0,.L0d946984
    lw	$v0,4988($s0)
    beqz	$v0,.L0d947354
    ld	$a1,56($sp)
    li	$a5,4
    # Line 2360
    li	$v0,236
    move	$a0,$zero
    addiu	$a2,$s0,7976
    addiu	$a1,$s0,6080
    # Line 2359
    addiu	$v1,$s0,9864
    sw	$v1,6072($s0)
.L0d9467f8:
    addiu	$a5,$a5,-1
    # Line 2360
    addu	$a3,$a0,$a1
    addiu	$v0,$v0,-1
    addu	$a4,$a0,$a2
    ld	$a3,0($a3)
    addiu	$a0,$a0,8
    bnez	$a5,.L0d9467f8
    sd	$a3,0($a4)
    addiu	$a6,$a1,56
    addiu	$s2,$a2,56
    li	$s1,0x40
    addiu	$s5,$a1,8
    addiu	$s4,$a2,8
    addiu	$t9,$a2,16
    addiu	$ra,$a1,16
    addiu	$a7,$a1,24
    addiu	$s3,$a2,24
    addiu	$t1,$a1,40
    addiu	$a5,$a2,40
    addiu	$t0,$a2,48
    addiu	$t2,$a1,48
    addiu	$t3,$a2,32
    addiu	$t8,$a1,32
    nop
    nop
    nop
.L0d946860:
    addu	$a3,$a0,$a1
    addu	$a4,$a0,$a2
    ld	$a3,0($a3)
    addu	$v1,$a0,$s5
    sd	$a3,0($a4)
    addu	$a3,$a0,$s4
    ld	$v1,0($v1)
    addu	$at,$a0,$ra
    sd	$v1,0($a3)
    addu	$v1,$a0,$t9
    ld	$at,0($at)
    addu	$a4,$a0,$a7
    sd	$at,0($v1)
    addu	$at,$a0,$s3
    ld	$a4,0($a4)
    addu	$a3,$a0,$t8
    sd	$a4,0($at)
    addu	$a4,$a0,$t3
    ld	$a3,0($a3)
    addu	$v1,$a0,$t1
    sd	$a3,0($a4)
    addu	$a3,$a0,$a5
    ld	$v1,0($v1)
    addu	$at,$a0,$t2
    sd	$v1,0($a3)
    addu	$v1,$a0,$t0
    ld	$at,0($at)
    addiu	$v0,$v0,-8
    addu	$a4,$a0,$a6
    sd	$at,0($v1)
    addu	$at,$a0,$s2
    ld	$a4,0($a4)
    addu	$a0,$a0,$s1
    bgtz	$v0,.L0d946860
    sd	$a4,0($at)
.L0d9468ec:
    # Line 2380
    lbu	$a5,3220($s0)
.L0d9468f0:
    # Line 2374
    lw	$a4,172($s0)
    ori	$a4,$a4,0x3
    # Line 2375
    li	$a6,-5
    and	$a4,$a4,$a6
    # Line 2380
    beqz	$a5,.L0d94692c
    # Line 2375
    sw	$a4,172($s0)
    # Line 2380
    beqz	$s6,.L0d946930
    ld	$s5,168($sp)
    lw	$a5,3268($s0)
    bnez	$a5,.L0d946930
    ld	$s5,168($sp)
    lw	$a6,3260($s0)
    li	$a7,8
    beq	$a6,$a7,.L0d947378
    # Line 2382
    nop	# was lw $t9, -26544($gp) # &__glim_Clear
.L0d94692c:
    ld	$s5,168($sp)
.L0d946930:
    ld	$s7,176($sp)
    ld	$s8,184($sp)
    ld	$s4,192($sp)
    ld	$s6,200($sp)
    ld	$s3,208($sp)
    # Line 2388
    ld	$gp,104($sp)
    ld	$ra,160($sp)
    ld	$s0,88($sp)
    li	$v0,1
    ld	$s1,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d946964:
    # Line 1593
    lw	$v0,0($s2)
    li	$t0,4
    beq	$v0,$t0,.L0d946978
    li	$t1,5
    bne	$v0,$t1,.L0d945f58
.L0d946978:
    li	$v0,1
    b	.L0d945f60
    sd	$t9,72($sp)
.L0d946984:
    # Line 2362
    beqz	$v0,.L0d9470cc
    li	$a5,4
    li	$a5,4
    # Line 2367
    li	$v0,236
    move	$a0,$zero
    li	$a2,4176
    addiu	$a1,$s0,6080
    # Line 2366
    addiu	$t2,$s0,9864
    sw	$t2,6072($s0)
.L0d9469a8:
    addiu	$a5,$a5,-1
    # Line 2367
    addu	$t3,$a0,$a1
    addiu	$v0,$v0,-1
    addu	$t8,$a0,$a2
    ld	$t3,0($t3)
    addiu	$a0,$a0,8
    bnez	$a5,.L0d9469a8
    sd	$t3,0($t8)
    addiu	$t1,$a1,56
    addiu	$a5,$a2,56
    li	$a6,0x40
    addiu	$s5,$a1,8
    addiu	$s1,$a2,8
    addiu	$s2,$a2,16
    addiu	$s3,$a1,16
    addiu	$s4,$a1,24
    addiu	$ra,$a2,24
    addiu	$a7,$a1,40
    addiu	$t9,$a2,40
    addiu	$t8,$a2,48
    addiu	$t3,$a1,48
    addiu	$t0,$a2,32
    addiu	$t2,$a1,32
    nop
    nop
    nop
.L0d946a10:
    addu	$a4,$a0,$a1
    addu	$at,$a0,$a2
    ld	$a4,0($a4)
    addu	$a3,$a0,$s5
    sd	$a4,0($at)
    addu	$a4,$a0,$s1
    ld	$a3,0($a3)
    addu	$v1,$a0,$s3
    sd	$a3,0($a4)
    addu	$a3,$a0,$s2
    ld	$v1,0($v1)
    addu	$at,$a0,$s4
    sd	$v1,0($a3)
    addu	$v1,$a0,$ra
    ld	$at,0($at)
    addu	$a4,$a0,$t2
    sd	$at,0($v1)
    addu	$at,$a0,$t0
    ld	$a4,0($a4)
    addu	$a3,$a0,$a7
    sd	$a4,0($at)
    addu	$a4,$a0,$t9
    ld	$a3,0($a3)
    addu	$v1,$a0,$t3
    sd	$a3,0($a4)
    addu	$a3,$a0,$t8
    ld	$v1,0($v1)
    addiu	$v0,$v0,-8
    addu	$at,$a0,$t1
    sd	$v1,0($a3)
    addu	$v1,$a0,$a5
    ld	$at,0($at)
    addu	$a0,$a0,$a6
    bgtz	$v0,.L0d946a10
    sd	$at,0($v1)
    b	.L0d9468f0
    # Line 2380
    lbu	$a5,3220($s0)
.L0d946aa4:
    # Line 1758
    lbu	$a5,3226($s0)
    beqz	$a5,.L0d946384
    nop
    lbu	$a6,32009($s0)
    bnez	$a6,.L0d94637c
    nop
    b	.L0d946388
    # Line 1760
    lw	$t0,3300($s0)
.L0d946ac4:
    # Line 1764
    lbu	$a7,3386($s0)
    bnez	$a7,.L0d9463a0
    nop
    b	.L0d9463ac
    # Line 1765
    lw	$t3,3460($s0)
.L0d946ad8:
    # Line 1779
    lw	$a6,4($s1)
    lbu	$t0,4($a6)
    beqz	$t0,.L0d9463f8
    nop
    lw	$t1,40($a6)
    li	$t2,16
    beq	$t1,$t2,.L0d946b04
    li	$t8,0x80f4
    lw	$t3,44($a6)
    bnez	$t3,.L0d9463f8
    li	$t8,0x80f4
.L0d946b04:
    addu	$t8,$t8,$s0
    lw	$t8,0($t8)
    bltz	$t8,.L0d947400
    li	$t9,1
    b	.L0d9463f8
    # Line 1787
    sb	$t9,32011($s0)
.L0d946b1c:
    # Line 1744
    lw	$a0,32560($s0)
    lw	$a0,4($a0)
    beqz	$a0,.L0d9473b0
    # Line 1749
    nop	# was lw $t9, -31864($gp) # &__glCrmIoctl
.L0d946b2c:
    # Line 1755
    ori	$v0,$v0,0x10
    sw	$v0,16($sp)
    b	.L0d946364
    # Line 1754
    sw	$a0,20($sp)
.L0d946b3c:
    b	.L0d94660c
    # Line 1953
    sw	$zero,32052($s0)
.L0d946b44:
    b	.L0d946540
    # Line 1886
    addu	$s3,$s0,$s3
.L0d946b4c:
    # Line 1791
    lw	$t3,4($s2)
    lbu	$t8,4($t3)
    beqz	$t8,.L0d946408
    nop
    lw	$t9,40($t3)
    li	$ra,16
    beq	$t9,$ra,.L0d946b78
    nop
    lw	$at,44($t3)
    bnez	$at,.L0d946408
    nop
.L0d946b78:
    beq	$s1,$s2,.L0d946408
    li	$v0,0x80f4
    addu	$v0,$v0,$s0
    lw	$v0,0($v0)
    bltz	$v0,.L0d94749c
    li	$v1,1
    b	.L0d946408
    # Line 1799
    sb	$v1,32012($s0)
.L0d946b98:
    # Line 1891
    lbu	$a0,32012($s0)
    bnez	$a0,.L0d94654c
    nop
    b	.L0d946588
    # Line 1910
    lw	$a5,3704($s0)
.L0d946bac:
    # Line 1912
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,23504
    move	$a0,$s0
    bal __glCrmUpdateHardwareState
    move	$a1,$s1
    b	.L0d9465ac
    andi	$s6,$v0,0xff
.L0d946bc8:
    # Line 2299
    lw	$v0,28($s2)
    # Line 2300
    beqz	$v0,.L0d947080
    nop
    lw	$a0,0($v0)
    beqz	$a0,.L0d947080
    nop
    lw	$ra,4($v0)
    beqz	$ra,.L0d947080
    nop
    # Line 2325
    sw	$a0,32064($s0)
    # Line 2326
    lw	$at,4($v0)
    b	.L0d9467bc
    sw	$at,32068($s0)
.L0d946bfc:
    # Line 1762
    ori	$v0,$v0,0x4
    b	.L0d946394
    sw	$v0,16($sp)
.L0d946c08:
    # Line 1767
    b	.L0d9463b8
    sw	$v1,16($sp)
.L0d946c10:
    # Line 1678
    sw	$zero,32032($s0)
    b	.L0d9462c4
    # Line 1677
    sb	$zero,32008($s0)
.L0d946c1c:
    # Line 1686
    sw	$zero,32036($s0)
    b	.L0d9462dc
    # Line 1685
    sb	$zero,32009($s0)
.L0d946c28:
    # Line 1899
    beq	$s1,$s2,.L0d946564
    # Line 1900
    addiu	$a0,$s0,30664
    b	.L0d946564
    sw	$a0,11764($s0)
.L0d946c38:
    # Line 1828
    # lw $t9, -31944($gp) # &__glCrmInitCI
    bal __glCrmInitCI
    move	$a1,$s0
    lbu	$a1,3222($s0)
    beqz	$a1,.L0d946c5c
    # Line 1830
    nop	# was lw $t9, -31944($gp) # &__glCrmInitCI
    move	$a1,$s0
    bal __glCrmInitCI
    addiu	$a0,$s0,30884
.L0d946c5c:
    lw	$a2,3252($s0)
    li	$a3,12
    beq	$a2,$a3,.L0d94735c
    # Line 1835
    lwc1	$f5,_lit_45800000
    b	.L0d946490
    swc1	$f5,32016($s0)
.L0d946c74:
    # Line 2106
    la	$at,__glComputeClipBox
    sw	$at,11916($s0)
    # Line 2102
    la	$ra,__glCrmSpanRenderStencil2
    sw	$ra,12468($s0)
    # Line 2101
    # lw $t9, -31472($gp) # &__glCrmSpanRenderStencil
    sw	$t9,12464($s0)
    # Line 2100
    la	$t8,__glCrmSpanRenderDepth2
    sw	$t8,12460($s0)
    # Line 2099
    la	$t3,__glCrmSpanRenderDepth
    sw	$t3,12456($s0)
    # Line 2098
    la	$t2,__glCrmSpanRenderRGBA2
    sw	$t2,12452($s0)
    # Line 2097
    la	$t1,__glCrmSpanRenderRGBA
    sw	$t1,12448($s0)
    # Line 2096
    la	$t0,__glCrmSpanRenderCI2
    sw	$t0,12444($s0)
    # Line 2095
    la	$a7,__glCrmSpanRenderCI
    sw	$a7,12440($s0)
    # Line 2093
    la	$a6,__glCrmSpanReadStencil2
    sw	$a6,12436($s0)
    # Line 2092
    la	$a5,__glCrmSpanReadStencil
    sw	$a5,12432($s0)
    # Line 2091
    la	$a4,__glCrmSpanReadDepth2
    sw	$a4,12428($s0)
    # Line 2090
    la	$a3,__glCrmSpanReadDepth
    sw	$a3,12424($s0)
    # Line 2025
    la	$a2,__glCrmSpanReadColor2
    # Line 2089
    sw	$a2,12420($s0)
    # Line 2025
    la	$a1,__glCrmSpanReadColor
    # Line 2088
    sw	$a1,12416($s0)
    # Line 2087
    sw	$a2,12412($s0)
    # Line 2086
    sw	$a1,12408($s0)
    # Line 2084
    la	$a0,__glGenericPickReadImage
    sw	$a0,12576($s0)
    # Line 2083
    la	$v1,__glGenericPickCopyImage
    sw	$v1,12572($s0)
    # Line 2081
    la	$v0,__glCrmPickTextureProcs
    sw	$v0,11796($s0)
    # Line 2080
    la	$at,__glGenericPickParameterClipProcs
    sw	$at,11832($s0)
    # Line 2079
    la	$ra,__glGenericPickTransformProcs
    sw	$ra,11804($s0)
    # Line 2078
    # lw $t9, -25308($gp) # &__glGenericPickFogProcs
    sw	$t9,11800($s0)
    # Line 2077
    la	$t8,__glGenericPickMvpMatrixProcs
    sw	$t8,11860($s0)
    # Line 2076
    la	$t3,__glGenericPickInvTransposeProcs
    sw	$t3,11856($s0)
    # Line 2075
    la	$t2,__glGenericPickMatrixProcs
    sw	$t2,11852($s0)
    # Line 2074
    la	$t1,__glGenericPickColorMaterialProcs
    sw	$t1,11792($s0)
    # Line 2073
    la	$t0,__glGenericPickBlendProcs
    sw	$t0,11788($s0)
    # Line 2067
    la	$a7,__glCrmRasterPos4
    sw	$a7,12624($s0)
    # Line 2066
    la	$a6,__glCrmRasterPos3
    sw	$a6,12620($s0)
    # Line 2065
    la	$a5,__glCrmRasterPos2
    sw	$a5,12616($s0)
    # Line 2064
    la	$a4,__glSecondLinesVertex
    sw	$a4,11964($s0)
    # Line 2063
    la	$a3,__glFirstLinesVertex
    sw	$a3,11960($s0)
    # Line 2062
    la	$a2,__glOddTStripVertex
    sw	$a2,11968($s0)
    # Line 2061
    la	$a1,__glEvenTStripVertex
    sw	$a1,11972($s0)
    # Line 2060
    la	$a0,__glNop
    sw	$a0,11948($s0)
    # Line 2058
    la	$v1,__glEndPrim
    sw	$v1,12068($s0)
    # Line 2057
    la	$v0,__glBeginQuads
    sw	$v0,12056($s0)
    # Line 2056
    la	$at,__glBeginQStrip
    sw	$at,12060($s0)
    # Line 2055
    la	$ra,__glBeginTriangles
    sw	$ra,12044($s0)
    # Line 2054
    # lw $t9, -25172($gp) # &__glBeginTFan
    sw	$t9,12052($s0)
    # Line 2053
    la	$t8,__glBeginTStrip
    sw	$t8,12048($s0)
    # Line 2052
    la	$t3,__glBeginPolygon
    sw	$t3,12064($s0)
    # Line 2051
    la	$t2,__glBeginPoints
    sw	$t2,12028($s0)
    # Line 2050
    la	$t1,__glBeginLines
    sw	$t1,12032($s0)
    # Line 2049
    la	$t0,__glBeginLStrip
    sw	$t0,12040($s0)
    # Line 2048
    la	$a7,__glBeginLLoop
    sw	$a7,12036($s0)
    # Line 2047
    la	$a6,__glComputeInverseTranspose
    sw	$a6,11900($s0)
    # Line 2042
    la	$a5,__glMipsNormalize
    sw	$a5,11904($s0)
    # Line 2041
    la	$a4,__glMipsMultMatrix
    sw	$a4,11884($s0)
    # Line 2039
    la	$a3,__glMakeIdentity
    sw	$a3,11880($s0)
    # Line 2038
    la	$a2,__glInvertTransposeMatrix
    sw	$a2,11876($s0)
    # Line 2037
    la	$a1,__glCopyMatrix
    sw	$a1,11872($s0)
    # Line 2035
    la	$a0,__glLoadIdentityModelViewMatrix
    sw	$a0,11896($s0)
    # Line 2034
    la	$v1,__glPopModelViewMatrix
    sw	$v1,11892($s0)
    # Line 2033
    la	$v0,__glPushModelViewMatrix
    sw	$v0,11888($s0)
    # Line 2031
    la	$at,__glConvertStipple
    sw	$at,12656($s0)
    # Line 2030
    la	$ra,__glCrmPickAllProcs
    sw	$ra,11868($s0)
    # Line 2029
    # lw $t9, -31636($gp) # &__glCrmValidate
    sw	$t9,11784($s0)
    # Line 2028
    la	$t8,__glClipPolygon
    sw	$t8,12092($s0)
    # Line 2027
    la	$t3,__glDrawBitmap
    sw	$t3,12508($s0)
    # Line 2026
    la	$t2,__glDoEvalCoord2
    sw	$t2,11992($s0)
    # Line 2025
    la	$t1,__glDoEvalCoord1
    # Line 2110
    la	$t0,sub_0d940000
    # Line 2025
    sw	$t1,11988($s0)
    # Line 2110
    addiu	$t0,$t0,20000
    sw	$t0,88($s0)
    # Line 2108
    la	$a7,sub_0d940000
    # Line 2107
    la	$a6,sub_0d940000
    # Line 2108
    addiu	$a7,$a7,19984
    sw	$a7,11768($s0)
    # Line 2107
    addiu	$a6,$a6,19904
    sw	$a6,11772($s0)
    # Line 2105
    la	$a5,sub_0d940000
    # Line 2110
    lw	$a0,-21592($gp)
    # Line 2104
    la	$a4,sub_0d940000
    # Line 2105
    addiu	$a5,$a5,15280
    sw	$a5,11912($s0)
    # Line 2104
    addiu	$a4,$a4,15488
    # Line 2110
    bltz	$a0,.L0d9473e4
    # Line 2104
    sw	$a4,11908($s0)
.L0d946ea8:
    # Line 2112
    beqz	$a0,.L0d947368
    # Line 2117
    la	$v0,sub_0d940000
    addiu	$v0,$v0,19600
    sw	$v0,124($s0)
.L0d946eb8:
    # Line 2161
    sw	$zero,32096($s0)
    # Line 2160
    sw	$zero,32092($s0)
    # Line 2158
    lui	$t8,0x40
    sw	$t8,32088($s0)
    # Line 2133
    la	$t3,__glColorTableSGI
    sw	$t3,12664($s0)
    # Line 2132
    la	$t2,__gl_varray_funcs
    sw	$t2,12660($s0)
    # Line 2130
    la	$t1,__glGenericPickDepthProcs
    sw	$t1,11864($s0)
    # Line 2129
    la	$t0,__glCrmPickVertexProcs
    sw	$t0,11848($s0)
    # Line 2128
    la	$a7,__glCrmPickStoreProcs
    sw	$a7,11840($s0)
    # Line 2127
    la	$a6,__glCrmPickPointProcs
    sw	$a6,11808($s0)
    # Line 2126
    la	$a5,__glCrmPickRenderBitmapProcs
    sw	$a5,11820($s0)
    # Line 2125
    la	$a4,__glCrmPickTriangleProcs
    sw	$a4,11816($s0)
    # Line 2124
    la	$a3,__glCrmPickSpanProcs
    sw	$a3,11844($s0)
    # Line 2123
    la	$a2,__glCrmPickLineProcs
    sw	$a2,11812($s0)
    # Line 2122
    la	$a1,__glCrmPickClipProcs
    sw	$a1,11828($s0)
    # Line 2121
    la	$a0,__glCrmPickPixelProcs
    # Line 2119
    la	$v1,sub_0d940000
    # Line 2121
    sw	$a0,11824($s0)
    # Line 2119
    addiu	$v1,$v1,18976
    b	.L0d946718
    sw	$v1,11836($s0)
.L0d946f38:
    b	.L0d9465dc
    # Line 1940
    sw	$a0,30656($s0)
.L0d946f40:
    # Line 1868
    # lw $t9, -26324($gp) # &__glInitDepth
    move	$a0,$v0
    jal	__glInitDepth
    move	$a1,$s0
    b	.L0d946514
    nop
.L0d946f58:
    b	.L0d946518
    # Line 1879
    sw	$s6,31304($s0)
.L0d946f60:
    # Line 1886
    # lw $t9, -24684($gp) # &__glInitStencil8
    move	$a0,$v0
    jal	__glInitStencil8
    move	$a1,$s0
    b	.L0d946544
    # Line 1891
    lbu	$v0,32011($s0)
.L0d946f78:
    # Line 1693
    b	.L0d946314
    sb	$t9,32010($s0)
    # Line 1802
    # lw $t9, -32744($gp) # &sub_0d940000
.L0d946f84:
    move	$a0,$s0
    move	$a1,$s1
    addiu	$t9,$t9,23040
    move	$a2,$s2
    addiu	$a4,$sp,0
    bal __glCrmUpdateHardwareState
    addiu	$a3,$sp,1
    bnez	$v0,.L0d946424
    ld	$s3,208($sp)
    ld	$s6,200($sp)
    ld	$s4,192($sp)
    ld	$s8,184($sp)
    ld	$s7,176($sp)
    ld	$s5,168($sp)
    # Line 2388
    ld	$gp,104($sp)
    ld	$ra,160($sp)
    ld	$s0,88($sp)
    # Line 1806
    move	$v0,$zero
    # Line 2388
    ld	$s1,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d946fdc:
    # Line 1860
    # lw $t9, -27196($gp) # &__glInitAccum64
    jal	__glInitAccum64
    move	$a1,$s0
    # Line 1861
    la	$ra,__glCrmAllocAccum
    b	.L0d9464e8
    sw	$ra,31492($s0)
.L0d946ff4:
    ld	$s6,200($sp)
    ld	$s4,192($sp)
    ld	$s8,184($sp)
    ld	$s7,176($sp)
    ld	$s5,168($sp)
    # Line 2388
    ld	$gp,104($sp)
    ld	$ra,160($sp)
    ld	$s0,88($sp)
    # Line 1770
    move	$v0,$zero
    # Line 2388
    ld	$s1,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d947028:
    ld	$gp,104($sp)
    ld	$ra,160($sp)
    ld	$s0,88($sp)
    # Line 1609
    move	$v0,$zero
    # Line 2388
    ld	$s1,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d947048:
    ld	$s3,208($sp)
    ld	$s6,200($sp)
    ld	$s4,192($sp)
    ld	$s8,184($sp)
    ld	$s7,176($sp)
    ld	$s5,168($sp)
    ld	$gp,104($sp)
    ld	$ra,160($sp)
    ld	$s0,88($sp)
    # Line 1896
    move	$v0,$zero
    # Line 2388
    ld	$s1,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d947080:
    # Line 2306
    lw	$at,0($s2)
    beq	$at,$s5,.L0d947388
    nop
.L0d94708c:
    # Line 2322
    lw	$v1,3704($s0)
    sw	$v1,32068($s0)
    # Line 2321
    lw	$v0,3700($s0)
    b	.L0d9467bc
    sw	$v0,32064($s0)
.L0d9470a0:
    # Line 2282
    lbu	$a1,32011($s0)
    li	$a0,1
    bne	$a0,$a1,.L0d9467ac
    # Line 2292
    nop	# was lw $t9, -26472($gp) # &__glContextSetColorScales
    # Line 2282
    lw	$a2,4($s2)
    lw	$a2,44($a2)
    li	$a3,16
    beq	$a2,$a3,.L0d9474bc
    # Line 2287
    la	$a3,__glCrmReadSPBuffRed
    b	.L0d9467a8
    sw	$a3,30836($s0)
.L0d9470cc:
    # Line 2370
    li	$v0,236
    move	$a0,$zero
    addiu	$a1,$s0,7976
    # Line 2369
    li	$a2,4176
    sw	$a2,6072($s0)
.L0d9470e0:
    addiu	$a5,$a5,-1
    # Line 2370
    addu	$a4,$a0,$a1
    addiu	$v0,$v0,-1
    addu	$a6,$a0,$a2
    ld	$a4,0($a4)
    addiu	$a0,$a0,8
    bnez	$a5,.L0d9470e0
    sd	$a4,0($a6)
    addiu	$a5,$a1,56
    addiu	$s4,$a2,56
    li	$a6,0x40
    addiu	$ra,$a1,8
    addiu	$t9,$a2,8
    addiu	$s2,$a2,16
    addiu	$s3,$a1,16
    addiu	$a7,$a1,24
    addiu	$s5,$a2,24
    addiu	$t8,$a1,40
    addiu	$t1,$a2,40
    addiu	$t3,$a2,48
    addiu	$t2,$a1,48
    addiu	$t0,$a2,32
    addiu	$s1,$a1,32
.L0d94713c:
    addu	$a4,$a0,$a1
    addu	$at,$a0,$a2
    ld	$a4,0($a4)
    addu	$a3,$a0,$ra
    sd	$a4,0($at)
    addu	$a4,$a0,$t9
    ld	$a3,0($a3)
    addu	$v1,$a0,$s3
    sd	$a3,0($a4)
    addu	$a3,$a0,$s2
    ld	$v1,0($v1)
    addu	$at,$a0,$a7
    sd	$v1,0($a3)
    addu	$v1,$a0,$s5
    ld	$at,0($at)
    addu	$a4,$a0,$s1
    sd	$at,0($v1)
    addu	$at,$a0,$t0
    ld	$a4,0($a4)
    addu	$a3,$a0,$t8
    sd	$a4,0($at)
    addu	$a4,$a0,$t1
    ld	$a3,0($a3)
    addu	$v1,$a0,$t2
    sd	$a3,0($a4)
    addu	$a3,$a0,$t3
    ld	$v1,0($v1)
    addiu	$v0,$v0,-8
    addu	$at,$a0,$a5
    sd	$v1,0($a3)
    addu	$v1,$a0,$s4
    ld	$at,0($at)
    addu	$a0,$a0,$a6
    bgtz	$v0,.L0d94713c
    sd	$at,0($v1)
    b	.L0d9468f0
    # Line 2380
    lbu	$a5,3220($s0)
.L0d9471d0:
    # Line 1717
    addiu	$a2,$sp,4
    li	$a1,22003
    bal __glCrmIoctl
    lw	$a0,31504($s0)
    bltz	$v0,.L0d947480
    # Line 1726
    lw	$a5,4($sp)
.L0d9471e8:
    addiu	$a5,$a5,-8192
    b	.L0d946344
    sw	$a5,32188($s0)
.L0d9471f4:
    # Line 2015
    la	$a6,__glCrmFetchSPBuffRed_8bit
    b	.L0d94670c
    sw	$a6,30836($s0)
.L0d947200:
    # Line 2013
    b	.L0d94670c
    sw	$a7,30836($s0)
.L0d947208:
    # Line 1659
    lw	$t9,36($s0)
    jal	__glContextSetColorScales
    nop
    # Line 1660
    lw	$t9,40($s0)
    # Line 1659
    move	$a1,$v0
    # Line 1660
    move	$a0,$s0
    jalr	$t9
    # Line 1659
    sw	$v0,32184($s0)
    # Line 1661
    lw	$t9,44($s0)
    lw	$a1,32184($s0)
    move	$a0,$s0
    jalr	$t9
    # Line 1660
    sw	$v0,31504($s0)
    # Line 1661
    bltz	$v0,.L0d947438
    sw	$v0,31508($s0)
    # Line 1666
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,14352
    bal __glCrmIoctl
    move	$a0,$s0
    # Line 1668
    li	$at,1
    sd	$at,72($sp)
    li	$ra,-1
    b	.L0d9462a0
    sw	$ra,32568($s0)
.L0d947268:
    # Line 1904
    move	$a2,$s0
    move	$a1,$s1
    jal	sub_0d940000
    addiu	$a0,$s0,30664
    b	.L0d946588
    # Line 1910
    lw	$a5,3704($s0)
.L0d947280:
    # Line 2227
    jalr	$t9
    move	$a0,$s0
    # Line 2229
    addiu	$a0,$gp,-21636
    sw	$a0,3576($s0)
    # Line 2240
    la	$v1,sub_0da40000
    # Line 2246
    lw	$t9,11784($s0)
    # Line 2230
    la	$v0,sub_0da40000
    # Line 2246
    move	$a0,$s0
    # Line 2240
    addiu	$v1,$v1,6696
    sw	$v1,3584($s0)
    # Line 2230
    addiu	$v0,$v0,6680
    # Line 2246
    jalr	$t9
    # Line 2230
    sw	$v0,3580($s0)
    # Line 2251
    lw	$t9,28($s0)
    move	$a0,$s0
    addiu	$a4,$sp,28
    addiu	$a3,$sp,40
    addiu	$a2,$sp,36
    jalr	$t9
    addiu	$a1,$sp,32
    # Line 2252
    la	$s3,__glcrmim_dispatchTable
    lw	$t9,668($s3)
    lw	$a3,28($sp)
    move	$a1,$zero
    lw	$a2,40($sp)
    jalr	$t9
    move	$a0,$zero
    # Line 2253
    lw	$t9,152($s3)
    move	$a0,$zero
    lw	$a3,28($sp)
    move	$a1,$zero
    jalr	$t9
    lw	$a2,40($sp)
    # Line 2258
    lw	$a1,3704($s0)
    mtc1	$a1,$f6
    # Line 2263
    sw	$zero,32320($s0)
    # Line 2258
    cvt.s.w	$f6,$f6
    lwc1	$f9,3672($s0)
    # Line 2262
    sw	$zero,32304($s0)
    # Line 2258
    lwc1	$f7,3676($s0)
    # Line 2257
    lwc1	$f8,3668($s0)
    # Line 2258
    add.s	$f6,$f6,$f9
    # Line 2261
    sw	$zero,32316($s0)
    # Line 2257
    swc1	$f8,368($s0)
    # Line 2258
    sub.s	$f6,$f6,$f7
    # Line 2263
    b	.L0d946798
    # Line 2258
    swc1	$f6,372($s0)
.L0d94733c:
    # Line 1689
    la	$a0,sub_0da40000
    jalr	$t9
    addiu	$a0,$a0,6592
    sltu	$a0,$zero,$v0
    b	.L0d9462e8
    sw	$a0,-21596($gp)
.L0d947354:
    b	.L0d9468ec
    # Line 2362
    sw	$a1,6072($s0)
.L0d94735c:
    # Line 1833
    lwc1	$f7,_lit_43800000
    b	.L0d946490
    swc1	$f7,32016($s0)
.L0d947368:
    # Line 2115
    la	$a2,sub_0d940000
    addiu	$a2,$a2,19344
    b	.L0d946eb8
    sw	$a2,124($s0)
.L0d947378:
    # Line 2382
    jalr	$t9
    li	$a0,16384
    b	.L0d946930
    ld	$s5,168($sp)
.L0d947388:
    # Line 2306
    beqz	$v0,.L0d94708c
    nop
    # Line 2312
    lw	$a6,140($v0)
    sw	$a6,32064($s0)
    # Line 2313
    lw	$a5,144($v0)
    sw	$a5,32068($s0)
    # Line 2319
    lw	$a4,8($v0)
    lw	$a3,12($v0)
    b	.L0d9467bc
    sw	$a3,0($a4)
.L0d9473b0:
    # Line 1749
    addiu	$a2,$sp,24
    li	$a1,22020
    bal __glCrmIoctl
    lw	$a0,31504($s0)
    bltz	$v0,.L0d9474c8
    nop
    # Line 1752
    lw	$a2,32560($s0)
.L0d9473cc:
    lw	$a1,24($sp)
    sw	$a1,4($a2)
    lw	$a0,32560($s0)
    lw	$v0,16($sp)
    b	.L0d946b2c
    lw	$a0,4($a0)
.L0d9473e4:
    # Line 2112
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    jal	getenv
    addiu	$a0,$a0,6656
    sltu	$a0,$zero,$v0
    b	.L0d946ea8
    sw	$a0,-21592($gp)
.L0d947400:
    ld	$s3,208($sp)
    ld	$s6,200($sp)
    ld	$s4,192($sp)
    ld	$s8,184($sp)
    ld	$s7,176($sp)
    ld	$s5,168($sp)
    # Line 2388
    ld	$gp,104($sp)
    ld	$ra,160($sp)
    ld	$s0,88($sp)
    # Line 1784
    move	$v0,$zero
    # Line 2388
    ld	$s1,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d947438:
    ld	$s3,208($sp)
    ld	$s6,200($sp)
    ld	$s4,192($sp)
    # Line 1663
    lw	$t9,12($s0)
    ld	$s8,184($sp)
    ld	$s7,176($sp)
    move	$a0,$zero
    ld	$s5,168($sp)
    jalr	$t9
    move	$a1,$s0
    # Line 2388
    ld	$gp,104($sp)
    ld	$ra,160($sp)
    ld	$s0,88($sp)
    # Line 1664
    move	$v0,$zero
    # Line 2388
    ld	$s1,80($sp)
    ld	$s2,96($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0d947480:
    # Line 1718
    lw	$t9,20($s0)
    la	$a1,sub_0da40000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,6608
    b	.L0d9471e8
    # Line 1726
    lw	$a5,4($sp)
.L0d94749c:
    ld	$s3,208($sp)
    ld	$s6,200($sp)
    ld	$s4,192($sp)
    ld	$s8,184($sp)
    ld	$s7,176($sp)
    ld	$s5,168($sp)
    # Line 1796
    b	.L0d945f94
    move	$v0,$zero
.L0d9474bc:
    # Line 2285
    la	$a2,__glCrmReadSPBuffColor
    b	.L0d9467a8
    sw	$a2,30836($s0)
.L0d9474c8:
    # Line 1750
    lw	$t9,20($s0)
    la	$a1,sub_0da40000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,6632
    b	.L0d9473cc
    # Line 1752
    lw	$a2,32560($s0)
.end MakeCurrentRead

# Function: __glCrmCreateContext
# Declared: Line 2396 (Source lines: 2398-2525)
# Address: 0x0d9474f0 - 0x0d948158 (Size: 3176 bytes, Frame: 208)
.globl __glCrmCreateContext
.ent __glCrmCreateContext
__glCrmCreateContext:
    # Line 2398
    addiu	$sp,$sp,-208
    sd	$a1,24($sp)
    lui	$at,0x11
    sd	$gp,48($sp)
    addiu	$at,$at,-26468
    addu	$gp,$t9,$at
    # Line 2403
    lw	$t9,4($a0)
    # Line 2398
    sd	$s0,32($sp)
    move	$s0,$a2
    # Line 2403
    li	$a2,0x8130
    li	$a1,1
    # Line 2398
    sd	$a0,16($sp)
    sd	$ra,40($sp)
    # Line 2403
    jalr	$t9
    move	$a0,$zero
    sd	$s5,184($sp)
    sd	$s1,176($sp)
    sd	$s7,168($sp)
    sd	$s8,160($sp)
    sd	$s4,152($sp)
    sd	$s6,144($sp)
    sd	$s3,8($sp)
    beqz	$v0,.L0d948120
    sd	$s2,136($sp)
    addiu	$t0,$v0,12
    li	$t8,0x10
    addiu	$t1,$v0,4
    # Line 2408
    li	$a5,20
    ld	$t3,16($sp)
    move	$a4,$zero
    move	$a0,$v0
    addiu	$t2,$v0,8
    # Line 2407
    la	$a6,sub_0da50000
    addiu	$a7,$t3,12
    sd	$s0,0($sp)
    addiu	$t9,$t3,4
    # Line 2408
    move	$ra,$t3
    # Line 2470
    lwc1	$f0,_lit_3f000000
    addiu	$t3,$t3,8
    # Line 2407
    addiu	$a6,$a6,-18056
.L0d947590:
    # Line 2408
    addu	$a2,$a4,$ra
    addu	$a3,$a4,$a0
    lw	$a2,0($a2)
    addu	$a1,$a4,$t9
    sw	$a2,0($a3)
    addu	$a2,$a4,$t1
    lw	$a1,0($a1)
    addu	$v1,$a4,$t3
    sw	$a1,0($a2)
    addu	$a1,$a4,$t2
    lw	$v1,0($v1)
    addiu	$a5,$a5,-4
    addu	$at,$a4,$a7
    sw	$v1,0($a1)
    addu	$v1,$a4,$t0
    lw	$at,0($at)
    addu	$a4,$a4,$t8
    bgtz	$a5,.L0d947590
    sw	$at,0($v1)
    addiu	$a0,$v0,3240
    li	$ra,0x20
    addiu	$t8,$v0,3224
    # Line 2409
    li	$a4,20
    move	$a5,$zero
    ld	$t0,24($sp)
    addiu	$t2,$v0,3216
    addiu	$t3,$v0,3232
    move	$t1,$t0
    addiu	$a7,$t0,24
    addiu	$t9,$t0,8
    addiu	$t0,$t0,16
    nop
.L0d947610:
    addu	$a2,$a5,$t1
    addu	$a3,$a5,$t2
    ld	$a2,0($a2)
    addu	$a1,$a5,$t9
    sd	$a2,0($a3)
    addu	$a2,$a5,$t8
    ld	$a1,0($a1)
    addu	$v1,$a5,$t0
    sd	$a1,0($a2)
    addu	$a1,$a5,$t3
    ld	$v1,0($v1)
    addiu	$a4,$a4,-4
    addu	$at,$a5,$a7
    sd	$v1,0($a1)
    addu	$v1,$a5,$a0
    ld	$at,0($at)
    addu	$a5,$a5,$ra
    bgtz	$a4,.L0d947610
    sd	$at,0($v1)
    sd	$v0,192($sp)
    # Line 2423
    la	$t8,__glcrmlc_dispatchTable
    # Line 2415
    la	$a3,sub_0d940000
    # Line 2416
    la	$t0,sub_0d940000
    # Line 2418
    la	$t1,sub_0d940000
    # Line 2420
    la	$t3,sub_0d940000
    # Line 2419
    la	$t2,sub_0d940000
    # Line 2420
    addiu	$t3,$t3,21856
    sw	$t3,168($v0)
    li	$a7,2
    # Line 2419
    addiu	$t2,$t2,23824
    sw	$t2,104($v0)
    # Line 2423
    li	$a4,330
    # Line 2418
    addiu	$t1,$t1,23984
    sw	$t1,100($v0)
    # Line 2423
    move	$a5,$zero
    # Line 2416
    addiu	$t0,$t0,20144
    sw	$t0,92($v0)
    # Line 2423
    move	$t9,$a6
    # Line 2415
    addiu	$a3,$a3,23872
    sw	$a3,96($v0)
.L0d9476b0:
    addiu	$a7,$a7,-1
    # Line 2423
    addu	$ra,$a5,$t8
    addiu	$a4,$a4,-1
    lw	$ra,0($ra)
    addu	$at,$a5,$t9
    addiu	$a5,$a5,4
    bnez	$a7,.L0d9476b0
    sw	$ra,0($at)
    addiu	$ra,$t8,28
    addiu	$v0,$t9,28
    li	$a0,0x20
    addiu	$s2,$t9,8
    addiu	$s3,$t8,8
    addiu	$s5,$t8,12
    addiu	$a1,$t9,12
    addiu	$s8,$t8,20
    addiu	$s4,$t9,20
    addiu	$s7,$t9,24
    addiu	$s6,$t8,24
    addiu	$s1,$t9,16
    addiu	$v1,$t9,4
    sd	$v1,112($sp)
    addiu	$s0,$t8,16
    addiu	$at,$t8,4
    sd	$at,104($sp)
    nop
    nop
    nop
.L0d947720:
    addu	$a2,$a5,$ra
    addu	$a6,$a5,$s6
    lw	$a2,0($a2)
    addu	$t0,$a5,$s8
    lw	$a6,0($a6)
    addu	$t2,$a5,$s0
    lw	$t0,0($t0)
    addu	$at,$a5,$s5
    lw	$t2,0($t2)
    lw	$at,0($at)
    addu	$a3,$a5,$s3
    lw	$a3,0($a3)
    ld	$t3,112($sp)
    addu	$v1,$a5,$t8
    ld	$t1,104($sp)
    addu	$a7,$a5,$t9
    lw	$v1,0($v1)
    sw	$v1,0($a7)
    addu	$t1,$a5,$t1
    addu	$t3,$a5,$t3
    lw	$t1,0($t1)
    addu	$a7,$a5,$s2
    sw	$t1,0($t3)
    addu	$v1,$a5,$a1
    sw	$a3,0($a7)
    sw	$at,0($v1)
    addu	$t3,$a5,$s1
    addu	$t1,$a5,$s4
    sw	$t2,0($t3)
    addiu	$a4,$a4,-8
    addu	$a7,$a5,$s7
    sw	$t0,0($t1)
    addu	$a3,$a5,$v0
    sw	$a6,0($a7)
    addu	$a5,$a5,$a0
    bgtz	$a4,.L0d947720
    sw	$a2,0($a3)
    li	$t2,0x10
    # Line 2424
    la	$s0,__glcrmlc_vertexDispatchTable
    li	$a5,24
    move	$a4,$zero
    la	$v0,sub_0da50000
    addiu	$t8,$s0,12
    addiu	$t0,$s0,8
    addiu	$ra,$s0,4
    addiu	$v0,$v0,-18056
    addiu	$t3,$v0,1332
    addiu	$t9,$v0,1324
    addiu	$t1,$v0,1328
    addiu	$s1,$v0,1320
    nop
    nop
.L0d9477f0:
    addu	$v1,$a4,$t8
    lw	$v1,0($v1)
    addu	$a1,$a4,$t0
    lw	$a1,0($a1)
    addu	$a3,$a4,$ra
    lw	$a3,0($a3)
    addu	$a7,$a4,$s0
    lw	$a7,0($a7)
    addu	$at,$a4,$s1
    addu	$a6,$a4,$t9
    sw	$a7,0($at)
    addiu	$a5,$a5,-4
    addu	$a2,$a4,$t1
    sw	$a3,0($a6)
    addu	$a0,$a4,$t3
    sw	$a1,0($a2)
    addu	$a4,$a4,$t2
    bgtz	$a5,.L0d9477f0
    sw	$v1,0($a0)
    li	$t0,2
    # Line 2425
    li	$a4,42
    move	$a5,$zero
    addiu	$a6,$v0,1416
    la	$a7,__glcrmlc_colorDispatchTable
.L0d947850:
    addiu	$t0,$t0,-1
    addu	$a0,$a5,$a7
    addiu	$a4,$a4,-1
    lw	$a0,0($a0)
    addu	$a1,$a5,$a6
    addiu	$a5,$a5,4
    bnez	$t0,.L0d947850
    sw	$a0,0($a1)
    addiu	$s7,$a7,28
    addiu	$s6,$a6,28
    li	$s5,0x20
    addiu	$s0,$a6,8
    addiu	$ra,$a7,8
    addiu	$a1,$a6,12
    addiu	$a0,$a7,20
    addiu	$s8,$a6,20
    addiu	$t0,$a7,12
    sd	$t0,96($sp)
    addiu	$s4,$a6,24
    addiu	$s3,$a7,24
    addiu	$s2,$a6,16
    addiu	$a3,$a6,4
    sd	$a3,88($sp)
    addiu	$s1,$a7,16
    addiu	$a2,$a7,4
    sd	$a2,80($sp)
    nop
    nop
.L0d9478c0:
    addu	$t1,$a5,$s7
    addu	$t3,$a5,$s3
    lw	$t1,0($t1)
    addu	$t9,$a5,$a0
    lw	$t3,0($t3)
    addu	$v1,$a5,$s1
    lw	$t9,0($t9)
    lw	$v1,0($v1)
    addu	$t2,$a5,$ra
    lw	$t2,0($t2)
    ld	$a2,88($sp)
    ld	$a3,96($sp)
    addu	$t0,$a5,$a7
    lw	$t0,0($t0)
    addu	$t8,$a5,$a6
    ld	$at,80($sp)
    sw	$t0,0($t8)
    addu	$a3,$a5,$a3
    lw	$a3,0($a3)
    addu	$at,$a5,$at
    addu	$a2,$a5,$a2
    lw	$at,0($at)
    addu	$t8,$a5,$s0
    sw	$at,0($a2)
    addu	$t0,$a5,$a1
    sw	$t2,0($t8)
    sw	$a3,0($t0)
    addu	$a2,$a5,$s2
    addu	$at,$a5,$s8
    sw	$v1,0($a2)
    addiu	$a4,$a4,-8
    addu	$t8,$a5,$s4
    sw	$t9,0($at)
    addu	$t2,$a5,$s6
    sw	$t3,0($t8)
    addu	$a5,$a5,$s5
    bgtz	$a4,.L0d9478c0
    sw	$t1,0($t2)
    # Line 2426
    addiu	$a5,$v0,1584
    la	$a4,__glcrmlc_normalDispatchTable
    lw	$t2,32($a4)
    lw	$t3,36($a4)
    lw	$t8,28($a4)
    lw	$t9,24($a4)
    lw	$ra,20($a4)
    lw	$at,16($a4)
    lw	$v1,12($a4)
    lw	$a0,8($a4)
    lw	$a1,4($a4)
    lw	$a2,0($a4)
    sw	$a2,1584($v0)
    sw	$a1,1588($v0)
    sw	$a0,1592($v0)
    sw	$v1,1596($v0)
    sw	$at,1600($v0)
    sw	$ra,1604($v0)
    sw	$t9,1608($v0)
    sw	$t8,1612($v0)
    sw	$t3,1620($v0)
    sw	$t2,1616($v0)
    addiu	$t3,$v0,1636
    li	$t2,0x10
    addiu	$t9,$v0,1628
    # Line 2427
    li	$a4,32
    la	$s0,__glcrmlc_texCoordDispatchTable
    move	$a5,$zero
    addiu	$t1,$v0,1632
    addiu	$t0,$v0,1624
    addiu	$t8,$s0,12
    addiu	$s1,$s0,8
    addiu	$ra,$s0,4
    nop
.L0d9479e0:
    addu	$a3,$a5,$t8
    lw	$a3,0($a3)
    addu	$a7,$a5,$s1
    lw	$a7,0($a7)
    addu	$v1,$a5,$ra
    lw	$v1,0($v1)
    addu	$a1,$a5,$s0
    lw	$a1,0($a1)
    addu	$a2,$a5,$t0
    addu	$a0,$a5,$t9
    sw	$a1,0($a2)
    addiu	$a4,$a4,-4
    addu	$at,$a5,$t1
    sw	$v1,0($a0)
    addu	$a6,$a5,$t3
    sw	$a7,0($at)
    addu	$a5,$a5,$t2
    bgtz	$a4,.L0d9479e0
    sw	$a3,0($a6)
    addiu	$t0,$v0,1764
    li	$s1,0x10
    addiu	$t2,$v0,1756
    # Line 2428
    li	$a5,24
    # lw $t9, -23080($gp) # &__glcrmlc_rasterPosDispatchTable
    move	$a4,$zero
    addiu	$s0,$v0,1760
    addiu	$t8,$v0,1752
    addiu	$t1,$t9,12
    addiu	$ra,$t9,8
    addiu	$t3,$t9,4
    nop
    nop
.L0d947a60:
    addu	$a6,$a4,$t1
    lw	$a6,0($a6)
    addu	$at,$a4,$ra
    lw	$at,0($at)
    addu	$a0,$a4,$t3
    lw	$a0,0($a0)
    addu	$a2,$a4,$t9
    lw	$a2,0($a2)
    addu	$a3,$a4,$t8
    addu	$a1,$a4,$t2
    sw	$a2,0($a3)
    addiu	$a5,$a5,-4
    addu	$v1,$a4,$s0
    sw	$a0,0($a1)
    addu	$a7,$a4,$t0
    sw	$at,0($v1)
    addu	$a4,$a4,$s1
    bgtz	$a5,.L0d947a60
    sw	$a6,0($a7)
    # Line 2429
    la	$a4,__glcrmlc_rectDispatchTable
    lw	$t0,0($a4)
    lw	$t1,4($a4)
    lw	$t2,8($a4)
    lw	$t3,12($a4)
    lw	$t8,16($a4)
    lw	$t9,20($a4)
    lw	$ra,24($a4)
    lw	$at,28($a4)
    sw	$at,1876($v0)
    sw	$ra,1872($v0)
    sw	$t9,1868($v0)
    sw	$t8,1864($v0)
    sw	$t3,1860($v0)
    sw	$t2,1856($v0)
    sw	$t1,1852($v0)
    sw	$t0,1848($v0)
    li	$a6,2
    # Line 2431
    li	$a5,330
    move	$a4,$zero
    addiu	$t8,$v0,1888
    # lw $t9, -23144($gp) # &__glcrmim_dispatchTable
.L0d947b04:
    addiu	$a6,$a6,-1
    addu	$v0,$a4,$t9
    addiu	$a5,$a5,-1
    lw	$v0,0($v0)
    addu	$v1,$a4,$t8
    addiu	$a4,$a4,4
    bnez	$a6,.L0d947b04
    sw	$v0,0($v1)
    addiu	$s0,$t9,28
    addiu	$s1,$t8,28
    addiu	$ra,$t9,4
    li	$a0,0x20
    sd	$a0,120($sp)
    addiu	$a0,$t8,4
    addiu	$v0,$t8,8
    addiu	$s7,$t9,12
    addiu	$s6,$t8,12
    addiu	$s8,$t9,20
    addiu	$s4,$t8,20
    addiu	$s3,$t8,24
    addiu	$a1,$t9,24
    addiu	$s5,$t8,16
    addiu	$s2,$t9,16
    addiu	$v1,$t9,8
    sd	$v1,128($sp)
    nop
    nop
.L0d947b70:
    addu	$a2,$a4,$s0
    addu	$a7,$a4,$a1
    lw	$a2,0($a2)
    addu	$t1,$a4,$s8
    lw	$a7,0($a7)
    addu	$t3,$a4,$s2
    lw	$t1,0($t1)
    lw	$t3,0($t3)
    addu	$v1,$a4,$s7
    lw	$v1,0($v1)
    addu	$t2,$a4,$ra
    lw	$t2,0($t2)
    addu	$a3,$a4,$t9
    lw	$a3,0($a3)
    addu	$t0,$a4,$t8
    ld	$a6,128($sp)
    addu	$at,$a4,$a0
    sw	$a3,0($t0)
    sw	$t2,0($at)
    addu	$a6,$a4,$a6
    addu	$t0,$a4,$v0
    lw	$a6,0($a6)
    addu	$a3,$a4,$s6
    sw	$a6,0($t0)
    addu	$at,$a4,$s5
    sw	$v1,0($a3)
    addu	$t2,$a4,$s4
    sw	$t3,0($at)
    sw	$t1,0($t2)
    addiu	$a5,$a5,-8
    addu	$t0,$a4,$s3
    ld	$a6,120($sp)
    addu	$a3,$a4,$s1
    sw	$a7,0($t0)
    sw	$a2,0($a3)
    bgtz	$a5,.L0d947b70
    addu	$a4,$a4,$a6
    li	$t8,0x10
    # Line 2432
    la	$t0,__glcrmim_vertexDispatchTable
    li	$a4,24
    move	$a5,$zero
    la	$t3,sub_0da50000
    addiu	$s0,$t0,12
    addiu	$t1,$t0,8
    addiu	$s2,$t0,4
    addiu	$t3,$t3,-18056
    addiu	$ra,$t3,3220
    addiu	$s1,$t3,3212
    addiu	$t2,$t3,3216
    addiu	$t3,$t3,3208
    nop
    nop
.L0d947c40:
    addu	$t9,$a5,$s0
    lw	$t9,0($t9)
    addu	$v0,$a5,$t1
    lw	$v0,0($v0)
    addu	$a0,$a5,$s2
    lw	$a0,0($a0)
    addu	$a2,$a5,$t0
    lw	$a2,0($a2)
    addu	$a3,$a5,$t3
    addu	$a1,$a5,$s1
    sw	$a2,0($a3)
    addiu	$a4,$a4,-4
    addu	$v1,$a5,$t2
    sw	$a0,0($a1)
    addu	$at,$a5,$ra
    sw	$v0,0($v1)
    addu	$a5,$a5,$t8
    bgtz	$a4,.L0d947c40
    sw	$t9,0($at)
    # Line 2433
    la	$v0,sub_0da50000
    li	$t0,2
    li	$a5,42
    addiu	$v0,$v0,-18056
    move	$a4,$zero
    la	$a7,__glcrmim_colorDispatchTable
    addiu	$a6,$v0,3304
.L0d947ca8:
    addiu	$t0,$t0,-1
    addu	$v1,$a4,$a7
    addiu	$a5,$a5,-1
    lw	$v1,0($v1)
    addu	$a0,$a4,$a6
    addiu	$a4,$a4,4
    bnez	$t0,.L0d947ca8
    sw	$v1,0($a0)
    addiu	$s1,$a7,28
    addiu	$a1,$a6,28
    li	$a0,0x20
    addiu	$s0,$a6,8
    addiu	$ra,$a7,8
    addiu	$s5,$a7,12
    addiu	$s8,$a7,20
    addiu	$s4,$a6,20
    addiu	$t0,$a6,12
    sd	$t0,72($sp)
    addiu	$s7,$a6,24
    addiu	$s6,$a7,24
    addiu	$s3,$a6,16
    addiu	$a3,$a6,4
    sd	$a3,64($sp)
    addiu	$s2,$a7,16
    addiu	$a2,$a7,4
    sd	$a2,56($sp)
.L0d947d10:
    addu	$t1,$a4,$s1
    addu	$t3,$a4,$s6
    lw	$t1,0($t1)
    addu	$t9,$a4,$s8
    lw	$t3,0($t3)
    addu	$v1,$a4,$s2
    lw	$t9,0($t9)
    addu	$a3,$a4,$s5
    lw	$v1,0($v1)
    lw	$a3,0($a3)
    addu	$t2,$a4,$ra
    lw	$t2,0($t2)
    ld	$a2,64($sp)
    ld	$at,56($sp)
    addu	$t0,$a4,$a7
    addu	$t8,$a4,$a6
    lw	$t0,0($t0)
    sw	$t0,0($t8)
    ld	$t0,72($sp)
    addu	$at,$a4,$at
    addu	$a2,$a4,$a2
    lw	$at,0($at)
    addu	$t8,$a4,$s0
    sw	$at,0($a2)
    sw	$t2,0($t8)
    addu	$t0,$a4,$t0
    addu	$a2,$a4,$s3
    sw	$a3,0($t0)
    addu	$at,$a4,$s4
    sw	$v1,0($a2)
    addiu	$a5,$a5,-8
    addu	$t8,$a4,$s7
    sw	$t9,0($at)
    addu	$t2,$a4,$a1
    sw	$t3,0($t8)
    addu	$a4,$a4,$a0
    bgtz	$a5,.L0d947d10
    sw	$t1,0($t2)
    # Line 2434
    addiu	$a4,$v0,3472
    la	$a5,__glcrmim_normalDispatchTable
    ld	$s3,192($sp)
    lw	$t2,32($a5)
    lw	$t3,36($a5)
    lw	$t8,28($a5)
    lw	$t9,24($a5)
    lw	$ra,20($a5)
    lw	$at,16($a5)
    lw	$v1,12($a5)
    lw	$a0,8($a5)
    lw	$a1,4($a5)
    lw	$a2,0($a5)
    sw	$a2,3472($v0)
    sw	$a1,3476($v0)
    sw	$a0,3480($v0)
    sw	$v1,3484($v0)
    sw	$at,3488($v0)
    sw	$ra,3492($v0)
    sw	$t9,3496($v0)
    sw	$t8,3500($v0)
    sw	$t3,3508($v0)
    sw	$t2,3504($v0)
    addiu	$t2,$v0,3524
    li	$t3,0x10
    addiu	$s0,$v0,3516
    # Line 2435
    li	$a5,32
    la	$t0,__glcrmim_texCoordDispatchTable
    move	$a4,$zero
    addiu	$ra,$v0,3520
    addiu	$t1,$v0,3512
    addiu	$t8,$t0,12
    addiu	$s2,$t0,8
    addiu	$s1,$t0,4
.L0d947e30:
    addu	$a3,$a4,$t8
    lw	$a3,0($a3)
    addu	$a7,$a4,$s2
    lw	$a7,0($a7)
    addu	$at,$a4,$s1
    lw	$at,0($at)
    addu	$a0,$a4,$t0
    lw	$a0,0($a0)
    addu	$a1,$a4,$t1
    addu	$v1,$a4,$s0
    sw	$a0,0($a1)
    addiu	$a5,$a5,-4
    addu	$t9,$a4,$ra
    sw	$at,0($v1)
    addu	$a6,$a4,$t2
    sw	$a7,0($t9)
    addu	$a4,$a4,$t3
    bgtz	$a5,.L0d947e30
    sw	$a3,0($a6)
    addiu	$ra,$v0,3652
    li	$t9,0x10
    addiu	$s0,$v0,3644
    # Line 2436
    li	$a4,24
    la	$t0,__glcrmim_rasterPosDispatchTable
    move	$a5,$zero
    addiu	$t3,$v0,3648
    addiu	$t2,$v0,3640
    addiu	$t8,$t0,12
    addiu	$t1,$t0,8
    addiu	$s1,$t0,4
    nop
    nop
.L0d947eb0:
    addu	$a6,$a5,$t8
    lw	$a6,0($a6)
    addu	$at,$a5,$t1
    lw	$at,0($at)
    addu	$a0,$a5,$s1
    lw	$a0,0($a0)
    addu	$a2,$a5,$t0
    lw	$a2,0($a2)
    addu	$a3,$a5,$t2
    addu	$a1,$a5,$s0
    sw	$a2,0($a3)
    addiu	$a4,$a4,-4
    addu	$v1,$a5,$t3
    sw	$a0,0($a1)
    addu	$a7,$a5,$ra
    sw	$at,0($v1)
    addu	$a5,$a5,$t9
    bgtz	$a4,.L0d947eb0
    sw	$a6,0($a7)
    # Line 2437
    la	$a0,__glcrmim_rectDispatchTable
    la	$a7,__glNop
    lw	$t0,0($a0)
    lw	$t1,4($a0)
    lw	$t2,8($a0)
    lw	$t3,12($a0)
    lw	$t8,16($a0)
    lw	$t9,20($a0)
    lw	$ra,24($a0)
    lw	$at,28($a0)
    sw	$at,3764($v0)
    sw	$ra,3760($v0)
    sw	$t9,3756($v0)
    sw	$t8,3752($v0)
    sw	$t3,3748($v0)
    sw	$t2,3744($v0)
    sw	$t1,3740($v0)
    sw	$t0,3736($v0)
    # Line 2471
    lwc1	$f1,_lit_41200000
    # Line 2491
    sw	$a7,4952($s3)
    # Line 2490
    sw	$a7,4948($s3)
    # Line 2455
    li	$t8,11
    # Line 2484
    sw	$t8,3640($s3)
    # Line 2483
    sw	$t8,3636($s3)
    # Line 2482
    sw	$t8,3632($s3)
    # Line 2481
    sw	$t8,3628($s3)
    # Line 2480
    sw	$t8,3624($s3)
    # Line 2452
    li	$t3,2
    # Line 2466
    sw	$t3,3800($s3)
    # Line 2458
    lui	$at,0x1
    sw	$at,3772($s3)
    # Line 2457
    li	$ra,30
    sw	$ra,3768($s3)
    # Line 2456
    li	$t9,64
    sw	$t9,3740($s3)
    # Line 2455
    sw	$t8,3732($s3)
    # Line 2454
    li	$s0,1024
    sw	$s0,3724($s3)
    # Line 2453
    li	$s0,1
    sw	$s0,3608($s3)
    # Line 2452
    sw	$t3,3604($s3)
    # Line 2451
    li	$t2,6
    sw	$t2,3600($s3)
    # Line 2450
    li	$t1,8
    sw	$t1,3588($s3)
    # Line 2448
    li	$t0,3
    sw	$t0,3736($s3)
    # Line 2442
    li	$a6,2048
    # Line 2443
    sw	$a6,3620($s3)
    # Line 2442
    sw	$a6,3616($s3)
    # Line 2470
    swc1	$f0,3744($s3)
    # Line 2474
    swc1	$f1,3760($s3)
    # Line 2471
    swc1	$f1,3748($s3)
    # Line 2461
    li	$a0,32
    sw	$a0,3788($s3)
    # Line 2486
    la	$a0,__glGenericDlistCompiler
    # Line 2460
    li	$v1,128
    sw	$v1,3784($s3)
    # Line 2463
    li	$a1,10
    # Line 2465
    sw	$a1,3796($s3)
    # Line 2463
    sw	$a1,3792($s3)
    # Line 2487
    la	$a1,__glGenericDlistOptimizer
    # Line 2488
    la	$a2,__gl_GenericDlOps
    # Line 2489
    la	$a3,__glListExecTable
    # Line 2492
    la	$a4,__glCrimeDlistOps
    # Line 2494
    la	$a5,__glCrmInitTextureObject
    sw	$a5,28228($s3)
    # Line 2492
    sw	$a4,4964($s3)
    # Line 2489
    sw	$a3,4956($s3)
    # Line 2488
    sw	$a2,4960($s3)
    # Line 2487
    sw	$a1,4940($s3)
    # Line 2444
    lui	$v1,0x2
    # Line 2486
    sw	$a0,4944($s3)
    # Line 2444
    ori	$v1,$v1,0x1000
    # Line 2446
    sw	$v1,3664($s3)
    # Line 2444
    sw	$v1,3660($s3)
    # Line 2473
    lwc1	$f3,_lit_3f800000
    # Line 2472
    lwc1	$f2,_lit_3e000000
    # Line 2459
    li	$v0,16
    # Line 2467
    sw	$v0,3780($s3)
    # Line 2459
    sw	$v0,3776($s3)
    # Line 2494
    lw	$v0,-21600($gp)
    # Line 2475
    swc1	$f2,3764($s3)
    # Line 2472
    swc1	$f2,3752($s3)
    # Line 2494
    bltz	$v0,.L0d948104
    # Line 2473
    swc1	$f3,3756($s3)
.L0d948054:
    # Line 2500
    ld	$a2,0($sp)
    beqz	$a2,.L0d9480bc
    # Line 2503
    nop	# was lw $t9, -31200($gp) # &__glShareDlist
    move	$a0,$s3
    jal	__glShareDlist
    ld	$a1,0($sp)
    lw	$a3,-21600($gp)
    beqz	$a3,.L0d9480dc
    # Line 2507
    nop	# was lw $t9, -24440($gp) # &__glShareTextureObjects
.L0d948078:
    ld	$s5,184($sp)
    ld	$s1,176($sp)
    ld	$s7,168($sp)
    ld	$s8,160($sp)
    # Line 2518
    # lw $t9, -26476($gp) # &__glEarlyInitContext
    ld	$s4,152($sp)
    ld	$s6,144($sp)
    ld	$s2,136($sp)
    jal	__glEarlyInitContext
    move	$a0,$s3
    # Line 2525
    ld	$ra,40($sp)
    ld	$gp,48($sp)
    ld	$s0,32($sp)
    move	$v0,$s3
    ld	$s3,8($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9480bc:
    # Line 2513
    lw	$t9,4($s3)
    move	$a0,$s3
    li	$a2,1036
    jalr	$t9
    li	$a1,1
    sw	$v0,32560($s3)
    b	.L0d948078
    # Line 2515
    sw	$s0,0($v0)
.L0d9480dc:
    # Line 2507
    move	$a0,$s3
    jalr	$t9
    ld	$a1,0($sp)
    # Line 2509
    ld	$a5,0($sp)
    lw	$a5,32560($a5)
    sw	$a5,32560($s3)
    # Line 2510
    lw	$a4,0($a5)
    addiu	$a4,$a4,1
    b	.L0d948078
    sw	$a4,0($a5)
.L0d948104:
    # Line 2500
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    jal	getenv
    addiu	$a0,$a0,7176
    sltu	$a1,$zero,$v0
    b	.L0d948054
    sw	$a1,-21600($gp)
.L0d948120:
    move	$s2,$s2
    move	$s6,$s6
    move	$s4,$s4
    move	$s8,$s8
    move	$s7,$s7
    # Line 2525
    ld	$ra,40($sp)
    move	$s1,$s1
    move	$s5,$s5
    # Line 2405
    move	$v0,$zero
    move	$s3,$s3
    # Line 2525
    ld	$gp,48($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glCrmCreateContext

.rdata
_lit_3e000000:
    .word 0x3e000000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_41200000:
    .word 0x41200000
_lit_42800000:
    .word 0x42800000
_lit_43800000:
    .word 0x43800000
_lit_45000000:
    .word 0x45000000
_lit_45800000:
    .word 0x45800000
_lit_46800000:
    .word 0x46800000
_lit_bf000000:
    .word 0xbf000000

