# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME.IP32.N32_M4.O/mips4_vclip.s
# Category: CRIME.IP32.N32_M4.O
# Compiler Options: 
# Total Functions: 13

.text

# Function: __glMipsClipCheckFrustum
# Declared: Line 144 (Source lines: 144-171)
# Address: 0x0d933ea0 - 0x0d933f0c (Size: 108 bytes, Frame: 0)
.globl __glMipsClipCheckFrustum
.ent __glMipsClipCheckFrustum
__glMipsClipCheckFrustum:
    # Line 144
    neg.s	$f1,$f6
    # Line 145
    c.lt.s $f0,$f1
    # Line 146
    lwc1	$f3,1720($a0)
    # Line 147
    c.lt.s $f6,$f0
    # Line 148
    lwc1	$f5,1728($a0)
    # Line 149
    c.lt.s $f2,$f1
    # Line 150
    lwc1	$f7,1736($a0)
    # Line 151
    c.lt.s $f6,$f2
    # Line 152
    lwc1	$f9,1724($a0)
    # Line 153
    c.lt.s $f4,$f1
    # Line 154
    lwc1	$f10,1732($a0)
    # Line 155
    c.lt.s $f6,$f4
    # Line 156
    lwc1	$f11,1740($a0)
    # Line 157
    mul.s	$f0,$f0,$f3
    # Line 158
    mul.s	$f2,$f2,$f5
    # Line 159
    cfc1	$v0,c1_fcsr
    # Line 160
    mul.s	$f4,$f4,$f7
    # Line 162
    madd.s	$f0,$f9,$f0,$f8
    # Line 163
    srl	$v0,$v0,0x19
    # Line 164
    madd.s	$f2,$f10,$f2,$f8
    # Line 165
    andi	$v0,$v0,0x3f
    # Line 166
    madd.s	$f4,$f11,$f4,$f8
    # Line 167
    swc1	$f8,140($a1)
    # Line 168
    swc1	$f0,128($a1)
    # Line 169
    swc1	$f2,132($a1)
    # Line 170
    jr	$ra
    # Line 171
    swc1	$f4,136($a1)
.end __glMipsClipCheckFrustum

# Function: __glMipsClipCheckFrustum_W
# Declared: Line 188 (Source lines: 188-211)
# Address: 0x0d933f0c - 0x0d933f6c (Size: 96 bytes, Frame: 0)
.globl __glMipsClipCheckFrustum_W
.ent __glMipsClipCheckFrustum_W
__glMipsClipCheckFrustum_W:
    # Line 188
    neg.s	$f12,$f6
    # Line 189
    c.lt.s $f0,$f12
    # Line 190
    lwc1	$f13,1720($a0)
    # Line 191
    c.lt.s $f6,$f0
    # Line 192
    lwc1	$f14,1728($a0)
    # Line 193
    c.lt.s $f2,$f12
    # Line 194
    lwc1	$f15,1736($a0)
    # Line 195
    c.lt.s $f6,$f2
    # Line 196
    lwc1	$f16,1724($a0)
    # Line 197
    c.lt.s $f4,$f12
    # Line 198
    lwc1	$f17,1732($a0)
    # Line 199
    c.lt.s $f6,$f4
    # Line 200
    lwc1	$f18,1740($a0)
    # Line 201
    madd.s	$f0,$f16,$f0,$f13
    # Line 202
    cfc1	$v0,c1_fcsr
    # Line 203
    madd.s	$f2,$f17,$f2,$f14
    # Line 204
    swc1	$f6,140($a1)
    # Line 205
    madd.s	$f4,$f18,$f4,$f15
    # Line 206
    srl	$v0,$v0,0x19
    # Line 207
    andi	$v0,$v0,0x3f
    # Line 208
    swc1	$f0,128($a1)
    # Line 209
    swc1	$f2,132($a1)
    # Line 210
    jr	$ra
    # Line 211
    swc1	$f4,136($a1)
.end __glMipsClipCheckFrustum_W

