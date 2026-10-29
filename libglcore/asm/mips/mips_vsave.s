# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/mips/mips_vsave.ma
# Category: mips
# Compiler Options: 
# Total Functions: 10

.text

# Function: __glSaveN
# Declared: Line 41 (Source lines: 41-46)
# Address: 0x0d934320 - 0x0d934338 (Size: 24 bytes, Frame: 0)
.globl __glSaveN
.ent __glSaveN
__glSaveN:
    # Line 41
    ldc1	$f0,208($a0)
    # Line 42
    lw	$t9,11948($a0)
    # Line 43
    lw	$v1,216($a0)
    # Line 44
    sdc1	$f0,32($a1)
    # Line 45
    jr	$t9
    # Line 46
    sw	$v1,40($a1)
.end __glSaveN

# Function: __glSaveCI
# Declared: Line 60 (Source lines: 60-64)
# Address: 0x0d934338 - 0x0d93434c (Size: 20 bytes, Frame: 0)
.globl __glSaveCI
.ent __glSaveCI
__glSaveCI:
    # Line 60
    lw	$t9,11948($a0)
    # Line 61
    lw	$a2,448($a0)
    # Line 62
    addiu	$a3,$a1,144
    # Line 63
    jr	$t9
    # Line 64
    sw	$a2,0($a3)
.end __glSaveCI

# Function: __glSaveC
# Declared: Line 78 (Source lines: 78-83)
# Address: 0x0d93434c - 0x0d934364 (Size: 24 bytes, Frame: 0)
.globl __glSaveC
.ent __glSaveC
__glSaveC:
    # Line 78
    ldc1	$f1,192($a0)
    # Line 79
    lw	$t9,11948($a0)
    # Line 80
    ldc1	$f2,200($a0)
    # Line 81
    sdc1	$f1,144($a1)
    # Line 82
    jr	$t9
    # Line 83
    sdc1	$f2,152($a1)
.end __glSaveC

# Function: __glSaveT
# Declared: Line 97 (Source lines: 97-102)
# Address: 0x0d934364 - 0x0d93437c (Size: 24 bytes, Frame: 0)
.globl __glSaveT
.ent __glSaveT
__glSaveT:
    # Line 97
    ldc1	$f3,224($a0)
    # Line 98
    lw	$t9,11948($a0)
    # Line 99
    ldc1	$f4,232($a0)
    # Line 100
    sdc1	$f3,48($a1)
    # Line 101
    jr	$t9
    # Line 102
    sdc1	$f4,56($a1)
.end __glSaveT

# Function: __glSaveCT
# Declared: Line 116 (Source lines: 116-125)
# Address: 0x0d93437c - 0x0d9343a4 (Size: 40 bytes, Frame: 0)
.globl __glSaveCT
.ent __glSaveCT
__glSaveCT:
    # Line 116
    ldc1	$f5,192($a0)
    # Line 117
    ldc1	$f6,200($a0)
    # Line 118
    ldc1	$f7,224($a0)
    # Line 119
    ldc1	$f8,232($a0)
    # Line 120
    lw	$t9,11948($a0)
    # Line 121
    sdc1	$f5,144($a1)
    # Line 122
    sdc1	$f6,152($a1)
    # Line 123
    sdc1	$f7,48($a1)
    # Line 124
    jr	$t9
    # Line 125
    sdc1	$f8,56($a1)
.end __glSaveCT

# Function: __glSaveNT
# Declared: Line 139 (Source lines: 139-148)
# Address: 0x0d9343a4 - 0x0d9343cc (Size: 40 bytes, Frame: 0)
.globl __glSaveNT
.ent __glSaveNT
__glSaveNT:
    # Line 139
    lw	$t9,11948($a0)
    # Line 140
    ldc1	$f9,208($a0)
    # Line 141
    lw	$t0,216($a0)
    # Line 142
    ldc1	$f10,224($a0)
    # Line 143
    ldc1	$f11,232($a0)
    # Line 144
    sdc1	$f9,32($a1)
    # Line 145
    sw	$t0,40($a1)
    # Line 146
    sdc1	$f10,48($a1)
    # Line 147
    jr	$t9
    # Line 148
    sdc1	$f11,56($a1)
.end __glSaveNT

