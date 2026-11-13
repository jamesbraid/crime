# Source: ../CRIME/crm_coloropt.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_coloropt.c
# Total Functions: 24

.text

# Function: __glCrmDownloadCurrentColor
# Declared: Line 52 (Source lines: 53-76)
# Address: 0x0d942aa0 - 0x0d942b50 (Size: 176 bytes, Frame: 0)
.globl __glCrmDownloadCurrentColor
.ent __glCrmDownloadCurrentColor
__glCrmDownloadCurrentColor:
    # Line 53
    lbu	$at,3220($a0)
    # Line 69
    lui	$a2,0x1
    # Line 53
    beqz	$at,.L0d942b38
    # Line 75
    li	$t0,2
    # Line 60
    lwc1	$f3,192($a0)
    lwc1	$f1,200($a0)
    lwc1	$f2,196($a0)
    lwc1	$f0,204($a0)
    trunc.w.s	$f3,$f3
    trunc.w.s	$f1,$f1
    trunc.w.s	$f2,$f2
    mfc1	$a6,$f3
    trunc.w.s	$f0,$f0
    mfc1	$a5,$f1
    mfc1	$a4,$f2
    sll	$a6,$a6,0x18
    mfc1	$a3,$f0
    sll	$a5,$a5,0x8
    sll	$a4,$a4,0x10
    or	$a4,$a4,$a5
    or	$a3,$a3,$a6
    or	$a3,$a3,$a4
.L0d942af8:
    # Line 69
    addu	$a2,$a0,$a2
    lw	$a7,-32640($a2)
    # Line 75
    li	$a5,2
    # Line 69
    beqz	$a7,.L0d942b14
    lw	$a4,-32636($a2)
    beq	$a3,$a4,.L0d942b30
    nop
.L0d942b14:
    # Line 72
    lw	$a7,32184($a0)
    # Line 71
    lw	$a6,32188($a0)
    # Line 72
    sw	$a3,8400($a7)
    sw	$a3,8400($a6)
    # Line 75
    sw	$a5,-32640($a2)
    # Line 76
    jr	$ra
    # Line 73
    sw	$a3,-32636($a2)
.L0d942b30:
    # Line 76
    jr	$ra
    # Line 75
    sw	$t0,-32640($a2)
.L0d942b38:
    # Line 65
    lwc1	$f4,448($a0)
    trunc.w.s	$f4,$f4
    lw	$a3,30736($a0)
    mfc1	$a4,$f4
    b	.L0d942af8
    and	$a3,$a3,$a4
.end __glCrmDownloadCurrentColor

# Function: __glCrmDownloadRasterColor
# Declared: Line 79 (Source lines: 80-104)
# Address: 0x0d942b50 - 0x0d942c00 (Size: 176 bytes, Frame: 0)
.globl __glCrmDownloadRasterColor
.ent __glCrmDownloadRasterColor
__glCrmDownloadRasterColor:
    # Line 80
    lbu	$at,3220($a0)
    # Line 103
    li	$t0,1
    # Line 80
    beqz	$at,.L0d942be8
    lwc1	$f4,384($a0)
    # Line 87
    lwc1	$f1,392($a0)
    lwc1	$f2,388($a0)
    trunc.w.s	$f3,$f4
    lwc1	$f0,396($a0)
    trunc.w.s	$f1,$f1
    mfc1	$a6,$f3
    trunc.w.s	$f2,$f2
    trunc.w.s	$f0,$f0
    mfc1	$a5,$f1
    sll	$a6,$a6,0x18
    mfc1	$a4,$f2
    mfc1	$a3,$f0
    sll	$a5,$a5,0x8
    sll	$a4,$a4,0x10
    or	$a3,$a3,$a6
    or	$a4,$a4,$a5
    or	$a3,$a3,$a4
.L0d942ba4:
    # Line 97
    lui	$a2,0x1
    addu	$a2,$a0,$a2
    lw	$a7,-32640($a2)
    # Line 103
    li	$a5,1
    # Line 97
    beqz	$a7,.L0d942bc4
    lw	$a4,-32636($a2)
    beq	$a4,$a3,.L0d942be0
    nop
.L0d942bc4:
    # Line 100
    lw	$a7,32184($a0)
    # Line 99
    lw	$a6,32188($a0)
    # Line 100
    sw	$a3,8400($a7)
    sw	$a3,8400($a6)
    # Line 103
    sw	$a5,-32640($a2)
    # Line 104
    jr	$ra
    # Line 101
    sw	$a3,-32636($a2)
.L0d942be0:
    # Line 104
    jr	$ra
    # Line 103
    sw	$t0,-32640($a2)
.L0d942be8:
    # Line 93
    trunc.l.s	$f3,$f4
    dmfc1	$a4,$f3
    lw	$a3,30736($a0)
    sll	$a4,$a4,0x0
    b	.L0d942ba4
    and	$a3,$a3,$a4
.end __glCrmDownloadRasterColor

