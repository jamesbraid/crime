# Source: ../CRIME/crm_pick.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/crm_pick.c
# Total Functions: 11

.text

# Function: __glCrmPickSpanProcs
# Declared: Line 39 (Source lines: 40-110)
# Address: 0x0d951350 - 0x0d9514c0 (Size: 368 bytes, Frame: 16)
.globl __glCrmPickSpanProcs
.ent __glCrmPickSpanProcs
__glCrmPickSpanProcs:
    # Line 62
    addiu	$a4,$a0,12164
    # Line 42
    lw	$v0,1792($a0)
    # Line 40
    addiu	$sp,$sp,-16
    # Line 42
    lw	$a3,30436($a0)
    # Line 40
    lui	$at,0x10
    addiu	$at,$at,-1476
    # Line 42
    andi	$v0,$v0,0xa00
    # Line 62
    andi	$a2,$a3,0x10
    # Line 67
    dsll32	$a7,$a3,0xd
    sd	$gp,0($sp)
    # Line 42
    beqz	$v0,.L0d95138c
    # Line 40
    addu	$gp,$t9,$at
    # Line 53
    lw	$v1,32192($a0)
    ori	$v1,$v1,0x40
    sw	$v1,32192($a0)
.L0d95138c:
    lbu	$a1,32011($a0)
    # Line 73
    la	$t0,__glCrmOffsetStippledSpan
    # Line 72
    la	$t1,__glCrmOffsetSpan
    # Line 53
    beqz	$a1,.L0d9513b8
    # Line 66
    la	$a5,__glStippleSpan
    # Line 57
    # lw $t9, -25336($gp) # &__glGenericPickSpanProcs
    sd	$ra,8($sp)
    jal	__glGenericPickSpanProcs
    nop
    b	.L0d95143c
    ld	$ra,8($sp)
.L0d9513b8:
    # Line 62
    beqz	$a2,.L0d9513d4
    # Line 61
    addiu	$a2,$a0,12104
    # Line 67
    la	$a6,__glStippleStippledSpan
    # Line 66
    sw	$a5,12104($a0)
    # Line 67
    addiu	$a4,$a0,12168
    # Line 66
    addiu	$a2,$a0,12108
    # Line 67
    sw	$a6,12164($a0)
.L0d9513d4:
    bgez	$a7,.L0d9513f0
    # Line 77
    subu	$t2,$a2,$a0
    # Line 73
    addiu	$a4,$a4,4
    # Line 72
    sw	$t1,0($a2)
    addiu	$a2,$a2,4
    # Line 73
    sw	$t0,-4($a4)
    # Line 77
    subu	$t2,$a2,$a0
.L0d9513f0:
    # Line 80
    andi	$t3,$a3,0x1000
    # Line 77
    addiu	$t2,$t2,-12104
    # Line 109
    la	$at,__glProcessSpan
    # Line 77
    sra	$t2,$t2,0x2
    # Line 84
    addiu	$a5,$a2,4
    # Line 80
    beqz	$t3,.L0d951448
    # Line 77
    sw	$t2,12224($a0)
    # Line 85
    la	$t3,__glCrmDumpPerPixelStippledSpan
.L0d951410:
    # Line 84
    la	$t8,__glCrmDumpPerPixelSpan
    sw	$t8,0($a2)
    # Line 85
    sw	$t3,0($a4)
.L0d95141c:
    # Line 107
    subu	$t9,$a5,$a0
    # Line 109
    sw	$at,12232($a0)
    # Line 107
    addiu	$t9,$t9,-12104
    # Line 110
    ld	$gp,0($sp)
    # Line 107
    sra	$t9,$t9,0x2
    # Line 110
    addiu	$sp,$sp,16
    jr	$ra
    # Line 107
    sw	$t9,12228($a0)
.L0d95143c:
    # Line 110
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d951448:
    # Line 80
    lbu	$v0,28216($a0)
    beqz	$v0,.L0d951464
    nop
    lw	$v1,32088($a0)
    sll	$v1,$v1,0x10
    bgez	$v1,.L0d951410
    # Line 85
    la	$t3,__glCrmDumpPerPixelStippledSpan
.L0d951464:
    # Line 87
    addiu	$a5,$a2,4
    # Line 99
    la	$t1,__glCrmDumpStippledSpan
    # Line 87
    andi	$a6,$a3,0x1
    # Line 95
    andi	$t0,$a3,0x8
    # Line 87
    la	$a1,__glCrmDumpSpan
    lui	$a7,0x2
    ori	$a7,$a7,0x8
    beqz	$a6,.L0d9514a4
    sw	$a1,0($a2)
    and	$a7,$a3,$a7
    beqz	$a7,.L0d9514b8
    # Line 95
    la	$t8,__glCrmDumpStippledFlatSpan
    beqz	$t0,.L0d9514b0
    # Line 97
    la	$t3,__glCrmDumpStippledSmoothSpan
    b	.L0d95141c
    # Line 99
    sw	$t1,0($a4)
.L0d9514a4:
    # Line 102
    la	$t2,__glCrmDumpStippledSpan
    b	.L0d95141c
    sw	$t2,0($a4)
.L0d9514b0:
    # Line 97
    b	.L0d95141c
    sw	$t3,0($a4)
.L0d9514b8:
    # Line 95
    b	.L0d95141c
    sw	$t8,0($a4)
.end __glCrmPickSpanProcs

# Function: __glCrmPickTriangleProcs
# Declared: Line 139 (Source lines: 140-268)
# Address: 0x0d9514c0 - 0x0d9517a0 (Size: 736 bytes, Frame: 32)
.globl __glCrmPickTriangleProcs
.ent __glCrmPickTriangleProcs
__glCrmPickTriangleProcs:
    # Line 140
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,-1844
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 145
    # lw $t9, -25324($gp) # &__glGenericPickTriangleProcs
    # Line 140
    sd	$s0,8($sp)
    # Line 145
    nop
    # Line 140
    sd	$ra,0($sp)
    # Line 145
    jal	__glGenericPickTriangleProcs
    # Line 140
    move	$s0,$a0
    # Line 153
    lw	$a1,484($s0)
    lw	$v0,488($s0)
    ld	$ra,0($sp)
    bne	$v0,$a1,.L0d95150c
    # Line 147
    lw	$a2,30436($s0)
    # Line 153
    li	$v1,6914
    beq	$a1,$v1,.L0d951644
    dsll32	$t1,$a2,0xe
.L0d95150c:
    # Line 160
    la	$a1,__glOddTStripVertex
.L0d951510:
    sw	$a1,11968($s0)
    # Line 159
    la	$a0,__glEvenTStripVertex
    sw	$a0,11972($s0)
.L0d95151c:
    # Line 160
    lw	$a3,3204($s0)
    li	$a4,7168
    bne	$a3,$a4,.L0d951634
    nop
    # Line 167
    lw	$a4,1792($s0)
    andi	$a1,$a4,0x800
    beqz	$a1,.L0d951548
    nop
    # Line 171
    lw	$a5,32192($s0)
    ori	$a5,$a5,0x40
    sw	$a5,32192($s0)
.L0d951548:
    lbu	$a6,32011($s0)
    bnez	$a6,.L0d951634
    nop
    # Line 175
    beqz	$a1,.L0d9516ec
    # Line 183
    la	$a7,__glCrmFillAATriangle
    lui	$a1,0x1
    move	$a3,$zero
    addu	$a1,$s0,$a1
    sw	$a7,12080($s0)
.L0d95156c:
    # Line 202
    sltiu	$a5,$a3,1
    beqz	$a3,.L0d9515b8
    sb	$a5,-32544($a1)
    # Line 205
    lbu	$a6,3220($s0)
    beqz	$a6,.L0d951594
    lui	$a7,0x4
    ori	$a7,$a7,0x2008
    and	$a7,$a2,$a7
    beqz	$a7,.L0d9516a0
    # Line 213
    andi	$a0,$a2,0x4
.L0d951594:
    # Line 205
    lbu	$t0,3221($s0)
    beqz	$t0,.L0d9515ac
    # Line 228
    la	$t2,__glCrmFillTriangle
    # Line 205
    dsll32	$t1,$a2,0xd
    bgez	$t1,.L0d95169c
    # Line 228
    la	$t2,__glCrmFillTriangle
.L0d9515ac:
    sw	$t2,12080($s0)
.L0d9515b0:
    # Line 232
    lui	$t3,0x200
    sw	$t3,32104($s0)
.L0d9515b8:
    lbu	$t8,-32467($a1)
    beqz	$t8,.L0d9515d0
    # Line 241
    nop	# was lw $t9, -31812($gp) # &__glCrmFillLeftRightTriangle
    # Line 240
    lw	$at,12080($s0)
    sw	$at,-32488($a1)
    # Line 241
    sw	$t9,12080($s0)
.L0d9515d0:
    lbu	$v0,30652($s0)
    # Line 263
    li	$t8,1
    # Line 241
    beqz	$v0,.L0d9515f0
    # Line 261
    la	$t0,__glCrmFillCheapFogTriangle
    # Line 245
    la	$v1,__glCrmFillFrontBackTriangle
    # Line 244
    lw	$a0,12080($s0)
    sw	$a0,-32508($a1)
    # Line 245
    sw	$v1,12080($s0)
.L0d9515f0:
    # Line 257
    beqz	$a3,.L0d951604
    andi	$a5,$a2,0x2000
    lbu	$a4,3221($s0)
    beqz	$a4,.L0d951660
    andi	$a5,$a2,0x2000
.L0d951604:
    beqz	$a5,.L0d951660
    nor	$a6,$a2,$zero
    andi	$a6,$a6,0x8
    beqz	$a6,.L0d951660
    nop
    # Line 268
    ld	$gp,16($sp)
    # Line 260
    lw	$a7,12080($s0)
    # Line 261
    sw	$t0,12080($s0)
    # Line 260
    sw	$a7,12084($s0)
    # Line 268
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d951634:
    ld	$s0,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d951644:
    # Line 153
    bgez	$t1,.L0d951510
    # Line 160
    la	$a1,__glOddTStripVertex
    # Line 157
    la	$t3,__glOddTStripVertexFast
    sw	$t3,11968($s0)
    # Line 156
    la	$t2,__glEvenTStripVertexFast
    # Line 157
    b	.L0d95151c
    # Line 156
    sw	$t2,11972($s0)
