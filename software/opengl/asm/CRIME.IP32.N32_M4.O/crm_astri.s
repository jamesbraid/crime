# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME.IP32.N32_M4.O/crm_astri.s
# Category: CRIME.IP32.N32_M4.O
# Compiler Options: 
# Total Functions: 8

.text

# Function: __glCrmFlatTriangle
# Declared: Line 444 (Source lines: 444-522)
# Address: 0x0d936410 - 0x0d9364f8 (Size: 232 bytes, Frame: 0)
.globl __glCrmFlatTriangle
.ent __glCrmFlatTriangle
__glCrmFlatTriangle:
    # Line 444
    lw	$v0,30180($a0)
    # Line 445
    ldc1	$f0,128($a1)
    # Line 446
    lw	$v1,32184($a0)
    # Line 447
    bgez	$v0,.L0d936430
    # Line 448
    lui	$a1,0x202
    # Line 449
    lui	$t0,0x201
    # Line 450
    b	.L0d93643c
    # Line 451
    movn	$t0,$a1,$a4
.L0d936430:
    # Line 453
    lui	$t1,0x200
    # Line 454
    lui	$t0,0x203
    # Line 455
    movn	$t0,$t1,$a4
.L0d93643c:
    # Line 458
    sw	$ra,32096($a0)
    # Line 460
    sw	$t0,8288($v1)
    # Line 462
    ldc1	$f1,128($a2)
    # Line 463
    ldc1	$f2,128($a3)
    # Line 464
    addiu	$t2,$a0,32767
    lw	$t2,125($t2)
    # Line 466
    sdc1	$f0,8320($v1)
    # Line 468
    andi	$t2,$t2,0x2
    # Line 469
    bnez	$t2,.L0d9364ec
    # Line 471
    sdc1	$f1,8328($v1)
    # Line 473
    lw	$t3,28072($a0)
    # Line 474
    lw	$a4,30436($a0)
    # Line 475
    lw	$a5,8($t3)
    # Line 476
    andi	$a4,$a4,0x1
    # Line 477
    beqz	$a4,.L0d9364d4
    # Line 478
    lwc1	$f3,0($a5)
    # Line 479
    lwc1	$f4,4($a5)
    # Line 480
    lwc1	$f5,8($a5)
    # Line 481
    lwc1	$f6,12($a5)
    # Line 482
    trunc.w.s	$f3,$f3
    # Line 483
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 484
    trunc.w.s	$f4,$f4
    # Line 486
    sdc1	$f2,8336($v1)
    # Line 488
    trunc.w.s	$f5,$f5
    # Line 489
    trunc.w.s	$f6,$f6
    # Line 490
    mfc1	$v0,$f3
    # Line 491
    mfc1	$a0,$f4
    # Line 492
    mfc1	$a1,$f5
    # Line 493
    mfc1	$a2,$f6
    # Line 494
    sll	$v0,$v0,0x18
    # Line 495
    sll	$a0,$a0,0x10
    # Line 496
    sll	$a1,$a1,0x8
    # Line 497
    or	$a2,$a2,$v0
    # Line 498
    or	$a2,$a2,$a0
    # Line 499
    or	$a2,$a2,$a1
    # Line 500
    jr	$ra
    # Line 502
    sw	$a2,10448($v1)
.L0d9364d4:
    # Line 506
    trunc.w.s	$f3,$f3
    # Line 507
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 509
    sdc1	$f2,8336($v1)
    # Line 511
    jr	$ra
    # Line 513
    swc1	$f3,10448($v1)
.L0d9364ec:
    # Line 518
    sdc1	$f2,8336($v1)
    # Line 520
    jr	$ra
    # Line 522
    sw	$zero,10736($v1)
.end __glCrmFlatTriangle

# Function: __glCrmFlatZTriangle
# Declared: Line 538 (Source lines: 538-665)
# Address: 0x0d9364f8 - 0x0d936690 (Size: 408 bytes, Frame: 0)
.globl __glCrmFlatZTriangle
.ent __glCrmFlatZTriangle
__glCrmFlatZTriangle:
    # Line 538
    lwc1	$f7,30176($a0)
    # Line 539
    lwc1	$f8,30188($a0)
    # Line 540
    recip.s	$f9,$f7
    # Line 541
    lwc1	$f10,30192($a0)
    # Line 542
    lwc1	$f11,30180($a0)
    # Line 543
    lwc1	$f12,30184($a0)
    # Line 544
    lw	$t0,30180($a0)
    # Line 546
    lw	$t1,32184($a0)
    # Line 547
    bgez	$t0,.L0d936534
    # Line 548
    move	$t2,$a1
    # Line 549
    lui	$t3,0x202
    # Line 550
    lui	$a5,0x201
    # Line 551
    movn	$a5,$t3,$a4
    # Line 552
    b	.L0d936544
    # Line 553
    movz	$t2,$a3,$a4
.L0d936534:
    # Line 555
    lui	$a6,0x200
    # Line 556
    lui	$a5,0x203
    # Line 557
    movn	$a5,$a6,$a4
    # Line 558
    movn	$t2,$a3,$a4
