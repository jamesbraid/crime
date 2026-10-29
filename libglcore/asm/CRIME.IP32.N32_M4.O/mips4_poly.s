# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME.IP32.N32_M4.O/mips4_poly.s
# Category: CRIME.IP32.N32_M4.O
# Compiler Options: 
# Total Functions: 5

.text

# Function: __glRenderFlatTriangle
# Declared: Line 201 (Source lines: 201-454)
# Address: 0x0d934960 - 0x0d934bc4 (Size: 612 bytes, Frame: 208)
.globl __glRenderFlatTriangle
.ent __glRenderFlatTriangle
__glRenderFlatTriangle:
    # Line 201
    lwc1	$f0,132($a1)
    # Line 202
    lwc1	$f1,132($a2)
    # Line 203
    addiu	$sp,$sp,-80
    # Line 205
    lwc1	$f2,132($a3)
    # Line 206
    c.lt.s $f0,$f1
    # Line 207
    move	$v0,$zero
    # Line 208
    bc1f .L0d9349d0
    # Line 209
    c.lt.s $f1,$f2
    # Line 210
    bc1t .L0d934a24
    # Line 211
    c.lt.s $f0,$f2
    # Line 212
    bc1f .L0d9349ac
    # Line 213
    move	$v1,$a2
    # Line 214
    mov.s	$f3,$f1
    # Line 215
    move	$a2,$a3
    # Line 216
    mov.s	$f1,$f2
    # Line 217
    move	$a3,$v1
    # Line 218
    mov.s	$f2,$f3
    # Line 219
    b	.L0d934a24
    # Line 220
    li	$v0,1
.L0d9349ac:
    # Line 222
    move	$t0,$a1
    # Line 223
    mov.s	$f4,$f0
    # Line 224
    move	$a1,$a3
    # Line 225
    mov.s	$f0,$f2
    # Line 226
    move	$a3,$a2
    # Line 227
    mov.s	$f2,$f1
    # Line 228
    move	$a2,$t0
    # Line 229
    b	.L0d934a24
    # Line 230
    mov.s	$f1,$f4
.L0d9349d0:
    # Line 233
    mov.s	$f5,$f0
    # Line 234
    bc1f .L0d934a10
    # Line 235
    move	$t1,$a1
    # Line 236
    c.lt.s $f0,$f2
    # Line 237
    mov.s	$f0,$f1
    # Line 238
    bc1f .L0d9349fc
    # Line 239
    move	$a1,$a2
    # Line 240
    mov.s	$f1,$f5
    # Line 241
    move	$a2,$t1
    # Line 242
    b	.L0d934a24
    # Line 243
    li	$v0,1
.L0d9349fc:
    # Line 245
    mov.s	$f1,$f2
    # Line 246
    move	$a2,$a3
    # Line 247
    mov.s	$f2,$f5
    # Line 248
    b	.L0d934a24
    # Line 249
    move	$a3,$t1
.L0d934a10:
    # Line 251
    move	$a1,$a3
    # Line 252
    mov.s	$f0,$f2
    # Line 253
    move	$a3,$t1
    # Line 254
    mov.s	$f2,$f5
    # Line 255
    li	$v0,1
.L0d934a24:
    # Line 271
    lwc1	$f6,128($a3)
    # Line 272
    sub.s	$f7,$f0,$f2
    # Line 273
    lwc1	$f8,128($a2)
    # Line 274
    sub.s	$f9,$f1,$f2
    # Line 275
    lwc1	$f10,128($a1)
    # Line 276
    sub.s	$f11,$f8,$f6
    # Line 277
    sw	$ra,72($sp)
    # Line 278
    sub.s	$f12,$f10,$f6
    # Line 279
    sw	$a0,32($sp)
    # Line 280
    sw	$a1,40($sp)
    # Line 281
    swc1	$f7,30188($a0)
    # Line 282
    mul.s	$f13,$f11,$f7
    # Line 283
    swc1	$f9,30192($a0)
    # Line 284
    mul.s	$f14,$f12,$f9
    # Line 285
    swc1	$f11,30184($a0)
    # Line 286
    swc1	$f12,30180($a0)
    # Line 287
    sw	$a2,48($sp)
    # Line 288
    msub.s	$f15,$f13,$f12,$f9
    # Line 292
    sw	$a3,56($sp)
    # Line 300
    c.eq.s $f14,$f13
    # Line 301
    lbu	$t2,30521($a0)
    # Line 302
    bc1t .L0d934b4c
    # Line 303
    lw	$t3,30436($a0)
    # Line 304
    c.lt.s	$f14,$f13
    # Line 305
    li	$a4,1
    # Line 306
    swc1	$f15,30176($a0)
    # Line 307
    movt	$a4,$zero,$fcc0
    # Line 314
    xor	$a5,$a4,$v0
    # Line 315
    addu	$a5,$a0,$a5
    # Line 316
    lbu	$a5,30516($a5)
    # Line 318
    sw	$a4,16($sp)
    # Line 319
    beq	$a5,$t2,.L0d934b4c
    # Line 330
    andi	$t3,$t3,0x400
    # Line 332
    movz	$a5,$zero,$t3
    # Line 333
    sll	$a6,$a5,0x2
    # Line 334
    addu	$a6,$a0,$a6
    # Line 335
    lw	$a6,28080($a6)
    # Line 343
    lw	$a1,28072($a0)
    # Line 344
    sll	$a5,$a5,0x4
    # Line 345
    addiu	$a5,$a5,144
    # Line 346
    addu	$a5,$a1,$a5
    # Line 347
    sw	$a1,24($sp)
    # Line 353
    lw	$a7,0($a1)
    # Line 354
    lw	$t9,12($a1)
    # Line 355
    andi	$a2,$a6,0x1b
    # Line 356
    nor	$a7,$a7,$zero
    # Line 357
    and	$a7,$a7,$a2
    # Line 361
    bnez	$a7,.L0d934b54
    # Line 362
    sw	$a5,8($a1)