.L0d951660:
    # Line 263
    bne	$t8,$a3,.L0d951634
    andi	$t9,$a2,0x10
    beqz	$t9,.L0d951634
    nop
    lw	$at,-32608($a1)
    andi	$at,$at,0x2
    beqz	$at,.L0d951634
    # Line 266
    la	$v1,__glCrmFillStippledTriangle
    # Line 268
    ld	$gp,16($sp)
    # Line 265
    lw	$v0,12080($s0)
    # Line 266
    sw	$v1,12080($s0)
    # Line 265
    sw	$v0,12084($s0)
    # Line 268
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d95169c:
    # Line 213
    andi	$a0,$a2,0x4
.L0d9516a0:
    # Line 219
    andi	$a7,$a4,0x2
    # Line 205
    li	$t1,1
    andi	$t2,$a2,0x1
    # Line 223
    la	$t3,sub_0da40000
    # Line 205
    lui	$t0,0x2
    movz	$t1,$zero,$t2
    and	$t0,$a2,$t0
    # Line 213
    addiu	$a6,$t1,2
    # Line 223
    addiu	$t3,$t3,25432
    movz	$a6,$t1,$t0
    # Line 214
    addiu	$a5,$a6,4
    # Line 219
    beqz	$a7,.L0d95174c
    movz	$a5,$a6,$a0
.L0d9516d4:
    # Line 221
    addiu	$a5,$a5,8
    # Line 223
    sll	$t8,$a5,0x2
.L0d9516dc:
    addu	$t3,$t3,$t8
    lw	$t3,0($t3)
    b	.L0d9515b0
    sw	$t3,12080($s0)
.L0d9516ec:
    # Line 186
    lbu	$t8,28216($s0)
    beqz	$t8,.L0d951724
    # Line 190
    andi	$a3,$a2,0x1000
    # Line 186
    lw	$t9,32088($s0)
    sll	$t9,$t9,0x10
    bltz	$t9,.L0d951724
    # Line 190
    andi	$a3,$a2,0x1000
    # Line 188
    move	$a3,$zero
    # Line 187
    la	$at,__glFillTriangle
    # Line 188
    lui	$a1,0x1
    addu	$a1,$s0,$a1
    b	.L0d95156c
    # Line 187
    sw	$at,12080($s0)
    # Line 190
    andi	$a3,$a2,0x1000
.L0d951724:
    beqz	$a3,.L0d95176c
    lui	$a3,0x1
    addu	$a1,$a3,$s0
    andi	$a5,$a2,0x8
.L0d951734:
    beqz	$a5,.L0d951790
    # Line 196
    la	$t3,__glFillTriangle
    # Line 194
    la	$a6,__glCrmFillSlowTriangle
    sw	$a6,12080($s0)
.L0d951744:
    # Line 196
    b	.L0d95156c
    move	$a3,$zero
.L0d95174c:
    # Line 219
    andi	$a7,$a4,0x1
    bnez	$a7,.L0d9516d4
    nop
    lw	$t0,3268($s0)
    bnez	$t0,.L0d9516d4
    nop
    b	.L0d9516dc
    # Line 223
    sll	$t8,$a5,0x2
.L0d95176c:
    # Line 190
    andi	$t1,$a2,0x10
    beqz	$t1,.L0d951798
    addu	$a1,$a3,$s0
    lw	$t2,-32608($a1)
    andi	$t2,$t2,0x2
    beqz	$t2,.L0d951734
    andi	$a5,$a2,0x8
    b	.L0d95156c
    # Line 196
    li	$a3,1
.L0d951790:
    b	.L0d951744
    sw	$t3,12080($s0)
.L0d951798:
    b	.L0d95156c
    li	$a3,1
.end __glCrmPickTriangleProcs

# Function: __glCrmPickClipProcs
# Declared: Line 271 (Source lines: 272-284)
# Address: 0x0d9517a0 - 0x0d9517fc (Size: 92 bytes, Frame: 0)
.globl __glCrmPickClipProcs
.ent __glCrmPickClipProcs
__glCrmPickClipProcs:
    # Line 272
    lw	$v1,28080($a0)
    lui	$v0,0x10
    addiu	$v0,$v0,-2580
    beqz	$v1,.L0d9517e8
    addu	$at,$t9,$v0
    # Line 274
    li	$a1,7424
    lw	$v1,1392($a0)
    beq	$v1,$a1,.L0d9517d4
    # Line 279
    la	$a2,__glFastClipSmoothLine
    sw	$a2,12484($a0)
    # Line 283
    la	$a3,__glClipTriangle
    # Line 284
    jr	$ra
    # Line 283
    sw	$a3,12088($a0)
.L0d9517d4:
    # Line 277
    la	$a4,__glFastClipFlatLine
    # Line 283
    la	$a5,__glClipTriangle
    sw	$a5,12088($a0)
    # Line 284
    jr	$ra
    # Line 277
    sw	$a4,12484($a0)
.L0d9517e8:
    # Line 274
    la	$a6,__glFastClipLine
    # Line 283
    la	$a7,__glClipTriangle
    sw	$a7,12088($a0)
    # Line 284
    jr	$ra
    # Line 274
    sw	$a6,12484($a0)
.end __glCrmPickClipProcs

# Function: __glCrmPickLineProcs
# Declared: Line 323 (Source lines: 324-621)
# Address: 0x0d951800 - 0x0d951d78 (Size: 1400 bytes, Frame: 16)
.globl __glCrmPickLineProcs
.ent __glCrmPickLineProcs
__glCrmPickLineProcs:
    # Line 325
    lw	$a7,1792($a0)
    # Line 324
    lui	$at,0x10
    # Line 326
    andi	$a2,$a7,0x200
    lw	$a5,30436($a0)
    # Line 324
    addiu	$sp,$sp,-16
    addiu	$at,$at,-2676
    sd	$gp,0($sp)
    # Line 326
    beqz	$a2,.L0d951830
    # Line 324
    addu	$gp,$t9,$at
    # Line 337
    lw	$v0,32192($a0)
    ori	$v0,$v0,0x40
    sw	$v0,32192($a0)
.L0d951830:
    # Line 349
    lui	$a4,0x1
    # Line 346
    lw	$a3,32088($a0)
    li	$t0,-4097
    # Line 347
    lui	$a6,0x8
    # Line 346
    and	$a3,$a3,$t0
    # Line 347
    nor	$a6,$a6,$zero
    # Line 349
    addu	$a4,$a0,$a4
    # Line 347
    and	$a3,$a3,$a6
    sw	$a3,32088($a0)
    # Line 349
    sb	$zero,-32547($a4)
    lw	$v1,28080($a0)
    li	$a1,-33
    and	$v1,$v1,$a1
    beqz	$v1,.L0d951a04
    # Line 352
    la	$t8,__glOtherLStripVertexFast
    # Line 354
    la	$t1,__glOtherLStripVertex
    sw	$t1,11956($a0)
.L0d951874:
    # Line 358
    lw	$a3,3204($a0)
    li	$t2,7169
    beq	$a3,$t2,.L0d951a0c
    sw	$zero,12404($a0)
    # Line 362
    li	$t3,7170
    beq	$a3,$t3,.L0d951a18
    # Line 365
    la	$at,__glSelectLine
    lbu	$t8,32011($a0)
    beqz	$t8,.L0d9518b0
    # Line 368
    nop	# was lw $t9, -25328($gp) # &__glGenericPickLineProcs
    sd	$ra,8($sp)
    jal	__glGenericPickLineProcs
    nop
    b	.L0d9519f8
    ld	$ra,8($sp)
.L0d9518b0:
    # Line 369
    beqz	$a2,.L0d951a34
    andi	$a3,$a5,0x1000
    # Line 382
    beqz	$a3,.L0d951b8c
    nop
.L0d9518c0:
    # Line 499
    beqz	$a2,.L0d951b34
.L0d9518c4:
    # Line 511
    addiu	$t0,$a0,12240
    # Line 512
    addiu	$t2,$a0,12304
    # Line 511
    move	$a3,$t0
    # Line 518
    beqz	$a2,.L0d951b78
    # Line 512
    move	$a6,$t2
    # Line 518
    move	$t1,$zero
    li	$t3,1
.L0d9518e0:
    # Line 524
    subu	$t0,$a3,$a0
    addiu	$a7,$t0,-12240
    sra	$a7,$a7,0x2
    beqz	$a2,.L0d951918
    sw	$a7,12368($a0)
.L0d9518f4:
    # Line 531
    la	$t2,__glScissorStippledLine
    # Line 530
    addiu	$a3,$a3,4
    la	$t8,__glScissorLine
    # Line 531
    subu	$t0,$a3,$a0
    addiu	$a6,$a6,4
    # Line 530
    sw	$t8,-4($a3)
    # Line 531
    addiu	$a7,$t0,-12240
    sw	$t2,-4($a6)
    sra	$a7,$a7,0x2
.L0d951918:
    # Line 541
    la	$t8,__glCrmStoreStippledLine
.L0d95191c:
    # Line 540
    # lw $t9, -31736($gp) # &__glCrmStoreLine
    # Line 535
    sw	$a7,12372($a0)
    # Line 544
    addiu	$t2,$t0,-12236
    # Line 540
    sw	$t9,0($a3)
    # Line 541
    sw	$t8,0($a6)
    # Line 544
    sra	$t2,$t2,0x2
    # Line 550
    beqz	$t1,.L0d951b1c
    # Line 544
    sw	$t2,12376($a0)
    # Line 559
    sw	$t2,12372($a0)
    # Line 552
    la	$v1,__glNop
    # Line 558
    sw	$v1,12396($a0)
    # Line 557
    sw	$v1,12392($a0)
    # Line 553
    la	$v0,__glCrmWideStippledLineRep
    sw	$v0,12388($a0)
    # Line 552
    la	$at,__glCrmWideLineRep
    sw	$at,12384($a0)
.L0d95195c:
    # Line 572
    andi	$a3,$a5,0x8
    beqz	$a3,.L0d951978
    nop
    lw	$a1,32088($a0)
    sll	$a1,$a1,0x10
    bltz	$a1,.L0d951c28
    nop
.L0d951978:
    # Line 573
    beqz	$a2,.L0d951b84
    # Line 582
    la	$a2,__glRenderAliasLine
    # Line 580
    la	$a2,__glRenderAntiAliasLine
    sw	$a2,12472($a0)
.L0d951988:
    # Line 586
    la	$a7,__glProcessLine
    sw	$a7,12380($a0)
    lbu	$a6,-32467($a4)
    beqz	$a6,.L0d9519a8
    nop
    # Line 593
    sw	$a2,-32484($a4)
    # Line 594
    la	$a2,__glCrmRenderLeftRightLine
    sw	$a2,12472($a0)
