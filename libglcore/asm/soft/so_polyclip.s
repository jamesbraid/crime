# Source: ../soft/so_polyclip.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_polyclip.c
# Total Functions: 5

.text

# Function: clipToPlane
# Declared: Line 35 (Source lines: 37-113)
# Address: 0x0d9faf30 - 0x0d9fb1c4 (Size: 660 bytes, Frame: 144)
.ent clipToPlane
clipToPlane:
    # Line 47
    lw	$v0,12096($a0)
    # Line 37
    addiu	$sp,$sp,-144
    sd	$a0,64($sp)
    sd	$s3,48($sp)
    sd	$s7,80($sp)
    # Line 46
    lw	$s7,29696($a0)
    sd	$s0,40($sp)
    sdc1	$f22,8($sp)
    # Line 50
    lwc1	$f5,4($a4)
    # Line 37
    sd	$s6,96($sp)
    # Line 49
    sll	$s6,$a2,0x2
    # Line 37
    sd	$s2,104($sp)
    # Line 49
    addu	$s6,$a1,$s6
    lw	$s2,-4($s6)
    # Line 50
    lwc1	$f4,0($a4)
    lwc1	$f8,112($s2)
    lwc1	$f6,116($s2)
    lwc1	$f7,8($a4)
    mul.s	$f4,$f4,$f8
    lwc1	$f8,120($s2)
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f6,124($s2)
    lwc1	$f5,12($a4)
    # Line 37
    sd	$s4,88($sp)
    # Line 50
    madd.s	$f4,$f4,$f7,$f8
    # Line 37
    move	$s4,$a3
    # Line 50
    mtc1	$zero,$f22
    # Line 37
    sd	$s5,72($sp)
    move	$s5,$a4
    sd	$s8,32($sp)
    # Line 50
    blez	$a2,.L0d9fb12c
    madd.s	$f4,$f4,$f5,$f6
    sd	$zero,128($sp)
    sdc1	$f20,0($sp)
    sd	$s1,16($sp)
    addiu	$s8,$s7,-192
    move	$s0,$a1
    sd	$ra,24($sp)
    move	$s3,$zero
    b	.L0d9fb1b8
    sd	$v0,56($sp)
    nop
    nop
    nop
.L0d9fafe0:
    # Line 54
    beqz	$v0,.L0d9fb0c0
    # Line 66
    ld	$t9,56($sp)
    # Line 60
    addiu	$s4,$s4,4
    # Line 61
    addiu	$s3,$s3,1
    # Line 60
    sw	$s1,-4($s4)
.L0d9faff4:
    # Line 52
    addiu	$s0,$s0,4
    # Line 109
    move	$s2,$s1
    # Line 54
    li	$v0,1
    # Line 52
    beq	$s0,$s6,.L0d9fb13c
    # Line 110
    mov.s	$f4,$f20
    # Line 54
    lwc1	$f21,4($s5)
.L0d9fb00c:
    # Line 53
    lw	$s1,0($s0)
    # Line 54
    lwc1	$f20,0($s5)
    lwc1	$f27,112($s1)
    lwc1	$f23,116($s1)
    lwc1	$f25,8($s5)
    mul.s	$f20,$f20,$f27
    lwc1	$f27,120($s1)
    madd.s	$f20,$f20,$f21,$f23
    lwc1	$f23,124($s1)
    lwc1	$f21,12($s5)
    madd.s	$f20,$f20,$f25,$f27
    madd.s	$f20,$f20,$f21,$f23
    c.le.s $f22,$f20
    c.le.s	$f22,$f4
    bc1t .L0d9fafe0
    movf	$v0,$zero,$fcc0
    # Line 76
    beqz	$v0,.L0d9faff4
    # Line 94
    ld	$t9,56($sp)
    move	$a2,$s2
    move	$a1,$s1
    sub.s	$f15,$f4,$f20
    # Line 93
    addiu	$s8,$s8,192
    sd	$s8,112($sp)
    addiu	$s7,$s7,192
    sd	$s7,120($sp)
    # Line 94
    move	$a0,$s8
    jalr	$t9
    div.s	$f15,$f4,$f15
    # Line 98
    ld	$t9,112($sp)
    # Line 101
    ld	$v0,128($sp)
    # Line 95
    ld	$at,120($sp)
    # Line 101
    addiu	$v1,$v0,1
    sd	$v1,128($sp)
    # Line 95
    li	$a0,1
    sb	$a0,-8($at)
    # Line 96
    lw	$ra,0($s2)
    # Line 101
    slti	$t8,$v0,2
    # Line 98
    addiu	$s4,$s4,4
    # Line 96
    sw	$ra,-192($at)
    # Line 99
    addiu	$s3,$s3,1
    # Line 101
    bnez	$t8,.L0d9faff4
    # Line 98
    sw	$t9,-4($s4)
    # Line 103
    b	.L0d9fb180
    move	$v0,$zero
    nop
