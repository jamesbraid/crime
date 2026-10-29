# Source: ../pixel/px_read.c
# Category: pixel
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_read.c
# Total Functions: 10

.text

# Function: __glSpanReadRGBA
# Declared: Line 34 (Source lines: 36-59)
# Address: 0x0d9b0bf0 - 0x0d9b0cbc (Size: 204 bytes, Frame: 208)
.globl __glSpanReadRGBA
.ent __glSpanReadRGBA
__glSpanReadRGBA:
    # Line 36
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    # Line 46
    lw	$s2,312($a1)
    # Line 36
    sd	$s5,40($sp)
    sd	$s6,8($sp)
    # Line 49
    lwc1	$f1,188($a1)
    # Line 48
    lwc1	$f0,192($a1)
    # Line 36
    sd	$s4,16($sp)
    # Line 44
    lw	$s4,180($a1)
    # Line 49
    trunc.w.s	$f1,$f1
    # Line 36
    move	$s6,$a0
    sd	$s1,32($sp)
    lui	$at,0xa
    # Line 48
    trunc.w.s	$f0,$f0
    # Line 36
    move	$s1,$a2
    sd	$s0,24($sp)
    addiu	$at,$at,412
    # Line 49
    mfc1	$s0,$f1
    sd	$gp,48($sp)
    # Line 36
    addu	$gp,$t9,$at
    # Line 49
    blez	$s4,.L0d9b0c98
    # Line 48
    mfc1	$s5,$f0
    sd	$ra,64($sp)
    sd	$s3,56($sp)
    # Line 49
    move	$s3,$zero
    nop
    nop
    nop
.L0d9b0c60:
    # Line 52
    lw	$t9,30836($s6)
    move	$a3,$s1
    move	$a2,$s5
    move	$a1,$s0
    jalr	$t9
    lw	$a0,11764($s6)
    # Line 57
    lh	$v0,0($s2)
    # Line 51
    addiu	$s3,$s3,1
    # Line 56
    addiu	$s2,$s2,2
    # Line 55
    addiu	$s1,$s1,16
    # Line 51
    bne	$s4,$s3,.L0d9b0c60
    # Line 57
    addu	$s0,$v0,$s0
    ld	$s3,56($sp)
    ld	$ra,64($sp)
.L0d9b0c98:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    # Line 59
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSpanReadRGBA

# Function: __glSpanReadRGBA2
# Declared: Line 67 (Source lines: 69-82)
# Address: 0x0d9b0cc0 - 0x0d9b0d18 (Size: 88 bytes, Frame: 16)
.globl __glSpanReadRGBA2
.ent __glSpanReadRGBA2
__glSpanReadRGBA2:
    # Line 80
    lwc1	$f1,188($a1)
    # Line 69
    addiu	$sp,$sp,-16
    # Line 80
    lwc1	$f0,192($a1)
    # Line 69
    lui	$a6,0xa
    sd	$gp,8($sp)
    addiu	$a6,$a6,204
    move	$a4,$a1
    addu	$gp,$t9,$a6
    # Line 80
    lw	$t9,30840($a0)
    trunc.w.s	$f1,$f1
    lw	$a4,168($a4)
    trunc.w.s	$f0,$f0
    # Line 69
    sd	$ra,0($sp)
    # Line 80
    mfc1	$a1,$f1
    # Line 69
    move	$a3,$a2
    # Line 80
    lw	$a0,11764($a0)
    jalr	$t9
    mfc1	$a2,$f0
    ld	$ra,0($sp)
    # Line 82
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glSpanReadRGBA2

