# Source: ../soft/so_vertarray.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_vertarray.c
# Total Functions: 35

.text

# Function: __glInitVertexArrayState
# Declared: Line 31 (Source lines: 32-62)
# Address: 0x0da333f0 - 0x0da33478 (Size: 136 bytes, Frame: 0)
.globl __glInitVertexArrayState
.ent __glInitVertexArrayState
__glInitVertexArrayState:
    # Line 58
    li	$a4,1
    sw	$a4,5360($a0)
    # Line 57
    sw	$zero,5352($a0)
    # Line 56
    sw	$zero,5348($a0)
    # Line 55
    sw	$zero,5344($a0)
    # Line 38
    li	$a3,5126
    # Line 53
    sw	$a3,5320($a0)
    # Line 51
    sw	$a3,5296($a0)
    # Line 48
    sw	$a3,5140($a0)
    # Line 37
    li	$a2,4
    # Line 47
    sw	$a2,5136($a0)
    # Line 45
    sw	$a3,5112($a0)
    # Line 43
    sw	$a3,5088($a0)
    # Line 42
    sw	$a2,5084($a0)
    # Line 40
    sw	$a3,5060($a0)
    # Line 38
    sw	$a3,5036($a0)
    # Line 37
    sw	$a2,5032($a0)
    # Line 60
    lui	$a1,0x7fff
    # Line 32
    lui	$v1,0x2
    # Line 60
    ori	$a1,$a1,0xffff
    # Line 61
    sw	$a1,5368($a0)
    # Line 32
    addiu	$v1,$v1,-9828
    # Line 60
    sw	$a1,5364($a0)
    # Line 32
    addu	$at,$t9,$v1
    la	$v0,__glNop
    # Line 52
    sw	$v0,5336($a0)
    # Line 50
    sw	$v0,5312($a0)
    # Line 49
    sw	$v0,5176($a0)
    # Line 46
    sw	$v0,5156($a0)
    # Line 44
    sw	$v0,5128($a0)
    # Line 41
    sw	$v0,5104($a0)
    # Line 39
    sw	$v0,5076($a0)
    # Line 62
    jr	$ra
    # Line 36
    sw	$v0,5052($a0)
.end __glInitVertexArrayState

