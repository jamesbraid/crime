# Source: ../CRIME/crm_rect.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_rect.c
# Total Functions: 3

.text

# Function: __glCrmFastRect
# Declared: Line 43 (Source lines: 45-201)
# Address: 0x0d9665c0 - 0x0d9669d4 (Size: 1044 bytes, Frame: 240)
.globl __glCrmFastRect
.ent __glCrmFastRect
__glCrmFastRect:
    # Line 71
    lwc1	$f5,3544($a0)
    # Line 69
    lwc1	$f8,29800($a0)
    # Line 72
    lwc1	$f0,29804($a0)
    # Line 68
    lwc1	$f9,29796($a0)
    # Line 73
    neg.s	$f1,$f5
    # Line 67
    lwc1	$f6,29768($a0)
    # Line 66
    lwc1	$f7,29748($a0)
    # Line 73
    c.lt.s	$f0,$f1
    # Line 57
    lw	$a3,30436($a0)
    # Line 45
    lui	$at,0xf
    # Line 47
    lw	$a2,32184($a0)
    # Line 45
    addiu	$sp,$sp,-368
    addiu	$at,$at,-22580
    sd	$gp,344($sp)
    # Line 73
    bc1t	.L0d966930
    # Line 45
    addu	$gp,$t9,$at
    # Line 73
    c.lt.s $f5,$f0
    bc1t .L0d966930
    nop
    # Line 82
    madd.s	$f18,$f8,$f16,$f6
    # Line 79
    madd.s	$f19,$f9,$f13,$f7
    # Line 81
    madd.s	$f21,$f9,$f15,$f7
    # Line 80
    madd.s	$f12,$f8,$f14,$f6
    # Line 82
    swc1	$f18,12($sp)
    mov.s	$f11,$f18
    c.lt.s $f21,$f19
    # Line 81
    swc1	$f21,8($sp)
    mov.s	$f5,$f21
    # Line 80
    swc1	$f12,4($sp)
    mov.s	$f17,$f12
    # Line 79
    swc1	$f19,0($sp)
    # Line 82
    bc1f .L0d966654
    # Line 79
    mov.s	$f10,$f19
    # Line 86
    mov.s	$f10,$f21
    # Line 87
    swc1	$f19,8($sp)
    mov.s	$f5,$f19
    # Line 86
    swc1	$f21,0($sp)
.L0d966654:
    # Line 87
    c.lt.s $f18,$f12
    bc1f .L0d966670
    nop
    # Line 91
    mov.s	$f17,$f18
    # Line 92
    swc1	$f12,12($sp)
    mov.s	$f11,$f12
    # Line 91
    swc1	$f18,4($sp)
