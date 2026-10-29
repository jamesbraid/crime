# Source: ../soft/so_accumop.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_accumop.c
# Total Functions: 9

.text

# Function: Load
# Declared: Line 20 (Source lines: 21-88)
# Address: 0x0d9bb2f0 - 0x0d9bb72c (Size: 1084 bytes, Frame: 0)
.ent Load
Load:
    # Line 21
    lui	$v0,0x1
    ori	$v0,$v0,0xc0
    subu	$sp,$sp,$v0
    sd	$s2,112($sp)
    sdc1	$f22,16($sp)
    # Line 44
    lwc1	$f22,76($a0)
    # Line 21
    sdc1	$f20,32($sp)
    # Line 45
    lwc1	$f20,80($a0)
    # Line 21
    sdc1	$f26,24($sp)
    # Line 46
    lwc1	$f26,84($a0)
    # Line 21
    sdc1	$f24,8($sp)
    sd	$s1,136($sp)
    sd	$s5,104($sp)
    sd	$s0,80($sp)
    sd	$s6,64($sp)
    # Line 22
    lw	$s6,0($a0)
    # Line 21
    sd	$s3,96($sp)
    # Line 36
    lw	$t8,3664($s6)
    # Line 24
    lw	$s3,29704($s6)
    # Line 36
    lw	$a3,28($a0)
    lw	$s0,16($a0)
    subu	$t8,$s3,$t8
    sd	$gp,128($sp)
    mult	$a3,$t8
    # Line 25
    lw	$s5,29708($s6)
    # Line 36
    lw	$s1,3660($s6)
    # Line 21
    move	$at,$s8
    sd	$s7,56($sp)
    lui	$s7,0x9
    addu	$s8,$sp,$v0
    addiu	$s7,$s7,23196
    # Line 23
    lw	$a1,29700($s6)
    # Line 36
    sll	$s1,$s1,0x3
    # Line 21
    addu	$gp,$t9,$s7
    # Line 26
    lw	$s7,29712($s6)
    # Line 21
    sd	$s4,72($sp)
    # Line 41
    subu	$s5,$s5,$a1
    # Line 36
    mflo	$s4
    # Line 43
    lwc1	$f24,72($a0)
    # Line 46
    mul.s	$f26,$f26,$f13
    slt	$s2,$s3,$s7
    # Line 36
    sll	$s4,$s4,0x3
    # Line 21
    sd	$at,120($sp)
    # Line 45
    mul.s	$f20,$f20,$f13
    # Line 36
    addu	$s0,$s0,$s4
    sll	$s4,$a1,0x3
    # Line 21
    sd	$ra,88($sp)
    # Line 44
    mul.s	$f22,$f22,$f13
    # Line 41
    subu	$a3,$a3,$s5
    # Line 36
    addu	$s0,$s0,$s4
    # Line 37
    lw	$s6,11764($s6)
    # Line 43
    mul.s	$f24,$f24,$f13
    # Line 46
    beqz	$s2,.L0d9bb6e4
    # Line 36
    subu	$s0,$s0,$s1
    # Line 46
    li	$s1,-1
    sd	$a1,40($sp)
    sll	$t8,$a3,0x3
    sd	$t8,160($sp)
    sra	$t8,$s5,0x2
    andi	$s4,$s5,0x3
    sd	$s4,144($sp)
    addiu	$s4,$s4,-1
    lui	$s2,0xffff
    sd	$t8,48($sp)
    addiu	$t8,$t8,-1
    addu	$s2,$s2,$s8
    sd	$t8,152($sp)
    b	.L0d9bb6b0
    addiu	$s2,$s2,-16
    nop
    nop
    nop
.L0d9bb410:
    # Line 53
    move	$a7,$s2
    nop
    nop
    nop
.L0d9bb420:
    # Line 54
    lwc1	$f12,0($a7)
    mul.s	$f12,$f12,$f24
    trunc.w.s	$f12,$f12
    mfc1	$t8,$f12
    sh	$t8,0($s0)
    # Line 55
    lwc1	$f11,4($a7)
    mul.s	$f11,$f11,$f22
    trunc.w.s	$f11,$f11
    mfc1	$t3,$f11
    sh	$t3,2($s0)
    # Line 56
    lwc1	$f10,8($a7)
    mul.s	$f10,$f10,$f20
    trunc.w.s	$f10,$f10
    mfc1	$t2,$f10
    sh	$t2,4($s0)
    # Line 57
    lwc1	$f9,12($a7)
    mul.s	$f9,$f9,$f26
    trunc.w.s	$f9,$f9
    mfc1	$t1,$f9
    sh	$t1,6($s0)
    # Line 59
    lwc1	$f8,16($a7)
    mul.s	$f8,$f8,$f24
    trunc.w.s	$f8,$f8
    mfc1	$t0,$f8
    sh	$t0,8($s0)
    # Line 60
    lwc1	$f7,20($a7)
    mul.s	$f7,$f7,$f22
    trunc.w.s	$f7,$f7
    mfc1	$a5,$f7
    sh	$a5,10($s0)
    # Line 61
    lwc1	$f6,24($a7)
    mul.s	$f6,$f6,$f20
    trunc.w.s	$f6,$f6
    mfc1	$a4,$f6
    sh	$a4,12($s0)
    # Line 62
    lwc1	$f5,28($a7)
    mul.s	$f5,$f5,$f26
    trunc.w.s	$f5,$f5
    mfc1	$a3,$f5
    sh	$a3,14($s0)
    # Line 64
    lwc1	$f4,32($a7)
    mul.s	$f4,$f4,$f24
    trunc.w.s	$f4,$f4
    mfc1	$a2,$f4
    sh	$a2,16($s0)
    # Line 65
    lwc1	$f3,36($a7)
    mul.s	$f3,$f3,$f22
    trunc.w.s	$f3,$f3
    mfc1	$a1,$f3
    sh	$a1,18($s0)
    # Line 66
    lwc1	$f2,40($a7)
    mul.s	$f2,$f2,$f20
    trunc.w.s	$f2,$f2
    mfc1	$a0,$f2
    sh	$a0,20($s0)
    # Line 67
    lwc1	$f1,44($a7)
    mul.s	$f1,$f1,$f26
    trunc.w.s	$f1,$f1
    mfc1	$v1,$f1
    sh	$v1,22($s0)
    # Line 69
    lwc1	$f0,48($a7)
    mul.s	$f0,$f0,$f24
    trunc.w.s	$f0,$f0
    mfc1	$v0,$f0
    sh	$v0,24($s0)
    # Line 70
    lwc1	$f31,52($a7)
    mul.s	$f31,$f31,$f22
    trunc.w.s	$f31,$f31
    mfc1	$at,$f31
    sh	$at,26($s0)
    # Line 71
    lwc1	$f29,56($a7)
    mul.s	$f29,$f29,$f20
    trunc.w.s	$f29,$f29
    mfc1	$ra,$f29
    sh	$ra,28($s0)
    # Line 72
    lwc1	$f27,60($a7)
    mul.s	$f27,$f27,$f26
    trunc.w.s	$f27,$f27
    # Line 53
    addiu	$a6,$a6,-1
    # Line 73
    addiu	$s0,$s0,32
    # Line 72
    mfc1	$t9,$f27
    # Line 74
    addiu	$a7,$a7,64
    # Line 53
    bne	$a6,$s1,.L0d9bb420
    # Line 72
    sh	$t9,-2($s0)
.L0d9bb570:
    # Line 78
    ld	$t9,144($sp)
    bltz	$s4,.L0d9bb6a0
    move	$a6,$s4
    move	$a2,$t9
    andi	$t9,$t9,0x1
    beqz	$t9,.L0d9bb5e8
    sra	$a0,$a2,0x1
    # Line 79
    lwc1	$f16,0($a7)
    mul.s	$f16,$f16,$f24
    trunc.w.s	$f16,$f16
    mfc1	$v1,$f16
    sh	$v1,0($s0)
    # Line 80
    lwc1	$f15,4($a7)
    mul.s	$f15,$f15,$f22
    trunc.w.s	$f15,$f15
    mfc1	$v0,$f15
    sh	$v0,2($s0)
    # Line 81
    lwc1	$f14,8($a7)
    mul.s	$f14,$f14,$f20
    trunc.w.s	$f14,$f14
    mfc1	$at,$f14
    sh	$at,4($s0)
    # Line 82
    lwc1	$f13,12($a7)
    mul.s	$f13,$f13,$f26
    trunc.w.s	$f13,$f13
    # Line 83
    addiu	$s0,$s0,8
    # Line 82
    mfc1	$ra,$f13
    # Line 78
    addiu	$a6,$s4,-1
    # Line 84
    addiu	$a7,$a7,16
    # Line 82
    sh	$ra,-2($s0)
