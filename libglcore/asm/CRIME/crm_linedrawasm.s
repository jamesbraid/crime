# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME/crm_linedrawasm.ma
# Category: CRIME
# Compiler Options: 
# Total Functions: 7

.text

# Function: __glCrmColorOptLine
# Declared: Line 63 (Source lines: 63-76)
# Address: 0x0d937d20 - 0x0d937d54 (Size: 52 bytes, Frame: 0)
.globl __glCrmColorOptLine
.ent __glCrmColorOptLine
__glCrmColorOptLine:
    # Line 63
    lw	$v0,32116($a0)
    # Line 64
    lw	$v1,32096($a0)
    # Line 65
    lw	$a3,32184($a0)
    # Line 66
    beq	$v0,$v1,.L0d937d44
    # Line 67
    ldc1	$f0,128($a1)
    # Line 68
    lw	$t0,32188($a0)
    # Line 69
    sw	$v0,8288($a3)
    # Line 70
    sw	$v0,8288($t0)
    # Line 71
    sw	$v0,32096($a0)
.L0d937d44:
    # Line 73
    ldc1	$f1,128($a2)
    # Line 74
    sdc1	$f0,8320($a3)
    # Line 75
    jr	$ra
    # Line 76
    sdc1	$f1,10376($a3)
.end __glCrmColorOptLine

# Function: __glCrmStippledColorOptLine
# Declared: Line 89 (Source lines: 89-187)
# Address: 0x0d937d54 - 0x0d937ea4 (Size: 336 bytes, Frame: 0)
.globl __glCrmStippledColorOptLine
.ent __glCrmStippledColorOptLine
__glCrmStippledColorOptLine:
    # Line 89
    lwc1	$f2,128($a1)
    # Line 90
    lwc1	$f3,128($a2)
    # Line 91
    lwc1	$f4,132($a1)
    # Line 92
    lwc1	$f5,132($a2)
    # Line 93
    sub.s	$f6,$f3,$f2
    # Line 94
    lwc1	$f7,3544($a0)
    # Line 95
    sub.s	$f8,$f5,$f4
    # Line 96
    lw	$t1,32116($a0)
    # Line 97
    lw	$t2,32096($a0)
    # Line 98
    lw	$t3,32184($a0)
    # Line 99
    abs.s	$f9,$f6
    # Line 100
    abs.s	$f10,$f8
    # Line 101
    c.lt.s	$f9,$f10
    # Line 102
    bc1t	.L0d937da0
    # Line 103
    mfc1	$a4,$f9
    # Line 104
    li	$a5,1
    # Line 105
    movz.s	$f6,$f7,$a4
    # Line 106
    b	.L0d937da8
    # Line 107
    div.s	$f11,$f8,$f6
.L0d937da0:
    # Line 110
    mov.s	$f11,$f7
    # Line 111
    li	$a5,0
.L0d937da8:
    # Line 114
    beq	$t1,$t2,.L0d937dc0
    # Line 115
    ldc1	$f12,128($a1)
    # Line 116
    lw	$a6,32188($a0)
    # Line 117
    sw	$t1,8288($t3)
    # Line 118
    sw	$t1,8288($a6)
    # Line 119
    sw	$t1,32096($a0)
.L0d937dc0:
    # Line 122
    lbu	$a7,29848($a0)
    # Line 123
    ldc1	$f13,128($a2)
    # Line 124
    lw	$t8,32108($a0)
    # Line 125
    bnez	$a7,.L0d937dec
    # Line 126
    lw	$t9,32112($a0)
    # Line 127
    li	$v0,1
    # Line 128
    lw	$v1,32188($a0)
    # Line 129
    sw	$t8,8388($t3)
    # Line 130
    sw	$t8,8388($v1)
    # Line 131
    sw	$t9,8384($t3)
    # Line 132
    sb	$v0,29848($a0)
.L0d937dec:
    # Line 135
    beqz	$a5,.L0d937e9c
    # Line 136
    sdc1	$f12,8320($t3)
    # Line 137
    lui	$a0,0x42fe
    # Line 138
    mtc1	$a0,$f14
    # Line 139
    mtc1	$zero,$f15
    # Line 140
    c.lt.s	$f9,$f14
    # Line 141
    bc1t	.L0d937e9c
    # Line 142
    mov.s	$f16,$f3
    # Line 144
    c.lt.s	$f6,$f15
    # Line 145
    bc1t	.L0d937e58
    # Line 146
    add.s	$f17,$f2,$f14
    # Line 147
    madd.s	$f18,$f4,$f14,$f11
.L0d937e1c:
    # Line 149
    swc1	$f2,8320($t3)
    # Line 150
    swc1	$f4,8324($t3)
    # Line 151
    swc1	$f17,8328($t3)
    # Line 152
    swc1	$f18,10380($t3)
    # Line 153
    sub.s	$f19,$f16,$f17
    # Line 154
    mov.s	$f2,$f17
    # Line 155
    mov.s	$f4,$f18
    # Line 156
    c.lt.s	$f17,$f16
    # Line 157
    c.lt.s $f19,$f14
    # Line 158
    movt.s	$f14,$f19,$fcc1
    # Line 159
    add.s	$f17,$f2,$f14
    # Line 160
    bc1t	.L0d937e1c
    # Line 161
    madd.s	$f18,$f4,$f14,$f11
    # Line 162
    jr	$ra
    # Line 163
    nop
.L0d937e58:
    # Line 166
    sub.s	$f0,$f2,$f14
    # Line 167
    nmsub.s	$f1,$f4,$f14,$f11
.L0d937e60:
    # Line 169
    swc1	$f2,8320($t3)
    # Line 170
    swc1	$f4,8324($t3)
    # Line 171
    swc1	$f0,8328($t3)
    # Line 172
    swc1	$f1,10380($t3)
    # Line 173
    sub.s	$f3,$f0,$f16
    # Line 174
    mov.s	$f2,$f0
    # Line 175
    mov.s	$f4,$f1
    # Line 176
    c.lt.s	$f16,$f0
    # Line 177
    c.lt.s $f3,$f14
    # Line 178
    movt.s	$f14,$f3,$fcc1
    # Line 179
    sub.s	$f0,$f2,$f14
    # Line 180
    bc1t	.L0d937e60
    # Line 181
    nmsub.s	$f1,$f4,$f14,$f11
    # Line 182
    jr	$ra
    # Line 183
    nop
.L0d937e9c:
    # Line 186
    jr	$ra
    # Line 187
    sdc1	$f13,10376($t3)
.end __glCrmStippledColorOptLine