.L0d936544:
    # Line 561
    lw	$a7,128($t2)
    # Line 562
    lw	$t8,132($t2)
    # Line 564
    sw	$a5,8288($t1)
    # Line 566
    li	$t9,-64
    # Line 567
    and	$a7,$a7,$t9
    # Line 568
    ld	$v0,128($a1)
    # Line 569
    ld	$v1,128($a2)
    # Line 571
    sd	$v0,8320($t1)
    # Line 573
    lwc1	$f13,136($a3)
    # Line 574
    lwc1	$f14,136($a2)
    # Line 575
    ld	$a2,128($a3)
    # Line 576
    mul.s	$f15,$f8,$f9
    # Line 577
    lwc1	$f16,136($a1)
    # Line 578
    mul.s	$f17,$f12,$f9
    # Line 579
    and	$t8,$t8,$t9
    # Line 580
    sub.s	$f18,$f14,$f13
    # Line 582
    sd	$v1,8328($t1)
    # Line 584
    sub.s	$f19,$f16,$f13
    # Line 586
    sd	$a2,8336($t1)
    # Line 588
    mul.s	$f1,$f10,$f9
    # Line 589
    mtc1	$a7,$f0
    # Line 590
    mul.s	$f2,$f11,$f9
    # Line 591
    lwc1	$f3,128($t2)
    # Line 592
    mul.s	$f4,$f18,$f15
    # Line 593
    lwc1	$f5,132($t2)
    # Line 594
    mul.s	$f6,$f19,$f17
    # Line 595
    mtc1	$t8,$f7
    # Line 596
    sub.s	$f0,$f0,$f3
    # Line 597
    sw	$ra,32096($a0)
    # Line 598
    sub.s	$f8,$f7,$f5
    # Line 600
    msub.s	$f9,$f4,$f19,$f1
    # Line 601
    lwc1	$f10,32024($a0)
    # Line 602
    msub.s	$f11,$f6,$f18,$f2
    # Line 603
    lw	$a3,28072($a0)
    # Line 604
    mul.s	$f12,$f9,$f10
    # Line 605
    lwc1	$f13,136($t2)
    # Line 606
    mul.s	$f14,$f11,$f10
    # Line 608
    madd.s	$f13,$f13,$f9,$f0
    # Line 609
    lw	$t0,8($a3)
    # Line 610
    trunc.l.s	$f12,$f12
    # Line 611
    lw	$t3,30436($a0)
    # Line 612
    trunc.l.s	$f14,$f14
    # Line 613
    addiu	$a5,$a0,32767
    lw	$a5,125($a5)
    # Line 614
    madd.s	$f13,$f13,$f11,$f8
    # Line 615
    andi	$a5,$a5,0x2
    # Line 616
    andi	$t3,$t3,0x1
    # Line 618
    sdc1	$f12,8656($t1)
    # Line 620
    mul.s	$f13,$f13,$f10
    # Line 622
    sdc1	$f14,8664($t1)
    # Line 624
    lwc1	$f15,0($t0)
    # Line 625
    lwc1	$f16,4($t0)
    # Line 626
    trunc.l.s	$f13,$f13
    # Line 627
    lwc1	$f17,8($t0)
    # Line 628
    bnez	$a5,.L0d936688
    # Line 629
    lwc1	$f18,12($t0)
    # Line 630
    beqz	$t3,.L0d936674
    # Line 632
    sdc1	$f13,8648($t1)
    # Line 634
    trunc.w.s	$f15,$f15
    # Line 635
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 636
    trunc.w.s	$f16,$f16
    # Line 637
    trunc.w.s	$f17,$f17
    # Line 638
    trunc.w.s	$f18,$f18
    # Line 639
    mfc1	$v1,$f15
    # Line 640
    mfc1	$a0,$f16
    # Line 641
    mfc1	$a1,$f17
    # Line 642
    mfc1	$a2,$f18
    # Line 643
    sll	$v1,$v1,0x18
    # Line 644
    sll	$a0,$a0,0x10
    # Line 645
    sll	$a1,$a1,0x8
    # Line 646
    or	$a2,$a2,$v1
    # Line 647
    or	$a2,$a2,$a0
    # Line 648
    or	$a2,$a2,$a1
    # Line 649
    jr	$ra
    # Line 651
    sw	$a2,10448($t1)
.L0d936674:
    # Line 655
    trunc.w.s	$f15,$f15
    # Line 656
    addiu	$at,$a0,32767
    sw	$zero,129($at)
    # Line 657
    jr	$ra
    # Line 659
    swc1	$f15,10448($t1)
.L0d936688:
    # Line 663
    jr	$ra
    # Line 665
    sdc1	$f13,10696($t1)
.end __glCrmFlatZTriangle

# Function: __glCrmSmoothCITriangle
# Declared: Line 682 (Source lines: 682-775)
# Address: 0x0d936690 - 0x0d9367b8 (Size: 296 bytes, Frame: 0)
.globl __glCrmSmoothCITriangle
.ent __glCrmSmoothCITriangle
__glCrmSmoothCITriangle:
    # Line 682
    lwc1	$f19,30176($a0)
    # Line 683
    lwc1	$f0,30188($a0)
    # Line 684
    lwc1	$f1,30192($a0)
    # Line 685
    recip.s	$f2,$f19
    # Line 686
    lwc1	$f3,30180($a0)
    # Line 687
    lwc1	$f4,30184($a0)
    # Line 689
    lw	$t0,30180($a0)
    # Line 690
    lw	$t1,8($a1)
    # Line 691
    lw	$t2,8($a2)
    # Line 692
    lw	$t3,8($a3)
    # Line 693
    bnez	$a4,.L0d9366dc
    # Line 694
    lw	$a4,32184($a0)
    # Line 695
    bgez	$t0,.L0d9366d0
    # Line 696
    lui	$a5,0x1
    # Line 697
    b	.L0d9366f4
    # Line 698
    move	$a6,$a3
.L0d9366d0:
    # Line 700
    lui	$a5,0x3
    # Line 701
    b	.L0d9366f4
    # Line 702
    move	$a6,$a1
.L0d9366dc:
    # Line 704
    bgez	$t0,.L0d9366ec
    # Line 705
    lui	$a5,0x2
    # Line 706
    b	.L0d9366f4
    # Line 707
    move	$a6,$a1
.L0d9366ec:
    # Line 709
    lui	$a5,0x0
    # Line 710
    move	$a6,$a3
.L0d9366f4:
    # Line 713
    lw	$a7,32104($a0)
    # Line 714
    lw	$t8,128($a6)
    # Line 715
    lw	$t9,132($a6)
    # Line 716
    or	$a7,$a7,$a5
    # Line 718
    sw	$a7,8288($a4)
    # Line 720
    sw	$ra,32096($a0)
    # Line 721
    li	$v0,-64
    # Line 722
    and	$t8,$t8,$v0
    # Line 723
    and	$t9,$t9,$v0
    # Line 724
    ldc1	$f5,128($a1)
    # Line 725
    ldc1	$f6,128($a2)
    # Line 727
    sdc1	$f5,8320($a4)
    # Line 729
    lwc1	$f7,0($t3)
    # Line 730
    lwc1	$f8,0($t2)
    # Line 732
    sdc1	$f6,8328($a4)
    # Line 734
    mul.s	$f9,$f0,$f2
    # Line 735
    lwc1	$f10,0($t1)
    # Line 736
    mul.s	$f11,$f4,$f2
    # Line 737
    ldc1	$f12,128($a3)
    # Line 738
    sub.s	$f13,$f8,$f7
    # Line 739
    sub.s	$f14,$f10,$f7
    # Line 741
    sdc1	$f12,8336($a4)
    # Line 743
    mul.s	$f15,$f1,$f2
    # Line 744
    mtc1	$t8,$f16
    # Line 745
    mul.s	$f17,$f3,$f2
    # Line 746
    lwc1	$f18,128($a6)
    # Line 747
    mul.s	$f19,$f13,$f9
    # Line 748
    lwc1	$f0,132($a6)
    # Line 749
    mul.s	$f1,$f14,$f11
    # Line 750
    mtc1	$t9,$f2
    # Line 751
    sub.s	$f3,$f16,$f18
    # Line 752
    lw	$v1,8($a6)
    # Line 753
    sub.s	$f4,$f2,$f0
    # Line 754
    msub.s	$f5,$f19,$f14,$f15
    # Line 755
    lwc1	$f6,32016($a0)
    # Line 756
    msub.s	$f7,$f1,$f13,$f17
    # Line 757
    mul.s	$f8,$f5,$f6
    # Line 758
    lwc1	$f9,0($v1)
    # Line 759
    mul.s	$f10,$f7,$f6
    # Line 761
    madd.s	$f9,$f9,$f5,$f3
    # Line 762
    trunc.w.s	$f8,$f8
    # Line 763
    trunc.w.s	$f10,$f10
    # Line 764
    madd.s	$f9,$f9,$f7,$f4
    # Line 766
    swc1	$f8,8452($a4)
    # Line 768
    mul.s	$f9,$f9,$f6
    # Line 770
    swc1	$f10,8460($a4)
    # Line 772
    trunc.w.s	$f9,$f9
    # Line 773
    jr	$ra
    # Line 775
    swc1	$f9,10476($a4)
