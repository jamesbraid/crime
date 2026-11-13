# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME.IP32.N32_M4.O/mips4_xform.s
# Category: CRIME.IP32.N32_M4.O
# Compiler Options: 
# Total Functions: 15

.text

# Function: __glMipsXForm2_2DNRW
# Declared: Line 274 (Source lines: 274-289)
# Address: 0x0d9336b0 - 0x0d9336f0 (Size: 64 bytes, Frame: 0)
.globl __glMipsXForm2_2DNRW
.ent __glMipsXForm2_2DNRW
__glMipsXForm2_2DNRW:
    # Line 274
    lwc1	$f1,0($a1)
    # Line 275
    lwc1	$f2,0($a2)
    # Line 276
    lwc1	$f3,48($a2)
    # Line 277
    lwc1	$f5,4($a1)
    # Line 278
    madd.s	$f0,$f3,$f1,$f2
    # Line 279
    lwc1	$f6,20($a2)
    # Line 280
    lwc1	$f7,52($a2)
    # Line 281
    lwc1	$f4,56($a2)
    # Line 282
    madd.s	$f2,$f7,$f5,$f6
    # Line 283
    lui	$v0,0x3f80
    # Line 284
    swc1	$f4,8($a0)
    # Line 285
    sw	$v0,12($a0)
    # Line 286
    swc1	$f0,0($a0)
    # Line 287
    mtc1	$v0,$f6
    # Line 288
    jr	$ra
    # Line 289
    swc1	$f2,4($a0)
.end __glMipsXForm2_2DNRW

# Function: __glMipsXForm2_2DW
# Declared: Line 307 (Source lines: 307-326)
# Address: 0x0d9336f0 - 0x0d933740 (Size: 80 bytes, Frame: 0)
.globl __glMipsXForm2_2DW
.ent __glMipsXForm2_2DW
__glMipsXForm2_2DW:
    # Line 307
    lwc1	$f8,4($a1)
    # Line 308
    lwc1	$f9,16($a2)
    # Line 309
    lwc1	$f10,48($a2)
    # Line 310
    lwc1	$f11,20($a2)
    # Line 311
    madd.s	$f0,$f10,$f8,$f9
    # Line 312
    lwc1	$f12,52($a2)
    # Line 313
    lwc1	$f13,0($a1)
    # Line 314
    madd.s	$f2,$f12,$f8,$f11
    # Line 315
    lwc1	$f14,0($a2)
    # Line 316
    lwc1	$f15,4($a2)
    # Line 317
    madd.s	$f0,$f0,$f13,$f14
    # Line 318
    lwc1	$f4,56($a2)
    # Line 319
    madd.s	$f2,$f2,$f13,$f15
    # Line 320
    lui	$v1,0x3f80
    # Line 321
    swc1	$f4,8($a0)
    # Line 322
    sw	$v1,12($a0)
    # Line 323
    swc1	$f0,0($a0)
    # Line 324
    mtc1	$v1,$f6
    # Line 325
    jr	$ra
    # Line 326
    swc1	$f2,4($a0)
.end __glMipsXForm2_2DW

# Function: __glMipsXForm2_W
# Declared: Line 344 (Source lines: 344-367)
# Address: 0x0d933740 - 0x0d9337a0 (Size: 96 bytes, Frame: 0)
.globl __glMipsXForm2_W
.ent __glMipsXForm2_W
__glMipsXForm2_W:
    # Line 344
    lwc1	$f16,4($a1)
    # Line 345
    lwc1	$f17,16($a2)
    # Line 346
    lwc1	$f18,48($a2)
    # Line 347
    lwc1	$f19,20($a2)
    # Line 348
    madd.s	$f0,$f18,$f16,$f17
    # Line 349
    lwc1	$f1,52($a2)
    # Line 350
    lwc1	$f3,24($a2)
    # Line 351
    madd.s	$f2,$f1,$f16,$f19
    # Line 352
    lwc1	$f5,56($a2)
    # Line 353
    lwc1	$f6,0($a1)
    # Line 354
    madd.s	$f4,$f5,$f16,$f3
    # Line 355
    lwc1	$f7,0($a2)
    # Line 356
    lwc1	$f8,4($a2)
    # Line 357
    madd.s	$f0,$f0,$f6,$f7
    # Line 358
    lwc1	$f9,8($a2)
    # Line 359
    madd.s	$f2,$f2,$f6,$f8
    # Line 360
    lui	$a1,0x3f80
    # Line 361
    madd.s	$f4,$f4,$f6,$f9
    # Line 362
    sw	$a1,12($a0)
    # Line 363
    swc1	$f0,0($a0)
    # Line 364
    swc1	$f2,4($a0)
    # Line 365
    mtc1	$a1,$f6
    # Line 366
    jr	$ra
    # Line 367
    swc1	$f4,8($a0)