.L0d966670:
    # Line 103
    lwc1	$f8,1728($a0)
    # Line 111
    c.lt.s $f5,$f10
    # Line 102
    lwc1	$f7,1720($a0)
    # Line 101
    lwc1	$f9,1732($a0)
    # Line 111
    bc1t .L0d966930
    # Line 100
    lwc1	$f6,1724($a0)
    # Line 111
    c.lt.s $f11,$f17
    bc1t .L0d966930
    nop
    sub.s	$f12,$f6,$f7
    c.lt.s $f5,$f12
    bc1t .L0d966930
    nop
    add.s	$f13,$f9,$f8
    c.lt.s $f11,$f13
    bc1t .L0d966930
    nop
    add.s	$f14,$f6,$f7
    c.lt.s	$f14,$f10
    bc1t	.L0d966930
    nop
    sdc1	$f17,288($sp)
    sdc1	$f11,296($sp)
    sub.s	$f6,$f9,$f8
    sdc1	$f5,304($sp)
    sdc1	$f0,312($sp)
    c.lt.s $f6,$f17
    sd	$a3,320($sp)
    sd	$a2,328($sp)
    bc1t .L0d966930
    sd	$a0,336($sp)
    # Line 119
    ldc1	$f4,296($sp)
    # Line 118
    ldc1	$f3,304($sp)
    sd	$ra,352($sp)
    # Line 116
    c.lt.s $f10,$f12
    # Line 117
    ldc1	$f2,288($sp)
    # Line 119
    c.lt.s $f6,$f4
    # Line 130
    # lw $t9, -22852($gp) # &ceilf
    # Line 116
    movf.s	$f12,$f10,$fcc2
    # Line 118
    c.lt.s $f14,$f3
    # Line 116
    swc1	$f12,0($sp)
    # Line 119
    movt.s	$f4,$f6,$fcc5
    # Line 117
    c.lt.s $f2,$f13
    # Line 118
    movt.s	$f3,$f14,$fcc4
    # Line 119
    sdc1	$f4,296($sp)
    # Line 118
    sdc1	$f3,304($sp)
    # Line 117
    movt.s	$f2,$f13,$fcc3
    # Line 119
    swc1	$f4,12($sp)
    # Line 117
    sdc1	$f2,288($sp)
    # Line 118
    swc1	$f3,8($sp)
    # Line 130
    jal	ceilf
    # Line 117
    swc1	$f2,4($sp)
    # Line 131
    # lw $t9, -22852($gp) # &ceilf
    # Line 130
    sdc1	$f0,280($sp)
    # Line 131
    ldc1	$f12,304($sp)
    jal	ceilf
    # Line 130
    swc1	$f0,0($sp)
    # Line 131
    ldc1	$f7,_lit8_bff0000000000000
    cvt.d.s	$f6,$f0
    add.d	$f6,$f6,$f7
    # Line 132
    # lw $t9, -22852($gp) # &ceilf
    ldc1	$f12,288($sp)
    # Line 131
    cvt.s.d	$f6,$f6
    sdc1	$f6,304($sp)
    # Line 132
    jal	ceilf
    # Line 131
    swc1	$f6,8($sp)
    # Line 133
    # lw $t9, -22852($gp) # &ceilf
    # Line 132
    sdc1	$f0,272($sp)
    # Line 133
    ldc1	$f12,296($sp)
    jal	ceilf
    # Line 132
    swc1	$f0,4($sp)
    # Line 139
    ldc1	$f8,280($sp)
    ldc1	$f7,304($sp)
    # Line 133
    ldc1	$f6,_lit8_bff0000000000000
    cvt.d.s	$f5,$f0
    # Line 139
    c.lt.s $f7,$f8
    ld	$ra,352($sp)
    # Line 133
    add.d	$f5,$f5,$f6
    ld	$a0,336($sp)
    # Line 139
    ldc1	$f9,272($sp)
    # Line 133
    cvt.s.d	$f5,$f5
    # Line 139
    bc1t .L0d966930
    # Line 133
    swc1	$f5,12($sp)
    # Line 139
    c.lt.s $f5,$f9
    bc1t .L0d966930
    nop
    # Line 145
    lw	$v0,32096($a0)
    lui	$a2,0x302
    beq	$a2,$v0,.L0d9667f4
    # Line 150
    lw	$a3,8($sp)
    # Line 146
    ld	$a1,328($sp)
    sw	$a2,8288($a1)
    lw	$a1,32188($a0)
    sw	$a2,16($sp)
    sw	$a2,8288($a1)
    sw	$a2,32096($a0)
    # Line 150
    lw	$a3,8($sp)
.L0d9667f4:
    # Line 148
    lw	$a6,0($sp)
    ld	$a5,328($sp)
    # Line 149
    lw	$a4,4($sp)
    # Line 148
    sw	$a6,8320($a5)
    # Line 150
    sw	$a3,8328($a5)
    # Line 149
    sw	$a4,8324($a5)
    # Line 151
    lui	$a2,0x1
    lw	$a4,12($sp)
    addu	$a2,$a0,$a2
    sw	$a4,8332($a5)
    lw	$a3,-32644($a2)
    andi	$a3,$a3,0x2
    beqz	$a3,.L0d96693c
    nop
    lw	$a7,-32640($a2)
    li	$t0,2
    beq	$a7,$t0,.L0d966850
    # Line 176
    ld	$t1,320($sp)
    # Line 158
    # lw $t9, -31940($gp) # &__glCrmDownloadCurrentColor
    jal	__glCrmDownloadCurrentColor
    ld	$a0,336($sp)
    ld	$a0,336($sp)
.L0d96684c:
    # Line 176
    ld	$t1,320($sp)
.L0d966850:
    andi	$t1,$t1,0x4
    beqz	$t1,.L0d9668b0
    # Line 187
    ld	$t3,320($sp)
    # Line 185
    ldc1	$f16,312($sp)
    lwc1	$f15,1736($a0)
    lwc1	$f14,1740($a0)
    madd.s	$f14,$f14,$f15,$f16
    lwc1	$f15,_lit_42800000
    mul.s	$f14,$f14,$f15
    cvt.d.s	$f14,$f14
    sdc1	$f14,32($sp)
    ldc1	$f13,32($sp)
    # Line 187
    ld	$t2,328($sp)
    # Line 185
    trunc.l.d	$f13,$f13
    sdc1	$f13,40($sp)
    ldc1	$f10,40($sp)
    # Line 186
    sd	$zero,48($sp)
    ldc1	$f11,48($sp)
    # Line 187
    sd	$zero,56($sp)
    ldc1	$f12,56($sp)
    sdc1	$f12,8664($t2)
    # Line 186
    sdc1	$f11,8656($t2)
    # Line 185
    sdc1	$f10,8648($t2)
    # Line 187
    ld	$t3,320($sp)
