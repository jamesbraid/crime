# Source: ../CRIME/vice_convolve.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/vice_convolve.c
# Total Functions: 10

.text

# Function: __viceLoadCNVCode
# Declared: Line 67 (Source lines: 69-129)
# Address: 0x0da38720 - 0x0da38974 (Size: 596 bytes, Frame: 48)
.globl __viceLoadCNVCode
.ent __viceLoadCNVCode
__viceLoadCNVCode:
    # Line 69
    addiu	$sp,$sp,-48
    sd	$s1,24($sp)
    # Line 72
    li	$s1,1
    lw	$v0,64($a1)
    # Line 69
    sd	$s0,16($sp)
    # Line 72
    li	$at,3
    # Line 69
    lui	$v1,0x2
    move	$s0,$a0
    sd	$ra,32($sp)
    addiu	$v1,$v1,-31124
    sd	$gp,8($sp)
    # Line 72
    beq	$v0,$at,.L0da3881c
    # Line 69
    addu	$gp,$t9,$v1
    # Line 72
    li	$a0,5
    beq	$v0,$a0,.L0da38840
    li	$a1,7
    beq	$v0,$a1,.L0da38770
    # Line 104
    nop	# was lw $t9, -22752($gp) # &exit
    jal	exit
    move	$a0,$s1
.L0da38770:
    # Line 91
    lw	$a2,4180($s0)
    # Line 92
    lw	$a1,4176($s0)
    li	$a4,45
    # Line 91
    beq	$a2,$s1,.L0da388c0
    lw	$v0,4172($s0)
    # Line 96
    lw	$a1,4176($s0)
    beq	$v0,$s1,.L0da388f4
    # Line 94
    li	$a4,29
.L0da38790:
    # Line 107
    beq	$v0,$s1,.L0da38894
    nop
.L0da38798:
    # Line 115
    bne	$a1,$s1,.L0da387f4
    # Line 124
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 115
    lw	$a3,4144($s0)
    beqz	$a3,.L0da387f4
    # Line 124
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 115
    beq	$v0,$s1,.L0da3895c
    # Line 117
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    lw	$a5,4116($s0)
    beqz	$a5,.L0da388c8
    # Line 121
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    addiu	$a0,$a4,5
    ld	$ra,32($sp)
    move	$a0,$v0
.L0da387d4:
    # Line 129
    ld	$gp,8($sp)
    # Line 127
    sw	$zero,4140($s0)
    # Line 129
    move	$v0,$a0
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
    # Line 124
    # lw $t9, -23184($gp) # &__viceMapCode
.L0da387f4:
    move	$a1,$s0
    bal __viceMapCode
    addiu	$a0,$a4,3
    # Line 129
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    # Line 127
    sw	$zero,4140($s0)
    # Line 129
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3881c:
    # Line 74
    lw	$a6,4180($a0)
    li	$a7,21
    lw	$a1,4176($a0)
    li	$a4,33
    xor	$a6,$a6,$s1
    lw	$v0,4172($a0)
    sltiu	$a6,$a6,1
    b	.L0da38790
    movz	$a4,$a7,$a6
.L0da38840:
    # Line 80
    lw	$a7,4180($s0)
    # Line 81
    lw	$a1,4176($s0)
    li	$a4,39
    # Line 80
    beq	$a7,$s1,.L0da38928
    lw	$v0,4172($s0)
    # Line 85
    lw	$a1,4176($s0)
    bne	$v0,$s1,.L0da38790
    # Line 83
    li	$a4,25
    # Line 85
    bne	$a1,$s1,.L0da38790
    nop
    lw	$t0,4140($s0)
    beqz	$t0,.L0da38790
    nop
    lw	$t1,4144($s0)
    beqz	$t1,.L0da38790
    nop
    lw	$t2,4136($s0)
    bnez	$t2,.L0da38790
    nop
    # Line 87
    b	.L0da38790
    sw	$s1,4128($s0)
.L0da38894:
    # Line 107
    beq	$a1,$s1,.L0da38930
    lw	$a0,4140($s0)
.L0da3889c:
    # Line 111
    beqz	$a0,.L0da38798
    # Line 112
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    addiu	$a0,$a4,1
    ld	$ra,32($sp)
    move	$a0,$v0
    # Line 113
    b	.L0da387d4
    sw	$s1,4128($s0)
.L0da388c0:
    # Line 92
    b	.L0da38790
    nop
.L0da388c8:
    # Line 119
    # lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    addiu	$a0,$a4,4
    # Line 129
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    # Line 127
    sw	$zero,4140($s0)
    # Line 129
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da388f4:
    # Line 96
    bne	$a1,$s1,.L0da38790
    nop
    lw	$t3,4140($s0)
    beqz	$t3,.L0da38790
    nop
    lw	$t8,4144($s0)
    beqz	$t8,.L0da38790
    nop
    lw	$t9,4136($s0)
    bnez	$t9,.L0da38790
    nop
    # Line 98
    b	.L0da38790
    sw	$s1,4128($s0)
.L0da38928:
    # Line 81
    b	.L0da38790
    nop
.L0da38930:
    # Line 107
    beqz	$a0,.L0da38798
    nop
    lw	$ra,4144($s0)
    beqz	$ra,.L0da3889c
    # Line 109
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a0,$a4
    bal __viceMapCode
    move	$a1,$s0
    ld	$ra,32($sp)
    b	.L0da387d4
    move	$a0,$v0