.end __glCrmSmoothCITriangle

# Function: __glCrmSmoothRGBTriangle
# Declared: Line 790 (Source lines: 790-930)
# Address: 0x0d9367b8 - 0x0d936978 (Size: 448 bytes, Frame: 0)
.globl __glCrmSmoothRGBTriangle
.ent __glCrmSmoothRGBTriangle
__glCrmSmoothRGBTriangle:
    # Line 790
    lwc1	$f11,30176($a0)
    # Line 791
    lwc1	$f12,30188($a0)
    # Line 792
    lwc1	$f13,30192($a0)
    # Line 793
    recip.s	$f14,$f11
    # Line 794
    lwc1	$f15,30180($a0)
    # Line 795
    lwc1	$f16,30184($a0)
    # Line 796
    lw	$t0,30180($a0)
    # Line 797
    lw	$t1,8($a1)
    # Line 798
    lw	$t2,8($a2)
    # Line 799
    lw	$t3,8($a3)
    # Line 800
    bgez	$t0,.L0d9367fc
    # Line 801
    move	$a5,$a1
    # Line 802
    lui	$a6,0x202
    # Line 803
    lui	$a7,0x201
    # Line 804
    movn	$a7,$a6,$a4
    # Line 805
    b	.L0d93680c
    # Line 806
    movz	$a5,$a3,$a4
.L0d9367fc:
    # Line 808
    lui	$t8,0x200
    # Line 809
    lui	$a7,0x203
    # Line 810
    movn	$a7,$t8,$a4
    # Line 811
    movn	$a5,$a3,$a4
.L0d93680c:
    # Line 814
    lwc1	$f17,0($t3)
    # Line 815
    lwc1	$f18,0($t2)
    # Line 816
    lwc1	$f19,0($t1)
    # Line 817
    lwc1	$f0,4($t2)
    # Line 818
    lwc1	$f1,4($t3)
    # Line 819
    sub.s	$f18,$f18,$f17
    # Line 820
    lwc1	$f2,4($t1)
    # Line 821
    sub.s	$f19,$f19,$f17
    # Line 822
    lw	$t9,32184($a0)
    # Line 823
    sub.s	$f0,$f0,$f1
    # Line 824
    lwc1	$f3,132($a5)
    # Line 825
    sub.s	$f2,$f2,$f1
    # Line 826
    lwc1	$f4,128($a5)
    # Line 827
    mul.s	$f5,$f12,$f14
    # Line 829
    sw	$a7,8288($t9)
    # Line 831
    mul.s	$f6,$f16,$f14
    # Line 832
    ld	$v0,128($a1)
    # Line 833
    mul.s	$f7,$f13,$f14
    # Line 834
    lw	$v1,128($a5)
    # Line 835
    mul.s	$f8,$f15,$f14
    # Line 836
    lw	$a1,132($a5)
    # Line 837
    mul.s	$f9,$f18,$f5
    # Line 838
    li	$t0,-64
    # Line 839
    mul.s	$f10,$f19,$f6
    # Line 841
    sd	$v0,8320($t9)
    # Line 843
    mul.s	$f11,$f0,$f5
    # Line 844
    and	$v1,$v1,$t0
    # Line 845
    mul.s	$f12,$f2,$f6
    # Line 846
    ld	$a4,128($a2)
    # Line 847
    msub.s	$f9,$f9,$f19,$f7
    # Line 848
    and	$a1,$a1,$t0
    # Line 849
    msub.s	$f10,$f10,$f18,$f8
    # Line 850
    lwc1	$f13,32016($a0)
    # Line 851
    msub.s	$f11,$f11,$f2,$f7
    # Line 852
    mtc1	$v1,$f14
    # Line 853
    msub.s	$f12,$f12,$f0,$f8
    # Line 854
    mtc1	$a1,$f15
    # Line 855
    mul.s	$f16,$f9,$f13
    # Line 857
    sd	$a4,8328($t9)
    # Line 859
    mul.s	$f17,$f10,$f13
    # Line 860
    lw	$a6,8($a5)
    # Line 861
    sub.s	$f4,$f14,$f4
    # Line 862
    ld	$a7,128($a3)
    # Line 863
    sub.s	$f3,$f15,$f3
    # Line 864
    lwc1	$f18,0($a6)
    # Line 865
    mul.s	$f19,$f11,$f13
    # Line 866
    sw	$ra,32096($a0)
    # Line 867
    mul.s	$f0,$f12,$f13
    # Line 869
    sd	$a7,8336($t9)
    # Line 871
    madd.s	$f18,$f18,$f9,$f4
    # Line 872
    lwc1	$f1,4($a6)
    # Line 873
    trunc.w.s	$f16,$f16
    # Line 875
    trunc.w.s	$f17,$f17
    # Line 876
    madd.s	$f1,$f1,$f11,$f4
    # Line 877
    lwc1	$f2,8($t2)
    # Line 878
    madd.s	$f18,$f18,$f10,$f3
    # Line 879
    lwc1	$f9,8($t3)
    # Line 880
    trunc.w.s	$f19,$f19
    # Line 882
    swc1	$f16,8432($t9)
    # Line 884
    trunc.w.s	$f0,$f0
    # Line 886
    swc1	$f17,8440($t9)
    # Line 888
    madd.s	$f1,$f1,$f12,$f3
    # Line 889
    lwc1	$f10,8($t1)
    # Line 890
    sub.s	$f11,$f2,$f9
    # Line 891
    sub.s	$f12,$f10,$f9
    # Line 892
    mul.s	$f18,$f18,$f13
    # Line 894
    swc1	$f19,8436($t9)
    # Line 896
    mul.s	$f1,$f1,$f13
    # Line 898
    swc1	$f0,8444($t9)
    # Line 900
    mul.s	$f14,$f11,$f5
    # Line 901
    mul.s	$f15,$f12,$f6
    # Line 902
    trunc.w.s	$f18,$f18
    # Line 903
    trunc.w.s	$f1,$f1
    # Line 904
    msub.s	$f14,$f14,$f12,$f7
    # Line 905
    lwc1	$f16,8($a6)
    # Line 906
    msub.s	$f15,$f15,$f11,$f8
    # Line 908
    swc1	$f18,8416($t9)
    # Line 910
    mul.s	$f17,$f14,$f13
    # Line 912
    swc1	$f1,8420($t9)
    # Line 914
    mul.s	$f18,$f15,$f13
    # Line 915
    madd.s	$f16,$f16,$f14,$f4
    # Line 916
    trunc.w.s	$f17,$f17
    # Line 917
    trunc.w.s	$f18,$f18
    # Line 918
    lwc1	$f19,32016($a0)
    # Line 919
    madd.s	$f16,$f16,$f15,$f3
    # Line 921
    swc1	$f17,8448($t9)
    # Line 924
    swc1	$f18,8456($t9)
    # Line 926
    mul.s	$f16,$f16,$f19
    # Line 927
    trunc.w.s	$f16,$f16
    # Line 928
    jr	$ra
    # Line 930
    swc1	$f16,10472($t9)
