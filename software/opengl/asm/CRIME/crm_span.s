# Source: ../CRIME/crm_span.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_span.c
# Total Functions: 14

.text

# Function: __glCrmStoreCISpan
# Declared: Line 25 (Source lines: 26-71)
# Address: 0x0d968c30 - 0x0d968df4 (Size: 452 bytes, Frame: 176)
.globl __glCrmStoreCISpan
.ent __glCrmStoreCISpan
__glCrmStoreCISpan:
    # Line 26
    addiu	$sp,$sp,-560
    sd	$s8,536($sp)
    sd	$s0,504($sp)
    # Line 36
    lw	$s0,30464($a0)
    # Line 26
    sd	$s1,528($sp)
    # Line 35
    lw	$s1,30248($a0)
    # Line 26
    lui	$at,0xf
    sd	$gp,544($sp)
    addiu	$at,$at,-32420
    addu	$gp,$t9,$at
    # Line 39
    lw	$t9,32324($a0)
    # Line 26
    sd	$s2,552($sp)
    move	$s2,$a0
    sd	$s3,512($sp)
    # Line 39
    addu	$s3,$s1,$s1
    # Line 26
    sd	$ra,520($sp)
    # Line 39
    jalr	$t9
    move	$a1,$s3
    blez	$s1,.L0d968d2c
    andi	$a5,$s1,0x3
    addu	$a6,$v0,$s3
    sra	$a0,$s1,0x2
    beqz	$a5,.L0d968cb8
    move	$a4,$v0
.L0d968c90:
    # Line 41
    lwc1	$f0,0($s0)
    trunc.l.s	$f0,$f0
    dmfc1	$v1,$f0
    # Line 40
    addiu	$a4,$a4,2
    addiu	$a5,$a5,-1
    # Line 42
    addiu	$s0,$s0,16
    # Line 41
    sll	$v1,$v1,0x0
    andi	$v1,$v1,0xfff
    bnez	$a5,.L0d968c90
    sh	$v1,-2($a4)
.L0d968cb8:
    beqz	$a0,.L0d968d2c
    move	$a5,$s0
.L0d968cc0:
    lwc1	$f4,0($a5)
    trunc.l.s	$f4,$f4
    dmfc1	$a7,$f4
    sll	$a7,$a7,0x0
    andi	$a7,$a7,0xfff
    sh	$a7,0($a4)
    lwc1	$f3,16($a5)
    trunc.l.s	$f3,$f3
    dmfc1	$a3,$f3
    sll	$a3,$a3,0x0
    andi	$a3,$a3,0xfff
    sh	$a3,2($a4)
    lwc1	$f2,32($a5)
    trunc.l.s	$f2,$f2
    dmfc1	$a2,$f2
    sll	$a2,$a2,0x0
    andi	$a2,$a2,0xfff
    sh	$a2,4($a4)
    lwc1	$f1,48($a5)
    trunc.l.s	$f1,$f1
    dmfc1	$a1,$f1
    # Line 40
    addiu	$a4,$a4,8
    # Line 42
    addiu	$a5,$a5,64
    # Line 41
    sll	$a1,$a1,0x0
    andi	$a1,$a1,0xfff
    # Line 40
    bne	$a4,$a6,.L0d968cc0
    # Line 41
    sh	$a1,-2($a4)
.L0d968d2c:
    ld	$s0,504($sp)
    # Line 45
    lw	$s8,30196($s2)
    sw	$s8,204($sp)
    # Line 46
    lw	$t9,30200($s2)
    # Line 54
    li	$t3,5123
    sw	$t3,4($sp)
    # Line 53
    li	$t8,6400
    sw	$t8,0($sp)
    # Line 52
    sw	$s3,16($sp)
    # Line 51
    sw	$v0,8($sp)
    # Line 50
    sw	$v0,12($sp)
    # Line 48
    li	$t2,1
    # Line 49
    sw	$t2,172($sp)
    # Line 48
    sw	$t2,220($sp)
    # Line 47
    sw	$s1,216($sp)
    # Line 46
    sw	$t9,208($sp)
    # Line 59
    lbu	$s8,32202($s2)
    # Line 60
    sb	$zero,32202($s2)
    # Line 62
    lw	$t0,32292($s2)
    # Line 58
    sw	$zero,32224($s2)
    # Line 62
    li	$t1,-241
    # Line 57
    sb	$zero,32206($s2)
    # Line 62
    and	$t0,$t0,$t1
    # Line 63
    li	$t1,-769
    # Line 67
    addiu	$a1,$sp,0
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
    # Line 63
    and	$t0,$t0,$t1
    # Line 56
    sw	$t2,32216($s2)
    # Line 64
    li	$t2,-13
    # Line 63
    ori	$t0,$t0,0x100
    # Line 67
    move	$a0,$s2
    # Line 61
    lw	$t1,30480($s2)
    # Line 64
    and	$t0,$t0,$t2
    # Line 61
    sw	$t1,32300($s2)
    # Line 65
    li	$t1,-3
    # Line 64
    ori	$t0,$t0,0x4
    # Line 65
    and	$t0,$t0,$t1
    # Line 67
    jal	crmDrawPixelsXfer
    # Line 65
    sw	$t0,32292($s2)
    ld	$s3,512($sp)
    ld	$s1,528($sp)
    # Line 71
    ld	$gp,544($sp)
    # Line 70
    sb	$s8,32202($s2)
    ld	$ra,520($sp)
    # Line 69
    sw	$zero,32216($s2)
    # Line 71
    move	$v0,$zero
    ld	$s2,552($sp)
    ld	$s8,536($sp)
    jr	$ra
    addiu	$sp,$sp,560
.end __glCrmStoreCISpan

# Function: __glCrmStoreCIStippledSpan
# Declared: Line 75 (Source lines: 76-135)
# Address: 0x0d968e00 - 0x0d9690c4 (Size: 708 bytes, Frame: 208)
.globl __glCrmStoreCIStippledSpan
.ent __glCrmStoreCIStippledSpan
__glCrmStoreCIStippledSpan:
    # Line 76
    addiu	$sp,$sp,-592
    sd	$s3,520($sp)
    sd	$s5,560($sp)
    sd	$s7,544($sp)
    sd	$s4,512($sp)
    # Line 89
    lw	$s4,30472($a0)
    # Line 76
    sd	$s1,528($sp)
    # Line 88
    lw	$s1,30464($a0)
    # Line 76
    sd	$s0,552($sp)
    # Line 87
    lw	$s0,30248($a0)
    # Line 76
    lui	$at,0xe
    sd	$gp,536($sp)
    addiu	$at,$at,32652
    addu	$gp,$t9,$at
    # Line 92
    lw	$t9,32324($a0)
    # Line 76
    sd	$s6,576($sp)
    move	$s6,$a0
    sd	$s2,584($sp)
    # Line 92
    addu	$s2,$s0,$s0
    # Line 76
    sd	$ra,568($sp)
    # Line 92
    jalr	$t9
    move	$a1,$s2
    li	$t2,-3
    li	$a6,-13
    li	$a7,-769
    li	$t0,-241
    li	$t1,5123
    li	$t3,6400
    blez	$s0,.L0d96903c
    li	$t8,1
    andi	$a0,$s0,0x3
    addu	$a5,$v0,$s2
    move	$a1,$v0
    beqz	$a0,.L0d968eb4
    # Line 112
    li	$s7,32
.L0d968e8c:
    # Line 94
    lwc1	$f0,0($s1)
    trunc.l.s	$f0,$f0
    dmfc1	$v1,$f0
    # Line 93
    addiu	$a1,$a1,2
    addiu	$a0,$a0,-1
    # Line 95
    addiu	$s1,$s1,16
    # Line 94
    sll	$v1,$v1,0x0
    andi	$v1,$v1,0xfff
    bnez	$a0,.L0d968e8c
    sh	$v1,-2($a1)
.L0d968eb4:
    sra	$a0,$s0,0x2
    beqz	$a0,.L0d968f2c
    move	$a4,$s1
.L0d968ec0:
    lwc1	$f4,0($a4)
    trunc.l.s	$f4,$f4
    dmfc1	$ra,$f4
    sll	$ra,$ra,0x0
    andi	$ra,$ra,0xfff
    sh	$ra,0($a1)
    lwc1	$f3,16($a4)
    trunc.l.s	$f3,$f3
    dmfc1	$t9,$f3
    sll	$t9,$t9,0x0
    andi	$t9,$t9,0xfff
    sh	$t9,2($a1)
    lwc1	$f2,32($a4)
    trunc.l.s	$f2,$f2
    dmfc1	$a3,$f2
    sll	$a3,$a3,0x0
    andi	$a3,$a3,0xfff
    sh	$a3,4($a1)
    lwc1	$f1,48($a4)
    trunc.l.s	$f1,$f1
    dmfc1	$a2,$f1
    # Line 93
    addiu	$a1,$a1,8
    # Line 95
    addiu	$a4,$a4,64
    # Line 94
    sll	$a2,$a2,0x0
    andi	$a2,$a2,0xfff
    # Line 93
    bne	$a1,$a5,.L0d968ec0
    # Line 94
    sh	$a2,-2($a1)
.L0d968f2c:
    # Line 98
    lw	$a0,30200($s6)
    # Line 102
    sw	$t1,4($sp)
    # Line 101
    sw	$t3,0($sp)
    # Line 100
    sw	$t8,172($sp)
    # Line 99
    sw	$t8,220($sp)
    # Line 98
    sw	$a0,208($sp)
    # Line 115
    lw	$s2,30196($s6)
    # Line 106
    lbu	$v1,32202($s6)
    # Line 109
    lw	$at,32292($s6)
    # Line 107
    sb	$zero,32202($s6)
    # Line 105
    sb	$zero,32206($s6)
    # Line 109
    and	$at,$t0,$at
    # Line 104
    sw	$t8,32216($s6)
    # Line 110
    and	$at,$a7,$at
    # Line 106
    sd	$v1,504($sp)
    # Line 110
    ori	$at,$at,0x100
    # Line 108
    lw	$v1,30480($s6)
    # Line 111
    and	$at,$a6,$at
    # Line 112
    move	$s1,$v0
    # Line 108
    sw	$v1,32300($s6)
    # Line 111
    ori	$at,$at,0x4
    # Line 112
    and	$at,$t2,$at
    b	.L0d968fc8
    sw	$at,32292($s6)
.L0d968f8c:
    # Line 123
    addu	$s5,$s3,$s3
    sw	$s5,16($sp)
    # Line 122
    sw	$s1,8($sp)
    # Line 121
    sw	$s1,12($sp)
    # Line 125
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
    # Line 120
    sw	$s3,216($sp)
    # Line 125
    addiu	$a1,$sp,0
    # Line 119
    sw	$s2,204($sp)
    # Line 125
    move	$a0,$s6
    jal	crmDrawPixelsXfer
    # Line 124
    sw	$v0,32224($s6)
    # Line 127
    subu	$s0,$s0,$s3
    # Line 129
    addu	$s1,$s5,$s1
    blez	$s0,.L0d968ff8
    # Line 128
    addu	$s2,$s3,$s2
.L0d968fc8:
    # Line 118
    lw	$v0,0($s4)
    addiu	$s4,$s4,4
    # Line 117
    move	$s3,$s0
    li	$a1,32
    slt	$a1,$a1,$s0
    # Line 118
    bnez	$v0,.L0d968f8c
    # Line 117
    movn	$s3,$s7,$a1
    # Line 127
    subu	$s0,$s0,$s3
    # Line 128
    addu	$s2,$s3,$s2
    # Line 129
    addu	$a2,$s3,$s3
    bgtz	$s0,.L0d968fc8
    addu	$s1,$s1,$a2
.L0d968ff8:
    # Line 135
    ld	$gp,536($sp)
    ld	$s0,552($sp)
    ld	$s1,528($sp)
    ld	$s2,584($sp)
    ld	$s3,520($sp)
    ld	$s4,512($sp)
    ld	$s5,560($sp)
    ld	$s7,544($sp)
    # Line 133
    sw	$zero,32216($s6)
    # Line 132
    sw	$zero,32224($s6)
    # Line 135
    ld	$ra,568($sp)
    # Line 134
    ld	$a3,504($sp)
    # Line 135
    move	$v0,$zero
    # Line 134
    sb	$a3,32202($s6)
    # Line 135
    ld	$s6,576($sp)
    jr	$ra
    addiu	$sp,$sp,592
.L0d96903c:
    ld	$gp,536($sp)
    ld	$s0,552($sp)
    ld	$s1,528($sp)
    ld	$s2,584($sp)
    ld	$s3,520($sp)
    ld	$s4,512($sp)
    ld	$s5,560($sp)
    ld	$s7,544($sp)
    # Line 98
    lw	$a5,30200($s6)
    # Line 102
    sw	$t1,4($sp)
    # Line 101
    sw	$t3,0($sp)
    # Line 100
    sw	$t8,172($sp)
    # Line 99
    sw	$t8,220($sp)
    # Line 98
    sw	$a5,208($sp)
    # Line 133
    sw	$zero,32216($s6)
    # Line 132
    sw	$zero,32224($s6)
    # Line 109
    lw	$a4,32292($s6)
    # Line 105
    sb	$zero,32206($s6)
    # Line 135
    ld	$ra,568($sp)
    # Line 109
    and	$a4,$t0,$a4
    # Line 106
    lbu	$a5,32202($s6)
    # Line 110
    and	$a4,$a7,$a4
    # Line 134
    sb	$a5,32202($s6)
    # Line 110
    ori	$a4,$a4,0x100
    # Line 108
    lw	$a5,30480($s6)
    # Line 111
    and	$a4,$a6,$a4
    # Line 108
    sw	$a5,32300($s6)
    # Line 111
    ori	$a4,$a4,0x4
    # Line 135
    move	$v0,$zero
    # Line 112
    and	$a4,$t2,$a4
    sw	$a4,32292($s6)
    # Line 135
    ld	$s6,576($sp)
    jr	$ra
    addiu	$sp,$sp,592
.end __glCrmStoreCIStippledSpan

# Function: __glCrmStoreRGBASpan
# Declared: Line 139 (Source lines: 140-188)
# Address: 0x0d9690d0 - 0x0d969350 (Size: 640 bytes, Frame: 176)
.globl __glCrmStoreRGBASpan
.ent __glCrmStoreRGBASpan
__glCrmStoreRGBASpan:
    # Line 140
    addiu	$sp,$sp,-560
    sd	$s8,536($sp)
    sd	$s1,504($sp)
    # Line 150
    lw	$s1,30464($a0)
    # Line 140
    sd	$s0,528($sp)
    # Line 149
    lw	$s0,30248($a0)
    # Line 140
    lui	$at,0xe
    sd	$gp,544($sp)
    addiu	$at,$at,31932
    addu	$gp,$t9,$at
    # Line 153
    lw	$t9,32324($a0)
    # Line 140
    sd	$s2,552($sp)
    move	$s2,$a0
    sd	$s3,512($sp)
    # Line 153
    sll	$s3,$s0,0x2
    # Line 140
    sd	$ra,520($sp)
    # Line 153
    jalr	$t9
    move	$a1,$s3
    blez	$s0,.L0d969284
    andi	$v1,$s0,0x1
    addu	$a6,$v0,$s3
    sra	$a4,$s0,0x1
    beqz	$v1,.L0d96919c
    move	$a5,$v0
    # Line 155
    lwc1	$f0,0($s1)
    lwc1	$f2,12($s1)
    lwc1	$f3,8($s1)
    trunc.l.s	$f0,$f0
    lwc1	$f1,4($s1)
    trunc.l.s	$f2,$f2
    dmfc1	$a1,$f0
    trunc.l.s	$f3,$f3
    dmfc1	$a0,$f2
    trunc.l.s	$f1,$f1
    sll	$a1,$a1,0x18
    dmfc1	$a3,$f3
    sll	$a0,$a0,0x0
    dmfc1	$a2,$f1
    # Line 154
    addiu	$a5,$v0,4
    # Line 155
    sll	$a3,$a3,0x0
    sll	$a2,$a2,0x0
    andi	$a3,$a3,0xff
    andi	$a2,$a2,0xff
    sll	$a3,$a3,0x8
    andi	$a0,$a0,0xff
    sll	$a2,$a2,0x10
    or	$a1,$a1,$a2
    or	$a0,$a0,$a3
    # Line 159
    addiu	$s1,$s1,16
    # Line 155
    or	$a0,$a0,$a1
    sw	$a0,0($v0)
.L0d96919c:
    beqz	$a4,.L0d969284
    move	$a4,$s1
    nop
    nop
    nop
.L0d9691b0:
    lwc1	$f11,8($a4)
    lwc1	$f10,12($a4)
    trunc.l.s	$f11,$f11
    lwc1	$f9,4($a4)
    trunc.l.s	$f10,$f10
    lwc1	$f8,0($a4)
    dmfc1	$ra,$f11
    dmfc1	$t3,$f10
    trunc.l.s	$f9,$f9
    sll	$ra,$ra,0x0
    trunc.l.s	$f8,$f8
    sll	$t3,$t3,0x0
    andi	$ra,$ra,0xff
    dmfc1	$t9,$f9
    sll	$ra,$ra,0x8
    dmfc1	$t8,$f8
    sll	$t9,$t9,0x0
    sll	$t8,$t8,0x18
    andi	$t9,$t9,0xff
    andi	$t3,$t3,0xff
    sll	$t9,$t9,0x10
    or	$t3,$t3,$ra
    or	$t8,$t8,$t9
    or	$t3,$t3,$t8
    sw	$t3,0($a5)
    lwc1	$f7,24($a4)
    lwc1	$f6,28($a4)
    trunc.l.s	$f7,$f7
    lwc1	$f5,20($a4)
    trunc.l.s	$f6,$f6
    lwc1	$f4,16($a4)
    dmfc1	$t2,$f7
    dmfc1	$a7,$f6
    trunc.l.s	$f5,$f5
    sll	$t2,$t2,0x0
    trunc.l.s	$f4,$f4
    sll	$a7,$a7,0x0
    andi	$t2,$t2,0xff
    dmfc1	$t1,$f5
    # Line 159
    addiu	$a4,$a4,32
    # Line 155
    sll	$t2,$t2,0x8
    dmfc1	$t0,$f4
    # Line 154
    addiu	$a5,$a5,8
    # Line 155
    sll	$t1,$t1,0x0
    sll	$t0,$t0,0x18
    andi	$t1,$t1,0xff
    andi	$a7,$a7,0xff
    sll	$t1,$t1,0x10
    or	$a7,$a7,$t2
    or	$t0,$t0,$t1
    or	$a7,$a7,$t0
    # Line 154
    bne	$a5,$a6,.L0d9691b0
    # Line 155
    sw	$a7,-4($a5)
.L0d969284:
    ld	$s1,504($sp)
    # Line 162
    lw	$a3,30196($s2)
    sw	$a3,204($sp)
    # Line 163
    lw	$a2,30200($s2)
    # Line 171
    li	$a0,5121
    sw	$a0,4($sp)
    # Line 170
    li	$a1,6408
    sw	$a1,0($sp)
    # Line 169
    sw	$s3,16($sp)
    # Line 168
    sw	$v0,8($sp)
    # Line 167
    sw	$v0,12($sp)
    # Line 165
    li	$v1,1
    # Line 166
    sw	$v1,172($sp)
    # Line 165
    sw	$v1,220($sp)
    # Line 164
    sw	$s0,216($sp)
    # Line 163
    sw	$a2,208($sp)
    # Line 176
    lbu	$s8,32202($s2)
    # Line 179
    lw	$at,32292($s2)
    # Line 177
    sb	$zero,32202($s2)
    # Line 179
    li	$v0,-241
    # Line 175
    sw	$zero,32224($s2)
    # Line 179
    and	$at,$at,$v0
    # Line 174
    sb	$zero,32206($s2)
    # Line 180
    li	$v0,-769
    # Line 179
    ori	$at,$at,0x20
    # Line 184
    addiu	$a1,$sp,0
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
    # Line 180
    and	$at,$at,$v0
    # Line 173
    sw	$v1,32216($s2)
    # Line 181
    li	$v1,-13
    # Line 180
    ori	$at,$at,0x200
    # Line 184
    move	$a0,$s2
    # Line 178
    lw	$v0,30480($s2)
    # Line 181
    and	$at,$at,$v1
    # Line 178
    sw	$v0,32300($s2)
    # Line 182
    li	$v0,-3
    # Line 181
    ori	$at,$at,0x8
    # Line 182
    and	$at,$at,$v0
    # Line 184
    jal	crmDrawPixelsXfer
    # Line 182
    sw	$at,32292($s2)
    ld	$s3,512($sp)
    ld	$s0,528($sp)
    # Line 188
    ld	$gp,544($sp)
    # Line 187
    sb	$s8,32202($s2)
    ld	$ra,520($sp)
    # Line 186
    sw	$zero,32216($s2)
    # Line 188
    move	$v0,$zero
    ld	$s2,552($sp)
    ld	$s8,536($sp)
    jr	$ra
    addiu	$sp,$sp,560
.end __glCrmStoreRGBASpan

# Function: __glCrmStoreRGBAStippledSpan
# Declared: Line 192 (Source lines: 193-255)
# Address: 0x0d969350 - 0x0d9696d4 (Size: 900 bytes, Frame: 208)
.globl __glCrmStoreRGBAStippledSpan
.ent __glCrmStoreRGBAStippledSpan
__glCrmStoreRGBAStippledSpan:
    # Line 193
    addiu	$sp,$sp,-592
    sd	$s3,520($sp)
    sd	$s5,528($sp)
    sd	$s7,560($sp)
    sd	$s4,512($sp)
    # Line 206
    lw	$s4,30472($a0)
    # Line 193
    sd	$s1,544($sp)
    # Line 205
    lw	$s1,30464($a0)
    # Line 193
    sd	$s0,552($sp)
    # Line 204
    lw	$s0,30248($a0)
    # Line 193
    lui	$at,0xe
    sd	$gp,536($sp)
    addiu	$at,$at,31292
    addu	$gp,$t9,$at
    # Line 209
    lw	$t9,32324($a0)
    # Line 193
    sd	$s6,576($sp)
    move	$s6,$a0
    sd	$s2,584($sp)
    # Line 209
    sll	$s2,$s0,0x2
    # Line 193
    sd	$ra,568($sp)
    # Line 209
    jalr	$t9
    move	$a1,$s2
    li	$t1,-3
    li	$a0,-13
    li	$a6,-769
    li	$a7,-241
    li	$t0,5121
    li	$t2,6408
    blez	$s0,.L0d969648
    li	$t3,1
    addu	$a5,$v0,$s2
    andi	$v1,$s0,0x1
    # Line 232
    li	$s7,32
    sra	$t9,$s0,0x1
    # Line 209
    move	$a1,$v0
    beqz	$v1,.L0d969450
    nop
    # Line 211
    lwc1	$f0,0($s1)
    lwc1	$f2,12($s1)
    lwc1	$f3,8($s1)
    trunc.l.s	$f0,$f0
    lwc1	$f1,4($s1)
    trunc.l.s	$f2,$f2
    dmfc1	$a3,$f0
    trunc.l.s	$f3,$f3
    dmfc1	$a2,$f2
    trunc.l.s	$f1,$f1
    sll	$a3,$a3,0x18
    dmfc1	$t8,$f3
    sll	$a2,$a2,0x0
    dmfc1	$a4,$f1
    # Line 210
    addiu	$a1,$v0,4
    # Line 211
    sll	$t8,$t8,0x0
    sll	$a4,$a4,0x0
    andi	$t8,$t8,0xff
    andi	$a4,$a4,0xff
    sll	$t8,$t8,0x8
    andi	$a2,$a2,0xff
    sll	$a4,$a4,0x10
    or	$a3,$a3,$a4
    or	$a2,$a2,$t8
    # Line 215
    addiu	$s1,$s1,16
    # Line 211
    or	$a2,$a2,$a3
    sw	$a2,0($v0)
.L0d969450:
    beqz	$t9,.L0d969534
    move	$a4,$s1
    nop
    nop
