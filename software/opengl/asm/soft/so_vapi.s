# Source: ../soft/so_vapi.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_vapi.c
# Total Functions: 26

.text

# Function: __glim_EdgeFlag
# Declared: Line 21 (Source lines: 24-25)
# Address: 0x0da32960 - 0x0da3296c (Size: 12 bytes, Frame: 0)
.globl __glim_EdgeFlag
.ent __glim_EdgeFlag
__glim_EdgeFlag:
    # Line 24
    lw	$at,4112($zero)
    # Line 25
    jr	$ra
    # Line 24
    sb	$a0,453($at)
.end __glim_EdgeFlag

# Function: __glim_EdgeFlagv
# Declared: Line 27 (Source lines: 30-31)
# Address: 0x0da32970 - 0x0da32980 (Size: 16 bytes, Frame: 0)
.globl __glim_EdgeFlagv
.ent __glim_EdgeFlagv
__glim_EdgeFlagv:
    # Line 30
    lw	$v0,4112($zero)
    lbu	$at,0($a0)
    # Line 31
    jr	$ra
    # Line 30
    sb	$at,453($v0)
.end __glim_EdgeFlagv

# Function: __glim_Vertex2fv
# Declared: Line 43 (Source lines: 44-66)
# Address: 0x0da32980 - 0x0da32a28 (Size: 168 bytes, Frame: 32)
.globl __glim_Vertex2fv
.ent __glim_Vertex2fv
__glim_Vertex2fv:
    # Line 53
    lwc1	$f2,4($a0)
    # Line 52
    lwc1	$f3,0($a0)
    # Line 44
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 49
    lw	$s0,4112($zero)
    # Line 44
    sd	$s1,8($sp)
    # Line 54
    lw	$a2,29660($s0)
    # Line 60
    mtc1	$zero,$f1
    # Line 51
    lw	$s1,12688($s0)
    # Line 55
    lw	$a4,11976($s0)
    # Line 60
    swc1	$f1,24($s1)
    # Line 59
    swc1	$f2,20($s1)
    # Line 58
    swc1	$f3,16($s1)
    # Line 57
    sw	$a4,12($s1)
    # Line 56
    sw	$zero,0($s1)
    # Line 61
    lwc1	$f0,3544($s0)
    sd	$gp,24($sp)
    # Line 44
    lui	$a3,0x2
    addiu	$a3,$a3,-7156
    # Line 61
    swc1	$f0,28($s1)
    # Line 44
    addu	$gp,$t9,$a3
    # Line 62
    lw	$t9,248($a2)
    addiu	$a1,$s1,16
    addiu	$a0,$s1,112
    # Line 44
    sd	$ra,16($sp)
    # Line 62
    jalr	$t9
    addiu	$a2,$a2,176
    # Line 63
    lw	$t9,11924($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    sw	$v0,4($s1)
    # Line 65
    lw	$t9,11920($s0)
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 66
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex2fv

# Function: __glim_Vertex3fv
# Declared: Line 68 (Source lines: 69-91)
# Address: 0x0da32a30 - 0x0da32ad8 (Size: 168 bytes, Frame: 32)
.globl __glim_Vertex3fv
.ent __glim_Vertex3fv
__glim_Vertex3fv:
    # Line 80
    lwc1	$f2,4($a0)
    # Line 79
    lwc1	$f3,0($a0)
    # Line 81
    lwc1	$f1,8($a0)
    # Line 69
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 74
    lw	$s0,4112($zero)
    # Line 69
    sd	$s1,8($sp)
    # Line 77
    lw	$a2,29660($s0)
    # Line 76
    lw	$s1,12688($s0)
    # Line 78
    lw	$a4,11980($s0)
    # Line 86
    swc1	$f1,24($s1)
    # Line 85
    swc1	$f2,20($s1)
    # Line 84
    swc1	$f3,16($s1)
    # Line 83
    sw	$a4,12($s1)
    # Line 82
    sw	$zero,0($s1)
    # Line 87
    lwc1	$f0,3544($s0)
    sd	$gp,24($sp)
    # Line 69
    lui	$a3,0x2
    addiu	$a3,$a3,-7332
    # Line 87
    swc1	$f0,28($s1)
    # Line 69
    addu	$gp,$t9,$a3
    # Line 88
    lw	$t9,252($a2)
    addiu	$a1,$s1,16
    addiu	$a0,$s1,112
    # Line 69
    sd	$ra,16($sp)
    # Line 88
    jalr	$t9
    addiu	$a2,$a2,176
    # Line 89
    lw	$t9,11928($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    sw	$v0,4($s1)
    # Line 90
    lw	$t9,11920($s0)
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 91
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex3fv

# Function: __glim_Vertex4fv
# Declared: Line 93 (Source lines: 94-117)
# Address: 0x0da32ae0 - 0x0da32b88 (Size: 168 bytes, Frame: 32)
.globl __glim_Vertex4fv
.ent __glim_Vertex4fv
__glim_Vertex4fv:
    # Line 94
    addiu	$sp,$sp,-32
    sd	$gp,24($sp)
    # Line 106
    lwc1	$f1,8($a0)
    # Line 105
    lwc1	$f2,4($a0)
    # Line 104
    lwc1	$f3,0($a0)
    # Line 107
    lwc1	$f0,12($a0)
    # Line 94
    sd	$s0,0($sp)
    # Line 99
    lw	$s0,4112($zero)
    # Line 94
    sd	$s1,8($sp)
    # Line 102
    lw	$a4,11984($s0)
    # Line 101
    lw	$s1,12688($s0)
    # Line 103
    lw	$a2,29660($s0)
    # Line 113
    swc1	$f0,28($s1)
    # Line 112
    swc1	$f1,24($s1)
    # Line 111
    swc1	$f2,20($s1)
    # Line 110
    swc1	$f3,16($s1)
    # Line 94
    lui	$a3,0x2
    # Line 109
    sw	$a4,12($s1)
    # Line 94
    addiu	$a3,$a3,-7508
    # Line 108
    sw	$zero,0($s1)
    # Line 94
    addu	$gp,$t9,$a3
    # Line 114
    lw	$t9,256($a2)
    addiu	$a2,$a2,176
    addiu	$a1,$s1,16
    # Line 94
    sd	$ra,16($sp)
    # Line 114
    jalr	$t9
    addiu	$a0,$s1,112
    # Line 115
    lw	$t9,11932($s0)
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    sw	$v0,4($s1)
    # Line 116
    lw	$t9,11920($s0)
    move	$a1,$s1
    jalr	$t9
    move	$a0,$s0
    ld	$ra,16($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    # Line 117
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex4fv

# Function: __glim_Vertex2f
# Declared: Line 127 (Source lines: 128-139)
# Address: 0x0da32b90 - 0x0da32bd8 (Size: 72 bytes, Frame: 32)
.globl __glim_Vertex2f
.ent __glim_Vertex2f
__glim_Vertex2f:
    # Line 135
    lw	$at,4112($zero)
    lw	$at,6072($at)
    # Line 128
    addiu	$sp,$sp,-32
    lui	$v0,0x2
    # Line 135
    lw	$at,1332($at)
    # Line 128
    sd	$ra,8($sp)
    addiu	$v0,$v0,-7684
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 138
    move	$t9,$at
    # Line 137
    swc1	$f13,4($sp)
    # Line 138
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 136
    swc1	$f12,0($sp)
    ld	$ra,8($sp)
    # Line 139
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex2f

# Function: __glim_Vertex2d
# Declared: Line 141 (Source lines: 142-153)
# Address: 0x0da32be0 - 0x0da32c30 (Size: 80 bytes, Frame: 32)
.globl __glim_Vertex2d
.ent __glim_Vertex2d
__glim_Vertex2d:
    # Line 149
    lw	$at,4112($zero)
    lw	$at,6072($at)
    # Line 142
    addiu	$sp,$sp,-32
    lui	$v0,0x2
    # Line 149
    lw	$at,1332($at)
    # Line 142
    sd	$ra,8($sp)
    addiu	$v0,$v0,-7764
    # Line 151
    cvt.s.d	$f1,$f13
    sd	$gp,16($sp)
    # Line 142
    addu	$gp,$t9,$v0
    # Line 152
    move	$t9,$at
    # Line 150
    cvt.s.d	$f0,$f12
    # Line 151
    swc1	$f1,4($sp)
    # Line 152
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 150
    swc1	$f0,0($sp)
    ld	$ra,8($sp)
    # Line 153
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex2d

# Function: __glim_Vertex2dv
# Declared: Line 155 (Source lines: 156-169)
# Address: 0x0da32c30 - 0x0da32c88 (Size: 88 bytes, Frame: 32)
.globl __glim_Vertex2dv
.ent __glim_Vertex2dv
__glim_Vertex2dv:
    # Line 165
    lw	$at,4112($zero)
    # Line 166
    ldc1	$f0,0($a0)
    # Line 165
    lw	$at,6072($at)
    # Line 163
    ldc1	$f1,8($a0)
    # Line 156
    addiu	$sp,$sp,-32
    lui	$v0,0x2
    # Line 165
    lw	$at,1332($at)
    # Line 156
    sd	$ra,8($sp)
    addiu	$v0,$v0,-7844
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 163
    cvt.s.d	$f1,$f1
    # Line 168
    move	$t9,$at
    # Line 166
    cvt.s.d	$f0,$f0
    # Line 167
    swc1	$f1,4($sp)
    # Line 168
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 166
    swc1	$f0,0($sp)
    ld	$ra,8($sp)
    # Line 169
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex2dv

# Function: __glim_Vertex2i
# Declared: Line 171 (Source lines: 172-183)
# Address: 0x0da32c90 - 0x0da32ce8 (Size: 88 bytes, Frame: 32)
.globl __glim_Vertex2i
.ent __glim_Vertex2i
__glim_Vertex2i:
    # Line 179
    lw	$at,4112($zero)
    # Line 181
    mtc1	$a1,$f1
    # Line 180
    mtc1	$a0,$f0
    # Line 179
    lw	$at,6072($at)
    # Line 172
    addiu	$sp,$sp,-32
    lui	$v0,0x2
    # Line 181
    cvt.s.w	$f1,$f1
    # Line 179
    lw	$at,1332($at)
    # Line 172
    sd	$ra,8($sp)
    addiu	$v0,$v0,-7940
    # Line 180
    cvt.s.w	$f0,$f0
    sd	$gp,16($sp)
    # Line 172
    addu	$gp,$t9,$v0
    # Line 182
    move	$t9,$at
    # Line 181
    swc1	$f1,4($sp)
    # Line 182
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 180
    swc1	$f0,0($sp)
    ld	$ra,8($sp)
    # Line 183
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex2i

# Function: __glim_Vertex2iv
# Declared: Line 185 (Source lines: 186-199)
# Address: 0x0da32cf0 - 0x0da32d50 (Size: 96 bytes, Frame: 32)
.globl __glim_Vertex2iv
.ent __glim_Vertex2iv
__glim_Vertex2iv:
    # Line 196
    lw	$v0,0($a0)
    # Line 193
    lw	$v1,4($a0)
    # Line 195
    lw	$at,4112($zero)
    # Line 193
    mtc1	$v1,$f1
    # Line 195
    lw	$at,6072($at)
    # Line 196
    mtc1	$v0,$f0
    # Line 186
    addiu	$sp,$sp,-32
    lui	$v0,0x2
    # Line 195
    lw	$at,1332($at)
    # Line 193
    cvt.s.w	$f1,$f1
    # Line 186
    sd	$ra,8($sp)
    addiu	$v0,$v0,-8036
    # Line 196
    cvt.s.w	$f0,$f0
    sd	$gp,16($sp)
    # Line 186
    addu	$gp,$t9,$v0
    # Line 198
    move	$t9,$at
    # Line 197
    swc1	$f1,4($sp)
    # Line 198
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 196
    swc1	$f0,0($sp)
    ld	$ra,8($sp)
    # Line 199
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex2iv

# Function: __glim_Vertex2s
# Declared: Line 201 (Source lines: 202-213)
# Address: 0x0da32d50 - 0x0da32da8 (Size: 88 bytes, Frame: 32)
.globl __glim_Vertex2s
.ent __glim_Vertex2s
__glim_Vertex2s:
    # Line 209
    lw	$at,4112($zero)
    # Line 211
    mtc1	$a1,$f1
    # Line 210
    mtc1	$a0,$f0
    # Line 209
    lw	$at,6072($at)
    # Line 202
    addiu	$sp,$sp,-32
    lui	$v0,0x2
    # Line 211
    cvt.s.w	$f1,$f1
    # Line 209
    lw	$at,1332($at)
    # Line 202
    sd	$ra,8($sp)
    addiu	$v0,$v0,-8132
    # Line 210
    cvt.s.w	$f0,$f0
    sd	$gp,16($sp)
    # Line 202
    addu	$gp,$t9,$v0
    # Line 212
    move	$t9,$at
    # Line 211
    swc1	$f1,4($sp)
    # Line 212
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 210
    swc1	$f0,0($sp)
    ld	$ra,8($sp)
    # Line 213
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex2s

# Function: __glim_Vertex2sv
# Declared: Line 215 (Source lines: 216-229)
# Address: 0x0da32db0 - 0x0da32e10 (Size: 96 bytes, Frame: 32)
.globl __glim_Vertex2sv
.ent __glim_Vertex2sv
__glim_Vertex2sv:
    # Line 226
    lh	$v0,0($a0)
    # Line 223
    lh	$v1,2($a0)
    # Line 225
    lw	$at,4112($zero)
    # Line 223
    mtc1	$v1,$f1
    # Line 225
    lw	$at,6072($at)
    # Line 226
    mtc1	$v0,$f0
    # Line 216
    addiu	$sp,$sp,-32
    lui	$v0,0x2
    # Line 225
    lw	$at,1332($at)
    # Line 223
    cvt.s.w	$f1,$f1
    # Line 216
    sd	$ra,8($sp)
    addiu	$v0,$v0,-8228
    # Line 226
    cvt.s.w	$f0,$f0
    sd	$gp,16($sp)
    # Line 216
    addu	$gp,$t9,$v0
    # Line 228
    move	$t9,$at
    # Line 227
    swc1	$f1,4($sp)
    # Line 228
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 226
    swc1	$f0,0($sp)
    ld	$ra,8($sp)
    # Line 229
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex2sv

# Function: __glim_Vertex3f
# Declared: Line 233 (Source lines: 234-246)
# Address: 0x0da32e10 - 0x0da32e5c (Size: 76 bytes, Frame: 32)
.globl __glim_Vertex3f
.ent __glim_Vertex3f
__glim_Vertex3f:
    # Line 241
    lw	$at,4112($zero)
    # Line 234
    addiu	$sp,$sp,-32
    # Line 241
    lw	$at,6072($at)
    # Line 234
    sd	$ra,16($sp)
    lui	$v0,0x2
    # Line 241
    lw	$at,1364($at)
    sd	$gp,24($sp)
    # Line 234
    addiu	$v0,$v0,-8324
    addu	$gp,$t9,$v0
    # Line 244
    swc1	$f14,8($sp)
    # Line 245
    move	$t9,$at
    # Line 243
    swc1	$f13,4($sp)
    # Line 245
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 242
    swc1	$f12,0($sp)
    ld	$ra,16($sp)
    # Line 246
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex3f

# Function: __glim_Vertex3d
# Declared: Line 248 (Source lines: 249-261)
# Address: 0x0da32e60 - 0x0da32eb8 (Size: 88 bytes, Frame: 32)
.globl __glim_Vertex3d
.ent __glim_Vertex3d
__glim_Vertex3d:
    # Line 256
    lw	$at,4112($zero)
    # Line 249
    addiu	$sp,$sp,-32
    # Line 256
    lw	$at,6072($at)
    # Line 249
    sd	$ra,16($sp)
    lui	$v0,0x2
    # Line 256
    lw	$at,1364($at)
    # Line 259
    cvt.s.d	$f2,$f14
    sd	$gp,24($sp)
    # Line 249
    addiu	$v0,$v0,-8404
    # Line 258
    cvt.s.d	$f1,$f13
    # Line 249
    addu	$gp,$t9,$v0
    # Line 259
    swc1	$f2,8($sp)
    # Line 260
    move	$t9,$at
    # Line 257
    cvt.s.d	$f0,$f12
    # Line 258
    swc1	$f1,4($sp)
    # Line 260
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 257
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 261
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex3d

# Function: __glim_Vertex3dv
# Declared: Line 263 (Source lines: 264-279)
# Address: 0x0da32ec0 - 0x0da32f24 (Size: 100 bytes, Frame: 32)
.globl __glim_Vertex3dv
.ent __glim_Vertex3dv
__glim_Vertex3dv:
    # Line 264
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    # Line 275
    ldc1	$f0,0($a0)
    # Line 274
    lw	$at,4112($zero)
    # Line 272
    ldc1	$f2,16($a0)
    # Line 274
    lw	$at,6072($at)
    # Line 271
    ldc1	$f1,8($a0)
    # Line 264
    lui	$v0,0x2
    # Line 274
    lw	$at,1364($at)
    sd	$gp,24($sp)
    # Line 264
    addiu	$v0,$v0,-8500
    # Line 272
    cvt.s.d	$f2,$f2
    # Line 264
    addu	$gp,$t9,$v0
    # Line 271
    cvt.s.d	$f1,$f1
    # Line 277
    swc1	$f2,8($sp)
    # Line 278
    move	$t9,$at
    # Line 275
    cvt.s.d	$f0,$f0
    # Line 276
    swc1	$f1,4($sp)
    # Line 278
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 275
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 279
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex3dv

# Function: __glim_Vertex3i
# Declared: Line 281 (Source lines: 282-294)
# Address: 0x0da32f30 - 0x0da32f94 (Size: 100 bytes, Frame: 32)
.globl __glim_Vertex3i
.ent __glim_Vertex3i
__glim_Vertex3i:
    # Line 292
    mtc1	$a2,$f2
    # Line 289
    lw	$at,4112($zero)
    # Line 291
    mtc1	$a1,$f1
    # Line 282
    addiu	$sp,$sp,-32
    # Line 290
    mtc1	$a0,$f0
    # Line 289
    lw	$at,6072($at)
    # Line 282
    sd	$ra,16($sp)
    # Line 292
    cvt.s.w	$f2,$f2
    # Line 282
    lui	$v0,0x2
    # Line 291
    cvt.s.w	$f1,$f1
    # Line 289
    lw	$at,1364($at)
    sd	$gp,24($sp)
    # Line 282
    addiu	$v0,$v0,-8612
    # Line 290
    cvt.s.w	$f0,$f0
    # Line 282
    addu	$gp,$t9,$v0
    # Line 292
    swc1	$f2,8($sp)
    # Line 293
    move	$t9,$at
    # Line 291
    swc1	$f1,4($sp)
    # Line 293
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 290
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 294
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex3i

# Function: __glim_Vertex3iv
# Declared: Line 296 (Source lines: 297-312)
# Address: 0x0da32fa0 - 0x0da33010 (Size: 112 bytes, Frame: 32)
.globl __glim_Vertex3iv
.ent __glim_Vertex3iv
__glim_Vertex3iv:
    # Line 308
    lw	$v0,0($a0)
    # Line 305
    lw	$a1,8($a0)
    # Line 304
    lw	$v1,4($a0)
    # Line 307
    lw	$at,4112($zero)
    # Line 305
    mtc1	$a1,$f2
    # Line 304
    mtc1	$v1,$f1
    # Line 297
    addiu	$sp,$sp,-32
    # Line 307
    lw	$at,6072($at)
    # Line 308
    mtc1	$v0,$f0
    # Line 297
    sd	$ra,16($sp)
    # Line 305
    cvt.s.w	$f2,$f2
    # Line 297
    lui	$v0,0x2
    # Line 307
    lw	$at,1364($at)
    # Line 304
    cvt.s.w	$f1,$f1
    sd	$gp,24($sp)
    # Line 297
    addiu	$v0,$v0,-8724
    # Line 308
    cvt.s.w	$f0,$f0
    # Line 297
    addu	$gp,$t9,$v0
    # Line 311
    move	$t9,$at
    # Line 310
    swc1	$f2,8($sp)
    # Line 309
    swc1	$f1,4($sp)
    # Line 311
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 308
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 312
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex3iv

# Function: __glim_Vertex3s
# Declared: Line 314 (Source lines: 315-327)
# Address: 0x0da33010 - 0x0da33074 (Size: 100 bytes, Frame: 32)
.globl __glim_Vertex3s
.ent __glim_Vertex3s
__glim_Vertex3s:
    # Line 325
    mtc1	$a2,$f2
    # Line 322
    lw	$at,4112($zero)
    # Line 324
    mtc1	$a1,$f1
    # Line 315
    addiu	$sp,$sp,-32
    # Line 323
    mtc1	$a0,$f0
    # Line 322
    lw	$at,6072($at)
    # Line 315
    sd	$ra,16($sp)
    # Line 325
    cvt.s.w	$f2,$f2
    # Line 315
    lui	$v0,0x2
    # Line 324
    cvt.s.w	$f1,$f1
    # Line 322
    lw	$at,1364($at)
    sd	$gp,24($sp)
    # Line 315
    addiu	$v0,$v0,-8836
    # Line 323
    cvt.s.w	$f0,$f0
    # Line 315
    addu	$gp,$t9,$v0
    # Line 325
    swc1	$f2,8($sp)
    # Line 326
    move	$t9,$at
    # Line 324
    swc1	$f1,4($sp)
    # Line 326
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 323
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 327
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex3s

# Function: __glim_Vertex3sv
# Declared: Line 329 (Source lines: 330-345)
# Address: 0x0da33080 - 0x0da330f0 (Size: 112 bytes, Frame: 32)
.globl __glim_Vertex3sv
.ent __glim_Vertex3sv
__glim_Vertex3sv:
    # Line 341
    lh	$v0,0($a0)
    # Line 338
    lh	$a1,4($a0)
    # Line 337
    lh	$v1,2($a0)
    # Line 340
    lw	$at,4112($zero)
    # Line 338
    mtc1	$a1,$f2
    # Line 337
    mtc1	$v1,$f1
    # Line 330
    addiu	$sp,$sp,-32
    # Line 340
    lw	$at,6072($at)
    # Line 341
    mtc1	$v0,$f0
    # Line 330
    sd	$ra,16($sp)
    # Line 338
    cvt.s.w	$f2,$f2
    # Line 330
    lui	$v0,0x2
    # Line 340
    lw	$at,1364($at)
    # Line 337
    cvt.s.w	$f1,$f1
    sd	$gp,24($sp)
    # Line 330
    addiu	$v0,$v0,-8948
    # Line 341
    cvt.s.w	$f0,$f0
    # Line 330
    addu	$gp,$t9,$v0
    # Line 344
    move	$t9,$at
    # Line 343
    swc1	$f2,8($sp)
    # Line 342
    swc1	$f1,4($sp)
    # Line 344
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 341
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 345
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex3sv

# Function: __glim_Vertex4f
# Declared: Line 349 (Source lines: 350-363)
# Address: 0x0da330f0 - 0x0da33140 (Size: 80 bytes, Frame: 32)
.globl __glim_Vertex4f
.ent __glim_Vertex4f
__glim_Vertex4f:
    # Line 350
    addiu	$sp,$sp,-32
    # Line 357
    lw	$at,4112($zero)
    # Line 350
    sd	$ra,16($sp)
    # Line 357
    lw	$at,6072($at)
    sd	$gp,24($sp)
    # Line 350
    lui	$v0,0x2
    # Line 357
    lw	$at,1396($at)
    # Line 350
    addiu	$v0,$v0,-9060
    # Line 361
    swc1	$f15,12($sp)
    # Line 350
    addu	$gp,$t9,$v0
    # Line 360
    swc1	$f14,8($sp)
    # Line 362
    move	$t9,$at
    # Line 359
    swc1	$f13,4($sp)
    # Line 362
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 358
    swc1	$f12,0($sp)
    ld	$ra,16($sp)
    # Line 363
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex4f

# Function: __glim_Vertex4d
# Declared: Line 365 (Source lines: 366-379)
# Address: 0x0da33140 - 0x0da331a0 (Size: 96 bytes, Frame: 32)
.globl __glim_Vertex4d
.ent __glim_Vertex4d
__glim_Vertex4d:
    # Line 366
    addiu	$sp,$sp,-32
    # Line 373
    lw	$at,4112($zero)
    # Line 366
    sd	$ra,16($sp)
    # Line 373
    lw	$at,6072($at)
    sd	$gp,24($sp)
    # Line 377
    cvt.s.d	$f3,$f15
    # Line 366
    lui	$v0,0x2
    # Line 373
    lw	$at,1396($at)
    # Line 376
    cvt.s.d	$f2,$f14
    # Line 366
    addiu	$v0,$v0,-9140
    # Line 377
    swc1	$f3,12($sp)
    # Line 375
    cvt.s.d	$f1,$f13
    # Line 366
    addu	$gp,$t9,$v0
    # Line 376
    swc1	$f2,8($sp)
    # Line 378
    move	$t9,$at
    # Line 374
    cvt.s.d	$f0,$f12
    # Line 375
    swc1	$f1,4($sp)
    # Line 378
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 374
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 379
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex4d

# Function: __glim_Vertex4dv
# Declared: Line 381 (Source lines: 382-399)
# Address: 0x0da331a0 - 0x0da33210 (Size: 112 bytes, Frame: 32)
.globl __glim_Vertex4dv
.ent __glim_Vertex4dv
__glim_Vertex4dv:
    # Line 382
    addiu	$sp,$sp,-32
    sd	$ra,16($sp)
    sd	$gp,24($sp)
    # Line 394
    ldc1	$f0,0($a0)
    # Line 390
    ldc1	$f2,16($a0)
    # Line 393
    lw	$at,4112($zero)
    # Line 391
    ldc1	$f3,24($a0)
    # Line 393
    lw	$at,6072($at)
    # Line 389
    ldc1	$f1,8($a0)
    # Line 382
    lui	$v0,0x2
    # Line 391
    cvt.s.d	$f3,$f3
    # Line 393
    lw	$at,1396($at)
    # Line 382
    addiu	$v0,$v0,-9236
    # Line 390
    cvt.s.d	$f2,$f2
    # Line 397
    swc1	$f3,12($sp)
    # Line 382
    addu	$gp,$t9,$v0
    # Line 389
    cvt.s.d	$f1,$f1
    # Line 396
    swc1	$f2,8($sp)
    # Line 398
    move	$t9,$at
    # Line 394
    cvt.s.d	$f0,$f0
    # Line 395
    swc1	$f1,4($sp)
    # Line 398
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 394
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 399
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex4dv

# Function: __glim_Vertex4i
# Declared: Line 401 (Source lines: 402-415)
# Address: 0x0da33210 - 0x0da33280 (Size: 112 bytes, Frame: 32)
.globl __glim_Vertex4i
.ent __glim_Vertex4i
__glim_Vertex4i:
    # Line 413
    mtc1	$a3,$f3
    # Line 402
    addiu	$sp,$sp,-32
    # Line 412
    mtc1	$a2,$f2
    # Line 409
    lw	$at,4112($zero)
    # Line 402
    sd	$ra,16($sp)
    # Line 411
    mtc1	$a1,$f1
    # Line 410
    mtc1	$a0,$f0
    # Line 413
    cvt.s.w	$f3,$f3
    # Line 409
    lw	$at,6072($at)
    sd	$gp,24($sp)
    # Line 412
    cvt.s.w	$f2,$f2
    # Line 402
    lui	$v0,0x2
    # Line 411
    cvt.s.w	$f1,$f1
    # Line 409
    lw	$at,1396($at)
    # Line 402
    addiu	$v0,$v0,-9348
    # Line 410
    cvt.s.w	$f0,$f0
    # Line 413
    swc1	$f3,12($sp)
    # Line 402
    addu	$gp,$t9,$v0
    # Line 412
    swc1	$f2,8($sp)
    # Line 414
    move	$t9,$at
    # Line 411
    swc1	$f1,4($sp)
    # Line 414
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 410
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 415
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex4i

# Function: __glim_Vertex4iv
# Declared: Line 417 (Source lines: 418-435)
# Address: 0x0da33280 - 0x0da33300 (Size: 128 bytes, Frame: 32)
.globl __glim_Vertex4iv
.ent __glim_Vertex4iv
__glim_Vertex4iv:
    # Line 430
    lw	$v0,0($a0)
    # Line 427
    lw	$a2,12($a0)
    # Line 426
    lw	$a1,8($a0)
    # Line 425
    lw	$v1,4($a0)
    # Line 427
    mtc1	$a2,$f3
    # Line 418
    addiu	$sp,$sp,-32
    # Line 429
    lw	$at,4112($zero)
    # Line 426
    mtc1	$a1,$f2
    # Line 418
    sd	$ra,16($sp)
    # Line 425
    mtc1	$v1,$f1
    # Line 429
    lw	$at,6072($at)
    # Line 430
    mtc1	$v0,$f0
    # Line 427
    cvt.s.w	$f3,$f3
    sd	$gp,24($sp)
    # Line 426
    cvt.s.w	$f2,$f2
    # Line 418
    lui	$v0,0x2
    # Line 429
    lw	$at,1396($at)
    # Line 425
    cvt.s.w	$f1,$f1
    # Line 418
    addiu	$v0,$v0,-9460
    # Line 430
    cvt.s.w	$f0,$f0
    # Line 433
    swc1	$f3,12($sp)
    # Line 418
    addu	$gp,$t9,$v0
    # Line 434
    move	$t9,$at
    # Line 432
    swc1	$f2,8($sp)
    # Line 431
    swc1	$f1,4($sp)
    # Line 434
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 430
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 435
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex4iv

# Function: __glim_Vertex4s
# Declared: Line 437 (Source lines: 438-451)
# Address: 0x0da33300 - 0x0da33370 (Size: 112 bytes, Frame: 32)
.globl __glim_Vertex4s
.ent __glim_Vertex4s
__glim_Vertex4s:
    # Line 449
    mtc1	$a3,$f3
    # Line 438
    addiu	$sp,$sp,-32
    # Line 448
    mtc1	$a2,$f2
    # Line 445
    lw	$at,4112($zero)
    # Line 438
    sd	$ra,16($sp)
    # Line 447
    mtc1	$a1,$f1
    # Line 446
    mtc1	$a0,$f0
    # Line 449
    cvt.s.w	$f3,$f3
    # Line 445
    lw	$at,6072($at)
    sd	$gp,24($sp)
    # Line 448
    cvt.s.w	$f2,$f2
    # Line 438
    lui	$v0,0x2
    # Line 447
    cvt.s.w	$f1,$f1
    # Line 445
    lw	$at,1396($at)
    # Line 438
    addiu	$v0,$v0,-9588
    # Line 446
    cvt.s.w	$f0,$f0
    # Line 449
    swc1	$f3,12($sp)
    # Line 438
    addu	$gp,$t9,$v0
    # Line 448
    swc1	$f2,8($sp)
    # Line 450
    move	$t9,$at
    # Line 447
    swc1	$f1,4($sp)
    # Line 450
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 446
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 451
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex4s

# Function: __glim_Vertex4sv
# Declared: Line 453 (Source lines: 454-471)
# Address: 0x0da33370 - 0x0da333f0 (Size: 128 bytes, Frame: 32)
.globl __glim_Vertex4sv
.ent __glim_Vertex4sv
__glim_Vertex4sv:
    # Line 466
    lh	$v0,0($a0)
    # Line 463
    lh	$a2,6($a0)
    # Line 462
    lh	$a1,4($a0)
    # Line 461
    lh	$v1,2($a0)
    # Line 463
    mtc1	$a2,$f3
    # Line 454
    addiu	$sp,$sp,-32
    # Line 465
    lw	$at,4112($zero)
    # Line 462
    mtc1	$a1,$f2
    # Line 454
    sd	$ra,16($sp)
    # Line 461
    mtc1	$v1,$f1
    # Line 465
    lw	$at,6072($at)
    # Line 466
    mtc1	$v0,$f0
    # Line 463
    cvt.s.w	$f3,$f3
    sd	$gp,24($sp)
    # Line 462
    cvt.s.w	$f2,$f2
    # Line 454
    lui	$v0,0x2
    # Line 465
    lw	$at,1396($at)
    # Line 461
    cvt.s.w	$f1,$f1
    # Line 454
    addiu	$v0,$v0,-9700
    # Line 466
    cvt.s.w	$f0,$f0
    # Line 469
    swc1	$f3,12($sp)
    # Line 454
    addu	$gp,$t9,$v0
    # Line 470
    move	$t9,$at
    # Line 468
    swc1	$f2,8($sp)
    # Line 467
    swc1	$f1,4($sp)
    # Line 470
    addiu	$a0,$sp,0
    jalr	$t9
    # Line 466
    swc1	$f0,0($sp)
    ld	$ra,16($sp)
    # Line 471
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_Vertex4sv