.L0d9519a8:
    lbu	$t0,30652($a0)
    beqz	$t0,.L0d9519c4
    # Line 604
    andi	$t1,$a5,0x2000
    # Line 597
    sw	$a2,-32504($a4)
    # Line 598
    la	$a2,__glCrmRenderFrontBackLine
    sw	$a2,12472($a0)
    # Line 604
    andi	$t1,$a5,0x2000
.L0d9519c4:
    beqz	$t1,.L0d9519d4
    nop
    beqz	$a3,.L0d951c3c
    nop
.L0d9519d4:
    # Line 610
    sb	$t3,-32547($a4)
.L0d9519d8:
    # Line 613
    lw	$t2,1796($a0)
    andi	$t2,$t2,0x400
    beqz	$t2,.L0d951a20
    # Line 616
    la	$t3,__glCrmPolygonOffsetLine
    # Line 621
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    jr	$ra
    # Line 616
    sw	$t3,12480($a0)
.L0d9519f8:
    # Line 621
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d951a04:
    # Line 352
    b	.L0d951874
    sw	$t8,11956($a0)
.L0d951a0c:
    # Line 362
    # lw $t9, -26108($gp) # &__glFeedbackLine
    b	.L0d9519d8
    sw	$t9,12472($a0)
.L0d951a18:
    # Line 365
    b	.L0d9519d8
    sw	$at,12472($a0)
.L0d951a20:
    # Line 621
    ld	$gp,0($sp)
    # Line 619
    lw	$v0,12472($a0)
    # Line 621
    addiu	$sp,$sp,16
    jr	$ra
    # Line 619
    sw	$v0,12480($a0)
.L0d951a34:
    # Line 421
    bnez	$a3,.L0d9518c0
    nop
    lbu	$v1,28216($a0)
    beqz	$v1,.L0d951a58
    nop
    lw	$a1,32088($a0)
    sll	$a1,$a1,0x10
    bgez	$a1,.L0d9518c0
    nop
.L0d951a58:
    # Line 429
    lw	$a6,476($a0)
    andi	$a3,$a5,0x8
    sll	$a6,$a6,0x5
    # Line 428
    lui	$a2,0x104
    # Line 429
    andi	$a6,$a6,0xffff
    or	$a2,$a2,$a6
    beqz	$a3,.L0d951c6c
    sw	$a2,32116($a0)
    # Line 434
    andi	$a5,$a7,0x100
    la	$a2,__glCrmTexturedLine
    # Line 458
    beqz	$a5,.L0d951aec
    # Line 434
    sw	$a2,12472($a0)
.L0d951a88:
    # Line 477
    lh	$t1,482($a0)
    # Line 468
    la	$a7,__glMsbToLsbTable
    # Line 471
    lhu	$t0,480($a0)
    # Line 468
    lw	$t8,32192($a0)
    # Line 472
    srl	$t2,$t0,0x8
    andi	$t0,$t0,0xff
    # Line 470
    lw	$t3,32088($a0)
    # Line 468
    ori	$t8,$t8,0x1
    sw	$t8,32192($a0)
    # Line 470
    lui	$t8,0x8
    # Line 472
    addu	$t0,$a7,$t0
    # Line 470
    or	$t3,$t3,$t8
    sw	$t3,32088($a0)
    # Line 472
    addu	$a7,$a7,$t2
    lbu	$t0,0($t0)
    lbu	$a7,0($a7)
    # Line 477
    addiu	$t1,$t1,-1
    # Line 472
    sll	$t0,$t0,0x8
    # Line 477
    lui	$t2,0x1f
    # Line 472
    or	$a7,$a7,$t0
    # Line 477
    or	$t1,$t1,$t2
    sw	$t1,32112($a0)
    # Line 476
    sll	$t0,$a7,0x10
    or	$a7,$a7,$t0
    sw	$a7,32108($a0)
.L0d951aec:
    # Line 477
    lbu	$t1,-32467($a4)
.L0d951af0:
    beqz	$t1,.L0d951b04
    nop
    # Line 482
    sw	$a2,-32484($a4)
    # Line 483
    la	$a2,__glCrmRenderLeftRightLine
    sw	$a2,12472($a0)
.L0d951b04:
    lbu	$t2,30652($a0)
    beqz	$t2,.L0d9519d8
    # Line 487
    la	$t3,__glCrmRenderFrontBackLine
    # Line 486
    sw	$a2,-32504($a4)
    b	.L0d9519d8
    # Line 487
    sw	$t3,12472($a0)
.L0d951b1c:
    # Line 561
    sw	$t2,12368($a0)
    # Line 559
    sw	$t2,12372($a0)
    # Line 561
    la	$t8,__glNop
    # Line 558
    sw	$t8,12388($a0)
    b	.L0d95195c
    # Line 557
    sw	$t8,12384($a0)
.L0d951b34:
    # Line 499
    lw	$t9,476($a0)
    slti	$t9,$t9,2
    bnez	$t9,.L0d9518c4
    # Line 500
    addiu	$t2,$a0,12304
    li	$t3,1
    addiu	$t0,$a0,12240
    move	$t1,$t3
.L0d951b50:
    # Line 518
    andi	$at,$a7,0x100
    move	$a6,$t2
    beqz	$at,.L0d951c4c
    move	$a3,$t0
    # Line 519
    la	$v0,__glStippleLine
    # Line 520
    addiu	$a6,$t2,4
    # Line 519
    sw	$v0,0($t0)
    addiu	$a3,$t0,4
    # Line 520
    b	.L0d9518e0
    sw	$zero,0($t2)
.L0d951b78:
    # Line 518
    move	$t1,$zero
    b	.L0d951b50
    li	$t3,1
.L0d951b84:
    b	.L0d951988
    # Line 582
    sw	$a2,12472($a0)
.L0d951b8c:
    # Line 382
    lbu	$v1,28216($a0)
    beqz	$v1,.L0d951ba8
    nop
    lw	$a1,32088($a0)
    sll	$a1,$a1,0x10
    bgez	$a1,.L0d9518c0
    nop
.L0d951ba8:
    lwc1	$f0,472($a0)
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    c.le.d	$f0,$f1
    bc1f	.L0d9518c0
    nop
    lbu	$a3,3221($a0)
    bnez	$a3,.L0d9518c0
    # Line 393
    lui	$t1,0x104
    # Line 394
    andi	$t0,$a7,0x100
    # Line 390
    lw	$a6,32088($a0)
    # Line 394
    ori	$t1,$t1,0x40
    sw	$t1,32116($a0)
    # Line 390
    ori	$a6,$a6,0x1000
    # Line 394
    bnez	$t0,.L0d9518c0
    # Line 390
    sw	$a6,32088($a0)
    # Line 394
    andi	$t2,$a5,0x8
    beqz	$t2,.L0d951d24
    # Line 401
    la	$a2,__glCrmTexturedLine
    sw	$a2,12472($a0)
.L0d951bf8:
    # Line 404
    lbu	$t3,-32467($a4)
    beqz	$t3,.L0d951c10
    nop
    # Line 407
    sw	$a2,-32484($a4)
    # Line 408
    la	$a2,__glCrmRenderLeftRightLine
    sw	$a2,12472($a0)
.L0d951c10:
    lbu	$t8,30652($a0)
    beqz	$t8,.L0d9519d8
    # Line 412
    nop	# was lw $t9, -31760($gp) # &__glCrmRenderFrontBackLine
    # Line 411
    sw	$a2,-32504($a4)
    b	.L0d9519d8
    # Line 412
    sw	$t9,12472($a0)
.L0d951c28:
    # Line 572
    beqz	$a2,.L0d951c64
    # Line 576
    la	$a2,__glCrmRenderAliasLine
    # Line 574
    la	$a2,__glCrmRenderAntiAliasLine
    b	.L0d951988
    sw	$a2,12472($a0)
.L0d951c3c:
    # Line 606
    sw	$a2,12476($a0)
    # Line 607
    la	$at,__glCrmRenderCheapFogLine
    b	.L0d9519d4
    sw	$at,12472($a0)
.L0d951c4c:
    # Line 524
    move	$a7,$zero
    sw	$zero,12368($a0)
    bnez	$a2,.L0d9518f4
    li	$t0,12240
    b	.L0d95191c
    # Line 541
    la	$t8,__glCrmStoreStippledLine
.L0d951c64:
    b	.L0d951988
    # Line 576
    sw	$a2,12472($a0)
.L0d951c6c:
    # Line 434
    andi	$v0,$a5,0x2
    beqz	$v0,.L0d951d00
    lbu	$a2,3221($a0)
    # Line 441
    beqz	$a2,.L0d951d10
    # Line 444
    andi	$a6,$a5,0x2000
    # Line 441
    move	$a3,$zero
    li	$t3,1
.L0d951c88:
    andi	$v1,$a5,0x2000
    beqz	$v1,.L0d951c98
    addiu	$a3,$a3,2
.L0d951c94:
    # Line 444
    addiu	$a3,$a3,4
.L0d951c98:
    andi	$a1,$a5,0x4
    beqz	$a1,.L0d951ca8
    nop
.L0d951ca4:
    # Line 447
    addiu	$a3,$a3,8
.L0d951ca8:
    # Line 450
    beq	$t3,$a3,.L0d951ce0
    li	$a2,3
    beq	$a3,$a2,.L0d951ce0
.L0d951cb4:
    # Line 458
    la	$a2,sub_0da40000
    addiu	$a2,$a2,25496
    sll	$a5,$a3,0x2
    addu	$a2,$a2,$a5
    lw	$a2,0($a2)
    andi	$a5,$a7,0x100
    sw	$a2,12472($a0)
.L0d951cd0:
    bnez	$a5,.L0d951a88
    nop
    b	.L0d951af0
    # Line 477
    lbu	$t1,-32467($a4)
.L0d951ce0:
    # Line 450
    lw	$a5,-32644($a4)
    andi	$a5,$a5,0x2
    beqz	$a5,.L0d951cb4
    andi	$a5,$a7,0x100
    beqz	$a5,.L0d951d30
    # Line 453
    la	$a2,__glCrmStippledColorOptLine
    b	.L0d951cd0
    sw	$a2,12472($a0)
.L0d951d00:
    # Line 438
    beqz	$a2,.L0d951d3c
    li	$t3,1
    b	.L0d951c88
    move	$a3,$t3
.L0d951d10:
    # Line 444
    beqz	$a6,.L0d951d50
    # Line 447
    andi	$t1,$a5,0x4
    # Line 444
    move	$a3,$zero
    b	.L0d951c94
    li	$t3,1
.L0d951d24:
    # Line 404
    la	$a2,__glCrmAntiAliasLineRGB
    b	.L0d951bf8
    sw	$a2,12472($a0)
.L0d951d30:
    # Line 455
    la	$a2,__glCrmColorOptLine
    b	.L0d951cd0
    sw	$a2,12472($a0)
