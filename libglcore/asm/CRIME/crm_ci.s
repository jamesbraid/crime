# Source: ../CRIME/crm_ci.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_ci.c
# Total Functions: 9

.text

# Function: StoreCI
# Declared: Line 27 (Source lines: 28-37)
# Address: 0x0d941ee0 - 0x0d941f70 (Size: 144 bytes, Frame: 16)
.ent StoreCI
StoreCI:
    # Line 29
    lw	$a4,0($a0)
    # Line 30
    lw	$a5,32100($a4)
    lw	$at,32096($a4)
    # Line 28
    addiu	$sp,$sp,-16
    # Line 30
    beq	$at,$a5,.L0d941f10
    lw	$a3,32184($a4)
    # Line 32
    sw	$a5,8288($a3)
    lw	$a0,32188($a4)
    lw	$v1,32100($a4)
    sw	$v1,8288($a0)
    lw	$v0,32100($a4)
    sw	$v0,32096($a4)
.L0d941f10:
    # Line 33
    lw	$t0,0($a1)
    lui	$a5,0x7
    ori	$a5,$a5,0xffff
    sll	$t0,$t0,0x6
    and	$t0,$a5,$t0
    sw	$t0,0($sp)
    lw	$a7,0($sp)
    sw	$a7,8320($a3)
    # Line 34
    lw	$a6,4($a1)
    sll	$a6,$a6,0x6
    and	$a5,$a5,$a6
    sw	$a5,4($sp)
    lw	$a2,4($sp)
    sw	$a2,8324($a3)
    # Line 35
    lwc1	$f0,12($a1)
    trunc.w.s	$f0,$f0
    swc1	$f0,8($sp)
    # Line 36
    li	$a1,0x8080
    # Line 35
    lw	$a2,8($sp)
    # Line 36
    addu	$a1,$a1,$a4
    # Line 35
    sw	$a2,10448($a3)
    # Line 37
    addiu	$sp,$sp,16
    jr	$ra
    # Line 36
    sw	$zero,0($a1)
.end StoreCI

# Function: StoreCI2
# Declared: Line 40 (Source lines: 41-54)
# Address: 0x0d941f70 - 0x0d942050 (Size: 224 bytes, Frame: 48)
.ent StoreCI2
StoreCI2:
    # Line 41
    addiu	$sp,$sp,-48
    lui	$v0,0x11
    sd	$s0,16($sp)
    addiu	$v0,$v0,-4580
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 44
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    # Line 42
    lw	$s0,0($a0)
    # Line 41
    sd	$s8,32($sp)
    move	$s8,$a1
    # Line 44
    move	$a1,$a0
    # Line 41
    sd	$ra,24($sp)
    # Line 44
    bal __glCrmSetStoreBuffer
    move	$a0,$s0
    # Line 45
    lw	$a0,32100($s0)
    lw	$v1,32096($s0)
    # Line 44
    move	$a1,$v0
    # Line 45
    beq	$v1,$a0,.L0d941fd4
    lw	$a4,32184($s0)
    # Line 47
    sw	$a0,8288($a4)
    lw	$a5,32188($s0)
    lw	$a3,32100($s0)
    sw	$a3,8288($a5)
    lw	$a2,32100($s0)
    sw	$a2,32096($s0)
.L0d941fd4:
    # Line 48
    lw	$t3,0($s8)
    lui	$t0,0x7
    ori	$t0,$t0,0xffff
    sll	$t3,$t3,0x6
    and	$t3,$t0,$t3
    sw	$t3,0($sp)
    lw	$t2,0($sp)
    sw	$t2,8320($a4)
    # Line 49
    lw	$t1,4($s8)
    sll	$t1,$t1,0x6
    and	$t0,$t0,$t1
    sw	$t0,4($sp)
    lw	$a7,4($sp)
    sw	$a7,8324($a4)
    # Line 50
    lwc1	$f0,12($s8)
    # Line 53
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    # Line 50
    trunc.w.s	$f0,$f0
    swc1	$f0,8($sp)
    # Line 51
    li	$a6,0x8080
    # Line 50
    lw	$a7,8($sp)
    # Line 51
    addu	$a6,$a6,$s0
    # Line 50
    sw	$a7,10448($a4)
    # Line 53
    move	$a0,$s0
    bal __glCrmSetStoreBuffer
    # Line 51
    sw	$zero,0($a6)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s8,32($sp)
    # Line 54
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end StoreCI2

