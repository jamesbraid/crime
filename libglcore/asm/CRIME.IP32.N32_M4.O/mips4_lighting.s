# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME.IP32.N32_M4.O/mips4_lighting.s
# Category: CRIME.IP32.N32_M4.O
# Compiler Options: 
# Total Functions: 4

.text

# Function: __glClampAndScaleColor
# Declared: Line 230 (Source lines: 230-263)
# Address: 0x0d935d80 - 0x0d935e08 (Size: 136 bytes, Frame: 0)
.globl __glClampAndScaleColor
.ent __glClampAndScaleColor
__glClampAndScaleColor:
    # Line 230
    lwc1	$f0,432($a0)
    # Line 231
    lwc1	$f1,30752($a0)
    # Line 232
    mtc1	$zero,$f2
    # Line 233
    lwc1	$f3,436($a0)
    # Line 234
    lwc1	$f4,30756($a0)
    # Line 235
    mul.s	$f5,$f0,$f1
    # Line 236
    lwc1	$f6,440($a0)
    # Line 237
    c.lt.s	$f0,$f2
    # Line 238
    lwc1	$f7,30760($a0)
    # Line 239
    mul.s	$f8,$f3,$f4
    # Line 240
    lwc1	$f9,444($a0)
    # Line 241
    c.lt.s $f3,$f2
    # Line 242
    lwc1	$f10,30792($a0)
    # Line 243
    mul.s	$f11,$f6,$f7
    # Line 244
    movt.s	$f5,$f2,$fcc0
    # Line 245
    c.lt.s $f6,$f2
    # Line 246
    movt.s	$f8,$f2,$fcc2
    # Line 247
    c.lt.s $f1,$f5
    # Line 248
    movt.s	$f5,$f1,$fcc1
    # Line 249
    mul.s	$f12,$f9,$f10
    # Line 250
    movt.s	$f11,$f2,$fcc4
    # Line 251
    c.lt.s $f4,$f8
    # Line 252
    movt.s	$f8,$f4,$fcc3
    # Line 253
    c.lt.s $f7,$f11
    # Line 254
    movt.s	$f11,$f4,$fcc5
    # Line 255
    c.lt.s $f9,$f2
    # Line 256
    movt.s	$f12,$f2,$fcc6
    # Line 257
    c.lt.s $f10,$f12
    # Line 258
    swc1	$f5,192($a0)
    # Line 259
    swc1	$f8,196($a0)
    # Line 260
    movt.s	$f12,$f4,$fcc7
    # Line 261
    swc1	$f11,200($a0)
    # Line 262
    jr	$ra
    # Line 263
    swc1	$f12,204($a0)
.end __glClampAndScaleColor

# Function: __glFastCalcRGBColor
# Declared: Line 283 (Source lines: 283-407)
# Address: 0x0d935e08 - 0x0d935fac (Size: 420 bytes, Frame: 0)
.globl __glFastCalcRGBColor
.ent __glFastCalcRGBColor
__glFastCalcRGBColor:
    # Line 283
    lw	$v0,28180($a0)
    # Line 284
    lwc1	$f13,32($a2)
    # Line 285
    lwc1	$f14,36($a2)
    # Line 286
    bnez	$a1,.L0d935f58
    # Line 287
    lwc1	$f15,40($a2)
    # Line 288
    li	$v1,0
    # Line 289
    addiu	$a1,$a2,144
    # Line 290
    addiu	$a2,$a0,28100
.L0d935e28:
    # Line 294
    lwc1	$f16,0($a2)
    # Line 295
    lwc1	$f17,4($a2)
    # Line 296
    beqz	$v0,.L0d935f8c
    # Line 297
    lwc1	$f18,8($a2)
