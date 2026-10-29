# Source: ../CRIME/crm_depth.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_depth.c
# Total Functions: 13

.text

# Function: __glCrmPassDepthMask
# Declared: Line 32 (Source lines: 33-45)
# Address: 0x0d94a050 - 0x0d94a0cc (Size: 124 bytes, Frame: 16)
.globl __glCrmPassDepthMask
.ent __glCrmPassDepthMask
__glCrmPassDepthMask:
    # Line 36
    lbu	$v0,32008($a0)
    # Line 33
    lui	$at,0x10
    addiu	$sp,$sp,-16
    addiu	$at,$at,27964
    sd	$gp,0($sp)
    # Line 36
    beqz	$v0,.L0d94a09c
    # Line 33
    addu	$gp,$t9,$at
    # Line 36
    lbu	$v0,1636($a0)
    beqz	$v0,.L0d94a0a0
    # Line 41
    li	$a3,-3
    # Line 36
    lw	$v1,1792($a0)
    andi	$v1,$v1,0x10
    beqz	$v1,.L0d94a0a0
    # Line 41
    li	$a3,-3
    # Line 39
    lw	$a1,32088($a0)
    sd	$ra,8($sp)
    ori	$a1,$a1,0x2
    b	.L0d94a0b0
    sw	$a1,32088($a0)
.L0d94a09c:
    # Line 41
    li	$a3,-3
.L0d94a0a0:
    lw	$a2,32088($a0)
    sd	$ra,8($sp)
    and	$a2,$a2,$a3
    sw	$a2,32088($a0)
.L0d94a0b0:
    # Line 44
    # lw $t9, -31800($gp) # &__glCrmPassDepthFunc
    bal __glCrmPassDepthFunc
    nop
    ld	$ra,8($sp)
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glCrmPassDepthMask

# Function: __glCrmPassDepthFunc
# Declared: Line 53 (Source lines: 54-97)
# Address: 0x0d94a0d0 - 0x0d94a244 (Size: 372 bytes, Frame: 16)
.globl __glCrmPassDepthFunc
.ent __glCrmPassDepthFunc
__glCrmPassDepthFunc:
    # Line 60
    lw	$a5,31304($a0)
    dsll32	$a5,$a5,0x0
    dsrl32	$a5,$a5,0x0
    dmtc1	$a5,$f0
    ldc1	$f1,1640($a0)
    cvt.d.l	$f0,$f0
    mul.d	$f0,$f0,$f1
    # Line 59
    lw	$a3,1632($a0)
    # Line 54
    addiu	$sp,$sp,-16
    # Line 60
    lui	$t0,0xff00
    # Line 59
    lui	$a4,0xe00
    lw	$a2,0($sp)
    # Line 60
    trunc.w.d	$f0,$f0
    # Line 59
    nor	$a4,$a4,$zero
    andi	$a3,$a3,0x7
    sll	$a3,$a3,0x19
    and	$a2,$a2,$a4
    # Line 60
    mfc1	$a6,$f0
    # Line 66
    lbu	$t1,31324($a0)
    # Line 59
    or	$a2,$a2,$a3
    # Line 60
    lui	$a5,0xff
    ori	$a7,$a5,0xffff
    sra	$a6,$a6,0x6
    # Line 57
    lw	$a4,32188($a0)
    # Line 60
    and	$a2,$t0,$a2
    and	$a6,$a7,$a6
    # Line 57
    lw	$a3,32184($a0)
    # Line 66
    beqz	$t1,.L0d94a180
    # Line 60
    or	$a2,$a2,$a6
.L0d94a144:
    # Line 91
    lw	$a6,31328($a0)
    lui	$a7,0x100
    # Line 93
    li	$t1,-2
    # Line 91
    nor	$a7,$a7,$zero
    and	$a2,$a2,$a7
    beqz	$a6,.L0d94a16c
    sw	$a2,0($sp)
    # Line 93
    lw	$t0,32088($a0)
    and	$t0,$t0,$t1
    sw	$t0,32088($a0)
.L0d94a16c:
    # Line 96
    sw	$a2,8640($a3)
    lw	$t2,0($sp)
    # Line 97
    addiu	$sp,$sp,16
    jr	$ra
    # Line 96
    sw	$t2,8640($a4)
.L0d94a180:
    # Line 66
    lw	$a6,32088($a0)
    sll	$t3,$a6,0x1d
    bgez	$t3,.L0d94a144
    nop
    # Line 73
    lw	$at,31308($a0)
    lw	$v0,4($sp)
    and	$v0,$a7,$v0
    and	$at,$t0,$at
    or	$at,$at,$v0
    # Line 78
    li	$v0,0xf000
    nor	$v0,$v0,$zero
    or	$at,$at,$a5
    and	$at,$at,$v0
    li	$v0,-4096
    ori	$at,$at,0x5000
    and	$at,$at,$v0
    # Line 71
    ori	$v0,$a6,0x1
    sw	$v0,32088($a0)
    # Line 78
    ori	$at,$at,0x2
    # Line 79
    sw	$at,8672($a3)
    sw	$at,8672($a4)
    lw	$t8,32088($a0)
    # Line 70
    lui	$t9,0x100
    # Line 79
    sll	$t8,$t8,0x1e
    # Line 70
    or	$a2,$a2,$t9
    sw	$a2,0($sp)
    # Line 79
    bltz	$t8,.L0d94a218
    # Line 78
    sw	$at,4($sp)
    # Line 96
    lw	$v0,0($sp)
    # Line 88
    sw	$zero,12($sp)
    lw	$a0,12($sp)
    lw	$v1,12($sp)
    sw	$a0,8680($a3)
    sw	$v1,8680($a4)
    # Line 96
    sw	$a2,8640($a3)
    # Line 97
    addiu	$sp,$sp,16
    jr	$ra
    # Line 96
    sw	$v0,8640($a4)