.L0da3895c:
    # Line 117
    move	$a1,$s0
    bal __viceMapCode
    addiu	$a0,$a4,2
    ld	$ra,32($sp)
    b	.L0da387d4
    move	$a0,$v0
.end __viceLoadCNVCode

# Function: __viceLoadGCNVCode
# Declared: Line 134 (Source lines: 136-188)
# Address: 0x0da38980 - 0x0da38b68 (Size: 488 bytes, Frame: 48)
.globl __viceLoadGCNVCode
.ent __viceLoadGCNVCode
__viceLoadGCNVCode:
    # Line 136
    addiu	$sp,$sp,-48
    sd	$s1,24($sp)
    # Line 139
    li	$s1,1
    lw	$v0,64($a1)
    # Line 136
    sd	$s0,16($sp)
    # Line 139
    li	$at,3
    # Line 136
    lui	$v1,0x2
    move	$s0,$a0
    sd	$ra,32($sp)
    addiu	$v1,$v1,-31732
    sd	$gp,8($sp)
    # Line 139
    beq	$v0,$at,.L0da38a7c
    # Line 136
    addu	$gp,$t9,$v1
    # Line 139
    li	$a0,5
    beq	$v0,$a0,.L0da38a98
    li	$a2,7
    beq	$v0,$a2,.L0da389d4
    # Line 155
    li	$a0,4
    # Line 163
    # lw $t9, -22752($gp) # &exit
    jal	exit
    move	$a0,$s1
.L0da389d4:
    # Line 153
    lw	$v0,4180($s0)
    beq	$v0,$s1,.L0da38ae0
    # Line 154
    li	$a4,87
    # Line 155
    beq	$v0,$a0,.L0da38b10
    # Line 158
    li	$a4,59
.L0da389e8:
    # Line 166
    lw	$a0,4172($s0)
.L0da389ec:
    beq	$a0,$s1,.L0da38ab4
    lw	$v0,4176($s0)
.L0da389f4:
    # Line 174
    bne	$v0,$s1,.L0da38a54
    # Line 183
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 174
    lw	$a3,4144($s0)
    beqz	$a3,.L0da38a54
    # Line 183
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 174
    beq	$a0,$s1,.L0da38b50
    # Line 176
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    lw	$a5,4116($s0)
    beqz	$a5,.L0da38ae8
    # Line 178
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    # Line 180
    # lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    addiu	$a0,$a4,5
    ld	$ra,32($sp)
    move	$a0,$v0
.L0da38a34:
    # Line 188
    ld	$gp,8($sp)
    # Line 186
    sw	$zero,4140($s0)
    # Line 188
    move	$v0,$a0
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
    # Line 183
    # lw $t9, -23184($gp) # &__viceMapCode
.L0da38a54:
    move	$a1,$s0
    bal __viceMapCode
    addiu	$a0,$a4,3
    # Line 188
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    # Line 186
    sw	$zero,4140($s0)
    # Line 188
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da38a7c:
    # Line 141
    lw	$a6,4180($a0)
    li	$a7,63
    li	$a4,75
    xor	$a6,$a6,$s1
    sltiu	$a6,$a6,1
    b	.L0da389e8
    movz	$a4,$a7,$a6
.L0da38a98:
    # Line 147
    lw	$a7,4180($s0)
    li	$t0,67
    li	$a4,81
    xor	$a7,$a7,$s1
    sltiu	$a7,$a7,1
    # Line 151
    b	.L0da389e8
    # Line 147
    movz	$a4,$t0,$a7
.L0da38ab4:
    # Line 166
    beq	$v0,$s1,.L0da38b24
    lw	$a1,4140($s0)
.L0da38abc:
    # Line 170
    beqz	$a1,.L0da389f4
    # Line 171
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a1,$s0
    bal __viceMapCode
    addiu	$a0,$a4,1
    ld	$ra,32($sp)
    move	$a0,$v0
    # Line 172
    b	.L0da38a34
    sw	$s1,4128($s0)
.L0da38ae0:
    # Line 154
    b	.L0da389ec
    # Line 166
    lw	$a0,4172($s0)
.L0da38ae8:
    # Line 178
    move	$a1,$s0
    bal __viceMapCode
    addiu	$a0,$a4,4
    # Line 188
    ld	$gp,8($sp)
    ld	$ra,32($sp)
    # Line 186
    sw	$zero,4140($s0)
    # Line 188
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da38b10:
    # Line 155
    lw	$t0,12($a1)
    bne	$t0,$a0,.L0da389e8
    nop
    # Line 156
    b	.L0da389e8
    li	$a4,71
.L0da38b24:
    # Line 166
    beqz	$a1,.L0da389f4
    nop
    lw	$t1,4144($s0)
    beqz	$t1,.L0da38abc
    # Line 168
    nop	# was lw $t9, -23184($gp) # &__viceMapCode
    move	$a0,$a4
    bal __viceMapCode
    move	$a1,$s0
    ld	$ra,32($sp)
    b	.L0da38a34
    move	$a0,$v0
.L0da38b50:
    # Line 176
    move	$a1,$s0
    bal __viceMapCode
    addiu	$a0,$a4,2
    ld	$ra,32($sp)
    b	.L0da38a34
    move	$a0,$v0
.end __viceLoadGCNVCode