# Function: __glCrmClampScaleAndDownload
# Declared: Line 108 (Source lines: 109-117)
# Address: 0x0d942c00 - 0x0d942c6c (Size: 108 bytes, Frame: 32)
.globl __glCrmClampScaleAndDownload
.ent __glCrmClampScaleAndDownload
__glCrmClampScaleAndDownload:
    # Line 109
    lui	$at,0x11
    addiu	$sp,$sp,-32
    addiu	$at,$at,-7796
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 112
    # lw $t9, -32228($gp) # &__glClampAndScaleColor
    # Line 109
    sd	$s0,0($sp)
    # Line 112
    nop
    # Line 109
    sd	$ra,8($sp)
    # Line 112
    jal	__glClampAndScaleColor
    # Line 109
    move	$s0,$a0
    # Line 114
    lbu	$v0,3220($s0)
    li	$v1,0x8088
    beqz	$v0,.L0d942c48
    addu	$v1,$v1,$s0
    lbu	$v1,0($v1)
    beqz	$v1,.L0d942c5c
    # Line 115
    nop	# was lw $t9, -31940($gp) # &__glCrmDownloadCurrentColor
.L0d942c48:
    ld	$ra,8($sp)
.L0d942c4c:
    ld	$s0,0($sp)
    # Line 117
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d942c5c:
    # Line 115
    bal __glCrmDownloadCurrentColor
    move	$a0,$s0
    b	.L0d942c4c
    ld	$ra,8($sp)
.end __glCrmClampScaleAndDownload

# Function: __glcrmim_Indexf
# Declared: Line 124 (Source lines: 126-141)
# Address: 0x0d942c70 - 0x0d942cdc (Size: 108 bytes, Frame: 0)
.globl __glcrmim_Indexf
.ent __glcrmim_Indexf
__glcrmim_Indexf:
    # Line 126
    lw	$a2,4112($zero)
    # Line 129
    lui	$a1,0x1
    swc1	$f12,448($a2)
    addu	$a1,$a2,$a1
    lbu	$at,-32632($a1)
    bnez	$at,.L0d942cd4
    nop
    # Line 132
    trunc.l.s	$f0,$f12
    # Line 133
    lw	$a5,-32640($a1)
    # Line 132
    dmfc1	$a4,$f0
    lw	$a3,30736($a2)
    # Line 139
    li	$t0,2
    # Line 132
    sll	$a4,$a4,0x0
    # Line 133
    beqz	$a5,.L0d942cb8
    # Line 132
    and	$a3,$a3,$a4
    # Line 133
    lw	$a5,-32636($a1)
    beq	$a5,$a3,.L0d942ccc
    nop
.L0d942cb8:
    # Line 136
    lw	$a7,32184($a2)
    # Line 135
    lw	$a6,32188($a2)
    # Line 136
    sw	$a3,8400($a7)
    sw	$a3,8400($a6)
    # Line 137
    sw	$a3,-32636($a1)
.L0d942ccc:
    # Line 141
    jr	$ra
    # Line 139
    sw	$t0,-32640($a1)
.L0d942cd4:
    # Line 141
    jr	$ra
    nop
.end __glcrmim_Indexf

# Function: __glcrmim_Indexd
# Declared: Line 143 (Source lines: 144-148)
# Address: 0x0d942ce0 - 0x0d942d1c (Size: 60 bytes, Frame: 16)
.globl __glcrmim_Indexd
.ent __glcrmim_Indexd
__glcrmim_Indexd:
    # Line 147
    lw	$at,4112($zero)
    # Line 144
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 147
    lw	$at,6072($at)
    sd	$gp,8($sp)
    # Line 144
    addiu	$v0,$v0,-8020
    addu	$gp,$t9,$v0
    # Line 147
    lw	$t9,1552($at)
    # Line 144
    sd	$ra,0($sp)
    # Line 147
    jalr	$t9
    cvt.s.d	$f12,$f12
    ld	$ra,0($sp)
    # Line 148
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_Indexd

# Function: __glcrmim_Indexi
# Declared: Line 150 (Source lines: 151-155)
# Address: 0x0d942d20 - 0x0d942d60 (Size: 64 bytes, Frame: 16)
.globl __glcrmim_Indexi
.ent __glcrmim_Indexi
__glcrmim_Indexi:
    # Line 154
    lw	$at,4112($zero)
    # Line 151
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 154
    lw	$at,6072($at)
    sd	$gp,8($sp)
    # Line 151
    addiu	$v0,$v0,-8084
    # Line 154
    mtc1	$a0,$f12
    # Line 151
    addu	$gp,$t9,$v0
    # Line 154
    lw	$t9,1552($at)
    # Line 151
    sd	$ra,0($sp)
    # Line 154
    jalr	$t9
    cvt.s.w	$f12,$f12
    ld	$ra,0($sp)
    # Line 155
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_Indexi

