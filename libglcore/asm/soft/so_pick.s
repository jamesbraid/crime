# Source: ../soft/so_pick.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_pick.c
# Total Functions: 15

.text

# Function: __glGenericPickSpanProcs
# Declared: Line 194 (Source lines: 195-521)
# Address: 0x0d9f4c70 - 0x0d9f540c (Size: 1948 bytes, Frame: 208)
.globl __glGenericPickSpanProcs
.ent __glGenericPickSpanProcs
__glGenericPickSpanProcs:
    # Line 195
    addiu	$sp,$sp,-80
    sd	$s4,40($sp)
    # Line 197
    lw	$s4,11760($a0)
    # Line 195
    sd	$s2,32($sp)
    # Line 196
    lw	$s2,30436($a0)
    # Line 195
    sd	$s0,48($sp)
    sd	$s1,24($sp)
    # Line 205
    addiu	$s1,$a0,12164
    lbu	$at,29836($a0)
    # Line 204
    addiu	$s0,$a0,12104
    # Line 195
    sd	$s3,16($sp)
    lui	$v0,0x6
    move	$s3,$a0
    sd	$s5,64($sp)
    addiu	$v0,$v0,-16100
    sd	$gp,8($sp)
    # Line 205
    beqz	$at,.L0d9f5064
    # Line 195
    addu	$gp,$t9,$v0
.L0d9f4cb8:
    # Line 210
    andi	$v1,$s2,0x10
    beqz	$v1,.L0d9f4ce0
    # Line 215
    andi	$a0,$s2,0x200
    la	$a0,__glStippleStippledSpan
    # Line 214
    la	$a1,__glStippleSpan
    # Line 215
    addiu	$s1,$s1,4
    # Line 214
    sw	$a1,0($s0)
    addiu	$s0,$s0,4
    # Line 215
    sw	$a0,-4($s1)
    andi	$a0,$s2,0x200
.L0d9f4ce0:
    beqz	$a0,.L0d9f4f64
.L0d9f4ce4:
    # Line 271
    la	$t3,__glDepthPassStippledSpan
.L0d9f4ce8:
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$t2,__glDepthTestStencilStippledSpan_asm
    la	$a4,__glStencilTestSpan_asm
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$a3,__glStencilTestStippledSpan
    la	$t8,__glDepthPassSpan
    la	$a7,__glDepthTestOffsetSpan
    andi	$s5,$s2,0x1
    la	$t1,__glDepthTestStencilSpan_asm
    andi	$v0,$s2,0x2
    beqz	$s5,.L0d9f4fac
    la	$t0,__glDepthTestStippledOffsetSpan
    beqz	$v0,.L0d9f507c
    # Line 290
    nop	# was lw $t9, -25064($gp) # &__glFlatRGBASpan
    # Line 289
    la	$a2,__glShadeRGBASpan
    sw	$a2,0($s0)
    # Line 290
    sw	$a2,0($s1)
.L0d9f4d2c:
    # Line 305
    andi	$t9,$s2,0x8
    addiu	$s1,$s1,4
    beqz	$t9,.L0d9f4d6c
    # Line 304
    addiu	$s0,$s0,4
    # Line 308
    la	$v0,__glTextureStippledSpan
    # Line 307
    la	$v1,__glTextureSpan
    sw	$v1,0($s0)
    # Line 308
    sw	$v0,0($s1)
    # Line 310
    lw	$v0,1792($s3)
    dsll32	$at,$v0,0xe
    bgez	$at,.L0d9f4d64
    dsll32	$a1,$v0,0x1
    bgez	$a1,.L0d9f513c
    # Line 314
    nop	# was lw $t9, -24468($gp) # &__glLookUpTextureParams
.L0d9f4d64:
    # Line 351
    addiu	$s1,$s1,4
    # Line 350
    addiu	$s0,$s0,4
.L0d9f4d6c:
    # Line 351
    andi	$a2,$s2,0x1000
    beqz	$a2,.L0d9f4d9c
    nop
    lw	$t9,1912($s3)
    li	$at,4354
    beq	$t9,$at,.L0d9f5088
    # Line 359
    la	$v0,__glFogStippledSpan
    # Line 358
    la	$v1,__glFogSpan
    sw	$v1,0($s0)
    # Line 359
    sw	$v0,0($s1)
.L0d9f4d94:
    # Line 362
    addiu	$s1,$s1,4
    # Line 361
    addiu	$s0,$s0,4
.L0d9f4d9c:
    # Line 362
    beqz	$a0,.L0d9f4dec
    # Line 367
    la	$a0,__glAlphaTestStippledSpan
    # Line 366
    la	$a2,__glAlphaTestSpan
    # Line 367
    andi	$a1,$s2,0x20
    andi	$v0,$s2,0x4
    addiu	$s1,$s1,4
    # Line 366
    sw	$a2,0($s0)
    addiu	$s0,$s0,4
    # Line 367
    beqz	$a1,.L0d9f502c
    sw	$a0,-4($s1)
    # Line 372
    sw	$a4,0($s0)
    # Line 376
    beqz	$v0,.L0d9f5130
    sw	$a3,0($s1)
    dsll32	$a3,$s2,0xd
    bgez	$a3,.L0d9f5124
    nop
    # Line 381
    sw	$a6,4($s0)
    # Line 382
    sw	$a5,4($s1)
.L0d9f4de4:
    # Line 401
    addiu	$s1,$s1,8
    # Line 400
    addiu	$s0,$s0,8
.L0d9f4dec:
    # Line 415
    lbu	$a4,30652($s3)
    beqz	$a4,.L0d9f4f5c
    # Line 432
    subu	$a5,$s0,$s3
    addiu	$a5,$a5,-12104
    li	$a0,1
    sra	$a5,$a5,0x2
    sw	$a5,12224($s3)
.L0d9f4e08:
    andi	$a6,$s2,0x880
    beqz	$a6,.L0d9f4e30
    # Line 439
    andi	$t1,$s2,0x100
    # Line 438
    lw	$t0,200($s4)
    sw	$t0,0($s0)
    # Line 439
    addiu	$s1,$s1,4
    lw	$a7,204($s4)
    # Line 438
    addiu	$s0,$s0,4
    # Line 439
    sw	$a7,-4($s1)
    andi	$t1,$s2,0x100
.L0d9f4e30:
    beqz	$t1,.L0d9f4e9c
    # Line 472
    andi	$v1,$s2,0x40
    # Line 446
    nor	$t2,$s2,$zero
    # Line 444
    lw	$a4,1836($s3)
    # Line 446
    andi	$t2,$t2,0x800
    # Line 443
    lw	$a3,1832($s3)
    # Line 446
    beqz	$t2,.L0d9f4e70
    # Line 442
    lw	$v0,1828($s3)
    # Line 446
    beqz	$a3,.L0d9f50e4
    li	$a7,774
.L0d9f4e58:
    # Line 452
    lw	$t8,200($s4)
.L0d9f4e5c:
    sw	$t8,0($s0)
    # Line 453
    addiu	$s1,$s1,4
    lw	$t3,204($s4)
    # Line 452
    addiu	$s0,$s0,4
    # Line 453
    sw	$t3,-4($s1)
.L0d9f4e70:
    # Line 455
    li	$a5,770
.L0d9f4e74:
    beq	$a5,$v0,.L0d9f509c
.L0d9f4e78:
    # Line 465
    li	$t9,771
    beq	$v0,$t9,.L0d9f5010
.L0d9f4e80:
    # Line 469
    la	$at,__glBlendSpan
.L0d9f4e84:
    sw	$at,0($s0)
.L0d9f4e88:
    # Line 472
    addiu	$s1,$s1,4
    la	$v0,__glBlendStippledSpan
    # Line 471
    addiu	$s0,$s0,4
    # Line 472
    sw	$v0,-4($s1)
    andi	$v1,$s2,0x40
.L0d9f4e9c:
    beqz	$v1,.L0d9f4fc4
    nop
    beqz	$s5,.L0d9f50c8
    # Line 480
    la	$a4,__glDitherCIStippledSpan
    # Line 477
    la	$a1,__glDitherRGBAStippledSpan
    # Line 476
    la	$a2,__glDitherRGBASpan
    sw	$a2,0($s0)
    # Line 477
    sw	$a1,0($s1)
.L0d9f4ebc:
    # Line 492
    andi	$a3,$s2,0x80
    addiu	$s1,$s1,4
    beqz	$a3,.L0d9f4ee4
    # Line 491
    addiu	$s0,$s0,4
    # Line 495
    la	$a4,__glLogicOpStippledSpan
    # Line 494
    la	$a5,__glLogicOpSpan
    # Line 495
    addiu	$s1,$s1,4
    # Line 494
    sw	$a5,0($s0)
    addiu	$s0,$s0,4
    # Line 495
    sw	$a4,-4($s1)
.L0d9f4ee4:
    andi	$a6,$s2,0x800
    beqz	$a6,.L0d9f4f0c
    nop
    beqz	$s5,.L0d9f50d8
    # Line 500
    la	$a6,__glMaskCISpan
    # Line 499
    la	$a7,__glMaskRGBASpan
    sw	$a7,0($s0)
    # Line 500
    sw	$a7,0($s1)
.L0d9f4f04:
    # Line 506
    addiu	$s1,$s1,4
    # Line 505
    addiu	$s0,$s0,4