.L0d969460:
    lwc1	$f11,8($a4)
    lwc1	$f10,12($a4)
    trunc.l.s	$f11,$f11
    lwc1	$f9,4($a4)
    trunc.l.s	$f10,$f10
    lwc1	$f8,0($a4)
    dmfc1	$ra,$f11
    dmfc1	$a3,$f10
    trunc.l.s	$f9,$f9
    sll	$ra,$ra,0x0
    trunc.l.s	$f8,$f8
    sll	$a3,$a3,0x0
    andi	$ra,$ra,0xff
    dmfc1	$t9,$f9
    sll	$ra,$ra,0x8
    dmfc1	$t8,$f8
    sll	$t9,$t9,0x0
    sll	$t8,$t8,0x18
    andi	$t9,$t9,0xff
    andi	$a3,$a3,0xff
    sll	$t9,$t9,0x10
    or	$a3,$a3,$ra
    or	$t8,$t8,$t9
    or	$a3,$a3,$t8
    sw	$a3,0($a1)
    lwc1	$f7,24($a4)
    lwc1	$f6,28($a4)
    trunc.l.s	$f7,$f7
    lwc1	$f5,20($a4)
    trunc.l.s	$f6,$f6
    lwc1	$f4,16($a4)
    dmfc1	$a2,$f7
    dmfc1	$ra,$f6
    trunc.l.s	$f5,$f5
    sll	$a2,$a2,0x0
    trunc.l.s	$f4,$f4
    sll	$ra,$ra,0x0
    andi	$a2,$a2,0xff
    dmfc1	$v1,$f5
    # Line 215
    addiu	$a4,$a4,32
    # Line 211
    sll	$a2,$a2,0x8
    dmfc1	$at,$f4
    # Line 210
    addiu	$a1,$a1,8
    # Line 211
    sll	$v1,$v1,0x0
    sll	$at,$at,0x18
    andi	$v1,$v1,0xff
    andi	$ra,$ra,0xff
    sll	$v1,$v1,0x10
    or	$ra,$ra,$a2
    or	$at,$at,$v1
    or	$ra,$ra,$at
    # Line 210
    bne	$a1,$a5,.L0d969460
    # Line 211
    sw	$ra,-4($a1)
.L0d969534:
    # Line 218
    lw	$a1,30200($s6)
    # Line 222
    sw	$t0,4($sp)
    # Line 221
    sw	$t2,0($sp)
    # Line 220
    sw	$t3,172($sp)
    # Line 219
    sw	$t3,220($sp)
    # Line 218
    sw	$a1,208($sp)
    # Line 235
    lw	$s2,30196($s6)
    # Line 229
    lw	$at,32292($s6)
    # Line 226
    lbu	$v1,32202($s6)
    # Line 227
    sb	$zero,32202($s6)
    # Line 229
    and	$at,$a7,$at
    # Line 225
    sb	$zero,32206($s6)
    # Line 229
    ori	$at,$at,0x20
    # Line 224
    sw	$t3,32216($s6)
    # Line 230
    and	$at,$a6,$at
    # Line 226
    sd	$v1,504($sp)
    # Line 230
    ori	$at,$at,0x200
    # Line 228
    lw	$v1,30480($s6)
    # Line 231
    and	$at,$a0,$at
    # Line 232
    move	$s1,$v0
    # Line 228
    sw	$v1,32300($s6)
    # Line 231
    ori	$at,$at,0x8
    # Line 232
    and	$at,$t1,$at
    b	.L0d9695d4
    sw	$at,32292($s6)
.L0d969598:
    # Line 243
    sll	$s5,$s3,0x2
    sw	$s5,16($sp)
    # Line 242
    sw	$s1,8($sp)
    # Line 241
    sw	$s1,12($sp)
    # Line 245
    # lw $t9, -31596($gp) # &crmDrawPixelsXfer
    # Line 240
    sw	$s3,216($sp)
    # Line 245
    addiu	$a1,$sp,0
    # Line 239
    sw	$s2,204($sp)
    # Line 245
    move	$a0,$s6
    jal	crmDrawPixelsXfer
    # Line 244
    sw	$v0,32224($s6)
    # Line 247
    subu	$s0,$s0,$s3
    # Line 249
    addu	$s1,$s5,$s1
    blez	$s0,.L0d969604
    # Line 248
    addu	$s2,$s3,$s2
.L0d9695d4:
    # Line 238
    lw	$v0,0($s4)
    addiu	$s4,$s4,4
    # Line 237
    move	$s3,$s0
    li	$a2,32
    slt	$a2,$a2,$s0
    # Line 238
    bnez	$v0,.L0d969598
    # Line 237
    movn	$s3,$s7,$a2
    # Line 247
    subu	$s0,$s0,$s3
    # Line 248
    addu	$s2,$s3,$s2
    # Line 249
    sll	$a3,$s3,0x2
    bgtz	$s0,.L0d9695d4
    addu	$s1,$s1,$a3
.L0d969604:
    # Line 255
    ld	$gp,536($sp)
    ld	$s0,552($sp)
    ld	$s1,544($sp)
    ld	$s2,584($sp)
    ld	$s3,520($sp)
    ld	$s4,512($sp)
    ld	$s5,528($sp)
    ld	$s7,560($sp)
    # Line 253
    sw	$zero,32216($s6)
    # Line 252
    sw	$zero,32224($s6)
    # Line 255
    ld	$ra,568($sp)
    # Line 254
    ld	$a4,504($sp)
    # Line 255
    move	$v0,$zero
    # Line 254
    sb	$a4,32202($s6)
    # Line 255
    ld	$s6,576($sp)
    jr	$ra
    addiu	$sp,$sp,592
.L0d969648:
    ld	$gp,536($sp)
    ld	$s1,544($sp)
    ld	$s2,584($sp)
    ld	$s3,520($sp)
    ld	$s4,512($sp)
    ld	$s5,528($sp)
    ld	$s7,560($sp)
    # Line 218
    lw	$s0,30200($s6)
    sw	$s0,208($sp)
    # Line 255
    ld	$s0,552($sp)
    # Line 222
    sw	$t0,4($sp)
    # Line 221
    sw	$t2,0($sp)
    # Line 220
    sw	$t3,172($sp)
    # Line 219
    sw	$t3,220($sp)
    # Line 253
    sw	$zero,32216($s6)
    # Line 229
    lw	$a5,32292($s6)
    # Line 252
    sw	$zero,32224($s6)
    # Line 225
    sb	$zero,32206($s6)
    # Line 229
    and	$a5,$a7,$a5
    # Line 255
    ld	$ra,568($sp)
    # Line 229
    ori	$a5,$a5,0x20
    # Line 226
    lbu	$a7,32202($s6)
    # Line 230
    and	$a5,$a6,$a5
    # Line 254
    sb	$a7,32202($s6)
    # Line 230
    ori	$a5,$a5,0x200
    # Line 228
    lw	$a6,30480($s6)
    # Line 231
    and	$a5,$a0,$a5
    # Line 228
    sw	$a6,32300($s6)
    # Line 231
    ori	$a5,$a5,0x8
    # Line 255
    move	$v0,$zero
    # Line 232
    and	$a5,$t1,$a5
    sw	$a5,32292($s6)
    # Line 255
    ld	$s6,576($sp)
    jr	$ra
    addiu	$sp,$sp,592
.end __glCrmStoreRGBAStippledSpan

# Function: __glCrmOffsetSpan
# Declared: Line 259 (Source lines: 260-388)
# Address: 0x0d9696e0 - 0x0d969a28 (Size: 840 bytes, Frame: 224)
.globl __glCrmOffsetSpan
.ent __glCrmOffsetSpan
__glCrmOffsetSpan:
    # Line 260
    addiu	$sp,$sp,-96
    sd	$ra,80($sp)
    sd	$gp,72($sp)
    sd	$s0,64($sp)
    # Line 273
    lwc1	$f0,30484($a0)
    # Line 286
    lwc1	$f5,30504($a0)
    # Line 280
    lwc1	$f4,30500($a0)
    # Line 289
    mtc1	$zero,$f6
    # Line 260
    sd	$s1,40($sp)
    # Line 274
    trunc.l.s	$f0,$f0
    # Line 260
    move	$s0,$a0
    lui	$t8,0xe
    # Line 261
    lw	$s1,12224($a0)
    # Line 260
    addiu	$t8,$t8,30380
    sd	$s2,16($sp)
    # Line 289
    c.lt.s	$f4,$f5
    # Line 274
    dmfc1	$at,$f0
    # Line 260
    addu	$gp,$t9,$t8
    # Line 277
    lw	$s2,30248($a0)
    # Line 261
    sll	$s1,$s1,0x2
    addu	$s1,$a0,$s1
    # Line 274
    sll	$at,$at,0x0
    sd	$at,56($sp)
    # Line 292
    mtc1	$s2,$f7
    # Line 261
    addiu	$s1,$s1,12104
    # Line 289
    bc1f	.L0d969780
    # Line 274
    sw	$at,30204($a0)
    # Line 289
    c.lt.s $f6,$f4
    bc1f .L0d969780
    # Line 292
    li	$v0,1
    cvt.s.w	$f7,$f7
    sub.s	$f7,$f4,$f7
    c.lt.s $f7,$f5
    bc1f .L0d969944
    nop
    c.lt.s $f6,$f7
    bc1f .L0d969944
    nop
    b	.L0d96994c
    # Line 295
    andi	$a7,$v0,0xff
.L0d969780:
    # Line 292
    mtc1	$s2,$f7
    cvt.s.w	$f7,$f7
    sub.s	$f7,$f4,$f7
    c.lt.s $f7,$f5
    bc1f .L0d9697ac
    li	$v0,1
    c.lt.s $f6,$f7
    bc1f .L0d9697ac
    nop
    b	.L0d9697b4
    c.lt.s $f5,$f4
.L0d9697ac:
    move	$v0,$zero
    c.lt.s $f5,$f4
.L0d9697b4:
    bc1f .L0d9697d4
    # Line 311
    andi	$at,$v0,0xff
    # Line 305
    lw	$t9,30492($s0)
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f7
    b	.L0d9697e8
    cvt.s.l	$f7,$f7
.L0d9697d4:
    # Line 307
    lw	$ra,30496($s0)
    dsll32	$ra,$ra,0x0
    dsrl32	$ra,$ra,0x0
    dmtc1	$ra,$f7
    cvt.s.l	$f7,$f7
.L0d9697e8:
    # Line 311
    beqz	$at,.L0d9699c8
    nop