.L0d9668b0:
    andi	$t3,$t3,0x2000
    beqz	$t3,.L0d966910
    nop
    # Line 193
    lw	$t8,29660($a0)
    lwc1	$f17,56($t8)
    swc1	$f17,168($sp)
    # Line 194
    lw	$t9,12536($a0)
    jalr	$t9
    addiu	$a1,$sp,64
    # Line 195
    lwc1	$f18,_lit_437f0000
    lwc1	$f19,_lit_45800000
    mul.s	$f18,$f0,$f18
    mul.s	$f18,$f18,$f19
    # Line 197
    ld	$ra,328($sp)
    # Line 195
    trunc.w.s	$f18,$f18
    swc1	$f18,256($sp)
    lw	$t9,256($sp)
    # Line 196
    sw	$zero,260($sp)
    lw	$at,260($sp)
    # Line 197
    sw	$zero,264($sp)
    lw	$v0,264($sp)
    sw	$v0,8584($ra)
    # Line 196
    sw	$at,8576($ra)
    # Line 195
    sw	$t9,8568($ra)
.L0d966910:
    # Line 201
    ld	$gp,344($sp)
    # Line 200
    sw	$zero,268($sp)
    ld	$ra,352($sp)
    ld	$a0,328($sp)
    lw	$v1,268($sp)
    # Line 201
    addiu	$sp,$sp,368
    jr	$ra
    # Line 200
    sw	$v1,10736($a0)
.L0d966930:
    # Line 201
    ld	$gp,344($sp)
    jr	$ra
    addiu	$sp,$sp,368
.L0d96693c:
    # Line 158
    lbu	$a1,3221($a0)
    beqz	$a1,.L0d966978
    nop
    # Line 168
    lwc1	$f19,448($a0)
    trunc.l.s	$f19,$f19
    dmfc1	$a6,$f19
    lw	$a5,30736($a0)
    ld	$a4,328($sp)
    sll	$a6,$a6,0x0
    and	$a5,$a5,$a6
    sw	$a5,20($sp)
    lw	$a3,20($sp)
    sw	$a3,8400($a4)
.L0d966970:
    b	.L0d96684c
    # Line 176
    sw	$zero,-32640($a2)
.L0d966978:
    # Line 170
    lwc1	$f27,192($a0)
    lwc1	$f23,200($a0)
    lwc1	$f25,196($a0)
    lwc1	$f21,204($a0)
    trunc.w.s	$f27,$f27
    trunc.w.s	$f23,$f23
    trunc.w.s	$f25,$f25
    mfc1	$t8,$f27
    trunc.w.s	$f21,$f21
    mfc1	$t3,$f23
    mfc1	$t2,$f25
    sll	$t8,$t8,0x18
    mfc1	$t1,$f21
    sll	$t3,$t3,0x8
    sll	$t2,$t2,0x10
    ld	$t0,328($sp)
    or	$t2,$t2,$t3
    or	$t1,$t1,$t8
    or	$t1,$t1,$t2
    sw	$t1,24($sp)
    lw	$a7,24($sp)
    b	.L0d966970
    sw	$a7,8400($t0)
.end __glCrmFastRect

# Function: __glCrmFrontBackRect
# Declared: Line 207 (Source lines: 209-245)
# Address: 0x0d9669e0 - 0x0d966bb0 (Size: 464 bytes, Frame: 240)
.globl __glCrmFrontBackRect
.ent __glCrmFrontBackRect
__glCrmFrontBackRect:
    # Line 224
    lw	$a1,30656($a0)
    # Line 216
    lw	$v0,32088($a0)
    # Line 209
    addiu	$sp,$sp,-112
    sd	$s1,56($sp)
    # Line 211
    lw	$s1,32184($a0)
    # Line 216
    sw	$v0,0($sp)
    # Line 209
    sd	$ra,48($sp)
    sdc1	$f22,24($sp)
    sd	$s0,40($sp)
    sdc1	$f26,16($sp)
    sdc1	$f24,32($sp)
    sd	$s2,80($sp)
    lui	$v1,0xf
    # Line 211
    lw	$s2,32188($a0)
    # Line 209
    addiu	$v1,$v1,-23636
    sd	$gp,96($sp)
    addu	$gp,$t9,$v1
    mov.s	$f24,$f16
    # Line 224
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    # Line 209
    mov.s	$f26,$f15
    sdc1	$f20,8($sp)
    mov.s	$f20,$f14
    # Line 217
    lw	$at,8680($s2)
    # Line 209
    move	$s0,$a0
    mov.s	$f22,$f13
    # Line 224
    jal	__glCrmSetStoreBuffer
    sd	$at,64($sp)
    # Line 225
    lw	$a2,32088($s0)
    lw	$a1,32092($s0)
    li	$a0,-3
    and	$a0,$a0,$a2
    # Line 224
    sd	$v0,88($sp)
    # Line 225
    beq	$a1,$a0,.L0d966a84
    sw	$a0,32088($s0)
    # Line 226
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    lw	$a3,32088($s0)
    sw	$a3,32092($s0)
