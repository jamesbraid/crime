# Source: ../CRIME/crm_ctri.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_ctri.c
# Total Functions: 7

.text

# Function: __glCrmFillCheapFogTriangle
# Declared: Line 510 (Source lines: 513-559)
# Address: 0x0d948160 - 0x0d9483bc (Size: 604 bytes, Frame: 160)
.globl __glCrmFillCheapFogTriangle
.ent __glCrmFillCheapFogTriangle
__glCrmFillCheapFogTriangle:
    # Line 518
    lw	$a6,12532($a0)
    lwc1	$f15,176($a1)
    # Line 513
    addiu	$sp,$sp,-160
    sd	$a4,88($sp)
    sd	$s2,136($sp)
    sd	$s1,104($sp)
    sd	$s4,120($sp)
    move	$s1,$a3
    # Line 518
    lw	$s4,30436($a0)
    # Line 513
    move	$s2,$a2
    sd	$s3,112($sp)
    move	$s3,$a1
    sd	$s0,96($sp)
    lui	$v0,0x11
    # Line 518
    dsll32	$at,$s4,0xe
    # Line 513
    move	$s0,$a0
    sd	$ra,144($sp)
    addiu	$v0,$v0,-29652
    sd	$gp,128($sp)
    # Line 518
    bgez	$at,.L0d948364
    # Line 513
    addu	$gp,$t9,$v0
    # Line 522
    move	$t9,$a6
    lw	$a2,8($a1)
    jalr	$t9
    addiu	$a1,$sp,0
    # Line 523
    lw	$t9,12532($s0)
    move	$a0,$s0
    lwc1	$f15,176($s2)
    lw	$a2,8($s2)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 524
    lw	$t9,12532($s0)
    move	$a0,$s0
    lwc1	$f15,176($s1)
    lw	$a2,8($s1)
    jalr	$t9
    addiu	$a1,$sp,32
    # Line 531
    lw	$t1,8($s3)
.L0d9481f8:
    sd	$t1,80($sp)
    # Line 532
    lw	$t0,8($s2)
    sd	$t0,72($sp)
    # Line 533
    lw	$a7,8($s1)
    # Line 534
    sw	$sp,8($s3)
    # Line 535
    addiu	$a6,$sp,16
    sw	$a6,8($s2)
    # Line 540
    lui	$a1,0x1
    # Line 536
    addiu	$a5,$sp,32
    sw	$a5,8($s1)
    # Line 546
    li	$t3,-17
    # Line 543
    addu	$t2,$a1,$s0
    # Line 541
    lw	$a3,30436($s0)
    # Line 533
    sd	$a7,64($sp)
    # Line 543
    andi	$v1,$s4,0x10
    # Line 541
    li	$a4,-8193
    # Line 542
    lui	$a2,0x2
    # Line 538
    lw	$a0,32088($s0)
    # Line 541
    and	$a3,$a3,$a4
    # Line 538
    sw	$a0,48($sp)
    # Line 542
    or	$a2,$a2,$a3
    # Line 539
    li	$a3,-16385
    # Line 542
    sw	$a2,30436($s0)
    # Line 546
    and	$t3,$a2,$t3
    # Line 539
    and	$a0,$a0,$a3
    # Line 540
    or	$a0,$a1,$a0
    # Line 543
    beqz	$v1,.L0d948284
    # Line 540
    sw	$a0,32088($s0)
    # Line 543
    lw	$t2,-32608($t2)
    andi	$t2,$t2,0x2
    beqz	$t2,.L0d948284
    nop
    # Line 545
    ori	$a0,$a0,0x1
    sw	$a0,32088($s0)
    # Line 546
    sw	$t3,30436($s0)
.L0d948284:
    lw	$t8,32092($s0)
    beq	$t8,$a0,.L0d9482ac
    nop
    # Line 548
    lw	$v0,32184($s0)
    sw	$a0,8216($v0)
    lw	$at,32188($s0)
    lw	$ra,32088($s0)
    sw	$ra,8216($at)
    lw	$t9,32088($s0)
    sw	$t9,32092($s0)
