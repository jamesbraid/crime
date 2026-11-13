# Source: ../CRIME/vice_colortable.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/vice_colortable.c
# Total Functions: 4

.text

# Function: __viceSetHTableParam
# Declared: Line 34 (Source lines: 36-89)
# Address: 0x0da380b0 - 0x0da3823c (Size: 396 bytes, Frame: 0)
.globl __viceSetHTableParam
.ent __viceSetHTableParam
__viceSetHTableParam:
    # Line 38
    lw	$a2,12($a1)
    mtc1	$a2,$f4
    # Line 36
    lui	$v1,0x2
    # Line 38
    cvt.s.w	$f4,$f4
    # Line 36
    addiu	$v1,$v1,-29476
    addu	$at,$t9,$v1
    # Line 38
    ldc1	$f5,_lit8_3f70000000000000
    cvt.d.s	$f4,$f4
    # Line 45
    lw	$a4,8($a1)
    li	$v0,6408
    # Line 38
    mul.d	$f4,$f4,$f5
    # Line 45
    beq	$a4,$v0,.L0da38164
    # Line 38
    cvt.s.d	$f4,$f4
    # Line 45
    li	$a3,6410
    beq	$a4,$a3,.L0da381d4
    # Line 62
    lwc1	$f7,_lit_46fffe00
    # Line 45
    li	$a5,6409
    beq	$a4,$a5,.L0da38104
    # Line 76
    lwc1	$f5,_lit_46fffe00
    # Line 89
    jr	$ra
    nop
.L0da38104:
    # Line 76
    mul.s	$f5,$f4,$f5
    trunc.w.s	$f5,$f5
    lw	$a3,4168($a0)
    mfc1	$a2,$f5
    sh	$a2,0($a3)
    # Line 77
    lw	$a1,4168($a0)
    lw	$v1,4156($a0)
    sh	$v1,2($a1)
    # Line 79
    lw	$v0,4168($a0)
    sh	$zero,4($v0)
    # Line 80
    lw	$t9,4168($a0)
    lw	$t8,4156($a0)
    sh	$t8,6($t9)
    # Line 82
    lw	$t3,4168($a0)
    sh	$zero,8($t3)
    # Line 83
    lw	$t2,4168($a0)
    lw	$t1,4156($a0)
    sh	$t1,10($t2)
    # Line 85
    lw	$t0,4168($a0)
    sh	$zero,12($t0)
    # Line 86
    lw	$a7,4168($a0)
    lw	$a6,4156($a0)
    # Line 89
    jr	$ra
    # Line 86
    sh	$a6,14($a7)
.L0da38164:
    # Line 48
    lwc1	$f6,_lit_46fffe00
    mul.s	$f6,$f4,$f6
    trunc.w.s	$f6,$f6
    lw	$t9,4168($a0)
    mfc1	$a5,$f6
    sh	$a5,0($t9)
    # Line 49
    lw	$t8,4168($a0)
    lw	$t3,4156($a0)
    sh	$t3,2($t8)
    # Line 51
    lw	$t2,4168($a0)
    sh	$a5,4($t2)
    # Line 52
    lw	$t2,4168($a0)
    lw	$t1,4156($a0)
    addiu	$t1,$t1,1
    sh	$t1,6($t2)
    # Line 54
    lw	$t0,4168($a0)
    sh	$a5,8($t0)
    # Line 55
    lw	$t0,4168($a0)
    lw	$a7,4156($a0)
    addiu	$a7,$a7,2
    sh	$a7,10($t0)
    # Line 57
    lw	$a6,4168($a0)
    sh	$a5,12($a6)
    # Line 58
    lw	$a5,4168($a0)
    lw	$a4,4156($a0)
    addiu	$a4,$a4,3
    # Line 89
    jr	$ra
    # Line 58
    sh	$a4,14($a5)
.L0da381d4:
    # Line 62
    mul.s	$f7,$f4,$f7
    trunc.w.s	$f7,$f7
    lw	$t1,4168($a0)
    mfc1	$a5,$f7
    sh	$a5,0($t1)
    # Line 63
    lw	$t0,4168($a0)
    lw	$a7,4156($a0)
    sh	$a7,2($t0)
    # Line 65
    lw	$a6,4168($a0)
    sh	$a5,4($a6)
    # Line 66
    lw	$a5,4168($a0)
    lw	$a4,4156($a0)
    addiu	$a4,$a4,1
    sh	$a4,6($a5)
    # Line 68
    lw	$a3,4168($a0)
    sh	$zero,8($a3)
    # Line 69
    lw	$a2,4168($a0)
    lw	$a1,4156($a0)
    sh	$a1,10($a2)
    # Line 71
    lw	$v1,4168($a0)
    sh	$zero,12($v1)
    # Line 72
    lw	$v1,4168($a0)
    lw	$v0,4156($a0)
    addiu	$v0,$v0,1
    # Line 89
    jr	$ra
    # Line 72
    sh	$v0,14($v1)