# Function: ReadCISpan
# Declared: Line 57 (Source lines: 59-175)
# Address: 0x0d942050 - 0x0d9423a0 (Size: 848 bytes, Frame: 176)
.ent ReadCISpan
ReadCISpan:
    # Line 59
    addiu	$sp,$sp,-560
    sd	$ra,552($sp)
    sd	$gp,512($sp)
    sd	$s2,544($sp)
    sd	$s1,520($sp)
    sd	$s3,536($sp)
    # Line 60
    lw	$s3,0($a0)
    # Line 68
    mtc1	$a1,$f1
    # Line 70
    sw	$a4,168($sp)
    # Line 69
    mtc1	$a2,$f0
    # Line 59
    sd	$s0,528($sp)
    # Line 71
    li	$s0,1
    sw	$s0,172($sp)
    # Line 68
    cvt.s.w	$f1,$f1
    # Line 72
    li	$a1,6400
    sw	$a1,80($sp)
    # Line 69
    cvt.s.w	$f0,$f0
    # Line 73
    sll	$v1,$a4,0x2
    sw	$v1,96($sp)
    # Line 68
    swc1	$f1,188($sp)
    # Line 69
    swc1	$f0,192($sp)
    # Line 59
    move	$a6,$a0
    # Line 76
    li	$at,3074
    # Line 79
    sw	$a0,32296($s3)
    # Line 59
    move	$s1,$a4
    # Line 99
    li	$a4,16
    # Line 79
    lbu	$a7,31553($s3)
    # Line 59
    move	$s2,$a3
    lui	$v0,0x11
    # Line 78
    sw	$zero,32344($s3)
    # Line 99
    li	$a3,12
    # Line 59
    addiu	$v0,$v0,-4804
    # Line 77
    sb	$zero,32206($s3)
    # Line 59
    addu	$gp,$t9,$v0
    # Line 79
    beq	$s0,$a7,.L0d94227c
    # Line 76
    sw	$at,32216($s3)
    # Line 99
    li	$a5,8
    # Line 92
    slti	$a2,$a7,2
    bnez	$a2,.L0d94210c
    # Line 122
    nop	# was lw $t9, -31588($gp) # &crmReadPixelsXfer
    # Line 99
    lw	$a0,12($a0)
    beq	$a0,$a3,.L0d9422dc
    nop
    beq	$a0,$a4,.L0d9422dc
    nop
    beq	$a0,$a5,.L0d94235c
.L0d942108:
    # Line 122
    nop	# was lw $t9, -31588($gp) # &crmReadPixelsXfer
.L0d94210c:
    addiu	$a1,$sp,0
    jal	crmReadPixelsXfer
    lw	$a0,0($a6)
    # Line 125
    lw	$a4,32292($s3)
    # Line 124
    lw	$a3,88($sp)
    # Line 132
    li	$t1,2
    # Line 125
    sll	$a7,$a4,0x1e
    # Line 124
    move	$a0,$a3
    # Line 125
    srl	$a6,$a4,0x8
    # Line 129
    lw	$a2,504($sp)
    # Line 127
    andi	$a4,$a4,0x1
    # Line 125
    andi	$a6,$a6,0x3
    # Line 127
    sltiu	$a4,$a4,1
    slti	$a7,$a7,0
    ld	$ra,552($sp)
    # Line 129
    slt	$t0,$a2,$a6
    # Line 132
    beq	$a6,$t1,.L0d942264
    movz	$a4,$t0,$a7
    beq	$a6,$s0,.L0d9422cc
    nop
.L0d94215c:
    # Line 159
    blez	$s1,.L0d94219c
    # Line 175
    ld	$gp,512($sp)
    # Line 159
    sllv	$a5,$s0,$a6
    andi	$t0,$s1,0x1
    sra	$t1,$s1,0x1
    move	$a3,$zero
    beqz	$t0,.L0d942194
    lw	$a2,504($sp)
    # Line 163
    beqz	$a2,.L0d942320
    nop
    beq	$a2,$s0,.L0d94233c
    nop
.L0d94218c:
    # Line 162
    addiu	$a3,$a3,1
    # Line 171
    addu	$a0,$a5,$a0
.L0d942194:
    bnez	$t1,.L0d9421e8
    nop
.L0d94219c:
    # Line 175
    ld	$s0,528($sp)
    ld	$s1,520($sp)
    ld	$s2,544($sp)
    move	$v0,$zero
    # Line 174
    sw	$zero,32216($s3)
    # Line 175
    ld	$s3,536($sp)
    jr	$ra
    addiu	$sp,$sp,560
    nop