.L0d935e38:
    # Line 300
    lwc1	$f19,160($v0)
    # Line 301
    lwc1	$f0,176($v0)
    # Line 302
    mul.s	$f1,$f19,$f13
    # Line 303
    addu	$a3,$v0,$v1
    # Line 304
    lwc1	$f2,164($v0)
    # Line 305
    mul.s	$f3,$f0,$f13
    # Line 306
    lwc1	$f4,180($v0)
    # Line 307
    lwc1	$f5,0($a3)
    # Line 308
    madd.s	$f1,$f1,$f2,$f14
    # Line 309
    lwc1	$f6,4($a3)
    # Line 310
    madd.s	$f3,$f3,$f4,$f14
    # Line 311
    lwc1	$f7,168($v0)
    # Line 312
    add.s	$f16,$f16,$f5
    # Line 313
    lwc1	$f8,184($v0)
    # Line 314
    add.s	$f17,$f17,$f6
    # Line 315
    lwc1	$f9,8($a3)
    # Line 316
    madd.s	$f1,$f1,$f7,$f15
    # Line 317
    lw	$v0,200($v0)
    # Line 318
    madd.s	$f3,$f3,$f8,$f15
    # Line 319
    lwc1	$f10,24($a2)
    # Line 320
    add.s	$f18,$f18,$f9
    # Line 321
    mtc1	$zero,$f11
    # Line 322
    lwc1	$f12,3540($a0)
    # Line 323
    sub.s	$f1,$f1,$f10
    # Line 324
    lwc1	$f19,28($a2)
    # Line 325
    c.le.s	$f3,$f11
    # Line 326
    bc1t	.L0d935f88
    # Line 327
    lwc1	$f0,16($a3)
    # Line 328
    madd.s	$f2,$f12,$f1,$f19
    # Line 329
    lwc1	$f4,20($a3)
    # Line 330
    madd.s	$f16,$f16,$f0,$f3
    # Line 331
    lwc1	$f5,24($a3)
    # Line 332
    madd.s	$f17,$f17,$f4,$f3
    # Line 333
    lw	$t0,36($a2)
    # Line 334
    c.lt.s	$f1,$f11
    # Line 335
    lw	$t1,20($a2)
    # Line 336
    trunc.w.s	$f2,$f2
    # Line 337
    sw	$t0,12($a1)
    # Line 338
    madd.s	$f18,$f18,$f5,$f3
    # Line 339
    bc1t	.L0d935f88
    # Line 340
    mfc1	$t3,$f2
    # Line 341
    lwc1	$f6,32($a3)
    # Line 342
    slti	$a4,$t3,256
    # Line 343
    beqz	$a4,.L0d935f74
    # Line 344
    sll	$t3,$t3,0x2
    # Line 345
    addu	$t1,$t1,$t3
    # Line 346
    lwc1	$f7,0($t1)
    # Line 347
    lwc1	$f8,36($a3)
    # Line 348
    lwc1	$f9,40($a3)
    # Line 349
    madd.s	$f16,$f16,$f6,$f7
    # Line 350
    lwc1	$f10,30752($a0)
    # Line 351
    madd.s	$f17,$f17,$f8,$f7
    # Line 352
    lwc1	$f12,30756($a0)
    # Line 353
    madd.s	$f18,$f18,$f9,$f7
    # Line 354
    bnez	$v0,.L0d935e38
    # Line 355
    lwc1	$f19,30760($a0)
    # Line 356
    c.lt.s	$f16,$f11
.L0d935f1c:
    # Line 358
    c.lt.s $f10,$f16
    # Line 359
    c.lt.s $f17,$f11
    # Line 360
    movt.s	$f16,$f11,$fcc0
    # Line 361
    c.lt.s $f12,$f17
    # Line 362
    movt.s	$f16,$f10,$fcc1
    # Line 363
    c.lt.s $f18,$f11
    # Line 364
    movt.s	$f17,$f11,$fcc2
    # Line 365
    c.lt.s $f19,$f18
    # Line 366
    movt.s	$f17,$f12,$fcc3
    # Line 367
    swc1	$f16,0($a1)
    # Line 368
    movt.s	$f18,$f11,$fcc4
    # Line 369
    swc1	$f17,4($a1)
    # Line 370
    movt.s	$f18,$f19,$fcc5
    # Line 371
    jr	$ra
    # Line 372
    swc1	$f18,8($a1)
.L0d935f58:
    # Line 378
    addiu	$a1,$a2,160
    # Line 379
    neg.s	$f13,$f13
    # Line 380
    addiu	$a2,$a0,28140
    # Line 381
    neg.s	$f14,$f14
    # Line 382
    li	$v1,48
    # Line 383
    b	.L0d935e28
    # Line 384
    neg.s	$f15,$f15
.L0d935f74:
    # Line 388
    lwc1	$f0,36($a3)
    # Line 389
    add.s	$f16,$f16,$f6
    # Line 390
    lwc1	$f1,40($a3)
    # Line 391
    add.s	$f17,$f17,$f0
    # Line 392
    add.s	$f18,$f18,$f1