.end __glCrmSmoothRGBTriangle

# Function: __glCrmSmoothRGBATriangle
# Declared: Line 946 (Source lines: 946-1115)
# Address: 0x0d936978 - 0x0d936b94 (Size: 540 bytes, Frame: 0)
.globl __glCrmSmoothRGBATriangle
.ent __glCrmSmoothRGBATriangle
__glCrmSmoothRGBATriangle:
    # Line 946
    lwc1	$f0,30176($a0)
    # Line 947
    lwc1	$f1,30188($a0)
    # Line 948
    lwc1	$f2,30192($a0)
    # Line 949
    recip.s	$f3,$f0
    # Line 950
    lwc1	$f4,30180($a0)
    # Line 951
    lwc1	$f5,30184($a0)
    # Line 952
    lw	$t3,30180($a0)
    # Line 953
    lw	$a5,8($a1)
    # Line 954
    lw	$a6,8($a2)
    # Line 955
    lw	$a7,8($a3)
    # Line 956
    bgez	$t3,.L0d9369bc
    # Line 957
    move	$t8,$a1
    # Line 958
    lui	$t9,0x202
    # Line 959
    lui	$v0,0x201
    # Line 960
    movn	$v0,$t9,$a4
    # Line 961
    b	.L0d9369cc
    # Line 962
    movz	$t8,$a3,$a4
.L0d9369bc:
    # Line 964
    lui	$v1,0x200
    # Line 965
    lui	$v0,0x203
    # Line 966
    movn	$v0,$v1,$a4
    # Line 967
    movn	$t8,$a3,$a4
.L0d9369cc:
    # Line 970
    lwc1	$f6,0($a7)
    # Line 971
    lwc1	$f7,0($a6)
    # Line 972
    lwc1	$f8,0($a5)
    # Line 973
    lwc1	$f9,4($a6)
    # Line 974
    lwc1	$f10,4($a7)
    # Line 975
    sub.s	$f7,$f7,$f6
    # Line 976
    lwc1	$f11,4($a5)
    # Line 977
    sub.s	$f8,$f8,$f6
    # Line 978
    lw	$t0,32184($a0)
    # Line 979
    sub.s	$f9,$f9,$f10
    # Line 980
    lwc1	$f12,132($t8)
    # Line 981
    sub.s	$f11,$f11,$f10
    # Line 982
    lwc1	$f13,128($t8)
    # Line 983
    mul.s	$f14,$f1,$f3
    # Line 985
    sw	$v0,8288($t0)
    # Line 987
    mul.s	$f15,$f5,$f3
    # Line 988
    ld	$t1,128($a1)
    # Line 989
    mul.s	$f16,$f2,$f3
    # Line 990
    lw	$t2,128($t8)
    # Line 991
    mul.s	$f17,$f4,$f3
    # Line 992
    lw	$t3,132($t8)
    # Line 993
    mul.s	$f18,$f7,$f14
    # Line 994
    li	$a4,-64
    # Line 995
    mul.s	$f19,$f8,$f15
    # Line 997
    sd	$t1,8320($t0)
    # Line 999
    mul.s	$f0,$f9,$f14
    # Line 1000
    and	$t2,$t2,$a4
    # Line 1001
    mul.s	$f1,$f11,$f15
    # Line 1002
    ld	$t9,128($a2)
    # Line 1003
    msub.s	$f18,$f18,$f8,$f16
    # Line 1004
    and	$t3,$t3,$a4
    # Line 1005
    msub.s	$f19,$f19,$f7,$f17
    # Line 1006
    lwc1	$f2,32016($a0)
    # Line 1007
    msub.s	$f0,$f0,$f11,$f16
    # Line 1008
    mtc1	$t2,$f3
    # Line 1009
    msub.s	$f1,$f1,$f9,$f17
    # Line 1010
    mtc1	$t3,$f4
    # Line 1011
    mul.s	$f5,$f18,$f2
    # Line 1013
    sd	$t9,8328($t0)
    # Line 1015
    mul.s	$f6,$f19,$f2
    # Line 1016
    lw	$v0,8($t8)
    # Line 1017
    sub.s	$f13,$f3,$f13
    # Line 1018
    ld	$v1,128($a3)
    # Line 1019
    sub.s	$f12,$f4,$f12
    # Line 1020
    lwc1	$f7,0($v0)
    # Line 1021
    mul.s	$f8,$f0,$f2
    # Line 1022
    sw	$ra,32096($a0)
    # Line 1023
    mul.s	$f9,$f1,$f2
    # Line 1025
    sd	$v1,8336($t0)
    # Line 1027
    madd.s	$f7,$f7,$f18,$f13
    # Line 1028
    lwc1	$f10,4($v0)
    # Line 1029
    trunc.w.s	$f5,$f5
    # Line 1031
    trunc.w.s	$f6,$f6
    # Line 1032
    madd.s	$f10,$f10,$f0,$f13
    # Line 1033
    lwc1	$f11,8($a6)
    # Line 1034
    madd.s	$f7,$f7,$f19,$f12
    # Line 1035
    lwc1	$f18,8($a7)
    # Line 1036
    trunc.w.s	$f8,$f8
    # Line 1038
    swc1	$f5,8432($t0)
    # Line 1040
    trunc.w.s	$f9,$f9
    # Line 1042
    swc1	$f6,8440($t0)
    # Line 1044
    madd.s	$f10,$f10,$f1,$f12
    # Line 1045
    lwc1	$f19,8($a5)
    # Line 1046
    mul.s	$f7,$f7,$f2
    # Line 1047
    sub.s	$f11,$f11,$f18
    # Line 1048
    lwc1	$f0,12($a6)
    # Line 1049
    sub.s	$f19,$f19,$f18
    # Line 1051
    swc1	$f8,8436($t0)
    # Line 1053
    mul.s	$f10,$f10,$f2
    # Line 1055
    swc1	$f9,8444($t0)
    # Line 1057
    trunc.w.s	$f7,$f7
    # Line 1058
    lwc1	$f1,12($a7)
    # Line 1059
    mul.s	$f2,$f11,$f14
    # Line 1060
    lwc1	$f3,12($a5)
    # Line 1061
    mul.s	$f4,$f19,$f15
    # Line 1062
    sub.s	$f0,$f0,$f1
    # Line 1063
    sub.s	$f3,$f3,$f1
    # Line 1065
    swc1	$f7,8416($t0)
    # Line 1067
    trunc.w.s	$f10,$f10
    # Line 1068
    lwc1	$f5,32016($a0)
    # Line 1069
    msub.s	$f2,$f2,$f19,$f16
    # Line 1070
    msub.s	$f4,$f4,$f11,$f17
    # Line 1071
    mul.s	$f6,$f0,$f14
    # Line 1072
    lwc1	$f7,8($v0)
    # Line 1073
    mul.s	$f8,$f3,$f15
    # Line 1075
    swc1	$f10,8420($t0)
    # Line 1077
    mul.s	$f9,$f2,$f5
    # Line 1078
    mul.s	$f10,$f4,$f5
    # Line 1079
    madd.s	$f7,$f7,$f2,$f13
    # Line 1080
    msub.s	$f6,$f6,$f3,$f16
    # Line 1081
    msub.s	$f8,$f8,$f0,$f17
    # Line 1082
    lwc1	$f11,12($v0)
    # Line 1083
    trunc.w.s	$f9,$f9
    # Line 1084
    trunc.w.s	$f10,$f10
    # Line 1085
    madd.s	$f7,$f7,$f4,$f12
    # Line 1086
    madd.s	$f11,$f11,$f6,$f13
    # Line 1087
    lwc1	$f13,32016($a0)
    # Line 1088
    mul.s	$f14,$f6,$f5
    # Line 1090
    swc1	$f9,8448($t0)
    # Line 1092
    mul.s	$f15,$f8,$f5
    # Line 1093
    mul.s	$f7,$f7,$f13
    # Line 1095
    swc1	$f10,8456($t0)
    # Line 1097
    madd.s	$f11,$f11,$f8,$f12
    # Line 1098
    lwc1	$f16,32016($a0)
    # Line 1099
    trunc.w.s	$f14,$f14
    # Line 1100
    trunc.w.s	$f15,$f15
    # Line 1101
    trunc.w.s	$f7,$f7
    # Line 1103
    swc1	$f14,8452($t0)
    # Line 1105
    mul.s	$f11,$f11,$f16
    # Line 1107
    swc1	$f15,8460($t0)
    # Line 1109
    trunc.w.s	$f11,$f11
    # Line 1111
    swc1	$f7,8424($t0)
    # Line 1113
    jr	$ra
    # Line 1115
    swc1	$f11,10476($t0)
