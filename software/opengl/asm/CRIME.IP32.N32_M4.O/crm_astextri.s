# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME.IP32.N32_M4.O/crm_astextri.s
# Category: CRIME.IP32.N32_M4.O
# Compiler Options: 
# Total Functions: 1

.text

# Function: __glCrmFillTriangle
# Declared: Line 406 (Source lines: 406-1267)
# Address: 0x0d9372b0 - 0x0d937d1c (Size: 2668 bytes, Frame: 0)
.globl __glCrmFillTriangle
.ent __glCrmFillTriangle
__glCrmFillTriangle:
    # Line 406
    lwc1	$f0,30176($a0)
    # Line 407
    addiu	$sp,$sp,-240
    # Line 408
    lwc1	$f1,30188($a0)
    # Line 409
    recip.s	$f2,$f0
    # Line 410
    lw	$v0,30180($a0)
    # Line 411
    lwc1	$f3,30192($a0)
    # Line 412
    lwc1	$f4,30180($a0)
    # Line 413
    lwc1	$f5,30184($a0)
    # Line 415
    bgez	$v0,.L0d9372ec
    # Line 416
    move	$v1,$a1
    # Line 417
    lui	$t0,0x202
    # Line 418
    lui	$t1,0x201
    # Line 419
    movn	$t1,$t0,$a4
    # Line 420
    b	.L0d9372fc
    # Line 421
    movz	$v1,$a3,$a4
.L0d9372ec:
    # Line 423
    lui	$t2,0x200
    # Line 424
    lui	$t1,0x203
    # Line 425
    movn	$t1,$t2,$a4
    # Line 426
    movn	$v1,$a3,$a4