.L0d951d3c:
    # Line 441
    andi	$t0,$a5,0x2000
    beqz	$t0,.L0d951d60
    andi	$t2,$a5,0x4
    b	.L0d951c94
    move	$a3,$t3
.L0d951d50:
    # Line 447
    beqz	$t1,.L0d951d70
    move	$a3,$zero
    b	.L0d951ca4
    li	$t3,1
.L0d951d60:
    # Line 441
    beqz	$t2,.L0d951ce0
    move	$a3,$t3
    b	.L0d951ca4
    move	$a3,$t3
.L0d951d70:
    # Line 453
    b	.L0d951cb4
    move	$a3,$zero
.end __glCrmPickLineProcs

# Function: __glCrmPickRenderBitmapProcs
# Declared: Line 624 (Source lines: 625-655)
# Address: 0x0d951d80 - 0x0d951e38 (Size: 184 bytes, Frame: 0)
.globl __glCrmPickRenderBitmapProcs
.ent __glCrmPickRenderBitmapProcs
__glCrmPickRenderBitmapProcs:
    # Line 630
    lw	$v1,32192($a0)
    # Line 632
    lw	$a3,3204($a0)
    li	$a5,7168
    # Line 625
    lui	$v0,0x10
    # Line 626
    lw	$a4,30436($a0)
    # Line 625
    addiu	$v0,$v0,-4084
    # Line 630
    ori	$v1,$v1,0x1
    sw	$v1,32192($a0)
    # Line 632
    beq	$a5,$a3,.L0d951e08
    # Line 625
    addu	$at,$t9,$v0
.L0d951da8:
    # Line 641
    la	$a4,__glRenderBitmap
    sw	$a4,12512($a0)
.L0d951db0:
    # Line 647
    bne	$a5,$a3,.L0d951e00
    lui	$a6,0x1
    addu	$a6,$a0,$a6
    lbu	$a1,-32467($a6)
    beqz	$a1,.L0d951dd8
    nop
    # Line 648
    sw	$a4,-32476($a6)
    # Line 649
    lw	$a3,3204($a0)
    la	$a4,__glCrmRenderLeftRightBitmap
    sw	$a4,12512($a0)
.L0d951dd8:
    # Line 651
    bne	$a5,$a3,.L0d951e00
    nop
    lbu	$a7,30652($a0)
    # Line 653
    la	$t0,__glCrmRenderFrontBackBitmap
    # Line 651
    beqz	$a7,.L0d951e00
    # Line 652
    li	$t1,0x8110
    addu	$t1,$t1,$a0
    sw	$a4,0($t1)
    # Line 655
    jr	$ra
    # Line 653
    sw	$t0,12512($a0)
.L0d951e00:
    # Line 655
    jr	$ra
    nop
.L0d951e08:
    # Line 632
    andi	$t2,$a4,0x2000
    beqz	$t2,.L0d951e20
    andi	$t8,$a4,0x1008
    lbu	$t3,3221($a0)
    bnez	$t3,.L0d951da8
    andi	$t8,$a4,0x1008
.L0d951e20:
    bnez	$t8,.L0d951da8
    # Line 639
    lui	$t9,0x304
    sw	$t9,32180($a0)
    # Line 635
    la	$a4,__glCrmRenderBitmap
    # Line 639
    b	.L0d951db0
    # Line 635
    sw	$a4,12512($a0)
.end __glCrmPickRenderBitmapProcs

# Function: __glCrmPickVertexProcs
# Declared: Line 665 (Source lines: 666-803)
# Address: 0x0d951e40 - 0x0d952204 (Size: 964 bytes, Frame: 32)
.globl __glCrmPickVertexProcs
.ent __glCrmPickVertexProcs
__glCrmPickVertexProcs:
    # Line 666
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,-4276
    sd	$gp,24($sp)
    addu	$gp,$t9,$at
    # Line 673
    # lw $t9, -23544($gp) # &__glGenericPickVertexProcs
    # Line 666
    sd	$s0,16($sp)
    # Line 673
    nop
    # Line 666
    sd	$ra,8($sp)
    # Line 673
    jal	__glGenericPickVertexProcs
    # Line 666
    move	$s0,$a0
    # Line 683
    lui	$t9,0x1
    # Line 677
    lw	$a1,30436($s0)
    # Line 683
    addu	$t9,$s0,$t9
    lw	$v0,-32644($t9)
    li	$a7,0x10
    # Line 691
    la	$a4,__glcrmim_vertexDispatchTable
    # Line 675
    lw	$a2,29660($s0)
    # Line 683
    andi	$at,$a1,0xa
    andi	$v0,$v0,0x2
    ld	$ra,8($sp)
    addiu	$a6,$a4,12
    addiu	$t1,$a4,4
    # Line 675
    nop
    # Line 727
    move	$a5,$a4
    # Line 683
    beqz	$v0,.L0d951eb4
    # Line 676
    lw	$t8,240($a2)
    # Line 683
    beqz	$at,.L0d952038
    sd	$a1,0($sp)
.L0d951eb4:
    sd	$a1,0($sp)
    # Line 726
    sw	$a4,-32604($t9)
    # Line 691
    sb	$zero,-32612($t9)
    # Line 727
    li	$a1,24
    lw	$t0,6072($s0)
    move	$a2,$zero
    addiu	$a4,$a4,8
    addiu	$a3,$t0,1332
    addiu	$t3,$t0,1324
    addiu	$t2,$t0,1328
    addiu	$t0,$t0,1320
.L0d951ee0:
    addu	$a0,$a2,$a5
    addu	$at,$a2,$t0
    lw	$a0,0($a0)
    addu	$v1,$a2,$t1
    sw	$a0,0($at)
    addu	$a0,$a2,$t3
    lw	$v1,0($v1)
    addu	$v0,$a2,$a4
    sw	$v1,0($a0)
    addu	$v1,$a2,$t2
    lw	$v0,0($v0)
    addiu	$a1,$a1,-4
    addu	$at,$a2,$a6
    sw	$v0,0($v1)
    addu	$v0,$a2,$a3
    lw	$at,0($at)
    addu	$a2,$a2,$a7
    bgtz	$a1,.L0d951ee0
    sw	$at,0($v0)
    # Line 741
    beqz	$t8,.L0d952014
    nop
.L0d951f34:
    # Line 761
    lw	$a2,29720($s0)
.L0d951f38:
    # Line 760
    lw	$a1,29716($s0)
    # Line 761
    mtc1	$a2,$f1
    # Line 760
    mtc1	$a1,$f0
    # Line 761
    cvt.s.w	$f1,$f1
    # Line 760
    cvt.s.w	$f0,$f0
    # Line 761
    swc1	$f1,29736($s0)
    # Line 760
    swc1	$f0,29732($s0)
.L0d951f54:
    # Line 776
    li	$t1,6914
    sltiu	$a3,$t8,3
    li	$a5,7168
    lui	$a7,0x1
    ld	$a6,0($sp)
    bnez	$a3,.L0d951fec
    ori	$a7,$a7,0x1018
    lw	$a4,3204($s0)
    bne	$a4,$a5,.L0d951fec
    and	$a6,$a6,$a7
    bnez	$a6,.L0d951ff0
    # Line 801
    la	$v0,__glCrmRect
    # Line 776
    lw	$a1,484($s0)
    lw	$t0,488($s0)
    bne	$t0,$a1,.L0d951ff0
    # Line 801
    la	$v0,__glCrmRect
    # Line 776
    bne	$a1,$t1,.L0d951ff0
    # Line 801
    la	$v0,__glCrmRect
    # Line 776
    lw	$t2,1792($s0)
    andi	$t2,$t2,0x40
    bnez	$t2,.L0d951fec
    # Line 784
    la	$a2,__glCrmFastRect
    sw	$a2,12100($s0)
    lbu	$t3,-32467($t9)
    beqz	$t3,.L0d951fc8
    move	$a1,$a2
    # Line 794
    la	$a1,__glCrmLeftRightRect
    # Line 793
    sw	$a2,-32472($t9)
    # Line 794
    sw	$a1,12100($s0)
.L0d951fc8:
    lbu	$t8,30652($s0)
    beqz	$t8,.L0d952004
    # Line 798
    la	$at,__glCrmFrontBackRect
    # Line 803
    ld	$gp,24($sp)
    # Line 797
    sw	$a1,-32492($t9)
    # Line 798
    sw	$at,12100($s0)
    # Line 803
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d951fec:
    # Line 801
    la	$v0,__glCrmRect
.L0d951ff0:
    # Line 803
    ld	$gp,24($sp)
    # Line 801
    sw	$v0,12100($s0)
    # Line 803
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d952004:
    ld	$s0,16($sp)
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d952014:
    # Line 741
    lw	$v1,1804($s0)
    bnez	$v1,.L0d951f34
    la	$a0,__glSaveN
    lw	$a2,11920($s0)
    bne	$a2,$a0,.L0d9520fc
    lw	$a1,6072($s0)
    # Line 744
    la	$a2,__glcrmim_MipsVertexInLineN3fv
    b	.L0d951f34
    sw	$a2,1364($a1)
.L0d952038:
    # Line 723
    la	$a3,__glcrmim_vertexDTFast
    # Line 686
    sltiu	$a4,$t8,2
    li	$t2,0x10
    # Line 724
    li	$a1,24
    # Line 686
    lwc1	$f2,_lit_bf800000
    bnez	$a4,.L0d95207c
    addiu	$t0,$a3,12
    lwc1	$f4,232($a2)
    c.le.s	$f2,$f4
    bc1f	.L0d95207c
    lwc1	$f3,_lit_3f800000
    c.le.s $f4,$f3
    bc1f .L0d95207c
    ld	$a5,0($sp)
    andi	$a5,$a5,0x4
    beqz	$a5,.L0d95211c
    # Line 689
    li	$t1,1
.L0d95207c:
    # Line 691
    sb	$zero,-32612($t9)
    # Line 723
    sw	$a3,-32604($t9)
    # Line 724
    move	$a2,$zero
    addiu	$a5,$a3,4
    lw	$a7,6072($s0)
    move	$a4,$a3
    addiu	$a3,$a3,8
    addiu	$t1,$a7,1332
    addiu	$a6,$a7,1324
    addiu	$t3,$a7,1328
    addiu	$a7,$a7,1320