# Function: __glCrmSmoothRGBLine
# Declared: Line 201 (Source lines: 201-320)
# Address: 0x0d937ea4 - 0x0d938028 (Size: 388 bytes, Frame: 0)
.globl __glCrmSmoothRGBLine
.ent __glCrmSmoothRGBLine
__glCrmSmoothRGBLine:
    # Line 201
    lwc1	$f4,128($a1)
    # Line 202
    lwc1	$f5,128($a2)
    # Line 203
    lwc1	$f6,132($a1)
    # Line 204
    lwc1	$f7,132($a2)
    # Line 205
    sub.s	$f2,$f5,$f4
    # Line 206
    lw	$a3,32116($a0)
    # Line 207
    sub.s	$f4,$f7,$f6
    # Line 208
    ld	$t1,128($a1)
    # Line 209
    ld	$t2,128($a2)
    # Line 210
    lw	$t0,32184($a0)
    # Line 211
    abs.s	$f8,$f2
    # Line 212
    lw	$t3,32096($a0)
    # Line 213
    abs.s	$f9,$f4
    # Line 214
    lw	$a4,1792($a0)
    # Line 215
    c.le.s $f9,$f8
    # Line 216
    sd	$t1,8320($t0)
    # Line 217
    bc1f .L0d937f00
    # Line 218
    mfc1	$a5,$f8
    # Line 219
    addiu	$a6,$t0,8440
    # Line 220
    bnezl	$a5,.L0d937f08
    # Line 221
    recip.s	$f0,$f2
    # Line 224
    jr	$ra
    # Line 225
    nop
.L0d937f00:
    # Line 228
    recip.s	$f0,$f4
    # Line 229
    addiu	$a6,$t0,8432
.L0d937f08:
    # Line 232
    lw	$a7,8($a1)
    # Line 233
    beq	$a3,$t3,.L0d937f24
    # Line 234
    sd	$t2,8328($t0)
    # Line 235
    lw	$t8,32188($a0)
    # Line 236
    sw	$a3,8288($t0)
    # Line 237
    sw	$a3,8288($t8)
    # Line 238
    sw	$a3,32096($a0)
.L0d937f24:
    # Line 242
    andi	$a4,$a4,0x100
    # Line 243
    beqz	$a4,.L0d937f6c
    # Line 244
    lw	$t9,8($a2)
    # Line 245
    lbu	$v0,29848($a0)
    # Line 246
    lw	$v1,32108($a0)
    # Line 247
    lw	$a3,32112($a0)
    # Line 248
    bnez	$v0,.L0d937f58
    # Line 249
    li	$t1,1
    # Line 250
    lw	$t2,32188($a0)
    # Line 251
    sw	$v1,8388($t0)
    # Line 252
    sw	$v1,8388($t2)
    # Line 253
    sw	$a3,8384($t0)
    # Line 254
    sb	$t1,29848($a0)
.L0d937f58:
    # Line 263
    lui	$t3,0x42fe
    # Line 264
    mtc1	$t3,$f6
    # Line 265
    bc1f .L0d937f6c
    # Line 266
    c.lt.s	$f8,$f6
    # Line 267
    bc1f	__glCrmDepthLine
.L0d937f6c:
    # Line 272
    lwc1	$f10,0($a7)
    # Line 273
    lwc1	$f11,32020($a0)
    # Line 274
    lwc1	$f12,0($t9)
    # Line 275
    lwc1	$f13,4($a7)
    # Line 276
    lwc1	$f14,4($t9)
    # Line 277
    sub.s	$f12,$f12,$f10
    # Line 278
    lwc1	$f15,8($a7)
    # Line 279
    add.s	$f10,$f10,$f11
    # Line 280
    lwc1	$f16,8($t9)
    # Line 281
    sub.s	$f14,$f14,$f13
    # Line 282
    lwc1	$f17,12($a7)
    # Line 283
    add.s	$f13,$f13,$f11
    # Line 284
    lwc1	$f18,32016($a0)
    # Line 285
    sub.s	$f16,$f16,$f15
    # Line 286
    mfc1	$a4,$f10
    # Line 287
    add.s	$f15,$f15,$f11
    # Line 288
    lwc1	$f19,12($t9)
    # Line 289
    mul.s	$f0,$f0,$f18
    # Line 290
    sd	$zero,0($a6)
    # Line 291
    sub.s	$f19,$f19,$f17
    # Line 292
    sd	$zero,16($a6)
    # Line 293
    add.s	$f17,$f17,$f11
    # Line 294
    mfc1	$a5,$f13
    # Line 295
    mul.s	$f12,$f12,$f0
    # Line 296
    swc1	$f15,8424($t0)
    # Line 297
    mul.s	$f14,$f14,$f0
    # Line 298
    dsll32	$a4,$a4,0x0
    # Line 299
    mul.s	$f16,$f16,$f0
    # Line 300
    or	$a4,$a4,$a5
    # Line 301
    mul.s	$f19,$f19,$f0
    # Line 302
    swc1	$f17,8428($t0)
    # Line 303
    trunc.w.s	$f12,$f12
    # Line 304
    sd	$a4,8416($t0)
    # Line 305
    trunc.w.s	$f14,$f14
    # Line 306
    trunc.w.s	$f16,$f16
    # Line 307
    bc1f .L0d938014
    # Line 308
    trunc.w.s	$f19,$f19
    # Line 309
    swc1	$f12,8432($t0)
    # Line 310
    swc1	$f14,8436($t0)
    # Line 311
    swc1	$f16,8448($t0)
    # Line 312
    jr	$ra
    # Line 313
    swc1	$f19,10500($t0)
.L0d938014:
    # Line 316
    swc1	$f12,8440($t0)
    # Line 317
    swc1	$f14,8444($t0)
    # Line 318
    swc1	$f16,8456($t0)
    # Line 319
    jr	$ra
    # Line 320
    swc1	$f19,10508($t0)
.end __glCrmSmoothRGBLine

# Function: __glCrmSmoothCILine
# Declared: Line 335 (Source lines: 335-421)
# Address: 0x0d938028 - 0x0d938134 (Size: 268 bytes, Frame: 0)
.globl __glCrmSmoothCILine
.ent __glCrmSmoothCILine
__glCrmSmoothCILine:
    # Line 335
    lwc1	$f0,128($a1)
    # Line 336
    lwc1	$f1,128($a2)
    # Line 337
    lwc1	$f3,132($a1)
    # Line 338
    lwc1	$f5,132($a2)
    # Line 339
    sub.s	$f2,$f1,$f0
    # Line 340
    lwc1	$f6,3544($a0)
    # Line 341
    sub.s	$f4,$f5,$f3
    # Line 342
    lw	$v0,32116($a0)
    # Line 343
    ld	$v1,128($a1)
    # Line 344
    ld	$a3,128($a2)
    # Line 345
    lw	$t0,32184($a0)
    # Line 346
    abs.s	$f7,$f2
    # Line 347
    lw	$t1,32096($a0)
    # Line 348
    abs.s	$f8,$f4
    # Line 349
    lw	$t2,1792($a0)
    # Line 350
    c.lt.s	$f7,$f8
    # Line 351
    sd	$v1,8320($t0)
    # Line 352
    bc1t	.L0d938084
    # Line 353
    mfc1	$t3,$f7
    # Line 354
    li	$a4,1
    # Line 355
    movz.s	$f2,$f6,$t3
    # Line 356
    b	.L0d93808c
    # Line 357
    recip.s	$f0,$f2
