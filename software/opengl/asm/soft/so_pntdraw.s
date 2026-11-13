# Source: ../soft/so_pntdraw.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_pntdraw.c
# Total Functions: 5

.text

# Function: __glRenderAliasedPoint1_NoTex
# Declared: Line 25 (Source lines: 26-43)
# Address: 0x0d9f7e20 - 0x0d9f7ed0 (Size: 176 bytes, Frame: 208)
.globl __glRenderAliasedPoint1_NoTex
.ent __glRenderAliasedPoint1_NoTex
__glRenderAliasedPoint1_NoTex:
    # Line 29
    lwc1	$f2,128($a1)
    # Line 26
    addiu	$sp,$sp,-80
    # Line 29
    trunc.w.s	$f2,$f2
    swc1	$f2,0($sp)
    # Line 30
    lwc1	$f1,132($a1)
    trunc.w.s	$f1,$f1
    swc1	$f1,4($sp)
    # Line 31
    lwc1	$f0,136($a1)
    trunc.l.s	$f0,$f0
    dmfc1	$a5,$f0
    sll	$a5,$a5,0x0
    sw	$a5,8($sp)
    lbu	$at,30520($a0)
    # Line 26
    move	$a4,$a1
    lui	$v0,0x6
    move	$a3,$a0
    sd	$ra,64($sp)
    addiu	$v0,$v0,-28820
    sd	$gp,56($sp)
    # Line 31
    beqz	$at,.L0d9f7e8c
    # Line 26
    addu	$gp,$t9,$v0
    # Line 33
    lwc1	$f3,30488($a0)
    trunc.l.s	$f3,$f3
    dmfc1	$a6,$f3
    sll	$a6,$a6,0x0
    addu	$a6,$a6,$a5
    sw	$a6,8($sp)
.L0d9f7e8c:
    # Line 39
    lw	$a7,8($a4)
    lwc1	$f7,0($a7)
    swc1	$f7,12($sp)
    lwc1	$f6,4($a7)
    swc1	$f6,16($sp)
    lwc1	$f5,8($a7)
    swc1	$f5,20($sp)
    lwc1	$f4,12($a7)
    swc1	$f4,24($sp)
    # Line 42
    lw	$t9,12608($a3)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($a3)
    ld	$ra,64($sp)
    # Line 43
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glRenderAliasedPoint1_NoTex

# Function: __glRenderAliasedPoint1
# Declared: Line 45 (Source lines: 46-70)
# Address: 0x0d9f7ed0 - 0x0d9f7fc8 (Size: 248 bytes, Frame: 208)
.globl __glRenderAliasedPoint1
.ent __glRenderAliasedPoint1
__glRenderAliasedPoint1:
    # Line 50
    lwc1	$f2,128($a1)
    # Line 48
    lw	$a4,30436($a0)
    # Line 46
    addiu	$sp,$sp,-80
    # Line 50
    trunc.w.s	$f2,$f2
    swc1	$f2,0($sp)
    # Line 51
    lwc1	$f1,132($a1)
    trunc.w.s	$f1,$f1
    swc1	$f1,4($sp)
    # Line 52
    lwc1	$f0,136($a1)
    trunc.l.s	$f0,$f0
    dmfc1	$a5,$f0
    sll	$a5,$a5,0x0
    sw	$a5,8($sp)
    # Line 46
    move	$a3,$a1
    # Line 52
    lbu	$v0,30520($a0)
    # Line 46
    sd	$s0,56($sp)
    move	$s0,$a0
    lui	$at,0x6
    addiu	$at,$at,-28996
    # Line 60
    andi	$a7,$a4,0x8
    sd	$gp,64($sp)
    # Line 52
    beqz	$v0,.L0d9f7f44
    # Line 46
    addu	$gp,$t9,$at
    # Line 54
    lwc1	$f3,30488($a0)
    trunc.l.s	$f3,$f3
    dmfc1	$a6,$f3
    sll	$a6,$a6,0x0
    addu	$a6,$a6,$a5
    sw	$a6,8($sp)
