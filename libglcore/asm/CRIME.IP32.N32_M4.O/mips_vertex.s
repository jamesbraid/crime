# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME.IP32.N32_M4.O/mips_vertex.s
# Category: CRIME.IP32.N32_M4.O
# Compiler Options: 
# Total Functions: 9

.text

# Function: __glValidateVertex2
# Declared: Line 161 (Source lines: 161-337)
# Address: 0x0d935470 - 0x0d93562c (Size: 444 bytes, Frame: 208)
.globl __glValidateVertex2
.ent __glValidateVertex2
__glValidateVertex2:
    # Line 161
    addiu	$sp,$sp,-80
    # Line 164
    sd	$ra,72($sp)
    # Line 165
    sd	$s3,64($sp)
    # Line 166
    sd	$s2,56($sp)
    # Line 167
    sd	$s1,48($sp)
    # Line 168
    sd	$s0,40($sp)
    # Line 172
    lw	$v0,0($a1)
    # Line 173
    move	$s0,$a0
    # Line 174
    move	$s1,$a1
    # Line 176
    lw	$s2,29660($s0)
    # Line 178
    lui	$v1,0x3f80
    # Line 179
    nor	$v0,$v0,$zero
    # Line 180
    and	$s3,$v0,$a2
    # Line 181
    andi	$a0,$s3,0x10
    # Line 182
    bnez	$a0,.L0d935504
    # Line 183
    sw	$v1,108($a1)
.L0d9354b0:
    # Line 187
    andi	$a1,$s3,0x8
    # Line 188
    beqz	$a1,.L0d9355c4
    # Line 190
    lw	$a2,64($s2)
    # Line 191
    lbu	$a3,268($s2)
    # Line 192
    beqz	$a2,.L0d935520
    # Line 193
    lw	$t0,1792($s0)
.L0d9354c8:
    # Line 197
    bnez	$a3,.L0d93554c
.L0d9354cc:
    # Line 201
    lui	$at,0x40
    and	$t0,$t0,$at
    # Line 202
    beqz	$t0,.L0d9355b0
    # Line 205
    lw	$t9,164($s2)
    # Line 206
    addiu	$a0,$sp,24
    # Line 207
    addiu	$a1,$s1,32
    # Line 208
    jalr	$t9
    # Line 209
    addiu	$a2,$s2,88
    # Line 212
    lw	$t9,11904($s0)
    # Line 213
    addiu	$a0,$s1,32
    # Line 214
    jalr	$t9
    # Line 215
    addiu	$a1,$sp,24
    # Line 217
    b	.L0d9355c4
    # Line 218
    nop
.L0d935504:
    # Line 222
    lw	$t9,72($s2)
    # Line 223
    addiu	$a0,$s1,96
    # Line 224
    addiu	$a1,$s1,16
    # Line 225
    jalr	$t9
    # Line 226
    addiu	$a2,$s2,0
    # Line 228
    b	.L0d9354b0
    # Line 229
    nop
.L0d935520:
    # Line 234
    lwc1	$f0,32($s1)
    # Line 235
    lwc1	$f1,16($s1)
    # Line 236
    lwc1	$f2,36($s1)
    # Line 237
    mul.s	$f3,$f0,$f1
    # Line 238
    lwc1	$f4,20($s1)
    # Line 239
    nop
    # Line 240
    mul.s	$f5,$f2,$f4
    # Line 241
    add.s	$f3,$f3,$f5
    # Line 242
    neg.s	$f3,$f3
    # Line 243
    b	.L0d9354c8
    # Line 244
    swc1	$f3,44($s1)
.L0d93554c:
    # Line 248
    lw	$t9,11900($s0)
    # Line 249
    move	$a0,$s0
    # Line 250
    jalr	$t9
    # Line 251
    move	$a1,$s2
    # Line 253
    lw	$t0,1792($s0)
    # Line 254
    b	.L0d9354cc
    # Line 255
    nop
.L0d935568:
    # Line 260
    andi	$t1,$s3,0x40
    # Line 261
    beqz	$t1,.L0d93558c
    # Line 262
    lw	$t9,12536($s0)
    # Line 263
    move	$a0,$s0
    # Line 264
    jalr	$t9
    # Line 265
    move	$a1,$s1
    # Line 268
    andi	$t2,$s3,0x4
    # Line 269
    beqz	$t2,.L0d9355cc
    # Line 270
    swc1	$f0,176($s1)
