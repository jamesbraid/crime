# Source: ../soft/so_capi.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_capi.c
# Total Functions: 38

.text

# Function: __glim_Color3ub
# Declared: Line 21 (Source lines: 22-30)
# Address: 0x0d9c8690 - 0x0d9c8700 (Size: 112 bytes, Frame: 16)
.globl __glim_Color3ub
.ent __glim_Color3ub
__glim_Color3ub:
    # Line 22
    addiu	$sp,$sp,-16
    # Line 23
    lw	$at,4112($zero)
    # Line 22
    sd	$ra,0($sp)
    # Line 25
    sll	$a3,$a0,0x2
    sd	$gp,8($sp)
    addu	$a3,$at,$a3
    lwc1	$f3,3824($a3)
    # Line 28
    lwc1	$f1,3544($at)
    # Line 26
    sll	$v1,$a1,0x2
    # Line 22
    lui	$a0,0x9
    # Line 26
    addu	$v1,$at,$v1
    # Line 25
    swc1	$f3,432($at)
    # Line 22
    addiu	$a0,$a0,-30980
    # Line 26
    lwc1	$f2,3824($v1)
    # Line 27
    sll	$v0,$a2,0x2
    # Line 22
    addu	$gp,$t9,$a0
    # Line 29
    lw	$t9,12000($at)
    # Line 27
    addu	$v0,$at,$v0
    # Line 26
    swc1	$f2,436($at)
    # Line 27
    lwc1	$f0,3824($v0)
    # Line 28
    swc1	$f1,444($at)
    # Line 29
    move	$a0,$at
    jalr	$t9
    # Line 27
    swc1	$f0,440($at)
    ld	$ra,0($sp)
    # Line 30
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3ub

# Function: __glim_Color3ubv
# Declared: Line 55 (Source lines: 56-64)
# Address: 0x0d9c8700 - 0x0d9c877c (Size: 124 bytes, Frame: 16)
.globl __glim_Color3ubv
.ent __glim_Color3ubv
__glim_Color3ubv:
    # Line 59
    lbu	$a2,0($a0)
    # Line 57
    lw	$at,4112($zero)
    # Line 59
    sll	$a2,$a2,0x2
    addu	$a2,$at,$a2
    lwc1	$f3,3824($a2)
    swc1	$f3,432($at)
    # Line 60
    lbu	$a1,1($a0)
    sll	$a1,$a1,0x2
    addu	$a1,$at,$a1
    # Line 56
    addiu	$sp,$sp,-16
    # Line 60
    lwc1	$f2,3824($a1)
    # Line 56
    sd	$ra,0($sp)
    # Line 60
    swc1	$f2,436($at)
    # Line 61
    lbu	$v0,2($a0)
    sd	$gp,8($sp)
    # Line 56
    lui	$v1,0x9
    # Line 62
    lwc1	$f1,3544($at)
    # Line 56
    addiu	$v1,$v1,-31092
    # Line 61
    sll	$v0,$v0,0x2
    # Line 56
    addu	$gp,$t9,$v1
    # Line 63
    lw	$t9,12000($at)
    # Line 61
    addu	$v0,$at,$v0
    lwc1	$f0,3824($v0)
    # Line 62
    swc1	$f1,444($at)
    # Line 63
    move	$a0,$at
    jalr	$t9
    # Line 61
    swc1	$f0,440($at)
    ld	$ra,0($sp)
    # Line 64
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3ubv

# Function: __glim_Color3b
# Declared: Line 94 (Source lines: 95-103)
# Address: 0x0d9c8780 - 0x0d9c880c (Size: 140 bytes, Frame: 16)
.globl __glim_Color3b
.ent __glim_Color3b
__glim_Color3b:
    # Line 98
    sll	$v1,$a0,0x1
    # Line 95
    addiu	$sp,$sp,-16
    # Line 100
    sll	$a2,$a2,0x1
    # Line 99
    sll	$a1,$a1,0x1
    # Line 100
    addiu	$a2,$a2,1
    # Line 99
    addiu	$a1,$a1,1
    # Line 100
    mtc1	$a2,$f3
    # Line 96
    lw	$at,4112($zero)
    # Line 98
    addiu	$v1,$v1,1
    # Line 99
    mtc1	$a1,$f2
    # Line 95
    sd	$ra,0($sp)
    # Line 98
    mtc1	$v1,$f0
    # Line 101
    lwc1	$f4,3544($at)
    # Line 100
    cvt.s.w	$f3,$f3
    # Line 98
    lwc1	$f1,3552($at)
    # Line 99
    cvt.s.w	$f2,$f2
    sd	$gp,8($sp)
    # Line 95
    lui	$v0,0x9
    # Line 98
    cvt.s.w	$f0,$f0
    # Line 101
    swc1	$f4,444($at)
    # Line 95
    addiu	$v0,$v0,-31220
    addu	$gp,$t9,$v0
    # Line 102
    lw	$t9,12000($at)
    # Line 100
    mul.s	$f3,$f3,$f1
    # Line 99
    mul.s	$f2,$f2,$f1
    # Line 100
    swc1	$f3,440($at)
    # Line 98
    mul.s	$f0,$f0,$f1
    # Line 99
    swc1	$f2,436($at)
    # Line 102
    move	$a0,$at
    jalr	$t9
    # Line 98
    swc1	$f0,432($at)
    ld	$ra,0($sp)
    # Line 103
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3b

