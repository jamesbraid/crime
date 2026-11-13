# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/mips/mips_zline.ma
# Category: mips
# Compiler Options: 
# Total Functions: 3

.text

# Function: __glDepthTestLine_LESS_asm
# Declared: Line 35 (Source lines: 35-195)
# Address: 0x0d991f10 - 0x0d9920ac (Size: 412 bytes, Frame: 224)
.globl __glDepthTestLine_LESS_asm
.ent __glDepthTestLine_LESS_asm
__glDepthTestLine_LESS_asm:
    # Line 35
    lw	$v0,29872($a0)
    # Line 36
    lw	$v1,3664($a0)
    # Line 37
    lw	$a1,31256($a0)
    # Line 38
    addiu	$sp,$sp,-96
    # Line 39
    sub	$v0,$v0,$v1
    # Line 40
    multu	$v0,$a1
    # Line 41
    sw	$s0,88($sp)
    # Line 42
    sw	$s1,80($sp)
    # Line 43
    sw	$s2,72($sp)
    # Line 44
    sw	$s3,64($sp)
    # Line 45
    sw	$s4,56($sp)
    # Line 46
    sw	$s5,48($sp)
    # Line 47
    sw	$s6,40($sp)
    # Line 55
    lw	$a2,30248($a0)
    # Line 56
    lw	$a3,29880($a0)
    # Line 57
    lw	$t0,29888($a0)
    # Line 58
    lw	$t1,29876($a0)
    # Line 59
    lw	$t2,29884($a0)
    # Line 60
    lw	$t3,29868($a0)
    # Line 61
    lw	$a4,29892($a0)
    # Line 62
    lw	$a5,3660($a0)
    # Line 63
    lw	$a6,29896($a0)
    # Line 66
    lw	$a7,31244($a0)
    # Line 68
    sub	$t3,$t3,$a5
    # Line 69
    mflo	$s0
    # Line 70
    add	$s0,$s0,$t3
    # Line 71
    sll	$s0,$s0,0x2
    # Line 76
    bgtz	$t0,.L0d991f94
    # Line 74
    addu	$s1,$a7,$s0
    # Line 80
    beqz	$t2,.L0d991fa0
    # Line 79
    sub	$a3,$a3,$a1
    # Line 82
    b	.L0d991fa0
    # Line 81
    sub	$t1,$t1,$a1
.L0d991f94:
    # Line 87
    beqz	$t2,.L0d991fa0
    # Line 86
    add	$a3,$a3,$a1
    # Line 88
    add	$t1,$t1,$a1
.L0d991fa0:
    # Line 96
    lw	$s5,31316($a0)
    # Line 106
    addi	$a1,$a2,-1
    # Line 99
    lw	$t9,30324($a0)
    # Line 92
    sll	$s3,$a3,0x2
    # Line 94
    lw	$s4,30472($a0)
    # Line 107
    andi	$a3,$a1,0x1f
    # Line 97
    lw	$s6,31308($a0)
    # Line 91
    sll	$s2,$t1,0x2
    # Line 98
    lw	$t8,30204($a0)
    # Line 103
    move	$v1,$zero
    # Line 101
    lw	$v0,30328($a0)
    # Line 112
    lui	$t0,0x7fff
    # Line 93
    sub	$s3,$s3,$s2
    # Line 108
    addi	$a3,$a3,1
    # Line 109
    srl	$a1,$a1,0x5
    # Line 112
    ori	$t0,$t0,0xffff
    # Line 113
    addi	$t1,$zero,-1
    # Line 100
    srav	$t9,$t9,$s5
.L0d991fe8:
    # Line 116
    srlv	$t2,$t8,$s5
    # Line 118
    move	$t3,$zero
    # Line 119
    bgtz	$a1,.L0d992000
    # Line 117
    addu	$t2,$t2,$s6
    # Line 121
    b	.L0d992004
    # Line 120
    move	$a5,$a3
.L0d992000:
    # Line 124
    li	$a5,32
.L0d992004:
    # Line 127
    lui	$a7,0x8000
.L0d992008:
    # Line 130
    lw	$s0,0($s1)
    # Line 131
    addu	$a4,$a4,$a6
    # Line 132
    addi	$a5,$a5,-1
    # Line 133
    sltu	$at,$t2,$s0
    bnez	$at,.L0d99202c
    nop
    # Line 136
    addi	$v1,$v1,1
    # Line 138
    b	.L0d992030
    # Line 137
    or	$t3,$t3,$a7
