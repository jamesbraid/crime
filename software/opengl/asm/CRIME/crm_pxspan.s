# Source: ../CRIME/crm_pxspan.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_pxspan.c
# Total Functions: 15

.text

# Function: crmSpanDoubleStore
# Declared: Line 32 (Source lines: 34-82)
# Address: 0x0d963db0 - 0x0d963f90 (Size: 480 bytes, Frame: 240)
.ent crmSpanDoubleStore
crmSpanDoubleStore:
    # Line 42
    lw	$at,32088($a0)
    # Line 34
    addiu	$sp,$sp,-112
    sd	$s5,48($sp)
    # Line 40
    lw	$s5,32188($a0)
    # Line 34
    sd	$s6,72($sp)
    # Line 40
    lw	$s6,32184($a0)
    # Line 34
    sd	$s2,88($sp)
    sd	$s0,64($sp)
    # Line 44
    lw	$a5,11760($a0)
    lw	$a6,30656($a0)
    # Line 34
    move	$s0,$a0
    move	$s2,$a2
    sd	$s1,56($sp)
    move	$s1,$a3
    sd	$s3,80($sp)
    move	$s3,$a1
    # Line 42
    sw	$at,0($sp)
    # Line 44
    bne	$a6,$a5,.L0d963e0c
    # Line 48
    move	$a1,$a6
    # Line 46
    lw	$a1,30660($a0)
    sd	$ra,96($sp)
    b	.L0d963e14
    sw	$a1,11760($a0)
.L0d963e0c:
    # Line 48
    sw	$a6,11760($a0)
    sd	$ra,96($sp)
.L0d963e14:
    # Line 50
    # lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    sd	$s4,104($sp)
    move	$a0,$s0
    jal	__glCrmSetDrawBuffer
    sd	$a5,40($sp)
    # Line 52
    lw	$s4,0($sp)
    andi	$a0,$s4,0x1
    # Line 56
    sll	$t0,$s4,0x1e
    # Line 52
    beqz	$a0,.L0d963e50
    # Line 56
    sll	$v1,$s4,0x1d
    # Line 52
    lh	$v0,1674($s0)
    beqz	$v0,.L0d963e50
    nop
    # Line 54
    sw	$zero,8680($s6)
    sw	$zero,8680($s5)
.L0d963e50:
    # Line 56
    sd	$v1,16($sp)
    bltz	$v1,.L0d963f1c
    sd	$a0,8($sp)
.L0d963e5c:
    # Line 61
    sb	$zero,30652($s0)
    # Line 63
    lw	$a1,208($s3)
    # Line 62
    lw	$a0,220($s3)
    # Line 64
    move	$t9,$s1
    move	$a2,$s2
    # Line 62
    sd	$a0,32($sp)
    # Line 64
    move	$a0,$s0
    # Line 63
    sd	$a1,24($sp)
    # Line 64
    jalr	$t9
    move	$a1,$s3
    # Line 67
    # lw $t9, -31852($gp) # &__glCrmSetDrawBuffer
    ld	$a2,40($sp)
    move	$a0,$s0
    # Line 66
    sw	$a2,11760($s0)
    # Line 67
    jal	__glCrmSetDrawBuffer
    move	$a1,$a2
    # Line 69
    ld	$a4,8($sp)
    ld	$a3,24($sp)
    ld	$a5,32($sp)
    beqz	$a4,.L0d963ec4
    ld	$a0,16($sp)
    lh	$a1,1674($s0)
    beqz	$a1,.L0d963ec4
    nop
    # Line 71
    sw	$a1,8680($s6)
    sw	$a1,8680($s5)
.L0d963ec4:
    # Line 73
    bgez	$a0,.L0d963ed0
    sll	$a6,$s4,0x1e
    bltz	$a6,.L0d963f5c
