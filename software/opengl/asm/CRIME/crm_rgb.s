# Source: ../CRIME/crm_rgb.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_rgb.c
# Total Functions: 18

.text

# Function: StoreRGBA
# Declared: Line 30 (Source lines: 31-42)
# Address: 0x0d966dc0 - 0x0d966e90 (Size: 208 bytes, Frame: 16)
.ent StoreRGBA
StoreRGBA:
    # Line 32
    lw	$a4,0($a0)
    # Line 33
    lw	$a5,32100($a4)
    lw	$at,32096($a4)
    # Line 31
    addiu	$sp,$sp,-16
    # Line 36
    lui	$t1,0x7
    ori	$t1,$t1,0xffff
    # Line 33
    beq	$at,$a5,.L0d966df8
    lw	$a3,32184($a4)
    # Line 35
    sw	$a5,8288($a3)
    lw	$a0,32188($a4)
    lw	$v1,32100($a4)
    sw	$v1,8288($a0)
    lw	$v0,32100($a4)
    sw	$v0,32096($a4)
.L0d966df8:
    # Line 36
    lw	$t8,0($a1)
    sll	$t8,$t8,0x6
    and	$t8,$t1,$t8
    sw	$t8,0($sp)
    lw	$t3,0($sp)
    sw	$t3,8320($a3)
    # Line 37
    lw	$t2,4($a1)
    sll	$t2,$t2,0x6
    and	$t1,$t1,$t2
    sw	$t1,4($sp)
    lw	$t0,4($sp)
    sw	$t0,8324($a3)
    # Line 38
    lwc1	$f3,12($a1)
    lwc1	$f1,20($a1)
    lwc1	$f2,16($a1)
    lwc1	$f0,24($a1)
    trunc.w.s	$f3,$f3
    trunc.w.s	$f1,$f1
    trunc.w.s	$f2,$f2
    mfc1	$a7,$f3
    trunc.w.s	$f0,$f0
    mfc1	$a6,$f1
    mfc1	$a5,$f2
    sll	$a7,$a7,0x18
    mfc1	$a2,$f0
    sll	$a6,$a6,0x8
    sll	$a5,$a5,0x10
    or	$a5,$a5,$a6
    or	$a2,$a2,$a7
    or	$a2,$a2,$a5
    sw	$a2,8($sp)
    # Line 41
    li	$a1,0x8080
    # Line 38
    lw	$a2,8($sp)
    # Line 41
    addu	$a1,$a1,$a4
    # Line 38
    sw	$a2,10448($a3)
    # Line 42
    addiu	$sp,$sp,16
    jr	$ra
    # Line 41
    sw	$zero,0($a1)
.end StoreRGBA

# Function: StoreRGBA2
# Declared: Line 45 (Source lines: 46-61)
# Address: 0x0d966e90 - 0x0d966fb0 (Size: 288 bytes, Frame: 48)
.ent StoreRGBA2
StoreRGBA2:
    # Line 46
    addiu	$sp,$sp,-48
    lui	$v0,0xf
    sd	$s0,16($sp)
    addiu	$v0,$v0,-24836
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 49
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    # Line 47
    lw	$s0,0($a0)
    # Line 46
    sd	$s8,32($sp)
    move	$s8,$a1
    # Line 49
    move	$a1,$a0
    # Line 46
    sd	$ra,24($sp)
    # Line 49
    jal	__glCrmSetStoreBuffer
    move	$a0,$s0
    # Line 50
    lw	$a0,32100($s0)
    lw	$v1,32096($s0)
    # Line 49
    move	$a1,$v0
    # Line 50
    beq	$v1,$a0,.L0d966ef4
    lw	$a4,32184($s0)
    # Line 52
    sw	$a0,8288($a4)
    lw	$a5,32188($s0)
    lw	$a3,32100($s0)
    sw	$a3,8288($a5)
    lw	$a2,32100($s0)
    sw	$a2,32096($s0)
.L0d966ef4:
    # Line 53
    lw	$at,0($s8)
    lui	$t8,0x7
    ori	$t8,$t8,0xffff
    sll	$at,$at,0x6
    and	$at,$t8,$at
    sw	$at,0($sp)
    lw	$ra,0($sp)
    sw	$ra,8320($a4)
    # Line 54
    lw	$t9,4($s8)
    sll	$t9,$t9,0x6
    and	$t8,$t8,$t9
    sw	$t8,4($sp)
    lw	$t3,4($sp)
    sw	$t3,8324($a4)
    # Line 55
    lwc1	$f3,12($s8)
    lwc1	$f1,20($s8)
    lwc1	$f2,16($s8)
    lwc1	$f0,24($s8)
    trunc.w.s	$f3,$f3
    trunc.w.s	$f1,$f1
    trunc.w.s	$f2,$f2
    mfc1	$t2,$f3
    trunc.w.s	$f0,$f0
    mfc1	$t1,$f1
    mfc1	$t0,$f2
    sll	$t2,$t2,0x18
    mfc1	$a7,$f0
    sll	$t1,$t1,0x8
    sll	$t0,$t0,0x10
    # Line 60
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    # Line 55
    or	$t0,$t0,$t1
    or	$a7,$a7,$t2
    or	$a7,$a7,$t0
    sw	$a7,8($sp)
    # Line 58
    li	$a6,0x8080
    # Line 55
    lw	$a7,8($sp)
    # Line 58
    addu	$a6,$a6,$s0
    # Line 55
    sw	$a7,10448($a4)
    # Line 60
    move	$a0,$s0
    jal	__glCrmSetStoreBuffer
    # Line 58
    sw	$zero,0($a6)
    ld	$ra,24($sp)
    ld	$s0,16($sp)
    ld	$s8,32($sp)
    # Line 61
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end StoreRGBA2

# Function: ReturnRGBASpan
# Declared: Line 64 (Source lines: 66-132)
# Address: 0x0d966fb0 - 0x0d9672f0 (Size: 832 bytes, Frame: 240)
.ent ReturnRGBASpan
ReturnRGBASpan:
    # Line 66
    addiu	$sp,$sp,-624
    sd	$a2,560($sp)
    sd	$ra,592($sp)
    sd	$s0,576($sp)
    sd	$s2,600($sp)
    sd	$gp,584($sp)
    sdc1	$f22,520($sp)
    sdc1	$f20,536($sp)
    sdc1	$f26,528($sp)
    sd	$s1,568($sp)
    # Line 67
    lw	$s1,0($a0)
    # Line 66
    sdc1	$f24,512($sp)
    # Line 80
    lwc1	$f24,31448($s1)
    # Line 83
    lwc1	$f26,31460($s1)
    # Line 66
    lui	$at,0xf
    # Line 82
    lwc1	$f20,31456($s1)
    # Line 66
    addiu	$at,$at,-25124
    # Line 81
    lwc1	$f22,31452($s1)
    # Line 66
    addu	$gp,$t9,$at
    # Line 85
    lw	$t9,32324($s1)
    # Line 83
    mul.s	$f26,$f26,$f16
    # Line 66
    move	$s2,$a5
    sd	$s3,608($sp)
    # Line 85
    sll	$s3,$a5,0x2
    # Line 82
    mul.s	$f20,$f20,$f16
    # Line 66
    move	$s0,$a3
    sd	$a1,552($sp)
    # Line 85
    move	$a1,$s3
    # Line 81
    mul.s	$f22,$f22,$f16
    # Line 66
    sd	$a0,544($sp)
    # Line 85
    move	$a0,$s1
    jalr	$t9
    # Line 80
    mul.s	$f24,$f24,$f16
    # Line 85
    blez	$s2,.L0d967178
    addu	$a6,$v0,$s3
    mtc1	$zero,$f4
    b	.L0d9672e4
    move	$a0,$v0
    nop
    nop
.L0d967050:
    # Line 92
    mov.s	$f7,$f9
    movz.s	$f7,$f4,$a3
.L0d967058:
    # Line 93
    trunc.l.s	$f0,$f7
    dmfc1	$a3,$f31
    dmfc1	$v1,$f0
    sll	$a3,$a3,0x8
    or	$a1,$a1,$a2
    sll	$v1,$v1,0x0
    or	$v1,$v1,$a3
    # Line 85
    li	$a3,1
    # Line 93
    or	$v1,$v1,$a1
    # Line 87
    beq	$a0,$a6,.L0d967178
    # Line 93
    sw	$v1,-4($a0)
    # Line 85
    lh	$a1,0($s0)
.L0d967088:
    mtc1	$a1,$f6
    cvt.s.w	$f6,$f6
    # Line 89
    lh	$a2,2($s0)
    # Line 85
    mul.s	$f6,$f6,$f24
    # Line 89
    mtc1	$a2,$f7
    # Line 85
    c.lt.s $f4,$f6
    # Line 89
    mov.s	$f8,$f6
    lwc1	$f5,30752($s1)
    cvt.s.w	$f7,$f7
    # Line 85
    movf	$a3,$zero,$fcc1
    movz.s	$f8,$f4,$a3
    # Line 89
    c.lt.s	$f5,$f8
    mul.s	$f7,$f7,$f22
    # Line 91
    lh	$a4,6($s0)
    # Line 87
    addiu	$a0,$a0,4
    # Line 90
    lwc1	$f6,30756($s1)
    # Line 89
    c.lt.s $f4,$f7
    bc1f	.L0d9670d8
    li	$a3,1
    mov.s	$f8,$f5
.L0d9670d8:
    # Line 90
    mov.s	$f5,$f7
    # Line 89
    movf	$a3,$zero,$fcc3
    movz.s	$f5,$f4,$a3
    # Line 90
    lh	$a3,4($s0)
    # Line 93
    trunc.l.s	$f29,$f8
    # Line 90
    c.lt.s $f6,$f5
    mtc1	$a3,$f9
    # Line 93
    dmfc1	$a1,$f29
    # Line 94
    addiu	$s0,$s0,8
    # Line 93
    sll	$a1,$a1,0x18
    # Line 90
    li	$a3,1
    bc1f .L0d967110
    cvt.s.w	$f9,$f9
    mov.s	$f5,$f6
.L0d967110:
    mul.s	$f9,$f9,$f20
    c.lt.s $f4,$f9
    # Line 91
    mov.s	$f7,$f9
    mtc1	$a4,$f9
    lwc1	$f6,30760($s1)
    # Line 90
    movf	$a3,$zero,$fcc5
    # Line 91
    cvt.s.w	$f9,$f9
    # Line 93
    trunc.l.s	$f27,$f5
    movz.s	$f7,$f4,$a3
    dmfc1	$a2,$f27
    # Line 91
    c.lt.s $f6,$f7
    mul.s	$f9,$f9,$f26
    # Line 93
    sll	$a2,$a2,0x10
    # Line 91
    li	$a3,1
    # Line 92
    mov.s	$f10,$f9
    # Line 91
    bc1t .L0d967158
    c.lt.s $f4,$f9
    mov.s	$f6,$f7
.L0d967158:
    # Line 92
    lwc1	$f7,30792($s1)
    # Line 91
    movf	$a3,$zero,$fcc7
    movz.s	$f10,$f4,$a3
    # Line 92
    c.lt.s $f7,$f10
    bc1f .L0d967050
    # Line 93
    trunc.l.s	$f31,$f6
    b	.L0d967058
    nop
