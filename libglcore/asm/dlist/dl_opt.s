# Source: ../dlist/dl_opt.c
# Category: dlist
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_opt.c
# Total Functions: 23

.text

# Function: __glGenericDlistOptimizer
# Declared: Line 30 (Source lines: 31-37)
# Address: 0x0d97c630 - 0x0d97c664 (Size: 52 bytes, Frame: 16)
.globl __glGenericDlistOptimizer
.ent __glGenericDlistOptimizer
__glGenericDlistOptimizer:
    # Line 31
    lui	$at,0xd
    addiu	$sp,$sp,-16
    addiu	$at,$at,18268
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 36
    # lw $t9, -31136($gp) # &__glDlistOptimizeMaterial
    # Line 31
    sd	$ra,0($sp)
    # Line 36
    bal __glDlistOptimizeMaterial
    nop
    ld	$ra,0($sp)
    # Line 37
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glGenericDlistOptimizer

# Function: __gllc_Begin
# Declared: Line 63 (Source lines: 64-122)
# Address: 0x0d97c670 - 0x0d97c798 (Size: 296 bytes, Frame: 32)
.globl __gllc_Begin
.ent __gllc_Begin
__gllc_Begin:
    # Line 64
    lui	$v0,0xd
    # Line 68
    lw	$at,4112($zero)
    # Line 64
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,18204
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 70
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 68
    sd	$at,8($sp)
    # Line 70
    move	$a1,$zero
    # Line 64
    sd	$a0,0($sp)
    sd	$ra,16($sp)
    # Line 70
    bal __glDlistAllocOp2
    move	$a0,$at
    beqz	$v0,.L0d97c6fc
    # Line 73
    ld	$a2,0($sp)
    la	$a1,sub_0da40000
    sltiu	$a3,$a2,10
    sll	$a2,$a2,0x2
    addiu	$a1,$a1,17812
    beqz	$a3,.L0d97c774
    addu	$a1,$a1,$a2
    lw	$a2,0($a1)
    # Line 105
    li	$a5,1007
    # Line 73
    jr	$a2
    nop
.L0d97c6d4:
    # Line 88
    li	$a5,1003
    la	$a2,__glle_Begin_Points
.L0d97c6dc:
    # Line 120
    ld	$a0,8($sp)
    # Line 122
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    # Line 120
    lw	$a3,4996($a0)
    ori	$a3,$a3,0x80
    sw	$a3,4996($a0)
    # Line 122
    move	$a1,$v0
    bal __glDlistAppendOp
    # Line 121
    sh	$a5,12($v0)
.L0d97c6fc:
    ld	$ra,16($sp)
.L0d97c700:
    # Line 117
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97c70c:
    # Line 77
    li	$a5,1000
    b	.L0d97c6dc
    la	$a2,__glle_Begin_LineLoop
.L0d97c718:
    # Line 93
    li	$a5,1004
    b	.L0d97c6dc
    la	$a2,__glle_Begin_Polygon
.L0d97c724:
    # Line 109
    li	$a5,1008
    b	.L0d97c6dc
    la	$a2,__glle_Begin_QuadStrip
.L0d97c730:
    # Line 113
    li	$a5,1009
    b	.L0d97c6dc
    la	$a2,__glle_Begin_Quads
.L0d97c73c:
    # Line 101
    li	$a5,1006
    b	.L0d97c6dc
    la	$a2,__glle_Begin_TriangleFan
.L0d97c748:
    # Line 97
    li	$a5,1005
    b	.L0d97c6dc
    la	$a2,__glle_Begin_TriangleStrip
.L0d97c754:
    # Line 105
    b	.L0d97c6dc
    la	$a2,__glle_Begin_Triangles
.L0d97c75c:
    # Line 81
    li	$a5,1001
    b	.L0d97c6dc
    la	$a2,__glle_Begin_LineStrip
.L0d97c768:
    # Line 85
    li	$a5,1002
    b	.L0d97c6dc
    la	$a2,__glle_Begin_Lines
.L0d97c774:
    # Line 116
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    la	$a2,__glle_InvalidEnum
    move	$a1,$v0
    ld	$a0,8($sp)
    # Line 115
    li	$a4,1011
    # Line 116
    bal __glDlistAppendOp
    # Line 115
    sh	$a4,12($v0)
    b	.L0d97c700
    ld	$ra,16($sp)
.end __gllc_Begin