.L0d99202c:
    # Line 142
    sw	$t2,0($s1)
.L0d992030:
    # Line 146
    bgez	$a4,.L0d992040
    # Line 145
    addu	$t2,$t2,$t9
    # Line 149
    addu	$s1,$s1,$s3
    # Line 150
    and	$a4,$a4,$t0
.L0d992040:
    # Line 154
    addu	$s1,$s1,$s2
    # Line 157
    bgtz	$a5,.L0d992008
    # Line 155
    srl	$a7,$a7,0x1
    # Line 162
    addi	$a1,$a1,-1
    # Line 159
    xor	$t3,$t3,$t1
    # Line 161
    addi	$s4,$s4,4
    # Line 160
    sw	$t3,-4($s4)
    # Line 165
    bgez	$a1,.L0d991fe8
    # Line 163
    addu	$t8,$t8,$v0
    # Line 169
    lw	$s0,88($sp)
    # Line 170
    lw	$s1,80($sp)
    # Line 171
    lw	$s2,72($sp)
    # Line 172
    lw	$s3,64($sp)
    # Line 173
    lw	$s4,56($sp)
    # Line 174
    lw	$s5,48($sp)
    # Line 175
    lw	$s6,40($sp)
    # Line 179
    bnez	$v1,.L0d992090
    # Line 176
    addiu	$sp,$sp,96
    # Line 183
    jr	$ra
    # Line 182
    li	$v0,0
.L0d992090:
    # Line 187
    beq	$v1,$a2,.L0d9920a0
    nop
    # Line 189
    jr	$ra
    # Line 188
    li	$v0,1
.L0d9920a0:
    # Line 193
    li	$v0,1
    # Line 195
    jr	$ra
    # Line 194
    sb	$v0,30476($a0)
.end __glDepthTestLine_LESS_asm

# Function: __glDepthTestLine_LESS_s_asm
# Declared: Line 209 (Source lines: 209-369)
# Address: 0x0d9920ac - 0x0d992248 (Size: 412 bytes, Frame: 224)
.globl __glDepthTestLine_LESS_s_asm
.ent __glDepthTestLine_LESS_s_asm
__glDepthTestLine_LESS_s_asm:
    # Line 209
    lw	$t8,29872($a0)
    # Line 210
    lw	$t9,3664($a0)
    # Line 211
    lw	$v0,31256($a0)
    # Line 212
    addiu	$sp,$sp,-96
    # Line 213
    sub	$t8,$t8,$t9
    # Line 214
    multu	$t8,$v0
    # Line 215
    sw	$s0,88($sp)
    # Line 216
    sw	$s1,80($sp)
    # Line 217
    sw	$s2,72($sp)
    # Line 218
    sw	$s3,64($sp)
    # Line 219
    sw	$s4,56($sp)
    # Line 220
    sw	$s5,48($sp)
    # Line 221
    sw	$s6,40($sp)
    # Line 229
    lw	$v1,30248($a0)
    # Line 230
    lw	$a1,29880($a0)
    # Line 231
    lw	$a2,29888($a0)
    # Line 232
    lw	$a3,29876($a0)
    # Line 233
    lw	$t0,29884($a0)
    # Line 234
    lw	$t1,29868($a0)
    # Line 235
    lw	$t2,29892($a0)
    # Line 236
    lw	$t3,3660($a0)
    # Line 237
    lw	$a4,29896($a0)
    # Line 240
    lw	$a5,31244($a0)
    # Line 242
    sub	$t1,$t1,$t3
    # Line 243
    mflo	$a6
    # Line 244
    add	$a6,$a6,$t1
    # Line 245
    sll	$a6,$a6,0x2
    # Line 250
    bgtz	$a2,.L0d992130
    # Line 248
    addu	$a7,$a5,$a6
    # Line 254
    beqz	$t0,.L0d99213c
    # Line 253
    sub	$a1,$a1,$v0
    # Line 256
    b	.L0d99213c
    # Line 255
    sub	$a3,$a3,$v0
.L0d992130:
    # Line 261
    beqz	$t0,.L0d99213c
    # Line 260
    add	$a1,$a1,$v0
    # Line 262
    add	$a3,$a3,$v0