.L0d934ae8:
    # Line 367
    lw	$a1,40($sp)
    # Line 368
    lw	$a2,28076($a0)
    # Line 369
    lw	$v0,0($a1)
    # Line 370
    lw	$t8,48($sp)
    # Line 371
    nor	$v0,$v0,$zero
    # Line 372
    and	$v0,$v0,$a2
    # Line 373
    bnez	$v0,.L0d934b64
.L0d934b04:
    # Line 377
    lw	$v1,0($t8)
    # Line 378
    lw	$a3,56($sp)
    # Line 379
    nor	$v1,$v1,$zero
    # Line 380
    and	$v1,$v1,$a2
    # Line 381
    bnez	$v1,.L0d934b84
.L0d934b18:
    # Line 385
    lw	$a1,0($a3)
    # Line 386
    lw	$t9,12080($a0)
    # Line 387
    nor	$a1,$a1,$zero
    # Line 388
    and	$a1,$a1,$a2
    # Line 389
    bnez	$a1,.L0d934ba4
.L0d934b2c:
    # Line 394
    lw	$a1,40($sp)
    # Line 399
    lw	$a4,16($sp)
    # Line 400
    jalr	$t9
    # Line 401
    lw	$a2,48($sp)
    # Line 407
    lw	$a2,24($sp)
    # Line 408
    lw	$ra,72($sp)
    # Line 409
    addiu	$a3,$a2,144
    # Line 410
    sw	$a3,8($a2)
.L0d934b4c:
    # Line 413
    jr	$ra
    # Line 414
    addiu	$sp,$sp,80
.L0d934b54:
    # Line 417
    jalr	$t9
    # Line 418
    nop
    # Line 420
    b	.L0d934ae8
    # Line 421
    lw	$a0,32($sp)
.L0d934b64:
    # Line 424
    lw	$t9,12($a1)
    # Line 425
    nop
    # Line 426
    jalr	$t9
    # Line 427
    nop
    # Line 429
    lw	$a0,32($sp)
    # Line 430
    lw	$t8,48($sp)
    # Line 431
    b	.L0d934b04
    # Line 432
    lw	$a2,28076($a0)
.L0d934b84:
    # Line 435
    lw	$t9,12($t8)
    # Line 436
    move	$a1,$t8
    # Line 437
    jalr	$t9
    # Line 438
    nop
    # Line 440
    lw	$a0,32($sp)
    # Line 441
    lw	$a3,56($sp)
    # Line 442
    b	.L0d934b18
    # Line 443
    lw	$a2,28076($a0)
.L0d934ba4:
    # Line 446
    lw	$t9,12($a3)
    # Line 447
    move	$a1,$a3
    # Line 448
    jalr	$t9
    # Line 449
    nop
    # Line 451
    lw	$a0,32($sp)
    # Line 452
    lw	$a3,56($sp)
    # Line 453
    b	.L0d934b2c
    # Line 454
    lw	$t9,12080($a0)
.end __glRenderFlatTriangle

# Function: __glRenderFlatOneFaceTriangle
# Declared: Line 471 (Source lines: 471-693)
# Address: 0x0d934bc4 - 0x0d934e00 (Size: 572 bytes, Frame: 208)
.globl __glRenderFlatOneFaceTriangle
.ent __glRenderFlatOneFaceTriangle
__glRenderFlatOneFaceTriangle:
    # Line 471
    lwc1	$f16,132($a1)
    # Line 472
    lwc1	$f17,132($a2)
    # Line 473
    addiu	$sp,$sp,-80
    # Line 475
    lwc1	$f18,132($a3)
    # Line 476
    c.lt.s $f16,$f17
    # Line 477
    move	$t0,$zero
    # Line 478
    bc1f .L0d934c34
    # Line 479
    c.lt.s $f17,$f18
    # Line 480
    bc1t .L0d934c88
    # Line 481
    c.lt.s $f16,$f18
    # Line 482
    bc1f .L0d934c10
    # Line 483
    move	$t1,$a2
    # Line 484
    mov.s	$f19,$f17
    # Line 485
    move	$a2,$a3
    # Line 486
    mov.s	$f17,$f18
    # Line 487
    move	$a3,$t1
    # Line 488
    mov.s	$f18,$f19
    # Line 489
    b	.L0d934c88
    # Line 490
    li	$t0,1