.L0d9421c0:
    # Line 165
    lbu	$t3,0($a0)
    mtc1	$t3,$f2
    cvt.s.w	$f2,$f2
    addiu	$t2,$s2,4
    move	$s2,$t2
    swc1	$f2,-4($t2)
    nop
    nop
.L0d9421e0:
    # Line 162
    beq	$s1,$a3,.L0d94219c
    # Line 171
    addu	$a0,$a5,$a0
.L0d9421e8:
    # Line 163
    beqz	$a2,.L0d942228
    # Line 162
    addiu	$a3,$a3,2
    # Line 163
    beq	$a2,$s0,.L0d942244
    nop
.L0d9421f8:
    beqz	$a2,.L0d9421c0
    # Line 171
    addu	$a0,$a5,$a0
    # Line 163
    bne	$a2,$s0,.L0d9421e0
    nop
    # Line 168
    lhu	$t9,0($a0)
    andi	$t9,$t9,0xfff
    mtc1	$t9,$f3
    cvt.s.w	$f3,$f3
    addiu	$t8,$s2,4
    move	$s2,$t8
    # Line 169
    b	.L0d9421e0
    # Line 168
    swc1	$f3,-4($t8)
.L0d942228:
    # Line 165
    lbu	$v0,0($a0)
    mtc1	$v0,$f4
    cvt.s.w	$f4,$f4
    addiu	$at,$s2,4
    move	$s2,$at
    b	.L0d9421f8
    swc1	$f4,-4($at)
.L0d942244:
    # Line 168
    lhu	$a1,0($a0)
    andi	$a1,$a1,0xfff
    mtc1	$a1,$f5
    cvt.s.w	$f5,$f5
    addiu	$v1,$s2,4
    move	$s2,$v1
    # Line 169
    b	.L0d9421f8
    # Line 168
    swc1	$f5,-4($v1)
.L0d942264:
    # Line 134
    beqz	$a2,.L0d942398
    nop
    bne	$a2,$s0,.L0d94215c
    # Line 140
    addiu	$a2,$a3,2
    b	.L0d94215c
    movn	$a0,$a2,$a4
.L0d94227c:
    # Line 87
    lw	$a4,32292($s3)
    li	$a5,-769
    and	$a4,$a4,$a5
    # Line 88
    li	$a5,-13
    # Line 87
    ori	$a4,$a4,0x200
    # Line 88
    and	$a4,$a4,$a5
    # Line 89
    li	$a5,-241
    # Line 88
    ori	$a4,$a4,0x8
    # Line 89
    and	$a4,$a4,$a5
    # Line 90
    li	$a5,-3
    # Line 86
    sw	$s0,32216($s3)
    # Line 90
    and	$a4,$a4,$a5
    # Line 91
    li	$a5,-2
    and	$a4,$a4,$a5
    sw	$a4,32292($s3)
    # Line 92
    lw	$a3,12($a0)
    xori	$a3,$a3,0x8
    sltu	$a3,$zero,$a3
    b	.L0d942108
    sw	$a3,504($sp)
.L0d9422cc:
    # Line 146
    bnez	$a2,.L0d94215c
    # Line 149
    addiu	$a7,$a3,1
    b	.L0d94215c
    movn	$a0,$a7,$a4
.L0d9422dc:
    # Line 103
    lw	$t0,32292($s3)
    li	$t1,-769
    and	$t0,$t0,$t1
    # Line 104
    li	$t1,-13
    # Line 103
    ori	$t0,$t0,0x100
    # Line 104
    and	$t0,$t0,$t1
    # Line 105
    li	$t1,-241
    # Line 104
    ori	$t0,$t0,0x4
    # Line 108
    sw	$s0,504($sp)
    # Line 105
    and	$t0,$t0,$t1
    # Line 106
    li	$t1,-3
    # Line 102
    sw	$s0,32216($s3)
    # Line 106
    and	$t0,$t0,$t1
    # Line 107
    li	$t1,-2
    and	$t0,$t0,$t1
    b	.L0d942108
    sw	$t0,32292($s3)
.L0d942320:
    # Line 165
    lbu	$t3,0($a0)
    mtc1	$t3,$f6
    cvt.s.w	$f6,$f6
    addiu	$t2,$s2,4
    move	$s2,$t2
    b	.L0d94218c
    swc1	$f6,-4($t2)