.L0d935f88:
    # Line 396
    bnez	$v0,.L0d935e38
.L0d935f8c:
    # Line 400
    lw	$a5,36($a2)
    # Line 401
    lwc1	$f10,30752($a0)
    # Line 402
    lwc1	$f12,30756($a0)
    # Line 403
    lwc1	$f19,30760($a0)
    # Line 404
    mtc1	$zero,$f11
    # Line 405
    sw	$a5,12($a1)
    # Line 406
    b	.L0d935f1c
    # Line 407
    c.lt.s	$f16,$f11
.end __glFastCalcRGBColor

# Function: vvec
# Declared: Line 430 (Source lines: 430-486)
# Address: 0x0d935fac - 0x0d936078 (Size: 204 bytes, Frame: 0)
.ent vvec
vvec:
    # Line 430
    lw	$a7,12($a1)
    # Line 431
    lw	$t8,12($a2)
    # Line 432
    lwc1	$f3,12($a1)
    # Line 433
    sll	$a7,$a7,0x1
    # Line 434
    sll	$t8,$t8,0x1
    # Line 435
    beqz	$a7,.L0d936020
    # Line 436
    lwc1	$f5,0($a2)
    # Line 437
    beqz	$t8,.L0d93600c
    # Line 438
    lwc1	$f6,4($a2)
    # Line 439
    lwc1	$f7,8($a2)
    # Line 440
    mul.s	$f8,$f5,$f3
    # Line 441
    lwc1	$f9,12($a2)
    # Line 442
    mul.s	$f10,$f6,$f3
    # Line 443
    lwc1	$f11,0($a1)
    # Line 444
    mul.s	$f12,$f7,$f3
    # Line 445
    lwc1	$f13,4($a1)
    # Line 446
    nmsub.s	$f8,$f8,$f11,$f9
    # Line 447
    lwc1	$f14,8($a1)
    # Line 448
    nmsub.s	$f10,$f10,$f13,$f9
    # Line 449
    nmsub.s	$f12,$f12,$f14,$f9
    # Line 450
    swc1	$f8,0($a0)
    # Line 451
    swc1	$f10,4($a0)
    # Line 452
    jr	$ra
    # Line 453
    swc1	$f12,8($a0)
.L0d93600c:
    # Line 456
    lwc1	$f15,8($a2)
    # Line 457
    swc1	$f5,0($a0)
    # Line 458
    swc1	$f6,4($a0)
    # Line 459
    jr	$ra
    # Line 460
    swc1	$f15,8($a0)
.L0d936020:
    # Line 463
    beqz	$t8,.L0d93604c
    # Line 464
    lwc1	$f16,0($a1)
    # Line 465
    lwc1	$f17,4($a1)
    # Line 466
    lwc1	$f18,8($a1)
    # Line 467
    neg.s	$f16,$f16
    # Line 468
    neg.s	$f17,$f17
    # Line 469
    neg.s	$f18,$f18
    # Line 470
    swc1	$f16,0($a0)
    # Line 471
    swc1	$f17,4($a0)
    # Line 472
    jr	$ra
    # Line 473
    swc1	$f18,8($a0)
.L0d93604c:
    # Line 476
    lwc1	$f19,4($a1)
    # Line 477
    lwc1	$f1,4($a2)
    # Line 478
    lwc1	$f3,8($a2)
    # Line 479
    sub.s	$f6,$f5,$f16
    # Line 480
    lwc1	$f7,8($a1)
    # Line 481
    sub.s	$f8,$f1,$f19
    # Line 482
    sub.s	$f9,$f3,$f7
    # Line 483
    swc1	$f6,0($a0)
    # Line 484
    swc1	$f8,4($a0)
    # Line 485
    jr	$ra
    # Line 486
    swc1	$f9,8($a0)
.end vvec