.L0d9bb5e8:
    beqz	$a0,.L0d9bb6a0
    nop
.L0d9bb5f0:
    # Line 79
    lwc1	$f29,0($a7)
    mul.s	$f29,$f29,$f24
    trunc.w.s	$f29,$f29
    mfc1	$t2,$f29
    sh	$t2,0($s0)
    # Line 80
    lwc1	$f27,4($a7)
    mul.s	$f27,$f27,$f22
    trunc.w.s	$f27,$f27
    mfc1	$t1,$f27
    sh	$t1,2($s0)
    # Line 81
    lwc1	$f25,8($a7)
    mul.s	$f25,$f25,$f20
    trunc.w.s	$f25,$f25
    mfc1	$t0,$f25
    sh	$t0,4($s0)
    # Line 82
    lwc1	$f23,12($a7)
    mul.s	$f23,$f23,$f26
    trunc.w.s	$f23,$f23
    mfc1	$a5,$f23
    sh	$a5,6($s0)
    # Line 79
    lwc1	$f21,16($a7)
    mul.s	$f21,$f21,$f24
    trunc.w.s	$f21,$f21
    mfc1	$a4,$f21
    sh	$a4,8($s0)
    # Line 80
    lwc1	$f19,20($a7)
    mul.s	$f19,$f19,$f22
    trunc.w.s	$f19,$f19
    mfc1	$a3,$f19
    sh	$a3,10($s0)
    # Line 81
    lwc1	$f18,24($a7)
    mul.s	$f18,$f18,$f20
    trunc.w.s	$f18,$f18
    mfc1	$a2,$f18
    sh	$a2,12($s0)
    # Line 82
    lwc1	$f17,28($a7)
    mul.s	$f17,$f17,$f26
    trunc.w.s	$f17,$f17
    # Line 78
    addiu	$a6,$a6,-2
    # Line 83
    addiu	$s0,$s0,16
    # Line 82
    mfc1	$a1,$f17
    # Line 84
    addiu	$a7,$a7,32
    # Line 78
    bne	$a6,$s1,.L0d9bb5f0
    # Line 82
    sh	$a1,-2($s0)
.L0d9bb6a0:
    # Line 48
    addiu	$s3,$s3,1
    ld	$t3,160($sp)
    beq	$s3,$s7,.L0d9bb6e4
    # Line 86
    addu	$s0,$t3,$s0
.L0d9bb6b0:
    # Line 50
    lw	$t9,176($s6)
    move	$a0,$s6
    move	$a2,$s3
    move	$a3,$s2
    ld	$a1,40($sp)
    jalr	$t9
    move	$a4,$s5
    # Line 53
    ld	$t8,152($sp)
    move	$a7,$s2
    bgez	$t8,.L0d9bb410
    move	$a6,$t8
    b	.L0d9bb570
    nop
