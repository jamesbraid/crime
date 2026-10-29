# Source: ../soft/so_polyaa.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polyaa.c
# Total Functions: 8

.text

# Function: FindLineEquation
# Declared: Line 99 (Source lines: 101-131)
# Address: 0x0d9f82c0 - 0x0d9f8384 (Size: 196 bytes, Frame: 0)
.ent FindLineEquation
FindLineEquation:
    # Line 101
    lwc1	$f8,4($a1)
    lwc1	$f9,4($a2)
    c.lt.s	$f9,$f8
    move	$a5,$a1
    mov.s	$f4,$f9
    # Line 127
    li	$at,1
    # Line 111
    lwc1	$f7,0($a2)
    # Line 101
    bc1f	.L0d9f8350
    mov.s	$f5,$f8
    # Line 111
    mov.s	$f5,$f9
    lwc1	$f6,0($a1)
    move	$a5,$a2
    mov.s	$f4,$f8
.L0d9f82f4:
    # Line 123
    mtc1	$zero,$f0
    # Line 119
    sub.s	$f9,$f4,$f5
    # Line 120
    sub.s	$f8,$f6,$f7
    # Line 122
    swc1	$f8,4($a0)
    # Line 121
    neg.s	$f2,$f9
    swc1	$f2,0($a0)
    # Line 123
    lwc1	$f1,4($a5)
    lwc1	$f2,0($a5)
    mul.s	$f1,$f1,$f8
    msub.s	$f1,$f1,$f2,$f9
    swc1	$f1,8($a0)
    lwc1	$f2,0($a3)
    lwc1	$f3,4($a3)
    mul.s	$f2,$f2,$f9
    msub.s	$f2,$f2,$f3,$f8
    add.s	$f1,$f1,$f2
    c.lt.s $f0,$f1
    bc1f .L0d9f8348
    nop
    # Line 131
    jr	$ra
    # Line 127
    sb	$at,12($a0)
.L0d9f8348:
    # Line 131
    jr	$ra
    # Line 129
    sb	$zero,12($a0)
.L0d9f8350:
    # Line 113
    lwc1	$f10,0($a2)
    lwc1	$f11,0($a1)
    c.eq.s $f9,$f8
    mov.s	$f6,$f10
    bc1f .L0d9f82f4
    mov.s	$f7,$f11
    c.lt.s $f10,$f11
    movt.s	$f5,$f9,$fcc3
    movt.s	$f4,$f8,$fcc3
    movt	$a5,$a2,$fcc3
    movt.s	$f7,$f10,$fcc3
    b	.L0d9f82f4
    movt.s	$f6,$f11,$fcc3
.end FindLineEquation

# Function: FindPlaneEquation
# Declared: Line 139 (Source lines: 149-177)
# Address: 0x0d9f8390 - 0x0d9f840c (Size: 124 bytes, Frame: 0)
.ent FindPlaneEquation
FindPlaneEquation:
    # Line 150
    lwc1	$f0,132($a1)
    # Line 149
    lwc1	$f4,128($a1)
    # Line 154
    lwc1	$f10,128($a3)
    # Line 167
    sub.s	$f5,$f18,$f16
    # Line 149
    lwc1	$f3,128($a2)
    # Line 167
    sub.s	$f7,$f17,$f16
    # Line 155
    lwc1	$f8,132($a3)
    # Line 150
    lwc1	$f9,132($a2)
    # Line 154
    sub.s	$f10,$f10,$f4
    # Line 149
    sub.s	$f3,$f3,$f4
    # Line 155
    sub.s	$f8,$f8,$f0
    # Line 167
    mul.s	$f6,$f7,$f10
    # Line 150
    sub.s	$f9,$f9,$f0
    # Line 167
    nmsub.s	$f6,$f6,$f5,$f3
    mul.s	$f3,$f3,$f8
    nmsub.s	$f3,$f3,$f9,$f10
    mul.s	$f5,$f5,$f9
    nmsub.s	$f5,$f5,$f7,$f8
    # Line 173
    div.s	$f1,$f5,$f3
    # Line 174
    div.s	$f2,$f6,$f3
    # Line 167
    mul.s	$f0,$f0,$f6
    madd.s	$f0,$f0,$f4,$f5
    madd.s	$f0,$f0,$f16,$f3
    # Line 176
    neg.s	$f0,$f0
    div.s	$f0,$f0,$f3
    # Line 174
    swc1	$f2,4($a0)
    # Line 175
    lwc1	$f3,_lit_3f800000
    # Line 173
    swc1	$f1,0($a0)
    # Line 175
    swc1	$f3,8($a0)
    # Line 177
    jr	$ra
    # Line 176
    swc1	$f0,12($a0)
.end FindPlaneEquation

# Function: FindP
# Declared: Line 182 (Source lines: 184-184)
# Address: 0x0d9f8410 - 0x0d9f8430 (Size: 32 bytes, Frame: 0)
.ent FindP
FindP:
    # Line 184
    lwc1	$f1,4($a0)
    lwc1	$f2,0($a0)
    mul.s	$f1,$f1,$f14
    madd.s	$f1,$f1,$f2,$f13
    lwc1	$f0,12($a0)
    add.s	$f0,$f0,$f1
    jr	$ra
    neg.s	$f0,$f0
.end FindP

# Function: ComputeCoverageStuff
# Declared: Line 210 (Source lines: 215-224)
# Address: 0x0d9f8430 - 0x0d9f848c (Size: 92 bytes, Frame: 0)
.ent ComputeCoverageStuff
ComputeCoverageStuff:
    # Line 215
    mtc1	$a1,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f0,_lit_3f800000
    div.s	$f3,$f0,$f3
    # Line 221
    mult	$a1,$a1
    mflo	$at
    # Line 222
    mtc1	$at,$f1
    cvt.s.w	$f1,$f1
    # Line 217
    lwc1	$f4,_lit_3f000000
    # Line 222
    div.s	$f0,$f0,$f1
    # Line 217
    lwc1	$f1,_lit_bf000000
    # Line 218
    nmsub.s	$f2,$f4,$f3,$f4
    # Line 223
    sw	$a1,8($a0)
    # Line 217
    madd.s	$f1,$f1,$f3,$f4
    # Line 221
    sw	$at,12($a0)
    # Line 216
    swc1	$f3,4($a0)
    # Line 215
    swc1	$f3,0($a0)
    # Line 220
    swc1	$f2,36($a0)
    # Line 219
    swc1	$f1,32($a0)
    # Line 218
    swc1	$f2,28($a0)
    # Line 217
    swc1	$f1,24($a0)
    # Line 224
    jr	$ra
    # Line 222
    swc1	$f0,16($a0)
.end ComputeCoverageStuff

# Function: Coverage
# Declared: Line 229 (Source lines: 237-294)
# Address: 0x0d9f8490 - 0x0d9f8734 (Size: 676 bytes, Frame: 0)
.ent Coverage
Coverage:
    # Line 240
    lwc1	$f4,0($a1)
    lwc1	$f10,24($a3)
    # Line 241
    lwc1	$f6,0($a2)
    lwc1	$f15,32($a3)
    lbu	$at,20($a3)
    add.s	$f15,$f15,$f6
    # Line 237
    lw	$a6,8($a3)
    # Line 241
    beqz	$at,.L0d9f85ac
    # Line 240
    add.s	$f10,$f10,$f4
    # Line 250
    lwc1	$f9,28($a3)
    # Line 251
    lwc1	$f11,36($a3)
    # Line 252
    lwc1	$f12,8($a0)
    lwc1	$f8,12($a0)
    # Line 250
    add.s	$f9,$f9,$f4
    # Line 251
    add.s	$f11,$f11,$f6
    # Line 252
    mul.s	$f12,$f9,$f12
    madd.s	$f16,$f12,$f11,$f8
    lwc1	$f7,16($a0)
    mtc1	$zero,$f5
    add.s	$f16,$f7,$f16
    c.lt.s	$f5,$f16
    lbu	$a7,20($a0)
    li	$v0,1
    movf	$v0,$zero,$fcc0
    bne	$a7,$v0,.L0d9f85ac
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
    bne	$a5,$v1,.L0d9f85ac
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
    bne	$t0,$a4,.L0d9f85ac
    nop
    madd.s	$f18,$f12,$f15,$f8
    add.s	$f18,$f7,$f18
    c.lt.s $f5,$f18
    li	$t1,1
    movf	$t1,$zero,$fcc3
    bne	$a7,$t1,.L0d9f85ac
    nop
    madd.s	$f19,$f13,$f15,$f4
    add.s	$f19,$f6,$f19
    c.lt.s $f5,$f19
    li	$t2,1
    movf	$t2,$zero,$fcc4
    bne	$a5,$t2,.L0d9f85ac
    nop
    madd.s	$f21,$f14,$f15,$f16
    add.s	$f21,$f17,$f21
    c.lt.s $f5,$f21
    li	$t3,1
    movf	$t3,$zero,$fcc5
    beq	$t0,$t3,.L0d9f8710
    nop
.L0d9f85ac:
    # Line 253
    blez	$a6,.L0d9f86f8
    # Line 290
    move	$t0,$zero
    # Line 253
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
    b	.L0d9f8728
    mov.s	$f12,$f14
    nop
.L0d9f85f0:
    # Line 267
    mov.s	$f4,$f15
    # Line 266
    beq	$a6,$t1,.L0d9f86b8
    # Line 278
    add.s	$f10,$f17,$f10
    # Line 267
    move	$a5,$zero
.L0d9f8600:
    # Line 269
    li	$t8,1
    # Line 266
    addiu	$t1,$t1,1
    b	.L0d9f8720
    # Line 267
    mul.s	$f6,$f10,$f16
.L0d9f8610:
    # Line 269
    li	$t8,1
.L0d9f8614:
    # Line 268
    beq	$a6,$a5,.L0d9f85f0
    # Line 276
    add.s	$f4,$f9,$f4
    # Line 269
    madd.s	$f23,$f6,$f4,$f8
.L0d9f8620:
    add.s	$f23,$f7,$f23
    c.lt.s $f5,$f23
    movf	$t8,$zero,$fcc6
    li	$at,1
    bne	$a7,$t8,.L0d9f8610
    # Line 268
    addiu	$a5,$a5,1
    # Line 269
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
    bne	$t9,$at,.L0d9f8610
    lwc1	$f29,48($a0)
    li	$v1,1
    mul.s	$f31,$f31,$f4
    madd.s	$f31,$f31,$f0,$f10
    add.s	$f29,$f29,$f31
    c.lt.s	$f5,$f29
    movf	$v1,$zero,$fcc0
    bne	$v0,$v1,.L0d9f8614
    li	$t8,1
    # Line 273
    c.lt.s $f14,$f4
    # Line 272
    c.lt.s $f4,$f13
    # Line 271
    c.lt.s $f12,$f10
    # Line 273
    movt.s	$f14,$f4,$fcc4
    # Line 270
    c.lt.s $f10,$f11
    # Line 272
    movt.s	$f13,$f4,$fcc3
    # Line 271
    movt.s	$f12,$f10,$fcc2
    # Line 274
    addiu	$t0,$t0,1
    b	.L0d9f8610
    # Line 270
    movt.s	$f11,$f10,$fcc1
.L0d9f86b8:
    # Line 266
    beqz	$t0,.L0d9f86fc
    # Line 294
    mtc1	$t0,$f0
    # Line 285
    lwc1	$f0,_lit_3f000000
    add.s	$f1,$f12,$f11
    # Line 286
    add.s	$f2,$f14,$f13
    # Line 285
    mul.s	$f1,$f0,$f1
    # Line 286
    mul.s	$f0,$f0,$f2
    # Line 285
    swc1	$f1,0($a1)
    # Line 286
    swc1	$f0,0($a2)
    lw	$a0,12($a3)
    bne	$a0,$t0,.L0d9f86fc
    # Line 294
    mtc1	$t0,$f0
    # Line 290
    lwc1	$f0,_lit_3f800000
    # Line 289
    li	$a1,1
    # Line 294
    jr	$ra
    # Line 289
    sb	$a1,20($a3)
.L0d9f86f8:
    # Line 294
    mtc1	$t0,$f0
.L0d9f86fc:
    cvt.s.w	$f0,$f0
    lwc1	$f1,16($a3)
    # Line 293
    sb	$zero,20($a3)
    # Line 294
    jr	$ra
    mul.s	$f0,$f0,$f1
.L0d9f8710:
    jr	$ra
    # Line 253
    lwc1	$f0,_lit_3f800000
    nop
    nop
.L0d9f8720:
    b	.L0d9f8620
    # Line 269
    madd.s	$f23,$f6,$f4,$f8
.L0d9f8728:
    # Line 267
    mov.s	$f4,$f15
    b	.L0d9f8600
    move	$a5,$zero
.end Coverage

# Function: FillAASubTriangle
# Declared: Line 395 (Source lines: 397-727)
# Address: 0x0d9f8740 - 0x0d9f9d3c (Size: 5628 bytes, Frame: 0)
.ent FillAASubTriangle
FillAASubTriangle:
    # Line 397
    lui	$at,0x1
    ori	$at,$at,0x3a0
    subu	$sp,$sp,$at
    move	$t3,$s8
    sd	$t3,176($sp)
    sdc1	$f30,552($sp)
    sdc1	$f28,544($sp)
    sdc1	$f22,536($sp)
    sdc1	$f26,528($sp)
    sd	$ra,568($sp)
    sd	$s2,560($sp)
    sdc1	$f20,88($sp)
    sd	$s4,168($sp)
    sd	$a1,264($sp)
    sd	$s1,184($sp)
    # Line 412
    lw	$s1,280($a2)
    # Line 397
    sd	$a0,464($sp)
    # Line 421
    lwc1	$f20,3540($s1)
    # Line 415
    lbu	$v0,4848($s1)
    # Line 434
    lw	$a6,30140($s1)
    # Line 433
    lw	$a5,30144($s1)
    # Line 427
    lw	$v1,30148($s1)
    # Line 428
    lw	$a0,30152($s1)
    # Line 429
    lw	$a1,30168($s1)
    # Line 397
    move	$s4,$a2
    # Line 430
    lw	$a2,30172($s1)
    # Line 432
    lw	$a4,29712($s1)
    # Line 435
    lw	$a7,30136($s1)
    # Line 436
    lw	$t0,30164($s1)
    # Line 437
    lw	$t1,30160($s1)
    # Line 438
    lw	$t2,30156($s1)
    sd	$t2,240($sp)
    # Line 437
    sd	$t1,232($sp)
    # Line 436
    sd	$t0,256($sp)
    # Line 435
    sd	$a7,216($sp)
    # Line 432
    sd	$a4,200($sp)
    # Line 430
    sd	$a2,328($sp)
    # Line 429
    sd	$a1,368($sp)
    # Line 428
    sd	$a0,344($sp)
    # Line 427
    sd	$v1,440($sp)
    # Line 433
    sd	$a5,248($sp)
    # Line 417
    lw	$a5,3664($s1)
    # Line 434
    sd	$a6,192($sp)
    # Line 416
    lw	$a6,3704($s1)
    # Line 431
    lw	$a3,29704($s1)
    sd	$a3,208($sp)
    # Line 439
    lw	$a3,30436($s1)
    # Line 422
    lwc1	$f0,3544($s1)
    # Line 397
    addu	$s8,$sp,$at
    sd	$v0,472($sp)
    # Line 439
    andi	$at,$a3,0x2
    # Line 422
    sdc1	$f0,144($sp)
    # Line 439
    beqz	$at,.L0d9f9d2c
    sd	$at,520($sp)