.end __viceSetHTableParam

# Function: __viceSetTable
# Declared: Line 93 (Source lines: 95-108)
# Address: 0x0da38240 - 0x0da38438 (Size: 504 bytes, Frame: 32)
.globl __viceSetTable
.ent __viceSetTable
__viceSetTable:
    # Line 95
    addiu	$sp,$sp,-32
    lui	$at,0x2
    sd	$ra,16($sp)
    addiu	$at,$at,-29876
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 100
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 95
    sd	$s1,0($sp)
    move	$s1,$a1
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 100
    jal	__glElementsPerGroup
    lw	$a0,72($a0)
    lw	$v1,12($s0)
    mult	$v1,$v0
    move	$a1,$zero
    mflo	$a2
    lwc1	$f4,_lit_437f0000
    addiu	$a4,$a2,6
    sll	$a3,$a2,0x2
    # Line 108
    ld	$gp,24($sp)
    # Line 100
    blez	$a2,.L0da38424
    addiu	$a6,$a2,3
    slt	$a5,$a6,$zero
    movz	$a4,$a6,$a5
    sra	$a4,$a4,0x2
    andi	$a0,$a4,0x1
    beqz	$a0,.L0da3831c
    sra	$at,$a4,0x1
    # Line 103
    lw	$ra,4($s0)
    lwc1	$f3,0($ra)
    mul.s	$f3,$f3,$f4
    trunc.w.s	$f3,$f3
    mfc1	$t9,$f3
    sb	$t9,0($s1)
    # Line 104
    lw	$t8,4($s0)
    lwc1	$f2,4($t8)
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$t3,$f2
    sb	$t3,1($s1)
    # Line 105
    lw	$t2,4($s0)
    lwc1	$f1,8($t2)
    mul.s	$f1,$f1,$f4
    trunc.w.s	$f1,$f1
    mfc1	$t1,$f1
    sb	$t1,2($s1)
    # Line 106
    lw	$t0,4($s0)
    lwc1	$f0,12($t0)
    mul.s	$f0,$f0,$f4
    trunc.w.s	$f0,$f0
    addiu	$s1,$s1,4
    mfc1	$a7,$f0
    # Line 102
    li	$a1,16
    # Line 106
    sb	$a7,-1($s1)
.L0da3831c:
    beqz	$at,.L0da38424
    move	$a2,$s1
    nop
    nop
    nop
.L0da38330:
    # Line 103
    lw	$a0,4($s0)
    addu	$a0,$a0,$a1
    lwc1	$f12,0($a0)
    mul.s	$f12,$f12,$f4
    trunc.w.s	$f12,$f12
    mfc1	$v1,$f12
    sb	$v1,0($a2)
    # Line 104
    lw	$v0,4($s0)
    addu	$v0,$v0,$a1
    lwc1	$f11,4($v0)
    mul.s	$f11,$f11,$f4
    trunc.w.s	$f11,$f11
    mfc1	$at,$f11
    sb	$at,1($a2)
    # Line 105
    lw	$ra,4($s0)
    addu	$ra,$ra,$a1
    lwc1	$f10,8($ra)
    mul.s	$f10,$f10,$f4
    trunc.w.s	$f10,$f10
    mfc1	$t9,$f10
    sb	$t9,2($a2)
    # Line 106
    lw	$t8,4($s0)
    addu	$t8,$t8,$a1
    lwc1	$f9,12($t8)
    mul.s	$f9,$f9,$f4
    trunc.w.s	$f9,$f9
    mfc1	$t3,$f9
    sb	$t3,3($a2)
    # Line 103
    lw	$t2,4($s0)
    # Line 102
    addiu	$a4,$a1,16
    # Line 103
    addu	$t2,$t2,$a4
    lwc1	$f8,0($t2)
    mul.s	$f8,$f8,$f4
    trunc.w.s	$f8,$f8
    mfc1	$t1,$f8
    sb	$t1,4($a2)
    # Line 104
    lw	$t0,4($s0)
    addu	$t0,$t0,$a4
    lwc1	$f7,4($t0)
    mul.s	$f7,$f7,$f4
    trunc.w.s	$f7,$f7
    mfc1	$a7,$f7
    sb	$a7,5($a2)
    # Line 105
    lw	$a6,4($s0)
    addu	$a6,$a6,$a4
    lwc1	$f6,8($a6)
    mul.s	$f6,$f6,$f4
    trunc.w.s	$f6,$f6
    mfc1	$a5,$f6
    sb	$a5,6($a2)
    # Line 106
    lw	$a0,4($s0)
    addu	$a0,$a0,$a4
    lwc1	$f5,12($a0)
    mul.s	$f5,$f5,$f4
    # Line 102
    addiu	$a1,$a1,32
    # Line 106
    trunc.w.s	$f5,$f5
    # Line 102
    slt	$v1,$a1,$a3
    # Line 106
    addiu	$a2,$a2,8
    mfc1	$v0,$f5
    # Line 102
    bnez	$v1,.L0da38330
    # Line 106
    sb	$v0,-1($a2)