.L0d9f7f44:
    # Line 60
    lw	$t0,8($a3)
    lwc1	$f7,0($t0)
    swc1	$f7,12($sp)
    lwc1	$f6,4($t0)
    swc1	$f6,16($sp)
    lwc1	$f5,8($t0)
    swc1	$f5,20($sp)
    lwc1	$f4,12($t0)
    sd	$ra,72($sp)
    beqz	$a7,.L0d9f7fa4
    swc1	$f4,24($sp)
    # Line 62
    lwc1	$f18,60($a3)
    lwc1	$f17,3544($s0)
    div.s	$f18,$f17,$f18
    # Line 63
    lwc1	$f14,48($a3)
    lwc1	$f16,56($a3)
    lwc1	$f15,52($a3)
    lw	$t9,12524($s0)
    mul.s	$f16,$f16,$f18
    addiu	$a1,$sp,12
    mul.s	$f15,$f15,$f18
    move	$a0,$s0
    jalr	$t9
    mul.s	$f14,$f14,$f18
.L0d9f7fa4:
    # Line 69
    lw	$t9,12608($s0)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s0)
    ld	$ra,72($sp)
    ld	$s0,56($sp)
    # Line 70
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glRenderAliasedPoint1

# Function: __glRenderFlatFogPoint
# Declared: Line 72 (Source lines: 73-84)
# Address: 0x0d9f7fd0 - 0x0d9f804c (Size: 124 bytes, Frame: 192)
.globl __glRenderFlatFogPoint
.ent __glRenderFlatFogPoint
__glRenderFlatFogPoint:
    # Line 73
    addiu	$sp,$sp,-64
    sd	$s8,32($sp)
    sd	$ra,16($sp)
    sd	$s7,24($sp)
    lui	$at,0x6
    sd	$gp,40($sp)
    addiu	$at,$at,-29252
    addu	$gp,$t9,$at
    # Line 77
    lw	$t9,12532($a0)
    # Line 73
    sd	$s0,48($sp)
    move	$s0,$a1
    move	$s7,$a0
    # Line 77
    lwc1	$f15,176($s0)
    nop
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a2,8($s0)
    # Line 78
    lw	$s8,8($s0)
    # Line 79
    sw	$sp,8($s0)
    # Line 81
    lw	$t9,12500($s7)
    move	$a1,$s0
    jalr	$t9
    move	$a0,$s7
    ld	$s7,24($sp)
    # Line 84
    ld	$gp,40($sp)
    ld	$ra,16($sp)
    # Line 83
    sw	$s8,8($s0)
    # Line 84
    ld	$s0,48($sp)
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glRenderFlatFogPoint

# Function: __glRenderAliasedPointN
# Declared: Line 88 (Source lines: 89-140)
# Address: 0x0d9f8050 - 0x0d9f821c (Size: 460 bytes, Frame: 144)
.globl __glRenderAliasedPointN
.ent __glRenderAliasedPointN
__glRenderAliasedPointN:
    # Line 98
    lwc1	$f4,132($a1)
    lwc1	$f5,128($a1)
    # Line 92
    lw	$a3,30436($a0)
    # Line 89
    addiu	$sp,$sp,-144
    sd	$s2,88($sp)
    sd	$s6,96($sp)
    sd	$ra,104($sp)
    sd	$s0,64($sp)
    sd	$s8,72($sp)
    # Line 98
    lw	$s8,464($a0)
    # Line 89
    move	$s0,$a1
    sd	$s1,112($sp)
    sd	$s3,56($sp)
    lui	$v0,0x6
    # Line 98
    andi	$at,$s8,0x1
    # Line 89
    move	$s3,$a0
    sd	$s5,120($sp)
    addiu	$v0,$v0,-29380
    sd	$gp,80($sp)
    addu	$gp,$t9,$v0
    # Line 98
    beqz	$at,.L0d9f81f4
    sra	$a4,$s8,0x1
    # Line 103
    trunc.w.s	$f1,$f4
    # Line 102
    trunc.w.s	$f0,$f5
    # Line 103
    mfc1	$s1,$f1
    # Line 102
    mfc1	$s5,$f0
    # Line 103
    subu	$s1,$s1,$a4
    # Line 102
    subu	$s5,$s5,$a4