# Function: __glSpanReadCI
# Declared: Line 89 (Source lines: 91-113)
# Address: 0x0d9b0d20 - 0x0d9b0dec (Size: 204 bytes, Frame: 208)
.globl __glSpanReadCI
.ent __glSpanReadCI
__glSpanReadCI:
    # Line 91
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    # Line 101
    lw	$s2,312($a1)
    # Line 91
    sd	$s5,40($sp)
    sd	$s6,8($sp)
    # Line 104
    lwc1	$f1,188($a1)
    # Line 103
    lwc1	$f0,192($a1)
    # Line 91
    sd	$s4,16($sp)
    # Line 99
    lw	$s4,180($a1)
    # Line 104
    trunc.w.s	$f1,$f1
    # Line 91
    move	$s6,$a0
    sd	$s1,32($sp)
    lui	$at,0xa
    # Line 103
    trunc.w.s	$f0,$f0
    # Line 91
    move	$s1,$a2
    sd	$s0,24($sp)
    addiu	$at,$at,108
    # Line 104
    mfc1	$s0,$f1
    sd	$gp,48($sp)
    # Line 91
    addu	$gp,$t9,$at
    # Line 104
    blez	$s4,.L0d9b0dc8
    # Line 103
    mfc1	$s5,$f0
    sd	$ra,64($sp)
    sd	$s3,56($sp)
    # Line 104
    move	$s3,$zero
    nop
    nop
    nop
.L0d9b0d90:
    # Line 107
    lw	$t9,30836($s6)
    move	$a3,$s1
    move	$a2,$s5
    move	$a1,$s0
    jalr	$t9
    lw	$a0,11764($s6)
    # Line 111
    lh	$v0,0($s2)
    # Line 106
    addiu	$s3,$s3,1
    # Line 110
    addiu	$s2,$s2,2
    # Line 109
    addiu	$s1,$s1,4
    # Line 106
    bne	$s4,$s3,.L0d9b0d90
    # Line 111
    addu	$s0,$v0,$s0
    ld	$s3,56($sp)
    ld	$ra,64($sp)
.L0d9b0dc8:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    # Line 113
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSpanReadCI

# Function: __glSpanReadCI2
# Declared: Line 121 (Source lines: 123-141)
# Address: 0x0d9b0df0 - 0x0d9b0ea0 (Size: 176 bytes, Frame: 192)
.globl __glSpanReadCI2
.ent __glSpanReadCI2
__glSpanReadCI2:
    # Line 123
    addiu	$sp,$sp,-64
    sd	$s5,32($sp)
    sd	$s3,0($sp)
    # Line 133
    lwc1	$f1,188($a1)
    # Line 132
    lwc1	$f0,192($a1)
    # Line 123
    sd	$s4,8($sp)
    # Line 129
    lw	$s4,168($a1)
    # Line 133
    trunc.w.s	$f1,$f1
    # Line 123
    move	$s3,$a0
    sd	$s1,24($sp)
    lui	$at,0xa
    # Line 132
    trunc.w.s	$f0,$f0
    # Line 123
    move	$s1,$a2
    sd	$s0,16($sp)
    addiu	$at,$at,-100
    # Line 133
    mfc1	$s0,$f1
    sd	$gp,40($sp)
    # Line 123
    addu	$gp,$t9,$at
    # Line 133
    blez	$s4,.L0d9b0e80
    # Line 132
    mfc1	$s5,$f0
    sd	$ra,56($sp)
    sd	$s2,48($sp)
    # Line 133
    move	$s2,$zero
    nop
.L0d9b0e50:
    # Line 136
    lw	$t9,30836($s3)
    move	$a3,$s1
    move	$a2,$s5
    move	$a1,$s0
    jalr	$t9
    lw	$a0,11764($s3)
    # Line 135
    addiu	$s2,$s2,1
    # Line 139
    addiu	$s0,$s0,1
    # Line 135
    bne	$s4,$s2,.L0d9b0e50
    # Line 138
    addiu	$s1,$s1,4
    ld	$s2,48($sp)
    ld	$ra,56($sp)
.L0d9b0e80:
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s5,32($sp)
    # Line 141
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glSpanReadCI2