.L0d93558c:
    # Line 276
    sw	$zero,24($s1)
    # Line 277
    lui	$t3,0x3f80
    # Line 278
    lw	$t9,11996($s0)
    # Line 279
    move	$a0,$s0
    # Line 280
    move	$a1,$s1
    # Line 281
    jalr	$t9
    # Line 283
    sw	$t3,28($s1)
    # Line 284
    b	.L0d9355cc
    # Line 285
    nop
.L0d9355b0:
    # Line 290
    lw	$t9,164($s2)
    # Line 291
    addiu	$a0,$s1,32
    # Line 292
    addiu	$a1,$s1,32
    # Line 293
    jalr	$t9
    # Line 294
    addiu	$a2,$s2,88
.L0d9355c4:
    # Line 299
    andi	$a4,$s3,0x44
    # Line 300
    bnez	$a4,.L0d935568
.L0d9355cc:
    # Line 305
    andi	$a5,$s3,0x1
    # Line 306
    beqz	$a5,.L0d9355e8
    # Line 307
    lw	$t9,12004($s0)
    # Line 308
    move	$a0,$s0
    # Line 309
    li	$a1,0
    # Line 310
    jalr	$t9
    # Line 311
    move	$a2,$s1
.L0d9355e8:
    # Line 317
    andi	$a6,$s3,0x2
    # Line 318
    beqz	$a6,.L0d935604
    # Line 319
    lw	$t9,12004($s0)
    # Line 320
    move	$a0,$s0
    # Line 321
    li	$a1,1
    # Line 322
    jalr	$t9
    # Line 323
    move	$a2,$s1
.L0d935604:
    # Line 328
    lw	$a7,0($s1)
    # Line 329
    ld	$s0,40($sp)
    # Line 330
    ld	$s2,56($sp)
    # Line 331
    or	$a7,$a7,$s3
    # Line 332
    sw	$a7,0($s1)
    # Line 333
    ld	$ra,72($sp)
    # Line 334
    ld	$s1,48($sp)
    # Line 335
    ld	$s3,64($sp)
    # Line 336
    jr	$ra
    # Line 337
    addiu	$sp,$sp,80
.end __glValidateVertex2

# Function: __glValidateVertex3
# Declared: Line 350 (Source lines: 350-528)
# Address: 0x0d93562c - 0x0d9357f0 (Size: 452 bytes, Frame: 208)
.globl __glValidateVertex3
.ent __glValidateVertex3
__glValidateVertex3:
    # Line 350
    addiu	$sp,$sp,-80
    # Line 353
    sd	$ra,72($sp)
    # Line 354
    sd	$s3,64($sp)
    # Line 355
    sd	$s2,56($sp)
    # Line 356
    sd	$s1,48($sp)
    # Line 357
    sd	$s0,40($sp)
    # Line 361
    lw	$t8,0($a1)
    # Line 362
    move	$s0,$a0
    # Line 363
    move	$s1,$a1
    # Line 365
    lw	$s2,29660($s0)
    # Line 367
    lui	$t9,0x3f80
    # Line 368
    nor	$t8,$t8,$zero
    # Line 369
    and	$s3,$t8,$a2
    # Line 370
    andi	$v0,$s3,0x10
    # Line 371
    bnez	$v0,.L0d9356c0
    # Line 372
    sw	$t9,108($a1)
.L0d93566c:
    # Line 376
    andi	$v1,$s3,0x8
    # Line 377
    beqz	$v1,.L0d935788
    # Line 379
    lw	$a0,64($s2)
    # Line 380
    lbu	$a1,268($s2)
    # Line 381
    beqz	$a0,.L0d9356dc
    # Line 382
    lw	$a2,1792($s0)
.L0d935684:
    # Line 386
    bnez	$a1,.L0d935714
.L0d935688:
    # Line 390
    lui	$at,0x40
    and	$a2,$a2,$at
    # Line 391
    beqz	$a2,.L0d935774
    # Line 394
    lw	$t9,164($s2)
    # Line 395
    addiu	$a0,$sp,24
    # Line 396
    addiu	$a1,$s1,32
    # Line 397
    jalr	$t9
    # Line 398
    addiu	$a2,$s2,88
    # Line 401
    lw	$t9,11904($s0)
    # Line 402
    addiu	$a0,$s1,32
    # Line 403
    jalr	$t9
    # Line 404
    addiu	$a1,$sp,24
    # Line 406
    b	.L0d935788
    # Line 407
    nop