.L0d938084:
    # Line 360
    recip.s	$f0,$f4
    # Line 361
    li	$a4,0
.L0d93808c:
    # Line 364
    beq	$v0,$t1,.L0d9380a4
    # Line 365
    sd	$a3,8328($t0)
    # Line 366
    lw	$a5,32188($a0)
    # Line 367
    sw	$v0,8288($t0)
    # Line 368
    sw	$v0,8288($a5)
    # Line 369
    sw	$v0,32096($a0)
.L0d9380a4:
    # Line 373
    andi	$t2,$t2,0x100
    # Line 374
    beqz	$t2,.L0d9380e8
    # Line 375
    lbu	$a6,29848($a0)
    # Line 376
    lw	$a7,32108($a0)
    # Line 377
    lw	$t8,32112($a0)
    # Line 378
    bnez	$a6,.L0d9380d4
    # Line 379
    li	$t9,1
    # Line 380
    lw	$v0,32188($a0)
    # Line 381
    sw	$a7,8388($t0)
    # Line 382
    sw	$a7,8388($v0)
    # Line 383
    sw	$t8,8384($t0)
    # Line 384
    sb	$t9,29848($a0)
.L0d9380d4:
    # Line 393
    lui	$v1,0x42fe
    # Line 394
    mtc1	$v1,$f6
    # Line 395
    beqz	$a4,.L0d9380e8
    # Line 396
    c.lt.s	$f7,$f6
    # Line 397
    bc1f	__glCrmDepthLine
.L0d9380e8:
    # Line 402
    lw	$a3,8($a1)
    # Line 403
    lw	$t1,8($a2)
    # Line 404
    lwc1	$f9,0($a3)
    # Line 405
    lwc1	$f10,0($t1)
    # Line 406
    lwc1	$f11,32016($a0)
    # Line 407
    sub.s	$f10,$f10,$f9
    # Line 408
    mul.s	$f9,$f9,$f11
    # Line 409
    mul.s	$f0,$f0,$f11
    # Line 410
    trunc.w.s	$f12,$f9
    # Line 411
    mul.s	$f10,$f10,$f0
    # Line 412
    trunc.w.s	$f10,$f10
    # Line 413
    swc1	$f12,8428($t0)
    # Line 414
    beqz	$a4,.L0d938128
    # Line 415
    swc1	$f10,8452($t0)
    # Line 416
    jr	$ra
    # Line 417
    sw	$zero,10508($t0)
.L0d938128:
    # Line 419
    swc1	$f10,8460($t0)
    # Line 420
    jr	$ra
    # Line 421
    sw	$zero,10500($t0)
.end __glCrmSmoothCILine

# Function: __glCrmFogRGBLine
# Declared: Line 435 (Source lines: 435-623)
# Address: 0x0d938134 - 0x0d9383c0 (Size: 652 bytes, Frame: 0)
.globl __glCrmFogRGBLine
.ent __glCrmFogRGBLine
__glCrmFogRGBLine:
    # Line 435
    lwc1	$f13,128($a1)
    # Line 436
    lwc1	$f14,128($a2)
    # Line 437
    lwc1	$f15,132($a1)
    # Line 438
    lwc1	$f16,132($a2)
    # Line 439
    sub.s	$f2,$f14,$f13
    # Line 440
    lwc1	$f17,3544($a0)
    # Line 441
    sub.s	$f4,$f16,$f15
    # Line 442
    lw	$a4,32116($a0)
    # Line 443
    ld	$a5,128($a1)
    # Line 444
    ld	$a6,128($a2)
    # Line 445
    lw	$t0,32184($a0)
    # Line 446
    abs.s	$f18,$f2
    # Line 447
    lw	$a7,32096($a0)
    # Line 448
    abs.s	$f19,$f4
    # Line 449
    lw	$t8,1792($a0)
    # Line 450
    c.lt.s	$f18,$f19
    # Line 451
    sd	$a5,8320($t0)
    # Line 452
    bc1t	.L0d938190
    # Line 453
    mfc1	$t9,$f18
    # Line 454
    li	$v0,1
    # Line 455
    movz.s	$f2,$f17,$t9
    # Line 456
    b	.L0d938198
    # Line 457
    recip.s	$f0,$f2
.L0d938190:
    # Line 460
    recip.s	$f0,$f4
    # Line 461
    li	$v0,0
.L0d938198:
    # Line 464
    beq	$a4,$a7,.L0d9381b0
    # Line 465
    sd	$a6,8328($t0)
    # Line 466
    lw	$v1,32188($a0)
    # Line 467
    sw	$a4,8288($t0)
    # Line 468
    sw	$a4,8288($v1)
    # Line 469
    sw	$a4,32096($a0)
.L0d9381b0:
    # Line 473
    andi	$t8,$t8,0x100
    # Line 474
    beqz	$t8,.L0d9381f4
    # Line 475
    lbu	$a3,29848($a0)
    # Line 476
    lw	$t1,32108($a0)
    # Line 477
    lw	$t2,32112($a0)
    # Line 478
    bnez	$a3,.L0d9381e0
    # Line 479
    li	$t3,1
    # Line 480
    lw	$a4,32188($a0)
    # Line 481
    sw	$t1,8388($t0)
    # Line 482
    sw	$t1,8388($a4)
    # Line 483
    sw	$t2,8384($t0)
    # Line 484
    sb	$t3,29848($a0)
.L0d9381e0:
    # Line 493
    lui	$a5,0x42fe
    # Line 494
    mtc1	$a5,$f6
    # Line 495
    beqz	$v0,.L0d9381f4
    # Line 496
    c.lt.s	$f18,$f6
    # Line 497
    bc1f	__glCrmDepthLine
