# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/mips/mips_vapi.ma
# Category: mips
# Compiler Options: 
# Total Functions: 12

.text

# Function: __glim_MipsVertex3fv
# Declared: Line 64 (Source lines: 64-97)
# Address: 0x0d932d10 - 0x0d932d80 (Size: 112 bytes, Frame: 0)
.globl __glim_MipsVertex3fv
.ent __glim_MipsVertex3fv
__glim_MipsVertex3fv:
    # Line 64
    lw	$t1,4112($zero)
    # Line 65
    lwc1	$f10,0($a0)
    # Line 66
    lwc1	$f12,4($a0)
    # Line 67
    lw	$t2,12688($t1)
    # Line 68
    lw	$t3,29660($t1)
    # Line 69
    lw	$a4,11980($t1)
    # Line 70
    lwc1	$f14,8($a0)
    # Line 71
    lui	$a5,0x3f80
    # Line 72
    sw	$a4,12($t2)
    # Line 73
    swc1	$f10,16($t2)
    # Line 74
    swc1	$f12,20($t2)
    # Line 75
    swc1	$f14,24($t2)
    # Line 76
    sw	$a5,28($t2)
    # Line 77
    move	$a1,$a0
    # Line 78
    lw	$t9,260($t3)
    # Line 79
    addi	$a2,$t3,176
    # Line 80
    move	$t0,$ra
    # Line 82
    jalr	$t9
    # Line 83
    addi	$a0,$t2,112
    # Line 86
    lw	$t9,11940($t1)
    # Line 87
    move	$a0,$t1
    # Line 88
    move	$a1,$t2
    # Line 90
    jalr	$t9
    # Line 91
    sw	$zero,0($t2)
    # Line 94
    lw	$t9,11920($t1)
    # Line 95
    move	$ra,$t0
    # Line 96
    jr	$t9
    # Line 97
    sw	$v0,4($t2)
.end __glim_MipsVertex3fv

# Function: __glim_MipsVertex2fv
# Declared: Line 111 (Source lines: 111-142)
# Address: 0x0d932d80 - 0x0d932dec (Size: 108 bytes, Frame: 0)
.globl __glim_MipsVertex2fv
.ent __glim_MipsVertex2fv
__glim_MipsVertex2fv:
    # Line 111
    lw	$t1,4112($zero)
    # Line 112
    lwc1	$f0,0($a0)
    # Line 113
    lwc1	$f1,4($a0)
    # Line 114
    lw	$t2,12688($t1)
    # Line 115
    lw	$t3,29660($t1)
    # Line 116
    lw	$a4,11976($t1)
    # Line 117
    lui	$a5,0x3f80
    # Line 118
    swc1	$f0,16($t2)
    # Line 119
    swc1	$f1,20($t2)
    # Line 120
    sw	$a4,12($t2)
    # Line 121
    sw	$zero,24($t2)
    # Line 122
    sw	$a5,28($t2)
    # Line 123
    move	$a1,$a0
    # Line 124
    lw	$t9,248($t3)
    # Line 125
    addi	$a2,$t3,176
    # Line 126
    move	$t0,$ra
    # Line 128
    jalr	$t9
    # Line 129
    addi	$a0,$t2,112
    # Line 131
    lw	$t9,11936($t1)
    # Line 132
    move	$a0,$t1
    # Line 133
    move	$a1,$t2
    # Line 135
    jalr	$t9
    # Line 136
    sw	$zero,0($t2)
    # Line 139
    lw	$t9,11920($t1)
    # Line 140
    move	$ra,$t0
    # Line 141
    jr	$t9
    # Line 142
    sw	$v0,4($t2)
.end __glim_MipsVertex2fv