.L0d9520a8:
    addu	$a0,$a2,$a4
    addu	$at,$a2,$a7
    lw	$a0,0($a0)
    addu	$v1,$a2,$a5
    sw	$a0,0($at)
    addu	$a0,$a2,$a6
    lw	$v1,0($v1)
    addu	$v0,$a2,$a3
    sw	$v1,0($a0)
    addu	$v1,$a2,$t3
    lw	$v0,0($v0)
    addiu	$a1,$a1,-4
    addu	$at,$a2,$t0
    sw	$v0,0($v1)
    addu	$v0,$a2,$t1
    lw	$at,0($at)
    addu	$a2,$a2,$t2
    bgtz	$a1,.L0d9520a8
    sw	$at,0($v0)
    b	.L0d951f38
    # Line 761
    lw	$a2,29720($s0)
.L0d9520fc:
    # Line 744
    la	$a3,__glSaveC
    bne	$a2,$a3,.L0d952114
    # Line 750
    la	$a5,__glcrmim_MipsVertexInLine3fv
    # Line 747
    la	$a4,__glcrmim_MipsVertexInLineC3fv
    b	.L0d951f34
    sw	$a4,1364($a1)
.L0d952114:
    b	.L0d951f34
    # Line 750
    sw	$a5,1364($a1)
.L0d95211c:
    # Line 689
    sb	$t1,-32612($t9)
    li	$a6,0x10
    # Line 703
    la	$t0,__glcrmim_mipsVertexNoXFDTFast
    # Line 704
    li	$a1,24
    move	$a2,$zero
    # Line 703
    sw	$t0,-32604($t9)
    addiu	$a4,$t0,12
    addiu	$a3,$t0,4
    # Line 704
    lw	$t1,6072($s0)
    move	$a5,$t0
    addiu	$t0,$t0,8
    addiu	$t3,$t1,1332
    addiu	$t2,$t1,1324
    # Line 719
    lwc1	$f5,_lit_bf000000
    addiu	$a7,$t1,1328
    # Line 704
    addiu	$t1,$t1,1320
.L0d95215c:
    addu	$a0,$a2,$a5
    addu	$at,$a2,$t1
    lw	$a0,0($a0)
    addu	$v1,$a2,$a3
    sw	$a0,0($at)
    addu	$a0,$a2,$t2
    lw	$v1,0($v1)
    addu	$v0,$a2,$t0
    sw	$v1,0($a0)
    addu	$v1,$a2,$a7
    lw	$v0,0($v0)
    addiu	$a1,$a1,-4
    addu	$at,$a2,$a4
    sw	$v0,0($v1)
    addu	$v0,$a2,$t3
    lw	$at,0($at)
    addu	$a2,$a2,$a6
    bgtz	$a1,.L0d95215c
    sw	$at,0($v0)
    # Line 705
    la	$a1,__glMipsClipCheck2D_2
    # Line 706
    la	$a2,__glMipsClipCheck2D_3
    # Line 707
    la	$a3,__glMipsClipCheck2D_4
    # Line 708
    la	$a6,__glValidateVertex2Clip
    # Line 720
    lw	$a5,29720($s0)
    # Line 719
    lw	$a4,29716($s0)
    # Line 709
    la	$a7,__glValidateVertex3Clip
    # Line 720
    mtc1	$a5,$f6
    # Line 710
    la	$t0,__glValidateVertex4Clip
    # Line 719
    mtc1	$a4,$f4
    # Line 710
    sw	$t0,11984($s0)
    # Line 709
    sw	$a7,11980($s0)
    # Line 720
    cvt.s.w	$f6,$f6
    # Line 708
    sw	$a6,11976($s0)
    # Line 719
    cvt.s.w	$f4,$f4
    # Line 707
    sw	$a3,11944($s0)
    # Line 706
    sw	$a2,11940($s0)
    # Line 705
    sw	$a1,11936($s0)
    # Line 720
    add.s	$f6,$f6,$f5
    # Line 719
    add.s	$f4,$f4,$f5
    # Line 720
    swc1	$f6,29736($s0)
    b	.L0d951f54
    # Line 719
    swc1	$f4,29732($s0)
.end __glCrmPickVertexProcs

# Function: __glCrmPickStoreProcs
# Declared: Line 834 (Source lines: 835-918)
# Address: 0x0d952210 - 0x0d95242c (Size: 540 bytes, Frame: 32)
.globl __glCrmPickStoreProcs
.ent __glCrmPickStoreProcs
__glCrmPickStoreProcs:
    # Line 835
    lui	$v0,0x10
    # Line 837
    lw	$at,30436($a0)
    # Line 835
    addiu	$sp,$sp,-32
    addiu	$v0,$v0,-5252
    sd	$gp,24($sp)
    addu	$gp,$t9,$v0
    # Line 840
    # lw $t9, -31308($gp) # &__glCrmGenericPickStoreProcs
    # Line 835
    sd	$ra,8($sp)
    sd	$s0,16($sp)
    # Line 840
    nop
    # Line 835
    move	$s0,$a0
    # Line 840
    jal	__glCrmGenericPickStoreProcs
    # Line 837
    sd	$at,0($sp)
    # Line 844
    lw	$v1,3204($s0)
    li	$a2,7168
    beq	$a2,$v1,.L0d9522f8
    ld	$ra,8($sp)
.L0d952254:
    # Line 890
    lui	$a1,0x1
.L0d952258:
    addu	$a1,$s0,$a1
    sw	$zero,-32644($a1)
    # Line 891
    lw	$a3,32088($s0)
    # Line 897
    la	$a4,__glBeginPolygon
    # Line 891
    sll	$a3,$a3,0x10
    la	$a0,__glBeginLLoop
    bltz	$a3,.L0d9523f8
    sw	$a0,12036($s0)
    # Line 895
    la	$a3,__glBeginPoints
    sw	$a3,12028($s0)
.L0d952280:
    # Line 897
    sw	$a4,12064($s0)
.L0d952284:
    # Line 900
    la	$a5,__glCrmBeginLStrip
    # Line 901
    la	$a7,__glBeginLines
    # Line 902
    la	$t0,__glBeginTStrip
    # Line 903
    la	$t1,__glBeginTFan
    # Line 904
    la	$t2,__glBeginTriangles
    # Line 905
    la	$t3,__glBeginQStrip
    # Line 906
    la	$t8,__glBeginQuads
    sw	$t8,12056($s0)
    # Line 905
    sw	$t3,12060($s0)
    # Line 904
    sw	$t2,12044($s0)
    # Line 903
    sw	$t1,12052($s0)
    # Line 908
    lw	$a6,3204($s0)
    # Line 902
    sw	$t0,12048($s0)
    # Line 901
    sw	$a7,12032($s0)
    # Line 908
    bne	$a2,$a6,.L0d9522e4
    # Line 900
    sw	$a5,12040($s0)
    # Line 908
    ld	$t9,0($sp)
    ld	$a4,0($sp)
    andi	$t9,$t9,0x2000
    beqz	$t9,.L0d952404
    andi	$a4,$a4,0x1008
    lbu	$at,3221($s0)
    beqz	$at,.L0d952404
    nop
.L0d9522e4:
    # Line 914
    sw	$zero,-32640($a1)
    # Line 918
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9522f8:
    # Line 844
    lw	$v0,1804($s0)
    lw	$a1,1792($s0)
    bnez	$v0,.L0d952254
    andi	$v1,$a1,0xc0
    bnez	$v1,.L0d952254
    andi	$a0,$a1,0x200
    beqz	$a0,.L0d952340
    nop
    lwc1	$f0,472($s0)
    ldc1	$f1,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    c.le.d	$f0,$f1
    bc1f	.L0d952254
    andi	$a3,$a1,0x20
    beqz	$a3,.L0d952340
    andi	$a4,$a1,0x100
    bnez	$a4,.L0d952258
    # Line 890
    lui	$a1,0x1
.L0d952340:
    # Line 844
    lw	$a5,484($s0)
    lw	$a6,488($s0)
    bne	$a5,$a6,.L0d952258
    # Line 890
    lui	$a1,0x1
    # Line 844
    ld	$a7,0($sp)
    lui	$t0,0x2
    ori	$t0,$t0,0x1000
    and	$a7,$a7,$t0
    bnez	$a7,.L0d952258
    # Line 890
    lui	$a1,0x1
    # Line 844
    lbu	$t1,28216($s0)
    beqz	$t1,.L0d952384
    nop
    lw	$t2,32088($s0)
    sll	$t2,$t2,0x10
    bgez	$t2,.L0d952258
    # Line 890
    lui	$a1,0x1
.L0d952384:
    # Line 844
    lbu	$t3,3221($s0)
    beqz	$t3,.L0d9523ac
    ld	$t8,0($sp)
    andi	$t8,$t8,0x2000
    bnez	$t8,.L0d952258
    # Line 890
    lui	$a1,0x1
    # Line 844
    lw	$t9,1812($s0)
    andi	$t9,$t9,0x2
    bnez	$t9,.L0d952258
    # Line 890
    lui	$a1,0x1
.L0d9523ac:
    # Line 844
    lbu	$at,3220($s0)
    beqz	$at,.L0d9523cc
    # Line 884
    lui	$a1,0x1
    # Line 844
    lw	$v0,1812($s0)
    andi	$v0,$v0,0x1
    bnez	$v0,.L0d952258
    # Line 890
    lui	$a1,0x1
    # Line 884
    lui	$a1,0x1
.L0d9523cc:
    # Line 888
    la	$a3,__glCrmBeginPolygon
    # Line 884
    addu	$a1,$s0,$a1
    li	$a4,2
    sw	$a4,-32644($a1)
    # Line 885
    sb	$zero,-32632($a1)
    # Line 888
    sw	$a3,12064($s0)
    # Line 887
    la	$a0,__glCrmBeginPoints
    sw	$a0,12028($s0)
    # Line 886
    la	$v1,__glCrmBeginLLoop
    # Line 888
    b	.L0d952284
    # Line 886
    sw	$v1,12036($s0)
.L0d9523f8:
    # Line 893
    la	$a3,__glCrmBeginPoints
    b	.L0d952280
    sw	$a3,12028($s0)
.L0d952404:
    # Line 908
    bnez	$a4,.L0d9522e4
    nop
    # Line 914
    sw	$zero,-32640($a1)
    # Line 918
    ld	$gp,24($sp)
    # Line 911
    lw	$a5,-32644($a1)
    # Line 918
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    # Line 911
    ori	$a5,$a5,0x1
    # Line 918
    jr	$ra
    # Line 911
    sw	$a5,-32644($a1)
.end __glCrmPickStoreProcs