.L0d9f8818:
    # Line 446
    lui	$t8,0xffff
    # Line 448
    lui	$at,0xffff
    andi	$t9,$a3,0x20
    sd	$t9,288($sp)
    # Line 447
    lui	$ra,0xffff
    # Line 448
    addu	$at,$at,$s8
    # Line 447
    addu	$ra,$ra,$s8
    # Line 448
    addiu	$at,$at,-288
    sw	$at,30472($s1)
    # Line 446
    addu	$t8,$t8,$s8
    # Line 447
    addiu	$ra,$ra,-32
    sw	$ra,30468($s1)
    # Line 446
    addiu	$t8,$t8,32736
    # Line 448
    beqz	$t9,.L0d9f888c
    # Line 446
    sw	$t8,30464($s1)
    # Line 450
    lw	$v1,31108($s1)
    ld	$a4,464($sp)
    lw	$a7,3664($v1)
    lw	$a2,31136($s1)
    subu	$a4,$a4,$a7
    mult	$a2,$a4
    lw	$a0,31124($s1)
    ld	$v0,440($sp)
    mflo	$a1
    lw	$v1,3660($v1)
    addu	$a0,$a0,$a1
    addu	$v0,$v0,$a0
    subu	$v0,$v0,$v1
    sw	$v0,30452($s1)
.L0d9f888c:
    andi	$t0,$a3,0x4
    beqz	$t0,.L0d9f88dc
    sd	$t0,296($sp)
    # Line 455
    lw	$t2,31228($s1)
    ld	$t9,464($sp)
    lw	$ra,3664($t2)
    lw	$t8,31256($s1)
    subu	$t9,$t9,$ra
    mult	$t8,$t9
    lw	$t1,31244($s1)
    mflo	$t3
    sll	$t3,$t3,0x2
    addu	$t1,$t1,$t3
    ld	$t3,440($sp)
    lw	$t2,3660($t2)
    sll	$t3,$t3,0x2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t3
    subu	$t1,$t1,$t2
    sw	$t1,30440($s1)
.L0d9f88dc:
    # Line 459
    ld	$v1,264($sp)
    ld	$v0,464($sp)
    slt	$v0,$v0,$v1
    lw	$at,11760($s1)
    beqz	$v0,.L0d9f9cd8
    sw	$at,30480($s1)
    addiu	$t3,$s4,16
    sd	$t3,304($sp)
    addiu	$t2,$sp,28
    sd	$t2,408($sp)
    addiu	$t1,$s4,112
    sd	$t1,400($sp)
    addiu	$t0,$s4,96
    sd	$t0,424($sp)
    addiu	$a7,$s4,80
    sd	$a7,392($sp)
    addiu	$a4,$s4,144
    sd	$a4,432($sp)
    addiu	$a2,$s4,128
    sd	$a2,384($sp)
    andi	$v1,$a3,0x4000
    sd	$v1,512($sp)
    andi	$v0,$a3,0x1000
    sd	$v0,448($sp)
    andi	$at,$a3,0x8
    sd	$at,504($sp)
    andi	$ra,$a3,0x10
    sd	$ra,496($sp)
    sd	$s7,616($sp)
    andi	$s7,$a3,0x1
    sd	$s7,224($sp)
    sd	$s6,608($sp)
    sdc1	$f24,624($sp)
    addiu	$a1,$s4,160
    sd	$a1,416($sp)
    lw	$a1,72($sp)
    lui	$t8,0x4
    and	$t8,$a3,$t8
    sd	$t8,280($sp)
    sd	$s3,592($sp)
    addiu	$s3,$s4,48
    sd	$s3,320($sp)
    la	$s3,sub_0da00000
    ld	$t9,440($sp)
    sd	$s0,600($sp)
    addiu	$s0,$s4,32
    sd	$s0,312($sp)
    la	$s0,sub_0da00000
    sd	$s5,584($sp)
    mtc1	$zero,$f24
    ld	$s5,368($sp)
    addiu	$s6,$s4,176
    addiu	$a0,$s4,64
    sd	$a0,376($sp)
    andi	$s7,$s7,0xff
    addiu	$s5,$s5,-1
    ld	$a0,464($sp)
    sd	$s5,336($sp)
    addiu	$s5,$s4,240
    addiu	$s0,$s0,-31728
    sd	$a1,272($sp)
    addiu	$t9,$t9,1
    subu	$a0,$a0,$a5
    sd	$t9,352($sp)
    addiu	$s3,$s3,-31600
    subu	$a0,$a6,$a0
    addiu	$a0,$a0,-1
    b	.L0d9f8a54
    sd	$a0,360($sp)
.L0d9f89f0:
    # Line 709
    cvt.s.w	$f1,$f1
    div.s	$f1,$f1,$f0
    add.s	$f1,$f5,$f1
    swc1	$f1,30500($s1)
.L0d9f8a00:
    beqz	$t9,.L0d9f943c
    # Line 715
    ld	$a3,448($sp)
.L0d9f8a08:
    # Line 713
    lw	$at,30440($s1)
    # Line 715
    lw	$ra,30448($s1)
    # Line 713
    sll	$v0,$s2,0x2
    subu	$at,$at,$v0
    # Line 715
    addu	$ra,$ra,$at
    ld	$at,448($sp)
    beqz	$at,.L0d9f8a48
    sw	$ra,30440($s1)
    # Line 719
    mtc1	$s2,$f4
.L0d9f8a2c:
    cvt.s.w	$f4,$f4
    lwc1	$f5,30432($s1)
    lwc1	$f3,30420($s1)
    nmsub.s	$f3,$f3,$f4,$f5
    lwc1	$f2,30244($s1)
    add.s	$f2,$f2,$f3
    swc1	$f2,30244($s1)
.L0d9f8a48:
    ld	$a0,264($sp)
.L0d9f8a4c:
    ld	$v1,464($sp)
    beq	$v1,$a0,.L0d9f9cc0
.L0d9f8a54:
    # Line 487
    ld	$a1,464($sp)
    mtc1	$a1,$f22
    cvt.s.w	$f22,$f22
    ld	$a2,360($sp)
    ld	$s2,440($sp)
    andi	$a2,$a2,0x1f
    sd	$a2,480($sp)
    andi	$a1,$a1,0x1f
    sd	$a1,488($sp)
    b	.L0d9f8c20
    add.s	$f22,$f22,$f20