# Function: __glim_ArrayElementEXT
# Declared: Line 64 (Source lines: 65-112)
# Address: 0x0da33480 - 0x0da336e4 (Size: 612 bytes, Frame: 192)
.globl __glim_ArrayElementEXT
.ent __glim_ArrayElementEXT
__glim_ArrayElementEXT:
    # Line 65
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    sd	$gp,40($sp)
    sd	$s1,24($sp)
    sd	$s0,16($sp)
    # Line 66
    lw	$s0,4112($zero)
    # Line 65
    sd	$s2,32($sp)
    # Line 67
    lw	$s2,5356($s0)
    # Line 65
    sd	$s3,0($sp)
    lui	$v0,0x2
    # Line 68
    lw	$s3,5348($s0)
    # Line 69
    andi	$at,$s2,0x1
    # Line 65
    move	$s1,$a0
    addiu	$v0,$v0,-9972
    # Line 69
    lw	$v1,5352($s0)
    # Line 65
    addu	$gp,$t9,$v0
    # Line 69
    beqz	$at,.L0da334e4
    sd	$v1,8($sp)
    # Line 72
    lw	$a2,5064($s0)
    mult	$a2,$a0
    lw	$t9,5076($s0)
    lw	$a0,5056($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da334e4:
    andi	$a3,$s2,0x2
    beqz	$a3,.L0da3350c
    nop
    # Line 75
    lw	$a2,5092($s0)
    mult	$a2,$s1
    lw	$t9,5104($s0)
    lw	$a0,5080($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da3350c:
    lw	$a3,3612($s0)
    li	$a4,1
    beq	$a3,$a4,.L0da336b4
    # Line 80
    andi	$a5,$s3,0x1
    beqz	$a5,.L0da33548
    # Line 85
    andi	$a4,$s3,0x2
    lw	$a3,5192($s0)
    mult	$a3,$s1
    lw	$t9,5204($s0)
    lw	$a1,5180($s0)
    li	$a0,0x83c7
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s3,0x2
.L0da33548:
    beqz	$a4,.L0da33574
    # Line 88
    andi	$a4,$s3,0x4
    lw	$a3,5220($s0)
    mult	$a3,$s1
    lw	$t9,5232($s0)
    lw	$a1,5208($s0)
    li	$a0,0x83c8
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s3,0x4
.L0da33574:
    beqz	$a4,.L0da335a0
    # Line 91
    andi	$a4,$s3,0x8
    lw	$a3,5248($s0)
    mult	$a3,$s1
    lw	$t9,5260($s0)
    lw	$a1,5236($s0)
    li	$a0,0x83c9
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s3,0x8
.L0da335a0:
    beqz	$a4,.L0da335cc
    # Line 94
    andi	$a4,$s2,0x8
    lw	$a3,5276($s0)
    mult	$a3,$s1
    lw	$t9,5288($s0)
    lw	$a1,5264($s0)
    li	$a0,0x83ca
    mflo	$a2
    jalr	$t9
    addu	$a1,$a1,$a2
    andi	$a4,$s2,0x8
.L0da335cc:
    beqz	$a4,.L0da335f4
    # Line 98
    andi	$a3,$s2,0x10
    lw	$a2,5116($s0)
    mult	$a2,$s1
    lw	$t9,5128($s0)
    lw	$a0,5108($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    andi	$a3,$s2,0x10
.L0da335f4:
    beqz	$a3,.L0da33618
    ld	$s3,0($sp)
    # Line 101
    lw	$a2,5164($s0)
    mult	$a2,$s1
    lw	$t9,5176($s0)
    lw	$a0,5160($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da33618:
    ld	$a3,8($sp)
    andi	$a3,$a3,0x1
    beqz	$a3,.L0da33648
    # Line 104
    ld	$a3,8($sp)
    lw	$a2,5300($s0)
    mult	$a2,$s1
    lw	$t9,5312($s0)
    lw	$a0,5292($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    ld	$a3,8($sp)
.L0da33648:
    andi	$a3,$a3,0x2
    beqz	$a3,.L0da33674
    # Line 107
    andi	$a3,$s2,0x20
    lw	$a2,5324($s0)
    mult	$a2,$s1
    lw	$t9,5336($s0)
    lw	$a0,5316($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    andi	$a3,$s2,0x20
.L0da33674:
    beqz	$a3,.L0da33698
    nop
    # Line 110
    lw	$a2,5040($s0)
    mult	$a2,$s1
    lw	$t9,5052($s0)
    lw	$a0,5028($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
.L0da33698:
    ld	$s0,16($sp)
    ld	$ra,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    # Line 112
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da336b4:
    # Line 75
    andi	$a3,$s2,0x4
    beqz	$a3,.L0da335cc
    # Line 94
    andi	$a4,$s2,0x8
    # Line 80
    lw	$a2,5144($s0)
    mult	$a2,$s1
    lw	$t9,5156($s0)
    lw	$a0,5132($s0)
    mflo	$a1
    jalr	$t9
    addu	$a0,$a0,$a1
    b	.L0da335cc
    # Line 94
    andi	$a4,$s2,0x8
.end __glim_ArrayElementEXT

# Function: __glim_DrawArraysEXT
# Declared: Line 114 (Source lines: 117-142)
# Address: 0x0da336f0 - 0x0da33838 (Size: 328 bytes, Frame: 48)
.globl __glim_DrawArraysEXT
.ent __glim_DrawArraysEXT
__glim_DrawArraysEXT:
    # Line 117
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    # Line 119
    lw	$s1,4112($zero)
    # Line 117
    sd	$s3,0($sp)
    # Line 124
    sltiu	$v1,$a0,10
    # Line 117
    move	$s3,$a2
    # Line 119
    lw	$at,4120($zero)
    # Line 117
    sd	$s0,8($sp)
    # Line 119
    li	$a4,1
    # Line 117
    lui	$v0,0x2
    move	$s0,$a1
    sd	$ra,40($sp)
    addiu	$v0,$v0,-10596
    sd	$gp,24($sp)
    # Line 119
    beq	$at,$a4,.L0da33824
    # Line 117
    addu	$gp,$t9,$v0
    # Line 122
    bltz	$a1,.L0da337ec
    # Line 123
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 122
    bltz	$a2,.L0da337ec
    # Line 123
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 124
    beqz	$v1,.L0da337d8
    # Line 128
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 132
    lw	$a1,3612($s1)
    bne	$a1,$a4,.L0da33760
    nop
    lw	$a2,5352($s1)
    beqz	$a2,.L0da337fc
    nop
.L0da33760:
    # Line 137
    lw	$t9,6072($s1)
    lw	$t9,28($t9)
    jal	__glSetError
    sd	$s2,32($sp)
    # Line 138
    addu	$s2,$s0,$s3
    slt	$ra,$s0,$s2
    beqz	$ra,.L0da337a8
    nop
    nop
    nop
    nop
    # Line 139
    lw	$t9,6072($s1)
.L0da33790:
    lw	$t9,792($t9)
    jalr	$t9
    move	$a0,$s0
    # Line 138
    addiu	$s0,$s0,1
    bnel	$s2,$s0,.L0da33790
    # Line 139
    lw	$t9,6072($s1)
.L0da337a8:
    # Line 140
    lw	$t9,6072($s1)
    lw	$t9,44($t9)
    jalr	$t9
    nop
.L0da337b8:
    ld	$s3,0($sp)
    ld	$s2,32($sp)
    ld	$ra,40($sp)
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    # Line 142
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da337d8:
    # Line 128
    jalr	$t9
    li	$a0,1280
    b	.L0da337b8
    sd	$s2,32($sp)
    # Line 123
    # lw $t9, -26452($gp) # &__glSetError
.L0da337ec:
    jal	__glSetError
    li	$a0,1281
    b	.L0da337b8
    sd	$s2,32($sp)
.L0da337fc:
    # Line 134
    lw	$ra,5356($s1)
    lw	$t9,12660($s1)
    sll	$ra,$ra,0x2
    addu	$t9,$t9,$ra
    lw	$t9,0($t9)
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s3
    b	.L0da337b8
    sd	$s2,32($sp)
.L0da33824:
    # Line 119
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da337b8
    sd	$s2,32($sp)
.end __glim_DrawArraysEXT

# Function: glMultiTexCoord1svSGIS
# Declared: Line 281 (Source lines: 281-283)
# Address: 0x0da33840 - 0x0da33874 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1svSGIS
glMultiTexCoord1svSGIS:
    # Line 281
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-10932
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 282
    # lw $t9, -22576($gp) # &glTexCoord1sv
    # Line 281
    sd	$ra,0($sp)
    # Line 282
    jal	glTexCoord1sv
    # Line 281
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 283
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1svSGIS

# Function: glMultiTexCoord2svSGIS
# Declared: Line 285 (Source lines: 285-287)
# Address: 0x0da33880 - 0x0da338b4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2svSGIS
glMultiTexCoord2svSGIS:
    # Line 285
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-10996
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 286
    # lw $t9, -22560($gp) # &glTexCoord2sv
    # Line 285
    sd	$ra,0($sp)
    # Line 286
    jal	glTexCoord2sv
    # Line 285
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 287
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2svSGIS

# Function: glMultiTexCoord3svSGIS
# Declared: Line 289 (Source lines: 289-291)
# Address: 0x0da338c0 - 0x0da338f4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3svSGIS
glMultiTexCoord3svSGIS:
    # Line 289
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11060
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 290
    # lw $t9, -22544($gp) # &glTexCoord3sv
    # Line 289
    sd	$ra,0($sp)
    # Line 290
    jal	glTexCoord3sv
    # Line 289
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 291
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3svSGIS

# Function: glMultiTexCoord4svSGIS
# Declared: Line 293 (Source lines: 293-295)
# Address: 0x0da33900 - 0x0da33934 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4svSGIS
glMultiTexCoord4svSGIS:
    # Line 293
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11124
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 294
    # lw $t9, -22528($gp) # &glTexCoord4sv
    # Line 293
    sd	$ra,0($sp)
    # Line 294
    jal	glTexCoord4sv
    # Line 293
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 295
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4svSGIS

# Function: glMultiTexCoord1ivSGIS
# Declared: Line 297 (Source lines: 297-299)
# Address: 0x0da33940 - 0x0da33974 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1ivSGIS
glMultiTexCoord1ivSGIS:
    # Line 297
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11188
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 298
    # lw $t9, -22580($gp) # &glTexCoord1iv
    # Line 297
    sd	$ra,0($sp)
    # Line 298
    jal	glTexCoord1iv
    # Line 297
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 299
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1ivSGIS

# Function: glMultiTexCoord2ivSGIS
# Declared: Line 301 (Source lines: 301-303)
# Address: 0x0da33980 - 0x0da339b4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2ivSGIS
glMultiTexCoord2ivSGIS:
    # Line 301
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11252
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 302
    # lw $t9, -22564($gp) # &glTexCoord2iv
    # Line 301
    sd	$ra,0($sp)
    # Line 302
    jal	glTexCoord2iv
    # Line 301
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 303
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2ivSGIS

# Function: glMultiTexCoord3ivSGIS
# Declared: Line 305 (Source lines: 305-307)
# Address: 0x0da339c0 - 0x0da339f4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3ivSGIS
glMultiTexCoord3ivSGIS:
    # Line 305
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11316
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 306
    # lw $t9, -22548($gp) # &glTexCoord3iv
    # Line 305
    sd	$ra,0($sp)
    # Line 306
    jal	glTexCoord3iv
    # Line 305
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 307
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3ivSGIS

# Function: glMultiTexCoord4ivSGIS
# Declared: Line 309 (Source lines: 309-311)
# Address: 0x0da33a00 - 0x0da33a34 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4ivSGIS
glMultiTexCoord4ivSGIS:
    # Line 309
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11380
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 310
    # lw $t9, -22532($gp) # &glTexCoord4iv
    # Line 309
    sd	$ra,0($sp)
    # Line 310
    jal	glTexCoord4iv
    # Line 309
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 311
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4ivSGIS

# Function: glMultiTexCoord1fvSGIS
# Declared: Line 313 (Source lines: 313-315)
# Address: 0x0da33a40 - 0x0da33a74 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1fvSGIS
glMultiTexCoord1fvSGIS:
    # Line 313
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11444
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 314
    # lw $t9, -22584($gp) # &glTexCoord1fv
    # Line 313
    sd	$ra,0($sp)
    # Line 314
    jal	glTexCoord1fv
    # Line 313
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 315
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1fvSGIS

# Function: glMultiTexCoord2fvSGIS
# Declared: Line 317 (Source lines: 317-319)
# Address: 0x0da33a80 - 0x0da33ab4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2fvSGIS
glMultiTexCoord2fvSGIS:
    # Line 317
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11508
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 318
    # lw $t9, -22568($gp) # &glTexCoord2fv
    # Line 317
    sd	$ra,0($sp)
    # Line 318
    jal	glTexCoord2fv
    # Line 317
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 319
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2fvSGIS

# Function: glMultiTexCoord3fvSGIS
# Declared: Line 321 (Source lines: 321-323)
# Address: 0x0da33ac0 - 0x0da33af4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3fvSGIS
glMultiTexCoord3fvSGIS:
    # Line 321
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11572
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 322
    # lw $t9, -22552($gp) # &glTexCoord3fv
    # Line 321
    sd	$ra,0($sp)
    # Line 322
    jal	glTexCoord3fv
    # Line 321
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 323
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3fvSGIS

# Function: glMultiTexCoord4fvSGIS
# Declared: Line 325 (Source lines: 325-327)
# Address: 0x0da33b00 - 0x0da33b34 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4fvSGIS
glMultiTexCoord4fvSGIS:
    # Line 325
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11636
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 326
    # lw $t9, -22536($gp) # &glTexCoord4fv
    # Line 325
    sd	$ra,0($sp)
    # Line 326
    jal	glTexCoord4fv
    # Line 325
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 327
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4fvSGIS

# Function: glMultiTexCoord1dvSGIS
# Declared: Line 329 (Source lines: 329-331)
# Address: 0x0da33b40 - 0x0da33b74 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord1dvSGIS
glMultiTexCoord1dvSGIS:
    # Line 329
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11700
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 330
    # lw $t9, -22588($gp) # &glTexCoord1dv
    # Line 329
    sd	$ra,0($sp)
    # Line 330
    jal	glTexCoord1dv
    # Line 329
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 331
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord1dvSGIS

# Function: glMultiTexCoord2dvSGIS
# Declared: Line 333 (Source lines: 333-335)
# Address: 0x0da33b80 - 0x0da33bb4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord2dvSGIS
glMultiTexCoord2dvSGIS:
    # Line 333
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11764
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 334
    # lw $t9, -22572($gp) # &glTexCoord2dv
    # Line 333
    sd	$ra,0($sp)
    # Line 334
    jal	glTexCoord2dv
    # Line 333
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 335
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord2dvSGIS

# Function: glMultiTexCoord3dvSGIS
# Declared: Line 337 (Source lines: 337-339)
# Address: 0x0da33bc0 - 0x0da33bf4 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord3dvSGIS
glMultiTexCoord3dvSGIS:
    # Line 337
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11828
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 338
    # lw $t9, -22556($gp) # &glTexCoord3dv
    # Line 337
    sd	$ra,0($sp)
    # Line 338
    jal	glTexCoord3dv
    # Line 337
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 339
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord3dvSGIS

# Function: glMultiTexCoord4dvSGIS
# Declared: Line 341 (Source lines: 341-343)
# Address: 0x0da33c00 - 0x0da33c34 (Size: 52 bytes, Frame: 16)
.ent glMultiTexCoord4dvSGIS
glMultiTexCoord4dvSGIS:
    # Line 341
    lui	$at,0x2
    addiu	$sp,$sp,-16
    addiu	$at,$at,-11892
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 342
    # lw $t9, -22540($gp) # &glTexCoord4dv
    # Line 341
    sd	$ra,0($sp)
    # Line 342
    jal	glTexCoord4dv
    # Line 341
    move	$a0,$a1
    ld	$ra,0($sp)
    # Line 343
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end glMultiTexCoord4dvSGIS

# Function: __glim_VertexPointerEXT
# Declared: Line 431 (Source lines: 436-469)
# Address: 0x0da33c40 - 0x0da33d98 (Size: 344 bytes, Frame: 16)
.globl __glim_VertexPointerEXT
.ent __glim_VertexPointerEXT
__glim_VertexPointerEXT:
    # Line 437
    lw	$a6,4112($zero)
    # Line 436
    addiu	$sp,$sp,-16
    lui	$at,0x2
    sd	$ra,8($sp)
    addiu	$at,$at,-11956
    sd	$gp,0($sp)
    # Line 439
    bltz	$a2,.L0da33d24
    # Line 436
    addu	$gp,$t9,$at
    # Line 439
    bltz	$a3,.L0da33d24
    slti	$v0,$a0,2
    bnez	$v0,.L0da33d24
    slti	$v1,$a0,5
    beqz	$v1,.L0da33d24
    # Line 444
    sltiu	$a5,$a1,5120
    bnez	$a5,.L0da33d44
    # Line 446
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 444
    sltiu	$a7,$a1,5131
    beqz	$a7,.L0da33d40
    # Line 450
    lw	$t3,-21552($gp)
    sll	$t0,$a1,0x2
    sll	$t2,$a0,0x2
    addu	$t0,$t0,$a1
    lui	$t1,0xfffe
    sll	$t8,$t0,0x2
    addu	$t2,$t1,$t2
    addu	$t3,$t3,$t8
    # Line 461
    la	$a7,sub_0da50000
    # Line 450
    addu	$t2,$t2,$t3
    lw	$t2,28672($t2)
    # Line 461
    addiu	$a7,$a7,-32040
    # Line 465
    li	$t3,-256
    # Line 450
    beqz	$t2,.L0da33d7c
    sw	$t2,5052($a6)
    ld	$ra,8($sp)
    # Line 460
    sw	$a1,5036($a6)
    # Line 459
    sw	$a0,5032($a6)
    # Line 460
    beqz	$a2,.L0da33d5c
    # Line 458
    sw	$a4,5028($a6)
    # Line 461
    move	$a4,$a2
.L0da33cdc:
    # Line 464
    sw	$a3,5048($a6)
    # Line 463
    sw	$a2,5044($a6)
    # Line 465
    sll	$t1,$a1,0x2
    lw	$t2,5340($a6)
    addu	$t1,$a7,$t1
    lw	$t1,-18912($t1)
    # Line 461
    sw	$a4,5040($a6)
    # Line 465
    sll	$t0,$a0,0x4
    and	$t2,$t2,$t3
    # Line 469
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 465
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    # Line 469
    jr	$ra
    # Line 465
    sw	$t0,5340($a6)
.L0da33d18:
    # Line 469
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da33d24:
    # Line 441
    # lw $t9, -26452($gp) # &__glSetError
    # Line 440
    la	$t2,__glNop
    # Line 441
    li	$a0,1281
    jal	__glSetError
    # Line 440
    sw	$t2,5052($a6)
    b	.L0da33d18
    ld	$ra,8($sp)
.L0da33d40:
    # Line 446
    # lw $t9, -26452($gp) # &__glSetError
.L0da33d44:
    # Line 445
    la	$t3,__glNop
    # Line 446
    li	$a0,1280
    jal	__glSetError
    # Line 445
    sw	$t3,5052($a6)
    b	.L0da33d18
    ld	$ra,8($sp)
.L0da33d5c:
    # Line 461
    la	$a7,sub_0da50000
    addu	$a4,$a0,$t0
    sll	$a4,$a4,0x2
    addiu	$a7,$a7,-32040
    addu	$a4,$a7,$a4
    addu	$a4,$t1,$a4
    b	.L0da33cdc
    lw	$a4,28672($a4)
.L0da33d7c:
    # Line 453
    # lw $t9, -26452($gp) # &__glSetError
    # Line 452
    la	$t0,__glNop
    # Line 453
    li	$a0,1280
    jal	__glSetError
    # Line 452
    sw	$t0,5052($a6)
    b	.L0da33d18
    ld	$ra,8($sp)
.end __glim_VertexPointerEXT

# Function: __glim_NormalPointerEXT
# Declared: Line 471 (Source lines: 475-507)
# Address: 0x0da33da0 - 0x0da33ecc (Size: 300 bytes, Frame: 16)
.globl __glim_NormalPointerEXT
.ent __glim_NormalPointerEXT
__glim_NormalPointerEXT:
    # Line 476
    lw	$a5,4112($zero)
    # Line 475
    addiu	$sp,$sp,-16
    lui	$at,0x2
    sd	$ra,8($sp)
    addiu	$at,$at,-12308
    sd	$gp,0($sp)
    # Line 478
    bltz	$a1,.L0da33e94
    # Line 475
    addu	$gp,$t9,$at
    # Line 478
    bltz	$a2,.L0da33e94
    # Line 489
    lw	$a4,-21548($gp)
    # Line 483
    sltiu	$v0,$a0,5120
    bnez	$v0,.L0da33e60
    sltiu	$v1,$a0,5131
    beqz	$v1,.L0da33e60
    # Line 489
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    lui	$t0,0xfffe
    addu	$a4,$a4,$a7
    addu	$a4,$t0,$a4
    lw	$a4,28684($a4)
    beqz	$a4,.L0da33eb0
    sw	$a4,5076($a5)
    # Line 503
    li	$t1,-3841
    ld	$ra,8($sp)
    # Line 498
    sw	$a0,5060($a5)
    beqz	$a1,.L0da33e7c
    # Line 497
    sw	$a3,5056($a5)
    # Line 499
    la	$a6,sub_0da50000
    move	$a3,$a1
    addiu	$a6,$a6,-32040
.L0da33e1c:
    # Line 502
    sw	$a2,5072($a5)
    # Line 501
    sw	$a1,5068($a5)
    # Line 503
    sll	$a7,$a0,0x2
    lw	$t0,5340($a5)
    addu	$a7,$a6,$a7
    lw	$a7,-18912($a7)
    # Line 507
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 499
    sw	$a3,5064($a5)
    # Line 503
    and	$t0,$t0,$t1
    sll	$a7,$a7,0x8
    or	$a7,$a7,$t0
    # Line 507
    jr	$ra
    # Line 503
    sw	$a7,5340($a5)
.L0da33e54:
    # Line 507
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da33e60:
    # Line 485
    # lw $t9, -26452($gp) # &__glSetError
    # Line 484
    la	$t0,__glNop
    # Line 485
    li	$a0,1280
    jal	__glSetError
    # Line 484
    sw	$t0,5076($a5)
    b	.L0da33e54
    ld	$ra,8($sp)
.L0da33e7c:
    # Line 499
    la	$a6,sub_0da50000
    addiu	$a6,$a6,-32040
    addu	$a3,$a7,$a6
    addu	$a3,$t0,$a3
    b	.L0da33e1c
    lw	$a3,28684($a3)
.L0da33e94:
    # Line 480
    # lw $t9, -26452($gp) # &__glSetError
    # Line 479
    la	$a7,__glNop
    # Line 480
    li	$a0,1281
    jal	__glSetError
    # Line 479
    sw	$a7,5076($a5)
    b	.L0da33e54
    ld	$ra,8($sp)
.L0da33eb0:
    # Line 492
    # lw $t9, -26452($gp) # &__glSetError
    # Line 491
    la	$t0,__glNop
    # Line 492
    li	$a0,1280
    jal	__glSetError
    # Line 491
    sw	$t0,5076($a5)
    b	.L0da33e54
    ld	$ra,8($sp)
.end __glim_NormalPointerEXT

# Function: __glim_ColorPointerEXT
# Declared: Line 509 (Source lines: 514-547)
# Address: 0x0da33ed0 - 0x0da34040 (Size: 368 bytes, Frame: 16)
.globl __glim_ColorPointerEXT
.ent __glim_ColorPointerEXT
__glim_ColorPointerEXT:
    # Line 515
    lw	$a6,4112($zero)
    # Line 514
    addiu	$sp,$sp,-16
    lui	$at,0x2
    sd	$ra,8($sp)
    addiu	$at,$at,-12612
    sd	$gp,0($sp)
    # Line 517
    bltz	$a2,.L0da33fcc
    # Line 514
    addu	$gp,$t9,$at
    # Line 517
    bltz	$a3,.L0da33fd0
    # Line 519
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 517
    slti	$v0,$a0,3
    bnez	$v0,.L0da33fd0
    # Line 519
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 517
    slti	$v1,$a0,5
    beqz	$v1,.L0da33fd0
    # Line 519
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 522
    sltiu	$a5,$a1,5120
    bnez	$a5,.L0da33fec
    # Line 524
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 522
    sltiu	$a7,$a1,5131
    beqz	$a7,.L0da33fe8
    # Line 528
    lw	$t3,-21544($gp)
    sll	$t0,$a1,0x2
    sll	$t2,$a0,0x2
    addu	$t0,$t0,$a1
    lui	$t1,0xfffe
    sll	$t8,$t0,0x2
    addu	$t2,$t1,$t2
    addu	$t3,$t3,$t8
    # Line 539
    la	$a7,sub_0da50000
    # Line 528
    addu	$t2,$t2,$t3
    lw	$t2,28672($t2)
    # Line 539
    addiu	$a7,$a7,-32040
    # Line 543
    lui	$t3,0xf
    ori	$t3,$t3,0xf000
    # Line 528
    beqz	$t2,.L0da34024
    sw	$t2,5104($a6)
    ld	$ra,8($sp)
    # Line 538
    sw	$a1,5088($a6)
    # Line 537
    sw	$a0,5084($a6)
    # Line 538
    beqz	$a2,.L0da34004
    # Line 536
    sw	$a4,5080($a6)
    # Line 539
    move	$a4,$a2
.L0da33f7c:
    # Line 542
    sw	$a3,5100($a6)
    # Line 543
    sll	$t1,$a1,0x2
    lw	$t2,5340($a6)
    addu	$t1,$a7,$t1
    lw	$t1,-18912($t1)
    # Line 541
    sw	$a2,5096($a6)
    # Line 543
    sll	$t0,$a0,0x10
    nor	$t3,$t3,$zero
    # Line 539
    sw	$a4,5092($a6)
    # Line 543
    and	$t2,$t2,$t3
    sll	$t1,$t1,0xc
    # Line 547
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 543
    or	$t1,$t1,$t2
    or	$t0,$t0,$t1
    # Line 547
    jr	$ra
    # Line 543
    sw	$t0,5340($a6)
.L0da33fc0:
    # Line 547
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da33fcc:
    # Line 519
    # lw $t9, -26452($gp) # &__glSetError
.L0da33fd0:
    # Line 518
    la	$t2,__glNop
    # Line 519
    li	$a0,1281
    jal	__glSetError
    # Line 518
    sw	$t2,5104($a6)
    b	.L0da33fc0
    ld	$ra,8($sp)
.L0da33fe8:
    # Line 524
    # lw $t9, -26452($gp) # &__glSetError
.L0da33fec:
    # Line 523
    la	$t3,__glNop
    # Line 524
    li	$a0,1280
    jal	__glSetError
    # Line 523
    sw	$t3,5104($a6)
    b	.L0da33fc0
    ld	$ra,8($sp)
.L0da34004:
    # Line 539
    la	$a7,sub_0da50000
    addu	$a4,$a0,$t0
    sll	$a4,$a4,0x2
    addiu	$a7,$a7,-32040
    addu	$a4,$a7,$a4
    addu	$a4,$t1,$a4
    b	.L0da33f7c
    lw	$a4,28672($a4)
.L0da34024:
    # Line 531
    # lw $t9, -26452($gp) # &__glSetError
    # Line 530
    la	$t0,__glNop
    # Line 531
    li	$a0,1280
    jal	__glSetError
    # Line 530
    sw	$t0,5104($a6)
    b	.L0da33fc0
    ld	$ra,8($sp)
.end __glim_ColorPointerEXT

# Function: __glim_TexCoordPointerEXT
# Declared: Line 549 (Source lines: 554-600)
# Address: 0x0da34040 - 0x0da34234 (Size: 500 bytes, Frame: 16)
.globl __glim_TexCoordPointerEXT
.ent __glim_TexCoordPointerEXT
__glim_TexCoordPointerEXT:
    # Line 557
    lw	$a6,4112($zero)
    # Line 554
    addiu	$sp,$sp,-16
    lui	$at,0x2
    sd	$ra,8($sp)
    addiu	$at,$at,-12980
    sd	$gp,0($sp)
    # Line 559
    bltz	$a2,.L0da341bc
    # Line 554
    addu	$gp,$t9,$at
    # Line 559
    bltz	$a3,.L0da341c0
    # Line 561
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 559
    blez	$a0,.L0da341c0
    # Line 561
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 559
    slti	$v0,$a0,5
    beqz	$v0,.L0da341c0
    # Line 561
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 564
    sltiu	$v1,$a1,5120
    bnez	$v1,.L0da341a4
    # Line 566
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 564
    sltiu	$a5,$a1,5131
    beqz	$a5,.L0da341a4
    # Line 566
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 570
    lw	$t0,-21536($gp)
    sll	$t9,$a1,0x2
    sll	$t8,$a0,0x2
    addu	$t9,$t9,$a1
    lui	$ra,0xfffe
    sll	$t3,$t9,0x2
    addu	$a7,$ra,$t8
    addu	$t0,$t0,$t3
    addu	$a7,$a7,$t0
    lw	$a7,28672($a7)
    beqz	$a7,.L0da341f8
    nop
    # Line 576
    lw	$t1,28212($a6)
    lui	$t2,0xffff
    ori	$t2,$t2,0x7c39
    addu	$t1,$t1,$t2
    # Line 577
    sll	$t0,$t1,0x3
    subu	$t0,$t0,$t1
    sll	$t0,$t0,0x2
    addu	$t0,$a6,$t0
    # Line 579
    sw	$a1,5188($t0)
    # Line 578
    sw	$a0,5184($t0)
    # Line 580
    move	$t2,$a2
    # Line 579
    beqz	$a2,.L0da341d8
    # Line 577
    sw	$a4,5180($t0)
.L0da340f8:
    # Line 584
    sw	$a7,5204($t0)
    # Line 583
    sw	$a3,5200($t0)
    # Line 582
    sw	$a2,5196($t0)
    # Line 584
    beqz	$t1,.L0da3411c
    # Line 580
    sw	$t2,5192($t0)
    ld	$ra,8($sp)
.L0da34110:
    # Line 600
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da3411c:
    # Line 589
    sw	$a1,5140($a6)
    # Line 594
    lui	$at,0xfffe
    # Line 595
    lui	$v0,0x7f0
    la	$v1,sub_0da50000
    # Line 588
    sw	$a0,5136($a6)
    # Line 595
    nor	$v0,$v0,$zero
    # Line 594
    addu	$at,$at,$t8
    # Line 587
    sw	$a4,5132($a6)
    # Line 589
    beqz	$a2,.L0da3420c
    # Line 595
    addiu	$v1,$v1,-32040
    # Line 590
    move	$a4,$a2
.L0da34148:
    sw	$a4,5144($a6)
    # Line 592
    sw	$a2,5148($a6)
    # Line 593
    sw	$a3,5152($a6)
    # Line 595
    sll	$a1,$a1,0x2
    addu	$v1,$v1,$a1
    # Line 594
    lw	$a1,-21540($gp)
    # Line 600
    ld	$gp,0($sp)
    # Line 595
    lw	$t9,5340($a6)
    lw	$v1,-18912($v1)
    # Line 594
    addu	$a1,$a1,$t3
    ld	$ra,8($sp)
    # Line 595
    sll	$t3,$a0,0x18
    # Line 594
    addu	$at,$at,$a1
    # Line 595
    and	$t9,$t9,$v0
    sll	$t8,$v1,0x14
    # Line 594
    lw	$at,28672($at)
    # Line 600
    addiu	$sp,$sp,16
    # Line 595
    or	$t8,$t8,$t9
    # Line 594
    sw	$at,5156($a6)
    # Line 595
    or	$t3,$t3,$t8
    # Line 600
    jr	$ra
    # Line 595
    sw	$t3,5340($a6)
    # Line 566
    # lw $t9, -26452($gp) # &__glSetError
.L0da341a4:
    # Line 565
    la	$a1,__glNop
    # Line 566
    li	$a0,1280
    jal	__glSetError
    # Line 565
    sw	$a1,5156($a6)
    b	.L0da34110
    ld	$ra,8($sp)
.L0da341bc:
    # Line 561
    # lw $t9, -26452($gp) # &__glSetError
.L0da341c0:
    # Line 560
    la	$a2,__glNop
    # Line 561
    li	$a0,1281
    jal	__glSetError
    # Line 560
    sw	$a2,5156($a6)
    b	.L0da34110
    ld	$ra,8($sp)
.L0da341d8:
    # Line 580
    la	$t2,sub_0da50000
    addu	$at,$a0,$t9
    sll	$at,$at,0x2
    addiu	$t2,$t2,-32040
    addu	$t2,$t2,$at
    addu	$t2,$ra,$t2
    b	.L0da340f8
    lw	$t2,28672($t2)
.L0da341f8:
    # Line 572
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0da34110
    ld	$ra,8($sp)
.L0da3420c:
    # Line 590
    sll	$a5,$a1,0x2
    la	$a4,sub_0da50000
    addu	$a5,$a5,$a1
    addu	$a5,$a0,$a5
    addiu	$a4,$a4,-32040
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    addu	$a4,$ra,$a4
    b	.L0da34148
    lw	$a4,28672($a4)
.end __glim_TexCoordPointerEXT

# Function: __glim_EdgeFlagPointerEXT
# Declared: Line 603 (Source lines: 606-623)
# Address: 0x0da34240 - 0x0da342d0 (Size: 144 bytes, Frame: 16)
.globl __glim_EdgeFlagPointerEXT
.ent __glim_EdgeFlagPointerEXT
__glim_EdgeFlagPointerEXT:
    # Line 607
    lw	$a4,4112($zero)
    # Line 606
    addiu	$sp,$sp,-16
    lui	$at,0x2
    sd	$ra,8($sp)
    addiu	$at,$at,-13492
    sd	$gp,0($sp)
    # Line 609
    bltz	$a0,.L0da342b4
    # Line 606
    addu	$gp,$t9,$at
    # Line 609
    bltz	$a1,.L0da342b8
    # Line 611
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 617
    sw	$a0,5168($a4)
    # Line 615
    sw	$a2,5160($a4)
    # Line 622
    la	$a2,glEdgeFlagv
    # Line 623
    ld	$gp,0($sp)
    # Line 618
    sw	$a1,5172($a4)
    # Line 616
    li	$v0,1
    movn	$v0,$a0,$a0
    sw	$v0,5164($a4)
    move	$ra,$ra
    # Line 619
    lw	$v1,5340($a4)
    # Line 623
    addiu	$sp,$sp,16
    # Line 619
    lui	$a1,0x800
    # Line 622
    sw	$a2,5176($a4)
    # Line 619
    or	$v1,$v1,$a1
    # Line 623
    jr	$ra
    # Line 619
    sw	$v1,5340($a4)
.L0da342a8:
    # Line 623
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da342b4:
    # Line 611
    # lw $t9, -26452($gp) # &__glSetError
.L0da342b8:
    # Line 610
    la	$a3,__glNop
    # Line 611
    li	$a0,1281
    jal	__glSetError
    # Line 610
    sw	$a3,5176($a4)
    b	.L0da342a8
    ld	$ra,8($sp)
.end __glim_EdgeFlagPointerEXT

# Function: __glim_IndexPointerEXT
# Declared: Line 625 (Source lines: 629-660)
# Address: 0x0da342d0 - 0x0da34408 (Size: 312 bytes, Frame: 16)
.globl __glim_IndexPointerEXT
.ent __glim_IndexPointerEXT
__glim_IndexPointerEXT:
    # Line 630
    lw	$a5,4112($zero)
    # Line 629
    addiu	$sp,$sp,-16
    lui	$at,0x2
    sd	$ra,8($sp)
    addiu	$at,$at,-13636
    sd	$gp,0($sp)
    # Line 632
    bltz	$a1,.L0da343d0
    # Line 629
    addu	$gp,$t9,$at
    # Line 632
    bltz	$a2,.L0da343d0
    # Line 643
    lw	$a4,-21532($gp)
    # Line 637
    sltiu	$v0,$a0,5120
    bnez	$v0,.L0da343a0
    # Line 639
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 637
    sltiu	$v1,$a0,5131
    beqz	$v1,.L0da343a0
    # Line 639
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 643
    sll	$a7,$a0,0x2
    addu	$a7,$a7,$a0
    sll	$a7,$a7,0x2
    lui	$t0,0xfffe
    addu	$a4,$a4,$a7
    addu	$a4,$t0,$a4
    lw	$a4,28676($a4)
    beqz	$a4,.L0da343ec
    sw	$a4,5128($a5)
    # Line 657
    lui	$t1,0xfff
    ld	$ra,8($sp)
    # Line 652
    sw	$a0,5112($a5)
    # Line 651
    sw	$a3,5108($a5)
    # Line 652
    beqz	$a1,.L0da343b8
    # Line 657
    ori	$t1,$t1,0xffff
    # Line 653
    la	$a6,sub_0da50000
    move	$a3,$a1
    addiu	$a6,$a6,-32040
.L0da34358:
    # Line 656
    sw	$a2,5124($a5)
    # Line 655
    sw	$a1,5120($a5)
    # Line 657
    sll	$a7,$a0,0x2
    lw	$t0,5340($a5)
    addu	$a7,$a6,$a7
    lw	$a7,-18912($a7)
    # Line 660
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 653
    sw	$a3,5116($a5)
    # Line 657
    and	$t0,$t0,$t1
    sll	$a7,$a7,0x1c
    or	$a7,$a7,$t0
    # Line 660
    jr	$ra
    # Line 657
    sw	$a7,5340($a5)
.L0da34390:
    # Line 660
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 639
    # lw $t9, -26452($gp) # &__glSetError
.L0da343a0:
    # Line 638
    la	$t0,__glNop
    # Line 639
    li	$a0,1280
    jal	__glSetError
    # Line 638
    sw	$t0,5128($a5)
    b	.L0da34390
    ld	$ra,8($sp)
.L0da343b8:
    # Line 653
    la	$a6,sub_0da50000
    addiu	$a6,$a6,-32040
    addu	$a3,$a7,$a6
    addu	$a3,$t0,$a3
    b	.L0da34358
    lw	$a3,28676($a3)
.L0da343d0:
    # Line 634
    # lw $t9, -26452($gp) # &__glSetError
    # Line 633
    la	$a7,__glNop
    # Line 634
    li	$a0,1281
    jal	__glSetError
    # Line 633
    sw	$a7,5128($a5)
    b	.L0da34390
    ld	$ra,8($sp)
.L0da343ec:
    # Line 646
    # lw $t9, -26452($gp) # &__glSetError
    # Line 645
    la	$t0,__glNop
    # Line 646
    li	$a0,1280
    jal	__glSetError
    # Line 645
    sw	$t0,5128($a5)
    b	.L0da34390
    ld	$ra,8($sp)
.end __glim_IndexPointerEXT

# Function: __glim_ColorPointer
# Declared: Line 733 (Source lines: 733-739)
# Address: 0x0da34410 - 0x0da34468 (Size: 88 bytes, Frame: 16)
.globl __glim_ColorPointer
.ent __glim_ColorPointer
__glim_ColorPointer:
    # Line 733
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x2
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v1,$v1,-13956
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da34454
    addu	$gp,$t9,$v1
    # Line 738
    # lw $t9, -23608($gp) # &__glim_ColorPointerEXT
    bal __glim_ColorPointerEXT
    move	$a3,$zero
    ld	$ra,8($sp)
.L0da34448:
    # Line 739
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da34454:
    # Line 735
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da34448
    ld	$ra,8($sp)
.end __glim_ColorPointer

# Function: __glim_DrawElements
# Declared: Line 742 (Source lines: 742-773)
# Address: 0x0da34470 - 0x0da34610 (Size: 416 bytes, Frame: 48)
.globl __glim_DrawElements
.ent __glim_DrawElements
__glim_DrawElements:
    # Line 742
    addiu	$sp,$sp,-48
    sd	$s1,16($sp)
    move	$s1,$a2
    lw	$at,4120($zero)
    sd	$s2,8($sp)
    li	$v0,1
    lui	$v1,0x2
    move	$s2,$a1
    sd	$ra,32($sp)
    addiu	$v1,$v1,-14052
    sd	$gp,24($sp)
    beq	$at,$v0,.L0da345ec
    addu	$gp,$t9,$v1
    # Line 743
    bltz	$a1,.L0da34600
    # Line 747
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 750
    sltiu	$a1,$a0,10
    beqz	$a1,.L0da344d0
    li	$a1,5121
    beq	$a1,$a2,.L0da344f4
    sd	$a3,0($sp)
    li	$a2,5123
    beq	$s1,$a2,.L0da344f4
    li	$a3,5125
    beq	$s1,$a3,.L0da344f4
.L0da344d0:
    # Line 753
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,32($sp)
.L0da344e0:
    ld	$s2,8($sp)
    ld	$s1,16($sp)
    # Line 773
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da344f4:
    # Line 756
    lw	$t9,4204($zero)
    jalr	$t9
    nop
    # Line 757
    li	$a4,5121
    li	$a5,5123
    beq	$a4,$s1,.L0da3456c
    li	$a6,5125
    beq	$s1,$a5,.L0da345ac
    nop
    bne	$s1,$a6,.L0da34558
    nop
    # Line 768
    blez	$s2,.L0da34558
    sll	$s1,$s2,0x2
    ld	$t8,0($sp)
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    # Line 769
    lw	$t9,4968($zero)
.L0da34540:
    jalr	$t9
    lw	$a0,0($s0)
    # Line 768
    addiu	$s0,$s0,4
    bnel	$s0,$s1,.L0da34540
    # Line 769
    lw	$t9,4968($zero)
    ld	$s0,40($sp)
.L0da34558:
    # Line 772
    lw	$t9,4220($zero)
    jalr	$t9
    nop
    b	.L0da344e0
    ld	$ra,32($sp)
.L0da3456c:
    # Line 760
    blez	$s2,.L0da34558
    ld	$s1,0($sp)
    sd	$s0,40($sp)
    move	$s0,$s1
    addu	$s1,$s2,$s1
    nop
    nop
    nop
    # Line 761
    lw	$t9,4968($zero)
.L0da34590:
    jalr	$t9
    lbu	$a0,0($s0)
    # Line 760
    addiu	$s0,$s0,1
    bnel	$s0,$s1,.L0da34590
    # Line 761
    lw	$t9,4968($zero)
    b	.L0da34558
    ld	$s0,40($sp)
.L0da345ac:
    # Line 764
    blez	$s2,.L0da34558
    addu	$s1,$s2,$s2
    ld	$t8,0($sp)
    sd	$s0,40($sp)
    move	$s0,$t8
    addu	$s1,$s1,$t8
    nop
    nop
    # Line 765
    lw	$t9,4968($zero)
.L0da345d0:
    jalr	$t9
    lhu	$a0,0($s0)
    # Line 764
    addiu	$s0,$s0,2
    bnel	$s0,$s1,.L0da345d0
    # Line 765
    lw	$t9,4968($zero)
    b	.L0da34558
    ld	$s0,40($sp)
.L0da345ec:
    # Line 743
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da344e0
    ld	$ra,32($sp)
.L0da34600:
    # Line 747
    jalr	$t9
    li	$a0,1281
    b	.L0da344e0
    ld	$ra,32($sp)
.end __glim_DrawElements

# Function: __glim_DrawRangeElements
# Declared: Line 776 (Source lines: 777-785)
# Address: 0x0da34610 - 0x0da3466c (Size: 92 bytes, Frame: 16)
.globl __glim_DrawRangeElements
.ent __glim_DrawRangeElements
__glim_DrawRangeElements:
    # Line 777
    addiu	$sp,$sp,-16
    sltu	$at,$a2,$a1
    lui	$v0,0x2
    move	$a7,$a3
    sd	$ra,8($sp)
    addiu	$v0,$v0,-14468
    sd	$gp,0($sp)
    beqz	$at,.L0da34648
    addu	$gp,$t9,$v0
    # Line 780
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0da3465c
    nop
.L0da34648:
    # Line 784
    # lw $t9, -23588($gp) # &__glim_DrawElements
    move	$a2,$a4
    move	$a1,$a3
    bal __glim_DrawElements
    move	$a3,$a5
.L0da3465c:
    ld	$ra,8($sp)
    # Line 785
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_DrawRangeElements

# Function: __glim_EdgeFlagPointer
# Declared: Line 788 (Source lines: 788-794)
# Address: 0x0da34670 - 0x0da346c8 (Size: 88 bytes, Frame: 16)
.globl __glim_EdgeFlagPointer
.ent __glim_EdgeFlagPointer
__glim_EdgeFlagPointer:
    # Line 788
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x2
    move	$a2,$a1
    sd	$ra,8($sp)
    addiu	$v1,$v1,-14564
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da346b4
    addu	$gp,$t9,$v1
    # Line 793
    # lw $t9, -23600($gp) # &__glim_EdgeFlagPointerEXT
    bal __glim_EdgeFlagPointerEXT
    move	$a1,$zero
    ld	$ra,8($sp)
.L0da346a8:
    # Line 794
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da346b4:
    # Line 790
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da346a8
    ld	$ra,8($sp)
.end __glim_EdgeFlagPointer

# Function: __glim_IndexPointer
# Declared: Line 797 (Source lines: 797-803)
# Address: 0x0da346d0 - 0x0da34728 (Size: 88 bytes, Frame: 16)
.globl __glim_IndexPointer
.ent __glim_IndexPointer
__glim_IndexPointer:
    # Line 797
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x2
    move	$a3,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,-14660
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da34714
    addu	$gp,$t9,$v1
    # Line 802
    # lw $t9, -23596($gp) # &__glim_IndexPointerEXT
    bal __glim_IndexPointerEXT
    move	$a2,$zero
    ld	$ra,8($sp)
.L0da34708:
    # Line 803
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da34714:
    # Line 799
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da34708
    ld	$ra,8($sp)
.end __glim_IndexPointer

# Function: __glim_InterleavedArrays
# Declared: Line 806 (Source lines: 806-913)
# Address: 0x0da34730 - 0x0da349f0 (Size: 704 bytes, Frame: 208)
.globl __glim_InterleavedArrays
.ent __glim_InterleavedArrays
__glim_InterleavedArrays:
    # Line 806
    addiu	$sp,$sp,-80
    sd	$s1,16($sp)
    # Line 844
    lw	$s1,4112($zero)
    sd	$s5,64($sp)
    sd	$s0,56($sp)
    sd	$ra,48($sp)
    # Line 806
    sd	$s4,24($sp)
    move	$s4,$a2
    # Line 844
    lw	$at,4120($zero)
    # Line 806
    sd	$s3,32($sp)
    # Line 844
    li	$v0,1
    # Line 806
    lui	$v1,0x2
    move	$s3,$a1
    sd	$s2,40($sp)
    addiu	$v1,$v1,-14756
    sd	$gp,8($sp)
    # Line 844
    beq	$at,$v0,.L0da349cc
    # Line 806
    addu	$gp,$t9,$v1
    # Line 844
    bltz	$a1,.L0da349e0
    # Line 847
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 850
    sltiu	$a1,$a0,10784
    bnez	$a1,.L0da34954
    # Line 851
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 850
    sltiu	$a2,$a0,10798
    beqz	$a2,.L0da34954
    # Line 851
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 852
    la	$s2,sub_0da50000
    sll	$t8,$a0,0x3
    addu	$t8,$t8,$a0
    sll	$t8,$t8,0x2
    addiu	$s2,$s2,-30424
    addu	$s2,$s2,$t8
    lui	$t8,0x6
    beqz	$s3,.L0da34964
    subu	$s2,$s2,$t8
.L0da347bc:
    # Line 859
    lw	$t9,6072($s1)
    lw	$t9,876($t9)
    jal	__glSetError
    li	$a0,0x8079
    # Line 860
    lw	$t9,6072($s1)
    lw	$t9,876($t9)
    jalr	$t9
    li	$a0,0x8077
    lbu	$ra,4992($s2)
    beqz	$ra,.L0da3496c
    # Line 873
    move	$s0,$zero
    # Line 863
    lw	$s5,5360($s1)
    # Line 864
    lw	$v0,5012($s2)
    addiu	$v1,$s5,-1
    mult	$v0,$v1
    move	$s0,$zero
    mflo	$at
    blez	$s5,.L0da34850
    sd	$at,0($sp)
    nop
    # Line 869
    lw	$t9,6072($s1)
.L0da34810:
    lw	$t9,888($t9)
    jalr	$t9
    li	$a0,0x8078
    # Line 870
    lw	$ra,5012($s2)
    mult	$ra,$s0
    lw	$t9,6072($s1)
    lw	$t9,904($t9)
    move	$a2,$s3
    li	$a1,5126
    mflo	$a3
    lw	$a0,4996($s2)
    jalr	$t9
    addu	$a3,$s4,$a3
    # Line 865
    addiu	$s0,$s0,1
    bnel	$s5,$s0,.L0da34810
    # Line 869
    lw	$t9,6072($s1)
.L0da34850:
    # Line 873
    lw	$at,3612($s1)
    slt	$at,$s5,$at
    beqz	$at,.L0da34884
    move	$s0,$s5
.L0da34860:
    # Line 877
    lw	$t9,6072($s1)
    lw	$t9,876($t9)
    jalr	$t9
    li	$a0,0x8078
    # Line 873
    lw	$ra,3612($s1)
    addiu	$s0,$s0,1
    slt	$ra,$s0,$ra
    bnez	$ra,.L0da34860
    nop
.L0da34884:
    # Line 881
    lbu	$at,4993($s2)
    ld	$s0,0($sp)
    lw	$a1,6072($s1)
    beqz	$at,.L0da349a4
    addu	$s0,$s0,$s4
    # Line 893
    lw	$t9,888($a1)
    jalr	$t9
    li	$a0,0x8076
    # Line 894
    lw	$t9,6072($s1)
    lw	$t9,872($t9)
    lw	$a3,5012($s2)
    move	$a2,$s3
    lw	$a1,5008($s2)
    lw	$a0,5000($s2)
    jalr	$t9
    addu	$a3,$a3,$s0
    # Line 897
    lbu	$ra,4994($s2)
.L0da348c8:
    beqz	$ra,.L0da349b8
    lw	$a1,6072($s1)
    # Line 900
    lw	$t9,888($a1)
    jalr	$t9
    li	$a0,0x8075
    # Line 901
    lw	$t9,6072($s1)
    lw	$t9,900($t9)
    lw	$a2,5016($s2)
    move	$a1,$s3
    li	$a0,5126
    jalr	$t9
    addu	$a2,$a2,$s0
    # Line 910
    lw	$t9,6072($s1)
.L0da348fc:
    lw	$t9,888($t9)
    jalr	$t9
    li	$a0,0x8074
    # Line 911
    lw	$t9,6072($s1)
    lw	$t9,908($t9)
    lw	$a3,5020($s2)
    move	$a2,$s3
    li	$a1,5126
    lw	$a0,5004($s2)
    jalr	$t9
    addu	$a3,$a3,$s0
    ld	$s5,64($sp)
.L0da3492c:
    ld	$s0,56($sp)
    ld	$s2,40($sp)
    # Line 913
    ld	$gp,8($sp)
    ld	$ra,48($sp)
    ld	$s1,16($sp)
    ld	$s3,32($sp)
    ld	$s4,24($sp)
    jr	$ra
    addiu	$sp,$sp,80
    # Line 851
    # lw $t9, -26452($gp) # &__glSetError
.L0da34954:
    jal	__glSetError
    li	$a0,1280
    b	.L0da3492c
    ld	$s5,64($sp)
.L0da34964:
    # Line 855
    b	.L0da347bc
    lw	$s3,5024($s2)
.L0da3496c:
    # Line 873
    lw	$ra,3612($s1)
    blez	$ra,.L0da3499c
    nop
.L0da34978:
    # Line 885
    lw	$t9,6072($s1)
    lw	$t9,876($t9)
    jalr	$t9
    li	$a0,0x8078
    # Line 881
    lw	$ra,3612($s1)
    addiu	$s0,$s0,1
    slt	$ra,$s0,$ra
    bnez	$ra,.L0da34978
    nop
.L0da3499c:
    b	.L0da34884
    sd	$zero,0($sp)
.L0da349a4:
    # Line 897
    lw	$t9,876($a1)
    jalr	$t9
    li	$a0,0x8076
    b	.L0da348c8
    lbu	$ra,4994($s2)
.L0da349b8:
    # Line 904
    lw	$t9,876($a1)
    jalr	$t9
    li	$a0,0x8075
    b	.L0da348fc
    # Line 910
    lw	$t9,6072($s1)
.L0da349cc:
    # Line 844
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da3492c
    ld	$s5,64($sp)
.L0da349e0:
    # Line 847
    jalr	$t9
    li	$a0,1281
    b	.L0da3492c
    ld	$s5,64($sp)
.end __glim_InterleavedArrays

# Function: __glim_NormalPointer
# Declared: Line 916 (Source lines: 916-922)
# Address: 0x0da349f0 - 0x0da34a48 (Size: 88 bytes, Frame: 16)
.globl __glim_NormalPointer
.ent __glim_NormalPointer
__glim_NormalPointer:
    # Line 916
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x2
    move	$a3,$a2
    sd	$ra,8($sp)
    addiu	$v1,$v1,-15460
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da34a34
    addu	$gp,$t9,$v1
    # Line 921
    # lw $t9, -23612($gp) # &__glim_NormalPointerEXT
    bal __glim_NormalPointerEXT
    move	$a2,$zero
    ld	$ra,8($sp)
.L0da34a28:
    # Line 922
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da34a34:
    # Line 918
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da34a28
    ld	$ra,8($sp)
.end __glim_NormalPointer

# Function: __glim_TexCoordPointer
# Declared: Line 925 (Source lines: 925-931)
# Address: 0x0da34a50 - 0x0da34aa8 (Size: 88 bytes, Frame: 16)
.globl __glim_TexCoordPointer
.ent __glim_TexCoordPointer
__glim_TexCoordPointer:
    # Line 925
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x2
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v1,$v1,-15556
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da34a94
    addu	$gp,$t9,$v1
    # Line 930
    # lw $t9, -23604($gp) # &__glim_TexCoordPointerEXT
    bal __glim_TexCoordPointerEXT
    move	$a3,$zero
    ld	$ra,8($sp)
.L0da34a88:
    # Line 931
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da34a94:
    # Line 927
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da34a88
    ld	$ra,8($sp)
.end __glim_TexCoordPointer

# Function: __glim_VertexPointer
# Declared: Line 934 (Source lines: 934-940)
# Address: 0x0da34ab0 - 0x0da34b08 (Size: 88 bytes, Frame: 16)
.globl __glim_VertexPointer
.ent __glim_VertexPointer
__glim_VertexPointer:
    # Line 934
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x2
    move	$a4,$a3
    sd	$ra,8($sp)
    addiu	$v1,$v1,-15652
    sd	$gp,0($sp)
    beq	$at,$v0,.L0da34af4
    addu	$gp,$t9,$v1
    # Line 939
    # lw $t9, -23616($gp) # &__glim_VertexPointerEXT
    bal __glim_VertexPointerEXT
    move	$a3,$zero
    ld	$ra,8($sp)
.L0da34ae8:
    # Line 940
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da34af4:
    # Line 936
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da34ae8
    ld	$ra,8($sp)
.end __glim_VertexPointer

# Function: __glim_InterleavedTextureCoordSetsSGIS
# Declared: Line 947 (Source lines: 948-957)
# Address: 0x0da34b10 - 0x0da34b98 (Size: 136 bytes, Frame: 16)
.globl __glim_InterleavedTextureCoordSetsSGIS
.ent __glim_InterleavedTextureCoordSetsSGIS
__glim_InterleavedTextureCoordSetsSGIS:
    # Line 948
    addiu	$sp,$sp,-16
    # Line 949
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 948
    lui	$v1,0x2
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,-15748
    sd	$gp,0($sp)
    # Line 949
    beq	$at,$v0,.L0da34b84
    # Line 948
    addu	$gp,$t9,$v1
    # Line 951
    blez	$a0,.L0da34b74
    # Line 952
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 951
    lw	$a1,3612($a2)
    slt	$a1,$a1,$a0
    bnez	$a1,.L0da34b74
    # Line 952
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 956
    sw	$a0,5360($a2)
    # Line 957
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da34b64:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 952
    # lw $t9, -26452($gp) # &__glSetError
.L0da34b74:
    jal	__glSetError
    li	$a0,1281
    b	.L0da34b64
    ld	$ra,8($sp)
.L0da34b84:
    # Line 949
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da34b64
    ld	$ra,8($sp)
.end __glim_InterleavedTextureCoordSetsSGIS