# Function: __glim_MipsVertex4fv
# Declared: Line 156 (Source lines: 156-188)
# Address: 0x0d932dec - 0x0d932e5c (Size: 112 bytes, Frame: 0)
.globl __glim_MipsVertex4fv
.ent __glim_MipsVertex4fv
__glim_MipsVertex4fv:
    # Line 156
    lw	$t1,4112($zero)
    # Line 157
    lwc1	$f2,0($a0)
    # Line 158
    lwc1	$f3,4($a0)
    # Line 159
    lwc1	$f4,8($a0)
    # Line 160
    lwc1	$f5,12($a0)
    # Line 161
    lw	$t2,12688($t1)
    # Line 162
    lw	$t3,29660($t1)
    # Line 163
    lw	$a4,11984($t1)
    # Line 164
    swc1	$f2,16($t2)
    # Line 165
    swc1	$f3,20($t2)
    # Line 166
    swc1	$f4,24($t2)
    # Line 167
    swc1	$f5,28($t2)
    # Line 168
    sw	$a4,12($t2)
    # Line 169
    lw	$t9,256($t3)
    # Line 170
    move	$a1,$a0
    # Line 171
    addi	$a2,$t3,176
    # Line 172
    move	$t0,$ra
    # Line 174
    jalr	$t9
    # Line 175
    addi	$a0,$t2,112
    # Line 177
    lw	$t9,11944($t1)
    # Line 178
    move	$a0,$t1
    # Line 179
    move	$a1,$t2
    # Line 181
    jalr	$t9
    # Line 182
    sw	$zero,0($t2)
    # Line 185
    lw	$t9,11920($t1)
    # Line 186
    move	$ra,$t0
    # Line 187
    jr	$t9
    # Line 188
    sw	$v0,4($t2)
.end __glim_MipsVertex4fv

# Function: __glim_MipsVertex3fvFast
# Declared: Line 221 (Source lines: 221-245)
# Address: 0x0d932e5c - 0x0d932eac (Size: 80 bytes, Frame: 0)
.globl __glim_MipsVertex3fvFast
.ent __glim_MipsVertex3fvFast
__glim_MipsVertex3fvFast:
    # Line 221
    lw	$t1,4112($zero)
    # Line 222
    move	$t0,$ra
    # Line 223
    lw	$t2,12688($t1)
    # Line 224
    lw	$t3,29660($t1)
    # Line 225
    lw	$a4,11980($t1)
    # Line 226
    lw	$t9,252($t3)
    # Line 227
    sw	$a4,12($t2)
    # Line 228
    move	$a1,$a0
    # Line 229
    addi	$a0,$t2,112
    # Line 231
    jalr	$t9
    # Line 232
    addi	$a2,$t3,176
    # Line 234
    lw	$t9,11940($t1)
    # Line 235
    move	$a0,$t1
    # Line 236
    move	$a1,$t2
    # Line 238
    jalr	$t9
    # Line 239
    sw	$zero,0($t2)
    # Line 242
    lw	$t9,11948($t1)
    # Line 243
    move	$ra,$t0
    # Line 244
    jr	$t9
    # Line 245
    sw	$v0,4($t2)
.end __glim_MipsVertex3fvFast

# Function: __glim_MipsVertex2fvFast
# Declared: Line 259 (Source lines: 259-283)
# Address: 0x0d932eac - 0x0d932efc (Size: 80 bytes, Frame: 0)
.globl __glim_MipsVertex2fvFast
.ent __glim_MipsVertex2fvFast
__glim_MipsVertex2fvFast:
    # Line 259
    lw	$t1,4112($zero)
    # Line 260
    move	$t0,$ra
    # Line 261
    lw	$t2,12688($t1)
    # Line 262
    lw	$t3,29660($t1)
    # Line 263
    lw	$a4,11976($t1)
    # Line 264
    lw	$t9,248($t3)
    # Line 265
    sw	$a4,12($t2)
    # Line 266
    move	$a1,$a0
    # Line 267
    addi	$a0,$t2,112
    # Line 269
    jalr	$t9
    # Line 270
    addi	$a2,$t3,176
    # Line 272
    lw	$t9,11936($t1)
    # Line 273
    move	$a0,$t1
    # Line 274
    move	$a1,$t2
    # Line 276
    jalr	$t9
    # Line 277
    sw	$zero,0($t2)
    # Line 280
    lw	$t9,11948($t1)
    # Line 281
    move	$ra,$t0
    # Line 282
    jr	$t9
    # Line 283
    sw	$v0,4($t2)
.end __glim_MipsVertex2fvFast

