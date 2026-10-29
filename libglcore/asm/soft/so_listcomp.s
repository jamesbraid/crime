# Source: ../soft/so_listcomp.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_listcomp.c
# Total Functions: 54

.text

# Function: __gllc_Bitmap
# Declared: Line 47 (Source lines: 51-84)
# Address: 0x0d9eb1e0 - 0x0d9eb324 (Size: 324 bytes, Frame: 224)
.globl __gllc_Bitmap
.ent __gllc_Bitmap
__gllc_Bitmap:
    # Line 51
    addiu	$sp,$sp,-96
    sd	$s1,64($sp)
    # Line 56
    lw	$s1,4112($zero)
    # Line 51
    move	$v0,$a6
    mov.s	$f4,$f17
    sd	$s0,56($sp)
    mov.s	$f5,$f16
    move	$s0,$a1
    sd	$s2,72($sp)
    lui	$at,0x6
    mov.s	$f6,$f15
    move	$s2,$a0
    sd	$ra,88($sp)
    addiu	$at,$at,23468
    mov.s	$f7,$f14
    sd	$gp,80($sp)
    # Line 58
    bltz	$a0,.L0d9eb310
    # Line 51
    addu	$gp,$t9,$at
    sdc1	$f14,24($sp)
    sdc1	$f15,16($sp)
    sdc1	$f16,8($sp)
    sdc1	$f17,0($sp)
    # Line 58
    bltz	$a1,.L0d9eb310
    sd	$a6,40($sp)
    # Line 66
    addiu	$a2,$a0,7
    sra	$a2,$a2,0x3
    mult	$a1,$a2
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    mflo	$a1
    li	$a2,-4
    addiu	$a1,$a1,3
    move	$a0,$s1
    and	$a1,$a1,$a2
    sd	$a1,32($sp)
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,32
    bnez	$v0,.L0d9eb294
    sd	$v0,48($sp)
    ld	$s0,56($sp)
.L0d9eb27c:
    ld	$ra,88($sp)
    ld	$s1,64($sp)
    ld	$s2,72($sp)
    # Line 84
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9eb294:
    # Line 80
    ld	$a5,40($sp)
    # Line 77
    ld	$t1,32($sp)
    # Line 73
    ldc1	$f0,24($sp)
    # Line 74
    ldc1	$f1,16($sp)
    # Line 75
    ldc1	$f2,8($sp)
    # Line 77
    ld	$t0,48($sp)
    # Line 76
    ldc1	$f3,0($sp)
    # Line 77
    sw	$t1,40($t0)
    # Line 76
    swc1	$f3,36($t0)
    # Line 75
    swc1	$f2,32($t0)
    # Line 74
    swc1	$f1,28($t0)
    # Line 73
    swc1	$f0,24($t0)
    # Line 80
    li	$a4,6656
    li	$a3,6400
    # lw $t9, -25844($gp) # &__glFillImage
    move	$a2,$s0
    move	$a1,$s2
    # Line 72
    sw	$s0,20($t0)
    # Line 80
    move	$a0,$s1
    # Line 68
    li	$a7,4
    # Line 71
    sw	$s2,16($t0)
    # Line 80
    addiu	$a6,$t0,48
    bal __glFillImage
    # Line 68
    sh	$a7,12($t0)
    # Line 83
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,48($sp)
    move	$a0,$s1
    jal	__glDlistAppendOp
    la	$a2,__glle_Bitmap
    b	.L0d9eb27c
    ld	$s0,56($sp)
.L0d9eb310:
    # Line 59
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s1
    b	.L0d9eb27c
    ld	$s0,56($sp)
.end __gllc_Bitmap

# Function: __glle_Bitmap
# Declared: Line 86 (Source lines: 87-107)
# Address: 0x0d9eb330 - 0x0d9eb3e4 (Size: 180 bytes, Frame: 32)
.globl __glle_Bitmap
.ent __glle_Bitmap
__glle_Bitmap:
    # Line 89
    lw	$a4,4112($zero)
    # Line 87
    addiu	$sp,$sp,-32
    # Line 94
    lw	$a1,4120($zero)
    li	$v0,2
    # Line 87
    sd	$s0,16($sp)
    lui	$at,0x6
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$at,$at,23132
    sd	$gp,8($sp)
    # Line 94
    beqz	$a1,.L0d9eb3b0
    # Line 87
    addu	$gp,$t9,$at
    # Line 94
    beq	$a1,$v0,.L0d9eb394
    sd	$a4,0($sp)
    # Line 100
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
    # Line 101
    lw	$v0,24($s0)
    # Line 107
    ld	$gp,8($sp)
    # Line 101
    addu	$v0,$v0,$s0
    # Line 107
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 101
    addiu	$v0,$v0,32
.L0d9eb394:
    # Line 97
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a4,0($sp)
    # Line 98
    sw	$zero,4120($zero)
.L0d9eb3b0:
    # Line 105
    lw	$t9,12512($a4)
    move	$a0,$a4
    move	$a1,$s0
    jalr	$t9
    addiu	$a2,$s0,32
    ld	$ra,24($sp)
    # Line 107
    lw	$v0,24($s0)
    ld	$gp,8($sp)
    addu	$v0,$v0,$s0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,32
.end __glle_Bitmap