.L0d94a218:
    lw	$v1,0($sp)
    # Line 86
    li	$a5,255
    sw	$a5,8($sp)
    lw	$a1,8($sp)
    lw	$a0,8($sp)
    sw	$a1,8680($a3)
    sw	$a0,8680($a4)
    # Line 96
    sw	$a2,8640($a3)
    # Line 97
    addiu	$sp,$sp,16
    jr	$ra
    # Line 96
    sw	$v1,8640($a4)
.end __glCrmPassDepthFunc

# Function: __glCrmEnableDepthTest
# Declared: Line 100 (Source lines: 101-118)
# Address: 0x0d94a250 - 0x0d94a2c0 (Size: 112 bytes, Frame: 16)
.globl __glCrmEnableDepthTest
.ent __glCrmEnableDepthTest
__glCrmEnableDepthTest:
    # Line 104
    lbu	$v0,32008($a0)
    # Line 101
    lui	$at,0x10
    addiu	$sp,$sp,-16
    addiu	$at,$at,27452
    sd	$gp,0($sp)
    # Line 104
    beqz	$v0,.L0d94a2a8
    # Line 101
    addu	$gp,$t9,$at
    # Line 104
    lw	$v0,1792($a0)
    andi	$v0,$v0,0x10
    beqz	$v0,.L0d94a2a8
    nop
    # Line 106
    lw	$v1,32088($a0)
    sd	$ra,8($sp)
    ori	$v1,$v1,0x4
    sw	$v1,32088($a0)
.L0d94a28c:
    # Line 117
    # lw $t9, -31804($gp) # &__glCrmPassDepthMask
    bal __glCrmPassDepthMask
    nop
    ld	$ra,8($sp)
    # Line 118
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d94a2a8:
    # Line 108
    lw	$a1,32088($a0)
    sd	$ra,8($sp)
    li	$a2,-5
    and	$a1,$a1,$a2
    b	.L0d94a28c
    sw	$a1,32088($a0)
.end __glCrmEnableDepthTest

# Function: PickDepth
# Declared: Line 121 (Source lines: 123-123)
# Address: 0x0d94a2c0 - 0x0d94a2c8 (Size: 8 bytes, Frame: 0)
.ent PickDepth
PickDepth:
    # Line 123
    jr	$ra
    nop
.end PickDepth

# Function: FetchDepth
# Declared: Line 127 (Source lines: 169-169)
# Address: 0x0d94a2d0 - 0x0d94a2d8 (Size: 8 bytes, Frame: 0)
.ent FetchDepth
FetchDepth:
    # Line 169
    jr	$ra
    move	$v0,$zero
.end FetchDepth

# Function: StoreDepth
# Declared: Line 173 (Source lines: 229-229)
# Address: 0x0d94a2e0 - 0x0d94a2e8 (Size: 8 bytes, Frame: 0)
.ent StoreDepth
StoreDepth:
    # Line 229
    jr	$ra
    move	$v0,$zero
.end StoreDepth

# Function: StoreDepthAlways
# Declared: Line 233 (Source lines: 292-292)
# Address: 0x0d94a2f0 - 0x0d94a2f8 (Size: 8 bytes, Frame: 0)
.ent StoreDepthAlways
StoreDepthAlways:
    # Line 292
    jr	$ra
    move	$v0,$zero
.end StoreDepthAlways

