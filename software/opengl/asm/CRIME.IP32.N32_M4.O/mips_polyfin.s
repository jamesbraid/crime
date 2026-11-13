# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME.IP32.N32_M4.O/mips_polyfin.s
# Category: CRIME.IP32.N32_M4.O
# Compiler Options: 
# Total Functions: 5

.text

# Function: __glEvenTStripVertex
# Declared: Line 90 (Source lines: 90-129)
# Address: 0x0d9344e0 - 0x0d934568 (Size: 136 bytes, Frame: 0)
.globl __glEvenTStripVertex
.ent __glEvenTStripVertex
__glEvenTStripVertex:
    # Line 90
    lw	$a2,12692($a0)
    # Line 91
    lw	$a3,12696($a0)
    # Line 92
    li	$v0,1
    # Line 93
    sb	$zero,29848($a0)
    # Line 94
    sb	$v0,184($a1)
    # Line 96
    lw	$v1,4($a1)
    # Line 97
    lw	$t0,4($a2)
    # Line 98
    lw	$t1,4($a3)
    # Line 99
    sw	$a1,28072($a0)
    # Line 100
    or	$a4,$v1,$t0
    # Line 101
    lw	$t2,11968($a0)
    # Line 102
    or	$a4,$a4,$t1
    # Line 103
    bnez	$a4,.L0d93452c
    # Line 104
    sw	$t2,11948($a0)
    # Line 105
    lw	$t9,12076($a0)
    # Line 106
    sw	$a3,12688($a0)
    # Line 107
    sw	$a2,12696($a0)
    # Line 108
    jr	$t9
    # Line 109
    sw	$a1,12692($a0)
.L0d93452c:
    # Line 112
    sw	$a3,12688($a0)
    # Line 114
    and	$t3,$v1,$t0
    # Line 115
    and	$t3,$t3,$t1
    # Line 116
    sw	$a1,12692($a0)
    # Line 117
    bnez	$t3,.L0d934560
    # Line 118
    sw	$a2,12696($a0)
    # Line 119
    lw	$t9,12088($a0)
    # Line 120
    addiu	$sp,$sp,-64
    # Line 121
    sw	$ra,40($sp)
    # Line 122
    jalr	$t9
    # Line 123
    sw	$a4,16($sp)
    # Line 125
    lw	$ra,40($sp)
    # Line 126
    addiu	$sp,$sp,64
.L0d934560:
    # Line 128
    jr	$ra
    # Line 129
    nop
.end __glEvenTStripVertex

# Function: __glOddTStripVertex
# Declared: Line 140 (Source lines: 140-177)
# Address: 0x0d934568 - 0x0d9345f0 (Size: 136 bytes, Frame: 0)
.globl __glOddTStripVertex
.ent __glOddTStripVertex
__glOddTStripVertex:
    # Line 140
    lw	$a3,12692($a0)
    # Line 141
    lw	$a2,12696($a0)
    # Line 142
    li	$a4,1
    # Line 143
    sb	$zero,29848($a0)
    # Line 144
    sb	$a4,184($a1)
    # Line 145
    lw	$a5,4($a1)
    # Line 146
    lw	$a6,4($a3)
    # Line 147
    lw	$a7,4($a2)
    # Line 148
    sw	$a1,28072($a0)
    # Line 149
    or	$a4,$a5,$a6
    # Line 150
    lw	$t8,11972($a0)
    # Line 151
    or	$a4,$a4,$a7
    # Line 152
    bnez	$a4,.L0d9345b4
    # Line 153
    sw	$t8,11948($a0)
    # Line 154
    lw	$t9,12076($a0)
    # Line 155
    sw	$a2,12688($a0)
    # Line 156
    sw	$a3,12696($a0)
    # Line 157
    jr	$t9
    # Line 158
    sw	$a1,12692($a0)