.L0d9356c0:
    # Line 411
    lw	$t9,76($s2)
    # Line 412
    addiu	$a0,$s1,96
    # Line 413
    addiu	$a1,$s1,16
    # Line 414
    jalr	$t9
    # Line 415
    addiu	$a2,$s2,0
    # Line 417
    b	.L0d93566c
    # Line 418
    nop
.L0d9356dc:
    # Line 424
    lwc1	$f6,32($s1)
    # Line 425
    lwc1	$f7,16($s1)
    # Line 426
    lwc1	$f8,36($s1)
    # Line 427
    mul.s	$f9,$f6,$f7
    # Line 428
    lwc1	$f10,20($s1)
    # Line 429
    lwc1	$f11,40($s1)
    # Line 430
    mul.s	$f12,$f8,$f10
    # Line 431
    lwc1	$f13,24($s1)
    # Line 432
    add.s	$f9,$f9,$f12
    # Line 433
    mul.s	$f14,$f11,$f13
    # Line 434
    add.s	$f9,$f9,$f14
    # Line 435
    neg.s	$f9,$f9
    # Line 436
    b	.L0d935684
    # Line 437
    swc1	$f9,44($s1)
.L0d935714:
    # Line 441
    lw	$t9,11900($s0)
    # Line 442
    move	$a0,$s0
    # Line 443
    jalr	$t9
    # Line 444
    move	$a1,$s2
    # Line 446
    lw	$a2,1792($s0)
    # Line 447
    b	.L0d935688
    # Line 448
    nop
.L0d935730:
    # Line 453
    andi	$a3,$s3,0x40
    # Line 454
    beqz	$a3,.L0d935754
    # Line 455
    lw	$t9,12536($s0)
    # Line 456
    move	$a0,$s0
    # Line 457
    jalr	$t9
    # Line 458
    move	$a1,$s1
    # Line 461
    andi	$t0,$s3,0x4
    # Line 462
    beqz	$t0,.L0d935790
    # Line 463
    swc1	$f0,176($s1)
.L0d935754:
    # Line 468
    lui	$t1,0x3f80
    # Line 469
    lw	$t9,11996($s0)
    # Line 470
    move	$a0,$s0
    # Line 471
    move	$a1,$s1
    # Line 472
    jalr	$t9
    # Line 474
    sw	$t1,28($s1)
    # Line 475
    b	.L0d935790
    # Line 476
    nop
.L0d935774:
    # Line 481
    lw	$t9,164($s2)
    # Line 482
    addiu	$a0,$s1,32
    # Line 483
    addiu	$a1,$s1,32
    # Line 484
    jalr	$t9
    # Line 485
    addiu	$a2,$s2,88
.L0d935788:
    # Line 490
    andi	$t2,$s3,0x44
    # Line 491
    bnez	$t2,.L0d935730
.L0d935790:
    # Line 496
    andi	$t3,$s3,0x1
    # Line 497
    beqz	$t3,.L0d9357ac
    # Line 498
    lw	$t9,12004($s0)
    # Line 499
    move	$a0,$s0
    # Line 500
    li	$a1,0
    # Line 501
    jalr	$t9
    # Line 502
    move	$a2,$s1
.L0d9357ac:
    # Line 508
    andi	$a4,$s3,0x2
    # Line 509
    beqz	$a4,.L0d9357c8
    # Line 510
    lw	$t9,12004($s0)
    # Line 511
    move	$a0,$s0
    # Line 512
    li	$a1,1
    # Line 513
    jalr	$t9
    # Line 514
    move	$a2,$s1
.L0d9357c8:
    # Line 519
    lw	$a5,0($s1)
    # Line 520
    ld	$s0,40($sp)
    # Line 521
    ld	$s2,56($sp)
    # Line 522
    or	$a5,$a5,$s3
    # Line 523
    sw	$a5,0($s1)
    # Line 524
    ld	$ra,72($sp)
    # Line 525
    ld	$s1,48($sp)
    # Line 526
    ld	$s3,64($sp)
    # Line 527
    jr	$ra
    # Line 528
    addiu	$sp,$sp,80
.end __glValidateVertex3