.L0d9fb0c0:
    # Line 66
    move	$a2,$s1
    move	$a1,$s2
    sub.s	$f15,$f20,$f4
    # Line 65
    addiu	$s8,$s8,192
    sd	$s8,112($sp)
    addiu	$s7,$s7,192
    sd	$s7,120($sp)
    # Line 66
    move	$a0,$s8
    jalr	$t9
    div.s	$f15,$f20,$f15
    # Line 70
    ld	$a4,112($sp)
    # Line 67
    lbu	$a7,184($s2)
    # Line 74
    ld	$a2,128($sp)
    # Line 67
    ld	$a6,120($sp)
    # Line 74
    addiu	$a3,$a2,1
    sd	$a3,128($sp)
    # Line 67
    sb	$a7,-8($a6)
    # Line 68
    lw	$a5,0($s2)
    # Line 71
    addiu	$s4,$s4,8
    # Line 68
    sw	$a5,-192($a6)
    # Line 74
    slti	$a1,$a2,2
    # Line 70
    sw	$a4,-8($s4)
    # Line 72
    addiu	$s3,$s3,2
    # Line 74
    bnez	$a1,.L0d9faff4
    # Line 71
    sw	$s1,-4($s4)
    # Line 76
    b	.L0d9fb180
    move	$v0,$zero
.L0d9fb12c:
    sdc1	$f20,0($sp)
    sd	$s1,16($sp)
    # Line 52
    move	$s3,$zero
    sd	$ra,24($sp)
.L0d9fb13c:
    # Line 113
    ld	$s0,40($sp)
    ld	$s1,16($sp)
    ld	$s2,104($sp)
    move	$v0,$s3
    ld	$s3,48($sp)
    ld	$s4,88($sp)
    ld	$s5,72($sp)
    ld	$s6,96($sp)
    ld	$s8,32($sp)
    ldc1	$f20,0($sp)
    # Line 112
    ld	$t0,64($sp)
    # Line 113
    ld	$ra,24($sp)
    ldc1	$f22,8($sp)
    # Line 112
    sw	$s7,29696($t0)
    # Line 113
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9fb180:
    ld	$s8,32($sp)
    ld	$s0,40($sp)
    ld	$s3,48($sp)
    ld	$s1,16($sp)
    ldc1	$f22,8($sp)
    ldc1	$f20,0($sp)
    ld	$s2,104($sp)
    ld	$s4,88($sp)
    ld	$ra,24($sp)
    ld	$s5,72($sp)
    ld	$s6,96($sp)
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9fb1b8:
    # Line 54
    li	$v0,1
    b	.L0d9fb00c
    lwc1	$f21,4($s5)
.end clipToPlane