.L0da38424:
    ld	$ra,16($sp)
    ld	$s1,0($sp)
    ld	$s0,8($sp)
    # Line 108
    jr	$ra
    addiu	$sp,$sp,32
.end __viceSetTable

# Function: __viceLoadCLTCode
# Declared: Line 112 (Source lines: 114-138)
# Address: 0x0da38440 - 0x0da38558 (Size: 280 bytes, Frame: 32)
.globl __viceLoadCLTCode
.ent __viceLoadCLTCode
__viceLoadCLTCode:
    # Line 117
    lw	$a1,4176($a0)
    # Line 114
    addiu	$sp,$sp,-32
    # Line 117
    lw	$at,4172($a0)
    # Line 114
    sd	$s0,8($sp)
    # Line 117
    li	$a3,1
    # Line 114
    lui	$v0,0x2
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v0,$v0,-30388
    sd	$gp,0($sp)
    # Line 117
    beq	$at,$a3,.L0da384fc
    # Line 114
    addu	$gp,$t9,$v0
.L0da38470:
    # Line 126
    bne	$a1,$a3,.L0da384c4
    # Line 130
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 126
    lw	$v1,4144($s0)
    beqz	$v1,.L0da384c0
    # Line 127
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,15
    ld	$ra,16($sp)
    move	$a0,$v0
.L0da38498:
    # Line 138
    ld	$gp,0($sp)
    # Line 133
    sw	$zero,4140($s0)
    # Line 135
    lw	$v0,4152($s0)
    # Line 136
    lw	$v1,4160($s0)
    # Line 138
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    # Line 136
    sll	$v1,$v1,0x2
    # Line 135
    or	$v0,$v0,$a0
    # Line 138
    jr	$ra
    # Line 136
    or	$v0,$v0,$v1
.L0da384c0:
    # Line 130
    # lw $t9, -23184($gp) # &__viceMapCode
.L0da384c4:
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,16
    # Line 138
    ld	$gp,0($sp)
    # Line 133
    sw	$zero,4140($s0)
    ld	$ra,16($sp)
    # Line 135
    lw	$a0,4152($s0)
    # Line 136
    lw	$v1,4160($s0)
    # Line 138
    ld	$s0,8($sp)
    addiu	$sp,$sp,32
    # Line 136
    sll	$v1,$v1,0x2
    # Line 135
    or	$v0,$a0,$v0
    # Line 138
    jr	$ra
    # Line 136
    or	$v0,$v0,$v1
.L0da384fc:
    # Line 117
    beq	$a1,$a3,.L0da3852c
    lw	$a0,4140($a0)
.L0da38504:
    # Line 121
    beqz	$a0,.L0da38470
    # Line 122
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,14
    ld	$ra,16($sp)
    move	$a0,$v0
    # Line 124
    li	$a1,1
    b	.L0da38498
    sw	$a1,4128($s0)
.L0da3852c:
    # Line 117
    beqz	$a0,.L0da38470
    nop
    lw	$a2,4144($s0)
    beqz	$a2,.L0da38504
    # Line 119
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    li	$a0,13
    ld	$ra,16($sp)
    b	.L0da38498
    move	$a0,$v0
.end __viceLoadCLTCode

