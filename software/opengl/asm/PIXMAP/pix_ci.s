# Source: ../PIXMAP/pix_ci.c
# Category: PIXMAP
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../PIXMAP/pix_ci.c
# Total Functions: 12

.text

# Function: Store_8
# Declared: Line 29 (Source lines: 30-70)
# Address: 0x0d992d70 - 0x0d992f18 (Size: 424 bytes, Frame: 0)
.ent Store_8
Store_8:
    # Line 32
    lw	$a7,0($a0)
    # Line 38
    lw	$a6,4($a1)
    lw	$v0,3664($a7)
    lw	$t8,28($a0)
    subu	$v0,$a6,$v0
    mult	$t8,$v0
    # Line 30
    lui	$t3,0xc
    # Line 38
    lw	$a4,16($a0)
    # Line 30
    addiu	$t3,$t3,-8164
    # Line 36
    lw	$t0,1792($a7)
    # Line 41
    andi	$a3,$a6,0x3
    # Line 38
    lw	$a5,0($a1)
    mflo	$t1
    andi	$t2,$t0,0x8
    addu	$a4,$a4,$t1
    lw	$t1,3660($a7)
    # Line 30
    addu	$at,$t9,$t3
    # Line 38
    addu	$a4,$a5,$a4
    beqz	$t2,.L0d992e5c
    subu	$a4,$a4,$t1
    # Line 41
    lwc1	$f5,_lit_3d000000
    la	$a2,__glDitherTable
    sll	$a3,$a3,0x2
    andi	$v1,$a5,0x3
    addu	$v1,$v1,$a3
    addu	$v1,$v1,$a2
    lb	$v1,0($v1)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f4
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f5
.L0d992df0:
    # Line 46
    lwc1	$f5,12($a1)
    add.s	$f5,$f5,$f4
    # Line 47
    andi	$a5,$t0,0x4
    la	$a1,sub_0da40000
    # Line 46
    trunc.w.s	$f5,$f5
    # Line 47
    lbu	$a6,0($a4)
    addiu	$a1,$a1,17852
    beqz	$a5,.L0d992e40
    # Line 46
    mfc1	$a5,$f5
    # Line 47
    lw	$a2,1856($a7)
    addiu	$a2,$a2,-5376
    sltiu	$a3,$a2,16
    # Line 52
    nor	$a7,$a6,$zero
    # Line 47
    sll	$a2,$a2,0x2
    beqz	$a3,.L0d992e40
    addu	$a1,$a1,$a2
    lw	$a3,0($a1)
    jr	$a3
    nop
.L0d992e3c:
    # Line 56
    xor	$a5,$a6,$a5
.L0d992e40:
    # Line 69
    lw	$t0,156($a0)
    lw	$a7,152($a0)
    and	$a5,$a7,$a5
    and	$a6,$a6,$t0
    or	$a5,$a6,$a5
    # Line 70
    jr	$ra
    # Line 69
    sb	$a5,0($a4)
.L0d992e5c:
    b	.L0d992df0
    # Line 44
    lwc1	$f4,3540($a7)
.L0d992e64:
    # Line 50
    b	.L0d992e40
    move	$a5,$zero
.L0d992e6c:
    # Line 65
    b	.L0d992e40
    li	$a5,255
.L0d992e74:
    # Line 64
    and	$a5,$a6,$a5
    b	.L0d992e40
    nor	$a5,$a5,$zero
.L0d992e80:
    # Line 63
    nor	$a5,$a5,$zero
    b	.L0d992e40
    or	$a5,$a6,$a5
.L0d992e8c:
    # Line 62
    b	.L0d992e40
    nor	$a5,$a5,$zero
.L0d992e94:
    # Line 61
    nor	$a7,$a6,$zero
    b	.L0d992e40
    or	$a5,$a5,$a7
.L0d992ea0:
    # Line 69
    lw	$t0,156($a0)
    lw	$t1,152($a0)
    # Line 60
    nor	$t2,$a6,$zero
    # Line 69
    and	$t1,$t1,$t2
    and	$t0,$a6,$t0
    or	$t0,$t0,$t1
    # Line 70
    jr	$ra
    # Line 69
    sb	$t0,0($a4)
.L0d992ec0:
    # Line 59
    xor	$a5,$a6,$a5
    b	.L0d992e40
    nor	$a5,$a5,$zero
.L0d992ecc:
    # Line 69
    lw	$t1,156($a0)
    lw	$a7,152($a0)
    # Line 58
    nor	$t0,$a6,$a5
    # Line 69
    and	$a7,$a7,$t0
    and	$a6,$a6,$t1
    or	$a6,$a6,$a7
    # Line 70
    jr	$ra
    # Line 69
    sb	$a6,0($a4)