# Function: __glim_MipsVertex4fvFast
# Declared: Line 297 (Source lines: 297-321)
# Address: 0x0d932efc - 0x0d932f4c (Size: 80 bytes, Frame: 0)
.globl __glim_MipsVertex4fvFast
.ent __glim_MipsVertex4fvFast
__glim_MipsVertex4fvFast:
    # Line 297
    lw	$t1,4112($zero)
    # Line 298
    move	$t0,$ra
    # Line 299
    lw	$t2,12688($t1)
    # Line 300
    lw	$t3,29660($t1)
    # Line 301
    lw	$a4,11984($t1)
    # Line 302
    lw	$t9,256($t3)
    # Line 303
    sw	$a4,12($t2)
    # Line 304
    move	$a1,$a0
    # Line 305
    addi	$a0,$t2,112
    # Line 307
    jalr	$t9
    # Line 308
    addi	$a2,$t3,176
    # Line 310
    lw	$t9,11944($t1)
    # Line 311
    move	$a0,$t1
    # Line 312
    move	$a1,$t2
    # Line 314
    jalr	$t9
    # Line 315
    sw	$zero,0($t2)
    # Line 318
    lw	$t9,11948($t1)
    # Line 319
    move	$ra,$t0
    # Line 320
    jr	$t9
    # Line 321
    sw	$v0,4($t2)
.end __glim_MipsVertex4fvFast

# Function: __glim_MipsNoXFVertex3fv
# Declared: Line 357 (Source lines: 357-382)
# Address: 0x0d932f4c - 0x0d932fa4 (Size: 88 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex3fv
.ent __glim_MipsNoXFVertex3fv
__glim_MipsNoXFVertex3fv:
    # Line 357
    lw	$t1,4112($zero)
    # Line 358
    lwc1	$f0,0($a0)
    # Line 359
    lwc1	$f2,4($a0)
    # Line 360
    lw	$t2,12688($t1)
    # Line 361
    lw	$t3,11980($t1)
    # Line 362
    lwc1	$f4,8($a0)
    # Line 363
    lwc1	$f6,3544($t1)
    # Line 364
    sw	$t3,12($t2)
    # Line 365
    swc1	$f0,16($t2)
    # Line 366
    swc1	$f2,20($t2)
    # Line 367
    swc1	$f4,24($t2)
    # Line 368
    swc1	$f6,28($t2)
    # Line 369
    lw	$t9,11940($t1)
    # Line 370
    move	$t0,$ra
    # Line 371
    move	$a0,$t1
    # Line 372
    move	$a1,$t2
    # Line 374
    jalr	$t9
    # Line 375
    sw	$zero,0($t2)
    # Line 379
    lw	$t9,11920($t1)
    # Line 380
    move	$ra,$t0
    # Line 381
    jr	$t9
    # Line 382
    sw	$v0,4($t2)
.end __glim_MipsNoXFVertex3fv

# Function: __glim_MipsNoXFVertex2fv
# Declared: Line 396 (Source lines: 396-421)
# Address: 0x0d932fa4 - 0x0d932ffc (Size: 88 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex2fv
.ent __glim_MipsNoXFVertex2fv
__glim_MipsNoXFVertex2fv:
    # Line 396
    lw	$t1,4112($zero)
    # Line 397
    lwc1	$f0,0($a0)
    # Line 398
    lwc1	$f2,4($a0)
    # Line 399
    lw	$t2,12688($t1)
    # Line 400
    lw	$t3,11976($t1)
    # Line 401
    lwc1	$f6,3544($t1)
    # Line 402
    sw	$t3,12($t2)
    # Line 403
    swc1	$f0,16($t2)
    # Line 404
    swc1	$f2,20($t2)
    # Line 405
    sw	$zero,24($t2)
    # Line 406
    swc1	$f6,28($t2)
    # Line 407
    mtc1	$zero,$f4
    # Line 408
    lw	$t9,11936($t1)
    # Line 409
    move	$t0,$ra
    # Line 410
    move	$a0,$t1
    # Line 411
    move	$a1,$t2
    # Line 413
    jalr	$t9
    # Line 414
    sw	$zero,0($t2)
    # Line 418
    lw	$t9,11920($t1)
    # Line 419
    move	$ra,$t0
    # Line 420
    jr	$t9
    # Line 421
    sw	$v0,4($t2)
.end __glim_MipsNoXFVertex2fv