.end __glCrmSmoothRGBATriangle

# Function: __glCrmSmoothCIZTriangle
# Declared: Line 1130 (Source lines: 1130-1250)
# Address: 0x0d936b94 - 0x0d936d14 (Size: 384 bytes, Frame: 0)
.globl __glCrmSmoothCIZTriangle
.ent __glCrmSmoothCIZTriangle
__glCrmSmoothCIZTriangle:
    # Line 1130
    lwc1	$f17,30176($a0)
    # Line 1131
    lwc1	$f18,30188($a0)
    # Line 1132
    lwc1	$f19,30192($a0)
    # Line 1133
    recip.s	$f0,$f17
    # Line 1134
    lwc1	$f1,30180($a0)
    # Line 1135
    lwc1	$f2,30184($a0)
    # Line 1136
    lw	$v0,30180($a0)
    # Line 1137
    lw	$v1,8($a1)
    # Line 1138
    lw	$t0,8($a2)
    # Line 1139
    lw	$t1,8($a3)
    # Line 1140
    bnez	$a4,.L0d936be0
    # Line 1141
    lw	$t2,32184($a0)
    # Line 1142
    bgez	$v0,.L0d936bd4
    # Line 1143
    lui	$t3,0x1
    # Line 1144
    b	.L0d936bf8
    # Line 1145
    move	$a4,$a3
.L0d936bd4:
    # Line 1147
    lui	$t3,0x3
    # Line 1148
    b	.L0d936bf8
    # Line 1149
    move	$a4,$a1
.L0d936be0:
    # Line 1151
    bgez	$v0,.L0d936bf0
    # Line 1152
    lui	$t3,0x2
    # Line 1153
    b	.L0d936bf8
    # Line 1154
    move	$a4,$a1
.L0d936bf0:
    # Line 1156
    lui	$t3,0x0
    # Line 1157
    move	$a4,$a3
.L0d936bf8:
    # Line 1160
    lw	$a5,32104($a0)
    # Line 1161
    lw	$a6,128($a4)
    # Line 1162
    lw	$a7,132($a4)
    # Line 1163
    or	$a5,$a5,$t3
    # Line 1165
    sw	$a5,8288($t2)
    # Line 1167
    sw	$ra,32096($a0)
    # Line 1168
    mul.s	$f3,$f18,$f0
    # Line 1169
    li	$t8,-64
    # Line 1170
    mul.s	$f4,$f19,$f0
    # Line 1171
    lwc1	$f5,128($a4)
    # Line 1172
    mul.s	$f6,$f1,$f0
    # Line 1173
    lwc1	$f7,132($a4)
    # Line 1174
    mul.s	$f8,$f2,$f0
    # Line 1175
    and	$a6,$a6,$t8
    # Line 1176
    and	$a7,$a7,$t8
    # Line 1177
    mtc1	$a6,$f9
    # Line 1178
    mtc1	$a7,$f10
    # Line 1179
    lwc1	$f11,0($t1)
    # Line 1180
    lwc1	$f12,136($a3)
    # Line 1181
    sub.s	$f13,$f9,$f5
    # Line 1182
    lwc1	$f14,0($t0)
    # Line 1183
    sub.s	$f15,$f10,$f7
    # Line 1184
    lwc1	$f16,0($v1)
    # Line 1185
    sub.s	$f17,$f14,$f11
    # Line 1186
    lwc1	$f18,136($a2)
    # Line 1187
    sub.s	$f19,$f16,$f11
    # Line 1188
    lwc1	$f0,136($a1)
    # Line 1189
    sub.s	$f1,$f18,$f12
    # Line 1190
    ld	$t9,128($a1)
    # Line 1191
    sub.s	$f2,$f0,$f12
    # Line 1192
    mul.s	$f5,$f17,$f3
    # Line 1193
    lw	$v0,8($a4)
    # Line 1194
    mul.s	$f7,$f19,$f8
    # Line 1196
    sd	$t9,8320($t2)
    # Line 1198
    mul.s	$f9,$f1,$f3
    # Line 1199
    mul.s	$f10,$f2,$f8
    # Line 1200
    lwc1	$f11,32016($a0)
    # Line 1201
    msub.s	$f12,$f5,$f19,$f4
    # Line 1202
    ld	$v1,128($a2)
    # Line 1203
    msub.s	$f14,$f7,$f17,$f6
    # Line 1204
    msub.s	$f16,$f9,$f2,$f4
    # Line 1206
    sd	$v1,8328($t2)
    # Line 1208
    msub.s	$f17,$f10,$f1,$f6
    # Line 1209
    lwc1	$f18,32024($a0)
    # Line 1210
    mul.s	$f19,$f12,$f11
    # Line 1211
    mul.s	$f1,$f14,$f11
    # Line 1212
    lwc1	$f2,0($v0)
    # Line 1213
    mul.s	$f3,$f16,$f18
    # Line 1214
    lwc1	$f0,136($a4)
    # Line 1215
    mul.s	$f4,$f17,$f18
    # Line 1216
    ld	$a0,128($a3)
    # Line 1217
    madd.s	$f2,$f2,$f12,$f13
    # Line 1218
    madd.s	$f0,$f0,$f16,$f13
    # Line 1220
    sd	$a0,8336($t2)
    # Line 1222
    trunc.w.s	$f19,$f19
    # Line 1223
    trunc.w.s	$f1,$f1
    # Line 1225
    madd.s	$f2,$f2,$f14,$f15
    # Line 1226
    madd.s	$f0,$f0,$f17,$f15
    # Line 1227
    trunc.l.s	$f3,$f3
    # Line 1229
    swc1	$f19,8452($t2)
    # Line 1231
    trunc.l.s	$f4,$f4
    # Line 1233
    swc1	$f1,8460($t2)
    # Line 1235
    mul.s	$f2,$f2,$f11
    # Line 1236
    mul.s	$f0,$f0,$f18
    # Line 1237
    trunc.w.s	$f2,$f2
    # Line 1239
    sdc1	$f3,8656($t2)
    # Line 1241
    trunc.l.s	$f0,$f0
    # Line 1243
    sdc1	$f4,8664($t2)
    # Line 1246
    swc1	$f2,8428($t2)
    # Line 1248
    jr	$ra
    # Line 1250
    sdc1	$f0,10696($t2)