.L0d99213c:
    # Line 270
    lw	$s3,31316($a0)
    # Line 280
    addi	$v0,$v1,-1
    # Line 273
    lw	$s6,30324($a0)
    # Line 266
    sll	$s1,$a1,0x2
    # Line 268
    lw	$s2,30472($a0)
    # Line 281
    andi	$a1,$v0,0x1f
    # Line 271
    lw	$s4,31308($a0)
    # Line 265
    sll	$s0,$a3,0x2
    # Line 272
    lw	$s5,30204($a0)
    # Line 277
    move	$t9,$zero
    # Line 275
    lw	$t8,30328($a0)
    # Line 286
    lui	$a2,0x7fff
    # Line 267
    sub	$s1,$s1,$s0
    # Line 282
    addi	$a1,$a1,1
    # Line 283
    srl	$v0,$v0,0x5
    # Line 286
    ori	$a2,$a2,0xffff
    # Line 287
    addi	$a3,$zero,-1
    # Line 274
    srav	$s6,$s6,$s3
.L0d992184:
    # Line 290
    srlv	$t0,$s5,$s3
    # Line 292
    move	$t1,$zero
    # Line 293
    bgtz	$v0,.L0d99219c
    # Line 291
    addu	$t0,$t0,$s4
    # Line 295
    b	.L0d9921a0
    # Line 294
    move	$t3,$a1
.L0d99219c:
    # Line 298
    li	$t3,32
.L0d9921a0:
    # Line 301
    lui	$a5,0x8000
.L0d9921a4:
    # Line 304
    lw	$a6,0($a7)
    # Line 305
    addu	$t2,$t2,$a4
    # Line 306
    addi	$t3,$t3,-1
    # Line 307
    slt	$at,$t0,$a6
    bnez	$at,.L0d9921c8
    nop
    # Line 310
    addi	$t9,$t9,1
    # Line 312
    b	.L0d9921cc
    # Line 311
    or	$t1,$t1,$a5
.L0d9921c8:
    # Line 316
    sw	$t0,0($a7)
.L0d9921cc:
    # Line 320
    bgez	$t2,.L0d9921dc
    # Line 319
    addu	$t0,$t0,$s6
    # Line 323
    addu	$a7,$a7,$s1
    # Line 324
    and	$t2,$t2,$a2
.L0d9921dc:
    # Line 328
    addu	$a7,$a7,$s0
    # Line 331
    bgtz	$t3,.L0d9921a4
    # Line 329
    srl	$a5,$a5,0x1
    # Line 336
    addi	$v0,$v0,-1
    # Line 333
    xor	$t1,$t1,$a3
    # Line 335
    addi	$s2,$s2,4
    # Line 334
    sw	$t1,-4($s2)
    # Line 339
    bgez	$v0,.L0d992184
    # Line 337
    addu	$s5,$s5,$t8
    # Line 343
    lw	$s0,88($sp)
    # Line 344
    lw	$s1,80($sp)
    # Line 345
    lw	$s2,72($sp)
    # Line 346
    lw	$s3,64($sp)
    # Line 347
    lw	$s4,56($sp)
    # Line 348
    lw	$s5,48($sp)
    # Line 349
    lw	$s6,40($sp)
    # Line 353
    bnez	$t9,.L0d99222c
    # Line 350
    addiu	$sp,$sp,96
    # Line 357
    jr	$ra
    # Line 356
    li	$v0,0
.L0d99222c:
    # Line 361
    beq	$t9,$v1,.L0d99223c
    nop
    # Line 363
    jr	$ra
    # Line 362
    li	$v0,1
.L0d99223c:
    # Line 367
    li	$v0,1
    # Line 369
    jr	$ra
    # Line 368
    sb	$v0,30476($a0)
.end __glDepthTestLine_LESS_s_asm

