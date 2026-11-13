# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/mips/mips4_material.ma
# Category: mips
# Compiler Options: 
# Total Functions: 5

.text

# Function: __glMipsChangeMaterialEmission
# Declared: Line 35 (Source lines: 35-63)
# Address: 0x0d991270 - 0x0d9912e4 (Size: 116 bytes, Frame: 0)
.globl __glMipsChangeMaterialEmission
.ent __glMipsChangeMaterialEmission
__glMipsChangeMaterialEmission:
    # Line 35
    lwc1	$f0,432($a0)
    # Line 36
    lwc1	$f1,30752($a0)
    # Line 37
    lwc1	$f2,436($a0)
    # Line 38
    lwc1	$f3,30756($a0)
    # Line 39
    lwc1	$f4,440($a0)
    # Line 40
    mul.s	$f0,$f0,$f1
    # Line 41
    lwc1	$f5,30760($a0)
    # Line 42
    mul.s	$f2,$f2,$f3
    # Line 43
    lwc1	$f6,0($a1)
    # Line 44
    mul.s	$f4,$f4,$f5
    # Line 45
    lwc1	$f7,1396($a0)
    # Line 46
    lwc1	$f8,4($a1)
    # Line 47
    lwc1	$f9,1400($a0)
    # Line 48
    madd.s	$f10,$f0,$f6,$f7
    # Line 49
    lwc1	$f11,8($a1)
    # Line 50
    lwc1	$f12,1404($a0)
    # Line 51
    madd.s	$f13,$f2,$f8,$f9
    # Line 52
    lwc1	$f14,444($a0)
    # Line 53
    lwc1	$f15,30792($a0)
    # Line 54
    madd.s	$f16,$f4,$f11,$f12
    # Line 55
    swc1	$f0,48($a1)
    # Line 56
    mul.s	$f14,$f14,$f15
    # Line 57
    swc1	$f2,52($a1)
    # Line 58
    swc1	$f4,56($a1)
    # Line 59
    swc1	$f10,0($a2)
    # Line 60
    swc1	$f13,4($a2)
    # Line 61
    swc1	$f16,8($a2)
    # Line 62
    jr	$ra
    # Line 63
    swc1	$f14,60($a1)
.end __glMipsChangeMaterialEmission

# Function: __glMipsChangeMaterialSpecular
# Declared: Line 78 (Source lines: 78-113)
# Address: 0x0d9912e4 - 0x0d99135c (Size: 120 bytes, Frame: 0)
.globl __glMipsChangeMaterialSpecular
.ent __glMipsChangeMaterialSpecular
__glMipsChangeMaterialSpecular:
    # Line 78
    lwc1	$f17,432($a0)
    # Line 79
    lwc1	$f18,436($a0)
    # Line 80
    lwc1	$f19,440($a0)
    # Line 81
    lwc1	$f0,444($a0)
    # Line 82
    swc1	$f17,32($a1)
    # Line 83
    swc1	$f18,36($a1)
    # Line 84
    swc1	$f19,40($a1)
    # Line 85
    swc1	$f0,44($a1)
    # Line 87
    lw	$v0,28180($a0)
    # Line 88
    addiu	$v1,$a0,28140
    # Line 89
    subu	$a0,$v1,$a2
    # Line 90
    li	$a1,48
    # Line 91
    movn	$a1,$zero,$a0
    # Line 92
    beqz	$v0,.L0d991354
    # Line 93
    addiu	$a2,$a1,0
.L0d991320:
    # Line 96
    lw	$a3,96($v0)
    # Line 97
    addu	$t0,$v0,$a2
    # Line 99
    lwc1	$f1,32($a3)
    # Line 100
    lwc1	$f2,36($a3)
    # Line 101
    lwc1	$f3,40($a3)
    # Line 102
    mul.s	$f1,$f1,$f17
    # Line 103
    mul.s	$f2,$f2,$f18
    # Line 104
    lw	$v0,200($v0)
    # Line 105
    mul.s	$f3,$f3,$f19
    # Line 106
    swc1	$f1,32($t0)
    # Line 107
    swc1	$f2,36($t0)
    # Line 108
    bnez	$v0,.L0d991320
    # Line 109
    swc1	$f3,40($t0)
.L0d991354:
    # Line 112
    jr	$ra
    # Line 113
    nop
.end __glMipsChangeMaterialSpecular