.L0d9381f4:
    # Line 502
    lui	$a6,0x437f
    # Line 503
    mtc1	$a6,$f1
    # Line 504
    lwc1	$f2,176($a1)
    # Line 505
    lwc1	$f3,176($a2)
    # Line 506
    lwc1	$f4,32016($a0)
    # Line 507
    mul.s	$f2,$f2,$f1
    # Line 508
    lw	$a7,30436($a0)
    # Line 509
    mul.s	$f3,$f3,$f1
    # Line 510
    lui	$t8,0x2
    # Line 511
    and	$t8,$t8,$a7
    # Line 512
    lw	$t9,8($a1)
    # Line 513
    mul.s	$f5,$f2,$f4
    # Line 514
    beqz	$t8,.L0d938328
    # Line 515
    lw	$v1,8($a2)
    # Line 518
    sub.s	$f6,$f3,$f2
    # Line 519
    lwc1	$f7,0($t9)
    # Line 520
    lwc1	$f8,0($v1)
    # Line 521
    lwc1	$f9,4($t9)
    # Line 522
    trunc.w.s	$f5,$f5
    # Line 523
    lwc1	$f10,4($v1)
    # Line 524
    lwc1	$f11,32016($a0)
    # Line 525
    mfc1	$a2,$f6
    # Line 526
    sub.s	$f8,$f8,$f7
    # Line 527
    lwc1	$f12,8($t9)
    # Line 528
    sub.s	$f10,$f10,$f9
    # Line 529
    lwc1	$f13,8($v1)
    # Line 530
    mul.s	$f7,$f7,$f11
    # Line 531
    lwc1	$f14,12($t9)
    # Line 532
    mul.s	$f9,$f9,$f11
    # Line 533
    swc1	$f5,8568($t0)
    # Line 534
    lwc1	$f15,12($v1)
    # Line 535
    sub.s	$f13,$f13,$f12
    # Line 536
    sub.s	$f15,$f15,$f14
    # Line 537
    mul.s	$f12,$f12,$f11
    # Line 538
    mul.s	$f14,$f14,$f11
    # Line 539
    mul.s	$f0,$f0,$f11
    # Line 540
    trunc.w.s	$f7,$f7
    # Line 541
    trunc.w.s	$f9,$f9
    # Line 542
    trunc.w.s	$f12,$f12
    # Line 543
    mtc1	$a2,$f16
    # Line 544
    trunc.w.s	$f14,$f14
    # Line 545
    mfc1	$a4,$f7
    # Line 546
    mul.s	$f16,$f16,$f0
    # Line 547
    mfc1	$a5,$f9
    # Line 548
    mul.s	$f8,$f8,$f0
    # Line 549
    swc1	$f12,8424($t0)
    # Line 550
    mul.s	$f10,$f10,$f0
    # Line 551
    swc1	$f14,8428($t0)
    # Line 552
    mul.s	$f13,$f13,$f0
    # Line 553
    dsll32	$a4,$a4,0x0
    # Line 554
    trunc.w.s	$f16,$f16
    # Line 555
    or	$a4,$a4,$a5
    # Line 556
    mul.s	$f15,$f15,$f0
    # Line 557
    sd	$a4,8416($t0)
    # Line 558
    trunc.w.s	$f8,$f8
    # Line 559
    trunc.w.s	$f10,$f10
    # Line 560
    trunc.w.s	$f13,$f13
    # Line 561
    beqz	$v0,.L0d938304
    # Line 562
    trunc.w.s	$f15,$f15
    # Line 563
    swc1	$f8,8432($t0)
    # Line 564
    swc1	$f10,8436($t0)
    # Line 565
    swc1	$f13,8448($t0)
    # Line 566
    swc1	$f15,8452($t0)
    # Line 567
    swc1	$f16,8576($t0)
    # Line 568
    sw	$zero,8584($t0)
    # Line 569
    sd	$zero,8440($t0)
    # Line 570
    jr	$ra
    # Line 571
    sd	$zero,10504($t0)
.L0d938304:
    # Line 573
    swc1	$f8,8440($t0)
    # Line 574
    swc1	$f10,8444($t0)
    # Line 575
    swc1	$f13,8456($t0)
    # Line 576
    swc1	$f15,8460($t0)
    # Line 577
    swc1	$f16,8584($t0)
    # Line 578
    sw	$zero,8576($t0)
    # Line 579
    sd	$zero,8432($t0)
    # Line 580
    jr	$ra
    # Line 581
    sd	$zero,10496($t0)
.L0d938328:
    # Line 584
    sub.s	$f17,$f3,$f2
    # Line 585
    addiu	$a1,$a0,32767
    lw	$a1,125($a1)
    # Line 586
    mul.s	$f0,$f0,$f4
    # Line 587
    lwc1	$f18,0($v1)
    # Line 588
    trunc.w.s	$f5,$f5
    # Line 589
    andi	$a1,$a1,0x2
    # Line 590
    mul.s	$f17,$f17,$f0
    # Line 591
    bnez	$a1,.L0d9383a0
    # Line 592
    trunc.w.s	$f17,$f17
    # Line 593
    lwc1	$f19,4($v1)
    # Line 594
    trunc.w.s	$f18,$f18
    # Line 595
    lwc1	$f0,8($v1)
    # Line 596
    trunc.w.s	$f19,$f19
    # Line 597
    lwc1	$f1,12($v1)
    # Line 598
    trunc.w.s	$f0,$f0
    # Line 599
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 600
    trunc.w.s	$f1,$f1
    # Line 601
    mfc1	$a5,$f18
    # Line 602
    mfc1	$a6,$f19
    # Line 603
    mfc1	$a7,$f0
    # Line 604
    mfc1	$t8,$f1
    # Line 605
    sll	$a5,$a5,0x18
    # Line 606
    sll	$a6,$a6,0x10
    # Line 607
    sll	$a7,$a7,0x8
    # Line 608
    or	$t8,$t8,$a5
    # Line 609
    or	$t8,$t8,$a6
    # Line 610
    or	$t8,$t8,$a7
    # Line 611
    sw	$t8,8400($t0)
.L0d9383a0:
    # Line 614
    beqz	$v0,.L0d9383b4
    # Line 615
    swc1	$f5,8568($t0)
    # Line 616
    swc1	$f17,8576($t0)
    # Line 617
    jr	$ra
    # Line 618
    sw	$zero,10632($t0)
.L0d9383b4:
    # Line 621
    swc1	$f17,8584($t0)
    # Line 622
    jr	$ra
    # Line 623
    sw	$zero,10624($t0)
.end __glCrmFogRGBLine

# Function: __glCrmDepthLine
# Declared: Line 637 (Source lines: 637-903)
# Address: 0x0d9383c0 - 0x0d93871c (Size: 860 bytes, Frame: 0)
.globl __glCrmDepthLine
.ent __glCrmDepthLine
__glCrmDepthLine:
    # Line 637
    lwc1	$f3,128($a1)
    # Line 638
    lwc1	$f4,128($a2)
    # Line 639
    lwc1	$f5,132($a1)
    # Line 640
    lwc1	$f6,132($a2)
    # Line 641
    sub.s	$f2,$f4,$f3
    # Line 642
    lw	$t9,32116($a0)
    # Line 643
    sub.s	$f4,$f6,$f5
    # Line 644
    ld	$v0,128($a1)
    # Line 645
    ld	$v1,128($a2)
    # Line 646
    lw	$t0,32184($a0)
    # Line 647
    abs.s	$f7,$f2
    # Line 648
    lw	$a3,32096($a0)
    # Line 649
    abs.s	$f8,$f4
    # Line 650
    lw	$t1,1792($a0)
    # Line 651
    c.le.s $f8,$f7
    # Line 652
    sd	$v0,8320($t0)
    # Line 653
    bc1f .L0d93841c
    # Line 654
    mfc1	$t2,$f7
    # Line 655
    addiu	$t3,$t0,8440
    # Line 656
    bnezl	$t2,.L0d938424
    # Line 657
    recip.s	$f0,$f2
    # Line 660
    jr	$ra
    # Line 661
    nop