.end __glMipsXForm2_W

# Function: __glMipsXForm2
# Declared: Line 384 (Source lines: 384-411)
# Address: 0x0d9337a0 - 0x0d933810 (Size: 112 bytes, Frame: 0)
.globl __glMipsXForm2
.ent __glMipsXForm2
__glMipsXForm2:
    # Line 384
    lwc1	$f10,4($a1)
    # Line 385
    lwc1	$f11,28($a2)
    # Line 386
    lwc1	$f12,60($a2)
    # Line 387
    lwc1	$f13,20($a2)
    # Line 388
    madd.s	$f6,$f12,$f10,$f11
    # Line 389
    lwc1	$f14,52($a2)
    # Line 390
    lwc1	$f15,24($a2)
    # Line 391
    madd.s	$f2,$f14,$f10,$f13
    # Line 392
    lwc1	$f16,56($a2)
    # Line 393
    lwc1	$f17,16($a2)
    # Line 394
    madd.s	$f4,$f16,$f10,$f15
    # Line 395
    lwc1	$f18,48($a2)
    # Line 396
    lwc1	$f19,0($a1)
    # Line 397
    madd.s	$f0,$f18,$f10,$f17
    # Line 398
    lwc1	$f1,12($a2)
    # Line 399
    lwc1	$f3,4($a2)
    # Line 400
    madd.s	$f6,$f6,$f19,$f1
    # Line 401
    lwc1	$f5,8($a2)
    # Line 402
    madd.s	$f2,$f2,$f19,$f3
    # Line 403
    lwc1	$f7,0($a2)
    # Line 404
    madd.s	$f4,$f4,$f19,$f5
    # Line 405
    madd.s	$f0,$f0,$f19,$f7
    # Line 406
    swc1	$f6,12($a0)
    # Line 407
    recip.s	$f8,$f6
    # Line 408
    swc1	$f2,4($a0)
    # Line 409
    swc1	$f4,8($a0)
    # Line 410
    jr	$ra
    # Line 411
    swc1	$f0,0($a0)
.end __glMipsXForm2

# Function: __glMipsXForm3_2DNRW
# Declared: Line 429 (Source lines: 429-447)
# Address: 0x0d933810 - 0x0d93385c (Size: 76 bytes, Frame: 0)
.globl __glMipsXForm3_2DNRW
.ent __glMipsXForm3_2DNRW
__glMipsXForm3_2DNRW:
    # Line 429
    lwc1	$f8,0($a1)
    # Line 430
    lwc1	$f9,0($a2)
    # Line 431
    lwc1	$f10,48($a2)
    # Line 432
    lwc1	$f11,4($a1)
    # Line 433
    madd.s	$f0,$f10,$f8,$f9
    # Line 434
    lwc1	$f12,20($a2)
    # Line 435
    lwc1	$f13,52($a2)
    # Line 436
    lwc1	$f14,8($a1)
    # Line 437
    madd.s	$f2,$f13,$f11,$f12
    # Line 438
    lwc1	$f15,56($a2)
    # Line 439
    lwc1	$f16,40($a2)
    # Line 440
    lui	$a2,0x3f80
    # Line 441
    madd.s	$f4,$f15,$f14,$f16
    # Line 442
    swc1	$f0,0($a0)
    # Line 443
    swc1	$f2,4($a0)
    # Line 444
    sw	$a2,12($a0)
    # Line 445
    mtc1	$a2,$f6
    # Line 446
    jr	$ra
    # Line 447
    swc1	$f4,8($a0)
.end __glMipsXForm3_2DNRW