# Function: clipToPlaneEye
# Declared: Line 120 (Source lines: 122-206)
# Address: 0x0d9fb1d0 - 0x0d9fb528 (Size: 856 bytes, Frame: 144)
.ent clipToPlaneEye
clipToPlaneEye:
    # Line 132
    lw	$v0,12096($a0)
    # Line 122
    addiu	$sp,$sp,-144
    sd	$a0,72($sp)
    sd	$s3,56($sp)
    sd	$s7,88($sp)
    # Line 131
    lw	$s7,29696($a0)
    sd	$s1,48($sp)
    sdc1	$f22,16($sp)
    # Line 135
    lwc1	$f5,4($a4)
    # Line 122
    sd	$s6,104($sp)
    # Line 134
    sll	$s6,$a2,0x2
    # Line 122
    sd	$s2,112($sp)
    # Line 134
    addu	$s6,$a1,$s6
    lw	$s2,-4($s6)
    # Line 135
    lwc1	$f4,0($a4)
    lwc1	$f8,96($s2)
    lwc1	$f6,100($s2)
    lwc1	$f7,8($a4)
    mul.s	$f4,$f4,$f8
    lwc1	$f8,104($s2)
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f6,108($s2)
    lwc1	$f5,12($a4)
    # Line 122
    sd	$s4,96($sp)
    # Line 135
    madd.s	$f4,$f4,$f7,$f8
    # Line 122
    move	$s4,$a3
    # Line 135
    mtc1	$zero,$f22
    # Line 122
    sd	$s5,80($sp)
    move	$s5,$a4
    sd	$s8,40($sp)
    # Line 135
    blez	$a2,.L0d9fb484
    madd.s	$f4,$f4,$f5,$f6
    sd	$zero,136($sp)
    sdc1	$f24,0($sp)
    sdc1	$f20,8($sp)
    sd	$s0,24($sp)
    addiu	$s8,$s7,-192
    move	$s1,$a1
    sd	$ra,32($sp)
    move	$s3,$zero
    b	.L0d9fb51c
    sd	$v0,64($sp)
    nop
    nop
.L0d9fb280:
    # Line 139
    beqz	$v0,.L0d9fb3c0
    nop
    # Line 145
    addiu	$s4,$s4,4
    # Line 146
    addiu	$s3,$s3,1
    # Line 145
    sw	$s0,-4($s4)
.L0d9fb294:
    # Line 137
    addiu	$s1,$s1,4
    # Line 202
    move	$s2,$s0
    # Line 139
    li	$v0,1
    # Line 137
    beq	$s1,$s6,.L0d9fb498
    # Line 203
    mov.s	$f4,$f20
    # Line 139
    lwc1	$f21,4($s5)
.L0d9fb2ac:
    # Line 138
    lw	$s0,0($s1)
    # Line 139
    lwc1	$f20,0($s5)
    lwc1	$f27,96($s0)
    lwc1	$f23,100($s0)
    lwc1	$f25,8($s5)
    mul.s	$f20,$f20,$f27
    lwc1	$f27,104($s0)
    madd.s	$f20,$f20,$f21,$f23
    lwc1	$f23,108($s0)
    lwc1	$f21,12($s5)
    madd.s	$f20,$f20,$f25,$f27
    madd.s	$f20,$f20,$f21,$f23
    c.le.s $f22,$f20
    c.le.s	$f22,$f4
    bc1t .L0d9fb280
    movf	$v0,$zero,$fcc0
    # Line 165
    beqz	$v0,.L0d9fb294
    nop
    # Line 183
    sub.s	$f24,$f4,$f20
    div.s	$f24,$f4,$f24
    ld	$t9,64($sp)
    move	$a1,$s0
    # Line 182
    addiu	$a0,$s8,192
    sd	$a0,120($sp)
    # Line 183
    move	$a2,$s2
    # Line 182
    addiu	$s7,$s7,192
    sd	$s7,128($sp)
    move	$s8,$a0
    # Line 183
    jalr	$t9
    mov.s	$f15,$f24
    # Line 184
    lwc1	$f2,96($s2)
    lwc1	$f3,96($s0)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f24,$f3
    ld	$v0,128($sp)
    swc1	$f2,-96($v0)
    # Line 185
    lwc1	$f0,100($s2)
    lwc1	$f1,100($s0)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f24,$f1
    swc1	$f0,-92($v0)
    # Line 186
    lwc1	$f29,104($s2)
    lwc1	$f31,104($s0)
    sub.s	$f31,$f31,$f29
    madd.s	$f29,$f29,$f24,$f31
    swc1	$f29,-88($v0)
    # Line 187
    lwc1	$f25,108($s2)
    lwc1	$f27,108($s0)
    sub.s	$f27,$f27,$f25
    madd.s	$f25,$f25,$f24,$f27
    # Line 194
    ld	$v1,136($sp)
    ld	$t8,120($sp)
    addiu	$a0,$v1,1
    sd	$a0,136($sp)
    # Line 188
    li	$a1,1
    sb	$a1,-8($v0)
    # Line 187
    swc1	$f25,-84($v0)
    # Line 194
    slti	$ra,$v1,2
    # Line 189
    lw	$at,0($s2)
    # Line 192
    addiu	$s3,$s3,1
    # Line 191
    addiu	$t9,$s4,4
    # Line 189
    sw	$at,-192($v0)
    # Line 191
    move	$s4,$t9
    # Line 194
    bnez	$ra,.L0d9fb294
    # Line 191
    sw	$t8,-4($t9)
    # Line 196
    b	.L0d9fb4e0
    move	$v0,$zero
    nop
    nop