.L0d992eec:
    # Line 57
    b	.L0d992e40
    or	$a5,$a6,$a5
.L0d992ef4:
    # Line 55
    b	.L0d992e40
    move	$a5,$a6
.L0d992efc:
    # Line 54
    nor	$a5,$a5,$zero
    b	.L0d992e40
    and	$a5,$a6,$a5
.L0d992f08:
    # Line 52
    b	.L0d992e40
    and	$a5,$a5,$a7
.L0d992f10:
    b	.L0d992e40
    # Line 51
    and	$a5,$a6,$a5
.end Store_8

# Function: Store_16
# Declared: Line 73 (Source lines: 74-114)
# Address: 0x0d992f20 - 0x0d9930d4 (Size: 436 bytes, Frame: 0)
.ent Store_16
Store_16:
    # Line 76
    lw	$a7,0($a0)
    # Line 82
    lw	$a5,4($a1)
    lw	$v1,3664($a7)
    lw	$v0,28($a0)
    subu	$v1,$a5,$v1
    mult	$v0,$v1
    lw	$a6,0($a1)
    # Line 74
    lui	$t8,0xc
    # Line 85
    andi	$a2,$a6,0x3
    # Line 74
    addiu	$t8,$t8,-8596
    # Line 80
    lw	$t0,1792($a7)
    # Line 74
    addu	$at,$t9,$t8
    # Line 82
    lw	$a4,16($a0)
    mflo	$t3
    lw	$t1,3660($a7)
    andi	$t2,$t0,0x8
    addu	$t3,$t3,$t3
    addu	$a4,$a4,$t3
    addu	$t3,$a6,$a6
    addu	$t1,$t1,$t1
    addu	$a4,$a4,$t3
    # Line 85
    la	$a3,__glDitherTable
    # Line 82
    beqz	$t2,.L0d993018
    subu	$a4,$a4,$t1
    # Line 85
    lwc1	$f5,_lit_3d000000
    andi	$t1,$a5,0x3
    sll	$t1,$t1,0x2
    addu	$a2,$a2,$t1
    addu	$a2,$a2,$a3
    lb	$a2,0($a2)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f4
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f5
.L0d992fac:
    # Line 90
    lwc1	$f5,12($a1)
    add.s	$f5,$f5,$f4
    # Line 91
    andi	$t2,$t0,0x4
    la	$a1,sub_0da40000
    # Line 90
    trunc.w.s	$f5,$f5
    # Line 91
    lhu	$a6,0($a4)
    addiu	$a1,$a1,17916
    beqz	$t2,.L0d992ffc
    # Line 90
    mfc1	$a5,$f5
    # Line 91
    lw	$a2,1856($a7)
    addiu	$a2,$a2,-5376
    sltiu	$a3,$a2,16
    # Line 96
    nor	$a7,$a6,$zero
    # Line 91
    sll	$a2,$a2,0x2
    beqz	$a3,.L0d992ffc
    addu	$a1,$a1,$a2
    lw	$a3,0($a1)
    jr	$a3
    nop
.L0d992ff8:
    # Line 100
    xor	$a5,$a6,$a5
.L0d992ffc:
    # Line 113
    lw	$t0,156($a0)
    lw	$a7,152($a0)
    and	$a5,$a7,$a5
    and	$a6,$a6,$t0
    or	$a5,$a6,$a5
    # Line 114
    jr	$ra
    # Line 113
    sh	$a5,0($a4)
.L0d993018:
    b	.L0d992fac
    # Line 88
    lwc1	$f4,3540($a7)
.L0d993020:
    # Line 94
    b	.L0d992ffc
    move	$a5,$zero
.L0d993028:
    # Line 109
    b	.L0d992ffc
    li	$a5,0xffff
.L0d993030:
    # Line 108
    and	$a5,$a6,$a5
    b	.L0d992ffc
    nor	$a5,$a5,$zero
.L0d99303c:
    # Line 107
    nor	$a5,$a5,$zero
    b	.L0d992ffc
    or	$a5,$a6,$a5
.L0d993048:
    # Line 106
    b	.L0d992ffc
    nor	$a5,$a5,$zero
.L0d993050:
    # Line 105
    nor	$a7,$a6,$zero
    b	.L0d992ffc
    or	$a5,$a5,$a7