# Function: __glMipsXForm3_2DW
# Declared: Line 465 (Source lines: 465-487)
# Address: 0x0d93385c - 0x0d9338b8 (Size: 92 bytes, Frame: 0)
.globl __glMipsXForm3_2DW
.ent __glMipsXForm3_2DW
__glMipsXForm3_2DW:
    # Line 465
    lwc1	$f17,4($a1)
    # Line 466
    lwc1	$f18,16($a2)
    # Line 467
    lwc1	$f19,48($a2)
    # Line 468
    lwc1	$f1,20($a2)
    # Line 469
    madd.s	$f0,$f19,$f17,$f18
    # Line 470
    lwc1	$f3,52($a2)
    # Line 471
    lwc1	$f4,0($a1)
    # Line 472
    madd.s	$f2,$f3,$f17,$f1
    # Line 473
    lwc1	$f5,0($a2)
    # Line 474
    lwc1	$f6,4($a2)
    # Line 475
    madd.s	$f0,$f0,$f4,$f5
    # Line 476
    lwc1	$f7,40($a2)
    # Line 477
    lwc1	$f8,8($a1)
    # Line 478
    madd.s	$f2,$f2,$f4,$f6
    # Line 479
    lwc1	$f9,56($a2)
    # Line 480
    lui	$a3,0x3f80
    # Line 481
    madd.s	$f4,$f9,$f8,$f7
    # Line 482
    swc1	$f0,0($a0)
    # Line 483
    sw	$a3,12($a0)
    # Line 484
    swc1	$f2,4($a0)
    # Line 485
    mtc1	$a3,$f6
    # Line 486
    jr	$ra
    # Line 487
    swc1	$f4,8($a0)
.end __glMipsXForm3_2DW

# Function: __glMipsXForm3_W
# Declared: Line 508 (Source lines: 508-538)
# Address: 0x0d9338b8 - 0x0d933934 (Size: 124 bytes, Frame: 0)
.globl __glMipsXForm3_W
.ent __glMipsXForm3_W
__glMipsXForm3_W:
    # Line 508
    lwc1	$f10,8($a1)
    # Line 509
    lwc1	$f11,32($a2)
    # Line 510
    lwc1	$f12,48($a2)
    # Line 511
    lwc1	$f13,52($a2)
    # Line 512
    madd.s	$f0,$f12,$f10,$f11
    # Line 513
    lwc1	$f14,36($a2)
    # Line 514
    lwc1	$f15,56($a2)
    # Line 515
    madd.s	$f2,$f13,$f10,$f14
    # Line 516
    lwc1	$f16,40($a2)
    # Line 517
    lwc1	$f17,4($a1)
    # Line 518
    madd.s	$f4,$f15,$f10,$f16
    # Line 519
    lwc1	$f18,16($a2)
    # Line 520
    lwc1	$f19,20($a2)
    # Line 521
    madd.s	$f0,$f0,$f17,$f18
    # Line 522
    lwc1	$f1,24($a2)
    # Line 523
    madd.s	$f2,$f2,$f17,$f19
    # Line 524
    lwc1	$f3,0($a2)
    # Line 525
    lwc1	$f5,0($a1)
    # Line 526
    madd.s	$f4,$f4,$f17,$f1
    # Line 527
    lwc1	$f6,4($a2)
    # Line 528
    madd.s	$f0,$f0,$f5,$f3
    # Line 529
    lwc1	$f7,8($a2)
    # Line 530
    madd.s	$f2,$f2,$f5,$f6
    # Line 531
    lui	$a4,0x3f80
    # Line 532
    madd.s	$f4,$f4,$f5,$f7
    # Line 533
    sw	$a4,12($a0)
    # Line 534
    mtc1	$a4,$f6
    # Line 535
    swc1	$f0,0($a0)
    # Line 536
    swc1	$f2,4($a0)
    # Line 537
    jr	$ra
    # Line 538
    swc1	$f4,8($a0)
.end __glMipsXForm3_W

# Function: __glMipsXForm3AsmLink_W
# Declared: Line 556 (Source lines: 556-583)
# Address: 0x0d933934 - 0x0d9339a4 (Size: 112 bytes, Frame: 0)
.globl __glMipsXForm3AsmLink_W
.ent __glMipsXForm3AsmLink_W
__glMipsXForm3AsmLink_W:
    # Line 556
    lwc1	$f8,32($a2)
    # Line 557
    lwc1	$f9,48($a2)
    # Line 558
    lwc1	$f11,52($a2)
    # Line 559
    madd.s	$f0,$f9,$f14,$f8
    # Line 560
    lwc1	$f13,36($a2)
    # Line 561
    lwc1	$f15,56($a2)
    # Line 562
    madd.s	$f2,$f11,$f14,$f13
    # Line 563
    lwc1	$f16,40($a2)
    # Line 564
    lwc1	$f17,16($a2)
    # Line 565
    madd.s	$f4,$f15,$f14,$f16
    # Line 566
    lwc1	$f18,20($a2)
    # Line 567
    madd.s	$f0,$f0,$f12,$f17
    # Line 568
    lwc1	$f19,24($a2)
    # Line 569
    madd.s	$f2,$f2,$f12,$f18
    # Line 570
    lwc1	$f1,0($a2)
    # Line 571
    madd.s	$f4,$f4,$f12,$f19
    # Line 572
    lwc1	$f3,4($a2)
    # Line 573
    madd.s	$f0,$f0,$f10,$f1
    # Line 574
    lwc1	$f5,8($a2)
    # Line 575
    madd.s	$f2,$f2,$f10,$f3
    # Line 576
    lui	$a5,0x3f80
    # Line 577
    madd.s	$f4,$f4,$f10,$f5
    # Line 578
    sw	$a5,12($a0)
    # Line 579
    mtc1	$a5,$f6
    # Line 580
    swc1	$f0,0($a0)
    # Line 581
    swc1	$f2,4($a0)
    # Line 582
    jr	$ra
    # Line 583
    swc1	$f4,8($a0)