.L0d9fb3c0:
    # Line 151
    sub.s	$f24,$f20,$f4
    div.s	$f24,$f20,$f24
    ld	$t9,64($sp)
    move	$a1,$s2
    # Line 150
    addiu	$a0,$s8,192
    sd	$a0,120($sp)
    # Line 151
    move	$a2,$s0
    # Line 150
    addiu	$s7,$s7,192
    sd	$s7,128($sp)
    move	$s8,$a0
    # Line 151
    jalr	$t9
    mov.s	$f15,$f24
    # Line 152
    lwc1	$f2,96($s0)
    lwc1	$f3,96($s2)
    sub.s	$f3,$f3,$f2
    madd.s	$f2,$f2,$f24,$f3
    ld	$a7,128($sp)
    swc1	$f2,-96($a7)
    # Line 153
    lwc1	$f0,100($s0)
    lwc1	$f1,100($s2)
    sub.s	$f1,$f1,$f0
    madd.s	$f0,$f0,$f24,$f1
    swc1	$f0,-92($a7)
    # Line 154
    lwc1	$f29,104($s0)
    lwc1	$f31,104($s2)
    sub.s	$f31,$f31,$f29
    madd.s	$f29,$f29,$f24,$f31
    swc1	$f29,-88($a7)
    # Line 155
    lwc1	$f25,108($s0)
    lwc1	$f27,108($s2)
    sub.s	$f27,$f27,$f25
    madd.s	$f25,$f25,$f24,$f27
    # Line 163
    ld	$a3,136($sp)
    # Line 159
    ld	$a5,120($sp)
    # Line 163
    addiu	$a4,$a3,1
    sd	$a4,136($sp)
    # Line 155
    swc1	$f25,-84($a7)
    # Line 156
    lbu	$t0,184($s2)
    sb	$t0,-8($a7)
    # Line 157
    lw	$a6,0($s2)
    # Line 160
    addiu	$s4,$s4,8
    # Line 163
    slti	$a2,$a3,2
    # Line 157
    sw	$a6,-192($a7)
    # Line 159
    sw	$a5,-8($s4)
    # Line 161
    addiu	$s3,$s3,2
    # Line 163
    bnez	$a2,.L0d9fb294
    # Line 160
    sw	$s0,-4($s4)
    # Line 165
    b	.L0d9fb4e0
    move	$v0,$zero
.L0d9fb484:
    sdc1	$f24,0($sp)
    sdc1	$f20,8($sp)
    sd	$s0,24($sp)
    # Line 137
    move	$s3,$zero
    sd	$ra,32($sp)