.L0d967178:
    # Line 104
    sw	$s3,16($sp)
    # Line 103
    sw	$v0,8($sp)
    # Line 102
    sw	$v0,12($sp)
    # Line 99
    sw	$s2,216($sp)
    # Line 105
    li	$t1,6408
    sw	$t1,0($sp)
    # Line 97
    ld	$t3,552($sp)
    # Line 98
    ld	$t2,560($sp)
    sw	$t2,208($sp)
    # Line 100
    li	$t2,1
    # Line 101
    sw	$t2,172($sp)
    # Line 100
    sw	$t2,220($sp)
    # Line 97
    sw	$t3,204($sp)
    # Line 119
    lw	$t1,32088($s1)
    # Line 125
    addiu	$a1,$sp,0
    # Line 111
    lbu	$s0,32202($s1)
    # Line 125
    move	$a0,$s1
    # Line 113
    ld	$t0,544($sp)
    # Line 122
    srl	$a7,$t1,0x7
    # Line 113
    sw	$t0,32300($s1)
    # Line 123
    srl	$t0,$t1,0x3
    # Line 122
    andi	$a7,$a7,0x1
    # Line 112
    sb	$zero,32202($s1)
    # Line 121
    lui	$a6,0x40
    # Line 122
    sll	$a7,$a7,0x7
    # Line 114
    lw	$a5,32292($s1)
    # Line 122
    or	$a6,$a6,$a7
    # Line 123
    li	$a7,-121
    # Line 110
    sw	$zero,32344($s1)
    # Line 123
    and	$a6,$a6,$a7
    # Line 114
    li	$a7,-241
    # Line 109
    sw	$zero,32224($s1)
    # Line 123
    andi	$t0,$t0,0xf
    # Line 114
    and	$a5,$a5,$a7
    # Line 108
    sb	$zero,32206($s1)
    # Line 115
    li	$a7,-769
    # Line 114
    ori	$a5,$a5,0x20
    # Line 107
    sw	$t2,32216($s1)
    # Line 123
    sll	$t0,$t0,0x3
    # Line 115
    and	$a5,$a5,$a7
    # Line 125
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
    # Line 116
    li	$a7,-13
    # Line 115
    ori	$a5,$a5,0x200
    # Line 119
    sw	$t1,504($sp)
    # Line 123
    or	$a6,$a6,$t0
    # Line 116
    and	$a5,$a5,$a7
    # Line 123
    sw	$a6,32088($s1)
    # Line 117
    li	$a6,-3
    # Line 116
    ori	$a5,$a5,0x8
    # Line 117
    and	$a5,$a5,$a6
    # Line 125
    jal	crmDrawPixelsXfer
    # Line 117
    sw	$a5,32292($s1)
    # Line 127
    lw	$v0,504($sp)
    lw	$t8,32092($s1)
    # Line 132
    ld	$gp,584($sp)
    ld	$s2,600($sp)
    # Line 127
    beq	$t8,$v0,.L0d9672ac
    sw	$v0,32088($s1)
    # Line 132
    ldc1	$f26,528($sp)
    ldc1	$f24,512($sp)
    ldc1	$f22,520($sp)
    ldc1	$f20,536($sp)
    # Line 128
    lw	$v1,32184($s1)
    # Line 132
    ld	$s3,608($sp)
    # Line 128
    sw	$v0,8216($v1)
    lw	$at,32188($s1)
    lw	$ra,32088($s1)
    sw	$ra,8216($at)
    # Line 131
    sb	$s0,32202($s1)
    # Line 132
    ld	$s0,576($sp)
    # Line 130
    sw	$zero,32216($s1)
    # Line 132
    ld	$ra,592($sp)
    # Line 128
    lw	$t9,32088($s1)
    sw	$t9,32092($s1)
    # Line 132
    ld	$s1,568($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0d9672ac:
    ldc1	$f26,528($sp)
    ldc1	$f24,512($sp)
    ldc1	$f22,520($sp)
    ldc1	$f20,536($sp)
    ld	$s3,608($sp)
    ld	$gp,584($sp)
    # Line 131
    sb	$s0,32202($s1)
    # Line 132
    ld	$s0,576($sp)
    ld	$ra,592($sp)
    # Line 130
    sw	$zero,32216($s1)
    # Line 132
    ld	$s1,568($sp)
    ld	$s2,600($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0d9672e4:
    # Line 85
    li	$a3,1
    b	.L0d967088
    lh	$a1,0($s0)
.end ReturnRGBASpan

# Function: ReadRGBASpan
# Declared: Line 135 (Source lines: 137-271)
# Address: 0x0d9672f0 - 0x0d96795c (Size: 1644 bytes, Frame: 192)
.ent ReadRGBASpan
ReadRGBASpan:
    # Line 137
    addiu	$sp,$sp,-576
    sd	$ra,560($sp)
    sd	$s3,544($sp)
    sd	$s0,528($sp)
    sd	$s2,552($sp)
    sd	$s4,536($sp)
    sd	$gp,520($sp)
    sd	$s5,504($sp)
    # Line 149
    mtc1	$a2,$f0
    # Line 138
    lw	$s5,0($a0)
    # Line 148
    mtc1	$a1,$f1
    # Line 152
    li	$v1,6408
    sw	$v1,80($sp)
    # Line 137
    sd	$s1,512($sp)
    # Line 149
    cvt.s.w	$f0,$f0
    # Line 151
    li	$s1,1
    sw	$s1,172($sp)
    # Line 148
    cvt.s.w	$f1,$f1
    # Line 150
    sw	$a4,168($sp)
    # Line 149
    swc1	$f0,192($sp)
    # Line 148
    swc1	$f1,188($sp)
    # Line 178
    li	$a1,16
    # Line 137
    move	$s2,$a4
    # Line 157
    sw	$a0,32296($s5)
    # Line 137
    move	$s0,$a3
    lui	$v0,0xf
    # Line 156
    sw	$zero,32344($s5)
    # Line 137
    move	$s3,$a0
    addiu	$v0,$v0,-25956
    # Line 162
    lbu	$a6,31553($s5)
    # Line 154
    li	$v1,3074
    # Line 137
    addu	$gp,$t9,$v0
    # Line 157
    lw	$at,11764($s5)
    # Line 160
    addiu	$v0,$s5,3376
    # Line 162
    addiu	$s4,$s5,3216
    # Line 155
    sb	$zero,32206($s5)
    # Line 154
    sw	$v1,32216($s5)
    xor	$at,$at,$a0
    # Line 162
    beq	$s1,$a6,.L0d967744
    movz	$s4,$v0,$at
    # Line 175
    slti	$a0,$a6,2
    bnez	$a0,.L0d9673b0
    # Line 198
    nop	# was lw $t9, -31588($gp) # &crmReadPixelsXfer
    # Line 178
    lw	$a0,12($s3)
    beq	$a0,$a1,.L0d9677f8
    li	$a2,8
    beq	$a0,$a2,.L0d9678b0
.L0d9673ac:
    # Line 198
    nop	# was lw $t9, -31588($gp) # &crmReadPixelsXfer
.L0d9673b0:
    addiu	$a1,$sp,0
    jal	crmReadPixelsXfer
    lw	$a0,0($s3)
    # Line 201
    lw	$a3,32292($s5)
    # Line 200
    lw	$a0,88($sp)
    # Line 208
    li	$a7,2
    # Line 202
    sll	$a4,$a3,0x1e
    # Line 200
    move	$a5,$a0
    # Line 201
    srl	$a2,$a3,0x2
    # Line 202
    srl	$t0,$a3,0x8
    # Line 204
    andi	$a3,$a3,0x1
    sltiu	$a3,$a3,1
    # Line 202
    andi	$t0,$t0,0x3
    slti	$a4,$a4,0
    # Line 201
    andi	$a2,$a2,0x3
    ld	$ra,560($sp)
    # Line 206
    slt	$a6,$a2,$t0
    # Line 208
    beq	$t0,$a7,.L0d96772c
    movz	$a3,$a6,$a4
    beq	$t0,$s1,.L0d967788
    nop
.L0d967404:
    # Line 234
    blez	$s2,.L0d967458
    # Line 271
    ld	$gp,520($sp)
    # Line 234
    mtc1	$zero,$f5
    move	$a3,$zero
    andi	$a1,$s2,0x1
    sllv	$a6,$s1,$t0
    lui	$a0,0x1
    beqz	$a1,.L0d967448
    addu	$a0,$s5,$a0
    # Line 238
    beqz	$a2,.L0d967798
    # Line 237
    addiu	$a3,$a3,1
    # Line 238
    beq	$a2,$s1,.L0d96783c
    nop
    beq	$a2,$a7,.L0d9678ec
    nop
.L0d967440:
    # Line 267
    addu	$a5,$a6,$a5
    # Line 266
    addiu	$s0,$s0,16
.L0d967448:
    sra	$a4,$s2,0x1
    bnez	$a4,.L0d967504
    nop
.L0d967454:
    # Line 271
    ld	$gp,520($sp)
.L0d967458:
    ld	$s0,528($sp)
    ld	$s1,512($sp)
    ld	$s2,552($sp)
    ld	$s3,544($sp)
    ld	$s4,536($sp)
    move	$v0,$zero
    # Line 270
    sw	$zero,32216($s5)
    # Line 271
    ld	$s5,504($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0d967480:
    # Line 240
    lbu	$t1,0($a5)
    # Line 241
    srl	$t9,$t1,0x5
    lw	$t8,-32592($a0)
    andi	$t9,$t9,0x7
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f6,0($t8)
    # Line 242
    srl	$t3,$t1,0x2
    # Line 241
    swc1	$f6,0($s0)
    # Line 242
    andi	$t3,$t3,0x7
    lw	$t2,-32588($a0)
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    lwc1	$f4,0($t2)
    swc1	$f4,4($s0)
    # Line 243
    andi	$t1,$t1,0x3
    lw	$t0,-32584($a0)
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    lwc1	$f3,0($t0)
    swc1	$f3,8($s0)
    # Line 244
    lwc1	$f2,128($s3)
    swc1	$f2,12($s0)
    nop
.L0d9674e0:
    # Line 238
    beqz	$a2,.L0d967574
    # Line 267
    addu	$a5,$a6,$a5
    # Line 238
    beq	$a2,$s1,.L0d96764c
    nop
    beq	$a2,$a7,.L0d9676c4
    nop
.L0d9674f8:
    # Line 267
    addu	$a5,$a6,$a5
    # Line 237
    beq	$s2,$a3,.L0d967454
    # Line 266
    addiu	$s0,$s0,32
.L0d967504:
    # Line 238
    beqz	$a2,.L0d967480
    # Line 237
    addiu	$a3,$a3,2
    # Line 238
    beq	$a2,$s1,.L0d9675d4
    nop
    bne	$a2,$a7,.L0d9674e0
    nop
    # Line 257
    lw	$t0,0($a5)
    # Line 258
    srl	$a1,$t0,0x18
    dmtc1	$a1,$f9
    # Line 259
    srl	$v1,$t0,0x10
    # Line 260
    srl	$v0,$t0,0x8
    # Line 259
    andi	$v1,$v1,0xff
    # Line 260
    andi	$v0,$v0,0xff
    # Line 259
    dmtc1	$v1,$f8
    # Line 260
    dmtc1	$v0,$f7
    # Line 258
    cvt.s.l	$f9,$f9
    # Line 259
    cvt.s.l	$f8,$f8
    # Line 260
    cvt.s.l	$f7,$f7
    # Line 258
    swc1	$f9,0($s0)
    # Line 259
    swc1	$f8,4($s0)
    # Line 260
    swc1	$f7,8($s0)
    lw	$at,52($s4)
    # Line 261
    andi	$a4,$t0,0xff
    # Line 260
    beqz	$at,.L0d96771c
    # Line 261
    dmtc1	$a4,$f4
    cvt.s.l	$f4,$f4
.L0d96756c:
    # Line 264
    b	.L0d9674e0
    # Line 261
    swc1	$f4,12($s0)
.L0d967574:
    # Line 240
    lbu	$t1,0($a5)
    # Line 241
    srl	$t9,$t1,0x5
    lw	$t8,-32592($a0)
    andi	$t9,$t9,0x7
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$t9
    lwc1	$f9,0($t8)
    # Line 242
    srl	$t3,$t1,0x2
    # Line 241
    swc1	$f9,16($s0)
    # Line 242
    andi	$t3,$t3,0x7
    lw	$t2,-32588($a0)
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    lwc1	$f8,0($t2)
    swc1	$f8,20($s0)
    # Line 243
    andi	$t1,$t1,0x3
    lw	$t0,-32584($a0)
    sll	$t1,$t1,0x2
    addu	$t0,$t0,$t1
    lwc1	$f7,0($t0)
    swc1	$f7,24($s0)
    # Line 244
    lwc1	$f6,128($s3)
    b	.L0d9674f8
    swc1	$f6,28($s0)
.L0d9675d4:
    # Line 248
    lhu	$t0,0($a5)
    # Line 249
    sra	$t2,$t0,0xa
    lw	$t1,-32592($a0)
    andi	$t2,$t2,0x1f
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f12,0($t1)
    # Line 250
    sra	$a4,$t0,0x5
    # Line 249
    swc1	$f12,0($s0)
    # Line 250
    andi	$a4,$a4,0x1f
    lw	$a1,-32588($a0)
    sll	$a4,$a4,0x2
    addu	$a1,$a1,$a4
    lwc1	$f11,0($a1)
    swc1	$f11,4($s0)
    # Line 251
    andi	$v1,$t0,0x1f
    lw	$v0,-32584($a0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f10,0($v0)
    swc1	$f10,8($s0)
    # Line 252
    lw	$at,52($s4)
    mov.s	$f4,$f5
    beqz	$at,.L0d967640
    andi	$t3,$t0,0x8000
    beqz	$t3,.L0d967644
    nop
.L0d967640:
    lwc1	$f4,128($s3)
.L0d967644:
    # Line 255
    b	.L0d9674e0
    # Line 252
    swc1	$f4,12($s0)
.L0d96764c:
    # Line 248
    lhu	$t0,0($a5)
    # Line 249
    sra	$a4,$t0,0xa
    lw	$a1,-32592($a0)
    andi	$a4,$a4,0x1f
    sll	$a4,$a4,0x2
    addu	$a1,$a1,$a4
    lwc1	$f15,0($a1)
    # Line 250
    sra	$v1,$t0,0x5
    # Line 249
    swc1	$f15,16($s0)
    # Line 250
    andi	$v1,$v1,0x1f
    lw	$v0,-32588($a0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f14,0($v0)
    swc1	$f14,20($s0)
    # Line 251
    andi	$at,$t0,0x1f
    lw	$t9,-32584($a0)
    sll	$at,$at,0x2
    addu	$t9,$t9,$at
    lwc1	$f13,0($t9)
    swc1	$f13,24($s0)
    # Line 252
    lw	$t8,52($s4)
    mov.s	$f4,$f5
    beqz	$t8,.L0d9676b8
    andi	$t1,$t0,0x8000
    beqz	$t1,.L0d9676bc
    nop
.L0d9676b8:
    lwc1	$f4,128($s3)
.L0d9676bc:
    # Line 255
    b	.L0d9674f8
    # Line 252
    swc1	$f4,28($s0)
.L0d9676c4:
    # Line 257
    lw	$t0,0($a5)
    # Line 258
    srl	$t9,$t0,0x18
    dmtc1	$t9,$f18
    # Line 259
    srl	$t8,$t0,0x10
    # Line 260
    srl	$t3,$t0,0x8
    # Line 259
    andi	$t8,$t8,0xff
    # Line 260
    andi	$t3,$t3,0xff
    # Line 259
    dmtc1	$t8,$f17
    # Line 260
    dmtc1	$t3,$f16
    # Line 258
    cvt.s.l	$f18,$f18
    # Line 259
    cvt.s.l	$f17,$f17
    # Line 260
    cvt.s.l	$f16,$f16
    # Line 258
    swc1	$f18,16($s0)
    # Line 259
    swc1	$f17,20($s0)
    # Line 260
    swc1	$f16,24($s0)
    lw	$t2,52($s4)
    # Line 261
    andi	$at,$t0,0xff
    # Line 260
    beqz	$t2,.L0d967724
    # Line 261
    dmtc1	$at,$f4
    cvt.s.l	$f4,$f4
.L0d967714:
    # Line 264
    b	.L0d9674f8
    # Line 261
    swc1	$f4,28($s0)
.L0d96771c:
    b	.L0d96756c
    lwc1	$f4,128($s3)
.L0d967724:
    b	.L0d967714
    lwc1	$f4,128($s3)
.L0d96772c:
    # Line 210
    beqz	$a2,.L0d967944
    nop
    bne	$a2,$s1,.L0d967404
    # Line 216
    addiu	$v0,$a0,2
    b	.L0d967404
    movn	$a5,$v0,$a3
.L0d967744:
    # Line 171
    lw	$v1,32292($s5)
    li	$a0,-769
    and	$v1,$v1,$a0
    # Line 172
    li	$a0,-241
    # Line 171
    ori	$v1,$v1,0x200
    # Line 172
    and	$v1,$v1,$a0
    # Line 173
    li	$a0,-13
    # Line 172
    ori	$v1,$v1,0x20
    # Line 173
    and	$v1,$v1,$a0
    # Line 174
    li	$a0,-3
    # Line 173
    ori	$v1,$v1,0x8
    # Line 170
    sw	$s1,32216($s5)
    # Line 174
    and	$v1,$v1,$a0
    # Line 175
    li	$a0,-2
    and	$v1,$v1,$a0
    b	.L0d9673ac
    sw	$v1,32292($s5)
.L0d967788:
    # Line 222
    bnez	$a2,.L0d967404
    # Line 225
    addiu	$a1,$a0,1
    b	.L0d967404
    movn	$a5,$a1,$a3
.L0d967798:
    # Line 240
    lbu	$t0,0($a5)
    # Line 241
    srl	$t8,$t0,0x5
    lw	$t3,-32592($a0)
    andi	$t8,$t8,0x7
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t8
    lwc1	$f9,0($t3)
    # Line 242
    srl	$t2,$t0,0x2
    # Line 241
    swc1	$f9,0($s0)
    # Line 242
    andi	$t2,$t2,0x7
    lw	$t1,-32588($a0)
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f8,0($t1)
    swc1	$f8,4($s0)
    # Line 243
    andi	$t0,$t0,0x3
    lw	$a4,-32584($a0)
    sll	$t0,$t0,0x2
    addu	$a4,$a4,$t0
    lwc1	$f7,0($a4)
    swc1	$f7,8($s0)
    # Line 244
    lwc1	$f6,128($s3)
    b	.L0d967440
    swc1	$f6,12($s0)
.L0d9677f8:
    # Line 181
    lw	$t9,32292($s5)
    li	$ra,-769
    and	$t9,$t9,$ra
    # Line 182
    li	$ra,-13
    # Line 181
    ori	$t9,$t9,0x100
    # Line 182
    and	$t9,$t9,$ra
    # Line 183
    li	$ra,-241
    # Line 182
    ori	$t9,$t9,0x4
    # Line 183
    and	$t9,$t9,$ra
    # Line 184
    li	$ra,-3
    # Line 183
    ori	$t9,$t9,0x20
    # Line 180
    sw	$s1,32216($s5)
    # Line 184
    and	$t9,$t9,$ra
    # Line 185
    li	$ra,-2
    and	$t9,$t9,$ra
    b	.L0d9673ac
    sw	$t9,32292($s5)
.L0d96783c:
    # Line 248
    lhu	$t0,0($a5)
    # Line 249
    sra	$t2,$t0,0xa
    lw	$t1,-32592($a0)
    andi	$t2,$t2,0x1f
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f12,0($t1)
    # Line 250
    sra	$a4,$t0,0x5
    # Line 249
    swc1	$f12,0($s0)
    # Line 250
    andi	$a4,$a4,0x1f
    lw	$a1,-32588($a0)
    sll	$a4,$a4,0x2
    addu	$a1,$a1,$a4
    lwc1	$f11,0($a1)
    swc1	$f11,4($s0)
    # Line 251
    andi	$v1,$t0,0x1f
    lw	$v0,-32584($a0)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f10,0($v0)
    swc1	$f10,8($s0)
    # Line 252
    lw	$at,52($s4)
    beqz	$at,.L0d9678a4
    andi	$t3,$t0,0x8000
    beqz	$t3,.L0d967954
    nop
.L0d9678a4:
    lwc1	$f4,128($s3)
.L0d9678a8:
    # Line 255
    b	.L0d967440
    # Line 252
    swc1	$f4,12($s0)
.L0d9678b0:
    # Line 189
    lw	$t8,32292($s5)
    li	$t9,-769
    and	$t8,$t8,$t9
    # Line 190
    li	$t9,-13
    and	$t8,$t8,$t9
    # Line 191
    li	$t9,-241
    and	$t8,$t8,$t9
    # Line 192
    li	$t9,-3
    # Line 191
    ori	$t8,$t8,0x10
    # Line 188
    sw	$s1,32216($s5)
    # Line 192
    and	$t8,$t8,$t9
    # Line 193
    li	$t9,-2
    and	$t8,$t8,$t9
    # Line 194
    b	.L0d9673ac
    # Line 193
    sw	$t8,32292($s5)
.L0d9678ec:
    # Line 257
    lw	$t0,0($a5)
    # Line 258
    srl	$a1,$t0,0x18
    dmtc1	$a1,$f15
    # Line 259
    srl	$v1,$t0,0x10
    # Line 260
    srl	$v0,$t0,0x8
    # Line 259
    andi	$v1,$v1,0xff
    # Line 260
    andi	$v0,$v0,0xff
    # Line 259
    dmtc1	$v1,$f14
    # Line 260
    dmtc1	$v0,$f13
    # Line 258
    cvt.s.l	$f15,$f15
    # Line 259
    cvt.s.l	$f14,$f14
    # Line 260
    cvt.s.l	$f13,$f13
    # Line 258
    swc1	$f15,0($s0)
    # Line 259
    swc1	$f14,4($s0)
    # Line 260
    swc1	$f13,8($s0)
    lw	$at,52($s4)
    # Line 261
    andi	$a4,$t0,0xff
    # Line 260
    beqz	$at,.L0d96794c
    # Line 261
    dmtc1	$a4,$f4
    cvt.s.l	$f4,$f4
.L0d96793c:
    # Line 264
    b	.L0d967440
    # Line 261
    swc1	$f4,12($s0)
.L0d967944:
    b	.L0d967404
    # Line 212
    addiu	$a5,$a0,3
.L0d96794c:
    # Line 261
    b	.L0d96793c
    lwc1	$f4,128($s3)
.L0d967954:
    b	.L0d9678a8
    # Line 252
    mov.s	$f4,$f5
.end ReadRGBASpan

# Function: ReadRGBA
# Declared: Line 275 (Source lines: 277-278)
# Address: 0x0d967960 - 0x0d96797c (Size: 28 bytes, Frame: 0)
.ent ReadRGBA
ReadRGBA:
    # Line 277
    lui	$v0,0xf
    addiu	$v0,$v0,-27604
    addu	$at,$t9,$v0
    # Line 278
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,29424
    bgezl	$zero,__glCrmLeftRightRect
    li	$a4,1
.end ReadRGBA

# Function: ClearRGBA
# Declared: Line 282 (Source lines: 283-473)
# Address: 0x0d967980 - 0x0d968058 (Size: 1752 bytes, Frame: 144)
.ent ClearRGBA
ClearRGBA:
    # Line 283
    addiu	$sp,$sp,-144
    sd	$s0,120($sp)
    # Line 284
    lw	$s0,0($a0)
    # Line 292
    lui	$a4,0x1
    addu	$a4,$s0,$a4
    # Line 283
    lui	$a3,0xf
    # Line 292
    lw	$a2,-32576($a4)
    # Line 283
    addiu	$a3,$a3,-27636
    # Line 288
    lw	$a1,3268($s0)
    sd	$gp,112($sp)
    # Line 283
    addu	$gp,$t9,$a3
    # Line 292
    beqz	$a2,.L0d9679d0
    # Line 288
    slt	$a1,$zero,$a1
    # Line 292
    lw	$a5,29700($s0)
    lw	$a6,29708($s0)
    beq	$a5,$a6,.L0d9679d4
    li	$a5,1
    lw	$a7,29704($s0)
    lw	$t0,29712($s0)
    bne	$a7,$t0,.L0d967a48
.L0d9679d0:
    li	$a5,1
.L0d9679d4:
    # Line 465
    lw	$t1,32056($s0)
    lw	$t1,0($t1)
    bne	$t1,$a5,.L0d967a3c
    # Line 473
    ld	$gp,112($sp)
    # Line 465
    lw	$a0,-32608($a4)
    andi	$t2,$a0,0x2
    beqz	$t2,.L0d967a38
    # Line 467
    ori	$t8,$a0,0x4
    sw	$t8,-32608($a4)
    # Line 468
    lw	$t3,1792($s0)
    andi	$t3,$t3,0x2000
    beqz	$t3,.L0d967a3c
    # Line 473
    ld	$gp,112($sp)
    # Line 468
    lw	$t9,4120($zero)
    li	$t1,2
    beq	$t9,$t1,.L0d967a3c
    # Line 473
    ld	$gp,112($sp)
    # Line 470
    sw	$t1,4120($zero)
    lw	$at,11756($s0)
    # Line 473
    ld	$gp,112($sp)
    # Line 470
    ori	$at,$at,0x4
    sw	$at,11756($s0)
    # Line 473
    ld	$s0,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d967a38:
    ld	$gp,112($sp)
.L0d967a3c:
    ld	$s0,120($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d967a48:
    sd	$a1,104($sp)
    # Line 297
    lbu	$v0,30652($s0)
    sd	$a0,96($sp)
    sd	$a4,128($sp)
    beqz	$v0,.L0d967a74
    sd	$ra,136($sp)
    lw	$v1,11760($s0)
    sd	$a0,96($sp)
    sd	$a4,128($sp)
    bne	$v1,$a0,.L0d967dbc
    sd	$ra,136($sp)
.L0d967a74:
    # Line 300
    # lw $t9, -31856($gp) # &__glCrmGetDstBufMode
.L0d967a78:
    move	$a0,$s0
    ld	$a1,96($sp)
    jal	__glCrmGetDstBufMode
    addiu	$a2,$sp,0
    # Line 302
    lwc1	$f0,1860($s0)
    # Line 304
    lwc1	$f3,30760($s0)
    lwc1	$f2,1868($s0)
    # Line 303
    lwc1	$f4,30756($s0)
    lwc1	$f1,1864($s0)
    # Line 304
    mul.s	$f2,$f2,$f3
    # Line 302
    lwc1	$f3,30752($s0)
    # Line 303
    mul.s	$f1,$f1,$f4
    # Line 304
    trunc.l.s	$f2,$f2
    # Line 302
    mul.s	$f0,$f0,$f3
    # Line 303
    trunc.l.s	$f1,$f1
    ld	$a4,128($sp)
    # Line 304
    dmfc1	$a3,$f2
    # Line 302
    trunc.l.s	$f0,$f0
    # Line 304
    ld	$a0,104($sp)
    # Line 303
    dmfc1	$a2,$f1
    # Line 304
    lwc1	$f4,30792($s0)
    sll	$a3,$a3,0x0
    # Line 302
    dmfc1	$a1,$f0
    # Line 304
    sd	$a3,72($sp)
    # Line 303
    sll	$a2,$a2,0x0
    sd	$a2,80($sp)
    # Line 302
    sll	$a1,$a1,0x0
    # Line 304
    beqz	$a0,.L0d967dd4
    sd	$a1,88($sp)
    # Line 306
    lwc1	$f5,1872($s0)
    mul.s	$f5,$f5,$f4
    trunc.l.s	$f5,$f5
    dmfc1	$a5,$f5
    sll	$a5,$a5,0x0
    sd	$a5,64($sp)
.L0d967b04:
    # Line 313
    lw	$a6,0($sp)
    srl	$a3,$a6,0x2
    li	$t1,2
    andi	$a3,$a3,0x3
    beq	$t1,$a3,.L0d967de8
    li	$a5,1
    beq	$a5,$a3,.L0d967e7c
    # Line 329
    ld	$v0,104($sp)
    # Line 313
    beqz	$a3,.L0d967eec
    lw	$a7,8($sp)
    srl	$t0,$a6,0x8
    lw	$t1,4($sp)
    andi	$t0,$t0,0x3
.L0d967b38:
    # Line 396
    sw	$a7,16($sp)
    # Line 397
    sw	$t1,20($sp)
    # Line 399
    srl	$t2,$a6,0xa
    # Line 398
    li	$t3,1
    # Line 399
    andi	$t2,$t2,0x7
    sb	$t2,25($sp)
    # Line 398
    sllv	$t3,$t3,$t0
    sb	$t3,24($sp)
    # Line 400
    lw	$t1,32088($s0)
    # Line 406
    # lw $t9, -22896($gp) # &ioctl
    # Line 400
    sll	$t1,$t1,0xb
    # Line 406
    addiu	$a2,$sp,16
    # Line 400
    slti	$t1,$t1,0
    sb	$t1,26($sp)
    # Line 406
    li	$a1,22022
    jal	ioctl
    lw	$a0,31504($s0)
    ld	$ra,136($sp)
    ld	$a4,128($sp)
    beqz	$v0,.L0d967bac
    li	$a5,1
    # Line 407
    lw	$t9,20($s0)
    la	$a1,sub_0da40000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,8320
    ld	$ra,136($sp)
    ld	$a4,128($sp)
    li	$a5,1
.L0d967bac:
    # Line 410
    lbu	$a2,26($sp)
    andi	$a2,$a2,0x2
    sltu	$a2,$zero,$a2
    beqz	$a2,.L0d967d8c
    lw	$a6,0($sp)
.L0d967bc0:
    # Line 432
    lw	$a7,32088($s0)
    li	$t3,-121
    srl	$t0,$a7,0x7
    andi	$t0,$t0,0x1
    srl	$a3,$a7,0x8
    sll	$t0,$t0,0x7
    andi	$a3,$a3,0x1
    lui	$t1,0x40
    sll	$a3,$a3,0x8
    or	$a3,$a3,$t1
    li	$t1,-129
    # Line 433
    ld	$t9,104($sp)
    # Line 432
    and	$a3,$a3,$t1
    srl	$t1,$a7,0x3
    ld	$ra,136($sp)
    or	$a3,$a3,$t0
    andi	$t1,$t1,0xf
    # Line 426
    lw	$t2,32188($s0)
    # Line 432
    sll	$t8,$t1,0x3
    and	$a3,$t3,$a3
    # Line 426
    lw	$t0,32184($s0)
    # Line 433
    beqz	$t9,.L0d967e50
    # Line 432
    or	$a3,$a3,$t8
.L0d967c1c:
    # Line 436
    srl	$t8,$a7,0x14
    andi	$t8,$t8,0x1
    sll	$t8,$t8,0x14
    lui	$t9,0x10
    nor	$t9,$t9,$zero
    # Line 439
    lw	$t1,32($sp)
    lui	$t3,0xff
    # Line 436
    and	$a3,$a3,$t9
    # Line 439
    ori	$t3,$t3,0xffff
    # Line 436
    or	$a3,$a3,$t8
    # Line 439
    and	$t1,$t1,$t3
    lw	$t8,-32564($a4)
    lui	$t9,0x300
    lui	$t3,0x3
    or	$t1,$t1,$t9
    nor	$t3,$t3,$zero
    and	$t1,$t1,$t3
    lui	$t3,0x2
    beq	$t8,$a6,.L0d967c78
    or	$t1,$t1,$t3
    # Line 442
    sw	$a6,8200($t0)
    lw	$t9,0($sp)
    sw	$t9,8200($t2)
.L0d967c78:
    lw	$at,32092($s0)
    beq	$at,$a3,.L0d967c9c
    nop
    # Line 444
    lw	$v1,32184($s0)
    sw	$a3,8216($v1)
    lw	$v0,32188($s0)
    sw	$a3,36($sp)
    sw	$a3,8216($v0)
    sw	$a3,32092($s0)
.L0d967c9c:
    lw	$a0,32096($s0)
    beq	$a0,$t1,.L0d967cc4
    # Line 446
    ld	$a6,88($sp)
    # Line 445
    lw	$a2,32184($s0)
    sw	$t1,8288($a2)
    lw	$a1,32188($s0)
    sw	$t1,32($sp)
    sw	$t1,8288($a1)
    sw	$t1,32096($s0)
    # Line 446
    ld	$a6,88($sp)
.L0d967cc4:
    ld	$a3,72($sp)
    ld	$a2,80($sp)
    sll	$a6,$a6,0x18
    ld	$a1,64($sp)
    sll	$a3,$a3,0x8
    sll	$a2,$a2,0x10
    or	$a2,$a2,$a3
    or	$a1,$a1,$a6
    or	$a1,$a1,$a2
    sw	$a1,40($sp)
    lw	$a0,40($sp)
    sw	$a0,8400($t0)
    # Line 447
    lw	$v1,29700($s0)
    sll	$v1,$v1,0x6
    sw	$v1,44($sp)
    lw	$v0,44($sp)
    sw	$v0,8320($t0)
    # Line 448
    lw	$at,29704($s0)
    sll	$at,$at,0x6
    sw	$at,48($sp)
    lw	$t9,48($sp)
    sw	$t9,8324($t0)
    # Line 449
    lw	$t8,29708($s0)
    sll	$t8,$t8,0x6
    sw	$t8,52($sp)
    lw	$t3,52($sp)
    sw	$t3,8328($t0)
    # Line 450
    lw	$t1,29712($s0)
    sll	$t1,$t1,0x6
    sw	$t1,56($sp)
    lw	$a7,56($sp)
    sw	$a7,10380($t0)
    lw	$a3,-32564($a4)
    lw	$a6,0($sp)
    beq	$a6,$a3,.L0d967d60
    nop
    # Line 453
    sw	$a3,8200($t0)
    lw	$a7,-32564($a4)
    sw	$a7,8200($t2)
.L0d967d60:
    lw	$t0,32092($s0)
    lw	$a7,32088($s0)
    beq	$t0,$a7,.L0d967d8c
    nop
    # Line 456
    lw	$t8,32184($s0)
    sw	$a7,8216($t8)
    lw	$t3,32188($s0)
    lw	$t2,32088($s0)
    sw	$t2,8216($t3)
    lw	$t1,32088($s0)
    sw	$t1,32092($s0)
.L0d967d8c:
    # Line 459
    lbu	$t9,30652($s0)
    beqz	$t9,.L0d9679d4
    ld	$at,96($sp)
    lw	$a1,11760($s0)
    beq	$a1,$at,.L0d9679d4
    # Line 460
    nop	# was lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    jal	__glCrmSetDrawBuffer
    move	$a0,$s0
    ld	$ra,136($sp)
    ld	$a4,128($sp)
    b	.L0d9679d4
    li	$a5,1
.L0d967dbc:
    # Line 298
    # lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    move	$a0,$s0
    jal	__glCrmSetDrawBuffer
    ld	$a1,96($sp)
    b	.L0d967a78
    # Line 300
    nop	# was lw $t9, -31856($gp) # &__glCrmGetDstBufMode
.L0d967dd4:
    # Line 308
    trunc.l.s	$f6,$f4
    dmfc1	$v0,$f6
    sll	$v0,$v0,0x0
    b	.L0d967b04
    sd	$v0,64($sp)
.L0d967de8:
    # Line 316
    ld	$t2,72($sp)
    ld	$t1,80($sp)
    ld	$t0,88($sp)
    sll	$t2,$t2,0x8
    ld	$a7,64($sp)
    sll	$t1,$t1,0x10
    sll	$t0,$t0,0x18
    # Line 317
    lw	$a3,32088($s0)
    # Line 316
    or	$t0,$t0,$t1
    or	$a7,$a7,$t2
    or	$a7,$a7,$t0
    # Line 317
    ld	$t0,104($sp)
    srl	$a3,$a3,0x3
    beqz	$t0,.L0d967fac
    andi	$a3,$a3,0xf
    li	$t3,15
    beq	$a3,$t3,.L0d967fb8
    # Line 322
    sll	$t1,$a3,0x4
.L0d967e30:
    or	$t1,$a3,$t1
    sll	$t2,$t1,0x8
    or	$t1,$t1,$t2
    sll	$t2,$t1,0x10
    or	$t1,$t1,$t2
.L0d967e44:
    # Line 324
    srl	$t0,$a6,0x8
    b	.L0d967b38
    andi	$t0,$t0,0x3
.L0d967e50:
    # Line 434
    srl	$at,$a3,0x3
    andi	$at,$at,0xf
    # Line 433
    li	$t8,14
    # Line 434
    ori	$at,$at,0x1
    xor	$t8,$t1,$t8
    andi	$at,$at,0xf
    sll	$at,$at,0x3
    and	$t9,$t3,$a3
    or	$t9,$t9,$at
    b	.L0d967c1c
    movz	$a3,$t9,$t8
.L0d967e7c:
    # Line 329
    beqz	$v0,.L0d967fc0
    lw	$a3,-32576($a4)
    li	$v1,-1
    bne	$a3,$v1,.L0d967bc0
.L0d967e8c:
    # Line 334
    ld	$t3,64($sp)
    ld	$a3,72($sp)
    srl	$t0,$a6,0x8
    ld	$t2,80($sp)
    ld	$a7,88($sp)
    srl	$a3,$a3,0x3
    andi	$t3,$t3,0x80
    andi	$t2,$t2,0xf8
    sll	$t3,$t3,0x8
    andi	$a7,$a7,0xf8
    sll	$t2,$t2,0x2
    lbu	$a0,-32467($a4)
    andi	$a3,$a3,0x1f
    sll	$a7,$a7,0x7
    or	$a7,$a7,$t2
    or	$a3,$a3,$t3
    andi	$t0,$t0,0x3
    or	$a3,$a3,$a7
    beqz	$a0,.L0d967fd4
    move	$a7,$a3
    # Line 339
    li	$t1,-1
    # Line 338
    sll	$a7,$a3,0x10
    b	.L0d967b38
    or	$a7,$a3,$a7
.L0d967eec:
    # Line 357
    lw	$t0,-32576($a4)
    li	$t2,-1
    bne	$t0,$t2,.L0d967bc0
    nop
    lw	$t3,1792($s0)
    andi	$t3,$t3,0x8
    beqz	$t3,.L0d967f54
    ld	$t8,88($sp)
    andi	$t8,$t8,0x1f
    beqz	$t8,.L0d967f20
    ld	$t9,88($sp)
    li	$ra,255
    bne	$t9,$ra,.L0d967bc0
.L0d967f20:
    ld	$at,80($sp)
    andi	$at,$at,0x1f
    beqz	$at,.L0d967f38
    ld	$v0,80($sp)
    li	$v1,255
    bne	$v0,$v1,.L0d967bc0
.L0d967f38:
    ld	$a0,72($sp)
    andi	$a0,$a0,0x3f
    beqz	$a0,.L0d967f58
    # Line 365
    ld	$a7,88($sp)
    # Line 357
    ld	$a1,72($sp)
    li	$a2,255
    bne	$a1,$a2,.L0d967bc0
.L0d967f54:
    # Line 365
    ld	$a7,88($sp)
.L0d967f58:
    srl	$t0,$a6,0x8
    ld	$t2,80($sp)
    andi	$t0,$t0,0x3
    ld	$a3,72($sp)
    andi	$a7,$a7,0xe0
    srl	$t2,$t2,0x3
    srl	$a3,$a3,0x6
    andi	$t2,$t2,0x1c
    andi	$a3,$a3,0x3
    or	$a7,$a7,$t2
    or	$a3,$a3,$a7
    beq	$t1,$t0,.L0d968000
    move	$a7,$a3
    # Line 368
    beq	$a5,$t0,.L0d96800c
    # Line 371
    sll	$t2,$a6,0x1e
    # Line 380
    sll	$a7,$a3,0x8
    or	$a7,$a3,$a7
    # Line 381
    li	$t1,-1
    # Line 380
    sll	$t2,$a7,0x10
    b	.L0d967b38
    or	$a7,$a7,$t2
.L0d967fac:
    # Line 317
    li	$t0,14
    bne	$a3,$t0,.L0d967e30
    # Line 322
    sll	$t1,$a3,0x4
.L0d967fb8:
    b	.L0d967e44
    # Line 324
    li	$t1,-1
.L0d967fc0:
    # Line 329
    li	$t2,-256
    bne	$a3,$t2,.L0d967bc0
    nop
    b	.L0d967e8c
    nop
.L0d967fd4:
    # Line 338
    beq	$t1,$t0,.L0d967fec
    # Line 344
    sll	$t1,$a6,0x1e
    # Line 352
    li	$t1,-1
    # Line 351
    sll	$a7,$a3,0x10
    b	.L0d967b38
    or	$a7,$a3,$a7
.L0d967fec:
    # Line 344
    bltz	$t1,.L0d968028
    andi	$t3,$a6,0x1
    # Line 348
    lui	$t1,0x3333
.L0d967ff8:
    b	.L0d967b38
    ori	$t1,$t1,0x3333
.L0d968000:
    # Line 368
    lui	$t1,0x1111
    b	.L0d967b38
    ori	$t1,$t1,0x1111
.L0d96800c:
    # Line 371
    bltz	$t2,.L0d968040
    andi	$t2,$a6,0x1
    # Line 375
    lui	$t1,0x5555
.L0d968018:
    ori	$t1,$t1,0x5555
.L0d96801c:
    # Line 377
    sll	$t2,$a7,0x10
    b	.L0d967b38
    or	$a7,$a7,$t2
.L0d968028:
    # Line 344
    beqz	$t3,.L0d967ff8
    # Line 348
    lui	$t1,0x3333
    # Line 345
    sll	$a7,$a3,0x10
    # Line 346
    lui	$t1,0xcccc
    b	.L0d967b38
    ori	$t1,$t1,0xcccc
.L0d968040:
    # Line 371
    beqz	$t2,.L0d968018
    # Line 375
    lui	$t1,0x5555
    # Line 372
    sll	$a7,$a3,0x8
    # Line 373
    lui	$t1,0xaaaa
    b	.L0d96801c
    ori	$t1,$t1,0xaaaa
.end ClearRGBA

# Function: MakeCurrentRGBA
# Declared: Line 476 (Source lines: 478-492)
# Address: 0x0d968060 - 0x0d968094 (Size: 52 bytes, Frame: 16)
.globl MakeCurrentRGBA
.ent MakeCurrentRGBA
MakeCurrentRGBA:
    # Line 478
    lui	$at,0xf
    addiu	$sp,$sp,-16
    addiu	$at,$at,-29396
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 484
    # lw $t9, -26716($gp) # &__glMakeCurrentBuffer
    # Line 478
    sd	$ra,0($sp)
    # Line 484
    jal	__glMakeCurrentBuffer
    nop
    ld	$ra,0($sp)
    # Line 492
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end MakeCurrentRGBA

# Function: ResizeRGBA
# Declared: Line 495 (Source lines: 538-541)
# Address: 0x0d9680a0 - 0x0d9680b0 (Size: 16 bytes, Frame: 0)
.ent ResizeRGBA
ResizeRGBA:
    # Line 540
    sw	$a1,28($a0)
    # Line 539
    sw	$a2,8($a0)
    # Line 541
    jr	$ra
    # Line 538
    sw	$a1,4($a0)
.end ResizeRGBA

# Function: FreeRGBA
# Declared: Line 544 (Source lines: 545-555)
# Address: 0x0d9680b0 - 0x0d968124 (Size: 116 bytes, Frame: 32)
.ent FreeRGBA
FreeRGBA:
    # Line 545
    addiu	$sp,$sp,-32
    lui	$a4,0x1
    addu	$a4,$a1,$a4
    sd	$a4,0($sp)
    lw	$a3,-32592($a4)
    lw	$a4,-32584($a4)
    sd	$s0,8($sp)
    lui	$at,0xf
    move	$s0,$a1
    sd	$ra,24($sp)
    addiu	$at,$at,-29476
    sd	$gp,16($sp)
    beq	$a3,$a4,.L0d968100
    addu	$gp,$t9,$at
    # Line 552
    lw	$t9,12($s0)
    move	$a0,$a1
    jalr	$t9
    move	$a1,$a4
    ld	$a3,0($sp)
    lw	$a3,-32592($a3)
.L0d968100:
    # Line 554
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$a3
    ld	$ra,24($sp)
    ld	$s0,8($sp)
    # Line 555
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end FreeRGBA

# Function: StoreSPBuffRGBA
# Declared: Line 570 (Source lines: 571-603)
# Address: 0x0d968130 - 0x0d96828c (Size: 348 bytes, Frame: 48)
.globl StoreSPBuffRGBA
.ent StoreSPBuffRGBA
StoreSPBuffRGBA:
    # Line 571
    move	$a2,$a1
    lw	$a4,16($a0)
    move	$a5,$a0
    lui	$at,0xf
    addiu	$sp,$sp,-48
    addiu	$at,$at,-29604
    sd	$gp,16($sp)
    beqz	$a4,.L0d968278
    addu	$gp,$t9,$at
    # Line 581
    lw	$a0,0($a0)
    # Line 583
    lw	$t0,4($a1)
    lw	$a6,3664($a0)
    lw	$a3,28($a5)
    subu	$a6,$t0,$a6
    mult	$a3,$a6
    lw	$a7,0($a1)
    # Line 588
    la	$t2,__glDitherTable
    andi	$t1,$a7,0x3
    andi	$t3,$t0,0x3
    sll	$t3,$t3,0x2
    # Line 583
    lw	$a3,3660($a0)
    mflo	$a1
    # Line 588
    addu	$t1,$t1,$t3
    # Line 582
    lw	$a6,1792($a0)
    # Line 583
    addu	$a1,$a7,$a1
    # Line 588
    addu	$t1,$t1,$t2
    # Line 583
    subu	$a1,$a1,$a3
    andi	$a3,$a6,0x8
    addu	$a1,$a1,$a1
    # Line 591
    andi	$t8,$a6,0x2
    # Line 583
    sll	$a1,$a1,0x2
    # Line 588
    lwc1	$f5,_lit_3d000000
    # Line 583
    beqz	$a3,.L0d968284
    addu	$a1,$a4,$a1
    # Line 588
    lb	$t1,0($t1)
    sll	$t1,$t1,0x1
    addiu	$t1,$t1,1
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f5
.L0d9681d0:
    # Line 591
    beqz	$t8,.L0d968208
    nop
    # Line 595
    lw	$t9,12540($a0)
    sdc1	$f4,24($sp)
    sd	$a1,32($sp)
    move	$a1,$a5
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a3,$sp,0
    ld	$ra,40($sp)
    ld	$a1,32($sp)
    ldc1	$f4,24($sp)
    b	.L0d96820c
    addiu	$a0,$sp,0
.L0d968208:
    # Line 597
    addiu	$a0,$a2,12
.L0d96820c:
    # Line 599
    lwc1	$f8,0($a0)
    lwc1	$f7,4($a0)
    add.s	$f8,$f8,$f4
    add.s	$f7,$f7,$f4
    trunc.w.s	$f8,$f8
    trunc.w.s	$f7,$f7
    mfc1	$at,$f8
    mfc1	$v0,$f7
    andi	$v0,$v0,0xffff
    sll	$at,$at,0x10
    or	$at,$at,$v0
    sw	$at,0($a1)
    # Line 601
    lwc1	$f6,8($a0)
    lwc1	$f5,12($a0)
    add.s	$f6,$f6,$f4
    add.s	$f5,$f5,$f4
    trunc.w.s	$f6,$f6
    trunc.w.s	$f5,$f5
    mfc1	$t9,$f6
    mfc1	$at,$f5
    # Line 603
    ld	$gp,16($sp)
    addiu	$sp,$sp,48
    # Line 601
    andi	$at,$at,0xffff
    sll	$t9,$t9,0x10
    or	$t9,$t9,$at
    # Line 603
    jr	$ra
    # Line 601
    sw	$t9,4($a1)
.L0d968278:
    # Line 603
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d968284:
    b	.L0d9681d0
    # Line 591
    lwc1	$f4,3540($a0)
.end StoreSPBuffRGBA

# Function: StoreSPBuffRed
# Declared: Line 605 (Source lines: 606-635)
# Address: 0x0d968290 - 0x0d9683a4 (Size: 276 bytes, Frame: 48)
.globl StoreSPBuffRed
.ent StoreSPBuffRed
StoreSPBuffRed:
    # Line 606
    move	$a2,$a1
    lw	$a4,16($a0)
    move	$a5,$a0
    lui	$at,0xf
    addiu	$sp,$sp,-48
    addiu	$at,$at,-29956
    sd	$gp,16($sp)
    beqz	$a4,.L0d968390
    addu	$gp,$t9,$at
    # Line 616
    lw	$a0,0($a0)
    # Line 618
    lw	$a7,4($a1)
    lw	$a6,3664($a0)
    lw	$a3,28($a5)
    subu	$a6,$a7,$a6
    mult	$a3,$a6
    # Line 623
    andi	$t3,$a7,0x3
    # Line 618
    lw	$t0,0($a2)
    # Line 623
    sll	$t3,$t3,0x2
    # Line 617
    lw	$a6,1792($a0)
    # Line 618
    addu	$t2,$t0,$t0
    mflo	$a1
    # Line 626
    andi	$t8,$a6,0x2
    # Line 618
    lw	$a3,3660($a0)
    addu	$a1,$a1,$a1
    andi	$t1,$a6,0x8
    addu	$a1,$a4,$a1
    # Line 623
    lwc1	$f5,_lit_3d000000
    # Line 618
    addu	$a3,$a3,$a3
    addu	$a1,$a1,$t2
    # Line 623
    la	$t2,__glDitherTable
    # Line 618
    beqz	$t1,.L0d96839c
    subu	$a1,$a1,$a3
    # Line 623
    andi	$t1,$t0,0x3
    addu	$t1,$t1,$t3
    addu	$t1,$t1,$t2
    lb	$t1,0($t1)
    sll	$t1,$t1,0x1
    addiu	$t1,$t1,1
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f5
.L0d968334:
    # Line 626
    beqz	$t8,.L0d96836c
    nop
    # Line 630
    lw	$t9,12540($a0)
    sdc1	$f4,24($sp)
    sd	$a1,32($sp)
    move	$a1,$a5
    sd	$ra,40($sp)
    jalr	$t9
    addiu	$a3,$sp,0
    ld	$ra,40($sp)
    ld	$a1,32($sp)
    ldc1	$f4,24($sp)
    b	.L0d968370
    addiu	$a0,$sp,0
.L0d96836c:
    # Line 632
    addiu	$a0,$a2,12
.L0d968370:
    # Line 634
    lwc1	$f5,0($a0)
    add.s	$f5,$f5,$f4
    trunc.w.s	$f5,$f5
    # Line 635
    ld	$gp,16($sp)
    # Line 634
    mfc1	$t9,$f5
    # Line 635
    addiu	$sp,$sp,48
    jr	$ra
    # Line 634
    sh	$t9,0($a1)
.L0d968390:
    # Line 635
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d96839c:
    b	.L0d968334
    # Line 626
    lwc1	$f4,3540($a0)
.end StoreSPBuffRed

# Function: PickRGBA
# Declared: Line 637 (Source lines: 638-652)
# Address: 0x0d9683b0 - 0x0d968440 (Size: 144 bytes, Frame: 0)
.globl PickRGBA
.ent PickRGBA
PickRGBA:
    # Line 639
    lbu	$v1,30652($a0)
    # Line 638
    lui	$v0,0xf
    # Line 646
    li	$a2,4
    # Line 638
    addiu	$v0,$v0,-30244
    # Line 639
    lw	$a4,0($a1)
    beqz	$v1,.L0d968418
    # Line 638
    addu	$at,$t9,$v0
    # Line 642
    la	$v1,sub_0d960000
    addiu	$v1,$v1,28304
    sw	$v1,164($a1)
.L0d9683d8:
    # Line 646
    lw	$a3,32056($a4)
    lw	$a0,0($a3)
    bne	$a0,$a2,.L0d968410
    nop
    lw	$a4,4($a3)
    lbu	$a5,4($a4)
    beqz	$a5,.L0d968410
    # Line 650
    la	$t0,StoreSPBuffRed
    # Line 646
    lw	$a6,40($a4)
    li	$a5,16
    beq	$a6,$a5,.L0d968428
    lw	$a3,44($a4)
    beqz	$a3,.L0d968428
    nop
.L0d968410:
    # Line 652
    jr	$ra
    nop
.L0d968418:
    # Line 644
    la	$a7,sub_0d960000
    addiu	$a7,$a7,28096
    b	.L0d9683d8
    sw	$a7,164($a1)
.L0d968428:
    # Line 646
    beq	$a3,$a5,.L0d968438
    # Line 648
    la	$t1,StoreSPBuffRGBA
    # Line 652
    jr	$ra
    # Line 650
    sw	$t0,164($a1)
.L0d968438:
    # Line 652
    jr	$ra
    # Line 648
    sw	$t1,164($a1)
.end PickRGBA

# Function: __glCrmInitRGB
# Declared: Line 655 (Source lines: 656-818)
# Address: 0x0d968440 - 0x0d96897c (Size: 1340 bytes, Frame: 208)
.globl __glCrmInitRGB
.ent __glCrmInitRGB
__glCrmInitRGB:
    # Line 656
    lui	$at,0xf
    addiu	$sp,$sp,-80
    addiu	$at,$at,-30388
    sd	$gp,0($sp)
    addu	$gp,$t9,$at
    # Line 660
    # lw $t9, -26720($gp) # &__glInitBuffer
    # Line 656
    sd	$s3,16($sp)
    move	$s3,$a1
    sd	$s2,24($sp)
    # Line 660
    nop
    # Line 656
    sd	$ra,8($sp)
    # Line 660
    jal	__glInitBuffer
    # Line 656
    move	$s2,$a0
    # Line 662
    lw	$a2,3268($s3)
    lw	$a1,3264($s3)
    lw	$a3,3260($s3)
    lw	$a0,3256($s3)
    addu	$a0,$a0,$a3
    addu	$a1,$a1,$a2
    # Line 706
    li	$a2,8
    # Line 662
    addu	$a0,$a0,$a1
    # Line 706
    beq	$a0,$a2,.L0d968944
    sd	$s0,48($sp)
    li	$a4,15
    beq	$a0,$a4,.L0d9687f8
    li	$a2,16
    beq	$a0,$a2,.L0d9687f8
    li	$a5,24
    beq	$a0,$a5,.L0d968938
    li	$a2,32
    beq	$a0,$a2,.L0d968938
    nop
    lw	$a0,12($s2)
.L0d9684c4:
    # Line 721
    addiu	$a2,$a0,7
    sra	$a2,$a2,0x3
    sw	$a2,24($s2)
    # Line 723
    lbu	$a6,3222($s3)
    beqz	$a6,.L0d9684f0
    li	$a0,1
    sltiu	$a3,$a2,4
    beqz	$a3,.L0d9684f0
    nop
    b	.L0d9684f8
    andi	$a4,$a0,0xff
.L0d9684f0:
    move	$a0,$zero
    andi	$a4,$a0,0xff
.L0d9684f8:
    lui	$s0,0x1
    addu	$s0,$s3,$s0
    move	$a2,$a4
    # Line 726
    beqz	$a4,.L0d968520
    # Line 723
    sb	$a4,-32580($s0)
    # Line 726
    lw	$t8,32056($s3)
    lw	$t8,0($t8)
    li	$t9,1
    beq	$t8,$t9,.L0d968950
    nop
.L0d968520:
    # Line 728
    beqz	$a2,.L0d968538
    # Line 736
    la	$a2,MakeCurrentRGBA
    # Line 733
    lw	$t9,24($s2)
    sll	$t9,$t9,0x1
    sw	$t9,24($s2)
.L0d968534:
    # Line 736
    la	$a2,MakeCurrentRGBA
.L0d968538:
    # Line 733
    la	$v0,__glFetchSpan
    # Line 743
    sw	$v0,204($s2)
    # Line 742
    sw	$v0,200($s2)
    # Line 736
    sw	$a2,44($s2)
    # Line 740
    la	$a0,sub_0d960000
    # Line 741
    la	$v1,sub_0d960000
    # Line 733
    la	$a1,sub_0d970000
    # Line 741
    addiu	$v1,$v1,28592
    sw	$v1,180($s2)
    # Line 733
    addiu	$a1,$a1,-32608
    # Line 738
    sw	$a1,56($s2)
    # Line 737
    sw	$a1,52($s2)
    # Line 740
    addiu	$a0,$a0,31104
    sw	$a0,216($s2)
    # Line 745
    lw	$a0,32060($s3)
    lw	$ra,0($a0)
    li	$at,4
    beq	$ra,$at,.L0d9688ec
    nop
.L0d968584:
    # Line 747
    la	$a0,sub_0d960000
.L0d968588:
    # Line 753
    la	$a3,sub_0d960000
    # Line 747
    addiu	$a0,$a0,31072
    # Line 754
    sw	$a0,172($s2)
    # Line 753
    addiu	$a3,$a3,29424
    sw	$a3,176($s2)
    # Line 761
    li	$a6,255
.L0d9685a0:
    # Line 771
    sw	$a6,132($s2)
    # Line 770
    sw	$a6,108($s2)
    # Line 769
    sw	$a6,104($s2)
    # Line 768
    sw	$a6,100($s2)
    # Line 763
    sw	$a6,80($s2)
    # Line 762
    sw	$a6,76($s2)
    # Line 761
    sw	$a6,72($s2)
    # Line 756
    sw	$a0,168($s2)
    # Line 757
    la	$t1,__glCrmStoreRGBASpan
    # Line 758
    la	$t0,__glCrmStoreRGBAStippledSpan
    # Line 759
    la	$a7,PickRGBA
    sw	$a7,160($s2)
    # Line 758
    sw	$t0,188($s2)
    # Line 764
    lwc1	$f0,_lit_437f0000
    # Line 757
    sw	$t1,184($s2)
    # Line 767
    swc1	$f0,128($s2)
    # Line 766
    swc1	$f0,96($s2)
    # Line 765
    swc1	$f0,92($s2)
    # Line 764
    swc1	$f0,88($s2)
    # Line 776
    lw	$a5,3276($s3)
    lw	$a2,3272($s3)
    lw	$a4,3284($s3)
    lw	$a3,3280($s3)
    or	$a3,$a3,$a4
    or	$a2,$a2,$a5
    or	$a2,$a2,$a3
    sw	$a2,152($s2)
    # Line 779
    lbu	$a1,-32580($s0)
    beqz	$a1,.L0d968638
    addiu	$t2,$s3,30884
    bne	$s2,$t2,.L0d968638
    nop
    # Line 780
    lw	$t3,24($s2)
    sll	$t3,$t3,0x2
    sw	$t3,112($s2)
    # Line 781
    sllv	$t3,$a2,$t3
    b	.L0d96863c
    sw	$t3,152($s2)
.L0d968638:
    # Line 783
    sw	$zero,112($s2)
.L0d96863c:
    # Line 789
    addiu	$t8,$s3,30664
    bne	$s2,$t8,.L0d9687d8
    nop
    lw	$t9,12($s2)
    li	$ra,32
    beq	$t9,$ra,.L0d9687d8
    nop
    sd	$s4,56($sp)
    # Line 792
    lw	$s4,3264($s3)
    sd	$s1,64($sp)
    # Line 791
    li	$s1,1
    # Line 792
    sllv	$s4,$s1,$s4
    # Line 794
    addiu	$t9,$s4,-1
    sdc1	$f22,32($sp)
    mtc1	$t9,$f22
    sdc1	$f20,40($sp)
    cvt.s.w	$f22,$f22
    # Line 793
    lwc1	$f20,_lit_437f0000
    # Line 794
    div.s	$f22,$f20,$f22
    # Line 791
    lw	$t8,3256($s3)
    sllv	$s1,$s1,$t8
    # Line 793
    addiu	$at,$s1,-1
    mtc1	$at,$f21
    cvt.s.w	$f21,$f21
    # Line 796
    lw	$t9,0($s3)
    sll	$a1,$s1,0x2
    move	$a0,$s3
    jalr	$t9
    # Line 793
    div.s	$f20,$f20,$f21
    # Line 796
    move	$a0,$v0
    blez	$s1,.L0d968788
    sw	$v0,-32592($s0)
    andi	$a0,$s1,0x3
    move	$a3,$zero
    beqz	$a0,.L0d9686f4
    move	$a2,$zero
.L0d9686cc:
    # Line 799
    mtc1	$a2,$f23
    cvt.s.w	$f23,$f23
    lw	$t8,-32592($s0)
    addiu	$a0,$a0,-1
    # Line 798
    addiu	$a2,$a2,1
    # Line 799
    mul.s	$f23,$f23,$f20
    addu	$t8,$t8,$a3
    # Line 798
    addiu	$a3,$a3,4
    bnez	$a0,.L0d9686cc
    # Line 799
    swc1	$f23,0($t8)
.L0d9686f4:
    sra	$t9,$s1,0x2
    beqz	$t9,.L0d968784
    nop
.L0d968700:
    mtc1	$a2,$f31
    # Line 798
    addiu	$a6,$a2,1
    # Line 799
    cvt.s.w	$f31,$f31
    mtc1	$a6,$f29
    lw	$a5,-32592($s0)
    # Line 798
    addiu	$a6,$a2,2
    # Line 799
    cvt.s.w	$f29,$f29
    mul.s	$f31,$f31,$f20
    addu	$a5,$a5,$a3
    mtc1	$a6,$f27
    swc1	$f31,0($a5)
    lw	$a0,-32592($s0)
    # Line 798
    addiu	$a4,$a3,4
    addiu	$a1,$a2,3
    # Line 799
    cvt.s.w	$f27,$f27
    mul.s	$f29,$f29,$f20
    addu	$a0,$a0,$a4
    mtc1	$a1,$f25
    swc1	$f29,0($a0)
    lw	$v0,-32592($s0)
    # Line 798
    addiu	$v1,$a3,8
    # Line 799
    cvt.s.w	$f25,$f25
    mul.s	$f27,$f27,$f20
    addu	$v0,$v0,$v1
    swc1	$f27,0($v0)
    lw	$ra,-32592($s0)
    # Line 798
    addiu	$a2,$a2,4
    addiu	$at,$a3,12
    # Line 799
    mul.s	$f25,$f25,$f20
    addu	$ra,$ra,$at
    # Line 798
    addiu	$a3,$a3,16
    bne	$s1,$a2,.L0d968700
    # Line 799
    swc1	$f25,0($ra)
.L0d968784:
    # Line 798
    lw	$a0,-32592($s0)
.L0d968788:
    # Line 804
    bne	$s4,$s1,.L0d968804
    # Line 802
    sw	$a0,-32588($s0)
    # Line 804
    c.eq.s	$f20,$f22
    bc1f	.L0d968804
    nop
    # Line 805
    sw	$a0,-32584($s0)
.L0d9687a0:
    ld	$s1,64($sp)
.L0d9687a4:
    ld	$s0,48($sp)
    ld	$s4,56($sp)
    ldc1	$f20,40($sp)
    ldc1	$f22,32($sp)
    # Line 814
    la	$a7,sub_0d970000
    # Line 818
    ld	$gp,0($sp)
    ld	$ra,8($sp)
    ld	$s3,16($sp)
    # Line 814
    addiu	$a7,$a7,-32592
    sw	$a7,64($s2)
    # Line 818
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9687d8:
    ld	$s0,48($sp)
    ld	$gp,0($sp)
    ld	$ra,8($sp)
    # Line 816
    sw	$zero,64($s2)
    # Line 818
    ld	$s2,24($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9687f8:
    # Line 712
    sw	$a2,12($s2)
    # Line 713
    b	.L0d9684c4
    # Line 712
    li	$a0,16
.L0d968804:
    # Line 807
    lw	$t9,0($s3)
    move	$a0,$s3
    jalr	$t9
    sll	$a1,$s4,0x2
    andi	$a0,$s4,0x3
    blez	$s4,.L0d9687a0
    sw	$v0,-32584($s0)
    move	$a2,$zero
    sra	$t1,$s4,0x2
    beqz	$a0,.L0d968858
    move	$a3,$zero
.L0d968830:
    # Line 810
    mtc1	$a2,$f0
    cvt.s.w	$f0,$f0
    lw	$t0,-32584($s0)
    addiu	$a0,$a0,-1
    # Line 809
    addiu	$a2,$a2,1
    # Line 810
    mul.s	$f0,$f0,$f22
    addu	$t0,$t0,$a3
    # Line 809
    addiu	$a3,$a3,4
    bnez	$a0,.L0d968830
    # Line 810
    swc1	$f0,0($t0)
.L0d968858:
    beqz	$t1,.L0d9688e4
    nop
.L0d968860:
    mtc1	$a2,$f4
    # Line 809
    addiu	$a0,$a2,1
    # Line 810
    cvt.s.w	$f4,$f4
    mtc1	$a0,$f3
    lw	$v1,-32584($s0)
    # Line 809
    addiu	$a0,$a2,2
    # Line 810
    cvt.s.w	$f3,$f3
    mul.s	$f4,$f4,$f22
    addu	$v1,$v1,$a3
    mtc1	$a0,$f2
    swc1	$f4,0($v1)
    lw	$ra,-32584($s0)
    # Line 809
    addiu	$v0,$a3,4
    addiu	$at,$a2,3
    # Line 810
    cvt.s.w	$f2,$f2
    mul.s	$f3,$f3,$f22
    addu	$ra,$ra,$v0
    mtc1	$at,$f1
    swc1	$f3,0($ra)
    lw	$t8,-32584($s0)
    # Line 809
    addiu	$t9,$a3,8
    # Line 810
    cvt.s.w	$f1,$f1
    mul.s	$f2,$f2,$f22
    addu	$t8,$t8,$t9
    swc1	$f2,0($t8)
    lw	$t2,-32584($s0)
    # Line 809
    addiu	$a2,$a2,4
    addiu	$t3,$a3,12
    # Line 810
    mul.s	$f1,$f1,$f22
    addu	$t2,$t2,$t3
    # Line 809
    addiu	$a3,$a3,16
    bne	$s4,$a2,.L0d968860
    # Line 810
    swc1	$f1,0($t2)
.L0d9688e4:
    b	.L0d9687a4
    ld	$s1,64($sp)
.L0d9688ec:
    # Line 745
    lw	$a3,4($a0)
    lbu	$a1,4($a3)
    beqz	$a1,.L0d968584
    li	$a2,16
    lw	$a4,40($a3)
    beq	$a4,$a2,.L0d968910
    lw	$a5,44($a3)
    bnez	$a5,.L0d968588
    # Line 747
    la	$a0,sub_0d960000
.L0d968910:
    # Line 746
    la	$a7,__glReadSpan
    sw	$a7,176($s2)
    lw	$a6,3420($s3)
    # Line 747
    la	$a0,sub_0d960000
    # Line 750
    la	$t0,__glCrmReadSPBuffRed
    # Line 746
    beq	$a6,$a2,.L0d968970
    # Line 747
    addiu	$a0,$a0,31072
    # Line 750
    sw	$t0,172($s2)
.L0d968930:
    # Line 747
    b	.L0d9685a0
    # Line 761
    li	$a6,255
.L0d968938:
    # Line 716
    sw	$a2,12($s2)
    # Line 717
    b	.L0d9684c4
    # Line 716
    li	$a0,32
.L0d968944:
    move	$a0,$a2
    b	.L0d9684c4
    # Line 708
    sw	$a2,12($s2)
.L0d968950:
    # Line 726
    lbu	$a1,31559($s3)
    lw	$a3,24($s2)
    sra	$a1,$a1,0x4
    sltu	$a1,$a1,$a3
    beqz	$a1,.L0d968520
    nop
    b	.L0d968534
    # Line 728
    sb	$zero,-32580($s0)
.L0d968970:
    # Line 748
    la	$a2,__glCrmReadSPBuffColor
    b	.L0d968930
    sw	$a2,172($s2)
.end __glCrmInitRGB

# Function: __glCrmReadSPBuffColor
# Declared: Line 825 (Source lines: 831-842)
# Address: 0x0d968980 - 0x0d968a0c (Size: 140 bytes, Frame: 0)
.globl __glCrmReadSPBuffColor
.ent __glCrmReadSPBuffColor
__glCrmReadSPBuffColor:
    # Line 831
    lw	$a6,16($a0)
    # Line 836
    lw	$v0,28($a0)
    # Line 831
    beqz	$a6,.L0d968a04
    lw	$a5,0($a0)
    # Line 836
    lw	$v1,3664($a5)
    subu	$v1,$a2,$v1
    mult	$v0,$v1
    lw	$v0,3660($a5)
    mflo	$at
    addu	$at,$a1,$at
    subu	$at,$at,$v0
    addu	$at,$at,$at
    sll	$at,$at,0x2
    addu	$at,$a6,$at
    lw	$v0,0($at)
    # Line 837
    srl	$v1,$v0,0x10
    # Line 838
    andi	$v0,$v0,0xffff
    dmtc1	$v0,$f2
    # Line 837
    dmtc1	$v1,$f3
    # Line 838
    cvt.s.l	$f2,$f2
    # Line 837
    cvt.s.l	$f3,$f3
    # Line 838
    swc1	$f2,4($a3)
    # Line 837
    swc1	$f3,0($a3)
    # Line 839
    lw	$at,4($at)
    # Line 841
    andi	$v0,$at,0xffff
    # Line 840
    srl	$at,$at,0x10
    # Line 841
    dmtc1	$v0,$f1
    # Line 840
    dmtc1	$at,$f0
    # Line 841
    cvt.s.l	$f1,$f1
    # Line 840
    cvt.s.l	$f0,$f0
    # Line 841
    swc1	$f1,12($a3)
    # Line 842
    jr	$ra
    # Line 840
    swc1	$f0,8($a3)
.L0d968a04:
    # Line 842
    jr	$ra
    nop
.end __glCrmReadSPBuffColor

# Function: __glCrmReadSPBuffRed
# Declared: Line 844 (Source lines: 850-860)
# Address: 0x0d968a10 - 0x0d968a78 (Size: 104 bytes, Frame: 0)
.globl __glCrmReadSPBuffRed
.ent __glCrmReadSPBuffRed
__glCrmReadSPBuffRed:
    # Line 850
    lw	$a6,16($a0)
    # Line 856
    lw	$v0,28($a0)
    # Line 850
    beqz	$a6,.L0d968a70
    lw	$a5,0($a0)
    # Line 856
    lw	$v1,3664($a5)
    subu	$v1,$a2,$v1
    mult	$v0,$v1
    mflo	$at
    lw	$v0,3660($a5)
    addu	$at,$at,$at
    addu	$v1,$a1,$a1
    addu	$at,$a6,$at
    addu	$v0,$v0,$v0
    addu	$at,$at,$v1
    subu	$at,$at,$v0
    lhu	$at,0($at)
    mtc1	$at,$f0
    # Line 857
    mtc1	$zero,$f1
    # Line 859
    swc1	$f1,12($a3)
    # Line 856
    cvt.s.w	$f0,$f0
    # Line 858
    swc1	$f1,8($a3)
    # Line 857
    swc1	$f1,4($a3)
    # Line 860
    jr	$ra
    # Line 856
    swc1	$f0,0($a3)
.L0d968a70:
    # Line 860
    jr	$ra
    nop
.end __glCrmReadSPBuffRed

# Function: __glCrmFetchSPBuffColor
# Declared: Line 863 (Source lines: 869-881)
# Address: 0x0d968a80 - 0x0d968b24 (Size: 164 bytes, Frame: 0)
.globl __glCrmFetchSPBuffColor
.ent __glCrmFetchSPBuffColor
__glCrmFetchSPBuffColor:
    # Line 869
    lw	$a5,0($a0)
    li	$a6,0x80fc
    addu	$a6,$a6,$a5
    lw	$a6,0($a6)
    beqz	$a6,.L0d968b1c
    nop
    # Line 875
    lw	$t2,3664($a5)
    lw	$t1,16($a6)
    subu	$t2,$a2,$t2
    mult	$t1,$t2
    lw	$t1,3660($a5)
    mflo	$t0
    addu	$t0,$a1,$t0
    subu	$t0,$t0,$t1
    lw	$a7,0($a6)
    addu	$t0,$t0,$t0
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t0
    lw	$t0,0($a7)
    # Line 876
    srl	$t1,$t0,0x17
    # Line 877
    srl	$t0,$t0,0x7
    # Line 876
    dmtc1	$t1,$f3
    # Line 877
    andi	$t0,$t0,0x1ff
    dmtc1	$t0,$f2
    # Line 876
    cvt.s.l	$f3,$f3
    # Line 877
    cvt.s.l	$f2,$f2
    # Line 876
    swc1	$f3,0($a3)
    # Line 877
    swc1	$f2,4($a3)
    # Line 878
    lw	$a7,4($a7)
    # Line 879
    srl	$t0,$a7,0x17
    # Line 880
    srl	$a7,$a7,0x7
    # Line 879
    dmtc1	$t0,$f1
    # Line 880
    andi	$a7,$a7,0x1ff
    dmtc1	$a7,$f0
    # Line 879
    cvt.s.l	$f1,$f1
    # Line 880
    cvt.s.l	$f0,$f0
    # Line 879
    swc1	$f1,8($a3)
    # Line 881
    jr	$ra
    # Line 880
    swc1	$f0,12($a3)
.L0d968b1c:
    # Line 881
    jr	$ra
    nop
.end __glCrmFetchSPBuffColor

# Function: __glCrmFetchSPBuffRed
# Declared: Line 883 (Source lines: 889-900)
# Address: 0x0d968b30 - 0x0d968bb0 (Size: 128 bytes, Frame: 0)
.globl __glCrmFetchSPBuffRed
.ent __glCrmFetchSPBuffRed
__glCrmFetchSPBuffRed:
    # Line 889
    lw	$a5,0($a0)
    li	$a6,0x80fc
    addu	$a6,$a6,$a5
    lw	$a6,0($a6)
    beqz	$a6,.L0d968ba8
    nop
    # Line 896
    lw	$t3,3664($a5)
    lw	$t2,16($a6)
    subu	$t3,$a2,$t3
    mult	$t2,$t3
    lw	$a7,0($a6)
    mflo	$t1
    lw	$t0,3660($a5)
    addu	$t1,$t1,$t1
    addu	$a7,$a7,$t1
    addu	$t1,$a1,$a1
    addu	$t0,$t0,$t0
    addu	$a7,$a7,$t1
    subu	$a7,$a7,$t0
    lhu	$a7,0($a7)
    sra	$a7,$a7,0x7
    andi	$a7,$a7,0x1ff
    mtc1	$a7,$f0
    # Line 897
    mtc1	$zero,$f1
    # Line 899
    swc1	$f1,12($a3)
    # Line 896
    cvt.s.w	$f0,$f0
    # Line 898
    swc1	$f1,8($a3)
    # Line 897
    swc1	$f1,4($a3)
    # Line 900
    jr	$ra
    # Line 896
    swc1	$f0,0($a3)
.L0d968ba8:
    # Line 900
    jr	$ra
    nop
.end __glCrmFetchSPBuffRed

# Function: __glCrmFetchSPBuffRed_8bit
# Declared: Line 902 (Source lines: 908-919)
# Address: 0x0d968bb0 - 0x0d968c28 (Size: 120 bytes, Frame: 0)
.globl __glCrmFetchSPBuffRed_8bit
.ent __glCrmFetchSPBuffRed_8bit
__glCrmFetchSPBuffRed_8bit:
    # Line 908
    lw	$a5,0($a0)
    li	$a6,0x80fc
    addu	$a6,$a6,$a5
    lw	$a6,0($a6)
    beqz	$a6,.L0d968c20
    nop
    # Line 915
    lw	$t3,3664($a5)
    lw	$t2,16($a6)
    subu	$t3,$a2,$t3
    mult	$t2,$t3
    lw	$a7,0($a6)
    mflo	$t1
    lw	$t0,3660($a5)
    addu	$t1,$t1,$t1
    addu	$a7,$a7,$t1
    addu	$t1,$a1,$a1
    addu	$t0,$t0,$t0
    addu	$a7,$a7,$t1
    subu	$a7,$a7,$t0
    lhu	$a7,0($a7)
    mtc1	$a7,$f0
    # Line 916
    mtc1	$zero,$f1
    # Line 918
    swc1	$f1,12($a3)
    # Line 915
    cvt.s.w	$f0,$f0
    # Line 917
    swc1	$f1,8($a3)
    # Line 916
    swc1	$f1,4($a3)
    # Line 919
    jr	$ra
    # Line 915
    swc1	$f0,0($a3)
.L0d968c20:
    # Line 919
    jr	$ra
    nop
.end __glCrmFetchSPBuffRed_8bit

.rdata
_lit_3d000000:
    .word 0x3d000000
_lit_437f0000:
    .word 0x437f0000