.end __glMipsXForm3AsmLink_W

# Function: __glMipsXForm3
# Declared: Line 605 (Source lines: 605-641)
# Address: 0x0d9339a4 - 0x0d933a38 (Size: 148 bytes, Frame: 0)
.globl __glMipsXForm3
.ent __glMipsXForm3
__glMipsXForm3:
    # Line 605
    lwc1	$f7,8($a1)
    # Line 606
    lwc1	$f8,44($a2)
    # Line 607
    lwc1	$f9,60($a2)
    # Line 608
    lwc1	$f10,36($a2)
    # Line 609
    madd.s	$f6,$f9,$f7,$f8
    # Line 610
    lwc1	$f11,52($a2)
    # Line 611
    lwc1	$f12,40($a2)
    # Line 612
    madd.s	$f2,$f11,$f7,$f10
    # Line 613
    lwc1	$f13,56($a2)
    # Line 614
    lwc1	$f14,32($a2)
    # Line 615
    madd.s	$f4,$f13,$f7,$f12
    # Line 616
    lwc1	$f15,48($a2)
    # Line 617
    lwc1	$f16,4($a1)
    # Line 618
    madd.s	$f0,$f15,$f7,$f14
    # Line 619
    lwc1	$f17,28($a2)
    # Line 620
    lwc1	$f18,20($a2)
    # Line 621
    madd.s	$f6,$f6,$f16,$f17
    # Line 622
    lwc1	$f19,24($a2)
    # Line 623
    madd.s	$f2,$f2,$f16,$f18
    # Line 624
    lwc1	$f1,16($a2)
    # Line 625
    madd.s	$f4,$f4,$f16,$f19
    # Line 626
    lwc1	$f3,0($a1)
    # Line 627
    lwc1	$f5,12($a2)
    # Line 628
    madd.s	$f0,$f0,$f16,$f1
    # Line 629
    lwc1	$f7,4($a2)
    # Line 630
    madd.s	$f6,$f6,$f3,$f5
    # Line 631
    lwc1	$f8,8($a2)
    # Line 632
    madd.s	$f2,$f2,$f3,$f7
    # Line 633
    lwc1	$f9,0($a2)
    # Line 634
    madd.s	$f4,$f4,$f3,$f8
    # Line 635
    madd.s	$f0,$f0,$f3,$f9
    # Line 636
    swc1	$f6,12($a0)
    # Line 637
    recip.s	$f8,$f6
    # Line 638
    swc1	$f2,4($a0)
    # Line 639
    swc1	$f4,8($a0)
    # Line 640
    jr	$ra
    # Line 641
    swc1	$f0,0($a0)
.end __glMipsXForm3

# Function: __glMipsXForm3AsmLink
# Declared: Line 658 (Source lines: 658-691)
# Address: 0x0d933a38 - 0x0d933ac0 (Size: 136 bytes, Frame: 0)
.globl __glMipsXForm3AsmLink
.ent __glMipsXForm3AsmLink
__glMipsXForm3AsmLink:
    # Line 658
    lwc1	$f11,44($a2)
    # Line 659
    lwc1	$f13,60($a2)
    # Line 660
    lwc1	$f15,36($a2)
    # Line 661
    madd.s	$f6,$f13,$f14,$f11
    # Line 662
    lwc1	$f16,52($a2)
    # Line 663
    lwc1	$f17,40($a2)
    # Line 664
    madd.s	$f2,$f16,$f14,$f15
    # Line 665
    lwc1	$f18,56($a2)
    # Line 666
    lwc1	$f19,32($a2)
    # Line 667
    madd.s	$f4,$f18,$f14,$f17
    # Line 668
    lwc1	$f1,48($a2)
    # Line 669
    lwc1	$f3,28($a2)
    # Line 670
    madd.s	$f0,$f1,$f14,$f19
    # Line 671
    lwc1	$f5,20($a2)
    # Line 672
    madd.s	$f6,$f6,$f12,$f3
    # Line 673
    lwc1	$f7,24($a2)
    # Line 674
    madd.s	$f2,$f2,$f12,$f5
    # Line 675
    lwc1	$f8,16($a2)
    # Line 676
    madd.s	$f4,$f4,$f12,$f7
    # Line 677
    lwc1	$f9,12($a2)
    # Line 678
    madd.s	$f0,$f0,$f12,$f8
    # Line 679
    lwc1	$f11,4($a2)
    # Line 680
    madd.s	$f6,$f6,$f10,$f9
    # Line 681
    lwc1	$f12,8($a2)
    # Line 682
    madd.s	$f2,$f2,$f10,$f11
    # Line 683
    lwc1	$f13,0($a2)
    # Line 684
    madd.s	$f4,$f4,$f10,$f12
    # Line 685
    madd.s	$f0,$f0,$f10,$f13
    # Line 686
    swc1	$f6,12($a0)
    # Line 687
    recip.s	$f8,$f6
    # Line 688
    swc1	$f2,4($a0)
    # Line 689
    swc1	$f4,8($a0)
    # Line 690
    jr	$ra
    # Line 691
    swc1	$f0,0($a0)