.L0d9372fc:
    # Line 428
    lw	$t3,128($v1)
    # Line 429
    lw	$a4,132($v1)
    # Line 430
    li	$a5,-64
    # Line 431
    and	$t3,$t3,$a5
    # Line 432
    and	$a4,$a4,$a5
    # Line 433
    mtc1	$t3,$f6
    # Line 434
    lwc1	$f7,128($v1)
    # Line 435
    mtc1	$a4,$f8
    # Line 436
    lwc1	$f9,132($v1)
    # Line 437
    sub.s	$f10,$f6,$f7
    # Line 438
    lw	$a6,32184($a0)
    # Line 439
    sub.s	$f11,$f8,$f9
    # Line 440
    ld	$a7,128($a1)
    # Line 441
    mul.s	$f12,$f1,$f2
    # Line 442
    ld	$t8,128($a2)
    # Line 443
    mul.s	$f13,$f3,$f2
    # Line 445
    sw	$t1,8288($a6)
    # Line 447
    mul.s	$f14,$f4,$f2
    # Line 448
    ld	$t9,128($a3)
    # Line 449
    mul.s	$f15,$f5,$f2
    # Line 450
    sw	$ra,32096($a0)
    # Line 452
    sd	$a7,8320($a6)
    # Line 454
    lw	$v0,30436($a0)
    # Line 456
    sd	$t8,8328($a6)
    # Line 459
    lui	$t0,0x2
    # Line 461
    sd	$t9,8336($a6)
    # Line 464
    and	$t1,$v0,$t0
    # Line 465
    beqz	$t1,.L0d9375bc
    # Line 466
    lw	$t2,8($a3)
    # Line 467
    li	$t3,1
    # Line 468
    lw	$a4,8($a2)
    # Line 469
    and	$a5,$v0,$t3
    # Line 470
    beqz	$a5,.L0d937558
    # Line 471
    lw	$a7,8($a1)
    # Line 472
    addiu	$t8,$a0,32767
    lbu	$t8,303($t8)
    # Line 473
    bnez	$t8,.L0d9374f4
    # Line 474
    lwc1	$f16,0($t2)
    # Line 475
    lwc1	$f17,0($a4)
    # Line 476
    lwc1	$f18,0($a7)
    # Line 477
    lwc1	$f19,4($a4)
    # Line 478
    sub.s	$f0,$f17,$f16
    # Line 479
    lwc1	$f1,4($t2)
    # Line 480
    sub.s	$f2,$f18,$f16
    # Line 481
    lwc1	$f3,4($a7)
    # Line 482
    sub.s	$f4,$f19,$f1
    # Line 483
    sub.s	$f5,$f3,$f1
    # Line 484
    mul.s	$f6,$f0,$f12
    # Line 485
    lw	$t9,8($v1)
    # Line 486
    mul.s	$f7,$f2,$f15
    # Line 487
    mul.s	$f8,$f4,$f12
    # Line 488
    mul.s	$f9,$f5,$f15
    # Line 489
    msub.s	$f16,$f6,$f2,$f13
    # Line 490
    msub.s	$f17,$f7,$f0,$f14
    # Line 491
    lwc1	$f18,32016($a0)
    # Line 492
    msub.s	$f19,$f8,$f5,$f13
    # Line 493
    msub.s	$f0,$f9,$f4,$f14
    # Line 494
    mul.s	$f1,$f16,$f18
    # Line 495
    lwc1	$f2,0($t9)
    # Line 496
    mul.s	$f3,$f17,$f18
    # Line 497
    mul.s	$f4,$f19,$f18
    # Line 498
    mul.s	$f5,$f0,$f18
    # Line 499
    madd.s	$f2,$f2,$f16,$f10
    # Line 500
    lwc1	$f6,4($t9)
    # Line 501
    trunc.w.s	$f1,$f1
    # Line 502
    trunc.w.s	$f3,$f3
    # Line 503
    madd.s	$f6,$f6,$f19,$f10
    # Line 504
    lwc1	$f7,8($a4)
    # Line 505
    madd.s	$f2,$f2,$f17,$f11
    # Line 506
    lwc1	$f8,8($t2)
    # Line 507
    trunc.w.s	$f4,$f4
    # Line 509
    swc1	$f1,8432($a6)
    # Line 511
    trunc.w.s	$f5,$f5
    # Line 513
    swc1	$f3,8440($a6)
    # Line 515
    madd.s	$f6,$f6,$f0,$f11
    # Line 516
    lwc1	$f9,8($a7)
    # Line 517
    mul.s	$f2,$f2,$f18
    # Line 518
    lwc1	$f16,12($a4)
    # Line 519
    sub.s	$f7,$f7,$f8
    # Line 520
    lwc1	$f17,12($t2)
    # Line 521
    sub.s	$f9,$f9,$f8
    # Line 522
    lwc1	$f19,12($a7)
    # Line 523
    sub.s	$f16,$f16,$f17
    # Line 525
    swc1	$f4,8436($a6)
    # Line 527
    sub.s	$f19,$f19,$f17
    # Line 529
    swc1	$f5,8444($a6)
    # Line 531
    mul.s	$f6,$f6,$f18
    # Line 532
    trunc.w.s	$f2,$f2
    # Line 533
    mul.s	$f0,$f7,$f12
    # Line 534
    mul.s	$f1,$f9,$f15
    # Line 535
    mul.s	$f3,$f16,$f12
    # Line 537
    swc1	$f2,8416($a6)
    # Line 539
    mul.s	$f4,$f19,$f15
    # Line 540
    trunc.w.s	$f6,$f6
    # Line 541
    lwc1	$f5,32016($a0)
    # Line 542
    msub.s	$f0,$f0,$f9,$f13
    # Line 543
    lwc1	$f8,8($t9)
    # Line 544
    msub.s	$f1,$f1,$f7,$f14
    # Line 545
    msub.s	$f9,$f3,$f19,$f13
    # Line 547
    swc1	$f6,8420($a6)
    # Line 549
    msub.s	$f17,$f4,$f16,$f14
    # Line 550
    lwc1	$f18,12($t9)
    # Line 551
    mul.s	$f19,$f0,$f5
    # Line 552
    mul.s	$f2,$f1,$f5
    # Line 553
    madd.s	$f8,$f8,$f0,$f10
    # Line 554
    mul.s	$f3,$f9,$f5
    # Line 555
    mul.s	$f4,$f17,$f5
    # Line 556
    madd.s	$f18,$f18,$f9,$f10
    # Line 557
    trunc.w.s	$f19,$f19
    # Line 558
    trunc.w.s	$f2,$f2
    # Line 559
    lwc1	$f5,32016($a0)
    # Line 560
    madd.s	$f8,$f8,$f1,$f11
    # Line 561
    trunc.w.s	$f3,$f3
    # Line 562
    madd.s	$f18,$f18,$f17,$f11
    # Line 564
    swc1	$f19,8448($a6)
    # Line 566
    trunc.w.s	$f4,$f4
    # Line 568
    swc1	$f2,8456($a6)
    # Line 570
    mul.s	$f8,$f8,$f5
    # Line 572
    swc1	$f3,8452($a6)
    # Line 574
    mul.s	$f18,$f18,$f5
    # Line 576
    swc1	$f4,8460($a6)
    # Line 578
    trunc.w.s	$f8,$f8
    # Line 580
    swc1	$f8,8424($a6)
    # Line 582
    trunc.w.s	$f18,$f18
    # Line 583
    b	.L0d937628
    # Line 585
    swc1	$f18,8428($a6)
.L0d9374f4:
    # Line 589
    lwc1	$f6,12($a4)
    # Line 590
    lwc1	$f7,12($t2)
    # Line 591
    lwc1	$f8,12($a7)
    # Line 592
    sub.s	$f6,$f6,$f7
    # Line 593
    lw	$a5,8($v1)
    # Line 594
    sub.s	$f8,$f8,$f7
    # Line 595
    mul.s	$f9,$f6,$f12
    # Line 596
    mul.s	$f16,$f8,$f15
    # Line 597
    lwc1	$f17,12($a5)
    # Line 598
    msub.s	$f18,$f9,$f8,$f13
    # Line 599
    lwc1	$f19,32016($a0)
    # Line 600
    msub.s	$f0,$f16,$f6,$f14
    # Line 601
    madd.s	$f17,$f17,$f18,$f10
    # Line 602
    mul.s	$f1,$f18,$f19
    # Line 603
    mul.s	$f2,$f0,$f19
    # Line 604
    lwc1	$f3,32016($a0)
    # Line 605
    madd.s	$f17,$f17,$f0,$f11
    # Line 606
    trunc.w.s	$f1,$f1
    # Line 607
    trunc.w.s	$f2,$f2
    # Line 608
    mul.s	$f17,$f17,$f3
    # Line 610
    swc1	$f1,8452($a6)
    # Line 612
    trunc.w.s	$f17,$f17
    # Line 614
    swc1	$f2,8460($a6)
    # Line 616
    b	.L0d937628
    # Line 618
    swc1	$f17,8428($a6)