# Function: __glValidateVertex4
# Declared: Line 542 (Source lines: 542-723)
# Address: 0x0d9357f0 - 0x0d9359bc (Size: 460 bytes, Frame: 208)
.globl __glValidateVertex4
.ent __glValidateVertex4
__glValidateVertex4:
    # Line 542
    addiu	$sp,$sp,-80
    # Line 545
    sd	$ra,72($sp)
    # Line 546
    sd	$s3,64($sp)
    # Line 547
    sd	$s2,56($sp)
    # Line 548
    sd	$s1,48($sp)
    # Line 549
    sd	$s0,40($sp)
    # Line 553
    lw	$a6,0($a1)
    # Line 554
    move	$s0,$a0
    # Line 555
    move	$s1,$a1
    # Line 557
    lw	$s2,29660($s0)
    # Line 559
    lui	$a7,0x3f80
    # Line 560
    nor	$a6,$a6,$zero
    # Line 561
    and	$s3,$a6,$a2
    # Line 562
    andi	$t8,$s3,0x10
    # Line 563
    bnez	$t8,.L0d935888
    # Line 564
    sw	$a7,108($a1)
.L0d935830:
    # Line 568
    andi	$t9,$s3,0x8
    # Line 569
    beqz	$t9,.L0d935954
    # Line 571
    lw	$v0,28($s1)
    # Line 572
    lbu	$v1,268($s2)
    # Line 573
    lw	$a0,1792($s0)
    # Line 574
    bnez	$v0,.L0d9358a4
    # Line 577
    sw	$zero,44($s1)
.L0d93584c:
    # Line 581
    bnez	$v1,.L0d9358e4
.L0d935850:
    # Line 585
    lui	$at,0x40
    and	$a0,$a0,$at
    # Line 586
    beqz	$a0,.L0d935940
    # Line 589
    lw	$t9,164($s2)
    # Line 590
    addiu	$a0,$sp,24
    # Line 591
    addiu	$a1,$s1,32
    # Line 592
    jalr	$t9
    # Line 593
    addiu	$a2,$s2,88
    # Line 596
    lw	$t9,11904($s0)
    # Line 597
    addiu	$a0,$s1,32
    # Line 598
    jalr	$t9
    # Line 599
    addiu	$a1,$sp,24
    # Line 601
    b	.L0d935954
    # Line 602
    nop
.L0d935888:
    # Line 606
    lw	$t9,80($s2)
    # Line 607
    addiu	$a0,$s1,96
    # Line 608
    addiu	$a1,$s1,16
    # Line 609
    jalr	$t9
    # Line 610
    addiu	$a2,$s2,0
    # Line 612
    b	.L0d935830
    # Line 613
    nop
.L0d9358a4:
    # Line 619
    lwc1	$f15,32($s1)
    # Line 620
    lwc1	$f16,16($s1)
    # Line 621
    lwc1	$f17,36($s1)
    # Line 622
    mul.s	$f18,$f15,$f16
    # Line 623
    lwc1	$f19,20($s1)
    # Line 624
    lwc1	$f0,40($s1)
    # Line 625
    mul.s	$f1,$f17,$f19
    # Line 626
    lwc1	$f2,24($s1)
    # Line 627
    add.s	$f18,$f18,$f1
    # Line 628
    mul.s	$f3,$f0,$f2
    # Line 629
    lwc1	$f4,28($s1)
    # Line 630
    add.s	$f18,$f18,$f3
    # Line 631
    neg.s	$f18,$f18
    # Line 632
    div.s	$f18,$f18,$f4
    # Line 633
    b	.L0d93584c
    # Line 634
    swc1	$f18,44($s1)
.L0d9358e4:
    # Line 638
    lw	$t9,11900($s0)
    # Line 639
    move	$a0,$s0
    # Line 640
    jalr	$t9
    # Line 641
    move	$a1,$s2
    # Line 643
    lw	$a0,1792($s0)
    # Line 644
    b	.L0d935850
    # Line 645
    nop
.L0d935900:
    # Line 650
    andi	$a1,$s3,0x40
    # Line 651
    beqz	$a1,.L0d935924
    # Line 652
    lw	$t9,12536($s0)
    # Line 653
    move	$a0,$s0
    # Line 654
    jalr	$t9
    # Line 655
    move	$a1,$s1
    # Line 658
    andi	$a2,$s3,0x4
    # Line 659
    beqz	$a2,.L0d93595c
    # Line 660
    swc1	$f0,176($s1)