# Function: __glMipsChangeMaterialAmbient
# Declared: Line 127 (Source lines: 127-171)
# Address: 0x0d99135c - 0x0d991400 (Size: 164 bytes, Frame: 0)
.globl __glMipsChangeMaterialAmbient
.ent __glMipsChangeMaterialAmbient
__glMipsChangeMaterialAmbient:
    # Line 127
    lwc1	$f4,432($a0)
    # Line 128
    lwc1	$f5,48($a1)
    # Line 129
    lwc1	$f6,1396($a0)
    # Line 130
    lwc1	$f7,436($a0)
    # Line 131
    madd.s	$f8,$f5,$f4,$f6
    # Line 132
    lwc1	$f9,52($a1)
    # Line 133
    lwc1	$f10,1400($a0)
    # Line 134
    lwc1	$f11,56($a1)
    # Line 135
    madd.s	$f12,$f9,$f7,$f10
    # Line 136
    lwc1	$f13,440($a0)
    # Line 137
    lwc1	$f14,1404($a0)
    # Line 138
    lwc1	$f15,444($a0)
    # Line 139
    swc1	$f4,0($a1)
    # Line 140
    madd.s	$f16,$f11,$f13,$f14
    # Line 141
    lw	$t1,28180($a0)
    # Line 142
    addiu	$t2,$a0,28140
    # Line 143
    swc1	$f7,4($a1)
    # Line 144
    swc1	$f13,8($a1)
    # Line 145
    swc1	$f8,0($a2)
    # Line 146
    swc1	$f12,4($a2)
    # Line 147
    swc1	$f16,8($a2)
    # Line 148
    subu	$t3,$t2,$a2
    # Line 149
    li	$a4,48
    # Line 150
    movn	$a4,$zero,$t3
    # Line 151
    beqz	$t1,.L0d9913f8
    # Line 152
    addiu	$a5,$a4,0
.L0d9913c4:
    # Line 155
    lw	$a6,96($t1)
    # Line 156
    addu	$a7,$t1,$a5
    # Line 157
    lwc1	$f17,0($a6)
    # Line 158
    lwc1	$f18,4($a6)
    # Line 159
    lwc1	$f19,8($a6)
    # Line 160
    mul.s	$f17,$f17,$f4
    # Line 161
    mul.s	$f18,$f18,$f7
    # Line 162
    lw	$t1,200($t1)
    # Line 163
    mul.s	$f19,$f19,$f13
    # Line 164
    swc1	$f17,0($a7)
    # Line 165
    swc1	$f18,4($a7)
    # Line 166
    bnez	$t1,.L0d9913c4
    # Line 167
    swc1	$f19,8($a7)
.L0d9913f8:
    # Line 170
    jr	$ra
    # Line 171
    swc1	$f15,12($a1)
.end __glMipsChangeMaterialAmbient

# Function: __glMipsChangeMaterialDiffuse
# Declared: Line 185 (Source lines: 185-229)
# Address: 0x0d991400 - 0x0d99149c (Size: 156 bytes, Frame: 0)
.globl __glMipsChangeMaterialDiffuse
.ent __glMipsChangeMaterialDiffuse
__glMipsChangeMaterialDiffuse:
    # Line 185
    lwc1	$f0,432($a0)
    # Line 186
    lwc1	$f1,436($a0)
    # Line 187
    lwc1	$f2,440($a0)
    # Line 188
    lwc1	$f3,444($a0)
    # Line 189
    swc1	$f0,16($a1)
    # Line 190
    swc1	$f1,20($a1)
    # Line 191
    swc1	$f2,24($a1)
    # Line 192
    swc1	$f3,28($a1)
    # Line 194
    lui	$t8,0x3f80
    # Line 195
    mtc1	$zero,$f4
    # Line 196
    mtc1	$t8,$f5
    # Line 197
    c.lt.s	$f3,$f4
    # Line 198
    lwc1	$f6,30792($a0)
    # Line 199
    c.lt.s $f5,$f3
    # Line 200
    movt.s	$f3,$f4,$fcc0
    # Line 201
    movt.s	$f3,$f5,$fcc1
    # Line 202
    mul.s	$f3,$f3,$f6
    # Line 204
    lw	$t9,28180($a0)
    # Line 205
    addiu	$v0,$a0,28140
    # Line 206
    subu	$v1,$v0,$a2
    # Line 207
    li	$a0,48
    # Line 208
    movn	$a0,$zero,$v1
    # Line 209
    beqz	$t9,.L0d991494
    # Line 210
    addiu	$a1,$a0,0
.L0d991460:
    # Line 213
    lw	$a3,96($t9)
    # Line 214
    addu	$t0,$t9,$a1
    # Line 215
    lwc1	$f7,16($a3)
    # Line 216
    lwc1	$f8,20($a3)
    # Line 217
    lwc1	$f9,24($a3)
    # Line 218
    mul.s	$f7,$f7,$f0
    # Line 219
    mul.s	$f8,$f8,$f1
    # Line 220
    lw	$t9,200($t9)
    # Line 221
    mul.s	$f9,$f9,$f2
    # Line 222
    swc1	$f7,16($t0)
    # Line 223
    swc1	$f8,20($t0)
    # Line 224
    bnez	$t9,.L0d991460
    # Line 225
    swc1	$f9,24($t0)
