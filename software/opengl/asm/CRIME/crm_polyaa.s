# Source: ../CRIME/crm_polyaa.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_polyaa.c
# Total Functions: 10

.text

# Function: FindLineEquation
# Declared: Line 112 (Source lines: 114-150)
# Address: 0x0d95e380 - 0x0d95e498 (Size: 280 bytes, Frame: 0)
.ent FindLineEquation
FindLineEquation:
    # Line 114
    lwc1	$f8,132($a1)
    lwc1	$f9,132($a2)
    c.lt.s	$f9,$f8
    move	$a5,$a1
    mov.s	$f4,$f9
    # Line 146
    li	$at,1
    # Line 124
    lwc1	$f7,128($a2)
    # Line 114
    bc1f	.L0d95e45c
    mov.s	$f5,$f8
    # Line 124
    mov.s	$f5,$f9
    lwc1	$f6,128($a1)
    move	$a5,$a2
    mov.s	$f4,$f8
.L0d95e3b4:
    # Line 141
    move	$v0,$zero
    # Line 132
    sub.s	$f12,$f4,$f5
    # Line 133
    sub.s	$f10,$f6,$f7
    # Line 132
    cvt.d.s	$f12,$f12
    # Line 133
    cvt.d.s	$f10,$f10
    # Line 134
    neg.d	$f13,$f12
    # Line 135
    cvt.s.d	$f11,$f10
    swc1	$f11,4($a0)
    # Line 134
    cvt.s.d	$f14,$f13
    swc1	$f14,0($a0)
    # Line 136
    lwc1	$f9,132($a5)
    lwc1	$f11,128($a5)
    cvt.d.s	$f9,$f9
    cvt.d.s	$f11,$f11
    mul.d	$f9,$f9,$f10
    msub.d	$f9,$f9,$f11,$f12
    cvt.s.d	$f9,$f9
    swc1	$f9,8($a0)
    # Line 138
    lwc1	$f8,132($a3)
    lwc1	$f9,128($a3)
    cvt.d.s	$f8,$f8
    lwc1	$f11,128($a5)
    cvt.d.s	$f9,$f9
    mul.d	$f8,$f8,$f10
    madd.d	$f8,$f8,$f9,$f13
    lwc1	$f9,132($a5)
    cvt.d.s	$f11,$f11
    madd.d	$f8,$f8,$f11,$f12
    cvt.d.s	$f9,$f9
    nmsub.d	$f8,$f8,$f9,$f10
    dmtc1	$zero,$f9
    c.eq.d $f8,$f9
    bc1t .L0d95e490
    nop
    # Line 141
    c.lt.d $f9,$f8
    bc1f .L0d95e450
    # Line 150
    li	$v0,1
    jr	$ra
    # Line 146
    sb	$at,12($a0)
.L0d95e450:
    # Line 148
    sb	$zero,12($a0)
    # Line 150
    jr	$ra
    nop
.L0d95e45c:
    # Line 126
    lwc1	$f10,128($a2)
    lwc1	$f11,128($a1)
    c.eq.s $f9,$f8
    mov.s	$f6,$f10
    bc1f .L0d95e3b4
    mov.s	$f7,$f11
    c.lt.s $f10,$f11
    movt.s	$f5,$f9,$fcc4
    movt.s	$f4,$f8,$fcc4
    movt	$a5,$a2,$fcc4
    movt.s	$f7,$f10,$fcc4
    b	.L0d95e3b4
    movt.s	$f6,$f11,$fcc4
.L0d95e490:
    # Line 150
    jr	$ra
    nop
.end FindLineEquation

# Function: FindPlaneEquation
# Declared: Line 160 (Source lines: 170-198)
# Address: 0x0d95e4a0 - 0x0d95e51c (Size: 124 bytes, Frame: 0)
.ent FindPlaneEquation
FindPlaneEquation:
    # Line 171
    lwc1	$f0,132($a1)
    # Line 170
    lwc1	$f4,128($a1)
    # Line 175
    lwc1	$f10,128($a3)
    # Line 188
    sub.s	$f5,$f18,$f16
    # Line 170
    lwc1	$f3,128($a2)
    # Line 188
    sub.s	$f7,$f17,$f16
    # Line 176
    lwc1	$f8,132($a3)
    # Line 171
    lwc1	$f9,132($a2)
    # Line 175
    sub.s	$f10,$f10,$f4
    # Line 170
    sub.s	$f3,$f3,$f4
    # Line 176
    sub.s	$f8,$f8,$f0
    # Line 188
    mul.s	$f6,$f7,$f10
    # Line 171
    sub.s	$f9,$f9,$f0
    # Line 188
    nmsub.s	$f6,$f6,$f5,$f3
    mul.s	$f3,$f3,$f8
    nmsub.s	$f3,$f3,$f9,$f10
    mul.s	$f5,$f5,$f9
    nmsub.s	$f5,$f5,$f7,$f8
    # Line 194
    div.s	$f1,$f5,$f3
    # Line 195
    div.s	$f2,$f6,$f3
    # Line 188
    mul.s	$f0,$f0,$f6
    madd.s	$f0,$f0,$f4,$f5
    madd.s	$f0,$f0,$f16,$f3
    # Line 197
    neg.s	$f0,$f0
    div.s	$f0,$f0,$f3
    # Line 195
    swc1	$f2,4($a0)
    # Line 196
    lwc1	$f3,_lit_3f800000
    # Line 194
    swc1	$f1,0($a0)
    # Line 196
    swc1	$f3,8($a0)
    # Line 198
    jr	$ra
    # Line 197
    swc1	$f0,12($a0)
.end FindPlaneEquation

# Function: FindPlaneEquation2
# Declared: Line 200 (Source lines: 211-239)
# Address: 0x0d95e520 - 0x0d95e5b8 (Size: 152 bytes, Frame: 0)
.ent FindPlaneEquation2
FindPlaneEquation2:
    # Line 217
    lwc1	$f7,132($a3)
    # Line 212
    lwc1	$f0,132($a1)
    lwc1	$f5,132($a2)
    # Line 211
    lwc1	$f4,128($a1)
    # Line 229
    sub.d	$f8,$f17,$f16
    # Line 211
    lwc1	$f3,128($a2)
    # Line 212
    sub.s	$f5,$f5,$f0
    # Line 216
    lwc1	$f11,128($a3)
    # Line 217
    sub.s	$f7,$f7,$f0
    # Line 211
    sub.s	$f3,$f3,$f4
    # Line 216
    sub.s	$f11,$f11,$f4
    # Line 229
    cvt.d.s	$f10,$f3
    mul.s	$f3,$f3,$f7
    cvt.d.s	$f6,$f11
    sub.d	$f9,$f18,$f16
    nmsub.s	$f3,$f3,$f5,$f11
    mul.d	$f6,$f8,$f6
    nmsub.d	$f6,$f6,$f9,$f10
    cvt.d.s	$f3,$f3
    # Line 236
    div.d	$f2,$f6,$f3
    # Line 229
    cvt.d.s	$f5,$f5
    cvt.d.s	$f7,$f7
    mul.d	$f5,$f5,$f9
    nmsub.d	$f5,$f5,$f7,$f8
    # Line 235
    div.d	$f1,$f5,$f3
    # Line 229
    cvt.d.s	$f0,$f0
    cvt.d.s	$f4,$f4
    mul.d	$f0,$f0,$f6
    madd.d	$f0,$f0,$f4,$f5
    madd.d	$f0,$f0,$f16,$f3
    # Line 238
    neg.d	$f0,$f0
    div.d	$f0,$f0,$f3
    # Line 237
    ldc1	$f3,_lit8_3ff0000000000000
    sdc1	$f3,16($a0)
    # Line 236
    sdc1	$f2,8($a0)
    # Line 235
    sdc1	$f1,0($a0)
    # Line 239
    jr	$ra
    # Line 238
    sdc1	$f0,24($a0)
.end FindPlaneEquation2

# Function: FindP
# Declared: Line 244 (Source lines: 246-246)
# Address: 0x0d95e5c0 - 0x0d95e5e0 (Size: 32 bytes, Frame: 0)
.ent FindP
FindP:
    # Line 246
    lwc1	$f1,4($a0)
    lwc1	$f2,0($a0)
    mul.s	$f1,$f1,$f14
    madd.s	$f1,$f1,$f2,$f13
    lwc1	$f0,12($a0)
    add.s	$f0,$f0,$f1
    jr	$ra
    neg.s	$f0,$f0
.end FindP

# Function: FindP2
# Declared: Line 249 (Source lines: 251-251)
# Address: 0x0d95e5e0 - 0x0d95e608 (Size: 40 bytes, Frame: 0)
.ent FindP2
FindP2:
    # Line 251
    ldc1	$f4,8($a0)
    cvt.d.s	$f1,$f14
    ldc1	$f3,0($a0)
    cvt.d.s	$f2,$f13
    mul.d	$f1,$f1,$f4
    madd.d	$f1,$f1,$f2,$f3
    ldc1	$f0,24($a0)
    add.d	$f0,$f0,$f1
    jr	$ra
    neg.d	$f0,$f0
.end FindP2

# Function: ComputeCoverageStuff
# Declared: Line 278 (Source lines: 283-292)
# Address: 0x0d95e610 - 0x0d95e66c (Size: 92 bytes, Frame: 0)
.ent ComputeCoverageStuff
ComputeCoverageStuff:
    # Line 283
    mtc1	$a1,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f0,_lit_3f800000
    div.s	$f3,$f0,$f3
    # Line 289
    mult	$a1,$a1
    mflo	$at
    # Line 290
    mtc1	$at,$f1
    cvt.s.w	$f1,$f1
    # Line 285
    lwc1	$f4,_lit_3f000000
    # Line 290
    div.s	$f0,$f0,$f1
    # Line 285
    lwc1	$f1,_lit_bf000000
    # Line 286
    nmsub.s	$f2,$f4,$f3,$f4
    # Line 291
    sw	$a1,8($a0)
    # Line 285
    madd.s	$f1,$f1,$f3,$f4
    # Line 289
    sw	$at,12($a0)
    # Line 284
    swc1	$f3,4($a0)
    # Line 283
    swc1	$f3,0($a0)
    # Line 288
    swc1	$f2,36($a0)
    # Line 287
    swc1	$f1,32($a0)
    # Line 286
    swc1	$f2,28($a0)
    # Line 285
    swc1	$f1,24($a0)
    # Line 292
    jr	$ra
    # Line 290
    swc1	$f0,16($a0)
.end ComputeCoverageStuff

# Function: Coverage
# Declared: Line 297 (Source lines: 305-362)
# Address: 0x0d95e670 - 0x0d95e914 (Size: 676 bytes, Frame: 0)
.ent Coverage
Coverage:
    # Line 308
    lwc1	$f4,0($a1)
    lwc1	$f10,24($a3)
    # Line 309
    lwc1	$f6,0($a2)
    lwc1	$f15,32($a3)
    lbu	$at,20($a3)
    add.s	$f15,$f15,$f6
    # Line 305
    lw	$a6,8($a3)
    # Line 309
    beqz	$at,.L0d95e78c
    # Line 308
    add.s	$f10,$f10,$f4
    # Line 318
    lwc1	$f9,28($a3)
    # Line 319
    lwc1	$f11,36($a3)
    # Line 320
    lwc1	$f12,8($a0)
    lwc1	$f8,12($a0)
    # Line 318
    add.s	$f9,$f9,$f4
    # Line 319
    add.s	$f11,$f11,$f6
    # Line 320
    mul.s	$f12,$f9,$f12
    madd.s	$f16,$f12,$f11,$f8
    lwc1	$f7,16($a0)
    mtc1	$zero,$f5
    add.s	$f16,$f7,$f16
    c.lt.s	$f5,$f16
    lbu	$a7,20($a0)
    li	$v0,1
    movf	$v0,$zero,$fcc0
    bne	$a7,$v0,.L0d95e78c
    nop
    lwc1	$f13,24($a0)
    lwc1	$f4,28($a0)
    mul.s	$f13,$f9,$f13
    madd.s	$f14,$f13,$f11,$f4
    lwc1	$f6,32($a0)
    add.s	$f14,$f6,$f14
    c.lt.s $f5,$f14
    lbu	$a5,36($a0)
    li	$v1,1
    movf	$v1,$zero,$fcc1
    bne	$a5,$v1,.L0d95e78c
    nop
    lwc1	$f14,40($a0)
    lwc1	$f16,44($a0)
    mul.s	$f14,$f9,$f14
    madd.s	$f18,$f14,$f11,$f16
    lwc1	$f17,48($a0)
    add.s	$f18,$f17,$f18
    c.lt.s $f5,$f18
    lbu	$t0,52($a0)
    li	$a4,1
    movf	$a4,$zero,$fcc2
    bne	$t0,$a4,.L0d95e78c
    nop
    madd.s	$f18,$f12,$f15,$f8
    add.s	$f18,$f7,$f18
    c.lt.s $f5,$f18
    li	$t1,1
    movf	$t1,$zero,$fcc3
    bne	$a7,$t1,.L0d95e78c
    nop
    madd.s	$f19,$f13,$f15,$f4
    add.s	$f19,$f6,$f19
    c.lt.s $f5,$f19
    li	$t2,1
    movf	$t2,$zero,$fcc4
    bne	$a5,$t2,.L0d95e78c
    nop
    madd.s	$f21,$f14,$f15,$f16
    add.s	$f21,$f17,$f21
    c.lt.s $f5,$f21
    li	$t3,1
    movf	$t3,$zero,$fcc5
    beq	$t0,$t3,.L0d95e8f0
    nop
.L0d95e78c:
    # Line 321
    blez	$a6,.L0d95e8d8
    # Line 358
    move	$t0,$zero
    # Line 321
    lwc1	$f17,0($a3)
    lbu	$a7,20($a0)
    lwc1	$f8,12($a0)
    lwc1	$f13,_lit_497423f0
    lwc1	$f14,_lit_bf800000
    lwc1	$f16,8($a0)
    mtc1	$zero,$f5
    move	$t0,$zero
    lwc1	$f7,16($a0)
    mov.s	$f11,$f13
    move	$t1,$zero
    lwc1	$f9,4($a3)
    b	.L0d95e908
    mov.s	$f12,$f14
    nop
.L0d95e7d0:
    # Line 335
    mov.s	$f4,$f15
    # Line 334
    beq	$a6,$t1,.L0d95e898
    # Line 346
    add.s	$f10,$f17,$f10
    # Line 335
    move	$a5,$zero
.L0d95e7e0:
    # Line 337
    li	$t8,1
    # Line 334
    addiu	$t1,$t1,1
    b	.L0d95e900
    # Line 335
    mul.s	$f6,$f10,$f16
.L0d95e7f0:
    # Line 337
    li	$t8,1
.L0d95e7f4:
    # Line 336
    beq	$a6,$a5,.L0d95e7d0
    # Line 344
    add.s	$f4,$f9,$f4
    # Line 337
    madd.s	$f23,$f6,$f4,$f8
.L0d95e800:
    add.s	$f23,$f7,$f23
    c.lt.s $f5,$f23
    movf	$t8,$zero,$fcc6
    li	$at,1
    bne	$a7,$t8,.L0d95e7f0
    # Line 336
    addiu	$a5,$a5,1
    # Line 337
    lwc1	$f27,28($a0)
    lwc1	$f29,24($a0)
    mul.s	$f27,$f27,$f4
    madd.s	$f27,$f27,$f29,$f10
    lwc1	$f25,32($a0)
    add.s	$f25,$f25,$f27
    lwc1	$f0,40($a0)
    c.lt.s $f5,$f25
    lbu	$t9,36($a0)
    lbu	$v0,52($a0)
    movf	$at,$zero,$fcc7
    lwc1	$f31,44($a0)
    bne	$t9,$at,.L0d95e7f0
    lwc1	$f29,48($a0)
    li	$v1,1
    mul.s	$f31,$f31,$f4
    madd.s	$f31,$f31,$f0,$f10
    add.s	$f29,$f29,$f31
    c.lt.s	$f5,$f29
    movf	$v1,$zero,$fcc0
    bne	$v0,$v1,.L0d95e7f4
    li	$t8,1
    # Line 341
    c.lt.s $f14,$f4
    # Line 340
    c.lt.s $f4,$f13
    # Line 339
    c.lt.s $f12,$f10
    # Line 341
    movt.s	$f14,$f4,$fcc4
    # Line 338
    c.lt.s $f10,$f11
    # Line 340
    movt.s	$f13,$f4,$fcc3
    # Line 339
    movt.s	$f12,$f10,$fcc2
    # Line 342
    addiu	$t0,$t0,1
    b	.L0d95e7f0
    # Line 338
    movt.s	$f11,$f10,$fcc1
.L0d95e898:
    # Line 334
    beqz	$t0,.L0d95e8dc
    # Line 362
    mtc1	$t0,$f0
    # Line 353
    lwc1	$f0,_lit_3f000000
    add.s	$f1,$f12,$f11
    # Line 354
    add.s	$f2,$f14,$f13
    # Line 353
    mul.s	$f1,$f0,$f1
    # Line 354
    mul.s	$f0,$f0,$f2
    # Line 353
    swc1	$f1,0($a1)
    # Line 354
    swc1	$f0,0($a2)
    lw	$a0,12($a3)
    bne	$a0,$t0,.L0d95e8dc
    # Line 362
    mtc1	$t0,$f0
    # Line 358
    lwc1	$f0,_lit_3f800000
    # Line 357
    li	$a1,1
    # Line 362
    jr	$ra
    # Line 357
    sb	$a1,20($a3)
.L0d95e8d8:
    # Line 362
    mtc1	$t0,$f0
.L0d95e8dc:
    cvt.s.w	$f0,$f0
    lwc1	$f1,16($a3)
    # Line 361
    sb	$zero,20($a3)
    # Line 362
    jr	$ra
    mul.s	$f0,$f0,$f1
.L0d95e8f0:
    jr	$ra
    # Line 321
    lwc1	$f0,_lit_3f800000
    nop
    nop
.L0d95e900:
    b	.L0d95e800
    # Line 337
    madd.s	$f23,$f6,$f4,$f8
.L0d95e908:
    # Line 335
    mov.s	$f4,$f15
    b	.L0d95e7e0
    move	$a5,$zero
.end Coverage

# Function: FillAASubTriangle
# Declared: Line 518 (Source lines: 521-891)
# Address: 0x0d95e920 - 0x0d960f8c (Size: 9836 bytes, Frame: 0)
.ent FillAASubTriangle
FillAASubTriangle:
    # Line 521
    lui	$at,0x1
    ori	$at,$at,0x640
    # Line 533
    lw	$t9,32100($a0)
    # Line 521
    subu	$sp,$sp,$at
    # Line 533
    sw	$t9,8($sp)
    sdc1	$f30,1224($sp)
    sdc1	$f28,1216($sp)
    sdc1	$f22,1208($sp)
    sdc1	$f26,1200($sp)
    sdc1	$f20,1192($sp)
    sd	$s4,1272($sp)
    sd	$s0,1264($sp)
    sd	$s7,1256($sp)
    sd	$ra,1248($sp)
    sd	$s5,1240($sp)
    sd	$s2,1232($sp)
    # Line 521
    sdc1	$f24,600($sp)
    sd	$s6,720($sp)
    sd	$a2,880($sp)
    sd	$a1,1088($sp)
    sd	$a0,1160($sp)
    sd	$s3,728($sp)
    # Line 534
    lw	$s3,32184($a0)
    # Line 521
    sd	$s1,744($sp)
    # Line 539
    lw	$s1,376($a3)
    # Line 521
    move	$v1,$s8
    sd	$v1,736($sp)
    # Line 545
    lwc1	$f24,3540($s1)
    # Line 521
    addu	$s8,$sp,$at
    # Line 534
    lw	$at,32188($a0)
    sd	$at,768($sp)
    # Line 551
    lbu	$v0,4848($s1)
    # Line 563
    lw	$t1,30136($s1)
    # Line 562
    lw	$t0,30140($s1)
    # Line 555
    lw	$v1,30148($s1)
    # Line 556
    lw	$a0,30152($s1)
    # Line 557
    lw	$a1,30168($s1)
    # Line 558
    lw	$a2,30172($s1)
    # Line 521
    move	$s6,$a3
    # Line 559
    lw	$a3,29704($s1)
    # Line 560
    lw	$a6,29712($s1)
    # Line 564
    lw	$t2,30164($s1)
    # Line 565
    lw	$t3,30160($s1)
    # Line 566
    lw	$t8,30156($s1)
    sd	$t8,864($sp)
    # Line 565
    sd	$t3,848($sp)
    # Line 564
    sd	$t2,856($sp)
    # Line 560
    sd	$a6,776($sp)
    # Line 559
    sd	$a3,784($sp)
    # Line 558
    sd	$a2,952($sp)
    # Line 557
    sd	$a1,1000($sp)
    # Line 556
    sd	$a0,968($sp)
    # Line 555
    sd	$v1,1032($sp)
    # Line 562
    sd	$t0,760($sp)
    # Line 553
    lw	$t0,3664($s1)
    # Line 563
    sd	$t1,832($sp)
    # Line 552
    lw	$t1,3704($s1)
    # Line 561
    lw	$a7,30144($s1)
    sd	$a7,872($sp)
    # Line 567
    lw	$a7,30436($s1)
    # Line 546
    lwc1	$f0,3544($s1)
    # Line 551
    sd	$v0,1096($sp)
    # Line 567
    andi	$at,$a7,0x2
    # Line 546
    sdc1	$f0,688($sp)
    # Line 567
    beqz	$at,.L0d960ef0
    sd	$at,1152($sp)
.L0d95ea28:
    # Line 574
    lui	$a0,0xffff
    # Line 576
    lui	$a3,0xffff
    andi	$a1,$a7,0x20
    sd	$a1,920($sp)
    # Line 575
    lui	$a2,0xffff
    # Line 576
    addu	$a3,$a3,$s8
    # Line 575
    addu	$a2,$a2,$s8
    # Line 576
    addiu	$a3,$a3,-304
    sw	$a3,30472($s1)
    # Line 574
    addu	$a0,$a0,$s8
    # Line 575
    addiu	$a2,$a2,-48
    sw	$a2,30468($s1)
    # Line 574
    addiu	$a0,$a0,32720
    # Line 576
    beqz	$a1,.L0d95ea9c
    # Line 574
    sw	$a0,30464($s1)
    # Line 578
    lw	$t2,31108($s1)
    ld	$ra,1088($sp)
    lw	$at,3664($t2)
    lw	$t9,31136($s1)
    subu	$ra,$ra,$at
    mult	$t9,$ra
    lw	$t3,31124($s1)
    ld	$a6,1032($sp)
    mflo	$t8
    lw	$t2,3660($t2)
    addu	$t3,$t3,$t8
    addu	$a6,$a6,$t3
    subu	$a6,$a6,$t2
    sw	$a6,30452($s1)
.L0d95ea9c:
    andi	$v0,$a7,0x4
    beqz	$v0,.L0d95eaec
    sd	$v0,1168($sp)
    # Line 583
    lw	$a0,31228($s1)
    ld	$a3,1088($sp)
    lw	$a6,3664($a0)
    lw	$a2,31256($s1)
    subu	$a3,$a3,$a6
    mult	$a2,$a3
    lw	$v1,31244($s1)
    mflo	$a1
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    ld	$a1,1032($sp)
    lw	$a0,3660($a0)
    sll	$a1,$a1,0x2
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a1
    subu	$v1,$v1,$a0
    sw	$v1,30440($s1)
.L0d95eaec:
    # Line 587
    andi	$t2,$a7,0x8
    beqz	$t2,.L0d95eb0c
    sd	$t2,1144($sp)
    ld	$t3,1160($sp)
    lw	$t3,32088($t3)
    sll	$t3,$t3,0x10
    bltz	$t3,.L0d960f5c
    # Line 589
    lui	$t9,0xff
.L0d95eb0c:
    lw	$t9,1912($s1)
    li	$t8,4354
    beq	$t8,$t9,.L0d960f00
.L0d95eb18:
    # Line 596
    ld	$v0,880($sp)
    ld	$at,1088($sp)
    slt	$at,$at,$v0
    lw	$ra,11760($s1)
    beqz	$at,.L0d960ddc
    sw	$ra,30480($s1)
    addiu	$t3,$s6,96
    sd	$t3,1072($sp)
    addiu	$t2,$s6,80
    sd	$t2,1064($sp)
    addiu	$a6,$s6,112
    sd	$a6,1056($sp)
    andi	$a3,$a7,0x2008
    sd	$a3,976($sp)
    addiu	$v0,$s6,16
    sd	$v0,928($sp)
    addiu	$v0,$s6,272
    sd	$v0,1184($sp)
    addiu	$at,$s6,64
    sd	$at,1008($sp)
    addiu	$at,$s6,336
    sd	$at,1176($sp)
    andi	$a2,$a7,0x4000
    sd	$a2,912($sp)
    addiu	$a2,$s6,256
    sd	$a2,1024($sp)
    addiu	$s7,$sp,44
    sd	$s7,1048($sp)
    andi	$s7,$a7,0x1
    sd	$s7,840($sp)
    addiu	$ra,$s6,224
    sd	$ra,808($sp)
    sra	$ra,$a5,0x1
    addiu	$t9,$s6,192
    sd	$t9,800($sp)
    sra	$t9,$a4,0x2
    or	$t9,$t9,$ra
    sd	$t9,752($sp)
    addiu	$s5,$s6,144
    sd	$s5,1080($sp)
    la	$s5,sub_0d960000
    addiu	$s0,$s6,128
    sd	$s0,1040($sp)
    la	$s0,sub_0d960000
    lwc1	$f1,88($sp)
    lwc1	$f2,92($sp)
    lwc1	$f3,100($sp)
    lwc1	$f4,16($sp)
    lwc1	$f5,104($sp)
    addiu	$t8,$s6,160
    sd	$t8,792($sp)
    lui	$t8,0x4
    and	$t8,$a7,$t8
    sd	$t8,904($sp)
    lw	$t8,96($sp)
    sdc1	$f5,680($sp)
    sdc1	$f4,608($sp)
    sdc1	$f3,632($sp)
    sd	$t8,896($sp)
    sdc1	$f2,656($sp)
    sdc1	$f1,696($sp)
    addiu	$a0,$s6,48
    sd	$a0,944($sp)
    andi	$a0,$a7,0x10
    sd	$a0,1136($sp)
    ld	$a0,1088($sp)
    addiu	$v1,$s6,32
    sd	$v1,936($sp)
    ld	$v1,1032($sp)
    ld	$a1,1000($sp)
    addiu	$v1,$v1,1
    sd	$v1,984($sp)
    addiu	$a1,$a1,-1
    sd	$a1,960($sp)
    mtc1	$zero,$f22
    andi	$a1,$a7,0x1000
    sd	$a1,1016($sp)
    andi	$s7,$s7,0xff
    li	$a1,1
    lw	$v1,8($sp)
    addiu	$s0,$s0,-6720
    sd	$v1,888($sp)
    dsll32	$a1,$a1,0xb
    subu	$a0,$a0,$t0
    dsrav	$a2,$a1,$a5
    sd	$a2,816($sp)
    subu	$a0,$t1,$a0
    dsrav	$a1,$a1,$a4
    sd	$a1,824($sp)
    addiu	$a0,$a0,-1
    sd	$a0,992($sp)
    srl	$v1,$v1,0x18
    addiu	$s5,$s5,-6544
    b	.L0d95ed00
    sd	$v1,1104($sp)
    nop
    nop
    nop