.L0d935924:
    # Line 664
    lw	$t9,11996($s0)
    # Line 665
    move	$a0,$s0
    # Line 666
    move	$a1,$s1
    # Line 667
    jalr	$t9
    # Line 669
    nop
    # Line 670
    b	.L0d93595c
    # Line 671
    nop
.L0d935940:
    # Line 676
    lw	$t9,164($s2)
    # Line 677
    addiu	$a0,$s1,32
    # Line 678
    addiu	$a1,$s1,32
    # Line 679
    jalr	$t9
    # Line 680
    addiu	$a2,$s2,88
.L0d935954:
    # Line 685
    andi	$a3,$s3,0x44
    # Line 686
    bnez	$a3,.L0d935900
.L0d93595c:
    # Line 691
    andi	$t0,$s3,0x1
    # Line 692
    beqz	$t0,.L0d935978
    # Line 693
    lw	$t9,12004($s0)
    # Line 694
    move	$a0,$s0
    # Line 695
    li	$a1,0
    # Line 696
    jalr	$t9
    # Line 697
    move	$a2,$s1
.L0d935978:
    # Line 703
    andi	$t1,$s3,0x2
    # Line 704
    beqz	$t1,.L0d935994
    # Line 705
    lw	$t9,12004($s0)
    # Line 706
    move	$a0,$s0
    # Line 707
    li	$a1,1
    # Line 708
    jalr	$t9
    # Line 709
    move	$a2,$s1
.L0d935994:
    # Line 714
    lw	$t2,0($s1)
    # Line 715
    ld	$s0,40($sp)
    # Line 716
    ld	$s2,56($sp)
    # Line 717
    or	$t2,$t2,$s3
    # Line 718
    sw	$t2,0($s1)
    # Line 719
    ld	$ra,72($sp)
    # Line 720
    ld	$s1,48($sp)
    # Line 721
    ld	$s3,64($sp)
    # Line 722
    jr	$ra
    # Line 723
    addiu	$sp,$sp,80
.end __glValidateVertex4

# Function: __glValidateLitVertex2
# Declared: Line 744 (Source lines: 744-836)
# Address: 0x0d9359bc - 0x0d935aac (Size: 240 bytes, Frame: 0)
.globl __glValidateLitVertex2
.ent __glValidateLitVertex2
__glValidateLitVertex2:
    # Line 744
    move	$t3,$ra
    # Line 747
    lw	$a4,0($a1)
    # Line 748
    move	$t0,$a0
    # Line 749
    move	$t1,$a1
    # Line 751
    lw	$a5,29660($t0)
    # Line 752
    nor	$a6,$a4,$zero
    # Line 753
    and	$t2,$a6,$a2
    # Line 754
    or	$a4,$a4,$t2
    # Line 755
    sw	$a4,0($t1)
    # Line 757
    andi	$a7,$t2,0x8
    # Line 758
    beqz	$a7,.L0d935a84
    # Line 761
    lw	$t8,64($a5)
    # Line 762
    lbu	$v0,268($a5)
    # Line 763
    beqz	$t8,.L0d935a08
    # Line 764
    lw	$t9,164($a5)
.L0d9359f8:
    # Line 768
    beqz	$v0,.L0d935a78
    # Line 769
    addiu	$a0,$t1,32
    # Line 771
    b	.L0d935a34
    # Line 772
    nop
.L0d935a08:
    # Line 777
    lwc1	$f5,32($t1)
    # Line 778
    lwc1	$f6,16($t1)
    # Line 779
    lwc1	$f7,36($t1)
    # Line 780
    mul.s	$f8,$f5,$f6
    # Line 781
    lwc1	$f9,20($t1)
    # Line 782
    nop
    # Line 783
    mul.s	$f10,$f7,$f9
    # Line 784
    add.s	$f8,$f8,$f10
    # Line 785
    neg.s	$f8,$f8
    # Line 786
    b	.L0d9359f8
    # Line 787
    swc1	$f8,44($t1)