.L0d934c10:
    # Line 492
    move	$t2,$a1
    # Line 493
    mov.s	$f0,$f16
    # Line 494
    move	$a1,$a3
    # Line 495
    mov.s	$f16,$f18
    # Line 496
    move	$a3,$a2
    # Line 497
    mov.s	$f18,$f17
    # Line 498
    move	$a2,$t2
    # Line 499
    b	.L0d934c88
    # Line 500
    mov.s	$f17,$f0
.L0d934c34:
    # Line 503
    mov.s	$f1,$f16
    # Line 504
    bc1f .L0d934c74
    # Line 505
    move	$t3,$a1
    # Line 506
    c.lt.s $f16,$f18
    # Line 507
    mov.s	$f16,$f17
    # Line 508
    bc1f .L0d934c60
    # Line 509
    move	$a1,$a2
    # Line 510
    mov.s	$f17,$f1
    # Line 511
    move	$a2,$t3
    # Line 512
    b	.L0d934c88
    # Line 513
    li	$t0,1
.L0d934c60:
    # Line 515
    mov.s	$f17,$f18
    # Line 516
    move	$a2,$a3
    # Line 517
    mov.s	$f18,$f1
    # Line 518
    b	.L0d934c88
    # Line 519
    move	$a3,$t3
.L0d934c74:
    # Line 521
    move	$a1,$a3
    # Line 522
    mov.s	$f16,$f18
    # Line 523
    move	$a3,$t3
    # Line 524
    mov.s	$f18,$f1
    # Line 525
    li	$t0,1
.L0d934c88:
    # Line 530
    lwc1	$f2,128($a3)
    # Line 531
    sub.s	$f3,$f16,$f18
    # Line 532
    lwc1	$f4,128($a2)
    # Line 533
    sub.s	$f5,$f17,$f18
    # Line 534
    lwc1	$f6,128($a1)
    # Line 535
    sub.s	$f7,$f4,$f2
    # Line 536
    sw	$ra,72($sp)
    # Line 537
    sub.s	$f8,$f6,$f2
    # Line 538
    sw	$a0,32($sp)
    # Line 539
    sw	$a1,40($sp)
    # Line 540
    swc1	$f3,30188($a0)
    # Line 541
    mul.s	$f9,$f7,$f3
    # Line 542
    swc1	$f5,30192($a0)
    # Line 543
    mul.s	$f10,$f8,$f5
    # Line 544
    swc1	$f7,30184($a0)
    # Line 545
    swc1	$f8,30180($a0)
    # Line 546
    sw	$a2,48($sp)
    # Line 547
    msub.s	$f11,$f9,$f8,$f5
    # Line 551
    sw	$a3,56($sp)
    # Line 559
    c.eq.s $f10,$f9
    # Line 560
    lbu	$a4,30521($a0)
    # Line 561
    bc1t .L0d934d80
    # Line 562
    lw	$a5,28080($a0)
    # Line 563
    c.lt.s	$f10,$f9
    # Line 564
    li	$a6,1
    # Line 565
    swc1	$f11,30176($a0)
    # Line 566
    movt	$a6,$zero,$fcc0
    # Line 573
    xor	$a7,$a6,$t0
    # Line 574
    addu	$a7,$a0,$a7
    # Line 575
    lbu	$a7,30516($a7)
    # Line 576
    sw	$a6,16($sp)
    # Line 577
    lw	$a1,28072($a0)
    # Line 578
    beq	$a7,$a4,.L0d934d80
    # Line 588
    andi	$a2,$a5,0x1b
    # Line 594
    lw	$v0,0($a1)
    # Line 595
    lw	$t9,12($a1)
    # Line 596
    lw	$t8,40($sp)
    # Line 597
    nor	$v0,$v0,$zero
    # Line 598
    and	$v0,$v0,$a2
    # Line 602
    bnez	$v0,.L0d934d88
.L0d934d28:
    # Line 607
    lw	$v1,0($t8)
    # Line 608
    lw	$a2,28076($a0)
    # Line 609
    lw	$t0,48($sp)
    # Line 610
    nor	$v1,$v1,$zero
    # Line 611
    and	$v1,$v1,$a2
    # Line 612
    bnez	$v1,.L0d934da0
.L0d934d40:
    # Line 616
    lw	$a1,0($t0)
    # Line 617
    lw	$a3,56($sp)
    # Line 618
    nor	$a1,$a1,$zero
    # Line 619
    and	$a1,$a1,$a2
    # Line 620
    bnez	$a1,.L0d934dc0
.L0d934d54:
    # Line 624
    lw	$t1,0($a3)
    # Line 625
    lw	$t9,12080($a0)
    # Line 626
    nor	$t1,$t1,$zero
    # Line 627
    and	$t1,$t1,$a2
    # Line 628
    bnez	$t1,.L0d934de0
.L0d934d68:
    # Line 633
    lw	$a1,40($sp)
    # Line 642
    lw	$a4,16($sp)
    # Line 643
    lw	$a2,48($sp)
    # Line 644
    lw	$ra,72($sp)
    # Line 645
    jr	$t9
    # Line 646
    addiu	$sp,$sp,80