.L0d95eca0:
    # Line 871
    cvt.s.w	$f6,$f6
    div.s	$f6,$f6,$f0
    add.s	$f6,$f5,$f6
    swc1	$f6,30500($s1)
.L0d95ecb0:
    ld	$a4,1168($sp)
    beqz	$a4,.L0d95ecd0
    nop
.L0d95ecbc:
    # Line 875
    lw	$a6,30440($s1)
    # Line 877
    lw	$a5,30448($s1)
    # Line 875
    subu	$a6,$a6,$a7
    # Line 877
    addu	$a5,$a5,$a6
    sw	$a5,30440($s1)
.L0d95ecd0:
    # Line 880
    beqz	$t0,.L0d9606b0
    nop
    # Line 883
    cvt.s.w	$f9,$f9
.L0d95ecdc:
    lwc1	$f10,30432($s1)
    lwc1	$f8,30420($s1)
    nmsub.s	$f8,$f8,$f9,$f10
    lwc1	$f7,30244($s1)
    add.s	$f7,$f7,$f8
    swc1	$f7,30244($s1)
.L0d95ecf4:
    ld	$t2,880($sp)
.L0d95ecf8:
    ld	$t1,1088($sp)
    beq	$t1,$t2,.L0d960ddc
.L0d95ed00:
    # Line 626
    ld	$t3,1088($sp)
    mtc1	$t3,$f26
    cvt.s.w	$f26,$f26
    ld	$s4,992($sp)
    ld	$s2,1032($sp)
    andi	$t3,$t3,0x1f
    sd	$t3,1120($sp)
    andi	$s4,$s4,0x1f
    sd	$s4,1128($sp)
    move	$s4,$zero
    b	.L0d95efac
    add.s	$f26,$f26,$f24
.L0d95ed30:
    # Line 633
    lwc1	$f29,108($sp)
    trunc.w.s	$f29,$f29
    mfc1	$v0,$f29
    sll	$v0,$v0,0x6
    sw	$v0,124($sp)
    lw	$at,124($sp)
    sw	$at,8328($s3)
    lwc1	$f27,112($sp)
    trunc.w.s	$f27,$f27
    mfc1	$ra,$f27
    ld	$t9,1152($sp)
    sll	$ra,$ra,0x6
    sw	$ra,128($sp)
    lw	$t8,128($sp)
    beqz	$t9,.L0d95f080
    sw	$t8,8332($s3)
    move	$t9,$s0