.end __glCrmSmoothCIZTriangle

# Function: __glCrmSmoothRGBZTriangle
# Declared: Line 1267 (Source lines: 1267-1434)
# Address: 0x0d936d14 - 0x0d936f2c (Size: 536 bytes, Frame: 0)
.globl __glCrmSmoothRGBZTriangle
.ent __glCrmSmoothRGBZTriangle
__glCrmSmoothRGBZTriangle:
    # Line 1267
    lwc1	$f5,30176($a0)
    # Line 1268
    lwc1	$f6,30188($a0)
    # Line 1269
    lwc1	$f7,30192($a0)
    # Line 1270
    recip.s	$f8,$f5
    # Line 1271
    lwc1	$f9,30180($a0)
    # Line 1272
    lwc1	$f10,30184($a0)
    # Line 1273
    lw	$a5,30180($a0)
    # Line 1274
    lw	$a6,8($a1)
    # Line 1275
    lw	$a7,8($a2)
    # Line 1276
    lw	$t8,8($a3)
    # Line 1277
    bgez	$a5,.L0d936d58
    # Line 1278
    move	$t9,$a1
    # Line 1279
    lui	$v0,0x202
    # Line 1280
    lui	$v1,0x201
    # Line 1281
    movn	$v1,$v0,$a4
    # Line 1282
    b	.L0d936d68
    # Line 1283
    movz	$t9,$a3,$a4
.L0d936d58:
    # Line 1285
    lui	$t0,0x200
    # Line 1286
    lui	$v1,0x203
    # Line 1287
    movn	$v1,$t0,$a4
    # Line 1288
    movn	$t9,$a3,$a4
.L0d936d68:
    # Line 1290
    lwc1	$f11,0($t8)
    # Line 1291
    lwc1	$f12,0($a7)
    # Line 1292
    lwc1	$f13,0($a6)
    # Line 1293
    lwc1	$f14,4($a7)
    # Line 1294
    lwc1	$f15,4($t8)
    # Line 1295
    sub.s	$f12,$f12,$f11
    # Line 1296
    lwc1	$f16,4($a6)
    # Line 1297
    sub.s	$f13,$f13,$f11
    # Line 1298
    lw	$t1,32184($a0)
    # Line 1299
    sub.s	$f17,$f14,$f15
    # Line 1300
    lwc1	$f18,132($t9)
    # Line 1301
    sub.s	$f19,$f16,$f15
    # Line 1302
    lwc1	$f0,128($t9)
    # Line 1303
    mul.s	$f1,$f6,$f8
    # Line 1305
    sw	$v1,8288($t1)
    # Line 1307
    mul.s	$f2,$f10,$f8
    # Line 1308
    ld	$t2,128($a1)
    # Line 1309
    mul.s	$f3,$f7,$f8
    # Line 1310
    lw	$t3,128($t9)
    # Line 1311
    mul.s	$f4,$f9,$f8
    # Line 1312
    lw	$a4,132($t9)
    # Line 1313
    mul.s	$f5,$f12,$f1
    # Line 1314
    li	$a5,-64
    # Line 1315
    mul.s	$f6,$f13,$f2
    # Line 1317
    sd	$t2,8320($t1)
    # Line 1319
    mul.s	$f7,$f17,$f1
    # Line 1320
    and	$t3,$t3,$a5
    # Line 1321
    mul.s	$f8,$f19,$f2
    # Line 1322
    ld	$v0,128($a2)
    # Line 1323
    msub.s	$f5,$f5,$f13,$f3
    # Line 1324
    and	$a4,$a4,$a5
    # Line 1325
    msub.s	$f6,$f6,$f12,$f4
    # Line 1326
    lwc1	$f9,32016($a0)
    # Line 1327
    msub.s	$f7,$f7,$f19,$f3
    # Line 1328
    mtc1	$t3,$f10
    # Line 1329
    msub.s	$f8,$f8,$f17,$f4
    # Line 1330
    mtc1	$a4,$f11
    # Line 1331
    mul.s	$f12,$f5,$f9
    # Line 1333
    sd	$v0,8328($t1)
    # Line 1335
    mul.s	$f13,$f6,$f9
    # Line 1336
    lw	$v1,8($t9)
    # Line 1337
    sub.s	$f0,$f10,$f0
    # Line 1338
    ld	$t0,128($a3)
    # Line 1339
    sub.s	$f18,$f11,$f18
    # Line 1340
    lwc1	$f14,0($v1)
    # Line 1341
    mul.s	$f15,$f7,$f9
    # Line 1342
    sw	$ra,32096($a0)
    # Line 1343
    mul.s	$f16,$f8,$f9
    # Line 1345
    sd	$t0,8336($t1)
    # Line 1347
    madd.s	$f14,$f14,$f5,$f0
    # Line 1348
    lwc1	$f17,4($v1)
    # Line 1349
    trunc.w.s	$f12,$f12
    # Line 1351
    trunc.w.s	$f13,$f13
    # Line 1352
    madd.s	$f17,$f17,$f7,$f0
    # Line 1353
    lwc1	$f19,8($a7)
    # Line 1354
    madd.s	$f14,$f14,$f6,$f18
    # Line 1355
    lwc1	$f5,8($t8)
    # Line 1356
    trunc.w.s	$f15,$f15
    # Line 1358
    swc1	$f12,8432($t1)
    # Line 1360
    trunc.w.s	$f16,$f16
    # Line 1361
    lwc1	$f6,8($a6)
    # Line 1362
    madd.s	$f17,$f17,$f8,$f18
    # Line 1363
    lwc1	$f7,136($a3)
    # Line 1364
    mul.s	$f14,$f14,$f9
    # Line 1366
    swc1	$f13,8440($t1)
    # Line 1368
    sub.s	$f19,$f19,$f5
    # Line 1369
    lwc1	$f8,136($a2)
    # Line 1370
    sub.s	$f6,$f6,$f5
    # Line 1372
    swc1	$f15,8436($t1)
    # Line 1374
    mul.s	$f17,$f17,$f9
    # Line 1376
    swc1	$f16,8444($t1)
    # Line 1378
    trunc.w.s	$f14,$f14
    # Line 1379
    lwc1	$f9,136($a1)
    # Line 1380
    mul.s	$f10,$f19,$f1
    # Line 1381
    mul.s	$f11,$f6,$f2
    # Line 1382
    trunc.w.s	$f17,$f17
    # Line 1383
    sub.s	$f12,$f8,$f7
    # Line 1385
    swc1	$f14,8416($t1)
    # Line 1387
    sub.s	$f13,$f9,$f7
    # Line 1388
    lwc1	$f14,32016($a0)
    # Line 1389
    msub.s	$f10,$f10,$f6,$f3
    # Line 1390
    msub.s	$f11,$f11,$f19,$f4
    # Line 1391
    mul.s	$f15,$f12,$f1
    # Line 1392
    lwc1	$f16,8($v1)
    # Line 1393
    mul.s	$f19,$f13,$f2
    # Line 1395
    swc1	$f17,8420($t1)
    # Line 1397
    mul.s	$f1,$f10,$f14
    # Line 1398
    mul.s	$f2,$f11,$f14
    # Line 1399
    madd.s	$f16,$f16,$f10,$f0
    # Line 1400
    msub.s	$f15,$f15,$f13,$f3
    # Line 1401
    lwc1	$f3,136($t9)
    # Line 1402
    msub.s	$f19,$f19,$f12,$f4
    # Line 1403
    trunc.w.s	$f1,$f1
    # Line 1404
    trunc.w.s	$f2,$f2
    # Line 1405
    lwc1	$f4,32024($a0)
    # Line 1406
    madd.s	$f3,$f3,$f15,$f0
    # Line 1407
    madd.s	$f16,$f16,$f11,$f18
    # Line 1409
    swc1	$f1,8448($t1)
    # Line 1411
    mul.s	$f5,$f15,$f4
    # Line 1413
    swc1	$f2,8456($t1)
    # Line 1415
    mul.s	$f6,$f19,$f4
    # Line 1416
    madd.s	$f3,$f3,$f19,$f18
    # Line 1417
    mul.s	$f16,$f16,$f14
    # Line 1418
    trunc.l.s	$f5,$f5
    # Line 1419
    trunc.l.s	$f6,$f6
    # Line 1420
    mul.s	$f3,$f3,$f4
    # Line 1421
    trunc.w.s	$f16,$f16
    # Line 1423
    sdc1	$f5,8656($t1)
    # Line 1425
    trunc.l.s	$f3,$f3
    # Line 1427
    sdc1	$f6,8664($t1)
    # Line 1430
    swc1	$f16,8424($t1)
    # Line 1432
    jr	$ra
    # Line 1434
    sdc1	$f3,10696($t1)