# Function: __glcrmim_Indexs
# Declared: Line 157 (Source lines: 158-162)
# Address: 0x0d942d60 - 0x0d942da0 (Size: 64 bytes, Frame: 16)
.globl __glcrmim_Indexs
.ent __glcrmim_Indexs
__glcrmim_Indexs:
    # Line 161
    lw	$at,4112($zero)
    # Line 158
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 161
    lw	$at,6072($at)
    sd	$gp,8($sp)
    # Line 158
    addiu	$v0,$v0,-8148
    # Line 161
    mtc1	$a0,$f12
    # Line 158
    addu	$gp,$t9,$v0
    # Line 161
    lw	$t9,1552($at)
    # Line 158
    sd	$ra,0($sp)
    # Line 161
    jalr	$t9
    cvt.s.w	$f12,$f12
    ld	$ra,0($sp)
    # Line 162
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_Indexs

# Function: __glcrmim_Indexdv
# Declared: Line 164 (Source lines: 165-169)
# Address: 0x0d942da0 - 0x0d942de0 (Size: 64 bytes, Frame: 16)
.globl __glcrmim_Indexdv
.ent __glcrmim_Indexdv
__glcrmim_Indexdv:
    # Line 168
    lw	$at,4112($zero)
    ldc1	$f12,0($a0)
    # Line 165
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 168
    lw	$at,6072($at)
    sd	$gp,8($sp)
    # Line 165
    addiu	$v0,$v0,-8212
    addu	$gp,$t9,$v0
    # Line 168
    lw	$t9,1552($at)
    # Line 165
    sd	$ra,0($sp)
    # Line 168
    jalr	$t9
    cvt.s.d	$f12,$f12
    ld	$ra,0($sp)
    # Line 169
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_Indexdv

# Function: __glcrmim_Indexfv
# Declared: Line 171 (Source lines: 172-176)
# Address: 0x0d942de0 - 0x0d942e1c (Size: 60 bytes, Frame: 16)
.globl __glcrmim_Indexfv
.ent __glcrmim_Indexfv
__glcrmim_Indexfv:
    # Line 175
    lw	$at,4112($zero)
    # Line 172
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 175
    lw	$at,6072($at)
    sd	$gp,8($sp)
    # Line 172
    addiu	$v0,$v0,-8276
    addu	$gp,$t9,$v0
    # Line 175
    lw	$t9,1552($at)
    # Line 172
    sd	$ra,0($sp)
    # Line 175
    jalr	$t9
    lwc1	$f12,0($a0)
    ld	$ra,0($sp)
    # Line 176
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_Indexfv

# Function: __glcrmim_Indexiv
# Declared: Line 178 (Source lines: 179-183)
# Address: 0x0d942e20 - 0x0d942e64 (Size: 68 bytes, Frame: 16)
.globl __glcrmim_Indexiv
.ent __glcrmim_Indexiv
__glcrmim_Indexiv:
    # Line 182
    lw	$at,4112($zero)
    lw	$v1,0($a0)
    # Line 179
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 182
    lw	$at,6072($at)
    sd	$gp,8($sp)
    # Line 179
    addiu	$v0,$v0,-8340
    # Line 182
    mtc1	$v1,$f12
    # Line 179
    addu	$gp,$t9,$v0
    # Line 182
    lw	$t9,1552($at)
    # Line 179
    sd	$ra,0($sp)
    # Line 182
    jalr	$t9
    cvt.s.w	$f12,$f12
    ld	$ra,0($sp)
    # Line 183
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_Indexiv

# Function: __glcrmim_Indexsv
# Declared: Line 185 (Source lines: 186-190)
# Address: 0x0d942e70 - 0x0d942eb4 (Size: 68 bytes, Frame: 16)
.globl __glcrmim_Indexsv
.ent __glcrmim_Indexsv
__glcrmim_Indexsv:
    # Line 189
    lw	$at,4112($zero)
    lh	$v1,0($a0)
    # Line 186
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 189
    lw	$at,6072($at)
    sd	$gp,8($sp)
    # Line 186
    addiu	$v0,$v0,-8420
    # Line 189
    mtc1	$v1,$f12
    # Line 186
    addu	$gp,$t9,$v0
    # Line 189
    lw	$t9,1552($at)
    # Line 186
    sd	$ra,0($sp)
    # Line 189
    jalr	$t9
    cvt.s.w	$f12,$f12
    ld	$ra,0($sp)
    # Line 190
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_Indexsv

# Function: __glcrmim_Indexub
# Declared: Line 192 (Source lines: 193-197)
# Address: 0x0d942ec0 - 0x0d942f00 (Size: 64 bytes, Frame: 16)
.globl __glcrmim_Indexub
.ent __glcrmim_Indexub
__glcrmim_Indexub:
    # Line 196
    lw	$at,4112($zero)
    # Line 193
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 196
    lw	$at,6072($at)
    sd	$gp,8($sp)
    # Line 193
    addiu	$v0,$v0,-8500
    # Line 196
    mtc1	$a0,$f12
    # Line 193
    addu	$gp,$t9,$v0
    # Line 196
    lw	$t9,1552($at)
    # Line 193
    sd	$ra,0($sp)
    # Line 196
    jalr	$t9
    cvt.s.w	$f12,$f12
    ld	$ra,0($sp)
    # Line 197
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_Indexub

