# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME/crm_aalineasm.ma
# Category: CRIME
# Compiler Options: 
# Total Functions: 1

.text

# Function: __glCrmAntiAliasLineRGB
# Declared: Line 64 (Source lines: 64-414)
# Address: 0x0d933200 - 0x0d9336ac (Size: 1196 bytes, Frame: 0)
.globl __glCrmAntiAliasLineRGB
.ent __glCrmAntiAliasLineRGB
__glCrmAntiAliasLineRGB:
    # Line 64
    lw	$v0,32116($a0)
    # Line 67
    lwc1	$f0,128($a2)
    # Line 68
    lwc1	$f1,128($a1)
    # Line 69
    lwc1	$f2,132($a2)
    # Line 70
    lwc1	$f3,132($a1)
    # Line 71
    sub.s	$f4,$f1,$f0
    # Line 72
    sw	$ra,32096($a0)
    # Line 73
    sub.s	$f5,$f3,$f2
    # Line 74
    lw	$v1,32184($a0)
    # Line 75
    ld	$a3,128($a2)
    # Line 76
    ld	$t0,128($a1)
    # Line 77
    abs.s	$f6,$f4
    # Line 78
    lwc1	$f7,32028($a0)
    # Line 79
    abs.s	$f8,$f5
    # Line 80
    sw	$v0,8288($v1)
    # Line 81
    c.le.s	$f8,$f6
    # Line 83
    bc1f	.L0d933260
    # Line 84
    mfc1	$t1,$f6
    # Line 85
    mov.s	$f9,$f5
    # Line 86
    addiu	$t2,$v1,8440
    # Line 87
    bnezl	$t1,.L0d93326c
    # Line 88
    recip.s	$f10,$f4
    # Line 91
    jr	$ra
    # Line 92
    nop
.L0d933260:
    # Line 94
    recip.s	$f10,$f5
    # Line 95
    addiu	$t2,$v1,8432
    # Line 96
    mov.s	$f9,$f4
.L0d93326c:
    # Line 108
    sd	$a3,8320($v1)
    # Line 109
    mul.s	$f11,$f9,$f7
    # Line 110
    lw	$t3,8($a2)
    # Line 111
    mfc1	$a4,$f0
    # Line 112
    lw	$a5,8($a1)
    # Line 113
    mfc1	$a6,$f2
    # Line 114
    ld	$a7,0($t3)
    # Line 115
    lw	$t8,30436($a0)
    # Line 116
    mtc1	$zero,$f12
    # Line 117
    lui	$t9,0x2
    # Line 118
    andi	$v0,$t8,0x2004
    # Line 119
    sd	$t0,8328($v1)
    # Line 120
    sd	$zero,0($t2)
    # Line 121
    and	$a3,$t8,$t9
    # Line 124
    bc1f	.L0d933304
    # Line 125
    li	$t0,-64
    # Line 126
    mfc1	$t1,$f1
    # Line 127
    c.lt.s $f4,$f12
    # Line 128
    sll	$t9,$a6,0x8
    # Line 129
    sd	$zero,16($t2)
    # Line 130
    mul.s	$f13,$f11,$f10
    # Line 131
    addiu	$t2,$a4,32
    # Line 132
    addiu	$a6,$a4,31
    # Line 133
    movf	$a6,$t2,$fcc4
    # Line 134
    and	$a6,$a6,$t0
    # Line 135
    subu	$t8,$a6,$a4
    # Line 137
    trunc.w.s	$f13,$f13
    # Line 138
    andi	$a4,$t2,0x3f
    # Line 139
    addiu	$a6,$t1,32
    # Line 140
    ld	$t0,0($a5)
    # Line 141
    mfc1	$t1,$f13
    # Line 142
    andi	$a6,$a6,0x3f
    # Line 143
    multu	$t8,$t1
    # Line 145
    bc1t .L0d93335c
    # Line 146
    li	$t2,64
    # Line 147
    subu	$a4,$t2,$a4
    # Line 148
    b	.L0d933364
    # Line 149
    movz	$a6,$t2,$a6