.L0d934d80:
    # Line 650
    jr	$ra
    # Line 651
    addiu	$sp,$sp,80
.L0d934d88:
    # Line 654
    jalr	$t9
    # Line 655
    nop
    # Line 657
    lw	$t8,40($sp)
    # Line 658
    lw	$a0,32($sp)
    # Line 659
    b	.L0d934d28
    # Line 660
    nop
.L0d934da0:
    # Line 663
    lw	$t9,12($t8)
    # Line 664
    move	$a1,$t8
    # Line 665
    jalr	$t9
    # Line 666
    nop
    # Line 668
    lw	$a0,32($sp)
    # Line 669
    lw	$t0,48($sp)
    # Line 670
    b	.L0d934d40
    # Line 671
    lw	$a2,28076($a0)
.L0d934dc0:
    # Line 674
    lw	$t9,12($t0)
    # Line 675
    move	$a1,$t0
    # Line 676
    jalr	$t9
    # Line 677
    nop
    # Line 679
    lw	$a0,32($sp)
    # Line 680
    lw	$a3,56($sp)
    # Line 681
    b	.L0d934d54
    # Line 682
    lw	$a2,28076($a0)
.L0d934de0:
    # Line 685
    lw	$t9,12($a3)
    # Line 686
    move	$a1,$a3
    # Line 687
    jalr	$t9
    # Line 688
    nop
    # Line 690
    lw	$a0,32($sp)
    # Line 691
    lw	$a3,56($sp)
    # Line 692
    b	.L0d934d68
    # Line 693
    lw	$t9,12080($a0)
.end __glRenderFlatOneFaceTriangle

# Function: __glRenderSmoothTriangle
# Declared: Line 711 (Source lines: 711-943)
# Address: 0x0d934e00 - 0x0d93504c (Size: 588 bytes, Frame: 208)
.globl __glRenderSmoothTriangle
.ent __glRenderSmoothTriangle
__glRenderSmoothTriangle:
    # Line 711
    lwc1	$f12,132($a1)
    # Line 712
    lwc1	$f13,132($a2)
    # Line 713
    addiu	$sp,$sp,-80
    # Line 715
    lwc1	$f14,132($a3)
    # Line 716
    c.lt.s $f12,$f13
    # Line 717
    move	$t2,$zero
    # Line 718
    bc1f .L0d934e70
    # Line 719
    c.lt.s $f13,$f14
    # Line 720
    bc1t .L0d934ec4
    # Line 721
    c.lt.s $f12,$f14
    # Line 722
    bc1f .L0d934e4c
    # Line 723
    move	$t3,$a2
    # Line 724
    mov.s	$f15,$f13
    # Line 725
    move	$a2,$a3
    # Line 726
    mov.s	$f13,$f14
    # Line 727
    move	$a3,$t3
    # Line 728
    mov.s	$f14,$f15
    # Line 729
    b	.L0d934ec4
    # Line 730
    li	$t2,1
.L0d934e4c:
    # Line 732
    move	$a4,$a1
    # Line 733
    mov.s	$f16,$f12
    # Line 734
    move	$a1,$a3
    # Line 735
    mov.s	$f12,$f14
    # Line 736
    move	$a3,$a2
    # Line 737
    mov.s	$f14,$f13
    # Line 738
    move	$a2,$a4
    # Line 739
    b	.L0d934ec4
    # Line 740
    mov.s	$f13,$f16
.L0d934e70:
    # Line 743
    mov.s	$f17,$f12
    # Line 744
    bc1f .L0d934eb0
    # Line 745
    move	$a5,$a1
    # Line 746
    c.lt.s $f12,$f14
    # Line 747
    mov.s	$f12,$f13
    # Line 748
    bc1f .L0d934e9c
    # Line 749
    move	$a1,$a2
    # Line 750
    mov.s	$f13,$f17
    # Line 751
    move	$a2,$a5
    # Line 752
    b	.L0d934ec4
    # Line 753
    li	$t2,1
.L0d934e9c:
    # Line 755
    mov.s	$f13,$f14
    # Line 756
    move	$a2,$a3
    # Line 757
    mov.s	$f14,$f17
    # Line 758
    b	.L0d934ec4
    # Line 759
    move	$a3,$a5
.L0d934eb0:
    # Line 761
    move	$a1,$a3
    # Line 762
    mov.s	$f12,$f14
    # Line 763
    move	$a3,$a5
    # Line 764
    mov.s	$f14,$f17
    # Line 765
    li	$t2,1