# Function: __glcrmim_Indexubv
# Declared: Line 199 (Source lines: 200-204)
# Address: 0x0d942f00 - 0x0d942f44 (Size: 68 bytes, Frame: 16)
.globl __glcrmim_Indexubv
.ent __glcrmim_Indexubv
__glcrmim_Indexubv:
    # Line 203
    lw	$at,4112($zero)
    lbu	$v1,0($a0)
    # Line 200
    addiu	$sp,$sp,-16
    lui	$v0,0x11
    # Line 203
    lw	$at,6072($at)
    sd	$gp,8($sp)
    # Line 200
    addiu	$v0,$v0,-8564
    # Line 203
    mtc1	$v1,$f12
    # Line 200
    addu	$gp,$t9,$v0
    # Line 203
    lw	$t9,1552($at)
    # Line 200
    sd	$ra,0($sp)
    # Line 203
    jalr	$t9
    cvt.s.w	$f12,$f12
    ld	$ra,0($sp)
    # Line 204
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_Indexubv

# Function: RasterPos2SetColor
# Declared: Line 215 (Source lines: 216-224)
# Address: 0x0d942f50 - 0x0d942fb4 (Size: 100 bytes, Frame: 32)
.ent RasterPos2SetColor
RasterPos2SetColor:
    # Line 216
    addiu	$sp,$sp,-32
    lui	$at,0x11
    sd	$s8,8($sp)
    # Line 219
    lui	$s8,0x1
    sd	$gp,16($sp)
    # Line 216
    addiu	$at,$at,-8644
    # Line 219
    addu	$s8,$a0,$s8
    # Line 216
    addu	$gp,$t9,$at
    # Line 219
    lw	$t9,-32628($s8)
    # Line 216
    sd	$ra,0($sp)
    # Line 219
    jalr	$t9
    nop
    lw	$at,-32640($s8)
    li	$v0,1
    # Line 224
    ld	$gp,16($sp)
    # Line 219
    beq	$at,$v0,.L0d942fa0
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 224
    jr	$ra
    addiu	$sp,$sp,32
.L0d942fa0:
    ld	$gp,16($sp)
    # Line 222
    sw	$zero,-32640($s8)
    # Line 224
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end RasterPos2SetColor

# Function: RasterPos3SetColor
# Declared: Line 229 (Source lines: 230-238)
# Address: 0x0d942fc0 - 0x0d943024 (Size: 100 bytes, Frame: 32)
.ent RasterPos3SetColor
RasterPos3SetColor:
    # Line 230
    addiu	$sp,$sp,-32
    lui	$at,0x11
    sd	$s8,8($sp)
    # Line 233
    lui	$s8,0x1
    sd	$gp,16($sp)
    # Line 230
    addiu	$at,$at,-8756
    # Line 233
    addu	$s8,$a0,$s8
    # Line 230
    addu	$gp,$t9,$at
    # Line 233
    lw	$t9,-32624($s8)
    # Line 230
    sd	$ra,0($sp)
    # Line 233
    jalr	$t9
    nop
    lw	$at,-32640($s8)
    li	$v0,1
    # Line 238
    ld	$gp,16($sp)
    # Line 233
    beq	$at,$v0,.L0d943010
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 238
    jr	$ra
    addiu	$sp,$sp,32
.L0d943010:
    ld	$gp,16($sp)
    # Line 236
    sw	$zero,-32640($s8)
    # Line 238
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end RasterPos3SetColor

# Function: RasterPos4SetColor
# Declared: Line 243 (Source lines: 244-252)
# Address: 0x0d943030 - 0x0d943094 (Size: 100 bytes, Frame: 32)
.ent RasterPos4SetColor
RasterPos4SetColor:
    # Line 244
    addiu	$sp,$sp,-32
    lui	$at,0x11
    sd	$s8,8($sp)
    # Line 247
    lui	$s8,0x1
    sd	$gp,16($sp)
    # Line 244
    addiu	$at,$at,-8868
    # Line 247
    addu	$s8,$a0,$s8
    # Line 244
    addu	$gp,$t9,$at
    # Line 247
    lw	$t9,-32620($s8)
    # Line 244
    sd	$ra,0($sp)
    # Line 247
    jalr	$t9
    nop
    lw	$at,-32640($s8)
    li	$v0,1
    # Line 252
    ld	$gp,16($sp)
    # Line 247
    beq	$at,$v0,.L0d943080
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    # Line 252
    jr	$ra
    addiu	$sp,$sp,32
.L0d943080:
    ld	$gp,16($sp)
    # Line 250
    sw	$zero,-32640($s8)
    # Line 252
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end RasterPos4SetColor