.end __glCrmSmoothRGBZTriangle

# Function: __glCrmSmoothRGBAZTriangle
# Declared: Line 1450 (Source lines: 1450-1648)
# Address: 0x0d936f2c - 0x0d9371a0 (Size: 628 bytes, Frame: 0)
.globl __glCrmSmoothRGBAZTriangle
.ent __glCrmSmoothRGBAZTriangle
__glCrmSmoothRGBAZTriangle:
    # Line 1450
    lwc1	$f7,30176($a0)
    # Line 1451
    lwc1	$f8,30188($a0)
    # Line 1452
    lwc1	$f9,30192($a0)
    # Line 1453
    recip.s	$f10,$f7
    # Line 1454
    lwc1	$f11,30180($a0)
    # Line 1455
    lwc1	$f12,30184($a0)
    # Line 1456
    lw	$t0,30180($a0)
    # Line 1457
    lw	$t1,8($a1)
    # Line 1458
    lw	$t2,8($a2)
    # Line 1459
    lw	$t3,8($a3)
    # Line 1461
    bgez	$t0,.L0d936f70
    # Line 1462
    move	$a5,$a1
    # Line 1463
    lui	$a6,0x202
    # Line 1464
    lui	$a7,0x201
    # Line 1465
    movn	$a7,$a6,$a4
    # Line 1466
    b	.L0d936f80
    # Line 1467
    movz	$a5,$a3,$a4
.L0d936f70:
    # Line 1469
    lui	$t8,0x200
    # Line 1470
    lui	$a7,0x203
    # Line 1471
    movn	$a7,$t8,$a4
    # Line 1472
    movn	$a5,$a3,$a4