# Function: __glCalcRGBColor
# Declared: Line 546 (Source lines: 546-841)
# Address: 0x0d936078 - 0x0d936408 (Size: 912 bytes, Frame: 208)
.globl __glCalcRGBColor
.ent __glCalcRGBColor
__glCalcRGBColor:
    # Line 546
    addiu	$sp,$sp,-208
    # Line 548
    sw	$ra,144($sp)
    # Line 551
    lui	$t9,0x3f80
    # Line 552
    move	$t0,$a0
    # Line 553
    move	$t1,$a2
    # Line 554
    sw	$t9,16($sp)
    # Line 558
    lwc1	$f10,32($t1)
    # Line 559
    lwc1	$f11,36($t1)
    # Line 560
    beqz	$a1,.L0d9360bc
    # Line 561
    lwc1	$f12,40($t1)
    # Line 562
    addiu	$a4,$t1,160
    # Line 563
    neg.s	$f10,$f10
    # Line 564
    addiu	$a5,$t0,28140
    # Line 565
    neg.s	$f11,$f11
    # Line 566
    li	$t3,48
    # Line 567
    b	.L0d9360c8
    # Line 568
    neg.s	$f12,$f12
.L0d9360bc:
    # Line 571
    li	$t3,0
    # Line 572
    addiu	$a4,$t1,144
    # Line 573
    addiu	$a5,$t0,28100
.L0d9360c8:
    # Line 576
    swc1	$f10,32($sp)
    # Line 577
    swc1	$f11,36($sp)
    # Line 578
    swc1	$f12,40($sp)
    # Line 582
    lw	$v0,108($t1)
    # Line 583
    lwc1	$f0,0($a5)
    # Line 584
    lwc1	$f2,4($a5)
    # Line 585
    lw	$t2,28180($t0)
    # Line 586
    li	$a6,1
    # Line 587
    lwc1	$f4,8($a5)
    # Line 588
    beqz	$t2,.L0d9363a8
    # Line 589
    movn	$a6,$zero,$v0
.L0d9360f4:
    # Line 592
    lbu	$v1,220($t2)
    # Line 593
    addiu	$a0,$sp,64
    # Line 594
    or	$v1,$v1,$a6
    # Line 595
    beqz	$v1,.L0d9362bc
    # Line 596
    addiu	$a1,$t1,96
    # Line 601
    bal	__glFastCalcRGBColor
    # Line 602
    addiu	$a2,$t2,116
    # Line 605
    lw	$t9,11904($t0)
    # Line 606
    addiu	$a1,$sp,64
    # Line 607
    jalr	$t9
    # Line 608
    addiu	$a0,$sp,80
    # Line 611
    lbu	$a0,1412($t0)
    # Line 612
    lwc1	$f5,16($sp)
    # Line 613
    beqz	$a0,.L0d936190
    # Line 614
    addiu	$a0,$sp,96
    # Line 615
    addiu	$a1,$t1,96
    # Line 616
    addiu	$a2,$sp,128
    # Line 617
    sw	$zero,128($sp)
    # Line 618
    sw	$zero,132($sp)
    # Line 619
    sw	$zero,136($sp)
    # Line 620
    bal	__glFastCalcRGBColor
    # Line 621
    swc1	$f5,140($sp)
    # Line 623
    lw	$t9,11904($t0)
    # Line 624
    addiu	$a0,$sp,96
    # Line 625
    jalr	$t9
    # Line 626
    move	$a1,$a0
    # Line 628
    lwc1	$f6,80($sp)
    # Line 629
    lwc1	$f7,96($sp)
    # Line 630
    lwc1	$f8,84($sp)
    # Line 631
    lwc1	$f9,100($sp)
    # Line 632
    add.s	$f10,$f6,$f7
    # Line 633
    lwc1	$f11,88($sp)
    # Line 634
    lwc1	$f12,104($sp)
    # Line 635
    add.s	$f13,$f8,$f9
    # Line 636
    add.s	$f14,$f11,$f12
    # Line 637
    swc1	$f10,112($sp)
    # Line 638
    swc1	$f13,116($sp)
    # Line 639
    b	.L0d9361ac
    # Line 640
    swc1	$f14,120($sp)
.L0d936190:
    # Line 643
    lwc1	$f15,88($sp)
    # Line 644
    lwc1	$f16,80($sp)
    # Line 645
    add.s	$f17,$f15,$f5
    # Line 646
    lwc1	$f18,84($sp)
    # Line 647
    swc1	$f16,112($sp)
    # Line 648
    swc1	$f18,116($sp)
    # Line 649
    swc1	$f17,120($sp)