# Function: ApplySetColor
# Declared: Line 257 (Source lines: 258-267)
# Address: 0x0d9430a0 - 0x0d943100 (Size: 96 bytes, Frame: 32)
.ent ApplySetColor
ApplySetColor:
    # Line 258
    addiu	$sp,$sp,-32
    lui	$at,0x11
    sd	$s3,16($sp)
    # Line 261
    lui	$s3,0x1
    sd	$gp,24($sp)
    # Line 258
    addiu	$at,$at,-8980
    # Line 261
    addu	$s3,$a0,$s3
    # Line 258
    addu	$gp,$t9,$at
    # Line 261
    lw	$t9,-32616($s3)
    # Line 258
    sd	$ra,8($sp)
    # Line 261
    jalr	$t9
    # Line 258
    sd	$a0,0($sp)
    # Line 261
    lbu	$t8,-32632($s3)
    beqz	$t8,.L0d9430f0
    # Line 265
    nop	# was lw $t9, -31940($gp) # &__glCrmDownloadCurrentColor
    ld	$ra,8($sp)
.L0d9430e0:
    ld	$s3,16($sp)
    # Line 267
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9430f0:
    # Line 265
    bal __glCrmDownloadCurrentColor
    ld	$a0,0($sp)
    b	.L0d9430e0
    ld	$ra,8($sp)
.end ApplySetColor

# Function: __glCrmUnlayerColorProcs
# Declared: Line 274 (Source lines: 275-298)
# Address: 0x0d943100 - 0x0d9432b0 (Size: 432 bytes, Frame: 192)
.globl __glCrmUnlayerColorProcs
.ent __glCrmUnlayerColorProcs
__glCrmUnlayerColorProcs:
    # Line 275
    addiu	$sp,$sp,-64
    sd	$s2,0($sp)
    sd	$s1,8($sp)
    sd	$s3,16($sp)
    lui	$a4,0x1
    sd	$s4,24($sp)
    addu	$a4,$a0,$a4
    lw	$a3,-32644($a4)
    sd	$ra,32($sp)
    lui	$v0,0x11
    move	$a7,$a0
    sd	$s5,40($sp)
    addiu	$v0,$v0,-9076
    sd	$s0,48($sp)
    beqz	$a3,.L0d94328c
    addu	$at,$t9,$v0
    # Line 279
    andi	$a5,$a3,0x1
    beqz	$a5,.L0d94316c
    # Line 285
    andi	$t2,$a3,0x2
    # Line 283
    lw	$t1,-32628($a4)
    sw	$t1,12616($a0)
    # Line 284
    lw	$t0,-32624($a4)
    sw	$t0,12620($a0)
    # Line 285
    lw	$a6,-32620($a4)
    sw	$a6,12624($a0)
    lw	$a3,-32644($a4)
    andi	$t2,$a3,0x2
.L0d94316c:
    # Line 296
    move	$a3,$zero
    li	$a6,2
    # Line 285
    beqz	$t2,.L0d94328c
    # Line 296
    li	$a0,42
    # Line 285
    lbu	$t3,3220($a7)
    beqz	$t3,.L0d943190
    nop
    # Line 294
    lw	$t8,-32616($a4)
    sw	$t8,12000($a7)
.L0d943190:
    # Line 296
    la	$a4,__glcrmim_colorDispatchTable
    lw	$a5,6072($a7)
    addiu	$t2,$a4,28
    addiu	$s5,$a4,4
    addiu	$s2,$a4,8
    addiu	$a5,$a5,1416
    addiu	$s3,$a4,20
    addiu	$t1,$a5,28
    addiu	$s4,$a5,4
    addiu	$s0,$a5,8
.L0d9431b8:
    addiu	$a6,$a6,-1
    addu	$a7,$a3,$a4
    addiu	$a0,$a0,-1
    addu	$t0,$a3,$a5
    lw	$a7,0($a7)
    addiu	$a3,$a3,4
    bnez	$a6,.L0d9431b8
    sw	$a7,0($t0)
    addiu	$s1,$a4,16
    addiu	$ra,$a5,16
    addiu	$t9,$a4,24
    addiu	$t8,$a5,24
    addiu	$t3,$a5,20
    li	$a7,0x20
    addiu	$t0,$a4,12
    addiu	$a6,$a5,12
    nop
    nop
.L0d943200:
    addu	$a2,$a3,$a4
    addu	$v0,$a3,$a5
    lw	$a2,0($a2)
    addu	$a1,$a3,$s5
    sw	$a2,0($v0)
    addu	$a2,$a3,$s4
    lw	$a1,0($a1)
    addu	$v1,$a3,$s2
    sw	$a1,0($a2)
    addu	$a1,$a3,$s0
    lw	$v1,0($v1)
    addu	$v0,$a3,$t0
    sw	$v1,0($a1)
    addu	$v1,$a3,$a6
    lw	$v0,0($v0)
    addu	$a2,$a3,$s1
    sw	$v0,0($v1)
    addu	$v0,$a3,$ra
    lw	$a2,0($a2)
    addu	$a1,$a3,$s3
    sw	$a2,0($v0)
    addu	$a2,$a3,$t3
    lw	$a1,0($a1)
    addu	$v1,$a3,$t9
    sw	$a1,0($a2)
    addu	$a1,$a3,$t8
    lw	$v1,0($v1)
    addiu	$a0,$a0,-8
    addu	$v0,$a3,$t2
    sw	$v1,0($a1)
    addu	$v1,$a3,$t1
    lw	$v0,0($v0)
    addu	$a3,$a3,$a7
    bgtz	$a0,.L0d943200
    sw	$v0,0($v1)