# Function: __glle_Begin_LineLoop
# Declared: Line 127 (Source lines: 128-130)
# Address: 0x0d97c7a0 - 0x0d97c7e4 (Size: 68 bytes, Frame: 32)
.globl __glle_Begin_LineLoop
.ent __glle_Begin_LineLoop
__glle_Begin_LineLoop:
    # Line 128
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$gp,16($sp)
    addiu	$at,$at,17900
    addu	$gp,$t9,$at
    # Line 129
    lw	$t9,4204($zero)
    # Line 128
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 129
    jalr	$t9
    li	$a0,2
    ld	$ra,0($sp)
    # Line 130
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Begin_LineLoop

# Function: __glle_Begin_LineStrip
# Declared: Line 133 (Source lines: 134-136)
# Address: 0x0d97c7f0 - 0x0d97c834 (Size: 68 bytes, Frame: 32)
.globl __glle_Begin_LineStrip
.ent __glle_Begin_LineStrip
__glle_Begin_LineStrip:
    # Line 134
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$gp,16($sp)
    addiu	$at,$at,17820
    addu	$gp,$t9,$at
    # Line 135
    lw	$t9,4204($zero)
    # Line 134
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 135
    jalr	$t9
    li	$a0,3
    ld	$ra,0($sp)
    # Line 136
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Begin_LineStrip

# Function: __glle_Begin_Lines
# Declared: Line 139 (Source lines: 140-142)
# Address: 0x0d97c840 - 0x0d97c884 (Size: 68 bytes, Frame: 32)
.globl __glle_Begin_Lines
.ent __glle_Begin_Lines
__glle_Begin_Lines:
    # Line 140
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$gp,16($sp)
    addiu	$at,$at,17740
    addu	$gp,$t9,$at
    # Line 141
    lw	$t9,4204($zero)
    # Line 140
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 141
    jalr	$t9
    li	$a0,1
    ld	$ra,0($sp)
    # Line 142
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Begin_Lines

# Function: __glle_Begin_Points
# Declared: Line 145 (Source lines: 146-148)
# Address: 0x0d97c890 - 0x0d97c8d4 (Size: 68 bytes, Frame: 32)
.globl __glle_Begin_Points
.ent __glle_Begin_Points
__glle_Begin_Points:
    # Line 146
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$gp,16($sp)
    addiu	$at,$at,17660
    addu	$gp,$t9,$at
    # Line 147
    lw	$t9,4204($zero)
    # Line 146
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 147
    jalr	$t9
    move	$a0,$zero
    ld	$ra,0($sp)
    # Line 148
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Begin_Points

# Function: __glle_Begin_Polygon
# Declared: Line 151 (Source lines: 152-154)
# Address: 0x0d97c8e0 - 0x0d97c924 (Size: 68 bytes, Frame: 32)
.globl __glle_Begin_Polygon
.ent __glle_Begin_Polygon
__glle_Begin_Polygon:
    # Line 152
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$gp,16($sp)
    addiu	$at,$at,17580
    addu	$gp,$t9,$at
    # Line 153
    lw	$t9,4204($zero)
    # Line 152
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 153
    jalr	$t9
    li	$a0,9
    ld	$ra,0($sp)
    # Line 154
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Begin_Polygon

# Function: __glle_Begin_TriangleStrip
# Declared: Line 157 (Source lines: 158-160)
# Address: 0x0d97c930 - 0x0d97c974 (Size: 68 bytes, Frame: 32)
.globl __glle_Begin_TriangleStrip
.ent __glle_Begin_TriangleStrip
__glle_Begin_TriangleStrip:
    # Line 158
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$gp,16($sp)
    addiu	$at,$at,17500
    addu	$gp,$t9,$at
    # Line 159
    lw	$t9,4204($zero)
    # Line 158
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 159
    jalr	$t9
    li	$a0,5
    ld	$ra,0($sp)
    # Line 160
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Begin_TriangleStrip

# Function: __glle_Begin_TriangleFan
# Declared: Line 163 (Source lines: 164-166)
# Address: 0x0d97c980 - 0x0d97c9c4 (Size: 68 bytes, Frame: 32)
.globl __glle_Begin_TriangleFan
.ent __glle_Begin_TriangleFan
__glle_Begin_TriangleFan:
    # Line 164
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$gp,16($sp)
    addiu	$at,$at,17420
    addu	$gp,$t9,$at
    # Line 165
    lw	$t9,4204($zero)
    # Line 164
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 165
    jalr	$t9
    li	$a0,6
    ld	$ra,0($sp)
    # Line 166
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Begin_TriangleFan