# Function: __gllei_PolygonStipple
# Declared: Line 110 (Source lines: 111-123)
# Address: 0x0d9eb3f0 - 0x0d9eb460 (Size: 112 bytes, Frame: 32)
.globl __gllei_PolygonStipple
.ent __gllei_PolygonStipple
__gllei_PolygonStipple:
    # Line 111
    addiu	$sp,$sp,-32
    lw	$at,4120($zero)
    sd	$s0,0($sp)
    li	$v0,1
    lui	$v1,0x6
    move	$s0,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,22940
    sd	$gp,8($sp)
    beq	$at,$v0,.L0d9eb44c
    addu	$gp,$t9,$v1
    # Line 120
    # lw $t9, -22900($gp) # &memcpy
    li	$a2,128
    jal	memcpy
    addiu	$a0,$a0,512
    # Line 122
    lw	$t9,12656($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
.L0d9eb43c:
    ld	$s0,0($sp)
    # Line 123
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9eb44c:
    # Line 113
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9eb43c
    ld	$ra,16($sp)
.end __gllei_PolygonStipple

# Function: __gllc_PolygonStipple
# Declared: Line 125 (Source lines: 126-140)
# Address: 0x0d9eb460 - 0x0d9eb514 (Size: 180 bytes, Frame: 48)
.globl __gllc_PolygonStipple
.ent __gllc_PolygonStipple
__gllc_PolygonStipple:
    # Line 126
    addiu	$sp,$sp,-48
    lui	$at,0x6
    sd	$s0,16($sp)
    addiu	$at,$at,22828
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 131
    # lw $t9, -25856($gp) # &__glImageSize
    li	$a3,6656
    # Line 126
    sd	$ra,24($sp)
    # Line 131
    li	$a2,6400
    li	$a1,32
    # Line 126
    sd	$a0,0($sp)
    # Line 131
    li	$a0,32
    jal	__glImageSize
    # Line 128
    lw	$s0,4112($zero)
    # Line 131
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    move	$a1,$v0
    jal	__glDlistAllocOp2
    move	$a0,$s0
    bnez	$v0,.L0d9eb4c8
    sd	$v0,8($sp)
    ld	$ra,24($sp)
.L0d9eb4b8:
    ld	$s0,16($sp)
    # Line 140
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9eb4c8:
    # Line 137
    li	$a4,6656
    li	$a3,6400
    # lw $t9, -25844($gp) # &__glFillImage
    li	$a2,32
    li	$a1,32
    ld	$t0,8($sp)
    ld	$a5,0($sp)
    move	$a0,$s0
    # Line 134
    li	$a7,101
    # Line 137
    addiu	$a6,$t0,16
    bal __glFillImage
    # Line 134
    sh	$a7,12($t0)
    # Line 139
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,8($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_PolygonStipple
    b	.L0d9eb4b8
    ld	$ra,24($sp)
.end __gllc_PolygonStipple

# Function: __glle_PolygonStipple
# Declared: Line 142 (Source lines: 143-147)
# Address: 0x0d9eb520 - 0x0d9eb580 (Size: 96 bytes, Frame: 32)
.globl __glle_PolygonStipple
.ent __glle_PolygonStipple
__glle_PolygonStipple:
    # Line 143
    lui	$at,0x6
    addiu	$sp,$sp,-32
    addiu	$at,$at,22636
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 146
    # lw $t9, -25636($gp) # &__gllei_PolygonStipple
    # Line 143
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 146
    lw	$a0,4112($zero)
    # Line 143
    sd	$ra,0($sp)
    # Line 146
    bal __gllei_PolygonStipple
    move	$a1,$s8
    # Line 147
    # lw $t9, -25856($gp) # &__glImageSize
    li	$a3,6656
    li	$a2,6400
    li	$a1,32
    jal	__glImageSize
    li	$a0,32
    ld	$ra,0($sp)
    ld	$gp,16($sp)
    addu	$v0,$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_PolygonStipple

# Function: __gllc_Map1f
# Declared: Line 158 (Source lines: 162-199)
# Address: 0x0d9eb580 - 0x0d9eb6d8 (Size: 344 bytes, Frame: 224)
.globl __gllc_Map1f
.ent __gllc_Map1f
__gllc_Map1f:
    # Line 162
    addiu	$sp,$sp,-96
    sd	$a5,32($sp)
    sdc1	$f14,8($sp)
    sd	$a0,24($sp)
    sd	$s1,64($sp)
    # Line 168
    lw	$s1,4112($zero)
    # Line 162
    sdc1	$f13,0($sp)
    lui	$at,0x6
    sd	$ra,48($sp)
    addiu	$at,$at,22540
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 170
    # lw $t9, -26288($gp) # &__glEvalComputeK
    # Line 162
    sd	$s0,56($sp)
    move	$s0,$a4
    sd	$s3,40($sp)
    move	$s3,$a3
    # Line 170
    jal	__glEvalComputeK
    sd	$s2,80($sp)
    # Line 176
    ldc1	$f1,8($sp)
    # Line 170
    bltz	$v0,.L0d9eb6c4
    move	$s2,$v0
    # Line 176
    lw	$v0,3768($s1)
    slt	$v0,$v0,$s0
    bnez	$v0,.L0d9eb698
    slt	$v1,$s3,$s2
    bnez	$v1,.L0d9eb69c
    # Line 178
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 176
    blez	$s0,.L0d9eb698
    ldc1	$f0,0($sp)
    c.eq.s	$f0,$f1
    bc1t	.L0d9eb69c
    # Line 178
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 182
    # lw $t9, -26188($gp) # &__glMap1_size
    move	$a0,$s2
    jal	__glMap1_size
    move	$a1,$s0
    # Line 186
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    move	$a0,$s1
    sll	$a1,$v0,0x2
    li	$a2,-4
    addiu	$a1,$a1,19
    jal	__glDlistAllocOp2
    and	$a1,$a1,$a2
    beqz	$v0,.L0d9eb6a4
    sd	$v0,16($sp)
    # Line 196
    ld	$a3,32($sp)
    # Line 191
    ld	$a7,24($sp)
    # Line 192
    ldc1	$f2,0($sp)
    # Line 194
    ld	$a6,16($sp)
    # Line 193
    ldc1	$f3,8($sp)
    # Line 194
    sw	$s0,28($a6)
    # Line 193
    swc1	$f3,24($a6)
    # Line 196
    # lw $t9, -26196($gp) # &__glFillMap1f
    move	$a2,$s3
    move	$a1,$s0
    # Line 192
    swc1	$f2,20($a6)
    # Line 196
    move	$a0,$s2
    # Line 188
    li	$a5,142
    # Line 191
    sw	$a7,16($a6)
    # Line 196
    addiu	$a4,$a6,32
    jal	__glFillMap1f
    # Line 188
    sh	$a5,12($a6)
    # Line 198
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s1
    jal	__glDlistAppendOp
    la	$a2,__glle_Map1
    b	.L0d9eb6a8
    ld	$s3,40($sp)
.L0d9eb698:
    # Line 178
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9eb69c:
    jal	__gllc_InvalidValue
    move	$a0,$s1
.L0d9eb6a4:
    ld	$s3,40($sp)
.L0d9eb6a8:
    ld	$s0,56($sp)
    ld	$ra,48($sp)
    ld	$s2,80($sp)
    ld	$s1,64($sp)
    # Line 199
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9eb6c4:
    # Line 172
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s1
    b	.L0d9eb6a8
    ld	$s3,40($sp)
.end __gllc_Map1f

# Function: __glle_Map1
# Declared: Line 201 (Source lines: 202-222)
# Address: 0x0d9eb6e0 - 0x0d9eb77c (Size: 156 bytes, Frame: 48)
.globl __glle_Map1
.ent __glle_Map1
__glle_Map1:
    # Line 202
    addiu	$sp,$sp,-48
    sd	$s0,32($sp)
    lui	$at,0x6
    move	$s0,$a0
    # Line 209
    lw	$a0,0($a0)
    # Line 202
    addiu	$at,$at,22188
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 209
    # lw $t9, -26288($gp) # &__glEvalComputeK
    # Line 202
    sd	$s8,8($sp)
    sd	$ra,0($sp)
    # Line 209
    jal	__glEvalComputeK
    # Line 203
    lw	$s8,4112($zero)
    # Line 209
    sd	$v0,24($sp)
    # Line 215
    lw	$t9,6072($s8)
    lw	$a4,12($s0)
    lw	$t9,332($t9)
    lwc1	$f14,8($s0)
    # Line 209
    move	$a3,$v0
    # Line 215
    lwc1	$f13,4($s0)
    addiu	$a5,$s0,16
    jalr	$t9
    lw	$a0,0($s0)
    # Line 220
    # lw $t9, -26188($gp) # &__glMap1_size
    ld	$s8,8($sp)
    ld	$a0,24($sp)
    jal	__glMap1_size
    lw	$a1,12($s0)
    # Line 222
    sll	$v0,$v0,0x2
    ld	$ra,0($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,16($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,32($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,16
.end __glle_Map1

# Function: __gllc_Map1d
# Declared: Line 225 (Source lines: 229-266)
# Address: 0x0d9eb780 - 0x0d9eb8e4 (Size: 356 bytes, Frame: 224)
.globl __gllc_Map1d
.ent __gllc_Map1d
__gllc_Map1d:
    # Line 229
    addiu	$sp,$sp,-96
    sd	$a5,32($sp)
    sdc1	$f14,8($sp)
    sd	$a0,24($sp)
    sd	$s1,64($sp)
    # Line 235
    lw	$s1,4112($zero)
    # Line 229
    sdc1	$f13,0($sp)
    lui	$at,0x6
    sd	$ra,48($sp)
    addiu	$at,$at,22028
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 237
    # lw $t9, -26288($gp) # &__glEvalComputeK
    # Line 229
    sd	$s0,56($sp)
    move	$s0,$a4
    sd	$s3,40($sp)
    move	$s3,$a3
    # Line 237
    jal	__glEvalComputeK
    sd	$s2,80($sp)
    # Line 243
    ldc1	$f1,8($sp)
    # Line 237
    bltz	$v0,.L0d9eb8d0
    move	$s2,$v0
    # Line 243
    lw	$v0,3768($s1)
    slt	$v0,$v0,$s0
    bnez	$v0,.L0d9eb8a4
    slt	$v1,$s3,$s2
    bnez	$v1,.L0d9eb8a8
    # Line 245
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 243
    blez	$s0,.L0d9eb8a8
    # Line 245
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 243
    ldc1	$f0,0($sp)
    c.eq.d	$f0,$f1
    bc1t	.L0d9eb8a8
    # Line 245
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 249
    # lw $t9, -26188($gp) # &__glMap1_size
    move	$a0,$s2
    jal	__glMap1_size
    move	$a1,$s0
    # Line 253
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    move	$a0,$s1
    sll	$a1,$v0,0x2
    li	$a2,-4
    addiu	$a1,$a1,19
    jal	__glDlistAllocOp2
    and	$a1,$a1,$a2
    beqz	$v0,.L0d9eb8b0
    sd	$v0,16($sp)
    # Line 263
    ld	$a3,32($sp)
    # Line 261
    ld	$a5,16($sp)
    # Line 258
    ld	$a7,24($sp)
    # Line 261
    sw	$s0,28($a5)
    # Line 258
    sw	$a7,16($a5)
    # Line 260
    ldc1	$f3,8($sp)
    # Line 259
    ldc1	$f2,0($sp)
    # Line 263
    # lw $t9, -26192($gp) # &__glFillMap1d
    move	$a2,$s3
    # Line 255
    li	$a6,141
    sh	$a6,12($a5)
    # Line 260
    cvt.s.d	$f3,$f3
    # Line 263
    move	$a1,$s0
    move	$a0,$s2
    # Line 259
    cvt.s.d	$f2,$f2
    # Line 260
    swc1	$f3,24($a5)
    # Line 263
    addiu	$a4,$a5,32
    jal	__glFillMap1d
    # Line 259
    swc1	$f2,20($a5)
    # Line 265
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s1
    jal	__glDlistAppendOp
    la	$a2,__glle_Map1
    b	.L0d9eb8b4
    ld	$s3,40($sp)
.L0d9eb8a4:
    # Line 245
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9eb8a8:
    jal	__gllc_InvalidValue
    move	$a0,$s1
.L0d9eb8b0:
    ld	$s3,40($sp)
.L0d9eb8b4:
    ld	$s0,56($sp)
    ld	$ra,48($sp)
    ld	$s2,80($sp)
    ld	$s1,64($sp)
    # Line 266
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9eb8d0:
    # Line 239
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s1
    b	.L0d9eb8b4
    ld	$s3,40($sp)
.end __gllc_Map1d

# Function: __gllc_Map2f
# Declared: Line 280 (Source lines: 286-329)
# Address: 0x0d9eb8f0 - 0x0d9ebaa8 (Size: 440 bytes, Frame: 176)
.globl __gllc_Map2f
.ent __gllc_Map2f
__gllc_Map2f:
    # Line 286
    addiu	$sp,$sp,-176
    sdc1	$f18,8($sp)
    sd	$a7,56($sp)
    sdc1	$f17,0($sp)
    sd	$a3,48($sp)
    sdc1	$f14,16($sp)
    sd	$a0,40($sp)
    sd	$s1,88($sp)
    # Line 292
    lw	$s1,4112($zero)
    # Line 286
    lui	$at,0x6
    sdc1	$f13,24($sp)
    addiu	$at,$at,21660
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 294
    # lw $t9, -26288($gp) # &__glEvalComputeK
    # Line 286
    sd	$ra,80($sp)
    sd	$s2,64($sp)
    move	$s2,$a4
    # Line 294
    jal	__glEvalComputeK
    sd	$s0,96($sp)
    # Line 300
    ldc1	$f3,8($sp)
    # Line 294
    bltz	$v0,.L0d9eba94
    move	$s0,$v0
    # Line 300
    lw	$v0,180($sp)
    lw	$a0,3768($s1)
    slt	$v1,$a0,$v0
    bnez	$v1,.L0d9eba6c
    slt	$a3,$a0,$s2
    ld	$a1,56($sp)
    slt	$a1,$a1,$s0
    bnez	$a1,.L0d9eba70
    # Line 304
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 300
    blez	$v0,.L0d9eba70
    # Line 304
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 300
    ldc1	$f0,24($sp)
    ldc1	$f1,16($sp)
    c.eq.s	$f0,$f1
    bc1t	.L0d9eba70
    # Line 304
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 300
    ld	$a2,48($sp)
    slt	$a2,$a2,$s0
    bnez	$a2,.L0d9eba70
    # Line 304
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 300
    bnez	$a3,.L0d9eba70
    # Line 304
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 300
    blez	$s2,.L0d9eba70
    # Line 304
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 300
    ldc1	$f2,0($sp)
    c.eq.s $f2,$f3
    bc1t .L0d9eba6c
    # Line 308
    nop	# was lw $t9, -26176($gp) # &__glMap2_size
    move	$a0,$s0
    move	$a1,$s2
    jal	__glMap2_size
    move	$a2,$v0
    # Line 312
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    move	$a0,$s1
    sll	$a1,$v0,0x2
    li	$a2,-4
    addiu	$a1,$a1,31
    jal	__glDlistAllocOp2
    and	$a1,$a1,$a2
    beqz	$v0,.L0d9eba78
    sd	$v0,32($sp)
    # Line 326
    lw	$a5,188($sp)
    ld	$a4,56($sp)
    ld	$a3,48($sp)
    # Line 317
    ld	$t1,40($sp)
    # Line 323
    lw	$a2,180($sp)
    # Line 318
    ldc1	$f4,24($sp)
    # Line 319
    ldc1	$f5,16($sp)
    # Line 321
    ldc1	$f6,0($sp)
    # Line 323
    ld	$t0,32($sp)
    # Line 322
    ldc1	$f7,8($sp)
    # Line 323
    sw	$a2,40($t0)
    # Line 322
    swc1	$f7,36($t0)
    # Line 321
    swc1	$f6,32($t0)
    # Line 320
    sw	$s2,28($t0)
    # Line 319
    swc1	$f5,24($t0)
    # Line 326
    # lw $t9, -26184($gp) # &__glFillMap2f
    move	$a1,$s2
    # Line 318
    swc1	$f4,20($t0)
    # Line 326
    move	$a0,$s0
    # Line 314
    li	$a7,144
    # Line 317
    sw	$t1,16($t0)
    # Line 326
    addiu	$a6,$t0,44
    jal	__glFillMap2f
    # Line 314
    sh	$a7,12($t0)
    # Line 328
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,32($sp)
    move	$a0,$s1
    jal	__glDlistAppendOp
    la	$a2,__glle_Map2
    b	.L0d9eba7c
    ld	$s0,96($sp)
.L0d9eba6c:
    # Line 304
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9eba70:
    jal	__gllc_InvalidValue
    move	$a0,$s1
.L0d9eba78:
    ld	$s0,96($sp)
.L0d9eba7c:
    # Line 329
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    ld	$s1,88($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d9eba94:
    # Line 296
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s1
    b	.L0d9eba7c
    ld	$s0,96($sp)
.end __gllc_Map2f

# Function: __glle_Map2
# Declared: Line 331 (Source lines: 332-355)
# Address: 0x0d9ebab0 - 0x0d9ebb6c (Size: 188 bytes, Frame: 192)
.globl __glle_Map2
.ent __glle_Map2
__glle_Map2:
    # Line 332
    addiu	$sp,$sp,-64
    sd	$s0,48($sp)
    lui	$at,0x6
    move	$s0,$a0
    # Line 339
    lw	$a0,0($a0)
    # Line 332
    addiu	$at,$at,21212
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 339
    # lw $t9, -26288($gp) # &__glEvalComputeK
    # Line 332
    sd	$s8,24($sp)
    sd	$ra,16($sp)
    # Line 339
    jal	__glEvalComputeK
    # Line 333
    lw	$s8,4112($zero)
    # Line 345
    lwc1	$f18,20($s0)
    lwc1	$f17,16($s0)
    lw	$a4,12($s0)
    lwc1	$f14,8($s0)
    lwc1	$f13,4($s0)
    lw	$a0,0($s0)
    lw	$at,24($s0)
    addiu	$ra,$s0,28
    sw	$ra,12($sp)
    sw	$at,4($sp)
    mult	$v0,$at
    lw	$t9,6072($s8)
    lw	$t9,340($t9)
    # Line 339
    move	$a7,$v0
    # Line 345
    mflo	$a3
    jalr	$t9
    # Line 339
    sd	$v0,40($sp)
    ld	$s8,24($sp)
    # Line 352
    # lw $t9, -26176($gp) # &__glMap2_size
    ld	$a0,40($sp)
    lw	$a2,24($s0)
    jal	__glMap2_size
    lw	$a1,12($s0)
    # Line 355
    sll	$v0,$v0,0x2
    ld	$ra,16($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,32($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,48($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,28
.end __glle_Map2

# Function: __gllc_Map2d
# Declared: Line 358 (Source lines: 364-407)
# Address: 0x0d9ebb70 - 0x0d9ebd38 (Size: 456 bytes, Frame: 176)
.globl __gllc_Map2d
.ent __gllc_Map2d
__gllc_Map2d:
    # Line 364
    addiu	$sp,$sp,-176
    sdc1	$f18,8($sp)
    sd	$a7,56($sp)
    sdc1	$f17,0($sp)
    sd	$a3,48($sp)
    sdc1	$f14,16($sp)
    sd	$a0,40($sp)
    sd	$s1,88($sp)
    # Line 370
    lw	$s1,4112($zero)
    # Line 364
    lui	$at,0x6
    sdc1	$f13,24($sp)
    addiu	$at,$at,21020
    sd	$gp,72($sp)
    addu	$gp,$t9,$at
    # Line 372
    # lw $t9, -26288($gp) # &__glEvalComputeK
    # Line 364
    sd	$ra,80($sp)
    sd	$s2,64($sp)
    move	$s2,$a4
    # Line 372
    jal	__glEvalComputeK
    sd	$s0,96($sp)
    # Line 378
    ldc1	$f3,8($sp)
    # Line 372
    bltz	$v0,.L0d9ebd24
    move	$s0,$v0
    # Line 378
    lw	$v0,180($sp)
    lw	$a0,3768($s1)
    slt	$v1,$a0,$v0
    bnez	$v1,.L0d9ebcfc
    slt	$a3,$a0,$s2
    ld	$a1,56($sp)
    slt	$a1,$a1,$s0
    bnez	$a1,.L0d9ebd00
    # Line 382
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 378
    blez	$v0,.L0d9ebd00
    # Line 382
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 378
    ldc1	$f0,24($sp)
    ldc1	$f1,16($sp)
    c.eq.d	$f0,$f1
    bc1t	.L0d9ebcfc
    ld	$a2,48($sp)
    slt	$a2,$a2,$s0
    bnez	$a2,.L0d9ebd00
    # Line 382
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 378
    bnez	$a3,.L0d9ebd00
    # Line 382
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 378
    blez	$s2,.L0d9ebd00
    # Line 382
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 378
    ldc1	$f2,0($sp)
    c.eq.d $f2,$f3
    bc1t .L0d9ebd00
    # Line 382
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 386
    # lw $t9, -26176($gp) # &__glMap2_size
    move	$a0,$s0
    move	$a1,$s2
    jal	__glMap2_size
    move	$a2,$v0
    # Line 390
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    move	$a0,$s1
    sll	$a1,$v0,0x2
    li	$a2,-4
    addiu	$a1,$a1,31
    jal	__glDlistAllocOp2
    and	$a1,$a1,$a2
    beqz	$v0,.L0d9ebd08
    sd	$v0,32($sp)
    # Line 404
    lw	$a5,188($sp)
    ld	$a4,56($sp)
    ld	$a3,48($sp)
    # Line 395
    ld	$t1,40($sp)
    # Line 401
    ld	$a7,32($sp)
    lw	$a2,180($sp)
    sw	$a2,40($a7)
    # Line 398
    sw	$s2,28($a7)
    # Line 395
    sw	$t1,16($a7)
    # Line 392
    li	$t0,143
    sh	$t0,12($a7)
    # Line 404
    # lw $t9, -26180($gp) # &__glFillMap2d
    # Line 400
    ldc1	$f7,8($sp)
    # Line 399
    ldc1	$f6,0($sp)
    # Line 397
    ldc1	$f5,16($sp)
    # Line 396
    ldc1	$f4,24($sp)
    # Line 400
    cvt.s.d	$f7,$f7
    # Line 399
    cvt.s.d	$f6,$f6
    # Line 400
    swc1	$f7,36($a7)
    # Line 397
    cvt.s.d	$f5,$f5
    # Line 399
    swc1	$f6,32($a7)
    # Line 404
    move	$a1,$s2
    move	$a0,$s0
    # Line 396
    cvt.s.d	$f4,$f4
    # Line 397
    swc1	$f5,24($a7)
    # Line 404
    addiu	$a6,$a7,44
    jal	__glFillMap2d
    # Line 396
    swc1	$f4,20($a7)
    # Line 406
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,32($sp)
    move	$a0,$s1
    jal	__glDlistAppendOp
    la	$a2,__glle_Map2
    b	.L0d9ebd0c
    ld	$s0,96($sp)
.L0d9ebcfc:
    # Line 382
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9ebd00:
    jal	__gllc_InvalidValue
    move	$a0,$s1
.L0d9ebd08:
    ld	$s0,96($sp)
.L0d9ebd0c:
    # Line 407
    ld	$ra,80($sp)
    ld	$gp,72($sp)
    ld	$s1,88($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d9ebd24:
    # Line 374
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s1
    b	.L0d9ebd0c
    ld	$s0,96($sp)
.end __gllc_Map2d

# Function: __gllc_DeformationMap3fSGIX
# Declared: Line 424 (Source lines: 432-467)
# Address: 0x0d9ebd40 - 0x0d9ebedc (Size: 412 bytes, Frame: 208)
.globl __gllc_DeformationMap3fSGIX
.ent __gllc_DeformationMap3fSGIX
__gllc_DeformationMap3fSGIX:
    # Line 432
    addiu	$sp,$sp,-208
    sdc1	$f18,48($sp)
    sdc1	$f17,64($sp)
    sd	$a7,96($sp)
    sdc1	$f14,72($sp)
    sd	$a3,88($sp)
    sdc1	$f13,56($sp)
    sd	$a0,80($sp)
    sd	$ra,120($sp)
    sd	$s1,112($sp)
    sd	$s0,128($sp)
    # Line 435
    lw	$s0,4112($zero)
    # Line 437
    lw	$at,212($sp)
    lw	$v1,236($sp)
    lw	$a1,244($sp)
    lwc1	$f0,216($sp)
    lwc1	$f1,224($sp)
    sw	$a1,36($sp)
    # Line 432
    lui	$v0,0x6
    # Line 437
    sw	$v1,28($sp)
    # Line 432
    addiu	$v0,$v0,20556
    sd	$gp,136($sp)
    addu	$gp,$t9,$v0
    # Line 437
    # lw $t9, -26336($gp) # &__glCheckMap3Params
    sw	$at,4($sp)
    swc1	$f1,16($sp)
    # Line 432
    move	$s1,$a4
    # Line 437
    jal	__glCheckMap3Params
    swc1	$f0,8($sp)
    li	$a2,1281
    beq	$v0,$a2,.L0d9ebec8
    li	$a3,1280
    beq	$v0,$a3,.L0d9ebeb4
    # Line 446
    lw	$a5,212($sp)
    mult	$s1,$a5
    lw	$a3,244($sp)
    mflo	$a4
    nop
    nop
    mult	$a3,$a4
    mflo	$a2
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    move	$a0,$s0
    sll	$a1,$a1,0x2
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,40
    bnez	$v0,.L0d9ebe20
    sd	$v0,104($sp)
    ld	$ra,120($sp)
.L0d9ebe0c:
    ld	$s1,112($sp)
    ld	$s0,128($sp)
    # Line 441
    ld	$gp,136($sp)
    jr	$ra
    addiu	$sp,$sp,208
.L0d9ebe20:
    # Line 464
    lw	$a6,252($sp)
    ld	$a3,96($sp)
    ld	$a1,88($sp)
    # Line 453
    ld	$t2,80($sp)
    # Line 454
    ldc1	$f2,56($sp)
    # Line 458
    ldc1	$f5,48($sp)
    # Line 457
    ldc1	$f4,64($sp)
    # Line 462
    ld	$t1,104($sp)
    lw	$a4,244($sp)
    sw	$a4,52($t1)
    # Line 461
    lwc1	$f7,224($sp)
    # Line 455
    ldc1	$f3,72($sp)
    # Line 461
    swc1	$f7,48($t1)
    # Line 460
    lwc1	$f6,216($sp)
    # Line 464
    # lw $t9, -26344($gp) # &__glFillDeformationMap3f
    # Line 460
    swc1	$f6,44($t1)
    # Line 459
    lw	$a2,212($sp)
    # Line 455
    swc1	$f3,24($t1)
    # Line 456
    sw	$s1,28($t1)
    # Line 457
    swc1	$f4,32($t1)
    # Line 458
    swc1	$f5,36($t1)
    # Line 459
    sw	$a2,40($t1)
    # Line 464
    lw	$a5,236($sp)
    # Line 454
    swc1	$f2,20($t1)
    # Line 464
    move	$a0,$s1
    # Line 450
    li	$t0,248
    # Line 453
    sw	$t2,16($t1)
    # Line 464
    addiu	$a7,$t1,56
    jal	__glFillDeformationMap3f
    # Line 450
    sh	$t0,12($t1)
    # Line 467
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,104($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_DeformationMap3SGIX
    b	.L0d9ebe0c
    ld	$ra,120($sp)
.L0d9ebeb4:
    # Line 443
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0d9ebe0c
    ld	$ra,120($sp)
.L0d9ebec8:
    # Line 440
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    b	.L0d9ebe0c
    ld	$ra,120($sp)
.end __gllc_DeformationMap3fSGIX

# Function: __glle_DeformationMap3SGIX
# Declared: Line 471 (Source lines: 472-486)
# Address: 0x0d9ebee0 - 0x0d9ebfbc (Size: 220 bytes, Frame: 208)
.globl __glle_DeformationMap3SGIX
.ent __glle_DeformationMap3SGIX
__glle_DeformationMap3SGIX:
    # Line 478
    lw	$t0,36($a0)
    lw	$t3,24($a0)
    # Line 472
    addiu	$sp,$sp,-80
    sd	$s8,56($sp)
    move	$s8,$a0
    # Line 478
    lw	$a0,0($a0)
    lwc1	$f18,20($s8)
    lwc1	$f17,16($s8)
    lw	$a4,12($s8)
    lwc1	$f14,8($s8)
    lwc1	$f13,4($s8)
    sw	$t3,4($sp)
    lwc1	$f1,28($s8)
    swc1	$f1,8($sp)
    lwc1	$f0,32($s8)
    addiu	$t2,$s8,40
    sw	$t2,44($sp)
    sw	$t0,36($sp)
    li	$t8,3
    sw	$t8,28($sp)
    mult	$t3,$t0
    swc1	$f0,16($sp)
    lw	$t1,4112($zero)
    # Line 472
    lui	$t2,0x6
    # Line 478
    lw	$t1,6072($t1)
    sd	$gp,64($sp)
    # Line 472
    addiu	$t2,$t2,20140
    addu	$gp,$t9,$t2
    # Line 478
    lw	$t9,1072($t1)
    sll	$a7,$t0,0x2
    mflo	$a5
    subu	$a7,$a7,$t0
    sll	$a3,$a5,0x2
    # Line 472
    sd	$ra,48($sp)
    # Line 478
    jalr	$t9
    subu	$a3,$a3,$a5
    # Line 486
    lw	$a3,24($s8)
    lw	$a2,12($s8)
    mult	$a2,$a3
    lw	$a0,36($s8)
    mflo	$a1
    nop
    nop
    mult	$a0,$a1
    mflo	$v1
    sll	$v0,$v1,0x2
    ld	$ra,48($sp)
    subu	$v0,$v0,$v1
    ld	$gp,64($sp)
    sll	$v0,$v0,0x2
    addu	$v0,$s8,$v0
    ld	$s8,56($sp)
    addiu	$sp,$sp,80
    jr	$ra
    addiu	$v0,$v0,40
.end __glle_DeformationMap3SGIX

# Function: __gllc_DeformationMap3dSGIX
# Declared: Line 492 (Source lines: 500-535)
# Address: 0x0d9ebfc0 - 0x0d9ec17c (Size: 444 bytes, Frame: 224)
.globl __gllc_DeformationMap3dSGIX
.ent __gllc_DeformationMap3dSGIX
__gllc_DeformationMap3dSGIX:
    # Line 500
    addiu	$sp,$sp,-224
    # Line 505
    cvt.s.d	$f18,$f18
    # Line 500
    sd	$a7,112($sp)
    # Line 505
    cvt.s.d	$f17,$f17
    sdc1	$f18,80($sp)
    cvt.s.d	$f14,$f14
    sdc1	$f17,72($sp)
    sdc1	$f14,56($sp)
    cvt.s.d	$f13,$f13
    # Line 500
    sd	$a3,104($sp)
    # Line 505
    sdc1	$f13,48($sp)
    # Line 500
    sd	$a0,96($sp)
    sd	$ra,136($sp)
    sd	$s1,128($sp)
    sd	$s0,144($sp)
    # Line 503
    lw	$s0,4112($zero)
    # Line 505
    lw	$v0,228($sp)
    lw	$v1,252($sp)
    lw	$a1,260($sp)
    ldc1	$f1,240($sp)
    ldc1	$f0,232($sp)
    sw	$a1,36($sp)
    sw	$v1,28($sp)
    sw	$v0,4($sp)
    # Line 500
    lui	$at,0x6
    sd	$gp,152($sp)
    # Line 505
    cvt.s.d	$f1,$f1
    # Line 500
    addiu	$at,$at,19916
    # Line 505
    sdc1	$f1,88($sp)
    # Line 500
    addu	$gp,$t9,$at
    # Line 505
    # lw $t9, -26336($gp) # &__glCheckMap3Params
    cvt.s.d	$f0,$f0
    swc1	$f1,16($sp)
    sdc1	$f0,64($sp)
    # Line 500
    move	$s1,$a4
    # Line 505
    jal	__glCheckMap3Params
    swc1	$f0,8($sp)
    li	$a2,1281
    beq	$v0,$a2,.L0d9ec168
    li	$a3,1280
    beq	$v0,$a3,.L0d9ec158
    # Line 511
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 514
    lw	$a5,228($sp)
    mult	$s1,$a5
    lw	$a3,260($sp)
    mflo	$a4
    nop
    nop
    mult	$a3,$a4
    mflo	$a2
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    sll	$a1,$a2,0x2
    subu	$a1,$a1,$a2
    move	$a0,$s0
    sll	$a1,$a1,0x2
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,40
    bnez	$v0,.L0d9ec0c4
    sd	$v0,120($sp)
    ld	$ra,136($sp)
.L0d9ec0b0:
    ld	$s1,128($sp)
    ld	$s0,144($sp)
    # Line 509
    ld	$gp,152($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0d9ec0c4:
    # Line 532
    lw	$a6,268($sp)
    ld	$a3,112($sp)
    ld	$a1,104($sp)
    # Line 521
    ld	$t2,96($sp)
    # Line 522
    ldc1	$f2,48($sp)
    # Line 526
    ldc1	$f5,80($sp)
    # Line 525
    ldc1	$f4,72($sp)
    # Line 523
    ldc1	$f3,56($sp)
    # Line 530
    lw	$a4,260($sp)
    ld	$t1,120($sp)
    # Line 528
    ldc1	$f6,64($sp)
    # Line 529
    ldc1	$f7,88($sp)
    # Line 528
    swc1	$f6,44($t1)
    # Line 529
    swc1	$f7,48($t1)
    # Line 530
    sw	$a4,52($t1)
    # Line 527
    lw	$a2,228($sp)
    # Line 523
    swc1	$f3,24($t1)
    # Line 524
    sw	$s1,28($t1)
    # Line 525
    swc1	$f4,32($t1)
    # Line 526
    swc1	$f5,36($t1)
    # Line 532
    # lw $t9, -26340($gp) # &__glFillDeformationMap3d
    # Line 527
    sw	$a2,40($t1)
    # Line 532
    lw	$a5,252($sp)
    # Line 522
    swc1	$f2,20($t1)
    # Line 532
    move	$a0,$s1
    # Line 518
    li	$t0,247
    # Line 521
    sw	$t2,16($t1)
    # Line 532
    addiu	$a7,$t1,56
    jal	__glFillDeformationMap3d
    # Line 518
    sh	$t0,12($t1)
    # Line 535
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,120($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_DeformationMap3SGIX
    b	.L0d9ec0b0
    ld	$ra,136($sp)
.L0d9ec158:
    # Line 511
    jalr	$t9
    move	$a0,$s0
    b	.L0d9ec0b0
    ld	$ra,136($sp)
.L0d9ec168:
    # Line 508
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    b	.L0d9ec0b0
    ld	$ra,136($sp)
.end __gllc_DeformationMap3dSGIX

# Function: __glle_DrawPixels
# Declared: Line 538 (Source lines: 539-575)
# Address: 0x0d9ec180 - 0x0d9ec308 (Size: 392 bytes, Frame: 48)
.globl __glle_DrawPixels
.ent __glle_DrawPixels
__glle_DrawPixels:
    # Line 542
    lw	$a3,4112($zero)
    # Line 539
    addiu	$sp,$sp,-48
    sd	$a0,24($sp)
    move	$a1,$a0
    # Line 546
    lw	$a0,0($a0)
    # Line 542
    sd	$a3,0($sp)
    # Line 539
    lui	$a2,0x6
    # Line 546
    lw	$a3,12($a1)
    # Line 539
    addiu	$a2,$a2,19468
    sd	$gp,32($sp)
    addu	$gp,$t9,$a2
    # Line 546
    # lw $t9, -25856($gp) # &__glImageSize
    # Line 539
    sd	$ra,8($sp)
    # Line 546
    lw	$a2,8($a1)
    jal	__glImageSize
    lw	$a1,4($a1)
    # Line 549
    lw	$a3,4120($zero)
    beqz	$a3,.L0d9ec230
    # Line 546
    sd	$v0,16($sp)
    # Line 549
    li	$a4,2
    beq	$a3,$a4,.L0d9ec218
    # Line 555
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 556
    ld	$v1,16($sp)
    ld	$v0,24($sp)
    # Line 575
    ld	$ra,8($sp)
    # Line 556
    li	$a0,-4
    addiu	$v1,$v1,3
    and	$v1,$v1,$a0
    # Line 575
    ld	$gp,32($sp)
    addiu	$sp,$sp,48
    # Line 556
    addu	$v0,$v0,$v1
    # Line 575
    jr	$ra
    # Line 556
    addiu	$v0,$v0,16
.L0d9ec20c:
    # Line 575
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ec218:
    # Line 552
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    # Line 553
    sw	$zero,4120($zero)
.L0d9ec230:
    # Line 556
    ld	$a3,0($sp)
    lw	$a3,3204($a3)
    # Line 567
    ld	$v0,24($sp)
    # Line 556
    li	$ra,7169
    # Line 567
    li	$a0,-4
    # Line 565
    ld	$a5,0($sp)
    li	$a4,7168
    # Line 556
    beq	$a3,$ra,.L0d9ec2d0
    # Line 567
    ld	$v1,16($sp)
    addiu	$v1,$v1,3
    and	$v1,$v1,$a0
    # Line 575
    ld	$ra,8($sp)
    # Line 565
    bne	$a3,$a4,.L0d9ec274
    # Line 567
    addu	$v0,$v0,$v1
    # Line 565
    lbu	$a5,452($a5)
    bnez	$a5,.L0d9ec284
    # Line 570
    ld	$a1,24($sp)
.L0d9ec274:
    # Line 567
    addiu	$v0,$v0,16
    # Line 575
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ec284:
    # Line 570
    ld	$t9,0($sp)
    lw	$a4,12($a1)
    move	$a0,$t9
    lw	$t9,12560($t9)
    lw	$a3,8($a1)
    li	$a6,1
    lw	$a2,4($a1)
    addiu	$a5,$a1,16
    jalr	$t9
    lw	$a1,0($a1)
    # Line 575
    ld	$v1,16($sp)
    ld	$v0,24($sp)
    li	$a0,-4
    addiu	$v1,$v1,3
    and	$v1,$v1,$a0
    addu	$v0,$v0,$v1
    ld	$ra,8($sp)
    b	.L0d9ec20c
    addiu	$v0,$v0,16
.L0d9ec2d0:
    # Line 561
    ld	$a1,0($sp)
    # lw $t9, -26120($gp) # &__glFeedbackDrawPixels
    move	$a0,$a1
    jal	__glFeedbackDrawPixels
    addiu	$a1,$a1,240
    # Line 562
    ld	$v1,16($sp)
    ld	$v0,24($sp)
    li	$a0,-4
    addiu	$v1,$v1,3
    and	$v1,$v1,$a0
    addu	$v0,$v0,$v1
    ld	$ra,8($sp)
    b	.L0d9ec20c
    addiu	$v0,$v0,16
.end __glle_DrawPixels

# Function: __gllc_DrawPixels
# Declared: Line 578 (Source lines: 580-680)
# Address: 0x0d9ec310 - 0x0d9ec7b4 (Size: 1188 bytes, Frame: 208)
.globl __gllc_DrawPixels
.ent __gllc_DrawPixels
__gllc_DrawPixels:
    # Line 580
    addiu	$sp,$sp,-80
    # Line 585
    lw	$v1,4112($zero)
    sd	$v1,24($sp)
    # Line 580
    sd	$s1,56($sp)
    move	$v0,$a0
    move	$s1,$a3
    sd	$s0,48($sp)
    move	$s0,$a2
    sd	$s2,32($sp)
    lui	$at,0x6
    move	$s2,$a1
    sd	$ra,64($sp)
    addiu	$at,$at,19068
    sd	$gp,40($sp)
    # Line 587
    bltz	$a0,.L0d9ec6e4
    # Line 580
    addu	$gp,$t9,$at
    # Line 587
    bltz	$a1,.L0d9ec6e4
    # Line 591
    sltiu	$v1,$a2,6407
    sd	$a4,16($sp)
    bnez	$v1,.L0d9ec3ac
    sd	$a0,8($sp)
    sltiu	$a0,$a2,6408
    bnez	$a0,.L0d9ec3fc
    # Line 614
    li	$v0,0x8034
    # Line 591
    li	$v0,0x8000
    sltu	$a1,$a2,$v0
    bnez	$a1,.L0d9ec610
    sltiu	$a0,$a2,6409
    sltu	$a2,$v0,$a2
    beqz	$a2,.L0d9ec3fc
    # Line 614
    li	$v0,0x8034
    # Line 591
    li	$v0,0x80e1
    sltu	$a3,$s0,$v0
    bnez	$a3,.L0d9ec72c
    sltu	$a4,$v0,$s0
    beqz	$a4,.L0d9ec3fc
    # Line 614
    li	$v0,0x8034
    b	.L0d9ec4d8
    # Line 611
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec3ac:
    # Line 591
    sltiu	$a5,$a2,6403
    bnez	$a5,.L0d9ec4b8
    sltiu	$a7,$a2,6401
    sltiu	$a6,$a2,6404
    bnez	$a6,.L0d9ec3fc
    # Line 614
    li	$v0,0x8034
    # Line 591
    sltiu	$a7,$a2,6405
    bnez	$a7,.L0d9ec3f0
    li	$t2,6404
    sltiu	$t0,$a2,6406
    bnez	$t0,.L0d9ec3fc
    # Line 614
    li	$v0,0x8034
    # Line 591
    li	$t1,6406
    beq	$a2,$t1,.L0d9ec3fc
    # Line 614
    li	$v0,0x8034
    b	.L0d9ec4d8
    # Line 611
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec3f0:
    # Line 591
    bne	$a2,$t2,.L0d9ec4d8
    # Line 611
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec3f8:
    # Line 614
    li	$v0,0x8034
.L0d9ec3fc:
    sltu	$t3,$s1,$v0
    beqz	$t3,.L0d9ec46c
    sltu	$a1,$v0,$s1
    sltiu	$t8,$s1,5125
    bnez	$t8,.L0d9ec5e0
    sltiu	$ra,$s1,5122
    sltiu	$t9,$s1,5126
    bnez	$t9,.L0d9ec4fc
    li	$v0,0x8032
    sltu	$ra,$s1,$v0
    beqz	$ra,.L0d9ec5b8
    sltu	$t8,$v0,$s1
    sltiu	$at,$s1,6656
    bnez	$at,.L0d9ec71c
    li	$v1,5126
    sltiu	$v0,$s1,6657
    bnez	$v0,.L0d9ec778
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec444:
    jal	__gllc_InvalidEnum
    ld	$a0,24($sp)
    b	.L0d9ec53c
    # Line 612
    ld	$gp,40($sp)
.L0d9ec454:
    # Line 591
    bne	$a2,$v1,.L0d9ec4d4
    # Line 614
    li	$v0,0x8034
.L0d9ec45c:
    sltu	$a0,$s1,$v0
    bnez	$a0,.L0d9ec598
    sltiu	$t1,$s1,5125
    sltu	$a1,$v0,$s1
.L0d9ec46c:
    beqz	$a1,.L0d9ec570
    # Line 649
    li	$a6,6408
    # Line 614
    li	$v0,0x8364
    sltu	$a2,$s1,$v0
    bnez	$a2,.L0d9ec694
    sltu	$a3,$v0,$s1
    beqz	$a3,.L0d9ec5c4
    # Line 633
    li	$t9,6407
    # Line 614
    li	$v0,0x8367
    sltu	$a4,$s1,$v0
    bnez	$a4,.L0d9ec740
    sltu	$a5,$v0,$s1
    beqz	$a5,.L0d9ec570
    # Line 649
    li	$a6,6408
    # Line 614
    li	$a6,0x8368
    beq	$s1,$a6,.L0d9ec570
    # Line 649
    li	$a6,6408
    b	.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec4b8:
    # Line 591
    bnez	$a7,.L0d9ec454
    li	$v1,6400
    sltiu	$t0,$a2,6402
    bnez	$t0,.L0d9ec45c
    # Line 614
    li	$v0,0x8034
    # Line 591
    li	$t1,6402
    beq	$a2,$t1,.L0d9ec3f8
.L0d9ec4d4:
    # Line 611
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec4d8:
    jal	__gllc_InvalidEnum
    ld	$a0,24($sp)
    b	.L0d9ec53c
    # Line 612
    ld	$gp,40($sp)
.L0d9ec4e8:
    # Line 614
    bnez	$t2,.L0d9ec6d4
    li	$ra,5120
    sltiu	$t3,$s1,5122
    beqz	$t3,.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec4fc:
    # Line 664
    # lw $t9, -25856($gp) # &__glImageSize
.L0d9ec500:
    move	$a1,$s2
    move	$a2,$s0
    ld	$a0,8($sp)
    jal	__glImageSize
    move	$a3,$s1
    # Line 667
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    li	$a2,-4
    addiu	$a1,$v0,3
    and	$a1,$a1,$a2
    ld	$a0,24($sp)
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,16
    bnez	$v0,.L0d9ec634
    sd	$v0,0($sp)
    # Line 612
    ld	$gp,40($sp)
.L0d9ec53c:
    ld	$ra,64($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9ec554:
    # Line 614
    li	$v0,0x8036
    sltu	$a4,$s1,$v0
    bnez	$a4,.L0d9ec764
    sltu	$a5,$v0,$s1
    bnez	$a5,.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 649
    li	$a6,6408
.L0d9ec570:
    beq	$s0,$a6,.L0d9ec4fc
    li	$a7,0x8000
    beq	$s0,$a7,.L0d9ec4fc
    li	$t0,0x80e1
    beq	$s0,$t0,.L0d9ec4fc
    # Line 655
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ec53c
    # Line 612
    ld	$gp,40($sp)
.L0d9ec598:
    # Line 614
    bnez	$t1,.L0d9ec5dc
    sltiu	$t2,$s1,5126
    bnez	$t2,.L0d9ec4fc
    li	$v0,0x8032
    sltu	$t3,$s1,$v0
    bnez	$t3,.L0d9ec79c
    sltiu	$a5,$s1,6656
    sltu	$t8,$v0,$s1
.L0d9ec5b8:
    bnez	$t8,.L0d9ec708
    li	$v0,0x8033
    # Line 633
    li	$t9,6407
.L0d9ec5c4:
    beq	$s0,$t9,.L0d9ec4fc
    # Line 637
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ec53c
    # Line 612
    ld	$gp,40($sp)
.L0d9ec5dc:
    # Line 614
    sltiu	$ra,$s1,5122
.L0d9ec5e0:
    bnez	$ra,.L0d9ec4e8
    sltiu	$t2,$s1,5121
    sltiu	$at,$s1,5123
    bnez	$at,.L0d9ec4fc
    sltiu	$v0,$s1,5124
    bnez	$v0,.L0d9ec6f8
    li	$at,5123
    sltiu	$v1,$s1,5125
    bnez	$v1,.L0d9ec500
    # Line 664
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec610:
    # Line 591
    bnez	$a0,.L0d9ec6c0
    sltiu	$a1,$a2,6410
    bnez	$a1,.L0d9ec3fc
    # Line 614
    li	$v0,0x8034
    # Line 591
    li	$a2,6410
    beq	$s0,$a2,.L0d9ec3fc
    # Line 614
    li	$v0,0x8034
    b	.L0d9ec4d8
    # Line 611
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec634:
    # Line 677
    ld	$a5,16($sp)
    ld	$a0,24($sp)
    # Line 675
    ld	$t0,0($sp)
    # Line 677
    ld	$t1,8($sp)
    # Line 675
    sw	$s1,28($t0)
    # Line 674
    sw	$s0,24($t0)
    # Line 677
    move	$a4,$s1
    # lw $t9, -25844($gp) # &__glFillImage
    move	$a3,$s0
    move	$a2,$s2
    # Line 673
    sw	$s2,20($t0)
    # Line 669
    li	$a7,171
    # Line 677
    addiu	$a6,$t0,32
    # Line 672
    sw	$t1,16($t0)
    # Line 677
    move	$a1,$t1
    jal	__glFillImage
    # Line 669
    sh	$a7,12($t0)
    # Line 680
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a0,24($sp)
    ld	$a1,0($sp)
    jal	__glDlistAppendOp
    la	$a2,__glle_DrawPixels
    b	.L0d9ec53c
    # Line 612
    ld	$gp,40($sp)
.L0d9ec694:
    # Line 614
    li	$v0,0x8362
    sltu	$t2,$s1,$v0
    bnez	$t2,.L0d9ec554
    sltu	$t3,$v0,$s1
    beqz	$t3,.L0d9ec5c4
    # Line 633
    li	$t9,6407
    # Line 614
    li	$t8,0x8363
    beq	$s1,$t8,.L0d9ec5c4
    # Line 633
    li	$t9,6407
    b	.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec6c0:
    # Line 591
    li	$t9,6408
    beq	$a2,$t9,.L0d9ec3fc
    # Line 614
    li	$v0,0x8034
    b	.L0d9ec4d8
    # Line 611
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec6d4:
    # Line 614
    beq	$s1,$ra,.L0d9ec500
    # Line 664
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec6e4:
    # Line 588
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    ld	$a0,24($sp)
    b	.L0d9ec53c
    # Line 612
    ld	$gp,40($sp)
.L0d9ec6f8:
    # Line 614
    beq	$s1,$at,.L0d9ec500
    # Line 664
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec708:
    # Line 614
    beq	$s1,$v0,.L0d9ec570
    # Line 649
    li	$a6,6408
    b	.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec718:
    # Line 614
    li	$v1,5126
.L0d9ec71c:
    bne	$s1,$v1,.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    b	.L0d9ec500
    # Line 664
    nop	# was lw $t9, -25856($gp) # &__glImageSize
.L0d9ec72c:
    # Line 591
    li	$a0,0x80e0
    beq	$s0,$a0,.L0d9ec3fc
    # Line 614
    li	$v0,0x8034
    b	.L0d9ec4d8
    # Line 611
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec740:
    # Line 614
    li	$v0,0x8366
    sltu	$a1,$s1,$v0
    bnez	$a1,.L0d9ec78c
    li	$a4,0x8365
    sltu	$a2,$v0,$s1
    beqz	$a2,.L0d9ec570
    # Line 649
    li	$a6,6408
    b	.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec764:
    # Line 614
    li	$a3,0x8035
    beq	$s1,$a3,.L0d9ec570
    # Line 649
    li	$a6,6408
    b	.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec778:
    # Line 617
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    ld	$a0,24($sp)
    b	.L0d9ec53c
    # Line 612
    ld	$gp,40($sp)
.L0d9ec78c:
    # Line 614
    beq	$s1,$a4,.L0d9ec570
    # Line 649
    li	$a6,6408
    b	.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec79c:
    # Line 614
    bnez	$a5,.L0d9ec718
    sltiu	$a6,$s1,6657
    bnez	$a6,.L0d9ec500
    # Line 664
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ec444
    # Line 660
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.end __gllc_DrawPixels

# Function: __glle_TexImage1D
# Declared: Line 683 (Source lines: 684-693)
# Address: 0x0d9ec7c0 - 0x0d9ec83c (Size: 124 bytes, Frame: 48)
.globl __glle_TexImage1D
.ent __glle_TexImage1D
__glle_TexImage1D:
    # Line 684
    addiu	$sp,$sp,-48
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 689
    lw	$a0,4112($zero)
    # Line 684
    sd	$ra,16($sp)
    # Line 689
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    # Line 684
    lui	$v0,0x6
    # Line 689
    lw	$a3,8($s8)
    # Line 684
    addiu	$v0,$v0,17868
    sd	$gp,32($sp)
    addu	$gp,$t9,$v0
    # Line 689
    # lw $t9, -24192($gp) # &__gllei_TexImage1D
    lw	$a2,4($s8)
    lw	$a1,0($s8)
    addiu	$at,$s8,32
    jal	__gllei_TexImage1D
    sw	$at,4($sp)
    # Line 693
    lw	$v0,28($s8)
    ld	$ra,16($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,32($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,32
.end __glle_TexImage1D

# Function: __glle_TexImage2D
# Declared: Line 696 (Source lines: 697-707)
# Address: 0x0d9ec840 - 0x0d9ec8c4 (Size: 132 bytes, Frame: 48)
.globl __glle_TexImage2D
.ent __glle_TexImage2D
__glle_TexImage2D:
    # Line 697
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 702
    lw	$a0,4112($zero)
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    # Line 697
    lui	$v1,0x6
    # Line 702
    lw	$a1,0($s8)
    # Line 697
    addiu	$v1,$v1,17740
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 702
    # lw $t9, -24184($gp) # &__gllei_TexImage2D
    lw	$at,28($s8)
    addiu	$v0,$s8,36
    sw	$v0,12($sp)
    jal	__gllei_TexImage2D
    sw	$at,4($sp)
    # Line 707
    lw	$v0,32($s8)
    ld	$ra,16($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,32($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,36
.end __glle_TexImage2D

# Function: __gllc_TexImage1D
# Declared: Line 710 (Source lines: 714-828)
# Address: 0x0d9ec8d0 - 0x0d9ecde8 (Size: 1304 bytes, Frame: 240)
.globl __gllc_TexImage1D
.ent __gllc_TexImage1D
__gllc_TexImage1D:
    # Line 714
    addiu	$sp,$sp,-112
    sd	$a7,40($sp)
    sd	$a2,32($sp)
    sd	$a1,24($sp)
    sd	$a0,16($sp)
    sd	$s4,64($sp)
    sd	$s2,48($sp)
    sd	$s1,72($sp)
    move	$s1,$a6
    sd	$s0,80($sp)
    move	$s0,$a5
    move	$s2,$a4
    # Line 719
    lw	$s4,4112($zero)
    # Line 714
    sd	$s3,56($sp)
    # Line 719
    li	$at,0x8063
    # Line 714
    lui	$v0,0x6
    move	$s3,$a3
    sd	$ra,96($sp)
    addiu	$v0,$v0,17596
    sd	$gp,88($sp)
    # Line 719
    beq	$a0,$at,.L0d9ecd70
    # Line 714
    addu	$gp,$t9,$v0
    # Line 727
    bltz	$a4,.L0d9ecc30
    slti	$a0,$a4,2
    beqz	$a0,.L0d9ecc34
    # Line 728
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 729
    bltz	$a3,.L0d9ecd94
    # Line 732
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 735
    sltiu	$v0,$a5,6408
    bnez	$v0,.L0d9ec98c
    sltiu	$a1,$a5,6409
    bnez	$a1,.L0d9ec9b4
    # Line 756
    li	$v0,0x8034
    # Line 735
    li	$v0,0x8000
    sltu	$a2,$a5,$v0
    bnez	$a2,.L0d9ecc44
    sltu	$a3,$v0,$a5
    beqz	$a3,.L0d9ec9b0
    li	$v0,0x80e1
    sltu	$a4,$a5,$v0
    bnez	$a4,.L0d9ecd2c
    li	$t9,0x80e0
    sltu	$a5,$v0,$a5
    beqz	$a5,.L0d9ec9b4
    # Line 756
    li	$v0,0x8034
    b	.L0d9eca84
    # Line 753
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec98c:
    # Line 735
    sltiu	$a6,$a5,6405
    bnez	$a6,.L0d9eca64
    sltiu	$a6,$a5,6403
    sltiu	$a7,$a5,6406
    bnez	$a7,.L0d9ec9b0
    sltiu	$t0,$a5,6407
    bnez	$t0,.L0d9ecccc
    li	$t0,6406
    beqz	$v0,.L0d9eca80
.L0d9ec9b0:
    # Line 756
    li	$v0,0x8034
.L0d9ec9b4:
    sltu	$t1,$s1,$v0
    beqz	$t1,.L0d9eca24
    sltu	$a0,$v0,$s1
    sltiu	$t2,$s1,5125
    bnez	$t2,.L0d9ecbbc
    sltiu	$ra,$s1,5122
    sltiu	$t3,$s1,5126
    bnez	$t3,.L0d9ecaac
    # Line 806
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 756
    li	$v0,0x8032
    sltu	$t8,$s1,$v0
    beqz	$t8,.L0d9ecc08
    sltiu	$t9,$s1,6656
    bnez	$t9,.L0d9ecd18
    sltiu	$ra,$s1,6657
    bnez	$ra,.L0d9ecda4
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ec9f8:
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    b	.L0d9ecb48
    ld	$s2,48($sp)
.L0d9eca08:
    # Line 735
    li	$at,6400
    bne	$a5,$at,.L0d9eca84
    # Line 753
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 756
    li	$v0,0x8034
    sltu	$v1,$s1,$v0
    bnez	$v1,.L0d9ecbe4
    sltu	$a0,$v0,$s1
.L0d9eca24:
    beqz	$a0,.L0d9ecb80
    li	$v0,0x8364
    sltu	$a1,$s1,$v0
    bnez	$a1,.L0d9ecc64
    sltu	$a2,$v0,$s1
    beqz	$a2,.L0d9ecc10
    li	$v0,0x8367
    sltu	$a3,$s1,$v0
    bnez	$a3,.L0d9ecd3c
    sltu	$a4,$v0,$s1
    beqz	$a4,.L0d9ecb80
    li	$a5,0x8368
    beq	$s1,$a5,.L0d9ecb84
    # Line 791
    li	$t3,6408
    b	.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eca64:
    # Line 735
    bnez	$a6,.L0d9eca08
    sltiu	$a7,$a5,6404
    bnez	$a7,.L0d9ec9b4
    # Line 756
    li	$v0,0x8034
    # Line 735
    li	$t0,6404
    beq	$a5,$t0,.L0d9ec9b4
    # Line 756
    li	$v0,0x8034
.L0d9eca80:
    # Line 753
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eca84:
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    b	.L0d9ecb48
    ld	$s2,48($sp)
.L0d9eca94:
    # Line 756
    sltiu	$t1,$s1,5121
    bnez	$t1,.L0d9eccdc
    sltiu	$t2,$s1,5122
    beqz	$t2,.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecaa8:
    # Line 806
    # lw $t9, -25856($gp) # &__glImageSize
.L0d9ecaac:
    move	$a0,$s3
    move	$a3,$s1
    move	$a2,$s0
    jal	__glImageSize
    li	$a1,1
    # Line 809
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 807
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 809
    move	$a0,$s4
    # Line 807
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 809
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,32
    beqz	$v0,.L0d9ecb44
    nop
    sd	$v0,8($sp)
    # Line 820
    sw	$s1,40($v0)
    # Line 819
    sw	$s0,36($v0)
    # Line 818
    sw	$s2,32($v0)
    # Line 817
    sw	$s3,28($v0)
    # Line 811
    li	$a3,108
    sh	$a3,12($v0)
    # Line 814
    ld	$a5,16($sp)
    # Line 815
    ld	$a6,24($sp)
    # Line 816
    ld	$a7,32($sp)
    # Line 821
    ld	$a4,0($sp)
    sw	$a4,44($v0)
    # Line 816
    sw	$a7,24($v0)
    # Line 815
    sw	$a6,20($v0)
    # Line 823
    blez	$a4,.L0d9ecb30
    # Line 814
    sw	$a5,16($v0)
    # Line 823
    ld	$t0,40($sp)
    bnez	$t0,.L0d9ecc8c
.L0d9ecb30:
    # Line 828
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
.L0d9ecb34:
    ld	$a1,8($sp)
    move	$a0,$s4
    jal	__glDlistAppendOp
    la	$a2,__glle_TexImage1D
.L0d9ecb44:
    ld	$s2,48($sp)
.L0d9ecb48:
    ld	$s3,56($sp)
    ld	$s4,64($sp)
    ld	$ra,96($sp)
    ld	$s1,72($sp)
    ld	$s0,80($sp)
    # Line 754
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9ecb68:
    # Line 756
    li	$v0,0x8036
    sltu	$t1,$s1,$v0
    bnez	$t1,.L0d9ecd5c
    sltu	$t2,$v0,$s1
    bnez	$t2,.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecb80:
    # Line 791
    li	$t3,6408
.L0d9ecb84:
    beq	$s0,$t3,.L0d9ecaac
    # Line 806
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 791
    li	$t8,0x8000
    beq	$s0,$t8,.L0d9ecaac
    # Line 806
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 791
    li	$t9,0x80e1
    beq	$s0,$t9,.L0d9ecaac
    # Line 806
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 797
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ecb48
    ld	$s2,48($sp)
    # Line 756
    sltiu	$ra,$s1,5122
.L0d9ecbbc:
    bnez	$ra,.L0d9eca94
    sltiu	$at,$s1,5123
    bnez	$at,.L0d9ecaa8
    sltiu	$v0,$s1,5124
    bnez	$v0,.L0d9eccf0
    sltiu	$v1,$s1,5125
    bnez	$v1,.L0d9ecaac
    # Line 806
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecbe4:
    # Line 756
    sltiu	$a0,$s1,5125
    bnez	$a0,.L0d9ecbbc
    sltiu	$ra,$s1,5122
    sltiu	$a1,$s1,5126
    bnez	$a1,.L0d9ecaa8
    li	$v0,0x8032
    sltu	$a2,$s1,$v0
    bnez	$a2,.L0d9ecdcc
    sltiu	$at,$s1,6656
.L0d9ecc08:
    sltu	$a3,$v0,$s1
    bnez	$a3,.L0d9ecd04
.L0d9ecc10:
    # Line 775
    li	$a4,6407
.L0d9ecc14:
    beq	$s0,$a4,.L0d9ecaac
    # Line 806
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 779
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ecb48
    ld	$s2,48($sp)
.L0d9ecc30:
    # Line 728
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9ecc34:
    jal	__gllc_InvalidValue
    move	$a0,$s4
    b	.L0d9ecb48
    ld	$s2,48($sp)
.L0d9ecc44:
    # Line 735
    sltiu	$a5,$a5,6410
    bnez	$a5,.L0d9eccbc
    li	$a7,6409
    sltiu	$a6,$s0,6411
    bnez	$a6,.L0d9ec9b4
    # Line 756
    li	$v0,0x8034
    b	.L0d9eca84
    # Line 753
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecc64:
    # Line 756
    li	$v0,0x8362
    sltu	$a7,$s1,$v0
    bnez	$a7,.L0d9ecb68
    sltu	$t0,$v0,$s1
    beqz	$t0,.L0d9ecc10
    li	$t1,0x8363
    beq	$s1,$t1,.L0d9ecc14
    # Line 775
    li	$a4,6407
    b	.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecc8c:
    # Line 824
    move	$a0,$s4
    # lw $t9, -25844($gp) # &__glFillImage
    move	$a1,$s3
    move	$a4,$s1
    ld	$a6,8($sp)
    move	$a3,$s0
    li	$a2,1
    ld	$a5,40($sp)
    jal	__glFillImage
    addiu	$a6,$a6,48
    b	.L0d9ecb34
    # Line 828
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
.L0d9eccbc:
    # Line 735
    beq	$s0,$a7,.L0d9ec9b4
    # Line 756
    li	$v0,0x8034
    b	.L0d9eca84
    # Line 753
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecccc:
    # Line 735
    beq	$a5,$t0,.L0d9ec9b4
    # Line 756
    li	$v0,0x8034
    b	.L0d9eca84
    # Line 753
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eccdc:
    # Line 756
    li	$t1,5120
    beq	$s1,$t1,.L0d9ecaac
    # Line 806
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eccf0:
    # Line 756
    li	$t2,5123
    beq	$s1,$t2,.L0d9ecaac
    # Line 806
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecd04:
    # Line 756
    li	$t3,0x8033
    beq	$s1,$t3,.L0d9ecb84
    # Line 791
    li	$t3,6408
    b	.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecd18:
    # Line 756
    li	$t8,5126
.L0d9ecd1c:
    bne	$s1,$t8,.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    b	.L0d9ecaac
    # Line 806
    nop	# was lw $t9, -25856($gp) # &__glImageSize
.L0d9ecd2c:
    # Line 735
    beq	$a5,$t9,.L0d9ec9b4
    # Line 756
    li	$v0,0x8034
    b	.L0d9eca84
    # Line 753
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecd3c:
    # Line 756
    li	$v0,0x8366
    sltu	$ra,$s1,$v0
    bnez	$ra,.L0d9ecdb8
    sltu	$at,$v0,$s1
    beqz	$at,.L0d9ecb84
    # Line 791
    li	$t3,6408
    b	.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecd5c:
    # Line 756
    li	$v0,0x8035
    beq	$s1,$v0,.L0d9ecb84
    # Line 791
    li	$t3,6408
    b	.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecd70:
    # Line 722
    lw	$t9,6072($s4)
    ld	$a0,16($sp)
    lw	$t9,176($t9)
    ld	$a1,24($sp)
    ld	$a2,32($sp)
    jal	__gllc_InvalidEnum
    ld	$a7,40($sp)
    b	.L0d9ecb48
    ld	$s2,48($sp)
.L0d9ecd94:
    # Line 732
    jalr	$t9
    move	$a0,$s4
    b	.L0d9ecb48
    ld	$s2,48($sp)
.L0d9ecda4:
    # Line 759
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    b	.L0d9ecb48
    ld	$s2,48($sp)
.L0d9ecdb8:
    # Line 756
    li	$ra,0x8365
    beq	$s1,$ra,.L0d9ecb84
    # Line 791
    li	$t3,6408
    b	.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecdcc:
    # Line 756
    bnez	$at,.L0d9ecd1c
    li	$t8,5126
    sltiu	$v0,$s1,6657
    bnez	$v0,.L0d9ecaac
    # Line 806
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ec9f8
    # Line 802
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.end __gllc_TexImage1D

# Function: __gllc_TexImage2D
# Declared: Line 831 (Source lines: 836-951)
# Address: 0x0d9ecdf0 - 0x0d9ed2fc (Size: 1292 bytes, Frame: 192)
.globl __gllc_TexImage2D
.ent __gllc_TexImage2D
__gllc_TexImage2D:
    # Line 836
    addiu	$sp,$sp,-192
    sd	$a2,48($sp)
    sd	$a1,40($sp)
    sd	$a0,32($sp)
    sd	$s5,56($sp)
    sd	$s4,88($sp)
    sd	$s0,72($sp)
    sd	$s1,64($sp)
    move	$s1,$a7
    move	$s0,$a6
    sd	$s2,104($sp)
    move	$s2,$a5
    move	$s4,$a4
    # Line 841
    lw	$s5,4112($zero)
    # Line 836
    sd	$s3,96($sp)
    # Line 841
    li	$at,0x8064
    # Line 836
    lui	$v0,0x6
    move	$s3,$a3
    sd	$ra,112($sp)
    addiu	$v0,$v0,16284
    sd	$gp,80($sp)
    # Line 841
    beq	$a0,$at,.L0d9ed290
    # Line 836
    addu	$gp,$t9,$v0
    # Line 849
    bltz	$a5,.L0d9ed18c
    # Line 850
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 849
    slti	$a0,$a5,2
    beqz	$a0,.L0d9ed18c
    # Line 850
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 853
    bltz	$a3,.L0d9ed200
    # Line 854
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 853
    bltz	$a4,.L0d9ed1fc
    # Line 857
    sltiu	$v0,$a6,6408
    bnez	$v0,.L0d9eceb0
    sltiu	$a1,$a6,6409
    bnez	$a1,.L0d9ecef4
    li	$v0,0x8000
    sltu	$a2,$a6,$v0
    bnez	$a2,.L0d9ecee0
    sltu	$a3,$v0,$a6
    beqz	$a3,.L0d9ecef4
    li	$v0,0x80e1
    sltu	$a4,$a6,$v0
    bnez	$a4,.L0d9ed248
    sltu	$a5,$v0,$a6
    beqz	$a5,.L0d9ecef8
    # Line 878
    li	$v0,0x8034
    b	.L0d9ecfbc
    # Line 875
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eceb0:
    # Line 857
    sltiu	$a6,$a6,6405
    bnez	$a6,.L0d9ecfa0
    sltiu	$a7,$s0,6403
    sltiu	$a7,$s0,6406
    bnez	$a7,.L0d9ecef4
    sltiu	$t0,$s0,6407
    bnez	$t0,.L0d9ed1d8
    li	$a7,6406
    bnez	$v0,.L0d9ecef8
    # Line 878
    li	$v0,0x8034
    b	.L0d9ecfbc
    # Line 875
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecee0:
    # Line 857
    sltiu	$t1,$a6,6410
    bnez	$t1,.L0d9ed1c4
    sltiu	$t2,$a6,6411
    beqz	$t2,.L0d9ecfbc
    # Line 875
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecef4:
    # Line 878
    li	$v0,0x8034
.L0d9ecef8:
    sltu	$t3,$s1,$v0
    beqz	$t3,.L0d9ecf60
    sltu	$a1,$v0,$s1
    sltiu	$t8,$s1,5125
    bnez	$t8,.L0d9ed114
    sltiu	$t9,$s1,5126
    bnez	$t9,.L0d9ecfdc
    li	$v0,0x8032
    sltu	$ra,$s1,$v0
    beqz	$ra,.L0d9ed160
    sltiu	$at,$s1,6656
    bnez	$at,.L0d9ed238
    li	$t3,5126
    sltiu	$v0,$s1,6657
    bnez	$v0,.L0d9ed2b8
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecf38:
    jal	__gllc_InvalidEnum
    move	$a0,$s5
    b	.L0d9ed0a8
    # Line 876
    ld	$gp,80($sp)
.L0d9ecf48:
    # Line 857
    bne	$s0,$v1,.L0d9ecfbc
    # Line 875
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 878
    li	$v0,0x8034
    sltu	$a0,$s1,$v0
    bnez	$a0,.L0d9ed144
    sltu	$a1,$v0,$s1
.L0d9ecf60:
    beqz	$a1,.L0d9ed0e8
    li	$v0,0x8364
    sltu	$a2,$s1,$v0
    bnez	$a2,.L0d9ed19c
    sltu	$a3,$v0,$s1
    beqz	$a3,.L0d9ed16c
    li	$v0,0x8367
    sltu	$a4,$s1,$v0
    bnez	$a4,.L0d9ed25c
    sltu	$a5,$v0,$s1
    beqz	$a5,.L0d9ed0e8
    li	$a6,0x8368
    beq	$s1,$a6,.L0d9ed0ec
    # Line 913
    li	$t1,6408
    b	.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecfa0:
    # Line 857
    bnez	$a7,.L0d9ecf48
    li	$v1,6400
    sltiu	$t0,$s0,6404
    bnez	$t0,.L0d9ecef4
    li	$t1,6404
    beq	$s0,$t1,.L0d9ecef4
    # Line 875
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecfbc:
    jal	__gllc_InvalidEnum
    move	$a0,$s5
    b	.L0d9ed0a8
    # Line 876
    ld	$gp,80($sp)
.L0d9ecfcc:
    # Line 878
    bnez	$t2,.L0d9ed1e8
    sltiu	$t3,$s1,5122
    beqz	$t3,.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ecfdc:
    # Line 928
    # lw $t9, -25856($gp) # &__glImageSize
.L0d9ecfe0:
    move	$a0,$s3
    move	$a1,$s4
    move	$a2,$s0
    jal	__glImageSize
    move	$a3,$s1
    # Line 931
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 929
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 931
    move	$a0,$s5
    # Line 929
    and	$a1,$a1,$a2
    sd	$a1,16($sp)
    # Line 931
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,36
    beqz	$v0,.L0d9ed0a4
    nop
    sd	$v0,24($sp)
    # Line 943
    sw	$s1,44($v0)
    # Line 942
    sw	$s0,40($v0)
    # Line 941
    sw	$s2,36($v0)
    # Line 940
    sw	$s4,32($v0)
    # Line 939
    sw	$s3,28($v0)
    # Line 933
    li	$a3,109
    sh	$a3,12($v0)
    # Line 936
    ld	$a5,32($sp)
    # Line 937
    ld	$a6,40($sp)
    # Line 938
    ld	$a7,48($sp)
    # Line 944
    ld	$a4,16($sp)
    sw	$a4,48($v0)
    # Line 938
    sw	$a7,24($v0)
    # Line 937
    sw	$a6,20($v0)
    # Line 946
    blez	$a4,.L0d9ed090
    # Line 936
    sw	$a5,16($v0)
    # Line 946
    lw	$a5,196($sp)
    beqz	$a5,.L0d9ed094
    # Line 951
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
    # Line 947
    move	$a0,$s5
    # lw $t9, -25844($gp) # &__glFillImage
    move	$a1,$s3
    move	$a2,$s4
    ld	$a6,24($sp)
    move	$a3,$s0
    move	$a4,$s1
    jal	__glFillImage
    addiu	$a6,$a6,52
.L0d9ed090:
    # Line 951
    # lw $t9, -31140($gp) # &__glDlistAppendOp
.L0d9ed094:
    ld	$a1,24($sp)
    move	$a0,$s5
    jal	__glDlistAppendOp
    la	$a2,__glle_TexImage2D
.L0d9ed0a4:
    # Line 876
    ld	$gp,80($sp)
.L0d9ed0a8:
    ld	$s0,72($sp)
    ld	$s1,64($sp)
    ld	$s2,104($sp)
    ld	$ra,112($sp)
    ld	$s3,96($sp)
    ld	$s4,88($sp)
    ld	$s5,56($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9ed0cc:
    # Line 878
    li	$v0,0x8036
    sltu	$a7,$s1,$v0
    bnez	$a7,.L0d9ed280
    li	$at,0x8035
    sltu	$t0,$v0,$s1
    bnez	$t0,.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed0e8:
    # Line 913
    li	$t1,6408
.L0d9ed0ec:
    beq	$s0,$t1,.L0d9ecfdc
    li	$t2,0x8000
    beq	$s0,$t2,.L0d9ecfdc
    li	$t3,0x80e1
    beq	$s0,$t3,.L0d9ecfdc
    # Line 919
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ed0a8
    # Line 876
    ld	$gp,80($sp)
.L0d9ed114:
    # Line 878
    sltiu	$t8,$s1,5122
    bnez	$t8,.L0d9ecfcc
    sltiu	$t2,$s1,5121
    sltiu	$t9,$s1,5123
    bnez	$t9,.L0d9ecfdc
    sltiu	$ra,$s1,5124
    bnez	$ra,.L0d9ed210
    sltiu	$at,$s1,5125
    bnez	$at,.L0d9ecfe0
    # Line 928
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed144:
    # Line 878
    sltiu	$v0,$s1,5125
    bnez	$v0,.L0d9ed114
    sltiu	$v1,$s1,5126
    bnez	$v1,.L0d9ecfdc
    li	$v0,0x8032
    sltu	$a0,$s1,$v0
    bnez	$a0,.L0d9ed2dc
.L0d9ed160:
    sltu	$a1,$v0,$s1
    bnez	$a1,.L0d9ed224
    li	$t2,0x8033
.L0d9ed16c:
    # Line 897
    li	$a2,6407
.L0d9ed170:
    beq	$s0,$a2,.L0d9ecfdc
    # Line 901
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ed0a8
    # Line 876
    ld	$gp,80($sp)
    # Line 850
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9ed18c:
    jal	__gllc_InvalidValue
    move	$a0,$s5
    b	.L0d9ed0a8
    # Line 876
    ld	$gp,80($sp)
.L0d9ed19c:
    # Line 878
    li	$v0,0x8362
    sltu	$a3,$s1,$v0
    bnez	$a3,.L0d9ed0cc
    sltu	$a4,$v0,$s1
    beqz	$a4,.L0d9ed16c
    li	$a5,0x8363
    beq	$s1,$a5,.L0d9ed170
    # Line 897
    li	$a2,6407
    b	.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed1c4:
    # Line 857
    li	$a6,6409
    beq	$s0,$a6,.L0d9ecef8
    # Line 878
    li	$v0,0x8034
    b	.L0d9ecfbc
    # Line 875
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed1d8:
    # Line 857
    beq	$s0,$a7,.L0d9ecef8
    # Line 878
    li	$v0,0x8034
    b	.L0d9ecfbc
    # Line 875
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed1e8:
    # Line 878
    li	$t0,5120
    beq	$s1,$t0,.L0d9ecfe0
    # Line 928
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed1fc:
    # Line 854
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9ed200:
    jal	__gllc_InvalidValue
    move	$a0,$s5
    b	.L0d9ed0a8
    # Line 876
    ld	$gp,80($sp)
.L0d9ed210:
    # Line 878
    li	$t1,5123
    beq	$s1,$t1,.L0d9ecfe0
    # Line 928
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed224:
    # Line 878
    beq	$s1,$t2,.L0d9ed0ec
    # Line 913
    li	$t1,6408
    b	.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 878
    li	$t3,5126
.L0d9ed238:
    bne	$s1,$t3,.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    b	.L0d9ecfe0
    # Line 928
    nop	# was lw $t9, -25856($gp) # &__glImageSize
.L0d9ed248:
    # Line 857
    li	$t8,0x80e0
    beq	$a6,$t8,.L0d9ecef8
    # Line 878
    li	$v0,0x8034
    b	.L0d9ecfbc
    # Line 875
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed25c:
    # Line 878
    li	$v0,0x8366
    sltu	$t9,$s1,$v0
    bnez	$t9,.L0d9ed2cc
    li	$at,0x8365
    sltu	$ra,$v0,$s1
    beqz	$ra,.L0d9ed0ec
    # Line 913
    li	$t1,6408
    b	.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed280:
    # Line 878
    beq	$s1,$at,.L0d9ed0ec
    # Line 913
    li	$t1,6408
    b	.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed290:
    # Line 844
    lw	$ra,196($sp)
    sw	$ra,4($sp)
    lw	$t9,6072($s5)
    lw	$t9,180($t9)
    ld	$a0,32($sp)
    ld	$a1,40($sp)
    jal	__gllc_InvalidEnum
    ld	$a2,48($sp)
    b	.L0d9ed0a8
    # Line 876
    ld	$gp,80($sp)
.L0d9ed2b8:
    # Line 881
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s5
    b	.L0d9ed0a8
    # Line 876
    ld	$gp,80($sp)
.L0d9ed2cc:
    # Line 878
    beq	$s1,$at,.L0d9ed0ec
    # Line 913
    li	$t1,6408
    b	.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed2dc:
    # Line 878
    sltiu	$v0,$s1,6656
    bnez	$v0,.L0d9ed238
    li	$t3,5126
    sltiu	$v1,$s1,6657
    bnez	$v1,.L0d9ecfe0
    # Line 928
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ecf38
    # Line 924
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.end __gllc_TexImage2D

# Function: __glle_TexImage3DEXT
# Declared: Line 954 (Source lines: 955-965)
# Address: 0x0d9ed300 - 0x0d9ed38c (Size: 140 bytes, Frame: 192)
.globl __glle_TexImage3DEXT
.ent __glle_TexImage3DEXT
__glle_TexImage3DEXT:
    # Line 955
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    move	$s8,$a0
    # Line 960
    lw	$a0,4112($zero)
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    lw	$a1,0($s8)
    lw	$t0,28($s8)
    # Line 955
    lui	$v1,0x6
    # Line 960
    sw	$t0,4($sp)
    # Line 955
    addiu	$v1,$v1,14988
    sd	$gp,48($sp)
    addu	$gp,$t9,$v1
    # Line 960
    # lw $t9, -24176($gp) # &__gllei_TexImage3DEXT
    lw	$at,32($s8)
    addiu	$v0,$s8,40
    sw	$v0,20($sp)
    jal	__gllei_TexImage3DEXT
    sw	$at,12($sp)
    # Line 965
    lw	$v0,36($s8)
    ld	$ra,32($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,48($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,40
.end __glle_TexImage3DEXT

# Function: __gllc_TexImage3DEXT
# Declared: Line 968 (Source lines: 973-1082)
# Address: 0x0d9ed390 - 0x0d9ed85c (Size: 1228 bytes, Frame: 192)
.globl __gllc_TexImage3DEXT
.ent __gllc_TexImage3DEXT
__gllc_TexImage3DEXT:
    # Line 973
    addiu	$sp,$sp,-192
    sd	$a2,48($sp)
    sd	$a1,40($sp)
    sd	$a0,32($sp)
    sd	$s6,64($sp)
    # Line 977
    lw	$s6,4112($zero)
    # Line 973
    sd	$s4,96($sp)
    sd	$s1,80($sp)
    sd	$s0,72($sp)
    move	$s0,$a7
    move	$s1,$a6
    sd	$s5,88($sp)
    move	$s5,$a5
    move	$s4,$a4
    sd	$s2,112($sp)
    sd	$s3,56($sp)
    # Line 977
    li	$at,0x8070
    # Line 973
    lui	$v0,0x6
    move	$s3,$a3
    sd	$ra,120($sp)
    addiu	$v0,$v0,14844
    sd	$gp,104($sp)
    # Line 977
    beq	$a0,$at,.L0d9ed818
    # Line 973
    addu	$gp,$t9,$v0
    # Line 987
    bltz	$a6,.L0d9ed6d0
    slti	$a0,$a6,2
    beqz	$a0,.L0d9ed6d4
    # Line 988
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 991
    bltz	$a3,.L0d9ed780
    # Line 992
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 991
    bltz	$a4,.L0d9ed780
    # Line 992
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 991
    bltz	$a5,.L0d9ed77c
    # Line 995
    sltiu	$v0,$a7,6408
    bnez	$v0,.L0d9ed464
    sltiu	$a6,$a7,6405
    sltiu	$a1,$a7,6409
    bnez	$a1,.L0d9ed4a0
    # Line 1013
    lw	$s2,196($sp)
    # Line 995
    li	$v0,0x8000
    sltu	$a2,$a7,$v0
    bnez	$a2,.L0d9ed6e4
    sltu	$a3,$v0,$a7
    beqz	$a3,.L0d9ed4a0
    # Line 1013
    lw	$s2,196($sp)
    # Line 995
    li	$v0,0x80e1
    sltu	$a4,$a7,$v0
    bnez	$a4,.L0d9ed7d4
    sltu	$a5,$v0,$a7
    beqz	$a5,.L0d9ed4a0
    # Line 1013
    lw	$s2,196($sp)
    b	.L0d9ed674
    # Line 1010
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed464:
    # Line 995
    bnez	$a6,.L0d9ed658
    sltiu	$t0,$a7,6403
    sltiu	$a7,$a7,6406
    bnez	$a7,.L0d9ed4a0
    # Line 1013
    lw	$s2,196($sp)
    # Line 995
    sltiu	$t0,$s0,6407
    bnez	$t0,.L0d9ed7a4
    li	$t0,6406
    bnez	$v0,.L0d9ed4a0
    # Line 1013
    lw	$s2,196($sp)
    b	.L0d9ed674
    # Line 1010
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed494:
    # Line 995
    li	$t1,6400
    bne	$a7,$t1,.L0d9ed670
.L0d9ed49c:
    # Line 1013
    lw	$s2,196($sp)
.L0d9ed4a0:
    li	$v0,0x8034
    sltu	$t2,$s2,$v0
    bnez	$t2,.L0d9ed4f8
    sltiu	$v1,$s2,5124
    sltu	$t3,$v0,$s2
    beqz	$t3,.L0d9ed6a4
    # Line 1042
    li	$t9,6408
    # Line 1013
    li	$v0,0x8364
    sltu	$t8,$s2,$v0
    bnez	$t8,.L0d9ed700
    sltu	$t9,$v0,$s2
    beqz	$t9,.L0d9ed520
    li	$v0,0x8367
    sltu	$ra,$s2,$v0
    bnez	$ra,.L0d9ed7e8
    sltu	$at,$v0,$s2
    beqz	$at,.L0d9ed6a0
    li	$v0,0x8368
    beq	$s2,$v0,.L0d9ed6a4
    # Line 1042
    li	$t9,6408
    b	.L0d9ed74c
    # Line 1053
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed4f8:
    # Line 1013
    bnez	$v1,.L0d9ed540
    sltiu	$v0,$s2,5122
    sltiu	$a0,$s2,5125
    bnez	$a0,.L0d9ed558
    li	$v0,0x8032
    sltu	$a1,$s2,$v0
    bnez	$a1,.L0d9ed75c
    sltu	$a2,$v0,$s2
    bnez	$a2,.L0d9ed7b4
    li	$t1,0x8033
.L0d9ed520:
    # Line 1026
    li	$a3,6407
.L0d9ed524:
    beq	$s0,$a3,.L0d9ed55c
    # Line 1057
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    # Line 1030
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ed630
    ld	$s2,112($sp)
.L0d9ed540:
    # Line 1013
    bnez	$v0,.L0d9ed728
    sltiu	$a3,$s2,5121
    sltiu	$a4,$s2,5123
    bnez	$a4,.L0d9ed558
    li	$a5,5123
    bne	$s2,$a5,.L0d9ed748
.L0d9ed558:
    # Line 1057
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
.L0d9ed55c:
    move	$a0,$s3
    move	$a1,$s4
    move	$a2,$s5
    move	$a3,$s0
    jal	__glImageSize3D
    move	$a4,$s2
    # Line 1060
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 1058
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1060
    move	$a0,$s6
    # Line 1058
    and	$a1,$a1,$a2
    sd	$a1,16($sp)
    # Line 1060
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,40
    beqz	$v0,.L0d9ed62c
    nop
    sd	$v0,24($sp)
    # Line 1073
    sw	$s2,48($v0)
    # Line 1072
    sw	$s0,44($v0)
    # Line 1071
    sw	$s1,40($v0)
    # Line 1070
    sw	$s5,36($v0)
    # Line 1069
    sw	$s4,32($v0)
    # Line 1068
    sw	$s3,28($v0)
    # Line 1062
    li	$a3,208
    sh	$a3,12($v0)
    # Line 1065
    ld	$a5,32($sp)
    # Line 1066
    ld	$a6,40($sp)
    # Line 1067
    ld	$a7,48($sp)
    # Line 1074
    ld	$a4,16($sp)
    sw	$a4,52($v0)
    # Line 1067
    sw	$a7,24($v0)
    # Line 1066
    sw	$a6,20($v0)
    # Line 1076
    blez	$a4,.L0d9ed618
    # Line 1065
    sw	$a5,16($v0)
    # Line 1076
    lw	$a6,204($sp)
    beqz	$a6,.L0d9ed61c
    # Line 1082
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
    # Line 1077
    move	$a0,$s6
    move	$a1,$s3
    # lw $t9, -25848($gp) # &__glFillImage3D
    move	$a2,$s4
    move	$a3,$s5
    ld	$a7,24($sp)
    move	$a4,$s0
    move	$a5,$s2
    jal	__glFillImage3D
    addiu	$a7,$a7,56
.L0d9ed618:
    # Line 1082
    # lw $t9, -31140($gp) # &__glDlistAppendOp
.L0d9ed61c:
    ld	$a1,24($sp)
    move	$a0,$s6
    jal	__glDlistAppendOp
    la	$a2,__glle_TexImage3DEXT
.L0d9ed62c:
    ld	$s2,112($sp)
.L0d9ed630:
    ld	$s3,56($sp)
    ld	$s6,64($sp)
    ld	$s0,72($sp)
    ld	$s1,80($sp)
    ld	$ra,120($sp)
    ld	$s5,88($sp)
    ld	$s4,96($sp)
    # Line 1011
    ld	$gp,104($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9ed658:
    # Line 995
    bnez	$t0,.L0d9ed494
    sltiu	$t1,$a7,6404
    bnez	$t1,.L0d9ed49c
    li	$t2,6404
    beq	$a7,$t2,.L0d9ed4a0
    # Line 1013
    lw	$s2,196($sp)
.L0d9ed670:
    # Line 1010
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed674:
    jal	__gllc_InvalidEnum
    move	$a0,$s6
    b	.L0d9ed630
    ld	$s2,112($sp)
.L0d9ed684:
    # Line 1013
    li	$v0,0x8036
    sltu	$t3,$s2,$v0
    li	$ra,0x8035
    bnez	$t3,.L0d9ed808
    sltu	$t8,$v0,$s2
    bnez	$t8,.L0d9ed74c
    # Line 1053
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed6a0:
    # Line 1042
    li	$t9,6408
.L0d9ed6a4:
    beq	$s0,$t9,.L0d9ed558
    li	$ra,0x8000
    beq	$s0,$ra,.L0d9ed55c
    # Line 1057
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    # Line 1042
    li	$at,0x80e1
    beq	$s0,$at,.L0d9ed558
    # Line 1048
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ed630
    ld	$s2,112($sp)
.L0d9ed6d0:
    # Line 988
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9ed6d4:
    jal	__gllc_InvalidValue
    move	$a0,$s6
    b	.L0d9ed630
    ld	$s2,112($sp)
.L0d9ed6e4:
    # Line 995
    sltiu	$v0,$a7,6410
    bnez	$v0,.L0d9ed790
    sltiu	$v1,$a7,6411
    bnez	$v1,.L0d9ed4a0
    # Line 1013
    lw	$s2,196($sp)
    b	.L0d9ed674
    # Line 1010
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed700:
    # Line 1013
    li	$v0,0x8362
    sltu	$a0,$s2,$v0
    bnez	$a0,.L0d9ed684
    sltu	$a1,$v0,$s2
    beqz	$a1,.L0d9ed520
    li	$a2,0x8363
    beq	$s2,$a2,.L0d9ed524
    # Line 1026
    li	$a3,6407
    b	.L0d9ed74c
    # Line 1053
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed728:
    # Line 1013
    bnez	$a3,.L0d9ed740
    li	$a4,5120
    bnez	$v0,.L0d9ed55c
    # Line 1057
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    b	.L0d9ed74c
    # Line 1053
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed740:
    # Line 1013
    beq	$s2,$a4,.L0d9ed55c
    # Line 1057
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
.L0d9ed748:
    # Line 1053
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed74c:
    jal	__gllc_InvalidEnum
    move	$a0,$s6
    b	.L0d9ed630
    ld	$s2,112($sp)
.L0d9ed75c:
    # Line 1013
    sltiu	$a5,$s2,5126
    bnez	$a5,.L0d9ed7c4
    li	$t2,5125
    sltiu	$a6,$s2,5127
    bnez	$a6,.L0d9ed55c
    # Line 1057
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    b	.L0d9ed74c
    # Line 1053
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed77c:
    # Line 992
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9ed780:
    jal	__gllc_InvalidValue
    move	$a0,$s6
    b	.L0d9ed630
    ld	$s2,112($sp)
.L0d9ed790:
    # Line 995
    li	$a7,6409
    beq	$s0,$a7,.L0d9ed4a0
    # Line 1013
    lw	$s2,196($sp)
    b	.L0d9ed674
    # Line 1010
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed7a4:
    # Line 995
    beq	$s0,$t0,.L0d9ed4a0
    # Line 1013
    lw	$s2,196($sp)
    b	.L0d9ed674
    # Line 1010
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed7b4:
    # Line 1013
    beq	$s2,$t1,.L0d9ed6a4
    # Line 1042
    li	$t9,6408
    b	.L0d9ed74c
    # Line 1053
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed7c4:
    # Line 1013
    beq	$s2,$t2,.L0d9ed55c
    # Line 1057
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    b	.L0d9ed74c
    # Line 1053
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed7d4:
    # Line 995
    li	$t3,0x80e0
    beq	$a7,$t3,.L0d9ed4a0
    # Line 1013
    lw	$s2,196($sp)
    b	.L0d9ed674
    # Line 1010
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed7e8:
    # Line 1013
    li	$v0,0x8366
    sltu	$t8,$s2,$v0
    bnez	$t8,.L0d9ed848
    sltu	$t9,$v0,$s2
    beqz	$t9,.L0d9ed6a4
    # Line 1042
    li	$t9,6408
    b	.L0d9ed74c
    # Line 1053
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed808:
    # Line 1013
    beq	$s2,$ra,.L0d9ed6a4
    # Line 1042
    li	$t9,6408
    b	.L0d9ed74c
    # Line 1053
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed818:
    # Line 980
    lw	$at,196($sp)
    sw	$at,4($sp)
    lw	$ra,204($sp)
    sw	$ra,12($sp)
    lw	$t9,6072($s6)
    lw	$t9,784($t9)
    ld	$a0,32($sp)
    ld	$a1,40($sp)
    jal	__gllc_InvalidEnum
    ld	$a2,48($sp)
    b	.L0d9ed630
    ld	$s2,112($sp)
.L0d9ed848:
    # Line 1013
    li	$v0,0x8365
    beq	$s2,$v0,.L0d9ed6a4
    # Line 1042
    li	$t9,6408
    b	.L0d9ed74c
    # Line 1053
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.end __gllc_TexImage3DEXT

# Function: __glle_TexSubImage1DEXT
# Declared: Line 1085 (Source lines: 1086-1095)
# Address: 0x0d9ed860 - 0x0d9ed8d4 (Size: 116 bytes, Frame: 32)
.globl __glle_TexSubImage1DEXT
.ent __glle_TexSubImage1DEXT
__glle_TexSubImage1DEXT:
    # Line 1086
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 1091
    lw	$a0,4112($zero)
    # Line 1086
    sd	$ra,0($sp)
    # Line 1091
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    # Line 1086
    lui	$at,0x6
    # Line 1091
    lw	$a4,12($s8)
    # Line 1086
    addiu	$at,$at,13612
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1091
    # lw $t9, -23808($gp) # &__gllei_TexSubImage1DEXT
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    addiu	$a7,$s8,28
    jal	__gllei_TexSubImage1DEXT
    lw	$a1,0($s8)
    # Line 1095
    lw	$v0,24($s8)
    ld	$ra,0($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,16($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,28
.end __glle_TexSubImage1DEXT

# Function: __gllc_TexSubImage1DEXT
# Declared: Line 1098 (Source lines: 1101-1204)
# Address: 0x0d9ed8e0 - 0x0d9edd84 (Size: 1188 bytes, Frame: 224)
.globl __gllc_TexSubImage1DEXT
.ent __gllc_TexSubImage1DEXT
__gllc_TexSubImage1DEXT:
    # Line 1101
    addiu	$sp,$sp,-96
    sd	$s2,72($sp)
    # Line 1106
    lw	$s2,4112($zero)
    # Line 1101
    move	$v0,$a3
    sd	$s1,56($sp)
    move	$s1,$a5
    sd	$s0,64($sp)
    lui	$at,0x6
    move	$s0,$a4
    sd	$ra,88($sp)
    addiu	$at,$at,13484
    sd	$gp,80($sp)
    # Line 1106
    bltz	$a3,.L0d9edd2c
    # Line 1101
    addu	$gp,$t9,$at
    sd	$a6,48($sp)
    sd	$a0,40($sp)
    sd	$a1,32($sp)
    # Line 1112
    sltiu	$a4,$a4,6408
    sd	$a2,24($sp)
    bnez	$a4,.L0d9ed980
    sd	$a3,16($sp)
    sltiu	$v0,$s0,6409
    bnez	$v0,.L0d9ed9c4
    # Line 1133
    li	$v0,0x8034
    # Line 1112
    li	$v0,0x8000
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0d9ed9b4
    sltiu	$a7,$s0,6410
    sltu	$a0,$v0,$s0
    beqz	$a0,.L0d9ed9c4
    # Line 1133
    li	$v0,0x8034
    # Line 1112
    li	$v0,0x80e1
    sltu	$a1,$s0,$v0
    bnez	$a1,.L0d9edce8
    li	$t8,0x80e0
    sltu	$a2,$v0,$s0
    beqz	$a2,.L0d9ed9c4
    # Line 1133
    li	$v0,0x8034
    b	.L0d9eda90
    # Line 1130
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed980:
    # Line 1112
    sltiu	$a3,$s0,6405
    bnez	$a3,.L0d9eda74
    sltiu	$a6,$s0,6403
    sltiu	$a5,$s0,6406
    bnez	$a5,.L0d9ed9c4
    # Line 1133
    li	$v0,0x8034
    # Line 1112
    sltiu	$a6,$s0,6407
    bnez	$a6,.L0d9edc8c
    li	$a7,6406
    bnez	$a4,.L0d9ed9c4
    # Line 1133
    li	$v0,0x8034
    b	.L0d9eda90
    # Line 1130
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ed9b4:
    # Line 1112
    bnez	$a7,.L0d9edc78
    sltiu	$t0,$s0,6411
    beqz	$t0,.L0d9eda8c
.L0d9ed9c0:
    # Line 1133
    li	$v0,0x8034
.L0d9ed9c4:
    sltu	$t1,$s1,$v0
    beqz	$t1,.L0d9eda28
    sltiu	$t2,$s1,5125
    bnez	$t2,.L0d9edbdc
    sltiu	$t3,$s1,5126
    bnez	$t3,.L0d9edab8
    li	$v0,0x8032
    sltu	$t8,$s1,$v0
    beqz	$t8,.L0d9edc2c
    sltu	$a1,$v0,$s1
    sltiu	$t9,$s1,6656
    bnez	$t9,.L0d9edcd4
    sltiu	$ra,$s1,6657
    bnez	$ra,.L0d9edd40
    # Line 1136
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 1179
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eda04:
    jal	__gllc_InvalidEnum
    move	$a0,$s2
    b	.L0d9edb7c
    ld	$s1,56($sp)
.L0d9eda14:
    # Line 1112
    li	$at,6400
    bne	$s0,$at,.L0d9eda8c
    # Line 1133
    li	$v0,0x8034
    sltu	$v1,$a5,$v0
    bnez	$v1,.L0d9edc08
.L0d9eda28:
    sltu	$a0,$v0,$s1
    beqz	$a0,.L0d9edbac
    li	$v0,0x8364
    sltu	$a1,$s1,$v0
    bnez	$a1,.L0d9edc4c
    sltu	$a2,$v0,$s1
    beqz	$a2,.L0d9edc34
    # Line 1152
    li	$a2,6407
    # Line 1133
    li	$v0,0x8367
    sltu	$a3,$s1,$v0
    bnez	$a3,.L0d9edcf8
    sltu	$a4,$v0,$s1
    beqz	$a4,.L0d9edbb0
    # Line 1168
    li	$t1,6408
    # Line 1133
    li	$a5,0x8368
    beq	$s1,$a5,.L0d9edbb0
    # Line 1168
    li	$t1,6408
    b	.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eda74:
    # Line 1112
    bnez	$a6,.L0d9eda14
    sltiu	$a7,$s0,6404
    bnez	$a7,.L0d9ed9c0
    li	$t0,6404
    beq	$s0,$t0,.L0d9ed9c4
    # Line 1133
    li	$v0,0x8034
.L0d9eda8c:
    # Line 1130
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eda90:
    jal	__gllc_InvalidEnum
    move	$a0,$s2
    b	.L0d9edb7c
    ld	$s1,56($sp)
.L0d9edaa0:
    # Line 1133
    sltiu	$t1,$s1,5121
    bnez	$t1,.L0d9edc9c
    li	$t0,5120
    sltiu	$t2,$s1,5122
    beqz	$t2,.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edab8:
    # Line 1183
    # lw $t9, -25856($gp) # &__glImageSize
.L0d9edabc:
    move	$a3,$s1
    move	$a2,$s0
    ld	$a0,16($sp)
    jal	__glImageSize
    li	$a1,1
    # Line 1186
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 1184
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1186
    move	$a0,$s2
    # Line 1184
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 1186
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,28
    beqz	$v0,.L0d9edb78
    nop
    # Line 1196
    sw	$s1,36($v0)
    # Line 1195
    sw	$s0,32($v0)
    # Line 1188
    li	$a3,193
    sh	$a3,12($v0)
    # Line 1191
    ld	$a5,40($sp)
    # Line 1192
    ld	$a6,32($sp)
    # Line 1193
    ld	$a7,24($sp)
    # Line 1194
    ld	$t0,16($sp)
    # Line 1197
    ld	$a4,0($sp)
    sw	$a4,40($v0)
    # Line 1194
    sw	$t0,28($v0)
    # Line 1193
    sw	$a7,24($v0)
    # Line 1192
    sw	$a6,20($v0)
    # Line 1197
    blez	$a4,.L0d9edb64
    # Line 1191
    sw	$a5,16($v0)
    sd	$v0,8($sp)
    # Line 1200
    # lw $t9, -25844($gp) # &__glFillImage
    move	$a0,$s2
    move	$a4,$s1
    ld	$a6,8($sp)
    ld	$a1,16($sp)
    move	$a3,$s0
    li	$a2,1
    ld	$a5,48($sp)
    jal	__glFillImage
    addiu	$a6,$a6,44
    ld	$v0,8($sp)
.L0d9edb64:
    # Line 1204
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s2
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexSubImage1DEXT
.L0d9edb78:
    ld	$s1,56($sp)
.L0d9edb7c:
    ld	$ra,88($sp)
    ld	$s0,64($sp)
    ld	$s2,72($sp)
    # Line 1131
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9edb94:
    # Line 1133
    li	$v0,0x8036
    sltu	$a7,$s1,$v0
    bnez	$a7,.L0d9edd18
    sltu	$t0,$v0,$s1
    bnez	$t0,.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edbac:
    # Line 1168
    li	$t1,6408
.L0d9edbb0:
    beq	$s0,$t1,.L0d9edab8
    li	$t2,0x8000
    beq	$s0,$t2,.L0d9edabc
    # Line 1183
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1168
    li	$t3,0x80e1
    beq	$s0,$t3,.L0d9edab8
    # Line 1174
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9edb7c
    ld	$s1,56($sp)
.L0d9edbdc:
    # Line 1133
    sltiu	$t8,$s1,5122
    bnez	$t8,.L0d9edaa0
    sltiu	$t9,$s1,5123
    bnez	$t9,.L0d9edab8
    sltiu	$ra,$s1,5124
    bnez	$ra,.L0d9edcac
    sltiu	$at,$s1,5125
    bnez	$at,.L0d9edabc
    # Line 1183
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edc08:
    # Line 1133
    sltiu	$v0,$a5,5125
    bnez	$v0,.L0d9edbdc
    sltiu	$v1,$a5,5126
    bnez	$v1,.L0d9edabc
    # Line 1183
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1133
    li	$v0,0x8032
    sltu	$a0,$a5,$v0
    bnez	$a0,.L0d9edd64
    sltu	$a1,$v0,$s1
.L0d9edc2c:
    bnez	$a1,.L0d9edcc0
    # Line 1152
    li	$a2,6407
.L0d9edc34:
    beq	$s0,$a2,.L0d9edab8
    # Line 1156
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9edb7c
    ld	$s1,56($sp)
.L0d9edc4c:
    # Line 1133
    li	$v0,0x8362
    sltu	$a3,$s1,$v0
    bnez	$a3,.L0d9edb94
    sltu	$a4,$v0,$s1
    beqz	$a4,.L0d9edc34
    # Line 1152
    li	$a2,6407
    # Line 1133
    li	$a5,0x8363
    beq	$s1,$a5,.L0d9edc34
    # Line 1152
    li	$a2,6407
    b	.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edc78:
    # Line 1112
    li	$a6,6409
    beq	$s0,$a6,.L0d9ed9c4
    # Line 1133
    li	$v0,0x8034
    b	.L0d9eda90
    # Line 1130
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edc8c:
    # Line 1112
    beq	$s0,$a7,.L0d9ed9c4
    # Line 1133
    li	$v0,0x8034
    b	.L0d9eda90
    # Line 1130
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edc9c:
    # Line 1133
    beq	$s1,$t0,.L0d9edabc
    # Line 1183
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edcac:
    # Line 1133
    li	$t1,5123
    beq	$s1,$t1,.L0d9edabc
    # Line 1183
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edcc0:
    # Line 1133
    li	$t2,0x8033
    beq	$s1,$t2,.L0d9edbb0
    # Line 1168
    li	$t1,6408
    b	.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edcd4:
    # Line 1133
    li	$t3,5126
.L0d9edcd8:
    bne	$s1,$t3,.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    b	.L0d9edabc
    # Line 1183
    nop	# was lw $t9, -25856($gp) # &__glImageSize
.L0d9edce8:
    # Line 1112
    beq	$s0,$t8,.L0d9ed9c4
    # Line 1133
    li	$v0,0x8034
    b	.L0d9eda90
    # Line 1130
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edcf8:
    # Line 1133
    li	$v0,0x8366
    sltu	$t9,$s1,$v0
    bnez	$t9,.L0d9edd50
    sltu	$ra,$v0,$s1
    beqz	$ra,.L0d9edbb0
    # Line 1168
    li	$t1,6408
    b	.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edd18:
    # Line 1133
    li	$at,0x8035
    beq	$s1,$at,.L0d9edbb0
    # Line 1168
    li	$t1,6408
    b	.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edd2c:
    # Line 1109
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s2
    b	.L0d9edb7c
    ld	$s1,56($sp)
.L0d9edd40:
    # Line 1136
    jalr	$t9
    move	$a0,$s2
    b	.L0d9edb7c
    ld	$s1,56($sp)
.L0d9edd50:
    # Line 1133
    li	$v0,0x8365
    beq	$s1,$v0,.L0d9edbb0
    # Line 1168
    li	$t1,6408
    b	.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edd64:
    # Line 1133
    sltiu	$v1,$a5,6656
    bnez	$v1,.L0d9edcd8
    li	$t3,5126
    sltiu	$a0,$a5,6657
    bnez	$a0,.L0d9edabc
    # Line 1183
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9eda04
    # Line 1179
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.end __gllc_TexSubImage1DEXT

# Function: __glle_TexSubImage2DEXT
# Declared: Line 1207 (Source lines: 1208-1218)
# Address: 0x0d9edd90 - 0x0d9ede14 (Size: 132 bytes, Frame: 48)
.globl __glle_TexSubImage2DEXT
.ent __glle_TexSubImage2DEXT
__glle_TexSubImage2DEXT:
    # Line 1208
    addiu	$sp,$sp,-48
    sd	$ra,16($sp)
    sd	$s8,24($sp)
    move	$s8,$a0
    # Line 1213
    lw	$a0,4112($zero)
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    # Line 1208
    lui	$v1,0x6
    # Line 1213
    lw	$a1,0($s8)
    # Line 1208
    addiu	$v1,$v1,12284
    sd	$gp,32($sp)
    addu	$gp,$t9,$v1
    # Line 1213
    # lw $t9, -23800($gp) # &__gllei_TexSubImage2DEXT
    lw	$at,28($s8)
    addiu	$v0,$s8,36
    sw	$v0,12($sp)
    jal	__gllei_TexSubImage2DEXT
    sw	$at,4($sp)
    # Line 1218
    lw	$v0,32($s8)
    ld	$ra,16($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,32($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,36
.end __glle_TexSubImage2DEXT

# Function: __gllc_TexSubImage2DEXT
# Declared: Line 1221 (Source lines: 1225-1330)
# Address: 0x0d9ede20 - 0x0d9ee300 (Size: 1248 bytes, Frame: 176)
.globl __gllc_TexSubImage2DEXT
.ent __gllc_TexSubImage2DEXT
__gllc_TexSubImage2DEXT:
    # Line 1225
    addiu	$sp,$sp,-176
    sd	$s3,88($sp)
    # Line 1230
    lw	$s3,4112($zero)
    # Line 1225
    sd	$s1,56($sp)
    move	$v0,$a4
    move	$s1,$a7
    sd	$s0,72($sp)
    move	$s0,$a6
    sd	$s2,64($sp)
    lui	$at,0x6
    move	$s2,$a5
    sd	$ra,96($sp)
    addiu	$at,$at,12140
    sd	$gp,80($sp)
    # Line 1232
    bltz	$a4,.L0d9ee22c
    # Line 1225
    addu	$gp,$t9,$at
    # Line 1232
    bltz	$a5,.L0d9ee230
    # Line 1233
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    sd	$a2,48($sp)
    sd	$a3,40($sp)
    sd	$a0,32($sp)
    # Line 1236
    sltiu	$a5,$a6,6408
    sd	$a1,24($sp)
    bnez	$a5,.L0d9edecc
    sd	$a4,16($sp)
    sltiu	$v0,$a6,6409
    bnez	$v0,.L0d9edef8
    # Line 1257
    li	$v0,0x8034
    # Line 1236
    li	$v0,0x8000
    sltu	$v1,$a6,$v0
    bnez	$v1,.L0d9ee1b4
    sltiu	$a3,$a6,6410
    sltu	$a0,$v0,$a6
    beqz	$a0,.L0d9edef8
    # Line 1257
    li	$v0,0x8034
    # Line 1236
    li	$v0,0x80e1
    sltu	$a1,$a6,$v0
    bnez	$a1,.L0d9ee274
    sltu	$a2,$v0,$a6
    beqz	$a2,.L0d9edef8
    # Line 1257
    li	$v0,0x8034
    b	.L0d9edfd4
    # Line 1254
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edecc:
    # Line 1236
    sltiu	$a3,$a6,6405
    bnez	$a3,.L0d9edfb8
    sltiu	$a4,$a6,6403
    sltiu	$a4,$a6,6406
    bnez	$a4,.L0d9edef4
    sltiu	$a6,$a6,6407
    bnez	$a6,.L0d9ee20c
    li	$t1,6406
    beqz	$a5,.L0d9edfd4
    # Line 1254
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edef4:
    # Line 1257
    li	$v0,0x8034
.L0d9edef8:
    sltu	$a7,$s1,$v0
    beqz	$a7,.L0d9edf6c
    sltu	$at,$v0,$s1
    sltiu	$t0,$s1,5125
    bnez	$t0,.L0d9ee134
    sltiu	$t8,$s1,5122
    sltiu	$t1,$s1,5126
    bnez	$t1,.L0d9edff8
    li	$v0,0x8032
    sltu	$t2,$s1,$v0
    beqz	$t2,.L0d9ee188
    sltiu	$t3,$s1,6656
    bnez	$t3,.L0d9ee264
    li	$t9,5126
    sltiu	$t8,$s1,6657
    bnez	$t8,.L0d9ee2c0
    # Line 1260
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edf3c:
    # Line 1303
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edf40:
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9ee0c8
    # Line 1255
    ld	$gp,80($sp)
.L0d9edf50:
    # Line 1236
    li	$t9,6400
    bne	$a6,$t9,.L0d9edfd4
    # Line 1254
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 1257
    li	$v0,0x8034
    sltu	$ra,$a7,$v0
    bnez	$ra,.L0d9ee164
    sltu	$at,$v0,$s1
.L0d9edf6c:
    beqz	$at,.L0d9ee0fc
    # Line 1292
    li	$t1,6408
    # Line 1257
    li	$v0,0x8364
    sltu	$v1,$s1,$v0
    bnez	$v1,.L0d9ee1d0
    sltu	$a0,$v0,$s1
    beqz	$a0,.L0d9ee198
    # Line 1276
    li	$a2,6407
    # Line 1257
    li	$v0,0x8367
    sltu	$a1,$s1,$v0
    bnez	$a1,.L0d9ee288
    sltu	$a2,$v0,$s1
    beqz	$a2,.L0d9ee0fc
    # Line 1292
    li	$t1,6408
    # Line 1257
    li	$a3,0x8368
    beq	$s1,$a3,.L0d9ee0fc
    # Line 1292
    li	$t1,6408
    b	.L0d9edf40
    # Line 1303
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edfb8:
    # Line 1236
    bnez	$a4,.L0d9edf50
    sltiu	$a5,$a6,6404
    bnez	$a5,.L0d9edef8
    # Line 1257
    li	$v0,0x8034
    # Line 1236
    li	$a6,6404
    beq	$s0,$a6,.L0d9edef4
    # Line 1254
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9edfd4:
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9ee0c8
    # Line 1255
    ld	$gp,80($sp)
.L0d9edfe4:
    # Line 1257
    sltiu	$a7,$s1,5121
    bnez	$a7,.L0d9ee21c
    li	$t2,5120
    sltiu	$t0,$s1,5122
    beqz	$t0,.L0d9edf3c
.L0d9edff8:
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
.L0d9edffc:
    move	$a1,$s2
    move	$a2,$s0
    ld	$a0,16($sp)
    jal	__glImageSize
    move	$a3,$s1
    # Line 1310
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 1308
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1310
    move	$a0,$s3
    # Line 1308
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 1310
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,36
    beqz	$v0,.L0d9ee0c4
    nop
    # Line 1322
    sw	$s1,44($v0)
    # Line 1321
    sw	$s0,40($v0)
    # Line 1320
    sw	$s2,36($v0)
    # Line 1312
    li	$a3,194
    sh	$a3,12($v0)
    # Line 1315
    ld	$a5,32($sp)
    # Line 1316
    ld	$a6,24($sp)
    # Line 1317
    ld	$a7,48($sp)
    # Line 1318
    ld	$t0,40($sp)
    # Line 1319
    ld	$t1,16($sp)
    # Line 1323
    ld	$a4,0($sp)
    sw	$a4,48($v0)
    # Line 1319
    sw	$t1,32($v0)
    # Line 1318
    sw	$t0,28($v0)
    # Line 1317
    sw	$a7,24($v0)
    # Line 1316
    sw	$a6,20($v0)
    # Line 1323
    blez	$a4,.L0d9ee0b0
    # Line 1315
    sw	$a5,16($v0)
    sd	$v0,8($sp)
    # Line 1326
    # lw $t9, -25844($gp) # &__glFillImage
    move	$a0,$s3
    move	$a2,$s2
    ld	$a6,8($sp)
    ld	$a1,16($sp)
    move	$a3,$s0
    move	$a4,$s1
    lw	$a5,180($sp)
    jal	__glFillImage
    addiu	$a6,$a6,52
    ld	$v0,8($sp)
.L0d9ee0b0:
    # Line 1330
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s3
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexSubImage2DEXT
.L0d9ee0c4:
    # Line 1255
    ld	$gp,80($sp)
.L0d9ee0c8:
    ld	$s0,72($sp)
    ld	$ra,96($sp)
    ld	$s1,56($sp)
    ld	$s2,64($sp)
    ld	$s3,88($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d9ee0e4:
    # Line 1257
    li	$v0,0x8036
    sltu	$a7,$s1,$v0
    bnez	$a7,.L0d9ee2ac
    sltu	$t0,$v0,$s1
    bnez	$t0,.L0d9edf3c
    # Line 1292
    li	$t1,6408
.L0d9ee0fc:
    beq	$s0,$t1,.L0d9edffc
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1292
    li	$t2,0x8000
    beq	$s0,$t2,.L0d9edffc
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1292
    li	$t3,0x80e1
    beq	$s0,$t3,.L0d9edffc
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1298
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ee0c8
    # Line 1255
    ld	$gp,80($sp)
    # Line 1257
    sltiu	$t8,$s1,5122
.L0d9ee134:
    bnez	$t8,.L0d9edfe4
    sltiu	$t9,$s1,5123
    bnez	$t9,.L0d9edffc
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1257
    sltiu	$ra,$s1,5124
    bnez	$ra,.L0d9ee240
    li	$t3,5123
    sltiu	$at,$s1,5125
    bnez	$at,.L0d9edffc
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9edf40
    # Line 1303
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee164:
    # Line 1257
    sltiu	$v0,$a7,5125
    bnez	$v0,.L0d9ee134
    sltiu	$t8,$s1,5122
    sltiu	$v1,$a7,5126
    bnez	$v1,.L0d9edffc
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1257
    li	$v0,0x8032
    sltu	$a0,$a7,$v0
    bnez	$a0,.L0d9ee2e0
.L0d9ee188:
    sltu	$a1,$v0,$s1
    bnez	$a1,.L0d9ee250
    li	$t8,0x8033
    # Line 1276
    li	$a2,6407
.L0d9ee198:
    beq	$s0,$a2,.L0d9edffc
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1280
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ee0c8
    # Line 1255
    ld	$gp,80($sp)
.L0d9ee1b4:
    # Line 1236
    bnez	$a3,.L0d9ee1fc
    li	$t0,6409
    sltiu	$a4,$a6,6411
    bnez	$a4,.L0d9edef8
    # Line 1257
    li	$v0,0x8034
    b	.L0d9edfd4
    # Line 1254
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee1d0:
    # Line 1257
    li	$v0,0x8362
    sltu	$a5,$s1,$v0
    bnez	$a5,.L0d9ee0e4
    sltu	$a6,$v0,$s1
    beqz	$a6,.L0d9ee198
    # Line 1276
    li	$a2,6407
    # Line 1257
    li	$a7,0x8363
    beq	$s1,$a7,.L0d9ee198
    # Line 1276
    li	$a2,6407
    b	.L0d9edf40
    # Line 1303
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee1fc:
    # Line 1236
    beq	$a6,$t0,.L0d9edef8
    # Line 1257
    li	$v0,0x8034
    b	.L0d9edfd4
    # Line 1254
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee20c:
    # Line 1236
    beq	$s0,$t1,.L0d9edef8
    # Line 1257
    li	$v0,0x8034
    b	.L0d9edfd4
    # Line 1254
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee21c:
    # Line 1257
    beq	$s1,$t2,.L0d9edffc
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9edf40
    # Line 1303
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee22c:
    # Line 1233
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9ee230:
    jal	__gllc_InvalidValue
    move	$a0,$s3
    b	.L0d9ee0c8
    # Line 1255
    ld	$gp,80($sp)
.L0d9ee240:
    # Line 1257
    beq	$s1,$t3,.L0d9edffc
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9edf40
    # Line 1303
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee250:
    # Line 1257
    beq	$s1,$t8,.L0d9ee0fc
    # Line 1292
    li	$t1,6408
    b	.L0d9edf40
    # Line 1303
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 1257
    li	$t9,5126
.L0d9ee264:
    bne	$s1,$t9,.L0d9edf40
    # Line 1303
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    b	.L0d9edffc
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
.L0d9ee274:
    # Line 1236
    li	$ra,0x80e0
    beq	$a6,$ra,.L0d9edef8
    # Line 1257
    li	$v0,0x8034
    b	.L0d9edfd4
    # Line 1254
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee288:
    # Line 1257
    li	$v0,0x8366
    sltu	$at,$s1,$v0
    bnez	$at,.L0d9ee2d0
    li	$a1,0x8365
    sltu	$v1,$v0,$s1
    beqz	$v1,.L0d9ee0fc
    # Line 1292
    li	$t1,6408
    b	.L0d9edf40
    # Line 1303
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee2ac:
    # Line 1257
    li	$a0,0x8035
    beq	$s1,$a0,.L0d9ee0fc
    # Line 1292
    li	$t1,6408
    b	.L0d9edf40
    # Line 1303
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee2c0:
    # Line 1260
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9ee0c8
    # Line 1255
    ld	$gp,80($sp)
.L0d9ee2d0:
    # Line 1257
    beq	$s1,$a1,.L0d9ee0fc
    # Line 1292
    li	$t1,6408
    b	.L0d9edf40
    # Line 1303
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee2e0:
    # Line 1257
    sltiu	$a2,$a7,6656
    bnez	$a2,.L0d9ee264
    li	$t9,5126
    sltiu	$a3,$a7,6657
    bnez	$a3,.L0d9edffc
    # Line 1307
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9edf40
    # Line 1303
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.end __gllc_TexSubImage2DEXT

# Function: __glle_TexSubImage3DEXT
# Declared: Line 1333 (Source lines: 1334-1344)
# Address: 0x0d9ee300 - 0x0d9ee394 (Size: 148 bytes, Frame: 192)
.globl __glle_TexSubImage3DEXT
.ent __glle_TexSubImage3DEXT
__glle_TexSubImage3DEXT:
    # Line 1334
    addiu	$sp,$sp,-64
    sd	$ra,32($sp)
    sd	$s8,40($sp)
    move	$s8,$a0
    # Line 1339
    lw	$a0,4112($zero)
    lw	$a7,24($s8)
    lw	$a6,20($s8)
    lw	$a5,16($s8)
    lw	$a4,12($s8)
    lw	$a3,8($s8)
    lw	$a2,4($s8)
    lw	$a1,0($s8)
    sd	$gp,48($sp)
    lw	$t0,28($s8)
    sw	$t0,4($sp)
    # Line 1334
    lui	$v1,0x6
    # Line 1339
    lw	$t0,32($s8)
    # Line 1334
    addiu	$v1,$v1,10892
    # Line 1339
    sw	$t0,12($sp)
    # Line 1334
    addu	$gp,$t9,$v1
    # Line 1339
    # lw $t9, -23792($gp) # &__gllei_TexSubImage3DEXT
    lw	$at,36($s8)
    addiu	$v0,$s8,44
    sw	$v0,28($sp)
    jal	__gllei_TexSubImage3DEXT
    sw	$at,20($sp)
    # Line 1344
    lw	$v0,40($s8)
    ld	$ra,32($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,48($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    addiu	$v0,$v0,44
.end __glle_TexSubImage3DEXT

# Function: __gllc_TexSubImage3DEXT
# Declared: Line 1347 (Source lines: 1351-1449)
# Address: 0x0d9ee3a0 - 0x0d9ee82c (Size: 1164 bytes, Frame: 192)
.globl __gllc_TexSubImage3DEXT
.ent __gllc_TexSubImage3DEXT
__gllc_TexSubImage3DEXT:
    # Line 1351
    addiu	$sp,$sp,-192
    sd	$s4,80($sp)
    # Line 1355
    lw	$s4,4112($zero)
    sd	$ra,96($sp)
    sd	$s0,104($sp)
    # Line 1351
    move	$v0,$a5
    sd	$s3,72($sp)
    move	$s3,$a7
    sd	$s2,64($sp)
    lui	$at,0x6
    move	$s2,$a6
    sd	$s1,112($sp)
    addiu	$at,$at,10732
    sd	$gp,88($sp)
    # Line 1357
    bltz	$a5,.L0d9ee78c
    # Line 1351
    addu	$gp,$t9,$at
    # Line 1357
    bltz	$a6,.L0d9ee790
    # Line 1358
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 1357
    bltz	$a7,.L0d9ee790
    # Line 1358
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    sd	$a3,24($sp)
    sd	$a2,16($sp)
    # Line 1361
    lw	$s0,196($sp)
    sd	$a0,56($sp)
    sd	$a4,48($sp)
    sltiu	$a6,$s0,6408
    sd	$a1,40($sp)
    bnez	$a6,.L0d9ee45c
    sd	$a5,32($sp)
    sltiu	$v0,$s0,6409
    bnez	$v0,.L0d9ee498
    # Line 1379
    lw	$s1,204($sp)
    # Line 1361
    li	$v0,0x8000
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0d9ee6d8
    sltu	$a0,$v0,$s0
    beqz	$a0,.L0d9ee498
    # Line 1379
    lw	$s1,204($sp)
    # Line 1361
    li	$v0,0x80e1
    sltu	$a1,$s0,$v0
    li	$t3,0x80e0
    bnez	$a1,.L0d9ee7d8
    sltu	$a2,$v0,$s0
    beqz	$a2,.L0d9ee498
    # Line 1379
    lw	$s1,204($sp)
    b	.L0d9ee704
    # Line 1376
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee45c:
    # Line 1361
    sltiu	$a3,$s0,6405
    bnez	$a3,.L0d9ee65c
    sltiu	$t0,$s0,6403
    sltiu	$a4,$s0,6406
    bnez	$a4,.L0d9ee498
    # Line 1379
    lw	$s1,204($sp)
    # Line 1361
    sltiu	$a5,$s0,6407
    bnez	$a5,.L0d9ee7a0
    li	$t0,6406
    bnez	$a6,.L0d9ee498
    # Line 1379
    lw	$s1,204($sp)
    b	.L0d9ee704
    # Line 1376
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee490:
    # Line 1361
    bne	$s0,$a6,.L0d9ee700
    # Line 1379
    lw	$s1,204($sp)
.L0d9ee498:
    li	$v0,0x8034
    sltu	$a7,$s1,$v0
    bnez	$a7,.L0d9ee4f0
    sltu	$t0,$v0,$s1
    beqz	$t0,.L0d9ee6a4
    # Line 1408
    li	$t9,6408
    # Line 1379
    li	$v0,0x8364
    sltu	$t1,$s1,$v0
    bnez	$t1,.L0d9ee714
    sltu	$t2,$v0,$s1
    beqz	$t2,.L0d9ee520
    # Line 1392
    li	$a1,6407
    # Line 1379
    li	$v0,0x8367
    sltu	$t3,$s1,$v0
    bnez	$t3,.L0d9ee7e8
    sltu	$t8,$v0,$s1
    beqz	$t8,.L0d9ee6a0
    li	$t9,0x8368
    beq	$s1,$t9,.L0d9ee6a4
    # Line 1408
    li	$t9,6408
    b	.L0d9ee764
    # Line 1419
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee4f0:
    # Line 1379
    sltiu	$ra,$s1,5124
    bnez	$ra,.L0d9ee53c
    sltiu	$at,$s1,5125
    bnez	$at,.L0d9ee55c
    # Line 1423
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    # Line 1379
    li	$v0,0x8032
    sltu	$v1,$s1,$v0
    bnez	$v1,.L0d9ee774
    sltiu	$a6,$s1,5126
    sltu	$a0,$v0,$s1
    bnez	$a0,.L0d9ee7b0
.L0d9ee51c:
    # Line 1392
    li	$a1,6407
.L0d9ee520:
    beq	$s0,$a1,.L0d9ee55c
    # Line 1423
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    # Line 1396
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ee63c
    ld	$s2,64($sp)
.L0d9ee53c:
    # Line 1379
    sltiu	$v0,$s1,5122
    bnez	$v0,.L0d9ee73c
    sltiu	$a2,$s1,5123
    bnez	$a2,.L0d9ee55c
    # Line 1423
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    # Line 1379
    li	$a3,5123
    bne	$s1,$a3,.L0d9ee760
    # Line 1423
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
.L0d9ee55c:
    move	$a1,$s2
    move	$a2,$s3
    move	$a3,$s0
    ld	$a0,32($sp)
    jal	__glImageSize3D
    move	$a4,$s1
    # Line 1426
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 1424
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1426
    move	$a0,$s4
    # Line 1424
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 1426
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,44
    beqz	$v0,.L0d9ee638
    nop
    # Line 1440
    sw	$s1,52($v0)
    # Line 1439
    sw	$s0,48($v0)
    # Line 1438
    sw	$s3,44($v0)
    # Line 1437
    sw	$s2,40($v0)
    # Line 1428
    li	$a3,209
    sh	$a3,12($v0)
    # Line 1431
    ld	$a5,56($sp)
    # Line 1432
    ld	$a6,40($sp)
    # Line 1433
    ld	$a7,16($sp)
    # Line 1434
    ld	$t0,24($sp)
    # Line 1435
    ld	$t1,48($sp)
    # Line 1436
    ld	$t2,32($sp)
    # Line 1441
    ld	$a4,0($sp)
    sw	$a4,56($v0)
    # Line 1436
    sw	$t2,36($v0)
    # Line 1435
    sw	$t1,32($v0)
    # Line 1434
    sw	$t0,28($v0)
    # Line 1433
    sw	$a7,24($v0)
    # Line 1432
    sw	$a6,20($v0)
    # Line 1441
    blez	$a4,.L0d9ee624
    # Line 1431
    sw	$a5,16($v0)
    sd	$v0,8($sp)
    # Line 1444
    move	$a0,$s4
    # lw $t9, -25848($gp) # &__glFillImage3D
    move	$a2,$s2
    move	$a3,$s3
    ld	$a7,8($sp)
    ld	$a1,32($sp)
    move	$a4,$s0
    move	$a5,$s1
    lw	$a6,212($sp)
    jal	__glFillImage3D
    addiu	$a7,$a7,60
    ld	$v0,8($sp)
.L0d9ee624:
    # Line 1449
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    move	$a0,$s4
    move	$a1,$v0
    jal	__glDlistAppendOp
    la	$a2,__glle_TexSubImage3DEXT
.L0d9ee638:
    ld	$s2,64($sp)
.L0d9ee63c:
    ld	$s3,72($sp)
    ld	$s4,80($sp)
    ld	$ra,96($sp)
    ld	$s0,104($sp)
    ld	$s1,112($sp)
    # Line 1377
    ld	$gp,88($sp)
    jr	$ra
    addiu	$sp,$sp,192
.L0d9ee65c:
    # Line 1361
    bnez	$t0,.L0d9ee490
    li	$a6,6400
    sltiu	$t1,$s0,6404
    bnez	$t1,.L0d9ee498
    # Line 1379
    lw	$s1,204($sp)
    # Line 1361
    li	$t2,6404
    beq	$s0,$t2,.L0d9ee498
    # Line 1379
    lw	$s1,204($sp)
    b	.L0d9ee704
    # Line 1376
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee684:
    # Line 1379
    li	$v0,0x8036
    sltu	$t3,$s1,$v0
    li	$ra,0x8035
    bnez	$t3,.L0d9ee80c
    sltu	$t8,$v0,$s1
    bnez	$t8,.L0d9ee764
    # Line 1419
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee6a0:
    # Line 1408
    li	$t9,6408
.L0d9ee6a4:
    beq	$s0,$t9,.L0d9ee55c
    # Line 1423
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    # Line 1408
    li	$ra,0x8000
    beq	$s0,$ra,.L0d9ee55c
    # Line 1423
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    # Line 1408
    li	$at,0x80e1
    beq	$s0,$at,.L0d9ee55c
    # Line 1423
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    # Line 1414
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ee63c
    ld	$s2,64($sp)
.L0d9ee6d8:
    # Line 1361
    sltiu	$v0,$s0,6410
    bnez	$v0,.L0d9ee6f4
    sltiu	$v1,$s0,6411
    bnez	$v1,.L0d9ee498
    # Line 1379
    lw	$s1,204($sp)
    b	.L0d9ee704
    # Line 1376
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee6f4:
    # Line 1361
    li	$a0,6409
    beq	$s0,$a0,.L0d9ee498
    # Line 1379
    lw	$s1,204($sp)
.L0d9ee700:
    # Line 1376
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee704:
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    b	.L0d9ee63c
    ld	$s2,64($sp)
.L0d9ee714:
    # Line 1379
    li	$v0,0x8362
    sltu	$a1,$s1,$v0
    bnez	$a1,.L0d9ee684
    sltu	$a2,$v0,$s1
    beqz	$a2,.L0d9ee51c
    li	$a3,0x8363
    beq	$s1,$a3,.L0d9ee520
    # Line 1392
    li	$a1,6407
    b	.L0d9ee764
    # Line 1419
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee73c:
    # Line 1379
    sltiu	$a4,$s1,5121
    bnez	$a4,.L0d9ee758
    li	$a5,5120
    bnez	$v0,.L0d9ee55c
    # Line 1423
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    b	.L0d9ee764
    # Line 1419
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee758:
    # Line 1379
    beq	$s1,$a5,.L0d9ee55c
    # Line 1423
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
.L0d9ee760:
    # Line 1419
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee764:
    jal	__gllc_InvalidEnum
    move	$a0,$s4
    b	.L0d9ee63c
    ld	$s2,64($sp)
.L0d9ee774:
    # Line 1379
    bnez	$a6,.L0d9ee7c4
    sltiu	$a7,$s1,5127
    bnez	$a7,.L0d9ee55c
    # Line 1423
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    b	.L0d9ee764
    # Line 1419
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee78c:
    # Line 1358
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9ee790:
    jal	__gllc_InvalidValue
    move	$a0,$s4
    b	.L0d9ee63c
    ld	$s2,64($sp)
.L0d9ee7a0:
    # Line 1361
    beq	$s0,$t0,.L0d9ee498
    # Line 1379
    lw	$s1,204($sp)
    b	.L0d9ee704
    # Line 1376
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee7b0:
    # Line 1379
    li	$t1,0x8033
    beq	$s1,$t1,.L0d9ee6a4
    # Line 1408
    li	$t9,6408
    b	.L0d9ee764
    # Line 1419
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee7c4:
    # Line 1379
    li	$t2,5125
    beq	$s1,$t2,.L0d9ee55c
    # Line 1423
    nop	# was lw $t9, -25852($gp) # &__glImageSize3D
    b	.L0d9ee764
    # Line 1419
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee7d8:
    # Line 1361
    beq	$s0,$t3,.L0d9ee498
    # Line 1379
    lw	$s1,204($sp)
    b	.L0d9ee704
    # Line 1376
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee7e8:
    # Line 1379
    li	$v0,0x8366
    sltu	$t8,$s1,$v0
    bnez	$t8,.L0d9ee81c
    li	$at,0x8365
    sltu	$t9,$v0,$s1
    beqz	$t9,.L0d9ee6a4
    # Line 1408
    li	$t9,6408
    b	.L0d9ee764
    # Line 1419
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee80c:
    # Line 1379
    beq	$s1,$ra,.L0d9ee6a4
    # Line 1408
    li	$t9,6408
    b	.L0d9ee764
    # Line 1419
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ee81c:
    # Line 1379
    beq	$s1,$at,.L0d9ee6a4
    # Line 1408
    li	$t9,6408
    b	.L0d9ee764
    # Line 1419
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.end __gllc_TexSubImage3DEXT

# Function: __glle_ConvolutionFilter1DEXT
# Declared: Line 1452 (Source lines: 1453-1482)
# Address: 0x0d9ee830 - 0x0d9ee930 (Size: 256 bytes, Frame: 32)
.globl __glle_ConvolutionFilter1DEXT
.ent __glle_ConvolutionFilter1DEXT
__glle_ConvolutionFilter1DEXT:
    # Line 1455
    lw	$v0,4112($zero)
    # Line 1453
    addiu	$sp,$sp,-32
    sd	$ra,24($sp)
    # Line 1460
    lw	$a2,4120($zero)
    # Line 1453
    sd	$s0,16($sp)
    lui	$at,0x6
    move	$s0,$a0
    # Line 1455
    sd	$v0,0($sp)
    # Line 1453
    addiu	$at,$at,9564
    sd	$gp,8($sp)
    # Line 1460
    beqz	$a2,.L0d9ee8b8
    # Line 1453
    addu	$gp,$t9,$at
    # Line 1460
    li	$v0,2
    beq	$a2,$v0,.L0d9ee8a0
    # Line 1466
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1467
    lw	$v0,20($s0)
    ld	$ra,24($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    # Line 1482
    ld	$gp,8($sp)
    # Line 1467
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    # Line 1482
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1467
    addiu	$v0,$v0,24
.L0d9ee8a0:
    # Line 1463
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    # Line 1464
    sw	$zero,4120($zero)
.L0d9ee8b8:
    # Line 1472
    lw	$v0,4($s0)
    ld	$at,0($sp)
    # Line 1474
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 1472
    sw	$v0,776($at)
    # Line 1473
    lw	$ra,8($s0)
    sw	$ra,832($at)
    # Line 1474
    jal	__glElementsPerGroup
    lw	$a0,4($s0)
    ld	$a0,0($sp)
    sw	$v0,780($a0)
    # Line 1477
    lw	$t9,12584($a0)
    li	$a7,1
    lw	$a4,16($s0)
    li	$a6,0x8010
    addiu	$a5,$s0,24
    lw	$a3,12($s0)
    li	$a2,1
    jalr	$t9
    lw	$a1,8($s0)
    # Line 1482
    lw	$v0,20($s0)
    ld	$ra,24($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,8($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,24
.end __glle_ConvolutionFilter1DEXT

# Function: __gllc_ConvolutionFilter1DEXT
# Declared: Line 1485 (Source lines: 1488-1610)
# Address: 0x0d9ee930 - 0x0d9eee60 (Size: 1328 bytes, Frame: 224)
.globl __gllc_ConvolutionFilter1DEXT
.ent __gllc_ConvolutionFilter1DEXT
__gllc_ConvolutionFilter1DEXT:
    # Line 1488
    addiu	$sp,$sp,-96
    sd	$s3,40($sp)
    sd	$s4,48($sp)
    sd	$s2,32($sp)
    move	$v0,$a5
    move	$s2,$a4
    sd	$s0,56($sp)
    move	$s0,$a3
    move	$s4,$a2
    # Line 1493
    lw	$s3,4112($zero)
    # Line 1488
    sd	$s1,64($sp)
    # Line 1493
    li	$at,0x8010
    # Line 1488
    lui	$v1,0x6
    move	$s1,$a1
    sd	$ra,80($sp)
    addiu	$v1,$v1,9308
    sd	$gp,72($sp)
    # Line 1493
    beq	$a0,$at,.L0d9ee9ac
    # Line 1488
    addu	$gp,$t9,$v1
    # Line 1495
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
.L0d9ee988:
    ld	$s2,32($sp)
.L0d9ee98c:
    ld	$s3,40($sp)
    ld	$s4,48($sp)
    ld	$ra,80($sp)
    ld	$s0,56($sp)
    ld	$s1,64($sp)
    # Line 1537
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9ee9ac:
    # Line 1500
    bltz	$a2,.L0d9eece0
    # Line 1501
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 1500
    lw	$a1,840($s3)
    slt	$a1,$a1,$a2
    bnez	$a1,.L0d9eece0
    # Line 1501
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 1505
    li	$a1,6406
    sd	$a0,24($sp)
    beq	$a1,$s1,.L0d9eea1c
    sd	$a5,16($sp)
    li	$a2,6407
    beq	$s1,$a2,.L0d9eea1c
    li	$a3,6408
    beq	$s1,$a3,.L0d9eea20
    # Line 1518
    sltiu	$v0,$s0,6408
    # Line 1505
    li	$a4,6409
    beq	$s1,$a4,.L0d9eea1c
    li	$a5,6410
    beq	$s1,$a5,.L0d9eea20
    # Line 1518
    sltiu	$v0,$s0,6408
    # Line 1505
    li	$a6,0x8049
    beq	$s1,$a6,.L0d9eea20
    # Line 1518
    sltiu	$v0,$s0,6408
    # Line 1514
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9ee98c
    ld	$s2,32($sp)
.L0d9eea1c:
    # Line 1518
    sltiu	$v0,$s0,6408
.L0d9eea20:
    bnez	$v0,.L0d9eea68
    sltiu	$a7,$s0,6409
    bnez	$a7,.L0d9eea90
    # Line 1539
    li	$v0,0x8034
    # Line 1518
    li	$v0,0x8000
    sltu	$t0,$s0,$v0
    bnez	$t0,.L0d9eecf0
    sltu	$t1,$v0,$s0
    beqz	$t1,.L0d9eea90
    # Line 1539
    li	$v0,0x8034
    # Line 1518
    li	$v0,0x80e1
    sltu	$t2,$s0,$v0
    bnez	$t2,.L0d9eedd0
    sltu	$t3,$v0,$s0
    beqz	$t3,.L0d9eea90
    # Line 1539
    li	$v0,0x8034
    b	.L0d9eeb60
    # Line 1536
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eea68:
    # Line 1518
    sltiu	$t8,$s0,6405
    bnez	$t8,.L0d9eeb40
    sltiu	$t9,$s0,6406
    bnez	$t9,.L0d9eea8c
    sltiu	$ra,$s0,6407
    bnez	$ra,.L0d9eed78
    nop
    beqz	$v0,.L0d9eeb60
    # Line 1536
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eea8c:
    # Line 1539
    li	$v0,0x8034
.L0d9eea90:
    sltu	$at,$s2,$v0
    beqz	$at,.L0d9eeb00
    sltu	$a5,$v0,$s2
    sltiu	$v0,$s2,5125
    bnez	$v0,.L0d9eebc0
    sltiu	$v0,$s2,5122
    sltiu	$v1,$s2,5126
    bnez	$v1,.L0d9eec00
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1539
    li	$v0,0x8032
    sltu	$a0,$s2,$v0
    beqz	$a0,.L0d9eecb0
    sltiu	$a1,$s2,6656
    bnez	$a1,.L0d9eedbc
    sltiu	$a2,$s2,6657
    bnez	$a2,.L0d9eee18
.L0d9eead0:
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eead4:
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9ee98c
    ld	$s2,32($sp)
.L0d9eeae4:
    # Line 1518
    bne	$s0,$a3,.L0d9eeb60
    # Line 1536
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 1539
    li	$v0,0x8034
    sltu	$a4,$s2,$v0
    bnez	$a4,.L0d9eec90
    sltiu	$a7,$s2,5125
    sltu	$a5,$v0,$s2
.L0d9eeb00:
    beqz	$a5,.L0d9eeb88
    li	$v0,0x8364
    sltu	$a6,$s2,$v0
    bnez	$a6,.L0d9eed0c
    sltu	$a7,$v0,$s2
    beqz	$a7,.L0d9eecbc
    li	$v0,0x8367
    sltu	$t0,$s2,$v0
    bnez	$t0,.L0d9eede4
    sltu	$t1,$v0,$s2
    beqz	$t1,.L0d9eeb88
    li	$t2,0x8368
    beq	$s2,$t2,.L0d9eeb8c
    # Line 1574
    li	$v0,6408
    b	.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eeb40:
    # Line 1518
    sltiu	$t3,$s0,6403
    bnez	$t3,.L0d9eeae4
    li	$a3,6400
    sltiu	$t8,$s0,6404
    bnez	$t8,.L0d9eea8c
    li	$t9,6404
    beq	$s0,$t9,.L0d9eea8c
    # Line 1536
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eeb60:
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9ee98c
    ld	$s2,32($sp)
.L0d9eeb70:
    # Line 1539
    li	$v0,0x8036
    sltu	$ra,$s2,$v0
    bnez	$ra,.L0d9eee04
    sltu	$at,$v0,$s2
    bnez	$at,.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eeb88:
    # Line 1574
    li	$v0,6408
.L0d9eeb8c:
    beq	$s0,$v0,.L0d9eec00
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1574
    li	$v1,0x8000
    beq	$s0,$v1,.L0d9eec00
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1574
    li	$a0,0x80e1
    beq	$s0,$a0,.L0d9eebfc
    # Line 1580
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ee98c
    ld	$s2,32($sp)
    # Line 1539
    sltiu	$v0,$s2,5122
.L0d9eebc0:
    bnez	$v0,.L0d9eebf0
    sltiu	$a4,$s2,5121
    sltiu	$a1,$s2,5123
    bnez	$a1,.L0d9eec00
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1539
    sltiu	$a2,$s2,5124
    bnez	$a2,.L0d9eed98
    sltiu	$a3,$s2,5125
    bnez	$a3,.L0d9eec00
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eebf0:
    # Line 1539
    bnez	$a4,.L0d9eed88
    li	$t0,5120
    beqz	$v0,.L0d9eead0
.L0d9eebfc:
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
.L0d9eec00:
    move	$a0,$s4
    move	$a3,$s2
    move	$a2,$s0
    jal	__glImageSize
    li	$a1,1
    # Line 1592
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 1590
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1592
    move	$a0,$s3
    # Line 1590
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 1592
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,24
    beqz	$v0,.L0d9ee988
    nop
    sd	$v0,8($sp)
    # Line 1602
    sw	$s2,32($v0)
    # Line 1601
    sw	$s0,28($v0)
    # Line 1600
    sw	$s4,24($v0)
    # Line 1599
    sw	$s1,20($v0)
    # Line 1595
    li	$a3,195
    sh	$a3,12($v0)
    # Line 1603
    ld	$a4,0($sp)
    # Line 1598
    ld	$a5,24($sp)
    # Line 1603
    sw	$a4,36($v0)
    # Line 1605
    blez	$a4,.L0d9eec74
    # Line 1598
    sw	$a5,16($v0)
    # Line 1605
    ld	$a6,16($sp)
    bnez	$a6,.L0d9eed34
.L0d9eec74:
    # Line 1610
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
.L0d9eec78:
    ld	$a1,8($sp)
    move	$a0,$s3
    jal	__glDlistAppendOp
    la	$a2,__glle_ConvolutionFilter1DEXT
    b	.L0d9ee98c
    ld	$s2,32($sp)
.L0d9eec90:
    # Line 1539
    bnez	$a7,.L0d9eebc0
    sltiu	$v0,$s2,5122
    sltiu	$t0,$s2,5126
    bnez	$t0,.L0d9eec00
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1539
    li	$v0,0x8032
    sltu	$t1,$s2,$v0
    bnez	$t1,.L0d9eee40
.L0d9eecb0:
    sltu	$t2,$v0,$s2
    bnez	$t2,.L0d9eedac
    li	$t2,0x8033
.L0d9eecbc:
    # Line 1558
    li	$t3,6407
.L0d9eecc0:
    beq	$s0,$t3,.L0d9eec00
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1562
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ee98c
    ld	$s2,32($sp)
    # Line 1501
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9eece0:
    jal	__gllc_InvalidValue
    move	$a0,$s3
    b	.L0d9ee98c
    ld	$s2,32($sp)
.L0d9eecf0:
    # Line 1518
    sltiu	$t8,$s0,6410
    bnez	$t8,.L0d9eed64
    sltiu	$t9,$s0,6411
    bnez	$t9,.L0d9eea90
    # Line 1539
    li	$v0,0x8034
    b	.L0d9eeb60
    # Line 1536
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eed0c:
    # Line 1539
    li	$v0,0x8362
    sltu	$ra,$s2,$v0
    bnez	$ra,.L0d9eeb70
    sltu	$at,$v0,$s2
    beqz	$at,.L0d9eecbc
    li	$v0,0x8363
    beq	$s2,$v0,.L0d9eecc0
    # Line 1558
    li	$t3,6407
    b	.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eed34:
    # Line 1606
    move	$a0,$s3
    # lw $t9, -25844($gp) # &__glFillImage
    move	$a1,$s4
    move	$a4,$s2
    ld	$a6,8($sp)
    move	$a3,$s0
    li	$a2,1
    ld	$a5,16($sp)
    jal	__glFillImage
    addiu	$a6,$a6,40
    b	.L0d9eec78
    # Line 1610
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
.L0d9eed64:
    # Line 1518
    li	$a7,6409
    beq	$s0,$a7,.L0d9eea90
    # Line 1539
    li	$v0,0x8034
    b	.L0d9eeb60
    # Line 1536
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eed78:
    # Line 1518
    beq	$a1,$s0,.L0d9eea90
    # Line 1539
    li	$v0,0x8034
    b	.L0d9eeb60
    # Line 1536
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eed88:
    # Line 1539
    beq	$s2,$t0,.L0d9eec00
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eed98:
    # Line 1539
    li	$t1,5123
    beq	$s2,$t1,.L0d9eec00
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eedac:
    # Line 1539
    beq	$s2,$t2,.L0d9eeb8c
    # Line 1574
    li	$v0,6408
    b	.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eedbc:
    # Line 1539
    li	$t3,5126
.L0d9eedc0:
    bne	$s2,$t3,.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    b	.L0d9eec00
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
.L0d9eedd0:
    # Line 1518
    li	$t8,0x80e0
    beq	$s0,$t8,.L0d9eea90
    # Line 1539
    li	$v0,0x8034
    b	.L0d9eeb60
    # Line 1536
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eede4:
    # Line 1539
    li	$v0,0x8366
    sltu	$t9,$s2,$v0
    bnez	$t9,.L0d9eee2c
    sltu	$ra,$v0,$s2
    beqz	$ra,.L0d9eeb8c
    # Line 1574
    li	$v0,6408
    b	.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eee04:
    # Line 1539
    li	$at,0x8035
    beq	$s2,$at,.L0d9eeb8c
    # Line 1574
    li	$v0,6408
    b	.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eee18:
    # Line 1542
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9ee98c
    ld	$s2,32($sp)
.L0d9eee2c:
    # Line 1539
    li	$v0,0x8365
    beq	$s2,$v0,.L0d9eeb8c
    # Line 1574
    li	$v0,6408
    b	.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9eee40:
    # Line 1539
    sltiu	$v1,$s2,6656
    bnez	$v1,.L0d9eedc0
    li	$t3,5126
    sltiu	$a0,$s2,6657
    bnez	$a0,.L0d9eec00
    # Line 1589
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9eead4
    # Line 1585
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.end __gllc_ConvolutionFilter1DEXT

# Function: __glle_ConvolutionFilter2DEXT
# Declared: Line 1613 (Source lines: 1614-1646)
# Address: 0x0d9eee60 - 0x0d9eef68 (Size: 264 bytes, Frame: 32)
.globl __glle_ConvolutionFilter2DEXT
.ent __glle_ConvolutionFilter2DEXT
__glle_ConvolutionFilter2DEXT:
    # Line 1616
    lw	$v0,4112($zero)
    # Line 1614
    addiu	$sp,$sp,-32
    sd	$ra,24($sp)
    # Line 1622
    lw	$a2,4120($zero)
    # Line 1614
    sd	$s0,16($sp)
    lui	$at,0x6
    move	$s0,$a0
    # Line 1616
    sd	$v0,0($sp)
    # Line 1614
    addiu	$at,$at,7980
    sd	$gp,8($sp)
    # Line 1622
    beqz	$a2,.L0d9eeee8
    # Line 1614
    addu	$gp,$t9,$at
    # Line 1622
    li	$v0,2
    beq	$a2,$v0,.L0d9eeed4
    # Line 1625
    ld	$t9,0($sp)
    # Line 1628
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1629
    lw	$v0,24($s0)
    ld	$ra,24($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    # Line 1646
    ld	$gp,8($sp)
    # Line 1629
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    # Line 1646
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1629
    addiu	$v0,$v0,28
.L0d9eeed4:
    # Line 1625
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    # Line 1626
    sw	$zero,4120($zero)
.L0d9eeee8:
    # Line 1637
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 1634
    ld	$at,0($sp)
    lw	$v1,4($s0)
    sw	$v1,860($at)
    # Line 1635
    lw	$v0,8($s0)
    sw	$v0,916($at)
    # Line 1636
    lw	$ra,12($s0)
    sw	$ra,920($at)
    # Line 1637
    jal	__glElementsPerGroup
    lw	$a0,4($s0)
    ld	$a0,0($sp)
    sw	$v0,864($a0)
    # Line 1640
    lw	$a6,0($s0)
    lw	$a4,20($s0)
    lw	$t9,12584($a0)
    lw	$a3,16($s0)
    li	$a7,1
    lw	$a2,12($s0)
    addiu	$a5,$s0,28
    jalr	$t9
    lw	$a1,8($s0)
    # Line 1646
    lw	$v0,24($s0)
    ld	$ra,24($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,8($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,28
.end __glle_ConvolutionFilter2DEXT

# Function: __gllc_ConvolutionFilter2DEXT
# Declared: Line 1649 (Source lines: 1653-1776)
# Address: 0x0d9eef70 - 0x0d9ef498 (Size: 1320 bytes, Frame: 224)
.globl __gllc_ConvolutionFilter2DEXT
.ent __gllc_ConvolutionFilter2DEXT
__gllc_ConvolutionFilter2DEXT:
    # Line 1653
    addiu	$sp,$sp,-96
    sd	$s3,40($sp)
    sd	$s4,48($sp)
    sd	$s0,72($sp)
    move	$v0,$a6
    sd	$s2,32($sp)
    move	$s2,$a5
    move	$s0,$a4
    sd	$s5,56($sp)
    move	$s5,$a3
    move	$s4,$a2
    # Line 1658
    lw	$s3,4112($zero)
    # Line 1653
    sd	$s1,64($sp)
    # Line 1658
    li	$at,0x8011
    # Line 1653
    lui	$v1,0x6
    move	$s1,$a1
    sd	$ra,88($sp)
    addiu	$v1,$v1,7708
    sd	$gp,80($sp)
    # Line 1658
    beq	$a0,$at,.L0d9eeff8
    # Line 1653
    addu	$gp,$t9,$v1
    # Line 1660
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
.L0d9eefd0:
    ld	$s2,32($sp)
.L0d9eefd4:
    ld	$s3,40($sp)
    ld	$s4,48($sp)
    ld	$s5,56($sp)
    ld	$ra,88($sp)
    ld	$s1,64($sp)
    ld	$s0,72($sp)
    # Line 1702
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9eeff8:
    # Line 1665
    bltz	$a2,.L0d9ef3c0
    # Line 1666
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 1665
    bltz	$a3,.L0d9ef3c0
    # Line 1666
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 1670
    li	$a1,6406
    sd	$a0,24($sp)
    beq	$a1,$s1,.L0d9ef05c
    sd	$a6,16($sp)
    li	$a0,6407
    beq	$s1,$a0,.L0d9ef05c
    li	$a2,6408
    beq	$s1,$a2,.L0d9ef05c
    li	$a3,6409
    beq	$s1,$a3,.L0d9ef05c
    li	$a4,6410
    beq	$s1,$a4,.L0d9ef060
    # Line 1683
    sltiu	$v0,$s0,6408
    # Line 1670
    li	$a5,0x8049
    beq	$s1,$a5,.L0d9ef060
    # Line 1683
    sltiu	$v0,$s0,6408
    # Line 1679
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9eefd4
    ld	$s2,32($sp)
.L0d9ef05c:
    # Line 1683
    sltiu	$v0,$s0,6408
.L0d9ef060:
    bnez	$v0,.L0d9ef0a4
    sltiu	$a6,$s0,6409
    bnez	$a6,.L0d9ef0e8
    li	$v0,0x8000
    sltu	$a7,$s0,$v0
    bnez	$a7,.L0d9ef0d4
    sltiu	$ra,$s0,6410
    sltu	$t0,$v0,$s0
    beqz	$t0,.L0d9ef0e8
    li	$v0,0x80e1
    sltu	$t1,$s0,$v0
    bnez	$t1,.L0d9ef408
    sltu	$t2,$v0,$s0
    beqz	$t2,.L0d9ef0ec
    # Line 1704
    li	$v0,0x8034
    b	.L0d9ef1c4
    # Line 1701
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef0a4:
    # Line 1683
    sltiu	$t3,$s0,6405
    bnez	$t3,.L0d9ef1a8
    sltiu	$t9,$s0,6403
    sltiu	$t8,$s0,6406
    bnez	$t8,.L0d9ef0e8
    sltiu	$t9,$s0,6407
    bnez	$t9,.L0d9ef39c
    nop
    bnez	$v0,.L0d9ef0ec
    # Line 1704
    li	$v0,0x8034
    b	.L0d9ef1c4
    # Line 1701
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef0d4:
    # Line 1683
    bnez	$ra,.L0d9ef38c
    li	$a7,6409
    sltiu	$at,$s0,6411
    beqz	$at,.L0d9ef1c4
    # Line 1701
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef0e8:
    # Line 1704
    li	$v0,0x8034
.L0d9ef0ec:
    sltu	$v1,$s2,$v0
    beqz	$v1,.L0d9ef15c
    sltiu	$a0,$s2,5125
    bnez	$a0,.L0d9ef218
    sltiu	$v0,$s2,5122
    sltiu	$a1,$s2,5126
    bnez	$a1,.L0d9ef25c
    li	$v0,0x8032
    sltu	$a2,$s2,$v0
    beqz	$a2,.L0d9ef314
    sltu	$t2,$v0,$s2
    sltiu	$a3,$s2,6656
    bnez	$a3,.L0d9ef3f8
    li	$t3,5126
    sltiu	$a4,$s2,6657
    bnez	$a4,.L0d9ef450
.L0d9ef12c:
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef130:
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9eefd4
    ld	$s2,32($sp)
.L0d9ef140:
    # Line 1683
    li	$a5,6400
    bne	$s0,$a5,.L0d9ef1c4
    # Line 1701
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 1704
    li	$v0,0x8034
    sltu	$a6,$s2,$v0
    bnez	$a6,.L0d9ef2f8
    sltiu	$a7,$s2,5125
.L0d9ef15c:
    sltu	$a7,$v0,$s2
    beqz	$a7,.L0d9ef1ec
    # Line 1739
    li	$a1,6408
    # Line 1704
    li	$v0,0x8364
    sltu	$t0,$s2,$v0
    bnez	$t0,.L0d9ef334
    sltu	$t1,$v0,$s2
    beqz	$t1,.L0d9ef318
    li	$v0,0x8367
    sltu	$t2,$s2,$v0
    bnez	$t2,.L0d9ef41c
    sltu	$t3,$v0,$s2
    beqz	$t3,.L0d9ef1ec
    # Line 1739
    li	$a1,6408
    # Line 1704
    li	$t8,0x8368
    beq	$s2,$t8,.L0d9ef1ec
    # Line 1739
    li	$a1,6408
    b	.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef1a8:
    # Line 1683
    bnez	$t9,.L0d9ef140
    sltiu	$ra,$s0,6404
    bnez	$ra,.L0d9ef0ec
    # Line 1704
    li	$v0,0x8034
    # Line 1683
    li	$at,6404
    beq	$s0,$at,.L0d9ef0e8
    # Line 1701
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef1c4:
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9eefd4
    ld	$s2,32($sp)
.L0d9ef1d4:
    # Line 1704
    li	$v0,0x8036
    sltu	$v1,$s2,$v0
    bnez	$v1,.L0d9ef43c
    sltu	$a0,$v0,$s2
    bnez	$a0,.L0d9ef12c
    # Line 1739
    li	$a1,6408
.L0d9ef1ec:
    beq	$s0,$a1,.L0d9ef25c
    li	$a2,0x8000
    beq	$s0,$a2,.L0d9ef25c
    li	$a3,0x80e1
    beq	$s0,$a3,.L0d9ef25c
    # Line 1745
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9eefd4
    ld	$s2,32($sp)
.L0d9ef214:
    # Line 1704
    sltiu	$v0,$s2,5122
.L0d9ef218:
    bnez	$v0,.L0d9ef248
    sltiu	$a4,$s2,5123
    bnez	$a4,.L0d9ef260
    # Line 1754
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1704
    sltiu	$a5,$s2,5124
    bnez	$a5,.L0d9ef3d0
    li	$t1,5123
    sltiu	$a6,$s2,5125
    bnez	$a6,.L0d9ef260
    # Line 1754
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef248:
    # Line 1704
    sltiu	$a7,$s2,5121
    bnez	$a7,.L0d9ef3ac
    li	$t0,5120
    beqz	$v0,.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef25c:
    # Line 1754
    # lw $t9, -25856($gp) # &__glImageSize
.L0d9ef260:
    move	$a0,$s4
    move	$a1,$s5
    move	$a2,$s0
    jal	__glImageSize
    move	$a3,$s2
    # Line 1757
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 1755
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 1757
    move	$a0,$s3
    # Line 1755
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 1757
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,28
    beqz	$v0,.L0d9eefd0
    nop
    sd	$v0,8($sp)
    # Line 1768
    sw	$s2,36($v0)
    # Line 1767
    sw	$s0,32($v0)
    # Line 1766
    sw	$s5,28($v0)
    # Line 1765
    sw	$s4,24($v0)
    # Line 1764
    sw	$s1,20($v0)
    # Line 1760
    li	$a3,196
    sh	$a3,12($v0)
    # Line 1769
    ld	$a4,0($sp)
    # Line 1763
    ld	$a5,24($sp)
    # Line 1769
    sw	$a4,40($v0)
    # Line 1771
    blez	$a4,.L0d9ef2dc
    # Line 1763
    sw	$a5,16($v0)
    # Line 1771
    ld	$a6,16($sp)
    bnez	$a6,.L0d9ef360
    # Line 1772
    move	$a0,$s3
.L0d9ef2dc:
    # Line 1776
    # lw $t9, -31140($gp) # &__glDlistAppendOp
.L0d9ef2e0:
    ld	$a1,8($sp)
    move	$a0,$s3
    jal	__glDlistAppendOp
    la	$a2,__glle_ConvolutionFilter2DEXT
    b	.L0d9eefd4
    ld	$s2,32($sp)
.L0d9ef2f8:
    # Line 1704
    bnez	$a7,.L0d9ef214
    sltiu	$t0,$s2,5126
    bnez	$t0,.L0d9ef25c
    li	$v0,0x8032
    sltu	$t1,$s2,$v0
    bnez	$t1,.L0d9ef478
    sltu	$t2,$v0,$s2
.L0d9ef314:
    bnez	$t2,.L0d9ef3e0
.L0d9ef318:
    # Line 1723
    li	$t3,6407
.L0d9ef31c:
    beq	$s0,$t3,.L0d9ef25c
    # Line 1727
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9eefd4
    ld	$s2,32($sp)
.L0d9ef334:
    # Line 1704
    li	$v0,0x8362
    sltu	$t8,$s2,$v0
    bnez	$t8,.L0d9ef1d4
    sltu	$t9,$v0,$s2
    beqz	$t9,.L0d9ef31c
    # Line 1723
    li	$t3,6407
    # Line 1704
    li	$ra,0x8363
    beq	$s2,$ra,.L0d9ef31c
    # Line 1723
    li	$t3,6407
    b	.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef360:
    # Line 1772
    # lw $t9, -25844($gp) # &__glFillImage
    move	$a1,$s4
    move	$a2,$s5
    ld	$a6,8($sp)
    move	$a3,$s0
    move	$a4,$s2
    ld	$a5,16($sp)
    jal	__glFillImage
    addiu	$a6,$a6,44
    b	.L0d9ef2e0
    # Line 1776
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
.L0d9ef38c:
    # Line 1683
    beq	$s0,$a7,.L0d9ef0ec
    # Line 1704
    li	$v0,0x8034
    b	.L0d9ef1c4
    # Line 1701
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef39c:
    # Line 1683
    beq	$a1,$s0,.L0d9ef0ec
    # Line 1704
    li	$v0,0x8034
    b	.L0d9ef1c4
    # Line 1701
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef3ac:
    # Line 1704
    beq	$s2,$t0,.L0d9ef260
    # Line 1754
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 1666
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9ef3c0:
    jal	__gllc_InvalidValue
    move	$a0,$s3
    b	.L0d9eefd4
    ld	$s2,32($sp)
.L0d9ef3d0:
    # Line 1704
    beq	$s2,$t1,.L0d9ef260
    # Line 1754
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef3e0:
    # Line 1704
    li	$t2,0x8033
    beq	$s2,$t2,.L0d9ef1ec
    # Line 1739
    li	$a1,6408
    b	.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 1704
    li	$t3,5126
.L0d9ef3f8:
    bne	$s2,$t3,.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    b	.L0d9ef260
    # Line 1754
    nop	# was lw $t9, -25856($gp) # &__glImageSize
.L0d9ef408:
    # Line 1683
    li	$t8,0x80e0
    beq	$s0,$t8,.L0d9ef0ec
    # Line 1704
    li	$v0,0x8034
    b	.L0d9ef1c4
    # Line 1701
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef41c:
    # Line 1704
    li	$v0,0x8366
    sltu	$t9,$s2,$v0
    bnez	$t9,.L0d9ef464
    sltu	$ra,$v0,$s2
    beqz	$ra,.L0d9ef1ec
    # Line 1739
    li	$a1,6408
    b	.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef43c:
    # Line 1704
    li	$at,0x8035
    beq	$s2,$at,.L0d9ef1ec
    # Line 1739
    li	$a1,6408
    b	.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef450:
    # Line 1707
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9eefd4
    ld	$s2,32($sp)
.L0d9ef464:
    # Line 1704
    li	$v0,0x8365
    beq	$s2,$v0,.L0d9ef1ec
    # Line 1739
    li	$a1,6408
    b	.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef478:
    # Line 1704
    sltiu	$v1,$s2,6656
    bnez	$v1,.L0d9ef3f8
    li	$t3,5126
    sltiu	$a0,$s2,6657
    bnez	$a0,.L0d9ef260
    # Line 1754
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ef130
    # Line 1750
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.end __gllc_ConvolutionFilter2DEXT

# Function: __glle_SeparableFilter2DEXT
# Declared: Line 1792 (Source lines: 1793-1828)
# Address: 0x0d9ef4a0 - 0x0d9ef5c8 (Size: 296 bytes, Frame: 48)
.globl __glle_SeparableFilter2DEXT
.ent __glle_SeparableFilter2DEXT
__glle_SeparableFilter2DEXT:
    # Line 1795
    lw	$v0,4112($zero)
    # Line 1793
    addiu	$sp,$sp,-48
    sd	$ra,40($sp)
    # Line 1800
    lw	$a2,4120($zero)
    # Line 1793
    sd	$s0,32($sp)
    lui	$at,0x6
    move	$s0,$a0
    # Line 1795
    sd	$v0,16($sp)
    # Line 1793
    addiu	$at,$at,6380
    sd	$gp,24($sp)
    # Line 1800
    beqz	$a2,.L0d9ef530
    # Line 1793
    addu	$gp,$t9,$at
    # Line 1800
    li	$v0,2
    beq	$a2,$v0,.L0d9ef51c
    # Line 1803
    ld	$t9,16($sp)
    # Line 1806
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1807
    lw	$v1,28($s0)
    lw	$v0,24($s0)
    addu	$v0,$v0,$v1
    ld	$ra,40($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    # Line 1828
    ld	$gp,24($sp)
    # Line 1807
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    # Line 1828
    ld	$s0,32($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 1807
    addiu	$v0,$v0,32
.L0d9ef51c:
    # Line 1803
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    # Line 1804
    sw	$zero,4120($zero)
.L0d9ef530:
    # Line 1816
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 1813
    ld	$at,16($sp)
    lw	$v1,4($s0)
    sw	$v1,944($at)
    # Line 1814
    lw	$v0,8($s0)
    sw	$v0,1000($at)
    # Line 1815
    lw	$ra,12($s0)
    sw	$ra,1004($at)
    # Line 1816
    jal	__glElementsPerGroup
    lw	$a0,4($s0)
    ld	$a0,16($sp)
    sw	$v0,948($a0)
    # Line 1819
    lw	$a6,24($s0)
    lw	$a4,20($s0)
    lw	$a3,16($s0)
    lw	$a2,12($s0)
    lw	$a1,8($s0)
    li	$a7,1
    sw	$a7,4($sp)
    lw	$t9,12588($a0)
    addiu	$a5,$s0,32
    li	$a7,0x8012
    addu	$a6,$a6,$s0
    jalr	$t9
    addiu	$a6,$a6,32
    # Line 1828
    lw	$v1,28($s0)
    lw	$v0,24($s0)
    addu	$v0,$v0,$v1
    ld	$ra,40($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,24($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,32($sp)
    addiu	$sp,$sp,48
    jr	$ra
    addiu	$v0,$v0,32
.end __glle_SeparableFilter2DEXT

# Function: __gllc_SeparableFilter2DEXT
# Declared: Line 1831 (Source lines: 1835-1965)
# Address: 0x0d9ef5d0 - 0x0d9efb8c (Size: 1468 bytes, Frame: 128)
.globl __gllc_SeparableFilter2DEXT
.ent __gllc_SeparableFilter2DEXT
__gllc_SeparableFilter2DEXT:
    # Line 1835
    addiu	$sp,$sp,-128
    sd	$s3,64($sp)
    sd	$s4,72($sp)
    sd	$s0,96($sp)
    move	$v0,$a7
    sd	$s2,56($sp)
    move	$s2,$a5
    move	$s0,$a4
    sd	$s5,88($sp)
    move	$s5,$a3
    move	$s4,$a2
    # Line 1840
    lw	$s3,4112($zero)
    # Line 1835
    sd	$s1,80($sp)
    # Line 1840
    li	$at,0x8012
    # Line 1835
    lui	$v1,0x6
    move	$s1,$a1
    sd	$ra,112($sp)
    addiu	$v1,$v1,6076
    sd	$gp,104($sp)
    # Line 1840
    beq	$a0,$at,.L0d9ef658
    # Line 1835
    addu	$gp,$t9,$v1
    # Line 1842
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
.L0d9ef630:
    ld	$s2,56($sp)
.L0d9ef634:
    ld	$s3,64($sp)
    ld	$s4,72($sp)
    ld	$s1,80($sp)
    ld	$ra,112($sp)
    ld	$s5,88($sp)
    ld	$s0,96($sp)
    # Line 1882
    ld	$gp,104($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9ef658:
    # Line 1846
    bltz	$a2,.L0d9efab4
    # Line 1847
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 1846
    bltz	$a3,.L0d9efab4
    # Line 1847
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    sd	$a0,48($sp)
    # Line 1850
    li	$a1,6406
    sd	$a6,40($sp)
    beq	$a1,$s1,.L0d9ef6c4
    sd	$a7,32($sp)
    li	$a0,6407
    beq	$s1,$a0,.L0d9ef6c8
    # Line 1863
    sltiu	$v0,$s0,6408
    # Line 1850
    li	$a2,6408
    beq	$s1,$a2,.L0d9ef6c4
    li	$a3,6409
    beq	$s1,$a3,.L0d9ef6c8
    # Line 1863
    sltiu	$v0,$s0,6408
    # Line 1850
    li	$a4,6410
    beq	$s1,$a4,.L0d9ef6c8
    # Line 1863
    sltiu	$v0,$s0,6408
    # Line 1850
    li	$a5,0x8049
    beq	$s1,$a5,.L0d9ef6c4
    # Line 1859
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9ef634
    ld	$s2,56($sp)
.L0d9ef6c4:
    # Line 1863
    sltiu	$v0,$s0,6408
.L0d9ef6c8:
    bnez	$v0,.L0d9ef70c
    sltiu	$a6,$s0,6409
    bnez	$a6,.L0d9ef734
    # Line 1884
    li	$v0,0x8034
    # Line 1863
    li	$v0,0x8000
    sltu	$a7,$s0,$v0
    bnez	$a7,.L0d9ef9d4
    sltu	$t0,$v0,$s0
    beqz	$t0,.L0d9ef730
    li	$v0,0x80e1
    sltu	$t1,$s0,$v0
    bnez	$t1,.L0d9efb00
    sltu	$t2,$v0,$s0
    beqz	$t2,.L0d9ef734
    # Line 1884
    li	$v0,0x8034
    b	.L0d9ef810
    # Line 1881
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef70c:
    # Line 1863
    sltiu	$t3,$s0,6405
    bnez	$t3,.L0d9ef7f4
    sltiu	$t8,$s0,6406
    bnez	$t8,.L0d9ef730
    sltiu	$t9,$s0,6407
    bnez	$t9,.L0d9efa90
    nop
    beqz	$v0,.L0d9ef810
    # Line 1881
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef730:
    # Line 1884
    li	$v0,0x8034
.L0d9ef734:
    sltu	$ra,$s2,$v0
    beqz	$ra,.L0d9ef7b0
    sltu	$a4,$v0,$s2
    sltiu	$at,$s2,5125
    bnez	$at,.L0d9ef870
    sltiu	$v0,$s2,5122
    sltiu	$v0,$s2,5126
    bnez	$v0,.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1884
    li	$v0,0x8032
    sltu	$v1,$s2,$v0
    beqz	$v1,.L0d9ef9b0
    sltu	$t8,$v0,$s2
    sltiu	$a0,$s2,6656
    bnez	$a0,.L0d9efaf0
    li	$t3,5126
    sltiu	$a1,$s2,6657
    bnez	$a1,.L0d9efb48
    # Line 1887
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef780:
    # Line 1930
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef784:
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9ef634
    ld	$s2,56($sp)
.L0d9ef794:
    # Line 1863
    li	$a2,6400
    bne	$s0,$a2,.L0d9ef80c
    # Line 1884
    li	$v0,0x8034
    sltu	$a3,$s2,$v0
    bnez	$a3,.L0d9ef990
    sltiu	$t1,$s2,5125
    sltu	$a4,$v0,$s2
.L0d9ef7b0:
    beqz	$a4,.L0d9ef834
    li	$v0,0x8364
    sltu	$a5,$s2,$v0
    bnez	$a5,.L0d9ef9f4
    sltu	$a6,$v0,$s2
    beqz	$a6,.L0d9ef9b8
    # Line 1903
    li	$t9,6407
    # Line 1884
    li	$v0,0x8367
    sltu	$a7,$s2,$v0
    bnez	$a7,.L0d9efb14
    sltu	$t0,$v0,$s2
    beqz	$t0,.L0d9ef834
    li	$t1,0x8368
    beq	$s2,$t1,.L0d9ef838
    # Line 1919
    li	$at,6408
    b	.L0d9ef784
    # Line 1930
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef7f4:
    # Line 1863
    sltiu	$t2,$s0,6403
    bnez	$t2,.L0d9ef794
    sltiu	$t3,$s0,6404
    bnez	$t3,.L0d9ef730
    li	$t8,6404
    beq	$s0,$t8,.L0d9ef730
.L0d9ef80c:
    # Line 1881
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef810:
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9ef634
    ld	$s2,56($sp)
.L0d9ef820:
    # Line 1884
    li	$v0,0x8036
    sltu	$t9,$s2,$v0
    bnez	$t9,.L0d9efb34
    sltu	$ra,$v0,$s2
    bnez	$ra,.L0d9ef780
.L0d9ef834:
    # Line 1919
    li	$at,6408
.L0d9ef838:
    beq	$s0,$at,.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1919
    li	$v0,0x8000
    beq	$s0,$v0,.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1919
    li	$v1,0x80e1
    beq	$s0,$v1,.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1925
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ef634
    ld	$s2,56($sp)
.L0d9ef86c:
    # Line 1884
    sltiu	$v0,$s2,5122
.L0d9ef870:
    bnez	$v0,.L0d9ef8a0
    sltiu	$a3,$s2,5121
    sltiu	$a0,$s2,5123
    bnez	$a0,.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1884
    sltiu	$a1,$s2,5124
    bnez	$a1,.L0d9efac4
    sltiu	$a2,$s2,5125
    bnez	$a2,.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ef784
    # Line 1930
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef8a0:
    # Line 1884
    bnez	$a3,.L0d9efaa0
    li	$t0,5120
    beqz	$v0,.L0d9ef780
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
.L0d9ef8b0:
    move	$a0,$s4
    move	$a3,$s2
    move	$a2,$s0
    jal	__glImageSize
    li	$a1,1
    # Line 1935
    # lw $t9, -25856($gp) # &__glImageSize
    move	$a3,$s2
    move	$a2,$s0
    move	$a1,$s5
    # Line 1934
    sd	$v0,16($sp)
    # Line 1935
    jal	__glImageSize
    li	$a0,1
    # Line 1939
    ld	$a1,16($sp)
    # Line 1937
    li	$a3,-4
    # Line 1939
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 1937
    addiu	$a2,$v0,3
    # Line 1939
    addiu	$a1,$a1,3
    # Line 1937
    and	$a2,$a2,$a3
    # Line 1939
    and	$a1,$a3,$a1
    move	$a0,$s3
    sd	$a1,8($sp)
    addu	$a1,$a1,$a2
    # Line 1937
    sd	$a2,24($sp)
    # Line 1939
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,32
    beqz	$v0,.L0d9ef630
    nop
    sd	$v0,0($sp)
    # Line 1950
    sw	$s2,36($v0)
    # Line 1949
    sw	$s0,32($v0)
    # Line 1948
    sw	$s5,28($v0)
    # Line 1947
    sw	$s4,24($v0)
    # Line 1946
    sw	$s1,20($v0)
    # Line 1942
    li	$a2,203
    sh	$a2,12($v0)
    # Line 1945
    ld	$a4,48($sp)
    # Line 1952
    ld	$a5,24($sp)
    # Line 1951
    ld	$a3,8($sp)
    # Line 1952
    sw	$a5,44($v0)
    # Line 1951
    sw	$a3,40($v0)
    # Line 1954
    blez	$a3,.L0d9ef960
    # Line 1945
    sw	$a4,16($v0)
    # Line 1954
    ld	$a6,40($sp)
    bnez	$a6,.L0d9efa50
.L0d9ef960:
    # Line 1959
    ld	$a7,24($sp)
.L0d9ef964:
    blez	$a7,.L0d9ef974
    ld	$t0,32($sp)
    bnez	$t0,.L0d9efa1c
    # Line 1960
    nop	# was lw $t9, -25844($gp) # &__glFillImage
.L0d9ef974:
    # Line 1965
    # lw $t9, -31140($gp) # &__glDlistAppendOp
.L0d9ef978:
    ld	$a1,0($sp)
    move	$a0,$s3
    jal	__glDlistAppendOp
    la	$a2,__glle_SeparableFilter2DEXT
    b	.L0d9ef634
    ld	$s2,56($sp)
.L0d9ef990:
    # Line 1884
    bnez	$t1,.L0d9ef86c
    sltiu	$t2,$s2,5126
    bnez	$t2,.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1884
    li	$v0,0x8032
    sltu	$t3,$s2,$v0
    bnez	$t3,.L0d9efb6c
    sltu	$t8,$v0,$s2
.L0d9ef9b0:
    bnez	$t8,.L0d9efad8
.L0d9ef9b4:
    # Line 1903
    li	$t9,6407
.L0d9ef9b8:
    beq	$s0,$t9,.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 1907
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d9ef634
    ld	$s2,56($sp)
.L0d9ef9d4:
    # Line 1863
    sltiu	$ra,$s0,6410
    bnez	$ra,.L0d9efa80
    li	$a7,6409
    sltiu	$at,$s0,6411
    bnez	$at,.L0d9ef734
    # Line 1884
    li	$v0,0x8034
    b	.L0d9ef810
    # Line 1881
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9ef9f4:
    # Line 1884
    li	$v0,0x8362
    sltu	$v1,$s2,$v0
    bnez	$v1,.L0d9ef820
    sltu	$a0,$v0,$s2
    beqz	$a0,.L0d9ef9b4
    li	$a1,0x8363
    beq	$s2,$a1,.L0d9ef9b8
    # Line 1903
    li	$t9,6407
    b	.L0d9ef784
    # Line 1930
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9efa1c:
    # Line 1960
    ld	$a7,0($sp)
    move	$a0,$s3
    move	$a4,$s2
    ld	$a6,8($sp)
    move	$a3,$s0
    move	$a2,$s5
    li	$a1,1
    addu	$a6,$a6,$a7
    ld	$a5,32($sp)
    jal	__gllc_InvalidEnum
    addiu	$a6,$a6,48
    b	.L0d9ef978
    # Line 1965
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
.L0d9efa50:
    # Line 1955
    move	$a0,$s3
    # lw $t9, -25844($gp) # &__glFillImage
    move	$a1,$s4
    move	$a4,$s2
    ld	$a6,0($sp)
    move	$a3,$s0
    li	$a2,1
    ld	$a5,40($sp)
    jal	__glFillImage
    addiu	$a6,$a6,48
    b	.L0d9ef964
    # Line 1959
    ld	$a7,24($sp)
.L0d9efa80:
    # Line 1863
    beq	$s0,$a7,.L0d9ef734
    # Line 1884
    li	$v0,0x8034
    b	.L0d9ef810
    # Line 1881
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9efa90:
    # Line 1863
    beq	$a1,$s0,.L0d9ef734
    # Line 1884
    li	$v0,0x8034
    b	.L0d9ef810
    # Line 1881
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9efaa0:
    # Line 1884
    beq	$s2,$t0,.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ef784
    # Line 1930
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 1847
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
.L0d9efab4:
    jal	__gllc_InvalidValue
    move	$a0,$s3
    b	.L0d9ef634
    ld	$s2,56($sp)
.L0d9efac4:
    # Line 1884
    li	$t1,5123
    beq	$s2,$t1,.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ef784
    # Line 1930
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9efad8:
    # Line 1884
    li	$t2,0x8033
    beq	$s2,$t2,.L0d9ef838
    # Line 1919
    li	$at,6408
    b	.L0d9ef784
    # Line 1930
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 1884
    li	$t3,5126
.L0d9efaf0:
    bne	$s2,$t3,.L0d9ef784
    # Line 1930
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    b	.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
.L0d9efb00:
    # Line 1863
    li	$t8,0x80e0
    beq	$s0,$t8,.L0d9ef734
    # Line 1884
    li	$v0,0x8034
    b	.L0d9ef810
    # Line 1881
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9efb14:
    # Line 1884
    li	$v0,0x8366
    sltu	$t9,$s2,$v0
    bnez	$t9,.L0d9efb58
    sltu	$ra,$v0,$s2
    beqz	$ra,.L0d9ef838
    # Line 1919
    li	$at,6408
    b	.L0d9ef784
    # Line 1930
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9efb34:
    # Line 1884
    li	$at,0x8035
    beq	$s2,$at,.L0d9ef838
    # Line 1919
    li	$at,6408
    b	.L0d9ef784
    # Line 1930
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9efb48:
    # Line 1887
    jal	__gllc_InvalidEnum
    move	$a0,$s3
    b	.L0d9ef634
    ld	$s2,56($sp)
.L0d9efb58:
    # Line 1884
    li	$v0,0x8365
    beq	$s2,$v0,.L0d9ef838
    # Line 1919
    li	$at,6408
    b	.L0d9ef784
    # Line 1930
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9efb6c:
    # Line 1884
    sltiu	$v1,$s2,6656
    bnez	$v1,.L0d9efaf0
    li	$t3,5126
    sltiu	$a0,$s2,6657
    bnez	$a0,.L0d9ef8b0
    # Line 1934
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    b	.L0d9ef784
    # Line 1930
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
.end __gllc_SeparableFilter2DEXT

# Function: __glle_TexImage4DSGIS
# Declared: Line 1968 (Source lines: 1969-1983)
# Address: 0x0d9efb90 - 0x0d9efb98 (Size: 8 bytes, Frame: 0)
.globl __glle_TexImage4DSGIS
.ent __glle_TexImage4DSGIS
__glle_TexImage4DSGIS:
    # Line 1983
    jr	$ra
    # Line 1969
    move	$v0,$a0
.end __glle_TexImage4DSGIS

# Function: __gllc_TexImage4DSGIS
# Declared: Line 1987 (Source lines: 1991-1992)
# Address: 0x0d9efba0 - 0x0d9efbac (Size: 12 bytes, Frame: 192)
.globl __gllc_TexImage4DSGIS
.ent __gllc_TexImage4DSGIS
__gllc_TexImage4DSGIS:
    # Line 1991
    addiu	$sp,$sp,-64
    # Line 1992
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_TexImage4DSGIS

# Function: __glle_TexSubImage4DSGIS
# Declared: Line 1994 (Source lines: 1995-2009)
# Address: 0x0d9efbb0 - 0x0d9efbb8 (Size: 8 bytes, Frame: 0)
.globl __glle_TexSubImage4DSGIS
.ent __glle_TexSubImage4DSGIS
__glle_TexSubImage4DSGIS:
    # Line 2009
    jr	$ra
    # Line 1995
    move	$v0,$a0
.end __glle_TexSubImage4DSGIS

# Function: __gllc_TexSubImage4DSGIS
# Declared: Line 2013 (Source lines: 2017-2018)
# Address: 0x0d9efbc0 - 0x0d9efbcc (Size: 12 bytes, Frame: 192)
.globl __gllc_TexSubImage4DSGIS
.ent __gllc_TexSubImage4DSGIS
__gllc_TexSubImage4DSGIS:
    # Line 2017
    addiu	$sp,$sp,-64
    # Line 2018
    jr	$ra
    addiu	$sp,$sp,64
.end __gllc_TexSubImage4DSGIS

# Function: __glle_Disable
# Declared: Line 2020 (Source lines: 2021-2026)
# Address: 0x0d9efbd0 - 0x0d9efc14 (Size: 68 bytes, Frame: 32)
.globl __glle_Disable
.ent __glle_Disable
__glle_Disable:
    # Line 2021
    addiu	$sp,$sp,-32
    lui	$at,0x6
    sd	$gp,16($sp)
    addiu	$at,$at,4540
    addu	$gp,$t9,$at
    # Line 2025
    lw	$t9,4480($zero)
    # Line 2021
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2025
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2026
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Disable

# Function: __gllc_Disable
# Declared: Line 2029 (Source lines: 2030-2067)
# Address: 0x0d9efc20 - 0x0d9efddc (Size: 444 bytes, Frame: 32)
.globl __gllc_Disable
.ent __gllc_Disable
__gllc_Disable:
    # Line 2035
    li	$a3,0x8079
    # Line 2030
    addiu	$sp,$sp,-32
    # Line 2033
    lw	$v0,4112($zero)
    # Line 2035
    li	$v1,0x8074
    # Line 2030
    lui	$at,0x6
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$at,$at,4460
    sd	$gp,16($sp)
    # Line 2035
    beq	$a0,$v1,.L0d9efd00
    # Line 2030
    addu	$gp,$t9,$at
    # Line 2035
    li	$v1,0x8075
    beq	$a0,$v1,.L0d9efd30
    li	$a0,0x8076
    beq	$s0,$a0,.L0d9efd60
    li	$a1,0x8077
    beq	$s0,$a1,.L0d9efd8c
    li	$a2,0x8078
    beq	$s0,$a2,.L0d9efdb4
    nop
    beq	$s0,$a3,.L0d9efccc
    # Line 2062
    nop	# was lw $t9, -31148($gp) # &__glDlistAllocOp2
    sd	$v0,0($sp)
    sd	$ra,24($sp)
    li	$a1,4
    jal	__glDlistAllocOp2
    ld	$a0,0($sp)
    bnez	$v0,.L0d9efca4
    ld	$ra,24($sp)
.L0d9efc94:
    ld	$s0,8($sp)
    # Line 2039
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9efca4:
    # Line 2067
    la	$a2,__glle_Disable
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    move	$a1,$v0
    # Line 2066
    sw	$s0,16($v0)
    # Line 2064
    li	$a4,137
    # Line 2067
    jal	__glDlistAppendOp
    # Line 2064
    sh	$a4,12($v0)
    b	.L0d9efc94
    ld	$ra,24($sp)
.L0d9efccc:
    # Line 2039
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    # Line 2058
    lw	$a7,5356($v0)
    # Line 2057
    lw	$a5,5344($v0)
    # Line 2039
    addiu	$sp,$sp,32
    # Line 2058
    li	$t0,-17
    # Line 2057
    lui	$a6,0x800
    nor	$a6,$a6,$zero
    # Line 2058
    and	$a7,$a7,$t0
    sw	$a7,5356($v0)
    # Line 2057
    and	$a5,$a5,$a6
    # Line 2039
    jr	$ra
    # Line 2057
    sw	$a5,5344($v0)
.L0d9efd00:
    # Line 2039
    ld	$gp,16($sp)
    # Line 2038
    lw	$t3,5356($v0)
    li	$s0,-33
    # Line 2037
    lw	$t1,5344($v0)
    li	$t2,-256
    # Line 2038
    and	$t3,$t3,$s0
    sw	$t3,5356($v0)
    # Line 2037
    and	$t1,$t1,$t2
    sw	$t1,5344($v0)
    # Line 2039
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9efd30:
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    # Line 2042
    lw	$at,5356($v0)
    # Line 2041
    lw	$t8,5344($v0)
    # Line 2039
    addiu	$sp,$sp,32
    # Line 2042
    li	$v1,-2
    # Line 2041
    li	$t9,-3841
    # Line 2042
    and	$at,$at,$v1
    sw	$at,5356($v0)
    # Line 2041
    and	$t8,$t8,$t9
    # Line 2039
    jr	$ra
    # Line 2041
    sw	$t8,5344($v0)
.L0d9efd60:
    # Line 2046
    lw	$a2,5356($v0)
    # Line 2045
    lui	$a1,0xf
    # Line 2046
    li	$a3,-3
    # Line 2045
    lw	$a0,5344($v0)
    ori	$a1,$a1,0xf000
    # Line 2046
    and	$a2,$a2,$a3
    sw	$a2,5356($v0)
    # Line 2045
    nor	$a1,$a1,$zero
    and	$a0,$a0,$a1
    # Line 2046
    b	.L0d9efc94
    # Line 2045
    sw	$a0,5344($v0)
.L0d9efd8c:
    # Line 2050
    lw	$a4,5356($v0)
    li	$a5,-9
    # Line 2049
    lw	$a2,5344($v0)
    lui	$a3,0xfff
    ori	$a3,$a3,0xffff
    # Line 2050
    and	$a4,$a4,$a5
    sw	$a4,5356($v0)
    # Line 2049
    and	$a2,$a2,$a3
    # Line 2050
    b	.L0d9efc94
    # Line 2049
    sw	$a2,5344($v0)
.L0d9efdb4:
    # Line 2054
    lw	$t0,5356($v0)
    li	$t1,-5
    # Line 2053
    lw	$a6,5344($v0)
    lui	$a7,0x7f0
    nor	$a7,$a7,$zero
    # Line 2054
    and	$t0,$t0,$t1
    sw	$t0,5356($v0)
    # Line 2053
    and	$a6,$a6,$a7
    # Line 2054
    b	.L0d9efc94
    # Line 2053
    sw	$a6,5344($v0)
.end __gllc_Disable

# Function: __glle_Enable
# Declared: Line 2070 (Source lines: 2071-2076)
# Address: 0x0d9efde0 - 0x0d9efe24 (Size: 68 bytes, Frame: 32)
.globl __glle_Enable
.ent __glle_Enable
__glle_Enable:
    # Line 2071
    addiu	$sp,$sp,-32
    lui	$at,0x6
    sd	$gp,16($sp)
    addiu	$at,$at,4012
    addu	$gp,$t9,$at
    # Line 2075
    lw	$t9,4484($zero)
    # Line 2071
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2075
    jalr	$t9
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 2076
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Enable

# Function: __gllc_Enable
# Declared: Line 2079 (Source lines: 2080-2117)
# Address: 0x0d9efe30 - 0x0d9effbc (Size: 396 bytes, Frame: 32)
.globl __gllc_Enable
.ent __gllc_Enable
__gllc_Enable:
    # Line 2085
    li	$a3,0x8079
    # Line 2080
    addiu	$sp,$sp,-32
    # Line 2083
    lw	$v0,4112($zero)
    # Line 2085
    li	$v1,0x8074
    # Line 2080
    lui	$at,0x6
    sd	$s0,8($sp)
    move	$s0,$a0
    addiu	$at,$at,3932
    sd	$gp,16($sp)
    # Line 2085
    beq	$a0,$v1,.L0d9eff08
    # Line 2080
    addu	$gp,$t9,$at
    # Line 2085
    li	$v1,0x8075
    beq	$a0,$v1,.L0d9eff30
    li	$a0,0x8076
    beq	$s0,$a0,.L0d9eff58
    li	$a1,0x8077
    beq	$s0,$a1,.L0d9eff7c
    li	$a2,0x8078
    beq	$s0,$a2,.L0d9eff9c
    nop
    beq	$s0,$a3,.L0d9efedc
    # Line 2112
    nop	# was lw $t9, -31148($gp) # &__glDlistAllocOp2
    sd	$v0,0($sp)
    sd	$ra,24($sp)
    li	$a1,4
    jal	__glDlistAllocOp2
    ld	$a0,0($sp)
    bnez	$v0,.L0d9efeb4
    ld	$ra,24($sp)
.L0d9efea4:
    ld	$s0,8($sp)
    # Line 2089
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9efeb4:
    # Line 2117
    la	$a2,__glle_Enable
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a0,0($sp)
    move	$a1,$v0
    # Line 2116
    sw	$s0,16($v0)
    # Line 2114
    li	$a4,138
    # Line 2117
    jal	__glDlistAppendOp
    # Line 2114
    sh	$a4,12($v0)
    b	.L0d9efea4
    ld	$ra,24($sp)
.L0d9efedc:
    # Line 2089
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    # Line 2108
    lw	$a7,5356($v0)
    # Line 2107
    lw	$a5,5344($v0)
    # Line 2089
    addiu	$sp,$sp,32
    # Line 2107
    lui	$a6,0x800
    # Line 2108
    ori	$a7,$a7,0x10
    sw	$a7,5356($v0)
    # Line 2107
    or	$a5,$a5,$a6
    # Line 2089
    jr	$ra
    # Line 2107
    sw	$a5,5344($v0)
.L0d9eff08:
    # Line 2089
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    # Line 2088
    lw	$t1,5356($v0)
    # Line 2087
    lw	$t0,5344($v0)
    # Line 2089
    addiu	$sp,$sp,32
    # Line 2088
    ori	$t1,$t1,0x20
    sw	$t1,5356($v0)
    # Line 2087
    ori	$t0,$t0,0xff
    # Line 2089
    jr	$ra
    # Line 2087
    sw	$t0,5344($v0)
.L0d9eff30:
    # Line 2089
    ld	$gp,16($sp)
    ld	$s0,8($sp)
    # Line 2092
    lw	$t3,5356($v0)
    # Line 2091
    lw	$t2,5344($v0)
    # Line 2089
    addiu	$sp,$sp,32
    # Line 2092
    ori	$t3,$t3,0x1
    sw	$t3,5356($v0)
    # Line 2091
    ori	$t2,$t2,0xf00
    # Line 2089
    jr	$ra
    # Line 2091
    sw	$t2,5344($v0)
.L0d9eff58:
    # Line 2096
    lw	$at,5356($v0)
    # Line 2095
    lw	$t8,5344($v0)
    lui	$t9,0xf
    ori	$t9,$t9,0xf000
    # Line 2096
    ori	$at,$at,0x2
    sw	$at,5356($v0)
    # Line 2095
    or	$t8,$t8,$t9
    # Line 2096
    b	.L0d9efea4
    # Line 2095
    sw	$t8,5344($v0)
.L0d9eff7c:
    # Line 2100
    lw	$a1,5356($v0)
    # Line 2099
    lw	$v1,5344($v0)
    lui	$a0,0xf000
    # Line 2100
    ori	$a1,$a1,0x8
    sw	$a1,5356($v0)
    # Line 2099
    or	$v1,$v1,$a0
    # Line 2100
    b	.L0d9efea4
    # Line 2099
    sw	$v1,5344($v0)
.L0d9eff9c:
    # Line 2104
    lw	$a4,5356($v0)
    # Line 2103
    lw	$a2,5344($v0)
    lui	$a3,0x7f0
    # Line 2104
    ori	$a4,$a4,0x4
    sw	$a4,5356($v0)
    # Line 2103
    or	$a2,$a2,$a3
    # Line 2104
    b	.L0d9efea4
    # Line 2103
    sw	$a2,5344($v0)
.end __gllc_Enable

# Function: __glle_DrawArraysEXT
# Declared: Line 2120 (Source lines: 2121-2130)
# Address: 0x0d9effc0 - 0x0d9effc8 (Size: 8 bytes, Frame: 0)
.globl __glle_DrawArraysEXT
.ent __glle_DrawArraysEXT
__glle_DrawArraysEXT:
    # Line 2130
    jr	$ra
    # Line 2121
    move	$v0,$a0
.end __glle_DrawArraysEXT

# Function: __glle_DrawArrays
# Declared: Line 2133 (Source lines: 2134-2135)
# Address: 0x0d9effd0 - 0x0d9f0004 (Size: 52 bytes, Frame: 16)
.globl __glle_DrawArrays
.ent __glle_DrawArrays
__glle_DrawArrays:
    # Line 2134
    lui	$at,0x6
    addiu	$sp,$sp,-16
    addiu	$at,$at,3516
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 2135
    # lw $t9, -25492($gp) # &__glle_DrawArraysEXT
    # Line 2134
    sd	$ra,0($sp)
    # Line 2135
    bal __glle_DrawArraysEXT
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glle_DrawArrays

# Function: __glle_DrawElements
# Declared: Line 2138 (Source lines: 2139-2148)
# Address: 0x0d9f0010 - 0x0d9f0018 (Size: 8 bytes, Frame: 0)
.globl __glle_DrawElements
.ent __glle_DrawElements
__glle_DrawElements:
    # Line 2148
    jr	$ra
    # Line 2139
    move	$v0,$a0
.end __glle_DrawElements

# Function: __glle_DrawRangeElements
# Declared: Line 2151 (Source lines: 2152-2161)
# Address: 0x0d9f0020 - 0x0d9f0028 (Size: 8 bytes, Frame: 0)
.globl __glle_DrawRangeElements
.ent __glle_DrawRangeElements
__glle_DrawRangeElements:
    # Line 2161
    jr	$ra
    # Line 2152
    move	$v0,$a0
.end __glle_DrawRangeElements

# Function: __glle_ArrayElementEXT
# Declared: Line 2164 (Source lines: 2165-2173)
# Address: 0x0d9f0030 - 0x0d9f0038 (Size: 8 bytes, Frame: 0)
.globl __glle_ArrayElementEXT
.ent __glle_ArrayElementEXT
__glle_ArrayElementEXT:
    # Line 2173
    jr	$ra
    # Line 2165
    move	$v0,$a0
.end __glle_ArrayElementEXT

# Function: __glle_ColorTableSGI
# Declared: Line 2176 (Source lines: 2177-2185)
# Address: 0x0d9f0040 - 0x0d9f00b4 (Size: 116 bytes, Frame: 32)
.globl __glle_ColorTableSGI
.ent __glle_ColorTableSGI
__glle_ColorTableSGI:
    # Line 2177
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2182
    lw	$a4,12($s8)
    lw	$a5,16($a0)
    # Line 2177
    lui	$at,0x6
    # Line 2179
    lw	$a0,4112($zero)
    sd	$gp,16($sp)
    # Line 2177
    addiu	$at,$at,3404
    addu	$gp,$t9,$at
    # Line 2182
    lw	$t9,12664($a0)
    lw	$a3,8($s8)
    li	$a7,1
    lw	$a2,4($s8)
    addiu	$a6,$s8,24
    jalr	$t9
    lw	$a1,0($s8)
    # Line 2185
    lw	$v0,20($s8)
    ld	$ra,0($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,16($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,24
.end __glle_ColorTableSGI

# Function: __gllc_ColorTableSGI
# Declared: Line 2189 (Source lines: 2192-2244)
# Address: 0x0d9f00c0 - 0x0d9f02c4 (Size: 516 bytes, Frame: 128)
.globl __gllc_ColorTableSGI
.ent __gllc_ColorTableSGI
__gllc_ColorTableSGI:
    # Line 2192
    addiu	$sp,$sp,-128
    sd	$a5,8($sp)
    sd	$a4,24($sp)
    sd	$a3,40($sp)
    sd	$a2,32($sp)
    sd	$a0,48($sp)
    sd	$s0,56($sp)
    # Line 2198
    lw	$s0,4112($zero)
    lw	$v0,4120($zero)
    sw	$a1,92($sp)
    # Line 2192
    lui	$at,0x6
    sd	$ra,72($sp)
    addiu	$at,$at,3276
    sd	$gp,64($sp)
    # Line 2198
    beqz	$v0,.L0d9f0138
    # Line 2192
    addu	$gp,$t9,$at
    # Line 2198
    li	$v1,2
    beq	$v0,$v1,.L0d9f0128
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d9f0114:
    ld	$ra,72($sp)
.L0d9f0118:
    ld	$s0,56($sp)
    # Line 2244
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9f0128:
    # Line 2198
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,4120($zero)
.L0d9f0138:
    # Line 2200
    ld	$a1,48($sp)
    lw	$a2,92($sp)
    # lw $t9, -26536($gp) # &__glCheckColorTableArgs
    ld	$a3,32($sp)
    ld	$a4,40($sp)
    move	$a0,$s0
    jal	__glCheckColorTableArgs
    ld	$a5,24($sp)
    # Line 2213
    li	$a5,0x80bc
    # Line 2200
    beqz	$v0,.L0d9f01c8
    # Line 2213
    ld	$a4,48($sp)
    ld	$t2,48($sp)
    # Line 2202
    li	$a0,1280
    # Line 2213
    li	$t1,0x80d1
    ld	$t0,48($sp)
    # Line 2202
    beq	$v0,$a0,.L0d9f028c
    # Line 2213
    li	$t3,0x80d2
    # Line 2202
    li	$a1,1281
    beq	$v0,$a1,.L0d9f02a0
    li	$a2,1282
    beq	$v0,$a2,.L0d9f02b4
    # Line 2210
    nop	# was lw $t9, -31072($gp) # &__gllc_InvalidOperation
    # Line 2202
    li	$a3,0x8031
    bne	$v0,$a3,.L0d9f01cc
    # Line 2226
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    # Line 2213
    beq	$a4,$a5,.L0d9f027c
    # Line 2218
    nop	# was lw $t9, -31068($gp) # &__gllc_TableTooLarge
    # Line 2213
    li	$a7,0x80d0
    ld	$a6,48($sp)
    beq	$a6,$a7,.L0d9f027c
    # Line 2218
    nop	# was lw $t9, -31068($gp) # &__gllc_TableTooLarge
    # Line 2213
    beq	$t0,$t1,.L0d9f027c
    # Line 2218
    nop	# was lw $t9, -31068($gp) # &__gllc_TableTooLarge
    # Line 2213
    beq	$t2,$t3,.L0d9f027c
    # Line 2218
    nop	# was lw $t9, -31068($gp) # &__gllc_TableTooLarge
    sw	$zero,92($sp)
.L0d9f01c8:
    # Line 2226
    # lw $t9, -25856($gp) # &__glImageSize
.L0d9f01cc:
    ld	$a0,32($sp)
    ld	$a3,24($sp)
    ld	$a2,40($sp)
    jal	__glImageSize
    li	$a1,1
    # Line 2229
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 2227
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 2229
    move	$a0,$s0
    # Line 2227
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 2229
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,24
    beqz	$v0,.L0d9f0114
    sd	$v0,16($sp)
    # Line 2242
    ld	$a5,8($sp)
    # Line 2234
    ld	$t1,48($sp)
    # Line 2236
    ld	$a1,32($sp)
    # Line 2237
    ld	$a3,40($sp)
    # Line 2238
    ld	$a4,24($sp)
    # Line 2239
    lw	$t2,92($sp)
    ld	$t0,16($sp)
    ld	$t3,0($sp)
    sw	$t3,36($t0)
    # Line 2238
    sw	$a4,32($t0)
    # Line 2237
    sw	$a3,28($t0)
    # Line 2236
    sw	$a1,24($t0)
    # Line 2242
    # lw $t9, -25844($gp) # &__glFillImage
    li	$a2,1
    # Line 2235
    sw	$t2,20($t0)
    # Line 2242
    move	$a0,$s0
    # Line 2231
    li	$a7,227
    # Line 2234
    sw	$t1,16($t0)
    # Line 2242
    addiu	$a6,$t0,40
    jal	__glFillImage
    # Line 2231
    sh	$a7,12($t0)
    # Line 2243
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_ColorTableSGI
    b	.L0d9f0118
    ld	$ra,72($sp)
    # Line 2218
    # lw $t9, -31068($gp) # &__gllc_TableTooLarge
.L0d9f027c:
    jal	__gllc_TableTooLarge
    move	$a0,$s0
    b	.L0d9f0118
    ld	$ra,72($sp)
.L0d9f028c:
    # Line 2204
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s0
    b	.L0d9f0118
    ld	$ra,72($sp)
.L0d9f02a0:
    # Line 2207
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s0
    b	.L0d9f0118
    ld	$ra,72($sp)
.L0d9f02b4:
    # Line 2210
    jalr	$t9
    move	$a0,$s0
    b	.L0d9f0118
    ld	$ra,72($sp)
.end __gllc_ColorTableSGI

# Function: __glle_ColorSubTable
# Declared: Line 2246 (Source lines: 2247-2255)
# Address: 0x0d9f02d0 - 0x0d9f0344 (Size: 116 bytes, Frame: 32)
.globl __glle_ColorSubTable
.ent __glle_ColorSubTable
__glle_ColorSubTable:
    # Line 2247
    addiu	$sp,$sp,-32
    sd	$ra,0($sp)
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 2252
    lw	$a4,12($s8)
    lw	$a5,16($a0)
    # Line 2247
    lui	$at,0x6
    # Line 2249
    lw	$a0,4112($zero)
    sd	$gp,16($sp)
    # Line 2247
    addiu	$at,$at,2748
    addu	$gp,$t9,$at
    # Line 2252
    lw	$t9,12668($a0)
    lw	$a3,8($s8)
    li	$a7,1
    lw	$a2,4($s8)
    addiu	$a6,$s8,24
    jalr	$t9
    lw	$a1,0($s8)
    # Line 2255
    lw	$v0,20($s8)
    ld	$ra,0($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,16($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s8,$v0
    ld	$s8,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,24
.end __glle_ColorSubTable

# Function: __gllc_ColorSubTable
# Declared: Line 2258 (Source lines: 2261-2303)
# Address: 0x0d9f0350 - 0x0d9f04f0 (Size: 416 bytes, Frame: 224)
.globl __gllc_ColorSubTable
.ent __gllc_ColorSubTable
__gllc_ColorSubTable:
    # Line 2261
    addiu	$sp,$sp,-96
    sd	$a5,8($sp)
    sd	$a4,40($sp)
    sd	$a3,56($sp)
    sd	$a2,48($sp)
    sd	$a1,32($sp)
    sd	$a0,24($sp)
    sd	$s0,64($sp)
    # Line 2267
    lw	$v0,4120($zero)
    lw	$s0,4112($zero)
    # Line 2261
    lui	$at,0x6
    sd	$ra,80($sp)
    addiu	$at,$at,2620
    sd	$gp,72($sp)
    # Line 2267
    beqz	$v0,.L0d9f03c8
    # Line 2261
    addu	$gp,$t9,$at
    # Line 2267
    li	$v1,2
    beq	$v0,$v1,.L0d9f03b8
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0d9f03a4:
    ld	$ra,80($sp)
.L0d9f03a8:
    ld	$s0,64($sp)
    # Line 2303
    ld	$gp,72($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9f03b8:
    # Line 2267
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    sw	$zero,4120($zero)
.L0d9f03c8:
    # Line 2269
    ld	$a1,24($sp)
    ld	$a2,32($sp)
    # lw $t9, -26532($gp) # &__glCheckColorSubTableArgs
    ld	$a3,48($sp)
    ld	$a4,56($sp)
    move	$a0,$s0
    jal	__glCheckColorSubTableArgs
    ld	$a5,40($sp)
    beqz	$v0,.L0d9f040c
    # Line 2271
    li	$a1,1281
    li	$a0,1280
    beq	$v0,$a0,.L0d9f04d0
    # Line 2273
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 2271
    beq	$v0,$a1,.L0d9f04e0
    # Line 2276
    nop	# was lw $t9, -31080($gp) # &__gllc_InvalidValue
    # Line 2271
    li	$a2,1282
    beq	$v0,$a2,.L0d9f04bc
.L0d9f040c:
    # Line 2285
    nop	# was lw $t9, -25856($gp) # &__glImageSize
    ld	$a0,48($sp)
    ld	$a3,40($sp)
    ld	$a2,56($sp)
    jal	__glImageSize
    li	$a1,1
    # Line 2288
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 2286
    li	$a2,-4
    addiu	$a1,$v0,3
    # Line 2288
    move	$a0,$s0
    # Line 2286
    and	$a1,$a1,$a2
    sd	$a1,0($sp)
    # Line 2288
    jal	__glDlistAllocOp2
    addiu	$a1,$a1,24
    beqz	$v0,.L0d9f03a4
    sd	$v0,16($sp)
    # Line 2301
    ld	$a5,8($sp)
    # Line 2293
    ld	$t1,24($sp)
    # Line 2294
    ld	$t2,32($sp)
    # Line 2295
    ld	$a1,48($sp)
    # Line 2296
    ld	$a3,56($sp)
    # Line 2297
    ld	$a4,40($sp)
    # Line 2298
    ld	$t0,16($sp)
    ld	$t3,0($sp)
    sw	$t3,36($t0)
    # Line 2297
    sw	$a4,32($t0)
    # Line 2296
    sw	$a3,28($t0)
    # Line 2295
    sw	$a1,24($t0)
    # Line 2301
    # lw $t9, -25844($gp) # &__glFillImage
    li	$a2,1
    # Line 2294
    sw	$t2,20($t0)
    # Line 2301
    move	$a0,$s0
    # Line 2290
    li	$a7,251
    # Line 2293
    sw	$t1,16($t0)
    # Line 2301
    addiu	$a6,$t0,40
    jal	__glFillImage
    # Line 2290
    sh	$a7,12($t0)
    # Line 2302
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,16($sp)
    move	$a0,$s0
    jal	__glDlistAppendOp
    la	$a2,__glle_ColorSubTable
    b	.L0d9f03a8
    ld	$ra,80($sp)
.L0d9f04bc:
    # Line 2279
    # lw $t9, -31072($gp) # &__gllc_InvalidOperation
    jal	__gllc_InvalidOperation
    move	$a0,$s0
    b	.L0d9f03a8
    ld	$ra,80($sp)
.L0d9f04d0:
    # Line 2273
    jalr	$t9
    move	$a0,$s0
    b	.L0d9f03a8
    ld	$ra,80($sp)
.L0d9f04e0:
    # Line 2276
    jalr	$t9
    move	$a0,$s0
    b	.L0d9f03a8
    ld	$ra,80($sp)
.end __gllc_ColorSubTable

# Function: __gllc_DrawArraysEXT
# Declared: Line 2305 (Source lines: 2308-2373)
# Address: 0x0d9f04f0 - 0x0d9f07d0 (Size: 736 bytes, Frame: 160)
.globl __gllc_DrawArraysEXT
.ent __gllc_DrawArraysEXT
__gllc_DrawArraysEXT:
    # Line 2308
    addiu	$sp,$sp,-160
    sd	$s8,80($sp)
    sd	$s3,88($sp)
    sd	$s6,96($sp)
    sd	$ra,104($sp)
    sd	$s4,112($sp)
    sd	$s0,120($sp)
    sd	$s5,128($sp)
    sd	$s7,136($sp)
    sd	$gp,32($sp)
    sd	$s1,24($sp)
    # Line 2309
    lw	$s1,4112($zero)
    # Line 2308
    sd	$s2,16($sp)
    # Line 2311
    sltiu	$at,$a0,10
    # Line 2308
    lui	$v0,0x6
    move	$s2,$a2
    addiu	$v0,$v0,2204
    # Line 2311
    lw	$a4,5348($s1)
    # Line 2308
    addu	$gp,$t9,$v0
    # Line 2311
    beqz	$at,.L0d9f07a8
    # Line 2310
    lw	$a5,5356($s1)
    sd	$a5,0($sp)
    sd	$a4,8($sp)
    # Line 2321
    bltz	$a2,.L0d9f07bc
    sd	$a1,72($sp)
    # Line 2327
    # lw $t9, -22700($gp) # &glBegin
    jal	glBegin
    ld	$s0,72($sp)
    # Line 2329
    ld	$s3,8($sp)
    # Line 2328
    addu	$s5,$s2,$s0
    # Line 2329
    slt	$v1,$s0,$s5
    sd	$s2,144($sp)
    andi	$s6,$s3,0x2
    andi	$t9,$s3,0x8
    ld	$s2,0($sp)
    beqz	$v1,.L0d9f0768
    andi	$t8,$s3,0x4
    andi	$s4,$s2,0x8
    sd	$t9,56($sp)
    andi	$s3,$s3,0x1
    andi	$s7,$s2,0x10
    andi	$s8,$s2,0x4
    sd	$s8,40($sp)
    andi	$s8,$s2,0x20
    sd	$s6,64($sp)
    andi	$s6,$s2,0x2
    sd	$t8,48($sp)
    b	.L0d9f06e4
    andi	$s2,$s2,0x1
    nop
    nop
    nop
.L0d9f05c0:
    # Line 2341
    beqz	$s3,.L0d9f05ec
    # Line 2346
    ld	$a4,64($sp)
    lw	$a3,5192($s1)
    mult	$a3,$s0
    lw	$t9,5204($s1)
    lw	$a1,5180($s1)
    li	$a0,0x83c7
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    ld	$a4,64($sp)
.L0d9f05ec:
    beqz	$a4,.L0d9f0618
    # Line 2349
    ld	$a4,48($sp)
    lw	$a3,5220($s1)
    mult	$a3,$s0
    lw	$t9,5232($s1)
    lw	$a1,5208($s1)
    li	$a0,0x83c8
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    ld	$a4,48($sp)
.L0d9f0618:
    beqz	$a4,.L0d9f0644
    # Line 2352
    ld	$a4,56($sp)
    lw	$a3,5248($s1)
    mult	$a3,$s0
    lw	$t9,5260($s1)
    lw	$a1,5236($s1)
    li	$a0,0x83c9
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    ld	$a4,56($sp)
.L0d9f0644:
    beqz	$a4,.L0d9f066c
    nop
    # Line 2355
    lw	$a3,5276($s1)
    mult	$a3,$s0
    lw	$t9,5288($s1)
    lw	$a1,5264($s1)
    li	$a0,0x83ca
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
.L0d9f066c:
    beqz	$s4,.L0d9f0690
    nop
    # Line 2360
    lw	$a2,5116($s1)
    mult	$a2,$s0
    lw	$t9,5128($s1)
    lw	$a0,5108($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d9f0690:
    beqz	$s7,.L0d9f06b4
    nop
    # Line 2364
    lw	$a2,5164($s1)
    mult	$a2,$s0
    lw	$t9,5176($s1)
    lw	$a0,5160($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d9f06b4:
    beqz	$s8,.L0d9f06d8
    nop
    # Line 2368
    lw	$a2,5040($s1)
    mult	$a2,$s0
    lw	$t9,5052($s1)
    lw	$a0,5028($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d9f06d8:
    # Line 2329
    addiu	$s0,$s0,1
    beq	$s5,$s0,.L0d9f0768
    nop
.L0d9f06e4:
    beqz	$s2,.L0d9f0708
    nop
    # Line 2331
    lw	$a2,5064($s1)
    mult	$a2,$s0
    lw	$t9,5076($s1)
    lw	$a0,5056($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d9f0708:
    beqz	$s6,.L0d9f072c
    nop
    # Line 2335
    lw	$a2,5092($s1)
    mult	$a2,$s0
    lw	$t9,5104($s1)
    lw	$a0,5080($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0d9f072c:
    lw	$a3,3612($s1)
    li	$a4,1
    bne	$a3,$a4,.L0d9f05c0
    ld	$a5,40($sp)
    beqz	$a5,.L0d9f066c
    nop
    # Line 2341
    lw	$a2,5144($s1)
    mult	$a2,$s0
    lw	$t9,5156($s1)
    lw	$a0,5132($s1)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    b	.L0d9f066c
    nop
.L0d9f0768:
    # Line 2372
    # lw $t9, -22628($gp) # &glEnd
    jal	glEnd
    nop
    ld	$s8,80($sp)
.L0d9f0778:
    ld	$s2,16($sp)
    ld	$s3,88($sp)
    ld	$s6,96($sp)
    ld	$s4,112($sp)
    ld	$s0,120($sp)
    ld	$s1,24($sp)
    ld	$ra,104($sp)
    ld	$s5,128($sp)
    ld	$s7,136($sp)
    # Line 2373
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9f07a8:
    # Line 2320
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    jal	__gllc_InvalidEnum
    move	$a0,$s1
    b	.L0d9f0778
    ld	$s8,80($sp)
.L0d9f07bc:
    # Line 2324
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$s1
    b	.L0d9f0778
    ld	$s8,80($sp)
.end __gllc_DrawArraysEXT

# Function: __gllc_DrawElements
# Declared: Line 2375 (Source lines: 2379-2412)
# Address: 0x0d9f07d0 - 0x0d9f0960 (Size: 400 bytes, Frame: 48)
.globl __gllc_DrawElements
.ent __gllc_DrawElements
__gllc_DrawElements:
    # Line 2386
    li	$v1,5123
    # Line 2380
    lw	$a5,4112($zero)
    # Line 2379
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    move	$s1,$a2
    lui	$at,0x6
    sd	$ra,32($sp)
    # Line 2386
    li	$a2,5121
    # Line 2379
    addiu	$at,$at,1468
    sd	$gp,24($sp)
    # Line 2380
    bltz	$a1,.L0d9f094c
    # Line 2379
    addu	$gp,$t9,$at
    # Line 2386
    sltiu	$v0,$a0,10
    beqz	$v0,.L0d9f082c
    # Line 2389
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    sd	$a3,8($sp)
    # Line 2386
    beq	$a2,$s1,.L0d9f0848
    sd	$a1,0($sp)
    beq	$s1,$v1,.L0d9f0848
    li	$a1,5125
    beq	$s1,$a1,.L0d9f084c
    # Line 2392
    nop	# was lw $t9, -22700($gp) # &glBegin
    # Line 2389
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d9f082c:
    jal	__gllc_InvalidEnum
    move	$a0,$a5
    ld	$ra,32($sp)
.L0d9f0838:
    # Line 2412
    ld	$gp,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9f0848:
    # Line 2392
    # lw $t9, -22700($gp) # &glBegin
.L0d9f084c:
    jal	glBegin
    nop
    # Line 2393
    li	$a2,5121
    li	$a4,5125
    li	$a3,5123
    beq	$a2,$s1,.L0d9f08cc
    # Line 2396
    ld	$t8,0($sp)
    # Line 2393
    beq	$s1,$a3,.L0d9f090c
    # Line 2401
    ld	$t9,0($sp)
    # Line 2393
    bne	$s1,$a4,.L0d9f08bc
    # Line 2411
    nop	# was lw $t9, -22628($gp) # &glEnd
    # Line 2406
    ld	$a5,0($sp)
    ld	$t8,8($sp)
    blez	$a5,.L0d9f08b8
    ld	$s1,0($sp)
    sll	$s1,$s1,0x2
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    # Line 2407
    # lw $t9, -22456($gp) # &glArrayElement
.L0d9f08a0:
    jal	glArrayElement
    lw	$a0,0($s0)
    # Line 2406
    addiu	$s0,$s0,4
    bne	$s0,$s1,.L0d9f08a0
    # Line 2407
    nop	# was lw $t9, -22456($gp) # &glArrayElement
    ld	$s0,40($sp)
.L0d9f08b8:
    # Line 2411
    # lw $t9, -22628($gp) # &glEnd
.L0d9f08bc:
    jal	glEnd
    nop
    b	.L0d9f0838
    ld	$ra,32($sp)
.L0d9f08cc:
    # Line 2396
    blez	$t8,.L0d9f08b8
    ld	$s1,0($sp)
    ld	$t8,8($sp)
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    nop
    # Line 2397
    # lw $t9, -22456($gp) # &glArrayElement
.L0d9f08f0:
    jal	glArrayElement
    lbu	$a0,0($s0)
    # Line 2396
    addiu	$s0,$s0,1
    bne	$s0,$s1,.L0d9f08f0
    # Line 2397
    nop	# was lw $t9, -22456($gp) # &glArrayElement
    b	.L0d9f08b8
    ld	$s0,40($sp)
.L0d9f090c:
    # Line 2401
    ld	$t8,8($sp)
    blez	$t9,.L0d9f08b8
    ld	$s1,0($sp)
    addu	$s1,$s1,$s1
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    # Line 2402
    # lw $t9, -22456($gp) # &glArrayElement
.L0d9f0930:
    jal	glArrayElement
    lhu	$a0,0($s0)
    # Line 2401
    addiu	$s0,$s0,2
    bne	$s0,$s1,.L0d9f0930
    # Line 2402
    nop	# was lw $t9, -22456($gp) # &glArrayElement
    b	.L0d9f08b8
    ld	$s0,40($sp)
.L0d9f094c:
    # Line 2383
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    move	$a0,$a5
    b	.L0d9f0838
    ld	$ra,32($sp)
.end __gllc_DrawElements

# Function: __gllc_DrawRangeElements
# Declared: Line 2414 (Source lines: 2420-2429)
# Address: 0x0d9f0960 - 0x0d9f09bc (Size: 92 bytes, Frame: 16)
.globl __gllc_DrawRangeElements
.ent __gllc_DrawRangeElements
__gllc_DrawRangeElements:
    # Line 2420
    addiu	$sp,$sp,-16
    sltu	$at,$a2,$a1
    lui	$v0,0x6
    move	$a7,$a3
    sd	$ra,8($sp)
    addiu	$v0,$v0,1068
    sd	$gp,0($sp)
    beqz	$at,.L0d9f0998
    addu	$gp,$t9,$v0
    # Line 2424
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
    jal	__gllc_InvalidValue
    lw	$a0,4112($zero)
    b	.L0d9f09ac
    nop
.L0d9f0998:
    # Line 2428
    # lw $t9, -25456($gp) # &__gllc_DrawElements
    move	$a2,$a4
    move	$a1,$a3
    bal __gllc_DrawElements
    move	$a3,$a5
.L0d9f09ac:
    ld	$ra,8($sp)
    # Line 2429
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __gllc_DrawRangeElements