.L0d94328c:
    ld	$s0,48($sp)
    ld	$s5,40($sp)
    ld	$s4,24($sp)
    ld	$ra,32($sp)
    ld	$s3,16($sp)
    ld	$s1,8($sp)
    ld	$s2,0($sp)
    # Line 298
    jr	$ra
    addiu	$sp,$sp,64
.end __glCrmUnlayerColorProcs

# Function: __glCrmLayerColorProcs
# Declared: Line 304 (Source lines: 305-336)
# Address: 0x0d9432b0 - 0x0d9435a8 (Size: 760 bytes, Frame: 192)
.globl __glCrmLayerColorProcs
.ent __glCrmLayerColorProcs
__glCrmLayerColorProcs:
    # Line 305
    addiu	$sp,$sp,-64
    sd	$s6,0($sp)
    lui	$s6,0x1
    addu	$s6,$a0,$s6
    lui	$v0,0x11
    lw	$a3,-32644($s6)
    move	$a7,$a0
    addiu	$v0,$v0,-9508
    li	$a6,2
    addu	$at,$t9,$v0
    beqz	$a3,.L0d943498
    # Line 309
    andi	$t8,$a3,0x1
    sd	$s2,56($sp)
    sd	$s1,48($sp)
    sd	$s0,40($sp)
    sd	$ra,32($sp)
    sd	$s3,24($sp)
    sd	$s4,16($sp)
    beqz	$t8,.L0d943340
    sd	$s5,8($sp)
    # Line 316
    la	$v0,sub_0d940000
    # Line 318
    # lw $t9, -32744($gp) # &sub_0d940000
    # Line 314
    la	$a0,sub_0d940000
    # Line 313
    lw	$a1,12616($a7)
    sw	$a1,-32628($s6)
    # Line 315
    lw	$v1,12620($a7)
    # Line 314
    addiu	$a0,$a0,12112
    sw	$a0,12616($a7)
    # Line 315
    sw	$v1,-32624($s6)
    # Line 316
    addiu	$v0,$v0,12224
    sw	$v0,12620($a7)
    # Line 317
    lw	$ra,12624($a7)
    sw	$ra,-32620($s6)
    # Line 318
    addiu	$t9,$t9,12336
    sw	$t9,12624($a7)
    lw	$a3,-32644($s6)
.L0d943340:
    # Line 329
    la	$a5,__glcrmim_colorRGBDownloadDT
    # Line 318
    andi	$a2,$a3,0x2
    # Line 328
    la	$t1,sub_0d940000
    # Line 318
    beqz	$a2,.L0d94346c
    # Line 329
    li	$a0,42
    # Line 318
    lbu	$a3,3220($a7)
    beqz	$a3,.L0d9434a4
    lw	$t0,6072($a7)
    # Line 328
    addiu	$t1,$t1,12448
    addiu	$s4,$a5,4
    addiu	$s5,$a5,28
    # Line 327
    lw	$t2,12000($a7)
    # Line 329
    addiu	$a4,$t0,1416
    move	$a3,$zero
    addiu	$s1,$a4,8
    # Line 327
    sw	$t2,-32616($s6)
    addiu	$t9,$a4,24
    # Line 328
    sw	$t1,12000($a7)
    addiu	$t1,$a4,4
.L0d94338c:
    addiu	$a6,$a6,-1
    # Line 329
    addu	$t3,$a3,$a5
    addiu	$a0,$a0,-1
    addu	$t8,$a3,$a4
    lw	$t3,0($t3)
    addiu	$a3,$a3,4
    bnez	$a6,.L0d94338c
    sw	$t3,0($t8)
    addiu	$s2,$a5,16
    addiu	$s0,$a4,16
    addiu	$ra,$a5,24
    addiu	$t2,$a5,20
    addiu	$a7,$a4,12
    addiu	$t0,$a5,12
    addiu	$s3,$a5,8
    addiu	$t3,$a4,28
    li	$a6,0x20
    addiu	$t8,$a4,20
    nop
    nop
    nop
.L0d9433e0:
    addu	$a2,$a3,$a5
    addu	$v0,$a3,$a4
    lw	$a2,0($a2)
    addu	$a1,$a3,$s4
    sw	$a2,0($v0)
    addu	$a2,$a3,$t1
    lw	$a1,0($a1)
    addu	$v1,$a3,$s3
    sw	$a1,0($a2)
    addu	$a1,$a3,$s1
    lw	$v1,0($v1)
    addu	$v0,$a3,$t0
    sw	$v1,0($a1)
    addu	$v1,$a3,$a7
    lw	$v0,0($v0)
    addu	$a2,$a3,$s2
    sw	$v0,0($v1)
    addu	$v0,$a3,$s0
    lw	$a2,0($a2)
    addu	$a1,$a3,$t2
    sw	$a2,0($v0)
    addu	$a2,$a3,$t8
    lw	$a1,0($a1)
    addu	$v1,$a3,$ra
    sw	$a1,0($a2)
    addu	$a1,$a3,$t9
    lw	$v1,0($v1)
    addiu	$a0,$a0,-8
    addu	$v0,$a3,$s5
    sw	$v1,0($a1)
    addu	$v1,$a3,$t3
    lw	$v0,0($v0)
    addu	$a3,$a3,$a6
    bgtz	$a0,.L0d9433e0
    sw	$v0,0($v1)