.L0d9f8a80:
    # Line 494
    move	$t9,$s0
    lwc1	$f14,80($sp)
    move	$a0,$s4
    bal __glEndPoints
    lwc1	$f13,76($sp)
    beqz	$s7,.L0d9f8ae4
    swc1	$f0,28($sp)
    ld	$a0,304($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    move	$t9,$s0
    ld	$a0,312($sp)
    bal __glEndPoints
    swc1	$f0,32($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    move	$t9,$s0
    ld	$a0,320($sp)
    bal __glEndPoints
    swc1	$f0,36($sp)
    swc1	$f0,40($sp)
.L0d9f8ae4:
    ld	$a3,504($sp)
    beqz	$a3,.L0d9f8b90
    ld	$a0,384($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    sdc1	$f0,160($sp)
    ld	$a0,432($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    sdc1	$f0,152($sp)
    ld	$a0,392($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    ld	$a0,424($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    mov.s	$f30,$f0
    bal __glEndPoints
    lwc1	$f13,76($sp)
    ld	$a0,400($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    mov.s	$f28,$f0
    bal __glEndPoints
    lwc1	$f13,76($sp)
    ldc1	$f15,160($sp)
    lwc1	$f14,3544($s1)
    div.s	$f14,$f14,$f15
    ldc1	$f17,152($sp)
    lw	$t9,12524($s1)
    mul.s	$f17,$f17,$f14
    mul.s	$f16,$f0,$f14
    mul.s	$f15,$f28,$f14
    ld	$a1,408($sp)
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f30,$f14
.L0d9f8b90:
    ld	$a4,448($sp)
    beqz	$a4,.L0d9f8bc0
    ld	$a0,416($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    # lw $t9, -26076($gp) # &__glFogFragmentSlow
    move	$a0,$s1
    mov.s	$f14,$f0
    jal	__glFogFragmentSlow
    addiu	$a1,$sp,16
.L0d9f8bc0:
    beqz	$s7,.L0d9f991c
    nop	# was lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    lwc1	$f16,40($sp)
    mul.s	$f16,$f16,$f26
    swc1	$f16,40($sp)
.L0d9f8bd4:
    lwc1	$f13,76($sp)
    trunc.w.s	$f18,$f13
    swc1	$f18,16($sp)
    lwc1	$f14,80($sp)
    ld	$a5,512($sp)
    trunc.w.s	$f17,$f14
    beqz	$a5,.L0d9f8c0c
    swc1	$f17,20($sp)
    move	$t9,$s0
    bal __glEndPoints
    ld	$a0,376($sp)
    trunc.l.s	$f19,$f0
    dmfc1	$a6,$f19
    sw	$a6,24($sp)
.L0d9f8c0c:
    lw	$t9,12608($s1)
    addiu	$a1,$sp,16
    jal	__glBuildAntiAliasIndex
    lw	$a0,11760($s1)
.L0d9f8c1c:
    # Line 487
    addiu	$s2,$s2,-1
.L0d9f8c20:
    # Line 488
    mtc1	$s2,$f21
    cvt.s.w	$f21,$f21
    # Line 491
    addiu	$a2,$sp,80
    # Line 489
    swc1	$f22,80($sp)
    # Line 491
    move	$t9,$s3
    # Line 488
    add.s	$f21,$f21,$f20
    # Line 491
    addiu	$a1,$sp,76
    move	$a0,$s6
    # Line 488
    swc1	$f21,76($sp)
    # Line 491
    move	$a3,$s5
    bal __glEndPoints
    # Line 490
    sb	$zero,260($s4)
    # Line 492
    c.eq.s	$f0,$f24
    # Line 494
    ld	$t0,480($sp)
    ld	$t1,472($sp)
    # Line 492
    ld	$a7,496($sp)
    bc1t	.L0d9f8cd4
    # Line 491
    mov.s	$f26,$f0
    # Line 492
    beqz	$a7,.L0d9f8c9c
    ld	$t2,488($sp)
    movz	$t0,$t2,$t1
    # Line 494
    li	$t2,31
    sll	$t0,$t0,0x2
    and	$t3,$s2,$t2
    addu	$t0,$s1,$t0
    li	$t1,1
    subu	$t2,$t2,$t3
    lw	$t0,30008($t0)
    sllv	$t1,$t1,$t2
    and	$t0,$t0,$t1
    beqz	$t0,.L0d9f8c1c
.L0d9f8c9c:
    ld	$t1,520($sp)
    bnez	$t1,.L0d9f8a80
    lw	$t2,8($sp)
    lwc1	$f23,0($t2)
    beqz	$s7,.L0d9f8ae4
    swc1	$f23,28($sp)
    lw	$t3,8($sp)
    lwc1	$f29,4($t3)
    swc1	$f29,32($sp)
    lwc1	$f27,8($t3)
    swc1	$f27,36($sp)
    lwc1	$f25,12($t3)
    b	.L0d9f8ae4
    swc1	$f25,40($sp)
.L0d9f8cd4:
    # Line 496
    ld	$s2,352($sp)
.L0d9f8cd8:
    # Line 497
    mtc1	$s2,$f31
    cvt.s.w	$f31,$f31
    sd	$s2,456($sp)
    # Line 500
    addiu	$a2,$sp,80
    # Line 498
    swc1	$f22,80($sp)
    # Line 500
    move	$t9,$s3
    # Line 497
    add.s	$f31,$f31,$f20
    # Line 500
    addiu	$a1,$sp,76
    move	$a0,$s6
    # Line 497
    swc1	$f31,76($sp)
    # Line 500
    move	$a3,$s5
    bal __glEndPoints
    # Line 499
    sb	$zero,260($s4)
    ld	$v0,488($sp)
    # Line 500
    c.eq.s $f0,$f24
    # Line 511
    ld	$ra,480($sp)
    ld	$at,472($sp)
    ld	$v1,456($sp)
    # Line 500
    bc1t .L0d9f8f4c
    mov.s	$f26,$f0
    # Line 516
    ldc1	$f0,144($sp)
    c.eq.s $f26,$f0
    bc1t .L0d9f9450
    # Line 531
    ld	$t9,496($sp)
    beqz	$t9,.L0d9f8d68
    movz	$ra,$v0,$at
    # Line 511
    sll	$ra,$ra,0x2
    li	$v0,31
    and	$v1,$v1,$v0
    addu	$ra,$s1,$ra
    li	$at,1
    lw	$ra,30008($ra)
    subu	$v0,$v0,$v1
    sllv	$at,$at,$v0
    and	$ra,$ra,$at
    beqz	$ra,.L0d9f8f14
.L0d9f8d68:
    ld	$at,520($sp)
    lw	$t8,8($sp)
    beqz	$at,.L0d9f8f20
    move	$t9,$s0
    lwc1	$f14,80($sp)
    move	$a0,$s4
    bal __glEndPoints
    lwc1	$f13,76($sp)
    beqz	$s7,.L0d9f8dd8
    swc1	$f0,28($sp)
    ld	$a0,304($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    move	$t9,$s0
    ld	$a0,312($sp)
    bal __glEndPoints
    swc1	$f0,32($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    move	$t9,$s0
    ld	$a0,320($sp)
    bal __glEndPoints
    swc1	$f0,36($sp)
    swc1	$f0,40($sp)
.L0d9f8dd8:
    ld	$v0,504($sp)
    beqz	$v0,.L0d9f8e8c
    ld	$v1,448($sp)
    ld	$a0,384($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    ld	$a0,432($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    mov.s	$f30,$f0
    bal __glEndPoints
    lwc1	$f13,76($sp)
    ld	$a0,392($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    mov.s	$f28,$f0
    bal __glEndPoints
    lwc1	$f13,76($sp)
    sdc1	$f0,128($sp)
    ld	$a0,424($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    sdc1	$f0,136($sp)
    ld	$a0,400($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    lwc1	$f18,3544($s1)
    div.s	$f18,$f18,$f30
    ldc1	$f14,128($sp)
    ldc1	$f15,136($sp)
    lw	$t9,12524($s1)
    mul.s	$f17,$f28,$f18
    mul.s	$f16,$f0,$f18
    mul.s	$f15,$f15,$f18
    ld	$a1,408($sp)
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f14,$f18
    ld	$v1,448($sp)
.L0d9f8e8c:
    beqz	$v1,.L0d9f8eb8
    ld	$a0,416($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    # lw $t9, -26076($gp) # &__glFogFragmentSlow
    move	$a0,$s1
    mov.s	$f14,$f0
    jal	__glFogFragmentSlow
    addiu	$a1,$sp,16
.L0d9f8eb8:
    beqz	$s7,.L0d9f9c50
    nop	# was lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    lwc1	$f19,40($sp)
    mul.s	$f19,$f19,$f26
    swc1	$f19,40($sp)
.L0d9f8ecc:
    lwc1	$f13,76($sp)
    trunc.w.s	$f23,$f13
    swc1	$f23,16($sp)
    lwc1	$f14,80($sp)
    ld	$a0,512($sp)
    trunc.w.s	$f21,$f14
    beqz	$a0,.L0d9f8f04
    swc1	$f21,20($sp)
    move	$t9,$s0
    bal __glEndPoints
    ld	$a0,376($sp)
    trunc.l.s	$f25,$f0
    dmfc1	$a1,$f25
    sw	$a1,24($sp)
.L0d9f8f04:
    lw	$t9,12608($s1)
    addiu	$a1,$sp,16
    jal	__glBuildAntiAliasIndex
    lw	$a0,11760($s1)
.L0d9f8f14:
    # Line 496
    ld	$s2,456($sp)
    b	.L0d9f8cd8
    addiu	$s2,$s2,1
.L0d9f8f20:
    # Line 511
    lwc1	$f27,0($t8)
    beqz	$s7,.L0d9f8dd8
    swc1	$f27,28($sp)
    lw	$t9,8($sp)
    lwc1	$f0,4($t9)
    swc1	$f0,32($sp)
    lwc1	$f31,8($t9)
    swc1	$f31,36($sp)
    lwc1	$f29,12($t9)
    b	.L0d9f8dd8
    swc1	$f29,40($sp)
.L0d9f8f4c:
    # Line 503
    ld	$ra,368($sp)
    slti	$ra,$ra,-1
    beqz	$ra,.L0d9f8f60
    li	$a1,-1
.L0d9f8f5c:
    # Line 516
    li	$a1,-1
.L0d9f8f60:
    # Line 578
    ld	$t1,296($sp)
    # Line 547
    li	$a2,-1
    # Line 569
    ld	$ra,512($sp)
    # Line 576
    dmtc1	$zero,$f17
    # Line 558
    ld	$t9,504($sp)
    # Line 547
    beq	$a1,$a2,.L0d9f918c
    # Line 606
    move	$s2,$zero
    # Line 551
    ld	$s2,440($sp)
    # Line 565
    ld	$at,520($sp)
    # Line 573
    ld	$a3,280($sp)
    # Line 551
    beqz	$s7,.L0d9f904c
    subu	$s2,$a1,$s2
    # Line 558
    ld	$v0,504($sp)
    # Line 551
    ld	$t8,520($sp)
    # Line 561
    mtc1	$s2,$f11
    # Line 551
    beqz	$t8,.L0d9f9be8
    # Line 555
    mtc1	$s2,$f5
    # Line 557
    lwc1	$f3,30216($s1)
    # Line 556
    lwc1	$f7,30288($s1)
    # Line 555
    cvt.s.w	$f5,$f5
    # Line 558
    lwc1	$f6,30296($s1)
    # Line 557
    lwc1	$f8,30292($s1)
    # Line 558
    lwc1	$f4,30220($s1)
    madd.s	$f4,$f4,$f5,$f6
    # Line 555
    lwc1	$f6,30284($s1)
    # Line 556
    lwc1	$f2,30212($s1)
    # Line 557
    madd.s	$f3,$f3,$f5,$f8
    # Line 555
    lwc1	$f1,30208($s1)
    # Line 556
    madd.s	$f2,$f2,$f5,$f7
    # Line 555
    madd.s	$f1,$f1,$f5,$f6
    # Line 558
    swc1	$f4,30220($s1)
    # Line 557
    swc1	$f3,30216($s1)
    # Line 556
    swc1	$f2,30212($s1)
    # Line 558
    beqz	$t9,.L0d9f9068
    # Line 555
    swc1	$f1,30208($s1)
.L0d9f8fec:
    # Line 563
    lwc1	$f8,30232($s1)
    lwc1	$f14,30388($s1)
    # Line 564
    lwc1	$f9,30236($s1)
    # Line 561
    cvt.s.w	$f11,$f11
    # Line 565
    lwc1	$f13,30396($s1)
    # Line 564
    lwc1	$f12,30392($s1)
    # Line 565
    lwc1	$f10,30240($s1)
    madd.s	$f10,$f10,$f11,$f13
    # Line 562
    lwc1	$f13,30384($s1)
    # Line 564
    madd.s	$f9,$f9,$f11,$f12
    # Line 561
    lwc1	$f12,30380($s1)
    # Line 562
    lwc1	$f7,30228($s1)
    # Line 563
    madd.s	$f8,$f8,$f11,$f14
    # Line 561
    lwc1	$f6,30224($s1)
    # Line 562
    madd.s	$f7,$f7,$f11,$f13
    # Line 561
    madd.s	$f6,$f6,$f11,$f12
    # Line 565
    swc1	$f10,30240($s1)
    # Line 564
    swc1	$f9,30236($s1)
    # Line 563
    swc1	$f8,30232($s1)
    # Line 562
    swc1	$f7,30228($s1)
    # Line 569
    bnez	$ra,.L0d9f9074
    # Line 561
    swc1	$f6,30224($s1)
    b	.L0d9f9090
    # Line 578
    ld	$a5,296($sp)
.L0d9f904c:
    # Line 565
    beqz	$at,.L0d9f9068
    # Line 569
    mtc1	$s2,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f14,30300($s1)
    lwc1	$f12,30208($s1)
    madd.s	$f12,$f12,$f13,$f14
    swc1	$f12,30208($s1)
.L0d9f9068:
    ld	$v0,512($sp)
.L0d9f906c:
    beqz	$v0,.L0d9f9090
    # Line 578
    ld	$a5,296($sp)
.L0d9f9074:
    # Line 573
    lw	$a2,30324($s1)
    mult	$a2,$s2
    lw	$v1,30204($s1)
    mflo	$a0
    addu	$v1,$v1,$a0
    sw	$v1,30204($s1)
    # Line 578
    ld	$a5,296($sp)
.L0d9f9090:
    # Line 588
    mtc1	$s2,$f18
    # Line 582
    sll	$t3,$s2,0x2
    # Line 585
    ld	$t9,448($sp)
    # Line 573
    beqz	$a3,.L0d9f9110
    # Line 595
    li	$ra,-1
    # Line 576
    lw	$a4,30324($s1)
    mult	$a4,$s2
    lwc1	$f0,30336($s1)
    mflo	$a2
    mtc1	$a2,$f14
    cvt.d.s	$f16,$f0
    cvt.s.w	$f14,$f14
    lwc1	$f15,30484($s1)
    c.eq.d $f16,$f17
    # Line 578
    negu	$a6,$a2
    # Line 576
    add.s	$f14,$f14,$f15
    # Line 578
    mtc1	$a6,$f16
    # Line 576
    bc1t .L0d9f9110
    swc1	$f14,30484($s1)
    # Line 578
    cvt.s.w	$f16,$f16
    div.s	$f16,$f16,$f0
    lwc1	$f15,30500($s1)
    add.s	$f15,$f15,$f16
    bnez	$a5,.L0d9f9118
    swc1	$f15,30500($s1)
    # Line 582
    ld	$a7,288($sp)
.L0d9f90f8:
    bnez	$a7,.L0d9f912c
.L0d9f90fc:
    # Line 585
    ld	$t0,448($sp)
    bnez	$t0,.L0d9f913c
    nop
    b	.L0d9f9154
    # Line 595
    ld	$t9,272($sp)
.L0d9f9110:
    # Line 578
    beqz	$t1,.L0d9f90f8
    # Line 582
    ld	$a7,288($sp)
.L0d9f9118:
    lw	$t2,30440($s1)
    addu	$t2,$t2,$t3
    ld	$t3,288($sp)
    beqz	$t3,.L0d9f90fc
    sw	$t2,30440($s1)
.L0d9f912c:
    # Line 585
    lw	$t8,30452($s1)
    addu	$t8,$s2,$t8
    beqz	$t9,.L0d9f9150
    sw	$t8,30452($s1)
.L0d9f913c:
    # Line 588
    cvt.s.w	$f18,$f18
    lwc1	$f19,30432($s1)
    lwc1	$f17,30244($s1)
    madd.s	$f17,$f17,$f18,$f19
    swc1	$f17,30244($s1)
.L0d9f9150:
    # Line 595
    ld	$t9,272($sp)
.L0d9f9154:
    # Line 601
    ld	$a5,464($sp)
    ld	$a4,208($sp)
    # Line 595
    beq	$t9,$ra,.L0d9f918c
    # Line 601
    ld	$a6,200($sp)
    ld	$a2,272($sp)
    subu	$a2,$a2,$a1
    addiu	$a2,$a2,1
    blez	$a2,.L0d9f918c
    slt	$a5,$a5,$a6
    ld	$a3,464($sp)
    slt	$a3,$a3,$a4
    bnez	$a3,.L0d9f9190
    # Line 621
    ld	$v0,360($sp)
    # Line 601
    bnez	$a5,.L0d9f9c64
.L0d9f918c:
    # Line 621
    ld	$v0,360($sp)
.L0d9f9190:
    ld	$at,464($sp)
    # Line 618
    ld	$t3,240($sp)
    # Line 615
    ld	$t2,232($sp)
    ld	$a3,368($sp)
    # Line 678
    mtc1	$s2,$f23
    # Line 612
    ld	$t9,256($sp)
    # Line 692
    mtc1	$s2,$f1
    # Line 612
    ld	$t8,328($sp)
    # Line 621
    addiu	$at,$at,1
    # Line 616
    lui	$a2,0x7fff
    # Line 622
    ld	$ra,248($sp)
    # Line 621
    addiu	$v0,$v0,-1
    # Line 616
    ori	$a2,$a2,0xffff
    # Line 622
    ld	$a7,344($sp)
    # Line 621
    sd	$v0,360($sp)
    # Line 615
    addu	$a4,$a3,$t2
    # Line 618
    addu	$a3,$a3,$t3
    # Line 615
    ld	$t0,336($sp)
    # Line 622
    addu	$a7,$a7,$ra
    # Line 612
    addu	$t9,$t8,$t9
    # Line 621
    sd	$at,464($sp)
    # Line 616
    and	$t8,$t9,$a2
    slti	$t1,$t9,0
    # Line 622
    sd	$a7,344($sp)
    # Line 615
    addu	$t2,$t0,$t2
    movz	$t8,$t9,$t1
    # Line 618
    addu	$t0,$t0,$t3
    sd	$t8,328($sp)
    movn	$a3,$a4,$t1
    sd	$a3,368($sp)
    movn	$t0,$t2,$t1
    # Line 622
    bltz	$a7,.L0d9f9930
    sd	$t0,336($sp)
    # Line 675
    ld	$a1,216($sp)
    ld	$a3,352($sp)
    ld	$v1,224($sp)
    ld	$a0,440($sp)
    addu	$a3,$a3,$a1
    sd	$a3,352($sp)
    addu	$a0,$a0,$a1
    beqz	$v1,.L0d9f934c
    sd	$a0,440($sp)
    ld	$a4,520($sp)
    beqz	$a4,.L0d9f9c00
    # Line 681
    ld	$v1,504($sp)
    ld	$a5,504($sp)
    # Line 680
    lwc1	$f29,30260($s1)
    # Line 681
    lwc1	$f0,30264($s1)
    # Line 678
    cvt.s.w	$f23,$f23
    # Line 681
    lwc1	$f2,30296($s1)
    # Line 680
    lwc1	$f1,30292($s1)
    # Line 679
    lwc1	$f31,30288($s1)
    # Line 678
    lwc1	$f27,30284($s1)
    # Line 681
    nmsub.s	$f0,$f0,$f23,$f2
    # Line 679
    lwc1	$f25,30256($s1)
    # Line 680
    nmsub.s	$f29,$f29,$f23,$f1
    # Line 678
    lwc1	$f21,30252($s1)
    # Line 679
    nmsub.s	$f25,$f25,$f23,$f31
    # Line 681
    lwc1	$f31,30220($s1)
    # Line 678
    nmsub.s	$f21,$f21,$f23,$f27
    # Line 680
    lwc1	$f27,30216($s1)
    # Line 679
    lwc1	$f23,30212($s1)
    # Line 678
    lwc1	$f19,30208($s1)
    # Line 681
    add.s	$f31,$f31,$f0
    # Line 680
    add.s	$f27,$f27,$f29
    # Line 681
    swc1	$f31,30220($s1)
    # Line 679
    add.s	$f23,$f23,$f25
    # Line 680
    swc1	$f27,30216($s1)
    # Line 678
    add.s	$f19,$f19,$f21
    # Line 679
    swc1	$f23,30212($s1)
    # Line 681
    beqz	$a5,.L0d9f9374
    # Line 678
    swc1	$f19,30208($s1)
    # Line 692
    ld	$a6,288($sp)
.L0d9f92b4:
    # Line 684
    lwc1	$f25,30224($s1)
    mtc1	$s2,$f29
    # Line 686
    lwc1	$f1,30348($s1)
    # Line 687
    lwc1	$f3,30352($s1)
    # Line 688
    lwc1	$f7,30356($s1)
    # Line 684
    cvt.s.w	$f29,$f29
    # Line 688
    lwc1	$f8,30396($s1)
    # Line 687
    lwc1	$f5,30392($s1)
    # Line 686
    lwc1	$f4,30388($s1)
    # Line 684
    lwc1	$f0,30380($s1)
    # Line 688
    nmsub.s	$f7,$f7,$f29,$f8
    # Line 685
    lwc1	$f2,30384($s1)
    # Line 687
    nmsub.s	$f3,$f3,$f29,$f5
    # Line 684
    lwc1	$f27,30340($s1)
    # Line 686
    nmsub.s	$f1,$f1,$f29,$f4
    # Line 685
    lwc1	$f31,30344($s1)
    # Line 684
    nmsub.s	$f27,$f27,$f29,$f0
    # Line 688
    lwc1	$f6,30240($s1)
    # Line 685
    nmsub.s	$f31,$f31,$f29,$f2
    # Line 687
    lwc1	$f2,30236($s1)
    # Line 686
    lwc1	$f0,30232($s1)
    # Line 685
    lwc1	$f29,30228($s1)
    # Line 688
    add.s	$f6,$f6,$f7
    # Line 687
    add.s	$f2,$f2,$f3
    # Line 688
    swc1	$f6,30240($s1)
    # Line 686
    add.s	$f0,$f0,$f1
    # Line 687
    swc1	$f2,30236($s1)
    # Line 685
    add.s	$f29,$f29,$f31
    # Line 686
    swc1	$f0,30232($s1)
    # Line 684
    add.s	$f25,$f25,$f27
    # Line 685
    swc1	$f29,30228($s1)
    # Line 692
    bnez	$a6,.L0d9f9380
    # Line 684
    swc1	$f25,30224($s1)
    # Line 697
    ld	$a7,512($sp)
.L0d9f933c:
    bnez	$a7,.L0d9f9398
    nop
    b	.L0d9f93bc
    # Line 709
    ld	$a1,296($sp)
.L0d9f934c:
    # Line 688
    ld	$t0,520($sp)
    beqz	$t0,.L0d9f9378
    # Line 692
    ld	$t1,288($sp)
    cvt.s.w	$f1,$f1
    lwc1	$f2,30284($s1)
    lwc1	$f0,30252($s1)
    nmsub.s	$f0,$f0,$f1,$f2
    lwc1	$f31,30208($s1)
    add.s	$f31,$f31,$f0
    swc1	$f31,30208($s1)
.L0d9f9374:
    ld	$t1,288($sp)
.L0d9f9378:
    beqz	$t1,.L0d9f933c
    # Line 697
    ld	$a7,512($sp)
.L0d9f9380:
    lw	$t3,30452($s1)
    lw	$t2,30460($s1)
    addu	$t2,$t2,$t3
    ld	$t3,512($sp)
    beqz	$t3,.L0d9f93b8
    sw	$t2,30452($s1)
.L0d9f9398:
    # Line 702
    lw	$at,30324($s1)
    mult	$at,$s2
    lw	$t9,30316($s1)
    lw	$t8,30204($s1)
    mflo	$ra
    subu	$t9,$t9,$ra
    addu	$t8,$t8,$t9
    sw	$t8,30204($s1)
.L0d9f93b8:
    # Line 709
    ld	$a1,296($sp)
.L0d9f93bc:
    # Line 702
    ld	$v0,280($sp)
    # Line 709
    ld	$t9,296($sp)
    # Line 705
    dmtc1	$zero,$f5
    # Line 702
    beqz	$v0,.L0d9f8a00
    # Line 707
    ldc1	$f6,_lit8_3ee4f8b588e368f1
    # Line 705
    lw	$a0,30324($s1)
    mult	$a0,$s2
    lw	$a3,30316($s1)
    mflo	$a2
    lwc1	$f0,30336($s1)
    subu	$v1,$a3,$a2
    mtc1	$v1,$f2
    cvt.d.s	$f4,$f0
    cvt.s.w	$f2,$f2
    lwc1	$f3,30484($s1)
    c.eq.d $f4,$f5
    lwc1	$f5,30500($s1)
    # Line 709
    subu	$t8,$a2,$a3
    # Line 705
    add.s	$f2,$f2,$f3
    # Line 709
    mtc1	$t8,$f1
    # Line 705
    bc1f .L0d9f89f0
    swc1	$f2,30484($s1)
    # Line 707
    negu	$a2,$a3
    mtc1	$a2,$f4
    cvt.d.w	$f4,$f4
    div.d	$f4,$f4,$f6
    cvt.d.s	$f3,$f5
    add.d	$f3,$f3,$f4
    cvt.s.d	$f3,$f3
    # Line 709
    bnez	$a1,.L0d9f8a08
    # Line 707
    swc1	$f3,30500($s1)
    # Line 715
    ld	$a3,448($sp)
.L0d9f943c:
    bnez	$a3,.L0d9f8a2c
    # Line 719
    mtc1	$s2,$f4
    b	.L0d9f8a4c
    ld	$a0,264($sp)
    nop
.L0d9f9450:
    # Line 507
    ld	$a5,456($sp)
    ld	$a4,368($sp)
    slt	$a4,$a4,$a5
    # Line 522
    ld	$s2,368($sp)
    # Line 507
    bnez	$a4,.L0d9f8f5c
    move	$a1,$a5
    b	.L0d9f9620
    sd	$a5,576($sp)
.L0d9f9470:
    # Line 529
    move	$t9,$s0
    lwc1	$f14,80($sp)
    move	$a0,$s4
    bal __glEndPoints
    lwc1	$f13,76($sp)
    beqz	$s7,.L0d9f94d4
    swc1	$f0,28($sp)
    ld	$a0,304($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    move	$t9,$s0
    ld	$a0,312($sp)
    bal __glEndPoints
    swc1	$f0,32($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    move	$t9,$s0
    ld	$a0,320($sp)
    bal __glEndPoints
    swc1	$f0,36($sp)
    swc1	$f0,40($sp)
.L0d9f94d4:
    ld	$a6,504($sp)
    beqz	$a6,.L0d9f9588
    ld	$a7,448($sp)
    ld	$a0,384($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    sdc1	$f0,112($sp)
    ld	$a0,432($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    sdc1	$f0,120($sp)
    ld	$a0,392($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    ld	$a0,424($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    mov.s	$f30,$f0
    bal __glEndPoints
    lwc1	$f13,76($sp)
    ld	$a0,400($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    mov.s	$f28,$f0
    bal __glEndPoints
    lwc1	$f13,76($sp)
    ldc1	$f15,112($sp)
    lwc1	$f14,3544($s1)
    div.s	$f14,$f14,$f15
    ldc1	$f17,120($sp)
    lw	$t9,12524($s1)
    mul.s	$f17,$f17,$f14
    mul.s	$f16,$f0,$f14
    mul.s	$f15,$f28,$f14
    ld	$a1,408($sp)
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f30,$f14
    ld	$a7,448($sp)
.L0d9f9588:
    beqz	$a7,.L0d9f95b4
    ld	$a0,416($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    # lw $t9, -26076($gp) # &__glFogFragmentSlow
    move	$a0,$s1
    mov.s	$f14,$f0
    jal	__glFogFragmentSlow
    addiu	$a1,$sp,16
.L0d9f95b4:
    beqz	$s7,.L0d9f9c88
    nop	# was lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    lwc1	$f16,40($sp)
    mul.s	$f16,$f16,$f26
    swc1	$f16,40($sp)
.L0d9f95c8:
    lwc1	$f13,76($sp)
    trunc.w.s	$f18,$f13
    swc1	$f18,16($sp)
    lwc1	$f14,80($sp)
    ld	$t0,512($sp)
    trunc.w.s	$f17,$f14
    beqz	$t0,.L0d9f9600
    swc1	$f17,20($sp)
    move	$t9,$s0
    bal __glEndPoints
    ld	$a0,376($sp)
    trunc.l.s	$f19,$f0
    dmfc1	$t1,$f19
    sw	$t1,24($sp)
.L0d9f9600:
    lw	$t9,12608($s1)
    addiu	$a1,$sp,16
    jal	__glBuildAntiAliasIndex
    lw	$a0,11760($s1)
.L0d9f9610:
    # Line 522
    addiu	$s2,$s2,1
    nop
    nop
    nop
.L0d9f9620:
    # Line 523
    mtc1	$s2,$f21
    cvt.s.w	$f21,$f21
    # Line 526
    addiu	$a2,$sp,80
    # Line 524
    swc1	$f22,80($sp)
    # Line 526
    move	$t9,$s3
    # Line 523
    add.s	$f21,$f21,$f20
    # Line 526
    addiu	$a1,$sp,76
    move	$a0,$s6
    # Line 523
    swc1	$f21,76($sp)
    # Line 526
    move	$a3,$s5
    bal __glEndPoints
    # Line 525
    sb	$zero,260($s4)
    # Line 527
    c.eq.s $f0,$f24
    # Line 529
    ld	$t3,480($sp)
    ld	$t8,472($sp)
    # Line 527
    ld	$t2,496($sp)
    bc1t .L0d9f96d4
    # Line 526
    mov.s	$f26,$f0
    # Line 527
    beqz	$t2,.L0d9f969c
    ld	$t9,488($sp)
    movz	$t3,$t9,$t8
    # Line 529
    li	$t9,31
    sll	$t3,$t3,0x2
    and	$ra,$s2,$t9
    addu	$t3,$s1,$t3
    li	$t8,1
    subu	$t9,$t9,$ra
    lw	$t3,30008($t3)
    sllv	$t8,$t8,$t9
    and	$t3,$t3,$t8
    beqz	$t3,.L0d9f9610
.L0d9f969c:
    ld	$t8,520($sp)
    bnez	$t8,.L0d9f9470
    lw	$t9,8($sp)
    lwc1	$f23,0($t9)
    beqz	$s7,.L0d9f94d4
    swc1	$f23,28($sp)
    lw	$ra,8($sp)
    lwc1	$f29,4($ra)
    swc1	$f29,32($sp)
    lwc1	$f27,8($ra)
    swc1	$f27,36($sp)
    lwc1	$f25,12($ra)
    b	.L0d9f94d4
    swc1	$f25,40($sp)
.L0d9f96d4:
    # Line 531
    ld	$s2,336($sp)
.L0d9f96d8:
    # Line 532
    mtc1	$s2,$f31
    cvt.s.w	$f31,$f31
    # Line 535
    addiu	$a2,$sp,80
    # Line 533
    swc1	$f22,80($sp)
    # Line 535
    move	$t9,$s3
    # Line 532
    add.s	$f31,$f31,$f20
    # Line 535
    addiu	$a1,$sp,76
    move	$a0,$s6
    # Line 532
    swc1	$f31,76($sp)
    # Line 535
    move	$a3,$s5
    bal __glEndPoints
    # Line 534
    sb	$zero,260($s4)
    ld	$a1,576($sp)
    # Line 535
    c.eq.s $f0,$f24
    # Line 545
    ld	$v0,480($sp)
    ld	$v1,472($sp)
    # Line 719
    ld	$at,496($sp)
    # Line 535
    bc1t .L0d9f9c3c
    mov.s	$f26,$f0
    # Line 538
    ldc1	$f0,144($sp)
    c.eq.s $f26,$f0
    bc1t .L0d9f9c48
    nop
    # Line 719
    beqz	$at,.L0d9f9768
    ld	$a0,488($sp)
    movz	$v0,$a0,$v1
    # Line 545
    li	$a0,31
    sll	$v0,$v0,0x2
    and	$a2,$s2,$a0
    addu	$v0,$s1,$v0
    li	$v1,1
    subu	$a0,$a0,$a2
    lw	$v0,30008($v0)
    sllv	$v1,$v1,$a0
    and	$v0,$v0,$v1
    beqz	$v0,.L0d9f9914
.L0d9f9768:
    ld	$v1,520($sp)
    beqz	$v1,.L0d9f9c10
    lw	$a0,8($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    move	$a0,$s4
    bal __glEndPoints
    lwc1	$f13,76($sp)
    beqz	$s7,.L0d9f97d8
    swc1	$f0,28($sp)
    ld	$a0,304($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    move	$t9,$s0
    ld	$a0,312($sp)
    bal __glEndPoints
    swc1	$f0,32($sp)
    lwc1	$f14,80($sp)
    lwc1	$f13,76($sp)
    move	$t9,$s0
    ld	$a0,320($sp)
    bal __glEndPoints
    swc1	$f0,36($sp)
    swc1	$f0,40($sp)
.L0d9f97d8:
    ld	$a0,504($sp)
    beqz	$a0,.L0d9f988c
    ld	$a2,448($sp)
    ld	$a0,384($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    sdc1	$f0,96($sp)
    ld	$a0,432($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    sdc1	$f0,104($sp)
    ld	$a0,392($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    ld	$a0,424($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    mov.s	$f30,$f0
    bal __glEndPoints
    lwc1	$f13,76($sp)
    ld	$a0,400($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    mov.s	$f28,$f0
    bal __glEndPoints
    lwc1	$f13,76($sp)
    ldc1	$f15,96($sp)
    lwc1	$f14,3544($s1)
    div.s	$f14,$f14,$f15
    ldc1	$f17,104($sp)
    lw	$t9,12524($s1)
    mul.s	$f17,$f17,$f14
    mul.s	$f16,$f0,$f14
    mul.s	$f15,$f28,$f14
    ld	$a1,408($sp)
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f30,$f14
    ld	$a2,448($sp)
.L0d9f988c:
    beqz	$a2,.L0d9f98b8
    ld	$a0,416($sp)
    move	$t9,$s0
    lwc1	$f14,80($sp)
    bal __glEndPoints
    lwc1	$f13,76($sp)
    # lw $t9, -26076($gp) # &__glFogFragmentSlow
    move	$a0,$s1
    mov.s	$f14,$f0
    jal	__glFogFragmentSlow
    addiu	$a1,$sp,16
.L0d9f98b8:
    beqz	$s7,.L0d9f9cac
    nop	# was lw $t9, -25276($gp) # &__glBuildAntiAliasIndex
    lwc1	$f16,40($sp)
    mul.s	$f16,$f16,$f26
    swc1	$f16,40($sp)
.L0d9f98cc:
    lwc1	$f13,76($sp)
    trunc.w.s	$f18,$f13
    swc1	$f18,16($sp)
    lwc1	$f14,80($sp)
    ld	$a3,512($sp)
    trunc.w.s	$f17,$f14
    beqz	$a3,.L0d9f9904
    swc1	$f17,20($sp)
    move	$t9,$s0
    bal __glEndPoints
    ld	$a0,376($sp)
    trunc.l.s	$f19,$f0
    dmfc1	$a4,$f19
    sw	$a4,24($sp)
.L0d9f9904:
    lw	$t9,12608($s1)
    addiu	$a1,$sp,16
    jal	__glBuildAntiAliasIndex
    lw	$a0,11760($s1)
.L0d9f9914:
    # Line 531
    b	.L0d9f96d8
    addiu	$s2,$s2,-1
.L0d9f991c:
    # Line 494
    mov.s	$f13,$f26
    bal __glBuildAntiAliasIndex
    lwc1	$f12,28($sp)
    b	.L0d9f8bd4
    swc1	$f0,28($sp)
.L0d9f9930:
    # Line 626
    ld	$a6,440($sp)
    # Line 625
    ld	$a7,192($sp)
    ld	$t0,352($sp)
    # Line 626
    ld	$t1,344($sp)
    lui	$t2,0x7fff
    # Line 644
    mtc1	$s2,$f2
    # Line 626
    ori	$t2,$t2,0xffff
    ld	$a5,224($sp)
    # Line 630
    mtc1	$s2,$f25
    # Line 626
    and	$t1,$t1,$t2
    sd	$t1,344($sp)
    # Line 671
    mtc1	$s2,$f10
    # Line 625
    addu	$t0,$t0,$a7
    sd	$t0,352($sp)
    addu	$a6,$a6,$a7
    # Line 626
    beqz	$a5,.L0d9f9a88
    sd	$a6,440($sp)
    ld	$t3,520($sp)
    beqz	$t3,.L0d9f9c9c
    # Line 633
    ld	$a6,504($sp)
    ld	$t8,504($sp)
    # Line 632
    lwc1	$f31,30276($s1)
    # Line 633
    lwc1	$f1,30280($s1)
    # Line 630
    cvt.s.w	$f25,$f25
    # Line 633
    lwc1	$f3,30296($s1)
    # Line 632
    lwc1	$f2,30292($s1)
    # Line 631
    lwc1	$f0,30288($s1)
    # Line 630
    lwc1	$f29,30284($s1)
    # Line 633
    nmsub.s	$f1,$f1,$f25,$f3
    # Line 631
    lwc1	$f27,30272($s1)
    # Line 632
    nmsub.s	$f31,$f31,$f25,$f2
    # Line 630
    lwc1	$f23,30268($s1)
    # Line 631
    nmsub.s	$f27,$f27,$f25,$f0
    # Line 633
    lwc1	$f0,30220($s1)
    # Line 630
    nmsub.s	$f23,$f23,$f25,$f29
    # Line 632
    lwc1	$f29,30216($s1)
    # Line 631
    lwc1	$f25,30212($s1)
    # Line 630
    lwc1	$f21,30208($s1)
    # Line 633
    add.s	$f0,$f0,$f1
    # Line 632
    add.s	$f29,$f29,$f31
    # Line 633
    swc1	$f0,30220($s1)
    # Line 631
    add.s	$f25,$f25,$f27
    # Line 632
    swc1	$f29,30216($s1)
    # Line 630
    add.s	$f21,$f21,$f23
    # Line 631
    swc1	$f25,30212($s1)
    # Line 633
    beqz	$t8,.L0d9f9ab0
    # Line 630
    swc1	$f21,30208($s1)
    # Line 644
    ld	$t9,288($sp)
.L0d9f99f0:
    # Line 636
    lwc1	$f27,30224($s1)
    mtc1	$s2,$f31
    # Line 638
    lwc1	$f2,30368($s1)
    # Line 639
    lwc1	$f4,30372($s1)
    # Line 640
    lwc1	$f8,30376($s1)
    # Line 636
    cvt.s.w	$f31,$f31
    # Line 640
    lwc1	$f9,30396($s1)
    # Line 639
    lwc1	$f6,30392($s1)
    # Line 638
    lwc1	$f5,30388($s1)
    # Line 636
    lwc1	$f1,30380($s1)
    # Line 640
    nmsub.s	$f8,$f8,$f31,$f9
    # Line 637
    lwc1	$f3,30384($s1)
    # Line 639
    nmsub.s	$f4,$f4,$f31,$f6
    # Line 636
    lwc1	$f29,30360($s1)
    # Line 638
    nmsub.s	$f2,$f2,$f31,$f5
    # Line 637
    lwc1	$f0,30364($s1)
    # Line 636
    nmsub.s	$f29,$f29,$f31,$f1
    # Line 640
    lwc1	$f7,30240($s1)
    # Line 637
    nmsub.s	$f0,$f0,$f31,$f3
    # Line 639
    lwc1	$f3,30236($s1)
    # Line 638
    lwc1	$f1,30232($s1)
    # Line 637
    lwc1	$f31,30228($s1)
    # Line 640
    add.s	$f7,$f7,$f8
    # Line 639
    add.s	$f3,$f3,$f4
    # Line 640
    swc1	$f7,30240($s1)
    # Line 638
    add.s	$f1,$f1,$f2
    # Line 639
    swc1	$f3,30236($s1)
    # Line 637
    add.s	$f31,$f31,$f0
    # Line 638
    swc1	$f1,30232($s1)
    # Line 636
    add.s	$f27,$f27,$f29
    # Line 637
    swc1	$f31,30228($s1)
    # Line 644
    bnez	$t9,.L0d9f9abc
    # Line 636
    swc1	$f27,30224($s1)
    # Line 649
    ld	$ra,512($sp)
.L0d9f9a78:
    bnez	$ra,.L0d9f9ad4
    nop
    b	.L0d9f9af8
    # Line 653
    ld	$a5,280($sp)
.L0d9f9a88:
    # Line 640
    ld	$at,520($sp)
    beqz	$at,.L0d9f9ab4
    # Line 644
    ld	$v0,288($sp)
    cvt.s.w	$f2,$f2
    lwc1	$f3,30284($s1)
    lwc1	$f1,30268($s1)
    nmsub.s	$f1,$f1,$f2,$f3
    lwc1	$f0,30208($s1)
    add.s	$f0,$f0,$f1
    swc1	$f0,30208($s1)
.L0d9f9ab0:
    ld	$v0,288($sp)
.L0d9f9ab4:
    beqz	$v0,.L0d9f9a78
    # Line 649
    ld	$ra,512($sp)
.L0d9f9abc:
    lw	$a0,30452($s1)
    lw	$v1,30456($s1)
    addu	$v1,$v1,$a0
    ld	$a0,512($sp)
    beqz	$a0,.L0d9f9af4
    sw	$v1,30452($s1)
.L0d9f9ad4:
    # Line 653
    lw	$a4,30324($s1)
    mult	$a4,$s2
    lw	$a2,30320($s1)
    lw	$a1,30204($s1)
    mflo	$a3
    subu	$a2,$a2,$a3
    addu	$a1,$a1,$a2
    sw	$a1,30204($s1)
.L0d9f9af4:
    ld	$a5,280($sp)
.L0d9f9af8:
    # Line 665
    sll	$at,$s2,0x2
    # Line 661
    ld	$t8,296($sp)
    # Line 656
    dmtc1	$zero,$f6
    # Line 653
    beqz	$a5,.L0d9f9ba4
    # Line 658
    ldc1	$f7,_lit8_3ee4f8b588e368f1
    # Line 656
    lw	$a7,30324($s1)
    mult	$a7,$s2
    lw	$a3,30320($s1)
    mflo	$a2
    lwc1	$f0,30336($s1)
    subu	$a6,$a3,$a2
    mtc1	$a6,$f3
    cvt.d.s	$f5,$f0
    cvt.s.w	$f3,$f3
    lwc1	$f4,30484($s1)
    c.eq.d	$f5,$f6
    # Line 658
    negu	$t1,$a3
    # Line 656
    lwc1	$f5,30500($s1)
    add.s	$f3,$f3,$f4
    # Line 658
    mtc1	$t1,$f6
    # Line 661
    subu	$t3,$a2,$a3
    # Line 656
    bc1f	.L0d9f9b90
    swc1	$f3,30484($s1)
    # Line 658
    cvt.d.w	$f6,$f6
    div.d	$f6,$f6,$f7
    cvt.d.s	$f4,$f5
    # Line 661
    ld	$t0,296($sp)
    # Line 658
    add.d	$f4,$f4,$f6
    cvt.s.d	$f4,$f4
    # Line 661
    bnez	$t0,.L0d9f9bac
    # Line 658
    swc1	$f4,30500($s1)
    # Line 667
    ld	$t2,448($sp)
.L0d9f9b78:
    bnez	$t2,.L0d9f9bc8
    nop
    b	.L0d9f8a4c
    # Line 719
    ld	$a0,264($sp)
    nop
    nop
.L0d9f9b90:
    # Line 661
    mtc1	$t3,$f7
    cvt.s.w	$f7,$f7
    div.s	$f7,$f7,$f0
    add.s	$f7,$f5,$f7
    swc1	$f7,30500($s1)
.L0d9f9ba4:
    beqz	$t8,.L0d9f9b78
    # Line 667
    ld	$t2,448($sp)
.L0d9f9bac:
    # Line 665
    lw	$ra,30440($s1)
    # Line 667
    lw	$t9,30444($s1)
    # Line 665
    subu	$ra,$ra,$at
    # Line 667
    addu	$t9,$t9,$ra
    ld	$ra,448($sp)
    beqz	$ra,.L0d9f8a48
    sw	$t9,30440($s1)
.L0d9f9bc8:
    # Line 671
    cvt.s.w	$f10,$f10
    lwc1	$f11,30432($s1)
    lwc1	$f9,30424($s1)
    nmsub.s	$f9,$f9,$f10,$f11
    lwc1	$f8,30244($s1)
    add.s	$f8,$f8,$f9
    b	.L0d9f8a48
    swc1	$f8,30244($s1)
.L0d9f9be8:
    # Line 558
    bnez	$v0,.L0d9f8fec
    nop
    b	.L0d9f906c
    # Line 569
    ld	$v0,512($sp)
    nop
    nop
.L0d9f9c00:
    # Line 681
    bnez	$v1,.L0d9f92b4
    # Line 692
    ld	$a6,288($sp)
    b	.L0d9f9378
    ld	$t1,288($sp)
.L0d9f9c10:
    # Line 545
    lwc1	$f11,0($a0)
    beqz	$s7,.L0d9f97d8
    swc1	$f11,28($sp)
    lw	$a2,8($sp)
    lwc1	$f14,4($a2)
    swc1	$f14,32($sp)
    lwc1	$f13,8($a2)
    swc1	$f13,36($sp)
    lwc1	$f12,12($a2)
    b	.L0d9f97d8
    swc1	$f12,40($sp)
.L0d9f9c3c:
    # Line 537
    li	$a3,-1
    # Line 538
    b	.L0d9f8f60
    sd	$a3,272($sp)
.L0d9f9c48:
    b	.L0d9f8f60
    # Line 541
    sd	$s2,272($sp)
.L0d9f9c50:
    # Line 511
    mov.s	$f13,$f26
    bal __glBuildAntiAliasIndex
    lwc1	$f12,28($sp)
    b	.L0d9f8ecc
    swc1	$f0,28($sp)
.L0d9f9c64:
    # Line 605
    sw	$a2,30248($s1)
    # Line 606
    lw	$t9,12232($s1)
    # Line 603
    sw	$a1,30196($s1)
    # Line 604
    ld	$a5,464($sp)
    # Line 606
    move	$a0,$s1
    jalr	$t9
    # Line 604
    sw	$a5,30200($s1)
    b	.L0d9f9190
    # Line 621
    ld	$v0,360($sp)
.L0d9f9c88:
    # Line 529
    mov.s	$f13,$f26
    bal __glBuildAntiAliasIndex
    lwc1	$f12,28($sp)
    b	.L0d9f95c8
    swc1	$f0,28($sp)
.L0d9f9c9c:
    # Line 633
    bnez	$a6,.L0d9f99f0
    # Line 644
    ld	$t9,288($sp)
    b	.L0d9f9ab4
    ld	$v0,288($sp)
.L0d9f9cac:
    # Line 545
    mov.s	$f13,$f26
    bal __glBuildAntiAliasIndex
    lwc1	$f12,28($sp)
    b	.L0d9f98cc
    swc1	$f0,28($sp)
.L0d9f9cc0:
    ld	$s5,584($sp)
    ld	$s3,592($sp)
    ld	$s0,600($sp)
    ld	$s6,608($sp)
    ld	$s7,616($sp)
    ldc1	$f24,624($sp)
.L0d9f9cd8:
    ld	$s2,560($sp)
    ldc1	$f30,552($sp)
    ldc1	$f28,544($sp)
    ldc1	$f22,536($sp)
    ldc1	$f26,528($sp)
    # Line 727
    ld	$s4,168($sp)
    ldc1	$f20,88($sp)
    # Line 723
    ld	$t0,440($sp)
    # Line 724
    ld	$t1,344($sp)
    # Line 725
    ld	$t2,368($sp)
    # Line 726
    ld	$t3,328($sp)
    sw	$t3,30172($s1)
    # Line 725
    sw	$t2,30168($s1)
    # Line 724
    sw	$t1,30152($s1)
    # Line 723
    sw	$t0,30148($s1)
    ld	$ra,568($sp)
    # Line 727
    ld	$a7,176($sp)
    ld	$s1,184($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a7
.L0d9f9d2c:
    # Line 444
    lw	$t8,28072($s1)
    lw	$t8,8($t8)
    b	.L0d9f8818
    sw	$t8,8($sp)
.end FillAASubTriangle

# Function: SetInitialParameters
# Declared: Line 735 (Source lines: 738-882)
# Address: 0x0d9f9d40 - 0x0d9fa2e0 (Size: 1440 bytes, Frame: 192)
.ent SetInitialParameters
SetInitialParameters:
    # Line 742
    lw	$at,30140($a0)
    # Line 740
    lw	$v0,30136($a0)
    # Line 738
    addiu	$sp,$sp,-64
    # Line 742
    mtc1	$at,$f0
    # Line 738
    sdc1	$f24,8($sp)
    # Line 740
    mtc1	$v0,$f24
    # Line 742
    cvt.s.w	$f0,$f0
    # Line 740
    cvt.s.w	$f24,$f24
    # Line 738
    sd	$s0,24($sp)
    # Line 742
    lw	$t0,30436($a0)
    c.lt.s	$f24,$f0
    # Line 738
    mov.s	$f4,$f15
    move	$s0,$a0
    sdc1	$f20,16($sp)
    mov.s	$f20,$f16
    sdc1	$f22,0($sp)
    # Line 742
    andi	$a5,$t0,0x1000
    andi	$a7,$t0,0x4000
    # Line 738
    mov.s	$f22,$f17
    # Line 742
    andi	$a6,$t0,0x2
    bc1f	.L0d9f9f80
    andi	$a4,$t0,0x1
    beqz	$a4,.L0d9fa278
    nop
    beqz	$a6,.L0d9f9e4c
    # Line 761
    andi	$v1,$t0,0x8
    # Line 747
    lwc1	$f7,30284($a0)
    lwc1	$f6,30300($a0)
    lwc1	$f8,0($a2)
    madd.s	$f8,$f8,$f16,$f7
    madd.s	$f8,$f8,$f17,$f6
    # Line 748
    madd.s	$f6,$f6,$f24,$f7
    # Line 751
    lwc1	$f3,30304($a0)
    lwc1	$f2,30288($a0)
    # Line 747
    swc1	$f8,30208($a0)
    # Line 748
    swc1	$f6,30252($a0)
    # Line 749
    add.s	$f6,$f6,$f7
    swc1	$f6,30268($a0)
    # Line 751
    lwc1	$f5,4($a2)
    madd.s	$f5,$f5,$f16,$f2
    madd.s	$f5,$f5,$f17,$f3
    # Line 752
    madd.s	$f3,$f3,$f24,$f2
    # Line 755
    lwc1	$f0,30308($a0)
    lwc1	$f27,30292($a0)
    # Line 752
    swc1	$f3,30256($a0)
    # Line 751
    swc1	$f5,30212($a0)
    # Line 753
    add.s	$f2,$f2,$f3
    swc1	$f2,30272($a0)
    # Line 755
    lwc1	$f1,8($a2)
    madd.s	$f1,$f1,$f16,$f27
    madd.s	$f1,$f1,$f17,$f0
    # Line 756
    madd.s	$f0,$f0,$f24,$f27
    # Line 759
    lwc1	$f31,30312($a0)
    lwc1	$f29,30296($a0)
    # Line 756
    swc1	$f0,30260($a0)
    # Line 755
    swc1	$f1,30216($a0)
    # Line 757
    add.s	$f27,$f27,$f0
    swc1	$f27,30276($a0)
    # Line 760
    madd.s	$f27,$f31,$f24,$f29
    # Line 759
    lwc1	$f25,12($a2)
    madd.s	$f25,$f25,$f16,$f29
    madd.s	$f25,$f25,$f17,$f31
    # Line 760
    swc1	$f27,30264($a0)
    # Line 761
    add.s	$f29,$f29,$f27
    swc1	$f29,30280($a0)
    # Line 759
    swc1	$f25,30220($a0)
    # Line 761
    andi	$v1,$t0,0x8
.L0d9f9e4c:
    beqz	$v1,.L0d9f9f30
    nop
    # Line 764
    lwc1	$f16,140($a1)
    # Line 765
    lwc1	$f31,30380($s0)
    lwc1	$f2,48($a1)
    lwc1	$f0,30400($s0)
    mul.s	$f1,$f31,$f20
    madd.s	$f1,$f1,$f2,$f16
    madd.s	$f1,$f1,$f22,$f0
    # Line 767
    madd.s	$f0,$f0,$f24,$f31
    # Line 770
    lwc1	$f23,30384($s0)
    # Line 767
    swc1	$f0,30340($s0)
    # Line 765
    swc1	$f1,30224($s0)
    # Line 768
    add.s	$f31,$f31,$f0
    swc1	$f31,30360($s0)
    # Line 770
    lwc1	$f29,52($a1)
    lwc1	$f25,30404($s0)
    mul.s	$f27,$f23,$f20
    madd.s	$f27,$f27,$f29,$f16
    madd.s	$f27,$f27,$f22,$f25
    # Line 772
    madd.s	$f25,$f25,$f24,$f23
    # Line 775
    lwc1	$f17,30388($s0)
    # Line 772
    swc1	$f25,30344($s0)
    # Line 770
    swc1	$f27,30228($s0)
    # Line 773
    add.s	$f23,$f23,$f25
    swc1	$f23,30364($s0)
    # Line 775
    lwc1	$f21,56($a1)
    lwc1	$f18,30408($s0)
    mul.s	$f19,$f17,$f20
    madd.s	$f19,$f19,$f21,$f16
    madd.s	$f19,$f19,$f22,$f18
    # Line 777
    madd.s	$f18,$f18,$f24,$f17
    # Line 780
    lwc1	$f10,30392($s0)
    # Line 777
    swc1	$f18,30348($s0)
    # Line 775
    swc1	$f19,30232($s0)
    # Line 778
    add.s	$f17,$f17,$f18
    swc1	$f17,30368($s0)
    # Line 780
    lwc1	$f15,60($a1)
    lwc1	$f13,30412($s0)
    mul.s	$f14,$f10,$f20
    madd.s	$f14,$f14,$f15,$f16
    madd.s	$f14,$f14,$f22,$f13
    # Line 782
    madd.s	$f13,$f13,$f24,$f10
    # Line 785
    lwc1	$f12,30416($s0)
    lwc1	$f11,30396($s0)
    # Line 782
    swc1	$f13,30352($s0)
    # Line 780
    swc1	$f14,30236($s0)
    # Line 783
    add.s	$f10,$f10,$f13
    swc1	$f10,30372($s0)
    # Line 786
    madd.s	$f10,$f12,$f24,$f11
    # Line 785
    lwc1	$f9,180($a1)
    madd.s	$f9,$f9,$f20,$f11
    madd.s	$f9,$f9,$f22,$f12
    # Line 786
    swc1	$f10,30356($s0)
    # Line 787
    add.s	$f11,$f11,$f10
    swc1	$f11,30376($s0)
    # Line 785
    swc1	$f9,30240($s0)
.L0d9f9f30:
    # Line 793
    beqz	$a7,.L0d9fa1a0
    nop
    lw	$a0,1792($s0)
    dsll32	$a0,$a0,0x7
    bgez	$a0,.L0d9fa168
    # Line 799
    nop	# was lw $t9, -25208($gp) # &__glPolygonOffsetZ
    sdc1	$f4,32($sp)
    sd	$a5,40($sp)
    mov.s	$f14,$f20
    move	$a0,$s0
    sd	$ra,48($sp)
    bal __glPolygonOffsetZ
    mov.s	$f15,$f22
    ld	$ra,48($sp)
    ld	$a5,40($sp)
    ldc1	$f4,32($sp)
    lwc1	$f5,30332($s0)
    lwc1	$f6,30336($s0)
    b	.L0d9fa188
    sw	$v0,30204($s0)
.L0d9f9f80:
    # Line 811
    beqz	$a4,.L0d9fa2ac
    nop
    beqz	$a6,.L0d9fa030
    nop
    # Line 816
    lwc1	$f14,30284($a0)
    lwc1	$f13,30300($a0)
    lwc1	$f15,0($a2)
    madd.s	$f15,$f15,$f16,$f14
    madd.s	$f15,$f15,$f17,$f13
    # Line 817
    madd.s	$f13,$f13,$f24,$f14
    # Line 819
    lwc1	$f10,30304($a0)
    lwc1	$f11,30288($a0)
    # Line 816
    swc1	$f15,30208($a0)
    # Line 817
    swc1	$f13,30252($a0)
    # Line 818
    sub.s	$f13,$f13,$f14
    swc1	$f13,30268($a0)
    # Line 819
    lwc1	$f12,4($a2)
    madd.s	$f12,$f12,$f16,$f11
    madd.s	$f12,$f12,$f17,$f10
    # Line 820
    madd.s	$f10,$f10,$f24,$f11
    # Line 823
    lwc1	$f5,30308($a0)
    lwc1	$f8,30292($a0)
    # Line 819
    swc1	$f12,30212($a0)
    # Line 820
    swc1	$f10,30256($a0)
    # Line 821
    sub.s	$f10,$f10,$f11
    swc1	$f10,30272($a0)
    # Line 823
    lwc1	$f9,8($a2)
    madd.s	$f9,$f9,$f16,$f8
    madd.s	$f9,$f9,$f17,$f5
    # Line 824
    madd.s	$f5,$f5,$f24,$f8
    # Line 827
    lwc1	$f7,30312($a0)
    lwc1	$f6,30296($a0)
    # Line 823
    swc1	$f9,30216($a0)
    # Line 824
    swc1	$f5,30260($a0)
    # Line 825
    sub.s	$f5,$f5,$f8
    swc1	$f5,30276($a0)
    # Line 828
    madd.s	$f5,$f7,$f24,$f6
    # Line 827
    lwc1	$f3,12($a2)
    madd.s	$f3,$f3,$f16,$f6
    madd.s	$f3,$f3,$f17,$f7
    # Line 828
    swc1	$f5,30264($a0)
    # Line 829
    sub.s	$f6,$f5,$f6
    swc1	$f6,30280($a0)
    # Line 827
    swc1	$f3,30220($a0)
.L0d9fa030:
    # Line 829
    andi	$a2,$t0,0x8
    beqz	$a2,.L0d9fa118
    nop
    # Line 832
    lwc1	$f27,140($a1)
    # Line 833
    lwc1	$f8,30380($s0)
    lwc1	$f10,48($a1)
    lwc1	$f7,30400($s0)
    mul.s	$f9,$f8,$f20
    madd.s	$f9,$f9,$f10,$f27
    madd.s	$f9,$f9,$f22,$f7
    # Line 835
    madd.s	$f7,$f7,$f24,$f8
    # Line 838
    lwc1	$f3,30384($s0)
    # Line 833
    swc1	$f9,30224($s0)
    # Line 835
    swc1	$f7,30340($s0)
    # Line 836
    sub.s	$f7,$f7,$f8
    swc1	$f7,30360($s0)
    # Line 838
    lwc1	$f6,52($a1)
    lwc1	$f2,30404($s0)
    mul.s	$f5,$f3,$f20
    madd.s	$f5,$f5,$f6,$f27
    madd.s	$f5,$f5,$f22,$f2
    # Line 840
    madd.s	$f2,$f2,$f24,$f3
    # Line 843
    lwc1	$f31,30388($s0)
    # Line 838
    swc1	$f5,30228($s0)
    # Line 840
    swc1	$f2,30344($s0)
    # Line 841
    sub.s	$f2,$f2,$f3
    swc1	$f2,30364($s0)
    # Line 843
    lwc1	$f1,56($a1)
    lwc1	$f29,30408($s0)
    mul.s	$f0,$f31,$f20
    madd.s	$f0,$f0,$f1,$f27
    madd.s	$f0,$f0,$f22,$f29
    # Line 845
    madd.s	$f29,$f29,$f24,$f31
    # Line 848
    lwc1	$f21,30392($s0)
    # Line 843
    swc1	$f0,30232($s0)
    # Line 845
    swc1	$f29,30348($s0)
    # Line 846
    sub.s	$f29,$f29,$f31
    swc1	$f29,30368($s0)
    # Line 848
    lwc1	$f25,60($a1)
    lwc1	$f17,30412($s0)
    mul.s	$f23,$f21,$f20
    madd.s	$f23,$f23,$f25,$f27
    madd.s	$f23,$f23,$f22,$f17
    # Line 850
    madd.s	$f17,$f17,$f24,$f21
    # Line 853
    lwc1	$f19,30416($s0)
    lwc1	$f18,30396($s0)
    # Line 848
    swc1	$f23,30236($s0)
    # Line 850
    swc1	$f17,30352($s0)
    # Line 851
    sub.s	$f17,$f17,$f21
    swc1	$f17,30372($s0)
    # Line 854
    madd.s	$f17,$f19,$f24,$f18
    # Line 853
    lwc1	$f16,180($a1)
    madd.s	$f16,$f16,$f20,$f18
    madd.s	$f16,$f16,$f22,$f19
    # Line 854
    swc1	$f17,30356($s0)
    # Line 855
    sub.s	$f18,$f17,$f18
    swc1	$f18,30376($s0)
    # Line 853
    swc1	$f16,30240($s0)
.L0d9fa118:
    # Line 861
    beqz	$a7,.L0d9fa21c
    nop
    lw	$a3,1792($s0)
    dsll32	$a3,$a3,0x7
    bgez	$a3,.L0d9fa1e4
    # Line 867
    nop	# was lw $t9, -25208($gp) # &__glPolygonOffsetZ
    sdc1	$f4,32($sp)
    sd	$a5,40($sp)
    mov.s	$f14,$f20
    move	$a0,$s0
    sd	$ra,48($sp)
    bal __glPolygonOffsetZ
    mov.s	$f15,$f22
    ld	$ra,48($sp)
    ld	$a5,40($sp)
    ldc1	$f4,32($sp)
    lwc1	$f5,30332($s0)
    lwc1	$f6,30336($s0)
    b	.L0d9fa204
    sw	$v0,30204($s0)
.L0d9fa168:
    # Line 801
    lwc1	$f6,30336($s0)
    lwc1	$f5,30332($s0)
    lwc1	$f11,136($a1)
    madd.s	$f11,$f11,$f20,$f6
    madd.s	$f11,$f11,$f22,$f5
    trunc.l.s	$f11,$f11
    dmfc1	$a4,$f11
    sw	$a4,30204($s0)
.L0d9fa188:
    # Line 804
    madd.s	$f13,$f5,$f24,$f6
    # Line 806
    add.s	$f12,$f6,$f13
    # Line 805
    trunc.w.s	$f13,$f13
    swc1	$f13,30316($s0)
    # Line 806
    trunc.w.s	$f12,$f12
    swc1	$f12,30320($s0)
.L0d9fa1a0:
    beqz	$a5,.L0d9fa260
    nop
    # Line 809
    lwc1	$f15,30432($s0)
    lwc1	$f17,30428($s0)
    # Line 810
    madd.s	$f16,$f17,$f24,$f15
    # Line 809
    madd.s	$f14,$f4,$f20,$f15
    # Line 882
    ldc1	$f20,16($sp)
    # Line 809
    madd.s	$f14,$f14,$f22,$f17
    # Line 882
    ldc1	$f24,8($sp)
    ldc1	$f22,0($sp)
    # Line 810
    swc1	$f16,30420($s0)
    # Line 811
    add.s	$f15,$f15,$f16
    swc1	$f15,30424($s0)
    # Line 809
    swc1	$f14,30244($s0)
    # Line 882
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9fa1e4:
    # Line 869
    lwc1	$f6,30336($s0)
    lwc1	$f5,30332($s0)
    lwc1	$f18,136($a1)
    madd.s	$f18,$f18,$f20,$f6
    madd.s	$f18,$f18,$f22,$f5
    trunc.l.s	$f18,$f18
    dmfc1	$a6,$f18
    sw	$a6,30204($s0)
.L0d9fa204:
    # Line 872
    madd.s	$f21,$f5,$f24,$f6
    # Line 874
    sub.s	$f19,$f21,$f6
    # Line 873
    trunc.w.s	$f21,$f21
    swc1	$f21,30316($s0)
    # Line 874
    trunc.w.s	$f19,$f19
    swc1	$f19,30320($s0)
.L0d9fa21c:
    beqz	$a5,.L0d9fa260
    nop
    # Line 877
    lwc1	$f25,30432($s0)
    lwc1	$f29,30428($s0)
    # Line 878
    madd.s	$f23,$f29,$f24,$f25
    # Line 877
    madd.s	$f27,$f4,$f20,$f25
    madd.s	$f22,$f27,$f22,$f29
    # Line 882
    ldc1	$f20,16($sp)
    ldc1	$f24,8($sp)
    # Line 878
    swc1	$f23,30420($s0)
    # Line 879
    sub.s	$f23,$f23,$f25
    swc1	$f23,30424($s0)
    # Line 877
    swc1	$f22,30244($s0)
    # Line 882
    ld	$s0,24($sp)
    ldc1	$f22,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9fa260:
    ld	$s0,24($sp)
    ldc1	$f20,16($sp)
    ldc1	$f22,0($sp)
    ldc1	$f24,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9fa278:
    # Line 787
    beqz	$a6,.L0d9f9f30
    nop
    # Line 791
    lwc1	$f1,30284($a0)
    lwc1	$f2,30300($a0)
    lwc1	$f31,0($a2)
    # Line 792
    madd.s	$f0,$f2,$f24,$f1
    # Line 791
    madd.s	$f31,$f31,$f16,$f1
    madd.s	$f31,$f31,$f17,$f2
    # Line 792
    swc1	$f0,30252($a0)
    # Line 793
    add.s	$f0,$f0,$f1
    swc1	$f0,30268($a0)
    b	.L0d9f9f30
    # Line 791
    swc1	$f31,30208($a0)
.L0d9fa2ac:
    # Line 855
    beqz	$a6,.L0d9fa118
    nop
    # Line 859
    lwc1	$f2,30284($a0)
    lwc1	$f3,30300($a0)
    lwc1	$f0,0($a2)
    # Line 860
    madd.s	$f1,$f3,$f24,$f2
    # Line 859
    madd.s	$f0,$f0,$f16,$f2
    madd.s	$f0,$f0,$f17,$f3
    # Line 860
    swc1	$f1,30252($a0)
    # Line 861
    sub.s	$f1,$f1,$f2
    swc1	$f1,30268($a0)
    b	.L0d9fa118
    # Line 859
    swc1	$f0,30208($a0)
.end SetInitialParameters

# Function: __glFillAntiAliasedTriangle
# Declared: Line 892 (Source lines: 895-1213)
# Address: 0x0d9fa2e0 - 0x0d9faf24 (Size: 3140 bytes, Frame: 128)
.globl __glFillAntiAliasedTriangle
.ent __glFillAntiAliasedTriangle
__glFillAntiAliasedTriangle:
    # Line 895
    addiu	$sp,$sp,-640
    sdc1	$f22,464($sp)
    # Line 917
    lwc1	$f22,30192($a0)
    # Line 895
    sdc1	$f26,448($sp)
    # Line 916
    lwc1	$f26,30188($a0)
    # Line 895
    sdc1	$f20,456($sp)
    # Line 915
    lwc1	$f20,30184($a0)
    # Line 895
    sdc1	$f24,472($sp)
    # Line 914
    lwc1	$f24,30180($a0)
    # Line 919
    sw	$a0,280($sp)
    # Line 942
    lw	$t1,3736($a0)
    li	$v0,1
    sllv	$t1,$v0,$t1
    mtc1	$t1,$f7
    cvt.s.w	$f7,$f7
    lwc1	$f6,128($a1)
    mul.s	$f6,$f6,$f7
    trunc.w.s	$f6,$f6
    cvt.s.w	$f6,$f6
    div.s	$f6,$f6,$f7
    swc1	$f6,288($sp)
    # Line 943
    lw	$t0,3736($a0)
    sllv	$t0,$v0,$t0
    mtc1	$t0,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f7,128($a2)
    mul.s	$f7,$f7,$f8
    trunc.w.s	$f7,$f7
    cvt.s.w	$f7,$f7
    div.s	$f7,$f7,$f8
    swc1	$f7,304($sp)
    # Line 944
    lw	$a7,3736($a0)
    sllv	$a7,$v0,$a7
    mtc1	$a7,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f11,128($a3)
    mul.s	$f11,$f11,$f12
    trunc.w.s	$f11,$f11
    cvt.s.w	$f11,$f11
    div.s	$f11,$f11,$f12
    swc1	$f11,320($sp)
    # Line 945
    lw	$a6,3736($a0)
    sllv	$a6,$v0,$a6
    mtc1	$a6,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,132($a1)
    mul.s	$f8,$f8,$f9
    trunc.w.s	$f8,$f8
    cvt.s.w	$f8,$f8
    div.s	$f8,$f8,$f9
    swc1	$f8,292($sp)
    # Line 946
    lw	$a5,3736($a0)
    sllv	$a5,$v0,$a5
    mtc1	$a5,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f10,132($a2)
    mul.s	$f10,$f10,$f12
    trunc.w.s	$f10,$f10
    cvt.s.w	$f10,$f10
    div.s	$f10,$f10,$f12
    swc1	$f10,308($sp)
    # Line 947
    lw	$v1,3736($a0)
    sllv	$v0,$v0,$v1
    mtc1	$v0,$f12
    cvt.s.w	$f12,$f12
    lwc1	$f9,132($a3)
    mul.s	$f9,$f9,$f12
    trunc.w.s	$f9,$f9
    cvt.s.w	$f9,$f9
    div.s	$f9,$f9,$f12
    # Line 895
    sd	$a4,520($sp)
    # Line 950
    sub.s	$f7,$f7,$f11
    sd	$s5,608($sp)
    sub.s	$f6,$f6,$f11
    sd	$ra,624($sp)
    sub.s	$f10,$f10,$f9
    sd	$gp,576($sp)
    sub.s	$f8,$f8,$f9
    # Line 895
    sd	$s1,568($sp)
    # Line 950
    mul.s	$f6,$f6,$f10
    # Line 947
    swc1	$f9,324($sp)
    # Line 950
    nmsub.s	$f6,$f6,$f7,$f8
    # Line 948
    lwc1	$f3,136($a1)
    # Line 895
    sd	$s2,560($sp)
    # Line 950
    mtc1	$zero,$f1
    # Line 948
    swc1	$f3,296($sp)
    # Line 949
    lwc1	$f2,136($a2)
    # Line 895
    sd	$s3,544($sp)
    move	$s3,$a3
    # Line 949
    swc1	$f2,312($sp)
    # Line 950
    c.eq.s	$f6,$f1
    # Line 895
    move	$s2,$a2
    lui	$at,0x5
    # Line 950
    lwc1	$f0,136($a3)
    # Line 895
    move	$s1,$a1
    sd	$s0,552($sp)
    addiu	$at,$at,27308
    move	$s0,$a0
    addu	$gp,$t9,$at
    # Line 950
    bc1t	.L0d9fa85c
    swc1	$f0,328($sp)
    # Line 958
    lwc1	$f8,3544($a0)
    div.s	$f8,$f8,$f6
    # Line 961
    lw	$ra,30436($a0)
    # Line 962
    lw	$at,8($s1)
    # Line 963
    lw	$v0,8($a2)
    # Line 958
    # lw $t9, -32696($gp) # &sub_0da00000
    # Line 968
    addiu	$a3,$sp,320
    # Line 963
    sd	$v0,528($sp)
    # Line 968
    addiu	$a2,$sp,304
    # Line 962
    sd	$at,480($sp)
    # Line 958
    addiu	$t9,$t9,-32064
    # Line 968
    addiu	$a1,$sp,288
    # Line 958
    addiu	$s5,$sp,0
    # Line 961
    sd	$ra,536($sp)
    # Line 968
    addiu	$a0,$sp,184
    bal __glEndPoints
    # Line 958
    sdc1	$f8,408($sp)
    # Line 969
    # lw $t9, -32696($gp) # &sub_0da00000
    addiu	$a3,$sp,288
    addiu	$t9,$t9,-32064
    addiu	$a2,$sp,320
    addiu	$a1,$sp,304
    bal __glEndPoints
    addiu	$a0,$s5,200
    # Line 970
    # lw $t9, -32696($gp) # &sub_0da00000
    addiu	$a3,$sp,304
    addiu	$t9,$t9,-32064
    addiu	$a2,$sp,288
    addiu	$a1,$sp,320
    bal __glEndPoints
    addiu	$a0,$s5,216
    # Line 976
    # lw $t9, -32696($gp) # &sub_0da00000
    addiu	$a0,$s5,240
    li	$a1,4
    lw	$v0,1908($s0)
    li	$at,4354
    addiu	$t9,$t9,-31696
    xor	$at,$at,$v0
    li	$v0,8
    sltiu	$at,$at,1
    bal __glEndPoints
    movn	$a1,$v0,$at
    ld	$a0,536($sp)
    andi	$a1,$a0,0x1
    beqz	$a1,.L0d9fad3c
    andi	$a0,$a0,0x2
    beqz	$a0,.L0d9fa890
    sd	$s4,616($sp)
    # Line 995
    ldc1	$f12,408($sp)
    # Line 993
    ld	$a4,480($sp)
    # Line 992
    lw	$t9,8($s3)
    # Line 994
    ld	$t8,528($sp)
    # Line 993
    lwc1	$f23,0($t9)
    # Line 994
    lwc1	$f25,0($t8)
    # Line 995
    mul.s	$f10,$f26,$f12
    # Line 993
    lwc1	$f21,0($a4)
    # Line 995
    mul.s	$f14,$f22,$f12
    # Line 996
    mul.s	$f9,$f20,$f12
    # Line 994
    sub.s	$f25,$f25,$f23
    # Line 996
    mul.s	$f12,$f24,$f12
    # Line 993
    sub.s	$f21,$f21,$f23
    # Line 995
    mul.s	$f23,$f10,$f25
    msub.s	$f23,$f23,$f14,$f21
    # Line 996
    mul.s	$f21,$f9,$f21
    msub.s	$f21,$f21,$f12,$f25
    swc1	$f21,30300($s0)
    # Line 995
    swc1	$f23,30284($s0)
    # Line 997
    lwc1	$f18,4($t9)
    # Line 998
    lwc1	$f19,4($t8)
    # Line 997
    lwc1	$f17,4($a4)
    # Line 998
    sub.s	$f19,$f19,$f18
    # Line 997
    sub.s	$f17,$f17,$f18
    # Line 999
    mul.s	$f18,$f10,$f19
    msub.s	$f18,$f18,$f17,$f14
    # Line 1000
    mul.s	$f17,$f9,$f17
    msub.s	$f17,$f17,$f19,$f12
    swc1	$f17,30304($s0)
    # Line 999
    swc1	$f18,30288($s0)
    # Line 1001
    lwc1	$f15,8($t9)
    # Line 1002
    lwc1	$f16,8($t8)
    # Line 1001
    lwc1	$f13,8($a4)
    # Line 1002
    sub.s	$f16,$f16,$f15
    # Line 1001
    sub.s	$f13,$f13,$f15
    # Line 1003
    mul.s	$f15,$f10,$f16
    msub.s	$f15,$f15,$f13,$f14
    # Line 1004
    mul.s	$f13,$f9,$f13
    msub.s	$f13,$f13,$f16,$f12
    swc1	$f13,30308($s0)
    # Line 1003
    swc1	$f15,30292($s0)
    # Line 1005
    lwc1	$f15,12($t9)
    lwc1	$f13,12($a4)
    # Line 1006
    lwc1	$f11,12($t8)
    # Line 1005
    sub.s	$f13,$f13,$f15
    # Line 1006
    sub.s	$f11,$f11,$f15
    # Line 1008
    mul.s	$f9,$f9,$f13
    msub.s	$f9,$f9,$f11,$f12
    # Line 1007
    mul.s	$f10,$f10,$f11
    msub.s	$f10,$f10,$f13,$f14
    # Line 992
    sd	$t9,512($sp)
    la	$s4,sub_0da00000
    # Line 1008
    swc1	$f9,30312($s0)
    # Line 992
    addiu	$s4,$s4,-31856
    # Line 1007
    swc1	$f10,30296($s0)
    # Line 1011
    move	$a3,$s3
    lwc1	$f18,0($t9)
    move	$t9,$s4
    move	$a2,$s2
    move	$a1,$s1
    lwc1	$f17,0($t8)
    addiu	$a0,$sp,0
    bal __glEndPoints
    lwc1	$f16,0($a4)
    # Line 1012
    ld	$at,528($sp)
    ld	$v0,512($sp)
    ld	$ra,480($sp)
    move	$a3,$s3
    move	$t9,$s4
    lwc1	$f18,4($v0)
    move	$a2,$s2
    move	$a1,$s1
    lwc1	$f16,4($ra)
    addiu	$a0,$s5,16
    bal __glEndPoints
    lwc1	$f17,4($at)
    # Line 1013
    ld	$a0,528($sp)
    ld	$v1,480($sp)
    ld	$a1,512($sp)
    move	$a3,$s3
    move	$t9,$s4
    lwc1	$f16,8($v1)
    move	$a2,$s2
    lwc1	$f18,8($a1)
    move	$a1,$s1
    lwc1	$f17,8($a0)
    bal __glEndPoints
    addiu	$a0,$s5,32
    # Line 1014
    ld	$a4,480($sp)
    ld	$a6,512($sp)
    ld	$a5,528($sp)
    move	$a3,$s3
    move	$t9,$s4
    lwc1	$f18,12($a6)
    move	$a2,$s2
    move	$a1,$s1
    lwc1	$f17,12($a5)
    addiu	$a0,$s5,48
    bal __glEndPoints
    lwc1	$f16,12($a4)
    b	.L0d9fa8c4
    # Line 1020
    ld	$t9,536($sp)
.L0d9fa6cc:
    # Line 1147
    lw	$t9,12536($s0)
    move	$a0,$s0
    jal	sub_0da00000
    move	$a1,$s1
    # Line 1148
    lw	$t9,12536($s0)
    # Line 1147
    sdc1	$f0,416($sp)
    # Line 1148
    move	$a1,$s2
    move	$a0,$s0
    jalr	$t9
    # Line 1147
    swc1	$f0,336($sp)
    # Line 1149
    lw	$t9,12536($s0)
    # Line 1148
    sdc1	$f0,592($sp)
    # Line 1149
    move	$a1,$s3
    move	$a0,$s0
    jalr	$t9
    # Line 1148
    swc1	$f0,340($sp)
    ldc1	$f5,408($sp)
    ldc1	$f6,592($sp)
    ldc1	$f7,416($sp)
    # Line 1149
    mov.s	$f8,$f0
.L0d9fa71c:
    # Line 1154
    mul.s	$f3,$f20,$f5
    # Line 1153
    mul.s	$f0,$f26,$f5
    sub.s	$f2,$f6,$f8
    sub.s	$f31,$f7,$f8
    mul.s	$f1,$f22,$f5
    mul.s	$f0,$f2,$f0
    msub.s	$f0,$f0,$f1,$f31
    # Line 1154
    mul.s	$f1,$f24,$f5
    mul.s	$f31,$f31,$f3
    msub.s	$f31,$f31,$f1,$f2
    # Line 1153
    swc1	$f0,30432($s0)
    # Line 1154
    swc1	$f31,30428($s0)
    # Line 1157
    move	$a3,$s3
    move	$t9,$s4
    lwc1	$f18,104($s3)
    move	$a2,$s2
    move	$a1,$s1
    lwc1	$f17,104($s2)
    addiu	$a0,$s5,160
    bal __glEndPoints
    lwc1	$f16,104($s1)
.L0d9fa770:
    # Line 1162
    lwc1	$f5,132($s2)
    # Line 1161
    lwc1	$f2,132($s1)
    lwc1	$f1,3540($s0)
    # Line 1163
    lwc1	$f8,132($s3)
    # Line 1171
    sub.s	$f4,$f2,$f5
    # Line 1162
    add.s	$f5,$f5,$f1
    # Line 1161
    add.s	$f3,$f2,$f1
    ld	$s4,616($sp)
    # Line 1163
    add.s	$f8,$f8,$f1
    # Line 1170
    lwc1	$f6,128($s2)
    # Line 1161
    trunc.w.s	$f3,$f3
    # Line 1171
    sdc1	$f4,352($sp)
    # Line 1163
    trunc.w.s	$f8,$f8
    # Line 1170
    lwc1	$f4,128($s1)
    # Line 1171
    cvt.s.w	$f7,$f3
    ld	$s5,480($sp)
    ld	$a7,520($sp)
    # Line 1162
    trunc.w.s	$f5,$f5
    # Line 1163
    mfc1	$t2,$f8
    # Line 1170
    sub.s	$f6,$f4,$f6
    # Line 1163
    sd	$t2,496($sp)
    # Line 1162
    mfc1	$t1,$f5
    # Line 1170
    sdc1	$f6,344($sp)
    # Line 1171
    add.s	$f1,$f1,$f7
    # Line 1161
    mfc1	$t0,$f3
    # Line 1162
    sd	$t1,600($sp)
    # Line 1161
    sd	$t0,488($sp)
    # Line 1171
    sub.s	$f1,$f1,$f2
    div.s	$f14,$f24,$f26
    beqz	$a7,.L0d9fadc4
    sdc1	$f1,584($sp)
    # Line 1175
    ldc1	$f24,584($sp)
    # lw $t9, -25220($gp) # &__glSnapXLeft
    ld	$s3,600($sp)
    move	$a0,$s0
    bal __glSnapXLeft
    madd.s	$f13,$f4,$f14,$f24
    # Line 1177
    lw	$ra,30148($s0)
    mtc1	$ra,$f16
    cvt.s.w	$f16,$f16
    lwc1	$f17,3540($s0)
    # lw $t9, -32696($gp) # &sub_0da00000
    lwc1	$f18,128($s1)
    move	$a0,$s0
    addiu	$t9,$t9,-25280
    add.s	$f16,$f16,$f17
    move	$a1,$s1
    move	$a2,$s5
    lwc1	$f15,336($sp)
    mov.s	$f17,$f24
    bal __glEndPoints
    sub.s	$f16,$f16,$f18
    ld	$s5,488($sp)
    bne	$s5,$s3,.L0d9facac
    # Line 1180
    ldc1	$f16,352($sp)
    # Line 1182
    ld	$t8,496($sp)
.L0d9fa850:
    la	$s1,sub_0da00000
    bne	$s3,$t8,.L0d9facec
    addiu	$s1,$s1,-30912
.L0d9fa85c:
    ld	$s3,544($sp)
.L0d9fa860:
    ld	$s0,552($sp)
    ld	$s2,560($sp)
    ld	$s1,568($sp)
    ld	$s5,608($sp)
    ldc1	$f26,448($sp)
    ldc1	$f20,456($sp)
    ld	$ra,624($sp)
    ldc1	$f22,464($sp)
    ldc1	$f24,472($sp)
    # Line 1213
    ld	$gp,576($sp)
    jr	$ra
    addiu	$sp,$sp,640
.L0d9fa890:
    # Line 1016
    lw	$t8,28072($s0)
    lw	$t8,8($t8)
    # Line 1017
    lwc1	$f21,0($t8)
    swc1	$f21,30208($s0)
    # Line 1018
    lwc1	$f19,4($t8)
    swc1	$f19,30212($s0)
    # Line 1019
    lwc1	$f18,8($t8)
    # Line 1020
    la	$s4,sub_0da00000
    # Line 1019
    swc1	$f18,30216($s0)
    # Line 1020
    lwc1	$f17,12($t8)
    addiu	$s4,$s4,-31856
    swc1	$f17,30220($s0)
    ld	$t9,536($sp)
.L0d9fa8c4:
    andi	$t9,$t9,0x8
    beqz	$t9,.L0d9fabf0
    # Line 1038
    ldc1	$f25,408($sp)
    # Line 1029
    lwc1	$f0,140($s2)
    # Line 1030
    lwc1	$f31,140($s3)
    # Line 1031
    lwc1	$f3,48($s3)
    # Line 1037
    lwc1	$f5,48($s2)
    # Line 1028
    lwc1	$f18,140($s1)
    # Line 1036
    lwc1	$f4,48($s1)
    # Line 1031
    mul.s	$f3,$f3,$f31
    # Line 1037
    msub.s	$f5,$f3,$f5,$f0
    # Line 1038
    mul.s	$f21,$f26,$f25
    # Line 1036
    msub.s	$f3,$f3,$f4,$f18
    # Line 1038
    mul.s	$f29,$f22,$f25
    # Line 1039
    mul.s	$f19,$f20,$f25
    mul.s	$f25,$f24,$f25
    # Line 1038
    mul.s	$f4,$f21,$f5
    msub.s	$f4,$f4,$f3,$f29
    # Line 1039
    mul.s	$f3,$f19,$f3
    msub.s	$f3,$f3,$f5,$f25
    # Line 1034
    lwc1	$f27,60($s3)
    # Line 1033
    lwc1	$f1,56($s3)
    # Line 1032
    lwc1	$f2,52($s3)
    # Line 1039
    swc1	$f3,30400($s0)
    # Line 1038
    swc1	$f4,30380($s0)
    # Line 1041
    lwc1	$f4,52($s2)
    # Line 1032
    mul.s	$f2,$f2,$f31
    # Line 1040
    lwc1	$f3,52($s1)
    # Line 1041
    msub.s	$f4,$f2,$f4,$f0
    # Line 1040
    msub.s	$f2,$f2,$f3,$f18
    # Line 1042
    mul.s	$f3,$f21,$f4
    msub.s	$f3,$f3,$f2,$f29
    # Line 1043
    mul.s	$f2,$f19,$f2
    msub.s	$f2,$f2,$f4,$f25
    swc1	$f2,30404($s0)
    # Line 1042
    swc1	$f3,30384($s0)
    # Line 1045
    lwc1	$f3,56($s2)
    # Line 1033
    mul.s	$f1,$f1,$f31
    # Line 1044
    lwc1	$f2,56($s1)
    # Line 1045
    msub.s	$f3,$f1,$f3,$f0
    # Line 1044
    msub.s	$f1,$f1,$f2,$f18
    # Line 1046
    mul.s	$f2,$f21,$f3
    msub.s	$f2,$f2,$f1,$f29
    # Line 1047
    mul.s	$f1,$f19,$f1
    msub.s	$f1,$f1,$f3,$f25
    # Line 1030
    sdc1	$f31,432($sp)
    # Line 1047
    swc1	$f1,30408($s0)
    # Line 1046
    swc1	$f2,30388($s0)
    # Line 1049
    lwc1	$f23,60($s2)
    # Line 1034
    mul.s	$f27,$f27,$f31
    # Line 1048
    lwc1	$f31,60($s1)
    # Line 1049
    msub.s	$f23,$f27,$f23,$f0
    # Line 1048
    msub.s	$f27,$f27,$f31,$f18
    # Line 1039
    sdc1	$f19,376($sp)
    # Line 1051
    mul.s	$f19,$f19,$f27
    msub.s	$f19,$f19,$f23,$f25
    # Line 1038
    sdc1	$f21,360($sp)
    # Line 1050
    mul.s	$f21,$f21,$f23
    msub.s	$f21,$f21,$f27,$f29
    # Line 1054
    addiu	$a1,$s0,30136
    sd	$a1,504($sp)
    # Line 1029
    sdc1	$f0,440($sp)
    # Line 1054
    lw	$t9,12520($s0)
    # Line 1051
    swc1	$f19,30412($s0)
    # Line 1050
    swc1	$f21,30392($s0)
    # Line 1054
    lwc1	$f17,60($s1)
    lwc1	$f16,56($s1)
    lwc1	$f15,52($s1)
    lwc1	$f14,48($s1)
    mul.s	$f17,$f17,$f18
    # Line 1028
    sdc1	$f18,424($sp)
    # Line 1054
    mul.s	$f16,$f16,$f18
    # Line 1038
    sdc1	$f29,400($sp)
    # Line 1054
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    # Line 1039
    sdc1	$f25,368($sp)
    # Line 1054
    jal	sub_0da00000
    mul.s	$f14,$f14,$f18
    lwc1	$f19,60($s1)
    ldc1	$f18,424($sp)
    mul.s	$f19,$f19,$f0
    mul.s	$f18,$f18,$f19
    # Line 1060
    swc1	$f18,180($s1)
    # Line 1061
    lwc1	$f14,48($s2)
    # Line 1054
    sdc1	$f18,384($sp)
    # Line 1061
    ldc1	$f18,440($sp)
    lwc1	$f17,60($s3)
    lwc1	$f16,56($s2)
    lwc1	$f15,52($s2)
    lw	$t9,12520($s0)
    mul.s	$f17,$f17,$f18
    mul.s	$f16,$f16,$f18
    mul.s	$f15,$f15,$f18
    ld	$a1,504($sp)
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f19,60($s2)
    ldc1	$f18,440($sp)
    mul.s	$f19,$f19,$f0
    mul.s	$f18,$f18,$f19
    # Line 1067
    swc1	$f18,180($s2)
    # Line 1068
    lwc1	$f14,48($s3)
    # Line 1061
    sdc1	$f18,392($sp)
    # Line 1068
    ldc1	$f18,432($sp)
    lwc1	$f17,60($s3)
    lwc1	$f16,56($s3)
    lwc1	$f15,52($s3)
    lw	$t9,12520($s0)
    mul.s	$f17,$f17,$f18
    mul.s	$f16,$f16,$f18
    mul.s	$f15,$f15,$f18
    ld	$a1,504($sp)
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
    lwc1	$f25,60($s3)
    # Line 1078
    ldc1	$f19,432($sp)
    # Line 1068
    mul.s	$f25,$f25,$f0
    # Line 1078
    ldc1	$f27,392($sp)
    nmsub.s	$f27,$f27,$f19,$f25
    ldc1	$f21,384($sp)
    ldc1	$f23,360($sp)
    nmsub.s	$f21,$f21,$f19,$f25
    ldc1	$f29,400($sp)
    mul.s	$f23,$f27,$f23
    msub.s	$f23,$f23,$f21,$f29
    # Line 1079
    ldc1	$f29,376($sp)
    mul.s	$f21,$f21,$f29
    ldc1	$f29,368($sp)
    msub.s	$f21,$f21,$f27,$f29
    # Line 1068
    mul.s	$f25,$f19,$f25
    # Line 1074
    swc1	$f25,180($s3)
    # Line 1078
    swc1	$f23,30396($s0)
    # Line 1079
    swc1	$f21,30416($s0)
    # Line 1083
    lwc1	$f18,48($s3)
    lwc1	$f17,48($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,440($sp)
    lwc1	$f16,48($s1)
    mul.s	$f17,$f17,$f19
    ldc1	$f19,424($sp)
    move	$a3,$s3
    move	$t9,$s4
    move	$a2,$s2
    move	$a1,$s1
    addiu	$a0,$s5,80
    bal __glEndPoints
    mul.s	$f16,$f16,$f19
    # Line 1087
    ldc1	$f19,432($sp)
    lwc1	$f18,52($s3)
    lwc1	$f17,52($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,440($sp)
    lwc1	$f16,52($s1)
    mul.s	$f17,$f17,$f19
    ldc1	$f19,424($sp)
    move	$a3,$s3
    move	$t9,$s4
    move	$a2,$s2
    move	$a1,$s1
    addiu	$a0,$s5,96
    bal __glEndPoints
    mul.s	$f16,$f16,$f19
    # Line 1091
    ldc1	$f19,432($sp)
    lwc1	$f18,56($s3)
    lwc1	$f17,56($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,440($sp)
    lwc1	$f16,56($s1)
    mul.s	$f17,$f17,$f19
    ldc1	$f19,424($sp)
    move	$a3,$s3
    move	$t9,$s4
    move	$a2,$s2
    move	$a1,$s1
    addiu	$a0,$s5,112
    bal __glEndPoints
    mul.s	$f16,$f16,$f19
    # Line 1095
    ldc1	$f19,432($sp)
    lwc1	$f18,60($s3)
    lwc1	$f17,60($s2)
    mul.s	$f18,$f18,$f19
    ldc1	$f19,440($sp)
    lwc1	$f16,60($s1)
    mul.s	$f17,$f17,$f19
    ldc1	$f19,424($sp)
    move	$a3,$s3
    move	$t9,$s4
    move	$a2,$s2
    move	$a1,$s1
    addiu	$a0,$s5,128
    bal __glEndPoints
    mul.s	$f16,$f16,$f19
    # Line 1099
    lwc1	$f18,180($s3)
    move	$a3,$s3
    move	$t9,$s4
    lwc1	$f17,180($s2)
    move	$a2,$s2
    move	$a1,$s1
    lwc1	$f16,180($s1)
    bal __glEndPoints
    addiu	$a0,$s5,144
.L0d9fabf0:
    # Line 1119
    ld	$ra,536($sp)
.L0d9fabf4:
    andi	$ra,$ra,0x4000
    beqz	$ra,.L0d9fac7c
    # Line 1134
    ld	$v0,536($sp)
    # Line 1125
    lwc1	$f0,136($s3)
    # Line 1128
    ldc1	$f29,408($sp)
    # Line 1125
    lwc1	$f23,136($s1)
    # Line 1126
    lwc1	$f27,136($s2)
    # Line 1128
    mul.s	$f31,$f20,$f29
    # Line 1127
    mul.s	$f25,$f22,$f29
    # Line 1125
    sub.s	$f23,$f23,$f0
    # Line 1126
    sub.s	$f27,$f27,$f0
    # Line 1127
    mul.s	$f0,$f26,$f29
    # Line 1128
    mul.s	$f29,$f24,$f29
    # Line 1127
    mul.s	$f25,$f25,$f23
    nmsub.s	$f25,$f25,$f27,$f0
    # Line 1128
    mul.s	$f23,$f23,$f31
    msub.s	$f23,$f23,$f27,$f29
    # Line 1129
    trunc.w.s	$f21,$f25
    # Line 1128
    swc1	$f23,30332($s0)
    # Line 1127
    swc1	$f25,30336($s0)
    # Line 1129
    mfc1	$at,$f21
    swc1	$f21,30324($s0)
    # Line 1130
    sll	$at,$at,0x5
    sw	$at,30328($s0)
    # Line 1134
    move	$a3,$s3
    move	$t9,$s4
    lwc1	$f18,136($s3)
    move	$a2,$s2
    move	$a1,$s1
    lwc1	$f17,136($s2)
    addiu	$a0,$s5,64
    bal __glEndPoints
    lwc1	$f16,136($s1)
    ld	$v0,536($sp)
.L0d9fac7c:
    andi	$v0,$v0,0x1000
    beqz	$v0,.L0d9fa770
    li	$a0,4354
    lw	$v1,1912($s0)
    bne	$a0,$v1,.L0d9fa6cc
    ldc1	$f5,408($sp)
    # Line 1144
    lwc1	$f8,104($s3)
    # Line 1143
    lwc1	$f6,104($s2)
    # Line 1142
    lwc1	$f7,104($s1)
    # Line 1143
    swc1	$f6,340($sp)
    # Line 1144
    b	.L0d9fa71c
    # Line 1142
    swc1	$f7,336($sp)
.L0d9facac:
    # Line 1180
    ldc1	$f15,344($sp)
    div.s	$f15,$f15,$f16
    # lw $t9, -25216($gp) # &__glSnapXRight
    lwc1	$f13,128($s1)
    mov.s	$f14,$f15
    addiu	$a0,$s0,30136
    bal __glSnapXRight
    madd.s	$f13,$f13,$f15,$f24
    # Line 1182
    # lw $t9, -32696($gp) # &sub_0da00000
    addiu	$t9,$t9,-30912
    addiu	$a2,$sp,0
    move	$a1,$s3
    bal __glEndPoints
    move	$a0,$s5
    b	.L0d9fa850
    ld	$t8,496($sp)
.L0d9facec:
    # Line 1188
    div.s	$f15,$f20,$f22
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
    bal __glSnapXRight
    madd.s	$f13,$f13,$f15,$f16
    # Line 1190
    move	$t9,$s1
    move	$a0,$s3
    ld	$a1,496($sp)
    bal __glEndPoints
    addiu	$a2,$sp,0
    b	.L0d9fa860
    ld	$s3,544($sp)
.L0d9fad3c:
    # Line 1099
    beqz	$a0,.L0d9fae88
    sd	$s4,616($sp)
    # Line 1112
    ldc1	$f21,408($sp)
    # Line 1110
    ld	$ra,480($sp)
    # Line 1109
    lw	$t9,8($s3)
    # Line 1111
    ld	$t8,528($sp)
    # Line 1110
    lwc1	$f25,0($t9)
    # Line 1111
    lwc1	$f19,0($t8)
    # Line 1110
    lwc1	$f17,0($ra)
    # Line 1112
    mul.s	$f18,$f26,$f21
    # Line 1111
    sub.s	$f19,$f19,$f25
    # Line 1112
    mul.s	$f23,$f22,$f21
    # Line 1110
    sub.s	$f17,$f17,$f25
    # Line 1112
    mul.s	$f18,$f19,$f18
    msub.s	$f18,$f18,$f17,$f23
    # Line 1113
    mul.s	$f23,$f20,$f21
    mul.s	$f21,$f24,$f21
    mul.s	$f17,$f17,$f23
    msub.s	$f17,$f17,$f19,$f21
    # Line 1109
    la	$s4,sub_0da00000
    # Line 1112
    swc1	$f18,30284($s0)
    # Line 1109
    addiu	$s4,$s4,-31856
    # Line 1113
    swc1	$f17,30300($s0)
    # Line 1116
    move	$a3,$s3
    lwc1	$f18,0($t9)
    move	$t9,$s4
    move	$a2,$s2
    move	$a1,$s1
    lwc1	$f16,0($ra)
    addiu	$a0,$sp,0
    bal __glEndPoints
    lwc1	$f17,0($t8)
    b	.L0d9fabf4
    # Line 1119
    ld	$ra,536($sp)
.L0d9fadc4:
    # Line 1195
    ldc1	$f24,584($sp)
    # lw $t9, -25216($gp) # &__glSnapXRight
    ld	$s3,600($sp)
    addiu	$a0,$s0,30136
    bal __glSnapXRight
    madd.s	$f13,$f4,$f14,$f24
    ld	$ra,488($sp)
    bne	$ra,$s3,.L0d9faea4
    # Line 1198
    ldc1	$f16,352($sp)
    # Line 1201
    ld	$t8,496($sp)
.L0d9fadec:
    la	$s5,sub_0da00000
    beq	$s3,$t8,.L0d9fa85c
    addiu	$s5,$s5,-30912
    # Line 1207
    div.s	$f15,$f20,$f22
    # Line 1206
    mtc1	$s3,$f24
    cvt.s.w	$f24,$f24
    lwc1	$f27,3540($s0)
    lwc1	$f25,132($s2)
    add.s	$f24,$f24,$f27
    # Line 1207
    # lw $t9, -25220($gp) # &__glSnapXLeft
    # Line 1206
    sub.s	$f24,$f24,$f25
    # Line 1207
    lwc1	$f13,128($s2)
    mov.s	$f14,$f15
    ld	$s1,528($sp)
    move	$a0,$s0
    bal __glSnapXLeft
    madd.s	$f13,$f13,$f24,$f15
    # Line 1209
    lw	$ra,30148($s0)
    mtc1	$ra,$f16
    cvt.s.w	$f16,$f16
    lwc1	$f18,3540($s0)
    # lw $t9, -32696($gp) # &sub_0da00000
    lwc1	$f17,128($s2)
    move	$a0,$s0
    addiu	$t9,$t9,-25280
    add.s	$f16,$f16,$f18
    move	$a1,$s2
    move	$a2,$s1
    lwc1	$f15,340($sp)
    sub.s	$f16,$f16,$f17
    bal __glEndPoints
    mov.s	$f17,$f24
    # Line 1210
    move	$t9,$s5
    move	$a0,$s3
    ld	$a1,496($sp)
    bal __glEndPoints
    addiu	$a2,$sp,0
    b	.L0d9fa860
    ld	$s3,544($sp)
.L0d9fae88:
    # Line 1119
    lw	$t8,28072($s0)
    lw	$t8,8($t8)
    la	$s4,sub_0da00000
    lwc1	$f17,0($t8)
    addiu	$s4,$s4,-31856
    b	.L0d9fabf0
    swc1	$f17,30208($s0)
.L0d9faea4:
    # Line 1198
    ldc1	$f15,344($sp)
    div.s	$f15,$f15,$f16
    # lw $t9, -25220($gp) # &__glSnapXLeft
    lwc1	$f13,128($s1)
    mov.s	$f14,$f15
    ld	$s5,480($sp)
    move	$a0,$s0
    bal __glSnapXLeft
    madd.s	$f13,$f13,$f15,$f24
    # Line 1200
    lw	$ra,30148($s0)
    mtc1	$ra,$f16
    cvt.s.w	$f16,$f16
    lwc1	$f18,3540($s0)
    # lw $t9, -32696($gp) # &sub_0da00000
    lwc1	$f17,128($s1)
    addiu	$t9,$t9,-25280
    add.s	$f16,$f16,$f18
    move	$a2,$s5
    move	$a1,$s1
    lwc1	$f15,336($sp)
    move	$a0,$s0
    sub.s	$f16,$f16,$f17
    bal __glEndPoints
    mov.s	$f17,$f24
    # Line 1201
    # lw $t9, -32696($gp) # &sub_0da00000
    addiu	$t9,$t9,-30912
    addiu	$a2,$sp,0
    move	$a1,$s3
    bal __glEndPoints
    ld	$a0,488($sp)
    b	.L0d9fadec
    ld	$t8,496($sp)
.end __glFillAntiAliasedTriangle

.rdata
_lit8_3ee4f8b588e368f1:
    .word 0x3ee4f8b5, 0x88e368f1
_lit_3f000000:
    .word 0x3f000000
_lit_3f800000:
    .word 0x3f800000
_lit_497423f0:
    .word 0x497423f0
_lit_bf000000:
    .word 0xbf000000
_lit_bf800000:
    .word 0xbf800000

