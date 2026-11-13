# Source: ../CRIME/crm_prim.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_prim.c
# Total Functions: 23

.text

# Function: RemoveHalfPixelAdjust
# Declared: Line 42 (Source lines: 43-61)
# Address: 0x0d962cc0 - 0x0d962d50 (Size: 144 bytes, Frame: 16)
.ent RemoveHalfPixelAdjust
RemoveHalfPixelAdjust:
    # Line 53
    lwc1	$f1,_lit_3f000000
    # Line 54
    lwc1	$f0,1732($a0)
    # Line 53
    lwc1	$f2,1724($a0)
    # Line 54
    add.s	$f0,$f0,$f1
    li	$at,0x809c
    # Line 53
    add.s	$f2,$f2,$f1
    # Line 54
    swc1	$f0,1732($a0)
    addu	$at,$at,$a0
    # Line 53
    swc1	$f2,1724($a0)
    # Line 54
    lbu	$at,0($at)
    # Line 43
    addiu	$sp,$sp,-16
    # Line 54
    beqz	$at,.L0d962d48
    # Line 43
    sd	$a0,0($sp)
    # Line 56
    ld	$a1,0($sp)
    # lw $t9, -23340($gp) # &__glReCompute2DMatrix
    move	$a0,$a1
    lw	$a1,29660($a1)
    sd	$ra,8($sp)
    jal	__glReCompute2DMatrix
    addiu	$a1,$a1,176
    # Line 58
    ld	$a2,0($sp)
    lw	$a4,29720($a2)
    # Line 57
    lw	$a3,29716($a2)
    # Line 58
    mtc1	$a4,$f3
    # Line 57
    mtc1	$a3,$f5
    # Line 58
    cvt.s.w	$f3,$f3
    lwc1	$f4,3676($a2)
    # Line 57
    cvt.s.w	$f5,$f5
    ld	$ra,8($sp)
    swc1	$f5,29732($a2)
    # Line 58
    sub.s	$f3,$f3,$f4
    # Line 61
    addiu	$sp,$sp,16
    jr	$ra
    # Line 58
    swc1	$f3,29736($a2)
.L0d962d48:
    # Line 61
    jr	$ra
    addiu	$sp,$sp,16
.end RemoveHalfPixelAdjust

# Function: RestoreHalfPixelAdjust
# Declared: Line 64 (Source lines: 65-79)
# Address: 0x0d962d50 - 0x0d962de4 (Size: 148 bytes, Frame: 16)
.ent RestoreHalfPixelAdjust
RestoreHalfPixelAdjust:
    # Line 72
    lwc1	$f1,_lit_bf000000
    # Line 73
    lwc1	$f0,1732($a0)
    # Line 72
    lwc1	$f2,1724($a0)
    # Line 73
    add.s	$f0,$f0,$f1
    li	$at,0x809c
    # Line 72
    add.s	$f2,$f2,$f1
    # Line 73
    swc1	$f0,1732($a0)
    addu	$at,$at,$a0
    # Line 72
    swc1	$f2,1724($a0)
    # Line 73
    lbu	$at,0($at)
    # Line 65
    addiu	$sp,$sp,-16
    # Line 73
    beqz	$at,.L0d962ddc
    # Line 65
    sd	$a0,0($sp)
    # Line 75
    ld	$a1,0($sp)
    # lw $t9, -23340($gp) # &__glReCompute2DMatrix
    move	$a0,$a1
    lw	$a1,29660($a1)
    sd	$ra,8($sp)
    jal	__glReCompute2DMatrix
    addiu	$a1,$a1,176
    # Line 77
    ld	$a2,0($sp)
    lw	$a4,29720($a2)
    # Line 76
    lw	$a3,29716($a2)
    # Line 77
    mtc1	$a4,$f5
    # Line 76
    mtc1	$a3,$f3
    # Line 77
    cvt.s.w	$f5,$f5
    lwc1	$f4,_lit_bf000000
    # Line 76
    cvt.s.w	$f3,$f3
    ld	$ra,8($sp)
    # Line 77
    add.s	$f5,$f5,$f4
    # Line 76
    add.s	$f3,$f3,$f4
    # Line 77
    swc1	$f5,29736($a2)
    # Line 79
    addiu	$sp,$sp,16
    jr	$ra
    # Line 76
    swc1	$f3,29732($a2)
.L0d962ddc:
    # Line 79
    jr	$ra
    addiu	$sp,$sp,16
.end RestoreHalfPixelAdjust

# Function: __glcrmim_Begin
# Declared: Line 86 (Source lines: 87-128)
# Address: 0x0d962df0 - 0x0d962f20 (Size: 304 bytes, Frame: 48)
.globl __glcrmim_Begin
.ent __glcrmim_Begin
__glcrmim_Begin:
.L0d962df0:
    # Line 92
    lw	$a2,4120($zero)
    # Line 87
    lui	$at,0xf
    # Line 88
    lw	$a3,4112($zero)
    # Line 87
    addiu	$sp,$sp,-48
    addiu	$at,$at,-8292
    sd	$gp,16($sp)
    # Line 92
    beqz	$a2,.L0d962e40
    # Line 87
    addu	$gp,$t9,$at
    sd	$a0,0($sp)
    # Line 92
    li	$v0,2
    sd	$a3,8($sp)
    beq	$a2,$v0,.L0d962ee0
    sd	$ra,32($sp)
    # Line 100
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,32($sp)
.L0d962e34:
    # Line 128
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d962e40:
    # Line 101
    sltiu	$v1,$a0,10
    # Line 110
    addu	$a4,$a0,$a3
    lui	$a1,0x1
    sd	$ra,32($sp)
    # Line 101
    beqz	$v1,.L0d962f0c
    # Line 110
    addu	$a2,$a1,$a3
    sw	$a0,-32556($a2)
    addu	$a1,$a1,$a4
    lbu	$a1,-32548($a1)
    sd	$a3,8($sp)
    beqz	$a1,.L0d962e88
    sd	$a0,0($sp)
    # Line 112
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,11456
    sd	$a2,24($sp)
    bal __glCrmFillAATriangle
    ld	$a0,8($sp)
    ld	$a2,24($sp)