.L0d95ed74:
    lwc1	$f14,112($sp)
    move	$a0,$s6
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    beqz	$s7,.L0d95edd4
    swc1	$f0,44($sp)
    ld	$a0,928($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,936($sp)
    bal __glCrmRenderPointDepthRGBA
    swc1	$f0,48($sp)
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,944($sp)
    bal __glCrmRenderPointDepthRGBA
    swc1	$f0,52($sp)
    swc1	$f0,56($sp)
.L0d95edd4:
    ld	$v1,1168($sp)
    beqz	$v1,.L0d95ee1c
    ld	$a0,1144($sp)
    ld	$a0,1008($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lwc1	$f1,_lit_42800000
    mul.s	$f1,$f1,$f0
    cvt.d.s	$f1,$f1
    sdc1	$f1,136($sp)
    ldc1	$f0,136($sp)
    trunc.l.d	$f0,$f0
    sdc1	$f0,144($sp)
    ldc1	$f31,144($sp)
    sdc1	$f31,8648($s3)
    ld	$a0,1144($sp)
.L0d95ee1c:
    lwc1	$f13,108($sp)
    lwc1	$f14,112($sp)
    beqz	$a0,.L0d95eed0
    ld	$a1,1160($sp)
    lw	$a1,32088($a1)
    sll	$a1,$a1,0x10
    bltz	$a1,.L0d95f954
    move	$t9,$s0
    bal __glCrmRenderPointDepthRGBA
    ld	$a0,1056($sp)
    lwc1	$f20,3544($s1)
    lwc1	$f14,112($sp)
    move	$t9,$s0
    lwc1	$f13,108($sp)
    ld	$a0,1064($sp)
    bal __glCrmRenderPointDepthRGBA
    div.s	$f20,$f20,$f0
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,1072($sp)
    mul.s	$f21,$f0,$f20
    bal __glCrmRenderPointDepthRGBA
    sdc1	$f21,704($sp)
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,1040($sp)
    mul.s	$f23,$f0,$f20
    bal __glCrmRenderPointDepthRGBA
    sdc1	$f23,712($sp)
    lwc1	$f14,112($sp)
    move	$t9,$s0
    lwc1	$f13,108($sp)
    ld	$a0,1080($sp)
    bal __glCrmRenderPointDepthRGBA
    mul.s	$f30,$f0,$f20
    lw	$t9,12524($s1)
    ld	$a1,1048($sp)
    ldc1	$f14,704($sp)
    mov.s	$f16,$f30
    move	$a0,$s1
    ldc1	$f15,712($sp)
    jalr	$t9
    mul.s	$f17,$f0,$f20
.L0d95eed0:
    ld	$a2,1016($sp)
.L0d95eed4:
    li	$a3,8200
    bnez	$a2,.L0d95eee4
    ld	$a4,976($sp)
    bne	$a3,$a4,.L0d95ef38
.L0d95eee4:
    ld	$a0,1024($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lw	$a5,1912($s1)
    li	$a2,4354
    beq	$a2,$a5,.L0d95fae0
    mov.s	$f5,$f0
    sdc1	$f0,696($sp)
.L0d95ef0c:
    ldc1	$f29,696($sp)
    ldc1	$f31,_lit8_406fe00000000000
    cvt.d.s	$f29,$f29
    mul.d	$f29,$f29,$f31
    lwc1	$f27,_lit_45800000
    cvt.s.d	$f29,$f29
    mul.s	$f27,$f27,$f29
    trunc.w.s	$f27,$f27
    swc1	$f27,224($sp)
    lw	$a6,224($sp)
    sw	$a6,8568($s3)
.L0d95ef38:
    beqz	$s7,.L0d9603e0
    nop	# was lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    lwc1	$f2,48($sp)
    lwc1	$f3,44($sp)
    lwc1	$f31,56($sp)
    lwc1	$f1,52($sp)
    trunc.w.s	$f2,$f2
    trunc.w.s	$f3,$f3
    mul.s	$f31,$f31,$f28
    mfc1	$t1,$f2
    trunc.w.s	$f1,$f1
    mfc1	$t3,$f3
    trunc.w.s	$f0,$f31
    sll	$t1,$t1,0x10
    mfc1	$t2,$f1
    sll	$t3,$t3,0x18
    mfc1	$t0,$f0
    sll	$t2,$t2,0x8
    swc1	$f31,56($sp)
    or	$t1,$t1,$t2
    or	$t0,$t0,$t3
    or	$t0,$t0,$t1
    sw	$t0,228($sp)
    lw	$a7,228($sp)
    sw	$a7,10448($s3)
.L0d95ef9c:
    li	$a0,1
    sltiu	$t8,$s4,1
    movn	$s4,$a0,$t8
.L0d95efa8:
    # Line 626
    addiu	$s2,$s2,-1
.L0d95efac:
    # Line 627
    mtc1	$s2,$f4
    cvt.s.w	$f4,$f4
    # Line 630
    ld	$a0,1184($sp)
    ld	$a3,1176($sp)
    # Line 628
    swc1	$f26,112($sp)
    # Line 630
    move	$t9,$s5
    # Line 627
    add.s	$f4,$f4,$f24
    # Line 630
    addiu	$a2,$sp,112
    # Line 627
    swc1	$f4,108($sp)
    # Line 630
    addiu	$a1,$sp,108
    bal __glCrmRenderPointDepthRGBA
    # Line 629
    sb	$zero,356($s6)
    ld	$v0,1120($sp)
    # Line 631
    c.eq.s	$f0,$f22
    # Line 633
    ld	$ra,1128($sp)
    ld	$at,1096($sp)
    li	$a0,1
    # Line 631
    ld	$t9,1136($sp)
    bc1t	.L0d95f0b0
    # Line 630
    mov.s	$f28,$f0
    # Line 631
    beqz	$t9,.L0d95f02c
    movz	$ra,$v0,$at
    # Line 633
    li	$at,31
    sll	$ra,$ra,0x2
    and	$v0,$s2,$at
    addu	$ra,$s1,$ra
    subu	$at,$at,$v0
    lw	$ra,30008($ra)
    sllv	$at,$a0,$at
    and	$ra,$ra,$at
    beqz	$ra,.L0d95efa8
    nop
.L0d95f02c:
    beqz	$s4,.L0d95f920
.L0d95f030:
    lwc1	$f6,108($sp)
    trunc.w.s	$f6,$f6
    mfc1	$a2,$f6
    sll	$a2,$a2,0x6
    sw	$a2,116($sp)
    lw	$a1,116($sp)
    sw	$a1,8320($s3)
    lwc1	$f5,112($sp)
    trunc.w.s	$f5,$f5
    ld	$a3,1152($sp)
    mfc1	$a0,$f5
    ld	$v1,1104($sp)
    li	$v0,3
    sll	$a0,$a0,0x6
    sw	$a0,120($sp)
    lw	$at,120($sp)
    beq	$v0,$v1,.L0d95ed30
    sw	$at,8324($s3)
    bnez	$a3,.L0d95ed74
    move	$t9,$s0
.L0d95f080:
    lw	$a4,12($sp)
    lwc1	$f7,0($a4)
    beqz	$s7,.L0d95edd4
    swc1	$f7,44($sp)
    lw	$a5,12($sp)
    lwc1	$f10,4($a5)
    swc1	$f10,48($sp)
    lwc1	$f9,8($a5)
    swc1	$f9,52($sp)
    lwc1	$f8,12($a5)
    b	.L0d95edd4
    swc1	$f8,56($sp)
.L0d95f0b0:
    # Line 635
    ld	$s2,984($sp)
.L0d95f0b4:
    # Line 636
    mtc1	$s2,$f11
    cvt.s.w	$f11,$f11
    sd	$s2,1112($sp)
    # Line 639
    ld	$a0,1184($sp)
    ld	$a3,1176($sp)
    # Line 637
    swc1	$f26,112($sp)
    # Line 639
    move	$t9,$s5
    # Line 636
    add.s	$f11,$f11,$f24
    # Line 639
    addiu	$a2,$sp,112
    # Line 636
    swc1	$f11,108($sp)
    # Line 639
    addiu	$a1,$sp,108
    bal __glCrmRenderPointDepthRGBA
    # Line 638
    sb	$zero,356($s6)
    ld	$t2,1120($sp)
    # Line 639
    c.eq.s $f0,$f22
    # Line 650
    ld	$t0,1128($sp)
    ld	$t1,1096($sp)
    ld	$at,1152($sp)
    # Line 639
    bc1t .L0d95f450
    mov.s	$f20,$f0
    # Line 655
    ldc1	$f12,688($sp)
    c.eq.s $f0,$f12
    bc1t .L0d95fac0
    # Line 670
    ld	$a7,1136($sp)
    beqz	$a7,.L0d95f14c
    movz	$t0,$t2,$t1
    # Line 650
    ld	$t3,1112($sp)
    li	$t2,31
    sll	$t0,$t0,0x2
    addu	$t0,$s1,$t0
    and	$t3,$t3,$t2
    li	$t1,1
    lw	$t0,30008($t0)
    subu	$t2,$t2,$t3
    sllv	$t1,$t1,$t2
    and	$t0,$t0,$t1
    beqz	$t0,.L0d95f3d8
    # Line 635
    ld	$s2,1112($sp)
.L0d95f14c:
    # Line 650
    beqz	$s4,.L0d95fb28
.L0d95f150:
    lwc1	$f14,108($sp)
    trunc.w.s	$f14,$f14
    mfc1	$ra,$f14
    sll	$ra,$ra,0x6
    sw	$ra,476($sp)
    lw	$t9,476($sp)
    sw	$t9,8320($s3)
    lwc1	$f13,112($sp)
    trunc.w.s	$f13,$f13
    mfc1	$t8,$f13
    ld	$t3,1104($sp)
    li	$t2,3
    sll	$t8,$t8,0x6
    sw	$t8,480($sp)
    lw	$t1,480($sp)
    beq	$t2,$t3,.L0d95f3e0
    sw	$t1,8324($s3)
    beqz	$at,.L0d95f424
    lw	$v1,12($sp)
.L0d95f19c:
    move	$t9,$s0
    lwc1	$f14,112($sp)
    move	$a0,$s6
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    beqz	$s7,.L0d95f200
    swc1	$f0,44($sp)
    ld	$a0,928($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,936($sp)
    bal __glCrmRenderPointDepthRGBA
    swc1	$f0,48($sp)
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,944($sp)
    bal __glCrmRenderPointDepthRGBA
    swc1	$f0,52($sp)
    swc1	$f0,56($sp)
.L0d95f200:
    ld	$v0,1168($sp)
    beqz	$v0,.L0d95f248
    ld	$v1,1144($sp)
    ld	$a0,1008($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lwc1	$f17,_lit_42800000
    mul.s	$f17,$f17,$f0
    cvt.d.s	$f17,$f17
    sdc1	$f17,496($sp)
    ldc1	$f16,496($sp)
    trunc.l.d	$f16,$f16
    sdc1	$f16,504($sp)
    ldc1	$f15,504($sp)
    sdc1	$f15,8648($s3)
    ld	$v1,1144($sp)
.L0d95f248:
    lwc1	$f13,108($sp)
    lwc1	$f14,112($sp)
    beqz	$v1,.L0d95f2fc
    ld	$a0,1160($sp)
    lw	$a0,32088($a0)
    sll	$a0,$a0,0x10
    bltz	$a0,.L0d95fbd0
    move	$t9,$s0
    bal __glCrmRenderPointDepthRGBA
    ld	$a0,1056($sp)
    lwc1	$f28,3544($s1)
    lwc1	$f14,112($sp)
    move	$t9,$s0
    lwc1	$f13,108($sp)
    ld	$a0,1064($sp)
    bal __glCrmRenderPointDepthRGBA
    div.s	$f28,$f28,$f0
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,1072($sp)
    mul.s	$f29,$f0,$f28
    bal __glCrmRenderPointDepthRGBA
    sdc1	$f29,672($sp)
    lwc1	$f14,112($sp)
    move	$t9,$s0
    lwc1	$f13,108($sp)
    ld	$a0,1040($sp)
    bal __glCrmRenderPointDepthRGBA
    mul.s	$f30,$f0,$f28
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,1080($sp)
    mul.s	$f31,$f0,$f28
    bal __glCrmRenderPointDepthRGBA
    sdc1	$f31,664($sp)
    lw	$t9,12524($s1)
    ld	$a1,1048($sp)
    ldc1	$f14,672($sp)
    mov.s	$f15,$f30
    move	$a0,$s1
    ldc1	$f16,664($sp)
    jal	__glBuildAntiAliasIndex
    mul.s	$f17,$f0,$f28
.L0d95f2fc:
    ld	$a1,1016($sp)
.L0d95f300:
    li	$a2,8200
    bnez	$a1,.L0d95f310
    ld	$a3,976($sp)
    bne	$a2,$a3,.L0d95f364
.L0d95f310:
    ld	$a0,1024($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lw	$a5,1912($s1)
    li	$a4,4354
    beq	$a4,$a5,.L0d9606c0
    mov.s	$f5,$f0
    sdc1	$f0,680($sp)
.L0d95f338:
    ldc1	$f3,680($sp)
    ldc1	$f4,_lit8_406fe00000000000
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    lwc1	$f2,_lit_45800000
    cvt.s.d	$f3,$f3
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    swc1	$f2,584($sp)
    lw	$a6,584($sp)
    sw	$a6,8568($s3)
.L0d95f364:
    beqz	$s7,.L0d9609b8
    nop	# was lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    lwc1	$f7,48($sp)
    lwc1	$f8,44($sp)
    lwc1	$f4,56($sp)
    lwc1	$f6,52($sp)
    trunc.w.s	$f7,$f7
    trunc.w.s	$f8,$f8
    mul.s	$f4,$f4,$f20
    mfc1	$t1,$f7
    trunc.w.s	$f6,$f6
    mfc1	$t3,$f8
    trunc.w.s	$f5,$f4
    sll	$t1,$t1,0x10
    mfc1	$t2,$f6
    sll	$t3,$t3,0x18
    mfc1	$t0,$f5
    sll	$t2,$t2,0x8
    swc1	$f4,56($sp)
    or	$t1,$t1,$t2
    or	$t0,$t0,$t3
    or	$t0,$t0,$t1
    sw	$t0,588($sp)
    lw	$a7,588($sp)
    sw	$a7,10448($s3)
.L0d95f3c8:
    li	$t9,1
    sltiu	$t8,$s4,1
    movn	$s4,$t9,$t8
    # Line 635
    ld	$s2,1112($sp)
.L0d95f3d8:
    b	.L0d95f0b4
    addiu	$s2,$s2,1
.L0d95f3e0:
    # Line 650
    lwc1	$f10,108($sp)
    trunc.w.s	$f10,$f10
    mfc1	$v0,$f10
    sll	$v0,$v0,0x6
    sw	$v0,484($sp)
    lw	$at,484($sp)
    sw	$at,8328($s3)
    lwc1	$f9,112($sp)
    trunc.w.s	$f9,$f9
    mfc1	$ra,$f9
    ld	$t9,1152($sp)
    sll	$ra,$ra,0x6
    sw	$ra,488($sp)
    lw	$t8,488($sp)
    bnez	$t9,.L0d95f19c
    sw	$t8,8332($s3)
    lw	$v1,12($sp)
.L0d95f424:
    lwc1	$f11,0($v1)
    beqz	$s7,.L0d95f200
    swc1	$f11,44($sp)
    lw	$a0,12($sp)
    lwc1	$f14,4($a0)
    swc1	$f14,48($sp)
    lwc1	$f13,8($a0)
    swc1	$f13,52($sp)
    lwc1	$f12,12($a0)
    b	.L0d95f200
    swc1	$f12,56($sp)
.L0d95f450:
    # Line 642
    ld	$a1,1000($sp)
    slti	$a1,$a1,-1
    beqz	$a1,.L0d95f464
    li	$a2,-1
.L0d95f460:
    # Line 655
    li	$a2,-1
.L0d95f464:
    # Line 723
    ld	$t0,1168($sp)
    # Line 686
    li	$a4,-1
    # Line 697
    ld	$ra,1160($sp)
    # Line 721
    dmtc1	$zero,$f4
    # Line 690
    ld	$t8,1152($sp)
    # Line 686
    beq	$a2,$a4,.L0d95f680
    # Line 753
    move	$s2,$zero
    # Line 690
    ld	$s2,1032($sp)
    # Line 709
    ld	$a5,1152($sp)
    # Line 718
    ld	$a1,904($sp)
    # Line 690
    beqz	$s7,.L0d960774
    subu	$s2,$a2,$s2
    # Line 697
    ld	$t9,1144($sp)
    # Line 690
    beqz	$t8,.L0d95f4e4
    # Line 694
    mtc1	$s2,$f19
    # Line 696
    lwc1	$f17,30216($s1)
    # Line 695
    lwc1	$f23,30288($s1)
    # Line 694
    cvt.s.w	$f19,$f19
    # Line 697
    lwc1	$f21,30296($s1)
    # Line 696
    lwc1	$f25,30292($s1)
    # Line 697
    lwc1	$f18,30220($s1)
    madd.s	$f18,$f18,$f19,$f21
    # Line 694
    lwc1	$f21,30284($s1)
    # Line 695
    lwc1	$f16,30212($s1)
    # Line 696
    madd.s	$f17,$f17,$f19,$f25
    # Line 694
    lwc1	$f15,30208($s1)
    # Line 695
    madd.s	$f16,$f16,$f19,$f23
    # Line 694
    madd.s	$f15,$f15,$f19,$f21
    # Line 697
    swc1	$f18,30220($s1)
    # Line 696
    swc1	$f17,30216($s1)
    # Line 695
    swc1	$f16,30212($s1)
    # Line 694
    swc1	$f15,30208($s1)
.L0d95f4e4:
    # Line 705
    mtc1	$s2,$f31
    # Line 697
    beqz	$t9,.L0d95f558
    # Line 714
    ld	$at,912($sp)
    # Line 697
    lw	$ra,32088($ra)
    sll	$ra,$ra,0x10
    bltz	$ra,.L0d960800
    # Line 703
    ld	$ra,1160($sp)
    # Line 707
    lwc1	$f25,30232($s1)
    lwc1	$f2,30388($s1)
    # Line 708
    lwc1	$f27,30236($s1)
    # Line 705
    cvt.s.w	$f31,$f31
    # Line 709
    lwc1	$f1,30396($s1)
    # Line 708
    lwc1	$f0,30392($s1)
    # Line 709
    lwc1	$f29,30240($s1)
    madd.s	$f29,$f29,$f31,$f1
    # Line 706
    lwc1	$f1,30384($s1)
    # Line 708
    madd.s	$f27,$f27,$f31,$f0
    # Line 705
    lwc1	$f0,30380($s1)
    # Line 706
    lwc1	$f23,30228($s1)
    # Line 707
    madd.s	$f25,$f25,$f31,$f2
    # Line 705
    lwc1	$f21,30224($s1)
    # Line 706
    madd.s	$f23,$f23,$f31,$f1
    # Line 705
    madd.s	$f21,$f21,$f31,$f0
    # Line 709
    swc1	$f29,30240($s1)
    # Line 708
    swc1	$f27,30236($s1)
    # Line 707
    swc1	$f25,30232($s1)
    # Line 706
    swc1	$f23,30228($s1)
    # Line 705
    swc1	$f21,30224($s1)
.L0d95f554:
    # Line 714
    ld	$at,912($sp)
.L0d95f558:
    beqz	$at,.L0d95f57c
    # Line 727
    sll	$t2,$s2,0x2
.L0d95f560:
    # Line 718
    lw	$a0,30324($s1)
    mult	$a0,$s2
    lw	$v0,30204($s1)
    mflo	$v1
    addu	$v0,$v0,$v1
    sw	$v0,30204($s1)
    # Line 727
    sll	$t2,$s2,0x2
.L0d95f57c:
    # Line 742
    ld	$t9,896($sp)
    # Line 735
    mtc1	$s2,$f5
    # Line 732
    ld	$t8,1016($sp)
    # Line 742
    li	$ra,-1
    # Line 718
    beqz	$a1,.L0d95f600
    # Line 723
    ld	$a5,1168($sp)
    # Line 721
    lw	$a3,30324($s1)
    mult	$a3,$s2
    lwc1	$f0,30336($s1)
    mflo	$a4
    mtc1	$a4,$f1
    cvt.d.s	$f3,$f0
    cvt.s.w	$f1,$f1
    lwc1	$f2,30484($s1)
    c.eq.d $f3,$f4
    # Line 723
    negu	$a6,$a4
    # Line 721
    add.s	$f1,$f1,$f2
    # Line 723
    mtc1	$a6,$f3
    # Line 721
    bc1t .L0d95f600
    swc1	$f1,30484($s1)
    # Line 723
    cvt.s.w	$f3,$f3
    div.s	$f3,$f3,$f0
    lwc1	$f2,30500($s1)
    add.s	$f2,$f2,$f3
    bnez	$a5,.L0d95f608
    swc1	$f2,30500($s1)
    # Line 727
    ld	$a7,920($sp)
.L0d95f5e8:
    bnez	$a7,.L0d95f61c
    nop
    b	.L0d95f62c
    # Line 748
    ld	$a7,1088($sp)
    nop
    nop
.L0d95f600:
    # Line 723
    beqz	$t0,.L0d95f5e8
    # Line 727
    ld	$a7,920($sp)
.L0d95f608:
    lw	$t1,30440($s1)
    addu	$t1,$t1,$t2
    ld	$t2,920($sp)
    beqz	$t2,.L0d95f628
    sw	$t1,30440($s1)
.L0d95f61c:
    # Line 730
    lw	$t3,30452($s1)
    addu	$t3,$s2,$t3
    sw	$t3,30452($s1)
.L0d95f628:
    # Line 748
    ld	$a7,1088($sp)
.L0d95f62c:
    ld	$a6,784($sp)
    # Line 732
    li	$t0,8200
    beqz	$t8,.L0d96069c
    ld	$t1,976($sp)
    # Line 735
    cvt.s.w	$f5,$f5
.L0d95f640:
    lwc1	$f6,30432($s1)
    lwc1	$f4,30244($s1)
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,30244($s1)
    # Line 748
    ld	$t0,776($sp)
.L0d95f654:
    # Line 742
    beq	$t9,$ra,.L0d95f680
    # Line 748
    slt	$a7,$a7,$t0
    ld	$a4,896($sp)
    subu	$a4,$a4,$a2
    addiu	$a4,$a4,1
    blez	$a4,.L0d95f680
    ld	$a5,1088($sp)
    slt	$a5,$a5,$a6
    bnez	$a5,.L0d95f684
    # Line 768
    ld	$a0,992($sp)
    # Line 748
    bnez	$a7,.L0d960a3c
.L0d95f680:
    # Line 768
    ld	$a0,992($sp)
.L0d95f684:
    ld	$v1,1088($sp)
    # Line 765
    ld	$t9,864($sp)
    # Line 762
    ld	$t8,848($sp)
    ld	$a3,1000($sp)
    # Line 833
    mtc1	$s2,$f8
    # Line 759
    ld	$at,856($sp)
    # Line 854
    mtc1	$s2,$f11
    # Line 759
    ld	$ra,952($sp)
    # Line 768
    addiu	$v1,$v1,1
    # Line 763
    lui	$a2,0x7fff
    # Line 769
    ld	$v0,872($sp)
    # Line 768
    addiu	$a0,$a0,-1
    # Line 763
    ori	$a2,$a2,0xffff
    # Line 769
    ld	$t1,968($sp)
    # Line 768
    sd	$a0,992($sp)
    # Line 762
    addu	$a4,$a3,$t8
    # Line 765
    addu	$a3,$a3,$t9
    # Line 762
    ld	$t2,960($sp)
    # Line 769
    addu	$t1,$t1,$v0
    # Line 759
    addu	$at,$ra,$at
    # Line 768
    sd	$v1,1088($sp)
    # Line 763
    and	$ra,$at,$a2
    slti	$t3,$at,0
    # Line 769
    sd	$t1,968($sp)
    # Line 762
    addu	$t8,$t2,$t8
    movz	$ra,$at,$t3
    # Line 765
    addu	$t2,$t2,$t9
    sd	$ra,952($sp)
    movn	$a3,$a4,$t3
    sd	$a3,1000($sp)
    movn	$t2,$t8,$t3
    # Line 769
    bltz	$t1,.L0d960418
    sd	$t2,960($sp)
    # Line 830
    ld	$a4,832($sp)
    ld	$a5,984($sp)
    ld	$a1,840($sp)
    ld	$a3,1032($sp)
    addu	$a5,$a5,$a4
    sd	$a5,984($sp)
    addu	$a3,$a3,$a4
    beqz	$a1,.L0d960794
    sd	$a3,1032($sp)
    # Line 836
    ld	$a7,1144($sp)
    # Line 830
    ld	$a6,1152($sp)
    beqz	$a6,.L0d95f7a0
    nop
    # Line 835
    lwc1	$f11,30260($s1)
    # Line 836
    lwc1	$f13,30264($s1)
    # Line 833
    cvt.s.w	$f8,$f8
    # Line 836
    lwc1	$f15,30296($s1)
    # Line 835
    lwc1	$f14,30292($s1)
    # Line 834
    lwc1	$f12,30288($s1)
    # Line 833
    lwc1	$f10,30284($s1)
    # Line 836
    nmsub.s	$f13,$f13,$f8,$f15
    # Line 834
    lwc1	$f9,30256($s1)
    # Line 835
    nmsub.s	$f11,$f11,$f8,$f14
    # Line 833
    lwc1	$f7,30252($s1)
    # Line 834
    nmsub.s	$f9,$f9,$f8,$f12
    # Line 836
    lwc1	$f12,30220($s1)
    # Line 833
    nmsub.s	$f7,$f7,$f8,$f10
    # Line 835
    lwc1	$f10,30216($s1)
    # Line 834
    lwc1	$f8,30212($s1)
    # Line 833
    lwc1	$f6,30208($s1)
    # Line 836
    add.s	$f12,$f12,$f13
    # Line 835
    add.s	$f10,$f10,$f11
    # Line 836
    swc1	$f12,30220($s1)
    # Line 834
    add.s	$f8,$f8,$f9
    # Line 835
    swc1	$f10,30216($s1)
    # Line 833
    add.s	$f6,$f6,$f7
    # Line 834
    swc1	$f8,30212($s1)
    # Line 833
    swc1	$f6,30208($s1)
.L0d95f7a0:
    # Line 836
    beqz	$a7,.L0d95f838
    # Line 844
    mtc1	$s2,$f11
    # Line 836
    ld	$t0,1160($sp)
    lw	$t0,32088($t0)
    sll	$t0,$t0,0x10
    bltz	$t0,.L0d95fb5c
    # Line 842
    ld	$a7,1160($sp)
    # Line 844
    lwc1	$f9,30224($s1)
    # Line 846
    lwc1	$f14,30348($s1)
    # Line 847
    lwc1	$f16,30352($s1)
    # Line 848
    lwc1	$f21,30356($s1)
    # Line 844
    cvt.s.w	$f11,$f11
    # Line 848
    lwc1	$f23,30396($s1)
    # Line 847
    lwc1	$f18,30392($s1)
    # Line 846
    lwc1	$f17,30388($s1)
    # Line 844
    lwc1	$f13,30380($s1)
    # Line 848
    nmsub.s	$f21,$f21,$f11,$f23
    # Line 845
    lwc1	$f15,30384($s1)
    # Line 847
    nmsub.s	$f16,$f16,$f11,$f18
    # Line 844
    lwc1	$f10,30340($s1)
    # Line 846
    nmsub.s	$f14,$f14,$f11,$f17
    # Line 845
    lwc1	$f12,30344($s1)
    # Line 844
    nmsub.s	$f10,$f10,$f11,$f13
    # Line 848
    lwc1	$f19,30240($s1)
    # Line 845
    nmsub.s	$f12,$f12,$f11,$f15
    # Line 847
    lwc1	$f15,30236($s1)
    # Line 846
    lwc1	$f13,30232($s1)
    # Line 845
    lwc1	$f11,30228($s1)
    # Line 848
    add.s	$f19,$f19,$f21
    # Line 847
    add.s	$f15,$f15,$f16
    # Line 848
    swc1	$f19,30240($s1)
    # Line 846
    add.s	$f13,$f13,$f14
    # Line 847
    swc1	$f15,30236($s1)
    # Line 845
    add.s	$f11,$f11,$f12
    # Line 846
    swc1	$f13,30232($s1)
    # Line 844
    add.s	$f9,$f9,$f10
    # Line 845
    swc1	$f11,30228($s1)
    # Line 844
    swc1	$f9,30224($s1)
.L0d95f838:
    # Line 854
    ld	$t1,920($sp)
.L0d95f83c:
    beqz	$t1,.L0d95fbb8
    # Line 859
    ld	$t1,912($sp)
.L0d95f844:
    lw	$t3,30452($s1)
    lw	$t2,30460($s1)
    addu	$t2,$t2,$t3
    ld	$t3,912($sp)
    beqz	$t3,.L0d95f87c
    sw	$t2,30452($s1)
.L0d95f85c:
    # Line 864
    lw	$at,30324($s1)
    mult	$at,$s2
    lw	$t9,30316($s1)
    lw	$t8,30204($s1)
    mflo	$ra
    subu	$t9,$t9,$ra
    addu	$t8,$t8,$t9
    sw	$t8,30204($s1)
.L0d95f87c:
    ld	$v0,904($sp)
.L0d95f880:
    # Line 867
    dmtc1	$zero,$f15
    # Line 875
    sll	$a7,$s2,0x2
    # Line 880
    ld	$t0,1016($sp)
    # Line 883
    mtc1	$s2,$f9
    # Line 880
    ld	$t3,976($sp)
    li	$t2,8200
    # Line 864
    beqz	$v0,.L0d95ecb0
    # Line 871
    ld	$a1,1168($sp)
    # Line 867
    lw	$a0,30324($s1)
    mult	$a0,$s2
    lw	$a5,30316($s1)
    mflo	$a4
    lwc1	$f0,30336($s1)
    subu	$v1,$a5,$a4
    mtc1	$v1,$f12
    cvt.d.s	$f14,$f0
    cvt.s.w	$f12,$f12
    lwc1	$f13,30484($s1)
    c.eq.d $f14,$f15
    lwc1	$f5,30500($s1)
    # Line 869
    negu	$a2,$a5
    ldc1	$f15,_lit8_3ee4f8b588e368f1
    mtc1	$a2,$f14
    # Line 871
    subu	$a3,$a4,$a5
    # Line 867
    add.s	$f12,$f12,$f13
    # Line 871
    mtc1	$a3,$f6
    # Line 867
    bc1f .L0d95eca0
    swc1	$f12,30484($s1)
    # Line 869
    cvt.d.w	$f14,$f14
    div.d	$f14,$f14,$f15
    cvt.d.s	$f13,$f5
    add.d	$f13,$f13,$f14
    cvt.s.d	$f13,$f13
    # Line 871
    bnez	$a1,.L0d95ecbc
    # Line 869
    swc1	$f13,30500($s1)
    b	.L0d95ecd0
    nop
    nop
    nop
    nop
.L0d95f920:
    # Line 633
    ld	$a3,1160($sp)
    ld	$a4,888($sp)
    lw	$a3,32096($a3)
    ld	$a7,888($sp)
    beq	$a3,$a4,.L0d95f030
    ld	$a5,1160($sp)
    lw	$t0,32184($a5)
    sw	$a7,8288($t0)
    lw	$a6,32188($a5)
    lw	$a4,8($sp)
    sw	$a4,8288($a6)
    b	.L0d95f030
    sw	$a4,32096($a5)
.L0d95f954:
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,-6688
    bal __glCrmRenderPointDepthRGBA
    ld	$a0,792($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    ld	$a0,800($sp)
    addiu	$t9,$t9,-6688
    lwc1	$f14,112($sp)
    mov.d	$f20,$f0
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    ld	$a0,808($sp)
    addiu	$t9,$t9,-6688
    lwc1	$f14,112($sp)
    mov.d	$f30,$f0
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    ld	$a1,824($sp)
    dmtc1	$a1,$f25
    cvt.d.l	$f25,$f25
    mul.d	$f25,$f25,$f20
    sdc1	$f25,152($sp)
    ldc1	$f23,152($sp)
    ld	$a0,816($sp)
    dmtc1	$a0,$f21
    trunc.l.d	$f23,$f23
    dmfc1	$v1,$f23
    cvt.d.l	$f21,$f21
    daddiu	$v1,$v1,2048
    sd	$v1,160($sp)
    mul.d	$f21,$f21,$f30
    ldc1	$f17,160($sp)
    sdc1	$f21,168($sp)
    ldc1	$f19,168($sp)
    ldc1	$f18,_lit8_41c0000000000000
    trunc.l.d	$f19,$f19
    dmfc1	$v0,$f19
    mul.d	$f18,$f18,$f0
    daddiu	$v0,$v0,2048
    sd	$v0,176($sp)
    cvt.s.d	$f18,$f18
    ldc1	$f15,176($sp)
    swc1	$f18,184($sp)
    lwc1	$f16,184($sp)
    trunc.w.s	$f16,$f16
    sdc1	$f17,8480($s3)
    mfc1	$at,$f16
    sdc1	$f15,8488($s3)
    addiu	$at,$at,2048
    sw	$at,188($sp)
    lw	$ra,188($sp)
    bnez	$s4,.L0d95eed0
    sw	$ra,8496($s3)
    ld	$a3,768($sp)
    ld	$a6,752($sp)
    sw	$a6,192($sp)
    lw	$a5,192($sp)
    ld	$a4,1168($sp)
    lw	$a2,192($sp)
    sw	$a5,8500($s3)
    beqz	$a4,.L0d95fa7c
    sw	$a2,8500($a3)
    ld	$a7,768($sp)
    sd	$zero,200($sp)
    ldc1	$f0,200($sp)
    ldc1	$f31,200($sp)
    sd	$zero,208($sp)
    ldc1	$f29,208($sp)
    ldc1	$f27,208($sp)
    sdc1	$f0,8656($s3)
    sdc1	$f31,8656($a7)
    sdc1	$f29,8664($s3)
    sdc1	$f27,8664($a7)
.L0d95fa7c:
    ld	$t2,768($sp)
    lw	$t0,1792($s1)
    andi	$t0,$t0,0x20
    beqz	$t0,.L0d95eed4
    ld	$a2,1016($sp)
    sw	$zero,216($sp)
    lw	$t9,216($sp)
    lw	$t8,216($sp)
    sw	$t9,8576($s3)
    sw	$t8,8576($t2)
    sw	$zero,220($sp)
    lw	$t3,220($sp)
    lw	$t1,220($sp)
    sw	$t3,8584($s3)
    b	.L0d95eed0
    sw	$t1,8584($t2)
    nop
.L0d95fac0:
    # Line 646
    ld	$at,1112($sp)
    ld	$ra,1000($sp)
    slt	$ra,$ra,$at
    # Line 661
    ld	$s2,1000($sp)
    # Line 646
    bnez	$ra,.L0d95f460
    move	$a2,$at
    b	.L0d95ffb8
    sd	$at,1280($sp)
.L0d95fae0:
    # Line 633
    c.lt.s $f0,$f22
    li	$v1,2049
    lw	$a4,1588($s1)
    li	$v0,2048
    bc1f .L0d95fafc
    li	$a0,9729
    neg.s	$f5,$f0
.L0d95fafc:
    beq	$v0,$a4,.L0d960d68
    ldc1	$f13,608($sp)
    beq	$v1,$a4,.L0d960d84
    lwc1	$f13,20($sp)
    beq	$a0,$a4,.L0d960a60
.L0d95fb10:
    ldc1	$f1,696($sp)
    c.lt.s $f1,$f22
    bc1f .L0d960404
    ldc1	$f10,696($sp)
    b	.L0d95ef0c
    sdc1	$f22,696($sp)
.L0d95fb28:
    # Line 650
    ld	$a1,1160($sp)
    ld	$a2,888($sp)
    lw	$a1,32096($a1)
    ld	$a5,888($sp)
    beq	$a1,$a2,.L0d95f150
    ld	$a3,1160($sp)
    lw	$a6,32184($a3)
    sw	$a5,8288($a6)
    lw	$a4,32188($a3)
    lw	$a2,8($sp)
    sw	$a2,8288($a4)
    b	.L0d95f150
    sw	$a2,32096($a3)
.L0d95fb5c:
    # Line 840
    mtc1	$s2,$f5
    # Line 842
    ldc1	$f8,32480($a7)
    ldc1	$f10,32432($a7)
    # Line 841
    ldc1	$f9,32416($a7)
    # Line 840
    cvt.d.w	$f5,$f5
    ldc1	$f7,32400($a7)
    # Line 841
    ldc1	$f6,32464($a7)
    # Line 842
    nmsub.d	$f8,$f8,$f5,$f10
    # Line 840
    ldc1	$f4,32448($a7)
    # Line 841
    nmsub.d	$f6,$f6,$f5,$f9
    # Line 840
    nmsub.d	$f4,$f4,$f5,$f7
    # Line 842
    ldc1	$f7,32392($a7)
    # Line 841
    ldc1	$f5,32384($a7)
    # Line 840
    ldc1	$f3,32376($a7)
    # Line 854
    ld	$t0,920($sp)
    # Line 842
    add.d	$f7,$f7,$f8
    # Line 841
    add.d	$f5,$f5,$f6
    # Line 842
    sdc1	$f7,32392($a7)
    # Line 840
    add.d	$f3,$f3,$f4
    # Line 841
    sdc1	$f5,32384($a7)
    # Line 854
    bnez	$t0,.L0d95f844
    # Line 840
    sdc1	$f3,32376($a7)
    # Line 859
    ld	$t1,912($sp)
.L0d95fbb8:
    bnez	$t1,.L0d95f85c
    nop
    b	.L0d95f880
    # Line 864
    ld	$v0,904($sp)
    nop
    nop
.L0d95fbd0:
    # Line 650
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,-6688
    bal __glCrmRenderPointDepthRGBA
    ld	$a0,792($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    ld	$a0,800($sp)
    addiu	$t9,$t9,-6688
    lwc1	$f14,112($sp)
    mov.d	$f30,$f0
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    la	$s2,sub_0d960000
    addiu	$s2,$s2,-6688
    ld	$a0,808($sp)
    move	$t9,$s2
    lwc1	$f14,112($sp)
    mov.d	$f28,$f0
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    ld	$v1,824($sp)
    dmtc1	$v1,$f13
    cvt.d.l	$f13,$f13
    mul.d	$f13,$f13,$f30
    sdc1	$f13,512($sp)
    ldc1	$f12,512($sp)
    ld	$v0,816($sp)
    dmtc1	$v0,$f11
    trunc.l.d	$f12,$f12
    dmfc1	$at,$f12
    cvt.d.l	$f11,$f11
    daddiu	$at,$at,2048
    sd	$at,520($sp)
    mul.d	$f11,$f11,$f28
    ldc1	$f8,520($sp)
    sdc1	$f11,528($sp)
    ldc1	$f10,528($sp)
    ldc1	$f9,_lit8_41c0000000000000
    trunc.l.d	$f10,$f10
    dmfc1	$ra,$f10
    mul.d	$f9,$f9,$f0
    daddiu	$ra,$ra,2048
    sd	$ra,536($sp)
    cvt.s.d	$f9,$f9
    ldc1	$f6,536($sp)
    swc1	$f9,544($sp)
    lwc1	$f7,544($sp)
    trunc.w.s	$f7,$f7
    sdc1	$f8,8480($s3)
    mfc1	$t9,$f7
    sdc1	$f6,8488($s3)
    addiu	$t9,$t9,2048
    sw	$t9,548($sp)
    lw	$t8,548($sp)
    bnez	$s4,.L0d95f2fc
    sw	$t8,8496($s3)
    ld	$a1,768($sp)
    ld	$a4,752($sp)
    sw	$a4,552($sp)
    lw	$a3,552($sp)
    ld	$a2,1168($sp)
    lw	$a0,552($sp)
    sw	$a3,8500($s3)
    beqz	$a2,.L0d95fcfc
    sw	$a0,8500($a1)
    ld	$a5,768($sp)
    sd	$zero,560($sp)
    ldc1	$f17,560($sp)
    ldc1	$f16,560($sp)
    sd	$zero,568($sp)
    ldc1	$f15,568($sp)
    ldc1	$f14,568($sp)
    sdc1	$f17,8656($s3)
    sdc1	$f16,8656($a5)
    sdc1	$f15,8664($s3)
    sdc1	$f14,8664($a5)
.L0d95fcfc:
    ld	$t0,768($sp)
    lw	$a6,1792($s1)
    andi	$a6,$a6,0x20
    beqz	$a6,.L0d95f300
    ld	$a1,1016($sp)
    sw	$zero,576($sp)
    lw	$t3,576($sp)
    lw	$t2,576($sp)
    sw	$t3,8576($s3)
    sw	$t2,8576($t0)
    sw	$zero,580($sp)
    lw	$t1,580($sp)
    lw	$a7,580($sp)
    sw	$t1,8584($s3)
    b	.L0d95f2fc
    sw	$a7,8584($t0)
.L0d95fd3c:
    # Line 668
    lwc1	$f19,108($sp)
    trunc.w.s	$f19,$f19
    mfc1	$v0,$f19
    sll	$v0,$v0,0x6
    sw	$v0,244($sp)
    lw	$at,244($sp)
    sw	$at,8328($s3)
    lwc1	$f18,112($sp)
    trunc.w.s	$f18,$f18
    mfc1	$ra,$f18
    ld	$t9,1152($sp)
    sll	$ra,$ra,0x6
    sw	$ra,248($sp)
    lw	$t8,248($sp)
    beqz	$t9,.L0d960088
    sw	$t8,8332($s3)
.L0d95fd7c:
    move	$t9,$s0
    lwc1	$f14,112($sp)
    move	$a0,$s6
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    beqz	$s7,.L0d95fde0
    swc1	$f0,44($sp)
    ld	$a0,928($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,936($sp)
    bal __glCrmRenderPointDepthRGBA
    swc1	$f0,48($sp)
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,944($sp)
    bal __glCrmRenderPointDepthRGBA
    swc1	$f0,52($sp)
    swc1	$f0,56($sp)
.L0d95fde0:
    ld	$v1,1168($sp)
    beqz	$v1,.L0d95fe28
    ld	$a0,1144($sp)
    ld	$a0,1008($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lwc1	$f25,_lit_42800000
    mul.s	$f25,$f25,$f0
    cvt.d.s	$f25,$f25
    sdc1	$f25,256($sp)
    ldc1	$f23,256($sp)
    trunc.l.d	$f23,$f23
    sdc1	$f23,264($sp)
    ldc1	$f21,264($sp)
    sdc1	$f21,8648($s3)
    ld	$a0,1144($sp)
.L0d95fe28:
    lwc1	$f13,108($sp)
    lwc1	$f14,112($sp)
    beqz	$a0,.L0d95fedc
    ld	$a1,1160($sp)
    lw	$a1,32088($a1)
    sll	$a1,$a1,0x10
    bltz	$a1,.L0d960848
    move	$t9,$s0
    bal __glCrmRenderPointDepthRGBA
    ld	$a0,1056($sp)
    lwc1	$f20,3544($s1)
    lwc1	$f14,112($sp)
    move	$t9,$s0
    lwc1	$f13,108($sp)
    ld	$a0,1064($sp)
    bal __glCrmRenderPointDepthRGBA
    div.s	$f20,$f20,$f0
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,1072($sp)
    mul.s	$f21,$f0,$f20
    bal __glCrmRenderPointDepthRGBA
    sdc1	$f21,640($sp)
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,1040($sp)
    mul.s	$f23,$f0,$f20
    bal __glCrmRenderPointDepthRGBA
    sdc1	$f23,648($sp)
    lwc1	$f14,112($sp)
    move	$t9,$s0
    lwc1	$f13,108($sp)
    ld	$a0,1080($sp)
    bal __glCrmRenderPointDepthRGBA
    mul.s	$f30,$f0,$f20
    lw	$t9,12524($s1)
    ld	$a1,1048($sp)
    ldc1	$f14,640($sp)
    mov.s	$f16,$f30
    move	$a0,$s1
    ldc1	$f15,648($sp)
    jal	sub_0d960000
    mul.s	$f17,$f0,$f20
.L0d95fedc:
    ld	$a2,1016($sp)
.L0d95fee0:
    li	$a3,8200
    bnez	$a2,.L0d95fef0
    ld	$a4,976($sp)
    bne	$a3,$a4,.L0d95ff44
.L0d95fef0:
    ld	$a0,1024($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lw	$a6,1912($s1)
    li	$a5,4354
    beq	$a5,$a6,.L0d9609f0
    mov.s	$f5,$f0
    sdc1	$f0,656($sp)
.L0d95ff18:
    ldc1	$f29,656($sp)
    ldc1	$f31,_lit8_406fe00000000000
    cvt.d.s	$f29,$f29
    mul.d	$f29,$f29,$f31
    lwc1	$f27,_lit_45800000
    cvt.s.d	$f29,$f29
    mul.s	$f27,$f27,$f29
    trunc.w.s	$f27,$f27
    swc1	$f27,344($sp)
    lw	$a7,344($sp)
    sw	$a7,8568($s3)
.L0d95ff44:
    beqz	$s7,.L0d960c90
    nop	# was lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    lwc1	$f2,48($sp)
    lwc1	$f3,44($sp)
    lwc1	$f31,56($sp)
    lwc1	$f1,52($sp)
    trunc.w.s	$f2,$f2
    trunc.w.s	$f3,$f3
    mul.s	$f31,$f31,$f28
    mfc1	$t2,$f2
    trunc.w.s	$f1,$f1
    mfc1	$t8,$f3
    trunc.w.s	$f0,$f31
    sll	$t2,$t2,0x10
    mfc1	$t3,$f1
    sll	$t8,$t8,0x18
    mfc1	$t1,$f0
    sll	$t3,$t3,0x8
    swc1	$f31,56($sp)
    or	$t2,$t2,$t3
    or	$t1,$t1,$t8
    or	$t1,$t1,$t2
    sw	$t1,348($sp)
    lw	$t0,348($sp)
    sw	$t0,10448($s3)
.L0d95ffa8:
    li	$ra,1
    sltiu	$t9,$s4,1
    movn	$s4,$ra,$t9
.L0d95ffb4:
    # Line 661
    addiu	$s2,$s2,1
.L0d95ffb8:
    # Line 662
    mtc1	$s2,$f4
    cvt.s.w	$f4,$f4
    # Line 665
    ld	$a0,1184($sp)
    ld	$a3,1176($sp)
    # Line 663
    swc1	$f26,112($sp)
    # Line 665
    move	$t9,$s5
    # Line 662
    add.s	$f4,$f4,$f24
    # Line 665
    addiu	$a2,$sp,112
    # Line 662
    swc1	$f4,108($sp)
    # Line 665
    addiu	$a1,$sp,108
    bal __glCrmRenderPointDepthRGBA
    # Line 664
    sb	$zero,356($s6)
    ld	$a0,1120($sp)
    # Line 666
    c.eq.s $f0,$f22
    # Line 668
    ld	$v0,1128($sp)
    ld	$v1,1096($sp)
    ld	$a5,1152($sp)
    # Line 666
    bc1t .L0d9600b8
    # Line 665
    mov.s	$f28,$f0
    # Line 666
    ld	$at,1136($sp)
    beqz	$at,.L0d96003c
    movz	$v0,$a0,$v1
    # Line 668
    sll	$v0,$v0,0x2
    li	$a0,31
    and	$a1,$s2,$a0
    addu	$v0,$s1,$v0
    li	$v1,1
    lw	$v0,30008($v0)
    subu	$a0,$a0,$a1
    sllv	$v1,$v1,$a0
    and	$v0,$v0,$v1
    beqz	$v0,.L0d95ffb4
    nop
.L0d96003c:
    beqz	$s4,.L0d9607cc
.L0d960040:
    lwc1	$f6,108($sp)
    trunc.w.s	$f6,$f6
    mfc1	$a4,$f6
    sll	$a4,$a4,0x6
    sw	$a4,236($sp)
    lw	$a3,236($sp)
    sw	$a3,8320($s3)
    lwc1	$f5,112($sp)
    trunc.w.s	$f5,$f5
    mfc1	$a2,$f5
    ld	$a1,1104($sp)
    li	$a0,3
    sll	$a2,$a2,0x6
    sw	$a2,240($sp)
    lw	$v1,240($sp)
    beq	$a0,$a1,.L0d95fd3c
    sw	$v1,8324($s3)
    bnez	$a5,.L0d95fd7c
.L0d960088:
    lw	$a6,12($sp)
    lwc1	$f7,0($a6)
    beqz	$s7,.L0d95fde0
    swc1	$f7,44($sp)
    lw	$a7,12($sp)
    lwc1	$f10,4($a7)
    swc1	$f10,48($sp)
    lwc1	$f9,8($a7)
    swc1	$f9,52($sp)
    lwc1	$f8,12($a7)
    b	.L0d95fde0
    swc1	$f8,56($sp)
.L0d9600b8:
    # Line 670
    ld	$s2,960($sp)
.L0d9600bc:
    # Line 671
    mtc1	$s2,$f11
    cvt.s.w	$f11,$f11
    # Line 674
    ld	$a0,1184($sp)
    ld	$a3,1176($sp)
    # Line 672
    swc1	$f26,112($sp)
    # Line 674
    move	$t9,$s5
    # Line 671
    add.s	$f11,$f11,$f24
    # Line 674
    addiu	$a2,$sp,112
    # Line 671
    swc1	$f11,108($sp)
    # Line 674
    addiu	$a1,$sp,108
    bal __glCrmRenderPointDepthRGBA
    # Line 673
    sb	$zero,356($s6)
    ld	$a2,1280($sp)
    # Line 674
    c.eq.s	$f0,$f22
    # Line 684
    ld	$v0,1152($sp)
    ld	$t3,1120($sp)
    ld	$t1,1128($sp)
    # Line 674
    bc1t	.L0d9607c0
    mov.s	$f20,$f0
    # Line 677
    ldc1	$f12,688($sp)
    c.eq.s $f0,$f12
    bc1t .L0d9609b0
    # Line 883
    ld	$t0,1136($sp)
    beqz	$t0,.L0d960150
    ld	$t2,1096($sp)
    movz	$t1,$t3,$t2
    # Line 684
    li	$t3,31
    sll	$t1,$t1,0x2
    and	$t8,$s2,$t3
    addu	$t1,$s1,$t1
    li	$t2,1
    subu	$t3,$t3,$t8
    lw	$t1,30008($t1)
    sllv	$t2,$t2,$t3
    and	$t1,$t1,$t2
    beqz	$t1,.L0d9603d8
    nop
.L0d960150:
    beqz	$s4,.L0d960af0
.L0d960154:
    lwc1	$f14,108($sp)
    trunc.w.s	$f14,$f14
    mfc1	$at,$f14
    sll	$at,$at,0x6
    sw	$at,356($sp)
    lw	$ra,356($sp)
    sw	$ra,8320($s3)
    lwc1	$f13,112($sp)
    trunc.w.s	$f13,$f13
    mfc1	$t9,$f13
    ld	$t8,1104($sp)
    li	$t3,3
    sll	$t9,$t9,0x6
    sw	$t9,360($sp)
    lw	$t2,360($sp)
    beq	$t3,$t8,.L0d960704
    sw	$t2,8324($s3)
    beqz	$v0,.L0d960748
    lw	$a3,12($sp)
.L0d9601a0:
    move	$t9,$s0
    lwc1	$f14,112($sp)
    move	$a0,$s6
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    beqz	$s7,.L0d960204
    swc1	$f0,44($sp)
    ld	$a0,928($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,936($sp)
    bal __glCrmRenderPointDepthRGBA
    swc1	$f0,48($sp)
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,944($sp)
    bal __glCrmRenderPointDepthRGBA
    swc1	$f0,52($sp)
    swc1	$f0,56($sp)
.L0d960204:
    ld	$v1,1168($sp)
    beqz	$v1,.L0d96024c
    ld	$a0,1144($sp)
    ld	$a0,1008($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lwc1	$f17,_lit_42800000
    mul.s	$f17,$f17,$f0
    cvt.d.s	$f17,$f17
    sdc1	$f17,376($sp)
    ldc1	$f16,376($sp)
    trunc.l.d	$f16,$f16
    sdc1	$f16,384($sp)
    ldc1	$f15,384($sp)
    sdc1	$f15,8648($s3)
    ld	$a0,1144($sp)
.L0d96024c:
    lwc1	$f13,108($sp)
    lwc1	$f14,112($sp)
    beqz	$a0,.L0d960300
    ld	$a1,1160($sp)
    lw	$a1,32088($a1)
    sll	$a1,$a1,0x10
    bltz	$a1,.L0d960b24
    move	$t9,$s0
    bal __glCrmRenderPointDepthRGBA
    ld	$a0,1056($sp)
    lwc1	$f28,3544($s1)
    lwc1	$f14,112($sp)
    move	$t9,$s0
    lwc1	$f13,108($sp)
    ld	$a0,1064($sp)
    bal __glCrmRenderPointDepthRGBA
    div.s	$f28,$f28,$f0
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,1072($sp)
    mul.s	$f29,$f0,$f28
    bal __glCrmRenderPointDepthRGBA
    sdc1	$f29,616($sp)
    lwc1	$f14,112($sp)
    lwc1	$f13,108($sp)
    move	$t9,$s0
    ld	$a0,1040($sp)
    mul.s	$f31,$f0,$f28
    bal __glCrmRenderPointDepthRGBA
    sdc1	$f31,624($sp)
    lwc1	$f14,112($sp)
    move	$t9,$s0
    lwc1	$f13,108($sp)
    ld	$a0,1080($sp)
    bal __glCrmRenderPointDepthRGBA
    mul.s	$f30,$f0,$f28
    lw	$t9,12524($s1)
    ld	$a1,1048($sp)
    ldc1	$f14,616($sp)
    mov.s	$f16,$f30
    move	$a0,$s1
    ldc1	$f15,624($sp)
    jal	__glBuildAntiAliasIndex
    mul.s	$f17,$f0,$f28
.L0d960300:
    ld	$a3,1016($sp)
.L0d960304:
    li	$a4,8200
    bnez	$a3,.L0d960314
    ld	$a5,976($sp)
    bne	$a4,$a5,.L0d960368
.L0d960314:
    ld	$a0,1024($sp)
    move	$t9,$s0
    lwc1	$f14,112($sp)
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    lw	$a7,1912($s1)
    li	$a6,4354
    beq	$a6,$a7,.L0d960ce0
    mov.s	$f5,$f0
    sdc1	$f0,632($sp)
.L0d96033c:
    ldc1	$f3,632($sp)
    ldc1	$f4,_lit8_406fe00000000000
    cvt.d.s	$f3,$f3
    mul.d	$f3,$f3,$f4
    lwc1	$f2,_lit_45800000
    cvt.s.d	$f3,$f3
    mul.s	$f2,$f2,$f3
    trunc.w.s	$f2,$f2
    swc1	$f2,464($sp)
    lw	$t0,464($sp)
    sw	$t0,8568($s3)
.L0d960368:
    beqz	$s7,.L0d960da4
    nop	# was lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    lwc1	$f7,48($sp)
    lwc1	$f8,44($sp)
    lwc1	$f4,56($sp)
    lwc1	$f6,52($sp)
    trunc.w.s	$f7,$f7
    trunc.w.s	$f8,$f8
    mul.s	$f4,$f4,$f20
    mfc1	$t3,$f7
    trunc.w.s	$f6,$f6
    mfc1	$t9,$f8
    trunc.w.s	$f5,$f4
    sll	$t3,$t3,0x10
    mfc1	$t8,$f6
    sll	$t9,$t9,0x18
    mfc1	$t2,$f5
    sll	$t8,$t8,0x8
    swc1	$f4,56($sp)
    or	$t3,$t3,$t8
    or	$t2,$t2,$t9
    or	$t2,$t2,$t3
    sw	$t2,468($sp)
    lw	$t1,468($sp)
    sw	$t1,10448($s3)
.L0d9603cc:
    li	$at,1
    sltiu	$ra,$s4,1
    movn	$s4,$at,$ra
.L0d9603d8:
    # Line 670
    b	.L0d9600bc
    addiu	$s2,$s2,-1
.L0d9603e0:
    # Line 633
    mov.s	$f13,$f28
    jal	__glBuildAntiAliasIndex
    lwc1	$f12,44($sp)
    swc1	$f0,44($sp)
    trunc.w.s	$f9,$f0
    swc1	$f9,232($sp)
    lw	$v0,232($sp)
    b	.L0d95ef9c
    sw	$v0,10448($s3)
.L0d960404:
    lwc1	$f11,3544($s1)
    c.lt.s $f11,$f10
    movt.s	$f10,$f11,$fcc2
    b	.L0d95ef0c
    sdc1	$f10,696($sp)
.L0d960418:
    # Line 773
    ld	$a0,1032($sp)
    # Line 772
    ld	$a1,760($sp)
    ld	$a2,984($sp)
    # Line 773
    ld	$a3,968($sp)
    lui	$a4,0x7fff
    ori	$a4,$a4,0xffff
    ld	$v1,840($sp)
    # Line 797
    mtc1	$s2,$f5
    # Line 773
    and	$a3,$a3,$a4
    sd	$a3,968($sp)
    # Line 777
    mtc1	$s2,$f14
    # Line 772
    addu	$a2,$a2,$a1
    sd	$a2,984($sp)
    addu	$a0,$a0,$a1
    # Line 773
    beqz	$v1,.L0d960d24
    sd	$a0,1032($sp)
    ld	$a5,1152($sp)
    beqz	$a5,.L0d9604c8
    # Line 780
    ld	$a6,1144($sp)
    # Line 779
    lwc1	$f17,30276($s1)
    # Line 780
    lwc1	$f19,30280($s1)
    # Line 777
    cvt.s.w	$f14,$f14
    # Line 780
    lwc1	$f23,30296($s1)
    # Line 779
    lwc1	$f21,30292($s1)
    # Line 778
    lwc1	$f18,30288($s1)
    # Line 777
    lwc1	$f16,30284($s1)
    # Line 780
    nmsub.s	$f19,$f19,$f14,$f23
    # Line 778
    lwc1	$f15,30272($s1)
    # Line 779
    nmsub.s	$f17,$f17,$f14,$f21
    # Line 777
    lwc1	$f13,30268($s1)
    # Line 778
    nmsub.s	$f15,$f15,$f14,$f18
    # Line 780
    lwc1	$f18,30220($s1)
    # Line 777
    nmsub.s	$f13,$f13,$f14,$f16
    # Line 779
    lwc1	$f16,30216($s1)
    # Line 778
    lwc1	$f14,30212($s1)
    # Line 777
    lwc1	$f12,30208($s1)
    # Line 780
    add.s	$f18,$f18,$f19
    # Line 779
    add.s	$f16,$f16,$f17
    # Line 780
    swc1	$f18,30220($s1)
    # Line 778
    add.s	$f14,$f14,$f15
    # Line 779
    swc1	$f16,30216($s1)
    # Line 777
    add.s	$f12,$f12,$f13
    # Line 778
    swc1	$f14,30212($s1)
    # Line 777
    swc1	$f12,30208($s1)
.L0d9604c8:
    # Line 780
    beqz	$a6,.L0d960560
    # Line 788
    mtc1	$s2,$f17
    # Line 780
    ld	$a7,1160($sp)
    lw	$a7,32088($a7)
    sll	$a7,$a7,0x10
    bltz	$a7,.L0d960a78
    # Line 786
    ld	$a2,1160($sp)
    # Line 788
    lwc1	$f15,30224($s1)
    # Line 790
    lwc1	$f21,30368($s1)
    # Line 791
    lwc1	$f25,30372($s1)
    # Line 792
    lwc1	$f0,30376($s1)
    # Line 788
    cvt.s.w	$f17,$f17
    # Line 792
    lwc1	$f1,30396($s1)
    # Line 791
    lwc1	$f29,30392($s1)
    # Line 790
    lwc1	$f27,30388($s1)
    # Line 788
    lwc1	$f19,30380($s1)
    # Line 792
    nmsub.s	$f0,$f0,$f17,$f1
    # Line 789
    lwc1	$f23,30384($s1)
    # Line 791
    nmsub.s	$f25,$f25,$f17,$f29
    # Line 788
    lwc1	$f16,30360($s1)
    # Line 790
    nmsub.s	$f21,$f21,$f17,$f27
    # Line 789
    lwc1	$f18,30364($s1)
    # Line 788
    nmsub.s	$f16,$f16,$f17,$f19
    # Line 792
    lwc1	$f31,30240($s1)
    # Line 789
    nmsub.s	$f18,$f18,$f17,$f23
    # Line 791
    lwc1	$f23,30236($s1)
    # Line 790
    lwc1	$f19,30232($s1)
    # Line 789
    lwc1	$f17,30228($s1)
    # Line 792
    add.s	$f31,$f31,$f0
    # Line 791
    add.s	$f23,$f23,$f25
    # Line 792
    swc1	$f31,30240($s1)
    # Line 790
    add.s	$f19,$f19,$f21
    # Line 791
    swc1	$f23,30236($s1)
    # Line 789
    add.s	$f17,$f17,$f18
    # Line 790
    swc1	$f19,30232($s1)
    # Line 788
    add.s	$f15,$f15,$f16
    # Line 789
    swc1	$f17,30228($s1)
    # Line 788
    swc1	$f15,30224($s1)
.L0d960560:
    # Line 797
    ld	$t0,920($sp)
.L0d960564:
    beqz	$t0,.L0d960ad4
    # Line 802
    ld	$a4,912($sp)
.L0d96056c:
    lw	$t2,30452($s1)
    lw	$t1,30456($s1)
    addu	$t1,$t1,$t2
    ld	$t2,912($sp)
    beqz	$t2,.L0d9605a4
    sw	$t1,30452($s1)
.L0d960584:
    # Line 806
    lw	$ra,30324($s1)
    mult	$ra,$s2
    lw	$t8,30320($s1)
    lw	$t3,30204($s1)
    mflo	$t9
    subu	$t8,$t8,$t9
    addu	$t3,$t3,$t8
    sw	$t3,30204($s1)
.L0d9605a4:
    ld	$at,904($sp)
.L0d9605a8:
    # Line 818
    sll	$a6,$s2,0x2
    # Line 809
    dmtc1	$zero,$f23
    # Line 814
    ld	$a3,1168($sp)
    # Line 826
    mtc1	$s2,$f29
    # Line 823
    ld	$a7,1016($sp)
    # Line 806
    beqz	$at,.L0d960654
    # Line 814
    ld	$a0,1168($sp)
    # Line 809
    lw	$v1,30324($s1)
    mult	$v1,$s2
    lw	$a5,30320($s1)
    mflo	$a4
    lwc1	$f0,30336($s1)
    subu	$v0,$a5,$a4
    mtc1	$v0,$f18
    cvt.d.s	$f21,$f0
    cvt.s.w	$f18,$f18
    lwc1	$f19,30484($s1)
    c.eq.d $f21,$f23
    lwc1	$f5,30500($s1)
    # Line 811
    negu	$a1,$a5
    ldc1	$f23,_lit8_3ee4f8b588e368f1
    # Line 809
    add.s	$f18,$f18,$f19
    # Line 811
    mtc1	$a1,$f21
    # Line 814
    subu	$a2,$a4,$a5
    # Line 809
    bc1f .L0d960640
    swc1	$f18,30484($s1)
    # Line 811
    cvt.d.w	$f21,$f21
    div.d	$f21,$f21,$f23
    cvt.d.s	$f19,$f5
    add.d	$f19,$f19,$f21
    cvt.s.d	$f19,$f19
    # Line 814
    bnez	$a0,.L0d96065c
    # Line 811
    swc1	$f19,30500($s1)
    b	.L0d960674
    # Line 823
    li	$v0,8200
    nop
    nop
    nop
.L0d960640:
    # Line 814
    mtc1	$a2,$f23
    cvt.s.w	$f23,$f23
    div.s	$f23,$f23,$f0
    add.s	$f23,$f5,$f23
    swc1	$f23,30500($s1)
.L0d960654:
    beqz	$a3,.L0d960674
    # Line 823
    li	$v0,8200
.L0d96065c:
    # Line 818
    lw	$a5,30440($s1)
    # Line 820
    lw	$a4,30444($s1)
    # Line 818
    subu	$a5,$a5,$a6
    # Line 820
    addu	$a4,$a4,$a5
    sw	$a4,30440($s1)
    # Line 823
    li	$v0,8200
.L0d960674:
    beqz	$a7,.L0d960cc8
    ld	$v1,976($sp)
    # Line 826
    cvt.s.w	$f29,$f29
.L0d960680:
    lwc1	$f31,30432($s1)
    lwc1	$f27,30424($s1)
    nmsub.s	$f27,$f27,$f29,$f31
    lwc1	$f25,30244($s1)
    add.s	$f25,$f25,$f27
    b	.L0d95ecf4
    swc1	$f25,30244($s1)
.L0d96069c:
    # Line 732
    bne	$t0,$t1,.L0d95f654
    # Line 748
    ld	$t0,776($sp)
    b	.L0d95f640
    # Line 735
    cvt.s.w	$f5,$f5
    nop
.L0d9606b0:
    # Line 880
    bne	$t2,$t3,.L0d95ecf8
    # Line 883
    ld	$t2,880($sp)
    b	.L0d95ecdc
    cvt.s.w	$f9,$f9
.L0d9606c0:
    # Line 650
    c.lt.s $f0,$f22
    li	$t8,2048
    bc1f .L0d9606d4
    lw	$a4,1588($s1)
    neg.s	$f5,$f0
.L0d9606d4:
    li	$ra,9729
    beq	$t8,$a4,.L0d960e5c
    li	$t9,2049
    beq	$t9,$a4,.L0d960e7c
    lwc1	$f13,20($sp)
    beq	$ra,$a4,.L0d960d50
.L0d9606ec:
    ldc1	$f31,680($sp)
    c.lt.s $f31,$f22
    bc1f .L0d9609dc
    ldc1	$f3,680($sp)
    b	.L0d95f338
    sdc1	$f22,680($sp)
.L0d960704:
    # Line 684
    lwc1	$f2,108($sp)
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    sll	$a1,$a1,0x6
    sw	$a1,364($sp)
    lw	$a0,364($sp)
    sw	$a0,8328($s3)
    lwc1	$f1,112($sp)
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    ld	$v0,1152($sp)
    sll	$v1,$v1,0x6
    sw	$v1,368($sp)
    lw	$at,368($sp)
    bnez	$v0,.L0d9601a0
    sw	$at,8332($s3)
    lw	$a3,12($sp)
.L0d960748:
    lwc1	$f3,0($a3)
    beqz	$s7,.L0d960204
    swc1	$f3,44($sp)
    lw	$a4,12($sp)
    lwc1	$f6,4($a4)
    swc1	$f6,48($sp)
    lwc1	$f5,8($a4)
    swc1	$f5,52($sp)
    lwc1	$f4,12($a4)
    b	.L0d960204
    swc1	$f4,56($sp)
.L0d960774:
    # Line 709
    beqz	$a5,.L0d95f554
    # Line 714
    mtc1	$s2,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f9,30300($s1)
    lwc1	$f7,30208($s1)
    madd.s	$f7,$f7,$f8,$f9
    b	.L0d95f554
    swc1	$f7,30208($s1)
.L0d960794:
    # Line 848
    ld	$a6,1152($sp)
    beqz	$a6,.L0d95f83c
    # Line 854
    ld	$t1,920($sp)
    cvt.s.w	$f11,$f11
    lwc1	$f12,30284($s1)
    lwc1	$f10,30252($s1)
    nmsub.s	$f10,$f10,$f11,$f12
    lwc1	$f9,30208($s1)
    add.s	$f9,$f9,$f10
    b	.L0d95f838
    swc1	$f9,30208($s1)
.L0d9607c0:
    # Line 676
    li	$a7,-1
    # Line 677
    b	.L0d95f464
    sd	$a7,896($sp)
.L0d9607cc:
    # Line 668
    ld	$t0,1160($sp)
    ld	$t1,888($sp)
    lw	$t0,32096($t0)
    ld	$t8,888($sp)
    beq	$t0,$t1,.L0d960040
    ld	$t2,1160($sp)
    lw	$t9,32184($t2)
    sw	$t8,8288($t9)
    lw	$t3,32188($t2)
    lw	$t1,8($sp)
    sw	$t1,8288($t3)
    b	.L0d960040
    sw	$t1,32096($t2)
.L0d960800:
    # Line 701
    mtc1	$s2,$f15
    # Line 703
    ldc1	$f14,32392($ra)
    ldc1	$f18,32432($ra)
    # Line 702
    ldc1	$f17,32416($ra)
    # Line 701
    cvt.d.w	$f15,$f15
    ldc1	$f16,32400($ra)
    # Line 702
    ldc1	$f13,32384($ra)
    # Line 703
    madd.d	$f14,$f14,$f15,$f18
    # Line 701
    ldc1	$f12,32376($ra)
    # Line 702
    madd.d	$f13,$f13,$f15,$f17
    # Line 701
    madd.d	$f12,$f12,$f15,$f16
    # Line 714
    ld	$at,912($sp)
    # Line 703
    sdc1	$f14,32392($ra)
    # Line 702
    sdc1	$f13,32384($ra)
    # Line 714
    bnez	$at,.L0d95f560
    # Line 701
    sdc1	$f12,32376($ra)
    b	.L0d95f57c
    # Line 727
    sll	$t2,$s2,0x2
.L0d960848:
    # Line 668
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,-6688
    bal __glCrmRenderPointDepthRGBA
    ld	$a0,792($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    ld	$a0,800($sp)
    addiu	$t9,$t9,-6688
    lwc1	$f14,112($sp)
    mov.d	$f30,$f0
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    ld	$a0,808($sp)
    addiu	$t9,$t9,-6688
    lwc1	$f14,112($sp)
    mov.d	$f20,$f0
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    ld	$a1,824($sp)
    dmtc1	$a1,$f27
    cvt.d.l	$f27,$f27
    mul.d	$f27,$f27,$f30
    sdc1	$f27,272($sp)
    ldc1	$f25,272($sp)
    ld	$a0,816($sp)
    dmtc1	$a0,$f23
    trunc.l.d	$f25,$f25
    dmfc1	$v1,$f25
    cvt.d.l	$f23,$f23
    daddiu	$v1,$v1,2048
    sd	$v1,280($sp)
    mul.d	$f23,$f23,$f20
    ldc1	$f18,280($sp)
    sdc1	$f23,288($sp)
    ldc1	$f21,288($sp)
    ldc1	$f19,_lit8_41c0000000000000
    trunc.l.d	$f21,$f21
    dmfc1	$v0,$f21
    mul.d	$f19,$f19,$f0
    daddiu	$v0,$v0,2048
    sd	$v0,296($sp)
    cvt.s.d	$f19,$f19
    ldc1	$f16,296($sp)
    swc1	$f19,304($sp)
    lwc1	$f17,304($sp)
    trunc.w.s	$f17,$f17
    sdc1	$f18,8480($s3)
    mfc1	$at,$f17
    sdc1	$f16,8488($s3)
    addiu	$at,$at,2048
    sw	$at,308($sp)
    lw	$ra,308($sp)
    bnez	$s4,.L0d95fedc
    sw	$ra,8496($s3)
    ld	$a3,768($sp)
    ld	$a6,752($sp)
    sw	$a6,312($sp)
    lw	$a5,312($sp)
    ld	$a4,1168($sp)
    lw	$a2,312($sp)
    sw	$a5,8500($s3)
    beqz	$a4,.L0d960970
    sw	$a2,8500($a3)
    ld	$a7,768($sp)
    sd	$zero,320($sp)
    ldc1	$f1,320($sp)
    ldc1	$f0,320($sp)
    sd	$zero,328($sp)
    ldc1	$f31,328($sp)
    ldc1	$f29,328($sp)
    sdc1	$f1,8656($s3)
    sdc1	$f0,8656($a7)
    sdc1	$f31,8664($s3)
    sdc1	$f29,8664($a7)
.L0d960970:
    ld	$t2,768($sp)
    lw	$t0,1792($s1)
    andi	$t0,$t0,0x20
    beqz	$t0,.L0d95fee0
    ld	$a2,1016($sp)
    sw	$zero,336($sp)
    lw	$t9,336($sp)
    lw	$t8,336($sp)
    sw	$t9,8576($s3)
    sw	$t8,8576($t2)
    sw	$zero,340($sp)
    lw	$t3,340($sp)
    lw	$t1,340($sp)
    sw	$t3,8584($s3)
    b	.L0d95fedc
    sw	$t1,8584($t2)
.L0d9609b0:
    b	.L0d95f464
    # Line 680
    sd	$s2,896($sp)
.L0d9609b8:
    # Line 650
    mov.s	$f13,$f20
    jal	sub_0d960000
    lwc1	$f12,44($sp)
    swc1	$f0,44($sp)
    trunc.w.s	$f2,$f0
    swc1	$f2,592($sp)
    lw	$at,592($sp)
    b	.L0d95f3c8
    sw	$at,10448($s3)
.L0d9609dc:
    lwc1	$f4,3544($s1)
    c.lt.s $f4,$f3
    movt.s	$f3,$f4,$fcc6
    b	.L0d95f338
    sdc1	$f3,680($sp)
.L0d9609f0:
    # Line 668
    c.lt.s $f0,$f22
    li	$v1,2049
    lw	$a4,1588($s1)
    li	$v0,2048
    bc1f .L0d960a0c
    li	$a0,9729
    neg.s	$f5,$f0
.L0d960a0c:
    beq	$v0,$a4,.L0d960eb4
    ldc1	$f13,608($sp)
    beq	$v1,$a4,.L0d960ed0
    lwc1	$f13,20($sp)
    beq	$a0,$a4,.L0d960e48
    lwc1	$f19,24($sp)
.L0d960a24:
    ldc1	$f5,656($sp)
    c.lt.s	$f5,$f22
    bc1f	.L0d960cb4
    ldc1	$f31,656($sp)
    b	.L0d95ff18
    sdc1	$f22,656($sp)
.L0d960a3c:
    # Line 752
    sw	$a4,30248($s1)
    # Line 753
    lw	$t9,12232($s1)
    # Line 750
    sw	$a2,30196($s1)
    # Line 751
    ld	$a1,1088($sp)
    # Line 753
    move	$a0,$s1
    jalr	$t9
    # Line 751
    sw	$a1,30200($s1)
    b	.L0d95f684
    # Line 768
    ld	$a0,992($sp)
.L0d960a60:
    # Line 633
    lwc1	$f8,24($sp)
    lwc1	$f7,1620($s1)
    sub.s	$f8,$f8,$f5
    mul.s	$f7,$f7,$f8
    b	.L0d95fb10
    sdc1	$f7,696($sp)
.L0d960a78:
    # Line 784
    mtc1	$s2,$f11
    # Line 786
    ldc1	$f14,32488($a2)
    ldc1	$f16,32432($a2)
    # Line 785
    ldc1	$f15,32416($a2)
    # Line 784
    cvt.d.w	$f11,$f11
    ldc1	$f13,32400($a2)
    # Line 785
    ldc1	$f12,32472($a2)
    # Line 786
    nmsub.d	$f14,$f14,$f11,$f16
    # Line 784
    ldc1	$f10,32456($a2)
    # Line 785
    nmsub.d	$f12,$f12,$f11,$f15
    # Line 784
    nmsub.d	$f10,$f10,$f11,$f13
    # Line 786
    ldc1	$f13,32392($a2)
    # Line 785
    ldc1	$f11,32384($a2)
    # Line 784
    ldc1	$f9,32376($a2)
    # Line 797
    ld	$a3,920($sp)
    # Line 786
    add.d	$f13,$f13,$f14
    # Line 785
    add.d	$f11,$f11,$f12
    # Line 786
    sdc1	$f13,32392($a2)
    # Line 784
    add.d	$f9,$f9,$f10
    # Line 785
    sdc1	$f11,32384($a2)
    # Line 797
    bnez	$a3,.L0d96056c
    # Line 784
    sdc1	$f9,32376($a2)
    # Line 802
    ld	$a4,912($sp)
.L0d960ad4:
    bnez	$a4,.L0d960584
    nop
    b	.L0d9605a8
    # Line 806
    ld	$at,904($sp)
    nop
    nop
    nop
.L0d960af0:
    # Line 684
    ld	$a5,1160($sp)
    ld	$a6,888($sp)
    lw	$a5,32096($a5)
    ld	$t1,888($sp)
    beq	$a5,$a6,.L0d960154
    ld	$a7,1160($sp)
    lw	$t2,32184($a7)
    sw	$t1,8288($t2)
    lw	$t0,32188($a7)
    lw	$a6,8($sp)
    sw	$a6,8288($t0)
    b	.L0d960154
    sw	$a6,32096($a7)
.L0d960b24:
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,-6688
    bal __glCrmRenderPointDepthRGBA
    ld	$a0,792($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    ld	$a0,800($sp)
    addiu	$t9,$t9,-6688
    lwc1	$f14,112($sp)
    mov.d	$f30,$f0
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    ld	$a0,808($sp)
    addiu	$t9,$t9,-6688
    lwc1	$f14,112($sp)
    mov.d	$f28,$f0
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f13,108($sp)
    ld	$a1,824($sp)
    dmtc1	$a1,$f19
    cvt.d.l	$f19,$f19
    mul.d	$f19,$f19,$f30
    sdc1	$f19,392($sp)
    ldc1	$f18,392($sp)
    ld	$a0,816($sp)
    dmtc1	$a0,$f17
    trunc.l.d	$f18,$f18
    dmfc1	$v1,$f18
    cvt.d.l	$f17,$f17
    daddiu	$v1,$v1,2048
    sd	$v1,400($sp)
    mul.d	$f17,$f17,$f28
    ldc1	$f14,400($sp)
    sdc1	$f17,408($sp)
    ldc1	$f16,408($sp)
    ldc1	$f15,_lit8_41c0000000000000
    trunc.l.d	$f16,$f16
    dmfc1	$v0,$f16
    mul.d	$f15,$f15,$f0
    daddiu	$v0,$v0,2048
    sd	$v0,416($sp)
    cvt.s.d	$f15,$f15
    ldc1	$f12,416($sp)
    swc1	$f15,424($sp)
    lwc1	$f13,424($sp)
    trunc.w.s	$f13,$f13
    sdc1	$f14,8480($s3)
    mfc1	$at,$f13
    sdc1	$f12,8488($s3)
    addiu	$at,$at,2048
    sw	$at,428($sp)
    lw	$ra,428($sp)
    bnez	$s4,.L0d960300
    sw	$ra,8496($s3)
    ld	$a4,768($sp)
    ld	$a7,752($sp)
    sw	$a7,432($sp)
    lw	$a6,432($sp)
    ld	$a5,1168($sp)
    lw	$a3,432($sp)
    sw	$a6,8500($s3)
    beqz	$a5,.L0d960c4c
    sw	$a3,8500($a4)
    ld	$t0,768($sp)
    sd	$zero,440($sp)
    ldc1	$f27,440($sp)
    ldc1	$f25,440($sp)
    sd	$zero,448($sp)
    ldc1	$f23,448($sp)
    ldc1	$f21,448($sp)
    sdc1	$f27,8656($s3)
    sdc1	$f25,8656($t0)
    sdc1	$f23,8664($s3)
    sdc1	$f21,8664($t0)
.L0d960c4c:
    ld	$t3,768($sp)
    lw	$t1,1792($s1)
    andi	$t1,$t1,0x20
    beqz	$t1,.L0d960304
    ld	$a3,1016($sp)
    sw	$zero,456($sp)
    lw	$ra,456($sp)
    lw	$t9,456($sp)
    sw	$ra,8576($s3)
    sw	$t9,8576($t3)
    sw	$zero,460($sp)
    lw	$t8,460($sp)
    lw	$t2,460($sp)
    sw	$t8,8584($s3)
    b	.L0d960300
    sw	$t2,8584($t3)
    nop
.L0d960c90:
    # Line 668
    mov.s	$f13,$f28
    jal	sub_0d960000
    lwc1	$f12,44($sp)
    swc1	$f0,44($sp)
    trunc.w.s	$f29,$f0
    swc1	$f29,352($sp)
    lw	$at,352($sp)
    b	.L0d95ffa8
    sw	$at,10448($s3)
.L0d960cb4:
    lwc1	$f0,3544($s1)
    c.lt.s $f0,$f31
    movt.s	$f31,$f0,$fcc1
    b	.L0d95ff18
    sdc1	$f31,656($sp)
.L0d960cc8:
    # Line 823
    bne	$v0,$v1,.L0d95ecf8
    # Line 883
    ld	$t2,880($sp)
    b	.L0d960680
    # Line 826
    cvt.s.w	$f29,$f29
    nop
    nop
.L0d960ce0:
    # Line 684
    c.lt.s $f0,$f22
    li	$a0,2048
    bc1f .L0d960cf4
    lw	$a4,1588($s1)
    neg.s	$f5,$f0
.L0d960cf4:
    li	$a3,9729
    beq	$a0,$a4,.L0d960f1c
    li	$a1,2049
    beq	$a1,$a4,.L0d960f3c
    lwc1	$f13,20($sp)
    beq	$a3,$a4,.L0d960e9c
.L0d960d0c:
    ldc1	$f1,632($sp)
    c.lt.s $f1,$f22
    bc1f .L0d960dc8
    ldc1	$f16,632($sp)
    b	.L0d96033c
    sdc1	$f22,632($sp)
.L0d960d24:
    # Line 792
    ld	$a4,1152($sp)
    beqz	$a4,.L0d960564
    # Line 797
    ld	$t0,920($sp)
    cvt.s.w	$f5,$f5
    lwc1	$f6,30284($s1)
    lwc1	$f4,30268($s1)
    nmsub.s	$f4,$f4,$f5,$f6
    lwc1	$f3,30208($s1)
    add.s	$f3,$f3,$f4
    b	.L0d960560
    swc1	$f3,30208($s1)
.L0d960d50:
    # Line 650
    lwc1	$f7,24($sp)
    lwc1	$f6,1620($s1)
    sub.s	$f7,$f7,$f5
    mul.s	$f6,$f6,$f7
    b	.L0d9606ec
    sdc1	$f6,680($sp)
.L0d960d68:
    # Line 633
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f5,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    b	.L0d95fb10
    sdc1	$f0,696($sp)
.L0d960d84:
    mul.s	$f13,$f5,$f13
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f5,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    b	.L0d95fb10
    sdc1	$f0,696($sp)
.L0d960da4:
    # Line 684
    mov.s	$f13,$f20
    jalr	$t9
    lwc1	$f12,44($sp)
    swc1	$f0,44($sp)
    trunc.w.s	$f15,$f0
    swc1	$f15,472($sp)
    lw	$a5,472($sp)
    b	.L0d9603cc
    sw	$a5,10448($s3)
.L0d960dc8:
    lwc1	$f17,3544($s1)
    c.lt.s $f17,$f16
    movt.s	$f16,$f17,$fcc4
    b	.L0d96033c
    sdc1	$f16,632($sp)
.L0d960ddc:
    ld	$s4,1272($sp)
    ld	$s0,1264($sp)
    ld	$s7,1256($sp)
    ld	$s5,1240($sp)
    ld	$s2,1232($sp)
    ldc1	$f30,1224($sp)
    ldc1	$f28,1216($sp)
    ldc1	$f22,1208($sp)
    ldc1	$f26,1200($sp)
    ldc1	$f20,1192($sp)
    # Line 891
    ld	$s3,728($sp)
    ld	$s6,720($sp)
    ldc1	$f24,600($sp)
    # Line 887
    ld	$a7,1032($sp)
    # Line 888
    ld	$t0,968($sp)
    # Line 889
    ld	$t1,1000($sp)
    # Line 890
    ld	$t2,952($sp)
    sw	$t2,30172($s1)
    # Line 889
    sw	$t1,30168($s1)
    # Line 888
    sw	$t0,30152($s1)
    # Line 887
    sw	$a7,30148($s1)
    ld	$ra,1248($sp)
    # Line 891
    ld	$a6,736($sp)
    ld	$s1,744($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a6
.L0d960e48:
    # Line 668
    lwc1	$f18,1620($s1)
    sub.s	$f19,$f19,$f5
    mul.s	$f18,$f18,$f19
    b	.L0d960a24
    sdc1	$f18,656($sp)
.L0d960e5c:
    # Line 650
    ldc1	$f13,608($sp)
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f5,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    b	.L0d9606ec
    sdc1	$f0,680($sp)
.L0d960e7c:
    mul.s	$f13,$f5,$f13
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f5,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    b	.L0d9606ec
    sdc1	$f0,680($sp)
.L0d960e9c:
    # Line 684
    lwc1	$f16,24($sp)
    lwc1	$f15,1620($s1)
    sub.s	$f16,$f16,$f5
    mul.s	$f15,$f15,$f16
    b	.L0d960d0c
    sdc1	$f15,632($sp)
.L0d960eb4:
    # Line 668
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f5,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    b	.L0d960a24
    sdc1	$f0,656($sp)
.L0d960ed0:
    mul.s	$f13,$f5,$f13
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f5,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    b	.L0d960a24
    sdc1	$f0,656($sp)
.L0d960ef0:
    # Line 572
    lw	$t3,28072($s1)
    lw	$t3,8($t3)
    b	.L0d95ea28
    sw	$t3,12($sp)
.L0d960f00:
    # Line 594
    lwc1	$f16,1616($s1)
    # Line 592
    lwc1	$f15,1608($s1)
    # Line 594
    swc1	$f16,24($sp)
    # Line 592
    swc1	$f15,16($sp)
    # Line 593
    mul.s	$f15,$f15,$f15
    # Line 594
    b	.L0d95eb18
    # Line 593
    swc1	$f15,20($sp)
.L0d960f1c:
    # Line 684
    ldc1	$f13,608($sp)
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f5,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    b	.L0d960d0c
    sdc1	$f0,632($sp)
.L0d960f3c:
    mul.s	$f13,$f5,$f13
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f5,$f13
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    b	.L0d960d0c
    sdc1	$f0,632($sp)
.L0d960f5c:
    # Line 589
    lw	$t8,8($sp)
    ori	$t9,$t9,0xffff
    and	$t8,$t8,$t9
    lui	$ra,0x300
    lui	$t9,0x3
    or	$t8,$t8,$ra
    nor	$t9,$t9,$zero
    and	$t8,$t8,$t9
    lui	$t9,0x2
    or	$t8,$t8,$t9
    b	.L0d95eb0c
    sw	$t8,8($sp)
.end FillAASubTriangle

# Function: SetInitialParameters
# Declared: Line 899 (Source lines: 903-1081)
# Address: 0x0d960f90 - 0x0d961680 (Size: 1776 bytes, Frame: 128)
.ent SetInitialParameters
SetInitialParameters:
    # Line 909
    lw	$at,30140($a0)
    # Line 907
    lw	$v0,30136($a0)
    # Line 903
    addiu	$sp,$sp,-128
    # Line 909
    mtc1	$at,$f0
    # Line 903
    sdc1	$f24,0($sp)
    # Line 907
    mtc1	$v0,$f24
    # Line 909
    cvt.s.w	$f0,$f0
    # Line 907
    cvt.s.w	$f24,$f24
    # Line 903
    sd	$s0,24($sp)
    # Line 909
    lw	$a5,30436($a0)
    c.lt.s	$f24,$f0
    # Line 903
    mov.s	$f6,$f15
    move	$s0,$a0
    sdc1	$f20,8($sp)
    mov.s	$f20,$f16
    sdc1	$f22,16($sp)
    # Line 909
    andi	$a6,$a5,0x1000
    andi	$t0,$a5,0x4000
    # Line 903
    mov.s	$f22,$f17
    # Line 909
    andi	$a7,$a5,0x2
    bc1f	.L0d961274
    andi	$a4,$a5,0x1
    beqz	$a4,.L0d961518
    nop
    beqz	$a7,.L0d96109c
    # Line 928
    andi	$v1,$a5,0x8
    # Line 914
    lwc1	$f7,30284($a0)
    lwc1	$f5,30300($a0)
    lwc1	$f8,0($a2)
    madd.s	$f8,$f8,$f16,$f7
    madd.s	$f8,$f8,$f17,$f5
    # Line 915
    madd.s	$f5,$f5,$f24,$f7
    # Line 918
    lwc1	$f3,30304($a0)
    lwc1	$f2,30288($a0)
    # Line 914
    swc1	$f8,30208($a0)
    # Line 915
    swc1	$f5,30252($a0)
    # Line 916
    add.s	$f5,$f5,$f7
    swc1	$f5,30268($a0)
    # Line 918
    lwc1	$f4,4($a2)
    madd.s	$f4,$f4,$f16,$f2
    madd.s	$f4,$f4,$f17,$f3
    # Line 919
    madd.s	$f3,$f3,$f24,$f2
    # Line 922
    lwc1	$f0,30308($a0)
    lwc1	$f27,30292($a0)
    # Line 919
    swc1	$f3,30256($a0)
    # Line 918
    swc1	$f4,30212($a0)
    # Line 920
    add.s	$f2,$f2,$f3
    swc1	$f2,30272($a0)
    # Line 922
    lwc1	$f1,8($a2)
    madd.s	$f1,$f1,$f16,$f27
    madd.s	$f1,$f1,$f17,$f0
    # Line 923
    madd.s	$f0,$f0,$f24,$f27
    # Line 926
    lwc1	$f31,30312($a0)
    lwc1	$f29,30296($a0)
    # Line 923
    swc1	$f0,30260($a0)
    # Line 922
    swc1	$f1,30216($a0)
    # Line 924
    add.s	$f27,$f27,$f0
    swc1	$f27,30276($a0)
    # Line 927
    madd.s	$f27,$f31,$f24,$f29
    # Line 926
    lwc1	$f25,12($a2)
    madd.s	$f25,$f25,$f16,$f29
    madd.s	$f25,$f25,$f17,$f31
    # Line 927
    swc1	$f27,30264($a0)
    # Line 928
    add.s	$f29,$f29,$f27
    swc1	$f29,30280($a0)
    # Line 926
    swc1	$f25,30220($a0)
    # Line 928
    andi	$v1,$a5,0x8
.L0d96109c:
    beqz	$v1,.L0d961190
    nop
    lw	$a0,32088($s0)
    sll	$a0,$a0,0x10
    bltz	$a0,.L0d961580
    nop
    # Line 944
    lwc1	$f16,140($a1)
    # Line 945
    lwc1	$f31,30380($s0)
    lwc1	$f2,48($a1)
    lwc1	$f0,30400($s0)
    mul.s	$f1,$f31,$f20
    madd.s	$f1,$f1,$f2,$f16
    madd.s	$f1,$f1,$f22,$f0
    # Line 947
    madd.s	$f0,$f0,$f24,$f31
    # Line 950
    lwc1	$f23,30384($s0)
    # Line 947
    swc1	$f0,30340($s0)
    # Line 945
    swc1	$f1,30224($s0)
    # Line 948
    add.s	$f31,$f31,$f0
    swc1	$f31,30360($s0)
    # Line 950
    lwc1	$f29,52($a1)
    lwc1	$f25,30404($s0)
    mul.s	$f27,$f23,$f20
    madd.s	$f27,$f27,$f29,$f16
    madd.s	$f27,$f27,$f22,$f25
    # Line 952
    madd.s	$f25,$f25,$f24,$f23
    # Line 955
    lwc1	$f17,30388($s0)
    # Line 952
    swc1	$f25,30344($s0)
    # Line 950
    swc1	$f27,30228($s0)
    # Line 953
    add.s	$f23,$f23,$f25
    swc1	$f23,30364($s0)
    # Line 955
    lwc1	$f21,56($a1)
    lwc1	$f18,30408($s0)
    mul.s	$f19,$f17,$f20
    madd.s	$f19,$f19,$f21,$f16
    madd.s	$f19,$f19,$f22,$f18
    # Line 957
    madd.s	$f18,$f18,$f24,$f17
    # Line 960
    lwc1	$f10,30392($s0)
    # Line 957
    swc1	$f18,30348($s0)
    # Line 955
    swc1	$f19,30232($s0)
    # Line 958
    add.s	$f17,$f17,$f18
    swc1	$f17,30368($s0)
    # Line 960
    lwc1	$f15,60($a1)
    lwc1	$f13,30412($s0)
    mul.s	$f14,$f10,$f20
    madd.s	$f14,$f14,$f15,$f16
    madd.s	$f14,$f14,$f22,$f13
    # Line 962
    madd.s	$f13,$f13,$f24,$f10
    # Line 965
    lwc1	$f12,30416($s0)
    lwc1	$f11,30396($s0)
    # Line 962
    swc1	$f13,30352($s0)
    # Line 960
    swc1	$f14,30236($s0)
    # Line 963
    add.s	$f10,$f10,$f13
    swc1	$f10,30372($s0)
    # Line 966
    madd.s	$f10,$f12,$f24,$f11
    # Line 965
    lwc1	$f9,180($a1)
    madd.s	$f9,$f9,$f20,$f11
    madd.s	$f9,$f9,$f22,$f12
    # Line 966
    swc1	$f10,30356($s0)
    # Line 967
    add.s	$f11,$f11,$f10
    swc1	$f11,30376($s0)
    # Line 965
    swc1	$f9,30240($s0)
.L0d961190:
    # Line 974
    beqz	$t0,.L0d961224
    nop
    lw	$a2,1792($s0)
    dsll32	$a2,$a2,0x7
    bgez	$a2,.L0d9611ec
    nop
    sdc1	$f6,32($sp)
    # Line 980
    # lw $t9, -25208($gp) # &__glPolygonOffsetZ
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    mov.s	$f14,$f20
    move	$a0,$s0
    sd	$ra,56($sp)
    jal	__glPolygonOffsetZ
    mov.s	$f15,$f22
    ld	$ra,56($sp)
    ld	$a5,48($sp)
    ld	$a6,40($sp)
    ldc1	$f6,32($sp)
    lwc1	$f4,30332($s0)
    lwc1	$f5,30336($s0)
    b	.L0d96120c
    sw	$v0,30204($s0)
.L0d9611ec:
    # Line 982
    lwc1	$f5,30336($s0)
    lwc1	$f4,30332($s0)
    lwc1	$f3,136($a1)
    madd.s	$f3,$f3,$f20,$f5
    madd.s	$f3,$f3,$f22,$f4
    trunc.l.s	$f3,$f3
    dmfc1	$a3,$f3
    sw	$a3,30204($s0)
.L0d96120c:
    # Line 985
    madd.s	$f8,$f4,$f24,$f5
    # Line 987
    add.s	$f7,$f5,$f8
    # Line 986
    trunc.w.s	$f8,$f8
    swc1	$f8,30316($s0)
    # Line 987
    trunc.w.s	$f7,$f7
    swc1	$f7,30320($s0)
.L0d961224:
    # Line 989
    bnez	$a6,.L0d961238
    andi	$a4,$a5,0x2008
    li	$a6,8200
    bne	$a4,$a6,.L0d961500
    nop
.L0d961238:
    # Line 992
    lwc1	$f10,30432($s0)
    lwc1	$f12,30428($s0)
    # Line 993
    madd.s	$f11,$f12,$f24,$f10
    # Line 992
    madd.s	$f9,$f6,$f20,$f10
    # Line 1081
    ldc1	$f20,8($sp)
    # Line 992
    madd.s	$f9,$f9,$f22,$f12
    # Line 1081
    ldc1	$f24,0($sp)
    ldc1	$f22,16($sp)
    # Line 993
    swc1	$f11,30420($s0)
    # Line 994
    add.s	$f10,$f10,$f11
    swc1	$f10,30424($s0)
    # Line 992
    swc1	$f9,30244($s0)
    # Line 1081
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d961274:
    # Line 994
    beqz	$a4,.L0d96154c
    nop
    beqz	$a7,.L0d961328
    # Line 1012
    andi	$a7,$a5,0x8
    # Line 999
    lwc1	$f31,30284($a0)
    lwc1	$f29,30300($a0)
    lwc1	$f0,0($a2)
    madd.s	$f0,$f0,$f16,$f31
    madd.s	$f0,$f0,$f17,$f29
    # Line 1000
    madd.s	$f29,$f29,$f24,$f31
    # Line 1002
    lwc1	$f23,30304($a0)
    lwc1	$f25,30288($a0)
    # Line 999
    swc1	$f0,30208($a0)
    # Line 1000
    swc1	$f29,30252($a0)
    # Line 1001
    sub.s	$f29,$f29,$f31
    swc1	$f29,30268($a0)
    # Line 1002
    lwc1	$f27,4($a2)
    madd.s	$f27,$f27,$f16,$f25
    madd.s	$f27,$f27,$f17,$f23
    # Line 1003
    madd.s	$f23,$f23,$f24,$f25
    # Line 1006
    lwc1	$f14,30308($a0)
    lwc1	$f17,30292($a0)
    # Line 1002
    swc1	$f27,30212($a0)
    # Line 1003
    swc1	$f23,30256($a0)
    # Line 1004
    sub.s	$f23,$f23,$f25
    swc1	$f23,30272($a0)
    # Line 1006
    lwc1	$f21,8($a2)
    madd.s	$f21,$f21,$f16,$f17
    madd.s	$f21,$f21,$f22,$f14
    # Line 1007
    madd.s	$f14,$f14,$f24,$f17
    # Line 1010
    lwc1	$f15,30296($a0)
    lwc1	$f16,30312($a0)
    # Line 1006
    swc1	$f21,30216($a0)
    # Line 1007
    swc1	$f14,30260($a0)
    # Line 1008
    sub.s	$f14,$f14,$f17
    swc1	$f14,30276($a0)
    # Line 1011
    madd.s	$f14,$f16,$f24,$f15
    # Line 1010
    lwc1	$f13,12($a2)
    madd.s	$f13,$f13,$f20,$f15
    madd.s	$f13,$f13,$f22,$f16
    # Line 1011
    swc1	$f14,30264($a0)
    # Line 1012
    sub.s	$f15,$f14,$f15
    swc1	$f15,30280($a0)
    # Line 1010
    swc1	$f13,30220($a0)
    # Line 1012
    andi	$a7,$a5,0x8
.L0d961328:
    beqz	$a7,.L0d96141c
    nop
    lw	$t1,32088($s0)
    sll	$t1,$t1,0x10
    bltz	$t1,.L0d961600
    nop
    # Line 1028
    lwc1	$f9,140($a1)
    # Line 1029
    lwc1	$f19,30380($s0)
    lwc1	$f23,48($a1)
    lwc1	$f18,30400($s0)
    mul.s	$f21,$f19,$f20
    madd.s	$f21,$f21,$f23,$f9
    madd.s	$f21,$f21,$f22,$f18
    # Line 1031
    madd.s	$f18,$f18,$f24,$f19
    # Line 1034
    lwc1	$f15,30384($s0)
    # Line 1029
    swc1	$f21,30224($s0)
    # Line 1031
    swc1	$f18,30340($s0)
    # Line 1032
    sub.s	$f18,$f18,$f19
    swc1	$f18,30360($s0)
    # Line 1034
    lwc1	$f17,52($a1)
    lwc1	$f14,30404($s0)
    mul.s	$f16,$f15,$f20
    madd.s	$f16,$f16,$f17,$f9
    madd.s	$f16,$f16,$f22,$f14
    # Line 1036
    madd.s	$f14,$f14,$f24,$f15
    # Line 1039
    lwc1	$f11,30388($s0)
    # Line 1034
    swc1	$f16,30228($s0)
    # Line 1036
    swc1	$f14,30344($s0)
    # Line 1037
    sub.s	$f14,$f14,$f15
    swc1	$f14,30364($s0)
    # Line 1039
    lwc1	$f13,56($a1)
    lwc1	$f10,30408($s0)
    mul.s	$f12,$f11,$f20
    madd.s	$f12,$f12,$f13,$f9
    madd.s	$f12,$f12,$f22,$f10
    # Line 1041
    madd.s	$f10,$f10,$f24,$f11
    # Line 1044
    lwc1	$f5,30392($s0)
    # Line 1039
    swc1	$f12,30232($s0)
    # Line 1041
    swc1	$f10,30348($s0)
    # Line 1042
    sub.s	$f10,$f10,$f11
    swc1	$f10,30368($s0)
    # Line 1044
    lwc1	$f8,60($a1)
    lwc1	$f2,30412($s0)
    mul.s	$f7,$f5,$f20
    madd.s	$f7,$f7,$f8,$f9
    madd.s	$f7,$f7,$f22,$f2
    # Line 1046
    madd.s	$f2,$f2,$f24,$f5
    # Line 1049
    lwc1	$f4,30416($s0)
    lwc1	$f3,30396($s0)
    # Line 1044
    swc1	$f7,30236($s0)
    # Line 1046
    swc1	$f2,30352($s0)
    # Line 1047
    sub.s	$f2,$f2,$f5
    swc1	$f2,30372($s0)
    # Line 1050
    madd.s	$f2,$f4,$f24,$f3
    # Line 1049
    lwc1	$f1,180($a1)
    madd.s	$f1,$f1,$f20,$f3
    madd.s	$f1,$f1,$f22,$f4
    # Line 1050
    swc1	$f2,30356($s0)
    # Line 1051
    sub.s	$f3,$f2,$f3
    swc1	$f3,30376($s0)
    # Line 1049
    swc1	$f1,30240($s0)
.L0d96141c:
    # Line 1058
    beqz	$t0,.L0d9614b0
    nop
    lw	$t2,1792($s0)
    dsll32	$t2,$t2,0x7
    bgez	$t2,.L0d961478
    nop
    sdc1	$f6,32($sp)
    # Line 1064
    # lw $t9, -25208($gp) # &__glPolygonOffsetZ
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    mov.s	$f14,$f20
    move	$a0,$s0
    sd	$ra,56($sp)
    jal	__glPolygonOffsetZ
    mov.s	$f15,$f22
    ld	$ra,56($sp)
    ld	$a5,48($sp)
    ld	$a6,40($sp)
    ldc1	$f6,32($sp)
    lwc1	$f4,30332($s0)
    lwc1	$f5,30336($s0)
    b	.L0d961498
    sw	$v0,30204($s0)
.L0d961478:
    # Line 1066
    lwc1	$f5,30336($s0)
    lwc1	$f4,30332($s0)
    lwc1	$f25,136($a1)
    madd.s	$f25,$f25,$f20,$f5
    madd.s	$f25,$f25,$f22,$f4
    trunc.l.s	$f25,$f25
    dmfc1	$t3,$f25
    sw	$t3,30204($s0)
.L0d961498:
    # Line 1069
    madd.s	$f29,$f4,$f24,$f5
    # Line 1071
    sub.s	$f27,$f29,$f5
    # Line 1070
    trunc.w.s	$f29,$f29
    swc1	$f29,30316($s0)
    # Line 1071
    trunc.w.s	$f27,$f27
    swc1	$f27,30320($s0)
.L0d9614b0:
    # Line 1073
    bnez	$a6,.L0d9614c4
    andi	$t8,$a5,0x2008
    li	$t9,8200
    bne	$t8,$t9,.L0d961500
    nop
.L0d9614c4:
    # Line 1076
    lwc1	$f1,30432($s0)
    lwc1	$f2,30428($s0)
    # Line 1077
    madd.s	$f0,$f2,$f24,$f1
    # Line 1076
    madd.s	$f31,$f6,$f20,$f1
    # Line 1081
    ldc1	$f20,8($sp)
    # Line 1076
    madd.s	$f31,$f31,$f22,$f2
    # Line 1081
    ldc1	$f24,0($sp)
    ldc1	$f22,16($sp)
    # Line 1077
    swc1	$f0,30420($s0)
    # Line 1078
    sub.s	$f0,$f0,$f1
    swc1	$f0,30424($s0)
    # Line 1076
    swc1	$f31,30244($s0)
    # Line 1081
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d961500:
    ld	$s0,24($sp)
    ldc1	$f24,0($sp)
    ldc1	$f20,8($sp)
    ldc1	$f22,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d961518:
    # Line 967
    beqz	$a7,.L0d961190
    nop
    # Line 972
    lwc1	$f5,30284($a0)
    lwc1	$f7,30300($a0)
    lwc1	$f3,0($a2)
    # Line 973
    madd.s	$f4,$f7,$f24,$f5
    # Line 972
    madd.s	$f3,$f3,$f16,$f5
    madd.s	$f3,$f3,$f17,$f7
    # Line 973
    swc1	$f4,30252($a0)
    # Line 974
    add.s	$f4,$f4,$f5
    swc1	$f4,30268($a0)
    b	.L0d961190
    # Line 972
    swc1	$f3,30208($a0)
.L0d96154c:
    # Line 1051
    beqz	$a7,.L0d96141c
    nop
    # Line 1056
    lwc1	$f7,30284($a0)
    lwc1	$f8,30300($a0)
    lwc1	$f4,0($a2)
    # Line 1057
    madd.s	$f5,$f8,$f24,$f7
    # Line 1056
    madd.s	$f4,$f4,$f16,$f7
    madd.s	$f4,$f4,$f17,$f8
    # Line 1057
    swc1	$f5,30252($a0)
    # Line 1058
    sub.s	$f5,$f5,$f7
    swc1	$f5,30268($a0)
    b	.L0d96141c
    # Line 1056
    swc1	$f4,30208($a0)
.L0d961580:
    # Line 940
    ldc1	$f15,32432($s0)
    ldc1	$f21,32440($s0)
    # Line 933
    cvt.d.s	$f8,$f24
    # Line 936
    ldc1	$f10,32416($s0)
    # Line 932
    ldc1	$f7,32400($s0)
    # Line 941
    madd.d	$f16,$f21,$f15,$f8
    # Line 936
    ldc1	$f17,32424($s0)
    # Line 932
    ldc1	$f13,32408($s0)
    # Line 937
    madd.d	$f11,$f17,$f10,$f8
    # Line 932
    cvt.d.s	$f5,$f20
    # Line 933
    madd.d	$f8,$f13,$f7,$f8
    # Line 940
    ldc1	$f12,128($sp)
    madd.d	$f12,$f12,$f15,$f5
    # Line 932
    cvt.d.s	$f14,$f22
    # Line 936
    madd.d	$f9,$f19,$f10,$f5
    # Line 932
    madd.d	$f5,$f18,$f7,$f5
    # Line 940
    madd.d	$f12,$f12,$f21,$f14
    # Line 941
    sdc1	$f16,32480($s0)
    # Line 937
    sdc1	$f11,32464($s0)
    # Line 936
    madd.d	$f9,$f9,$f17,$f14
    # Line 933
    sdc1	$f8,32448($s0)
    # Line 942
    add.d	$f15,$f15,$f16
    # Line 932
    madd.d	$f5,$f5,$f13,$f14
    # Line 942
    sdc1	$f15,32488($s0)
    # Line 938
    add.d	$f10,$f10,$f11
    # Line 940
    sdc1	$f12,32392($s0)
    # Line 938
    sdc1	$f10,32472($s0)
    # Line 934
    add.d	$f7,$f7,$f8
    # Line 936
    sdc1	$f9,32384($s0)
    # Line 934
    sdc1	$f7,32456($s0)
    # Line 942
    b	.L0d961190
    # Line 932
    sdc1	$f5,32376($s0)
.L0d961600:
    # Line 1024
    ldc1	$f31,32432($s0)
    ldc1	$f1,32440($s0)
    # Line 1017
    cvt.d.s	$f14,$f24
    # Line 1020
    ldc1	$f21,32416($s0)
    # Line 1016
    ldc1	$f15,32400($s0)
    # Line 1025
    madd.d	$f29,$f1,$f31,$f14
    # Line 1020
    ldc1	$f0,32424($s0)
    # Line 1016
    ldc1	$f25,32408($s0)
    # Line 1021
    madd.d	$f17,$f0,$f21,$f14
    # Line 1016
    cvt.d.s	$f13,$f20
    # Line 1017
    madd.d	$f14,$f25,$f15,$f14
    # Line 1024
    ldc1	$f23,128($sp)
    madd.d	$f23,$f23,$f31,$f13
    # Line 1016
    cvt.d.s	$f27,$f22
    # Line 1020
    madd.d	$f16,$f19,$f21,$f13
    # Line 1016
    madd.d	$f13,$f18,$f15,$f13
    # Line 1024
    madd.d	$f23,$f23,$f1,$f27
    # Line 1017
    sdc1	$f14,32448($s0)
    # Line 1021
    sdc1	$f17,32464($s0)
    # Line 1020
    madd.d	$f16,$f16,$f0,$f27
    # Line 1025
    sdc1	$f29,32480($s0)
    # Line 1026
    sub.d	$f29,$f29,$f31
    # Line 1016
    madd.d	$f13,$f13,$f25,$f27
    # Line 1026
    sdc1	$f29,32488($s0)
    # Line 1022
    sub.d	$f17,$f17,$f21
    # Line 1024
    sdc1	$f23,32392($s0)
    # Line 1022
    sdc1	$f17,32472($s0)
    # Line 1018
    sub.d	$f14,$f14,$f15
    # Line 1020
    sdc1	$f16,32384($s0)
    # Line 1018
    sdc1	$f14,32456($s0)
    # Line 1026
    b	.L0d96141c
    # Line 1016
    sdc1	$f13,32376($s0)
.end SetInitialParameters

# Function: __glCrmFillAATriangle
# Declared: Line 1092 (Source lines: 1095-1575)
# Address: 0x0d961680 - 0x0d962cb8 (Size: 5688 bytes, Frame: 176)
.globl __glCrmFillAATriangle
.ent __glCrmFillAATriangle
__glCrmFillAATriangle:
    # Line 1117
    lwc1	$f12,30192($a0)
    # Line 1116
    lwc1	$f13,30188($a0)
    # Line 1115
    lwc1	$f14,30184($a0)
    # Line 1114
    lwc1	$f15,30180($a0)
    # Line 1111
    lw	$a5,32188($a0)
    lw	$a6,32184($a0)
    # Line 1095
    addiu	$sp,$sp,-944
    # Line 1119
    sw	$a0,392($sp)
    # Line 1142
    lw	$v1,3736($a0)
    li	$v0,1
    sllv	$v0,$v0,$v1
    mtc1	$v0,$f11
    cvt.s.w	$f11,$f11
    # Line 1144
    lwc1	$f10,128($a3)
    mul.s	$f10,$f10,$f11
    trunc.w.s	$f10,$f10
    cvt.s.w	$f10,$f10
    div.s	$f10,$f10,$f11
    # Line 1142
    lwc1	$f5,128($a1)
    mul.s	$f5,$f5,$f11
    trunc.w.s	$f5,$f5
    cvt.s.w	$f5,$f5
    div.s	$f5,$f5,$f11
    # Line 1146
    lwc1	$f8,132($a2)
    mul.s	$f8,$f8,$f11
    trunc.w.s	$f8,$f8
    cvt.s.w	$f8,$f8
    div.s	$f8,$f8,$f11
    # Line 1147
    lwc1	$f9,132($a3)
    mul.s	$f9,$f9,$f11
    trunc.w.s	$f9,$f9
    cvt.s.w	$f9,$f9
    div.s	$f9,$f9,$f11
    # Line 1145
    lwc1	$f7,132($a1)
    mul.s	$f7,$f7,$f11
    trunc.w.s	$f7,$f7
    cvt.s.w	$f7,$f7
    div.s	$f7,$f7,$f11
    # Line 1143
    lwc1	$f6,128($a2)
    mul.s	$f6,$f6,$f11
    trunc.w.s	$f6,$f6
    cvt.s.w	$f6,$f6
    div.s	$f6,$f6,$f11
    # Line 1147
    sub.s	$f7,$f7,$f9
    sub.s	$f8,$f8,$f9
    # Line 1111
    sd	$a6,816($sp)
    # Line 1147
    sub.s	$f5,$f5,$f10
    # Line 1111
    sd	$a5,824($sp)
    # Line 1147
    sub.s	$f6,$f6,$f10
    # Line 1095
    sd	$a4,832($sp)
    # Line 1147
    mul.s	$f5,$f5,$f8
    sd	$ra,904($sp)
    nmsub.s	$f5,$f5,$f6,$f7
    sd	$gp,872($sp)
    # Line 1095
    sd	$s0,856($sp)
    sd	$s1,848($sp)
    # Line 1147
    mtc1	$zero,$f0
    # Line 1095
    sd	$s2,840($sp)
    sd	$s3,864($sp)
    move	$s3,$a3
    # Line 1114
    sdc1	$f15,696($sp)
    # Line 1147
    c.eq.s	$f5,$f0
    # Line 1095
    move	$s2,$a2
    lui	$at,0xf
    # Line 1115
    sdc1	$f14,720($sp)
    # Line 1095
    move	$s1,$a1
    addiu	$at,$at,-2292
    # Line 1116
    sdc1	$f13,704($sp)
    # Line 1095
    move	$s0,$a0
    # Line 1117
    sdc1	$f12,712($sp)
    # Line 1147
    bc1t	.L0d961c3c
    # Line 1095
    addu	$gp,$t9,$at
    # Line 1159
    lwc1	$f16,3544($a0)
    div.s	$f16,$f16,$f5
    # Line 1164
    lw	$a3,8($a2)
    # Line 1163
    lw	$a2,8($a1)
    # Line 1162
    lw	$a1,30436($s0)
    # Line 1159
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$a0,$sp,16
    # Line 1163
    sd	$a2,792($sp)
    # Line 1171
    addiu	$a0,$a0,280
    # Line 1162
    sd	$a1,808($sp)
    # Line 1159
    addiu	$t9,$t9,-7296
    # Line 1171
    move	$a1,$s1
    move	$a2,$s2
    # Line 1164
    sd	$a3,800($sp)
    # Line 1171
    move	$a3,$s3
    bal __glCrmRenderPointDepthRGBA
    # Line 1159
    sdc1	$f16,688($sp)
    # Line 1171
    beqz	$v0,.L0d961c3c
    # Line 1172
    nop	# was lw $t9, -32736($gp) # &sub_0d960000
    move	$a1,$s2
    move	$a2,$s3
    addiu	$t9,$t9,-7296
    move	$a3,$s1
    addiu	$a0,$sp,16
    bal __glCrmRenderPointDepthRGBA
    addiu	$a0,$a0,296
    beqz	$v0,.L0d961c3c
    # Line 1173
    nop	# was lw $t9, -32736($gp) # &sub_0d960000
    move	$a1,$s3
    move	$a2,$s1
    addiu	$t9,$t9,-7296
    move	$a3,$s2
    addiu	$a0,$sp,16
    bal __glCrmRenderPointDepthRGBA
    addiu	$a0,$a0,312
    beqz	$v0,.L0d961c3c
    # Line 1180
    addiu	$a0,$sp,16
    # lw $t9, -32736($gp) # &sub_0d960000
    li	$a1,4
    addiu	$a0,$a0,336
    lw	$a3,1908($s0)
    li	$a2,4354
    addiu	$t9,$t9,-6640
    xor	$a2,$a2,$a3
    li	$a3,8
    sd	$a1,752($sp)
    sltiu	$a2,$a2,1
    bal __glCrmRenderPointDepthRGBA
    movn	$a1,$a3,$a2
    ld	$a0,808($sp)
    andi	$a1,$a0,0x1
    andi	$a2,$a0,0x8
    sd	$a2,784($sp)
    beqz	$a1,.L0d9622a0
    andi	$a0,$a0,0x2
    beqz	$a0,.L0d961c5c
    # Line 1199
    ldc1	$f25,712($sp)
    ldc1	$f18,704($sp)
    # Line 1200
    ldc1	$f17,720($sp)
    # Line 1199
    ldc1	$f23,688($sp)
    # Line 1200
    ldc1	$f21,696($sp)
    # Line 1197
    ld	$a4,792($sp)
    # Line 1196
    lw	$at,8($s3)
    # Line 1198
    ld	$ra,800($sp)
    # Line 1197
    lwc1	$f3,0($at)
    # Line 1198
    lwc1	$f4,0($ra)
    # Line 1200
    mul.s	$f21,$f21,$f23
    # Line 1197
    lwc1	$f2,0($a4)
    # Line 1200
    mul.s	$f17,$f17,$f23
    # Line 1199
    mul.s	$f18,$f18,$f23
    # Line 1198
    sub.s	$f4,$f4,$f3
    # Line 1199
    mul.s	$f25,$f25,$f23
    # Line 1197
    sub.s	$f2,$f2,$f3
    # Line 1199
    mul.s	$f3,$f18,$f4
    msub.s	$f3,$f3,$f25,$f2
    # Line 1200
    mul.s	$f2,$f17,$f2
    msub.s	$f2,$f2,$f21,$f4
    swc1	$f2,30300($s0)
    # Line 1199
    swc1	$f3,30284($s0)
    # Line 1201
    lwc1	$f0,4($at)
    # Line 1202
    lwc1	$f1,4($ra)
    # Line 1201
    lwc1	$f31,4($a4)
    # Line 1202
    sub.s	$f1,$f1,$f0
    # Line 1201
    sub.s	$f31,$f31,$f0
    # Line 1203
    mul.s	$f0,$f18,$f1
    msub.s	$f0,$f0,$f31,$f25
    # Line 1204
    mul.s	$f31,$f17,$f31
    msub.s	$f31,$f31,$f1,$f21
    swc1	$f31,30304($s0)
    # Line 1203
    swc1	$f0,30288($s0)
    # Line 1205
    lwc1	$f27,8($at)
    # Line 1206
    lwc1	$f29,8($ra)
    # Line 1205
    lwc1	$f23,8($a4)
    # Line 1206
    sub.s	$f29,$f29,$f27
    # Line 1205
    sub.s	$f23,$f23,$f27
    # Line 1207
    mul.s	$f27,$f18,$f29
    msub.s	$f27,$f27,$f23,$f25
    # Line 1208
    mul.s	$f23,$f17,$f23
    msub.s	$f23,$f23,$f29,$f21
    swc1	$f23,30308($s0)
    # Line 1207
    swc1	$f27,30292($s0)
    # Line 1209
    lwc1	$f27,12($at)
    lwc1	$f23,12($a4)
    # Line 1210
    lwc1	$f19,12($ra)
    # Line 1209
    sub.s	$f23,$f23,$f27
    # Line 1210
    sub.s	$f19,$f19,$f27
    # Line 1212
    mul.s	$f17,$f17,$f23
    msub.s	$f17,$f17,$f19,$f21
    # Line 1211
    mul.s	$f18,$f18,$f19
    msub.s	$f18,$f18,$f23,$f25
    sd	$a0,928($sp)
    # Line 1196
    sd	$at,776($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    # Line 1212
    swc1	$f17,30312($s0)
    # Line 1211
    swc1	$f18,30296($s0)
    # Line 1215
    move	$a3,$s3
    # Line 1196
    addiu	$t9,$t9,-7008
    # Line 1215
    lwc1	$f18,0($at)
    move	$a2,$s2
    move	$a1,$s1
    lwc1	$f17,0($ra)
    addiu	$a0,$sp,16
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f16,0($a4)
    # Line 1216
    ld	$a1,792($sp)
    ld	$a3,776($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$a0,$sp,16
    ld	$a2,800($sp)
    addiu	$a0,$a0,16
    lwc1	$f18,4($a3)
    addiu	$t9,$t9,-7008
    move	$a3,$s3
    lwc1	$f17,4($a2)
    move	$a2,$s2
    lwc1	$f16,4($a1)
    bal __glCrmRenderPointDepthRGBA
    move	$a1,$s1
    # Line 1217
    ld	$a1,792($sp)
    ld	$a3,776($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$a0,$sp,16
    ld	$a2,800($sp)
    addiu	$a0,$a0,32
    lwc1	$f18,8($a3)
    addiu	$t9,$t9,-7008
    move	$a3,$s3
    lwc1	$f17,8($a2)
    move	$a2,$s2
    lwc1	$f16,8($a1)
    bal __glCrmRenderPointDepthRGBA
    move	$a1,$s1
    # Line 1218
    ld	$a1,792($sp)
    ld	$a3,776($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$a0,$sp,16
    ld	$a2,800($sp)
    addiu	$a0,$a0,48
    lwc1	$f18,12($a3)
    addiu	$t9,$t9,-7008
    move	$a3,$s3
    lwc1	$f17,12($a2)
    move	$a2,$s2
    lwc1	$f16,12($a1)
    bal __glCrmRenderPointDepthRGBA
    move	$a1,$s1
    b	.L0d961c84
    ld	$a0,928($sp)
.L0d961a40:
    # Line 1501
    lw	$t9,12536($s0)
    move	$a0,$s0
    jal	sub_0d960000
    move	$a1,$s1
    # Line 1502
    lw	$t9,12536($s0)
    # Line 1501
    sdc1	$f0,648($sp)
    # Line 1502
    move	$a1,$s2
    move	$a0,$s0
    jalr	$t9
    # Line 1501
    swc1	$f0,512($sp)
    # Line 1503
    lw	$t9,12536($s0)
    # Line 1502
    sdc1	$f0,896($sp)
    # Line 1503
    move	$a1,$s3
    move	$a0,$s0
    jalr	$t9
    # Line 1502
    swc1	$f0,516($sp)
    ldc1	$f5,688($sp)
    la	$a6,sub_0d960000
    ldc1	$f6,648($sp)
    addiu	$a7,$sp,16
    ldc1	$f7,896($sp)
    # Line 1503
    mov.s	$f8,$f0
    addiu	$a6,$a6,-7008
.L0d961a9c:
    # Line 1507
    ldc1	$f25,704($sp)
    ldc1	$f27,712($sp)
    sub.s	$f29,$f7,$f8
    mul.s	$f25,$f25,$f5
    sub.s	$f23,$f6,$f8
    mul.s	$f27,$f27,$f5
    # Line 1508
    ldc1	$f31,720($sp)
    # Line 1507
    mul.s	$f25,$f29,$f25
    msub.s	$f25,$f25,$f27,$f23
    # Line 1508
    ldc1	$f27,696($sp)
    mul.s	$f31,$f31,$f5
    mul.s	$f27,$f27,$f5
    mul.s	$f23,$f23,$f31
    msub.s	$f23,$f23,$f27,$f29
    # Line 1507
    swc1	$f25,30432($s0)
    # Line 1508
    swc1	$f23,30428($s0)
    # Line 1511
    move	$a3,$s3
    move	$t9,$a6
    lwc1	$f18,104($s3)
    move	$a2,$s2
    move	$a1,$s1
    lwc1	$f17,104($s2)
    addiu	$a0,$a7,256
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f16,104($s1)
.L0d961b00:
    # Line 1516
    lwc1	$f0,132($s2)
    # Line 1515
    lwc1	$f29,132($s1)
    lwc1	$f27,3540($s0)
    # Line 1517
    lwc1	$f3,132($s3)
    # Line 1525
    sub.s	$f1,$f29,$f0
    # Line 1516
    add.s	$f0,$f0,$f27
    # Line 1515
    add.s	$f31,$f29,$f27
    # Line 1525
    ld	$a7,832($sp)
    # Line 1517
    add.s	$f3,$f3,$f27
    # Line 1524
    lwc1	$f4,128($s1)
    # Line 1515
    trunc.w.s	$f31,$f31
    # Line 1525
    sdc1	$f1,560($sp)
    # Line 1517
    trunc.w.s	$f3,$f3
    # Line 1524
    lwc1	$f1,128($s2)
    # Line 1525
    cvt.s.w	$f2,$f31
    ldc1	$f15,704($sp)
    ldc1	$f14,696($sp)
    # Line 1516
    trunc.w.s	$f0,$f0
    # Line 1517
    mfc1	$t2,$f3
    # Line 1524
    sub.s	$f1,$f4,$f1
    # Line 1517
    sd	$t2,768($sp)
    # Line 1516
    mfc1	$t1,$f0
    # Line 1524
    sdc1	$f1,552($sp)
    # Line 1525
    add.s	$f27,$f27,$f2
    # Line 1515
    mfc1	$t0,$f31
    # Line 1516
    sd	$t1,736($sp)
    # Line 1515
    sd	$t0,760($sp)
    # Line 1525
    sub.s	$f27,$f27,$f29
    div.s	$f14,$f14,$f15
    beqz	$a7,.L0d9620f8
    sdc1	$f27,672($sp)
    # Line 1529
    ldc1	$f13,672($sp)
    # lw $t9, -25220($gp) # &__glSnapXLeft
    ld	$s3,792($sp)
    move	$a0,$s0
    jal	__glSnapXLeft
    madd.s	$f13,$f4,$f14,$f13
    # Line 1531
    lw	$ra,30148($s0)
    mtc1	$ra,$f16
    ldc1	$f19,488($sp)
    ldc1	$f18,472($sp)
    ldc1	$f23,456($sp)
    cvt.s.w	$f16,$f16
    lwc1	$f17,3540($s0)
    # lw $t9, -32736($gp) # &sub_0d960000
    lwc1	$f21,128($s1)
    lwc1	$f15,512($sp)
    addiu	$t9,$t9,3984
    add.s	$f16,$f16,$f17
    move	$a0,$s0
    move	$a1,$s1
    sdc1	$f23,0($sp)
    move	$a2,$s3
    ldc1	$f17,672($sp)
    bal __glCrmRenderPointDepthRGBA
    sub.s	$f16,$f16,$f21
    ld	$s3,736($sp)
    ld	$at,760($sp)
    bne	$at,$s3,.L0d9621ec
    # Line 1534
    ldc1	$f16,560($sp)
    # Line 1536
    ld	$t8,768($sp)
.L0d961bf4:
    la	$s1,sub_0d960000
    bne	$s3,$t8,.L0d96223c
    addiu	$s1,$s1,-5856
.L0d961c00:
    # Line 1569
    ld	$ra,784($sp)
.L0d961c04:
    # Line 1568
    li	$t9,0x8080
    addu	$t9,$t9,$s0
    # Line 1569
    beqz	$ra,.L0d961c3c
    # Line 1568
    sw	$zero,0($t9)
    # Line 1569
    lw	$ra,32088($s0)
    sll	$ra,$ra,0x10
    bgez	$ra,.L0d961c40
    ld	$s2,840($sp)
    lw	$a1,2484($s0)
    lw	$a1,0($a1)
    li	$at,0x8062
    beq	$a1,$at,.L0d9628d8
    li	$a2,7681
    beq	$a1,$a2,.L0d9628d8
.L0d961c3c:
    ld	$s2,840($sp)
.L0d961c40:
    ld	$s1,848($sp)
    ld	$ra,904($sp)
    ld	$s0,856($sp)
    ld	$s3,864($sp)
    # Line 1575
    ld	$gp,872($sp)
    jr	$ra
    addiu	$sp,$sp,944
.L0d961c5c:
    # Line 1220
    lw	$a3,28072($s0)
    lw	$a3,8($a3)
    # Line 1221
    lwc1	$f21,0($a3)
    swc1	$f21,30208($s0)
    # Line 1222
    lwc1	$f19,4($a3)
    swc1	$f19,30212($s0)
    # Line 1223
    lwc1	$f18,8($a3)
    swc1	$f18,30216($s0)
    # Line 1224
    lwc1	$f17,12($a3)
    swc1	$f17,30220($s0)
.L0d961c84:
    # Line 1226
    ld	$a4,784($sp)
    beqz	$a4,.L0d961ca0
    nop
    lw	$a5,32088($s0)
    sll	$a5,$a5,0x10
    bltz	$a5,.L0d962348
    nop
.L0d961ca0:
    # Line 1374
    lbu	$a6,28216($s0)
    beqz	$a6,.L0d962018
    # Line 1471
    ld	$a1,808($sp)
    # Line 1374
    lw	$a7,32088($s0)
    sll	$a7,$a7,0x10
    bltz	$a7,.L0d962014
    # Line 1390
    ldc1	$f27,688($sp)
    # Line 1391
    ldc1	$f25,696($sp)
    # Line 1381
    lwc1	$f0,140($s2)
    # Line 1382
    lwc1	$f31,140($s3)
    # Line 1383
    lwc1	$f3,48($s3)
    # Line 1389
    lwc1	$f5,48($s2)
    # Line 1380
    lwc1	$f18,140($s1)
    # Line 1388
    lwc1	$f4,48($s1)
    # Line 1383
    mul.s	$f3,$f3,$f31
    # Line 1391
    ldc1	$f19,720($sp)
    # Line 1389
    msub.s	$f5,$f3,$f5,$f0
    # Line 1390
    ldc1	$f21,704($sp)
    # Line 1391
    mul.s	$f25,$f25,$f27
    # Line 1390
    ldc1	$f29,712($sp)
    # Line 1388
    msub.s	$f3,$f3,$f4,$f18
    # Line 1391
    mul.s	$f19,$f19,$f27
    # Line 1390
    mul.s	$f21,$f21,$f27
    mul.s	$f29,$f29,$f27
    mul.s	$f4,$f21,$f5
    msub.s	$f4,$f4,$f3,$f29
    # Line 1391
    mul.s	$f3,$f19,$f3
    msub.s	$f3,$f3,$f5,$f25
    # Line 1385
    lwc1	$f1,56($s3)
    # Line 1384
    lwc1	$f2,52($s3)
    # Line 1386
    lwc1	$f27,60($s3)
    # Line 1391
    swc1	$f3,30400($s0)
    # Line 1390
    swc1	$f4,30380($s0)
    # Line 1393
    lwc1	$f4,52($s2)
    # Line 1384
    mul.s	$f2,$f2,$f31
    # Line 1392
    lwc1	$f3,52($s1)
    # Line 1393
    msub.s	$f4,$f2,$f4,$f0
    # Line 1392
    msub.s	$f2,$f2,$f3,$f18
    # Line 1394
    mul.s	$f3,$f21,$f4
    msub.s	$f3,$f3,$f2,$f29
    # Line 1395
    mul.s	$f2,$f19,$f2
    msub.s	$f2,$f2,$f4,$f25
    swc1	$f2,30404($s0)
    # Line 1394
    swc1	$f3,30384($s0)
    # Line 1397
    lwc1	$f3,56($s2)
    # Line 1385
    mul.s	$f1,$f1,$f31
    # Line 1396
    lwc1	$f2,56($s1)
    # Line 1397
    msub.s	$f3,$f1,$f3,$f0
    # Line 1396
    msub.s	$f1,$f1,$f2,$f18
    # Line 1398
    mul.s	$f2,$f21,$f3
    msub.s	$f2,$f2,$f1,$f29
    # Line 1399
    mul.s	$f1,$f19,$f1
    msub.s	$f1,$f1,$f3,$f25
    # Line 1382
    sdc1	$f31,656($sp)
    # Line 1399
    swc1	$f1,30408($s0)
    # Line 1398
    swc1	$f2,30388($s0)
    # Line 1401
    lwc1	$f23,60($s2)
    # Line 1386
    mul.s	$f27,$f27,$f31
    # Line 1400
    lwc1	$f31,60($s1)
    # Line 1401
    msub.s	$f23,$f27,$f23,$f0
    # Line 1400
    msub.s	$f27,$f27,$f31,$f18
    # Line 1391
    sdc1	$f19,624($sp)
    # Line 1403
    mul.s	$f19,$f19,$f27
    msub.s	$f19,$f19,$f23,$f25
    # Line 1390
    sdc1	$f21,616($sp)
    # Line 1402
    mul.s	$f21,$f21,$f23
    msub.s	$f21,$f21,$f27,$f29
    # Line 1406
    addiu	$a1,$s0,30136
    sd	$a1,744($sp)
    # Line 1381
    sdc1	$f0,680($sp)
    # Line 1406
    lw	$t9,12520($s0)
    # Line 1403
    swc1	$f19,30412($s0)
    # Line 1402
    swc1	$f21,30392($s0)
    # Line 1406
    lwc1	$f17,60($s1)
    lwc1	$f16,56($s1)
    lwc1	$f15,52($s1)
    lwc1	$f14,48($s1)
    mul.s	$f17,$f17,$f18
    # Line 1380
    sdc1	$f18,664($sp)
    # Line 1406
    mul.s	$f16,$f16,$f18
    # Line 1390
    sdc1	$f29,608($sp)
    # Line 1406
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    # Line 1391
    sdc1	$f25,600($sp)
    # Line 1406
    jal	sub_0d960000
    mul.s	$f14,$f14,$f18
    lwc1	$f19,60($s1)
    ldc1	$f18,664($sp)
    mul.s	$f19,$f19,$f0
    mul.s	$f18,$f18,$f19
    # Line 1412
    swc1	$f18,180($s1)
    # Line 1413
    lwc1	$f14,48($s2)
    # Line 1406
    sdc1	$f18,584($sp)
    # Line 1413
    ldc1	$f18,680($sp)
    lwc1	$f17,60($s3)
    lwc1	$f16,56($s2)
    lwc1	$f15,52($s2)
    lw	$t9,12520($s0)
    mul.s	$f17,$f17,$f18
    mul.s	$f16,$f16,$f18
    mul.s	$f15,$f15,$f18
    ld	$a1,744($sp)
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f19,60($s2)
    ldc1	$f18,680($sp)
    mul.s	$f19,$f19,$f0
    mul.s	$f18,$f18,$f19
    # Line 1419
    swc1	$f18,180($s2)
    # Line 1420
    lwc1	$f14,48($s3)
    # Line 1413
    sdc1	$f18,592($sp)
    # Line 1420
    ldc1	$f18,656($sp)
    lwc1	$f17,60($s3)
    lwc1	$f16,56($s3)
    lwc1	$f15,52($s3)
    lw	$t9,12520($s0)
    mul.s	$f17,$f17,$f18
    mul.s	$f16,$f16,$f18
    mul.s	$f15,$f15,$f18
    ld	$a1,744($sp)
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f25,60($s3)
    # Line 1430
    ldc1	$f19,656($sp)
    # Line 1420
    mul.s	$f25,$f25,$f0
    # Line 1430
    ldc1	$f27,592($sp)
    nmsub.s	$f27,$f27,$f19,$f25
    ldc1	$f21,584($sp)
    ldc1	$f23,616($sp)
    nmsub.s	$f21,$f21,$f19,$f25
    ldc1	$f29,608($sp)
    mul.s	$f23,$f27,$f23
    msub.s	$f23,$f23,$f21,$f29
    # Line 1431
    ldc1	$f29,624($sp)
    mul.s	$f21,$f21,$f29
    ldc1	$f29,600($sp)
    msub.s	$f21,$f21,$f27,$f29
    # Line 1420
    mul.s	$f25,$f19,$f25
    # Line 1426
    swc1	$f25,180($s3)
    # Line 1430
    swc1	$f23,30396($s0)
    # Line 1431
    swc1	$f21,30416($s0)
    # Line 1435
    lwc1	$f18,48($s3)
    lwc1	$f17,48($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,680($sp)
    # lw $t9, -32736($gp) # &sub_0d960000
    lwc1	$f16,48($s1)
    move	$a3,$s3
    mul.s	$f17,$f17,$f19
    ldc1	$f19,664($sp)
    move	$a2,$s2
    addiu	$t9,$t9,-7008
    move	$a1,$s1
    addiu	$a0,$sp,16
    addiu	$a0,$a0,80
    bal __glCrmRenderPointDepthRGBA
    mul.s	$f16,$f16,$f19
    # Line 1439
    ldc1	$f19,656($sp)
    lwc1	$f18,52($s3)
    lwc1	$f17,52($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,680($sp)
    lwc1	$f16,52($s1)
    # lw $t9, -32736($gp) # &sub_0d960000
    move	$a3,$s3
    mul.s	$f17,$f17,$f19
    ldc1	$f19,664($sp)
    move	$a2,$s2
    addiu	$t9,$t9,-7008
    move	$a1,$s1
    addiu	$a0,$sp,16
    addiu	$a0,$a0,96
    bal __glCrmRenderPointDepthRGBA
    mul.s	$f16,$f16,$f19
    # Line 1443
    ldc1	$f19,656($sp)
    lwc1	$f18,56($s3)
    lwc1	$f17,56($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,680($sp)
    lwc1	$f16,56($s1)
    # lw $t9, -32736($gp) # &sub_0d960000
    move	$a3,$s3
    mul.s	$f17,$f17,$f19
    ldc1	$f19,664($sp)
    move	$a2,$s2
    addiu	$t9,$t9,-7008
    move	$a1,$s1
    addiu	$a0,$sp,16
    addiu	$a0,$a0,128
    bal __glCrmRenderPointDepthRGBA
    mul.s	$f16,$f16,$f19
    # Line 1447
    ldc1	$f19,656($sp)
    lwc1	$f18,60($s3)
    lwc1	$f17,60($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,680($sp)
    lwc1	$f16,60($s1)
    # lw $t9, -32736($gp) # &sub_0d960000
    move	$a3,$s3
    mul.s	$f17,$f17,$f19
    ldc1	$f19,664($sp)
    move	$a2,$s2
    addiu	$t9,$t9,-7008
    move	$a1,$s1
    addiu	$a0,$sp,16
    addiu	$a0,$a0,112
    bal __glCrmRenderPointDepthRGBA
    mul.s	$f16,$f16,$f19
    # Line 1451
    # lw $t9, -32736($gp) # &sub_0d960000
    move	$a3,$s3
    lwc1	$f18,180($s3)
    move	$a2,$s2
    addiu	$t9,$t9,-7008
    lwc1	$f17,180($s2)
    move	$a1,$s1
    addiu	$a0,$sp,16
    lwc1	$f16,180($s1)
    bal __glCrmRenderPointDepthRGBA
    addiu	$a0,$a0,144
.L0d962014:
    # Line 1471
    ld	$a1,808($sp)
.L0d962018:
    andi	$a1,$a1,0x4000
    beqz	$a1,.L0d9620b8
    # Line 1489
    ld	$a2,808($sp)
    # Line 1477
    lwc1	$f29,136($s3)
    lwc1	$f23,136($s1)
    # Line 1478
    lwc1	$f27,136($s2)
    # Line 1480
    ldc1	$f0,688($sp)
    # Line 1479
    ldc1	$f25,712($sp)
    # Line 1477
    sub.s	$f23,$f23,$f29
    # Line 1478
    sub.s	$f27,$f27,$f29
    # Line 1479
    ldc1	$f29,704($sp)
    mul.s	$f25,$f25,$f0
    mul.s	$f29,$f29,$f0
    mul.s	$f25,$f25,$f23
    # Line 1480
    ldc1	$f31,720($sp)
    # Line 1479
    nmsub.s	$f25,$f25,$f27,$f29
    # Line 1480
    ldc1	$f29,696($sp)
    mul.s	$f31,$f31,$f0
    mul.s	$f29,$f29,$f0
    mul.s	$f23,$f23,$f31
    msub.s	$f23,$f23,$f27,$f29
    # Line 1481
    trunc.w.s	$f21,$f25
    # Line 1486
    # lw $t9, -32736($gp) # &sub_0d960000
    # Line 1479
    swc1	$f25,30336($s0)
    # Line 1481
    mfc1	$a1,$f21
    swc1	$f21,30324($s0)
    # Line 1482
    sll	$a1,$a1,0x5
    sw	$a1,30328($s0)
    # Line 1486
    move	$a3,$s3
    # Line 1480
    swc1	$f23,30332($s0)
    # Line 1486
    addiu	$a0,$sp,16
    addiu	$t9,$t9,-7008
    lwc1	$f18,136($s3)
    move	$a2,$s2
    addiu	$a0,$a0,64
    lwc1	$f17,136($s2)
    move	$a1,$s1
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f16,136($s1)
    # Line 1489
    ld	$a2,808($sp)
.L0d9620b8:
    andi	$a2,$a2,0x1000
    beqz	$a2,.L0d962330
    ld	$v1,808($sp)
    lw	$a4,1912($s0)
.L0d9620c8:
    li	$a3,4354
    bne	$a3,$a4,.L0d961a40
    ldc1	$f5,688($sp)
    # Line 1498
    lwc1	$f8,104($s3)
    # Line 1496
    lwc1	$f6,104($s1)
    # Line 1497
    lwc1	$f7,104($s2)
    la	$a6,sub_0d960000
    addiu	$a7,$sp,16
    swc1	$f7,516($sp)
    addiu	$a6,$a6,-7008
    # Line 1498
    b	.L0d961a9c
    # Line 1496
    swc1	$f6,512($sp)
.L0d9620f8:
    # Line 1549
    ldc1	$f13,672($sp)
    # lw $t9, -25216($gp) # &__glSnapXRight
    addiu	$a0,$s0,30136
    jal	__glSnapXRight
    madd.s	$f13,$f4,$f14,$f13
    ld	$t0,736($sp)
    ld	$a7,760($sp)
    bne	$a7,$t0,.L0d96292c
    # Line 1552
    ldc1	$f16,560($sp)
    # Line 1555
    ld	$t9,768($sp)
.L0d962120:
    ld	$t8,736($sp)
    la	$s3,sub_0d960000
    beq	$t8,$t9,.L0d961c00
    addiu	$s3,$s3,-5856
    # Line 1561
    ldc1	$f17,712($sp)
    ldc1	$f16,720($sp)
    # Line 1560
    ld	$ra,736($sp)
    # Line 1561
    div.s	$f16,$f16,$f17
    # Line 1560
    mtc1	$ra,$f15
    cvt.s.w	$f15,$f15
    lwc1	$f18,3540($s0)
    lwc1	$f17,132($s2)
    add.s	$f15,$f15,$f18
    # Line 1561
    # lw $t9, -25220($gp) # &__glSnapXLeft
    ld	$s1,800($sp)
    # Line 1560
    sub.s	$f15,$f15,$f17
    # Line 1561
    lwc1	$f13,128($s2)
    mov.s	$f14,$f16
    move	$a0,$s0
    # Line 1560
    sdc1	$f15,520($sp)
    # Line 1561
    jal	__glSnapXLeft
    madd.s	$f13,$f13,$f15,$f16
    # Line 1563
    lw	$ra,30148($s0)
    mtc1	$ra,$f16
    ldc1	$f19,496($sp)
    ldc1	$f18,480($sp)
    ldc1	$f23,464($sp)
    cvt.s.w	$f16,$f16
    lwc1	$f17,3540($s0)
    # lw $t9, -32736($gp) # &sub_0d960000
    lwc1	$f21,128($s2)
    lwc1	$f15,516($sp)
    addiu	$t9,$t9,3984
    add.s	$f16,$f16,$f17
    move	$a0,$s0
    move	$a1,$s2
    sdc1	$f23,0($sp)
    move	$a2,$s1
    ldc1	$f17,520($sp)
    bal __glCrmRenderPointDepthRGBA
    sub.s	$f16,$f16,$f21
    # Line 1564
    ld	$a1,736($sp)
    ld	$a2,768($sp)
    move	$t9,$s3
    move	$a0,$s0
    lw	$a5,508($sp)
    lw	$a4,504($sp)
    bal __glCrmRenderPointDepthRGBA
    addiu	$a3,$sp,16
    b	.L0d961c04
    # Line 1569
    ld	$ra,784($sp)
.L0d9621ec:
    # Line 1534
    ldc1	$f15,552($sp)
    div.s	$f15,$f15,$f16
    # lw $t9, -25216($gp) # &__glSnapXRight
    ldc1	$f16,672($sp)
    lwc1	$f13,128($s1)
    mov.s	$f14,$f15
    addiu	$a0,$s0,30136
    jal	__glSnapXRight
    madd.s	$f13,$f13,$f15,$f16
    # Line 1536
    # lw $t9, -32736($gp) # &sub_0d960000
    lw	$a5,508($sp)
    addiu	$t9,$t9,-5856
    addiu	$a3,$sp,16
    move	$a2,$s3
    ld	$a1,760($sp)
    lw	$a4,504($sp)
    bal __glCrmRenderPointDepthRGBA
    move	$a0,$s0
    b	.L0d961bf4
    ld	$t8,768($sp)
.L0d96223c:
    # Line 1542
    ldc1	$f16,712($sp)
    ldc1	$f15,720($sp)
    div.s	$f15,$f15,$f16
    mtc1	$s3,$f16
    cvt.s.w	$f16,$f16
    lwc1	$f18,3540($s0)
    lwc1	$f17,132($s2)
    add.s	$f16,$f16,$f18
    # lw $t9, -25216($gp) # &__glSnapXRight
    sub.s	$f16,$f16,$f17
    lwc1	$f13,128($s2)
    mov.s	$f14,$f15
    addiu	$a0,$s0,30136
    jal	__glSnapXRight
    madd.s	$f13,$f13,$f15,$f16
    # Line 1544
    ld	$a2,768($sp)
    move	$t9,$s1
    move	$a0,$s0
    move	$a1,$s3
    lw	$a5,508($sp)
    lw	$a4,504($sp)
    bal __glCrmRenderPointDepthRGBA
    addiu	$a3,$sp,16
    b	.L0d961c04
    # Line 1569
    ld	$ra,784($sp)
.L0d9622a0:
    # Line 1374
    beqz	$a0,.L0d96270c
    # Line 1464
    ldc1	$f21,712($sp)
    ldc1	$f25,688($sp)
    ldc1	$f18,704($sp)
    # Line 1462
    ld	$ra,792($sp)
    # Line 1461
    lw	$v0,8($s3)
    # Line 1463
    ld	$at,800($sp)
    # Line 1462
    lwc1	$f23,0($v0)
    # Line 1463
    lwc1	$f19,0($at)
    # Line 1462
    lwc1	$f17,0($ra)
    # Line 1464
    mul.s	$f18,$f18,$f25
    # Line 1463
    sub.s	$f19,$f19,$f23
    # Line 1464
    mul.s	$f21,$f21,$f25
    # Line 1462
    sub.s	$f17,$f17,$f23
    # Line 1465
    ldc1	$f23,720($sp)
    # Line 1464
    mul.s	$f18,$f19,$f18
    msub.s	$f18,$f18,$f17,$f21
    # Line 1465
    ldc1	$f21,696($sp)
    mul.s	$f23,$f23,$f25
    mul.s	$f21,$f21,$f25
    mul.s	$f17,$f17,$f23
    msub.s	$f17,$f17,$f19,$f21
    # Line 1461
    # lw $t9, -32736($gp) # &sub_0d960000
    # Line 1464
    swc1	$f18,30284($s0)
    # Line 1465
    swc1	$f17,30300($s0)
    # Line 1468
    move	$a3,$s3
    # Line 1461
    addiu	$t9,$t9,-7008
    # Line 1468
    lwc1	$f18,0($v0)
    move	$a2,$s2
    move	$a1,$s1
    lwc1	$f16,0($ra)
    addiu	$a0,$sp,16
    bal __glCrmRenderPointDepthRGBA
    lwc1	$f17,0($at)
    b	.L0d962018
    # Line 1471
    ld	$a1,808($sp)
.L0d962330:
    # Line 1489
    li	$a0,8200
    andi	$v1,$v1,0x2008
    bne	$v1,$a0,.L0d961b00
    nop
    b	.L0d9620c8
    lw	$a4,1912($s0)
.L0d962348:
    # Line 1234
    lw	$a1,2484($s0)
    lw	$a1,0($a1)
    li	$a2,0x8062
    beq	$a1,$a2,.L0d9629cc
    # Line 1231
    lw	$a3,28208($s0)
    # Line 1234
    li	$a2,7681
    beq	$a1,$a2,.L0d9629cc
    nop
.L0d962368:
    # Line 1251
    lwc1	$f12,60($s1)
    # Line 1255
    ldc1	$f19,_lit8_3ff0000000000000
    cvt.d.s	$f21,$f12
    c.eq.d $f21,$f19
    # Line 1253
    lwc1	$f11,60($s3)
    # Line 1255
    bc1f .L0d9623a0
    # Line 1252
    lwc1	$f10,60($s2)
    # Line 1255
    cvt.d.s	$f23,$f10
    c.eq.d $f23,$f19
    bc1f .L0d9623a4
    lwc1	$f4,_lit_37000000
    cvt.d.s	$f25,$f11
    c.eq.d $f25,$f19
    bc1t .L0d962c68
.L0d9623a0:
    lwc1	$f4,_lit_37000000
.L0d9623a4:
    abs.s	$f27,$f12
    c.lt.s $f27,$f4
    bc1f .L0d9623c4
    mtc1	$zero,$f31
    # Line 1256
    lwc1	$f29,_lit_b7000000
    # Line 1255
    c.lt.s $f12,$f31
    movf.s	$f29,$f4,$fcc5
    # Line 1256
    mov.s	$f12,$f29
.L0d9623c4:
    abs.s	$f0,$f10
    c.lt.s $f0,$f4
    bc1f .L0d9623e4
    mtc1	$zero,$f2
    # Line 1257
    lwc1	$f1,_lit_b7000000
    # Line 1256
    c.lt.s $f10,$f2
    movf.s	$f1,$f4,$fcc7
    # Line 1257
    mov.s	$f10,$f1
.L0d9623e4:
    abs.s	$f3,$f11
    c.lt.s	$f3,$f4
    bc1f	.L0d96240c
    # Line 1265
    lwc1	$f15,_lit_3f800000
    # Line 1257
    mtc1	$zero,$f6
    # Line 1258
    lwc1	$f5,_lit_b7000000
    # Line 1257
    c.lt.s $f11,$f6
    movf.s	$f5,$f4,$fcc1
    # Line 1258
    mov.s	$f11,$f5
    # Line 1265
    lwc1	$f15,_lit_3f800000
.L0d96240c:
    # Line 1267
    div.s	$f13,$f15,$f11
    # Line 1266
    div.s	$f14,$f15,$f10
    # Line 1265
    div.s	$f15,$f15,$f12
    lwc1	$f7,48($s1)
    # Line 1259
    lwc1	$f4,140($s1)
    # Line 1261
    lwc1	$f6,140($s3)
    # Line 1260
    lwc1	$f5,140($s2)
    # Line 1267
    lwc1	$f9,48($s3)
    # Line 1259
    mul.s	$f4,$f4,$f12
    # Line 1266
    lwc1	$f8,48($s2)
    # Line 1261
    mul.s	$f6,$f6,$f11
    # Line 1267
    lw	$a4,232($a3)
    # Line 1260
    mul.s	$f5,$f5,$f10
    # Line 1267
    li	$a5,1
    # Line 1261
    cvt.d.s	$f6,$f6
    # Line 1267
    mul.s	$f9,$f9,$f13
    # Line 1260
    cvt.d.s	$f5,$f5
    # Line 1266
    mul.s	$f8,$f8,$f14
    # Line 1267
    move	$a0,$a4
    # Line 1259
    cvt.d.s	$f4,$f4
    # Line 1267
    beq	$a4,$a5,.L0d962488
    # Line 1265
    mul.s	$f7,$f7,$f15
    # Line 1271
    lwc1	$f18,52($s3)
    # Line 1270
    lwc1	$f17,52($s2)
    # Line 1269
    lwc1	$f16,52($s1)
    # Line 1271
    mul.s	$f18,$f18,$f13
    swc1	$f18,448($sp)
    # Line 1270
    mul.s	$f17,$f17,$f14
    swc1	$f17,444($sp)
    # Line 1269
    mul.s	$f16,$f16,$f15
    swc1	$f16,440($sp)
.L0d962488:
    # Line 1280
    lw	$a7,4($a3)
    li	$a6,10497
    beq	$a6,$a7,.L0d962a9c
    # Line 1295
    lwc1	$f21,_lit_3f800000
    # Line 1296
    add.s	$f8,$f8,$f21
    # Line 1297
    add.s	$f9,$f9,$f21
    c.lt.s $f9,$f8
    li	$a1,1
    # Line 1298
    mov.s	$f11,$f8
    # Line 1297
    movf	$a1,$zero,$fcc3
    # Line 1295
    add.s	$f7,$f7,$f21
    movz.s	$f11,$f9,$a1
    # Line 1298
    c.lt.s $f11,$f7
    mov.s	$f10,$f7
    # Line 1297
    mov.s	$f13,$f9
    # Line 1298
    bc1f .L0d9624d0
    # Line 1297
    mov.s	$f14,$f8
    # Line 1298
    mov.s	$f11,$f7
.L0d9624d0:
    lwc1	$f23,_lit_40e00000
    c.lt.s $f23,$f11
    bc1t .L0d962514
    li	$a1,1
    c.lt.s $f14,$f13
    mov.s	$f11,$f14
    li	$a1,1
    movf	$a1,$zero,$fcc6
    movz.s	$f11,$f13,$a1
    c.lt.s $f10,$f11
    bc1t .L0d962504
    nop
    mov.s	$f10,$f11
.L0d962504:
    lwc1	$f25,_lit_c0e00000
    c.lt.s $f10,$f25
    bc1f .L0d962a8c
    li	$a1,1
.L0d962514:
    li	$t0,1
    beq	$a0,$t0,.L0d962b80
    sd	$a1,728($sp)
.L0d962520:
    # Line 1304
    lw	$t2,8($a3)
    lwc1	$f11,440($sp)
    lwc1	$f10,444($sp)
    beq	$a6,$t2,.L0d962b98
    lwc1	$f13,448($sp)
    # Line 1315
    lwc1	$f27,_lit_3f800000
    # Line 1316
    add.s	$f10,$f10,$f27
    # Line 1317
    add.s	$f13,$f13,$f27
    c.lt.s $f13,$f10
    li	$a0,1
    # Line 1318
    mov.s	$f14,$f10
    # Line 1317
    movf	$a0,$zero,$fcc1
    # Line 1315
    add.s	$f11,$f11,$f27
    movz.s	$f14,$f13,$a0
    # Line 1318
    c.lt.s	$f14,$f11
    # Line 1317
    swc1	$f13,448($sp)
    # Line 1318
    mov.s	$f12,$f11
    # Line 1316
    swc1	$f10,444($sp)
    # Line 1317
    mov.s	$f15,$f13
    # Line 1315
    swc1	$f11,440($sp)
    # Line 1318
    bc1f	.L0d962580
    # Line 1317
    mov.s	$f21,$f10
    # Line 1318
    b	.L0d962584
    mov.s	$f10,$f11
.L0d962580:
    mov.s	$f10,$f14
.L0d962584:
    lwc1	$f29,_lit_40e00000
    c.lt.s $f29,$f10
    bc1t .L0d9625c8
    li	$a0,1
    c.lt.s $f21,$f15
    mov.s	$f10,$f21
    li	$a0,1
    movf	$a0,$zero,$fcc4
    movz.s	$f10,$f15,$a0
    c.lt.s $f12,$f10
    bc1t .L0d9625b8
    nop
    mov.s	$f12,$f10
.L0d9625b8:
    lwc1	$f31,_lit_c0e00000
    c.lt.s $f12,$f31
    bc1f .L0d962a94
    li	$a0,1
.L0d9625c8:
    move	$a7,$a0
.L0d9625cc:
    # Line 1325
    dmtc1	$zero,$f13
    c.le.d $f4,$f13
    bc1t .L0d9625f4
    nop
    c.le.d $f5,$f13
    bc1t .L0d9625f4
    nop
    c.le.d	$f6,$f13
    bc1f	.L0d9626a4
    nop
.L0d9625f4:
    c.lt.d $f5,$f6
    # Line 1326
    mov.d	$f11,$f5
    # Line 1325
    li	$a0,1
    movf	$a0,$zero,$fcc2
    movz.d	$f11,$f6,$a0
    # Line 1326
    c.lt.d $f4,$f11
    bc1f .L0d962638
    nop
    sdc1	$f4,640($sp)
    sdc1	$f9,880($sp)
    sdc1	$f8,888($sp)
    sdc1	$f7,568($sp)
    sdc1	$f6,576($sp)
    sdc1	$f5,632($sp)
    mov.d	$f11,$f4
    b	.L0d962654
    sd	$a7,912($sp)
.L0d962638:
    sdc1	$f9,880($sp)
    sdc1	$f8,888($sp)
    sdc1	$f7,568($sp)
    sdc1	$f6,576($sp)
    sdc1	$f5,632($sp)
    sdc1	$f4,640($sp)
    sd	$a7,912($sp)
.L0d962654:
    # Line 1327
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    cvt.s.d	$f12,$f11
    # Line 1328
    mtc1	$v0,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f0,_lit_37000000
    ld	$a7,912($sp)
    ldc1	$f7,568($sp)
    sub.s	$f0,$f0,$f1
    # Line 1330
    ldc1	$f6,576($sp)
    # Line 1329
    ldc1	$f5,632($sp)
    # Line 1328
    cvt.d.s	$f0,$f0
    ldc1	$f4,640($sp)
    ldc1	$f8,888($sp)
    # Line 1330
    add.d	$f6,$f0,$f6
    ldc1	$f9,880($sp)
    # Line 1329
    add.d	$f5,$f0,$f5
    dmtc1	$zero,$f13
    ldc1	$f19,_lit8_3ff0000000000000
    # Line 1328
    add.d	$f4,$f0,$f4
.L0d9626a4:
    # Line 1330
    c.lt.d $f6,$f5
    # Line 1332
    mov.d	$f10,$f5
    # Line 1330
    li	$a0,1
    movf	$a0,$zero,$fcc4
    movz.d	$f10,$f6,$a0
    # Line 1332
    c.lt.d $f10,$f4
    bc1f .L0d9626c8
    nop
    mov.d	$f10,$f4
.L0d9626c8:
    # Line 1333
    c.eq.d $f10,$f13
    bc1t .L0d962910
    nop
    c.eq.d $f10,$f19
    bc1t .L0d962720
    nop
    # Line 1335
    div.d	$f2,$f19,$f10
    sdc1	$f7,568($sp)
    # Line 1336
    mul.d	$f5,$f2,$f5
    sdc1	$f5,632($sp)
    # Line 1335
    mul.d	$f4,$f2,$f4
    # Line 1336
    sdc1	$f5,464($sp)
    # Line 1337
    mul.d	$f6,$f2,$f6
    # Line 1335
    sdc1	$f4,640($sp)
    # Line 1337
    sdc1	$f6,576($sp)
    b	.L0d962738
    # Line 1335
    sdc1	$f4,456($sp)
.L0d96270c:
    # Line 1471
    lw	$t3,28072($s0)
    lw	$t3,8($t3)
    lwc1	$f3,0($t3)
    b	.L0d962014
    swc1	$f3,30208($s0)
.L0d962720:
    sdc1	$f4,640($sp)
    sdc1	$f5,632($sp)
    # Line 1337
    sdc1	$f5,464($sp)
    sdc1	$f4,456($sp)
    sdc1	$f7,568($sp)
    sdc1	$f6,576($sp)
.L0d962738:
    # Line 1348
    lwc1	$f0,440($sp)
    # Line 1353
    lwc1	$f23,448($sp)
    # Line 1348
    ldc1	$f6,640($sp)
    cvt.d.s	$f0,$f0
    # Line 1353
    ldc1	$f19,576($sp)
    cvt.d.s	$f23,$f23
    # Line 1358
    ldc1	$f3,632($sp)
    # Line 1348
    mul.d	$f0,$f0,$f6
    # Line 1346
    ldc1	$f7,688($sp)
    # Line 1353
    nmsub.d	$f1,$f0,$f23,$f19
    # Line 1346
    ldc1	$f21,720($sp)
    ldc1	$f31,696($sp)
    # Line 1345
    ldc1	$f4,704($sp)
    # Line 1358
    sub.d	$f29,$f3,$f19
    # Line 1345
    ldc1	$f5,712($sp)
    # Line 1346
    mul.s	$f21,$f21,$f7
    # Line 1358
    sub.d	$f2,$f6,$f19
    # Line 1346
    mul.s	$f31,$f31,$f7
    # Line 1345
    mul.s	$f4,$f4,$f7
    # Line 1346
    cvt.d.s	$f21,$f21
    # Line 1345
    mul.s	$f5,$f5,$f7
    # Line 1346
    cvt.d.s	$f31,$f31
    # Line 1359
    mul.d	$f7,$f2,$f21
    msub.d	$f7,$f7,$f29,$f31
    # Line 1340
    ldc1	$f16,568($sp)
    # Line 1345
    cvt.d.s	$f4,$f4
    cvt.d.s	$f5,$f5
    # Line 1341
    cvt.d.s	$f17,$f8
    # Line 1358
    mul.d	$f29,$f29,$f4
    # Line 1340
    cvt.d.s	$f16,$f16
    # Line 1358
    msub.d	$f29,$f29,$f2,$f5
    # Line 1349
    lwc1	$f2,444($sp)
    # Line 1361
    ld	$a2,752($sp)
    # Line 1345
    cvt.d.s	$f18,$f9
    # Line 1341
    mul.d	$f17,$f17,$f3
    # Line 1361
    ld	$a3,728($sp)
    # Line 1340
    mul.d	$f16,$f16,$f6
    # Line 1337
    # lw $t9, -32736($gp) # &sub_0d960000
    # Line 1345
    nmsub.d	$f6,$f16,$f18,$f19
    # Line 1349
    cvt.d.s	$f2,$f2
    # Line 1348
    sdc1	$f0,536($sp)
    # Line 1345
    nmsub.d	$f8,$f17,$f18,$f19
    # Line 1348
    sdc1	$f0,488($sp)
    # Line 1349
    mul.d	$f2,$f2,$f3
    # Line 1361
    move	$a1,$a3
    # Line 1341
    sdc1	$f17,480($sp)
    # Line 1353
    nmsub.d	$f25,$f2,$f23,$f19
    # Line 1361
    movn	$a1,$a2,$a3
    # Line 1340
    sdc1	$f16,472($sp)
    # Line 1353
    mul.d	$f23,$f23,$f19
    # Line 1362
    movz	$a2,$a7,$a7
    # Line 1364
    sw	$a2,32500($s0)
    # Line 1354
    mul.d	$f27,$f21,$f1
    # Line 1362
    sw	$a2,508($sp)
    # Line 1346
    mul.d	$f21,$f21,$f6
    # Line 1363
    sw	$a1,32496($s0)
    # Line 1346
    msub.d	$f21,$f21,$f31,$f8
    # Line 1361
    sw	$a1,504($sp)
    # Line 1354
    msub.d	$f27,$f27,$f31,$f25
    # Line 1359
    sdc1	$f7,32440($s0)
    # Line 1353
    mul.d	$f25,$f4,$f25
    # Line 1358
    sdc1	$f29,32432($s0)
    # Line 1353
    msub.d	$f25,$f25,$f5,$f1
    # Line 1349
    sdc1	$f2,544($sp)
    # Line 1345
    mul.d	$f4,$f4,$f8
    # Line 1349
    sdc1	$f2,496($sp)
    # Line 1345
    msub.d	$f4,$f4,$f5,$f6
    # Line 1353
    sdc1	$f23,528($sp)
    # Line 1367
    addiu	$a0,$sp,16
    # Line 1346
    sdc1	$f21,32408($s0)
    # Line 1367
    addiu	$a0,$a0,160
    # Line 1337
    addiu	$t9,$t9,-6880
    # Line 1354
    sdc1	$f27,32424($s0)
    # Line 1367
    move	$a3,$s3
    move	$a1,$s1
    # Line 1353
    sdc1	$f25,32416($s0)
    # Line 1345
    mul.d	$f18,$f18,$f19
    # Line 1367
    move	$a2,$s2
    bal __glCrmRenderPointDepthRGBA
    # Line 1345
    sdc1	$f4,32400($s0)
    # Line 1369
    # lw $t9, -32736($gp) # &sub_0d960000
    move	$a1,$s1
    move	$a2,$s2
    ldc1	$f16,536($sp)
    addiu	$t9,$t9,-6880
    move	$a3,$s3
    ldc1	$f17,544($sp)
    addiu	$a0,$sp,16
    ldc1	$f18,528($sp)
    bal __glCrmRenderPointDepthRGBA
    addiu	$a0,$a0,192
    # Line 1371
    # lw $t9, -32736($gp) # &sub_0d960000
    move	$a1,$s1
    move	$a2,$s2
    ldc1	$f16,640($sp)
    addiu	$t9,$t9,-6880
    move	$a3,$s3
    ldc1	$f17,632($sp)
    addiu	$a0,$sp,16
    ldc1	$f18,576($sp)
    bal __glCrmRenderPointDepthRGBA
    addiu	$a0,$a0,224
    b	.L0d962018
    # Line 1471
    ld	$a1,808($sp)
.L0d9628d8:
    # Line 1575
    ld	$gp,872($sp)
    ld	$s1,848($sp)
    ld	$s2,840($sp)
    ld	$s3,864($sp)
    # Line 1572
    ld	$a2,824($sp)
    lw	$a3,32360($s0)
    ld	$a4,816($sp)
    ld	$ra,904($sp)
    sw	$a3,8464($a4)
    lw	$a1,32360($s0)
    # Line 1575
    ld	$s0,856($sp)
    addiu	$sp,$sp,944
    jr	$ra
    # Line 1572
    sw	$a1,8464($a2)
.L0d962910:
    sdc1	$f4,640($sp)
    sdc1	$f5,632($sp)
    # Line 1337
    sdc1	$f5,464($sp)
    sdc1	$f4,456($sp)
    sdc1	$f7,568($sp)
    b	.L0d962738
    sdc1	$f6,576($sp)
.L0d96292c:
    # Line 1552
    ldc1	$f15,552($sp)
    div.s	$f15,$f15,$f16
    # lw $t9, -25220($gp) # &__glSnapXLeft
    ldc1	$f16,672($sp)
    lwc1	$f13,128($s1)
    mov.s	$f14,$f15
    ld	$s3,792($sp)
    move	$a0,$s0
    jal	__glSnapXLeft
    madd.s	$f13,$f13,$f15,$f16
    # Line 1554
    lw	$ra,30148($s0)
    mtc1	$ra,$f16
    ldc1	$f19,488($sp)
    ldc1	$f18,472($sp)
    ldc1	$f23,456($sp)
    cvt.s.w	$f16,$f16
    lwc1	$f17,3540($s0)
    # lw $t9, -32736($gp) # &sub_0d960000
    lwc1	$f21,128($s1)
    lwc1	$f15,512($sp)
    addiu	$t9,$t9,3984
    add.s	$f16,$f16,$f17
    move	$a2,$s3
    move	$a1,$s1
    sdc1	$f23,0($sp)
    move	$a0,$s0
    ldc1	$f17,672($sp)
    bal __glCrmRenderPointDepthRGBA
    sub.s	$f16,$f16,$f21
    # Line 1555
    # lw $t9, -32736($gp) # &sub_0d960000
    lw	$a5,508($sp)
    ld	$a2,736($sp)
    addiu	$t9,$t9,-5856
    addiu	$a3,$sp,16
    ld	$a1,760($sp)
    lw	$a4,504($sp)
    bal __glCrmRenderPointDepthRGBA
    move	$a0,$s0
    b	.L0d962120
    ld	$t9,768($sp)
.L0d9629cc:
    # Line 1237
    lw	$ra,32360($s0)
    # Line 1236
    lwc1	$f18,30792($s0)
    # Line 1239
    li	$at,-4
    # Line 1240
    ld	$v0,816($sp)
    # Line 1239
    and	$ra,$ra,$at
    ori	$ra,$ra,0x1
    sw	$ra,400($sp)
    # Line 1240
    ld	$at,824($sp)
    sw	$ra,8464($v0)
    sw	$ra,8464($at)
    # Line 1241
    beqz	$a0,.L0d962368
    swc1	$f18,30220($s0)
    # Line 1243
    ld	$a2,792($sp)
    lwc1	$f27,0($a2)
    swc1	$f27,408($sp)
    lwc1	$f25,4($a2)
    # Line 1244
    ld	$a1,800($sp)
    # Line 1243
    swc1	$f25,412($sp)
    lwc1	$f23,8($a2)
    swc1	$f18,420($sp)
    swc1	$f23,416($sp)
    # Line 1244
    lwc1	$f21,0($a1)
    sd	$a3,920($sp)
    swc1	$f21,424($sp)
    lwc1	$f19,4($a1)
    # Line 1245
    # lw $t9, -32736($gp) # &sub_0d960000
    move	$a3,$s3
    # Line 1244
    swc1	$f19,428($sp)
    # Line 1245
    addiu	$a0,$sp,16
    addiu	$t9,$t9,-7008
    # Line 1244
    lwc1	$f17,8($a1)
    # Line 1245
    mov.s	$f16,$f18
    addiu	$a0,$a0,48
    move	$a2,$s2
    # Line 1244
    swc1	$f18,436($sp)
    # Line 1245
    move	$a1,$s1
    # Line 1244
    swc1	$f17,432($sp)
    # Line 1245
    bal __glCrmRenderPointDepthRGBA
    mov.s	$f17,$f18
    ld	$a3,920($sp)
    # Line 1247
    addiu	$a5,$sp,408
    sd	$a5,792($sp)
    mtc1	$zero,$f29
    addiu	$a4,$sp,424
    sd	$a4,800($sp)
    swc1	$f29,30312($s0)
    b	.L0d962368
    # Line 1246
    swc1	$f29,30296($s0)
.L0d962a8c:
    b	.L0d962514
    # Line 1298
    move	$a1,$zero
.L0d962a94:
    b	.L0d9625c8
    # Line 1318
    move	$a0,$zero
.L0d962a9c:
    # Line 1280
    c.lt.s	$f8,$f9
    # Line 1288
    mov.s	$f12,$f8
    # Line 1280
    li	$a1,1
    movf	$a1,$zero,$fcc0
    movz.s	$f12,$f9,$a1
    sdc1	$f6,576($sp)
    # Line 1288
    c.lt.s $f7,$f12
    sdc1	$f5,632($sp)
    sdc1	$f4,640($sp)
    bc1f .L0d962adc
    sd	$a3,920($sp)
    sdc1	$f7,568($sp)
    sdc1	$f9,880($sp)
    mov.s	$f12,$f7
    b	.L0d962ae8
    sdc1	$f8,888($sp)
.L0d962adc:
    sdc1	$f9,880($sp)
    sdc1	$f8,888($sp)
    sdc1	$f7,568($sp)
.L0d962ae8:
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    nop
    # Line 1290
    mtc1	$v0,$f31
    cvt.s.w	$f31,$f31
    lwc1	$f0,_lit_bf800000
    add.s	$f31,$f31,$f0
    trunc.w.s	$f31,$f31
    cvt.s.w	$f31,$f31
    # Line 1291
    ldc1	$f8,888($sp)
    # Line 1292
    ldc1	$f9,880($sp)
    # Line 1291
    sub.s	$f8,$f8,$f31
    # Line 1292
    sub.s	$f9,$f9,$f31
    # Line 1290
    ldc1	$f7,568($sp)
    # Line 1292
    c.lt.s $f9,$f8
    li	$a1,1
    # Line 1293
    mov.s	$f11,$f8
    # Line 1292
    movf	$a1,$zero,$fcc2
    # Line 1290
    sub.s	$f7,$f7,$f31
    movz.s	$f11,$f9,$a1
    # Line 1293
    c.lt.s $f11,$f7
    bc1f .L0d962b48
    # Line 1292
    nop
    # Line 1293
    mov.s	$f11,$f7
.L0d962b48:
    ldc1	$f4,640($sp)
    lwc1	$f0,_lit_41700000
    ld	$a3,920($sp)
    ldc1	$f5,632($sp)
    lw	$a0,232($a3)
    c.lt.s $f0,$f11
    ldc1	$f6,576($sp)
    li	$t0,1
    # Line 1298
    li	$a7,1
    ldc1	$f19,_lit8_3ff0000000000000
    # Line 1293
    movf	$t0,$zero,$fcc3
    li	$a6,10497
    # Line 1298
    bne	$a0,$a7,.L0d962520
    sd	$t0,728($sp)
.L0d962b80:
    # Line 1303
    lwc1	$f1,_lit_3f800000
    swc1	$f1,448($sp)
    swc1	$f1,444($sp)
    # Line 1304
    move	$a7,$zero
    b	.L0d9625cc
    # Line 1303
    swc1	$f1,440($sp)
.L0d962b98:
    # Line 1304
    c.lt.s $f10,$f13
    li	$a0,1
    # Line 1307
    lwc1	$f12,440($sp)
    # Line 1304
    movf	$a0,$zero,$fcc5
    sdc1	$f9,880($sp)
    movz.s	$f10,$f13,$a0
    sdc1	$f8,888($sp)
    sdc1	$f7,568($sp)
    # Line 1307
    c.lt.s $f12,$f10
    sdc1	$f6,576($sp)
    sdc1	$f5,632($sp)
    bc1t .L0d962bd0
    sdc1	$f4,640($sp)
    mov.s	$f12,$f10
.L0d962bd0:
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    nop
    # Line 1309
    mtc1	$v0,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f14,_lit_bf800000
    add.s	$f13,$f13,$f14
    trunc.w.s	$f13,$f13
    cvt.s.w	$f13,$f13
    # Line 1311
    lwc1	$f15,448($sp)
    sub.s	$f15,$f15,$f13
    swc1	$f15,448($sp)
    # Line 1310
    lwc1	$f21,444($sp)
    sub.s	$f21,$f21,$f13
    swc1	$f21,444($sp)
    # Line 1309
    lwc1	$f12,440($sp)
    # Line 1311
    c.lt.s $f15,$f21
    li	$a0,1
    # Line 1312
    mov.s	$f10,$f21
    # Line 1311
    movf	$a0,$zero,$fcc7
    # Line 1309
    sub.s	$f12,$f12,$f13
    movz.s	$f10,$f15,$a0
    # Line 1312
    c.lt.s $f10,$f12
    bc1t .L0d962c38
    # Line 1309
    swc1	$f12,440($sp)
    # Line 1312
    mov.s	$f12,$f10
.L0d962c38:
    ldc1	$f4,640($sp)
    ldc1	$f5,632($sp)
    ldc1	$f6,576($sp)
    lwc1	$f14,_lit_41700000
    ldc1	$f7,568($sp)
    ldc1	$f8,888($sp)
    ldc1	$f9,880($sp)
    c.lt.s	$f14,$f12
    ldc1	$f19,_lit8_3ff0000000000000
    li	$a7,1
    b	.L0d9625cc
    movf	$a7,$zero,$fcc0
.L0d962c68:
    # Line 1274
    lwc1	$f4,140($s1)
    # Line 1276
    lwc1	$f6,140($s3)
    # Line 1275
    lwc1	$f5,140($s2)
    # Line 1279
    lw	$t1,232($a3)
    lwc1	$f9,48($s3)
    li	$t2,1
    # Line 1276
    cvt.d.s	$f6,$f6
    # Line 1278
    lwc1	$f8,48($s2)
    # Line 1275
    cvt.d.s	$f5,$f5
    # Line 1277
    lwc1	$f7,48($s1)
    # Line 1279
    move	$a0,$t1
    beq	$t1,$t2,.L0d962488
    # Line 1274
    cvt.d.s	$f4,$f4
    # Line 1283
    lwc1	$f12,52($s3)
    swc1	$f12,448($sp)
    # Line 1282
    lwc1	$f11,52($s2)
    # Line 1281
    lwc1	$f10,52($s1)
    # Line 1282
    swc1	$f11,444($sp)
    b	.L0d962488
    # Line 1281
    swc1	$f10,440($sp)
.end __glCrmFillAATriangle

.rdata
_lit8_3ee4f8b588e368f1:
    .word 0x3ee4f8b5, 0x88e368f1
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_41c0000000000000:
    .word 0x41c00000, 0x00000000
_lit_37000000:
    .word 0x37000000
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_402df854:
    .word 0x402df854
_lit_40e00000:
    .word 0x40e00000
_lit_41700000:
    .word 0x41700000
_lit_42800000:
    .word 0x42800000
_lit_45800000:
    .word 0x45800000
_lit_497423f0:
    .word 0x497423f0
_lit_b7000000:
    .word 0xb7000000
_lit_bf000000:
    .word 0xbf000000
_lit_bf800000:
    .word 0xbf800000
_lit_c0e00000:
    .word 0xc0e00000