.L0d99305c:
    # Line 113
    lw	$t0,156($a0)
    lw	$t1,152($a0)
    # Line 104
    nor	$t2,$a6,$zero
    # Line 113
    and	$t1,$t1,$t2
    and	$t0,$a6,$t0
    or	$t0,$t0,$t1
    # Line 114
    jr	$ra
    # Line 113
    sh	$t0,0($a4)
.L0d99307c:
    # Line 103
    xor	$a5,$a6,$a5
    b	.L0d992ffc
    nor	$a5,$a5,$zero
.L0d993088:
    # Line 113
    lw	$t1,156($a0)
    lw	$a7,152($a0)
    # Line 102
    nor	$t0,$a6,$a5
    # Line 113
    and	$a7,$a7,$t0
    and	$a6,$a6,$t1
    or	$a6,$a6,$a7
    # Line 114
    jr	$ra
    # Line 113
    sh	$a6,0($a4)
.L0d9930a8:
    # Line 101
    b	.L0d992ffc
    or	$a5,$a6,$a5
.L0d9930b0:
    # Line 99
    b	.L0d992ffc
    move	$a5,$a6
.L0d9930b8:
    # Line 98
    nor	$a5,$a5,$zero
    b	.L0d992ffc
    and	$a5,$a6,$a5
.L0d9930c4:
    # Line 96
    b	.L0d992ffc
    and	$a5,$a5,$a7
.L0d9930cc:
    b	.L0d992ffc
    # Line 95
    and	$a5,$a6,$a5
.end Store_16

# Function: Store_32
# Declared: Line 117 (Source lines: 118-158)
# Address: 0x0d9930e0 - 0x0d993298 (Size: 440 bytes, Frame: 0)
.ent Store_32
Store_32:
    # Line 120
    lw	$a7,0($a0)
    # Line 126
    lw	$a5,4($a1)
    lw	$v1,3664($a7)
    lw	$v0,28($a0)
    subu	$v1,$a5,$v1
    mult	$v0,$v1
    lw	$a6,0($a1)
    # Line 118
    lui	$t8,0xc
    # Line 129
    andi	$a2,$a6,0x3
    # Line 118
    addiu	$t8,$t8,-9044
    # Line 124
    lw	$t0,1792($a7)
    # Line 118
    addu	$at,$t9,$t8
    # Line 126
    lw	$a4,16($a0)
    mflo	$t3
    lw	$t1,3660($a7)
    andi	$t2,$t0,0x8
    sll	$t3,$t3,0x2
    addu	$a4,$a4,$t3
    sll	$t3,$a6,0x2
    sll	$t1,$t1,0x2
    addu	$a4,$a4,$t3
    # Line 129
    la	$a3,__glDitherTable
    # Line 126
    beqz	$t2,.L0d9931dc
    subu	$a4,$a4,$t1
    # Line 129
    lwc1	$f5,_lit_3d000000
    andi	$t1,$a5,0x3
    sll	$t1,$t1,0x2
    addu	$a2,$a2,$t1
    addu	$a2,$a2,$a3
    lb	$a2,0($a2)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f4
    cvt.s.w	$f4,$f4
    mul.s	$f4,$f4,$f5
.L0d99316c:
    # Line 134
    lwc1	$f5,12($a1)
    add.s	$f5,$f5,$f4
    trunc.l.s	$f5,$f5
    # Line 135
    andi	$t1,$t0,0x4
    la	$a1,sub_0da40000
    # Line 134
    dmfc1	$a5,$f5
    # Line 135
    lw	$a6,0($a4)
    addiu	$a1,$a1,17980
    beqz	$t1,.L0d9931c0
    # Line 134
    sll	$a5,$a5,0x0
    # Line 135
    lw	$a2,1856($a7)
    addiu	$a2,$a2,-5376
    sltiu	$a3,$a2,16
    # Line 140
    nor	$a7,$a6,$zero
    # Line 135
    sll	$a2,$a2,0x2
    beqz	$a3,.L0d9931c0
    addu	$a1,$a1,$a2
    lw	$a3,0($a1)
    jr	$a3
    nop
.L0d9931bc:
    # Line 144
    xor	$a5,$a6,$a5
.L0d9931c0:
    # Line 157
    lw	$t0,152($a0)
    lw	$a7,156($a0)
    and	$a6,$a7,$a6
    and	$a5,$t0,$a5
    or	$a5,$a5,$a6
    # Line 158
    jr	$ra
    # Line 157
    sw	$a5,0($a4)
.L0d9931dc:
    b	.L0d99316c
    # Line 132
    lwc1	$f4,3540($a7)
.L0d9931e4:
    # Line 138
    b	.L0d9931c0
    move	$a5,$zero