# Function: __glSpanReadDepth
# Declared: Line 148 (Source lines: 150-174)
# Address: 0x0d9b0ea0 - 0x0d9b102c (Size: 396 bytes, Frame: 224)
.globl __glSpanReadDepth
.ent __glSpanReadDepth
__glSpanReadDepth:
    # Line 150
    addiu	$sp,$sp,-96
    sd	$s2,8($sp)
    sd	$s5,48($sp)
    # Line 165
    lw	$v0,31304($a0)
    # Line 150
    sd	$s1,40($sp)
    sd	$s3,16($sp)
    # Line 165
    dsll32	$v0,$v0,0x0
    # Line 164
    lwc1	$f25,188($a1)
    # Line 165
    dsrl32	$v0,$v0,0x0
    # Line 150
    sdc1	$f20,0($sp)
    # Line 165
    dmtc1	$v0,$f21
    # Line 163
    lwc1	$f23,192($a1)
    # Line 165
    lwc1	$f20,3544($a0)
    # Line 164
    trunc.w.s	$f25,$f25
    # Line 150
    sd	$s7,24($sp)
    # Line 165
    cvt.s.l	$f21,$f21
    # Line 150
    lui	$at,0xa
    # Line 159
    lw	$s7,180($a1)
    # Line 163
    trunc.w.s	$f23,$f23
    # Line 150
    move	$s3,$a0
    sd	$s0,32($sp)
    addiu	$at,$at,-276
    # Line 164
    mfc1	$s0,$f25
    # Line 150
    move	$s1,$a2
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 163
    mfc1	$s5,$f23
    # Line 161
    lw	$s2,312($a1)
    andi	$v1,$s7,0x1
    # Line 165
    blez	$s7,.L0d9b1004
    div.s	$f20,$f20,$f21
    sd	$ra,80($sp)
    sd	$s4,72($sp)
    move	$s4,$zero
    sd	$s6,64($sp)
    beqz	$v1,.L0d9b0f74
    addiu	$s6,$a0,31228
    # Line 168
    lw	$t9,31356($a0)
    move	$a2,$s5
    move	$a1,$s0
    move	$a0,$s6
    jalr	$t9
    addiu	$s1,$s1,4
    dsll32	$a1,$v0,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f27
    cvt.s.l	$f27,$f27
    mul.s	$f27,$f27,$f20
    swc1	$f27,-4($s1)
    # Line 172
    lh	$a0,0($s2)
    # Line 167
    addiu	$s4,$s4,1
    # Line 171
    addiu	$s2,$s2,2
    # Line 172
    addu	$s0,$a0,$s0
.L0d9b0f74:
    sra	$a2,$s7,0x1
    beqz	$a2,.L0d9b0ff8
    nop
.L0d9b0f80:
    # Line 168
    lw	$t9,31356($s3)
    move	$a0,$s6
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s5
    dsll32	$a4,$v0,0x0
    dsrl32	$a4,$a4,0x0
    dmtc1	$a4,$f29
    cvt.s.l	$f29,$f29
    mul.s	$f29,$f29,$f20
    swc1	$f29,0($s1)
    lw	$t9,31356($s3)
    # Line 172
    lh	$a3,0($s2)
    # Line 168
    move	$a2,$s5
    move	$a0,$s6
    addiu	$s1,$s1,8
    # Line 172
    addu	$s0,$a3,$s0
    # Line 168
    jalr	$t9
    move	$a1,$s0
    dsll32	$a6,$v0,0x0
    dsrl32	$a6,$a6,0x0
    dmtc1	$a6,$f31
    cvt.s.l	$f31,$f31
    mul.s	$f31,$f31,$f20
    swc1	$f31,-4($s1)
    # Line 167
    addiu	$s4,$s4,2
    # Line 172
    lh	$a5,2($s2)
    # Line 171
    addiu	$s2,$s2,4
    # Line 167
    bne	$s7,$s4,.L0d9b0f80
    # Line 172
    addu	$s0,$a5,$s0
.L0d9b0ff8:
    ld	$s6,64($sp)
    ld	$s4,72($sp)
    ld	$ra,80($sp)