.L0d94346c:
    ld	$s2,56($sp)
.L0d943470:
    ld	$s1,48($sp)
    ld	$s0,40($sp)
    ld	$s3,24($sp)
    ld	$s4,16($sp)
    ld	$ra,32($sp)
    ld	$s5,8($sp)
    # Line 335
    sw	$zero,-32640($s6)
    # Line 336
    ld	$s6,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d943498:
    ld	$s6,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9434a4:
    li	$a6,2
    # Line 331
    li	$a0,42
    la	$a4,__glcrmim_colorCIDownloadDT
    addiu	$a5,$t0,1416
    move	$a3,$zero
.L0d9434b8:
    addiu	$a6,$a6,-1
    addu	$a7,$a3,$a4
    addiu	$a0,$a0,-1
    addu	$t0,$a3,$a5
    lw	$a7,0($a7)
    addiu	$a3,$a3,4
    bnez	$a6,.L0d9434b8
    sw	$a7,0($t0)
    addiu	$s3,$a4,16
    addiu	$s2,$a5,16
    addiu	$t3,$a4,24
    addiu	$t1,$a5,24
    addiu	$t2,$a4,20
    addiu	$ra,$a5,12
    addiu	$s5,$a4,8
    addiu	$s4,$a5,8
    addiu	$s0,$a5,4
    addiu	$s1,$a4,4
    li	$t8,0x20
    addiu	$t9,$a5,28
    addiu	$a7,$a4,28
    addiu	$t0,$a4,12
    addiu	$a6,$a5,20
.L0d943514:
    addu	$a2,$a3,$a4
    addu	$v0,$a3,$a5
    lw	$a2,0($a2)
    addu	$a1,$a3,$s1
    sw	$a2,0($v0)
    addu	$a2,$a3,$s0
    lw	$a1,0($a1)
    addu	$v1,$a3,$s5
    sw	$a1,0($a2)
    addu	$a1,$a3,$s4
    lw	$v1,0($v1)
    addu	$v0,$a3,$t0
    sw	$v1,0($a1)
    addu	$v1,$a3,$ra
    lw	$v0,0($v0)
    addu	$a2,$a3,$s3
    sw	$v0,0($v1)
    addu	$v0,$a3,$s2
    lw	$a2,0($a2)
    addu	$a1,$a3,$t2
    sw	$a2,0($v0)
    addu	$a2,$a3,$a6
    lw	$a1,0($a1)
    addu	$v1,$a3,$t3
    sw	$a1,0($a2)
    addu	$a1,$a3,$t1
    lw	$v1,0($v1)
    addiu	$a0,$a0,-8
    addu	$v0,$a3,$a7
    sw	$v1,0($a1)
    addu	$v1,$a3,$t9
    lw	$v0,0($v0)
    addu	$a3,$a3,$t8
    bgtz	$a0,.L0d943514
    sw	$v0,0($v1)
    b	.L0d943470
    ld	$s2,56($sp)
.end __glCrmLayerColorProcs

# Function: __glcrmim_FastColor4ub
# Declared: Line 347 (Source lines: 349-372)
# Address: 0x0d9435b0 - 0x0d943688 (Size: 216 bytes, Frame: 0)
.globl __glcrmim_FastColor4ub
.ent __glcrmim_FastColor4ub
__glcrmim_FastColor4ub:
    # Line 349
    lw	$a6,4112($zero)
    # Line 352
    sll	$t2,$a0,0x2
    addu	$t2,$a6,$t2
    lwc1	$f6,3824($t2)
    # Line 353
    sll	$t1,$a1,0x2
    # Line 355
    sll	$a7,$a3,0x2
    # Line 353
    addu	$t1,$a6,$t1
    # Line 352
    swc1	$f6,432($a6)
    # Line 360
    mtc1	$a3,$f0
    # Line 353
    lwc1	$f5,3824($t1)
    # Line 354
    sll	$t0,$a2,0x2
    # Line 359
    mtc1	$a2,$f1
    # Line 354
    addu	$t0,$a6,$t0
    # Line 353
    swc1	$f5,436($a6)
    # Line 358
    mtc1	$a1,$f2
    # Line 354
    lwc1	$f4,3824($t0)
    # Line 357
    mtc1	$a0,$f3
    # Line 360
    cvt.s.w	$f0,$f0
    # Line 355
    addu	$a7,$a6,$a7
    # Line 359
    cvt.s.w	$f1,$f1
    # Line 354
    swc1	$f4,440($a6)
    # Line 358
    cvt.s.w	$f2,$f2
    # Line 355
    lwc1	$f4,3824($a7)
    # Line 357
    cvt.s.w	$f3,$f3
    # Line 360
    swc1	$f0,204($a6)
    # Line 359
    swc1	$f1,200($a6)
    # Line 358
    swc1	$f2,196($a6)
    # Line 360
    lui	$a5,0x1
    # Line 357
    swc1	$f3,192($a6)
    # Line 360
    addu	$a5,$a6,$a5
    # Line 355
    swc1	$f4,444($a6)
    # Line 360
    lbu	$at,-32632($a5)
    bnez	$at,.L0d943680
    # Line 364
    sll	$t2,$a2,0x8
    sll	$a7,$a1,0x10
    lw	$t1,-32640($a5)
    # Line 370
    li	$at,2
    # Line 364
    sll	$t0,$a0,0x18
    or	$t0,$t0,$a3
    or	$a7,$a7,$t2
    lw	$t3,-32636($a5)
    beqz	$t1,.L0d943664
    or	$a7,$a7,$t0
    beq	$a7,$t3,.L0d943678
    nop