# Function: __glDepthTestLine_asm
# Declared: Line 383 (Source lines: 383-951)
# Address: 0x0d992248 - 0x0d992668 (Size: 1056 bytes, Frame: 224)
.globl __glDepthTestLine_asm
.ent __glDepthTestLine_asm
__glDepthTestLine_asm:
    # Line 383
    lw	$a7,29872($a0)
    # Line 384
    lw	$t8,3664($a0)
    # Line 385
    lw	$t9,31256($a0)
    # Line 386
    addiu	$sp,$sp,-96
    # Line 387
    sub	$a7,$a7,$t8
    # Line 388
    multu	$a7,$t9
    # Line 389
    sw	$s0,88($sp)
    # Line 390
    sw	$s1,80($sp)
    # Line 391
    sw	$s2,72($sp)
    # Line 392
    sw	$s3,64($sp)
    # Line 393
    sw	$s4,56($sp)
    # Line 394
    sw	$s5,48($sp)
    # Line 395
    sw	$s6,40($sp)
    # Line 396
    sw	$s7,32($sp)
    # Line 397
    sw	$s8,24($sp)
    # Line 405
    lw	$v0,30248($a0)
    # Line 406
    lw	$v1,29880($a0)
    # Line 407
    lw	$a1,29888($a0)
    # Line 408
    lw	$a2,29876($a0)
    # Line 409
    lw	$a3,29884($a0)
    # Line 410
    lw	$t0,29868($a0)
    # Line 411
    lw	$t1,29892($a0)
    # Line 412
    lw	$t2,29896($a0)
    # Line 413
    lw	$t3,3660($a0)
    # Line 414
    lw	$a4,12400($a0)
    # Line 417
    lw	$a5,31244($a0)
    # Line 419
    sub	$t0,$t0,$t3
    # Line 420
    mflo	$a6
    # Line 421
    add	$a6,$a6,$t0
    # Line 422
    sll	$a6,$a6,0x2
    # Line 427
    bgtz	$a1,.L0d9922d8
    # Line 425
    addu	$a7,$a5,$a6
    # Line 431
    beqz	$a3,.L0d9922e4
    # Line 430
    sub	$v1,$v1,$t9
    # Line 433
    b	.L0d9922e4
    # Line 432
    sub	$a2,$a2,$t9
.L0d9922d8:
    # Line 438
    beqz	$a3,.L0d9922e4
    # Line 437
    add	$v1,$v1,$t9
    # Line 439
    add	$a2,$a2,$t9
.L0d9922e4:
    # Line 447
    lw	$s3,31316($a0)
    # Line 455
    addi	$a1,$v0,-1
    # Line 449
    lw	$t9,30324($a0)
    # Line 442
    sll	$s0,$a2,0x2
    # Line 445
    lw	$s2,30472($a0)
    # Line 456
    andi	$a2,$a1,0x1f
    # Line 448
    lw	$t8,30204($a0)
    # Line 443
    sll	$s1,$v1,0x2
    # Line 452
    move	$v1,$zero
    # Line 444
    sub	$s1,$s1,$s0
    # Line 457
    addi	$a2,$a2,1
    # Line 458
    srl	$a1,$a1,0x5
    # Line 450
    srav	$t9,$t9,$s3
.L0d992318:
    # Line 461
    lw	$a3,31308($a0)
    # Line 462
    srlv	$t0,$t8,$s3
    # Line 464
    move	$t3,$zero
    # Line 465
    bgtz	$a1,.L0d992334
    # Line 463
    addu	$t0,$t0,$a3
    # Line 467
    b	.L0d992338
    # Line 466
    move	$a5,$a2
.L0d992334:
    # Line 470
    li	$a5,32
.L0d992338:
    # Line 473
    lui	$a6,0x8000
.L0d99233c:
    # Line 477
    lw	$a3,0($a7)
    # Line 478
    jr	$a4
    # Line 479
    addu	$t1,$t1,$t2
.L0d992348:
    # Line 495
    bgez	$t1,.L0d99235c
    # Line 494
    addu	$t0,$t0,$t9
    # Line 500
    sll	$t1,$t1,0x1
    # Line 498
    addu	$a7,$a7,$s1
    # Line 501
    srl	$t1,$t1,0x1
.L0d99235c:
    # Line 505
    addu	$a7,$a7,$s0
    # Line 508
    bgtz	$a5,.L0d99233c
    # Line 506
    srl	$a6,$a6,0x1
    # Line 510
    nor	$t3,$t3,$zero
    # Line 514
    addi	$a1,$a1,-1
    # Line 511
    sw	$t3,0($s2)
    # Line 513
    addi	$s2,$s2,4
    # Line 512
    lw	$t0,30328($a0)
    # Line 517
    bgez	$a1,.L0d992318
    # Line 515
    addu	$t8,$t8,$t0
    # Line 521
    lw	$s0,88($sp)
    # Line 522
    lw	$s1,80($sp)
    # Line 523
    lw	$s2,72($sp)
    # Line 524
    lw	$s3,64($sp)
    # Line 525
    lw	$s4,56($sp)
    # Line 526
    lw	$s5,48($sp)
    # Line 527
    lw	$s6,40($sp)
    # Line 528
    lw	$s7,32($sp)
    # Line 529
    lw	$s8,24($sp)
    # Line 533
    bnez	$v1,.L0d9923b8
    # Line 530
    addiu	$sp,$sp,96
    # Line 537
    jr	$ra
    # Line 536
    li	$v0,0