.L0d935a34:
    # Line 793
    addiu	$sp,$sp,-80
    # Line 794
    sd	$ra,72($sp)
    # Line 795
    sw	$t0,40($sp)
    # Line 796
    sw	$t1,48($sp)
    # Line 797
    sw	$t2,56($sp)
    # Line 798
    lw	$t9,11900($t0)
    # Line 799
    move	$a0,$t0
    # Line 800
    jalr	$t9
    # Line 801
    move	$a1,$a5
    # Line 803
    ld	$t3,72($sp)
    # Line 804
    lw	$t0,40($sp)
    # Line 805
    lw	$t1,48($sp)
    # Line 806
    lw	$t2,56($sp)
    # Line 807
    addiu	$sp,$sp,80
    # Line 808
    lw	$a5,29660($t0)
    # Line 809
    addiu	$a0,$t1,32
    # Line 810
    lw	$t9,164($a5)
.L0d935a78:
    # Line 816
    addiu	$a1,$t1,32
    # Line 817
    jalr	$t9
    # Line 818
    addiu	$a2,$a5,88
.L0d935a84:
    # Line 824
    andi	$v1,$t2,0x1
    # Line 825
    move	$ra,$t3
    # Line 826
    beqz	$v1,.L0d935aa4
    # Line 827
    lw	$t9,12004($t0)
    # Line 828
    move	$a0,$t0
    # Line 829
    li	$a1,0
    # Line 830
    jr	$t9
    # Line 831
    move	$a2,$t1
.L0d935aa4:
    # Line 835
    jr	$ra
    # Line 836
    nop
.end __glValidateLitVertex2

# Function: __glValidateLitVertex3
# Declared: Line 848 (Source lines: 848-942)
# Address: 0x0d935aac - 0x0d935ba4 (Size: 248 bytes, Frame: 0)
.globl __glValidateLitVertex3
.ent __glValidateLitVertex3
__glValidateLitVertex3:
    # Line 848
    move	$t3,$ra
    # Line 851
    lw	$a3,0($a1)
    # Line 852
    move	$t0,$a0
    # Line 853
    move	$t1,$a1
    # Line 855
    lw	$a4,29660($t0)
    # Line 856
    nor	$a5,$a3,$zero
    # Line 857
    and	$t2,$a5,$a2
    # Line 858
    or	$a3,$a3,$t2
    # Line 859
    sw	$a3,0($t1)
    # Line 861
    andi	$a6,$t2,0x8
    # Line 862
    beqz	$a6,.L0d935afc
    # Line 865
    lw	$a7,64($a4)
    # Line 866
    lbu	$t8,268($a4)
    # Line 867
    beqz	$a7,.L0d935b24
    # Line 868
    lw	$t9,164($a4)
.L0d935ae8:
    # Line 872
    bnez	$t8,.L0d935b5c
    # Line 873
    addiu	$a0,$t1,32
.L0d935af0:
    # Line 879
    addiu	$a1,$t1,32
    # Line 880
    jalr	$t9
    # Line 881
    addiu	$a2,$a4,88
.L0d935afc:
    # Line 887
    andi	$t9,$t2,0x1
    # Line 888
    move	$ra,$t3
    # Line 889
    beqz	$t9,.L0d935b1c
    # Line 890
    lw	$t9,12004($t0)
    # Line 891
    move	$a0,$t0
    # Line 892
    li	$a1,0
    # Line 893
    jr	$t9
    # Line 894
    move	$a2,$t1
.L0d935b1c:
    # Line 898
    jr	$ra
    # Line 899
    nop
.L0d935b24:
    # Line 905
    lwc1	$f11,32($t1)
    # Line 906
    lwc1	$f12,16($t1)
    # Line 907
    lwc1	$f13,36($t1)
    # Line 908
    mul.s	$f14,$f11,$f12
    # Line 909
    lwc1	$f15,20($t1)
    # Line 910
    lwc1	$f16,40($t1)
    # Line 911
    mul.s	$f17,$f13,$f15
    # Line 912
    lwc1	$f18,24($t1)
    # Line 913
    add.s	$f14,$f14,$f17
    # Line 914
    mul.s	$f19,$f16,$f18
    # Line 915
    add.s	$f14,$f14,$f19
    # Line 916
    neg.s	$f14,$f14
    # Line 917
    b	.L0d935ae8
    # Line 918
    swc1	$f14,44($t1)