.L0d966a84:
    # Line 229
    lui	$t9,0x1
    addu	$t9,$s0,$t9
    sd	$t9,72($sp)
    # Line 227
    sw	$zero,4($sp)
    lw	$ra,4($sp)
    sw	$ra,8680($s1)
    lw	$ra,4($sp)
    sw	$ra,8680($s2)
    # Line 229
    mov.s	$f16,$f24
    lw	$t9,-32492($t9)
    mov.s	$f15,$f26
    mov.s	$f14,$f20
    mov.s	$f13,$f22
    jalr	$t9
    move	$a0,$s0
    # Line 235
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    move	$a0,$s0
    jal	__glCrmSetStoreBuffer
    lw	$a1,30660($s0)
    # Line 236
    lw	$a2,0($sp)
    lw	$a3,32088($s0)
    srl	$a2,$a2,0x1
    li	$a0,-3
    andi	$a2,$a2,0x1
    lw	$at,32092($s0)
    and	$a0,$a0,$a3
    sll	$a2,$a2,0x1
    ld	$v0,64($sp)
    or	$a0,$a0,$a2
    ld	$a1,72($sp)
    beq	$at,$a0,.L0d966b20
    sw	$a0,32088($s0)
    # Line 237
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    lw	$a3,32088($s0)
    sw	$a3,32092($s0)
.L0d966b20:
    # Line 238
    sw	$v0,8680($s1)
    sw	$v0,8680($s2)
    # Line 240
    mov.s	$f16,$f24
    lw	$t9,-32492($a1)
    mov.s	$f15,$f26
    mov.s	$f14,$f20
    mov.s	$f13,$f22
    jalr	$t9
    move	$a0,$s0
    ld	$s1,56($sp)
    ld	$s2,80($sp)
    ld	$v0,88($sp)
    ldc1	$f20,8($sp)
    ldc1	$f26,16($sp)
    # Line 242
    lw	$a0,0($sp)
    lw	$a7,32092($s0)
    ldc1	$f22,24($sp)
    ldc1	$f24,32($sp)
    beq	$a7,$a0,.L0d966b8c
    sw	$a0,32088($s0)
    # Line 243
    lw	$t3,32184($s0)
    sw	$a0,8216($t3)
    lw	$t2,32188($s0)
    lw	$t1,32088($s0)
    sw	$t1,8216($t2)
    lw	$t0,32088($s0)
    sw	$t0,32092($s0)
.L0d966b8c:
    # Line 244
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    move	$a0,$s0
    jal	__glCrmSetStoreBuffer
    move	$a1,$v0
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    # Line 245
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glCrmFrontBackRect