# Function: __glim_MipsNoXFVertex4fv
# Declared: Line 435 (Source lines: 435-460)
# Address: 0x0d932ffc - 0x0d933054 (Size: 88 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex4fv
.ent __glim_MipsNoXFVertex4fv
__glim_MipsNoXFVertex4fv:
    # Line 435
    lw	$t1,4112($zero)
    # Line 436
    lwc1	$f0,0($a0)
    # Line 437
    lwc1	$f2,4($a0)
    # Line 438
    move	$t0,$ra
    # Line 439
    lw	$t2,12688($t1)
    # Line 440
    lw	$t3,11984($t1)
    # Line 441
    lwc1	$f4,8($a0)
    # Line 442
    lwc1	$f6,12($a0)
    # Line 443
    sw	$t3,12($t2)
    # Line 444
    swc1	$f0,16($t2)
    # Line 445
    swc1	$f2,20($t2)
    # Line 446
    swc1	$f4,24($t2)
    # Line 447
    swc1	$f6,28($t2)
    # Line 448
    lw	$t9,11944($t1)
    # Line 449
    move	$a0,$t1
    # Line 450
    move	$a1,$t2
    # Line 452
    jalr	$t9
    # Line 453
    sw	$zero,0($t2)
    # Line 457
    lw	$t9,11920($t1)
    # Line 458
    move	$ra,$t0
    # Line 459
    jr	$t9
    # Line 460
    sw	$v0,4($t2)
.end __glim_MipsNoXFVertex4fv

# Function: __glim_MipsNoXFVertex3fvFast
# Declared: Line 500 (Source lines: 500-525)
# Address: 0x0d933054 - 0x0d9330ac (Size: 88 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex3fvFast
.ent __glim_MipsNoXFVertex3fvFast
__glim_MipsNoXFVertex3fvFast:
    # Line 500
    lw	$t1,4112($zero)
    # Line 501
    lwc1	$f0,0($a0)
    # Line 502
    lwc1	$f2,4($a0)
    # Line 503
    lwc1	$f4,8($a0)
    # Line 504
    lw	$t2,12688($t1)
    # Line 505
    lw	$t3,11980($t1)
    # Line 506
    lwc1	$f6,3544($t1)
    # Line 507
    swc1	$f0,16($t2)
    # Line 508
    swc1	$f2,20($t2)
    # Line 509
    swc1	$f4,24($t2)
    # Line 510
    swc1	$f6,28($t2)
    # Line 511
    sw	$t3,12($t2)
    # Line 512
    lw	$t9,11940($t1)
    # Line 513
    move	$t0,$ra
    # Line 514
    move	$a0,$t1
    # Line 515
    move	$a1,$t2
    # Line 517
    jalr	$t9
    # Line 518
    sw	$zero,0($t2)
    # Line 522
    lw	$t9,11948($t1)
    # Line 523
    move	$ra,$t0
    # Line 524
    jr	$t9
    # Line 525
    sw	$v0,4($t2)
.end __glim_MipsNoXFVertex3fvFast

# Function: __glim_MipsNoXFVertex4fvFast
# Declared: Line 581 (Source lines: 581-606)
# Address: 0x0d9330ac - 0x0d933104 (Size: 88 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex4fvFast
.ent __glim_MipsNoXFVertex4fvFast
__glim_MipsNoXFVertex4fvFast:
    # Line 581
    lw	$t1,4112($zero)
    # Line 582
    lwc1	$f0,0($a0)
    # Line 583
    lwc1	$f2,4($a0)
    # Line 584
    lwc1	$f4,8($a0)
    # Line 585
    lw	$t2,12688($t1)
    # Line 586
    lw	$t3,11984($t1)
    # Line 587
    lwc1	$f6,12($a0)
    # Line 588
    swc1	$f0,16($t2)
    # Line 589
    swc1	$f2,20($t2)
    # Line 590
    swc1	$f4,24($t2)
    # Line 591
    swc1	$f6,28($t2)
    # Line 592
    sw	$t3,12($t2)
    # Line 593
    lw	$t9,11944($t1)
    # Line 594
    move	$t0,$ra
    # Line 595
    move	$a0,$t1
    # Line 596
    move	$a1,$t2
    # Line 598
    jalr	$t9
    # Line 599
    sw	$zero,0($t2)
    # Line 603
    lw	$t9,11948($t1)
    # Line 604
    move	$ra,$t0
    # Line 605
    jr	$t9
    # Line 606
    sw	$v0,4($t2)