.L0d935b5c:
    # Line 924
    addiu	$sp,$sp,-80
    # Line 925
    sd	$ra,72($sp)
    # Line 926
    sw	$t0,40($sp)
    # Line 927
    sw	$t1,48($sp)
    # Line 928
    sw	$t2,56($sp)
    # Line 929
    lw	$t9,11900($t0)
    # Line 930
    move	$a0,$t0
    # Line 931
    jalr	$t9
    # Line 932
    move	$a1,$a4
    # Line 934
    ld	$t3,72($sp)
    # Line 935
    lw	$t0,40($sp)
    # Line 936
    lw	$t1,48($sp)
    # Line 937
    lw	$t2,56($sp)
    # Line 938
    addiu	$sp,$sp,80
    # Line 939
    lw	$a4,29660($t0)
    # Line 940
    addiu	$a0,$t1,32
    # Line 941
    b	.L0d935af0
    # Line 942
    lw	$t9,164($a4)
.end __glValidateLitVertex3

# Function: __glValidateLitVertex4
# Declared: Line 956 (Source lines: 956-1056)
# Address: 0x0d935ba4 - 0x0d935cac (Size: 264 bytes, Frame: 0)
.globl __glValidateLitVertex4
.ent __glValidateLitVertex4
__glValidateLitVertex4:
    # Line 956
    move	$t3,$ra
    # Line 959
    lw	$v0,0($a1)
    # Line 960
    move	$t0,$a0
    # Line 961
    move	$t1,$a1
    # Line 963
    lw	$v1,29660($t0)
    # Line 964
    nor	$a0,$v0,$zero
    # Line 965
    and	$t2,$a0,$a2
    # Line 966
    or	$v0,$v0,$t2
    # Line 967
    sw	$v0,0($t1)
    # Line 969
    andi	$a1,$t2,0x8
    # Line 970
    beqz	$a1,.L0d935c84
    # Line 973
    lw	$a2,28($t1)
    # Line 974
    lbu	$a3,268($v1)
    # Line 975
    bnez	$a2,.L0d935bf4
    # Line 976
    lw	$t9,164($v1)
    # Line 979
    sw	$zero,44($t1)
.L0d935be4:
    # Line 983
    beqz	$a3,.L0d935c78
    # Line 984
    addiu	$a0,$t1,32
    # Line 986
    b	.L0d935c34
    # Line 987
    nop
.L0d935bf4:
    # Line 992
    lwc1	$f0,32($t1)
    # Line 993
    lwc1	$f1,16($t1)
    # Line 994
    lwc1	$f2,36($t1)
    # Line 995
    mul.s	$f3,$f0,$f1
    # Line 996
    lwc1	$f4,20($t1)
    # Line 997
    lwc1	$f5,40($t1)
    # Line 998
    mul.s	$f6,$f2,$f4
    # Line 999
    lwc1	$f7,24($t1)
    # Line 1000
    add.s	$f3,$f3,$f6
    # Line 1001
    mul.s	$f8,$f5,$f7
    # Line 1002
    lwc1	$f9,28($t1)
    # Line 1003
    add.s	$f3,$f3,$f8
    # Line 1004
    neg.s	$f3,$f3
    # Line 1005
    div.s	$f3,$f3,$f9
    # Line 1006
    b	.L0d935be4
    # Line 1007
    swc1	$f3,44($t1)
.L0d935c34:
    # Line 1013
    addiu	$sp,$sp,-80
    # Line 1014
    sd	$ra,72($sp)
    # Line 1015
    sw	$t0,40($sp)
    # Line 1016
    sw	$t1,48($sp)
    # Line 1017
    sw	$t2,56($sp)
    # Line 1018
    lw	$t9,11900($t0)
    # Line 1019
    move	$a0,$t0
    # Line 1020
    jalr	$t9
    # Line 1021
    move	$a1,$v1
    # Line 1023
    ld	$t3,72($sp)
    # Line 1024
    lw	$t0,40($sp)
    # Line 1025
    lw	$t1,48($sp)
    # Line 1026
    lw	$t2,56($sp)
    # Line 1027
    addiu	$sp,$sp,80
    # Line 1028
    lw	$v1,29660($t0)
    # Line 1029
    addiu	$a0,$t1,32
    # Line 1030
    lw	$t9,164($v1)
.L0d935c78:
    # Line 1036
    addiu	$a1,$t1,32
    # Line 1037
    jalr	$t9
    # Line 1038
    addiu	$a2,$v1,88