.L0d9931ec:
    # Line 153
    b	.L0d9931c0
    li	$a5,-1
.L0d9931f4:
    # Line 152
    and	$a5,$a6,$a5
    b	.L0d9931c0
    nor	$a5,$a5,$zero
.L0d993200:
    # Line 151
    nor	$a5,$a5,$zero
    b	.L0d9931c0
    or	$a5,$a6,$a5
.L0d99320c:
    # Line 150
    b	.L0d9931c0
    nor	$a5,$a5,$zero
.L0d993214:
    # Line 149
    nor	$a7,$a6,$zero
    b	.L0d9931c0
    or	$a5,$a5,$a7
.L0d993220:
    # Line 157
    lw	$t0,152($a0)
    lw	$t1,156($a0)
    # Line 148
    nor	$t2,$a6,$zero
    # Line 157
    and	$t1,$t1,$a6
    and	$t0,$t0,$t2
    or	$t0,$t0,$t1
    # Line 158
    jr	$ra
    # Line 157
    sw	$t0,0($a4)
.L0d993240:
    # Line 147
    xor	$a5,$a6,$a5
    b	.L0d9931c0
    nor	$a5,$a5,$zero
.L0d99324c:
    # Line 157
    lw	$a7,152($a0)
    lw	$t0,156($a0)
    # Line 146
    nor	$t1,$a6,$a5
    # Line 157
    and	$a6,$t0,$a6
    and	$a7,$a7,$t1
    or	$a6,$a7,$a6
    # Line 158
    jr	$ra
    # Line 157
    sw	$a6,0($a4)
.L0d99326c:
    # Line 145
    b	.L0d9931c0
    or	$a5,$a6,$a5
.L0d993274:
    # Line 143
    b	.L0d9931c0
    move	$a5,$a6
.L0d99327c:
    # Line 142
    nor	$a5,$a5,$zero
    b	.L0d9931c0
    and	$a5,$a6,$a5
.L0d993288:
    # Line 140
    b	.L0d9931c0
    and	$a5,$a5,$a7
.L0d993290:
    b	.L0d9931c0
    # Line 139
    and	$a5,$a6,$a5
.end Store_32

# Function: Fetch_8
# Declared: Line 166 (Source lines: 172-173)
# Address: 0x0d9932a0 - 0x0d9932e0 (Size: 64 bytes, Frame: 0)
.ent Fetch_8
Fetch_8:
    # Line 172
    lw	$v0,0($a0)
    lw	$a5,3664($v0)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$at,16($a0)
    mflo	$v1
    lw	$v0,3660($v0)
    addu	$at,$at,$v1
    addu	$at,$a1,$at
    subu	$at,$at,$v0
    lbu	$at,0($at)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    # Line 173
    jr	$ra
    # Line 172
    swc1	$f0,0($a3)
.end Fetch_8

# Function: Fetch_16
# Declared: Line 175 (Source lines: 181-182)
# Address: 0x0d9932e0 - 0x0d99332c (Size: 76 bytes, Frame: 0)
.ent Fetch_16
Fetch_16:
    # Line 181
    lw	$v0,0($a0)
    lw	$a5,3664($v0)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$at,16($a0)
    mflo	$v1
    lw	$v0,3660($v0)
    addu	$v1,$v1,$v1
    addu	$at,$at,$v1
    addu	$v1,$a1,$a1
    addu	$v0,$v0,$v0
    addu	$at,$at,$v1
    subu	$at,$at,$v0
    lhu	$at,0($at)
    mtc1	$at,$f0
    cvt.s.w	$f0,$f0
    # Line 182
    jr	$ra
    # Line 181
    swc1	$f0,0($a3)
.end Fetch_16

# Function: Fetch_32
# Declared: Line 184 (Source lines: 190-191)
# Address: 0x0d993330 - 0x0d993384 (Size: 84 bytes, Frame: 0)
.ent Fetch_32
Fetch_32:
    # Line 190
    lw	$v0,0($a0)
    lw	$a5,3664($v0)
    lw	$a4,28($a0)
    subu	$a5,$a2,$a5
    mult	$a4,$a5
    lw	$at,16($a0)
    mflo	$v1
    lw	$v0,3660($v0)
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    sll	$v1,$a1,0x2
    sll	$v0,$v0,0x2
    addu	$at,$at,$v1
    subu	$at,$at,$v0
    lw	$at,0($at)
    dsll32	$at,$at,0x0
    dsrl32	$at,$at,0x0
    dmtc1	$at,$f0
    cvt.s.l	$f0,$f0
    # Line 191
    jr	$ra
    # Line 190
    swc1	$f0,0($a3)