.end __glim_MipsNoXFVertex4fvFast

# Function: __glim_MipsNoXFVertex2fvFast2D
# Declared: Line 628 (Source lines: 628-702)
# Address: 0x0d933104 - 0x0d9331fc (Size: 248 bytes, Frame: 0)
.globl __glim_MipsNoXFVertex2fvFast2D
.ent __glim_MipsNoXFVertex2fvFast2D
__glim_MipsNoXFVertex2fvFast2D:
    # Line 628
    lw	$a4,4112($zero)
    # Line 629
    lwc1	$f6,0($a0)
    # Line 630
    lwc1	$f7,4($a0)
    # Line 631
    lw	$a1,12688($a4)
    # Line 632
    lw	$a5,11976($a4)
    # Line 633
    addiu	$a6,$a4,29748
    # Line 634
    swc1	$f6,16($a1)
    # Line 635
    swc1	$f7,20($a1)
    # Line 636
    lwc1	$f8,0($a6)
    # Line 637
    lwc1	$f9,4($a6)
    # Line 638
    sw	$a5,12($a1)
    # Line 639
    sw	$zero,0($a1)
    # Line 640
    mul.s	$f10,$f6,$f8
    # Line 641
    lwc1	$f11,48($a6)
    # Line 642
    lwc1	$f12,16($a6)
    # Line 643
    mul.s	$f13,$f6,$f9
    # Line 644
    lwc1	$f14,52($a6)
    # Line 645
    lwc1	$f15,20($a6)
    # Line 646
    mul.s	$f16,$f7,$f12
    # Line 647
    li	$v0,0
    # Line 648
    add.s	$f10,$f10,$f11
    # Line 649
    mul.s	$f17,$f7,$f15
    # Line 650
    lw	$a7,29732($a4)
    # Line 651
    add.s	$f13,$f13,$f14
    # Line 652
    lw	$t8,29740($a4)
    # Line 653
    lw	$v1,29736($a4)
    # Line 654
    add.s	$f18,$f10,$f16
    # Line 655
    move	$a0,$a4
    # Line 656
    lw	$a2,29744($a4)
    # Line 657
    add.s	$f19,$f13,$f17
    # Line 658
    mfc1	$a3,$f18
    # Line 659
    lw	$t0,4848($a4)
    # Line 660
    lw	$t9,11948($a4)
    # Line 661
    slt	$t1,$a3,$a7
    # Line 662
    mfc1	$t2,$f19
    # Line 663
    bnez	$t1,.L0d9331bc
    # Line 664
    slt	$t3,$a3,$t8
.L0d933198:
    # Line 666
    beqz	$t3,.L0d9331c4
    # Line 667
    slt	$a4,$t2,$v1
.L0d9331a0:
    # Line 669
    bnez	$a4,.L0d9331cc
    # Line 670
    slt	$a5,$t2,$a2
.L0d9331a8:
    # Line 672
    beqz	$a5,.L0d9331e4
    # Line 673
    sw	$a3,128($a1)
.L0d9331b0:
    # Line 675
    sw	$t2,132($a1)
    # Line 676
    jr	$t9
    # Line 677
    sw	$v0,4($a1)
.L0d9331bc:
    # Line 682
    b	.L0d933198
    # Line 683
    ori	$v0,$v0,0x1
.L0d9331c4:
    # Line 685
    b	.L0d9331a0
    # Line 686
    ori	$v0,$v0,0x2
.L0d9331cc:
    # Line 688
    bnez	$t0,.L0d9331dc
    # Line 689
    nop
    # Line 690
    b	.L0d9331a8
    # Line 691
    ori	$v0,$v0,0x4
.L0d9331dc:
    # Line 693
    b	.L0d9331a8
    # Line 694
    ori	$v0,$v0,0x8
.L0d9331e4:
    # Line 696
    bnez	$t0,.L0d9331f4
    # Line 697
    nop
    # Line 698
    b	.L0d9331b0
    # Line 699
    ori	$v0,$v0,0x8
.L0d9331f4:
    # Line 701
    b	.L0d9331b0
    # Line 702
    ori	$v0,$v0,0x4
.end __glim_MipsNoXFVertex2fvFast2D