.L0d9f4f0c:
    # Line 510
    lw	$v1,184($s4)
    # Line 514
    subu	$v0,$s0,$s3
    # Line 510
    sw	$v1,0($s0)
    # Line 514
    addiu	$v0,$v0,-12100
    # Line 511
    lw	$t0,188($s4)
    # Line 514
    sra	$v0,$v0,0x2
    # Line 511
    sw	$t0,0($s1)
    # Line 514
    beqz	$a0,.L0d9f4fe0
    sw	$v0,12228($s3)
    ld	$s5,64($sp)
    # Line 516
    la	$a0,__glProcessReplicateSpan
    # Line 521
    ld	$gp,8($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    ld	$s4,40($sp)
    # Line 516
    sw	$a0,12232($s3)
    # Line 521
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f4f5c:
    b	.L0d9f4e08
    # Line 432
    move	$a0,$zero
.L0d9f4f64:
    # Line 215
    andi	$a1,$s2,0x20
    beqz	$a1,.L0d9f5208
    andi	$v0,$s2,0x4
    # Line 228
    la	$a2,__glStencilTestStippledSpan
    la	$a3,__glStencilTestSpan_asm
    sw	$a3,0($s0)
    # Line 232
    beqz	$v0,.L0d9f5290
    sw	$a2,0($s1)
    dsll32	$a4,$s2,0xd
    bgez	$a4,.L0d9f5280
    # Line 238
    la	$a2,__glDepthTestStencilStippledSpan_asm
    # Line 237
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    sw	$a6,4($s0)
    # Line 238
    sw	$a5,4($s1)
.L0d9f4fa0:
    # Line 257
    addiu	$s1,$s1,8
    b	.L0d9f4ce4
    # Line 256
    addiu	$s0,$s0,8
.L0d9f4fac:
    # Line 293
    beqz	$v0,.L0d9f5248
    # Line 298
    nop	# was lw $t9, -25068($gp) # &__glFlatCISpan
    # Line 297
    # lw $t9, -25076($gp) # &__glShadeCISpan
    sw	$t9,0($s0)
    # Line 298
    b	.L0d9f4d2c
    sw	$t9,0($s1)
.L0d9f4fc4:
    # Line 480
    beqz	$s5,.L0d9f5254
    # Line 488
    la	$at,__glRoundCIStippledSpan
    # Line 485
    la	$at,__glRoundRGBAStippledSpan
    # Line 484
    la	$v0,__glRoundRGBASpan
    sw	$v0,0($s0)
    # Line 485
    b	.L0d9f4ebc
    sw	$at,0($s1)
.L0d9f4fe0:
    ld	$s5,64($sp)
    # Line 518
    la	$v1,__glProcessSpan
    # Line 521
    ld	$gp,8($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    ld	$s4,40($sp)
    # Line 519
    sw	$v0,12224($s3)
    # Line 518
    sw	$v1,12232($s3)
    # Line 521
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f5010:
    # Line 465
    bne	$a5,$a3,.L0d9f4e84
    # Line 469
    la	$at,__glBlendSpan
    # Line 465
    li	$a1,0x8006
    bne	$a4,$a1,.L0d9f4e80
    # Line 467
    la	$a2,__glBlendSpan_MSA_SA
    b	.L0d9f4e88
    sw	$a2,0($s0)
.L0d9f502c:
    # Line 401
    beqz	$v0,.L0d9f4dec
    nop
    lw	$a3,1632($s3)
    li	$a4,512
    beq	$a3,$a4,.L0d9f52a4
    # Line 406
    dsll32	$a5,$s2,0xd
    bgez	$a5,.L0d9f5264
    # Line 415
    la	$v1,__glDepthTestStippledSpan_asm
    # Line 411
    addiu	$s0,$s0,4
    # Line 412
    addiu	$a6,$s1,4
    # Line 411
    sw	$a7,-4($s0)
    # Line 412
    move	$s1,$a6
    b	.L0d9f4dec
    sw	$t0,-4($a6)
.L0d9f5064:
    # Line 209
    la	$a7,__glClipSpan
    # Line 210
    addiu	$s1,$a0,12168
    # Line 209
    sw	$a7,12104($a0)
    addiu	$s0,$a0,12108
    # Line 210
    b	.L0d9f4cb8
    sw	$zero,12164($a0)
.L0d9f507c:
    # Line 292
    sw	$t9,0($s0)
    b	.L0d9f4d2c
    # Line 293
    sw	$t9,0($s1)
.L0d9f5088:
    # Line 356
    la	$at,__glFogStippledSpanSlow
    # Line 355
    la	$v0,__glFogSpanSlow
    sw	$v0,0($s0)
    # Line 356
    b	.L0d9f4d94
    sw	$at,0($s1)
.L0d9f509c:
    # Line 455
    li	$v1,0x8006
    bne	$a4,$v1,.L0d9f4e78
    li	$a1,771
    beq	$a3,$a1,.L0d9f52ec
    # Line 457
    li	$a2,1
    beq	$a3,$a2,.L0d9f5304
    # Line 459
    la	$t8,__glBlendSpan_SA_ONE
    beqz	$a3,.L0d9f52f8
    # Line 463
    la	$a3,__glBlendSpan
    b	.L0d9f4e88
    sw	$a3,0($s0)
.L0d9f50c8:
    # Line 479
    la	$a5,__glDitherCISpan
    sw	$a5,0($s0)
    b	.L0d9f4ebc
    # Line 480
    sw	$a4,0($s1)
.L0d9f50d8:
    # Line 502
    sw	$a6,0($s0)
    b	.L0d9f4f04
    # Line 503
    sw	$a6,0($s1)
.L0d9f50e4:
    # Line 446
    beq	$v0,$a7,.L0d9f4e58
    li	$t0,775
    beq	$v0,$t0,.L0d9f4e58
    li	$t1,772
    beq	$v0,$t1,.L0d9f4e58
    li	$t2,773
    beq	$v0,$t2,.L0d9f4e58
    li	$t3,776
    beq	$v0,$t3,.L0d9f4e58
    li	$t8,0x8007
    beq	$a4,$t8,.L0d9f4e58
    li	$t9,0x8008
    bne	$a4,$t9,.L0d9f4e74
    # Line 455
    li	$a5,770
    b	.L0d9f4e5c
    # Line 452
    lw	$t8,200($s4)
.L0d9f5124:
    # Line 384
    sw	$t1,4($s0)
    b	.L0d9f4de4
    # Line 385
    sw	$t2,4($s1)
.L0d9f5130:
    # Line 397
    sw	$t8,4($s0)
    b	.L0d9f4de4
    # Line 398
    sw	$t3,4($s1)
.L0d9f513c:
    sd	$a0,56($sp)
    # Line 314
    move	$a0,$s3
    sd	$ra,72($sp)
    jal	__glShadeCISpan
    li	$a1,3553
    # Line 315
    # lw $t9, -24460($gp) # &__glLookUpTexture
    move	$a0,$s3
    # Line 314
    sd	$v0,0($sp)
    # Line 315
    jal	__glLookUpTexture
    li	$a1,3553
    ld	$ra,72($sp)
    ld	$a0,56($sp)
    la	$a3,__glStencilTestStippledSpan
    la	$a4,__glStencilTestSpan_asm
    la	$a5,__glDepthTestStencilStippledOffsetSpan
    la	$a6,__glDepthTestStencilOffsetSpan
    la	$a7,__glDepthTestOffsetSpan
    la	$t0,__glDepthTestStippledOffsetSpan
    # Line 316
    lw	$t9,228($v0)
    la	$t1,__glDepthTestStencilSpan_asm
    lw	$at,64($t9)
    la	$t2,__glDepthTestStencilStippledSpan_asm
    li	$v0,6407
    la	$t3,__glDepthPassStippledSpan
    bne	$at,$v0,.L0d9f4d64
    la	$t8,__glDepthPassSpan
    lw	$v1,56($t9)
    bnez	$v1,.L0d9f4d64
    # Line 318
    ld	$t9,0($sp)
    lw	$t9,12($t9)
    li	$a1,9986
    beq	$t9,$a1,.L0d9f5338
.L0d9f51bc:
    # Line 323
    li	$v0,9987
    beq	$v0,$t9,.L0d9f5364
.L0d9f51c4:
    # Line 328
    li	$at,9728
    beq	$at,$t9,.L0d9f5390
.L0d9f51cc:
    # Line 333
    li	$v1,9984
    beq	$t9,$v1,.L0d9f53bc
.L0d9f51d4:
    # Line 338
    li	$a1,0x8146
    beq	$a1,$t9,.L0d9f53e8
    ld	$a2,0($sp)
.L0d9f51e0:
    # Line 343
    bne	$v0,$t9,.L0d9f4d64
    ld	$t9,0($sp)
    lw	$t9,16($t9)
    li	$a2,0x8146
    bne	$a2,$t9,.L0d9f4d64
    # Line 346
    la	$at,__glTextureRGB_F_LML_StippledSpan
    # Line 345
    la	$v0,__glTextureRGB_F_LML_Span
    sw	$v0,0($s0)
    # Line 346
    b	.L0d9f4d64
    sw	$at,0($s1)
.L0d9f5208:
    # Line 257
    beqz	$v0,.L0d9f5240
    nop
    lw	$v1,1632($s3)
    li	$a1,512
    beq	$v1,$a1,.L0d9f530c
    # Line 262
    dsll32	$a2,$s2,0xd
    bgez	$a2,.L0d9f52d0
    # Line 268
    la	$a7,__glDepthTestStippledSpan_asm
    # Line 267
    la	$a3,__glDepthTestStippledOffsetSpan
    addiu	$s0,$s0,4
    la	$a4,__glDepthTestOffsetSpan
    # Line 268
    addiu	$s1,$s1,4
    # Line 267
    sw	$a4,-4($s0)
    # Line 268
    sw	$a3,-4($s1)
.L0d9f5240:
    b	.L0d9f4ce8
    # Line 271
    la	$t3,__glDepthPassStippledSpan
.L0d9f5248:
    # Line 300
    sw	$t9,0($s0)
    b	.L0d9f4d2c
    # Line 301
    sw	$t9,0($s1)
.L0d9f5254:
    # Line 487
    la	$v0,__glRoundCISpan
    sw	$v0,0($s0)
    b	.L0d9f4ebc
    # Line 488
    sw	$at,0($s1)
.L0d9f5264:
    # Line 414
    addiu	$s0,$s0,4
    la	$a1,__glDepthTestSpan_asm
    # Line 415
    addiu	$a0,$s1,4
    # Line 414
    sw	$a1,-4($s0)
    # Line 415
    move	$s1,$a0
    b	.L0d9f4dec
    sw	$v1,-4($a0)
.L0d9f5280:
    # Line 238
    la	$a3,__glDepthTestStencilSpan_asm
    # Line 240
    sw	$a3,4($s0)
    b	.L0d9f4fa0
    # Line 241
    sw	$a2,4($s1)
.L0d9f5290:
    la	$a4,__glDepthPassStippledSpan
    la	$a5,__glDepthPassSpan
    # Line 253
    sw	$a5,4($s0)
    b	.L0d9f4fa0
    # Line 254
    sw	$a4,4($s1)
.L0d9f52a4:
    ld	$s5,64($sp)
    # Line 405
    la	$a6,__glNop
    # Line 521
    ld	$gp,8($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    ld	$s4,40($sp)
    # Line 405
    sw	$a6,12232($s3)
    # Line 521
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f52d0:
    # Line 270
    addiu	$s0,$s0,4
    # Line 268
    la	$t1,__glDepthTestSpan_asm
    # Line 271
    addiu	$t0,$s1,4
    # Line 270
    sw	$t1,-4($s0)
    # Line 271
    move	$s1,$t0
    b	.L0d9f5240
    sw	$a7,-4($t0)
.L0d9f52ec:
    # Line 457
    la	$t2,__glBlendSpan_SA_MSA
    b	.L0d9f4e88
    sw	$t2,0($s0)
.L0d9f52f8:
    # Line 461
    la	$t3,__glBlendSpan_SA_ZERO
    b	.L0d9f4e88
    sw	$t3,0($s0)
.L0d9f5304:
    # Line 459
    b	.L0d9f4e88
    sw	$t8,0($s0)
.L0d9f530c:
    ld	$s5,64($sp)
    # Line 261
    # lw $t9, -24996($gp) # &__glNop
    # Line 521
    ld	$gp,8($sp)
    ld	$s0,48($sp)
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    ld	$s4,40($sp)
    # Line 261
    sw	$t9,12232($s3)
    # Line 521
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9f5338:
    # Line 318
    ld	$at,0($sp)
    lw	$at,16($at)
    li	$v0,9729
    bne	$at,$v0,.L0d9f51bc
    # Line 321
    la	$at,__glTextureRGB_L_NML_StippledSpan
    # Line 320
    la	$v0,__glTextureRGB_L_NML_Span
    sw	$v0,0($s0)
    # Line 321
    ld	$t9,0($sp)
    sw	$at,0($s1)
    b	.L0d9f51bc
    lw	$t9,12($t9)
.L0d9f5364:
    # Line 323
    ld	$v1,0($sp)
    lw	$v1,16($v1)
    li	$a1,9729
    bne	$v1,$a1,.L0d9f51c4
    # Line 326
    la	$at,__glTextureRGB_L_LML_StippledSpan
    # Line 325
    la	$v1,__glTextureRGB_L_LML_Span
    sw	$v1,0($s0)
    # Line 326
    ld	$t9,0($sp)
    sw	$at,0($s1)
    b	.L0d9f51c4
    lw	$t9,12($t9)
.L0d9f5390:
    # Line 328
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    move	$a1,$at
    bne	$a1,$a2,.L0d9f51cc
    # Line 331
    la	$at,__glTextureRGB_N_N_StippledSpan
    # Line 330
    la	$v1,__glTextureRGB_N_N_Span
    sw	$v1,0($s0)
    # Line 331
    ld	$t9,0($sp)
    sw	$at,0($s1)
    b	.L0d9f51cc
    lw	$t9,12($t9)
.L0d9f53bc:
    # Line 333
    ld	$a2,0($sp)
    lw	$a2,16($a2)
    li	$a1,9728
    bne	$a1,$a2,.L0d9f51d4
    # Line 336
    la	$at,__glTextureRGB_N_NMN_StippledSpan
    # Line 335
    la	$v1,__glTextureRGB_N_NMN_Span
    sw	$v1,0($s0)
    # Line 336
    ld	$t9,0($sp)
    sw	$at,0($s1)
    b	.L0d9f51d4
    lw	$t9,12($t9)
.L0d9f53e8:
    # Line 338
    lw	$a2,16($a2)
    bne	$a1,$a2,.L0d9f51e0
    # Line 341
    la	$at,__glTextureRGB_F_F_StippledSpan
    # Line 340
    la	$v1,__glTextureRGB_F_F_Span
    sw	$v1,0($s0)
    # Line 341
    ld	$t9,0($sp)
    sw	$at,0($s1)
    b	.L0d9f51e0
    lw	$t9,12($t9)
.end __glGenericPickSpanProcs

# Function: __glGenericPickPointProcs
# Declared: Line 525 (Source lines: 526-571)
# Address: 0x0d9f5410 - 0x0d9f5520 (Size: 272 bytes, Frame: 0)
.globl __glGenericPickPointProcs
.ent __glGenericPickPointProcs
__glGenericPickPointProcs:
    # Line 527
    lw	$v1,28080($a0)
    # Line 532
    li	$a1,7169
    # Line 526
    lui	$v0,0x6
    # Line 537
    li	$a2,7170
    # Line 526
    addiu	$v0,$v0,-18052
    # Line 527
    lw	$a3,30436($a0)
    beqz	$v1,.L0d9f54b8
    # Line 526
    addu	$at,$t9,$v0
    # Line 532
    la	$v1,__glPoint
    sw	$v1,11952($a0)
.L0d9f5438:
    # Line 557
    dsll32	$a7,$a3,0xe
    # Line 532
    lw	$a4,3204($a0)
    # Line 557
    andi	$t0,$a3,0x1000
    # Line 532
    beq	$a4,$a1,.L0d9f54cc
    # Line 566
    la	$t2,__glPolygonOffsetPoint
    # Line 537
    beq	$a4,$a2,.L0d9f54f0
    # Line 540
    la	$a4,__glSelectPoint
    # Line 557
    andi	$a6,$a3,0x2000
    # Line 541
    lw	$a4,1792($a0)
    andi	$a4,$a4,0x400
    beqz	$a4,.L0d9f54d8
    nop
    lbu	$a5,3221($a0)
    beqz	$a5,.L0d9f54f8
    # Line 547
    la	$a4,__glRenderAntiAliasedRGBPoint
    # Line 545
    la	$a4,__glRenderAntiAliasedCIPoint
    sw	$a4,12496($a0)
.L0d9f547c:
    # Line 557
    beqz	$a6,.L0d9f548c
    nop
    bgez	$a7,.L0d9f5494
    nop
.L0d9f548c:
    beqz	$t0,.L0d9f54a0
    nop
.L0d9f5494:
    # Line 560
    sw	$a4,12500($a0)
    # Line 561
    la	$a4,__glRenderFlatFogPoint
    sw	$a4,12496($a0)
.L0d9f54a0:
    # Line 564
    lw	$t1,1796($a0)
    andi	$t1,$t1,0x200
    beqz	$t1,.L0d9f54c4
    nop
    # Line 571
    jr	$ra
    # Line 566
    sw	$t2,12504($a0)
.L0d9f54b8:
    # Line 530
    la	$t3,__glPointFast
    b	.L0d9f5438
    sw	$t3,11952($a0)
.L0d9f54c4:
    # Line 571
    jr	$ra
    # Line 569
    sw	$a4,12504($a0)
.L0d9f54cc:
    # Line 536
    la	$a4,__glFeedbackPoint
    # Line 537
    b	.L0d9f54a0
    # Line 536
    sw	$a4,12496($a0)
.L0d9f54d8:
    # Line 547
    lw	$t8,464($a0)
    li	$t9,1
    beq	$t8,$t9,.L0d9f5500
    # Line 550
    la	$a4,__glRenderAliasedPointN
    b	.L0d9f547c
    sw	$a4,12496($a0)
.L0d9f54f0:
    # Line 541
    b	.L0d9f54a0
    # Line 540
    sw	$a4,12496($a0)
.L0d9f54f8:
    b	.L0d9f547c
    # Line 547
    sw	$a4,12496($a0)
.L0d9f5500:
    # Line 550
    lbu	$v0,28216($a0)
    beqz	$v0,.L0d9f5514
    # Line 552
    la	$a4,__glRenderAliasedPoint1
    b	.L0d9f547c
    sw	$a4,12496($a0)
.L0d9f5514:
    # Line 554
    la	$a4,__glRenderAliasedPoint1_NoTex
    b	.L0d9f547c
    sw	$a4,12496($a0)
.end __glGenericPickPointProcs

# Function: __glGenericPickLineProcs
# Declared: Line 573 (Source lines: 574-797)
# Address: 0x0d9f5520 - 0x0d9f5a10 (Size: 1264 bytes, Frame: 16)
.globl __glGenericPickLineProcs
.ent __glGenericPickLineProcs
__glGenericPickLineProcs:
    # Line 575
    lw	$v1,28080($a0)
    # Line 574
    lui	$v0,0x6
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,-18324
    # Line 575
    lw	$a5,30436($a0)
    beqz	$v1,.L0d9f5794
    # Line 574
    addu	$at,$t9,$v0
    # Line 586
    la	$v1,__glOtherLStripVertex
    sw	$v1,11956($a0)
.L0d9f5544:
    # Line 591
    lw	$a3,3204($a0)
    sw	$zero,12404($a0)
    li	$a2,7169
    # Line 588
    la	$a1,__glSecondLinesVertex
    # Line 591
    beq	$a3,$a2,.L0d9f5824
    # Line 588
    sw	$a1,11964($a0)
    # Line 594
    li	$a4,7170
    beq	$a3,$a4,.L0d9f584c
    # Line 596
    la	$v1,__glSelectLine
    # Line 600
    lw	$a6,1792($a0)
    andi	$a6,$a6,0x200
    beqz	$a6,.L0d9f5830
    # Line 604
    nop	# was lw $t9, -25744($gp) # &__glRenderAliasLine
    # Line 602
    la	$a7,__glRenderAntiAliasLine
    sw	$a7,12472($a0)
.L0d9f5580:
    # Line 608
    addiu	$a4,$a0,12304
    # Line 610
    beqz	$a6,.L0d9f57b0
    # Line 607
    addiu	$a3,$a0,12240
.L0d9f558c:
    # Line 622
    la	$t0,__glScissorStippledLine
    # Line 619
    subu	$t2,$a3,$a0
    # Line 621
    la	$t1,__glScissorLine
    # Line 619
    addiu	$t2,$t2,-12240
    sra	$t2,$t2,0x2
    sw	$t2,12368($a0)
    # Line 622
    addiu	$a4,$a4,4
    # Line 621
    sw	$t1,0($a3)
    addiu	$a3,$a3,4
    # Line 622
    move	$a7,$zero
    sw	$t0,-4($a4)
.L0d9f55b8:
    # Line 616
    la	$t8,__glDepthTestStencilLine
    la	$t3,__glStencilTestLine
    la	$t2,__glStencilTestStippledLine
    # lw $t9, -25672($gp) # &__glDepthTestStencilStippledLine
.L0d9f55c8:
    # Line 656
    andi	$v0,$a5,0x1
    beqz	$v0,.L0d9f5838
    andi	$t0,$a5,0x2
    beqz	$t0,.L0d9f5888
    # Line 665
    la	$t0,__glFlatRGBASpan
    # Line 664
    la	$v1,__glShadeRGBASpan
    sw	$v1,0($a3)
    # Line 665
    sw	$v1,0($a4)
.L0d9f55e8:
    # Line 680
    andi	$a1,$a5,0x8
    addiu	$a4,$a4,4
    beqz	$a1,.L0d9f5610
    # Line 679
    addiu	$a3,$a3,4
    # Line 683
    la	$a2,__glTextureStippledSpan
    # Line 682
    la	$t0,__glTextureSpan
    # Line 683
    addiu	$a4,$a4,4
    # Line 682
    sw	$t0,0($a3)
    addiu	$a3,$a3,4
    # Line 683
    sw	$a2,-4($a4)
.L0d9f5610:
    andi	$t1,$a5,0x1000
    beqz	$t1,.L0d9f5640
    nop
    lw	$v0,1912($a0)
    li	$v1,4354
    beq	$v0,$v1,.L0d9f5894
    # Line 691
    la	$a1,__glFogStippledSpan
    # Line 690
    la	$a2,__glFogSpan
    sw	$a2,0($a3)
    # Line 691
    sw	$a1,0($a4)
.L0d9f5638:
    # Line 694
    addiu	$a4,$a4,4
    # Line 693
    addiu	$a3,$a3,4
.L0d9f5640:
    # Line 694
    beqz	$a6,.L0d9f568c
    # Line 699
    la	$v0,__glAntiAliasStippledLine
    addiu	$t0,$a4,4
    # Line 698
    la	$v1,__glAntiAliasLine
    addiu	$a6,$a3,4
    # Line 699
    andi	$a3,$a5,0x20
    andi	$t1,$a5,0x4
    # Line 698
    sw	$v1,-4($a6)
    # Line 699
    move	$a4,$t0
    sw	$v0,-4($t0)
    beqz	$a3,.L0d9f5854
    # Line 698
    move	$a3,$a6
    # Line 704
    sw	$t3,0($a6)
    # Line 705
    beqz	$t1,.L0d9f58dc
    sw	$t2,0($t0)
    # Line 707
    sw	$t8,4($a6)
    # Line 708
    sw	$t9,4($t0)
.L0d9f5684:
    # Line 714
    addiu	$a4,$t0,8
    # Line 713
    addiu	$a3,$a6,8
.L0d9f568c:
    # Line 734
    andi	$a1,$a5,0x200
.L0d9f5690:
    beqz	$a1,.L0d9f56ac
    # Line 741
    la	$a2,__glAlphaTestStippledSpan
    # Line 740
    la	$a6,__glAlphaTestSpan
    # Line 741
    addiu	$a4,$a4,4
    # Line 740
    sw	$a6,0($a3)
    addiu	$a3,$a3,4
    # Line 741
    sw	$a2,-4($a4)
.L0d9f56ac:
    # Line 751
    la	$t1,__glStoreStippledLine
    # Line 748
    subu	$t0,$a3,$a0
    # Line 750
    la	$t2,__glStoreLine
    # Line 748
    addiu	$t3,$t0,-12240
    sra	$t3,$t3,0x2
    sw	$t3,12372($a0)
    # Line 744
    lbu	$a6,30652($a0)
    # Line 750
    sw	$t2,0($a3)
    # Line 751
    sw	$t1,0($a4)
    # Line 757
    addiu	$a4,$a0,12388
    # Line 753
    addiu	$t0,$t0,-12236
    # Line 756
    addiu	$a3,$a0,12384
    # Line 753
    sra	$t0,$t0,0x2
    # Line 754
    sw	$t0,12376($a0)
    # Line 757
    beqz	$a7,.L0d9f5754
    # Line 744
    sltu	$a6,$zero,$a6
    # Line 760
    # lw $t9, -25712($gp) # &__glWideStippleLineRep
    sw	$t9,12388($a0)
    # Line 762
    addiu	$a4,$a0,12396
    # Line 759
    la	$t8,__glWideLineRep
    # Line 761
    addiu	$a3,$a0,12392
    # Line 762
    beqz	$a6,.L0d9f575c
    # Line 759
    sw	$t8,12384($a0)
    # Line 766
    la	$v0,__glDrawBothStippledLine
.L0d9f570c:
    # Line 765
    la	$v1,__glDrawBothLine
    sw	$v1,0($a3)
    # Line 770
    beqz	$a7,.L0d9f5774
    # Line 766
    sw	$v0,0($a4)
.L0d9f571c:
    # Line 779
    la	$a1,__glProcessLine
    sw	$a1,12380($a0)
.L0d9f5724:
    # Line 781
    andi	$a2,$a5,0x2000
    beqz	$a2,.L0d9f5738
    dsll32	$a3,$a5,0xe
    bgez	$a3,.L0d9f58c8
    nop
.L0d9f5738:
    # Line 789
    lw	$a4,1796($a0)
    andi	$a4,$a4,0x400
    beqz	$a4,.L0d9f57a0
    # Line 792
    la	$a5,__glPolygonOffsetLine
    # Line 797
    addiu	$sp,$sp,16
    jr	$ra
    # Line 792
    sw	$a5,12480($a0)
.L0d9f5754:
    # Line 762
    bnez	$a6,.L0d9f570c
    # Line 766
    la	$v0,__glDrawBothStippledLine
.L0d9f575c:
    la	$t2,__glNop
    # Line 768
    sw	$t2,0($a3)
    # Line 769
    sw	$t2,0($a4)
    # Line 770
    lw	$t1,12376($a0)
    bnez	$a7,.L0d9f571c
    sw	$t1,12372($a0)
.L0d9f5774:
    # Line 773
    lw	$t3,12372($a0)
    # Line 776
    li	$t8,3
    bnez	$a6,.L0d9f571c
    # Line 773
    sw	$t3,12368($a0)
    # Line 776
    bne	$t0,$t8,.L0d9f571c
    # Line 777
    nop	# was lw $t9, -25720($gp) # &__glProcessLine3NW
    b	.L0d9f5724
    sw	$t9,12380($a0)
.L0d9f5794:
    # Line 584
    la	$v0,__glOtherLStripVertexFast
    b	.L0d9f5544
    sw	$v0,11956($a0)
.L0d9f57a0:
    # Line 795
    lw	$v1,12472($a0)
    # Line 797
    addiu	$sp,$sp,16
    jr	$ra
    # Line 795
    sw	$v1,12480($a0)
.L0d9f57b0:
    # Line 610
    andi	$a1,$a5,0x8000
    beqz	$a1,.L0d9f57d4
    nop
    # Line 612
    sw	$zero,12304($a0)
    addiu	$a4,$a0,12308
    # Line 611
    la	$a2,__glStippleLine
    addiu	$a3,$a0,12244
    # Line 615
    bnez	$a6,.L0d9f558c
    # Line 611
    sw	$a2,12240($a0)
.L0d9f57d4:
    # Line 615
    lw	$a7,476($a0)
    # Line 622
    addiu	$t8,$a4,4
    # Line 615
    slti	$a7,$a7,2
    # Line 621
    la	$t2,__glScissorLine
    # Line 622
    andi	$t9,$a5,0x20
    # Line 619
    subu	$t3,$a3,$a0
    # Line 622
    la	$t1,__glScissorStippledLine
    # Line 619
    addiu	$t3,$t3,-12240
    # Line 615
    bnez	$a7,.L0d9f58f0
    # Line 619
    sra	$t3,$t3,0x2
    # Line 621
    addiu	$t0,$a3,4
    # Line 619
    sw	$t3,12368($a0)
    # Line 615
    li	$a7,1
    # Line 622
    move	$a4,$t8
    # Line 621
    sw	$t2,0($a3)
    # Line 622
    sw	$t1,-4($t8)
    bnez	$a6,.L0d9f55b8
    # Line 621
    move	$a3,$t0
    b	.L0d9f5928
    # Line 626
    la	$t2,__glStencilTestStippledLine
.L0d9f5824:
    # Line 594
    la	$t8,__glFeedbackLine
    b	.L0d9f5738
    sw	$t8,12472($a0)
.L0d9f5830:
    b	.L0d9f5580
    # Line 604
    sw	$t9,12472($a0)
.L0d9f5838:
    # Line 668
    beqz	$t0,.L0d9f5964
    # Line 672
    la	$v0,__glShadeCISpan
    sw	$v0,0($a3)
    # Line 673
    b	.L0d9f55e8
    sw	$v0,0($a4)
.L0d9f584c:
    # Line 596
    b	.L0d9f5738
    sw	$v1,12472($a0)
.L0d9f5854:
    # Line 714
    beqz	$t1,.L0d9f5690
    # Line 734
    andi	$a1,$a5,0x200
    # Line 714
    lw	$a3,1632($a0)
    li	$a1,512
    beq	$a3,$a1,.L0d9f5974
    # Line 720
    la	$a2,__glDTLine
    sll	$a4,$a3,0x2
    addu	$a2,$a2,$a4
    lw	$a2,-2048($a2)
    beqz	$a2,.L0d9f58a8
    nop
    # Line 724
    b	.L0d9f58ac
    sw	$a6,12404($a0)
.L0d9f5888:
    # Line 667
    sw	$t0,0($a3)
    b	.L0d9f55e8
    # Line 668
    sw	$t0,0($a4)
.L0d9f5894:
    # Line 688
    la	$t1,__glFogStippledSpanSlow
    # Line 687
    la	$v0,__glFogSpanSlow
    sw	$v0,0($a3)
    # Line 688
    b	.L0d9f5638
    sw	$t1,0($a4)
.L0d9f58a8:
    # Line 726
    sw	$zero,12404($a0)
.L0d9f58ac:
    # Line 734
    la	$v1,__glDepthTestStippledLine
    # Line 729
    la	$a1,__glDepthTestLine_asm
    # Line 734
    addiu	$a4,$t0,4
    # Line 729
    sw	$a1,0($a6)
    addiu	$a3,$a6,4
    b	.L0d9f568c
    # Line 734
    sw	$v1,0($t0)
.L0d9f58c8:
    # Line 783
    lw	$a2,12472($a0)
    # Line 784
    la	$a3,__glRenderFlatFogLine
    sw	$a3,12472($a0)
    b	.L0d9f5738
    # Line 783
    sw	$a2,12476($a0)
.L0d9f58dc:
    la	$a4,__glDepthPassStippledLine
    # Line 710
    la	$t1,__glDepthPassLine
    sw	$t1,4($a6)
    b	.L0d9f5684
    # Line 711
    sw	$a4,4($t0)
.L0d9f58f0:
    # Line 621
    addiu	$t0,$a3,4
    # Line 622
    la	$t2,__glScissorStippledLine
    # Line 619
    subu	$t8,$a3,$a0
    # Line 621
    la	$t3,__glScissorLine
    # Line 619
    addiu	$t8,$t8,-12240
    sra	$t8,$t8,0x2
    sw	$t8,12368($a0)
    # Line 616
    move	$a7,$zero
    # Line 621
    sw	$t3,0($a3)
    # Line 622
    addiu	$t8,$a4,4
    # Line 621
    move	$a3,$t0
    # Line 622
    move	$a4,$t8
    sw	$t2,-4($t8)
    # Line 626
    la	$t2,__glStencilTestStippledLine
.L0d9f5928:
    la	$t3,__glStencilTestLine
    # Line 622
    beqz	$t9,.L0d9f5980
    andi	$t1,$a5,0x4
    sd	$t8,0($sp)
    # Line 626
    sw	$t3,0($t0)
    # Line 635
    addiu	$a3,$t0,8
    # Line 627
    beqz	$t1,.L0d9f59e8
    sw	$t2,0($t8)
    # Line 629
    # lw $t9, -25672($gp) # &__glDepthTestStencilStippledLine
    la	$t8,__glDepthTestStencilLine
    # Line 630
    ld	$t1,0($sp)
    # Line 629
    sw	$t8,4($t0)
    # Line 630
    sw	$t9,4($t1)
.L0d9f595c:
    # Line 636
    b	.L0d9f55c8
    addiu	$a4,$t1,8
.L0d9f5964:
    # Line 673
    la	$v0,__glFlatCISpan
    # Line 675
    sw	$v0,0($a3)
    b	.L0d9f55e8
    # Line 676
    sw	$v0,0($a4)
.L0d9f5974:
    # Line 719
    la	$v1,__glNop
    # Line 720
    b	.L0d9f5738
    # Line 719
    sw	$v1,12380($a0)
.L0d9f5980:
    # Line 636
    beqz	$t1,.L0d9f59d4
    nop
    lw	$a3,1632($a0)
    li	$a1,512
    beq	$a3,$a1,.L0d9f5a08
    # Line 641
    la	$a1,__glNop
    # Line 642
    la	$a2,__glDTLine
    sll	$a4,$a3,0x2
    addu	$a2,$a2,$a4
    lw	$a2,-2048($a2)
    beqz	$a2,.L0d9f59b8
    nop
    # Line 646
    b	.L0d9f59bc
    sw	$t0,12404($a0)
.L0d9f59b8:
    # Line 648
    sw	$zero,12404($a0)
.L0d9f59bc:
    la	$t1,__glDepthTestStippledLine
    la	$t2,__glDepthTestLine_asm
    # Line 651
    sw	$t2,0($t0)
    # Line 656
    addiu	$a4,$t8,4
    # Line 651
    addiu	$a3,$t0,4
    # Line 656
    sw	$t1,0($t8)
.L0d9f59d4:
    la	$t8,__glDepthTestStencilLine
    la	$t3,__glStencilTestLine
    la	$t2,__glStencilTestStippledLine
    b	.L0d9f55c8
    nop	# was lw $t9, -25672($gp) # &__glDepthTestStencilStippledLine
.L0d9f59e8:
    # Line 633
    la	$t8,__glDepthTestStencilLine
    # lw $t9, -25672($gp) # &__glDepthTestStencilStippledLine
    # Line 616
    la	$v0,__glDepthPassStippledLine
    la	$v1,__glDepthPassLine
    ld	$t1,0($sp)
    # Line 632
    sw	$v1,4($t0)
    b	.L0d9f595c
    # Line 633
    sw	$v0,4($t1)
.L0d9f5a08:
    # Line 642
    b	.L0d9f5738
    # Line 641
    sw	$a1,12380($a0)
.end __glGenericPickLineProcs

# Function: __glGenericPickTriangleProcs
# Declared: Line 805 (Source lines: 806-907)
# Address: 0x0d9f5a10 - 0x0d9f5c04 (Size: 500 bytes, Frame: 0)
.globl __glGenericPickTriangleProcs
.ent __glGenericPickTriangleProcs
__glGenericPickTriangleProcs:
    # Line 807
    lw	$a4,30436($a0)
    # Line 827
    li	$a3,2
    # Line 806
    lui	$v0,0x6
    # Line 807
    dsll32	$v1,$a4,0xf
    # Line 872
    li	$t3,6914
    # Line 806
    addiu	$v0,$v0,-19588
    # Line 807
    bgez	$v1,.L0d9f5b40
    # Line 806
    addu	$at,$t9,$v0
    # Line 813
    lw	$a3,492($a0)
    li	$v1,1028
    beq	$a3,$v1,.L0d9f5b60
    li	$a1,1029
    beq	$a3,$a1,.L0d9f5b78
    # Line 818
    li	$a7,1
    # Line 813
    li	$a2,1032
    beq	$a3,$a2,.L0d9f5ba8
    nop
.L0d9f5a54:
    # Line 831
    lw	$a3,496($a0)
    li	$a5,2304
    beq	$a3,$a5,.L0d9f5b20
    # Line 892
    la	$t8,__glRenderSmoothOneFaceTmesh
    # Line 831
    li	$a6,2305
    beq	$a3,$a6,.L0d9f5b48
    nop
.L0d9f5a70:
    # Line 855
    lw	$a6,488($a0)
    lw	$a5,3204($a0)
    li	$t0,7169
    # Line 853
    lw	$a3,484($a0)
    # Line 855
    andi	$t1,$a6,0xf
    sb	$t1,30519($a0)
    # Line 853
    andi	$a7,$a3,0xf
    # Line 855
    beq	$a5,$t0,.L0d9f5b80
    # Line 853
    sb	$a7,30518($a0)
    # Line 863
    li	$t2,7170
    beq	$a5,$t2,.L0d9f5b94
    nop
    # Line 872
    bne	$a3,$a6,.L0d9f5ab4
    # Line 888
    la	$a5,__glRenderSmoothOneFaceTriangle
    # Line 872
    beq	$a3,$t3,.L0d9f5acc
    dsll32	$t9,$a4,0xe
    # Line 888
    la	$a5,__glRenderSmoothOneFaceTriangle
.L0d9f5ab4:
    la	$a3,__glRenderTriangle
    sw	$a3,12072($a0)
.L0d9f5abc:
    bne	$a3,$a5,.L0d9f5ae8
    nop
.L0d9f5ac4:
    # Line 892
    b	.L0d9f5aec
    sw	$t8,12076($a0)
.L0d9f5acc:
    # Line 876
    la	$a5,__glRenderSmoothOneFaceTriangle
    # Line 872
    bgez	$t9,.L0d9f5bd4
    andi	$a3,$a4,0x400
    beqz	$a3,.L0d9f5be8
    # Line 876
    la	$a3,__glRenderSmoothTriangle
    # Line 888
    beq	$a3,$a5,.L0d9f5ac4
    # Line 876
    sw	$a3,12072($a0)
.L0d9f5ae8:
    # Line 894
    sw	$a3,12076($a0)
.L0d9f5aec:
    lw	$v0,1792($a0)
    andi	$v0,$v0,0x800
    beqz	$v0,.L0d9f5b38
    # Line 900
    la	$a3,__glFillTriangle
    # Line 898
    la	$a3,__glFillAntiAliasedTriangle
    sw	$a3,12080($a0)
.L0d9f5b04:
    # Line 902
    andi	$v1,$a4,0x2000
    beqz	$v1,.L0d9f5b18
    dsll32	$a1,$a4,0xe
    bgez	$a1,.L0d9f5b68
    nop
.L0d9f5b18:
    # Line 907
    jr	$ra
    nop
.L0d9f5b20:
    # Line 833
    lbu	$a2,4848($a0)
    beqz	$a2,.L0d9f5bbc
    li	$a3,1
    # Line 835
    sb	$zero,30517($a0)
    b	.L0d9f5a70
    # Line 834
    sb	$a3,30516($a0)
.L0d9f5b38:
    b	.L0d9f5b04
    # Line 900
    sw	$a3,12080($a0)
.L0d9f5b40:
    b	.L0d9f5a54
    # Line 827
    sb	$a3,30521($a0)
.L0d9f5b48:
    # Line 842
    lbu	$a5,4848($a0)
    beqz	$a5,.L0d9f5bc8
    li	$a3,1
    # Line 844
    sb	$a3,30517($a0)
    b	.L0d9f5a70
    # Line 843
    sb	$zero,30516($a0)
.L0d9f5b60:
    b	.L0d9f5a54
    # Line 815
    sb	$zero,30521($a0)
.L0d9f5b68:
    # Line 904
    sw	$a3,12084($a0)
    # Line 905
    la	$a6,__glFillFlatFogTriangle
    # Line 907
    jr	$ra
    # Line 905
    sw	$a6,12080($a0)
.L0d9f5b78:
    # Line 819
    b	.L0d9f5a54
    # Line 818
    sb	$a7,30521($a0)
.L0d9f5b80:
    # Line 862
    sw	$zero,12080($a0)
    # Line 860
    la	$t0,__glFeedbackTriangle
    # Line 861
    sw	$t0,12076($a0)
    # Line 907
    jr	$ra
    # Line 860
    sw	$t0,12072($a0)
.L0d9f5b94:
    # Line 868
    sw	$zero,12080($a0)
    # Line 866
    la	$t1,__glSelectTriangle
    # Line 867
    sw	$t1,12076($a0)
    # Line 907
    jr	$ra
    # Line 866
    sw	$t1,12072($a0)
.L0d9f5ba8:
    # Line 823
    sw	$zero,12080($a0)
    # Line 821
    la	$t2,__glDontRenderTriangle
    # Line 822
    sw	$t2,12076($a0)
    # Line 907
    jr	$ra
    # Line 821
    sw	$t2,12072($a0)
.L0d9f5bbc:
    # Line 838
    sb	$a3,30517($a0)
    b	.L0d9f5a70
    # Line 837
    sb	$zero,30516($a0)
.L0d9f5bc8:
    # Line 847
    sb	$zero,30517($a0)
    b	.L0d9f5a70
    # Line 846
    sb	$a3,30516($a0)
.L0d9f5bd4:
    # Line 878
    beqz	$a3,.L0d9f5bf8
    # Line 882
    la	$a3,__glRenderFlatTriangle
    sw	$a3,12072($a0)
.L0d9f5be0:
    b	.L0d9f5abc
    # Line 884
    la	$a5,__glRenderSmoothOneFaceTriangle
.L0d9f5be8:
    # Line 876
    la	$a5,__glRenderSmoothOneFaceTriangle
    # Line 878
    sw	$a5,12072($a0)
    b	.L0d9f5abc
    move	$a3,$a5
.L0d9f5bf8:
    # Line 884
    la	$a3,__glRenderFlatOneFaceTriangle
    b	.L0d9f5be0
    sw	$a3,12072($a0)
.end __glGenericPickTriangleProcs

# Function: __glGenericPickRenderBitmapProcs
# Declared: Line 909 (Source lines: 910-920)
# Address: 0x0d9f5c10 - 0x0d9f5c64 (Size: 84 bytes, Frame: 0)
.globl __glGenericPickRenderBitmapProcs
.ent __glGenericPickRenderBitmapProcs
__glGenericPickRenderBitmapProcs:
    # Line 913
    lbu	$a4,1189($a0)
    # Line 910
    lui	$a1,0x6
    # Line 913
    lw	$v1,1192($a0)
    # Line 910
    addiu	$a1,$a1,-20100
    # Line 913
    lw	$a2,1196($a0)
    # Line 910
    addu	$at,$t9,$a1
    # Line 911
    la	$v0,__glRenderBitmap
    # Line 913
    bnez	$v1,.L0d9f5c4c
    # Line 911
    sw	$v0,12512($a0)
    # Line 913
    lw	$a3,1200($a0)
    bnez	$a2,.L0d9f5c50
    # Line 919
    la	$a5,__glDrawBitmap
    # Line 913
    bnez	$a3,.L0d9f5c50
    # Line 919
    la	$a5,__glDrawBitmap
    # Line 913
    beqz	$a4,.L0d9f5c58
.L0d9f5c4c:
    # Line 919
    la	$a5,__glDrawBitmap
.L0d9f5c50:
    # Line 920
    jr	$ra
    # Line 919
    sw	$a5,12508($a0)
.L0d9f5c58:
    # Line 917
    la	$a6,__glFastDrawBitmap
    # Line 920
    jr	$ra
    # Line 917
    sw	$a6,12508($a0)
.end __glGenericPickRenderBitmapProcs

# Function: __glGenericPickClipProcs
# Declared: Line 922 (Source lines: 923-930)
# Address: 0x0d9f5c70 - 0x0d9f5cb0 (Size: 64 bytes, Frame: 0)
.globl __glGenericPickClipProcs
.ent __glGenericPickClipProcs
__glGenericPickClipProcs:
    # Line 923
    lw	$v1,1392($a0)
    li	$a1,7424
    lui	$v0,0x6
    addiu	$v0,$v0,-20196
    beq	$v1,$a1,.L0d9f5c9c
    addu	$at,$t9,$v0
    # Line 927
    la	$v1,__glFastClipSmoothLine
    # Line 929
    la	$a1,__glClipTriangle
    sw	$a1,12088($a0)
    # Line 930
    jr	$ra
    # Line 927
    sw	$v1,12484($a0)
.L0d9f5c9c:
    # Line 925
    la	$a2,__glFastClipFlatLine
    # Line 929
    la	$a3,__glClipTriangle
    sw	$a3,12088($a0)
    # Line 930
    jr	$ra
    # Line 925
    sw	$a2,12484($a0)
.end __glGenericPickClipProcs

# Function: __glGenericPickTextureProcs
# Declared: Line 932 (Source lines: 933-1350)
# Address: 0x0d9f5cb0 - 0x0d9f67b0 (Size: 2816 bytes, Frame: 224)
.globl __glGenericPickTextureProcs
.ent __glGenericPickTextureProcs
__glGenericPickTextureProcs:
    # Line 933
    addiu	$sp,$sp,-96
    sd	$s1,40($sp)
    sd	$s7,24($sp)
    sd	$s5,48($sp)
    sd	$s4,56($sp)
    sd	$ra,64($sp)
    sd	$s2,72($sp)
    # Line 938
    lw	$a2,1792($a0)
    sd	$s3,80($sp)
    lui	$at,0xc
    # Line 933
    sd	$s0,8($sp)
    lui	$v1,0x6
    # Line 938
    and	$v0,$at,$a2
    # Line 933
    move	$s0,$a0
    sd	$s6,32($sp)
    addiu	$v1,$v1,-20260
    sd	$gp,16($sp)
    # Line 938
    beq	$at,$v0,.L0d9f61a8
    # Line 933
    addu	$gp,$t9,$v1
.L0d9f5cfc:
    # Line 956
    dsll32	$a0,$a2,0xd
    bgez	$a0,.L0d9f612c
    dsll32	$at,$a2,0xc
.L0d9f5d08:
    # Line 963
    la	$a1,__glCalcMixedTexture
    sw	$a1,11996($s0)
.L0d9f5d10:
    # Line 967
    dsll32	$a3,$a2,0x1
.L0d9f5d14:
    bgez	$a3,.L0d9f6034
    sw	$zero,28208($s0)
    # Line 969
    # lw $t9, -24240($gp) # &__glIsTextureConsistent
    move	$a0,$s0
    jal	__glIsTextureConsistent
    li	$a1,0x806f
    beqz	$v0,.L0d9f60f8
    # Line 970
    nop	# was lw $t9, -24468($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    li	$a1,0x806f
    # Line 971
    # lw $t9, -24460($gp) # &__glLookUpTexture
    # Line 970
    move	$s7,$v0
    # Line 971
    move	$a0,$s0
    jal	__glLookUpTexture
    li	$a1,0x806f
    move	$a6,$v0
    sw	$v0,28208($s0)
.L0d9f5d5c:
    # Line 985
    beqz	$a6,.L0d9f60fc
    ld	$s3,80($sp)
    # Line 1002
    lw	$a4,1792($s0)
    lui	$a5,0x8000
    and	$a4,$a4,$a5
    beqz	$a4,.L0d9f60d4
    nop
    lw	$a7,5864($s0)
    beqz	$a7,.L0d9f60d4
    # Line 1004
    li	$t0,1
    sd	$t0,0($sp)
.L0d9f5d88:
    # Line 1009
    move	$a0,$s7
    li	$a5,6
    li	$a4,54
    move	$a3,$zero
    addiu	$a2,$a6,4
    nop
.L0d9f5da0:
    addiu	$a5,$a5,-1
    addu	$t1,$a3,$a0
    addiu	$a4,$a4,-1
    addu	$t2,$a3,$a2
    lw	$t1,0($t1)
    addiu	$a3,$a3,4
    bnez	$a5,.L0d9f5da0
    sw	$t1,0($t2)
    addiu	$t1,$a0,28
    addiu	$a7,$a2,28
    li	$t3,0x20
    addiu	$s6,$a0,4
    addiu	$t0,$a2,4
    addiu	$ra,$a2,8
    addiu	$s3,$a0,8
    addiu	$a5,$a0,12
    addiu	$s5,$a2,12
    addiu	$s4,$a0,20
    addiu	$t2,$a2,20
    addiu	$t8,$a2,24
    addiu	$t9,$a0,24
    addiu	$s2,$a2,16
    addiu	$s1,$a0,16
    nop
.L0d9f5e00:
    addu	$a1,$a3,$a0
    addu	$at,$a3,$a2
    lw	$a1,0($a1)
    addu	$v1,$a3,$s6
    sw	$a1,0($at)
    addu	$a1,$a3,$t0
    lw	$v1,0($v1)
    addu	$v0,$a3,$s3
    sw	$v1,0($a1)
    addu	$v1,$a3,$ra
    lw	$v0,0($v0)
    addu	$at,$a3,$a5
    sw	$v0,0($v1)
    addu	$v0,$a3,$s5
    lw	$at,0($at)
    addu	$a1,$a3,$s1
    sw	$at,0($v0)
    addu	$at,$a3,$s2
    lw	$a1,0($a1)
    addu	$v1,$a3,$s4
    sw	$a1,0($at)
    addu	$a1,$a3,$t2
    lw	$v1,0($v1)
    addu	$v0,$a3,$t9
    sw	$v1,0($a1)
    addu	$v1,$a3,$t8
    lw	$v0,0($v0)
    addiu	$a4,$a4,-8
    addu	$at,$a3,$t1
    sw	$v0,0($v1)
    addu	$v0,$a3,$a7
    lw	$at,0($at)
    addu	$a3,$a3,$t3
    bgtz	$a4,.L0d9f5e00
    sw	$at,0($v0)
    # Line 1011
    lwc1	$f0,184($s7)
    mtc1	$zero,$f4
    c.eq.s	$f0,$f4
    bc1f	.L0d9f5f10
    nop
    lwc1	$f1,188($s7)
    c.eq.s $f1,$f4
    bc1f .L0d9f5f10
    nop
    lwc1	$f2,192($s7)
    c.eq.s $f2,$f4
    bc1f .L0d9f5f10
    nop
    lwc1	$f3,196($s7)
    c.eq.s $f3,$f4
    bc1f .L0d9f5f10
    nop
    lwc1	$f5,168($s7)
    lwc1	$f4,3544($s0)
    c.eq.s $f5,$f4
    bc1f .L0d9f5f10
    nop
    lwc1	$f6,172($s7)
    c.eq.s $f6,$f4
    bc1f .L0d9f5f10
    nop
    lwc1	$f7,176($s7)
    c.eq.s $f7,$f4
    bc1f .L0d9f5f10
    nop
    lwc1	$f8,180($s7)
    c.eq.s $f8,$f4
    bc1t .L0d9f65ac
.L0d9f5f10:
    ld	$s7,24($sp)
    # Line 1019
    li	$t0,1
.L0d9f5f18:
    # Line 1028
    la	$a3,__glComputeLineRho
    sw	$a3,12516($s0)
    # Line 1029
    la	$a2,__glComputePolygonRho
    sw	$a2,12520($s0)
    # Line 1030
    lw	$a2,16($a6)
    li	$a7,9729
    beq	$a7,$a2,.L0d9f60a0
    li	$a4,9728
    beq	$a2,$a4,.L0d9f60a0
    nop
    # Line 1062
    lw	$t1,20($a6)
    # Line 1055
    la	$a5,__glMipMapFragment
    sw	$a5,256($a6)
    # Line 1062
    beq	$a7,$t1,.L0d9f632c
    move	$a3,$t1
.L0d9f5f54:
    # Line 1067
    lwc1	$f9,3544($s0)
    swc1	$f9,240($a6)
.L0d9f5f5c:
    # Line 1073
    lw	$a0,2484($s0)
    lw	$a0,0($a0)
    # Line 1072
    lw	$a4,228($a6)
    # Line 1073
    li	$t1,8448
    beq	$a0,$t1,.L0d9f6238
    # Line 1072
    lw	$a4,64($a4)
    # Line 1073
    li	$a1,8449
    beq	$a0,$a1,.L0d9f62e0
    li	$t1,3042
    beq	$a0,$t1,.L0d9f6368
    li	$t2,7681
    beq	$a0,$t2,.L0d9f61f8
    # Line 1230
    li	$t3,6409
    # Line 1073
    li	$t3,0x8062
    beq	$a0,$t3,.L0d9f61f8
    # Line 1230
    li	$t3,6409
.L0d9f5f9c:
    # Line 1290
    lw	$a0,232($a6)
    li	$t8,1
    beq	$a0,$t8,.L0d9f62c0
    # Line 1294
    la	$t1,__glFilter4Func1
    # Line 1290
    li	$t9,2
    beq	$a0,$t9,.L0d9f6348
    # Line 1299
    la	$t1,__glFilter4Func2
    # Line 1290
    li	$ra,3
    beq	$a0,$ra,.L0d9f63b4
.L0d9f5fc0:
    # Line 1309
    li	$a4,0x8146
    beq	$a4,$a3,.L0d9f62d8
    # Line 1311
    la	$t2,__glFilter4Func
    # Line 1309
    beq	$a7,$a3,.L0d9f6360
    # Line 1314
    la	$t2,__glLinearFilter
    # Line 1309
    li	$at,9728
    beq	$a3,$at,.L0d9f63cc
.L0d9f5fdc:
    # Line 1319
    la	$a7,__glNearestFilter
    # Line 1322
    sltiu	$v0,$a2,9985
    # Line 1319
    la	$t0,__glFilter4Func
    # Line 1322
    bnez	$v0,.L0d9f6080
    # Line 1319
    la	$a3,__glLinearFilter
    # Line 1322
    sltiu	$v1,$a2,9986
    beqz	$v1,.L0d9f60dc
    sltiu	$t8,$a2,9987
    # Line 1336
    la	$a0,__glLMNFilter
    sw	$a0,268($a6)
.L0d9f6004:
    ld	$s1,40($sp)
.L0d9f6008:
    ld	$s5,48($sp)
    ld	$s4,56($sp)
    ld	$s2,72($sp)
    ld	$s3,80($sp)
    ld	$s6,32($sp)
    ld	$ra,64($sp)
    # Line 1350
    ld	$gp,16($sp)
    # Line 1346
    sw	$a5,12524($s0)
    # Line 1350
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9f6034:
    # Line 970
    dsll32	$a1,$a2,0xe
    bgez	$a1,.L0d9f615c
    # Line 976
    nop	# was lw $t9, -24240($gp) # &__glIsTextureConsistent
    move	$a0,$s0
    jal	__glIsTextureConsistent
    li	$a1,3553
    beqz	$v0,.L0d9f60f8
    # Line 977
    nop	# was lw $t9, -24468($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    li	$a1,3553
    # Line 978
    # lw $t9, -24460($gp) # &__glLookUpTexture
    # Line 977
    move	$s7,$v0
    # Line 978
    move	$a0,$s0
    jal	__glLookUpTexture
    li	$a1,3553
    move	$a6,$v0
    # Line 977
    b	.L0d9f5d5c
    # Line 978
    sw	$v0,28208($s0)
.L0d9f6080:
    # Line 1322
    sltiu	$a4,$a2,9729
    bnez	$a4,.L0d9f614c
    li	$a1,9728
    sltiu	$a7,$a2,9730
    beqz	$a7,.L0d9f62b0
    li	$a1,9984
    # Line 1328
    b	.L0d9f6004
    # Line 1327
    sw	$a3,268($a6)
.L0d9f60a0:
    # Line 1030
    lw	$a3,20($a6)
    bne	$a2,$a3,.L0d9f628c
    # Line 1039
    la	$a5,__glTextureFragment
    # Line 1036
    la	$t2,__glNopLineRho
    # Line 1035
    la	$t3,__glFastTextureFragment
    sw	$t3,256($a6)
    # Line 1036
    sw	$t2,12516($s0)
    # Line 1037
    la	$t1,__glNopPolygonRho
    sw	$t1,12520($s0)
    lw	$a5,256($a6)
    lw	$a3,20($a6)
    b	.L0d9f5f5c
    lw	$a2,16($a6)
.L0d9f60d4:
    b	.L0d9f5d88
    # Line 1006
    sd	$zero,0($sp)
.L0d9f60dc:
    # Line 1322
    bnez	$t8,.L0d9f62a0
    li	$v0,9986
    sltiu	$t9,$a2,9988
    beqz	$t9,.L0d9f63d8
    # Line 1342
    la	$ra,__glLMLFilter
    # Line 1343
    b	.L0d9f6004
    # Line 1342
    sw	$ra,268($a6)
.L0d9f60f8:
    ld	$s3,80($sp)
.L0d9f60fc:
    ld	$s2,72($sp)
    ld	$s4,56($sp)
    ld	$s5,48($sp)
    ld	$s1,40($sp)
    ld	$s6,32($sp)
    ld	$s7,24($sp)
    ld	$ra,64($sp)
    # Line 1350
    ld	$gp,16($sp)
    # Line 1348
    sw	$zero,12524($s0)
    # Line 1350
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0d9f612c:
    # Line 956
    bltz	$at,.L0d9f5d08
    dsll32	$v0,$a2,0xb
    bltz	$v0,.L0d9f5d08
    dsll32	$v1,$a2,0xa
    bltz	$v1,.L0d9f5d08
    # Line 961
    la	$a0,__glCalcTexture
    b	.L0d9f5d10
    sw	$a0,11996($s0)
.L0d9f614c:
    # Line 1322
    bne	$a2,$a1,.L0d9f6008
    ld	$s1,40($sp)
    # Line 1330
    b	.L0d9f6004
    sw	$a7,268($a6)
.L0d9f615c:
    # Line 977
    dsll32	$a3,$a2,0xf
    bgez	$a3,.L0d9f60f8
    # Line 983
    nop	# was lw $t9, -24240($gp) # &__glIsTextureConsistent
    move	$a0,$s0
    jal	__glIsTextureConsistent
    li	$a1,3552
    beqz	$v0,.L0d9f60f8
    # Line 984
    nop	# was lw $t9, -24468($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    jal	__glLookUpTextureParams
    li	$a1,3552
    # Line 985
    # lw $t9, -24460($gp) # &__glLookUpTexture
    # Line 984
    move	$s7,$v0
    # Line 985
    move	$a0,$s0
    jal	__glLookUpTexture
    li	$a1,3552
    move	$a6,$v0
    b	.L0d9f5d5c
    sw	$v0,28208($s0)
.L0d9f61a8:
    # Line 938
    dsll32	$a4,$a2,0xb
    bltz	$a4,.L0d9f5cfc
    dsll32	$a5,$a2,0xa
    bltz	$a5,.L0d9f5cfc
    nop
    lw	$a6,2108($a0)
    lw	$a0,1984($a0)
    bne	$a6,$a0,.L0d9f5cfc
    # Line 944
    li	$a7,9216
    beq	$a0,$a7,.L0d9f6770
    li	$t0,9217
    beq	$a0,$t0,.L0d9f6798
    # Line 949
    la	$t1,__glCalcObjectLinear
    # Line 944
    li	$t1,9218
    bne	$a0,$t1,.L0d9f5d14
    # Line 967
    dsll32	$a3,$a2,0x1
    # Line 952
    la	$t2,__glCalcSphereMap
    # Line 953
    b	.L0d9f5d10
    # Line 952
    sw	$t2,11996($s0)
    # Line 1230
    li	$t3,6409
.L0d9f61f8:
    beq	$a4,$t3,.L0d9f6408
    li	$t8,6410
    beq	$a4,$t8,.L0d9f642c
    li	$t9,6407
    beq	$a4,$t9,.L0d9f6450
    li	$ra,6408
    beq	$a4,$ra,.L0d9f6490
    li	$at,6406
    beq	$a4,$at,.L0d9f64e8
    li	$v0,0x8049
    bne	$a4,$v0,.L0d9f5f9c
    # Line 1277
    ld	$v1,0($sp)
    beqz	$v1,.L0d9f668c
    # Line 1278
    la	$a0,__glTextureCTReplaceI
    b	.L0d9f5f9c
    sw	$a0,260($a6)
.L0d9f6238:
    # Line 1075
    li	$a1,6409
    beq	$a4,$a1,.L0d9f641c
    # Line 1077
    ld	$t9,0($sp)
    # Line 1075
    li	$t1,6410
    beq	$a4,$t1,.L0d9f6440
    # Line 1086
    ld	$v1,0($sp)
    # Line 1075
    li	$t2,6407
    beq	$a4,$t2,.L0d9f6480
    # Line 1095
    ld	$t3,0($sp)
    # Line 1075
    li	$t3,6408
    beq	$a4,$t3,.L0d9f64d0
    li	$t8,6406
    beq	$a4,$t8,.L0d9f6520
    # Line 1113
    ld	$at,0($sp)
    # Line 1075
    li	$t9,0x8049
    bne	$a4,$t9,.L0d9f5f9c
    # Line 1122
    ld	$ra,0($sp)
    beqz	$ra,.L0d9f66b0
    # Line 1123
    la	$at,__glTextureCTModulateI
    b	.L0d9f5f9c
    sw	$at,260($a6)
.L0d9f628c:
    # Line 1046
    beq	$a7,$a3,.L0d9f63e8
    # Line 1039
    sw	$a5,256($a6)
.L0d9f6294:
    # Line 1051
    lwc1	$f10,3544($s0)
    b	.L0d9f5f5c
    swc1	$f10,240($a6)
.L0d9f62a0:
    # Line 1322
    bne	$a2,$v0,.L0d9f6004
    # Line 1339
    la	$v1,__glNMLFilter
    # Line 1340
    b	.L0d9f6004
    # Line 1339
    sw	$v1,268($a6)
.L0d9f62b0:
    # Line 1322
    bne	$a2,$a1,.L0d9f6004
    # Line 1333
    la	$a2,__glNMNFilter
    # Line 1334
    b	.L0d9f6004
    # Line 1333
    sw	$a2,268($a6)
.L0d9f62c0:
    # Line 1294
    sw	$t1,272($a6)
    # Line 1293
    la	$t0,__glLinearFilter1
    sw	$t0,276($a6)
    # Line 1292
    la	$a4,__glNearestFilter1
    b	.L0d9f5fc0
    sw	$a4,280($a6)
.L0d9f62d8:
    b	.L0d9f5fdc
    # Line 1311
    sw	$t2,264($a6)
.L0d9f62e0:
    # Line 1133
    li	$t3,6409
    beq	$a4,$t3,.L0d9f6464
    li	$t8,6410
    beq	$a4,$t8,.L0d9f64b4
    # Line 1139
    la	$v1,__glNop
    # Line 1133
    li	$t9,6407
    beq	$a4,$t9,.L0d9f64a4
    # Line 1143
    ld	$at,0($sp)
    # Line 1133
    li	$ra,6408
    beq	$a4,$ra,.L0d9f64fc
    # Line 1152
    ld	$t3,0($sp)
    # Line 1133
    li	$at,6406
    beq	$a4,$at,.L0d9f6540
    # Line 1161
    la	$a1,__glNop
    # Line 1133
    li	$v0,0x8049
    bne	$a4,$v0,.L0d9f5f9c
    # Line 1165
    la	$v1,__glNop
    # Line 1167
    b	.L0d9f5f9c
    # Line 1165
    sw	$v1,260($a6)
.L0d9f632c:
    # Line 1062
    li	$a0,9984
    beq	$a2,$a0,.L0d9f633c
    li	$a1,9985
    bne	$a2,$a1,.L0d9f5f54
.L0d9f633c:
    # Line 1065
    lwc1	$f11,_lit_40000000
    b	.L0d9f5f5c
    swc1	$f11,240($a6)
.L0d9f6348:
    # Line 1299
    sw	$t1,272($a6)
    # Line 1298
    la	$t0,__glLinearFilter2
    sw	$t0,276($a6)
    # Line 1297
    la	$a4,__glNearestFilter2
    # Line 1300
    b	.L0d9f5fc0
    # Line 1297
    sw	$a4,280($a6)
.L0d9f6360:
    # Line 1315
    b	.L0d9f5fdc
    # Line 1314
    sw	$t2,264($a6)
.L0d9f6368:
    # Line 1171
    li	$t3,6409
    beq	$a4,$t3,.L0d9f6470
    # Line 1173
    ld	$t1,0($sp)
    # Line 1171
    li	$t8,6410
    beq	$a4,$t8,.L0d9f64bc
    li	$t9,6407
    beq	$a4,$t9,.L0d9f650c
    li	$ra,6408
    beq	$a4,$ra,.L0d9f6530
    # Line 1200
    ld	$v1,0($sp)
    # Line 1171
    li	$at,6406
    beq	$a4,$at,.L0d9f6548
    li	$v0,0x8049
    bne	$a4,$v0,.L0d9f5f9c
    # Line 1218
    ld	$v1,0($sp)
    beqz	$v1,.L0d9f66d8
    # Line 1219
    la	$a0,__glTextureCTBlendI
    b	.L0d9f5f9c
    sw	$a0,260($a6)
.L0d9f63b4:
    # Line 1304
    sw	$zero,272($a6)
    # Line 1303
    la	$a4,__glLinearFilter3
    sw	$a4,276($a6)
    # Line 1302
    la	$a1,__glNearestFilter3
    # Line 1305
    b	.L0d9f5fc0
    # Line 1302
    sw	$a1,280($a6)
.L0d9f63cc:
    # Line 1317
    la	$a7,__glNearestFilter
    # Line 1318
    b	.L0d9f5fdc
    # Line 1317
    sw	$a7,264($a6)
.L0d9f63d8:
    # Line 1322
    bne	$a4,$a2,.L0d9f6008
    ld	$s1,40($sp)
    # Line 1325
    b	.L0d9f6004
    # Line 1324
    sw	$t0,268($a6)
.L0d9f63e8:
    # Line 1046
    li	$t1,9984
    beq	$a2,$t1,.L0d9f6400
    # Line 1049
    lwc1	$f12,_lit_40000000
    # Line 1046
    li	$t2,9985
    bne	$a2,$t2,.L0d9f6294
    # Line 1049
    lwc1	$f12,_lit_40000000
.L0d9f6400:
    b	.L0d9f5f5c
    swc1	$f12,240($a6)
.L0d9f6408:
    # Line 1232
    ld	$t3,0($sp)
    beqz	$t3,.L0d9f6560
    # Line 1233
    la	$t8,__glTextureCTReplaceL
    b	.L0d9f5f9c
    sw	$t8,260($a6)
.L0d9f641c:
    # Line 1077
    beqz	$t9,.L0d9f6574
    # Line 1078
    la	$ra,__glTextureCTModulateL
    b	.L0d9f5f9c
    sw	$ra,260($a6)
.L0d9f642c:
    # Line 1241
    ld	$at,0($sp)
    beqz	$at,.L0d9f6588
    # Line 1242
    la	$v0,__glTextureCTReplaceLA
    b	.L0d9f5f9c
    sw	$v0,260($a6)
.L0d9f6440:
    # Line 1086
    beqz	$v1,.L0d9f6598
    # Line 1087
    la	$a0,__glTextureCTModulateLA
    b	.L0d9f5f9c
    sw	$a0,260($a6)
.L0d9f6450:
    # Line 1250
    ld	$a1,0($sp)
    beqz	$a1,.L0d9f65b8
    # Line 1251
    la	$a4,__glTextureCTReplaceRGB
    b	.L0d9f5f9c
    sw	$a4,260($a6)
.L0d9f6464:
    # Line 1135
    la	$t0,__glNop
    b	.L0d9f5f9c
    sw	$t0,260($a6)
.L0d9f6470:
    # Line 1173
    beqz	$t1,.L0d9f65c8
    # Line 1174
    la	$t2,__glTextureCTBlendL
    b	.L0d9f5f9c
    sw	$t2,260($a6)
.L0d9f6480:
    # Line 1095
    beqz	$t3,.L0d9f65dc
    # Line 1096
    la	$t8,__glTextureCTModulateRGB
    b	.L0d9f5f9c
    sw	$t8,260($a6)
.L0d9f6490:
    # Line 1259
    ld	$t9,0($sp)
    beqz	$t9,.L0d9f65f0
    # Line 1260
    la	$ra,__glTextureCTReplaceRGBA
    b	.L0d9f5f9c
    sw	$ra,260($a6)
.L0d9f64a4:
    # Line 1143
    beqz	$at,.L0d9f6604
    # Line 1144
    la	$v0,__glTextureCTDecalRGB
    b	.L0d9f5f9c
    sw	$v0,260($a6)
.L0d9f64b4:
    # Line 1141
    b	.L0d9f5f9c
    # Line 1139
    sw	$v1,260($a6)
.L0d9f64bc:
    # Line 1182
    ld	$a0,0($sp)
    beqz	$a0,.L0d9f6618
    # Line 1183
    la	$a1,__glTextureCTBlendLA
    b	.L0d9f5f9c
    sw	$a1,260($a6)
.L0d9f64d0:
    # Line 1104
    ld	$a4,0($sp)
    beqz	$a4,.L0d9f662c
    nop
    # Line 1105
    la	$t0,__glTextureCTModulateRGBA
    b	.L0d9f5f9c
    sw	$t0,260($a6)
.L0d9f64e8:
    # Line 1268
    ld	$t1,0($sp)
    beqz	$t1,.L0d9f6640
    # Line 1269
    la	$t2,__glTextureCTReplaceA
    b	.L0d9f5f9c
    sw	$t2,260($a6)
.L0d9f64fc:
    # Line 1152
    beqz	$t3,.L0d9f6650
    # Line 1153
    la	$t8,__glTextureCTDecalRGBA
    b	.L0d9f5f9c
    sw	$t8,260($a6)
.L0d9f650c:
    # Line 1191
    ld	$t9,0($sp)
    beqz	$t9,.L0d9f6664
    # Line 1192
    la	$ra,__glTextureCTBlendRGB
    b	.L0d9f5f9c
    sw	$ra,260($a6)
.L0d9f6520:
    # Line 1113
    beqz	$at,.L0d9f6678
    # Line 1114
    la	$v0,__glTextureCTModulateA
    b	.L0d9f5f9c
    sw	$v0,260($a6)
.L0d9f6530:
    # Line 1200
    beqz	$v1,.L0d9f669c
    # Line 1201
    la	$a0,__glTextureCTBlendRGBA
    b	.L0d9f5f9c
    sw	$a0,260($a6)
.L0d9f6540:
    # Line 1163
    b	.L0d9f5f9c
    # Line 1161
    sw	$a1,260($a6)
.L0d9f6548:
    # Line 1209
    ld	$a4,0($sp)
    beqz	$a4,.L0d9f66c4
    nop
    # Line 1210
    la	$t0,__glTextureCTBlendA
    b	.L0d9f5f9c
    sw	$t0,260($a6)
.L0d9f6560:
    # Line 1233
    beqz	$t0,.L0d9f66ec
    # Line 1238
    la	$v0,__glTextureReplaceL
    # Line 1236
    la	$t1,__glTextureSBReplaceL
    b	.L0d9f5f9c
    sw	$t1,260($a6)
.L0d9f6574:
    # Line 1078
    beqz	$t0,.L0d9f66f4
    # Line 1083
    la	$v1,__glTextureModulateL
    # Line 1081
    la	$t2,__glTextureSBModulateL
    b	.L0d9f5f9c
    sw	$t2,260($a6)
.L0d9f6588:
    # Line 1242
    beqz	$t0,.L0d9f66fc
    # Line 1245
    la	$t3,__glTextureSBReplaceLA
    b	.L0d9f5f9c
    sw	$t3,260($a6)
.L0d9f6598:
    # Line 1087
    beqz	$t0,.L0d9f6708
    # Line 1092
    la	$a1,__glTextureModulateLA
    # Line 1090
    la	$t8,__glTextureSBModulateLA
    b	.L0d9f5f9c
    sw	$t8,260($a6)
.L0d9f65ac:
    ld	$s7,24($sp)
    b	.L0d9f5f18
    # Line 1021
    move	$t0,$zero
.L0d9f65b8:
    # Line 1251
    beqz	$t0,.L0d9f6710
    # Line 1254
    nop	# was lw $t9, -23964($gp) # &__glTextureSBReplaceRGB
    b	.L0d9f5f9c
    sw	$t9,260($a6)
.L0d9f65c8:
    # Line 1174
    beqz	$t0,.L0d9f671c
    # Line 1179
    la	$t0,__glTextureBlendL
    # Line 1177
    la	$ra,__glTextureSBBlendL
    b	.L0d9f5f9c
    sw	$ra,260($a6)
.L0d9f65dc:
    # Line 1096
    beqz	$t0,.L0d9f6724
    # Line 1101
    la	$t1,__glTextureModulateRGB
    # Line 1099
    la	$at,__glTextureSBModulateRGB
    b	.L0d9f5f9c
    sw	$at,260($a6)
.L0d9f65f0:
    # Line 1260
    beqz	$t0,.L0d9f672c
    # Line 1265
    la	$t2,__glTextureReplaceRGBA
    # Line 1263
    la	$v0,__glTextureSBReplaceRGBA
    b	.L0d9f5f9c
    sw	$v0,260($a6)
.L0d9f6604:
    # Line 1144
    beqz	$t0,.L0d9f6734
    # Line 1149
    la	$t3,__glTextureDecalRGB
    # Line 1147
    la	$v1,__glTextureSBDecalRGB
    b	.L0d9f5f9c
    sw	$v1,260($a6)
.L0d9f6618:
    # Line 1183
    beqz	$t0,.L0d9f673c
    # Line 1188
    la	$t8,__glTextureBlendLA
    # Line 1186
    la	$a0,__glTextureSBBlendLA
    b	.L0d9f5f9c
    sw	$a0,260($a6)
.L0d9f662c:
    # Line 1105
    beqz	$t0,.L0d9f6744
    # Line 1110
    nop	# was lw $t9, -24100($gp) # &__glTextureModulateRGBA
    # Line 1108
    la	$a1,__glTextureSBModulateRGBA
    b	.L0d9f5f9c
    sw	$a1,260($a6)
.L0d9f6640:
    # Line 1269
    beqz	$t0,.L0d9f674c
    # Line 1272
    la	$a4,__glTextureSBReplaceA
    b	.L0d9f5f9c
    sw	$a4,260($a6)
.L0d9f6650:
    # Line 1153
    beqz	$t0,.L0d9f6758
    # Line 1158
    la	$at,__glTextureDecalRGBA
    # Line 1156
    la	$t0,__glTextureSBDecalRGBA
    b	.L0d9f5f9c
    sw	$t0,260($a6)
.L0d9f6664:
    # Line 1192
    beqz	$t0,.L0d9f6760
    # Line 1197
    la	$v0,__glTextureBlendRGB
    # Line 1195
    la	$t1,__glTextureSBBlendRGB
    b	.L0d9f5f9c
    sw	$t1,260($a6)
.L0d9f6678:
    # Line 1114
    beqz	$t0,.L0d9f6768
    # Line 1119
    la	$v1,__glTextureModulateA
    # Line 1117
    la	$t2,__glTextureSBModulateA
    b	.L0d9f5f9c
    sw	$t2,260($a6)
.L0d9f668c:
    # Line 1278
    beqz	$t0,.L0d9f677c
    # Line 1281
    la	$t3,__glTextureSBReplaceI
    b	.L0d9f5f9c
    sw	$t3,260($a6)
.L0d9f669c:
    # Line 1201
    beqz	$t0,.L0d9f6788
    # Line 1206
    la	$a4,__glTextureBlendRGBA
    # Line 1204
    la	$t8,__glTextureSBBlendRGBA
    b	.L0d9f5f9c
    sw	$t8,260($a6)
.L0d9f66b0:
    # Line 1123
    beqz	$t0,.L0d9f6790
    # Line 1128
    la	$t0,__glTextureModulateI
    # Line 1126
    # lw $t9, -24008($gp) # &__glTextureSBModulateI
    b	.L0d9f5f9c
    sw	$t9,260($a6)
.L0d9f66c4:
    # Line 1210
    beqz	$t0,.L0d9f67a0
    # Line 1215
    la	$t2,__glTextureBlendA
    # Line 1213
    la	$ra,__glTextureSBBlendA
    b	.L0d9f5f9c
    sw	$ra,260($a6)
.L0d9f66d8:
    # Line 1219
    beqz	$t0,.L0d9f67a8
    # Line 1224
    la	$t3,__glTextureBlendI
    # Line 1222
    la	$at,__glTextureSBBlendI
    b	.L0d9f5f9c
    sw	$at,260($a6)
.L0d9f66ec:
    b	.L0d9f5f9c
    # Line 1238
    sw	$v0,260($a6)
.L0d9f66f4:
    b	.L0d9f5f9c
    # Line 1083
    sw	$v1,260($a6)
.L0d9f66fc:
    # Line 1247
    la	$a0,__glTextureReplaceLA
    b	.L0d9f5f9c
    sw	$a0,260($a6)
.L0d9f6708:
    b	.L0d9f5f9c
    # Line 1092
    sw	$a1,260($a6)
.L0d9f6710:
    # Line 1256
    la	$a4,__glTextureReplaceRGB
    b	.L0d9f5f9c
    sw	$a4,260($a6)
.L0d9f671c:
    b	.L0d9f5f9c
    # Line 1179
    sw	$t0,260($a6)
.L0d9f6724:
    b	.L0d9f5f9c
    # Line 1101
    sw	$t1,260($a6)
.L0d9f672c:
    b	.L0d9f5f9c
    # Line 1265
    sw	$t2,260($a6)
.L0d9f6734:
    b	.L0d9f5f9c
    # Line 1149
    sw	$t3,260($a6)
.L0d9f673c:
    b	.L0d9f5f9c
    # Line 1188
    sw	$t8,260($a6)
.L0d9f6744:
    b	.L0d9f5f9c
    # Line 1110
    sw	$t9,260($a6)
.L0d9f674c:
    # Line 1274
    la	$ra,__glTextureReplaceA
    b	.L0d9f5f9c
    sw	$ra,260($a6)
.L0d9f6758:
    b	.L0d9f5f9c
    # Line 1158
    sw	$at,260($a6)
.L0d9f6760:
    b	.L0d9f5f9c
    # Line 1197
    sw	$v0,260($a6)
.L0d9f6768:
    b	.L0d9f5f9c
    # Line 1119
    sw	$v1,260($a6)
.L0d9f6770:
    # Line 946
    la	$a0,__glCalcEyeLinear
    b	.L0d9f5d10
    sw	$a0,11996($s0)
.L0d9f677c:
    # Line 1283
    la	$a1,__glTextureReplaceI
    b	.L0d9f5f9c
    sw	$a1,260($a6)
.L0d9f6788:
    b	.L0d9f5f9c
    # Line 1206
    sw	$a4,260($a6)
.L0d9f6790:
    b	.L0d9f5f9c
    # Line 1128
    sw	$t0,260($a6)
.L0d9f6798:
    # Line 950
    b	.L0d9f5d10
    # Line 949
    sw	$t1,11996($s0)
.L0d9f67a0:
    b	.L0d9f5f9c
    # Line 1215
    sw	$t2,260($a6)
.L0d9f67a8:
    b	.L0d9f5f9c
    # Line 1224
    sw	$t3,260($a6)
.end __glGenericPickTextureProcs

# Function: __glGenericPickFogProcs
# Declared: Line 1353 (Source lines: 1354-1371)
# Address: 0x0d9f67b0 - 0x0d9f6824 (Size: 116 bytes, Frame: 0)
.globl __glGenericPickFogProcs
.ent __glGenericPickFogProcs
__glGenericPickFogProcs:
    # Line 1354
    lw	$v1,1792($a0)
    # Line 1357
    li	$a4,9729
    # Line 1354
    lui	$v0,0x6
    andi	$v1,$v1,0x20
    li	$a2,4354
    addiu	$v0,$v0,-23076
    beqz	$v1,.L0d9f6814
    addu	$at,$t9,$v0
    lw	$a1,1912($a0)
    # Line 1360
    la	$t0,__glFogVertexLinear
    # Line 1364
    la	$a6,__glFogFragmentSlow
    # Line 1354
    beq	$a1,$a2,.L0d9f680c
    # Line 1362
    la	$a5,__glFogVertex
    # Line 1357
    lw	$a3,1588($a0)
    beq	$a3,$a4,.L0d9f6804
    nop
    # Line 1362
    sw	$a5,12536($a0)
.L0d9f67f4:
    # Line 1364
    sw	$a6,12528($a0)
    # Line 1365
    la	$a7,__glFogColorSlow
    # Line 1371
    jr	$ra
    # Line 1365
    sw	$a7,12532($a0)
.L0d9f6804:
    # Line 1360
    b	.L0d9f67f4
    sw	$t0,12536($a0)
.L0d9f680c:
    # Line 1357
    b	.L0d9f67f4
    sw	$zero,12536($a0)
.L0d9f6814:
    # Line 1369
    sw	$zero,12532($a0)
    # Line 1368
    sw	$zero,12528($a0)
    # Line 1371
    jr	$ra
    # Line 1367
    sw	$zero,12536($a0)
.end __glGenericPickFogProcs

# Function: __glGenericPickBufferProcs
# Declared: Line 1373 (Source lines: 1374-1408)
# Address: 0x0d9f6830 - 0x0d9f68b8 (Size: 136 bytes, Frame: 0)
.globl __glGenericPickBufferProcs
.ent __glGenericPickBufferProcs
__glGenericPickBufferProcs:
    # Line 1374
    lui	$a5,0x6
    # Line 1378
    lw	$a4,1888($a0)
    # Line 1374
    addiu	$a5,$a5,-23204
    addu	$at,$t9,$a5
    # Line 1378
    addiu	$a4,$a4,-1028
    la	$a3,sub_0da40000
    sltiu	$a5,$a4,9
    sll	$a4,$a4,0x2
    addiu	$a3,$a3,20552
    sb	$zero,30652($a0)
    beqz	$a5,.L0d9f687c
    addu	$a3,$a3,$a4
    # Line 1388
    li	$t3,1
    # Line 1378
    lw	$a6,0($a3)
    jr	$a6
    nop
.L0d9f6870:
    # Line 1394
    lw	$a7,30660($a0)
    # Line 1408
    jr	$ra
    # Line 1394
    sw	$a7,11760($a0)
.L0d9f687c:
    # Line 1408
    jr	$ra
    nop
.L0d9f6884:
    # Line 1383
    lw	$t0,30656($a0)
    # Line 1408
    jr	$ra
    # Line 1383
    sw	$t0,11760($a0)
.L0d9f6890:
    # Line 1386
    lbu	$t1,3222($a0)
    beqz	$t1,.L0d9f68ac
    nop
    # Line 1388
    sb	$t3,30652($a0)
    # Line 1387
    lw	$t2,30660($a0)
    # Line 1408
    jr	$ra
    # Line 1387
    sw	$t2,11760($a0)
.L0d9f68ac:
    # Line 1390
    lw	$t8,30656($a0)
    # Line 1408
    jr	$ra
    # Line 1390
    sw	$t8,11760($a0)
.end __glGenericPickBufferProcs

# Function: __glGenericPickPixelProcs
# Declared: Line 1410 (Source lines: 1411-1624)
# Address: 0x0d9f68c0 - 0x0d9f6f0c (Size: 1612 bytes, Frame: 0)
.globl __glGenericPickPixelProcs
.ent __glGenericPickPixelProcs
__glGenericPickPixelProcs:
    # Line 1411
    lui	$v0,0x6
    # Line 1427
    lwc1	$f0,712($a0)
    # Line 1411
    addiu	$v0,$v0,-23348
    addu	$at,$t9,$v0
    # Line 1427
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    bc1f	.L0d9f6970
    # Line 1417
    lw	$a4,1792($a0)
    # Line 1427
    lwc1	$f1,716($a0)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f4
    bc1f .L0d9f6974
    # Line 1435
    li	$v1,1
    # Line 1427
    lwc1	$f2,720($a0)
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f4
    bc1f .L0d9f6974
    # Line 1435
    li	$v1,1
    # Line 1427
    lwc1	$f3,724($a0)
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f4
    bc1f .L0d9f6974
    # Line 1435
    li	$v1,1
    # Line 1427
    lwc1	$f5,728($a0)
    dmtc1	$zero,$f4
    cvt.d.s	$f5,$f5
    c.eq.d $f5,$f4
    bc1f .L0d9f6974
    # Line 1435
    li	$v1,1
    # Line 1427
    lwc1	$f6,732($a0)
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f4
    bc1f .L0d9f6970
    lwc1	$f7,736($a0)
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f4
    bc1f .L0d9f6974
    # Line 1435
    li	$v1,1
    # Line 1427
    lwc1	$f8,740($a0)
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f4
    bc1t .L0d9f6eb4
    # Line 1437
    move	$a5,$zero
.L0d9f6970:
    # Line 1435
    li	$v1,1
.L0d9f6974:
    sb	$v1,30645($a0)
    move	$a5,$v1
.L0d9f697c:
    # Line 1441
    lui	$a3,0xe00
    and	$a3,$a4,$a3
    beqz	$a3,.L0d9f6e48
    lui	$a6,0x200
    beq	$a3,$a6,.L0d9f69b0
    lui	$a7,0x800
    beq	$a3,$a7,.L0d9f6c40
    lui	$t0,0xa00
    beq	$a3,$t0,.L0d9f6c44
    # Line 1452
    addiu	$a3,$a0,936
    # Line 1455
    addiu	$a3,$a0,852
    b	.L0d9f69b8
    sw	$a3,764($a0)
.L0d9f69b0:
    # Line 1448
    addiu	$a3,$a0,768
    sw	$a3,764($a0)
.L0d9f69b8:
    # Line 1462
    lw	$t1,64($a3)
    beqz	$t1,.L0d9f6c54
    # Line 1457
    la	$a6,__glDummyFilter
    # Line 1462
    lw	$t2,68($a3)
    beqz	$t2,.L0d9f6c54
    nop
.L0d9f69d0:
    # Line 1468
    lw	$t3,0($a3)
    beqz	$t3,.L0d9f6d50
    dsll32	$a3,$a4,0x3
.L0d9f69dc:
    li	$a7,1
.L0d9f69e0:
    # Line 1487
    lw	$a3,1236($a0)
    li	$t8,1028
    beq	$a3,$t8,.L0d9f6e6c
    li	$t9,1029
    beq	$a3,$t9,.L0d9f6e78
    nop
.L0d9f69f8:
    # Line 1507
    lbu	$a6,28216($a0)
    beqz	$a6,.L0d9f6c60
    # Line 1509
    la	$v0,__glSlowDrawPixelsStore
.L0d9f6a04:
    sw	$v0,12580($a0)
.L0d9f6a08:
    # Line 1516
    lbu	$a3,760($a0)
    # Line 1517
    beqz	$a3,.L0d9f6c78
    # Line 1520
    li	$v1,1
.L0d9f6a14:
    sb	$v1,30525($a0)
    # Line 1519
    sb	$zero,30616($a0)
    # Line 1518
    sb	$zero,30608($a0)
.L0d9f6a20:
    # Line 1524
    lbu	$a1,761($a0)
    beqz	$a1,.L0d9f6ca4
    # Line 1525
    li	$a2,1
.L0d9f6a2c:
    sb	$a2,30527($a0)
.L0d9f6a30:
    # Line 1529
    lwc1	$f9,656($a0)
    lwc1	$f8,3544($a0)
    c.eq.s	$f9,$f8
    bc1f	.L0d9f6a58
    # Line 1530
    li	$a5,1
    # Line 1529
    lwc1	$f10,676($a0)
    mtc1	$zero,$f11
    c.eq.s $f10,$f11
    bc1t .L0d9f6c4c
    # Line 1530
    li	$a5,1
.L0d9f6a58:
    sb	$a5,30526($a0)
.L0d9f6a5c:
    # Line 1534
    beqz	$a3,.L0d9f6cc4
    nop
.L0d9f6a64:
    # Line 1538
    sb	$zero,30588($a0)
    # Line 1537
    li	$t0,1
    sb	$t0,30524($a0)
    move	$a5,$t0
.L0d9f6a74:
    # Line 1540
    beqz	$a5,.L0d9f6e54
    lwc1	$f9,30792($a0)
    # Line 1548
    lwc1	$f4,652($a0)
    lwc1	$f10,672($a0)
    # Line 1547
    lwc1	$f5,668($a0)
    # Line 1546
    lwc1	$f7,664($a0)
    # Line 1545
    lwc1	$f6,660($a0)
    # Line 1548
    beqz	$a3,.L0d9f6de0
    add.s	$f4,$f4,$f10
    # Line 1553
    lw	$a5,1096($a0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f8,3540($a0)
    madd.s	$f11,$f8,$f11,$f6
    trunc.w.s	$f11,$f11
    mfc1	$a3,$f11
    bltz	$a3,.L0d9f6e84
    slt	$t0,$a5,$a3
    movn	$a3,$a5,$t0
.L0d9f6ac4:
    # Line 1560
    lw	$a5,1108($a0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f12
    cvt.s.w	$f12,$f12
    madd.s	$f12,$f8,$f12,$f7
    trunc.w.s	$f12,$f12
    # Line 1556
    lw	$t1,1104($a0)
    sll	$t2,$a3,0x2
    # Line 1560
    mfc1	$a3,$f12
    # Line 1556
    addu	$t1,$t1,$t2
    # Line 1560
    bltz	$a3,.L0d9f6e8c
    # Line 1556
    lwc1	$f6,0($t1)
    # Line 1560
    slt	$t0,$a5,$a3
    movn	$a3,$a5,$t0
.L0d9f6afc:
    # Line 1567
    lw	$a5,1120($a0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f13
    cvt.s.w	$f13,$f13
    madd.s	$f13,$f8,$f13,$f5
    trunc.w.s	$f13,$f13
    # Line 1563
    lw	$t1,1116($a0)
    sll	$t2,$a3,0x2
    # Line 1567
    mfc1	$a3,$f13
    # Line 1563
    addu	$t1,$t1,$t2
    # Line 1567
    bltz	$a3,.L0d9f6e94
    # Line 1563
    lwc1	$f7,0($t1)
    # Line 1567
    slt	$t0,$a5,$a3
    movn	$a3,$a5,$t0
.L0d9f6b34:
    # Line 1574
    lw	$a5,1132($a0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f14
    cvt.s.w	$f14,$f14
    madd.s	$f14,$f8,$f14,$f4
    trunc.w.s	$f14,$f14
    # Line 1570
    lw	$t1,1128($a0)
    sll	$t2,$a3,0x2
    # Line 1574
    mfc1	$a3,$f14
    # Line 1570
    addu	$t1,$t1,$t2
    # Line 1574
    bltz	$a3,.L0d9f6e9c
    # Line 1570
    lwc1	$f5,0($t1)
    # Line 1574
    slt	$t0,$a5,$a3
    movn	$a3,$a5,$t0
.L0d9f6b6c:
    # Line 1577
    lw	$t1,1140($a0)
    sll	$t2,$a3,0x2
    addu	$t1,$t1,$t2
    lwc1	$f4,0($t1)
.L0d9f6b7c:
    # Line 1590
    lwc1	$f17,30760($a0)
    # Line 1589
    lwc1	$f16,30756($a0)
    # Line 1591
    mul.s	$f18,$f9,$f4
    # Line 1588
    lwc1	$f15,30752($a0)
    # Line 1591
    swc1	$f18,30544($a0)
    # Line 1590
    mul.s	$f17,$f17,$f5
    swc1	$f17,30540($a0)
    # Line 1589
    mul.s	$f16,$f16,$f7
    swc1	$f16,30536($a0)
    # Line 1588
    mul.s	$f15,$f15,$f6
    swc1	$f15,30532($a0)
.L0d9f6ba8:
    # Line 1599
    andi	$t3,$a4,0x8011
    bnez	$t3,.L0d9f6bf0
    nop
    lw	$a3,1888($a0)
    beqz	$a3,.L0d9f6bf0
    li	$t8,1032
    beq	$a3,$t8,.L0d9f6bf0
    andi	$t9,$a4,0x8
    beqz	$t9,.L0d9f6bf0
    andi	$v0,$a4,0x2
    bnez	$v0,.L0d9f6bf0
    nop
    bnez	$a6,.L0d9f6bf0
    andi	$v1,$a4,0x20
    bnez	$v1,.L0d9f6bf0
    andi	$a1,$a7,0xff
    beqz	$a1,.L0d9f6ebc
    # Line 1611
    li	$v1,1
.L0d9f6bf0:
    # Line 1609
    sb	$zero,30528($a0)
    # Line 1614
    la	$a2,__glSlowPickDrawPixels
    # Line 1615
    la	$a3,__glSlowPickReadPixels
    # Line 1616
    la	$a4,__glSlowPickCopyPixels
    # Line 1618
    la	$a5,__glSlowPickConvolutionFilter
    # Line 1619
    la	$a6,__glSlowPickSeparableFilter
    # Line 1620
    la	$a7,__glSlowPickGetConvolutionFilter
    # Line 1621
    la	$t0,__glSlowPickGetSeparableFilter
    # Line 1622
    la	$t1,__glSlowPickCopyConvolutionFilter1D
    # Line 1623
    la	$t2,__glSlowPickCopyConvolutionFilter2D
    sw	$t2,12604($a0)
    # Line 1622
    sw	$t1,12600($a0)
    # Line 1621
    sw	$t0,12596($a0)
    # Line 1620
    sw	$a7,12592($a0)
    # Line 1619
    sw	$a6,12588($a0)
    # Line 1618
    sw	$a5,12584($a0)
    # Line 1616
    sw	$a4,12564($a0)
    # Line 1615
    sw	$a3,12568($a0)
    # Line 1624
    jr	$ra
    # Line 1614
    sw	$a2,12560($a0)
.L0d9f6c40:
    # Line 1452
    addiu	$a3,$a0,936
.L0d9f6c44:
    # Line 1453
    b	.L0d9f69b8
    # Line 1452
    sw	$a3,764($a0)
.L0d9f6c4c:
    b	.L0d9f6a5c
    # Line 1532
    sb	$zero,30526($a0)
.L0d9f6c54:
    # Line 1464
    move	$a3,$a6
    b	.L0d9f69d0
    sw	$a6,764($a0)
.L0d9f6c60:
    # Line 1507
    andi	$t3,$a4,0x20
    bnez	$t3,.L0d9f6a04
    # Line 1509
    la	$v0,__glSlowDrawPixelsStore
    # Line 1511
    lw	$t8,12608($a0)
    b	.L0d9f6a08
    sw	$t8,12580($a0)
.L0d9f6c78:
    # Line 1517
    lbu	$t9,3220($a0)
    bnez	$t9,.L0d9f6a14
    # Line 1520
    li	$v1,1
    # Line 1517
    lw	$v0,752($a0)
    bnez	$v0,.L0d9f6a14
    # Line 1520
    li	$v1,1
    # Line 1517
    lw	$v1,756($a0)
    bnez	$v1,.L0d9f6a14
    # Line 1520
    li	$v1,1
    b	.L0d9f6a20
    # Line 1522
    sb	$zero,30525($a0)
.L0d9f6ca4:
    # Line 1524
    lw	$a1,752($a0)
    bnez	$a1,.L0d9f6a2c
    # Line 1525
    li	$a2,1
    # Line 1524
    lw	$a2,756($a0)
    bnez	$a2,.L0d9f6a2c
    # Line 1525
    li	$a2,1
    b	.L0d9f6a30
    # Line 1527
    sb	$zero,30527($a0)
.L0d9f6cc4:
    # Line 1534
    lwc1	$f19,660($a0)
    mtc1	$zero,$f4
    c.eq.s $f19,$f4
    bc1f .L0d9f6a64
    nop
    lwc1	$f21,664($a0)
    c.eq.s $f21,$f4
    bc1f .L0d9f6a64
    nop
    lwc1	$f23,668($a0)
    c.eq.s $f23,$f4
    bc1f .L0d9f6a64
    nop
    lwc1	$f25,672($a0)
    c.eq.s $f25,$f4
    bc1f .L0d9f6a64
    nop
    lwc1	$f27,640($a0)
    c.eq.s $f27,$f8
    bc1f .L0d9f6a64
    nop
    lwc1	$f29,644($a0)
    c.eq.s $f29,$f8
    bc1f .L0d9f6a64
    nop
    lwc1	$f31,648($a0)
    c.eq.s	$f31,$f8
    bc1f	.L0d9f6a64
    nop
    lwc1	$f0,652($a0)
    c.eq.s $f0,$f8
    bc1f .L0d9f6a64
    # Line 1540
    move	$a5,$zero
    b	.L0d9f6a74
    sb	$zero,30524($a0)
.L0d9f6d50:
    # Line 1468
    bgez	$a3,.L0d9f6d70
    dsll32	$t0,$a4,0x2
    lw	$a6,1248($a0)
    bnez	$a6,.L0d9f69e0
    li	$a7,1
    lbu	$a7,1280($a0)
    bnez	$a7,.L0d9f69dc
    dsll32	$t0,$a4,0x2
.L0d9f6d70:
    bltz	$t0,.L0d9f69e0
    li	$a7,1
    lw	$t1,30636($a0)
    li	$t2,0x8421
    bne	$t1,$t2,.L0d9f69dc
    li	$t3,1
    beq	$a5,$t3,.L0d9f69e0
    li	$a7,1
    lw	$a3,1796($a0)
    andi	$t8,$a3,0x1
    beqz	$t8,.L0d9f6dac
    andi	$v0,$a3,0x2
    lw	$t9,5384($a0)
    bnez	$t9,.L0d9f69dc
    andi	$v0,$a3,0x2
.L0d9f6dac:
    beqz	$v0,.L0d9f6dc4
    andi	$a1,$a3,0x4
    lw	$v1,5544($a0)
    bnez	$v1,.L0d9f69e0
    li	$a7,1
    andi	$a1,$a3,0x4
.L0d9f6dc4:
    beqz	$a1,.L0d9f6dd8
    nop
    lw	$a2,5704($a0)
    bnez	$a2,.L0d9f69e0
    li	$a7,1
.L0d9f6dd8:
    b	.L0d9f69e0
    move	$a7,$zero
.L0d9f6de0:
    # Line 1577
    c.lt.s $f8,$f6
    bc1f .L0d9f6df4
    # Line 1580
    mtc1	$zero,$f1
    # Line 1579
    b	.L0d9f6dfc
    mov.s	$f6,$f8
.L0d9f6df4:
    # Line 1580
    c.lt.s $f6,$f1
    movt.s	$f6,$f1,$fcc3
.L0d9f6dfc:
    c.lt.s $f8,$f7
    bc1f .L0d9f6e10
    # Line 1582
    mtc1	$zero,$f2
    # Line 1581
    b	.L0d9f6e18
    mov.s	$f7,$f8
.L0d9f6e10:
    # Line 1582
    c.lt.s $f7,$f2
    movt.s	$f7,$f2,$fcc5
.L0d9f6e18:
    c.lt.s $f8,$f5
    bc1f .L0d9f6e2c
    # Line 1584
    mtc1	$zero,$f3
    # Line 1583
    b	.L0d9f6e34
    mov.s	$f5,$f8
.L0d9f6e2c:
    # Line 1584
    c.lt.s $f5,$f3
    movt.s	$f5,$f3,$fcc7
.L0d9f6e34:
    c.lt.s	$f8,$f4
    bc1f	.L0d9f6ea4
    nop
    # Line 1585
    b	.L0d9f6b7c
    mov.s	$f4,$f8
.L0d9f6e48:
    # Line 1445
    la	$a3,__glDummyFilter
    b	.L0d9f69b8
    sw	$a3,764($a0)
.L0d9f6e54:
    # Line 1593
    mtc1	$zero,$f4
    # Line 1596
    swc1	$f9,30544($a0)
    # Line 1595
    swc1	$f4,30540($a0)
    # Line 1594
    swc1	$f4,30536($a0)
    b	.L0d9f6ba8
    # Line 1593
    swc1	$f4,30532($a0)
.L0d9f6e6c:
    # Line 1489
    lw	$a3,30656($a0)
    b	.L0d9f69f8
    sw	$a3,11764($a0)
.L0d9f6e78:
    # Line 1492
    lw	$a5,30660($a0)
    # Line 1493
    b	.L0d9f69f8
    # Line 1492
    sw	$a5,11764($a0)
.L0d9f6e84:
    # Line 1553
    b	.L0d9f6ac4
    move	$a3,$zero
.L0d9f6e8c:
    # Line 1560
    b	.L0d9f6afc
    move	$a3,$zero
.L0d9f6e94:
    # Line 1567
    b	.L0d9f6b34
    move	$a3,$zero
.L0d9f6e9c:
    # Line 1574
    b	.L0d9f6b6c
    move	$a3,$zero
.L0d9f6ea4:
    # Line 1586
    mtc1	$zero,$f8
    c.lt.s $f4,$f8
    b	.L0d9f6b7c
    movt.s	$f4,$f8,$fcc1
.L0d9f6eb4:
    b	.L0d9f697c
    # Line 1437
    sb	$zero,30645($a0)
.L0d9f6ebc:
    # Line 1611
    sb	$v1,30528($a0)
    # Line 1614
    la	$a6,__glSlowPickDrawPixels
    # Line 1615
    la	$a7,__glSlowPickReadPixels
    # Line 1616
    la	$t0,__glSlowPickCopyPixels
    # Line 1618
    la	$t1,__glSlowPickConvolutionFilter
    # Line 1619
    la	$t2,__glSlowPickSeparableFilter
    # Line 1620
    la	$t3,__glSlowPickGetConvolutionFilter
    # Line 1621
    la	$t8,__glSlowPickGetSeparableFilter
    # Line 1622
    # lw $t9, -28292($gp) # &__glSlowPickCopyConvolutionFilter1D
    # Line 1623
    la	$v0,__glSlowPickCopyConvolutionFilter2D
    sw	$v0,12604($a0)
    # Line 1622
    sw	$t9,12600($a0)
    # Line 1621
    sw	$t8,12596($a0)
    # Line 1620
    sw	$t3,12592($a0)
    # Line 1619
    sw	$t2,12588($a0)
    # Line 1618
    sw	$t1,12584($a0)
    # Line 1616
    sw	$t0,12564($a0)
    # Line 1615
    sw	$a7,12568($a0)
    # Line 1624
    jr	$ra
    # Line 1614
    sw	$a6,12560($a0)
.end __glGenericPickPixelProcs

# Function: __glGenericPickTransformProcs
# Declared: Line 1626 (Source lines: 1627-1650)
# Address: 0x0d9f6f10 - 0x0d9f6fb8 (Size: 168 bytes, Frame: 0)
.globl __glGenericPickTransformProcs
.ent __glGenericPickTransformProcs
__glGenericPickTransformProcs:
    # Line 1628
    li	$a2,6144
    lw	$a3,1744($a0)
    li	$v1,5888
    # Line 1627
    lui	$v0,0x6
    # Line 1628
    li	$a1,5890
    # Line 1627
    addiu	$v0,$v0,-24964
    # Line 1628
    beq	$a3,$v1,.L0d9f6f6c
    # Line 1627
    addu	$at,$t9,$v0
    # Line 1628
    li	$v1,5889
    beq	$a3,$v1,.L0d9f6f88
    # Line 1635
    la	$t1,__glPushProjectionMatrix
    # Line 1628
    beq	$a3,$a1,.L0d9f6fa0
    # Line 1640
    la	$t8,__glPushTextureMatrix
    # Line 1628
    beq	$a3,$a2,.L0d9f6f54
    # Line 1645
    la	$a3,__glPushColorMatrix
    # Line 1650
    jr	$ra
    nop
.L0d9f6f54:
    # Line 1646
    la	$a4,__glPopColorMatrix
    # Line 1647
    la	$a5,__glLoadIdentityColorMatrix
    sw	$a5,11896($a0)
    # Line 1646
    sw	$a4,11892($a0)
    # Line 1650
    jr	$ra
    # Line 1645
    sw	$a3,11888($a0)
.L0d9f6f6c:
    # Line 1630
    la	$a6,__glPushModelViewMatrix
    # Line 1631
    la	$a7,__glPopModelViewMatrix
    # Line 1632
    la	$t0,__glLoadIdentityModelViewMatrix
    sw	$t0,11896($a0)
    # Line 1631
    sw	$a7,11892($a0)
    # Line 1650
    jr	$ra
    # Line 1630
    sw	$a6,11888($a0)
.L0d9f6f88:
    # Line 1636
    la	$t2,__glPopProjectionMatrix
    # Line 1637
    la	$t3,__glLoadIdentityProjectionMatrix
    sw	$t3,11896($a0)
    # Line 1636
    sw	$t2,11892($a0)
    # Line 1650
    jr	$ra
    # Line 1635
    sw	$t1,11888($a0)
.L0d9f6fa0:
    # Line 1641
    # lw $t9, -23392($gp) # &__glPopTextureMatrix
    # Line 1642
    la	$v0,__glLoadIdentityTextureMatrix
    sw	$v0,11896($a0)
    # Line 1641
    sw	$t9,11892($a0)
    # Line 1650
    jr	$ra
    # Line 1640
    sw	$t8,11888($a0)
.end __glGenericPickTransformProcs

# Function: __glGenericPickDepthProcs
# Declared: Line 1655 (Source lines: 1656-1722)
# Address: 0x0d9f6fc0 - 0x0d9f7100 (Size: 320 bytes, Frame: 32)
.globl __glGenericPickDepthProcs
.ent __glGenericPickDepthProcs
__glGenericPickDepthProcs:
    # Line 1674
    sb	$zero,31332($a0)
    # Line 1656
    addiu	$sp,$sp,-32
    sd	$s1,0($sp)
    # Line 1657
    lw	$a1,31308($a0)
    # Line 1656
    move	$s1,$a0
    lui	$t8,0x6
    sd	$s0,16($sp)
    addiu	$t8,$t8,-25140
    # Line 1674
    lui	$a2,0x8000
    # Line 1664
    lw	$s0,1632($a0)
    sd	$gp,8($sp)
    # Line 1656
    addu	$gp,$t9,$t8
    # Line 1674
    sltu	$a1,$a1,$a2
    # Line 1664
    lbu	$at,1636($a0)
    # Line 1674
    lui	$t9,0x100
    # Line 1667
    addiu	$v1,$s0,-504
    # Line 1658
    lw	$v0,31328($a0)
    # Line 1664
    addiu	$s0,$s0,-512
    # Line 1674
    beqz	$a1,.L0d9f7024
    movz	$s0,$v1,$at
    bne	$v0,$t9,.L0d9f7038
    # Line 1678
    li	$at,1
    sb	$at,31332($a0)
    b	.L0d9f7038
    # Line 1677
    addiu	$s0,$s0,16
.L0d9f7024:
    # Line 1678
    lui	$v1,0xff00
    bne	$v0,$v1,.L0d9f7038
    # Line 1683
    li	$a0,1
    sb	$a0,31332($s1)
    # Line 1682
    addiu	$s0,$s0,16
.L0d9f7038:
    # Line 1683
    lbu	$a1,3225($s1)
    beqz	$a1,.L0d9f7060
    nop
    # Line 1689
    lw	$t9,31340($s1)
    move	$a0,$s1
    move	$a2,$s0
    sd	$ra,24($sp)
    jalr	$t9
    addiu	$a1,$s1,31228
    ld	$ra,24($sp)
.L0d9f7060:
    # Line 1695
    lw	$a2,12404($s1)
    # Line 1692
    la	$a5,__glCDTPixel
    # Line 1695
    la	$a3,__glPDepthTestPixel
    # Line 1692
    sll	$v0,$s0,0x2
    # Line 1694
    la	$a4,__glSDepthTestPixel
    # Line 1692
    addu	$a5,$v0,$a5
    lw	$a5,0($a5)
    # Line 1694
    addu	$a4,$v0,$a4
    # Line 1692
    sw	$a5,12024($s1)
    # Line 1694
    lw	$a4,0($a4)
    # Line 1695
    addu	$a3,$v0,$a3
    # Line 1694
    sw	$a4,12236($s1)
    # Line 1695
    lw	$a3,0($a3)
    beqz	$a2,.L0d9f70c8
    sw	$a3,12400($s1)
    la	$a0,__glDTLine
    addu	$a0,$v0,$a0
    lw	$a0,0($a0)
    # Line 1722
    ld	$s1,0($sp)
    # Line 1695
    beqz	$a0,.L0d9f70e0
    # Line 1722
    move	$v0,$s0
    # Line 1699
    sw	$a0,0($a2)
    # Line 1722
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f70c8:
    ld	$s1,0($sp)
    ld	$gp,8($sp)
    move	$v0,$s0
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f70e0:
    # Line 1717
    la	$a1,__glDepthTestLine_asm
    # Line 1722
    ld	$gp,8($sp)
    move	$v0,$s0
    ld	$s0,16($sp)
    ld	$s1,0($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 1717
    sw	$a1,0($a2)
.end __glGenericPickDepthProcs

# Function: __glGenericValidate
# Declared: Line 1726 (Source lines: 1727-1729)
# Address: 0x0d9f7100 - 0x0d9f7134 (Size: 52 bytes, Frame: 16)
.globl __glGenericValidate
.ent __glGenericValidate
__glGenericValidate:
    # Line 1727
    addiu	$sp,$sp,-16
    lui	$at,0x6
    sd	$gp,8($sp)
    addiu	$at,$at,-25460
    addu	$gp,$t9,$at
    # Line 1728
    lw	$t9,11868($a0)
    # Line 1727
    sd	$ra,0($sp)
    # Line 1728
    jalr	$t9
    nop
    ld	$ra,0($sp)
    # Line 1729
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glGenericValidate

# Function: __glGenericModeFlags
# Declared: Line 1731 (Source lines: 1733-1830)
# Address: 0x0d9f7140 - 0x0d9f7370 (Size: 560 bytes, Frame: 0)
.globl __glGenericModeFlags
.ent __glGenericModeFlags
__glGenericModeFlags:
    # Line 1733
    lbu	$at,3220($a0)
    lw	$v0,1792($a0)
    beqz	$at,.L0d9f7338
    andi	$a4,$v0,0x2
    lbu	$a5,28216($a0)
    li	$a6,1
    li	$a3,9
    # Line 1748
    lbu	$a2,1884($a0)
    movz	$a3,$a6,$a5
    lbu	$t1,1887($a0)
    # Line 1743
    ori	$a1,$a3,0x100
    # Line 1748
    lbu	$t0,1886($a0)
    # Line 1743
    andi	$v1,$v0,0x1
    movz	$a1,$a3,$a4
    # Line 1748
    lbu	$a7,1885($a0)
    # Line 1746
    ori	$a3,$a1,0x200
    # Line 1748
    beqz	$a2,.L0d9f71a0
    movz	$a3,$a1,$v1
    beqz	$a7,.L0d9f71a0
    nop
    beqz	$t0,.L0d9f71a0
    nop
    bnez	$t1,.L0d9f71a8
    # Line 1772
    lui	$a1,0x4
.L0d9f71a0:
    # Line 1752
    ori	$a3,$a3,0x800
.L0d9f71a4:
    # Line 1772
    lui	$a1,0x4
.L0d9f71a8:
    # Line 1764
    lui	$t3,0x2
    # Line 1766
    andi	$t8,$v0,0x10
    # Line 1759
    lw	$t2,1392($a0)
    # Line 1764
    ori	$t3,$t3,0x2
    # Line 1759
    li	$t9,7425
    # Line 1764
    or	$t3,$a3,$t3
    xor	$t2,$t2,$t9
    # Line 1766
    beqz	$t8,.L0d9f7214
    movz	$a3,$t3,$t2
    lbu	$at,3225($a0)
    beqz	$at,.L0d9f7218
    # Line 1776
    lui	$t2,0x1
    # Line 1769
    dsll32	$v1,$v0,0x7
    bgez	$v1,.L0d9f7214
    # Line 1768
    ori	$a3,$a3,0x4004
    # Line 1769
    dmtc1	$zero,$f4
    lwc1	$f0,500($a0)
    cvt.d.s	$f0,$f0
    c.eq.d	$f0,$f4
    bc1f	.L0d9f7210
    nop
    lwc1	$f1,504($a0)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f4
    bc1t .L0d9f7218
    # Line 1776
    lui	$t2,0x1
.L0d9f7210:
    # Line 1772
    or	$a3,$a3,$a1
.L0d9f7214:
    # Line 1776
    lui	$t2,0x1
.L0d9f7218:
    # Line 1769
    andi	$t3,$v0,0x1000
    # Line 1776
    or	$t2,$a3,$t2
    movz	$t2,$a3,$t3
    andi	$t1,$v0,0x8
    # Line 1779
    ori	$t0,$t2,0x40
    # Line 1787
    andi	$a6,$v0,0x8000
    movz	$t0,$t2,$t1
    # Line 1779
    andi	$a7,$v0,0x2000
    # Line 1782
    ori	$a5,$t0,0x10
    andi	$a2,$v0,0x100
    movz	$a5,$t0,$a7
    # Line 1785
    ori	$a3,$a5,0x8000
    # Line 1787
    beqz	$a6,.L0d9f725c
    movz	$a3,$a5,$a2
    lbu	$t3,3226($a0)
    # Line 1789
    ori	$t8,$a3,0x20
    movn	$a3,$t8,$t3
.L0d9f725c:
    # Line 1791
    andi	$t9,$v0,0x40
    beqz	$t9,.L0d9f7278
    # Line 1793
    andi	$a1,$v0,0x20
    # Line 1791
    lbu	$at,1413($a0)
    # Line 1793
    ori	$v1,$a3,0x400
    movn	$a3,$v1,$at
    andi	$a1,$v0,0x20
.L0d9f7278:
    beqz	$a1,.L0d9f728c
    # Line 1798
    andi	$a2,$a3,0x8
    beqz	$a2,.L0d9f735c
    li	$a6,4354
.L0d9f7288:
    # Line 1810
    ori	$a3,$a3,0x1000
.L0d9f728c:
    # Line 1816
    lw	$a6,1836($a0)
    # Line 1815
    lw	$a5,1832($a0)
    # Line 1817
    beqz	$a4,.L0d9f7330
    # Line 1814
    lw	$v0,1828($a0)
    # Line 1817
    lw	$a4,1796($a0)
    andi	$a4,$a4,0x800
    bnez	$a4,.L0d9f7330
    li	$t1,0x800b
    li	$a0,0x8001
    li	$t0,0x8004
    li	$a7,0x8003
    beq	$a0,$v0,.L0d9f7324
    li	$t2,3057
    li	$a4,0x8002
    beq	$a4,$v0,.L0d9f7324
    nop
    beq	$a7,$v0,.L0d9f7324
    nop
    beq	$t0,$v0,.L0d9f7328
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$a0,$a5,.L0d9f7328
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$a4,$a5,.L0d9f7328
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$a7,$a5,.L0d9f7328
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$t0,$a5,.L0d9f7324
    li	$a5,0x8007
    beq	$a6,$a5,.L0d9f7324
    li	$t0,0x800a
    li	$a7,0x8008
    beq	$a6,$a7,.L0d9f7328
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$a6,$t0,.L0d9f7328
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    beq	$a6,$t1,.L0d9f7328
    # Line 1827
    lui	$v0,0x8
    # Line 1817
    bne	$a6,$t2,.L0d9f7330
.L0d9f7324:
    # Line 1827
    lui	$v0,0x8
.L0d9f7328:
    # Line 1830
    jr	$ra
    # Line 1827
    or	$v0,$a3,$v0
.L0d9f7330:
    # Line 1830
    jr	$ra
    move	$v0,$a3
.L0d9f7338:
    # Line 1752
    lw	$a3,30736($a0)
    lw	$v1,1880($a0)
    li	$a1,128
    andi	$a2,$v0,0x4
    movz	$a1,$zero,$a2
    xor	$v1,$v1,$a3
    # Line 1759
    ori	$a3,$a1,0x800
    b	.L0d9f71a4
    movz	$a3,$a1,$v1
.L0d9f735c:
    # Line 1798
    lw	$a5,1912($a0)
    beq	$a5,$a6,.L0d9f7288
    nop
    # Line 1807
    b	.L0d9f728c
    ori	$a3,$a3,0x2002
.end __glGenericModeFlags

# Function: __glGenericPickAllProcs
# Declared: Line 1833 (Source lines: 1834-2066)
# Address: 0x0d9f7370 - 0x0d9f77bc (Size: 1100 bytes, Frame: 32)
.globl __glGenericPickAllProcs
.ent __glGenericPickAllProcs
__glGenericPickAllProcs:
    # Line 1834
    addiu	$sp,$sp,-32
    sd	$s1,8($sp)
    # Line 1835
    lw	$at,11756($a0)
    lw	$s1,1792($a0)
    # Line 1834
    sd	$s0,16($sp)
    lui	$v0,0x6
    # Line 1835
    andi	$at,$at,0x21
    # Line 1834
    move	$s0,$a0
    sd	$ra,24($sp)
    addiu	$v0,$v0,-26084
    sd	$gp,0($sp)
    # Line 1835
    beqz	$at,.L0d9f73d8
    # Line 1834
    addu	$gp,$t9,$v0
    # Line 1844
    lw	$t9,11796($s0)
    jalr	$t9
    nop
    # Line 1845
    lbu	$v0,3220($s0)
    beqz	$v0,.L0d9f73d4
    move	$v0,$zero
    lw	$v1,28208($s0)
    beqz	$v1,.L0d9f73d0
    li	$v0,1
    b	.L0d9f73d8
    sb	$v0,28216($s0)
.L0d9f73d0:
    move	$v0,$zero
.L0d9f73d4:
    sb	$v0,28216($s0)
.L0d9f73d8:
    # Line 1851
    # lw $t9, -25284($gp) # &__glGenericModeFlags
    bal __glGenericModeFlags
    move	$a0,$s0
    lw	$a0,11756($s0)
    andi	$a1,$a0,0x21
    beqz	$a1,.L0d9f761c
    sw	$v0,30436($s0)
    lbu	$a2,28216($s0)
    beqz	$a2,.L0d9f7714
    dsll32	$a3,$s1,0xd
    bgez	$a3,.L0d9f7428
    # Line 1869
    move	$a4,$zero
    # Line 1862
    lw	$a0,1984($s0)
    li	$a4,9216
    beq	$a0,$a4,.L0d9f7794
    li	$a5,9218
    xor	$a5,$a0,$a5
    # Line 1868
    li	$a6,28
    # Line 1862
    li	$a4,4
    movz	$a4,$a6,$a5
.L0d9f7428:
    # Line 1869
    dsll32	$a6,$s1,0xc
    bgez	$a6,.L0d9f7458
    # Line 1880
    dsll32	$t1,$s1,0xb
    # Line 1873
    lw	$a0,2108($s0)
    li	$a7,9216
    beq	$a0,$a7,.L0d9f779c
    # Line 1872
    ori	$a4,$a4,0x4
    # Line 1873
    li	$t0,9218
    xor	$t0,$a0,$t0
    # Line 1878
    ori	$t1,$a4,0x18
    movz	$a4,$t1,$t0
.L0d9f7454:
    # Line 1880
    dsll32	$t1,$s1,0xb
.L0d9f7458:
    bgez	$t1,.L0d9f7484
    # Line 1891
    dsll32	$t8,$s1,0xa
    # Line 1884
    lw	$a0,2232($s0)
    li	$t2,9216
    beq	$a0,$t2,.L0d9f77a4
    # Line 1883
    ori	$a4,$a4,0x4
    # Line 1884
    li	$t3,9218
    xor	$t3,$a0,$t3
    # Line 1889
    ori	$t8,$a4,0x18
    movz	$a4,$t8,$t3
.L0d9f7480:
    # Line 1891
    dsll32	$t8,$s1,0xa
.L0d9f7484:
    bgez	$t8,.L0d9f74b0
    # Line 1902
    andi	$t0,$s1,0x40
    # Line 1895
    lw	$a0,2356($s0)
    li	$t9,9216
    beq	$a0,$t9,.L0d9f77ac
    # Line 1894
    ori	$a4,$a4,0x4
    # Line 1895
    li	$ra,9218
    xor	$ra,$a0,$ra
    # Line 1900
    ori	$at,$a4,0x18
    movz	$a4,$at,$ra
.L0d9f74ac:
    # Line 1902
    andi	$t0,$s1,0x40
.L0d9f74b0:
    beqz	$t0,.L0d9f771c
    # Line 1922
    move	$a6,$zero
    # Line 1902
    lbu	$at,1412($s0)
    beqz	$at,.L0d9f7734
    li	$a6,24
.L0d9f74c4:
    # Line 1922
    andi	$v1,$s1,0x20
.L0d9f74c8:
    beqz	$v1,.L0d9f74dc
    # Line 1926
    ori	$a1,$a4,0x10
    andi	$a0,$v0,0x2000
    # Line 1930
    ori	$a4,$a1,0x40
    movz	$a4,$a1,$a0
.L0d9f74dc:
    lw	$a1,1804($s0)
    # Line 1934
    ori	$a0,$a4,0x10
    movz	$a0,$a4,$a1
    # Line 1938
    sw	$a0,28076($s0)
    # Line 1939
    or	$a0,$a6,$a0
    # Line 1940
    sw	$a0,28084($s0)
    move	$a5,$a0
    # Line 1939
    sw	$a0,28080($s0)
    # Line 1941
    beqz	$t0,.L0d9f76f8
    # Line 1939
    move	$a3,$a0
.L0d9f7504:
    # Line 1944
    lbu	$a2,1413($s0)
    ori	$a3,$a0,0x1
    sw	$a3,28080($s0)
    beqz	$a2,.L0d9f772c
    # Line 1948
    move	$a5,$a3
    # Line 1946
    ori	$a5,$a0,0x2
    sw	$a5,28084($s0)
.L0d9f7520:
    # Line 1945
    lw	$a4,1392($s0)
.L0d9f7524:
    li	$a6,7425
    beq	$a4,$a6,.L0d9f7724
    # Line 1953
    or	$a0,$a3,$a5
    # Line 1958
    sw	$zero,28088($s0)
.L0d9f7534:
    # Line 1961
    lw	$a1,30656($s0)
    lw	$t9,160($a1)
    jal	__glGenericModeFlags
    move	$a0,$s0
    lbu	$a7,3222($s0)
    beqz	$a7,.L0d9f7560
    nop
    # Line 1963
    lw	$a1,30660($s0)
    lw	$t9,160($a1)
    jalr	$t9
    move	$a0,$s0
.L0d9f7560:
    lbu	$t0,3226($s0)
    beqz	$t0,.L0d9f757c
    nop
    # Line 1976
    lw	$t9,31196($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$s0,31108
.L0d9f757c:
    # Line 1979
    lw	$t9,11836($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1987
    lw	$t9,11840($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1989
    lw	$t9,11804($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1991
    # lw $t9, -25768($gp) # &__glValidateLighting
    jal	__glValidateLighting
    move	$a0,$s0
    # Line 1997
    lw	$t9,11792($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 1999
    lw	$t9,11788($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2000
    lw	$t9,11800($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2002
    lw	$t9,11832($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2003
    lw	$t9,11828($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2008
    lw	$t9,11820($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$t1,11752($s0)
    andi	$t1,$t1,0x1
    beqz	$t1,.L0d9f760c
    # Line 2011
    nop	# was lw $t9, -27188($gp) # &__glValidateAlphaTest
    jal	__glValidateAlphaTest
    move	$a0,$s0
.L0d9f760c:
    # Line 2014
    lw	$t9,11916($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11756($s0)
.L0d9f761c:
    andi	$t2,$a0,0x40
    beqz	$t2,.L0d9f763c
    # Line 2025
    andi	$t3,$a0,0x25
    lw	$t9,12656($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11756($s0)
    andi	$t3,$a0,0x25
.L0d9f763c:
    beqz	$t3,.L0d9f7670
    # Line 2039
    andi	$t8,$a0,0x29
    # Line 2036
    lw	$t9,11848($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2038
    lw	$t9,11844($s0)
    jalr	$t9
    move	$a0,$s0
    # Line 2039
    lw	$t9,11816($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11756($s0)
    andi	$t8,$a0,0x29
.L0d9f7670:
    beqz	$t8,.L0d9f768c
    # Line 2044
    andi	$t9,$a0,0x23
    lw	$t9,11808($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11756($s0)
    andi	$t9,$a0,0x23
.L0d9f768c:
    beqz	$t9,.L0d9f76a8
    # Line 2049
    andi	$ra,$a0,0x31
    lw	$t9,11812($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11756($s0)
    andi	$ra,$a0,0x31
.L0d9f76a8:
    beqz	$ra,.L0d9f76c4
    # Line 2054
    andi	$at,$a0,0x80
    lw	$t9,11824($s0)
    jalr	$t9
    move	$a0,$s0
    lw	$a0,11756($s0)
    andi	$at,$a0,0x80
.L0d9f76c4:
    beqz	$at,.L0d9f76d8
    nop
    # Line 2061
    lw	$t9,11864($s0)
    jalr	$t9
    move	$a0,$s0
.L0d9f76d8:
    # Line 2066
    ld	$gp,0($sp)
    # Line 2065
    sw	$zero,11756($s0)
    ld	$ra,24($sp)
    # Line 2064
    sw	$zero,11752($s0)
    # Line 2066
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9f76f8:
    # Line 1941
    lui	$v1,0x2
    ori	$v1,$v1,0x2000
    and	$v1,$v0,$v1
    bnez	$v1,.L0d9f7504
    nop
    b	.L0d9f7524
    # Line 1945
    lw	$a4,1392($s0)
.L0d9f7714:
    b	.L0d9f74ac
    # Line 1902
    move	$a4,$zero
.L0d9f771c:
    b	.L0d9f74c8
    # Line 1922
    andi	$v1,$s1,0x20
.L0d9f7724:
    # Line 1953
    b	.L0d9f7534
    sw	$a0,28088($s0)
.L0d9f772c:
    b	.L0d9f7520
    # Line 1948
    sw	$a3,28084($s0)
.L0d9f7734:
    # Line 1912
    lw	$a6,3588($s0)
    mtc1	$zero,$f4
    li	$a7,1
    move	$a0,$zero
    beqz	$a6,.L0d9f77b4
    lw	$a3,1584($s0)
    b	.L0d9f7768
    lw	$a5,1800($s0)
    nop
    nop
    nop
.L0d9f7760:
    # Line 1914
    beqz	$a1,.L0d9f77b4
    addiu	$a3,$a3,116
.L0d9f7768:
    # Line 1915
    sllv	$a2,$a7,$a0
    and	$a2,$a5,$a2
    # Line 1914
    addiu	$a0,$a0,1
    # Line 1915
    beqz	$a2,.L0d9f7760
    # Line 1914
    sltu	$a1,$a0,$a6
    # Line 1915
    lwc1	$f0,76($a3)
    c.eq.s	$f0,$f4
    bc1t	.L0d9f7760
    nop
    # Line 1920
    b	.L0d9f74c4
    li	$a6,24
.L0d9f7794:
    b	.L0d9f7428
    # Line 1864
    li	$a4,20
.L0d9f779c:
    b	.L0d9f7454
    # Line 1875
    ori	$a4,$a4,0x10
.L0d9f77a4:
    b	.L0d9f7480
    # Line 1886
    ori	$a4,$a4,0x10
.L0d9f77ac:
    b	.L0d9f74ac
    # Line 1897
    ori	$a4,$a4,0x10
.L0d9f77b4:
    b	.L0d9f74c4
    # Line 1914
    li	$a6,8
.end __glGenericPickAllProcs

.late_rodata
jtbl_0da45048:
    .word .L0d9f6884
    .word .L0d9f6870
    .word .L0d9f687c
    .word .L0d9f687c
    .word .L0d9f6890
    .word .L0d9f687c
    .word .L0d9f687c
    .word .L0d9f687c
    .word .L0d9f687c

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit_40000000:
    .word 0x40000000