.end Fetch_32

# Function: Clear
# Declared: Line 193 (Source lines: 194-220)
# Address: 0x0d993390 - 0x0d993494 (Size: 260 bytes, Frame: 160)
.ent Clear
Clear:
    # Line 194
    addiu	$sp,$sp,-160
    sd	$gp,64($sp)
    sd	$s2,104($sp)
    sd	$s4,88($sp)
    # Line 195
    lw	$a2,0($a0)
    # Line 194
    sd	$s1,80($sp)
    # Line 204
    lw	$s1,29712($a2)
    # Line 202
    lw	$s4,29704($a2)
    # Line 194
    sd	$s3,96($sp)
    sd	$s5,72($sp)
    # Line 203
    lw	$s5,29708($a2)
    # Line 201
    lw	$s3,29700($a2)
    # Line 207
    li	$v0,-5
    # Line 194
    move	$s2,$a0
    # Line 199
    lw	$a3,1792($a2)
    # Line 194
    lui	$v1,0xc
    # Line 209
    lwc1	$f0,1876($a2)
    # Line 210
    slt	$at,$s3,$s5
    # Line 194
    addiu	$v1,$v1,-9732
    # Line 207
    and	$v0,$a3,$v0
    sw	$v0,1792($a2)
    # Line 194
    addu	$gp,$t9,$v1
    # Line 210
    beqz	$at,.L0d993470
    # Line 209
    swc1	$f0,12($sp)
    sd	$a3,144($sp)
    sd	$a2,136($sp)
    sd	$s0,128($sp)
    sd	$ra,120($sp)
    # Line 210
    subu	$a0,$s1,$s4
    sd	$a0,56($sp)
    sd	$s6,112($sp)
    b	.L0d993448
    slt	$s6,$s4,$s1
    nop
    nop
    # Line 213
    sw	$s0,4($sp)
.L0d993420:
    # Line 215
    lw	$t9,164($s2)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s2
    # Line 212
    addiu	$s0,$s0,1
    bnel	$s1,$s0,.L0d993420
    # Line 213
    sw	$s0,4($sp)
.L0d99343c:
    # Line 210
    addiu	$s3,$s3,1
    beq	$s5,$s3,.L0d99345c
    nop
.L0d993448:
    # Line 211
    sw	$s3,0($sp)
    # Line 212
    beqz	$s6,.L0d99343c
    move	$s0,$s4
    b	.L0d993420
    # Line 213
    sw	$s0,4($sp)
.L0d99345c:
    ld	$s6,112($sp)
    ld	$ra,120($sp)
    ld	$s0,128($sp)
    ld	$a2,136($sp)
    ld	$a3,144($sp)