.L0d937558:
    # Line 622
    lwc1	$f4,0($a4)
    # Line 623
    lwc1	$f5,0($t2)
    # Line 624
    lwc1	$f6,0($a7)
    # Line 625
    sub.s	$f4,$f4,$f5
    # Line 626
    lw	$t0,8($v1)
    # Line 627
    sub.s	$f6,$f6,$f5
    # Line 628
    mul.s	$f7,$f4,$f12
    # Line 629
    mul.s	$f8,$f6,$f15
    # Line 630
    lwc1	$f9,0($t0)
    # Line 631
    msub.s	$f16,$f7,$f6,$f13
    # Line 632
    lwc1	$f17,32016($a0)
    # Line 633
    msub.s	$f18,$f8,$f4,$f14
    # Line 634
    madd.s	$f9,$f9,$f16,$f10
    # Line 635
    mul.s	$f19,$f16,$f17
    # Line 636
    mul.s	$f0,$f18,$f17
    # Line 637
    lwc1	$f1,32016($a0)
    # Line 638
    madd.s	$f9,$f9,$f18,$f11
    # Line 639
    trunc.w.s	$f19,$f19
    # Line 640
    trunc.w.s	$f0,$f0
    # Line 641
    mul.s	$f9,$f9,$f1
    # Line 643
    swc1	$f19,8452($a6)
    # Line 645
    trunc.w.s	$f9,$f9
    # Line 647
    swc1	$f0,8460($a6)
    # Line 649
    b	.L0d937628
    # Line 651
    swc1	$f9,8428($a6)
.L0d9375bc:
    # Line 655
    addiu	$a4,$a0,32767
    lw	$a4,125($a4)
    # Line 656
    lw	$a5,28072($a0)
    # Line 657
    andi	$a4,$a4,0x2
    # Line 658
    lw	$a7,8($a5)
    # Line 659
    bnez	$a4,.L0d937628
    # Line 660
    lwc1	$f2,0($a7)
    # Line 661
    lwc1	$f3,4($a7)
    # Line 662
    lwc1	$f4,8($a7)
    # Line 663
    lwc1	$f5,12($a7)
    # Line 664
    trunc.w.s	$f2,$f2
    # Line 665
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 666
    trunc.w.s	$f3,$f3
    # Line 667
    trunc.w.s	$f4,$f4
    # Line 668
    trunc.w.s	$f5,$f5
    # Line 669
    mfc1	$t2,$f2
    # Line 670
    mfc1	$t3,$f3
    # Line 671
    mfc1	$a4,$f4
    # Line 672
    mfc1	$a5,$f5
    # Line 673
    sll	$t2,$t2,0x18
    # Line 674
    sll	$t3,$t3,0x10
    # Line 675
    sll	$a4,$a4,0x8
    # Line 676
    or	$a5,$a5,$t2
    # Line 677
    or	$a5,$a5,$t3
    # Line 678
    or	$a5,$a5,$a4
    # Line 680
    sw	$a5,8400($a6)