.end __glMipsXForm3AsmLink

# Function: __glMipsXForm4_2DNRW
# Declared: Line 708 (Source lines: 708-729)
# Address: 0x0d933ac0 - 0x0d933b18 (Size: 88 bytes, Frame: 0)
.globl __glMipsXForm4_2DNRW
.ent __glMipsXForm4_2DNRW
__glMipsXForm4_2DNRW:
    # Line 708
    lwc1	$f6,12($a1)
    # Line 709
    lwc1	$f14,48($a2)
    # Line 710
    lwc1	$f15,52($a2)
    # Line 711
    mul.s	$f0,$f6,$f14
    # Line 712
    lwc1	$f16,56($a2)
    # Line 713
    mul.s	$f2,$f6,$f15
    # Line 714
    lwc1	$f17,0($a1)
    # Line 715
    lwc1	$f18,0($a2)
    # Line 716
    mul.s	$f4,$f6,$f16
    # Line 717
    lwc1	$f19,20($a2)
    # Line 718
    lwc1	$f1,4($a1)
    # Line 719
    madd.s	$f0,$f0,$f17,$f18
    # Line 720
    lwc1	$f3,40($a2)
    # Line 721
    lwc1	$f5,8($a1)
    # Line 722
    madd.s	$f2,$f2,$f1,$f19
    # Line 723
    swc1	$f6,12($a0)
    # Line 724
    madd.s	$f4,$f4,$f5,$f3
    # Line 725
    swc1	$f0,0($a0)
    # Line 726
    recip.s	$f8,$f6
    # Line 727
    swc1	$f2,4($a0)
    # Line 728
    jr	$ra
    # Line 729
    swc1	$f4,8($a0)
.end __glMipsXForm4_2DNRW

# Function: __glMipsXForm4_2DW
# Declared: Line 749 (Source lines: 749-774)
# Address: 0x0d933b18 - 0x0d933b80 (Size: 104 bytes, Frame: 0)
.globl __glMipsXForm4_2DW
.ent __glMipsXForm4_2DW
__glMipsXForm4_2DW:
    # Line 749
    lwc1	$f6,12($a1)
    # Line 750
    lwc1	$f7,48($a2)
    # Line 751
    lwc1	$f8,52($a2)
    # Line 752
    mul.s	$f0,$f6,$f7
    # Line 753
    lwc1	$f9,56($a2)
    # Line 754
    mul.s	$f2,$f6,$f8
    # Line 755
    lwc1	$f10,4($a1)
    # Line 756
    mul.s	$f4,$f6,$f9
    # Line 757
    lwc1	$f11,16($a2)
    # Line 758
    lwc1	$f12,20($a2)
    # Line 759
    madd.s	$f0,$f0,$f10,$f11
    # Line 760
    lwc1	$f13,40($a2)
    # Line 761
    madd.s	$f2,$f2,$f10,$f12
    # Line 762
    lwc1	$f14,8($a1)
    # Line 763
    lwc1	$f15,0($a1)
    # Line 764
    madd.s	$f4,$f4,$f14,$f13
    # Line 765
    lwc1	$f16,0($a2)
    # Line 766
    lwc1	$f17,4($a2)
    # Line 767
    madd.s	$f0,$f0,$f15,$f16
    # Line 768
    madd.s	$f2,$f2,$f15,$f17
    # Line 769
    swc1	$f6,12($a0)
    # Line 770
    swc1	$f4,8($a0)
    # Line 771
    recip.s	$f8,$f6
    # Line 772
    swc1	$f0,0($a0)
    # Line 773
    jr	$ra
    # Line 774
    swc1	$f2,4($a0)