.L0d993470:
    # Line 219
    sw	$a3,1792($a2)
    # Line 220
    ld	$gp,64($sp)
    ld	$s1,80($sp)
    ld	$s2,104($sp)
    ld	$s3,96($sp)
    ld	$s4,88($sp)
    ld	$s5,72($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end Clear

# Function: StoreSpan
# Declared: Line 222 (Source lines: 223-247)
# Address: 0x0d9934a0 - 0x0d99353c (Size: 156 bytes, Frame: 240)
.ent StoreSpan
StoreSpan:
    # Line 223
    addiu	$sp,$sp,-112
    sd	$s2,88($sp)
    # Line 231
    lw	$a2,30248($a0)
    # Line 233
    lw	$v1,30200($a0)
    sw	$v1,4($sp)
    # Line 223
    sd	$s0,72($sp)
    # Line 234
    lw	$s0,30196($a0)
    # Line 237
    lw	$s2,30480($a0)
    # Line 223
    sd	$s3,80($sp)
    # Line 235
    addu	$s3,$s0,$a2
    # Line 223
    sd	$s1,64($sp)
    lui	$v0,0xc
    # Line 239
    slt	$at,$s0,$s3
    # Line 236
    lw	$s1,30464($a0)
    # Line 223
    addiu	$v0,$v0,-10004
    sd	$gp,56($sp)
    # Line 239
    beqz	$at,.L0d99351c
    # Line 223
    addu	$gp,$t9,$v0
    sd	$ra,96($sp)
    nop
.L0d9934f0:
    # Line 240
    sw	$s0,0($sp)
    # Line 241
    lwc1	$f0,0($s1)
    swc1	$f0,12($sp)
    # Line 244
    lw	$t9,164($s2)
    addiu	$a1,$sp,0
    move	$a0,$s2
    jalr	$t9
    # Line 242
    addiu	$s1,$s1,16
    # Line 239
    addiu	$s0,$s0,1
    bne	$s3,$s0,.L0d9934f0
    ld	$ra,96($sp)
.L0d99351c:
    # Line 247
    ld	$gp,56($sp)
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    move	$v0,$zero
    ld	$s2,88($sp)
    ld	$s3,80($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end StoreSpan

# Function: StoreStippledSpan
# Declared: Line 250 (Source lines: 251-294)
# Address: 0x0d993540 - 0x0d99367c (Size: 316 bytes, Frame: 160)
.ent StoreStippledSpan
StoreStippledSpan:
    # Line 263
    lw	$v0,30200($a0)
    # Line 251
    addiu	$sp,$sp,-160
    sd	$s8,64($sp)
    # Line 261
    lw	$s8,30472($a0)
    # Line 251
    sd	$s7,72($sp)
    # Line 260
    lw	$s7,30248($a0)
    # Line 263
    sw	$v0,4($sp)
    # Line 251
    sd	$s5,80($sp)
    # Line 266
    lw	$s5,30480($a0)
    # Line 251
    sd	$s2,104($sp)
    # Line 265
    lw	$s2,30464($a0)
    # Line 251
    sd	$s1,88($sp)
    lui	$at,0xc
    # Line 264
    lw	$s1,30196($a0)
    # Line 251
    addiu	$at,$at,-10164
    sd	$gp,96($sp)
    # Line 266
    beqz	$s7,.L0d993658
    # Line 251
    addu	$gp,$t9,$at
    sd	$s0,152($sp)
    sd	$s4,144($sp)
    sd	$ra,136($sp)
    sd	$s3,120($sp)
    sd	$s6,128($sp)
    # Line 266
    li	$s6,-1
    nop
    nop
    nop
    # Line 277
    lui	$s0,0x8000
.L0d9935b0:
    # Line 270
    move	$a2,$s7
    li	$v1,32
    li	$a0,32
    slt	$v1,$v1,$s7
    movn	$a2,$a0,$v1
    # Line 277
    addiu	$a0,$a2,-1
    # Line 275
    addiu	$s8,$s8,4
    # Line 273
    subu	$s7,$s7,$a2
    # Line 275
    lw	$s3,-4($s8)
    # Line 277
    bltz	$a0,.L0d99363c
    move	$s4,$a0
    sd	$s1,112($sp)
    sd	$a0,56($sp)
    and	$a2,$s3,$s0
    nop
    nop
.L0d9935f0:
    beqz	$a2,.L0d993614
    nop
    # Line 279
    sw	$s1,0($sp)
    # Line 280
    lwc1	$f0,0($s2)
    swc1	$f0,12($sp)
    # Line 282
    lw	$t9,164($s5)
    addiu	$a1,$sp,0
    jalr	$t9
    move	$a0,$s5
.L0d993614:
    # Line 285
    addiu	$s2,$s2,16
    # Line 277
    addiu	$s4,$s4,-1
    # Line 284
    addiu	$s1,$s1,1
    # Line 287
    srl	$s0,$s0,0x1
    # Line 277
    bne	$s4,$s6,.L0d9935f0
    and	$a2,$s3,$s0
    ld	$t8,56($sp)
    ld	$s1,112($sp)
    addu	$s1,$s1,$t8
    addiu	$s1,$s1,1
.L0d99363c:
    bnez	$s7,.L0d9935b0
    lui	$s0,0x8000
    ld	$s3,120($sp)
    ld	$s6,128($sp)
    ld	$ra,136($sp)
    ld	$s4,144($sp)
    ld	$s0,152($sp)
.L0d993658:
    # Line 294
    ld	$gp,96($sp)
    ld	$s1,88($sp)
    ld	$s2,104($sp)
    ld	$s5,80($sp)
    move	$v0,$zero
    ld	$s7,72($sp)
    ld	$s8,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.end StoreStippledSpan

# Function: Pick
# Declared: Line 297 (Source lines: 298-320)
# Address: 0x0d993680 - 0x0d993734 (Size: 180 bytes, Frame: 0)
.ent Pick
Pick:
    # Line 298
    lw	$v1,1888($a0)
    lui	$v0,0xc
    addiu	$v0,$v0,-10484
    beqz	$v1,.L0d9936f8
    addu	$at,$t9,$v0
    # Line 305
    lw	$a3,1880($a0)
    lw	$v1,72($a1)
    and	$a3,$a3,$v1
    sw	$a3,152($a1)
    # Line 306
    lw	$a2,1880($a0)
    nor	$a2,$a2,$zero
    and	$v1,$v1,$a2
    sw	$v1,156($a1)
.L0d9936b4:
    # Line 309
    li	$a4,1
    lw	$a0,24($a1)
    # Line 317
    li	$t1,2
    # Line 309
    beq	$a0,$a4,.L0d993708
    # Line 319
    la	$a6,sub_0da40000
    # Line 309
    li	$a5,2
    beq	$a0,$a5,.L0d993718
    # Line 319
    addiu	$a6,$a6,27096
    # Line 309
    li	$t0,4
    move	$a7,$zero
    xor	$t0,$a0,$t0
    movz	$a7,$t1,$t0
    # Line 319
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    # Line 320
    jr	$ra
    # Line 319
    sw	$a6,164($a1)
.L0d9936f8:
    # Line 302
    sw	$zero,152($a1)
    # Line 303
    lw	$t1,72($a1)
    b	.L0d9936b4
    sw	$t1,156($a1)
.L0d993708:
    # Line 319
    la	$t2,sub_0da40000
    lw	$t2,27096($t2)
    # Line 320
    jr	$ra
    # Line 319
    sw	$t2,164($a1)
.L0d993718:
    la	$t3,sub_0da40000
    li	$t8,0x4
    addiu	$t3,$t3,27096
    addu	$t3,$t3,$t8
    lw	$t3,0($t3)
    # Line 320
    jr	$ra
    # Line 319
    sw	$t3,164($a1)
.end Pick

# Function: Resize
# Declared: Line 322 (Source lines: 323-336)
# Address: 0x0d993740 - 0x0d9937dc (Size: 156 bytes, Frame: 48)
.ent Resize
Resize:
    # Line 326
    lw	$at,24($a0)
    multu	$a1,$at
    mflo	$a3
    li	$a4,-4
    addiu	$a3,$a3,3
    and	$a3,$a3,$a4
    divu	$zero,$a3,$at
    # Line 323
    addiu	$sp,$sp,-48
    sd	$s8,0($sp)
    sd	$s0,24($sp)
    move	$s0,$a2
    lui	$v1,0xc
    # Line 326
    lw	$v0,16($a0)
    # Line 323
    move	$s8,$a1
    sd	$s1,16($sp)
    addiu	$v1,$v1,-10676
    move	$s1,$a0
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    sd	$s2,32($sp)
    # Line 326
    mflo	$s2
    beqz	$v0,.L0d9937c4
    teq	$at,$zero,0x7
.L0d99379c:
    # Line 336
    ld	$gp,8($sp)
    # Line 334
    sw	$s0,8($s1)
    # Line 336
    ld	$s0,24($sp)
    # Line 335
    sw	$s2,28($s1)
    # Line 333
    sw	$s8,4($s1)
    # Line 336
    ld	$s1,16($sp)
    ld	$s2,32($sp)
    ld	$s8,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9937c4:
    # Line 330
    # lw $t9, -26708($gp) # &__glResizeBuffer
    sd	$ra,40($sp)
    jal	__glResizeBuffer
    move	$a1,$s2
    b	.L0d99379c
    ld	$ra,40($sp)
.end Resize

# Function: __glPixInitCI
# Declared: Line 339 (Source lines: 340-382)
# Address: 0x0d9937e0 - 0x0d993950 (Size: 368 bytes, Frame: 32)
.globl __glPixInitCI
.ent __glPixInitCI
__glPixInitCI:
    # Line 340
    lui	$at,0xc
    addiu	$sp,$sp,-32
    addiu	$at,$at,-10836
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 343
    # lw $t9, -26720($gp) # &__glInitBuffer
    # Line 340
    sd	$s8,0($sp)
    move	$s8,$a1
    sd	$s0,24($sp)
    # Line 343
    nop
    # Line 340
    sd	$ra,16($sp)
    # Line 343
    jal	__glInitBuffer
    # Line 340
    move	$s0,$a0
    # Line 345
    la	$a1,__glFetchSpan
    # Line 347
    la	$a5,__glReadSpan
    # Line 348
    la	$a4,__glReturnSpan
    sw	$a4,180($s0)
    # Line 347
    sw	$a5,176($s0)
    # Line 352
    sw	$a1,200($s0)
    # Line 353
    sw	$a1,204($s0)
    # Line 345
    la	$a6,sub_0d990000
    # Line 351
    la	$a2,sub_0d990000
    # Line 354
    la	$a0,sub_0d990000
    # Line 355
    la	$v1,sub_0d990000
    # Line 350
    la	$a3,sub_0d990000
    # Line 357
    lwc1	$f0,_lit_3f800000
    # Line 350
    addiu	$a3,$a3,13200
    sw	$a3,216($s0)
    # Line 360
    swc1	$f0,128($s0)
    # Line 359
    swc1	$f0,96($s0)
    # Line 358
    swc1	$f0,92($s0)
    # Line 357
    swc1	$f0,88($s0)
    # Line 355
    addiu	$v1,$v1,13632
    sw	$v1,188($s0)
    # Line 354
    addiu	$a0,$a0,13472
    sw	$a0,184($s0)
    # Line 351
    addiu	$a2,$a2,13952
    sw	$a2,160($s0)
    # Line 345
    addiu	$a6,$a6,14144
    sw	$a6,56($s0)
    # Line 378
    li	$t1,1
    # Line 375
    li	$a7,2
    # Line 362
    lw	$a1,3252($s8)
    # Line 366
    li	$a3,-1
    # Line 364
    li	$a2,1
    # Line 368
    slti	$a4,$a1,17
    # Line 362
    slti	$v0,$a1,32
    # Line 376
    la	$t0,sub_0d990000
    # Line 373
    slti	$a5,$a1,9
    # Line 364
    sllv	$a2,$a2,$a1
    # Line 382
    ld	$s8,0($sp)
    # Line 362
    beqz	$v0,.L0d9938bc
    # Line 364
    addiu	$a2,$a2,-1
    b	.L0d9938c4
    sw	$a2,152($s0)
.L0d9938bc:
    # Line 366
    sw	$a3,152($s0)
    move	$a2,$a3
.L0d9938c4:
    # Line 376
    addiu	$t0,$t0,12960
    # Line 368
    beqz	$a4,.L0d993920
    sw	$a2,72($s0)
    # Line 373
    bnez	$a5,.L0d993900
    # Line 375
    la	$a6,sub_0d990000
    # Line 382
    ld	$gp,8($sp)
    ld	$s8,0($sp)
    # Line 375
    sw	$a7,24($s0)
    # Line 382
    ld	$ra,16($sp)
    # Line 375
    addiu	$a6,$a6,13024
    # Line 376
    sw	$a6,168($s0)
    sw	$a6,172($s0)
    # Line 382
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d993900:
    ld	$gp,8($sp)
    # Line 378
    sw	$t1,24($s0)
    # Line 382
    ld	$ra,16($sp)
    # Line 379
    sw	$t0,168($s0)
    sw	$t0,172($s0)
    # Line 382
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d993920:
    # Line 372
    la	$t2,sub_0d990000
    # Line 382
    ld	$gp,8($sp)
    ld	$s8,0($sp)
    # Line 372
    li	$t3,4
    sw	$t3,24($s0)
    # Line 382
    ld	$ra,16($sp)
    # Line 372
    addiu	$t2,$t2,13104
    # Line 373
    sw	$t2,168($s0)
    sw	$t2,172($s0)
    # Line 382
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glPixInitCI

.late_rodata
jtbl_0da445bc:
    .word .L0d992e64
    .word .L0d992f10
    .word .L0d992f08
    .word .L0d992e40
    .word .L0d992efc
    .word .L0d992ef4
    .word .L0d992e3c
    .word .L0d992eec
    .word .L0d992ecc
    .word .L0d992ec0
    .word .L0d992ea0
    .word .L0d992e94
    .word .L0d992e8c
    .word .L0d992e80
    .word .L0d992e74
    .word .L0d992e6c
jtbl_0da445fc:
    .word .L0d993020
    .word .L0d9930cc
    .word .L0d9930c4
    .word .L0d992ffc
    .word .L0d9930b8
    .word .L0d9930b0
    .word .L0d992ff8
    .word .L0d9930a8
    .word .L0d993088
    .word .L0d99307c
    .word .L0d99305c
    .word .L0d993050
    .word .L0d993048
    .word .L0d99303c
    .word .L0d993030
    .word .L0d993028
jtbl_0da4463c:
    .word .L0d9931e4
    .word .L0d993290
    .word .L0d993288
    .word .L0d9931c0
    .word .L0d99327c
    .word .L0d993274
    .word .L0d9931bc
    .word .L0d99326c
    .word .L0d99324c
    .word .L0d993240
    .word .L0d993220
    .word .L0d993214
    .word .L0d99320c
    .word .L0d993200
    .word .L0d9931f4
    .word .L0d9931ec

.rdata
_lit_3d000000:
    .word 0x3d000000
_lit_3f800000:
    .word 0x3f800000