# Function: cnvFmtA
# Declared: Line 193 (Source lines: 196-200)
# Address: 0x0da38b70 - 0x0da38b84 (Size: 20 bytes, Frame: 0)
.globl cnvFmtA
.ent cnvFmtA
cnvFmtA:
    # Line 198
    sw	$a1,8($a0)
    # Line 197
    sw	$a1,4($a0)
    # Line 200
    li	$v0,1
    jr	$ra
    # Line 196
    sw	$a1,0($a0)
.end cnvFmtA

# Function: cnvFmtL
# Declared: Line 204 (Source lines: 207-226)
# Address: 0x0da38b90 - 0x0da38bf8 (Size: 104 bytes, Frame: 0)
.globl cnvFmtL
.ent cnvFmtL
cnvFmtL:
    # Line 207
    li	$at,6407
    li	$a4,6409
    li	$a3,6410
    beq	$a2,$at,.L0da38bd8
    li	$a5,0x8049
    li	$v0,6408
    beq	$a2,$v0,.L0da38bd8
    li	$v1,0x8000
    beq	$a2,$v1,.L0da38be4
    # Line 223
    move	$v0,$zero
    # Line 207
    beq	$a2,$a3,.L0da38bec
    nop
    beq	$a2,$a4,.L0da38bdc
    nop
    beq	$a2,$a5,.L0da38bdc
    nop
    # Line 226
    jr	$ra
    nop
.L0da38bd8:
    # Line 210
    sw	$a1,12($a0)
.L0da38bdc:
    # Line 226
    jr	$ra
    li	$v0,1
.L0da38be4:
    # Line 214
    b	.L0da38bdc
    # Line 213
    sw	$a1,0($a0)
.L0da38bec:
    # Line 216
    sw	$a1,4($a0)
    # Line 217
    b	.L0da38bdc
    # Line 216
    sw	$a1,12($a0)
.end cnvFmtL

# Function: cnvFmtI
# Declared: Line 230 (Source lines: 233-248)
# Address: 0x0da38c00 - 0x0da38c58 (Size: 88 bytes, Frame: 0)
.globl cnvFmtI
.ent cnvFmtI
cnvFmtI:
    # Line 233
    li	$at,6410
    li	$v1,6408
    beq	$a2,$at,.L0da38c48
    li	$a3,0x8049
    li	$v0,6407
    li	$a0,6409
    beq	$a2,$v0,.L0da38c50
    li	$a1,0x8000
    beq	$a2,$v1,.L0da38c50
    # Line 245
    move	$v0,$zero
    # Line 233
    beq	$a2,$a0,.L0da38c50
    nop
    beq	$a2,$a1,.L0da38c50
    nop
    beq	$a2,$a3,.L0da38c50
    nop
    # Line 248
    jr	$ra
    nop
.L0da38c48:
    # Line 235
    sw	$a1,4($a0)
    sw	$a1,12($a0)
.L0da38c50:
    # Line 248
    jr	$ra
    li	$v0,1
.end cnvFmtI

# Function: cnvFmtLA
# Declared: Line 252 (Source lines: 255-272)
# Address: 0x0da38c60 - 0x0da38ccc (Size: 108 bytes, Frame: 0)
.globl cnvFmtLA
.ent cnvFmtLA
cnvFmtLA:
    # Line 255
    li	$at,6407
    li	$a3,6409
    li	$a1,0x8000
    beq	$a2,$at,.L0da38ca8
    li	$a4,0x8049
    li	$v0,6408
    beq	$a2,$v0,.L0da38ca8
    li	$v1,6410
    beq	$a2,$v1,.L0da38ca8
    # Line 269
    move	$v0,$zero
    # Line 255
    beq	$a2,$a1,.L0da38cbc
    nop
    beq	$a2,$a3,.L0da38cb4
    nop
    beq	$a2,$a4,.L0da38cb4
    nop
    # Line 272
    jr	$ra
    nop
.L0da38ca8:
    # Line 259
    lw	$a5,0($a0)
    addiu	$a5,$a5,4
    sw	$a5,12($a0)
.L0da38cb4:
    # Line 272
    jr	$ra
    li	$v0,1
.L0da38cbc:
    # Line 262
    lw	$a6,0($a0)
    addiu	$a6,$a6,4
    # Line 263
    b	.L0da38cb4
    # Line 262
    sw	$a6,0($a0)
.end cnvFmtLA

# Function: cnvFmtRGB
# Declared: Line 276 (Source lines: 279-302)
# Address: 0x0da38cd0 - 0x0da38d64 (Size: 148 bytes, Frame: 0)
.globl cnvFmtRGB
.ent cnvFmtRGB
cnvFmtRGB:
    # Line 279
    li	$at,6410
    li	$a4,6409
    li	$a3,0x8000
    beq	$a2,$at,.L0da38d38
    li	$a5,0x8049
    li	$v0,6407
    beq	$a2,$v0,.L0da38d18
    li	$v1,6408
    beq	$a2,$v1,.L0da38d18
    # Line 299
    move	$v0,$zero
    # Line 279
    beq	$a2,$a3,.L0da38d44
    nop
    beq	$a2,$a4,.L0da38d30
    nop
    beq	$a2,$a5,.L0da38d30
    nop
    # Line 302
    jr	$ra
    nop