# Function: __glSaveCAll
# Declared: Line 162 (Source lines: 162-175)
# Address: 0x0d9343cc - 0x0d934404 (Size: 56 bytes, Frame: 0)
.globl __glSaveCAll
.ent __glSaveCAll
__glSaveCAll:
    # Line 162
    ldc1	$f12,192($a0)
    # Line 163
    ldc1	$f13,200($a0)
    # Line 164
    ldc1	$f14,208($a0)
    # Line 165
    lw	$t1,216($a0)
    # Line 166
    lw	$t9,11948($a0)
    # Line 167
    sdc1	$f12,144($a1)
    # Line 168
    sdc1	$f13,152($a1)
    # Line 169
    ldc1	$f15,224($a0)
    # Line 170
    ldc1	$f16,232($a0)
    # Line 171
    sdc1	$f14,32($a1)
    # Line 172
    sw	$t1,40($a1)
    # Line 173
    sdc1	$f15,48($a1)
    # Line 174
    jr	$t9
    # Line 175
    sdc1	$f16,56($a1)
.end __glSaveCAll

# Function: __glSaveCIAll
# Declared: Line 189 (Source lines: 189-201)
# Address: 0x0d934404 - 0x0d934438 (Size: 52 bytes, Frame: 0)
.globl __glSaveCIAll
.ent __glSaveCIAll
__glSaveCIAll:
    # Line 189
    lw	$t2,448($a0)
    # Line 190
    lw	$t9,11948($a0)
    # Line 191
    addiu	$t3,$a1,144
    # Line 192
    sw	$t2,0($t3)
    # Line 193
    ldc1	$f17,208($a0)
    # Line 194
    lw	$a4,216($a0)
    # Line 195
    ldc1	$f18,224($a0)
    # Line 196
    ldc1	$f19,232($a0)
    # Line 197
    sdc1	$f17,32($a1)
    # Line 198
    sw	$a4,40($a1)
    # Line 199
    sdc1	$f18,48($a1)
    # Line 200
    jr	$t9
    # Line 201
    sdc1	$f19,56($a1)
.end __glSaveCIAll

# Function: __glSaveCN
# Declared: Line 216 (Source lines: 216-232)
# Address: 0x0d934438 - 0x0d93447c (Size: 68 bytes, Frame: 0)
.globl __glSaveCN
.ent __glSaveCN
__glSaveCN:
    # Line 216
    lw	$a5,31496($a0)
    # Line 217
    li	$a6,3
    # Line 218
    bne	$a5,$a6,__glSaveN
    nop
    # Line 220
    lw	$a7,0($a1)
    # Line 226
    addiu	$t8,$a1,144
    # Line 221
    lw	$t9,11948($a0)
    # Line 229
    addiu	$v1,$a1,160
    # Line 222
    ori	$a7,$a7,0xb
    # Line 223
    sw	$a7,0($a1)
    # Line 224
    ldc1	$f0,192($a0)
    # Line 225
    ldc1	$f1,200($a0)
    # Line 227
    sdc1	$f0,0($t8)
    # Line 228
    sdc1	$f1,8($t8)
    # Line 230
    sdc1	$f0,0($v1)
    # Line 232
    jr	$t9
    # Line 231
    sdc1	$f1,8($v1)
.end __glSaveCN

# Function: __glSaveCNT
# Declared: Line 245 (Source lines: 245-269)
# Address: 0x0d93447c - 0x0d9344e0 (Size: 100 bytes, Frame: 0)
.globl __glSaveCNT
.ent __glSaveCNT
__glSaveCNT:
    # Line 245
    lw	$a2,31496($a0)
    # Line 246
    li	$a3,3
    # Line 247
    bne	$a2,$a3,__glSaveNT
    nop
    # Line 249
    lw	$t0,0($a1)
    # Line 257
    addiu	$t2,$a1,144
    # Line 250
    lw	$t9,11948($a0)
    # Line 260
    addiu	$t3,$a1,160
    # Line 251
    ori	$t0,$t0,0xb
    # Line 252
    sw	$t0,0($a1)
    # Line 254
    lw	$t1,216($a0)
    # Line 253
    ldc1	$f2,208($a0)
    # Line 255
    ldc1	$f3,192($a0)
    # Line 256
    ldc1	$f4,200($a0)
    # Line 258
    sdc1	$f3,0($t2)
    # Line 259
    sdc1	$f4,8($t2)
    # Line 261
    sdc1	$f3,0($t3)
    # Line 262
    sdc1	$f4,8($t3)
    # Line 264
    sw	$t1,40($a1)
    # Line 263
    sdc1	$f2,32($a1)
    # Line 265
    ldc1	$f5,224($a0)
    # Line 266
    ldc1	$f6,232($a0)
    # Line 267
    sdc1	$f5,48($a1)
    # Line 269
    jr	$t9
    # Line 268
    sdc1	$f6,56($a1)
.end __glSaveCNT