.L0d937628:
    # Line 684
    andi	$a7,$v0,0x4
    # Line 685
    beqz	$a7,.L0d937730
    # Line 686
    lwc1	$f6,136($a2)
    # Line 687
    lwc1	$f7,136($a3)
    # Line 688
    lwc1	$f8,136($a1)
    # Line 689
    sub.s	$f9,$f6,$f7
    # Line 690
    sub.s	$f16,$f8,$f7
    # Line 691
    lui	$t8,0x4
    # Line 692
    mul.s	$f17,$f9,$f12
    # Line 693
    lwc1	$f18,32024($a0)
    # Line 694
    mul.s	$f19,$f16,$f15
    # Line 695
    and	$t9,$v0,$t8
    # Line 696
    msub.s	$f17,$f17,$f16,$f13
    # Line 697
    lwc1	$f0,136($v1)
    # Line 698
    beqz	$t9,.L0d937704
    # Line 699
    msub.s	$f19,$f19,$f9,$f14
    # Line 706
    lwc1	$f1,31304($a0)
    # Line 707
    abs.s	$f17,$f17
    # Line 708
    lwc1	$f2,504($a0)
    # Line 709
    abs.s	$f19,$f19
    # Line 710
    lwc1	$f3,500($a0)
    # Line 711
    cvt.s.w	$f1,$f1
    # Line 712
    c.lt.s	$f17,$f19
    # Line 713
    mul.s	$f2,$f2,$f1
    # Line 714
    movt.s	$f17,$f19,$fcc0
    # Line 715
    madd.s	$f4,$f2,$f3,$f17
    # Line 716
    lwc1	$f0,136($v1)
    # Line 717
    add.s	$f8,$f8,$f4
    # Line 718
    add.s	$f6,$f6,$f4
    # Line 719
    mtc1	$zero,$f5
    # Line 720
    add.s	$f7,$f7,$f4
    # Line 721
    add.s	$f0,$f0,$f4
    # Line 722
    c.lt.s	$f8,$f5
    # Line 723
    c.lt.s $f1,$f8
    # Line 724
    movt.s	$f8,$f5,$fcc0
    # Line 725
    c.lt.s $f6,$f5
    # Line 726
    movt.s	$f8,$f1,$fcc1
    # Line 727
    c.lt.s $f1,$f6
    # Line 728
    movt.s	$f6,$f5,$fcc2
    # Line 729
    c.lt.s $f7,$f5
    # Line 730
    movt.s	$f6,$f1,$fcc3
    # Line 731
    c.lt.s $f1,$f7
    # Line 732
    movt.s	$f7,$f5,$fcc4
    # Line 733
    c.lt.s $f0,$f5
    # Line 734
    movt.s	$f7,$f1,$fcc5
    # Line 735
    c.lt.s $f1,$f0
    # Line 736
    movt.s	$f0,$f5,$fcc6
    # Line 737
    movt.s	$f0,$f1,$fcc7
    # Line 738
    sub.s	$f9,$f8,$f7
    # Line 739
    sub.s	$f16,$f6,$f7
    # Line 740
    mul.s	$f17,$f16,$f12
    # Line 741
    mul.s	$f19,$f9,$f15
    # Line 742
    lwc1	$f18,32024($a0)
    # Line 743
    msub.s	$f17,$f17,$f9,$f13
    # Line 744
    msub.s	$f19,$f19,$f16,$f14
.L0d937704:
    # Line 747
    mul.s	$f1,$f17,$f18
    # Line 748
    mul.s	$f2,$f19,$f18
    # Line 749
    madd.s	$f0,$f0,$f17,$f10
    # Line 750
    trunc.l.s	$f1,$f1
    # Line 751
    trunc.l.s	$f2,$f2
    # Line 752
    madd.s	$f0,$f0,$f19,$f11
    # Line 754
    sdc1	$f1,8656($a6)
    # Line 756
    mul.s	$f0,$f0,$f18
    # Line 758
    sdc1	$f2,8664($a6)
    # Line 760
    trunc.l.s	$f0,$f0
    # Line 762
    sdc1	$f0,8648($a6)
.L0d937730:
    # Line 767
    andi	$t3,$v0,0x2000
    # Line 768
    beqz	$t3,.L0d9377ac
    # Line 769
    lui	$a4,0x437f
    # Line 770
    mtc1	$a4,$f3
    # Line 771
    lwc1	$f4,176($a3)
    # Line 772
    lwc1	$f5,176($a1)
    # Line 773
    lwc1	$f6,176($a2)
    # Line 774
    mul.s	$f4,$f4,$f3
    # Line 775
    mul.s	$f5,$f5,$f3
    # Line 776
    lwc1	$f7,176($v1)
    # Line 777
    mul.s	$f6,$f6,$f3
    # Line 778
    sub.s	$f8,$f5,$f4
    # Line 779
    sub.s	$f9,$f6,$f4
    # Line 780
    mul.s	$f7,$f7,$f3
    # Line 781
    mul.s	$f16,$f9,$f12
    # Line 782
    lwc1	$f17,32016($a0)
    # Line 783
    mul.s	$f18,$f8,$f15
    # Line 784
    lwc1	$f19,32016($a0)
    # Line 785
    msub.s	$f16,$f16,$f8,$f13
    # Line 786
    msub.s	$f18,$f18,$f9,$f14
    # Line 787
    madd.s	$f7,$f7,$f10,$f16
    # Line 788
    mul.s	$f16,$f16,$f19
    # Line 789
    madd.s	$f7,$f7,$f11,$f18
    # Line 790
    mul.s	$f18,$f18,$f19
    # Line 791
    trunc.w.s	$f16,$f16
    # Line 792
    mul.s	$f7,$f7,$f17
    # Line 793
    trunc.w.s	$f18,$f18
    # Line 794
    trunc.w.s	$f7,$f7
    # Line 796
    swc1	$f16,8576($a6)
    # Line 799
    swc1	$f18,8584($a6)
    # Line 802
    swc1	$f7,8568($a6)
.L0d9377ac:
    # Line 807
    andi	$t9,$v0,0x8
    # Line 808
    beqz	$t9,.L0d937d10
    # Line 812
    lw	$v0,28208($a0)
    # Line 813
    lui	$a0,0x3f80
    # Line 814
    lwc1	$f0,60($a1)
    # Line 815
    mtc1	$a0,$f1
    # Line 816
    lwc1	$f2,60($a2)
    # Line 817
    lwc1	$f3,60($a3)
    # Line 818
    c.eq.s $f0,$f1
    # Line 819
    bc1f .L0d9377e8
    # Line 820
    c.eq.s $f2,$f1
    # Line 821
    bc1f .L0d9377e8
    # Line 822
    c.eq.s $f3,$f1
    # Line 823
    bc1t .L0d9378cc
    # Line 824
    lw	$t0,232($v0)