.L0da38d18:
    # Line 285
    lw	$a6,0($a0)
    # Line 287
    sw	$a1,12($a0)
    # Line 286
    addiu	$a7,$a6,8
    sw	$a7,8($a0)
    # Line 285
    addiu	$a6,$a6,4
    sw	$a6,4($a0)
.L0da38d30:
    # Line 302
    jr	$ra
    li	$v0,1
.L0da38d38:
    # Line 281
    sw	$a1,4($a0)
    b	.L0da38d30
    sw	$a1,12($a0)
.L0da38d44:
    # Line 290
    sw	$a1,0($a0)
    # Line 292
    lw	$t1,8($a0)
    # Line 291
    lw	$t0,4($a0)
    # Line 292
    addiu	$t1,$t1,4
    sw	$t1,8($a0)
    # Line 291
    addiu	$t0,$t0,8
    # Line 293
    b	.L0da38d30
    # Line 291
    sw	$t0,4($a0)
.end cnvFmtRGB

# Function: cnvFmtRGBA
# Declared: Line 306 (Source lines: 309-332)
# Address: 0x0da38d70 - 0x0da38e20 (Size: 176 bytes, Frame: 0)
.globl cnvFmtRGBA
.ent cnvFmtRGBA
cnvFmtRGBA:
    # Line 309
    li	$at,6410
    li	$a3,6409
    li	$a1,0x8000
    beq	$a2,$at,.L0da38de4
    li	$a4,0x8049
    li	$v0,6407
    beq	$a2,$v0,.L0da38db8
    li	$v1,6408
    beq	$a2,$v1,.L0da38db8
    # Line 329
    move	$v0,$zero
    # Line 309
    beq	$a2,$a1,.L0da38df8
    nop
    beq	$a2,$a3,.L0da38ddc
    nop
    beq	$a2,$a4,.L0da38ddc
    nop
    # Line 332
    jr	$ra
    nop
.L0da38db8:
    # Line 315
    lw	$a5,4($a0)
    # Line 317
    lw	$a7,12($a0)
    # Line 316
    lw	$a6,8($a0)
    # Line 317
    addiu	$a7,$a7,12
    sw	$a7,12($a0)
    # Line 316
    addiu	$a6,$a6,8
    sw	$a6,8($a0)
    # Line 315
    addiu	$a5,$a5,4
    sw	$a5,4($a0)
.L0da38ddc:
    # Line 332
    jr	$ra
    li	$v0,1
.L0da38de4:
    # Line 311
    lw	$t0,0($a0)
    addiu	$t0,$t0,12
    sw	$t0,4($a0)
    b	.L0da38ddc
    sw	$t0,12($a0)
.L0da38df8:
    # Line 320
    lw	$t1,0($a0)
    # Line 322
    lw	$t3,8($a0)
    # Line 321
    lw	$t2,4($a0)
    # Line 322
    addiu	$t3,$t3,4
    sw	$t3,8($a0)
    # Line 321
    addiu	$t2,$t2,8
    sw	$t2,4($a0)
    # Line 320
    addiu	$t1,$t1,12
    # Line 323
    b	.L0da38ddc
    # Line 320
    sw	$t1,0($a0)
.end cnvFmtRGBA

# Function: cnvFmtABGR
# Declared: Line 336 (Source lines: 339-362)
# Address: 0x0da38e20 - 0x0da38ed0 (Size: 176 bytes, Frame: 0)
.globl cnvFmtABGR
.ent cnvFmtABGR
cnvFmtABGR:
    # Line 339
    li	$at,6410
    li	$a3,6409
    li	$a1,0x8000
    beq	$a2,$at,.L0da38e94
    li	$a4,0x8049
    li	$v0,6407
    beq	$a2,$v0,.L0da38e68
    li	$v1,6408
    beq	$a2,$v1,.L0da38e68
    # Line 359
    move	$v0,$zero
    # Line 339
    beq	$a2,$a1,.L0da38ea8
    nop
    beq	$a2,$a3,.L0da38e8c
    nop
    beq	$a2,$a4,.L0da38e8c
    nop
    # Line 362
    jr	$ra
    nop
.L0da38e68:
    # Line 345
    lw	$a5,4($a0)
    # Line 347
    lw	$a7,12($a0)
    # Line 346
    lw	$a6,8($a0)
    # Line 347
    addiu	$a7,$a7,12
    sw	$a7,12($a0)
    # Line 346
    addiu	$a6,$a6,8
    sw	$a6,8($a0)
    # Line 345
    addiu	$a5,$a5,4
    sw	$a5,4($a0)
.L0da38e8c:
    # Line 362
    jr	$ra
    li	$v0,1
.L0da38e94:
    # Line 341
    lw	$t0,4($a0)
    addiu	$t0,$t0,12
    sw	$t0,0($a0)
    b	.L0da38e8c
    sw	$t0,8($a0)
.L0da38ea8:
    # Line 350
    lw	$t1,0($a0)
    # Line 352
    lw	$t3,8($a0)
    # Line 351
    lw	$t2,4($a0)
    # Line 352
    addiu	$t3,$t3,4
    sw	$t3,8($a0)
    # Line 351
    addiu	$t2,$t2,8
    sw	$t2,4($a0)
    # Line 350
    addiu	$t1,$t1,12
    # Line 353
    b	.L0da38e8c
    # Line 350
    sw	$t1,0($a0)
.end cnvFmtABGR