.L0d9bb6e4:
    # Line 88
    ld	$gp,128($sp)
    ld	$s0,80($sp)
    ld	$s1,136($sp)
    ld	$s2,112($sp)
    ld	$s3,96($sp)
    ld	$s4,72($sp)
    ld	$s5,104($sp)
    ld	$s6,64($sp)
    ld	$s7,56($sp)
    ldc1	$f20,32($sp)
    ldc1	$f22,16($sp)
    ldc1	$f24,8($sp)
    ld	$ra,88($sp)
    ld	$t9,120($sp)
    ldc1	$f26,24($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t9
.end Load

# Function: Accumulate
# Declared: Line 90 (Source lines: 91-158)
# Address: 0x0d9bb730 - 0x0d9bbc48 (Size: 1304 bytes, Frame: 0)
.ent Accumulate
Accumulate:
    # Line 91
    lui	$v0,0x1
    ori	$v0,$v0,0xc0
    subu	$sp,$sp,$v0
    sd	$s2,112($sp)
    sdc1	$f22,16($sp)
    # Line 114
    lwc1	$f22,76($a0)
    # Line 91
    sdc1	$f20,32($sp)
    # Line 115
    lwc1	$f20,80($a0)
    # Line 91
    sdc1	$f26,24($sp)
    # Line 116
    lwc1	$f26,84($a0)
    # Line 91
    sdc1	$f24,8($sp)
    sd	$s1,136($sp)
    sd	$s5,104($sp)
    sd	$s0,80($sp)
    sd	$s6,64($sp)
    # Line 92
    lw	$s6,0($a0)
    # Line 91
    sd	$s3,96($sp)
    # Line 106
    lw	$t8,3664($s6)
    # Line 94
    lw	$s3,29704($s6)
    # Line 106
    lw	$a3,28($a0)
    lw	$s0,16($a0)
    subu	$t8,$s3,$t8
    sd	$gp,128($sp)
    mult	$a3,$t8
    # Line 95
    lw	$s5,29708($s6)
    # Line 106
    lw	$s1,3660($s6)
    # Line 91
    move	$at,$s8
    sd	$s7,56($sp)
    lui	$s7,0x9
    addu	$s8,$sp,$v0
    addiu	$s7,$s7,22108
    # Line 93
    lw	$a1,29700($s6)
    # Line 106
    sll	$s1,$s1,0x3
    # Line 91
    addu	$gp,$t9,$s7
    # Line 96
    lw	$s7,29712($s6)
    # Line 91
    sd	$s4,72($sp)
    # Line 111
    subu	$s5,$s5,$a1
    # Line 106
    mflo	$s4
    # Line 113
    lwc1	$f24,72($a0)
    # Line 116
    mul.s	$f26,$f26,$f13
    slt	$s2,$s3,$s7
    # Line 106
    sll	$s4,$s4,0x3
    # Line 91
    sd	$at,120($sp)
    # Line 115
    mul.s	$f20,$f20,$f13
    # Line 106
    addu	$s0,$s0,$s4
    sll	$s4,$a1,0x3
    # Line 91
    sd	$ra,88($sp)
    # Line 114
    mul.s	$f22,$f22,$f13
    # Line 111
    subu	$a3,$a3,$s5
    # Line 106
    addu	$s0,$s0,$s4
    # Line 107
    lw	$s6,11764($s6)
    # Line 113
    mul.s	$f24,$f24,$f13
    # Line 116
    beqz	$s2,.L0d9bbc00
    # Line 106
    subu	$s0,$s0,$s1
    # Line 116
    li	$s1,-1
    sd	$a1,40($sp)
    sll	$t8,$a3,0x3
    sd	$t8,160($sp)
    sra	$t8,$s5,0x2
    andi	$s4,$s5,0x3
    sd	$s4,144($sp)
    addiu	$s4,$s4,-1
    lui	$s2,0xffff
    sd	$t8,48($sp)
    addiu	$t8,$t8,-1
    addu	$s2,$s2,$s8
    sd	$t8,152($sp)
    b	.L0d9bbbd0
    addiu	$s2,$s2,-16
    nop
    nop
    nop
.L0d9bb850:
    # Line 123
    move	$a7,$s2
    nop
    nop
    nop
.L0d9bb860:
    # Line 124
    lwc1	$f12,0($a7)
    mul.s	$f12,$f12,$f24
    trunc.w.s	$f12,$f12
    mfc1	$t8,$f12
    lh	$t3,0($s0)
    addu	$t3,$t3,$t8
    sh	$t3,0($s0)
    # Line 125
    lwc1	$f11,4($a7)
    mul.s	$f11,$f11,$f22
    trunc.w.s	$f11,$f11
    mfc1	$t2,$f11
    lh	$t1,2($s0)
    addu	$t1,$t1,$t2
    sh	$t1,2($s0)
    # Line 126
    lwc1	$f10,8($a7)
    mul.s	$f10,$f10,$f20
    trunc.w.s	$f10,$f10
    mfc1	$t0,$f10
    lh	$a5,4($s0)
    addu	$a5,$a5,$t0
    sh	$a5,4($s0)
    # Line 127
    lwc1	$f9,12($a7)
    mul.s	$f9,$f9,$f26
    trunc.w.s	$f9,$f9
    mfc1	$a4,$f9
    lh	$a3,6($s0)
    addu	$a3,$a3,$a4
    sh	$a3,6($s0)
    # Line 129
    lwc1	$f8,16($a7)
    mul.s	$f8,$f8,$f24
    trunc.w.s	$f8,$f8
    mfc1	$a2,$f8
    lh	$a1,8($s0)
    addu	$a1,$a1,$a2
    sh	$a1,8($s0)
    # Line 130
    lwc1	$f7,20($a7)
    mul.s	$f7,$f7,$f22
    trunc.w.s	$f7,$f7
    mfc1	$a0,$f7
    lh	$v1,10($s0)
    addu	$v1,$v1,$a0
    sh	$v1,10($s0)
    # Line 131
    lwc1	$f6,24($a7)
    mul.s	$f6,$f6,$f20
    trunc.w.s	$f6,$f6
    mfc1	$v0,$f6
    lh	$at,12($s0)
    addu	$at,$at,$v0
    sh	$at,12($s0)
    # Line 132
    lwc1	$f5,28($a7)
    mul.s	$f5,$f5,$f26
    trunc.w.s	$f5,$f5
    mfc1	$ra,$f5
    lh	$t9,14($s0)
    addu	$t9,$t9,$ra
    sh	$t9,14($s0)
    # Line 134
    lwc1	$f4,32($a7)
    mul.s	$f4,$f4,$f24
    trunc.w.s	$f4,$f4
    mfc1	$t8,$f4
    lh	$t3,16($s0)
    addu	$t3,$t3,$t8
    sh	$t3,16($s0)
    # Line 135
    lwc1	$f3,36($a7)
    mul.s	$f3,$f3,$f22
    trunc.w.s	$f3,$f3
    mfc1	$t2,$f3
    lh	$t1,18($s0)
    addu	$t1,$t1,$t2
    sh	$t1,18($s0)
    # Line 136
    lwc1	$f2,40($a7)
    mul.s	$f2,$f2,$f20
    trunc.w.s	$f2,$f2
    mfc1	$t0,$f2
    lh	$a5,20($s0)
    addu	$a5,$a5,$t0
    sh	$a5,20($s0)
    # Line 137
    lwc1	$f1,44($a7)
    mul.s	$f1,$f1,$f26
    trunc.w.s	$f1,$f1
    mfc1	$a4,$f1
    lh	$a3,22($s0)
    addu	$a3,$a3,$a4
    sh	$a3,22($s0)
    # Line 139
    lwc1	$f0,48($a7)
    mul.s	$f0,$f0,$f24
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f0
    lh	$a1,24($s0)
    addu	$a1,$a1,$a2
    sh	$a1,24($s0)
    # Line 140
    lwc1	$f31,52($a7)
    mul.s	$f31,$f31,$f22
    trunc.w.s	$f31,$f31
    mfc1	$a0,$f31
    lh	$v1,26($s0)
    addu	$v1,$v1,$a0
    sh	$v1,26($s0)
    # Line 141
    lwc1	$f29,56($a7)
    mul.s	$f29,$f29,$f20
    trunc.w.s	$f29,$f29
    mfc1	$v0,$f29
    lh	$at,28($s0)
    addu	$at,$at,$v0
    sh	$at,28($s0)
    # Line 142
    lwc1	$f27,60($a7)
    mul.s	$f27,$f27,$f26
    trunc.w.s	$f27,$f27
    # Line 123
    addiu	$a6,$a6,-1
    # Line 142
    mfc1	$ra,$f27
    lh	$t9,30($s0)
    # Line 144
    addiu	$a7,$a7,64
    # Line 143
    addiu	$s0,$s0,32
    # Line 142
    addu	$t9,$t9,$ra
    # Line 123
    bne	$a6,$s1,.L0d9bb860
    # Line 142
    sh	$t9,-2($s0)
.L0d9bba30:
    # Line 148
    ld	$t9,144($sp)
    bltz	$s4,.L0d9bbbc0
    move	$a6,$s4
    move	$a2,$t9
    andi	$t9,$t9,0x1
    beqz	$t9,.L0d9bbac8
    sra	$a5,$a2,0x1
    # Line 149
    lwc1	$f16,0($a7)
    mul.s	$f16,$f16,$f24
    trunc.w.s	$f16,$f16
    lh	$a3,0($s0)
    mfc1	$a4,$f16
    addu	$a3,$a3,$a4
    sh	$a3,0($s0)
    # Line 150
    lwc1	$f15,4($a7)
    mul.s	$f15,$f15,$f22
    trunc.w.s	$f15,$f15
    lh	$a0,2($s0)
    mfc1	$a1,$f15
    addu	$a0,$a0,$a1
    sh	$a0,2($s0)
    # Line 151
    lwc1	$f14,8($a7)
    mul.s	$f14,$f14,$f20
    trunc.w.s	$f14,$f14
    lh	$v0,4($s0)
    mfc1	$v1,$f14
    addu	$v0,$v0,$v1
    sh	$v0,4($s0)
    # Line 152
    lwc1	$f13,12($a7)
    mul.s	$f13,$f13,$f26
    trunc.w.s	$f13,$f13
    lh	$ra,6($s0)
    mfc1	$at,$f13
    # Line 148
    addiu	$a6,$s4,-1
    # Line 153
    addiu	$s0,$s0,8
    # Line 154
    addiu	$a7,$a7,16
    # Line 152
    addu	$ra,$ra,$at
    sh	$ra,-2($s0)
.L0d9bbac8:
    beqz	$a5,.L0d9bbbc0
    nop
.L0d9bbad0:
    # Line 149
    lwc1	$f29,0($a7)
    mul.s	$f29,$f29,$f24
    trunc.w.s	$f29,$f29
    mfc1	$a5,$f29
    lh	$a4,0($s0)
    addu	$a4,$a4,$a5
    sh	$a4,0($s0)
    # Line 150
    lwc1	$f27,4($a7)
    mul.s	$f27,$f27,$f22
    trunc.w.s	$f27,$f27
    mfc1	$a3,$f27
    lh	$a2,2($s0)
    addu	$a2,$a2,$a3
    sh	$a2,2($s0)
    # Line 151
    lwc1	$f25,8($a7)
    mul.s	$f25,$f25,$f20
    trunc.w.s	$f25,$f25
    mfc1	$a1,$f25
    lh	$a0,4($s0)
    addu	$a0,$a0,$a1
    sh	$a0,4($s0)
    # Line 152
    lwc1	$f23,12($a7)
    mul.s	$f23,$f23,$f26
    trunc.w.s	$f23,$f23
    mfc1	$v1,$f23
    lh	$v0,6($s0)
    addu	$v0,$v0,$v1
    sh	$v0,6($s0)
    # Line 149
    lwc1	$f21,16($a7)
    mul.s	$f21,$f21,$f24
    trunc.w.s	$f21,$f21
    mfc1	$at,$f21
    lh	$ra,8($s0)
    addu	$ra,$ra,$at
    sh	$ra,8($s0)
    # Line 150
    lwc1	$f19,20($a7)
    mul.s	$f19,$f19,$f22
    trunc.w.s	$f19,$f19
    mfc1	$t9,$f19
    lh	$t8,10($s0)
    addu	$t8,$t8,$t9
    sh	$t8,10($s0)
    # Line 151
    lwc1	$f18,24($a7)
    mul.s	$f18,$f18,$f20
    trunc.w.s	$f18,$f18
    mfc1	$t3,$f18
    lh	$t2,12($s0)
    addu	$t2,$t2,$t3
    sh	$t2,12($s0)
    # Line 152
    lwc1	$f17,28($a7)
    mul.s	$f17,$f17,$f26
    trunc.w.s	$f17,$f17
    # Line 148
    addiu	$a6,$a6,-2
    # Line 152
    mfc1	$t1,$f17
    lh	$t0,14($s0)
    # Line 154
    addiu	$a7,$a7,32
    # Line 153
    addiu	$s0,$s0,16
    # Line 152
    addu	$t0,$t0,$t1
    # Line 148
    bne	$a6,$s1,.L0d9bbad0
    # Line 152
    sh	$t0,-2($s0)
.L0d9bbbc0:
    # Line 118
    addiu	$s3,$s3,1
    ld	$a6,160($sp)
    beq	$s3,$s7,.L0d9bbc00
    # Line 156
    addu	$s0,$a6,$s0
.L0d9bbbd0:
    # Line 120
    lw	$t9,176($s6)
    move	$a0,$s6
    move	$a2,$s3
    move	$a3,$s2
    ld	$a1,40($sp)
    jalr	$t9
    move	$a4,$s5
    # Line 123
    ld	$a7,152($sp)
    bgez	$a7,.L0d9bb850
    move	$a6,$a7
    b	.L0d9bba30
    move	$a7,$s2
.L0d9bbc00:
    # Line 158
    ld	$gp,128($sp)
    ld	$s0,80($sp)
    ld	$s1,136($sp)
    ld	$s2,112($sp)
    ld	$s3,96($sp)
    ld	$s4,72($sp)
    ld	$s5,104($sp)
    ld	$s6,64($sp)
    ld	$s7,56($sp)
    ldc1	$f20,32($sp)
    ldc1	$f22,16($sp)
    ldc1	$f24,8($sp)
    ld	$ra,88($sp)
    ld	$t0,120($sp)
    ldc1	$f26,24($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t0
.end Accumulate

# Function: Mult
# Declared: Line 160 (Source lines: 162-221)
# Address: 0x0d9bbc50 - 0x0d9bc094 (Size: 1092 bytes, Frame: 0)
.ent Mult
Mult:
    # Line 162
    lw	$a6,0($a0)
    # Line 170
    lw	$t0,3664($a6)
    # Line 164
    lw	$a7,29704($a6)
    # Line 170
    lw	$a5,28($a0)
    subu	$t0,$a7,$t0
    mult	$a5,$t0
    # Line 163
    lw	$t1,29700($a6)
    # Line 172
    mtc1	$zero,$f0
    # Line 165
    lw	$a4,29708($a6)
    # Line 170
    lw	$a2,16($a0)
    # Line 172
    subu	$a4,$a4,$t1
    # Line 166
    lw	$t0,29712($a6)
    # Line 170
    mflo	$t2
    # Line 172
    subu	$a5,$a5,$a4
    c.eq.s	$f13,$f0
    # Line 170
    lw	$a6,3660($a6)
    sll	$t2,$t2,0x3
    sll	$t1,$t1,0x3
    addu	$a2,$a2,$t2
    sll	$a6,$a6,0x3
    addu	$a2,$a2,$t1
    # Line 172
    slt	$a3,$a7,$t0
    bc1f	.L0d9bbcfc
    # Line 170
    subu	$a2,$a2,$a6
    # Line 172
    beqz	$a3,.L0d9bbcf4
    sll	$t1,$a5,0x3
    nop
    nop
.L0d9bbcc0:
    # Line 176
    addiu	$a7,$a7,1
    # Line 177
    blez	$a4,.L0d9bbcec
    move	$a1,$a4
    nop
.L0d9bbcd0:
    # Line 180
    addiu	$a2,$a2,8
    # Line 179
    sh	$zero,-2($a2)
    sh	$zero,-4($a2)
    # Line 181
    addiu	$a1,$a1,-1
    # Line 179
    sh	$zero,-6($a2)
    # Line 181
    bnez	$a1,.L0d9bbcd0
    # Line 179
    sh	$zero,-8($a2)
.L0d9bbcec:
    # Line 176
    bne	$a7,$t0,.L0d9bbcc0
    # Line 183
    addu	$a2,$t1,$a2
.L0d9bbcf4:
    # Line 221
    jr	$ra
    nop
.L0d9bbcfc:
    # Line 188
    beqz	$a3,.L0d9bbcf4
    li	$a6,-1
    sll	$t1,$a5,0x3
    andi	$t8,$a4,0x3
    addiu	$t2,$t8,-1
    sra	$t9,$a4,0x2
    b	.L0d9bbe24
    addiu	$t3,$t9,-1
.L0d9bbd1c:
    sra	$at,$a3,0x1
.L0d9bbd20:
    beqz	$at,.L0d9bbe1c
    nop
    nop
    nop
.L0d9bbd30:
    # Line 214
    lh	$at,10($a2)
    # Line 215
    lh	$v0,12($a2)
    # Line 216
    lh	$a4,6($a2)
    # Line 214
    mtc1	$at,$f6
    # Line 213
    lh	$a5,8($a2)
    # Line 215
    mtc1	$v0,$f7
    # Line 214
    lh	$a0,2($a2)
    # Line 216
    mtc1	$a4,$f4
    # Line 215
    lh	$a3,4($a2)
    # Line 213
    mtc1	$a5,$f5
    # Line 214
    cvt.s.w	$f6,$f6
    mtc1	$a0,$f2
    # Line 215
    cvt.s.w	$f7,$f7
    mtc1	$a3,$f3
    # Line 216
    cvt.s.w	$f4,$f4
    # Line 213
    cvt.s.w	$f5,$f5
    # Line 214
    cvt.s.w	$f2,$f2
    mul.s	$f6,$f6,$f13
    # Line 216
    lh	$v1,14($a2)
    # Line 215
    cvt.s.w	$f3,$f3
    mul.s	$f7,$f7,$f13
    # Line 216
    mul.s	$f4,$f4,$f13
    # Line 214
    trunc.w.s	$f6,$f6
    # Line 216
    mtc1	$v1,$f8
    # Line 213
    lh	$v1,0($a2)
    mul.s	$f5,$f5,$f13
    # Line 215
    trunc.w.s	$f7,$f7
    # Line 214
    mul.s	$f2,$f2,$f13
    # Line 216
    trunc.w.s	$f4,$f4
    # Line 213
    mtc1	$v1,$f1
    # Line 215
    mul.s	$f3,$f3,$f13
    # Line 213
    trunc.w.s	$f5,$f5
    # Line 216
    mfc1	$a3,$f4
    cvt.s.w	$f8,$f8
    # Line 213
    mfc1	$a4,$f5
    cvt.s.w	$f1,$f1
    # Line 217
    addiu	$a2,$a2,16
    # Line 215
    mfc1	$at,$f7
    # Line 214
    mfc1	$a5,$f6
    # Line 215
    sh	$at,-4($a2)
    trunc.w.s	$f3,$f3
    # Line 214
    sh	$a5,-6($a2)
    # Line 216
    mul.s	$f8,$f8,$f13
    # Line 214
    trunc.w.s	$f2,$f2
    # Line 213
    sh	$a4,-8($a2)
    mul.s	$f1,$f1,$f13
    # Line 215
    mfc1	$a0,$f3
    # Line 216
    sh	$a3,-10($a2)
    trunc.w.s	$f8,$f8
    # Line 214
    mfc1	$v1,$f2
    # Line 215
    sh	$a0,-12($a2)
    # Line 213
    trunc.w.s	$f1,$f1
    # Line 212
    addiu	$a1,$a1,-2
    # Line 214
    sh	$v1,-14($a2)
    # Line 216
    mfc1	$v0,$f8
    sh	$v0,-2($a2)
    # Line 213
    mfc1	$v0,$f1
    # Line 212
    bne	$a1,$a6,.L0d9bbd30
    # Line 213
    sh	$v0,-16($a2)
.L0d9bbe1c:
    # Line 190
    beq	$a7,$t0,.L0d9bbcf4
    # Line 219
    addu	$a2,$t1,$a2
.L0d9bbe24:
    # Line 192
    bltz	$t3,.L0d9bbffc
    move	$a1,$t3
    nop
.L0d9bbe30:
    # Line 208
    lh	$a0,30($a2)
    # Line 207
    lh	$v1,28($a2)
    # Line 208
    mtc1	$a0,$f31
    # Line 206
    lh	$v0,26($a2)
    # Line 207
    mtc1	$v1,$f29
    # Line 205
    lh	$at,24($a2)
    # Line 206
    mtc1	$v0,$f27
    # Line 204
    lh	$a5,22($a2)
    # Line 208
    cvt.s.w	$f31,$f31
    # Line 205
    mtc1	$at,$f25
    # Line 203
    lh	$a4,20($a2)
    # Line 207
    cvt.s.w	$f29,$f29
    # Line 204
    mtc1	$a5,$f23
    # Line 206
    cvt.s.w	$f27,$f27
    # Line 203
    mtc1	$a4,$f21
    # Line 205
    cvt.s.w	$f25,$f25
    # Line 208
    mul.s	$f31,$f31,$f13
    # Line 204
    cvt.s.w	$f23,$f23
    # Line 207
    mul.s	$f29,$f29,$f13
    # Line 203
    cvt.s.w	$f21,$f21
    # Line 208
    trunc.w.s	$f31,$f31
    # Line 206
    mul.s	$f27,$f27,$f13
    # Line 207
    trunc.w.s	$f29,$f29
    # Line 205
    mul.s	$f25,$f25,$f13
    # Line 202
    lh	$a3,18($a2)
    # Line 206
    trunc.w.s	$f27,$f27
    # Line 204
    mul.s	$f23,$f23,$f13
    # Line 201
    lh	$a0,16($a2)
    # Line 205
    trunc.w.s	$f25,$f25
    # Line 203
    mul.s	$f21,$f21,$f13
    # Line 202
    mtc1	$a3,$f19
    # Line 200
    lh	$v1,14($a2)
    # Line 208
    mfc1	$v0,$f31
    # Line 204
    trunc.w.s	$f23,$f23
    # Line 201
    mtc1	$a0,$f18
    # Line 199
    lh	$at,12($a2)
    # Line 207
    mfc1	$a4,$f29
    # Line 203
    trunc.w.s	$f21,$f21
    # Line 200
    mtc1	$v1,$f17
    # Line 198
    lh	$a5,10($a2)
    # Line 206
    mfc1	$a3,$f27
    # Line 202
    cvt.s.w	$f19,$f19
    # Line 199
    mtc1	$at,$f16
    # Line 197
    lh	$a0,8($a2)
    # Line 205
    mfc1	$v1,$f25
    # Line 201
    cvt.s.w	$f18,$f18
    # Line 198
    mtc1	$a5,$f15
    # Line 204
    mfc1	$at,$f23
    # Line 200
    cvt.s.w	$f17,$f17
    # Line 197
    mtc1	$a0,$f14
    # Line 203
    mfc1	$a5,$f21
    # Line 199
    cvt.s.w	$f16,$f16
    # Line 209
    addiu	$a2,$a2,32
    # Line 202
    mul.s	$f19,$f19,$f13
    # Line 198
    cvt.s.w	$f15,$f15
    # Line 208
    sh	$v0,-2($a2)
    # Line 201
    mul.s	$f18,$f18,$f13
    # Line 197
    cvt.s.w	$f14,$f14
    # Line 207
    sh	$a4,-4($a2)
    # Line 202
    trunc.w.s	$f19,$f19
    # Line 200
    mul.s	$f17,$f17,$f13
    # Line 201
    trunc.w.s	$f18,$f18
    # Line 199
    mul.s	$f16,$f16,$f13
    # Line 196
    lh	$a0,-26($a2)
    # Line 200
    trunc.w.s	$f17,$f17
    # Line 198
    mul.s	$f15,$f15,$f13
    # Line 195
    lh	$v0,-28($a2)
    # Line 199
    trunc.w.s	$f16,$f16
    # Line 197
    mul.s	$f14,$f14,$f13
    # Line 196
    mtc1	$a0,$f12
    # Line 194
    lh	$a0,-30($a2)
    # Line 202
    mfc1	$a4,$f19
    # Line 198
    trunc.w.s	$f15,$f15
    # Line 195
    mtc1	$v0,$f11
    # Line 193
    lh	$v0,-32($a2)
    # Line 206
    sh	$a3,-6($a2)
    # Line 201
    mfc1	$a3,$f18
    # Line 197
    trunc.w.s	$f14,$f14
    # Line 194
    mtc1	$a0,$f10
    # Line 205
    sh	$v1,-8($a2)
    # Line 200
    mfc1	$a0,$f17
    # Line 196
    cvt.s.w	$f12,$f12
    # Line 193
    mtc1	$v0,$f9
    # Line 204
    sh	$at,-10($a2)
    # Line 199
    mfc1	$v1,$f16
    # Line 195
    cvt.s.w	$f11,$f11
    # Line 203
    sh	$a5,-12($a2)
    # Line 198
    mfc1	$v0,$f15
    # Line 194
    cvt.s.w	$f10,$f10
    # Line 202
    sh	$a4,-14($a2)
    # Line 197
    mfc1	$at,$f14
    # Line 193
    cvt.s.w	$f9,$f9
    # Line 201
    sh	$a3,-16($a2)
    # Line 196
    mul.s	$f12,$f12,$f13
    # Line 200
    sh	$a0,-18($a2)
    # Line 195
    mul.s	$f11,$f11,$f13
    # Line 199
    sh	$v1,-20($a2)
    # Line 196
    trunc.w.s	$f12,$f12
    # Line 194
    mul.s	$f10,$f10,$f13
    # Line 198
    sh	$v0,-22($a2)
    # Line 195
    trunc.w.s	$f11,$f11
    # Line 193
    mul.s	$f9,$f9,$f13
    # Line 197
    sh	$at,-24($a2)
    # Line 196
    mfc1	$a5,$f12
    # Line 194
    trunc.w.s	$f10,$f10
    # Line 196
    sh	$a5,-26($a2)
    # Line 195
    mfc1	$a4,$f11
    # Line 193
    trunc.w.s	$f9,$f9
    # Line 192
    addiu	$a1,$a1,-1
    # Line 195
    sh	$a4,-28($a2)
    # Line 194
    mfc1	$a3,$f10
    sh	$a3,-30($a2)
    # Line 193
    mfc1	$a0,$f9
    # Line 192
    bne	$a1,$a6,.L0d9bbe30
    # Line 193
    sh	$a0,-32($a2)
.L0d9bbffc:
    # Line 190
    addiu	$a7,$a7,1
    # Line 212
    bltz	$t2,.L0d9bbe1c
    move	$a1,$t2
    move	$a3,$t8
    andi	$a4,$t8,0x1
    beqz	$a4,.L0d9bbd20
    sra	$at,$a3,0x1
    # Line 216
    lh	$a5,6($a2)
    # Line 215
    lh	$a4,4($a2)
    # Line 214
    lh	$a1,2($a2)
    # Line 216
    mtc1	$a5,$f3
    # Line 213
    lh	$a0,0($a2)
    # Line 215
    mtc1	$a4,$f2
    # Line 214
    mtc1	$a1,$f1
    # Line 213
    mtc1	$a0,$f0
    # Line 216
    cvt.s.w	$f3,$f3
    # Line 215
    cvt.s.w	$f2,$f2
    # Line 214
    cvt.s.w	$f1,$f1
    # Line 213
    cvt.s.w	$f0,$f0
    # Line 216
    mul.s	$f3,$f3,$f13
    # Line 215
    mul.s	$f2,$f2,$f13
    # Line 214
    mul.s	$f1,$f1,$f13
    # Line 216
    trunc.w.s	$f3,$f3
    # Line 213
    mul.s	$f0,$f0,$f13
    # Line 215
    trunc.w.s	$f2,$f2
    # Line 217
    addiu	$a2,$a2,8
    # Line 214
    trunc.w.s	$f1,$f1
    # Line 216
    mfc1	$v1,$f3
    # Line 213
    trunc.w.s	$f0,$f0
    # Line 215
    mfc1	$v0,$f2
    # Line 216
    sh	$v1,-2($a2)
    # Line 214
    mfc1	$at,$f1
    # Line 215
    sh	$v0,-4($a2)
    # Line 213
    mfc1	$a5,$f0
    # Line 214
    sh	$at,-6($a2)
    # Line 212
    addiu	$a1,$t2,-1
    b	.L0d9bbd1c
    # Line 213
    sh	$a5,-8($a2)
.end Mult

# Function: Add
# Declared: Line 223 (Source lines: 224-264)
# Address: 0x0d9bc0a0 - 0x0d9bc2cc (Size: 556 bytes, Frame: 32)
.ent Add
Add:
    # Line 236
    lwc1	$f1,76($a0)
    # Line 225
    lw	$a6,0($a0)
    # Line 238
    lwc1	$f2,80($a0)
    # Line 243
    lw	$v0,3664($a6)
    # Line 227
    lw	$t0,29704($a6)
    # Line 240
    lwc1	$f5,30792($a6)
    # Line 238
    lwc1	$f4,30760($a6)
    # Line 240
    lwc1	$f3,84($a0)
    # Line 236
    lwc1	$f6,30756($a6)
    # Line 240
    mul.s	$f5,$f5,$f13
    # Line 234
    lwc1	$f0,3540($a6)
    # Line 238
    mul.s	$f4,$f4,$f13
    # Line 240
    madd.s	$f3,$f0,$f3,$f5
    # Line 234
    lwc1	$f5,30752($a6)
    # Line 243
    lw	$t9,28($a0)
    # Line 236
    mul.s	$f6,$f6,$f13
    # Line 243
    subu	$v0,$t0,$v0
    # Line 238
    madd.s	$f2,$f0,$f2,$f4
    # Line 234
    lwc1	$f4,72($a0)
    # Line 243
    mult	$t9,$v0
    # Line 234
    mul.s	$f5,$f5,$f13
    # Line 236
    madd.s	$f1,$f0,$f1,$f6
    # Line 226
    lw	$a4,29700($a6)
    # Line 234
    madd.s	$f0,$f0,$f4,$f5
    # Line 228
    lw	$at,29708($a6)
    # Line 224
    addiu	$sp,$sp,-32
    # Line 243
    lw	$a2,16($a0)
    # Line 229
    lw	$t1,29712($a6)
    # Line 247
    subu	$at,$at,$a4
    # Line 243
    sll	$a4,$a4,0x3
    # Line 240
    trunc.w.s	$f3,$f3
    # Line 247
    sd	$at,16($sp)
    subu	$t9,$t9,$at
    # Line 243
    mflo	$a3
    # Line 238
    trunc.w.s	$f2,$f2
    # Line 243
    lw	$a6,3660($a6)
    sll	$a3,$a3,0x3
    # Line 236
    trunc.w.s	$f1,$f1
    # Line 240
    mfc1	$a5,$f3
    # Line 247
    slt	$at,$t0,$t1
    # Line 243
    addu	$a2,$a2,$a3
    # Line 238
    mfc1	$a3,$f2
    # Line 234
    trunc.w.s	$f0,$f0
    # Line 243
    sll	$a6,$a6,0x3
    addu	$a2,$a2,$a4
    # Line 236
    mfc1	$a4,$f1
    # Line 243
    subu	$a2,$a2,$a6
    # Line 247
    beqz	$at,.L0d9bc2c4
    # Line 234
    mfc1	$a6,$f0
    # Line 247
    ld	$t2,16($sp)
    li	$a7,-1
    sll	$t3,$t9,0x3
    andi	$t8,$t2,0x3
    sra	$t2,$t2,0x2
    sd	$t2,8($sp)
    sd	$t8,0($sp)
    addiu	$t8,$t8,-1
    addiu	$t2,$t2,-1
    nop
    nop
.L0d9bc190:
    # Line 248
    addiu	$t0,$t0,1
    # Line 250
    bltz	$t2,.L0d9bc26c
    move	$a1,$t2
    nop
.L0d9bc1a0:
    # Line 255
    addiu	$a2,$a2,32
    # Line 254
    lh	$t9,-2($a2)
    lh	$a0,-4($a2)
    addu	$t9,$t9,$a5
    sh	$t9,-2($a2)
    addu	$a0,$a0,$a3
    sh	$a0,-4($a2)
    lh	$v1,-6($a2)
    lh	$v0,-8($a2)
    addu	$v1,$v1,$a4
    sh	$v1,-6($a2)
    addu	$v0,$v0,$a6
    sh	$v0,-8($a2)
    # Line 253
    lh	$at,-10($a2)
    lh	$t9,-12($a2)
    addu	$at,$at,$a5
    sh	$at,-10($a2)
    addu	$t9,$t9,$a3
    sh	$t9,-12($a2)
    lh	$a0,-14($a2)
    lh	$v1,-16($a2)
    addu	$a0,$a0,$a4
    sh	$a0,-14($a2)
    addu	$v1,$v1,$a6
    sh	$v1,-16($a2)
    # Line 252
    lh	$v0,-18($a2)
    lh	$at,-20($a2)
    addu	$v0,$v0,$a5
    sh	$v0,-18($a2)
    addu	$at,$at,$a3
    sh	$at,-20($a2)
    lh	$t9,-22($a2)
    lh	$a0,-24($a2)
    addu	$t9,$t9,$a4
    sh	$t9,-22($a2)
    addu	$a0,$a0,$a6
    sh	$a0,-24($a2)
    # Line 251
    lh	$v1,-26($a2)
    lh	$v0,-28($a2)
    addu	$v1,$v1,$a5
    sh	$v1,-26($a2)
    addu	$v0,$v0,$a3
    sh	$v0,-28($a2)
    lh	$at,-30($a2)
    # Line 250
    addiu	$a1,$a1,-1
    # Line 251
    lh	$t9,-32($a2)
    addu	$at,$at,$a4
    sh	$at,-30($a2)
    addu	$t9,$t9,$a6
    # Line 250
    bne	$a1,$a7,.L0d9bc1a0
    # Line 251
    sh	$t9,-32($a2)
.L0d9bc26c:
    # Line 258
    bltz	$t8,.L0d9bc2bc
    move	$a1,$t8
    nop
    nop
    nop
.L0d9bc280:
    # Line 260
    addiu	$a2,$a2,8
    # Line 259
    lh	$a0,-2($a2)
    lh	$v1,-4($a2)
    addu	$a0,$a0,$a5
    sh	$a0,-2($a2)
    addu	$v1,$v1,$a3
    sh	$v1,-4($a2)
    lh	$v0,-6($a2)
    # Line 258
    addiu	$a1,$a1,-1
    # Line 259
    lh	$at,-8($a2)
    addu	$v0,$v0,$a4
    sh	$v0,-6($a2)
    addu	$at,$at,$a6
    # Line 258
    bne	$a1,$a7,.L0d9bc280
    # Line 259
    sh	$at,-8($a2)
.L0d9bc2bc:
    # Line 248
    bne	$t0,$t1,.L0d9bc190
    # Line 262
    addu	$a2,$t3,$a2
.L0d9bc2c4:
    # Line 264
    jr	$ra
    addiu	$sp,$sp,32
.end Add

# Function: Return
# Declared: Line 266 (Source lines: 267-298)
# Address: 0x0d9bc2d0 - 0x0d9bc45c (Size: 396 bytes, Frame: 224)
.ent Return
Return:
    # Line 267
    addiu	$sp,$sp,-96
    sd	$s7,64($sp)
    sd	$s4,16($sp)
    # Line 268
    lw	$s4,0($a0)
    # Line 267
    sd	$s0,24($sp)
    # Line 278
    lw	$v1,3664($s4)
    # Line 270
    lw	$s0,29704($s4)
    # Line 278
    lw	$a3,28($a0)
    # Line 267
    sd	$s5,40($sp)
    # Line 278
    subu	$v1,$s0,$v1
    # Line 267
    sd	$s1,32($sp)
    # Line 278
    mult	$a3,$v1
    lw	$s1,16($a0)
    # Line 267
    sd	$s2,8($sp)
    sd	$gp,48($sp)
    # Line 272
    lw	$s5,29712($s4)
    # Line 267
    lui	$v0,0x9
    # Line 278
    addiu	$s7,$s4,30884
    # Line 267
    addiu	$v0,$v0,19132
    # Line 278
    lbu	$at,30652($s4)
    # Line 267
    addu	$gp,$t9,$v0
    # Line 269
    lw	$s2,29700($s4)
    # Line 278
    mflo	$t9
    slt	$a1,$s0,$s5
    lw	$t8,3660($s4)
    sll	$t9,$t9,0x3
    sd	$ra,56($sp)
    addu	$s1,$s1,$t9
    sll	$t9,$s2,0x3
    # Line 267
    sdc1	$f20,0($sp)
    # Line 278
    sll	$t8,$t8,0x3
    addu	$s1,$s1,$t9
    # Line 267
    mov.s	$f20,$f13
    # Line 271
    lw	$a2,29708($s4)
    # Line 278
    beqz	$at,.L0d9bc404
    subu	$s1,$s1,$t8
    beqz	$a1,.L0d9bc3d8
    nop
    sd	$s8,88($sp)
    addiu	$s8,$s4,30664
    sd	$s6,80($sp)
    sll	$s6,$a3,0x3
    sd	$s3,72($sp)
    subu	$s3,$a2,$s2
.L0d9bc380:
    # Line 287
    lw	$t9,30844($s4)
    move	$a0,$s8
    move	$a1,$s2
    move	$a2,$s0
    move	$a3,$s1
    mov.s	$f16,$f20
    jalr	$t9
    move	$a5,$s3
    # Line 288
    lw	$t9,31064($s4)
    move	$a0,$s7
    move	$a1,$s2
    move	$a2,$s0
    move	$a3,$s1
    mov.s	$f16,$f20
    jalr	$t9
    move	$a5,$s3
    # Line 286
    addiu	$s0,$s0,1
    bne	$s0,$s5,.L0d9bc380
    # Line 289
    addu	$s1,$s6,$s1
    ld	$s3,72($sp)
    ld	$s6,80($sp)
    ld	$s8,88($sp)
.L0d9bc3d8:
    ld	$s2,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$ra,56($sp)
    ld	$s7,64($sp)
    ldc1	$f20,0($sp)
    # Line 298
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9bc404:
    # Line 292
    beqz	$a1,.L0d9bc3d8
    lw	$s7,11760($s4)
    sd	$s8,88($sp)
    sd	$s6,80($sp)
    sll	$s6,$a3,0x3
    sd	$s3,72($sp)
    subu	$s3,$a2,$s2
.L0d9bc420:
    # Line 294
    lw	$t9,180($s7)
    move	$a0,$s7
    move	$a1,$s2
    move	$a2,$s0
    move	$a3,$s1
    mov.s	$f16,$f20
    jalr	$t9
    move	$a5,$s3
    # Line 293
    addiu	$s0,$s0,1
    bne	$s0,$s5,.L0d9bc420
    # Line 295
    addu	$s1,$s6,$s1
    ld	$s3,72($sp)
    ld	$s6,80($sp)
    b	.L0d9bc3d8
    ld	$s8,88($sp)
.end Return

# Function: Clear
# Declared: Line 300 (Source lines: 301-349)
# Address: 0x0d9bc460 - 0x0d9bc78c (Size: 812 bytes, Frame: 192)
.ent Clear
Clear:
    # Line 301
    addiu	$sp,$sp,-64
    sd	$s0,16($sp)
    sd	$gp,24($sp)
    sd	$s2,8($sp)
    sd	$s1,32($sp)
    sd	$s3,0($sp)
    # Line 302
    lw	$s3,0($a0)
    # Line 301
    lui	$at,0x9
    # Line 305
    lw	$a1,16($a0)
    # Line 301
    addiu	$at,$at,18732
    # Line 305
    lw	$s1,29712($s3)
    # Line 301
    move	$s2,$a0
    addu	$gp,$t9,$at
    # Line 304
    lw	$s0,29704($s3)
    # Line 302
    move	$t0,$s3
    # Line 305
    beqz	$a1,.L0d9bc760
    # Line 303
    lw	$t2,29700($s3)
.L0d9bc4a4:
    # Line 329
    lw	$t1,29708($s3)
    # Line 326
    lwc1	$f3,84($s2)
    lwc1	$f6,1660($s3)
    lwc1	$f7,30792($s3)
    # Line 325
    lwc1	$f2,80($s2)
    lwc1	$f8,1656($s3)
    lwc1	$f9,30760($s3)
    # Line 324
    lwc1	$f5,1652($s3)
    # Line 328
    lw	$t3,3664($t0)
    lw	$a0,28($s2)
    # Line 326
    mul.s	$f6,$f6,$f7
    # Line 324
    lwc1	$f7,30756($s3)
    # Line 328
    subu	$t3,$s0,$t3
    # Line 325
    mul.s	$f8,$f8,$f9
    # Line 323
    lwc1	$f4,1648($s3)
    # Line 328
    mult	$a0,$t3
    # Line 326
    mul.s	$f3,$f3,$f6
    # Line 323
    lwc1	$f6,30752($s3)
    # Line 325
    mul.s	$f2,$f2,$f8
    # Line 324
    lwc1	$f1,76($s2)
    mul.s	$f5,$f5,$f7
    # Line 323
    lwc1	$f0,72($s2)
    # Line 332
    slt	$t8,$s0,$s1
    # Line 329
    subu	$t1,$t1,$t2
    # Line 323
    mul.s	$f4,$f4,$f6
    # Line 332
    subu	$a0,$a0,$t1
    # Line 331
    andi	$t9,$t1,0x3
    # Line 326
    trunc.w.s	$f3,$f3
    # Line 324
    mul.s	$f1,$f1,$f5
    # Line 330
    sra	$t1,$t1,0x2
    # Line 325
    trunc.w.s	$f2,$f2
    # Line 323
    mul.s	$f0,$f0,$f4
    # Line 328
    mflo	$a3
    # Line 326
    mfc1	$a5,$f3
    # Line 324
    trunc.w.s	$f1,$f1
    # Line 328
    sll	$a3,$a3,0x3
    lw	$t3,3660($t0)
    # Line 325
    mfc1	$a6,$f2
    # Line 323
    trunc.w.s	$f0,$f0
    # Line 328
    addu	$a3,$a1,$a3
    sll	$a7,$t2,0x3
    # Line 324
    mfc1	$a4,$f1
    # Line 328
    addu	$a3,$a3,$a7
    sll	$t3,$t3,0x3
    # Line 323
    mfc1	$a7,$f0
    # Line 332
    beqz	$t8,.L0d9bc744
    # Line 328
    subu	$a3,$a3,$t3
    # Line 332
    li	$a1,-1
    sll	$t8,$a0,0x3
    addiu	$t2,$t9,-1
    b	.L0d9bc724
    addiu	$t3,$t1,-1
    nop
    nop
    nop
.L0d9bc580:
    # Line 340
    addiu	$a3,$a3,32
    # Line 339
    sh	$a5,-2($a3)
    sh	$a6,-4($a3)
    sh	$a4,-6($a3)
    sh	$a7,-8($a3)
    # Line 338
    sh	$a5,-10($a3)
    sh	$a6,-12($a3)
    sh	$a4,-14($a3)
    sh	$a7,-16($a3)
    # Line 337
    sh	$a5,-18($a3)
    sh	$a6,-20($a3)
    sh	$a4,-22($a3)
    sh	$a7,-24($a3)
    # Line 336
    sh	$a5,-26($a3)
    sh	$a6,-28($a3)
    addiu	$t0,$t0,-1
    sh	$a4,-30($a3)
    # Line 335
    addiu	$a0,$a0,-1
    bnez	$t0,.L0d9bc580
    # Line 336
    sh	$a7,-32($a3)
.L0d9bc5d0:
    beqz	$at,.L0d9bc6ec
    nop
    nop
    nop
.L0d9bc5e0:
    # Line 340
    addiu	$a3,$a3,128
    # Line 339
    sh	$a5,-2($a3)
    sh	$a6,-4($a3)
    sh	$a4,-6($a3)
    sh	$a7,-8($a3)
    # Line 338
    sh	$a5,-10($a3)
    sh	$a6,-12($a3)
    sh	$a4,-14($a3)
    sh	$a7,-16($a3)
    # Line 337
    sh	$a5,-18($a3)
    sh	$a6,-20($a3)
    sh	$a4,-22($a3)
    sh	$a7,-24($a3)
    # Line 336
    sh	$a5,-26($a3)
    sh	$a6,-28($a3)
    sh	$a4,-30($a3)
    sh	$a7,-32($a3)
    # Line 339
    sh	$a5,-34($a3)
    sh	$a6,-36($a3)
    sh	$a4,-38($a3)
    sh	$a7,-40($a3)
    # Line 338
    sh	$a5,-42($a3)
    sh	$a6,-44($a3)
    sh	$a4,-46($a3)
    sh	$a7,-48($a3)
    # Line 337
    sh	$a5,-50($a3)
    sh	$a6,-52($a3)
    sh	$a4,-54($a3)
    sh	$a7,-56($a3)
    # Line 336
    sh	$a5,-58($a3)
    sh	$a6,-60($a3)
    sh	$a4,-62($a3)
    sh	$a7,-64($a3)
    # Line 339
    sh	$a5,-66($a3)
    sh	$a6,-68($a3)
    sh	$a4,-70($a3)
    sh	$a7,-72($a3)
    # Line 338
    sh	$a5,-74($a3)
    sh	$a6,-76($a3)
    sh	$a4,-78($a3)
    sh	$a7,-80($a3)
    # Line 337
    sh	$a5,-82($a3)
    sh	$a6,-84($a3)
    sh	$a4,-86($a3)
    sh	$a7,-88($a3)
    # Line 336
    sh	$a5,-90($a3)
    sh	$a6,-92($a3)
    sh	$a4,-94($a3)
    sh	$a7,-96($a3)
    # Line 339
    sh	$a5,-98($a3)
    sh	$a6,-100($a3)
    sh	$a4,-102($a3)
    sh	$a7,-104($a3)
    # Line 338
    sh	$a5,-106($a3)
    sh	$a6,-108($a3)
    sh	$a4,-110($a3)
    sh	$a7,-112($a3)
    # Line 337
    sh	$a5,-114($a3)
    sh	$a6,-116($a3)
    sh	$a4,-118($a3)
    sh	$a7,-120($a3)
    # Line 336
    sh	$a5,-122($a3)
    sh	$a6,-124($a3)
    # Line 335
    addiu	$a0,$a0,-4
    # Line 336
    sh	$a4,-126($a3)
    # Line 335
    bne	$a0,$a1,.L0d9bc5e0
    # Line 336
    sh	$a7,-128($a3)
.L0d9bc6ec:
    # Line 333
    addiu	$s0,$s0,1
    # Line 343
    bltz	$t2,.L0d9bc71c
    move	$a0,$t2
    nop
    nop
.L0d9bc700:
    # Line 345
    addiu	$a3,$a3,8
    # Line 344
    sh	$a5,-2($a3)
    sh	$a6,-4($a3)
    # Line 343
    addiu	$a0,$a0,-1
    # Line 344
    sh	$a4,-6($a3)
    # Line 343
    bne	$a0,$a1,.L0d9bc700
    # Line 344
    sh	$a7,-8($a3)
.L0d9bc71c:
    # Line 333
    beq	$s0,$s1,.L0d9bc744
    # Line 347
    addu	$a3,$t8,$a3
.L0d9bc724:
    # Line 335
    bltz	$t3,.L0d9bc6ec
    move	$a0,$t3
    sra	$at,$t1,0x2
    andi	$t0,$t1,0x3
    bnez	$t0,.L0d9bc580
    nop
    b	.L0d9bc5d0
    nop
.L0d9bc744:
    ld	$s3,0($sp)
    ld	$s2,8($sp)
    # Line 349
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9bc760:
    # Line 317
    lw	$t9,132($s2)
    sd	$t2,40($sp)
    move	$a0,$s3
    sd	$ra,48($sp)
    jalr	$t9
    move	$a1,$s2
    ld	$ra,48($sp)
    ld	$t2,40($sp)
    lw	$a1,16($s2)
    b	.L0d9bc4a4
    lw	$t0,0($s2)
.end Clear

# Function: Pick
# Declared: Line 354 (Source lines: 360-360)
# Address: 0x0d9bc790 - 0x0d9bc798 (Size: 8 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 360
    jr	$ra
    nop
.end Pick

# Function: __glInitAccum64
# Declared: Line 362 (Source lines: 363-396)
# Address: 0x0d9bc7a0 - 0x0d9bc8b8 (Size: 280 bytes, Frame: 32)
.globl __glInitAccum64
.ent __glInitAccum64
__glInitAccum64:
    # Line 363
    lui	$at,0x9
    addiu	$sp,$sp,-32
    addiu	$at,$at,17900
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 364
    # lw $t9, -26720($gp) # &__glInitBuffer
    # Line 363
    sd	$a1,24($sp)
    sd	$s8,8($sp)
    # Line 364
    nop
    # Line 363
    sd	$ra,0($sp)
    # Line 364
    jal	__glInitBuffer
    # Line 363
    move	$s8,$a0
    # Line 376
    sw	$zero,132($s8)
    # Line 366
    li	$a6,8
    sw	$a6,24($s8)
    # Line 368
    la	$a5,sub_0d9c0000
    # Line 369
    la	$a4,sub_0d9c0000
    # Line 370
    la	$a3,sub_0d9c0000
    # Line 371
    la	$a2,sub_0d9c0000
    # Line 374
    la	$v1,sub_0d9c0000
    # Line 373
    la	$a0,sub_0d9c0000
    # Line 374
    addiu	$v1,$v1,-16224
    sw	$v1,128($s8)
    # Line 373
    addiu	$a0,$a0,-17328
    sw	$a0,124($s8)
    # Line 371
    addiu	$a2,$a2,-19728
    sw	$a2,116($s8)
    # Line 370
    addiu	$a3,$a3,-18640
    sw	$a3,112($s8)
    # Line 372
    la	$a1,sub_0d9c0000
    # Line 369
    addiu	$a4,$a4,-15264
    sw	$a4,108($s8)
    # Line 372
    addiu	$a1,$a1,-15664
    sw	$a1,120($s8)
    # Line 376
    ld	$a1,24($sp)
    # Line 368
    addiu	$a5,$a5,-14448
    sw	$a5,104($s8)
    # Line 376
    lbu	$v0,3220($a1)
    # Line 386
    lwc1	$f1,_lit_46fffe00
    # Line 391
    lwc1	$f0,_lit_3f800000
    # Line 376
    beqz	$v0,.L0d9bc8a8
    ld	$ra,0($sp)
    # Line 386
    lwc1	$f3,30752($a1)
    div.s	$f3,$f1,$f3
    swc1	$f3,72($s8)
    # Line 391
    div.s	$f3,$f0,$f3
    # Line 387
    lwc1	$f7,30760($a1)
    div.s	$f7,$f1,$f7
    # Line 393
    div.s	$f4,$f0,$f7
    # Line 387
    swc1	$f7,80($s8)
    # Line 388
    lwc1	$f6,30756($a1)
    div.s	$f6,$f1,$f6
    # Line 392
    div.s	$f2,$f0,$f6
    # Line 388
    swc1	$f6,76($s8)
    # Line 389
    lwc1	$f5,30792($a1)
    div.s	$f1,$f1,$f5
    # Line 394
    div.s	$f0,$f0,$f1
    # Line 396
    ld	$gp,16($sp)
    # Line 393
    swc1	$f4,96($s8)
    # Line 391
    swc1	$f3,88($s8)
    # Line 392
    swc1	$f2,92($s8)
    # Line 389
    swc1	$f1,84($s8)
    # Line 394
    swc1	$f0,100($s8)
    # Line 396
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9bc8a8:
    ld	$s8,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glInitAccum64

# Function: __glim_Accum
# Declared: Line 400 (Source lines: 401-454)
# Address: 0x0d9bc8c0 - 0x0d9bca50 (Size: 400 bytes, Frame: 48)
.globl __glim_Accum
.ent __glim_Accum
__glim_Accum:
    # Line 407
    lw	$a2,4120($zero)
    # Line 401
    move	$a4,$a0
    lui	$at,0x9
    # Line 404
    lw	$a3,4112($zero)
    # Line 401
    addiu	$sp,$sp,-48
    addiu	$at,$at,17612
    mov.s	$f4,$f13
    sd	$gp,24($sp)
    # Line 407
    beqz	$a2,.L0d9bc91c
    # Line 401
    addu	$gp,$t9,$at
    sdc1	$f13,0($sp)
    sd	$a0,8($sp)
    # Line 407
    li	$v0,2
    sd	$a3,16($sp)
    beq	$a2,$v0,.L0d9bc944
    sd	$ra,32($sp)
    # Line 415
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d9bc90c:
    ld	$ra,32($sp)
.L0d9bc910:
    # Line 454
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9bc91c:
    # Line 421
    lbu	$v1,3224($a3)
    lbu	$a0,3221($a3)
    beqz	$v1,.L0d9bc930
    sd	$ra,32($sp)
    beqz	$a0,.L0d9bc974
.L0d9bc930:
    # Line 422
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9bc910
    ld	$ra,32($sp)
.L0d9bc944:
    # Line 410
    ld	$t9,16($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    # Line 412
    # lw $t9, -22472($gp) # &glAccum
    ldc1	$f13,0($sp)
    ld	$a0,8($sp)
    jal	glAccum
    # Line 411
    sw	$zero,4120($zero)
    b	.L0d9bc910
    ld	$ra,32($sp)
.L0d9bc974:
    # Line 423
    lw	$ra,31376($a3)
    sd	$a3,16($sp)
    beqz	$ra,.L0d9bca0c
    sdc1	$f13,0($sp)
.L0d9bc984:
    # Line 430
    li	$a0,259
    li	$at,256
    # Line 445
    # lw $t9, -32712($gp) # &sub_0d9c0000
    # Line 430
    li	$v1,258
    li	$v0,257
    # Line 449
    ld	$ra,16($sp)
    # Line 430
    beq	$a4,$at,.L0d9bca00
    li	$a1,260
    # Line 445
    addiu	$t9,$t9,-16224
    # Line 430
    beq	$a4,$v0,.L0d9bca2c
    nop
    beq	$a4,$v1,.L0d9bca38
    nop
    beq	$a4,$a0,.L0d9bca44
    nop
    beq	$a4,$a1,.L0d9bc9dc
    nop
    # Line 447
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d9bc910
    ld	$ra,32($sp)
.L0d9bc9dc:
    # Line 449
    lw	$ra,3204($ra)
    li	$at,7168
    bne	$ra,$at,.L0d9bc90c
    # Line 452
    ld	$a0,16($sp)
    ldc1	$f13,0($sp)
    jalr	$t9
    addiu	$a0,$a0,31360
    b	.L0d9bc910
    ld	$ra,32($sp)
.L0d9bca00:
    # Line 432
    # lw $t9, -32712($gp) # &sub_0d9c0000
    b	.L0d9bc9dc
    addiu	$t9,$t9,-18640
.L0d9bca0c:
    # Line 427
    ld	$a1,16($sp)
    lw	$t9,31492($a1)
    move	$a0,$a1
    sd	$a4,8($sp)
    jal	sub_0d9c0000
    addiu	$a1,$a1,31360
    b	.L0d9bc984
    ld	$a4,8($sp)
.L0d9bca2c:
    # Line 436
    # lw $t9, -32712($gp) # &sub_0d9c0000
    b	.L0d9bc9dc
    addiu	$t9,$t9,-19728
.L0d9bca38:
    # Line 439
    # lw $t9, -32712($gp) # &sub_0d9c0000
    b	.L0d9bc9dc
    addiu	$t9,$t9,-15664
.L0d9bca44:
    # Line 442
    # lw $t9, -32712($gp) # &sub_0d9c0000
    b	.L0d9bc9dc
    addiu	$t9,$t9,-17328
.end __glim_Accum

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_46fffe00:
    .word 0x46fffe00