# Function: ClearDepth
# Declared: Line 297 (Source lines: 298-472)
# Address: 0x0d94a300 - 0x0d94a79c (Size: 1180 bytes, Frame: 208)
.ent ClearDepth
ClearDepth:
    # Line 298
    addiu	$sp,$sp,-208
    sd	$s1,160($sp)
    sd	$s2,176($sp)
    sd	$s0,168($sp)
    # Line 299
    lw	$s0,0($a0)
    sd	$gp,184($sp)
    # Line 298
    move	$a4,$a0
    lui	$v0,0x10
    # Line 306
    lbu	$at,1636($s0)
    sd	$ra,192($sp)
    # Line 425
    lui	$ra,0xff
    # Line 298
    addiu	$v0,$v0,27276
    addu	$gp,$t9,$v0
    # Line 425
    ori	$t9,$ra,0xffff
    # Line 306
    lw	$s2,32188($s0)
    # Line 437
    lui	$v0,0xff00
    # Line 306
    beqz	$at,.L0d94a580
    lw	$s1,32184($s0)
    # Line 309
    lbu	$v1,96($a0)
    li	$a0,1
    beq	$v1,$a0,.L0d94a59c
    nop
    # Line 399
    lw	$t1,100($a4)
    lw	$t0,80($a4)
    # Line 396
    lw	$a6,1700($s0)
    # Line 399
    addu	$t0,$t0,$t1
    # Line 400
    srl	$a5,$t0,0x18
    mult	$a6,$a5
    addiu	$a3,$a5,1
    mflo	$a2
    nop
    nop
    mult	$a3,$a6
    # Line 395
    lw	$a7,1696($s0)
    # Line 400
    sra	$a2,$a2,0x8
    mflo	$a3
    # Line 393
    lw	$a6,3660($s0)
    # Line 400
    sra	$a3,$a3,0x8
    # Line 394
    lw	$a0,3664($s0)
    # Line 430
    sll	$t8,$a5,0x18
    # Line 399
    sw	$t0,80($a4)
    # Line 400
    beq	$a2,$a3,.L0d94a574
    # Line 395
    addu	$a7,$a7,$a6
    # Line 430
    lw	$t3,84($sp)
    and	$t3,$t9,$t3
    or	$t3,$t3,$t8
    li	$t8,0xf000
    nor	$t8,$t8,$zero
    or	$t3,$t3,$ra
    and	$t3,$t3,$t8
    li	$t8,-4096
    ori	$t3,$t3,0x7000
    # Line 424
    lw	$ra,8672($s2)
    # Line 430
    and	$t3,$t3,$t8
    ori	$t3,$t3,0x2
    # Line 431
    sw	$t3,8672($s1)
    sw	$t3,8672($s2)
    # Line 435
    lw	$t1,76($a4)
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    lw	$t0,0($a4)
    dmtc1	$t1,$f0
    ldc1	$f1,1640($t0)
    cvt.d.l	$f0,$f0
    mul.d	$f0,$f0,$f1
    trunc.w.d	$f0,$f0
    # Line 433
    lw	$t2,8640($s2)
    # Line 435
    mfc1	$t0,$f0
    # Line 434
    lw	$a1,8640($s2)
    # Line 437
    sra	$v1,$t0,0x6
    and	$at,$a1,$v0
    and	$t9,$t9,$v1
    # Line 430
    sw	$t3,84($sp)
    # Line 437
    or	$t9,$t9,$at
    lui	$at,0xe00
    or	$t9,$t9,$at
    # Line 438
    sw	$t9,8640($s1)
    sw	$t9,8640($s2)
    # Line 446
    lw	$t3,32088($s0)
    srl	$t3,$t3,0x14
    lui	$t8,0x40
    # Line 437
    sw	$t9,20($sp)
    # Line 446
    andi	$t3,$t3,0x1
    ori	$t8,$t8,0x7
    lw	$t9,32092($s0)
    sll	$t3,$t3,0x14
    # Line 462
    lwc1	$f6,_lit_42800000
    # Line 446
    or	$t3,$t3,$t8
    # Line 424
    sw	$ra,80($sp)
    # Line 458
    sll	$t1,$a7,0x6
    # Line 433
    sw	$t2,88($sp)
    # Line 446
    beq	$t9,$t3,.L0d94a48c
    # Line 462
    mtc1	$t0,$f5
    # Line 448
    lw	$t9,32184($s0)
    sw	$t3,8216($t9)
    lw	$t9,32188($s0)
    sw	$t3,92($sp)
    sw	$t3,8216($t9)
    sw	$t3,32092($s0)
.L0d94a48c:
    # Line 453
    lui	$a4,0x302
    lw	$ra,32096($s0)
    # Line 457
    addu	$t3,$a2,$a0
    # Line 453
    beq	$a4,$ra,.L0d94a4b8
    # Line 456
    sll	$t9,$a6,0x6
    # Line 454
    lw	$v0,32184($s0)
    sw	$a4,8288($v0)
    lw	$at,32188($s0)
    sw	$a4,96($sp)
    sw	$a4,8288($at)
    sw	$a4,32096($s0)
.L0d94a4b8:
    # Line 457
    sll	$t3,$t3,0x6
    # Line 456
    sw	$t9,100($sp)
    lw	$t8,100($sp)
    sw	$t8,8320($s1)
    # Line 457
    sw	$t3,104($sp)
    lw	$t2,104($sp)
    sw	$t2,8324($s1)
    # Line 458
    sw	$t1,108($sp)
    lw	$a5,108($sp)
    # Line 459
    addu	$a4,$a3,$a0
    # Line 458
    sw	$a5,8328($s1)
    # Line 459
    addiu	$a4,$a4,-1
    # Line 462
    cvt.s.w	$f5,$f5
    # Line 459
    sll	$a4,$a4,0x6
    sw	$a4,112($sp)
    lw	$a1,112($sp)
    # Line 460
    sd	$zero,120($sp)
    ldc1	$f4,120($sp)
    # Line 462
    mul.s	$f5,$f5,$f6
    # Line 461
    sd	$zero,128($sp)
    ldc1	$f3,128($sp)
    # Line 462
    cvt.d.s	$f5,$f5
    sdc1	$f5,136($sp)
    ldc1	$f2,136($sp)
    # Line 459
    sw	$a1,8332($s1)
    # Line 460
    sdc1	$f4,8656($s1)
    # Line 461
    sdc1	$f3,8664($s1)
    # Line 462
    trunc.l.d	$f2,$f2
    sdc1	$f2,144($sp)
    ldc1	$f1,144($sp)
    sdc1	$f1,10696($s1)
    lw	$a4,32088($s0)
    lw	$v1,32092($s0)
    # Line 466
    lw	$a1,80($sp)
    # Line 462
    beq	$v1,$a4,.L0d94a564
    # Line 467
    lw	$a0,88($sp)
    # Line 465
    lw	$v1,32184($s0)
    sw	$a4,8216($v1)
    lw	$v0,32188($s0)
    lw	$at,32088($s0)
    sw	$at,8216($v0)
    lw	$ra,32088($s0)
    sw	$ra,32092($s0)