.L0d9377e8:
    # Line 826
    abs.s	$f4,$f0
    # Line 827
    lui	$t1,0x3700
    # Line 828
    abs.s	$f5,$f2
    # Line 829
    mtc1	$t1,$f6
    # Line 830
    abs.s	$f7,$f3
    # Line 831
    mtc1	$zero,$f8
    # Line 832
    c.lt.s $f4,$f6
    # Line 833
    neg.s	$f9,$f6
    # Line 834
    bc1f .L0d93781c
    # Line 835
    c.lt.s $f5,$f6
    # Line 836
    c.lt.s	$f0,$f8
    # Line 837
    mov.s	$f0,$f6
    # Line 838
    movt.s	$f0,$f9,$fcc0
.L0d93781c:
    # Line 840
    bc1f .L0d937830
    # Line 841
    c.lt.s $f7,$f6
    # Line 842
    c.lt.s	$f2,$f8
    # Line 843
    mov.s	$f2,$f6
    # Line 844
    movt.s	$f2,$f9,$fcc0
.L0d937830:
    # Line 846
    bc1f .L0d937840
    # Line 847
    c.lt.s	$f3,$f8
    # Line 848
    mov.s	$f3,$f6
    # Line 849
    movt.s	$f3,$f9,$fcc0
.L0d937840:
    # Line 851
    mov.s	$f16,$f0
    # Line 852
    recip.s	$f0,$f0
    # Line 853
    mov.s	$f17,$f2
    # Line 854
    mov.s	$f18,$f3
    # Line 855
    lwc1	$f19,140($a1)
    # Line 856
    lwc1	$f1,140($a2)
    # Line 857
    lwc1	$f4,140($a3)
    # Line 858
    recip.s	$f2,$f2
    # Line 859
    mul.s	$f5,$f19,$f16
    # Line 860
    mul.s	$f6,$f1,$f17
    # Line 861
    mul.s	$f7,$f4,$f18
    # Line 862
    lw	$t2,232($v0)
    # Line 863
    lwc1	$f8,48($a1)
    # Line 864
    lwc1	$f9,48($a2)
    # Line 865
    lwc1	$f16,48($a3)
    # Line 866
    recip.s	$f3,$f3
    # Line 867
    slti	$t3,$t2,2
    # Line 868
    mul.s	$f8,$f8,$f0
    # Line 869
    mul.s	$f9,$f9,$f2
    # Line 870
    bnez	$t3,.L0d9378b0
    # Line 871
    mul.s	$f16,$f16,$f3
    # Line 872
    lwc1	$f17,52($a1)
    # Line 873
    lwc1	$f18,52($a2)
    # Line 874
    lwc1	$f19,52($a3)
    # Line 875
    mul.s	$f17,$f17,$f0
    # Line 876
    mul.s	$f18,$f18,$f2
    # Line 877
    b	.L0d937918
    # Line 878
    mul.s	$f19,$f19,$f3
.L0d9378b0:
    # Line 880
    lui	$a4,0x3f80
    # Line 881
    mtc1	$a4,$f0
    # Line 882
    nop
    # Line 883
    mov.s	$f17,$f0
    # Line 884
    mov.s	$f18,$f0
    # Line 885
    b	.L0d937918
    # Line 886
    mov.s	$f19,$f0
.L0d9378cc:
    # Line 890
    lwc1	$f5,140($a1)
    # Line 891
    lwc1	$f6,140($a2)
    # Line 892
    lwc1	$f7,140($a3)
    # Line 893
    slti	$t3,$t0,2
    # Line 894
    lwc1	$f8,48($a1)
    # Line 895
    lwc1	$f9,48($a2)
    # Line 896
    lwc1	$f16,48($a3)
    # Line 897
    bnez	$t3,.L0d9378fc
    # Line 898
    lwc1	$f17,52($a1)
    # Line 899
    lwc1	$f18,52($a2)
    # Line 900
    b	.L0d937918
    # Line 901
    lwc1	$f19,52($a3)
.L0d9378fc:
    # Line 903
    lui	$a5,0x3f80
    # Line 904
    mtc1	$a5,$f1
    # Line 905
    nop
    # Line 906
    mov.s	$f17,$f1
    # Line 907
    mov.s	$f18,$f1
    # Line 908
    b	.L0d937918
    # Line 909
    mov.s	$f19,$f1
.L0d937918:
    # Line 919
    mtc1	$zero,$f2
    # Line 920
    lui	$a7,0x3700
    # Line 921
    c.le.s	$f5,$f2
    # Line 922
    bc1t	.L0d937938
    # Line 923
    c.le.s $f6,$f2
    # Line 924
    bc1t .L0d937938
    # Line 925
    c.le.s $f7,$f2
    # Line 926
    bc1f .L0d937968