.L0d934ec4:
    # Line 781
    lwc1	$f18,128($a3)
    # Line 782
    sub.s	$f19,$f12,$f14
    # Line 783
    lwc1	$f0,128($a2)
    # Line 784
    sub.s	$f1,$f13,$f14
    # Line 785
    lwc1	$f2,128($a1)
    # Line 786
    sub.s	$f3,$f0,$f18
    # Line 787
    sw	$ra,72($sp)
    # Line 788
    sub.s	$f4,$f2,$f18
    # Line 789
    sw	$a0,32($sp)
    # Line 790
    sw	$a1,40($sp)
    # Line 791
    swc1	$f19,30188($a0)
    # Line 792
    mul.s	$f5,$f3,$f19
    # Line 793
    swc1	$f1,30192($a0)
    # Line 794
    mul.s	$f6,$f4,$f1
    # Line 795
    swc1	$f3,30184($a0)
    # Line 796
    swc1	$f4,30180($a0)
    # Line 797
    sw	$a2,48($sp)
    # Line 798
    msub.s	$f7,$f5,$f4,$f1
    # Line 802
    sw	$a3,56($sp)
    # Line 809
    c.eq.s $f6,$f5
    # Line 810
    lbu	$a6,30521($a0)
    # Line 811
    bc1t .L0d935044
    # Line 812
    lw	$a7,28076($a0)
    # Line 813
    c.lt.s	$f6,$f5
    # Line 814
    lw	$t8,30436($a0)
    # Line 815
    li	$v0,1
    # Line 816
    swc1	$f7,30176($a0)
    # Line 817
    movt	$v0,$zero,$fcc0
    # Line 824
    xor	$v1,$v0,$t2
    # Line 825
    addu	$v1,$a0,$v1
    # Line 826
    lbu	$v1,30516($v1)
    # Line 827
    sw	$v0,16($sp)
    # Line 828
    beq	$v1,$a6,.L0d935044
    # Line 840
    andi	$t8,$t8,0x400
    # Line 842
    movz	$v1,$zero,$t8
    # Line 843
    sll	$t0,$v1,0x2
    # Line 844
    addu	$t0,$a0,$t0
    # Line 845
    lw	$t0,28080($t0)
    # Line 846
    sll	$v1,$v1,0x4
    # Line 847
    or	$a7,$a7,$t0
    # Line 848
    sw	$a7,24($sp)
    # Line 858
    addu	$t1,$a1,$v1
    # Line 859
    addiu	$t1,$t1,144
    # Line 860
    sw	$t1,8($a1)
    # Line 862
    addu	$t2,$a2,$v1
    # Line 863
    addiu	$t2,$t2,144
    # Line 864
    sw	$t2,8($a2)
    # Line 866
    addu	$t3,$a3,$v1
    # Line 867
    addiu	$t3,$t3,144
    # Line 871
    lw	$a4,0($a1)
    # Line 872
    lw	$t9,12($a1)
    # Line 873
    nor	$a4,$a4,$zero
    # Line 874
    and	$a4,$a4,$a7
    # Line 875
    beqz	$a4,.L0d934fac
    # Line 876
    sw	$t3,8($a3)
    # Line 877
    jalr	$t9
    # Line 878
    move	$a2,$a7
    # Line 880
    lw	$a0,32($sp)
.L0d934fac:
    # Line 883
    lw	$a1,48($sp)
    # Line 884
    lw	$a2,24($sp)
    # Line 885
    lw	$a5,0($a1)
    # Line 886
    lw	$t9,12($a1)
    # Line 887
    nor	$a5,$a5,$zero
    # Line 888
    and	$a5,$a5,$a2
    # Line 889
    beqz	$a5,.L0d934fd8
    # Line 890
    nop
    # Line 891
    jalr	$t9
    # Line 892
    nop
    # Line 894
    lw	$a0,32($sp)
.L0d934fd8:
    # Line 897
    lw	$a1,56($sp)
    # Line 898
    lw	$a2,24($sp)
    # Line 899
    lw	$a6,0($a1)
    # Line 900
    lw	$t9,12($a1)
    # Line 901
    nor	$a6,$a6,$zero
    # Line 902
    and	$a6,$a6,$a2
    # Line 903
    beqz	$a6,.L0d935004
    # Line 904
    nop
    # Line 905
    jalr	$t9
    # Line 906
    nop
    # Line 908
    lw	$a0,32($sp)
.L0d935004:
    # Line 912
    lw	$a3,56($sp)
    # Line 913
    lw	$t9,12080($a0)
    # Line 914
    lw	$a1,40($sp)
    # Line 920
    lw	$a4,16($sp)
    # Line 921
    jalr	$t9
    # Line 922
    lw	$a2,48($sp)
    # Line 925
    lw	$a7,40($sp)
    # Line 926
    lw	$t8,48($sp)
    # Line 927
    lw	$v0,56($sp)
    # Line 928
    lw	$ra,72($sp)
    # Line 932
    addiu	$v1,$a7,144
    # Line 933
    sw	$v1,8($a7)
    # Line 935
    addiu	$a0,$t8,144
    # Line 936
    sw	$a0,8($t8)
    # Line 938
    addiu	$a1,$v0,144
    # Line 939
    sw	$a1,8($v0)
.L0d935044:
    # Line 942
    jr	$ra
    # Line 943
    addiu	$sp,$sp,80
.end __glRenderSmoothTriangle