# Function: viceConvolve
# Declared: Line 367 (Source lines: 369-503)
# Address: 0x0da38ed0 - 0x0da396bc (Size: 2028 bytes, Frame: 208)
.globl viceConvolve
.ent viceConvolve
viceConvolve:
    # Line 369
    addiu	$sp,$sp,-80
    # Line 371
    andi	$at,$a2,0x8
    sd	$at,24($sp)
    # Line 369
    sd	$s1,48($sp)
    move	$s1,$a1
    sd	$s0,56($sp)
    lui	$v0,0x1
    move	$s0,$a0
    sd	$ra,64($sp)
    addiu	$v0,$v0,32444
    sd	$gp,40($sp)
    # Line 371
    beqz	$at,.L0da391f0
    # Line 369
    addu	$gp,$t9,$v0
    # Line 376
    # lw $t9, -23300($gp) # &__viceLoadCNVCode
    bal __viceLoadCNVCode
    nop
    lw	$a4,4204($s0)
    lw	$a3,4($s0)
    sll	$a4,$a4,0x2
    addu	$a3,$a3,$a4
    sw	$v0,80($a3)
    # Line 377
    lw	$a2,4204($s0)
    lw	$a1,4($s0)
    addiu	$a2,$a2,1
    sll	$a0,$a2,0x2
    sw	$a2,4204($s0)
    addu	$a0,$a1,$a0
    lw	$a0,76($a0)
    lui	$v1,0xffff
    and	$a0,$v1,$a0
    beq	$v1,$a0,.L0da3933c
    ld	$ra,64($sp)
    # Line 381
    lw	$a0,64($s1)
    li	$a3,3
    beq	$a0,$a3,.L0da3927c
    li	$a5,5
    beq	$a0,$a5,.L0da39288
    li	$a6,7
    beq	$a0,$a6,.L0da39294
    # Line 384
    la	$a3,fic7
.L0da38f70:
    # Line 386
    lw	$a7,68($s1)
    addu	$a7,$a7,$a0
    sd	$a7,32($sp)
    # Line 387
    sll	$a7,$a7,0x3
    sh	$a7,78($a1)
.L0da38f84:
    # Line 414
    lw	$t1,80($s1)
    sw	$t1,20($sp)
    sw	$t1,16($sp)
    sw	$t1,12($sp)
    sw	$t1,8($sp)
    # Line 415
    lw	$a0,8($s1)
    sltiu	$t0,$a0,6409
    bnez	$t0,.L0da38ff4
    sltiu	$t2,$a0,6410
    bnez	$t2,.L0da3908c
    # Line 419
    nop	# was lw $t9, -23288($gp) # &cnvFmtL
    # Line 415
    li	$a1,0x8000
    sltu	$t3,$a0,$a1
    bnez	$t3,.L0da3905c
    sltu	$t8,$a1,$a0
    beqz	$t8,.L0da393d4
    li	$t9,0x8049
    bne	$a0,$t9,.L0da39040
    # Line 421
    nop	# was lw $t9, -23284($gp) # &cnvFmtI
    lw	$a2,4192($s0)
    lw	$a1,0($sp)
    bal cnvFmtI
    addiu	$a0,$sp,8
    li	$t2,1
    li	$t3,1
    ld	$ra,64($sp)
    b	.L0da390ac
    andi	$t1,$v0,0xff
.L0da38ff4:
    # Line 415
    sltiu	$ra,$a0,6407
    bnez	$ra,.L0da3903c
    li	$v1,6406
    sltiu	$at,$a0,6408
    bnez	$at,.L0da39354
    # Line 427
    nop	# was lw $t9, -23276($gp) # &cnvFmtRGB
    # Line 415
    li	$v0,6408
    bne	$a0,$v0,.L0da39040
    # Line 431
    nop	# was lw $t9, -23272($gp) # &cnvFmtRGBA
    lw	$a2,4192($s0)
    lw	$a1,0($sp)
    bal cnvFmtRGBA
    addiu	$a0,$sp,8
    # Line 434
    li	$t2,4
    li	$t3,4
    ld	$ra,64($sp)
    b	.L0da390ac
    # Line 431
    andi	$t1,$v0,0xff
.L0da3903c:
    # Line 415
    beq	$a0,$v1,.L0da39588
.L0da39040:
    ld	$ra,64($sp)
    # Line 442
    ld	$gp,40($sp)
    move	$v0,$zero
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da3905c:
    # Line 415
    li	$a1,6410
    bne	$a0,$a1,.L0da39040
    # Line 423
    nop	# was lw $t9, -23280($gp) # &cnvFmtLA
    lw	$a2,4192($s0)
    lw	$a1,0($sp)
    bal cnvFmtLA
    addiu	$a0,$sp,8
    # Line 425
    li	$t2,2
    li	$t3,1
    ld	$ra,64($sp)
    b	.L0da390ac
    # Line 423
    andi	$t1,$v0,0xff
.L0da3908c:
    # Line 419
    lw	$a2,4192($s0)
    lw	$a1,0($sp)
    bal cnvFmtL
    addiu	$a0,$sp,8
    li	$t2,1
    ld	$ra,64($sp)
    li	$t3,1
    andi	$t1,$v0,0xff