.L0d937938:
    # Line 929
    mtc1	$a7,$f3
    # Line 932
    mov.s	$f4,$f7
    # Line 933
    c.lt.s	$f6,$f4
    # Line 934
    movt.s	$f4,$f6,$fcc0
    # Line 935
    c.lt.s	$f5,$f4
    # Line 936
    movt.s	$f4,$f5,$fcc0
    # Line 937
    floor.w.s	$f4,$f4
    # Line 938
    cvt.s.w	$f4,$f4
    # Line 939
    sub.s	$f4,$f4,$f3
    # Line 940
    add.s	$f7,$f7,$f4
    # Line 941
    add.s	$f6,$f6,$f4
    # Line 942
    add.s	$f5,$f5,$f4
.L0d937968:
    # Line 946
    mov.s	$f0,$f7
    # Line 947
    c.lt.s	$f0,$f6
    # Line 948
    movt.s	$f0,$f6,$fcc0
    # Line 949
    c.lt.s $f0,$f5
    # Line 950
    mtc1	$a0,$f1
    # Line 951
    movt.s	$f0,$f5,$fcc1
    # Line 954
    c.eq.s	$f0,$f2
    # Line 955
    movt.s	$f0,$f1,$fcc0
    # Line 957
    recip.s	$f0,$f0
    # Line 962
    lw	$t9,4($v0)
    # Line 963
    li	$a2,10497
    # Line 964
    bne	$t9,$a2,.L0d937a04
    # Line 965
    mov.s	$f2,$f16
    # Line 974
    c.lt.s	$f9,$f2
    # Line 975
    lui	$a3,0x3f80
    # Line 976
    movt.s	$f2,$f9,$fcc0
    # Line 977
    c.lt.s $f8,$f2
    # Line 978
    mtc1	$a3,$f3
    # Line 979
    movt.s	$f2,$f8,$fcc1
    # Line 980
    lui	$t0,0x4170
    # Line 981
    floor.w.s	$f2,$f2
    # Line 982
    add.s	$f16,$f16,$f3
    # Line 983
    mtc1	$t0,$f4
    # Line 984
    cvt.s.w	$f2,$f2
    # Line 985
    add.s	$f9,$f9,$f3
    # Line 986
    add.s	$f8,$f8,$f3
    # Line 987
    lw	$t2,8($v0)
    # Line 988
    sub.s	$f16,$f16,$f2
    # Line 989
    sub.s	$f9,$f9,$f2
    # Line 990
    sub.s	$f8,$f8,$f2
    # Line 991
    mov.s	$f1,$f16
    # Line 992
    c.lt.s	$f1,$f9
    # Line 993
    movt.s	$f1,$f9,$fcc0
    # Line 994
    c.lt.s $f1,$f8
    # Line 995
    movt.s	$f1,$f8,$fcc1
    # Line 996
    li	$a4,1
    # Line 997
    c.lt.s	$f4,$f1
    # Line 998
    b	.L0d937a68
    # Line 999
    movf	$a4,$zero,$fcc0
.L0d937a04:
    # Line 1009
    lui	$a5,0x3f80
    # Line 1010
    mtc1	$a5,$f2
    # Line 1011
    lui	$a7,0x40e0
    # Line 1012
    add.s	$f16,$f16,$f2
    # Line 1013
    lw	$t2,8($v0)
    # Line 1014
    add.s	$f9,$f9,$f2
    # Line 1015
    mtc1	$a7,$f3
    # Line 1016
    add.s	$f8,$f8,$f2
    # Line 1017
    neg.s	$f4,$f3
    # Line 1018
    mov.s	$f1,$f16
    # Line 1019
    c.lt.s	$f1,$f9
    # Line 1020
    mov.s	$f2,$f16
    # Line 1021
    c.lt.s $f9,$f2
    # Line 1022
    movt.s	$f1,$f9,$fcc0
    # Line 1023
    c.lt.s $f1,$f8
    # Line 1024
    movt.s	$f2,$f9,$fcc1
    # Line 1025
    c.lt.s $f8,$f2
    # Line 1026
    movt.s	$f1,$f8,$fcc2
    # Line 1027
    movt.s	$f2,$f8,$fcc3
    # Line 1028
    move	$a4,$zero
    # Line 1029
    c.lt.s $f3,$f1
    # Line 1030
    li	$t8,1
    # Line 1031
    c.lt.s $f2,$f4
    # Line 1032
    movt	$a4,$t8,$fcc1
    # Line 1033
    movt	$a4,$t8,$fcc2