.L0d93841c:
    # Line 664
    recip.s	$f0,$f4
    # Line 665
    addiu	$t3,$t0,8432
.L0d938424:
    # Line 668
    beq	$t9,$a3,.L0d93843c
    # Line 669
    sd	$v1,8328($t0)
    # Line 670
    lw	$a4,32188($a0)
    # Line 671
    sw	$t9,8288($t0)
    # Line 672
    sw	$t9,8288($a4)
    # Line 673
    sw	$t9,32096($a0)
.L0d93843c:
    # Line 677
    andi	$t1,$t1,0x100
    # Line 678
    beqz	$t1,.L0d938480
    # Line 679
    lbu	$a5,29848($a0)
    # Line 680
    lw	$a6,32108($a0)
    # Line 681
    lw	$a7,32112($a0)
    # Line 682
    bnez	$a5,.L0d93846c
    # Line 683
    li	$t8,1
    # Line 684
    lw	$t9,32188($a0)
    # Line 685
    sw	$a6,8388($t0)
    # Line 686
    sw	$a6,8388($t9)
    # Line 687
    sw	$a7,8384($t0)
    # Line 688
    sb	$t8,29848($a0)
.L0d93846c:
    # Line 697
    lui	$v0,0x42fe
    # Line 698
    mtc1	$v0,$f6
    # Line 699
    bc1f .L0d938480
    # Line 700
    c.lt.s	$f7,$f6
    # Line 701
    bc1f	__glCrmDepthLine
.L0d938480:
    # Line 706
    lwc1	$f9,136($a1)
    # Line 707
    lwc1	$f10,136($a2)
    # Line 708
    sd	$zero,0($t3)
    # Line 709
    lw	$v1,30436($a0)
    # Line 710
    sub.s	$f10,$f10,$f9
    # Line 711
    andi	$a3,$v1,0x2000
    # Line 712
    lui	$t1,0x2
    # Line 713
    sd	$zero,16($t3)
    # Line 714
    andi	$t2,$v1,0x1
    # Line 715
    and	$t1,$t1,$v1
    # Line 716
    beqz	$a3,.L0d938500
    # Line 717
    mul.s	$f10,$f10,$f0
    # Line 722
    lui	$t3,0x437f
    # Line 723
    mtc1	$t3,$f11
    # Line 724
    lwc1	$f12,176($a1)
    # Line 725
    lwc1	$f13,176($a2)
    # Line 726
    mul.s	$f12,$f12,$f11
    # Line 727
    mul.s	$f13,$f13,$f11
    # Line 728
    lwc1	$f14,32016($a0)
    # Line 729
    sub.s	$f15,$f13,$f12
    # Line 730
    mul.s	$f16,$f0,$f14
    # Line 731
    mul.s	$f17,$f12,$f14
    # Line 732
    mul.s	$f15,$f15,$f16
    # Line 733
    trunc.w.s	$f17,$f17
    # Line 734
    trunc.w.s	$f15,$f15
    # Line 735
    bc1f .L0d9384f8
    # Line 736
    swc1	$f17,8568($t0)
    # Line 737
    swc1	$f15,8576($t0)
    # Line 738
    b	.L0d938500
    # Line 739
    sw	$zero,8584($t0)
.L0d9384f8:
    # Line 741
    swc1	$f15,8584($t0)
    # Line 742
    sw	$zero,8576($t0)
.L0d938500:
    # Line 745
    beqz	$t1,.L0d938640
    # Line 746
    lwc1	$f18,32024($a0)
    # Line 751
    lw	$a6,8($a1)
    # Line 752
    lw	$a7,8($a2)
    # Line 753
    mul.s	$f19,$f9,$f18
    # Line 754
    lwc1	$f1,0($a6)
    # Line 755
    mul.s	$f10,$f10,$f18
    # Line 756
    lwc1	$f2,0($a7)
    # Line 757
    lwc1	$f3,4($a6)
    # Line 758
    lwc1	$f4,4($a7)
    # Line 759
    trunc.l.s	$f19,$f19
    # Line 760
    lwc1	$f5,32020($a0)
    # Line 761
    trunc.l.s	$f10,$f10
    # Line 762
    lwc1	$f6,32016($a0)
    # Line 763
    sub.s	$f2,$f2,$f1
    # Line 764
    add.s	$f1,$f1,$f5
    # Line 765
    bc1f .L0d938554
    # Line 766
    sdc1	$f19,8648($t0)
    # Line 767
    sdc1	$f10,8656($t0)
    # Line 768
    b	.L0d93855c
    # Line 769
    sd	$zero,8664($t0)
.L0d938554:
    # Line 771
    sdc1	$f10,8664($t0)
    # Line 772
    sd	$zero,8656($t0)
.L0d93855c:
    # Line 775
    lwc1	$f7,8($a6)
    # Line 776
    beqz	$t2,.L0d9385f8
    # Line 777
    lwc1	$f8,8($a7)
    # Line 778
    sub.s	$f4,$f4,$f3
    # Line 779
    lwc1	$f9,12($a6)
    # Line 780
    add.s	$f3,$f3,$f5
    # Line 781
    mfc1	$v0,$f1
    # Line 782
    sub.s	$f8,$f8,$f7
    # Line 783
    lwc1	$f10,32016($a0)
    # Line 784
    add.s	$f7,$f7,$f5
    # Line 785
    lwc1	$f11,12($a7)
    # Line 786
    mul.s	$f0,$f0,$f10
    # Line 787
    dsll32	$v0,$v0,0x0
    # Line 788
    sub.s	$f11,$f11,$f9
    # Line 789
    mfc1	$v1,$f3
    # Line 790
    add.s	$f9,$f9,$f5
    # Line 791
    or	$v0,$v0,$v1
    # Line 792
    mul.s	$f2,$f2,$f0
    # Line 793
    sd	$v0,8416($t0)
    # Line 794
    mul.s	$f4,$f4,$f0
    # Line 795
    swc1	$f7,8424($t0)
    # Line 796
    mul.s	$f8,$f8,$f0
    # Line 797
    mul.s	$f11,$f11,$f0
    # Line 798
    swc1	$f9,8428($t0)
    # Line 799
    trunc.w.s	$f2,$f2
    # Line 800
    trunc.w.s	$f4,$f4
    # Line 801
    trunc.w.s	$f8,$f8
    # Line 802
    bc1f .L0d9385e4
    # Line 803
    trunc.w.s	$f11,$f11
    # Line 804
    swc1	$f2,8432($t0)
    # Line 805
    swc1	$f4,8436($t0)
    # Line 806
    swc1	$f8,8448($t0)
    # Line 807
    jr	$ra
    # Line 808
    swc1	$f11,10500($t0)