.L0d94233c:
    # Line 168
    lhu	$t9,0($a0)
    andi	$t9,$t9,0xfff
    mtc1	$t9,$f7
    cvt.s.w	$f7,$f7
    addiu	$t8,$s2,4
    move	$s2,$t8
    # Line 169
    b	.L0d94218c
    # Line 168
    swc1	$f7,-4($t8)
.L0d94235c:
    # Line 112
    lw	$ra,32292($s3)
    li	$at,-769
    and	$ra,$ra,$at
    # Line 113
    li	$at,-13
    and	$ra,$ra,$at
    # Line 114
    li	$at,-241
    # Line 117
    sw	$zero,504($sp)
    # Line 114
    and	$ra,$ra,$at
    # Line 115
    li	$at,-3
    # Line 111
    sw	$s0,32216($s3)
    # Line 115
    and	$ra,$ra,$at
    # Line 116
    li	$at,-2
    and	$ra,$ra,$at
    # Line 118
    b	.L0d942108
    # Line 116
    sw	$ra,32292($s3)
.L0d942398:
    b	.L0d94215c
    # Line 136
    addiu	$a0,$a3,3
.end ReadCISpan

# Function: ReadCI
# Declared: Line 179 (Source lines: 181-182)
# Address: 0x0d9423a0 - 0x0d9423bc (Size: 28 bytes, Frame: 0)
.ent ReadCI
ReadCI:
    # Line 181
    lui	$v0,0x11
    addiu	$v0,$v0,-5652
    addu	$at,$t9,$v0
    # Line 182
    # lw $t9, -32744($gp) # &sub_0d940000
    addiu	$t9,$t9,8272
    bgezl	$zero,__glCrmRenderLeftRightBitmap
    li	$a4,1
.end ReadCI

# Function: ClearCI
# Declared: Line 186 (Source lines: 187-339)
# Address: 0x0d9423c0 - 0x0d942844 (Size: 1156 bytes, Frame: 224)
.ent ClearCI
ClearCI:
    # Line 187
    addiu	$sp,$sp,-96
    sd	$s0,72($sp)
    # Line 188
    lw	$s0,0($a0)
    # Line 187
    sd	$s1,64($sp)
    # Line 194
    lui	$s1,0x1
    addu	$s1,$s0,$s1
    lw	$v0,-32576($s1)
    # Line 187
    lui	$at,0x11
    addiu	$at,$at,-5684
    sd	$gp,80($sp)
    # Line 194
    beqz	$v0,.L0d94240c
    # Line 187
    addu	$gp,$t9,$at
    # Line 194
    lw	$t8,29700($s0)
    lw	$t9,29708($s0)
    beq	$t8,$t9,.L0d942410
    li	$a4,1
    lw	$at,29704($s0)
    lw	$v0,29712($s0)
    bne	$at,$v0,.L0d942488
.L0d94240c:
    li	$a4,1
.L0d942410:
    # Line 331
    lw	$v1,32056($s0)
    lw	$v1,0($v1)
    bne	$v1,$a4,.L0d942478
    # Line 339
    ld	$gp,80($sp)
    # Line 331
    lw	$a0,-32608($s1)
    andi	$a1,$a0,0x2
    beqz	$a1,.L0d942474
    # Line 333
    ori	$a3,$a0,0x4
    sw	$a3,-32608($s1)
    # Line 334
    lw	$a2,1792($s0)
    andi	$a2,$a2,0x2000
    beqz	$a2,.L0d942478
    # Line 339
    ld	$gp,80($sp)
    # Line 334
    lw	$a4,4120($zero)
    li	$a0,2
    beq	$a4,$a0,.L0d942474
    # Line 339
    ld	$gp,80($sp)
    # Line 336
    sw	$a0,4120($zero)
    lw	$a5,11756($s0)
    # Line 339
    ld	$s1,64($sp)
    # Line 336
    ori	$a5,$a5,0x4
    sw	$a5,11756($s0)
    # Line 339
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d942474:
    ld	$gp,80($sp)
.L0d942478:
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d942488:
    # Line 199
    lbu	$a6,30652($s0)
    sd	$a0,56($sp)
    beqz	$a6,.L0d9424a8
    sd	$ra,88($sp)
    lw	$a7,11760($s0)
    sd	$a0,56($sp)
    bne	$a7,$a0,.L0d942744
    sd	$ra,88($sp)
