# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME/crm_vapi.ma
# Category: CRIME
# Compiler Options: 
# Total Functions: 3

.text

# Function: __glcrmim_MipsVertexInLine3fv
# Declared: Line 33 (Source lines: 33-110)
# Address: 0x0d9795a0 - 0x0d9796d8 (Size: 312 bytes, Frame: 0)
.globl __glcrmim_MipsVertexInLine3fv
.ent __glcrmim_MipsVertexInLine3fv
__glcrmim_MipsVertexInLine3fv:
    # Line 33
    lw	$v1,4112($zero)
    # Line 34
    lwc1	$f0,0($a0)
    # Line 35
    lw	$a1,12688($v1)
    # Line 36
    lw	$a2,29660($v1)
    # Line 37
    lwc1	$f1,4($a0)
    # Line 38
    lwc1	$f2,8($a0)
    # Line 39
    addi	$a3,$a2,176
    # Line 40
    swc1	$f0,16($a1)
    # Line 41
    swc1	$f1,20($a1)
    # Line 42
    lwc1	$f3,44($a3)
    # Line 43
    lwc1	$f4,60($a3)
    # Line 44
    lwc1	$f5,36($a3)
    # Line 45
    swc1	$f2,24($a1)
    # Line 46
    madd.s	$f6,$f4,$f2,$f3
    # Line 47
    lwc1	$f7,52($a3)
    # Line 48
    lwc1	$f8,40($a3)
    # Line 49
    madd.s	$f9,$f7,$f2,$f5
    # Line 50
    lwc1	$f10,56($a3)
    # Line 51
    lwc1	$f11,32($a3)
    # Line 52
    madd.s	$f12,$f10,$f2,$f8
    # Line 53
    lwc1	$f13,48($a3)
    # Line 54
    lwc1	$f14,28($a3)
    # Line 55
    madd.s	$f15,$f13,$f2,$f11
    # Line 56
    lwc1	$f16,20($a3)
    # Line 57
    madd.s	$f6,$f6,$f1,$f14
    # Line 58
    lwc1	$f17,24($a3)
    # Line 59
    madd.s	$f9,$f9,$f1,$f16
    # Line 60
    lwc1	$f18,16($a3)
    # Line 61
    madd.s	$f12,$f12,$f1,$f17
    # Line 62
    lwc1	$f19,12($a3)
    # Line 63
    madd.s	$f15,$f15,$f1,$f18
    # Line 64
    lwc1	$f1,4($a3)
    # Line 65
    madd.s	$f6,$f6,$f0,$f19
    # Line 66
    lwc1	$f2,8($a3)
    # Line 67
    madd.s	$f9,$f9,$f0,$f1
    # Line 68
    lwc1	$f3,0($a3)
    # Line 69
    madd.s	$f12,$f12,$f0,$f2
    # Line 70
    lwc1	$f4,1720($v1)
    # Line 71
    madd.s	$f15,$f15,$f0,$f3
    # Line 72
    lwc1	$f5,1728($v1)
    # Line 73
    recip.s	$f7,$f6
    # Line 74
    swc1	$f6,124($a1)
    # Line 75
    neg.s	$f8,$f6
    # Line 76
    lwc1	$f10,1736($v1)
    # Line 77
    c.lt.s $f9,$f8
    # Line 78
    swc1	$f9,116($a1)
    # Line 79
    c.lt.s $f6,$f9
    # Line 80
    swc1	$f12,120($a1)
    # Line 81
    c.lt.s $f15,$f8
    # Line 82
    swc1	$f15,112($a1)
    # Line 83
    c.lt.s $f6,$f15
    # Line 84
    lwc1	$f11,1724($v1)
    # Line 85
    c.lt.s $f12,$f8
    # Line 86
    lwc1	$f13,1732($v1)
    # Line 87
    c.lt.s $f6,$f12
    # Line 88
    lwc1	$f14,1740($v1)
    # Line 89
    mul.s	$f15,$f15,$f4
    # Line 90
    sw	$zero,0($a1)
    # Line 91
    mul.s	$f9,$f9,$f5
    # Line 92
    cfc1	$v0,c1_fcsr
    # Line 93
    mul.s	$f12,$f12,$f10
    # Line 94
    lw	$t0,11980($v1)
    # Line 95
    lui	$t1,0x3f80
    # Line 96
    lw	$t9,11920($v1)
    # Line 97
    move	$a0,$v1
    # Line 98
    srl	$v0,$v0,0x19
    # Line 99
    sw	$t0,12($a1)
    # Line 100
    madd.s	$f15,$f11,$f15,$f7
    # Line 101
    sw	$t1,28($a1)
    # Line 102
    madd.s	$f9,$f13,$f9,$f7
    # Line 103
    andi	$v0,$v0,0x3f
    # Line 104
    madd.s	$f12,$f14,$f12,$f7
    # Line 105
    sw	$v0,4($a1)
    # Line 106
    swc1	$f7,140($a1)
    # Line 107
    swc1	$f15,128($a1)
    # Line 108
    swc1	$f9,132($a1)
    # Line 109
    jr	$t9
    # Line 110
    swc1	$f12,136($a1)