.L0d9345b4:
    # Line 161
    sw	$a2,12688($a0)
    # Line 162
    and	$t9,$a5,$a6
    # Line 163
    and	$t9,$t9,$a7
    # Line 164
    sw	$a1,12692($a0)
    # Line 165
    bnez	$t9,.L0d9345e8
    # Line 166
    sw	$a3,12696($a0)
    # Line 167
    lw	$t9,12088($a0)
    # Line 168
    addiu	$sp,$sp,-64
    # Line 169
    sw	$ra,40($sp)
    # Line 170
    jalr	$t9
    # Line 171
    sw	$a4,16($sp)
    # Line 173
    lw	$ra,40($sp)
    # Line 174
    addiu	$sp,$sp,64
.L0d9345e8:
    # Line 176
    jr	$ra
    # Line 177
    nop
.end __glOddTStripVertex

# Function: __glEvenTStripVertexFast
# Declared: Line 189 (Source lines: 189-231)
# Address: 0x0d9345f0 - 0x0d934664 (Size: 116 bytes, Frame: 0)
.globl __glEvenTStripVertexFast
.ent __glEvenTStripVertexFast
__glEvenTStripVertexFast:
    # Line 189
    lw	$a2,12692($a0)
    # Line 190
    lw	$a3,12696($a0)
    # Line 192
    lw	$v1,4($a2)
    # Line 193
    lw	$t0,4($a3)
    # Line 194
    lw	$t1,11968($a0)
    # Line 195
    or	$a4,$v0,$v1
    # Line 196
    lw	$t9,12076($a0)
    # Line 197
    or	$a4,$a4,$t0
    # Line 198
    bnez	$a4,.L0d934628
    # Line 199
    sw	$t1,11948($a0)
    # Line 200
    sw	$a3,12688($a0)
    # Line 201
    sw	$a2,12696($a0)
    # Line 202
    jr	$t9
    # Line 203
    sw	$a1,12692($a0)
.L0d934628:
    # Line 206
    sw	$a3,12688($a0)
    # Line 208
    and	$t2,$v0,$v1
    # Line 209
    and	$t2,$t2,$t0
    # Line 210
    sw	$a1,12692($a0)
    # Line 211
    bnez	$t2,.L0d93465c
    # Line 212
    sw	$a2,12696($a0)
    # Line 213
    lw	$t9,12088($a0)
    # Line 214
    addiu	$sp,$sp,-64
    # Line 215
    sw	$ra,40($sp)
    # Line 216
    jalr	$t9
    # Line 217
    sw	$a4,16($sp)
    # Line 219
    lw	$ra,40($sp)
    # Line 220
    addiu	$sp,$sp,64
.L0d93465c:
    # Line 230
    jr	$ra
    # Line 231
    nop
.end __glEvenTStripVertexFast

# Function: __glOddTStripVertexFast
# Declared: Line 242 (Source lines: 242-274)
# Address: 0x0d934664 - 0x0d9346d8 (Size: 116 bytes, Frame: 0)
.globl __glOddTStripVertexFast
.ent __glOddTStripVertexFast
__glOddTStripVertexFast:
    # Line 242
    lw	$a3,12692($a0)
    # Line 243
    lw	$a2,12696($a0)
    # Line 244
    lw	$t3,4($a3)
    # Line 245
    lw	$a5,4($a2)
    # Line 246
    lw	$a6,11972($a0)
    # Line 247
    or	$a4,$v0,$t3
    # Line 248
    lw	$t9,12076($a0)
    # Line 249
    or	$a4,$a4,$a5
    # Line 250
    bnez	$a4,.L0d93469c
    # Line 251
    sw	$a6,11948($a0)
    # Line 252
    sw	$a2,12688($a0)
    # Line 253
    sw	$a3,12696($a0)
    # Line 254
    jr	$t9
    # Line 255
    sw	$a1,12692($a0)
.L0d93469c:
    # Line 258
    sw	$a2,12688($a0)
    # Line 259
    and	$a7,$v0,$t3
    # Line 260
    and	$a7,$a7,$a5
    # Line 261
    sw	$a1,12692($a0)
    # Line 262
    bnez	$a7,.L0d9346d0
    # Line 263
    sw	$a3,12696($a0)
    # Line 264
    lw	$t9,12088($a0)
    # Line 265
    addiu	$sp,$sp,-64
    # Line 266
    sw	$ra,40($sp)
    # Line 267
    jalr	$t9
    # Line 268
    sw	$a4,16($sp)
    # Line 270
    lw	$ra,40($sp)
    # Line 271
    addiu	$sp,$sp,64