.L0d9424a8:
    # Line 202
    # lw $t9, -31856($gp) # &__glCrmGetDstBufMode
.L0d9424ac:
    move	$a0,$s0
    ld	$a1,56($sp)
    bal __glCrmGetDstBufMode
    addiu	$a2,$sp,0
    # Line 205
    lwc1	$f0,1876($s0)
    # Line 209
    lw	$a5,0($sp)
    # Line 205
    trunc.l.s	$f0,$f0
    # Line 209
    srl	$a3,$a5,0x2
    # Line 205
    dmfc1	$a7,$f0
    # Line 204
    lw	$t0,-32576($s1)
    # Line 209
    li	$a4,1
    andi	$a3,$a3,0x3
    # Line 212
    li	$t1,4095
    # Line 205
    sll	$a7,$a7,0x0
    # Line 209
    beq	$a4,$a3,.L0d94275c
    # Line 205
    and	$a6,$a7,$t0
    # Line 209
    beqz	$a3,.L0d942784
    # Line 237
    li	$t2,255
    # Line 209
    srl	$a7,$a5,0x8
    andi	$a7,$a7,0x3
.L0d9424fc:
    # Line 266
    sw	$a6,8($sp)
    # Line 267
    sw	$t0,12($sp)
    # Line 269
    srl	$t1,$a5,0xa
    # Line 268
    li	$t2,1
    # Line 269
    andi	$t1,$t1,0x7
    sb	$t1,17($sp)
    # Line 268
    sllv	$t2,$t2,$a7
    sb	$t2,16($sp)
    # Line 270
    lw	$t0,32088($s0)
    # Line 276
    # lw $t9, -22896($gp) # &ioctl
    # Line 270
    sll	$t0,$t0,0xb
    # Line 276
    addiu	$a2,$sp,8
    # Line 270
    slti	$t0,$t0,0
    sb	$t0,18($sp)
    # Line 276
    li	$a1,22022
    jal	ioctl
    lw	$a0,31504($s0)
    ld	$ra,88($sp)
    beqz	$v0,.L0d942568
    li	$a4,1
    # Line 277
    lw	$t9,20($s0)
    la	$a1,sub_0da40000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,6288
    ld	$ra,88($sp)
    li	$a4,1
.L0d942568:
    # Line 280
    lbu	$a2,18($sp)
    andi	$a2,$a2,0x2
    sltu	$a2,$zero,$a2
    beqz	$a2,.L0d942718
    nop
    lwc1	$f1,1876($s0)
    trunc.l.s	$f1,$f1
    dmfc1	$a7,$f1
    lw	$a5,0($sp)
    sll	$a7,$a7,0x0
.L0d942590:
    # Line 305
    move	$a6,$a7
    # Line 303
    lw	$t0,24($sp)
    lui	$t1,0xff
    lui	$t2,0x300
    ori	$t1,$t1,0xffff
    # Line 300
    lw	$t3,32088($s0)
    # Line 303
    and	$t0,$t0,$t1
    lui	$t1,0x3
    nor	$t1,$t1,$zero
    or	$t0,$t0,$t2
    and	$t0,$t0,$t1
    # Line 300
    srl	$t1,$t3,0x7
    li	$t9,-121
    andi	$t1,$t1,0x1
    lui	$t2,0x40
    sll	$t1,$t1,0x7
    or	$t1,$t1,$t2
    srl	$t2,$t3,0x3
    # Line 303
    lui	$t8,0x2
    # Line 300
    srl	$t3,$t3,0x14
    # Line 303
    or	$t0,$t0,$t8
    # Line 300
    andi	$t3,$t3,0x1
    and	$t1,$t1,$t9
    andi	$t2,$t2,0xf
    # Line 305
    lw	$t8,-32564($s1)
    # Line 300
    lui	$t9,0x10
    sll	$t2,$t2,0x3
    ld	$ra,88($sp)
    nor	$t9,$t9,$zero
    or	$t1,$t1,$t2
    # Line 294
    lw	$a3,32184($s0)
    # Line 300
    sll	$t3,$t3,0x14
    and	$t1,$t1,$t9
    # Line 294
    lw	$t2,32188($s0)
    # Line 305
    beq	$t8,$a5,.L0d94262c
    # Line 300
    or	$t1,$t1,$t3
    # Line 308
    sw	$a5,8200($a3)
    lw	$t3,0($sp)
    sw	$t3,8200($t2)