# Function: crmSetupPrimAdjustment
# Declared: Line 921 (Source lines: 922-1033)
# Address: 0x0d952430 - 0x0d95264c (Size: 540 bytes, Frame: 16)
.ent crmSetupPrimAdjustment
crmSetupPrimAdjustment:
    # Line 922
    lw	$at,3204($a0)
    li	$v0,7168
    addiu	$sp,$sp,-16
    beq	$at,$v0,.L0d952478
    lui	$a2,0x1
    # Line 941
    addu	$v1,$a2,$a0
    # Line 950
    sb	$zero,-32541($v1)
    # Line 949
    sb	$zero,-32540($v1)
    # Line 948
    sb	$zero,-32544($v1)
    # Line 947
    sb	$zero,-32542($v1)
    # Line 946
    sb	$zero,-32543($v1)
    # Line 945
    sb	$zero,-32539($v1)
    # Line 944
    sb	$zero,-32545($v1)
    # Line 943
    sb	$zero,-32546($v1)
    # Line 942
    sb	$zero,-32547($v1)
    # Line 1033
    addiu	$sp,$sp,16
    jr	$ra
    # Line 941
    sb	$zero,-32548($v1)
.L0d952478:
    # Line 955
    lw	$a1,30436($a0)
    dsll32	$a1,$a1,0xf
    lw	$a5,488($a0)
    bgez	$a1,.L0d952510
    # Line 954
    lw	$a3,484($a0)
    # Line 960
    lw	$a4,492($a0)
    li	$a6,1028
    beq	$a4,$a6,.L0d952578
    # Line 962
    move	$a6,$zero
    # Line 960
    li	$a7,1029
    beq	$a4,$a7,.L0d952588
    li	$t0,1032
    # Line 968
    li	$a6,1
    # Line 960
    beq	$a4,$t0,.L0d952594
    # Line 968
    li	$a7,1
    # Line 960
    move	$a6,$zero
    move	$a7,$zero
.L0d9524bc:
    # Line 977
    li	$t1,6914
    beq	$a3,$t1,.L0d95259c
    addu	$a4,$a2,$a0
    li	$t2,6913
    beq	$a3,$t2,.L0d9525a8
    li	$t3,6912
    beq	$a3,$t3,.L0d9525b4
    nop
.L0d9524dc:
    # Line 989
    beqz	$a6,.L0d952544
.L0d9524e0:
    # Line 990
    lbu	$a2,0($sp)
.L0d9524e4:
    # Line 1030
    sb	$a2,-32541($a4)
.L0d9524e8:
    # Line 1029
    sb	$a2,-32540($a4)
    # Line 1028
    sb	$a2,-32544($a4)
    # Line 1027
    sb	$a2,-32542($a4)
    # Line 1026
    sb	$a2,-32543($a4)
    # Line 1025
    sb	$a2,-32539($a4)
    # Line 1031
    lbu	$t8,-32547($a4)
    # Line 1032
    sb	$t8,-32545($a4)
    # Line 1033
    addiu	$sp,$sp,16
    jr	$ra
    # Line 1031
    sb	$t8,-32546($a4)
.L0d952510:
    # Line 977
    li	$t9,6914
    li	$v0,6912
    li	$at,6913
    beq	$a3,$t9,.L0d952610
    addu	$a4,$a2,$a0
    beq	$a3,$at,.L0d95262c
    nop
    beq	$a3,$v0,.L0d952638
    nop
.L0d952534:
    # Line 989
    beq	$a3,$a5,.L0d9524e0
    move	$a7,$zero
    b	.L0d95254c
    # Line 992
    li	$v1,6914
.L0d952544:
    # Line 989
    beqz	$a7,.L0d95261c
    # Line 992
    li	$v1,6914
.L0d95254c:
    beq	$a5,$v1,.L0d9525c0
    li	$a2,6912
    li	$a1,6913
    beq	$a5,$a1,.L0d952600
    nop
    beq	$a5,$a2,.L0d952608
    lbu	$a2,1($sp)
.L0d952568:
    # Line 1004
    beqz	$a7,.L0d9525c8
    lbu	$a6,0($sp)
.L0d952570:
    # Line 1005
    b	.L0d9524e8
    # Line 1030
    sb	$a2,-32541($a4)
.L0d952578:
    # Line 962
    li	$a7,1
    # Line 975
    addu	$a4,$a2,$a0
.L0d952580:
    b	.L0d9524dc
    sb	$zero,0($sp)
.L0d952588:
    # Line 965
    li	$a6,1
    b	.L0d9524bc
    move	$a7,$zero
.L0d952594:
    # Line 968
    b	.L0d952580
    # Line 975
    addu	$a4,$a2,$a0
.L0d95259c:
    # Line 979
    lbu	$t0,-32544($a4)
    b	.L0d9524dc
    sb	$t0,0($sp)
.L0d9525a8:
    # Line 982
    lbu	$t1,-32547($a4)
    # Line 983
    b	.L0d9524dc
    # Line 982
    sb	$t1,0($sp)
.L0d9525b4:
    # Line 985
    lbu	$t2,-32548($a4)
    # Line 986
    b	.L0d9524dc
    # Line 985
    sb	$t2,0($sp)
.L0d9525c0:
    b	.L0d952568
    # Line 994
    lbu	$a2,-32544($a4)
.L0d9525c8:
    # Line 1004
    beq	$a2,$a6,.L0d952570
    nop
    # Line 1005
    beqz	$a6,.L0d952644
    nop
    # Line 1012
    sw	$a3,-32552($a4)
.L0d9525dc:
    # Line 1014
    la	$t3,__glCrmBeginPolygonMode
    # Line 1021
    sw	$t3,12056($a0)
    # Line 1020
    sw	$t3,12060($a0)
    # Line 1019
    sw	$t3,12044($a0)
    # Line 1018
    sw	$t3,12052($a0)
    # Line 1017
    sw	$t3,12048($a0)
    # Line 1021
    move	$a2,$zero
    b	.L0d9524e4
    # Line 1016
    sw	$t3,12064($a0)
.L0d952600:
    # Line 998
    b	.L0d952568
    # Line 997
    lbu	$a2,-32547($a4)
.L0d952608:
    # Line 1001
    b	.L0d952568
    # Line 1000
    lbu	$a2,-32548($a4)
.L0d952610:
    # Line 979
    lbu	$t8,-32544($a4)
    # Line 980
    b	.L0d952534
    # Line 979
    sb	$t8,0($sp)
.L0d95261c:
    # Line 989
    bne	$a3,$a5,.L0d95254c
    # Line 992
    li	$v1,6914
    b	.L0d9524e4
    # Line 990
    lbu	$a2,0($sp)
.L0d95262c:
    # Line 982
    lbu	$t9,-32547($a4)
    # Line 983
    b	.L0d952534
    # Line 982
    sb	$t9,0($sp)
.L0d952638:
    # Line 985
    lbu	$at,-32548($a4)
    b	.L0d952534
    sb	$at,0($sp)
.L0d952644:
    b	.L0d9525dc
    # Line 1014
    sw	$a5,-32552($a4)
.end crmSetupPrimAdjustment