.L0d936f80:
    # Line 1475
    lwc1	$f13,0($t3)
    # Line 1476
    lwc1	$f14,0($t2)
    # Line 1477
    lwc1	$f15,0($t1)
    # Line 1478
    lwc1	$f16,4($t2)
    # Line 1479
    lwc1	$f17,4($t3)
    # Line 1480
    sub.s	$f14,$f14,$f13
    # Line 1481
    lwc1	$f18,4($t1)
    # Line 1482
    sub.s	$f15,$f15,$f13
    # Line 1483
    lw	$t9,32184($a0)
    # Line 1484
    sub.s	$f16,$f16,$f17
    # Line 1485
    lwc1	$f19,132($a5)
    # Line 1486
    sub.s	$f18,$f18,$f17
    # Line 1487
    lwc1	$f0,128($a5)
    # Line 1488
    mul.s	$f1,$f8,$f10
    # Line 1490
    sw	$a7,8288($t9)
    # Line 1492
    mul.s	$f2,$f12,$f10
    # Line 1493
    ld	$v0,128($a1)
    # Line 1494
    mul.s	$f3,$f9,$f10
    # Line 1495
    lw	$v1,128($a5)
    # Line 1496
    mul.s	$f4,$f11,$f10
    # Line 1497
    lw	$t0,132($a5)
    # Line 1498
    mul.s	$f5,$f14,$f1
    # Line 1499
    li	$a4,-64
    # Line 1500
    mul.s	$f6,$f15,$f2
    # Line 1502
    sd	$v0,8320($t9)
    # Line 1504
    mul.s	$f7,$f16,$f1
    # Line 1505
    and	$v1,$v1,$a4
    # Line 1506
    mul.s	$f8,$f18,$f2
    # Line 1507
    ld	$a6,128($a2)
    # Line 1508
    msub.s	$f5,$f5,$f15,$f3
    # Line 1509
    and	$t0,$t0,$a4
    # Line 1510
    msub.s	$f6,$f6,$f14,$f4
    # Line 1511
    lwc1	$f9,32016($a0)
    # Line 1512
    msub.s	$f7,$f7,$f18,$f3
    # Line 1513
    mtc1	$v1,$f10
    # Line 1514
    msub.s	$f8,$f8,$f16,$f4
    # Line 1515
    mtc1	$t0,$f11
    # Line 1516
    mul.s	$f12,$f5,$f9
    # Line 1518
    sd	$a6,8328($t9)
    # Line 1520
    mul.s	$f13,$f6,$f9
    # Line 1521
    lw	$a7,8($a5)
    # Line 1522
    sub.s	$f0,$f10,$f0
    # Line 1523
    ld	$t8,128($a3)
    # Line 1524
    sub.s	$f19,$f11,$f19
    # Line 1525
    lwc1	$f14,0($a7)
    # Line 1526
    mul.s	$f15,$f7,$f9
    # Line 1527
    sw	$ra,32096($a0)
    # Line 1528
    mul.s	$f16,$f8,$f9
    # Line 1530
    sd	$t8,8336($t9)
    # Line 1532
    madd.s	$f14,$f14,$f5,$f0
    # Line 1533
    lwc1	$f17,4($a7)
    # Line 1534
    trunc.w.s	$f12,$f12
    # Line 1536
    trunc.w.s	$f13,$f13
    # Line 1537
    madd.s	$f17,$f17,$f7,$f0
    # Line 1538
    lwc1	$f18,8($t2)
    # Line 1539
    madd.s	$f14,$f14,$f6,$f19
    # Line 1540
    lwc1	$f5,8($t3)
    # Line 1541
    trunc.w.s	$f15,$f15
    # Line 1543
    swc1	$f12,8432($t9)
    # Line 1545
    trunc.w.s	$f16,$f16
    # Line 1547
    swc1	$f13,8440($t9)
    # Line 1549
    madd.s	$f17,$f17,$f8,$f19
    # Line 1550
    lwc1	$f6,8($t1)
    # Line 1551
    mul.s	$f14,$f14,$f9
    # Line 1552
    sub.s	$f7,$f18,$f5
    # Line 1553
    lwc1	$f8,12($t2)
    # Line 1554
    sub.s	$f10,$f6,$f5
    # Line 1556
    swc1	$f15,8436($t9)
    # Line 1558
    mul.s	$f17,$f17,$f9
    # Line 1560
    swc1	$f16,8444($t9)
    # Line 1562
    trunc.w.s	$f14,$f14
    # Line 1563
    lwc1	$f11,12($t3)
    # Line 1564
    mul.s	$f12,$f7,$f1
    # Line 1565
    lwc1	$f13,12($t1)
    # Line 1566
    mul.s	$f15,$f10,$f2
    # Line 1567
    sub.s	$f16,$f8,$f11
    # Line 1568
    sub.s	$f18,$f13,$f11
    # Line 1570
    swc1	$f14,8416($t9)
    # Line 1572
    trunc.w.s	$f17,$f17
    # Line 1573
    lwc1	$f5,32016($a0)
    # Line 1574
    msub.s	$f12,$f12,$f10,$f3
    # Line 1575
    msub.s	$f15,$f15,$f7,$f4
    # Line 1576
    mul.s	$f6,$f16,$f1
    # Line 1577
    lwc1	$f7,8($a7)
    # Line 1578
    mul.s	$f8,$f18,$f2
    # Line 1580
    swc1	$f17,8420($t9)
    # Line 1582
    mul.s	$f9,$f12,$f5
    # Line 1583
    mul.s	$f10,$f15,$f5
    # Line 1584
    madd.s	$f7,$f7,$f12,$f0
    # Line 1585
    msub.s	$f6,$f6,$f18,$f3
    # Line 1586
    msub.s	$f8,$f8,$f16,$f4
    # Line 1587
    lwc1	$f11,12($a7)
    # Line 1588
    trunc.w.s	$f9,$f9
    # Line 1589
    trunc.w.s	$f10,$f10
    # Line 1590
    madd.s	$f7,$f7,$f15,$f19
    # Line 1591
    lwc1	$f12,136($a3)
    # Line 1592
    madd.s	$f11,$f11,$f6,$f0
    # Line 1593
    lwc1	$f13,32016($a0)
    # Line 1594
    mul.s	$f14,$f6,$f5
    # Line 1596
    swc1	$f9,8448($t9)
    # Line 1598
    mul.s	$f15,$f8,$f5
    # Line 1599
    lwc1	$f16,136($a2)
    # Line 1600
    mul.s	$f7,$f7,$f13
    # Line 1601
    lwc1	$f17,136($a1)
    # Line 1602
    sub.s	$f18,$f16,$f12
    # Line 1604
    swc1	$f10,8456($t9)
    # Line 1606
    sub.s	$f5,$f17,$f12
    # Line 1607
    madd.s	$f11,$f11,$f8,$f19
    # Line 1608
    trunc.w.s	$f14,$f14
    # Line 1609
    mul.s	$f6,$f18,$f1
    # Line 1610
    lwc1	$f8,32016($a0)
    # Line 1611
    mul.s	$f9,$f5,$f2
    # Line 1612
    trunc.w.s	$f15,$f15
    # Line 1613
    mul.s	$f11,$f11,$f8
    # Line 1615
    swc1	$f14,8452($t9)
    # Line 1617
    msub.s	$f6,$f6,$f5,$f3
    # Line 1618
    lwc1	$f10,32024($a0)
    # Line 1619
    msub.s	$f9,$f9,$f18,$f4
    # Line 1620
    trunc.w.s	$f7,$f7
    # Line 1622
    swc1	$f15,8460($t9)
    # Line 1624
    trunc.w.s	$f11,$f11
    # Line 1625
    lwc1	$f12,136($a5)
    # Line 1626
    mul.s	$f13,$f6,$f10
    # Line 1627
    mul.s	$f14,$f9,$f10
    # Line 1628
    madd.s	$f12,$f12,$f6,$f0
    # Line 1630
    swc1	$f7,8424($t9)
    # Line 1632
    trunc.l.s	$f13,$f13
    # Line 1634
    swc1	$f11,8428($t9)
    # Line 1636
    trunc.l.s	$f14,$f14
    # Line 1637
    madd.s	$f12,$f12,$f9,$f19
    # Line 1639
    sdc1	$f13,8656($t9)
    # Line 1641
    mul.s	$f12,$f12,$f10
    # Line 1643
    sdc1	$f14,8664($t9)
    # Line 1645
    trunc.l.s	$f12,$f12
    # Line 1646
    jr	$ra
    # Line 1648
    sdc1	$f12,10696($t9)
.end __glCrmSmoothRGBAZTriangle