.L0d963ed0:
    ld	$s4,104($sp)
    # Line 80
    move	$t9,$s1
    # Line 79
    sw	$a3,208($s3)
    # Line 80
    move	$a0,$s0
    move	$a1,$s3
    # Line 78
    sw	$a5,220($s3)
    # Line 80
    jalr	$t9
    move	$a2,$s2
    # Line 81
    li	$a7,1
    sb	$a7,30652($s0)
    # Line 82
    ld	$s0,64($sp)
    ld	$s1,56($sp)
    ld	$s2,88($sp)
    ld	$ra,96($sp)
    ld	$s3,80($sp)
    ld	$s5,48($sp)
    ld	$s6,72($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d963f1c:
    # Line 56
    bgez	$t0,.L0d963e5c
    nop
    # Line 57
    lw	$a0,32088($s0)
    lw	$t1,32092($s0)
    li	$a1,-3
    and	$a0,$a0,$a1
    beq	$t1,$a0,.L0d963e5c
    sw	$a0,32088($s0)
    # Line 58
    lw	$a5,32184($s0)
    sw	$a0,8216($a5)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    b	.L0d963e5c
    sw	$a2,32092($s0)
.L0d963f5c:
    # Line 74
    lw	$a0,32088($s0)
    lw	$a6,32092($s0)
    ori	$a0,$a0,0x2
    beq	$a6,$a0,.L0d963ed0
    sw	$a0,32088($s0)
    # Line 75
    lw	$a6,32184($s0)
    sw	$a0,8216($a6)
    lw	$a4,32188($s0)
    lw	$a2,32088($s0)
    sw	$a2,8216($a4)
    lw	$a1,32088($s0)
    b	.L0d963ed0
    sw	$a1,32092($s0)
.end crmSpanDoubleStore

# Function: __glCrmSpanRenderRGBA
# Declared: Line 90 (Source lines: 92-166)
# Address: 0x0d963f90 - 0x0d964338 (Size: 936 bytes, Frame: 224)
.globl __glCrmSpanRenderRGBA
.ent __glCrmSpanRenderRGBA
__glCrmSpanRenderRGBA:
    # Line 92
    addiu	$sp,$sp,-608
    sd	$s3,552($sp)
    sd	$s6,544($sp)
    sd	$s2,592($sp)
    sd	$s4,536($sp)
    sd	$s8,560($sp)
    lbu	$at,30652($a0)
    move	$s8,$a1
    sd	$s1,568($sp)
    lui	$v0,0xf
    move	$s1,$a0
    sd	$s5,528($sp)
    addiu	$v0,$v0,-12804
    sd	$gp,576($sp)
    beqz	$at,.L0d963fec
    addu	$gp,$t9,$v0
    # Line 107
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,15792
    sd	$ra,504($sp)
    bal __glCrmBeginPoints
    la	$a3,__glCrmSpanRenderRGBA
    b	.L0d964300
    ld	$ra,504($sp)
.L0d963fec:
    # Line 113
    lwc1	$f0,164($a1)
    lwc1	$f1,200($a1)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 111
    lw	$s3,236($a1)
    # Line 112
    lw	$s4,208($a1)
    # Line 113
    mfc1	$v0,$f0
    slti	$at,$s3,1
    # Line 115
    subu	$v1,$v0,$s4
    subu	$s4,$s4,$v0
    movz	$s4,$v1,$at
    blez	$s4,.L0d964300
    # Line 114
    lw	$s2,184($a1)
    # Line 121
    lw	$a0,312($a1)
    sd	$v0,520($sp)
    sd	$s0,512($sp)
    blez	$s2,.L0d964328
    sd	$s7,584($sp)
    andi	$v0,$s2,0x7
    move	$s0,$zero
    beqz	$v0,.L0d964060
    move	$s7,$zero
.L0d964044:
    # Line 123
    lh	$a5,0($a0)
    # Line 122
    addiu	$s0,$s0,1
    addiu	$v0,$v0,-1
    # Line 123
    addiu	$a0,$a0,2
    addu	$a5,$a5,$s7
    bnez	$v0,.L0d964044
    move	$s7,$a5
.L0d964060:
    sra	$a6,$s2,0x3
    beqz	$a6,.L0d9640c4
    move	$v0,$s7
    nop
.L0d964070:
    lh	$t8,0($a0)
    lh	$t3,2($a0)
    lh	$t2,4($a0)
    addu	$t8,$t8,$v0
    lh	$t1,6($a0)
    addu	$t3,$t3,$t8
    lh	$t0,8($a0)
    addu	$t2,$t2,$t3
    lh	$a7,10($a0)
    addu	$t1,$t1,$t2
    lh	$a6,12($a0)
    addu	$t0,$t0,$t1
    lh	$a5,14($a0)
    addu	$a7,$a7,$t0
    # Line 122
    addiu	$s0,$s0,8
    # Line 123
    addu	$a6,$a6,$a7
    addiu	$a0,$a0,16
    addu	$a5,$a5,$a6
    # Line 122
    bne	$s2,$s0,.L0d964070
    # Line 123
    move	$v0,$a5
    move	$s7,$a5
.L0d9640c4:
    sd	$a2,600($sp)
    # Line 125
    negu	$at,$a5
    slti	$t9,$a5,0
    sd	$ra,504($sp)
    movn	$s7,$at,$t9
.L0d9640d8:
    # Line 127
    lw	$t9,32324($s1)
    ld	$s0,600($sp)
    move	$a0,$s1
    jal	sub_0d960000
    sll	$a1,$s7,0x2
    # Line 128
    move	$a5,$v0
    # Line 129
    move	$a2,$s0
    # Line 130
    blez	$s2,.L0d9641e0
    lw	$a0,312($s8)
    b	.L0d964154
    move	$s0,$zero
.L0d964104:
    addiu	$t0,$t0,-1
.L0d964108:
    # Line 136
    addiu	$a6,$a6,-1
    sw	$a7,0($a5)
    bnez	$t0,.L0d964104
    addiu	$a5,$a5,4
.L0d964118:
    beqz	$v1,.L0d96414c
    nop
.L0d964120:
    sw	$a7,0($a5)
    sw	$a7,4($a5)
    sw	$a7,8($a5)
    sw	$a7,12($a5)
    sw	$a7,16($a5)
    sw	$a7,20($a5)
    addiu	$a6,$a6,-8
    sw	$a7,24($a5)
    sw	$a7,28($a5)
    bgtz	$a6,.L0d964120
    addiu	$a5,$a5,32
.L0d96414c:
    # Line 131
    beq	$s2,$s0,.L0d9641e0
    nop
.L0d964154:
    # Line 132
    lh	$t2,0($a0)
    # Line 134
    lwc1	$f5,0($a2)
    lwc1	$f3,8($a2)
    # Line 133
    negu	$a6,$t2
    slti	$t1,$t2,0
    # Line 134
    lwc1	$f4,4($a2)
    movz	$a6,$t2,$t1
    # Line 136
    li	$t1,1
    # Line 134
    lwc1	$f2,12($a2)
    trunc.w.s	$f5,$f5
    # Line 136
    slt	$t9,$a6,$t1
    # Line 134
    trunc.w.s	$f3,$f3
    # Line 136
    movz	$t1,$a6,$t9
    # Line 134
    trunc.w.s	$f4,$f4
    mfc1	$t8,$f5
    sra	$v1,$t1,0x3
    trunc.w.s	$f2,$f2
    mfc1	$t3,$f3
    # Line 132
    addiu	$a0,$a0,2
    # Line 134
    mfc1	$t0,$f4
    sll	$t8,$t8,0x18
    # Line 131
    addiu	$s0,$s0,1
    # Line 134
    mfc1	$a7,$f2
    sll	$t3,$t3,0x8
    # Line 137
    addiu	$a2,$a2,16
    # Line 134
    sll	$t0,$t0,0x10
    or	$t0,$t0,$t3
    or	$a7,$a7,$t8
    # Line 136
    blez	$a6,.L0d96414c
    # Line 134
    or	$a7,$a7,$t0
    andi	$t0,$t1,0x7
    bnez	$t0,.L0d964108
    addiu	$t0,$t0,-1
    b	.L0d964118
    nop
.L0d9641e0:
    # Line 139
    lw	$a2,204($s8)
    sw	$a2,204($sp)
    # Line 140
    lw	$a1,208($s8)
    sw	$a1,208($sp)
    # Line 141
    sw	$s7,216($sp)
    # Line 142
    li	$s5,1
    sw	$s5,220($sp)
    # Line 143
    sw	$s5,172($sp)
    # Line 144
    sw	$v0,12($sp)
    # Line 145
    sw	$v0,8($sp)
    # Line 146
    sll	$a0,$s2,0x2
    sw	$a0,16($sp)
    # Line 147
    li	$v1,6408
    sw	$v1,0($sp)
    # Line 153
    lw	$ra,32292($s1)
    li	$at,-241
    # Line 157
    li	$s6,2
    # Line 152
    sw	$zero,32224($s1)
    # Line 153
    and	$ra,$ra,$at
    # Line 151
    sb	$zero,32206($s1)
    # Line 153
    ori	$ra,$ra,0x20
    # Line 154
    li	$at,-769
    # Line 157
    move	$s0,$zero
    # Line 149
    sw	$s5,32216($s1)
    # Line 154
    and	$ra,$ra,$at
    # Line 150
    lw	$at,11760($s1)
    # Line 154
    ori	$ra,$ra,0x200
    # Line 155
    li	$a1,-13
    # Line 156
    lbu	$v1,32209($s1)
    # Line 157
    addu	$a0,$s3,$s3
    # Line 155
    and	$ra,$ra,$a1
    # Line 150
    sw	$at,32300($s1)
    # Line 155
    ori	$ra,$ra,0x8
    # Line 156
    li	$at,-3
    movn	$s3,$a0,$v1
    and	$ra,$ra,$at
    sw	$ra,32292($s1)
    nop
    nop
    # Line 160
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
.L0d964280:
    move	$a0,$s1
    jal	crmDrawPixelsXfer
    addiu	$a1,$sp,0
    # Line 161
    lw	$a6,208($sp)
    addu	$a6,$s3,$a6
    sw	$a6,208($sp)
    # Line 159
    lbu	$a5,32209($s1)
    move	$a4,$s5
    movn	$a4,$s6,$a5
    addu	$s0,$s0,$a4
    slt	$a3,$s0,$s4
    bnez	$a3,.L0d964280
    # Line 160
    nop	# was lw $t9, -31596($gp) # &crmDrawPixelsXfer
    ld	$s2,592($sp)
    ld	$s7,584($sp)
    # Line 166
    ld	$gp,576($sp)
    ld	$s0,512($sp)
    # Line 163
    sw	$zero,32216($s1)
    # Line 166
    ld	$s1,568($sp)
    ld	$s3,552($sp)
    ld	$s5,528($sp)
    ld	$s6,544($sp)
    # Line 165
    ld	$t0,520($sp)
    sw	$t0,208($s8)
    # Line 164
    lw	$a7,220($s8)
    # Line 166
    ld	$ra,504($sp)
    # Line 164
    subu	$a7,$a7,$s4
    # Line 166
    ld	$s4,536($sp)
    # Line 164
    sw	$a7,220($s8)
    # Line 166
    ld	$s8,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0d964300:
    ld	$s8,560($sp)
    ld	$s3,552($sp)
    ld	$s6,544($sp)
    ld	$s2,592($sp)
    ld	$s4,536($sp)
    ld	$s1,568($sp)
    ld	$s5,528($sp)
    ld	$gp,576($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0d964328:
    sd	$a2,600($sp)
    # Line 125
    move	$s7,$zero
    b	.L0d9640d8
    sd	$ra,504($sp)
.end __glCrmSpanRenderRGBA

# Function: __glCrmSpanRenderRGBA2
# Declared: Line 169 (Source lines: 171-234)
# Address: 0x0d964340 - 0x0d964660 (Size: 800 bytes, Frame: 224)
.globl __glCrmSpanRenderRGBA2
.ent __glCrmSpanRenderRGBA2
__glCrmSpanRenderRGBA2:
    # Line 171
    addiu	$sp,$sp,-608
    sd	$s3,552($sp)
    sd	$s2,544($sp)
    sd	$ra,536($sp)
    sd	$s6,560($sp)
    move	$v0,$a2
    lbu	$at,30652($a0)
    move	$s6,$a1
    sd	$s0,568($sp)
    lui	$v1,0xf
    move	$s0,$a0
    sd	$s7,592($sp)
    addiu	$v1,$v1,-13748
    sd	$gp,576($sp)
    beqz	$at,.L0d964398
    addu	$gp,$t9,$v1
    # Line 185
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,15792
    bal __glCrmBeginPoints
    la	$a3,__glCrmSpanRenderRGBA2
    b	.L0d964640
    ld	$s6,560($sp)
.L0d964398:
    # Line 191
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 189
    lw	$s2,236($a1)
    # Line 190
    lw	$s3,208($a1)
    # Line 191
    mfc1	$s7,$f0
    slti	$ra,$s2,1
    # Line 193
    subu	$at,$s7,$s3
    subu	$s3,$s3,$s7
    sd	$a2,600($sp)
    movz	$s3,$at,$ra
    # Line 191
    sd	$s7,528($sp)
    # Line 193
    blez	$s3,.L0d96463c
    # Line 192
    lw	$s7,184($a1)
    # Line 199
    lw	$t9,32324($a0)
    sll	$a1,$s7,0x2
    jal	sub_0d960000
    sd	$a1,584($sp)
    # Line 201
    ld	$a1,600($sp)
    andi	$t8,$s7,0x1
    move	$a0,$v0
    ld	$a6,584($sp)
    blez	$s7,.L0d964520
    move	$a2,$a1
    addu	$a5,$v0,$a6
    beqz	$t8,.L0d96445c
    nop
    # Line 203
    lwc1	$f5,0($a1)
    lwc1	$f3,8($a1)
    lwc1	$f4,4($a1)
    lwc1	$f2,12($a1)
    trunc.w.s	$f5,$f5
    trunc.w.s	$f3,$f3
    trunc.w.s	$f4,$f4
    mfc1	$v1,$f5
    trunc.w.s	$f2,$f2
    mfc1	$at,$f3
    mfc1	$ra,$f4
    sll	$v1,$v1,0x18
    mfc1	$t9,$f2
    sll	$at,$at,0x8
    # Line 202
    addiu	$a0,$v0,4
    # Line 203
    sll	$ra,$ra,0x10
    or	$ra,$ra,$at
    or	$t9,$t9,$v1
    # Line 205
    addiu	$a2,$a1,16
    # Line 203
    or	$t9,$t9,$ra
    sw	$t9,0($v0)
.L0d96445c:
    sra	$a1,$s7,0x1
    beqz	$a1,.L0d964514
    nop
    nop
    nop
.L0d964470:
    lwc1	$f13,0($a2)
    lwc1	$f12,4($a2)
    lwc1	$f11,8($a2)
    trunc.w.s	$f13,$f13
    lwc1	$f10,12($a2)
    trunc.w.s	$f12,$f12
    mfc1	$t8,$f13
    trunc.w.s	$f11,$f11
    trunc.w.s	$f10,$f10
    mfc1	$t2,$f12
    sll	$t8,$t8,0x18
    mfc1	$t3,$f11
    mfc1	$t1,$f10
    sll	$t2,$t2,0x10
    sll	$t3,$t3,0x8
    or	$t1,$t1,$t8
    or	$t2,$t2,$t3
    or	$t1,$t1,$t2
    sw	$t1,0($a0)
    lwc1	$f9,16($a2)
    lwc1	$f8,20($a2)
    lwc1	$f7,24($a2)
    trunc.w.s	$f9,$f9
    lwc1	$f6,28($a2)
    trunc.w.s	$f8,$f8
    mfc1	$t0,$f9
    trunc.w.s	$f7,$f7
    trunc.w.s	$f6,$f6
    mfc1	$a4,$f8
    sll	$t0,$t0,0x18
    mfc1	$a7,$f7
    # Line 205
    addiu	$a2,$a2,32
    # Line 203
    mfc1	$a3,$f6
    sll	$a4,$a4,0x10
    # Line 202
    addiu	$a0,$a0,8
    # Line 203
    sll	$a7,$a7,0x8
    or	$a3,$a3,$t0
    or	$a4,$a4,$a7
    or	$a3,$a3,$a4
    # Line 202
    bne	$a0,$a5,.L0d964470
    # Line 203
    sw	$a3,-4($a0)
.L0d964514:
    sd	$s5,520($sp)
    sd	$s1,512($sp)
    sd	$s4,504($sp)
.L0d964520:
    sd	$s1,512($sp)
    sd	$s4,504($sp)
    # Line 207
    lw	$a0,204($s6)
    sw	$a0,204($sp)
    # Line 208
    lw	$v1,208($s6)
    # Line 215
    li	$at,6408
    sw	$at,0($sp)
    # Line 214
    sw	$a6,16($sp)
    # Line 213
    sw	$v0,8($sp)
    # Line 212
    sw	$v0,12($sp)
    # Line 210
    li	$s4,1
    # Line 211
    sw	$s4,172($sp)
    # Line 210
    sw	$s4,220($sp)
    # Line 209
    sw	$s7,216($sp)
    # Line 208
    sw	$v1,208($sp)
    # Line 221
    lw	$t9,32292($s0)
    sd	$s5,520($sp)
    li	$ra,-241
    # Line 225
    li	$s5,2
    # Line 220
    sw	$zero,32224($s0)
    # Line 221
    and	$t9,$t9,$ra
    # Line 219
    sb	$zero,32206($s0)
    # Line 222
    li	$ra,-769
    # Line 221
    ori	$t9,$t9,0x20
    # Line 225
    move	$s1,$zero
    # Line 217
    sw	$s4,32216($s0)
    # Line 222
    and	$t9,$t9,$ra
    # Line 223
    li	$a0,-13
    # Line 224
    lbu	$at,32209($s0)
    # Line 222
    ori	$t9,$t9,0x200
    # Line 225
    addu	$v1,$s2,$s2
    # Line 218
    lw	$ra,11760($s0)
    # Line 223
    and	$t9,$t9,$a0
    # Line 218
    sw	$ra,32300($s0)
    # Line 224
    li	$ra,-3
    # Line 223
    ori	$t9,$t9,0x8
    movn	$s2,$v1,$at
    # Line 224
    and	$t9,$t9,$ra
    sw	$t9,32292($s0)
    # Line 228
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
.L0d9645c0:
    move	$a0,$s0
    jal	crmDrawPixelsXfer
    addiu	$a1,$sp,0
    # Line 229
    lw	$a4,208($sp)
    addu	$a4,$s2,$a4
    sw	$a4,208($sp)
    # Line 227
    lbu	$a3,32209($s0)
    move	$a2,$s4
    movn	$a2,$s5,$a3
    addu	$s1,$s1,$a2
    slt	$a1,$s1,$s3
    bnez	$a1,.L0d9645c0
    # Line 228
    nop	# was lw $t9, -31596($gp) # &crmDrawPixelsXfer
    ld	$s7,592($sp)
    # Line 234
    ld	$gp,576($sp)
    # Line 231
    sw	$zero,32216($s0)
    # Line 234
    ld	$s0,568($sp)
    ld	$s1,512($sp)
    ld	$s2,544($sp)
    ld	$s4,504($sp)
    ld	$s5,520($sp)
    # Line 233
    ld	$a6,528($sp)
    sw	$a6,208($s6)
    # Line 232
    lw	$a5,220($s6)
    # Line 234
    ld	$ra,536($sp)
    # Line 232
    subu	$a5,$a5,$s3
    # Line 234
    ld	$s3,552($sp)
    # Line 232
    sw	$a5,220($s6)
    # Line 234
    ld	$s6,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0d96463c:
    ld	$s6,560($sp)
.L0d964640:
    ld	$s3,552($sp)
    ld	$s2,544($sp)
    ld	$ra,536($sp)
    ld	$s0,568($sp)
    ld	$s7,592($sp)
    ld	$gp,576($sp)
    jr	$ra
    addiu	$sp,$sp,608
.end __glCrmSpanRenderRGBA2

# Function: __glCrmSpanRenderCI
# Declared: Line 237 (Source lines: 239-313)
# Address: 0x0d964660 - 0x0d9649c8 (Size: 872 bytes, Frame: 224)
.globl __glCrmSpanRenderCI
.ent __glCrmSpanRenderCI
__glCrmSpanRenderCI:
    # Line 239
    addiu	$sp,$sp,-608
    sd	$s3,552($sp)
    sd	$s2,592($sp)
    sd	$s6,544($sp)
    sd	$s4,536($sp)
    sd	$s8,560($sp)
    lbu	$at,30652($a0)
    move	$s8,$a1
    sd	$s1,568($sp)
    lui	$v0,0xf
    move	$s1,$a0
    sd	$s5,528($sp)
    addiu	$v0,$v0,-14548
    sd	$gp,576($sp)
    beqz	$at,.L0d9646bc
    addu	$gp,$t9,$v0
    # Line 255
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,15792
    sd	$ra,504($sp)
    bal __glCrmBeginPoints
    la	$a3,__glCrmSpanRenderCI
    b	.L0d964990
    ld	$ra,504($sp)
.L0d9646bc:
    # Line 261
    lwc1	$f0,164($a1)
    lwc1	$f1,200($a1)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 259
    lw	$s3,236($a1)
    # Line 260
    lw	$s4,208($a1)
    # Line 261
    mfc1	$v0,$f0
    slti	$at,$s3,1
    # Line 264
    subu	$v1,$v0,$s4
    subu	$s4,$s4,$v0
    movz	$s4,$v1,$at
    # Line 263
    lw	$s5,30736($a0)
    # Line 264
    blez	$s4,.L0d964990
    # Line 262
    lw	$s2,184($a1)
    # Line 270
    lw	$a0,312($a1)
    sd	$v0,520($sp)
    sd	$s0,512($sp)
    blez	$s2,.L0d9649b8
    sd	$s7,584($sp)
    andi	$v0,$s2,0x7
    move	$s0,$zero
    beqz	$v0,.L0d964734
    move	$s7,$zero
.L0d964718:
    # Line 272
    lh	$a5,0($a0)
    # Line 271
    addiu	$s0,$s0,1
    addiu	$v0,$v0,-1
    # Line 272
    addiu	$a0,$a0,2
    addu	$a5,$a5,$s7
    bnez	$v0,.L0d964718
    move	$s7,$a5
.L0d964734:
    sra	$a6,$s2,0x3
    beqz	$a6,.L0d964794
    move	$v0,$s7
.L0d964740:
    lh	$t8,0($a0)
    lh	$t3,2($a0)
    lh	$t2,4($a0)
    addu	$t8,$t8,$v0
    lh	$t1,6($a0)
    addu	$t3,$t3,$t8
    lh	$t0,8($a0)
    addu	$t2,$t2,$t3
    lh	$a7,10($a0)
    addu	$t1,$t1,$t2
    lh	$a6,12($a0)
    addu	$t0,$t0,$t1
    lh	$a5,14($a0)
    addu	$a7,$a7,$t0
    # Line 271
    addiu	$s0,$s0,8
    # Line 272
    addu	$a6,$a6,$a7
    addiu	$a0,$a0,16
    addu	$a5,$a5,$a6
    # Line 271
    bne	$s2,$s0,.L0d964740
    # Line 272
    move	$v0,$a5
    move	$s7,$a5
.L0d964794:
    sd	$a2,600($sp)
    # Line 274
    negu	$at,$a5
    slti	$t9,$a5,0
    sd	$ra,504($sp)
    movn	$s7,$at,$t9
.L0d9647a8:
    # Line 276
    lw	$t9,32324($s1)
    move	$a0,$s1
    ld	$s0,600($sp)
    jal	sub_0d960000
    addu	$a1,$s7,$s7
    # Line 277
    move	$a5,$v0
    # Line 278
    move	$a2,$s0
    # Line 279
    blez	$s2,.L0d964878
    lw	$a0,312($s8)
    b	.L0d964824
    move	$s0,$zero
.L0d9647d4:
    addiu	$t0,$t0,-1
.L0d9647d8:
    # Line 284
    addiu	$a6,$a6,-1
    sh	$a7,0($a5)
    bnez	$t0,.L0d9647d4
    addiu	$a5,$a5,2
.L0d9647e8:
    beqz	$v1,.L0d96481c
    nop
.L0d9647f0:
    sh	$a7,0($a5)
    sh	$a7,2($a5)
    sh	$a7,4($a5)
    sh	$a7,6($a5)
    sh	$a7,8($a5)
    sh	$a7,10($a5)
    addiu	$a6,$a6,-8
    sh	$a7,12($a5)
    sh	$a7,14($a5)
    bgtz	$a6,.L0d9647f0
    addiu	$a5,$a5,16
.L0d96481c:
    # Line 280
    beq	$s2,$s0,.L0d964878
    nop
.L0d964824:
    # Line 283
    lwc1	$f2,0($a2)
    # Line 281
    lh	$t1,0($a0)
    # Line 283
    addiu	$a2,$a2,4
    # Line 282
    negu	$a6,$t1
    slti	$t0,$t1,0
    # Line 283
    trunc.w.s	$f2,$f2
    movz	$a6,$t1,$t0
    # Line 284
    li	$t1,1
    # Line 281
    addiu	$a0,$a0,2
    # Line 284
    slt	$t2,$a6,$t1
    # Line 283
    mfc1	$a7,$f2
    # Line 280
    addiu	$s0,$s0,1
    # Line 284
    movz	$t1,$a6,$t2
    blez	$a6,.L0d96481c
    # Line 283
    and	$a7,$s5,$a7
    andi	$t0,$t1,0x7
    sra	$v1,$t1,0x3
    bnez	$t0,.L0d9647d8
    addiu	$t0,$t0,-1
    b	.L0d9647e8
    nop
.L0d964878:
    # Line 286
    lw	$ra,204($s8)
    sw	$ra,204($sp)
    # Line 287
    lw	$t9,208($s8)
    sw	$t9,208($sp)
    # Line 288
    sw	$s7,216($sp)
    # Line 289
    li	$s5,1
    sw	$s5,220($sp)
    # Line 290
    sw	$s5,172($sp)
    # Line 291
    sw	$v0,12($sp)
    # Line 292
    sw	$v0,8($sp)
    # Line 293
    addu	$t8,$s2,$s2
    sw	$t8,16($sp)
    # Line 294
    li	$s6,6408
    sw	$s6,0($sp)
    # Line 300
    lw	$t3,32292($s1)
    # Line 304
    li	$s6,2
    # Line 299
    sw	$zero,32224($s1)
    # Line 300
    li	$s0,-241
    # Line 298
    sb	$zero,32206($s1)
    # Line 300
    and	$t3,$t3,$s0
    # Line 301
    li	$t8,-769
    # Line 304
    move	$s0,$zero
    # Line 296
    sw	$s5,32216($s1)
    # Line 301
    and	$t3,$t3,$t8
    # Line 297
    lw	$t8,11760($s1)
    # Line 301
    ori	$t3,$t3,0x100
    # Line 302
    li	$at,-13
    # Line 303
    lbu	$t9,32209($s1)
    # Line 304
    addu	$ra,$s3,$s3
    # Line 302
    and	$t3,$t3,$at
    # Line 297
    sw	$t8,32300($s1)
    # Line 302
    ori	$t3,$t3,0x4
    # Line 303
    li	$t8,-3
    movn	$s3,$ra,$t9
    and	$t3,$t3,$t8
    sw	$t3,32292($s1)
    nop
    nop
.L0d964910:
    # Line 307
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
    move	$a0,$s1
    jal	crmDrawPixelsXfer
    addiu	$a1,$sp,0
    # Line 308
    lw	$a0,208($sp)
    addu	$a0,$s3,$a0
    sw	$a0,208($sp)
    # Line 306
    lbu	$v1,32209($s1)
    move	$v0,$s5
    movn	$v0,$s6,$v1
    addu	$s0,$s0,$v0
    slt	$at,$s0,$s4
    bnez	$at,.L0d964910
    ld	$s2,592($sp)
    ld	$s7,584($sp)
    # Line 313
    ld	$gp,576($sp)
    ld	$s0,512($sp)
    # Line 310
    sw	$zero,32216($s1)
    # Line 313
    ld	$s1,568($sp)
    ld	$s3,552($sp)
    ld	$s5,528($sp)
    ld	$s6,544($sp)
    # Line 312
    ld	$a2,520($sp)
    sw	$a2,208($s8)
    # Line 311
    lw	$a1,220($s8)
    # Line 313
    ld	$ra,504($sp)
    # Line 311
    subu	$a1,$a1,$s4
    # Line 313
    ld	$s4,536($sp)
    # Line 311
    sw	$a1,220($s8)
    # Line 313
    ld	$s8,560($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0d964990:
    ld	$s8,560($sp)
    ld	$s3,552($sp)
    ld	$s2,592($sp)
    ld	$s6,544($sp)
    ld	$s4,536($sp)
    ld	$s1,568($sp)
    ld	$s5,528($sp)
    ld	$gp,576($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0d9649b8:
    sd	$a2,600($sp)
    # Line 274
    move	$s7,$zero
    b	.L0d9647a8
    sd	$ra,504($sp)
.end __glCrmSpanRenderCI

# Function: __glCrmSpanRenderCI2
# Declared: Line 316 (Source lines: 318-381)
# Address: 0x0d9649d0 - 0x0d964c74 (Size: 676 bytes, Frame: 224)
.globl __glCrmSpanRenderCI2
.ent __glCrmSpanRenderCI2
__glCrmSpanRenderCI2:
    # Line 318
    addiu	$sp,$sp,-608
    sd	$s3,560($sp)
    sd	$s2,544($sp)
    sd	$ra,536($sp)
    sd	$s7,600($sp)
    sd	$s6,568($sp)
    move	$v0,$a2
    lbu	$at,30652($a0)
    move	$s6,$a1
    sd	$s0,576($sp)
    lui	$v1,0xf
    move	$s0,$a0
    sd	$s1,528($sp)
    addiu	$v1,$v1,-15428
    sd	$gp,584($sp)
    beqz	$at,.L0d964a2c
    addu	$gp,$t9,$v1
    # Line 333
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,15792
    bal __glCrmBeginPoints
    la	$a3,__glCrmSpanRenderCI2
    b	.L0d964c50
    ld	$s3,560($sp)
.L0d964a2c:
    # Line 339
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    # Line 337
    lw	$s2,236($a1)
    # Line 338
    lw	$s3,208($a1)
    # Line 339
    mfc1	$s7,$f0
    slti	$ra,$s2,1
    # Line 342
    lw	$s1,30736($a0)
    # Line 341
    subu	$at,$s7,$s3
    subu	$s3,$s3,$s7
    sd	$a2,552($sp)
    movz	$s3,$at,$ra
    # Line 339
    sd	$s7,520($sp)
    # Line 342
    blez	$s3,.L0d964c4c
    # Line 340
    lw	$s7,184($a1)
    # Line 348
    lw	$t9,32324($a0)
    addu	$a1,$s7,$s7
    jal	sub_0d960000
    sd	$a1,592($sp)
    ld	$a1,592($sp)
    andi	$a6,$s7,0x3
    # Line 350
    move	$a0,$v0
    blez	$s7,.L0d964b34
    ld	$a2,552($sp)
    addu	$a5,$v0,$a1
    beqz	$a6,.L0d964ac4
    sra	$t9,$s7,0x2
.L0d964a9c:
    # Line 352
    lwc1	$f2,0($a2)
    trunc.w.s	$f2,$f2
    addiu	$a6,$a6,-1
    mfc1	$t8,$f2
    # Line 351
    addiu	$a0,$a0,2
    # Line 352
    addiu	$a2,$a2,4
    and	$t8,$s1,$t8
    bnez	$a6,.L0d964a9c
    sh	$t8,-2($a0)
    sra	$t9,$s7,0x2
.L0d964ac4:
    beqz	$t9,.L0d964b2c
    nop
    nop
.L0d964ad0:
    lwc1	$f6,0($a2)
    trunc.w.s	$f6,$f6
    mfc1	$a3,$f6
    and	$a3,$s1,$a3
    sh	$a3,0($a0)
    lwc1	$f5,4($a2)
    trunc.w.s	$f5,$f5
    mfc1	$v1,$f5
    and	$v1,$s1,$v1
    sh	$v1,2($a0)
    lwc1	$f4,8($a2)
    trunc.w.s	$f4,$f4
    mfc1	$at,$f4
    and	$at,$s1,$at
    sh	$at,4($a0)
    lwc1	$f3,12($a2)
    trunc.w.s	$f3,$f3
    # Line 351
    addiu	$a0,$a0,8
    # Line 352
    mfc1	$ra,$f3
    addiu	$a2,$a2,16
    and	$ra,$s1,$ra
    # Line 351
    bne	$a0,$a5,.L0d964ad0
    # Line 352
    sh	$ra,-2($a0)
.L0d964b2c:
    sd	$s5,512($sp)
    sd	$s4,504($sp)
.L0d964b34:
    sd	$s5,512($sp)
    sd	$s4,504($sp)
    # Line 354
    lw	$t0,204($s6)
    sw	$t0,204($sp)
    # Line 355
    lw	$a7,208($s6)
    # Line 362
    li	$a6,6408
    sw	$a6,0($sp)
    # Line 361
    sw	$a1,16($sp)
    # Line 360
    sw	$v0,8($sp)
    # Line 359
    sw	$v0,12($sp)
    # Line 357
    li	$s4,1
    # Line 358
    sw	$s4,172($sp)
    # Line 357
    sw	$s4,220($sp)
    # Line 356
    sw	$s7,216($sp)
    # Line 355
    sw	$a7,208($sp)
    # Line 368
    lw	$a4,32292($s0)
    # Line 372
    li	$s5,2
    # Line 367
    sw	$zero,32224($s0)
    # Line 368
    li	$a5,-241
    # Line 366
    sb	$zero,32206($s0)
    # Line 368
    and	$a4,$a4,$a5
    # Line 369
    li	$a5,-769
    # Line 372
    move	$s1,$zero
    # Line 364
    sw	$s4,32216($s0)
    # Line 369
    and	$a4,$a4,$a5
    # Line 370
    li	$t0,-13
    # Line 371
    lbu	$a6,32209($s0)
    # Line 369
    ori	$a4,$a4,0x100
    # Line 372
    addu	$a7,$s2,$s2
    # Line 365
    lw	$a5,11760($s0)
    # Line 370
    and	$a4,$a4,$t0
    # Line 365
    sw	$a5,32300($s0)
    # Line 371
    li	$a5,-3
    # Line 370
    ori	$a4,$a4,0x4
    movn	$s2,$a7,$a6
    # Line 371
    and	$a4,$a4,$a5
    sw	$a4,32292($s0)
    nop
    nop
.L0d964bd0:
    # Line 375
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
    move	$a0,$s0
    jal	crmDrawPixelsXfer
    addiu	$a1,$sp,0
    # Line 376
    lw	$t8,208($sp)
    addu	$t8,$s2,$t8
    sw	$t8,208($sp)
    # Line 374
    lbu	$t3,32209($s0)
    move	$t2,$s4
    movn	$t2,$s5,$t3
    addu	$s1,$s1,$t2
    slt	$t1,$s1,$s3
    bnez	$t1,.L0d964bd0
    ld	$s7,600($sp)
    # Line 381
    ld	$gp,584($sp)
    # Line 378
    sw	$zero,32216($s0)
    # Line 381
    ld	$s0,576($sp)
    ld	$s1,528($sp)
    ld	$s2,544($sp)
    ld	$s4,504($sp)
    ld	$s5,512($sp)
    # Line 379
    lw	$t9,220($s6)
    # Line 380
    ld	$ra,520($sp)
    sw	$ra,208($s6)
    # Line 381
    ld	$ra,536($sp)
    # Line 379
    subu	$t9,$t9,$s3
    # Line 381
    ld	$s3,560($sp)
    # Line 379
    sw	$t9,220($s6)
    # Line 381
    ld	$s6,568($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0d964c4c:
    ld	$s3,560($sp)
.L0d964c50:
    ld	$s6,568($sp)
    ld	$s2,544($sp)
    ld	$s0,576($sp)
    ld	$ra,536($sp)
    ld	$s7,600($sp)
    ld	$s1,528($sp)
    ld	$gp,584($sp)
    jr	$ra
    addiu	$sp,$sp,608
.end __glCrmSpanRenderCI2

# Function: __glCrmSpanRenderDepth
# Declared: Line 384 (Source lines: 386-455)
# Address: 0x0d964c80 - 0x0d964f4c (Size: 716 bytes, Frame: 144)
.globl __glCrmSpanRenderDepth
.ent __glCrmSpanRenderDepth
__glCrmSpanRenderDepth:
    # Line 386
    addiu	$sp,$sp,-144
    sd	$s3,112($sp)
    # Line 397
    lw	$s3,32188($a0)
    # Line 386
    sd	$s0,96($sp)
    # Line 397
    lw	$s0,32184($a0)
    # Line 386
    sd	$s5,88($sp)
    sd	$s7,80($sp)
    move	$s7,$a2
    # Line 397
    lbu	$at,30652($a0)
    # Line 386
    move	$s5,$a1
    sd	$s2,120($sp)
    lui	$v0,0xf
    move	$s2,$a0
    sd	$ra,128($sp)
    addiu	$v0,$v0,-16116
    sd	$gp,104($sp)
    # Line 397
    beqz	$at,.L0d964ce0
    # Line 386
    addu	$gp,$t9,$v0
    # Line 400
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,15792
    bal __glCrmBeginPoints
    la	$a3,__glCrmSpanRenderDepth
    b	.L0d964f14
    ld	$ra,128($sp)
.L0d964ce0:
    sd	$s4,56($sp)
    # Line 408
    lw	$s4,184($a1)
    sd	$s1,64($sp)
    # Line 405
    lw	$s1,240($a1)
    # Line 407
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    sd	$s8,72($sp)
    # Line 404
    lw	$s8,236($a1)
    # Line 408
    lw	$ra,32096($a0)
    # Line 407
    add.s	$f0,$f0,$f1
    # Line 408
    lw	$a0,32100($a0)
    sd	$s6,48($sp)
    # Line 407
    trunc.w.s	$f0,$f0
    # Line 406
    lw	$at,208($a1)
    sd	$at,40($sp)
    # Line 408
    beq	$ra,$a0,.L0d964d3c
    # Line 407
    mfc1	$s6,$f0
    # Line 415
    sw	$a0,8288($s0)
    lw	$a1,32188($s2)
    lw	$v1,32100($s2)
    sw	$v1,8288($a1)
    lw	$v0,32100($s2)
    sw	$v0,32096($s2)
.L0d964d3c:
    lbu	$a2,32202($s2)
    beqz	$a2,.L0d964d50
    # Line 418
    nop	# was lw $t9, -31600($gp) # &__glCrmSetupPixelRenderOps
    jal	__glCrmSetupPixelRenderOps
    move	$a0,$s2
.L0d964d50:
    lwc1	$f4,384($s2)
    lbu	$a3,3220($s2)
    trunc.w.s	$f4,$f4
    beqz	$a3,.L0d964f34
    mfc1	$a0,$f4
    # Line 421
    lwc1	$f7,388($s2)
    lwc1	$f6,392($s2)
    lwc1	$f5,396($s2)
    trunc.w.s	$f7,$f7
    trunc.w.s	$f6,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a7,$f7
    sll	$t1,$a0,0x18
    mfc1	$t0,$f6
    mfc1	$a6,$f5
    sll	$a7,$a7,0x10
    sll	$t0,$t0,0x8
    or	$a6,$a6,$t1
    or	$a7,$a7,$t0
    or	$a6,$a6,$a7
    sw	$a6,0($sp)
    lw	$a5,0($sp)
    sw	$a5,8400($s0)
    lw	$a4,0($sp)
    sw	$a4,8400($s3)
.L0d964db4:
    # Line 428
    ld	$t0,40($sp)
    ld	$ra,128($sp)
    # Line 427
    lw	$a0,220($s5)
    # Line 428
    beq	$t0,$s6,.L0d964ed0
    move	$t2,$t0
    lui	$a5,0x7
    lwc1	$f4,_lit_42800000
    ori	$a5,$a5,0xffff
    nop
    nop
    nop
.L0d964de0:
    # Line 429
    beqz	$a0,.L0d964ed4
    # Line 455
    ld	$gp,104($sp)
    # Line 431
    lw	$a4,204($s5)
    # Line 432
    lw	$t0,312($s5)
    # Line 434
    sll	$t1,$t2,0x6
    and	$t1,$a5,$t1
    sw	$t1,8($sp)
    lw	$a7,8($sp)
    sw	$a7,8324($s0)
    # Line 433
    move	$a7,$s7
    # Line 434
    lw	$a6,8($sp)
    # Line 430
    addiu	$a0,$a0,-1
    # Line 434
    blez	$s4,.L0d964eb4
    sw	$a6,8324($s3)
    move	$t1,$zero
    # Line 440
    lw	$t3,31304($s2)
.L0d964e20:
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f11
    cvt.s.l	$f11,$f11
    lwc1	$f12,0($a7)
    mul.s	$f11,$f11,$f12
    mul.s	$f11,$f4,$f11
    cvt.d.s	$f11,$f11
    sdc1	$f11,16($sp)
    ldc1	$f10,16($sp)
    # Line 438
    lh	$a6,0($t0)
    # Line 440
    trunc.l.d	$f10,$f10
    sdc1	$f10,24($sp)
    ldc1	$f9,24($sp)
    ldc1	$f8,24($sp)
    # Line 438
    addiu	$t0,$t0,2
    # Line 440
    sdc1	$f9,8648($s0)
    # Line 437
    addiu	$a7,$a7,4
    # Line 438
    addu	$a6,$a6,$a4
    # Line 440
    sdc1	$f8,8648($s3)
.L0d964e70:
    # Line 442
    sll	$t9,$a4,0x6
    # Line 444
    addu	$a4,$s1,$a4
    # Line 442
    and	$t9,$a5,$t9
    sw	$t9,32($sp)
    lw	$t8,32($sp)
    sw	$t8,10368($s0)
    # Line 444
    beq	$a4,$a6,.L0d964ea8
    # Line 442
    sll	$v0,$a4,0x6
    # Line 444
    addu	$a4,$s1,$a4
    # Line 442
    and	$v0,$a5,$v0
    sw	$v0,32($sp)
    lw	$at,32($sp)
    # Line 444
    bne	$a4,$a6,.L0d964e70
    # Line 442
    sw	$at,10368($s0)
.L0d964ea8:
    # Line 436
    addiu	$t1,$t1,1
    bnel	$s4,$t1,.L0d964e20
    # Line 440
    lw	$t3,31304($s2)
.L0d964eb4:
    # Line 436
    lbu	$v1,32209($s2)
    # Line 449
    addu	$a2,$s8,$t2
    movz	$a2,$t2,$v1
    # Line 428
    addu	$t2,$s8,$a2
    # Line 448
    addiu	$a1,$a0,-1
    # Line 428
    bne	$s6,$t2,.L0d964de0
    movn	$a0,$a1,$v1
.L0d964ed0:
    # Line 455
    ld	$gp,104($sp)
.L0d964ed4:
    ld	$s0,96($sp)
    ld	$s1,64($sp)
    ld	$s3,112($sp)
    ld	$s4,56($sp)
    # Line 452
    sw	$a0,220($s5)
    # Line 453
    sw	$s6,208($s5)
    # Line 455
    ld	$s5,88($sp)
    ld	$s6,48($sp)
    ld	$s7,80($sp)
    ld	$s8,72($sp)
    # Line 454
    li	$a3,0x8080
    addu	$a3,$a3,$s2
    # Line 455
    ld	$s2,120($sp)
    addiu	$sp,$sp,144
    jr	$ra
    # Line 454
    sw	$zero,0($a3)
.L0d964f14:
    # Line 455
    ld	$gp,104($sp)
    ld	$s0,96($sp)
    ld	$s2,120($sp)
    ld	$s3,112($sp)
    ld	$s5,88($sp)
    ld	$s7,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d964f34:
    # Line 425
    swc1	$f4,4($sp)
    lw	$a5,4($sp)
    sw	$a5,8400($s0)
    lw	$a4,4($sp)
    b	.L0d964db4
    sw	$a4,8400($s3)
.end __glCrmSpanRenderDepth

# Function: __glCrmSpanRenderDepth2
# Declared: Line 458 (Source lines: 460-524)
# Address: 0x0d964f50 - 0x0d9652a8 (Size: 856 bytes, Frame: 128)
.globl __glCrmSpanRenderDepth2
.ent __glCrmSpanRenderDepth2
__glCrmSpanRenderDepth2:
    # Line 460
    addiu	$sp,$sp,-128
    sd	$s7,72($sp)
    # Line 470
    lw	$s7,32188($a0)
    # Line 460
    sd	$s2,112($sp)
    # Line 470
    lw	$s2,32184($a0)
    # Line 460
    sd	$s4,96($sp)
    sd	$s5,80($sp)
    move	$s5,$a2
    # Line 470
    lbu	$at,30652($a0)
    # Line 460
    move	$s4,$a1
    sd	$s0,88($sp)
    lui	$v0,0xf
    move	$s0,$a0
    sd	$ra,120($sp)
    addiu	$v0,$v0,-16836
    sd	$gp,104($sp)
    # Line 470
    beqz	$at,.L0d964fb0
    # Line 460
    addu	$gp,$t9,$v0
    # Line 473
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,15792
    bal __glCrmBeginPoints
    la	$a3,__glCrmSpanRenderDepth2
    b	.L0d965270
    ld	$ra,120($sp)
.L0d964fb0:
    sd	$s1,56($sp)
    # Line 481
    lw	$s1,184($a1)
    sd	$s3,40($sp)
    # Line 478
    lw	$s3,240($a1)
    # Line 480
    lwc1	$f1,200($a1)
    lwc1	$f0,164($a1)
    sd	$s8,64($sp)
    # Line 477
    lw	$s8,236($a1)
    # Line 481
    lw	$ra,32096($a0)
    # Line 480
    add.s	$f0,$f0,$f1
    # Line 481
    lw	$a0,32100($a0)
    sd	$s6,48($sp)
    # Line 480
    trunc.w.s	$f0,$f0
    # Line 479
    lw	$at,208($a1)
    sd	$at,32($sp)
    # Line 481
    beq	$ra,$a0,.L0d96500c
    # Line 480
    mfc1	$s6,$f0
    # Line 488
    sw	$a0,8288($s2)
    lw	$a1,32188($s0)
    lw	$v1,32100($s0)
    sw	$v1,8288($a1)
    lw	$v0,32100($s0)
    sw	$v0,32096($s0)
.L0d96500c:
    lbu	$a2,32202($s0)
    beqz	$a2,.L0d965020
    # Line 491
    nop	# was lw $t9, -31600($gp) # &__glCrmSetupPixelRenderOps
    jal	__glCrmSetupPixelRenderOps
    move	$a0,$s0
.L0d965020:
    lwc1	$f4,384($s0)
    lbu	$a3,3220($s0)
    trunc.w.s	$f4,$f4
    beqz	$a3,.L0d965290
    mfc1	$a0,$f4
    # Line 494
    lwc1	$f7,388($s0)
    lwc1	$f6,392($s0)
    lwc1	$f5,396($s0)
    trunc.w.s	$f7,$f7
    trunc.w.s	$f6,$f6
    trunc.w.s	$f5,$f5
    mfc1	$a7,$f7
    sll	$t1,$a0,0x18
    mfc1	$t0,$f6
    mfc1	$a6,$f5
    sll	$a7,$a7,0x10
    sll	$t0,$t0,0x8
    or	$a6,$a6,$t1
    or	$a7,$a7,$t0
    or	$a6,$a6,$a7
    sw	$a6,0($sp)
    lw	$a5,0($sp)
    sw	$a5,8400($s2)
    lw	$a4,0($sp)
    sw	$a4,8400($s7)
.L0d965084:
    # Line 501
    ld	$t1,32($sp)
    ld	$ra,120($sp)
    # Line 500
    lw	$a0,220($s4)
    # Line 501
    beq	$t1,$s6,.L0d96522c
    move	$t0,$t1
    lui	$a7,0x7
    lwc1	$f4,_lit_42800000
    ori	$a7,$a7,0xffff
    nop
    nop
    nop
.L0d9650b0:
    # Line 502
    beqz	$a0,.L0d965230
    # Line 524
    ld	$gp,104($sp)
    # Line 518
    addu	$a1,$s8,$t0
    # Line 504
    lw	$a6,204($s4)
    # Line 506
    sll	$t3,$t0,0x6
    and	$t3,$a7,$t3
    sw	$t3,8($sp)
    lw	$t2,8($sp)
    lw	$t1,8($sp)
    # Line 505
    move	$a5,$s5
    # Line 506
    sw	$t2,8324($s2)
    # Line 503
    addiu	$a0,$a0,-1
    # Line 506
    blez	$s1,.L0d965214
    sw	$t1,8324($s7)
    andi	$t8,$s1,0x1
    sra	$v1,$s1,0x1
    beqz	$t8,.L0d965154
    move	$a4,$zero
    # Line 509
    lw	$v0,31304($s0)
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f10
    cvt.s.l	$f10,$f10
    lwc1	$f11,0($s5)
    mul.s	$f10,$f10,$f11
    # Line 511
    sll	$at,$a6,0x6
    # Line 512
    mul.s	$f10,$f4,$f10
    # Line 511
    and	$at,$a7,$at
    sw	$at,12($sp)
    lw	$t9,12($sp)
    # Line 512
    cvt.d.s	$f10,$f10
    sdc1	$f10,16($sp)
    ldc1	$f9,16($sp)
    # Line 511
    sw	$t9,8320($s2)
    # Line 512
    trunc.l.d	$f9,$f9
    sdc1	$f9,24($sp)
    ldc1	$f8,24($sp)
    # Line 508
    li	$a4,1
    # Line 514
    addu	$a6,$s3,$a6
    # Line 509
    addiu	$a5,$s5,4
    # Line 512
    sdc1	$f8,10696($s2)
.L0d965154:
    beqz	$v1,.L0d965214
    nop
    nop
.L0d965160:
    # Line 509
    lw	$at,31304($s0)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f16
    cvt.s.l	$f16,$f16
    lwc1	$f17,0($a5)
    mul.s	$f16,$f16,$f17
    # Line 512
    mul.s	$f16,$f4,$f16
    # Line 511
    sll	$t9,$a6,0x6
    and	$t9,$a7,$t9
    sw	$t9,12($sp)
    # Line 512
    cvt.d.s	$f16,$f16
    # Line 511
    lw	$t8,12($sp)
    # Line 512
    sdc1	$f16,16($sp)
    ldc1	$f15,16($sp)
    trunc.l.d	$f15,$f15
    # Line 511
    sw	$t8,8320($s2)
    # Line 512
    sdc1	$f15,24($sp)
    ldc1	$f14,24($sp)
    sdc1	$f14,10696($s2)
    # Line 509
    lw	$t3,31304($s0)
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f13
    cvt.s.l	$f13,$f13
    lwc1	$f14,4($a5)
    mul.s	$f13,$f13,$f14
    # Line 514
    addu	$a6,$s3,$a6
    # Line 512
    mul.s	$f13,$f4,$f13
    # Line 511
    sll	$t2,$a6,0x6
    and	$t2,$a7,$t2
    sw	$t2,12($sp)
    # Line 512
    cvt.d.s	$f13,$f13
    # Line 511
    lw	$t1,12($sp)
    # Line 512
    sdc1	$f13,16($sp)
    ldc1	$f12,16($sp)
    trunc.l.d	$f12,$f12
    # Line 511
    sw	$t1,8320($s2)
    # Line 512
    sdc1	$f12,24($sp)
    # Line 508
    addiu	$a4,$a4,2
    # Line 512
    ldc1	$f11,24($sp)
    # Line 509
    addiu	$a5,$a5,8
    # Line 514
    addu	$a6,$s3,$a6
    # Line 508
    bne	$s1,$a4,.L0d965160
    # Line 512
    sdc1	$f11,10696($s2)
.L0d965214:
    # Line 508
    lbu	$v0,32209($s0)
    movz	$a1,$t0,$v0
    # Line 501
    addu	$t0,$s8,$a1
    # Line 517
    addiu	$v1,$a0,-1
    # Line 501
    bne	$s6,$t0,.L0d9650b0
    movn	$a0,$v1,$v0
.L0d96522c:
    # Line 524
    ld	$gp,104($sp)
.L0d965230:
    ld	$s1,56($sp)
    ld	$s2,112($sp)
    ld	$s3,40($sp)
    # Line 521
    sw	$a0,220($s4)
    # Line 522
    sw	$s6,208($s4)
    # Line 524
    ld	$s4,96($sp)
    ld	$s5,80($sp)
    ld	$s6,48($sp)
    ld	$s7,72($sp)
    ld	$s8,64($sp)
    # Line 523
    li	$a2,0x8080
    addu	$a2,$a2,$s0
    # Line 524
    ld	$s0,88($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 523
    sw	$zero,0($a2)
.L0d965270:
    # Line 524
    ld	$gp,104($sp)
    ld	$s0,88($sp)
    ld	$s2,112($sp)
    ld	$s4,96($sp)
    ld	$s5,80($sp)
    ld	$s7,72($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d965290:
    # Line 498
    swc1	$f4,4($sp)
    lw	$a4,4($sp)
    sw	$a4,8400($s2)
    lw	$a3,4($sp)
    b	.L0d965084
    sw	$a3,8400($s7)
.end __glCrmSpanRenderDepth2

# Function: __glCrmSpanRenderStencil
# Declared: Line 527 (Source lines: 529-613)
# Address: 0x0d9652b0 - 0x0d96568c (Size: 988 bytes, Frame: 240)
.globl __glCrmSpanRenderStencil
.ent __glCrmSpanRenderStencil
__glCrmSpanRenderStencil:
    # Line 529
    addiu	$sp,$sp,-624
    sd	$s2,560($sp)
    sd	$s3,552($sp)
    sd	$s6,544($sp)
    sd	$s4,536($sp)
    sd	$s8,568($sp)
    lbu	$at,30652($a0)
    move	$s8,$a1
    sd	$s1,576($sp)
    lui	$v0,0xf
    move	$s1,$a0
    sd	$s5,600($sp)
    addiu	$v0,$v0,-17700
    sd	$gp,584($sp)
    beqz	$at,.L0d96530c
    addu	$gp,$t9,$v0
    # Line 546
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,15792
    sd	$ra,512($sp)
    bal __glCrmBeginPoints
    la	$a3,__glCrmSpanRenderStencil
    b	.L0d96561c
    ld	$ra,512($sp)
.L0d96530c:
    # Line 552
    lwc1	$f4,164($a1)
    lwc1	$f5,200($a1)
    add.s	$f4,$f4,$f5
    trunc.w.s	$f4,$f4
    # Line 550
    lw	$s3,236($a1)
    # Line 551
    lw	$s4,208($a1)
    # Line 552
    mfc1	$v0,$f4
    slti	$t8,$s3,1
    # Line 554
    lw	$s5,3248($a0)
    # Line 555
    subu	$t9,$v0,$s4
    subu	$s4,$s4,$v0
    # Line 554
    li	$s6,1
    movz	$s4,$t9,$t8
    sllv	$s5,$s6,$s5
    # Line 553
    lw	$s2,184($a1)
    # Line 555
    blez	$s4,.L0d96561c
    # Line 554
    addiu	$s5,$s5,-1
    # Line 557
    lh	$t8,1674($a0)
    beqz	$t8,.L0d965644
    nop
    # Line 566
    lw	$a0,312($a1)
    sd	$v0,528($sp)
    sd	$s0,520($sp)
    blez	$s2,.L0d96567c
    sd	$s7,608($sp)
    andi	$v0,$s2,0x7
    move	$s0,$zero
    beqz	$v0,.L0d96539c
    move	$s7,$zero
.L0d965380:
    # Line 568
    lh	$a5,0($a0)
    # Line 567
    addiu	$s0,$s0,1
    addiu	$v0,$v0,-1
    # Line 568
    addiu	$a0,$a0,2
    addu	$a5,$a5,$s7
    bnez	$v0,.L0d965380
    move	$s7,$a5
.L0d96539c:
    sra	$a6,$s2,0x3
    beqz	$a6,.L0d965404
    move	$v0,$s7
    nop
    nop
.L0d9653b0:
    lh	$t8,0($a0)
    lh	$t3,2($a0)
    lh	$t2,4($a0)
    addu	$t8,$t8,$v0
    lh	$t1,6($a0)
    addu	$t3,$t3,$t8
    lh	$t0,8($a0)
    addu	$t2,$t2,$t3
    lh	$a7,10($a0)
    addu	$t1,$t1,$t2
    lh	$a6,12($a0)
    addu	$t0,$t0,$t1
    lh	$a5,14($a0)
    addu	$a7,$a7,$t0
    # Line 567
    addiu	$s0,$s0,8
    # Line 568
    addu	$a6,$a6,$a7
    addiu	$a0,$a0,16
    addu	$a5,$a5,$a6
    # Line 567
    bne	$s2,$s0,.L0d9653b0
    # Line 568
    move	$v0,$a5
    move	$s7,$a5
.L0d965404:
    sd	$a2,616($sp)
    # Line 570
    negu	$at,$a5
    slti	$t9,$a5,0
    sd	$ra,512($sp)
    movn	$s7,$at,$t9
.L0d965418:
    # Line 572
    lw	$t9,32324($s1)
    ld	$s0,616($sp)
    sll	$a1,$s7,0x2
    move	$a0,$s1
    jal	sub_0d960000
    sd	$a1,592($sp)
    ld	$a1,592($sp)
    # Line 573
    move	$a5,$v0
    # Line 574
    move	$a2,$s0
    # Line 575
    blez	$s2,.L0d9654f8
    lw	$a0,312($s8)
    b	.L0d9654a4
    move	$s0,$zero
    nop
.L0d965450:
    addiu	$t0,$t0,-1
    # Line 580
    addiu	$a6,$a6,-1
    sw	$a7,0($a5)
    bnez	$t0,.L0d965450
    addiu	$a5,$a5,4
.L0d965464:
    beqz	$v1,.L0d96549c
    nop
    nop
.L0d965470:
    sw	$a7,0($a5)
    sw	$a7,4($a5)
    sw	$a7,8($a5)
    sw	$a7,12($a5)
    sw	$a7,16($a5)
    sw	$a7,20($a5)
    addiu	$a6,$a6,-8
    sw	$a7,24($a5)
    sw	$a7,28($a5)
    bgtz	$a6,.L0d965470
    addiu	$a5,$a5,32
.L0d96549c:
    # Line 576
    beq	$s2,$s0,.L0d9654f8
    nop
.L0d9654a4:
    # Line 579
    lwc1	$f6,0($a2)
    # Line 577
    lh	$t1,0($a0)
    # Line 579
    trunc.w.s	$f6,$f6
    # Line 578
    negu	$a6,$t1
    slti	$t0,$t1,0
    # Line 579
    addiu	$a2,$a2,4
    movz	$a6,$t1,$t0
    mfc1	$a7,$f6
    # Line 577
    addiu	$a0,$a0,2
    # Line 576
    addiu	$s0,$s0,1
    # Line 579
    and	$a7,$s5,$a7
    # Line 580
    blez	$a6,.L0d96549c
    # Line 579
    sll	$a7,$a7,0x18
    # Line 580
    li	$t1,1
    slt	$t2,$a6,$t1
    movz	$t1,$a6,$t2
    andi	$t0,$t1,0x7
    bnez	$t0,.L0d965450
    sra	$v1,$t1,0x3
    b	.L0d965464
    nop
.L0d9654f8:
    # Line 582
    lw	$v1,204($s8)
    sw	$v1,204($sp)
    # Line 583
    lw	$at,208($s8)
    # Line 590
    li	$ra,6401
    sw	$ra,0($sp)
    # Line 589
    sw	$a1,16($sp)
    # Line 588
    sw	$v0,8($sp)
    # Line 587
    sw	$v0,12($sp)
    # Line 586
    sw	$s6,172($sp)
    # Line 585
    sw	$s6,220($sp)
    # Line 584
    sw	$s7,216($sp)
    # Line 583
    sw	$at,208($sp)
    # Line 596
    lbu	$t9,32202($s1)
    # Line 598
    lw	$t3,32292($s1)
    # Line 602
    li	$s2,2
    # Line 597
    sb	$zero,32202($s1)
    # Line 598
    li	$t8,-241
    # Line 602
    move	$s0,$zero
    # Line 595
    sw	$zero,32224($s1)
    # Line 598
    and	$t3,$t3,$t8
    # Line 593
    sb	$s6,32206($s1)
    # Line 599
    li	$t8,-769
    # Line 598
    ori	$t3,$t3,0x20
    # Line 596
    sd	$t9,504($sp)
    # Line 594
    addiu	$t9,$s1,31108
    # Line 599
    and	$t3,$t3,$t8
    # Line 594
    sw	$t9,32300($s1)
    # Line 600
    li	$t8,-13
    # Line 599
    ori	$t3,$t3,0x200
    # Line 602
    addu	$ra,$s3,$s3
    # Line 601
    lbu	$t9,32209($s1)
    # Line 600
    and	$t3,$t3,$t8
    # Line 592
    sw	$s6,32216($s1)
    # Line 601
    li	$t8,-3
    # Line 600
    ori	$t3,$t3,0x8
    movn	$s3,$ra,$t9
    # Line 601
    and	$t3,$t3,$t8
    sw	$t3,32292($s1)
.L0d965590:
    # Line 605
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
    move	$a0,$s1
    jal	crmDrawPixelsXfer
    addiu	$a1,$sp,0
    # Line 606
    lw	$a3,208($sp)
    addu	$a3,$s3,$a3
    sw	$a3,208($sp)
    # Line 604
    lbu	$a2,32209($s1)
    move	$a1,$s6
    movn	$a1,$s2,$a2
    addu	$s0,$s0,$a1
    slt	$a0,$s0,$s4
    bnez	$a0,.L0d965590
    ld	$s5,600($sp)
    ld	$s7,608($sp)
    # Line 613
    ld	$gp,584($sp)
    ld	$s0,520($sp)
    ld	$s2,560($sp)
    ld	$s3,552($sp)
    ld	$s6,544($sp)
    # Line 612
    ld	$a5,528($sp)
    # Line 608
    sb	$zero,32206($s1)
    # Line 609
    sw	$zero,32216($s1)
    # Line 610
    ld	$a6,504($sp)
    sb	$a6,32202($s1)
    # Line 613
    ld	$s1,576($sp)
    # Line 612
    sw	$a5,208($s8)
    # Line 611
    lw	$a4,220($s8)
    # Line 613
    ld	$ra,512($sp)
    # Line 611
    subu	$a4,$a4,$s4
    # Line 613
    ld	$s4,536($sp)
    # Line 611
    sw	$a4,220($s8)
    # Line 613
    ld	$s8,568($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0d96561c:
    ld	$s2,560($sp)
    ld	$s3,552($sp)
    ld	$s8,568($sp)
    ld	$s6,544($sp)
    ld	$s4,536($sp)
    ld	$s1,576($sp)
    ld	$s5,600($sp)
    ld	$gp,584($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0d965644:
    # Line 561
    swc1	$f4,208($a1)
    ld	$s5,600($sp)
    # Line 613
    ld	$gp,584($sp)
    ld	$s1,576($sp)
    ld	$s2,560($sp)
    ld	$s3,552($sp)
    ld	$s6,544($sp)
    # Line 560
    lw	$a7,220($a1)
    # Line 613
    ld	$s8,568($sp)
    # Line 560
    subu	$a7,$a7,$s4
    sw	$a7,220($a1)
    # Line 613
    ld	$s4,536($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0d96567c:
    sd	$a2,616($sp)
    # Line 570
    move	$s7,$zero
    b	.L0d965418
    sd	$ra,512($sp)
.end __glCrmSpanRenderStencil

# Function: __glCrmSpanRenderStencil2
# Declared: Line 616 (Source lines: 618-691)
# Address: 0x0d965690 - 0x0d965984 (Size: 756 bytes, Frame: 240)
.globl __glCrmSpanRenderStencil2
.ent __glCrmSpanRenderStencil2
__glCrmSpanRenderStencil2:
    # Line 618
    addiu	$sp,$sp,-624
    sd	$s2,568($sp)
    sd	$s3,552($sp)
    sd	$s7,608($sp)
    sd	$s0,584($sp)
    sd	$s6,576($sp)
    move	$v0,$a2
    move	$s6,$a1
    lbu	$at,30652($a0)
    move	$s0,$a0
    sd	$s1,536($sp)
    lui	$v1,0xf
    sd	$s4,544($sp)
    # Line 642
    li	$s4,1
    # Line 618
    addiu	$v1,$v1,-18692
    sd	$gp,592($sp)
    beqz	$at,.L0d9656f4
    addu	$gp,$t9,$v1
    # Line 634
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,15792
    sd	$ra,512($sp)
    bal __glCrmBeginPoints
    la	$a3,__glCrmSpanRenderStencil2
    b	.L0d965948
    ld	$ra,512($sp)
.L0d9656f4:
    # Line 640
    lwc1	$f5,200($a1)
    lwc1	$f4,164($a1)
    add.s	$f4,$f4,$f5
    trunc.w.s	$f4,$f4
    # Line 638
    lw	$s2,236($a1)
    # Line 639
    lw	$s3,208($a1)
    # Line 640
    mfc1	$a0,$f4
    slti	$s7,$s2,1
    # Line 642
    lw	$s1,3248($s0)
    # Line 643
    subu	$t8,$a0,$s3
    subu	$s3,$s3,$a0
    movz	$s3,$t8,$s7
    # Line 642
    sllv	$s1,$s4,$s1
    addiu	$s1,$s1,-1
    # Line 643
    blez	$s3,.L0d965948
    # Line 641
    lw	$s7,184($a1)
    # Line 646
    lh	$t8,1674($s0)
    sd	$a0,528($sp)
    beqz	$t8,.L0d965970
    sd	$a2,560($sp)
    # Line 654
    lw	$t9,32324($s0)
    sll	$a1,$s7,0x2
    sd	$ra,512($sp)
    move	$a0,$s0
    jal	sub_0d960000
    sd	$a1,600($sp)
    andi	$a6,$s7,0x3
    ld	$a1,600($sp)
    sra	$ra,$s7,0x2
    # Line 656
    move	$a0,$v0
    blez	$s7,.L0d965820
    ld	$a2,560($sp)
    addu	$a5,$v0,$a1
    beqz	$a6,.L0d9657a8
    nop
.L0d965780:
    # Line 658
    lwc1	$f6,0($a2)
    trunc.w.s	$f6,$f6
    mfc1	$t9,$f6
    addiu	$a6,$a6,-1
    and	$t9,$s1,$t9
    # Line 657
    addiu	$a0,$a0,4
    # Line 658
    sll	$t9,$t9,0x18
    addiu	$a2,$a2,4
    bnez	$a6,.L0d965780
    sw	$t9,-4($a0)
.L0d9657a8:
    beqz	$ra,.L0d96581c
    nop
.L0d9657b0:
    lwc1	$f10,0($a2)
    trunc.w.s	$f10,$f10
    mfc1	$a4,$f10
    and	$a4,$s1,$a4
    sll	$a4,$a4,0x18
    sw	$a4,0($a0)
    lwc1	$f9,4($a2)
    trunc.w.s	$f9,$f9
    mfc1	$a3,$f9
    and	$a3,$s1,$a3
    sll	$a3,$a3,0x18
    sw	$a3,4($a0)
    lwc1	$f8,8($a2)
    trunc.w.s	$f8,$f8
    mfc1	$v1,$f8
    and	$v1,$s1,$v1
    sll	$v1,$v1,0x18
    sw	$v1,8($a0)
    lwc1	$f7,12($a2)
    trunc.w.s	$f7,$f7
    mfc1	$at,$f7
    # Line 657
    addiu	$a0,$a0,16
    # Line 658
    and	$at,$s1,$at
    sll	$at,$at,0x18
    addiu	$a2,$a2,16
    # Line 657
    bne	$a0,$a5,.L0d9657b0
    # Line 658
    sw	$at,-4($a0)
.L0d96581c:
    sd	$s5,520($sp)
.L0d965820:
    # Line 668
    li	$t0,6401
    sd	$s5,520($sp)
    # Line 660
    lw	$t2,204($s6)
    sw	$t2,204($sp)
    # Line 661
    lw	$t1,208($s6)
    # Line 662
    sw	$s7,216($sp)
    # Line 663
    sw	$s4,220($sp)
    # Line 664
    sw	$s4,172($sp)
    # Line 665
    sw	$v0,12($sp)
    # Line 666
    sw	$v0,8($sp)
    # Line 667
    sw	$a1,16($sp)
    # Line 668
    sw	$t0,0($sp)
    # Line 661
    sw	$t1,208($sp)
    # Line 674
    lbu	$a7,32202($s0)
    # Line 676
    lw	$a5,32292($s0)
    # Line 680
    li	$s5,2
    # Line 675
    sb	$zero,32202($s0)
    # Line 676
    li	$a6,-241
    # Line 680
    move	$s1,$zero
    # Line 673
    sw	$zero,32224($s0)
    # Line 676
    and	$a5,$a5,$a6
    # Line 671
    sb	$s4,32206($s0)
    # Line 677
    li	$a6,-769
    # Line 676
    ori	$a5,$a5,0x20
    # Line 674
    sd	$a7,504($sp)
    # Line 672
    addiu	$a7,$s0,31108
    # Line 677
    and	$a5,$a5,$a6
    # Line 672
    sw	$a7,32300($s0)
    # Line 678
    li	$a6,-13
    # Line 677
    ori	$a5,$a5,0x200
    # Line 680
    addu	$t0,$s2,$s2
    # Line 679
    lbu	$a7,32209($s0)
    # Line 678
    and	$a5,$a5,$a6
    # Line 670
    sw	$s4,32216($s0)
    # Line 679
    li	$a6,-3
    # Line 678
    ori	$a5,$a5,0x8
    movn	$s2,$t0,$a7
    # Line 679
    and	$a5,$a5,$a6
    sw	$a5,32292($s0)
    nop
.L0d9658c0:
    # Line 683
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
    move	$a0,$s0
    jal	crmDrawPixelsXfer
    addiu	$a1,$sp,0
    # Line 684
    lw	$ra,208($sp)
    addu	$ra,$s2,$ra
    sw	$ra,208($sp)
    # Line 682
    lbu	$t9,32209($s0)
    move	$t8,$s4
    movn	$t8,$s5,$t9
    addu	$s1,$s1,$t8
    slt	$t3,$s1,$s3
    bnez	$t3,.L0d9658c0
    ld	$s7,608($sp)
    # Line 691
    ld	$gp,592($sp)
    ld	$s1,536($sp)
    ld	$s2,568($sp)
    ld	$s4,544($sp)
    ld	$s5,520($sp)
    # Line 690
    ld	$v0,528($sp)
    # Line 686
    sb	$zero,32206($s0)
    # Line 687
    sw	$zero,32216($s0)
    # Line 688
    ld	$v1,504($sp)
    sb	$v1,32202($s0)
    # Line 691
    ld	$s0,584($sp)
    # Line 690
    sw	$v0,208($s6)
    # Line 689
    lw	$at,220($s6)
    # Line 691
    ld	$ra,512($sp)
    # Line 689
    subu	$at,$at,$s3
    # Line 691
    ld	$s3,552($sp)
    # Line 689
    sw	$at,220($s6)
    # Line 691
    ld	$s6,576($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0d965948:
    ld	$s2,568($sp)
    ld	$s6,576($sp)
    ld	$s3,552($sp)
    ld	$s4,544($sp)
    ld	$s0,584($sp)
    ld	$s7,608($sp)
    ld	$s1,536($sp)
    ld	$gp,592($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0d965970:
    # Line 649
    lw	$a0,220($a1)
    # Line 650
    swc1	$f4,208($a1)
    # Line 649
    subu	$a0,$a0,$s3
    # Line 650
    b	.L0d965948
    # Line 649
    sw	$a0,220($a1)
.end __glCrmSpanRenderStencil2

# Function: __glCrmSpanReadColor
# Declared: Line 703 (Source lines: 705-740)
# Address: 0x0d965990 - 0x0d965c14 (Size: 644 bytes, Frame: 224)
.globl __glCrmSpanReadColor
.ent __glCrmSpanReadColor
__glCrmSpanReadColor:
    # Line 714
    lw	$a7,312($a1)
    # Line 705
    addiu	$sp,$sp,-96
    sd	$s6,40($sp)
    sd	$s0,24($sp)
    sd	$s7,32($sp)
    # Line 715
    lbu	$v0,3220($a0)
    move	$a6,$zero
    # Line 705
    move	$s7,$a1
    sd	$s2,0($sp)
    move	$s0,$a2
    move	$s6,$a0
    sd	$s4,16($sp)
    lui	$at,0xf
    # Line 715
    li	$s2,1
    # Line 712
    lw	$s4,180($a1)
    # Line 705
    sd	$s3,8($sp)
    # Line 715
    li	$s3,4
    # Line 705
    addiu	$at,$at,-19460
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 715
    movn	$s2,$s3,$v0
    sd	$s5,64($sp)
    blez	$s4,.L0d965c08
    andi	$v0,$s4,0x7
    move	$s5,$zero
    beqz	$v0,.L0d965a14
    sra	$a0,$s4,0x3
.L0d9659fc:
    addiu	$v0,$v0,-1
    # Line 719
    lh	$v1,0($a7)
    # Line 718
    addiu	$a6,$a6,1
    # Line 719
    addiu	$a7,$a7,2
    bnez	$v0,.L0d9659fc
    addu	$s5,$v1,$s5
.L0d965a14:
    beqz	$a0,.L0d965a70
    move	$a4,$s5
    nop
.L0d965a20:
    lh	$t9,0($a7)
    lh	$t8,2($a7)
    lh	$t3,4($a7)
    addu	$t9,$t9,$a4
    lh	$t2,6($a7)
    addu	$t8,$t8,$t9
    lh	$t1,8($a7)
    addu	$t3,$t3,$t8
    lh	$t0,10($a7)
    addu	$t2,$t2,$t3
    lh	$a5,12($a7)
    addu	$t1,$t1,$t2
    # Line 718
    addiu	$a6,$a6,8
    # Line 719
    lh	$a4,14($a7)
    addu	$t0,$t0,$t1
    addiu	$a7,$a7,16
    addu	$a5,$a5,$t0
    # Line 718
    bne	$s4,$a6,.L0d965a20
    # Line 719
    addu	$a4,$a4,$a5
    move	$s5,$a4
.L0d965a70:
    sd	$ra,72($sp)
.L0d965a74:
    # Line 721
    mult	$s2,$s5
    lw	$t9,0($s6)
    move	$a0,$s6
    sd	$s1,56($sp)
    sd	$s8,80($sp)
    mflo	$a1
    jalr	$t9
    sll	$a1,$a1,0x2
    # Line 724
    lwc1	$f1,192($s7)
    lwc1	$f0,188($s7)
    lw	$t9,30840($s6)
    trunc.w.s	$f1,$f1
    # Line 721
    move	$s8,$v0
    # Line 724
    trunc.w.s	$f0,$f0
    # Line 721
    move	$s1,$v0
    # Line 724
    move	$a4,$s5
    mfc1	$a2,$f1
    move	$a3,$v0
    lw	$a0,11764($s6)
    jalr	$t9
    mfc1	$a1,$f0
    andi	$a2,$s4,0x1
    # Line 728
    blez	$s4,.L0d965b18
    lw	$a7,312($s7)
    sll	$a4,$s2,0x2
    move	$a6,$zero
    beqz	$a2,.L0d965b10
    sra	$t0,$s4,0x1
    # Line 730
    lwc1	$f2,0($s1)
    # Line 729
    addiu	$a6,$a6,1
    # Line 730
    beq	$s2,$s3,.L0d965bec
    swc1	$f2,0($s0)
.L0d965af4:
    # Line 736
    lh	$a5,0($a7)
    mult	$a5,$s2
    mflo	$a3
    # Line 737
    addu	$s0,$a4,$s0
    # Line 736
    sll	$a3,$a3,0x2
    addiu	$a7,$a7,2
    addu	$s1,$s1,$a3
.L0d965b10:
    bnezl	$t0,.L0d965ba8
    # Line 730
    lwc1	$f4,0($s1)
.L0d965b18:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    # Line 739
    lw	$t9,12($s6)
    ld	$s1,56($sp)
    ld	$s5,64($sp)
    move	$a0,$s6
    ld	$s7,32($sp)
    jalr	$t9
    move	$a1,$s8
    ld	$ra,72($sp)
    ld	$s6,40($sp)
    ld	$s8,80($sp)
    # Line 740
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
    nop
.L0d965b60:
    # Line 736
    lh	$t2,0($a7)
    mult	$t2,$s2
    mflo	$t1
    sll	$t1,$t1,0x2
    addu	$s1,$s1,$t1
    # Line 730
    lwc1	$f3,0($s1)
    # Line 737
    addu	$s0,$a4,$s0
    # Line 730
    beq	$s2,$s3,.L0d965bd0
    swc1	$f3,0($s0)
.L0d965b84:
    # Line 736
    lh	$t8,2($a7)
    mult	$t8,$s2
    # Line 737
    addu	$s0,$a4,$s0
    # Line 736
    mflo	$t3
    addiu	$a7,$a7,4
    sll	$t3,$t3,0x2
    # Line 729
    beq	$s4,$a6,.L0d965b18
    # Line 736
    addu	$s1,$s1,$t3
    # Line 730
    lwc1	$f4,0($s1)
.L0d965ba8:
    # Line 729
    addiu	$a6,$a6,2
    # Line 730
    bne	$s2,$s3,.L0d965b60
    swc1	$f4,0($s0)
    # Line 732
    lwc1	$f7,4($s1)
    swc1	$f7,4($s0)
    # Line 733
    lwc1	$f6,8($s1)
    swc1	$f6,8($s0)
    # Line 734
    lwc1	$f5,12($s1)
    b	.L0d965b60
    swc1	$f5,12($s0)
.L0d965bd0:
    # Line 732
    lwc1	$f10,4($s1)
    swc1	$f10,4($s0)
    # Line 733
    lwc1	$f9,8($s1)
    swc1	$f9,8($s0)
    # Line 734
    lwc1	$f8,12($s1)
    b	.L0d965b84
    swc1	$f8,12($s0)
.L0d965bec:
    # Line 732
    lwc1	$f13,4($s1)
    swc1	$f13,4($s0)
    # Line 733
    lwc1	$f12,8($s1)
    swc1	$f12,8($s0)
    # Line 734
    lwc1	$f11,12($s1)
    b	.L0d965af4
    swc1	$f11,12($s0)
.L0d965c08:
    # Line 718
    move	$s5,$zero
    b	.L0d965a74
    sd	$ra,72($sp)
.end __glCrmSpanReadColor

# Function: __glCrmSpanReadColor2
# Declared: Line 743 (Source lines: 745-749)
# Address: 0x0d965c20 - 0x0d965c78 (Size: 88 bytes, Frame: 16)
.globl __glCrmSpanReadColor2
.ent __glCrmSpanReadColor2
__glCrmSpanReadColor2:
    # Line 746
    lwc1	$f1,188($a1)
    # Line 745
    addiu	$sp,$sp,-16
    # Line 746
    lwc1	$f0,192($a1)
    # Line 745
    lui	$a6,0xf
    sd	$gp,8($sp)
    addiu	$a6,$a6,-20116
    move	$a4,$a1
    addu	$gp,$t9,$a6
    # Line 746
    lw	$t9,30840($a0)
    trunc.w.s	$f1,$f1
    lw	$a4,168($a4)
    trunc.w.s	$f0,$f0
    # Line 745
    sd	$ra,0($sp)
    # Line 746
    mfc1	$a1,$f1
    # Line 745
    move	$a3,$a2
    # Line 746
    lw	$a0,11764($a0)
    jalr	$t9
    mfc1	$a2,$f0
    ld	$ra,0($sp)
    # Line 749
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glCrmSpanReadColor2

# Function: __glCrmSpanReadDepth
# Declared: Line 752 (Source lines: 754-811)
# Address: 0x0d965c80 - 0x0d965fb4 (Size: 820 bytes, Frame: 176)
.globl __glCrmSpanReadDepth
.ent __glCrmSpanReadDepth
__glCrmSpanReadDepth:
    # Line 769
    lw	$a5,312($a1)
    # Line 754
    addiu	$sp,$sp,-560
    sd	$s5,528($sp)
    sd	$s1,520($sp)
    # Line 773
    move	$a4,$zero
    # Line 754
    move	$s5,$a2
    # Line 770
    lw	$s1,168($a1)
    # Line 754
    sd	$s2,504($sp)
    move	$s2,$a1
    lui	$at,0xf
    sd	$s0,512($sp)
    move	$s0,$a0
    addiu	$at,$at,-20212
    sd	$gp,536($sp)
    # Line 770
    blez	$s1,.L0d965fa4
    # Line 754
    addu	$gp,$t9,$at
    sra	$v1,$s1,0x3
    andi	$a0,$s1,0x7
    # Line 770
    move	$a6,$zero
    beqz	$a0,.L0d965cec
    move	$a4,$zero
.L0d965cd4:
    addiu	$a0,$a0,-1
    # Line 774
    lh	$v0,0($a5)
    # Line 773
    addiu	$a6,$a6,1
    # Line 774
    addiu	$a5,$a5,2
    bnez	$a0,.L0d965cd4
    addu	$a4,$v0,$a4
.L0d965cec:
    beqz	$v1,.L0d965d50
    move	$a0,$a4
    nop
    nop
    nop
.L0d965d00:
    lh	$t1,0($a5)
    lh	$t0,2($a5)
    lh	$a7,4($a5)
    addu	$t1,$t1,$a0
    lh	$a4,6($a5)
    addu	$t0,$t0,$t1
    lh	$a3,8($a5)
    addu	$a7,$a7,$t0
    lh	$a2,10($a5)
    addu	$a4,$a4,$a7
    lh	$a1,12($a5)
    addu	$a3,$a3,$a4
    # Line 773
    addiu	$a6,$a6,8
    # Line 774
    lh	$a0,14($a5)
    addu	$a2,$a2,$a3
    addiu	$a5,$a5,16
    addu	$a1,$a1,$a2
    # Line 773
    bne	$s1,$a6,.L0d965d00
    # Line 774
    addu	$a0,$a0,$a1
    move	$a4,$a0
.L0d965d50:
    sd	$ra,544($sp)
.L0d965d54:
    # Line 776
    lwc1	$f1,188($s2)
    swc1	$f1,188($sp)
    # Line 777
    lwc1	$f0,192($s2)
    # Line 780
    li	$ra,6402
    sw	$ra,80($sp)
    # Line 779
    li	$t3,1
    sw	$t3,172($sp)
    # Line 778
    sw	$a4,168($sp)
    # Line 788
    # lw $t9, -31588($gp) # &crmReadPixelsXfer
    # Line 777
    swc1	$f0,192($sp)
    # Line 786
    addiu	$t8,$s0,31228
    sw	$t8,32296($s0)
    # Line 785
    sw	$zero,32344($s0)
    # Line 788
    addiu	$a1,$sp,0
    move	$a0,$s0
    # Line 784
    sb	$t3,32206($s0)
    # Line 783
    li	$t2,3074
    # Line 788
    jal	crmReadPixelsXfer
    # Line 783
    sw	$t2,32216($s0)
    # Line 795
    lw	$v0,31304($s0)
    ld	$ra,544($sp)
    # Line 791
    sw	$zero,32216($s0)
    # Line 795
    dsll32	$v0,$v0,0x0
    # Line 790
    sb	$zero,32206($s0)
    # Line 795
    dsrl32	$v0,$v0,0x0
    # Line 793
    lw	$a4,88($sp)
    # Line 795
    dmtc1	$v0,$f5
    # Line 803
    lw	$t1,31308($s0)
    # Line 796
    lbu	$v1,31324($s0)
    # Line 795
    lwc1	$f4,3544($s0)
    cvt.s.l	$f5,$f5
    # Line 796
    lw	$at,31328($s0)
    # Line 794
    move	$a2,$s5
    ld	$s5,528($sp)
    # Line 796
    li	$a1,1
    # Line 811
    ld	$gp,536($sp)
    # Line 798
    lw	$a5,312($s2)
    # Line 804
    addiu	$t3,$a2,4
    # Line 796
    beqz	$at,.L0d965dfc
    # Line 795
    div.s	$f4,$f4,$f5
    # Line 796
    beqz	$v1,.L0d965e00
    nop
.L0d965dfc:
    move	$a1,$zero
.L0d965e00:
    # Line 798
    blez	$s1,.L0d965ea0
    ld	$s2,504($sp)
    andi	$a7,$a1,0xff
    andi	$a3,$s1,0x1
    sra	$v0,$s1,0x1
    move	$a6,$zero
    beqz	$a3,.L0d965e94
    lui	$a0,0xff00
    # Line 801
    lh	$t0,0($a5)
    # Line 808
    addiu	$t8,$a2,4
    # Line 801
    addiu	$a5,$a5,2
    # Line 799
    addiu	$a6,$a6,1
    # Line 801
    sll	$t0,$t0,0x2
    # Line 800
    lw	$a1,0($a4)
    # Line 803
    beqz	$a7,.L0d965e60
    # Line 801
    addu	$a4,$a4,$t0
    # Line 803
    and	$t2,$a0,$a1
    beq	$t1,$t2,.L0d965e60
    nop
    # Line 804
    ldc1	$f6,1640($s0)
    cvt.s.d	$f6,$f6
    move	$a2,$t3
    b	.L0d965e94
    swc1	$f6,-4($t3)
.L0d965e60:
    # Line 806
    lw	$at,31320($s0)
    and	$at,$at,$a1
    # Line 808
    srl	$t9,$at,0x12
    sll	$at,$at,0x6
    andi	$t9,$t9,0x3f
    or	$t9,$t9,$at
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f7
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f4
    move	$a2,$t8
    swc1	$f7,-4($t8)
.L0d965e94:
    bnez	$v0,.L0d965fac
    # Line 804
    addiu	$t8,$a2,4
.L0d965e9c:
    ld	$s2,504($sp)
.L0d965ea0:
    ld	$s0,512($sp)
    ld	$s1,520($sp)
    # Line 811
    jr	$ra
    addiu	$sp,$sp,560
.L0d965eb0:
    # Line 806
    lw	$t0,31320($s0)
    and	$t0,$t0,$a1
    # Line 808
    srl	$a3,$t0,0x12
    sll	$t0,$t0,0x6
    andi	$a3,$a3,0x3f
    or	$a3,$a3,$t0
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f8
    cvt.s.l	$f8,$f8
    addiu	$v1,$a2,4
    mul.s	$f8,$f8,$f4
    move	$a2,$v1
    swc1	$f8,-4($v1)
.L0d965ee8:
    # Line 799
    beq	$s1,$a6,.L0d965e9c
    # Line 804
    addiu	$t8,$a2,4
    # Line 808
    addiu	$t9,$a2,4
.L0d965ef4:
    # Line 801
    lh	$t1,0($a5)
    # Line 799
    addiu	$a6,$a6,2
    # Line 801
    sll	$t1,$t1,0x2
    # Line 800
    lw	$a1,0($a4)
    # Line 803
    beqz	$a7,.L0d965f30
    # Line 801
    addu	$a4,$a4,$t1
    # Line 803
    and	$t3,$a0,$a1
    lw	$t2,31308($s0)
    beq	$t2,$t3,.L0d965f30
    nop
    # Line 804
    ldc1	$f9,1640($s0)
    cvt.s.d	$f9,$f9
    move	$a2,$t8
    b	.L0d965f64
    swc1	$f9,-4($t8)
.L0d965f30:
    # Line 806
    lw	$v0,31320($s0)
    and	$v0,$v0,$a1
    # Line 808
    srl	$at,$v0,0x12
    sll	$v0,$v0,0x6
    andi	$at,$at,0x3f
    or	$at,$at,$v0
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f10
    cvt.s.l	$f10,$f10
    mul.s	$f10,$f10,$f4
    move	$a2,$t9
    swc1	$f10,-4($t9)
.L0d965f64:
    # Line 801
    lh	$v1,2($a5)
    addiu	$a5,$a5,4
    # Line 804
    addiu	$t1,$a2,4
    # Line 801
    sll	$v1,$v1,0x2
    # Line 800
    lw	$a1,0($a4)
    # Line 803
    beqz	$a7,.L0d965eb0
    # Line 801
    addu	$a4,$a4,$v1
    # Line 803
    and	$t0,$a0,$a1
    lw	$a3,31308($s0)
    beq	$a3,$t0,.L0d965eb0
    nop
    # Line 804
    ldc1	$f11,1640($s0)
    cvt.s.d	$f11,$f11
    move	$a2,$t1
    b	.L0d965ee8
    swc1	$f11,-4($t1)
.L0d965fa4:
    b	.L0d965d54
    sd	$ra,544($sp)
.L0d965fac:
    b	.L0d965ef4
    # Line 808
    addiu	$t9,$a2,4
.end __glCrmSpanReadDepth

# Function: __glCrmSpanReadDepth2
# Declared: Line 814 (Source lines: 816-864)
# Address: 0x0d965fc0 - 0x0d966218 (Size: 600 bytes, Frame: 160)
.globl __glCrmSpanReadDepth2
.ent __glCrmSpanReadDepth2
__glCrmSpanReadDepth2:
    # Line 816
    addiu	$sp,$sp,-544
    sd	$ra,520($sp)
    sd	$s0,504($sp)
    # Line 831
    lwc1	$f1,188($a1)
    # Line 816
    sd	$s7,528($sp)
    # Line 831
    swc1	$f1,188($sp)
    # Line 832
    lwc1	$f0,192($a1)
    # Line 816
    sd	$s1,512($sp)
    # Line 832
    swc1	$f0,192($sp)
    # Line 833
    lw	$s1,168($a1)
    # Line 835
    li	$a1,6402
    sw	$a1,80($sp)
    # Line 834
    li	$v0,1
    sw	$v0,172($sp)
    sd	$gp,536($sp)
    # Line 816
    lui	$v1,0xf
    # Line 833
    sw	$s1,168($sp)
    # Line 816
    addiu	$v1,$v1,-21044
    # Line 840
    sw	$zero,32344($a0)
    # Line 816
    addu	$gp,$t9,$v1
    # Line 843
    # lw $t9, -31588($gp) # &crmReadPixelsXfer
    # Line 838
    li	$at,3074
    # Line 816
    move	$s7,$a2
    # Line 839
    sb	$v0,32206($a0)
    # Line 816
    move	$s0,$a0
    # Line 841
    addiu	$a1,$a0,31228
    sw	$a1,32296($a0)
    # Line 843
    nop
    addiu	$a1,$sp,0
    jal	crmReadPixelsXfer
    # Line 838
    sw	$at,32216($a0)
    # Line 850
    lw	$a5,31304($s0)
    ld	$ra,520($sp)
    dsll32	$a5,$a5,0x0
    # Line 846
    sw	$zero,32216($s0)
    # Line 850
    dsrl32	$a5,$a5,0x0
    # Line 845
    sb	$zero,32206($s0)
    # Line 850
    dmtc1	$a5,$f5
    # Line 848
    lw	$a3,88($sp)
    # Line 856
    lw	$t0,31308($s0)
    # Line 850
    lwc1	$f4,3544($s0)
    cvt.s.l	$f5,$f5
    # Line 851
    lw	$a4,31328($s0)
    lbu	$a6,31324($s0)
    li	$a1,1
    # Line 864
    ld	$gp,536($sp)
    # Line 849
    move	$a2,$s7
    ld	$s7,528($sp)
    # Line 851
    beqz	$a4,.L0d966090
    # Line 850
    div.s	$f4,$f4,$f5
    # Line 851
    beqz	$a6,.L0d966094
    nop
.L0d966090:
    move	$a1,$zero
.L0d966094:
    blez	$s1,.L0d966124
    andi	$a6,$a1,0xff
    andi	$a7,$s1,0x1
    sra	$at,$s1,0x1
    move	$a5,$zero
    beqz	$a7,.L0d96611c
    lui	$a4,0xff00
    # Line 854
    lw	$a1,0($a3)
    # Line 856
    beqz	$a6,.L0d9660e0
    # Line 854
    addiu	$a3,$a3,4
    # Line 856
    and	$t1,$a4,$a1
    beq	$t0,$t1,.L0d9660e4
    # Line 861
    addiu	$t3,$a2,4
    # Line 857
    addiu	$t2,$a2,4
    ldc1	$f6,1640($s0)
    cvt.s.d	$f6,$f6
    move	$a2,$t2
    b	.L0d966118
    swc1	$f6,-4($t2)
.L0d9660e0:
    # Line 861
    addiu	$t3,$a2,4
.L0d9660e4:
    # Line 859
    lw	$t9,31320($s0)
    and	$t9,$t9,$a1
    # Line 861
    srl	$t8,$t9,0x12
    sll	$t9,$t9,0x6
    andi	$t8,$t8,0x3f
    or	$t8,$t8,$t9
    dsll32	$t8,$t8,0x0
    dsrl32	$t8,$t8,0x0
    dmtc1	$t8,$f7
    cvt.s.l	$f7,$f7
    mul.s	$f7,$f7,$f4
    move	$a2,$t3
    swc1	$f7,-4($t3)
.L0d966118:
    # Line 853
    addiu	$a5,$a5,1
.L0d96611c:
    bnez	$at,.L0d966210
    # Line 857
    addiu	$t1,$a2,4
.L0d966124:
    ld	$s0,504($sp)
    ld	$s1,512($sp)
    # Line 864
    jr	$ra
    addiu	$sp,$sp,544
.L0d966134:
    # Line 861
    addiu	$v0,$a2,4
.L0d966138:
    # Line 859
    lw	$a0,31320($s0)
    and	$a0,$a0,$a1
    # Line 861
    srl	$v1,$a0,0x12
    sll	$a0,$a0,0x6
    andi	$v1,$v1,0x3f
    or	$v1,$v1,$a0
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f8
    cvt.s.l	$f8,$f8
    mul.s	$f8,$f8,$f4
    move	$a2,$v0
    swc1	$f8,-4($v0)
.L0d96616c:
    # Line 853
    addiu	$a5,$a5,2
    beq	$s1,$a5,.L0d966124
    # Line 857
    addiu	$t1,$a2,4
.L0d966178:
    # Line 856
    beqz	$a6,.L0d9661a4
    # Line 854
    lw	$a1,0($a3)
    # Line 856
    lw	$a7,31308($s0)
    and	$t0,$a4,$a1
    beq	$a7,$t0,.L0d9661a8
    # Line 861
    addiu	$t2,$a2,4
    # Line 857
    ldc1	$f9,1640($s0)
    cvt.s.d	$f9,$f9
    move	$a2,$t1
    b	.L0d9661dc
    swc1	$f9,-4($t1)
.L0d9661a4:
    # Line 861
    addiu	$t2,$a2,4
.L0d9661a8:
    # Line 859
    lw	$t8,31320($s0)
    and	$t8,$t8,$a1
    # Line 861
    srl	$t3,$t8,0x12
    sll	$t8,$t8,0x6
    andi	$t3,$t3,0x3f
    or	$t3,$t3,$t8
    dsll32	$t3,$t3,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f10
    cvt.s.l	$f10,$f10
    mul.s	$f10,$f10,$f4
    move	$a2,$t2
    swc1	$f10,-4($t2)
.L0d9661dc:
    # Line 854
    lw	$a1,4($a3)
    # Line 856
    beqz	$a6,.L0d966134
    # Line 854
    addiu	$a3,$a3,8
    # Line 856
    and	$at,$a4,$a1
    lw	$t9,31308($s0)
    beq	$t9,$at,.L0d966138
    # Line 861
    addiu	$v0,$a2,4
    # Line 857
    addiu	$v0,$a2,4
    ldc1	$f11,1640($s0)
    cvt.s.d	$f11,$f11
    move	$a2,$v0
    b	.L0d96616c
    swc1	$f11,-4($v0)
.L0d966210:
    b	.L0d966178
    nop
.end __glCrmSpanReadDepth2

# Function: __glCrmSpanReadStencil
# Declared: Line 867 (Source lines: 869-913)
# Address: 0x0d966220 - 0x0d966464 (Size: 580 bytes, Frame: 176)
.globl __glCrmSpanReadStencil
.ent __glCrmSpanReadStencil
__glCrmSpanReadStencil:
    # Line 881
    lw	$a4,312($a1)
    # Line 869
    addiu	$sp,$sp,-560
    sd	$s5,528($sp)
    sd	$s0,512($sp)
    # Line 885
    move	$a5,$zero
    # Line 869
    move	$s5,$a2
    # Line 882
    lw	$s0,168($a1)
    # Line 869
    sd	$s1,520($sp)
    move	$s1,$a0
    lui	$at,0xf
    sd	$s2,504($sp)
    move	$s2,$a1
    addiu	$at,$at,-21652
    sd	$gp,536($sp)
    # Line 882
    blez	$s0,.L0d96645c
    # Line 869
    addu	$gp,$t9,$at
    andi	$a6,$s0,0x7
    # Line 882
    move	$a1,$zero
    sra	$v1,$s0,0x3
    beqz	$a6,.L0d96628c
    move	$a5,$zero
.L0d966274:
    addiu	$a6,$a6,-1
    # Line 886
    lh	$v0,0($a4)
    # Line 885
    addiu	$a1,$a1,1
    # Line 886
    addiu	$a4,$a4,2
    bnez	$a6,.L0d966274
    addu	$a5,$v0,$a5
.L0d96628c:
    beqz	$v1,.L0d9662ec
    nop
    nop
    nop
    nop
.L0d9662a0:
    lh	$t8,0($a4)
    lh	$t3,2($a4)
    lh	$t2,4($a4)
    addu	$t8,$t8,$a5
    lh	$t1,6($a4)
    addu	$t3,$t3,$t8
    lh	$t0,8($a4)
    addu	$t2,$t2,$t3
    lh	$a7,10($a4)
    addu	$t1,$t1,$t2
    lh	$a6,12($a4)
    addu	$t0,$t0,$t1
    # Line 885
    addiu	$a1,$a1,8
    # Line 886
    lh	$a5,14($a4)
    addu	$a7,$a7,$t0
    addiu	$a4,$a4,16
    addu	$a6,$a6,$a7
    # Line 885
    bne	$s0,$a1,.L0d9662a0
    # Line 886
    addu	$a5,$a5,$a6
.L0d9662ec:
    sd	$ra,544($sp)
.L0d9662f0:
    # Line 888
    lwc1	$f1,188($s2)
    swc1	$f1,188($sp)
    # Line 889
    lwc1	$f0,192($s2)
    # Line 892
    li	$a0,6401
    sw	$a0,80($sp)
    # Line 891
    li	$v0,1
    sw	$v0,172($sp)
    # Line 890
    sw	$a5,168($sp)
    # Line 900
    # lw $t9, -31588($gp) # &crmReadPixelsXfer
    # Line 889
    swc1	$f0,192($sp)
    # Line 898
    addiu	$v1,$s1,31108
    sw	$v1,32296($s1)
    # Line 897
    sw	$zero,32344($s1)
    # Line 900
    addiu	$a1,$sp,0
    # Line 895
    li	$at,3074
    # Line 896
    sb	$v0,32206($s1)
    # Line 900
    move	$a0,$s1
    jal	crmReadPixelsXfer
    # Line 895
    sw	$at,32216($s1)
    # Line 902
    sb	$zero,32206($s1)
    # Line 903
    sw	$zero,32216($s1)
    # Line 908
    lw	$a4,312($s2)
    ld	$s2,504($sp)
    ld	$ra,544($sp)
    ld	$s1,520($sp)
    # Line 906
    move	$a2,$s5
    ld	$s5,528($sp)
    sra	$a7,$s0,0x2
    andi	$a5,$s0,0x3
    # Line 913
    ld	$gp,536($sp)
    # Line 908
    move	$a1,$zero
    blez	$s0,.L0d966450
    # Line 905
    lw	$a0,88($sp)
    beqz	$a5,.L0d9663b0
    nop
.L0d96637c:
    # Line 910
    lw	$a6,0($a0)
    srl	$a6,$a6,0x18
    dmtc1	$a6,$f2
    cvt.s.l	$f2,$f2
    swc1	$f2,0($a2)
    # Line 909
    addiu	$a1,$a1,1
    # Line 911
    lh	$a3,0($a4)
    addiu	$a4,$a4,2
    addiu	$a5,$a5,-1
    # Line 910
    addiu	$a2,$a2,4
    # Line 911
    sll	$a3,$a3,0x2
    bnez	$a5,.L0d96637c
    addu	$a0,$a0,$a3
.L0d9663b0:
    beqz	$a7,.L0d966450
    nop
    nop
    nop
.L0d9663c0:
    # Line 910
    lw	$a7,0($a0)
    srl	$a7,$a7,0x18
    dmtc1	$a7,$f6
    cvt.s.l	$f6,$f6
    swc1	$f6,0($a2)
    # Line 911
    lh	$a6,0($a4)
    sll	$a6,$a6,0x2
    addu	$a0,$a0,$a6
    # Line 910
    lw	$a5,0($a0)
    srl	$a5,$a5,0x18
    dmtc1	$a5,$f5
    cvt.s.l	$f5,$f5
    swc1	$f5,4($a2)
    # Line 911
    lh	$a3,2($a4)
    sll	$a3,$a3,0x2
    addu	$a0,$a0,$a3
    # Line 910
    lw	$a5,0($a0)
    srl	$a5,$a5,0x18
    dmtc1	$a5,$f4
    cvt.s.l	$f4,$f4
    swc1	$f4,8($a2)
    # Line 911
    lh	$a3,4($a4)
    sll	$a3,$a3,0x2
    addu	$a0,$a0,$a3
    # Line 910
    lw	$a5,0($a0)
    srl	$a5,$a5,0x18
    dmtc1	$a5,$f3
    cvt.s.l	$f3,$f3
    swc1	$f3,12($a2)
    # Line 911
    lh	$a3,6($a4)
    addiu	$a4,$a4,8
    # Line 909
    addiu	$a1,$a1,4
    # Line 910
    addiu	$a2,$a2,16
    # Line 911
    sll	$a3,$a3,0x2
    # Line 909
    bne	$s0,$a1,.L0d9663c0
    # Line 911
    addu	$a0,$a0,$a3
.L0d966450:
    ld	$s0,512($sp)
    # Line 913
    jr	$ra
    addiu	$sp,$sp,560
.L0d96645c:
    b	.L0d9662f0
    sd	$ra,544($sp)
.end __glCrmSpanReadStencil

# Function: __glCrmSpanReadStencil2
# Declared: Line 916 (Source lines: 918-952)
# Address: 0x0d966470 - 0x0d9665c0 (Size: 336 bytes, Frame: 160)
.globl __glCrmSpanReadStencil2
.ent __glCrmSpanReadStencil2
__glCrmSpanReadStencil2:
    # Line 918
    addiu	$sp,$sp,-544
    sd	$ra,512($sp)
    sd	$s7,520($sp)
    # Line 929
    lwc1	$f1,188($a1)
    # Line 918
    sd	$s8,528($sp)
    # Line 929
    swc1	$f1,188($sp)
    # Line 930
    lwc1	$f0,192($a1)
    # Line 918
    sd	$s0,504($sp)
    # Line 930
    swc1	$f0,192($sp)
    # Line 931
    lw	$s0,168($a1)
    # Line 933
    li	$a1,6401
    sw	$a1,80($sp)
    # Line 932
    li	$v0,1
    sw	$v0,172($sp)
    sd	$gp,536($sp)
    # Line 918
    lui	$v1,0xf
    # Line 931
    sw	$s0,168($sp)
    # Line 918
    addiu	$v1,$v1,-22244
    # Line 938
    sw	$zero,32344($a0)
    # Line 918
    addu	$gp,$t9,$v1
    # Line 941
    # lw $t9, -31588($gp) # &crmReadPixelsXfer
    # Line 936
    li	$at,3074
    # Line 918
    move	$s8,$a2
    # Line 937
    sb	$v0,32206($a0)
    # Line 918
    move	$s7,$a0
    # Line 939
    addiu	$a1,$a0,31108
    sw	$a1,32296($a0)
    # Line 941
    nop
    addiu	$a1,$sp,0
    jal	crmReadPixelsXfer
    # Line 936
    sw	$at,32216($a0)
    # Line 944
    sw	$zero,32216($s7)
    # Line 943
    sb	$zero,32206($s7)
    # Line 946
    lw	$a1,88($sp)
    ld	$ra,512($sp)
    andi	$a4,$s0,0x3
    # Line 947
    move	$a3,$zero
    ld	$s7,520($sp)
    # Line 952
    ld	$gp,536($sp)
    # Line 947
    blez	$s0,.L0d9665b0
    move	$a2,$s8
    beqz	$a4,.L0d966548
    sra	$a6,$s0,0x2
.L0d96651c:
    # Line 950
    lw	$a5,0($a1)
    srl	$a5,$a5,0x18
    dmtc1	$a5,$f2
    cvt.s.l	$f2,$f2
    addiu	$a4,$a4,-1
    # Line 949
    addiu	$a3,$a3,1
    # Line 950
    addiu	$a2,$a2,4
    addiu	$a1,$a1,4
    bnez	$a4,.L0d96651c
    swc1	$f2,-4($a2)
    sra	$a6,$s0,0x2
.L0d966548:
    beqz	$a6,.L0d9665b0
    nop
.L0d966550:
    lw	$t2,0($a1)
    srl	$t2,$t2,0x18
    dmtc1	$t2,$f6
    cvt.s.l	$f6,$f6
    swc1	$f6,0($a2)
    lw	$t1,4($a1)
    srl	$t1,$t1,0x18
    dmtc1	$t1,$f5
    cvt.s.l	$f5,$f5
    swc1	$f5,4($a2)
    lw	$t0,8($a1)
    srl	$t0,$t0,0x18
    dmtc1	$t0,$f4
    cvt.s.l	$f4,$f4
    swc1	$f4,8($a2)
    lw	$a7,12($a1)
    srl	$a7,$a7,0x18
    dmtc1	$a7,$f3
    cvt.s.l	$f3,$f3
    # Line 949
    addiu	$a3,$a3,4
    # Line 950
    addiu	$a2,$a2,16
    addiu	$a1,$a1,16
    # Line 949
    bne	$s0,$a3,.L0d966550
    # Line 950
    swc1	$f3,-4($a2)
.L0d9665b0:
    ld	$s0,504($sp)
    ld	$s8,528($sp)
    # Line 952
    jr	$ra
    addiu	$sp,$sp,544
.end __glCrmSpanReadStencil2

.rdata
_lit_42800000:
    .word 0x42800000