# Function: __glRenderSmoothOneFaceTriangle
# Declared: Line 956 (Source lines: 956-1136)
# Address: 0x0d93504c - 0x0d935240 (Size: 500 bytes, Frame: 208)
.globl __glRenderSmoothOneFaceTriangle
.ent __glRenderSmoothOneFaceTriangle
__glRenderSmoothOneFaceTriangle:
    # Line 956
    lwc1	$f8,132($a1)
    # Line 957
    lwc1	$f9,132($a2)
    # Line 958
    addiu	$sp,$sp,-80
    # Line 960
    lwc1	$f10,132($a3)
    # Line 961
    c.lt.s $f8,$f9
    # Line 962
    move	$t0,$zero
    # Line 963
    bc1f .L0d9350bc
    # Line 964
    c.lt.s $f9,$f10
    # Line 965
    bc1t .L0d935110
    # Line 966
    c.lt.s $f8,$f10
    # Line 967
    bc1f .L0d935098
    # Line 968
    move	$t1,$a2
    # Line 969
    mov.s	$f11,$f9
    # Line 970
    move	$a2,$a3
    # Line 971
    mov.s	$f9,$f10
    # Line 972
    move	$a3,$t1
    # Line 973
    mov.s	$f10,$f11
    # Line 974
    b	.L0d935110
    # Line 975
    li	$t0,1
.L0d935098:
    # Line 977
    move	$t2,$a1
    # Line 978
    mov.s	$f12,$f8
    # Line 979
    move	$a1,$a3
    # Line 980
    mov.s	$f8,$f10
    # Line 981
    move	$a3,$a2
    # Line 982
    mov.s	$f10,$f9
    # Line 983
    move	$a2,$t2
    # Line 984
    b	.L0d935110
    # Line 985
    mov.s	$f9,$f12
.L0d9350bc:
    # Line 988
    mov.s	$f13,$f8
    # Line 989
    bc1f .L0d9350fc
    # Line 990
    move	$t3,$a1
    # Line 991
    c.lt.s $f8,$f10
    # Line 992
    mov.s	$f8,$f9
    # Line 993
    bc1f .L0d9350e8
    # Line 994
    move	$a1,$a2
    # Line 995
    mov.s	$f9,$f13
    # Line 996
    move	$a2,$t3
    # Line 997
    b	.L0d935110
    # Line 998
    li	$t0,1
.L0d9350e8:
    # Line 1000
    mov.s	$f9,$f10
    # Line 1001
    move	$a2,$a3
    # Line 1002
    mov.s	$f10,$f13
    # Line 1003
    b	.L0d935110
    # Line 1004
    move	$a3,$t3
.L0d9350fc:
    # Line 1006
    move	$a1,$a3
    # Line 1007
    mov.s	$f8,$f10
    # Line 1008
    move	$a3,$t3
    # Line 1009
    mov.s	$f10,$f13
    # Line 1010
    li	$t0,1
.L0d935110:
    # Line 1015
    lwc1	$f14,128($a3)
    # Line 1016
    sub.s	$f15,$f8,$f10
    # Line 1017
    lwc1	$f16,128($a2)
    # Line 1018
    sub.s	$f17,$f9,$f10
    # Line 1019
    lwc1	$f18,128($a1)
    # Line 1020
    sub.s	$f19,$f16,$f14
    # Line 1021
    sw	$ra,72($sp)
    # Line 1022
    sub.s	$f0,$f18,$f14
    # Line 1023
    sw	$a0,32($sp)
    # Line 1024
    sw	$a1,40($sp)
    # Line 1025
    swc1	$f15,30188($a0)
    # Line 1026
    mul.s	$f1,$f19,$f15
    # Line 1027
    swc1	$f17,30192($a0)
    # Line 1028
    mul.s	$f2,$f0,$f17
    # Line 1029
    swc1	$f19,30184($a0)
    # Line 1030
    swc1	$f0,30180($a0)
    # Line 1031
    sw	$a2,48($sp)
    # Line 1032
    msub.s	$f3,$f1,$f0,$f17
    # Line 1036
    sw	$a3,56($sp)
    # Line 1043
    c.eq.s $f2,$f1
    # Line 1044
    lbu	$a4,30521($a0)
    # Line 1045
    bc1t .L0d935238
    # Line 1046
    lw	$a2,28076($a0)
    # Line 1047
    c.lt.s	$f2,$f1
    # Line 1048
    lw	$a5,28080($a0)
    # Line 1049
    li	$a6,1
    # Line 1050
    swc1	$f3,30176($a0)
    # Line 1051
    movt	$a6,$zero,$fcc0
    # Line 1058
    xor	$a7,$a6,$t0
    # Line 1059
    addu	$a7,$a0,$a7
    # Line 1060
    lbu	$a7,30516($a7)
    # Line 1061
    or	$a2,$a2,$a5
    # Line 1062
    beq	$a7,$a4,.L0d935238
    # Line 1064
    sw	$a6,16($sp)
    # Line 1069
    lw	$t8,0($a1)
    # Line 1070
    lw	$t9,12($a1)
    # Line 1071
    nor	$t8,$t8,$zero
    # Line 1072
    and	$t8,$t8,$a2
    # Line 1076
    lw	$v0,48($sp)
    # Line 1077
    beqz	$t8,.L0d9351c8
    # Line 1078
    sw	$a2,24($sp)
    # Line 1079
    jalr	$t9
    # Line 1080
    nop
    # Line 1082
    lw	$v0,48($sp)
    # Line 1083
    lw	$a0,32($sp)
    # Line 1084
    lw	$a2,24($sp)