.L0d9b1004:
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    ld	$s7,24($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$s5,48($sp)
    ldc1	$f20,0($sp)
    # Line 174
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glSpanReadDepth

# Function: __glSpanReadDepth2
# Declared: Line 182 (Source lines: 184-204)
# Address: 0x0d9b1030 - 0x0d9b119c (Size: 364 bytes, Frame: 208)
.globl __glSpanReadDepth2
.ent __glSpanReadDepth2
__glSpanReadDepth2:
    # Line 184
    addiu	$sp,$sp,-80
    # Line 196
    lw	$v0,31304($a0)
    # Line 184
    sd	$s1,32($sp)
    sd	$s2,8($sp)
    # Line 196
    dsll32	$v0,$v0,0x0
    # Line 195
    lwc1	$f25,188($a1)
    # Line 196
    dsrl32	$v0,$v0,0x0
    # Line 184
    sdc1	$f20,0($sp)
    # Line 196
    dmtc1	$v0,$f21
    # Line 194
    lwc1	$f23,192($a1)
    # Line 196
    lwc1	$f20,3544($a0)
    # Line 195
    trunc.w.s	$f25,$f25
    # Line 184
    sd	$s6,16($sp)
    # Line 196
    cvt.s.l	$f21,$f21
    # Line 191
    lw	$s6,168($a1)
    # Line 194
    trunc.w.s	$f23,$f23
    # Line 184
    move	$s2,$a0
    sd	$s0,40($sp)
    lui	$at,0xa
    # Line 195
    mfc1	$s0,$f25
    # Line 184
    move	$s1,$a2
    sd	$s4,24($sp)
    addiu	$at,$at,-676
    # Line 194
    mfc1	$s4,$f23
    sd	$gp,48($sp)
    # Line 184
    addu	$gp,$t9,$at
    # Line 196
    blez	$s6,.L0d9b1178
    div.s	$f20,$f20,$f21
    andi	$v1,$s6,0x1
    sd	$ra,64($sp)
    sd	$s3,56($sp)
    move	$s3,$zero
    sd	$s5,72($sp)
    beqz	$v1,.L0d9b10f4
    addiu	$s5,$a0,31228
    # Line 199
    lw	$t9,31356($a0)
    move	$a2,$s4
    move	$a1,$s0
    move	$a0,$s5
    jalr	$t9
    addiu	$s1,$s1,4
    dsll32	$a0,$v0,0x0
    dsrl32	$a0,$a0,0x0
    dmtc1	$a0,$f27
    cvt.s.l	$f27,$f27
    mul.s	$f27,$f27,$f20
    # Line 198
    addiu	$s3,$s3,1
    # Line 202
    addiu	$s0,$s0,1
    # Line 199
    swc1	$f27,-4($s1)
.L0d9b10f4:
    sra	$a1,$s6,0x1
    beqz	$a1,.L0d9b116c
    nop
.L0d9b1100:
    lw	$t9,31356($s2)
    move	$a0,$s5
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s4
    dsll32	$a2,$v0,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f29
    cvt.s.l	$f29,$f29
    mul.s	$f29,$f29,$f20
    swc1	$f29,0($s1)
    lw	$t9,31356($s2)
    move	$a0,$s5
    # Line 202
    addiu	$s0,$s0,1
    # Line 199
    addiu	$s1,$s1,8
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s4
    dsll32	$a3,$v0,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f31
    cvt.s.l	$f31,$f31
    # Line 198
    addiu	$s3,$s3,2
    # Line 199
    mul.s	$f31,$f31,$f20
    # Line 202
    addiu	$s0,$s0,1
    # Line 198
    bne	$s6,$s3,.L0d9b1100
    # Line 199
    swc1	$f31,-4($s1)
.L0d9b116c:
    ld	$s3,56($sp)
    ld	$ra,64($sp)
    ld	$s5,72($sp)
.L0d9b1178:
    ld	$s2,8($sp)
    ld	$s6,16($sp)
    ld	$s4,24($sp)
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    ldc1	$f20,0($sp)
    # Line 204
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSpanReadDepth2

# Function: __glSpanReadDepthUint1
# Declared: Line 211 (Source lines: 213-237)
# Address: 0x0d9b11a0 - 0x0d9b1298 (Size: 248 bytes, Frame: 224)
.globl __glSpanReadDepthUint1
.ent __glSpanReadDepthUint1
__glSpanReadDepthUint1:
    # Line 213
    addiu	$sp,$sp,-96
    sd	$s2,0($sp)
    sd	$s0,24($sp)
    sd	$s1,32($sp)
    sd	$s4,16($sp)
    # Line 220
    lw	$t8,31316($a0)
    # Line 213
    sd	$s5,40($sp)
    # Line 223
    lw	$s5,180($a1)
    # Line 228
    lwc1	$f1,188($a1)
    # Line 227
    lwc1	$f0,192($a1)
    # Line 213
    move	$s4,$a0
    sd	$s7,48($sp)
    move	$s1,$a2
    lui	$at,0xa
    # Line 220
    lw	$s7,31240($a0)
    # Line 228
    trunc.w.s	$f1,$f1
    # Line 213
    sd	$s6,8($sp)
    # Line 220
    li	$s6,32
    # Line 213
    addiu	$at,$at,-1044
    # Line 227
    trunc.w.s	$f0,$f0
    sd	$gp,56($sp)
    # Line 213
    addu	$gp,$t9,$at
    # Line 220
    addu	$s7,$s7,$t8
    # Line 228
    mfc1	$s0,$f1
    # Line 225
    lw	$s2,312($a1)
    # Line 220
    subu	$s6,$s6,$s7
    # Line 228
    blez	$s5,.L0d9b1270
    # Line 227
    mfc1	$s7,$f0
    sd	$ra,72($sp)
    sd	$s8,80($sp)
    # Line 228
    addiu	$s8,$a0,31228
    sd	$s3,64($sp)
    move	$s3,$zero
    nop
    nop
    nop
.L0d9b1230:
    # Line 231
    lw	$t9,31356($s4)
    move	$a2,$s7
    move	$a1,$s0
    move	$a0,$s8
    jalr	$t9
    addiu	$s1,$s1,4
    sllv	$v1,$v0,$s6
    sw	$v1,-4($s1)
    # Line 235
    lh	$v0,0($s2)
    # Line 230
    addiu	$s3,$s3,1
    # Line 234
    addiu	$s2,$s2,2
    # Line 230
    bne	$s5,$s3,.L0d9b1230
    # Line 235
    addu	$s0,$v0,$s0
    ld	$s3,64($sp)
    ld	$ra,72($sp)
    ld	$s8,80($sp)
.L0d9b1270:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    ld	$s7,48($sp)
    # Line 237
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glSpanReadDepthUint1

# Function: __glSpanReadDepthUint
# Declared: Line 245 (Source lines: 247-267)
# Address: 0x0d9b12a0 - 0x0d9b137c (Size: 220 bytes, Frame: 208)
.globl __glSpanReadDepthUint
.ent __glSpanReadDepthUint
__glSpanReadDepthUint:
    # Line 247
    addiu	$sp,$sp,-80
    sd	$s0,24($sp)
    sd	$s1,32($sp)
    sd	$s3,0($sp)
    # Line 252
    lw	$at,31316($a0)
    lw	$t8,31240($a0)
    # Line 259
    lwc1	$f1,188($a1)
    # Line 258
    lwc1	$f0,192($a1)
    # Line 247
    move	$s3,$a0
    sd	$s4,16($sp)
    move	$s1,$a2
    lui	$v0,0xa
    # Line 255
    lw	$s4,168($a1)
    # Line 259
    trunc.w.s	$f1,$f1
    # Line 247
    sd	$s6,8($sp)
    # Line 252
    li	$s6,32
    # Line 247
    addiu	$v0,$v0,-1300
    # Line 258
    trunc.w.s	$f0,$f0
    sd	$gp,48($sp)
    # Line 247
    addu	$gp,$t9,$v0
    # Line 252
    addu	$t8,$t8,$at
    # Line 259
    mfc1	$s0,$f1
    # Line 247
    sd	$s5,40($sp)
    # Line 252
    subu	$s6,$s6,$t8
    # Line 259
    blez	$s4,.L0d9b1358
    # Line 258
    mfc1	$s5,$f0
    sd	$ra,64($sp)
    sd	$s7,72($sp)
    # Line 259
    addiu	$s7,$a0,31228
    sd	$s2,56($sp)
    move	$s2,$zero
    nop
.L0d9b1320:
    # Line 262
    lw	$t9,31356($s3)
    move	$a2,$s5
    move	$a1,$s0
    move	$a0,$s7
    jalr	$t9
    addiu	$s1,$s1,4
    # Line 261
    addiu	$s2,$s2,1
    # Line 262
    sllv	$v1,$v0,$s6
    # Line 265
    addiu	$s0,$s0,1
    # Line 261
    bne	$s4,$s2,.L0d9b1320
    # Line 262
    sw	$v1,-4($s1)
    ld	$s2,56($sp)
    ld	$ra,64($sp)
    ld	$s7,72($sp)
.L0d9b1358:
    ld	$s3,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    # Line 267
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSpanReadDepthUint

# Function: __glSpanReadStencil
# Declared: Line 274 (Source lines: 276-297)
# Address: 0x0d9b1380 - 0x0d9b1458 (Size: 216 bytes, Frame: 208)
.globl __glSpanReadStencil
.ent __glSpanReadStencil
__glSpanReadStencil:
    # Line 276
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    # Line 286
    lw	$s2,312($a1)
    # Line 276
    sd	$s6,8($sp)
    sd	$s4,16($sp)
    # Line 289
    lwc1	$f1,188($a1)
    # Line 288
    lwc1	$f0,192($a1)
    # Line 276
    sd	$s5,40($sp)
    # Line 284
    lw	$s5,180($a1)
    # Line 289
    trunc.w.s	$f1,$f1
    # Line 276
    move	$s4,$a0
    sd	$s1,32($sp)
    lui	$at,0xa
    # Line 288
    trunc.w.s	$f0,$f0
    # Line 276
    move	$s1,$a2
    sd	$s0,24($sp)
    addiu	$at,$at,-1524
    # Line 289
    mfc1	$s0,$f1
    sd	$gp,48($sp)
    # Line 276
    addu	$gp,$t9,$at
    # Line 289
    blez	$s5,.L0d9b1434
    # Line 288
    mfc1	$s6,$f0
    sd	$ra,64($sp)
    sd	$s7,72($sp)
    # Line 289
    addiu	$s7,$a0,31108
    sd	$s3,56($sp)
    move	$s3,$zero
    nop
.L0d9b13f0:
    # Line 292
    lw	$t9,31204($s4)
    move	$a2,$s6
    move	$a1,$s0
    move	$a0,$s7
    jalr	$t9
    addiu	$s1,$s1,4
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,-4($s1)
    # Line 291
    addiu	$s3,$s3,1
    # Line 295
    lh	$v0,0($s2)
    # Line 294
    addiu	$s2,$s2,2
    # Line 291
    bne	$s5,$s3,.L0d9b13f0
    # Line 295
    addu	$s0,$v0,$s0
    ld	$s3,56($sp)
    ld	$ra,64($sp)
    ld	$s7,72($sp)
.L0d9b1434:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    # Line 297
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSpanReadStencil

# Function: __glSpanReadStencil2
# Declared: Line 305 (Source lines: 307-324)
# Address: 0x0d9b1460 - 0x0d9b152c (Size: 204 bytes, Frame: 208)
.globl __glSpanReadStencil2
.ent __glSpanReadStencil2
__glSpanReadStencil2:
    # Line 307
    addiu	$sp,$sp,-80
    sd	$s5,32($sp)
    sd	$s3,0($sp)
    # Line 317
    lwc1	$f1,188($a1)
    # Line 316
    lwc1	$f0,192($a1)
    # Line 307
    sd	$s4,8($sp)
    # Line 313
    lw	$s4,168($a1)
    # Line 317
    trunc.w.s	$f1,$f1
    # Line 307
    move	$s3,$a0
    sd	$s1,24($sp)
    lui	$at,0xa
    # Line 316
    trunc.w.s	$f0,$f0
    # Line 307
    move	$s1,$a2
    sd	$s0,16($sp)
    addiu	$at,$at,-1748
    # Line 317
    mfc1	$s0,$f1
    sd	$gp,40($sp)
    # Line 307
    addu	$gp,$t9,$at
    # Line 317
    blez	$s4,.L0d9b150c
    # Line 316
    mfc1	$s5,$f0
    sd	$ra,64($sp)
    sd	$s6,56($sp)
    # Line 317
    addiu	$s6,$a0,31108
    sd	$s2,48($sp)
    move	$s2,$zero
    nop
    nop
    nop
.L0d9b14d0:
    # Line 320
    lw	$t9,31204($s3)
    move	$a2,$s5
    move	$a1,$s0
    move	$a0,$s6
    jalr	$t9
    addiu	$s1,$s1,4
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    # Line 319
    addiu	$s2,$s2,1
    # Line 322
    addiu	$s0,$s0,1
    # Line 319
    bne	$s4,$s2,.L0d9b14d0
    # Line 320
    swc1	$f2,-4($s1)
    ld	$s2,48($sp)
    ld	$s6,56($sp)
    ld	$ra,64($sp)
.L0d9b150c:
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s5,32($sp)
    # Line 324
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glSpanReadStencil2