.end __glcrmim_MipsVertexInLine3fv

# Function: __glcrmim_MipsVertexInLineN3fv
# Declared: Line 140 (Source lines: 140-221)
# Address: 0x0d9796d8 - 0x0d979820 (Size: 328 bytes, Frame: 0)
.globl __glcrmim_MipsVertexInLineN3fv
.ent __glcrmim_MipsVertexInLineN3fv
__glcrmim_MipsVertexInLineN3fv:
    # Line 140
    lw	$t2,4112($zero)
    # Line 141
    lwc1	$f15,0($a0)
    # Line 142
    lw	$a1,12688($t2)
    # Line 143
    lw	$t3,29660($t2)
    # Line 144
    lwc1	$f16,4($a0)
    # Line 145
    lwc1	$f17,8($a0)
    # Line 146
    addi	$a4,$t3,176
    # Line 147
    swc1	$f15,16($a1)
    # Line 148
    swc1	$f16,20($a1)
    # Line 149
    lwc1	$f18,44($a4)
    # Line 150
    lwc1	$f19,60($a4)
    # Line 151
    lwc1	$f0,36($a4)
    # Line 152
    swc1	$f17,24($a1)
    # Line 153
    madd.s	$f1,$f19,$f17,$f18
    # Line 154
    lwc1	$f2,52($a4)
    # Line 155
    lwc1	$f3,40($a4)
    # Line 156
    madd.s	$f4,$f2,$f17,$f0
    # Line 157
    lwc1	$f5,56($a4)
    # Line 158
    lwc1	$f6,32($a4)
    # Line 159
    madd.s	$f7,$f5,$f17,$f3
    # Line 160
    lwc1	$f8,48($a4)
    # Line 161
    lwc1	$f9,28($a4)
    # Line 162
    madd.s	$f10,$f8,$f17,$f6
    # Line 163
    lwc1	$f11,20($a4)
    # Line 164
    madd.s	$f1,$f1,$f16,$f9
    # Line 165
    lwc1	$f12,24($a4)
    # Line 166
    madd.s	$f4,$f4,$f16,$f11
    # Line 167
    lwc1	$f13,16($a4)
    # Line 168
    madd.s	$f7,$f7,$f16,$f12
    # Line 169
    lwc1	$f14,12($a4)
    # Line 170
    madd.s	$f10,$f10,$f16,$f13
    # Line 171
    lwc1	$f16,4($a4)
    # Line 172
    madd.s	$f1,$f1,$f15,$f14
    # Line 173
    lwc1	$f17,8($a4)
    # Line 174
    madd.s	$f4,$f4,$f15,$f16
    # Line 175
    lwc1	$f18,0($a4)
    # Line 176
    madd.s	$f7,$f7,$f15,$f17
    # Line 177
    lwc1	$f19,1720($t2)
    # Line 178
    madd.s	$f10,$f10,$f15,$f18
    # Line 179
    lwc1	$f0,1728($t2)
    # Line 180
    recip.s	$f2,$f1
    # Line 181
    swc1	$f1,124($a1)
    # Line 182
    neg.s	$f3,$f1
    # Line 183
    lwc1	$f5,1736($t2)
    # Line 184
    c.lt.s $f4,$f3
    # Line 185
    swc1	$f4,116($a1)
    # Line 186
    c.lt.s $f1,$f4
    # Line 187
    swc1	$f7,120($a1)
    # Line 188
    c.lt.s $f10,$f3
    # Line 189
    swc1	$f10,112($a1)
    # Line 190
    c.lt.s $f1,$f10
    # Line 191
    lwc1	$f6,1724($t2)
    # Line 192
    c.lt.s $f7,$f3
    # Line 193
    lwc1	$f8,1732($t2)
    # Line 194
    c.lt.s $f1,$f7
    # Line 195
    lwc1	$f9,1740($t2)
    # Line 196
    mul.s	$f10,$f10,$f19
    # Line 197
    sw	$zero,0($a1)
    # Line 198
    mul.s	$f4,$f4,$f0
    # Line 199
    cfc1	$v0,c1_fcsr
    # Line 200
    mul.s	$f7,$f7,$f5
    # Line 201
    lw	$a5,11980($t2)
    # Line 202
    lui	$a6,0x3f80
    # Line 203
    lw	$t9,11948($t2)
    # Line 204
    move	$a0,$t2
    # Line 205
    srl	$v0,$v0,0x19
    # Line 206
    sw	$a5,12($a1)
    # Line 207
    madd.s	$f10,$f6,$f10,$f2
    # Line 208
    sw	$a6,28($a1)
    # Line 209
    madd.s	$f4,$f8,$f4,$f2
    # Line 210
    andi	$v0,$v0,0x3f
    # Line 211
    madd.s	$f7,$f9,$f7,$f2
    # Line 212
    ldc1	$f11,208($t2)
    # Line 213
    sw	$v0,4($a1)
    # Line 214
    swc1	$f2,140($a1)
    # Line 215
    lw	$a7,216($t2)
    # Line 216
    swc1	$f10,128($a1)
    # Line 217
    swc1	$f4,132($a1)
    # Line 218
    swc1	$f7,136($a1)
    # Line 219
    sdc1	$f11,32($a1)
    # Line 220
    jr	$t9
    # Line 221
    sw	$a7,40($a1)