.L0da390ac:
    # Line 443
    ld	$a2,24($sp)
    # Line 480
    ld	$t8,32($sp)
    # Line 443
    li	$a1,6409
    # Line 480
    li	$t9,3
    # Line 443
    beqz	$a2,.L0da39378
    lw	$a0,4192($s0)
    # Line 446
    beq	$a1,$a0,.L0da3929c
    li	$a3,0x8049
    beq	$a0,$a3,.L0da392a0
    ld	$a4,32($sp)
    # Line 447
    ld	$a6,32($sp)
    sll	$a6,$a6,0x2
    blez	$a6,.L0da391d8
    ldc1	$f4,_lit8_3fe0000000000000
    lwc1	$f5,_lit_46fffe00
    addu	$a5,$a6,$a6
    sll	$a4,$t3,0x2
    lw	$a3,8($sp)
    move	$a1,$zero
    sll	$a0,$t2,0x2
    nop
.L0da39100:
    # Line 453
    lwc1	$f3,0($a3)
    mul.s	$f3,$f3,$f5
    cvt.d.s	$f3,$f3
    add.d	$f3,$f3,$f4
    trunc.w.d	$f3,$f3
    lw	$a7,12($s0)
    mfc1	$a6,$f3
    addu	$a7,$a7,$a1
    sh	$a6,0($a7)
    # Line 454
    lw	$a3,12($sp)
    lwc1	$f2,0($a3)
    mul.s	$f2,$f2,$f5
    cvt.d.s	$f2,$f2
    add.d	$f2,$f2,$f4
    trunc.w.d	$f2,$f2
    lw	$a2,12($s0)
    mfc1	$v1,$f2
    addu	$a2,$a2,$a1
    sh	$v1,2($a2)
    # Line 455
    lw	$v0,16($sp)
    lwc1	$f1,0($v0)
    mul.s	$f1,$f1,$f5
    cvt.d.s	$f1,$f1
    add.d	$f1,$f1,$f4
    trunc.w.d	$f1,$f1
    lw	$at,12($s0)
    mfc1	$t9,$f1
    addu	$at,$at,$a1
    sh	$t9,4($at)
    # Line 456
    lw	$t8,20($sp)
    lwc1	$f0,0($t8)
    mul.s	$f0,$f0,$f5
    cvt.d.s	$f0,$f0
    add.d	$f0,$f0,$f4
    trunc.w.d	$f0,$f0
    lw	$t3,12($s0)
    mfc1	$t2,$f0
    addu	$t3,$t3,$a1
    sh	$t2,6($t3)
    # Line 458
    lw	$t0,20($sp)
    # Line 457
    lw	$a7,16($sp)
    # Line 458
    addu	$t0,$t0,$a4
    sw	$t0,20($sp)
    # Line 457
    addu	$a7,$a7,$a0
    sw	$a7,16($sp)
    # Line 452
    addiu	$a1,$a1,8
    # Line 457
    lw	$a6,12($sp)
    # Line 452
    slt	$a7,$a1,$a5
    # Line 457
    lw	$a3,8($sp)
    addu	$a6,$a6,$a0
    sw	$a6,12($sp)
    addu	$a3,$a3,$a0
    # Line 452
    bnez	$a7,.L0da39100
    # Line 457
    sw	$a3,8($sp)
.L0da391d8:
    # Line 442
    ld	$gp,40($sp)
.L0da391dc:
    # Line 503
    move	$v0,$t1
    # Line 442
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da391f0:
    # Line 390
    # lw $t9, -23296($gp) # &__viceLoadGCNVCode
    bal __viceLoadGCNVCode
    nop
    lw	$t8,4204($s0)
    lw	$t3,4($s0)
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t8
    sw	$v0,80($t3)
    # Line 391
    lw	$t2,4204($s0)
    lw	$a1,4($s0)
    addiu	$t2,$t2,1
    sll	$t1,$t2,0x2
    sw	$t2,4204($s0)
    addu	$t1,$a1,$t1
    lw	$t1,76($t1)
    lui	$t0,0xffff
    and	$t1,$t0,$t1
    beq	$t0,$t1,.L0da396a4
    ld	$ra,64($sp)
    # Line 395
    lw	$a0,64($s1)
    li	$t9,3
    beq	$a0,$t9,.L0da395b0
    # Line 396
    la	$a4,fig3
    # Line 395
    li	$ra,5
    beq	$a0,$ra,.L0da395b8
    li	$at,7
    beq	$a0,$at,.L0da3969c
    # Line 398
    la	$t8,fig7
.L0da39260:
    # Line 400
    lw	$v0,68($s1)
    mult	$v0,$a0
    # Line 401
    sll	$v0,$v0,0x6
    sh	$v0,78($a1)
    # Line 400
    mflo	$v1
    b	.L0da38f84
    sd	$v1,32($sp)
.L0da3927c:
    # Line 382
    la	$v1,fic3
    b	.L0da38f70
    sw	$v1,0($sp)
.L0da39288:
    # Line 383
    la	$a2,fic5
    b	.L0da38f70
    sw	$a2,0($sp)
.L0da39294:
    # Line 384
    b	.L0da38f70
    sw	$a3,0($sp)
.L0da3929c:
    # Line 446
    ld	$a4,32($sp)
.L0da392a0:
    blez	$a4,.L0da391d8
    ldc1	$f4,_lit8_3fe0000000000000
    ld	$a4,32($sp)
    lwc1	$f5,_lit_46fffe00
    move	$a1,$zero
    lw	$a3,8($sp)
    sll	$a0,$t2,0x2
    addu	$a4,$a4,$a4