.L0d9385e4:
    # Line 810
    swc1	$f2,8440($t0)
    # Line 811
    swc1	$f4,8444($t0)
    # Line 812
    swc1	$f8,8456($t0)
    # Line 813
    jr	$ra
    # Line 814
    swc1	$f11,10508($t0)
.L0d9385f8:
    # Line 821
    lwc1	$f12,176($a1)
    # Line 822
    lwc1	$f13,3544($a0)
    # Line 823
    lwc1	$f14,1624($a0)
    # Line 824
    lwc1	$f15,0($a6)
    # Line 825
    sub.s	$f13,$f13,$f12
    # Line 826
    mul.s	$f14,$f14,$f13
    # Line 827
    add.s	$f15,$f15,$f14
    # Line 828
    mul.s	$f0,$f0,$f6
    # Line 829
    mul.s	$f15,$f15,$f6
    # Line 830
    mul.s	$f2,$f2,$f0
    # Line 831
    trunc.w.s	$f15,$f15
    # Line 832
    trunc.w.s	$f2,$f2
    # Line 833
    bc1f .L0d938638
    # Line 834
    swc1	$f15,8428($t0)
    # Line 835
    jr	$ra
    # Line 836
    swc1	$f2,10500($t0)
.L0d938638:
    # Line 838
    jr	$ra
    # Line 839
    swc1	$f2,10508($t0)
.L0d938640:
    # Line 843
    addiu	$t3,$a0,32767
    lw	$t3,125($t3)
    # Line 844
    mul.s	$f16,$f9,$f18
    # Line 845
    lw	$a4,8($a2)
    # Line 846
    mul.s	$f10,$f10,$f18
    # Line 847
    andi	$t3,$t3,0x2
    # Line 848
    lwc1	$f17,0($a4)
    # Line 849
    beqz	$t2,.L0d9386dc
    # Line 850
    trunc.l.s	$f16,$f16
    # Line 851
    lwc1	$f18,4($a4)
    # Line 852
    trunc.l.s	$f10,$f10
    # Line 853
    lwc1	$f19,8($a4)
    # Line 854
    trunc.w.s	$f17,$f17
    # Line 855
    lwc1	$f0,12($a4)
    # Line 856
    trunc.w.s	$f18,$f18
    # Line 857
    bc1f .L0d938690
    # Line 858
    sdc1	$f16,8648($t0)
    # Line 859
    sdc1	$f10,8656($t0)
    # Line 860
    b	.L0d938698
    # Line 861
    sd	$zero,8664($t0)
.L0d938690:
    # Line 863
    sdc1	$f10,8664($t0)
    # Line 864
    sd	$zero,8656($t0)
.L0d938698:
    # Line 866
    bnez	$t3,.L0d938714
    # Line 867
    trunc.w.s	$f19,$f19
    # Line 868
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 869
    trunc.w.s	$f0,$f0
    # Line 870
    mfc1	$v1,$f17
    # Line 871
    mfc1	$a0,$f18
    # Line 872
    mfc1	$a1,$f19
    # Line 873
    mfc1	$a2,$f0
    # Line 874
    sll	$v1,$v1,0x18
    # Line 875
    sll	$a0,$a0,0x10
    # Line 876
    sll	$a1,$a1,0x8
    # Line 877
    or	$a2,$a2,$v1
    # Line 878
    or	$a2,$a2,$a0
    # Line 879
    or	$a2,$a2,$a1
    # Line 880
    jr	$ra
    # Line 881
    sw	$a2,10448($t0)
.L0d9386dc:
    # Line 884
    trunc.l.s	$f10,$f10
    # Line 885
    bc1f .L0d9386f4
    # Line 886
    sdc1	$f16,8648($t0)
    # Line 887
    sdc1	$f10,8656($t0)
    # Line 888
    b	.L0d9386fc
    # Line 889
    sd	$zero,8664($t0)
.L0d9386f4:
    # Line 891
    sdc1	$f10,8664($t0)
    # Line 892
    sd	$zero,8656($t0)
.L0d9386fc:
    # Line 895
    bnez	$t3,.L0d938714
    # Line 896
    trunc.w.s	$f17,$f17
    # Line 897
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 898
    jr	$ra
    # Line 899
    swc1	$f17,10448($t0)
.L0d938714:
    # Line 902
    jr	$ra
    # Line 903
    sw	$zero,10736($t0)
.end __glCrmDepthLine

# Function: LongStippledLine
# Declared: Line 926 (Source lines: 926-1244)
# Address: 0x0d93871c - 0x0d938b34 (Size: 1048 bytes, Frame: 0)
.ent LongStippledLine
LongStippledLine:
    # Line 926
    addiu	$sp,$sp,-80
    # Line 927
    div.s	$f1,$f4,$f2
    # Line 928
    sdc1	$f20,64($sp)
    # Line 929
    sdc1	$f22,56($sp)
    # Line 930
    sdc1	$f24,48($sp)
    # Line 931
    sdc1	$f26,40($sp)
    # Line 932
    sdc1	$f28,32($sp)
    # Line 933
    sdc1	$f30,24($sp)
    # Line 935
    mtc1	$zero,$f3
    # Line 936
    lwc1	$f4,128($a1)
    # Line 937
    lwc1	$f5,128($a2)
    # Line 938
    lwc1	$f7,132($a1)
    # Line 939
    c.lt.s $f2,$f3
    # Line 940
    lw	$t2,30436($a0)
    # Line 941
    lw	$t3,8($a1)
    # Line 942
    lw	$a4,8($a2)
    # Line 943
    lui	$a5,0x2
    # Line 944
    andi	$a6,$t2,0x2000
    # Line 945
    andi	$a7,$t2,0x4
    # Line 946
    and	$t8,$t2,$a5
    # Line 947
    andi	$t9,$t2,0x1
    # Line 950
    neg.s	$f8,$f6
    # Line 951
    movt.s	$f6,$f8,$fcc7
    # Line 952
    add.s	$f9,$f4,$f6
    # Line 953
    madd.s	$f10,$f7,$f6,$f1
    # Line 955
    beqz	$a7,.L0d9387e0
    # Line 956
    lw	$v0,128($a1)
    # Line 957
    li	$v1,-64
    # Line 958
    mtc1	$v0,$f11
    # Line 959
    and	$v0,$v0,$v1
    # Line 960
    mtc1	$v0,$f12
    # Line 961
    lwc1	$f13,136($a1)
    # Line 962
    lwc1	$f14,136($a2)
    # Line 963
    sub.s	$f15,$f11,$f12
    # Line 964
    sub.s	$f14,$f14,$f13
    # Line 965
    mul.s	$f14,$f14,$f0
    # Line 966
    lwc1	$f16,32024($a0)
    # Line 967
    madd.s	$f17,$f13,$f14,$f15
    # Line 968
    mul.s	$f14,$f14,$f16
    # Line 969
    mul.s	$f17,$f17,$f16
    # Line 970
    trunc.l.s	$f18,$f14
    # Line 971
    trunc.l.s	$f17,$f17
    # Line 972
    mul.s	$f19,$f14,$f6
    # Line 973
    sdc1	$f18,8656($t0)
    # Line 974
    sd	$zero,8664($t0)
    # Line 975
    trunc.l.s	$f19,$f19
    # Line 976
    dmfc1	$a5,$f17
    # Line 977
    b	.L0d9387e8
    # Line 978
    dmfc1	$a7,$f19