.L0d94a564:
    # Line 466
    sw	$a1,8672($s1)
    sw	$a1,8672($s2)
    # Line 467
    sw	$a0,8640($s1)
    sw	$a0,8640($s2)
.L0d94a574:
    # Line 471
    # lw $t9, -31800($gp) # &__glCrmPassDepthFunc
    bal __glCrmPassDepthFunc
    move	$a0,$s0
.L0d94a580:
    ld	$s1,160($sp)
    ld	$ra,192($sp)
    ld	$s0,168($sp)
    ld	$s2,176($sp)
    # Line 472
    ld	$gp,184($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d94a59c:
    # Line 323
    lw	$t0,76($a4)
    dsll32	$t0,$t0,0x0
    dsrl32	$t0,$t0,0x0
    dmtc1	$t0,$f6
    ldc1	$f7,1640($s0)
    cvt.d.l	$f6,$f6
    mul.d	$f6,$f6,$f7
    # Line 331
    li	$a4,2
    sb	$a4,9($sp)
    # Line 323
    trunc.w.d	$f6,$f6
    # Line 330
    li	$a5,4
    sb	$a5,8($sp)
    # Line 329
    lui	$a6,0x7777
    ori	$a6,$a6,0x7777
    sw	$a6,4($sp)
    # Line 323
    mfc1	$a7,$f6
    sd	$a7,152($sp)
    # Line 328
    sra	$a7,$a7,0x6
    sw	$a7,0($sp)
    # Line 332
    lw	$a3,32088($s0)
    # Line 338
    # lw $t9, -22896($gp) # &ioctl
    # Line 332
    sll	$a3,$a3,0xb
    # Line 338
    addiu	$a2,$sp,0
    # Line 332
    slti	$a3,$a3,0
    sb	$a3,10($sp)
    # Line 338
    li	$a1,22022
    jal	ioctl
    lw	$a0,31504($s0)
    beqz	$v0,.L0d94a62c
    # Line 339
    lbu	$a2,10($sp)
    lw	$t9,20($s0)
    la	$a1,sub_0da40000
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$a1,7192
    lbu	$a2,10($sp)
.L0d94a62c:
    ld	$ra,192($sp)
    # Line 371
    lwc1	$f12,_lit_42800000
    # Line 339
    andi	$a2,$a2,0x2
    # Line 472
    ld	$gp,184($sp)
    # Line 360
    lui	$a6,0xe00
    # Line 339
    beqz	$a2,.L0d94a580
    ld	$a0,152($sp)
    # Line 358
    lw	$a5,8640($s2)
    # Line 352
    lw	$a2,32088($s0)
    # Line 371
    mtc1	$a0,$f11
    # Line 360
    or	$a4,$a5,$a6
    sw	$a4,20($sp)
    # Line 362
    sw	$a4,8640($s1)
    # Line 352
    srl	$a2,$a2,0x14
    # Line 362
    sw	$a4,8640($s2)
    # Line 352
    lui	$a4,0x40
    andi	$a2,$a2,0x1
    # Line 362
    lw	$a3,32092($s0)
    # Line 352
    ori	$a4,$a4,0x6
    sll	$a2,$a2,0x14
    or	$a2,$a2,$a4
    # Line 358
    sw	$a5,16($sp)
    # Line 371
    cvt.s.w	$f11,$f11
    # Line 362
    beq	$a3,$a2,.L0d94a6a8
    # Line 356
    lui	$a4,0x302
    # Line 363
    lw	$t0,32184($s0)
    sw	$a2,24($sp)
    sw	$a2,8216($t0)
    lw	$t0,32188($s0)
    sw	$a2,8216($t0)
    sw	$a2,32092($s0)
.L0d94a6a8:
    lw	$t1,32096($s0)
    beq	$a4,$t1,.L0d94a6cc
    nop
    # Line 364
    lw	$t3,32184($s0)
    sw	$a4,8288($t3)
    lw	$t2,32188($s0)
    sw	$a4,28($sp)
    sw	$a4,8288($t2)
    sw	$a4,32096($s0)
.L0d94a6cc:
    # Line 365
    lw	$a4,29700($s0)
    sll	$a4,$a4,0x6
    sw	$a4,32($sp)
    lw	$a3,32($sp)
    sw	$a3,8320($s1)
    # Line 366
    lw	$a2,29704($s0)
    sll	$a2,$a2,0x6
    sw	$a2,36($sp)
    lw	$a1,36($sp)
    sw	$a1,8324($s1)
    # Line 367
    lw	$v1,29708($s0)
    sll	$v1,$v1,0x6
    sw	$v1,40($sp)
    lw	$v0,40($sp)
    sw	$v0,8328($s1)
    # Line 368
    lw	$at,29712($s0)
    sll	$at,$at,0x6
    sw	$at,44($sp)
    lw	$t9,44($sp)
    # Line 369
    sd	$zero,48($sp)
    # Line 371
    mul.s	$f11,$f11,$f12
    # Line 369
    ldc1	$f10,48($sp)
    # Line 370
    sd	$zero,56($sp)
    # Line 371
    cvt.d.s	$f11,$f11
    # Line 370
    ldc1	$f9,56($sp)
    # Line 371
    sdc1	$f11,64($sp)
    ldc1	$f8,64($sp)
    # Line 368
    sw	$t9,8332($s1)
    # Line 369
    sdc1	$f10,8656($s1)
    # Line 370
    sdc1	$f9,8664($s1)
    # Line 371
    trunc.l.d	$f8,$f8
    sdc1	$f8,72($sp)
    ldc1	$f7,72($sp)
    sdc1	$f7,10696($s1)
    lw	$a4,32088($s0)
    lw	$t8,32092($s0)
    beq	$t8,$a4,.L0d94a780
    # Line 374
    lw	$t1,16($sp)
    # Line 373
    lw	$t0,32184($s0)
    sw	$a4,8216($t0)
    lw	$a7,32188($s0)
    lw	$a6,32088($s0)
    sw	$a6,8216($a7)
    lw	$a5,32088($s0)
    sw	$a5,32092($s0)
.L0d94a780:
    # Line 472
    ld	$s0,168($sp)
    # Line 374
    sw	$t1,8640($s1)
    # Line 472
    ld	$s1,160($sp)
    # Line 374
    sw	$t1,8640($s2)
    # Line 472
    ld	$s2,176($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end ClearDepth

# Function: FirstClearDepth
# Declared: Line 481 (Source lines: 482-581)
# Address: 0x0d94a7a0 - 0x0d94aa54 (Size: 692 bytes, Frame: 144)
.ent FirstClearDepth
FirstClearDepth:
    # Line 482
    addiu	$sp,$sp,-144
    sd	$ra,136($sp)
    sd	$s2,120($sp)
    sd	$s0,104($sp)
    # Line 483
    lw	$s0,0($a0)
    sd	$gp,128($sp)
    # Line 494
    lbu	$at,1636($s0)
    # Line 482
    sd	$s1,112($sp)
    lui	$v0,0x10
    move	$s1,$a0
    addiu	$v0,$v0,26092
    # Line 494
    lw	$a2,32188($s0)
    # Line 482
    addu	$gp,$t9,$v0
    # Line 494
    beqz	$at,.L0d94aa38
    lw	$s2,32184($s0)
    # Line 498
    lbu	$v1,96($a0)
    beqz	$v1,.L0d94a81c
    # Line 505
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,-23808
    bal __glCrmEnableDepthTest
    nop
    # Line 506
    la	$at,sub_0d950000
    # Line 581
    ld	$gp,128($sp)
    ld	$s0,104($sp)
    ld	$ra,136($sp)
    ld	$s2,120($sp)
    # Line 506
    addiu	$at,$at,-23808
    sw	$at,120($s1)
    # Line 581
    ld	$s1,112($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d94a81c:
    # Line 525
    lw	$t9,4($sp)
    lui	$at,0xffff
    li	$ra,0xf000
    nor	$ra,$ra,$zero
    or	$t9,$t9,$at
    and	$t9,$t9,$ra
    li	$ra,-4096
    ori	$t9,$t9,0x7000
    # Line 519
    lw	$a1,8672($a2)
    # Line 525
    and	$t9,$t9,$ra
    ori	$t9,$t9,0x2
    # Line 526
    sw	$t9,8672($s2)
    sw	$t9,8672($a2)
    # Line 530
    lw	$t3,76($a0)
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    lw	$t2,0($a0)
    dmtc1	$t3,$f0
    ldc1	$f1,1640($t2)
    cvt.d.l	$f0,$f0
    mul.d	$f0,$f0,$f1
    # Line 528
    lw	$v0,8640($a2)
    # Line 530
    trunc.w.d	$f0,$f0
    # Line 529
    lw	$t1,8640($a2)
    # Line 532
    lui	$t2,0xff00
    # Line 530
    mfc1	$t0,$f0
    move	$a7,$t1
    # Line 532
    lui	$t1,0xff
    ori	$t1,$t1,0xffff
    # Line 530
    sd	$t0,88($sp)
    # Line 532
    sra	$t0,$t0,0x6
    sd	$a2,96($sp)
    and	$a7,$a7,$t2
    and	$t0,$t0,$t1
    # Line 519
    sw	$a1,0($sp)
    # Line 532
    or	$a7,$a7,$t0
    lui	$t0,0xe00
    or	$a7,$a7,$t0
    # Line 533
    sw	$a7,8640($s2)
    sw	$a7,8640($a2)
    # Line 541
    lui	$a5,0x40
    lw	$a0,32092($s0)
    ori	$a5,$a5,0x7
    # Line 525
    sw	$t9,4($sp)
    # Line 528
    sw	$v0,8($sp)
    # Line 541
    beq	$a5,$a0,.L0d94a8f0
    # Line 532
    sw	$a7,12($sp)
    # Line 543
    lw	$v1,32184($s0)
    sw	$a5,8216($v1)
    lw	$v1,32188($s0)
    sw	$a5,16($sp)
    sw	$a5,8216($v1)
    sw	$a5,32092($s0)
.L0d94a8f0:
    # Line 548
    lw	$a1,32096($s0)
    lui	$a0,0x302
    beq	$a0,$a1,.L0d94a918
    nop
    # Line 549
    lw	$a3,32184($s0)
    sw	$a0,8288($a3)
    lw	$a2,32188($s0)
    sw	$a0,20($sp)
    sw	$a0,8288($a2)
    sw	$a0,32096($s0)
.L0d94a918:
    # Line 557
    lw	$t9,28($s0)
    move	$a0,$s0
    addiu	$a4,$sp,36
    addiu	$a3,$sp,32
    addiu	$a2,$sp,28
    jal	sub_0d950000
    addiu	$a1,$sp,24
    # Line 560
    lw	$t2,3660($s0)
    # Line 564
    sll	$at,$t2,0x6
    sw	$at,40($sp)
    # Line 561
    lw	$a7,3664($s0)
    # Line 564
    lw	$ra,40($sp)
    # Line 565
    sll	$t9,$a7,0x6
    sw	$t9,44($sp)
    lw	$t8,44($sp)
    # Line 560
    lw	$t1,32($sp)
    # Line 562
    lw	$a6,36($sp)
    # Line 565
    sw	$t8,8324($s2)
    # Line 560
    addu	$t1,$t1,$t2
    # Line 571
    ld	$t3,88($sp)
    # Line 564
    sw	$ra,8320($s2)
    # Line 566
    sll	$t1,$t1,0x6
    sw	$t1,48($sp)
    # Line 571
    mtc1	$t3,$f5
    # Line 562
    addu	$a6,$a6,$a7
    # Line 566
    lw	$t0,48($sp)
    # Line 567
    sll	$a6,$a6,0x6
    sw	$a6,52($sp)
    lw	$a5,52($sp)
    # Line 571
    cvt.s.w	$f5,$f5
    lwc1	$f6,_lit_42800000
    # Line 567
    sw	$a5,8332($s2)
    # Line 569
    sd	$zero,56($sp)
    ldc1	$f4,56($sp)
    # Line 571
    mul.s	$f5,$f5,$f6
    # Line 570
    sd	$zero,64($sp)
    ldc1	$f3,64($sp)
    # Line 571
    cvt.d.s	$f5,$f5
    sdc1	$f5,72($sp)
    ldc1	$f2,72($sp)
    # Line 566
    sw	$t0,8328($s2)
    # Line 570
    sdc1	$f3,8664($s2)
    # Line 569
    sdc1	$f4,8656($s2)
    # Line 571
    trunc.l.d	$f2,$f2
    sdc1	$f2,80($sp)
    ldc1	$f1,80($sp)
    sdc1	$f1,10696($s2)
    lw	$a0,32088($s0)
    lw	$a4,32092($s0)
    beq	$a4,$a0,.L0d94aa04
    # Line 576
    lw	$a4,8($sp)
    # Line 574
    lw	$a2,32184($s0)
    sw	$a0,8216($a2)
    lw	$a1,32188($s0)
    lw	$v1,32088($s0)
    sw	$v1,8216($a1)
    lw	$v0,32088($s0)
    sw	$v0,32092($s0)
    # Line 576
    lw	$a4,8($sp)
.L0d94aa04:
    # Line 575
    lw	$a6,0($sp)
    lw	$a7,0($sp)
    sw	$a7,8672($s2)
    ld	$a5,96($sp)
    # Line 579
    la	$a3,sub_0d950000
    # Line 575
    sw	$a6,8672($a5)
    # Line 580
    # lw $t9, -31800($gp) # &__glCrmPassDepthFunc
    # Line 576
    sw	$a4,8640($s2)
    # Line 580
    move	$a0,$s0
    # Line 576
    sw	$a4,8640($a5)
    # Line 579
    addiu	$a3,$a3,-23808
    # Line 580
    bal __glCrmPassDepthFunc
    # Line 579
    sw	$a3,120($s1)
.L0d94aa38:
    ld	$s0,104($sp)
    ld	$ra,136($sp)
    ld	$s1,112($sp)
    ld	$s2,120($sp)
    # Line 581
    ld	$gp,128($sp)
    jr	$ra
    addiu	$sp,$sp,144
.end FirstClearDepth

# Function: ResizeSz
# Declared: Line 585 (Source lines: 595-598)
# Address: 0x0d94aa60 - 0x0d94aa70 (Size: 16 bytes, Frame: 0)
.ent ResizeSz
ResizeSz:
    # Line 597
    sw	$a1,28($a0)
    # Line 596
    sw	$a2,8($a0)
    # Line 598
    jr	$ra
    # Line 595
    sw	$a1,4($a0)
.end ResizeSz

# Function: Fix_zbuffer
# Declared: Line 611 (Source lines: 612-696)
# Address: 0x0d94aa70 - 0x0d94ac98 (Size: 552 bytes, Frame: 224)
.ent Fix_zbuffer
Fix_zbuffer:
    # Line 621
    lbu	$v1,31324($a0)
    # Line 612
    lui	$v0,0x10
    addiu	$sp,$sp,-96
    # Line 621
    lw	$a6,32188($a0)
    # Line 612
    addiu	$v0,$v0,25372
    # Line 621
    lw	$a5,32184($a0)
    beqz	$v1,.L0d94aa98
    # Line 612
    addu	$at,$t9,$v0
    # Line 696
    jr	$ra
    addiu	$sp,$sp,96
.L0d94aa98:
    # Line 656
    lw	$a4,12($sp)
    lui	$t3,0xff
    lui	$a7,0xff00
    ori	$t2,$t3,0xffff
    # Line 639
    lw	$t1,3704($a0)
    # Line 656
    and	$a7,$a2,$a7
    and	$a4,$a4,$t2
    # Line 642
    lw	$t0,8672($a6)
    # Line 656
    or	$a4,$a4,$a7
    li	$a7,0xf000
    # Line 642
    sw	$t0,0($sp)
    # Line 656
    nor	$a7,$a7,$zero
    or	$a4,$a4,$t3
    # Line 636
    lw	$t0,3660($a0)
    # Line 656
    and	$a4,$a4,$a7
    # Line 643
    lw	$t2,8680($a6)
    # Line 656
    li	$a7,-4081
    ori	$a4,$a4,0x5000
    # Line 644
    lw	$v0,8640($a6)
    # Line 656
    and	$a4,$a4,$a7
    # Line 637
    lw	$t3,3664($a0)
    # Line 656
    li	$a7,-16
    ori	$a4,$a4,0x20
    and	$a4,$a4,$a7
    # Line 638
    lw	$a7,3700($a0)
    # Line 656
    ori	$a4,$a4,0x2
    # Line 657
    sw	$a4,8672($a5)
    sw	$a4,8672($a6)
    # Line 659
    li	$t8,255
    sw	$t8,16($sp)
    # Line 656
    sw	$a4,12($sp)
    # Line 661
    lui	$a3,0xe00
    # Line 659
    lw	$a4,16($sp)
    # Line 661
    or	$v1,$v0,$a3
    # Line 659
    lw	$a3,16($sp)
    sw	$a4,8680($a5)
    sw	$a3,8680($a6)
    # Line 662
    sw	$v1,8640($a5)
    # Line 679
    lui	$a2,0x302
    # Line 662
    sw	$v1,8640($a6)
    # Line 639
    addu	$t1,$t1,$t3
    # Line 670
    lui	$t8,0x40
    lw	$t9,32092($a0)
    # Line 644
    sw	$v0,4($sp)
    # Line 639
    addiu	$t1,$t1,-1
    # Line 670
    ori	$t8,$t8,0x7
    # Line 661
    sw	$v1,8($sp)
    # Line 683
    sll	$a4,$t3,0x6
    # Line 638
    addu	$a7,$a7,$t0
    # Line 670
    sd	$t8,80($sp)
    beq	$t8,$t9,.L0d94ab8c
    # Line 638
    addiu	$a7,$a7,-1
    # Line 671
    lw	$v0,32184($a0)
    lui	$t9,0x40
    ori	$t9,$t9,0x7
    sw	$t9,20($sp)
    sw	$t9,8216($v0)
    lw	$t9,32188($a0)
    lw	$t8,20($sp)
    sw	$t8,8216($t9)
    sw	$t8,32092($a0)
.L0d94ab8c:
    # Line 679
    lw	$v0,32096($a0)
    beq	$a2,$v0,.L0d94abb0
    # Line 682
    sll	$t9,$t0,0x6
    # Line 680
    lw	$a3,32184($a0)
    sw	$a2,8288($a3)
    lw	$v1,32188($a0)
    sw	$a2,24($sp)
    sw	$a2,8288($v1)
    sw	$a2,32096($a0)
.L0d94abb0:
    # Line 682
    sw	$t9,28($sp)
    lw	$t8,28($sp)
    # Line 683
    sw	$a4,32($sp)
    lw	$a3,32($sp)
    sw	$a3,8324($a5)
    # Line 684
    sll	$a2,$a7,0x6
    sw	$a2,36($sp)
    lw	$v1,36($sp)
    sw	$v1,8328($a5)
    # Line 685
    sll	$v0,$t1,0x6
    sw	$v0,40($sp)
    lw	$t9,40($sp)
    sw	$t9,8332($a5)
    # Line 682
    sw	$t8,8320($a5)
    # Line 686
    sd	$zero,48($sp)
    ldc1	$f4,48($sp)
    # Line 687
    sd	$zero,56($sp)
    ldc1	$f3,56($sp)
    # Line 686
    sdc1	$f4,8656($a5)
    # Line 687
    sdc1	$f3,8664($a5)
    # Line 689
    lw	$t8,76($a1)
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f2
    ldc1	$f3,1640($a0)
    cvt.d.l	$f2,$f2
    mul.d	$f2,$f2,$f3
    lwc1	$f3,_lit_42800000
    cvt.s.d	$f2,$f2
    mul.s	$f2,$f2,$f3
    cvt.d.s	$f2,$f2
    sdc1	$f2,64($sp)
    ldc1	$f1,64($sp)
    trunc.l.d	$f1,$f1
    sdc1	$f1,72($sp)
    ldc1	$f0,72($sp)
    sdc1	$f0,10696($a5)
    lw	$a2,32088($a0)
    lw	$a4,32092($a0)
    # Line 693
    lw	$t0,0($sp)
    # Line 689
    beq	$a4,$a2,.L0d94ac74
    # Line 693
    lw	$a7,0($sp)
    # Line 692
    lw	$a3,32184($a0)
    sw	$a2,8216($a3)
    lw	$a1,32188($a0)
    lw	$v1,32088($a0)
    sw	$v1,8216($a1)
    lw	$v0,32088($a0)
    sw	$v0,32092($a0)
.L0d94ac74:
    # Line 693
    sw	$t0,8672($a5)
    sw	$a7,8672($a6)
    # Line 694
    lw	$a4,4($sp)
    sw	$a4,8640($a5)
    sw	$a4,8640($a6)
    # Line 695
    sw	$t2,8680($a5)
    # Line 696
    addiu	$sp,$sp,96
    jr	$ra
    # Line 695
    sw	$t2,8680($a6)
.end Fix_zbuffer

# Function: __glCrmForceNonTagClear
# Declared: Line 700 (Source lines: 701-714)
# Address: 0x0d94aca0 - 0x0d94ad20 (Size: 128 bytes, Frame: 32)
.globl __glCrmForceNonTagClear
.ent __glCrmForceNonTagClear
__glCrmForceNonTagClear:
    # Line 701
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    lui	$at,0x10
    sd	$gp,24($sp)
    addiu	$at,$at,24812
    addu	$gp,$t9,$at
    # Line 703
    lw	$t9,108($a1)
    # Line 701
    sd	$s0,0($sp)
    sd	$s8,16($sp)
    move	$s8,$a1
    # Line 703
    nop
    # Line 701
    move	$s0,$a0
    # Line 703
    jalr	$t9
    lw	$a2,80($s8)
    # Line 710
    sw	$zero,80($s8)
    # Line 709
    sw	$zero,100($s8)
    # Line 712
    # lw $t9, -31800($gp) # &__glCrmPassDepthFunc
    # Line 708
    li	$v1,1
    sb	$v1,96($s8)
    # Line 706
    la	$v0,__glNop
    # Line 712
    move	$a0,$s0
    bal __glCrmPassDepthFunc
    # Line 706
    sw	$v0,108($s8)
    # Line 713
    # lw $t9, -31324($gp) # &__glCrmPassStencilMode
    ld	$s8,16($sp)
    jal	__glCrmPassStencilMode
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 714
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glCrmForceNonTagClear

# Function: __glCrmInitDepth
# Declared: Line 717 (Source lines: 718-773)
# Address: 0x0d94ad20 - 0x0d94ae78 (Size: 344 bytes, Frame: 32)
.globl __glCrmInitDepth
.ent __glCrmInitDepth
__glCrmInitDepth:
    # Line 718
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,24684
    sd	$gp,0($sp)
    addu	$gp,$t9,$at
    # Line 720
    # lw $t9, -26720($gp) # &__glInitBuffer
    # Line 718
    sd	$s7,8($sp)
    move	$s7,$a0
    sd	$s0,24($sp)
    move	$s0,$a1
    # Line 720
    move	$a1,$a0
    # Line 718
    sd	$ra,16($sp)
    # Line 720
    jal	__glInitBuffer
    move	$a0,$s0
    # Line 734
    lw	$a0,3244($s7)
    sw	$a0,12($s0)
    # Line 735
    lw	$v0,3248($s7)
    # Line 753
    lui	$t1,0xff00
    # Line 754
    sw	$t1,84($s0)
    # Line 750
    lui	$t0,0xff
    # Line 753
    sw	$t1,80($s0)
    # Line 750
    ori	$t0,$t0,0xffff
    # Line 751
    sw	$t0,72($s0)
    # Line 750
    sw	$t0,92($s0)
    # Line 748
    lui	$a7,0x7fff
    # Line 749
    sw	$zero,88($s0)
    # Line 748
    ori	$a7,$a7,0xff80
    sw	$a7,76($s0)
    # Line 739
    sw	$zero,64($s0)
    # Line 734
    la	$v1,sub_0d950000
    # Line 741
    la	$a1,sub_0d950000
    # Line 743
    la	$a3,sub_0d950000
    # Line 744
    la	$a4,sub_0d950000
    # Line 746
    la	$a6,sub_0d950000
    # Line 745
    la	$a5,sub_0d950000
    # Line 746
    addiu	$a6,$a6,-23856
    sw	$a6,128($s0)
    # Line 745
    addiu	$a5,$a5,-23824
    sw	$a5,124($s0)
    # Line 744
    addiu	$a4,$a4,-23840
    sw	$a4,116($s0)
    # Line 743
    addiu	$a3,$a3,-23808
    sw	$a3,120($s0)
    # Line 742
    la	$a2,sub_0d950000
    # Line 741
    addiu	$a1,$a1,-21904
    sw	$a1,108($s0)
    # Line 742
    addiu	$a2,$a2,-23872
    sw	$a2,112($s0)
    # Line 754
    lw	$a2,-21588($gp)
    # Line 735
    addu	$v0,$v0,$a0
    # Line 734
    addiu	$v1,$v1,-21920
    # Line 738
    sw	$v1,56($s0)
    # Line 735
    addiu	$v0,$v0,7
    # Line 737
    sw	$v1,52($s0)
    # Line 735
    sra	$v0,$v0,0x3
    # Line 754
    bltz	$a2,.L0d94ae5c
    # Line 735
    sw	$v0,24($s0)
.L0d94ae04:
    # Line 757
    beqz	$a2,.L0d94ae38
    # Line 773
    ld	$s7,8($sp)
    # Line 760
    la	$t2,sub_0d950000
    # Line 773
    ld	$gp,0($sp)
    # Line 762
    lui	$t3,0x100
    sw	$t3,100($s0)
    # Line 773
    ld	$ra,16($sp)
    # Line 761
    sb	$zero,96($s0)
    # Line 760
    addiu	$t2,$t2,-22624
    sw	$t2,120($s0)
    # Line 773
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94ae38:
    ld	$gp,0($sp)
    # Line 765
    sw	$zero,100($s0)
    # Line 773
    ld	$ra,16($sp)
    # Line 764
    li	$s7,1
    sb	$s7,96($s0)
    # Line 773
    ld	$s0,24($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d94ae5c:
    # Line 757
    # lw $t9, -22904($gp) # &getenv
    la	$a0,sub_0da40000
    jal	getenv
    addiu	$a0,$a0,7224
    sltu	$a2,$zero,$v0
    b	.L0d94ae04
    sw	$a2,-21588($gp)
.end __glCrmInitDepth

.rdata
_lit_42800000:
    .word 0x42800000