# Function: __glMipsClipCheckFrustum2D
# Declared: Line 229 (Source lines: 229-251)
# Address: 0x0d933f6c - 0x0d933fc8 (Size: 92 bytes, Frame: 0)
.globl __glMipsClipCheckFrustum2D
.ent __glMipsClipCheckFrustum2D
__glMipsClipCheckFrustum2D:
    # Line 229
    neg.s	$f19,$f6
    # Line 230
    lwc1	$f1,1720($a0)
    # Line 231
    c.lt.s $f0,$f19
    # Line 232
    lwc1	$f3,1728($a0)
    # Line 233
    c.lt.s $f6,$f0
    # Line 234
    lwc1	$f4,1724($a0)
    # Line 235
    c.lt.s $f2,$f19
    # Line 236
    lwc1	$f5,1732($a0)
    # Line 237
    c.lt.s $f6,$f2
    # Line 238
    lwc1	$f7,1740($a0)
    # Line 239
    madd.s	$f0,$f4,$f0,$f1
    # Line 240
    lwc1	$f8,1736($a0)
    # Line 241
    madd.s	$f2,$f5,$f2,$f3
    # Line 242
    lwc1	$f9,120($a1)
    # Line 243
    cfc1	$v0,c1_fcsr
    # Line 244
    swc1	$f6,140($a1)
    # Line 245
    madd.s	$f9,$f7,$f9,$f8
    # Line 246
    srl	$v0,$v0,0x19
    # Line 247
    andi	$v0,$v0,0xf
    # Line 248
    swc1	$f0,128($a1)
    # Line 249
    swc1	$f2,132($a1)
    # Line 250
    jr	$ra
    # Line 251
    swc1	$f9,136($a1)
.end __glMipsClipCheckFrustum2D

# Function: __glMipsClipCheckSafe2
# Declared: Line 270 (Source lines: 270-276)
# Address: 0x0d933fc8 - 0x0d933fe4 (Size: 28 bytes, Frame: 0)
.globl __glMipsClipCheckSafe2
.ent __glMipsClipCheckSafe2
__glMipsClipCheckSafe2:
    # Line 270
    lw	$t9,11936($a0)
    # Line 271
    lwc1	$f6,124($a1)
    # Line 272
    lwc1	$f0,112($a1)
    # Line 273
    recip.s	$f8,$f6
    # Line 274
    lwc1	$f2,116($a1)
    # Line 275
    jr	$t9
    # Line 276
    lwc1	$f4,120($a1)
.end __glMipsClipCheckSafe2

# Function: __glMipsClipCheckSafe3
# Declared: Line 290 (Source lines: 290-296)
# Address: 0x0d933fe4 - 0x0d934000 (Size: 28 bytes, Frame: 0)
.globl __glMipsClipCheckSafe3
.ent __glMipsClipCheckSafe3
__glMipsClipCheckSafe3:
    # Line 290
    lw	$t9,11940($a0)
    # Line 291
    lwc1	$f6,124($a1)
    # Line 292
    lwc1	$f0,112($a1)
    # Line 293
    recip.s	$f8,$f6
    # Line 294
    lwc1	$f2,116($a1)
    # Line 295
    jr	$t9
    # Line 296
    lwc1	$f4,120($a1)
.end __glMipsClipCheckSafe3

# Function: __glMipsClipCheckSafe4
# Declared: Line 311 (Source lines: 311-317)
# Address: 0x0d934000 - 0x0d93401c (Size: 28 bytes, Frame: 0)
.globl __glMipsClipCheckSafe4
.ent __glMipsClipCheckSafe4
__glMipsClipCheckSafe4:
    # Line 311
    lw	$t9,11944($a0)
    # Line 312
    lwc1	$f6,124($a1)
    # Line 313
    lwc1	$f0,112($a1)
    # Line 314
    recip.s	$f8,$f6
    # Line 315
    lwc1	$f2,116($a1)
    # Line 316
    jr	$t9
    # Line 317
    lwc1	$f4,120($a1)
.end __glMipsClipCheckSafe4