.end __glMipsXForm4_2DW

# Function: __glMipsXForm4_W
# Declared: Line 796 (Source lines: 796-829)
# Address: 0x0d933b80 - 0x0d933c08 (Size: 136 bytes, Frame: 0)
.globl __glMipsXForm4_W
.ent __glMipsXForm4_W
__glMipsXForm4_W:
    # Line 796
    lwc1	$f6,12($a1)
    # Line 797
    lwc1	$f18,48($a2)
    # Line 798
    lwc1	$f19,52($a2)
    # Line 799
    mul.s	$f0,$f6,$f18
    # Line 800
    lwc1	$f1,56($a2)
    # Line 801
    mul.s	$f2,$f6,$f19
    # Line 802
    lwc1	$f3,8($a1)
    # Line 803
    lwc1	$f5,32($a2)
    # Line 804
    mul.s	$f4,$f6,$f1
    # Line 805
    lwc1	$f7,36($a2)
    # Line 806
    madd.s	$f0,$f0,$f3,$f5
    # Line 807
    lwc1	$f8,40($a2)
    # Line 808
    madd.s	$f2,$f2,$f3,$f7
    # Line 809
    lwc1	$f9,4($a1)
    # Line 810
    lwc1	$f10,16($a2)
    # Line 811
    madd.s	$f4,$f4,$f3,$f8
    # Line 812
    lwc1	$f11,20($a2)
    # Line 813
    madd.s	$f0,$f0,$f9,$f10
    # Line 814
    lwc1	$f12,24($a2)
    # Line 815
    madd.s	$f2,$f2,$f9,$f11
    # Line 816
    lwc1	$f13,0($a1)
    # Line 817
    lwc1	$f14,0($a2)
    # Line 818
    madd.s	$f4,$f4,$f9,$f12
    # Line 819
    lwc1	$f15,4($a2)
    # Line 820
    madd.s	$f0,$f0,$f13,$f14
    # Line 821
    lwc1	$f16,8($a2)
    # Line 822
    madd.s	$f2,$f2,$f13,$f15
    # Line 823
    swc1	$f6,12($a0)
    # Line 824
    madd.s	$f4,$f4,$f13,$f16
    # Line 825
    recip.s	$f8,$f6
    # Line 826
    swc1	$f0,0($a0)
    # Line 827
    swc1	$f2,4($a0)
    # Line 828
    jr	$ra
    # Line 829
    swc1	$f4,8($a0)
.end __glMipsXForm4_W

# Function: __glMipsXForm4
# Declared: Line 852 (Source lines: 852-893)
# Address: 0x0d933c08 - 0x0d933cb0 (Size: 168 bytes, Frame: 0)
.globl __glMipsXForm4
.ent __glMipsXForm4
__glMipsXForm4:
    # Line 852
    lwc1	$f17,12($a1)
    # Line 853
    lwc1	$f18,48($a2)
    # Line 854
    lwc1	$f19,52($a2)
    # Line 855
    mul.s	$f0,$f17,$f18
    # Line 856
    lwc1	$f1,56($a2)
    # Line 857
    mul.s	$f2,$f17,$f19
    # Line 858
    lwc1	$f3,60($a2)
    # Line 859
    mul.s	$f4,$f17,$f1
    # Line 860
    lwc1	$f5,8($a1)
    # Line 861
    lwc1	$f7,32($a2)
    # Line 862
    mul.s	$f6,$f17,$f3
    # Line 863
    lwc1	$f8,36($a2)
    # Line 864
    madd.s	$f0,$f0,$f5,$f7
    # Line 865
    lwc1	$f9,40($a2)
    # Line 866
    madd.s	$f2,$f2,$f5,$f8
    # Line 867
    lwc1	$f10,44($a2)
    # Line 868
    madd.s	$f4,$f4,$f5,$f9
    # Line 869
    lwc1	$f11,4($a1)
    # Line 870
    lwc1	$f12,16($a2)
    # Line 871
    madd.s	$f6,$f6,$f5,$f10
    # Line 872
    lwc1	$f13,20($a2)
    # Line 873
    madd.s	$f0,$f0,$f11,$f12
    # Line 874
    lwc1	$f14,24($a2)
    # Line 875
    madd.s	$f2,$f2,$f11,$f13
    # Line 876
    lwc1	$f15,28($a2)
    # Line 877
    madd.s	$f4,$f4,$f11,$f14
    # Line 878
    lwc1	$f16,0($a1)
    # Line 879
    lwc1	$f17,0($a2)
    # Line 880
    madd.s	$f6,$f6,$f11,$f15
    # Line 881
    lwc1	$f18,4($a2)
    # Line 882
    madd.s	$f0,$f0,$f16,$f17
    # Line 883
    lwc1	$f19,8($a2)
    # Line 884
    madd.s	$f2,$f2,$f16,$f18
    # Line 885
    lwc1	$f1,12($a2)
    # Line 886
    madd.s	$f4,$f4,$f16,$f19
    # Line 887
    madd.s	$f6,$f6,$f16,$f1
    # Line 888
    swc1	$f0,0($a0)
    # Line 889
    swc1	$f2,4($a0)
    # Line 890
    swc1	$f4,8($a0)
    # Line 891
    swc1	$f6,12($a0)
    # Line 892
    jr	$ra
    # Line 893
    recip.s	$f8,$f6