.L0d94262c:
    lw	$t8,32092($s0)
    beq	$t8,$t1,.L0d942650
    nop
    # Line 311
    lw	$at,32184($s0)
    sw	$t1,8216($at)
    lw	$t9,32188($s0)
    sw	$t1,28($sp)
    sw	$t1,8216($t9)
    sw	$t1,32092($s0)
.L0d942650:
    lw	$v0,32096($s0)
    beq	$v0,$t0,.L0d942674
    nop
    # Line 312
    lw	$a0,32184($s0)
    sw	$t0,8288($a0)
    lw	$v1,32188($s0)
    sw	$t0,24($sp)
    sw	$t0,8288($v1)
    sw	$t0,32096($s0)
.L0d942674:
    # Line 313
    sw	$a6,32($sp)
    lw	$at,32($sp)
    sw	$at,8400($a3)
    # Line 314
    lw	$t9,29700($s0)
    sll	$t9,$t9,0x6
    sw	$t9,36($sp)
    lw	$t8,36($sp)
    sw	$t8,8320($a3)
    # Line 315
    lw	$t3,29704($s0)
    sll	$t3,$t3,0x6
    sw	$t3,40($sp)
    lw	$t1,40($sp)
    sw	$t1,8324($a3)
    # Line 316
    lw	$t0,29708($s0)
    sll	$t0,$t0,0x6
    sw	$t0,44($sp)
    lw	$a7,44($sp)
    sw	$a7,8328($a3)
    # Line 317
    lw	$a5,29712($s0)
    sll	$a5,$a5,0x6
    sw	$a5,48($sp)
    lw	$a2,48($sp)
    sw	$a2,10380($a3)
    lw	$a1,0($sp)
    lw	$a5,-32564($s1)
    beq	$a1,$a5,.L0d9426ec
    nop
    # Line 320
    sw	$a5,8200($a3)
    lw	$v0,-32564($s1)
    sw	$v0,8200($t2)
.L0d9426ec:
    lw	$v1,32092($s0)
    lw	$a3,32088($s0)
    beq	$v1,$a3,.L0d942718
    nop
    # Line 322
    lw	$a5,32184($s0)
    sw	$a3,8216($a5)
    lw	$a2,32188($s0)
    lw	$a1,32088($s0)
    sw	$a1,8216($a2)
    lw	$a0,32088($s0)
    sw	$a0,32092($s0)
.L0d942718:
    # Line 325
    lbu	$a6,30652($s0)
    beqz	$a6,.L0d942410
    ld	$a7,56($sp)
    lw	$a1,11760($s0)
    beq	$a1,$a7,.L0d942410
    # Line 326
    nop	# was lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    bal __glCrmSetDrawBuffer
    move	$a0,$s0
    ld	$ra,88($sp)
    b	.L0d942410
    li	$a4,1
.L0d942744:
    # Line 200
    # lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    move	$a0,$s0
    bal __glCrmSetDrawBuffer
    ld	$a1,56($sp)
    b	.L0d9424ac
    # Line 202
    nop	# was lw $t9, -31856($gp) # &__glCrmGetDstBufMode
.L0d94275c:
    # Line 212
    bne	$t0,$t1,.L0d942590
    nop
    # Line 277
    lbu	$t0,-32467($s1)
    srl	$a7,$a5,0x8
    beqz	$t0,.L0d9427bc
    andi	$a7,$a7,0x3
    # Line 218
    li	$t0,-1
    sll	$t1,$a6,0x10
    b	.L0d9424fc
    or	$a6,$a6,$t1
.L0d942784:
    # Line 237
    bne	$t0,$t2,.L0d942590
    nop
    # Line 238
    srl	$a7,$a5,0x8
    andi	$a7,$a7,0x3
    li	$t3,2
    beq	$a7,$t3,.L0d9427d8
    lui	$t0,0x1111
    beq	$a4,$a7,.L0d9427e0
    # Line 254
    sll	$t2,$a6,0x8
    or	$a6,$a6,$t2
    # Line 255
    li	$t0,-1
    # Line 254
    sll	$t1,$a6,0x10
    b	.L0d9424fc
    or	$a6,$a6,$t1
.L0d9427bc:
    # Line 218
    li	$t3,2
    beq	$a7,$t3,.L0d942800
    # Line 224
    sll	$t2,$a5,0x1e
    # Line 232
    li	$t0,-1
    # Line 231
    sll	$t8,$a6,0x10
    b	.L0d9424fc
    or	$a6,$a6,$t8