.L0d943664:
    # Line 367
    lw	$t9,32184($a6)
    # Line 366
    lw	$t8,32188($a6)
    # Line 367
    sw	$a7,8400($t9)
    sw	$a7,8400($t8)
    # Line 368
    sw	$a7,-32636($a5)
.L0d943678:
    # Line 372
    jr	$ra
    # Line 370
    sw	$at,-32640($a5)
.L0d943680:
    # Line 372
    jr	$ra
    nop
.end __glcrmim_FastColor4ub

# Function: __glcrmim_FastColor3ub
# Declared: Line 374 (Source lines: 375-377)
# Address: 0x0d943690 - 0x0d9436c4 (Size: 52 bytes, Frame: 16)
.globl __glcrmim_FastColor3ub
.ent __glcrmim_FastColor3ub
__glcrmim_FastColor3ub:
    # Line 375
    lui	$at,0x11
    addiu	$sp,$sp,-16
    addiu	$at,$at,-10500
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 376
    # lw $t9, -31884($gp) # &__glcrmim_FastColor4ub
    # Line 375
    sd	$ra,0($sp)
    # Line 376
    bal __glcrmim_FastColor4ub
    li	$a3,255
    ld	$ra,0($sp)
    # Line 377
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_FastColor3ub

# Function: __glcrmim_FastColor3ubv
# Declared: Line 379 (Source lines: 380-382)
# Address: 0x0d9436d0 - 0x0d943714 (Size: 68 bytes, Frame: 16)
.globl __glcrmim_FastColor3ubv
.ent __glcrmim_FastColor3ubv
__glcrmim_FastColor3ubv:
    # Line 380
    move	$a1,$a0
    lui	$a2,0x11
    # Line 381
    lbu	$a0,0($a0)
    # Line 380
    addiu	$sp,$sp,-16
    addiu	$a2,$a2,-10564
    sd	$gp,8($sp)
    addu	$gp,$t9,$a2
    # Line 381
    # lw $t9, -31884($gp) # &__glcrmim_FastColor4ub
    # Line 380
    sd	$ra,0($sp)
    # Line 381
    lbu	$a2,2($a1)
    li	$a3,255
    bal __glcrmim_FastColor4ub
    lbu	$a1,1($a1)
    ld	$ra,0($sp)
    # Line 382
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_FastColor3ubv

# Function: __glcrmim_FastColor4ubv
# Declared: Line 384 (Source lines: 385-387)
# Address: 0x0d943720 - 0x0d943764 (Size: 68 bytes, Frame: 16)
.globl __glcrmim_FastColor4ubv
.ent __glcrmim_FastColor4ubv
__glcrmim_FastColor4ubv:
    # Line 385
    move	$a1,$a0
    # Line 386
    lbu	$a0,0($a0)
    # Line 385
    lui	$a2,0x11
    # Line 386
    lbu	$a3,3($a1)
    # Line 385
    addiu	$sp,$sp,-16
    addiu	$a2,$a2,-10644
    sd	$gp,8($sp)
    addu	$gp,$t9,$a2
    # Line 386
    # lw $t9, -31884($gp) # &__glcrmim_FastColor4ub
    # Line 385
    sd	$ra,0($sp)
    # Line 386
    lbu	$a2,2($a1)
    bal __glcrmim_FastColor4ub
    lbu	$a1,1($a1)
    ld	$ra,0($sp)
    # Line 387
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glcrmim_FastColor4ubv

# Function: __glCrmCalcAlphaColor
# Declared: Line 397 (Source lines: 398-404)
# Address: 0x0d943770 - 0x0d943790 (Size: 32 bytes, Frame: 0)
.globl __glCrmCalcAlphaColor
.ent __glCrmCalcAlphaColor
__glCrmCalcAlphaColor:
    # Line 398
    beqz	$a1,.L0d943784
    nop
    # Line 402
    lwc1	$f0,28176($a0)
    # Line 404
    jr	$ra
    # Line 402
    swc1	$f0,172($a2)
.L0d943784:
    # Line 400
    lwc1	$f1,28136($a0)
    # Line 404
    jr	$ra
    # Line 400
    swc1	$f1,156($a2)
.end __glCrmCalcAlphaColor