# Function: __glMipsClipCheckAll2
# Declared: Line 340 (Source lines: 340-364)
# Address: 0x0d93401c - 0x0d93407c (Size: 96 bytes, Frame: 224)
.globl __glMipsClipCheckAll2
.ent __glMipsClipCheckAll2
__glMipsClipCheckAll2:
    # Line 340
    addiu	$sp,$sp,-96
    # Line 344
    sd	$gp,16($sp)
    lui	$gp,0x12
    daddiu	$gp,$gp,-12944
    daddu	$gp,$gp,$t9
    # Line 354
    # lw $t9, -23556($gp) # &__glClipCheckAll2
    # Line 346
    sd	$ra,88($sp)
    # Line 347
    sd	$t3,72($sp)
    # Line 348
    sd	$t2,64($sp)
    # Line 349
    sd	$t1,56($sp)
    # Line 350
    sd	$t0,48($sp)
    # Line 351
    sd	$a1,40($sp)
    # Line 354
    jal	__glClipCheckAll2
    # Line 352
    sd	$a0,32($sp)
    # Line 355
    ld	$ra,88($sp)
    # Line 356
    ld	$t3,72($sp)
    # Line 357
    ld	$t2,64($sp)
    # Line 358
    ld	$t1,56($sp)
    # Line 359
    ld	$t0,48($sp)
    # Line 360
    ld	$a1,40($sp)
    # Line 361
    ld	$a0,32($sp)
    # Line 362
    ld	$gp,16($sp)
    # Line 364
    jr	$ra
    # Line 363
    addiu	$sp,$sp,96
.end __glMipsClipCheckAll2

# Function: __glMipsClipCheckAll3
# Declared: Line 373 (Source lines: 373-397)
# Address: 0x0d93407c - 0x0d9340dc (Size: 96 bytes, Frame: 224)
.globl __glMipsClipCheckAll3
.ent __glMipsClipCheckAll3
__glMipsClipCheckAll3:
    # Line 373
    addiu	$sp,$sp,-96
    # Line 377
    sd	$gp,16($sp)
    lui	$gp,0x12
    daddiu	$gp,$gp,-13040
    daddu	$gp,$gp,$t9
    # Line 387
    # lw $t9, -23552($gp) # &__glClipCheckAll3
    # Line 379
    sd	$ra,88($sp)
    # Line 380
    sd	$t3,72($sp)
    # Line 381
    sd	$t2,64($sp)
    # Line 382
    sd	$t1,56($sp)
    # Line 383
    sd	$t0,48($sp)
    # Line 384
    sd	$a1,40($sp)
    # Line 387
    jal	__glClipCheckAll3
    # Line 385
    sd	$a0,32($sp)
    # Line 388
    ld	$ra,88($sp)
    # Line 389
    ld	$t3,72($sp)
    # Line 390
    ld	$t2,64($sp)
    # Line 391
    ld	$t1,56($sp)
    # Line 392
    ld	$t0,48($sp)
    # Line 393
    ld	$a1,40($sp)
    # Line 394
    ld	$a0,32($sp)
    # Line 395
    ld	$gp,16($sp)
    # Line 397
    jr	$ra
    # Line 396
    addiu	$sp,$sp,96
.end __glMipsClipCheckAll3

# Function: __glMipsClipCheckAll
# Declared: Line 406 (Source lines: 406-430)
# Address: 0x0d9340dc - 0x0d93413c (Size: 96 bytes, Frame: 224)
.globl __glMipsClipCheckAll
.ent __glMipsClipCheckAll
__glMipsClipCheckAll:
    # Line 406
    addiu	$sp,$sp,-96
    # Line 410
    sd	$gp,32($sp)
    lui	$gp,0x12
    daddiu	$gp,$gp,-13136
    daddu	$gp,$gp,$t9
    # Line 420
    # lw $t9, -23548($gp) # &__glClipCheckAll
    # Line 412
    sd	$ra,88($sp)
    # Line 413
    sd	$t3,72($sp)
    # Line 414
    sd	$t2,64($sp)
    # Line 415
    sd	$t1,56($sp)
    # Line 416
    sd	$t0,48($sp)
    # Line 417
    sd	$a1,40($sp)
    # Line 420
    jal	__glClipCheckAll
    # Line 418
    sd	$a0,32($sp)
    # Line 421
    ld	$ra,88($sp)
    # Line 422
    ld	$t3,72($sp)
    # Line 423
    ld	$t2,64($sp)
    # Line 424
    ld	$t1,56($sp)
    # Line 425
    ld	$t0,48($sp)
    # Line 426
    ld	$a1,40($sp)
    # Line 427
    ld	$a0,32($sp)
    # Line 428
    ld	$gp,32($sp)
    # Line 430
    jr	$ra
    # Line 429
    addiu	$sp,$sp,96