.L0d9482ac:
    # Line 550
    lw	$t9,12084($s0)
    move	$a0,$s0
    move	$a1,$s3
    move	$a2,$s2
    move	$a3,$s1
    jalr	$t9
    ld	$a4,88($sp)
    ld	$ra,144($sp)
    ld	$a1,64($sp)
    # Line 552
    lw	$a0,48($sp)
    lw	$v1,32092($s0)
    ld	$a2,72($sp)
    ld	$a3,80($sp)
    beq	$v1,$a0,.L0d948334
    sw	$a0,32088($s0)
    # Line 553
    lw	$a6,32184($s0)
    # Line 559
    ld	$gp,128($sp)
    # Line 553
    sw	$a0,8216($a6)
    lw	$a5,32188($s0)
    lw	$a4,32088($s0)
    sw	$a4,8216($a5)
    # Line 554
    sw	$s4,30436($s0)
    # Line 559
    ld	$s4,120($sp)
    # Line 553
    lw	$a0,32088($s0)
    sw	$a0,32092($s0)
    # Line 559
    ld	$s0,96($sp)
    # Line 556
    sw	$a3,8($s3)
    # Line 557
    sw	$a2,8($s2)
    # Line 558
    sw	$a1,8($s1)
    # Line 559
    ld	$s1,104($sp)
    ld	$s2,136($sp)
    ld	$s3,112($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d948334:
    ld	$gp,128($sp)
    # Line 554
    sw	$s4,30436($s0)
    # Line 559
    ld	$s0,96($sp)
    # Line 556
    sw	$a3,8($s3)
    # Line 557
    sw	$a2,8($s2)
    # Line 558
    sw	$a1,8($s1)
    # Line 559
    ld	$s1,104($sp)
    ld	$s2,136($sp)
    ld	$s3,112($sp)
    ld	$s4,120($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d948364:
    # Line 527
    move	$t9,$a6
    # Line 526
    lw	$a2,28072($a0)
    sd	$a2,56($sp)
    # Line 527
    addiu	$a1,$sp,0
    jalr	$t9
    lw	$a2,8($a2)
    # Line 528
    lw	$t9,12532($s0)
    ld	$a2,56($sp)
    move	$a0,$s0
    lwc1	$f15,176($s2)
    addiu	$a1,$sp,16
    jalr	$t9
    lw	$a2,8($a2)
    # Line 529
    lw	$t9,12532($s0)
    ld	$a2,56($sp)
    move	$a0,$s0
    lwc1	$f15,176($s1)
    addiu	$a1,$sp,32
    jalr	$t9
    lw	$a2,8($a2)
    b	.L0d9481f8
    # Line 531
    lw	$t1,8($s3)
.end __glCrmFillCheapFogTriangle

# Function: __glCrmFillStippledTriangle
# Declared: Line 565 (Source lines: 567-584)
# Address: 0x0d9483c0 - 0x0d94848c (Size: 204 bytes, Frame: 48)
.globl __glCrmFillStippledTriangle
.ent __glCrmFillStippledTriangle
__glCrmFillStippledTriangle:
    # Line 567
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    sd	$gp,24($sp)
    # Line 569
    lw	$v1,30436($a0)
    sd	$v1,8($sp)
    # Line 567
    sd	$s0,16($sp)
    # Line 570
    lw	$a6,32088($a0)
    # Line 576
    li	$a5,-17
    # Line 567
    move	$s0,$a0
    # Line 576
    lw	$at,32092($a0)
    # Line 567
    lui	$v0,0x11
    # Line 570
    sw	$a6,0($sp)
    # Line 575
    ori	$a6,$a6,0x1
    # Line 567
    addiu	$v0,$v0,-30260
    # Line 576
    and	$v1,$v1,$a5
    sw	$v1,30436($a0)
    # Line 575
    sw	$a6,32088($a0)
    # Line 576
    beq	$at,$a6,.L0d948428
    # Line 567
    addu	$gp,$t9,$v0
    # Line 577
    lw	$t2,32184($a0)
    sw	$a6,8216($t2)
    lw	$t1,32188($a0)
    lw	$t0,32088($a0)
    sw	$t0,8216($t1)
    lw	$a7,32088($a0)
    sw	$a7,32092($a0)
.L0d948428:
    # Line 579
    lw	$t9,12084($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,32($sp)
    # Line 581
    lw	$a6,0($sp)
    # Line 582
    lw	$t3,32092($s0)
    ld	$t8,8($sp)
    sw	$t8,30436($s0)
    beq	$t3,$a6,.L0d94847c
    # Line 581
    sw	$a6,32088($s0)
    # Line 583
    lw	$v1,32184($s0)
    # Line 584
    ld	$gp,24($sp)
    # Line 583
    sw	$a6,8216($v1)
    lw	$v0,32188($s0)
    lw	$at,32088($s0)
    sw	$at,8216($v0)
    lw	$t9,32088($s0)
    sw	$t9,32092($s0)
    # Line 584
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d94847c:
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glCrmFillStippledTriangle

# Function: __glCrmFillFrontBackTriangle
# Declared: Line 592 (Source lines: 594-630)
# Address: 0x0d948490 - 0x0d948660 (Size: 464 bytes, Frame: 240)
.globl __glCrmFillFrontBackTriangle
.ent __glCrmFillFrontBackTriangle
__glCrmFillFrontBackTriangle:
    # Line 601
    lw	$at,32088($a0)
    # Line 594
    addiu	$sp,$sp,-112
    sd	$s6,24($sp)
    move	$s6,$a1
    # Line 609
    lw	$a1,30660($a0)
    # Line 594
    sd	$s2,8($sp)
    # Line 596
    lw	$s2,32184($a0)
    # Line 601
    sw	$at,0($sp)
    # Line 594
    sd	$s8,88($sp)
    sd	$ra,32($sp)
    sd	$s4,40($sp)
    sd	$s5,48($sp)
    sd	$s0,72($sp)
    lui	$v0,0x11
    sd	$s1,56($sp)
    addiu	$v0,$v0,-30468
    sd	$gp,96($sp)
    addu	$gp,$t9,$v0
    # Line 609
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    # Line 594
    move	$s0,$a0
    # Line 596
    lw	$s1,32188($a0)
    # Line 594
    move	$s5,$a4
    move	$s4,$a3
    sd	$s3,16($sp)
    move	$s3,$a2
    # Line 609
    bal __glCrmSetStoreBuffer
    # Line 602
    lw	$s8,8680($s1)
    # Line 610
    lw	$a1,32088($s0)
    lw	$v1,32092($s0)
    li	$a0,-3
    and	$a0,$a0,$a1
    # Line 609
    sd	$v0,80($sp)
    # Line 610
    beq	$v1,$a0,.L0d948534
    sw	$a0,32088($s0)
    # Line 611
    lw	$a5,32184($s0)
    sw	$a0,8216($a5)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    sw	$a2,32092($s0)
.L0d948534:
    # Line 614
    lui	$t9,0x1
    addu	$t9,$s0,$t9
    sd	$t9,64($sp)
    # Line 612
    sw	$zero,4($sp)
    lw	$ra,4($sp)
    sw	$ra,8680($s2)
    lw	$ra,4($sp)
    sw	$ra,8680($s1)
    # Line 614
    lw	$t9,-32508($t9)
    move	$a4,$s5
    move	$a3,$s4
    move	$a2,$s3
    move	$a1,$s6
    jal	__glCrmSetStoreBuffer
    move	$a0,$s0
    # Line 620
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    move	$a0,$s0
    bal __glCrmSetStoreBuffer
    lw	$a1,30656($s0)
    # Line 621
    lw	$a1,0($sp)
    lw	$a2,32088($s0)
    srl	$a1,$a1,0x1
    li	$a0,-3
    andi	$a1,$a1,0x1
    lw	$at,32092($s0)
    and	$a0,$a0,$a2
    sll	$a1,$a1,0x1
    or	$a0,$a0,$a1
    ld	$v0,64($sp)
    beq	$at,$a0,.L0d9485cc
    sw	$a0,32088($s0)
    # Line 622
    lw	$a5,32184($s0)
    sw	$a0,8216($a5)
    lw	$a4,32188($s0)
    lw	$a3,32088($s0)
    sw	$a3,8216($a4)
    lw	$a2,32088($s0)
    sw	$a2,32092($s0)
.L0d9485cc:
    # Line 623
    sw	$s8,8680($s2)
    sw	$s8,8680($s1)
    # Line 625
    lw	$t9,-32508($v0)
    move	$a4,$s5
    move	$a3,$s4
    move	$a2,$s3
    move	$a1,$s6
    jal	__glCrmSetStoreBuffer
    move	$a0,$s0
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    ld	$s6,24($sp)
    ld	$s4,40($sp)
    ld	$s5,48($sp)
    ld	$s1,56($sp)
    # Line 627
    lw	$a0,0($sp)
    lw	$a6,32092($s0)
    ld	$v0,80($sp)
    ld	$s8,88($sp)
    beq	$a6,$a0,.L0d94863c
    sw	$a0,32088($s0)
    # Line 628
    lw	$t2,32184($s0)
    sw	$a0,8216($t2)
    lw	$t1,32188($s0)
    lw	$t0,32088($s0)
    sw	$t0,8216($t1)
    lw	$a7,32088($s0)
    sw	$a7,32092($s0)
.L0d94863c:
    # Line 629
    # lw $t9, -31840($gp) # &__glCrmSetStoreBuffer
    move	$a0,$s0
    bal __glCrmSetStoreBuffer
    move	$a1,$v0
    ld	$ra,32($sp)
    ld	$s0,72($sp)
    # Line 630
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glCrmFillFrontBackTriangle

# Function: __glCrmFillLeftRightTriangle
# Declared: Line 640 (Source lines: 642-689)
# Address: 0x0d948660 - 0x0d94880c (Size: 428 bytes, Frame: 224)
.globl __glCrmFillLeftRightTriangle
.ent __glCrmFillLeftRightTriangle
__glCrmFillLeftRightTriangle:
    # Line 648
    lw	$v1,32088($a0)
    # Line 642
    addiu	$sp,$sp,-96
    # Line 648
    sw	$v1,0($sp)
    # Line 642
    sd	$s0,48($sp)
    sd	$s4,32($sp)
    sd	$s6,24($sp)
    sd	$s5,40($sp)
    sd	$gp,64($sp)
    sd	$s1,56($sp)
    # Line 644
    lw	$s1,32188($a0)
    # Line 642
    lui	$a5,0x11
    sd	$s2,72($sp)
    addiu	$a5,$a5,-30932
    # Line 654
    lw	$t0,8200($s1)
    # Line 644
    lw	$s2,32184($a0)
    # Line 642
    addu	$gp,$t9,$a5
    # Line 654
    li	$a6,-2
    # Line 642
    la	$v0,__glCrmFillFrontBackTriangle
    # Line 654
    nor	$a7,$t0,$zero
    # Line 649
    lw	$t1,8680($s1)
    # Line 654
    and	$a6,$a6,$t0
    andi	$a7,$a7,0x1
    or	$a6,$a6,$a7
    sw	$a6,8200($s1)
    # Line 655
    sw	$a6,8200($s2)
    # Line 642
    move	$s5,$a4
    # Line 655
    lw	$at,12080($a0)
    # Line 642
    move	$s6,$a3
    move	$s4,$a2
    sd	$s3,16($sp)
    move	$s3,$a1
    move	$s0,$a0
    sd	$ra,88($sp)
    # Line 662
    li	$ra,-3
    # Line 655
    beq	$at,$v0,.L0d94871c
    # Line 649
    sd	$t1,8($sp)
    # Line 662
    lw	$t9,32088($a0)
    and	$t9,$t9,$ra
    sw	$t9,32088($a0)
    # Line 663
    sw	$t9,8216($s2)
    lw	$t8,32088($a0)
    sw	$t8,8216($s1)
    # Line 664
    sw	$zero,4($sp)
    lw	$t3,4($sp)
    lw	$t2,4($sp)
    sw	$t3,8680($s2)
    sw	$t2,8680($s1)
.L0d94871c:
    # Line 667
    lui	$t9,0x1
    addu	$t9,$s0,$t9
    sd	$t9,80($sp)
    lw	$t9,-32488($t9)
    move	$a4,$s5
    move	$a3,$s6
    move	$a2,$s4
    move	$a1,$s3
    jalr	$t9
    move	$a0,$s0
    # Line 672
    lw	$a0,8200($s1)
    li	$v0,-2
    nor	$v1,$a0,$zero
    # Line 673
    la	$at,__glCrmFillFrontBackTriangle
    # Line 672
    and	$v0,$v0,$a0
    andi	$v1,$v1,0x1
    or	$v0,$v0,$v1
    sw	$v0,8200($s1)
    # Line 673
    sw	$v0,8200($s2)
    lw	$ra,12080($s0)
    # Line 680
    lw	$a4,0($sp)
    ld	$a6,80($sp)
    li	$a5,-3
    # Line 673
    beq	$ra,$at,.L0d9487b0
    # Line 680
    srl	$a4,$a4,0x1
    # Line 682
    ld	$a1,8($sp)
    # Line 680
    lw	$a3,32088($s0)
    andi	$a4,$a4,0x1
    sll	$a4,$a4,0x1
    and	$a3,$a3,$a5
    or	$a3,$a3,$a4
    sw	$a3,32088($s0)
    # Line 681
    sw	$a3,8216($s2)
    lw	$a2,32088($s0)
    sw	$a2,8216($s1)
    # Line 682
    sw	$a1,8680($s2)
    sw	$a1,8680($s1)
.L0d9487b0:
    # Line 685
    lw	$t9,-32488($a6)
    move	$a0,$s0
    move	$a1,$s3
    move	$a2,$s4
    move	$a3,$s6
    jalr	$t9
    move	$a4,$s5
    ld	$s3,16($sp)
    ld	$s6,24($sp)
    ld	$s4,32($sp)
    ld	$s5,40($sp)
    # Line 689
    ld	$gp,64($sp)
    # Line 687
    lw	$a6,0($sp)
    sw	$a6,32088($s0)
    # Line 688
    sw	$a6,8216($s2)
    lw	$a5,32088($s0)
    # Line 689
    ld	$s0,48($sp)
    ld	$ra,88($sp)
    ld	$s2,72($sp)
    # Line 688
    sw	$a5,8216($s1)
    # Line 689
    ld	$s1,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.end __glCrmFillLeftRightTriangle

# Function: FillSubTriangle
# Declared: Line 702 (Source lines: 703-868)
# Address: 0x0d948810 - 0x0d948d94 (Size: 1412 bytes, Frame: 0)
.ent FillSubTriangle
FillSubTriangle:
    # Line 727
    lw	$a7,30156($a0)
    # Line 726
    lw	$a6,30160($a0)
    # Line 725
    lw	$t0,30164($a0)
    # Line 703
    lui	$at,0x1
    # Line 723
    lw	$a3,30140($a0)
    # Line 703
    ori	$at,$at,0x200
    # Line 724
    lw	$a4,30136($a0)
    # Line 703
    subu	$sp,$sp,$at
    # Line 723
    sd	$a3,72($sp)
    # Line 703
    move	$a5,$s8
    sd	$a5,32($sp)
    # Line 722
    lw	$a5,30144($a0)
    # Line 703
    sd	$s5,48($sp)
    # Line 719
    lw	$s5,30172($a0)
    # Line 703
    sd	$s3,40($sp)
    # Line 718
    lw	$s3,30168($a0)
    # Line 703
    sd	$s4,16($sp)
    # Line 717
    lw	$s4,30152($a0)
    # Line 703
    sd	$s2,56($sp)
    # Line 716
    lw	$s2,30148($a0)
    sd	$ra,120($sp)
    # Line 703
    sd	$s0,24($sp)
    # Line 728
    lw	$t9,30436($a0)
    # Line 703
    sd	$s1,64($sp)
    move	$s1,$a1
    # Line 720
    lw	$a1,29704($a0)
    # Line 703
    sd	$s7,8($sp)
    # Line 731
    lui	$v0,0xffff
    # Line 703
    move	$s7,$a2
    # Line 721
    lw	$a2,29712($a0)
    # Line 732
    lui	$v1,0xffff
    # Line 703
    move	$s0,$a0
    # Line 721
    sd	$a2,88($sp)
    # Line 724
    sd	$a4,104($sp)
    # Line 732
    andi	$a4,$t9,0x20
    # Line 703
    addu	$s8,$sp,$at
    # Line 720
    sd	$a1,96($sp)
    # Line 730
    lui	$at,0xffff
    # Line 732
    addu	$v1,$v1,$s8
    # Line 731
    addu	$v0,$v0,$s8
    # Line 732
    addiu	$v1,$v1,-288
    sw	$v1,30472($a0)
    # Line 730
    addu	$at,$at,$s8
    # Line 731
    addiu	$v0,$v0,-32
    sw	$v0,30468($a0)
    # Line 730
    addiu	$at,$at,32736
    # Line 732
    beqz	$a4,.L0d948900
    # Line 730
    sw	$at,30464($a0)
    # Line 734
    lw	$t2,31108($a0)
    lw	$ra,3664($t2)
    lw	$t8,31136($a0)
    subu	$ra,$s1,$ra
    mult	$t8,$ra
    lw	$t1,31124($a0)
    mflo	$t3
    lw	$t2,3660($t2)
    addu	$t1,$t1,$t3
    addu	$t1,$s2,$t1
    subu	$t1,$t1,$t2
    sw	$t1,30452($a0)
.L0d948900:
    # Line 743
    slt	$t1,$s1,$s7
    # Line 734
    andi	$a0,$t9,0x4
    # Line 743
    andi	$t2,$t9,0x1
    andi	$ra,$t9,0x8
    # Line 734
    beqz	$a0,.L0d948954
    # Line 743
    andi	$t3,$t9,0x1000
    # Line 739
    lw	$v0,31228($s0)
    lw	$a2,3664($v0)
    lw	$a1,31256($s0)
    subu	$a2,$s1,$a2
    mult	$a1,$a2
    lw	$at,31244($s0)
    mflo	$v1
    lw	$v0,3660($v0)
    sll	$v1,$v1,0x2
    addu	$at,$at,$v1
    sll	$v1,$s2,0x2
    sll	$v0,$v0,0x2
    addu	$at,$at,$v1
    subu	$at,$at,$v0
    sw	$at,30440($s0)
.L0d948954:
    # Line 743
    lw	$a3,11760($s0)
    andi	$a2,$t9,0x2
    beqz	$t1,.L0d948d54
    sw	$a3,30480($s0)
    andi	$t8,$t9,0x2000
    andi	$t1,$t9,0x4000
    sd	$s6,216($sp)
    lui	$s6,0x7fff
    sd	$t8,80($sp)
    lui	$t8,0x4
    ori	$s6,$s6,0xffff
    sd	$ra,112($sp)
    b	.L0d948a30
    and	$t8,$t9,$t8
    nop
.L0d948990:
    # Line 830
    beqz	$a2,.L0d9489a8
    nop
    # Line 834
    lwc1	$f1,30252($s0)
    lwc1	$f0,30208($s0)
    add.s	$f0,$f0,$f1
    swc1	$f0,30208($s0)
.L0d9489a8:
    beqz	$a4,.L0d948b0c
    nop
.L0d9489b0:
    # Line 839
    lw	$v0,30452($s0)
    lw	$at,30460($s0)
    addu	$at,$at,$v0
    beqz	$t1,.L0d948b14
    sw	$at,30452($s0)
.L0d9489c4:
    # Line 844
    lw	$a1,30204($s0)
    lw	$v1,30316($s0)
    addu	$v1,$v1,$a1
    beqz	$t8,.L0d948b1c
    sw	$v1,30204($s0)
.L0d9489d8:
    # Line 848
    lw	$a3,30316($s0)
    mtc1	$a3,$f2
    # Line 849
    lwc1	$f5,30512($s0)
    lwc1	$f4,30500($s0)
    # Line 848
    cvt.s.w	$f2,$f2
    lwc1	$f3,30484($s0)
    # Line 849
    add.s	$f4,$f4,$f5
    swc1	$f4,30500($s0)
    # Line 848
    add.s	$f2,$f2,$f3
    # Line 849
    beqz	$a0,.L0d948a14
    # Line 848
    swc1	$f2,30484($s0)
.L0d948a04:
    # Line 853
    lw	$ra,30440($s0)
    lw	$t9,30448($s0)
    addu	$t9,$t9,$ra
    sw	$t9,30440($s0)
.L0d948a14:
    # Line 857
    beqz	$t3,.L0d948c84
    ld	$a1,112($sp)
.L0d948a1c:
    # Line 860
    lwc1	$f4,30420($s0)
    lwc1	$f3,30244($s0)
    add.s	$f3,$f3,$f4
    swc1	$f3,30244($s0)
.L0d948a2c:
    beq	$s1,$s7,.L0d948d50
.L0d948a30:
    # Line 750
    ld	$v0,88($sp)
    subu	$a1,$s3,$s2
    ld	$at,96($sp)
    blez	$a1,.L0d948a54
    slt	$v0,$s1,$v0
    slt	$at,$s1,$at
    bnez	$at,.L0d948a58
    # Line 761
    addu	$a3,$s3,$a6
    # Line 750
    bnez	$v0,.L0d948cb0
.L0d948a54:
    # Line 761
    addu	$a3,$s3,$a6
.L0d948a58:
    # Line 764
    addu	$s3,$s3,$a7
    # Line 758
    addu	$a1,$s5,$t0
    # Line 768
    addu	$s4,$s4,$a5
    slti	$v1,$a1,0
    # Line 767
    addiu	$s1,$s1,1
    # Line 825
    ld	$ra,112($sp)
    movn	$s3,$a3,$v1
    # Line 819
    ld	$t9,104($sp)
    # Line 762
    and	$s5,$a1,$s6
    # Line 768
    bltz	$s4,.L0d948b30
    movz	$s5,$a1,$v1
    # Line 819
    beqz	$t2,.L0d948990
    addu	$s2,$s2,$t9
    beqz	$a2,.L0d948ca0
    # Line 825
    ld	$a3,112($sp)
    # Line 822
    lwc1	$f6,30252($s0)
    # Line 823
    lwc1	$f8,30256($s0)
    # Line 824
    lwc1	$f10,30260($s0)
    # Line 825
    lwc1	$f12,30264($s0)
    lwc1	$f11,30220($s0)
    # Line 824
    lwc1	$f9,30216($s0)
    # Line 823
    lwc1	$f7,30212($s0)
    # Line 822
    lwc1	$f5,30208($s0)
    # Line 825
    add.s	$f11,$f11,$f12
    # Line 824
    add.s	$f9,$f9,$f10
    # Line 825
    swc1	$f11,30220($s0)
    # Line 823
    add.s	$f7,$f7,$f8
    # Line 824
    swc1	$f9,30216($s0)
    # Line 822
    add.s	$f5,$f5,$f6
    # Line 823
    swc1	$f7,30212($s0)
    # Line 825
    beqz	$ra,.L0d9489a8
    # Line 822
    swc1	$f5,30208($s0)
.L0d948ad8:
    # Line 828
    ldc1	$f14,32448($s0)
    # Line 829
    ldc1	$f16,32464($s0)
    # Line 830
    ldc1	$f18,32480($s0)
    ldc1	$f17,32392($s0)
    # Line 829
    ldc1	$f15,32384($s0)
    # Line 828
    ldc1	$f13,32376($s0)
    # Line 830
    add.d	$f17,$f17,$f18
    # Line 829
    add.d	$f15,$f15,$f16
    # Line 830
    sdc1	$f17,32392($s0)
    # Line 828
    add.d	$f13,$f13,$f14
    # Line 829
    sdc1	$f15,32384($s0)
    # Line 834
    bnez	$a4,.L0d9489b0
    # Line 828
    sdc1	$f13,32376($s0)
.L0d948b0c:
    # Line 839
    bnez	$t1,.L0d9489c4
    nop
.L0d948b14:
    # Line 844
    bnez	$t8,.L0d9489d8
    nop
.L0d948b1c:
    # Line 849
    bnez	$a0,.L0d948a04
    nop
    b	.L0d948a14
    nop
    nop
.L0d948b30:
    # Line 772
    ld	$at,72($sp)
    and	$s4,$s4,$s6
    beqz	$t2,.L0d948be4
    # Line 771
    addu	$s2,$s2,$at
    # Line 772
    beqz	$a2,.L0d948d40
    # Line 779
    ld	$at,112($sp)
    ld	$v0,112($sp)
    # Line 776
    lwc1	$f21,30268($s0)
    # Line 777
    lwc1	$f25,30272($s0)
    # Line 778
    lwc1	$f29,30276($s0)
    # Line 779
    lwc1	$f0,30280($s0)
    lwc1	$f31,30220($s0)
    # Line 778
    lwc1	$f27,30216($s0)
    # Line 777
    lwc1	$f23,30212($s0)
    # Line 776
    lwc1	$f19,30208($s0)
    # Line 779
    add.s	$f31,$f31,$f0
    # Line 778
    add.s	$f27,$f27,$f29
    # Line 779
    swc1	$f31,30220($s0)
    # Line 777
    add.s	$f23,$f23,$f25
    # Line 778
    swc1	$f27,30216($s0)
    # Line 776
    add.s	$f19,$f19,$f21
    # Line 777
    swc1	$f23,30212($s0)
    # Line 779
    beqz	$v0,.L0d948bfc
    # Line 776
    swc1	$f19,30208($s0)
.L0d948b90:
    # Line 782
    ldc1	$f2,32456($s0)
    # Line 783
    ldc1	$f4,32472($s0)
    # Line 784
    ldc1	$f6,32488($s0)
    ldc1	$f5,32392($s0)
    # Line 783
    ldc1	$f3,32384($s0)
    # Line 782
    ldc1	$f1,32376($s0)
    # Line 784
    add.d	$f5,$f5,$f6
    # Line 783
    add.d	$f3,$f3,$f4
    # Line 784
    sdc1	$f5,32392($s0)
    # Line 782
    add.d	$f1,$f1,$f2
    # Line 783
    sdc1	$f3,32384($s0)
    # Line 788
    bnez	$a4,.L0d948c04
    # Line 782
    sdc1	$f1,32376($s0)
.L0d948bc4:
    # Line 793
    bnez	$t1,.L0d948c18
    nop
.L0d948bcc:
    # Line 798
    bnez	$t8,.L0d948c2c
    nop
.L0d948bd4:
    # Line 803
    bnez	$a0,.L0d948c58
    nop
    b	.L0d948c68
    nop
.L0d948be4:
    # Line 784
    beqz	$a2,.L0d948bfc
    nop
    # Line 788
    lwc1	$f8,30268($s0)
    lwc1	$f7,30208($s0)
    add.s	$f7,$f7,$f8
    swc1	$f7,30208($s0)
.L0d948bfc:
    beqz	$a4,.L0d948bc4
    nop
.L0d948c04:
    # Line 793
    lw	$a1,30452($s0)
    lw	$v1,30456($s0)
    addu	$v1,$v1,$a1
    beqz	$t1,.L0d948bcc
    sw	$v1,30452($s0)
.L0d948c18:
    # Line 798
    lw	$t9,30204($s0)
    lw	$a3,30320($s0)
    addu	$a3,$a3,$t9
    beqz	$t8,.L0d948bd4
    sw	$a3,30204($s0)
.L0d948c2c:
    # Line 802
    lw	$ra,30320($s0)
    mtc1	$ra,$f9
    # Line 803
    lwc1	$f12,30508($s0)
    lwc1	$f11,30500($s0)
    # Line 802
    cvt.s.w	$f9,$f9
    lwc1	$f10,30484($s0)
    # Line 803
    add.s	$f11,$f11,$f12
    swc1	$f11,30500($s0)
    # Line 802
    add.s	$f9,$f9,$f10
    # Line 803
    beqz	$a0,.L0d948c68
    # Line 802
    swc1	$f9,30484($s0)
.L0d948c58:
    # Line 808
    lw	$v0,30440($s0)
    lw	$at,30444($s0)
    addu	$at,$at,$v0
    sw	$at,30440($s0)
.L0d948c68:
    # Line 812
    beqz	$t3,.L0d948d24
    ld	$ra,112($sp)
.L0d948c70:
    # Line 815
    lwc1	$f11,30424($s0)
    lwc1	$f10,30244($s0)
    add.s	$f10,$f10,$f11
    b	.L0d948a2c
    swc1	$f10,30244($s0)
.L0d948c84:
    # Line 857
    ld	$v1,80($sp)
    beqz	$v1,.L0d948a2c
    nop
    bnez	$a1,.L0d948a1c
    nop
    b	.L0d948a2c
    nop
.L0d948ca0:
    # Line 825
    bnez	$a3,.L0d948ad8
    nop
    b	.L0d9489a8
    nop
.L0d948cb0:
    sd	$t8,128($sp)
    sd	$t3,136($sp)
    sd	$t2,144($sp)
    sd	$t1,152($sp)
    sd	$a2,160($sp)
    sd	$t0,176($sp)
    sd	$a7,184($sp)
    sd	$a6,192($sp)
    sd	$a5,200($sp)
    sd	$a4,208($sp)
    # Line 753
    sw	$a1,30248($s0)
    # Line 754
    lw	$t9,12232($s0)
    # Line 752
    sw	$s1,30200($s0)
    sd	$a0,168($sp)
    # Line 754
    move	$a0,$s0
    jalr	$t9
    # Line 751
    sw	$s2,30196($s0)
    ld	$a4,208($sp)
    ld	$a5,200($sp)
    ld	$a6,192($sp)
    ld	$a7,184($sp)
    ld	$t0,176($sp)
    ld	$a0,168($sp)
    ld	$a2,160($sp)
    ld	$t1,152($sp)
    ld	$t2,144($sp)
    ld	$t3,136($sp)
    b	.L0d948a54
    ld	$t8,128($sp)
.L0d948d24:
    # Line 812
    ld	$t9,80($sp)
    beqz	$t9,.L0d948a2c
    nop
    bnez	$ra,.L0d948c70
    nop
    b	.L0d948a2c
    nop
.L0d948d40:
    # Line 779
    bnez	$at,.L0d948b90
    nop
    b	.L0d948bfc
    nop
.L0d948d50:
    ld	$s6,216($sp)
.L0d948d54:
    # Line 867
    sw	$s5,30172($s0)
    # Line 866
    sw	$s3,30168($s0)
    # Line 865
    sw	$s4,30152($s0)
    # Line 864
    sw	$s2,30148($s0)
    # Line 868
    ld	$s0,24($sp)
    ld	$s1,64($sp)
    ld	$s2,56($sp)
    ld	$s3,40($sp)
    ld	$s4,16($sp)
    ld	$s5,48($sp)
    ld	$ra,120($sp)
    ld	$v0,32($sp)
    ld	$s7,8($sp)
    move	$sp,$s8
    jr	$ra
    move	$s8,$v0
.end FillSubTriangle

# Function: SetInitialParameters
# Declared: Line 870 (Source lines: 874-1017)
# Address: 0x0d948da0 - 0x0d949388 (Size: 1512 bytes, Frame: 128)
.ent SetInitialParameters
SetInitialParameters:
    # Line 879
    lw	$at,30140($a0)
    # Line 877
    lw	$v0,30136($a0)
    # Line 874
    addiu	$sp,$sp,-128
    # Line 879
    mtc1	$at,$f0
    # Line 874
    sdc1	$f24,16($sp)
    # Line 877
    mtc1	$v0,$f24
    # Line 879
    cvt.s.w	$f0,$f0
    # Line 877
    cvt.s.w	$f24,$f24
    # Line 874
    sd	$s0,24($sp)
    # Line 879
    lw	$a5,30436($a0)
    c.lt.s	$f24,$f0
    # Line 874
    mov.s	$f5,$f15
    move	$s0,$a0
    sdc1	$f20,8($sp)
    mov.s	$f20,$f16
    sdc1	$f22,0($sp)
    # Line 879
    andi	$a6,$a5,0x1000
    andi	$t0,$a5,0x4000
    # Line 874
    mov.s	$f22,$f17
    # Line 879
    andi	$a7,$a5,0x2
    bc1f	.L0d948ff8
    andi	$a4,$a5,0x1
    beqz	$a4,.L0d949320
    nop
    beqz	$a7,.L0d948eac
    # Line 898
    andi	$v1,$a5,0x8
    # Line 884
    lwc1	$f7,30284($a0)
    lwc1	$f6,30300($a0)
    lwc1	$f8,0($a2)
    madd.s	$f8,$f8,$f16,$f7
    madd.s	$f8,$f8,$f17,$f6
    # Line 885
    madd.s	$f6,$f6,$f24,$f7
    # Line 888
    lwc1	$f3,30304($a0)
    lwc1	$f2,30288($a0)
    # Line 884
    swc1	$f8,30208($a0)
    # Line 885
    swc1	$f6,30252($a0)
    # Line 886
    add.s	$f6,$f6,$f7
    swc1	$f6,30268($a0)
    # Line 888
    lwc1	$f4,4($a2)
    madd.s	$f4,$f4,$f16,$f2
    madd.s	$f4,$f4,$f17,$f3
    # Line 889
    madd.s	$f3,$f3,$f24,$f2
    # Line 892
    lwc1	$f0,30308($a0)
    lwc1	$f27,30292($a0)
    # Line 889
    swc1	$f3,30256($a0)
    # Line 888
    swc1	$f4,30212($a0)
    # Line 890
    add.s	$f2,$f2,$f3
    swc1	$f2,30272($a0)
    # Line 892
    lwc1	$f1,8($a2)
    madd.s	$f1,$f1,$f16,$f27
    madd.s	$f1,$f1,$f17,$f0
    # Line 893
    madd.s	$f0,$f0,$f24,$f27
    # Line 896
    lwc1	$f31,30312($a0)
    lwc1	$f29,30296($a0)
    # Line 893
    swc1	$f0,30260($a0)
    # Line 892
    swc1	$f1,30216($a0)
    # Line 894
    add.s	$f27,$f27,$f0
    swc1	$f27,30276($a0)
    # Line 897
    madd.s	$f27,$f31,$f24,$f29
    # Line 896
    lwc1	$f25,12($a2)
    madd.s	$f25,$f25,$f16,$f29
    madd.s	$f25,$f25,$f17,$f31
    # Line 897
    swc1	$f27,30264($a0)
    # Line 898
    add.s	$f29,$f29,$f27
    swc1	$f29,30280($a0)
    # Line 896
    swc1	$f25,30220($a0)
    # Line 898
    andi	$v1,$a5,0x8
.L0d948eac:
    beqz	$v1,.L0d948f2c
    # Line 911
    ldc1	$f15,128($sp)
    ldc1	$f21,32432($s0)
    ldc1	$f27,32440($s0)
    # Line 904
    cvt.d.s	$f11,$f24
    # Line 907
    ldc1	$f13,32416($s0)
    # Line 903
    ldc1	$f10,32400($s0)
    # Line 912
    madd.d	$f23,$f27,$f21,$f11
    # Line 907
    ldc1	$f25,32424($s0)
    # Line 903
    ldc1	$f16,32408($s0)
    # Line 908
    madd.d	$f14,$f25,$f13,$f11
    # Line 903
    cvt.d.s	$f9,$f20
    # Line 904
    madd.d	$f11,$f16,$f10,$f11
    # Line 911
    madd.d	$f15,$f15,$f21,$f9
    # Line 903
    cvt.d.s	$f17,$f22
    # Line 907
    madd.d	$f12,$f19,$f13,$f9
    # Line 903
    madd.d	$f9,$f18,$f10,$f9
    # Line 911
    madd.d	$f15,$f15,$f27,$f17
    # Line 912
    sdc1	$f23,32480($s0)
    # Line 908
    sdc1	$f14,32464($s0)
    # Line 907
    madd.d	$f12,$f12,$f25,$f17
    # Line 904
    sdc1	$f11,32448($s0)
    # Line 913
    add.d	$f21,$f21,$f23
    # Line 903
    madd.d	$f9,$f9,$f16,$f17
    # Line 913
    sdc1	$f21,32488($s0)
    # Line 909
    add.d	$f13,$f13,$f14
    # Line 911
    sdc1	$f15,32392($s0)
    # Line 909
    sdc1	$f13,32472($s0)
    # Line 905
    add.d	$f10,$f10,$f11
    # Line 907
    sdc1	$f12,32384($s0)
    # Line 905
    sdc1	$f10,32456($s0)
    # Line 903
    sdc1	$f9,32376($s0)
.L0d948f2c:
    # Line 919
    beqz	$t0,.L0d949208
    nop
    # Line 925
    lwc1	$f4,30336($s0)
    lwc1	$f6,30332($s0)
    madd.s	$f17,$f6,$f24,$f4
    # Line 927
    lw	$a0,1792($s0)
    add.s	$f16,$f4,$f17
    dsll32	$a0,$a0,0x7
    # Line 926
    trunc.w.s	$f17,$f17
    swc1	$f17,30316($s0)
    # Line 927
    trunc.w.s	$f16,$f16
    bgez	$a0,.L0d9491f0
    swc1	$f16,30320($s0)
    sdc1	$f5,32($sp)
    # Line 930
    # lw $t9, -25208($gp) # &__glPolygonOffsetZ
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    mov.s	$f14,$f20
    move	$a0,$s0
    sd	$ra,56($sp)
    jal	__glPolygonOffsetZ
    mov.s	$f15,$f22
    lwc1	$f4,30336($s0)
    ld	$ra,56($sp)
    ld	$a5,48($sp)
    dmtc1	$zero,$f19
    ld	$a6,40($sp)
    cvt.d.s	$f18,$f4
    lw	$a0,30320($s0)
    # Line 936
    lw	$t2,30316($s0)
    # Line 930
    c.eq.d $f18,$f19
    ldc1	$f5,32($sp)
    negu	$a0,$a0
    sw	$v0,30204($s0)
    # Line 936
    negu	$t2,$t2
    # Line 932
    mtc1	$a0,$f23
    ldc1	$f25,_lit8_3ee4f8b588e368f1
    # Line 930
    bc1f .L0d9492d8
    # Line 936
    mtc1	$t2,$f7
    # Line 932
    cvt.d.w	$f23,$f23
    div.d	$f23,$f23,$f25
    # Line 933
    lw	$a1,30316($s0)
    negu	$a1,$a1
    mtc1	$a1,$f21
    cvt.d.w	$f21,$f21
    div.d	$f21,$f21,$f25
    # Line 932
    cvt.s.d	$f23,$f23
    swc1	$f23,30508($s0)
    # Line 933
    cvt.s.d	$f21,$f21
    b	.L0d949208
    swc1	$f21,30512($s0)
.L0d948ff8:
    # Line 948
    beqz	$a4,.L0d949354
    nop
    beqz	$a7,.L0d9490a8
    nop
    # Line 953
    lwc1	$f7,30284($a0)
    lwc1	$f6,30300($a0)
    lwc1	$f8,0($a2)
    madd.s	$f8,$f8,$f16,$f7
    madd.s	$f8,$f8,$f17,$f6
    # Line 954
    madd.s	$f6,$f6,$f24,$f7
    # Line 956
    lwc1	$f2,30304($a0)
    lwc1	$f3,30288($a0)
    # Line 953
    swc1	$f8,30208($a0)
    # Line 954
    swc1	$f6,30252($a0)
    # Line 955
    sub.s	$f6,$f6,$f7
    swc1	$f6,30268($a0)
    # Line 956
    lwc1	$f4,4($a2)
    madd.s	$f4,$f4,$f16,$f3
    madd.s	$f4,$f4,$f17,$f2
    # Line 957
    madd.s	$f2,$f2,$f24,$f3
    # Line 960
    lwc1	$f27,30308($a0)
    lwc1	$f0,30292($a0)
    # Line 956
    swc1	$f4,30212($a0)
    # Line 957
    swc1	$f2,30256($a0)
    # Line 958
    sub.s	$f2,$f2,$f3
    swc1	$f2,30272($a0)
    # Line 960
    lwc1	$f1,8($a2)
    madd.s	$f1,$f1,$f16,$f0
    madd.s	$f1,$f1,$f17,$f27
    # Line 961
    madd.s	$f27,$f27,$f24,$f0
    # Line 964
    lwc1	$f31,30312($a0)
    lwc1	$f29,30296($a0)
    # Line 960
    swc1	$f1,30216($a0)
    # Line 961
    swc1	$f27,30260($a0)
    # Line 962
    sub.s	$f27,$f27,$f0
    swc1	$f27,30276($a0)
    # Line 965
    madd.s	$f27,$f31,$f24,$f29
    # Line 964
    lwc1	$f25,12($a2)
    madd.s	$f25,$f25,$f16,$f29
    madd.s	$f25,$f25,$f17,$f31
    # Line 965
    swc1	$f27,30264($a0)
    # Line 966
    sub.s	$f29,$f27,$f29
    swc1	$f29,30280($a0)
    # Line 964
    swc1	$f25,30220($a0)
.L0d9490a8:
    # Line 966
    andi	$a2,$a5,0x8
    beqz	$a2,.L0d94912c
    # Line 979
    ldc1	$f15,128($sp)
    ldc1	$f23,32432($s0)
    ldc1	$f27,32440($s0)
    # Line 972
    cvt.d.s	$f10,$f24
    # Line 975
    ldc1	$f14,32416($s0)
    # Line 971
    ldc1	$f11,32400($s0)
    # Line 980
    madd.d	$f21,$f27,$f23,$f10
    # Line 975
    ldc1	$f25,32424($s0)
    # Line 971
    ldc1	$f16,32408($s0)
    # Line 976
    madd.d	$f13,$f25,$f14,$f10
    # Line 971
    cvt.d.s	$f9,$f20
    # Line 972
    madd.d	$f10,$f16,$f11,$f10
    # Line 979
    madd.d	$f15,$f15,$f23,$f9
    # Line 971
    cvt.d.s	$f17,$f22
    # Line 975
    madd.d	$f12,$f19,$f14,$f9
    # Line 971
    madd.d	$f9,$f18,$f11,$f9
    # Line 979
    madd.d	$f15,$f15,$f27,$f17
    # Line 972
    sdc1	$f10,32448($s0)
    # Line 976
    sdc1	$f13,32464($s0)
    # Line 975
    madd.d	$f12,$f12,$f25,$f17
    # Line 980
    sdc1	$f21,32480($s0)
    # Line 981
    sub.d	$f21,$f21,$f23
    # Line 971
    madd.d	$f9,$f9,$f16,$f17
    # Line 981
    sdc1	$f21,32488($s0)
    # Line 977
    sub.d	$f13,$f13,$f14
    # Line 979
    sdc1	$f15,32392($s0)
    # Line 977
    sdc1	$f13,32472($s0)
    # Line 973
    sub.d	$f10,$f10,$f11
    # Line 975
    sdc1	$f12,32384($s0)
    # Line 973
    sdc1	$f10,32456($s0)
    # Line 971
    sdc1	$f9,32376($s0)
.L0d94912c:
    # Line 987
    beqz	$t0,.L0d949270
    nop
    # Line 992
    lwc1	$f4,30336($s0)
    lwc1	$f6,30332($s0)
    madd.s	$f17,$f6,$f24,$f4
    # Line 994
    lw	$a3,1792($s0)
    sub.s	$f16,$f17,$f4
    dsll32	$a3,$a3,0x7
    # Line 993
    trunc.w.s	$f17,$f17
    swc1	$f17,30316($s0)
    # Line 994
    trunc.w.s	$f16,$f16
    bgez	$a3,.L0d949258
    swc1	$f16,30320($s0)
    sdc1	$f5,32($sp)
    # Line 996
    # lw $t9, -25208($gp) # &__glPolygonOffsetZ
    sd	$a6,40($sp)
    sd	$a5,48($sp)
    mov.s	$f14,$f20
    move	$a0,$s0
    sd	$ra,56($sp)
    jal	__glPolygonOffsetZ
    mov.s	$f15,$f22
    lwc1	$f4,30336($s0)
    ld	$ra,56($sp)
    ld	$a5,48($sp)
    dmtc1	$zero,$f19
    ld	$a6,40($sp)
    cvt.d.s	$f18,$f4
    lw	$a0,30320($s0)
    # Line 999
    lw	$a1,30316($s0)
    # Line 996
    c.eq.d $f18,$f19
    ldc1	$f5,32($sp)
    negu	$a0,$a0
    sw	$v0,30204($s0)
    # Line 999
    negu	$a1,$a1
    # Line 1001
    mtc1	$a0,$f10
    # Line 998
    ldc1	$f25,_lit8_3ee4f8b588e368f1
    # Line 996
    bc1f .L0d9492f8
    # Line 999
    mtc1	$a1,$f21
    cvt.d.w	$f21,$f21
    div.d	$f21,$f21,$f25
    # Line 998
    mtc1	$a0,$f23
    cvt.d.w	$f23,$f23
    div.d	$f23,$f23,$f25
    # Line 999
    cvt.s.d	$f21,$f21
    swc1	$f21,30512($s0)
    # Line 998
    cvt.s.d	$f23,$f23
    # Line 999
    b	.L0d949270
    # Line 998
    swc1	$f23,30508($s0)
.L0d9491f0:
    # Line 939
    lwc1	$f25,136($a1)
    madd.s	$f25,$f25,$f20,$f4
    madd.s	$f25,$f25,$f22,$f6
    trunc.l.s	$f25,$f25
    dmfc1	$a2,$f25
    sw	$a2,30204($s0)
.L0d949208:
    # Line 943
    bnez	$a6,.L0d94921c
    andi	$a3,$a5,0x2008
    li	$a4,8200
    bne	$a3,$a4,.L0d9492c0
    nop
.L0d94921c:
    # Line 946
    lwc1	$f29,30432($s0)
    lwc1	$f0,30428($s0)
    # Line 947
    madd.s	$f31,$f0,$f24,$f29
    # Line 946
    madd.s	$f27,$f5,$f20,$f29
    # Line 1017
    ldc1	$f20,8($sp)
    # Line 946
    madd.s	$f27,$f27,$f22,$f0
    # Line 1017
    ldc1	$f24,16($sp)
    ldc1	$f22,0($sp)
    # Line 947
    swc1	$f31,30420($s0)
    # Line 948
    add.s	$f29,$f29,$f31
    swc1	$f29,30424($s0)
    # Line 946
    swc1	$f27,30244($s0)
    # Line 1017
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d949258:
    # Line 1005
    lwc1	$f1,136($a1)
    madd.s	$f1,$f1,$f20,$f4
    madd.s	$f1,$f1,$f22,$f6
    trunc.l.s	$f1,$f1
    dmfc1	$a7,$f1
    sw	$a7,30204($s0)
.L0d949270:
    # Line 1009
    bnez	$a6,.L0d949284
    andi	$t0,$a5,0x2008
    li	$t1,8200
    bne	$t0,$t1,.L0d9492c0
    nop
.L0d949284:
    # Line 1012
    lwc1	$f4,30432($s0)
    lwc1	$f6,30428($s0)
    # Line 1013
    madd.s	$f3,$f6,$f24,$f4
    # Line 1012
    madd.s	$f2,$f5,$f20,$f4
    # Line 1017
    ldc1	$f20,8($sp)
    # Line 1012
    madd.s	$f2,$f2,$f22,$f6
    # Line 1017
    ldc1	$f24,16($sp)
    ldc1	$f22,0($sp)
    # Line 1013
    swc1	$f3,30420($s0)
    # Line 1014
    sub.s	$f3,$f3,$f4
    swc1	$f3,30424($s0)
    # Line 1012
    swc1	$f2,30244($s0)
    # Line 1017
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9492c0:
    ld	$s0,24($sp)
    ldc1	$f20,8($sp)
    ldc1	$f22,0($sp)
    ldc1	$f24,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0d9492d8:
    # Line 936
    cvt.s.w	$f7,$f7
    div.s	$f7,$f7,$f4
    # Line 935
    mtc1	$a0,$f8
    cvt.s.w	$f8,$f8
    div.s	$f8,$f8,$f4
    # Line 936
    swc1	$f7,30512($s0)
    b	.L0d949208
    # Line 935
    swc1	$f8,30508($s0)
.L0d9492f8:
    # Line 1001
    cvt.s.w	$f10,$f10
    div.s	$f10,$f10,$f4
    # Line 1002
    lw	$t3,30316($s0)
    negu	$t3,$t3
    mtc1	$t3,$f9
    cvt.s.w	$f9,$f9
    div.s	$f9,$f9,$f4
    # Line 1001
    swc1	$f10,30508($s0)
    b	.L0d949270
    # Line 1002
    swc1	$f9,30512($s0)
.L0d949320:
    # Line 913
    beqz	$a7,.L0d948f2c
    nop
    # Line 917
    lwc1	$f13,30284($a0)
    lwc1	$f14,30300($a0)
    lwc1	$f11,0($a2)
    # Line 918
    madd.s	$f12,$f14,$f24,$f13
    # Line 917
    madd.s	$f11,$f11,$f16,$f13
    madd.s	$f11,$f11,$f17,$f14
    # Line 918
    swc1	$f12,30252($a0)
    # Line 919
    add.s	$f12,$f12,$f13
    swc1	$f12,30268($a0)
    b	.L0d948f2c
    # Line 917
    swc1	$f11,30208($a0)
.L0d949354:
    # Line 981
    beqz	$a7,.L0d94912c
    nop
    # Line 985
    lwc1	$f14,30284($a0)
    lwc1	$f15,30300($a0)
    lwc1	$f12,0($a2)
    # Line 986
    madd.s	$f13,$f15,$f24,$f14
    # Line 985
    madd.s	$f12,$f12,$f16,$f14
    madd.s	$f12,$f12,$f17,$f15
    # Line 986
    swc1	$f13,30252($a0)
    # Line 987
    sub.s	$f13,$f13,$f14
    swc1	$f13,30268($a0)
    b	.L0d94912c
    # Line 985
    swc1	$f12,30208($a0)
.end SetInitialParameters

# Function: __glCrmFillSlowTriangle
# Declared: Line 1019 (Source lines: 1022-1307)
# Address: 0x0d949390 - 0x0d94a044 (Size: 3252 bytes, Frame: 144)
.globl __glCrmFillSlowTriangle
.ent __glCrmFillSlowTriangle
__glCrmFillSlowTriangle:
    # Line 1040
    lwc1	$f5,30184($a0)
    # Line 1044
    lw	$v1,8($a2)
    # Line 1022
    addiu	$sp,$sp,-272
    # Line 1044
    sd	$v1,120($sp)
    # Line 1022
    sd	$s6,128($sp)
    # Line 1043
    lw	$s6,8($a1)
    # Line 1022
    sdc1	$f30,96($sp)
    # Line 1042
    lwc1	$f30,30192($a0)
    # Line 1022
    sd	$a4,176($sp)
    sdc1	$f22,104($sp)
    # Line 1041
    lwc1	$f22,30188($a0)
    # Line 1022
    sdc1	$f24,112($sp)
    # Line 1039
    lwc1	$f24,30180($a0)
    sdc1	$f20,192($sp)
    sdc1	$f26,200($sp)
    sdc1	$f28,208($sp)
    sd	$ra,248($sp)
    sd	$s5,256($sp)
    # Line 1022
    sd	$s1,168($sp)
    sd	$s3,136($sp)
    sd	$s2,144($sp)
    # Line 1035
    lwc1	$f7,30176($a0)
    # Line 1022
    sd	$s4,152($sp)
    move	$s2,$a3
    move	$s3,$a2
    # Line 1038
    lw	$s4,30436($a0)
    # Line 1022
    move	$s1,$a1
    lui	$v0,0x10
    # Line 1035
    lwc1	$f6,3544($a0)
    # Line 1022
    sd	$s0,160($sp)
    addiu	$v0,$v0,31228
    # Line 1044
    andi	$at,$s4,0x1
    # Line 1022
    move	$s0,$a0
    sd	$gp,184($sp)
    addu	$gp,$t9,$v0
    sd	$s7,264($sp)
    # Line 1044
    andi	$a6,$s4,0x2
    beqz	$at,.L0d949cf8
    # Line 1035
    div.s	$f6,$f6,$f7
    # Line 1044
    beqz	$a6,.L0d949d64
    nop
    # Line 1060
    lw	$a1,8($a3)
    # Line 1062
    ld	$a0,120($sp)
    # Line 1061
    lwc1	$f21,0($a1)
    # Line 1062
    lwc1	$f23,0($a0)
    # Line 1064
    mul.s	$f13,$f6,$f24
    # Line 1061
    lwc1	$f19,0($s6)
    # Line 1064
    mul.s	$f9,$f6,$f5
    # Line 1063
    mul.s	$f8,$f6,$f22
    # Line 1062
    sub.s	$f23,$f23,$f21
    # Line 1063
    mul.s	$f11,$f6,$f30
    # Line 1061
    sub.s	$f19,$f19,$f21
    # Line 1063
    mul.s	$f21,$f8,$f23
    msub.s	$f21,$f21,$f11,$f19
    # Line 1064
    mul.s	$f19,$f9,$f19
    msub.s	$f19,$f19,$f13,$f23
    swc1	$f19,30300($s0)
    # Line 1063
    swc1	$f21,30284($s0)
    # Line 1065
    lwc1	$f17,4($a1)
    # Line 1066
    lwc1	$f18,4($a0)
    # Line 1065
    lwc1	$f16,4($s6)
    # Line 1066
    sub.s	$f18,$f18,$f17
    # Line 1065
    sub.s	$f16,$f16,$f17
    # Line 1067
    mul.s	$f17,$f8,$f18
    msub.s	$f17,$f17,$f16,$f11
    # Line 1068
    mul.s	$f16,$f9,$f16
    msub.s	$f16,$f16,$f18,$f13
    swc1	$f16,30304($s0)
    # Line 1067
    swc1	$f17,30288($s0)
    # Line 1069
    lwc1	$f14,8($a1)
    # Line 1070
    lwc1	$f15,8($a0)
    # Line 1069
    lwc1	$f12,8($s6)
    # Line 1070
    sub.s	$f15,$f15,$f14
    # Line 1069
    sub.s	$f12,$f12,$f14
    # Line 1071
    mul.s	$f14,$f8,$f15
    msub.s	$f14,$f14,$f12,$f11
    # Line 1072
    mul.s	$f12,$f9,$f12
    msub.s	$f12,$f12,$f15,$f13
    swc1	$f12,30308($s0)
    # Line 1071
    swc1	$f14,30292($s0)
    # Line 1073
    lwc1	$f14,12($a1)
    lwc1	$f10,12($s6)
    # Line 1074
    lwc1	$f12,12($a0)
    # Line 1073
    sub.s	$f10,$f10,$f14
    # Line 1074
    sub.s	$f12,$f12,$f14
    # Line 1076
    mul.s	$f9,$f9,$f10
    msub.s	$f9,$f9,$f12,$f13
    # Line 1075
    mul.s	$f8,$f8,$f12
    msub.s	$f8,$f8,$f10,$f11
    # Line 1076
    swc1	$f9,30312($s0)
    # Line 1075
    swc1	$f8,30296($s0)
.L0d9494fc:
    # Line 1082
    andi	$a2,$s4,0x8
    beqz	$a2,.L0d949970
    # Line 1218
    andi	$t1,$s4,0x4000
    # Line 1092
    lwc1	$f11,60($s1)
    # Line 1096
    ldc1	$f15,_lit8_3ff0000000000000
    cvt.d.s	$f25,$f11
    c.eq.d	$f25,$f15
    # Line 1094
    lwc1	$f10,60($s2)
    # Line 1093
    lwc1	$f9,60($s3)
    # Line 1096
    bc1f	.L0d949548
    # Line 1089
    lw	$s5,28208($s0)
    # Line 1096
    cvt.d.s	$f27,$f9
    c.eq.d $f27,$f15
    bc1f .L0d94954c
    lwc1	$f4,_lit_37000000
    cvt.d.s	$f29,$f10
    c.eq.d $f29,$f15
    bc1t .L0d949f5c
    # Line 1120
    li	$a3,1
.L0d949548:
    # Line 1096
    lwc1	$f4,_lit_37000000
.L0d94954c:
    abs.s	$f31,$f11
    c.lt.s $f31,$f4
    bc1f .L0d94956c
    mtc1	$zero,$f1
    # Line 1097
    lwc1	$f0,_lit_b7000000
    # Line 1096
    c.lt.s $f11,$f1
    movf.s	$f0,$f4,$fcc4
    # Line 1097
    mov.s	$f11,$f0
.L0d94956c:
    abs.s	$f2,$f9
    c.lt.s $f2,$f4
    bc1f .L0d94958c
    mtc1	$zero,$f7
    # Line 1098
    lwc1	$f3,_lit_b7000000
    # Line 1097
    c.lt.s $f9,$f7
    movf.s	$f3,$f4,$fcc6
    # Line 1098
    mov.s	$f9,$f3
.L0d94958c:
    abs.s	$f8,$f10
    c.lt.s $f8,$f4
    bc1f .L0d9495b4
    # Line 1106
    lwc1	$f13,_lit_3f800000
    # Line 1098
    mtc1	$zero,$f13
    # Line 1099
    lwc1	$f12,_lit_b7000000
    # Line 1098
    c.lt.s	$f10,$f13
    movf.s	$f12,$f4,$fcc0
    # Line 1099
    mov.s	$f10,$f12
    # Line 1106
    lwc1	$f13,_lit_3f800000
.L0d9495b4:
    # Line 1108
    div.s	$f12,$f13,$f10
    # Line 1107
    div.s	$f14,$f13,$f9
    # Line 1106
    div.s	$f13,$f13,$f11
    # Line 1108
    lw	$a4,232($s5)
    # Line 1102
    lwc1	$f28,140($s2)
    # Line 1101
    lwc1	$f26,140($s3)
    # Line 1100
    lwc1	$f20,140($s1)
    # Line 1102
    mul.s	$f28,$f28,$f10
    # Line 1108
    lwc1	$f7,48($s2)
    # Line 1101
    mul.s	$f26,$f26,$f9
    # Line 1107
    lwc1	$f8,48($s3)
    # Line 1100
    mul.s	$f20,$f20,$f11
    # Line 1106
    lwc1	$f4,48($s1)
    # Line 1108
    li	$a3,1
    # Line 1102
    cvt.d.s	$f28,$f28
    # Line 1108
    mul.s	$f7,$f7,$f12
    # Line 1101
    cvt.d.s	$f26,$f26
    # Line 1107
    mul.s	$f8,$f8,$f14
    # Line 1108
    move	$a0,$a4
    # Line 1100
    cvt.d.s	$f20,$f20
    # Line 1108
    beq	$a4,$a3,.L0d949630
    # Line 1106
    mul.s	$f4,$f4,$f13
    # Line 1112
    lwc1	$f18,52($s2)
    # Line 1111
    lwc1	$f17,52($s3)
    # Line 1110
    lwc1	$f16,52($s1)
    # Line 1112
    mul.s	$f18,$f18,$f12
    swc1	$f18,24($sp)
    # Line 1111
    mul.s	$f17,$f17,$f14
    swc1	$f17,20($sp)
    # Line 1110
    mul.s	$f16,$f16,$f13
    swc1	$f16,16($sp)
.L0d949630:
    # Line 1121
    lw	$a5,4($s5)
    li	$a7,10497
    beq	$a7,$a5,.L0d949d98
    # Line 1136
    lwc1	$f19,_lit_3f800000
    # Line 1137
    add.s	$f8,$f8,$f19
    # Line 1138
    add.s	$f7,$f7,$f19
    c.lt.s $f7,$f8
    li	$a1,1
    # Line 1139
    mov.s	$f10,$f8
    # Line 1138
    movf	$a1,$zero,$fcc2
    # Line 1136
    add.s	$f4,$f4,$f19
    movz.s	$f10,$f7,$a1
    # Line 1139
    c.lt.s $f10,$f4
    mov.s	$f9,$f4
    # Line 1138
    mov.s	$f11,$f7
    # Line 1139
    bc1f .L0d949678
    # Line 1138
    mov.s	$f13,$f8
    # Line 1139
    mov.s	$f10,$f4
.L0d949678:
    lwc1	$f21,_lit_40e00000
    c.lt.s $f21,$f10
    bc1t .L0d9496bc
    li	$s7,1
    c.lt.s $f13,$f11
    mov.s	$f10,$f13
    li	$a1,1
    movf	$a1,$zero,$fcc5
    movz.s	$f10,$f11,$a1
    c.lt.s $f9,$f10
    bc1t .L0d9496ac
    nop
    mov.s	$f9,$f10
.L0d9496ac:
    lwc1	$f23,_lit_c0e00000
    c.lt.s $f9,$f23
    bc1f .L0d949d5c
    li	$s7,1
.L0d9496bc:
    beq	$a0,$a3,.L0d949e78
    # Line 1144
    lwc1	$f9,_lit_3f800000
.L0d9496c4:
    lw	$a6,8($s5)
    lwc1	$f9,16($sp)
    lwc1	$f10,20($sp)
    beq	$a7,$a6,.L0d949e88
    lwc1	$f11,24($sp)
    # Line 1156
    lwc1	$f25,_lit_3f800000
    # Line 1157
    add.s	$f10,$f10,$f25
    # Line 1158
    add.s	$f11,$f11,$f25
    c.lt.s	$f11,$f10
    li	$a0,1
    # Line 1159
    mov.s	$f13,$f10
    # Line 1158
    movf	$a0,$zero,$fcc0
    # Line 1156
    add.s	$f9,$f9,$f25
    movz.s	$f13,$f11,$a0
    # Line 1159
    c.lt.s $f13,$f9
    mov.s	$f12,$f9
    # Line 1158
    mov.s	$f16,$f11
    # Line 1159
    bc1f .L0d949714
    # Line 1158
    mov.s	$f14,$f10
    # Line 1159
    mov.s	$f13,$f9
.L0d949714:
    lwc1	$f27,_lit_40e00000
    c.lt.s $f27,$f13
    bc1t .L0d949758
    li	$s5,1
    c.lt.s $f14,$f16
    mov.s	$f13,$f14
    li	$a0,1
    movf	$a0,$zero,$fcc3
    movz.s	$f13,$f16,$a0
    c.lt.s $f12,$f13
    bc1t .L0d949748
    nop
    mov.s	$f12,$f13
.L0d949748:
    lwc1	$f29,_lit_c0e00000
    c.lt.s $f12,$f29
    bc1f .L0d949d90
    li	$s5,1
.L0d949758:
    # Line 1166
    dmtc1	$zero,$f14
    c.le.d $f20,$f14
    bc1t .L0d949780
    nop
    c.le.d $f26,$f14
    bc1t .L0d949780
    nop
    c.le.d $f28,$f14
    bc1f .L0d94983c
    nop
.L0d949780:
    c.lt.d $f26,$f28
    # Line 1167
    mov.d	$f13,$f26
    # Line 1166
    li	$a0,1
    movf	$a0,$zero,$fcc1
    movz.d	$f13,$f28,$a0
    # Line 1167
    c.lt.d	$f20,$f13
    bc1f	.L0d9497c8
    nop
    swc1	$f11,24($sp)
    swc1	$f10,20($sp)
    swc1	$f9,16($sp)
    sdc1	$f8,216($sp)
    sdc1	$f7,224($sp)
    sdc1	$f4,232($sp)
    sdc1	$f6,240($sp)
    mov.d	$f13,$f20
    b	.L0d9497e8
    sdc1	$f5,88($sp)
.L0d9497c8:
    swc1	$f11,24($sp)
    swc1	$f10,20($sp)
    swc1	$f9,16($sp)
    sdc1	$f8,216($sp)
    sdc1	$f7,224($sp)
    sdc1	$f4,232($sp)
    sdc1	$f6,240($sp)
    sdc1	$f5,88($sp)
.L0d9497e8:
    # Line 1168
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    cvt.s.d	$f12,$f13
    # Line 1169
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f31,_lit_37000000
    ldc1	$f5,88($sp)
    ldc1	$f6,240($sp)
    ldc1	$f4,232($sp)
    sub.s	$f31,$f31,$f0
    ldc1	$f7,224($sp)
    ldc1	$f8,216($sp)
    cvt.d.s	$f31,$f31
    lwc1	$f9,16($sp)
    lwc1	$f10,20($sp)
    # Line 1171
    add.d	$f28,$f31,$f28
    lwc1	$f11,24($sp)
    # Line 1170
    add.d	$f26,$f31,$f26
    dmtc1	$zero,$f14
    ldc1	$f15,_lit8_3ff0000000000000
    # Line 1169
    add.d	$f20,$f31,$f20
.L0d94983c:
    # Line 1171
    c.lt.d $f28,$f26
    # Line 1173
    mov.d	$f12,$f26
    # Line 1171
    li	$a0,1
    movf	$a0,$zero,$fcc3
    movz.d	$f12,$f28,$a0
    # Line 1173
    c.lt.d $f12,$f20
    bc1f .L0d949860
    nop
    mov.d	$f12,$f20
.L0d949860:
    # Line 1174
    c.eq.d $f12,$f14
    bc1t .L0d949b98
    nop
    c.eq.d $f12,$f15
    bc1t .L0d949894
    nop
    # Line 1176
    div.d	$f1,$f15,$f12
    # Line 1177
    mul.d	$f26,$f1,$f26
    sdc1	$f26,40($sp)
    # Line 1176
    mul.d	$f20,$f1,$f20
    # Line 1178
    mul.d	$f28,$f1,$f28
    b	.L0d94989c
    # Line 1176
    sdc1	$f20,32($sp)
.L0d949894:
    # Line 1178
    sdc1	$f26,40($sp)
    sdc1	$f20,32($sp)
.L0d94989c:
    # Line 1189
    cvt.d.s	$f25,$f9
    # Line 1194
    cvt.d.s	$f12,$f11
    # Line 1189
    mul.d	$f25,$f25,$f20
    # Line 1194
    nmsub.d	$f27,$f25,$f12,$f28
    # Line 1190
    cvt.d.s	$f29,$f10
    # Line 1182
    cvt.d.s	$f23,$f8
    # Line 1190
    mul.d	$f29,$f29,$f26
    # Line 1181
    cvt.d.s	$f19,$f4
    # Line 1194
    nmsub.d	$f12,$f29,$f12,$f28
    # Line 1182
    mul.d	$f23,$f23,$f26
    # Line 1181
    mul.d	$f19,$f19,$f20
    # Line 1199
    sub.d	$f14,$f26,$f28
    # Line 1187
    mul.s	$f3,$f6,$f5
    # Line 1199
    sub.d	$f16,$f20,$f28
    # Line 1187
    mul.s	$f21,$f6,$f24
    # Line 1186
    mul.s	$f2,$f6,$f22
    # Line 1187
    cvt.d.s	$f3,$f3
    # Line 1186
    mul.s	$f15,$f6,$f30
    # Line 1187
    cvt.d.s	$f21,$f21
    # Line 1186
    cvt.d.s	$f2,$f2
    # Line 1200
    mul.d	$f17,$f16,$f3
    # Line 1186
    cvt.d.s	$f15,$f15
    # Line 1200
    msub.d	$f17,$f17,$f14,$f21
    # Line 1186
    cvt.d.s	$f18,$f7
    # Line 1199
    mul.d	$f14,$f14,$f2
    msub.d	$f14,$f14,$f16,$f15
    # Line 1186
    nmsub.d	$f16,$f19,$f18,$f28
    # Line 1195
    mul.d	$f13,$f3,$f27
    # Line 1202
    li	$a7,4
    # Line 1186
    nmsub.d	$f18,$f23,$f18,$f28
    # Line 1203
    move	$t0,$a7
    # Line 1202
    movz	$a7,$zero,$s7
    sw	$a7,32496($s0)
    # Line 1195
    msub.d	$f13,$f13,$f21,$f12
    # Line 1203
    movz	$t0,$zero,$s5
    sw	$t0,32500($s0)
    # Line 1194
    mul.d	$f12,$f2,$f12
    # Line 1190
    sdc1	$f29,72($sp)
    # Line 1194
    msub.d	$f12,$f12,$f15,$f27
    # Line 1189
    sdc1	$f25,64($sp)
    # Line 1187
    mul.d	$f3,$f3,$f16
    # Line 1182
    sdc1	$f23,56($sp)
    # Line 1187
    msub.d	$f3,$f3,$f21,$f18
    # Line 1181
    sdc1	$f19,48($sp)
    # Line 1186
    mul.d	$f2,$f2,$f18
    # Line 1200
    sdc1	$f17,32440($s0)
    # Line 1186
    msub.d	$f2,$f2,$f15,$f16
    # Line 1199
    sdc1	$f14,32432($s0)
    # Line 1195
    sdc1	$f13,32424($s0)
    # Line 1194
    sdc1	$f12,32416($s0)
    # Line 1187
    sdc1	$f3,32408($s0)
    # Line 1186
    sdc1	$f2,32400($s0)
.L0d94996c:
    # Line 1218
    andi	$t1,$s4,0x4000
.L0d949970:
    beqz	$t1,.L0d9499cc
    # Line 1232
    andi	$t3,$s4,0x1000
    # Line 1224
    lwc1	$f3,136($s2)
    lwc1	$f31,136($s1)
    # Line 1227
    mul.s	$f2,$f6,$f5
    # Line 1225
    lwc1	$f0,136($s3)
    # Line 1227
    mul.s	$f1,$f6,$f24
    # Line 1226
    mul.s	$f29,$f6,$f30
    # Line 1224
    sub.s	$f31,$f31,$f3
    # Line 1225
    sub.s	$f0,$f0,$f3
    # Line 1226
    mul.s	$f3,$f6,$f22
    mul.s	$f29,$f29,$f31
    nmsub.s	$f29,$f29,$f0,$f3
    # Line 1227
    mul.s	$f31,$f31,$f2
    msub.s	$f31,$f31,$f0,$f1
    # Line 1228
    trunc.w.s	$f27,$f29
    # Line 1227
    swc1	$f31,30332($s0)
    # Line 1226
    swc1	$f29,30336($s0)
    # Line 1228
    mfc1	$t2,$f27
    swc1	$f27,30324($s0)
    # Line 1229
    sll	$t2,$t2,0x5
    sw	$t2,30328($s0)
    # Line 1232
    andi	$t3,$s4,0x1000
.L0d9499cc:
    beqz	$t3,.L0d949d48
    li	$v1,8200
    lw	$t8,1912($s0)
.L0d9499d8:
    li	$t9,4354
    bne	$t8,$t9,.L0d9499fc
    nop
    # Line 1241
    lwc1	$f7,104($s2)
    # Line 1240
    lwc1	$f20,104($s3)
    # Line 1239
    lwc1	$f26,104($s1)
    # Line 1240
    swc1	$f20,84($sp)
    # Line 1241
    b	.L0d949a50
    # Line 1239
    swc1	$f26,80($sp)
.L0d9499fc:
    # Line 1244
    lw	$t9,12536($s0)
    sdc1	$f6,240($sp)
    move	$a0,$s0
    sdc1	$f5,88($sp)
    jalr	$t9
    move	$a1,$s1
    # Line 1245
    lw	$t9,12536($s0)
    move	$a1,$s3
    # Line 1244
    mov.s	$f26,$f0
    # Line 1245
    move	$a0,$s0
    jalr	$t9
    # Line 1244
    swc1	$f0,80($sp)
    # Line 1246
    lw	$t9,12536($s0)
    move	$a1,$s2
    # Line 1245
    mov.s	$f20,$f0
    # Line 1246
    move	$a0,$s0
    jalr	$t9
    # Line 1245
    swc1	$f0,84($sp)
    ldc1	$f5,88($sp)
    ldc1	$f6,240($sp)
    # Line 1246
    mov.s	$f7,$f0
.L0d949a50:
    # Line 1251
    mul.s	$f1,$f6,$f5
    # Line 1250
    sub.s	$f3,$f26,$f7
    # Line 1251
    mul.s	$f2,$f6,$f24
    # Line 1250
    sub.s	$f0,$f20,$f7
    # Line 1251
    mul.s	$f1,$f3,$f1
    msub.s	$f1,$f1,$f2,$f0
    # Line 1250
    mul.s	$f4,$f6,$f22
    mul.s	$f2,$f6,$f30
    mul.s	$f0,$f0,$f4
    msub.s	$f0,$f0,$f2,$f3
    # Line 1251
    swc1	$f1,30428($s0)
    # Line 1250
    swc1	$f0,30432($s0)
.L0d949a80:
    # Line 1255
    lwc1	$f20,3540($s0)
    lwc1	$f21,132($s1)
    # Line 1257
    lwc1	$f29,132($s2)
    # Line 1256
    lwc1	$f25,132($s3)
    # Line 1255
    add.s	$f23,$f21,$f20
    # Line 1257
    add.s	$f29,$f29,$f20
    # Line 1255
    trunc.w.s	$f23,$f23
    # Line 1265
    sub.s	$f26,$f21,$f25
    cvt.s.w	$f27,$f23
    # Line 1264
    lwc1	$f28,128($s3)
    # Line 1256
    add.s	$f25,$f20,$f25
    # Line 1264
    lwc1	$f4,128($s1)
    # Line 1257
    trunc.w.s	$f29,$f29
    # Line 1265
    div.s	$f14,$f24,$f22
    ld	$ra,176($sp)
    # Line 1256
    trunc.w.s	$f25,$f25
    # Line 1257
    mfc1	$s7,$f29
    # Line 1265
    add.s	$f20,$f20,$f27
    # Line 1264
    sub.s	$f28,$f4,$f28
    # Line 1256
    mfc1	$s4,$f25
    sdc1	$f5,88($sp)
    # Line 1255
    mfc1	$s5,$f23
    # Line 1265
    beqz	$ra,.L0d949ba4
    sub.s	$f20,$f20,$f21
    # Line 1269
    # lw $t9, -25220($gp) # &__glSnapXLeft
    move	$a0,$s0
    jal	__glSnapXLeft
    madd.s	$f13,$f4,$f14,$f20
    # Line 1271
    lw	$ra,30148($s0)
    mtc1	$ra,$f16
    ldc1	$f19,64($sp)
    ldc1	$f18,48($sp)
    cvt.s.w	$f16,$f16
    lwc1	$f17,3540($s0)
    # lw $t9, -32740($gp) # &sub_0d950000
    lwc1	$f21,128($s1)
    move	$a0,$s0
    ldc1	$f23,32($sp)
    addiu	$t9,$t9,-29280
    add.s	$f16,$f16,$f17
    move	$a1,$s1
    move	$a2,$s6
    lwc1	$f15,80($sp)
    sdc1	$f23,0($sp)
    mov.s	$f17,$f20
    bal __glCrmFillLeftRightTriangle
    sub.s	$f16,$f16,$f21
    bne	$s5,$s4,.L0d949c68
    nop
    # Line 1276
    la	$s1,sub_0d950000
.L0d949b48:
    bne	$s4,$s7,.L0d949ca4
    addiu	$s1,$s1,-30704
.L0d949b50:
    ld	$s6,128($sp)
.L0d949b54:
    ld	$s3,136($sp)
    ld	$s2,144($sp)
    ld	$s4,152($sp)
    ld	$s0,160($sp)
    ld	$s5,256($sp)
    ld	$s1,168($sp)
    ld	$s7,264($sp)
    ldc1	$f30,96($sp)
    ldc1	$f20,192($sp)
    ldc1	$f26,200($sp)
    ldc1	$f28,208($sp)
    ld	$ra,248($sp)
    ldc1	$f22,104($sp)
    ldc1	$f24,112($sp)
    # Line 1307
    ld	$gp,184($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0d949b98:
    # Line 1178
    sdc1	$f26,40($sp)
    b	.L0d94989c
    sdc1	$f20,32($sp)
.L0d949ba4:
    # Line 1289
    # lw $t9, -25216($gp) # &__glSnapXRight
    madd.s	$f13,$f4,$f14,$f20
    jal	__glSnapXRight
    addiu	$a0,$s0,30136
    bne	$s5,$s4,.L0d949fa8
    # Line 1295
    la	$s2,sub_0d950000
.L0d949bbc:
    la	$s1,sub_0d950000
    addiu	$s2,$s2,-29280
    beq	$s4,$s7,.L0d949b50
    addiu	$s1,$s1,-30704
    # Line 1301
    ldc1	$f15,88($sp)
    div.s	$f15,$f15,$f30
    # Line 1300
    mtc1	$s4,$f20
    cvt.s.w	$f20,$f20
    lwc1	$f23,3540($s0)
    lwc1	$f21,132($s3)
    add.s	$f20,$f20,$f23
    # Line 1301
    # lw $t9, -25220($gp) # &__glSnapXLeft
    # Line 1300
    sub.s	$f20,$f20,$f21
    # Line 1301
    lwc1	$f13,128($s3)
    mov.s	$f14,$f15
    move	$a0,$s0
    jal	__glSnapXLeft
    madd.s	$f13,$f13,$f20,$f15
    # Line 1303
    lw	$t8,30148($s0)
    mtc1	$t8,$f16
    ld	$a2,120($sp)
    ldc1	$f19,72($sp)
    cvt.s.w	$f16,$f16
    lwc1	$f17,3540($s0)
    ldc1	$f18,56($sp)
    lwc1	$f21,128($s3)
    move	$t9,$s2
    ldc1	$f23,40($sp)
    add.s	$f16,$f16,$f17
    move	$a0,$s0
    move	$a1,$s3
    lwc1	$f15,84($sp)
    sdc1	$f23,0($sp)
    mov.s	$f17,$f20
    bal __glCrmFillLeftRightTriangle
    sub.s	$f16,$f16,$f21
    # Line 1304
    move	$t9,$s1
    move	$a0,$s0
    move	$a1,$s4
    bal __glCrmFillLeftRightTriangle
    move	$a2,$s7
    b	.L0d949b54
    ld	$s6,128($sp)
.L0d949c68:
    # Line 1274
    div.s	$f15,$f28,$f26
    # lw $t9, -25216($gp) # &__glSnapXRight
    mov.s	$f14,$f15
    lwc1	$f13,128($s1)
    addiu	$a0,$s0,30136
    jal	__glSnapXRight
    madd.s	$f13,$f13,$f15,$f20
    # Line 1276
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,-30704
    move	$a0,$s0
    move	$a1,$s5
    bal __glCrmFillLeftRightTriangle
    move	$a2,$s4
    b	.L0d949b48
    la	$s1,sub_0d950000
.L0d949ca4:
    # Line 1282
    ldc1	$f15,88($sp)
    div.s	$f15,$f15,$f30
    mtc1	$s4,$f16
    cvt.s.w	$f16,$f16
    lwc1	$f18,3540($s0)
    lwc1	$f17,132($s3)
    add.s	$f16,$f16,$f18
    # lw $t9, -25216($gp) # &__glSnapXRight
    sub.s	$f16,$f16,$f17
    lwc1	$f13,128($s3)
    mov.s	$f14,$f15
    addiu	$a0,$s0,30136
    jal	__glSnapXRight
    madd.s	$f13,$f13,$f15,$f16
    # Line 1284
    move	$t9,$s1
    move	$a0,$s0
    move	$a1,$s4
    bal __glCrmFillLeftRightTriangle
    move	$a2,$s7
    b	.L0d949b54
    ld	$s6,128($sp)
.L0d949cf8:
    # Line 1203
    beqz	$a6,.L0d94a030
    nop
    # Line 1212
    lwc1	$f18,0($s6)
    # Line 1211
    lw	$at,8($a3)
    # Line 1213
    ld	$ra,120($sp)
    # Line 1212
    lwc1	$f21,0($at)
    # Line 1213
    lwc1	$f16,0($ra)
    # Line 1215
    mul.s	$f19,$f6,$f24
    mul.s	$f17,$f6,$f5
    # Line 1212
    sub.s	$f18,$f18,$f21
    # Line 1213
    sub.s	$f16,$f16,$f21
    # Line 1214
    mul.s	$f21,$f6,$f22
    # Line 1215
    mul.s	$f17,$f18,$f17
    msub.s	$f17,$f17,$f16,$f19
    # Line 1214
    mul.s	$f19,$f6,$f30
    mul.s	$f16,$f16,$f21
    msub.s	$f16,$f16,$f18,$f19
    # Line 1215
    swc1	$f17,30300($a0)
    b	.L0d94996c
    # Line 1214
    swc1	$f16,30284($a0)
.L0d949d48:
    # Line 1232
    andi	$v0,$s4,0x2008
    bne	$v0,$v1,.L0d949a80
    nop
    b	.L0d9499d8
    lw	$t8,1912($s0)
.L0d949d5c:
    b	.L0d9496bc
    # Line 1139
    move	$s7,$zero
.L0d949d64:
    # Line 1078
    lw	$a0,28072($a0)
    lw	$a0,8($a0)
    # Line 1079
    lwc1	$f25,0($a0)
    swc1	$f25,30208($s0)
    # Line 1080
    lwc1	$f23,4($a0)
    swc1	$f23,30212($s0)
    # Line 1081
    lwc1	$f21,8($a0)
    swc1	$f21,30216($s0)
    # Line 1082
    lwc1	$f19,12($a0)
    b	.L0d9494fc
    swc1	$f19,30220($s0)
.L0d949d90:
    b	.L0d949758
    # Line 1159
    move	$s5,$zero
.L0d949d98:
    # Line 1121
    c.lt.s $f8,$f7
    # Line 1129
    mov.s	$f12,$f8
    # Line 1121
    li	$a1,1
    movf	$a1,$zero,$fcc7
    movz.s	$f12,$f7,$a1
    # Line 1129
    c.lt.s $f4,$f12
    bc1f .L0d949dd4
    nop
    sdc1	$f4,232($sp)
    sdc1	$f8,216($sp)
    sdc1	$f7,224($sp)
    sdc1	$f6,240($sp)
    mov.s	$f12,$f4
    b	.L0d949de8
    sdc1	$f5,88($sp)
.L0d949dd4:
    sdc1	$f8,216($sp)
    sdc1	$f7,224($sp)
    sdc1	$f4,232($sp)
    sdc1	$f6,240($sp)
    sdc1	$f5,88($sp)
.L0d949de8:
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    nop
    # Line 1131
    mtc1	$v0,$f27
    cvt.s.w	$f27,$f27
    lwc1	$f29,_lit_bf800000
    add.s	$f27,$f27,$f29
    trunc.w.s	$f27,$f27
    cvt.s.w	$f27,$f27
    # Line 1132
    ldc1	$f8,216($sp)
    # Line 1133
    ldc1	$f7,224($sp)
    # Line 1132
    sub.s	$f8,$f8,$f27
    # Line 1133
    sub.s	$f7,$f7,$f27
    # Line 1131
    ldc1	$f4,232($sp)
    li	$a3,1
    # Line 1133
    c.lt.s $f7,$f8
    move	$a1,$a3
    # Line 1134
    mov.s	$f10,$f8
    # Line 1133
    movf	$a1,$zero,$fcc1
    # Line 1131
    sub.s	$f4,$f4,$f27
    movz.s	$f10,$f7,$a1
    ldc1	$f5,88($sp)
    ldc1	$f6,240($sp)
    # Line 1134
    c.lt.s	$f10,$f4
    lw	$a0,232($s5)
    ldc1	$f15,_lit8_3ff0000000000000
    li	$a7,10497
    # Line 1133
    nop
    # Line 1134
    li	$s7,1
    bc1f	.L0d949e68
    lwc1	$f29,_lit_41700000
    mov.s	$f10,$f4
.L0d949e68:
    c.lt.s $f29,$f10
    # Line 1139
    bne	$a0,$a3,.L0d9496c4
    # Line 1134
    movf	$s7,$zero,$fcc2
    # Line 1144
    lwc1	$f9,_lit_3f800000
.L0d949e78:
    mov.s	$f11,$f9
    move	$s5,$zero
    b	.L0d949758
    mov.s	$f10,$f9
.L0d949e88:
    c.lt.s $f10,$f11
    # Line 1148
    mov.s	$f13,$f10
    # Line 1144
    li	$a0,1
    movf	$a0,$zero,$fcc4
    movz.s	$f13,$f11,$a0
    # Line 1148
    c.lt.s $f9,$f13
    sdc1	$f8,216($sp)
    sdc1	$f7,224($sp)
    mov.s	$f12,$f9
    bc1f .L0d949ec0
    sdc1	$f4,232($sp)
    sdc1	$f6,240($sp)
    b	.L0d949ecc
    sdc1	$f5,88($sp)
.L0d949ec0:
    sdc1	$f6,240($sp)
    mov.s	$f12,$f13
    sdc1	$f5,88($sp)
.L0d949ecc:
    # lw $t9, -28804($gp) # &__glFloor
    jal	__glFloor
    nop
    # Line 1150
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,_lit_bf800000
    add.s	$f0,$f0,$f1
    trunc.w.s	$f0,$f0
    cvt.s.w	$f0,$f0
    # Line 1151
    lwc1	$f10,20($sp)
    # Line 1152
    lwc1	$f11,24($sp)
    # Line 1151
    sub.s	$f10,$f10,$f0
    # Line 1152
    sub.s	$f11,$f11,$f0
    # Line 1150
    lwc1	$f9,16($sp)
    # Line 1152
    c.lt.s $f11,$f10
    li	$a0,1
    # Line 1153
    mov.s	$f13,$f10
    ldc1	$f5,88($sp)
    # Line 1152
    movf	$a0,$zero,$fcc6
    ldc1	$f6,240($sp)
    # Line 1150
    sub.s	$f9,$f9,$f0
    movz.s	$f13,$f11,$a0
    ldc1	$f4,232($sp)
    ldc1	$f7,224($sp)
    # Line 1153
    c.lt.s $f13,$f9
    ldc1	$f8,216($sp)
    ldc1	$f15,_lit8_3ff0000000000000
    # Line 1152
    nop
    # Line 1153
    li	$s5,1
    lwc1	$f1,_lit_41700000
    bc1t .L0d949f50
    mov.s	$f12,$f9
    mov.s	$f12,$f13
.L0d949f50:
    c.lt.s $f1,$f12
    b	.L0d949758
    movf	$s5,$zero,$fcc7
.L0d949f5c:
    # Line 1115
    lwc1	$f20,140($s1)
    # Line 1117
    lwc1	$f28,140($s2)
    # Line 1116
    lwc1	$f26,140($s3)
    # Line 1120
    lw	$a1,232($s5)
    lwc1	$f7,48($s2)
    # Line 1117
    cvt.d.s	$f28,$f28
    # Line 1119
    lwc1	$f8,48($s3)
    # Line 1116
    cvt.d.s	$f26,$f26
    # Line 1118
    lwc1	$f4,48($s1)
    # Line 1120
    move	$a0,$a1
    beq	$a1,$a3,.L0d949630
    # Line 1115
    cvt.d.s	$f20,$f20
    # Line 1123
    lwc1	$f31,52($s3)
    swc1	$f31,20($sp)
    # Line 1124
    lwc1	$f0,52($s2)
    # Line 1122
    lwc1	$f29,52($s1)
    # Line 1124
    swc1	$f0,24($sp)
    b	.L0d949630
    # Line 1122
    swc1	$f29,16($sp)
.L0d949fa8:
    # Line 1292
    div.s	$f15,$f28,$f26
    # lw $t9, -25220($gp) # &__glSnapXLeft
    lwc1	$f13,128($s1)
    mov.s	$f14,$f15
    move	$a0,$s0
    jal	__glSnapXLeft
    madd.s	$f13,$f13,$f15,$f20
    # Line 1294
    lw	$ra,30148($s0)
    mtc1	$ra,$f16
    ldc1	$f19,64($sp)
    ldc1	$f18,48($sp)
    cvt.s.w	$f16,$f16
    lwc1	$f17,3540($s0)
    # lw $t9, -32740($gp) # &sub_0d950000
    lwc1	$f21,128($s1)
    move	$a2,$s6
    ldc1	$f23,32($sp)
    addiu	$t9,$t9,-29280
    add.s	$f16,$f16,$f17
    move	$a1,$s1
    move	$a0,$s0
    lwc1	$f15,80($sp)
    sdc1	$f23,0($sp)
    mov.s	$f17,$f20
    bal __glCrmFillLeftRightTriangle
    sub.s	$f16,$f16,$f21
    # Line 1295
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,-30704
    move	$a0,$s0
    move	$a1,$s5
    bal __glCrmFillLeftRightTriangle
    move	$a2,$s4
    b	.L0d949bbc
    la	$s2,sub_0d950000
.L0d94a030:
    # Line 1218
    lw	$ra,28072($a0)
    lw	$ra,8($ra)
    lwc1	$f17,0($ra)
    b	.L0d94996c
    swc1	$f17,30208($a0)
.end __glCrmFillSlowTriangle

.rdata
_lit8_3ee4f8b588e368f1:
    .word 0x3ee4f8b5, 0x88e368f1
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_37000000:
    .word 0x37000000
_lit_3f800000:
    .word 0x3f800000
_lit_40e00000:
    .word 0x40e00000
_lit_41700000:
    .word 0x41700000
_lit_b7000000:
    .word 0xb7000000
_lit_bf800000:
    .word 0xbf800000
_lit_c0e00000:
    .word 0xc0e00000