.L0d937a68:
    # Line 1041
    li	$t9,10497
    # Line 1042
    bnez	$t3,.L0d937b40
    # Line 1043
    move	$v0,$zero
    # Line 1044
    bne	$t2,$t9,.L0d937ae0
    # Line 1045
    mov.s	$f3,$f19
    # Line 1046
    c.lt.s	$f18,$f3
    # Line 1047
    movt.s	$f3,$f18,$fcc0
    # Line 1048
    c.lt.s	$f17,$f3
    # Line 1049
    movt.s	$f3,$f17,$fcc0
    # Line 1050
    lui	$a2,0x3f80
    # Line 1051
    floor.w.s	$f3,$f3
    # Line 1052
    mtc1	$a2,$f4
    # Line 1053
    add.s	$f19,$f19,$f4
    # Line 1054
    cvt.s.w	$f3,$f3
    # Line 1055
    add.s	$f18,$f18,$f4
    # Line 1056
    add.s	$f17,$f17,$f4
    # Line 1057
    lui	$t0,0x4170
    # Line 1058
    sub.s	$f19,$f19,$f3
    # Line 1059
    mtc1	$t0,$f1
    # Line 1060
    sub.s	$f18,$f18,$f3
    # Line 1061
    sub.s	$f17,$f17,$f3
    # Line 1062
    li	$v0,1
    # Line 1063
    mov.s	$f2,$f19
    # Line 1064
    c.lt.s	$f2,$f18
    # Line 1065
    movt.s	$f2,$f18,$fcc0
    # Line 1066
    c.lt.s $f2,$f17
    # Line 1067
    movt.s	$f2,$f17,$fcc1
    # Line 1068
    c.lt.s	$f1,$f2
    # Line 1069
    b	.L0d937b40
    # Line 1070
    movf	$v0,$zero,$fcc0
.L0d937ae0:
    # Line 1073
    lui	$t1,0x3f80
    # Line 1074
    mtc1	$t1,$f3
    # Line 1075
    lui	$t2,0x40e0
    # Line 1076
    add.s	$f19,$f19,$f3
    # Line 1077
    mtc1	$t2,$f4
    # Line 1078
    add.s	$f18,$f18,$f3
    # Line 1079
    add.s	$f17,$f17,$f3
    # Line 1080
    neg.s	$f1,$f4
    # Line 1081
    mov.s	$f2,$f19
    # Line 1082
    c.lt.s	$f2,$f18
    # Line 1083
    mov.s	$f3,$f19
    # Line 1084
    c.lt.s $f18,$f3
    # Line 1085
    movt.s	$f2,$f18,$fcc0
    # Line 1086
    c.lt.s $f2,$f17
    # Line 1087
    movt.s	$f3,$f18,$fcc1
    # Line 1088
    c.lt.s $f17,$f3
    # Line 1089
    movt.s	$f2,$f17,$fcc2
    # Line 1090
    movt.s	$f3,$f17,$fcc3
    # Line 1091
    move	$v0,$zero
    # Line 1092
    c.lt.s $f4,$f2
    # Line 1093
    li	$t3,1
    # Line 1094
    c.lt.s $f3,$f1
    # Line 1095
    movt	$v0,$t3,$fcc1
    # Line 1096
    movt	$v0,$t3,$fcc2