.L0d933304:
    # Line 152
    mfc1	$t1,$f3
    # Line 153
    c.lt.s $f5,$f12
    # Line 154
    sll	$t9,$a4,0x8
    # Line 155
    sd	$zero,16($t2)
    # Line 156
    mul.s	$f14,$f11,$f10
    # Line 157
    addiu	$t2,$a6,32
    # Line 158
    addiu	$a4,$a6,31
    # Line 159
    movf	$a4,$t2,$fcc5
    # Line 160
    and	$a4,$a4,$t0
    # Line 161
    subu	$t8,$a4,$a6
    # Line 163
    trunc.w.s	$f14,$f14
    # Line 164
    andi	$a4,$t2,0x3f
    # Line 165
    addiu	$a6,$t1,32
    # Line 166
    ld	$t0,0($a5)
    # Line 167
    mfc1	$t1,$f14
    # Line 168
    andi	$a6,$a6,0x3f
    # Line 169
    multu	$t8,$t1
    # Line 171
    bc1t .L0d93335c
    # Line 172
    li	$t2,64
    # Line 173
    subu	$a4,$t2,$a4
    # Line 174
    b	.L0d933364
    # Line 175
    movz	$a6,$t2,$a6
.L0d93335c:
    # Line 180
    subu	$a6,$t2,$a6
    # Line 181
    movz	$a4,$t2,$a4
.L0d933364:
    # Line 185
    mflo	$t8
    # Line 186
    sra	$t8,$t8,0x6
    # Line 187
    beqz	$a3,.L0d93355c
    # Line 188
    addu	$t9,$t9,$t8
    # Line 189
    ld	$a3,8($t3)
    # Line 190
    ld	$t2,8($a5)
    # Line 191
    bne	$a7,$t0,.L0d933450
    # Line 192
    lw	$a7,32176($a0)
    # Line 193
    bne	$a3,$t2,.L0d933450
    # Line 194
    dsll32	$t8,$t1,0x10
    # Line 197
    andi	$t9,$t9,0xffff
    # Line 198
    bnez	$a7,.L0d9333b4
    # Line 199
    dsll32	$t9,$t9,0x0
    # Line 200
    or	$t8,$t8,$t9
    # Line 201
    sll	$t9,$a4,0x8
    # Line 202
    or	$t9,$t9,$a6
    # Line 203
    bnez	$v0,.L0d9335dc
    # Line 204
    or	$t8,$t8,$t9
    # Line 205
    jr	$ra
    # Line 206
    sd	$t8,10640($v1)
.L0d9333b4:
    # Line 209
    lwc1	$f15,0($t3)
    # Line 210
    lwc1	$f16,32016($a0)
    # Line 211
    lwc1	$f17,4($t3)
    # Line 212
    lwc1	$f18,8($t3)
    # Line 213
    mul.s	$f19,$f15,$f16
    # Line 214
    lwc1	$f0,12($t3)
    # Line 215
    mul.s	$f1,$f17,$f16
    # Line 216
    lw	$a3,32188($a0)
    # Line 217
    mul.s	$f2,$f18,$f16
    # Line 218
    andi	$a7,$a7,0x2
    # Line 219
    mul.s	$f3,$f0,$f16
    # Line 220
    sw	$a7,32176($a0)
    # Line 221
    trunc.w.s	$f19,$f19
    # Line 222
    or	$t8,$t8,$t9
    # Line 223
    trunc.w.s	$f1,$f1
    # Line 224
    sd	$zero,8432($v1)
    # Line 225
    sd	$zero,8432($a3)
    # Line 226
    trunc.w.s	$f2,$f2
    # Line 227
    sd	$zero,8440($v1)
    # Line 228
    sd	$zero,8440($a3)
    # Line 229
    trunc.w.s	$f3,$f3
    # Line 230
    sd	$zero,8448($v1)
    # Line 231
    sd	$zero,8448($a3)
    # Line 232
    sd	$zero,8456($v1)
    # Line 233
    sd	$zero,8456($a3)
    # Line 234
    swc1	$f19,8416($v1)
    # Line 235
    swc1	$f19,8416($a3)
    # Line 236
    sll	$a5,$a4,0x8
    # Line 237
    swc1	$f1,8420($v1)
    # Line 238
    swc1	$f1,8420($a3)
    # Line 239
    or	$a5,$a5,$a6
    # Line 240
    swc1	$f2,8424($v1)
    # Line 241
    swc1	$f2,8424($a3)
    # Line 242
    or	$t8,$t8,$a5
    # Line 243
    swc1	$f3,8428($a3)
    # Line 244
    bnez	$v0,.L0d9335dc
    # Line 245
    swc1	$f3,8428($v1)
    # Line 246
    jr	$ra
    # Line 247
    sd	$t8,10640($v1)