.L0d962e88:
    # Line 115
    lw	$ra,-32644($a2)
    andi	$ra,$ra,0x2
    lw	$at,-32640($a2)
    beqz	$ra,.L0d962eac
    li	$a3,2
    beq	$a3,$at,.L0d962eac
    # Line 117
    nop	# was lw $t9, -31940($gp) # &__glCrmDownloadCurrentColor
    jal	__glCrmDownloadCurrentColor
    ld	$a0,8($sp)
.L0d962eac:
    # Line 124
    ld	$a0,8($sp)
    # Line 127
    ld	$t9,0($sp)
    # Line 124
    li	$ra,2
    sw	$ra,32176($a0)
    # Line 127
    sll	$t9,$t9,0x2
    # Line 126
    li	$ra,1
    sw	$ra,4120($zero)
    # Line 127
    addu	$t9,$a0,$t9
    lw	$t9,12028($t9)
    jalr	$t9
    nop
    b	.L0d962e34
    ld	$ra,32($sp)
.L0d962ee0:
    # Line 95
    ld	$t9,8($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    # Line 97
    # lw $t9, -31544($gp) # &__glcrmim_Begin
    ld	$a0,0($sp)
    bal .L0d962df0
    # Line 96
    sw	$zero,4120($zero)
    b	.L0d962e34
    ld	$ra,32($sp)
.L0d962f0c:
    # Line 106
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d962e34
    ld	$ra,32($sp)
.end __glcrmim_Begin

# Function: __glcrmim_End
# Declared: Line 131 (Source lines: 132-149)
# Address: 0x0d962f20 - 0x0d962fb8 (Size: 152 bytes, Frame: 32)
.globl __glcrmim_End
.ent __glcrmim_End
__glcrmim_End:
    # Line 132
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 137
    lw	$a0,4120($zero)
    # Line 133
    lw	$s0,4112($zero)
    # Line 132
    lui	$at,0xf
    # Line 138
    li	$v0,2
    sd	$ra,16($sp)
    # Line 132
    addiu	$at,$at,-8596
    sd	$gp,8($sp)
    # Line 138
    beqz	$a0,.L0d962fa4
    # Line 132
    addu	$gp,$t9,$at
    # Line 138
    beq	$a0,$v0,.L0d962fa8
    # Line 139
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 143
    lw	$t9,12068($s0)
    jal	__glSetError
    move	$a0,$s0
    # Line 144
    lui	$v1,0x1
    sw	$zero,4120($zero)
    addu	$a0,$v1,$s0
    lw	$a0,-32556($a0)
    addu	$a0,$a0,$s0
    addu	$v1,$v1,$a0
    lbu	$v1,-32548($v1)
    beqz	$v1,.L0d962f90
    # Line 147
    nop	# was lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,11600
    bal __glCrmFillAATriangle
    move	$a0,$s0
.L0d962f90:
    ld	$ra,16($sp)
.L0d962f94:
    ld	$s0,0($sp)
    # Line 149
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d962fa4:
    # Line 139
    # lw $t9, -26452($gp) # &__glSetError
.L0d962fa8:
    jal	__glSetError
    li	$a0,1282
    b	.L0d962f94
    ld	$ra,16($sp)
.end __glcrmim_End

# Function: __glCrmRect
# Declared: Line 157 (Source lines: 159-190)
# Address: 0x0d962fc0 - 0x0d9630e0 (Size: 288 bytes, Frame: 208)
.globl __glCrmRect
.ent __glCrmRect
__glCrmRect:
    # Line 159
    addiu	$sp,$sp,-80
    sdc1	$f16,8($sp)
    sdc1	$f15,16($sp)
    sdc1	$f14,24($sp)
    sd	$s1,40($sp)
    lui	$s1,0x1
    sd	$ra,56($sp)
    addu	$s1,$a0,$s1
    lbu	$at,-32541($s1)
    sd	$s0,32($sp)
    lui	$v0,0xf
    move	$s0,$a0
    sdc1	$f30,0($sp)
    addiu	$v0,$v0,-8756
    mov.s	$f30,$f13
    sd	$gp,48($sp)
    beqz	$at,.L0d963018
    addu	$gp,$t9,$v0
    # Line 167
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,11456
    bal __glCrmFillAATriangle
    nop
.L0d963018:
    # Line 170
    lw	$ra,-32644($s1)
    andi	$ra,$ra,0x2
    lw	$at,-32640($s1)
    li	$v0,2
    beqz	$ra,.L0d963040
    sd	$s8,64($sp)
    beq	$at,$v0,.L0d963040
    # Line 172
    nop	# was lw $t9, -31940($gp) # &__glCrmDownloadCurrentColor
    jal	__glCrmDownloadCurrentColor
    move	$a0,$s0
.L0d963040:
    # Line 175
    li	$v1,7
    sw	$v1,-32556($s1)
    # Line 176
    lw	$t9,12056($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 177
    lw	$s8,6072($s0)
    lw	$s8,1328($s8)
    # Line 178
    move	$t9,$s8
    mov.s	$f12,$f30
    jalr	$t9
    ldc1	$f13,24($sp)
    # Line 179
    move	$t9,$s8
    ldc1	$f12,16($sp)
    jalr	$t9
    ldc1	$f13,24($sp)
    # Line 180
    move	$t9,$s8
    ldc1	$f12,16($sp)
    jalr	$t9
    ldc1	$f13,8($sp)
    # Line 181
    move	$t9,$s8
    mov.s	$f12,$f30
    jalr	$t9
    ldc1	$f13,8($sp)
    # Line 182
    lw	$t9,12068($s0)
    jalr	$t9
    move	$a0,$s0
    lbu	$ra,-32541($s1)
    beqz	$ra,.L0d9630c0
    # Line 188
    nop	# was lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,11600
    bal __glCrmFillAATriangle
    move	$a0,$s0
.L0d9630c0:
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    ld	$ra,56($sp)
    ld	$s8,64($sp)
    ldc1	$f30,0($sp)
    # Line 190
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glCrmRect

# Function: crmAdjustPolygonPoint
# Declared: Line 198 (Source lines: 199-207)
# Address: 0x0d9630e0 - 0x0d963160 (Size: 128 bytes, Frame: 32)
.ent crmAdjustPolygonPoint
crmAdjustPolygonPoint:
    # Line 199
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$s8,0xf
    # Line 203
    lwc1	$f0,132($a1)
    # Line 199
    addiu	$s8,$s8,-9044
    sd	$gp,16($sp)
    addu	$gp,$t9,$s8
    # Line 202
    lwc1	$f1,_lit_3f000000
    lwc1	$f2,128($a1)
    # Line 203
    add.s	$f0,$f0,$f1
    # Line 204
    li	$t9,0x80e8
    # Line 202
    add.s	$f2,$f2,$f1
    # Line 203
    swc1	$f0,132($a1)
    # Line 204
    addu	$t9,$t9,$a0
    # Line 202
    swc1	$f2,128($a1)
    # Line 204
    lw	$t9,0($t9)
    nop
    # Line 199
    sd	$ra,0($sp)
    # Line 204
    jalr	$t9
    # Line 199
    move	$s8,$a1
    # Line 206
    lwc1	$f5,132($s8)
    # Line 205
    lwc1	$f4,_lit_bf000000
    lwc1	$f3,128($s8)
    # Line 207
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    # Line 206
    add.s	$f5,$f5,$f4
    # Line 205
    add.s	$f3,$f3,$f4
    # Line 206
    swc1	$f5,132($s8)
    # Line 205
    swc1	$f3,128($s8)
    # Line 207
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end crmAdjustPolygonPoint

# Function: crmAdjustPolygonLine
# Declared: Line 209 (Source lines: 211-223)
# Address: 0x0d963160 - 0x0d963214 (Size: 180 bytes, Frame: 32)
.ent crmAdjustPolygonLine
crmAdjustPolygonLine:
    # Line 211
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$s8,0xf
    # Line 215
    lwc1	$f3,132($a1)
    # Line 211
    addiu	$s8,$s8,-9172
    sd	$gp,16($sp)
    addu	$gp,$t9,$s8
    # Line 214
    lwc1	$f1,_lit_3f000000
    lwc1	$f4,128($a1)
    # Line 215
    add.s	$f3,$f3,$f1
    # Line 214
    add.s	$f4,$f4,$f1
    # Line 215
    swc1	$f3,132($a1)
    # Line 214
    swc1	$f4,128($a1)
    # Line 217
    lwc1	$f0,132($a2)
    # Line 216
    lwc1	$f2,128($a2)
    # Line 217
    add.s	$f0,$f0,$f1
    # Line 218
    li	$t9,0x80ec
    # Line 216
    add.s	$f2,$f2,$f1
    # Line 217
    swc1	$f0,132($a2)
    # Line 218
    addu	$t9,$t9,$a0
    # Line 216
    swc1	$f2,128($a2)
    # Line 218
    lw	$t9,0($t9)
    # Line 211
    sd	$a2,24($sp)
    sd	$ra,0($sp)
    # Line 218
    jalr	$t9
    # Line 211
    move	$s8,$a1
    # Line 220
    lwc1	$f8,132($s8)
    # Line 219
    lwc1	$f6,_lit_bf000000
    lwc1	$f9,128($s8)
    # Line 223
    ld	$gp,16($sp)
    # Line 222
    ld	$at,24($sp)
    # Line 220
    add.s	$f8,$f8,$f6
    # Line 219
    add.s	$f9,$f9,$f6
    # Line 220
    swc1	$f8,132($s8)
    # Line 219
    swc1	$f9,128($s8)
    # Line 222
    lwc1	$f7,132($at)
    # Line 221
    lwc1	$f5,128($at)
    ld	$ra,0($sp)
    # Line 223
    ld	$s8,8($sp)
    # Line 222
    add.s	$f7,$f7,$f6
    # Line 221
    add.s	$f5,$f5,$f6
    # Line 222
    swc1	$f7,132($at)
    # Line 223
    addiu	$sp,$sp,32
    jr	$ra
    # Line 221
    swc1	$f5,128($at)
.end crmAdjustPolygonLine

# Function: crmAdjustPolygonFill
# Declared: Line 225 (Source lines: 227-243)
# Address: 0x0d963220 - 0x0d96330c (Size: 236 bytes, Frame: 48)
.ent crmAdjustPolygonFill
crmAdjustPolygonFill:
    # Line 227
    addiu	$sp,$sp,-48
    sd	$s8,8($sp)
    lui	$s8,0xf
    # Line 231
    lwc1	$f5,132($a1)
    # Line 227
    addiu	$s8,$s8,-9364
    sd	$gp,16($sp)
    addu	$gp,$t9,$s8
    # Line 230
    lwc1	$f1,_lit_3f000000
    lwc1	$f6,128($a1)
    # Line 231
    add.s	$f5,$f5,$f1
    # Line 230
    add.s	$f6,$f6,$f1
    # Line 231
    swc1	$f5,132($a1)
    # Line 230
    swc1	$f6,128($a1)
    # Line 233
    lwc1	$f3,132($a2)
    # Line 232
    lwc1	$f4,128($a2)
    # Line 233
    add.s	$f3,$f3,$f1
    # Line 232
    add.s	$f4,$f4,$f1
    # Line 233
    swc1	$f3,132($a2)
    # Line 232
    swc1	$f4,128($a2)
    # Line 235
    lwc1	$f0,132($a3)
    # Line 234
    lwc1	$f2,128($a3)
    # Line 235
    add.s	$f0,$f0,$f1
    # Line 236
    li	$t9,0x80f0
    # Line 234
    add.s	$f2,$f2,$f1
    # Line 235
    swc1	$f0,132($a3)
    # Line 236
    addu	$t9,$t9,$a0
    # Line 234
    swc1	$f2,128($a3)
    # Line 236
    lw	$t9,0($t9)
    # Line 227
    sd	$a2,32($sp)
    sd	$a3,24($sp)
    sd	$ra,0($sp)
    # Line 236
    jalr	$t9
    # Line 227
    move	$s8,$a1
    # Line 237
    lwc1	$f8,_lit_bf000000
    # Line 238
    lwc1	$f12,132($s8)
    # Line 237
    lwc1	$f13,128($s8)
    # Line 239
    ld	$v0,32($sp)
    # Line 238
    add.s	$f12,$f12,$f8
    # Line 237
    add.s	$f13,$f13,$f8
    # Line 238
    swc1	$f12,132($s8)
    # Line 237
    swc1	$f13,128($s8)
    # Line 240
    lwc1	$f10,132($v0)
    # Line 239
    lwc1	$f11,128($v0)
    # Line 243
    ld	$gp,16($sp)
    # Line 242
    ld	$at,24($sp)
    # Line 240
    add.s	$f10,$f10,$f8
    # Line 239
    add.s	$f11,$f11,$f8
    # Line 240
    swc1	$f10,132($v0)
    # Line 239
    swc1	$f11,128($v0)
    # Line 242
    lwc1	$f9,132($at)
    # Line 241
    lwc1	$f7,128($at)
    ld	$ra,0($sp)
    # Line 243
    ld	$s8,8($sp)
    # Line 242
    add.s	$f9,$f9,$f8
    # Line 241
    add.s	$f7,$f7,$f8
    # Line 242
    swc1	$f9,132($at)
    # Line 243
    addiu	$sp,$sp,48
    jr	$ra
    # Line 241
    swc1	$f7,128($at)
.end crmAdjustPolygonFill

# Function: crmEndPolygonMode
# Declared: Line 246 (Source lines: 247-264)
# Address: 0x0d963310 - 0x0d9633cc (Size: 188 bytes, Frame: 32)
.ent crmEndPolygonMode
crmEndPolygonMode:
    # Line 247
    addiu	$sp,$sp,-32
    sd	$s3,16($sp)
    # Line 250
    lui	$s3,0x1
    addu	$s3,$a0,$s3
    # Line 247
    lui	$v1,0xf
    # Line 250
    lw	$at,-32596($s3)
    # Line 247
    sd	$a0,8($sp)
    addiu	$v1,$v1,-9604
    sd	$gp,24($sp)
    addu	$gp,$t9,$v1
    # Line 251
    move	$t9,$at
    # Line 247
    sd	$ra,0($sp)
    # Line 251
    jalr	$t9
    # Line 250
    sw	$at,12068($a0)
    # Line 253
    lw	$a1,-32552($s3)
    li	$t8,6912
    li	$at,6914
    # Line 264
    ld	$gp,24($sp)
    # Line 253
    li	$t9,6913
    beq	$a1,$t8,.L0d963398
    ld	$ra,0($sp)
    beq	$a1,$t9,.L0d9633b4
    # Line 264
    ld	$gp,24($sp)
    # Line 253
    beq	$a1,$at,.L0d963380
    # Line 264
    ld	$gp,24($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d963380:
    # Line 261
    lw	$v0,-32528($s3)
    ld	$v1,8($sp)
    # Line 264
    ld	$s3,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 261
    sw	$v0,12080($v1)
.L0d963398:
    # Line 264
    ld	$gp,24($sp)
    # Line 255
    lw	$a0,-32536($s3)
    ld	$a1,8($sp)
    # Line 264
    ld	$s3,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 255
    sw	$a0,12496($a1)
.L0d9633b4:
    # Line 258
    lw	$a2,-32532($s3)
    ld	$a3,8($sp)
    # Line 264
    ld	$s3,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 258
    sw	$a2,12472($a3)
.end crmEndPolygonMode

# Function: __glCrmBeginPolygonMode
# Declared: Line 267 (Source lines: 268-309)
# Address: 0x0d9633d0 - 0x0d963564 (Size: 404 bytes, Frame: 32)
.globl __glCrmBeginPolygonMode
.ent __glCrmBeginPolygonMode
__glCrmBeginPolygonMode:
    # Line 268
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 271
    lui	$s0,0x1
    # Line 268
    sd	$s1,16($sp)
    # Line 271
    addu	$s0,$a0,$s0
    li	$t8,5
    # Line 268
    move	$s1,$a0
    # Line 271
    lw	$a2,-32556($s0)
    li	$at,9
    # Line 268
    lui	$v0,0xf
    sd	$ra,24($sp)
    # Line 271
    li	$ra,4
    # Line 268
    addiu	$v0,$v0,-9796
    sd	$gp,0($sp)
    # Line 271
    beq	$a2,$at,.L0d9634fc
    # Line 268
    addu	$gp,$t9,$v0
    # Line 271
    li	$at,8
    li	$t9,6
    beq	$a2,$t8,.L0d963510
    li	$v0,7
    beq	$a2,$t9,.L0d963524
    # Line 279
    nop	# was lw $t9, -25172($gp) # &__glBeginTFan
    # Line 271
    beq	$a2,$ra,.L0d963534
    # Line 282
    nop	# was lw $t9, -25164($gp) # &__glBeginTriangles
    # Line 271
    beq	$a2,$at,.L0d963544
    # Line 285
    nop	# was lw $t9, -25160($gp) # &__glBeginQStrip
    # Line 271
    beq	$a2,$v0,.L0d963554
    # Line 288
    nop	# was lw $t9, -25152($gp) # &__glBeginQuads
    # Line 292
    lw	$a2,-32552($s0)
.L0d963444:
    li	$v1,6912
    li	$a0,6913
    ld	$ra,24($sp)
    beq	$a2,$v1,.L0d9634cc
    li	$a1,6914
    beq	$a2,$a0,.L0d9634e4
    nop
    beq	$a2,$a1,.L0d96348c
.L0d963464:
    # Line 308
    la	$a2,sub_0d960000
    # Line 309
    ld	$gp,0($sp)
    # Line 307
    lw	$a3,12068($s1)
    sw	$a3,-32596($s0)
    # Line 309
    ld	$s0,8($sp)
    # Line 308
    addiu	$a2,$a2,13072
    sw	$a2,12068($s1)
    # Line 309
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d96348c:
    # Line 308
    la	$a4,sub_0d960000
    # Line 303
    la	$a6,sub_0d960000
    # Line 309
    ld	$gp,0($sp)
    # Line 302
    lw	$a7,12080($s1)
    sw	$a7,-32528($s0)
    # Line 307
    lw	$a5,12068($s1)
    # Line 303
    addiu	$a6,$a6,12832
    sw	$a6,12080($s1)
    # Line 307
    sw	$a5,-32596($s0)
    ld	$ra,24($sp)
    # Line 309
    ld	$s0,8($sp)
    # Line 308
    addiu	$a4,$a4,13072
    sw	$a4,12068($s1)
    # Line 309
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9634cc:
    # Line 294
    lw	$t1,12496($s1)
    # Line 295
    la	$t0,sub_0d960000
    # Line 294
    sw	$t1,-32536($s0)
    # Line 295
    addiu	$t0,$t0,12512
    b	.L0d963464
    sw	$t0,12496($s1)
.L0d9634e4:
    # Line 298
    lw	$t3,12472($s1)
    # Line 299
    la	$t2,sub_0d960000
    # Line 298
    sw	$t3,-32532($s0)
    # Line 299
    addiu	$t2,$t2,12640
    # Line 300
    b	.L0d963464
    # Line 299
    sw	$t2,12472($s1)
.L0d9634fc:
    # Line 273
    # lw $t9, -25144($gp) # &__glBeginPolygon
    jal	__glBeginPolygon
    nop
    b	.L0d963444
    # Line 292
    lw	$a2,-32552($s0)
.L0d963510:
    # Line 276
    # lw $t9, -25168($gp) # &__glBeginTStrip
    jal	__glBeginTStrip
    nop
    b	.L0d963444
    # Line 292
    lw	$a2,-32552($s0)
.L0d963524:
    # Line 279
    jalr	$t9
    nop
    b	.L0d963444
    # Line 292
    lw	$a2,-32552($s0)
.L0d963534:
    # Line 282
    jalr	$t9
    nop
    b	.L0d963444
    # Line 292
    lw	$a2,-32552($s0)
.L0d963544:
    # Line 285
    jalr	$t9
    nop
    b	.L0d963444
    # Line 292
    lw	$a2,-32552($s0)
.L0d963554:
    # Line 288
    jalr	$t9
    nop
    b	.L0d963444
    # Line 292
    lw	$a2,-32552($s0)
.end __glCrmBeginPolygonMode

# Function: __glCrmRasterPos2
# Declared: Line 315 (Source lines: 316-320)
# Address: 0x0d963570 - 0x0d9635e0 (Size: 112 bytes, Frame: 32)
.globl __glCrmRasterPos2
.ent __glCrmRasterPos2
__glCrmRasterPos2:
    # Line 316
    addiu	$sp,$sp,-32
    sd	$s8,16($sp)
    lui	$s8,0xf
    addiu	$s8,$s8,-10212
    sd	$gp,24($sp)
    addu	$gp,$t9,$s8
    # Line 317
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,11456
    # Line 316
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 317
    nop
    # Line 316
    sd	$ra,8($sp)
    # Line 317
    bal __glCrmFillAATriangle
    # Line 316
    move	$s8,$a1
    # Line 318
    # lw $t9, -24888($gp) # &__glRasterPos2
    move	$a0,$s0
    jal	__glRasterPos2
    move	$a1,$s8
    # Line 319
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,11600
    ld	$s8,16($sp)
    bal __glCrmFillAATriangle
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 320
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glCrmRasterPos2

# Function: __glCrmRasterPos3
# Declared: Line 322 (Source lines: 323-327)
# Address: 0x0d9635e0 - 0x0d963650 (Size: 112 bytes, Frame: 32)
.globl __glCrmRasterPos3
.ent __glCrmRasterPos3
__glCrmRasterPos3:
    # Line 323
    addiu	$sp,$sp,-32
    sd	$s8,16($sp)
    lui	$s8,0xf
    addiu	$s8,$s8,-10324
    sd	$gp,24($sp)
    addu	$gp,$t9,$s8
    # Line 324
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,11456
    # Line 323
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 324
    nop
    # Line 323
    sd	$ra,8($sp)
    # Line 324
    bal __glCrmFillAATriangle
    # Line 323
    move	$s8,$a1
    # Line 325
    # lw $t9, -24884($gp) # &__glRasterPos3
    move	$a0,$s0
    jal	__glRasterPos3
    move	$a1,$s8
    # Line 326
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,11600
    ld	$s8,16($sp)
    bal __glCrmFillAATriangle
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 327
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glCrmRasterPos3

# Function: __glCrmRasterPos4
# Declared: Line 329 (Source lines: 330-334)
# Address: 0x0d963650 - 0x0d9636c0 (Size: 112 bytes, Frame: 32)
.globl __glCrmRasterPos4
.ent __glCrmRasterPos4
__glCrmRasterPos4:
    # Line 330
    addiu	$sp,$sp,-32
    sd	$s8,16($sp)
    lui	$s8,0xf
    addiu	$s8,$s8,-10436
    sd	$gp,24($sp)
    addu	$gp,$t9,$s8
    # Line 331
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,11456
    # Line 330
    sd	$s0,0($sp)
    move	$s0,$a0
    # Line 331
    nop
    # Line 330
    sd	$ra,8($sp)
    # Line 331
    bal __glCrmFillAATriangle
    # Line 330
    move	$s8,$a1
    # Line 332
    # lw $t9, -24880($gp) # &__glRasterPos4
    move	$a0,$s0
    jal	__glRasterPos4
    move	$a1,$s8
    # Line 333
    # lw $t9, -32736($gp) # &sub_0d960000
    addiu	$t9,$t9,11600
    ld	$s8,16($sp)
    bal __glCrmFillAATriangle
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 334
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glCrmRasterPos4

# Function: __glcrmim_RenderMode
# Declared: Line 337 (Source lines: 337-365)
# Address: 0x0d9636c0 - 0x0d9637e4 (Size: 292 bytes, Frame: 16)
.globl __glcrmim_RenderMode
.ent __glcrmim_RenderMode
__glcrmim_RenderMode:
    # Line 341
    li	$a4,7170
    # Line 337
    addiu	$sp,$sp,-16
    # Line 339
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 337
    lui	$v1,0xf
    # Line 341
    li	$a1,7169
    sd	$ra,8($sp)
    # Line 337
    addiu	$v1,$v1,-10548
    sd	$gp,0($sp)
    # Line 339
    beq	$at,$v0,.L0d9637c4
    # Line 337
    addu	$gp,$t9,$v1
    # Line 341
    li	$a3,7168
    beq	$a3,$a0,.L0d963784
    nop
    beq	$a0,$a1,.L0d963728
    nop
    beq	$a0,$a4,.L0d963728
    # Line 362
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 363
    move	$v0,$zero
    # Line 365
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d963728:
    # Line 353
    lw	$a5,3204($a2)
    beq	$a3,$a5,.L0d96374c
.L0d963730:
    # Line 365
    nop	# was lw $t9, -26448($gp) # &__glim_RenderMode
    jal	__glim_RenderMode
    nop
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d96374c:
    # Line 356
    la	$a6,__glRasterPos2
    # Line 357
    la	$a7,__glRasterPos3
    # Line 358
    la	$t0,__glRasterPos4
    sw	$t0,12624($a2)
    # Line 354
    lwc1	$f1,_lit_3f000000
    # Line 355
    lwc1	$f2,1732($a2)
    # Line 354
    lwc1	$f0,1724($a2)
    # Line 357
    sw	$a7,12620($a2)
    # Line 356
    sw	$a6,12616($a2)
    # Line 355
    add.s	$f2,$f2,$f1
    # Line 354
    add.s	$f0,$f0,$f1
    # Line 355
    swc1	$f2,1732($a2)
    b	.L0d963730
    # Line 354
    swc1	$f0,1724($a2)
.L0d963784:
    # Line 343
    lw	$t1,3204($a2)
    # Line 347
    la	$t3,__glCrmRasterPos3
    # Line 344
    lwc1	$f4,_lit_bf000000
    # Line 343
    beq	$a3,$t1,.L0d963730
    # Line 346
    la	$t2,__glCrmRasterPos2
    # Line 348
    la	$t8,__glCrmRasterPos4
    # Line 346
    sw	$t2,12616($a2)
    # Line 345
    lwc1	$f5,1732($a2)
    # Line 344
    lwc1	$f3,1724($a2)
    # Line 347
    sw	$t3,12620($a2)
    # Line 348
    sw	$t8,12624($a2)
    # Line 345
    add.s	$f5,$f5,$f4
    # Line 344
    add.s	$f3,$f3,$f4
    # Line 345
    swc1	$f5,1732($a2)
    # Line 348
    b	.L0d963730
    # Line 344
    swc1	$f3,1724($a2)
.L0d9637c4:
    # Line 339
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    move	$v0,$zero
    # Line 365
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_RenderMode

# Function: FirstLLoopVertex
# Declared: Line 374 (Source lines: 375-396)
# Address: 0x0d9637f0 - 0x0d963854 (Size: 100 bytes, Frame: 0)
.ent FirstLLoopVertex
FirstLLoopVertex:
    # Line 375
    lbu	$v1,3220($a0)
    lui	$v0,0xf
    addiu	$v0,$v0,-10852
    beqz	$v1,.L0d963838
    addu	$at,$t9,$v0
    # Line 395
    la	$a2,__glSecondLLoopVertex
    # Line 387
    lwc1	$f3,192($a0)
    # Line 385
    lwc1	$f1,200($a0)
    # Line 386
    lwc1	$f0,204($a0)
    # Line 384
    lwc1	$f2,196($a0)
    # Line 390
    swc1	$f0,156($a1)
    # Line 389
    swc1	$f1,152($a1)
    # Line 388
    swc1	$f2,148($a1)
    # Line 387
    swc1	$f3,144($a1)
    # Line 395
    sw	$a2,11948($a0)
    # Line 394
    addiu	$v1,$a1,192
    # Line 396
    jr	$ra
    # Line 394
    sw	$v1,12688($a0)
.L0d963838:
    # Line 392
    lwc1	$f4,448($a0)
    # Line 395
    la	$a4,__glSecondLLoopVertex
    # Line 392
    swc1	$f4,144($a1)
    # Line 395
    sw	$a4,11948($a0)
    # Line 394
    addiu	$a3,$a1,192
    # Line 396
    jr	$ra
    # Line 394
    sw	$a3,12688($a0)
.end FirstLLoopVertex

# Function: EndLLoop
# Declared: Line 399 (Source lines: 400-442)
# Address: 0x0d963860 - 0x0d963968 (Size: 264 bytes, Frame: 32)
.ent EndLLoop
EndLLoop:
    # Line 400
    lui	$v0,0xf
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-10964
    sd	$gp,0($sp)
    addu	$gp,$t9,$v0
    # Line 407
    la	$at,sub_0d960000
    lw	$a2,11948($a0)
    addiu	$at,$at,14320
    # Line 400
    sd	$s0,8($sp)
    move	$s0,$a0
    # Line 407
    beq	$a2,$at,.L0d963934
    sd	$ra,16($sp)
    la	$v1,__glSecondLLoopVertex
    beq	$a2,$v1,.L0d963938
    # Line 441
    la	$a6,__glEndPrim
    # Line 407
    lbu	$a0,3220($a0)
    # Line 425
    lwc1	$f1,12864($s0)
    lwc1	$f2,12860($s0)
    # Line 407
    beqz	$a0,.L0d963958
    lwc1	$f4,12856($s0)
    # Line 425
    lwc1	$f0,12868($s0)
    trunc.w.s	$f3,$f4
    trunc.w.s	$f1,$f1
    trunc.w.s	$f2,$f2
    mfc1	$a3,$f3
    trunc.w.s	$f0,$f0
    mfc1	$a2,$f1
    mfc1	$a1,$f2
    sll	$a3,$a3,0x18
    mfc1	$a0,$f0
    sll	$a2,$a2,0x8
    sll	$a1,$a1,0x10
    or	$a1,$a1,$a2
    or	$a0,$a0,$a3
    or	$a0,$a0,$a1
.L0d9638ec:
    # Line 427
    lui	$a2,0x1
    addu	$a2,$s0,$a2
    lw	$a4,-32636($a2)
    beq	$a4,$a0,.L0d963914
    nop
    # Line 431
    lw	$a4,32184($s0)
    # Line 430
    lw	$a3,32188($s0)
    # Line 431
    sw	$a0,8400($a4)
    sw	$a0,8400($a3)
    # Line 432
    sw	$a0,-32636($a2)
.L0d963914:
    # Line 435
    lw	$t9,12484($s0)
    move	$a0,$s0
    addiu	$a2,$s0,12712
    jalr	$t9
    lw	$a1,12692($s0)
    # Line 437
    # lw $t9, -31940($gp) # &__glCrmDownloadCurrentColor
    jal	__glCrmDownloadCurrentColor
    move	$a0,$s0
.L0d963934:
    # Line 441
    la	$a6,__glEndPrim
.L0d963938:
    # Line 440
    la	$a5,__glNop
    # Line 442
    ld	$gp,0($sp)
    ld	$ra,16($sp)
    # Line 441
    sw	$a6,12068($s0)
    # Line 440
    sw	$a5,11948($s0)
    # Line 442
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d963958:
    # Line 427
    trunc.l.s	$f3,$f4
    dmfc1	$a0,$f3
    b	.L0d9638ec
    sll	$a0,$a0,0x0
.end EndLLoop

# Function: __glCrmBeginLLoop
# Declared: Line 444 (Source lines: 445-452)
# Address: 0x0d963970 - 0x0d9639ac (Size: 60 bytes, Frame: 0)
.globl __glCrmBeginLLoop
.ent __glCrmBeginLLoop
__glCrmBeginLLoop:
    # Line 445
    lui	$a2,0xf
    # Line 448
    addiu	$a3,$a0,12712
    sw	$a3,12688($a0)
    # Line 445
    addiu	$a2,$a2,-11236
    # Line 447
    sb	$zero,29848($a0)
    # Line 445
    addu	$at,$t9,$a2
    # Line 451
    la	$a1,__glMatValidateVbuf0N
    sw	$a1,12020($a0)
    # Line 450
    la	$v1,sub_0d960000
    # Line 449
    la	$v0,sub_0d960000
    # Line 450
    addiu	$v1,$v1,14432
    sw	$v1,12068($a0)
    # Line 449
    addiu	$v0,$v0,14320
    # Line 452
    jr	$ra
    # Line 449
    sw	$v0,11948($a0)
.end __glCrmBeginLLoop

# Function: __glCrmBeginLStrip
# Declared: Line 459 (Source lines: 460-471)
# Address: 0x0d9639b0 - 0x0d9639e4 (Size: 52 bytes, Frame: 0)
.globl __glCrmBeginLStrip
.ent __glCrmBeginLStrip
__glCrmBeginLStrip:
    # Line 469
    li	$a3,-3
    sw	$a3,32176($a0)
    # Line 460
    lui	$a1,0xf
    # Line 465
    addiu	$a2,$a0,12712
    sw	$a2,12688($a0)
    # Line 460
    addiu	$a1,$a1,-11300
    # Line 463
    sb	$zero,29848($a0)
    # Line 460
    addu	$at,$t9,$a1
    # Line 466
    la	$v0,__glFirstLStripVertex
    # Line 467
    la	$v1,__glMatValidateVbuf0N
    sw	$v1,12020($a0)
    # Line 471
    jr	$ra
    # Line 466
    sw	$v0,11948($a0)
.end __glCrmBeginLStrip

# Function: SetHoldVertex
# Declared: Line 477 (Source lines: 478-485)
# Address: 0x0d9639f0 - 0x0d963a38 (Size: 72 bytes, Frame: 16)
.ent SetHoldVertex
SetHoldVertex:
    # Line 481
    lui	$at,0x1
    addu	$at,$a0,$at
    li	$a2,1
    sb	$a2,-32632($at)
    # Line 478
    lui	$v1,0xf
    # Line 483
    lw	$at,-32600($at)
    # Line 478
    addiu	$sp,$sp,-16
    addiu	$v1,$v1,-11364
    sd	$gp,8($sp)
    addu	$gp,$t9,$v1
    # Line 484
    move	$t9,$at
    # Line 478
    sd	$ra,0($sp)
    # Line 484
    jalr	$t9
    # Line 483
    sw	$at,11948($a0)
    ld	$ra,0($sp)
    # Line 485
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end SetHoldVertex

# Function: EndPolygon
# Declared: Line 487 (Source lines: 488-497)
# Address: 0x0d963a40 - 0x0d963a9c (Size: 92 bytes, Frame: 32)
.ent EndPolygon
EndPolygon:
    # Line 491
    lui	$at,0x1
    addu	$at,$a0,$at
    sb	$zero,-32632($at)
    # Line 488
    addiu	$sp,$sp,-32
    lui	$v0,0xf
    # Line 493
    lw	$at,-32596($at)
    # Line 488
    sd	$ra,0($sp)
    addiu	$v0,$v0,-11444
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 494
    move	$t9,$at
    # Line 488
    sd	$s8,8($sp)
    move	$s8,$a0
    # Line 494
    jalr	$t9
    # Line 493
    sw	$at,12068($a0)
    # Line 496
    # lw $t9, -31940($gp) # &__glCrmDownloadCurrentColor
    jal	__glCrmDownloadCurrentColor
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 497
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end EndPolygon

# Function: __glCrmBeginPolygon
# Declared: Line 499 (Source lines: 500-508)
# Address: 0x0d963aa0 - 0x0d963b10 (Size: 112 bytes, Frame: 32)
.globl __glCrmBeginPolygon
.ent __glCrmBeginPolygon
__glCrmBeginPolygon:
    # Line 500
    lui	$at,0xf
    addiu	$sp,$sp,-32
    addiu	$at,$at,-11540
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 503
    # lw $t9, -25144($gp) # &__glBeginPolygon
    # Line 500
    sd	$s8,8($sp)
    # Line 503
    nop
    # Line 500
    sd	$ra,0($sp)
    # Line 503
    jal	__glBeginPolygon
    # Line 500
    move	$s8,$a0
    # Line 507
    la	$v0,sub_0d960000
    # Line 505
    la	$a1,sub_0d960000
    # Line 508
    ld	$gp,16($sp)
    # Line 504
    lui	$a0,0x1
    lw	$a2,11948($s8)
    addu	$a0,$s8,$a0
    sw	$a2,-32600($a0)
    # Line 505
    addiu	$a1,$a1,14832
    sw	$a1,11948($s8)
    ld	$ra,0($sp)
    # Line 506
    lw	$v1,12068($s8)
    sw	$v1,-32596($a0)
    # Line 507
    addiu	$v0,$v0,14912
    sw	$v0,12068($s8)
    # Line 508
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glCrmBeginPolygon

# Function: EndPoints
# Declared: Line 515 (Source lines: 516-543)
# Address: 0x0d963b10 - 0x0d963c4c (Size: 316 bytes, Frame: 32)
.ent EndPoints
EndPoints:
    # Line 516
    lui	$at,0xf
    addiu	$sp,$sp,-32
    addiu	$at,$at,-11652
    sd	$gp,0($sp)
    addu	$gp,$t9,$at
    # Line 519
    # lw $t9, -24992($gp) # &__glEndPrim
    # Line 516
    sd	$s0,16($sp)
    # Line 519
    nop
    # Line 516
    sd	$ra,8($sp)
    # Line 519
    jal	__glEndPrim
    # Line 516
    move	$s0,$a0
    # Line 530
    lw	$v0,1792($s0)
    # Line 532
    li	$a2,24
    move	$a1,$zero
    # Line 530
    andi	$v0,$v0,0x400
    # Line 532
    la	$t8,__glEndPrim
    li	$a5,0x10
    # Line 530
    li	$t0,0x80a4
    la	$v1,__glcrmim_vertexDispatchTable
    beqz	$v0,.L0d963be0
    addu	$t0,$t0,$s0
    lw	$t0,0($t0)
    addiu	$a6,$t0,4
    addiu	$a4,$t0,8
    beq	$t0,$v1,.L0d963be0
    addiu	$t1,$t0,12
    # Line 532
    lw	$a3,6072($s0)
    addiu	$t3,$a3,1332
    addiu	$a7,$a3,1324
    addiu	$t2,$a3,1328
    addiu	$a3,$a3,1320
    nop
.L0d963b90:
    addu	$v0,$a1,$t0
    addu	$v1,$a1,$a3
    lw	$v0,0($v0)
    addu	$at,$a1,$a6
    sw	$v0,0($v1)
    addu	$v0,$a1,$a7
    lw	$at,0($at)
    addu	$ra,$a1,$a4
    sw	$at,0($v0)
    addu	$at,$a1,$t2
    lw	$ra,0($ra)
    addiu	$a2,$a2,-4
    addu	$t9,$a1,$t1
    sw	$ra,0($at)
    addu	$ra,$a1,$t3
    lw	$t9,0($t9)
    addu	$a1,$a1,$a5
    bgtz	$a2,.L0d963b90
    sw	$t9,0($ra)
    # Line 533
    sw	$t8,12068($s0)
.L0d963be0:
    # Line 535
    lw	$v1,32088($s0)
    sll	$v1,$v1,0x10
    # Line 543
    ld	$ra,8($sp)
    # Line 535
    bgez	$v1,.L0d963c3c
    # Line 533
    la	$t8,__glEndPrim
    # Line 535
    lw	$a1,32360($s0)
    srl	$a0,$a1,0x7
    andi	$a0,$a0,0x7
    # Line 543
    ld	$gp,0($sp)
    # Line 535
    bnez	$a0,.L0d963c14
    sll	$a2,$a1,0x19
    bgez	$a2,.L0d963c40
    # Line 543
    ld	$gp,0($sp)
.L0d963c14:
    # Line 538
    lw	$a4,32188($s0)
    # Line 539
    lw	$a5,32184($s0)
    # Line 543
    ld	$ra,8($sp)
    # Line 539
    sw	$a1,8464($a5)
    lw	$a3,32360($s0)
    sw	$a3,8464($a4)
    # Line 541
    sw	$t8,12068($s0)
    # Line 543
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d963c3c:
    ld	$gp,0($sp)
.L0d963c40:
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end EndPoints

# Function: __glCrmBeginPoints
# Declared: Line 551 (Source lines: 552-584)
# Address: 0x0d963c50 - 0x0d963da8 (Size: 344 bytes, Frame: 32)
.globl __glCrmBeginPoints
.ent __glCrmBeginPoints
__glCrmBeginPoints:
    # Line 552
    lui	$at,0xf
    addiu	$sp,$sp,-32
    addiu	$at,$at,-11972
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 555
    # lw $t9, -25244($gp) # &__glBeginPoints
    # Line 552
    sd	$s0,24($sp)
    # Line 555
    nop
    # Line 552
    sd	$ra,16($sp)
    # Line 555
    jal	__glBeginPoints
    # Line 552
    move	$s0,$a0
    # Line 567
    lw	$v0,1792($s0)
    # Line 569
    li	$a2,24
    move	$a1,$zero
    # Line 567
    andi	$v0,$v0,0x400
    # Line 569
    la	$t8,sub_0d960000
    li	$t3,0x10
    # Line 567
    li	$v1,0x80a4
    la	$t0,__glcrmim_vertexDispatchTable
    beqz	$v0,.L0d963d20
    addu	$v1,$v1,$s0
    lw	$v1,0($v1)
    beq	$v1,$t0,.L0d963d20
    addiu	$a7,$t0,8
    addiu	$a6,$t0,4
    # Line 569
    lw	$t2,6072($s0)
    addiu	$a4,$t0,12
    addiu	$t8,$t8,15120
    addiu	$t1,$t2,1332
    addiu	$a3,$t2,1324
    addiu	$a5,$t2,1320
    addiu	$t2,$t2,1328
.L0d963cd0:
    addu	$v0,$a1,$t0
    addu	$v1,$a1,$a5
    lw	$v0,0($v0)
    addu	$at,$a1,$a6
    sw	$v0,0($v1)
    addu	$v0,$a1,$a3
    lw	$at,0($at)
    addu	$ra,$a1,$a7
    sw	$at,0($v0)
    addu	$at,$a1,$t2
    lw	$ra,0($ra)
    addiu	$a2,$a2,-4
    addu	$t9,$a1,$a4
    sw	$ra,0($at)
    addu	$ra,$a1,$t1
    lw	$t9,0($t9)
    addu	$a1,$a1,$t3
    bgtz	$a2,.L0d963cd0
    sw	$t9,0($ra)
    # Line 570
    sw	$t8,12068($s0)
.L0d963d20:
    # Line 572
    lw	$t9,32088($s0)
    # Line 570
    la	$t8,sub_0d960000
    # Line 572
    sll	$t9,$t9,0x10
    bgez	$t9,.L0d963d94
    # Line 570
    addiu	$t8,$t8,15120
    # Line 572
    lw	$a1,32360($s0)
    srl	$ra,$a1,0x7
    andi	$ra,$ra,0x7
    # Line 584
    ld	$gp,8($sp)
    # Line 572
    bnez	$ra,.L0d963d54
    sll	$at,$a1,0x19
    bgez	$at,.L0d963d98
    # Line 584
    ld	$ra,16($sp)
.L0d963d54:
    # Line 576
    lw	$v1,32188($s0)
    # Line 575
    lw	$a2,32360($s0)
    sw	$a2,0($sp)
    # Line 579
    lw	$a0,0($sp)
    # Line 584
    ld	$ra,16($sp)
    # Line 579
    li	$a1,-961
    and	$a0,$a0,$a1
    sw	$a0,0($sp)
    # Line 580
    lw	$a1,32184($s0)
    lw	$v0,0($sp)
    sw	$a0,8464($a1)
    sw	$v0,8464($v1)
    # Line 582
    sw	$t8,12068($s0)
    # Line 584
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d963d94:
    ld	$ra,16($sp)
.L0d963d98:
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glCrmBeginPoints

.rdata
_lit_3f000000:
    .word 0x3f000000
_lit_bf000000:
    .word 0xbf000000