.end __glcrmim_MipsVertexInLineN3fv

# Function: __glcrmim_MipsVertexInLineC3fv
# Declared: Line 241 (Source lines: 241-322)
# Address: 0x0d979820 - 0x0d979968 (Size: 328 bytes, Frame: 0)
.globl __glcrmim_MipsVertexInLineC3fv
.ent __glcrmim_MipsVertexInLineC3fv
__glcrmim_MipsVertexInLineC3fv:
    # Line 241
    lw	$t8,4112($zero)
    # Line 242
    lwc1	$f12,0($a0)
    # Line 243
    lw	$a1,12688($t8)
    # Line 244
    lw	$t9,29660($t8)
    # Line 245
    lwc1	$f13,4($a0)
    # Line 246
    lwc1	$f14,8($a0)
    # Line 247
    addi	$v0,$t9,176
    # Line 248
    swc1	$f12,16($a1)
    # Line 249
    swc1	$f13,20($a1)
    # Line 250
    lwc1	$f15,44($v0)
    # Line 251
    lwc1	$f16,60($v0)
    # Line 252
    lwc1	$f17,36($v0)
    # Line 253
    swc1	$f14,24($a1)
    # Line 254
    madd.s	$f18,$f16,$f14,$f15
    # Line 255
    lwc1	$f19,52($v0)
    # Line 256
    lwc1	$f0,40($v0)
    # Line 257
    madd.s	$f1,$f19,$f14,$f17
    # Line 258
    lwc1	$f2,56($v0)
    # Line 259
    lwc1	$f3,32($v0)
    # Line 260
    madd.s	$f4,$f2,$f14,$f0
    # Line 261
    lwc1	$f5,48($v0)
    # Line 262
    lwc1	$f6,28($v0)
    # Line 263
    madd.s	$f7,$f5,$f14,$f3
    # Line 264
    lwc1	$f8,20($v0)
    # Line 265
    madd.s	$f18,$f18,$f13,$f6
    # Line 266
    lwc1	$f9,24($v0)
    # Line 267
    madd.s	$f1,$f1,$f13,$f8
    # Line 268
    lwc1	$f10,16($v0)
    # Line 269
    madd.s	$f4,$f4,$f13,$f9
    # Line 270
    lwc1	$f11,12($v0)
    # Line 271
    madd.s	$f7,$f7,$f13,$f10
    # Line 272
    lwc1	$f13,4($v0)
    # Line 273
    madd.s	$f18,$f18,$f12,$f11
    # Line 274
    lwc1	$f14,8($v0)
    # Line 275
    madd.s	$f1,$f1,$f12,$f13
    # Line 276
    lwc1	$f15,0($v0)
    # Line 277
    madd.s	$f4,$f4,$f12,$f14
    # Line 278
    lwc1	$f16,1720($t8)
    # Line 279
    madd.s	$f7,$f7,$f12,$f15
    # Line 280
    lwc1	$f17,1728($t8)
    # Line 281
    recip.s	$f19,$f18
    # Line 282
    swc1	$f18,124($a1)
    # Line 283
    neg.s	$f0,$f18
    # Line 284
    lwc1	$f2,1736($t8)
    # Line 285
    c.lt.s $f1,$f0
    # Line 286
    swc1	$f1,116($a1)
    # Line 287
    c.lt.s $f18,$f1
    # Line 288
    swc1	$f4,120($a1)
    # Line 289
    c.lt.s $f7,$f0
    # Line 290
    swc1	$f7,112($a1)
    # Line 291
    c.lt.s $f18,$f7
    # Line 292
    lwc1	$f3,1724($t8)
    # Line 293
    c.lt.s $f4,$f0
    # Line 294
    lwc1	$f5,1732($t8)
    # Line 295
    c.lt.s $f18,$f4
    # Line 296
    lwc1	$f6,1740($t8)
    # Line 297
    mul.s	$f7,$f7,$f16
    # Line 298
    sw	$zero,0($a1)
    # Line 299
    mul.s	$f1,$f1,$f17
    # Line 300
    cfc1	$v0,c1_fcsr
    # Line 301
    mul.s	$f4,$f4,$f2
    # Line 302
    lw	$v1,11980($t8)
    # Line 303
    lui	$a2,0x3f80
    # Line 304
    lw	$t9,11948($t8)
    # Line 305
    move	$a0,$t8
    # Line 306
    ldc1	$f8,192($t8)
    # Line 307
    srl	$v0,$v0,0x19
    # Line 308
    sw	$v1,12($a1)
    # Line 309
    madd.s	$f7,$f3,$f7,$f19
    # Line 310
    sw	$a2,28($a1)
    # Line 311
    madd.s	$f1,$f5,$f1,$f19
    # Line 312
    andi	$v0,$v0,0x3f
    # Line 313
    madd.s	$f4,$f6,$f4,$f19
    # Line 314
    ldc1	$f9,200($t8)
    # Line 315
    sw	$v0,4($a1)
    # Line 316
    swc1	$f19,140($a1)
    # Line 317
    swc1	$f7,128($a1)
    # Line 318
    swc1	$f1,132($a1)
    # Line 319
    sdc1	$f8,144($a1)
    # Line 320
    sdc1	$f9,152($a1)
    # Line 321
    jr	$t9
    # Line 322
    swc1	$f4,136($a1)
.end __glcrmim_MipsVertexInLineC3fv