# Function: __glle_Begin_Triangles
# Declared: Line 169 (Source lines: 170-172)
# Address: 0x0d97c9d0 - 0x0d97ca14 (Size: 68 bytes, Frame: 32)
.globl __glle_Begin_Triangles
.ent __glle_Begin_Triangles
__glle_Begin_Triangles:
    # Line 170
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$gp,16($sp)
    addiu	$at,$at,17340
    addu	$gp,$t9,$at
    # Line 171
    lw	$t9,4204($zero)
    # Line 170
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 171
    jalr	$t9
    li	$a0,4
    ld	$ra,0($sp)
    # Line 172
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Begin_Triangles

# Function: __glle_Begin_QuadStrip
# Declared: Line 175 (Source lines: 176-178)
# Address: 0x0d97ca20 - 0x0d97ca64 (Size: 68 bytes, Frame: 32)
.globl __glle_Begin_QuadStrip
.ent __glle_Begin_QuadStrip
__glle_Begin_QuadStrip:
    # Line 176
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$gp,16($sp)
    addiu	$at,$at,17260
    addu	$gp,$t9,$at
    # Line 177
    lw	$t9,4204($zero)
    # Line 176
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 177
    jalr	$t9
    li	$a0,8
    ld	$ra,0($sp)
    # Line 178
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Begin_QuadStrip

# Function: __glle_Begin_Quads
# Declared: Line 181 (Source lines: 182-184)
# Address: 0x0d97ca70 - 0x0d97cab4 (Size: 68 bytes, Frame: 32)
.globl __glle_Begin_Quads
.ent __glle_Begin_Quads
__glle_Begin_Quads:
    # Line 182
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$gp,16($sp)
    addiu	$at,$at,17180
    addu	$gp,$t9,$at
    # Line 183
    lw	$t9,4204($zero)
    # Line 182
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 183
    jalr	$t9
    li	$a0,7
    ld	$ra,0($sp)
    # Line 184
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_Begin_Quads

# Function: __gllc_InvalidValue
# Declared: Line 193 (Source lines: 194-201)
# Address: 0x0d97cac0 - 0x0d97cb20 (Size: 96 bytes, Frame: 32)
.globl __gllc_InvalidValue
.ent __gllc_InvalidValue
__gllc_InvalidValue:
    # Line 194
    lui	$at,0xd
    addiu	$sp,$sp,-32
    addiu	$at,$at,17100
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 197
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 194
    sd	$ra,8($sp)
    # Line 197
    move	$a1,$zero
    bal __glDlistAllocOp2
    # Line 194
    sd	$a0,0($sp)
    # Line 197
    bnez	$v0,.L0d97cafc
    ld	$ra,8($sp)
.L0d97caf0:
    # Line 201
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97cafc:
    # Line 200
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    la	$a2,__glle_InvalidValue
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 199
    li	$v1,1010
    # Line 200
    bal __glDlistAppendOp
    # Line 199
    sh	$v1,12($v0)
    b	.L0d97caf0
    ld	$ra,8($sp)
.end __gllc_InvalidValue

# Function: __gllc_InvalidEnum
# Declared: Line 203 (Source lines: 204-211)
# Address: 0x0d97cb20 - 0x0d97cb80 (Size: 96 bytes, Frame: 32)
.globl __gllc_InvalidEnum
.ent __gllc_InvalidEnum
__gllc_InvalidEnum:
    # Line 204
    lui	$at,0xd
    addiu	$sp,$sp,-32
    addiu	$at,$at,17004
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 207
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 204
    sd	$ra,8($sp)
    # Line 207
    move	$a1,$zero
    bal __glDlistAllocOp2
    # Line 204
    sd	$a0,0($sp)
    # Line 207
    bnez	$v0,.L0d97cb60
    # Line 210
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$ra,8($sp)
.L0d97cb54:
    # Line 211
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97cb60:
    # Line 210
    la	$a2,__glle_InvalidEnum
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 209
    li	$v1,1011
    # Line 210
    bal __glDlistAppendOp
    # Line 209
    sh	$v1,12($v0)
    b	.L0d97cb54
    ld	$ra,8($sp)
.end __gllc_InvalidEnum