# Function: __glim_Color3bv
# Declared: Line 105 (Source lines: 106-114)
# Address: 0x0d9c8810 - 0x0d9c88a8 (Size: 152 bytes, Frame: 16)
.globl __glim_Color3bv
.ent __glim_Color3bv
__glim_Color3bv:
    # Line 109
    lb	$a2,0($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f3
    # Line 107
    lw	$at,4112($zero)
    # Line 109
    cvt.s.w	$f3,$f3
    lwc1	$f1,3552($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,432($at)
    # Line 110
    lb	$a1,1($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f2
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,436($at)
    # Line 111
    lb	$v1,2($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    # Line 106
    addiu	$sp,$sp,-16
    lui	$v0,0x9
    sd	$gp,8($sp)
    addiu	$v0,$v0,-31364
    # Line 111
    cvt.s.w	$f0,$f0
    # Line 106
    addu	$gp,$t9,$v0
    # Line 113
    lw	$t9,12000($at)
    # Line 112
    lwc1	$f2,3544($at)
    # Line 106
    sd	$ra,0($sp)
    # Line 112
    swc1	$f2,444($at)
    # Line 111
    mul.s	$f0,$f0,$f1
    # Line 113
    move	$a0,$at
    jalr	$t9
    # Line 111
    swc1	$f0,440($at)
    ld	$ra,0($sp)
    # Line 114
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3bv

# Function: __glim_Color3d
# Declared: Line 116 (Source lines: 117-125)
# Address: 0x0d9c88b0 - 0x0d9c8908 (Size: 88 bytes, Frame: 16)
.globl __glim_Color3d
.ent __glim_Color3d
__glim_Color3d:
    # Line 117
    addiu	$sp,$sp,-16
    # Line 118
    lw	$at,4112($zero)
    # Line 122
    cvt.s.d	$f3,$f14
    # Line 117
    sd	$ra,0($sp)
    # Line 121
    cvt.s.d	$f2,$f13
    # Line 122
    swc1	$f3,440($at)
    # Line 121
    swc1	$f2,436($at)
    # Line 117
    lui	$v0,0x9
    sd	$gp,8($sp)
    addiu	$v0,$v0,-31524
    addu	$gp,$t9,$v0
    # Line 124
    lw	$t9,12000($at)
    # Line 120
    cvt.s.d	$f1,$f12
    # Line 123
    lwc1	$f0,3544($at)
    # Line 120
    swc1	$f1,432($at)
    # Line 124
    move	$a0,$at
    jalr	$t9
    # Line 123
    swc1	$f0,444($at)
    ld	$ra,0($sp)
    # Line 125
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3d

# Function: __glim_Color3dv
# Declared: Line 127 (Source lines: 128-136)
# Address: 0x0d9c8910 - 0x0d9c8974 (Size: 100 bytes, Frame: 16)
.globl __glim_Color3dv
.ent __glim_Color3dv
__glim_Color3dv:
    # Line 131
    ldc1	$f3,0($a0)
    # Line 129
    lw	$at,4112($zero)
    # Line 131
    cvt.s.d	$f3,$f3
    swc1	$f3,432($at)
    # Line 132
    ldc1	$f2,8($a0)
    # Line 128
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # Line 134
    lwc1	$f1,3544($at)
    # Line 132
    cvt.s.d	$f2,$f2
    # Line 128
    lui	$v0,0x9
    # Line 132
    swc1	$f2,436($at)
    # Line 128
    addiu	$v0,$v0,-31620
    # Line 133
    ldc1	$f0,16($a0)
    # Line 128
    addu	$gp,$t9,$v0
    # Line 135
    lw	$t9,12000($at)
    # Line 128
    sd	$ra,0($sp)
    # Line 134
    swc1	$f1,444($at)
    # Line 133
    cvt.s.d	$f0,$f0
    # Line 135
    move	$a0,$at
    jalr	$t9
    # Line 133
    swc1	$f0,440($at)
    ld	$ra,0($sp)
    # Line 136
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3dv

# Function: __glim_Color3i
# Declared: Line 162 (Source lines: 163-171)
# Address: 0x0d9c8980 - 0x0d9c8a08 (Size: 136 bytes, Frame: 16)
.globl __glim_Color3i
.ent __glim_Color3i
__glim_Color3i:
    # Line 163
    addiu	$sp,$sp,-16
    # Line 168
    mtc1	$a2,$f3
    # Line 163
    lui	$v0,0x9
    # Line 167
    mtc1	$a1,$f2
    # Line 163
    addiu	$v0,$v0,-31732
    # Line 166
    mtc1	$a0,$f5
    sd	$gp,8($sp)
    # Line 163
    addu	$gp,$t9,$v0
    # Line 168
    cvt.s.w	$f3,$f3
    # Line 166
    lwc1	$f6,_lit_40000000
    # Line 167
    cvt.s.w	$f2,$f2
    # Line 166
    cvt.s.w	$f5,$f5
    lwc1	$f1,_lit_3f800000
    # Line 164
    lw	$at,4112($zero)
    # Line 168
    madd.s	$f3,$f1,$f3,$f6
    # Line 167
    madd.s	$f2,$f1,$f2,$f6
    # Line 169
    lwc1	$f4,3544($at)
    # Line 166
    madd.s	$f1,$f1,$f5,$f6
    lwc1	$f0,3568($at)
    # Line 163
    sd	$ra,0($sp)
    # Line 169
    swc1	$f4,444($at)
    # Line 170
    lw	$t9,12000($at)
    # Line 168
    mul.s	$f3,$f0,$f3
    # Line 167
    mul.s	$f2,$f0,$f2
    # Line 168
    swc1	$f3,440($at)
    # Line 166
    mul.s	$f0,$f0,$f1
    # Line 167
    swc1	$f2,436($at)
    # Line 170
    move	$a0,$at
    jalr	$t9
    # Line 166
    swc1	$f0,432($at)
    ld	$ra,0($sp)
    # Line 171
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3i

# Function: __glim_Color3iv
# Declared: Line 173 (Source lines: 174-182)
# Address: 0x0d9c8a10 - 0x0d9c8aa4 (Size: 148 bytes, Frame: 16)
.globl __glim_Color3iv
.ent __glim_Color3iv
__glim_Color3iv:
    # Line 177
    lw	$a2,0($a0)
    mtc1	$a2,$f5
    # Line 174
    lui	$a1,0x9
    addiu	$sp,$sp,-16
    addiu	$a1,$a1,-31876
    sd	$gp,8($sp)
    addu	$gp,$t9,$a1
    # Line 177
    cvt.s.w	$f5,$f5
    lwc1	$f3,_lit_40000000
    lwc1	$f1,_lit_3f800000
    madd.s	$f5,$f1,$f5,$f3
    # Line 175
    lw	$at,4112($zero)
    # Line 177
    lwc1	$f0,3568($at)
    mul.s	$f5,$f0,$f5
    swc1	$f5,432($at)
    # Line 178
    lw	$v1,4($a0)
    mtc1	$v1,$f4
    cvt.s.w	$f4,$f4
    madd.s	$f4,$f1,$f4,$f3
    mul.s	$f4,$f0,$f4
    swc1	$f4,436($at)
    # Line 179
    lw	$v0,8($a0)
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    madd.s	$f1,$f1,$f2,$f3
    # Line 181
    lw	$t9,12000($at)
    # Line 180
    lwc1	$f2,3544($at)
    # Line 174
    sd	$ra,0($sp)
    # Line 180
    swc1	$f2,444($at)
    # Line 179
    mul.s	$f0,$f0,$f1
    # Line 181
    move	$a0,$at
    jalr	$t9
    # Line 179
    swc1	$f0,440($at)
    ld	$ra,0($sp)
    # Line 182
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3iv

# Function: __glim_Color3ui
# Declared: Line 184 (Source lines: 185-193)
# Address: 0x0d9c8ab0 - 0x0d9c8b3c (Size: 140 bytes, Frame: 16)
.globl __glim_Color3ui
.ent __glim_Color3ui
__glim_Color3ui:
    # Line 190
    dsll32	$a2,$a2,0x0
    # Line 189
    dsll32	$a1,$a1,0x0
    # Line 188
    dsll32	$v1,$a0,0x0
    dsrl32	$v1,$v1,0x0
    # Line 189
    dsrl32	$a1,$a1,0x0
    # Line 190
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f3
    # Line 185
    addiu	$sp,$sp,-16
    # Line 186
    lw	$at,4112($zero)
    # Line 189
    dmtc1	$a1,$f2
    # Line 185
    sd	$ra,0($sp)
    # Line 188
    dmtc1	$v1,$f0
    # Line 191
    lwc1	$f4,3544($at)
    # Line 190
    cvt.s.l	$f3,$f3
    # Line 188
    lwc1	$f1,3568($at)
    # Line 189
    cvt.s.l	$f2,$f2
    sd	$gp,8($sp)
    # Line 185
    lui	$v0,0x9
    # Line 188
    cvt.s.l	$f0,$f0
    # Line 191
    swc1	$f4,444($at)
    # Line 185
    addiu	$v0,$v0,-32036
    addu	$gp,$t9,$v0
    # Line 192
    lw	$t9,12000($at)
    # Line 190
    mul.s	$f3,$f3,$f1
    # Line 189
    mul.s	$f2,$f2,$f1
    # Line 190
    swc1	$f3,440($at)
    # Line 188
    mul.s	$f0,$f0,$f1
    # Line 189
    swc1	$f2,436($at)
    # Line 192
    move	$a0,$at
    jalr	$t9
    # Line 188
    swc1	$f0,432($at)
    ld	$ra,0($sp)
    # Line 193
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3ui

# Function: __glim_Color3uiv
# Declared: Line 195 (Source lines: 196-204)
# Address: 0x0d9c8b40 - 0x0d9c8bd8 (Size: 152 bytes, Frame: 16)
.globl __glim_Color3uiv
.ent __glim_Color3uiv
__glim_Color3uiv:
    # Line 199
    lw	$a2,0($a0)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f3
    # Line 197
    lw	$at,4112($zero)
    # Line 199
    cvt.s.l	$f3,$f3
    lwc1	$f1,3568($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,432($at)
    # Line 200
    lw	$a1,4($a0)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f2
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,436($at)
    # Line 201
    lw	$v1,8($a0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    # Line 196
    addiu	$sp,$sp,-16
    lui	$v0,0x9
    sd	$gp,8($sp)
    addiu	$v0,$v0,-32180
    # Line 201
    cvt.s.l	$f0,$f0
    # Line 196
    addu	$gp,$t9,$v0
    # Line 203
    lw	$t9,12000($at)
    # Line 202
    lwc1	$f2,3544($at)
    # Line 196
    sd	$ra,0($sp)
    # Line 202
    swc1	$f2,444($at)
    # Line 201
    mul.s	$f0,$f0,$f1
    # Line 203
    move	$a0,$at
    jalr	$t9
    # Line 201
    swc1	$f0,440($at)
    ld	$ra,0($sp)
    # Line 204
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3uiv

# Function: __glim_Color3s
# Declared: Line 206 (Source lines: 207-215)
# Address: 0x0d9c8be0 - 0x0d9c8c6c (Size: 140 bytes, Frame: 16)
.globl __glim_Color3s
.ent __glim_Color3s
__glim_Color3s:
    # Line 210
    sll	$v1,$a0,0x1
    # Line 207
    addiu	$sp,$sp,-16
    # Line 212
    sll	$a2,$a2,0x1
    # Line 211
    sll	$a1,$a1,0x1
    # Line 212
    addiu	$a2,$a2,1
    # Line 211
    addiu	$a1,$a1,1
    # Line 212
    mtc1	$a2,$f3
    # Line 208
    lw	$at,4112($zero)
    # Line 210
    addiu	$v1,$v1,1
    # Line 211
    mtc1	$a1,$f2
    # Line 207
    sd	$ra,0($sp)
    # Line 210
    mtc1	$v1,$f0
    # Line 213
    lwc1	$f4,3544($at)
    # Line 212
    cvt.s.w	$f3,$f3
    # Line 210
    lwc1	$f1,3560($at)
    # Line 211
    cvt.s.w	$f2,$f2
    sd	$gp,8($sp)
    # Line 207
    lui	$v0,0x9
    # Line 210
    cvt.s.w	$f0,$f0
    # Line 213
    swc1	$f4,444($at)
    # Line 207
    addiu	$v0,$v0,-32340
    addu	$gp,$t9,$v0
    # Line 214
    lw	$t9,12000($at)
    # Line 212
    mul.s	$f3,$f3,$f1
    # Line 211
    mul.s	$f2,$f2,$f1
    # Line 212
    swc1	$f3,440($at)
    # Line 210
    mul.s	$f0,$f0,$f1
    # Line 211
    swc1	$f2,436($at)
    # Line 214
    move	$a0,$at
    jalr	$t9
    # Line 210
    swc1	$f0,432($at)
    ld	$ra,0($sp)
    # Line 215
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3s

# Function: __glim_Color3sv
# Declared: Line 217 (Source lines: 218-226)
# Address: 0x0d9c8c70 - 0x0d9c8d08 (Size: 152 bytes, Frame: 16)
.globl __glim_Color3sv
.ent __glim_Color3sv
__glim_Color3sv:
    # Line 221
    lh	$a2,0($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f3
    # Line 219
    lw	$at,4112($zero)
    # Line 221
    cvt.s.w	$f3,$f3
    lwc1	$f1,3560($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,432($at)
    # Line 222
    lh	$a1,2($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f2
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,436($at)
    # Line 223
    lh	$v1,4($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    # Line 218
    addiu	$sp,$sp,-16
    lui	$v0,0x9
    sd	$gp,8($sp)
    addiu	$v0,$v0,-32484
    # Line 223
    cvt.s.w	$f0,$f0
    # Line 218
    addu	$gp,$t9,$v0
    # Line 225
    lw	$t9,12000($at)
    # Line 224
    lwc1	$f2,3544($at)
    # Line 218
    sd	$ra,0($sp)
    # Line 224
    swc1	$f2,444($at)
    # Line 223
    mul.s	$f0,$f0,$f1
    # Line 225
    move	$a0,$at
    jalr	$t9
    # Line 223
    swc1	$f0,440($at)
    ld	$ra,0($sp)
    # Line 226
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3sv

# Function: __glim_Color3us
# Declared: Line 228 (Source lines: 229-237)
# Address: 0x0d9c8d10 - 0x0d9c8d84 (Size: 116 bytes, Frame: 16)
.globl __glim_Color3us
.ent __glim_Color3us
__glim_Color3us:
    # Line 234
    mtc1	$a2,$f3
    # Line 229
    addiu	$sp,$sp,-16
    # Line 230
    lw	$at,4112($zero)
    # Line 233
    mtc1	$a1,$f2
    # Line 229
    sd	$ra,0($sp)
    # Line 232
    mtc1	$a0,$f0
    # Line 235
    lwc1	$f4,3544($at)
    # Line 234
    cvt.s.w	$f3,$f3
    # Line 232
    lwc1	$f1,3560($at)
    # Line 233
    cvt.s.w	$f2,$f2
    sd	$gp,8($sp)
    # Line 229
    lui	$v0,0x9
    # Line 232
    cvt.s.w	$f0,$f0
    # Line 235
    swc1	$f4,444($at)
    # Line 229
    addiu	$v0,$v0,-32644
    addu	$gp,$t9,$v0
    # Line 236
    lw	$t9,12000($at)
    # Line 234
    mul.s	$f3,$f3,$f1
    # Line 233
    mul.s	$f2,$f2,$f1
    # Line 234
    swc1	$f3,440($at)
    # Line 232
    mul.s	$f0,$f0,$f1
    # Line 233
    swc1	$f2,436($at)
    # Line 236
    move	$a0,$at
    jalr	$t9
    # Line 232
    swc1	$f0,432($at)
    ld	$ra,0($sp)
    # Line 237
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3us

# Function: __glim_Color3usv
# Declared: Line 239 (Source lines: 240-248)
# Address: 0x0d9c8d90 - 0x0d9c8e10 (Size: 128 bytes, Frame: 16)
.globl __glim_Color3usv
.ent __glim_Color3usv
__glim_Color3usv:
    # Line 243
    lhu	$a2,0($a0)
    mtc1	$a2,$f3
    # Line 241
    lw	$at,4112($zero)
    # Line 243
    cvt.s.w	$f3,$f3
    lwc1	$f1,3560($at)
    mul.s	$f3,$f3,$f1
    swc1	$f3,432($at)
    # Line 244
    lhu	$a1,2($a0)
    mtc1	$a1,$f2
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,436($at)
    # Line 245
    lhu	$v1,4($a0)
    mtc1	$v1,$f0
    # Line 240
    addiu	$sp,$sp,-16
    lui	$v0,0x8
    sd	$gp,8($sp)
    addiu	$v0,$v0,32764
    # Line 245
    cvt.s.w	$f0,$f0
    # Line 240
    addu	$gp,$t9,$v0
    # Line 247
    lw	$t9,12000($at)
    # Line 246
    lwc1	$f2,3544($at)
    # Line 240
    sd	$ra,0($sp)
    # Line 246
    swc1	$f2,444($at)
    # Line 245
    mul.s	$f0,$f0,$f1
    # Line 247
    move	$a0,$at
    jalr	$t9
    # Line 245
    swc1	$f0,440($at)
    ld	$ra,0($sp)
    # Line 248
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color3usv

# Function: __glim_Color4ub
# Declared: Line 252 (Source lines: 253-261)
# Address: 0x0d9c8e10 - 0x0d9c8e88 (Size: 120 bytes, Frame: 16)
.globl __glim_Color4ub
.ent __glim_Color4ub
__glim_Color4ub:
    # Line 254
    lw	$at,4112($zero)
    # Line 256
    sll	$a4,$a0,0x2
    addu	$a4,$at,$a4
    lwc1	$f3,3824($a4)
    # Line 257
    sll	$a1,$a1,0x2
    addu	$a1,$at,$a1
    # Line 256
    swc1	$f3,432($at)
    # Line 253
    addiu	$sp,$sp,-16
    # Line 257
    lwc1	$f2,3824($a1)
    sd	$gp,8($sp)
    # Line 258
    sll	$a0,$a2,0x2
    # Line 253
    lui	$v1,0x8
    # Line 258
    addu	$a0,$at,$a0
    # Line 257
    swc1	$f2,436($at)
    # Line 253
    addiu	$v1,$v1,32636
    # Line 258
    lwc1	$f1,3824($a0)
    # Line 259
    sll	$v0,$a3,0x2
    # Line 253
    addu	$gp,$t9,$v1
    # Line 260
    lw	$t9,12000($at)
    # Line 259
    addu	$v0,$at,$v0
    # Line 258
    swc1	$f1,440($at)
    # Line 259
    lwc1	$f0,3824($v0)
    # Line 253
    sd	$ra,0($sp)
    # Line 260
    move	$a0,$at
    jalr	$t9
    # Line 259
    swc1	$f0,444($at)
    ld	$ra,0($sp)
    # Line 261
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4ub

# Function: __glim_Color4ubv
# Declared: Line 263 (Source lines: 264-272)
# Address: 0x0d9c8e90 - 0x0d9c8f18 (Size: 136 bytes, Frame: 16)
.globl __glim_Color4ubv
.ent __glim_Color4ubv
__glim_Color4ubv:
    # Line 267
    lbu	$a3,0($a0)
    # Line 265
    lw	$at,4112($zero)
    # Line 267
    sll	$a3,$a3,0x2
    addu	$a3,$at,$a3
    lwc1	$f3,3824($a3)
    swc1	$f3,432($at)
    # Line 268
    lbu	$a2,1($a0)
    sll	$a2,$a2,0x2
    addu	$a2,$at,$a2
    lwc1	$f2,3824($a2)
    swc1	$f2,436($at)
    # Line 269
    lbu	$a1,2($a0)
    sll	$a1,$a1,0x2
    addu	$a1,$at,$a1
    lwc1	$f1,3824($a1)
    swc1	$f1,440($at)
    # Line 270
    lbu	$v0,3($a0)
    # Line 264
    addiu	$sp,$sp,-16
    lui	$v1,0x8
    sd	$gp,8($sp)
    addiu	$v1,$v1,32508
    # Line 270
    sll	$v0,$v0,0x2
    # Line 264
    addu	$gp,$t9,$v1
    # Line 271
    lw	$t9,12000($at)
    # Line 270
    addu	$v0,$at,$v0
    lwc1	$f0,3824($v0)
    # Line 264
    sd	$ra,0($sp)
    # Line 271
    move	$a0,$at
    jalr	$t9
    # Line 270
    swc1	$f0,444($at)
    ld	$ra,0($sp)
    # Line 272
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4ubv

# Function: __glim_Color4b
# Declared: Line 274 (Source lines: 275-283)
# Address: 0x0d9c8f20 - 0x0d9c8fbc (Size: 156 bytes, Frame: 16)
.globl __glim_Color4b
.ent __glim_Color4b
__glim_Color4b:
    # Line 278
    sll	$v1,$a0,0x1
    # Line 279
    sll	$a1,$a1,0x1
    # Line 281
    sll	$a3,$a3,0x1
    # Line 280
    sll	$a2,$a2,0x1
    # Line 281
    addiu	$a3,$a3,1
    # Line 280
    addiu	$a2,$a2,1
    # Line 281
    mtc1	$a3,$f4
    # Line 279
    addiu	$a1,$a1,1
    # Line 280
    mtc1	$a2,$f3
    # Line 276
    lw	$at,4112($zero)
    # Line 278
    addiu	$v1,$v1,1
    # Line 279
    mtc1	$a1,$f2
    # Line 278
    mtc1	$v1,$f0
    # Line 281
    cvt.s.w	$f4,$f4
    # Line 275
    addiu	$sp,$sp,-16
    # Line 278
    lwc1	$f1,3552($at)
    # Line 280
    cvt.s.w	$f3,$f3
    # Line 275
    sd	$ra,0($sp)
    lui	$v0,0x8
    # Line 279
    cvt.s.w	$f2,$f2
    sd	$gp,8($sp)
    # Line 275
    addiu	$v0,$v0,32364
    # Line 278
    cvt.s.w	$f0,$f0
    # Line 275
    addu	$gp,$t9,$v0
    # Line 282
    lw	$t9,12000($at)
    # Line 281
    mul.s	$f4,$f4,$f1
    # Line 280
    mul.s	$f3,$f3,$f1
    # Line 281
    swc1	$f4,444($at)
    # Line 279
    mul.s	$f2,$f2,$f1
    # Line 280
    swc1	$f3,440($at)
    # Line 278
    mul.s	$f0,$f0,$f1
    # Line 279
    swc1	$f2,436($at)
    # Line 282
    move	$a0,$at
    jalr	$t9
    # Line 278
    swc1	$f0,432($at)
    ld	$ra,0($sp)
    # Line 283
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4b

# Function: __glim_Color4bv
# Declared: Line 285 (Source lines: 286-294)
# Address: 0x0d9c8fc0 - 0x0d9c906c (Size: 172 bytes, Frame: 16)
.globl __glim_Color4bv
.ent __glim_Color4bv
__glim_Color4bv:
    # Line 289
    lb	$a3,0($a0)
    sll	$a3,$a3,0x1
    addiu	$a3,$a3,1
    mtc1	$a3,$f4
    # Line 287
    lw	$at,4112($zero)
    # Line 289
    cvt.s.w	$f4,$f4
    lwc1	$f1,3552($at)
    mul.s	$f4,$f4,$f1
    swc1	$f4,432($at)
    # Line 290
    lb	$a2,1($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f3
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,436($at)
    # Line 291
    lb	$a1,2($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f2
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,440($at)
    # Line 292
    lb	$v1,3($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    # Line 286
    addiu	$sp,$sp,-16
    lui	$v0,0x8
    # Line 292
    cvt.s.w	$f0,$f0
    sd	$gp,8($sp)
    # Line 286
    addiu	$v0,$v0,32204
    addu	$gp,$t9,$v0
    # Line 293
    lw	$t9,12000($at)
    # Line 286
    sd	$ra,0($sp)
    # Line 292
    mul.s	$f0,$f0,$f1
    # Line 293
    move	$a0,$at
    jalr	$t9
    # Line 292
    swc1	$f0,444($at)
    ld	$ra,0($sp)
    # Line 294
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4bv

# Function: __glim_Color4d
# Declared: Line 296 (Source lines: 297-305)
# Address: 0x0d9c9070 - 0x0d9c90c8 (Size: 88 bytes, Frame: 16)
.globl __glim_Color4d
.ent __glim_Color4d
__glim_Color4d:
    # Line 297
    addiu	$sp,$sp,-16
    # Line 298
    lw	$at,4112($zero)
    # Line 303
    cvt.s.d	$f3,$f15
    # Line 297
    sd	$ra,0($sp)
    # Line 303
    swc1	$f3,444($at)
    # Line 297
    lui	$v0,0x8
    sd	$gp,8($sp)
    addiu	$v0,$v0,32028
    # Line 302
    cvt.s.d	$f2,$f14
    # Line 297
    addu	$gp,$t9,$v0
    # Line 304
    lw	$t9,12000($at)
    # Line 301
    cvt.s.d	$f1,$f13
    # Line 302
    swc1	$f2,440($at)
    # Line 300
    cvt.s.d	$f0,$f12
    # Line 301
    swc1	$f1,436($at)
    # Line 304
    move	$a0,$at
    jalr	$t9
    # Line 300
    swc1	$f0,432($at)
    ld	$ra,0($sp)
    # Line 305
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4d

# Function: __glim_Color4dv
# Declared: Line 307 (Source lines: 308-316)
# Address: 0x0d9c90d0 - 0x0d9c9138 (Size: 104 bytes, Frame: 16)
.globl __glim_Color4dv
.ent __glim_Color4dv
__glim_Color4dv:
    # Line 311
    ldc1	$f3,0($a0)
    # Line 309
    lw	$at,4112($zero)
    # Line 311
    cvt.s.d	$f3,$f3
    swc1	$f3,432($at)
    # Line 312
    ldc1	$f2,8($a0)
    cvt.s.d	$f2,$f2
    swc1	$f2,436($at)
    # Line 313
    ldc1	$f1,16($a0)
    # Line 308
    addiu	$sp,$sp,-16
    sd	$gp,8($sp)
    # Line 313
    cvt.s.d	$f1,$f1
    # Line 308
    lui	$v0,0x8
    # Line 313
    swc1	$f1,440($at)
    # Line 308
    addiu	$v0,$v0,31932
    # Line 314
    ldc1	$f0,24($a0)
    # Line 308
    addu	$gp,$t9,$v0
    # Line 315
    lw	$t9,12000($at)
    # Line 308
    sd	$ra,0($sp)
    # Line 314
    cvt.s.d	$f0,$f0
    # Line 315
    move	$a0,$at
    jalr	$t9
    # Line 314
    swc1	$f0,444($at)
    ld	$ra,0($sp)
    # Line 316
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4dv

# Function: __glim_Color4i
# Declared: Line 342 (Source lines: 343-351)
# Address: 0x0d9c9140 - 0x0d9c91d4 (Size: 148 bytes, Frame: 16)
.globl __glim_Color4i
.ent __glim_Color4i
__glim_Color4i:
    # Line 343
    addiu	$sp,$sp,-16
    # Line 349
    mtc1	$a3,$f4
    # Line 343
    lui	$v0,0x8
    # Line 348
    mtc1	$a2,$f3
    # Line 343
    addiu	$v0,$v0,31820
    # Line 347
    mtc1	$a1,$f2
    sd	$gp,8($sp)
    # Line 343
    addu	$gp,$t9,$v0
    # Line 346
    mtc1	$a0,$f5
    # Line 349
    cvt.s.w	$f4,$f4
    # Line 346
    lwc1	$f6,_lit_40000000
    # Line 348
    cvt.s.w	$f3,$f3
    # Line 347
    cvt.s.w	$f2,$f2
    # Line 346
    lwc1	$f1,_lit_3f800000
    cvt.s.w	$f5,$f5
    # Line 349
    madd.s	$f4,$f1,$f4,$f6
    # Line 344
    lw	$at,4112($zero)
    # Line 348
    madd.s	$f3,$f1,$f3,$f6
    # Line 347
    madd.s	$f2,$f1,$f2,$f6
    # Line 346
    lwc1	$f0,3568($at)
    madd.s	$f1,$f1,$f5,$f6
    # Line 343
    sd	$ra,0($sp)
    # Line 350
    lw	$t9,12000($at)
    # Line 349
    mul.s	$f4,$f0,$f4
    # Line 348
    mul.s	$f3,$f0,$f3
    # Line 349
    swc1	$f4,444($at)
    # Line 347
    mul.s	$f2,$f0,$f2
    # Line 348
    swc1	$f3,440($at)
    # Line 346
    mul.s	$f0,$f0,$f1
    # Line 347
    swc1	$f2,436($at)
    # Line 350
    move	$a0,$at
    jalr	$t9
    # Line 346
    swc1	$f0,432($at)
    ld	$ra,0($sp)
    # Line 351
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4i

# Function: __glim_Color4iv
# Declared: Line 353 (Source lines: 354-362)
# Address: 0x0d9c91e0 - 0x0d9c9284 (Size: 164 bytes, Frame: 16)
.globl __glim_Color4iv
.ent __glim_Color4iv
__glim_Color4iv:
    # Line 357
    lw	$a3,0($a0)
    mtc1	$a3,$f6
    # Line 354
    lui	$a2,0x8
    addiu	$sp,$sp,-16
    addiu	$a2,$a2,31660
    sd	$gp,8($sp)
    addu	$gp,$t9,$a2
    # Line 357
    cvt.s.w	$f6,$f6
    lwc1	$f3,_lit_40000000
    lwc1	$f1,_lit_3f800000
    madd.s	$f6,$f1,$f6,$f3
    # Line 355
    lw	$at,4112($zero)
    # Line 357
    lwc1	$f0,3568($at)
    mul.s	$f6,$f0,$f6
    swc1	$f6,432($at)
    # Line 358
    lw	$a1,4($a0)
    mtc1	$a1,$f5
    cvt.s.w	$f5,$f5
    madd.s	$f5,$f1,$f5,$f3
    mul.s	$f5,$f0,$f5
    swc1	$f5,436($at)
    # Line 359
    lw	$v1,8($a0)
    mtc1	$v1,$f4
    cvt.s.w	$f4,$f4
    madd.s	$f4,$f1,$f4,$f3
    mul.s	$f4,$f0,$f4
    swc1	$f4,440($at)
    # Line 360
    lw	$v0,12($a0)
    mtc1	$v0,$f2
    cvt.s.w	$f2,$f2
    madd.s	$f1,$f1,$f2,$f3
    # Line 361
    lw	$t9,12000($at)
    # Line 354
    sd	$ra,0($sp)
    # Line 360
    mul.s	$f0,$f0,$f1
    # Line 361
    move	$a0,$at
    jalr	$t9
    # Line 360
    swc1	$f0,444($at)
    ld	$ra,0($sp)
    # Line 362
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4iv

# Function: __glim_Color4ui
# Declared: Line 364 (Source lines: 365-373)
# Address: 0x0d9c9290 - 0x0d9c932c (Size: 156 bytes, Frame: 16)
.globl __glim_Color4ui
.ent __glim_Color4ui
__glim_Color4ui:
    # Line 371
    dsll32	$a3,$a3,0x0
    # Line 370
    dsll32	$a2,$a2,0x0
    # Line 369
    dsll32	$a1,$a1,0x0
    # Line 368
    dsll32	$v1,$a0,0x0
    dsrl32	$v1,$v1,0x0
    # Line 369
    dsrl32	$a1,$a1,0x0
    # Line 370
    dsrl32	$a2,$a2,0x0
    # Line 371
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f4
    # Line 370
    dmtc1	$a2,$f3
    # Line 366
    lw	$at,4112($zero)
    # Line 369
    dmtc1	$a1,$f2
    # Line 368
    dmtc1	$v1,$f0
    # Line 371
    cvt.s.l	$f4,$f4
    # Line 365
    addiu	$sp,$sp,-16
    # Line 368
    lwc1	$f1,3568($at)
    # Line 370
    cvt.s.l	$f3,$f3
    # Line 365
    sd	$ra,0($sp)
    lui	$v0,0x8
    # Line 369
    cvt.s.l	$f2,$f2
    sd	$gp,8($sp)
    # Line 365
    addiu	$v0,$v0,31484
    # Line 368
    cvt.s.l	$f0,$f0
    # Line 365
    addu	$gp,$t9,$v0
    # Line 372
    lw	$t9,12000($at)
    # Line 371
    mul.s	$f4,$f4,$f1
    # Line 370
    mul.s	$f3,$f3,$f1
    # Line 371
    swc1	$f4,444($at)
    # Line 369
    mul.s	$f2,$f2,$f1
    # Line 370
    swc1	$f3,440($at)
    # Line 368
    mul.s	$f0,$f0,$f1
    # Line 369
    swc1	$f2,436($at)
    # Line 372
    move	$a0,$at
    jalr	$t9
    # Line 368
    swc1	$f0,432($at)
    ld	$ra,0($sp)
    # Line 373
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4ui

# Function: __glim_Color4uiv
# Declared: Line 375 (Source lines: 376-384)
# Address: 0x0d9c9330 - 0x0d9c93dc (Size: 172 bytes, Frame: 16)
.globl __glim_Color4uiv
.ent __glim_Color4uiv
__glim_Color4uiv:
    # Line 379
    lw	$a3,0($a0)
    dsll32	$a3,$a3,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f4
    # Line 377
    lw	$at,4112($zero)
    # Line 379
    cvt.s.l	$f4,$f4
    lwc1	$f1,3568($at)
    mul.s	$f4,$f4,$f1
    swc1	$f4,432($at)
    # Line 380
    lw	$a2,4($a0)
    dsll32	$a2,$a2,0x0
    dsrl32	$a2,$a2,0x0
    dmtc1	$a2,$f3
    cvt.s.l	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,436($at)
    # Line 381
    lw	$a1,8($a0)
    dsll32	$a1,$a1,0x0
    dsrl32	$a1,$a1,0x0
    dmtc1	$a1,$f2
    cvt.s.l	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,440($at)
    # Line 382
    lw	$v1,12($a0)
    dsll32	$v1,$v1,0x0
    dsrl32	$v1,$v1,0x0
    dmtc1	$v1,$f0
    # Line 376
    addiu	$sp,$sp,-16
    lui	$v0,0x8
    # Line 382
    cvt.s.l	$f0,$f0
    sd	$gp,8($sp)
    # Line 376
    addiu	$v0,$v0,31324
    addu	$gp,$t9,$v0
    # Line 383
    lw	$t9,12000($at)
    # Line 376
    sd	$ra,0($sp)
    # Line 382
    mul.s	$f0,$f0,$f1
    # Line 383
    move	$a0,$at
    jalr	$t9
    # Line 382
    swc1	$f0,444($at)
    ld	$ra,0($sp)
    # Line 384
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4uiv

# Function: __glim_Color4s
# Declared: Line 386 (Source lines: 387-395)
# Address: 0x0d9c93e0 - 0x0d9c947c (Size: 156 bytes, Frame: 16)
.globl __glim_Color4s
.ent __glim_Color4s
__glim_Color4s:
    # Line 390
    sll	$v1,$a0,0x1
    # Line 391
    sll	$a1,$a1,0x1
    # Line 393
    sll	$a3,$a3,0x1
    # Line 392
    sll	$a2,$a2,0x1
    # Line 393
    addiu	$a3,$a3,1
    # Line 392
    addiu	$a2,$a2,1
    # Line 393
    mtc1	$a3,$f4
    # Line 391
    addiu	$a1,$a1,1
    # Line 392
    mtc1	$a2,$f3
    # Line 388
    lw	$at,4112($zero)
    # Line 390
    addiu	$v1,$v1,1
    # Line 391
    mtc1	$a1,$f2
    # Line 390
    mtc1	$v1,$f0
    # Line 393
    cvt.s.w	$f4,$f4
    # Line 387
    addiu	$sp,$sp,-16
    # Line 390
    lwc1	$f1,3560($at)
    # Line 392
    cvt.s.w	$f3,$f3
    # Line 387
    sd	$ra,0($sp)
    lui	$v0,0x8
    # Line 391
    cvt.s.w	$f2,$f2
    sd	$gp,8($sp)
    # Line 387
    addiu	$v0,$v0,31148
    # Line 390
    cvt.s.w	$f0,$f0
    # Line 387
    addu	$gp,$t9,$v0
    # Line 394
    lw	$t9,12000($at)
    # Line 393
    mul.s	$f4,$f4,$f1
    # Line 392
    mul.s	$f3,$f3,$f1
    # Line 393
    swc1	$f4,444($at)
    # Line 391
    mul.s	$f2,$f2,$f1
    # Line 392
    swc1	$f3,440($at)
    # Line 390
    mul.s	$f0,$f0,$f1
    # Line 391
    swc1	$f2,436($at)
    # Line 394
    move	$a0,$at
    jalr	$t9
    # Line 390
    swc1	$f0,432($at)
    ld	$ra,0($sp)
    # Line 395
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4s

# Function: __glim_Color4sv
# Declared: Line 397 (Source lines: 398-406)
# Address: 0x0d9c9480 - 0x0d9c952c (Size: 172 bytes, Frame: 16)
.globl __glim_Color4sv
.ent __glim_Color4sv
__glim_Color4sv:
    # Line 401
    lh	$a3,0($a0)
    sll	$a3,$a3,0x1
    addiu	$a3,$a3,1
    mtc1	$a3,$f4
    # Line 399
    lw	$at,4112($zero)
    # Line 401
    cvt.s.w	$f4,$f4
    lwc1	$f1,3560($at)
    mul.s	$f4,$f4,$f1
    swc1	$f4,432($at)
    # Line 402
    lh	$a2,2($a0)
    sll	$a2,$a2,0x1
    addiu	$a2,$a2,1
    mtc1	$a2,$f3
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,436($at)
    # Line 403
    lh	$a1,4($a0)
    sll	$a1,$a1,0x1
    addiu	$a1,$a1,1
    mtc1	$a1,$f2
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,440($at)
    # Line 404
    lh	$v1,6($a0)
    sll	$v1,$v1,0x1
    addiu	$v1,$v1,1
    mtc1	$v1,$f0
    # Line 398
    addiu	$sp,$sp,-16
    lui	$v0,0x8
    # Line 404
    cvt.s.w	$f0,$f0
    sd	$gp,8($sp)
    # Line 398
    addiu	$v0,$v0,30988
    addu	$gp,$t9,$v0
    # Line 405
    lw	$t9,12000($at)
    # Line 398
    sd	$ra,0($sp)
    # Line 404
    mul.s	$f0,$f0,$f1
    # Line 405
    move	$a0,$at
    jalr	$t9
    # Line 404
    swc1	$f0,444($at)
    ld	$ra,0($sp)
    # Line 406
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4sv

# Function: __glim_Color4us
# Declared: Line 408 (Source lines: 409-417)
# Address: 0x0d9c9530 - 0x0d9c95ac (Size: 124 bytes, Frame: 16)
.globl __glim_Color4us
.ent __glim_Color4us
__glim_Color4us:
    # Line 415
    mtc1	$a3,$f4
    # Line 414
    mtc1	$a2,$f3
    # Line 410
    lw	$at,4112($zero)
    # Line 413
    mtc1	$a1,$f2
    # Line 412
    mtc1	$a0,$f0
    # Line 415
    cvt.s.w	$f4,$f4
    # Line 409
    addiu	$sp,$sp,-16
    # Line 412
    lwc1	$f1,3560($at)
    # Line 414
    cvt.s.w	$f3,$f3
    # Line 409
    sd	$ra,0($sp)
    lui	$v0,0x8
    # Line 413
    cvt.s.w	$f2,$f2
    sd	$gp,8($sp)
    # Line 409
    addiu	$v0,$v0,30812
    # Line 412
    cvt.s.w	$f0,$f0
    # Line 409
    addu	$gp,$t9,$v0
    # Line 416
    lw	$t9,12000($at)
    # Line 415
    mul.s	$f4,$f4,$f1
    # Line 414
    mul.s	$f3,$f3,$f1
    # Line 415
    swc1	$f4,444($at)
    # Line 413
    mul.s	$f2,$f2,$f1
    # Line 414
    swc1	$f3,440($at)
    # Line 412
    mul.s	$f0,$f0,$f1
    # Line 413
    swc1	$f2,436($at)
    # Line 416
    move	$a0,$at
    jalr	$t9
    # Line 412
    swc1	$f0,432($at)
    ld	$ra,0($sp)
    # Line 417
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4us

# Function: __glim_Color4usv
# Declared: Line 419 (Source lines: 420-428)
# Address: 0x0d9c95b0 - 0x0d9c963c (Size: 140 bytes, Frame: 16)
.globl __glim_Color4usv
.ent __glim_Color4usv
__glim_Color4usv:
    # Line 423
    lhu	$a3,0($a0)
    mtc1	$a3,$f4
    # Line 421
    lw	$at,4112($zero)
    # Line 423
    cvt.s.w	$f4,$f4
    lwc1	$f1,3560($at)
    mul.s	$f4,$f4,$f1
    swc1	$f4,432($at)
    # Line 424
    lhu	$a2,2($a0)
    mtc1	$a2,$f3
    cvt.s.w	$f3,$f3
    mul.s	$f3,$f3,$f1
    swc1	$f3,436($at)
    # Line 425
    lhu	$a1,4($a0)
    mtc1	$a1,$f2
    cvt.s.w	$f2,$f2
    mul.s	$f2,$f2,$f1
    swc1	$f2,440($at)
    # Line 426
    lhu	$v1,6($a0)
    mtc1	$v1,$f0
    # Line 420
    addiu	$sp,$sp,-16
    lui	$v0,0x8
    # Line 426
    cvt.s.w	$f0,$f0
    sd	$gp,8($sp)
    # Line 420
    addiu	$v0,$v0,30684
    addu	$gp,$t9,$v0
    # Line 427
    lw	$t9,12000($at)
    # Line 420
    sd	$ra,0($sp)
    # Line 426
    mul.s	$f0,$f0,$f1
    # Line 427
    move	$a0,$at
    jalr	$t9
    # Line 426
    swc1	$f0,444($at)
    ld	$ra,0($sp)
    # Line 428
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_Color4usv

# Function: __glim_Indexd
# Declared: Line 432 (Source lines: 435-436)
# Address: 0x0d9c9640 - 0x0d9c9650 (Size: 16 bytes, Frame: 0)
.globl __glim_Indexd
.ent __glim_Indexd
__glim_Indexd:
    # Line 435
    lw	$at,4112($zero)
    cvt.s.d	$f0,$f12
    # Line 436
    jr	$ra
    # Line 435
    swc1	$f0,448($at)
.end __glim_Indexd

# Function: __glim_Indexf
# Declared: Line 438 (Source lines: 441-442)
# Address: 0x0d9c9650 - 0x0d9c965c (Size: 12 bytes, Frame: 0)
.globl __glim_Indexf
.ent __glim_Indexf
__glim_Indexf:
    # Line 441
    lw	$at,4112($zero)
    # Line 442
    jr	$ra
    # Line 441
    swc1	$f12,448($at)
.end __glim_Indexf

# Function: __glim_Indexi
# Declared: Line 444 (Source lines: 447-448)
# Address: 0x0d9c9660 - 0x0d9c9674 (Size: 20 bytes, Frame: 0)
.globl __glim_Indexi
.ent __glim_Indexi
__glim_Indexi:
    # Line 447
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    lw	$at,4112($zero)
    # Line 448
    jr	$ra
    # Line 447
    swc1	$f0,448($at)
.end __glim_Indexi

# Function: __glim_Indexs
# Declared: Line 450 (Source lines: 453-454)
# Address: 0x0d9c9680 - 0x0d9c9694 (Size: 20 bytes, Frame: 0)
.globl __glim_Indexs
.ent __glim_Indexs
__glim_Indexs:
    # Line 453
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    lw	$at,4112($zero)
    # Line 454
    jr	$ra
    # Line 453
    swc1	$f0,448($at)
.end __glim_Indexs

# Function: __glim_Indexdv
# Declared: Line 456 (Source lines: 459-460)
# Address: 0x0d9c96a0 - 0x0d9c96b4 (Size: 20 bytes, Frame: 0)
.globl __glim_Indexdv
.ent __glim_Indexdv
__glim_Indexdv:
    # Line 459
    ldc1	$f0,0($a0)
    lw	$at,4112($zero)
    cvt.s.d	$f0,$f0
    # Line 460
    jr	$ra
    # Line 459
    swc1	$f0,448($at)
.end __glim_Indexdv

# Function: __glim_Indexfv
# Declared: Line 462 (Source lines: 465-466)
# Address: 0x0d9c96c0 - 0x0d9c96d0 (Size: 16 bytes, Frame: 0)
.globl __glim_Indexfv
.ent __glim_Indexfv
__glim_Indexfv:
    # Line 465
    lw	$at,4112($zero)
    lwc1	$f0,0($a0)
    # Line 466
    jr	$ra
    # Line 465
    swc1	$f0,448($at)
.end __glim_Indexfv

# Function: __glim_Indexiv
# Declared: Line 468 (Source lines: 471-472)
# Address: 0x0d9c96d0 - 0x0d9c96e8 (Size: 24 bytes, Frame: 0)
.globl __glim_Indexiv
.ent __glim_Indexiv
__glim_Indexiv:
    # Line 471
    lw	$v0,0($a0)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    lw	$at,4112($zero)
    # Line 472
    jr	$ra
    # Line 471
    swc1	$f0,448($at)
.end __glim_Indexiv

# Function: __glim_Indexsv
# Declared: Line 474 (Source lines: 477-478)
# Address: 0x0d9c96f0 - 0x0d9c9708 (Size: 24 bytes, Frame: 0)
.globl __glim_Indexsv
.ent __glim_Indexsv
__glim_Indexsv:
    # Line 477
    lh	$v0,0($a0)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    lw	$at,4112($zero)
    # Line 478
    jr	$ra
    # Line 477
    swc1	$f0,448($at)
.end __glim_Indexsv

# Function: __glim_Indexub
# Declared: Line 480 (Source lines: 483-484)
# Address: 0x0d9c9710 - 0x0d9c9724 (Size: 20 bytes, Frame: 0)
.globl __glim_Indexub
.ent __glim_Indexub
__glim_Indexub:
    # Line 483
    mtc1	$a0,$f0
    cvt.s.w	$f0,$f0
    lw	$at,4112($zero)
    # Line 484
    jr	$ra
    # Line 483
    swc1	$f0,448($at)
.end __glim_Indexub

# Function: __glim_Indexubv
# Declared: Line 486 (Source lines: 489-490)
# Address: 0x0d9c9730 - 0x0d9c9748 (Size: 24 bytes, Frame: 0)
.globl __glim_Indexubv
.ent __glim_Indexubv
__glim_Indexubv:
    # Line 489
    lbu	$v0,0($a0)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    lw	$at,4112($zero)
    # Line 490
    jr	$ra
    # Line 489
    swc1	$f0,448($at)
.end __glim_Indexubv

.rdata
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000