.L0d933450:
    # Line 250
    lwc1	$f4,32016($a0)
    # Line 251
    lwc1	$f5,0($t3)
    # Line 252
    lwc1	$f6,0($a5)
    # Line 253
    mul.s	$f4,$f4,$f10
    # Line 254
    lwc1	$f7,4($t3)
    # Line 255
    lwc1	$f8,4($a5)
    # Line 256
    sub.s	$f6,$f6,$f5
    # Line 257
    lwc1	$f9,8($t3)
    # Line 258
    lwc1	$f11,8($a5)
    # Line 259
    sub.s	$f8,$f8,$f7
    # Line 260
    lwc1	$f12,12($t3)
    # Line 261
    lwc1	$f13,12($a5)
    # Line 262
    sub.s	$f11,$f11,$f9
    # Line 263
    dsll32	$t8,$t1,0x10
    # Line 264
    sub.s	$f13,$f13,$f12
    # Line 265
    andi	$t9,$t9,0xffff
    # Line 266
    mul.s	$f6,$f6,$f4
    # Line 267
    dsll32	$t9,$t9,0x0
    # Line 268
    mul.s	$f8,$f8,$f4
    # Line 269
    or	$t8,$t8,$t9
    # Line 270
    mul.s	$f11,$f11,$f4
    # Line 271
    sll	$t9,$a4,0x8
    # Line 272
    mul.s	$f13,$f13,$f4
    # Line 273
    or	$t9,$t9,$a6
    # Line 274
    trunc.w.s	$f6,$f6
    # Line 275
    lwc1	$f14,32016($a0)
    # Line 276
    trunc.w.s	$f8,$f8
    # Line 277
    addiu	$sp,$sp,-48
    # Line 278
    trunc.w.s	$f11,$f11
    # Line 279
    or	$t8,$t8,$t9
    # Line 280
    trunc.w.s	$f13,$f13
    # Line 281
    swc1	$f6,16($sp)
    # Line 282
    mul.s	$f15,$f5,$f14
    # Line 283
    swc1	$f8,20($sp)
    # Line 284
    mul.s	$f16,$f7,$f14
    # Line 285
    swc1	$f11,24($sp)
    # Line 286
    mul.s	$f17,$f9,$f14
    # Line 287
    swc1	$f13,28($sp)
    # Line 288
    mul.s	$f18,$f12,$f14
    # Line 289
    ld	$t3,16($sp)
    # Line 290
    trunc.w.s	$f15,$f15
    # Line 291
    ld	$a5,24($sp)
    # Line 292
    trunc.w.s	$f16,$f16
    # Line 293
    ori	$a7,$a7,0x1
    # Line 294
    trunc.w.s	$f17,$f17
    # Line 295
    sw	$a7,32176($a0)
    # Line 296
    trunc.w.s	$f18,$f18
    # Line 297
    swc1	$f15,16($sp)
    # Line 298
    swc1	$f16,20($sp)
    # Line 299
    swc1	$f17,24($sp)
    # Line 300
    swc1	$f18,28($sp)
    # Line 301
    ld	$t0,16($sp)
    # Line 302
    ld	$t1,24($sp)
    # Line 303
    sd	$t0,8416($v1)
    # Line 304
    sd	$t1,8424($v1)
    # Line 305
    bc1f	.L0d933548
    # Line 306
    addiu	$sp,$sp,48
    # Line 307
    sd	$t3,8432($v1)
    # Line 308
    bnez	$v0,.L0d9335dc
    # Line 309
    sd	$a5,8448($v1)
    # Line 310
    jr	$ra
    # Line 311
    sd	$t8,10640($v1)
.L0d933548:
    # Line 314
    sd	$t3,8440($v1)
    # Line 315
    bnez	$v0,.L0d9335dc
    # Line 316
    sd	$a5,8456($v1)
    # Line 317
    jr	$ra
    # Line 318
    sd	$t8,10640($v1)