.L0d991494:
    # Line 228
    jr	$ra
    # Line 229
    swc1	$f3,36($a2)
.end __glMipsChangeMaterialDiffuse

# Function: __glMipsChangeMaterialAmbientAndDiffuse
# Declared: Line 243 (Source lines: 243-310)
# Address: 0x0d99149c - 0x0d991594 (Size: 248 bytes, Frame: 0)
.globl __glMipsChangeMaterialAmbientAndDiffuse
.ent __glMipsChangeMaterialAmbientAndDiffuse
__glMipsChangeMaterialAmbientAndDiffuse:
    # Line 243
    lwc1	$f10,432($a0)
    # Line 244
    lwc1	$f11,48($a1)
    # Line 245
    lwc1	$f12,1396($a0)
    # Line 246
    lwc1	$f13,436($a0)
    # Line 247
    madd.s	$f14,$f11,$f10,$f12
    # Line 248
    lwc1	$f15,52($a1)
    # Line 249
    lwc1	$f16,1400($a0)
    # Line 250
    lwc1	$f17,56($a1)
    # Line 251
    madd.s	$f18,$f15,$f13,$f16
    # Line 252
    lwc1	$f19,440($a0)
    # Line 253
    lwc1	$f0,1404($a0)
    # Line 254
    ld	$t1,432($a0)
    # Line 255
    ld	$t2,440($a0)
    # Line 256
    madd.s	$f1,$f17,$f19,$f0
    # Line 257
    lwc1	$f2,444($a0)
    # Line 258
    sd	$t1,0($a1)
    # Line 259
    sd	$t1,16($a1)
    # Line 260
    sd	$t2,8($a1)
    # Line 261
    sd	$t2,24($a1)
    # Line 262
    swc1	$f14,0($a2)
    # Line 263
    swc1	$f18,4($a2)
    # Line 264
    swc1	$f1,8($a2)
    # Line 266
    lui	$t3,0x3f80
    # Line 267
    mtc1	$zero,$f3
    # Line 268
    mtc1	$t3,$f4
    # Line 269
    c.lt.s	$f2,$f3
    # Line 270
    lwc1	$f5,30792($a0)
    # Line 271
    c.lt.s $f4,$f2
    # Line 272
    movt.s	$f2,$f3,$fcc0
    # Line 273
    movt.s	$f2,$f4,$fcc1
    # Line 274
    mul.s	$f2,$f2,$f5
    # Line 276
    lw	$a4,28180($a0)
    # Line 277
    addiu	$a5,$a0,28140
    # Line 278
    subu	$a6,$a5,$a2
    # Line 279
    li	$a7,48
    # Line 280
    movn	$a7,$zero,$a6
    # Line 281
    beqz	$a4,.L0d99158c
    # Line 282
    addiu	$t8,$a7,0
.L0d991534:
    # Line 285
    lw	$t9,96($a4)
    # Line 286
    addu	$v0,$a4,$t8
    # Line 287
    lwc1	$f6,0($t9)
    # Line 288
    lwc1	$f7,4($t9)
    # Line 289
    lwc1	$f8,8($t9)
    # Line 290
    mul.s	$f6,$f6,$f10
    # Line 291
    lwc1	$f9,16($t9)
    # Line 292
    mul.s	$f7,$f7,$f13
    # Line 293
    lwc1	$f11,20($t9)
    # Line 294
    mul.s	$f8,$f8,$f19
    # Line 295
    lwc1	$f12,24($t9)
    # Line 296
    mul.s	$f9,$f9,$f10
    # Line 297
    swc1	$f6,0($v0)
    # Line 298
    mul.s	$f11,$f11,$f13
    # Line 299
    swc1	$f7,4($v0)
    # Line 300
    mul.s	$f12,$f12,$f19
    # Line 301
    swc1	$f8,8($v0)
    # Line 302
    lw	$a4,200($a4)
    # Line 303
    swc1	$f9,16($v0)
    # Line 304
    swc1	$f11,20($v0)
    # Line 305
    bnez	$a4,.L0d991534
    # Line 306
    swc1	$f12,24($v0)
.L0d99158c:
    # Line 309
    jr	$ra
    # Line 310
    swc1	$f2,36($a2)
.end __glMipsChangeMaterialAmbientAndDiffuse