.L0d9923b8:
    # Line 541
    beq	$v1,$v0,.L0d9923c8
    nop
    # Line 543
    jr	$ra
    # Line 542
    li	$v0,1
.L0d9923c8:
    # Line 547
    li	$v0,1
    # Line 549
    jr	$ra
    # Line 548
    sb	$v0,30476($a0)
    # Line 571
    addi	$v1,$v1,1
    # Line 572
    b	.L0d992348
    # Line 573
    or	$t3,$t3,$a6
    # Line 580
    sltu	$at,$a3,$t0
    bnez	$at,.L0d9923f4
    # Line 581
    addi	$a5,$a5,-1
    # Line 584
    b	.L0d992348
    # Line 585
    sw	$t0,0($a7)
.L0d9923f4:
    # Line 589
    addi	$v1,$v1,1
    # Line 590
    b	.L0d992348
    # Line 591
    or	$t3,$t3,$a6
    # Line 598
    slt	$at,$a3,$t0
    bnez	$at,.L0d992414
    # Line 599
    addi	$a5,$a5,-1
    # Line 602
    b	.L0d992348
    # Line 603
    sw	$t0,0($a7)
.L0d992414:
    # Line 607
    addi	$v1,$v1,1
    # Line 608
    b	.L0d992348
    # Line 609
    or	$t3,$t3,$a6
    # Line 616
    sltu	$at,$t0,$a3
    beqz	$at,.L0d992434
    # Line 617
    addi	$a5,$a5,-1
    # Line 620
    b	.L0d992348
    # Line 621
    sw	$t0,0($a7)
.L0d992434:
    # Line 625
    addi	$v1,$v1,1
    # Line 626
    b	.L0d992348
    # Line 627
    or	$t3,$t3,$a6
    # Line 634
    slt	$at,$t0,$a3
    beqz	$at,.L0d992454
    # Line 635
    addi	$a5,$a5,-1
    # Line 638
    b	.L0d992348
    # Line 639
    sw	$t0,0($a7)
.L0d992454:
    # Line 643
    addi	$v1,$v1,1
    # Line 644
    b	.L0d992348
    # Line 645
    or	$t3,$t3,$a6
    # Line 652
    bne	$t0,$a3,.L0d992470
    # Line 653
    addi	$a5,$a5,-1
    # Line 656
    b	.L0d992348
    # Line 657
    sw	$t0,0($a7)
.L0d992470:
    # Line 661
    addi	$v1,$v1,1
    # Line 662
    b	.L0d992348
    # Line 663
    or	$t3,$t3,$a6
    # Line 670
    sltu	$at,$a3,$t0
    beqz	$at,.L0d992490
    # Line 671
    addi	$a5,$a5,-1
    # Line 674
    b	.L0d992348
    # Line 675
    sw	$t0,0($a7)
.L0d992490:
    # Line 679
    addi	$v1,$v1,1
    # Line 680
    b	.L0d992348
    # Line 681
    or	$t3,$t3,$a6
    # Line 688
    slt	$at,$a3,$t0
    beqz	$at,.L0d9924b0
    # Line 689
    addi	$a5,$a5,-1
    # Line 692
    b	.L0d992348
    # Line 693
    sw	$t0,0($a7)
.L0d9924b0:
    # Line 697
    addi	$v1,$v1,1
    # Line 698
    b	.L0d992348
    # Line 699
    or	$t3,$t3,$a6
    # Line 706
    beq	$t0,$a3,.L0d9924cc
    # Line 707
    addi	$a5,$a5,-1
    # Line 710
    b	.L0d992348
    # Line 711
    sw	$t0,0($a7)
.L0d9924cc:
    # Line 715
    addi	$v1,$v1,1
    # Line 716
    b	.L0d992348
    # Line 717
    or	$t3,$t3,$a6
    # Line 724
    sltu	$at,$t0,$a3
    bnez	$at,.L0d9924ec
    # Line 725
    addi	$a5,$a5,-1
    # Line 728
    b	.L0d992348
    # Line 729
    sw	$t0,0($a7)
.L0d9924ec:
    # Line 733
    addi	$v1,$v1,1
    # Line 734
    b	.L0d992348
    # Line 735
    or	$t3,$t3,$a6
    # Line 742
    slt	$at,$t0,$a3
    bnez	$at,.L0d99250c
    # Line 743
    addi	$a5,$a5,-1
    # Line 746
    b	.L0d992348
    # Line 747
    sw	$t0,0($a7)