.L0d93355c:
    # Line 323
    addiu	$t2,$a0,32767
    lw	$t2,125($t2)
    # Line 324
    andi	$t9,$t9,0xffff
    # Line 325
    dsll32	$t8,$t1,0x10
    # Line 326
    dsll32	$t9,$t9,0x0
    # Line 327
    lwc1	$f19,0($a5)
    # Line 328
    or	$t8,$t8,$t9
    # Line 329
    sll	$t3,$a4,0x8
    # Line 330
    or	$t3,$t3,$a6
    # Line 331
    lwc1	$f0,4($a5)
    # Line 332
    or	$t8,$t8,$t3
    # Line 333
    andi	$t2,$t2,0x2
    # Line 334
    bnez	$t2,.L0d9335dc
    # Line 335
    lwc1	$f1,8($a5)
    # Line 336
    trunc.w.s	$f19,$f19
    # Line 337
    lwc1	$f2,12($a5)
    # Line 338
    trunc.w.s	$f0,$f0
    # Line 339
    trunc.w.s	$f1,$f1
    # Line 340
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 341
    trunc.w.s	$f2,$f2
    # Line 342
    mfc1	$t9,$f19
    # Line 343
    mfc1	$a3,$f0
    # Line 344
    mfc1	$t0,$f1
    # Line 345
    mfc1	$t1,$f2
    # Line 346
    sll	$t9,$t9,0x18
    # Line 347
    sll	$a3,$a3,0x10
    # Line 348
    sll	$t0,$t0,0x8
    # Line 349
    or	$t1,$t1,$t9
    # Line 350
    or	$t1,$t1,$a3
    # Line 351
    or	$t1,$t1,$t0
    # Line 352
    sw	$t1,8400($v1)
.L0d9335dc:
    # Line 356
    beqz	$v0,.L0d9336a4
    # Line 357
    andi	$t2,$v0,0x4
    # Line 358
    beqz	$t2,.L0d933654
    # Line 359
    andi	$t3,$v0,0x2000
    # Line 360
    lwc1	$f3,136($a2)
    # Line 361
    lwc1	$f4,136($a1)
    # Line 362
    lwc1	$f5,128($a2)
    # Line 363
    lwc1	$f6,132($a2)
    # Line 364
    sub.s	$f7,$f4,$f3
    # Line 365
    movf.s	$f5,$f6,$fcc0
    # Line 366
    trunc.w.s	$f8,$f5
    # Line 367
    mul.s	$f7,$f7,$f10
    # Line 368
    lwc1	$f9,32024($a0)
    # Line 369
    cvt.s.w	$f8,$f8
    # Line 370
    mul.s	$f11,$f7,$f9
    # Line 371
    sub.s	$f5,$f5,$f8
    # Line 372
    trunc.l.s	$f11,$f11
    # Line 373
    bc1f	.L0d933640
    # Line 374
    madd.s	$f12,$f3,$f7,$f5
    # Line 375
    sd	$zero,8664($v1)
    # Line 376
    mul.s	$f12,$f12,$f9
    # Line 377
    sdc1	$f11,8656($v1)
    # Line 378
    trunc.l.s	$f12,$f12
    # Line 379
    b	.L0d933654
    # Line 380
    sdc1	$f12,8648($v1)
.L0d933640:
    # Line 382
    sd	$zero,8656($v1)
    # Line 383
    mul.s	$f12,$f12,$f9
    # Line 384
    sdc1	$f11,8664($v1)
    # Line 385
    trunc.l.s	$f12,$f12
    # Line 386
    sdc1	$f12,8648($v1)
.L0d933654:
    # Line 390
    beqz	$t3,.L0d9336a4
    # Line 391
    lwc1	$f13,176($a2)
    # Line 392
    lwc1	$f14,176($a1)
    # Line 393
    lui	$t9,0x437f
    # Line 394
    mtc1	$t9,$f15
    # Line 395
    lwc1	$f16,32016($a0)
    # Line 396
    mul.s	$f17,$f13,$f15
    # Line 397
    mul.s	$f18,$f10,$f16
    # Line 398
    msub.s	$f19,$f17,$f14,$f15
    # Line 399
    mul.s	$f17,$f17,$f16
    # Line 400
    mul.s	$f19,$f19,$f18
    # Line 401
    trunc.w.s	$f17,$f17
    # Line 402
    trunc.w.s	$f19,$f19
    # Line 403
    bc1f	.L0d93369c
    # Line 404
    swc1	$f17,8568($v1)
    # Line 405
    sw	$zero,8584($v1)
    # Line 406
    b	.L0d9336a4
    # Line 407
    swc1	$f19,8576($v1)
.L0d93369c:
    # Line 409
    sw	$zero,8576($v1)
    # Line 410
    swc1	$f19,8584($v1)
.L0d9336a4:
    # Line 413
    jr	$ra
    # Line 414
    sd	$t8,10640($v1)
.end __glCrmAntiAliasLineRGB