.L0d9fb498:
    # Line 206
    ld	$s0,24($sp)
    ld	$s1,48($sp)
    ld	$s2,112($sp)
    move	$v0,$s3
    ld	$s3,56($sp)
    ld	$s4,96($sp)
    ld	$s5,80($sp)
    ld	$s6,104($sp)
    ld	$s8,40($sp)
    ldc1	$f20,8($sp)
    ldc1	$f22,16($sp)
    # Line 205
    ld	$t1,72($sp)
    # Line 206
    ld	$ra,32($sp)
    ldc1	$f24,0($sp)
    # Line 205
    sw	$s7,29696($t1)
    # Line 206
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9fb4e0:
    ld	$s8,40($sp)
    ld	$s1,48($sp)
    ld	$s3,56($sp)
    ld	$s0,24($sp)
    ldc1	$f22,16($sp)
    ldc1	$f24,0($sp)
    ldc1	$f20,8($sp)
    ld	$s2,112($sp)
    ld	$s4,96($sp)
    ld	$ra,32($sp)
    ld	$s5,80($sp)
    ld	$s6,104($sp)
    ld	$s7,88($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9fb51c:
    # Line 139
    li	$v0,1
    b	.L0d9fb2ac
    lwc1	$f21,4($s5)
.end clipToPlaneEye

# Function: __glDoPolygonClip
# Declared: Line 220 (Source lines: 222-408)
# Address: 0x0d9fb530 - 0x0d9fb8c8 (Size: 920 bytes, Frame: 176)
.globl __glDoPolygonClip
.ent __glDoPolygonClip
__glDoPolygonClip:
    # Line 241
    lw	$v0,29692($a0)
    # Line 222
    addiu	$sp,$sp,-8112
    sd	$s7,8088($sp)
    sd	$s0,8024($sp)
    sd	$ra,8016($sp)
    sd	$s3,8008($sp)
    sd	$s5,8048($sp)
    sd	$s8,8040($sp)
    sd	$s6,8072($sp)
    move	$s6,$a3
    move	$s8,$a2
    sd	$s4,8064($sp)
    move	$s4,$a1
    move	$s5,$a0
    sd	$s2,8000($sp)
    sd	$s1,8032($sp)
    # Line 263
    move	$s1,$a1
    # Line 222
    lui	$at,0x5
    # Line 241
    sw	$v0,29696($a0)
    # Line 264
    addiu	$v0,$a2,-1
    # Line 222
    addiu	$at,$at,22620
    sd	$gp,8056($sp)
    # Line 243
    beqz	$a3,.L0d9fb7d8
    # Line 222
    addu	$gp,$t9,$at
    # Line 259
    lw	$t8,28084($a0)
    lw	$s2,28080($a0)
    # Line 264
    move	$s0,$v0
    # Line 259
    or	$s2,$s2,$t8
    # Line 264
    bltz	$v0,.L0d9fb5e0
    # Line 259
    ori	$s2,$s2,0x20
    # Line 264
    li	$s3,-1
    # Line 265
    lw	$a1,0($s1)
.L0d9fb5b0:
    lw	$t9,0($a1)
    nor	$t9,$t9,$zero
    and	$t9,$s2,$t9
    beqz	$t9,.L0d9fb5d4
    addiu	$s1,$s1,4
    # Line 266
    lw	$t9,12($a1)
    move	$a0,$s5
    jalr	$t9
    move	$a2,$s2
.L0d9fb5d4:
    # Line 264
    addiu	$s0,$s0,-1
    bnel	$s0,$s3,.L0d9fb5b0
    # Line 265
    lw	$a1,0($s1)
.L0d9fb5e0:
    # Line 277
    srl	$ra,$s6,0x6
    # Line 290
    addiu	$s1,$sp,0
    # Line 279
    la	$s3,sub_0da00000
    # Line 277
    beqz	$ra,.L0d9fb8a4
    move	$s2,$ra
    # Line 279
    addiu	$s3,$s3,-20016
    addiu	$s1,$sp,0
    b	.L0d9fb63c
    lw	$s0,1748($s5)
.L0d9fb604:
    # Line 282
    move	$a1,$s4
    move	$t9,$s3
    move	$a2,$s8
    move	$a3,$s1
    bal __glFillAntiAliasedTriangle
    move	$a4,$s0
    # Line 289
    srl	$s2,$s2,0x1
    # Line 282
    slti	$t8,$v0,3
    # Line 290
    addiu	$s0,$s0,16
    # Line 286
    move	$s4,$s1
    # Line 282
    bnez	$t8,.L0d9fb718
    move	$s8,$v0
    # Line 287
    addiu	$s1,$s1,400
    # Line 290
    beqz	$s2,.L0d9fb654
.L0d9fb63c:
    # Line 279
    andi	$t9,$s2,0x1
    bnez	$t9,.L0d9fb604
    # Line 282
    move	$a0,$s5
    # Line 289
    srl	$s2,$s2,0x1
    # Line 290
    bnez	$s2,.L0d9fb63c
    addiu	$s0,$s0,16
.L0d9fb654:
    # Line 294
    andi	$s6,$s6,0x3f
.L0d9fb658:
    # Line 296
    la	$s0,__gl_frustumClipPlanes
    # Line 294
    beqz	$s6,.L0d9fb6bc
    # Line 296
    la	$s2,sub_0da00000
    b	.L0d9fb6a4
    addiu	$s2,$s2,-20688
.L0d9fb66c:
    # Line 299
    move	$a1,$s4
    move	$t9,$s2
    move	$a2,$s8
    move	$a3,$s1
    bal __glFillAntiAliasedTriangle
    move	$a4,$s0
    # Line 306
    srl	$s6,$s6,0x1
    # Line 299
    slti	$t8,$v0,3
    # Line 307
    addiu	$s0,$s0,16
    # Line 303
    move	$s4,$s1
    # Line 299
    bnez	$t8,.L0d9fb718
    move	$s8,$v0
    # Line 304
    addiu	$s1,$s1,400
    # Line 307
    beqz	$s6,.L0d9fb6bc
.L0d9fb6a4:
    # Line 296
    andi	$t9,$s6,0x1
    bnez	$t9,.L0d9fb66c
    # Line 299
    move	$a0,$s5
    # Line 306
    srl	$s6,$s6,0x1
    # Line 307
    bnez	$s6,.L0d9fb6a4
    addiu	$s0,$s0,16
.L0d9fb6bc:
    # Line 320
    lwc1	$f13,1728($s5)
    # Line 317
    lwc1	$f15,1732($s5)
    # Line 323
    mtc1	$zero,$f2
    sub.s	$f0,$f15,$f13
    lwc1	$f12,3544($s5)
    add.s	$f1,$f15,$f13
    # Line 321
    lwc1	$f14,1736($s5)
    # Line 323
    c.lt.s	$f2,$f13
    # Line 328
    mov.s	$f7,$f0
    # Line 319
    lwc1	$f11,1720($s5)
    # Line 335
    addiu	$ra,$s8,-1
    # Line 329
    mov.s	$f17,$f1
    # Line 318
    lwc1	$f16,1740($s5)
    # Line 322
    move	$s1,$s4
    # Line 335
    li	$s3,-1
    movf.s	$f7,$f1,$fcc0
    # Line 316
    lwc1	$f10,1724($s5)
    # Line 335
    move	$s0,$ra
    bltz	$ra,.L0d9fb7d8
    movf.s	$f17,$f0,$fcc0
    sub.s	$f8,$f10,$f11
    b	.L0d9fb768
    add.s	$f18,$f10,$f11
.L0d9fb718:
    ld	$s7,8088($sp)
.L0d9fb71c:
    # Line 408
    ld	$gp,8056($sp)
    ld	$s0,8024($sp)
    ld	$s1,8032($sp)
    ld	$s2,8000($sp)
    ld	$s3,8008($sp)
    ld	$s4,8064($sp)
    ld	$ra,8016($sp)
    ld	$s5,8048($sp)
    ld	$s6,8072($sp)
    ld	$s8,8040($sp)
    jr	$ra
    addiu	$sp,$sp,8112
    nop
.L0d9fb750:
    # Line 354
    mov.s	$f4,$f9
    c.lt.s $f17,$f9
    movt.s	$f4,$f17,$fcc1
.L0d9fb75c:
    # Line 356
    swc1	$f4,132($s2)
    # Line 335
    beq	$s0,$s3,.L0d9fb7d8
    # Line 355
    swc1	$f6,128($s2)
.L0d9fb768:
    # Line 338
    lw	$s2,0($s1)
    # Line 340
    lwc1	$f4,124($s2)
    div.s	$f4,$f12,$f4
    # Line 341
    lwc1	$f9,112($s2)
    # Line 344
    lwc1	$f3,120($s2)
    # Line 345
    mul.s	$f9,$f11,$f9
    madd.s	$f9,$f10,$f4,$f9
    # Line 344
    mul.s	$f3,$f3,$f14
    madd.s	$f3,$f16,$f4,$f3
    # Line 345
    c.lt.s $f9,$f8
    # Line 341
    lwc1	$f5,116($s2)
    # Line 338
    addiu	$s1,$s1,4
    # Line 345
    swc1	$f4,140($s2)
    # Line 335
    addiu	$s0,$s0,-1
    # Line 344
    swc1	$f3,136($s2)
    # Line 345
    bc1f .L0d9fb7b4
    # Line 352
    mov.s	$f6,$f9
    # Line 351
    b	.L0d9fb7bc
    mov.s	$f6,$f8
.L0d9fb7b4:
    # Line 352
    c.lt.s $f18,$f9
    movt.s	$f6,$f18,$fcc3
.L0d9fb7bc:
    mul.s	$f9,$f13,$f5
    madd.s	$f9,$f15,$f4,$f9
    c.lt.s $f9,$f7
    bc1f .L0d9fb750
    # Line 353
    mov.s	$f4,$f7
    b	.L0d9fb75c
    nop
.L0d9fb7d8:
    # Line 368
    lw	$s6,12072($s5)
    # Line 367
    lw	$s3,8($s4)
    addiu	$s4,$s4,12
    # Line 368
    li	$at,3
    # Line 366
    lw	$a2,-8($s4)
    # Line 370
    move	$s0,$zero
    addiu	$s7,$s8,-2
    # Line 368
    beq	$s8,$at,.L0d9fb8ac
    # Line 365
    lw	$s2,-12($s4)
    # Line 370
    blez	$s7,.L0d9fb718
    sd	$s8,8096($sp)
    ld	$s8,8096($sp)
    b	.L0d9fb854
    addiu	$s8,$s8,-3
.L0d9fb810:
    # Line 397
    lbu	$ra,184($s3)
    # Line 398
    sb	$zero,184($s2)
    # Line 400
    move	$t9,$s6
    # Line 399
    sb	$zero,184($s3)
    # Line 400
    move	$a0,$s5
    move	$a1,$s2
    # Line 397
    sd	$ra,8080($sp)
    # Line 400
    jalr	$t9
    move	$a3,$s3
    # Line 401
    sb	$s1,184($s2)
    # Line 402
    ld	$at,8080($sp)
    sb	$at,184($s3)
.L0d9fb840:
    # Line 372
    addiu	$s0,$s0,1
    # Line 404
    move	$a2,$s3
    # Line 405
    lw	$s3,0($s4)
    # Line 372
    beq	$s7,$s0,.L0d9fb718
    # Line 405
    addiu	$s4,$s4,4
.L0d9fb854:
    # Line 370
    beqz	$s0,.L0d9fb884
    # Line 380
    move	$t9,$s6
    # Line 381
    bne	$s8,$s0,.L0d9fb810
    lbu	$s1,184($s2)
    # Line 389
    move	$t9,$s6
    move	$a0,$s5
    move	$a1,$s2
    # Line 388
    sb	$zero,184($s2)
    # Line 389
    jalr	$t9
    move	$a3,$s3
    # Line 390
    b	.L0d9fb840
    sb	$s1,184($s2)
.L0d9fb884:
    # Line 380
    move	$a0,$s5
    move	$a1,$s2
    # Line 378
    lbu	$s1,184($s3)
    # Line 379
    sb	$zero,184($s3)
    # Line 380
    jalr	$t9
    move	$a3,$s3
    # Line 381
    b	.L0d9fb840
    sb	$s1,184($s3)
.L0d9fb8a4:
    b	.L0d9fb658
    # Line 294
    andi	$s6,$s6,0x3f
.L0d9fb8ac:
    # Line 370
    move	$t9,$s6
    move	$a0,$s5
    move	$a1,$s2
    jalr	$t9
    move	$a3,$s3
    b	.L0d9fb71c
    ld	$s7,8088($sp)
.end __glDoPolygonClip

# Function: __glClipPolygon
# Declared: Line 410 (Source lines: 411-441)
# Address: 0x0d9fb8d0 - 0x0d9fb9d8 (Size: 264 bytes, Frame: 208)
.globl __glClipPolygon
.ent __glClipPolygon
__glClipPolygon:
    # Line 424
    li	$t1,-1
    # Line 411
    addiu	$sp,$sp,-336
    lui	$v0,0x5
    # Line 426
    addiu	$at,$a2,-1
    # Line 417
    sw	$a1,28072($a0)
    # Line 426
    move	$a6,$at
    # Line 411
    addiu	$v0,$v0,21692
    sd	$gp,320($sp)
    # Line 426
    bltz	$at,.L0d9fb9b8
    # Line 411
    addu	$gp,$t9,$v0
    # Line 426
    move	$a3,$zero
    andi	$t2,$a2,0x3
    addiu	$t0,$a1,-192
    move	$a5,$t1
    addiu	$a7,$sp,0
    beqz	$t2,.L0d9fb940
    sra	$a4,$a2,0x2
.L0d9fb914:
    addiu	$a6,$a6,-1
    # Line 429
    addiu	$t0,$t0,192
    # Line 427
    lw	$v1,4($a1)
    # Line 429
    addiu	$a7,$a7,4
    addiu	$t2,$t2,-1
    addiu	$a1,$a1,192
    # Line 428
    or	$a3,$v1,$a3
    # Line 429
    sw	$t0,-4($a7)
    bnez	$t2,.L0d9fb914
    # Line 427
    and	$a5,$v1,$a5
    sra	$a4,$a2,0x2
.L0d9fb940:
    beqz	$a4,.L0d9fb9b0
    nop
    nop
    nop
.L0d9fb950:
    lw	$t8,4($a1)
    # Line 429
    addiu	$a1,$a1,768
    addiu	$t9,$t0,192
    sw	$t9,0($a7)
    # Line 427
    lw	$a4,-572($a1)
    # Line 429
    addiu	$t2,$t0,576
    addiu	$t3,$t0,384
    sw	$t3,4($a7)
    addiu	$t0,$t0,768
    addiu	$a7,$a7,16
    # Line 427
    lw	$t3,-380($a1)
    # Line 426
    addiu	$a6,$a6,-4
    # Line 428
    or	$a3,$t8,$a3
    # Line 429
    sw	$t2,-8($a7)
    # Line 428
    or	$a3,$a4,$a3
    # Line 427
    lw	$t2,-188($a1)
    and	$a5,$t8,$a5
    # Line 428
    or	$a3,$t3,$a3
    # Line 427
    and	$a5,$a4,$a5
    # Line 428
    or	$a3,$t2,$a3
    # Line 427
    and	$a5,$t3,$a5
    # Line 429
    sw	$t0,-4($a7)
    # Line 426
    bne	$a6,$t1,.L0d9fb950
    # Line 427
    and	$a5,$t2,$a5
.L0d9fb9b0:
    # Line 426
    beqz	$a5,.L0d9fb9c4
    # Line 440
    nop	# was lw $t9, -25232($gp) # &__glDoPolygonClip
.L0d9fb9b8:
    # Line 441
    ld	$gp,320($sp)
    jr	$ra
    addiu	$sp,$sp,336
.L0d9fb9c4:
    sd	$ra,328($sp)
    # Line 440
    bal __glDoPolygonClip
    addiu	$a1,$sp,0
    b	.L0d9fb9b8
    ld	$ra,328($sp)
.end __glClipPolygon

# Function: __glClipTriangle
# Declared: Line 443 (Source lines: 445-452)
# Address: 0x0d9fb9e0 - 0x0d9fba28 (Size: 72 bytes, Frame: 32)
.globl __glClipTriangle
.ent __glClipTriangle
__glClipTriangle:
    # Line 445
    addiu	$sp,$sp,-32
    lui	$v0,0x5
    # Line 448
    sw	$a1,0($sp)
    # Line 445
    addiu	$v0,$v0,21420
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 451
    # lw $t9, -25232($gp) # &__glDoPolygonClip
    # Line 449
    sw	$a2,4($sp)
    # Line 451
    li	$a2,3
    addiu	$a1,$sp,0
    # Line 450
    sw	$a3,8($sp)
    # Line 445
    sd	$ra,16($sp)
    # Line 451
    bal __glDoPolygonClip
    move	$a3,$a4
    ld	$ra,16($sp)
    # Line 452
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glClipTriangle