.L0da392c0:
    # Line 448
    lwc1	$f6,0($a3)
    mul.s	$f6,$f6,$f5
    cvt.d.s	$f6,$f6
    add.d	$f6,$f6,$f4
    lw	$a6,12($s0)
    trunc.w.d	$f6,$f6
    addu	$a6,$a6,$a1
    mfc1	$a5,$f6
    sh	$a5,0($a6)
    # Line 447
    addiu	$a1,$a1,2
    # Line 449
    lw	$a3,8($sp)
    addu	$a3,$a3,$a0
    sw	$a3,8($sp)
    # Line 447
    beq	$a1,$a4,.L0da39334
    nop
    # Line 448
    lwc1	$f7,0($a3)
    mul.s	$f7,$f7,$f5
    cvt.d.s	$f7,$f7
    add.d	$f7,$f7,$f4
    lw	$a6,12($s0)
    trunc.w.d	$f7,$f7
    addu	$a6,$a6,$a1
    mfc1	$a5,$f7
    sh	$a5,0($a6)
    # Line 447
    addiu	$a1,$a1,2
    # Line 449
    lw	$a3,8($sp)
    addu	$a3,$a3,$a0
    # Line 447
    bne	$a1,$a4,.L0da392c0
    # Line 449
    sw	$a3,8($sp)
.L0da39334:
    b	.L0da391dc
    # Line 442
    ld	$gp,40($sp)
.L0da3933c:
    ld	$gp,40($sp)
    # Line 378
    move	$v0,$zero
    # Line 442
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da39354:
    # Line 427
    lw	$a2,4192($s0)
    lw	$a1,0($sp)
    bal cnvFmtRGB
    addiu	$a0,$sp,8
    # Line 429
    li	$t2,3
    li	$t3,1
    ld	$ra,64($sp)
    b	.L0da390ac
    # Line 427
    andi	$t1,$v0,0xff
.L0da39378:
    # Line 460
    beq	$a1,$a0,.L0da395d4
    li	$a7,0x8049
    beq	$a0,$a7,.L0da395d4
    # Line 480
    move	$a1,$zero
    # Line 460
    li	$t0,7
    lw	$a0,64($s1)
    # Line 480
    xor	$t9,$a0,$t9
    # Line 460
    beq	$a0,$t0,.L0da395c4
    # Line 480
    sltiu	$t9,$t9,1
    li	$a5,4
.L0da393a0:
    li	$t0,8
    movn	$a5,$t0,$t9
    mult	$t8,$a5
    mflo	$t8
    sll	$a0,$t2,0x2
    addu	$a6,$a5,$a5
    blez	$t8,.L0da391d8
    addu	$a7,$t8,$t8
    lw	$a3,8($sp)
    sll	$a4,$t3,0x2
    lwc1	$f5,_lit_46fffe00
    b	.L0da3943c
    ldc1	$f4,_lit8_3fe0000000000000
.L0da393d4:
    # Line 436
    # lw $t9, -23268($gp) # &cnvFmtABGR
    lw	$a2,4192($s0)
    lw	$a1,0($sp)
    bal cnvFmtABGR
    addiu	$a0,$sp,8
    # Line 439
    li	$t2,4
    li	$t3,4
    ld	$ra,64($sp)
    b	.L0da390ac
    # Line 436
    andi	$t1,$v0,0xff
    nop
.L0da39400:
    # Line 498
    lw	$a3,8($sp)
    lw	$t2,12($sp)
    # Line 499
    lw	$t8,20($sp)
    # Line 498
    lw	$t3,16($sp)
    # Line 499
    addu	$t8,$t8,$a4
    sw	$t8,20($sp)
    # Line 485
    addu	$a1,$a1,$a6
    # Line 498
    addu	$t3,$t3,$a0
    sw	$t3,16($sp)
    # Line 485
    slt	$at,$a1,$a7
    # Line 498
    addu	$t2,$t2,$a0
    sw	$t2,12($sp)
    addu	$a3,$a3,$a0
    # Line 485
    beqz	$at,.L0da39580
    # Line 498
    sw	$a3,8($sp)