.L0d9387e0:
    # Line 981
    move	$a5,$zero
    # Line 982
    move	$a7,$zero
.L0d9387e8:
    # Line 985
    beqz	$a6,.L0d93883c
    # Line 986
    lui	$v0,0x437f
    # Line 987
    mtc1	$v0,$f20
    # Line 988
    lwc1	$f22,176($a1)
    # Line 989
    lwc1	$f24,176($a2)
    # Line 990
    lwc1	$f26,32016($a0)
    # Line 991
    mul.s	$f22,$f22,$f20
    # Line 992
    mul.s	$f24,$f24,$f20
    # Line 993
    mul.s	$f28,$f22,$f26
    # Line 994
    sub.s	$f30,$f24,$f22
    # Line 995
    trunc.w.s	$f28,$f28
    # Line 996
    mul.s	$f30,$f30,$f0
    # Line 997
    mfc1	$a1,$f28
    # Line 998
    mul.s	$f30,$f30,$f26
    # Line 999
    trunc.w.s	$f2,$f30
    # Line 1000
    mul.s	$f3,$f30,$f6
    # Line 1001
    swc1	$f2,8576($t0)
    # Line 1002
    sw	$zero,8584($t0)
    # Line 1003
    trunc.w.s	$f3,$f3
    # Line 1004
    b	.L0d938844
    # Line 1005
    mfc1	$t1,$f3
.L0d93883c:
    # Line 1008
    move	$a1,$zero
    # Line 1009
    move	$t1,$zero
.L0d938844:
    # Line 1012
    beqz	$t8,.L0d938a44
    # Line 1013
    lwc1	$f8,0($t3)
    # Line 1014
    beqz	$t9,.L0d9389ac
    # Line 1015
    lwc1	$f11,0($a4)
    # Line 1016
    lwc1	$f12,4($t3)
    # Line 1017
    lwc1	$f13,32016($a0)
    # Line 1018
    lwc1	$f14,4($a4)
    # Line 1019
    mul.s	$f0,$f0,$f13
    # Line 1020
    sub.s	$f11,$f11,$f8
    # Line 1021
    lwc1	$f15,8($t3)
    # Line 1022
    sub.s	$f14,$f14,$f12
    # Line 1023
    lwc1	$f16,8($a4)
    # Line 1024
    lwc1	$f17,12($t3)
    # Line 1025
    lwc1	$f18,12($a4)
    # Line 1026
    sub.s	$f16,$f16,$f15
    # Line 1027
    sub.s	$f18,$f18,$f17
    # Line 1028
    mul.s	$f11,$f11,$f0
    # Line 1029
    mul.s	$f14,$f14,$f0
    # Line 1030
    mul.s	$f16,$f16,$f0
    # Line 1031
    mul.s	$f18,$f18,$f0
    # Line 1032
    trunc.w.s	$f19,$f11
    # Line 1033
    trunc.w.s	$f20,$f14
    # Line 1034
    trunc.w.s	$f22,$f16
    # Line 1035
    trunc.w.s	$f24,$f18
    # Line 1036
    swc1	$f19,8432($t0)
    # Line 1037
    swc1	$f20,8436($t0)
    # Line 1038
    swc1	$f22,8448($t0)
    # Line 1039
    swc1	$f24,8452($t0)
    # Line 1040
    sd	$zero,8440($t0)
    # Line 1041
    sd	$zero,8456($t0)
    # Line 1042
    lwc1	$f26,0($t3)
    # Line 1043
    lwc1	$f28,4($t3)
    # Line 1044
    lwc1	$f30,8($t3)
    # Line 1045
    mul.s	$f26,$f26,$f13
    # Line 1046
    lwc1	$f0,12($t3)
    # Line 1047
    mul.s	$f28,$f28,$f13
    # Line 1048
    mul.s	$f30,$f30,$f13
    # Line 1049
    mul.s	$f0,$f0,$f13
    # Line 1050
    trunc.w.s	$f26,$f26
    # Line 1051
    trunc.w.s	$f28,$f28
    # Line 1052
    trunc.w.s	$f30,$f30
    # Line 1053
    trunc.w.s	$f0,$f0
    # Line 1054
    mfc1	$a2,$f26
    # Line 1055
    mfc1	$a3,$f28
    # Line 1056
    mfc1	$t2,$f30
    # Line 1057
    mfc1	$t3,$f0
    # Line 1060
    mul.s	$f2,$f11,$f6
    # Line 1061
    mul.s	$f3,$f14,$f6
    # Line 1062
    mul.s	$f8,$f16,$f6
    # Line 1063
    mul.s	$f11,$f18,$f6
    # Line 1064
    trunc.w.s	$f2,$f2
    # Line 1065
    trunc.w.s	$f3,$f3
    # Line 1066
    trunc.w.s	$f8,$f8
    # Line 1067
    trunc.w.s	$f11,$f11
    # Line 1068
    mfc1	$v0,$f2
    # Line 1069
    mfc1	$v1,$f3
    # Line 1070
    mfc1	$a0,$f8
    # Line 1071
    mfc1	$a4,$f11
.L0d93892c:
    # Line 1075
    sw	$a2,8416($t0)
    # Line 1076
    sw	$a3,8420($t0)
    # Line 1077
    sw	$t2,8424($t0)
    # Line 1078
    sw	$t3,8428($t0)
    # Line 1079
    sd	$a5,8648($t0)
    # Line 1080
    sw	$a1,8568($t0)
    # Line 1081
    swc1	$f4,8320($t0)
    # Line 1082
    swc1	$f7,8324($t0)
    # Line 1083
    swc1	$f9,8328($t0)
    # Line 1084
    bc1t .L0d93896c
    # Line 1085
    swc1	$f10,10380($t0)
    # Line 1088
    sub.s	$f12,$f5,$f9
    # Line 1089
    c.lt.s	$f9,$f5
    # Line 1090
    c.lt.s $f12,$f6
    # Line 1091
    b	.L0d93897c
    # Line 1092
    movt.s	$f6,$f12,$fcc1