.L0d9361ac:
    # Line 652
    lw	$t9,11904($t0)
    # Line 653
    addiu	$a0,$sp,48
    # Line 654
    jalr	$t9
    # Line 655
    addiu	$a1,$sp,112
    # Line 661
    lw	$a1,128($t2)
    # Line 662
    lw	$a2,104($t2)
    # Line 663
    lw	$a3,108($t2)
    # Line 664
    lwc1	$f19,16($sp)
    # Line 665
    beqz	$a1,.L0d936214
    # Line 666
    or	$a2,$a2,$a3
    # Line 667
    beqz	$a2,.L0d936214
    # Line 669
    lwc1	$f19,152($t2)
    # Line 671
    lwc1	$f1,64($sp)
    # Line 672
    lwc1	$f3,68($sp)
    # Line 673
    lwc1	$f5,72($sp)
    # Line 674
    mul.s	$f6,$f1,$f1
    # Line 675
    lwc1	$f7,104($t2)
    # Line 676
    madd.s	$f6,$f6,$f3,$f3
    # Line 677
    lwc1	$f8,108($t2)
    # Line 678
    madd.s	$f6,$f6,$f5,$f5
    # Line 679
    lwc1	$f9,100($t2)
    # Line 680
    sqrt.s	$f6,$f6
    # Line 681
    mul.s	$f10,$f6,$f6
    # Line 682
    madd.s	$f19,$f9,$f7,$f6
    # Line 683
    madd.s	$f19,$f19,$f8,$f10
    # Line 684
    recip.s	$f19,$f19
.L0d936214:
    # Line 690
    lbu	$a7,156($t2)
    # Line 691
    mov.s	$f11,$f19
    # Line 692
    lwc1	$f12,80($sp)
    # Line 693
    beqz	$a7,.L0d936298
    # Line 694
    lwc1	$f13,132($t2)
    # Line 695
    lwc1	$f14,84($sp)
    # Line 696
    lwc1	$f15,136($t2)
    # Line 697
    mul.s	$f16,$f12,$f13
    # Line 698
    lwc1	$f17,88($sp)
    # Line 699
    lwc1	$f18,140($t2)
    # Line 700
    madd.s	$f16,$f16,$f14,$f15
    # Line 701
    lwc1	$f1,208($t2)
    # Line 702
    mtc1	$zero,$f11
    # Line 703
    nmadd.s	$f16,$f16,$f17,$f18
    # Line 704
    lwc1	$f3,148($t2)
    # Line 705
    c.lt.s	$f16,$f1
    # Line 706
    lwc1	$f5,212($t2)
    # Line 707
    c.lt.s $f16,$f3
    # Line 708
    lwc1	$f6,3540($t0)
    # Line 709
    bc1t	.L0d936298
    # Line 710
    sub.s	$f16,$f16,$f1
    # Line 711
    bc1t .L0d936298
    # Line 712
    madd.s	$f7,$f6,$f16,$f5
    # Line 713
    trunc.w.s	$f7,$f7
    # Line 714
    mfc1	$t9,$f7
    # Line 715
    lw	$v0,204($t2)
    # Line 716
    slti	$v1,$t9,256
    # Line 717
    beqz	$v1,.L0d936298
    # Line 718
    sll	$t9,$t9,0x2
    # Line 719
    addu	$v0,$v0,$t9
    # Line 720
    lwc1	$f11,0($v0)
    # Line 721
    nop
    # Line 722
    mul.s	$f11,$f11,$f19
.L0d936298:
    # Line 734
    mfc1	$a0,$f11
    # Line 735
    addiu	$a1,$sp,80
    # Line 736
    lw	$a2,200($t2)
    # Line 737
    bnez	$a0,.L0d9362c8
    # Line 738
    addiu	$a3,$sp,48
    # Line 739
    bnez	$a2,.L0d9360f4
    # Line 740
    move	$t2,$a2
    # Line 741
    b	.L0d9363a8
    # Line 742
    nop
.L0d9362bc:
    # Line 745
    lwc1	$f11,16($sp)
    # Line 746
    addiu	$a1,$t2,176
    # Line 747
    addiu	$a3,$t2,160