.L0d9427d8:
    # Line 238
    b	.L0d9424fc
    ori	$t0,$t0,0x1111
.L0d9427e0:
    # Line 245
    sll	$t1,$a5,0x1e
    bltz	$t1,.L0d942814
    andi	$t1,$a5,0x1
    # Line 249
    lui	$t0,0x5555
.L0d9427f0:
    ori	$t0,$t0,0x5555
.L0d9427f4:
    # Line 251
    sll	$t1,$a6,0x10
    b	.L0d9424fc
    or	$a6,$a6,$t1
.L0d942800:
    # Line 224
    bltz	$t2,.L0d94282c
    andi	$t1,$a5,0x1
    # Line 228
    lui	$t0,0x3333
.L0d94280c:
    b	.L0d9424fc
    ori	$t0,$t0,0x3333
.L0d942814:
    # Line 245
    beqz	$t1,.L0d9427f0
    # Line 249
    lui	$t0,0x5555
    # Line 246
    sll	$a6,$a6,0x8
    # Line 247
    lui	$t0,0xaaaa
    b	.L0d9427f4
    ori	$t0,$t0,0xaaaa
.L0d94282c:
    # Line 224
    beqz	$t1,.L0d94280c
    # Line 228
    lui	$t0,0x3333
    # Line 225
    sll	$a6,$a6,0x10
    # Line 226
    lui	$t0,0xcccc
    b	.L0d9424fc
    ori	$t0,$t0,0xcccc
.end ClearCI

# Function: MakeCurrentCI
# Declared: Line 342 (Source lines: 344-358)
# Address: 0x0d942850 - 0x0d942884 (Size: 52 bytes, Frame: 16)
.ent MakeCurrentCI
MakeCurrentCI:
    # Line 344
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,-6852
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 350
    # lw $t9, -26716($gp) # &__glMakeCurrentBuffer
    # Line 344
    sd	$ra,0($sp)
    # Line 350
    jal	__glMakeCurrentBuffer
    nop
    ld	$ra,0($sp)
    # Line 358
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end MakeCurrentCI

# Function: ResizeCI
# Declared: Line 361 (Source lines: 404-407)
# Address: 0x0d942890 - 0x0d9428a0 (Size: 16 bytes, Frame: 0)
.ent ResizeCI
ResizeCI:
    # Line 406
    sw	$a1,28($a0)
    # Line 405
    sw	$a2,8($a0)
    # Line 407
    jr	$ra
    # Line 404
    sw	$a1,4($a0)
.end ResizeCI

# Function: PickCI
# Declared: Line 410 (Source lines: 411-416)
# Address: 0x0d9428a0 - 0x0d9428d4 (Size: 52 bytes, Frame: 0)
.ent PickCI
PickCI:
    # Line 411
    lbu	$v1,30652($a0)
    lui	$v0,0x11
    addiu	$v0,$v0,-6932
    beqz	$v1,.L0d9428c4
    addu	$at,$t9,$v0
    # Line 413
    la	$v1,sub_0d940000
    addiu	$v1,$v1,8048
    # Line 416
    jr	$ra
    # Line 413
    sw	$v1,164($a1)
.L0d9428c4:
    # Line 415
    la	$a0,sub_0d940000
    addiu	$a0,$a0,7904
    # Line 416
    jr	$ra
    # Line 415
    sw	$a0,164($a1)
.end PickCI