.L0d9697f0:
    # Line 327
    lw	$t8,30324($s0)
    trunc.l.s	$f9,$f7
    lwc1	$f8,30336($s0)
    c.le.s $f5,$f4
    sd	$s3,88($sp)
    dmfc1	$s3,$f9
    sd	$t8,48($sp)
    sdc1	$f8,0($sp)
    bc1f .L0d9698b4
    sll	$s3,$s3,0x0
    # Line 345
    sub.s	$f10,$f4,$f5
    ldc1	$f11,_lit8_3ff0000000000000
    cvt.d.s	$f10,$f10
    add.d	$f10,$f10,$f11
    # Line 347
    sw	$s3,30204($s0)
    # Line 345
    trunc.w.d	$f10,$f10
    # Line 339
    lw	$ra,30196($s0)
    sd	$ra,8($sp)
    # Line 345
    mfc1	$t9,$f10
    sd	$t9,24($sp)
    addu	$ra,$t9,$ra
    sw	$ra,30196($s0)
    # Line 346
    subu	$t9,$s2,$t9
    sw	$t9,30248($s0)
    # Line 348
    lw	$t9,0($s1)
    jalr	$t9
    move	$a0,$s0
    # Line 354
    sw	$s3,30204($s0)
    # Line 353
    sw	$zero,30324($s0)
    # Line 350
    ld	$v0,24($sp)
    # Line 351
    ld	$at,8($sp)
    sw	$at,30196($s0)
    # Line 352
    mtc1	$zero,$f11
    # Line 350
    sw	$v0,30248($s0)
    # Line 352
    swc1	$f11,30336($s0)
    # Line 355
    lw	$t9,0($s1)
    ld	$s2,16($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$s3,88($sp)
    ld	$s1,40($sp)
    ld	$ra,80($sp)
    # Line 358
    ld	$v1,48($sp)
    # Line 359
    ld	$a0,56($sp)
    sw	$a0,30204($s0)
    ldc1	$f12,0($sp)
    # Line 358
    sw	$v1,30324($s0)
    # Line 359
    b	.L0d96992c
    # Line 357
    swc1	$f12,30336($s0)
.L0d9698b4:
    # Line 372
    trunc.w.s	$f13,$f4
    swc1	$f13,30248($s0)
    # Line 373
    lw	$t9,0($s1)
    # Line 372
    mfc1	$a1,$f13
    # Line 373
    move	$a0,$s0
    jalr	$t9
    sd	$a1,32($sp)
    # Line 379
    sw	$s3,30204($s0)
    # Line 378
    sw	$zero,30324($s0)
    # Line 375
    ld	$a3,32($sp)
    # Line 377
    mtc1	$zero,$f14
    # Line 376
    lw	$a2,30196($s0)
    # Line 377
    swc1	$f14,30336($s0)
    # Line 376
    addu	$a2,$a2,$a3
    sw	$a2,30196($s0)
    # Line 375
    subu	$a4,$s2,$a3
    sw	$a4,30248($s0)
    # Line 380
    lw	$t9,0($s1)
    jalr	$t9
    move	$a0,$s0
    ld	$s3,88($sp)
    ld	$s1,40($sp)
    ld	$ra,80($sp)
    ld	$s2,16($sp)
    # Line 383
    ld	$a5,48($sp)
    # Line 384
    ld	$a6,56($sp)
    sw	$a6,30204($s0)
    # Line 382
    ldc1	$f15,0($sp)
    # Line 383
    sw	$a5,30324($s0)
    # Line 382
    swc1	$f15,30336($s0)
.L0d96992c:
    # Line 387
    li	$v0,1
    sb	$v0,30476($s0)
.L0d969934:
    ld	$s0,64($sp)
    # Line 388
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d969944:
    # Line 292
    move	$v0,$zero
    # Line 295
    andi	$a7,$v0,0xff
.L0d96994c:
    beqz	$a7,.L0d969984
    nop
    # Line 297
    lw	$t9,0($s1)
    jalr	$t9
    move	$a0,$s0
    # Line 388
    ld	$gp,72($sp)
    # Line 299
    li	$v0,1
    sb	$v0,30476($s0)
    ld	$ra,80($sp)
    # Line 388
    ld	$s0,64($sp)
    ld	$s1,40($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d969984:
    # Line 300
    c.lt.s	$f5,$f4
    bc1f	.L0d9699ac
    nop
    # Line 305
    lw	$v1,30492($s0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f7
    sd	$s3,88($sp)
    b	.L0d9697f0
    cvt.s.l	$f7,$f7
.L0d9699ac:
    # Line 307
    lw	$a0,30496($s0)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f7
    sd	$s3,88($sp)
    b	.L0d9697f0
    cvt.s.l	$f7,$f7
.L0d9699c8:
    # Line 314
    lw	$a2,30324($s0)
    # Line 313
    lwc1	$f9,30336($s0)
    # Line 319
    trunc.l.s	$f8,$f7
    # Line 318
    sw	$zero,30324($s0)
    # Line 317
    swc1	$f6,30336($s0)
    # Line 319
    dmfc1	$a1,$f8
    sw	$a1,30204($s0)
    # Line 320
    lw	$t9,0($s1)
    ld	$s2,16($sp)
    # Line 314
    sd	$a2,48($sp)
    # Line 320
    move	$a0,$s0
    jalr	$t9
    # Line 313
    sdc1	$f9,0($sp)
    ld	$s1,40($sp)
    ld	$ra,80($sp)
    # Line 326
    li	$v0,1
    sb	$v0,30476($s0)
    # Line 323
    ld	$a3,48($sp)
    # Line 324
    ld	$a4,56($sp)
    sw	$a4,30204($s0)
    # Line 322
    ldc1	$f10,0($sp)
    # Line 323
    sw	$a3,30324($s0)
    # Line 327
    b	.L0d969934
    # Line 322
    swc1	$f10,30336($s0)
.end __glCrmOffsetSpan

# Function: __glCrmOffsetStippledSpan
# Declared: Line 391 (Source lines: 392-563)
# Address: 0x0d969a30 - 0x0d969fac (Size: 1404 bytes, Frame: 240)
.globl __glCrmOffsetStippledSpan
.ent __glCrmOffsetStippledSpan
__glCrmOffsetStippledSpan:
    # Line 392
    addiu	$sp,$sp,-624
    sd	$s1,544($sp)
    # Line 411
    lw	$s1,30248($a0)
    # Line 392
    sd	$s2,576($sp)
    # Line 403
    lw	$s2,30472($a0)
    # Line 392
    sd	$s0,552($sp)
    # Line 420
    lwc1	$f4,30504($a0)
    # Line 407
    lwc1	$f0,30484($a0)
    # Line 392
    sdc1	$f20,520($sp)
    # Line 414
    lwc1	$f20,30500($a0)
    # Line 392
    sd	$s3,568($sp)
    # Line 423
    mtc1	$zero,$f5
    # Line 393
    lw	$s3,12224($a0)
    # Line 408
    trunc.l.s	$f0,$f0
    # Line 392
    move	$s0,$a0
    sd	$ra,584($sp)
    lui	$t8,0xe
    # Line 423
    c.lt.s	$f20,$f4
    # Line 392
    addiu	$t8,$t8,29532
    sd	$s6,560($sp)
    # Line 393
    sll	$s3,$s3,0x2
    # Line 408
    dmfc1	$s6,$f0
    sd	$gp,536($sp)
    # Line 392
    addu	$gp,$t9,$t8
    # Line 393
    addu	$s3,$a0,$s3
    addiu	$s3,$s3,12164
    # Line 408
    sll	$s6,$s6,0x0
    # Line 423
    bc1f	.L0d969adc
    # Line 408
    sw	$s6,30204($a0)
    # Line 423
    c.lt.s $f5,$f20
    # Line 426
    li	$a0,1
    # Line 423
    bc1f .L0d969adc
    # Line 426
    mtc1	$s1,$f6
    cvt.s.w	$f6,$f6
    sub.s	$f6,$f20,$f6
    c.lt.s $f6,$f4
    bc1f .L0d969e8c
    nop
    c.lt.s $f5,$f6
    bc1f .L0d969e8c
    nop
    b	.L0d969e94
    # Line 429
    andi	$v1,$a0,0xff
.L0d969adc:
    # Line 426
    mtc1	$s1,$f6
    cvt.s.w	$f6,$f6
    sub.s	$f6,$f20,$f6
    c.lt.s $f6,$f4
    bc1f .L0d969b0c
    move	$a0,$zero
    c.lt.s $f5,$f6
    bc1f .L0d969b08
    li	$a0,1
    b	.L0d969b10
    c.lt.s $f4,$f20
.L0d969b08:
    move	$a0,$zero
.L0d969b0c:
    c.lt.s $f4,$f20
.L0d969b10:
    bc1f .L0d969b30
    nop
    # Line 439
    lw	$t9,30492($s0)
    dsll32	$t9,$t9,0x0
    dsrl32	$t9,$t9,0x0
    dmtc1	$t9,$f6
    b	.L0d969b44
    cvt.s.l	$f6,$f6
.L0d969b30:
    # Line 441
    lw	$ra,30496($s0)
    dsll32	$ra,$ra,0x0
    dsrl32	$ra,$ra,0x0
    dmtc1	$ra,$f6
    cvt.s.l	$f6,$f6
.L0d969b44:
    # Line 445
    andi	$at,$a0,0xff
    sdc1	$f22,512($sp)
    beqz	$at,.L0d969f40
    sd	$s7,528($sp)
.L0d969b54:
    # Line 461
    trunc.l.s	$f7,$f6
    lw	$s7,30324($s0)
    c.le.s $f4,$f20
    sd	$s5,608($sp)
    dmfc1	$a2,$f7
    sra	$s5,$s1,0x5
    lwc1	$f22,30336($s0)
    sd	$s4,592($sp)
    bc1f .L0d969cfc
    sll	$a2,$a2,0x0
    # Line 482
    sub.s	$f20,$f20,$f4
    ldc1	$f21,_lit8_3ff0000000000000
    cvt.d.s	$f20,$f20
    add.d	$f20,$f20,$f21
    # Line 486
    sw	$a2,30204($s0)
    # Line 482
    cvt.s.d	$f20,$f20
    # Line 485
    sw	$zero,30324($s0)
    # Line 484
    swc1	$f5,30336($s0)
    # Line 483
    trunc.w.s	$f8,$f20
    swc1	$f8,30248($s0)
    # Line 487
    lw	$t9,0($s3)
    move	$a0,$s0
    jalr	$t9
    # Line 483
    mfc1	$s4,$f8
    # Line 495
    sw	$s1,30248($s0)
    # Line 494
    sw	$s6,30204($s0)
    # Line 495
    sra	$a0,$s4,0x5
    # Line 493
    sw	$s7,30324($s0)
    # Line 497
    addiu	$a5,$sp,0
    # Line 495
    blez	$a0,.L0d969f2c
    # Line 492
    swc1	$f22,30336($s0)
    # Line 495
    addiu	$a4,$sp,0
    andi	$a3,$a0,0x3
    addiu	$a5,$sp,0
    sll	$a2,$a0,0x2
    beqz	$a3,.L0d969bf8
    addu	$a2,$sp,$a2
.L0d969be8:
    addiu	$a3,$a3,-1
    # Line 497
    addiu	$a4,$a4,4
    bnez	$a3,.L0d969be8
    # Line 498
    sw	$zero,-4($a4)
.L0d969bf8:
    sra	$a3,$a0,0x2
    beqz	$a3,.L0d969c28
    nop
    nop
    nop
    nop
.L0d969c10:
    sw	$zero,12($a4)
    sw	$zero,8($a4)
    # Line 497
    addiu	$a4,$a4,16
    # Line 498
    sw	$zero,-12($a4)
    # Line 497
    bne	$a4,$a2,.L0d969c10
    # Line 498
    sw	$zero,-16($a4)
.L0d969c28:
    # Line 502
    li	$t2,-32
    and	$t2,$s4,$t2
    mtc1	$t2,$f21
    cvt.s.w	$f21,$f21
    sub.s	$f21,$f20,$f21
    li	$t0,-1
    addiu	$a0,$a0,1
    trunc.w.s	$f21,$f21
    addiu	$a2,$s5,1
    sll	$a4,$a0,0x2
    sll	$a2,$a2,0x2
    addu	$a3,$a4,$s2
    mfc1	$t1,$f21
    addu	$a2,$s2,$a2
    slt	$a7,$s5,$a0
    lw	$a6,0($a3)
    addu	$a4,$a4,$a5
    srlv	$t0,$t0,$t1
    and	$a6,$a6,$t0
    bnez	$a7,.L0d969ccc
    sw	$a6,-4($a4)
    subu	$a6,$s5,$a0
    addiu	$a6,$a6,1
    andi	$a7,$a6,0x1
    beqz	$a7,.L0d969ca0
    sra	$t0,$a6,0x1
    # Line 507
    addiu	$a4,$a4,4
    # Line 508
    lw	$a7,0($a3)
    # Line 507
    addiu	$a3,$a3,4
    # Line 508
    sw	$a7,-4($a4)
.L0d969ca0:
    beqz	$t0,.L0d969ccc
    nop
    nop
    nop
.L0d969cb0:
    lw	$t2,0($a3)
    # Line 507
    addiu	$a3,$a3,8
    # Line 508
    sw	$t2,0($a4)
    # Line 507
    addiu	$a4,$a4,8
    # Line 508
    lw	$t1,-4($a3)
    # Line 507
    bne	$a3,$a2,.L0d969cb0
    # Line 508
    sw	$t1,-4($a4)
.L0d969ccc:
    # Line 510
    sw	$a5,30472($s0)
    # Line 511
    lw	$t9,0($s3)
    ld	$s5,608($sp)
    ld	$s4,592($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,584($sp)
    # Line 516
    sw	$s2,30472($s0)
    # Line 515
    sw	$s6,30204($s0)
    # Line 514
    sw	$s7,30324($s0)
    # Line 516
    b	.L0d969e58
    # Line 513
    swc1	$f22,30336($s0)
.L0d969cfc:
    # Line 531
    trunc.w.s	$f23,$f20
    swc1	$f23,30248($s0)
    # Line 532
    lw	$t9,0($s3)
    sd	$a2,600($sp)
    move	$a0,$s0
    jalr	$t9
    # Line 531
    mfc1	$s4,$f23
    # Line 532
    sra	$a0,$s4,0x5
    ld	$a5,600($sp)
    blez	$a0,.L0d969f34
    mtc1	$zero,$f4
    sll	$a2,$a0,0x2
    addiu	$a6,$sp,256
    andi	$a3,$a0,0x3
    addu	$a2,$a6,$a2
    beqz	$a3,.L0d969d50
    move	$a4,$a6
.L0d969d40:
    addiu	$a3,$a3,-1
    # Line 536
    addiu	$a4,$a4,4
    bnez	$a3,.L0d969d40
    # Line 537
    sw	$zero,-4($a4)
.L0d969d50:
    sra	$a3,$a0,0x2
    beqz	$a3,.L0d969d78
    nop
    nop
.L0d969d60:
    sw	$zero,12($a4)
    sw	$zero,8($a4)
    # Line 536
    addiu	$a4,$a4,16
    # Line 537
    sw	$zero,-12($a4)
    # Line 536
    bne	$a4,$a2,.L0d969d60
    # Line 537
    sw	$zero,-16($a4)
.L0d969d78:
    # Line 541
    li	$t3,-32
    and	$t3,$s4,$t3
    mtc1	$t3,$f25
    cvt.s.w	$f25,$f25
    sub.s	$f25,$f20,$f25
    li	$t1,-1
    addiu	$a0,$a0,1
    trunc.w.s	$f25,$f25
    addiu	$a2,$s5,1
    sll	$a4,$a0,0x2
    sll	$a2,$a2,0x2
    addu	$a3,$a4,$s2
    mfc1	$t2,$f25
    addu	$a2,$s2,$a2
    slt	$t0,$s5,$a0
    lw	$a7,0($a3)
    addu	$a4,$a4,$a6
    srlv	$t1,$t1,$t2
    and	$a7,$a7,$t1
    bnez	$t0,.L0d969e1c
    sw	$a7,-4($a4)
    subu	$a7,$s5,$a0
    addiu	$a7,$a7,1
    andi	$t0,$a7,0x1
    beqz	$t0,.L0d969df0
    sra	$t1,$a7,0x1
    # Line 546
    addiu	$a4,$a4,4
    # Line 547
    lw	$t0,0($a3)
    # Line 546
    addiu	$a3,$a3,4
    # Line 547
    sw	$t0,-4($a4)
.L0d969df0:
    beqz	$t1,.L0d969e1c
    nop
    nop
    nop
.L0d969e00:
    lw	$t3,0($a3)
    # Line 546
    addiu	$a3,$a3,8
    # Line 547
    sw	$t3,0($a4)
    # Line 546
    addiu	$a4,$a4,8
    # Line 547
    lw	$t2,-4($a3)
    # Line 546
    bne	$a3,$a2,.L0d969e00
    # Line 547
    sw	$t2,-4($a4)
.L0d969e1c:
    # Line 553
    sw	$s1,30248($s0)
    # Line 552
    sw	$a6,30472($s0)
    # Line 551
    sw	$a5,30204($s0)
    # Line 550
    sw	$zero,30324($s0)
    # Line 549
    swc1	$f4,30336($s0)
    # Line 554
    lw	$t9,0($s3)
    ld	$s5,608($sp)
    ld	$s4,592($sp)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,584($sp)
    # Line 559
    sw	$s2,30472($s0)
    # Line 558
    sw	$s6,30204($s0)
    # Line 557
    sw	$s7,30324($s0)
    # Line 556
    swc1	$f22,30336($s0)
.L0d969e58:
    ld	$s7,528($sp)
    ldc1	$f22,512($sp)
    # Line 563
    ld	$gp,536($sp)
    # Line 562
    li	$v0,1
    sb	$v0,30476($s0)
    # Line 563
    ld	$s0,552($sp)
    ld	$s1,544($sp)
    ld	$s2,576($sp)
    ld	$s3,568($sp)
    ld	$s6,560($sp)
    ldc1	$f20,520($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0d969e8c:
    # Line 426
    move	$a0,$zero
    # Line 429
    andi	$v1,$a0,0xff
.L0d969e94:
    beqz	$v1,.L0d969ed8
    nop
    # Line 431
    lw	$t9,0($s3)
    jalr	$t9
    move	$a0,$s0
    # Line 563
    ld	$gp,536($sp)
    # Line 433
    li	$v0,1
    sb	$v0,30476($s0)
    # Line 563
    ld	$s0,552($sp)
    ld	$s1,544($sp)
    ld	$s2,576($sp)
    ld	$ra,584($sp)
    ld	$s3,568($sp)
    ld	$s6,560($sp)
    ldc1	$f20,520($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0d969ed8:
    # Line 434
    c.lt.s	$f4,$f20
    bc1f	.L0d969f08
    nop
    # Line 439
    lw	$v1,30492($s0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f6
    sdc1	$f22,512($sp)
    sd	$s7,528($sp)
    sd	$s5,608($sp)
    b	.L0d969b54
    cvt.s.l	$f6,$f6
.L0d969f08:
    # Line 441
    lw	$a0,30496($s0)
    dsll32	$a0,$a0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f6
    sdc1	$f22,512($sp)
    sd	$s7,528($sp)
    sd	$s5,608($sp)
    b	.L0d969b54
    cvt.s.l	$f6,$f6
.L0d969f2c:
    b	.L0d969c28
    # Line 497
    move	$a0,$zero
.L0d969f34:
    # Line 536
    addiu	$a6,$sp,256
    b	.L0d969d78
    move	$a0,$zero
.L0d969f40:
    # Line 447
    lwc1	$f22,30336($s0)
    # Line 451
    swc1	$f5,30336($s0)
    # Line 453
    trunc.l.s	$f7,$f6
    # Line 448
    lw	$s7,30324($s0)
    # Line 452
    sw	$zero,30324($s0)
    # Line 453
    dmfc1	$a1,$f7
    sw	$a1,30204($s0)
    # Line 454
    lw	$t9,0($s3)
    jalr	$t9
    move	$a0,$s0
    # Line 563
    ld	$gp,536($sp)
    # Line 460
    li	$v0,1
    sb	$v0,30476($s0)
    # Line 458
    sw	$s6,30204($s0)
    # Line 457
    sw	$s7,30324($s0)
    # Line 456
    swc1	$f22,30336($s0)
    # Line 563
    ld	$s0,552($sp)
    ld	$s1,544($sp)
    ld	$s2,576($sp)
    ld	$s3,568($sp)
    ld	$s6,560($sp)
    ld	$ra,584($sp)
    ld	$s7,528($sp)
    ldc1	$f20,520($sp)
    ldc1	$f22,512($sp)
    jr	$ra
    addiu	$sp,$sp,624
.end __glCrmOffsetStippledSpan

# Function: __glCrmDumpPerPixelSpan
# Declared: Line 572 (Source lines: 573-764)
# Address: 0x0d969fb0 - 0x0d96a9c0 (Size: 2576 bytes, Frame: 160)
.globl __glCrmDumpPerPixelSpan
.ent __glCrmDumpPerPixelSpan
__glCrmDumpPerPixelSpan:
    # Line 579
    lw	$t2,30200($a0)
    # Line 573
    addiu	$sp,$sp,-544
    sd	$s0,312($sp)
    # Line 589
    lw	$s0,32184($a0)
    # Line 573
    sd	$s3,328($sp)
    # Line 578
    lw	$s3,30196($a0)
    sd	$s5,520($sp)
    sd	$s4,512($sp)
    sd	$ra,504($sp)
    sdc1	$f28,472($sp)
    sd	$s2,488($sp)
    sdc1	$f26,448($sp)
    sdc1	$f24,464($sp)
    sdc1	$f22,456($sp)
    sdc1	$f20,440($sp)
    sd	$gp,320($sp)
    # Line 573
    sd	$s1,304($sp)
    sd	$s6,496($sp)
    # Line 589
    lw	$v0,32188($a0)
    # Line 575
    lw	$t1,30436($a0)
    # Line 634
    li	$a2,-1
    # Line 603
    move	$s6,$zero
    # Line 589
    sd	$v0,384($sp)
    # Line 573
    lui	$at,0xe
    sd	$s8,336($sp)
    # Line 591
    andi	$s8,$t1,0x4
    # Line 573
    move	$s1,$a0
    addiu	$at,$at,28124
    # Line 591
    lw	$v0,32100($a0)
    sw	$v0,0($sp)
    beqz	$s8,.L0d96a048
    # Line 573
    addu	$gp,$t9,$at
    # Line 594
    lw	$v1,30204($a0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    cvt.s.l	$f0,$f0
    swc1	$f0,4($sp)
.L0d96a048:
    # Line 596
    lwc1	$f20,30208($s1)
    # Line 597
    lwc1	$f22,30212($s1)
    # Line 598
    lwc1	$f24,30216($s1)
    # Line 599
    andi	$a0,$t1,0x8
    lwc1	$f26,30220($s1)
    beqz	$a0,.L0d96a964
    sd	$s7,528($sp)
    # Line 603
    lbu	$t8,28216($s1)
    # Line 602
    lw	$s7,28208($s1)
    # Line 603
    beqz	$t8,.L0d96a95c
    # Line 602
    lw	$s7,232($s7)
    # Line 603
    lw	$t9,32088($s1)
    sll	$t9,$t9,0x10
    bltz	$t9,.L0d96a95c
    nop
.L0d96a084:
    beqz	$s6,.L0d96a990
    # Line 607
    lui	$at,0xff
    sdc1	$f30,432($sp)
    # Line 613
    lw	$v1,32500($s1)
    sw	$v1,36($sp)
    # Line 609
    ldc1	$f1,32376($s1)
    # Line 610
    ldc1	$f2,32384($s1)
    # Line 611
    ldc1	$f3,32392($s1)
    # Line 612
    lw	$v0,32496($s1)
    # Line 607
    lw	$ra,0($sp)
    ori	$at,$at,0xffff
    # Line 612
    sw	$v0,32($sp)
    # Line 607
    lui	$v0,0x300
    # Line 611
    sdc1	$f3,24($sp)
    # Line 607
    and	$ra,$ra,$at
    lui	$at,0x3
    # Line 610
    sdc1	$f2,16($sp)
    # Line 607
    nor	$at,$at,$zero
    or	$ra,$ra,$v0
    # Line 609
    sdc1	$f1,8($sp)
    # Line 607
    and	$ra,$ra,$at
    lui	$at,0x2
    or	$ra,$ra,$at
    sw	$ra,0($sp)
.L0d96a0e4:
    # Line 634
    sll	$ra,$t2,0x6
    # Line 626
    lw	$a0,1912($s1)
    # Line 625
    lwc1	$f30,30244($s1)
    # Line 634
    li	$t9,1
    # Line 626
    li	$a5,4354
    # Line 634
    ldc1	$f7,8($sp)
    dsll32	$t9,$t9,0xb
    andi	$t8,$t1,0x3000
    # Line 626
    beq	$a5,$a0,.L0d96a974
    sd	$a0,408($sp)
.L0d96a10c:
    # Line 634
    lw	$a0,30248($s1)
    ldc1	$f8,24($sp)
    addiu	$s4,$a0,-1
    ldc1	$f9,16($sp)
    mtc1	$zero,$f14
    bltz	$s4,.L0d96a804
    ldc1	$f15,_lit8_3ff0000000000000
    lw	$a1,32($sp)
    lwc1	$f6,4($sp)
    ldc1	$f12,_lit8_406fe00000000000
    lwc1	$f13,_lit_45800000
    ldc1	$f10,_lit8_41c0000000000000
    lwc1	$f11,_lit_42800000
    lwc1	$f28,72($sp)
    sd	$ra,368($sp)
    andi	$ra,$t1,0x2000
    sd	$ra,360($sp)
    sd	$t8,352($sp)
    andi	$t8,$t1,0x1000
    sd	$t8,416($sp)
    lwc1	$f4,60($sp)
    lw	$s5,0($sp)
    move	$s2,$zero
    li	$a3,3
    lw	$t3,36($sp)
    li	$a6,2048
    sd	$s5,376($sp)
    srl	$s5,$s5,0x18
    li	$a7,2049
    sdc1	$f4,296($sp)
    dsrav	$at,$t9,$t3
    li	$t0,9729
    sd	$at,400($sp)
    sra	$t3,$t3,0x1
    li	$a4,1
    sd	$s5,424($sp)
    dsrav	$t9,$t9,$a1
    andi	$s5,$t1,0x1
    sd	$t9,392($sp)
    sra	$a1,$a1,0x2
    or	$a1,$a1,$t3
    b	.L0d96a39c
    sd	$a1,344($sp)
    nop
    nop
.L0d96a1c0:
    # Line 643
    sw	$a0,84($sp)
    lw	$at,84($sp)
    beqz	$s2,.L0d96a7dc
    sw	$at,8328($s0)
.L0d96a1d0:
    # Line 669
    beqz	$s8,.L0d96a208
    nop
.L0d96a1d8:
    # Line 676
    mul.s	$f18,$f11,$f6
    cvt.d.s	$f18,$f18
    sdc1	$f18,200($sp)
    ldc1	$f17,200($sp)
    trunc.l.d	$f17,$f17
    sdc1	$f17,208($sp)
    ldc1	$f16,208($sp)
    sdc1	$f16,8648($s0)
    # Line 677
    lw	$v0,30324($s1)
    mtc1	$v0,$f5
    cvt.s.w	$f5,$f5
    add.s	$f6,$f5,$f6
.L0d96a208:
    beqz	$s7,.L0d96a2b8
    # Line 707
    ld	$t8,416($sp)
    # Line 677
    beqz	$s6,.L0d96a670
    # Line 682
    ld	$t2,400($sp)
    # Line 681
    ld	$t3,392($sp)
    dmtc1	$t3,$f3
    cvt.d.l	$f3,$f3
    mul.d	$f3,$f3,$f7
    sdc1	$f3,216($sp)
    ldc1	$f2,216($sp)
    # Line 682
    dmtc1	$t2,$f1
    # Line 681
    trunc.l.d	$f2,$f2
    dmfc1	$t1,$f2
    # Line 682
    cvt.d.l	$f1,$f1
    # Line 681
    daddiu	$t1,$t1,2048
    sd	$t1,224($sp)
    # Line 682
    mul.d	$f1,$f1,$f9
    # Line 681
    ldc1	$f29,224($sp)
    # Line 682
    sdc1	$f1,232($sp)
    ldc1	$f0,232($sp)
    trunc.l.d	$f0,$f0
    dmfc1	$a1,$f0
    # Line 683
    mul.d	$f31,$f10,$f8
    # Line 682
    daddiu	$a1,$a1,2048
    sd	$a1,240($sp)
    # Line 683
    cvt.s.d	$f31,$f31
    # Line 682
    ldc1	$f25,240($sp)
    # Line 683
    swc1	$f31,248($sp)
    lwc1	$f27,248($sp)
    trunc.w.s	$f27,$f27
    # Line 681
    sdc1	$f29,8480($s0)
    # Line 683
    mfc1	$a0,$f27
    # Line 682
    sdc1	$f25,8488($s0)
    # Line 683
    addiu	$a0,$a0,2048
    sw	$a0,252($sp)
    lw	$v1,252($sp)
    sw	$v1,8496($s0)
    # Line 686
    ldc1	$f23,32432($s1)
    # Line 685
    ldc1	$f21,32416($s1)
    # Line 684
    ldc1	$f19,32400($s1)
    # Line 686
    add.d	$f8,$f23,$f8
    # Line 685
    add.d	$f9,$f21,$f9
    # Line 684
    add.d	$f7,$f19,$f7
.L0d96a2b4:
    # Line 707
    ld	$t8,416($sp)
.L0d96a2b8:
    ld	$t9,408($sp)
    # Line 727
    mov.s	$f5,$f30
    # Line 707
    beqz	$t8,.L0d96a570
    ld	$a1,360($sp)
.L0d96a2c8:
    beq	$a5,$t9,.L0d96a610
    nop
    # Line 727
    mov.s	$f28,$f30
.L0d96a2d4:
    beqz	$s5,.L0d96a2fc
    nop
.L0d96a2dc:
    # Line 731
    cvt.d.s	$f4,$f28
    mul.d	$f4,$f4,$f12
    cvt.s.d	$f4,$f4
    mul.s	$f4,$f13,$f4
    trunc.w.s	$f4,$f4
    swc1	$f4,280($sp)
    lw	$ra,280($sp)
    sw	$ra,8568($s0)
.L0d96a2fc:
    # Line 733
    lwc1	$f30,30432($s1)
.L0d96a300:
    beqz	$s5,.L0d96a584
    add.s	$f30,$f30,$f5
.L0d96a308:
    # Line 738
    beqz	$s7,.L0d96a318
    nop
    beqz	$s6,.L0d96a35c
    nop
.L0d96a318:
    # Line 739
    trunc.w.s	$f2,$f20
    trunc.w.s	$f0,$f24
    trunc.w.s	$f1,$f22
    mfc1	$a1,$f2
    trunc.w.s	$f31,$f26
    mfc1	$a0,$f0
    mfc1	$v1,$f1
    sll	$a1,$a1,0x18
    mfc1	$v0,$f31
    sll	$a0,$a0,0x8
    sll	$v1,$v1,0x10
    or	$v1,$v1,$a0
    or	$v0,$v0,$a1
    or	$v0,$v0,$v1
    sw	$v0,276($sp)
    lw	$at,276($sp)
    sw	$at,8400($s0)
.L0d96a35c:
    # Line 744
    lwc1	$f16,30296($s1)
    # Line 743
    lwc1	$f5,30292($s1)
    # Line 742
    lwc1	$f4,30288($s1)
    # Line 741
    lwc1	$f3,30284($s1)
    # Line 744
    add.s	$f26,$f16,$f26
    # Line 743
    add.s	$f24,$f5,$f24
    # Line 742
    add.s	$f22,$f4,$f22
    # Line 741
    add.s	$f20,$f3,$f20
.L0d96a37c:
    # Line 757
    sltiu	$t2,$s2,1
    # Line 755
    sw	$zero,292($sp)
    # Line 634
    addiu	$s4,$s4,-1
    # Line 755
    lw	$t1,292($sp)
    # Line 757
    movn	$s2,$a4,$t2
    # Line 760
    addiu	$s3,$s3,1
    # Line 634
    beq	$s4,$a2,.L0d96a804
    # Line 755
    sw	$t1,10736($s0)
.L0d96a39c:
    # Line 634
    beqz	$s2,.L0d96a5c8
.L0d96a3a0:
    # Line 641
    ld	$t8,424($sp)
    sll	$a0,$s3,0x6
    sw	$a0,80($sp)
    lw	$t3,80($sp)
    beq	$a3,$t8,.L0d96a1c0
    sw	$t3,8320($s0)
    # Line 649
    bnez	$s2,.L0d96a1d0
    nop
.L0d96a3c0:
    beqz	$s6,.L0d96a1d0
    # Line 650
    ld	$ra,384($sp)
    ld	$t3,344($sp)
    sw	$t3,92($sp)
    lw	$t2,92($sp)
    # Line 652
    ld	$t1,392($sp)
    # Line 650
    lw	$a1,92($sp)
    sw	$t2,8500($s0)
    # Line 652
    dmtc1	$t1,$f2
    # Line 650
    sw	$a1,8500($ra)
    # Line 652
    ldc1	$f1,32400($s1)
    cvt.d.l	$f2,$f2
    mul.d	$f1,$f1,$f2
    sdc1	$f1,96($sp)
    ldc1	$f0,96($sp)
    # Line 654
    ld	$a0,400($sp)
    # Line 652
    trunc.l.d	$f0,$f0
    sdc1	$f0,104($sp)
    ldc1	$f31,104($sp)
    ldc1	$f29,104($sp)
    # Line 654
    dmtc1	$a0,$f27
    # Line 652
    sdc1	$f31,8504($s0)
    sdc1	$f29,8504($ra)
    # Line 654
    ldc1	$f18,32416($s1)
    cvt.d.l	$f27,$f27
    mul.d	$f18,$f18,$f27
    sdc1	$f18,112($sp)
    ldc1	$f17,112($sp)
    trunc.l.d	$f17,$f17
    sdc1	$f17,120($sp)
    ldc1	$f16,120($sp)
    ldc1	$f5,120($sp)
    sdc1	$f16,8520($s0)
    sdc1	$f5,8520($ra)
    # Line 656
    ldc1	$f4,32432($s1)
    mul.d	$f4,$f4,$f10
    cvt.s.d	$f4,$f4
    swc1	$f4,128($sp)
    lwc1	$f3,128($sp)
    trunc.w.s	$f3,$f3
    swc1	$f3,132($sp)
    lw	$v1,132($sp)
    lw	$v0,132($sp)
    sw	$v1,8536($s0)
    sw	$v0,8536($ra)
    # Line 659
    ldc1	$f1,32408($s1)
    mul.d	$f1,$f1,$f2
    sdc1	$f1,136($sp)
    ldc1	$f0,136($sp)
    trunc.l.d	$f0,$f0
    sdc1	$f0,144($sp)
    ldc1	$f31,144($sp)
    ldc1	$f29,144($sp)
    sdc1	$f31,8512($s0)
    sdc1	$f29,8512($ra)
    # Line 661
    ldc1	$f25,32424($s1)
    mul.d	$f25,$f25,$f27
    sdc1	$f25,152($sp)
    ldc1	$f23,152($sp)
    trunc.l.d	$f23,$f23
    sdc1	$f23,160($sp)
    ldc1	$f21,160($sp)
    ldc1	$f19,160($sp)
    sdc1	$f21,8528($s0)
    sdc1	$f19,8528($ra)
    # Line 663
    ldc1	$f18,32440($s1)
    mul.d	$f18,$f18,$f10
    cvt.s.d	$f18,$f18
    swc1	$f18,168($sp)
    lwc1	$f17,168($sp)
    trunc.w.s	$f17,$f17
    swc1	$f17,172($sp)
    lw	$at,172($sp)
    lw	$t9,172($sp)
    sw	$at,8540($s0)
    beqz	$s8,.L0d96a520
    sw	$t9,8540($ra)
    # Line 666
    ld	$t8,384($sp)
    sd	$zero,176($sp)
    ldc1	$f16,176($sp)
    ldc1	$f5,176($sp)
    # Line 667
    sd	$zero,184($sp)
    ldc1	$f4,184($sp)
    ldc1	$f3,184($sp)
    # Line 666
    sdc1	$f16,8656($s0)
    sdc1	$f5,8656($t8)
    # Line 667
    sdc1	$f4,8664($s0)
    sdc1	$f3,8664($t8)
.L0d96a520:
    lw	$t9,1792($s1)
    andi	$t9,$t9,0x20
    beqz	$t9,.L0d96a558
    # Line 670
    ld	$at,384($sp)
    sw	$zero,192($sp)
    lw	$a0,192($sp)
    lw	$v1,192($sp)
    sw	$a0,8576($s0)
    sw	$v1,8576($at)
    # Line 671
    sw	$zero,196($sp)
    lw	$v0,196($sp)
    lw	$ra,196($sp)
    sw	$v0,8584($s0)
    sw	$ra,8584($at)
.L0d96a558:
    bnez	$s8,.L0d96a1d8
    nop
    b	.L0d96a208
    nop
    nop
    nop
.L0d96a570:
    # Line 707
    beqz	$a1,.L0d96a580
    nop
    bnez	$s6,.L0d96a2c8
    nop
.L0d96a580:
    # Line 733
    bnez	$s5,.L0d96a308
.L0d96a584:
    ld	$t1,352($sp)
    beqz	$t1,.L0d96a7b8
    nop
    # Line 748
    cvt.d.s	$f19,$f28
    lwc1	$f18,1624($s1)
    sub.d	$f19,$f15,$f19
    cvt.d.s	$f18,$f18
    cvt.d.s	$f17,$f20
    madd.d	$f17,$f17,$f18,$f19
    cvt.s.d	$f17,$f17
    trunc.w.s	$f17,$f17
    swc1	$f17,284($sp)
    lw	$t2,284($sp)
    sw	$t2,8400($s0)
.L0d96a5bc:
    # Line 752
    lwc1	$f19,30284($s1)
    b	.L0d96a37c
    add.s	$f20,$f19,$f20
.L0d96a5c8:
    # Line 637
    lw	$t9,0($sp)
    # Line 634
    ld	$t8,376($sp)
    lw	$t3,32096($s1)
    ld	$a0,384($sp)
    # Line 638
    ld	$t1,368($sp)
    # Line 634
    beq	$t3,$t8,.L0d96a5f8
    # Line 637
    ld	$at,376($sp)
    lw	$v0,32184($s1)
    sw	$at,8288($v0)
    lw	$ra,32188($s1)
    sw	$t9,8288($ra)
    sw	$t9,32096($s1)
.L0d96a5f8:
    # Line 638
    sw	$t1,76($sp)
    lw	$a1,76($sp)
    lw	$v1,76($sp)
    sw	$a1,8324($s0)
    b	.L0d96a3a0
    sw	$v1,8324($a0)
.L0d96a610:
    # Line 710
    c.lt.s	$f30,$f14
    mov.s	$f5,$f30
    # Line 712
    lw	$a0,1588($s1)
    # Line 710
    bc1f	.L0d96a628
    mov.s	$f4,$f30
    # Line 711
    neg.s	$f4,$f30
.L0d96a628:
    # Line 712
    beq	$a6,$a0,.L0d96a860
    nop
    beq	$a7,$a0,.L0d96a8dc
    nop
    beq	$t0,$a0,.L0d96a7cc
    # Line 720
    lwc1	$f29,68($sp)
.L0d96a640:
    # Line 722
    c.lt.s $f28,$f14
    bc1f .L0d96a660
    nop
    # Line 727
    bnez	$s5,.L0d96a2dc
    # Line 724
    mov.s	$f28,$f14
    b	.L0d96a300
    # Line 733
    lwc1	$f30,30432($s1)
    nop
.L0d96a660:
    # Line 724
    lwc1	$f21,3544($s1)
    c.lt.s $f21,$f28
    b	.L0d96a2d4
    movt.s	$f28,$f21,$fcc2
.L0d96a670:
    sdc1	$f9,16($sp)
    sdc1	$f8,24($sp)
    sdc1	$f7,8($sp)
    swc1	$f6,4($sp)
    # Line 690
    lwc1	$f15,52($sp)
    lwc1	$f14,3544($s1)
    div.s	$f14,$f14,$f15
    # Line 695
    swc1	$f26,268($sp)
    swc1	$f24,264($sp)
    swc1	$f22,260($sp)
    swc1	$f20,256($sp)
    # Line 696
    lwc1	$f18,40($sp)
    lwc1	$f17,56($sp)
    lwc1	$f16,48($sp)
    lwc1	$f15,44($sp)
    lw	$t9,12524($s1)
    mul.s	$f17,$f14,$f17
    mul.s	$f16,$f14,$f16
    addiu	$a1,$sp,256
    mul.s	$f15,$f14,$f15
    move	$a0,$s1
    jalr	$t9
    mul.s	$f14,$f14,$f18
    # Line 697
    lwc1	$f3,256($sp)
    lwc1	$f1,264($sp)
    lwc1	$f2,260($sp)
    lwc1	$f0,268($sp)
    trunc.w.s	$f3,$f3
    trunc.w.s	$f1,$f1
    trunc.w.s	$f2,$f2
    mfc1	$ra,$f3
    trunc.w.s	$f0,$f0
    mfc1	$t9,$f1
    ldc1	$f9,16($sp)
    mfc1	$t8,$f2
    sll	$ra,$ra,0x18
    ldc1	$f8,24($sp)
    mfc1	$t3,$f0
    sll	$t9,$t9,0x8
    ldc1	$f7,8($sp)
    sll	$t8,$t8,0x10
    lwc1	$f6,4($sp)
    or	$t8,$t8,$t9
    or	$t3,$t3,$ra
    or	$t3,$t3,$t8
    sw	$t3,272($sp)
    lw	$t2,272($sp)
    sw	$t2,8400($s0)
    # Line 703
    lwc1	$f29,56($sp)
    lwc1	$f31,30396($s1)
    # Line 701
    lwc1	$f23,30388($s1)
    # Line 702
    lwc1	$f27,30392($s1)
    # Line 703
    add.s	$f29,$f31,$f29
    swc1	$f29,56($sp)
    # Line 702
    lwc1	$f25,52($sp)
    # Line 700
    lwc1	$f19,30384($s1)
    # Line 702
    add.s	$f25,$f27,$f25
    swc1	$f25,52($sp)
    # Line 701
    lwc1	$f21,48($sp)
    # Line 699
    lwc1	$f17,30380($s1)
    # Line 701
    add.s	$f21,$f23,$f21
    swc1	$f21,48($sp)
    # Line 700
    lwc1	$f18,44($sp)
    ldc1	$f10,_lit8_41c0000000000000
    lwc1	$f11,_lit_42800000
    add.s	$f18,$f19,$f18
    swc1	$f18,44($sp)
    li	$a2,-1
    lwc1	$f16,40($sp)
    li	$a3,3
    li	$a4,1
    ldc1	$f12,_lit8_406fe00000000000
    li	$a5,4354
    li	$a6,2048
    lwc1	$f13,_lit_45800000
    li	$a7,2049
    mtc1	$zero,$f14
    ldc1	$f15,_lit8_3ff0000000000000
    # Line 699
    add.s	$f16,$f17,$f16
    li	$t0,9729
    b	.L0d96a2b4
    swc1	$f16,40($sp)
.L0d96a7b8:
    # Line 750
    trunc.w.s	$f4,$f20
    swc1	$f4,288($sp)
    lw	$at,288($sp)
    b	.L0d96a5bc
    sw	$at,8400($s0)
.L0d96a7cc:
    # Line 720
    lwc1	$f28,1620($s1)
    sub.s	$f29,$f29,$f4
    # Line 721
    b	.L0d96a640
    # Line 720
    mul.s	$f28,$f28,$f29
.L0d96a7dc:
    # Line 649
    ld	$v1,384($sp)
    # Line 645
    ld	$a1,368($sp)
    sw	$a1,88($sp)
    lw	$a0,88($sp)
    lw	$v0,88($sp)
    sw	$a0,8332($s0)
    # Line 649
    bnez	$s2,.L0d96a1d0
    # Line 645
    sw	$v0,8332($v1)
    b	.L0d96a3c0
    nop
.L0d96a804:
    ld	$s7,528($sp)
    ld	$s5,520($sp)
    ld	$s4,512($sp)
    ld	$s6,496($sp)
    ld	$s2,488($sp)
    ldc1	$f28,472($sp)
    ldc1	$f24,464($sp)
    ldc1	$f22,456($sp)
    ldc1	$f26,448($sp)
    ldc1	$f20,440($sp)
    ldc1	$f30,432($sp)
    # Line 764
    ld	$gp,320($sp)
    ld	$s0,312($sp)
    ld	$s3,328($sp)
    ld	$ra,504($sp)
    ld	$s8,336($sp)
    # Line 763
    li	$a2,0x8080
    # Line 764
    move	$v0,$zero
    # Line 763
    addu	$a2,$a2,$s1
    # Line 764
    ld	$s1,304($sp)
    addiu	$sp,$sp,544
    jr	$ra
    # Line 763
    sw	$zero,0($a2)
.L0d96a860:
    sdc1	$f9,16($sp)
    sdc1	$f8,24($sp)
    # Line 714
    ldc1	$f13,296($sp)
    sdc1	$f7,8($sp)
    # lw $t9, -22844($gp) # &powf
    swc1	$f6,4($sp)
    mul.s	$f13,$f4,$f13
    sdc1	$f5,480($sp)
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    ldc1	$f5,480($sp)
    lwc1	$f6,4($sp)
    ldc1	$f7,8($sp)
    ldc1	$f8,24($sp)
    ldc1	$f9,16($sp)
    li	$a2,-1
    ldc1	$f10,_lit8_41c0000000000000
    li	$a3,3
    li	$a4,1
    lwc1	$f11,_lit_42800000
    li	$a5,4354
    li	$a6,2048
    ldc1	$f12,_lit8_406fe00000000000
    li	$a7,2049
    lwc1	$f13,_lit_45800000
    mtc1	$zero,$f14
    li	$t0,9729
    ldc1	$f15,_lit8_3ff0000000000000
    b	.L0d96a640
    mov.s	$f28,$f0
.L0d96a8dc:
    sdc1	$f9,16($sp)
    sdc1	$f8,24($sp)
    sdc1	$f7,8($sp)
    swc1	$f6,4($sp)
    # Line 717
    lwc1	$f13,64($sp)
    mul.s	$f13,$f4,$f13
    # lw $t9, -22844($gp) # &powf
    mul.s	$f13,$f4,$f13
    sdc1	$f5,480($sp)
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    ldc1	$f5,480($sp)
    lwc1	$f6,4($sp)
    ldc1	$f7,8($sp)
    ldc1	$f8,24($sp)
    ldc1	$f9,16($sp)
    li	$a2,-1
    ldc1	$f10,_lit8_41c0000000000000
    li	$a3,3
    li	$a4,1
    lwc1	$f11,_lit_42800000
    li	$a5,4354
    li	$a6,2048
    ldc1	$f12,_lit8_406fe00000000000
    li	$a7,2049
    lwc1	$f13,_lit_45800000
    mtc1	$zero,$f14
    li	$t0,9729
    ldc1	$f15,_lit8_3ff0000000000000
    # Line 718
    b	.L0d96a640
    # Line 717
    mov.s	$f28,$f0
.L0d96a95c:
    # Line 603
    b	.L0d96a084
    li	$s6,1
.L0d96a964:
    # Line 622
    move	$s7,$zero
    move	$s6,$zero
    b	.L0d96a0e4
    sdc1	$f30,432($sp)
.L0d96a974:
    # Line 630
    lwc1	$f15,1616($s1)
    # Line 628
    lwc1	$f14,1608($s1)
    # Line 630
    swc1	$f15,68($sp)
    # Line 628
    swc1	$f14,60($sp)
    # Line 629
    mul.s	$f14,$f14,$f14
    # Line 630
    b	.L0d96a10c
    # Line 629
    swc1	$f14,64($sp)
.L0d96a990:
    sdc1	$f30,432($sp)
    # Line 615
    lwc1	$f16,30224($s1)
    # Line 616
    lwc1	$f17,30228($s1)
    # Line 617
    lwc1	$f18,30232($s1)
    # Line 619
    lwc1	$f21,30240($s1)
    # Line 618
    lwc1	$f19,30236($s1)
    # Line 619
    swc1	$f21,56($sp)
    # Line 618
    swc1	$f19,52($sp)
    # Line 617
    swc1	$f18,48($sp)
    # Line 616
    swc1	$f17,44($sp)
    b	.L0d96a0e4
    # Line 615
    swc1	$f16,40($sp)
.end __glCrmDumpPerPixelSpan

# Function: __glCrmDumpPerPixelStippledSpan
# Declared: Line 771 (Source lines: 772-997)
# Address: 0x0d96a9c0 - 0x0d96b4c4 (Size: 2820 bytes, Frame: 224)
.globl __glCrmDumpPerPixelStippledSpan
.ent __glCrmDumpPerPixelStippledSpan
__glCrmDumpPerPixelStippledSpan:
    # Line 778
    lw	$t2,30200($a0)
    # Line 790
    lw	$v1,32188($a0)
    # Line 793
    lw	$a1,30472($a0)
    # Line 772
    addiu	$sp,$sp,-608
    # Line 793
    sd	$a1,360($sp)
    # Line 790
    sd	$v1,416($sp)
    # Line 772
    sd	$s1,320($sp)
    # Line 790
    lw	$s1,32184($a0)
    # Line 772
    sd	$s4,328($sp)
    # Line 777
    lw	$s4,30196($a0)
    sdc1	$f28,512($sp)
    sdc1	$f24,504($sp)
    sdc1	$f22,496($sp)
    sdc1	$f26,488($sp)
    sd	$s5,560($sp)
    sd	$s0,552($sp)
    sd	$ra,544($sp)
    sd	$s8,536($sp)
    sd	$s3,528($sp)
    sd	$s6,520($sp)
    sd	$gp,336($sp)
    # Line 772
    sd	$s2,344($sp)
    # Line 774
    lw	$a3,30436($a0)
    # Line 776
    lw	$v0,30248($a0)
    # Line 772
    lui	$at,0xe
    # Line 776
    sd	$v0,368($sp)
    # Line 793
    andi	$a2,$a3,0x4
    # Line 772
    move	$s2,$a0
    addiu	$at,$at,25548
    # Line 792
    lw	$v0,32100($a0)
    sw	$v0,0($sp)
    # Line 793
    beqz	$a2,.L0d96aa5c
    # Line 772
    addu	$gp,$t9,$at
    # Line 796
    lw	$a4,30204($a0)
    dsll32	$a4,$a4,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f0
    cvt.s.l	$f0,$f0
    swc1	$f0,4($sp)
.L0d96aa5c:
    # Line 801
    lwc1	$f26,30220($s2)
    # Line 800
    lwc1	$f28,30216($s2)
    # Line 801
    andi	$a5,$a3,0x8
    # Line 799
    lwc1	$f24,30212($s2)
    # Line 801
    beqz	$a5,.L0d96b460
    # Line 798
    lwc1	$f22,30208($s2)
    # Line 805
    lbu	$a6,28216($s2)
    beqz	$a6,.L0d96b458
    nop
    lw	$a7,32088($s2)
    sll	$a7,$a7,0x10
    bltz	$a7,.L0d96b458
    move	$s5,$zero
.L0d96aa90:
    beqz	$s5,.L0d96b48c
    nop
    # Line 814
    lw	$t8,32500($s2)
    sw	$t8,36($sp)
    # Line 813
    lw	$t3,32496($s2)
    sw	$t3,32($sp)
    # Line 812
    ldc1	$f3,32392($s2)
    # Line 809
    lui	$t1,0xff
    lw	$t0,0($sp)
    # Line 812
    sdc1	$f3,24($sp)
    # Line 809
    ori	$t1,$t1,0xffff
    # Line 811
    ldc1	$f2,32384($s2)
    # Line 809
    and	$t0,$t0,$t1
    # Line 810
    ldc1	$f1,32376($s2)
    # Line 809
    lui	$t3,0x300
    lui	$t1,0x3
    # Line 811
    sdc1	$f2,16($sp)
    # Line 809
    or	$t0,$t0,$t3
    nor	$t1,$t1,$zero
    # Line 810
    sdc1	$f1,8($sp)
    # Line 809
    and	$t0,$t0,$t1
    lui	$t1,0x2
    or	$t0,$t0,$t1
    sw	$t0,0($sp)
.L0d96aaf0:
    # Line 820
    li	$s8,1
    sdc1	$f20,480($sp)
.L0d96aaf8:
    # Line 827
    lw	$t9,1912($s2)
    li	$a6,4354
    # Line 826
    lwc1	$f20,30244($s2)
    # Line 827
    beq	$a6,$t9,.L0d96b470
    sd	$t9,440($sp)
.L0d96ab0c:
    # Line 831
    ld	$ra,368($sp)
    beqz	$ra,.L0d96b404
    lwc1	$f12,_lit_42800000
    ldc1	$f11,_lit8_41c0000000000000
    ldc1	$f14,_lit8_3ff0000000000000
    lwc1	$f10,_lit_45800000
    ldc1	$f9,_lit8_406fe00000000000
    sdc1	$f30,592($sp)
    lwc1	$f30,72($sp)
    sd	$zero,448($sp)
    ldc1	$f7,8($sp)
    ldc1	$f6,16($sp)
    ldc1	$f8,24($sp)
    lwc1	$f5,4($sp)
    sd	$s7,584($sp)
    andi	$s7,$a3,0x2000
    sd	$s7,400($sp)
    sll	$t3,$t2,0x6
    sd	$t3,392($sp)
    lw	$a1,0($sp)
    sd	$a1,408($sp)
    li	$a5,3
    lwc1	$f4,60($sp)
    li	$a4,-1
    lw	$v0,36($sp)
    li	$v1,1
    li	$t1,9729
    sdc1	$f4,304($sp)
    dsll32	$v1,$v1,0xb
    li	$t0,2049
    dsrav	$t3,$v1,$v0
    sd	$t3,432($sp)
    li	$a7,2048
    mtc1	$zero,$f13
    lw	$at,32($sp)
    move	$a0,$zero
    srl	$a1,$a1,0x18
    sd	$a1,456($sp)
    andi	$a1,$a3,0x3000
    sd	$a1,384($sp)
    dsrav	$v1,$v1,$at
    andi	$s7,$a3,0x1
    sd	$v1,424($sp)
    sra	$v0,$v0,0x1
    andi	$v1,$a3,0x1000
    sd	$v1,464($sp)
    sra	$at,$at,0x2
    or	$at,$at,$v0
    b	.L0d96b4b8
    sd	$at,376($sp)
    nop
    nop
    nop
.L0d96abe0:
    # Line 846
    ld	$t8,312($sp)
    ld	$s4,352($sp)
    addu	$s4,$s4,$t8
    addiu	$s4,$s4,1
.L0d96abf0:
    ld	$t9,368($sp)
    beqz	$t9,.L0d96b3fc
    lui	$s3,0x8000
    # Line 839
    ld	$ra,368($sp)
.L0d96ac00:
    li	$v1,32
    # Line 844
    ld	$at,360($sp)
    # Line 839
    li	$v0,32
    move	$t2,$ra
    slt	$v0,$v0,$ra
    # Line 844
    addiu	$at,$at,4
    sd	$at,360($sp)
    # Line 839
    movn	$t2,$v1,$v0
    # Line 844
    lw	$at,-4($at)
    # Line 846
    addiu	$a3,$t2,-1
    # Line 844
    sd	$at,472($sp)
    # Line 842
    subu	$ra,$ra,$t2
    sd	$ra,368($sp)
    # Line 846
    bltz	$a3,.L0d96abf0
    move	$s6,$a3
    sd	$s4,352($sp)
    b	.L0d96ad68
    sd	$a3,312($sp)
    nop
    nop
.L0d96ac50:
    # Line 916
    beqz	$s5,.L0d96ae7c
    # Line 929
    lwc1	$f16,56($sp)
.L0d96ac58:
    # Line 923
    ldc1	$f17,32432($s2)
    # Line 922
    ldc1	$f16,32416($s2)
    # Line 921
    ldc1	$f15,32400($s2)
    # Line 923
    add.d	$f8,$f17,$f8
    # Line 922
    add.d	$f6,$f16,$f6
    # Line 921
    add.d	$f7,$f15,$f7
.L0d96ac70:
    # Line 932
    ld	$a1,464($sp)
    ld	$a3,440($sp)
    # Line 936
    mov.s	$f4,$f20
    # Line 932
    beqz	$a1,.L0d96aecc
    ld	$t8,400($sp)
.L0d96ac84:
    beqz	$s0,.L0d96ac98
    nop
    beq	$a6,$a3,.L0d96b14c
    nop
    # Line 953
    mov.s	$f30,$f20
.L0d96ac98:
    beqz	$s7,.L0d96acc0
    nop
.L0d96aca0:
    # Line 958
    cvt.d.s	$f18,$f30
    mul.d	$f18,$f18,$f9
    cvt.s.d	$f18,$f18
    mul.s	$f18,$f10,$f18
    trunc.w.s	$f18,$f18
    swc1	$f18,288($sp)
    lw	$t2,288($sp)
    sw	$t2,8568($s1)
.L0d96acc0:
    # Line 961
    lwc1	$f19,30432($s2)
.L0d96acc4:
    beqz	$s7,.L0d96aee4
    add.s	$f20,$f19,$f20
.L0d96accc:
    # Line 965
    beqz	$s0,.L0d96ad28
    nop
    beqz	$s8,.L0d96ace4
    nop
    beqz	$s5,.L0d96ad28
    nop
.L0d96ace4:
    # Line 966
    trunc.w.s	$f27,$f22
    trunc.w.s	$f23,$f28
    trunc.w.s	$f25,$f24
    mfc1	$at,$f27
    trunc.w.s	$f21,$f26
    mfc1	$ra,$f23
    mfc1	$t9,$f25
    sll	$at,$at,0x18
    mfc1	$t8,$f21
    sll	$ra,$ra,0x8
    sll	$t9,$t9,0x10
    or	$t9,$t9,$ra
    or	$t8,$t8,$at
    or	$t8,$t8,$t9
    sw	$t8,284($sp)
    lw	$t3,284($sp)
    sw	$t3,8400($s1)
.L0d96ad28:
    # Line 971
    lwc1	$f1,30296($s2)
    # Line 970
    lwc1	$f0,30292($s2)
    # Line 969
    lwc1	$f31,30288($s2)
    # Line 968
    lwc1	$f29,30284($s2)
    # Line 971
    add.s	$f26,$f1,$f26
    # Line 970
    add.s	$f28,$f0,$f28
    # Line 969
    add.s	$f24,$f31,$f24
    # Line 971
    beqz	$s0,.L0d96ad58
    # Line 968
    add.s	$f22,$f29,$f22
.L0d96ad4c:
    # Line 984
    sw	$zero,300($sp)
    lw	$v0,300($sp)
    sw	$v0,10736($s1)
.L0d96ad58:
    # Line 846
    addiu	$s6,$s6,-1
.L0d96ad5c:
    # Line 989
    srl	$s3,$s3,0x1
    # Line 846
    beq	$s6,$a4,.L0d96abe0
    # Line 986
    addiu	$s4,$s4,1
.L0d96ad68:
    # Line 852
    ld	$s0,472($sp)
    beqz	$a0,.L0d96af40
    and	$s0,$s0,$s3
    # Line 860
    beqz	$s0,.L0d96ad90
    # Line 863
    ld	$t9,456($sp)
.L0d96ad7c:
    sll	$a3,$s4,0x6
    sw	$a3,84($sp)
    lw	$t8,84($sp)
    beq	$a5,$t9,.L0d96b190
    sw	$t8,8320($s1)
.L0d96ad90:
    # Line 865
    beqz	$a2,.L0d96add0
    nop
    beqz	$s0,.L0d96adc0
    nop
    # Line 869
    mul.s	$f4,$f12,$f5
    cvt.d.s	$f4,$f4
    sdc1	$f4,96($sp)
    ldc1	$f3,96($sp)
    trunc.l.d	$f3,$f3
    sdc1	$f3,104($sp)
    ldc1	$f2,104($sp)
    sdc1	$f2,8648($s1)
.L0d96adc0:
    # Line 870
    lw	$ra,30324($s2)
    mtc1	$ra,$f15
    cvt.s.w	$f15,$f15
    add.s	$f5,$f15,$f5
.L0d96add0:
    beqz	$s8,.L0d96ac70
    # Line 873
    ld	$at,448($sp)
    beqz	$at,.L0d96af9c
    nop
.L0d96ade0:
    # Line 897
    beqz	$s0,.L0d96ac50
    nop
    beqz	$s5,.L0d96b1b0
    # Line 903
    ld	$t2,432($sp)
    # Line 901
    ld	$t3,424($sp)
    dmtc1	$t3,$f27
    cvt.d.l	$f27,$f27
    mul.d	$f27,$f27,$f7
    sdc1	$f27,224($sp)
    ldc1	$f25,224($sp)
    # Line 903
    dmtc1	$t2,$f23
    # Line 901
    trunc.l.d	$f25,$f25
    dmfc1	$a3,$f25
    # Line 903
    cvt.d.l	$f23,$f23
    # Line 901
    daddiu	$a3,$a3,2048
    sd	$a3,232($sp)
    # Line 903
    mul.d	$f23,$f23,$f6
    # Line 901
    ldc1	$f18,232($sp)
    # Line 903
    sdc1	$f23,240($sp)
    ldc1	$f21,240($sp)
    trunc.l.d	$f21,$f21
    dmfc1	$a1,$f21
    # Line 905
    mul.d	$f19,$f11,$f8
    # Line 903
    daddiu	$a1,$a1,2048
    sd	$a1,248($sp)
    # Line 905
    cvt.s.d	$f19,$f19
    # Line 903
    ldc1	$f16,248($sp)
    # Line 905
    swc1	$f19,256($sp)
    lwc1	$f17,256($sp)
    trunc.w.s	$f17,$f17
    # Line 901
    sdc1	$f18,8480($s1)
    # Line 905
    mfc1	$v1,$f17
    # Line 903
    sdc1	$f16,8488($s1)
    # Line 905
    addiu	$v1,$v1,2048
    sw	$v1,260($sp)
    lw	$v0,260($sp)
    sw	$v0,8496($s1)
.L0d96ae74:
    # Line 916
    bnez	$s5,.L0d96ac58
    # Line 929
    lwc1	$f16,56($sp)
.L0d96ae7c:
    lwc1	$f17,30396($s2)
    # Line 927
    lwc1	$f3,30388($s2)
    # Line 928
    lwc1	$f15,30392($s2)
    # Line 929
    add.s	$f16,$f17,$f16
    swc1	$f16,56($sp)
    # Line 928
    lwc1	$f4,52($sp)
    # Line 926
    lwc1	$f1,30384($s2)
    # Line 928
    add.s	$f4,$f15,$f4
    swc1	$f4,52($sp)
    # Line 927
    lwc1	$f2,48($sp)
    # Line 925
    lwc1	$f31,30380($s2)
    # Line 927
    add.s	$f2,$f3,$f2
    swc1	$f2,48($sp)
    # Line 926
    lwc1	$f0,44($sp)
    add.s	$f0,$f1,$f0
    swc1	$f0,44($sp)
    lwc1	$f29,40($sp)
    # Line 925
    add.s	$f29,$f31,$f29
    b	.L0d96ac70
    swc1	$f29,40($sp)
.L0d96aecc:
    # Line 932
    beqz	$t8,.L0d96aedc
    nop
    bnez	$s5,.L0d96ac84
    nop
.L0d96aedc:
    # Line 961
    bnez	$s7,.L0d96accc
    nop
.L0d96aee4:
    beqz	$s0,.L0d96af20
    ld	$t9,384($sp)
    beqz	$t9,.L0d96b2b4
    nop
    # Line 977
    cvt.d.s	$f21,$f30
    lwc1	$f19,1624($s2)
    sub.d	$f21,$f14,$f21
    cvt.d.s	$f19,$f19
    cvt.d.s	$f18,$f22
    madd.d	$f18,$f18,$f19,$f21
    cvt.s.d	$f18,$f18
    trunc.w.s	$f18,$f18
    swc1	$f18,292($sp)
    lw	$ra,292($sp)
    sw	$ra,8400($s1)
.L0d96af20:
    # Line 982
    lwc1	$f21,30284($s2)
    bnez	$s0,.L0d96ad4c
    add.s	$f22,$f21,$f22
    b	.L0d96ad5c
    # Line 846
    addiu	$s6,$s6,-1
    nop
    nop
    nop
.L0d96af40:
    # Line 852
    beqz	$s0,.L0d96ad90
    ld	$v0,408($sp)
    lw	$at,32096($s2)
    # Line 854
    ld	$t3,416($sp)
    ld	$t8,456($sp)
    ld	$ra,392($sp)
    # Line 852
    beq	$at,$v0,.L0d96af78
    # Line 853
    lw	$v1,0($sp)
    lw	$a3,32184($s2)
    ld	$a1,408($sp)
    sw	$a1,8288($a3)
    lw	$a0,32188($s2)
    sw	$v1,8288($a0)
    sw	$v1,32096($s2)
.L0d96af78:
    # Line 854
    sw	$ra,76($sp)
    lw	$t9,76($sp)
    lw	$t2,76($sp)
    sw	$t9,8324($s1)
    # Line 860
    li	$a0,1
    # Line 854
    beq	$a5,$t8,.L0d96b2d8
    sw	$t2,8324($t3)
.L0d96af94:
    # Line 860
    b	.L0d96ad7c
    # Line 863
    ld	$t9,456($sp)
.L0d96af9c:
    # Line 873
    beqz	$s0,.L0d96ac50
    nop
    beqz	$s5,.L0d96b1b0
    # Line 878
    ld	$t2,432($sp)
    # Line 874
    ld	$v0,416($sp)
    ld	$ra,376($sp)
    sw	$ra,112($sp)
    lw	$t9,112($sp)
    # Line 876
    ld	$t8,424($sp)
    # Line 874
    lw	$t3,112($sp)
    sw	$t9,8500($s1)
    # Line 876
    dmtc1	$t8,$f16
    # Line 874
    sw	$t3,8500($v0)
    # Line 876
    ldc1	$f15,32400($s2)
    cvt.d.l	$f16,$f16
    mul.d	$f15,$f15,$f16
    sdc1	$f15,120($sp)
    ldc1	$f4,120($sp)
    trunc.l.d	$f4,$f4
    sdc1	$f4,128($sp)
    ldc1	$f3,128($sp)
    ldc1	$f2,128($sp)
    # Line 878
    dmtc1	$t2,$f1
    # Line 876
    sdc1	$f3,8504($s1)
    sdc1	$f2,8504($v0)
    # Line 878
    ldc1	$f25,32416($s2)
    cvt.d.l	$f1,$f1
    mul.d	$f25,$f25,$f1
    sdc1	$f25,136($sp)
    ldc1	$f23,136($sp)
    trunc.l.d	$f23,$f23
    sdc1	$f23,144($sp)
    ldc1	$f21,144($sp)
    ldc1	$f19,144($sp)
    sdc1	$f21,8520($s1)
    sdc1	$f19,8520($v0)
    # Line 880
    ldc1	$f18,32432($s2)
    mul.d	$f18,$f18,$f11
    cvt.s.d	$f18,$f18
    swc1	$f18,152($sp)
    lwc1	$f17,152($sp)
    trunc.w.s	$f17,$f17
    swc1	$f17,156($sp)
    lw	$a3,156($sp)
    lw	$a1,156($sp)
    sw	$a3,8536($s1)
    sw	$a1,8536($v0)
    # Line 883
    ldc1	$f15,32408($s2)
    mul.d	$f15,$f15,$f16
    sdc1	$f15,160($sp)
    ldc1	$f4,160($sp)
    trunc.l.d	$f4,$f4
    sdc1	$f4,168($sp)
    ldc1	$f3,168($sp)
    ldc1	$f2,168($sp)
    sdc1	$f3,8512($s1)
    sdc1	$f2,8512($v0)
    # Line 885
    ldc1	$f0,32424($s2)
    mul.d	$f0,$f0,$f1
    sdc1	$f0,176($sp)
    ldc1	$f31,176($sp)
    trunc.l.d	$f31,$f31
    sdc1	$f31,184($sp)
    ldc1	$f29,184($sp)
    ldc1	$f27,184($sp)
    sdc1	$f29,8528($s1)
    sdc1	$f27,8528($v0)
    # Line 887
    ldc1	$f25,32440($s2)
    mul.d	$f25,$f25,$f11
    cvt.s.d	$f25,$f25
    swc1	$f25,192($sp)
    lwc1	$f23,192($sp)
    # Line 894
    ld	$a1,416($sp)
    # Line 887
    trunc.w.s	$f23,$f23
    swc1	$f23,196($sp)
    lw	$v1,196($sp)
    lw	$at,196($sp)
    sw	$v1,8540($s1)
    # Line 895
    li	$t8,1
    # Line 887
    beqz	$a2,.L0d96b10c
    sw	$at,8540($v0)
    # Line 890
    sd	$zero,200($sp)
    ldc1	$f21,200($sp)
    ldc1	$f19,200($sp)
    # Line 891
    sd	$zero,208($sp)
    ldc1	$f18,208($sp)
    ldc1	$f17,208($sp)
    # Line 890
    ld	$at,416($sp)
    sdc1	$f21,8656($s1)
    sdc1	$f19,8656($at)
    # Line 891
    sdc1	$f18,8664($s1)
    sdc1	$f17,8664($at)
.L0d96b10c:
    lw	$v0,1792($s2)
    andi	$v0,$v0,0x20
    beqz	$v0,.L0d96b144
    nop
    # Line 894
    sw	$zero,216($sp)
    lw	$t3,216($sp)
    lw	$t2,216($sp)
    sw	$t3,8576($s1)
    sw	$t2,8576($a1)
    # Line 895
    sw	$zero,220($sp)
    lw	$a3,220($sp)
    lw	$v1,220($sp)
    sw	$a3,8584($s1)
    sw	$v1,8584($a1)
.L0d96b144:
    b	.L0d96ade0
    sd	$t8,448($sp)
.L0d96b14c:
    # Line 936
    c.lt.s	$f20,$f13
    bc1f	.L0d96b15c
    # Line 938
    lw	$a3,1588($s2)
    # Line 937
    neg.s	$f4,$f20
.L0d96b15c:
    # Line 938
    beq	$a7,$a3,.L0d96b2f8
    nop
    beq	$t0,$a3,.L0d96b378
    nop
    beq	$t1,$a3,.L0d96b2c8
    # Line 946
    lwc1	$f31,68($sp)
.L0d96b174:
    # Line 948
    c.lt.s $f30,$f13
    bc1f .L0d96b1a0
    nop
    # Line 953
    bnez	$s7,.L0d96aca0
    # Line 950
    mov.s	$f30,$f13
    b	.L0d96acc4
    # Line 961
    lwc1	$f19,30432($s2)
.L0d96b190:
    # Line 865
    sw	$a3,88($sp)
    lw	$t9,88($sp)
    b	.L0d96ad90
    sw	$t9,8328($s1)
.L0d96b1a0:
    # Line 950
    lwc1	$f23,3544($s2)
    c.lt.s $f23,$f30
    b	.L0d96ac98
    movt.s	$f30,$f23,$fcc2
.L0d96b1b0:
    sdc1	$f8,24($sp)
    sdc1	$f7,8($sp)
    sdc1	$f6,16($sp)
    swc1	$f5,4($sp)
    # Line 909
    lwc1	$f15,52($sp)
    lwc1	$f14,3544($s2)
    div.s	$f14,$f14,$f15
    # Line 914
    swc1	$f26,276($sp)
    swc1	$f28,272($sp)
    swc1	$f24,268($sp)
    swc1	$f22,264($sp)
    # Line 915
    lwc1	$f18,40($sp)
    lwc1	$f17,56($sp)
    lwc1	$f16,48($sp)
    lwc1	$f15,44($sp)
    lw	$t9,12524($s2)
    mul.s	$f17,$f14,$f17
    mul.s	$f16,$f14,$f16
    sd	$a2,568($sp)
    addiu	$a1,$sp,264
    mul.s	$f15,$f14,$f15
    sd	$a0,576($sp)
    move	$a0,$s2
    jalr	$t9
    mul.s	$f14,$f14,$f18
    ld	$a0,576($sp)
    ld	$a2,568($sp)
    ldc1	$f9,_lit8_406fe00000000000
    lwc1	$f10,_lit_45800000
    # Line 916
    lwc1	$f19,264($sp)
    lwc1	$f17,272($sp)
    lwc1	$f18,268($sp)
    lwc1	$f16,276($sp)
    trunc.w.s	$f19,$f19
    ldc1	$f11,_lit8_41c0000000000000
    trunc.w.s	$f17,$f17
    lwc1	$f12,_lit_42800000
    trunc.w.s	$f18,$f18
    mfc1	$a1,$f19
    ldc1	$f14,_lit8_3ff0000000000000
    trunc.w.s	$f16,$f16
    mfc1	$v1,$f17
    li	$a4,-1
    ldc1	$f8,24($sp)
    mfc1	$v0,$f18
    sll	$a1,$a1,0x18
    li	$a5,3
    ldc1	$f7,8($sp)
    mfc1	$at,$f16
    sll	$v1,$v1,0x8
    li	$a6,4354
    ldc1	$f6,16($sp)
    sll	$v0,$v0,0x10
    lwc1	$f5,4($sp)
    or	$v0,$v0,$v1
    or	$at,$at,$a1
    li	$a7,2048
    or	$at,$at,$v0
    sw	$at,280($sp)
    li	$t0,2049
    mtc1	$zero,$f13
    lw	$ra,280($sp)
    li	$t1,9729
    b	.L0d96ae74
    sw	$ra,8400($s1)
.L0d96b2b4:
    # Line 980
    trunc.w.s	$f21,$f22
    swc1	$f21,296($sp)
    lw	$a3,296($sp)
    b	.L0d96af20
    sw	$a3,8400($s1)
.L0d96b2c8:
    # Line 946
    lwc1	$f30,1620($s2)
    sub.s	$f31,$f31,$f4
    # Line 947
    b	.L0d96b174
    # Line 946
    mul.s	$f30,$f30,$f31
.L0d96b2d8:
    # Line 857
    ld	$t3,416($sp)
    ld	$t9,392($sp)
    sw	$t9,80($sp)
    lw	$t8,80($sp)
    lw	$t2,80($sp)
    sw	$t8,8332($s1)
    b	.L0d96af94
    sw	$t2,8332($t3)
.L0d96b2f8:
    sdc1	$f8,24($sp)
    sdc1	$f7,8($sp)
    sdc1	$f6,16($sp)
    # Line 940
    ldc1	$f13,304($sp)
    swc1	$f5,4($sp)
    # lw $t9, -22844($gp) # &powf
    sd	$a2,568($sp)
    mul.s	$f13,$f4,$f13
    sd	$a0,576($sp)
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    ld	$a0,576($sp)
    ld	$a2,568($sp)
    lwc1	$f5,4($sp)
    ldc1	$f6,16($sp)
    ldc1	$f7,8($sp)
    ldc1	$f8,24($sp)
    ldc1	$f9,_lit8_406fe00000000000
    li	$a4,-1
    li	$a5,3
    lwc1	$f10,_lit_45800000
    li	$a6,4354
    li	$a7,2048
    ldc1	$f11,_lit8_41c0000000000000
    li	$t0,2049
    lwc1	$f12,_lit_42800000
    mtc1	$zero,$f13
    li	$t1,9729
    ldc1	$f14,_lit8_3ff0000000000000
    b	.L0d96b174
    mov.s	$f30,$f0
.L0d96b378:
    sdc1	$f8,24($sp)
    sdc1	$f7,8($sp)
    sdc1	$f6,16($sp)
    swc1	$f5,4($sp)
    # Line 943
    lwc1	$f13,64($sp)
    mul.s	$f13,$f4,$f13
    # lw $t9, -22844($gp) # &powf
    sd	$a2,568($sp)
    mul.s	$f13,$f4,$f13
    sd	$a0,576($sp)
    lwc1	$f12,_lit_402df854
    jal	powf
    neg.s	$f13,$f13
    ld	$a0,576($sp)
    ld	$a2,568($sp)
    lwc1	$f5,4($sp)
    ldc1	$f6,16($sp)
    ldc1	$f7,8($sp)
    ldc1	$f8,24($sp)
    ldc1	$f9,_lit8_406fe00000000000
    li	$a4,-1
    li	$a5,3
    lwc1	$f10,_lit_45800000
    li	$a6,4354
    li	$a7,2048
    ldc1	$f11,_lit8_41c0000000000000
    li	$t0,2049
    lwc1	$f12,_lit_42800000
    mtc1	$zero,$f13
    li	$t1,9729
    ldc1	$f14,_lit8_3ff0000000000000
    # Line 944
    b	.L0d96b174
    # Line 943
    mov.s	$f30,$f0
.L0d96b3fc:
    ld	$s7,584($sp)
    ldc1	$f30,592($sp)
.L0d96b404:
    ld	$s5,560($sp)
    ld	$s0,552($sp)
    ld	$s8,536($sp)
    ld	$s3,528($sp)
    ld	$s6,520($sp)
    ldc1	$f28,512($sp)
    ldc1	$f24,504($sp)
    ldc1	$f22,496($sp)
    ldc1	$f26,488($sp)
    ldc1	$f20,480($sp)
    # Line 997
    ld	$gp,336($sp)
    ld	$s1,320($sp)
    ld	$ra,544($sp)
    ld	$s4,328($sp)
    # Line 996
    li	$at,0x8080
    # Line 997
    move	$v0,$zero
    # Line 996
    addu	$at,$at,$s2
    # Line 997
    ld	$s2,344($sp)
    addiu	$sp,$sp,608
    jr	$ra
    # Line 996
    sw	$zero,0($at)
.L0d96b458:
    # Line 805
    b	.L0d96aa90
    li	$s5,1
.L0d96b460:
    # Line 823
    move	$s8,$zero
    move	$s5,$zero
    b	.L0d96aaf8
    sdc1	$f20,480($sp)
.L0d96b470:
    # Line 831
    lwc1	$f15,1616($s2)
    # Line 829
    lwc1	$f14,1608($s2)
    # Line 831
    swc1	$f15,68($sp)
    # Line 829
    swc1	$f14,60($sp)
    # Line 830
    mul.s	$f14,$f14,$f14
    # Line 831
    b	.L0d96ab0c
    # Line 830
    swc1	$f14,64($sp)
.L0d96b48c:
    # Line 820
    lwc1	$f21,30240($s2)
    swc1	$f21,56($sp)
    # Line 819
    lwc1	$f19,30236($s2)
    # Line 818
    lwc1	$f18,30232($s2)
    # Line 819
    swc1	$f19,52($sp)
    # Line 818
    swc1	$f18,48($sp)
    # Line 817
    lwc1	$f17,30228($s2)
    # Line 816
    lwc1	$f16,30224($s2)
    # Line 817
    swc1	$f17,44($sp)
    b	.L0d96aaf0
    # Line 816
    swc1	$f16,40($sp)
.L0d96b4b8:
    # Line 846
    lui	$s3,0x8000
    b	.L0d96ac00
    # Line 839
    ld	$ra,368($sp)
.end __glCrmDumpPerPixelStippledSpan

# Function: __glCrmDumpSpan
# Declared: Line 1005 (Source lines: 1006-1144)
# Address: 0x0d96b4d0 - 0x0d96bb1c (Size: 1612 bytes, Frame: 176)
.globl __glCrmDumpSpan
.ent __glCrmDumpSpan
__glCrmDumpSpan:
    # Line 1016
    lw	$a2,32184($a0)
    # Line 1013
    lw	$t1,30200($a0)
    # Line 1012
    lw	$t2,30196($a0)
    # Line 1008
    lw	$a3,30436($a0)
    # Line 1011
    lw	$a5,30248($a0)
    # Line 1006
    addiu	$sp,$sp,-304
    # Line 1010
    lw	$v1,32088($a0)
    # Line 1006
    lui	$at,0xe
    # Line 1018
    dsll32	$v0,$a3,0xe
    # Line 1023
    mtc1	$zero,$f4
    # Line 1010
    sw	$v1,0($sp)
    # Line 1006
    addiu	$at,$at,22716
    sd	$gp,280($sp)
    # Line 1018
    bgez	$v0,.L0d96b9e0
    # Line 1006
    addu	$gp,$t9,$at
    # Line 1018
    li	$a6,1
.L0d96b510:
    andi	$t0,$a3,0x8
    # Line 1072
    lwc1	$f16,_lit_45800000
    # Line 1018
    beqz	$t0,.L0d96ba00
    andi	$a4,$a6,0xff
    # Line 1023
    beqz	$a4,.L0d96b584
    move	$a4,$zero
    lw	$a4,2484($a0)
    lw	$a4,0($a4)
    li	$v0,0x8062
    beq	$a4,$v0,.L0d96b580
    li	$a6,7681
    beq	$a4,$a6,.L0d96b584
    move	$a4,$zero
    lwc1	$f0,30284($a0)
    c.eq.s	$f0,$f4
    lwc1	$f2,30292($a0)
    lwc1	$f1,30288($a0)
    bc1f	.L0d96b9c0
    lwc1	$f3,30296($a0)
    c.eq.s $f1,$f4
    bc1f .L0d96b9c4
    # Line 1032
    nop	# was lw $t9, -31364($gp) # &__glCrmDumpPerPixelSpan
    # Line 1023
    c.eq.s $f2,$f4
    bc1f .L0d96b9c4
    # Line 1032
    nop	# was lw $t9, -31364($gp) # &__glCrmDumpPerPixelSpan
    # Line 1023
    c.eq.s $f3,$f4
    bc1f .L0d96b9c4
    # Line 1032
    nop	# was lw $t9, -31364($gp) # &__glCrmDumpPerPixelSpan
.L0d96b580:
    # Line 1023
    move	$a4,$zero
.L0d96b584:
    # Line 1046
    lui	$a6,0x1
    addu	$a6,$a0,$a6
    lw	$a7,-32644($a6)
    andi	$a7,$a7,0x2
    # Line 1045
    addiu	$a5,$a5,-1
    # Line 1046
    beqz	$a7,.L0d96b5ac
    # Line 1044
    lui	$a7,0x302
    # Line 1046
    lw	$t3,-32640($a6)
    li	$t8,2
    beq	$t3,$t8,.L0d96baf8
.L0d96b5ac:
    li	$t8,1
.L0d96b5b0:
    lw	$a6,0($sp)
    andi	$t3,$t8,0xff
.L0d96b5b8:
    lw	$t9,32092($a0)
    beq	$t9,$a6,.L0d96b5d4
    # Line 1050
    lw	$at,0($sp)
    sw	$a6,8216($a2)
    lw	$v0,32188($a0)
    sw	$at,8216($v0)
    sw	$at,32092($a0)
.L0d96b5d4:
    lw	$v1,32096($a0)
    beq	$v1,$a7,.L0d96b5fc
    # Line 1053
    sll	$a6,$t2,0x6
    # Line 1051
    lw	$a6,32184($a0)
    sw	$a7,8288($a6)
    lw	$a1,32188($a0)
    sw	$a7,4($sp)
    sw	$a7,8288($a1)
    sw	$a7,32096($a0)
    # Line 1053
    sll	$a6,$t2,0x6
.L0d96b5fc:
    sw	$a6,8($sp)
    lw	$v1,8($sp)
    # Line 1054
    sll	$at,$t1,0x6
    sw	$at,12($sp)
    lw	$a1,12($sp)
    sw	$a1,8324($a2)
    # Line 1053
    sw	$v1,8320($a2)
    # Line 1055
    addu	$v0,$a5,$t2
    sll	$v0,$v0,0x6
    sw	$v0,16($sp)
    lw	$a7,16($sp)
    # Line 1056
    sw	$at,20($sp)
    andi	$t8,$a3,0x4
    lw	$t9,20($sp)
    sw	$t9,8332($a2)
    beqz	$t8,.L0d96b6b0
    # Line 1055
    sw	$a7,8328($a2)
    # Line 1059
    lw	$t1,30204($a0)
    dsll32	$t1,$t1,0x0
    dsrl32	$t1,$t1,0x0
    dmtc1	$t1,$f11
    cvt.s.l	$f11,$f11
    lwc1	$f7,_lit_42800000
    mul.s	$f11,$f7,$f11
    cvt.d.s	$f11,$f11
    sdc1	$f11,24($sp)
    ldc1	$f10,24($sp)
    trunc.l.d	$f10,$f10
    sdc1	$f10,32($sp)
    ldc1	$f9,32($sp)
    sdc1	$f9,8648($a2)
    # Line 1061
    lw	$a7,30324($a0)
    mtc1	$a7,$f8
    cvt.s.w	$f8,$f8
    mul.s	$f7,$f7,$f8
    cvt.d.s	$f7,$f7
    sdc1	$f7,40($sp)
    ldc1	$f6,40($sp)
    trunc.l.d	$f6,$f6
    sdc1	$f6,48($sp)
    ldc1	$f4,48($sp)
    # Line 1063
    sd	$zero,56($sp)
    ldc1	$f5,56($sp)
    sdc1	$f5,8664($a2)
    # Line 1061
    sdc1	$f4,8656($a2)
.L0d96b6b0:
    # Line 1063
    andi	$t2,$a3,0x1
    beqz	$t2,.L0d96ba30
    lwc1	$f4,30208($a0)
    # Line 1070
    lwc1	$f6,30220($a0)
    # Line 1069
    lwc1	$f7,30216($a0)
    # Line 1070
    beqz	$a4,.L0d96baa8
    # Line 1068
    lwc1	$f5,30212($a0)
    # Line 1072
    mul.s	$f31,$f16,$f4
    mul.s	$f29,$f16,$f5
    trunc.w.s	$f31,$f31
    trunc.w.s	$f29,$f29
    swc1	$f31,64($sp)
    swc1	$f29,68($sp)
    # Line 1073
    mul.s	$f27,$f16,$f7
    # Line 1072
    ldc1	$f29,64($sp)
    # Line 1073
    mul.s	$f25,$f16,$f6
    trunc.w.s	$f27,$f27
    # Line 1072
    sdc1	$f29,8416($a2)
    # Line 1073
    trunc.w.s	$f25,$f25
    swc1	$f27,72($sp)
    swc1	$f25,76($sp)
    ldc1	$f23,72($sp)
    sdc1	$f23,8424($a2)
    # Line 1074
    lwc1	$f21,30284($a0)
    mul.s	$f21,$f21,$f16
    trunc.w.s	$f21,$f21
    swc1	$f21,80($sp)
    lwc1	$f19,30288($a0)
    mul.s	$f19,$f19,$f16
    trunc.w.s	$f19,$f19
    swc1	$f19,84($sp)
    ldc1	$f18,80($sp)
    sdc1	$f18,8432($a2)
    # Line 1076
    lwc1	$f17,30292($a0)
    mul.s	$f17,$f17,$f16
    trunc.w.s	$f17,$f17
    swc1	$f17,88($sp)
    lwc1	$f15,30296($a0)
    mul.s	$f15,$f15,$f16
    trunc.w.s	$f15,$f15
    swc1	$f15,92($sp)
    ldc1	$f12,88($sp)
    # Line 1078
    sd	$zero,96($sp)
    ldc1	$f13,96($sp)
    # Line 1079
    sd	$zero,104($sp)
    ldc1	$f14,104($sp)
    sdc1	$f14,8456($a2)
    # Line 1078
    sdc1	$f13,8440($a2)
    # Line 1076
    sdc1	$f12,8448($a2)
.L0d96b774:
    # Line 1094
    beqz	$t0,.L0d96b95c
    nop
    # Line 1100
    lw	$a5,32500($a0)
    # Line 1102
    sra	$t2,$a5,0x1
    # Line 1099
    lw	$t0,32496($a0)
    # Line 1104
    li	$a4,1
    dsll32	$a4,$a4,0xb
    # Line 1102
    sra	$t1,$t0,0x2
    or	$t1,$t1,$t2
    sw	$t1,140($sp)
    # Line 1104
    dsrav	$t0,$a4,$t0
    # Line 1102
    lw	$a7,140($sp)
    # Line 1104
    dmtc1	$t0,$f10
    # Line 1102
    sw	$a7,8500($a2)
    # Line 1104
    ldc1	$f9,32376($a0)
    cvt.d.l	$f10,$f10
    mul.d	$f9,$f9,$f10
    sdc1	$f9,144($sp)
    ldc1	$f8,144($sp)
    trunc.l.d	$f8,$f8
    dmfc1	$a6,$f8
    daddiu	$a6,$a6,2048
    sd	$a6,152($sp)
    # Line 1106
    dsrav	$a4,$a4,$a5
    # Line 1104
    ldc1	$f7,152($sp)
    # Line 1106
    dmtc1	$a4,$f6
    # Line 1104
    sdc1	$f7,8480($a2)
    # Line 1106
    ldc1	$f27,32384($a0)
    cvt.d.l	$f6,$f6
    mul.d	$f27,$f27,$f6
    sdc1	$f27,160($sp)
    ldc1	$f25,160($sp)
    trunc.l.d	$f25,$f25
    dmfc1	$a1,$f25
    daddiu	$a1,$a1,2048
    sd	$a1,168($sp)
    ldc1	$f23,168($sp)
    # Line 1108
    ldc1	$f2,_lit8_41c0000000000000
    # Line 1106
    sdc1	$f23,8488($a2)
    # Line 1108
    ldc1	$f21,32392($a0)
    mul.d	$f21,$f21,$f2
    cvt.s.d	$f21,$f21
    swc1	$f21,176($sp)
    lwc1	$f19,176($sp)
    trunc.w.s	$f19,$f19
    mfc1	$v1,$f19
    addiu	$v1,$v1,2048
    sw	$v1,180($sp)
    lw	$v0,180($sp)
    sw	$v0,8496($a2)
    # Line 1111
    ldc1	$f18,32400($a0)
    mul.d	$f18,$f18,$f10
    sdc1	$f18,184($sp)
    ldc1	$f17,184($sp)
    trunc.l.d	$f17,$f17
    sdc1	$f17,192($sp)
    ldc1	$f16,192($sp)
    sdc1	$f16,8504($a2)
    # Line 1113
    ldc1	$f15,32416($a0)
    mul.d	$f15,$f15,$f6
    sdc1	$f15,200($sp)
    ldc1	$f14,200($sp)
    trunc.l.d	$f14,$f14
    sdc1	$f14,208($sp)
    ldc1	$f13,208($sp)
    sdc1	$f13,8520($a2)
    # Line 1115
    ldc1	$f12,32432($a0)
    mul.d	$f12,$f12,$f2
    cvt.s.d	$f12,$f12
    swc1	$f12,216($sp)
    lwc1	$f11,216($sp)
    trunc.w.s	$f11,$f11
    swc1	$f11,220($sp)
    lw	$at,220($sp)
    sw	$at,8536($a2)
    # Line 1119
    ldc1	$f9,32408($a0)
    mul.d	$f9,$f9,$f10
    sdc1	$f9,224($sp)
    ldc1	$f8,224($sp)
    trunc.l.d	$f8,$f8
    sdc1	$f8,232($sp)
    ldc1	$f7,232($sp)
    sdc1	$f7,8512($a2)
    # Line 1121
    ldc1	$f5,32424($a0)
    mul.d	$f5,$f5,$f6
    sdc1	$f5,240($sp)
    ldc1	$f4,240($sp)
    trunc.l.d	$f4,$f4
    sdc1	$f4,248($sp)
    ldc1	$f3,248($sp)
    sdc1	$f3,8528($a2)
    # Line 1123
    ldc1	$f1,32440($a0)
    mul.d	$f1,$f1,$f2
    cvt.s.d	$f1,$f1
    swc1	$f1,256($sp)
    lwc1	$f0,256($sp)
    # Line 1129
    ldc1	$f13,_lit8_406fe00000000000
    lwc1	$f11,_lit_45800000
    # Line 1123
    trunc.w.s	$f0,$f0
    andi	$t9,$a3,0x2000
    swc1	$f0,260($sp)
    lw	$t8,260($sp)
    beqz	$t9,.L0d96b95c
    sw	$t8,8540($a2)
    # Line 1129
    lwc1	$f12,30244($a0)
    cvt.d.s	$f12,$f12
    mul.d	$f12,$f12,$f13
    cvt.s.d	$f12,$f12
    # Line 1128
    lwc1	$f13,30432($a0)
    # Line 1129
    mul.s	$f12,$f11,$f12
    trunc.w.s	$f12,$f12
    # Line 1130
    mul.s	$f11,$f11,$f13
    # Line 1129
    swc1	$f12,264($sp)
    lw	$a7,264($sp)
    # Line 1130
    trunc.w.s	$f11,$f11
    # Line 1129
    sw	$a7,8568($a2)
    # Line 1130
    swc1	$f11,268($sp)
    lw	$a5,268($sp)
    # Line 1131
    sw	$zero,272($sp)
    lw	$a6,272($sp)
    sw	$a6,8584($a2)
    # Line 1130
    sw	$a5,8576($a2)
.L0d96b95c:
    # Line 1136
    sw	$zero,276($sp)
    lw	$t1,276($sp)
    sw	$t1,10736($a2)
    lw	$a3,32088($a0)
    lw	$t0,32092($a0)
    beq	$t0,$a3,.L0d96b9a0
    nop
    # Line 1139
    lw	$at,32184($a0)
    sw	$a3,8216($at)
    lw	$t9,32188($a0)
    lw	$t8,32088($a0)
    sw	$t8,8216($t9)
    lw	$t2,32088($a0)
    bnez	$t3,.L0d96b9a4
    sw	$t2,32092($a0)
    b	.L0d96b9b4
    # Line 1144
    move	$v0,$zero
.L0d96b9a0:
    # Line 1139
    beqz	$t3,.L0d96b9b0
.L0d96b9a4:
    # Line 1142
    li	$v0,0x8080
    addu	$v0,$v0,$a0
    sw	$zero,0($v0)
.L0d96b9b0:
    # Line 1144
    move	$v0,$zero
.L0d96b9b4:
    ld	$gp,280($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0d96b9c0:
    # Line 1032
    # lw $t9, -31364($gp) # &__glCrmDumpPerPixelSpan
.L0d96b9c4:
    sd	$ra,288($sp)
    bal __glCrmDumpPerPixelSpan
    nop
    ld	$ra,288($sp)
    # Line 1144
    ld	$gp,280($sp)
    jr	$ra
    addiu	$sp,$sp,304
.L0d96b9e0:
    # Line 1018
    andi	$v1,$a3,0x2000
    nor	$a1,$a3,$zero
    beqz	$v1,.L0d96b9f8
    andi	$a1,$a1,0x8
    bnez	$a1,.L0d96b510
    li	$a6,1
.L0d96b9f8:
    b	.L0d96b510
    move	$a6,$zero
.L0d96ba00:
    # Line 1032
    beqz	$a4,.L0d96b584
    # Line 1040
    lui	$t8,0xffff
    # Line 1038
    ld	$t3,-22180($gp)
    lw	$a6,0($sp)
    # Line 1039
    lw	$a7,32116($a0)
    # Line 1038
    and	$a6,$a6,$t3
    # Line 1039
    sw	$a7,4($sp)
    # Line 1040
    move	$t3,$zero
    and	$a7,$a7,$t8
    # Line 1038
    sw	$a6,0($sp)
    # Line 1040
    b	.L0d96b5b8
    ori	$a7,$a7,0x20
.L0d96ba30:
    # Line 1082
    beqz	$a4,.L0d96bb00
    # Line 1088
    lwc1	$f15,_lit_45800000
    # Line 1087
    lw	$v1,3252($a0)
    # Line 1088
    lwc1	$f19,_lit_43800000
    swc1	$f4,116($sp)
    xori	$v1,$v1,0x8
    lwc1	$f18,116($sp)
    sltiu	$v1,$v1,1
    movz.s	$f15,$f19,$v1
    mul.s	$f18,$f18,$f15
    swc1	$f18,116($sp)
    lwc1	$f17,116($sp)
    trunc.w.s	$f17,$f17
    swc1	$f17,120($sp)
    lw	$v0,120($sp)
    sw	$v0,8428($a2)
    # Line 1089
    lwc1	$f16,30284($a0)
    swc1	$f16,124($sp)
    lwc1	$f14,124($sp)
    mul.s	$f14,$f14,$f15
    swc1	$f14,124($sp)
    lwc1	$f13,124($sp)
    trunc.w.s	$f13,$f13
    swc1	$f13,128($sp)
    lw	$t9,128($sp)
    # Line 1091
    sw	$zero,132($sp)
    lw	$at,132($sp)
    sw	$at,8460($a2)
    b	.L0d96b774
    # Line 1089
    sw	$t9,8452($a2)
.L0d96baa8:
    # Line 1079
    beqz	$t3,.L0d96b774
    nop
    # Line 1082
    trunc.w.s	$f27,$f4
    trunc.w.s	$f23,$f7
    trunc.w.s	$f25,$f5
    mfc1	$a7,$f27
    trunc.w.s	$f21,$f6
    mfc1	$a6,$f23
    mfc1	$a5,$f25
    sll	$a7,$a7,0x18
    mfc1	$a4,$f21
    sll	$a6,$a6,0x8
    sll	$a5,$a5,0x10
    or	$a5,$a5,$a6
    or	$a4,$a4,$a7
    or	$a4,$a4,$a5
    sw	$a4,112($sp)
    lw	$a1,112($sp)
    b	.L0d96b774
    sw	$a1,8400($a2)
.L0d96baf8:
    b	.L0d96b5b0
    # Line 1046
    move	$t8,$zero
.L0d96bb00:
    # Line 1091
    beqz	$t3,.L0d96b774
    nop
    # Line 1094
    trunc.w.s	$f29,$f4
    swc1	$f29,136($sp)
    lw	$t1,136($sp)
    b	.L0d96b774
    sw	$t1,8400($a2)
.end __glCrmDumpSpan

# Function: __glCrmDumpStippledSpan
# Declared: Line 1148 (Source lines: 1149-1367)
# Address: 0x0d96bb20 - 0x0d96c568 (Size: 2632 bytes, Frame: 128)
.globl __glCrmDumpStippledSpan
.ent __glCrmDumpStippledSpan
__glCrmDumpStippledSpan:
    # Line 1167
    lw	$a2,32184($a0)
    # Line 1156
    lw	$a6,30200($a0)
    # Line 1155
    lw	$t0,30196($a0)
    # Line 1154
    lw	$a3,30248($a0)
    # Line 1153
    lw	$v1,32088($a0)
    # Line 1149
    addiu	$sp,$sp,-512
    sd	$s1,440($sp)
    # Line 1167
    lw	$s1,32188($a0)
    # Line 1153
    sw	$v1,0($sp)
    # Line 1151
    lw	$a5,30436($a0)
    sd	$ra,464($sp)
    sd	$s3,448($sp)
    # Line 1149
    lui	$v0,0xe
    # Line 1169
    dsll32	$at,$a5,0xe
    lui	$t1,0x2
    sd	$s4,456($sp)
    # Line 1149
    addiu	$v0,$v0,21100
    sd	$gp,432($sp)
    # Line 1169
    bgez	$at,.L0d96c424
    # Line 1149
    addu	$gp,$t9,$v0
    # Line 1169
    li	$a4,1
.L0d96bb74:
    andi	$t2,$a5,0x8
    # Line 1196
    andi	$t3,$a5,0x1
    # Line 1207
    lw	$s3,0($sp)
    # Line 1169
    beqz	$t2,.L0d96c444
    andi	$a7,$a4,0xff
    # Line 1174
    beqz	$a7,.L0d96bbec
    # Line 1193
    lui	$ra,0x4
    # Line 1174
    lw	$a4,2484($a0)
    lw	$a4,0($a4)
    li	$v1,0x8062
    beq	$a4,$v1,.L0d96bbe8
    li	$a7,7681
    beq	$a4,$a7,.L0d96bbec
    # Line 1193
    lui	$ra,0x4
    # Line 1174
    mtc1	$zero,$f4
    lwc1	$f0,30284($a0)
    c.eq.s	$f0,$f4
    lwc1	$f2,30292($a0)
    lwc1	$f1,30288($a0)
    bc1f	.L0d96c350
    lwc1	$f3,30296($a0)
    c.eq.s $f1,$f4
    bc1f .L0d96c354
    # Line 1183
    nop	# was lw $t9, -31360($gp) # &__glCrmDumpPerPixelStippledSpan
    # Line 1174
    c.eq.s $f2,$f4
    bc1f .L0d96c354
    # Line 1183
    nop	# was lw $t9, -31360($gp) # &__glCrmDumpPerPixelStippledSpan
    # Line 1174
    c.eq.s $f3,$f4
    bc1f .L0d96c350
.L0d96bbe8:
    # Line 1193
    lui	$ra,0x4
.L0d96bbec:
    # Line 1195
    lw	$s4,4($sp)
    lui	$t8,0xff
    # Line 1196
    lui	$a4,0x1
    # Line 1195
    ori	$t8,$t8,0xffff
    # Line 1196
    addu	$a4,$a0,$a4
    # Line 1195
    and	$s4,$s4,$t8
    lui	$t9,0x300
    # Line 1196
    lw	$t8,-32644($a4)
    # Line 1193
    lw	$s3,0($sp)
    # Line 1195
    or	$s4,$s4,$t9
    lui	$t9,0x3
    nor	$t9,$t9,$zero
    # Line 1196
    andi	$t8,$t8,0x2
    # Line 1193
    or	$s3,$s3,$ra
    # Line 1195
    and	$s4,$s4,$t9
    # Line 1196
    beqz	$t8,.L0d96bc40
    # Line 1195
    or	$s4,$t1,$s4
    # Line 1196
    lw	$t9,-32640($a4)
    li	$ra,2
    beq	$t9,$ra,.L0d96c4cc
    move	$a4,$zero
.L0d96bc40:
    li	$a4,1
    andi	$t3,$a5,0x1
.L0d96bc48:
    andi	$at,$a4,0xff
    beqz	$t3,.L0d96bc6c
    sd	$at,424($sp)
    # Line 1207
    lwc1	$f6,30220($a0)
    swc1	$f6,16($sp)
    # Line 1206
    lwc1	$f5,30216($a0)
    # Line 1205
    lwc1	$f4,30212($a0)
    # Line 1206
    swc1	$f5,12($sp)
    # Line 1205
    swc1	$f4,8($sp)
.L0d96bc6c:
    # Line 1207
    move	$a7,$zero
.L0d96bc70:
    # Line 1218
    lw	$t1,30472($a0)
    lwc1	$f4,30208($a0)
.L0d96bc78:
    andi	$t8,$a5,0x4
    beqz	$t8,.L0d96bcac
    nop
    # Line 1223
    lw	$v1,30324($a0)
    # Line 1222
    lw	$v0,30204($a0)
    # Line 1223
    mtc1	$v1,$f8
    # Line 1222
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f7
    # Line 1223
    cvt.s.w	$f8,$f8
    # Line 1222
    cvt.s.l	$f7,$f7
    # Line 1223
    swc1	$f8,44($sp)
    # Line 1222
    swc1	$f7,40($sp)
.L0d96bcac:
    # Line 1223
    beqz	$t2,.L0d96bd0c
    nop
    # Line 1233
    lw	$t9,32500($a0)
    sw	$t9,100($sp)
    # Line 1232
    lw	$a4,32496($a0)
    sw	$a4,96($sp)
    # Line 1231
    ldc1	$f14,32432($a0)
    # Line 1230
    ldc1	$f13,32416($a0)
    # Line 1231
    sdc1	$f14,88($sp)
    # Line 1230
    sdc1	$f13,80($sp)
    # Line 1229
    ldc1	$f12,32400($a0)
    # Line 1228
    ldc1	$f11,32392($a0)
    # Line 1229
    sdc1	$f12,72($sp)
    # Line 1228
    sdc1	$f11,64($sp)
    # Line 1227
    ldc1	$f10,32384($a0)
    # Line 1233
    andi	$a1,$a5,0x2000
    # Line 1226
    ldc1	$f9,32376($a0)
    # Line 1227
    sdc1	$f10,56($sp)
    # Line 1233
    beqz	$a1,.L0d96bd0c
    # Line 1226
    sdc1	$f9,48($sp)
    # Line 1237
    lwc1	$f16,30432($a0)
    # Line 1236
    lwc1	$f15,30244($a0)
    # Line 1237
    swc1	$f16,108($sp)
    # Line 1236
    swc1	$f15,104($sp)
.L0d96bd0c:
    # Line 1237
    beqz	$a3,.L0d96c198
    lwc1	$f17,_lit_42800000
    lwc1	$f12,_lit_45800000
    ldc1	$f18,_lit8_406fe00000000000
    ldc1	$f16,_lit8_41c0000000000000
    lwc1	$f15,8($sp)
    lwc1	$f14,12($sp)
    lwc1	$f13,16($sp)
    ldc1	$f5,48($sp)
    ldc1	$f7,56($sp)
    ldc1	$f6,64($sp)
    lwc1	$f11,104($sp)
    lwc1	$f25,44($sp)
    sdc1	$f22,496($sp)
    lwc1	$f22,32($sp)
    sdc1	$f20,488($sp)
    lwc1	$f20,28($sp)
    lwc1	$f31,24($sp)
    ldc1	$f21,88($sp)
    ldc1	$f19,80($sp)
    ldc1	$f23,72($sp)
    lwc1	$f29,108($sp)
    lwc1	$f27,20($sp)
    lwc1	$f8,40($sp)
    sw	$s3,0($sp)
    sd	$s2,480($sp)
    sd	$s0,472($sp)
    lw	$v0,96($sp)
    sll	$ra,$a6,0x6
    lw	$v1,100($sp)
    li	$t9,1
    dsll32	$t9,$t9,0xb
    lwc1	$f1,_lit_43800000
    dsrav	$s0,$t9,$v1
    lw	$at,36($sp)
    li	$s2,32
    sra	$v1,$v1,0x1
    lwc1	$f0,_lit_45800000
    sw	$s4,4($sp)
    dsrav	$t9,$t9,$v0
    xori	$at,$at,0x8
    sd	$ra,416($sp)
    sra	$v0,$v0,0x2
    sltiu	$at,$at,1
    move	$a4,$zero
    or	$v0,$v0,$v1
    sd	$v0,408($sp)
    movz.s	$f0,$f1,$at
    andi	$ra,$a5,0x2000
    b	.L0d96be24
    sdc1	$f0,400($sp)
    nop
    nop
.L0d96bde0:
    # Line 1347
    mul.d	$f2,$f2,$f18
    cvt.s.d	$f2,$f2
    mul.s	$f2,$f12,$f2
    trunc.w.s	$f2,$f2
    swc1	$f2,392($sp)
    lw	$at,392($sp)
    beqz	$a3,.L0d96be0c
    sw	$at,8568($a2)
    # Line 1348
    mtc1	$a5,$f3
    cvt.s.w	$f3,$f3
    madd.s	$f11,$f11,$f3,$f29
.L0d96be0c:
    beqz	$a4,.L0d96c00c
    # Line 1352
    lui	$at,0x1f
.L0d96be14:
    # Line 1357
    lw	$v0,-4($t1)
    # Line 1359
    move	$t0,$a6
    beqz	$a3,.L0d96c188
    # Line 1357
    sw	$v0,10436($a2)
.L0d96be24:
    # Line 1245
    li	$v1,32
    move	$a5,$a3
    slt	$v1,$v1,$a3
    movn	$a5,$s2,$v1
    # Line 1251
    lw	$v1,0($sp)
    # Line 1248
    beqz	$a4,.L0d96c028
    subu	$a3,$a3,$a5
.L0d96be40:
    # Line 1257
    sll	$a6,$t0,0x6
    sw	$a6,120($sp)
    addu	$a6,$a5,$t0
    lw	$a1,120($sp)
    # Line 1259
    sll	$at,$a6,0x6
    # Line 1257
    beqz	$a7,.L0d96c098
    sw	$a1,8320($a2)
    # Line 1259
    sw	$at,124($sp)
    lw	$t0,124($sp)
    sw	$t0,8328($a2)
.L0d96be68:
    # Line 1261
    beqz	$t8,.L0d96bea8
    nop
    beqz	$a4,.L0d96c310
    nop
.L0d96be78:
    # Line 1268
    mul.s	$f0,$f17,$f8
    cvt.d.s	$f0,$f0
    sdc1	$f0,160($sp)
    ldc1	$f10,160($sp)
    trunc.l.d	$f10,$f10
    sdc1	$f10,168($sp)
    ldc1	$f9,168($sp)
    # Line 1269
    mtc1	$a5,$f1
    # Line 1268
    beqz	$a3,.L0d96bea8
    sdc1	$f9,8648($a2)
    # Line 1269
    cvt.s.w	$f1,$f1
    madd.s	$f8,$f8,$f1,$f25
.L0d96bea8:
    beqz	$t3,.L0d96c0b0
    # Line 1308
    ldc1	$f2,400($sp)
    # Line 1269
    beqz	$a4,.L0d96c0f8
    nop
    # Line 1282
    beqz	$a7,.L0d96bf1c
    nop
.L0d96bec0:
    # Line 1287
    mul.s	$f0,$f12,$f4
    mul.s	$f10,$f12,$f15
    trunc.w.s	$f0,$f0
    trunc.w.s	$f10,$f10
    swc1	$f0,216($sp)
    swc1	$f10,220($sp)
    # Line 1288
    mul.s	$f9,$f12,$f14
    # Line 1287
    ldc1	$f10,216($sp)
    # Line 1288
    mul.s	$f3,$f12,$f13
    trunc.w.s	$f9,$f9
    # Line 1287
    sdc1	$f10,8416($a2)
    # Line 1288
    trunc.w.s	$f3,$f3
    swc1	$f9,224($sp)
    swc1	$f3,228($sp)
    ldc1	$f2,224($sp)
    # Line 1290
    mtc1	$a5,$f1
    # Line 1288
    beqz	$a3,.L0d96bf1c
    sdc1	$f2,8424($a2)
    # Line 1290
    cvt.s.w	$f1,$f1
    # Line 1293
    madd.s	$f13,$f13,$f1,$f22
    # Line 1292
    madd.s	$f14,$f14,$f1,$f20
    # Line 1291
    madd.s	$f15,$f15,$f1,$f31
    # Line 1290
    madd.s	$f4,$f4,$f1,$f27
.L0d96bf1c:
    # Line 1309
    beqz	$t2,.L0d96c004
    # Line 1356
    addiu	$t1,$t1,4
    # Line 1309
    dmtc1	$t9,$f9
    dmtc1	$s0,$f10
    cvt.d.l	$f9,$f9
    beqz	$a4,.L0d96c208
    cvt.d.l	$f10,$f10
.L0d96bf38:
    # Line 1333
    mul.d	$f3,$f9,$f5
    sdc1	$f3,344($sp)
    ldc1	$f2,344($sp)
    trunc.l.d	$f2,$f2
    dmfc1	$t0,$f2
    daddiu	$t0,$t0,2048
    sd	$t0,352($sp)
    # Line 1334
    mul.d	$f1,$f10,$f7
    # Line 1333
    ldc1	$f2,352($sp)
    # Line 1334
    sdc1	$f1,360($sp)
    ldc1	$f0,360($sp)
    trunc.l.d	$f0,$f0
    dmfc1	$a1,$f0
    # Line 1335
    mul.d	$f3,$f16,$f6
    # Line 1334
    daddiu	$a1,$a1,2048
    sd	$a1,368($sp)
    # Line 1335
    cvt.s.d	$f3,$f3
    # Line 1334
    ldc1	$f0,368($sp)
    # Line 1335
    swc1	$f3,376($sp)
    lwc1	$f1,376($sp)
    trunc.w.s	$f1,$f1
    # Line 1333
    sdc1	$f2,8480($a2)
    # Line 1335
    mfc1	$v1,$f1
    # Line 1334
    sdc1	$f0,8488($a2)
    # Line 1335
    addiu	$v1,$v1,2048
    sw	$v1,380($sp)
    # Line 1337
    mtc1	$a5,$f9
    # Line 1335
    lw	$v0,380($sp)
    beqz	$a3,.L0d96bfc0
    sw	$v0,8496($a2)
    # Line 1337
    cvt.d.w	$f9,$f9
    # Line 1339
    madd.d	$f6,$f6,$f9,$f21
    # Line 1338
    madd.d	$f7,$f7,$f9,$f19
    # Line 1337
    madd.d	$f5,$f5,$f9,$f23
.L0d96bfc0:
    # Line 1339
    beqz	$ra,.L0d96be0c
    nop
    bnez	$a4,.L0d96bde0
    # Line 1347
    cvt.d.s	$f2,$f11
    # Line 1344
    mul.s	$f10,$f29,$f12
    trunc.w.s	$f10,$f10
    swc1	$f10,384($sp)
    lw	$a1,384($sp)
    lw	$v1,384($sp)
    sw	$a1,8576($a2)
    sw	$v1,8576($s1)
    # Line 1345
    sw	$zero,388($sp)
    lw	$v0,388($sp)
    lw	$at,388($sp)
    sw	$v0,8584($a2)
    b	.L0d96bde0
    sw	$at,8584($s1)
.L0d96c004:
    # Line 1348
    bnez	$a4,.L0d96be14
    # Line 1352
    lui	$at,0x1f
.L0d96c00c:
    sw	$at,396($sp)
    lw	$t0,396($sp)
    lw	$a5,396($sp)
    sw	$t0,8384($a2)
    li	$a4,1
    b	.L0d96be14
    sw	$a5,8384($s1)
.L0d96c028:
    # Line 1248
    lw	$v0,32092($a0)
    beq	$v0,$s3,.L0d96c048
    nop
    # Line 1251
    lw	$a6,32184($a0)
    sw	$s3,8216($a6)
    lw	$a1,32188($a0)
    sw	$v1,8216($a1)
    sw	$v1,32092($a0)
.L0d96c048:
    lw	$at,32096($a0)
    beq	$at,$s4,.L0d96c068
    # Line 1252
    lw	$v0,4($sp)
    lw	$a1,32184($a0)
    sw	$s4,8288($a1)
    lw	$v1,32188($a0)
    sw	$v0,8288($v1)
    sw	$v0,32096($a0)
.L0d96c068:
    # Line 1254
    ld	$v0,416($sp)
    sw	$v0,112($sp)
    lw	$a1,112($sp)
    lw	$v1,112($sp)
    sw	$a1,8324($a2)
    sw	$v1,8324($s1)
    # Line 1255
    sw	$v0,116($sp)
    lw	$at,116($sp)
    lw	$a6,116($sp)
    sw	$at,8332($a2)
    b	.L0d96be40
    sw	$a6,8332($s1)
.L0d96c098:
    # Line 1261
    addiu	$at,$a6,-1
    sll	$at,$at,0x6
    sw	$at,128($sp)
    lw	$t0,128($sp)
    b	.L0d96be68
    sw	$t0,8328($a2)
.L0d96c0b0:
    # Line 1293
    beqz	$a4,.L0d96c374
    # Line 1299
    ldc1	$f0,400($sp)
    # Line 1304
    beqz	$a7,.L0d96bf1c
    nop
.L0d96c0c0:
    # Line 1308
    swc1	$f4,248($sp)
    lwc1	$f1,248($sp)
    mul.s	$f1,$f1,$f2
    swc1	$f1,248($sp)
    lwc1	$f0,248($sp)
    trunc.w.s	$f0,$f0
    swc1	$f0,252($sp)
    lw	$v0,252($sp)
    beqz	$a3,.L0d96bf1c
    sw	$v0,8428($a2)
    # Line 1309
    mtc1	$a5,$f3
    cvt.s.w	$f3,$f3
    b	.L0d96bf1c
    madd.s	$f4,$f4,$f3,$f27
.L0d96c0f8:
    # Line 1269
    beqz	$a7,.L0d96c3cc
    # Line 1279
    ld	$v0,424($sp)
    # Line 1274
    mul.s	$f3,$f27,$f12
    mul.s	$f2,$f31,$f12
    trunc.w.s	$f3,$f3
    trunc.w.s	$f2,$f2
    swc1	$f3,176($sp)
    swc1	$f2,180($sp)
    ldc1	$f1,176($sp)
    # Line 1276
    mul.s	$f10,$f20,$f12
    # Line 1274
    ldc1	$f0,176($sp)
    # Line 1276
    mul.s	$f9,$f22,$f12
    # Line 1274
    sdc1	$f1,8432($a2)
    # Line 1276
    trunc.w.s	$f10,$f10
    # Line 1274
    sdc1	$f0,8432($s1)
    # Line 1276
    trunc.w.s	$f9,$f9
    swc1	$f10,184($sp)
    swc1	$f9,188($sp)
    ldc1	$f3,184($sp)
    ldc1	$f2,184($sp)
    # Line 1278
    sd	$zero,192($sp)
    ldc1	$f1,192($sp)
    ldc1	$f0,192($sp)
    # Line 1279
    sd	$zero,200($sp)
    ldc1	$f10,200($sp)
    ldc1	$f9,200($sp)
    # Line 1276
    sdc1	$f3,8448($a2)
    sdc1	$f2,8448($s1)
    # Line 1278
    sdc1	$f1,8440($a2)
    sdc1	$f0,8440($s1)
    # Line 1279
    sdc1	$f10,8456($a2)
    sdc1	$f9,8456($s1)
.L0d96c178:
    # Line 1282
    bnez	$a7,.L0d96bec0
    nop
    b	.L0d96bf1c
    nop
.L0d96c188:
    ld	$s0,472($sp)
    ld	$s2,480($sp)
    ldc1	$f20,488($sp)
    ldc1	$f22,496($sp)
.L0d96c198:
    # Line 1359
    lw	$a2,32088($a0)
    lw	$v1,32092($a0)
    ld	$s3,448($sp)
    # Line 1362
    ld	$a3,424($sp)
    # Line 1359
    beq	$v1,$a2,.L0d96c1d8
    ld	$s4,456($sp)
    # Line 1362
    lw	$a6,32184($a0)
    sw	$a2,8216($a6)
    lw	$a5,32188($a0)
    lw	$a4,32088($a0)
    sw	$a4,8216($a5)
    lw	$a1,32088($a0)
    bnez	$a3,.L0d96c1e4
    sw	$a1,32092($a0)
    b	.L0d96c1f4
    ld	$ra,464($sp)
.L0d96c1d8:
    ld	$a7,424($sp)
    beqz	$a7,.L0d96c1f4
    ld	$ra,464($sp)
.L0d96c1e4:
    # Line 1365
    li	$t0,0x8080
    addu	$t0,$t0,$a0
    sw	$zero,0($t0)
    ld	$ra,464($sp)
.L0d96c1f4:
    # Line 1367
    move	$v0,$zero
    ld	$gp,432($sp)
    ld	$s1,440($sp)
    jr	$ra
    addiu	$sp,$sp,512
.L0d96c208:
    # Line 1315
    ld	$v0,408($sp)
    sw	$v0,256($sp)
    lw	$at,256($sp)
    lw	$t0,256($sp)
    sw	$at,8500($a2)
    # Line 1318
    mul.d	$f3,$f23,$f9
    # Line 1315
    sw	$t0,8500($s1)
    # Line 1318
    sdc1	$f3,264($sp)
    ldc1	$f2,264($sp)
    trunc.l.d	$f2,$f2
    sdc1	$f2,272($sp)
    ldc1	$f0,272($sp)
    # Line 1320
    mul.d	$f1,$f19,$f10
    # Line 1318
    ldc1	$f3,272($sp)
    # Line 1320
    sdc1	$f1,280($sp)
    ldc1	$f2,280($sp)
    # Line 1318
    sdc1	$f0,8504($a2)
    sdc1	$f3,8504($s1)
    # Line 1320
    trunc.l.d	$f2,$f2
    # Line 1322
    mul.d	$f1,$f21,$f16
    # Line 1320
    sdc1	$f2,288($sp)
    ldc1	$f0,288($sp)
    # Line 1322
    cvt.s.d	$f1,$f1
    # Line 1320
    ldc1	$f3,288($sp)
    # Line 1322
    swc1	$f1,296($sp)
    lwc1	$f2,296($sp)
    # Line 1320
    sdc1	$f0,8520($a2)
    sdc1	$f3,8520($s1)
    # Line 1322
    trunc.w.s	$f2,$f2
    swc1	$f2,300($sp)
    lw	$a1,300($sp)
    lw	$v1,300($sp)
    sw	$a1,8536($a2)
    sw	$v1,8536($s1)
    # Line 1326
    ldc1	$f1,32408($a0)
    mul.d	$f1,$f1,$f9
    sdc1	$f1,304($sp)
    ldc1	$f0,304($sp)
    trunc.l.d	$f0,$f0
    sdc1	$f0,312($sp)
    ldc1	$f3,312($sp)
    ldc1	$f2,312($sp)
    sdc1	$f3,8512($a2)
    sdc1	$f2,8512($s1)
    # Line 1328
    ldc1	$f1,32424($a0)
    mul.d	$f1,$f1,$f10
    sdc1	$f1,320($sp)
    ldc1	$f0,320($sp)
    trunc.l.d	$f0,$f0
    sdc1	$f0,328($sp)
    ldc1	$f3,328($sp)
    ldc1	$f2,328($sp)
    sdc1	$f3,8528($a2)
    sdc1	$f2,8528($s1)
    # Line 1330
    ldc1	$f1,32440($a0)
    mul.d	$f1,$f1,$f16
    cvt.s.d	$f1,$f1
    swc1	$f1,336($sp)
    lwc1	$f0,336($sp)
    trunc.w.s	$f0,$f0
    swc1	$f0,340($sp)
    lw	$v0,340($sp)
    lw	$at,340($sp)
    sw	$v0,8540($a2)
    b	.L0d96bf38
    sw	$at,8540($s1)
.L0d96c310:
    # Line 1265
    mul.s	$f3,$f25,$f17
    cvt.d.s	$f3,$f3
    sdc1	$f3,136($sp)
    ldc1	$f2,136($sp)
    trunc.l.d	$f2,$f2
    sdc1	$f2,144($sp)
    ldc1	$f1,144($sp)
    ldc1	$f0,144($sp)
    # Line 1266
    sd	$zero,152($sp)
    ldc1	$f10,152($sp)
    ldc1	$f9,152($sp)
    # Line 1265
    sdc1	$f1,8656($a2)
    sdc1	$f0,8656($s1)
    # Line 1266
    sdc1	$f10,8664($a2)
    b	.L0d96be78
    sdc1	$f9,8664($s1)
.L0d96c350:
    # Line 1183
    # lw $t9, -31360($gp) # &__glCrmDumpPerPixelStippledSpan
.L0d96c354:
    ld	$s4,456($sp)
    bal __glCrmDumpPerPixelStippledSpan
    ld	$s3,448($sp)
    ld	$ra,464($sp)
    # Line 1367
    ld	$gp,432($sp)
    ld	$s1,440($sp)
    jr	$ra
    addiu	$sp,$sp,512
.L0d96c374:
    # Line 1293
    beqz	$a7,.L0d96c4d4
    # Line 1301
    ld	$v1,424($sp)
    # Line 1299
    swc1	$f27,232($sp)
    lwc1	$f10,232($sp)
    mul.s	$f10,$f10,$f0
    swc1	$f10,232($sp)
    lwc1	$f9,232($sp)
    trunc.w.s	$f9,$f9
    swc1	$f9,236($sp)
    lw	$at,236($sp)
    lw	$t0,236($sp)
    sw	$at,8452($a2)
    sw	$t0,8452($s1)
    # Line 1301
    sw	$zero,240($sp)
    lw	$a1,240($sp)
    lw	$v1,240($sp)
    sw	$a1,8460($a2)
    sw	$v1,8460($s1)
.L0d96c3bc:
    # Line 1304
    bnez	$a7,.L0d96c0c0
    nop
    b	.L0d96bf1c
    nop
.L0d96c3cc:
    # Line 1279
    beqz	$v0,.L0d96c178
    nop
    # Line 1282
    trunc.w.s	$f9,$f4
    trunc.w.s	$f2,$f15
    trunc.w.s	$f3,$f14
    mfc1	$v1,$f9
    trunc.w.s	$f1,$f13
    mfc1	$v0,$f2
    mfc1	$at,$f3
    sll	$v1,$v1,0x18
    mfc1	$t0,$f1
    sll	$v0,$v0,0x10
    sll	$at,$at,0x8
    or	$at,$at,$v0
    or	$t0,$t0,$v1
    or	$t0,$t0,$at
    sw	$t0,208($sp)
    lw	$a1,208($sp)
    lw	$v1,208($sp)
    sw	$a1,8400($a2)
    b	.L0d96c178
    sw	$v1,8400($s1)
.L0d96c424:
    # Line 1169
    andi	$a1,$a5,0x2000
    nor	$a4,$a5,$zero
    beqz	$a1,.L0d96c43c
    andi	$a4,$a4,0x8
    bnez	$a4,.L0d96bb74
    li	$a4,1
.L0d96c43c:
    b	.L0d96bb74
    move	$a4,$zero
.L0d96c444:
    # Line 1207
    beqz	$a7,.L0d96c4f8
    # Line 1193
    lui	$ra,0x4
    # Line 1189
    li	$ra,-12289
    # Line 1190
    lw	$at,32116($a0)
    # Line 1189
    lui	$t8,0x8
    # Line 1191
    lui	$t9,0xffff
    sd	$zero,424($sp)
    # Line 1189
    and	$s3,$s3,$ra
    # Line 1191
    and	$s4,$at,$t9
    # Line 1190
    sw	$at,4($sp)
    # Line 1189
    or	$s3,$s3,$t8
    # Line 1191
    ori	$s4,$s4,0x20
.L0d96c474:
    # Line 1196
    beqz	$t3,.L0d96c494
    nop
    # Line 1205
    lwc1	$f10,30212($a0)
    # Line 1207
    lwc1	$f12,30220($a0)
    # Line 1206
    lwc1	$f11,30216($a0)
    # Line 1207
    swc1	$f12,16($sp)
    # Line 1206
    swc1	$f11,12($sp)
    # Line 1205
    swc1	$f10,8($sp)
.L0d96c494:
    # Line 1207
    beqz	$a7,.L0d96bc70
    nop
    lw	$t1,30472($a0)
    # Line 1212
    lwc1	$f13,30284($a0)
    # Line 1207
    lwc1	$f4,30208($a0)
    # Line 1212
    beqz	$t3,.L0d96c554
    swc1	$f13,20($sp)
    # Line 1214
    lwc1	$f14,30288($a0)
    # Line 1216
    lwc1	$f16,30296($a0)
    # Line 1215
    lwc1	$f15,30292($a0)
    # Line 1216
    swc1	$f16,32($sp)
    # Line 1215
    swc1	$f15,28($sp)
    # Line 1216
    b	.L0d96bc78
    # Line 1214
    swc1	$f14,24($sp)
.L0d96c4cc:
    b	.L0d96bc48
    # Line 1196
    andi	$t3,$a5,0x1
.L0d96c4d4:
    # Line 1301
    beqz	$v1,.L0d96c3bc
    nop
    # Line 1304
    trunc.w.s	$f0,$f4
    swc1	$f0,244($sp)
    lw	$t0,244($sp)
    lw	$a1,244($sp)
    sw	$t0,8400($a2)
    b	.L0d96c3bc
    sw	$a1,8400($s1)
.L0d96c4f8:
    # Line 1195
    lw	$s4,4($sp)
    lui	$t8,0xff
    # Line 1196
    lui	$a4,0x1
    addu	$a4,$a0,$a4
    # Line 1195
    ori	$t8,$t8,0xffff
    lui	$t9,0x300
    and	$s4,$s4,$t8
    # Line 1196
    lw	$t8,-32644($a4)
    # Line 1195
    or	$s4,$s4,$t9
    lui	$t9,0x3
    # Line 1196
    andi	$t8,$t8,0x2
    # Line 1195
    nor	$t9,$t9,$zero
    # Line 1193
    or	$s3,$s3,$ra
    # Line 1195
    and	$s4,$s4,$t9
    # Line 1196
    lw	$t9,-32640($a4)
    beqz	$t8,.L0d96c544
    # Line 1195
    or	$s4,$t1,$s4
    # Line 1196
    li	$ra,2
    beq	$t9,$ra,.L0d96c560
.L0d96c544:
    li	$a4,1
.L0d96c548:
    andi	$at,$a4,0xff
    b	.L0d96c474
    sd	$at,424($sp)
.L0d96c554:
    # Line 1218
    lw	$v0,3252($a0)
    b	.L0d96bc78
    sw	$v0,36($sp)
.L0d96c560:
    b	.L0d96c548
    # Line 1196
    move	$a4,$zero
.end __glCrmDumpStippledSpan

# Function: __glCrmDumpStippledFlatSpan
# Declared: Line 1374 (Source lines: 1375-1462)
# Address: 0x0d96c570 - 0x0d96c8d0 (Size: 864 bytes, Frame: 128)
.globl __glCrmDumpStippledFlatSpan
.ent __glCrmDumpStippledFlatSpan
__glCrmDumpStippledFlatSpan:
    # Line 1388
    lw	$t8,32188($a0)
    lw	$a5,32184($a0)
    # Line 1379
    lw	$a3,30436($a0)
    # Line 1375
    addiu	$sp,$sp,-128
    # Line 1378
    lw	$a1,32088($a0)
    sw	$a1,0($sp)
    # Line 1393
    li	$a6,2
    # Line 1375
    lui	$v1,0xe
    sd	$ra,120($sp)
    # Line 1390
    lui	$v0,0x4
    # Line 1375
    addiu	$v1,$v1,18460
    # Line 1390
    lw	$ra,0($sp)
    # Line 1375
    sd	$s0,112($sp)
    addu	$at,$t9,$v1
    # Line 1392
    lui	$t9,0xff
    lw	$s0,4($sp)
    # Line 1390
    or	$ra,$ra,$v0
    # Line 1393
    lui	$v0,0x1
    # Line 1392
    ori	$t9,$t9,0xffff
    # Line 1393
    addu	$v0,$a0,$v0
    sd	$v0,104($sp)
    # Line 1392
    and	$s0,$s0,$t9
    lui	$t9,0x300
    # Line 1393
    lw	$v0,-32644($v0)
    # Line 1382
    lw	$t1,30200($a0)
    # Line 1392
    or	$s0,$s0,$t9
    lui	$t9,0x3
    # Line 1381
    lw	$a7,30196($a0)
    # Line 1392
    nor	$t9,$t9,$zero
    # Line 1393
    andi	$v0,$v0,0x2
    # Line 1380
    lw	$a4,30248($a0)
    # Line 1392
    and	$s0,$s0,$t9
    lui	$t9,0x2
    # Line 1402
    lwc1	$f10,30220($a0)
    # Line 1393
    beqz	$v0,.L0d96c60c
    # Line 1392
    or	$s0,$s0,$t9
    # Line 1393
    ld	$a2,104($sp)
    lw	$a2,-32640($a2)
    beq	$a2,$a6,.L0d96c8c8
.L0d96c60c:
    li	$a6,1
.L0d96c610:
    # Line 1397
    lw	$t0,30472($a0)
    # Line 1399
    lwc1	$f9,30208($a0)
    # Line 1402
    andi	$t2,$a3,0x4
    # Line 1400
    lwc1	$f8,30212($a0)
    # Line 1401
    lwc1	$f7,30216($a0)
    # Line 1402
    beqz	$t2,.L0d96c654
    # Line 1406
    andi	$t9,$a6,0xff
    # Line 1405
    lw	$a3,30204($a0)
    # Line 1406
    lw	$t3,30324($a0)
    # Line 1405
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    # Line 1406
    mtc1	$t3,$f1
    # Line 1405
    dmtc1	$a3,$f0
    # Line 1406
    cvt.s.w	$f1,$f1
    # Line 1405
    cvt.s.l	$f0,$f0
    # Line 1406
    swc1	$f1,12($sp)
    # Line 1405
    swc1	$f0,8($sp)
.L0d96c654:
    # Line 1406
    beqz	$a4,.L0d96c81c
    lwc1	$f6,12($sp)
    li	$t3,32
    trunc.w.s	$f5,$f9
    trunc.w.s	$f3,$f7
    trunc.w.s	$f4,$f8
    mfc1	$a2,$f5
    sw	$ra,0($sp)
    sll	$a3,$t1,0x6
    trunc.w.s	$f2,$f10
    mfc1	$a1,$f3
    sw	$s0,4($sp)
    mfc1	$v1,$f4
    sll	$a2,$a2,0x18
    sd	$a3,96($sp)
    mfc1	$v0,$f2
    sll	$a1,$a1,0x8
    move	$a3,$zero
    lwc1	$f5,_lit_42800000
    sll	$v1,$v1,0x10
    lwc1	$f4,8($sp)
    or	$v1,$v1,$a1
    or	$v0,$v0,$a2
    or	$v0,$v0,$v1
    b	.L0d96c6e0
    sd	$v0,88($sp)
.L0d96c6bc:
    # Line 1442
    beqz	$a3,.L0d96c770
    # Line 1446
    lui	$v0,0x1f
    nop
    nop
    nop
.L0d96c6d0:
    # Line 1451
    lw	$a6,-4($t0)
    # Line 1453
    move	$a7,$t1
    beqz	$a4,.L0d96c81c
    # Line 1451
    sw	$a6,10436($a5)
.L0d96c6e0:
    # Line 1413
    li	$t1,32
    move	$a6,$a4
    slt	$t1,$t1,$a4
    movn	$a6,$t3,$t1
    # Line 1419
    lw	$a1,0($sp)
    # Line 1416
    beqz	$a3,.L0d96c78c
    subu	$a4,$a4,$a6
.L0d96c6fc:
    # Line 1426
    sll	$a2,$a7,0x6
    sw	$a2,24($sp)
    lw	$a1,24($sp)
    # Line 1427
    addu	$t1,$a6,$a7
    # Line 1426
    sw	$a1,8320($a5)
    # Line 1427
    addiu	$v1,$t1,-1
    sll	$v1,$v1,0x6
    sw	$v1,28($sp)
    lw	$v0,28($sp)
    # Line 1450
    addiu	$t0,$t0,4
    # Line 1427
    beqz	$a3,.L0d96c7fc
    sw	$v0,8328($a5)
.L0d96c72c:
    # Line 1431
    beqz	$t2,.L0d96c6bc
    nop
    beqz	$a3,.L0d96c888
    # Line 1441
    mul.s	$f9,$f5,$f4
.L0d96c73c:
    cvt.d.s	$f9,$f9
    sdc1	$f9,64($sp)
    ldc1	$f8,64($sp)
    trunc.l.d	$f8,$f8
    sdc1	$f8,72($sp)
    ldc1	$f7,72($sp)
    beqz	$a4,.L0d96c768
    sdc1	$f7,8648($a5)
    # Line 1442
    mtc1	$a6,$f10
    cvt.s.w	$f10,$f10
    madd.s	$f4,$f4,$f10,$f6
.L0d96c768:
    bnez	$a3,.L0d96c6d0
    # Line 1446
    lui	$v0,0x1f
.L0d96c770:
    sw	$v0,80($sp)
    lw	$a7,80($sp)
    lw	$a6,80($sp)
    sw	$a7,8384($a5)
    li	$a3,1
    b	.L0d96c6d0
    sw	$a6,8384($t8)
.L0d96c78c:
    # Line 1416
    lw	$v1,32092($a0)
    beq	$v1,$ra,.L0d96c7ac
    nop
    # Line 1419
    lw	$t1,32184($a0)
    sw	$ra,8216($t1)
    lw	$a2,32188($a0)
    sw	$a1,8216($a2)
    sw	$a1,32092($a0)
.L0d96c7ac:
    lw	$v0,32096($a0)
    beq	$v0,$s0,.L0d96c7cc
    # Line 1420
    lw	$v1,4($sp)
    lw	$a2,32184($a0)
    sw	$s0,8288($a2)
    lw	$a1,32188($a0)
    sw	$v1,8288($a1)
    sw	$v1,32096($a0)
.L0d96c7cc:
    # Line 1422
    ld	$v1,96($sp)
    sw	$v1,16($sp)
    lw	$a2,16($sp)
    lw	$a1,16($sp)
    sw	$a2,8324($a5)
    sw	$a1,8324($t8)
    # Line 1423
    sw	$v1,20($sp)
    lw	$v0,20($sp)
    lw	$t1,20($sp)
    sw	$v0,8332($a5)
    b	.L0d96c6fc
    sw	$t1,8332($t8)
.L0d96c7fc:
    # Line 1427
    beqz	$t9,.L0d96c72c
    # Line 1431
    ld	$v1,88($sp)
    sw	$v1,32($sp)
    lw	$v0,32($sp)
    lw	$a7,32($sp)
    sw	$v0,8400($a5)
    b	.L0d96c72c
    sw	$a7,8400($t8)
.L0d96c81c:
    # Line 1453
    lw	$a3,32088($a0)
    lw	$a1,32092($a0)
    # Line 1459
    ld	$a7,104($sp)
    # Line 1462
    ld	$s0,112($sp)
    move	$v0,$zero
    # Line 1453
    beq	$a1,$a3,.L0d96c860
    # Line 1462
    ld	$ra,120($sp)
    # Line 1456
    lw	$a6,32184($a0)
    sw	$a3,8216($a6)
    lw	$a5,32188($a0)
    lw	$a4,32088($a0)
    sw	$a4,8216($a5)
    lw	$a2,32088($a0)
    bnez	$t9,.L0d96c868
    sw	$a2,32092($a0)
    b	.L0d96c878
    # Line 1462
    ld	$ra,120($sp)
.L0d96c860:
    # Line 1456
    beqz	$t9,.L0d96c874
    nop
.L0d96c868:
    # Line 1462
    addiu	$sp,$sp,128
    jr	$ra
    # Line 1459
    sw	$zero,-32640($a7)
.L0d96c874:
    # Line 1462
    ld	$ra,120($sp)
.L0d96c878:
    move	$v0,$zero
    ld	$s0,112($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d96c888:
    # Line 1438
    mul.s	$f16,$f6,$f5
    cvt.d.s	$f16,$f16
    sdc1	$f16,40($sp)
    ldc1	$f15,40($sp)
    trunc.l.d	$f15,$f15
    sdc1	$f15,48($sp)
    ldc1	$f14,48($sp)
    ldc1	$f13,48($sp)
    # Line 1439
    sd	$zero,56($sp)
    ldc1	$f12,56($sp)
    ldc1	$f11,56($sp)
    # Line 1438
    sdc1	$f14,8656($a5)
    sdc1	$f13,8656($t8)
    # Line 1439
    sdc1	$f12,8664($a5)
    b	.L0d96c73c
    sdc1	$f11,8664($t8)
.L0d96c8c8:
    b	.L0d96c610
    # Line 1393
    move	$a6,$zero
.end __glCrmDumpStippledFlatSpan

# Function: __glCrmDumpStippledSmoothSpan
# Declared: Line 1469 (Source lines: 1470-1567)
# Address: 0x0d96c8d0 - 0x0d96cc64 (Size: 916 bytes, Frame: 144)
.globl __glCrmDumpStippledSmoothSpan
.ent __glCrmDumpStippledSmoothSpan
__glCrmDumpStippledSmoothSpan:
    # Line 1500
    lwc1	$f13,30296($a0)
    # Line 1499
    lwc1	$f11,30292($a0)
    # Line 1498
    lwc1	$f10,30288($a0)
    # Line 1497
    lwc1	$f12,30284($a0)
    # Line 1495
    lwc1	$f6,30220($a0)
    # Line 1494
    lwc1	$f4,30216($a0)
    # Line 1493
    lwc1	$f7,30212($a0)
    # Line 1492
    lwc1	$f5,30208($a0)
    # Line 1490
    lw	$t0,30472($a0)
    # Line 1482
    lw	$t8,32188($a0)
    lw	$a4,32184($a0)
    # Line 1477
    lw	$a6,30200($a0)
    # Line 1487
    lw	$v1,32116($a0)
    # Line 1470
    addiu	$sp,$sp,-144
    sd	$s0,136($sp)
    # Line 1474
    lw	$v0,32088($a0)
    # Line 1504
    li	$t3,32
    # Line 1474
    sw	$v0,0($sp)
    # Line 1486
    li	$v0,-12289
    sd	$ra,128($sp)
    # Line 1470
    lui	$ra,0xe
    # Line 1488
    lui	$s0,0xffff
    # Line 1472
    lw	$t2,30436($a0)
    # Line 1470
    addiu	$ra,$ra,17596
    # Line 1488
    and	$s0,$v1,$s0
    # Line 1470
    addu	$at,$t9,$ra
    # Line 1486
    lw	$ra,0($sp)
    # Line 1476
    lw	$a7,30196($a0)
    # Line 1488
    ori	$s0,$s0,0x20
    # Line 1500
    andi	$t2,$t2,0x4
    # Line 1475
    lw	$a3,30248($a0)
    # Line 1486
    and	$ra,$ra,$v0
    lui	$v0,0x8
    # Line 1487
    sw	$v1,4($sp)
    # Line 1500
    beqz	$t2,.L0d96c988
    # Line 1486
    or	$ra,$ra,$v0
    # Line 1504
    lw	$v1,30324($a0)
    # Line 1503
    lw	$v0,30204($a0)
    # Line 1504
    mtc1	$v1,$f1
    # Line 1503
    dsll32	$v0,$v0,0x0
    dsrl32	$v0,$v0,0x0
    dmtc1	$v0,$f0
    # Line 1504
    cvt.s.w	$f1,$f1
    # Line 1503
    cvt.s.l	$f0,$f0
    # Line 1504
    swc1	$f1,12($sp)
    # Line 1503
    swc1	$f0,8($sp)
.L0d96c988:
    # Line 1504
    beqz	$a3,.L0d96cbc8
    lwc1	$f8,8($sp)
    lwc1	$f15,12($sp)
    lwc1	$f9,_lit_45800000
    lwc1	$f14,_lit_42800000
    sll	$t9,$a6,0x6
    sw	$ra,0($sp)
    move	$a5,$zero
    b	.L0d96cc58
    sw	$s0,4($sp)
.L0d96c9b0:
    # Line 1532
    beqz	$a5,.L0d96cab8
    nop
    nop
    nop
.L0d96c9c0:
    # Line 1544
    mul.s	$f18,$f9,$f5
    mul.s	$f17,$f9,$f7
    trunc.w.s	$f18,$f18
    trunc.w.s	$f17,$f17
    swc1	$f18,104($sp)
    swc1	$f17,108($sp)
    # Line 1545
    mul.s	$f16,$f9,$f4
    # Line 1544
    ldc1	$f17,104($sp)
    # Line 1545
    mul.s	$f3,$f9,$f6
    trunc.w.s	$f16,$f16
    # Line 1544
    sdc1	$f17,8416($a4)
    # Line 1545
    trunc.w.s	$f3,$f3
    swc1	$f16,112($sp)
    swc1	$f3,116($sp)
    ldc1	$f2,112($sp)
    beqz	$a3,.L0d96cb34
    sdc1	$f2,8424($a4)
    # Line 1548
    mtc1	$a6,$f19
    cvt.s.w	$f19,$f19
    # Line 1551
    madd.s	$f6,$f6,$f13,$f19
    # Line 1550
    madd.s	$f4,$f4,$f11,$f19
    # Line 1549
    madd.s	$f7,$f7,$f10,$f19
    # Line 1551
    beqz	$a5,.L0d96cb3c
    # Line 1548
    madd.s	$f5,$f5,$f12,$f19
.L0d96ca20:
    # Line 1562
    move	$a7,$t1
.L0d96ca24:
    # Line 1560
    lw	$a1,-4($t0)
    # Line 1559
    addiu	$t0,$t0,4
    # Line 1562
    beqz	$a3,.L0d96cbc8
    # Line 1560
    sw	$a1,10436($a4)
    # Line 1511
    li	$a2,32
.L0d96ca38:
    move	$a6,$a3
    slt	$a2,$a2,$a3
    movn	$a6,$t3,$a2
    # Line 1517
    lw	$a1,0($sp)
    # Line 1514
    beqz	$a5,.L0d96cb5c
    subu	$a3,$a3,$a6
.L0d96ca50:
    # Line 1523
    sll	$a2,$a7,0x6
    sw	$a2,24($sp)
    lw	$a1,24($sp)
    sw	$a1,8320($a4)
    # Line 1524
    addu	$t1,$a6,$a7
    sll	$v1,$t1,0x6
    sw	$v1,28($sp)
    lw	$v0,28($sp)
    beqz	$t2,.L0d96c9b0
    sw	$v0,8328($a4)
    beqz	$a5,.L0d96cc18
    nop
.L0d96ca80:
    # Line 1531
    mul.s	$f25,$f14,$f8
    cvt.d.s	$f25,$f25
    sdc1	$f25,56($sp)
    ldc1	$f23,56($sp)
    trunc.l.d	$f23,$f23
    sdc1	$f23,64($sp)
    ldc1	$f21,64($sp)
    # Line 1532
    mtc1	$a6,$f27
    # Line 1531
    beqz	$a3,.L0d96cab0
    sdc1	$f21,8648($a4)
    # Line 1532
    cvt.s.w	$f27,$f27
    madd.s	$f8,$f8,$f27,$f15
.L0d96cab0:
    bnez	$a5,.L0d96c9c0
    nop
.L0d96cab8:
    # Line 1536
    mul.s	$f23,$f12,$f9
    mul.s	$f21,$f10,$f9
    trunc.w.s	$f23,$f23
    trunc.w.s	$f21,$f21
    swc1	$f23,72($sp)
    swc1	$f21,76($sp)
    ldc1	$f19,72($sp)
    # Line 1538
    mul.s	$f17,$f11,$f9
    # Line 1536
    ldc1	$f18,72($sp)
    # Line 1538
    mul.s	$f16,$f13,$f9
    # Line 1536
    sdc1	$f19,8432($a4)
    # Line 1538
    trunc.w.s	$f17,$f17
    # Line 1536
    sdc1	$f18,8432($t8)
    # Line 1538
    trunc.w.s	$f16,$f16
    swc1	$f17,80($sp)
    swc1	$f16,84($sp)
    ldc1	$f3,80($sp)
    ldc1	$f2,80($sp)
    # Line 1540
    sd	$zero,88($sp)
    ldc1	$f1,88($sp)
    ldc1	$f0,88($sp)
    # Line 1541
    sd	$zero,96($sp)
    ldc1	$f31,96($sp)
    ldc1	$f29,96($sp)
    # Line 1538
    sdc1	$f3,8448($a4)
    sdc1	$f2,8448($t8)
    # Line 1540
    sdc1	$f1,8440($a4)
    sdc1	$f0,8440($t8)
    # Line 1541
    sdc1	$f31,8456($a4)
    b	.L0d96c9c0
    sdc1	$f29,8456($t8)
.L0d96cb34:
    # Line 1551
    bnez	$a5,.L0d96ca24
    # Line 1562
    move	$a7,$t1
.L0d96cb3c:
    # Line 1555
    lui	$v0,0x1f
    sw	$v0,120($sp)
    lw	$a7,120($sp)
    lw	$a6,120($sp)
    sw	$a7,8384($a4)
    li	$a5,1
    b	.L0d96ca20
    sw	$a6,8384($t8)
.L0d96cb5c:
    # Line 1514
    lw	$v1,32092($a0)
    beq	$v1,$ra,.L0d96cb7c
    nop
    # Line 1517
    lw	$t1,32184($a0)
    sw	$ra,8216($t1)
    lw	$a2,32188($a0)
    sw	$a1,8216($a2)
    sw	$a1,32092($a0)
.L0d96cb7c:
    lw	$v0,32096($a0)
    beq	$v0,$s0,.L0d96cb9c
    # Line 1518
    lw	$v1,4($sp)
    lw	$a2,32184($a0)
    sw	$s0,8288($a2)
    lw	$a1,32188($a0)
    sw	$v1,8288($a1)
    sw	$v1,32096($a0)
.L0d96cb9c:
    # Line 1520
    sw	$t9,16($sp)
    lw	$a1,16($sp)
    lw	$v1,16($sp)
    sw	$a1,8324($a4)
    sw	$v1,8324($t8)
    # Line 1521
    sw	$t9,20($sp)
    lw	$v0,20($sp)
    lw	$t1,20($sp)
    sw	$v0,8332($a4)
    b	.L0d96ca50
    sw	$t1,8332($t8)
.L0d96cbc8:
    # Line 1562
    lw	$a4,32088($a0)
    lw	$a2,32092($a0)
    # Line 1567
    ld	$ra,128($sp)
    move	$v0,$zero
    # Line 1562
    beq	$a2,$a4,.L0d96cc04
    # Line 1567
    ld	$s0,136($sp)
    # Line 1565
    lw	$a6,32184($a0)
    sw	$a4,8216($a6)
    lw	$a5,32188($a0)
    lw	$a4,32088($a0)
    sw	$a4,8216($a5)
    lw	$a3,32088($a0)
    # Line 1567
    addiu	$sp,$sp,144
    jr	$ra
    # Line 1565
    sw	$a3,32092($a0)
.L0d96cc04:
    # Line 1567
    ld	$ra,128($sp)
    move	$v0,$zero
    ld	$s0,136($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d96cc18:
    # Line 1528
    mul.s	$f1,$f15,$f14
    cvt.d.s	$f1,$f1
    sdc1	$f1,32($sp)
    ldc1	$f0,32($sp)
    trunc.l.d	$f0,$f0
    sdc1	$f0,40($sp)
    ldc1	$f31,40($sp)
    ldc1	$f29,40($sp)
    # Line 1529
    sd	$zero,48($sp)
    ldc1	$f27,48($sp)
    ldc1	$f25,48($sp)
    # Line 1528
    sdc1	$f31,8656($a4)
    sdc1	$f29,8656($t8)
    # Line 1529
    sdc1	$f27,8664($a4)
    b	.L0d96ca80
    sdc1	$f25,8664($t8)
.L0d96cc58:
    # Line 1559
    addiu	$t0,$t0,4
    b	.L0d96ca38
    # Line 1511
    li	$a2,32
.end __glCrmDumpStippledSmoothSpan

# Function: __glCrmDumpSPBuffSpan
# Declared: Line 1586 (Source lines: 1587-1640)
# Address: 0x0d96cc70 - 0x0d96cef0 (Size: 640 bytes, Frame: 192)
.globl __glCrmDumpSPBuffSpan
.ent __glCrmDumpSPBuffSpan
__glCrmDumpSPBuffSpan:
    # Line 1587
    addiu	$sp,$sp,-192
    sdc1	$f20,120($sp)
    sd	$s5,152($sp)
    sd	$s1,144($sp)
    sd	$s4,136($sp)
    sd	$ra,128($sp)
    sd	$s6,184($sp)
    sd	$s2,176($sp)
    sd	$s7,160($sp)
    # Line 1600
    lw	$a1,30248($a0)
    # Line 1602
    lw	$v0,30200($a0)
    sw	$v0,4($sp)
    # Line 1605
    mtc1	$zero,$f4
    lwc1	$f0,30284($a0)
    sdc1	$f22,112($sp)
    sd	$s8,168($sp)
    # Line 1587
    sd	$s0,88($sp)
    # Line 1605
    c.eq.s	$f0,$f4
    # Line 1612
    addiu	$a2,$sp,12
    # Line 1587
    lui	$at,0xe
    # Line 1603
    lw	$a3,30196($a0)
    # Line 1587
    move	$s0,$a0
    sd	$s3,96($sp)
    addiu	$at,$at,16668
    sd	$gp,80($sp)
    addu	$gp,$t9,$at
    # Line 1605
    bc1f	.L0d96cd10
    # Line 1604
    addu	$s3,$a3,$a1
    # Line 1605
    lwc1	$f2,30292($a0)
    lwc1	$f1,30288($a0)
    c.eq.s $f1,$f4
    bc1f .L0d96cd10
    lwc1	$f3,30296($a0)
    c.eq.s $f2,$f4
    bc1f .L0d96cd10
    nop
    c.eq.s $f3,$f4
    bc1f .L0d96cd10
    nop
    # Line 1607
    sb	$zero,56($sp)
.L0d96cd10:
    # Line 1608
    lwc1	$f7,30208($s0)
    swc1	$f7,12($sp)
    lwc1	$f6,30212($s0)
    swc1	$f6,16($sp)
    lwc1	$f5,30216($s0)
    swc1	$f5,20($sp)
    lwc1	$f4,30220($s0)
    # Line 1612
    lbu	$s6,56($sp)
    slt	$v1,$a3,$s3
    # Line 1608
    swc1	$f4,24($sp)
    # Line 1612
    beqz	$v1,.L0d96ceb0
    # Line 1610
    lw	$a0,1792($s0)
    # Line 1612
    lwc1	$f22,_lit_3d000000
    addiu	$s8,$s0,30664
    la	$s7,__glDitherTable
    andi	$s4,$a0,0x2
    sd	$a2,104($sp)
    b	.L0d96ce1c
    andi	$s5,$a0,0x8
    nop
.L0d96cd60:
    # Line 1620
    bnez	$s4,.L0d96ce90
    lwc1	$f20,3540($s0)
.L0d96cd68:
    # Line 1626
    ld	$a0,104($sp)
.L0d96cd6c:
    # Line 1628
    lwc1	$f11,0($a0)
    lwc1	$f10,4($a0)
    add.s	$f11,$f11,$f20
    add.s	$f10,$f10,$f20
    trunc.w.s	$f11,$f11
    trunc.w.s	$f10,$f10
    mfc1	$a4,$f11
    mfc1	$a5,$f10
    andi	$a5,$a5,0xffff
    sll	$a4,$a4,0x10
    or	$a4,$a4,$a5
    sw	$a4,0($s1)
    # Line 1630
    lwc1	$f9,8($a0)
    lwc1	$f8,12($a0)
    add.s	$f9,$f9,$f20
    add.s	$f8,$f8,$f20
    trunc.w.s	$f9,$f9
    trunc.w.s	$f8,$f8
    mfc1	$a3,$f9
    mfc1	$a4,$f8
    andi	$a4,$a4,0xffff
    sll	$a3,$a3,0x10
    or	$a3,$a3,$a4
    beqz	$s6,.L0d96ce10
    sw	$a3,4($s1)
    # Line 1634
    lwc1	$f19,12($sp)
    lwc1	$f18,30284($s0)
    # Line 1635
    lwc1	$f17,16($sp)
    # Line 1634
    add.s	$f18,$f18,$f19
    swc1	$f18,12($sp)
    # Line 1635
    lwc1	$f16,30288($s0)
    # Line 1636
    lwc1	$f15,20($sp)
    # Line 1635
    add.s	$f16,$f16,$f17
    swc1	$f16,16($sp)
    # Line 1636
    lwc1	$f14,30292($s0)
    # Line 1637
    lwc1	$f13,24($sp)
    # Line 1636
    add.s	$f14,$f14,$f15
    swc1	$f14,20($sp)
    # Line 1637
    lwc1	$f12,30296($s0)
    add.s	$f12,$f12,$f13
    swc1	$f12,24($sp)
.L0d96ce10:
    # Line 1612
    addiu	$a3,$s2,1
    beq	$s3,$a3,.L0d96ceb0
    nop
.L0d96ce1c:
    # Line 1613
    sw	$a3,0($sp)
    # Line 1614
    lw	$t9,30664($s0)
    lw	$a0,4($sp)
    lw	$at,3664($t9)
    lw	$ra,30692($s0)
    subu	$at,$a0,$at
    mult	$ra,$at
    # Line 1613
    move	$s2,$a3
    # Line 1617
    andi	$v0,$a3,0x3
    # Line 1614
    lw	$t9,3660($t9)
    mflo	$t8
    # Line 1617
    andi	$v1,$a0,0x3
    # Line 1614
    addu	$t8,$a3,$t8
    # Line 1617
    sll	$v1,$v1,0x2
    # Line 1614
    subu	$t8,$t8,$t9
    lw	$s1,30680($s0)
    # Line 1617
    addu	$v0,$v0,$v1
    # Line 1614
    addu	$t8,$t8,$t8
    # Line 1617
    addu	$v0,$s7,$v0
    # Line 1614
    sll	$t8,$t8,0x2
    beqz	$s5,.L0d96cd60
    addu	$s1,$s1,$t8
    # Line 1617
    lb	$v0,0($v0)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f20
    cvt.s.w	$f20,$f20
    # Line 1620
    beqz	$s4,.L0d96cd68
    # Line 1617
    mul.s	$f20,$f20,$f22
.L0d96ce90:
    # Line 1624
    lw	$t9,12540($s0)
    move	$a0,$s0
    move	$a1,$s8
    addiu	$a3,$sp,64
    jalr	$t9
    addiu	$a2,$sp,0
    b	.L0d96cd6c
    addiu	$a0,$sp,64
.L0d96ceb0:
    ld	$s6,184($sp)
    ld	$s2,176($sp)
    ld	$s8,168($sp)
    ld	$s7,160($sp)
    ld	$s5,152($sp)
    ld	$s1,144($sp)
    ld	$s4,136($sp)
    ldc1	$f20,120($sp)
    ldc1	$f22,112($sp)
    ld	$ra,128($sp)
    # Line 1640
    ld	$gp,80($sp)
    move	$v0,$zero
    ld	$s0,88($sp)
    ld	$s3,96($sp)
    jr	$ra
    addiu	$sp,$sp,192
.end __glCrmDumpSPBuffSpan

# Function: __glCrmDumpSPBuffSpanRed
# Declared: Line 1643 (Source lines: 1644-1691)
# Address: 0x0d96cef0 - 0x0d96d108 (Size: 536 bytes, Frame: 208)
.globl __glCrmDumpSPBuffSpanRed
.ent __glCrmDumpSPBuffSpanRed
__glCrmDumpSPBuffSpanRed:
    # Line 1644
    addiu	$sp,$sp,-208
    sdc1	$f20,128($sp)
    sd	$s7,176($sp)
    sd	$s5,168($sp)
    sd	$ra,152($sp)
    sd	$s6,144($sp)
    sd	$s3,136($sp)
    sd	$s2,192($sp)
    sd	$s8,184($sp)
    # Line 1658
    lw	$a4,30248($a0)
    # Line 1660
    lw	$v0,30200($a0)
    sw	$v0,4($sp)
    # Line 1663
    mtc1	$zero,$f4
    lwc1	$f0,30284($a0)
    sdc1	$f22,120($sp)
    sd	$s0,160($sp)
    # Line 1644
    sd	$s1,80($sp)
    # Line 1663
    c.eq.s	$f0,$f4
    # Line 1670
    addiu	$a2,$sp,12
    # Line 1644
    lui	$at,0xe
    # Line 1661
    lw	$a3,30196($a0)
    # Line 1644
    move	$s1,$a0
    sd	$s4,88($sp)
    addiu	$at,$at,16028
    sd	$gp,96($sp)
    addu	$gp,$t9,$at
    # Line 1663
    bc1f	.L0d96cf90
    # Line 1662
    addu	$s4,$a3,$a4
    # Line 1663
    lwc1	$f2,30292($a0)
    lwc1	$f1,30288($a0)
    c.eq.s $f1,$f4
    bc1f .L0d96cf90
    lwc1	$f3,30296($a0)
    c.eq.s $f2,$f4
    bc1f .L0d96cf90
    nop
    c.eq.s $f3,$f4
    bc1f .L0d96cf90
    nop
    # Line 1665
    sb	$zero,56($sp)
.L0d96cf90:
    # Line 1666
    lwc1	$f7,30208($s1)
    swc1	$f7,12($sp)
    lwc1	$f6,30212($s1)
    swc1	$f6,16($sp)
    lwc1	$f5,30216($s1)
    swc1	$f5,20($sp)
    lwc1	$f4,30220($s1)
    # Line 1670
    lbu	$s7,56($sp)
    slt	$v1,$a3,$s4
    # Line 1666
    swc1	$f4,24($sp)
    # Line 1670
    beqz	$v1,.L0d96d0c8
    # Line 1668
    lw	$a0,1792($s1)
    # Line 1670
    lwc1	$f22,_lit_3d000000
    la	$s8,__glDitherTable
    addu	$s0,$a3,$a3
    sd	$a2,104($sp)
    andi	$s6,$a0,0x2
    andi	$s5,$a0,0x8
    addiu	$a1,$s1,30664
    b	.L0d96d034
    sd	$a1,112($sp)
    nop
    nop
    nop
.L0d96cff0:
    # Line 1678
    bnez	$s6,.L0d96d0a8
    lwc1	$f20,3540($s1)
.L0d96cff8:
    # Line 1684
    ld	$a0,104($sp)
.L0d96cffc:
    # Line 1686
    lwc1	$f8,0($a0)
    add.s	$f8,$f8,$f20
    trunc.w.s	$f8,$f8
    mfc1	$a3,$f8
    # Line 1670
    addiu	$s0,$s0,2
    # Line 1686
    beqz	$s7,.L0d96d028
    sh	$a3,0($s3)
    # Line 1689
    lwc1	$f10,12($sp)
    lwc1	$f9,30284($s1)
    add.s	$f9,$f9,$f10
    swc1	$f9,12($sp)
.L0d96d028:
    # Line 1670
    addiu	$a3,$s2,1
    beq	$s4,$a3,.L0d96d0c8
    nop
.L0d96d034:
    # Line 1671
    sw	$a3,0($sp)
    # Line 1672
    lw	$t8,30664($s1)
    lw	$a0,4($sp)
    lw	$at,3664($t8)
    lw	$ra,30692($s1)
    subu	$at,$a0,$at
    mult	$ra,$at
    # Line 1671
    move	$s2,$a3
    # Line 1675
    andi	$v0,$a3,0x3
    # Line 1672
    lw	$t8,3660($t8)
    # Line 1675
    andi	$v1,$a0,0x3
    # Line 1672
    lw	$s3,30680($s1)
    # Line 1675
    sll	$v1,$v1,0x2
    # Line 1672
    mflo	$t9
    addu	$t8,$t8,$t8
    addu	$t9,$t9,$t9
    # Line 1675
    addu	$v0,$v0,$v1
    # Line 1672
    addu	$s3,$s3,$t9
    # Line 1675
    addu	$v0,$s8,$v0
    # Line 1672
    addu	$s3,$s0,$s3
    beqz	$s5,.L0d96cff0
    subu	$s3,$s3,$t8
    # Line 1675
    lb	$v0,0($v0)
    sll	$v0,$v0,0x1
    addiu	$v0,$v0,1
    mtc1	$v0,$f20
    cvt.s.w	$f20,$f20
    # Line 1678
    beqz	$s6,.L0d96cff8
    # Line 1675
    mul.s	$f20,$f20,$f22
.L0d96d0a8:
    # Line 1682
    lw	$t9,12540($s1)
    move	$a0,$s1
    addiu	$a3,$sp,64
    ld	$a1,112($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    b	.L0d96cffc
    addiu	$a0,$sp,64
.L0d96d0c8:
    ld	$s2,192($sp)
    ld	$s8,184($sp)
    ld	$s7,176($sp)
    ld	$s5,168($sp)
    ld	$s0,160($sp)
    ld	$s6,144($sp)
    ld	$s3,136($sp)
    ldc1	$f20,128($sp)
    ldc1	$f22,120($sp)
    ld	$ra,152($sp)
    # Line 1691
    ld	$gp,96($sp)
    move	$v0,$zero
    ld	$s1,80($sp)
    ld	$s4,88($sp)
    jr	$ra
    addiu	$sp,$sp,208
.end __glCrmDumpSPBuffSpanRed

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_406fe00000000000:
    .word 0x406fe000, 0x00000000
_lit8_41c0000000000000:
    .word 0x41c00000, 0x00000000
_lit_3d000000:
    .word 0x3d000000
_lit_402df854:
    .word 0x402df854
_lit_42800000:
    .word 0x42800000
_lit_43800000:
    .word 0x43800000
_lit_45800000:
    .word 0x45800000