.L0d9351c8:
    # Line 1087
    lw	$v1,0($v0)
    # Line 1088
    lw	$t9,12($v0)
    # Line 1089
    nor	$v1,$v1,$zero
    # Line 1090
    and	$v1,$v1,$a2
    # Line 1091
    beqz	$v1,.L0d9351f0
    # Line 1092
    lw	$a3,56($sp)
    # Line 1093
    jalr	$t9
    # Line 1094
    move	$a1,$v0
    # Line 1096
    lw	$a3,56($sp)
    # Line 1097
    lw	$a0,32($sp)
.L0d9351f0:
    # Line 1100
    lw	$a2,24($sp)
    # Line 1101
    lw	$a1,0($a3)
    # Line 1102
    lw	$t9,12($a3)
    # Line 1103
    nor	$a1,$a1,$zero
    # Line 1104
    and	$a1,$a1,$a2
    # Line 1105
    beqz	$a1,.L0d93521c
    # Line 1106
    nop
    # Line 1107
    jalr	$t9
    # Line 1108
    move	$a1,$a3
    # Line 1110
    lw	$a0,32($sp)
    # Line 1111
    lw	$a3,56($sp)
.L0d93521c:
    # Line 1115
    lw	$a1,40($sp)
    # Line 1116
    lw	$t9,12080($a0)
    # Line 1126
    lw	$a4,16($sp)
    # Line 1127
    lw	$a2,48($sp)
    # Line 1128
    lw	$ra,72($sp)
    # Line 1129
    jr	$t9
    # Line 1130
    addiu	$sp,$sp,80
.L0d935238:
    # Line 1135
    jr	$ra
    # Line 1136
    addiu	$sp,$sp,80
.end __glRenderSmoothOneFaceTriangle

# Function: __glRenderSmoothOneFaceTmesh
# Declared: Line 1151 (Source lines: 1151-1354)
# Address: 0x0d935240 - 0x0d93546c (Size: 556 bytes, Frame: 208)
.globl __glRenderSmoothOneFaceTmesh
.ent __glRenderSmoothOneFaceTmesh
__glRenderSmoothOneFaceTmesh:
    # Line 1151
    move	$t0,$a1
    # Line 1152
    lwc1	$f4,132($a1)
    # Line 1153
    lwc1	$f5,132($a2)
    # Line 1154
    addiu	$sp,$sp,-80
    # Line 1156
    lwc1	$f6,132($a3)
    # Line 1157
    c.lt.s $f4,$f5
    # Line 1158
    move	$t1,$zero
    # Line 1159
    bc1f .L0d9352b4
    # Line 1160
    c.lt.s $f5,$f6
    # Line 1161
    bc1t .L0d935308
    # Line 1162
    c.lt.s $f4,$f6
    # Line 1163
    bc1f .L0d935290
    # Line 1164
    move	$t2,$a2
    # Line 1165
    mov.s	$f7,$f5
    # Line 1166
    move	$a2,$a3
    # Line 1167
    mov.s	$f5,$f6
    # Line 1168
    move	$a3,$t2
    # Line 1169
    mov.s	$f6,$f7
    # Line 1170
    b	.L0d935308
    # Line 1171
    li	$t1,1
.L0d935290:
    # Line 1173
    move	$t3,$a1
    # Line 1174
    mov.s	$f8,$f4
    # Line 1175
    move	$a1,$a3
    # Line 1176
    mov.s	$f4,$f6
    # Line 1177
    move	$a3,$a2
    # Line 1178
    mov.s	$f6,$f5
    # Line 1179
    move	$a2,$t3
    # Line 1180
    b	.L0d935308
    # Line 1181
    mov.s	$f5,$f8
.L0d9352b4:
    # Line 1184
    mov.s	$f9,$f4
    # Line 1185
    bc1f .L0d9352f4
    # Line 1186
    move	$a4,$a1
    # Line 1187
    c.lt.s $f4,$f6
    # Line 1188
    mov.s	$f4,$f5
    # Line 1189
    bc1f .L0d9352e0
    # Line 1190
    move	$a1,$a2
    # Line 1191
    mov.s	$f5,$f9
    # Line 1192
    move	$a2,$a4
    # Line 1193
    b	.L0d935308
    # Line 1194
    li	$t1,1
.L0d9352e0:
    # Line 1196
    mov.s	$f5,$f6
    # Line 1197
    move	$a2,$a3
    # Line 1198
    mov.s	$f6,$f9
    # Line 1199
    b	.L0d935308
    # Line 1200
    move	$a3,$a4
.L0d9352f4:
    # Line 1202
    move	$a1,$a3
    # Line 1203
    mov.s	$f4,$f6
    # Line 1204
    move	$a3,$a4
    # Line 1205
    mov.s	$f6,$f9
    # Line 1206
    li	$t1,1