.L0d935c84:
    # Line 1044
    andi	$a4,$t2,0x1
    # Line 1045
    move	$ra,$t3
    # Line 1046
    beqz	$a4,.L0d935ca4
    # Line 1047
    lw	$t9,12004($t0)
    # Line 1048
    move	$a0,$t0
    # Line 1049
    li	$a1,0
    # Line 1050
    jr	$t9
    # Line 1051
    move	$a2,$t1
.L0d935ca4:
    # Line 1055
    jr	$ra
    # Line 1056
    nop
.end __glValidateLitVertex4

# Function: __glValidateVertex2Clip
# Declared: Line 1070 (Source lines: 1070-1095)
# Address: 0x0d935cac - 0x0d935cf0 (Size: 68 bytes, Frame: 208)
.globl __glValidateVertex2Clip
.ent __glValidateVertex2Clip
__glValidateVertex2Clip:
    # Line 1070
    addiu	$sp,$sp,-80
    # Line 1073
    sd	$ra,72($sp)
    # Line 1074
    lw	$a5,0($a1)
    # Line 1076
    lw	$a6,29660($a0)
    # Line 1077
    andi	$a7,$a2,0x20
    # Line 1079
    ori	$a5,$a5,0x20
    # Line 1081
    beqz	$a7,.L0d935ce8
    # Line 1083
    lw	$t9,252($a6)
    # Line 1084
    sw	$a5,0($a1)
    # Line 1085
    addiu	$a0,$a1,112
    # Line 1086
    addiu	$a1,$a1,16
    # Line 1087
    jalr	$t9
    # Line 1088
    addiu	$a2,$a6,176
    # Line 1091
    ld	$ra,72($sp)
    # Line 1092
    nop
.L0d935ce8:
    # Line 1094
    jr	$ra
    # Line 1095
    addiu	$sp,$sp,80
.end __glValidateVertex2Clip

# Function: __glValidateVertex3Clip
# Declared: Line 1106 (Source lines: 1106-1131)
# Address: 0x0d935cf0 - 0x0d935d34 (Size: 68 bytes, Frame: 208)
.globl __glValidateVertex3Clip
.ent __glValidateVertex3Clip
__glValidateVertex3Clip:
    # Line 1106
    addiu	$sp,$sp,-80
    # Line 1109
    sd	$ra,72($sp)
    # Line 1110
    lw	$t8,0($a1)
    # Line 1112
    lw	$v0,29660($a0)
    # Line 1113
    andi	$v1,$a2,0x20
    # Line 1115
    ori	$t8,$t8,0x20
    # Line 1117
    beqz	$v1,.L0d935d2c
    # Line 1119
    lw	$t9,252($v0)
    # Line 1120
    sw	$t8,0($a1)
    # Line 1121
    addiu	$a0,$a1,112
    # Line 1122
    addiu	$a1,$a1,16
    # Line 1123
    jalr	$t9
    # Line 1124
    addiu	$a2,$v0,176
    # Line 1127
    ld	$ra,72($sp)
    # Line 1128
    nop
.L0d935d2c:
    # Line 1130
    jr	$ra
    # Line 1131
    addiu	$sp,$sp,80
.end __glValidateVertex3Clip

# Function: __glValidateVertex4Clip
# Declared: Line 1142 (Source lines: 1142-1167)
# Address: 0x0d935d34 - 0x0d935d78 (Size: 68 bytes, Frame: 208)
.globl __glValidateVertex4Clip
.ent __glValidateVertex4Clip
__glValidateVertex4Clip:
    # Line 1142
    addiu	$sp,$sp,-80
    # Line 1145
    sd	$ra,72($sp)
    # Line 1146
    lw	$a3,0($a1)
    # Line 1148
    lw	$t0,29660($a0)
    # Line 1149
    andi	$t1,$a2,0x20
    # Line 1151
    ori	$a3,$a3,0x20
    # Line 1153
    beqz	$t1,.L0d935d70
    # Line 1155
    lw	$t9,252($t0)
    # Line 1156
    sw	$a3,0($a1)
    # Line 1157
    addiu	$a0,$a1,112
    # Line 1158
    addiu	$a1,$a1,16
    # Line 1159
    jalr	$t9
    # Line 1160
    addiu	$a2,$t0,176
    # Line 1163
    ld	$ra,72($sp)
    # Line 1164
    nop
.L0d935d70:
    # Line 1166
    jr	$ra
    # Line 1167
    addiu	$sp,$sp,80
.end __glValidateVertex4Clip