.L0d9362c8:
    # Line 750
    addu	$a7,$t2,$t3
    # Line 752
    lwc1	$f8,32($sp)
    # Line 753
    lwc1	$f9,0($a3)
    # Line 754
    lwc1	$f10,0($a1)
    # Line 755
    lwc1	$f12,36($sp)
    # Line 756
    mul.s	$f13,$f8,$f9
    # Line 757
    lwc1	$f14,4($a3)
    # Line 758
    mul.s	$f15,$f8,$f10
    # Line 759
    lwc1	$f16,4($a1)
    # Line 760
    lwc1	$f17,40($sp)
    # Line 761
    lwc1	$f18,8($a3)
    # Line 762
    madd.s	$f13,$f13,$f12,$f14
    # Line 763
    lwc1	$f19,8($a1)
    # Line 764
    madd.s	$f15,$f15,$f12,$f16
    # Line 765
    mtc1	$zero,$f1
    # Line 766
    lwc1	$f3,0($a7)
    # Line 767
    lwc1	$f5,4($a7)
    # Line 768
    lwc1	$f6,24($a5)
    # Line 769
    madd.s	$f13,$f13,$f17,$f18
    # Line 770
    lwc1	$f7,8($a7)
    # Line 771
    madd.s	$f15,$f15,$f17,$f19
    # Line 772
    lwc1	$f8,28($a5)
    # Line 773
    sub.s	$f13,$f13,$f6
    # Line 774
    lwc1	$f9,3540($t0)
    # Line 775
    c.le.s	$f15,$f1
    # Line 776
    bc1t	.L0d936394
    # Line 777
    madd.s	$f10,$f9,$f13,$f8
    # Line 778
    c.le.s	$f13,$f1
    # Line 779
    bc1t	.L0d93637c
    # Line 780
    trunc.w.s	$f10,$f10
    # Line 781
    lwc1	$f12,16($sp)
    # Line 782
    mfc1	$t9,$f10
    # Line 783
    lw	$v0,20($a5)
    # Line 784
    slti	$v1,$t9,256
    # Line 785
    sll	$t9,$t9,0x2
    # Line 786
    addu	$v0,$v0,$t9
    # Line 787
    bnezl	$v1,.L0d936360
    # Line 788
    lwc1	$f13,0($v0)
.L0d936360:
    # Line 790
    lwc1	$f14,32($a7)
    # Line 791
    lwc1	$f16,36($a7)
    # Line 792
    movz.s	$f13,$f12,$v1
    # Line 793
    lwc1	$f17,40($a7)
    # Line 794
    madd.s	$f3,$f3,$f13,$f14
    # Line 795
    madd.s	$f5,$f5,$f13,$f16
    # Line 796
    madd.s	$f7,$f7,$f13,$f17
.L0d93637c:
    # Line 799
    lwc1	$f18,16($a7)
    # Line 800
    lwc1	$f19,20($a7)
    # Line 801
    lwc1	$f1,24($a7)
    # Line 802
    madd.s	$f3,$f3,$f15,$f18
    # Line 803
    madd.s	$f5,$f5,$f15,$f19
    # Line 804
    madd.s	$f7,$f7,$f15,$f1
.L0d936394:
    # Line 807
    lw	$t2,200($t2)
    # Line 808
    madd.s	$f0,$f0,$f11,$f3
    # Line 809
    madd.s	$f2,$f2,$f11,$f5
    # Line 810
    bnez	$t2,.L0d9360f4
    # Line 811
    madd.s	$f4,$f4,$f11,$f7
.L0d9363a8:
    # Line 817
    lw	$a0,36($a5)
    # Line 818
    lwc1	$f3,30752($t0)
    # Line 819
    lwc1	$f5,30756($t0)
    # Line 820
    lwc1	$f6,30760($t0)
    # Line 821
    mtc1	$zero,$f7
    # Line 822
    sw	$a0,12($a4)
    # Line 823
    c.lt.s	$f0,$f7
    # Line 824
    c.lt.s $f3,$f0
    # Line 825
    c.lt.s $f2,$f7
    # Line 826
    movt.s	$f0,$f7,$fcc0
    # Line 827
    c.lt.s $f5,$f2
    # Line 828
    movt.s	$f0,$f3,$fcc1
    # Line 829
    c.lt.s $f4,$f7
    # Line 830
    movt.s	$f2,$f7,$fcc2
    # Line 831
    c.lt.s $f6,$f4
    # Line 832
    movt.s	$f2,$f5,$fcc3
    # Line 833
    swc1	$f0,0($a4)
    # Line 834
    swc1	$f2,4($a4)
    # Line 835
    movt.s	$f4,$f7,$fcc4
    # Line 836
    movt.s	$f4,$f6,$fcc5
    # Line 837
    lw	$ra,144($sp)
    # Line 838
    swc1	$f4,8($a4)
    # Line 840
    jr	$ra
    # Line 841
    addiu	$sp,$sp,208
.end __glCalcRGBColor