.L0d935308:
    # Line 1211
    lwc1	$f10,128($a3)
    # Line 1212
    sub.s	$f11,$f4,$f6
    # Line 1213
    lwc1	$f12,128($a2)
    # Line 1214
    sub.s	$f13,$f5,$f6
    # Line 1215
    lwc1	$f14,128($a1)
    # Line 1216
    sub.s	$f15,$f12,$f10
    # Line 1217
    sw	$ra,72($sp)
    # Line 1218
    sub.s	$f16,$f14,$f10
    # Line 1219
    sw	$a0,32($sp)
    # Line 1220
    sw	$a1,40($sp)
    # Line 1221
    swc1	$f11,30188($a0)
    # Line 1222
    mul.s	$f17,$f15,$f11
    # Line 1223
    swc1	$f13,30192($a0)
    # Line 1224
    mul.s	$f18,$f16,$f13
    # Line 1225
    swc1	$f15,30184($a0)
    # Line 1226
    swc1	$f16,30180($a0)
    # Line 1227
    sw	$a2,48($sp)
    # Line 1228
    msub.s	$f19,$f17,$f16,$f13
    # Line 1232
    sw	$a3,56($sp)
    # Line 1239
    c.eq.s $f18,$f17
    # Line 1240
    lbu	$a5,30521($a0)
    # Line 1241
    bc1t .L0d93545c
    # Line 1242
    lw	$a6,28076($a0)
    # Line 1243
    c.lt.s	$f18,$f17
    # Line 1244
    lw	$a7,28080($a0)
    # Line 1245
    li	$t8,1
    # Line 1246
    swc1	$f19,30176($a0)
    # Line 1247
    movt	$t8,$zero,$fcc0
    # Line 1254
    xor	$v0,$t8,$t1
    # Line 1255
    addu	$v0,$a0,$v0
    # Line 1256
    lbu	$v0,30516($v0)
    # Line 1257
    or	$a6,$a6,$a7
    # Line 1258
    lbu	$v1,30522($a0)
    # Line 1259
    beq	$v0,$a5,.L0d93545c
    # Line 1261
    sw	$t8,16($sp)
    # Line 1266
    bnez	$v1,.L0d9353dc
    # Line 1267
    lw	$a2,0($t0)
    # Line 1273
    lw	$t9,12($t0)
    # Line 1274
    nor	$a2,$a2,$zero
    # Line 1275
    and	$a2,$a2,$a6
    # Line 1276
    beqz	$a2,.L0d9353bc
    # Line 1277
    move	$a1,$t0
    # Line 1278
    jalr	$t9
    # Line 1279
    move	$a2,$a6
    # Line 1281
    lw	$a0,32($sp)
.L0d9353bc:
    # Line 1286
    lw	$a3,56($sp)
    # Line 1287
    lw	$t9,12080($a0)
    # Line 1288
    lw	$a1,40($sp)
    # Line 1298
    lw	$a4,16($sp)
    # Line 1299
    lw	$a2,48($sp)
    # Line 1300
    lw	$ra,72($sp)
    # Line 1301
    jr	$t9
    # Line 1302
    addiu	$sp,$sp,80
.L0d9353dc:
    # Line 1309
    lw	$a3,0($a1)
    # Line 1310
    lw	$t9,12($a1)
    # Line 1311
    nor	$a3,$a3,$zero
    # Line 1312
    and	$a3,$a3,$a6
    # Line 1313
    beqz	$a3,.L0d935400
    # Line 1314
    sw	$a6,24($sp)
    # Line 1315
    jalr	$t9
    # Line 1316
    move	$a2,$a6
    # Line 1318
    lw	$a0,32($sp)
.L0d935400:
    # Line 1321
    lw	$a1,48($sp)
    # Line 1322
    lw	$a2,24($sp)
    # Line 1323
    lw	$t0,0($a1)
    # Line 1324
    lw	$t9,12($a1)
    # Line 1325
    nor	$t0,$t0,$zero
    # Line 1326
    and	$t0,$t0,$a2
    # Line 1327
    beqz	$t0,.L0d93542c
    # Line 1328
    nop
    # Line 1329
    jalr	$t9
    # Line 1330
    nop
    # Line 1332
    lw	$a0,32($sp)
.L0d93542c:
    # Line 1335
    lw	$a1,56($sp)
    # Line 1336
    lw	$a2,24($sp)
    # Line 1337
    lw	$t1,0($a1)
    # Line 1338
    lw	$t9,12($a1)
    # Line 1339
    nor	$t1,$t1,$zero
    # Line 1340
    and	$t1,$t1,$a2
    # Line 1341
    beqz	$t1,.L0d9353bc
    # Line 1342
    sb	$zero,30522($a0)
    # Line 1343
    jalr	$t9
    # Line 1344
    nop
    # Line 1346
    b	.L0d9353bc
    # Line 1347
    lw	$a0,32($sp)
.L0d93545c:
    # Line 1351
    li	$t2,1
    # Line 1352
    sb	$t2,30522($a0)
    # Line 1353
    jr	$ra
    # Line 1354
    addiu	$sp,$sp,80
.end __glRenderSmoothOneFaceTmesh