.L0d9346d0:
    # Line 273
    jr	$ra
    # Line 274
    nop
.end __glOddTStripVertexFast

# Function: __glFourthQuadsVertex
# Declared: Line 299 (Source lines: 299-366)
# Address: 0x0d9346d8 - 0x0d9347d4 (Size: 252 bytes, Frame: 0)
.globl __glFourthQuadsVertex
.ent __glFourthQuadsVertex
__glFourthQuadsVertex:
    # Line 299
    addiu	$sp,$sp,-96
    # Line 300
    sd	$gp,24($sp)
    lui	$gp,0x12
    daddiu	$gp,$gp,-14668
    daddu	$gp,$gp,$t9
    # Line 301
    addiu	$a2,$a0,12712
    # Line 302
    lbu	$t8,453($a0)
    # Line 303
    addiu	$a3,$a0,12904
    # Line 304
    addiu	$v0,$a0,13096
    # Line 305
    sb	$t8,184($a1)
    # Line 306
    sb	$zero,29848($a0)
    # Line 307
    sw	$a1,28072($a0)
    # Line 308
    sw	$a2,12688($a0)
    # Line 309
    la	$v1,__glFirstQuadsVertex
    # Line 310
    lw	$t0,4($a1)
    # Line 311
    lw	$t1,4($a2)
    # Line 312
    lw	$t2,4($a3)
    # Line 313
    lw	$t3,4($v0)
    # Line 314
    sw	$v1,11948($a0)
    # Line 315
    or	$a4,$t0,$t1
    # Line 316
    or	$a5,$t2,$t3
    # Line 317
    or	$a6,$a4,$a5
    # Line 318
    bnez	$a6,.L0d93478c
    # Line 319
    lbu	$a7,184($a3)
    # Line 320
    sb	$zero,184($a3)
    # Line 321
    lw	$t9,12072($a0)
    # Line 322
    sw	$a0,16($sp)
    # Line 323
    sw	$a1,40($sp)
    # Line 324
    sw	$a3,48($sp)
    # Line 325
    sw	$v0,56($sp)
    # Line 326
    sw	$ra,32($sp)
    # Line 327
    jalr	$t9
    # Line 328
    sb	$a7,64($sp)
    # Line 330
    lbu	$t8,64($sp)
    # Line 331
    lw	$a2,48($sp)
    # Line 332
    lw	$a0,16($sp)
    # Line 333
    lw	$a1,40($sp)
    # Line 334
    lw	$a3,56($sp)
    # Line 335
    lw	$t9,12072($a0)
    # Line 336
    sb	$t8,184($a2)
    # Line 337
    sb	$zero,184($a1)
    # Line 338
    lw	$ra,32($sp)
    # Line 339
    ld	$gp,24($sp)
    # Line 340
    jr	$t9
    # Line 341
    addiu	$sp,$sp,96
.L0d93478c:
    # Line 345
    and	$t9,$t0,$t1
    # Line 346
    and	$v1,$t2,$t3
    # Line 347
    and	$t0,$t9,$v1
    # Line 348
    bnez	$t0,.L0d9347c8
    # Line 349
    sw	$a2,72($sp)
    # Line 350
    sw	$a3,76($sp)
    # Line 351
    sw	$v0,80($sp)
    # Line 352
    sw	$a1,84($sp)
    # Line 353
    # lw $t9, -25232($gp) # &__glDoPolygonClip
    # Line 354
    sw	$ra,32($sp)
    # Line 355
    addiu	$a1,$sp,72
    # Line 356
    li	$a2,4
    # Line 357
    jal	__glDoPolygonClip
    # Line 358
    move	$a3,$a6
    # Line 361
    lw	$ra,32($sp)
.L0d9347c8:
    # Line 364
    ld	$gp,24($sp)
    # Line 365
    jr	$ra
    # Line 366
    addiu	$sp,$sp,96
.end __glFourthQuadsVertex