.L0d93896c:
    # Line 1095
    sub.s	$f13,$f5,$f9
    # Line 1096
    c.lt.s	$f5,$f9
    # Line 1097
    c.lt.s $f6,$f13
    # Line 1098
    movt.s	$f6,$f13,$fcc1
.L0d93897c:
    # Line 1101
    bc1f	.L0d938b14
    # Line 1102
    mov.s	$f4,$f9
    # Line 1103
    mov.s	$f7,$f10
    # Line 1106
    add	$a2,$a2,$v0
    # Line 1107
    add	$a3,$a3,$v1
    # Line 1108
    add	$t2,$t2,$a0
    # Line 1109
    add	$t3,$t3,$a4
    # Line 1110
    dadd	$a5,$a5,$a7
    # Line 1111
    add	$a1,$a1,$t1
    # Line 1112
    add.s	$f9,$f4,$f6
    # Line 1113
    b	.L0d93892c
    # Line 1114
    madd.s	$f10,$f7,$f6,$f1
.L0d9389ac:
    # Line 1118
    lwc1	$f14,32016($a0)
    # Line 1119
    sub.s	$f11,$f11,$f8
    # Line 1120
    mul.s	$f0,$f0,$f14
    # Line 1121
    mul.s	$f11,$f11,$f0
    # Line 1122
    trunc.w.s	$f15,$f11
    # Line 1123
    lwc1	$f16,0($t3)
    # Line 1124
    swc1	$f15,8452($t0)
    # Line 1125
    sw	$zero,8460($t0)
    # Line 1126
    mul.s	$f16,$f16,$f14
    # Line 1127
    mul.s	$f17,$f11,$f6
    # Line 1128
    trunc.w.s	$f16,$f16
    # Line 1129
    trunc.w.s	$f17,$f17
    # Line 1130
    mfc1	$v0,$f16
    # Line 1131
    mfc1	$v1,$f17
.L0d9389e4:
    # Line 1135
    sw	$v0,8428($t0)
    # Line 1136
    swc1	$f4,8320($t0)
    # Line 1137
    swc1	$f7,8324($t0)
    # Line 1138
    swc1	$f9,8328($t0)
    # Line 1139
    bc1t .L0d938a10
    # Line 1140
    swc1	$f10,10380($t0)
    # Line 1143
    sub.s	$f18,$f5,$f9
    # Line 1144
    c.lt.s	$f9,$f5
    # Line 1145
    c.lt.s $f18,$f6
    # Line 1146
    b	.L0d938a20
    # Line 1147
    movt.s	$f6,$f18,$fcc1
.L0d938a10:
    # Line 1150
    sub.s	$f19,$f5,$f9
    # Line 1151
    c.lt.s	$f5,$f9
    # Line 1152
    c.lt.s $f6,$f19
    # Line 1153
    movt.s	$f6,$f19,$fcc1
.L0d938a20:
    # Line 1156
    bc1f	.L0d938b14
    # Line 1157
    mov.s	$f4,$f9
    # Line 1158
    mov.s	$f7,$f10
    # Line 1161
    add	$v0,$v0,$v1
    # Line 1162
    dadd	$a5,$a5,$a7
    # Line 1163
    add	$a1,$a1,$t1
    # Line 1164
    add.s	$f9,$f4,$f6
    # Line 1165
    b	.L0d9389e4
    # Line 1166
    madd.s	$f10,$f7,$f6,$f1
.L0d938a44:
    # Line 1170
    addiu	$a2,$a0,32767
    lw	$a2,125($a2)
    # Line 1171
    lwc1	$f20,0($a4)
    # Line 1172
    andi	$a2,$a2,0x2
    # Line 1173
    bnez	$a2,.L0d938ab4
    # Line 1174
    lwc1	$f22,4($a4)
    # Line 1175
    trunc.w.s	$f20,$f20
    # Line 1176
    lwc1	$f24,8($a4)
    # Line 1177
    trunc.w.s	$f22,$f22
    # Line 1178
    lwc1	$f26,12($a4)
    # Line 1179
    trunc.w.s	$f24,$f24
    # Line 1180
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 1181
    trunc.w.s	$f26,$f26
    # Line 1182
    beqz	$t9,.L0d938ab0
    # Line 1183
    mfc1	$a6,$f20
    # Line 1184
    mfc1	$t8,$f22
    # Line 1185
    mfc1	$t9,$f24
    # Line 1186
    mfc1	$v0,$f26
    # Line 1187
    sll	$a6,$a6,0x18
    # Line 1188
    sll	$t8,$t8,0x10
    # Line 1189
    sll	$t9,$t9,0x8
    # Line 1190
    or	$v0,$v0,$a6
    # Line 1191
    or	$v0,$v0,$t8
    # Line 1192
    or	$v0,$v0,$t9
    # Line 1193
    b	.L0d938ab4
    # Line 1194
    sw	$v0,8400($t0)
.L0d938ab0:
    # Line 1197
    swc1	$f20,8400($t0)
.L0d938ab4:
    # Line 1201
    sd	$a5,8648($t0)
    # Line 1202
    sw	$a1,8568($t0)
    # Line 1203
    swc1	$f4,8320($t0)
    # Line 1204
    swc1	$f7,8324($t0)
    # Line 1205
    swc1	$f9,8328($t0)
    # Line 1206
    bc1t .L0d938ae4
    # Line 1207
    swc1	$f10,10380($t0)
    # Line 1210
    sub.s	$f28,$f5,$f9
    # Line 1211
    c.lt.s	$f9,$f5
    # Line 1212
    c.lt.s $f28,$f6
    # Line 1213
    b	.L0d938af4
    # Line 1214
    movt.s	$f6,$f28,$fcc1
.L0d938ae4:
    # Line 1217
    sub.s	$f30,$f5,$f9
    # Line 1218
    c.lt.s	$f5,$f9
    # Line 1219
    c.lt.s $f6,$f30
    # Line 1220
    movt.s	$f6,$f30,$fcc1
.L0d938af4:
    # Line 1223
    bc1f	.L0d938b14
    # Line 1224
    mov.s	$f4,$f9
    # Line 1225
    mov.s	$f7,$f10
    # Line 1228
    dadd	$a5,$a5,$a7
    # Line 1229
    add	$a1,$a1,$t1
    # Line 1230
    add.s	$f9,$f4,$f6
    # Line 1231
    b	.L0d938ab4
    # Line 1232
    madd.s	$f10,$f7,$f6,$f1
.L0d938b14:
    # Line 1236
    ldc1	$f20,64($sp)
    # Line 1237
    ldc1	$f22,56($sp)
    # Line 1238
    ldc1	$f24,48($sp)
    # Line 1239
    ldc1	$f26,40($sp)
    # Line 1240
    ldc1	$f28,32($sp)
    # Line 1241
    ldc1	$f30,24($sp)
    # Line 1243
    jr	$ra
    # Line 1244
    addiu	$sp,$sp,80
.end LongStippledLine