.L0da3943c:
    # Line 486
    lwc1	$f11,0($a3)
    mul.s	$f11,$f11,$f5
    cvt.d.s	$f11,$f11
    add.d	$f11,$f11,$f4
    lw	$v0,12($s0)
    trunc.w.d	$f11,$f11
    addu	$v0,$v0,$a1
    mfc1	$at,$f11
    sh	$at,0($v0)
    # Line 487
    lw	$t9,12($sp)
    lwc1	$f10,0($t9)
    mul.s	$f10,$f10,$f5
    cvt.d.s	$f10,$f10
    add.d	$f10,$f10,$f4
    lw	$t8,12($s0)
    trunc.w.d	$f10,$f10
    addu	$t8,$t8,$a1
    mfc1	$t3,$f10
    sh	$t3,2($t8)
    # Line 488
    lw	$t2,16($sp)
    lwc1	$f9,0($t2)
    mul.s	$f9,$f9,$f5
    cvt.d.s	$f9,$f9
    add.d	$f9,$f9,$f4
    lw	$a2,12($s0)
    trunc.w.d	$f9,$f9
    addu	$a2,$a2,$a1
    mfc1	$v1,$f9
    sh	$v1,4($a2)
    # Line 489
    lw	$v0,20($sp)
    lwc1	$f8,0($v0)
    mul.s	$f8,$f8,$f5
    cvt.d.s	$f8,$f8
    add.d	$f8,$f8,$f4
    lw	$at,12($s0)
    trunc.w.d	$f8,$f8
    addu	$at,$at,$a1
    mfc1	$t9,$f8
    bne	$a5,$t0,.L0da39400
    sh	$t9,6($at)
    # Line 492
    lw	$a3,8($sp)
    lwc1	$f15,0($a3)
    mul.s	$f15,$f15,$f5
    cvt.d.s	$f15,$f15
    add.d	$f15,$f15,$f4
    lw	$a2,12($s0)
    trunc.w.d	$f15,$f15
    addu	$a2,$a2,$a1
    mfc1	$v1,$f15
    sh	$v1,8($a2)
    # Line 493
    lw	$v0,12($sp)
    lwc1	$f14,0($v0)
    mul.s	$f14,$f14,$f5
    cvt.d.s	$f14,$f14
    add.d	$f14,$f14,$f4
    lw	$at,12($s0)
    trunc.w.d	$f14,$f14
    addu	$at,$at,$a1
    mfc1	$t9,$f14
    sh	$t9,10($at)
    # Line 494
    lw	$t8,16($sp)
    lwc1	$f13,0($t8)
    mul.s	$f13,$f13,$f5
    cvt.d.s	$f13,$f13
    add.d	$f13,$f13,$f4
    lw	$t3,12($s0)
    trunc.w.d	$f13,$f13
    addu	$t3,$t3,$a1
    mfc1	$t2,$f13
    sh	$t2,12($t3)
    # Line 495
    lw	$a3,20($sp)
    lwc1	$f12,0($a3)
    mul.s	$f12,$f12,$f5
    cvt.d.s	$f12,$f12
    add.d	$f12,$f12,$f4
    lw	$a2,12($s0)
    trunc.w.d	$f12,$f12
    addu	$a2,$a2,$a1
    mfc1	$v1,$f12
    b	.L0da39400
    sh	$v1,14($a2)
.L0da39580:
    b	.L0da391dc
    # Line 442
    ld	$gp,40($sp)
.L0da39588:
    # Line 417
    # lw $t9, -23292($gp) # &cnvFmtA
    lw	$a2,4192($s0)
    lw	$a1,0($sp)
    bal cnvFmtA
    addiu	$a0,$sp,8
    li	$t2,1
    li	$t3,1
    ld	$ra,64($sp)
    b	.L0da390ac
    andi	$t1,$v0,0xff
.L0da395b0:
    b	.L0da39260
    # Line 396
    sw	$a4,0($sp)
.L0da395b8:
    # Line 397
    la	$a5,fig5
    b	.L0da39260
    sw	$a5,0($sp)
.L0da395c4:
    # Line 460
    lw	$a6,12($s1)
    li	$a7,1
    bne	$a6,$a7,.L0da393a0
    # Line 480
    li	$a5,4
.L0da395d4:
    # Line 464
    lw	$t0,68($s1)
    ld	$t8,32($sp)
    lw	$t3,4($s0)
    sll	$t0,$t0,0x6
    blez	$t8,.L0da391d8
    sh	$t0,78($t3)
    ldc1	$f4,_lit8_3fe0000000000000
    lwc1	$f5,_lit_46fffe00
    lw	$a3,8($sp)
    move	$a1,$zero
    sll	$a0,$t2,0x2
.L0da39600:
    # Line 469
    lw	$a5,64($s1)
    mtc1	$a1,$f17
    mtc1	$a5,$f18
    cvt.d.w	$f17,$f17
    cvt.d.w	$f18,$f18
    div.d	$f18,$f17,$f18
    lw	$a4,68($s1)
    mtc1	$a4,$f19
    cvt.d.w	$f19,$f19
    div.d	$f17,$f17,$f19
    trunc.w.d	$f18,$f18
    mfc1	$t3,$f18
    lwc1	$f16,0($a3)
    mult	$t3,$a5
    mul.s	$f16,$f16,$f5
    cvt.d.s	$f16,$f16
    trunc.w.d	$f17,$f17
    mflo	$t2
    add.d	$f16,$f16,$f4
    mfc1	$t0,$f17
    subu	$t2,$a1,$t2
    sll	$t2,$t2,0x3
    lw	$a7,12($s0)
    trunc.w.d	$f16,$f16
    addu	$t0,$t0,$t2
    addu	$t0,$t0,$t0
    mfc1	$a6,$f16
    # Line 466
    ld	$t2,32($sp)
    # Line 469
    addu	$a7,$a7,$t0
    sh	$a6,0($a7)
    teq	$a5,$zero,0x7
    # Line 466
    addiu	$a1,$a1,1
    # Line 475
    lw	$a3,8($sp)
    # Line 469
    teq	$a4,$zero,0x7
    # Line 475
    addu	$a3,$a3,$a0
    # Line 466
    bne	$t2,$a1,.L0da39600
    # Line 475
    sw	$a3,8($sp)
    b	.L0da391dc
    # Line 442
    ld	$gp,40($sp)
.L0da3969c:
    # Line 398
    b	.L0da39260
    sw	$t8,0($sp)
.L0da396a4:
    # Line 442
    ld	$gp,40($sp)
    # Line 392
    move	$v0,$zero
    # Line 442
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end viceConvolve

.rdata
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit_46fffe00:
    .word 0x46fffe00

