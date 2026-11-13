# Source: ../soft/so_texoptspan.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_texoptspan.c
# Total Functions: 12

.text

# Function: __glTextureRGB_F_F_Span
# Declared: Line 85 (Source lines: 86-322)
# Address: 0x0da143e0 - 0x0da152ec (Size: 3852 bytes, Frame: 144)
.globl __glTextureRGB_F_F_Span
.ent __glTextureRGB_F_F_Span
__glTextureRGB_F_F_Span:
    # Line 115
    lwc1	$f8,30236($a0)
    # Line 114
    lwc1	$f7,30228($a0)
    # Line 113
    lwc1	$f9,30224($a0)
    # Line 111
    lw	$t0,30464($a0)
    # Line 86
    addiu	$sp,$sp,-400
    sd	$s1,272($sp)
    # Line 109
    lw	$s1,28208($a0)
    sdc1	$f30,168($sp)
    sdc1	$f28,160($sp)
    sdc1	$f24,152($sp)
    sdc1	$f22,144($sp)
    sdc1	$f26,136($sp)
    sdc1	$f20,128($sp)
    sd	$s5,256($sp)
    sd	$s0,248($sp)
    sd	$s7,240($sp)
    sd	$ra,232($sp)
    sd	$s4,224($sp)
    sd	$s6,216($sp)
    sd	$s3,208($sp)
    sd	$s2,200($sp)
    sd	$gp,280($sp)
    # Line 86
    sd	$s8,264($sp)
    # Line 117
    lw	$v0,30248($a0)
    # Line 93
    lwc1	$f0,3540($a0)
    # Line 107
    lw	$a7,2484($a0)
    # Line 86
    lui	$at,0x4
    # Line 117
    addiu	$t1,$v0,-1
    # Line 86
    move	$s8,$a0
    addiu	$at,$at,-13908
    # Line 93
    sdc1	$f0,192($sp)
    # Line 107
    lw	$a7,0($a7)
    # Line 117
    bltz	$t1,.L0da1522c
    # Line 86
    addu	$gp,$t9,$at
    # Line 117
    addiu	$s5,$sp,32
    li	$s3,1
    li	$s6,4
    mtc1	$zero,$f22
    dmtc1	$zero,$f30
    addiu	$a0,$sp,12
    sd	$a0,296($sp)
    addiu	$v1,$sp,-4
    b	.L0da1482c
    sd	$v1,304($sp)
.L0da14490:
    # Line 190
    ldc1	$f6,_lit8_bff0000000000000
    add.d	$f6,$f20,$f6
    c.lt.d	$f6,$f30
    ldc1	$f5,_lit8_4000000000000000
    li	$a0,1
    movf	$a0,$zero,$fcc0
    ldc1	$f7,_lit8_3ff0000000000000
    beqz	$a0,.L0da1517c
    add.d	$f5,$f20,$f5
.L0da144b4:
    c.lt.d $f5,$f30
    li	$s7,12
    bc1f .L0da14fd8
    ldc1	$f28,_lit8_4030000000000000
    sdc1	$f4,336($sp)
    li	$s7,15
    ldc1	$f26,336($sp)
.L0da144d0:
    # Line 209
    # lw $t9, -22764($gp) # &floor
.L0da144d4:
    jal	floor
    mov.d	$f12,$f20
    trunc.w.d	$f7,$f0
    mfc1	$v0,$f7
    # Line 210
    addiu	$a1,$v0,-1
    mtc1	$a1,$f8
    # Line 213
    addiu	$a0,$v0,1
    mtc1	$a0,$f9
    # Line 210
    cvt.s.w	$f8,$f8
    # Line 213
    cvt.s.w	$f9,$f9
    # Line 210
    c.lt.s $f8,$f22
    # Line 209
    swc1	$f7,4($sp)
    # Line 210
    sw	$a1,0($sp)
    bc1f .L0da14514
    # Line 213
    c.lt.s $f26,$f9
    # Line 211
    sw	$zero,0($sp)
.L0da14514:
    # Line 213
    bc1f .L0da14528
    sw	$a0,8($sp)
    # Line 214
    trunc.w.s	$f10,$f26
    swc1	$f10,8($sp)
    mfc1	$a0,$f10
.L0da14528:
    # Line 216
    addiu	$a2,$a0,1
    mtc1	$a2,$f11
    cvt.s.w	$f11,$f11
    c.lt.s $f26,$f11
    bc1f .L0da14548
    sw	$a2,12($sp)
    # Line 217
    trunc.w.s	$f12,$f26
    swc1	$f12,12($sp)
.L0da14548:
    # Line 222
    # lw $t9, -22764($gp) # &floor
    li	$s0,32
    jal	floor
    mov.d	$f12,$f24
    lwc1	$f26,3540($s8)
    sub.d	$f17,$f24,$f0
    cvt.d.s	$f26,$f26
    madd.d	$f17,$f26,$f28,$f17
    trunc.w.d	$f17,$f17
    mfc1	$a5,$f17
    # Line 223
    sll	$a6,$a5,0x2
    # Line 227
    # lw $t9, -22764($gp) # &floor
    # Line 223
    addu	$a6,$s1,$a6
    # Line 224
    lwc1	$f16,24($a6)
    # Line 223
    lwc1	$f15,88($a6)
    # Line 226
    subu	$a4,$s0,$a5
    # Line 225
    sll	$a3,$a5,0x1e
    # Line 224
    swc1	$f16,100($sp)
    # Line 226
    sll	$a4,$a4,0x2
    # Line 225
    subu	$a3,$a3,$a5
    # Line 223
    swc1	$f15,96($sp)
    # Line 226
    addu	$a4,$s1,$a4
    # Line 225
    sll	$a3,$a3,0x2
    # Line 226
    lwc1	$f14,24($a4)
    # Line 225
    addu	$a3,$s1,$a3
    lwc1	$f13,88($a3)
    # Line 226
    swc1	$f14,108($sp)
    # Line 227
    mov.d	$f12,$f20
    jal	floor
    # Line 225
    swc1	$f13,104($sp)
    # Line 227
    sub.d	$f1,$f20,$f0
    madd.d	$f1,$f26,$f28,$f1
    ld	$a7,376($sp)
    trunc.w.d	$f1,$f1
    ld	$t0,368($sp)
    ld	$t1,360($sp)
    mfc1	$t9,$f1
    ldc1	$f7,176($sp)
    ldc1	$f8,352($sp)
    # Line 228
    sll	$ra,$t9,0x2
    ldc1	$f9,344($sp)
    addu	$ra,$s1,$ra
    # Line 231
    li	$a0,32
    # Line 229
    lwc1	$f0,24($ra)
    # Line 228
    lwc1	$f31,88($ra)
    # Line 231
    subu	$t8,$a0,$t9
    # Line 230
    sll	$s0,$t9,0x1e
    # Line 229
    swc1	$f0,116($sp)
    # Line 231
    sll	$t8,$t8,0x2
    # Line 230
    subu	$s0,$s0,$t9
    # Line 228
    swc1	$f31,112($sp)
    # Line 231
    addu	$t8,$s1,$t8
    # Line 230
    sll	$s0,$s0,0x2
    # Line 231
    lwc1	$f29,24($t8)
    # Line 230
    addu	$s0,$s1,$s0
    lwc1	$f27,88($s0)
    li	$t2,8448
    li	$t3,-1
    # Line 231
    swc1	$f29,124($sp)
    addiu	$a3,$sp,112
    move	$s0,$zero
    # Line 230
    swc1	$f27,120($sp)
    # Line 231
    addiu	$a4,$sp,96
.L0da14644:
    sll	$v0,$s0,0x4
    # Line 235
    addiu	$s0,$s0,1
    # Line 231
    lwc1	$f4,0($a3)
    addu	$v0,$v0,$s5
    # Line 235
    addiu	$a3,$a3,4
    # Line 237
    lwc1	$f6,12($a4)
    lwc1	$f5,8($a4)
    lwc1	$f3,4($a4)
    lwc1	$f2,96($sp)
    mul.s	$f6,$f6,$f4
    mul.s	$f5,$f5,$f4
    swc1	$f6,12($v0)
    mul.s	$f3,$f3,$f4
    swc1	$f5,8($v0)
    mul.s	$f2,$f2,$f4
    swc1	$f3,4($v0)
    swc1	$f2,0($v0)
    # Line 235
    bne	$s0,$s6,.L0da14644
    # Line 231
    addiu	$a4,$sp,96
    # Line 241
    beqz	$s4,.L0da14e70
.L0da14694:
    # Line 247
    li	$v1,2
.L0da14698:
    beq	$s4,$v1,.L0da14ff8
    # Line 260
    mtc1	$zero,$f6
    mtc1	$zero,$f4
    mtc1	$zero,$f5
    addiu	$s4,$sp,0
    li	$a4,3
    move	$s0,$zero
    li	$a3,3
.L0da146b8:
    # Line 276
    sll	$v1,$s3,0x3
    # Line 260
    sllv	$a5,$s3,$a4
    addiu	$a6,$sp,16
    sll	$v0,$s0,0x4
    addu	$v0,$v0,$s5
    and	$a5,$a5,$s7
    # Line 276
    and	$v1,$s2,$v1
    # Line 274
    addiu	$a3,$a3,-1
    # Line 276
    sllv	$a0,$s3,$a3
    beqz	$v1,.L0da14a34
    and	$a0,$s2,$a0
.L0da146e4:
    # Line 279
    lwc1	$f13,164($s1)
    # Line 277
    lwc1	$f10,0($v0)
    # Line 278
    lwc1	$f12,160($s1)
    # Line 277
    lwc1	$f11,156($s1)
    # Line 279
    madd.s	$f6,$f6,$f10,$f13
    # Line 278
    madd.s	$f4,$f4,$f10,$f12
    # Line 277
    madd.s	$f5,$f5,$f10,$f11
.L0da14700:
    # Line 274
    addiu	$a3,$a3,-1
    # Line 273
    addiu	$a4,$a4,-1
    # Line 276
    beqz	$a0,.L0da14a80
    # Line 273
    addiu	$s0,$s0,1
.L0da14710:
    # Line 279
    lwc1	$f17,164($s1)
    # Line 277
    lwc1	$f14,4($v0)
    # Line 278
    lwc1	$f16,160($s1)
    # Line 277
    lwc1	$f15,156($s1)
    # Line 279
    madd.s	$f6,$f6,$f14,$f17
    # Line 278
    madd.s	$f4,$f4,$f14,$f16
    # Line 277
    madd.s	$f5,$f5,$f14,$f15
.L0da1472c:
    # Line 276
    sllv	$a1,$s3,$a3
    # Line 274
    addiu	$a3,$a3,-1
    # Line 276
    and	$a1,$s2,$a1
    sllv	$a2,$s3,$a3
    # Line 260
    li	$a3,3
    # Line 276
    beqz	$a1,.L0da14ad0
    and	$a2,$s2,$a2
.L0da14748:
    # Line 279
    lwc1	$f23,164($s1)
    # Line 277
    lwc1	$f18,8($v0)
    # Line 278
    lwc1	$f21,160($s1)
    # Line 277
    lwc1	$f19,156($s1)
    # Line 279
    madd.s	$f6,$f6,$f18,$f23
    # Line 278
    madd.s	$f4,$f4,$f18,$f21
    # Line 277
    madd.s	$f5,$f5,$f18,$f19
.L0da14764:
    # Line 276
    beqz	$a2,.L0da14b20
    nop
.L0da1476c:
    # Line 279
    lwc1	$f31,164($s1)
    # Line 277
    lwc1	$f25,12($v0)
    # Line 278
    lwc1	$f29,160($s1)
    # Line 277
    lwc1	$f27,156($s1)
    # Line 279
    madd.s	$f6,$f6,$f25,$f31
    # Line 278
    madd.s	$f4,$f4,$f25,$f29
    # Line 277
    madd.s	$f5,$f5,$f25,$f27
.L0da14788:
    # Line 273
    bne	$s0,$s6,.L0da146b8
    addiu	$s4,$s4,4
.L0da14790:
    # Line 255
    beq	$a7,$t2,.L0da14f80
    # Line 296
    li	$a3,0x8062
.L0da14798:
    beq	$a7,$a3,.L0da14e48
    li	$a4,7681
    beq	$a7,$a4,.L0da14e48
    li	$a5,8449
    beq	$a7,$a5,.L0da14e48
    nop
    # Line 307
    lw	$a6,2484($s8)
    # Line 309
    lwc1	$f14,3544($s8)
    lwc1	$f12,4($a6)
    lwc1	$f13,0($t0)
    sub.s	$f14,$f14,$f5
    mul.s	$f12,$f12,$f5
    madd.s	$f12,$f12,$f13,$f14
    swc1	$f12,0($t0)
    # Line 310
    lwc1	$f11,3544($s8)
    lwc1	$f3,8($a6)
    lwc1	$f10,4($t0)
    sub.s	$f11,$f11,$f4
    mul.s	$f3,$f3,$f4
    madd.s	$f3,$f3,$f10,$f11
    swc1	$f3,4($t0)
    # Line 311
    lwc1	$f2,3544($s8)
    lwc1	$f0,12($a6)
    lwc1	$f1,8($t0)
    sub.s	$f2,$f2,$f6
    mul.s	$f0,$f0,$f6
    madd.s	$f0,$f0,$f1,$f2
    swc1	$f0,8($t0)
.L0da14808:
    # Line 318
    lwc1	$f17,30392($s8)
    # Line 317
    lwc1	$f16,30384($s8)
    # Line 316
    lwc1	$f15,30380($s8)
    # Line 117
    addiu	$t1,$t1,-1
    # Line 318
    add.s	$f8,$f17,$f8
    # Line 317
    add.s	$f7,$f16,$f7
    # Line 319
    addiu	$t0,$t0,16
    # Line 117
    beq	$t1,$t3,.L0da1522c
    # Line 316
    add.s	$f9,$f15,$f9
.L0da1482c:
    # Line 118
    lwc1	$f21,3544($s8)
    div.s	$f21,$f21,$f8
    # Line 131
    ld	$s4,296($sp)
    # Line 145
    ldc1	$f5,_lit8_bff0000000000000
    ldc1	$f6,_lit8_3ff0000000000000
    # Line 124
    lw	$s7,228($s1)
    # Line 131
    lw	$t9,4($s1)
    lwc1	$f28,32($s7)
    # Line 118
    sdc1	$f21,184($sp)
    # Line 131
    mul.s	$f21,$f9,$f21
    ldc1	$f20,192($sp)
    # Line 125
    lw	$ra,44($s7)
    # Line 131
    msub.s	$f20,$f20,$f28,$f21
    # Line 127
    lw	$v1,0($s7)
    sd	$v1,320($sp)
    # Line 129
    lw	$at,24($s7)
    # Line 131
    li	$s0,-1
    li	$t8,10497
    # Line 128
    lw	$v0,20($s7)
    # Line 131
    mtc1	$s0,$f4
    # Line 125
    sd	$ra,312($sp)
    # Line 129
    addiu	$at,$at,-1
    sd	$at,328($sp)
    # Line 128
    addiu	$s2,$v0,-1
    # Line 131
    bne	$t8,$t9,.L0da148f4
    cvt.d.s	$f24,$f20
    sd	$v0,288($sp)
    cvt.s.w	$f4,$f4
    sdc1	$f9,344($sp)
    add.s	$f5,$f4,$f20
    sdc1	$f8,352($sp)
    sdc1	$f7,176($sp)
    c.lt.s $f5,$f22
    sd	$t1,360($sp)
    sd	$t0,368($sp)
    bc1f .L0da14b6c
    sd	$a7,376($sp)
    # Line 138
    ld	$a0,288($sp)
    daddiu	$a0,$a0,-1
    dmtc1	$a0,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f20
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a1,$f13
    and	$a1,$s2,$a1
    b	.L0da14b88
    sw	$a1,4($s4)
.L0da148f4:
    # Line 145
    add.d	$f5,$f24,$f5
    c.lt.d $f5,$f30
    ldc1	$f4,_lit8_4000000000000000
    li	$v0,1
    movf	$v0,$zero,$fcc6
    beqz	$v0,.L0da15150
    add.d	$f4,$f24,$f4
.L0da14910:
    c.lt.d $f4,$f30
    bc1f .L0da14fa8
    li	$s2,12
    sdc1	$f9,344($sp)
    sdc1	$f8,352($sp)
    sdc1	$f7,176($sp)
    sd	$t1,360($sp)
    sd	$t0,368($sp)
    li	$s2,15
    sd	$a7,376($sp)
.L0da14938:
    # Line 164
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f20
    # Line 165
    addiu	$a2,$v0,-1
    mtc1	$a2,$f6
    cvt.s.w	$f6,$f6
    c.lt.s	$f6,$f22
    sw	$a2,16($sp)
    bc1f	.L0da14964
    # Line 164
    sw	$v0,20($sp)
    # Line 166
    sw	$zero,16($sp)
.L0da14964:
    # Line 168
    addiu	$a0,$v0,1
    mtc1	$a0,$f7
    cvt.s.w	$f7,$f7
    c.lt.s $f28,$f7
    bc1f .L0da14988
    sw	$a0,24($sp)
    # Line 169
    trunc.w.s	$f8,$f28
    swc1	$f8,24($sp)
    mfc1	$a0,$f8
.L0da14988:
    # Line 171
    addiu	$a3,$a0,1
    mtc1	$a3,$f9
    cvt.s.w	$f9,$f9
    c.lt.s $f28,$f9
    bc1f .L0da149a8
    sw	$a3,28($sp)
    # Line 172
    trunc.w.s	$f10,$f28
    swc1	$f10,28($sp)
.L0da149a8:
    move	$s4,$zero
.L0da149ac:
    # Line 176
    ldc1	$f29,184($sp)
    ldc1	$f27,176($sp)
    lwc1	$f4,36($s7)
    mul.s	$f27,$f27,$f29
    ldc1	$f26,192($sp)
    msub.s	$f26,$f26,$f4,$f27
    lw	$a4,8($s1)
    li	$v0,10497
    li	$s0,-1
    bne	$v0,$a4,.L0da14490
    cvt.d.s	$f20,$f26
    mtc1	$s0,$f4
    ldc1	$f28,_lit8_4030000000000000
    sd	$s4,384($sp)
    ld	$s4,304($sp)
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f26
    c.lt.s $f5,$f22
    bc1f .L0da14ccc
    # Line 185
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 183
    lw	$a5,24($s7)
    daddiu	$a5,$a5,-1
    dmtc1	$a5,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f26
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a6,328($sp)
    mfc1	$a7,$f13
    and	$a6,$a6,$a7
    b	.L0da14ce8
    sw	$a6,4($s4)
.L0da14a34:
    # Line 276
    bnez	$a5,.L0da146e4
    # Line 281
    ld	$v1,312($sp)
    lw	$at,0($s4)
    lw	$ra,16($sp)
    sllv	$at,$at,$v1
    addu	$ra,$ra,$at
    sll	$t9,$ra,0x2
    ld	$t8,320($sp)
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    lwc1	$f15,0($v0)
    addu	$t8,$t8,$t9
    # Line 283
    lwc1	$f17,8($t8)
    # Line 282
    lwc1	$f16,4($t8)
    # Line 281
    lwc1	$f14,0($t8)
    # Line 283
    madd.s	$f6,$f6,$f15,$f17
    # Line 282
    madd.s	$f4,$f4,$f15,$f16
    b	.L0da14700
    # Line 281
    madd.s	$f5,$f5,$f14,$f15
.L0da14a80:
    # Line 276
    bnez	$a5,.L0da14710
    # Line 281
    ld	$t9,312($sp)
    lw	$t8,0($s4)
    lw	$a2,4($a6)
    sllv	$t8,$t8,$t9
    addu	$a2,$a2,$t8
    sll	$a1,$a2,0x2
    ld	$a0,320($sp)
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    lwc1	$f19,4($v0)
    addu	$a0,$a0,$a1
    # Line 283
    lwc1	$f23,8($a0)
    # Line 282
    lwc1	$f21,4($a0)
    # Line 281
    lwc1	$f18,0($a0)
    # Line 283
    madd.s	$f6,$f6,$f19,$f23
    # Line 282
    madd.s	$f4,$f4,$f19,$f21
    b	.L0da1472c
    # Line 281
    madd.s	$f5,$f5,$f18,$f19
    nop
.L0da14ad0:
    # Line 276
    bnez	$a5,.L0da14748
    # Line 281
    ld	$a1,312($sp)
    lw	$a0,0($s4)
    lw	$v1,8($a6)
    sllv	$a0,$a0,$a1
    addu	$v1,$v1,$a0
    sll	$at,$v1,0x2
    ld	$ra,320($sp)
    subu	$at,$at,$v1
    sll	$at,$at,0x2
    lwc1	$f27,8($v0)
    addu	$ra,$ra,$at
    # Line 283
    lwc1	$f31,8($ra)
    # Line 282
    lwc1	$f29,4($ra)
    # Line 281
    lwc1	$f25,0($ra)
    # Line 283
    madd.s	$f6,$f6,$f27,$f31
    # Line 282
    madd.s	$f4,$f4,$f27,$f29
    b	.L0da14764
    # Line 281
    madd.s	$f5,$f5,$f25,$f27
    nop
.L0da14b20:
    # Line 276
    bnez	$a5,.L0da1476c
    # Line 281
    ld	$ra,312($sp)
    lw	$t9,0($s4)
    lw	$t8,12($a6)
    sllv	$t9,$t9,$ra
    addu	$t8,$t8,$t9
    sll	$a5,$t8,0x2
    ld	$a2,320($sp)
    subu	$a5,$a5,$t8
    sll	$a5,$a5,0x2
    lwc1	$f1,12($v0)
    addu	$a2,$a2,$a5
    # Line 283
    lwc1	$f3,8($a2)
    # Line 282
    lwc1	$f2,4($a2)
    # Line 281
    lwc1	$f0,0($a2)
    # Line 283
    madd.s	$f6,$f6,$f1,$f3
    # Line 282
    madd.s	$f4,$f4,$f1,$f2
    b	.L0da14788
    # Line 281
    madd.s	$f5,$f5,$f0,$f1
.L0da14b6c:
    # Line 140
    # lw $t9, -22764($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f4,$f0
    mfc1	$at,$f4
    and	$at,$s2,$at
    sw	$at,4($s4)
.L0da14b88:
    # Line 136
    addiu	$s0,$s0,1
    # Line 131
    mtc1	$s0,$f4
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f20
    c.lt.s $f5,$f22
    bc1f .L0da14bd8
    # Line 140
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 138
    ld	$v0,288($sp)
    daddu	$v0,$s0,$v0
    dmtc1	$v0,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f20
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$v1,$f13
    and	$v1,$s2,$v1
    b	.L0da14bf0
    sw	$v1,8($s4)
.L0da14bd8:
    # Line 140
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    mfc1	$a0,$f14
    and	$a0,$s2,$a0
    sw	$a0,8($s4)
.L0da14bf0:
    # Line 136
    addiu	$s0,$s0,1
    # Line 131
    mtc1	$s0,$f4
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f20
    c.lt.s $f5,$f22
    bc1f .L0da14c40
    # Line 140
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 138
    ld	$a1,288($sp)
    daddu	$a1,$s0,$a1
    dmtc1	$a1,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f20
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a2,$f13
    and	$a2,$s2,$a2
    b	.L0da14c58
    sw	$a2,12($s4)
.L0da14c40:
    # Line 140
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    mfc1	$a3,$f14
    and	$a3,$s2,$a3
    sw	$a3,12($s4)
.L0da14c58:
    # Line 136
    addiu	$s0,$s0,1
    # Line 131
    mtc1	$s0,$f4
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f20
    c.lt.s $f5,$f22
    bc1f .L0da14ca8
    # Line 140
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 138
    ld	$a4,288($sp)
    daddu	$a4,$s0,$a4
    dmtc1	$a4,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f20
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    mfc1	$a5,$f13
    and	$a5,$s2,$a5
    b	.L0da14cc0
    sw	$a5,16($s4)
.L0da14ca8:
    # Line 140
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    mfc1	$a6,$f14
    and	$a6,$s2,$a6
    sw	$a6,16($s4)
.L0da14cc0:
    # Line 136
    move	$s2,$zero
    b	.L0da149ac
    li	$s4,1
.L0da14ccc:
    # Line 185
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f15,$f0
    ld	$a7,328($sp)
    mfc1	$t0,$f15
    and	$a7,$a7,$t0
    sw	$a7,4($s4)
.L0da14ce8:
    # Line 181
    addiu	$s0,$s0,1
    # Line 176
    mtc1	$s0,$f4
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f26
    c.lt.s $f5,$f22
    bc1f .L0da14d3c
    # Line 185
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 183
    lw	$t1,24($s7)
    daddu	$t1,$s0,$t1
    dmtc1	$t1,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f26
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$t2,328($sp)
    mfc1	$t3,$f13
    and	$t2,$t2,$t3
    b	.L0da14d58
    sw	$t2,8($s4)
.L0da14d3c:
    # Line 185
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    ld	$t8,328($sp)
    mfc1	$t9,$f14
    and	$t8,$t8,$t9
    sw	$t8,8($s4)
.L0da14d58:
    # Line 181
    addiu	$s0,$s0,1
    # Line 176
    mtc1	$s0,$f4
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f26
    c.lt.s	$f5,$f22
    bc1f	.L0da14dac
    # Line 185
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 183
    lw	$ra,24($s7)
    daddu	$ra,$s0,$ra
    dmtc1	$ra,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f26
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$at,328($sp)
    mfc1	$v0,$f13
    and	$at,$at,$v0
    b	.L0da14dc8
    sw	$at,12($s4)
.L0da14dac:
    # Line 185
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    ld	$v1,328($sp)
    mfc1	$a0,$f14
    and	$v1,$v1,$a0
    sw	$v1,12($s4)
.L0da14dc8:
    # Line 181
    addiu	$s0,$s0,1
    # Line 176
    mtc1	$s0,$f4
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f26
    c.lt.s $f5,$f22
    bc1f .L0da14e1c
    # Line 185
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 183
    lw	$a1,24($s7)
    daddu	$a1,$s0,$a1
    dmtc1	$a1,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f26
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a2,328($sp)
    mfc1	$a3,$f13
    and	$a2,$a2,$a3
    b	.L0da14e38
    sw	$a2,16($s4)
.L0da14e1c:
    # Line 185
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    ld	$a4,328($sp)
    mfc1	$a5,$f14
    and	$a4,$a4,$a5
    sw	$a4,16($s4)
.L0da14e38:
    # Line 188
    ld	$s4,384($sp)
    move	$s7,$zero
    b	.L0da14548
    addiu	$s4,$s4,1
.L0da14e48:
    # Line 299
    lwc1	$f17,30752($s8)
    mul.s	$f17,$f17,$f5
    swc1	$f17,0($t0)
    # Line 300
    lwc1	$f16,30756($s8)
    mul.s	$f16,$f16,$f4
    swc1	$f16,4($t0)
    # Line 301
    lwc1	$f15,30760($s8)
    mul.s	$f15,$f15,$f6
    b	.L0da14808
    swc1	$f15,8($t0)
.L0da14e70:
    # Line 241
    bnez	$s2,.L0da14698
    # Line 247
    li	$v1,2
    # Line 241
    bnez	$s7,.L0da14694
    li	$t8,16
    # Line 246
    mtc1	$zero,$f5
    addiu	$v0,$sp,32
    mtc1	$zero,$f4
    ld	$a6,312($sp)
    mtc1	$zero,$f6
    li	$a4,3
    lw	$a5,0($sp)
    move	$a3,$zero
    sllv	$a4,$a4,$a6
    lw	$a2,16($sp)
    sllv	$a5,$a5,$a6
    li	$a6,-48
    sll	$a4,$a4,0x2
    addu	$a2,$a2,$a5
    li	$a5,-48
    sll	$a1,$a2,0x2
    ld	$a0,320($sp)
    addu	$a5,$a4,$a5
    subu	$a1,$a1,$a2
    addu	$a4,$a4,$a6
    sll	$a1,$a1,0x2
    li	$a6,3
    addu	$a0,$a0,$a1
    nop
.L0da14ee0:
    # Line 250
    sra	$v1,$a3,0x1f
    xor	$at,$a3,$v1
    subu	$at,$at,$v1
    andi	$at,$at,0x3
    xor	$at,$at,$v1
    subu	$at,$at,$v1
    addiu	$ra,$a0,12
    lwc1	$f12,8($a0)
    xor	$at,$a6,$at
    # Line 252
    addu	$v1,$ra,$a5
    # Line 247
    addiu	$t9,$a3,1
    movz	$ra,$v1,$at
    # Line 248
    lwc1	$f14,0($v0)
    # Line 250
    sra	$at,$t9,0x1f
    lwc1	$f10,8($ra)
    xor	$t9,$t9,$at
    # Line 248
    lwc1	$f11,4($v0)
    # Line 250
    subu	$t9,$t9,$at
    madd.s	$f6,$f6,$f12,$f14
    # Line 249
    lwc1	$f15,4($a0)
    # Line 250
    andi	$t9,$t9,0x3
    # Line 248
    lwc1	$f13,0($a0)
    # Line 247
    addiu	$a3,$a3,2
    # Line 250
    xor	$t9,$t9,$at
    madd.s	$f6,$f6,$f10,$f11
    # Line 249
    lwc1	$f12,4($ra)
    # Line 250
    subu	$t9,$t9,$at
    addiu	$a0,$ra,12
    # Line 249
    madd.s	$f4,$f4,$f14,$f15
    # Line 248
    lwc1	$f10,0($ra)
    xor	$t9,$a6,$t9
    # Line 252
    addu	$ra,$a0,$a4
    # Line 248
    madd.s	$f5,$f5,$f13,$f14
    movz	$a0,$ra,$t9
    # Line 249
    madd.s	$f4,$f4,$f11,$f12
    # Line 247
    addiu	$v0,$v0,8
    bne	$a3,$t8,.L0da14ee0
    # Line 248
    madd.s	$f5,$f5,$f10,$f11
    # Line 255
    bne	$a7,$t2,.L0da14798
    # Line 296
    li	$a3,0x8062
.L0da14f80:
    # Line 294
    lwc1	$f15,8($t0)
    # Line 293
    lwc1	$f14,4($t0)
    # Line 292
    lwc1	$f13,0($t0)
    # Line 294
    mul.s	$f15,$f15,$f6
    # Line 293
    mul.s	$f14,$f14,$f4
    # Line 294
    swc1	$f15,8($t0)
    # Line 292
    mul.s	$f13,$f13,$f5
    # Line 293
    swc1	$f14,4($t0)
    # Line 294
    b	.L0da14808
    # Line 292
    swc1	$f13,0($t0)
.L0da14fa8:
    # Line 145
    add.d	$f6,$f24,$f6
    c.lt.d $f6,$f30
    bc1f .L0da15110
    nop
    sdc1	$f9,344($sp)
    sdc1	$f8,352($sp)
    sdc1	$f7,176($sp)
    sd	$t1,360($sp)
    sd	$t0,368($sp)
    li	$s2,14
    b	.L0da14938
    sd	$a7,376($sp)
.L0da14fd8:
    # Line 190
    add.d	$f7,$f20,$f7
    c.lt.d $f7,$f30
    bc1f .L0da15138
    nop
    sdc1	$f4,336($sp)
    li	$s7,14
    b	.L0da144d0
    ldc1	$f26,336($sp)
.L0da14ff8:
    # Line 247
    mtc1	$zero,$f6
    mtc1	$zero,$f4
    mtc1	$zero,$f5
    addiu	$s4,$sp,0
    move	$s0,$zero
    ld	$a1,312($sp)
.L0da15010:
    addiu	$a6,$sp,16
    sll	$v0,$s0,0x4
    lw	$a0,0($s4)
    # Line 260
    addiu	$s0,$s0,1
    addiu	$s4,$s4,4
    # Line 263
    ld	$v1,320($sp)
    # Line 247
    addu	$v0,$v0,$s5
    sllv	$a0,$a0,$a1
    # Line 263
    lw	$a5,4($a6)
    lw	$a4,16($sp)
    addu	$a5,$a5,$a0
    lwc1	$f14,8($v0)
    sll	$a2,$a5,0x2
    addu	$a4,$a4,$a0
    lwc1	$f16,4($v0)
    subu	$a2,$a2,$a5
    sll	$a3,$a4,0x2
    sll	$a2,$a2,0x2
    subu	$a3,$a3,$a4
    lw	$a4,8($a6)
    lw	$a5,12($a6)
    addu	$a2,$v1,$a2
    sll	$a3,$a3,0x2
    lwc1	$f17,0($v0)
    addu	$a4,$a4,$a0
    addu	$a3,$v1,$a3
    addu	$a5,$a5,$a0
    # Line 265
    lwc1	$f11,8($a3)
    # Line 263
    sll	$a1,$a4,0x2
    lwc1	$f13,0($a3)
    subu	$a1,$a1,$a4
    sll	$a4,$a5,0x2
    # Line 265
    lwc1	$f10,8($a2)
    # Line 263
    sll	$a1,$a1,0x2
    # Line 264
    lwc1	$f18,4($a3)
    # Line 263
    subu	$a4,$a4,$a5
    # Line 265
    madd.s	$f6,$f6,$f17,$f11
    # Line 263
    addu	$a1,$v1,$a1
    sll	$a4,$a4,0x2
    # Line 265
    lwc1	$f12,8($a1)
    # Line 263
    lwc1	$f11,12($v0)
    addu	$v1,$v1,$a4
    # Line 265
    madd.s	$f6,$f6,$f16,$f10
    # Line 263
    madd.s	$f5,$f5,$f13,$f17
    # Line 265
    lwc1	$f10,8($v1)
    madd.s	$f6,$f6,$f14,$f12
    # Line 264
    lwc1	$f12,4($a2)
    # Line 263
    lwc1	$f15,0($a2)
    # Line 264
    madd.s	$f4,$f4,$f17,$f18
    # Line 265
    madd.s	$f6,$f6,$f11,$f10
    # Line 264
    lwc1	$f10,4($a1)
    # Line 263
    lwc1	$f13,0($a1)
    # Line 264
    madd.s	$f4,$f4,$f16,$f12
    # Line 263
    madd.s	$f5,$f5,$f15,$f16
    # Line 264
    lwc1	$f12,4($v1)
    madd.s	$f4,$f4,$f14,$f10
    # Line 263
    lwc1	$f10,0($v1)
    madd.s	$f5,$f5,$f13,$f14
    # Line 264
    madd.s	$f4,$f4,$f11,$f12
    # Line 263
    madd.s	$f5,$f5,$f10,$f11
    # Line 260
    bne	$s0,$s6,.L0da15010
    # Line 247
    ld	$a1,312($sp)
    b	.L0da14790
    nop
.L0da15110:
    # Line 145
    c.lt.s $f20,$f22
    bc1f .L0da1519c
    nop
    sdc1	$f9,344($sp)
    sdc1	$f8,352($sp)
    sdc1	$f7,176($sp)
    sd	$t1,360($sp)
    sd	$t0,368($sp)
    b	.L0da14938
    sd	$a7,376($sp)
.L0da15138:
    # Line 190
    c.lt.s $f26,$f22
    bc1f .L0da151c4
    nop
    sdc1	$f4,336($sp)
    b	.L0da144d0
    ldc1	$f26,336($sp)
.L0da15150:
    # Line 145
    cvt.d.s	$f12,$f28
    c.lt.d $f12,$f4
    bc1t .L0da14910
    # Line 160
    move	$s2,$zero
    sdc1	$f9,344($sp)
    sdc1	$f8,352($sp)
    sdc1	$f7,176($sp)
    sd	$t1,360($sp)
    sd	$t0,368($sp)
    b	.L0da14938
    sd	$a7,376($sp)
.L0da1517c:
    # Line 190
    cvt.d.s	$f13,$f28
    c.lt.d $f13,$f5
    # Line 205
    move	$s7,$zero
    # Line 190
    bc1t .L0da144b4
    ldc1	$f28,_lit8_4030000000000000
    sdc1	$f4,336($sp)
    b	.L0da144d0
    ldc1	$f26,336($sp)
.L0da1519c:
    # Line 145
    beqz	$v0,.L0da151dc
    nop
    sdc1	$f9,344($sp)
    sdc1	$f8,352($sp)
    sdc1	$f7,176($sp)
    sd	$t1,360($sp)
    sd	$t0,368($sp)
    li	$s2,8
    b	.L0da14938
    sd	$a7,376($sp)
.L0da151c4:
    # Line 190
    beqz	$a0,.L0da1520c
    nop
    sdc1	$f4,336($sp)
    li	$s7,8
    b	.L0da144d0
    ldc1	$f26,336($sp)
.L0da151dc:
    sdc1	$f9,344($sp)
    # Line 145
    cvt.d.s	$f10,$f28
    sdc1	$f8,352($sp)
    sdc1	$f7,176($sp)
    c.lt.d	$f10,$f5
    sd	$t1,360($sp)
    sd	$t0,368($sp)
    # Line 160
    li	$s2,1
    # Line 145
    bc1f	.L0da1527c
    sd	$a7,376($sp)
    b	.L0da14938
    li	$s2,15
.L0da1520c:
    # Line 190
    cvt.d.s	$f8,$f4
    c.lt.d $f8,$f6
    bc1f .L0da15290
    li	$s7,3
    sdc1	$f4,336($sp)
    li	$s7,15
    b	.L0da144d0
    ldc1	$f26,336($sp)
.L0da1522c:
    # Line 322
    ld	$gp,280($sp)
    ld	$s0,248($sp)
    ld	$s1,272($sp)
    ld	$s2,200($sp)
    ld	$s3,208($sp)
    ld	$s4,224($sp)
    ld	$s5,256($sp)
    ld	$s6,216($sp)
    ld	$s7,240($sp)
    ld	$s8,264($sp)
    ldc1	$f20,128($sp)
    ldc1	$f22,144($sp)
    ldc1	$f24,152($sp)
    ld	$ra,232($sp)
    ldc1	$f26,136($sp)
    move	$v0,$zero
    ldc1	$f28,160($sp)
    ldc1	$f30,168($sp)
    jr	$ra
    addiu	$sp,$sp,400
.L0da1527c:
    # Line 145
    c.lt.s $f28,$f20
    bc1f .L0da152a8
    nop
    b	.L0da14938
    li	$s2,7
.L0da15290:
    # Line 190
    c.lt.s $f4,$f26
    bc1f .L0da152bc
    sdc1	$f4,336($sp)
    ldc1	$f26,336($sp)
    b	.L0da144d0
    li	$s7,7
.L0da152a8:
    # Line 145
    c.lt.d $f10,$f6
    bc1f .L0da152d0
    nop
    b	.L0da14938
    li	$s2,3
.L0da152bc:
    # Line 190
    c.lt.d $f8,$f7
    bc1f .L0da152dc
    ldc1	$f26,336($sp)
    b	.L0da144d4
    # Line 209
    nop	# was lw $t9, -22764($gp) # &floor
.L0da152d0:
    # Line 160
    c.lt.d $f10,$f4
    b	.L0da14938
    movf	$s2,$zero,$fcc6
.L0da152dc:
    # Line 205
    c.lt.d $f8,$f5
    li	$s7,1
    b	.L0da144d0
    movf	$s7,$zero,$fcc7
.end __glTextureRGB_F_F_Span

# Function: __glTextureRGB_F_F_StippledSpan
# Declared: Line 332 (Source lines: 333-590)
# Address: 0x0da152f0 - 0x0da161f8 (Size: 3848 bytes, Frame: 208)
.globl __glTextureRGB_F_F_StippledSpan
.ent __glTextureRGB_F_F_StippledSpan
__glTextureRGB_F_F_StippledSpan:
    # Line 364
    lwc1	$f7,30236($a0)
    # Line 362
    lwc1	$f8,30224($a0)
    # Line 359
    lw	$a7,30464($a0)
    # Line 360
    lw	$v1,30472($a0)
    # Line 333
    addiu	$sp,$sp,-464
    sdc1	$f30,168($sp)
    # Line 363
    lwc1	$f30,30228($a0)
    # Line 360
    sd	$v1,320($sp)
    # Line 333
    sd	$s1,304($sp)
    # Line 357
    lw	$s1,28208($a0)
    # Line 358
    lw	$at,30248($a0)
    sd	$at,328($sp)
    sdc1	$f28,160($sp)
    sdc1	$f24,152($sp)
    sdc1	$f22,144($sp)
    sdc1	$f26,136($sp)
    sdc1	$f20,128($sp)
    sd	$s7,288($sp)
    sd	$s5,280($sp)
    sd	$s0,272($sp)
    sd	$s4,264($sp)
    sd	$ra,256($sp)
    sd	$s6,248($sp)
    sd	$s3,240($sp)
    sd	$s2,232($sp)
    sd	$gp,312($sp)
    # Line 333
    sd	$s8,296($sp)
    # Line 341
    lwc1	$f0,3540($a0)
    # Line 355
    lw	$t0,2484($a0)
    # Line 333
    lui	$v0,0x4
    move	$s8,$a0
    addiu	$v0,$v0,-17764
    # Line 341
    sdc1	$f0,216($sp)
    # Line 355
    lw	$t0,0($t0)
    # Line 364
    beqz	$at,.L0da16178
    # Line 333
    addu	$gp,$t9,$v0
    # Line 364
    addiu	$s5,$sp,32
    li	$s3,1
    li	$s6,4
    mtc1	$zero,$f24
    dmtc1	$zero,$f28
    li	$t3,-1
    li	$t2,32
    addiu	$a1,$sp,12
    sd	$a1,336($sp)
    addiu	$a0,$sp,-4
    b	.L0da153b8
    sd	$a0,344($sp)
.L0da153b0:
    # Line 375
    ld	$a2,328($sp)
    beqz	$a2,.L0da16178
.L0da153b8:
    # Line 368
    ld	$a3,328($sp)
    # Line 373
    ld	$a4,320($sp)
    # Line 368
    li	$a5,32
    move	$v0,$a3
    slt	$a5,$a5,$a3
    # Line 373
    addiu	$a4,$a4,4
    sd	$a4,320($sp)
    # Line 368
    movn	$v0,$t2,$a5
    # Line 373
    lw	$a4,-4($a4)
    # Line 375
    addiu	$t1,$v0,-1
    # Line 373
    sd	$a4,352($sp)
    # Line 371
    subu	$a3,$a3,$v0
    # Line 375
    bltz	$t1,.L0da153b0
    sd	$a3,328($sp)
    b	.L0da161e0
    lui	$a0,0x8000
    nop
    nop
.L0da15400:
    # Line 451
    add.d	$f7,$f20,$f7
    c.lt.d	$f7,$f28
    ldc1	$f6,_lit8_4000000000000000
    movf	$v0,$zero,$fcc0
    beqz	$v0,.L0da1603c
    add.d	$f6,$f20,$f6
.L0da15418:
    c.lt.d $f6,$f28
    bc1f .L0da15db8
    li	$s7,12
    sdc1	$f5,384($sp)
    li	$s7,15
    ldc1	$f26,384($sp)
.L0da15430:
    # Line 470
    # lw $t9, -22764($gp) # &floor
.L0da15434:
    jal	floor
    mov.d	$f12,$f20
    trunc.w.d	$f8,$f0
    mfc1	$v0,$f8
    # Line 471
    addiu	$a6,$v0,-1
    mtc1	$a6,$f9
    # Line 474
    addiu	$a0,$v0,1
    mtc1	$a0,$f10
    # Line 471
    cvt.s.w	$f9,$f9
    # Line 474
    cvt.s.w	$f10,$f10
    # Line 471
    c.lt.s $f9,$f24
    # Line 470
    swc1	$f8,4($sp)
    # Line 471
    sw	$a6,0($sp)
    bc1f .L0da15474
    # Line 474
    c.lt.s $f26,$f10
    # Line 472
    sw	$zero,0($sp)
.L0da15474:
    # Line 474
    bc1f .L0da15488
    sw	$a0,8($sp)
    # Line 475
    trunc.w.s	$f11,$f26
    swc1	$f11,8($sp)
    mfc1	$a0,$f11
.L0da15488:
    # Line 477
    addiu	$a7,$a0,1
    mtc1	$a7,$f12
    cvt.s.w	$f12,$f12
    c.lt.s $f26,$f12
    bc1f .L0da154a8
    sw	$a7,12($sp)
    # Line 478
    trunc.w.s	$f13,$f26
    swc1	$f13,12($sp)
.L0da154a8:
    # Line 483
    # lw $t9, -22764($gp) # &floor
    jal	floor
    mov.d	$f12,$f22
    lwc1	$f18,3540($s8)
    ldc1	$f26,_lit8_4030000000000000
    sub.d	$f19,$f22,$f0
    cvt.d.s	$f18,$f18
    sdc1	$f18,200($sp)
    madd.d	$f18,$f18,$f26,$f19
    trunc.w.d	$f18,$f18
    mfc1	$t2,$f18
    # Line 484
    sll	$t3,$t2,0x2
    # Line 488
    # lw $t9, -22764($gp) # &floor
    # Line 484
    addu	$t3,$s1,$t3
    # Line 487
    li	$t1,32
    # Line 485
    lwc1	$f17,24($t3)
    # Line 484
    lwc1	$f16,88($t3)
    # Line 487
    subu	$t1,$t1,$t2
    # Line 486
    sll	$t0,$t2,0x1e
    # Line 485
    swc1	$f17,100($sp)
    # Line 487
    sll	$t1,$t1,0x2
    # Line 486
    subu	$t0,$t0,$t2
    # Line 484
    swc1	$f16,96($sp)
    # Line 487
    addu	$t1,$s1,$t1
    # Line 486
    sll	$t0,$t0,0x2
    # Line 487
    lwc1	$f15,24($t1)
    # Line 486
    addu	$t0,$s1,$t0
    lwc1	$f14,88($t0)
    # Line 487
    swc1	$f15,108($sp)
    # Line 488
    mov.d	$f12,$f20
    jal	floor
    # Line 486
    swc1	$f14,104($sp)
    # Line 488
    sub.d	$f29,$f20,$f0
    ldc1	$f27,200($sp)
    madd.d	$f27,$f27,$f26,$f29
    ld	$a0,440($sp)
    trunc.w.d	$f27,$f27
    ld	$a7,432($sp)
    ld	$t0,424($sp)
    mfc1	$ra,$f27
    ld	$t1,416($sp)
    ldc1	$f7,408($sp)
    # Line 489
    sll	$at,$ra,0x2
    ldc1	$f8,400($sp)
    addu	$at,$s1,$at
    # Line 492
    li	$t2,32
    # Line 490
    lwc1	$f25,24($at)
    # Line 489
    lwc1	$f23,88($at)
    # Line 492
    subu	$t9,$t2,$ra
    # Line 491
    sll	$s0,$ra,0x1e
    # Line 490
    swc1	$f25,116($sp)
    # Line 492
    sll	$t9,$t9,0x2
    # Line 491
    subu	$s0,$s0,$ra
    # Line 489
    swc1	$f23,112($sp)
    # Line 492
    addu	$t9,$s1,$t9
    # Line 491
    sll	$s0,$s0,0x2
    li	$t3,-1
    # Line 492
    lwc1	$f21,24($t9)
    # Line 491
    addu	$s0,$s1,$s0
    li	$t8,8448
    # Line 521
    mtc1	$zero,$f5
    # Line 491
    lwc1	$f19,88($s0)
    # Line 492
    addiu	$a3,$sp,112
    # Line 521
    mtc1	$zero,$f6
    # Line 492
    swc1	$f21,124($sp)
    # Line 508
    li	$v1,2
    # Line 492
    move	$s0,$zero
    # Line 491
    swc1	$f19,120($sp)
    # Line 492
    addiu	$a4,$sp,96
.L0da155bc:
    sll	$v0,$s0,0x4
    # Line 496
    addiu	$s0,$s0,1
    # Line 492
    lwc1	$f4,0($a3)
    addu	$v0,$v0,$s5
    # Line 496
    addiu	$a3,$a3,4
    # Line 498
    lwc1	$f2,12($a4)
    lwc1	$f1,8($a4)
    lwc1	$f0,4($a4)
    lwc1	$f31,96($sp)
    mul.s	$f2,$f2,$f4
    mul.s	$f1,$f1,$f4
    swc1	$f2,12($v0)
    mul.s	$f0,$f0,$f4
    swc1	$f1,8($v0)
    mul.s	$f31,$f31,$f4
    swc1	$f0,4($v0)
    swc1	$f31,0($v0)
    # Line 496
    bne	$s0,$s6,.L0da155bc
    # Line 492
    addiu	$a4,$sp,96
    # Line 502
    beqz	$s4,.L0da15c68
    # Line 521
    li	$a4,3
.L0da15610:
    # Line 508
    beq	$s4,$v1,.L0da15e00
    # Line 521
    move	$s0,$zero
    mtc1	$zero,$f4
    addiu	$s4,$sp,0
    li	$a3,3
.L0da15624:
    # Line 537
    sll	$v1,$s3,0x3
    # Line 521
    sllv	$a5,$s3,$a4
    addiu	$a6,$sp,16
    sll	$v0,$s0,0x4
    addu	$v0,$v0,$s5
    and	$a5,$a5,$s7
    # Line 537
    and	$v1,$s2,$v1
    beqz	$v1,.L0da15948
    # Line 535
    addiu	$a3,$a3,-1
.L0da15648:
    # Line 540
    lwc1	$f11,164($s1)
    # Line 538
    lwc1	$f3,0($v0)
    # Line 539
    lwc1	$f10,160($s1)
    # Line 538
    lwc1	$f9,156($s1)
    # Line 540
    madd.s	$f5,$f5,$f3,$f11
    # Line 539
    madd.s	$f4,$f4,$f3,$f10
    # Line 538
    madd.s	$f6,$f6,$f3,$f9
.L0da15664:
    # Line 537
    sllv	$a1,$s3,$a3
    and	$a1,$s2,$a1
    # Line 534
    addiu	$s0,$s0,1
    addiu	$a4,$a4,-1
    # Line 537
    beqz	$a1,.L0da159a0
    # Line 535
    addiu	$a3,$a3,-1
.L0da1567c:
    # Line 540
    lwc1	$f15,164($s1)
    # Line 538
    lwc1	$f12,4($v0)
    # Line 539
    lwc1	$f14,160($s1)
    # Line 538
    lwc1	$f13,156($s1)
    # Line 540
    madd.s	$f5,$f5,$f12,$f15
    # Line 539
    madd.s	$f4,$f4,$f12,$f14
    # Line 538
    madd.s	$f6,$f6,$f12,$f13
.L0da15698:
    # Line 537
    sllv	$a2,$s3,$a3
    and	$a2,$s2,$a2
    beqz	$a2,.L0da159f0
    # Line 535
    addiu	$a3,$a3,-1
.L0da156a8:
    # Line 540
    lwc1	$f19,164($s1)
    # Line 538
    lwc1	$f16,8($v0)
    # Line 539
    lwc1	$f18,160($s1)
    # Line 538
    lwc1	$f17,156($s1)
    # Line 540
    madd.s	$f5,$f5,$f16,$f19
    # Line 539
    madd.s	$f4,$f4,$f16,$f18
    # Line 538
    madd.s	$f6,$f6,$f16,$f17
.L0da156c4:
    # Line 537
    sllv	$t9,$s3,$a3
    and	$t9,$s2,$t9
    beqz	$t9,.L0da15a40
    # Line 521
    li	$a3,3
.L0da156d4:
    # Line 540
    lwc1	$f27,164($s1)
    # Line 538
    lwc1	$f21,12($v0)
    # Line 539
    lwc1	$f25,160($s1)
    # Line 538
    lwc1	$f23,156($s1)
    # Line 540
    madd.s	$f5,$f5,$f21,$f27
    # Line 539
    madd.s	$f4,$f4,$f21,$f25
    # Line 538
    madd.s	$f6,$f6,$f21,$f23
.L0da156f0:
    # Line 534
    bne	$s0,$s6,.L0da15624
    addiu	$s4,$s4,4
.L0da156f8:
    # Line 516
    beq	$t0,$t8,.L0da15d90
    # Line 557
    li	$ra,0x8062
.L0da15700:
    li	$at,7681
    beq	$t0,$ra,.L0da15c40
    li	$v0,8449
    beq	$t0,$at,.L0da15c40
    nop
    beq	$t0,$v0,.L0da15c40
    nop
    # Line 568
    lw	$v1,2484($s8)
    # Line 570
    lwc1	$f11,3544($s8)
    lwc1	$f9,4($v1)
    lwc1	$f10,0($a7)
    sub.s	$f11,$f11,$f6
    mul.s	$f9,$f9,$f6
    madd.s	$f9,$f9,$f10,$f11
    swc1	$f9,0($a7)
    # Line 571
    lwc1	$f3,3544($s8)
    lwc1	$f1,8($v1)
    lwc1	$f2,4($a7)
    sub.s	$f3,$f3,$f4
    mul.s	$f1,$f1,$f4
    madd.s	$f1,$f1,$f2,$f3
    swc1	$f1,4($a7)
    # Line 572
    lwc1	$f0,3544($s8)
    lwc1	$f29,12($v1)
    lwc1	$f31,8($a7)
    sub.s	$f0,$f0,$f5
    mul.s	$f29,$f29,$f5
    madd.s	$f29,$f29,$f31,$f0
    swc1	$f29,8($a7)
.L0da15774:
    # Line 580
    lwc1	$f14,30392($s8)
    # Line 579
    lwc1	$f13,30384($s8)
    # Line 578
    lwc1	$f12,30380($s8)
    # Line 405
    ldc1	$f4,_lit8_4000000000000000
    # Line 375
    addiu	$t1,$t1,-1
    # Line 580
    add.s	$f7,$f14,$f7
    # Line 583
    srl	$a0,$a0,0x1
    # Line 581
    addiu	$a7,$a7,16
    # Line 405
    ldc1	$f6,_lit8_3ff0000000000000
    # Line 579
    add.s	$f30,$f13,$f30
    # Line 390
    li	$s0,10497
    # Line 405
    ldc1	$f5,_lit8_bff0000000000000
    # Line 375
    beq	$t1,$t3,.L0da153b0
    # Line 578
    add.s	$f8,$f12,$f8
    # Line 375
    ld	$a1,352($sp)
.L0da157b0:
    and	$a1,$a1,$a0
    beqz	$a1,.L0da15774
    # Line 390
    ldc1	$f20,216($sp)
    # Line 377
    lwc1	$f21,3544($s8)
    div.s	$f21,$f21,$f7
    # Line 383
    lw	$s7,228($s1)
    # Line 390
    lwc1	$f26,32($s7)
    # Line 377
    sdc1	$f21,208($sp)
    # Line 390
    mul.s	$f21,$f8,$f21
    lw	$a2,4($s1)
    # Line 384
    lw	$a3,44($s7)
    # Line 390
    msub.s	$f20,$f20,$f26,$f21
    # Line 386
    lw	$a5,0($s7)
    sd	$a5,368($sp)
    # Line 388
    lw	$a4,24($s7)
    # Line 387
    lw	$v0,20($s7)
    # Line 384
    sd	$a3,360($sp)
    # Line 388
    addiu	$a4,$a4,-1
    sd	$a4,376($sp)
    # Line 387
    addiu	$s4,$v0,-1
    # Line 390
    beq	$s0,$a2,.L0da15f30
    cvt.d.s	$f22,$f20
    # Line 405
    add.d	$f5,$f22,$f5
    c.lt.d $f5,$f28
    li	$v0,1
    movf	$v0,$zero,$fcc5
    beqz	$v0,.L0da16010
    add.d	$f4,$f22,$f4
.L0da15820:
    c.lt.d $f4,$f28
    bc1f .L0da15a8c
    li	$s2,12
    sdc1	$f8,400($sp)
    sdc1	$f7,408($sp)
    sd	$t1,416($sp)
    sd	$t0,424($sp)
    sd	$a7,432($sp)
    li	$s2,15
    sd	$a0,440($sp)
.L0da15848:
    # Line 424
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f20
    # Line 425
    addiu	$a6,$v0,-1
    mtc1	$a6,$f6
    # Line 428
    addiu	$a0,$v0,1
    mtc1	$a0,$f7
    # Line 425
    cvt.s.w	$f6,$f6
    # Line 428
    cvt.s.w	$f7,$f7
    # Line 425
    c.lt.s $f6,$f24
    sw	$a6,16($sp)
    # Line 424
    sw	$v0,20($sp)
    # Line 425
    bc1f .L0da15884
    # Line 428
    c.lt.s	$f26,$f7
    # Line 426
    sw	$zero,16($sp)
.L0da15884:
    # Line 428
    bc1f	.L0da15898
    sw	$a0,24($sp)
    # Line 429
    trunc.w.s	$f8,$f26
    swc1	$f8,24($sp)
    mfc1	$a0,$f8
.L0da15898:
    # Line 431
    addiu	$a7,$a0,1
    mtc1	$a7,$f9
    cvt.s.w	$f9,$f9
    c.lt.s $f26,$f9
    # Line 432
    move	$s4,$zero
    # Line 431
    bc1f .L0da158bc
    sw	$a7,28($sp)
    # Line 432
    trunc.w.s	$f10,$f26
    swc1	$f10,28($sp)
.L0da158bc:
    # Line 437
    ldc1	$f6,208($sp)
    lwc1	$f5,36($s7)
    mul.s	$f6,$f30,$f6
    ldc1	$f4,216($sp)
    msub.s	$f4,$f4,$f5,$f6
    lw	$t0,8($s1)
    # Line 451
    ldc1	$f7,_lit8_bff0000000000000
    li	$v0,1
    ldc1	$f8,_lit8_3ff0000000000000
    # Line 437
    bne	$s0,$t0,.L0da15400
    cvt.d.s	$f20,$f4
    li	$s0,-1
    mtc1	$s0,$f6
    sd	$s4,448($sp)
    ld	$s4,344($sp)
    cvt.s.w	$f6,$f6
    add.s	$f5,$f6,$f4
    c.lt.s $f5,$f24
    bc1f .L0da15abc
    sdc1	$f4,392($sp)
    # Line 444
    lw	$t1,24($s7)
    daddiu	$t1,$t1,-1
    dmtc1	$t1,$f12
    cvt.s.l	$f12,$f12
    ldc1	$f26,392($sp)
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f26
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$t2,376($sp)
    mfc1	$t3,$f13
    and	$t2,$t2,$t3
    b	.L0da15ae0
    sw	$t2,4($s4)
.L0da15948:
    # Line 537
    bnez	$a5,.L0da15648
    # Line 542
    ld	$a1,360($sp)
    lw	$v1,0($s4)
    lw	$at,16($sp)
    sllv	$v1,$v1,$a1
    addu	$at,$at,$v1
    sll	$ra,$at,0x2
    ld	$t9,368($sp)
    subu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    lwc1	$f15,0($v0)
    addu	$t9,$t9,$ra
    # Line 544
    lwc1	$f17,8($t9)
    # Line 543
    lwc1	$f16,4($t9)
    # Line 542
    lwc1	$f14,0($t9)
    # Line 544
    madd.s	$f5,$f5,$f15,$f17
    # Line 543
    madd.s	$f4,$f4,$f15,$f16
    b	.L0da15664
    # Line 542
    madd.s	$f6,$f6,$f14,$f15
    nop
    nop
    nop
.L0da159a0:
    # Line 537
    bnez	$a5,.L0da1567c
    # Line 542
    ld	$v1,360($sp)
    lw	$at,0($s4)
    lw	$ra,4($a6)
    sllv	$at,$at,$v1
    addu	$ra,$ra,$at
    sll	$t9,$ra,0x2
    ld	$a2,368($sp)
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    lwc1	$f19,4($v0)
    addu	$a2,$a2,$t9
    # Line 544
    lwc1	$f23,8($a2)
    # Line 543
    lwc1	$f21,4($a2)
    # Line 542
    lwc1	$f18,0($a2)
    # Line 544
    madd.s	$f5,$f5,$f19,$f23
    # Line 543
    madd.s	$f4,$f4,$f19,$f21
    b	.L0da15698
    # Line 542
    madd.s	$f6,$f6,$f18,$f19
    nop
.L0da159f0:
    # Line 537
    bnez	$a5,.L0da156a8
    # Line 542
    ld	$at,360($sp)
    lw	$ra,0($s4)
    lw	$t9,8($a6)
    sllv	$ra,$ra,$at
    addu	$t9,$t9,$ra
    sll	$a2,$t9,0x2
    ld	$a1,368($sp)
    subu	$a2,$a2,$t9
    sll	$a2,$a2,0x2
    lwc1	$f27,8($v0)
    addu	$a1,$a1,$a2
    # Line 544
    lwc1	$f31,8($a1)
    # Line 543
    lwc1	$f29,4($a1)
    # Line 542
    lwc1	$f25,0($a1)
    # Line 544
    madd.s	$f5,$f5,$f27,$f31
    # Line 543
    madd.s	$f4,$f4,$f27,$f29
    b	.L0da156c4
    # Line 542
    madd.s	$f6,$f6,$f25,$f27
    nop
.L0da15a40:
    # Line 537
    bnez	$a5,.L0da156d4
    # Line 542
    ld	$t9,360($sp)
    lw	$a5,0($s4)
    lw	$a2,12($a6)
    sllv	$a5,$a5,$t9
    addu	$a2,$a2,$a5
    sll	$a1,$a2,0x2
    ld	$v1,368($sp)
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    lwc1	$f1,12($v0)
    addu	$v1,$v1,$a1
    # Line 544
    lwc1	$f3,8($v1)
    # Line 543
    lwc1	$f2,4($v1)
    # Line 542
    lwc1	$f0,0($v1)
    # Line 544
    madd.s	$f5,$f5,$f1,$f3
    # Line 543
    madd.s	$f4,$f4,$f1,$f2
    b	.L0da156f0
    # Line 542
    madd.s	$f6,$f6,$f0,$f1
.L0da15a8c:
    # Line 405
    add.d	$f6,$f22,$f6
    c.lt.d $f6,$f28
    bc1f .L0da15dd8
    nop
    sdc1	$f8,400($sp)
    sdc1	$f7,408($sp)
    sd	$t1,416($sp)
    sd	$t0,424($sp)
    sd	$a7,432($sp)
    li	$s2,14
    b	.L0da15848
    sd	$a0,440($sp)
.L0da15abc:
    # Line 446
    # lw $t9, -22764($gp) # &floor
    ldc1	$f26,392($sp)
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f7,$f0
    ld	$ra,376($sp)
    mfc1	$at,$f7
    and	$ra,$ra,$at
    sw	$ra,4($s4)
.L0da15ae0:
    # Line 442
    addiu	$s0,$s0,1
    # Line 437
    mtc1	$s0,$f4
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f26
    c.lt.s $f5,$f24
    bc1f .L0da15b34
    # Line 446
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 444
    lw	$v0,24($s7)
    daddu	$v0,$s0,$v0
    dmtc1	$v0,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f26
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$v1,376($sp)
    mfc1	$a0,$f13
    and	$v1,$v1,$a0
    b	.L0da15b50
    sw	$v1,8($s4)
.L0da15b34:
    # Line 446
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    ld	$a1,376($sp)
    mfc1	$a2,$f14
    and	$a1,$a1,$a2
    sw	$a1,8($s4)
.L0da15b50:
    # Line 442
    addiu	$s0,$s0,1
    # Line 437
    mtc1	$s0,$f4
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f26
    c.lt.s $f5,$f24
    bc1f .L0da15ba4
    # Line 446
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 444
    lw	$a3,24($s7)
    daddu	$a3,$s0,$a3
    dmtc1	$a3,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f26
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a4,376($sp)
    mfc1	$a5,$f13
    and	$a4,$a4,$a5
    b	.L0da15bc0
    sw	$a4,12($s4)
.L0da15ba4:
    # Line 446
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    ld	$a6,376($sp)
    mfc1	$a7,$f14
    and	$a6,$a6,$a7
    sw	$a6,12($s4)
.L0da15bc0:
    # Line 442
    addiu	$s0,$s0,1
    # Line 437
    mtc1	$s0,$f4
    cvt.s.w	$f4,$f4
    add.s	$f5,$f4,$f26
    c.lt.s $f5,$f24
    bc1f .L0da15c14
    # Line 446
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 444
    lw	$t0,24($s7)
    daddu	$t0,$s0,$t0
    dmtc1	$t0,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f26
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$t1,376($sp)
    mfc1	$t2,$f13
    and	$t1,$t1,$t2
    b	.L0da15c30
    sw	$t1,16($s4)
.L0da15c14:
    # Line 446
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    ld	$t3,376($sp)
    mfc1	$t8,$f14
    and	$t3,$t3,$t8
    sw	$t3,16($s4)
.L0da15c30:
    # Line 449
    ld	$s4,448($sp)
    move	$s7,$zero
    b	.L0da154a8
    addiu	$s4,$s4,1
.L0da15c40:
    # Line 560
    lwc1	$f17,30752($s8)
    mul.s	$f17,$f17,$f6
    swc1	$f17,0($a7)
    # Line 561
    lwc1	$f16,30756($s8)
    mul.s	$f16,$f16,$f4
    swc1	$f16,4($a7)
    # Line 562
    lwc1	$f15,30760($s8)
    mul.s	$f15,$f15,$f5
    b	.L0da15774
    swc1	$f15,8($a7)
.L0da15c68:
    # Line 502
    bnez	$s2,.L0da15610
    nop
    bnez	$s7,.L0da15610
    nop
    # Line 507
    ld	$a4,368($sp)
    mtc1	$zero,$f6
    mtc1	$zero,$f4
    mtc1	$zero,$f5
    ld	$v1,360($sp)
    addiu	$v0,$sp,32
    li	$a6,3
    lw	$at,0($sp)
    move	$a3,$zero
    sllv	$a6,$a6,$v1
    lw	$ra,16($sp)
    li	$a5,-48
    sllv	$at,$at,$v1
    sll	$a6,$a6,0x2
    addu	$ra,$ra,$at
    addu	$a5,$a6,$a5
    sll	$t9,$ra,0x2
    subu	$t9,$t9,$ra
    li	$ra,-48
    addu	$a6,$a6,$ra
    sll	$t9,$t9,0x2
    addu	$a4,$a4,$t9
    li	$t9,16
    nop
    nop
    nop
.L0da15ce0:
    # Line 511
    sra	$a2,$a3,0x1f
    xor	$a1,$a3,$a2
    subu	$a1,$a1,$a2
    andi	$a1,$a1,0x3
    li	$ra,3
    xor	$a1,$a1,$a2
    addiu	$v1,$a4,12
    subu	$a1,$a1,$a2
    # Line 510
    lwc1	$f14,4($a4)
    # Line 513
    addu	$a2,$v1,$a5
    xor	$a1,$ra,$a1
    # Line 509
    lwc1	$f13,0($v0)
    # Line 508
    addiu	$at,$a3,1
    movz	$v1,$a2,$a1
    # Line 511
    lwc1	$f11,8($a4)
    sra	$a1,$at,0x1f
    # Line 509
    lwc1	$f10,4($v0)
    # Line 511
    xor	$at,$at,$a1
    lwc1	$f9,8($v1)
    subu	$at,$at,$a1
    # Line 509
    lwc1	$f12,0($a4)
    # Line 511
    madd.s	$f5,$f5,$f11,$f13
    andi	$at,$at,0x3
    # Line 508
    addiu	$a3,$a3,2
    # Line 510
    madd.s	$f4,$f4,$f13,$f14
    lwc1	$f11,4($v1)
    # Line 511
    xor	$at,$at,$a1
    addiu	$a4,$v1,12
    madd.s	$f5,$f5,$f9,$f10
    # Line 509
    lwc1	$f9,0($v1)
    # Line 511
    subu	$at,$at,$a1
    # Line 509
    madd.s	$f6,$f6,$f12,$f13
    xor	$ra,$ra,$at
    # Line 513
    addu	$at,$a4,$a6
    # Line 510
    madd.s	$f4,$f4,$f10,$f11
    movz	$a4,$at,$ra
    # Line 508
    addiu	$v0,$v0,8
    bne	$a3,$t9,.L0da15ce0
    # Line 509
    madd.s	$f6,$f6,$f9,$f10
    # Line 516
    bne	$t0,$t8,.L0da15700
    # Line 557
    li	$ra,0x8062
    nop
    nop
    nop
.L0da15d90:
    # Line 555
    lwc1	$f14,8($a7)
    # Line 554
    lwc1	$f13,4($a7)
    # Line 553
    lwc1	$f12,0($a7)
    # Line 555
    mul.s	$f14,$f14,$f5
    # Line 554
    mul.s	$f13,$f13,$f4
    # Line 555
    swc1	$f14,8($a7)
    # Line 553
    mul.s	$f12,$f12,$f6
    # Line 554
    swc1	$f13,4($a7)
    # Line 555
    b	.L0da15774
    # Line 553
    swc1	$f12,0($a7)
.L0da15db8:
    # Line 451
    add.d	$f8,$f20,$f8
    c.lt.d $f8,$f28
    bc1f .L0da15f18
    nop
    sdc1	$f5,384($sp)
    li	$s7,14
    b	.L0da15430
    ldc1	$f26,384($sp)
.L0da15dd8:
    # Line 405
    c.lt.s	$f20,$f24
    bc1f	.L0da16058
    nop
    sdc1	$f8,400($sp)
    sdc1	$f7,408($sp)
    sd	$t1,416($sp)
    sd	$t0,424($sp)
    sd	$a7,432($sp)
    b	.L0da15848
    sd	$a0,440($sp)
.L0da15e00:
    # Line 508
    mtc1	$zero,$f5
    mtc1	$zero,$f4
    mtc1	$zero,$f6
    addiu	$s4,$sp,0
    move	$s0,$zero
    ld	$a4,360($sp)
.L0da15e18:
    addiu	$a6,$sp,16
    sll	$v0,$s0,0x4
    lw	$a3,0($s4)
    # Line 521
    addiu	$s0,$s0,1
    addiu	$s4,$s4,4
    # Line 524
    ld	$v1,368($sp)
    # Line 508
    addu	$v0,$v0,$s5
    sllv	$a3,$a3,$a4
    # Line 524
    lw	$t9,4($a6)
    lw	$a5,16($sp)
    addu	$t9,$t9,$a3
    lwc1	$f13,8($v0)
    sll	$a2,$t9,0x2
    addu	$a5,$a5,$a3
    lwc1	$f15,4($v0)
    subu	$a2,$a2,$t9
    sll	$a4,$a5,0x2
    sll	$a2,$a2,0x2
    subu	$a4,$a4,$a5
    lw	$a5,8($a6)
    lw	$t9,12($a6)
    addu	$a2,$v1,$a2
    sll	$a4,$a4,0x2
    lwc1	$f16,0($v0)
    addu	$a5,$a5,$a3
    addu	$a4,$v1,$a4
    addu	$t9,$t9,$a3
    # Line 526
    lwc1	$f10,8($a4)
    # Line 524
    sll	$a1,$a5,0x2
    lwc1	$f12,0($a4)
    subu	$a1,$a1,$a5
    sll	$a5,$t9,0x2
    # Line 526
    lwc1	$f9,8($a2)
    # Line 524
    sll	$a1,$a1,0x2
    # Line 525
    lwc1	$f17,4($a4)
    # Line 524
    subu	$a5,$a5,$t9
    # Line 526
    madd.s	$f5,$f5,$f16,$f10
    # Line 524
    addu	$a1,$v1,$a1
    sll	$a5,$a5,0x2
    # Line 526
    lwc1	$f11,8($a1)
    # Line 524
    lwc1	$f10,12($v0)
    addu	$v1,$v1,$a5
    # Line 526
    madd.s	$f5,$f5,$f15,$f9
    # Line 524
    madd.s	$f6,$f6,$f12,$f16
    # Line 526
    lwc1	$f9,8($v1)
    madd.s	$f5,$f5,$f13,$f11
    # Line 525
    lwc1	$f11,4($a2)
    # Line 524
    lwc1	$f14,0($a2)
    # Line 525
    madd.s	$f4,$f4,$f16,$f17
    # Line 526
    madd.s	$f5,$f5,$f10,$f9
    # Line 525
    lwc1	$f9,4($a1)
    # Line 524
    lwc1	$f12,0($a1)
    # Line 525
    madd.s	$f4,$f4,$f15,$f11
    # Line 524
    madd.s	$f6,$f6,$f14,$f15
    # Line 525
    lwc1	$f11,4($v1)
    madd.s	$f4,$f4,$f13,$f9
    # Line 524
    lwc1	$f9,0($v1)
    madd.s	$f6,$f6,$f12,$f13
    # Line 525
    madd.s	$f4,$f4,$f10,$f11
    # Line 524
    madd.s	$f6,$f6,$f9,$f10
    # Line 521
    bne	$s0,$s6,.L0da15e18
    # Line 508
    ld	$a4,360($sp)
    b	.L0da156f8
    nop
.L0da15f18:
    # Line 451
    c.lt.s $f4,$f24
    bc1f .L0da16080
    nop
    sdc1	$f5,384($sp)
    b	.L0da15430
    ldc1	$f26,384($sp)
.L0da15f30:
    # Line 390
    ld	$s2,336($sp)
    sdc1	$f8,400($sp)
    sdc1	$f7,408($sp)
    sd	$v0,224($sp)
    sd	$t1,416($sp)
    sd	$t0,424($sp)
    sd	$a7,432($sp)
    li	$s0,-1
    b	.L0da15f84
    sd	$a0,440($sp)
.L0da15f58:
    # Line 400
    # lw $t9, -22764($gp) # &floor
    jal	floor
    ldc1	$f12,176($sp)
    trunc.w.d	$f11,$f0
    mfc1	$a6,$f11
    li	$v0,3
    and	$a6,$s4,$a6
    sw	$a6,4($s2)
.L0da15f78:
    # Line 395
    addiu	$s0,$s0,1
    beq	$s0,$v0,.L0da16000
    addiu	$s2,$s2,4
.L0da15f84:
    # Line 396
    mtc1	$s0,$f12
    cvt.s.w	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    sdc1	$f12,192($sp)
    add.s	$f12,$f12,$f20
    sdc1	$f12,184($sp)
    cvt.d.s	$f12,$f12
    jal	floor
    sdc1	$f12,176($sp)
    ldc1	$f14,184($sp)
    trunc.w.d	$f13,$f0
    c.lt.s $f14,$f24
    mfc1	$a7,$f13
    and	$a7,$s4,$a7
    bc1f .L0da15f58
    sw	$a7,4($s2)
    # Line 398
    ld	$t0,224($sp)
    mtc1	$t0,$f13
    cvt.s.w	$f13,$f13
    ldc1	$f12,192($sp)
    add.s	$f13,$f13,$f20
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f13
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f14,$f0
    mfc1	$t1,$f14
    li	$v0,3
    and	$t1,$s4,$t1
    b	.L0da15f78
    sw	$t1,4($s2)
.L0da16000:
    li	$s0,10497
    # Line 395
    move	$s2,$zero
    b	.L0da158bc
    li	$s4,1
.L0da16010:
    # Line 405
    cvt.d.s	$f15,$f26
    c.lt.d $f15,$f4
    bc1t .L0da15820
    # Line 420
    move	$s2,$zero
    sdc1	$f8,400($sp)
    sdc1	$f7,408($sp)
    sd	$t1,416($sp)
    sd	$t0,424($sp)
    sd	$a7,432($sp)
    b	.L0da15848
    sd	$a0,440($sp)
.L0da1603c:
    # Line 451
    cvt.d.s	$f16,$f26
    c.lt.d $f16,$f6
    bc1t .L0da15418
    # Line 466
    move	$s7,$zero
    sdc1	$f5,384($sp)
    b	.L0da15430
    ldc1	$f26,384($sp)
.L0da16058:
    # Line 405
    beqz	$v0,.L0da16098
    nop
    sdc1	$f8,400($sp)
    sdc1	$f7,408($sp)
    sd	$t1,416($sp)
    sd	$t0,424($sp)
    sd	$a7,432($sp)
    li	$s2,8
    b	.L0da15848
    sd	$a0,440($sp)
.L0da16080:
    # Line 451
    beqz	$v0,.L0da160c8
    nop
    sdc1	$f5,384($sp)
    li	$s7,8
    b	.L0da15430
    ldc1	$f26,384($sp)
.L0da16098:
    # Line 405
    cvt.d.s	$f9,$f26
    c.lt.d $f9,$f5
    sd	$t1,416($sp)
    li	$s2,3
    bc1f .L0da160e8
    sd	$a0,440($sp)
    sdc1	$f8,400($sp)
    sdc1	$f7,408($sp)
    sd	$t0,424($sp)
    li	$s2,15
    b	.L0da15848
    sd	$a7,432($sp)
.L0da160c8:
    # Line 451
    cvt.d.s	$f9,$f5
    c.lt.d $f9,$f7
    bc1f .L0da1610c
    li	$s7,3
    sdc1	$f5,384($sp)
    li	$s7,15
    b	.L0da15430
    ldc1	$f26,384($sp)
.L0da160e8:
    # Line 405
    c.lt.s $f26,$f20
    bc1f .L0da16124
    nop
    sdc1	$f8,400($sp)
    sdc1	$f7,408($sp)
    sd	$t0,424($sp)
    li	$s2,7
    b	.L0da15848
    sd	$a7,432($sp)
.L0da1610c:
    # Line 451
    c.lt.s	$f5,$f4
    bc1f	.L0da16144
    sdc1	$f5,384($sp)
    ldc1	$f26,384($sp)
    b	.L0da15430
    li	$s7,7
.L0da16124:
    # Line 405
    c.lt.d $f9,$f6
    bc1f .L0da16158
    nop
    sdc1	$f8,400($sp)
    sdc1	$f7,408($sp)
    sd	$t0,424($sp)
    b	.L0da15848
    sd	$a7,432($sp)
.L0da16144:
    # Line 451
    c.lt.d $f9,$f8
    bc1f .L0da161c8
    ldc1	$f26,384($sp)
    b	.L0da15434
    # Line 470
    nop	# was lw $t9, -22764($gp) # &floor
.L0da16158:
    # Line 420
    li	$s2,1
    sdc1	$f8,400($sp)
    sdc1	$f7,408($sp)
    sd	$t0,424($sp)
    c.lt.d $f9,$f4
    sd	$a7,432($sp)
    b	.L0da15848
    movf	$s2,$zero,$fcc3
.L0da16178:
    # Line 590
    ld	$gp,312($sp)
    ld	$s0,272($sp)
    ld	$s1,304($sp)
    ld	$s2,232($sp)
    ld	$s3,240($sp)
    ld	$s4,264($sp)
    ld	$s5,280($sp)
    ld	$s6,248($sp)
    ld	$s7,288($sp)
    ld	$s8,296($sp)
    ldc1	$f20,128($sp)
    ldc1	$f22,144($sp)
    ldc1	$f24,152($sp)
    ld	$ra,256($sp)
    ldc1	$f26,136($sp)
    move	$v0,$zero
    ldc1	$f28,160($sp)
    ldc1	$f30,168($sp)
    jr	$ra
    addiu	$sp,$sp,464
.L0da161c8:
    # Line 466
    c.lt.d $f9,$f6
    li	$s7,1
    b	.L0da15430
    movf	$s7,$zero,$fcc4
    nop
    nop
.L0da161e0:
    # Line 405
    ldc1	$f4,_lit8_4000000000000000
    ldc1	$f6,_lit8_3ff0000000000000
    # Line 390
    li	$s0,10497
    # Line 405
    ldc1	$f5,_lit8_bff0000000000000
    b	.L0da157b0
    # Line 375
    ld	$a1,352($sp)
.end __glTextureRGB_F_F_StippledSpan

# Function: __glTextureRGB_F_LML_Span
# Declared: Line 600 (Source lines: 601-1216)
# Address: 0x0da16200 - 0x0da17ddc (Size: 7132 bytes, Frame: 240)
.globl __glTextureRGB_F_LML_Span
.ent __glTextureRGB_F_LML_Span
__glTextureRGB_F_LML_Span:
    # Line 635
    lwc1	$f5,30240($a0)
    # Line 634
    lwc1	$f6,30236($a0)
    # Line 630
    lw	$a5,30464($a0)
    # Line 601
    addiu	$sp,$sp,-496
    sdc1	$f28,184($sp)
    # Line 633
    lwc1	$f28,30228($a0)
    # Line 601
    sdc1	$f30,160($sp)
    # Line 632
    lwc1	$f30,30224($a0)
    # Line 601
    sd	$s1,328($sp)
    # Line 628
    lw	$s1,28208($a0)
    sdc1	$f24,152($sp)
    sdc1	$f22,144($sp)
    sdc1	$f26,136($sp)
    sdc1	$f20,128($sp)
    sd	$s0,288($sp)
    sd	$s8,280($sp)
    sd	$s7,272($sp)
    sd	$ra,264($sp)
    sd	$s4,256($sp)
    sd	$s3,248($sp)
    sd	$s2,240($sp)
    sd	$gp,336($sp)
    # Line 601
    sd	$s5,320($sp)
    # Line 637
    lw	$v0,30248($a0)
    # Line 609
    lwc1	$f0,3540($a0)
    # Line 637
    addiu	$at,$v0,-1
    sd	$at,424($sp)
    # Line 601
    sd	$s6,344($sp)
    lui	$v1,0x4
    # Line 626
    lw	$s6,2484($a0)
    # Line 601
    move	$s5,$a0
    addiu	$v1,$v1,-21620
    # Line 609
    sdc1	$f0,232($sp)
    # Line 601
    addu	$gp,$t9,$v1
    # Line 637
    bltz	$at,.L0da17bdc
    # Line 626
    lw	$s6,0($s6)
    # Line 637
    addiu	$s7,$sp,32
    li	$s8,4
    li	$s3,1
    mtc1	$zero,$f26
    addiu	$a1,$sp,12
    sd	$a1,384($sp)
    addiu	$a0,$sp,-4
    b	.L0da1666c
    sd	$a0,392($sp)
    nop
    nop
    nop
.L0da162c0:
    # Line 714
    ldc1	$f6,_lit8_bff0000000000000
    dmtc1	$zero,$f7
    add.d	$f6,$f24,$f6
    c.lt.d	$f6,$f7
    ldc1	$f5,_lit8_4000000000000000
    li	$v0,1
    movf	$v0,$zero,$fcc0
    ld	$s4,368($sp)
    beqz	$v0,.L0da1779c
    add.d	$f5,$f24,$f5
    dmtc1	$zero,$f7
.L0da162ec:
    c.lt.d $f5,$f7
    bc1f .L0da17100
    ldc1	$f7,_lit8_3ff0000000000000
    li	$a2,15
    sd	$a2,296($sp)
.L0da16300:
    # Line 733
    # lw $t9, -22764($gp) # &floor
    jal	floor
    mov.d	$f12,$f24
    trunc.w.d	$f8,$f0
    mfc1	$v0,$f8
    # Line 734
    addiu	$a3,$v0,-1
    mtc1	$a3,$f9
    cvt.s.w	$f9,$f9
    c.lt.s $f9,$f26
    # Line 733
    swc1	$f8,4($sp)
    # Line 734
    bc1f .L0da16334
    sw	$a3,0($sp)
    # Line 735
    sw	$zero,0($sp)
.L0da16334:
    # Line 737
    addiu	$a0,$v0,1
    mtc1	$a0,$f10
    cvt.s.w	$f10,$f10
    c.lt.s $f22,$f10
    bc1f .L0da16358
    sw	$a0,8($sp)
    # Line 738
    trunc.w.s	$f11,$f22
    swc1	$f11,8($sp)
    mfc1	$a0,$f11
.L0da16358:
    # Line 740
    addiu	$a4,$a0,1
    mtc1	$a4,$f12
    cvt.s.w	$f12,$f12
    c.lt.s $f22,$f12
    bc1f .L0da16378
    sw	$a4,12($sp)
    # Line 741
    trunc.w.s	$f13,$f22
    swc1	$f13,12($sp)
.L0da16378:
    # Line 746
    # lw $t9, -22764($gp) # &floor
    jal	floor
    ldc1	$f12,224($sp)
    ldc1	$f18,224($sp)
    ldc1	$f22,_lit8_4030000000000000
    lwc1	$f20,3540($s5)
    sub.d	$f18,$f18,$f0
    cvt.d.s	$f20,$f20
    madd.d	$f18,$f20,$f22,$f18
    trunc.w.d	$f18,$f18
    mfc1	$a7,$f18
    # Line 747
    sll	$t0,$a7,0x2
    # Line 751
    # lw $t9, -22764($gp) # &floor
    # Line 747
    addu	$t0,$s1,$t0
    # Line 750
    li	$a6,32
    # Line 748
    lwc1	$f17,24($t0)
    # Line 747
    lwc1	$f16,88($t0)
    # Line 750
    subu	$a6,$a6,$a7
    # Line 749
    sll	$a5,$a7,0x1e
    # Line 748
    swc1	$f17,100($sp)
    # Line 750
    sll	$a6,$a6,0x2
    # Line 749
    subu	$a5,$a5,$a7
    # Line 747
    swc1	$f16,96($sp)
    # Line 750
    addu	$a6,$s1,$a6
    # Line 749
    sll	$a5,$a5,0x2
    # Line 750
    lwc1	$f15,24($a6)
    # Line 749
    addu	$a5,$s1,$a5
    lwc1	$f14,88($a5)
    # Line 750
    swc1	$f15,108($sp)
    # Line 751
    mov.d	$f12,$f24
    jal	floor
    # Line 749
    swc1	$f14,104($sp)
    # Line 751
    sub.d	$f27,$f24,$f0
    madd.d	$f27,$f20,$f22,$f27
    trunc.w.d	$f27,$f27
    ld	$a5,488($sp)
    mfc1	$t3,$f27
    ld	$a7,296($sp)
    ldc1	$f5,480($sp)
    # Line 752
    sll	$s0,$t3,0x2
    ldc1	$f6,472($sp)
    addu	$s0,$s1,$s0
    # Line 755
    li	$a0,32
    # Line 753
    lwc1	$f25,24($s0)
    # Line 752
    lwc1	$f23,88($s0)
    # Line 755
    subu	$t2,$a0,$t3
    # Line 754
    sll	$t1,$t3,0x1e
    # Line 753
    swc1	$f25,116($sp)
    # Line 755
    sll	$t2,$t2,0x2
    # Line 754
    subu	$t1,$t1,$t3
    # Line 752
    swc1	$f23,112($sp)
    # Line 755
    addu	$t2,$s1,$t2
    # Line 754
    sll	$t1,$t1,0x2
    # Line 755
    lwc1	$f21,24($t2)
    # Line 754
    addu	$t1,$s1,$t1
    lwc1	$f19,88($t1)
    # Line 755
    swc1	$f21,124($sp)
    addiu	$a3,$sp,112
    move	$s0,$zero
    # Line 754
    swc1	$f19,120($sp)
    # Line 755
    addiu	$a4,$sp,96
.L0da1646c:
    sll	$v0,$s0,0x4
    # Line 759
    addiu	$s0,$s0,1
    # Line 755
    lwc1	$f0,0($a3)
    addu	$v0,$v0,$s7
    # Line 759
    addiu	$a3,$a3,4
    # Line 761
    lwc1	$f2,12($a4)
    lwc1	$f1,8($a4)
    lwc1	$f31,4($a4)
    lwc1	$f29,96($sp)
    mul.s	$f2,$f2,$f0
    mul.s	$f1,$f1,$f0
    swc1	$f2,12($v0)
    mul.s	$f31,$f31,$f0
    swc1	$f1,8($v0)
    mul.s	$f29,$f29,$f0
    swc1	$f31,4($v0)
    swc1	$f29,0($v0)
    # Line 759
    bne	$s0,$s8,.L0da1646c
    # Line 755
    addiu	$a4,$sp,96
    # Line 765
    beqz	$s4,.L0da16c6c
.L0da164bc:
    # Line 771
    li	$v1,2
.L0da164c0:
    beq	$s4,$v1,.L0da17198
    # Line 784
    mtc1	$zero,$f20
    mtc1	$zero,$f24
    mtc1	$zero,$f22
    move	$s0,$zero
    addiu	$s4,$sp,0
    li	$a4,3
    li	$a3,3
.L0da164e0:
    # Line 800
    sll	$v1,$s3,0x3
    # Line 784
    sllv	$a0,$s3,$a4
    addiu	$a6,$sp,16
    sll	$v0,$s0,0x4
    addu	$v0,$v0,$s7
    and	$a0,$a0,$a7
    # Line 800
    and	$v1,$s2,$v1
    beqz	$v1,.L0da16b34
    # Line 798
    addiu	$a3,$a3,-1
.L0da16504:
    # Line 803
    lwc1	$f8,164($s1)
    # Line 801
    lwc1	$f3,0($v0)
    # Line 802
    lwc1	$f7,160($s1)
    # Line 801
    lwc1	$f4,156($s1)
    # Line 803
    madd.s	$f22,$f22,$f3,$f8
    # Line 802
    madd.s	$f24,$f24,$f3,$f7
    # Line 801
    madd.s	$f20,$f20,$f3,$f4
.L0da16520:
    # Line 797
    addiu	$s0,$s0,1
    # Line 800
    sllv	$a1,$s3,$a3
    # Line 798
    addiu	$a3,$a3,-1
    # Line 800
    and	$a1,$s2,$a1
    # Line 797
    addiu	$a4,$a4,-1
    # Line 800
    sllv	$a2,$s3,$a3
    beqz	$a1,.L0da16b80
    and	$a2,$s2,$a2
.L0da16540:
    # Line 803
    lwc1	$f12,164($s1)
    # Line 801
    lwc1	$f9,4($v0)
    # Line 802
    lwc1	$f11,160($s1)
    # Line 801
    lwc1	$f10,156($s1)
    # Line 803
    madd.s	$f22,$f22,$f9,$f12
    # Line 802
    madd.s	$f24,$f24,$f9,$f11
    # Line 801
    madd.s	$f20,$f20,$f9,$f10
.L0da1655c:
    # Line 798
    addiu	$a3,$a3,-1
    # Line 800
    beqz	$a2,.L0da16bd0
    nop
.L0da16568:
    # Line 803
    lwc1	$f16,164($s1)
    # Line 801
    lwc1	$f13,8($v0)
    # Line 802
    lwc1	$f15,160($s1)
    # Line 801
    lwc1	$f14,156($s1)
    # Line 803
    madd.s	$f22,$f22,$f13,$f16
    # Line 802
    madd.s	$f24,$f24,$f13,$f15
    # Line 801
    madd.s	$f20,$f20,$f13,$f14
.L0da16584:
    # Line 800
    sllv	$t0,$s3,$a3
    and	$t0,$s2,$t0
    beqz	$t0,.L0da16c20
    # Line 784
    li	$a3,3
.L0da16594:
    # Line 803
    lwc1	$f21,164($s1)
    # Line 801
    lwc1	$f17,12($v0)
    # Line 802
    lwc1	$f19,160($s1)
    # Line 801
    lwc1	$f18,156($s1)
    # Line 803
    madd.s	$f22,$f22,$f17,$f21
    # Line 802
    madd.s	$f24,$f24,$f17,$f19
    # Line 801
    madd.s	$f20,$f20,$f17,$f18
.L0da165b0:
    # Line 797
    bne	$s0,$s8,.L0da164e0
    addiu	$s4,$s4,4
.L0da165b8:
    # Line 1176
    li	$t1,8448
.L0da165bc:
    beq	$s6,$t1,.L0da16d90
    # Line 1189
    li	$t2,0x8062
.L0da165c4:
    beq	$s6,$t2,.L0da169cc
    li	$t3,7681
    beq	$s6,$t3,.L0da169cc
    li	$t8,8449
    beq	$s6,$t8,.L0da169cc
    nop
    # Line 1200
    lw	$t9,2484($s5)
    # Line 1202
    lwc1	$f3,3544($s5)
    lwc1	$f1,4($t9)
    lwc1	$f2,0($a5)
    sub.s	$f3,$f3,$f20
    mul.s	$f1,$f1,$f20
    madd.s	$f1,$f1,$f2,$f3
    swc1	$f1,0($a5)
    # Line 1203
    lwc1	$f0,3544($s5)
    lwc1	$f29,8($t9)
    lwc1	$f31,4($a5)
    sub.s	$f0,$f0,$f24
    mul.s	$f29,$f29,$f24
    madd.s	$f29,$f29,$f31,$f0
    swc1	$f29,4($a5)
    # Line 1204
    lwc1	$f27,3544($s5)
    lwc1	$f23,12($t9)
    lwc1	$f25,8($a5)
    sub.s	$f27,$f27,$f22
    mul.s	$f23,$f23,$f22
    madd.s	$f23,$f23,$f25,$f27
    swc1	$f23,8($a5)
.L0da16634:
    # Line 1210
    lwc1	$f7,30384($s5)
    # Line 1212
    lwc1	$f9,30396($s5)
    # Line 1211
    lwc1	$f8,30392($s5)
    # Line 637
    ld	$ra,424($sp)
    # Line 1209
    lwc1	$f4,30380($s5)
    # Line 1212
    add.s	$f5,$f9,$f5
    # Line 637
    li	$at,-1
    # Line 1211
    add.s	$f6,$f8,$f6
    # Line 637
    addiu	$ra,$ra,-1
    # Line 1210
    add.s	$f28,$f7,$f28
    # Line 1213
    addiu	$a5,$a5,16
    # Line 637
    sd	$ra,424($sp)
    beq	$ra,$at,.L0da17bdc
    # Line 1209
    add.s	$f30,$f4,$f30
.L0da1666c:
    # Line 638
    lwc1	$f7,3544($s5)
    div.s	$f22,$f7,$f6
    lwc1	$f23,240($s1)
    mul.s	$f0,$f5,$f22
    c.le.s $f0,$f23
    lw	$a3,4($s1)
    mul.s	$f24,$f28,$f22
    lw	$s4,228($s1)
    bc1f .L0da16750
    mul.s	$f22,$f30,$f22
    # Line 655
    lwc1	$f20,32($s4)
    ldc1	$f0,232($sp)
    # Line 649
    lw	$v0,44($s4)
    # Line 655
    msub.s	$f0,$f0,$f20,$f22
    # Line 651
    lw	$a1,0($s4)
    sd	$a1,416($sp)
    # Line 653
    lw	$v1,24($s4)
    # Line 655
    li	$s0,10497
    # Line 652
    lw	$a0,20($s4)
    # Line 649
    sd	$v0,408($sp)
    # Line 653
    addiu	$v1,$v1,-1
    sd	$v1,432($sp)
    # Line 652
    addiu	$s2,$a0,-1
    # Line 655
    bne	$s0,$a3,.L0da169f4
    cvt.d.s	$f7,$f0
    ld	$v0,384($sp)
    li	$s0,-1
    sd	$a0,376($sp)
    mtc1	$s0,$f8
    cvt.s.w	$f8,$f8
    sdc1	$f0,456($sp)
    add.s	$f9,$f8,$f0
    sdc1	$f7,224($sp)
    sdc1	$f6,472($sp)
    c.lt.s $f9,$f26
    sdc1	$f5,480($sp)
    sd	$v0,400($sp)
    bc1f .L0da16db8
    sd	$a5,488($sp)
    # Line 662
    ld	$a2,376($sp)
    daddiu	$a2,$a2,-1
    dmtc1	$a2,$f12
    cvt.s.l	$f12,$f12
    ldc1	$f22,456($sp)
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a4,400($sp)
    mfc1	$a3,$f13
    and	$a3,$s2,$a3
    b	.L0da16ddc
    sw	$a3,4($a4)
    nop
    nop
    nop
.L0da16750:
    # Line 779
    c.eq.s $f0,$f26
    bc1t .L0da167b8
    # Line 824
    mtc1	$zero,$f8
    # Line 820
    trunc.w.s	$f14,$f0
    mfc1	$a4,$f14
    sra	$a4,$a4,0x1
    move	$v0,$zero
    beqz	$a4,.L0da16790
    move	$a0,$a4
    move	$v0,$zero
.L0da16778:
    sra	$a0,$a0,0x1
    addiu	$v0,$v0,1
    beqz	$a0,.L0da16790
    sra	$a0,$a0,0x1
    bnez	$a0,.L0da16778
    addiu	$v0,$v0,1
.L0da16790:
    # Line 822
    sllv	$a6,$s3,$v0
    mtc1	$a6,$f11
    cvt.s.w	$f11,$f11
    sub.s	$f10,$f0,$f11
    div.s	$f10,$f10,$f11
    mtc1	$v0,$f9
    cvt.s.w	$f9,$f9
    ldc1	$f8,232($sp)
    add.s	$f9,$f9,$f10
    mul.s	$f8,$f8,$f9
.L0da167b8:
    # Line 832
    trunc.w.s	$f9,$f8
    mfc1	$a0,$f9
    cvt.s.w	$f9,$f9
    # Line 828
    lw	$v0,236($s1)
    # Line 832
    addiu	$t0,$a0,1
    slt	$a7,$v0,$t0
    slti	$t0,$t0,0
    or	$a7,$a7,$t0
    sub.s	$f9,$f8,$f9
    beqz	$a7,.L0da17120
    sub.s	$f10,$f7,$f9
    # Line 835
    sll	$s0,$v0,0x2
    subu	$s0,$s0,$v0
    sll	$s0,$s0,0x3
    addu	$s0,$s0,$v0
    sll	$s0,$s0,0x2
    addu	$s0,$s4,$s0
    # Line 836
    lw	$t8,44($s0)
    # Line 837
    lw	$ra,0($s0)
    sd	$ra,416($sp)
    # Line 839
    lw	$t9,24($s0)
    # Line 841
    lwc1	$f7,32($s0)
    li	$t1,10497
    # Line 838
    lw	$s2,20($s0)
    # Line 836
    sd	$t8,408($sp)
    # Line 839
    addiu	$t9,$t9,-1
    sd	$t9,432($sp)
    # Line 838
    addiu	$s2,$s2,-1
    # Line 841
    beq	$t1,$a3,.L0da177e4
    mul.s	$f0,$f22,$f7
    # Line 846
    c.lt.s	$f0,$f26
    bc1f	.L0da16850
    nop
    sdc1	$f6,472($sp)
    mtc1	$zero,$f20
    sdc1	$f5,480($sp)
    b	.L0da16868
    sd	$a5,488($sp)
.L0da16850:
    sdc1	$f6,472($sp)
    # Line 849
    mov.s	$f20,$f0
    c.lt.s $f7,$f0
    sdc1	$f5,480($sp)
    sd	$a5,488($sp)
    movt.s	$f20,$f7,$fcc1
.L0da16868:
    # Line 850
    ldc1	$f10,232($sp)
    # Line 851
    # lw $t9, -28804($gp) # &__glFloor
    # Line 850
    sub.s	$f20,$f20,$f10
    # Line 851
    jal	__glFloor
    mov.s	$f12,$f20
    move	$a0,$v0
    # Line 852
    addiu	$a3,$v0,1
.L0da16884:
    # Line 855
    lwc1	$f5,36($s0)
    lw	$t9,8($s1)
    li	$t8,10497
    beq	$t8,$t9,.L0da17818
    mul.s	$f0,$f24,$f5
    # Line 860
    c.lt.s $f0,$f26
    bc1f .L0da168ac
    nop
    b	.L0da168b8
    mtc1	$zero,$f22
.L0da168ac:
    # Line 863
    c.lt.s $f5,$f0
    mov.s	$f22,$f0
    movt.s	$f22,$f5,$fcc3
.L0da168b8:
    # Line 864
    ldc1	$f11,232($sp)
    # Line 865
    # lw $t9, -28804($gp) # &__glFloor
    # Line 864
    sub.s	$f22,$f22,$f11
    sd	$a3,312($sp)
    sd	$a0,304($sp)
    # Line 865
    jal	__glFloor
    mov.s	$f12,$f22
    move	$s4,$v0
    # Line 866
    addiu	$s0,$v0,1
.L0da168dc:
    # Line 869
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f20
    # Line 870
    # lw $t9, -28808($gp) # &__glFrac
    # Line 869
    sdc1	$f0,448($sp)
    # Line 870
    jal	__glFrac
    mov.s	$f12,$f22
    # Line 871
    ldc1	$f7,448($sp)
    lwc1	$f9,3544($s5)
    # Line 872
    ld	$a3,432($sp)
    ld	$a0,304($sp)
    nor	$a6,$s2,$zero
    nor	$a3,$a3,$zero
    ld	$a5,488($sp)
    and	$a7,$a6,$a0
    # Line 871
    sub.s	$f10,$f9,$f7
    # Line 872
    and	$a4,$a3,$s4
    ld	$v0,312($sp)
    sub.s	$f9,$f9,$f0
    or	$ra,$a7,$a4
    ldc1	$f5,480($sp)
    ldc1	$f6,472($sp)
    beqz	$ra,.L0da17688
    mul.s	$f8,$f10,$f9
    # Line 885
    lwc1	$f22,164($s1)
    # Line 884
    lwc1	$f24,160($s1)
    # Line 883
    lwc1	$f20,156($s1)
    # Line 885
    mul.s	$f22,$f22,$f8
    # Line 884
    mul.s	$f24,$f24,$f8
    # Line 883
    mul.s	$f20,$f20,$f8
.L0da16954:
    # Line 891
    and	$t0,$a6,$v0
    or	$t1,$t0,$a4
    beqz	$t1,.L0da176c4
    mul.s	$f8,$f7,$f9
    # Line 896
    lwc1	$f27,164($s1)
    # Line 895
    lwc1	$f25,160($s1)
    # Line 894
    lwc1	$f23,156($s1)
    # Line 896
    madd.s	$f22,$f22,$f27,$f8
    # Line 895
    madd.s	$f24,$f24,$f25,$f8
    # Line 894
    madd.s	$f20,$f20,$f23,$f8
.L0da1697c:
    # Line 902
    and	$a4,$a3,$s0
    or	$t2,$a7,$a4
    beqz	$t2,.L0da17700
    mul.s	$f8,$f0,$f10
    # Line 907
    lwc1	$f1,164($s1)
    # Line 906
    lwc1	$f31,160($s1)
    # Line 905
    lwc1	$f29,156($s1)
    # Line 907
    madd.s	$f22,$f22,$f1,$f8
    # Line 906
    madd.s	$f24,$f24,$f31,$f8
    # Line 905
    madd.s	$f20,$f20,$f29,$f8
.L0da169a4:
    # Line 913
    or	$t3,$t0,$a4
    beqz	$t3,.L0da1773c
    mul.s	$f8,$f0,$f7
    # Line 918
    lwc1	$f4,164($s1)
    # Line 917
    lwc1	$f3,160($s1)
    # Line 916
    lwc1	$f2,156($s1)
    # Line 918
    madd.s	$f22,$f22,$f4,$f8
    # Line 917
    madd.s	$f24,$f24,$f3,$f8
    # Line 918
    b	.L0da165b8
    # Line 916
    madd.s	$f20,$f20,$f2,$f8
.L0da169cc:
    # Line 1192
    lwc1	$f9,30752($s5)
    mul.s	$f9,$f9,$f20
    swc1	$f9,0($a5)
    # Line 1193
    lwc1	$f8,30756($s5)
    mul.s	$f8,$f8,$f24
    swc1	$f8,4($a5)
    # Line 1194
    lwc1	$f7,30760($s5)
    mul.s	$f7,$f7,$f22
    b	.L0da16634
    swc1	$f7,8($a5)
.L0da169f4:
    # Line 669
    ldc1	$f9,_lit8_bff0000000000000
    dmtc1	$zero,$f10
    add.d	$f9,$f7,$f9
    c.lt.d $f9,$f10
    ldc1	$f8,_lit8_4000000000000000
    li	$v0,1
    movf	$v0,$zero,$fcc4
    beqz	$v0,.L0da17778
    add.d	$f8,$f7,$f8
.L0da16a18:
    dmtc1	$zero,$f10
    c.lt.d $f8,$f10
    bc1f .L0da170d4
    ldc1	$f10,_lit8_3ff0000000000000
    sdc1	$f7,224($sp)
    sdc1	$f6,472($sp)
    sdc1	$f5,480($sp)
    li	$s2,15
    sd	$a5,488($sp)
.L0da16a3c:
    # Line 688
    # lw $t9, -28804($gp) # &__glFloor
.L0da16a40:
    jal	__glFloor
    mov.s	$f12,$f0
    # Line 689
    addiu	$t8,$v0,-1
    mtc1	$t8,$f11
    cvt.s.w	$f11,$f11
    c.lt.s $f11,$f26
    sw	$t8,16($sp)
    bc1f .L0da16a68
    # Line 688
    sw	$v0,20($sp)
    # Line 690
    sw	$zero,16($sp)
.L0da16a68:
    # Line 692
    addiu	$a0,$v0,1
    mtc1	$a0,$f12
    cvt.s.w	$f12,$f12
    c.lt.s $f20,$f12
    bc1f .L0da16a8c
    sw	$a0,24($sp)
    # Line 693
    trunc.w.s	$f13,$f20
    swc1	$f13,24($sp)
    mfc1	$a0,$f13
.L0da16a8c:
    # Line 695
    addiu	$t9,$a0,1
    mtc1	$t9,$f14
    cvt.s.w	$f14,$f14
    c.lt.s	$f20,$f14
    bc1f	.L0da16aac
    sw	$t9,28($sp)
    # Line 696
    trunc.w.s	$f15,$f20
    swc1	$f15,28($sp)
.L0da16aac:
    sd	$zero,368($sp)
    sdc1	$f24,192($sp)
.L0da16ab4:
    # Line 700
    ldc1	$f1,192($sp)
    lwc1	$f22,36($s4)
    ldc1	$f0,232($sp)
    msub.s	$f0,$f0,$f22,$f1
    lw	$ra,8($s1)
    sd	$s4,360($sp)
    bne	$s0,$ra,.L0da162c0
    cvt.d.s	$f24,$f0
    ld	$s4,392($sp)
    li	$s0,-1
    mtc1	$s0,$f8
    cvt.s.w	$f8,$f8
    add.s	$f5,$f8,$f0
    c.lt.s $f5,$f26
    bc1f .L0da16f44
    sdc1	$f0,440($sp)
    # Line 707
    ld	$at,360($sp)
    lw	$at,24($at)
    daddiu	$at,$at,-1
    dmtc1	$at,$f12
    cvt.s.l	$f12,$f12
    ldc1	$f20,440($sp)
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f20
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$v0,432($sp)
    mfc1	$v1,$f13
    and	$v0,$v0,$v1
    b	.L0da16f68
    sw	$v0,4($s4)
.L0da16b34:
    # Line 800
    bnez	$a0,.L0da16504
    # Line 805
    ld	$t2,408($sp)
    lw	$t1,0($s4)
    lw	$t0,16($sp)
    sllv	$t1,$t1,$t2
    addu	$t0,$t0,$t1
    sll	$a2,$t0,0x2
    ld	$a1,416($sp)
    subu	$a2,$a2,$t0
    sll	$a2,$a2,0x2
    lwc1	$f15,0($v0)
    addu	$a1,$a1,$a2
    # Line 807
    lwc1	$f17,8($a1)
    # Line 806
    lwc1	$f16,4($a1)
    # Line 805
    lwc1	$f14,0($a1)
    # Line 807
    madd.s	$f22,$f22,$f15,$f17
    # Line 806
    madd.s	$f24,$f24,$f15,$f16
    b	.L0da16520
    # Line 805
    madd.s	$f20,$f20,$f14,$f15
.L0da16b80:
    # Line 800
    bnez	$a0,.L0da16540
    # Line 805
    ld	$at,408($sp)
    lw	$ra,0($s4)
    lw	$t9,4($a6)
    sllv	$ra,$ra,$at
    addu	$t9,$t9,$ra
    sll	$t8,$t9,0x2
    ld	$t3,416($sp)
    subu	$t8,$t8,$t9
    sll	$t8,$t8,0x2
    lwc1	$f19,4($v0)
    addu	$t3,$t3,$t8
    # Line 807
    lwc1	$f23,8($t3)
    # Line 806
    lwc1	$f21,4($t3)
    # Line 805
    lwc1	$f18,0($t3)
    # Line 807
    madd.s	$f22,$f22,$f19,$f23
    # Line 806
    madd.s	$f24,$f24,$f19,$f21
    b	.L0da1655c
    # Line 805
    madd.s	$f20,$f20,$f18,$f19
    nop
.L0da16bd0:
    # Line 800
    bnez	$a0,.L0da16568
    # Line 805
    ld	$t1,408($sp)
    lw	$t0,0($s4)
    lw	$a2,8($a6)
    sllv	$t0,$t0,$t1
    addu	$a2,$a2,$t0
    sll	$a1,$a2,0x2
    ld	$v1,416($sp)
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    lwc1	$f27,8($v0)
    addu	$v1,$v1,$a1
    # Line 807
    lwc1	$f31,8($v1)
    # Line 806
    lwc1	$f29,4($v1)
    # Line 805
    lwc1	$f25,0($v1)
    # Line 807
    madd.s	$f22,$f22,$f27,$f31
    # Line 806
    madd.s	$f24,$f24,$f27,$f29
    b	.L0da16584
    # Line 805
    madd.s	$f20,$f20,$f25,$f27
    nop
.L0da16c20:
    # Line 800
    bnez	$a0,.L0da16594
    # Line 805
    ld	$ra,408($sp)
    lw	$t9,0($s4)
    lw	$t8,12($a6)
    sllv	$t9,$t9,$ra
    addu	$t8,$t8,$t9
    sll	$t3,$t8,0x2
    ld	$t2,416($sp)
    subu	$t3,$t3,$t8
    sll	$t3,$t3,0x2
    lwc1	$f1,12($v0)
    addu	$t2,$t2,$t3
    # Line 807
    lwc1	$f3,8($t2)
    # Line 806
    lwc1	$f2,4($t2)
    # Line 805
    lwc1	$f0,0($t2)
    # Line 807
    madd.s	$f22,$f22,$f1,$f3
    # Line 806
    madd.s	$f24,$f24,$f1,$f2
    b	.L0da165b0
    # Line 805
    madd.s	$f20,$f20,$f0,$f1
.L0da16c6c:
    # Line 765
    bnez	$s2,.L0da164c0
    # Line 771
    li	$v1,2
    # Line 765
    bnez	$a7,.L0da164bc
    li	$t0,16
    # Line 770
    mtc1	$zero,$f22
    addiu	$v0,$sp,32
    mtc1	$zero,$f24
    ld	$a7,408($sp)
    mtc1	$zero,$f20
    li	$a4,3
    lw	$a6,0($sp)
    move	$a3,$zero
    sllv	$a4,$a4,$a7
    lw	$a2,16($sp)
    sllv	$a6,$a6,$a7
    li	$a7,-48
    sll	$a4,$a4,0x2
    addu	$a2,$a2,$a6
    li	$a6,-48
    sll	$a1,$a2,0x2
    ld	$a0,416($sp)
    addu	$a6,$a4,$a6
    subu	$a1,$a1,$a2
    addu	$a4,$a4,$a7
    sll	$a1,$a1,0x2
    li	$a7,3
    addu	$a0,$a0,$a1
    nop
    nop
.L0da16ce0:
    # Line 774
    sra	$t8,$a3,0x1f
    xor	$t3,$a3,$t8
    subu	$t3,$t3,$t8
    andi	$t3,$t3,0x3
    xor	$t3,$t3,$t8
    # Line 772
    lwc1	$f29,0($v0)
    # Line 774
    addiu	$t2,$a0,12
    subu	$t3,$t3,$t8
    lwc1	$f27,8($a0)
    # Line 776
    addu	$t8,$t2,$a6
    xor	$t3,$a7,$t3
    # Line 771
    addiu	$t1,$a3,1
    movz	$t2,$t8,$t3
    # Line 772
    lwc1	$f23,4($v0)
    # Line 774
    sra	$t3,$t1,0x1f
    madd.s	$f22,$f22,$f27,$f29
    # Line 772
    lwc1	$f27,0($a0)
    # Line 774
    xor	$t1,$t1,$t3
    lwc1	$f25,8($t2)
    subu	$t1,$t1,$t3
    # Line 773
    lwc1	$f31,4($a0)
    # Line 774
    andi	$t1,$t1,0x3
    # Line 771
    addiu	$a3,$a3,2
    # Line 772
    madd.s	$f20,$f20,$f27,$f29
    lwc1	$f21,0($t2)
    # Line 774
    xor	$t1,$t1,$t3
    addiu	$a0,$t2,12
    madd.s	$f22,$f22,$f25,$f23
    # Line 773
    lwc1	$f25,4($t2)
    # Line 774
    subu	$t1,$t1,$t3
    # Line 773
    madd.s	$f24,$f24,$f29,$f31
    # Line 776
    addu	$t2,$a0,$a4
    xor	$t1,$a7,$t1
    # Line 772
    madd.s	$f20,$f20,$f21,$f23
    movz	$a0,$t2,$t1
    # Line 771
    addiu	$v0,$v0,8
    bne	$a3,$t0,.L0da16ce0
    # Line 773
    madd.s	$f24,$f24,$f23,$f25
    # Line 1176
    li	$t8,8448
    bne	$s6,$t8,.L0da165c4
    # Line 1189
    li	$t2,0x8062
    nop
    nop
    nop
.L0da16d90:
    # Line 1187
    lwc1	$f0,8($a5)
    # Line 1186
    lwc1	$f31,4($a5)
    # Line 1185
    lwc1	$f29,0($a5)
    # Line 1187
    mul.s	$f0,$f0,$f22
    swc1	$f0,8($a5)
    # Line 1186
    mul.s	$f31,$f31,$f24
    swc1	$f31,4($a5)
    # Line 1185
    mul.s	$f29,$f29,$f20
    # Line 1187
    b	.L0da16634
    # Line 1185
    swc1	$f29,0($a5)
.L0da16db8:
    # Line 664
    # lw $t9, -22764($gp) # &floor
    ldc1	$f22,456($sp)
    jal	floor
    cvt.d.s	$f12,$f9
    trunc.w.d	$f1,$f0
    ld	$ra,400($sp)
    mfc1	$t9,$f1
    and	$t9,$s2,$t9
    sw	$t9,4($ra)
.L0da16ddc:
    # Line 660
    addiu	$s0,$s0,1
    # Line 655
    mtc1	$s0,$f8
    cvt.s.w	$f8,$f8
    add.s	$f9,$f8,$f22
    c.lt.s $f9,$f26
    bc1f .L0da16e30
    # Line 664
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 662
    ld	$ra,376($sp)
    daddu	$ra,$s0,$ra
    dmtc1	$ra,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$v0,400($sp)
    mfc1	$at,$f13
    and	$at,$s2,$at
    b	.L0da16e4c
    sw	$at,8($v0)
.L0da16e30:
    # Line 664
    jalr	$t9
    cvt.d.s	$f12,$f9
    trunc.w.d	$f14,$f0
    ld	$v1,400($sp)
    mfc1	$v0,$f14
    and	$v0,$s2,$v0
    sw	$v0,8($v1)
.L0da16e4c:
    # Line 660
    addiu	$s0,$s0,1
    # Line 655
    mtc1	$s0,$f8
    cvt.s.w	$f8,$f8
    add.s	$f9,$f8,$f22
    c.lt.s $f9,$f26
    bc1f .L0da16ea0
    # Line 664
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 662
    ld	$v1,376($sp)
    daddu	$v1,$s0,$v1
    dmtc1	$v1,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a1,400($sp)
    mfc1	$a0,$f13
    and	$a0,$s2,$a0
    b	.L0da16ebc
    sw	$a0,12($a1)
.L0da16ea0:
    # Line 664
    jalr	$t9
    cvt.d.s	$f12,$f9
    trunc.w.d	$f14,$f0
    ld	$a2,400($sp)
    mfc1	$a1,$f14
    and	$a1,$s2,$a1
    sw	$a1,12($a2)
.L0da16ebc:
    # Line 660
    addiu	$s0,$s0,1
    # Line 655
    mtc1	$s0,$f8
    cvt.s.w	$f8,$f8
    add.s	$f9,$f8,$f22
    c.lt.s $f9,$f26
    bc1f .L0da16f10
    # Line 664
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 662
    ld	$a2,376($sp)
    daddu	$a2,$s0,$a2
    dmtc1	$a2,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a4,400($sp)
    mfc1	$a3,$f13
    and	$a3,$s2,$a3
    b	.L0da16f2c
    sw	$a3,16($a4)
.L0da16f10:
    # Line 664
    jalr	$t9
    cvt.d.s	$f12,$f9
    trunc.w.d	$f14,$f0
    ld	$a5,400($sp)
    mfc1	$a4,$f14
    and	$a4,$s2,$a4
    sw	$a4,16($a5)
.L0da16f2c:
    li	$s0,10497
    # Line 660
    li	$a5,1
    sd	$a5,368($sp)
    move	$s2,$zero
    b	.L0da16ab4
    sdc1	$f24,192($sp)
.L0da16f44:
    # Line 709
    # lw $t9, -22764($gp) # &floor
    ldc1	$f20,440($sp)
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f15,$f0
    ld	$a6,432($sp)
    mfc1	$a7,$f15
    and	$a6,$a6,$a7
    sw	$a6,4($s4)
.L0da16f68:
    # Line 705
    addiu	$s0,$s0,1
    # Line 700
    mtc1	$s0,$f8
    cvt.s.w	$f8,$f8
    add.s	$f5,$f8,$f20
    c.lt.s $f5,$f26
    bc1f .L0da16fbc
    # Line 707
    ld	$t0,360($sp)
    lw	$t0,24($t0)
    daddu	$t0,$s0,$t0
    dmtc1	$t0,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f20
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$t1,432($sp)
    mfc1	$t2,$f13
    and	$t1,$t1,$t2
    b	.L0da16fdc
    sw	$t1,8($s4)
.L0da16fbc:
    # Line 709
    # lw $t9, -22764($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    ld	$t3,432($sp)
    mfc1	$t8,$f14
    and	$t3,$t3,$t8
    sw	$t3,8($s4)
.L0da16fdc:
    # Line 705
    addiu	$s0,$s0,1
    # Line 700
    mtc1	$s0,$f8
    cvt.s.w	$f8,$f8
    add.s	$f5,$f8,$f20
    c.lt.s $f5,$f26
    bc1f .L0da17034
    # Line 709
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 707
    ld	$t9,360($sp)
    lw	$t9,24($t9)
    daddu	$t9,$s0,$t9
    dmtc1	$t9,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f20
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$ra,432($sp)
    mfc1	$at,$f13
    and	$ra,$ra,$at
    b	.L0da17050
    sw	$ra,12($s4)
.L0da17034:
    # Line 709
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    ld	$v0,432($sp)
    mfc1	$v1,$f14
    and	$v0,$v0,$v1
    sw	$v0,12($s4)
.L0da17050:
    # Line 705
    addiu	$s0,$s0,1
    # Line 700
    mtc1	$s0,$f8
    cvt.s.w	$f8,$f8
    add.s	$f5,$f8,$f20
    c.lt.s $f5,$f26
    bc1f .L0da170a8
    # Line 709
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 707
    ld	$a0,360($sp)
    lw	$a0,24($a0)
    daddu	$a0,$s0,$a0
    dmtc1	$a0,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f20
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a1,432($sp)
    mfc1	$a2,$f13
    and	$a1,$a1,$a2
    b	.L0da170c4
    sw	$a1,16($s4)
.L0da170a8:
    # Line 709
    jalr	$t9
    cvt.d.s	$f12,$f5
    trunc.w.d	$f14,$f0
    ld	$a3,432($sp)
    mfc1	$a4,$f14
    and	$a3,$a3,$a4
    sw	$a3,16($s4)
.L0da170c4:
    # Line 712
    ld	$s4,368($sp)
    sd	$zero,296($sp)
    b	.L0da16378
    addiu	$s4,$s4,1
.L0da170d4:
    # Line 669
    dmtc1	$zero,$f15
    add.d	$f10,$f7,$f10
    c.lt.d	$f10,$f15
    bc1f	.L0da17654
    li	$s2,12
    sdc1	$f7,224($sp)
    sdc1	$f6,472($sp)
    sdc1	$f5,480($sp)
    li	$s2,14
    b	.L0da16a3c
    sd	$a5,488($sp)
.L0da17100:
    # Line 714
    dmtc1	$zero,$f11
    add.d	$f7,$f24,$f7
    c.lt.d $f7,$f11
    li	$t3,12
    bc1f .L0da17674
    li	$a5,14
    b	.L0da16300
    sd	$a5,296($sp)
.L0da17120:
    # Line 934
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x3
    sdc1	$f10,176($sp)
    addu	$s0,$s0,$a0
    sdc1	$f9,168($sp)
    sll	$s0,$s0,0x2
    sd	$s0,352($sp)
    addu	$s0,$s0,$s4
    # Line 935
    lw	$t8,44($s0)
    # Line 936
    lw	$ra,0($s0)
    sd	$ra,416($sp)
    # Line 938
    lw	$t9,24($s0)
    # Line 940
    lwc1	$f7,32($s0)
    li	$a6,10497
    # Line 937
    lw	$s2,20($s0)
    # Line 945
    mtc1	$zero,$f20
    # Line 935
    sd	$t8,408($sp)
    # Line 938
    addiu	$t9,$t9,-1
    sd	$t9,432($sp)
    # Line 937
    addiu	$s2,$s2,-1
    # Line 940
    beq	$a6,$a3,.L0da17c78
    mul.s	$f0,$f22,$f7
    # Line 945
    c.lt.s $f0,$f26
    bc1f .L0da172b0
    nop
    sdc1	$f6,472($sp)
    sdc1	$f5,480($sp)
    b	.L0da172c8
    sd	$a5,488($sp)
.L0da17198:
    # Line 771
    mtc1	$zero,$f20
    mtc1	$zero,$f24
    mtc1	$zero,$f22
    move	$s0,$zero
    addiu	$s4,$sp,0
    ld	$a1,408($sp)
.L0da171b0:
    addiu	$a6,$sp,16
    sll	$v0,$s0,0x4
    lw	$a0,0($s4)
    # Line 784
    addiu	$s0,$s0,1
    addiu	$s4,$s4,4
    # Line 787
    ld	$v1,416($sp)
    # Line 771
    addu	$v0,$v0,$s7
    sllv	$a0,$a0,$a1
    # Line 787
    lw	$a7,4($a6)
    lw	$a4,16($sp)
    addu	$a7,$a7,$a0
    sll	$a2,$a7,0x2
    addu	$a4,$a4,$a0
    subu	$a2,$a2,$a7
    sll	$a3,$a4,0x2
    sll	$a2,$a2,0x2
    subu	$a3,$a3,$a4
    lw	$a4,8($a6)
    lw	$a7,12($a6)
    addu	$a2,$v1,$a2
    sll	$a3,$a3,0x2
    lwc1	$f1,0($v0)
    addu	$a4,$a4,$a0
    addu	$a3,$v1,$a3
    addu	$a7,$a7,$a0
    # Line 789
    lwc1	$f25,8($a3)
    # Line 787
    sll	$a1,$a4,0x2
    lwc1	$f0,4($v0)
    subu	$a1,$a1,$a4
    sll	$a4,$a7,0x2
    # Line 789
    lwc1	$f23,8($a2)
    # Line 787
    subu	$a4,$a4,$a7
    sll	$a1,$a1,0x2
    lwc1	$f29,8($v0)
    sll	$a4,$a4,0x2
    # Line 789
    madd.s	$f22,$f22,$f1,$f25
    # Line 787
    addu	$a1,$v1,$a1
    addu	$v1,$v1,$a4
    # Line 789
    lwc1	$f27,8($a1)
    lwc1	$f25,8($v1)
    madd.s	$f22,$f22,$f0,$f23
    # Line 787
    lwc1	$f23,12($v0)
    # Line 788
    lwc1	$f2,4($a3)
    # Line 789
    madd.s	$f22,$f22,$f29,$f27
    # Line 787
    lwc1	$f27,0($a3)
    # Line 789
    madd.s	$f22,$f22,$f23,$f25
    # Line 788
    lwc1	$f25,4($a2)
    # Line 787
    lwc1	$f21,0($a2)
    # Line 788
    madd.s	$f24,$f24,$f1,$f2
    lwc1	$f31,4($a1)
    # Line 787
    madd.s	$f20,$f20,$f27,$f1
    lwc1	$f27,0($a1)
    # Line 788
    madd.s	$f24,$f24,$f0,$f25
    lwc1	$f25,4($v1)
    # Line 787
    madd.s	$f20,$f20,$f21,$f0
    lwc1	$f21,0($v1)
    # Line 788
    madd.s	$f24,$f24,$f29,$f31
    # Line 787
    madd.s	$f20,$f20,$f27,$f29
    # Line 788
    madd.s	$f24,$f24,$f23,$f25
    # Line 787
    madd.s	$f20,$f20,$f21,$f23
    # Line 784
    bne	$s0,$s8,.L0da171b0
    # Line 771
    ld	$a1,408($sp)
    b	.L0da165bc
    # Line 1176
    li	$t1,8448
.L0da172b0:
    sdc1	$f6,472($sp)
    # Line 949
    mov.s	$f20,$f0
    c.lt.s $f7,$f0
    sdc1	$f5,480($sp)
    sd	$a5,488($sp)
    movt.s	$f20,$f7,$fcc3
.L0da172c8:
    # Line 950
    ldc1	$f27,232($sp)
    # Line 951
    # lw $t9, -28804($gp) # &__glFloor
    # Line 950
    sub.s	$f20,$f20,$f27
    # Line 951
    jal	__glFloor
    mov.s	$f12,$f20
    sd	$v0,304($sp)
    # Line 952
    addiu	$a5,$v0,1
    sd	$a5,312($sp)
    sd	$zero,368($sp)
.L0da172ec:
    # Line 955
    lwc1	$f5,36($s0)
    lw	$t0,8($s1)
    li	$a7,10497
    # Line 961
    mtc1	$zero,$f29
    # Line 955
    beq	$a7,$t0,.L0da17cb8
    mul.s	$f0,$f24,$f5
    # Line 961
    c.lt.s $f0,$f26
    bc1f .L0da17318
    # Line 964
    mov.s	$f31,$f0
    # Line 961
    b	.L0da17324
    sdc1	$f29,216($sp)
.L0da17318:
    # Line 964
    c.lt.s $f5,$f0
    movt.s	$f31,$f5,$fcc5
    sdc1	$f31,216($sp)
.L0da17324:
    # Line 965
    ldc1	$f0,232($sp)
    ldc1	$f12,216($sp)
    # Line 966
    # lw $t9, -28804($gp) # &__glFloor
    # Line 965
    sub.s	$f12,$f12,$f0
    # Line 966
    jal	__glFloor
    # Line 965
    sdc1	$f12,216($sp)
    # Line 966
    move	$s4,$v0
    # Line 967
    addiu	$s0,$v0,1
.L0da17344:
    # Line 970
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f20
    # Line 971
    # lw $t9, -28808($gp) # &__glFrac
    # Line 970
    mov.s	$f20,$f0
    # Line 971
    jal	__glFrac
    ldc1	$f12,216($sp)
    # Line 973
    ldc1	$f8,176($sp)
    # Line 972
    lwc1	$f9,3544($s5)
    # Line 1019
    ld	$t0,312($sp)
    # Line 973
    mul.s	$f6,$f20,$f8
    # Line 1069
    mtc1	$zero,$f4
    # Line 973
    li	$t2,2
    # Line 1004
    ld	$a3,432($sp)
    # Line 972
    sub.s	$f10,$f9,$f20
    # Line 1004
    nor	$a6,$s2,$zero
    ld	$a7,304($sp)
    # Line 973
    sub.s	$f9,$f9,$f0
    mul.s	$f5,$f0,$f6
    ld	$t1,368($sp)
    # Line 1019
    and	$t0,$a6,$t0
    # Line 1004
    nor	$a3,$a3,$zero
    # Line 973
    mul.s	$f8,$f8,$f10
    # Line 1004
    and	$a7,$a6,$a7
    and	$a4,$a3,$s4
    # Line 973
    mul.s	$f6,$f6,$f9
    # Line 1004
    or	$t3,$a7,$a4
    # Line 1019
    or	$a5,$t0,$a4
    # Line 973
    mul.s	$f7,$f0,$f8
    # Line 1064
    lw	$t8,4($s1)
    # Line 1030
    and	$a4,$a3,$s0
    # Line 973
    beq	$t1,$t2,.L0da1784c
    mul.s	$f8,$f8,$f9
    sdc1	$f22,464($sp)
    ldc1	$f9,464($sp)
    sdc1	$f24,192($sp)
    # Line 1004
    beqz	$t3,.L0da179f0
    # Line 1030
    or	$t1,$a7,$a4
    # Line 1013
    lwc1	$f22,164($s1)
    # Line 1012
    lwc1	$f24,160($s1)
    # Line 1011
    lwc1	$f20,156($s1)
    # Line 1013
    mul.s	$f22,$f22,$f8
    # Line 1012
    mul.s	$f24,$f24,$f8
    # Line 1011
    mul.s	$f20,$f20,$f8
.L0da173f4:
    # Line 1019
    beqz	$a5,.L0da17a34
    # Line 1028
    ld	$a1,408($sp)
    # Line 1024
    lwc1	$f27,164($s1)
    # Line 1023
    lwc1	$f25,160($s1)
    # Line 1022
    lwc1	$f23,156($s1)
    # Line 1024
    madd.s	$f22,$f22,$f27,$f6
    # Line 1023
    madd.s	$f24,$f24,$f25,$f6
    # Line 1022
    madd.s	$f20,$f20,$f23,$f6
.L0da17414:
    # Line 1030
    beqz	$t1,.L0da17a70
    # Line 1039
    ld	$a5,408($sp)
    # Line 1035
    lwc1	$f0,164($s1)
    # Line 1034
    lwc1	$f31,160($s1)
    # Line 1033
    lwc1	$f29,156($s1)
    # Line 1035
    madd.s	$f22,$f22,$f0,$f7
    # Line 1034
    madd.s	$f24,$f24,$f31,$f7
    # Line 1033
    madd.s	$f20,$f20,$f29,$f7
.L0da17434:
    # Line 1041
    or	$t2,$t0,$a4
    beqz	$t2,.L0da17aac
    # Line 1050
    ld	$t0,408($sp)
    # Line 1046
    lwc1	$f3,164($s1)
    # Line 1045
    lwc1	$f2,160($s1)
    # Line 1044
    lwc1	$f1,156($s1)
    # Line 1046
    madd.s	$f22,$f22,$f3,$f5
    # Line 1045
    madd.s	$f24,$f24,$f2,$f5
    # Line 1044
    madd.s	$f20,$f20,$f1,$f5
.L0da17458:
    # Line 1058
    ld	$ra,352($sp)
    lw	$t9,228($s1)
    addu	$t9,$t9,$ra
    # Line 1060
    lw	$at,100($t9)
    # Line 1062
    lw	$ra,124($t9)
    # Line 1061
    lw	$s2,120($t9)
    # Line 1064
    lwc1	$f7,132($t9)
    # Line 1058
    addiu	$s0,$t9,100
    # Line 1059
    lw	$t9,144($t9)
    # Line 1064
    li	$t3,10497
    # Line 1060
    sd	$at,416($sp)
    # Line 1059
    sd	$t9,408($sp)
    # Line 1062
    addiu	$ra,$ra,-1
    sd	$ra,432($sp)
    # Line 1061
    addiu	$s2,$s2,-1
    # Line 1064
    beq	$t3,$t8,.L0da17cf4
    mul.s	$f0,$f9,$f7
    # Line 1069
    c.lt.s $f0,$f26
    bc1f .L0da174b0
    # Line 1073
    mov.s	$f5,$f0
    # Line 1069
    b	.L0da174bc
    sdc1	$f4,208($sp)
.L0da174b0:
    # Line 1073
    c.lt.s $f7,$f0
    movt.s	$f5,$f7,$fcc7
    sdc1	$f5,208($sp)
.L0da174bc:
    # Line 1074
    ldc1	$f6,232($sp)
    ldc1	$f12,208($sp)
    # Line 1075
    # lw $t9, -28804($gp) # &__glFloor
    # Line 1074
    sub.s	$f12,$f12,$f6
    # Line 1075
    jal	__glFloor
    # Line 1074
    sdc1	$f12,208($sp)
    ldc1	$f6,192($sp)
    # Line 1075
    sd	$v0,304($sp)
    # Line 1076
    addiu	$at,$v0,1
    sd	$at,312($sp)
    sd	$zero,368($sp)
.L0da174e8:
    # Line 1079
    lwc1	$f5,36($s0)
    lw	$a1,8($s1)
    li	$a0,10497
    # Line 1085
    mtc1	$zero,$f7
    # Line 1079
    beq	$a0,$a1,.L0da17d30
    mul.s	$f0,$f6,$f5
    # Line 1085
    c.lt.s	$f0,$f26
    bc1f	.L0da17514
    # Line 1088
    mov.s	$f8,$f0
    # Line 1085
    b	.L0da17520
    sdc1	$f7,216($sp)
.L0da17514:
    # Line 1088
    c.lt.s $f5,$f0
    movt.s	$f8,$f5,$fcc1
    sdc1	$f8,216($sp)
.L0da17520:
    # Line 1089
    ldc1	$f9,232($sp)
    ldc1	$f12,216($sp)
    # Line 1090
    # lw $t9, -28804($gp) # &__glFloor
    # Line 1089
    sub.s	$f12,$f12,$f9
    # Line 1090
    jal	__glFloor
    # Line 1089
    sdc1	$f12,216($sp)
    # Line 1090
    move	$s4,$v0
    # Line 1091
    addiu	$s0,$v0,1
.L0da17540:
    # Line 1094
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    ldc1	$f12,208($sp)
    # Line 1095
    # lw $t9, -28808($gp) # &__glFrac
    # Line 1094
    sdc1	$f0,200($sp)
    # Line 1095
    jal	__glFrac
    ldc1	$f12,216($sp)
    # Line 1097
    ldc1	$f12,200($sp)
    ldc1	$f8,168($sp)
    # Line 1096
    lwc1	$f11,3544($s5)
    # Line 1097
    mul.s	$f9,$f8,$f12
    # Line 1096
    sub.s	$f12,$f11,$f12
    ld	$a5,488($sp)
    # Line 1097
    sub.s	$f11,$f11,$f0
    mul.s	$f10,$f0,$f9
    ld	$a2,368($sp)
    mul.s	$f8,$f8,$f12
    li	$a3,2
    # Line 1128
    ld	$a7,304($sp)
    # Line 1097
    mul.s	$f9,$f9,$f11
    ldc1	$f5,480($sp)
    # Line 1128
    nor	$a6,$s2,$zero
    # Line 1097
    mul.s	$f7,$f0,$f8
    ldc1	$f6,472($sp)
    # Line 1128
    and	$a7,$a6,$a7
    # Line 1097
    beq	$a2,$a3,.L0da17924
    mul.s	$f8,$f8,$f11
    # Line 1128
    ld	$a3,432($sp)
    nor	$a3,$a3,$zero
    and	$a4,$a3,$s4
    or	$t0,$a7,$a4
    beqz	$t0,.L0da17ae8
    # Line 1141
    ld	$t3,408($sp)
    # Line 1137
    lwc1	$f15,164($s1)
    # Line 1136
    lwc1	$f14,160($s1)
    # Line 1135
    lwc1	$f13,156($s1)
    # Line 1137
    madd.s	$f22,$f22,$f15,$f8
    # Line 1136
    madd.s	$f24,$f24,$f14,$f8
    # Line 1135
    madd.s	$f20,$f20,$f13,$f8
.L0da175dc:
    # Line 1143
    ld	$t0,312($sp)
    and	$t0,$a6,$t0
    or	$t1,$t0,$a4
    # Line 1154
    and	$a4,$a3,$s0
    # Line 1143
    beqz	$t1,.L0da17b24
    # Line 1165
    or	$t2,$t0,$a4
    # Line 1148
    lwc1	$f18,164($s1)
    # Line 1147
    lwc1	$f17,160($s1)
    # Line 1146
    lwc1	$f16,156($s1)
    # Line 1148
    madd.s	$f22,$f22,$f18,$f9
    # Line 1147
    madd.s	$f24,$f24,$f17,$f9
    # Line 1146
    madd.s	$f20,$f20,$f16,$f9
.L0da1760c:
    # Line 1154
    or	$t1,$a7,$a4
    beqz	$t1,.L0da17b64
    # Line 1163
    ld	$v1,408($sp)
    # Line 1159
    lwc1	$f23,164($s1)
    # Line 1158
    lwc1	$f21,160($s1)
    # Line 1157
    lwc1	$f19,156($s1)
    # Line 1159
    madd.s	$f22,$f22,$f23,$f7
    # Line 1158
    madd.s	$f24,$f24,$f21,$f7
    # Line 1157
    madd.s	$f20,$f20,$f19,$f7
.L0da17630:
    # Line 1165
    beqz	$t2,.L0da17ba0
    # Line 1174
    ld	$a2,408($sp)
    # Line 1170
    lwc1	$f29,164($s1)
    # Line 1169
    lwc1	$f27,160($s1)
    # Line 1168
    lwc1	$f25,156($s1)
    # Line 1170
    madd.s	$f22,$f22,$f29,$f10
    # Line 1169
    madd.s	$f24,$f24,$f27,$f10
    # Line 1170
    b	.L0da165b8
    # Line 1168
    madd.s	$f20,$f20,$f25,$f10
.L0da17654:
    # Line 669
    c.lt.s $f0,$f26
    bc1f .L0da177b4
    nop
    sdc1	$f7,224($sp)
    sdc1	$f6,472($sp)
    sdc1	$f5,480($sp)
    b	.L0da16a3c
    sd	$a5,488($sp)
.L0da17674:
    # Line 714
    c.lt.s $f0,$f26
    bc1f .L0da177d4
    nop
    b	.L0da16300
    sd	$t3,296($sp)
.L0da17688:
    # Line 889
    ld	$t8,408($sp)
    sllv	$t8,$s4,$t8
    ld	$t9,416($sp)
    addu	$t8,$a0,$t8
    sll	$ra,$t8,0x3
    sll	$t8,$t8,0x2
    addu	$t9,$t9,$ra
    addu	$t8,$t8,$t9
    # Line 891
    lwc1	$f22,8($t8)
    # Line 890
    lwc1	$f24,4($t8)
    # Line 889
    lwc1	$f20,0($t8)
    # Line 891
    mul.s	$f22,$f22,$f8
    # Line 890
    mul.s	$f24,$f24,$f8
    b	.L0da16954
    # Line 889
    mul.s	$f20,$f20,$f8
.L0da176c4:
    # Line 900
    ld	$t9,408($sp)
    sllv	$t9,$s4,$t9
    ld	$ra,416($sp)
    addu	$t9,$v0,$t9
    sll	$at,$t9,0x3
    sll	$t9,$t9,0x2
    addu	$ra,$ra,$at
    addu	$t9,$t9,$ra
    # Line 902
    lwc1	$f27,8($t9)
    # Line 901
    lwc1	$f25,4($t9)
    # Line 900
    lwc1	$f23,0($t9)
    # Line 902
    madd.s	$f22,$f22,$f27,$f8
    # Line 901
    madd.s	$f24,$f24,$f25,$f8
    b	.L0da1697c
    # Line 900
    madd.s	$f20,$f20,$f23,$f8
.L0da17700:
    # Line 911
    ld	$ra,408($sp)
    sllv	$ra,$s0,$ra
    ld	$at,416($sp)
    addu	$ra,$a0,$ra
    sll	$v1,$ra,0x3
    sll	$ra,$ra,0x2
    addu	$at,$at,$v1
    addu	$ra,$ra,$at
    # Line 913
    lwc1	$f1,8($ra)
    # Line 912
    lwc1	$f31,4($ra)
    # Line 911
    lwc1	$f29,0($ra)
    # Line 913
    madd.s	$f22,$f22,$f1,$f8
    # Line 912
    madd.s	$f24,$f24,$f31,$f8
    b	.L0da169a4
    # Line 911
    madd.s	$f20,$f20,$f29,$f8
.L0da1773c:
    # Line 922
    ld	$at,408($sp)
    sllv	$at,$s0,$at
    ld	$v1,416($sp)
    addu	$at,$v0,$at
    sll	$a0,$at,0x3
    sll	$at,$at,0x2
    addu	$v1,$v1,$a0
    addu	$at,$at,$v1
    # Line 924
    lwc1	$f4,8($at)
    # Line 923
    lwc1	$f3,4($at)
    # Line 922
    lwc1	$f2,0($at)
    # Line 924
    madd.s	$f22,$f22,$f4,$f8
    # Line 923
    madd.s	$f24,$f24,$f3,$f8
    b	.L0da165b8
    # Line 922
    madd.s	$f20,$f20,$f2,$f8
.L0da17778:
    # Line 669
    cvt.d.s	$f10,$f20
    c.lt.d $f10,$f8
    bc1t .L0da16a18
    # Line 684
    move	$s2,$zero
    sdc1	$f7,224($sp)
    sdc1	$f6,472($sp)
    sdc1	$f5,480($sp)
    b	.L0da16a3c
    sd	$a5,488($sp)
.L0da1779c:
    # Line 714
    cvt.d.s	$f11,$f20
    c.lt.d $f11,$f5
    bc1t .L0da162ec
    dmtc1	$zero,$f7
    b	.L0da16300
    # Line 729
    sd	$zero,296($sp)
.L0da177b4:
    # Line 669
    beqz	$v0,.L0da17c2c
    nop
    sdc1	$f7,224($sp)
    sdc1	$f6,472($sp)
    sdc1	$f5,480($sp)
    li	$s2,8
    b	.L0da16a3c
    sd	$a5,488($sp)
.L0da177d4:
    # Line 714
    beqz	$v0,.L0da17c54
    li	$v0,8
    b	.L0da16300
    sd	$v0,296($sp)
.L0da177e4:
    # Line 844
    ldc1	$f20,232($sp)
    msub.s	$f20,$f20,$f22,$f7
    # Line 845
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f6,472($sp)
    sdc1	$f5,480($sp)
    sd	$a5,488($sp)
    jal	__glFloor
    mov.s	$f12,$f20
    and	$a3,$v0,$s2
    move	$a0,$a3
    # Line 846
    addiu	$a3,$a3,1
    b	.L0da16884
    and	$a3,$s2,$a3
.L0da17818:
    # Line 858
    ldc1	$f22,232($sp)
    msub.s	$f22,$f22,$f24,$f5
    # Line 859
    # lw $t9, -28804($gp) # &__glFloor
    sd	$a3,312($sp)
    sd	$a0,304($sp)
    jal	__glFloor
    mov.s	$f12,$f22
    ld	$s0,432($sp)
    and	$t8,$v0,$s0
    move	$s4,$t8
    # Line 860
    addiu	$t8,$t8,1
    b	.L0da168dc
    and	$s0,$s0,$t8
.L0da1784c:
    # Line 1002
    ld	$v1,408($sp)
    ld	$a1,304($sp)
    ld	$a2,312($sp)
    sllv	$a3,$s4,$v1
    sllv	$v1,$s0,$v1
    addu	$a4,$a3,$a2
    addu	$a3,$a3,$a1
    sll	$at,$a3,0x3
    ld	$a0,416($sp)
    addu	$a1,$v1,$a1
    sll	$a3,$a3,0x2
    addu	$v1,$v1,$a2
    sll	$v0,$a4,0x3
    sll	$a4,$a4,0x2
    addu	$v0,$v0,$a0
    sdc1	$f22,464($sp)
    addu	$at,$at,$a0
    addu	$v0,$v0,$a4
    sll	$ra,$a1,0x3
    addu	$at,$at,$a3
    # Line 1004
    lwc1	$f22,8($v0)
    # Line 1002
    sll	$a1,$a1,0x2
    addu	$ra,$ra,$a0
    # Line 1004
    lwc1	$f23,8($at)
    sdc1	$f24,192($sp)
    # Line 1002
    sll	$t9,$v1,0x3
    addu	$ra,$ra,$a1
    sll	$v1,$v1,0x2
    addu	$t9,$t9,$a0
    # Line 1004
    lwc1	$f24,8($ra)
    mul.s	$f22,$f22,$f6
    # Line 1002
    lwc1	$f20,0($v0)
    addu	$t9,$t9,$v1
    # Line 1004
    madd.s	$f22,$f22,$f23,$f8
    lwc1	$f23,8($t9)
    madd.s	$f22,$f22,$f24,$f7
    # Line 1003
    lwc1	$f24,4($v0)
    lwc1	$f25,4($at)
    # Line 1002
    mul.s	$f20,$f20,$f6
    lwc1	$f21,0($at)
    # Line 1004
    madd.s	$f22,$f22,$f23,$f5
    # Line 1003
    lwc1	$f27,4($ra)
    mul.s	$f24,$f24,$f6
    # Line 1002
    lwc1	$f23,0($ra)
    # Line 1003
    madd.s	$f24,$f24,$f25,$f8
    # Line 1002
    madd.s	$f20,$f20,$f21,$f8
    # Line 1003
    lwc1	$f25,4($t9)
    # Line 1002
    lwc1	$f21,0($t9)
    # Line 1003
    madd.s	$f24,$f24,$f27,$f7
    # Line 1002
    madd.s	$f20,$f20,$f23,$f7
    # Line 1003
    madd.s	$f24,$f24,$f25,$f5
    ldc1	$f9,464($sp)
    # Line 1004
    b	.L0da17458
    # Line 1002
    madd.s	$f20,$f20,$f21,$f5
.L0da17924:
    # Line 1108
    ld	$t2,408($sp)
    # Line 1114
    ld	$t8,312($sp)
    # Line 1108
    ld	$t3,304($sp)
    sllv	$ra,$s4,$t2
    # Line 1120
    sllv	$t2,$s0,$t2
    # Line 1114
    addu	$t9,$ra,$t8
    # Line 1108
    addu	$ra,$ra,$t3
    # Line 1120
    addu	$t3,$t2,$t3
    # Line 1108
    ld	$a6,416($sp)
    # Line 1126
    addu	$t2,$t2,$t8
    # Line 1108
    sll	$t1,$ra,0x3
    sll	$ra,$ra,0x2
    addu	$t1,$a6,$t1
    # Line 1114
    sll	$t0,$t9,0x3
    # Line 1108
    addu	$t1,$t1,$ra
    # Line 1114
    sll	$t9,$t9,0x2
    addu	$t0,$a6,$t0
    # Line 1110
    lwc1	$f25,8($t1)
    # Line 1120
    sll	$a7,$t3,0x3
    # Line 1114
    addu	$t0,$t0,$t9
    # Line 1120
    sll	$t3,$t3,0x2
    addu	$a7,$a6,$a7
    # Line 1116
    lwc1	$f23,8($t0)
    # Line 1108
    lwc1	$f29,0($t1)
    # Line 1120
    addu	$a7,$a7,$t3
    # Line 1126
    sll	$t3,$t2,0x3
    # Line 1110
    madd.s	$f22,$f22,$f25,$f8
    # Line 1126
    sll	$t2,$t2,0x2
    addu	$a6,$a6,$t3
    # Line 1122
    lwc1	$f25,8($a7)
    # Line 1109
    lwc1	$f31,4($t1)
    # Line 1126
    addu	$a6,$a6,$t2
    # Line 1116
    madd.s	$f22,$f22,$f23,$f9
    # Line 1108
    madd.s	$f20,$f20,$f29,$f8
    # Line 1128
    lwc1	$f23,8($a6)
    # Line 1122
    madd.s	$f22,$f22,$f25,$f7
    # Line 1115
    lwc1	$f25,4($t0)
    # Line 1114
    lwc1	$f21,0($t0)
    # Line 1109
    madd.s	$f24,$f24,$f31,$f8
    # Line 1121
    lwc1	$f27,4($a7)
    # Line 1128
    madd.s	$f22,$f22,$f23,$f10
    # Line 1120
    lwc1	$f23,0($a7)
    # Line 1115
    madd.s	$f24,$f24,$f25,$f9
    # Line 1114
    madd.s	$f20,$f20,$f21,$f9
    # Line 1127
    lwc1	$f25,4($a6)
    # Line 1126
    lwc1	$f21,0($a6)
    # Line 1121
    madd.s	$f24,$f24,$f27,$f7
    # Line 1120
    madd.s	$f20,$f20,$f23,$f7
    # Line 1127
    madd.s	$f24,$f24,$f25,$f10
    # Line 1128
    b	.L0da165b8
    # Line 1126
    madd.s	$f20,$f20,$f21,$f10
.L0da179f0:
    # Line 1017
    ld	$v0,408($sp)
    ld	$at,304($sp)
    sllv	$v0,$s4,$v0
    ld	$ra,416($sp)
    addu	$at,$at,$v0
    sll	$v0,$at,0x3
    sll	$at,$at,0x2
    addu	$ra,$ra,$v0
    addu	$ra,$ra,$at
    # Line 1019
    lwc1	$f22,8($ra)
    # Line 1018
    lwc1	$f24,4($ra)
    # Line 1017
    lwc1	$f20,0($ra)
    # Line 1019
    mul.s	$f22,$f22,$f8
    # Line 1018
    mul.s	$f24,$f24,$f8
    ldc1	$f9,464($sp)
    b	.L0da173f4
    # Line 1017
    mul.s	$f20,$f20,$f8
.L0da17a34:
    # Line 1028
    ld	$a0,312($sp)
    sllv	$a1,$s4,$a1
    ld	$v1,416($sp)
    addu	$a0,$a0,$a1
    sll	$a1,$a0,0x3
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a1
    addu	$v1,$v1,$a0
    # Line 1030
    lwc1	$f27,8($v1)
    # Line 1029
    lwc1	$f25,4($v1)
    # Line 1028
    lwc1	$f23,0($v1)
    # Line 1030
    madd.s	$f22,$f22,$f27,$f6
    # Line 1029
    madd.s	$f24,$f24,$f25,$f6
    b	.L0da17414
    # Line 1028
    madd.s	$f20,$f20,$f23,$f6
.L0da17a70:
    # Line 1039
    ld	$a3,304($sp)
    sllv	$a5,$s0,$a5
    ld	$a2,416($sp)
    addu	$a3,$a3,$a5
    sll	$a5,$a3,0x3
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a5
    addu	$a2,$a2,$a3
    # Line 1041
    lwc1	$f0,8($a2)
    # Line 1040
    lwc1	$f31,4($a2)
    # Line 1039
    lwc1	$f29,0($a2)
    # Line 1041
    madd.s	$f22,$f22,$f0,$f7
    # Line 1040
    madd.s	$f24,$f24,$f31,$f7
    b	.L0da17434
    # Line 1039
    madd.s	$f20,$f20,$f29,$f7
.L0da17aac:
    # Line 1050
    ld	$a7,312($sp)
    sllv	$t0,$s0,$t0
    ld	$a6,416($sp)
    addu	$a7,$a7,$t0
    sll	$t0,$a7,0x3
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$t0
    addu	$a6,$a6,$a7
    # Line 1052
    lwc1	$f3,8($a6)
    # Line 1051
    lwc1	$f2,4($a6)
    # Line 1050
    lwc1	$f1,0($a6)
    # Line 1052
    madd.s	$f22,$f22,$f3,$f5
    # Line 1051
    madd.s	$f24,$f24,$f2,$f5
    b	.L0da17458
    # Line 1050
    madd.s	$f20,$f20,$f1,$f5
.L0da17ae8:
    # Line 1141
    ld	$t2,304($sp)
    sllv	$t3,$s4,$t3
    ld	$t1,416($sp)
    addu	$t2,$t2,$t3
    sll	$t3,$t2,0x3
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t3
    addu	$t1,$t1,$t2
    # Line 1143
    lwc1	$f12,8($t1)
    # Line 1142
    lwc1	$f11,4($t1)
    # Line 1141
    lwc1	$f4,0($t1)
    # Line 1143
    madd.s	$f22,$f22,$f12,$f8
    # Line 1142
    madd.s	$f24,$f24,$f11,$f8
    b	.L0da175dc
    # Line 1141
    madd.s	$f20,$f20,$f4,$f8
.L0da17b24:
    # Line 1152
    ld	$ra,408($sp)
    ld	$t9,312($sp)
    sllv	$ra,$s4,$ra
    ld	$t8,416($sp)
    addu	$t9,$t9,$ra
    sll	$ra,$t9,0x3
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$ra
    addu	$t8,$t8,$t9
    # Line 1154
    lwc1	$f15,8($t8)
    # Line 1153
    lwc1	$f14,4($t8)
    # Line 1152
    lwc1	$f13,0($t8)
    # Line 1154
    madd.s	$f22,$f22,$f15,$f9
    # Line 1153
    madd.s	$f24,$f24,$f14,$f9
    b	.L0da1760c
    # Line 1152
    madd.s	$f20,$f20,$f13,$f9
.L0da17b64:
    # Line 1163
    ld	$v0,304($sp)
    sllv	$v1,$s0,$v1
    ld	$at,416($sp)
    addu	$v0,$v0,$v1
    sll	$v1,$v0,0x3
    sll	$v0,$v0,0x2
    addu	$at,$at,$v1
    addu	$at,$at,$v0
    # Line 1165
    lwc1	$f18,8($at)
    # Line 1164
    lwc1	$f17,4($at)
    # Line 1163
    lwc1	$f16,0($at)
    # Line 1165
    madd.s	$f22,$f22,$f18,$f7
    # Line 1164
    madd.s	$f24,$f24,$f17,$f7
    b	.L0da17630
    # Line 1163
    madd.s	$f20,$f20,$f16,$f7
.L0da17ba0:
    # Line 1174
    ld	$a1,312($sp)
    sllv	$a2,$s0,$a2
    ld	$a0,416($sp)
    addu	$a1,$a1,$a2
    sll	$a2,$a1,0x3
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a2
    addu	$a0,$a0,$a1
    # Line 1176
    lwc1	$f23,8($a0)
    # Line 1175
    lwc1	$f21,4($a0)
    # Line 1174
    lwc1	$f19,0($a0)
    # Line 1176
    madd.s	$f22,$f22,$f23,$f10
    # Line 1175
    madd.s	$f24,$f24,$f21,$f10
    b	.L0da165b8
    # Line 1174
    madd.s	$f20,$f20,$f19,$f10
.L0da17bdc:
    # Line 1216
    ld	$gp,336($sp)
    ld	$s0,288($sp)
    ld	$s1,328($sp)
    ld	$s2,240($sp)
    ld	$s3,248($sp)
    ld	$s4,256($sp)
    ld	$s5,320($sp)
    ld	$s6,344($sp)
    ld	$s7,272($sp)
    ld	$s8,280($sp)
    ldc1	$f20,128($sp)
    ldc1	$f22,144($sp)
    ldc1	$f24,152($sp)
    ld	$ra,264($sp)
    ldc1	$f26,136($sp)
    move	$v0,$zero
    ldc1	$f28,184($sp)
    ldc1	$f30,160($sp)
    jr	$ra
    addiu	$sp,$sp,496
.L0da17c2c:
    # Line 669
    cvt.d.s	$f11,$f20
    sdc1	$f7,224($sp)
    c.lt.d $f11,$f9
    sdc1	$f6,472($sp)
    sdc1	$f5,480($sp)
    li	$s2,3
    bc1f .L0da17d6c
    sd	$a5,488($sp)
    b	.L0da16a3c
    li	$s2,15
.L0da17c54:
    # Line 714
    cvt.d.s	$f8,$f22
    c.lt.d $f8,$f6
    li	$ra,7
    # Line 729
    li	$v0,1
    # Line 714
    li	$a3,15
    bc1f .L0da17d80
    li	$at,3
    b	.L0da16300
    sd	$a3,296($sp)
.L0da17c78:
    # Line 943
    ldc1	$f20,232($sp)
    msub.s	$f20,$f20,$f22,$f7
    # Line 944
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f6,472($sp)
    sdc1	$f5,480($sp)
    sd	$a5,488($sp)
    jal	__glFloor
    mov.s	$f12,$f20
    # Line 945
    li	$a6,1
    sd	$a6,368($sp)
    # Line 944
    and	$a4,$v0,$s2
    sd	$a4,304($sp)
    # Line 945
    addiu	$a4,$a4,1
    and	$a4,$s2,$a4
    b	.L0da172ec
    sd	$a4,312($sp)
.L0da17cb8:
    # Line 958
    ldc1	$f21,232($sp)
    msub.s	$f21,$f21,$f24,$f5
    # Line 959
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f21,216($sp)
    jal	__glFloor
    mov.s	$f12,$f21
    # Line 961
    ld	$t9,368($sp)
    # Line 959
    ld	$s0,432($sp)
    # Line 961
    addiu	$t9,$t9,1
    # Line 959
    and	$t8,$v0,$s0
    move	$s4,$t8
    # Line 960
    addiu	$t8,$t8,1
    # Line 961
    sd	$t9,368($sp)
    b	.L0da17344
    # Line 960
    and	$s0,$s0,$t8
.L0da17cf4:
    # Line 1067
    ldc1	$f23,232($sp)
    msub.s	$f23,$f23,$f9,$f7
    # Line 1068
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f23,208($sp)
    jal	__glFloor
    mov.s	$f12,$f23
    ldc1	$f6,192($sp)
    # Line 1069
    li	$v1,1
    sd	$v1,368($sp)
    # Line 1068
    and	$ra,$v0,$s2
    sd	$ra,304($sp)
    # Line 1069
    addiu	$ra,$ra,1
    and	$ra,$s2,$ra
    b	.L0da174e8
    sd	$ra,312($sp)
.L0da17d30:
    # Line 1082
    ldc1	$f25,232($sp)
    msub.s	$f25,$f25,$f6,$f5
    # Line 1083
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f25,216($sp)
    jal	__glFloor
    mov.s	$f12,$f25
    # Line 1085
    ld	$t9,368($sp)
    # Line 1083
    ld	$s0,432($sp)
    # Line 1085
    addiu	$t9,$t9,1
    # Line 1083
    and	$t8,$v0,$s0
    move	$s4,$t8
    # Line 1084
    addiu	$t8,$t8,1
    # Line 1085
    sd	$t9,368($sp)
    b	.L0da17540
    # Line 1084
    and	$s0,$s0,$t8
.L0da17d6c:
    # Line 669
    c.lt.s	$f20,$f0
    bc1f	.L0da17d94
    nop
    b	.L0da16a3c
    li	$s2,7
.L0da17d80:
    # Line 714
    c.lt.s $f22,$f0
    bc1f .L0da17da8
    nop
    b	.L0da16300
    sd	$ra,296($sp)
.L0da17d94:
    # Line 669
    c.lt.d $f11,$f10
    bc1f .L0da17dbc
    nop
    b	.L0da16a40
    # Line 688
    nop	# was lw $t9, -28804($gp) # &__glFloor
.L0da17da8:
    # Line 714
    c.lt.d $f8,$f7
    bc1f .L0da17dcc
    nop
    b	.L0da16300
    sd	$at,296($sp)
.L0da17dbc:
    # Line 684
    c.lt.d $f11,$f8
    li	$s2,1
    b	.L0da16a3c
    movf	$s2,$zero,$fcc4
.L0da17dcc:
    # Line 729
    c.lt.d $f8,$f5
    movf	$v0,$zero,$fcc5
    b	.L0da16300
    sd	$v0,296($sp)
.end __glTextureRGB_F_LML_Span

# Function: __glTextureRGB_F_LML_StippledSpan
# Declared: Line 1226 (Source lines: 1227-1862)
# Address: 0x0da17de0 - 0x0da19aa8 (Size: 7368 bytes, Frame: 144)
.globl __glTextureRGB_F_LML_StippledSpan
.ent __glTextureRGB_F_LML_StippledSpan
__glTextureRGB_F_LML_StippledSpan:
    # Line 1263
    lwc1	$f5,30240($a0)
    # Line 1262
    lwc1	$f6,30236($a0)
    # Line 1258
    lw	$v1,30472($a0)
    # Line 1227
    addiu	$sp,$sp,-528
    sdc1	$f28,192($sp)
    # Line 1261
    lwc1	$f28,30228($a0)
    # Line 1227
    sdc1	$f30,160($sp)
    # Line 1260
    lwc1	$f30,30224($a0)
    # Line 1258
    sd	$v1,336($sp)
    # Line 1227
    sd	$s7,304($sp)
    # Line 1257
    lw	$s7,30464($a0)
    # Line 1227
    sd	$s1,320($sp)
    # Line 1255
    lw	$s1,28208($a0)
    # Line 1256
    lw	$at,30248($a0)
    sd	$at,344($sp)
    sdc1	$f24,152($sp)
    sdc1	$f22,144($sp)
    sdc1	$f26,136($sp)
    sdc1	$f20,128($sp)
    sd	$s0,288($sp)
    sd	$s4,280($sp)
    sd	$ra,272($sp)
    sd	$s6,264($sp)
    sd	$s3,256($sp)
    sd	$s2,248($sp)
    sd	$gp,328($sp)
    # Line 1227
    sd	$s5,312($sp)
    # Line 1236
    lwc1	$f0,3540($a0)
    # Line 1227
    sd	$s8,296($sp)
    lui	$v0,0x4
    # Line 1253
    lw	$s8,2484($a0)
    # Line 1227
    move	$s5,$a0
    addiu	$v0,$v0,-28756
    # Line 1236
    sdc1	$f0,200($sp)
    # Line 1227
    addu	$gp,$t9,$v0
    # Line 1263
    beqz	$at,.L0da19a10
    # Line 1253
    lw	$s8,0($s8)
    # Line 1263
    li	$s3,1
    mtc1	$zero,$f26
    li	$t3,-1
    addiu	$a1,$sp,12
    sd	$a1,376($sp)
    addiu	$a0,$sp,-4
    b	.L0da17ea8
    sd	$a0,384($sp)
    nop
    nop
    nop
.L0da17ea0:
    # Line 1274
    ld	$a2,344($sp)
    beqz	$a2,.L0da19a10
.L0da17ea8:
    # Line 1272
    ld	$a5,336($sp)
    # Line 1267
    li	$t1,32
    ld	$a4,344($sp)
    # Line 1272
    addiu	$a5,$a5,4
    # Line 1267
    li	$a6,32
    # Line 1272
    sd	$a5,336($sp)
    # Line 1267
    move	$v0,$a4
    slt	$a6,$a6,$a4
    # Line 1272
    lw	$a5,-4($a5)
    # Line 1267
    movn	$v0,$t1,$a6
    # Line 1274
    addiu	$a3,$v0,-1
    sd	$a3,464($sp)
    # Line 1272
    sd	$a5,456($sp)
    # Line 1270
    subu	$a4,$a4,$v0
    # Line 1274
    bltz	$a3,.L0da17ea0
    sd	$a4,344($sp)
    b	.L0da182b4
    lui	$s6,0x8000
.L0da17ef0:
    # Line 1353
    ldc1	$f7,_lit8_bff0000000000000
    dmtc1	$zero,$f8
    add.d	$f7,$f0,$f7
    c.lt.d	$f7,$f8
    ldc1	$f6,_lit8_4000000000000000
    li	$a0,1
    movf	$a0,$zero,$fcc0
    ld	$s4,360($sp)
    beqz	$a0,.L0da19430
    add.d	$f6,$f0,$f6
.L0da17f18:
    dmtc1	$zero,$f8
    c.lt.d $f6,$f8
    bc1f .L0da18d68
    li	$a7,15
    sd	$a7,240($sp)
    sdc1	$f0,504($sp)
    mov.d	$f20,$f0
.L0da17f34:
    # Line 1372
    # lw $t9, -22764($gp) # &floor
    jal	floor
    mov.d	$f12,$f20
    trunc.w.d	$f9,$f0
    mfc1	$v0,$f9
    # Line 1373
    addiu	$t0,$v0,-1
    mtc1	$t0,$f10
    cvt.s.w	$f10,$f10
    c.lt.s $f10,$f26
    # Line 1372
    swc1	$f9,4($sp)
    # Line 1373
    bc1f .L0da17f68
    sw	$t0,0($sp)
    # Line 1374
    sw	$zero,0($sp)
.L0da17f68:
    # Line 1376
    addiu	$a0,$v0,1
    mtc1	$a0,$f11
    cvt.s.w	$f11,$f11
    c.lt.s $f22,$f11
    bc1f .L0da17f8c
    sw	$a0,8($sp)
    # Line 1377
    trunc.w.s	$f12,$f22
    swc1	$f12,8($sp)
    mfc1	$a0,$f12
.L0da17f8c:
    # Line 1379
    addiu	$t1,$a0,1
    mtc1	$t1,$f13
    cvt.s.w	$f13,$f13
    c.lt.s $f22,$f13
    bc1f .L0da17fac
    sw	$t1,12($sp)
    # Line 1380
    trunc.w.s	$f14,$f22
    swc1	$f14,12($sp)
.L0da17fac:
    # Line 1385
    # lw $t9, -22764($gp) # &floor
    li	$s0,32
    jal	floor
    ldc1	$f12,232($sp)
    ldc1	$f21,232($sp)
    ldc1	$f19,_lit8_4030000000000000
    lwc1	$f22,3540($s5)
    sub.d	$f21,$f21,$f0
    cvt.d.s	$f22,$f22
    madd.d	$f19,$f22,$f19,$f21
    trunc.w.d	$f19,$f19
    mfc1	$t8,$f19
    # Line 1386
    sll	$ra,$t8,0x2
    # Line 1390
    # lw $t9, -22764($gp) # &floor
    # Line 1386
    addu	$ra,$s1,$ra
    # Line 1387
    lwc1	$f18,24($ra)
    # Line 1386
    lwc1	$f17,88($ra)
    # Line 1389
    subu	$t3,$s0,$t8
    # Line 1388
    sll	$t2,$t8,0x1e
    # Line 1387
    swc1	$f18,100($sp)
    # Line 1389
    sll	$t3,$t3,0x2
    # Line 1388
    subu	$t2,$t2,$t8
    # Line 1386
    swc1	$f17,96($sp)
    # Line 1389
    addu	$t3,$s1,$t3
    # Line 1388
    sll	$t2,$t2,0x2
    # Line 1389
    lwc1	$f16,24($t3)
    # Line 1388
    addu	$t2,$s1,$t2
    lwc1	$f15,88($t2)
    # Line 1389
    swc1	$f16,108($sp)
    # Line 1390
    mov.d	$f12,$f20
    jal	floor
    # Line 1388
    swc1	$f15,104($sp)
    # Line 1390
    ldc1	$f7,_lit8_4030000000000000
    sub.d	$f31,$f20,$f0
    madd.d	$f31,$f22,$f7,$f31
    trunc.w.d	$f31,$f31
    mfc1	$v1,$f31
    ld	$a6,240($sp)
    ldc1	$f5,520($sp)
    # Line 1391
    sll	$a0,$v1,0x2
    ldc1	$f6,512($sp)
    addu	$a0,$s1,$a0
    # Line 1394
    li	$a7,32
    # Line 1392
    lwc1	$f29,24($a0)
    # Line 1391
    lwc1	$f27,88($a0)
    # Line 1394
    subu	$v0,$a7,$v1
    # Line 1393
    sll	$at,$v1,0x1e
    # Line 1392
    swc1	$f29,116($sp)
    # Line 1394
    sll	$v0,$v0,0x2
    # Line 1393
    subu	$at,$at,$v1
    # Line 1391
    swc1	$f27,112($sp)
    # Line 1394
    addu	$v0,$s1,$v0
    # Line 1393
    sll	$at,$at,0x2
    # Line 1394
    lwc1	$f25,24($v0)
    # Line 1393
    addu	$at,$s1,$at
    li	$a4,4
    lwc1	$f23,88($at)
    addiu	$a5,$sp,32
    li	$t3,-1
    # Line 1394
    swc1	$f25,124($sp)
    addiu	$a3,$sp,112
    move	$s0,$zero
    # Line 1393
    swc1	$f23,120($sp)
.L0da180a8:
    # Line 1394
    addiu	$a0,$sp,96
    sll	$v0,$s0,0x4
    # Line 1398
    addiu	$s0,$s0,1
    # Line 1394
    lwc1	$f0,0($a3)
    addu	$v0,$v0,$a5
    # Line 1398
    addiu	$a3,$a3,4
    # Line 1400
    lwc1	$f4,12($a0)
    lwc1	$f3,8($a0)
    lwc1	$f2,4($a0)
    lwc1	$f1,96($sp)
    mul.s	$f4,$f4,$f0
    mul.s	$f3,$f3,$f0
    swc1	$f4,12($v0)
    mul.s	$f2,$f2,$f0
    swc1	$f3,8($v0)
    mul.s	$f1,$f1,$f0
    swc1	$f2,4($v0)
    swc1	$f1,0($v0)
    # Line 1398
    bne	$s0,$a4,.L0da180a8
    addiu	$a7,$sp,32
    # Line 1404
    beqz	$s4,.L0da188cc
    li	$t0,4
    # Line 1410
    li	$v1,2
.L0da18104:
    beq	$s4,$v1,.L0da18e10
    mtc1	$zero,$f24
    # Line 1423
    mtc1	$zero,$f24
    mtc1	$zero,$f20
    mtc1	$zero,$f22
    move	$s0,$zero
    addiu	$s4,$sp,0
    li	$a4,3
    li	$a3,3
.L0da18128:
    # Line 1439
    sll	$v1,$s3,0x3
    # Line 1423
    sllv	$a0,$s3,$a4
    addiu	$a5,$sp,16
    sll	$v0,$s0,0x4
    addu	$v0,$v0,$a7
    and	$a0,$a0,$a6
    # Line 1439
    and	$v1,$s2,$v1
    beqz	$v1,.L0da18788
    # Line 1437
    addiu	$a3,$a3,-1
.L0da1814c:
    # Line 1442
    lwc1	$f10,164($s1)
    # Line 1440
    lwc1	$f7,0($v0)
    # Line 1441
    lwc1	$f9,160($s1)
    # Line 1440
    lwc1	$f8,156($s1)
    # Line 1442
    madd.s	$f22,$f22,$f7,$f10
    # Line 1441
    madd.s	$f20,$f20,$f7,$f9
    # Line 1440
    madd.s	$f24,$f24,$f7,$f8
.L0da18168:
    # Line 1436
    addiu	$s0,$s0,1
    # Line 1439
    sllv	$a1,$s3,$a3
    # Line 1437
    addiu	$a3,$a3,-1
    # Line 1439
    and	$a1,$s2,$a1
    # Line 1436
    addiu	$a4,$a4,-1
    # Line 1439
    sllv	$a2,$s3,$a3
    beqz	$a1,.L0da187e0
    and	$a2,$s2,$a2
.L0da18188:
    # Line 1442
    lwc1	$f14,164($s1)
    # Line 1440
    lwc1	$f11,4($v0)
    # Line 1441
    lwc1	$f13,160($s1)
    # Line 1440
    lwc1	$f12,156($s1)
    # Line 1442
    madd.s	$f22,$f22,$f11,$f14
    # Line 1441
    madd.s	$f20,$f20,$f11,$f13
    # Line 1440
    madd.s	$f24,$f24,$f11,$f12
.L0da181a4:
    # Line 1437
    addiu	$a3,$a3,-1
    # Line 1439
    beqz	$a2,.L0da18830
    nop
.L0da181b0:
    # Line 1442
    lwc1	$f18,164($s1)
    # Line 1440
    lwc1	$f15,8($v0)
    # Line 1441
    lwc1	$f17,160($s1)
    # Line 1440
    lwc1	$f16,156($s1)
    # Line 1442
    madd.s	$f22,$f22,$f15,$f18
    # Line 1441
    madd.s	$f20,$f20,$f15,$f17
    # Line 1440
    madd.s	$f24,$f24,$f15,$f16
.L0da181cc:
    # Line 1439
    sllv	$t1,$s3,$a3
    and	$t1,$s2,$t1
    beqz	$t1,.L0da18880
    # Line 1423
    li	$a3,3
.L0da181dc:
    # Line 1442
    lwc1	$f25,164($s1)
    # Line 1440
    lwc1	$f19,12($v0)
    # Line 1441
    lwc1	$f23,160($s1)
    # Line 1440
    lwc1	$f21,156($s1)
    # Line 1442
    madd.s	$f22,$f22,$f19,$f25
    # Line 1441
    madd.s	$f20,$f20,$f19,$f23
    # Line 1440
    madd.s	$f24,$f24,$f19,$f21
.L0da181f8:
    # Line 1436
    bne	$s0,$t0,.L0da18128
    addiu	$s4,$s4,4
.L0da18200:
    # Line 1815
    li	$t2,8448
.L0da18204:
    beq	$s8,$t2,.L0da189f0
.L0da18208:
    # Line 1828
    li	$t8,0x8062
    beq	$s8,$t8,.L0da18614
    li	$t9,7681
    beq	$s8,$t9,.L0da18614
    li	$ra,8449
    beq	$s8,$ra,.L0da18614
    nop
    # Line 1839
    lw	$at,2484($s5)
    # Line 1841
    lwc1	$f7,3544($s5)
    lwc1	$f3,4($at)
    lwc1	$f4,0($s7)
    sub.s	$f7,$f7,$f24
    mul.s	$f3,$f3,$f24
    madd.s	$f3,$f3,$f4,$f7
    swc1	$f3,0($s7)
    # Line 1842
    lwc1	$f2,3544($s5)
    lwc1	$f0,8($at)
    lwc1	$f1,4($s7)
    sub.s	$f2,$f2,$f20
    mul.s	$f0,$f0,$f20
    madd.s	$f0,$f0,$f1,$f2
    swc1	$f0,4($s7)
    # Line 1843
    lwc1	$f31,3544($s5)
    lwc1	$f27,12($at)
    lwc1	$f29,8($s7)
    sub.s	$f31,$f31,$f22
    mul.s	$f27,$f27,$f22
    madd.s	$f27,$f27,$f29,$f31
    swc1	$f27,8($s7)
.L0da1827c:
    # Line 1850
    lwc1	$f9,30384($s5)
    # Line 1852
    lwc1	$f11,30396($s5)
    # Line 1851
    lwc1	$f10,30392($s5)
    # Line 1274
    ld	$v0,464($sp)
    # Line 1849
    lwc1	$f8,30380($s5)
    # Line 1852
    add.s	$f5,$f11,$f5
    # Line 1851
    add.s	$f6,$f10,$f6
    # Line 1274
    addiu	$v0,$v0,-1
    # Line 1855
    srl	$s6,$s6,0x1
    # Line 1850
    add.s	$f28,$f9,$f28
    # Line 1853
    addiu	$s7,$s7,16
    # Line 1274
    sd	$v0,464($sp)
    beq	$v0,$t3,.L0da17ea0
    # Line 1849
    add.s	$f30,$f8,$f30
.L0da182b4:
    # Line 1274
    ld	$v1,456($sp)
    and	$v1,$v1,$s6
    beqz	$v1,.L0da1827c
    nop
    # Line 1276
    lwc1	$f8,3544($s5)
    div.s	$f22,$f8,$f6
    lwc1	$f23,240($s1)
    mul.s	$f7,$f5,$f22
    c.le.s $f7,$f23
    ldc1	$f24,200($sp)
    lw	$a3,4($s1)
    mul.s	$f0,$f28,$f22
    lw	$s4,228($s1)
    bc1f .L0da183a0
    mul.s	$f22,$f30,$f22
    # Line 1293
    lwc1	$f20,32($s4)
    msub.s	$f7,$f24,$f20,$f22
    # Line 1289
    lw	$a4,0($s4)
    # Line 1291
    lw	$v0,24($s4)
    # Line 1293
    li	$a1,10497
    # Line 1290
    lw	$a5,20($s4)
    # Line 1287
    lw	$a0,44($s4)
    # Line 1291
    addiu	$v0,$v0,-1
    sdc1	$f0,184($sp)
    # Line 1290
    addiu	$s2,$a5,-1
    # Line 1293
    bne	$a1,$a3,.L0da1863c
    cvt.d.s	$f8,$f7
    ld	$a3,376($sp)
    li	$s0,-1
    sd	$a5,368($sp)
    mtc1	$s0,$f9
    cvt.s.w	$f9,$f9
    sdc1	$f7,488($sp)
    sdc1	$f8,232($sp)
    sdc1	$f6,512($sp)
    add.s	$f0,$f9,$f7
    sdc1	$f5,520($sp)
    sd	$a3,400($sp)
    c.lt.s $f0,$f26
    sd	$a4,448($sp)
    sd	$a0,440($sp)
    bc1f .L0da18a18
    sd	$v0,408($sp)
    # Line 1300
    ld	$v1,368($sp)
    daddiu	$v1,$v1,-1
    dmtc1	$v1,$f12
    cvt.s.l	$f12,$f12
    ldc1	$f22,488($sp)
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a1,400($sp)
    mfc1	$a0,$f13
    and	$a0,$s2,$a0
    b	.L0da18a3c
    sw	$a0,4($a1)
    nop
.L0da183a0:
    # Line 1418
    c.eq.s $f7,$f26
    bc1t .L0da18408
    sdc1	$f0,184($sp)
    # Line 1459
    trunc.w.s	$f14,$f7
    mfc1	$a1,$f14
    sra	$a1,$a1,0x1
    move	$v0,$zero
    beqz	$a1,.L0da183e0
    move	$a0,$a1
    move	$v0,$zero
.L0da183c8:
    sra	$a0,$a0,0x1
    addiu	$v0,$v0,1
    beqz	$a0,.L0da183e0
    sra	$a0,$a0,0x1
    bnez	$a0,.L0da183c8
    addiu	$v0,$v0,1
.L0da183e0:
    # Line 1461
    sllv	$a2,$s3,$v0
    mtc1	$a2,$f2
    cvt.s.w	$f2,$f2
    sub.s	$f1,$f7,$f2
    div.s	$f1,$f1,$f2
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    add.s	$f0,$f0,$f1
    b	.L0da1840c
    mul.s	$f0,$f24,$f0
.L0da18408:
    # Line 1463
    mtc1	$zero,$f0
.L0da1840c:
    # Line 1471
    trunc.w.s	$f9,$f0
    mfc1	$a0,$f9
    cvt.s.w	$f9,$f9
    # Line 1467
    lw	$v0,236($s1)
    # Line 1471
    addiu	$a5,$a0,1
    slt	$a4,$v0,$a5
    slti	$a5,$a5,0
    or	$a4,$a4,$a5
    sub.s	$f9,$f0,$f9
    beqz	$a4,.L0da18d9c
    sub.s	$f10,$f8,$f9
    # Line 1474
    sll	$t8,$v0,0x2
    subu	$t8,$t8,$v0
    sll	$t8,$t8,0x3
    addu	$t8,$t8,$v0
    sll	$t8,$t8,0x2
    addu	$t8,$s4,$t8
    sd	$t8,392($sp)
    # Line 1476
    lw	$t9,0($t8)
    # Line 1478
    lw	$s0,24($t8)
    # Line 1477
    lw	$s2,20($t8)
    # Line 1480
    lwc1	$f7,32($t8)
    li	$a6,10497
    # Line 1475
    lw	$t8,44($t8)
    # Line 1476
    sd	$t9,448($sp)
    # Line 1478
    addiu	$s0,$s0,-1
    # Line 1475
    sd	$t8,440($sp)
    # Line 1477
    addiu	$s2,$s2,-1
    # Line 1480
    beq	$a6,$a3,.L0da1948c
    mul.s	$f0,$f22,$f7
    # Line 1485
    c.lt.s	$f0,$f26
    bc1f	.L0da184a0
    ld	$s4,392($sp)
    mtc1	$zero,$f20
    sdc1	$f6,512($sp)
    b	.L0da184b4
    sdc1	$f5,520($sp)
.L0da184a0:
    # Line 1488
    mov.s	$f20,$f0
    c.lt.s $f7,$f0
    sdc1	$f6,512($sp)
    sdc1	$f5,520($sp)
    movt.s	$f20,$f7,$fcc1
.L0da184b4:
    # Line 1490
    # lw $t9, -28804($gp) # &__glFloor
    # Line 1489
    sub.s	$f20,$f20,$f24
    # Line 1490
    jal	__glFloor
    mov.s	$f12,$f20
    sd	$v0,416($sp)
    # Line 1491
    addiu	$t9,$v0,1
    sd	$t9,424($sp)
.L0da184d0:
    # Line 1494
    lwc1	$f5,36($s4)
    ldc1	$f0,184($sp)
    lw	$v0,8($s1)
    li	$at,10497
    beq	$at,$v0,.L0da194c0
    mul.s	$f0,$f0,$f5
    # Line 1499
    c.lt.s $f0,$f26
    bc1f .L0da184fc
    nop
    b	.L0da18508
    mtc1	$zero,$f22
.L0da184fc:
    # Line 1502
    c.lt.s $f5,$f0
    mov.s	$f22,$f0
    movt.s	$f22,$f5,$fcc3
.L0da18508:
    # Line 1504
    # lw $t9, -28804($gp) # &__glFloor
    # Line 1503
    sub.s	$f22,$f22,$f24
    # Line 1504
    jal	__glFloor
    mov.s	$f12,$f22
    move	$s4,$v0
    # Line 1505
    addiu	$v1,$v0,1
    sd	$v1,432($sp)
.L0da18524:
    # Line 1508
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f20
    # Line 1509
    # lw $t9, -28808($gp) # &__glFrac
    # Line 1508
    sdc1	$f0,480($sp)
    # Line 1509
    jal	__glFrac
    mov.s	$f12,$f22
    # Line 1510
    ldc1	$f7,480($sp)
    lwc1	$f9,3544($s5)
    # Line 1511
    ld	$v0,416($sp)
    nor	$a6,$s2,$zero
    nor	$a4,$s0,$zero
    ld	$a0,424($sp)
    and	$a5,$a4,$s4
    and	$t1,$a6,$v0
    # Line 1510
    sub.s	$f10,$f9,$f7
    ld	$a3,432($sp)
    # Line 1511
    sub.s	$f9,$f9,$f0
    or	$a1,$t1,$a5
    ldc1	$f5,520($sp)
    li	$t3,-1
    ldc1	$f6,512($sp)
    beqz	$a1,.L0da19314
    mul.s	$f8,$f10,$f9
    # Line 1524
    lwc1	$f22,164($s1)
    # Line 1523
    lwc1	$f20,160($s1)
    # Line 1522
    lwc1	$f24,156($s1)
    # Line 1524
    mul.s	$f22,$f22,$f8
    # Line 1523
    mul.s	$f20,$f20,$f8
    # Line 1522
    mul.s	$f24,$f24,$f8
.L0da1859c:
    # Line 1530
    and	$t2,$a6,$a0
    or	$a2,$t2,$a5
    beqz	$a2,.L0da19350
    mul.s	$f8,$f7,$f9
    # Line 1535
    lwc1	$f27,164($s1)
    # Line 1534
    lwc1	$f25,160($s1)
    # Line 1533
    lwc1	$f23,156($s1)
    # Line 1535
    madd.s	$f22,$f22,$f27,$f8
    # Line 1534
    madd.s	$f20,$f20,$f25,$f8
    # Line 1533
    madd.s	$f24,$f24,$f23,$f8
.L0da185c4:
    # Line 1541
    and	$a5,$a4,$a3
    or	$a6,$t1,$a5
    beqz	$a6,.L0da1938c
    mul.s	$f8,$f0,$f10
    # Line 1546
    lwc1	$f1,164($s1)
    # Line 1545
    lwc1	$f31,160($s1)
    # Line 1544
    lwc1	$f29,156($s1)
    # Line 1546
    madd.s	$f22,$f22,$f1,$f8
    # Line 1545
    madd.s	$f20,$f20,$f31,$f8
    # Line 1544
    madd.s	$f24,$f24,$f29,$f8
.L0da185ec:
    # Line 1552
    or	$t1,$t2,$a5
    beqz	$t1,.L0da193c8
    mul.s	$f8,$f0,$f7
    # Line 1557
    lwc1	$f4,164($s1)
    # Line 1556
    lwc1	$f3,160($s1)
    # Line 1555
    lwc1	$f2,156($s1)
    # Line 1557
    madd.s	$f22,$f22,$f4,$f8
    # Line 1556
    madd.s	$f20,$f20,$f3,$f8
    # Line 1557
    b	.L0da18200
    # Line 1555
    madd.s	$f24,$f24,$f2,$f8
.L0da18614:
    # Line 1831
    lwc1	$f9,30752($s5)
    mul.s	$f9,$f9,$f24
    swc1	$f9,0($s7)
    # Line 1832
    lwc1	$f8,30756($s5)
    mul.s	$f8,$f8,$f20
    swc1	$f8,4($s7)
    # Line 1833
    lwc1	$f7,30760($s5)
    mul.s	$f7,$f7,$f22
    b	.L0da1827c
    swc1	$f7,8($s7)
.L0da1863c:
    # Line 1307
    ldc1	$f9,_lit8_bff0000000000000
    dmtc1	$zero,$f1
    add.d	$f9,$f8,$f9
    c.lt.d $f9,$f1
    ldc1	$f0,_lit8_4000000000000000
    li	$a3,1
    movf	$a3,$zero,$fcc4
    beqz	$a3,.L0da19404
    add.d	$f0,$f8,$f0
.L0da18660:
    dmtc1	$zero,$f10
    c.lt.d $f0,$f10
    bc1f .L0da18d34
    ldc1	$f10,_lit8_3ff0000000000000
    sdc1	$f8,232($sp)
    sdc1	$f6,512($sp)
    sdc1	$f5,520($sp)
    sd	$a4,448($sp)
    sd	$a0,440($sp)
    li	$s2,15
    sd	$v0,408($sp)
.L0da1868c:
    # Line 1326
    # lw $t9, -28804($gp) # &__glFloor
.L0da18690:
    jal	__glFloor
    mov.s	$f12,$f7
    # Line 1327
    addiu	$t2,$v0,-1
    mtc1	$t2,$f11
    cvt.s.w	$f11,$f11
    c.lt.s $f11,$f26
    ldc1	$f6,184($sp)
    sw	$t2,16($sp)
    bc1f .L0da186bc
    # Line 1326
    sw	$v0,20($sp)
    # Line 1328
    sw	$zero,16($sp)
.L0da186bc:
    # Line 1330
    addiu	$a0,$v0,1
    mtc1	$a0,$f12
    cvt.s.w	$f12,$f12
    c.lt.s $f20,$f12
    bc1f .L0da186e0
    sw	$a0,24($sp)
    # Line 1331
    trunc.w.s	$f13,$f20
    swc1	$f13,24($sp)
    mfc1	$a0,$f13
.L0da186e0:
    # Line 1333
    addiu	$t3,$a0,1
    mtc1	$t3,$f14
    cvt.s.w	$f14,$f14
    c.lt.s	$f20,$f14
    bc1f	.L0da18700
    sw	$t3,28($sp)
    # Line 1334
    trunc.w.s	$f15,$f20
    swc1	$f15,28($sp)
.L0da18700:
    sd	$zero,360($sp)
.L0da18704:
    # Line 1339
    lwc1	$f22,36($s4)
    msub.s	$f5,$f24,$f22,$f6
    lw	$t8,8($s1)
    li	$v0,10497
    sd	$s4,352($sp)
    bne	$v0,$t8,.L0da17ef0
    cvt.d.s	$f0,$f5
    ld	$s4,384($sp)
    li	$s0,-1
    mtc1	$s0,$f9
    cvt.s.w	$f9,$f9
    add.s	$f6,$f9,$f5
    c.lt.s $f6,$f26
    sdc1	$f5,472($sp)
    bc1f .L0da18ba0
    sdc1	$f0,504($sp)
    # Line 1346
    ld	$t9,352($sp)
    lw	$t9,24($t9)
    daddiu	$t9,$t9,-1
    dmtc1	$t9,$f12
    cvt.s.l	$f12,$f12
    ldc1	$f22,472($sp)
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    mov.d	$f20,$f0
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$ra,408($sp)
    mfc1	$at,$f13
    and	$ra,$ra,$at
    b	.L0da18bc8
    sw	$ra,4($s4)
.L0da18788:
    # Line 1439
    bnez	$a0,.L0da1814c
    # Line 1444
    ld	$t2,440($sp)
    lw	$t1,0($s4)
    lw	$a2,16($sp)
    sllv	$t1,$t1,$t2
    addu	$a2,$a2,$t1
    sll	$a1,$a2,0x2
    ld	$v1,448($sp)
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    lwc1	$f15,0($v0)
    addu	$v1,$v1,$a1
    # Line 1446
    lwc1	$f17,8($v1)
    # Line 1445
    lwc1	$f16,4($v1)
    # Line 1444
    lwc1	$f14,0($v1)
    # Line 1446
    madd.s	$f22,$f22,$f15,$f17
    # Line 1445
    madd.s	$f20,$f20,$f15,$f16
    b	.L0da18168
    # Line 1444
    madd.s	$f24,$f24,$f14,$f15
    nop
    nop
    nop
.L0da187e0:
    # Line 1439
    bnez	$a0,.L0da18188
    # Line 1444
    ld	$v1,440($sp)
    lw	$at,0($s4)
    lw	$ra,4($a5)
    sllv	$at,$at,$v1
    addu	$ra,$ra,$at
    sll	$t9,$ra,0x2
    ld	$t8,448($sp)
    subu	$t9,$t9,$ra
    sll	$t9,$t9,0x2
    lwc1	$f19,4($v0)
    addu	$t8,$t8,$t9
    # Line 1446
    lwc1	$f23,8($t8)
    # Line 1445
    lwc1	$f21,4($t8)
    # Line 1444
    lwc1	$f18,0($t8)
    # Line 1446
    madd.s	$f22,$f22,$f19,$f23
    # Line 1445
    madd.s	$f20,$f20,$f19,$f21
    b	.L0da181a4
    # Line 1444
    madd.s	$f24,$f24,$f18,$f19
    nop
.L0da18830:
    # Line 1439
    bnez	$a0,.L0da181b0
    # Line 1444
    ld	$t8,440($sp)
    lw	$t2,0($s4)
    lw	$t1,8($a5)
    sllv	$t2,$t2,$t8
    addu	$t1,$t1,$t2
    sll	$a2,$t1,0x2
    ld	$a1,448($sp)
    subu	$a2,$a2,$t1
    sll	$a2,$a2,0x2
    lwc1	$f27,8($v0)
    addu	$a1,$a1,$a2
    # Line 1446
    lwc1	$f31,8($a1)
    # Line 1445
    lwc1	$f29,4($a1)
    # Line 1444
    lwc1	$f25,0($a1)
    # Line 1446
    madd.s	$f22,$f22,$f27,$f31
    # Line 1445
    madd.s	$f20,$f20,$f27,$f29
    b	.L0da181cc
    # Line 1444
    madd.s	$f24,$f24,$f25,$f27
    nop
.L0da18880:
    # Line 1439
    bnez	$a0,.L0da181dc
    # Line 1444
    ld	$a0,440($sp)
    lw	$v1,0($s4)
    lw	$at,12($a5)
    sllv	$v1,$v1,$a0
    addu	$at,$at,$v1
    sll	$ra,$at,0x2
    ld	$t9,448($sp)
    subu	$ra,$ra,$at
    sll	$ra,$ra,0x2
    lwc1	$f1,12($v0)
    addu	$t9,$t9,$ra
    # Line 1446
    lwc1	$f3,8($t9)
    # Line 1445
    lwc1	$f2,4($t9)
    # Line 1444
    lwc1	$f0,0($t9)
    # Line 1446
    madd.s	$f22,$f22,$f1,$f3
    # Line 1445
    madd.s	$f20,$f20,$f1,$f2
    b	.L0da181f8
    # Line 1444
    madd.s	$f24,$f24,$f0,$f1
.L0da188cc:
    # Line 1404
    bnez	$s2,.L0da18104
    # Line 1410
    li	$v1,2
    # Line 1404
    bnez	$a6,.L0da18104
    # Line 1410
    li	$v1,2
    # Line 1409
    ld	$a0,448($sp)
    li	$t1,16
    mtc1	$zero,$f22
    move	$v0,$a7
    mtc1	$zero,$f20
    ld	$a6,440($sp)
    mtc1	$zero,$f0
    li	$a4,3
    lw	$a5,0($sp)
    move	$a3,$zero
    sllv	$a4,$a4,$a6
    lw	$a2,16($sp)
    sllv	$a5,$a5,$a6
    li	$a6,-48
    sll	$a4,$a4,0x2
    addu	$a2,$a2,$a5
    li	$a5,-48
    sll	$a1,$a2,0x2
    addu	$a5,$a4,$a5
    subu	$a1,$a1,$a2
    addu	$a4,$a4,$a6
    sll	$a1,$a1,0x2
    li	$a6,3
    addu	$a0,$a0,$a1
    nop
.L0da18940:
    # Line 1413
    sra	$ra,$a3,0x1f
    xor	$t9,$a3,$ra
    subu	$t9,$t9,$ra
    andi	$t9,$t9,0x3
    # Line 1411
    lwc1	$f2,4($v0)
    # Line 1413
    xor	$t9,$t9,$ra
    # Line 1411
    lwc1	$f25,0($v0)
    # Line 1413
    addiu	$t8,$a0,12
    subu	$t9,$t9,$ra
    # Line 1411
    lwc1	$f23,0($a0)
    # Line 1415
    addu	$ra,$t8,$a5
    xor	$t9,$a6,$t9
    # Line 1413
    lwc1	$f31,8($a0)
    # Line 1410
    addiu	$t2,$a3,1
    movz	$t8,$ra,$t9
    # Line 1412
    lwc1	$f27,4($a0)
    # Line 1413
    sra	$t9,$t2,0x1f
    # Line 1411
    madd.s	$f0,$f0,$f23,$f25
    # Line 1413
    lwc1	$f29,8($t8)
    xor	$t2,$t2,$t9
    # Line 1410
    addiu	$v0,$v0,8
    # Line 1413
    madd.s	$f22,$f22,$f31,$f25
    # Line 1412
    lwc1	$f21,4($t8)
    # Line 1413
    subu	$t2,$t2,$t9
    # Line 1410
    addiu	$a3,$a3,2
    # Line 1412
    madd.s	$f20,$f20,$f25,$f27
    # Line 1411
    lwc1	$f1,0($t8)
    # Line 1413
    andi	$t2,$t2,0x3
    addiu	$a0,$t8,12
    madd.s	$f22,$f22,$f29,$f2
    xor	$t2,$t2,$t9
    # Line 1415
    addu	$t8,$a0,$a4
    # Line 1412
    madd.s	$f20,$f20,$f2,$f21
    # Line 1413
    subu	$t2,$t2,$t9
    # Line 1411
    madd.s	$f0,$f0,$f1,$f2
    xor	$t2,$a6,$t2
    # Line 1410
    bne	$a3,$t1,.L0da18940
    movz	$a0,$t8,$t2
    # Line 1815
    li	$ra,8448
    bne	$s8,$ra,.L0da18208
    mov.s	$f24,$f0
    nop
    nop
    nop
.L0da189f0:
    # Line 1826
    lwc1	$f2,8($s7)
    # Line 1825
    lwc1	$f1,4($s7)
    # Line 1824
    lwc1	$f0,0($s7)
    # Line 1826
    mul.s	$f2,$f2,$f22
    swc1	$f2,8($s7)
    # Line 1825
    mul.s	$f1,$f1,$f20
    swc1	$f1,4($s7)
    # Line 1824
    mul.s	$f0,$f0,$f24
    # Line 1826
    b	.L0da1827c
    # Line 1824
    swc1	$f0,0($s7)
.L0da18a18:
    # Line 1302
    # lw $t9, -22764($gp) # &floor
    ldc1	$f22,488($sp)
    jal	floor
    cvt.d.s	$f12,$f0
    trunc.w.d	$f3,$f0
    ld	$v0,400($sp)
    mfc1	$at,$f3
    and	$at,$s2,$at
    sw	$at,4($v0)
.L0da18a3c:
    # Line 1298
    addiu	$s0,$s0,1
    # Line 1293
    mtc1	$s0,$f9
    cvt.s.w	$f9,$f9
    add.s	$f0,$f9,$f22
    c.lt.s $f0,$f26
    bc1f .L0da18a90
    # Line 1302
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 1300
    ld	$v0,368($sp)
    daddu	$v0,$s0,$v0
    dmtc1	$v0,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a0,400($sp)
    mfc1	$v1,$f13
    and	$v1,$s2,$v1
    b	.L0da18aac
    sw	$v1,8($a0)
.L0da18a90:
    # Line 1302
    jalr	$t9
    cvt.d.s	$f12,$f0
    trunc.w.d	$f14,$f0
    ld	$a1,400($sp)
    mfc1	$a0,$f14
    and	$a0,$s2,$a0
    sw	$a0,8($a1)
.L0da18aac:
    # Line 1298
    addiu	$s0,$s0,1
    # Line 1293
    mtc1	$s0,$f9
    cvt.s.w	$f9,$f9
    add.s	$f0,$f9,$f22
    c.lt.s $f0,$f26
    bc1f .L0da18afc
    # Line 1300
    ld	$a1,368($sp)
    daddu	$a1,$s0,$a1
    dmtc1	$a1,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a3,400($sp)
    mfc1	$a2,$f13
    and	$a2,$s2,$a2
    b	.L0da18b1c
    sw	$a2,12($a3)
.L0da18afc:
    # Line 1302
    # lw $t9, -22764($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f0
    trunc.w.d	$f14,$f0
    ld	$a4,400($sp)
    mfc1	$a3,$f14
    and	$a3,$s2,$a3
    sw	$a3,12($a4)
.L0da18b1c:
    # Line 1298
    addiu	$s0,$s0,1
    # Line 1293
    mtc1	$s0,$f9
    cvt.s.w	$f9,$f9
    add.s	$f0,$f9,$f22
    c.lt.s $f0,$f26
    bc1f .L0da18b70
    # Line 1302
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 1300
    ld	$a4,368($sp)
    daddu	$a4,$s0,$a4
    dmtc1	$a4,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a6,400($sp)
    mfc1	$a5,$f13
    and	$a5,$s2,$a5
    b	.L0da18b8c
    sw	$a5,16($a6)
.L0da18b70:
    # Line 1302
    jalr	$t9
    cvt.d.s	$f12,$f0
    trunc.w.d	$f14,$f0
    ld	$a7,400($sp)
    mfc1	$a6,$f14
    and	$a6,$s2,$a6
    sw	$a6,16($a7)
.L0da18b8c:
    ldc1	$f6,184($sp)
    # Line 1298
    move	$s2,$zero
    li	$a7,1
    b	.L0da18704
    sd	$a7,360($sp)
.L0da18ba0:
    # Line 1348
    # lw $t9, -22764($gp) # &floor
    mov.d	$f20,$f0
    ldc1	$f22,472($sp)
    jal	floor
    cvt.d.s	$f12,$f6
    trunc.w.d	$f15,$f0
    ld	$t0,408($sp)
    mfc1	$t1,$f15
    and	$t0,$t0,$t1
    sw	$t0,4($s4)
.L0da18bc8:
    # Line 1344
    addiu	$s0,$s0,1
    # Line 1339
    mtc1	$s0,$f9
    cvt.s.w	$f9,$f9
    add.s	$f6,$f9,$f22
    c.lt.s $f6,$f26
    bc1f .L0da18c20
    # Line 1348
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 1346
    ld	$t2,352($sp)
    lw	$t2,24($t2)
    daddu	$t2,$s0,$t2
    dmtc1	$t2,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$t3,408($sp)
    mfc1	$t8,$f13
    and	$t3,$t3,$t8
    b	.L0da18c3c
    sw	$t3,8($s4)
.L0da18c20:
    # Line 1348
    jalr	$t9
    cvt.d.s	$f12,$f6
    trunc.w.d	$f14,$f0
    ld	$t9,408($sp)
    mfc1	$ra,$f14
    and	$t9,$t9,$ra
    sw	$t9,8($s4)
.L0da18c3c:
    # Line 1344
    addiu	$s0,$s0,1
    # Line 1339
    mtc1	$s0,$f9
    cvt.s.w	$f9,$f9
    add.s	$f6,$f9,$f22
    c.lt.s $f6,$f26
    bc1f .L0da18c94
    # Line 1348
    nop	# was lw $t9, -22764($gp) # &floor
    # Line 1346
    ld	$at,352($sp)
    lw	$at,24($at)
    daddu	$at,$s0,$at
    dmtc1	$at,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$v0,408($sp)
    mfc1	$v1,$f13
    and	$v0,$v0,$v1
    b	.L0da18cb0
    sw	$v0,12($s4)
.L0da18c94:
    # Line 1348
    jalr	$t9
    cvt.d.s	$f12,$f6
    trunc.w.d	$f14,$f0
    ld	$a0,408($sp)
    mfc1	$a1,$f14
    and	$a0,$a0,$a1
    sw	$a0,12($s4)
.L0da18cb0:
    # Line 1344
    addiu	$s0,$s0,1
    # Line 1339
    mtc1	$s0,$f9
    cvt.s.w	$f9,$f9
    add.s	$f6,$f9,$f22
    c.lt.s $f6,$f26
    bc1f .L0da18d04
    # Line 1346
    ld	$a2,352($sp)
    lw	$a2,24($a2)
    daddu	$a2,$s0,$a2
    dmtc1	$a2,$f12
    cvt.s.l	$f12,$f12
    # lw $t9, -22764($gp) # &floor
    add.s	$f12,$f12,$f22
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    ld	$a3,408($sp)
    mfc1	$a4,$f13
    and	$a3,$a3,$a4
    b	.L0da18d24
    sw	$a3,16($s4)
.L0da18d04:
    # Line 1348
    # lw $t9, -22764($gp) # &floor
    jal	floor
    cvt.d.s	$f12,$f6
    trunc.w.d	$f14,$f0
    ld	$a5,408($sp)
    mfc1	$a6,$f14
    and	$a5,$a5,$a6
    sw	$a5,16($s4)
.L0da18d24:
    # Line 1351
    ld	$s4,360($sp)
    sd	$zero,240($sp)
    b	.L0da17fac
    addiu	$s4,$s4,1
.L0da18d34:
    # Line 1307
    dmtc1	$zero,$f15
    add.d	$f10,$f8,$f10
    c.lt.d	$f10,$f15
    bc1f	.L0da192d4
    li	$s2,12
    sdc1	$f8,232($sp)
    sdc1	$f6,512($sp)
    sdc1	$f5,520($sp)
    sd	$a4,448($sp)
    sd	$a0,440($sp)
    li	$s2,14
    b	.L0da1868c
    sd	$v0,408($sp)
.L0da18d68:
    # Line 1353
    ldc1	$f8,_lit8_3ff0000000000000
    dmtc1	$zero,$f11
    add.d	$f8,$f0,$f8
    c.lt.d $f8,$f11
    mov.d	$f20,$f0
    li	$at,8
    bc1f .L0da192fc
    li	$a7,12
    li	$a7,14
    sd	$a7,240($sp)
    sdc1	$f0,504($sp)
    b	.L0da17f34
    mov.d	$f20,$f0
.L0da18d9c:
    # Line 1573
    sll	$s0,$a0,0x2
    subu	$s0,$s0,$a0
    sll	$s0,$s0,0x3
    sdc1	$f10,176($sp)
    addu	$s0,$s0,$a0
    sdc1	$f9,168($sp)
    sll	$s0,$s0,0x2
    addu	$t8,$s0,$s4
    sd	$t8,392($sp)
    # Line 1575
    lw	$ra,0($t8)
    # Line 1577
    lw	$t9,24($t8)
    # Line 1576
    lw	$s2,20($t8)
    # Line 1579
    lwc1	$f7,32($t8)
    # Line 1574
    lw	$t8,44($t8)
    # Line 1579
    li	$t1,10497
    # Line 1575
    sd	$ra,448($sp)
    # Line 1574
    sd	$t8,440($sp)
    # Line 1577
    addiu	$t9,$t9,-1
    sd	$t9,408($sp)
    # Line 1576
    addiu	$s2,$s2,-1
    # Line 1579
    beq	$t1,$a3,.L0da198ec
    mul.s	$f0,$f22,$f7
    # Line 1584
    c.lt.s $f0,$f26
    bc1f .L0da18f24
    # Line 1588
    mov.s	$f20,$f0
    # Line 1584
    mtc1	$zero,$f20
    sdc1	$f6,512($sp)
    b	.L0da18f34
    sdc1	$f5,520($sp)
.L0da18e10:
    # Line 1410
    mtc1	$zero,$f20
    mtc1	$zero,$f22
    move	$s0,$zero
    addiu	$s4,$sp,0
    ld	$a1,440($sp)
.L0da18e24:
    addiu	$a5,$sp,16
    sll	$v0,$s0,0x4
    lw	$a0,0($s4)
    # Line 1423
    addiu	$s0,$s0,1
    addiu	$s4,$s4,4
    # Line 1426
    ld	$v1,448($sp)
    # Line 1410
    addu	$v0,$v0,$a7
    sllv	$a0,$a0,$a1
    # Line 1426
    lw	$a6,4($a5)
    lw	$a4,16($sp)
    addu	$a6,$a6,$a0
    lwc1	$f27,12($v0)
    sll	$a2,$a6,0x2
    addu	$a4,$a4,$a0
    lwc1	$f31,8($v0)
    subu	$a2,$a2,$a6
    sll	$a3,$a4,0x2
    sll	$a2,$a2,0x2
    subu	$a3,$a3,$a4
    lw	$a4,8($a5)
    lw	$a6,12($a5)
    addu	$a2,$v1,$a2
    sll	$a3,$a3,0x2
    lwc1	$f1,0($v0)
    addu	$a4,$a4,$a0
    addu	$a3,$v1,$a3
    addu	$a6,$a6,$a0
    # Line 1428
    lwc1	$f25,8($a3)
    # Line 1426
    sll	$a1,$a4,0x2
    lwc1	$f0,4($v0)
    subu	$a1,$a1,$a4
    sll	$a4,$a6,0x2
    # Line 1428
    lwc1	$f23,8($a2)
    # Line 1426
    sll	$a1,$a1,0x2
    # Line 1427
    lwc1	$f2,4($a3)
    # Line 1426
    subu	$a4,$a4,$a6
    # Line 1428
    madd.s	$f22,$f22,$f1,$f25
    # Line 1426
    addu	$a1,$v1,$a1
    sll	$a4,$a4,0x2
    # Line 1428
    lwc1	$f25,8($a1)
    # Line 1426
    lwc1	$f29,0($a3)
    addu	$v1,$v1,$a4
    # Line 1428
    madd.s	$f22,$f22,$f0,$f23
    # Line 1427
    madd.s	$f20,$f20,$f1,$f2
    # Line 1428
    lwc1	$f23,8($v1)
    # Line 1427
    lwc1	$f21,4($a2)
    # Line 1428
    madd.s	$f22,$f22,$f31,$f25
    # Line 1426
    madd.s	$f24,$f24,$f29,$f1
    lwc1	$f25,0($a2)
    # Line 1428
    madd.s	$f22,$f22,$f27,$f23
    # Line 1427
    lwc1	$f23,4($a1)
    # Line 1426
    lwc1	$f29,0($a1)
    # Line 1427
    madd.s	$f20,$f20,$f0,$f21
    lwc1	$f21,4($v1)
    # Line 1426
    madd.s	$f24,$f24,$f25,$f0
    lwc1	$f25,0($v1)
    # Line 1427
    madd.s	$f20,$f20,$f31,$f23
    # Line 1426
    madd.s	$f24,$f24,$f29,$f31
    # Line 1427
    madd.s	$f20,$f20,$f27,$f21
    # Line 1426
    madd.s	$f24,$f24,$f25,$f27
    # Line 1423
    bne	$s0,$t0,.L0da18e24
    # Line 1410
    ld	$a1,440($sp)
    b	.L0da18204
    # Line 1815
    li	$t2,8448
.L0da18f24:
    # Line 1588
    c.lt.s $f7,$f0
    sdc1	$f6,512($sp)
    sdc1	$f5,520($sp)
    movt.s	$f20,$f7,$fcc3
.L0da18f34:
    # Line 1590
    # lw $t9, -28804($gp) # &__glFloor
    # Line 1589
    sub.s	$f20,$f20,$f24
    # Line 1590
    jal	__glFloor
    mov.s	$f12,$f20
    sd	$v0,416($sp)
    # Line 1591
    addiu	$a5,$v0,1
    sd	$a5,424($sp)
    sd	$zero,360($sp)
.L0da18f54:
    # Line 1594
    ldc1	$f0,184($sp)
    ld	$t1,392($sp)
    lw	$t0,8($s1)
    lwc1	$f5,36($t1)
    li	$a7,10497
    # Line 1600
    mtc1	$zero,$f1
    # Line 1594
    beq	$a7,$t0,.L0da19924
    mul.s	$f0,$f0,$f5
    # Line 1600
    c.lt.s $f0,$f26
    bc1f .L0da18f88
    # Line 1603
    mov.s	$f2,$f0
    # Line 1600
    b	.L0da18f94
    sdc1	$f1,224($sp)
.L0da18f88:
    # Line 1603
    c.lt.s $f5,$f0
    movt.s	$f2,$f5,$fcc5
    sdc1	$f2,224($sp)
.L0da18f94:
    # Line 1604
    ldc1	$f12,224($sp)
    # Line 1605
    # lw $t9, -28804($gp) # &__glFloor
    # Line 1604
    sub.s	$f12,$f12,$f24
    # Line 1605
    jal	__glFloor
    # Line 1604
    sdc1	$f12,224($sp)
    # Line 1605
    move	$s4,$v0
    # Line 1606
    addiu	$t2,$v0,1
    sd	$t2,432($sp)
.L0da18fb4:
    # Line 1609
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f20
    # Line 1610
    # lw $t9, -28808($gp) # &__glFrac
    # Line 1609
    mov.s	$f20,$f0
    # Line 1610
    jal	__glFrac
    ldc1	$f12,224($sp)
    # Line 1612
    ldc1	$f9,176($sp)
    # Line 1611
    lwc1	$f10,3544($s5)
    # Line 1612
    ld	$t3,360($sp)
    mul.s	$f7,$f20,$f9
    # Line 1643
    ld	$a4,408($sp)
    # Line 1611
    sub.s	$f11,$f10,$f20
    # Line 1612
    li	$t8,2
    # Line 1643
    ld	$t1,416($sp)
    # Line 1612
    sub.s	$f10,$f10,$f0
    mul.s	$f6,$f0,$f7
    # Line 1643
    nor	$a6,$s2,$zero
    # Line 1658
    ld	$t2,424($sp)
    # Line 1643
    nor	$a4,$a4,$zero
    # Line 1612
    mul.s	$f9,$f9,$f11
    # Line 1643
    and	$t1,$a6,$t1
    and	$a5,$a4,$s4
    # Line 1612
    mul.s	$f7,$f7,$f10
    # Line 1658
    and	$t2,$a6,$t2
    # Line 1643
    or	$t9,$t1,$a5
    # Line 1612
    mul.s	$f8,$f0,$f9
    # Line 1658
    or	$a7,$t2,$a5
    # Line 1612
    beq	$t3,$t8,.L0da194ec
    mul.s	$f9,$f9,$f10
    # Line 1643
    beqz	$t9,.L0da19694
    sdc1	$f22,496($sp)
    # Line 1652
    lwc1	$f22,164($s1)
    # Line 1651
    lwc1	$f20,160($s1)
    # Line 1650
    lwc1	$f24,156($s1)
    # Line 1652
    mul.s	$f22,$f22,$f9
    # Line 1651
    mul.s	$f20,$f20,$f9
    ldc1	$f5,496($sp)
    # Line 1650
    mul.s	$f24,$f24,$f9
.L0da19050:
    # Line 1658
    beqz	$a7,.L0da196d8
    # Line 1667
    ld	$a5,440($sp)
    # Line 1663
    lwc1	$f27,164($s1)
    # Line 1662
    lwc1	$f25,160($s1)
    # Line 1661
    lwc1	$f23,156($s1)
    # Line 1663
    madd.s	$f22,$f22,$f27,$f7
    # Line 1662
    madd.s	$f20,$f20,$f25,$f7
    # Line 1661
    madd.s	$f24,$f24,$f23,$f7
.L0da19070:
    # Line 1669
    ld	$a5,432($sp)
    and	$a5,$a4,$a5
    or	$t3,$t1,$a5
    beqz	$t3,.L0da19714
    # Line 1678
    ld	$t1,440($sp)
    # Line 1674
    lwc1	$f0,164($s1)
    # Line 1673
    lwc1	$f31,160($s1)
    # Line 1672
    lwc1	$f29,156($s1)
    # Line 1674
    madd.s	$f22,$f22,$f0,$f8
    # Line 1673
    madd.s	$f20,$f20,$f31,$f8
    # Line 1672
    madd.s	$f24,$f24,$f29,$f8
.L0da1909c:
    # Line 1680
    or	$a6,$t2,$a5
    beqz	$a6,.L0da19754
    # Line 1689
    ld	$t9,440($sp)
    # Line 1685
    lwc1	$f3,164($s1)
    # Line 1684
    lwc1	$f2,160($s1)
    # Line 1683
    lwc1	$f1,156($s1)
    # Line 1685
    madd.s	$f22,$f22,$f3,$f6
    # Line 1684
    madd.s	$f20,$f20,$f2,$f6
    # Line 1683
    madd.s	$f24,$f24,$f1,$f6
.L0da190c0:
    # Line 1697
    lw	$t8,228($s1)
    # Line 1703
    lw	$t0,4($s1)
    # Line 1697
    addu	$t8,$t8,$s0
    addiu	$ra,$t8,100
    sd	$ra,392($sp)
    # Line 1699
    lw	$at,100($t8)
    # Line 1701
    lw	$t9,124($t8)
    # Line 1700
    lw	$s2,120($t8)
    # Line 1703
    lwc1	$f7,132($t8)
    # Line 1698
    lw	$t8,144($t8)
    # Line 1703
    li	$a7,10497
    # Line 1699
    sd	$at,448($sp)
    # Line 1708
    mtc1	$zero,$f4
    # Line 1698
    sd	$t8,440($sp)
    # Line 1701
    addiu	$t9,$t9,-1
    sd	$t9,408($sp)
    # Line 1700
    addiu	$s2,$s2,-1
    # Line 1703
    beq	$a7,$t0,.L0da19964
    mul.s	$f0,$f5,$f7
    # Line 1708
    c.lt.s $f0,$f26
    bc1f .L0da19120
    # Line 1712
    mov.s	$f5,$f0
    # Line 1708
    b	.L0da1912c
    sdc1	$f4,216($sp)
.L0da19120:
    # Line 1712
    c.lt.s $f7,$f0
    movt.s	$f5,$f7,$fcc7
    sdc1	$f5,216($sp)
.L0da1912c:
    # Line 1713
    ldc1	$f6,200($sp)
    ldc1	$f12,216($sp)
    # Line 1714
    # lw $t9, -28804($gp) # &__glFloor
    # Line 1713
    sub.s	$f12,$f12,$f6
    # Line 1714
    jal	__glFloor
    # Line 1713
    sdc1	$f12,216($sp)
    # Line 1714
    sd	$v0,416($sp)
    # Line 1715
    addiu	$t9,$v0,1
    sd	$t9,424($sp)
    sd	$zero,360($sp)
.L0da19154:
    # Line 1718
    ldc1	$f0,184($sp)
    ld	$v1,392($sp)
    lw	$v0,8($s1)
    lwc1	$f5,36($v1)
    li	$at,10497
    # Line 1724
    mtc1	$zero,$f1
    # Line 1718
    beq	$at,$v0,.L0da1999c
    mul.s	$f0,$f0,$f5
    # Line 1724
    c.lt.s	$f0,$f26
    bc1f	.L0da19188
    # Line 1727
    mov.s	$f2,$f0
    # Line 1724
    b	.L0da19194
    sdc1	$f1,224($sp)
.L0da19188:
    # Line 1727
    c.lt.s $f5,$f0
    movt.s	$f2,$f5,$fcc1
    sdc1	$f2,224($sp)
.L0da19194:
    # Line 1728
    ldc1	$f3,200($sp)
    ldc1	$f12,224($sp)
    # Line 1729
    # lw $t9, -28804($gp) # &__glFloor
    # Line 1728
    sub.s	$f12,$f12,$f3
    # Line 1729
    jal	__glFloor
    # Line 1728
    sdc1	$f12,224($sp)
    ldc1	$f0,216($sp)
    # Line 1729
    move	$s4,$v0
    # Line 1730
    addiu	$a0,$v0,1
    sd	$a0,432($sp)
.L0da191bc:
    # Line 1733
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f0
    # Line 1734
    # lw $t9, -28808($gp) # &__glFrac
    # Line 1733
    sdc1	$f0,208($sp)
    # Line 1734
    jal	__glFrac
    ldc1	$f12,224($sp)
    # Line 1736
    ldc1	$f12,208($sp)
    ldc1	$f8,168($sp)
    # Line 1735
    lwc1	$f11,3544($s5)
    # Line 1736
    ld	$a1,360($sp)
    mul.s	$f9,$f8,$f12
    li	$t3,-1
    # Line 1767
    ld	$a4,408($sp)
    # Line 1735
    sub.s	$f12,$f11,$f12
    # Line 1736
    li	$a2,2
    # Line 1767
    ld	$t1,416($sp)
    # Line 1736
    sub.s	$f11,$f11,$f0
    mul.s	$f10,$f0,$f9
    # Line 1767
    nor	$a6,$s2,$zero
    # Line 1782
    ld	$t2,424($sp)
    # Line 1767
    nor	$a4,$a4,$zero
    # Line 1736
    mul.s	$f8,$f8,$f12
    # Line 1767
    and	$t1,$a6,$t1
    and	$a5,$a4,$s4
    # Line 1736
    mul.s	$f9,$f9,$f11
    ldc1	$f5,520($sp)
    # Line 1782
    and	$t2,$a6,$t2
    # Line 1767
    or	$a3,$t1,$a5
    # Line 1736
    mul.s	$f7,$f0,$f8
    ldc1	$f6,512($sp)
    # Line 1782
    or	$t8,$t2,$a5
    # Line 1736
    beq	$a1,$a2,.L0da195c4
    mul.s	$f8,$f8,$f11
    # Line 1767
    beqz	$a3,.L0da19794
    # Line 1793
    ld	$a5,432($sp)
    # Line 1776
    lwc1	$f15,164($s1)
    # Line 1775
    lwc1	$f14,160($s1)
    # Line 1774
    lwc1	$f13,156($s1)
    # Line 1776
    madd.s	$f22,$f22,$f15,$f8
    # Line 1775
    madd.s	$f20,$f20,$f14,$f8
    # Line 1774
    madd.s	$f24,$f24,$f13,$f8
.L0da19264:
    # Line 1782
    beqz	$t8,.L0da197d4
    # Line 1791
    ld	$a1,440($sp)
    # Line 1787
    lwc1	$f18,164($s1)
    # Line 1786
    lwc1	$f17,160($s1)
    # Line 1785
    lwc1	$f16,156($s1)
    # Line 1787
    madd.s	$f22,$f22,$f18,$f9
    # Line 1786
    madd.s	$f20,$f20,$f17,$f9
    # Line 1785
    madd.s	$f24,$f24,$f16,$f9
.L0da19284:
    # Line 1793
    and	$a5,$a4,$a5
    or	$t8,$t1,$a5
    beqz	$t8,.L0da19810
    # Line 1802
    ld	$a6,440($sp)
    # Line 1798
    lwc1	$f23,164($s1)
    # Line 1797
    lwc1	$f21,160($s1)
    # Line 1796
    lwc1	$f19,156($s1)
    # Line 1798
    madd.s	$f22,$f22,$f23,$f7
    # Line 1797
    madd.s	$f20,$f20,$f21,$f7
    # Line 1796
    madd.s	$f24,$f24,$f19,$f7
.L0da192ac:
    # Line 1804
    or	$a6,$t2,$a5
    beqz	$a6,.L0da19850
    # Line 1813
    ld	$t9,440($sp)
    # Line 1809
    lwc1	$f29,164($s1)
    # Line 1808
    lwc1	$f27,160($s1)
    # Line 1807
    lwc1	$f25,156($s1)
    # Line 1809
    madd.s	$f22,$f22,$f29,$f10
    # Line 1808
    madd.s	$f20,$f20,$f27,$f10
    # Line 1809
    b	.L0da18200
    # Line 1807
    madd.s	$f24,$f24,$f25,$f10
.L0da192d4:
    # Line 1307
    c.lt.s $f7,$f26
    bc1f .L0da1944c
    nop
    sdc1	$f8,232($sp)
    sdc1	$f6,512($sp)
    sdc1	$f5,520($sp)
    sd	$a4,448($sp)
    sd	$a0,440($sp)
    b	.L0da1868c
    sd	$v0,408($sp)
.L0da192fc:
    # Line 1353
    c.lt.s $f5,$f26
    bc1f .L0da19474
    nop
    sd	$a7,240($sp)
    b	.L0da17f34
    sdc1	$f0,504($sp)
.L0da19314:
    # Line 1528
    ld	$t2,440($sp)
    sllv	$t2,$s4,$t2
    ld	$t8,448($sp)
    addu	$t2,$v0,$t2
    sll	$t9,$t2,0x3
    sll	$t2,$t2,0x2
    addu	$t8,$t8,$t9
    addu	$t2,$t2,$t8
    # Line 1530
    lwc1	$f22,8($t2)
    # Line 1529
    lwc1	$f20,4($t2)
    # Line 1528
    lwc1	$f24,0($t2)
    # Line 1530
    mul.s	$f22,$f22,$f8
    # Line 1529
    mul.s	$f20,$f20,$f8
    b	.L0da1859c
    # Line 1528
    mul.s	$f24,$f24,$f8
.L0da19350:
    # Line 1539
    ld	$t8,440($sp)
    sllv	$t8,$s4,$t8
    ld	$t9,448($sp)
    addu	$t8,$a0,$t8
    sll	$ra,$t8,0x3
    sll	$t8,$t8,0x2
    addu	$t9,$t9,$ra
    addu	$t8,$t8,$t9
    # Line 1541
    lwc1	$f27,8($t8)
    # Line 1540
    lwc1	$f25,4($t8)
    # Line 1539
    lwc1	$f23,0($t8)
    # Line 1541
    madd.s	$f22,$f22,$f27,$f8
    # Line 1540
    madd.s	$f20,$f20,$f25,$f8
    b	.L0da185c4
    # Line 1539
    madd.s	$f24,$f24,$f23,$f8
.L0da1938c:
    # Line 1550
    ld	$t9,440($sp)
    sllv	$t9,$a3,$t9
    ld	$ra,448($sp)
    addu	$t9,$v0,$t9
    sll	$at,$t9,0x3
    sll	$t9,$t9,0x2
    addu	$ra,$ra,$at
    addu	$t9,$t9,$ra
    # Line 1552
    lwc1	$f1,8($t9)
    # Line 1551
    lwc1	$f31,4($t9)
    # Line 1550
    lwc1	$f29,0($t9)
    # Line 1552
    madd.s	$f22,$f22,$f1,$f8
    # Line 1551
    madd.s	$f20,$f20,$f31,$f8
    b	.L0da185ec
    # Line 1550
    madd.s	$f24,$f24,$f29,$f8
.L0da193c8:
    # Line 1561
    ld	$ra,440($sp)
    sllv	$ra,$a3,$ra
    ld	$at,448($sp)
    addu	$ra,$a0,$ra
    sll	$v0,$ra,0x3
    sll	$ra,$ra,0x2
    addu	$at,$at,$v0
    addu	$ra,$ra,$at
    # Line 1563
    lwc1	$f4,8($ra)
    # Line 1562
    lwc1	$f3,4($ra)
    # Line 1561
    lwc1	$f2,0($ra)
    # Line 1563
    madd.s	$f22,$f22,$f4,$f8
    # Line 1562
    madd.s	$f20,$f20,$f3,$f8
    b	.L0da18200
    # Line 1561
    madd.s	$f24,$f24,$f2,$f8
.L0da19404:
    # Line 1307
    cvt.d.s	$f10,$f20
    c.lt.d $f10,$f0
    bc1t .L0da18660
    # Line 1322
    move	$s2,$zero
    sdc1	$f8,232($sp)
    sdc1	$f6,512($sp)
    sdc1	$f5,520($sp)
    sd	$a4,448($sp)
    sd	$a0,440($sp)
    b	.L0da1868c
    sd	$v0,408($sp)
.L0da19430:
    # Line 1353
    cvt.d.s	$f11,$f20
    c.lt.d $f11,$f6
    bc1t .L0da17f18
    mov.d	$f20,$f0
    # Line 1368
    sd	$zero,240($sp)
    b	.L0da17f34
    sdc1	$f0,504($sp)
.L0da1944c:
    # Line 1307
    beqz	$a3,.L0da19890
    nop
    sdc1	$f8,232($sp)
    sdc1	$f6,512($sp)
    sdc1	$f5,520($sp)
    sd	$a4,448($sp)
    sd	$a0,440($sp)
    li	$s2,8
    b	.L0da1868c
    sd	$v0,408($sp)
.L0da19474:
    # Line 1353
    beqz	$a0,.L0da198c0
    nop
    sd	$at,240($sp)
    sdc1	$f0,504($sp)
    b	.L0da17f34
    mov.d	$f20,$f0
.L0da1948c:
    # Line 1483
    msub.s	$f20,$f24,$f22,$f7
    # Line 1484
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f6,512($sp)
    sdc1	$f5,520($sp)
    jal	__glFloor
    mov.s	$f12,$f20
    ld	$s4,392($sp)
    and	$v0,$v0,$s2
    sd	$v0,416($sp)
    # Line 1485
    addiu	$v0,$v0,1
    and	$v0,$s2,$v0
    b	.L0da184d0
    sd	$v0,424($sp)
.L0da194c0:
    # Line 1497
    ldc1	$f22,184($sp)
    msub.s	$f22,$f24,$f22,$f5
    # Line 1498
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f22
    and	$a0,$v0,$s0
    move	$s4,$a0
    # Line 1499
    addiu	$a0,$a0,1
    and	$a0,$s0,$a0
    b	.L0da18524
    sd	$a0,432($sp)
.L0da194ec:
    # Line 1641
    ld	$t2,440($sp)
    ld	$t0,424($sp)
    ld	$a7,416($sp)
    sllv	$t1,$s4,$t2
    ld	$a6,448($sp)
    addu	$a5,$t1,$t0
    addu	$t1,$t1,$a7
    sll	$a4,$a5,0x3
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a6
    sll	$a3,$t1,0x3
    addu	$a4,$a4,$a5
    ld	$a5,432($sp)
    sll	$t1,$t1,0x2
    addu	$a3,$a3,$a6
    sllv	$a5,$a5,$t2
    sdc1	$f22,496($sp)
    addu	$a3,$a3,$t1
    addu	$a7,$a5,$a7
    # Line 1643
    lwc1	$f22,8($a4)
    # Line 1641
    addu	$a5,$a5,$t0
    sll	$a2,$a7,0x3
    # Line 1643
    lwc1	$f23,8($a3)
    # Line 1641
    sll	$a7,$a7,0x2
    addu	$a2,$a2,$a6
    # Line 1642
    lwc1	$f20,4($a4)
    # Line 1641
    sll	$a1,$a5,0x3
    addu	$a2,$a2,$a7
    # Line 1643
    mul.s	$f22,$f22,$f7
    # Line 1641
    sll	$a5,$a5,0x2
    addu	$a1,$a1,$a6
    # Line 1643
    lwc1	$f24,8($a2)
    # Line 1642
    lwc1	$f21,4($a3)
    # Line 1643
    madd.s	$f22,$f22,$f23,$f9
    # Line 1641
    addu	$a1,$a1,$a5
    # Line 1642
    mul.s	$f20,$f20,$f7
    # Line 1643
    lwc1	$f23,8($a1)
    madd.s	$f22,$f22,$f24,$f8
    # Line 1641
    lwc1	$f24,0($a4)
    lwc1	$f25,0($a3)
    # Line 1642
    madd.s	$f20,$f20,$f21,$f9
    # Line 1643
    madd.s	$f22,$f22,$f23,$f6
    # Line 1642
    lwc1	$f23,4($a2)
    # Line 1641
    lwc1	$f27,0($a2)
    mul.s	$f24,$f24,$f7
    # Line 1642
    lwc1	$f21,4($a1)
    # Line 1641
    madd.s	$f24,$f24,$f25,$f9
    lwc1	$f25,0($a1)
    # Line 1642
    madd.s	$f20,$f20,$f23,$f8
    # Line 1641
    madd.s	$f24,$f24,$f27,$f8
    # Line 1642
    madd.s	$f20,$f20,$f21,$f6
    ldc1	$f5,496($sp)
    # Line 1643
    b	.L0da190c0
    # Line 1641
    madd.s	$f24,$f24,$f25,$f6
.L0da195c4:
    # Line 1747
    ld	$ra,440($sp)
    # Line 1759
    ld	$t9,432($sp)
    # Line 1753
    ld	$at,424($sp)
    # Line 1747
    sllv	$v1,$s4,$ra
    # Line 1759
    sllv	$t9,$t9,$ra
    # Line 1747
    ld	$ra,416($sp)
    # Line 1753
    addu	$v0,$v1,$at
    # Line 1747
    ld	$a6,448($sp)
    addu	$v1,$v1,$ra
    # Line 1759
    addu	$ra,$t9,$ra
    # Line 1765
    addu	$t9,$t9,$at
    # Line 1747
    sll	$t8,$v1,0x3
    sll	$v1,$v1,0x2
    addu	$t8,$a6,$t8
    # Line 1753
    sll	$t2,$v0,0x3
    # Line 1747
    addu	$t8,$t8,$v1
    # Line 1753
    sll	$v0,$v0,0x2
    addu	$t2,$a6,$t2
    # Line 1749
    lwc1	$f25,8($t8)
    # Line 1759
    sll	$t1,$ra,0x3
    # Line 1753
    addu	$t2,$t2,$v0
    # Line 1759
    sll	$ra,$ra,0x2
    addu	$t1,$a6,$t1
    # Line 1755
    lwc1	$f23,8($t2)
    # Line 1748
    lwc1	$f29,4($t8)
    # Line 1759
    addu	$t1,$t1,$ra
    # Line 1765
    sll	$ra,$t9,0x3
    # Line 1749
    madd.s	$f22,$f22,$f25,$f8
    # Line 1765
    sll	$t9,$t9,0x2
    addu	$a6,$a6,$ra
    # Line 1761
    lwc1	$f25,8($t1)
    # Line 1747
    lwc1	$f27,0($t8)
    # Line 1765
    addu	$a6,$a6,$t9
    # Line 1755
    madd.s	$f22,$f22,$f23,$f9
    # Line 1748
    madd.s	$f20,$f20,$f29,$f8
    # Line 1767
    lwc1	$f23,8($a6)
    # Line 1754
    lwc1	$f21,4($t2)
    # Line 1761
    madd.s	$f22,$f22,$f25,$f7
    # Line 1747
    madd.s	$f24,$f24,$f27,$f8
    # Line 1753
    lwc1	$f25,0($t2)
    # Line 1767
    madd.s	$f22,$f22,$f23,$f10
    # Line 1760
    lwc1	$f23,4($t1)
    # Line 1759
    lwc1	$f27,0($t1)
    # Line 1754
    madd.s	$f20,$f20,$f21,$f9
    # Line 1766
    lwc1	$f21,4($a6)
    # Line 1753
    madd.s	$f24,$f24,$f25,$f9
    # Line 1765
    lwc1	$f25,0($a6)
    # Line 1760
    madd.s	$f20,$f20,$f23,$f7
    # Line 1759
    madd.s	$f24,$f24,$f27,$f7
    # Line 1766
    madd.s	$f20,$f20,$f21,$f10
    # Line 1767
    b	.L0da18200
    # Line 1765
    madd.s	$f24,$f24,$f25,$f10
.L0da19694:
    # Line 1656
    ld	$a1,440($sp)
    ld	$a0,416($sp)
    sllv	$a1,$s4,$a1
    ld	$v1,448($sp)
    addu	$a0,$a0,$a1
    sll	$a1,$a0,0x3
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a1
    addu	$v1,$v1,$a0
    # Line 1658
    lwc1	$f22,8($v1)
    # Line 1657
    lwc1	$f20,4($v1)
    # Line 1656
    lwc1	$f24,0($v1)
    # Line 1658
    mul.s	$f22,$f22,$f9
    # Line 1657
    mul.s	$f20,$f20,$f9
    ldc1	$f5,496($sp)
    b	.L0da19050
    # Line 1656
    mul.s	$f24,$f24,$f9
.L0da196d8:
    # Line 1667
    ld	$a3,424($sp)
    sllv	$a5,$s4,$a5
    ld	$a2,448($sp)
    addu	$a3,$a3,$a5
    sll	$a5,$a3,0x3
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a5
    addu	$a2,$a2,$a3
    # Line 1669
    lwc1	$f27,8($a2)
    # Line 1668
    lwc1	$f25,4($a2)
    # Line 1667
    lwc1	$f23,0($a2)
    # Line 1669
    madd.s	$f22,$f22,$f27,$f7
    # Line 1668
    madd.s	$f20,$f20,$f25,$f7
    b	.L0da19070
    # Line 1667
    madd.s	$f24,$f24,$f23,$f7
.L0da19714:
    # Line 1678
    ld	$t0,432($sp)
    ld	$a7,416($sp)
    sllv	$t0,$t0,$t1
    ld	$a6,448($sp)
    addu	$a7,$a7,$t0
    sll	$t0,$a7,0x3
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$t0
    addu	$a6,$a6,$a7
    # Line 1680
    lwc1	$f0,8($a6)
    # Line 1679
    lwc1	$f31,4($a6)
    # Line 1678
    lwc1	$f29,0($a6)
    # Line 1680
    madd.s	$f22,$f22,$f0,$f8
    # Line 1679
    madd.s	$f20,$f20,$f31,$f8
    b	.L0da1909c
    # Line 1678
    madd.s	$f24,$f24,$f29,$f8
.L0da19754:
    # Line 1689
    ld	$t8,432($sp)
    ld	$t3,424($sp)
    sllv	$t8,$t8,$t9
    ld	$t2,448($sp)
    addu	$t3,$t3,$t8
    sll	$t8,$t3,0x3
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t8
    addu	$t2,$t2,$t3
    # Line 1691
    lwc1	$f3,8($t2)
    # Line 1690
    lwc1	$f2,4($t2)
    # Line 1689
    lwc1	$f1,0($t2)
    # Line 1691
    madd.s	$f22,$f22,$f3,$f6
    # Line 1690
    madd.s	$f20,$f20,$f2,$f6
    b	.L0da190c0
    # Line 1689
    madd.s	$f24,$f24,$f1,$f6
.L0da19794:
    # Line 1780
    ld	$v0,440($sp)
    ld	$at,416($sp)
    sllv	$v0,$s4,$v0
    ld	$ra,448($sp)
    addu	$at,$at,$v0
    sll	$v0,$at,0x3
    sll	$at,$at,0x2
    addu	$ra,$ra,$v0
    addu	$ra,$ra,$at
    # Line 1782
    lwc1	$f12,8($ra)
    # Line 1781
    lwc1	$f11,4($ra)
    # Line 1780
    lwc1	$f4,0($ra)
    # Line 1782
    madd.s	$f22,$f22,$f12,$f8
    # Line 1781
    madd.s	$f20,$f20,$f11,$f8
    b	.L0da19264
    # Line 1780
    madd.s	$f24,$f24,$f4,$f8
.L0da197d4:
    # Line 1791
    ld	$a0,424($sp)
    sllv	$a1,$s4,$a1
    ld	$v1,448($sp)
    addu	$a0,$a0,$a1
    sll	$a1,$a0,0x3
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a1
    addu	$v1,$v1,$a0
    # Line 1793
    lwc1	$f15,8($v1)
    # Line 1792
    lwc1	$f14,4($v1)
    # Line 1791
    lwc1	$f13,0($v1)
    # Line 1793
    madd.s	$f22,$f22,$f15,$f9
    # Line 1792
    madd.s	$f20,$f20,$f14,$f9
    b	.L0da19284
    # Line 1791
    madd.s	$f24,$f24,$f13,$f9
.L0da19810:
    # Line 1802
    ld	$a4,432($sp)
    ld	$a3,416($sp)
    sllv	$a4,$a4,$a6
    ld	$a2,448($sp)
    addu	$a3,$a3,$a4
    sll	$a4,$a3,0x3
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a4
    addu	$a2,$a2,$a3
    # Line 1804
    lwc1	$f18,8($a2)
    # Line 1803
    lwc1	$f17,4($a2)
    # Line 1802
    lwc1	$f16,0($a2)
    # Line 1804
    madd.s	$f22,$f22,$f18,$f7
    # Line 1803
    madd.s	$f20,$f20,$f17,$f7
    b	.L0da192ac
    # Line 1802
    madd.s	$f24,$f24,$f16,$f7
.L0da19850:
    # Line 1813
    ld	$t8,432($sp)
    ld	$t2,424($sp)
    sllv	$t8,$t8,$t9
    ld	$t1,448($sp)
    addu	$t2,$t2,$t8
    sll	$t8,$t2,0x3
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t8
    addu	$t1,$t1,$t2
    # Line 1815
    lwc1	$f23,8($t1)
    # Line 1814
    lwc1	$f21,4($t1)
    # Line 1813
    lwc1	$f19,0($t1)
    # Line 1815
    madd.s	$f22,$f22,$f23,$f10
    # Line 1814
    madd.s	$f20,$f20,$f21,$f10
    b	.L0da18200
    # Line 1813
    madd.s	$f24,$f24,$f19,$f10
.L0da19890:
    # Line 1307
    cvt.d.s	$f11,$f20
    sdc1	$f8,232($sp)
    c.lt.d $f11,$f9
    sd	$a4,448($sp)
    sd	$a0,440($sp)
    li	$s2,3
    bc1f .L0da199e4
    sd	$v0,408($sp)
    sdc1	$f6,512($sp)
    li	$s2,15
    b	.L0da1868c
    sdc1	$f5,520($sp)
.L0da198c0:
    # Line 1353
    cvt.d.s	$f9,$f22
    c.lt.d $f9,$f7
    mov.d	$f20,$f0
    li	$ra,15
    li	$t2,3
    # Line 1368
    li	$t3,1
    # Line 1353
    li	$t1,7
    bc1f .L0da199fc
    sdc1	$f0,504($sp)
    b	.L0da17f34
    sd	$ra,240($sp)
.L0da198ec:
    # Line 1582
    msub.s	$f20,$f24,$f22,$f7
    # Line 1583
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f6,512($sp)
    sdc1	$f5,520($sp)
    jal	__glFloor
    mov.s	$f12,$f20
    # Line 1584
    li	$v1,1
    sd	$v1,360($sp)
    # Line 1583
    and	$at,$v0,$s2
    sd	$at,416($sp)
    # Line 1584
    addiu	$at,$at,1
    and	$at,$s2,$at
    b	.L0da18f54
    sd	$at,424($sp)
.L0da19924:
    # Line 1597
    ldc1	$f25,184($sp)
    msub.s	$f25,$f24,$f25,$f5
    # Line 1598
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f25,224($sp)
    jal	__glFloor
    mov.s	$f12,$f25
    # Line 1600
    ld	$a2,360($sp)
    # Line 1598
    ld	$a0,408($sp)
    # Line 1600
    addiu	$a2,$a2,1
    # Line 1598
    and	$a1,$v0,$a0
    # Line 1600
    sd	$a2,360($sp)
    # Line 1598
    move	$s4,$a1
    # Line 1599
    addiu	$a1,$a1,1
    and	$a0,$a0,$a1
    # Line 1600
    b	.L0da18fb4
    sd	$a0,432($sp)
.L0da19964:
    # Line 1706
    ldc1	$f27,200($sp)
    msub.s	$f27,$f27,$f5,$f7
    # Line 1707
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f27,216($sp)
    jal	__glFloor
    mov.s	$f12,$f27
    # Line 1708
    li	$a5,1
    sd	$a5,360($sp)
    # Line 1707
    and	$a3,$v0,$s2
    sd	$a3,416($sp)
    # Line 1708
    addiu	$a3,$a3,1
    and	$a3,$s2,$a3
    b	.L0da19154
    sd	$a3,424($sp)
.L0da1999c:
    # Line 1721
    ldc1	$f31,184($sp)
    ldc1	$f29,200($sp)
    msub.s	$f29,$f29,$f31,$f5
    # Line 1722
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f29,224($sp)
    jal	__glFloor
    mov.s	$f12,$f29
    # Line 1724
    ld	$t0,360($sp)
    # Line 1722
    ld	$a6,408($sp)
    ldc1	$f0,216($sp)
    # Line 1724
    addiu	$t0,$t0,1
    # Line 1722
    and	$a7,$v0,$a6
    # Line 1724
    sd	$t0,360($sp)
    # Line 1722
    move	$s4,$a7
    # Line 1723
    addiu	$a7,$a7,1
    and	$a6,$a6,$a7
    # Line 1724
    b	.L0da191bc
    sd	$a6,432($sp)
.L0da199e4:
    # Line 1307
    c.lt.s	$f20,$f7
    sdc1	$f6,512($sp)
    bc1f	.L0da19a60
    sdc1	$f5,520($sp)
    b	.L0da1868c
    li	$s2,7
.L0da199fc:
    # Line 1353
    c.lt.s $f22,$f5
    bc1f .L0da19a74
    mov.d	$f20,$f0
    b	.L0da17f34
    sd	$t1,240($sp)
.L0da19a10:
    # Line 1862
    ld	$gp,328($sp)
    ld	$s0,288($sp)
    ld	$s1,320($sp)
    ld	$s2,248($sp)
    ld	$s3,256($sp)
    ld	$s4,280($sp)
    ld	$s5,312($sp)
    ld	$s6,264($sp)
    ld	$s7,304($sp)
    ld	$s8,296($sp)
    ldc1	$f20,128($sp)
    ldc1	$f22,144($sp)
    ldc1	$f24,152($sp)
    ld	$ra,272($sp)
    ldc1	$f26,136($sp)
    move	$v0,$zero
    ldc1	$f28,192($sp)
    ldc1	$f30,160($sp)
    jr	$ra
    addiu	$sp,$sp,528
.L0da19a60:
    # Line 1307
    c.lt.d $f11,$f10
    bc1f .L0da19a88
    nop
    b	.L0da18690
    # Line 1326
    nop	# was lw $t9, -28804($gp) # &__glFloor
.L0da19a74:
    # Line 1353
    c.lt.d $f9,$f8
    bc1f .L0da19a98
    nop
    b	.L0da17f34
    sd	$t2,240($sp)
.L0da19a88:
    # Line 1322
    c.lt.d $f11,$f0
    li	$s2,1
    b	.L0da1868c
    movf	$s2,$zero,$fcc4
.L0da19a98:
    # Line 1368
    c.lt.d $f9,$f6
    movf	$t3,$zero,$fcc5
    b	.L0da17f34
    sd	$t3,240($sp)
.end __glTextureRGB_F_LML_StippledSpan

# Function: __glTextureRGB_L_NML_Span
# Declared: Line 1872 (Source lines: 1873-2171)
# Address: 0x0da19ab0 - 0x0da1a4b8 (Size: 2568 bytes, Frame: 240)
.globl __glTextureRGB_L_NML_Span
.ent __glTextureRGB_L_NML_Span
__glTextureRGB_L_NML_Span:
    # Line 1873
    addiu	$sp,$sp,-240
    sdc1	$f24,32($sp)
    # Line 1903
    lwc1	$f24,30240($a0)
    # Line 1873
    sdc1	$f22,40($sp)
    # Line 1902
    lwc1	$f22,30236($a0)
    # Line 1873
    sdc1	$f20,56($sp)
    # Line 1901
    lwc1	$f20,30228($a0)
    # Line 1873
    sdc1	$f26,48($sp)
    # Line 1900
    lwc1	$f26,30224($a0)
    # Line 1873
    sd	$s3,136($sp)
    # Line 1898
    lw	$s3,30464($a0)
    # Line 1873
    sd	$s0,128($sp)
    # Line 1896
    lw	$s0,28208($a0)
    sdc1	$f30,24($sp)
    sdc1	$f28,16($sp)
    sd	$s7,104($sp)
    sd	$s5,96($sp)
    sd	$s4,88($sp)
    sd	$ra,80($sp)
    sd	$s8,72($sp)
    sd	$gp,144($sp)
    # Line 1873
    sd	$s1,120($sp)
    # Line 1881
    lwc1	$f0,3540($a0)
    # Line 1873
    sd	$s2,112($sp)
    # Line 1905
    lw	$a2,30248($a0)
    # Line 1894
    lw	$s2,2484($a0)
    # Line 1873
    lui	$at,0x3
    sd	$s6,152($sp)
    # Line 1905
    addiu	$s6,$a2,-1
    # Line 1873
    move	$s1,$a0
    addiu	$at,$at,29404
    # Line 1881
    sdc1	$f0,64($sp)
    # Line 1873
    addu	$gp,$t9,$at
    # Line 1905
    bltz	$s6,.L0da1a3f0
    # Line 1894
    lw	$s2,0($s2)
    # Line 1905
    li	$a6,-1
    li	$t1,8449
    li	$t0,7681
    li	$s8,0x8062
    li	$a7,8448
    li	$s7,10497
    b	.L0da1a4a4
    mtc1	$zero,$f7
    nop
.L0da19b60:
    # Line 1946
    c.lt.s	$f0,$f5
    movt.s	$f28,$f0,$fcc0
.L0da19b68:
    # Line 1947
    ldc1	$f1,64($sp)
    # Line 1948
    # lw $t9, -28804($gp) # &__glFloor
    # Line 1947
    sub.s	$f28,$f28,$f1
    # Line 1948
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s5,$v0
    # Line 1949
    addiu	$v0,$v0,1
    sd	$v0,208($sp)
.L0da19b88:
    # Line 1952
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f30
    # Line 1953
    # lw $t9, -28808($gp) # &__glFrac
    # Line 1952
    mov.s	$f30,$f0
    # Line 1953
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 1954
    lwc1	$f12,3544($s1)
    # Line 1955
    ld	$v1,200($sp)
    li	$a6,-1
    li	$a7,8448
    # Line 1986
    ld	$a3,184($sp)
    # Line 1954
    sub.s	$f8,$f12,$f30
    li	$t0,7681
    mtc1	$zero,$f7
    # Line 1986
    ld	$a0,192($sp)
    # Line 1955
    sub.s	$f12,$f12,$f0
    mul.s	$f10,$f0,$f30
    li	$t1,8449
    li	$a5,2
    # Line 1986
    ld	$a4,216($sp)
    nor	$a0,$a0,$zero
    nor	$a3,$a3,$zero
    # Line 1955
    mul.s	$f11,$f30,$f12
    # Line 1986
    and	$a4,$a3,$a4
    and	$a2,$a0,$s5
    # Line 1955
    mul.s	$f9,$f0,$f8
    # Line 1986
    or	$a1,$a2,$a4
    # Line 1955
    beq	$v1,$a5,.L0da19f74
    mul.s	$f8,$f8,$f12
    # Line 1986
    beqz	$a1,.L0da1a168
    # Line 1999
    ld	$t3,168($sp)
    # Line 1995
    lwc1	$f5,164($s0)
    # Line 1994
    lwc1	$f0,160($s0)
    # Line 1993
    lwc1	$f6,156($s0)
    # Line 1995
    mul.s	$f5,$f5,$f8
    # Line 1994
    mul.s	$f0,$f0,$f8
    # Line 1993
    mul.s	$f6,$f6,$f8
.L0da19c20:
    # Line 2001
    and	$a5,$a3,$s4
    or	$a1,$a2,$a5
    # Line 2012
    ld	$a2,208($sp)
    # Line 2001
    beqz	$a1,.L0da1a1a4
    # Line 2012
    and	$a2,$a0,$a2
    # Line 2006
    lwc1	$f13,164($s0)
    # Line 2005
    lwc1	$f12,160($s0)
    # Line 2004
    lwc1	$f8,156($s0)
    # Line 2006
    madd.s	$f5,$f5,$f13,$f11
    # Line 2005
    madd.s	$f0,$f0,$f12,$f11
    # Line 2004
    madd.s	$f6,$f6,$f8,$f11
.L0da19c4c:
    # Line 2012
    or	$a3,$a2,$a4
    beqz	$a3,.L0da1a1e0
    # Line 2021
    ld	$v1,168($sp)
    # Line 2017
    lwc1	$f16,164($s0)
    # Line 2016
    lwc1	$f15,160($s0)
    # Line 2015
    lwc1	$f14,156($s0)
    # Line 2017
    madd.s	$f5,$f5,$f16,$f9
    # Line 2016
    madd.s	$f0,$f0,$f15,$f9
    # Line 2015
    madd.s	$f6,$f6,$f14,$f9
.L0da19c70:
    # Line 2023
    or	$a3,$a2,$a5
    beqz	$a3,.L0da1a220
    # Line 2032
    ld	$a2,168($sp)
    # Line 2028
    lwc1	$f19,164($s0)
    # Line 2027
    lwc1	$f18,160($s0)
    # Line 2026
    lwc1	$f17,156($s0)
    # Line 2028
    madd.s	$f5,$f5,$f19,$f10
    # Line 2027
    madd.s	$f0,$f0,$f18,$f10
    # Line 2026
    madd.s	$f6,$f6,$f17,$f10
.L0da19c94:
    # Line 2132
    beq	$s2,$a7,.L0da1a040
    nop
.L0da19c9c:
    # Line 2144
    beq	$s2,$s8,.L0da19f4c
    nop
    beq	$s2,$t0,.L0da19f4c
    nop
    beq	$s2,$t1,.L0da19f4c
    nop
    # Line 2155
    lw	$a4,2484($s1)
    # Line 2157
    lwc1	$f3,3544($s1)
    lwc1	$f1,4($a4)
    lwc1	$f2,0($s3)
    sub.s	$f3,$f3,$f6
    mul.s	$f1,$f1,$f6
    madd.s	$f1,$f1,$f2,$f3
    swc1	$f1,0($s3)
    # Line 2158
    lwc1	$f31,3544($s1)
    lwc1	$f27,8($a4)
    lwc1	$f29,4($s3)
    sub.s	$f31,$f31,$f0
    mul.s	$f27,$f27,$f0
    madd.s	$f27,$f27,$f29,$f31
    swc1	$f27,4($s3)
    # Line 2159
    lwc1	$f25,3544($s1)
    lwc1	$f21,12($a4)
    lwc1	$f23,8($s3)
    sub.s	$f25,$f25,$f5
    mul.s	$f21,$f21,$f5
    madd.s	$f21,$f21,$f23,$f25
    swc1	$f21,8($s3)
.L0da19d0c:
    # Line 2167
    lwc1	$f8,30396($s1)
    # Line 2166
    lwc1	$f6,30392($s1)
    # Line 2165
    lwc1	$f5,30384($s1)
    # Line 2164
    lwc1	$f4,30380($s1)
    # Line 2167
    add.s	$f24,$f8,$f24
    # Line 1927
    mtc1	$zero,$f30
    # Line 1905
    addiu	$s6,$s6,-1
    # Line 2166
    add.s	$f22,$f6,$f22
    # Line 2168
    addiu	$s3,$s3,16
    # Line 2048
    li	$ra,1
    # Line 2165
    add.s	$f20,$f5,$f20
    # Line 2046
    move	$a2,$zero
    # Line 1905
    beq	$s6,$a6,.L0da1a3f0
    # Line 2164
    add.s	$f26,$f4,$f26
    # Line 1906
    lwc1	$f6,3544($s1)
.L0da19d48:
    div.s	$f0,$f6,$f22
    lwc1	$f1,240($s0)
    mul.s	$f5,$f24,$f0
    c.le.s $f5,$f1
    lw	$a0,4($s0)
    lw	$s5,228($s0)
    mul.s	$f28,$f20,$f0
    # Line 2048
    ldc1	$f8,64($sp)
    # Line 1906
    bc1f .L0da19db8
    mul.s	$f0,$f26,$f0
    # Line 1917
    lw	$t2,44($s5)
    # Line 1918
    lw	$t8,0($s5)
    sd	$t8,176($sp)
    # Line 1917
    sd	$t2,168($sp)
    # Line 1920
    lw	$t3,24($s5)
    # Line 1922
    lwc1	$f5,32($s5)
    # Line 1919
    lw	$a5,20($s5)
    # Line 1920
    addiu	$t3,$t3,-1
    sd	$t3,192($sp)
    # Line 1919
    addiu	$a5,$a5,-1
    sd	$a5,184($sp)
    # Line 1922
    beq	$s7,$a0,.L0da1a264
    mul.s	$f6,$f0,$f5
    # Line 1927
    c.lt.s $f6,$f7
    bc1f .L0da19ef8
    nop
    b	.L0da19f04
    nop
.L0da19db8:
    # Line 2034
    c.eq.s $f5,$f7
    bc1t .L0da19e1c
    nop
    # Line 2046
    trunc.w.s	$f2,$f5
    mfc1	$t9,$f2
    sra	$t9,$t9,0x1
    beqz	$t9,.L0da19df4
    move	$a3,$t9
    move	$a2,$zero
.L0da19ddc:
    sra	$a3,$a3,0x1
    addiu	$a2,$a2,1
    beqz	$a3,.L0da19df4
    sra	$a3,$a3,0x1
    bnez	$a3,.L0da19ddc
    addiu	$a2,$a2,1
.L0da19df4:
    # Line 2048
    sllv	$ra,$ra,$a2
    mtc1	$ra,$f11
    cvt.s.w	$f11,$f11
    sub.s	$f10,$f5,$f11
    div.s	$f10,$f10,$f11
    mtc1	$a2,$f9
    cvt.s.w	$f9,$f9
    add.s	$f9,$f9,$f10
    b	.L0da19e20
    mul.s	$f8,$f8,$f9
.L0da19e1c:
    # Line 2050
    mtc1	$zero,$f8
.L0da19e20:
    # Line 2054
    lw	$a2,236($s0)
    # Line 2058
    trunc.w.s	$f9,$f8
    # Line 2060
    sll	$s4,$a2,0x2
    # Line 2058
    mfc1	$a3,$f9
    cvt.s.w	$f9,$f9
    # Line 2060
    subu	$s4,$s4,$a2
    sll	$s4,$s4,0x3
    # Line 2058
    addiu	$v0,$a3,1
    slt	$at,$a2,$v0
    slti	$v0,$v0,0
    # Line 2060
    addu	$s4,$s4,$a2
    # Line 2058
    sub.s	$f9,$f8,$f9
    or	$at,$at,$v0
    # Line 2060
    sll	$s4,$s4,0x2
    addu	$s4,$s5,$s4
    # Line 2058
    beqz	$at,.L0da1a0b0
    sub.s	$f5,$f6,$f9
    # Line 2061
    beq	$s7,$a0,.L0da1a384
    lwc1	$f30,32($s4)
    # Line 2065
    lw	$a2,20($s4)
    # Line 2066
    mul.s	$f10,$f0,$f30
    trunc.w.s	$f10,$f10
    mfc1	$a0,$f10
    # Line 2068
    addiu	$t9,$a2,-1
    # Line 2066
    slt	$t8,$a0,$a2
    bltz	$a0,.L0da1a25c
    move	$s5,$a0
    movz	$s5,$t9,$t8
.L0da19e90:
    # Line 2070
    lw	$ra,8($s0)
    # Line 2074
    lw	$a2,24($s4)
    # Line 2070
    lwc1	$f30,36($s4)
    beq	$s7,$ra,.L0da1a3b4
    # Line 2077
    addiu	$v0,$a2,-1
    # Line 2075
    mul.s	$f11,$f28,$f30
    trunc.w.s	$f11,$f11
    mfc1	$a3,$f11
    slt	$at,$a3,$a2
    bltz	$a3,.L0da1a068
    move	$a0,$a3
    movz	$a0,$v0,$at
.L0da19ec0:
    # Line 2077
    lw	$a1,20($s4)
    addiu	$v1,$a2,-1
    addiu	$a1,$a1,-1
    nor	$v1,$v1,$zero
    nor	$a1,$a1,$zero
    and	$v1,$a0,$v1
    and	$a1,$s5,$a1
    or	$v1,$v1,$a1
    beqz	$v1,.L0da1a080
    nop
.L0da19ee8:
    # Line 2083
    lwc1	$f5,164($s0)
    # Line 2082
    lwc1	$f0,160($s0)
    # Line 2083
    b	.L0da19c94
    # Line 2081
    lwc1	$f6,156($s0)
.L0da19ef8:
    # Line 1931
    mov.s	$f30,$f6
    c.lt.s $f5,$f6
    movt.s	$f30,$f5,$fcc4
.L0da19f04:
    # Line 1932
    ldc1	$f12,64($sp)
    # Line 1933
    # lw $t9, -28804($gp) # &__glFloor
    # Line 1932
    sub.s	$f30,$f30,$f12
    # Line 1933
    jal	__glFloor
    mov.s	$f12,$f30
    sd	$v0,216($sp)
    # Line 1934
    addiu	$s4,$v0,1
    sd	$zero,200($sp)
.L0da19f24:
    # Line 1937
    lwc1	$f0,36($s5)
    lw	$a3,8($s0)
    # Line 1943
    mtc1	$zero,$f13
    # Line 1937
    beq	$s7,$a3,.L0da1a298
    mul.s	$f5,$f28,$f0
    # Line 1943
    c.lt.s $f5,$f13
    bc1f .L0da19b60
    # Line 1946
    mov.s	$f28,$f5
    # Line 1943
    b	.L0da19b68
    mtc1	$zero,$f28
.L0da19f4c:
    # Line 2147
    lwc1	$f16,30752($s1)
    mul.s	$f16,$f16,$f6
    swc1	$f16,0($s3)
    # Line 2148
    lwc1	$f15,30756($s1)
    mul.s	$f15,$f15,$f0
    swc1	$f15,4($s3)
    # Line 2149
    lwc1	$f14,30760($s1)
    mul.s	$f14,$f14,$f5
    b	.L0da19d0c
    swc1	$f14,8($s3)
.L0da19f74:
    # Line 1984
    ld	$v0,168($sp)
    ld	$ra,216($sp)
    sllv	$at,$s5,$v0
    ld	$t9,176($sp)
    addu	$t8,$at,$s4
    addu	$at,$at,$ra
    sll	$t3,$t8,0x3
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t9
    sll	$t2,$at,0x3
    addu	$t3,$t3,$t8
    ld	$t8,208($sp)
    sll	$at,$at,0x2
    addu	$t2,$t2,$t9
    sllv	$t8,$t8,$v0
    addu	$t2,$t2,$at
    addu	$ra,$t8,$ra
    # Line 1986
    lwc1	$f5,8($t3)
    # Line 1984
    addu	$t8,$t8,$s4
    sll	$a5,$ra,0x3
    # Line 1986
    lwc1	$f6,8($t2)
    # Line 1984
    sll	$ra,$ra,0x2
    addu	$a5,$a5,$t9
    sll	$a4,$t8,0x3
    addu	$a5,$a5,$ra
    # Line 1986
    mul.s	$f5,$f5,$f11
    # Line 1984
    sll	$t8,$t8,0x2
    addu	$a4,$a4,$t9
    # Line 1986
    lwc1	$f12,8($a5)
    madd.s	$f5,$f5,$f6,$f8
    # Line 1984
    addu	$a4,$a4,$t8
    # Line 1986
    lwc1	$f6,8($a4)
    # Line 1985
    lwc1	$f0,4($t3)
    # Line 1986
    madd.s	$f5,$f5,$f12,$f9
    # Line 1985
    lwc1	$f1,4($t2)
    # Line 1986
    madd.s	$f5,$f5,$f6,$f10
    # Line 1984
    lwc1	$f6,0($t3)
    # Line 1985
    mul.s	$f0,$f0,$f11
    # Line 1984
    lwc1	$f12,0($t2)
    # Line 1985
    madd.s	$f0,$f0,$f1,$f8
    lwc1	$f2,4($a5)
    # Line 1984
    lwc1	$f13,0($a5)
    mul.s	$f6,$f6,$f11
    # Line 1985
    lwc1	$f1,4($a4)
    # Line 1984
    madd.s	$f6,$f6,$f12,$f8
    # Line 1985
    madd.s	$f0,$f0,$f2,$f9
    # Line 1984
    lwc1	$f12,0($a4)
    madd.s	$f6,$f6,$f13,$f9
    # Line 1985
    madd.s	$f0,$f0,$f1,$f10
    # Line 2132
    bne	$s2,$a7,.L0da19c9c
    # Line 1984
    madd.s	$f6,$f6,$f12,$f10
.L0da1a040:
    # Line 2142
    lwc1	$f10,8($s3)
    # Line 2141
    lwc1	$f9,4($s3)
    # Line 2140
    lwc1	$f8,0($s3)
    # Line 2142
    mul.s	$f10,$f10,$f5
    # Line 2141
    mul.s	$f9,$f9,$f0
    # Line 2142
    swc1	$f10,8($s3)
    # Line 2140
    mul.s	$f8,$f8,$f6
    # Line 2141
    swc1	$f9,4($s3)
    # Line 2142
    b	.L0da19d0c
    # Line 2140
    swc1	$f8,0($s3)
.L0da1a068:
    # Line 2075
    lw	$t9,20($s4)
    addiu	$t9,$t9,-1
    nor	$t9,$t9,$zero
    and	$t9,$s5,$t9
    bnez	$t9,.L0da19ee8
    # Line 2083
    move	$a0,$zero
.L0da1a080:
    # Line 2085
    lw	$at,44($s4)
    sllv	$at,$a0,$at
    # Line 2086
    lw	$ra,0($s4)
    # Line 2085
    addu	$at,$s5,$at
    # Line 2086
    sll	$v0,$at,0x3
    sll	$at,$at,0x2
    addu	$ra,$ra,$v0
    addu	$ra,$ra,$at
    # Line 2090
    lwc1	$f5,8($ra)
    # Line 2089
    lwc1	$f0,4($ra)
    b	.L0da19c94
    # Line 2088
    lwc1	$f6,0($ra)
.L0da1a0b0:
    # Line 2093
    sll	$s4,$a3,0x2
    subu	$s4,$s4,$a3
    sll	$s4,$s4,0x3
    sdc1	$f9,8($sp)
    addu	$s4,$s4,$a3
    sdc1	$f5,0($sp)
    sll	$s4,$s4,0x2
    sd	$s4,160($sp)
    addu	$s4,$s4,$s5
    # Line 2094
    beq	$s7,$a0,.L0da1a440
    lwc1	$f30,32($s4)
    # Line 2098
    lw	$a2,20($s4)
    # Line 2099
    mul.s	$f11,$f0,$f30
    trunc.w.s	$f11,$f11
    mfc1	$a0,$f11
    # Line 2101
    addiu	$t9,$a2,-1
    # Line 2099
    slt	$t8,$a0,$a2
    bltz	$a0,.L0da1a3e8
    move	$s5,$a0
    movz	$s5,$t9,$t8
.L0da1a100:
    # Line 2103
    lw	$ra,8($s0)
    # Line 2107
    lw	$a2,24($s4)
    # Line 2103
    lwc1	$f30,36($s4)
    beq	$s7,$ra,.L0da1a470
    # Line 2110
    addiu	$v0,$a2,-1
    # Line 2108
    mul.s	$f12,$f28,$f30
    trunc.w.s	$f12,$f12
    mfc1	$a3,$f12
    slt	$at,$a3,$a2
    bltz	$a3,.L0da1a2dc
    move	$a0,$a3
    movz	$a0,$v0,$at
.L0da1a130:
    # Line 2110
    lw	$a1,20($s4)
    addiu	$v1,$a2,-1
    addiu	$a1,$a1,-1
    nor	$v1,$v1,$zero
    nor	$a1,$a1,$zero
    and	$v1,$a0,$v1
    and	$a1,$s5,$a1
    or	$v1,$v1,$a1
    beqz	$v1,.L0da1a2f4
    nop
.L0da1a158:
    # Line 2116
    lwc1	$f5,164($s0)
    # Line 2115
    lwc1	$f0,160($s0)
    # Line 2116
    b	.L0da19c94
    # Line 2114
    lwc1	$f6,156($s0)
.L0da1a168:
    # Line 1999
    ld	$t2,216($sp)
    sllv	$t3,$s5,$t3
    ld	$a5,176($sp)
    addu	$t2,$t2,$t3
    sll	$t3,$t2,0x3
    sll	$t2,$t2,0x2
    addu	$a5,$a5,$t3
    addu	$a5,$a5,$t2
    # Line 2001
    lwc1	$f5,8($a5)
    # Line 2000
    lwc1	$f0,4($a5)
    # Line 1999
    lwc1	$f6,0($a5)
    # Line 2001
    mul.s	$f5,$f5,$f8
    # Line 2000
    mul.s	$f0,$f0,$f8
    b	.L0da19c20
    # Line 1999
    mul.s	$f6,$f6,$f8
.L0da1a1a4:
    # Line 2010
    ld	$t9,168($sp)
    sllv	$t9,$s5,$t9
    ld	$t8,176($sp)
    addu	$t9,$s4,$t9
    sll	$ra,$t9,0x3
    sll	$t9,$t9,0x2
    addu	$t8,$t8,$ra
    addu	$t8,$t8,$t9
    # Line 2012
    lwc1	$f13,8($t8)
    # Line 2011
    lwc1	$f12,4($t8)
    # Line 2010
    lwc1	$f8,0($t8)
    # Line 2012
    madd.s	$f5,$f5,$f13,$f11
    # Line 2011
    madd.s	$f0,$f0,$f12,$f11
    b	.L0da19c4c
    # Line 2010
    madd.s	$f6,$f6,$f8,$f11
.L0da1a1e0:
    # Line 2021
    ld	$v0,208($sp)
    ld	$at,216($sp)
    sllv	$v0,$v0,$v1
    ld	$ra,176($sp)
    addu	$at,$at,$v0
    sll	$v0,$at,0x3
    sll	$at,$at,0x2
    addu	$ra,$ra,$v0
    addu	$ra,$ra,$at
    # Line 2023
    lwc1	$f16,8($ra)
    # Line 2022
    lwc1	$f15,4($ra)
    # Line 2021
    lwc1	$f14,0($ra)
    # Line 2023
    madd.s	$f5,$f5,$f16,$f9
    # Line 2022
    madd.s	$f0,$f0,$f15,$f9
    b	.L0da19c70
    # Line 2021
    madd.s	$f6,$f6,$f14,$f9
.L0da1a220:
    # Line 2032
    ld	$a1,208($sp)
    sllv	$a1,$a1,$a2
    ld	$a0,176($sp)
    addu	$a1,$s4,$a1
    sll	$a2,$a1,0x3
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a2
    addu	$a0,$a0,$a1
    # Line 2034
    lwc1	$f19,8($a0)
    # Line 2033
    lwc1	$f18,4($a0)
    # Line 2032
    lwc1	$f17,0($a0)
    # Line 2034
    madd.s	$f5,$f5,$f19,$f10
    # Line 2033
    madd.s	$f0,$f0,$f18,$f10
    b	.L0da19c94
    # Line 2032
    madd.s	$f6,$f6,$f17,$f10
.L0da1a25c:
    # Line 2066
    b	.L0da19e90
    move	$s5,$zero
.L0da1a264:
    # Line 1925
    ldc1	$f30,64($sp)
    msub.s	$f30,$f30,$f0,$f5
    # Line 1926
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f30
    ld	$s4,184($sp)
    and	$t8,$v0,$s4
    # Line 1927
    li	$ra,1
    # Line 1926
    sd	$t8,216($sp)
    # Line 1927
    addiu	$t8,$t8,1
    sd	$ra,200($sp)
    b	.L0da19f24
    and	$s4,$s4,$t8
.L0da1a298:
    # Line 1940
    ldc1	$f31,64($sp)
    msub.s	$f31,$f31,$f28,$f0
    # Line 1941
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f31,224($sp)
    jal	__glFloor
    mov.s	$f12,$f31
    # Line 1943
    ld	$v1,200($sp)
    # Line 1941
    ld	$at,192($sp)
    ldc1	$f28,224($sp)
    # Line 1943
    addiu	$v1,$v1,1
    # Line 1941
    and	$v0,$v0,$at
    # Line 1943
    sd	$v1,200($sp)
    # Line 1941
    move	$s5,$v0
    # Line 1942
    addiu	$v0,$v0,1
    and	$at,$at,$v0
    # Line 1943
    b	.L0da19b88
    sd	$at,208($sp)
.L0da1a2dc:
    # Line 2108
    lw	$a0,20($s4)
    addiu	$a0,$a0,-1
    nor	$a0,$a0,$zero
    and	$a0,$s5,$a0
    bnez	$a0,.L0da1a158
    # Line 2116
    move	$a0,$zero
.L0da1a2f4:
    # Line 2118
    lw	$a4,44($s4)
    # Line 2125
    ld	$a3,160($sp)
    lw	$a1,228($s0)
    # Line 2128
    sra	$a5,$a0,0x1
    # Line 2118
    sllv	$a4,$a0,$a4
    # Line 2125
    addu	$a1,$a1,$a3
    # Line 2128
    sra	$a3,$s5,0x1
    # Line 2118
    addu	$a4,$s5,$a4
    # Line 2119
    sll	$t3,$a4,0x3
    # Line 2128
    lw	$t2,144($a1)
    # Line 2119
    lw	$a2,0($s4)
    sll	$a4,$a4,0x2
    # Line 2128
    sllv	$a5,$a5,$t2
    # Line 2129
    lw	$a1,100($a1)
    # Line 2119
    addu	$a2,$a2,$t3
    # Line 2128
    addu	$a3,$a3,$a5
    # Line 2132
    ldc1	$f9,8($sp)
    # Line 2119
    addu	$a2,$a2,$a4
    # Line 2129
    sll	$a4,$a3,0x3
    # Line 2122
    ldc1	$f10,0($sp)
    # Line 2129
    sll	$a3,$a3,0x2
    addu	$a1,$a1,$a4
    # Line 2122
    lwc1	$f5,8($a2)
    # Line 2129
    addu	$a1,$a1,$a3
    # Line 2132
    lwc1	$f6,8($a1)
    # Line 2121
    lwc1	$f0,4($a2)
    # Line 2131
    lwc1	$f1,4($a1)
    # Line 2122
    mul.s	$f5,$f5,$f10
    # Line 2132
    madd.s	$f5,$f5,$f6,$f9
    # Line 2120
    lwc1	$f6,0($a2)
    # Line 2121
    mul.s	$f0,$f0,$f10
    # Line 2130
    lwc1	$f8,0($a1)
    # Line 2131
    madd.s	$f0,$f0,$f1,$f9
    # Line 2120
    mul.s	$f6,$f6,$f10
    b	.L0da19c94
    # Line 2130
    madd.s	$f6,$f6,$f8,$f9
.L0da1a384:
    # Line 2063
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f0
    mul.s	$f6,$f0,$f30
    li	$a6,-1
    li	$a7,8448
    trunc.w.s	$f6,$f6
    li	$t0,7681
    mtc1	$zero,$f7
    li	$t1,8449
    b	.L0da19e90
    mfc1	$s5,$f6
.L0da1a3b4:
    # Line 2072
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f28
    mul.s	$f8,$f0,$f30
    li	$a6,-1
    li	$a7,8448
    trunc.w.s	$f8,$f8
    li	$t0,7681
    mtc1	$zero,$f7
    li	$t1,8449
    lw	$a2,24($s4)
    b	.L0da19ec0
    mfc1	$a0,$f8
.L0da1a3e8:
    # Line 2099
    b	.L0da1a100
    move	$s5,$zero
.L0da1a3f0:
    # Line 2171
    ld	$gp,144($sp)
    ld	$s0,128($sp)
    ld	$s1,120($sp)
    ld	$s2,112($sp)
    ld	$s3,136($sp)
    ld	$s4,88($sp)
    ld	$s5,96($sp)
    ld	$s6,152($sp)
    ld	$s7,104($sp)
    ld	$s8,72($sp)
    ldc1	$f20,56($sp)
    ldc1	$f22,40($sp)
    ldc1	$f24,32($sp)
    ld	$ra,80($sp)
    ldc1	$f26,48($sp)
    move	$v0,$zero
    ldc1	$f28,16($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0da1a440:
    # Line 2096
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f0
    mul.s	$f9,$f0,$f30
    li	$a6,-1
    li	$a7,8448
    trunc.w.s	$f9,$f9
    li	$t0,7681
    mtc1	$zero,$f7
    li	$t1,8449
    b	.L0da1a100
    mfc1	$s5,$f9
.L0da1a470:
    # Line 2105
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f28
    mul.s	$f10,$f0,$f30
    li	$a6,-1
    li	$a7,8448
    trunc.w.s	$f10,$f10
    li	$t0,7681
    mtc1	$zero,$f7
    li	$t1,8449
    lw	$a2,24($s4)
    b	.L0da1a130
    mfc1	$a0,$f10
.L0da1a4a4:
    # Line 1927
    mtc1	$zero,$f30
    # Line 2048
    li	$ra,1
    # Line 2046
    move	$a2,$zero
    b	.L0da19d48
    # Line 1906
    lwc1	$f6,3544($s1)
.end __glTextureRGB_L_NML_Span

# Function: __glTextureRGB_L_NML_StippledSpan
# Declared: Line 2181 (Source lines: 2182-2500)
# Address: 0x0da1a4c0 - 0x0da1af3c (Size: 2684 bytes, Frame: 128)
.globl __glTextureRGB_L_NML_StippledSpan
.ent __glTextureRGB_L_NML_StippledSpan
__glTextureRGB_L_NML_StippledSpan:
    # Line 2209
    lw	$v1,30472($a0)
    # Line 2182
    addiu	$sp,$sp,-256
    sdc1	$f24,32($sp)
    # Line 2214
    lwc1	$f24,30240($a0)
    # Line 2182
    sdc1	$f22,40($sp)
    # Line 2213
    lwc1	$f22,30236($a0)
    # Line 2182
    sdc1	$f20,56($sp)
    # Line 2212
    lwc1	$f20,30228($a0)
    # Line 2182
    sdc1	$f26,48($sp)
    # Line 2211
    lwc1	$f26,30224($a0)
    # Line 2209
    sd	$v1,168($sp)
    # Line 2182
    sd	$s3,144($sp)
    # Line 2208
    lw	$s3,30464($a0)
    # Line 2182
    sd	$s0,128($sp)
    # Line 2206
    lw	$s0,28208($a0)
    # Line 2207
    lw	$at,30248($a0)
    sd	$at,176($sp)
    sdc1	$f30,24($sp)
    sdc1	$f28,16($sp)
    sd	$s8,120($sp)
    sd	$s7,112($sp)
    sd	$s5,104($sp)
    sd	$s1,96($sp)
    sd	$ra,88($sp)
    sd	$s6,80($sp)
    sd	$gp,160($sp)
    # Line 2182
    sd	$s2,152($sp)
    # Line 2191
    lwc1	$f0,3540($a0)
    # Line 2182
    sd	$s4,136($sp)
    lui	$v0,0x3
    # Line 2204
    lw	$s4,2484($a0)
    # Line 2182
    move	$s2,$a0
    addiu	$v0,$v0,26828
    # Line 2191
    sdc1	$f0,64($sp)
    # Line 2182
    addu	$gp,$t9,$v0
    # Line 2214
    beqz	$at,.L0da1aed4
    # Line 2204
    lw	$s4,0($s4)
    # Line 2214
    li	$t2,8449
    li	$t1,7681
    li	$a4,0x8062
    li	$t0,8448
    li	$s8,10497
    mtc1	$zero,$f7
    b	.L0da1a588
    li	$a5,-1
    nop
    nop
    nop
.L0da1a580:
    # Line 2225
    ld	$a0,176($sp)
    beqz	$a0,.L0da1aed4
.L0da1a588:
    # Line 2218
    ld	$a1,176($sp)
    li	$a6,32
    # Line 2223
    ld	$a2,168($sp)
    # Line 2218
    li	$a3,32
    move	$a0,$a1
    slt	$a3,$a3,$a1
    # Line 2223
    addiu	$a2,$a2,4
    sd	$a2,168($sp)
    # Line 2218
    movn	$a0,$a6,$a3
    # Line 2223
    lw	$a2,-4($a2)
    # Line 2225
    addiu	$s7,$a0,-1
    # Line 2223
    sd	$a2,224($sp)
    # Line 2221
    subu	$a1,$a1,$a0
    # Line 2225
    bltz	$s7,.L0da1a580
    sd	$a1,176($sp)
    b	.L0da1af30
    lui	$s1,0x8000
    nop
.L0da1a5d0:
    # Line 2376
    lw	$a2,236($s0)
    # Line 2380
    trunc.w.s	$f9,$f8
    # Line 2382
    sll	$s5,$a2,0x2
    # Line 2380
    mfc1	$a3,$f9
    cvt.s.w	$f9,$f9
    # Line 2382
    subu	$s5,$s5,$a2
    sll	$s5,$s5,0x3
    # Line 2380
    addiu	$a7,$a3,1
    slt	$a6,$a2,$a7
    slti	$a7,$a7,0
    # Line 2382
    addu	$s5,$s5,$a2
    # Line 2380
    sub.s	$f9,$f8,$f9
    or	$a6,$a6,$a7
    # Line 2382
    sll	$s5,$s5,0x2
    addu	$s5,$s6,$s5
    # Line 2380
    beqz	$a6,.L0da1ab28
    sub.s	$f5,$f6,$f9
    # Line 2383
    beq	$s8,$a0,.L0da1adf4
    lwc1	$f30,32($s5)
    # Line 2387
    lw	$a2,20($s5)
    # Line 2388
    mul.s	$f10,$f0,$f30
    trunc.w.s	$f10,$f10
    mfc1	$a0,$f10
    # Line 2390
    addiu	$t9,$a2,-1
    # Line 2388
    slt	$t8,$a0,$a2
    bltz	$a0,.L0da1acc8
    move	$s6,$a0
    movz	$s6,$t9,$t8
.L0da1a640:
    # Line 2392
    lw	$ra,8($s0)
    # Line 2396
    lw	$a2,24($s5)
    # Line 2392
    lwc1	$f30,36($s5)
    beq	$s8,$ra,.L0da1ae28
    # Line 2399
    addiu	$v0,$a2,-1
    # Line 2397
    mul.s	$f11,$f28,$f30
    trunc.w.s	$f11,$f11
    mfc1	$a3,$f11
    slt	$at,$a3,$a2
    bltz	$a3,.L0da1aae0
    move	$a0,$a3
    movz	$a0,$v0,$at
.L0da1a670:
    # Line 2399
    lw	$a1,20($s5)
    addiu	$v1,$a2,-1
    addiu	$a1,$a1,-1
    nor	$v1,$v1,$zero
    nor	$a1,$a1,$zero
    and	$v1,$a0,$v1
    and	$a1,$s6,$a1
    or	$v1,$v1,$a1
    beqz	$v1,.L0da1aaf8
    nop
.L0da1a698:
    # Line 2405
    lwc1	$f5,164($s0)
    # Line 2404
    lwc1	$f0,160($s0)
    # Line 2403
    lwc1	$f6,156($s0)
.L0da1a6a4:
    # Line 2454
    beq	$s4,$t0,.L0da1aab8
    nop
.L0da1a6ac:
    # Line 2466
    beq	$s4,$a4,.L0da1a9cc
    nop
    beq	$s4,$t1,.L0da1a9cc
    nop
    beq	$s4,$t2,.L0da1a9cc
    nop
    # Line 2477
    lw	$a2,2484($s2)
    # Line 2479
    lwc1	$f21,3544($s2)
    lwc1	$f18,4($a2)
    lwc1	$f19,0($s3)
    sub.s	$f21,$f21,$f6
    mul.s	$f18,$f18,$f6
    madd.s	$f18,$f18,$f19,$f21
    swc1	$f18,0($s3)
    # Line 2480
    lwc1	$f17,3544($s2)
    lwc1	$f15,8($a2)
    lwc1	$f16,4($s3)
    sub.s	$f17,$f17,$f0
    mul.s	$f15,$f15,$f0
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,4($s3)
    # Line 2481
    lwc1	$f14,3544($s2)
    lwc1	$f12,12($a2)
    lwc1	$f13,8($s3)
    sub.s	$f14,$f14,$f5
    mul.s	$f12,$f12,$f5
    madd.s	$f12,$f12,$f13,$f14
    swc1	$f12,8($s3)
.L0da1a71c:
    # Line 2490
    lwc1	$f29,30396($s2)
    # Line 2489
    lwc1	$f27,30392($s2)
    # Line 2488
    lwc1	$f25,30384($s2)
    # Line 2487
    lwc1	$f23,30380($s2)
    # Line 2490
    add.s	$f24,$f29,$f24
    # Line 2493
    srl	$s1,$s1,0x1
    # Line 2225
    addiu	$s7,$s7,-1
    # Line 2489
    add.s	$f22,$f27,$f22
    # Line 2372
    mtc1	$zero,$f8
    # Line 2488
    add.s	$f20,$f25,$f20
    # Line 2491
    addiu	$s3,$s3,16
    # Line 2225
    beq	$s7,$a5,.L0da1a580
    # Line 2487
    add.s	$f26,$f23,$f26
    # Line 2225
    ld	$a3,224($sp)
.L0da1a754:
    and	$a3,$a3,$s1
    beqz	$a3,.L0da1a71c
    # Line 2249
    mtc1	$zero,$f30
    # Line 2228
    lwc1	$f6,3544($s2)
    div.s	$f0,$f6,$f22
    lwc1	$f1,240($s0)
    mul.s	$f5,$f24,$f0
    c.le.s	$f5,$f1
    lw	$a0,4($s0)
    mul.s	$f28,$f20,$f0
    lw	$s6,228($s0)
    bc1f	.L0da1a7cc
    mul.s	$f0,$f26,$f0
    # Line 2239
    lw	$t8,44($s6)
    # Line 2240
    lw	$ra,0($s6)
    sd	$ra,192($sp)
    # Line 2242
    lw	$t9,24($s6)
    # Line 2244
    lwc1	$f5,32($s6)
    # Line 2241
    lw	$s5,20($s6)
    # Line 2239
    sd	$t8,200($sp)
    # Line 2242
    addiu	$t9,$t9,-1
    sd	$t9,208($sp)
    # Line 2241
    addiu	$s5,$s5,-1
    # Line 2244
    beq	$s8,$a0,.L0da1acd0
    mul.s	$f6,$f0,$f5
    # Line 2249
    c.lt.s $f6,$f7
    bc1f .L0da1a83c
    nop
    b	.L0da1a848
    nop
.L0da1a7cc:
    # Line 2368
    move	$a2,$zero
    # Line 2356
    c.eq.s $f5,$f7
    bc1t .L0da1a5d0
    nop
    # Line 2368
    trunc.w.s	$f2,$f5
    mfc1	$at,$f2
    sra	$at,$at,0x1
    # Line 2370
    li	$v0,1
    ldc1	$f8,64($sp)
    # Line 2368
    beqz	$at,.L0da1a814
    move	$a3,$at
    move	$a2,$zero
.L0da1a7fc:
    sra	$a3,$a3,0x1
    addiu	$a2,$a2,1
    beqz	$a3,.L0da1a814
    sra	$a3,$a3,0x1
    bnez	$a3,.L0da1a7fc
    addiu	$a2,$a2,1
.L0da1a814:
    # Line 2370
    sllv	$v0,$v0,$a2
    mtc1	$v0,$f11
    cvt.s.w	$f11,$f11
    sub.s	$f10,$f5,$f11
    div.s	$f10,$f10,$f11
    mtc1	$a2,$f9
    cvt.s.w	$f9,$f9
    add.s	$f9,$f9,$f10
    b	.L0da1a5d0
    mul.s	$f8,$f8,$f9
.L0da1a83c:
    # Line 2253
    mov.s	$f30,$f6
    c.lt.s $f5,$f6
    movt.s	$f30,$f5,$fcc3
.L0da1a848:
    # Line 2254
    ldc1	$f12,64($sp)
    # Line 2255
    # lw $t9, -28804($gp) # &__glFloor
    # Line 2254
    sub.s	$f30,$f30,$f12
    # Line 2255
    jal	__glFloor
    mov.s	$f12,$f30
    move	$a0,$v0
    # Line 2256
    addiu	$a3,$v0,1
    sd	$zero,216($sp)
.L0da1a868:
    # Line 2259
    lwc1	$f0,36($s6)
    lw	$v1,8($s0)
    # Line 2265
    mtc1	$zero,$f13
    # Line 2259
    beq	$s8,$v1,.L0da1ad00
    mul.s	$f5,$f28,$f0
    # Line 2265
    c.lt.s $f5,$f13
    bc1t .L0da1a894
    mtc1	$zero,$f28
    # Line 2268
    mov.s	$f28,$f5
    c.lt.s $f0,$f5
    movt.s	$f28,$f0,$fcc5
.L0da1a894:
    # Line 2269
    ldc1	$f14,64($sp)
    # Line 2270
    # lw $t9, -28804($gp) # &__glFloor
    sd	$s5,72($sp)
    # Line 2269
    sub.s	$f28,$f28,$f14
    sd	$a3,248($sp)
    sd	$a0,240($sp)
    # Line 2270
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s6,$v0
    # Line 2271
    addiu	$s5,$v0,1
.L0da1a8bc:
    # Line 2274
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f30
    # Line 2275
    # lw $t9, -28808($gp) # &__glFrac
    # Line 2274
    mov.s	$f30,$f0
    # Line 2275
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 2276
    lwc1	$f12,3544($s2)
    sub.s	$f8,$f12,$f30
    li	$a4,0x8062
    li	$a5,-1
    # Line 2277
    ld	$a0,216($sp)
    sub.s	$f12,$f12,$f0
    mul.s	$f11,$f0,$f30
    li	$t0,8448
    li	$t1,7681
    # Line 2308
    ld	$a3,72($sp)
    mtc1	$zero,$f7
    # Line 2277
    li	$a7,2
    ld	$t8,240($sp)
    mul.s	$f10,$f30,$f12
    li	$t2,8449
    # Line 2308
    nor	$a3,$a3,$zero
    # Line 2277
    mul.s	$f9,$f0,$f8
    ld	$t3,248($sp)
    # Line 2308
    and	$a6,$a3,$t8
    # Line 2277
    beq	$a0,$a7,.L0da1a9f4
    mul.s	$f8,$f8,$f12
    # Line 2308
    ld	$a0,208($sp)
    nor	$a0,$a0,$zero
    and	$a2,$a0,$s6
    or	$a1,$a2,$a6
    beqz	$a1,.L0da1abe0
    # Line 2321
    ld	$t9,200($sp)
    # Line 2317
    lwc1	$f5,164($s0)
    # Line 2316
    lwc1	$f0,160($s0)
    # Line 2315
    lwc1	$f6,156($s0)
    # Line 2317
    mul.s	$f5,$f5,$f8
    # Line 2316
    mul.s	$f0,$f0,$f8
    # Line 2315
    mul.s	$f6,$f6,$f8
.L0da1a95c:
    # Line 2323
    and	$a7,$a3,$t3
    or	$a1,$a2,$a7
    # Line 2334
    and	$a2,$a0,$s5
    # Line 2323
    beqz	$a1,.L0da1ac18
    # Line 2334
    or	$a3,$a2,$a6
    # Line 2328
    lwc1	$f13,164($s0)
    # Line 2327
    lwc1	$f12,160($s0)
    # Line 2326
    lwc1	$f8,156($s0)
    # Line 2328
    madd.s	$f5,$f5,$f13,$f10
    # Line 2327
    madd.s	$f0,$f0,$f12,$f10
    # Line 2326
    madd.s	$f6,$f6,$f8,$f10
.L0da1a988:
    # Line 2334
    beqz	$a3,.L0da1ac54
    # Line 2345
    or	$a6,$a2,$a7
    # Line 2339
    lwc1	$f16,164($s0)
    # Line 2338
    lwc1	$f15,160($s0)
    # Line 2337
    lwc1	$f14,156($s0)
    # Line 2339
    madd.s	$f5,$f5,$f16,$f9
    # Line 2338
    madd.s	$f0,$f0,$f15,$f9
    # Line 2337
    madd.s	$f6,$f6,$f14,$f9
.L0da1a9a8:
    # Line 2345
    beqz	$a6,.L0da1ac90
    # Line 2354
    ld	$a1,200($sp)
    # Line 2350
    lwc1	$f19,164($s0)
    # Line 2349
    lwc1	$f18,160($s0)
    # Line 2348
    lwc1	$f17,156($s0)
    # Line 2350
    madd.s	$f5,$f5,$f19,$f11
    # Line 2349
    madd.s	$f0,$f0,$f18,$f11
    # Line 2350
    b	.L0da1a6a4
    # Line 2348
    madd.s	$f6,$f6,$f17,$f11
.L0da1a9cc:
    # Line 2469
    lwc1	$f25,30752($s2)
    mul.s	$f25,$f25,$f6
    swc1	$f25,0($s3)
    # Line 2470
    lwc1	$f23,30756($s2)
    mul.s	$f23,$f23,$f0
    swc1	$f23,4($s3)
    # Line 2471
    lwc1	$f21,30760($s2)
    mul.s	$f21,$f21,$f5
    b	.L0da1a71c
    swc1	$f21,8($s3)
.L0da1a9f4:
    # Line 2306
    ld	$v0,200($sp)
    sllv	$a1,$s6,$v0
    sllv	$v0,$s5,$v0
    addu	$a0,$a1,$t3
    addu	$a1,$a1,$t8
    sll	$ra,$a1,0x3
    ld	$v1,192($sp)
    sll	$a1,$a1,0x2
    sll	$at,$a0,0x3
    sll	$a0,$a0,0x2
    addu	$at,$at,$v1
    addu	$at,$at,$a0
    addu	$a0,$v0,$t8
    addu	$v0,$v0,$t3
    addu	$ra,$ra,$v1
    addu	$ra,$ra,$a1
    # Line 2308
    lwc1	$f5,8($at)
    # Line 2306
    sll	$t9,$a0,0x3
    # Line 2308
    lwc1	$f6,8($ra)
    # Line 2306
    sll	$a0,$a0,0x2
    addu	$t9,$t9,$v1
    sll	$a7,$v0,0x3
    addu	$t9,$t9,$a0
    sll	$v0,$v0,0x2
    addu	$a7,$a7,$v1
    # Line 2308
    mul.s	$f5,$f5,$f10
    lwc1	$f12,8($t9)
    # Line 2306
    addu	$a7,$a7,$v0
    # Line 2308
    madd.s	$f5,$f5,$f6,$f8
    lwc1	$f6,8($a7)
    # Line 2307
    lwc1	$f0,4($at)
    # Line 2308
    madd.s	$f5,$f5,$f12,$f9
    # Line 2307
    lwc1	$f1,4($ra)
    # Line 2308
    madd.s	$f5,$f5,$f6,$f11
    # Line 2306
    lwc1	$f6,0($at)
    # Line 2307
    mul.s	$f0,$f0,$f10
    # Line 2306
    lwc1	$f12,0($ra)
    # Line 2307
    madd.s	$f0,$f0,$f1,$f8
    lwc1	$f2,4($t9)
    # Line 2306
    lwc1	$f13,0($t9)
    mul.s	$f6,$f6,$f10
    # Line 2307
    lwc1	$f1,4($a7)
    # Line 2306
    madd.s	$f6,$f6,$f12,$f8
    # Line 2307
    madd.s	$f0,$f0,$f2,$f9
    # Line 2306
    lwc1	$f12,0($a7)
    madd.s	$f6,$f6,$f13,$f9
    # Line 2307
    madd.s	$f0,$f0,$f1,$f11
    # Line 2454
    bne	$s4,$t0,.L0da1a6ac
    # Line 2306
    madd.s	$f6,$f6,$f12,$f11
.L0da1aab8:
    # Line 2464
    lwc1	$f10,8($s3)
    # Line 2463
    lwc1	$f9,4($s3)
    # Line 2462
    lwc1	$f8,0($s3)
    # Line 2464
    mul.s	$f10,$f10,$f5
    # Line 2463
    mul.s	$f9,$f9,$f0
    # Line 2464
    swc1	$f10,8($s3)
    # Line 2462
    mul.s	$f8,$f8,$f6
    # Line 2463
    swc1	$f9,4($s3)
    # Line 2464
    b	.L0da1a71c
    # Line 2462
    swc1	$f8,0($s3)
.L0da1aae0:
    # Line 2397
    lw	$a1,20($s5)
    addiu	$a1,$a1,-1
    nor	$a1,$a1,$zero
    and	$a1,$s6,$a1
    bnez	$a1,.L0da1a698
    # Line 2405
    move	$a0,$zero
.L0da1aaf8:
    # Line 2407
    lw	$a3,44($s5)
    sllv	$a3,$a0,$a3
    # Line 2408
    lw	$a2,0($s5)
    # Line 2407
    addu	$a3,$s6,$a3
    # Line 2408
    sll	$a6,$a3,0x3
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a6
    addu	$a2,$a2,$a3
    # Line 2412
    lwc1	$f5,8($a2)
    # Line 2411
    lwc1	$f0,4($a2)
    b	.L0da1a6a4
    # Line 2410
    lwc1	$f6,0($a2)
.L0da1ab28:
    # Line 2415
    sll	$s5,$a3,0x2
    subu	$s5,$s5,$a3
    sll	$s5,$s5,0x3
    sdc1	$f9,8($sp)
    addu	$s5,$s5,$a3
    sdc1	$f5,0($sp)
    sll	$s5,$s5,0x2
    sd	$s5,184($sp)
    addu	$s5,$s5,$s6
    # Line 2416
    beq	$s8,$a0,.L0da1ae68
    lwc1	$f30,32($s5)
    # Line 2420
    lw	$a2,20($s5)
    # Line 2421
    mul.s	$f11,$f0,$f30
    trunc.w.s	$f11,$f11
    mfc1	$a0,$f11
    # Line 2423
    addiu	$t9,$a2,-1
    # Line 2421
    slt	$t8,$a0,$a2
    bltz	$a0,.L0da1ae60
    move	$s6,$a0
    movz	$s6,$t9,$t8
.L0da1ab78:
    # Line 2425
    lw	$ra,8($s0)
    # Line 2429
    lw	$a2,24($s5)
    # Line 2425
    lwc1	$f30,36($s5)
    beq	$s8,$ra,.L0da1ae9c
    # Line 2432
    addiu	$v0,$a2,-1
    # Line 2430
    mul.s	$f12,$f28,$f30
    trunc.w.s	$f12,$f12
    mfc1	$a3,$f12
    slt	$at,$a3,$a2
    bltz	$a3,.L0da1ad4c
    move	$a0,$a3
    movz	$a0,$v0,$at
.L0da1aba8:
    # Line 2432
    lw	$a1,20($s5)
    addiu	$v1,$a2,-1
    addiu	$a1,$a1,-1
    nor	$v1,$v1,$zero
    nor	$a1,$a1,$zero
    and	$v1,$a0,$v1
    and	$a1,$s6,$a1
    or	$v1,$v1,$a1
    beqz	$v1,.L0da1ad64
    nop
.L0da1abd0:
    # Line 2438
    lwc1	$f5,164($s0)
    # Line 2437
    lwc1	$f0,160($s0)
    # Line 2438
    b	.L0da1a6a4
    # Line 2436
    lwc1	$f6,156($s0)
.L0da1abe0:
    # Line 2321
    sllv	$t9,$s6,$t9
    ld	$a7,192($sp)
    addu	$t9,$t8,$t9
    sll	$ra,$t9,0x3
    sll	$t9,$t9,0x2
    addu	$a7,$a7,$ra
    addu	$a7,$a7,$t9
    # Line 2323
    lwc1	$f5,8($a7)
    # Line 2322
    lwc1	$f0,4($a7)
    # Line 2321
    lwc1	$f6,0($a7)
    # Line 2323
    mul.s	$f5,$f5,$f8
    # Line 2322
    mul.s	$f0,$f0,$f8
    b	.L0da1a95c
    # Line 2321
    mul.s	$f6,$f6,$f8
.L0da1ac18:
    # Line 2332
    ld	$at,200($sp)
    sllv	$at,$s6,$at
    ld	$ra,192($sp)
    addu	$at,$t3,$at
    sll	$v0,$at,0x3
    sll	$at,$at,0x2
    addu	$ra,$ra,$v0
    addu	$ra,$ra,$at
    # Line 2334
    lwc1	$f13,8($ra)
    # Line 2333
    lwc1	$f12,4($ra)
    # Line 2332
    lwc1	$f8,0($ra)
    # Line 2334
    madd.s	$f5,$f5,$f13,$f10
    # Line 2333
    madd.s	$f0,$f0,$f12,$f10
    b	.L0da1a988
    # Line 2332
    madd.s	$f6,$f6,$f8,$f10
.L0da1ac54:
    # Line 2343
    ld	$v1,200($sp)
    sllv	$v1,$s5,$v1
    ld	$v0,192($sp)
    addu	$v1,$t8,$v1
    sll	$a0,$v1,0x3
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$a0
    addu	$v0,$v0,$v1
    # Line 2345
    lwc1	$f16,8($v0)
    # Line 2344
    lwc1	$f15,4($v0)
    # Line 2343
    lwc1	$f14,0($v0)
    # Line 2345
    madd.s	$f5,$f5,$f16,$f9
    # Line 2344
    madd.s	$f0,$f0,$f15,$f9
    b	.L0da1a9a8
    # Line 2343
    madd.s	$f6,$f6,$f14,$f9
.L0da1ac90:
    # Line 2354
    sllv	$a1,$s5,$a1
    ld	$a0,192($sp)
    addu	$a1,$t3,$a1
    sll	$a2,$a1,0x3
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a2
    addu	$a0,$a0,$a1
    # Line 2356
    lwc1	$f19,8($a0)
    # Line 2355
    lwc1	$f18,4($a0)
    # Line 2354
    lwc1	$f17,0($a0)
    # Line 2356
    madd.s	$f5,$f5,$f19,$f11
    # Line 2355
    madd.s	$f0,$f0,$f18,$f11
    b	.L0da1a6a4
    # Line 2354
    madd.s	$f6,$f6,$f17,$f11
.L0da1acc8:
    # Line 2388
    b	.L0da1a640
    move	$s6,$zero
.L0da1acd0:
    # Line 2247
    ldc1	$f30,64($sp)
    msub.s	$f30,$f30,$f0,$f5
    # Line 2248
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f30
    # Line 2249
    li	$a4,1
    # Line 2248
    and	$a3,$v0,$s5
    move	$a0,$a3
    # Line 2249
    addiu	$a3,$a3,1
    sd	$a4,216($sp)
    b	.L0da1a868
    and	$a3,$s5,$a3
.L0da1ad00:
    # Line 2262
    ldc1	$f31,64($sp)
    msub.s	$f31,$f31,$f28,$f0
    sd	$s5,72($sp)
    # Line 2263
    # lw $t9, -28804($gp) # &__glFloor
    sd	$a3,248($sp)
    sd	$a0,240($sp)
    sdc1	$f31,232($sp)
    jal	__glFloor
    mov.s	$f12,$f31
    # Line 2265
    ld	$t9,216($sp)
    # Line 2263
    ld	$s5,208($sp)
    # Line 2265
    addiu	$t9,$t9,1
    # Line 2263
    and	$t8,$v0,$s5
    ldc1	$f28,232($sp)
    move	$s6,$t8
    # Line 2264
    addiu	$t8,$t8,1
    # Line 2265
    sd	$t9,216($sp)
    b	.L0da1a8bc
    # Line 2264
    and	$s5,$s5,$t8
.L0da1ad4c:
    # Line 2430
    lw	$ra,20($s5)
    addiu	$ra,$ra,-1
    nor	$ra,$ra,$zero
    and	$ra,$s6,$ra
    bnez	$ra,.L0da1abd0
    # Line 2438
    move	$a0,$zero
.L0da1ad64:
    # Line 2440
    lw	$a1,44($s5)
    # Line 2447
    ld	$v1,184($sp)
    lw	$at,228($s0)
    # Line 2450
    sra	$a2,$a0,0x1
    # Line 2440
    sllv	$a1,$a0,$a1
    # Line 2447
    addu	$at,$at,$v1
    # Line 2450
    sra	$v1,$s6,0x1
    # Line 2440
    addu	$a1,$s6,$a1
    # Line 2441
    sll	$a6,$a1,0x3
    # Line 2450
    lw	$a3,144($at)
    # Line 2441
    lw	$v0,0($s5)
    sll	$a1,$a1,0x2
    # Line 2450
    sllv	$a2,$a2,$a3
    # Line 2451
    lw	$at,100($at)
    # Line 2441
    addu	$v0,$v0,$a6
    # Line 2450
    addu	$v1,$v1,$a2
    # Line 2454
    ldc1	$f9,8($sp)
    # Line 2441
    addu	$v0,$v0,$a1
    # Line 2451
    sll	$a1,$v1,0x3
    # Line 2444
    ldc1	$f10,0($sp)
    # Line 2451
    sll	$v1,$v1,0x2
    addu	$at,$at,$a1
    # Line 2444
    lwc1	$f5,8($v0)
    # Line 2451
    addu	$at,$at,$v1
    # Line 2454
    lwc1	$f6,8($at)
    # Line 2443
    lwc1	$f0,4($v0)
    # Line 2453
    lwc1	$f1,4($at)
    # Line 2444
    mul.s	$f5,$f5,$f10
    # Line 2454
    madd.s	$f5,$f5,$f6,$f9
    # Line 2442
    lwc1	$f6,0($v0)
    # Line 2443
    mul.s	$f0,$f0,$f10
    # Line 2452
    lwc1	$f8,0($at)
    # Line 2453
    madd.s	$f0,$f0,$f1,$f9
    # Line 2442
    mul.s	$f6,$f6,$f10
    b	.L0da1a6a4
    # Line 2452
    madd.s	$f6,$f6,$f8,$f9
.L0da1adf4:
    # Line 2385
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f0
    mul.s	$f6,$f0,$f30
    li	$a4,0x8062
    li	$a5,-1
    li	$t0,8448
    trunc.w.s	$f6,$f6
    li	$t1,7681
    mtc1	$zero,$f7
    li	$t2,8449
    b	.L0da1a640
    mfc1	$s6,$f6
.L0da1ae28:
    # Line 2394
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f28
    mul.s	$f8,$f0,$f30
    li	$a4,0x8062
    li	$a5,-1
    li	$t0,8448
    trunc.w.s	$f8,$f8
    li	$t1,7681
    mtc1	$zero,$f7
    li	$t2,8449
    lw	$a2,24($s5)
    b	.L0da1a670
    mfc1	$a0,$f8
.L0da1ae60:
    # Line 2421
    b	.L0da1ab78
    move	$s6,$zero
.L0da1ae68:
    # Line 2418
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f0
    mul.s	$f9,$f0,$f30
    li	$a4,0x8062
    li	$a5,-1
    li	$t0,8448
    trunc.w.s	$f9,$f9
    li	$t1,7681
    mtc1	$zero,$f7
    li	$t2,8449
    b	.L0da1ab78
    mfc1	$s6,$f9
.L0da1ae9c:
    # Line 2427
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f28
    mul.s	$f10,$f0,$f30
    li	$a4,0x8062
    li	$a5,-1
    li	$t0,8448
    trunc.w.s	$f10,$f10
    li	$t1,7681
    mtc1	$zero,$f7
    li	$t2,8449
    lw	$a2,24($s5)
    b	.L0da1aba8
    mfc1	$a0,$f10
.L0da1aed4:
    # Line 2500
    ld	$gp,160($sp)
    ld	$s0,128($sp)
    ld	$s1,96($sp)
    ld	$s2,152($sp)
    ld	$s3,144($sp)
    ld	$s4,136($sp)
    ld	$s5,104($sp)
    ld	$s6,80($sp)
    ld	$s7,112($sp)
    ld	$s8,120($sp)
    ldc1	$f20,56($sp)
    ldc1	$f22,40($sp)
    ldc1	$f24,32($sp)
    ld	$ra,88($sp)
    ldc1	$f26,48($sp)
    move	$v0,$zero
    ldc1	$f28,16($sp)
    ldc1	$f30,24($sp)
    jr	$ra
    addiu	$sp,$sp,256
    nop
    nop
    nop
.L0da1af30:
    # Line 2372
    mtc1	$zero,$f8
    b	.L0da1a754
    # Line 2225
    ld	$a3,224($sp)
.end __glTextureRGB_L_NML_StippledSpan

# Function: __glTextureRGB_L_LML_Span
# Declared: Line 2510 (Source lines: 2511-3080)
# Address: 0x0da1af40 - 0x0da1c128 (Size: 4584 bytes, Frame: 240)
.globl __glTextureRGB_L_LML_Span
.ent __glTextureRGB_L_LML_Span
__glTextureRGB_L_LML_Span:
    # Line 2540
    lwc1	$f6,30236($a0)
    # Line 2539
    lwc1	$f7,30228($a0)
    # Line 2538
    lwc1	$f8,30224($a0)
    # Line 2511
    addiu	$sp,$sp,-240
    sdc1	$f30,48($sp)
    # Line 2541
    lwc1	$f30,30240($a0)
    # Line 2511
    sd	$s3,144($sp)
    # Line 2536
    lw	$s3,30464($a0)
    # Line 2511
    sd	$s0,128($sp)
    # Line 2534
    lw	$s0,28208($a0)
    sdc1	$f28,40($sp)
    sdc1	$f24,32($sp)
    sdc1	$f22,24($sp)
    sdc1	$f26,16($sp)
    sdc1	$f20,8($sp)
    sd	$s7,112($sp)
    sd	$s5,104($sp)
    sd	$s4,96($sp)
    sd	$ra,88($sp)
    sd	$s8,80($sp)
    sd	$s6,72($sp)
    sd	$gp,136($sp)
    # Line 2511
    sd	$s1,120($sp)
    # Line 2543
    lw	$a2,30248($a0)
    # Line 2519
    lwc1	$f0,3540($a0)
    # Line 2543
    addiu	$at,$a2,-1
    sd	$at,192($sp)
    # Line 2511
    sd	$s2,152($sp)
    lui	$v0,0x3
    # Line 2532
    lw	$s2,2484($a0)
    # Line 2511
    move	$s1,$a0
    addiu	$v0,$v0,24140
    # Line 2519
    sdc1	$f0,64($sp)
    # Line 2511
    addu	$gp,$t9,$v0
    # Line 2543
    bltz	$at,.L0da1bff8
    # Line 2532
    lw	$s2,0($s2)
    b	.L0da1b1b4
    # Line 2543
    mtc1	$zero,$f9
    nop
    nop
.L0da1afe0:
    # Line 2584
    c.lt.s	$f5,$f0
    movt.s	$f26,$f5,$fcc0
.L0da1afe8:
    # Line 2585
    ldc1	$f1,64($sp)
    # Line 2586
    # lw $t9, -28804($gp) # &__glFloor
    # Line 2585
    sub.s	$f26,$f26,$f1
    # Line 2586
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s5,$v0
    # Line 2587
    addiu	$s4,$v0,1
.L0da1b004:
    # Line 2590
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 2591
    # lw $t9, -28808($gp) # &__glFrac
    # Line 2590
    mov.s	$f20,$f0
    # Line 2591
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 2592
    lwc1	$f5,3544($s1)
    # Line 2593
    sub.s	$f14,$f5,$f0
    mul.s	$f12,$f0,$f20
    ld	$v1,168($sp)
    # Line 2592
    sub.s	$f13,$f5,$f20
    ldc1	$f6,232($sp)
    # Line 2593
    li	$a5,2
    mul.s	$f10,$f20,$f14
    ldc1	$f7,224($sp)
    mtc1	$zero,$f9
    mul.s	$f11,$f0,$f13
    ldc1	$f8,216($sp)
    beq	$v1,$a5,.L0da1b520
    mul.s	$f13,$f13,$f14
    # Line 2624
    ld	$a0,200($sp)
    nor	$a3,$s8,$zero
    nor	$a0,$a0,$zero
    and	$a4,$a3,$s7
    and	$a2,$a0,$s5
    or	$a1,$a2,$a4
    beqz	$a1,.L0da1b9f8
    # Line 2637
    ld	$a6,176($sp)
    # Line 2633
    lwc1	$f24,164($s0)
    # Line 2632
    lwc1	$f22,160($s0)
    # Line 2631
    lwc1	$f20,156($s0)
    # Line 2633
    mul.s	$f24,$f24,$f13
    # Line 2632
    mul.s	$f22,$f22,$f13
    # Line 2631
    mul.s	$f20,$f20,$f13
.L0da1b090:
    # Line 2639
    and	$a5,$a3,$s6
    or	$a1,$a2,$a5
    beqz	$a1,.L0da1ba30
    # Line 2648
    ld	$t0,176($sp)
    # Line 2644
    lwc1	$f29,164($s0)
    # Line 2643
    lwc1	$f27,160($s0)
    # Line 2642
    lwc1	$f25,156($s0)
    # Line 2644
    madd.s	$f24,$f24,$f29,$f10
    # Line 2643
    madd.s	$f22,$f22,$f27,$f10
    # Line 2642
    madd.s	$f20,$f20,$f25,$f10
.L0da1b0b8:
    # Line 2650
    and	$a2,$a0,$s4
    or	$a3,$a2,$a4
    beqz	$a3,.L0da1ba68
    # Line 2659
    ld	$t2,176($sp)
    # Line 2655
    lwc1	$f1,164($s0)
    # Line 2654
    lwc1	$f0,160($s0)
    # Line 2653
    lwc1	$f31,156($s0)
    # Line 2655
    madd.s	$f24,$f24,$f1,$f11
    # Line 2654
    madd.s	$f22,$f22,$f0,$f11
    # Line 2653
    madd.s	$f20,$f20,$f31,$f11
.L0da1b0e0:
    # Line 2661
    or	$a4,$a2,$a5
    beqz	$a4,.L0da1baa0
    # Line 2670
    ld	$t8,176($sp)
    # Line 2666
    lwc1	$f4,164($s0)
    # Line 2665
    lwc1	$f3,160($s0)
    # Line 2664
    lwc1	$f2,156($s0)
    # Line 2666
    madd.s	$f24,$f24,$f4,$f12
    # Line 2665
    madd.s	$f22,$f22,$f3,$f12
    # Line 2664
    madd.s	$f20,$f20,$f2,$f12
.L0da1b104:
    # Line 3040
    li	$a5,8448
    beq	$s2,$a5,.L0da1b5e8
.L0da1b10c:
    # Line 3053
    li	$a6,0x8062
    beq	$s2,$a6,.L0da1b4f8
    li	$a7,7681
    beq	$s2,$a7,.L0da1b4f8
    li	$t0,8449
    beq	$s2,$t0,.L0da1b4f8
    nop
    # Line 3064
    lw	$t1,2484($s1)
    # Line 3066
    lwc1	$f16,4($t1)
    lwc1	$f17,0($s3)
    sub.s	$f18,$f5,$f20
    mul.s	$f16,$f16,$f20
    madd.s	$f16,$f16,$f17,$f18
    swc1	$f16,0($s3)
    # Line 3067
    lwc1	$f15,3544($s1)
    lwc1	$f13,8($t1)
    lwc1	$f14,4($s3)
    sub.s	$f15,$f15,$f22
    mul.s	$f13,$f13,$f22
    madd.s	$f13,$f13,$f14,$f15
    swc1	$f13,4($s3)
    # Line 3068
    lwc1	$f12,3544($s1)
    lwc1	$f10,12($t1)
    lwc1	$f11,8($s3)
    sub.s	$f12,$f12,$f24
    mul.s	$f10,$f10,$f24
    madd.s	$f10,$f10,$f11,$f12
    swc1	$f10,8($s3)
.L0da1b17c:
    # Line 3074
    lwc1	$f18,30384($s1)
    # Line 3076
    lwc1	$f21,30396($s1)
    # Line 3075
    lwc1	$f19,30392($s1)
    # Line 2543
    ld	$t2,192($sp)
    # Line 3073
    lwc1	$f17,30380($s1)
    # Line 3076
    add.s	$f30,$f21,$f30
    # Line 2543
    li	$t3,-1
    # Line 3075
    add.s	$f6,$f19,$f6
    # Line 2543
    addiu	$t2,$t2,-1
    # Line 3074
    add.s	$f7,$f18,$f7
    # Line 3077
    addiu	$s3,$s3,16
    # Line 2543
    sd	$t2,192($sp)
    beq	$t2,$t3,.L0da1bff8
    # Line 3073
    add.s	$f8,$f17,$f8
.L0da1b1b4:
    # Line 2544
    lwc1	$f5,3544($s1)
    div.s	$f22,$f5,$f6
    lwc1	$f23,240($s0)
    mul.s	$f0,$f30,$f22
    c.le.s $f0,$f23
    lw	$a3,4($s0)
    mul.s	$f20,$f7,$f22
    lw	$s4,228($s0)
    bc1f .L0da1b230
    mul.s	$f22,$f8,$f22
    # Line 2555
    lw	$ra,44($s4)
    # Line 2556
    lw	$v0,0($s4)
    sd	$v0,184($sp)
    # Line 2558
    lw	$at,24($s4)
    # Line 2560
    lwc1	$f5,32($s4)
    li	$s5,10497
    # Line 2557
    lw	$s8,20($s4)
    # Line 2555
    sd	$ra,176($sp)
    # Line 2558
    addiu	$at,$at,-1
    sd	$at,200($sp)
    # Line 2557
    addiu	$s8,$s8,-1
    # Line 2560
    beq	$s5,$a3,.L0da1bbc8
    mul.s	$f0,$f22,$f5
    # Line 2565
    c.lt.s $f0,$f9
    bc1f .L0da1b334
    # Line 2569
    mov.s	$f28,$f0
    sdc1	$f8,216($sp)
    # Line 2565
    mtc1	$zero,$f28
    sdc1	$f7,224($sp)
    b	.L0da1b348
    sdc1	$f6,232($sp)
.L0da1b230:
    # Line 2672
    c.eq.s $f0,$f9
    # Line 2684
    move	$a2,$zero
    # Line 2672
    bc1t .L0da1b29c
    # Line 2688
    mtc1	$zero,$f10
    # Line 2684
    trunc.w.s	$f25,$f0
    mfc1	$v1,$f25
    sra	$v1,$v1,0x1
    # Line 2686
    ldc1	$f10,64($sp)
    # Line 2684
    beqz	$v1,.L0da1b274
    move	$a0,$v1
    move	$a2,$zero
.L0da1b25c:
    sra	$a0,$a0,0x1
    addiu	$a2,$a2,1
    beqz	$a0,.L0da1b274
    sra	$a0,$a0,0x1
    bnez	$a0,.L0da1b25c
    addiu	$a2,$a2,1
.L0da1b274:
    # Line 2686
    li	$a0,1
    sllv	$a0,$a0,$a2
    mtc1	$a0,$f13
    cvt.s.w	$f13,$f13
    sub.s	$f12,$f0,$f13
    div.s	$f12,$f12,$f13
    mtc1	$a2,$f11
    cvt.s.w	$f11,$f11
    add.s	$f11,$f11,$f12
    mul.s	$f10,$f10,$f11
.L0da1b29c:
    # Line 2696
    trunc.w.s	$f11,$f10
    mfc1	$a2,$f11
    cvt.s.w	$f11,$f11
    # Line 2692
    lw	$a0,236($s0)
    # Line 2696
    addiu	$a4,$a2,1
    slt	$a1,$a0,$a4
    slti	$a4,$a4,0
    sub.s	$f11,$f10,$f11
    or	$a1,$a1,$a4
    beqz	$a1,.L0da1b610
    sub.s	$f24,$f5,$f11
    # Line 2699
    sll	$s5,$a0,0x2
    subu	$s5,$s5,$a0
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$a0
    sll	$s5,$s5,0x2
    addu	$s5,$s4,$s5
    # Line 2700
    lw	$ra,44($s5)
    # Line 2701
    lw	$v0,0($s5)
    sd	$v0,184($sp)
    # Line 2703
    lw	$at,24($s5)
    # Line 2705
    lwc1	$f5,32($s5)
    li	$a5,10497
    # Line 2702
    lw	$s8,20($s5)
    # Line 2700
    sd	$ra,176($sp)
    # Line 2703
    addiu	$at,$at,-1
    sd	$at,200($sp)
    # Line 2702
    addiu	$s8,$s8,-1
    # Line 2705
    beq	$a5,$a3,.L0da1bc3c
    mul.s	$f0,$f22,$f5
    # Line 2710
    c.lt.s $f0,$f9
    bc1f .L0da1b390
    # Line 2713
    mov.s	$f28,$f0
    sdc1	$f8,216($sp)
    # Line 2710
    mtc1	$zero,$f28
    sdc1	$f7,224($sp)
    b	.L0da1b3a4
    sdc1	$f6,232($sp)
.L0da1b334:
    sdc1	$f8,216($sp)
    # Line 2569
    c.lt.s $f5,$f0
    sdc1	$f7,224($sp)
    sdc1	$f6,232($sp)
    movt.s	$f28,$f5,$fcc5
.L0da1b348:
    # Line 2570
    ldc1	$f12,64($sp)
    # Line 2571
    # lw $t9, -28804($gp) # &__glFloor
    # Line 2570
    sub.s	$f28,$f28,$f12
    # Line 2571
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s7,$v0
    # Line 2572
    addiu	$s6,$v0,1
    sd	$zero,168($sp)
.L0da1b368:
    # Line 2575
    lwc1	$f5,36($s4)
    lw	$t8,8($s0)
    beq	$s5,$t8,.L0da1bc04
    mul.s	$f0,$f20,$f5
    # Line 2581
    mtc1	$zero,$f13
    c.lt.s $f0,$f13
    bc1f .L0da1afe0
    # Line 2584
    mov.s	$f26,$f0
    # Line 2581
    b	.L0da1afe8
    mtc1	$zero,$f26
.L0da1b390:
    sdc1	$f8,216($sp)
    # Line 2713
    c.lt.s $f5,$f0
    sdc1	$f7,224($sp)
    sdc1	$f6,232($sp)
    movt.s	$f28,$f5,$fcc7
.L0da1b3a4:
    # Line 2714
    ldc1	$f14,64($sp)
    # Line 2715
    # lw $t9, -28804($gp) # &__glFloor
    # Line 2714
    sub.s	$f28,$f28,$f14
    # Line 2715
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s7,$v0
    # Line 2716
    addiu	$s6,$v0,1
.L0da1b3c0:
    # Line 2719
    lwc1	$f5,36($s5)
    lw	$ra,8($s0)
    li	$t9,10497
    beq	$t9,$ra,.L0da1bc70
    mul.s	$f0,$f20,$f5
    # Line 2724
    mtc1	$zero,$f15
    c.lt.s	$f0,$f15
    bc1f	.L0da1b3ec
    # Line 2727
    mov.s	$f26,$f0
    # Line 2724
    b	.L0da1b3f4
    mtc1	$zero,$f26
.L0da1b3ec:
    # Line 2727
    c.lt.s $f5,$f0
    movt.s	$f26,$f5,$fcc1
.L0da1b3f4:
    # Line 2728
    ldc1	$f16,64($sp)
    # Line 2729
    # lw $t9, -28804($gp) # &__glFloor
    # Line 2728
    sub.s	$f26,$f26,$f16
    # Line 2729
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s5,$v0
    # Line 2730
    addiu	$s4,$v0,1
.L0da1b410:
    # Line 2733
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 2734
    # lw $t9, -28808($gp) # &__glFrac
    # Line 2733
    mov.s	$f28,$f0
    # Line 2734
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 2735
    lwc1	$f5,3544($s1)
    # Line 2736
    ld	$a0,200($sp)
    nor	$a3,$s8,$zero
    nor	$a0,$a0,$zero
    and	$a4,$a3,$s7
    sub.s	$f11,$f5,$f0
    and	$a2,$a0,$s5
    ldc1	$f6,232($sp)
    # Line 2735
    sub.s	$f12,$f5,$f28
    # Line 2736
    or	$at,$a2,$a4
    ldc1	$f7,224($sp)
    mtc1	$zero,$f9
    ldc1	$f8,216($sp)
    beqz	$at,.L0da1bad8
    mul.s	$f13,$f12,$f11
    # Line 2749
    lwc1	$f24,164($s0)
    # Line 2748
    lwc1	$f22,160($s0)
    # Line 2747
    lwc1	$f20,156($s0)
    # Line 2749
    mul.s	$f24,$f24,$f13
    # Line 2748
    mul.s	$f22,$f22,$f13
    # Line 2747
    mul.s	$f20,$f20,$f13
.L0da1b480:
    # Line 2755
    and	$a5,$a3,$s6
    or	$a1,$a2,$a5
    beqz	$a1,.L0da1bb14
    mul.s	$f10,$f28,$f11
    # Line 2760
    lwc1	$f29,164($s0)
    # Line 2759
    lwc1	$f27,160($s0)
    # Line 2758
    lwc1	$f25,156($s0)
    # Line 2760
    madd.s	$f24,$f24,$f29,$f10
    # Line 2759
    madd.s	$f22,$f22,$f27,$f10
    # Line 2758
    madd.s	$f20,$f20,$f25,$f10
.L0da1b4a8:
    # Line 2766
    and	$a2,$a0,$s4
    or	$a3,$a2,$a4
    beqz	$a3,.L0da1bb50
    mul.s	$f11,$f0,$f12
    # Line 2771
    lwc1	$f2,164($s0)
    # Line 2770
    lwc1	$f1,160($s0)
    # Line 2769
    lwc1	$f31,156($s0)
    # Line 2771
    madd.s	$f24,$f24,$f2,$f11
    # Line 2770
    madd.s	$f22,$f22,$f1,$f11
    # Line 2769
    madd.s	$f20,$f20,$f31,$f11
.L0da1b4d0:
    # Line 2777
    or	$a4,$a2,$a5
    beqz	$a4,.L0da1bb8c
    mul.s	$f12,$f0,$f28
    # Line 2782
    lwc1	$f10,164($s0)
    # Line 2781
    lwc1	$f4,160($s0)
    # Line 2780
    lwc1	$f3,156($s0)
    # Line 2782
    madd.s	$f24,$f24,$f10,$f12
    # Line 2781
    madd.s	$f22,$f22,$f4,$f12
    # Line 2782
    b	.L0da1b104
    # Line 2780
    madd.s	$f20,$f20,$f3,$f12
.L0da1b4f8:
    # Line 3056
    lwc1	$f13,30752($s1)
    mul.s	$f13,$f13,$f20
    swc1	$f13,0($s3)
    # Line 3057
    lwc1	$f12,30756($s1)
    mul.s	$f12,$f12,$f22
    swc1	$f12,4($s3)
    # Line 3058
    lwc1	$f11,30760($s1)
    mul.s	$f11,$f11,$f24
    b	.L0da1b17c
    swc1	$f11,8($s3)
.L0da1b520:
    # Line 2622
    ld	$t2,176($sp)
    sllv	$t9,$s5,$t2
    sllv	$t2,$s4,$t2
    addu	$t8,$t9,$s6
    addu	$t9,$t9,$s7
    sll	$t0,$t9,0x3
    ld	$t3,184($sp)
    sll	$t9,$t9,0x2
    sll	$t1,$t8,0x3
    sll	$t8,$t8,0x2
    addu	$t1,$t1,$t3
    addu	$t1,$t1,$t8
    addu	$t8,$t2,$s7
    lwc1	$f20,0($t1)
    addu	$t2,$t2,$s6
    addu	$t0,$t0,$t3
    addu	$t0,$t0,$t9
    # Line 2624
    lwc1	$f24,8($t1)
    # Line 2622
    sll	$a7,$t8,0x3
    # Line 2624
    lwc1	$f25,8($t0)
    # Line 2622
    sll	$t8,$t8,0x2
    addu	$a7,$a7,$t3
    # Line 2623
    lwc1	$f22,4($t1)
    # Line 2622
    mul.s	$f20,$f20,$f10
    sll	$a6,$t2,0x3
    addu	$a7,$a7,$t8
    sll	$t2,$t2,0x2
    addu	$a6,$a6,$t3
    # Line 2624
    mul.s	$f24,$f24,$f10
    lwc1	$f27,8($a7)
    # Line 2623
    lwc1	$f23,4($t0)
    # Line 2622
    addu	$a6,$a6,$t2
    # Line 2624
    madd.s	$f24,$f24,$f25,$f13
    # Line 2623
    mul.s	$f22,$f22,$f10
    # Line 2624
    lwc1	$f25,8($a6)
    # Line 2622
    lwc1	$f21,0($t0)
    # Line 2624
    madd.s	$f24,$f24,$f27,$f11
    # Line 2623
    madd.s	$f22,$f22,$f23,$f13
    lwc1	$f27,4($a7)
    # Line 2624
    madd.s	$f24,$f24,$f25,$f12
    # Line 2622
    lwc1	$f25,0($a7)
    # Line 2623
    lwc1	$f23,4($a6)
    # Line 2622
    madd.s	$f20,$f20,$f21,$f13
    lwc1	$f21,0($a6)
    # Line 2623
    madd.s	$f22,$f22,$f27,$f11
    # Line 3040
    li	$a5,8448
    # Line 2622
    madd.s	$f20,$f20,$f25,$f11
    # Line 2623
    madd.s	$f22,$f22,$f23,$f12
    # Line 3040
    bne	$s2,$a5,.L0da1b10c
    # Line 2622
    madd.s	$f20,$f20,$f21,$f12
.L0da1b5e8:
    # Line 3051
    lwc1	$f29,8($s3)
    # Line 3050
    lwc1	$f27,4($s3)
    # Line 3049
    lwc1	$f25,0($s3)
    # Line 3051
    mul.s	$f29,$f29,$f24
    # Line 3050
    mul.s	$f27,$f27,$f22
    # Line 3051
    swc1	$f29,8($s3)
    # Line 3049
    mul.s	$f25,$f25,$f20
    # Line 3050
    swc1	$f27,4($s3)
    # Line 3051
    b	.L0da1b17c
    # Line 3049
    swc1	$f25,0($s3)
.L0da1b610:
    # Line 2798
    sll	$s5,$a2,0x2
    subu	$s5,$s5,$a2
    sll	$s5,$s5,0x3
    addu	$s5,$s5,$a2
    sdc1	$f11,0($sp)
    sll	$s5,$s5,0x2
    sd	$s5,160($sp)
    addu	$s5,$s5,$s4
    # Line 2799
    lw	$ra,44($s5)
    # Line 2800
    lw	$v0,0($s5)
    sd	$v0,184($sp)
    # Line 2802
    lw	$at,24($s5)
    # Line 2804
    lwc1	$f5,32($s5)
    li	$t9,10497
    # Line 2801
    lw	$s8,20($s5)
    # Line 2809
    mtc1	$zero,$f28
    # Line 2799
    sd	$ra,176($sp)
    # Line 2802
    addiu	$at,$at,-1
    sd	$at,200($sp)
    # Line 2801
    addiu	$s8,$s8,-1
    # Line 2804
    beq	$t9,$a3,.L0da1c048
    mul.s	$f0,$f22,$f5
    # Line 2809
    c.lt.s $f0,$f9
    bc1f .L0da1b684
    nop
    sdc1	$f8,216($sp)
    sdc1	$f7,224($sp)
    b	.L0da1b69c
    sdc1	$f6,232($sp)
.L0da1b684:
    sdc1	$f8,216($sp)
    # Line 2813
    mov.s	$f28,$f0
    c.lt.s $f5,$f0
    sdc1	$f7,224($sp)
    sdc1	$f6,232($sp)
    movt.s	$f28,$f5,$fcc3
.L0da1b69c:
    # Line 2814
    ldc1	$f31,64($sp)
    # Line 2815
    # lw $t9, -28804($gp) # &__glFloor
    # Line 2814
    sub.s	$f28,$f28,$f31
    # Line 2815
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s7,$v0
    # Line 2816
    addiu	$s6,$v0,1
    sd	$zero,168($sp)
.L0da1b6bc:
    # Line 2819
    lwc1	$f5,36($s5)
    lw	$t9,8($s0)
    li	$t8,10497
    # Line 2825
    mtc1	$zero,$f1
    # Line 2819
    beq	$t8,$t9,.L0da1c084
    mul.s	$f0,$f20,$f5
    # Line 2825
    c.lt.s $f0,$f1
    bc1f .L0da1b6e8
    # Line 2828
    mov.s	$f26,$f0
    # Line 2825
    b	.L0da1b6f0
    mtc1	$zero,$f26
.L0da1b6e8:
    # Line 2828
    c.lt.s $f5,$f0
    movt.s	$f26,$f5,$fcc5
.L0da1b6f0:
    # Line 2829
    ldc1	$f2,64($sp)
    # Line 2830
    # lw $t9, -28804($gp) # &__glFloor
    # Line 2829
    sub.s	$f26,$f26,$f2
    # Line 2830
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s5,$v0
    # Line 2831
    addiu	$s4,$v0,1
.L0da1b70c:
    # Line 2834
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 2835
    # lw $t9, -28808($gp) # &__glFrac
    # Line 2834
    mov.s	$f28,$f0
    # Line 2835
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 2836
    lwc1	$f9,3544($s1)
    # Line 2837
    mul.s	$f6,$f28,$f24
    # Line 2868
    ld	$a0,200($sp)
    # Line 2837
    li	$at,2
    # Line 2836
    sub.s	$f7,$f9,$f28
    # Line 2837
    mul.s	$f8,$f0,$f6
    # Line 2868
    nor	$a3,$s8,$zero
    nor	$a0,$a0,$zero
    # Line 2837
    sub.s	$f9,$f9,$f0
    ld	$ra,168($sp)
    # Line 2868
    and	$a4,$a3,$s7
    and	$a2,$a0,$s5
    # Line 2837
    mul.s	$f7,$f7,$f24
    # Line 2883
    and	$a5,$a3,$s6
    # Line 2868
    or	$v0,$a2,$a4
    # Line 2837
    mul.s	$f6,$f6,$f9
    # Line 2883
    or	$a1,$a2,$a5
    # Line 2894
    and	$a2,$a0,$s4
    # Line 2837
    mul.s	$f5,$f0,$f7
    # Line 2928
    lw	$a6,4($s0)
    # Line 2894
    or	$a3,$a2,$a4
    # Line 2837
    beq	$ra,$at,.L0da1bc9c
    mul.s	$f7,$f7,$f9
    sdc1	$f22,208($sp)
    ldc1	$f9,208($sp)
    # Line 2868
    beqz	$v0,.L0da1be30
    sdc1	$f20,56($sp)
    # Line 2877
    lwc1	$f24,164($s0)
    # Line 2876
    lwc1	$f22,160($s0)
    # Line 2875
    lwc1	$f20,156($s0)
    # Line 2877
    mul.s	$f24,$f24,$f7
    # Line 2876
    mul.s	$f22,$f22,$f7
    # Line 2875
    mul.s	$f20,$f20,$f7
.L0da1b7ac:
    # Line 2905
    or	$a4,$a2,$a5
    # Line 2883
    beqz	$a1,.L0da1be70
    # Line 2892
    ld	$t8,176($sp)
    # Line 2888
    lwc1	$f29,164($s0)
    # Line 2887
    lwc1	$f27,160($s0)
    # Line 2886
    lwc1	$f25,156($s0)
    # Line 2888
    madd.s	$f24,$f24,$f29,$f6
    # Line 2887
    madd.s	$f22,$f22,$f27,$f6
    # Line 2886
    madd.s	$f20,$f20,$f25,$f6
.L0da1b7d0:
    # Line 2894
    beqz	$a3,.L0da1bea8
    # Line 2903
    ld	$ra,176($sp)
    # Line 2899
    lwc1	$f1,164($s0)
    # Line 2898
    lwc1	$f0,160($s0)
    # Line 2897
    lwc1	$f31,156($s0)
    # Line 2899
    madd.s	$f24,$f24,$f1,$f5
    # Line 2898
    madd.s	$f22,$f22,$f0,$f5
    # Line 2897
    madd.s	$f20,$f20,$f31,$f5
.L0da1b7f0:
    # Line 2905
    beqz	$a4,.L0da1bee0
    # Line 2914
    ld	$v0,176($sp)
    # Line 2910
    lwc1	$f4,164($s0)
    # Line 2909
    lwc1	$f3,160($s0)
    # Line 2908
    lwc1	$f2,156($s0)
    # Line 2910
    madd.s	$f24,$f24,$f4,$f8
    # Line 2909
    madd.s	$f22,$f22,$f3,$f8
    # Line 2908
    madd.s	$f20,$f20,$f2,$f8
.L0da1b810:
    # Line 2922
    ld	$at,160($sp)
    lw	$ra,228($s0)
    addu	$ra,$ra,$at
    # Line 2924
    lw	$v0,100($ra)
    # Line 2926
    lw	$at,124($ra)
    # Line 2925
    lw	$s8,120($ra)
    # Line 2928
    lwc1	$f5,132($ra)
    # Line 2922
    addiu	$s5,$ra,100
    # Line 2923
    lw	$ra,144($ra)
    # Line 2928
    li	$a5,10497
    # Line 2924
    sd	$v0,184($sp)
    # Line 2933
    mtc1	$zero,$f6
    # Line 2923
    sd	$ra,176($sp)
    # Line 2926
    addiu	$at,$at,-1
    sd	$at,200($sp)
    # Line 2925
    addiu	$s8,$s8,-1
    # Line 2928
    beq	$a5,$a6,.L0da1c0bc
    mul.s	$f0,$f9,$f5
    # Line 2933
    c.lt.s $f0,$f6
    bc1f .L0da1b86c
    # Line 2937
    mov.s	$f28,$f0
    # Line 2933
    b	.L0da1b874
    mtc1	$zero,$f28
.L0da1b86c:
    # Line 2937
    c.lt.s $f5,$f0
    movt.s	$f28,$f5,$fcc7
.L0da1b874:
    # Line 2938
    ldc1	$f7,64($sp)
    # Line 2939
    # lw $t9, -28804($gp) # &__glFloor
    # Line 2938
    sub.s	$f28,$f28,$f7
    # Line 2939
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s7,$v0
    # Line 2940
    addiu	$s6,$v0,1
    sd	$zero,168($sp)
.L0da1b894:
    # Line 2943
    lwc1	$f5,36($s5)
    ldc1	$f0,56($sp)
    lw	$v1,8($s0)
    # Line 2949
    mtc1	$zero,$f26
    # Line 2943
    li	$v0,10497
    # Line 2949
    mtc1	$zero,$f1
    # Line 2943
    beq	$v0,$v1,.L0da1c0ec
    mul.s	$f0,$f0,$f5
    # Line 2949
    c.lt.s	$f0,$f1
    bc1t	.L0da1b8cc
    nop
    # Line 2952
    mov.s	$f26,$f0
    c.lt.s $f5,$f0
    movt.s	$f26,$f5,$fcc1
.L0da1b8cc:
    # Line 2953
    ldc1	$f2,64($sp)
    # Line 2954
    # lw $t9, -28804($gp) # &__glFloor
    # Line 2953
    sub.s	$f26,$f26,$f2
    # Line 2954
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s5,$v0
    # Line 2955
    addiu	$s4,$v0,1
.L0da1b8e8:
    # Line 2958
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 2959
    # lw $t9, -28808($gp) # &__glFrac
    # Line 2958
    mov.s	$f28,$f0
    # Line 2959
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 2961
    ldc1	$f12,0($sp)
    # Line 2960
    lwc1	$f5,3544($s1)
    # Line 2961
    mul.s	$f13,$f12,$f28
    # Line 2960
    sub.s	$f15,$f5,$f28
    # Line 2961
    sub.s	$f14,$f5,$f0
    mul.s	$f10,$f0,$f13
    ld	$a0,168($sp)
    mul.s	$f12,$f12,$f15
    ldc1	$f6,232($sp)
    li	$a1,2
    mul.s	$f13,$f13,$f14
    ldc1	$f7,224($sp)
    mtc1	$zero,$f9
    # Line 2992
    nor	$a3,$s8,$zero
    # Line 2961
    mul.s	$f11,$f0,$f12
    ldc1	$f8,216($sp)
    # Line 2992
    and	$a4,$a3,$s7
    # Line 2961
    beq	$a0,$a1,.L0da1bd6c
    mul.s	$f12,$f12,$f14
    # Line 2992
    ld	$a0,200($sp)
    nor	$a0,$a0,$zero
    and	$a2,$a0,$s5
    or	$a5,$a2,$a4
    beqz	$a5,.L0da1bf18
    # Line 3005
    ld	$a1,176($sp)
    # Line 3001
    lwc1	$f18,164($s0)
    # Line 3000
    lwc1	$f17,160($s0)
    # Line 2999
    lwc1	$f16,156($s0)
    # Line 3001
    madd.s	$f24,$f24,$f18,$f12
    # Line 3000
    madd.s	$f22,$f22,$f17,$f12
    # Line 2999
    madd.s	$f20,$f20,$f16,$f12
.L0da1b980:
    # Line 3007
    and	$a5,$a3,$s6
    or	$a1,$a2,$a5
    beqz	$a1,.L0da1bf50
    # Line 3016
    ld	$a3,176($sp)
    # Line 3012
    lwc1	$f23,164($s0)
    # Line 3011
    lwc1	$f21,160($s0)
    # Line 3010
    lwc1	$f19,156($s0)
    # Line 3012
    madd.s	$f24,$f24,$f23,$f13
    # Line 3011
    madd.s	$f22,$f22,$f21,$f13
    # Line 3010
    madd.s	$f20,$f20,$f19,$f13
.L0da1b9a8:
    # Line 3018
    and	$a2,$a0,$s4
    or	$a3,$a2,$a4
    beqz	$a3,.L0da1bf88
    # Line 3027
    ld	$a6,176($sp)
    # Line 3023
    lwc1	$f29,164($s0)
    # Line 3022
    lwc1	$f27,160($s0)
    # Line 3021
    lwc1	$f25,156($s0)
    # Line 3023
    madd.s	$f24,$f24,$f29,$f11
    # Line 3022
    madd.s	$f22,$f22,$f27,$f11
    # Line 3021
    madd.s	$f20,$f20,$f25,$f11
.L0da1b9d0:
    # Line 3029
    or	$a4,$a2,$a5
    beqz	$a4,.L0da1bfc0
    # Line 3038
    ld	$t0,176($sp)
    # Line 3034
    lwc1	$f1,164($s0)
    # Line 3033
    lwc1	$f0,160($s0)
    # Line 3032
    lwc1	$f31,156($s0)
    # Line 3034
    madd.s	$f24,$f24,$f1,$f10
    # Line 3033
    madd.s	$f22,$f22,$f0,$f10
    # Line 3034
    b	.L0da1b104
    # Line 3032
    madd.s	$f20,$f20,$f31,$f10
.L0da1b9f8:
    # Line 2637
    sllv	$a6,$s5,$a6
    ld	$a5,184($sp)
    addu	$a6,$s7,$a6
    sll	$a7,$a6,0x3
    sll	$a6,$a6,0x2
    addu	$a5,$a5,$a7
    addu	$a5,$a5,$a6
    # Line 2639
    lwc1	$f24,8($a5)
    # Line 2638
    lwc1	$f22,4($a5)
    # Line 2637
    lwc1	$f20,0($a5)
    # Line 2639
    mul.s	$f24,$f24,$f13
    # Line 2638
    mul.s	$f22,$f22,$f13
    b	.L0da1b090
    # Line 2637
    mul.s	$f20,$f20,$f13
.L0da1ba30:
    # Line 2648
    sllv	$t0,$s5,$t0
    ld	$a7,184($sp)
    addu	$t0,$s6,$t0
    sll	$t1,$t0,0x3
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t1
    addu	$a7,$a7,$t0
    # Line 2650
    lwc1	$f29,8($a7)
    # Line 2649
    lwc1	$f27,4($a7)
    # Line 2648
    lwc1	$f25,0($a7)
    # Line 2650
    madd.s	$f24,$f24,$f29,$f10
    # Line 2649
    madd.s	$f22,$f22,$f27,$f10
    b	.L0da1b0b8
    # Line 2648
    madd.s	$f20,$f20,$f25,$f10
.L0da1ba68:
    # Line 2659
    sllv	$t2,$s4,$t2
    ld	$t1,184($sp)
    addu	$t2,$s7,$t2
    sll	$t3,$t2,0x3
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t3
    addu	$t1,$t1,$t2
    # Line 2661
    lwc1	$f1,8($t1)
    # Line 2660
    lwc1	$f0,4($t1)
    # Line 2659
    lwc1	$f31,0($t1)
    # Line 2661
    madd.s	$f24,$f24,$f1,$f11
    # Line 2660
    madd.s	$f22,$f22,$f0,$f11
    b	.L0da1b0e0
    # Line 2659
    madd.s	$f20,$f20,$f31,$f11
.L0da1baa0:
    # Line 2670
    sllv	$t8,$s4,$t8
    ld	$t3,184($sp)
    addu	$t8,$s6,$t8
    sll	$t9,$t8,0x3
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t9
    addu	$t3,$t3,$t8
    # Line 2672
    lwc1	$f4,8($t3)
    # Line 2671
    lwc1	$f3,4($t3)
    # Line 2670
    lwc1	$f2,0($t3)
    # Line 2672
    madd.s	$f24,$f24,$f4,$f12
    # Line 2671
    madd.s	$f22,$f22,$f3,$f12
    b	.L0da1b104
    # Line 2670
    madd.s	$f20,$f20,$f2,$f12
.L0da1bad8:
    # Line 2753
    ld	$t9,176($sp)
    sllv	$t9,$s5,$t9
    ld	$ra,184($sp)
    addu	$t9,$s7,$t9
    sll	$at,$t9,0x3
    sll	$t9,$t9,0x2
    addu	$ra,$ra,$at
    addu	$t9,$t9,$ra
    # Line 2755
    lwc1	$f24,8($t9)
    # Line 2754
    lwc1	$f22,4($t9)
    # Line 2753
    lwc1	$f20,0($t9)
    # Line 2755
    mul.s	$f24,$f24,$f13
    # Line 2754
    mul.s	$f22,$f22,$f13
    b	.L0da1b480
    # Line 2753
    mul.s	$f20,$f20,$f13
.L0da1bb14:
    # Line 2764
    ld	$ra,176($sp)
    sllv	$ra,$s5,$ra
    ld	$at,184($sp)
    addu	$ra,$s6,$ra
    sll	$v0,$ra,0x3
    sll	$ra,$ra,0x2
    addu	$at,$at,$v0
    addu	$ra,$ra,$at
    # Line 2766
    lwc1	$f29,8($ra)
    # Line 2765
    lwc1	$f27,4($ra)
    # Line 2764
    lwc1	$f25,0($ra)
    # Line 2766
    madd.s	$f24,$f24,$f29,$f10
    # Line 2765
    madd.s	$f22,$f22,$f27,$f10
    b	.L0da1b4a8
    # Line 2764
    madd.s	$f20,$f20,$f25,$f10
.L0da1bb50:
    # Line 2775
    ld	$at,176($sp)
    sllv	$at,$s4,$at
    ld	$v0,184($sp)
    addu	$at,$s7,$at
    sll	$v1,$at,0x3
    sll	$at,$at,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 2777
    lwc1	$f2,8($at)
    # Line 2776
    lwc1	$f1,4($at)
    # Line 2775
    lwc1	$f31,0($at)
    # Line 2777
    madd.s	$f24,$f24,$f2,$f11
    # Line 2776
    madd.s	$f22,$f22,$f1,$f11
    b	.L0da1b4d0
    # Line 2775
    madd.s	$f20,$f20,$f31,$f11
.L0da1bb8c:
    # Line 2786
    ld	$v0,176($sp)
    sllv	$v0,$s4,$v0
    ld	$v1,184($sp)
    addu	$v0,$s6,$v0
    sll	$a0,$v0,0x3
    sll	$v0,$v0,0x2
    addu	$v1,$v1,$a0
    addu	$v0,$v0,$v1
    # Line 2788
    lwc1	$f10,8($v0)
    # Line 2787
    lwc1	$f4,4($v0)
    # Line 2786
    lwc1	$f3,0($v0)
    # Line 2788
    madd.s	$f24,$f24,$f10,$f12
    # Line 2787
    madd.s	$f22,$f22,$f4,$f12
    b	.L0da1b104
    # Line 2786
    madd.s	$f20,$f20,$f3,$f12
.L0da1bbc8:
    # Line 2563
    ldc1	$f28,64($sp)
    msub.s	$f28,$f28,$f22,$f5
    # Line 2564
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f8,216($sp)
    sdc1	$f7,224($sp)
    sdc1	$f6,232($sp)
    jal	__glFloor
    mov.s	$f12,$f28
    # Line 2565
    li	$s7,1
    # Line 2564
    and	$s6,$v0,$s8
    # Line 2565
    sd	$s7,168($sp)
    # Line 2564
    move	$s7,$s6
    # Line 2565
    addiu	$s6,$s6,1
    b	.L0da1b368
    and	$s6,$s8,$s6
.L0da1bc04:
    # Line 2578
    ldc1	$f26,64($sp)
    msub.s	$f26,$f26,$f20,$f5
    # Line 2579
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f26
    # Line 2581
    ld	$t9,168($sp)
    # Line 2579
    ld	$s4,200($sp)
    # Line 2581
    addiu	$t9,$t9,1
    # Line 2579
    and	$t8,$v0,$s4
    move	$s5,$t8
    # Line 2580
    addiu	$t8,$t8,1
    # Line 2581
    sd	$t9,168($sp)
    b	.L0da1b004
    # Line 2580
    and	$s4,$s4,$t8
.L0da1bc3c:
    # Line 2708
    ldc1	$f28,64($sp)
    msub.s	$f28,$f28,$f22,$f5
    # Line 2709
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f8,216($sp)
    sdc1	$f7,224($sp)
    sdc1	$f6,232($sp)
    jal	__glFloor
    mov.s	$f12,$f28
    and	$s6,$v0,$s8
    move	$s7,$s6
    # Line 2710
    addiu	$s6,$s6,1
    b	.L0da1b3c0
    and	$s6,$s8,$s6
.L0da1bc70:
    # Line 2722
    ldc1	$f26,64($sp)
    msub.s	$f26,$f26,$f20,$f5
    # Line 2723
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f26
    ld	$s4,200($sp)
    and	$t8,$v0,$s4
    move	$s5,$t8
    # Line 2724
    addiu	$t8,$t8,1
    b	.L0da1b410
    and	$s4,$s4,$t8
.L0da1bc9c:
    # Line 2866
    ld	$v1,176($sp)
    sllv	$a2,$s5,$v1
    sllv	$v1,$s4,$v1
    addu	$a1,$a2,$s6
    addu	$a2,$a2,$s7
    sll	$at,$a2,0x3
    ld	$a0,184($sp)
    sll	$a2,$a2,0x2
    sll	$v0,$a1,0x3
    sdc1	$f22,208($sp)
    sll	$a1,$a1,0x2
    addu	$v0,$v0,$a0
    sdc1	$f20,56($sp)
    addu	$v0,$v0,$a1
    addu	$a1,$v1,$s7
    lwc1	$f20,0($v0)
    addu	$v1,$v1,$s6
    addu	$at,$at,$a0
    addu	$at,$at,$a2
    # Line 2868
    lwc1	$f24,8($v0)
    # Line 2866
    sll	$ra,$a1,0x3
    # Line 2868
    lwc1	$f25,8($at)
    # Line 2866
    sll	$a1,$a1,0x2
    addu	$ra,$ra,$a0
    # Line 2867
    lwc1	$f22,4($v0)
    # Line 2866
    mul.s	$f20,$f20,$f6
    sll	$t9,$v1,0x3
    addu	$ra,$ra,$a1
    sll	$v1,$v1,0x2
    addu	$t9,$t9,$a0
    # Line 2868
    mul.s	$f24,$f24,$f6
    lwc1	$f27,8($ra)
    # Line 2867
    lwc1	$f23,4($at)
    # Line 2866
    addu	$t9,$t9,$v1
    # Line 2868
    madd.s	$f24,$f24,$f25,$f7
    # Line 2867
    mul.s	$f22,$f22,$f6
    # Line 2868
    lwc1	$f25,8($t9)
    # Line 2866
    lwc1	$f21,0($at)
    # Line 2868
    madd.s	$f24,$f24,$f27,$f5
    # Line 2867
    madd.s	$f22,$f22,$f23,$f7
    lwc1	$f27,4($ra)
    # Line 2868
    madd.s	$f24,$f24,$f25,$f8
    # Line 2866
    lwc1	$f25,0($ra)
    # Line 2867
    lwc1	$f23,4($t9)
    # Line 2866
    madd.s	$f20,$f20,$f21,$f7
    lwc1	$f21,0($t9)
    # Line 2867
    madd.s	$f22,$f22,$f27,$f5
    # Line 2866
    madd.s	$f20,$f20,$f25,$f5
    # Line 2867
    madd.s	$f22,$f22,$f23,$f8
    ldc1	$f9,208($sp)
    # Line 2868
    b	.L0da1b810
    # Line 2866
    madd.s	$f20,$f20,$f21,$f8
.L0da1bd6c:
    # Line 2972
    ld	$a6,176($sp)
    sllv	$t1,$s5,$a6
    # Line 2984
    sllv	$a6,$s4,$a6
    addu	$a7,$a6,$s7
    # Line 2972
    ld	$a2,184($sp)
    # Line 2978
    addu	$t0,$t1,$s6
    # Line 2972
    addu	$t1,$t1,$s7
    # Line 2990
    addu	$a6,$a6,$s6
    # Line 2972
    sll	$a5,$t1,0x3
    sll	$t1,$t1,0x2
    addu	$a5,$a2,$a5
    # Line 2978
    sll	$a4,$t0,0x3
    # Line 2972
    addu	$a5,$a5,$t1
    # Line 2978
    sll	$t0,$t0,0x2
    addu	$a4,$a2,$a4
    # Line 2974
    lwc1	$f29,8($a5)
    # Line 2984
    sll	$a3,$a7,0x3
    # Line 2978
    addu	$a4,$a4,$t0
    # Line 2984
    sll	$a7,$a7,0x2
    addu	$a3,$a2,$a3
    # Line 2980
    lwc1	$f27,8($a4)
    # Line 2984
    addu	$a3,$a3,$a7
    # Line 2990
    sll	$a7,$a6,0x3
    # Line 2974
    madd.s	$f24,$f24,$f29,$f12
    # Line 2990
    sll	$a6,$a6,0x2
    addu	$a2,$a2,$a7
    # Line 2986
    lwc1	$f25,8($a3)
    # Line 2990
    addu	$a2,$a2,$a6
    # Line 2980
    madd.s	$f24,$f24,$f27,$f13
    # Line 2992
    lwc1	$f29,8($a2)
    # Line 2973
    lwc1	$f27,4($a5)
    # Line 2986
    madd.s	$f24,$f24,$f25,$f11
    # Line 2972
    lwc1	$f25,0($a5)
    # Line 2979
    lwc1	$f23,4($a4)
    # Line 2992
    madd.s	$f24,$f24,$f29,$f10
    # Line 2978
    lwc1	$f21,0($a4)
    # Line 2973
    madd.s	$f22,$f22,$f27,$f12
    # Line 2985
    lwc1	$f27,4($a3)
    # Line 2972
    madd.s	$f20,$f20,$f25,$f12
    # Line 2979
    madd.s	$f22,$f22,$f23,$f13
    # Line 2984
    lwc1	$f25,0($a3)
    # Line 2991
    lwc1	$f23,4($a2)
    # Line 2978
    madd.s	$f20,$f20,$f21,$f13
    # Line 2985
    madd.s	$f22,$f22,$f27,$f11
    # Line 2990
    lwc1	$f21,0($a2)
    # Line 2984
    madd.s	$f20,$f20,$f25,$f11
    # Line 2991
    madd.s	$f22,$f22,$f23,$f10
    # Line 2992
    b	.L0da1b104
    # Line 2990
    madd.s	$f20,$f20,$f21,$f10
.L0da1be30:
    # Line 2881
    ld	$t2,176($sp)
    sllv	$t2,$s5,$t2
    ld	$t1,184($sp)
    addu	$t2,$s7,$t2
    sll	$t3,$t2,0x3
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t3
    addu	$t1,$t1,$t2
    # Line 2883
    lwc1	$f24,8($t1)
    # Line 2882
    lwc1	$f22,4($t1)
    # Line 2881
    lwc1	$f20,0($t1)
    # Line 2883
    mul.s	$f24,$f24,$f7
    # Line 2882
    mul.s	$f22,$f22,$f7
    ldc1	$f9,208($sp)
    b	.L0da1b7ac
    # Line 2881
    mul.s	$f20,$f20,$f7
.L0da1be70:
    # Line 2892
    sllv	$t8,$s5,$t8
    ld	$t3,184($sp)
    addu	$t8,$s6,$t8
    sll	$t9,$t8,0x3
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t9
    addu	$t3,$t3,$t8
    # Line 2894
    lwc1	$f29,8($t3)
    # Line 2893
    lwc1	$f27,4($t3)
    # Line 2892
    lwc1	$f25,0($t3)
    # Line 2894
    madd.s	$f24,$f24,$f29,$f6
    # Line 2893
    madd.s	$f22,$f22,$f27,$f6
    b	.L0da1b7d0
    # Line 2892
    madd.s	$f20,$f20,$f25,$f6
.L0da1bea8:
    # Line 2903
    sllv	$ra,$s4,$ra
    ld	$t9,184($sp)
    addu	$ra,$s7,$ra
    sll	$at,$ra,0x3
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$at
    addu	$t9,$t9,$ra
    # Line 2905
    lwc1	$f1,8($t9)
    # Line 2904
    lwc1	$f0,4($t9)
    # Line 2903
    lwc1	$f31,0($t9)
    # Line 2905
    madd.s	$f24,$f24,$f1,$f5
    # Line 2904
    madd.s	$f22,$f22,$f0,$f5
    b	.L0da1b7f0
    # Line 2903
    madd.s	$f20,$f20,$f31,$f5
.L0da1bee0:
    # Line 2914
    sllv	$v0,$s4,$v0
    ld	$at,184($sp)
    addu	$v0,$s6,$v0
    sll	$v1,$v0,0x3
    sll	$v0,$v0,0x2
    addu	$at,$at,$v1
    addu	$at,$at,$v0
    # Line 2916
    lwc1	$f4,8($at)
    # Line 2915
    lwc1	$f3,4($at)
    # Line 2914
    lwc1	$f2,0($at)
    # Line 2916
    madd.s	$f24,$f24,$f4,$f8
    # Line 2915
    madd.s	$f22,$f22,$f3,$f8
    b	.L0da1b810
    # Line 2914
    madd.s	$f20,$f20,$f2,$f8
.L0da1bf18:
    # Line 3005
    sllv	$a1,$s5,$a1
    ld	$v1,184($sp)
    addu	$a1,$s7,$a1
    sll	$a5,$a1,0x3
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a5
    addu	$v1,$v1,$a1
    # Line 3007
    lwc1	$f16,8($v1)
    # Line 3006
    lwc1	$f15,4($v1)
    # Line 3005
    lwc1	$f14,0($v1)
    # Line 3007
    madd.s	$f24,$f24,$f16,$f12
    # Line 3006
    madd.s	$f22,$f22,$f15,$f12
    b	.L0da1b980
    # Line 3005
    madd.s	$f20,$f20,$f14,$f12
.L0da1bf50:
    # Line 3016
    sllv	$a3,$s5,$a3
    ld	$a2,184($sp)
    addu	$a3,$s6,$a3
    sll	$a6,$a3,0x3
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a6
    addu	$a2,$a2,$a3
    # Line 3018
    lwc1	$f19,8($a2)
    # Line 3017
    lwc1	$f18,4($a2)
    # Line 3016
    lwc1	$f17,0($a2)
    # Line 3018
    madd.s	$f24,$f24,$f19,$f13
    # Line 3017
    madd.s	$f22,$f22,$f18,$f13
    b	.L0da1b9a8
    # Line 3016
    madd.s	$f20,$f20,$f17,$f13
.L0da1bf88:
    # Line 3027
    sllv	$a6,$s4,$a6
    ld	$a4,184($sp)
    addu	$a6,$s7,$a6
    sll	$a7,$a6,0x3
    sll	$a6,$a6,0x2
    addu	$a4,$a4,$a7
    addu	$a4,$a4,$a6
    # Line 3029
    lwc1	$f25,8($a4)
    # Line 3028
    lwc1	$f23,4($a4)
    # Line 3027
    lwc1	$f21,0($a4)
    # Line 3029
    madd.s	$f24,$f24,$f25,$f11
    # Line 3028
    madd.s	$f22,$f22,$f23,$f11
    b	.L0da1b9d0
    # Line 3027
    madd.s	$f20,$f20,$f21,$f11
.L0da1bfc0:
    # Line 3038
    sllv	$t0,$s4,$t0
    ld	$a7,184($sp)
    addu	$t0,$s6,$t0
    sll	$t1,$t0,0x3
    sll	$t0,$t0,0x2
    addu	$a7,$a7,$t1
    addu	$a7,$a7,$t0
    # Line 3040
    lwc1	$f31,8($a7)
    # Line 3039
    lwc1	$f29,4($a7)
    # Line 3038
    lwc1	$f27,0($a7)
    # Line 3040
    madd.s	$f24,$f24,$f31,$f10
    # Line 3039
    madd.s	$f22,$f22,$f29,$f10
    b	.L0da1b104
    # Line 3038
    madd.s	$f20,$f20,$f27,$f10
.L0da1bff8:
    # Line 3080
    ld	$gp,136($sp)
    ld	$s0,128($sp)
    ld	$s1,120($sp)
    ld	$s2,152($sp)
    ld	$s3,144($sp)
    ld	$s4,96($sp)
    ld	$s5,104($sp)
    ld	$s6,72($sp)
    ld	$s7,112($sp)
    ld	$s8,80($sp)
    ldc1	$f20,8($sp)
    ldc1	$f22,24($sp)
    ldc1	$f24,32($sp)
    ld	$ra,88($sp)
    ldc1	$f26,16($sp)
    move	$v0,$zero
    ldc1	$f28,40($sp)
    ldc1	$f30,48($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0da1c048:
    # Line 2807
    ldc1	$f28,64($sp)
    msub.s	$f28,$f28,$f22,$f5
    # Line 2808
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f8,216($sp)
    sdc1	$f7,224($sp)
    sdc1	$f6,232($sp)
    jal	__glFloor
    mov.s	$f12,$f28
    # Line 2809
    li	$s7,1
    # Line 2808
    and	$s6,$v0,$s8
    # Line 2809
    sd	$s7,168($sp)
    # Line 2808
    move	$s7,$s6
    # Line 2809
    addiu	$s6,$s6,1
    b	.L0da1b6bc
    and	$s6,$s8,$s6
.L0da1c084:
    # Line 2822
    ldc1	$f26,64($sp)
    msub.s	$f26,$f26,$f20,$f5
    # Line 2823
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f26
    # Line 2825
    ld	$t9,168($sp)
    # Line 2823
    ld	$s4,200($sp)
    # Line 2825
    addiu	$t9,$t9,1
    # Line 2823
    and	$t8,$v0,$s4
    move	$s5,$t8
    # Line 2824
    addiu	$t8,$t8,1
    # Line 2825
    sd	$t9,168($sp)
    b	.L0da1b70c
    # Line 2824
    and	$s4,$s4,$t8
.L0da1c0bc:
    # Line 2931
    ldc1	$f28,64($sp)
    msub.s	$f28,$f28,$f9,$f5
    # Line 2932
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f28
    # Line 2933
    li	$s7,1
    # Line 2932
    and	$s6,$v0,$s8
    # Line 2933
    sd	$s7,168($sp)
    # Line 2932
    move	$s7,$s6
    # Line 2933
    addiu	$s6,$s6,1
    b	.L0da1b894
    and	$s6,$s8,$s6
.L0da1c0ec:
    # Line 2946
    ldc1	$f27,56($sp)
    ldc1	$f26,64($sp)
    msub.s	$f26,$f26,$f27,$f5
    # Line 2947
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f26
    # Line 2949
    ld	$t9,168($sp)
    # Line 2947
    ld	$s4,200($sp)
    # Line 2949
    addiu	$t9,$t9,1
    # Line 2947
    and	$t8,$v0,$s4
    move	$s5,$t8
    # Line 2948
    addiu	$t8,$t8,1
    # Line 2949
    sd	$t9,168($sp)
    b	.L0da1b8e8
    # Line 2948
    and	$s4,$s4,$t8
.end __glTextureRGB_L_LML_Span

# Function: __glTextureRGB_L_LML_StippledSpan
# Declared: Line 3090 (Source lines: 3091-3679)
# Address: 0x0da1c130 - 0x0da1d3c8 (Size: 4760 bytes, Frame: 144)
.globl __glTextureRGB_L_LML_StippledSpan
.ent __glTextureRGB_L_LML_StippledSpan
__glTextureRGB_L_LML_StippledSpan:
    # Line 3122
    lwc1	$f5,30236($a0)
    # Line 3121
    lwc1	$f6,30228($a0)
    # Line 3120
    lwc1	$f7,30224($a0)
    # Line 3118
    lw	$v1,30472($a0)
    # Line 3091
    addiu	$sp,$sp,-272
    sdc1	$f30,48($sp)
    # Line 3123
    lwc1	$f30,30240($a0)
    # Line 3118
    sd	$v1,160($sp)
    # Line 3091
    sd	$s3,144($sp)
    # Line 3117
    lw	$s3,30464($a0)
    # Line 3091
    sd	$s0,128($sp)
    # Line 3115
    lw	$s0,28208($a0)
    # Line 3116
    lw	$at,30248($a0)
    sd	$at,168($sp)
    sdc1	$f28,40($sp)
    sdc1	$f24,32($sp)
    sdc1	$f22,24($sp)
    sdc1	$f26,16($sp)
    sdc1	$f20,8($sp)
    sd	$s8,112($sp)
    sd	$s7,104($sp)
    sd	$s5,96($sp)
    sd	$ra,88($sp)
    sd	$s6,80($sp)
    sd	$s2,72($sp)
    sd	$gp,152($sp)
    # Line 3091
    sd	$s1,120($sp)
    # Line 3100
    lwc1	$f0,3540($a0)
    # Line 3091
    sd	$s4,136($sp)
    lui	$v0,0x3
    # Line 3113
    lw	$s4,2484($a0)
    # Line 3091
    move	$s1,$a0
    addiu	$v0,$v0,19548
    # Line 3100
    sdc1	$f0,64($sp)
    # Line 3091
    addu	$gp,$t9,$v0
    # Line 3123
    beqz	$at,.L0da1d378
    # Line 3113
    lw	$s4,0($s4)
    # Line 3123
    li	$a7,10497
    mtc1	$zero,$f9
    b	.L0da1c1e8
    li	$a6,-1
    nop
    nop
    nop
.L0da1c1e0:
    # Line 3134
    ld	$a0,168($sp)
    beqz	$a0,.L0da1d378
.L0da1c1e8:
    # Line 3132
    ld	$a3,160($sp)
    # Line 3127
    li	$a5,32
    ld	$a2,168($sp)
    # Line 3132
    addiu	$a3,$a3,4
    # Line 3127
    li	$a4,32
    # Line 3132
    sd	$a3,160($sp)
    # Line 3127
    move	$a0,$a2
    slt	$a4,$a4,$a2
    # Line 3132
    lw	$a3,-4($a3)
    # Line 3127
    movn	$a0,$a5,$a4
    # Line 3134
    addiu	$a1,$a0,-1
    sd	$a1,224($sp)
    # Line 3132
    sd	$a3,184($sp)
    # Line 3130
    subu	$a2,$a2,$a0
    # Line 3134
    bltz	$a1,.L0da1c1e0
    sd	$a2,168($sp)
    b	.L0da1c414
    lui	$s2,0x8000
.L0da1c230:
    # Line 3176
    c.lt.s	$f5,$f0
    movt.s	$f28,$f5,$fcc0
.L0da1c238:
    # Line 3177
    ldc1	$f1,64($sp)
    # Line 3178
    # lw $t9, -28804($gp) # &__glFloor
    # Line 3177
    sub.s	$f28,$f28,$f1
    sd	$s8,176($sp)
    # Line 3178
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s5,$v0
    # Line 3179
    addiu	$s8,$v0,1
.L0da1c258:
    # Line 3182
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 3183
    # lw $t9, -28808($gp) # &__glFrac
    # Line 3182
    mov.s	$f20,$f0
    # Line 3183
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 3184
    lwc1	$f8,3544($s1)
    # Line 3185
    sub.s	$f14,$f8,$f0
    mul.s	$f12,$f0,$f20
    ld	$t0,192($sp)
    # Line 3184
    sub.s	$f13,$f8,$f20
    ldc1	$f5,256($sp)
    # Line 3185
    li	$a5,2
    mul.s	$f10,$f20,$f14
    li	$a6,-1
    ldc1	$f6,248($sp)
    mtc1	$zero,$f9
    mul.s	$f11,$f0,$f13
    li	$a7,10497
    ldc1	$f7,240($sp)
    beq	$t0,$a5,.L0da1c79c
    mul.s	$f13,$f13,$f14
    # Line 3216
    ld	$a3,176($sp)
    ld	$a0,216($sp)
    nor	$a0,$a0,$zero
    nor	$a3,$a3,$zero
    and	$a4,$a3,$s7
    and	$a2,$a0,$s5
    or	$t1,$a2,$a4
    beqz	$t1,.L0da1cc7c
    # Line 3229
    ld	$t0,200($sp)
    # Line 3225
    lwc1	$f24,164($s0)
    # Line 3224
    lwc1	$f20,160($s0)
    # Line 3223
    lwc1	$f22,156($s0)
    # Line 3225
    mul.s	$f24,$f24,$f13
    # Line 3224
    mul.s	$f20,$f20,$f13
    # Line 3223
    mul.s	$f22,$f22,$f13
.L0da1c2f0:
    # Line 3231
    and	$a5,$a3,$s6
    or	$a1,$a2,$a5
    beqz	$a1,.L0da1ccb4
    # Line 3240
    ld	$t2,200($sp)
    # Line 3236
    lwc1	$f29,164($s0)
    # Line 3235
    lwc1	$f27,160($s0)
    # Line 3234
    lwc1	$f25,156($s0)
    # Line 3236
    madd.s	$f24,$f24,$f29,$f10
    # Line 3235
    madd.s	$f20,$f20,$f27,$f10
    # Line 3234
    madd.s	$f22,$f22,$f25,$f10
.L0da1c318:
    # Line 3242
    and	$a2,$a0,$s8
    or	$a3,$a2,$a4
    beqz	$a3,.L0da1ccec
    # Line 3251
    ld	$t8,200($sp)
    # Line 3247
    lwc1	$f1,164($s0)
    # Line 3246
    lwc1	$f0,160($s0)
    # Line 3245
    lwc1	$f31,156($s0)
    # Line 3247
    madd.s	$f24,$f24,$f1,$f11
    # Line 3246
    madd.s	$f20,$f20,$f0,$f11
    # Line 3245
    madd.s	$f22,$f22,$f31,$f11
.L0da1c340:
    # Line 3253
    or	$a4,$a2,$a5
    beqz	$a4,.L0da1cd24
    # Line 3262
    ld	$ra,200($sp)
    # Line 3258
    lwc1	$f4,164($s0)
    # Line 3257
    lwc1	$f3,160($s0)
    # Line 3256
    lwc1	$f2,156($s0)
    # Line 3258
    madd.s	$f24,$f24,$f4,$f12
    # Line 3257
    madd.s	$f20,$f20,$f3,$f12
    # Line 3256
    madd.s	$f22,$f22,$f2,$f12
.L0da1c364:
    # Line 3632
    li	$a5,8448
    beq	$s4,$a5,.L0da1c864
.L0da1c36c:
    # Line 3645
    li	$t0,0x8062
    beq	$s4,$t0,.L0da1c774
    li	$t1,7681
    beq	$s4,$t1,.L0da1c774
    li	$t2,8449
    beq	$s4,$t2,.L0da1c774
    nop
    # Line 3656
    lw	$t3,2484($s1)
    # Line 3658
    lwc1	$f16,4($t3)
    lwc1	$f17,0($s3)
    sub.s	$f18,$f8,$f22
    mul.s	$f16,$f16,$f22
    madd.s	$f16,$f16,$f17,$f18
    swc1	$f16,0($s3)
    # Line 3659
    lwc1	$f15,3544($s1)
    lwc1	$f13,8($t3)
    lwc1	$f14,4($s3)
    sub.s	$f15,$f15,$f20
    mul.s	$f13,$f13,$f20
    madd.s	$f13,$f13,$f14,$f15
    swc1	$f13,4($s3)
    # Line 3660
    lwc1	$f12,3544($s1)
    lwc1	$f10,12($t3)
    lwc1	$f11,8($s3)
    sub.s	$f12,$f12,$f24
    mul.s	$f10,$f10,$f24
    madd.s	$f10,$f10,$f11,$f12
    swc1	$f10,8($s3)
.L0da1c3dc:
    # Line 3667
    lwc1	$f18,30384($s1)
    # Line 3669
    lwc1	$f21,30396($s1)
    # Line 3668
    lwc1	$f19,30392($s1)
    # Line 3134
    ld	$t8,224($sp)
    # Line 3666
    lwc1	$f17,30380($s1)
    # Line 3669
    add.s	$f30,$f21,$f30
    # Line 3668
    add.s	$f5,$f19,$f5
    # Line 3134
    addiu	$t8,$t8,-1
    # Line 3672
    srl	$s2,$s2,0x1
    # Line 3667
    add.s	$f6,$f18,$f6
    # Line 3670
    addiu	$s3,$s3,16
    # Line 3134
    sd	$t8,224($sp)
    beq	$t8,$a6,.L0da1c1e0
    # Line 3666
    add.s	$f7,$f17,$f7
.L0da1c414:
    # Line 3134
    ld	$t9,184($sp)
    and	$t9,$t9,$s2
    beqz	$t9,.L0da1c3dc
    nop
    # Line 3136
    lwc1	$f8,3544($s1)
    div.s	$f22,$f8,$f5
    lwc1	$f23,240($s0)
    mul.s	$f0,$f30,$f22
    c.le.s $f0,$f23
    lw	$a3,4($s0)
    mul.s	$f20,$f6,$f22
    lw	$s5,228($s0)
    bc1f .L0da1c49c
    mul.s	$f22,$f7,$f22
    # Line 3147
    lw	$ra,44($s5)
    # Line 3148
    lw	$v0,0($s5)
    sd	$v0,208($sp)
    # Line 3150
    lw	$at,24($s5)
    # Line 3152
    lwc1	$f8,32($s5)
    # Line 3149
    lw	$s8,20($s5)
    # Line 3147
    sd	$ra,200($sp)
    # Line 3150
    addiu	$at,$at,-1
    sd	$at,216($sp)
    # Line 3149
    addiu	$s8,$s8,-1
    # Line 3152
    beq	$a7,$a3,.L0da1ce4c
    mul.s	$f0,$f22,$f8
    # Line 3157
    c.lt.s $f0,$f9
    bc1f .L0da1c5a0
    # Line 3161
    mov.s	$f26,$f0
    sdc1	$f7,240($sp)
    # Line 3157
    mtc1	$zero,$f26
    sdc1	$f6,248($sp)
    b	.L0da1c5b4
    sdc1	$f5,256($sp)
.L0da1c49c:
    # Line 3264
    c.eq.s $f0,$f9
    # Line 3280
    mtc1	$zero,$f10
    # Line 3264
    bc1t .L0da1c508
    # Line 3276
    move	$a2,$zero
    trunc.w.s	$f25,$f0
    mfc1	$v1,$f25
    sra	$v1,$v1,0x1
    # Line 3278
    ldc1	$f10,64($sp)
    # Line 3276
    beqz	$v1,.L0da1c4e0
    move	$a0,$v1
    move	$a2,$zero
.L0da1c4c8:
    sra	$a0,$a0,0x1
    addiu	$a2,$a2,1
    beqz	$a0,.L0da1c4e0
    sra	$a0,$a0,0x1
    bnez	$a0,.L0da1c4c8
    addiu	$a2,$a2,1
.L0da1c4e0:
    # Line 3278
    li	$a0,1
    sllv	$a0,$a0,$a2
    mtc1	$a0,$f13
    cvt.s.w	$f13,$f13
    sub.s	$f12,$f0,$f13
    div.s	$f12,$f12,$f13
    mtc1	$a2,$f11
    cvt.s.w	$f11,$f11
    add.s	$f11,$f11,$f12
    mul.s	$f10,$f10,$f11
.L0da1c508:
    # Line 3288
    trunc.w.s	$f11,$f10
    mfc1	$a2,$f11
    cvt.s.w	$f11,$f11
    # Line 3284
    lw	$a0,236($s0)
    # Line 3288
    addiu	$a4,$a2,1
    slt	$a1,$a0,$a4
    slti	$a4,$a4,0
    sub.s	$f11,$f10,$f11
    or	$a1,$a1,$a4
    beqz	$a1,.L0da1c88c
    sub.s	$f24,$f8,$f11
    # Line 3291
    sll	$s8,$a0,0x2
    subu	$s8,$s8,$a0
    sll	$s8,$s8,0x3
    addu	$s8,$s8,$a0
    sll	$s8,$s8,0x2
    addu	$s8,$s5,$s8
    # Line 3292
    lw	$t0,44($s8)
    # Line 3293
    lw	$t2,0($s8)
    sd	$t2,208($sp)
    # Line 3292
    sd	$t0,200($sp)
    # Line 3295
    lw	$t1,24($s8)
    # Line 3297
    lwc1	$f8,32($s8)
    # Line 3294
    lw	$a5,20($s8)
    # Line 3295
    addiu	$t1,$t1,-1
    sd	$t1,216($sp)
    # Line 3294
    addiu	$a5,$a5,-1
    sd	$a5,176($sp)
    # Line 3297
    beq	$a7,$a3,.L0da1cec4
    mul.s	$f0,$f22,$f8
    # Line 3302
    c.lt.s $f0,$f9
    bc1f .L0da1c600
    # Line 3305
    mov.s	$f26,$f0
    sdc1	$f7,240($sp)
    # Line 3302
    mtc1	$zero,$f26
    sdc1	$f6,248($sp)
    b	.L0da1c614
    sdc1	$f5,256($sp)
.L0da1c5a0:
    sdc1	$f7,240($sp)
    # Line 3161
    c.lt.s $f8,$f0
    sdc1	$f6,248($sp)
    sdc1	$f5,256($sp)
    movt.s	$f26,$f8,$fcc5
.L0da1c5b4:
    # Line 3162
    ldc1	$f12,64($sp)
    # Line 3163
    # lw $t9, -28804($gp) # &__glFloor
    # Line 3162
    sub.s	$f26,$f26,$f12
    # Line 3163
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s7,$v0
    # Line 3164
    addiu	$s6,$v0,1
    sd	$zero,192($sp)
.L0da1c5d4:
    # Line 3167
    lwc1	$f5,36($s5)
    lw	$ra,8($s0)
    li	$a0,10497
    beq	$a0,$ra,.L0da1ce88
    mul.s	$f0,$f20,$f5
    # Line 3173
    mtc1	$zero,$f13
    c.lt.s $f0,$f13
    bc1f .L0da1c230
    # Line 3176
    mov.s	$f28,$f0
    # Line 3173
    b	.L0da1c238
    mtc1	$zero,$f28
.L0da1c600:
    sdc1	$f7,240($sp)
    # Line 3305
    c.lt.s $f8,$f0
    sdc1	$f6,248($sp)
    sdc1	$f5,256($sp)
    movt.s	$f26,$f8,$fcc7
.L0da1c614:
    # Line 3306
    ldc1	$f14,64($sp)
    # Line 3307
    # lw $t9, -28804($gp) # &__glFloor
    # Line 3306
    sub.s	$f26,$f26,$f14
    # Line 3307
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s7,$v0
    # Line 3308
    addiu	$s6,$v0,1
.L0da1c630:
    # Line 3311
    lwc1	$f5,36($s8)
    lw	$v0,8($s0)
    li	$at,10497
    # Line 3316
    mtc1	$zero,$f28
    # Line 3311
    beq	$at,$v0,.L0da1cefc
    mul.s	$f0,$f20,$f5
    # Line 3316
    mtc1	$zero,$f15
    c.lt.s	$f0,$f15
    bc1t	.L0da1c664
    nop
    # Line 3319
    mov.s	$f28,$f0
    c.lt.s $f5,$f0
    movt.s	$f28,$f5,$fcc1
.L0da1c664:
    # Line 3320
    ldc1	$f16,64($sp)
    # Line 3321
    # lw $t9, -28804($gp) # &__glFloor
    # Line 3320
    sub.s	$f28,$f28,$f16
    # Line 3321
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s5,$v0
    # Line 3322
    addiu	$s8,$v0,1
.L0da1c680:
    # Line 3325
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 3326
    # lw $t9, -28808($gp) # &__glFrac
    # Line 3325
    mov.s	$f26,$f0
    # Line 3326
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 3327
    lwc1	$f8,3544($s1)
    # Line 3328
    ld	$a3,176($sp)
    ld	$a0,216($sp)
    nor	$a0,$a0,$zero
    nor	$a3,$a3,$zero
    sub.s	$f11,$f8,$f0
    and	$a4,$a3,$s7
    and	$a2,$a0,$s5
    ldc1	$f5,256($sp)
    # Line 3327
    sub.s	$f12,$f8,$f26
    # Line 3328
    or	$v1,$a2,$a4
    li	$a6,-1
    ldc1	$f6,248($sp)
    mtc1	$zero,$f9
    li	$a7,10497
    ldc1	$f7,240($sp)
    beqz	$v1,.L0da1cd5c
    mul.s	$f13,$f12,$f11
    # Line 3341
    lwc1	$f24,164($s0)
    # Line 3340
    lwc1	$f20,160($s0)
    # Line 3339
    lwc1	$f22,156($s0)
    # Line 3341
    mul.s	$f24,$f24,$f13
    # Line 3340
    mul.s	$f20,$f20,$f13
    # Line 3339
    mul.s	$f22,$f22,$f13
.L0da1c6fc:
    # Line 3347
    and	$a5,$a3,$s6
    or	$a1,$a2,$a5
    beqz	$a1,.L0da1cd98
    mul.s	$f10,$f26,$f11
    # Line 3352
    lwc1	$f29,164($s0)
    # Line 3351
    lwc1	$f27,160($s0)
    # Line 3350
    lwc1	$f25,156($s0)
    # Line 3352
    madd.s	$f24,$f24,$f29,$f10
    # Line 3351
    madd.s	$f20,$f20,$f27,$f10
    # Line 3350
    madd.s	$f22,$f22,$f25,$f10
.L0da1c724:
    # Line 3358
    and	$a2,$a0,$s8
    or	$a3,$a2,$a4
    beqz	$a3,.L0da1cdd4
    mul.s	$f11,$f0,$f12
    # Line 3363
    lwc1	$f2,164($s0)
    # Line 3362
    lwc1	$f1,160($s0)
    # Line 3361
    lwc1	$f31,156($s0)
    # Line 3363
    madd.s	$f24,$f24,$f2,$f11
    # Line 3362
    madd.s	$f20,$f20,$f1,$f11
    # Line 3361
    madd.s	$f22,$f22,$f31,$f11
.L0da1c74c:
    # Line 3369
    or	$a4,$a2,$a5
    beqz	$a4,.L0da1ce10
    mul.s	$f12,$f0,$f26
    # Line 3374
    lwc1	$f10,164($s0)
    # Line 3373
    lwc1	$f4,160($s0)
    # Line 3372
    lwc1	$f3,156($s0)
    # Line 3374
    madd.s	$f24,$f24,$f10,$f12
    # Line 3373
    madd.s	$f20,$f20,$f4,$f12
    # Line 3374
    b	.L0da1c364
    # Line 3372
    madd.s	$f22,$f22,$f3,$f12
.L0da1c774:
    # Line 3648
    lwc1	$f13,30752($s1)
    mul.s	$f13,$f13,$f22
    swc1	$f13,0($s3)
    # Line 3649
    lwc1	$f12,30756($s1)
    mul.s	$f12,$f12,$f20
    swc1	$f12,4($s3)
    # Line 3650
    lwc1	$f11,30760($s1)
    mul.s	$f11,$f11,$f24
    b	.L0da1c3dc
    swc1	$f11,8($s3)
.L0da1c79c:
    # Line 3214
    ld	$t8,200($sp)
    sllv	$at,$s5,$t8
    sllv	$t8,$s8,$t8
    addu	$ra,$at,$s6
    addu	$at,$at,$s7
    sll	$t2,$at,0x3
    ld	$t9,208($sp)
    sll	$at,$at,0x2
    sll	$t3,$ra,0x3
    sll	$ra,$ra,0x2
    addu	$t3,$t3,$t9
    addu	$t3,$t3,$ra
    addu	$ra,$t8,$s7
    lwc1	$f22,0($t3)
    addu	$t8,$t8,$s6
    addu	$t2,$t2,$t9
    addu	$t2,$t2,$at
    # Line 3216
    lwc1	$f24,8($t3)
    # Line 3214
    sll	$t1,$ra,0x3
    # Line 3216
    lwc1	$f25,8($t2)
    # Line 3214
    sll	$ra,$ra,0x2
    addu	$t1,$t1,$t9
    mul.s	$f22,$f22,$f10
    # Line 3215
    lwc1	$f20,4($t3)
    # Line 3214
    sll	$t0,$t8,0x3
    addu	$t1,$t1,$ra
    sll	$t8,$t8,0x2
    addu	$t0,$t0,$t9
    # Line 3216
    mul.s	$f24,$f24,$f10
    lwc1	$f27,8($t1)
    # Line 3215
    lwc1	$f21,4($t2)
    # Line 3214
    addu	$t0,$t0,$t8
    # Line 3216
    madd.s	$f24,$f24,$f25,$f13
    # Line 3215
    mul.s	$f20,$f20,$f10
    # Line 3216
    lwc1	$f25,8($t0)
    madd.s	$f24,$f24,$f27,$f11
    # Line 3214
    lwc1	$f27,0($t2)
    # Line 3215
    madd.s	$f20,$f20,$f21,$f13
    lwc1	$f23,4($t1)
    # Line 3216
    madd.s	$f24,$f24,$f25,$f12
    # Line 3214
    lwc1	$f25,0($t1)
    # Line 3215
    lwc1	$f21,4($t0)
    # Line 3214
    madd.s	$f22,$f22,$f27,$f13
    # Line 3215
    madd.s	$f20,$f20,$f23,$f11
    # Line 3214
    lwc1	$f23,0($t0)
    # Line 3632
    li	$a5,8448
    # Line 3214
    madd.s	$f22,$f22,$f25,$f11
    # Line 3215
    madd.s	$f20,$f20,$f21,$f12
    # Line 3632
    bne	$s4,$a5,.L0da1c36c
    # Line 3214
    madd.s	$f22,$f22,$f23,$f12
.L0da1c864:
    # Line 3643
    lwc1	$f29,8($s3)
    # Line 3642
    lwc1	$f27,4($s3)
    # Line 3641
    lwc1	$f25,0($s3)
    # Line 3643
    mul.s	$f29,$f29,$f24
    # Line 3642
    mul.s	$f27,$f27,$f20
    # Line 3643
    swc1	$f29,8($s3)
    # Line 3641
    mul.s	$f25,$f25,$f22
    # Line 3642
    swc1	$f27,4($s3)
    # Line 3643
    b	.L0da1c3dc
    # Line 3641
    swc1	$f25,0($s3)
.L0da1c88c:
    # Line 3390
    sll	$a0,$a2,0x2
    subu	$a0,$a0,$a2
    sll	$a0,$a0,0x3
    addu	$a0,$a0,$a2
    sll	$a0,$a0,0x2
    sdc1	$f11,0($sp)
    addu	$s8,$a0,$s5
    # Line 3391
    lw	$v0,44($s8)
    # Line 3392
    lw	$a1,0($s8)
    sd	$a1,208($sp)
    # Line 3391
    sd	$v0,200($sp)
    # Line 3394
    lw	$v1,24($s8)
    # Line 3396
    lwc1	$f8,32($s8)
    # Line 3393
    lw	$at,20($s8)
    # Line 3394
    addiu	$v1,$v1,-1
    sd	$v1,216($sp)
    # Line 3393
    addiu	$at,$at,-1
    sd	$at,176($sp)
    # Line 3396
    beq	$a7,$a3,.L0da1d28c
    mul.s	$f0,$f22,$f8
    # Line 3401
    c.lt.s $f0,$f9
    bc1f .L0da1c8fc
    # Line 3405
    mov.s	$f26,$f0
    sdc1	$f7,240($sp)
    # Line 3401
    mtc1	$zero,$f26
    sdc1	$f6,248($sp)
    b	.L0da1c910
    sdc1	$f5,256($sp)
.L0da1c8fc:
    sdc1	$f7,240($sp)
    # Line 3405
    c.lt.s $f8,$f0
    sdc1	$f6,248($sp)
    sdc1	$f5,256($sp)
    movt.s	$f26,$f8,$fcc3
.L0da1c910:
    # Line 3406
    ldc1	$f31,64($sp)
    # Line 3407
    # lw $t9, -28804($gp) # &__glFloor
    # Line 3406
    sub.s	$f26,$f26,$f31
    sd	$a0,264($sp)
    # Line 3407
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s7,$v0
    # Line 3408
    addiu	$s6,$v0,1
    sd	$zero,192($sp)
.L0da1c934:
    # Line 3411
    lwc1	$f5,36($s8)
    lw	$a2,8($s0)
    li	$a1,10497
    # Line 3417
    mtc1	$zero,$f1
    # Line 3411
    beq	$a1,$a2,.L0da1d2d0
    mul.s	$f0,$f20,$f5
    # Line 3417
    c.lt.s $f0,$f1
    bc1f .L0da1c960
    # Line 3420
    mov.s	$f28,$f0
    # Line 3417
    b	.L0da1c968
    mtc1	$zero,$f28
.L0da1c960:
    # Line 3420
    c.lt.s $f5,$f0
    movt.s	$f28,$f5,$fcc5
.L0da1c968:
    # Line 3421
    ldc1	$f2,64($sp)
    # Line 3422
    # lw $t9, -28804($gp) # &__glFloor
    # Line 3421
    sub.s	$f28,$f28,$f2
    # Line 3422
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s5,$v0
    # Line 3423
    addiu	$s8,$v0,1
.L0da1c984:
    # Line 3426
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 3427
    # lw $t9, -28808($gp) # &__glFrac
    # Line 3426
    mov.s	$f26,$f0
    # Line 3427
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 3428
    lwc1	$f10,3544($s1)
    ld	$a6,264($sp)
    # Line 3429
    mul.s	$f7,$f26,$f24
    # Line 3514
    lw	$t1,228($s0)
    # Line 3460
    ld	$a0,216($sp)
    # Line 3428
    sub.s	$f8,$f10,$f26
    # Line 3429
    mul.s	$f9,$f0,$f7
    ld	$a3,192($sp)
    # Line 3514
    addu	$t1,$t1,$a6
    # Line 3429
    sub.s	$f10,$f10,$f0
    # Line 3460
    nor	$a0,$a0,$zero
    # Line 3518
    lw	$t2,124($t1)
    # Line 3429
    mul.s	$f8,$f8,$f24
    li	$a4,2
    # Line 3460
    and	$a2,$a0,$s5
    # Line 3517
    lw	$t0,120($t1)
    # Line 3429
    mul.s	$f7,$f7,$f10
    # Line 3520
    lw	$a7,4($s0)
    # Line 3525
    mtc1	$zero,$f26
    # Line 3518
    addiu	$t2,$t2,-1
    # Line 3429
    mul.s	$f6,$f0,$f8
    # Line 3516
    lw	$t3,100($t1)
    # Line 3517
    addiu	$t0,$t0,-1
    # Line 3429
    beq	$a3,$a4,.L0da1cf28
    mul.s	$f8,$f8,$f10
    # Line 3460
    ld	$a3,176($sp)
    nor	$a3,$a3,$zero
    and	$a4,$a3,$s7
    sdc1	$f22,232($sp)
    or	$a5,$a2,$a4
    ldc1	$f5,232($sp)
    beqz	$a5,.L0da1d0bc
    sdc1	$f20,56($sp)
    # Line 3469
    lwc1	$f24,164($s0)
    # Line 3468
    lwc1	$f20,160($s0)
    # Line 3467
    lwc1	$f22,156($s0)
    # Line 3469
    mul.s	$f24,$f24,$f8
    # Line 3468
    mul.s	$f20,$f20,$f8
    # Line 3467
    mul.s	$f22,$f22,$f8
.L0da1ca3c:
    # Line 3475
    and	$a5,$a3,$s6
    or	$a1,$a2,$a5
    # Line 3486
    and	$a2,$a0,$s8
    or	$a3,$a2,$a4
    # Line 3475
    beqz	$a1,.L0da1d0fc
    # Line 3497
    or	$a4,$a2,$a5
    # Line 3480
    lwc1	$f29,164($s0)
    # Line 3479
    lwc1	$f27,160($s0)
    # Line 3478
    lwc1	$f25,156($s0)
    # Line 3480
    madd.s	$f24,$f24,$f29,$f7
    # Line 3479
    madd.s	$f20,$f20,$f27,$f7
    # Line 3478
    madd.s	$f22,$f22,$f25,$f7
.L0da1ca6c:
    # Line 3486
    beqz	$a3,.L0da1d138
    # Line 3495
    ld	$a0,200($sp)
    # Line 3491
    lwc1	$f1,164($s0)
    # Line 3490
    lwc1	$f0,160($s0)
    # Line 3489
    lwc1	$f31,156($s0)
    # Line 3491
    madd.s	$f24,$f24,$f1,$f6
    # Line 3490
    madd.s	$f20,$f20,$f0,$f6
    # Line 3489
    madd.s	$f22,$f22,$f31,$f6
.L0da1ca8c:
    # Line 3497
    beqz	$a4,.L0da1d170
    # Line 3506
    ld	$a2,200($sp)
    # Line 3502
    lwc1	$f4,164($s0)
    # Line 3501
    lwc1	$f3,160($s0)
    # Line 3500
    lwc1	$f2,156($s0)
    # Line 3502
    madd.s	$f24,$f24,$f4,$f9
    # Line 3501
    madd.s	$f20,$f20,$f3,$f9
    # Line 3500
    madd.s	$f22,$f22,$f2,$f9
.L0da1caac:
    # Line 3516
    sd	$t3,208($sp)
    # Line 3518
    sd	$t2,216($sp)
    # Line 3520
    lwc1	$f8,132($t1)
    # Line 3517
    sd	$t0,176($sp)
    # Line 3520
    li	$a5,10497
    # Line 3514
    addiu	$s8,$t1,100
    # Line 3515
    lw	$t1,144($t1)
    sd	$t1,200($sp)
    # Line 3520
    beq	$a5,$a7,.L0da1d308
    mul.s	$f0,$f5,$f8
    # Line 3525
    mtc1	$zero,$f5
    c.lt.s $f0,$f5
    bc1t .L0da1caf0
    nop
    # Line 3529
    mov.s	$f26,$f0
    c.lt.s $f8,$f0
    movt.s	$f26,$f8,$fcc7
.L0da1caf0:
    # Line 3530
    ldc1	$f6,64($sp)
    # Line 3531
    # lw $t9, -28804($gp) # &__glFloor
    # Line 3530
    sub.s	$f26,$f26,$f6
    # Line 3531
    jal	__glFloor
    mov.s	$f12,$f26
    move	$s7,$v0
    # Line 3532
    addiu	$s6,$v0,1
    sd	$zero,192($sp)
.L0da1cb10:
    # Line 3535
    lwc1	$f5,36($s8)
    ldc1	$f0,56($sp)
    lw	$t3,8($s0)
    li	$t2,10497
    # Line 3541
    mtc1	$zero,$f1
    # Line 3535
    beq	$t2,$t3,.L0da1d33c
    mul.s	$f0,$f0,$f5
    # Line 3541
    c.lt.s	$f0,$f1
    bc1f	.L0da1cb40
    # Line 3544
    mov.s	$f28,$f0
    # Line 3541
    b	.L0da1cb48
    mtc1	$zero,$f28
.L0da1cb40:
    # Line 3544
    c.lt.s $f5,$f0
    movt.s	$f28,$f5,$fcc1
.L0da1cb48:
    # Line 3545
    ldc1	$f2,64($sp)
    # Line 3546
    # lw $t9, -28804($gp) # &__glFloor
    # Line 3545
    sub.s	$f28,$f28,$f2
    # Line 3546
    jal	__glFloor
    mov.s	$f12,$f28
    move	$s5,$v0
    # Line 3547
    addiu	$s8,$v0,1
.L0da1cb64:
    # Line 3550
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f26
    # Line 3551
    # lw $t9, -28808($gp) # &__glFrac
    # Line 3550
    mov.s	$f26,$f0
    # Line 3551
    jal	__glFrac
    mov.s	$f12,$f28
    # Line 3553
    ldc1	$f12,0($sp)
    # Line 3552
    lwc1	$f8,3544($s1)
    # Line 3553
    mul.s	$f13,$f12,$f26
    li	$a6,-1
    # Line 3584
    ld	$a3,176($sp)
    # Line 3552
    sub.s	$f15,$f8,$f26
    mtc1	$zero,$f9
    # Line 3584
    ld	$a0,216($sp)
    # Line 3553
    sub.s	$f14,$f8,$f0
    mul.s	$f10,$f0,$f13
    li	$a7,10497
    li	$t9,2
    ld	$t8,192($sp)
    mul.s	$f12,$f12,$f15
    ldc1	$f5,256($sp)
    # Line 3584
    nor	$a0,$a0,$zero
    nor	$a3,$a3,$zero
    # Line 3553
    mul.s	$f13,$f13,$f14
    ldc1	$f6,248($sp)
    # Line 3584
    and	$a4,$a3,$s7
    and	$a2,$a0,$s5
    # Line 3553
    mul.s	$f11,$f0,$f12
    ldc1	$f7,240($sp)
    # Line 3584
    or	$ra,$a2,$a4
    # Line 3553
    beq	$t8,$t9,.L0da1cff8
    mul.s	$f12,$f12,$f14
    # Line 3584
    beqz	$ra,.L0da1d1a8
    # Line 3597
    ld	$t0,200($sp)
    # Line 3593
    lwc1	$f18,164($s0)
    # Line 3592
    lwc1	$f17,160($s0)
    # Line 3591
    lwc1	$f16,156($s0)
    # Line 3593
    madd.s	$f24,$f24,$f18,$f12
    # Line 3592
    madd.s	$f20,$f20,$f17,$f12
    # Line 3591
    madd.s	$f22,$f22,$f16,$f12
.L0da1cc08:
    # Line 3599
    and	$a5,$a3,$s6
    or	$a1,$a2,$a5
    # Line 3610
    and	$a2,$a0,$s8
    or	$a3,$a2,$a4
    # Line 3599
    beqz	$a1,.L0da1d1e0
    # Line 3621
    or	$a4,$a2,$a5
    # Line 3604
    lwc1	$f23,164($s0)
    # Line 3603
    lwc1	$f21,160($s0)
    # Line 3602
    lwc1	$f19,156($s0)
    # Line 3604
    madd.s	$f24,$f24,$f23,$f13
    # Line 3603
    madd.s	$f20,$f20,$f21,$f13
    # Line 3602
    madd.s	$f22,$f22,$f19,$f13
.L0da1cc38:
    # Line 3610
    beqz	$a3,.L0da1d21c
    # Line 3619
    ld	$t8,200($sp)
    # Line 3615
    lwc1	$f29,164($s0)
    # Line 3614
    lwc1	$f27,160($s0)
    # Line 3613
    lwc1	$f25,156($s0)
    # Line 3615
    madd.s	$f24,$f24,$f29,$f11
    # Line 3614
    madd.s	$f20,$f20,$f27,$f11
    # Line 3613
    madd.s	$f22,$f22,$f25,$f11
.L0da1cc58:
    # Line 3621
    beqz	$a4,.L0da1d254
    # Line 3630
    ld	$ra,200($sp)
    # Line 3626
    lwc1	$f1,164($s0)
    # Line 3625
    lwc1	$f0,160($s0)
    # Line 3624
    lwc1	$f31,156($s0)
    # Line 3626
    madd.s	$f24,$f24,$f1,$f10
    # Line 3625
    madd.s	$f20,$f20,$f0,$f10
    # Line 3626
    b	.L0da1c364
    # Line 3624
    madd.s	$f22,$f22,$f31,$f10
.L0da1cc7c:
    # Line 3229
    sllv	$t0,$s5,$t0
    ld	$a5,208($sp)
    addu	$t0,$s7,$t0
    sll	$t1,$t0,0x3
    sll	$t0,$t0,0x2
    addu	$a5,$a5,$t1
    addu	$a5,$a5,$t0
    # Line 3231
    lwc1	$f24,8($a5)
    # Line 3230
    lwc1	$f20,4($a5)
    # Line 3229
    lwc1	$f22,0($a5)
    # Line 3231
    mul.s	$f24,$f24,$f13
    # Line 3230
    mul.s	$f20,$f20,$f13
    b	.L0da1c2f0
    # Line 3229
    mul.s	$f22,$f22,$f13
.L0da1ccb4:
    # Line 3240
    sllv	$t2,$s5,$t2
    ld	$t1,208($sp)
    addu	$t2,$s6,$t2
    sll	$t3,$t2,0x3
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t3
    addu	$t1,$t1,$t2
    # Line 3242
    lwc1	$f29,8($t1)
    # Line 3241
    lwc1	$f27,4($t1)
    # Line 3240
    lwc1	$f25,0($t1)
    # Line 3242
    madd.s	$f24,$f24,$f29,$f10
    # Line 3241
    madd.s	$f20,$f20,$f27,$f10
    b	.L0da1c318
    # Line 3240
    madd.s	$f22,$f22,$f25,$f10
.L0da1ccec:
    # Line 3251
    sllv	$t8,$s8,$t8
    ld	$t3,208($sp)
    addu	$t8,$s7,$t8
    sll	$t9,$t8,0x3
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t9
    addu	$t3,$t3,$t8
    # Line 3253
    lwc1	$f1,8($t3)
    # Line 3252
    lwc1	$f0,4($t3)
    # Line 3251
    lwc1	$f31,0($t3)
    # Line 3253
    madd.s	$f24,$f24,$f1,$f11
    # Line 3252
    madd.s	$f20,$f20,$f0,$f11
    b	.L0da1c340
    # Line 3251
    madd.s	$f22,$f22,$f31,$f11
.L0da1cd24:
    # Line 3262
    sllv	$ra,$s8,$ra
    ld	$t9,208($sp)
    addu	$ra,$s6,$ra
    sll	$at,$ra,0x3
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$at
    addu	$t9,$t9,$ra
    # Line 3264
    lwc1	$f4,8($t9)
    # Line 3263
    lwc1	$f3,4($t9)
    # Line 3262
    lwc1	$f2,0($t9)
    # Line 3264
    madd.s	$f24,$f24,$f4,$f12
    # Line 3263
    madd.s	$f20,$f20,$f3,$f12
    b	.L0da1c364
    # Line 3262
    madd.s	$f22,$f22,$f2,$f12
.L0da1cd5c:
    # Line 3345
    ld	$at,200($sp)
    sllv	$at,$s5,$at
    ld	$v0,208($sp)
    addu	$at,$s7,$at
    sll	$v1,$at,0x3
    sll	$at,$at,0x2
    addu	$v0,$v0,$v1
    addu	$at,$at,$v0
    # Line 3347
    lwc1	$f24,8($at)
    # Line 3346
    lwc1	$f20,4($at)
    # Line 3345
    lwc1	$f22,0($at)
    # Line 3347
    mul.s	$f24,$f24,$f13
    # Line 3346
    mul.s	$f20,$f20,$f13
    b	.L0da1c6fc
    # Line 3345
    mul.s	$f22,$f22,$f13
.L0da1cd98:
    # Line 3356
    ld	$v0,200($sp)
    sllv	$v0,$s5,$v0
    ld	$v1,208($sp)
    addu	$v0,$s6,$v0
    sll	$a1,$v0,0x3
    sll	$v0,$v0,0x2
    addu	$v1,$v1,$a1
    addu	$v0,$v0,$v1
    # Line 3358
    lwc1	$f29,8($v0)
    # Line 3357
    lwc1	$f27,4($v0)
    # Line 3356
    lwc1	$f25,0($v0)
    # Line 3358
    madd.s	$f24,$f24,$f29,$f10
    # Line 3357
    madd.s	$f20,$f20,$f27,$f10
    b	.L0da1c724
    # Line 3356
    madd.s	$f22,$f22,$f25,$f10
.L0da1cdd4:
    # Line 3367
    ld	$v1,200($sp)
    sllv	$v1,$s8,$v1
    ld	$a0,208($sp)
    addu	$v1,$s7,$v1
    sll	$a1,$v1,0x3
    sll	$v1,$v1,0x2
    addu	$a0,$a0,$a1
    addu	$v1,$v1,$a0
    # Line 3369
    lwc1	$f2,8($v1)
    # Line 3368
    lwc1	$f1,4($v1)
    # Line 3367
    lwc1	$f31,0($v1)
    # Line 3369
    madd.s	$f24,$f24,$f2,$f11
    # Line 3368
    madd.s	$f20,$f20,$f1,$f11
    b	.L0da1c74c
    # Line 3367
    madd.s	$f22,$f22,$f31,$f11
.L0da1ce10:
    # Line 3378
    ld	$a0,200($sp)
    sllv	$a0,$s8,$a0
    ld	$a1,208($sp)
    addu	$a0,$s6,$a0
    sll	$a2,$a0,0x3
    sll	$a0,$a0,0x2
    addu	$a1,$a1,$a2
    addu	$a0,$a0,$a1
    # Line 3380
    lwc1	$f10,8($a0)
    # Line 3379
    lwc1	$f4,4($a0)
    # Line 3378
    lwc1	$f3,0($a0)
    # Line 3380
    madd.s	$f24,$f24,$f10,$f12
    # Line 3379
    madd.s	$f20,$f20,$f4,$f12
    b	.L0da1c364
    # Line 3378
    madd.s	$f22,$f22,$f3,$f12
.L0da1ce4c:
    # Line 3155
    ldc1	$f26,64($sp)
    msub.s	$f26,$f26,$f22,$f8
    # Line 3156
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f7,240($sp)
    sdc1	$f6,248($sp)
    sdc1	$f5,256($sp)
    jal	__glFloor
    mov.s	$f12,$f26
    # Line 3157
    li	$s7,1
    # Line 3156
    and	$s6,$v0,$s8
    # Line 3157
    sd	$s7,192($sp)
    # Line 3156
    move	$s7,$s6
    # Line 3157
    addiu	$s6,$s6,1
    b	.L0da1c5d4
    and	$s6,$s8,$s6
.L0da1ce88:
    # Line 3170
    ldc1	$f28,64($sp)
    msub.s	$f28,$f28,$f20,$f5
    # Line 3171
    # lw $t9, -28804($gp) # &__glFloor
    sd	$s8,176($sp)
    jal	__glFloor
    mov.s	$f12,$f28
    # Line 3173
    ld	$at,192($sp)
    # Line 3171
    ld	$s8,216($sp)
    # Line 3173
    addiu	$at,$at,1
    # Line 3171
    and	$ra,$v0,$s8
    move	$s5,$ra
    # Line 3172
    addiu	$ra,$ra,1
    # Line 3173
    sd	$at,192($sp)
    b	.L0da1c258
    # Line 3172
    and	$s8,$s8,$ra
.L0da1cec4:
    # Line 3300
    ldc1	$f26,64($sp)
    msub.s	$f26,$f26,$f22,$f8
    # Line 3301
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f7,240($sp)
    sdc1	$f6,248($sp)
    sdc1	$f5,256($sp)
    jal	__glFloor
    mov.s	$f12,$f26
    ld	$s6,176($sp)
    and	$t8,$v0,$s6
    move	$s7,$t8
    # Line 3302
    addiu	$t8,$t8,1
    b	.L0da1c630
    and	$s6,$s6,$t8
.L0da1cefc:
    # Line 3314
    ldc1	$f28,64($sp)
    msub.s	$f28,$f28,$f20,$f5
    # Line 3315
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f28
    ld	$s8,216($sp)
    and	$ra,$v0,$s8
    move	$s5,$ra
    # Line 3316
    addiu	$ra,$ra,1
    b	.L0da1c680
    and	$s8,$s8,$ra
.L0da1cf28:
    # Line 3458
    ld	$a1,200($sp)
    sllv	$a4,$s5,$a1
    sllv	$a1,$s8,$a1
    addu	$a3,$a4,$s6
    addu	$a4,$a4,$s7
    sll	$v1,$a4,0x3
    ld	$a2,208($sp)
    sll	$a4,$a4,0x2
    sll	$a0,$a3,0x3
    sdc1	$f22,232($sp)
    sll	$a3,$a3,0x2
    addu	$a0,$a0,$a2
    sdc1	$f20,56($sp)
    addu	$a0,$a0,$a3
    addu	$a3,$a1,$s7
    lwc1	$f22,0($a0)
    addu	$a1,$a1,$s6
    addu	$v1,$v1,$a2
    addu	$v1,$v1,$a4
    # Line 3460
    lwc1	$f24,8($a0)
    # Line 3458
    sll	$v0,$a3,0x3
    # Line 3460
    lwc1	$f25,8($v1)
    # Line 3458
    sll	$a3,$a3,0x2
    addu	$v0,$v0,$a2
    mul.s	$f22,$f22,$f7
    # Line 3459
    lwc1	$f20,4($a0)
    # Line 3458
    sll	$at,$a1,0x3
    addu	$v0,$v0,$a3
    sll	$a1,$a1,0x2
    addu	$at,$at,$a2
    # Line 3460
    mul.s	$f24,$f24,$f7
    lwc1	$f27,8($v0)
    # Line 3459
    lwc1	$f21,4($v1)
    # Line 3458
    addu	$at,$at,$a1
    # Line 3460
    madd.s	$f24,$f24,$f25,$f8
    # Line 3459
    mul.s	$f20,$f20,$f7
    # Line 3460
    lwc1	$f25,8($at)
    madd.s	$f24,$f24,$f27,$f6
    # Line 3458
    lwc1	$f27,0($v1)
    # Line 3459
    madd.s	$f20,$f20,$f21,$f8
    lwc1	$f23,4($v0)
    # Line 3460
    madd.s	$f24,$f24,$f25,$f9
    # Line 3458
    lwc1	$f25,0($v0)
    # Line 3459
    lwc1	$f21,4($at)
    # Line 3458
    madd.s	$f22,$f22,$f27,$f8
    # Line 3459
    madd.s	$f20,$f20,$f23,$f6
    # Line 3458
    lwc1	$f23,0($at)
    madd.s	$f22,$f22,$f25,$f6
    # Line 3459
    madd.s	$f20,$f20,$f21,$f9
    ldc1	$f5,232($sp)
    # Line 3460
    b	.L0da1caac
    # Line 3458
    madd.s	$f22,$f22,$f23,$f9
.L0da1cff8:
    # Line 3564
    ld	$t2,200($sp)
    sllv	$t9,$s5,$t2
    # Line 3576
    sllv	$t2,$s8,$t2
    addu	$t3,$t2,$s7
    # Line 3564
    ld	$a4,208($sp)
    # Line 3570
    addu	$t8,$t9,$s6
    # Line 3564
    addu	$t9,$t9,$s7
    # Line 3582
    addu	$t2,$t2,$s6
    # Line 3564
    sll	$t1,$t9,0x3
    sll	$t9,$t9,0x2
    addu	$t1,$a4,$t1
    # Line 3570
    sll	$t0,$t8,0x3
    # Line 3564
    addu	$t1,$t1,$t9
    # Line 3570
    sll	$t8,$t8,0x2
    addu	$t0,$a4,$t0
    # Line 3566
    lwc1	$f29,8($t1)
    # Line 3576
    sll	$a5,$t3,0x3
    # Line 3570
    addu	$t0,$t0,$t8
    # Line 3576
    sll	$t3,$t3,0x2
    addu	$a5,$a4,$a5
    # Line 3572
    lwc1	$f27,8($t0)
    # Line 3576
    addu	$a5,$a5,$t3
    # Line 3582
    sll	$t3,$t2,0x3
    # Line 3566
    madd.s	$f24,$f24,$f29,$f12
    # Line 3582
    sll	$t2,$t2,0x2
    addu	$a4,$a4,$t3
    # Line 3578
    lwc1	$f25,8($a5)
    # Line 3582
    addu	$a4,$a4,$t2
    # Line 3572
    madd.s	$f24,$f24,$f27,$f13
    # Line 3584
    lwc1	$f29,8($a4)
    # Line 3565
    lwc1	$f27,4($t1)
    # Line 3578
    madd.s	$f24,$f24,$f25,$f11
    # Line 3564
    lwc1	$f25,0($t1)
    # Line 3571
    lwc1	$f21,4($t0)
    # Line 3584
    madd.s	$f24,$f24,$f29,$f10
    # Line 3565
    madd.s	$f20,$f20,$f27,$f12
    # Line 3570
    lwc1	$f27,0($t0)
    # Line 3577
    lwc1	$f23,4($a5)
    # Line 3564
    madd.s	$f22,$f22,$f25,$f12
    # Line 3576
    lwc1	$f25,0($a5)
    # Line 3571
    madd.s	$f20,$f20,$f21,$f13
    # Line 3583
    lwc1	$f21,4($a4)
    # Line 3570
    madd.s	$f22,$f22,$f27,$f13
    # Line 3577
    madd.s	$f20,$f20,$f23,$f11
    # Line 3582
    lwc1	$f23,0($a4)
    # Line 3576
    madd.s	$f22,$f22,$f25,$f11
    # Line 3583
    madd.s	$f20,$f20,$f21,$f10
    # Line 3584
    b	.L0da1c364
    # Line 3582
    madd.s	$f22,$f22,$f23,$f10
.L0da1d0bc:
    # Line 3473
    ld	$ra,200($sp)
    sllv	$ra,$s5,$ra
    ld	$t9,208($sp)
    addu	$ra,$s7,$ra
    sll	$at,$ra,0x3
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$at
    addu	$t9,$t9,$ra
    # Line 3475
    lwc1	$f24,8($t9)
    # Line 3474
    lwc1	$f20,4($t9)
    # Line 3473
    lwc1	$f22,0($t9)
    # Line 3475
    mul.s	$f24,$f24,$f8
    # Line 3474
    mul.s	$f20,$f20,$f8
    ldc1	$f5,232($sp)
    b	.L0da1ca3c
    # Line 3473
    mul.s	$f22,$f22,$f8
.L0da1d0fc:
    # Line 3484
    ld	$v0,200($sp)
    sllv	$v0,$s5,$v0
    ld	$at,208($sp)
    addu	$v0,$s6,$v0
    sll	$v1,$v0,0x3
    sll	$v0,$v0,0x2
    addu	$at,$at,$v1
    addu	$at,$at,$v0
    # Line 3486
    lwc1	$f29,8($at)
    # Line 3485
    lwc1	$f27,4($at)
    # Line 3484
    lwc1	$f25,0($at)
    # Line 3486
    madd.s	$f24,$f24,$f29,$f7
    # Line 3485
    madd.s	$f20,$f20,$f27,$f7
    b	.L0da1ca6c
    # Line 3484
    madd.s	$f22,$f22,$f25,$f7
.L0da1d138:
    # Line 3495
    sllv	$a0,$s8,$a0
    ld	$v1,208($sp)
    addu	$a0,$s7,$a0
    sll	$a1,$a0,0x3
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a1
    addu	$v1,$v1,$a0
    # Line 3497
    lwc1	$f1,8($v1)
    # Line 3496
    lwc1	$f0,4($v1)
    # Line 3495
    lwc1	$f31,0($v1)
    # Line 3497
    madd.s	$f24,$f24,$f1,$f6
    # Line 3496
    madd.s	$f20,$f20,$f0,$f6
    b	.L0da1ca8c
    # Line 3495
    madd.s	$f22,$f22,$f31,$f6
.L0da1d170:
    # Line 3506
    sllv	$a2,$s8,$a2
    ld	$a1,208($sp)
    addu	$a2,$s6,$a2
    sll	$a3,$a2,0x3
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a3
    addu	$a1,$a1,$a2
    # Line 3508
    lwc1	$f4,8($a1)
    # Line 3507
    lwc1	$f3,4($a1)
    # Line 3506
    lwc1	$f2,0($a1)
    # Line 3508
    madd.s	$f24,$f24,$f4,$f9
    # Line 3507
    madd.s	$f20,$f20,$f3,$f9
    b	.L0da1caac
    # Line 3506
    madd.s	$f22,$f22,$f2,$f9
.L0da1d1a8:
    # Line 3597
    sllv	$t0,$s5,$t0
    ld	$a5,208($sp)
    addu	$t0,$s7,$t0
    sll	$t1,$t0,0x3
    sll	$t0,$t0,0x2
    addu	$a5,$a5,$t1
    addu	$a5,$a5,$t0
    # Line 3599
    lwc1	$f16,8($a5)
    # Line 3598
    lwc1	$f15,4($a5)
    # Line 3597
    lwc1	$f14,0($a5)
    # Line 3599
    madd.s	$f24,$f24,$f16,$f12
    # Line 3598
    madd.s	$f20,$f20,$f15,$f12
    b	.L0da1cc08
    # Line 3597
    madd.s	$f22,$f22,$f14,$f12
.L0da1d1e0:
    # Line 3608
    ld	$t2,200($sp)
    sllv	$t2,$s5,$t2
    ld	$t1,208($sp)
    addu	$t2,$s6,$t2
    sll	$t3,$t2,0x3
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t3
    addu	$t1,$t1,$t2
    # Line 3610
    lwc1	$f19,8($t1)
    # Line 3609
    lwc1	$f18,4($t1)
    # Line 3608
    lwc1	$f17,0($t1)
    # Line 3610
    madd.s	$f24,$f24,$f19,$f13
    # Line 3609
    madd.s	$f20,$f20,$f18,$f13
    b	.L0da1cc38
    # Line 3608
    madd.s	$f22,$f22,$f17,$f13
.L0da1d21c:
    # Line 3619
    sllv	$t8,$s8,$t8
    ld	$t3,208($sp)
    addu	$t8,$s7,$t8
    sll	$t9,$t8,0x3
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t9
    addu	$t3,$t3,$t8
    # Line 3621
    lwc1	$f25,8($t3)
    # Line 3620
    lwc1	$f23,4($t3)
    # Line 3619
    lwc1	$f21,0($t3)
    # Line 3621
    madd.s	$f24,$f24,$f25,$f11
    # Line 3620
    madd.s	$f20,$f20,$f23,$f11
    b	.L0da1cc58
    # Line 3619
    madd.s	$f22,$f22,$f21,$f11
.L0da1d254:
    # Line 3630
    sllv	$ra,$s8,$ra
    ld	$t9,208($sp)
    addu	$ra,$s6,$ra
    sll	$at,$ra,0x3
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$at
    addu	$t9,$t9,$ra
    # Line 3632
    lwc1	$f31,8($t9)
    # Line 3631
    lwc1	$f29,4($t9)
    # Line 3630
    lwc1	$f27,0($t9)
    # Line 3632
    madd.s	$f24,$f24,$f31,$f10
    # Line 3631
    madd.s	$f20,$f20,$f29,$f10
    b	.L0da1c364
    # Line 3630
    madd.s	$f22,$f22,$f27,$f10
.L0da1d28c:
    # Line 3399
    ldc1	$f26,64($sp)
    msub.s	$f26,$f26,$f22,$f8
    sdc1	$f7,240($sp)
    # Line 3400
    # lw $t9, -28804($gp) # &__glFloor
    sdc1	$f6,248($sp)
    sdc1	$f5,256($sp)
    sd	$a0,264($sp)
    jal	__glFloor
    mov.s	$f12,$f26
    ld	$s6,176($sp)
    # Line 3401
    li	$t9,1
    # Line 3400
    and	$t8,$v0,$s6
    move	$s7,$t8
    # Line 3401
    addiu	$t8,$t8,1
    sd	$t9,192($sp)
    b	.L0da1c934
    and	$s6,$s6,$t8
.L0da1d2d0:
    # Line 3414
    ldc1	$f28,64($sp)
    msub.s	$f28,$f28,$f20,$f5
    # Line 3415
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f28
    # Line 3417
    ld	$at,192($sp)
    # Line 3415
    ld	$s8,216($sp)
    # Line 3417
    addiu	$at,$at,1
    # Line 3415
    and	$ra,$v0,$s8
    move	$s5,$ra
    # Line 3416
    addiu	$ra,$ra,1
    # Line 3417
    sd	$at,192($sp)
    b	.L0da1c984
    # Line 3416
    and	$s8,$s8,$ra
.L0da1d308:
    # Line 3523
    ldc1	$f26,64($sp)
    msub.s	$f26,$f26,$f5,$f8
    # Line 3524
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f26
    ld	$s6,176($sp)
    # Line 3525
    li	$t9,1
    # Line 3524
    and	$t8,$v0,$s6
    move	$s7,$t8
    # Line 3525
    addiu	$t8,$t8,1
    sd	$t9,192($sp)
    b	.L0da1cb10
    and	$s6,$s6,$t8
.L0da1d33c:
    # Line 3538
    ldc1	$f29,56($sp)
    ldc1	$f28,64($sp)
    msub.s	$f28,$f28,$f29,$f5
    # Line 3539
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    mov.s	$f12,$f28
    # Line 3541
    ld	$at,192($sp)
    # Line 3539
    ld	$s8,216($sp)
    # Line 3541
    addiu	$at,$at,1
    # Line 3539
    and	$ra,$v0,$s8
    move	$s5,$ra
    # Line 3540
    addiu	$ra,$ra,1
    # Line 3541
    sd	$at,192($sp)
    b	.L0da1cb64
    # Line 3540
    and	$s8,$s8,$ra
.L0da1d378:
    # Line 3679
    ld	$gp,152($sp)
    ld	$s0,128($sp)
    ld	$s1,120($sp)
    ld	$s2,72($sp)
    ld	$s3,144($sp)
    ld	$s4,136($sp)
    ld	$s5,96($sp)
    ld	$s6,80($sp)
    ld	$s7,104($sp)
    ld	$s8,112($sp)
    ldc1	$f20,8($sp)
    ldc1	$f22,24($sp)
    ldc1	$f24,32($sp)
    ld	$ra,88($sp)
    ldc1	$f26,16($sp)
    move	$v0,$zero
    ldc1	$f28,40($sp)
    ldc1	$f30,48($sp)
    jr	$ra
    addiu	$sp,$sp,272
.end __glTextureRGB_L_LML_StippledSpan

# Function: __glTextureRGB_N_N_Span
# Declared: Line 3689 (Source lines: 3690-3795)
# Address: 0x0da1d3d0 - 0x0da1d714 (Size: 836 bytes, Frame: 144)
.globl __glTextureRGB_N_N_Span
.ent __glTextureRGB_N_N_Span
__glTextureRGB_N_N_Span:
    # Line 3690
    addiu	$sp,$sp,-144
    sdc1	$f22,8($sp)
    # Line 3712
    lwc1	$f22,30236($a0)
    # Line 3690
    sdc1	$f20,16($sp)
    # Line 3711
    lwc1	$f20,30228($a0)
    # Line 3690
    sdc1	$f24,0($sp)
    # Line 3710
    lwc1	$f24,30224($a0)
    # Line 3690
    sd	$s1,32($sp)
    # Line 3708
    lw	$s1,30464($a0)
    # Line 3690
    sd	$s4,48($sp)
    # Line 3706
    lw	$s4,28208($a0)
    # Line 3690
    sd	$s3,56($sp)
    sd	$s0,40($sp)
    # Line 3714
    lw	$a2,30248($a0)
    # Line 3704
    lw	$s0,2484($a0)
    # Line 3690
    lui	$at,0x3
    sd	$s8,24($sp)
    # Line 3714
    addiu	$s8,$a2,-1
    # Line 3690
    move	$s3,$a0
    sd	$gp,64($sp)
    addiu	$at,$at,14780
    addu	$gp,$t9,$at
    # Line 3714
    bltz	$s8,.L0da1d6d8
    # Line 3704
    lw	$s0,0($s0)
    # Line 3714
    li	$a3,10497
    sdc1	$f28,136($sp)
    sdc1	$f26,128($sp)
    sd	$s7,120($sp)
    sd	$s5,112($sp)
    li	$a5,8448
    li	$a4,0x8062
    sd	$ra,104($sp)
    li	$a7,7681
    li	$t0,8449
    sd	$s6,96($sp)
    li	$a6,-1
    b	.L0da1d708
    sd	$s2,88($sp)
    nop
    nop
.L0da1d470:
    # Line 3780
    lw	$v0,2484($s3)
    # Line 3782
    lwc1	$f11,3544($s3)
    lwc1	$f9,4($v0)
    lwc1	$f10,0($s1)
    sub.s	$f11,$f11,$f6
    mul.s	$f9,$f9,$f6
    madd.s	$f9,$f9,$f10,$f11
    swc1	$f9,0($s1)
    # Line 3783
    lwc1	$f8,3544($s3)
    lwc1	$f3,8($v0)
    lwc1	$f7,4($s1)
    sub.s	$f8,$f8,$f4
    mul.s	$f3,$f3,$f4
    madd.s	$f3,$f3,$f7,$f8
    swc1	$f3,4($s1)
    # Line 3784
    lwc1	$f2,3544($s3)
    lwc1	$f0,12($v0)
    lwc1	$f1,8($s1)
    sub.s	$f2,$f2,$f5
    mul.s	$f0,$f0,$f5
    madd.s	$f0,$f0,$f1,$f2
    swc1	$f0,8($s1)
.L0da1d4c8:
    # Line 3791
    lwc1	$f14,30392($s3)
    # Line 3790
    lwc1	$f13,30384($s3)
    # Line 3789
    lwc1	$f12,30380($s3)
    # Line 3714
    addiu	$s8,$s8,-1
    # Line 3791
    add.s	$f22,$f14,$f22
    # Line 3792
    addiu	$s1,$s1,16
    # Line 3790
    add.s	$f20,$f13,$f20
    # Line 3728
    move	$s7,$zero
    # Line 3714
    beq	$s8,$a6,.L0da1d6bc
    # Line 3789
    add.s	$f24,$f12,$f24
    # Line 3715
    lwc1	$f28,3544($s3)
.L0da1d4f4:
    div.s	$f28,$f28,$f22
    # Line 3720
    lw	$s5,228($s4)
    # Line 3726
    lwc1	$f26,32($s5)
    lw	$v1,4($s4)
    # Line 3721
    lw	$a1,44($s5)
    # Line 3722
    lw	$t8,0($s5)
    # Line 3724
    lw	$s6,24($s5)
    # Line 3723
    lw	$a0,20($s5)
    # Line 3722
    sd	$t8,80($sp)
    # Line 3724
    addiu	$s6,$s6,-1
    # Line 3721
    sd	$a1,72($sp)
    # Line 3723
    addiu	$s2,$a0,-1
    # Line 3726
    beq	$a3,$v1,.L0da1d654
    mul.s	$f12,$f24,$f28
    # Line 3728
    mul.s	$f29,$f12,$f26
    trunc.w.s	$f29,$f29
    mfc1	$ra,$f29
    # Line 3733
    slt	$at,$ra,$a0
    xori	$at,$at,0x1
    slti	$t9,$ra,0
    movn	$ra,$s2,$at
    movz	$s7,$ra,$t9
.L0da1d54c:
    # Line 3736
    lw	$v0,8($s4)
    # Line 3743
    lw	$v1,24($s5)
    # Line 3736
    mul.s	$f12,$f20,$f28
    beq	$a3,$v0,.L0da1d688
    lwc1	$f26,36($s5)
    # Line 3738
    mul.s	$f31,$f12,$f26
    trunc.w.s	$f31,$f31
    mfc1	$a2,$f31
    # Line 3743
    move	$a0,$a2
    # Line 3738
    bltz	$a2,.L0da1d5ec
    # Line 3743
    slt	$v1,$a2,$v1
    xori	$v1,$v1,0x1
    movn	$a0,$s6,$v1
.L0da1d580:
    nor	$a1,$s6,$zero
    nor	$a2,$s2,$zero
    and	$a2,$s7,$a2
    and	$a1,$a0,$a1
    or	$a1,$a1,$a2
    beqz	$a1,.L0da1d600
    # Line 3757
    ld	$t1,72($sp)
.L0da1d59c:
    # Line 3753
    lwc1	$f5,164($s4)
    # Line 3752
    lwc1	$f4,160($s4)
    # Line 3759
    beq	$s0,$a5,.L0da1d62c
    # Line 3751
    lwc1	$f6,156($s4)
.L0da1d5ac:
    # Line 3769
    beq	$s0,$a4,.L0da1d5c4
    nop
    beq	$s0,$a7,.L0da1d5c4
    nop
    bne	$s0,$t0,.L0da1d470
    nop
.L0da1d5c4:
    # Line 3772
    lwc1	$f2,30752($s3)
    mul.s	$f2,$f2,$f6
    swc1	$f2,0($s1)
    # Line 3773
    lwc1	$f1,30756($s3)
    mul.s	$f1,$f1,$f4
    swc1	$f1,4($s1)
    # Line 3774
    lwc1	$f0,30760($s3)
    mul.s	$f0,$f0,$f5
    b	.L0da1d4c8
    swc1	$f0,8($s1)
.L0da1d5ec:
    # Line 3738
    nor	$a2,$s2,$zero
    and	$a2,$s7,$a2
    bnez	$a2,.L0da1d59c
    # Line 3753
    move	$a0,$zero
    # Line 3757
    ld	$t1,72($sp)
.L0da1d600:
    sllv	$t1,$a0,$t1
    ld	$t2,80($sp)
    addu	$t1,$s7,$t1
    sll	$t3,$t1,0x3
    sll	$t1,$t1,0x2
    addu	$t2,$t2,$t3
    addu	$t1,$t1,$t2
    # Line 3759
    lwc1	$f5,8($t1)
    # Line 3758
    lwc1	$f4,4($t1)
    # Line 3759
    bne	$s0,$a5,.L0da1d5ac
    # Line 3757
    lwc1	$f6,0($t1)
.L0da1d62c:
    # Line 3767
    lwc1	$f8,8($s1)
    # Line 3766
    lwc1	$f7,4($s1)
    # Line 3765
    lwc1	$f3,0($s1)
    # Line 3767
    mul.s	$f8,$f8,$f5
    # Line 3766
    mul.s	$f7,$f7,$f4
    # Line 3767
    swc1	$f8,8($s1)
    # Line 3765
    mul.s	$f3,$f3,$f6
    # Line 3766
    swc1	$f7,4($s1)
    # Line 3767
    b	.L0da1d4c8
    # Line 3765
    swc1	$f3,0($s1)
.L0da1d654:
    # Line 3728
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    nop
    mul.s	$f9,$f0,$f26
    li	$a3,10497
    li	$a4,0x8062
    li	$a5,8448
    trunc.w.s	$f9,$f9
    li	$a6,-1
    li	$a7,7681
    li	$t0,8449
    b	.L0da1d54c
    mfc1	$s7,$f9
.L0da1d688:
    # Line 3738
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    nop
    mul.s	$f10,$f0,$f26
    li	$a3,10497
    li	$a4,0x8062
    li	$a5,8448
    trunc.w.s	$f10,$f10
    li	$a6,-1
    li	$a7,7681
    li	$t0,8449
    b	.L0da1d580
    mfc1	$a0,$f10
.L0da1d6bc:
    ld	$s2,88($sp)
    ld	$s6,96($sp)
    ld	$ra,104($sp)
    ld	$s5,112($sp)
    ld	$s7,120($sp)
    ldc1	$f26,128($sp)
    ldc1	$f28,136($sp)
.L0da1d6d8:
    # Line 3795
    ld	$gp,64($sp)
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    ld	$s3,56($sp)
    ld	$s4,48($sp)
    ld	$s8,24($sp)
    ldc1	$f20,16($sp)
    move	$v0,$zero
    ldc1	$f22,8($sp)
    ldc1	$f24,0($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da1d708:
    # Line 3728
    move	$s7,$zero
    b	.L0da1d4f4
    # Line 3715
    lwc1	$f28,3544($s3)
.end __glTextureRGB_N_N_Span

# Function: __glTextureRGB_N_N_StippledSpan
# Declared: Line 3805 (Source lines: 3806-3933)
# Address: 0x0da1d720 - 0x0da1dae4 (Size: 964 bytes, Frame: 176)
.globl __glTextureRGB_N_N_StippledSpan
.ent __glTextureRGB_N_N_StippledSpan
__glTextureRGB_N_N_StippledSpan:
    # Line 3806
    addiu	$sp,$sp,-176
    sdc1	$f22,8($sp)
    # Line 3830
    lwc1	$f22,30236($a0)
    # Line 3806
    sdc1	$f20,16($sp)
    # Line 3829
    lwc1	$f20,30228($a0)
    # Line 3806
    sdc1	$f24,0($sp)
    # Line 3828
    lwc1	$f24,30224($a0)
    # Line 3806
    sd	$s1,32($sp)
    # Line 3825
    lw	$s1,30464($a0)
    # Line 3806
    sd	$s5,24($sp)
    # Line 3823
    lw	$s5,28208($a0)
    sd	$gp,40($sp)
    # Line 3806
    sd	$s3,48($sp)
    sd	$s2,56($sp)
    # Line 3826
    lw	$v0,30472($a0)
    sd	$v0,64($sp)
    # Line 3824
    lw	$v0,30248($a0)
    # Line 3806
    lui	$at,0x3
    # Line 3821
    lw	$s2,2484($a0)
    # Line 3806
    move	$s3,$a0
    addiu	$at,$at,13932
    # Line 3824
    sd	$v0,72($sp)
    # Line 3806
    addu	$gp,$t9,$at
    # Line 3830
    beqz	$v0,.L0da1daa4
    # Line 3821
    lw	$s2,0($s2)
    sdc1	$f28,168($sp)
    sdc1	$f26,160($sp)
    sd	$s8,152($sp)
    sd	$s7,144($sp)
    sd	$s0,136($sp)
    # Line 3830
    li	$t1,8449
    sd	$s4,128($sp)
    li	$t0,7681
    li	$a5,0x8062
    sd	$ra,120($sp)
    li	$a7,8448
    li	$a4,10497
    sd	$s6,112($sp)
    b	.L0da1dad8
    li	$a6,-1
.L0da1d7c0:
    # Line 3841
    ld	$v1,72($sp)
    beqz	$v1,.L0da1da84
    lui	$s0,0x8000
    # Line 3834
    ld	$a1,72($sp)
.L0da1d7d0:
    li	$t2,32
    # Line 3839
    ld	$a2,64($sp)
    # Line 3834
    li	$a3,32
    move	$a0,$a1
    slt	$a3,$a3,$a1
    # Line 3839
    addiu	$a2,$a2,4
    sd	$a2,64($sp)
    # Line 3834
    movn	$a0,$t2,$a3
    # Line 3839
    lw	$a2,-4($a2)
    # Line 3841
    addiu	$s8,$a0,-1
    # Line 3839
    sd	$a2,96($sp)
    # Line 3837
    subu	$a1,$a1,$a0
    # Line 3858
    move	$a0,$zero
    # Line 3841
    bgez	$s8,.L0da1dad0
    sd	$a1,72($sp)
    b	.L0da1d7c0
    nop
    nop
    nop
    nop
.L0da1d820:
    # Line 3911
    lw	$t2,2484($s3)
    # Line 3913
    lwc1	$f11,3544($s3)
    lwc1	$f9,4($t2)
    lwc1	$f10,0($s1)
    sub.s	$f11,$f11,$f4
    mul.s	$f9,$f9,$f4
    madd.s	$f9,$f9,$f10,$f11
    swc1	$f9,0($s1)
    # Line 3914
    lwc1	$f8,3544($s3)
    lwc1	$f3,8($t2)
    lwc1	$f7,4($s1)
    sub.s	$f8,$f8,$f6
    mul.s	$f3,$f3,$f6
    madd.s	$f3,$f3,$f7,$f8
    swc1	$f3,4($s1)
    # Line 3915
    lwc1	$f2,3544($s3)
    lwc1	$f0,12($t2)
    lwc1	$f1,8($s1)
    sub.s	$f2,$f2,$f5
    mul.s	$f0,$f0,$f5
    madd.s	$f0,$f0,$f1,$f2
    swc1	$f0,8($s1)
.L0da1d878:
    # Line 3923
    lwc1	$f14,30392($s3)
    # Line 3922
    lwc1	$f13,30384($s3)
    # Line 3921
    lwc1	$f12,30380($s3)
    # Line 3841
    addiu	$s8,$s8,-1
    # Line 3923
    add.s	$f22,$f14,$f22
    # Line 3926
    srl	$s0,$s0,0x1
    # Line 3924
    addiu	$s1,$s1,16
    # Line 3922
    add.s	$f20,$f13,$f20
    # Line 3858
    move	$a0,$zero
    # Line 3841
    beq	$s8,$a6,.L0da1d7c0
    # Line 3921
    add.s	$f24,$f12,$f24
    # Line 3841
    ld	$t3,96($sp)
.L0da1d8a8:
    and	$t3,$t3,$s0
    beqz	$t3,.L0da1d878
    nop
    # Line 3844
    lwc1	$f26,3544($s3)
    div.s	$f26,$f26,$f22
    # Line 3849
    lw	$s6,228($s5)
    # Line 3856
    lwc1	$f28,32($s6)
    lw	$t8,4($s5)
    # Line 3852
    lw	$a2,20($s6)
    # Line 3853
    lw	$s7,24($s6)
    # Line 3851
    lw	$t9,0($s6)
    sd	$t9,88($sp)
    # Line 3850
    lw	$t9,44($s6)
    # Line 3853
    addiu	$s7,$s7,-1
    # Line 3850
    sd	$t9,80($sp)
    # Line 3852
    addiu	$s4,$a2,-1
    # Line 3856
    beq	$a4,$t8,.L0da1da18
    mul.s	$f12,$f24,$f26
    # Line 3858
    mul.s	$f27,$f12,$f28
    trunc.w.s	$f27,$f27
    mfc1	$at,$f27
    # Line 3863
    slt	$v0,$at,$a2
    xori	$v0,$v0,0x1
    slti	$ra,$at,0
    movn	$at,$s4,$v0
    movz	$a0,$at,$ra
.L0da1d910:
    # Line 3866
    lw	$v1,8($s5)
    # Line 3873
    lw	$a1,24($s6)
    # Line 3866
    mul.s	$f12,$f20,$f26
    beq	$a4,$v1,.L0da1da4c
    lwc1	$f28,36($s6)
    # Line 3868
    nor	$t2,$s4,$zero
    mul.s	$f29,$f12,$f28
    trunc.w.s	$f29,$f29
    mfc1	$a3,$f29
    and	$t2,$a0,$t2
    # Line 3873
    move	$a2,$a3
    # Line 3868
    bltz	$a3,.L0da1d9b8
    # Line 3873
    slt	$a1,$a3,$a1
    xori	$a1,$a1,0x1
    movn	$a2,$s7,$a1
.L0da1d94c:
    nor	$a3,$s7,$zero
    nor	$t2,$s4,$zero
    and	$t2,$a0,$t2
    and	$a3,$a2,$a3
    or	$a3,$a3,$t2
    beqz	$a3,.L0da1d9c4
    # Line 3888
    ld	$t3,80($sp)
.L0da1d968:
    # Line 3884
    lwc1	$f5,164($s5)
    # Line 3883
    lwc1	$f6,160($s5)
    # Line 3890
    beq	$s2,$a7,.L0da1d9f0
    # Line 3882
    lwc1	$f4,156($s5)
.L0da1d978:
    # Line 3900
    beq	$s2,$a5,.L0da1d990
    nop
    beq	$s2,$t0,.L0da1d990
    nop
    bne	$s2,$t1,.L0da1d820
    nop
.L0da1d990:
    # Line 3903
    lwc1	$f1,30752($s3)
    mul.s	$f1,$f1,$f4
    swc1	$f1,0($s1)
    # Line 3904
    lwc1	$f0,30756($s3)
    mul.s	$f0,$f0,$f6
    swc1	$f0,4($s1)
    # Line 3905
    lwc1	$f31,30760($s3)
    mul.s	$f31,$f31,$f5
    b	.L0da1d878
    swc1	$f31,8($s1)
.L0da1d9b8:
    # Line 3868
    bnez	$t2,.L0da1d968
    # Line 3884
    move	$a2,$zero
    # Line 3888
    ld	$t3,80($sp)
.L0da1d9c4:
    sllv	$t3,$a2,$t3
    ld	$t8,88($sp)
    addu	$t3,$a0,$t3
    sll	$t9,$t3,0x3
    sll	$t3,$t3,0x2
    addu	$t8,$t8,$t9
    addu	$t3,$t3,$t8
    # Line 3890
    lwc1	$f5,8($t3)
    # Line 3889
    lwc1	$f6,4($t3)
    # Line 3890
    bne	$s2,$a7,.L0da1d978
    # Line 3888
    lwc1	$f4,0($t3)
.L0da1d9f0:
    # Line 3898
    lwc1	$f7,8($s1)
    # Line 3897
    lwc1	$f3,4($s1)
    # Line 3896
    lwc1	$f2,0($s1)
    # Line 3898
    mul.s	$f7,$f7,$f5
    # Line 3897
    mul.s	$f3,$f3,$f6
    # Line 3898
    swc1	$f7,8($s1)
    # Line 3896
    mul.s	$f2,$f2,$f4
    # Line 3897
    swc1	$f3,4($s1)
    # Line 3898
    b	.L0da1d878
    # Line 3896
    swc1	$f2,0($s1)
.L0da1da18:
    # Line 3858
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    nop
    mul.s	$f8,$f0,$f28
    li	$a4,10497
    li	$a5,0x8062
    li	$a6,-1
    trunc.w.s	$f8,$f8
    li	$a7,8448
    li	$t0,7681
    li	$t1,8449
    b	.L0da1d910
    mfc1	$a0,$f8
.L0da1da4c:
    # Line 3868
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    sd	$a0,104($sp)
    mul.s	$f9,$f0,$f28
    li	$a4,10497
    li	$a5,0x8062
    li	$a6,-1
    trunc.w.s	$f9,$f9
    li	$a7,8448
    li	$t0,7681
    ld	$a0,104($sp)
    li	$t1,8449
    b	.L0da1d94c
    mfc1	$a2,$f9
.L0da1da84:
    ld	$s6,112($sp)
    ld	$ra,120($sp)
    ld	$s4,128($sp)
    ld	$s0,136($sp)
    ld	$s7,144($sp)
    ld	$s8,152($sp)
    ldc1	$f26,160($sp)
    ldc1	$f28,168($sp)
.L0da1daa4:
    # Line 3933
    ld	$gp,40($sp)
    ld	$s1,32($sp)
    ld	$s2,56($sp)
    ld	$s3,48($sp)
    ld	$s5,24($sp)
    ldc1	$f20,16($sp)
    move	$v0,$zero
    ldc1	$f22,8($sp)
    ldc1	$f24,0($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0da1dad0:
    b	.L0da1d8a8
    # Line 3841
    ld	$t3,96($sp)
.L0da1dad8:
    lui	$s0,0x8000
    b	.L0da1d7d0
    # Line 3834
    ld	$a1,72($sp)
.end __glTextureRGB_N_N_StippledSpan

# Function: __glTextureRGB_N_NMN_Span
# Declared: Line 3943 (Source lines: 3944-4086)
# Address: 0x0da1daf0 - 0x0da1df48 (Size: 1112 bytes, Frame: 160)
.globl __glTextureRGB_N_NMN_Span
.ent __glTextureRGB_N_NMN_Span
__glTextureRGB_N_NMN_Span:
    # Line 3944
    addiu	$sp,$sp,-160
    sdc1	$f22,24($sp)
    # Line 3970
    lwc1	$f22,30240($a0)
    # Line 3944
    sdc1	$f24,16($sp)
    # Line 3969
    lwc1	$f24,30236($a0)
    # Line 3944
    sdc1	$f26,32($sp)
    # Line 3968
    lwc1	$f26,30228($a0)
    # Line 3944
    sdc1	$f20,40($sp)
    # Line 3967
    lwc1	$f20,30224($a0)
    # Line 3944
    sd	$s3,128($sp)
    # Line 3965
    lw	$s3,30464($a0)
    # Line 3944
    sd	$s0,120($sp)
    # Line 3963
    lw	$s0,28208($a0)
    sdc1	$f30,8($sp)
    sdc1	$f28,0($sp)
    sd	$s7,80($sp)
    sd	$s1,72($sp)
    sd	$s4,64($sp)
    sd	$ra,56($sp)
    sd	$s6,88($sp)
    sd	$gp,112($sp)
    # Line 3944
    sd	$s5,104($sp)
    # Line 3952
    lwc1	$f0,3540($a0)
    # Line 3944
    sd	$s2,136($sp)
    # Line 3972
    lw	$a2,30248($a0)
    # Line 3961
    lw	$s2,2484($a0)
    # Line 3944
    lui	$at,0x3
    sd	$s8,96($sp)
    # Line 3972
    addiu	$s8,$a2,-1
    # Line 3944
    move	$s5,$a0
    addiu	$at,$at,12956
    # Line 3952
    sdc1	$f0,48($sp)
    # Line 3944
    addu	$gp,$t9,$at
    # Line 3972
    bltz	$s8,.L0da1dee8
    # Line 3961
    lw	$s2,0($s2)
    # Line 3972
    li	$a7,-1
    li	$t1,8449
    li	$t0,7681
    li	$a5,0x8062
    li	$a6,8448
    li	$a4,10497
    lwc1	$f9,_lit_3efff972
    li	$t2,1
    lwc1	$f7,_lit_3f000000
    b	.L0da1df38
    mtc1	$zero,$f8
    nop
    nop
.L0da1dbb0:
    # Line 3981
    move	$s1,$a0
.L0da1dbb4:
    # Line 4015
    lwc1	$f30,32($s1)
    # Line 4010
    lw	$v1,44($s1)
    # Line 4011
    lw	$t8,0($s1)
    # Line 4013
    lw	$s6,24($s1)
    # Line 4012
    lw	$a0,20($s1)
    # Line 4011
    sd	$t8,152($sp)
    # Line 4013
    addiu	$s6,$s6,-1
    # Line 4015
    mul.s	$f12,$f20,$f28
    # Line 4010
    sd	$v1,144($sp)
    # Line 4015
    beq	$a4,$v0,.L0da1de60
    # Line 4012
    addiu	$s4,$a0,-1
    # Line 4017
    mul.s	$f1,$f12,$f30
    trunc.w.s	$f1,$f1
    mfc1	$ra,$f1
    # Line 4022
    slt	$at,$ra,$a0
    xori	$at,$at,0x1
    slti	$t9,$ra,0
    movn	$ra,$s4,$at
    movz	$s7,$ra,$t9
.L0da1dc00:
    # Line 4025
    lw	$v0,8($s0)
    # Line 4032
    lw	$v1,24($s1)
    # Line 4025
    mul.s	$f12,$f26,$f28
    beq	$a4,$v0,.L0da1dea4
    lwc1	$f30,36($s1)
    # Line 4027
    nor	$t8,$s4,$zero
    mul.s	$f2,$f12,$f30
    trunc.w.s	$f2,$f2
    mfc1	$a2,$f2
    and	$t8,$s7,$t8
    # Line 4032
    move	$a0,$a2
    # Line 4027
    bltz	$a2,.L0da1ddd8
    # Line 4032
    slt	$v1,$a2,$v1
    xori	$v1,$v1,0x1
    movn	$a0,$s6,$v1
.L0da1dc3c:
    nor	$a1,$s6,$zero
    nor	$a2,$s4,$zero
    and	$a2,$s7,$a2
    and	$a1,$a0,$a1
    or	$a1,$a1,$a2
    beqz	$a1,.L0da1dde4
    # Line 4047
    ld	$t9,144($sp)
.L0da1dc58:
    # Line 4043
    lwc1	$f6,164($s0)
    # Line 4042
    lwc1	$f4,160($s0)
    # Line 4049
    beq	$s2,$a6,.L0da1de10
    # Line 4041
    lwc1	$f5,156($s0)
.L0da1dc68:
    # Line 4059
    beq	$s2,$a5,.L0da1de38
    nop
    beq	$s2,$t0,.L0da1de38
    nop
    beq	$s2,$t1,.L0da1de38
    nop
    # Line 4070
    lw	$a2,2484($s5)
    # Line 4072
    lwc1	$f17,3544($s5)
    lwc1	$f15,4($a2)
    lwc1	$f16,0($s3)
    sub.s	$f17,$f17,$f5
    mul.s	$f15,$f15,$f5
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,0($s3)
    # Line 4073
    lwc1	$f14,3544($s5)
    lwc1	$f12,8($a2)
    lwc1	$f13,4($s3)
    sub.s	$f14,$f14,$f4
    mul.s	$f12,$f12,$f4
    madd.s	$f12,$f12,$f13,$f14
    swc1	$f12,4($s3)
    # Line 4074
    lwc1	$f11,3544($s5)
    lwc1	$f3,12($a2)
    lwc1	$f10,8($s3)
    sub.s	$f11,$f11,$f6
    mul.s	$f3,$f3,$f6
    madd.s	$f3,$f3,$f10,$f11
    swc1	$f3,8($s3)
.L0da1dcd8:
    # Line 4082
    lwc1	$f23,30396($s5)
    # Line 4081
    lwc1	$f21,30392($s5)
    # Line 4080
    lwc1	$f19,30384($s5)
    # Line 4079
    lwc1	$f18,30380($s5)
    # Line 4082
    add.s	$f22,$f23,$f22
    # Line 3972
    addiu	$s8,$s8,-1
    # Line 4081
    add.s	$f24,$f21,$f24
    # Line 3994
    mtc1	$zero,$f5
    # Line 4083
    addiu	$s3,$s3,16
    # Line 4080
    add.s	$f26,$f19,$f26
    # Line 3990
    move	$a2,$zero
    # Line 3972
    beq	$s8,$a7,.L0da1dee8
    # Line 4079
    add.s	$f20,$f18,$f20
    # Line 3973
    lwc1	$f28,3544($s5)
.L0da1dd10:
    div.s	$f28,$f28,$f24
    lwc1	$f25,240($s0)
    mul.s	$f4,$f22,$f28
    c.le.s	$f4,$f25
    # Line 4015
    lw	$v0,4($s0)
    # Line 4017
    move	$s7,$zero
    # Line 3973
    bc1t	.L0da1dbb0
    lw	$a0,228($s0)
    # Line 3981
    c.eq.s $f4,$f8
    bc1t .L0da1dd94
    nop
    # Line 3990
    trunc.w.s	$f29,$f4
    mfc1	$t3,$f29
    sra	$t3,$t3,0x1
    # Line 3992
    ldc1	$f5,48($sp)
    # Line 3990
    beqz	$t3,.L0da1dd70
    move	$a3,$t3
    move	$a2,$zero
.L0da1dd58:
    sra	$a3,$a3,0x1
    addiu	$a2,$a2,1
    beqz	$a3,.L0da1dd70
    sra	$a3,$a3,0x1
    bnez	$a3,.L0da1dd58
    addiu	$a2,$a2,1
.L0da1dd70:
    # Line 3992
    sllv	$t8,$t2,$a2
    mtc1	$t8,$f11
    cvt.s.w	$f11,$f11
    sub.s	$f10,$f4,$f11
    div.s	$f10,$f10,$f11
    mtc1	$a2,$f6
    cvt.s.w	$f6,$f6
    add.s	$f6,$f6,$f10
    mul.s	$f5,$f5,$f6
.L0da1dd94:
    # Line 3994
    c.le.s $f5,$f7
    bc1t .L0da1ddbc
    move	$a2,$zero
    # Line 4002
    add.s	$f12,$f5,$f9
    trunc.w.s	$f12,$f12
    # Line 4000
    lw	$a2,236($s0)
    # Line 4002
    mfc1	$t9,$f12
    move	$ra,$t9
    slt	$t9,$a2,$t9
    movz	$a2,$ra,$t9
.L0da1ddbc:
    # Line 4007
    sll	$s1,$a2,0x2
    subu	$s1,$s1,$a2
    sll	$s1,$s1,0x3
    addu	$s1,$s1,$a2
    sll	$s1,$s1,0x2
    b	.L0da1dbb4
    addu	$s1,$a0,$s1
.L0da1ddd8:
    # Line 4027
    bnez	$t8,.L0da1dc58
    # Line 4043
    move	$a0,$zero
    # Line 4047
    ld	$t9,144($sp)
.L0da1dde4:
    sllv	$t9,$a0,$t9
    ld	$ra,152($sp)
    addu	$t9,$s7,$t9
    sll	$at,$t9,0x3
    sll	$t9,$t9,0x2
    addu	$ra,$ra,$at
    addu	$t9,$t9,$ra
    # Line 4049
    lwc1	$f6,8($t9)
    # Line 4048
    lwc1	$f4,4($t9)
    # Line 4049
    bne	$s2,$a6,.L0da1dc68
    # Line 4047
    lwc1	$f5,0($t9)
.L0da1de10:
    # Line 4057
    lwc1	$f15,8($s3)
    # Line 4056
    lwc1	$f14,4($s3)
    # Line 4055
    lwc1	$f13,0($s3)
    # Line 4057
    mul.s	$f15,$f15,$f6
    # Line 4056
    mul.s	$f14,$f14,$f4
    # Line 4057
    swc1	$f15,8($s3)
    # Line 4055
    mul.s	$f13,$f13,$f5
    # Line 4056
    swc1	$f14,4($s3)
    # Line 4057
    b	.L0da1dcd8
    # Line 4055
    swc1	$f13,0($s3)
.L0da1de38:
    # Line 4062
    lwc1	$f18,30752($s5)
    mul.s	$f18,$f18,$f5
    swc1	$f18,0($s3)
    # Line 4063
    lwc1	$f17,30756($s5)
    mul.s	$f17,$f17,$f4
    swc1	$f17,4($s3)
    # Line 4064
    lwc1	$f16,30760($s5)
    mul.s	$f16,$f16,$f6
    b	.L0da1dcd8
    swc1	$f16,8($s3)
.L0da1de60:
    # Line 4017
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    nop
    li	$a4,10497
    mul.s	$f19,$f0,$f30
    li	$a5,0x8062
    li	$a6,8448
    li	$a7,-1
    li	$t0,7681
    trunc.w.s	$f19,$f19
    li	$t1,8449
    lwc1	$f7,_lit_3f000000
    mtc1	$zero,$f8
    li	$t2,1
    lwc1	$f9,_lit_3efff972
    b	.L0da1dc00
    mfc1	$s7,$f19
.L0da1dea4:
    # Line 4027
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    nop
    li	$a4,10497
    mul.s	$f21,$f0,$f30
    li	$a5,0x8062
    li	$a6,8448
    li	$a7,-1
    li	$t0,7681
    trunc.w.s	$f21,$f21
    li	$t1,8449
    lwc1	$f7,_lit_3f000000
    mtc1	$zero,$f8
    li	$t2,1
    lwc1	$f9,_lit_3efff972
    b	.L0da1dc3c
    mfc1	$a0,$f21
.L0da1dee8:
    # Line 4086
    ld	$gp,112($sp)
    ld	$s0,120($sp)
    ld	$s1,72($sp)
    ld	$s2,136($sp)
    ld	$s3,128($sp)
    ld	$s4,64($sp)
    ld	$s5,104($sp)
    ld	$s6,88($sp)
    ld	$s7,80($sp)
    ld	$s8,96($sp)
    ldc1	$f20,40($sp)
    ldc1	$f22,24($sp)
    ldc1	$f24,16($sp)
    ld	$ra,56($sp)
    ldc1	$f26,32($sp)
    move	$v0,$zero
    ldc1	$f28,0($sp)
    ldc1	$f30,8($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da1df38:
    # Line 3994
    mtc1	$zero,$f5
    # Line 3990
    move	$a2,$zero
    b	.L0da1dd10
    # Line 3973
    lwc1	$f28,3544($s5)
.end __glTextureRGB_N_NMN_Span

# Function: __glTextureRGB_N_NMN_StippledSpan
# Declared: Line 4096 (Source lines: 4097-4259)
# Address: 0x0da1df50 - 0x0da1e40c (Size: 1212 bytes, Frame: 192)
.globl __glTextureRGB_N_NMN_StippledSpan
.ent __glTextureRGB_N_NMN_StippledSpan
__glTextureRGB_N_NMN_StippledSpan:
    # Line 4120
    lw	$v1,30472($a0)
    # Line 4097
    addiu	$sp,$sp,-192
    sdc1	$f22,24($sp)
    # Line 4125
    lwc1	$f22,30240($a0)
    # Line 4097
    sdc1	$f24,16($sp)
    # Line 4124
    lwc1	$f24,30236($a0)
    # Line 4097
    sdc1	$f26,32($sp)
    # Line 4123
    lwc1	$f26,30228($a0)
    # Line 4097
    sdc1	$f20,40($sp)
    # Line 4122
    lwc1	$f20,30224($a0)
    # Line 4120
    sd	$v1,144($sp)
    # Line 4097
    sd	$s3,136($sp)
    # Line 4119
    lw	$s3,30464($a0)
    # Line 4097
    sd	$s0,112($sp)
    # Line 4117
    lw	$s0,28208($a0)
    # Line 4118
    lw	$at,30248($a0)
    sd	$at,152($sp)
    sdc1	$f30,8($sp)
    sdc1	$f28,0($sp)
    sd	$s8,96($sp)
    sd	$s7,88($sp)
    sd	$s1,80($sp)
    sd	$ra,72($sp)
    sd	$s6,64($sp)
    sd	$s2,56($sp)
    sd	$gp,128($sp)
    # Line 4097
    sd	$s5,104($sp)
    # Line 4106
    lwc1	$f0,3540($a0)
    # Line 4097
    sd	$s4,120($sp)
    lui	$v0,0x3
    # Line 4115
    lw	$s4,2484($a0)
    # Line 4097
    move	$s5,$a0
    addiu	$v0,$v0,11836
    # Line 4106
    sdc1	$f0,48($sp)
    # Line 4097
    addu	$gp,$t9,$v0
    # Line 4125
    beqz	$at,.L0da1e3b0
    # Line 4115
    lw	$s4,0($s4)
    # Line 4125
    li	$t1,8449
    li	$t0,7681
    li	$a5,0x8062
    li	$a7,8448
    li	$a4,10497
    li	$t2,1
    lwc1	$f9,_lit_3efff972
    mtc1	$zero,$f8
    li	$a6,-1
    b	.L0da1e018
    lwc1	$f7,_lit_3f000000
.L0da1e010:
    # Line 4136
    ld	$a0,152($sp)
    beqz	$a0,.L0da1e3b0
.L0da1e018:
    # Line 4129
    ld	$a1,152($sp)
    li	$t3,32
    # Line 4134
    ld	$a2,144($sp)
    # Line 4129
    li	$a3,32
    move	$a0,$a1
    slt	$a3,$a3,$a1
    # Line 4134
    addiu	$a2,$a2,4
    sd	$a2,144($sp)
    # Line 4129
    movn	$a0,$t3,$a3
    # Line 4134
    lw	$a2,-4($a2)
    # Line 4136
    addiu	$s8,$a0,-1
    # Line 4134
    sd	$a2,176($sp)
    # Line 4132
    subu	$a1,$a1,$a0
    # Line 4136
    bltz	$s8,.L0da1e010
    sd	$a1,152($sp)
    b	.L0da1e400
    lui	$s2,0x8000
    nop
.L0da1e060:
    # Line 4147
    move	$s1,$a0
.L0da1e064:
    # Line 4181
    lwc1	$f30,32($s1)
    # Line 4176
    lw	$s6,44($s1)
    # Line 4177
    lw	$t8,0($s1)
    # Line 4179
    lw	$s7,24($s1)
    # Line 4181
    lw	$t3,4($s0)
    # Line 4178
    lw	$a2,20($s1)
    # Line 4183
    move	$a0,$zero
    # Line 4177
    sd	$t8,168($sp)
    # Line 4179
    addiu	$s7,$s7,-1
    # Line 4181
    mul.s	$f12,$f20,$f28
    # Line 4176
    sd	$s6,160($sp)
    # Line 4181
    beq	$a4,$t3,.L0da1e324
    # Line 4178
    addiu	$s6,$a2,-1
    # Line 4183
    mul.s	$f1,$f12,$f30
    trunc.w.s	$f1,$f1
    mfc1	$ra,$f1
    # Line 4188
    slt	$at,$ra,$a2
    xori	$at,$at,0x1
    slti	$t9,$ra,0
    movn	$ra,$s6,$at
    movz	$a0,$ra,$t9
.L0da1e0b8:
    # Line 4191
    lw	$v0,8($s0)
    # Line 4198
    lw	$v1,24($s1)
    # Line 4191
    mul.s	$f12,$f26,$f28
    beq	$a4,$v0,.L0da1e368
    lwc1	$f30,36($s1)
    # Line 4193
    nor	$t8,$s6,$zero
    mul.s	$f2,$f12,$f30
    trunc.w.s	$f2,$f2
    mfc1	$a3,$f2
    and	$t8,$a0,$t8
    # Line 4198
    move	$a2,$a3
    # Line 4193
    bltz	$a3,.L0da1e29c
    # Line 4198
    slt	$v1,$a3,$v1
    xori	$v1,$v1,0x1
    movn	$a2,$s7,$v1
.L0da1e0f4:
    nor	$a1,$s7,$zero
    nor	$a3,$s6,$zero
    and	$a3,$a0,$a3
    and	$a1,$a2,$a1
    or	$a1,$a1,$a3
    beqz	$a1,.L0da1e2a8
    # Line 4213
    ld	$t9,160($sp)
.L0da1e110:
    # Line 4209
    lwc1	$f6,164($s0)
    # Line 4208
    lwc1	$f4,160($s0)
    # Line 4215
    beq	$s4,$a7,.L0da1e2d4
    # Line 4207
    lwc1	$f5,156($s0)
.L0da1e120:
    # Line 4225
    beq	$s4,$a5,.L0da1e2fc
    nop
    beq	$s4,$t0,.L0da1e2fc
    nop
    beq	$s4,$t1,.L0da1e2fc
    nop
    # Line 4236
    lw	$a2,2484($s5)
    # Line 4238
    lwc1	$f17,3544($s5)
    lwc1	$f15,4($a2)
    lwc1	$f16,0($s3)
    sub.s	$f17,$f17,$f5
    mul.s	$f15,$f15,$f5
    madd.s	$f15,$f15,$f16,$f17
    swc1	$f15,0($s3)
    # Line 4239
    lwc1	$f14,3544($s5)
    lwc1	$f12,8($a2)
    lwc1	$f13,4($s3)
    sub.s	$f14,$f14,$f4
    mul.s	$f12,$f12,$f4
    madd.s	$f12,$f12,$f13,$f14
    swc1	$f12,4($s3)
    # Line 4240
    lwc1	$f11,3544($s5)
    lwc1	$f3,12($a2)
    lwc1	$f10,8($s3)
    sub.s	$f11,$f11,$f6
    mul.s	$f3,$f3,$f6
    madd.s	$f3,$f3,$f10,$f11
    swc1	$f3,8($s3)
.L0da1e190:
    # Line 4249
    lwc1	$f23,30396($s5)
    # Line 4248
    lwc1	$f21,30392($s5)
    # Line 4247
    lwc1	$f19,30384($s5)
    # Line 4246
    lwc1	$f18,30380($s5)
    # Line 4249
    add.s	$f22,$f23,$f22
    # Line 4136
    addiu	$s8,$s8,-1
    # Line 4248
    add.s	$f24,$f21,$f24
    # Line 4252
    srl	$s2,$s2,0x1
    # Line 4250
    addiu	$s3,$s3,16
    # Line 4247
    add.s	$f26,$f19,$f26
    # Line 4156
    move	$a2,$zero
    # Line 4136
    beq	$s8,$a6,.L0da1e010
    # Line 4246
    add.s	$f20,$f18,$f20
    # Line 4136
    ld	$a3,176($sp)
.L0da1e1c8:
    and	$a3,$a3,$s2
    beqz	$a3,.L0da1e190
    # Line 4158
    ldc1	$f5,48($sp)
    # Line 4139
    lwc1	$f28,3544($s5)
    div.s	$f28,$f28,$f24
    lwc1	$f25,240($s0)
    mul.s	$f4,$f22,$f28
    c.le.s	$f4,$f25
    bc1t	.L0da1e060
    lw	$a0,228($s0)
    # Line 4147
    c.eq.s $f4,$f8
    bc1t .L0da1e254
    nop
    # Line 4156
    trunc.w.s	$f29,$f4
    mfc1	$t3,$f29
    sra	$t3,$t3,0x1
    beqz	$t3,.L0da1e22c
    move	$a3,$t3
    move	$a2,$zero
.L0da1e214:
    sra	$a3,$a3,0x1
    addiu	$a2,$a2,1
    beqz	$a3,.L0da1e22c
    sra	$a3,$a3,0x1
    bnez	$a3,.L0da1e214
    addiu	$a2,$a2,1
.L0da1e22c:
    # Line 4158
    sllv	$t8,$t2,$a2
    mtc1	$t8,$f11
    cvt.s.w	$f11,$f11
    sub.s	$f10,$f4,$f11
    div.s	$f10,$f10,$f11
    mtc1	$a2,$f6
    cvt.s.w	$f6,$f6
    add.s	$f6,$f6,$f10
    b	.L0da1e258
    mul.s	$f5,$f5,$f6
.L0da1e254:
    # Line 4160
    mtc1	$zero,$f5
.L0da1e258:
    c.le.s $f5,$f7
    bc1t .L0da1e280
    move	$a2,$zero
    # Line 4168
    add.s	$f12,$f5,$f9
    trunc.w.s	$f12,$f12
    # Line 4166
    lw	$a2,236($s0)
    # Line 4168
    mfc1	$t9,$f12
    move	$ra,$t9
    slt	$t9,$a2,$t9
    movz	$a2,$ra,$t9
.L0da1e280:
    # Line 4173
    sll	$s1,$a2,0x2
    subu	$s1,$s1,$a2
    sll	$s1,$s1,0x3
    addu	$s1,$s1,$a2
    sll	$s1,$s1,0x2
    b	.L0da1e064
    addu	$s1,$a0,$s1
.L0da1e29c:
    # Line 4193
    bnez	$t8,.L0da1e110
    # Line 4209
    move	$a2,$zero
    # Line 4213
    ld	$t9,160($sp)
.L0da1e2a8:
    sllv	$t9,$a2,$t9
    ld	$ra,168($sp)
    addu	$t9,$a0,$t9
    sll	$at,$t9,0x3
    sll	$t9,$t9,0x2
    addu	$ra,$ra,$at
    addu	$t9,$t9,$ra
    # Line 4215
    lwc1	$f6,8($t9)
    # Line 4214
    lwc1	$f4,4($t9)
    # Line 4215
    bne	$s4,$a7,.L0da1e120
    # Line 4213
    lwc1	$f5,0($t9)
.L0da1e2d4:
    # Line 4223
    lwc1	$f15,8($s3)
    # Line 4222
    lwc1	$f14,4($s3)
    # Line 4221
    lwc1	$f13,0($s3)
    # Line 4223
    mul.s	$f15,$f15,$f6
    # Line 4222
    mul.s	$f14,$f14,$f4
    # Line 4223
    swc1	$f15,8($s3)
    # Line 4221
    mul.s	$f13,$f13,$f5
    # Line 4222
    swc1	$f14,4($s3)
    # Line 4223
    b	.L0da1e190
    # Line 4221
    swc1	$f13,0($s3)
.L0da1e2fc:
    # Line 4228
    lwc1	$f18,30752($s5)
    mul.s	$f18,$f18,$f5
    swc1	$f18,0($s3)
    # Line 4229
    lwc1	$f17,30756($s5)
    mul.s	$f17,$f17,$f4
    swc1	$f17,4($s3)
    # Line 4230
    lwc1	$f16,30760($s5)
    mul.s	$f16,$f16,$f6
    b	.L0da1e190
    swc1	$f16,8($s3)
.L0da1e324:
    # Line 4183
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    nop
    li	$a4,10497
    mul.s	$f19,$f0,$f30
    li	$a5,0x8062
    li	$a6,-1
    li	$a7,8448
    li	$t0,7681
    trunc.w.s	$f19,$f19
    li	$t1,8449
    lwc1	$f7,_lit_3f000000
    mtc1	$zero,$f8
    li	$t2,1
    lwc1	$f9,_lit_3efff972
    b	.L0da1e0b8
    mfc1	$a0,$f19
.L0da1e368:
    # Line 4193
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    sd	$a0,184($sp)
    li	$a4,10497
    mul.s	$f21,$f0,$f30
    li	$a5,0x8062
    li	$a6,-1
    ld	$a0,184($sp)
    li	$a7,8448
    li	$t0,7681
    trunc.w.s	$f21,$f21
    li	$t1,8449
    lwc1	$f7,_lit_3f000000
    mtc1	$zero,$f8
    li	$t2,1
    lwc1	$f9,_lit_3efff972
    b	.L0da1e0f4
    mfc1	$a2,$f21
.L0da1e3b0:
    # Line 4259
    ld	$gp,128($sp)
    ld	$s0,112($sp)
    ld	$s1,80($sp)
    ld	$s2,56($sp)
    ld	$s3,136($sp)
    ld	$s4,120($sp)
    ld	$s5,104($sp)
    ld	$s6,64($sp)
    ld	$s7,88($sp)
    ld	$s8,96($sp)
    ldc1	$f20,40($sp)
    ldc1	$f22,24($sp)
    ldc1	$f24,16($sp)
    ld	$ra,72($sp)
    ldc1	$f26,32($sp)
    move	$v0,$zero
    ldc1	$f28,0($sp)
    ldc1	$f30,8($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0da1e400:
    # Line 4156
    move	$a2,$zero
    b	.L0da1e1c8
    # Line 4136
    ld	$a3,176($sp)
.end __glTextureRGB_N_NMN_StippledSpan

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4000000000000000:
    .word 0x40000000, 0x00000000
_lit8_4030000000000000:
    .word 0x40300000, 0x00000000
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_3efff972:
    .word 0x3efff972
_lit_3f000000:
    .word 0x3f000000