# Function: viceColorTable
# Declared: Line 142 (Source lines: 144-183)
# Address: 0x0da38560 - 0x0da3871c (Size: 444 bytes, Frame: 48)
.globl viceColorTable
.ent viceColorTable
viceColorTable:
    # Line 144
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    move	$s1,$a1
    # Line 148
    lw	$a3,0($a1)
    li	$v0,0x80d0
    # Line 144
    lui	$at,0x2
    sd	$s0,24($sp)
    move	$s0,$a0
    addiu	$at,$at,-30676
    sd	$gp,8($sp)
    # Line 148
    beq	$a3,$v0,.L0da385d8
    # Line 144
    addu	$gp,$t9,$at
    # Line 148
    li	$v0,0x80d1
    beq	$a3,$v0,.L0da385b8
    li	$v1,0x80d2
    beq	$a3,$v1,.L0da385b8
    # Line 158
    move	$v0,$zero
    # Line 183
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da385b8:
    # Line 154
    lw	$a2,0($s0)
    lw	$a1,4180($s0)
    lhu	$a2,114($a2)
    mult	$a1,$a2
    sd	$ra,32($sp)
    mflo	$a0
    # Line 155
    b	.L0da385f8
    # Line 154
    sd	$a0,0($sp)
.L0da385d8:
    # Line 150
    lw	$a5,0($a0)
    lw	$a4,4180($a0)
    lhu	$a5,112($a5)
    mult	$a4,$a5
    sd	$ra,32($sp)
    mflo	$a3
    nop
    sd	$a3,0($sp)
.L0da385f8:
    # Line 163
    # lw $t9, -23316($gp) # &__viceSetHTableParam
    move	$a0,$s0
    bal __viceSetHTableParam
    move	$a1,$s1
    # Line 164
    # lw $t9, -23312($gp) # &__viceSetTable
    move	$a0,$s1
    bal __viceSetTable
    lw	$a1,8($s0)
    # Line 166
    lw	$t8,76($s1)
    lw	$t3,12($s1)
    mult	$t3,$t8
    # Line 168
    lw	$t3,4($s0)
    lhu	$t2,54($t3)
    # Line 166
    mflo	$a7
    # Line 168
    addu	$t2,$a7,$t2
    sh	$t2,54($t3)
    # Line 170
    lw	$t0,8($s0)
    # Line 169
    lw	$t1,4156($s0)
    # Line 172
    # lw $t9, -23308($gp) # &__viceLoadCLTCode
    # Line 169
    addu	$t1,$t1,$a7
    # Line 170
    addu	$a7,$a7,$t0
    sw	$a7,8($s0)
    # Line 169
    sw	$t1,4156($s0)
    # Line 171
    lw	$a6,76($s1)
    # Line 172
    move	$a0,$s0
    bal __viceLoadCLTCode
    # Line 171
    sw	$a6,4160($s0)
    # Line 172
    lw	$a3,4204($s0)
    lw	$a2,4($s0)
    sll	$a3,$a3,0x2
    # Line 173
    ld	$a0,0($sp)
    # Line 172
    addu	$a2,$a2,$a3
    sw	$v0,80($a2)
    # Line 173
    lw	$a1,4204($s0)
    lw	$v1,4($s0)
    sll	$a1,$a1,0x2
    srl	$a0,$a0,0x3
    addu	$v1,$v1,$a1
    addiu	$a0,$a0,-1
    lw	$v0,80($v1)
    sll	$a0,$a0,0x8
    or	$v0,$v0,$a0
    sw	$v0,80($v1)
    # Line 177
    lw	$at,4204($s0)
    lw	$ra,4($s0)
    addiu	$at,$at,1
    sll	$v0,$at,0x2
    sw	$at,4204($s0)
    addu	$ra,$ra,$v0
    lw	$ra,76($ra)
    lui	$t9,0xffff
    and	$ra,$t9,$ra
    # Line 183
    ld	$s1,16($sp)
    ld	$gp,8($sp)
    # Line 177
    beq	$t9,$ra,.L0da38700
    # Line 183
    li	$v0,1
    # Line 180
    lw	$a4,4168($s0)
    # Line 181
    lw	$a5,4152($s0)
    ld	$ra,32($sp)
    addiu	$a5,$a5,1
    sw	$a5,4152($s0)
    # Line 180
    addiu	$a4,$a4,16
    sw	$a4,4168($s0)
    # Line 183
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da38700:
    ld	$ra,32($sp)
    ld	$gp,8($sp)
    # Line 178
    move	$v0,$zero
    # Line 183
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end viceColorTable

.rdata
_lit8_3f70000000000000:
    .word 0x3f700000, 0x00000000
_lit_437f0000:
    .word 0x437f0000
_lit_46fffe00:
    .word 0x46fffe00