# Function: __glCrmLeftRightRect
# Declared: Line 255 (Source lines: 257-304)
# Address: 0x0d966bb0 - 0x0d966db4 (Size: 516 bytes, Frame: 224)
.globl __glCrmLeftRightRect
.ent __glCrmLeftRightRect
__glCrmLeftRightRect:
    # Line 263
    lw	$v1,32088($a0)
    # Line 257
    addiu	$sp,$sp,-96
    # Line 263
    sw	$v1,0($sp)
    sd	$ra,88($sp)
    # Line 257
    sd	$s0,72($sp)
    sdc1	$f26,16($sp)
    sdc1	$f24,32($sp)
    sd	$gp,80($sp)
    sd	$s2,56($sp)
    # Line 259
    lw	$s2,32188($a0)
    # Line 257
    lui	$a1,0xf
    sd	$s1,48($sp)
    addiu	$a1,$a1,-24100
    # Line 269
    lw	$a4,8200($s2)
    # Line 259
    lw	$s1,32184($a0)
    # Line 257
    addu	$gp,$t9,$a1
    # Line 269
    li	$a2,-2
    # Line 257
    la	$v0,__glCrmFrontBackRect
    # Line 269
    nor	$a3,$a4,$zero
    # Line 264
    lw	$a5,8680($s2)
    # Line 269
    and	$a2,$a2,$a4
    andi	$a3,$a3,0x1
    or	$a2,$a2,$a3
    sw	$a2,8200($s2)
    # Line 270
    sw	$a2,8200($s1)
    # Line 257
    mov.s	$f24,$f16
    # Line 270
    lw	$at,12100($a0)
    # Line 257
    mov.s	$f26,$f15
    sdc1	$f20,8($sp)
    mov.s	$f20,$f14
    move	$s0,$a0
    sdc1	$f22,24($sp)
    mov.s	$f22,$f13
    # Line 277
    li	$a1,-3
    # Line 270
    beq	$at,$v0,.L0d966c84
    # Line 264
    sd	$a5,40($sp)
    # Line 277
    lw	$a0,32088($a0)
    lw	$a6,32092($s0)
    and	$a0,$a0,$a1
    beq	$a6,$a0,.L0d966c70
    sw	$a0,32088($s0)
    # Line 278
    lw	$a5,32184($s0)
    sw	$a0,8216($a5)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    sw	$a2,32092($s0)
.L0d966c70:
    # Line 279
    sw	$zero,4($sp)
    lw	$a7,4($sp)
    lw	$a6,4($sp)
    sw	$a7,8680($s1)
    sw	$a6,8680($s2)
.L0d966c84:
    # Line 282
    lui	$t9,0x1
    addu	$t9,$s0,$t9
    sd	$t9,64($sp)
    mov.s	$f16,$f24
    lw	$t9,-32472($t9)
    mov.s	$f15,$f26
    mov.s	$f14,$f20
    mov.s	$f13,$f22
    jalr	$t9
    move	$a0,$s0
    # Line 287
    lw	$a0,8200($s2)
    li	$v0,-2
    nor	$v1,$a0,$zero
    # Line 288
    la	$at,__glCrmFrontBackRect
    # Line 287
    and	$v0,$v0,$a0
    andi	$v1,$v1,0x1
    or	$v0,$v0,$v1
    sw	$v0,8200($s2)
    # Line 288
    sw	$v0,8200($s1)
    lw	$ra,12100($s0)
    # Line 295
    lw	$a2,0($sp)
    li	$a3,-3
    # Line 288
    beq	$ra,$at,.L0d966d2c
    # Line 295
    srl	$a2,$a2,0x1
    # Line 297
    ld	$a7,40($sp)
    # Line 295
    lw	$a0,32088($s0)
    andi	$a2,$a2,0x1
    lw	$a1,32092($s0)
    sll	$a2,$a2,0x1
    and	$a0,$a0,$a3
    or	$a0,$a0,$a2
    beq	$a1,$a0,.L0d966d24
    sw	$a0,32088($s0)
    # Line 296
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    lw	$a3,32088($s0)
    sw	$a3,32092($s0)
.L0d966d24:
    # Line 297
    sw	$a7,8680($s1)
    sw	$a7,8680($s2)
.L0d966d2c:
    # Line 300
    ld	$t9,64($sp)
    mov.s	$f13,$f22
    lw	$t9,-32472($t9)
    mov.s	$f14,$f20
    ld	$s1,48($sp)
    mov.s	$f15,$f26
    ld	$s2,56($sp)
    move	$a0,$s0
    jalr	$t9
    mov.s	$f16,$f24
    ld	$ra,88($sp)
    ldc1	$f20,8($sp)
    ldc1	$f26,16($sp)
    # Line 302
    lw	$a0,0($sp)
    lw	$at,32092($s0)
    ldc1	$f22,24($sp)
    ldc1	$f24,32($sp)
    beq	$at,$a0,.L0d966da4
    sw	$a0,32088($s0)
    # Line 303
    lw	$a1,32184($s0)
    # Line 304
    ld	$gp,80($sp)
    # Line 303
    sw	$a0,8216($a1)
    lw	$a0,32188($s0)
    lw	$v1,32088($s0)
    sw	$v1,8216($a0)
    lw	$v0,32088($s0)
    sw	$v0,32092($s0)
    # Line 304
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d966da4:
    ld	$gp,80($sp)
    ld	$s0,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glCrmLeftRightRect

.rdata
_lit8_bff0000000000000:
    .word 0xbff00000, 0x00000000
_lit_42800000:
    .word 0x42800000
_lit_437f0000:
    .word 0x437f0000
_lit_45800000:
    .word 0x45800000