.L0d9f80c0:
    # Line 115
    lw	$t9,8($s0)
    lwc1	$f5,0($t9)
    swc1	$f5,12($sp)
    lwc1	$f4,4($t9)
    swc1	$f4,16($sp)
    lwc1	$f3,8($t9)
    swc1	$f3,20($sp)
    andi	$t8,$a3,0x8
    lwc1	$f2,12($t9)
    beqz	$t8,.L0d9f8120
    swc1	$f2,24($sp)
    # Line 117
    lwc1	$f18,60($s0)
    lwc1	$f17,3544($s3)
    div.s	$f18,$f17,$f18
    # Line 118
    lwc1	$f14,48($s0)
    lwc1	$f16,56($s0)
    lwc1	$f15,52($s0)
    lw	$t9,12524($s3)
    mul.s	$f16,$f16,$f18
    addiu	$a1,$sp,12
    mul.s	$f15,$f15,$f18
    move	$a0,$s3
    jalr	$t9
    mul.s	$f14,$f14,$f18
.L0d9f8120:
    # Line 126
    lwc1	$f19,136($s0)
    lbu	$t8,30520($s3)
    trunc.l.s	$f19,$f19
    dmfc1	$s2,$f19
    beqz	$t8,.L0d9f814c
    sll	$s2,$s2,0x0
    # Line 128
    lwc1	$f21,30488($s3)
    trunc.l.s	$f21,$f21
    dmfc1	$t9,$f21
    sll	$t9,$t9,0x0
    addu	$s2,$t9,$s2
.L0d9f814c:
    # Line 132
    addu	$s6,$s8,$s1
    slt	$ra,$s1,$s6
    beqz	$ra,.L0d9f81c8
    # Line 131
    sw	$s2,8($sp)
    sd	$s4,128($sp)
    # Line 132
    addu	$s4,$s8,$s5
    sd	$s7,136($sp)
    b	.L0d9f81b0
    slt	$s7,$s5,$s4
    nop
    nop
    nop
    # Line 136
    sw	$s2,8($sp)
.L0d9f8180:
    # Line 135
    sw	$s1,4($sp)
    # Line 134
    sw	$s0,0($sp)
    # Line 137
    lw	$t9,12608($s3)
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a0,11760($s3)
    # Line 133
    addiu	$s0,$s0,1
    bnel	$s4,$s0,.L0d9f8180
    # Line 136
    sw	$s2,8($sp)
.L0d9f81a4:
    # Line 132
    addiu	$s1,$s1,1
    beq	$s6,$s1,.L0d9f81c0
    nop
.L0d9f81b0:
    # Line 133
    beqz	$s7,.L0d9f81a4
    move	$s0,$s5
    b	.L0d9f8180
    # Line 136
    sw	$s2,8($sp)
.L0d9f81c0:
    ld	$s4,128($sp)
    ld	$s7,136($sp)
.L0d9f81c8:
    ld	$s2,88($sp)
    ld	$s3,56($sp)
    ld	$s6,96($sp)
    ld	$s0,64($sp)
    ld	$s1,112($sp)
    ld	$ra,104($sp)
    ld	$s5,120($sp)
    ld	$s8,72($sp)
    # Line 140
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9f81f4:
    # Line 106
    lwc1	$f23,3540($a0)
    # Line 107
    add.s	$f25,$f23,$f4
    # Line 106
    add.s	$f23,$f5,$f23
    # Line 107
    trunc.w.s	$f25,$f25
    # Line 106
    trunc.w.s	$f23,$f23
    # Line 107
    mfc1	$s1,$f25
    # Line 106
    mfc1	$s5,$f23
    # Line 107
    subu	$s1,$s1,$a4
    b	.L0d9f80c0
    # Line 106
    subu	$s5,$s5,$a4
.end __glRenderAliasedPointN

# Function: __glPolygonOffsetPoint
# Declared: Line 142 (Source lines: 143-149)
# Address: 0x0d9f8220 - 0x0d9f826c (Size: 76 bytes, Frame: 32)
.globl __glPolygonOffsetPoint
.ent __glPolygonOffsetPoint
__glPolygonOffsetPoint:
    # Line 143
    addiu	$sp,$sp,-32
    lui	$at,0x6
    sd	$gp,16($sp)
    addiu	$at,$at,-29844
    addu	$gp,$t9,$at
    # Line 146
    lw	$t9,12496($a0)
    # Line 144
    li	$v0,1
    sb	$v0,30520($a0)
    # Line 143
    sd	$s8,8($sp)
    # Line 146
    nop
    # Line 143
    sd	$ra,0($sp)
    # Line 146
    jalr	$t9
    # Line 143
    move	$s8,$a0
    ld	$ra,0($sp)
    # Line 149
    ld	$gp,16($sp)
    # Line 148
    sb	$zero,30520($s8)
    # Line 149
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glPolygonOffsetPoint