# Function: __gllc_InvalidOperation
# Declared: Line 213 (Source lines: 214-221)
# Address: 0x0d97cb80 - 0x0d97cbe0 (Size: 96 bytes, Frame: 32)
.globl __gllc_InvalidOperation
.ent __gllc_InvalidOperation
__gllc_InvalidOperation:
    # Line 214
    lui	$at,0xd
    addiu	$sp,$sp,-32
    addiu	$at,$at,16908
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 217
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 214
    sd	$ra,8($sp)
    # Line 217
    move	$a1,$zero
    bal __glDlistAllocOp2
    # Line 214
    sd	$a0,0($sp)
    # Line 217
    bnez	$v0,.L0d97cbc0
    # Line 220
    nop	# was lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$ra,8($sp)
.L0d97cbb4:
    # Line 221
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97cbc0:
    # Line 220
    la	$a2,__glle_InvalidOperation
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 219
    li	$v1,1012
    # Line 220
    bal __glDlistAppendOp
    # Line 219
    sh	$v1,12($v0)
    b	.L0d97cbb4
    ld	$ra,8($sp)
.end __gllc_InvalidOperation

# Function: __gllc_TableTooLarge
# Declared: Line 223 (Source lines: 224-230)
# Address: 0x0d97cbe0 - 0x0d97cc40 (Size: 96 bytes, Frame: 32)
.globl __gllc_TableTooLarge
.ent __gllc_TableTooLarge
__gllc_TableTooLarge:
    # Line 224
    lui	$at,0xd
    addiu	$sp,$sp,-32
    addiu	$at,$at,16812
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 226
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 224
    sd	$ra,8($sp)
    # Line 226
    move	$a1,$zero
    bal __glDlistAllocOp2
    # Line 224
    sd	$a0,0($sp)
    # Line 226
    bnez	$v0,.L0d97cc1c
    ld	$ra,8($sp)
.L0d97cc10:
    # Line 230
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97cc1c:
    # Line 229
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    la	$a2,__glle_TableTooLarge
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 228
    li	$v1,1015
    # Line 229
    bal __glDlistAppendOp
    # Line 228
    sh	$v1,12($v0)
    b	.L0d97cc10
    ld	$ra,8($sp)
.end __gllc_TableTooLarge

# Function: __gllc_UnimplementedExtension
# Declared: Line 236 (Source lines: 237-244)
# Address: 0x0d97cc40 - 0x0d97cca4 (Size: 100 bytes, Frame: 32)
.globl __gllc_UnimplementedExtension
.ent __gllc_UnimplementedExtension
__gllc_UnimplementedExtension:
    # Line 237
    lui	$at,0xd
    addiu	$sp,$sp,-32
    addiu	$at,$at,16716
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 240
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    # Line 239
    lw	$a0,4112($zero)
    # Line 237
    sd	$ra,8($sp)
    # Line 240
    move	$a1,$zero
    bal __glDlistAllocOp2
    # Line 239
    sd	$a0,0($sp)
    # Line 240
    bnez	$v0,.L0d97cc80
    ld	$ra,8($sp)
.L0d97cc74:
    # Line 244
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97cc80:
    # Line 243
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    la	$a2,__glle_UnimplementedExtension
    move	$a1,$v0
    ld	$a0,0($sp)
    # Line 242
    li	$v1,1013
    # Line 243
    bal __glDlistAppendOp
    # Line 242
    sh	$v1,12($v0)
    b	.L0d97cc74
    ld	$ra,8($sp)
.end __gllc_UnimplementedExtension

# Function: __gllc_Error
# Declared: Line 247 (Source lines: 248-264)
# Address: 0x0d97ccb0 - 0x0d97cd48 (Size: 152 bytes, Frame: 16)
.globl __gllc_Error
.ent __gllc_Error
__gllc_Error:
    # Line 248
    addiu	$sp,$sp,-16
    # Line 249
    li	$at,1281
    # Line 248
    lui	$v0,0xd
    sd	$ra,8($sp)
    addiu	$v0,$v0,16604
    sd	$gp,0($sp)
    # Line 249
    beq	$a1,$at,.L0d97cd10
    # Line 248
    addu	$gp,$t9,$v0
    # Line 249
    li	$v1,1280
    beq	$a1,$v1,.L0d97cd24
    # Line 254
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    # Line 249
    li	$a2,1282
    beq	$a1,$a2,.L0d97cd34
    li	$a3,0x8031
    beq	$a1,$a3,.L0d97cd00
    # Line 260
    nop	# was lw $t9, -31068($gp) # &__gllc_TableTooLarge
    ld	$ra,8($sp)