.end __glMipsClipCheckAll

# Function: __glMipsClipCheck2D_2
# Declared: Line 461 (Source lines: 461-487)
# Address: 0x0d93413c - 0x0d9341a8 (Size: 108 bytes, Frame: 0)
.globl __glMipsClipCheck2D_2
.ent __glMipsClipCheck2D_2
__glMipsClipCheck2D_2:
    # Line 461
    addiu	$v0,$a0,29748
    # Line 462
    lwc1	$f10,20($a1)
    # Line 463
    lwc1	$f11,16($v0)
    # Line 464
    lwc1	$f12,48($v0)
    # Line 465
    lwc1	$f13,52($v0)
    # Line 466
    lwc1	$f14,20($v0)
    # Line 467
    madd.s	$f15,$f12,$f10,$f11
    # Line 468
    lwc1	$f16,16($a1)
    # Line 469
    madd.s	$f17,$f13,$f10,$f14
    # Line 470
    lwc1	$f18,0($v0)
    # Line 471
    lwc1	$f19,29732($a0)
    # Line 472
    lwc1	$f0,4($v0)
    # Line 473
    madd.s	$f15,$f15,$f16,$f18
    # Line 474
    lwc1	$f1,29740($a0)
    # Line 475
    madd.s	$f17,$f17,$f16,$f0
    # Line 476
    lwc1	$f2,29736($a0)
    # Line 477
    lwc1	$f3,29744($a0)
    # Line 478
    c.lt.s $f15,$f19
    # Line 479
    c.lt.s $f1,$f15
    # Line 480
    swc1	$f15,128($a1)
    # Line 481
    c.lt.s $f17,$f2
    # Line 482
    c.lt.s $f3,$f17
    # Line 483
    cfc1	$v0,c1_fcsr
    # Line 484
    swc1	$f17,132($a1)
    # Line 485
    srl	$v0,$v0,0x19
    # Line 486
    jr	$ra
    # Line 487
    andi	$v0,$v0,0xf
.end __glMipsClipCheck2D_2

# Function: __glMipsClipCheck2D_3
# Declared: Line 509 (Source lines: 509-543)
# Address: 0x0d9341a8 - 0x0d934234 (Size: 140 bytes, Frame: 0)
.globl __glMipsClipCheck2D_3
.ent __glMipsClipCheck2D_3
__glMipsClipCheck2D_3:
    # Line 509
    addiu	$v1,$a0,29748
    # Line 510
    lwc1	$f4,48($v1)
    # Line 511
    lwc1	$f5,16($v1)
    # Line 512
    lwc1	$f6,20($a1)
    # Line 513
    lwc1	$f7,52($v1)
    # Line 514
    madd.s	$f8,$f4,$f6,$f5
    # Line 515
    lwc1	$f9,20($v1)
    # Line 516
    lwc1	$f10,16($a1)
    # Line 517
    madd.s	$f11,$f7,$f6,$f9
    # Line 518
    lwc1	$f12,0($v1)
    # Line 519
    lwc1	$f13,4($v1)
    # Line 520
    madd.s	$f8,$f8,$f10,$f12
    # Line 521
    lwc1	$f14,56($v1)
    # Line 522
    lwc1	$f15,24($a1)
    # Line 523
    madd.s	$f11,$f11,$f10,$f13
    # Line 524
    lwc1	$f16,40($v1)
    # Line 525
    lwc1	$f17,29732($a0)
    # Line 526
    madd.s	$f18,$f14,$f15,$f16
    # Line 527
    lwc1	$f19,29740($a0)
    # Line 528
    c.lt.s $f8,$f17
    # Line 529
    lwc1	$f0,3544($a0)
    # Line 530
    c.lt.s $f19,$f8
    # Line 531
    lwc1	$f1,29736($a0)
    # Line 532
    neg.s	$f2,$f0
    # Line 533
    lwc1	$f3,29744($a0)
    # Line 534
    c.lt.s $f18,$f2
    # Line 535
    c.lt.s $f0,$f18
    # Line 536
    swc1	$f8,128($a1)
    # Line 537
    c.lt.s $f11,$f1
    # Line 538
    c.lt.s $f3,$f11
    # Line 539
    cfc1	$v0,c1_fcsr
    # Line 540
    swc1	$f11,132($a1)
    # Line 541
    srl	$v0,$v0,0x19
    # Line 542
    jr	$ra
    # Line 543
    andi	$v0,$v0,0x3f