.L0d99250c:
    # Line 751
    addi	$v1,$v1,1
    # Line 752
    b	.L0d992348
    # Line 753
    or	$t3,$t3,$a6
    # Line 760
    addi	$a5,$a5,-1
    # Line 761
    b	.L0d992348
    # Line 762
    sw	$t0,0($a7)
    # Line 769
    sltu	$at,$a3,$t0
    bnez	$at,.L0d992538
    # Line 770
    addi	$a5,$a5,-1
    # Line 773
    b	.L0d992348
    # Line 774
    nop
.L0d992538:
    # Line 778
    addi	$v1,$v1,1
    # Line 779
    b	.L0d992348
    # Line 780
    or	$t3,$t3,$a6
    # Line 787
    slt	$at,$a3,$t0
    bnez	$at,.L0d992558
    # Line 788
    addi	$a5,$a5,-1
    # Line 791
    b	.L0d992348
    # Line 792
    nop
.L0d992558:
    # Line 796
    addi	$v1,$v1,1
    # Line 797
    b	.L0d992348
    # Line 798
    or	$t3,$t3,$a6
    # Line 805
    sltu	$at,$t0,$a3
    beqz	$at,.L0d992578
    # Line 806
    addi	$a5,$a5,-1
    # Line 809
    b	.L0d992348
    # Line 810
    nop
.L0d992578:
    # Line 814
    addi	$v1,$v1,1
    # Line 815
    b	.L0d992348
    # Line 816
    or	$t3,$t3,$a6
    # Line 823
    slt	$at,$t0,$a3
    beqz	$at,.L0d992598
    # Line 824
    addi	$a5,$a5,-1
    # Line 827
    b	.L0d992348
    # Line 828
    nop
.L0d992598:
    # Line 832
    addi	$v1,$v1,1
    # Line 833
    b	.L0d992348
    # Line 834
    or	$t3,$t3,$a6
    # Line 841
    bne	$t0,$a3,.L0d9925b4
    # Line 842
    addi	$a5,$a5,-1
    # Line 845
    b	.L0d992348
    # Line 846
    nop
.L0d9925b4:
    # Line 850
    addi	$v1,$v1,1
    # Line 851
    b	.L0d992348
    # Line 852
    or	$t3,$t3,$a6
    # Line 859
    sltu	$at,$a3,$t0
    beqz	$at,.L0d9925d4
    # Line 860
    addi	$a5,$a5,-1
    # Line 863
    b	.L0d992348
    # Line 864
    nop
.L0d9925d4:
    # Line 868
    addi	$v1,$v1,1
    # Line 869
    b	.L0d992348
    # Line 870
    or	$t3,$t3,$a6
    # Line 877
    slt	$at,$a3,$t0
    beqz	$at,.L0d9925f4
    # Line 878
    addi	$a5,$a5,-1
    # Line 881
    b	.L0d992348
    # Line 882
    nop
.L0d9925f4:
    # Line 886
    addi	$v1,$v1,1
    # Line 887
    b	.L0d992348
    # Line 888
    or	$t3,$t3,$a6
    # Line 895
    beq	$t0,$a3,.L0d992610
    # Line 896
    addi	$a5,$a5,-1
    # Line 899
    b	.L0d992348
    # Line 900
    nop
.L0d992610:
    # Line 904
    addi	$v1,$v1,1
    # Line 905
    b	.L0d992348
    # Line 906
    or	$t3,$t3,$a6
    # Line 913
    sltu	$at,$t0,$a3
    bnez	$at,.L0d992630
    # Line 914
    addi	$a5,$a5,-1
    # Line 917
    b	.L0d992348
    # Line 918
    nop
.L0d992630:
    # Line 922
    addi	$v1,$v1,1
    # Line 923
    b	.L0d992348
    # Line 924
    or	$t3,$t3,$a6
    # Line 931
    slt	$at,$t0,$a3
    bnez	$at,.L0d992650
    # Line 932
    addi	$a5,$a5,-1
    # Line 935
    b	.L0d992348
    # Line 936
    nop
.L0d992650:
    # Line 940
    addi	$v1,$v1,1
    # Line 941
    b	.L0d992348
    # Line 942
    or	$t3,$t3,$a6
    # Line 949
    addi	$a5,$a5,-1
    # Line 950
    b	.L0d992348
    # Line 951
    nop
.end __glDepthTestLine_asm