.L0d937b40:
    # Line 1105
    sll	$a5,$v0,0x1
    # Line 1106
    or	$a7,$a4,$a5
    # Line 1108
    sw	$a7,8500($a6)
    # Line 1110
    sll	$a4,$a4,0x2
    # Line 1111
    sll	$v0,$v0,0x2
    # Line 1117
    mul.s	$f7,$f7,$f0
    # Line 1118
    mul.s	$f5,$f5,$f0
    # Line 1119
    mul.s	$f6,$f6,$f0
    # Line 1122
    mul.s	$f4,$f16,$f7
    # Line 1123
    lui	$t8,0x5500
    # Line 1124
    mul.s	$f16,$f8,$f5
    # Line 1125
    lui	$t9,0x5300
    # Line 1126
    mul.s	$f0,$f19,$f7
    # Line 1127
    movn	$t8,$t9,$a4
    # Line 1128
    mul.s	$f1,$f17,$f5
    # Line 1129
    msub.s	$f2,$f4,$f9,$f6
    # Line 1130
    swc1	$f4,20($sp)
    # Line 1131
    msub.s	$f3,$f4,$f8,$f5
    # Line 1132
    swc1	$f16,24($sp)
    # Line 1133
    msub.s	$f4,$f0,$f18,$f6
    # Line 1134
    swc1	$f0,12($sp)
    # Line 1135
    msub.s	$f8,$f0,$f17,$f5
    # Line 1136
    swc1	$f1,16($sp)
    # Line 1137
    mul.s	$f9,$f2,$f12
    # Line 1138
    mul.s	$f16,$f3,$f15
    # Line 1139
    mul.s	$f17,$f4,$f12
    # Line 1140
    lui	$a2,0x5500
    # Line 1141
    mul.s	$f18,$f8,$f15
    # Line 1142
    lui	$a3,0x5300
    # Line 1143
    msub.s	$f9,$f9,$f3,$f13
    # Line 1144
    movn	$a2,$a3,$v0
    # Line 1145
    msub.s	$f16,$f16,$f2,$f14
    # Line 1146
    mtc1	$t8,$f19
    # Line 1147
    msub.s	$f17,$f17,$f8,$f13
    # Line 1148
    msub.s	$f18,$f18,$f4,$f14
    # Line 1149
    mtc1	$a2,$f0
    # Line 1150
    mul.s	$f1,$f9,$f19
    # Line 1151
    mul.s	$f2,$f16,$f19
    # Line 1152
    mul.s	$f3,$f17,$f0
    # Line 1153
    mul.s	$f4,$f18,$f0
    # Line 1154
    sub.s	$f6,$f6,$f7
    # Line 1155
    sub.s	$f8,$f5,$f7
    # Line 1156
    trunc.l.s	$f1,$f1
    # Line 1157
    lui	$t1,0x4e00
    # Line 1158
    trunc.l.s	$f2,$f2
    # Line 1159
    mul.s	$f12,$f6,$f12
    # Line 1160
    mul.s	$f15,$f8,$f15
    # Line 1162
    sdc1	$f1,8504($a6)
    # Line 1164
    trunc.l.s	$f3,$f3
    # Line 1166
    sdc1	$f2,8512($a6)
    # Line 1168
    trunc.l.s	$f4,$f4
    # Line 1169
    msub.s	$f19,$f12,$f8,$f13
    # Line 1170
    mtc1	$a0,$f0
    # Line 1171
    msub.s	$f1,$f15,$f6,$f14
    # Line 1173
    sdc1	$f3,8520($a6)
    # Line 1177
    neg.s	$f2,$f0
    # Line 1179
    sdc1	$f4,8528($a6)
    # Line 1181
    c.lt.s	$f19,$f2
    # Line 1182
    mtc1	$t1,$f3
    # Line 1183
    c.lt.s $f0,$f19
    # Line 1184
    movt.s	$f19,$f2,$fcc0
    # Line 1185
    c.lt.s $f1,$f2
    # Line 1186
    movt.s	$f19,$f0,$fcc1
    # Line 1187
    c.lt.s $f0,$f1
    # Line 1188
    movt.s	$f1,$f2,$fcc2
    # Line 1189
    movt.s	$f1,$f0,$fcc3
    # Line 1190
    mul.s	$f4,$f19,$f3
    # Line 1191
    mul.s	$f6,$f1,$f3
    # Line 1192
    trunc.w.s	$f4,$f4
    # Line 1193
    lwc1	$f8,24($sp)
    # Line 1194
    trunc.w.s	$f6,$f6
    # Line 1195
    lwc1	$f12,20($sp)
    # Line 1198
    bne	$v1,$a1,.L0d937c9c
    # Line 1200
    swc1	$f4,8536($a6)
    # Line 1203
    lwc1	$f13,16($sp)
    # Line 1204
    madd.s	$f14,$f8,$f10,$f9
    # Line 1205
    mtc1	$t8,$f15
    # Line 1206
    madd.s	$f0,$f13,$f10,$f17
    # Line 1207
    lui	$t8,0x4e00
    # Line 1208
    madd.s	$f2,$f5,$f10,$f19
    # Line 1209
    mtc1	$a2,$f3
    # Line 1210
    madd.s	$f14,$f14,$f11,$f16
    # Line 1212
    swc1	$f6,8540($a6)
    # Line 1214
    madd.s	$f0,$f0,$f11,$f18
    # Line 1215
    mtc1	$t8,$f4
    # Line 1216
    b	.L0d937ccc
    # Line 1217
    madd.s	$f2,$f2,$f11,$f1
.L0d937c9c:
    # Line 1220
    lwc1	$f5,12($sp)
    # Line 1221
    madd.s	$f14,$f12,$f10,$f9
    # Line 1222
    mtc1	$t8,$f15
    # Line 1223
    madd.s	$f0,$f5,$f10,$f17
    # Line 1224
    lui	$t9,0x4e00
    # Line 1225
    madd.s	$f2,$f7,$f10,$f19
    # Line 1226
    mtc1	$a2,$f3
    # Line 1227
    madd.s	$f14,$f14,$f11,$f16
    # Line 1229
    swc1	$f6,8540($a6)
    # Line 1231
    madd.s	$f0,$f0,$f11,$f18
    # Line 1232
    mtc1	$t9,$f4
    # Line 1233
    madd.s	$f2,$f2,$f11,$f1
.L0d937ccc:
    # Line 1237
    mul.s	$f6,$f14,$f15
    # Line 1238
    mul.s	$f7,$f0,$f3
    # Line 1239
    mul.s	$f8,$f2,$f4
    # Line 1240
    trunc.l.s	$f6,$f6
    # Line 1241
    trunc.l.s	$f7,$f7
    # Line 1242
    trunc.w.s	$f8,$f8
    # Line 1243
    dmfc1	$a1,$f6
    # Line 1244
    dmfc1	$a2,$f7
    # Line 1245
    mfc1	$a3,$f8
    # Line 1246
    daddiu	$a1,$a1,2048
    # Line 1247
    daddiu	$a2,$a2,2048
    # Line 1248
    addiu	$a3,$a3,2048
    # Line 1250
    sd	$a1,8480($a6)
    # Line 1253
    sd	$a2,8488($a6)
    # Line 1256
    sw	$a3,10544($a6)
    # Line 1258
    jr	$ra
    # Line 1259
    addiu	$sp,$sp,240
.L0d937d10:
    # Line 1264
    sw	$zero,10736($a6)
    # Line 1266
    jr	$ra
    # Line 1267
    addiu	$sp,$sp,240
.end __glCrmFillTriangle