.L0d97ccf4:
    # Line 264
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d97cd00:
    # Line 260
    bal __gllc_TableTooLarge
    nop
    b	.L0d97ccf4
    ld	$ra,8($sp)
.L0d97cd10:
    # Line 251
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
    bal __gllc_InvalidValue
    nop
    b	.L0d97ccf4
    ld	$ra,8($sp)
.L0d97cd24:
    # Line 254
    bal __gllc_InvalidEnum
    nop
    b	.L0d97ccf4
    ld	$ra,8($sp)
.L0d97cd34:
    # Line 257
    # lw $t9, -31072($gp) # &__gllc_InvalidOperation
    bal __gllc_InvalidOperation
    nop
    b	.L0d97ccf4
    ld	$ra,8($sp)
.end __gllc_Error

# Function: __glle_InvalidValue
# Declared: Line 269 (Source lines: 270-272)
# Address: 0x0d97cd50 - 0x0d97cd94 (Size: 68 bytes, Frame: 32)
.globl __glle_InvalidValue
.ent __glle_InvalidValue
__glle_InvalidValue:
    # Line 270
    lui	$at,0xd
    addiu	$sp,$sp,-32
    addiu	$at,$at,16444
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 271
    # lw $t9, -26452($gp) # &__glSetError
    # Line 270
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 271
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    # Line 272
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_InvalidValue

# Function: __glle_InvalidEnum
# Declared: Line 275 (Source lines: 276-278)
# Address: 0x0d97cda0 - 0x0d97cde4 (Size: 68 bytes, Frame: 32)
.globl __glle_InvalidEnum
.ent __glle_InvalidEnum
__glle_InvalidEnum:
    # Line 276
    lui	$at,0xd
    addiu	$sp,$sp,-32
    addiu	$at,$at,16364
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 277
    # lw $t9, -26452($gp) # &__glSetError
    # Line 276
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 277
    jal	__glSetError
    li	$a0,1280
    ld	$ra,0($sp)
    # Line 278
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_InvalidEnum

# Function: __glle_InvalidOperation
# Declared: Line 281 (Source lines: 282-284)
# Address: 0x0d97cdf0 - 0x0d97ce34 (Size: 68 bytes, Frame: 32)
.globl __glle_InvalidOperation
.ent __glle_InvalidOperation
__glle_InvalidOperation:
    # Line 282
    lui	$at,0xd
    addiu	$sp,$sp,-32
    addiu	$at,$at,16284
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 283
    # lw $t9, -26452($gp) # &__glSetError
    # Line 282
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 283
    jal	__glSetError
    li	$a0,1282
    ld	$ra,0($sp)
    # Line 284
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_InvalidOperation

# Function: __glle_TableTooLarge
# Declared: Line 287 (Source lines: 288-290)
# Address: 0x0d97ce40 - 0x0d97ce84 (Size: 68 bytes, Frame: 32)
.globl __glle_TableTooLarge
.ent __glle_TableTooLarge
__glle_TableTooLarge:
    # Line 288
    lui	$at,0xd
    addiu	$sp,$sp,-32
    addiu	$at,$at,16204
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 289
    # lw $t9, -26452($gp) # &__glSetError
    # Line 288
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 289
    jal	__glSetError
    li	$a0,0x8031
    ld	$ra,0($sp)
    # Line 290
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_TableTooLarge

# Function: __glle_UnimplementedExtension
# Declared: Line 300 (Source lines: 301-303)
# Address: 0x0d97ce90 - 0x0d97ced4 (Size: 68 bytes, Frame: 32)
.globl __glle_UnimplementedExtension
.ent __glle_UnimplementedExtension
__glle_UnimplementedExtension:
    # Line 301
    lui	$at,0xd
    addiu	$sp,$sp,-32
    addiu	$at,$at,16124
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 302
    # lw $t9, -26452($gp) # &__glSetError
    # Line 301
    sd	$s8,8($sp)
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 302
    jal	__glSetError
    li	$a0,1282
    ld	$ra,0($sp)
    # Line 303
    ld	$gp,16($sp)
    move	$v0,$s8
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_UnimplementedExtension

.late_rodata
jtbl_0da44594:
    .word .L0d97c6d4
    .word .L0d97c768
    .word .L0d97c70c
    .word .L0d97c75c
    .word .L0d97c754
    .word .L0d97c748
    .word .L0d97c73c
    .word .L0d97c730
    .word .L0d97c724
    .word .L0d97c718