.end __glMipsClipCheck2D_3

# Function: __glMipsClipCheck2D_3_vtx
# Declared: Line 565 (Source lines: 565-602)
# Address: 0x0d934234 - 0x0d9342cc (Size: 152 bytes, Frame: 0)
.globl __glMipsClipCheck2D_3_vtx
.ent __glMipsClipCheck2D_3_vtx
__glMipsClipCheck2D_3_vtx:
    # Line 565
    addiu	$a2,$a0,29748
    # Line 566
    lwc1	$f4,48($a2)
    # Line 567
    lwc1	$f5,16($a2)
    # Line 568
    lwc1	$f6,20($a1)
    # Line 569
    lwc1	$f7,52($a2)
    # Line 570
    lwc1	$f8,20($a2)
    # Line 571
    madd.s	$f9,$f4,$f6,$f5
    # Line 572
    lwc1	$f10,16($a1)
    # Line 573
    lwc1	$f11,0($a2)
    # Line 574
    madd.s	$f12,$f7,$f6,$f8
    # Line 575
    lwc1	$f13,4($a2)
    # Line 576
    lwc1	$f14,56($a2)
    # Line 577
    madd.s	$f9,$f9,$f10,$f11
    # Line 578
    lwc1	$f15,24($a1)
    # Line 579
    lwc1	$f16,40($a2)
    # Line 580
    madd.s	$f12,$f12,$f10,$f13
    # Line 581
    lwc1	$f17,29732($a0)
    # Line 582
    lwc1	$f18,29740($a0)
    # Line 583
    madd.s	$f19,$f14,$f15,$f16
    # Line 584
    c.lt.s $f9,$f17
    # Line 585
    lwc1	$f0,29736($a0)
    # Line 586
    c.lt.s $f18,$f9
    # Line 587
    lwc1	$f1,29744($a0)
    # Line 588
    c.lt.s $f12,$f0
    # Line 589
    lwc1	$f2,3544($a0)
    # Line 590
    c.lt.s $f1,$f12
    # Line 591
    neg.s	$f3,$f2
    # Line 592
    c.lt.s $f19,$f3
    # Line 593
    swc1	$f9,128($a1)
    # Line 594
    c.lt.s $f2,$f19
    # Line 595
    swc1	$f12,132($a1)
    # Line 596
    cfc1	$v0,c1_fcsr
    # Line 597
    lw	$t9,11948($a0)
    # Line 598
    srl	$v0,$v0,0x19
    # Line 599
    andi	$v0,$v0,0x3f
    # Line 600
    move	$ra,$t0
    # Line 601
    jr	$t9
    # Line 602
    sw	$v0,4($a1)
.end __glMipsClipCheck2D_3_vtx

# Function: __glMipsClipCheck2D_4
# Declared: Line 622 (Source lines: 622-643)
# Address: 0x0d9342cc - 0x0d934318 (Size: 76 bytes, Frame: 220)
.globl __glMipsClipCheck2D_4
.ent __glMipsClipCheck2D_4
__glMipsClipCheck2D_4:
    # Line 622
    addiu	$sp,$sp,-96
    # Line 624
    lw	$a3,29660($a0)
    # Line 625
    sw	$ra,88($sp)
    # Line 626
    sw	$a0,80($sp)
    # Line 629
    addi	$a0,$a1,112
    # Line 631
    addi	$a2,$a3,176
    # Line 627
    sw	$a1,72($sp)
    # Line 630
    addi	$a1,$a1,16
    # Line 628
    lw	$t9,256($a3)
    # Line 632
    jalr	$t9
    nop
    # Line 634
    lw	$a1,72($sp)
    # Line 637
    bal	__glMipsClipCheckFrustum
    # Line 635
    lw	$a0,80($sp)
    # Line 640
    lw	$ra,88($sp)
    # Line 642
    addiu	$sp,$sp,96
    # Line 641
    sw	$v0,4($a1)
    # Line 643
    jr	$ra
    nop
.end __glMipsClipCheck2D_4