.end __glMipsXForm4

# Function: __glMipsMultMatrix
# Declared: Line 916 (Source lines: 916-1038)
# Address: 0x0d933cb0 - 0x0d933e9c (Size: 492 bytes, Frame: 0)
.globl __glMipsMultMatrix
.ent __glMipsMultMatrix
__glMipsMultMatrix:
    # Line 916
    lwc1	$f2,0($a1)
    # Line 917
    lwc1	$f3,0($a2)
    # Line 918
    lwc1	$f4,16($a1)
    # Line 919
    lwc1	$f5,32($a1)
    # Line 920
    lwc1	$f6,48($a1)
    # Line 921
    mul.s	$f7,$f2,$f3
    # Line 922
    lwc1	$f8,16($a2)
    # Line 923
    mul.s	$f9,$f4,$f3
    # Line 924
    lwc1	$f10,4($a1)
    # Line 925
    mul.s	$f11,$f5,$f3
    # Line 926
    lwc1	$f12,20($a1)
    # Line 927
    mul.s	$f13,$f6,$f3
    # Line 928
    lwc1	$f14,36($a1)
    # Line 929
    lwc1	$f15,32($a2)
    # Line 930
    madd.s	$f7,$f7,$f10,$f8
    # Line 931
    lwc1	$f16,52($a1)
    # Line 932
    madd.s	$f9,$f9,$f12,$f8
    # Line 933
    lwc1	$f17,8($a1)
    # Line 934
    madd.s	$f11,$f11,$f14,$f8
    # Line 935
    lwc1	$f18,24($a1)
    # Line 936
    madd.s	$f13,$f13,$f16,$f8
    # Line 937
    lwc1	$f19,40($a1)
    # Line 938
    lwc1	$f0,48($a2)
    # Line 939
    madd.s	$f7,$f7,$f17,$f15
    # Line 940
    lwc1	$f1,56($a1)
    # Line 941
    madd.s	$f9,$f9,$f18,$f15
    # Line 942
    lwc1	$f3,12($a1)
    # Line 943
    madd.s	$f11,$f11,$f19,$f15
    # Line 944
    lwc1	$f8,28($a1)
    # Line 945
    madd.s	$f13,$f13,$f1,$f15
    # Line 946
    lwc1	$f15,44($a1)
    # Line 947
    madd.s	$f7,$f7,$f3,$f0
    # Line 948
    lwc1	$f16,60($a1)
    # Line 949
    madd.s	$f9,$f9,$f8,$f0
    # Line 950
    madd.s	$f11,$f11,$f15,$f0
    # Line 951
    lwc1	$f15,4($a2)
    # Line 952
    madd.s	$f13,$f13,$f16,$f0
    # Line 953
    lwc1	$f16,20($a2)
    # Line 954
    mul.s	$f0,$f2,$f15
    # Line 955
    swc1	$f7,0($a0)
    # Line 956
    mul.s	$f7,$f4,$f15
    # Line 957
    swc1	$f9,16($a0)
    # Line 958
    mul.s	$f9,$f5,$f15
    # Line 959
    swc1	$f11,32($a0)
    # Line 960
    mul.s	$f11,$f6,$f15
    # Line 961
    swc1	$f13,48($a0)
    # Line 962
    madd.s	$f0,$f0,$f10,$f16
    # Line 963
    lwc1	$f13,52($a1)
    # Line 964
    madd.s	$f7,$f7,$f12,$f16
    # Line 965
    lwc1	$f15,36($a2)
    # Line 966
    madd.s	$f9,$f9,$f14,$f16
    # Line 967
    madd.s	$f11,$f11,$f13,$f16
    # Line 968
    madd.s	$f0,$f0,$f17,$f15
    # Line 969
    madd.s	$f7,$f7,$f18,$f15
    # Line 970
    lwc1	$f16,52($a2)
    # Line 971
    madd.s	$f9,$f9,$f19,$f15
    # Line 972
    madd.s	$f11,$f11,$f1,$f15
    # Line 973
    lwc1	$f13,44($a1)
    # Line 974
    madd.s	$f0,$f0,$f3,$f16
    # Line 975
    lwc1	$f15,60($a1)
    # Line 976
    madd.s	$f7,$f7,$f8,$f16
    # Line 977
    madd.s	$f9,$f9,$f13,$f16
    # Line 978
    lwc1	$f13,8($a2)
    # Line 979
    madd.s	$f11,$f11,$f15,$f16
    # Line 980
    lwc1	$f15,24($a2)
    # Line 981
    mul.s	$f16,$f2,$f13
    # Line 982
    swc1	$f0,4($a0)
    # Line 983
    mul.s	$f0,$f4,$f13
    # Line 984
    swc1	$f7,20($a0)
    # Line 985
    mul.s	$f7,$f5,$f13
    # Line 986
    swc1	$f9,36($a0)
    # Line 987
    mul.s	$f9,$f6,$f13
    # Line 988
    swc1	$f11,52($a0)
    # Line 989
    madd.s	$f16,$f16,$f10,$f15
    # Line 990
    lwc1	$f11,52($a1)
    # Line 991
    madd.s	$f0,$f0,$f12,$f15
    # Line 992
    lwc1	$f13,40($a2)
    # Line 993
    madd.s	$f7,$f7,$f14,$f15
    # Line 994
    madd.s	$f9,$f9,$f11,$f15
    # Line 995
    madd.s	$f16,$f16,$f17,$f13
    # Line 996
    madd.s	$f0,$f0,$f18,$f13
    # Line 997
    lwc1	$f15,56($a2)
    # Line 998
    madd.s	$f7,$f7,$f19,$f13
    # Line 999
    lwc1	$f18,44($a1)
    # Line 1000
    madd.s	$f9,$f9,$f1,$f13
    # Line 1001
    lwc1	$f11,60($a1)
    # Line 1002
    madd.s	$f16,$f16,$f3,$f15
    # Line 1003
    madd.s	$f0,$f0,$f8,$f15
    # Line 1004
    lwc1	$f13,12($a2)
    # Line 1005
    madd.s	$f7,$f7,$f18,$f15
    # Line 1006
    madd.s	$f9,$f9,$f11,$f15
    # Line 1007
    lwc1	$f15,28($a2)
    # Line 1008
    mul.s	$f18,$f2,$f13
    # Line 1009
    swc1	$f16,8($a0)
    # Line 1010
    mul.s	$f2,$f4,$f13
    # Line 1011
    swc1	$f0,24($a0)
    # Line 1012
    mul.s	$f4,$f5,$f13
    # Line 1013
    swc1	$f7,40($a0)
    # Line 1014
    mul.s	$f5,$f6,$f13
    # Line 1015
    swc1	$f9,56($a0)
    # Line 1016
    madd.s	$f18,$f18,$f10,$f15
    # Line 1017
    lwc1	$f6,52($a1)
    # Line 1018
    madd.s	$f2,$f2,$f12,$f15
    # Line 1019
    lwc1	$f7,44($a2)
    # Line 1020
    madd.s	$f4,$f4,$f14,$f15
    # Line 1021
    lwc1	$f9,24($a1)
    # Line 1022
    madd.s	$f5,$f5,$f6,$f15
    # Line 1023
    madd.s	$f18,$f18,$f17,$f7
    # Line 1024
    madd.s	$f2,$f2,$f9,$f7
    # Line 1025
    lwc1	$f10,60($a2)
    # Line 1026
    madd.s	$f4,$f4,$f19,$f7
    # Line 1027
    lwc1	$f11,44($a1)
    # Line 1028
    madd.s	$f5,$f5,$f1,$f7
    # Line 1029
    lwc1	$f12,60($a1)
    # Line 1030
    madd.s	$f18,$f18,$f3,$f10
    # Line 1031
    madd.s	$f2,$f2,$f8,$f10
    # Line 1032
    madd.s	$f4,$f4,$f11,$f10
    # Line 1033
    madd.s	$f5,$f5,$f12,$f10
    # Line 1034
    swc1	$f18,12($a0)
    # Line 1035
    swc1	$f2,28($a0)
    # Line 1036
    swc1	$f4,44($a0)
    # Line 1037
    jr	$ra
    # Line 1038
    swc1	$f5,60($a0)
.end __glMipsMultMatrix