# Function: __glCrmValidate
# Declared: Line 1036 (Source lines: 1037-1043)
# Address: 0x0d952650 - 0x0d9526a8 (Size: 88 bytes, Frame: 32)
.globl __glCrmValidate
.ent __glCrmValidate
__glCrmValidate:
    # Line 1037
    lui	$at,0x10
    addiu	$sp,$sp,-32
    addiu	$at,$at,-6340
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1038
    # lw $t9, -31892($gp) # &__glCrmUnlayerColorProcs
    # Line 1037
    sd	$s0,0($sp)
    # Line 1038
    nop
    # Line 1037
    sd	$ra,8($sp)
    # Line 1038
    jal	__glCrmUnlayerColorProcs
    # Line 1037
    move	$s0,$a0
    # Line 1040
    lw	$t9,11868($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1042
    # lw $t9, -31888($gp) # &__glCrmLayerColorProcs
    jal	__glCrmLayerColorProcs
    move	$a0,$s0
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 1043
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glCrmValidate

# Function: __glCrmValidateLighting
# Declared: Line 1057 (Source lines: 1058-1081)
# Address: 0x0d9526b0 - 0x0d9527a0 (Size: 240 bytes, Frame: 16)
.ent __glCrmValidateLighting
__glCrmValidateLighting:
    # Line 1061
    # lw $t9, -25768($gp) # &__glValidateLighting
    # Line 1058
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    sd	$ra,8($sp)
    # Line 1061
    jal	__glValidateLighting
    # Line 1058
    move	$s0,$a0
    # Line 1063
    lw	$a1,30436($s0)
    li	$a0,7168
    andi	$at,$a1,0x2000
    # Line 1076
    li	$a4,7168
    li	$a2,0x812e
    ld	$ra,8($sp)
    addu	$a2,$a2,$s0
    # Line 1063
    beqz	$at,.L0d952700
    dsll32	$v0,$a1,0xe
    bgez	$v0,.L0d952700
    nop
    lw	$v1,3204($s0)
    beq	$v1,$a0,.L0d952734
    nop
.L0d952700:
    # Line 1076
    lw	$a1,1792($s0)
    andi	$a1,$a1,0x40
    beqz	$a1,.L0d952728
    nop
    lbu	$a2,0($a2)
    beqz	$a2,.L0d952728
    nop
    lw	$a3,3204($s0)
    beq	$a3,$a4,.L0d952768
    # Line 1079
    la	$t0,__glCrmCalcAlphaColor
.L0d952728:
    ld	$s0,0($sp)
    # Line 1081
    jr	$ra
    addiu	$sp,$sp,16
.L0d952734:
    # Line 1063
    lw	$a5,1792($s0)
    andi	$a5,$a5,0x40
    li	$a6,0x812e
    # Line 1068
    la	$a7,__glCrmCalcAlphaColor
    # Line 1063
    beqz	$a5,.L0d95278c
    addu	$a6,$a6,$s0
    lbu	$a6,0($a6)
    beqz	$a6,.L0d952778
    nop
    # Line 1068
    sw	$a7,12004($s0)
    # Line 1081
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d952768:
    # Line 1079
    sw	$t0,12004($s0)
    # Line 1081
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d952778:
    # Line 1070
    lw	$t1,12008($s0)
    sw	$t1,12004($s0)
    # Line 1081
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d95278c:
    # Line 1073
    la	$t2,__glNop
    sw	$t2,12004($s0)
    # Line 1081
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glCrmValidateLighting

# Function: __glCrmPickAllProcs
# Declared: Line 1085 (Source lines: 1086-1454)
# Address: 0x0d9527a0 - 0x0d952f78 (Size: 2008 bytes, Frame: 192)
.globl __glCrmPickAllProcs
.ent __glCrmPickAllProcs
__glCrmPickAllProcs:
    # Line 1086
    addiu	$sp,$sp,-64
    sd	$s3,32($sp)
    # Line 1089
    lw	$s3,1792($a0)
    # Line 1086
    sd	$s2,16($sp)
    # Line 1088
    lw	$s2,32184($a0)
    # Line 1089
    lw	$a2,11756($a0)
    sd	$ra,48($sp)
    # Line 1086
    sd	$s0,8($sp)
    lui	$v0,0x10
    # Line 1089
    andi	$at,$a2,0x21
    # Line 1086
    move	$s0,$a0
    sd	$s4,40($sp)
    addiu	$v0,$v0,-6676
    sd	$gp,24($sp)
    # Line 1089
    beqz	$at,.L0d952810
    # Line 1086
    addu	$gp,$t9,$v0
    # Line 1098
    lw	$t9,11796($s0)
    jalr	$t9
    nop
    # Line 1099
    lbu	$v1,3220($s0)
    beqz	$v1,.L0d952808
    move	$a0,$zero
    lw	$a0,28208($s0)
    beqz	$a0,.L0d952808
    move	$a0,$zero
    li	$a0,1
.L0d952808:
    lw	$a2,11756($s0)
    sb	$a0,28216($s0)
.L0d952810:
    andi	$a1,$a2,0x80
    beqz	$a1,.L0d952828
    nop
    # Line 1107
    lw	$t9,11864($s0)
    jalr	$t9
    move	$a0,$s0
.L0d952828:
    lbu	$a2,3220($s0)
    andi	$a0,$s3,0x2
    beqz	$a2,.L0d952db4
    sd	$s1,56($sp)
    lbu	$a7,28216($s0)
    li	$t0,1
    li	$a6,9
    # Line 1122
    lbu	$a5,1884($s0)
    movz	$a6,$t0,$a7
    # Line 1117
    ori	$a4,$a6,0x100
    andi	$a3,$s3,0x1
    movz	$a4,$a6,$a0
    # Line 1120
    ori	$s1,$a4,0x200
    # Line 1122
    beqz	$a5,.L0d952888
    movz	$s1,$a4,$a3
    lbu	$t1,1885($s0)
    beqz	$t1,.L0d952888
    nop
    lbu	$t2,1886($s0)
    beqz	$t2,.L0d952888
    nop
    lbu	$t3,1887($s0)
    bnez	$t3,.L0d952890
    # Line 1139
    andi	$ra,$s3,0x10
.L0d952888:
    # Line 1126
    ori	$s1,$s1,0x800
.L0d95288c:
    # Line 1139
    andi	$ra,$s3,0x10
.L0d952890:
    # Line 1133
    lw	$t8,1392($s0)
    li	$a6,7425
    # Line 1137
    lui	$t9,0x2
    xor	$t8,$a6,$t8
    ori	$t9,$t9,0x2
    or	$t9,$s1,$t9
    # Line 1139
    beqz	$ra,.L0d9528fc
    movz	$s1,$t9,$t8
    lbu	$t9,3225($s0)
    beqz	$t9,.L0d952900
    # Line 1142
    lui	$a2,0x1
    dsll32	$ra,$s3,0x7
    bgez	$ra,.L0d9528fc
    # Line 1141
    ori	$s1,$s1,0x4004
    # Line 1142
    lwc1	$f0,500($s0)
    dmtc1	$zero,$f4
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    bc1f	.L0d9528f8
    # Line 1145
    lui	$at,0x4
    # Line 1142
    lwc1	$f1,504($s0)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f4
    bc1t .L0d952900
    lui	$a2,0x1
    # Line 1145
    lui	$at,0x4
.L0d9528f8:
    or	$s1,$s1,$at
.L0d9528fc:
    # Line 1142
    lui	$a2,0x1
.L0d952900:
    andi	$t0,$s3,0x1000
    # Line 1149
    or	$a7,$a2,$s1
    movz	$a7,$s1,$t0
    andi	$a5,$s3,0x8
    # Line 1152
    ori	$a4,$a7,0x40
    # Line 1160
    andi	$a1,$s3,0x8000
    movz	$a4,$a7,$a5
    # Line 1152
    andi	$a3,$s3,0x2000
    # Line 1155
    ori	$v1,$a4,0x10
    andi	$v0,$s3,0x100
    movz	$v1,$a4,$a3
    # Line 1158
    ori	$s1,$v1,0x8000
    # Line 1160
    beqz	$a1,.L0d952944
    movz	$s1,$v1,$v0
    lbu	$t1,3226($s0)
    # Line 1162
    ori	$t2,$s1,0x20
    movn	$s1,$t2,$t1
.L0d952944:
    # Line 1164
    andi	$s4,$s3,0x40
    beqz	$s4,.L0d952960
    # Line 1166
    andi	$t9,$s3,0x20
    # Line 1164
    lbu	$t3,1413($s0)
    # Line 1166
    ori	$t8,$s1,0x400
    movn	$s1,$t8,$t3
    andi	$t9,$s3,0x20
.L0d952960:
    beqz	$t9,.L0d952998
    sd	$t9,0($sp)
    # Line 1171
    lw	$ra,1912($s0)
    li	$at,4354
    beq	$ra,$at,.L0d952994
    nop
    lbu	$v0,28216($s0)
    beqz	$v0,.L0d952dac
    nop
    lw	$v1,32088($s0)
    sll	$v1,$v1,0x10
    bltz	$v1,.L0d952dac
    nop
.L0d952994:
    # Line 1178
    ori	$s1,$s1,0x1000
.L0d952998:
    # Line 1184
    lw	$a5,1836($s0)
    # Line 1183
    lw	$a4,1832($s0)
    # Line 1185
    beqz	$a0,.L0d9529b8
    # Line 1182
    lw	$a3,1828($s0)
    # Line 1185
    lw	$a0,1796($s0)
    andi	$a0,$a0,0x800
    beqz	$a0,.L0d952e28
    li	$at,0x8008
.L0d9529b8:
    # Line 1203
    andi	$a1,$s1,0x8
    # Line 1201
    sw	$zero,32192($s0)
    move	$a0,$zero
    # Line 1203
    beqz	$a1,.L0d9529dc
    # Line 1198
    sw	$s1,30436($s0)
    # Line 1203
    lw	$a3,32088($s0)
    sll	$a3,$a3,0x10
    bltz	$a3,.L0d952ecc
    # Line 1204
    li	$a3,8
.L0d9529dc:
    andi	$a4,$s1,0x2
    beqz	$a4,.L0d9529f4
    # Line 1207
    andi	$a5,$s1,0x24
    ori	$a0,$a0,0x10
    sw	$a0,32192($s0)
    andi	$a5,$s1,0x24
.L0d9529f4:
    beqz	$a5,.L0d952a08
    # Line 1210
    andi	$a7,$s1,0x2300
    ori	$a0,$a0,0x20
    sw	$a0,32192($s0)
    andi	$a7,$s1,0x2300
.L0d952a08:
    beqz	$a7,.L0d952a14
    # Line 1215
    ori	$t0,$a0,0x40
    sw	$t0,32192($s0)
.L0d952a14:
    # Line 1218
    lw	$a1,30656($s0)
    lw	$t9,160($a1)
    jalr	$t9
    move	$a0,$s0
    lbu	$t1,3222($s0)
    beqz	$t1,.L0d952a40
    nop
    # Line 1220
    lw	$a1,30660($s0)
    lw	$t9,160($a1)
    jalr	$t9
    move	$a0,$s0
.L0d952a40:
    lw	$a2,11756($s0)
    andi	$t2,$a2,0x21
    beqz	$t2,.L0d952dd8
    # Line 1347
    andi	$t0,$a2,0x1e
    # Line 1220
    lbu	$t3,28216($s0)
    beqz	$t3,.L0d952eb4
    dsll32	$t8,$s3,0xd
    bgez	$t8,.L0d952ed8
    nop
    # Line 1232
    lw	$a0,1984($s0)
    li	$t9,9216
    beq	$a0,$t9,.L0d952f44
    # Line 1234
    li	$a6,20
    # Line 1232
    li	$ra,9218
    xor	$ra,$a0,$ra
    # Line 1238
    li	$at,28
    # Line 1232
    li	$a6,4
    movz	$a6,$at,$ra
.L0d952a88:
    # Line 1239
    dsll32	$at,$s3,0xc
.L0d952a8c:
    bgez	$at,.L0d952ab0
    nop
    # Line 1242
    lw	$a0,2108($s0)
    li	$v0,9216
    beq	$a0,$v0,.L0d952f4c
    li	$v1,9218
    xor	$v1,$a0,$v1
    # Line 1247
    ori	$a1,$a6,0x18
    movz	$a6,$a1,$v1
.L0d952ab0:
    # Line 1249
    beqz	$s4,.L0d952ebc
    nop
    lbu	$a0,1412($s0)
    beqz	$a0,.L0d952ee0
    li	$a2,24
.L0d952ac4:
    # Line 1268
    ld	$a1,0($sp)
    beqz	$a1,.L0d952adc
    andi	$s3,$s1,0x2000
    # Line 1272
    ori	$a3,$a6,0x10
    # Line 1276
    ori	$a6,$a3,0x40
    movz	$a6,$a3,$s3
.L0d952adc:
    lw	$a1,1804($s0)
    # Line 1280
    ori	$a0,$a6,0x10
    movz	$a0,$a6,$a1
    # Line 1282
    sw	$a0,28076($s0)
    # Line 1283
    or	$a0,$a2,$a0
    # Line 1284
    sw	$a0,28084($s0)
    move	$a3,$a0
    # Line 1283
    sw	$a0,28080($s0)
    # Line 1284
    beqz	$s4,.L0d952b20
    # Line 1283
    move	$a4,$a0
    # Line 1286
    lbu	$a2,1413($s0)
    ori	$a4,$a0,0x1
    sw	$a4,28080($s0)
    beqz	$a2,.L0d952f00
    # Line 1290
    move	$a3,$a4
    # Line 1288
    ori	$a3,$a0,0x2
    sw	$a3,28084($s0)
.L0d952b20:
    # Line 1290
    lw	$a6,1392($s0)
    li	$a5,7425
    beq	$a5,$a6,.L0d952ec4
    # Line 1295
    or	$a2,$a4,$a3
    # Line 1300
    sw	$zero,28088($s0)
.L0d952b34:
    lbu	$a7,3226($s0)
    beqz	$a7,.L0d952b50
    nop
    # Line 1312
    lw	$t9,31196($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$s0,31108
.L0d952b50:
    # Line 1314
    lw	$t9,11836($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1323
    lw	$t9,11840($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1326
    lw	$t9,11804($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1328
    # lw $t9, -32740($gp) # &sub_0d950000
    addiu	$t9,$t9,9904
    bal __glCrmValidate
    move	$a0,$s0
    # Line 1334
    lw	$t9,11792($s0)
    jal	sub_0d950000
    move	$a0,$s0
    # Line 1336
    lw	$t9,11788($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1337
    lw	$t9,11800($s0)
    jalr	$t9
    move	$a0,$s0
    beqz	$s3,.L0d952bbc
    nop
    # Line 1340
    lw	$ra,30436($s0)
    ori	$ra,$ra,0x1000
    sw	$ra,30436($s0)
.L0d952bbc:
    # Line 1342
    lw	$t9,11832($s0)
    jalr	$t9
    move	$a0,$s0
    beqz	$s3,.L0d952bd4
    nop
    # Line 1344
    sw	$s1,30436($s0)
.L0d952bd4:
    # Line 1347
    lw	$t9,11828($s0)
    jalr	$t9
    move	$a0,$s0
    li	$s3,1
    lw	$a2,11756($s0)
.L0d952be8:
    # Line 1350
    andi	$t8,$a2,0x40
.L0d952bec:
    lui	$s1,0x1
    beqz	$t8,.L0d952da4
    addu	$s1,$s1,$s0
    # Line 1361
    lw	$t9,12656($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,-32608($s1)
    andi	$t9,$a0,0x2
    beqz	$t9,.L0d952c20
    # Line 1363
    andi	$ra,$a0,0x4
    ori	$a0,$a0,0x4
    sw	$a0,-32608($s1)
.L0d952c1c:
    andi	$ra,$a0,0x4
.L0d952c20:
    beqz	$ra,.L0d952c34
    ld	$s1,56($sp)
    # Line 1367
    # lw $t9, -31320($gp) # &__glCrmUpdatePolyStipple
    jal	__glCrmUpdatePolyStipple
    move	$a0,$s0
.L0d952c34:
    lw	$a2,11756($s0)
    andi	$at,$a2,0x29
    beqz	$at,.L0d952c58
    # Line 1372
    andi	$v0,$a2,0x23
    lw	$t9,11808($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11756($s0)
    andi	$v0,$a2,0x23
.L0d952c58:
    beqz	$v0,.L0d952c74
    # Line 1377
    andi	$v1,$a2,0x25
    lw	$t9,11812($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11756($s0)
    andi	$v1,$a2,0x25
.L0d952c74:
    beqz	$v1,.L0d952c9c
    # Line 1383
    andi	$a0,$a2,0x31
    # Line 1382
    lw	$t9,11844($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1383
    lw	$t9,11816($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11756($s0)
    andi	$a0,$a2,0x31
.L0d952c9c:
    beqz	$a0,.L0d952cb8
    # Line 1388
    andi	$a1,$a2,0x21
    lw	$t9,11824($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11756($s0)
    andi	$a1,$a2,0x21
.L0d952cb8:
    beqz	$a1,.L0d952cf8
    # Line 1398
    andi	$a3,$a2,0x27
    # Line 1392
    lw	$t9,11820($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11752($s0)
    andi	$a2,$a2,0x1
    beqz	$a2,.L0d952ce4
    # Line 1395
    nop	# was lw $t9, -27188($gp) # &__glValidateAlphaTest
    jal	__glValidateAlphaTest
    move	$a0,$s0
.L0d952ce4:
    # Line 1398
    lw	$t9,11916($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11756($s0)
    andi	$a3,$a2,0x27
.L0d952cf8:
    beqz	$a3,.L0d952d14
    # Line 1410
    andi	$a4,$a2,0x2f
    lw	$t9,11848($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a2,11756($s0)
    andi	$a4,$a2,0x2f
.L0d952d14:
    beqz	$a4,.L0d952d30
    nop
    beqz	$s3,.L0d952f64
    # Line 1423
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
.L0d952d24:
    addiu	$t9,$t9,9264
    bal __glCrmPickStoreProcs
    move	$a0,$s0
.L0d952d30:
    # Line 1427
    lw	$ra,3204($s0)
    li	$at,7168
    sw	$zero,11756($s0)
    beq	$ra,$at,.L0d952df8
    # Line 1426
    sw	$zero,11752($s0)
.L0d952d44:
    # Line 1434
    lw	$a2,32188($s0)
    lw	$a0,32192($s0)
    lw	$v0,8688($a2)
    nor	$v1,$a0,$zero
    and	$v0,$v0,$v1
    andi	$v0,$v0,0x1
    ld	$ra,48($sp)
    beqz	$v0,.L0d952d88
    ld	$s4,40($sp)
.L0d952d68:
    # Line 1449
    lw	$a1,16384($s2)
    sll	$a1,$a1,0x3
    bltz	$a1,.L0d952d88
    nop
    lw	$a3,16384($s2)
    sll	$a3,$a3,0x3
    bgez	$a3,.L0d952d68
    nop
.L0d952d88:
    # Line 1453
    sw	$a0,8688($a2)
    # Line 1454
    ld	$gp,24($sp)
    ld	$s0,8($sp)
    ld	$s2,16($sp)
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d952da4:
    b	.L0d952c1c
    # Line 1363
    lw	$a0,-32608($s1)
.L0d952dac:
    # Line 1175
    b	.L0d952998
    ori	$s1,$s1,0x2002
.L0d952db4:
    # Line 1126
    lw	$a4,1880($s0)
    lw	$a7,30736($s0)
    andi	$a6,$s3,0x4
    li	$a5,128
    xor	$a4,$a4,$a7
    movz	$a5,$zero,$a6
    # Line 1133
    ori	$s1,$a5,0x800
    b	.L0d95288c
    movz	$s1,$a5,$a4
.L0d952dd8:
    # Line 1347
    beqz	$t0,.L0d952f54
    # Line 1350
    move	$s3,$zero
    lw	$t9,11840($s0)
    jal	sub_0d950000
    move	$a0,$s0
    li	$s3,1
    b	.L0d952be8
    lw	$a2,11756($s0)
.L0d952df8:
    # Line 1427
    lw	$a0,32088($s0)
    lw	$t1,32092($s0)
    beq	$t1,$a0,.L0d952d44
    nop
    # Line 1434
    lw	$t9,32184($s0)
    sw	$a0,8216($t9)
    lw	$t8,32188($s0)
    lw	$t3,32088($s0)
    sw	$t3,8216($t8)
    lw	$t2,32088($s0)
    b	.L0d952d44
    sw	$t2,32092($s0)
.L0d952e28:
    # Line 1185
    li	$a0,0x8001
    li	$t0,0x8003
    li	$ra,0x8007
    beq	$a0,$a3,.L0d952ea8
    li	$t1,0x8004
    li	$a7,0x8002
    beq	$a7,$a3,.L0d952eac
    # Line 1195
    lui	$a1,0x8
    # Line 1185
    beq	$t0,$a3,.L0d952eac
    # Line 1195
    lui	$a1,0x8
    # Line 1185
    beq	$t1,$a3,.L0d952eac
    # Line 1195
    lui	$a1,0x8
    # Line 1185
    beq	$a0,$a4,.L0d952eac
    # Line 1195
    lui	$a1,0x8
    # Line 1185
    beq	$a7,$a4,.L0d952eac
    # Line 1195
    lui	$a1,0x8
    # Line 1185
    beq	$t0,$a4,.L0d952eac
    # Line 1195
    lui	$a1,0x8
    # Line 1185
    beq	$t1,$a4,.L0d952eac
    # Line 1195
    lui	$a1,0x8
    # Line 1185
    beq	$a5,$ra,.L0d952eac
    # Line 1195
    lui	$a1,0x8
    # Line 1185
    beq	$a5,$at,.L0d952eac
    # Line 1195
    lui	$a1,0x8
    # Line 1185
    li	$v0,0x800a
    beq	$a5,$v0,.L0d952eac
    # Line 1195
    lui	$a1,0x8
    # Line 1185
    li	$v1,0x800b
    beq	$a5,$v1,.L0d952eac
    # Line 1195
    lui	$a1,0x8
    # Line 1185
    li	$a0,3057
    bne	$a5,$a0,.L0d9529b8
.L0d952ea8:
    # Line 1195
    lui	$a1,0x8
.L0d952eac:
    b	.L0d9529b8
    or	$s1,$s1,$a1
.L0d952eb4:
    b	.L0d952ab0
    # Line 1249
    move	$a6,$zero
.L0d952ebc:
    b	.L0d952ac4
    # Line 1268
    move	$a2,$zero
.L0d952ec4:
    # Line 1295
    b	.L0d952b34
    sw	$a2,28088($s0)
.L0d952ecc:
    # Line 1204
    sw	$a3,32192($s0)
    b	.L0d9529dc
    li	$a0,8
.L0d952ed8:
    b	.L0d952a88
    # Line 1239
    li	$a6,4
.L0d952ee0:
    # Line 1258
    lw	$a4,3588($s0)
    mtc1	$zero,$f4
    li	$a5,1
    move	$a0,$zero
    beqz	$a4,.L0d952f5c
    lw	$a2,1584($s0)
    b	.L0d952f18
    lw	$a3,1800($s0)
.L0d952f00:
    b	.L0d952b20
    # Line 1290
    sw	$a4,28084($s0)
    nop
    nop
.L0d952f10:
    # Line 1260
    beqz	$a7,.L0d952f5c
    addiu	$a2,$a2,116
.L0d952f18:
    # Line 1261
    sllv	$t0,$a5,$a0
    and	$t0,$a3,$t0
    # Line 1260
    addiu	$a0,$a0,1
    # Line 1261
    beqz	$t0,.L0d952f10
    # Line 1260
    sltu	$a7,$a0,$a4
    # Line 1261
    lwc1	$f2,76($a2)
    c.eq.s $f2,$f4
    bc1t .L0d952f10
    nop
    # Line 1266
    b	.L0d952ac4
    li	$a2,24
.L0d952f44:
    b	.L0d952a8c
    # Line 1239
    dsll32	$at,$s3,0xc
.L0d952f4c:
    b	.L0d952ab0
    # Line 1244
    ori	$a6,$a6,0x10
.L0d952f54:
    b	.L0d952bec
    # Line 1350
    andi	$t8,$a2,0x40
.L0d952f5c:
    b	.L0d952ac4
    # Line 1260
    li	$a2,8
.L0d952f64:
    # Line 1420
    lw	$t9,11840($s0)
    jalr	$t9
    move	$a0,$s0
    b	.L0d952d24
    # Line 1423
    nop	# was lw $t9, -32740($gp) # &sub_0d950000
.end __glCrmPickAllProcs

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_bf000000:
    .word 0xbf000000
_lit_bf800000:
    .word 0xbf800000