# Function: __glCrmInitCI
# Declared: Line 419 (Source lines: 420-472)
# Address: 0x0d9428e0 - 0x0d942a98 (Size: 440 bytes, Frame: 32)
.globl __glCrmInitCI
.ent __glCrmInitCI
__glCrmInitCI:
    # Line 420
    lui	$at,0x11
    addiu	$sp,$sp,-32
    addiu	$at,$at,-6996
    sd	$gp,0($sp)
    addu	$gp,$t9,$at
    # Line 423
    # lw $t9, -26720($gp) # &__glInitBuffer
    # Line 420
    sd	$s1,24($sp)
    move	$s1,$a1
    sd	$s0,16($sp)
    # Line 423
    nop
    # Line 420
    sd	$ra,8($sp)
    # Line 423
    jal	__glInitBuffer
    # Line 420
    move	$s0,$a0
    # Line 459
    lwc1	$f0,_lit_3f800000
    # Line 439
    la	$t2,__glFetchSpan
    # Line 454
    la	$t0,__glCrmStoreCIStippledSpan
    # Line 439
    la	$t3,sub_0d940000
    # Line 455
    la	$a7,sub_0d940000
    # Line 425
    lw	$a2,3252($s1)
    # Line 456
    la	$a6,sub_0d940000
    # Line 425
    sw	$a2,12($s0)
    # Line 427
    addiu	$a2,$a2,7
    # Line 432
    li	$a3,1
    # Line 427
    sra	$a2,$a2,0x3
    sw	$a2,24($s0)
    # Line 466
    addiu	$at,$s1,30884
    # Line 429
    lui	$a1,0x1
    lbu	$a2,3222($s1)
    # Line 442
    la	$ra,sub_0d940000
    # Line 429
    addu	$a1,$s1,$a1
    # Line 456
    addiu	$a6,$a6,10400
    # Line 453
    la	$t1,__glCrmStoreCISpan
    # Line 455
    addiu	$a7,$a7,7904
    # Line 439
    addiu	$t3,$t3,9120
    # Line 442
    addiu	$ra,$ra,10320
    # Line 432
    beqz	$a2,.L0d942998
    # Line 429
    sb	$a2,-32580($a1)
    # Line 432
    lw	$a4,32056($s1)
    lw	$a4,0($a4)
    beq	$a4,$a3,.L0d942a78
    nop
.L0d942984:
    # Line 434
    beqz	$a2,.L0d94299c
    # Line 447
    la	$t8,sub_0d940000
    # Line 439
    lw	$a5,24($s0)
    sll	$a5,$a5,0x1
    sw	$a5,24($s0)
.L0d942998:
    # Line 447
    la	$t8,sub_0d940000
.L0d94299c:
    # Line 453
    sw	$t1,184($s0)
    # Line 451
    sw	$t2,200($s0)
    # Line 452
    sw	$t2,204($s0)
    # Line 445
    sw	$zero,64($s0)
    # Line 454
    sw	$t0,188($s0)
    # Line 456
    sw	$a6,160($s0)
    # Line 455
    sw	$a7,164($s0)
    # Line 448
    sw	$t3,172($s0)
    # Line 450
    sw	$t3,168($s0)
    # Line 442
    sw	$ra,44($s0)
    # Line 447
    addiu	$t8,$t8,8272
    sw	$t8,176($s0)
    # Line 449
    la	$t8,__glReturnSpan
    sw	$t8,180($s0)
    # Line 457
    la	$a5,sub_0d940000
    # Line 439
    # lw $t9, -32744($gp) # &sub_0d940000
    # Line 457
    addiu	$a5,$a5,9152
    sw	$a5,216($s0)
    # Line 439
    addiu	$t9,$t9,10384
    # Line 443
    sw	$t9,52($s0)
    # Line 444
    sw	$t9,56($s0)
    # Line 458
    lw	$a4,3252($s1)
    # Line 459
    swc1	$f0,88($s0)
    # Line 460
    swc1	$f0,92($s0)
    # Line 461
    swc1	$f0,96($s0)
    # Line 462
    swc1	$f0,128($s0)
    # Line 458
    sllv	$a4,$a3,$a4
    addiu	$a4,$a4,-1
    sw	$a4,72($s0)
    # Line 464
    lw	$a2,3252($s1)
    sllv	$a2,$a3,$a2
    addiu	$a2,$a2,-1
    sw	$a2,152($s0)
    # Line 466
    lbu	$a6,-32580($a1)
    # Line 472
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    # Line 466
    beqz	$a6,.L0d942a5c
    # Line 472
    ld	$s1,24($sp)
    # Line 466
    bne	$s0,$at,.L0d942a60
    # Line 472
    ld	$gp,0($sp)
    # Line 467
    lw	$v0,24($s0)
    sll	$v0,$v0,0x2
    sw	$v0,112($s0)
    # Line 468
    sllv	$v0,$a2,$v0
    sw	$v0,152($s0)
    # Line 472
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d942a5c:
    ld	$gp,0($sp)
.L0d942a60:
    ld	$ra,8($sp)
    # Line 470
    sw	$zero,112($s0)
    # Line 472
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d942a78:
    # Line 432
    lbu	$v1,31559($s1)
    lw	$a0,24($s0)
    sra	$v1,$v1,0x4
    sltu	$v1,$v1,$a0
    beqz	$v1,.L0d942984
    nop
    b	.L0d942998
    # Line 434
    sb	$zero,-32580($a1)
.end __glCrmInitCI

.rdata
_lit_3f800000:
    .word 0x3f800000

