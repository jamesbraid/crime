# Source: ../pixel/px_paths.c
# Category: pixel
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../pixel/px_paths.c
# Total Functions: 43

.text

# Function: PickSpanModifiers
# Declared: Line 117 (Source lines: 119-2151)
# Address: 0x0d9a87b0 - 0x0d9ac190 (Size: 14816 bytes, Frame: 128)
.ent PickSpanModifiers
PickSpanModifiers:
    # Line 119
    addiu	$sp,$sp,-256
    sd	$s8,232($sp)
    sd	$s7,240($sp)
    sd	$s1,192($sp)
    # Line 181
    lw	$a5,432($a1)
    li	$a6,1
    # Line 119
    sd	$s0,200($sp)
    move	$s0,$a0
    move	$s1,$a1
    sd	$s2,208($sp)
    move	$s2,$a2
    # Line 181
    beqz	$a5,.L0d9a947c
    sd	$s3,184($sp)
    beq	$a5,$a6,.L0d9a9430
    li	$t0,2
    beq	$a5,$t0,.L0d9a963c
    li	$at,3
    beq	$a5,$at,.L0d9a96d0
    # Line 222
    la	$v0,__glDummyFilter
    # Line 226
    la	$v0,__glDummyFilter
    # Line 228
    move	$t3,$zero
    # Line 226
    sw	$v0,436($a1)
.L0d9a8808:
    # Line 233
    lw	$v0,1792($s0)
    dsll32	$v1,$v0,0x3
    bgez	$v1,.L0d9a9164
    nop
    lw	$a0,1248($s0)
    beqz	$a0,.L0d9a9164
    li	$a7,1
.L0d9a8824:
    # Line 237
    dsll32	$a1,$v0,0x2
    bgez	$a1,.L0d9a916c
    nop
    lbu	$a2,1364($s0)
    beqz	$a2,.L0d9a916c
    nop
    # Line 241
    lw	$a3,0($s2)
    # Line 237
    li	$a4,1
    # Line 241
    beq	$a3,$t0,.L0d9a961c
    sd	$a4,168($sp)
.L0d9a884c:
    move	$s8,$zero
.L0d9a8850:
    # Line 249
    lw	$a0,1796($s0)
    andi	$a5,$a0,0x1
    # Line 248
    move	$v0,$zero
    # Line 249
    beqz	$a5,.L0d9a8880
    # Line 248
    sw	$zero,30648($s0)
    # Line 249
    lw	$t1,5384($s0)
    beqz	$t1,.L0d9a8884
    move	$a1,$zero
    # Line 252
    li	$v0,1
    sw	$a6,30648($s0)
    b	.L0d9a8884
    # Line 249
    li	$a1,1
.L0d9a8880:
    move	$a1,$zero
.L0d9a8884:
    # Line 254
    andi	$t2,$a0,0x2
    beqz	$t2,.L0d9a88a8
    move	$t8,$zero
    lw	$t8,5544($s0)
    beqz	$t8,.L0d9a88a8
    move	$t8,$zero
    # Line 258
    ori	$v0,$v0,0x2
    sw	$v0,30648($s0)
    # Line 254
    li	$t8,1
.L0d9a88a8:
    # Line 261
    andi	$t9,$a0,0x4
    beqz	$t9,.L0d9a88d0
    move	$t9,$zero
    lw	$at,5704($s0)
    beqz	$at,.L0d9a88cc
    # Line 265
    ori	$v1,$v0,0x4
    sw	$v1,30648($s0)
    b	.L0d9a88d0
    # Line 261
    li	$t9,1
.L0d9a88cc:
    move	$t9,$zero
.L0d9a88d0:
    # Line 268
    lbu	$a0,30645($s0)
    beqz	$a0,.L0d9a932c
    nop
.L0d9a88dc:
    sd	$s4,224($sp)
    li	$v0,1
    sd	$ra,216($sp)
.L0d9a88e8:
    # Line 271
    andi	$ra,$a1,0xff
    beqz	$ra,.L0d9a934c
    # Line 268
    andi	$s4,$v0,0xff
.L0d9a88f4:
    # Line 271
    li	$a1,1
.L0d9a88f8:
    sd	$a1,152($sp)
.L0d9a88fc:
    # Line 282
    lw	$a0,0($s1)
    # Line 281
    lw	$v0,4($s1)
    # Line 280
    lw	$a1,80($s1)
    # Line 286
    lw	$a5,0($s2)
    # Line 279
    lw	$a2,84($s1)
    # Line 275
    lbu	$a3,760($s0)
    # Line 286
    beq	$a5,$a6,.L0d9a8fd4
    sd	$a3,160($sp)
    lw	$t1,4($s2)
    beq	$t1,$a6,.L0d9a8fd4
    li	$a4,4
    beq	$t1,$a4,.L0d9a8fd4
    # Line 292
    lwc1	$f4,_lit_3f800000
.L0d9a8930:
    # Line 294
    lwc1	$f5,_lit_bf800000
    c.le.s	$f5,$f4
    bc1f	.L0d9a8958
    nop
    lwc1	$f0,3544($s0)
    c.le.s $f4,$f0
    bc1f .L0d9a8958
    # Line 295
    li	$t1,1
    b	.L0d9a895c
    sd	$t1,104($sp)
.L0d9a8958:
    sd	$zero,104($sp)
.L0d9a895c:
    # Line 299
    c.le.s $f4,$f5
    bc1t .L0d9a8980
    nop
    lwc1	$f1,3544($s0)
    c.le.s $f1,$f4
    bc1t .L0d9a8980
    nop
    # Line 300
    b	.L0d9a8fdc
    move	$t2,$zero
.L0d9a8980:
    # Line 304
    lbu	$t2,72($s1)
    beqz	$t2,.L0d9a8fdc
    li	$t2,1
    # Line 305
    li	$t1,6656
    # Line 304
    li	$at,1
    sd	$at,64($sp)
    li	$t2,1
.L0d9a899c:
    sd	$zero,128($sp)
.L0d9a89a0:
    # Line 311
    lw	$v1,40($s1)
    beqz	$v1,.L0d9a89c4
    nop
    lw	$a3,36($s1)
    slti	$a3,$a3,2
    bnez	$a3,.L0d9a89c4
    # Line 312
    li	$a4,1
    b	.L0d9a89c8
    sd	$a4,120($sp)
.L0d9a89c4:
    sd	$zero,120($sp)
.L0d9a89c8:
    # Line 316
    lw	$at,120($s1)
    beqz	$at,.L0d9a89ec
    nop
    lw	$v1,116($s1)
    slti	$v1,$v1,2
    bnez	$v1,.L0d9a89ec
    # Line 317
    li	$a3,1
    b	.L0d9a89f0
    sd	$a3,96($sp)
.L0d9a89ec:
    sd	$zero,96($sp)
.L0d9a89f0:
    # Line 322
    sltiu	$a4,$a0,6406
    bnez	$a4,.L0d9a8a44
    sltiu	$a3,$a0,6402
    sltiu	$at,$a0,6407
    bnez	$at,.L0d9a8a80
    sltiu	$v1,$a0,6410
    bnez	$v1,.L0d9a95d4
    sltiu	$at,$a0,6408
    sltiu	$a3,$a0,6411
    bnez	$a3,.L0d9a8a80
    li	$s3,0x80e0
    sltu	$a4,$a0,$s3
    bnez	$a4,.L0d9aa05c
    li	$a3,0x8000
    sltu	$at,$s3,$a0
    beqz	$at,.L0d9a8a80
    li	$v1,0x80e1
    bne	$a0,$v1,.L0d9a8a9c
    nop
    b	.L0d9a8a84
    # Line 335
    lbu	$a3,12($s2)
.L0d9a8a44:
    # Line 322
    bnez	$a3,.L0d9a91a8
    sltiu	$a3,$a0,6400
    sltiu	$a4,$a0,6403
    beqz	$a4,.L0d9a95f8
    sltiu	$a4,$a0,6404
    # Line 338
    lbu	$at,12($s2)
    beqz	$at,.L0d9a9f40
    nop
    lbu	$v1,30526($s0)
    beqz	$v1,.L0d9a9f40
    li	$s3,1
.L0d9a8a70:
    # Line 339
    b	.L0d9a8a9c
    # Line 338
    sb	$s3,0($sp)
.L0d9a8a78:
    # Line 322
    bne	$a6,$a0,.L0d9a8a9c
    nop
.L0d9a8a80:
    # Line 335
    lbu	$a3,12($s2)
.L0d9a8a84:
    beqz	$a3,.L0d9a95cc
    nop
    lbu	$a4,30524($s0)
    beqz	$a4,.L0d9a95cc
    li	$s3,1
.L0d9a8a98:
    sb	$s3,0($sp)
.L0d9a8a9c:
    # Line 346
    lw	$s3,8($s2)
    li	$s7,7
    beq	$s3,$s7,.L0d9a9248
    # Line 364
    li	$v1,1
    sd	$v1,112($sp)
    li	$at,1
    sd	$at,88($sp)
.L0d9a8ab8:
    # Line 367
    beq	$t1,$v0,.L0d9a8bf8
    nop
.L0d9a8ac0:
    lw	$a4,36($s1)
    lw	$a3,8($s1)
    addiu	$a4,$a4,-1
    and	$a3,$a3,$a4
    beqz	$a3,.L0d9a8bf8
    nop
    # Line 374
    beq	$t1,$a2,.L0d9a8c00
    # Line 370
    li	$s7,1
.L0d9a8ae0:
    # Line 374
    lw	$v1,116($s1)
    lw	$at,88($s1)
    addiu	$v1,$v1,-1
    and	$at,$at,$v1
    beqz	$at,.L0d9a8c00
    # Line 377
    li	$a3,1
    sd	$a3,72($sp)
    sd	$s7,32($sp)
.L0d9a8b00:
    # Line 382
    li	$s7,5126
    beq	$s7,$v0,.L0d9a8b18
    nop
    lbu	$a4,429($s1)
    beqz	$a4,.L0d9a9490
    li	$at,7
.L0d9a8b18:
    sd	$zero,136($sp)
.L0d9a8b1c:
    # Line 389
    beq	$s7,$a2,.L0d9a8b30
    nop
    lbu	$at,429($s1)
    beqz	$at,.L0d9a94a8
    li	$a3,7
.L0d9a8b30:
    sd	$zero,80($sp)
.L0d9a8b34:
    # Line 401
    lbu	$v1,425($s1)
    beqz	$v1,.L0d9a8b8c
    nop
    beq	$a5,$a6,.L0d9a8b8c
    nop
    beq	$t1,$v0,.L0d9a8b8c
    li	$a3,5121
    beq	$v0,$a3,.L0d9a8b8c
    li	$a4,5123
    beq	$v0,$a4,.L0d9a8b8c
    li	$a5,5125
    beq	$v0,$a5,.L0d9a8b8c
    li	$at,6400
    beq	$a0,$at,.L0d9a8b8c
    li	$v1,6401
    beq	$a0,$v1,.L0d9a8b8c
    li	$a3,6402
    beq	$a0,$a3,.L0d9a9ea8
    nop
    lbu	$a4,30524($s0)
    beqz	$a4,.L0d9aa048
    ld	$v1,152($sp)
.L0d9a8b8c:
    sd	$zero,176($sp)
.L0d9a8b90:
    # Line 414
    sltiu	$a5,$a1,6406
    bnez	$a5,.L0d9a8c0c
    sltiu	$a3,$a1,6402
    sltiu	$at,$a1,6407
    bnez	$at,.L0d9a8c4c
    sltiu	$v1,$a1,6410
    bnez	$v1,.L0d9a9458
    sltiu	$a3,$a1,6408
    sltiu	$a3,$a1,6411
    bnez	$a3,.L0d9a8c4c
    li	$a5,0x80e0
    sltu	$a4,$a1,$a5
    bnez	$a4,.L0d9a9f30
    li	$a3,0x8000
    sltu	$at,$a5,$a1
    beqz	$at,.L0d9a8c4c
    li	$v1,0x80e1
    bne	$a1,$v1,.L0d9a8c54
    # Line 438
    li	$a3,-1
    b	.L0d9a8c50
    # Line 428
    sb	$zero,1($sp)
.L0d9a8be4:
    # Line 348
    bne	$a6,$a1,.L0d9aa1d8
    nop
.L0d9a8bec:
    # Line 357
    sd	$zero,88($sp)
.L0d9a8bf0:
    # Line 367
    bne	$t1,$v0,.L0d9a8ac0
    # Line 357
    sd	$zero,112($sp)
.L0d9a8bf8:
    # Line 374
    bne	$t1,$a2,.L0d9a8ae0
    # Line 372
    move	$s7,$zero
.L0d9a8c00:
    # Line 379
    sd	$zero,72($sp)
    b	.L0d9a8b00
    sd	$s7,32($sp)
.L0d9a8c0c:
    # Line 414
    bnez	$a3,.L0d9a91d8
    sltiu	$a3,$a1,6400
    sltiu	$a4,$a1,6403
    bnez	$a4,.L0d9a8c4c
    sltiu	$a5,$a1,6404
    bnez	$a5,.L0d9a98dc
    li	$a4,6403
    sltiu	$at,$a1,6405
    bnez	$at,.L0d9a8c4c
    li	$v1,6405
    bne	$a1,$v1,.L0d9a8c54
    # Line 438
    li	$a3,-1
    b	.L0d9a8c50
    # Line 428
    sb	$zero,1($sp)
.L0d9a8c44:
    # Line 414
    bne	$a6,$a1,.L0d9a8c54
    # Line 438
    li	$a3,-1
.L0d9a8c4c:
    # Line 428
    sb	$zero,1($sp)
.L0d9a8c50:
    # Line 438
    li	$a3,-1
.L0d9a8c54:
    sw	$a3,264($s1)
    # Line 440
    lw	$a5,0($s2)
    beq	$a5,$t0,.L0d9a9264
    # Line 453
    ld	$v1,120($sp)
    # Line 440
    beq	$a5,$a6,.L0d9a94c0
    li	$a4,3
    beq	$a5,$a4,.L0d9a9670
    # Line 993
    move	$s3,$zero
    # Line 440
    li	$at,4
    beq	$a5,$at,.L0d9a96dc
    # Line 996
    li	$v1,6408
    # Line 440
    move	$s3,$zero
    lw	$s7,4($sp)
    sltiu	$t2,$a0,6407
.L0d9a8c8c:
    # Line 1066
    lbu	$v1,12($s2)
    beqz	$v1,.L0d9a8f38
    nop
    lbu	$a3,3220($s0)
    beqz	$a3,.L0d9a8f38
    li	$a4,6401
    beq	$a1,$a4,.L0d9a8f38
    li	$a5,6402
    beq	$a1,$a5,.L0d9a8f38
    nop
    beqz	$ra,.L0d9a8cd0
    nop
    # Line 1070
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanApplyRGBAColorTable
    addu	$v1,$s1,$v1
    sw	$at,356($v1)
.L0d9a8cd0:
    # Line 1075
    lw	$a5,436($s1)
    sd	$a5,56($sp)
    lw	$a5,8($a5)
    li	$a3,6407
    beq	$a3,$a5,.L0d9a97ac
    # Line 1077
    ld	$at,56($sp)
    # Line 1075
    li	$at,6408
    beq	$a5,$at,.L0d9a9a90
    # Line 1089
    ld	$at,56($sp)
    # Line 1075
    li	$v1,6409
    beq	$a5,$v1,.L0d9a9b58
    # Line 1101
    ld	$a3,56($sp)
    # Line 1075
    li	$a3,6410
    beq	$a5,$a3,.L0d9a9c20
    # Line 1112
    ld	$a3,56($sp)
    # Line 1075
    li	$at,0x8049
    move	$a4,$a5
    beq	$a4,$at,.L0d9a9df8
    la	$a5,__glSpanApplyRGBAColorTable
.L0d9a8d1c:
    # Line 1146
    beqz	$t3,.L0d9a8de4
    # Line 1155
    andi	$a4,$t8,0xff
    # Line 1146
    lwc1	$f2,680($s0)
    ldc1	$f4,_lit8_3ff0000000000000
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f4
    bc1f .L0d9a8dcc
    nop
    lwc1	$f3,684($s0)
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f4
    bc1f .L0d9a8dcc
    nop
    lwc1	$f5,688($s0)
    cvt.d.s	$f5,$f5
    c.eq.d $f5,$f4
    bc1f .L0d9a8dcc
    nop
    lwc1	$f6,692($s0)
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f4
    bc1f .L0d9a8dcc
    nop
    lwc1	$f7,696($s0)
    dmtc1	$zero,$f4
    cvt.d.s	$f7,$f7
    c.eq.d	$f7,$f4
    bc1f	.L0d9a8dcc
    nop
    lwc1	$f8,700($s0)
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f4
    bc1f .L0d9a8dcc
    nop
    lwc1	$f9,704($s0)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f4
    bc1f .L0d9a8dcc
    nop
    lwc1	$f10,708($s0)
    cvt.d.s	$f10,$f10
    c.eq.d $f10,$f4
    bc1t .L0d9a8de4
    # Line 1155
    andi	$a4,$t8,0xff
.L0d9a8dcc:
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanPostConvScaleBiasRGBA
    addu	$a3,$s1,$a3
    sw	$v1,356($a3)
    andi	$a4,$t8,0xff
.L0d9a8de4:
    beqz	$a4,.L0d9a8dfc
    nop
    # Line 1160
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$s1,$at
    sw	$a5,356($at)
.L0d9a8dfc:
    lw	$v1,30636($s0)
    li	$a3,0x8421
    beq	$v1,$a3,.L0d9a8e60
    nop
    lbu	$a4,30644($s0)
    beqz	$a4,.L0d9a9ad4
    nop
    # Line 1193
    lb	$at,30640($s0)
    bltz	$at,.L0d9a9230
    nop
    lb	$v1,30641($s0)
    bltz	$v1,.L0d9a9230
    nop
    lb	$a3,30642($s0)
    bltz	$a3,.L0d9a9230
    nop
    lb	$a4,30643($s0)
    bltz	$a4,.L0d9a9230
    nop
    # Line 1197
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanColorMatrixSwizzleRGBA
    addu	$v1,$s1,$v1
    sw	$at,356($v1)
.L0d9a8e5c:
    # Line 1204
    li	$s4,1
.L0d9a8e60:
    lbu	$a3,30645($s0)
    beq	$a6,$a3,.L0d9a97f0
.L0d9a8e68:
    # Line 1217
    andi	$a4,$t9,0xff
    beqz	$a4,.L0d9a8e88
    # Line 1222
    andi	$v1,$a7,0xff
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    addu	$at,$s1,$at
    sw	$a5,356($at)
    andi	$v1,$a7,0xff
.L0d9a8e88:
    beqz	$v1,.L0d9a9720
    li	$a7,6407
    lbu	$a3,1280($s0)
    beqz	$a3,.L0d9a9728
    li	$a7,6407
    # Line 1231
    sw	$s3,264($s1)
    # Line 1233
    lw	$a5,1276($s0)
    li	$a4,6406
    beq	$a4,$a5,.L0d9a9c08
    li	$at,6409
    beq	$a5,$at,.L0d9a9de0
    li	$v1,6410
    beq	$a5,$v1,.L0d9a9f08
    nop
    beq	$a7,$a5,.L0d9aa030
    li	$a3,6408
    beq	$a5,$a3,.L0d9aa0f8
.L0d9a8ecc:
    # Line 1256
    li	$a4,1
    sd	$a4,144($sp)
.L0d9a8ed4:
    # Line 1277
    ld	$a5,168($sp)
    andi	$a5,$a5,0xff
    beqz	$a5,.L0d9a8f48
    # Line 1356
    li	$a5,5120
    # Line 1288
    lbu	$at,1280($s0)
    beqz	$at,.L0d9a980c
    nop
.L0d9a8ef0:
    # Line 1314
    lw	$a5,1372($s0)
    li	$v1,6406
    beq	$a5,$v1,.L0d9a9bd4
    li	$a3,6409
    beq	$a5,$a3,.L0d9a9c64
    li	$a4,6410
    beq	$a5,$a4,.L0d9a9e40
    nop
    beq	$a7,$a5,.L0d9a9f70
    li	$a7,6408
    bne	$a5,$a7,.L0d9a8f48
    # Line 1356
    li	$a5,5120
    # Line 1328
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanMinmaxRGBA
    addu	$v1,$s1,$v1
    # Line 1329
    b	.L0d9a8f44
    # Line 1328
    sw	$at,356($v1)
.L0d9a8f38:
    sd	$zero,144($sp)
    # Line 1345
    la	$a3,__glDummyFilter
    sw	$a3,436($s1)
.L0d9a8f44:
    # Line 1356
    li	$a5,5120
.L0d9a8f48:
    beq	$a5,$v0,.L0d9a8f90
    # Line 1364
    ld	$a7,176($sp)
    # Line 1356
    li	$a4,5122
    beq	$v0,$a4,.L0d9a8f90
    # Line 1364
    ld	$a7,176($sp)
    # Line 1356
    li	$a5,5124
    beq	$v0,$a5,.L0d9a8f90
    # Line 1364
    ld	$a7,176($sp)
    # Line 1356
    li	$a7,5126
    beq	$a7,$v0,.L0d9a8f90
    # Line 1364
    ld	$a7,176($sp)
    beqz	$t2,.L0d9a92e0
    sltiu	$at,$a0,6403
    bnez	$at,.L0d9a9214
    sltiu	$a3,$a0,6401
    b	.L0d9a8fa4
    move	$a7,$zero
    ld	$a7,176($sp)
.L0d9a8f90:
    beqz	$t2,.L0d9a92e4
    # Line 1361
    sltiu	$a7,$a7,1
    # Line 1364
    sltiu	$at,$a0,6403
    bnez	$at,.L0d9a91f8
    sltiu	$at,$a0,6401
.L0d9a8fa4:
    sltiu	$v1,$a0,6404
    bnez	$v1,.L0d9a9018
    sltiu	$a3,$a0,6405
    bnez	$a3,.L0d9a96b0
    li	$at,6404
    sltiu	$a4,$a0,6406
    bnez	$a4,.L0d9a9018
    li	$a5,6406
    bne	$a0,$a5,.L0d9a90e4
    nop
    b	.L0d9a901c
    # Line 1387
    lbu	$a5,30524($s0)
.L0d9a8fd4:
    # Line 290
    b	.L0d9a8930
    lwc1	$f4,744($s0)
.L0d9a8fdc:
    # Line 305
    beqz	$t2,.L0d9a9b44
    # Line 304
    sd	$zero,64($sp)
    b	.L0d9a899c
    # Line 305
    li	$t1,6656
.L0d9a8fec:
    # Line 1364
    sltiu	$at,$a0,6400
.L0d9a8ff0:
    bnez	$at,.L0d9a96c0
    sltiu	$v1,$a0,6401
    beqz	$v1,.L0d9a90e4
    nop
    # Line 1369
    lbu	$a3,3220($s0)
    beqz	$a3,.L0d9aa674
    ld	$a4,152($sp)
    andi	$a4,$a4,0xff
    beqz	$a4,.L0d9aa674
    nop
.L0d9a9018:
    # Line 1387
    lbu	$a5,30524($s0)
.L0d9a901c:
    beqz	$a5,.L0d9a9854
    sd	$a5,48($sp)
.L0d9a9024:
    beqz	$ra,.L0d9a9874
    nop
    # Line 1393
    lw	$a5,5444($s0)
    li	$ra,6408
    beq	$a5,$ra,.L0d9a93e8
    # Line 1397
    li	$ra,1
    # Line 1393
    li	$at,6410
    beq	$a5,$at,.L0d9a93e8
    # Line 1397
    li	$ra,1
    # Line 1393
    li	$v1,0x8049
    beq	$a5,$v1,.L0d9a93e8
    # Line 1397
    li	$ra,1
    sd	$zero,40($sp)
.L0d9a9058:
    # Line 1399
    andi	$a3,$t8,0xff
    beqz	$a3,.L0d9a987c
    nop
    # Line 1401
    lw	$a5,5604($s0)
    li	$a4,6408
    beq	$a5,$a4,.L0d9a93f0
    li	$t8,6410
    beq	$a5,$t8,.L0d9a93f0
    li	$ra,0x8049
    beq	$a5,$ra,.L0d9a93f0
    move	$ra,$zero
.L0d9a9084:
    # Line 1407
    andi	$at,$t9,0xff
    beqz	$at,.L0d9a9884
    nop
    # Line 1409
    lw	$a5,5764($s0)
    li	$v1,6408
    beq	$a5,$v1,.L0d9a93f8
    li	$a3,6410
    beq	$a5,$a3,.L0d9a93f8
    li	$a4,0x8049
    beq	$a5,$a4,.L0d9a93f8
    nop
    # Line 1416
    beqz	$a7,.L0d9a9f48
    # Line 1417
    ld	$a5,160($sp)
.L0d9a90b8:
    beqz	$a5,.L0d9a9f5c
    move	$t8,$zero
.L0d9a90c0:
    move	$a5,$zero
.L0d9a90c4:
    andi	$a7,$a5,0xff
.L0d9a90c8:
    # Line 1422
    beqz	$t3,.L0d9a90d8
    nop
    beqz	$a7,.L0d9a9b34
    nop
.L0d9a90d8:
    # Line 1426
    beqz	$s4,.L0d9a90e4
    # Line 1427
    sltiu	$t3,$t8,1
    movz	$a7,$t3,$a7
.L0d9a90e4:
    # Line 1438
    lw	$a5,4($s2)
.L0d9a90e8:
    beq	$a5,$a6,.L0d9a9394
    nop
    beq	$a5,$t0,.L0d9a9518
    # Line 1816
    ld	$t2,88($sp)
    # Line 1438
    li	$t8,3
    beq	$a5,$t8,.L0d9a967c
    # Line 2080
    sltiu	$v0,$a1,6408
    # Line 1438
    li	$t9,4
    beq	$a5,$t9,.L0d9a9708
    nop
    lw	$a0,8($sp)
.L0d9a9114:
    # Line 2139
    andi	$ra,$s8,0xff
    sw	$s7,16($s2)
    beqz	$ra,.L0d9a989c
    # Line 2137
    la	$a1,__glNop
    # Line 2142
    lbu	$at,440($s1)
    ld	$s8,232($sp)
    ld	$s7,240($sp)
    beqz	$at,.L0d9a9408
    sw	$a0,444($s1)
    ld	$s4,224($sp)
    # Line 2151
    ld	$s0,200($sp)
    ld	$s1,192($sp)
    # Line 2144
    la	$v0,__glLateScissorRender
    ld	$ra,216($sp)
    sw	$v0,20($s2)
    # Line 2151
    ld	$s2,208($sp)
    move	$v0,$s3
    ld	$s3,184($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d9a9164:
    b	.L0d9a8824
    # Line 233
    move	$a7,$zero
.L0d9a916c:
    # Line 241
    lw	$v1,0($s2)
    bne	$v1,$t0,.L0d9a884c
    # Line 237
    sd	$zero,168($sp)
    # Line 241
    lw	$a0,4($s2)
    bne	$a0,$a6,.L0d9a8850
    move	$s8,$zero
    andi	$a1,$v0,0x4000
    beqz	$a1,.L0d9a884c
    andi	$a2,$a7,0xff
    bnez	$a2,.L0d9a9634
    nop
    bnez	$t3,.L0d9a9634
    nop
    b	.L0d9a8850
    move	$s8,$zero
.L0d9a91a8:
    # Line 322
    bnez	$a3,.L0d9a8a78
    sltiu	$a4,$a0,6401
    beqz	$a4,.L0d9a9b0c
    li	$a3,6401
    # Line 344
    lbu	$at,12($s2)
    beqz	$at,.L0d9aa494
    nop
    lbu	$v1,30525($s0)
    beqz	$v1,.L0d9aa494
    li	$s3,1
.L0d9a91d0:
    # Line 345
    b	.L0d9a8a9c
    # Line 344
    sb	$s3,0($sp)
.L0d9a91d8:
    # Line 414
    bnez	$a3,.L0d9a8c44
    sltiu	$a4,$a1,6401
    bnez	$a4,.L0d9a91f0
    li	$a5,6401
    bne	$a1,$a5,.L0d9a8c54
    # Line 438
    li	$a3,-1
.L0d9a91f0:
    # Line 433
    b	.L0d9a8c50
    # Line 432
    sb	$a6,1($sp)
.L0d9a91f8:
    # Line 1364
    bnez	$at,.L0d9a8ff0
    sltiu	$at,$a0,6400
    sltiu	$v1,$a0,6402
    beqz	$v1,.L0d9a9bec
    li	$a3,6402
.L0d9a920c:
    # Line 1367
    b	.L0d9a90e4
    move	$a7,$zero
.L0d9a9214:
    # Line 1364
    bnez	$a3,.L0d9a8fec
    # Line 1435
    move	$a7,$zero
    # Line 1364
    sltiu	$a4,$a0,6402
    bnez	$a4,.L0d9a920c
    nop
    b	.L0d9a90e4
    # Line 1426
    move	$a7,$zero
.L0d9a9230:
    # Line 1200
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanColorMatrixSwizzWithDropRGBA
    addu	$v1,$s1,$v1
    b	.L0d9a8e5c
    sw	$at,356($v1)
.L0d9a9248:
    # Line 348
    lbu	$a3,0($sp)
    beqz	$a3,.L0d9aa1ac
    # Line 360
    li	$at,1
.L0d9a9254:
    sd	$at,112($sp)
    li	$a4,1
    b	.L0d9a8ab8
    sd	$a4,88($sp)
.L0d9a9264:
    # Line 453
    beqz	$v1,.L0d9aa204
    # Line 466
    ld	$v1,32($sp)
    # Line 453
    ld	$a3,128($sp)
    beqz	$a3,.L0d9aa2e4
    lw	$a5,36($s1)
    beq	$a5,$t0,.L0d9aa49c
    # Line 459
    la	$a4,__glSpanSwapAndSkipBytes4
    sw	$a4,360($s1)
.L0d9a9284:
    # Line 466
    li	$s3,1
.L0d9a9288:
    # Line 489
    ld	$a5,136($sp)
    beqz	$a5,.L0d9a9ca8
    # Line 498
    li	$at,6400
    beq	$a0,$at,.L0d9a9ec0
    # Line 500
    li	$a3,5120
    # Line 498
    li	$v1,6401
    beq	$a0,$v1,.L0d9a9ebc
    # Line 522
    li	$a5,0x8035
    sltu	$a3,$v0,$a5
    bnez	$a3,.L0d9a9c7c
    sltiu	$at,$v0,5124
    sltu	$a4,$a5,$v0
    bnez	$a4,.L0d9aa14c
    li	$a5,0x8365
    # Line 606
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanUnpack8888Uint
    addu	$v1,$s1,$v1
    sw	$at,356($v1)
    # Line 608
    li	$a5,4
    # Line 609
    b	.L0d9a9cc8
    # Line 608
    sw	$a5,28($s1)
.L0d9a92e0:
    # Line 1364
    move	$a7,$zero
.L0d9a92e4:
    sltiu	$a3,$a0,6408
    bnez	$a3,.L0d9a9018
    li	$a5,0x8000
    sltu	$a4,$a0,$a5
    bnez	$a4,.L0d9a9e58
    sltiu	$at,$a0,6409
    sltu	$at,$a5,$a0
    beqz	$at,.L0d9a9018
    li	$a5,0x80e0
    sltu	$v1,$a0,$a5
    bnez	$v1,.L0d9aaa20
    sltu	$a3,$a5,$a0
    beqz	$a3,.L0d9a9018
    li	$a4,0x80e1
    bne	$a0,$a4,.L0d9a90e4
    nop
    b	.L0d9a901c
    # Line 1387
    lbu	$a5,30524($s0)
.L0d9a932c:
    # Line 268
    lw	$a5,30636($s0)
    li	$t1,0x8421
    bne	$a5,$t1,.L0d9a88dc
    nop
    sd	$s4,224($sp)
    move	$v0,$zero
    b	.L0d9a88e8
    sd	$ra,216($sp)
.L0d9a934c:
    # Line 271
    bnez	$t3,.L0d9a88f8
    li	$a1,1
    andi	$t2,$t8,0xff
    bnez	$t2,.L0d9a88f8
    li	$a1,1
    bnez	$s4,.L0d9a88f8
    li	$a1,1
    andi	$at,$t9,0xff
    bnez	$at,.L0d9a88f8
    li	$a1,1
    andi	$v0,$a7,0xff
    bnez	$v0,.L0d9a88f4
    ld	$v1,168($sp)
    andi	$v1,$v1,0xff
    bnez	$v1,.L0d9a88f8
    li	$a1,1
    b	.L0d9a88fc
    sd	$zero,152($sp)
.L0d9a9394:
    # Line 1445
    beqz	$a7,.L0d9a9918
    # Line 1500
    sltiu	$t1,$a1,6407
    # Line 1446
    beqz	$t2,.L0d9aa3a0
    sltiu	$a2,$a0,6403
    bnez	$a2,.L0d9a9b9c
    sltiu	$a5,$a0,6400
    sltiu	$a3,$a0,6404
    bnez	$a3,.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
    # Line 1446
    sltiu	$a4,$a0,6405
    bnez	$a4,.L0d9aa77c
    li	$t2,6404
    sltiu	$a5,$a0,6406
    bnez	$a5,.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
    # Line 1446
    li	$a7,6406
    bne	$a0,$a7,.L0d9a9918
    # Line 1500
    sltiu	$t1,$a1,6407
    b	.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
    # Line 1397
    li	$ra,1
.L0d9a93e8:
    b	.L0d9a9058
    sd	$ra,40($sp)
.L0d9a93f0:
    b	.L0d9a9084
    # Line 1405
    li	$ra,1
.L0d9a93f8:
    # Line 1416
    beqz	$a7,.L0d9aa260
    ld	$t8,48($sp)
.L0d9a9400:
    b	.L0d9a90c0
    li	$t8,1
.L0d9a9408:
    ld	$s4,224($sp)
    # Line 2151
    ld	$s0,200($sp)
    ld	$s1,192($sp)
    ld	$ra,216($sp)
    # Line 2146
    sw	$a1,20($s2)
    # Line 2151
    ld	$s2,208($sp)
    move	$v0,$s3
    ld	$s3,184($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d9a9430:
    # Line 187
    lw	$at,1792($a0)
    dsll32	$at,$at,0x6
    bgez	$at,.L0d9a9f20
    nop
    lw	$v0,832($a0)
    beqz	$v0,.L0d9a9f20
    move	$t3,$a6
    # Line 189
    addiu	$v1,$a0,768
    # Line 190
    b	.L0d9a8808
    # Line 189
    sw	$v1,436($a1)
.L0d9a9458:
    # Line 414
    bnez	$a3,.L0d9a98cc
    li	$a3,6407
    sltiu	$a4,$a1,6409
    bnez	$a4,.L0d9a8c4c
    li	$a5,6409
    bne	$a1,$a5,.L0d9a8c54
    # Line 438
    li	$a3,-1
    b	.L0d9a8c50
    # Line 428
    sb	$zero,1($sp)
.L0d9a947c:
    # Line 184
    li	$t0,2
    # Line 183
    la	$a7,__glDummyFilter
    # Line 184
    move	$t3,$zero
    b	.L0d9a8808
    # Line 183
    sw	$a7,436($a1)
.L0d9a9490:
    # Line 382
    beq	$s3,$at,.L0d9a94a0
    # Line 387
    li	$v1,1
    # Line 382
    beq	$t1,$a2,.L0d9a8b18
    # Line 387
    li	$v1,1
.L0d9a94a0:
    b	.L0d9a8b1c
    sd	$v1,136($sp)
.L0d9a94a8:
    # Line 389
    beq	$s3,$a3,.L0d9a94b8
    # Line 394
    li	$a4,1
    # Line 389
    beq	$t1,$a2,.L0d9a8b30
    # Line 394
    li	$a4,1
.L0d9a94b8:
    b	.L0d9a8b34
    sd	$a4,80($sp)
.L0d9a94c0:
    # Line 864
    sltiu	$a5,$a1,6407
    bnez	$a5,.L0d9a9a0c
    sltiu	$at,$a1,6403
    sltiu	$t2,$a1,6408
    bnez	$t2,.L0d9a9a4c
    li	$a5,0x8000
    sltu	$at,$a1,$a5
    bnez	$at,.L0d9aa4e0
    sltiu	$a3,$a1,6409
    sltu	$v1,$a5,$a1
    beqz	$v1,.L0d9a9a4c
    li	$a5,0x80e0
    sltu	$a3,$a1,$a5
    bnez	$a3,.L0d9ab0b8
    li	$t2,0x8049
    sltu	$a4,$a5,$a1
    beqz	$a4,.L0d9a9a4c
    li	$a5,0x80e1
    bne	$a1,$a5,.L0d9aa2c4
    nop
    b	.L0d9a9a50
    # Line 878
    lbu	$at,3220($s0)
.L0d9a9518:
    # Line 1816
    beqz	$t2,.L0d9aa2f4
    lbu	$v0,427($s1)
    beqz	$v0,.L0d9aa3f8
    # Line 1821
    sltiu	$v0,$a1,6408
    # Line 1818
    addiu	$s3,$s3,1
    sll	$t8,$s3,0x2
    la	$t3,__glSpanRGBAScaleBiasReduce
    addu	$t8,$s1,$t8
    sw	$t3,356($t8)
.L0d9a953c:
    # Line 1916
    lbu	$t9,12($s2)
    beqz	$t9,.L0d9a9568
    # Line 1917
    ld	$v0,80($sp)
    # Line 1916
    beqz	$a7,.L0d9a9568
    # Line 1917
    ld	$v0,80($sp)
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    la	$ra,__glSpanClampPostFloat
    addu	$at,$s1,$at
    sw	$ra,356($at)
    ld	$v0,80($sp)
.L0d9a9568:
    beqz	$v0,.L0d9aa314
    lbu	$v1,1($sp)
    beqz	$v1,.L0d9aa4a8
    # Line 1949
    li	$a5,0x8035
    # Line 1925
    sltiu	$a0,$a2,5123
    bnez	$a0,.L0d9a9db4
    sltiu	$a4,$a2,5121
    sltiu	$a1,$a2,5124
    beqz	$a1,.L0d9aa180
    sltiu	$a0,$a2,5125
    # Line 1936
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$a2,__glSpanPackUshortI
    addu	$a3,$s1,$a3
    sw	$a2,356($a3)
.L0d9a95a4:
    # Line 2053
    ld	$a4,96($sp)
.L0d9a95a8:
    beqz	$a4,.L0d9aa36c
    # Line 2064
    ld	$t9,72($sp)
    # Line 2053
    lw	$v0,116($s1)
    beq	$v0,$t0,.L0d9aa67c
    # Line 2062
    li	$a5,4
    beq	$v0,$a5,.L0d9aa7d4
    nop
.L0d9a95c4:
    # Line 2073
    b	.L0d9a9114
    lw	$a0,8($sp)
.L0d9a95cc:
    b	.L0d9a8a98
    # Line 335
    move	$s3,$zero
.L0d9a95d4:
    # Line 322
    bnez	$at,.L0d9a9aec
    li	$at,6407
    sltiu	$v1,$a0,6409
    bnez	$v1,.L0d9a8a80
    li	$a3,6409
    bne	$a0,$a3,.L0d9a8a9c
    nop
    b	.L0d9a8a84
    # Line 335
    lbu	$a3,12($s2)
.L0d9a95f8:
    # Line 322
    bnez	$a4,.L0d9a9afc
    li	$v1,6403
    sltiu	$at,$a0,6405
    bnez	$at,.L0d9a8a80
    li	$v1,6405
    bne	$a0,$v1,.L0d9a8a9c
    nop
    b	.L0d9a8a84
    # Line 335
    lbu	$a3,12($s2)
.L0d9a961c:
    # Line 241
    lw	$a0,4($s2)
    bne	$a0,$a6,.L0d9a8850
    move	$s8,$zero
    andi	$a1,$v0,0x4000
    beqz	$a1,.L0d9a8850
    move	$s8,$zero
.L0d9a9634:
    b	.L0d9a8850
    li	$s8,1
.L0d9a963c:
    # Line 197
    lw	$v0,1792($a0)
    dsll32	$a2,$v0,0x5
    bgez	$a2,.L0d9aa468
    # Line 204
    dsll32	$a4,$v0,0x4
    # Line 198
    lw	$a3,916($a0)
    beqz	$a3,.L0d9aa140
    # Line 201
    la	$a2,__glDummyFilter
    # Line 198
    lw	$a4,920($a0)
    beqz	$a4,.L0d9aa13c
    move	$t3,$a6
    # Line 200
    addiu	$a5,$a0,852
    # Line 201
    b	.L0d9a8808
    # Line 200
    sw	$a5,436($a1)
.L0d9a9670:
    # Line 993
    lw	$s7,4($sp)
    b	.L0d9a8c8c
    sltiu	$t2,$a0,6407
.L0d9a967c:
    # Line 2080
    bnez	$v0,.L0d9a9760
    sltiu	$a5,$a1,6405
    sltiu	$a6,$a1,6409
    beqz	$a6,.L0d9aa06c
    li	$a5,0x8000
    # Line 2106
    addiu	$s3,$s3,1
    sll	$t1,$s3,0x2
    la	$t0,__glSpanPostUnscaleRGBA
    addu	$t1,$s1,$t1
    # Line 2117
    bnez	$a7,.L0d9a9790
    # Line 2106
    sw	$t0,356($t1)
    b	.L0d9a97a4
    nop
.L0d9a96b0:
    # Line 1364
    bne	$a0,$at,.L0d9a90e4
    nop
    b	.L0d9a901c
    # Line 1387
    lbu	$a5,30524($s0)
.L0d9a96c0:
    # Line 1364
    bne	$a6,$a0,.L0d9a90e4
    nop
    b	.L0d9a901c
    # Line 1387
    lbu	$a5,30524($s0)
.L0d9a96d0:
    # Line 224
    move	$t3,$zero
    b	.L0d9a8808
    # Line 222
    sw	$v0,436($a1)
.L0d9a96dc:
    # Line 996
    beq	$a1,$v1,.L0d9aa694
    li	$a3,6400
    beq	$a1,$a3,.L0d9aa898
    li	$a4,6401
    beq	$a1,$a4,.L0d9aa980
    li	$a5,6402
    beq	$a1,$a5,.L0d9aaab8
    lw	$s7,4($sp)
    move	$s3,$zero
.L0d9a9700:
    # Line 1060
    b	.L0d9a8c8c
    sltiu	$t2,$a0,6407
.L0d9a9708:
    # Line 2130
    beqz	$a7,.L0d9a9718
    li	$a6,6408
    beq	$a0,$a6,.L0d9aa968
    nop
.L0d9a9718:
    # Line 2133
    b	.L0d9a9114
    lw	$a0,8($sp)
.L0d9a9720:
    b	.L0d9a8ed4
    # Line 1277
    sd	$zero,144($sp)
.L0d9a9728:
    # Line 1258
    lw	$a5,1276($s0)
    li	$at,6406
    beq	$at,$a5,.L0d9aa904
    li	$v1,6409
    beq	$a5,$v1,.L0d9aaa08
    li	$a3,6410
    beq	$a5,$a3,.L0d9aaaf0
    nop
    beq	$a7,$a5,.L0d9aad18
    li	$a4,6408
    beq	$a5,$a4,.L0d9aadb8
    nop
.L0d9a9758:
    b	.L0d9a8ed4
    # Line 1277
    sd	$zero,144($sp)
.L0d9a9760:
    # Line 2080
    bnez	$a5,.L0d9aa110
    nop
    sltiu	$a6,$a1,6406
    beqz	$a6,.L0d9aa620
    sltiu	$a6,$a1,6407
    # Line 2094
    addiu	$s3,$s3,1
    sll	$t1,$s3,0x2
    la	$t0,__glSpanReduceBlue
    addu	$t1,$s1,$t1
    sw	$t0,356($t1)
.L0d9a9788:
    # Line 2117
    beqz	$a7,.L0d9a97a4
    nop
.L0d9a9790:
    # Line 2122
    addiu	$s3,$s3,1
    sll	$t3,$s3,0x2
    la	$t2,__glSpanClampPostFloat
    addu	$t3,$s1,$t3
    sw	$t2,356($t3)
.L0d9a97a4:
    # Line 2124
    b	.L0d9a9114
    lw	$a0,8($sp)
.L0d9a97ac:
    # Line 1077
    lw	$v1,80($at)
    # Line 1078
    sw	$s3,260($s1)
    # Line 1077
    sw	$v1,256($s1)
    # Line 1078
    lw	$at,0($at)
    li	$v1,0x8011
    beq	$at,$v1,.L0d9aa8e4
    la	$a5,__glSpanApplyRGBAColorTable
    # Line 1083
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanConvolve1DReduceRGB
    addu	$a4,$s1,$a4
    sw	$a3,356($a4)
.L0d9a97dc:
    # Line 1086
    la	$v1,__glRowScaleSumRGB
    sw	$v1,420($s1)
    # Line 1085
    la	$at,__glRowSetNoAlpha
    b	.L0d9a8d1c
    sw	$at,416($s1)
.L0d9a97f0:
    # Line 1217
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanPostColorMatrixScaleBiasRGBA
    addu	$a4,$s1,$a4
    li	$s4,1
    b	.L0d9a8e68
    sw	$a3,356($a4)
.L0d9a980c:
    # Line 1288
    lbu	$a5,1376($s0)
    beqz	$a5,.L0d9a8ef0
    nop
    # Line 1291
    sw	$s3,264($s1)
    # Line 1292
    lw	$a5,1372($s0)
    li	$at,6406
    beq	$a5,$at,.L0d9aac88
    li	$v1,6409
    beq	$a5,$v1,.L0d9aad88
    li	$a3,6410
    beq	$a5,$a3,.L0d9aaea4
    nop
    beq	$a7,$a5,.L0d9aaf2c
    li	$a4,6408
    beq	$a5,$a4,.L0d9ab024
.L0d9a9848:
    # Line 1312
    li	$a5,1
    b	.L0d9a8f44
    sd	$a5,144($sp)
.L0d9a9854:
    # Line 1387
    ld	$at,152($sp)
    andi	$at,$at,0xff
    bnez	$at,.L0d9a9024
    nop
    bnez	$a7,.L0d9a9024
    nop
    b	.L0d9a90e8
    # Line 1438
    lw	$a5,4($s2)
.L0d9a9874:
    b	.L0d9a9058
    # Line 1399
    sd	$zero,40($sp)
.L0d9a987c:
    b	.L0d9a9084
    # Line 1407
    move	$ra,$zero
.L0d9a9884:
    # Line 1416
    beqz	$a7,.L0d9aa944
    # Line 1417
    ld	$v1,160($sp)
.L0d9a988c:
    beqz	$v1,.L0d9aa958
    ld	$a5,40($sp)
    b	.L0d9a90c0
    move	$t8,$zero
.L0d9a989c:
    ld	$s7,240($sp)
    ld	$s8,232($sp)
    ld	$s4,224($sp)
    # Line 2151
    ld	$s0,200($sp)
    ld	$s1,192($sp)
    ld	$ra,216($sp)
    # Line 2149
    sw	$a0,20($s2)
    # Line 2151
    ld	$s2,208($sp)
    move	$v0,$s3
    ld	$s3,184($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0d9a98cc:
    # Line 414
    bne	$a1,$a3,.L0d9a8c54
    # Line 438
    li	$a3,-1
    b	.L0d9a8c50
    # Line 428
    sb	$zero,1($sp)
.L0d9a98dc:
    # Line 414
    bne	$a1,$a4,.L0d9a8c54
    # Line 438
    li	$a3,-1
    b	.L0d9a8c50
    # Line 428
    sb	$zero,1($sp)
.L0d9a98ec:
    # Line 1446
    bne	$a6,$a0,.L0d9a9914
    # Line 1461
    ld	$a5,152($sp)
.L0d9a98f4:
    andi	$a5,$a5,0xff
    beqz	$a5,.L0d9aa78c
    # Line 1464
    li	$t3,6403
    # Line 1462
    addiu	$s3,$s3,1
    sll	$t0,$s3,0x2
    la	$a7,__glSpanClampRGBA
    addu	$t0,$s1,$t0
    sw	$a7,356($t0)
.L0d9a9914:
    # Line 1500
    sltiu	$t1,$a1,6407
.L0d9a9918:
    bnez	$t1,.L0d9a9978
    sltiu	$v1,$a1,6403
    sltiu	$t2,$a1,6408
    bnez	$t2,.L0d9a99c4
    # Line 1513
    ld	$t0,104($sp)
    # Line 1500
    li	$a5,0x8000
    sltu	$t3,$a1,$a5
    bnez	$t3,.L0d9aa440
    sltiu	$v1,$a1,6409
    sltu	$t8,$a5,$a1
    beqz	$t8,.L0d9a99c4
    # Line 1513
    ld	$t0,104($sp)
    # Line 1500
    li	$a5,0x80e0
    sltu	$t9,$a1,$a5
    bnez	$t9,.L0d9aafb4
    li	$a2,0x8049
    sltu	$ra,$a5,$a1
    beqz	$ra,.L0d9a99c4
    # Line 1513
    ld	$t0,104($sp)
    # Line 1500
    li	$at,0x80e1
    bne	$a1,$at,.L0d9a99ec
    # Line 1542
    ld	$t8,144($sp)
    b	.L0d9a99c4
    # Line 1513
    ld	$t0,104($sp)
.L0d9a9978:
    # Line 1500
    bnez	$v1,.L0d9a9e7c
    sltiu	$a4,$a1,6401
    sltiu	$a2,$a1,6404
    bnez	$a2,.L0d9a99c4
    # Line 1513
    ld	$t0,104($sp)
    # Line 1500
    sltiu	$a3,$a1,6405
    bnez	$a3,.L0d9a99b8
    li	$a7,6404
    sltiu	$a4,$a1,6406
    bnez	$a4,.L0d9a99c4
    # Line 1513
    ld	$t0,104($sp)
    # Line 1500
    li	$a5,6406
    bne	$a1,$a5,.L0d9a99ec
    # Line 1542
    ld	$t8,144($sp)
    b	.L0d9a99c4
    # Line 1513
    ld	$t0,104($sp)
.L0d9a99b8:
    # Line 1500
    bne	$a1,$a7,.L0d9a99ec
    # Line 1542
    ld	$t8,144($sp)
    # Line 1513
    ld	$t0,104($sp)
.L0d9a99c4:
    beqz	$t0,.L0d9aa750
    # Line 1542
    ld	$t2,144($sp)
    # Line 1514
    lw	$t1,12452($s0)
    # Line 1542
    bnez	$t2,.L0d9a99f0
    # Line 1514
    sw	$t1,8($sp)
    b	.L0d9a99fc
    # Line 1566
    lw	$ra,8($s2)
.L0d9a99e0:
    # Line 1500
    beq	$a1,$t3,.L0d9ab310
    ld	$a1,104($sp)
.L0d9a99e8:
    # Line 1542
    ld	$t8,144($sp)
.L0d9a99ec:
    beqz	$t8,.L0d9a99f8
.L0d9a99f0:
    # Line 1545
    nop	# was lw $t9, -24996($gp) # &__glNop
    sw	$t9,8($sp)
.L0d9a99f8:
    # Line 1566
    lw	$ra,8($s2)
.L0d9a99fc:
    beq	$ra,$a6,.L0d9aa24c
    ld	$t3,152($sp)
    # Line 1807
    b	.L0d9a9114
    lw	$a0,8($sp)
.L0d9a9a0c:
    # Line 864
    bnez	$at,.L0d9a9f88
    sltiu	$a5,$a1,6401
    sltiu	$v1,$a1,6404
    bnez	$v1,.L0d9a9a4c
    sltiu	$a3,$a1,6405
    bnez	$a3,.L0d9aab38
    li	$t2,6404
    sltiu	$a4,$a1,6406
    bnez	$a4,.L0d9a9a4c
    li	$a5,6406
    bne	$a1,$a5,.L0d9aa2c4
    nop
    b	.L0d9a9a50
    # Line 878
    lbu	$at,3220($s0)
.L0d9a9a44:
    # Line 864
    bne	$a1,$t2,.L0d9aa2c4
    nop
.L0d9a9a4c:
    # Line 878
    lbu	$at,3220($s0)
.L0d9a9a50:
    beqz	$at,.L0d9aa8d0
    # Line 886
    la	$t2,__glSpanModifyCI
    # Line 879
    lbu	$a3,30524($s0)
    lw	$v1,12420($s0)
    beqz	$a3,.L0d9aa8fc
    sw	$v1,4($sp)
    # Line 882
    la	$a5,__glSpanModifyRGBA
    sw	$a5,364($s1)
    # Line 881
    la	$a4,__glSpanPreUnscaleRGBA
    # Line 882
    li	$s3,2
    # Line 881
    sw	$a4,360($s1)
.L0d9a9a7c:
    # Line 933
    lw	$t2,8($s2)
    beq	$t2,$t0,.L0d9aa2cc
    # Line 988
    lw	$s7,4($sp)
.L0d9a9a88:
    # Line 990
    b	.L0d9a8c8c
    sltiu	$t2,$a0,6407
.L0d9a9a90:
    # Line 1089
    lw	$v1,80($at)
    # Line 1090
    sw	$s3,260($s1)
    # Line 1089
    sw	$v1,256($s1)
    # Line 1090
    lw	$at,0($at)
    li	$v1,0x8011
    beq	$at,$v1,.L0d9aa9f0
    la	$a5,__glSpanApplyRGBAColorTable
    # Line 1095
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanConvolve1DReduceRGBA
    addu	$a4,$s1,$a4
    sw	$a3,356($a4)
.L0d9a9ac0:
    # Line 1098
    la	$v1,__glRowScaleSumRGBA
    sw	$v1,420($s1)
    # Line 1097
    la	$at,__glRowSetAll
    # Line 1099
    b	.L0d9a8d1c
    # Line 1097
    sw	$at,416($s1)
.L0d9a9ad4:
    # Line 1204
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanColorMatrixGeneralRGBA
    addu	$a4,$s1,$a4
    b	.L0d9a8e5c
    sw	$a3,356($a4)
.L0d9a9aec:
    # Line 322
    bne	$a0,$at,.L0d9a8a9c
    nop
    b	.L0d9a8a84
    # Line 335
    lbu	$a3,12($s2)
.L0d9a9afc:
    # Line 322
    bne	$a0,$v1,.L0d9a8a9c
    nop
    b	.L0d9a8a84
    # Line 335
    lbu	$a3,12($s2)
.L0d9a9b0c:
    # Line 322
    bne	$a0,$a3,.L0d9a8a9c
    nop
    # Line 341
    lbu	$a4,12($s2)
    beqz	$a4,.L0d9ab364
    nop
    lbu	$at,30527($s0)
    beqz	$at,.L0d9ab364
    li	$s3,1
.L0d9a9b2c:
    # Line 342
    b	.L0d9a8a9c
    # Line 341
    sb	$s3,0($sp)
.L0d9a9b34:
    # Line 1423
    beqz	$ra,.L0d9aaa64
    move	$a5,$zero
.L0d9a9b3c:
    b	.L0d9a90d8
    andi	$a7,$a5,0xff
.L0d9a9b44:
    # Line 305
    li	$t1,6656
    beq	$t1,$v0,.L0d9a899c
    # Line 308
    li	$v1,1
    b	.L0d9a89a0
    sd	$v1,128($sp)
.L0d9a9b58:
    # Line 1101
    lw	$a4,80($a3)
    # Line 1102
    sw	$s3,260($s1)
    # Line 1101
    sw	$a4,256($s1)
    # Line 1102
    lw	$a3,0($a3)
    li	$a4,0x8011
    beq	$a3,$a4,.L0d9aaa74
    la	$a5,__glSpanApplyRGBAColorTable
    # Line 1106
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanConvolve1DReduceL
    addu	$v1,$s1,$v1
    sw	$at,356($v1)
.L0d9a9b88:
    # Line 1109
    la	$a4,__glRowScaleSumL
    sw	$a4,420($s1)
    # Line 1108
    la	$a3,__glRowSetNoAlpha
    # Line 1110
    b	.L0d9a8d1c
    # Line 1108
    sw	$a3,416($s1)
.L0d9a9b9c:
    # Line 1446
    bnez	$a5,.L0d9a98ec
    sltiu	$a7,$a0,6401
    bnez	$a7,.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
    # Line 1446
    li	$t0,6402
    bne	$a0,$t0,.L0d9a9918
    # Line 1500
    sltiu	$t1,$a1,6407
    # Line 1488
    addiu	$s3,$s3,1
    # Line 1487
    sw	$a6,108($s1)
    # Line 1488
    sll	$t2,$s3,0x2
    la	$t1,__glSpanClampPostFloat
    addu	$t2,$s1,$t2
    # Line 1489
    b	.L0d9a9914
    # Line 1488
    sw	$t1,356($t2)
.L0d9a9bd4:
    # Line 1316
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanMinmaxA
    addu	$v1,$s1,$v1
    b	.L0d9a8f44
    sw	$at,356($v1)
.L0d9a9bec:
    # Line 1364
    bne	$a0,$a3,.L0d9a90e4
    nop
    beqz	$a7,.L0d9a90e4
    nop
    # Line 1433
    lbu	$a7,30526($s0)
    b	.L0d9a90e4
    sltiu	$a7,$a7,1
.L0d9a9c08:
    # Line 1235
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanHistogramSinkA
    addu	$v1,$s1,$v1
    b	.L0d9a8ecc
    sw	$at,356($v1)
.L0d9a9c20:
    # Line 1112
    lw	$a4,80($a3)
    # Line 1113
    sw	$s3,260($s1)
    # Line 1112
    sw	$a4,256($s1)
    # Line 1113
    lw	$a3,0($a3)
    li	$a4,0x8011
    beq	$a3,$a4,.L0d9aaca0
    la	$a5,__glSpanApplyRGBAColorTable
    # Line 1117
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanConvolve1DReduceLA
    addu	$v1,$s1,$v1
    sw	$at,356($v1)
.L0d9a9c50:
    # Line 1120
    la	$a4,__glRowScaleSumLA
    sw	$a4,420($s1)
    # Line 1119
    la	$a3,__glRowSetAll
    # Line 1121
    b	.L0d9a8d1c
    # Line 1119
    sw	$a3,416($s1)
.L0d9a9c64:
    # Line 1319
    addiu	$s3,$s3,1
    sll	$a7,$s3,0x2
    la	$a5,__glSpanMinmaxL
    addu	$a7,$s1,$a7
    # Line 1320
    b	.L0d9a8f44
    # Line 1319
    sw	$a5,356($a7)
.L0d9a9c7c:
    # Line 522
    bnez	$at,.L0d9aa270
    sltiu	$a5,$v0,5122
    sltiu	$v1,$v0,5125
    beqz	$v1,.L0d9aa824
    li	$a5,0x8033
    # Line 536
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanUnpackInt
    addu	$a4,$s1,$a4
    # Line 537
    b	.L0d9a9cc8
    # Line 536
    sw	$a3,356($a4)
.L0d9a9ca8:
    # Line 625
    lbu	$a5,429($s1)
    beqz	$a5,.L0d9a9cc8
    nop
    # Line 629
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanUnpackNonCompUint
    addu	$v1,$s1,$v1
    sw	$at,356($v1)
.L0d9a9cc8:
    ld	$a3,176($sp)
.L0d9a9ccc:
    beqz	$a3,.L0d9aa09c
    nop
    # Line 636
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanClampPreFloat
    addu	$a5,$s1,$a5
    sw	$a4,356($a5)
.L0d9a9ce8:
    # Line 671
    beq	$t1,$v0,.L0d9aa22c
.L0d9a9cec:
    # Line 677
    ld	$at,112($sp)
    beqz	$at,.L0d9a9d50
    sltiu	$t2,$a0,6407
    # Line 696
    bnez	$t2,.L0d9a9d58
    sltiu	$a5,$a0,6403
    sltiu	$v1,$a0,6408
    beqz	$v1,.L0d9a9fbc
    li	$a5,0x8000
    lbu	$a3,30524($s0)
    beqz	$a3,.L0d9aae58
    # Line 746
    la	$at,__glSpanExpandRGBNS
    # Line 744
    addiu	$a5,$s3,1
    la	$a4,__glSpanModifyRGB
    sll	$at,$a5,0x2
    sd	$at,24($sp)
    addu	$at,$at,$s1
    move	$s3,$a5
    sw	$a4,356($at)
.L0d9a9d34:
    # Line 746
    lbu	$v1,424($s1)
    beqz	$v1,.L0d9a9d50
    # Line 751
    ld	$a4,24($sp)
    la	$a3,__glSpanZeroFillAlpha
    addu	$a4,$a4,$s1
    addiu	$s3,$a5,1
    sw	$a3,360($a4)
.L0d9a9d50:
    b	.L0d9a8c8c
    # Line 854
    lw	$s7,4($sp)
.L0d9a9d58:
    # Line 696
    bnez	$a5,.L0d9a9ff8
    sltiu	$a5,$a0,6401
    sltiu	$at,$a0,6404
    beqz	$at,.L0d9aa590
    sltiu	$a3,$a0,6405
    lbu	$v1,30524($s0)
    beqz	$v1,.L0d9ab324
    # Line 701
    la	$at,__glSpanExpandRedNS
    # Line 699
    addiu	$a5,$s3,1
    la	$a3,__glSpanModifyRed
    sll	$a4,$a5,0x2
    sd	$a4,24($sp)
    addu	$a4,$a4,$s1
    move	$s3,$a5
    sw	$a3,356($a4)
.L0d9a9d94:
    # Line 701
    lbu	$at,424($s1)
    beqz	$at,.L0d9a9d50
    # Line 706
    ld	$a3,24($sp)
    la	$v1,__glSpanZeroFillAlpha
    addu	$a3,$a3,$s1
    addiu	$s3,$a5,1
    b	.L0d9a9d50
    sw	$v1,360($a3)
.L0d9a9db4:
    # Line 1925
    bnez	$a4,.L0d9aa29c
    li	$a4,5120
    sltiu	$a5,$a2,5122
    beqz	$a5,.L0d9aa878
    li	$t2,5122
    # Line 1930
    addiu	$s3,$s3,1
    sll	$a7,$s3,0x2
    la	$a6,__glSpanPackUbyteI
    addu	$a7,$s1,$a7
    # Line 1931
    b	.L0d9a95a4
    # Line 1930
    sw	$a6,356($a7)
.L0d9a9de0:
    # Line 1239
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanHistogramSinkL
    addu	$v1,$s1,$v1
    # Line 1241
    b	.L0d9a8ecc
    # Line 1239
    sw	$at,356($v1)
.L0d9a9df8:
    # Line 1123
    ld	$a3,56($sp)
    lw	$a4,80($a3)
    # Line 1124
    sw	$s3,260($s1)
    # Line 1123
    sw	$a4,256($s1)
    # Line 1124
    lw	$a3,0($a3)
    li	$a4,0x8011
    beq	$a3,$a4,.L0d9aada0
    nop
    # Line 1128
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanConvolve1DReduceI
    addu	$v1,$s1,$v1
    sw	$at,356($v1)
.L0d9a9e2c:
    # Line 1131
    la	$a4,__glRowScaleSumI
    sw	$a4,420($s1)
    # Line 1130
    la	$a3,__glRowSetAll
    # Line 1132
    b	.L0d9a8d1c
    # Line 1130
    sw	$a3,416($s1)
.L0d9a9e40:
    # Line 1322
    addiu	$s3,$s3,1
    sll	$a7,$s3,0x2
    la	$a5,__glSpanMinmaxLA
    addu	$a7,$s1,$a7
    # Line 1323
    b	.L0d9a8f44
    # Line 1322
    sw	$a5,356($a7)
.L0d9a9e58:
    # Line 1364
    bnez	$at,.L0d9aa430
    li	$at,6408
    sltiu	$v1,$a0,6410
    bnez	$v1,.L0d9a9018
    li	$a3,6410
    bne	$a0,$a3,.L0d9a90e4
    nop
    b	.L0d9a901c
    # Line 1387
    lbu	$a5,30524($s0)
.L0d9a9e7c:
    # Line 1500
    bnez	$a4,.L0d9a99e0
    li	$t3,6400
    sltiu	$a5,$a1,6402
    beqz	$a5,.L0d9aaa44
    li	$t0,6402
    ld	$a7,104($sp)
    beqz	$a7,.L0d9ab600
    nop
    # Line 1535
    lw	$t0,12468($s0)
    b	.L0d9a99e8
    sw	$t0,8($sp)
.L0d9a9ea8:
    # Line 401
    lbu	$at,30526($s0)
    bnez	$at,.L0d9a8b8c
    # Line 411
    li	$v1,1
.L0d9a9eb4:
    b	.L0d9a8b90
    sd	$v1,176($sp)
.L0d9a9ebc:
    # Line 500
    li	$a3,5120
.L0d9a9ec0:
    beq	$a3,$v0,.L0d9aaf14
    li	$a4,5121
    beq	$v0,$a4,.L0d9ab00c
    li	$a5,5122
    beq	$v0,$a5,.L0d9ab1e8
    li	$at,5123
    beq	$v0,$at,.L0d9ab258
    li	$v1,5124
    beq	$v0,$v1,.L0d9ab34c
    li	$a3,5125
    bne	$v0,$a3,.L0d9a9ccc
    # Line 629
    ld	$a3,176($sp)
    # Line 517
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanUnpackUintI
    addu	$a5,$s1,$a5
    # Line 518
    b	.L0d9a9cc8
    # Line 517
    sw	$a4,356($a5)
.L0d9a9f08:
    # Line 1243
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanHistogramSinkLA
    addu	$v1,$s1,$v1
    # Line 1245
    b	.L0d9a8ecc
    # Line 1243
    sw	$at,356($v1)
.L0d9a9f20:
    # Line 190
    la	$a0,__glDummyFilter
    # Line 193
    move	$t3,$zero
    b	.L0d9a8808
    # Line 192
    sw	$a0,436($s1)
.L0d9a9f30:
    # Line 414
    bne	$a1,$a3,.L0d9a8c54
    # Line 438
    li	$a3,-1
    b	.L0d9a8c50
    # Line 428
    sb	$zero,1($sp)
.L0d9a9f40:
    b	.L0d9a8a70
    # Line 338
    move	$s3,$zero
.L0d9a9f48:
    # Line 1416
    ld	$a4,48($sp)
    bnez	$a4,.L0d9a90b8
    # Line 1417
    ld	$a5,160($sp)
    b	.L0d9a90c8
    move	$t8,$zero
.L0d9a9f5c:
    ld	$a5,40($sp)
    beqz	$a5,.L0d9aaedc
    nop
    b	.L0d9a90c0
    move	$t8,$zero
.L0d9a9f70:
    # Line 1325
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    la	$a7,__glSpanMinmaxRGB
    addu	$at,$s1,$at
    # Line 1326
    b	.L0d9a8f44
    # Line 1325
    sw	$a7,356($at)
.L0d9a9f88:
    # Line 864
    bnez	$a5,.L0d9aa504
    sltiu	$t2,$a1,6400
    sltiu	$v1,$a1,6402
    beqz	$v1,.L0d9aa2bc
    li	$t2,6402
    # Line 896
    lbu	$a4,30527($s0)
    lw	$a3,12436($s0)
    beqz	$a4,.L0d9ab64c
    sw	$a3,4($sp)
    # Line 898
    la	$a5,__glSpanModifyStencil
    li	$s3,1
    b	.L0d9a9a7c
    sw	$a5,360($s1)
.L0d9a9fbc:
    # Line 696
    sltu	$at,$a0,$a5
    bnez	$at,.L0d9aa534
    sltiu	$a4,$a0,6409
    sltu	$v1,$a5,$a0
    bnez	$v1,.L0d9aab58
    li	$a5,0x80e0
    lbu	$a3,30524($s0)
    beqz	$a3,.L0d9ab60c
    # Line 836
    la	$v1,__glSpanPreReorderABGR
    # Line 834
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanModifyABGR
    addu	$a5,$s1,$a5
    b	.L0d9a9d50
    sw	$a4,356($a5)
.L0d9a9ff8:
    # Line 696
    bnez	$a5,.L0d9aa5ec
    sltiu	$v1,$a0,6400
    sltiu	$at,$a0,6402
    beqz	$at,.L0d9aac34
    li	$v1,6402
    lbu	$v1,30527($s0)
    beqz	$v1,.L0d9a9d50
    nop
    # Line 814
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanModifyStencil
    addu	$a4,$s1,$a4
    b	.L0d9a9d50
    sw	$a3,356($a4)
.L0d9aa030:
    # Line 1247
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    la	$a5,__glSpanHistogramSinkRGB
    addu	$at,$s1,$at
    # Line 1249
    b	.L0d9a8ecc
    # Line 1247
    sw	$a5,356($at)
.L0d9aa048:
    # Line 401
    andi	$v1,$v1,0xff
    bnez	$v1,.L0d9a8b8c
    nop
    b	.L0d9a9eb4
    # Line 411
    li	$v1,1
.L0d9aa05c:
    # Line 322
    bne	$a0,$a3,.L0d9a8a9c
    nop
    b	.L0d9a8a84
    # Line 335
    lbu	$a3,12($s2)
.L0d9aa06c:
    # Line 2080
    sltu	$a4,$a1,$a5
    bnez	$a4,.L0d9aa648
    sltiu	$t2,$a1,6410
    sltu	$a6,$a5,$a1
    bnez	$a6,.L0d9aab08
    li	$v0,0x80e1
    # Line 2112
    addiu	$s3,$s3,1
    sll	$t1,$s3,0x2
    la	$t0,__glSpanReorderABGR
    addu	$t1,$s1,$t1
    # Line 2113
    b	.L0d9a9788
    # Line 2112
    sw	$t0,356($t1)
.L0d9aa09c:
    # Line 636
    lbu	$at,426($s1)
    beqz	$at,.L0d9a9ce8
    # Line 639
    li	$a5,0x8034
    sltu	$v1,$a2,$a5
    bnez	$v1,.L0d9aa6d4
    sltiu	$at,$a2,5124
    sltu	$a3,$a5,$a2
    beqz	$a3,.L0d9aa734
    li	$a5,0x8364
    sltu	$a4,$a2,$a5
    bnez	$a4,.L0d9ab230
    sltu	$at,$a5,$a2
    beqz	$at,.L0d9aa700
    li	$a5,0x8367
    sltu	$v1,$a2,$a5
    bnez	$v1,.L0d9ab888
    sltu	$a3,$a5,$a2
    beqz	$a3,.L0d9aa734
    li	$a4,0x8368
    bne	$a2,$a4,.L0d9a9ce8
    nop
    b	.L0d9aa738
    # Line 666
    addiu	$s3,$s3,1
.L0d9aa0f8:
    # Line 1251
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    la	$a5,__glSpanHistogramSinkRGBA
    addu	$at,$s1,$at
    # Line 1253
    b	.L0d9a8ecc
    # Line 1251
    sw	$a5,356($at)
.L0d9aa110:
    # Line 2080
    sltiu	$v0,$a1,6403
    bnez	$v0,.L0d9aa75c
    sltiu	$v1,$a1,6404
    beqz	$v1,.L0d9aacb8
    li	$a0,6404
    # Line 2088
    addiu	$s3,$s3,1
    sll	$a1,$s3,0x2
    la	$a0,__glSpanReduceRed
    addu	$a1,$s1,$a1
    # Line 2089
    b	.L0d9a9788
    # Line 2088
    sw	$a0,356($a1)
.L0d9aa13c:
    # Line 201
    la	$a2,__glDummyFilter
.L0d9aa140:
    # Line 204
    move	$t3,$zero
    b	.L0d9a8808
    # Line 203
    sw	$a2,436($s1)
.L0d9aa14c:
    # Line 522
    sltu	$a3,$v0,$a5
    bnez	$a3,.L0d9aa7ec
    sltu	$a4,$a5,$v0
    bnez	$a4,.L0d9aad30
    li	$a5,0x8367
    # Line 591
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanUnpack4444RevUshort
    addu	$v1,$s1,$v1
    sw	$at,356($v1)
    # Line 593
    li	$a5,4
    # Line 594
    b	.L0d9a9cc8
    # Line 593
    sw	$a5,28($s1)
.L0d9aa180:
    # Line 1925
    bnez	$a0,.L0d9aa858
    li	$a6,5124
    sltiu	$a1,$a2,5126
    beqz	$a1,.L0d9aad68
    nop
    # Line 1942
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$a2,__glSpanPackUintI
    addu	$a3,$s1,$a3
    # Line 1943
    b	.L0d9a95a4
    # Line 1942
    sw	$a2,356($a3)
.L0d9aa1ac:
    # Line 348
    lbu	$a4,427($s1)
    bnez	$a4,.L0d9a9254
    # Line 360
    li	$at,1
    # Line 348
    ld	$at,152($sp)
    andi	$at,$at,0xff
    bnez	$at,.L0d9a9254
    # Line 360
    li	$at,1
    # Line 348
    beq	$a1,$a0,.L0d9a8bec
    li	$v1,6410
    beq	$v1,$a0,.L0d9a8be4
    nop
.L0d9aa1d8:
    beq	$a6,$a0,.L0d9abf10
    li	$a3,6409
.L0d9aa1e0:
    beq	$a3,$a0,.L0d9abf24
    li	$a4,6403
.L0d9aa1e8:
    bne	$a4,$a0,.L0d9a9254
    # Line 360
    li	$at,1
    # Line 348
    li	$at,6409
    bne	$at,$a1,.L0d9a9254
    # Line 360
    li	$at,1
    b	.L0d9a8bf0
    # Line 357
    sd	$zero,88($sp)
.L0d9aa204:
    # Line 466
    beqz	$v1,.L0d9ab16c
    # Line 480
    ld	$at,128($sp)
    # Line 466
    ld	$a3,128($sp)
    beqz	$a3,.L0d9ab2c4
    lw	$a5,36($s1)
    beq	$a5,$t0,.L0d9ab36c
    # Line 474
    la	$a4,__glSpanSlowSkipPixels4
    sw	$a4,360($s1)
.L0d9aa224:
    # Line 480
    b	.L0d9a9288
    li	$s3,1
.L0d9aa22c:
    # Line 671
    beqz	$t2,.L0d9ab194
    nop
    # Line 675
    addiu	$s3,$s3,1
    sll	$t2,$s3,0x2
    la	$a5,__glSpanUnpackBitmap2
    addu	$t2,$s1,$t2
    b	.L0d9a9cec
    sw	$a5,356($t2)
.L0d9aa24c:
    # Line 1566
    andi	$t3,$t3,0xff
    beqz	$t3,.L0d9ab1ac
    # Line 1567
    li	$a5,5121
    b	.L0d9a9114
    # Line 1807
    lw	$a0,8($sp)
.L0d9aa260:
    # Line 1416
    bnez	$t8,.L0d9a9400
    nop
    # Line 1417
    b	.L0d9a90c8
    li	$t8,1
.L0d9aa270:
    # Line 522
    bnez	$a5,.L0d9aa91c
    sltiu	$at,$v0,5121
    sltiu	$at,$v0,5123
    beqz	$at,.L0d9aae48
    li	$at,5123
    # Line 530
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanUnpackShort
    addu	$a3,$s1,$a3
    # Line 531
    b	.L0d9a9cc8
    # Line 530
    sw	$v1,356($a3)
.L0d9aa29c:
    # Line 1925
    bne	$a4,$a2,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1927
    addiu	$s3,$s3,1
    sll	$a6,$s3,0x2
    la	$a5,__glSpanPackByteI
    addu	$a6,$s1,$a6
    b	.L0d9a95a4
    sw	$a5,356($a6)
.L0d9aa2bc:
    # Line 864
    beq	$a1,$t2,.L0d9ab788
    nop
.L0d9aa2c4:
    b	.L0d9a9a7c
    # Line 908
    move	$s3,$zero
.L0d9aa2cc:
    # Line 933
    ld	$at,152($sp)
    andi	$at,$at,0xff
    beqz	$at,.L0d9ab298
    # Line 935
    li	$a5,5121
    b	.L0d9a9a88
    # Line 988
    lw	$s7,4($sp)
.L0d9aa2e4:
    # Line 459
    beq	$a5,$t0,.L0d9ab2b8
    # Line 466
    la	$v1,__glSpanSwapBytes4
    b	.L0d9a9284
    sw	$v1,360($s1)
.L0d9aa2f4:
    # Line 1903
    beqz	$v0,.L0d9a953c
    nop
    # Line 1908
    addiu	$s3,$s3,1
    sll	$a1,$s3,0x2
    la	$a0,__glSpanRGBAScaleBias
    addu	$a1,$s1,$a1
    b	.L0d9a953c
    sw	$a0,356($a1)
.L0d9aa314:
    # Line 2030
    lbu	$a3,429($s1)
    beqz	$a3,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 2034
    li	$a4,5120
    beq	$a4,$a2,.L0d9ab4ac
    li	$a5,5121
    beq	$a2,$a5,.L0d9ab524
    li	$a6,5122
    beq	$a2,$a6,.L0d9ab5a8
    li	$a7,5123
    beq	$a2,$a7,.L0d9ab62c
    li	$t1,5124
    beq	$a2,$t1,.L0d9ab6a4
    li	$t2,5125
    bne	$a2,$t2,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 2051
    addiu	$s3,$s3,1
    sll	$t8,$s3,0x2
    la	$t3,__glSpanPackNonCompUint
    addu	$t8,$s1,$t8
    # Line 2052
    b	.L0d9a95a4
    # Line 2051
    sw	$t3,356($t8)
.L0d9aa36c:
    # Line 2064
    beqz	$t9,.L0d9a95c4
    nop
    lw	$v0,116($s1)
    beq	$v0,$t0,.L0d9ab4c4
    # Line 2068
    li	$ra,4
    bne	$v0,$ra,.L0d9a95c4
    nop
    # Line 2070
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    la	$at,__glSpanAlignPixels4Dst
    addu	$v0,$s1,$v0
    b	.L0d9a95c4
    sw	$at,356($v0)
.L0d9aa3a0:
    # Line 1446
    sltiu	$v1,$a0,6408
    bnez	$v1,.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
    # Line 1446
    li	$a5,0x8000
    sltu	$a2,$a0,$a5
    bnez	$a2,.L0d9aaeec
    sltiu	$a4,$a0,6409
    sltu	$a3,$a5,$a0
    beqz	$a3,.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
    # Line 1446
    li	$a5,0x80e0
    sltu	$a4,$a0,$a5
    bnez	$a4,.L0d9ab6bc
    li	$t9,0x8049
    sltu	$a7,$a5,$a0
    beqz	$a7,.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
    # Line 1446
    li	$t0,0x80e1
    bne	$a0,$t0,.L0d9a9918
    # Line 1500
    sltiu	$t1,$a1,6407
    b	.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
.L0d9aa3f8:
    # Line 1821
    bnez	$v0,.L0d9aa9b8
    sltiu	$a4,$a1,6405
    sltiu	$t2,$a1,6409
    beqz	$t2,.L0d9aaf44
    li	$v0,0x8049
    lbu	$t3,428($s1)
    beqz	$t3,.L0d9a953c
    nop
    # Line 1884
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    la	$t8,__glSpanPostUnscaleRGBA
    addu	$t9,$s1,$t9
    b	.L0d9a953c
    sw	$t8,356($t9)
.L0d9aa430:
    # Line 1364
    bne	$a0,$at,.L0d9a90e4
    nop
    b	.L0d9a901c
    # Line 1387
    lbu	$a5,30524($s0)
.L0d9aa440:
    # Line 1500
    bnez	$v1,.L0d9aaa34
    li	$a7,6408
    sltiu	$a2,$a1,6410
    bnez	$a2,.L0d9a99c4
    # Line 1513
    ld	$t0,104($sp)
    # Line 1500
    li	$a3,6410
    bne	$a1,$a3,.L0d9a99ec
    # Line 1542
    ld	$t8,144($sp)
    b	.L0d9a99c4
    # Line 1513
    ld	$t0,104($sp)
.L0d9aa468:
    # Line 204
    bgez	$a4,.L0d9ab434
    # Line 214
    la	$at,__glDummyFilter
    # Line 208
    lw	$a5,1000($a0)
    beqz	$a5,.L0d9ab06c
    # Line 211
    la	$t2,__glDummyFilter
    # Line 208
    lw	$a7,1004($a0)
    beqz	$a7,.L0d9ab068
    move	$t3,$a6
    # Line 210
    addiu	$t1,$a0,936
    # Line 211
    b	.L0d9a8808
    # Line 210
    sw	$t1,436($a1)
.L0d9aa494:
    b	.L0d9a91d0
    # Line 344
    move	$s3,$zero
.L0d9aa49c:
    # Line 456
    la	$at,__glSpanSwapAndSkipBytes2
    b	.L0d9a9284
    sw	$at,360($s1)
.L0d9aa4a8:
    # Line 1949
    sltu	$v0,$a2,$a5
    bnez	$v0,.L0d9aaa8c
    sltiu	$a0,$a2,5124
    sltu	$v1,$a5,$a2
    bnez	$v1,.L0d9aafc4
    li	$a5,0x8365
    # Line 2009
    addiu	$s3,$s3,1
    sll	$a2,$s3,0x2
    la	$a1,__glSpanPack8888Uint
    addu	$a2,$s1,$a2
    sw	$a1,356($a2)
    # Line 2011
    li	$a0,4
    # Line 2012
    b	.L0d9a95a4
    # Line 2011
    sw	$a0,108($s1)
.L0d9aa4e0:
    # Line 864
    bnez	$a3,.L0d9a9a44
    li	$t2,6408
    sltiu	$a4,$a1,6410
    bnez	$a4,.L0d9a9a4c
    li	$a5,6410
    bne	$a1,$a5,.L0d9aa2c4
    nop
    b	.L0d9a9a50
    # Line 878
    lbu	$at,3220($s0)
.L0d9aa504:
    # Line 864
    bnez	$t2,.L0d9aab48
    nop
    beqz	$a5,.L0d9aa2c4
    nop
    # Line 902
    lbu	$v1,30525($s0)
    lw	$at,12412($s0)
    beqz	$v1,.L0d9ab93c
    sw	$at,4($sp)
    # Line 904
    la	$a3,__glSpanModifyCI
    li	$s3,1
    b	.L0d9a9a7c
    sw	$a3,360($s1)
.L0d9aa534:
    # Line 696
    bnez	$a4,.L0d9aabb8
    li	$a5,6408
    sltiu	$a5,$a0,6410
    beqz	$a5,.L0d9ab114
    li	$a3,6410
    lbu	$at,30524($s0)
    beqz	$at,.L0d9ab8ec
    # Line 770
    la	$at,__glSpanExpandLuminanceNS
    # Line 768
    addiu	$a5,$s3,1
    la	$v1,__glSpanModifyLuminance
    sll	$a3,$a5,0x2
    sd	$a3,24($sp)
    addu	$a3,$a3,$s1
    move	$s3,$a5
    sw	$v1,356($a3)
.L0d9aa570:
    # Line 770
    lbu	$a4,424($s1)
    beqz	$a4,.L0d9a9d50
    # Line 775
    ld	$v1,24($sp)
    la	$at,__glSpanZeroFillAlpha
    addu	$v1,$v1,$s1
    addiu	$s3,$a5,1
    b	.L0d9a9d50
    sw	$at,360($v1)
.L0d9aa590:
    # Line 696
    bnez	$a3,.L0d9aabe4
    li	$a4,6404
    sltiu	$a4,$a0,6406
    beqz	$a4,.L0d9ab140
    li	$v1,6406
    lbu	$a5,30524($s0)
    beqz	$a5,.L0d9ab914
    # Line 725
    la	$at,__glSpanExpandBlueNS
    # Line 723
    addiu	$a5,$s3,1
    la	$at,__glSpanModifyBlue
    sll	$v1,$a5,0x2
    sd	$v1,24($sp)
    addu	$v1,$v1,$s1
    move	$s3,$a5
    sw	$at,356($v1)
.L0d9aa5cc:
    # Line 725
    lbu	$a3,424($s1)
    beqz	$a3,.L0d9a9d50
    # Line 730
    ld	$at,24($sp)
    la	$a4,__glSpanZeroFillAlpha
    addu	$at,$at,$s1
    addiu	$s3,$a5,1
    b	.L0d9a9d50
    sw	$a4,360($at)
.L0d9aa5ec:
    # Line 696
    bnez	$v1,.L0d9aac60
    nop
    beqz	$a5,.L0d9a9d50
    nop
    lbu	$a3,30525($s0)
    beqz	$a3,.L0d9a9d50
    nop
    # Line 819
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanModifyCI
    addu	$a5,$s1,$a5
    b	.L0d9a9d50
    sw	$a4,356($a5)
.L0d9aa620:
    # Line 2080
    bnez	$a6,.L0d9aacf8
    li	$a6,6406
    beqz	$v0,.L0d9a9788
    nop
    # Line 2082
    addiu	$s3,$s3,1
    sll	$t1,$s3,0x2
    la	$t0,__glSpanReduceRGB
    addu	$t1,$s1,$t1
    # Line 2083
    b	.L0d9a9788
    # Line 2082
    sw	$t0,356($t1)
.L0d9aa648:
    # Line 2080
    bnez	$t2,.L0d9aacd8
    li	$a3,6409
    sltiu	$t3,$a1,6411
    beqz	$t3,.L0d9a9788
    nop
    # Line 2100
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    la	$t8,__glSpanReduceLuminanceAlpha
    addu	$t9,$s1,$t9
    # Line 2101
    b	.L0d9a9788
    # Line 2100
    sw	$t8,356($t9)
.L0d9aa674:
    # Line 1371
    b	.L0d9a90e4
    move	$a7,$zero
.L0d9aa67c:
    # Line 2062
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    la	$ra,__glSpanSwapBytes2Dst
    addu	$at,$s1,$at
    b	.L0d9a95c4
    sw	$ra,356($at)
.L0d9aa694:
    # Line 998
    beqz	$t2,.L0d9ab4dc
    nop
    # Line 999
    lw	$s7,12420($s0)
.L0d9aa6a0:
    # Line 1001
    lbu	$v1,30524($s0)
    beqz	$v1,.L0d9aaff8
    # Line 1005
    ld	$t2,104($sp)
    # Line 1004
    la	$a3,__glSpanPreUnscaleRGBA
    # Line 1005
    ld	$a4,104($sp)
    la	$a5,__glSpanModifyRGBA
    sw	$a5,364($s1)
    li	$s3,2
    beqz	$a4,.L0d9ab000
    # Line 1004
    sw	$a3,360($s1)
.L0d9aa6c8:
    # Line 1008
    lw	$t2,12452($s0)
    b	.L0d9a9700
    sw	$t2,8($sp)
.L0d9aa6d4:
    # Line 639
    bnez	$at,.L0d9aae80
    sltiu	$a5,$a2,5122
    sltiu	$v1,$a2,5125
    bnez	$v1,.L0d9ab080
    li	$a5,0x8032
    sltu	$a3,$a2,$a5
    bnez	$a3,.L0d9ab5d0
    sltiu	$at,$a2,5126
    sltu	$a4,$a5,$a2
    bnez	$a4,.L0d9ab878
    li	$at,0x8033
.L0d9aa700:
    # Line 656
    addiu	$s3,$s3,1
.L0d9aa704:
    sll	$at,$s3,0x2
    la	$a5,__glSpanClampRGB
    addu	$at,$s1,$at
    # Line 657
    b	.L0d9a9ce8
    # Line 656
    sw	$a5,356($at)
.L0d9aa718:
    # Line 639
    li	$a5,0x8036
    sltu	$v1,$a2,$a5
    bnez	$v1,.L0d9ab8cc
    li	$at,0x8035
    sltu	$a3,$a5,$a2
    bnez	$a3,.L0d9a9ce8
    nop
.L0d9aa734:
    # Line 666
    addiu	$s3,$s3,1
.L0d9aa738:
    sll	$a5,$s3,0x2
    la	$a4,__glSpanClampRGBA
    addu	$a5,$s1,$a5
    sw	$a4,356($a5)
    b	.L0d9a9ce8
    nop
.L0d9aa750:
    # Line 1516
    lw	$a7,12448($s0)
    b	.L0d9a99e8
    sw	$a7,8($sp)
.L0d9aa75c:
    # Line 2080
    bne	$a6,$a1,.L0d9a9788
    nop
    # Line 2115
    addiu	$s3,$s3,1
    sll	$t1,$s3,0x2
    la	$t0,__glSpanReduceRedAlpha
    addu	$t1,$s1,$t1
    b	.L0d9a9788
    sw	$t0,356($t1)
.L0d9aa77c:
    # Line 1446
    bne	$a0,$t2,.L0d9a9918
    # Line 1500
    sltiu	$t1,$a1,6407
    b	.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
.L0d9aa78c:
    # Line 1464
    beq	$a0,$t3,.L0d9ab580
    li	$t8,6404
    beq	$a0,$t8,.L0d9ab5e8
    li	$t9,6405
    beq	$a0,$t9,.L0d9ab654
    li	$ra,6406
    beq	$a0,$ra,.L0d9ab840
    li	$at,6407
    beq	$a0,$at,.L0d9ab50c
    li	$v1,6409
    beq	$a0,$v1,.L0d9ab50c
    nop
    # Line 1482
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$a2,__glSpanClampRGBA
    addu	$a3,$s1,$a3
    b	.L0d9a9914
    sw	$a2,356($a3)
.L0d9aa7d4:
    # Line 2064
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanSwapBytes4Dst
    addu	$a5,$s1,$a5
    b	.L0d9a95c4
    sw	$a4,356($a5)
.L0d9aa7ec:
    # Line 522
    li	$a5,0x8363
    sltu	$at,$v0,$a5
    bnez	$at,.L0d9aadd0
    sltu	$v1,$a5,$v0
    bnez	$v1,.L0d9ab200
    li	$a4,0x8364
    # Line 576
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanUnpack565Ushort
    addu	$a5,$s1,$a5
    sw	$a4,356($a5)
    # Line 578
    li	$a3,3
    # Line 579
    b	.L0d9a9cc8
    # Line 578
    sw	$a3,28($s1)
.L0d9aa824:
    # Line 522
    sltu	$at,$v0,$a5
    bnez	$at,.L0d9aae0c
    sltu	$v1,$a5,$v0
    bnez	$v1,.L0d9ab210
    li	$a5,0x8034
    # Line 586
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanUnpack4444Ushort
    addu	$a5,$s1,$a5
    sw	$a4,356($a5)
    # Line 588
    li	$a3,4
    # Line 589
    b	.L0d9a9cc8
    # Line 588
    sw	$a3,28($s1)
.L0d9aa858:
    # Line 1925
    bne	$a2,$a6,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1939
    addiu	$s3,$s3,1
    sll	$t1,$s3,0x2
    la	$a7,__glSpanPackIntI
    addu	$t1,$s1,$t1
    # Line 1940
    b	.L0d9a95a4
    # Line 1939
    sw	$a7,356($t1)
.L0d9aa878:
    # Line 1925
    bne	$a2,$t2,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1933
    addiu	$s3,$s3,1
    sll	$t8,$s3,0x2
    la	$t3,__glSpanPackShortI
    addu	$t8,$s1,$t8
    # Line 1934
    b	.L0d9a95a4
    # Line 1933
    sw	$t3,356($t8)
.L0d9aa898:
    # Line 1014
    beqz	$t2,.L0d9ab568
    nop
    # Line 1015
    lw	$s7,12412($s0)
.L0d9aa8a4:
    # Line 1017
    lbu	$at,30525($s0)
    beqz	$at,.L0d9ab1d4
    # Line 1020
    ld	$t2,104($sp)
    ld	$a3,104($sp)
    la	$v1,__glSpanModifyCI
    li	$s3,1
    beqz	$a3,.L0d9ab1dc
    sw	$v1,360($s1)
.L0d9aa8c4:
    # Line 1023
    lw	$a4,12444($s0)
    b	.L0d9a9700
    sw	$a4,8($sp)
.L0d9aa8d0:
    # Line 885
    lw	$a5,12412($s0)
    # Line 886
    sw	$t2,360($s1)
    li	$s3,1
    b	.L0d9a9a7c
    # Line 885
    sw	$a5,4($sp)
.L0d9aa8e4:
    # Line 1080
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanConvolveReduceRGB
    addu	$v1,$s1,$v1
    b	.L0d9a97dc
    sw	$at,356($v1)
.L0d9aa8fc:
    b	.L0d9a9a7c
    # Line 882
    move	$s3,$zero
.L0d9aa904:
    # Line 1260
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanHistogramA
    addu	$a4,$s1,$a4
    b	.L0d9a9758
    sw	$a3,356($a4)
.L0d9aa91c:
    # Line 522
    bnez	$at,.L0d9aaebc
    li	$at,5120
    beqz	$a5,.L0d9ab308
    nop
    # Line 527
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanUnpackUbyte
    addu	$a3,$s1,$a3
    # Line 528
    b	.L0d9a9cc8
    # Line 527
    sw	$v1,356($a3)
.L0d9aa944:
    # Line 1416
    ld	$a4,48($sp)
    bnez	$a4,.L0d9a988c
    # Line 1417
    ld	$v1,160($sp)
    b	.L0d9a90c8
    move	$t8,$zero
.L0d9aa958:
    beqz	$a5,.L0d9ab598
    nop
    b	.L0d9a90c0
    move	$t8,$zero
.L0d9aa968:
    # Line 2131
    addiu	$s3,$s3,1
    sll	$a7,$s3,0x2
    la	$a6,__glSpanClampRGBA
    addu	$a7,$s1,$a7
    b	.L0d9a9718
    sw	$a6,356($a7)
.L0d9aa980:
    # Line 1029
    beqz	$t2,.L0d9ab5e0
    nop
    # Line 1030
    lw	$s7,12436($s0)
.L0d9aa98c:
    # Line 1032
    lbu	$t2,30527($s0)
    beqz	$t2,.L0d9ab2d4
    # Line 1035
    ld	$a4,104($sp)
    ld	$v1,104($sp)
    la	$at,__glSpanModifyStencil
    li	$s3,1
    beqz	$v1,.L0d9ab2dc
    sw	$at,360($s1)
.L0d9aa9ac:
    # Line 1038
    lw	$a3,12468($s0)
    b	.L0d9a9700
    sw	$a3,8($sp)
.L0d9aa9b8:
    # Line 1821
    bnez	$a4,.L0d9aaf80
    sltiu	$ra,$a1,6403
    sltiu	$a5,$a1,6406
    beqz	$a5,.L0d9ab3dc
    sltiu	$a3,$a1,6407
    # Line 1843
    la	$t8,__glSpanReduceBlueNS
    la	$a6,__glSpanReduceBlue
    lbu	$t3,428($s1)
    addiu	$s3,$s3,1
    sll	$t2,$s3,0x2
    movz	$a6,$t8,$t3
    addu	$t2,$s1,$t2
    # Line 1846
    b	.L0d9a953c
    # Line 1843
    sw	$a6,356($t2)
.L0d9aa9f0:
    # Line 1092
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanConvolveReduceRGBA
    addu	$v1,$s1,$v1
    b	.L0d9a9ac0
    sw	$at,356($v1)
.L0d9aaa08:
    # Line 1263
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanHistogramL
    addu	$a4,$s1,$a4
    # Line 1264
    b	.L0d9a9758
    # Line 1263
    sw	$a3,356($a4)
.L0d9aaa20:
    # Line 1364
    li	$a5,0x8049
    bne	$a0,$a5,.L0d9a90e4
    nop
    b	.L0d9a901c
    # Line 1387
    lbu	$a5,30524($s0)
.L0d9aaa34:
    # Line 1500
    bne	$a1,$a7,.L0d9a99ec
    # Line 1542
    ld	$t8,144($sp)
    b	.L0d9a99c4
    # Line 1513
    ld	$t0,104($sp)
.L0d9aaa44:
    # Line 1500
    bne	$a1,$t0,.L0d9a99ec
    # Line 1542
    ld	$t8,144($sp)
    # Line 1500
    ld	$t1,104($sp)
    beqz	$t1,.L0d9abc30
    nop
    # Line 1521
    lw	$t2,12460($s0)
    b	.L0d9a99e8
    sw	$t2,8($sp)
.L0d9aaa64:
    # Line 1423
    bnez	$t8,.L0d9a9b3c
    move	$a5,$zero
    b	.L0d9a9b3c
    li	$a5,1
.L0d9aaa74:
    # Line 1104
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanConvolveReduceL
    addu	$v1,$s1,$v1
    b	.L0d9a9b88
    sw	$at,356($v1)
.L0d9aaa8c:
    # Line 1949
    bnez	$a0,.L0d9ab03c
    sltiu	$v0,$a2,5122
    sltiu	$a1,$a2,5125
    beqz	$a1,.L0d9ab478
    li	$a5,0x8033
    # Line 1963
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$a2,__glSpanPackInt
    addu	$a3,$s1,$a3
    # Line 1964
    b	.L0d9a95a4
    # Line 1963
    sw	$a2,356($a3)
.L0d9aaab8:
    # Line 1044
    beqz	$t2,.L0d9ab644
    nop
    # Line 1045
    lw	$s7,12428($s0)
.L0d9aaac4:
    # Line 1047
    lbu	$a4,30526($s0)
    beqz	$a4,.L0d9ab378
    # Line 1050
    ld	$a5,104($sp)
    ld	$t2,104($sp)
    la	$a5,__glSpanModifyDepth
    li	$s3,1
    beqz	$t2,.L0d9ab380
    sw	$a5,360($s1)
.L0d9aaae4:
    # Line 1053
    lw	$at,12460($s0)
    b	.L0d9a9700
    sw	$at,8($sp)
.L0d9aaaf0:
    # Line 1266
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanHistogramLA
    addu	$a3,$s1,$a3
    # Line 1267
    b	.L0d9a9758
    # Line 1266
    sw	$v1,356($a3)
.L0d9aab08:
    # Line 2080
    sltu	$a4,$a1,$v0
    bnez	$a4,.L0d9ab098
    li	$a4,0x80e0
    sltu	$a5,$v0,$a1
    bnez	$a5,.L0d9a9788
    nop
    # Line 2109
    addiu	$s3,$s3,1
    sll	$t0,$s3,0x2
    la	$a6,__glSpanReorderBGRA
    addu	$t0,$s1,$t0
    # Line 2110
    b	.L0d9a9788
    # Line 2109
    sw	$a6,356($t0)
.L0d9aab38:
    # Line 864
    bne	$a1,$t2,.L0d9aa2c4
    nop
    b	.L0d9a9a50
    # Line 878
    lbu	$at,3220($s0)
.L0d9aab48:
    # Line 864
    bne	$a6,$a1,.L0d9aa2c4
    nop
    b	.L0d9a9a50
    # Line 878
    lbu	$at,3220($s0)
.L0d9aab58:
    # Line 696
    sltu	$at,$a0,$a5
    bnez	$at,.L0d9ab0c8
    li	$at,0x8049
    sltu	$v1,$a5,$a0
    bnez	$v1,.L0d9ab53c
    li	$a5,0x80e1
    lbu	$a3,30524($s0)
    beqz	$a3,.L0d9abba8
    # Line 758
    la	$a4,__glSpanExpandBGRNS
    # Line 756
    addiu	$a5,$s3,1
    la	$a4,__glSpanModifyBGR
    sll	$at,$a5,0x2
    sd	$at,24($sp)
    addu	$at,$at,$s1
    move	$s3,$a5
    sw	$a4,356($at)
.L0d9aab98:
    # Line 758
    lbu	$v1,424($s1)
    beqz	$v1,.L0d9a9d50
    # Line 763
    ld	$a4,24($sp)
    la	$a3,__glSpanZeroFillAlpha
    addu	$a4,$a4,$s1
    addiu	$s3,$a5,1
    b	.L0d9a9d50
    sw	$a3,360($a4)
.L0d9aabb8:
    # Line 696
    bne	$a0,$a5,.L0d9a9d50
    nop
    lbu	$at,30524($s0)
    beqz	$at,.L0d9abc3c
    nop
    # Line 800
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanModifyRGBA
    addu	$a3,$s1,$a3
    b	.L0d9a9d50
    sw	$v1,356($a3)
.L0d9aabe4:
    # Line 696
    bne	$a0,$a4,.L0d9a9d50
    nop
    lbu	$a5,30524($s0)
    beqz	$a5,.L0d9abc60
    # Line 713
    la	$at,__glSpanExpandGreenNS
    # Line 711
    addiu	$a5,$s3,1
    la	$at,__glSpanModifyGreen
    sll	$v1,$a5,0x2
    sd	$v1,24($sp)
    addu	$v1,$v1,$s1
    move	$s3,$a5
    sw	$at,356($v1)
.L0d9aac14:
    # Line 713
    lbu	$a3,424($s1)
    beqz	$a3,.L0d9a9d50
    # Line 718
    ld	$at,24($sp)
    la	$a4,__glSpanZeroFillAlpha
    addu	$at,$at,$s1
    addiu	$s3,$a5,1
    b	.L0d9a9d50
    sw	$a4,360($at)
.L0d9aac34:
    # Line 696
    bne	$a0,$v1,.L0d9a9d50
    nop
    lbu	$a3,30526($s0)
    beqz	$a3,.L0d9a9d50
    nop
    # Line 809
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanModifyDepth
    addu	$a5,$s1,$a5
    b	.L0d9a9d50
    sw	$a4,356($a5)
.L0d9aac60:
    # Line 696
    bne	$a6,$a0,.L0d9a9d50
    lbu	$at,0($sp)
    beqz	$at,.L0d9abc88
    # Line 793
    la	$a5,__glSpanExpandRedAlphaNS
    # Line 791
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanModifyRedAlpha
    addu	$a3,$s1,$a3
    b	.L0d9a9d50
    sw	$v1,356($a3)
.L0d9aac88:
    # Line 1294
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanMinmaxSinkA
    addu	$a5,$s1,$a5
    b	.L0d9a9848
    sw	$a4,356($a5)
.L0d9aaca0:
    # Line 1115
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanConvolveReduceLA
    addu	$v1,$s1,$v1
    b	.L0d9a9c50
    sw	$at,356($v1)
.L0d9aacb8:
    # Line 2080
    bne	$a1,$a0,.L0d9a9788
    nop
    # Line 2091
    addiu	$s3,$s3,1
    sll	$a2,$s3,0x2
    la	$a1,__glSpanReduceGreen
    addu	$a2,$s1,$a2
    # Line 2092
    b	.L0d9a9788
    # Line 2091
    sw	$a1,356($a2)
.L0d9aacd8:
    # Line 2080
    bne	$a1,$a3,.L0d9a9788
    nop
    # Line 2097
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanReduceLuminance
    addu	$a5,$s1,$a5
    # Line 2098
    b	.L0d9a9788
    # Line 2097
    sw	$a4,356($a5)
.L0d9aacf8:
    # Line 2080
    bne	$a1,$a6,.L0d9a9788
    nop
    # Line 2103
    addiu	$s3,$s3,1
    sll	$t1,$s3,0x2
    la	$t0,__glSpanReduceAlpha
    addu	$t1,$s1,$t1
    # Line 2104
    b	.L0d9a9788
    # Line 2103
    sw	$t0,356($t1)
.L0d9aad18:
    # Line 1269
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanHistogramRGB
    addu	$v1,$s1,$v1
    # Line 1270
    b	.L0d9a9758
    # Line 1269
    sw	$at,356($v1)
.L0d9aad30:
    # Line 522
    sltu	$a3,$v0,$a5
    bnez	$a3,.L0d9ab220
    li	$at,0x8366
    sltu	$a4,$a5,$v0
    bnez	$a4,.L0d9ab570
    li	$a4,0x8368
    # Line 611
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanUnpack8888RevUint
    addu	$v1,$s1,$v1
    sw	$at,356($v1)
    # Line 613
    li	$a5,4
    # Line 614
    b	.L0d9a9cc8
    # Line 613
    sw	$a5,28($s1)
.L0d9aad68:
    # Line 1925
    bne	$t1,$a2,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1945
    addiu	$s3,$s3,1
    sll	$a1,$s3,0x2
    la	$a0,__glSpanPackBitmap
    addu	$a1,$s1,$a1
    # Line 1946
    b	.L0d9a95a4
    # Line 1945
    sw	$a0,356($a1)
.L0d9aad88:
    # Line 1297
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanMinmaxSinkL
    addu	$a4,$s1,$a4
    # Line 1298
    b	.L0d9a9848
    # Line 1297
    sw	$a3,356($a4)
.L0d9aada0:
    # Line 1126
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanConvolveReduceI
    addu	$v1,$s1,$v1
    b	.L0d9a9e2c
    sw	$at,356($v1)
.L0d9aadb8:
    # Line 1272
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanHistogramRGBA
    addu	$a4,$s1,$a4
    # Line 1274
    b	.L0d9a9758
    # Line 1272
    sw	$a3,356($a4)
.L0d9aadd0:
    # Line 522
    li	$a5,0x8362
    sltu	$at,$v0,$a5
    bnez	$at,.L0d9ab2e8
    li	$at,0x8036
    sltu	$v1,$a5,$v0
    bnez	$v1,.L0d9ab5c0
    nop
    # Line 571
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanUnpack233RevUbyte
    addu	$a5,$s1,$a5
    sw	$a4,356($a5)
    # Line 573
    li	$a3,3
    # Line 574
    b	.L0d9a9cc8
    # Line 573
    sw	$a3,28($s1)
.L0d9aae0c:
    # Line 522
    li	$a5,0x8032
    sltu	$at,$v0,$a5
    bnez	$at,.L0d9ab2f8
    li	$v1,5125
    sltu	$v1,$a5,$v0
    bnez	$v1,.L0d9ab5c8
    nop
    # Line 542
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanUnpack332Ubyte
    addu	$a5,$s1,$a5
    sw	$a4,356($a5)
    # Line 568
    li	$a3,3
    # Line 569
    b	.L0d9a9cc8
    # Line 568
    sw	$a3,28($s1)
.L0d9aae48:
    # Line 522
    beq	$v0,$at,.L0d9ab8b4
    nop
    # Line 524
    b	.L0d9a9ccc
    # Line 629
    ld	$a3,176($sp)
.L0d9aae58:
    # Line 746
    la	$v1,__glSpanExpandRGB
    lbu	$a4,428($s1)
    addiu	$a5,$s3,1
    sll	$a3,$a5,0x2
    sd	$a3,24($sp)
    movz	$v1,$at,$a4
    addu	$a3,$a3,$s1
    move	$s3,$a5
    b	.L0d9a9d34
    sw	$v1,356($a3)
.L0d9aae80:
    # Line 639
    bnez	$a5,.L0d9ab270
    sltiu	$v1,$a2,5121
    sltiu	$v1,$a2,5123
    bnez	$v1,.L0d9ab080
    li	$a3,5123
    bne	$a2,$a3,.L0d9a9ce8
    nop
    b	.L0d9ab284
    # Line 648
    addiu	$s3,$s3,1
.L0d9aaea4:
    # Line 1300
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanMinmaxSinkLA
    addu	$a5,$s1,$a5
    # Line 1301
    b	.L0d9a9848
    # Line 1300
    sw	$a4,356($a5)
.L0d9aaebc:
    # Line 522
    bne	$at,$v0,.L0d9a9ccc
    # Line 629
    ld	$a3,176($sp)
    # Line 524
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanUnpackByte
    addu	$a3,$s1,$a3
    b	.L0d9a9cc8
    sw	$v1,356($a3)
.L0d9aaedc:
    # Line 1417
    beqz	$ra,.L0d9ab8ac
    move	$t8,$zero
    b	.L0d9a90c0
    move	$t8,$zero
.L0d9aaeec:
    # Line 1446
    bnez	$a4,.L0d9ab38c
    li	$t3,6408
    sltiu	$a5,$a0,6410
    bnez	$a5,.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
    # Line 1446
    li	$a7,6410
    bne	$a0,$a7,.L0d9a9918
    # Line 1500
    sltiu	$t1,$a1,6407
    b	.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
.L0d9aaf14:
    # Line 502
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanUnpackByteI
    addu	$v1,$s1,$v1
    b	.L0d9a9cc8
    sw	$at,356($v1)
.L0d9aaf2c:
    # Line 1303
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanMinmaxSinkRGB
    addu	$a4,$s1,$a4
    # Line 1305
    b	.L0d9a9848
    # Line 1303
    sw	$a3,356($a4)
.L0d9aaf44:
    # Line 1821
    sltu	$a5,$a1,$v0
    bnez	$a5,.L0d9ab39c
    sltiu	$t8,$a1,6410
    sltu	$a6,$v0,$a1
    bnez	$a6,.L0d9ab6cc
    li	$v0,0x80e1
    # Line 1899
    # lw $t9, -28028($gp) # &__glSpanReduceRedNS
    la	$t2,__glSpanReduceRed
    lbu	$t8,428($s1)
    addiu	$s3,$s3,1
    sll	$t3,$s3,0x2
    movz	$t2,$t9,$t8
    addu	$t3,$s1,$t3
    # Line 1902
    b	.L0d9a953c
    # Line 1899
    sw	$t2,356($t3)
.L0d9aaf80:
    # Line 1821
    bnez	$ra,.L0d9ab40c
    sltiu	$at,$a1,6404
    beqz	$at,.L0d9ab760
    li	$v0,6404
    # Line 1833
    la	$a1,__glSpanReduceRedNS
    la	$v0,__glSpanReduceRed
    lbu	$a0,428($s1)
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    movz	$v0,$a1,$a0
    addu	$v1,$s1,$v1
    # Line 1836
    b	.L0d9a953c
    # Line 1833
    sw	$v0,356($v1)
.L0d9aafb4:
    # Line 1500
    bne	$a1,$a2,.L0d9a99ec
    # Line 1542
    ld	$t8,144($sp)
    b	.L0d9a99c4
    # Line 1513
    ld	$t0,104($sp)
.L0d9aafc4:
    # Line 1949
    sltu	$a3,$a2,$a5
    bnez	$a3,.L0d9ab440
    sltu	$a4,$a5,$a2
    bnez	$a4,.L0d9ab66c
    li	$a5,0x8367
    # Line 1994
    addiu	$s3,$s3,1
    sll	$a7,$s3,0x2
    la	$a6,__glSpanPack4444RevUshort
    addu	$a7,$s1,$a7
    sw	$a6,356($a7)
    # Line 1996
    li	$a5,4
    # Line 1997
    b	.L0d9a95a4
    # Line 1996
    sw	$a5,108($s1)
.L0d9aaff8:
    # Line 1005
    bnez	$t2,.L0d9aa6c8
    move	$s3,$zero
.L0d9ab000:
    # Line 1010
    lw	$at,12448($s0)
    b	.L0d9a9700
    sw	$at,8($sp)
.L0d9ab00c:
    # Line 505
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanUnpackUbyteI
    addu	$a3,$s1,$a3
    # Line 506
    b	.L0d9a9cc8
    # Line 505
    sw	$v1,356($a3)
.L0d9ab024:
    # Line 1307
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanMinmaxSinkRGBA
    addu	$a5,$s1,$a5
    # Line 1309
    b	.L0d9a9848
    # Line 1307
    sw	$a4,356($a5)
.L0d9ab03c:
    # Line 1949
    bnez	$v0,.L0d9ab4e4
    sltiu	$t9,$a2,5121
    sltiu	$a6,$a2,5123
    beqz	$a6,.L0d9ab820
    li	$a3,5123
    # Line 1957
    addiu	$s3,$s3,1
    sll	$t1,$s3,0x2
    la	$a7,__glSpanPackShort
    addu	$t1,$s1,$t1
    # Line 1958
    b	.L0d9a95a4
    # Line 1957
    sw	$a7,356($t1)
.L0d9ab068:
    # Line 211
    la	$t2,__glDummyFilter
.L0d9ab06c:
    # Line 214
    move	$t3,$zero
    b	.L0d9a8808
    # Line 213
    sw	$t2,436($s1)
.L0d9ab078:
    # Line 639
    bne	$at,$a2,.L0d9a9ce8
    nop
.L0d9ab080:
    # Line 643
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanClampNegPreFloat
    addu	$a3,$s1,$a3
    b	.L0d9a9ce8
    sw	$v1,356($a3)
.L0d9ab098:
    # Line 2080
    bne	$a1,$a4,.L0d9a9788
    nop
    # Line 2085
    addiu	$s3,$s3,1
    sll	$a6,$s3,0x2
    la	$a5,__glSpanReduceBGR
    addu	$a6,$s1,$a6
    # Line 2086
    b	.L0d9a9788
    # Line 2085
    sw	$a5,356($a6)
.L0d9ab0b8:
    # Line 864
    bne	$a1,$t2,.L0d9aa2c4
    nop
    b	.L0d9a9a50
    # Line 878
    lbu	$at,3220($s0)
.L0d9ab0c8:
    # Line 696
    bne	$a0,$at,.L0d9a9d50
    # Line 847
    la	$at,__glSpanExpandIntensityNS
    la	$a3,__glSpanExpandIntensity
    addiu	$a5,$s3,1
    lbu	$s3,428($s1)
    sll	$a4,$a5,0x2
    sd	$a4,24($sp)
    addu	$a4,$a4,$s1
    movz	$a3,$at,$s3
    sw	$a3,356($a4)
    lbu	$v1,424($s1)
    sd	$a4,16($sp)
    beqz	$v1,.L0d9a9d50
    move	$s3,$a5
    ld	$v1,16($sp)
    # Line 851
    la	$at,__glSpanZeroFillAlpha
    addiu	$s3,$a5,1
    b	.L0d9a9d50
    sw	$at,360($v1)
.L0d9ab114:
    # Line 696
    bne	$a0,$a3,.L0d9a9d50
    nop
    lbu	$a4,30524($s0)
    beqz	$a4,.L0d9abcb0
    # Line 783
    la	$a4,__glSpanExpandLuminanceAlphaNS
    # Line 780
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    la	$a5,__glSpanModifyLuminanceAlpha
    addu	$at,$s1,$at
    b	.L0d9a9d50
    sw	$a5,356($at)
.L0d9ab140:
    # Line 696
    bne	$a0,$v1,.L0d9a9d50
    nop
    lbu	$a3,30524($s0)
    beqz	$a3,.L0d9abcd0
    # Line 737
    la	$a3,__glSpanExpandAlphaNS
    # Line 735
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanModifyAlpha
    addu	$a5,$s1,$a5
    b	.L0d9a9d50
    sw	$a4,356($a5)
.L0d9ab16c:
    # Line 480
    beqz	$at,.L0d9aba0c
    nop
    lw	$a5,36($s1)
    beq	$a5,$a6,.L0d9abb4c
    nop
    # Line 485
    beq	$a5,$t0,.L0d9abb40
    # Line 489
    la	$v1,__glSpanSkipPixels4
    sw	$v1,360($s1)
.L0d9ab18c:
    b	.L0d9a9288
    li	$s3,1
.L0d9ab194:
    # Line 677
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanUnpackBitmap
    addu	$a4,$s1,$a4
    b	.L0d9a9cec
    sw	$a3,356($a4)
.L0d9ab1ac:
    # Line 1567
    beq	$v0,$a5,.L0d9aba14
    # Line 1569
    li	$a5,6407
    # Line 1567
    li	$a6,5123
    beq	$v0,$a6,.L0d9abaac
    # Line 1743
    li	$a1,6401
    # Line 1567
    li	$a7,5125
    beq	$v0,$a7,.L0d9abb60
    # Line 1773
    li	$a6,6402
    # Line 1567
    b	.L0d9a9114
    lw	$a0,8($sp)
.L0d9ab1d4:
    # Line 1020
    bnez	$t2,.L0d9aa8c4
    move	$s3,$zero
.L0d9ab1dc:
    # Line 1025
    lw	$at,12440($s0)
    b	.L0d9a9700
    sw	$at,8($sp)
.L0d9ab1e8:
    # Line 508
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanUnpackShortI
    addu	$a3,$s1,$a3
    # Line 509
    b	.L0d9a9cc8
    # Line 508
    sw	$v1,356($a3)
.L0d9ab200:
    # Line 522
    beq	$v0,$a4,.L0d9abaf0
    nop
    # Line 524
    b	.L0d9a9ccc
    # Line 629
    ld	$a3,176($sp)
.L0d9ab210:
    # Line 522
    beq	$v0,$a5,.L0d9abb10
    nop
    # Line 524
    b	.L0d9a9ccc
    # Line 629
    ld	$a3,176($sp)
.L0d9ab220:
    # Line 522
    beq	$v0,$at,.L0d9abad0
    nop
    # Line 524
    b	.L0d9a9ccc
    # Line 629
    ld	$a3,176($sp)
.L0d9ab230:
    # Line 639
    li	$a5,0x8362
    sltu	$v1,$a2,$a5
    bnez	$v1,.L0d9aa718
    sltu	$a3,$a5,$a2
    beqz	$a3,.L0d9aa700
    li	$a4,0x8363
    bne	$a2,$a4,.L0d9a9ce8
    nop
    b	.L0d9aa704
    # Line 656
    addiu	$s3,$s3,1
.L0d9ab258:
    # Line 511
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    la	$a5,__glSpanUnpackUshortI
    addu	$at,$s1,$at
    # Line 512
    b	.L0d9a9cc8
    # Line 511
    sw	$a5,356($at)
.L0d9ab270:
    # Line 639
    bnez	$v1,.L0d9ab078
    li	$at,5120
    beqz	$a5,.L0d9a9ce8
    nop
    # Line 648
    addiu	$s3,$s3,1
.L0d9ab284:
    sll	$a4,$s3,0x2
    la	$a3,__glSpanClampPreFloat
    addu	$a4,$s1,$a4
    # Line 649
    b	.L0d9a9ce8
    # Line 648
    sw	$a3,356($a4)
.L0d9ab298:
    # Line 935
    beq	$a2,$a5,.L0d9aba98
    li	$t2,5123
    beq	$a2,$t2,.L0d9abb58
    li	$at,5125
    beq	$a2,$at,.L0d9abbd0
    # Line 961
    li	$a5,6402
    # Line 935
    b	.L0d9a9a88
    lw	$s7,4($sp)
.L0d9ab2b8:
    # Line 464
    la	$v1,__glSpanSwapBytes2
    b	.L0d9a9284
    sw	$v1,360($s1)
.L0d9ab2c4:
    # Line 474
    beq	$a5,$t0,.L0d9abaa0
    # Line 480
    la	$a3,__glSpanAlignPixels4
    b	.L0d9aa224
    sw	$a3,360($s1)
.L0d9ab2d4:
    # Line 1035
    bnez	$a4,.L0d9aa9ac
    move	$s3,$zero
.L0d9ab2dc:
    # Line 1040
    lw	$a5,12464($s0)
    b	.L0d9a9700
    sw	$a5,8($sp)
.L0d9ab2e8:
    # Line 522
    beq	$v0,$at,.L0d9abb70
    nop
    # Line 524
    b	.L0d9a9ccc
    # Line 629
    ld	$a3,176($sp)
.L0d9ab2f8:
    # Line 522
    beq	$v0,$v1,.L0d9abb90
    nop
    # Line 524
    b	.L0d9a9ccc
    # Line 629
    ld	$a3,176($sp)
.L0d9ab308:
    b	.L0d9a9ccc
    ld	$a3,176($sp)
.L0d9ab310:
    # Line 1500
    beqz	$a1,.L0d9abac4
    nop
    # Line 1528
    lw	$a2,12444($s0)
    b	.L0d9a99e8
    sw	$a2,8($sp)
.L0d9ab324:
    # Line 701
    la	$a3,__glSpanExpandRed
    addiu	$a5,$s3,1
    lbu	$s3,428($s1)
    sll	$a4,$a5,0x2
    sd	$a4,24($sp)
    movz	$a3,$at,$s3
    addu	$a4,$a4,$s1
    move	$s3,$a5
    b	.L0d9a9d94
    sw	$a3,356($a4)
.L0d9ab34c:
    # Line 514
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanUnpackIntI
    addu	$a3,$s1,$a3
    # Line 515
    b	.L0d9a9cc8
    # Line 514
    sw	$v1,356($a3)
.L0d9ab364:
    b	.L0d9a9b2c
    # Line 341
    move	$s3,$zero
.L0d9ab36c:
    # Line 472
    la	$a4,__glSpanSlowSkipPixels2
    b	.L0d9aa224
    sw	$a4,360($s1)
.L0d9ab378:
    # Line 1050
    bnez	$a5,.L0d9aaae4
    move	$s3,$zero
.L0d9ab380:
    # Line 1055
    lw	$t2,12456($s0)
    b	.L0d9a9700
    sw	$t2,8($sp)
.L0d9ab38c:
    # Line 1446
    bne	$a0,$t3,.L0d9a9918
    # Line 1500
    sltiu	$t1,$a1,6407
    b	.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
.L0d9ab39c:
    # Line 1821
    bnez	$t8,.L0d9ab704
    li	$a3,6409
    sltiu	$t9,$a1,6411
    beqz	$t9,.L0d9ab9e4
    li	$v1,0x8000
    lbu	$ra,430($s1)
    beqz	$ra,.L0d9abcf0
    lbu	$v0,428($s1)
    # Line 1861
    la	$a0,__glSpanReduceRedAlphaNS
    la	$at,__glSpanReduceRedAlpha
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    movz	$at,$a0,$v0
    addu	$v1,$s1,$v1
    b	.L0d9a953c
    sw	$at,356($v1)
.L0d9ab3dc:
    # Line 1821
    bnez	$a3,.L0d9ab738
    li	$t3,6406
    beqz	$v0,.L0d9a953c
    # Line 1823
    la	$t2,__glSpanReduceRGBNS
    la	$a4,__glSpanReduceRGB
    lbu	$a6,428($s1)
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    movz	$a4,$t2,$a6
    addu	$a5,$s1,$a5
    # Line 1826
    b	.L0d9a953c
    # Line 1823
    sw	$a4,356($a5)
.L0d9ab40c:
    # Line 1821
    bne	$a6,$a1,.L0d9a953c
    # Line 1873
    la	$ra,__glSpanReduceRedAlphaNS
    la	$t3,__glSpanReduceRedAlpha
    lbu	$t9,428($s1)
    addiu	$s3,$s3,1
    sll	$t8,$s3,0x2
    movz	$t3,$ra,$t9
    addu	$t8,$s1,$t8
    b	.L0d9a953c
    sw	$t3,356($t8)
.L0d9ab434:
    # Line 218
    move	$t3,$zero
    b	.L0d9a8808
    # Line 217
    sw	$at,436($a1)
.L0d9ab440:
    # Line 1949
    li	$a5,0x8363
    sltu	$v0,$a2,$a5
    bnez	$v0,.L0d9ab7a8
    sltu	$v1,$a5,$a2
    bnez	$v1,.L0d9ab96c
    li	$a3,0x8364
    # Line 1979
    addiu	$s3,$s3,1
    sll	$a2,$s3,0x2
    la	$a1,__glSpanPack565Ushort
    addu	$a2,$s1,$a2
    sw	$a1,356($a2)
    # Line 1981
    li	$a0,3
    # Line 1982
    b	.L0d9a95a4
    # Line 1981
    sw	$a0,108($s1)
.L0d9ab478:
    # Line 1949
    sltu	$a3,$a2,$a5
    bnez	$a3,.L0d9ab7e4
    sltu	$a4,$a5,$a2
    bnez	$a4,.L0d9ab994
    li	$a7,0x8034
    # Line 1989
    addiu	$s3,$s3,1
    sll	$a7,$s3,0x2
    la	$a6,__glSpanPack4444Ushort
    addu	$a7,$s1,$a7
    sw	$a6,356($a7)
    # Line 1991
    li	$a5,4
    # Line 1992
    b	.L0d9a95a4
    # Line 1991
    sw	$a5,108($s1)
.L0d9ab4ac:
    # Line 2036
    addiu	$s3,$s3,1
    sll	$t2,$s3,0x2
    la	$t1,__glSpanPackNonCompByte
    addu	$t2,$s1,$t2
    b	.L0d9a95a4
    sw	$t1,356($t2)
.L0d9ab4c4:
    # Line 2068
    addiu	$s3,$s3,1
    sll	$t8,$s3,0x2
    la	$t3,__glSpanAlignPixels2Dst
    addu	$t8,$s1,$t8
    b	.L0d9a95c4
    sw	$t3,356($t8)
.L0d9ab4dc:
    b	.L0d9aa6a0
    # Line 1001
    lw	$s7,12416($s0)
.L0d9ab4e4:
    # Line 1949
    bnez	$t9,.L0d9ab858
    li	$t1,5120
    beqz	$v0,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1954
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    la	$ra,__glSpanPackUbyte
    addu	$at,$s1,$at
    # Line 1955
    b	.L0d9a95a4
    # Line 1954
    sw	$ra,356($at)
.L0d9ab50c:
    # Line 1479
    addiu	$s3,$s3,1
    sll	$a2,$s3,0x2
    # Line 1480
    la	$v1,__glSpanClampRGB
    # Line 1479
    addu	$a2,$s1,$a2
    # Line 1480
    b	.L0d9a9914
    # Line 1479
    sw	$v1,356($a2)
.L0d9ab524:
    # Line 2039
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanPackNonCompUbyte
    addu	$a4,$s1,$a4
    # Line 2040
    b	.L0d9a95a4
    # Line 2039
    sw	$a3,356($a4)
.L0d9ab53c:
    # Line 696
    bne	$a0,$a5,.L0d9a9d50
    nop
    lbu	$at,30524($s0)
    beqz	$at,.L0d9abe60
    # Line 826
    la	$at,__glSpanPreReorderBGRA
    # Line 824
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanModifyBGRA
    addu	$a3,$s1,$a3
    b	.L0d9a9d50
    sw	$v1,356($a3)
.L0d9ab568:
    b	.L0d9aa8a4
    # Line 1017
    lw	$s7,12408($s0)
.L0d9ab570:
    # Line 522
    beq	$v0,$a4,.L0d9abc10
    nop
    # Line 524
    b	.L0d9a9ccc
    # Line 629
    ld	$a3,176($sp)
.L0d9ab580:
    # Line 1466
    addiu	$s3,$s3,1
    sll	$a7,$s3,0x2
    la	$a5,__glSpanClampRed
    addu	$a7,$s1,$a7
    b	.L0d9a9914
    sw	$a5,356($a7)
.L0d9ab598:
    # Line 1417
    beqz	$ra,.L0d9abc08
    nop
    b	.L0d9a90c0
    move	$t8,$zero
.L0d9ab5a8:
    # Line 2042
    addiu	$s3,$s3,1
    sll	$t2,$s3,0x2
    la	$t1,__glSpanPackNonCompShort
    addu	$t2,$s1,$t2
    # Line 2043
    b	.L0d9a95a4
    # Line 2042
    sw	$t1,356($t2)
.L0d9ab5c0:
    # Line 524
    b	.L0d9a9ccc
    # Line 629
    ld	$a3,176($sp)
.L0d9ab5c8:
    # Line 524
    b	.L0d9a9ccc
    # Line 629
    ld	$a3,176($sp)
.L0d9ab5d0:
    # Line 639
    bnez	$at,.L0d9ab8dc
    li	$v1,5125
    b	.L0d9a9ce8
    nop
.L0d9ab5e0:
    b	.L0d9aa98c
    # Line 1032
    lw	$s7,12432($s0)
.L0d9ab5e8:
    # Line 1469
    addiu	$s3,$s3,1
    sll	$a2,$s3,0x2
    la	$v1,__glSpanClampGreen
    addu	$a2,$s1,$a2
    # Line 1470
    b	.L0d9a9914
    # Line 1469
    sw	$v1,356($a2)
.L0d9ab600:
    # Line 1537
    lw	$a3,12464($s0)
    b	.L0d9a99e8
    sw	$a3,8($sp)
.L0d9ab60c:
    # Line 836
    la	$a4,__glSpanScaleABGR
    lbu	$at,428($s1)
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    movz	$a4,$v1,$at
    addu	$a5,$s1,$a5
    b	.L0d9a9d50
    sw	$a4,356($a5)
.L0d9ab62c:
    # Line 2045
    addiu	$s3,$s3,1
    sll	$a1,$s3,0x2
    la	$a0,__glSpanPackNonCompUshort
    addu	$a1,$s1,$a1
    # Line 2046
    b	.L0d9a95a4
    # Line 2045
    sw	$a0,356($a1)
.L0d9ab644:
    b	.L0d9aaac4
    # Line 1047
    lw	$s7,12424($s0)
.L0d9ab64c:
    b	.L0d9a9a7c
    # Line 898
    move	$s3,$zero
.L0d9ab654:
    # Line 1472
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$a2,__glSpanClampBlue
    addu	$a3,$s1,$a3
    # Line 1473
    b	.L0d9a9914
    # Line 1472
    sw	$a2,356($a3)
.L0d9ab66c:
    # Line 1949
    sltu	$a4,$a2,$a5
    bnez	$a4,.L0d9ab944
    li	$v0,0x8366
    sltu	$a6,$a5,$a2
    bnez	$a6,.L0d9abbe0
    li	$a6,0x8368
    # Line 2014
    addiu	$s3,$s3,1
    sll	$t2,$s3,0x2
    la	$t1,__glSpanPack8888RevUint
    addu	$t2,$s1,$t2
    sw	$t1,356($t2)
    # Line 2016
    li	$a7,4
    # Line 2017
    b	.L0d9a95a4
    # Line 2016
    sw	$a7,108($s1)
.L0d9ab6a4:
    # Line 2048
    addiu	$s3,$s3,1
    sll	$t8,$s3,0x2
    la	$t3,__glSpanPackNonCompInt
    addu	$t8,$s1,$t8
    # Line 2049
    b	.L0d9a95a4
    # Line 2048
    sw	$t3,356($t8)
.L0d9ab6bc:
    # Line 1446
    bne	$a0,$t9,.L0d9a9918
    # Line 1500
    sltiu	$t1,$a1,6407
    b	.L0d9a98f4
    # Line 1461
    ld	$a5,152($sp)
.L0d9ab6cc:
    # Line 1821
    sltu	$ra,$a1,$v0
    bnez	$ra,.L0d9ab9bc
    li	$t8,0x80e0
    sltu	$at,$v0,$a1
    bnez	$at,.L0d9a953c
    # Line 1889
    la	$a1,__glSpanReorderBGRANS
    la	$v0,__glSpanReorderBGRA
    lbu	$a0,428($s1)
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    movz	$v0,$a1,$a0
    addu	$v1,$s1,$v1
    # Line 1892
    b	.L0d9a953c
    # Line 1889
    sw	$v0,356($v1)
.L0d9ab704:
    # Line 1821
    bne	$a1,$a3,.L0d9a953c
    nop
    lbu	$a4,430($s1)
    beqz	$a4,.L0d9abf38
    lbu	$v0,428($s1)
    # Line 1849
    la	$t2,__glSpanReduceRedNS
    la	$a5,__glSpanReduceRed
    addiu	$s3,$s3,1
    sll	$a6,$s3,0x2
    movz	$a5,$t2,$v0
    addu	$a6,$s1,$a6
    b	.L0d9a953c
    sw	$a5,356($a6)
.L0d9ab738:
    # Line 1821
    bne	$a1,$t3,.L0d9a953c
    # Line 1878
    la	$at,__glSpanReduceAlphaNS
    la	$t8,__glSpanReduceAlpha
    lbu	$ra,428($s1)
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    movz	$t8,$at,$ra
    addu	$t9,$s1,$t9
    # Line 1881
    b	.L0d9a953c
    # Line 1878
    sw	$t8,356($t9)
.L0d9ab760:
    # Line 1821
    bne	$a1,$v0,.L0d9a953c
    # Line 1838
    la	$a3,__glSpanReduceGreenNS
    la	$v1,__glSpanReduceGreen
    lbu	$a1,428($s1)
    addiu	$s3,$s3,1
    sll	$a0,$s3,0x2
    movz	$v1,$a3,$a1
    addu	$a0,$s1,$a0
    # Line 1841
    b	.L0d9a953c
    # Line 1838
    sw	$v1,356($a0)
.L0d9ab788:
    # Line 890
    lbu	$a5,30526($s0)
    lw	$a4,12428($s0)
    beqz	$a5,.L0d9abca8
    sw	$a4,4($sp)
    # Line 892
    la	$t2,__glSpanModifyDepth
    li	$s3,1
    b	.L0d9a9a7c
    sw	$t2,360($s1)
.L0d9ab7a8:
    # Line 1949
    li	$a5,0x8362
    sltu	$t3,$a2,$a5
    bnez	$t3,.L0d9aba50
    li	$t2,0x8036
    sltu	$t8,$a5,$a2
    bnez	$t8,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1974
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    la	$ra,__glSpanPack233RevUbyte
    addu	$at,$s1,$at
    sw	$ra,356($at)
    # Line 1976
    li	$t9,3
    # Line 1977
    b	.L0d9a95a4
    # Line 1976
    sw	$t9,108($s1)
.L0d9ab7e4:
    # Line 1949
    li	$a5,0x8032
    sltu	$v0,$a2,$a5
    bnez	$v0,.L0d9aba78
    li	$ra,5125
    sltu	$v1,$a5,$a2
    bnez	$v1,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1969
    addiu	$s3,$s3,1
    sll	$a2,$s3,0x2
    la	$a1,__glSpanPack332Ubyte
    addu	$a2,$s1,$a2
    sw	$a1,356($a2)
    # Line 1971
    li	$a0,3
    # Line 1972
    b	.L0d9a95a4
    # Line 1971
    sw	$a0,108($s1)
.L0d9ab820:
    # Line 1949
    bne	$a2,$a3,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1960
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanPackUshort
    addu	$a5,$s1,$a5
    # Line 1961
    b	.L0d9a95a4
    # Line 1960
    sw	$a4,356($a5)
.L0d9ab840:
    # Line 1475
    addiu	$s3,$s3,1
    sll	$t0,$s3,0x2
    la	$a7,__glSpanClampAlpha
    addu	$t0,$s1,$t0
    # Line 1476
    b	.L0d9a9914
    # Line 1475
    sw	$a7,356($t0)
.L0d9ab858:
    # Line 1949
    bne	$t1,$a2,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1951
    addiu	$s3,$s3,1
    sll	$t3,$s3,0x2
    la	$t2,__glSpanPackByte
    addu	$t3,$s1,$t3
    # Line 1952
    b	.L0d9a95a4
    # Line 1951
    sw	$t2,356($t3)
.L0d9ab878:
    # Line 639
    bne	$a2,$at,.L0d9a9ce8
    nop
    b	.L0d9aa738
    # Line 666
    addiu	$s3,$s3,1
.L0d9ab888:
    # Line 639
    li	$a5,0x8366
    sltu	$v1,$a2,$a5
    bnez	$v1,.L0d9abb30
    li	$a3,0x8365
    sltu	$a3,$a5,$a2
    bnez	$a3,.L0d9a9ce8
    nop
    b	.L0d9aa738
    # Line 666
    addiu	$s3,$s3,1
.L0d9ab8ac:
    # Line 1417
    b	.L0d9a90c4
    li	$a5,1
.L0d9ab8b4:
    # Line 533
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanUnpackUshort
    addu	$a5,$s1,$a5
    # Line 534
    b	.L0d9a9cc8
    # Line 533
    sw	$a4,356($a5)
.L0d9ab8cc:
    # Line 639
    bne	$a2,$at,.L0d9a9ce8
    nop
    b	.L0d9aa738
    # Line 666
    addiu	$s3,$s3,1
.L0d9ab8dc:
    # Line 639
    bne	$a2,$v1,.L0d9a9ce8
    nop
    b	.L0d9ab284
    # Line 648
    addiu	$s3,$s3,1
.L0d9ab8ec:
    # Line 770
    la	$a3,__glSpanExpandLuminance
    addiu	$a5,$s3,1
    lbu	$s3,428($s1)
    sll	$a4,$a5,0x2
    sd	$a4,24($sp)
    movz	$a3,$at,$s3
    addu	$a4,$a4,$s1
    move	$s3,$a5
    b	.L0d9aa570
    sw	$a3,356($a4)
.L0d9ab914:
    # Line 725
    la	$v1,__glSpanExpandBlue
    lbu	$a4,428($s1)
    addiu	$a5,$s3,1
    sll	$a3,$a5,0x2
    sd	$a3,24($sp)
    movz	$v1,$at,$a4
    addu	$a3,$a3,$s1
    move	$s3,$a5
    b	.L0d9aa5cc
    sw	$v1,356($a3)
.L0d9ab93c:
    b	.L0d9a9a7c
    # Line 904
    move	$s3,$zero
.L0d9ab944:
    # Line 1949
    bne	$a2,$v0,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 2004
    addiu	$s3,$s3,1
    sll	$a1,$s3,0x2
    la	$a0,__glSpanPack1555RevUshort
    addu	$a1,$s1,$a1
    sw	$a0,356($a1)
    # Line 2006
    li	$v1,4
    # Line 2007
    b	.L0d9a95a4
    # Line 2006
    sw	$v1,108($s1)
.L0d9ab96c:
    # Line 1949
    bne	$a2,$a3,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1984
    addiu	$s3,$s3,1
    sll	$a6,$s3,0x2
    la	$a5,__glSpanPack565RevUshort
    addu	$a6,$s1,$a6
    sw	$a5,356($a6)
    # Line 1986
    li	$a4,3
    # Line 1987
    b	.L0d9a95a4
    # Line 1986
    sw	$a4,28($s1)
.L0d9ab994:
    # Line 1949
    bne	$a2,$a7,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1999
    addiu	$s3,$s3,1
    sll	$t3,$s3,0x2
    la	$t2,__glSpanPack5551Ushort
    addu	$t3,$s1,$t3
    sw	$t2,356($t3)
    # Line 2001
    li	$t1,4
    # Line 2002
    b	.L0d9a95a4
    # Line 2001
    sw	$t1,108($s1)
.L0d9ab9bc:
    # Line 1821
    bne	$a1,$t8,.L0d9a953c
    # Line 1828
    la	$v0,__glSpanReduceBGRNS
    # lw $t9, -28052($gp) # &__glSpanReduceBGR
    lbu	$at,428($s1)
    addiu	$s3,$s3,1
    sll	$ra,$s3,0x2
    movz	$t9,$v0,$at
    addu	$ra,$s1,$ra
    # Line 1831
    b	.L0d9a953c
    # Line 1828
    sw	$t9,356($ra)
.L0d9ab9e4:
    # Line 1821
    bne	$a1,$v1,.L0d9a953c
    # Line 1894
    la	$a4,__glSpanReorderABGRNS
    la	$a0,__glSpanReorderABGR
    lbu	$a3,428($s1)
    addiu	$s3,$s3,1
    sll	$a1,$s3,0x2
    movz	$a0,$a4,$a3
    addu	$a1,$s1,$a1
    # Line 1897
    b	.L0d9a953c
    # Line 1894
    sw	$a0,356($a1)
.L0d9aba0c:
    b	.L0d9a9288
    # Line 489
    move	$s3,$zero
.L0d9aba14:
    # Line 1569
    beq	$a0,$a5,.L0d9abd10
    # Line 1571
    ld	$a7,64($sp)
    # Line 1569
    li	$a6,0x80e0
    beq	$a0,$a6,.L0d9abd80
    # Line 1607
    ld	$v1,64($sp)
    # Line 1569
    li	$a7,6408
    beq	$a0,$a7,.L0d9abe04
    # Line 1643
    ld	$t2,64($sp)
    # Line 1569
    li	$t0,6401
    beq	$a0,$t0,.L0d9abe94
    li	$t1,6400
    beq	$a0,$t1,.L0d9abea8
    # Line 1694
    ld	$a1,64($sp)
    # Line 1569
    b	.L0d9a9114
    lw	$a0,8($sp)
.L0d9aba50:
    # Line 1949
    bne	$a2,$t2,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 2019
    addiu	$s3,$s3,1
    sll	$t9,$s3,0x2
    la	$t8,__glSpanPack_10_10_10_2_Uint
    addu	$t9,$s1,$t9
    sw	$t8,356($t9)
    # Line 2021
    li	$t3,4
    # Line 2022
    b	.L0d9a95a4
    # Line 2021
    sw	$t3,108($s1)
.L0d9aba78:
    # Line 1949
    bne	$a2,$ra,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 1966
    addiu	$s3,$s3,1
    sll	$v0,$s3,0x2
    la	$at,__glSpanPackUint
    addu	$v0,$s1,$v0
    # Line 1967
    b	.L0d9a95a4
    # Line 1966
    sw	$at,356($v0)
.L0d9aba98:
    b	.L0d9a9a88
    # Line 937
    lw	$s7,4($sp)
.L0d9abaa0:
    # Line 478
    la	$v1,__glSpanAlignPixels2
    b	.L0d9aa224
    sw	$v1,360($s1)
.L0d9abaac:
    # Line 1743
    beq	$a0,$a1,.L0d9abd6c
    li	$a2,6400
    beq	$a0,$a2,.L0d9abdf0
    nop
    b	.L0d9a9114
    lw	$a0,8($sp)
.L0d9abac4:
    # Line 1530
    lw	$a3,12440($s0)
    b	.L0d9a99e8
    sw	$a3,8($sp)
.L0d9abad0:
    # Line 601
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    la	$a5,__glSpanUnpack1555RevUshort
    addu	$at,$s1,$at
    sw	$a5,356($at)
    # Line 603
    li	$a4,4
    # Line 604
    b	.L0d9a9cc8
    # Line 603
    sw	$a4,28($s1)
.L0d9abaf0:
    # Line 581
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    la	$a3,__glSpanUnpack565RevUshort
    addu	$a4,$s1,$a4
    sw	$a3,356($a4)
    # Line 583
    li	$v1,3
    # Line 584
    b	.L0d9a9cc8
    # Line 583
    sw	$v1,28($s1)
.L0d9abb10:
    # Line 596
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanUnpack5551Ushort
    addu	$v1,$s1,$v1
    sw	$at,356($v1)
    # Line 598
    li	$a5,4
    # Line 599
    b	.L0d9a9cc8
    # Line 598
    sw	$a5,28($s1)
.L0d9abb30:
    # Line 639
    bne	$a2,$a3,.L0d9a9ce8
    nop
    b	.L0d9aa738
    # Line 666
    addiu	$s3,$s3,1
.L0d9abb40:
    # Line 487
    la	$a4,__glSpanSkipPixels2
    b	.L0d9ab18c
    sw	$a4,360($s1)
.L0d9abb4c:
    # Line 485
    la	$a5,__glSpanSkipPixels1
    b	.L0d9ab18c
    sw	$a5,360($s1)
.L0d9abb58:
    # Line 951
    b	.L0d9a9a88
    lw	$s7,4($sp)
.L0d9abb60:
    # Line 1773
    beq	$a0,$a6,.L0d9abddc
    nop
    b	.L0d9a9114
    lw	$a0,8($sp)
.L0d9abb70:
    # Line 616
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanUnpack_10_10_10_2_Uint
    addu	$a3,$s1,$a3
    sw	$v1,356($a3)
    # Line 618
    li	$at,4
    # Line 619
    b	.L0d9a9cc8
    # Line 618
    sw	$at,28($s1)
.L0d9abb90:
    # Line 539
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    la	$a4,__glSpanUnpackUint
    addu	$a5,$s1,$a5
    # Line 540
    b	.L0d9a9cc8
    # Line 539
    sw	$a4,356($a5)
.L0d9abba8:
    # Line 758
    la	$at,__glSpanExpandBGR
    lbu	$a3,428($s1)
    addiu	$a5,$s3,1
    sll	$v1,$a5,0x2
    sd	$v1,24($sp)
    movz	$at,$a4,$a3
    addu	$v1,$v1,$s1
    move	$s3,$a5
    b	.L0d9aab98
    sw	$at,356($v1)
.L0d9abbd0:
    # Line 961
    beq	$a1,$a5,.L0d9abe80
    nop
    b	.L0d9a9a88
    lw	$s7,4($sp)
.L0d9abbe0:
    # Line 1949
    bne	$a2,$a6,.L0d9a95a8
    # Line 2053
    ld	$a4,96($sp)
    # Line 2024
    addiu	$s3,$s3,1
    sll	$t2,$s3,0x2
    la	$t1,__glSpanPack_2_10_10_10_RevUint
    addu	$t2,$s1,$t2
    sw	$t1,356($t2)
    # Line 2026
    li	$a7,4
    # Line 2027
    b	.L0d9a95a4
    # Line 2026
    sw	$a7,108($s1)
.L0d9abc08:
    # Line 1417
    b	.L0d9ab8ac
    move	$t8,$zero
.L0d9abc10:
    # Line 621
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    la	$v1,__glSpanUnpack_2_10_10_10_RevUint
    addu	$a3,$s1,$a3
    sw	$v1,356($a3)
    # Line 623
    li	$at,4
    # Line 624
    b	.L0d9a9cc8
    # Line 623
    sw	$at,28($s1)
.L0d9abc30:
    # Line 1523
    lw	$a4,12456($s0)
    b	.L0d9a99e8
    sw	$a4,8($sp)
.L0d9abc3c:
    # Line 800
    lbu	$a5,428($s1)
    beqz	$a5,.L0d9a9d50
    nop
    # Line 803
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    la	$at,__glSpanScaleRGBA
    addu	$v1,$s1,$v1
    b	.L0d9a9d50
    sw	$at,356($v1)
.L0d9abc60:
    # Line 713
    la	$a3,__glSpanExpandGreen
    addiu	$a5,$s3,1
    lbu	$s3,428($s1)
    sll	$a4,$a5,0x2
    sd	$a4,24($sp)
    movz	$a3,$at,$s3
    addu	$a4,$a4,$s1
    move	$s3,$a5
    b	.L0d9aac14
    sw	$a3,356($a4)
.L0d9abc88:
    # Line 793
    la	$v1,__glSpanExpandRedAlpha
    lbu	$a4,428($s1)
    addiu	$s3,$s3,1
    sll	$a3,$s3,0x2
    movz	$v1,$a5,$a4
    addu	$a3,$s1,$a3
    b	.L0d9a9d50
    sw	$v1,356($a3)
.L0d9abca8:
    b	.L0d9a9a7c
    # Line 892
    move	$s3,$zero
.L0d9abcb0:
    # Line 783
    la	$at,__glSpanExpandLuminanceAlpha
    lbu	$a3,428($s1)
    addiu	$s3,$s3,1
    sll	$v1,$s3,0x2
    movz	$at,$a4,$a3
    addu	$v1,$s1,$v1
    b	.L0d9a9d50
    sw	$at,356($v1)
.L0d9abcd0:
    # Line 737
    la	$a5,__glSpanExpandAlpha
    lbu	$v1,428($s1)
    addiu	$s3,$s3,1
    sll	$at,$s3,0x2
    movz	$a5,$a3,$v1
    addu	$at,$s1,$at
    b	.L0d9a9d50
    sw	$a5,356($at)
.L0d9abcf0:
    # Line 1866
    la	$a6,__glSpanReduceRedAlphaNS
    la	$a4,__glSpanReduceLuminanceAlpha
    addiu	$s3,$s3,1
    sll	$a5,$s3,0x2
    movz	$a4,$a6,$v0
    addu	$a5,$s1,$a5
    b	.L0d9a953c
    sw	$a4,356($a5)
.L0d9abd10:
    # Line 1571
    andi	$a7,$a7,0xff
    beqz	$a7,.L0d9abf58
    # Line 1578
    la	$a4,__glSpanUnpackRGBubyte
    # Line 1571
    move	$s3,$zero
.L0d9abd20:
    # Line 1578
    lbu	$t0,30524($s0)
    beqz	$t0,.L0d9abf64
    nop
    # Line 1589
    lbu	$t1,30588($s0)
    beqz	$t1,.L0d9ac118
    # Line 1593
    nop	# was lw $t9, -28156($gp) # &__glBuildRGBAModifyTables
    # Line 1595
    lw	$t8,30592($s0)
.L0d9abd3c:
    # Line 1596
    lw	$t9,30596($s0)
    # Line 1597
    lw	$ra,30600($s0)
    # Line 1598
    lw	$at,30604($s0)
    sw	$at,30584($s0)
    # Line 1597
    sw	$ra,30580($s0)
    # Line 1596
    sw	$t9,30576($s0)
    # Line 1602
    la	$t3,__glSpanRenderRGBubyte
    # Line 1600
    la	$a0,__glSpanRenderRGBubyte2
    ld	$t2,104($sp)
    # Line 1595
    sw	$t8,30572($s0)
    b	.L0d9a9114
    movz	$a0,$t3,$t2
.L0d9abd6c:
    # Line 1745
    lbu	$v0,30527($s0)
    beqz	$v0,.L0d9abf98
    # Line 1752
    la	$t8,__glSpanRenderStencilUshort
    b	.L0d9a9114
    lw	$a0,8($sp)
.L0d9abd80:
    # Line 1607
    andi	$v1,$v1,0xff
    beqz	$v1,.L0d9abfac
    # Line 1614
    nop	# was lw $t9, -27516($gp) # &__glSpanUnpackRGBubyte
    # Line 1607
    move	$s3,$zero
.L0d9abd90:
    # Line 1614
    lbu	$a0,30524($s0)
    beqz	$a0,.L0d9abfb8
    nop
    # Line 1625
    lbu	$a1,30588($s0)
    beqz	$a1,.L0d9ac12c
    # Line 1629
    nop	# was lw $t9, -28156($gp) # &__glBuildRGBAModifyTables
    # Line 1631
    lw	$a4,30592($s0)
.L0d9abdac:
    # Line 1632
    lw	$a5,30596($s0)
    # Line 1633
    lw	$a6,30600($s0)
    # Line 1634
    lw	$a7,30604($s0)
    sw	$a7,30584($s0)
    # Line 1633
    sw	$a6,30580($s0)
    # Line 1632
    sw	$a5,30576($s0)
    # Line 1638
    la	$a3,__glSpanRenderBGRubyte
    # Line 1636
    la	$a0,__glSpanRenderBGRubyte2
    ld	$a2,104($sp)
    # Line 1631
    sw	$a4,30572($s0)
    b	.L0d9a9114
    movz	$a0,$a3,$a2
.L0d9abddc:
    # Line 1775
    lbu	$t0,30526($s0)
    beqz	$t0,.L0d9abfec
    nop
    b	.L0d9a9114
    # Line 1796
    lw	$a0,8($sp)
.L0d9abdf0:
    # Line 1757
    lbu	$t1,30525($s0)
    beqz	$t1,.L0d9ac034
    # Line 1764
    la	$t0,__glSpanRenderCIushort
    b	.L0d9a9114
    lw	$a0,8($sp)
.L0d9abe04:
    # Line 1643
    andi	$t2,$t2,0xff
    beqz	$t2,.L0d9ac048
    # Line 1650
    la	$t1,__glSpanUnpackRGBAubyte
    # Line 1643
    move	$s3,$zero
.L0d9abe14:
    # Line 1650
    lbu	$t3,30524($s0)
    beqz	$t3,.L0d9ac054
    nop
    # Line 1657
    lbu	$t8,30588($s0)
    beqz	$t8,.L0d9ac140
    # Line 1660
    nop	# was lw $t9, -28156($gp) # &__glBuildRGBAModifyTables
    # Line 1665
    lw	$v0,30604($s0)
.L0d9abe30:
    sw	$v0,30584($s0)
    # Line 1664
    lw	$at,30600($s0)
    sw	$at,30580($s0)
    # Line 1663
    lw	$ra,30596($s0)
    sw	$ra,30576($s0)
    # Line 1662
    lw	$t9,30592($s0)
    sw	$t9,30572($s0)
.L0d9abe4c:
    # Line 1670
    la	$a1,__glSpanRenderRGBAubyte
    # Line 1668
    la	$a0,__glSpanRenderRGBAubyte2
    ld	$v1,104($sp)
    b	.L0d9a9114
    movz	$a0,$a1,$v1
.L0d9abe60:
    # Line 826
    la	$a3,__glSpanScaleBGRA
    lbu	$a5,428($s1)
    addiu	$s3,$s3,1
    sll	$a4,$s3,0x2
    movz	$a3,$at,$a5
    addu	$a4,$s1,$a4
    b	.L0d9a9d50
    sw	$a3,356($a4)
.L0d9abe80:
    # Line 963
    lbu	$v1,30526($s0)
    beqz	$v1,.L0d9ac078
    nop
    b	.L0d9a9a88
    # Line 978
    lw	$s7,4($sp)
.L0d9abe94:
    # Line 1674
    lbu	$a0,30527($s0)
    beqz	$a0,.L0d9ac0a4
    ld	$a0,64($sp)
    b	.L0d9a9114
    # Line 1689
    lw	$a0,8($sp)
.L0d9abea8:
    # Line 1694
    andi	$a1,$a1,0xff
    beqz	$a1,.L0d9ac0f0
    # Line 1701
    la	$a7,__glSpanUnpackIndexUbyte
    # Line 1694
    move	$s3,$zero
.L0d9abeb8:
    # Line 1701
    lbu	$a2,30525($s0)
    beqz	$a2,.L0d9ac0fc
    nop
    # Line 1709
    lbu	$a3,3220($s0)
    beqz	$a3,.L0d9ac0c8
    nop
    lbu	$a4,30616($s0)
    beqz	$a4,.L0d9ac154
    # Line 1714
    nop	# was lw $t9, -28148($gp) # &__glBuildItoRGBAModifyTables
    # Line 1716
    lw	$a7,30620($s0)
.L0d9abee0:
    # Line 1717
    lw	$t0,30624($s0)
    # Line 1718
    lw	$t1,30628($s0)
    # Line 1719
    lw	$t2,30632($s0)
    sw	$t2,30584($s0)
    # Line 1718
    sw	$t1,30580($s0)
    # Line 1717
    sw	$t0,30576($s0)
    # Line 1723
    la	$a6,__glSpanRenderCIubyte3
    # Line 1721
    la	$a0,__glSpanRenderCIubyte4
    ld	$a5,104($sp)
    # Line 1716
    sw	$a7,30572($s0)
    b	.L0d9a9114
    movz	$a0,$a6,$a5
.L0d9abf10:
    # Line 348
    li	$at,6410
    bne	$at,$a1,.L0d9aa1e0
    li	$a3,6409
    b	.L0d9a8bf0
    # Line 357
    sd	$zero,88($sp)
.L0d9abf24:
    # Line 348
    li	$v1,6403
    bne	$v1,$a1,.L0d9aa1e8
    li	$a4,6403
    b	.L0d9a8bf0
    # Line 357
    sd	$zero,88($sp)
.L0d9abf38:
    # Line 1853
    la	$a3,__glSpanReduceRedNS
    la	$a0,__glSpanReduceLuminance
    addiu	$s3,$s3,1
    sll	$a1,$s3,0x2
    movz	$a0,$a3,$v0
    addu	$a1,$s1,$a1
    b	.L0d9a953c
    sw	$a0,356($a1)
.L0d9abf58:
    # Line 1578
    li	$s3,1
    b	.L0d9abd20
    sw	$a4,360($s1)
.L0d9abf64:
    # Line 1582
    lw	$a7,30548($s0)
    # Line 1583
    lw	$t0,30552($s0)
    # Line 1584
    lw	$t1,30556($s0)
    # Line 1585
    lw	$t2,30560($s0)
    sw	$t2,30584($s0)
    # Line 1584
    sw	$t1,30580($s0)
    # Line 1583
    sw	$t0,30576($s0)
    # Line 1589
    la	$a6,__glSpanRenderRGBubyte
    # Line 1587
    la	$a0,__glSpanRenderRGBubyte2
    ld	$a5,104($sp)
    # Line 1582
    sw	$a7,30572($s0)
    b	.L0d9a9114
    movz	$a0,$a6,$a5
.L0d9abf98:
    # Line 1750
    la	$a0,__glSpanRenderStencilUshort2
    ld	$t3,104($sp)
    # Line 1748
    addiu	$s3,$s3,-1
    b	.L0d9a9114
    movz	$a0,$t8,$t3
.L0d9abfac:
    # Line 1614
    li	$s3,1
    b	.L0d9abd90
    sw	$t9,360($s1)
.L0d9abfb8:
    # Line 1618
    lw	$v0,30548($s0)
    # Line 1619
    lw	$v1,30552($s0)
    # Line 1621
    lw	$a1,30560($s0)
    sw	$a1,30584($s0)
    # Line 1619
    sw	$v1,30576($s0)
    # Line 1625
    la	$at,__glSpanRenderBGRubyte
    ld	$ra,104($sp)
    # Line 1620
    lw	$a0,30556($s0)
    sw	$a0,30580($s0)
    # Line 1623
    la	$a0,__glSpanRenderBGRubyte2
    # Line 1618
    sw	$v0,30572($s0)
    b	.L0d9a9114
    movz	$a0,$at,$ra
.L0d9abfec:
    # Line 1777
    lw	$a3,31304($s0)
    lw	$a4,31316($s0)
    # Line 1776
    lw	$a2,31300($s0)
    # Line 1777
    srlv	$a3,$a3,$a4
    addiu	$a5,$a2,1
    addiu	$a4,$a3,1
    and	$a2,$a2,$a5
    and	$a3,$a3,$a4
    sltiu	$a2,$a2,1
    sltiu	$a3,$a3,1
    and	$a2,$a2,$a3
    beqz	$a2,.L0d9ac168
    # Line 1796
    la	$a6,__glSpanRenderDepthUint
    # Line 1794
    la	$a0,__glSpanRenderDepthUint1
    ld	$a5,104($sp)
    # Line 1791
    addiu	$s3,$s3,-1
    b	.L0d9a9114
    movz	$a0,$a6,$a5
.L0d9ac034:
    # Line 1762
    la	$a0,__glSpanRenderCIushort2
    ld	$a7,104($sp)
    # Line 1760
    addiu	$s3,$s3,-1
    b	.L0d9a9114
    movz	$a0,$t0,$a7
.L0d9ac048:
    # Line 1650
    li	$s3,1
    b	.L0d9abe14
    sw	$t1,360($s1)
.L0d9ac054:
    # Line 1657
    lw	$t9,30560($s0)
    sw	$t9,30584($s0)
    # Line 1656
    lw	$t8,30556($s0)
    sw	$t8,30580($s0)
    # Line 1655
    lw	$t3,30552($s0)
    sw	$t3,30576($s0)
    # Line 1654
    lw	$t2,30548($s0)
    # Line 1657
    b	.L0d9abe4c
    # Line 1654
    sw	$t2,30572($s0)
.L0d9ac078:
    # Line 964
    lw	$at,31304($s0)
    lw	$v1,31316($s0)
    # Line 978
    la	$a3,__glSpanReadDepthUint
    # Line 964
    srlv	$at,$at,$v1
    # Line 978
    lw	$s7,4($sp)
    # Line 964
    addiu	$v1,$at,1
    and	$at,$at,$v1
    movz	$s7,$a3,$at
    # Line 976
    addiu	$v1,$s3,-1
    b	.L0d9a9a88
    movz	$s3,$v1,$at
.L0d9ac0a4:
    # Line 1674
    andi	$a0,$a0,0xff
    beqz	$a0,.L0d9ac170
    # Line 1683
    la	$t3,__glSpanUnpackIndexUbyte
    # Line 1674
    move	$s3,$zero
.L0d9ac0b4:
    # Line 1689
    la	$a2,__glSpanRenderStencilUbyte
    # Line 1687
    la	$a0,__glSpanRenderStencilUbyte2
    ld	$a1,104($sp)
    b	.L0d9a9114
    movz	$a0,$a2,$a1
.L0d9ac0c8:
    # Line 1723
    lbu	$a3,30608($s0)
    beqz	$a3,.L0d9ac17c
    # Line 1727
    nop	# was lw $t9, -28152($gp) # &__glBuildItoIModifyTables
    # Line 1729
    lw	$a6,30612($s0)
.L0d9ac0d8:
    # Line 1733
    la	$a5,__glSpanRenderCIubyte
    # Line 1731
    la	$a0,__glSpanRenderCIubyte2
    ld	$a4,104($sp)
    # Line 1729
    sw	$a6,30568($s0)
    b	.L0d9a9114
    movz	$a0,$a5,$a4
.L0d9ac0f0:
    # Line 1701
    li	$s3,1
    b	.L0d9abeb8
    sw	$a7,360($s1)
.L0d9ac0fc:
    # Line 1705
    lw	$t2,30564($s0)
    # Line 1709
    la	$t1,__glSpanRenderCIubyte
    # Line 1707
    la	$a0,__glSpanRenderCIubyte2
    ld	$t0,104($sp)
    # Line 1705
    sw	$t2,30568($s0)
    b	.L0d9a9114
    movz	$a0,$t1,$t0
.L0d9ac118:
    # Line 1593
    move	$a0,$s0
    jal	__glBuildItoIModifyTables
    addiu	$a1,$s0,30524
    b	.L0d9abd3c
    # Line 1595
    lw	$t8,30592($s0)
.L0d9ac12c:
    # Line 1629
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$s0,30524
    b	.L0d9abdac
    # Line 1631
    lw	$a4,30592($s0)
.L0d9ac140:
    # Line 1660
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$s0,30524
    b	.L0d9abe30
    # Line 1665
    lw	$v0,30604($s0)
.L0d9ac154:
    # Line 1714
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$s0,30524
    b	.L0d9abee0
    # Line 1716
    lw	$a7,30620($s0)
.L0d9ac168:
    b	.L0d9a9114
    # Line 1796
    lw	$a0,8($sp)
.L0d9ac170:
    # Line 1683
    li	$s3,1
    b	.L0d9ac0b4
    sw	$t3,360($s1)
.L0d9ac17c:
    # Line 1727
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$s0,30524
    b	.L0d9ac0d8
    # Line 1729
    lw	$a6,30612($s0)
.end PickSpanModifiers

# Function: __glClipDrawPixels
# Declared: Line 2175 (Source lines: 2176-2378)
# Address: 0x0d9ac190 - 0x0d9ac674 (Size: 1252 bytes, Frame: 0)
.globl __glClipDrawPixels
.ent __glClipDrawPixels
__glClipDrawPixels:
    # Line 2189
    mtc1	$zero,$f9
    # Line 2187
    lwc1	$f4,160($a1)
    # Line 2189
    c.eq.s	$f4,$f9
    # Line 2176
    lui	$v0,0xa
    addiu	$v0,$v0,19452
    # Line 2188
    lwc1	$f5,164($a1)
    # Line 2189
    bc1t	.L0d9ac2ac
    # Line 2176
    addu	$at,$t9,$v0
    # Line 2189
    c.eq.s $f5,$f9
    bc1t .L0d9ac2ac
    nop
    # Line 2197
    lw	$a5,29712($a0)
    # Line 2196
    lw	$a4,29708($a0)
    # Line 2197
    mtc1	$a5,$f12
    # Line 2195
    lw	$a3,29704($a0)
    # Line 2196
    mtc1	$a4,$f7
    # Line 2194
    lw	$a2,29700($a0)
    # Line 2195
    mtc1	$a3,$f13
    # Line 2197
    cvt.s.w	$f12,$f12
    # Line 2194
    mtc1	$a2,$f8
    # Line 2196
    cvt.s.w	$f7,$f7
    lwc1	$f11,3680($a0)
    # Line 2203
    lw	$a5,1792($a0)
    # Line 2195
    cvt.s.w	$f13,$f13
    # Line 2194
    cvt.s.w	$f8,$f8
    lwc1	$f10,3540($a0)
    # Line 2197
    sub.s	$f12,$f12,$f11
    # Line 2203
    dsll32	$v1,$a5,0x5
    # Line 2196
    sub.s	$f7,$f7,$f11
    # Line 2195
    add.s	$f13,$f13,$f10
    # Line 2203
    bgez	$v1,.L0d9ac2f8
    # Line 2194
    add.s	$f8,$f8,$f10
    # Line 2203
    lw	$a4,916($a0)
    beqz	$a4,.L0d9ac2fc
    # Line 2209
    dsll32	$t3,$a5,0x4
    # Line 2203
    lw	$t0,920($a0)
    beqz	$t0,.L0d9ac2f8
    # Line 2207
    addiu	$a7,$t0,-1
    # Line 2206
    addiu	$a6,$a4,-1
.L0d9ac22c:
    # Line 2220
    lw	$a5,172($a1)
.L0d9ac230:
    # Line 2219
    lw	$a4,168($a1)
    # Line 2220
    subu	$a5,$a5,$a7
    # Line 2247
    mtc1	$a5,$f14
    # Line 2219
    subu	$a4,$a4,$a6
    # Line 2246
    mtc1	$a4,$f10
    # Line 2247
    cvt.s.w	$f14,$f14
    # Line 2246
    cvt.s.w	$f10,$f10
    # Line 2247
    c.lt.s $f9,$f4
    # Line 2223
    lwc1	$f11,200($a1)
    # Line 2247
    madd.s	$f14,$f11,$f14,$f5
    # Line 2222
    lwc1	$f6,196($a1)
    # Line 2247
    bc1f .L0d9ac2b4
    # Line 2246
    madd.s	$f10,$f6,$f10,$f4
    # Line 2247
    c.lt.s $f8,$f6
    bc1f .L0d9ac288
    nop
    # Line 2255
    lwc1	$f8,3680($a0)
    add.s	$f8,$f8,$f6
    trunc.w.s	$f8,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f15,3540($a0)
    add.s	$f8,$f8,$f15
.L0d9ac288:
    # Line 2257
    sub.s	$f15,$f8,$f6
    div.s	$f15,$f15,$f4
    trunc.w.s	$f15,$f15
    mfc1	$t0,$f15
    slt	$t1,$t0,$a4
    bnez	$t1,.L0d9ac338
    # Line 2258
    move	$v0,$zero
    # Line 2378
    jr	$ra
    nop
.L0d9ac2ac:
    jr	$ra
    # Line 2190
    move	$v0,$zero
.L0d9ac2b4:
    # Line 2278
    c.lt.s $f6,$f7
    bc1f .L0d9ac2d4
    nop
    # Line 2284
    lwc1	$f15,3680($a0)
    add.s	$f7,$f15,$f6
    trunc.w.s	$f7,$f7
    cvt.s.w	$f7,$f7
    sub.s	$f7,$f7,$f15
.L0d9ac2d4:
    # Line 2286
    sub.s	$f15,$f7,$f6
    div.s	$f15,$f15,$f4
    trunc.w.s	$f15,$f15
    mfc1	$t0,$f15
    slt	$t2,$t0,$a4
    bnez	$t2,.L0d9ac3a8
    # Line 2287
    move	$v0,$zero
    # Line 2378
    jr	$ra
    nop
.L0d9ac2f8:
    # Line 2209
    dsll32	$t3,$a5,0x4
.L0d9ac2fc:
    # Line 2217
    move	$a6,$zero
    # Line 2209
    bgez	$t3,.L0d9ac508
    # Line 2217
    move	$a7,$zero
    # Line 2209
    lw	$t8,1000($a0)
    beqz	$t8,.L0d9ac508
    nop
    lw	$t9,1004($a0)
    beqz	$t9,.L0d9ac508
    # Line 2212
    addiu	$t0,$a0,936
    sw	$t0,436($a1)
    # Line 2214
    lw	$a7,1004($a0)
    # Line 2213
    lw	$a6,1000($a0)
    # Line 2214
    addiu	$a7,$a7,-1
    b	.L0d9ac22c
    # Line 2213
    addiu	$a6,$a6,-1
.L0d9ac338:
    # Line 2263
    cvt.s.w	$f18,$f15
    madd.s	$f18,$f6,$f18,$f4
    # Line 2261
    trunc.w.s	$f17,$f8
    swc1	$f17,204($a1)
    # Line 2263
    lwc1	$f16,3680($a0)
    # Line 2264
    lw	$t1,48($a1)
    c.lt.s $f10,$f7
    addu	$t1,$t1,$t0
    sw	$t1,48($a1)
    # Line 2263
    add.s	$f16,$f16,$f18
    # Line 2260
    subu	$a4,$a4,$t0
    # Line 2261
    mfc1	$t1,$f17
    # Line 2264
    bc1f .L0d9ac384
    # Line 2263
    swc1	$f16,196($a1)
    # Line 2270
    lwc1	$f8,3680($a0)
    add.s	$f7,$f8,$f10
    trunc.w.s	$f7,$f7
    cvt.s.w	$f7,$f7
    sub.s	$f7,$f7,$f8
.L0d9ac384:
    sub.s	$f8,$f10,$f7
    div.s	$f8,$f8,$f4
    trunc.w.s	$f8,$f8
    mfc1	$t0,$f8
    slt	$t2,$t0,$a4
    bnez	$t2,.L0d9ac424
    # Line 2273
    move	$v0,$zero
    # Line 2378
    jr	$ra
    nop
.L0d9ac3a8:
    # Line 2292
    cvt.s.w	$f19,$f15
    madd.s	$f19,$f6,$f19,$f4
    # Line 2290
    trunc.w.s	$f17,$f7
    swc1	$f17,204($a1)
    # Line 2292
    lwc1	$f16,3680($a0)
    # Line 2293
    c.lt.s $f8,$f10
    # Line 2292
    lwc1	$f18,3544($a0)
    # Line 2293
    lw	$t3,48($a1)
    # Line 2292
    add.s	$f16,$f16,$f19
    # Line 2293
    addu	$t3,$t3,$t0
    sw	$t3,48($a1)
    # Line 2292
    sub.s	$f16,$f16,$f18
    # Line 2289
    subu	$a4,$a4,$t0
    # Line 2290
    mfc1	$t1,$f17
    # Line 2293
    bc1f .L0d9ac400
    # Line 2292
    swc1	$f16,196($a1)
    # Line 2298
    lwc1	$f8,3680($a0)
    add.s	$f8,$f8,$f10
    trunc.w.s	$f8,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f15,3540($a0)
    add.s	$f8,$f8,$f15
.L0d9ac400:
    sub.s	$f15,$f10,$f8
    div.s	$f15,$f15,$f4
    trunc.w.s	$f15,$f15
    mfc1	$t0,$f15
    slt	$t8,$t0,$a4
    bnez	$t8,.L0d9ac448
    # Line 2301
    move	$v0,$zero
    # Line 2378
    jr	$ra
    nop
.L0d9ac424:
    # Line 2277
    trunc.w.s	$f16,$f7
    mfc1	$t2,$f16
    # Line 2275
    subu	$a4,$a4,$t0
    # Line 2277
    addiu	$t3,$t2,1
    sw	$t3,212($a1)
    # Line 2278
    subu	$t2,$t2,$t1
    addiu	$t2,$t2,1
    b	.L0d9ac468
    sw	$t2,216($a1)
.L0d9ac448:
    # Line 2305
    trunc.w.s	$f17,$f8
    mfc1	$t2,$f17
    addiu	$t3,$t2,-1
    sw	$t3,212($a1)
    # Line 2306
    subu	$t2,$t1,$t2
    # Line 2303
    subu	$a4,$a4,$t0
    # Line 2306
    addiu	$t2,$t2,1
    sw	$t2,216($a1)
.L0d9ac468:
    c.lt.s $f9,$f5
    bc1f .L0d9ac4c0
    nop
    c.lt.s	$f13,$f11
    bc1f	.L0d9ac498
    nop
    # Line 2314
    lwc1	$f13,3680($a0)
    add.s	$f13,$f13,$f11
    trunc.w.s	$f13,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f15,3540($a0)
    add.s	$f13,$f13,$f15
.L0d9ac498:
    # Line 2316
    sub.s	$f6,$f13,$f11
    div.s	$f6,$f6,$f5
    trunc.w.s	$f6,$f6
    mfc1	$t0,$f6
    slt	$t8,$t0,$a5
    # Line 2317
    move	$v0,$zero
    # Line 2316
    bnez	$t8,.L0d9ac510
    # Line 2319
    subu	$a5,$a5,$t0
    # Line 2378
    jr	$ra
    nop
.L0d9ac4c0:
    # Line 2336
    c.lt.s $f11,$f12
    bc1f .L0d9ac4e0
    nop
    # Line 2342
    lwc1	$f15,3680($a0)
    add.s	$f12,$f15,$f11
    trunc.w.s	$f12,$f12
    cvt.s.w	$f12,$f12
    sub.s	$f12,$f12,$f15
.L0d9ac4e0:
    # Line 2344
    sub.s	$f6,$f12,$f11
    div.s	$f6,$f6,$f5
    trunc.w.s	$f6,$f6
    mfc1	$t0,$f6
    slt	$t9,$t0,$a5
    # Line 2345
    move	$v0,$zero
    # Line 2344
    bnez	$t9,.L0d9ac580
    # Line 2347
    subu	$a5,$a5,$t0
    # Line 2378
    jr	$ra
    nop
.L0d9ac508:
    b	.L0d9ac230
    # Line 2220
    lw	$a5,172($a1)
.L0d9ac510:
    # Line 2322
    cvt.s.w	$f10,$f6
    madd.s	$f10,$f11,$f10,$f5
    # Line 2320
    trunc.w.s	$f8,$f13
    swc1	$f8,208($a1)
    # Line 2322
    lwc1	$f7,3680($a0)
    # Line 2323
    lw	$v0,52($a1)
    c.lt.s $f14,$f12
    addu	$v0,$v0,$t0
    sw	$v0,52($a1)
    # Line 2322
    add.s	$f7,$f7,$f10
    # Line 2320
    mfc1	$t1,$f8
    # Line 2332
    move	$v0,$zero
    # Line 2323
    bc1f .L0d9ac55c
    # Line 2322
    swc1	$f7,200($a1)
    # Line 2329
    lwc1	$f13,3680($a0)
    add.s	$f12,$f13,$f14
    trunc.w.s	$f12,$f12
    cvt.s.w	$f12,$f12
    sub.s	$f12,$f12,$f13
.L0d9ac55c:
    sub.s	$f13,$f14,$f12
    div.s	$f13,$f13,$f5
    trunc.w.s	$f13,$f13
    mfc1	$a0,$f13
    slt	$v1,$a0,$a5
    bnez	$v1,.L0d9ac5fc
    # Line 2334
    subu	$a5,$a5,$a0
    # Line 2378
    jr	$ra
    nop
.L0d9ac580:
    # Line 2351
    cvt.s.w	$f18,$f6
    madd.s	$f18,$f11,$f18,$f5
    # Line 2348
    trunc.w.s	$f16,$f12
    swc1	$f16,208($a1)
    # Line 2351
    lwc1	$f15,3680($a0)
    # Line 2352
    c.lt.s $f13,$f14
    # Line 2351
    lwc1	$f17,3544($a0)
    # Line 2352
    lw	$a2,52($a1)
    # Line 2351
    add.s	$f15,$f15,$f18
    # Line 2352
    addu	$a2,$a2,$t0
    sw	$a2,52($a1)
    # Line 2351
    sub.s	$f15,$f15,$f17
    # Line 2360
    move	$v0,$zero
    # Line 2348
    mfc1	$t1,$f16
    # Line 2352
    bc1f .L0d9ac5d8
    # Line 2351
    swc1	$f15,200($a1)
    # Line 2357
    lwc1	$f13,3680($a0)
    add.s	$f13,$f13,$f14
    trunc.w.s	$f13,$f13
    cvt.s.w	$f13,$f13
    lwc1	$f15,3540($a0)
    add.s	$f13,$f13,$f15
.L0d9ac5d8:
    sub.s	$f15,$f14,$f13
    div.s	$f15,$f15,$f5
    trunc.w.s	$f15,$f15
    mfc1	$a0,$f15
    slt	$a3,$a0,$a5
    bnez	$a3,.L0d9ac614
    # Line 2362
    subu	$a5,$a5,$a0
    # Line 2378
    jr	$ra
    nop
.L0d9ac5fc:
    # Line 2336
    trunc.w.s	$f16,$f12
    mfc1	$t0,$f16
    subu	$t0,$t0,$t1
    addiu	$t0,$t0,1
    b	.L0d9ac628
    sw	$t0,220($a1)
.L0d9ac614:
    # Line 2364
    trunc.w.s	$f17,$f13
    mfc1	$t3,$f17
    subu	$t3,$t1,$t3
    addiu	$t3,$t3,1
    sw	$t3,220($a1)
.L0d9ac628:
    # Line 2368
    c.lt.s $f4,$f9
    addu	$t8,$a5,$a7
    sw	$t8,172($a1)
    # Line 2367
    addu	$a0,$a4,$a6
    # Line 2368
    bc1f .L0d9ac644
    # Line 2367
    sw	$a0,168($a1)
    # Line 2370
    neg.s	$f4,$f4
.L0d9ac644:
    lwc1	$f18,_lit_3f800000
    c.le.s $f18,$f4
    # Line 2378
    li	$v0,1
    # Line 2370
    bc1f .L0d9ac664
    # Line 2374
    addu	$t9,$t2,$a6
    # Line 2372
    sw	$a0,180($a1)
    # Line 2378
    jr	$ra
    # Line 2372
    sw	$a0,184($a1)
.L0d9ac664:
    # Line 2374
    sw	$t9,180($a1)
    sw	$t9,184($a1)
    # Line 2378
    jr	$ra
    nop
.end __glClipDrawPixels

# Function: __glComputeSpanPixelArray
# Declared: Line 2395 (Source lines: 2396-2454)
# Address: 0x0d9ac680 - 0x0d9ac884 (Size: 516 bytes, Frame: 0)
.globl __glComputeSpanPixelArray
.ent __glComputeSpanPixelArray
__glComputeSpanPixelArray:
    # Line 2396
    lui	$v0,0xa
    addiu	$v0,$v0,18188
    # Line 2402
    lwc1	$f5,160($a1)
    # Line 2396
    addu	$at,$t9,$v0
    # Line 2403
    lwc1	$f4,_lit_bf800000
    c.lt.s	$f4,$f5
    bc1f	.L0d9ac6d4
    nop
    lwc1	$f0,3544($a0)
    c.lt.s $f5,$f0
    bc1f .L0d9ac6d4
    nop
    # Line 2407
    lw	$a4,168($a1)
    # Line 2412
    lwc1	$f4,196($a1)
    blez	$a4,.L0d9ac85c
    # Line 2409
    lw	$a6,312($a1)
    # Line 2412
    trunc.w.s	$f1,$f4
    move	$a7,$zero
    move	$a0,$zero
    b	.L0d9ac878
    mfc1	$a1,$f1
.L0d9ac6d4:
    # Line 2429
    c.lt.s $f5,$f4
    bc1t .L0d9ac6f0
    nop
    lwc1	$f2,3544($a0)
    c.lt.s $f2,$f5
    bc1f .L0d9ac7c8
    nop
.L0d9ac6f0:
    # Line 2436
    lw	$a4,180($a1)
    # Line 2441
    lwc1	$f4,196($a1)
    # Line 2437
    lw	$t0,204($a1)
    # Line 2436
    addiu	$a4,$a4,-1
    # Line 2440
    lw	$a6,312($a1)
    # Line 2439
    lw	$t1,240($a1)
    # Line 2441
    blez	$a4,.L0d9ac7ac
    # Line 2438
    move	$a5,$t0
    andi	$a7,$a4,0x3
    beqz	$a7,.L0d9ac744
    # Line 2441
    move	$a0,$zero
.L0d9ac71c:
    # Line 2443
    add.s	$f4,$f5,$f4
    # Line 2445
    trunc.w.s	$f3,$f4
    mfc1	$t3,$f3
    # Line 2442
    addiu	$a0,$a0,1
    addiu	$a7,$a7,-1
    # Line 2445
    addiu	$a6,$a6,2
    subu	$t2,$t3,$a5
    # Line 2446
    move	$a5,$t3
    bnez	$a7,.L0d9ac71c
    # Line 2445
    sh	$t2,-2($a6)
.L0d9ac744:
    sra	$t8,$a4,0x2
    beqz	$t8,.L0d9ac7ac
    nop
.L0d9ac750:
    # Line 2443
    add.s	$f9,$f5,$f4
    add.s	$f8,$f5,$f9
    # Line 2445
    trunc.w.s	$f9,$f9
    # Line 2443
    add.s	$f7,$f5,$f8
    # Line 2445
    trunc.w.s	$f8,$f8
    # Line 2443
    add.s	$f4,$f5,$f7
    # Line 2445
    mfc1	$v1,$f9
    trunc.w.s	$f7,$f7
    addiu	$a6,$a6,8
    mfc1	$v0,$f8
    trunc.w.s	$f6,$f4
    subu	$a2,$v1,$a5
    sh	$a2,-8($a6)
    mfc1	$t9,$f7
    # Line 2442
    addiu	$a0,$a0,4
    # Line 2445
    subu	$v1,$v0,$v1
    sh	$v1,-6($a6)
    mfc1	$a5,$f6
    subu	$v0,$t9,$v0
    sh	$v0,-4($a6)
    subu	$t9,$a5,$t9
    # Line 2442
    bne	$a4,$a0,.L0d9ac750
    # Line 2445
    sh	$t9,-2($a6)
.L0d9ac7ac:
    # Line 2442
    li	$a3,1
    beq	$t1,$a3,.L0d9ac868
    lw	$a0,216($a1)
    # Line 2451
    subu	$a4,$t0,$a5
    subu	$a4,$a4,$a0
    # Line 2454
    jr	$ra
    # Line 2451
    sh	$a4,0($a6)
.L0d9ac7c8:
    # Line 2454
    jr	$ra
    nop
.L0d9ac7d0:
    # Line 2420
    slt	$t0,$a0,$a4
    beqz	$t0,.L0d9ac810
    nop
    # Line 2419
    add.s	$f4,$f5,$f4
.L0d9ac7e0:
    # Line 2420
    trunc.w.s	$f10,$f4
    mfc1	$a1,$f10
    bne	$a1,$a5,.L0d9ac810
    addiu	$a0,$a0,1
    slt	$t1,$a0,$a4
    beqz	$t1,.L0d9ac810
    nop
    # Line 2419
    add.s	$f4,$f5,$f4
    # Line 2420
    trunc.w.s	$f11,$f4
    mfc1	$a1,$f11
    beq	$a1,$a5,.L0d9ac7d0
    addiu	$a0,$a0,1
.L0d9ac810:
    beqz	$a0,.L0d9ac820
    # Line 2423
    subu	$t2,$a0,$a7
    sh	$t2,0($a6)
    addiu	$a6,$a6,2
.L0d9ac820:
    # Line 2425
    move	$a7,$a0
    # Line 2415
    addiu	$a0,$a0,1
    slt	$t3,$a0,$a4
    beqz	$t3,.L0d9ac85c
    # Line 2418
    slt	$t8,$a0,$a4
    # Line 2417
    add.s	$f4,$f5,$f4
.L0d9ac838:
    # Line 2418
    trunc.w.s	$f12,$f4
    # Line 2412
    move	$a5,$a1
    # Line 2418
    mfc1	$a1,$f12
    bne	$a1,$a5,.L0d9ac810
    nop
    beqz	$t8,.L0d9ac810
    nop
    b	.L0d9ac7e0
    # Line 2419
    add.s	$f4,$f5,$f4
.L0d9ac85c:
    # Line 2428
    li	$t9,1
    # Line 2454
    jr	$ra
    # Line 2428
    sh	$t9,0($a6)
.L0d9ac868:
    # Line 2449
    subu	$v0,$a5,$t0
    subu	$v0,$a0,$v0
    # Line 2454
    jr	$ra
    # Line 2449
    sh	$v0,0($a6)
.L0d9ac878:
    # Line 2418
    slt	$t8,$a0,$a4
    b	.L0d9ac838
    # Line 2417
    add.s	$f4,$f5,$f4
.end __glComputeSpanPixelArray

# Function: __glLoadUnpackModes
# Declared: Line 2461 (Source lines: 2463-2498)
# Address: 0x0d9ac890 - 0x0d9ac920 (Size: 144 bytes, Frame: 0)
.globl __glLoadUnpackModes
.ent __glLoadUnpackModes
__glLoadUnpackModes:
    # Line 2463
    beqz	$a2,.L0d9ac8c8
    nop
    # Line 2475
    sw	$zero,40($a1)
    # Line 2474
    sw	$zero,44($a1)
    # Line 2473
    sw	$zero,56($a1)
    # Line 2472
    sw	$zero,52($a1)
    # Line 2471
    sw	$zero,48($a1)
    # Line 2470
    li	$v1,1
    sw	$v1,68($a1)
    # Line 2476
    lw	$at,168($a1)
    # Line 2477
    lw	$v0,172($a1)
    sw	$v0,64($a1)
    # Line 2498
    jr	$ra
    # Line 2476
    sw	$at,60($a1)
.L0d9ac8c8:
    # Line 2486
    lw	$a3,1212($a0)
    # Line 2485
    lw	$a4,1192($a0)
    # Line 2487
    lw	$t1,1204($a0)
    sw	$t1,68($a1)
    # Line 2488
    lw	$t0,1200($a0)
    sw	$t0,48($a1)
    # Line 2489
    lw	$a7,1196($a0)
    sw	$a7,52($a1)
    # Line 2490
    lw	$a6,1208($a0)
    sw	$a6,56($a1)
    # Line 2491
    lbu	$a5,1189($a0)
    sw	$a5,44($a1)
    # Line 2492
    lbu	$a2,1188($a0)
    blez	$a4,.L0d9ac918
    sw	$a2,40($a1)
.L0d9ac904:
    # Line 2494
    bgtz	$a3,.L0d9ac910
    sw	$a4,60($a1)
    # Line 2495
    lw	$a3,172($a1)
.L0d9ac910:
    # Line 2498
    jr	$ra
    # Line 2496
    sw	$a3,64($a1)
.L0d9ac918:
    # Line 2493
    b	.L0d9ac904
    lw	$a4,168($a1)
.end __glLoadUnpackModes

# Function: __glInitDrawPixelsInfo
# Declared: Line 2500 (Source lines: 2503-2563)
# Address: 0x0d9ac920 - 0x0d9aca6c (Size: 332 bytes, Frame: 0)
.globl __glInitDrawPixelsInfo
.ent __glInitDrawPixelsInfo
__glInitDrawPixelsInfo:
    # Line 2508
    lwc1	$f6,372($a0)
    # Line 2510
    lwc1	$f1,368($a0)
    # Line 2511
    swc1	$f6,200($a1)
    # Line 2510
    swc1	$f1,196($a1)
    # Line 2512
    lwc1	$f0,376($a0)
    trunc.l.s	$f0,$f0
    dmfc1	$v1,$f0
    sw	$v1,248($a1)
    # Line 2513
    mtc1	$zero,$f7
    lwc1	$f5,744($a0)
    c.lt.s	$f7,$f5
    # Line 2503
    lui	$v0,0xa
    addiu	$v0,$v0,17516
    addu	$at,$t9,$v0
    # Line 2513
    bc1f	.L0d9ac984
    # Line 2558
    li	$v1,5126
    # Line 2513
    lwc1	$f4,3544($a0)
    c.lt.s $f5,$f4
    bc1f .L0d9ac978
    # Line 2520
    li	$a7,1
    # Line 2516
    b	.L0d9ac97c
    swc1	$f4,244($a1)
.L0d9ac978:
    # Line 2518
    swc1	$f5,244($a1)
.L0d9ac97c:
    # Line 2520
    b	.L0d9ac9a4
    sw	$a7,240($a1)
.L0d9ac984:
    lwc1	$f4,_lit_bf800000
    c.lt.s $f4,$f5
    bc1f .L0d9ac99c
    # Line 2527
    li	$t0,-1
    # Line 2523
    b	.L0d9ac9a0
    swc1	$f4,244($a1)
.L0d9ac99c:
    # Line 2525
    swc1	$f5,244($a1)
.L0d9ac9a0:
    # Line 2527
    sw	$t0,240($a1)
.L0d9ac9a4:
    # Line 2544
    li	$t8,6400
    # Line 2529
    swc1	$f5,160($a1)
    # Line 2530
    lbu	$t1,4848($a0)
    # Line 2539
    li	$t3,-1
    # Line 2545
    li	$v0,6408
    # Line 2537
    li	$t2,1
    # Line 2562
    li	$t0,2
    # Line 2559
    li	$a7,4
    # Line 2530
    beqz	$t1,.L0d9aca5c
    lwc1	$f4,748($a0)
    # Line 2532
    neg.s	$f4,$f4
.L0d9ac9d0:
    # Line 2534
    c.lt.s $f7,$f4
    bc1f .L0d9ac9e4
    nop
    # Line 2537
    b	.L0d9ac9e8
    sw	$t2,236($a1)
.L0d9ac9e4:
    # Line 2539
    sw	$t3,236($a1)
.L0d9ac9e8:
    # Line 2542
    sw	$a2,168($a1)
    # Line 2562
    li	$a2,2
    # Line 2543
    sw	$a3,172($a1)
    # Line 2558
    li	$a3,5126
    # Line 2544
    bne	$a4,$t8,.L0d9aca34
    # Line 2541
    swc1	$f4,164($a1)
    # Line 2544
    lbu	$t9,3220($a0)
    beqz	$t9,.L0d9aca34
    # Line 2559
    li	$a0,4
    # Line 2562
    sw	$a2,432($a1)
    # Line 2561
    sw	$zero,88($a1)
    # Line 2560
    sw	$zero,120($a1)
    # Line 2559
    sw	$a0,116($a1)
    # Line 2558
    sw	$v1,84($a1)
    # Line 2551
    sw	$a6,8($a1)
    # Line 2550
    sw	$a5,4($a1)
    # Line 2549
    sw	$a4,0($a1)
    # Line 2563
    jr	$ra
    # Line 2545
    sw	$v0,80($a1)
.L0d9aca34:
    # Line 2562
    sw	$t0,432($a1)
    # Line 2561
    sw	$zero,88($a1)
    # Line 2560
    sw	$zero,120($a1)
    # Line 2559
    sw	$a7,116($a1)
    # Line 2558
    sw	$a3,84($a1)
    # Line 2551
    sw	$a6,8($a1)
    # Line 2550
    sw	$a5,4($a1)
    # Line 2549
    sw	$a4,0($a1)
    # Line 2563
    jr	$ra
    # Line 2547
    sw	$a4,80($a1)
.L0d9aca5c:
    # Line 2534
    lwc1	$f2,3676($a0)
    add.s	$f2,$f2,$f6
    b	.L0d9ac9d0
    swc1	$f2,200($a1)
.end __glInitDrawPixelsInfo

# Function: __glDrawPixelSpans
# Declared: Line 2565 (Source lines: 2566-2626)
# Address: 0x0d9aca70 - 0x0d9accd8 (Size: 616 bytes, Frame: 0)
.globl __glDrawPixelSpans
.ent __glDrawPixelSpans
__glDrawPixelSpans:
    # Line 2566
    addiu	$sp,$sp,-208
    # Line 2570
    lw	$a4,352($a1)
    # Line 2566
    move	$a2,$s8
    addiu	$s8,$sp,208
    # Line 2570
    sd	$a4,-40($s8)
    sdc1	$f22,-144($s8)
    sdc1	$f20,-152($s8)
    # Line 2566
    sd	$s3,-48($s8)
    sd	$s4,-64($s8)
    move	$s3,$a1
    move	$s4,$a0
    # Line 2573
    lw	$a0,30648($a0)
    sd	$a0,-104($s8)
    # Line 2590
    move	$a0,$s4
    # Line 2566
    lui	$v0,0xa
    # Line 2585
    li	$a3,-16
    # Line 2566
    addiu	$v0,$v0,17180
    # Line 2582
    lw	$v1,168($a1)
    sd	$gp,-72($s8)
    # Line 2566
    addu	$gp,$t9,$v0
    # Line 2587
    li	$v0,-16
    # Line 2566
    sd	$ra,-56($s8)
    # Line 2587
    addu	$at,$v1,$v1
    # Line 2585
    sll	$v1,$v1,0x4
    # Line 2566
    sd	$a2,-80($s8)
    # Line 2586
    li	$a2,-16
    # Line 2585
    addiu	$v1,$v1,15
    # Line 2587
    addiu	$at,$at,15
    # Line 2590
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 2585
    and	$a3,$v1,$a3
    # Line 2586
    and	$v1,$v1,$a2
    subu	$sp,$sp,$a3
    # Line 2585
    sd	$sp,-128($s8)
    # Line 2587
    and	$at,$at,$v0
    subu	$sp,$sp,$v1
    # Line 2586
    sd	$sp,-112($s8)
    subu	$sp,$sp,$at
    # Line 2590
    bal __glComputeSpanPixelArray
    # Line 2589
    sw	$sp,312($a1)
    # Line 2597
    lwc1	$f20,200($s3)
    # Line 2595
    lwc1	$f22,164($s3)
    # Line 2598
    lw	$a3,172($s3)
    # Line 2593
    lw	$a4,412($s3)
    # Line 2598
    sd	$a3,-136($s8)
    blez	$a3,.L0d9acca0
    sd	$a4,-120($s8)
    sd	$s0,-200($s8)
    sd	$s2,-168($s8)
    sd	$s1,-160($s8)
    sd	$s7,-192($s8)
    addiu	$s7,$s3,4
    sd	$s7,-88($s8)
    ld	$a6,-40($s8)
    sd	$s6,-184($s8)
    li	$a5,1
    trunc.w.s	$f0,$f20
    addiu	$s6,$a6,-1
    sd	$s6,-32($s8)
    move	$s6,$zero
    sd	$s5,-176($s8)
    slt	$a5,$a5,$a6
    sll	$s5,$a6,0x2
    sd	$a5,-96($s8)
    mfc1	$s7,$f0
    b	.L0d9accc8
    addu	$s5,$s5,$s3
    nop
    nop
.L0d9acb80:
    # Line 2607
    lw	$a2,12($s3)
.L0d9acb84:
    # Line 2612
    lw	$t9,360($s3)
.L0d9acb88:
    move	$a0,$s4
    move	$a1,$s3
    jal	__glComputeSpanPixelArray
    ld	$a3,-128($s8)
    # Line 2615
    ld	$a2,-128($s8)
    # Line 2613
    lw	$ra,12($s3)
    # Line 2615
    ld	$t8,-96($s8)
    # Line 2613
    lw	$t9,16($s3)
    # Line 2615
    ld	$s0,-112($s8)
    # Line 2613
    addu	$t9,$t9,$ra
    # Line 2615
    beqz	$t8,.L0d9acbe8
    # Line 2613
    sw	$t9,12($s3)
    # Line 2615
    ld	$s1,-88($s8)
    nop
.L0d9acbc0:
    # Line 2617
    lw	$t9,360($s1)
    move	$s2,$a2
    move	$a0,$s4
    move	$a1,$s3
    jalr	$t9
    move	$a3,$s0
    # Line 2616
    addiu	$s1,$s1,4
    # Line 2619
    move	$a2,$s0
    # Line 2616
    bne	$s1,$s5,.L0d9acbc0
    # Line 2620
    move	$s0,$s2
.L0d9acbe8:
    # Line 2622
    ld	$t9,-120($s8)
    move	$a0,$s4
    jalr	$t9
    move	$a1,$s3
    # Line 2599
    ld	$v0,-136($s8)
    addiu	$s6,$s6,1
    # Line 2602
    ld	$v1,-136($s8)
    # Line 2599
    slt	$v0,$s6,$v0
    ld	$at,-104($s8)
    # Line 2624
    sw	$at,30648($s4)
    # Line 2599
    beqz	$v0,.L0d9acc88
    # Line 2602
    slt	$v1,$s6,$v1
    # Line 2600
    swc1	$f20,200($s3)
.L0d9acc1c:
    # Line 2601
    add.s	$f20,$f22,$f20
    # Line 2602
    trunc.w.s	$f1,$f20
    # Line 2598
    move	$a0,$s7
    # Line 2602
    mfc1	$s7,$f1
    bne	$s7,$a0,.L0d9acb80
    nop
    beqz	$v1,.L0d9acc80
    nop
    lw	$a1,16($s3)
    b	.L0d9acc50
    lw	$a2,12($s3)
.L0d9acc48:
    # Line 2607
    beqz	$a3,.L0d9acb84
    nop
.L0d9acc50:
    # Line 2603
    swc1	$f20,200($s3)
    # Line 2606
    add.s	$f20,$f22,$f20
    # Line 2607
    trunc.w.s	$f2,$f20
    mfc1	$s7,$f2
    ld	$a3,-136($s8)
    # Line 2604
    addu	$a2,$a1,$a2
    # Line 2607
    addiu	$s6,$s6,1
    # Line 2604
    sw	$a2,12($s3)
    # Line 2607
    beq	$s7,$a0,.L0d9acc48
    slt	$a3,$s6,$a3
    b	.L0d9acb88
    # Line 2612
    lw	$t9,360($s3)
.L0d9acc80:
    b	.L0d9acb84
    # Line 2607
    lw	$a2,12($s3)
.L0d9acc88:
    ld	$s1,-160($s8)
    ld	$s2,-168($s8)
    ld	$s5,-176($s8)
    ld	$s6,-184($s8)
    ld	$s7,-192($s8)
    ld	$s0,-200($s8)
.L0d9acca0:
    ld	$s3,-48($s8)
    ld	$s4,-64($s8)
    ldc1	$f22,-144($s8)
    ldc1	$f20,-152($s8)
    ld	$ra,-56($s8)
    # Line 2626
    ld	$a4,-80($s8)
    ld	$gp,-72($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L0d9accc8:
    # Line 2602
    ld	$v1,-136($s8)
    slt	$v1,$s6,$v1
    b	.L0d9acc1c
    # Line 2600
    swc1	$f20,200($s3)
.end __glDrawPixelSpans

# Function: __glDrawPixels2
# Declared: Line 2632 (Source lines: 2633-2686)
# Address: 0x0d9acce0 - 0x0d9acee0 (Size: 512 bytes, Frame: 0)
.globl __glDrawPixels2
.ent __glDrawPixels2
__glDrawPixels2:
    # Line 2633
    addiu	$sp,$sp,-160
    move	$v1,$s8
    addiu	$s8,$sp,160
    sdc1	$f22,-120($s8)
    sdc1	$f20,-128($s8)
    sd	$s4,-136($s8)
    sd	$s2,-56($s8)
    move	$s2,$a0
    sd	$s0,-80($s8)
    move	$s0,$a1
    lui	$v0,0xa
    sd	$v1,-112($s8)
    # Line 2652
    li	$a3,-16
    # Line 2633
    addiu	$v0,$v0,16556
    # Line 2648
    lw	$v1,168($a1)
    # Line 2651
    li	$a2,-16
    sd	$gp,-104($s8)
    # Line 2633
    addu	$gp,$t9,$v0
    sd	$ra,-72($s8)
    # Line 2653
    addu	$at,$v1,$v1
    # Line 2651
    sll	$v1,$v1,0x4
    # Line 2653
    li	$v0,-16
    # Line 2633
    sd	$s7,-96($s8)
    # Line 2651
    addiu	$v1,$v1,15
    # Line 2638
    lw	$s7,30648($a0)
    # Line 2653
    addiu	$at,$at,15
    # Line 2651
    and	$a2,$v1,$a2
    # Line 2656
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 2652
    and	$v1,$v1,$a3
    subu	$sp,$sp,$a2
    # Line 2633
    sd	$s6,-88($s8)
    # Line 2651
    move	$s6,$sp
    subu	$sp,$sp,$v1
    # Line 2633
    sd	$s5,-64($s8)
    # Line 2653
    and	$at,$at,$v0
    # Line 2652
    move	$s5,$sp
    subu	$sp,$sp,$at
    # Line 2656
    bal __glComputeSpanPixelArray
    # Line 2655
    sw	$sp,312($a1)
    # Line 2664
    lwc1	$f20,200($s0)
    # Line 2662
    lwc1	$f22,164($s0)
    # Line 2665
    lw	$s4,172($s0)
    # Line 2660
    lw	$a0,412($s0)
    # Line 2659
    lw	$a1,364($s0)
    # Line 2665
    blez	$s4,.L0d9ace9c
    # Line 2658
    lw	$a2,360($s0)
    sd	$a2,-48($s8)
    sd	$a1,-40($s8)
    sd	$a0,-32($s8)
    # Line 2665
    trunc.w.s	$f0,$f20
    sd	$s1,-144($s8)
    move	$s1,$zero
    sd	$s3,-152($s8)
    b	.L0d9aced4
    mfc1	$s3,$f0
    nop
.L0d9acdc0:
    # Line 2674
    lw	$a2,12($s0)
.L0d9acdc4:
    # Line 2678
    ld	$t9,-48($s8)
.L0d9acdc8:
    move	$a0,$s2
    move	$a1,$s0
    jal	__glComputeSpanPixelArray
    move	$a3,$s6
    # Line 2679
    lw	$a1,12($s0)
    lw	$a0,16($s0)
    # Line 2681
    ld	$t9,-40($s8)
    move	$a2,$s6
    move	$a3,$s5
    # Line 2679
    addu	$a0,$a0,$a1
    sw	$a0,12($s0)
    # Line 2681
    move	$a0,$s2
    jalr	$t9
    move	$a1,$s0
    # Line 2682
    ld	$t9,-32($s8)
    move	$a0,$s2
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s5
    # Line 2666
    addiu	$s1,$s1,1
    slt	$a2,$s1,$s4
    # Line 2684
    sw	$s7,30648($s2)
    # Line 2666
    beqz	$a2,.L0d9ace94
    # Line 2669
    slt	$a3,$s1,$s4
    # Line 2667
    swc1	$f20,200($s0)
.L0d9ace2c:
    # Line 2668
    add.s	$f20,$f22,$f20
    # Line 2669
    trunc.w.s	$f1,$f20
    # Line 2665
    move	$a0,$s3
    # Line 2669
    mfc1	$s3,$f1
    bne	$s3,$a0,.L0d9acdc0
    nop
    beqz	$a3,.L0d9ace8c
    nop
    lw	$a1,16($s0)
    b	.L0d9ace60
    lw	$a2,12($s0)
.L0d9ace58:
    # Line 2674
    beqz	$a4,.L0d9acdc8
    # Line 2678
    ld	$t9,-48($s8)
.L0d9ace60:
    # Line 2670
    swc1	$f20,200($s0)
    # Line 2673
    add.s	$f20,$f22,$f20
    # Line 2674
    trunc.w.s	$f2,$f20
    mfc1	$s3,$f2
    # Line 2671
    addu	$a2,$a1,$a2
    # Line 2674
    addiu	$s1,$s1,1
    # Line 2671
    sw	$a2,12($s0)
    # Line 2674
    beq	$s3,$a0,.L0d9ace58
    slt	$a4,$s1,$s4
    b	.L0d9acdc8
    # Line 2678
    ld	$t9,-48($s8)
.L0d9ace8c:
    b	.L0d9acdc4
    # Line 2674
    lw	$a2,12($s0)
.L0d9ace94:
    ld	$s1,-144($s8)
    ld	$s3,-152($s8)
.L0d9ace9c:
    ld	$s2,-56($s8)
    ld	$s5,-64($s8)
    ld	$s0,-80($s8)
    ld	$s4,-136($s8)
    ld	$s6,-88($s8)
    ld	$s7,-96($s8)
    ldc1	$f22,-120($s8)
    ldc1	$f20,-128($s8)
    ld	$ra,-72($s8)
    # Line 2686
    ld	$a5,-112($s8)
    ld	$gp,-104($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.L0d9aced4:
    # Line 2669
    slt	$a3,$s1,$s4
    b	.L0d9ace2c
    # Line 2667
    swc1	$f20,200($s0)
.end __glDrawPixels2

# Function: __glDrawPixels1
# Declared: Line 2691 (Source lines: 2692-2740)
# Address: 0x0d9acee0 - 0x0d9ad0a8 (Size: 456 bytes, Frame: 0)
.globl __glDrawPixels1
.ent __glDrawPixels1
__glDrawPixels1:
    # Line 2692
    addiu	$sp,$sp,-144
    move	$a3,$s8
    addiu	$s8,$sp,144
    sd	$a3,-80($s8)
    sdc1	$f22,-96($s8)
    sdc1	$f20,-104($s8)
    sd	$s4,-112($s8)
    sd	$s7,-120($s8)
    sd	$s3,-56($s8)
    # Line 2709
    li	$v0,-16
    # Line 2705
    lw	$v1,168($a1)
    # Line 2692
    move	$s3,$a0
    sd	$ra,-64($s8)
    lui	$a2,0xa
    sd	$s1,-40($s8)
    addiu	$a2,$a2,16044
    # Line 2709
    addu	$at,$v1,$v1
    # Line 2708
    sll	$v1,$v1,0x4
    sd	$gp,-88($s8)
    # Line 2692
    addu	$gp,$t9,$a2
    sd	$s6,-72($s8)
    # Line 2708
    li	$a2,-16
    addiu	$v1,$v1,15
    # Line 2692
    move	$s1,$a1
    # Line 2712
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 2708
    and	$v1,$v1,$a2
    # Line 2697
    lw	$s6,30648($a0)
    # Line 2709
    addiu	$at,$at,15
    subu	$sp,$sp,$v1
    # Line 2692
    sd	$s5,-48($s8)
    # Line 2709
    and	$at,$at,$v0
    # Line 2708
    move	$s5,$sp
    subu	$sp,$sp,$at
    # Line 2712
    bal __glComputeSpanPixelArray
    # Line 2711
    sw	$sp,312($a1)
    # Line 2719
    lwc1	$f20,200($s1)
    # Line 2720
    lw	$s4,172($s1)
    # Line 2717
    lwc1	$f22,164($s1)
    # Line 2715
    lw	$a0,412($s1)
    # Line 2720
    blez	$s4,.L0d9ad064
    # Line 2714
    lw	$s7,360($s1)
    sd	$a0,-32($s8)
    # Line 2720
    trunc.w.s	$f0,$f20
    sd	$s0,-136($s8)
    move	$s0,$zero
    sd	$s2,-128($s8)
    b	.L0d9ad09c
    mfc1	$s2,$f0
.L0d9acfa0:
    # Line 2729
    lw	$a2,12($s1)
.L0d9acfa4:
    # Line 2733
    move	$t9,$s7
.L0d9acfa8:
    move	$a0,$s3
    move	$a1,$s1
    jal	__glComputeSpanPixelArray
    move	$a3,$s5
    # Line 2734
    lw	$a5,12($s1)
    # Line 2736
    ld	$t9,-32($s8)
    move	$a0,$s3
    # Line 2734
    lw	$a4,16($s1)
    # Line 2736
    move	$a1,$s1
    move	$a2,$s5
    # Line 2734
    addu	$a4,$a4,$a5
    # Line 2736
    jalr	$t9
    # Line 2734
    sw	$a4,12($s1)
    # Line 2721
    addiu	$s0,$s0,1
    slt	$a6,$s0,$s4
    # Line 2738
    sw	$s6,30648($s3)
    # Line 2721
    beqz	$a6,.L0d9ad05c
    # Line 2724
    slt	$a7,$s0,$s4
    # Line 2722
    swc1	$f20,200($s1)
.L0d9acff4:
    # Line 2723
    add.s	$f20,$f22,$f20
    # Line 2724
    trunc.w.s	$f1,$f20
    # Line 2720
    move	$a0,$s2
    # Line 2724
    mfc1	$s2,$f1
    bne	$s2,$a0,.L0d9acfa0
    nop
    beqz	$a7,.L0d9ad054
    nop
    lw	$a1,16($s1)
    b	.L0d9ad028
    lw	$a2,12($s1)
.L0d9ad020:
    # Line 2729
    beqz	$t0,.L0d9acfa8
    # Line 2733
    move	$t9,$s7
.L0d9ad028:
    # Line 2725
    swc1	$f20,200($s1)
    # Line 2728
    add.s	$f20,$f22,$f20
    # Line 2729
    trunc.w.s	$f2,$f20
    mfc1	$s2,$f2
    # Line 2726
    addu	$a2,$a1,$a2
    # Line 2729
    addiu	$s0,$s0,1
    # Line 2726
    sw	$a2,12($s1)
    # Line 2729
    beq	$s2,$a0,.L0d9ad020
    slt	$t0,$s0,$s4
    b	.L0d9acfa8
    # Line 2733
    move	$t9,$s7
.L0d9ad054:
    b	.L0d9acfa4
    # Line 2729
    lw	$a2,12($s1)
.L0d9ad05c:
    ld	$s2,-128($s8)
    ld	$s0,-136($s8)
.L0d9ad064:
    ld	$s1,-40($s8)
    ld	$s5,-48($s8)
    ld	$s3,-56($s8)
    ld	$s4,-112($s8)
    ld	$s6,-72($s8)
    ld	$s7,-120($s8)
    ldc1	$f22,-96($s8)
    ldc1	$f20,-104($s8)
    ld	$ra,-64($s8)
    # Line 2740
    ld	$t1,-80($s8)
    ld	$gp,-88($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t1
.L0d9ad09c:
    # Line 2724
    slt	$a7,$s0,$s4
    b	.L0d9acff4
    # Line 2722
    swc1	$f20,200($s1)
.end __glDrawPixels1

# Function: __glDrawPixels0
# Declared: Line 2745 (Source lines: 2746-2782)
# Address: 0x0d9ad0b0 - 0x0d9ad238 (Size: 392 bytes, Frame: 0)
.globl __glDrawPixels0
.ent __glDrawPixels0
__glDrawPixels0:
    # Line 2746
    addiu	$sp,$sp,-112
    move	$v1,$s8
    addiu	$s8,$sp,112
    sd	$v1,-56($s8)
    sd	$s0,-72($s8)
    sd	$s2,-104($s8)
    sd	$s3,-88($s8)
    sd	$s5,-96($s8)
    sdc1	$f20,-32($s8)
    sdc1	$f22,-40($s8)
    sd	$s4,-64($s8)
    lui	$v0,0xa
    # Line 2755
    lw	$at,168($a1)
    # Line 2746
    addiu	$v0,$v0,15580
    sd	$gp,-48($s8)
    addu	$gp,$t9,$v0
    move	$s4,$a0
    # Line 2755
    addu	$at,$at,$at
    # Line 2758
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 2746
    sd	$s1,-112($s8)
    # Line 2755
    li	$v0,-16
    addiu	$at,$at,15
    # Line 2746
    move	$s1,$a1
    sd	$ra,-80($s8)
    # Line 2755
    and	$at,$at,$v0
    # Line 2758
    nop
    subu	$sp,$sp,$at
    bal __glComputeSpanPixelArray
    # Line 2757
    sw	$sp,312($a1)
    # Line 2765
    lw	$s3,172($s1)
    # Line 2764
    lwc1	$f20,200($s1)
    # Line 2762
    lwc1	$f22,164($s1)
    # Line 2765
    blez	$s3,.L0d9ad200
    # Line 2760
    lw	$s5,412($s1)
    # Line 2765
    trunc.w.s	$f0,$f20
    lw	$a2,12($s1)
    move	$s0,$zero
    b	.L0d9ad1d4
    mfc1	$s2,$f0
    nop
.L0d9ad150:
    # Line 2774
    beqz	$a0,.L0d9ad1a8
    nop
.L0d9ad158:
    # Line 2770
    swc1	$f20,200($s1)
    # Line 2773
    add.s	$f20,$f22,$f20
    # Line 2774
    trunc.w.s	$f1,$f20
    mfc1	$s2,$f1
    # Line 2771
    addu	$a2,$a4,$a2
    # Line 2774
    addiu	$s0,$s0,1
    # Line 2771
    sw	$a2,12($s1)
    # Line 2774
    bne	$s2,$a1,.L0d9ad1a8
    slt	$a3,$s0,$s3
    beqz	$a3,.L0d9ad1a8
    nop
    # Line 2770
    swc1	$f20,200($s1)
    # Line 2773
    add.s	$f20,$f22,$f20
    # Line 2774
    trunc.w.s	$f2,$f20
    mfc1	$s2,$f2
    # Line 2771
    addu	$a2,$a4,$a2
    # Line 2774
    addiu	$s0,$s0,1
    # Line 2771
    sw	$a2,12($s1)
    # Line 2774
    beq	$s2,$a1,.L0d9ad150
    slt	$a0,$s0,$s3
.L0d9ad1a8:
    # Line 2778
    move	$t9,$s5
.L0d9ad1ac:
    move	$a0,$s4
    jal	__glComputeSpanPixelArray
    move	$a1,$s1
    # Line 2779
    lw	$a3,12($s1)
    # Line 2766
    addiu	$s0,$s0,1
    # Line 2779
    lw	$a2,16($s1)
    # Line 2766
    slt	$a4,$s0,$s3
    # Line 2779
    addu	$a2,$a2,$a3
    # Line 2766
    beqz	$a4,.L0d9ad200
    # Line 2779
    sw	$a2,12($s1)
.L0d9ad1d4:
    # Line 2767
    swc1	$f20,200($s1)
    # Line 2768
    add.s	$f20,$f22,$f20
    # Line 2769
    trunc.w.s	$f3,$f20
    # Line 2765
    move	$a1,$s2
    # Line 2769
    mfc1	$s2,$f3
    bne	$s2,$a1,.L0d9ad1a8
    slt	$a4,$s0,$s3
    beqz	$a4,.L0d9ad1ac
    # Line 2778
    move	$t9,$s5
    b	.L0d9ad158
    # Line 2769
    lw	$a4,16($s1)
.L0d9ad200:
    # Line 2782
    ld	$gp,-48($s8)
    ld	$s0,-72($s8)
    ld	$s1,-112($s8)
    ld	$s2,-104($s8)
    ld	$s3,-88($s8)
    ld	$s4,-64($s8)
    ld	$s5,-96($s8)
    ldc1	$f20,-32($s8)
    ld	$ra,-80($s8)
    ld	$a5,-56($s8)
    ldc1	$f22,-40($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.end __glDrawPixels0

# Function: __glLateScissorRender
# Declared: Line 2791 (Source lines: 2793-2834)
# Address: 0x0d9ad240 - 0x0d9ad37c (Size: 316 bytes, Frame: 48)
.globl __glLateScissorRender
.ent __glLateScissorRender
__glLateScissorRender:
    # Line 2793
    addiu	$sp,$sp,-48
    lw	$a4,488($a1)
    sd	$s0,16($sp)
    move	$s0,$a1
    lui	$at,0xa
    addiu	$at,$at,15180
    # Line 2797
    addiu	$v0,$a4,-1
    sd	$gp,8($sp)
    # Line 2793
    blez	$a4,.L0d9ad27c
    addu	$gp,$t9,$at
    # Line 2797
    sw	$v0,488($a1)
    # Line 2834
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ad27c:
    sd	$a0,0($sp)
    sd	$a2,24($sp)
    # Line 2798
    beqz	$a4,.L0d9ad2f0
    sd	$ra,32($sp)
    # Line 2818
    la	$a6,sub_0da50000
    ld	$a0,0($sp)
    ld	$a4,24($sp)
    lw	$a5,448($a1)
    addiu	$a6,$a6,-14192
.L0d9ad2a0:
    # Line 2826
    lw	$a2,492($s0)
    lw	$t9,444($s0)
    # Line 2824
    lw	$a7,184($s0)
    # Line 2826
    move	$a1,$s0
    # Line 2822
    sw	$a6,312($s0)
    # Line 2826
    addu	$a2,$a2,$a4
    # Line 2824
    addu	$a7,$a7,$a5
    # Line 2826
    jalr	$t9
    # Line 2824
    sw	$a7,184($s0)
    # Line 2830
    lw	$a5,-22392($gp)
    # Line 2834
    ld	$gp,8($sp)
    # Line 2832
    lw	$a4,448($s0)
    lw	$a3,184($s0)
    ld	$ra,32($sp)
    # Line 2830
    sw	$a5,312($s0)
    # Line 2832
    subu	$a3,$a3,$a4
    sw	$a3,184($s0)
    # Line 2834
    ld	$s0,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9ad2f0:
    # Line 2816
    ld	$a0,0($sp)
    # Line 2801
    addiu	$at,$a4,-1
    sw	$at,488($a1)
    # Line 2812
    lw	$ra,464($a1)
    # Line 2810
    lw	$t8,460($a1)
    # Line 2809
    lw	$t3,472($a1)
    # Line 2808
    lw	$t2,476($a1)
    # Line 2804
    lw	$t1,312($a1)
    sw	$t1,-22392($gp)
    # Line 2808
    sw	$t2,220($a1)
    # Line 2809
    sw	$t3,216($a1)
    # Line 2810
    sw	$t8,204($a1)
    # Line 2812
    sw	$ra,208($a1)
    # Line 2801
    la	$a6,sub_0da50000
    # Line 2807
    lwc1	$f0,452($a1)
    # Line 2814
    lw	$t0,448($a1)
    lw	$a7,180($a1)
    # Line 2811
    lw	$t9,468($a1)
    sw	$t9,212($a1)
    # Line 2816
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 2814
    addu	$a7,$a7,$t0
    sw	$a7,180($a1)
    # Line 2807
    swc1	$f0,196($s0)
    # Line 2801
    addiu	$a6,$a6,-14192
    # Line 2816
    bal __glComputeSpanPixelArray
    # Line 2805
    sw	$a6,312($s0)
    ld	$a0,0($sp)
    # Line 2818
    lw	$a5,448($s0)
    la	$a6,sub_0da50000
    lw	$v0,180($s0)
    ld	$a4,24($sp)
    addiu	$a6,$a6,-14192
    subu	$v0,$v0,$a5
    b	.L0d9ad2a0
    sw	$v0,180($s0)
.end __glLateScissorRender

# Function: __glInitLateScissor
# Declared: Line 2836 (Source lines: 2837-2910)
# Address: 0x0d9ad380 - 0x0d9ad734 (Size: 948 bytes, Frame: 208)
.globl __glInitLateScissor
.ent __glInitLateScissor
__glInitLateScissor:
    # Line 2837
    addiu	$sp,$sp,-592
    sd	$s5,536($sp)
    sd	$s1,544($sp)
    sd	$s0,552($sp)
    sd	$s4,568($sp)
    sd	$s2,576($sp)
    sd	$s6,528($sp)
    # Line 2839
    lw	$at,1792($a0)
    # Line 2837
    move	$s6,$a0
    sd	$s7,512($sp)
    move	$s7,$a1
    sd	$s3,584($sp)
    lui	$v0,0xa
    # Line 2839
    andi	$at,$at,0x4000
    li	$a1,0x8010
    sd	$ra,560($sp)
    # Line 2837
    addiu	$v0,$v0,14860
    sd	$gp,520($sp)
    # Line 2839
    beqz	$at,.L0d9ad6ac
    # Line 2837
    addu	$gp,$t9,$v0
    # Line 2839
    la	$v1,__glDummyFilter
    lw	$v0,764($a0)
    beq	$v0,$v1,.L0d9ad694
    nop
    lw	$a0,0($v0)
    beq	$a0,$a1,.L0d9ad694
    # Line 2852
    addiu	$a5,$sp,0
.L0d9ad3ec:
    li	$a4,125
    li	$a6,5
    move	$a1,$s7
    move	$v0,$zero
    addiu	$t3,$a1,28
.L0d9ad400:
    addiu	$a6,$a6,-1
    addu	$a2,$v0,$a1
    addiu	$a4,$a4,-1
    addu	$a3,$v0,$a5
    lw	$a2,0($a2)
    addiu	$v0,$v0,4
    bnez	$a6,.L0d9ad400
    sw	$a2,0($a3)
    addiu	$t8,$a1,16
    addiu	$s1,$a5,16
    addiu	$s0,$a1,24
    addiu	$ra,$a5,24
    addiu	$t1,$a5,20
    addiu	$t2,$a1,20
    addiu	$s2,$a5,12
    addiu	$a7,$a1,12
    addiu	$s4,$a1,8
    addiu	$s3,$a5,8
    addiu	$t0,$a5,4
    addiu	$s5,$a1,4
    li	$t9,0x20
    addiu	$a6,$a5,28
    nop
    nop
.L0d9ad460:
    addu	$v1,$v0,$a1
    addu	$a0,$v0,$a5
    lw	$v1,0($v1)
    addu	$at,$v0,$s5
    sw	$v1,0($a0)
    addu	$v1,$v0,$t0
    lw	$at,0($at)
    addu	$a3,$v0,$s4
    sw	$at,0($v1)
    addu	$at,$v0,$s3
    lw	$a3,0($a3)
    addu	$a2,$v0,$a7
    sw	$a3,0($at)
    addu	$a3,$v0,$s2
    lw	$a2,0($a2)
    addu	$a0,$v0,$t8
    sw	$a2,0($a3)
    addu	$a2,$v0,$s1
    lw	$a0,0($a0)
    addu	$v1,$v0,$t2
    sw	$a0,0($a2)
    addu	$a0,$v0,$t1
    lw	$v1,0($v1)
    addu	$at,$v0,$s0
    sw	$v1,0($a0)
    addu	$v1,$v0,$ra
    lw	$at,0($at)
    addiu	$a4,$a4,-8
    addu	$a3,$v0,$t3
    sw	$at,0($v1)
    addu	$at,$v0,$a6
    lw	$a3,0($a3)
    addu	$v0,$v0,$t9
    bgtz	$a4,.L0d9ad460
    sw	$a3,0($at)
    # Line 2856
    # lw $t9, -23344($gp) # &__glComputeClipBox
    # Line 2855
    lw	$a1,1792($s6)
    # Line 2856
    move	$a0,$s6
    # Line 2855
    li	$a2,-16385
    and	$a1,$a1,$a2
    # Line 2856
    jal	__glComputeClipBox
    # Line 2855
    sw	$a1,1792($s6)
    # Line 2857
    # lw $t9, -27856($gp) # &__glClipDrawPixels
    move	$a0,$s6
    bal __glClipDrawPixels
    move	$a1,$s7
    lw	$a1,1792($s6)
    sd	$v0,504($sp)
    beqz	$v0,.L0d9ad6ec
    ori	$a1,$a1,0x4000
    # Line 2865
    # lw $t9, -23344($gp) # &__glComputeClipBox
    move	$a0,$s6
    jal	__glComputeClipBox
    # Line 2864
    sw	$a1,1792($s6)
    # Line 2868
    # lw $t9, -27856($gp) # &__glClipDrawPixels
    move	$a0,$s6
    bal __glClipDrawPixels
    addiu	$a1,$sp,0
    # Line 2889
    lwc1	$f3,_lit_bf800000
    ld	$s5,536($sp)
    ld	$s1,544($sp)
    ld	$s0,552($sp)
    ld	$s4,568($sp)
    # Line 2871
    lw	$t1,184($s7)
    # Line 2868
    sb	$v0,440($s7)
    # Line 2871
    lw	$t0,184($sp)
    # Line 2880
    lw	$a6,204($s7)
    # Line 2871
    subu	$t0,$t0,$t1
    sw	$t0,448($s7)
    # Line 2873
    lwc1	$f2,196($sp)
    # Line 2874
    lwc1	$f1,200($s7)
    # Line 2873
    swc1	$f2,452($s7)
    # Line 2874
    lwc1	$f0,200($sp)
    # Line 2885
    lw	$a1,48($s7)
    # Line 2889
    lwc1	$f5,_lit_3f800000
    lwc1	$f4,160($s7)
    # Line 2874
    sub.s	$f0,$f0,$f1
    swc1	$f0,456($s7)
    # Line 2875
    lw	$a7,208($sp)
    sw	$a7,464($s7)
    # Line 2877
    lw	$a5,212($sp)
    sw	$a5,468($s7)
    # Line 2878
    lw	$a4,216($sp)
    sw	$a4,472($s7)
    # Line 2879
    lw	$a3,204($sp)
    sw	$a3,460($s7)
    # Line 2880
    lw	$a5,204($sp)
    # Line 2884
    lw	$a2,220($sp)
    sw	$a2,476($s7)
    # Line 2885
    lw	$a0,48($sp)
    # Line 2887
    lw	$a2,52($s7)
    # Line 2889
    c.lt.s	$f4,$f5
    # Line 2885
    subu	$a0,$a0,$a1
    sw	$a0,480($s7)
    # Line 2880
    subu	$a5,$a5,$a6
    # Line 2887
    lw	$a1,52($sp)
    ld	$s2,576($sp)
    # Line 2882
    negu	$a4,$a5
    slti	$a3,$a5,0
    movz	$a4,$a5,$a3
    # Line 2887
    subu	$a1,$a1,$a2
    # Line 2889
    bc1f	.L0d9ad620
    # Line 2887
    sw	$a1,484($s7)
    # Line 2889
    c.lt.s $f3,$f4
    bc1f .L0d9ad620
    nop
    # Line 2890
    lw	$t3,116($s7)
    multu	$t3,$a4
    mflo	$t2
    sll	$t2,$t2,0x2
    b	.L0d9ad634
    sw	$t2,492($s7)
.L0d9ad620:
    # Line 2893
    lw	$t9,116($s7)
    multu	$t9,$a0
    mflo	$t8
    sll	$t8,$t8,0x2
    sw	$t8,492($s7)
.L0d9ad634:
    # Line 2897
    lwc1	$f4,164($s7)
    c.lt.s $f4,$f5
    # Line 2898
    lw	$v0,208($sp)
    # Line 2897
    bc1f .L0d9ad670
    lwc1	$f5,_lit_bf800000
    c.lt.s $f5,$f4
    bc1f .L0d9ad670
    nop
    # Line 2898
    lw	$v1,208($s7)
    subu	$v0,$v0,$v1
    sw	$v0,488($s7)
    bgez	$v0,.L0d9ad674
    # Line 2901
    negu	$a0,$v0
    b	.L0d9ad674
    sw	$a0,488($s7)
.L0d9ad670:
    # Line 2904
    sw	$a1,488($s7)
.L0d9ad674:
    # Line 2908
    ld	$s6,528($sp)
    ld	$ra,560($sp)
    ld	$s3,584($sp)
    # Line 2910
    li	$v0,1
    # Line 2908
    ld	$gp,520($sp)
    ld	$s7,512($sp)
    jr	$ra
    addiu	$sp,$sp,592
.L0d9ad694:
    # Line 2839
    lw	$a1,1248($s6)
    bnez	$a1,.L0d9ad3ec
    # Line 2852
    addiu	$a5,$sp,0
    # Line 2839
    lbu	$a2,1364($s6)
    bnez	$a2,.L0d9ad3ec
    # Line 2852
    addiu	$a5,$sp,0
.L0d9ad6ac:
    ld	$s3,584($sp)
    ld	$s2,576($sp)
    ld	$s4,568($sp)
    # Line 2908
    # lw $t9, -27856($gp) # &__glClipDrawPixels
    ld	$s0,552($sp)
    ld	$s1,544($sp)
    move	$a0,$s6
    ld	$s5,536($sp)
    bal __glClipDrawPixels
    move	$a1,$s7
    ld	$ra,560($sp)
    ld	$gp,520($sp)
    ld	$s6,528($sp)
    ld	$s7,512($sp)
    jr	$ra
    addiu	$sp,$sp,592
.L0d9ad6ec:
    ld	$s3,584($sp)
    ld	$s2,576($sp)
    ld	$s4,568($sp)
    ld	$s0,552($sp)
    # Line 2859
    # lw $t9, -23344($gp) # &__glComputeClipBox
    ld	$s1,544($sp)
    ld	$s5,536($sp)
    move	$a0,$s6
    jal	__glComputeClipBox
    # Line 2858
    sw	$a1,1792($s6)
    # Line 2908
    ld	$gp,520($sp)
    ld	$s6,528($sp)
    ld	$ra,560($sp)
    # Line 2860
    ld	$v0,504($sp)
    # Line 2908
    ld	$s7,512($sp)
    addiu	$sp,$sp,592
    jr	$ra
    # Line 2860
    andi	$v0,$v0,0xff
.end __glInitLateScissor

# Function: __glSlowPickDrawPixels
# Declared: Line 2917 (Source lines: 2920-2944)
# Address: 0x0d9ad740 - 0x0d9ad820 (Size: 224 bytes, Frame: 160)
.globl __glSlowPickDrawPixels
.ent __glSlowPickDrawPixels
__glSlowPickDrawPixels:
    # Line 2920
    addiu	$sp,$sp,-544
    lui	$v0,0xa
    move	$at,$a1
    sd	$s8,504($sp)
    addiu	$v0,$v0,13900
    # Line 2923
    addiu	$a1,$sp,0
    sd	$gp,512($sp)
    # Line 2920
    addu	$gp,$t9,$v0
    move	$s8,$a6
    move	$a6,$a5
    # Line 2923
    # lw $t9, -27844($gp) # &__glInitDrawPixelsInfo
    # Line 2920
    move	$a5,$a4
    move	$a4,$a3
    move	$a3,$a2
    # Line 2923
    move	$a2,$at
    # Line 2920
    sd	$s0,528($sp)
    # Line 2923
    nop
    # Line 2920
    sd	$ra,520($sp)
    # Line 2923
    bal __glInitDrawPixelsInfo
    # Line 2920
    move	$s0,$a0
    # Line 2924
    # lw $t9, -27848($gp) # &__glLoadUnpackModes
    move	$a0,$s0
    move	$a2,$s8
    bal __glLoadUnpackModes
    addiu	$a1,$sp,0
    lw	$v1,1792($s0)
    lui	$a0,0x3e00
    and	$v1,$v1,$a0
    beqz	$v1,.L0d9ad804
    # Line 2939
    nop	# was lw $t9, -27856($gp) # &__glClipDrawPixels
    # Line 2937
    # lw $t9, -27820($gp) # &__glInitLateScissor
    move	$a0,$s0
    bal __glInitLateScissor
    addiu	$a1,$sp,0
    beqz	$v0,.L0d9ad7ec
    # Line 2941
    nop	# was lw $t9, -27532($gp) # &__glInitUnpacker
.L0d9ad7d0:
    move	$a0,$s0
    bal __glInitUnpacker
    addiu	$a1,$sp,0
    # Line 2943
    # lw $t9, -27812($gp) # &__glGenericPickDrawPixels
    move	$a0,$s0
    bal __glGenericPickDrawPixels
    addiu	$a1,$sp,0
.L0d9ad7ec:
    # Line 2944
    ld	$ra,520($sp)
.L0d9ad7f0:
    ld	$gp,512($sp)
    ld	$s0,528($sp)
    ld	$s8,504($sp)
    jr	$ra
    addiu	$sp,$sp,544
.L0d9ad804:
    # Line 2939
    move	$a0,$s0
    bal __glClipDrawPixels
    addiu	$a1,$sp,0
    bnez	$v0,.L0d9ad7d0
    # Line 2941
    nop	# was lw $t9, -27532($gp) # &__glInitUnpacker
    b	.L0d9ad7f0
    # Line 2944
    ld	$ra,520($sp)
.end __glSlowPickDrawPixels

# Function: __glGenericPickDrawPixels
# Declared: Line 2950 (Source lines: 2951-3021)
# Address: 0x0d9ad820 - 0x0d9ad954 (Size: 308 bytes, Frame: 192)
.globl __glGenericPickDrawPixels
.ent __glGenericPickDrawPixels
__glGenericPickDrawPixels:
    # Line 2951
    addiu	$sp,$sp,-64
    # Line 2959
    li	$v0,1
    # Line 2961
    sb	$v0,12($sp)
    # Line 2951
    sd	$ra,40($sp)
    lui	$ra,0xa
    # Line 2960
    sw	$v0,8($sp)
    # Line 2951
    addiu	$ra,$ra,13676
    sd	$gp,48($sp)
    addu	$gp,$t9,$ra
    # Line 2963
    # lw $t9, -32716($gp) # &sub_0d9b0000
    # Line 2959
    sw	$v0,4($sp)
    # Line 2958
    li	$at,2
    # Line 2951
    sd	$s0,24($sp)
    # Line 2963
    addiu	$t9,$t9,-30800
    addiu	$a2,$sp,0
    # Line 2951
    move	$s0,$a1
    sd	$s1,32($sp)
    # Line 2963
    nop
    # Line 2951
    move	$s1,$a0
    # Line 2963
    bal __glSpanRGBAScaleBiasReduce
    # Line 2958
    sw	$at,0($sp)
    # Line 2965
    lw	$a4,20($sp)
    # Line 2979
    lw	$a1,436($s0)
    # Line 2972
    addiu	$v1,$v0,-1
    sw	$v1,264($s0)
    # Line 2990
    li	$a3,1
    # Line 2979
    lw	$a0,0($a1)
    li	$a2,0x8012
    li	$at,0x8011
    # Line 2999
    la	$a6,__glDrawPixels2
    # Line 3009
    li	$a7,0x8016
    li	$a5,2
    # Line 2981
    # lw $t9, -28280($gp) # &__glConv2dDrawPixels
    # Line 2979
    beq	$a0,$at,.L0d9ad8cc
    xor	$a5,$v0,$a5
    beq	$a0,$a2,.L0d9ad920
    # Line 2996
    nop	# was lw $t9, -27832($gp) # &__glDrawPixels1
    # Line 2990
    beqz	$v0,.L0d9ad944
    nop
    beq	$v0,$a3,.L0d9ad94c
    nop
    # Line 3001
    # lw $t9, -27840($gp) # &__glDrawPixelSpans
    movz	$t9,$a6,$a5
.L0d9ad8cc:
    # Line 3006
    sw	$v0,352($s0)
.L0d9ad8d0:
    # Line 3009
    lw	$a6,4($a1)
    beq	$a6,$a7,.L0d9ad900
.L0d9ad8d8:
    # Line 3020
    move	$a0,$s1
    # Line 3019
    sw	$a4,412($s0)
    # Line 3020
    jal	__glDrawPixelSpans
    move	$a1,$s0
    ld	$ra,40($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 3021
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9ad900:
    # Line 3011
    lw	$t1,64($a1)
    lw	$t0,180($s0)
    subu	$t0,$t0,$t1
    addiu	$t0,$t0,1
    bgez	$t0,.L0d9ad8d8
    sw	$t0,184($s0)
    # Line 3013
    b	.L0d9ad8d8
    sw	$zero,184($s0)
.L0d9ad920:
    # Line 2984
    lw	$t3,4852($s1)
    mtc1	$t3,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,164($s0)
    # Line 2987
    la	$t2,__glSep2dZoomDrawPixels
    # Line 2984
    # lw $t9, -28276($gp) # &__glSep2dDrawPixels
    c.eq.s	$f0,$f1
    b	.L0d9ad8cc
    movf	$t9,$t2,$fcc0
.L0d9ad944:
    b	.L0d9ad8cc
    # Line 2992
    nop	# was lw $t9, -27828($gp) # &__glDrawPixels0
.L0d9ad94c:
    # Line 2996
    b	.L0d9ad8d0
    # Line 3006
    sw	$v0,352($s0)
.end __glGenericPickDrawPixels

# Function: __glClipReadPixels
# Declared: Line 3029 (Source lines: 3030-3106)
# Address: 0x0d9ad960 - 0x0d9adb30 (Size: 464 bytes, Frame: 16)
.globl __glClipReadPixels
.ent __glClipReadPixels
__glClipReadPixels:
    # Line 3048
    lw	$a7,3700($a0)
    # Line 3049
    lw	$t0,3664($a0)
    # Line 3039
    lwc1	$f1,188($a1)
    # Line 3040
    lwc1	$f0,192($a1)
    # Line 3050
    lw	$a3,3704($a0)
    # Line 3038
    lw	$t9,172($a1)
    # Line 3039
    trunc.w.s	$f1,$f1
    # Line 3047
    lw	$t3,3660($a0)
    # Line 3040
    trunc.w.s	$f0,$f0
    # Line 3030
    addiu	$sp,$sp,-16
    # Line 3037
    lw	$t8,168($a1)
    # Line 3050
    addu	$a3,$a3,$t0
    # Line 3039
    mfc1	$a6,$f1
    # Line 3048
    addu	$a7,$a7,$t3
    # Line 3038
    move	$a4,$t9
    # Line 3040
    mfc1	$t1,$f0
    # Line 3041
    lbu	$at,4848($a0)
    # Line 3037
    move	$a5,$t8
    # Line 3050
    slt	$v1,$a6,$t3
    # Line 3039
    sd	$a6,8($sp)
    # Line 3041
    addu	$a6,$t8,$a6
    # Line 3045
    addu	$v0,$t9,$t1
    # Line 3043
    subu	$t2,$t1,$t9
    # Line 3050
    beqz	$v1,.L0d9ada04
    movz	$t2,$v0,$at
    # Line 3060
    mtc1	$t3,$f2
    # Line 3050
    ld	$a5,8($sp)
    subu	$a5,$t3,$a5
    sd	$a5,0($sp)
    slt	$a5,$t8,$a5
    beqz	$a5,.L0d9ad9e8
    # Line 3055
    move	$v0,$zero
    # Line 3106
    jr	$ra
    addiu	$sp,$sp,16
.L0d9ad9e8:
    # Line 3059
    ld	$a5,0($sp)
    lw	$at,128($a1)
    # Line 3060
    cvt.s.w	$f2,$f2
    # Line 3059
    addu	$at,$at,$a5
    sw	$at,128($a1)
    # Line 3057
    subu	$a5,$t8,$a5
    # Line 3060
    swc1	$f2,188($a1)
.L0d9ada04:
    slt	$v0,$a7,$a6
    subu	$t3,$a6,$a7
    # Line 3066
    slt	$a6,$t1,$a3
    # Line 3060
    beqz	$v0,.L0d9ada24
    slt	$v1,$a5,$t3
    # Line 3066
    subu	$a5,$a5,$t3
    # Line 3060
    bnez	$v1,.L0d9adab8
    # Line 3064
    move	$v0,$zero
.L0d9ada24:
    # Line 3066
    lbu	$a2,4848($a0)
    beqz	$a2,.L0d9adac0
    subu	$a0,$t1,$a3
    # Line 3071
    move	$v0,$zero
    # Line 3066
    addiu	$a7,$a0,1
    bnez	$a6,.L0d9ada74
    slt	$a7,$t9,$a7
    # Line 3073
    subu	$a4,$t9,$a0
    # Line 3066
    beqz	$a7,.L0d9ada54
    # Line 3073
    addiu	$a4,$a4,-1
    # Line 3106
    jr	$ra
    addiu	$sp,$sp,16
.L0d9ada54:
    # Line 3076
    addiu	$a7,$a3,-1
    mtc1	$a7,$f3
    # Line 3075
    lw	$a6,132($a1)
    # Line 3076
    cvt.s.w	$f3,$f3
    # Line 3075
    addu	$a6,$a6,$a0
    addiu	$a6,$a6,1
    sw	$a6,132($a1)
    # Line 3076
    swc1	$f3,192($a1)
.L0d9ada74:
    addiu	$t1,$t0,-1
    slt	$t1,$t2,$t1
    subu	$a0,$t0,$t2
    # Line 3080
    move	$v0,$zero
    # Line 3076
    addiu	$t3,$a0,-1
    beqz	$t1,.L0d9ada9c
    slt	$t3,$a4,$t3
    # Line 3082
    subu	$a4,$a4,$a0
    # Line 3076
    bnez	$t3,.L0d9adaec
    # Line 3082
    addiu	$a4,$a4,1
.L0d9ada9c:
    # Line 3104
    sw	$a5,180($a1)
.L0d9adaa0:
    sw	$a5,184($a1)
    # Line 3103
    sw	$a4,172($a1)
    # Line 3106
    li	$v0,1
    # Line 3102
    sw	$a5,168($a1)
    # Line 3106
    jr	$ra
    addiu	$sp,$sp,16
.L0d9adab8:
    jr	$ra
    addiu	$sp,$sp,16
.L0d9adac0:
    # Line 3092
    mtc1	$t0,$f4
    # Line 3082
    slt	$a6,$t1,$t0
    # Line 3096
    move	$v0,$zero
    # Line 3082
    subu	$a0,$t0,$t1
    beqz	$a6,.L0d9adb08
    slt	$a7,$t9,$a0
    beqz	$a7,.L0d9adaf4
    # Line 3089
    subu	$a4,$t9,$a0
    # Line 3087
    move	$v0,$zero
    # Line 3106
    jr	$ra
    addiu	$sp,$sp,16
.L0d9adaec:
    jr	$ra
    addiu	$sp,$sp,16
.L0d9adaf4:
    # Line 3091
    lw	$t1,132($a1)
    # Line 3092
    cvt.s.w	$f4,$f4
    # Line 3091
    addu	$t1,$t1,$a0
    sw	$t1,132($a1)
    # Line 3092
    swc1	$f4,192($a1)
.L0d9adb08:
    slt	$t3,$a3,$t2
    subu	$a0,$t2,$a3
    beqz	$t3,.L0d9ada9c
    slt	$t8,$a4,$a0
    bnez	$t8,.L0d9adb28
    # Line 3098
    subu	$a4,$a4,$a0
    b	.L0d9adaa0
    # Line 3104
    sw	$a5,180($a1)
.L0d9adb28:
    # Line 3106
    jr	$ra
    addiu	$sp,$sp,16
.end __glClipReadPixels

# Function: __glLoadPackModes
# Declared: Line 3113 (Source lines: 3115-3128)
# Address: 0x0d9adb30 - 0x0d9adb90 (Size: 96 bytes, Frame: 0)
.globl __glLoadPackModes
.ent __glLoadPackModes
__glLoadPackModes:
    # Line 3116
    lw	$a3,1168($a0)
    # Line 3115
    lw	$a4,1148($a0)
    # Line 3118
    lw	$a6,1160($a0)
    sw	$a6,148($a1)
    # Line 3119
    lw	$a5,1156($a0)
    sw	$a5,128($a1)
    # Line 3120
    lw	$a2,1152($a0)
    sw	$a2,132($a1)
    # Line 3121
    lw	$v1,1164($a0)
    sw	$v1,136($a1)
    # Line 3122
    lbu	$v0,1145($a0)
    sw	$v0,124($a1)
    # Line 3123
    lbu	$at,1144($a0)
    blez	$a4,.L0d9adb7c
    sw	$at,120($a1)
.L0d9adb6c:
    # Line 3125
    blez	$a3,.L0d9adb84
    sw	$a4,140($a1)
    # Line 3128
    jr	$ra
    # Line 3127
    sw	$a3,144($a1)
.L0d9adb7c:
    # Line 3124
    b	.L0d9adb6c
    lw	$a4,168($a1)
.L0d9adb84:
    # Line 3126
    lw	$a7,172($a1)
    # Line 3128
    jr	$ra
    # Line 3127
    sw	$a7,144($a1)
.end __glLoadPackModes

# Function: __glInitReadPixelsInfo
# Declared: Line 3130 (Source lines: 3133-3163)
# Address: 0x0d9adb90 - 0x0d9adce0 (Size: 336 bytes, Frame: 240)
.globl __glInitReadPixelsInfo
.ent __glInitReadPixelsInfo
__glInitReadPixelsInfo:
    # Line 3134
    lw	$v1,3660($a0)
    addu	$v1,$v1,$a2
    mtc1	$v1,$f0
    # Line 3133
    addiu	$sp,$sp,-112
    # Line 3134
    cvt.s.w	$f0,$f0
    # Line 3133
    sd	$s0,16($sp)
    sd	$s1,8($sp)
    # Line 3134
    swc1	$f0,188($a1)
    # Line 3133
    move	$s1,$a6
    # Line 3134
    lbu	$at,4848($a0)
    # Line 3133
    move	$s0,$a1
    sd	$s2,24($sp)
    lui	$v0,0xa
    move	$s2,$a0
    sd	$gp,0($sp)
    addiu	$v0,$v0,12796
    addu	$gp,$t9,$v0
    # Line 3134
    beqz	$at,.L0d9adc9c
    lw	$t1,3664($a0)
    # Line 3136
    lw	$a0,3704($a0)
    subu	$a0,$a0,$a3
    addu	$a0,$t1,$a0
    addiu	$a0,$a0,-1
    mtc1	$a0,$f1
    cvt.s.w	$f1,$f1
    sd	$ra,32($sp)
    swc1	$f1,192($a1)
.L0d9adbfc:
    # Line 3144
    sw	$a7,84($s0)
    # Line 3143
    sw	$s1,80($s0)
    # Line 3142
    sw	$a5,172($s0)
    # Line 3141
    sw	$a4,168($s0)
    # Line 3148
    # lw $t9, -27804($gp) # &__glLoadPackModes
    # Line 3145
    lw	$a1,116($sp)
    # Line 3147
    mtc1	$zero,$f3
    # Line 3145
    sw	$a1,88($s0)
    # Line 3146
    lwc1	$f2,3544($s2)
    # Line 3148
    move	$a0,$s2
    # Line 3147
    swc1	$f3,196($s0)
    # Line 3148
    move	$a1,$s0
    bal __glLoadPackModes
    # Line 3146
    swc1	$f2,160($s0)
    # Line 3158
    sb	$zero,72($s0)
    # Line 3157
    sw	$zero,8($s0)
    # Line 3159
    li	$a7,6400
    # Line 3156
    sw	$zero,40($s0)
    # Line 3155
    li	$a4,4
    # Line 3158
    li	$a3,6401
    # Line 3155
    sw	$a4,36($s0)
    # Line 3159
    li	$a5,6402
    li	$a0,6402
    # Line 3154
    li	$a2,5126
    # Line 3158
    beq	$s1,$a3,.L0d9adcb4
    # Line 3154
    sw	$a2,4($s0)
    ld	$ra,32($sp)
    # Line 3162
    li	$t0,2
    # Line 3159
    beq	$s1,$a5,.L0d9adc80
    # Line 3163
    ld	$gp,0($sp)
    # Line 3159
    lbu	$a6,3220($s2)
    li	$a0,6408
    movz	$a0,$a7,$a6
.L0d9adc80:
    # Line 3162
    sw	$t0,432($s0)
    # Line 3159
    sw	$a0,0($s0)
    # Line 3163
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9adc9c:
    # Line 3139
    addu	$t2,$t1,$a3
    mtc1	$t2,$f4
    cvt.s.w	$f4,$f4
    sd	$ra,32($sp)
    b	.L0d9adbfc
    swc1	$f4,192($a1)
.L0d9adcb4:
    # Line 3163
    ld	$gp,0($sp)
    # Line 3162
    li	$s1,2
    sw	$s1,432($s0)
    # Line 3159
    li	$t3,6401
    sw	$t3,0($s0)
    ld	$ra,32($sp)
    # Line 3163
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,112
.end __glInitReadPixelsInfo

# Function: __glReadPixelSpans
# Declared: Line 3165 (Source lines: 3166-3207)
# Address: 0x0d9adce0 - 0x0d9ade88 (Size: 424 bytes, Frame: 0)
.globl __glReadPixelSpans
.ent __glReadPixelSpans
__glReadPixelSpans:
    # Line 3166
    addiu	$sp,$sp,-160
    move	$a5,$s8
    addiu	$s8,$sp,160
    sd	$s4,-40($s8)
    sd	$s3,-32($s8)
    sd	$gp,-56($s8)
    lui	$a3,0xa
    # Line 3180
    lw	$a4,168($a1)
    # Line 3166
    addiu	$a3,$a3,12460
    # Line 3169
    lw	$a2,352($a1)
    # Line 3183
    li	$a6,-16
    # Line 3166
    sd	$s6,-48($s8)
    # Line 3180
    sll	$a4,$a4,0x4
    # Line 3166
    sd	$a5,-64($s8)
    # Line 3182
    li	$a5,-16
    addiu	$a4,$a4,15
    and	$a5,$a4,$a5
    # Line 3183
    and	$a4,$a4,$a6
    # Line 3172
    lw	$a6,30648($a0)
    # Line 3166
    addu	$gp,$t9,$a3
    # Line 3172
    sd	$a6,-72($s8)
    subu	$sp,$sp,$a5
    # Line 3182
    move	$s6,$sp
    subu	$sp,$sp,$a4
    # Line 3187
    lw	$a3,4852($a0)
    sd	$sp,-88($s8)
    # Line 3188
    lw	$at,172($a1)
    # Line 3185
    lw	$v1,356($a1)
    # Line 3166
    move	$s3,$a1
    # Line 3188
    sd	$at,-80($s8)
    # Line 3166
    move	$s4,$a0
    # Line 3188
    blez	$at,.L0d9ade68
    # Line 3185
    sd	$v1,-96($s8)
    sd	$s0,-144($s8)
    sd	$ra,-136($s8)
    sd	$s2,-120($s8)
    sd	$s7,-152($s8)
    sdc1	$f20,-160($s8)
    # Line 3188
    mtc1	$a3,$f20
    sd	$s5,-128($s8)
    addiu	$s5,$a2,-1
    move	$s7,$zero
    sd	$s5,-104($s8)
    sll	$s5,$s5,0x2
    sd	$s1,-112($s8)
    addu	$s5,$s5,$a1
    b	.L0d9ade18
    cvt.s.w	$f20,$f20
.L0d9adda0:
    # Line 3194
    lw	$t9,360($s1)
    move	$s2,$a2
    move	$a0,$s4
    move	$a1,$s3
    jalr	$t9
    move	$a3,$s0
    # Line 3193
    addiu	$s1,$s1,4
    # Line 3196
    move	$a2,$s0
    # Line 3193
    bne	$s1,$s5,.L0d9adda0
    # Line 3197
    move	$s0,$s2
    # Line 3193
    ld	$a5,-104($s8)
.L0d9addcc:
    # Line 3199
    sll	$t9,$a5,0x2
    addu	$t9,$s3,$t9
    lw	$t9,360($t9)
    move	$a0,$s4
    move	$a1,$s3
    jalr	$t9
    lw	$a3,92($s3)
    # Line 3190
    ld	$ra,-72($s8)
    # Line 3201
    lw	$v1,92($s3)
    # Line 3203
    lwc1	$f21,192($s3)
    # Line 3201
    lw	$v0,96($s3)
    # Line 3190
    ld	$at,-80($s8)
    addiu	$s7,$s7,1
    # Line 3201
    addu	$v0,$v0,$v1
    sw	$v0,92($s3)
    # Line 3203
    add.s	$f21,$f21,$f20
    swc1	$f21,192($s3)
    # Line 3190
    beq	$at,$s7,.L0d9ade4c
    # Line 3205
    sw	$ra,30648($s4)
.L0d9ade18:
    # Line 3191
    ld	$t9,-96($s8)
    move	$a0,$s4
    move	$a1,$s3
    jalr	$t9
    move	$a2,$s6
    # Line 3192
    ld	$a0,-104($s8)
    move	$a2,$s6
    # Line 3193
    move	$a5,$zero
    # Line 3192
    move	$s1,$s3
    bgtz	$a0,.L0d9adda0
    ld	$s0,-88($s8)
    b	.L0d9addcc
    nop
.L0d9ade4c:
    ld	$s1,-112($s8)
    ld	$s2,-120($s8)
    ld	$s5,-128($s8)
    ld	$ra,-136($s8)
    ld	$s0,-144($s8)
    ld	$s7,-152($s8)
    ldc1	$f20,-160($s8)
.L0d9ade68:
    ld	$s3,-32($s8)
    ld	$s4,-40($s8)
    ld	$s6,-48($s8)
    # Line 3207
    ld	$a1,-64($s8)
    ld	$gp,-56($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a1
.end __glReadPixelSpans

# Function: __glReadPixels2
# Declared: Line 3212 (Source lines: 3213-3247)
# Address: 0x0d9ade90 - 0x0d9adfec (Size: 348 bytes, Frame: 0)
.globl __glReadPixels2
.ent __glReadPixels2
__glReadPixels2:
    # Line 3213
    addiu	$sp,$sp,-144
    move	$a2,$s8
    addiu	$s8,$sp,144
    sd	$s3,-64($s8)
    sd	$gp,-96($s8)
    sd	$s0,-72($s8)
    sd	$s6,-80($s8)
    sd	$s1,-40($s8)
    # Line 3225
    lw	$v1,168($a1)
    # Line 3213
    sd	$s5,-56($s8)
    sd	$s2,-48($s8)
    # Line 3228
    sll	$v1,$v1,0x4
    # Line 3213
    sd	$a2,-104($s8)
    # Line 3228
    li	$a2,-16
    addiu	$v1,$v1,15
    # Line 3229
    li	$a3,-16
    # Line 3213
    sd	$s7,-88($s8)
    # Line 3228
    and	$a2,$v1,$a2
    # Line 3216
    lw	$s7,30648($a0)
    # Line 3229
    and	$v1,$v1,$a3
    subu	$sp,$sp,$a2
    # Line 3228
    move	$s2,$sp
    subu	$sp,$sp,$v1
    # Line 3235
    lw	$a3,4852($a0)
    # Line 3233
    lw	$s5,356($a1)
    # Line 3213
    lui	$v0,0xa
    # Line 3236
    lw	$at,172($a1)
    # Line 3213
    addiu	$v0,$v0,12028
    move	$s1,$a1
    # Line 3232
    lw	$s6,364($a1)
    # Line 3213
    move	$s0,$a0
    addu	$gp,$t9,$v0
    # Line 3231
    lw	$a2,360($a1)
    # Line 3236
    sd	$at,-112($s8)
    blez	$at,.L0d9adfbc
    # Line 3229
    move	$s3,$sp
    sdc1	$f20,-136($s8)
    # Line 3236
    mtc1	$a3,$f20
    sd	$ra,-120($s8)
    sd	$s4,-128($s8)
    move	$s4,$zero
    sd	$a2,-32($s8)
    cvt.s.w	$f20,$f20
    nop
.L0d9adf40:
    # Line 3238
    move	$t9,$s5
    move	$a0,$s0
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s2
    # Line 3239
    ld	$t9,-32($s8)
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    jalr	$t9
    move	$a3,$s3
    # Line 3240
    move	$t9,$s6
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s3
    jalr	$t9
    lw	$a3,92($s1)
    # Line 3241
    lw	$a5,92($s1)
    # Line 3243
    lwc1	$f21,192($s1)
    # Line 3241
    lw	$a4,96($s1)
    # Line 3237
    ld	$a3,-112($s8)
    addiu	$s4,$s4,1
    # Line 3241
    addu	$a4,$a4,$a5
    sw	$a4,92($s1)
    # Line 3243
    add.s	$f21,$f21,$f20
    swc1	$f21,192($s1)
    # Line 3237
    bne	$a3,$s4,.L0d9adf40
    # Line 3245
    sw	$s7,30648($s0)
    ld	$ra,-120($s8)
    ld	$s4,-128($s8)
    ldc1	$f20,-136($s8)
.L0d9adfbc:
    ld	$s1,-40($s8)
    ld	$s2,-48($s8)
    ld	$s5,-56($s8)
    ld	$s3,-64($s8)
    ld	$s0,-72($s8)
    ld	$s6,-80($s8)
    ld	$s7,-88($s8)
    # Line 3247
    ld	$a6,-104($s8)
    ld	$gp,-96($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a6
.end __glReadPixels2

# Function: __glReadPixels1
# Declared: Line 3252 (Source lines: 3253-3282)
# Address: 0x0d9adff0 - 0x0d9ae110 (Size: 288 bytes, Frame: 0)
.globl __glReadPixels1
.ent __glReadPixels1
__glReadPixels1:
    # Line 3253
    addiu	$sp,$sp,-128
    move	$v1,$s8
    addiu	$s8,$sp,128
    sd	$s2,-40($s8)
    sd	$s7,-80($s8)
    sd	$s5,-48($s8)
    sd	$gp,-88($s8)
    sd	$s0,-56($s8)
    sd	$s1,-32($s8)
    # Line 3266
    lw	$v0,168($a1)
    # Line 3253
    sd	$s4,-64($s8)
    sd	$s6,-72($s8)
    # Line 3266
    sll	$v0,$v0,0x4
    # Line 3253
    sd	$v1,-96($s8)
    # Line 3266
    li	$v1,-16
    addiu	$v0,$v0,15
    # Line 3256
    lw	$s6,30648($a0)
    # Line 3266
    and	$v0,$v0,$v1
    # Line 3253
    lui	$at,0xa
    subu	$sp,$sp,$v0
    # Line 3272
    lw	$s4,172($a1)
    # Line 3253
    addiu	$at,$at,11676
    move	$s1,$a1
    # Line 3271
    lw	$a2,4852($a0)
    # Line 3253
    move	$s0,$a0
    addu	$gp,$t9,$at
    # Line 3269
    lw	$s5,356($a1)
    # Line 3268
    lw	$s7,360($a1)
    # Line 3272
    blez	$s4,.L0d9ae0e0
    # Line 3266
    move	$s2,$sp
    sdc1	$f20,-120($s8)
    # Line 3272
    mtc1	$a2,$f20
    sd	$ra,-112($s8)
    sd	$s3,-104($s8)
    move	$s3,$zero
    cvt.s.w	$f20,$f20
.L0d9ae080:
    # Line 3274
    move	$t9,$s5
    move	$a0,$s0
    move	$a1,$s1
    jalr	$t9
    move	$a2,$s2
    # Line 3275
    move	$t9,$s7
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$s2
    jalr	$t9
    lw	$a3,92($s1)
    # Line 3276
    lw	$a1,92($s1)
    # Line 3278
    lwc1	$f21,192($s1)
    # Line 3276
    lw	$a0,96($s1)
    # Line 3273
    addiu	$s3,$s3,1
    # Line 3276
    addu	$a0,$a0,$a1
    sw	$a0,92($s1)
    # Line 3278
    add.s	$f21,$f21,$f20
    swc1	$f21,192($s1)
    # Line 3273
    bne	$s4,$s3,.L0d9ae080
    # Line 3280
    sw	$s6,30648($s0)
    ld	$s3,-104($s8)
    ld	$ra,-112($s8)
    ldc1	$f20,-120($s8)
.L0d9ae0e0:
    ld	$s1,-32($s8)
    ld	$s2,-40($s8)
    ld	$s5,-48($s8)
    ld	$s0,-56($s8)
    ld	$s4,-64($s8)
    ld	$s6,-72($s8)
    ld	$s7,-80($s8)
    # Line 3282
    ld	$a2,-96($s8)
    ld	$gp,-88($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a2
.end __glReadPixels1

# Function: __glReadPixels0
# Declared: Line 3287 (Source lines: 3288-3304)
# Address: 0x0d9ae110 - 0x0d9ae1cc (Size: 188 bytes, Frame: 192)
.globl __glReadPixels0
.ent __glReadPixels0
__glReadPixels0:
    # Line 3296
    lw	$a4,4852($a0)
    # Line 3288
    addiu	$sp,$sp,-64
    sd	$s3,8($sp)
    sd	$s0,24($sp)
    sd	$s2,0($sp)
    # Line 3297
    lw	$s2,172($a1)
    # Line 3288
    move	$s0,$a1
    sd	$s4,16($sp)
    lui	$at,0xa
    move	$s4,$a0
    # Line 3294
    lw	$s3,356($a1)
    # Line 3288
    addiu	$at,$at,11388
    sd	$gp,32($sp)
    # Line 3297
    blez	$s2,.L0d9ae1b0
    # Line 3288
    addu	$gp,$t9,$at
    sdc1	$f20,56($sp)
    # Line 3297
    mtc1	$a4,$f20
    sd	$ra,40($sp)
    lw	$a2,92($a1)
    sd	$s1,48($sp)
    move	$s1,$zero
    cvt.s.w	$f20,$f20
    nop
    nop
.L0d9ae170:
    # Line 3299
    move	$t9,$s3
    move	$a0,$s4
    jalr	$t9
    move	$a1,$s0
    # Line 3300
    lw	$a3,92($s0)
    # Line 3302
    lwc1	$f21,192($s0)
    # Line 3300
    lw	$a2,96($s0)
    # Line 3298
    addiu	$s1,$s1,1
    # Line 3300
    addu	$a2,$a2,$a3
    sw	$a2,92($s0)
    # Line 3302
    add.s	$f21,$f21,$f20
    # Line 3298
    bne	$s2,$s1,.L0d9ae170
    # Line 3302
    swc1	$f21,192($s0)
    ld	$ra,40($sp)
    ld	$s1,48($sp)
    ldc1	$f20,56($sp)
.L0d9ae1b0:
    ld	$s2,0($sp)
    ld	$s3,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    # Line 3304
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glReadPixels0

# Function: __glSlowPickReadPixels
# Declared: Line 3310 (Source lines: 3313-3323)
# Address: 0x0d9ae1d0 - 0x0d9ae26c (Size: 156 bytes, Frame: 160)
.globl __glSlowPickReadPixels
.ent __glSlowPickReadPixels
__glSlowPickReadPixels:
    # Line 3313
    move	$at,$a7
    move	$a7,$a6
    lui	$v1,0xa
    addiu	$sp,$sp,-544
    addiu	$v1,$v1,11196
    move	$a6,$a5
    sd	$gp,536($sp)
    addu	$gp,$t9,$v1
    move	$a5,$a4
    move	$a4,$a3
    # Line 3316
    # lw $t9, -27800($gp) # &__glInitReadPixelsInfo
    # Line 3313
    move	$a3,$a2
    move	$v0,$a1
    sd	$ra,528($sp)
    # Line 3316
    addiu	$a1,$sp,16
    move	$a2,$v0
    # Line 3313
    sd	$s0,520($sp)
    # Line 3316
    nop
    # Line 3313
    move	$s0,$a0
    # Line 3316
    bal __glInitReadPixelsInfo
    sw	$at,4($sp)
    # Line 3318
    # lw $t9, -27808($gp) # &__glClipReadPixels
    move	$a0,$s0
    bal __glClipReadPixels
    addiu	$a1,$sp,16
    beqz	$v0,.L0d9ae258
    # Line 3320
    nop	# was lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 3322
    # lw $t9, -27776($gp) # &__glGenericPickReadPixels
    move	$a0,$s0
    bal __glGenericPickReadPixels
    addiu	$a1,$sp,16
.L0d9ae258:
    ld	$ra,528($sp)
    ld	$s0,520($sp)
    # Line 3323
    ld	$gp,536($sp)
    jr	$ra
    addiu	$sp,$sp,544
.end __glSlowPickReadPixels

# Function: __glGenericPickReadPixels
# Declared: Line 3329 (Source lines: 3330-3399)
# Address: 0x0d9ae270 - 0x0d9ae39c (Size: 300 bytes, Frame: 192)
.globl __glGenericPickReadPixels
.ent __glGenericPickReadPixels
__glGenericPickReadPixels:
    # Line 3330
    addiu	$sp,$sp,-64
    # Line 3337
    li	$at,1
    # Line 3340
    sb	$at,12($sp)
    # Line 3330
    sd	$ra,32($sp)
    lui	$ra,0xa
    # Line 3338
    li	$v0,2
    # Line 3339
    sw	$v0,8($sp)
    # Line 3330
    addiu	$ra,$ra,11036
    sd	$gp,40($sp)
    addu	$gp,$t9,$ra
    # Line 3342
    # lw $t9, -32716($gp) # &sub_0d9b0000
    # Line 3338
    sw	$v0,4($sp)
    # Line 3330
    sd	$a0,48($sp)
    # Line 3342
    addiu	$t9,$t9,-30800
    addiu	$a2,$sp,0
    # Line 3330
    sd	$s0,24($sp)
    move	$s0,$a1
    # Line 3342
    bal __glSpanRGBAScaleBiasReduce
    # Line 3337
    sw	$at,0($sp)
    # Line 3342
    move	$a1,$v0
    # Line 3354
    addiu	$t3,$v0,-1
    # Line 3352
    lw	$a4,264($s0)
    li	$a6,2
    ld	$a0,48($sp)
    li	$v1,-1
    # Line 3367
    li	$a5,1
    # Line 3359
    li	$a3,0x8012
    # Line 3352
    lw	$at,16($sp)
    # Line 3387
    li	$t0,0x8016
    # Line 3352
    beq	$a4,$v1,.L0d9ae37c
    sw	$at,356($s0)
    # Line 3356
    addiu	$a1,$a4,1
.L0d9ae2f0:
    # Line 3359
    li	$a2,0x8011
    lw	$a4,436($s0)
    lw	$v0,0($a4)
    beq	$v0,$a2,.L0d9ae374
    xor	$a6,$a1,$a6
    # Line 3365
    # lw $t9, -28268($gp) # &__glSep2dReadPixels
    # Line 3359
    beq	$v0,$a3,.L0d9ae384
    nop
    # Line 3367
    beqz	$a1,.L0d9ae38c
    # Line 3373
    nop	# was lw $t9, -27788($gp) # &__glReadPixels1
    # Line 3367
    beq	$a1,$a5,.L0d9ae394
    # Line 3376
    la	$a7,__glReadPixels2
    # Line 3378
    # lw $t9, -27796($gp) # &__glReadPixelSpans
    movz	$t9,$a7,$a6
.L0d9ae328:
    # Line 3383
    sw	$a1,352($s0)
.L0d9ae32c:
    # Line 3387
    lw	$a7,4($a4)
    beq	$a7,$t0,.L0d9ae354
    nop
.L0d9ae338:
    # Line 3398
    jal	__glReadPixelSpans
    move	$a1,$s0
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    # Line 3399
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9ae354:
    # Line 3389
    lw	$t2,64($a4)
    lw	$t1,180($s0)
    subu	$t1,$t1,$t2
    addiu	$t1,$t1,1
    bgez	$t1,.L0d9ae338
    sw	$t1,184($s0)
    # Line 3391
    b	.L0d9ae338
    sw	$zero,184($s0)
.L0d9ae374:
    b	.L0d9ae328
    # Line 3361
    nop	# was lw $t9, -28272($gp) # &__glConv2dReadPixels
.L0d9ae37c:
    # Line 3354
    b	.L0d9ae2f0
    sw	$t3,264($s0)
.L0d9ae384:
    # Line 3365
    b	.L0d9ae32c
    # Line 3383
    sw	$a1,352($s0)
.L0d9ae38c:
    b	.L0d9ae328
    # Line 3369
    nop	# was lw $t9, -27784($gp) # &__glReadPixels0
.L0d9ae394:
    # Line 3373
    b	.L0d9ae32c
    # Line 3383
    sw	$a1,352($s0)
.end __glGenericPickReadPixels

# Function: __glClipCopyPixels
# Declared: Line 3407 (Source lines: 3408-3759)
# Address: 0x0d9ae3a0 - 0x0d9ae974 (Size: 1492 bytes, Frame: 176)
.globl __glClipCopyPixels
.ent __glClipCopyPixels
__glClipCopyPixels:
    # Line 3438
    sw	$zero,128($a1)
    # Line 3408
    lui	$at,0xa
    # Line 3437
    sw	$zero,132($a1)
    # Line 3408
    addiu	$sp,$sp,-176
    addiu	$at,$at,10732
    sd	$gp,96($sp)
    addu	$gp,$t9,$at
    # Line 3439
    # lw $t9, -27808($gp) # &__glClipReadPixels
    # Line 3408
    sd	$s0,64($sp)
    move	$s0,$a1
    sd	$s1,72($sp)
    # Line 3439
    nop
    # Line 3408
    sd	$ra,88($sp)
    # Line 3439
    bal __glClipReadPixels
    # Line 3408
    move	$s1,$a0
    # Line 3439
    beqz	$v0,.L0d9ae60c
    nop
    # Line 3441
    lw	$v1,132($s0)
    # Line 3440
    lw	$v0,128($s0)
    # Line 3441
    mtc1	$v1,$f4
    # Line 3440
    mtc1	$v0,$f2
    # Line 3441
    cvt.s.w	$f4,$f4
    lwc1	$f5,164($s0)
    # Line 3440
    cvt.s.w	$f2,$f2
    lwc1	$f3,160($s0)
    # Line 3441
    lwc1	$f1,200($s0)
    madd.s	$f1,$f1,$f4,$f5
    # Line 3440
    lwc1	$f0,196($s0)
    madd.s	$f0,$f0,$f2,$f3
    # Line 3444
    sw	$zero,48($s0)
    # Line 3445
    # lw $t9, -27856($gp) # &__glClipDrawPixels
    # Line 3443
    sw	$zero,52($s0)
    # Line 3445
    move	$a1,$s0
    # Line 3441
    swc1	$f1,200($s0)
    # Line 3445
    move	$a0,$s1
    bal __glClipDrawPixels
    # Line 3440
    swc1	$f0,196($s0)
    # Line 3445
    beqz	$v0,.L0d9ae770
    nop
    # Line 3446
    lw	$a2,48($s0)
    mtc1	$a2,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f12,188($s0)
    lw	$a1,52($s0)
    add.s	$f11,$f11,$f12
    swc1	$f11,188($s0)
    mtc1	$a1,$f4
    lbu	$a0,4848($s1)
    lwc1	$f6,192($s0)
    beqz	$a0,.L0d9ae6ec
    cvt.s.w	$f4,$f4
    sd	$s2,80($sp)
    # Line 3448
    sub.s	$f6,$f6,$f4
    swc1	$f6,192($s0)
.L0d9ae478:
    # Line 3573
    lwc1	$f4,3680($s1)
    lwc1	$f9,3540($s1)
    lwc1	$f7,164($s0)
    # Line 3572
    lwc1	$f8,160($s0)
    # Line 3569
    lwc1	$f5,200($s0)
    # Line 3571
    trunc.w.s	$f10,$f6
    # Line 3573
    lbu	$a3,4848($s1)
    # Line 3568
    lwc1	$f12,196($s0)
    # Line 3570
    trunc.w.s	$f13,$f11
    # Line 3567
    lw	$s2,172($s0)
    # Line 3571
    mfc1	$a1,$f10
    # Line 3566
    lw	$v0,168($s0)
    # Line 3573
    cvt.s.w	$f10,$f10
    beqz	$a3,.L0d9ae6fc
    # Line 3570
    mfc1	$a0,$f13
    # Line 3577
    subu	$a4,$a1,$s2
    mtc1	$a4,$f16
    cvt.s.w	$f16,$f16
    # Line 3578
    sub.s	$f14,$f10,$f4
    # Line 3577
    add.s	$f16,$f16,$f9
.L0d9ae4c8:
    # Line 3581
    mtc1	$v0,$f11
    mtc1	$zero,$f13
    cvt.s.w	$f11,$f11
    c.lt.s	$f13,$f8
    sub.s	$f6,$f12,$f4
    bc1f	.L0d9ae4ec
    # Line 3588
    mov.s	$f10,$f6
    # Line 3589
    b	.L0d9ae4f8
    madd.s	$f12,$f6,$f11,$f8
.L0d9ae4ec:
    # Line 3592
    lwc1	$f12,3544($s1)
    add.s	$f12,$f12,$f6
    # Line 3593
    madd.s	$f10,$f12,$f11,$f8
.L0d9ae4f8:
    # Line 3594
    c.lt.s $f13,$f7
    mtc1	$s2,$f6
    li	$a4,1
    movf	$a4,$zero,$fcc1
    sub.s	$f8,$f5,$f4
    nop
    beqz	$a4,.L0d9ae714
    cvt.s.w	$f6,$f6
    # Line 3601
    madd.s	$f17,$f8,$f6,$f7
    # Line 3598
    mov.s	$f5,$f8
    # Line 3599
    mov.s	$f18,$f7
    # Line 3600
    mov.s	$f11,$f8
    # Line 3601
    mov.s	$f15,$f17
.L0d9ae52c:
    # Line 3610
    addu	$a5,$v0,$a0
    mtc1	$a5,$f8
    cvt.s.w	$f8,$f8
    sub.s	$f8,$f8,$f4
    c.lt.s $f8,$f10
    bc1t .L0d9ae5c0
    mtc1	$a0,$f10
    cvt.s.w	$f10,$f10
    add.s	$f10,$f10,$f9
    c.lt.s $f12,$f10
    bc1t .L0d9ae5c0
    nop
    c.lt.s $f14,$f11
    bc1t .L0d9ae5c0
    nop
    c.lt.s $f15,$f16
    # Line 3632
    mov.s	$f9,$f5
    # Line 3643
    move	$a5,$zero
    # Line 3632
    mov.s	$f10,$f17
    # Line 3643
    move	$a0,$zero
    # Line 3610
    bc1t .L0d9ae5c0
    li	$t0,1032
    lbu	$a6,3536($s1)
    li	$t1,6401
    beqz	$a6,.L0d9ae5c0
    li	$t2,6402
    lw	$v0,1888($s1)
    lw	$a7,1236($s1)
    beq	$a7,$v0,.L0d9ae61c
    # Line 3643
    move	$a6,$zero
    # Line 3610
    beq	$v0,$t0,.L0d9ae620
    # Line 3627
    ldc1	$f14,_lit8_bfe0000000000000
    # Line 3610
    lw	$v0,80($s0)
    beq	$v0,$t1,.L0d9ae620
    # Line 3627
    ldc1	$f14,_lit8_bfe0000000000000
    # Line 3610
    beq	$v0,$t2,.L0d9ae620
    # Line 3627
    ldc1	$f14,_lit8_bfe0000000000000
.L0d9ae5c0:
    # Line 3759
    ld	$gp,96($sp)
    # Line 3623
    swc1	$f5,272($s0)
    # Line 3622
    swc1	$f5,268($s0)
    # Line 3621
    sw	$zero,280($s0)
    # Line 3620
    sw	$zero,276($s0)
    # Line 3619
    sw	$zero,232($s0)
    # Line 3618
    sw	$s2,228($s0)
    # Line 3617
    sb	$zero,224($s0)
    # Line 3759
    ld	$ra,88($sp)
    ld	$s0,64($sp)
    # Line 3624
    li	$v0,1
    # Line 3759
    ld	$s1,72($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d9ae5fc:
    ld	$ra,88($sp)
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d9ae60c:
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    # Line 3439
    b	.L0d9ae5fc
    move	$v0,$zero
.L0d9ae61c:
    # Line 3627
    ldc1	$f14,_lit8_bfe0000000000000
.L0d9ae620:
    li	$t3,1
    sb	$t3,224($s0)
    cvt.d.s	$f11,$f5
    mtc1	$a1,$f12
    lbu	$v0,4848($s1)
    # Line 3632
    move	$t0,$a1
    # Line 3643
    move	$a7,$zero
    subu	$t1,$a1,$s2
    # Line 3627
    add.d	$f11,$f11,$f14
    # Line 3643
    addiu	$t1,$t1,1
    # Line 3627
    lwc1	$f14,_lit_bf800000
    beqz	$v0,.L0d9ae78c
    cvt.d.w	$f12,$f12
    # Line 3631
    sub.d	$f8,$f11,$f12
    # Line 3632
    sub.s	$f4,$f14,$f7
    # Line 3631
    cvt.s.d	$f8,$f8
.L0d9ae660:
    # Line 3645
    c.eq.s $f4,$f13
    # Line 3651
    mov.s	$f12,$f6
    # Line 3645
    bc1f .L0d9ae730
    # Line 3653
    mtc1	$zero,$f11
    # Line 3645
    c.lt.s $f13,$f8
    movf.s	$f12,$f11,$fcc7
.L0d9ae678:
    # Line 3660
    c.eq.s	$f12,$f13
    bc1f	.L0d9ae748
    lwc1	$f8,3544($s1)
    c.lt.s $f18,$f8
    movf	$a5,$s2,$fcc1
    movt	$a0,$s2,$fcc1
.L0d9ae690:
    # Line 3727
    lwc1	$f4,3680($s1)
    beqz	$a4,.L0d9ae7c0
    add.s	$f4,$f4,$f9
    # Line 3745
    swc1	$f4,268($s0)
    # Line 3746
    lwc1	$f5,3680($s1)
    lwc1	$f6,3544($s1)
    add.s	$f5,$f5,$f10
    sub.s	$f5,$f5,$f6
    swc1	$f5,272($s0)
.L0d9ae6b4:
    # Line 3759
    ld	$gp,96($sp)
    # Line 3757
    sw	$t1,288($s0)
    # Line 3756
    sw	$t0,284($s0)
    # Line 3755
    sw	$a5,232($s0)
    # Line 3754
    sw	$a0,228($s0)
    # Line 3753
    sw	$a7,280($s0)
    # Line 3752
    sw	$a6,276($s0)
    # Line 3759
    ld	$ra,88($sp)
    ld	$s0,64($sp)
    li	$v0,1
    ld	$s1,72($sp)
    ld	$s2,80($sp)
    jr	$ra
    addiu	$sp,$sp,176
.L0d9ae6ec:
    sd	$s2,80($sp)
    # Line 3450
    add.s	$f6,$f6,$f4
    b	.L0d9ae478
    swc1	$f6,192($s0)
.L0d9ae6fc:
    # Line 3581
    addu	$t2,$s2,$a1
    mtc1	$t2,$f14
    cvt.s.w	$f14,$f14
    # Line 3580
    add.s	$f16,$f10,$f9
    b	.L0d9ae4c8
    # Line 3581
    sub.s	$f14,$f14,$f4
.L0d9ae714:
    # Line 3604
    lwc1	$f5,3544($s1)
    add.s	$f5,$f5,$f8
    # Line 3606
    madd.s	$f17,$f5,$f6,$f7
    # Line 3607
    mov.s	$f15,$f5
    # Line 3605
    neg.s	$f18,$f7
    b	.L0d9ae52c
    # Line 3606
    mov.s	$f11,$f17
.L0d9ae730:
    # Line 3656
    div.s	$f11,$f8,$f4
    c.lt.s $f11,$f13
    bc1f .L0d9ae780
    mov.s	$f12,$f11
    b	.L0d9ae678
    mtc1	$zero,$f12
.L0d9ae748:
    sdc1	$f7,104($sp)
    # Line 3668
    c.eq.s $f6,$f12
    sdc1	$f5,112($sp)
    sd	$v0,120($sp)
    bc1f .L0d9ae7d8
    sd	$a1,160($sp)
    c.lt.s $f18,$f8
    movt	$a5,$s2,$fcc4
    b	.L0d9ae690
    movf	$a0,$s2,$fcc4
.L0d9ae770:
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    # Line 3445
    b	.L0d9ae5fc
    move	$v0,$zero
.L0d9ae780:
    # Line 3656
    c.lt.s $f6,$f11
    b	.L0d9ae678
    movt.s	$f12,$f6,$fcc5
.L0d9ae78c:
    # Line 3635
    move	$t0,$a1
    # Line 3645
    move	$a6,$zero
    move	$a7,$zero
    move	$a5,$zero
    # Line 3634
    sub.d	$f8,$f12,$f11
    # Line 3635
    mov.s	$f9,$f5
    add.s	$f4,$f7,$f14
    # Line 3645
    move	$a0,$zero
    addu	$t1,$s2,$a1
    # Line 3635
    mov.s	$f10,$f17
    # Line 3645
    addiu	$t1,$t1,-1
    b	.L0d9ae660
    # Line 3634
    cvt.s.d	$f8,$f8
.L0d9ae7c0:
    # Line 3749
    sub.s	$f11,$f4,$f8
    swc1	$f11,268($s0)
    # Line 3750
    lwc1	$f9,3680($s1)
    add.s	$f9,$f9,$f10
    b	.L0d9ae6b4
    swc1	$f9,272($s0)
.L0d9ae7d8:
    sdc1	$f10,8($sp)
    sdc1	$f9,16($sp)
    sdc1	$f8,24($sp)
    sdc1	$f18,32($sp)
    sd	$t1,56($sp)
    # Line 3679
    # lw $t9, -22852($gp) # &ceilf
    sd	$t0,48($sp)
    sd	$a7,40($sp)
    jal	ceilf
    sd	$a4,152($sp)
    trunc.w.s	$f8,$f0
    mfc1	$a7,$f8
    ldc1	$f10,32($sp)
    ldc1	$f9,24($sp)
    addiu	$t2,$a7,-1
    lwc1	$f7,3540($s1)
    mtc1	$t2,$f12
    ldc1	$f5,112($sp)
    ld	$v0,160($sp)
    c.lt.s $f9,$f10
    lwc1	$f9,3676($s1)
    cvt.s.w	$f12,$f12
    ld	$a5,120($sp)
    sub.s	$f7,$f5,$f7
    ldc1	$f6,104($sp)
    subu	$a6,$s2,$a7
    sub.s	$f7,$f7,$f9
    bc1f .L0d9ae8e8
    sdc1	$f12,0($sp)
    # Line 3696
    subu	$v1,$v0,$a7
    # Line 3698
    addu	$a0,$a7,$v0
    addiu	$a0,$a0,-1
    # Line 3696
    addiu	$v1,$v1,1
    movz	$v1,$a0,$a5
    # Line 3701
    mtc1	$v1,$f12
    cvt.s.w	$f12,$f12
    # Line 3693
    sd	$a6,136($sp)
    # Line 3690
    move	$t3,$a6
    slt	$at,$a6,$a7
    # Line 3701
    # lw $t9, -22848($gp) # &floorf
    # Line 3692
    move	$ra,$a7
    sd	$ra,144($sp)
    # Line 3690
    movn	$t3,$a7,$at
    # Line 3701
    sub.s	$f12,$f12,$f7
    # Line 3691
    subu	$t8,$t3,$a6
    sd	$t8,40($sp)
    # Line 3690
    subu	$t3,$t3,$a7
    sd	$t3,128($sp)
    # Line 3701
    jal	floorf
    div.s	$f12,$f12,$f6
    ld	$a4,152($sp)
    ld	$a0,144($sp)
    ld	$a5,136($sp)
    ld	$a6,128($sp)
    ldc1	$f13,0($sp)
    ld	$a7,40($sp)
    ld	$t0,48($sp)
    ld	$t1,56($sp)
    c.eq.s $f0,$f13
    ldc1	$f8,24($sp)
    ldc1	$f9,16($sp)
    bc1f .L0d9ae690
    ldc1	$f10,8($sp)
    # Line 3711
    addiu	$a3,$a6,1
    movz	$a6,$a3,$a7
    # Line 3709
    addiu	$a1,$a7,-1
    b	.L0d9ae690
    movn	$a7,$a1,$a7
.L0d9ae8e8:
    # Line 3716
    move	$t1,$a7
    # Line 3720
    subu	$a4,$v0,$a7
    # Line 3717
    sd	$a6,144($sp)
    # Line 3723
    addu	$a6,$a7,$v0
    # Line 3724
    addiu	$t0,$a6,-1
    # Line 3721
    addiu	$a7,$a4,1
    # Line 3718
    cvt.s.w	$f13,$f8
    movz	$a7,$t0,$a5
    # Line 3727
    mtc1	$a7,$f12
    # Line 3718
    madd.s	$f13,$f5,$f13,$f6
    # Line 3727
    cvt.s.w	$f12,$f12
    # Line 3716
    sd	$t1,136($sp)
    movz	$a4,$a6,$a5
    sd	$a4,48($sp)
    # Line 3727
    # lw $t9, -22848($gp) # &floorf
    sd	$a7,56($sp)
    sub.s	$f12,$f12,$f7
    # Line 3718
    sdc1	$f13,16($sp)
    sdc1	$f13,8($sp)
    # Line 3727
    jal	floorf
    div.s	$f12,$f12,$f6
    ld	$a4,152($sp)
    ld	$a0,144($sp)
    ld	$a5,136($sp)
    ld	$a7,40($sp)
    ld	$t0,48($sp)
    ldc1	$f14,0($sp)
    ld	$t1,56($sp)
    ldc1	$f8,24($sp)
    ldc1	$f9,16($sp)
    c.eq.s	$f0,$f14
    ldc1	$f10,8($sp)
    li	$a6,1
    b	.L0d9ae690
    movf	$a6,$zero,$fcc0
.end __glClipCopyPixels

# Function: __glInitCopyPixelsInfo
# Declared: Line 3762 (Source lines: 3765-3838)
# Address: 0x0d9ae980 - 0x0d9aeb6c (Size: 492 bytes, Frame: 0)
.globl __glInitCopyPixelsInfo
.ent __glInitCopyPixelsInfo
__glInitCopyPixelsInfo:
    # Line 3771
    lwc1	$f1,376($a0)
    # Line 3769
    lwc1	$f0,368($a0)
    # Line 3770
    lwc1	$f6,372($a0)
    # Line 3771
    trunc.l.s	$f1,$f1
    # Line 3773
    swc1	$f0,196($a1)
    # Line 3774
    swc1	$f6,200($a1)
    # Line 3771
    dmfc1	$v1,$f1
    sw	$v1,248($a1)
    # Line 3775
    mtc1	$zero,$f7
    lwc1	$f5,744($a0)
    c.lt.s	$f7,$f5
    # Line 3765
    lui	$v0,0xa
    # Line 3775
    li	$t2,1
    # Line 3765
    addiu	$v0,$v0,9228
    # Line 3789
    li	$a7,-1
    # Line 3775
    bc1f	.L0d9ae9e8
    # Line 3765
    addu	$at,$t9,$v0
    # Line 3775
    lwc1	$f4,3544($a0)
    c.lt.s $f5,$f4
    bc1f .L0d9ae9dc
    nop
    # Line 3778
    b	.L0d9ae9e0
    swc1	$f4,244($a1)
.L0d9ae9dc:
    # Line 3780
    swc1	$f5,244($a1)
.L0d9ae9e0:
    # Line 3782
    b	.L0d9aea08
    sw	$t2,240($a1)
.L0d9ae9e8:
    lwc1	$f4,_lit_bf800000
    c.lt.s $f4,$f5
    bc1f .L0d9aea00
    nop
    # Line 3785
    b	.L0d9aea04
    swc1	$f4,244($a1)
.L0d9aea00:
    # Line 3787
    swc1	$f5,244($a1)
.L0d9aea04:
    # Line 3789
    sw	$a7,240($a1)
.L0d9aea08:
    # Line 3791
    swc1	$f5,160($a1)
    # Line 3792
    lbu	$t0,4848($a0)
    # Line 3801
    li	$t1,-1
    # Line 3792
    beqz	$t0,.L0d9aeb20
    lwc1	$f4,748($a0)
    # Line 3794
    neg.s	$f4,$f4
.L0d9aea20:
    # Line 3796
    c.lt.s $f7,$f4
    bc1f .L0d9aea34
    nop
    # Line 3799
    b	.L0d9aea38
    sw	$t2,236($a1)
.L0d9aea34:
    # Line 3801
    sw	$t1,236($a1)
.L0d9aea38:
    # Line 3803
    swc1	$f4,164($a1)
    # Line 3804
    lw	$t8,3660($a0)
    addu	$t8,$t8,$a2
    mtc1	$t8,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,188($a1)
    lbu	$t3,4848($a0)
    # Line 3823
    li	$v0,6401
    # Line 3824
    li	$v1,6402
    li	$a2,6402
    # Line 3804
    beqz	$t3,.L0d9aeb0c
    lw	$t1,3664($a0)
    # Line 3806
    lw	$t9,3704($a0)
    subu	$t9,$t9,$a3
    addu	$t9,$t1,$t9
    addiu	$t9,$t9,-1
    mtc1	$t9,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,192($a1)
.L0d9aea84:
    # Line 3823
    sb	$zero,72($a1)
    # Line 3822
    sw	$zero,8($a1)
    # Line 3821
    sw	$zero,40($a1)
    # Line 3820
    li	$a3,4
    sw	$a3,36($a1)
    # Line 3819
    li	$t1,5126
    sw	$t1,4($a1)
    # Line 3812
    sw	$a4,168($a1)
    sw	$a4,180($a1)
    sw	$a4,184($a1)
    # Line 3811
    sw	$a6,80($a1)
    # Line 3813
    sw	$a5,172($a1)
    # Line 3824
    li	$a5,6400
    # Line 3823
    beq	$a6,$v0,.L0d9aeb30
    # Line 3811
    sw	$a6,0($a1)
    # Line 3824
    beq	$a6,$v1,.L0d9aead4
    nop
    lbu	$a4,3220($a0)
    li	$a2,6408
    movz	$a2,$a5,$a4
.L0d9aead4:
    # Line 3837
    li	$a6,2
    sw	$a6,432($a1)
    # Line 3836
    sb	$zero,430($a1)
    # Line 3835
    sb	$zero,429($a1)
    # Line 3834
    sb	$t2,428($a1)
    # Line 3833
    sb	$zero,427($a1)
    # Line 3832
    sb	$t2,425($a1)
    # Line 3831
    sb	$zero,424($a1)
    # Line 3830
    sw	$zero,88($a1)
    # Line 3829
    sw	$zero,120($a1)
    # Line 3828
    sw	$a3,116($a1)
    # Line 3827
    sw	$t1,84($a1)
    # Line 3838
    jr	$ra
    # Line 3824
    sw	$a2,0($a1)
.L0d9aeb0c:
    # Line 3809
    addu	$a7,$t1,$a3
    mtc1	$a7,$f4
    cvt.s.w	$f4,$f4
    b	.L0d9aea84
    swc1	$f4,192($a1)
.L0d9aeb20:
    # Line 3796
    lwc1	$f5,3676($a0)
    add.s	$f5,$f5,$f6
    b	.L0d9aea20
    swc1	$f5,200($a1)
.L0d9aeb30:
    # Line 3837
    li	$t3,2
    sw	$t3,432($a1)
    # Line 3836
    sb	$zero,430($a1)
    # Line 3835
    sb	$zero,429($a1)
    # Line 3834
    sb	$t2,428($a1)
    # Line 3833
    sb	$zero,427($a1)
    # Line 3832
    sb	$t2,425($a1)
    # Line 3831
    sb	$zero,424($a1)
    # Line 3830
    sw	$zero,88($a1)
    # Line 3829
    sw	$zero,120($a1)
    # Line 3828
    sw	$a3,116($a1)
    # Line 3827
    sw	$t1,84($a1)
    # Line 3824
    li	$t0,6401
    # Line 3838
    jr	$ra
    # Line 3824
    sw	$t0,0($a1)
.end __glInitCopyPixelsInfo

# Function: __glCopyPixelSpans
# Declared: Line 3844 (Source lines: 3845-3914)
# Address: 0x0d9aeb70 - 0x0d9aee14 (Size: 676 bytes, Frame: 0)
.globl __glCopyPixelSpans
.ent __glCopyPixelSpans
__glCopyPixelSpans:
    # Line 3845
    addiu	$sp,$sp,-192
    # Line 3850
    lw	$a4,352($a1)
    # Line 3845
    move	$a2,$s8
    addiu	$s8,$sp,192
    sd	$s0,-88($s8)
    sd	$s1,-136($s8)
    sd	$s2,-120($s8)
    sd	$s5,-112($s8)
    sd	$s6,-72($s8)
    sd	$s7,-56($s8)
    sdc1	$f20,-48($s8)
    sdc1	$f22,-40($s8)
    sdc1	$f24,-32($s8)
    # Line 3850
    sd	$a4,-176($s8)
    # Line 3845
    sd	$s3,-104($s8)
    sd	$s4,-80($s8)
    move	$s3,$a1
    move	$s4,$a0
    # Line 3852
    lw	$a0,30648($a0)
    sd	$a0,-160($s8)
    # Line 3872
    move	$a0,$s4
    # Line 3845
    lui	$v0,0xa
    # Line 3866
    li	$a3,-16
    # Line 3845
    addiu	$v0,$v0,8732
    # Line 3863
    lw	$v1,168($a1)
    sd	$gp,-64($s8)
    # Line 3845
    addu	$gp,$t9,$v0
    # Line 3869
    li	$v0,-16
    # Line 3845
    sd	$ra,-96($s8)
    # Line 3869
    addu	$at,$v1,$v1
    # Line 3866
    sll	$v1,$v1,0x4
    # Line 3845
    sd	$a2,-128($s8)
    # Line 3867
    li	$a2,-16
    # Line 3866
    addiu	$v1,$v1,15
    # Line 3869
    addiu	$at,$at,15
    # Line 3872
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 3866
    and	$a3,$v1,$a3
    # Line 3867
    and	$v1,$v1,$a2
    subu	$sp,$sp,$a3
    # Line 3866
    sd	$sp,-184($s8)
    # Line 3869
    and	$at,$at,$v0
    subu	$sp,$sp,$v1
    # Line 3867
    sd	$sp,-168($s8)
    # Line 3872
    nop
    subu	$sp,$sp,$at
    bal __glComputeSpanPixelArray
    # Line 3871
    sw	$sp,312($a1)
    # Line 3872
    lbu	$a3,224($s3)
    beqz	$a3,.L0d9aec8c
    # Line 3875
    nop	# was lw $t9, -27748($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s4
    move	$a1,$s3
    bal __glCopyPixelsOverlapping
    ld	$a2,-176($s8)
.L0d9aec48:
    # Line 3914
    ld	$gp,-64($s8)
    ld	$s0,-88($s8)
    ld	$s1,-136($s8)
    ld	$s2,-120($s8)
    ld	$s3,-104($s8)
    ld	$s4,-80($s8)
    ld	$s5,-112($s8)
    ld	$s6,-72($s8)
    ld	$s7,-56($s8)
    ldc1	$f20,-48($s8)
    ldc1	$f22,-40($s8)
    ld	$ra,-96($s8)
    ld	$a4,-128($s8)
    ldc1	$f24,-32($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a4
.L0d9aec8c:
    # Line 3885
    lwc1	$f20,200($s3)
    # Line 3883
    lwc1	$f22,164($s3)
    # Line 3882
    lw	$a0,4852($s4)
    # Line 3879
    lw	$a6,356($s3)
    # Line 3880
    lw	$a7,412($s3)
    # Line 3886
    lw	$a5,172($s3)
    sd	$a5,-192($s8)
    # Line 3880
    sd	$a7,-152($s8)
    # Line 3886
    blez	$a5,.L0d9aec48
    sd	$a6,-144($s8)
    mtc1	$a0,$f24
    ld	$s5,-176($s8)
    trunc.w.s	$f25,$f20
    move	$s6,$zero
    sll	$s5,$s5,0x2
    mfc1	$s7,$f25
    addu	$s5,$s3,$s5
    b	.L0d9aee04
    cvt.s.w	$f24,$f24
    nop
    nop
.L0d9aece0:
    # Line 3895
    beqz	$t8,.L0d9aed3c
    ld	$t9,-192($s8)
    # Line 3893
    swc1	$f20,200($s3)
.L0d9aecec:
    # Line 3894
    add.s	$f20,$f22,$f20
    # Line 3895
    trunc.w.s	$f27,$f20
    mfc1	$s7,$f27
    ld	$t8,-192($s8)
    # Line 3892
    add.s	$f4,$f24,$f4
    # Line 3895
    addiu	$s6,$s6,1
    slt	$t9,$s6,$t9
    bne	$s7,$a0,.L0d9aed3c
    # Line 3892
    swc1	$f4,192($s3)
    # Line 3895
    beqz	$t9,.L0d9aed3c
    nop
    # Line 3893
    swc1	$f20,200($s3)
    # Line 3894
    add.s	$f20,$f22,$f20
    # Line 3895
    trunc.w.s	$f29,$f20
    mfc1	$s7,$f29
    # Line 3892
    add.s	$f4,$f24,$f4
    # Line 3895
    addiu	$s6,$s6,1
    slt	$t8,$s6,$t8
    beq	$s7,$a0,.L0d9aece0
    # Line 3892
    swc1	$f4,192($s3)
.L0d9aed3c:
    # Line 3900
    ld	$t9,-144($s8)
    move	$a0,$s4
    move	$a1,$s3
    jal	__glCopyPixelsOverlapping
    ld	$a2,-184($s8)
    # Line 3901
    ld	$ra,-176($s8)
    ld	$a2,-184($s8)
    move	$s1,$s3
    blez	$ra,.L0d9aed98
    ld	$s0,-168($s8)
    nop
    nop
    nop
.L0d9aed70:
    # Line 3903
    lw	$t9,360($s1)
    move	$s2,$a2
    move	$a0,$s4
    move	$a1,$s3
    jalr	$t9
    move	$a3,$s0
    # Line 3902
    addiu	$s1,$s1,4
    # Line 3905
    move	$a2,$s0
    # Line 3902
    bne	$s1,$s5,.L0d9aed70
    # Line 3906
    move	$s0,$s2
.L0d9aed98:
    # Line 3908
    ld	$t9,-152($s8)
    move	$a0,$s4
    jalr	$t9
    move	$a1,$s3
    # Line 3910
    lwc1	$f31,192($s3)
    # Line 3888
    ld	$v0,-192($s8)
    ld	$at,-160($s8)
    addiu	$s6,$s6,1
    # Line 3891
    ld	$v1,-192($s8)
    # Line 3888
    slt	$v0,$s6,$v0
    # Line 3910
    add.s	$f31,$f31,$f24
    swc1	$f31,192($s3)
    # Line 3891
    slt	$v1,$s6,$v1
    # Line 3888
    beqz	$v0,.L0d9aec48
    # Line 3912
    sw	$at,30648($s4)
    # Line 3889
    swc1	$f20,200($s3)
.L0d9aedd8:
    # Line 3890
    add.s	$f20,$f22,$f20
    # Line 3891
    trunc.w.s	$f0,$f20
    # Line 3886
    move	$a0,$s7
    # Line 3891
    mfc1	$s7,$f0
    # Line 3895
    ld	$t9,-192($s8)
    # Line 3891
    bne	$s7,$a0,.L0d9aed3c
    lwc1	$f4,192($s3)
    beqz	$v1,.L0d9aed3c
    nop
    b	.L0d9aecec
    # Line 3893
    swc1	$f20,200($s3)
.L0d9aee04:
    # Line 3891
    ld	$v1,-192($s8)
    slt	$v1,$s6,$v1
    b	.L0d9aedd8
    # Line 3889
    swc1	$f20,200($s3)
.end __glCopyPixelSpans

# Function: __glCopyPixels2
# Declared: Line 3920 (Source lines: 3921-3983)
# Address: 0x0d9aee20 - 0x0d9af088 (Size: 616 bytes, Frame: 0)
.globl __glCopyPixels2
.ent __glCopyPixels2
__glCopyPixels2:
    # Line 3921
    addiu	$sp,$sp,-176
    move	$v1,$s8
    addiu	$s8,$sp,176
    sd	$s1,-168($s8)
    sd	$s4,-112($s8)
    sd	$s5,-152($s8)
    sdc1	$f20,-48($s8)
    sdc1	$f22,-40($s8)
    sdc1	$f24,-32($s8)
    sd	$s2,-160($s8)
    move	$s2,$a0
    sd	$s0,-120($s8)
    move	$s0,$a1
    lui	$v0,0xa
    sd	$v1,-144($s8)
    # Line 3942
    li	$a3,-16
    # Line 3921
    addiu	$v0,$v0,8044
    # Line 3938
    lw	$v1,168($a1)
    # Line 3941
    li	$a2,-16
    sd	$gp,-96($s8)
    # Line 3921
    addu	$gp,$t9,$v0
    sd	$ra,-128($s8)
    # Line 3944
    addu	$at,$v1,$v1
    # Line 3941
    sll	$v1,$v1,0x4
    # Line 3944
    li	$v0,-16
    # Line 3921
    sd	$s7,-88($s8)
    # Line 3941
    addiu	$v1,$v1,15
    # Line 3926
    lw	$s7,30648($a0)
    # Line 3944
    addiu	$at,$at,15
    # Line 3941
    and	$a2,$v1,$a2
    # Line 3947
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 3942
    and	$v1,$v1,$a3
    subu	$sp,$sp,$a2
    # Line 3921
    sd	$s3,-136($s8)
    # Line 3941
    move	$s3,$sp
    subu	$sp,$sp,$v1
    # Line 3921
    sd	$s6,-104($s8)
    # Line 3944
    and	$at,$at,$v0
    # Line 3942
    move	$s6,$sp
    # Line 3947
    nop
    subu	$sp,$sp,$at
    bal __glComputeSpanPixelArray
    # Line 3946
    sw	$sp,312($a1)
    # Line 3947
    lbu	$a0,224($s0)
    beqz	$a0,.L0d9aef2c
    # Line 3950
    nop	# was lw $t9, -27748($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s2
    move	$a1,$s0
    bal __glCopyPixelsOverlapping
    li	$a2,2
.L0d9aeee8:
    # Line 3983
    ld	$gp,-96($s8)
    ld	$s0,-120($s8)
    ld	$s1,-168($s8)
    ld	$s2,-160($s8)
    ld	$s3,-136($s8)
    ld	$s4,-112($s8)
    ld	$s5,-152($s8)
    ld	$s6,-104($s8)
    ld	$s7,-88($s8)
    ldc1	$f20,-48($s8)
    ldc1	$f22,-40($s8)
    ld	$ra,-128($s8)
    ld	$a1,-144($s8)
    ldc1	$f24,-32($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a1
.L0d9aef2c:
    # Line 3962
    lwc1	$f20,200($s0)
    # Line 3960
    lwc1	$f22,164($s0)
    # Line 3959
    lw	$a5,4852($s2)
    # Line 3957
    lw	$a1,412($s0)
    # Line 3963
    lw	$s5,172($s0)
    # Line 3956
    lw	$a0,364($s0)
    # Line 3955
    lw	$a2,360($s0)
    # Line 3963
    blez	$s5,.L0d9aeee8
    # Line 3954
    lw	$a3,356($s0)
    sd	$a3,-80($s8)
    # Line 3963
    mtc1	$a5,$f24
    sd	$a2,-72($s8)
    trunc.w.s	$f25,$f20
    move	$s1,$zero
    sd	$a1,-64($s8)
    sd	$a0,-56($s8)
    mfc1	$s4,$f25
    b	.L0d9af07c
    cvt.s.w	$f24,$f24
    nop
    nop
.L0d9aef80:
    # Line 3971
    beqz	$a2,.L0d9aefd8
    nop
    # Line 3969
    swc1	$f20,200($s0)
.L0d9aef8c:
    # Line 3970
    add.s	$f20,$f22,$f20
    # Line 3971
    trunc.w.s	$f27,$f20
    mfc1	$s4,$f27
    # Line 3968
    add.s	$f4,$f24,$f4
    # Line 3971
    addiu	$s1,$s1,1
    slt	$a3,$s1,$s5
    bne	$s4,$a0,.L0d9aefd8
    # Line 3968
    swc1	$f4,192($s0)
    # Line 3971
    beqz	$a3,.L0d9aefd8
    nop
    # Line 3969
    swc1	$f20,200($s0)
    # Line 3970
    add.s	$f20,$f22,$f20
    # Line 3971
    trunc.w.s	$f29,$f20
    mfc1	$s4,$f29
    # Line 3968
    add.s	$f4,$f24,$f4
    # Line 3971
    addiu	$s1,$s1,1
    slt	$a2,$s1,$s5
    beq	$s4,$a0,.L0d9aef80
    # Line 3968
    swc1	$f4,192($s0)
.L0d9aefd8:
    # Line 3975
    ld	$t9,-80($s8)
.L0d9aefdc:
    move	$a0,$s2
    move	$a1,$s0
    jal	__glCopyPixelsOverlapping
    move	$a2,$s3
    # Line 3976
    ld	$t9,-72($s8)
    move	$a0,$s2
    move	$a1,$s0
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s6
    # Line 3977
    ld	$t9,-56($s8)
    move	$a0,$s2
    move	$a1,$s0
    move	$a2,$s6
    jalr	$t9
    move	$a3,$s3
    # Line 3978
    ld	$t9,-64($s8)
    move	$a0,$s2
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s3
    # Line 3979
    lwc1	$f31,192($s0)
    # Line 3964
    addiu	$s1,$s1,1
    slt	$a4,$s1,$s5
    # Line 3979
    add.s	$f31,$f31,$f24
    swc1	$f31,192($s0)
    # Line 3967
    slt	$a5,$s1,$s5
    # Line 3964
    beqz	$a4,.L0d9aeee8
    # Line 3981
    sw	$s7,30648($s2)
    # Line 3965
    swc1	$f20,200($s0)
.L0d9af054:
    # Line 3966
    add.s	$f20,$f22,$f20
    # Line 3967
    trunc.w.s	$f0,$f20
    # Line 3963
    move	$a0,$s4
    # Line 3967
    mfc1	$s4,$f0
    bne	$s4,$a0,.L0d9aefd8
    lwc1	$f4,192($s0)
    beqz	$a5,.L0d9aefdc
    # Line 3975
    ld	$t9,-80($s8)
    b	.L0d9aef8c
    # Line 3969
    swc1	$f20,200($s0)
.L0d9af07c:
    # Line 3967
    slt	$a5,$s1,$s5
    b	.L0d9af054
    # Line 3965
    swc1	$f20,200($s0)
.end __glCopyPixels2

# Function: __glCopyPixels1
# Declared: Line 3988 (Source lines: 3989-4047)
# Address: 0x0d9af090 - 0x0d9af2d0 (Size: 576 bytes, Frame: 0)
.globl __glCopyPixels1
.ent __glCopyPixels1
__glCopyPixels1:
    # Line 3989
    addiu	$sp,$sp,-160
    move	$v1,$s8
    addiu	$s8,$sp,160
    sd	$s1,-160($s8)
    sd	$s3,-120($s8)
    sd	$s4,-96($s8)
    sdc1	$f20,-48($s8)
    sdc1	$f22,-40($s8)
    sdc1	$f24,-32($s8)
    sd	$s2,-152($s8)
    move	$s2,$a0
    sd	$s0,-104($s8)
    move	$s0,$a1
    lui	$v0,0xa
    sd	$v1,-128($s8)
    # Line 4008
    li	$a3,-16
    # Line 3989
    addiu	$v0,$v0,7420
    # Line 4004
    lw	$v1,168($a1)
    # Line 4007
    li	$a2,-16
    sd	$gp,-136($s8)
    # Line 3989
    addu	$gp,$t9,$v0
    sd	$ra,-112($s8)
    # Line 4010
    addu	$at,$v1,$v1
    # Line 4007
    sll	$v1,$v1,0x4
    # Line 4010
    li	$v0,-16
    # Line 3989
    sd	$s7,-80($s8)
    # Line 4007
    addiu	$v1,$v1,15
    # Line 3994
    lw	$s7,30648($a0)
    # Line 4010
    addiu	$at,$at,15
    # Line 4007
    and	$a2,$v1,$a2
    # Line 4013
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 4008
    and	$v1,$v1,$a3
    subu	$sp,$sp,$a2
    # Line 3989
    sd	$s5,-144($s8)
    # Line 4007
    move	$s5,$sp
    subu	$sp,$sp,$v1
    # Line 3989
    sd	$s6,-88($s8)
    # Line 4010
    and	$at,$at,$v0
    # Line 4008
    move	$s6,$sp
    # Line 4013
    nop
    subu	$sp,$sp,$at
    bal __glComputeSpanPixelArray
    # Line 4012
    sw	$sp,312($a1)
    # Line 4013
    lbu	$a0,224($s0)
    beqz	$a0,.L0d9af19c
    # Line 4016
    nop	# was lw $t9, -27748($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s2
    move	$a1,$s0
    bal __glCopyPixelsOverlapping
    li	$a2,1
.L0d9af158:
    # Line 4047
    ld	$gp,-136($s8)
    ld	$s0,-104($s8)
    ld	$s1,-160($s8)
    ld	$s2,-152($s8)
    ld	$s3,-120($s8)
    ld	$s4,-96($s8)
    ld	$s5,-144($s8)
    ld	$s6,-88($s8)
    ld	$s7,-80($s8)
    ldc1	$f20,-48($s8)
    ldc1	$f22,-40($s8)
    ld	$ra,-112($s8)
    ld	$a1,-128($s8)
    ldc1	$f24,-32($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a1
.L0d9af19c:
    # Line 4027
    lwc1	$f20,200($s0)
    # Line 4025
    lwc1	$f22,164($s0)
    # Line 4024
    lw	$a3,4852($s2)
    # Line 4028
    lw	$s4,172($s0)
    # Line 4022
    lw	$a0,412($s0)
    # Line 4021
    lw	$a1,360($s0)
    # Line 4028
    blez	$s4,.L0d9af158
    # Line 4020
    lw	$a2,356($s0)
    # Line 4028
    mtc1	$a3,$f24
    sd	$a2,-72($s8)
    trunc.w.s	$f25,$f20
    move	$s1,$zero
    sd	$a1,-64($s8)
    sd	$a0,-56($s8)
    mfc1	$s3,$f25
    b	.L0d9af2c4
    cvt.s.w	$f24,$f24
.L0d9af1e0:
    # Line 4036
    beqz	$a2,.L0d9af238
    nop
    # Line 4034
    swc1	$f20,200($s0)
.L0d9af1ec:
    # Line 4035
    add.s	$f20,$f22,$f20
    # Line 4036
    trunc.w.s	$f27,$f20
    mfc1	$s3,$f27
    # Line 4033
    add.s	$f4,$f24,$f4
    # Line 4036
    addiu	$s1,$s1,1
    slt	$a3,$s1,$s4
    bne	$s3,$a0,.L0d9af238
    # Line 4033
    swc1	$f4,192($s0)
    # Line 4036
    beqz	$a3,.L0d9af238
    nop
    # Line 4034
    swc1	$f20,200($s0)
    # Line 4035
    add.s	$f20,$f22,$f20
    # Line 4036
    trunc.w.s	$f29,$f20
    mfc1	$s3,$f29
    # Line 4033
    add.s	$f4,$f24,$f4
    # Line 4036
    addiu	$s1,$s1,1
    slt	$a2,$s1,$s4
    beq	$s3,$a0,.L0d9af1e0
    # Line 4033
    swc1	$f4,192($s0)
.L0d9af238:
    # Line 4040
    ld	$t9,-72($s8)
.L0d9af23c:
    move	$a0,$s2
    move	$a1,$s0
    jal	__glCopyPixelsOverlapping
    move	$a2,$s5
    # Line 4041
    ld	$t9,-64($s8)
    move	$a0,$s2
    move	$a1,$s0
    move	$a2,$s5
    jalr	$t9
    move	$a3,$s6
    # Line 4042
    ld	$t9,-56($s8)
    move	$a0,$s2
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s6
    # Line 4043
    lwc1	$f31,192($s0)
    # Line 4029
    addiu	$s1,$s1,1
    slt	$a4,$s1,$s4
    # Line 4043
    add.s	$f31,$f31,$f24
    swc1	$f31,192($s0)
    # Line 4032
    slt	$a5,$s1,$s4
    # Line 4029
    beqz	$a4,.L0d9af158
    # Line 4045
    sw	$s7,30648($s2)
    # Line 4030
    swc1	$f20,200($s0)
.L0d9af29c:
    # Line 4031
    add.s	$f20,$f22,$f20
    # Line 4032
    trunc.w.s	$f0,$f20
    # Line 4028
    move	$a0,$s3
    # Line 4032
    mfc1	$s3,$f0
    bne	$s3,$a0,.L0d9af238
    lwc1	$f4,192($s0)
    beqz	$a5,.L0d9af23c
    # Line 4040
    ld	$t9,-72($s8)
    b	.L0d9af1ec
    # Line 4034
    swc1	$f20,200($s0)
.L0d9af2c4:
    # Line 4032
    slt	$a5,$s1,$s4
    b	.L0d9af29c
    # Line 4030
    swc1	$f20,200($s0)
.end __glCopyPixels1

# Function: __glCopyPixels0
# Declared: Line 4052 (Source lines: 4053-4102)
# Address: 0x0d9af2d0 - 0x0d9af4d4 (Size: 516 bytes, Frame: 0)
.globl __glCopyPixels0
.ent __glCopyPixels0
__glCopyPixels0:
    # Line 4053
    addiu	$sp,$sp,-144
    move	$a3,$s8
    addiu	$s8,$sp,144
    sd	$a3,-72($s8)
    sd	$s1,-136($s8)
    sd	$s2,-128($s8)
    sd	$s3,-112($s8)
    sd	$s6,-80($s8)
    sd	$s7,-56($s8)
    sdc1	$f20,-48($s8)
    sdc1	$f22,-40($s8)
    # Line 4069
    li	$v0,-16
    # Line 4065
    lw	$v1,168($a1)
    # Line 4053
    sd	$s4,-88($s8)
    move	$s4,$a0
    lui	$a2,0xa
    sdc1	$f24,-32($s8)
    addiu	$a2,$a2,6844
    # Line 4069
    addu	$at,$v1,$v1
    # Line 4068
    sll	$v1,$v1,0x4
    sd	$gp,-64($s8)
    # Line 4053
    addu	$gp,$t9,$a2
    sd	$s0,-96($s8)
    # Line 4068
    li	$a2,-16
    addiu	$v1,$v1,15
    # Line 4053
    move	$s0,$a1
    # Line 4072
    # lw $t9, -27852($gp) # &__glComputeSpanPixelArray
    # Line 4068
    and	$v1,$v1,$a2
    # Line 4053
    sd	$ra,-104($s8)
    # Line 4069
    addiu	$at,$at,15
    subu	$sp,$sp,$v1
    # Line 4053
    sd	$s5,-120($s8)
    # Line 4069
    and	$at,$at,$v0
    # Line 4068
    move	$s5,$sp
    # Line 4072
    nop
    subu	$sp,$sp,$at
    bal __glComputeSpanPixelArray
    # Line 4071
    sw	$sp,312($a1)
    # Line 4072
    lbu	$a4,224($s0)
    beqz	$a4,.L0d9af3c8
    # Line 4075
    nop	# was lw $t9, -27748($gp) # &__glCopyPixelsOverlapping
    move	$a0,$s4
    move	$a1,$s0
    bal __glCopyPixelsOverlapping
    move	$a2,$zero
.L0d9af384:
    # Line 4102
    ld	$gp,-64($s8)
    ld	$s0,-96($s8)
    ld	$s1,-136($s8)
    ld	$s2,-128($s8)
    ld	$s3,-112($s8)
    ld	$s4,-88($s8)
    ld	$s5,-120($s8)
    ld	$s6,-80($s8)
    ld	$s7,-56($s8)
    ldc1	$f20,-48($s8)
    ldc1	$f22,-40($s8)
    ld	$ra,-104($s8)
    ld	$a5,-72($s8)
    ldc1	$f24,-32($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a5
.L0d9af3c8:
    # Line 4085
    lwc1	$f20,200($s0)
    # Line 4083
    lwc1	$f22,164($s0)
    # Line 4086
    lw	$s3,172($s0)
    # Line 4082
    lw	$a0,4852($s4)
    # Line 4080
    lw	$s7,412($s0)
    # Line 4086
    blez	$s3,.L0d9af384
    # Line 4079
    lw	$s6,356($s0)
    # Line 4086
    mtc1	$a0,$f24
    trunc.w.s	$f25,$f20
    move	$s1,$zero
    mfc1	$s2,$f25
    b	.L0d9af4c8
    cvt.s.w	$f24,$f24
    nop
.L0d9af400:
    # Line 4094
    beqz	$a6,.L0d9af458
    nop
    # Line 4092
    swc1	$f20,200($s0)
.L0d9af40c:
    # Line 4093
    add.s	$f20,$f22,$f20
    # Line 4094
    trunc.w.s	$f27,$f20
    mfc1	$s2,$f27
    # Line 4091
    add.s	$f4,$f24,$f4
    # Line 4094
    addiu	$s1,$s1,1
    slt	$a7,$s1,$s3
    bne	$s2,$a0,.L0d9af458
    # Line 4091
    swc1	$f4,192($s0)
    # Line 4094
    beqz	$a7,.L0d9af458
    nop
    # Line 4092
    swc1	$f20,200($s0)
    # Line 4093
    add.s	$f20,$f22,$f20
    # Line 4094
    trunc.w.s	$f29,$f20
    mfc1	$s2,$f29
    # Line 4091
    add.s	$f4,$f24,$f4
    # Line 4094
    addiu	$s1,$s1,1
    slt	$a6,$s1,$s3
    beq	$s2,$a0,.L0d9af400
    # Line 4091
    swc1	$f4,192($s0)
.L0d9af458:
    # Line 4098
    move	$t9,$s6
.L0d9af45c:
    move	$a0,$s4
    move	$a1,$s0
    jal	__glCopyPixelsOverlapping
    move	$a2,$s5
    # Line 4099
    move	$t9,$s7
    move	$a0,$s4
    move	$a1,$s0
    jalr	$t9
    move	$a2,$s5
    # Line 4100
    lwc1	$f31,192($s0)
    # Line 4087
    addiu	$s1,$s1,1
    slt	$t0,$s1,$s3
    # Line 4100
    add.s	$f31,$f31,$f24
    # Line 4090
    slt	$t1,$s1,$s3
    # Line 4087
    beqz	$t0,.L0d9af384
    # Line 4100
    swc1	$f31,192($s0)
    # Line 4088
    swc1	$f20,200($s0)
.L0d9af4a0:
    # Line 4089
    add.s	$f20,$f22,$f20
    # Line 4090
    trunc.w.s	$f0,$f20
    # Line 4086
    move	$a0,$s2
    # Line 4090
    mfc1	$s2,$f0
    bne	$s2,$a0,.L0d9af458
    lwc1	$f4,192($s0)
    beqz	$t1,.L0d9af45c
    # Line 4098
    move	$t9,$s6
    b	.L0d9af40c
    # Line 4092
    swc1	$f20,200($s0)
.L0d9af4c8:
    # Line 4090
    slt	$t1,$s1,$s3
    b	.L0d9af4a0
    # Line 4088
    swc1	$f20,200($s0)
.end __glCopyPixels0

# Function: __glCopyPixelsOverlapping
# Declared: Line 4117 (Source lines: 4119-4372)
# Address: 0x0d9af4e0 - 0x0d9afeec (Size: 2572 bytes, Frame: 0)
.globl __glCopyPixelsOverlapping
.ent __glCopyPixelsOverlapping
__glCopyPixelsOverlapping:
    # Line 4119
    addiu	$sp,$sp,-800
    move	$t8,$s8
    addiu	$s8,$sp,800
    sd	$t8,-624($s8)
    sd	$a2,-760($s8)
    sd	$s0,-768($s8)
    sd	$ra,-784($s8)
    sd	$s1,-776($s8)
    sd	$gp,-632($s8)
    sd	$s6,-600($s8)
    sdc1	$f20,-568($s8)
    sdc1	$f24,-552($s8)
    sdc1	$f22,-560($s8)
    sd	$s3,-616($s8)
    # Line 4141
    lw	$s3,168($a1)
    # Line 4119
    sd	$s5,-640($s8)
    # Line 4145
    li	$s5,-16
    # Line 4119
    sd	$s2,-648($s8)
    # Line 4146
    li	$s2,-16
    # Line 4144
    sll	$s3,$s3,0x4
    # Line 4119
    sd	$s4,-608($s8)
    # Line 4144
    li	$s4,-16
    addiu	$s3,$s3,15
    # Line 4119
    sd	$s7,-592($s8)
    # Line 4146
    and	$s2,$s3,$s2
    # Line 4144
    and	$s4,$s3,$s4
    # Line 4145
    and	$s3,$s3,$s5
    # Line 4124
    lw	$s5,30648($a0)
    subu	$sp,$sp,$s4
    sd	$s5,-728($s8)
    # Line 4144
    move	$s7,$sp
    subu	$sp,$sp,$s3
    # Line 4145
    move	$s4,$sp
    subu	$sp,$sp,$s2
    # Line 4164
    lwc1	$f22,272($a1)
    # Line 4163
    lwc1	$f24,268($a1)
    # Line 4158
    lwc1	$f20,164($a1)
    # Line 4148
    lw	$v1,356($a1)
    # Line 4165
    lw	$t2,284($a1)
    # Line 4166
    lw	$t3,288($a1)
    sd	$t3,-664($s8)
    # Line 4165
    sd	$t2,-656($s8)
    # Line 4148
    sd	$v1,-696($s8)
    # Line 4162
    lw	$t0,280($a1)
    # Line 4160
    lw	$a4,232($a1)
    # Line 4161
    lw	$a7,276($a1)
    sd	$a7,-744($s8)
    li	$a6,5
    # Line 4149
    lw	$a7,412($a1)
    # Line 4167
    li	$a3,125
    move	$a5,$zero
    # Line 4160
    sd	$a4,-576($s8)
    # Line 4149
    andi	$v0,$a2,0x1
    # Line 4119
    move	$s6,$a1
    # Line 4162
    sd	$t0,-736($s8)
    # Line 4155
    addiu	$s5,$s8,-544
    # Line 4146
    move	$s3,$sp
    # Line 4159
    lw	$t0,228($a1)
    # Line 4119
    move	$s2,$a0
    lui	$a0,0xa
    # Line 4159
    sd	$t0,-584($s8)
    # Line 4152
    move	$at,$sp
    move	$a4,$sp
    # Line 4149
    sd	$a7,-720($s8)
    # Line 4119
    addiu	$a0,$a0,6316
    movz	$a4,$s4,$v0
    sd	$a4,-704($s8)
    addu	$gp,$t9,$a0
    movz	$at,$s7,$v0
    sd	$at,-688($s8)
    nop
    nop
.L0d9af600:
    addiu	$a6,$a6,-1
    # Line 4167
    addu	$t9,$a5,$s6
    addiu	$a3,$a3,-1
    addu	$ra,$a5,$s5
    lw	$t9,0($t9)
    addiu	$a5,$a5,4
    bnez	$a6,.L0d9af600
    sw	$t9,0($ra)
    addiu	$t0,$s6,28
    addiu	$a1,$s5,28
    sd	$a5,-792($s8)
    li	$a5,0x20
    addiu	$t9,$s5,4
    addiu	$t2,$s5,8
    addiu	$t3,$s6,8
    addiu	$a2,$s6,12
    addiu	$s1,$s5,12
    addiu	$a6,$s6,20
    sd	$a3,-800($s8)
    addiu	$s0,$s5,20
    addiu	$at,$s6,4
    sd	$at,-752($s8)
    addiu	$ra,$s5,24
    addiu	$t8,$s6,24
    ld	$a0,-800($s8)
    addiu	$a7,$s5,16
    addiu	$t1,$s6,16
    ld	$a3,-792($s8)
.L0d9af670:
    addu	$at,$a3,$s6
    ld	$a4,-752($s8)
    addu	$v0,$a3,$s5
    lw	$at,0($at)
    sw	$at,0($v0)
    addu	$a4,$a3,$a4
    addu	$at,$a3,$t9
    lw	$a4,0($a4)
    addu	$v1,$a3,$t3
    sw	$a4,0($at)
    addu	$a4,$a3,$t2
    lw	$v1,0($v1)
    addu	$v0,$a3,$a2
    sw	$v1,0($a4)
    addu	$v1,$a3,$s1
    lw	$v0,0($v0)
    addu	$at,$a3,$t1
    sw	$v0,0($v1)
    addu	$v0,$a3,$a7
    lw	$at,0($at)
    addu	$a4,$a3,$a6
    sw	$at,0($v0)
    addu	$at,$a3,$s0
    lw	$a4,0($a4)
    addu	$v1,$a3,$t8
    sw	$a4,0($at)
    addu	$a4,$a3,$ra
    lw	$v1,0($v1)
    addiu	$a0,$a0,-8
    addu	$v0,$a3,$t0
    sw	$v1,0($a4)
    lw	$v0,0($v0)
    addu	$v1,$a3,$a1
    addu	$a3,$a3,$a5
    bgtz	$a0,.L0d9af670
    sw	$v0,0($v1)
    # Line 4175
    ld	$a2,-576($s8)
    ld	$a3,-584($s8)
    mtc1	$a2,$f0
    mtc1	$a3,$f1
    cvt.s.w	$f0,$f0
    cvt.s.w	$f1,$f1
    # Line 4172
    ld	$a1,-656($s8)
    # Line 4175
    nmsub.s	$f0,$f22,$f0,$f20
    # Line 4173
    ld	$a0,-664($s8)
    # Line 4172
    mtc1	$a1,$f5
    # Line 4175
    madd.s	$f1,$f24,$f1,$f20
    # Line 4169
    neg.s	$f7,$f20
    # Line 4168
    lw	$v1,236($s6)
    # Line 4173
    mtc1	$a0,$f3
    # Line 4169
    swc1	$f7,-380($s8)
    # Line 4168
    negu	$v1,$v1
    sw	$v1,-308($s8)
    # Line 4172
    cvt.s.w	$f5,$f5
    # Line 4170
    swc1	$f24,200($s6)
    # Line 4175
    mtc1	$zero,$f6
    # Line 4173
    cvt.s.w	$f3,$f3
    # Line 4175
    trunc.w.s	$f2,$f22
    # Line 4171
    swc1	$f22,-344($s8)
    # Line 4175
    trunc.w.s	$f4,$f24
    # Line 4172
    swc1	$f5,192($s6)
    # Line 4175
    c.lt.s	$f6,$f20
    # Line 4173
    swc1	$f3,-352($s8)
    # Line 4175
    mfc1	$a3,$f4
    lw	$a0,220($s6)
    trunc.w.s	$f1,$f1
    mfc1	$a1,$f2
    lw	$a6,208($s6)
    trunc.w.s	$f0,$f0
    lw	$v0,4852($s2)
    mfc1	$a7,$f1
    sd	$v0,-712($s8)
    bc1f	.L0d9af7f4
    mfc1	$a5,$f0
    # Line 4180
    addu	$a4,$a0,$a6
    # Line 4187
    move	$t0,$a1
    # Line 4180
    addiu	$a4,$a4,-1
    # Line 4196
    addiu	$t3,$a7,-1
    # Line 4187
    slt	$t8,$a4,$a1
    # Line 4196
    slt	$t2,$a4,$t3
    # Line 4187
    movn	$t0,$a4,$t8
    # Line 4188
    addiu	$t1,$a5,1
    # Line 4196
    movz	$a4,$t3,$t2
    # Line 4195
    move	$t3,$a3
    # Line 4188
    slt	$t8,$t1,$a6
    # Line 4195
    slt	$t2,$a3,$a6
    # Line 4188
    movn	$t1,$a6,$t8
    # Line 4187
    sw	$t0,-336($s8)
    # Line 4195
    movz	$a6,$t3,$t2
    # Line 4188
    subu	$t0,$t0,$t1
    # Line 4196
    subu	$a4,$a4,$a6
    # Line 4188
    addiu	$t0,$t0,1
    sw	$t0,-324($s8)
    # Line 4196
    addiu	$a4,$a4,1
    sw	$a4,220($s6)
    b	.L0d9af84c
    # Line 4195
    sw	$a6,208($s6)
.L0d9af7f4:
    # Line 4199
    subu	$t0,$a6,$a0
    # Line 4206
    move	$t2,$a1
    # Line 4199
    addiu	$t0,$t0,1
    # Line 4215
    addiu	$t8,$a7,1
    # Line 4206
    slt	$t9,$a1,$t0
    # Line 4215
    slt	$t3,$t8,$t0
    # Line 4206
    movn	$t2,$t0,$t9
    # Line 4207
    addiu	$t1,$a5,-1
    # Line 4215
    movz	$t0,$t8,$t3
    # Line 4214
    move	$t8,$a3
    # Line 4207
    slt	$t9,$a6,$t1
    # Line 4214
    slt	$t3,$a6,$a3
    # Line 4207
    movn	$t1,$a6,$t9
    # Line 4206
    sw	$t2,-336($s8)
    # Line 4214
    movz	$a6,$t8,$t3
    # Line 4207
    subu	$t1,$t1,$t2
    # Line 4215
    subu	$t0,$a6,$t0
    # Line 4207
    addiu	$t1,$t1,1
    sw	$t1,-324($s8)
    # Line 4215
    addiu	$t0,$t0,1
    sw	$t0,220($s6)
    # Line 4214
    sw	$a6,208($s6)
.L0d9af84c:
    # Line 4218
    ld	$t1,-584($s8)
    beqz	$t1,.L0d9afc40
    ld	$t2,-576($s8)
    beqz	$t2,.L0d9afb60
    # Line 4309
    ld	$a6,-584($s8)
    # Line 4218
    sd	$zero,-680($s8)
    b	.L0d9afee0
    sd	$zero,-672($s8)
.L0d9af86c:
    # Line 4299
    ld	$t9,-720($s8)
.L0d9af870:
    move	$a0,$s2
    move	$a1,$s5
    jalr	$t9
    ld	$a2,-704($s8)
    # Line 4301
    ld	$t3,-728($s8)
    sw	$t3,30648($s2)
.L0d9af888:
    # Line 4289
    ld	$t8,-584($s8)
    beqz	$t8,.L0d9afc40
    ld	$t9,-576($s8)
    beqz	$t9,.L0d9afb5c
    # Line 4218
    ld	$ra,-744($s8)
    # Line 4236
    ld	$at,-736($s8)
.L0d9af8a0:
    ld	$v0,-744($s8)
    # Line 4218
    beqz	$ra,.L0d9af9e8
    # Line 4220
    addiu	$v0,$v0,-1
    # Line 4236
    beqz	$at,.L0d9afaa4
    sd	$v0,-744($s8)
.L0d9af8b4:
    # Line 4239
    ld	$v1,-736($s8)
    addiu	$v1,$v1,-1
    sd	$v1,-736($s8)
.L0d9af8c0:
    # Line 4271
    ld	$a0,-680($s8)
    move	$s0,$zero
    ld	$a1,-760($s8)
    beqz	$a0,.L0d9af964
    move	$s1,$s6
    blez	$a1,.L0d9af94c
    # Line 4284
    ld	$t9,-720($s8)
    b	.L0d9af924
    # Line 4271
    andi	$a3,$s0,0x1
    nop
    nop
    nop
.L0d9af8f0:
    # Line 4277
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s7
    # Line 4275
    ld	$a2,-760($s8)
.L0d9af908:
    addiu	$s0,$s0,1
    beq	$a2,$s0,.L0d9af948
    addiu	$s1,$s1,4
    nop
    nop
    nop
    # Line 4271
    andi	$a3,$s0,0x1
.L0d9af924:
    bnez	$a3,.L0d9af8f0
    lw	$t9,360($s1)
    # Line 4280
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s7
    jalr	$t9
    move	$a3,$s3
    b	.L0d9af908
    # Line 4275
    ld	$a2,-760($s8)
.L0d9af948:
    # Line 4284
    ld	$t9,-720($s8)
.L0d9af94c:
    move	$a0,$s2
    move	$a1,$s6
    jalr	$t9
    ld	$a2,-688($s8)
    # Line 4286
    ld	$a4,-728($s8)
    sw	$a4,30648($s2)
.L0d9af964:
    ld	$a5,-672($s8)
    move	$s0,$zero
    ld	$a6,-760($s8)
    beqz	$a5,.L0d9af888
    move	$s1,$s6
    blez	$a6,.L0d9af870
    # Line 4299
    ld	$t9,-720($s8)
    b	.L0d9af9c4
    # Line 4286
    andi	$t0,$s0,0x1
    nop
    nop
.L0d9af990:
    # Line 4292
    move	$a0,$s2
    move	$a1,$s5
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s4
    # Line 4290
    ld	$a7,-760($s8)
.L0d9af9a8:
    addiu	$s0,$s0,1
    beq	$a7,$s0,.L0d9af86c
    addiu	$s1,$s1,4
    nop
    nop
    nop
    # Line 4286
    andi	$t0,$s0,0x1
.L0d9af9c4:
    bnez	$t0,.L0d9af990
    lw	$t9,360($s1)
    # Line 4295
    move	$a0,$s2
    move	$a1,$s5
    move	$a2,$s4
    jalr	$t9
    move	$a3,$s3
    b	.L0d9af9a8
    # Line 4290
    ld	$a7,-760($s8)
.L0d9af9e8:
    # Line 4223
    ld	$t1,-584($s8)
    # Line 4225
    add.s	$f4,$f20,$f24
    # Line 4227
    ld	$t2,-712($s8)
    trunc.w.s	$f3,$f24
    trunc.w.s	$f2,$f4
    # Line 4223
    addiu	$t1,$t1,-1
    sd	$t1,-584($s8)
    # Line 4224
    swc1	$f24,200($s6)
    # Line 4227
    mfc1	$a3,$f3
    mtc1	$t2,$f6
    # Line 4230
    ld	$t3,-584($s8)
    # Line 4227
    beqz	$t1,.L0d9afa60
    mfc1	$a0,$f2
    bne	$a3,$a0,.L0d9afa68
    # Line 4235
    ld	$t9,-696($s8)
    # Line 4227
    lwc1	$f5,192($s6)
    cvt.s.w	$f6,$f6
    nop
.L0d9afa30:
    # Line 4230
    addiu	$t3,$t3,-1
    sd	$t3,-584($s8)
    # Line 4228
    swc1	$f4,200($s6)
    # Line 4231
    add.s	$f5,$f5,$f6
    # Line 4229
    add.s	$f4,$f20,$f4
    # Line 4231
    beqz	$t3,.L0d9afec8
    swc1	$f5,192($s6)
    trunc.w.s	$f7,$f4
    mfc1	$t8,$f7
    # Line 4230
    ld	$t3,-584($s8)
    # Line 4231
    beq	$a3,$t8,.L0d9afa30
    move	$a0,$t8
.L0d9afa60:
    # Line 4233
    beq	$a3,$a0,.L0d9afb5c
    # Line 4235
    ld	$t9,-696($s8)
.L0d9afa68:
    move	$a0,$s2
    move	$a1,$s6
    # Line 4234
    mov.s	$f24,$f4
    # Line 4235
    jalr	$t9
    move	$a2,$s7
    # Line 4236
    ld	$at,-712($s8)
    mtc1	$at,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f9,192($s6)
    ld	$t9,-736($s8)
    li	$ra,1
    sd	$ra,-680($s8)
    add.s	$f8,$f8,$f9
    bnez	$t9,.L0d9af8b4
    swc1	$f8,192($s6)
.L0d9afaa4:
    # Line 4242
    ld	$v0,-576($s8)
    # Line 4244
    sub.s	$f4,$f22,$f20
    # Line 4246
    ld	$v1,-712($s8)
    trunc.w.s	$f10,$f22
    # Line 4243
    swc1	$f22,-344($s8)
    # Line 4246
    trunc.w.s	$f9,$f4
    # Line 4242
    addiu	$v0,$v0,-1
    # Line 4246
    lwc1	$f5,-352($s8)
    mfc1	$a1,$f10
    mtc1	$v1,$f6
    # Line 4242
    sd	$v0,-576($s8)
    # Line 4246
    beqz	$v0,.L0d9afb20
    mfc1	$a0,$f9
    bne	$a1,$a0,.L0d9afe34
    # Line 4270
    ld	$t9,-696($s8)
    # Line 4246
    cvt.s.w	$f6,$f6
    nop
    nop
    nop
.L0d9afaf0:
    # Line 4249
    ld	$a0,-576($s8)
    # Line 4247
    swc1	$f4,-344($s8)
    # Line 4250
    sub.s	$f5,$f5,$f6
    # Line 4249
    addiu	$a0,$a0,-1
    # Line 4250
    swc1	$f5,-352($s8)
    # Line 4248
    sub.s	$f4,$f4,$f20
    # Line 4250
    beqz	$a0,.L0d9afed4
    # Line 4249
    sd	$a0,-576($s8)
    # Line 4250
    trunc.w.s	$f7,$f4
    mfc1	$a2,$f7
    beq	$a1,$a2,.L0d9afaf0
    move	$a0,$a2
.L0d9afb20:
    bne	$a1,$a0,.L0d9afe30
    ld	$a3,-680($s8)
    beqz	$a3,.L0d9afb5c
    ld	$a4,-760($s8)
    blez	$a4,.L0d9afb40
    move	$s1,$s6
    b	.L0d9afea0
    move	$s0,$zero
.L0d9afb40:
    # Line 4263
    ld	$t9,-720($s8)
    move	$a0,$s2
    move	$a1,$s6
    jalr	$t9
    ld	$a2,-688($s8)
    # Line 4265
    ld	$a5,-728($s8)
    sw	$a5,30648($s2)
.L0d9afb5c:
    # Line 4309
    ld	$a6,-584($s8)
.L0d9afb60:
    beqz	$a6,.L0d9afc40
    ld	$s0,-584($s8)
    # Line 4315
    ld	$a7,-712($s8)
    mtc1	$a7,$f6
.L0d9afb70:
    # Line 4313
    add.s	$f4,$f20,$f24
    # Line 4315
    trunc.w.s	$f9,$f24
    # Line 4311
    addiu	$s0,$s0,-1
    # Line 4315
    trunc.w.s	$f8,$f4
    # Line 4312
    swc1	$f24,200($s6)
    # Line 4315
    mfc1	$a3,$f9
    lwc1	$f5,192($s6)
    beqz	$s0,.L0d9afbc8
    mfc1	$a0,$f8
    bne	$a3,$a0,.L0d9afbd0
    # Line 4324
    ld	$t9,-696($s8)
    # Line 4315
    cvt.s.w	$f6,$f6
.L0d9afba0:
    # Line 4318
    addiu	$s0,$s0,-1
    # Line 4316
    swc1	$f4,200($s6)
    # Line 4319
    add.s	$f5,$f5,$f6
    # Line 4317
    add.s	$f4,$f20,$f4
    # Line 4319
    beqz	$s0,.L0d9afe24
    swc1	$f5,192($s6)
    trunc.w.s	$f7,$f4
    mfc1	$t0,$f7
    beq	$a3,$t0,.L0d9afba0
    move	$a0,$t0
.L0d9afbc8:
    # Line 4321
    beq	$a3,$a0,.L0d9afc40
    # Line 4324
    ld	$t9,-696($s8)
.L0d9afbd0:
    move	$a0,$s2
    move	$a1,$s6
    # Line 4322
    mov.s	$f24,$f4
    # Line 4324
    jalr	$t9
    move	$a2,$s7
    ld	$t1,-760($s8)
    blez	$t1,.L0d9afc00
    move	$s1,$s6
    sd	$s0,-584($s8)
    b	.L0d9afdf0
    move	$s0,$zero
.L0d9afbfc:
    ld	$s0,-584($s8)
.L0d9afc00:
    # Line 4334
    ld	$t9,-720($s8)
    move	$a0,$s2
    move	$a1,$s6
    jalr	$t9
    ld	$a2,-688($s8)
    # Line 4338
    ld	$t3,-712($s8)
    mtc1	$t3,$f8
    # Line 4336
    ld	$t2,-728($s8)
    sw	$t2,30648($s2)
    # Line 4338
    cvt.s.w	$f8,$f8
    lwc1	$f9,192($s6)
    # Line 4315
    ld	$a7,-712($s8)
    mtc1	$a7,$f6
    # Line 4338
    add.s	$f8,$f8,$f9
    bnez	$s0,.L0d9afb70
    swc1	$f8,192($s6)
.L0d9afc40:
    # Line 4341
    ld	$t8,-576($s8)
    beqz	$t8,.L0d9afd80
    ld	$s1,-776($s8)
    ld	$s7,-760($s8)
    ld	$s0,-576($s8)
    lwc1	$f5,-352($s8)
    # Line 4347
    ld	$t9,-712($s8)
    mtc1	$t9,$f6
.L0d9afc60:
    # Line 4345
    sub.s	$f4,$f22,$f20
    # Line 4347
    trunc.w.s	$f10,$f22
    # Line 4343
    addiu	$s0,$s0,-1
    # Line 4347
    trunc.w.s	$f9,$f4
    mfc1	$a1,$f10
    # Line 4344
    swc1	$f22,-344($s8)
    # Line 4347
    beqz	$s0,.L0d9afcb8
    mfc1	$a0,$f9
    bne	$a1,$a0,.L0d9afcc0
    # Line 4356
    ld	$t9,-696($s8)
    # Line 4347
    cvt.s.w	$f6,$f6
    nop
.L0d9afc90:
    # Line 4350
    addiu	$s0,$s0,-1
    # Line 4348
    swc1	$f4,-344($s8)
    # Line 4351
    sub.s	$f5,$f5,$f6
    # Line 4349
    sub.s	$f4,$f4,$f20
    # Line 4351
    beqz	$s0,.L0d9afe18
    swc1	$f5,-352($s8)
    trunc.w.s	$f7,$f4
    mfc1	$ra,$f7
    beq	$a1,$ra,.L0d9afc90
    move	$a0,$ra
.L0d9afcb8:
    # Line 4353
    beq	$a1,$a0,.L0d9afd7c
    # Line 4356
    ld	$t9,-696($s8)
.L0d9afcc0:
    move	$a0,$s2
    move	$a1,$s5
    # Line 4354
    mov.s	$f22,$f4
    # Line 4356
    jalr	$t9
    move	$a2,$s4
    blez	$s7,.L0d9afd3c
    move	$s1,$s6
    sd	$s0,-576($s8)
    b	.L0d9afd10
    move	$s0,$zero
    nop
    nop
.L0d9afcf0:
    # Line 4359
    move	$a0,$s2
    move	$a1,$s5
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s4
    # Line 4357
    addiu	$s0,$s0,1
.L0d9afd08:
    beq	$s7,$s0,.L0d9afd38
    addiu	$s1,$s1,4
.L0d9afd10:
    # Line 4356
    andi	$at,$s0,0x1
    bnez	$at,.L0d9afcf0
    lw	$t9,360($s1)
    # Line 4362
    move	$a0,$s2
    move	$a1,$s5
    move	$a2,$s4
    jalr	$t9
    move	$a3,$s3
    b	.L0d9afd08
    # Line 4357
    addiu	$s0,$s0,1
.L0d9afd38:
    ld	$s0,-576($s8)
.L0d9afd3c:
    # Line 4366
    ld	$t9,-720($s8)
    move	$a0,$s2
    move	$a1,$s5
    jalr	$t9
    ld	$a2,-704($s8)
    # Line 4370
    ld	$v1,-712($s8)
    mtc1	$v1,$f6
    # Line 4368
    ld	$v0,-728($s8)
    sw	$v0,30648($s2)
    # Line 4370
    cvt.s.w	$f6,$f6
    lwc1	$f5,-352($s8)
    # Line 4347
    ld	$t9,-712($s8)
    # Line 4370
    sub.s	$f5,$f5,$f6
    # Line 4347
    mtc1	$t9,$f6
    # Line 4370
    bnez	$s0,.L0d9afc60
    swc1	$f5,-352($s8)
.L0d9afd7c:
    ld	$s1,-776($s8)
.L0d9afd80:
    ld	$s0,-768($s8)
    # Line 4372
    ld	$gp,-632($s8)
    ld	$s2,-648($s8)
    ld	$s3,-616($s8)
    ld	$s4,-608($s8)
    ld	$s5,-640($s8)
    ld	$s6,-600($s8)
    ld	$s7,-592($s8)
    ldc1	$f20,-568($s8)
    ldc1	$f22,-560($s8)
    ld	$ra,-784($s8)
    ld	$a0,-624($s8)
    ldc1	$f24,-552($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a0
.L0d9afdc0:
    # Line 4327
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s7
.L0d9afdd4:
    # Line 4325
    ld	$a1,-760($s8)
    addiu	$s0,$s0,1
    beq	$a1,$s0,.L0d9afbfc
    addiu	$s1,$s1,4
    nop
    nop
    nop
.L0d9afdf0:
    # Line 4324
    andi	$a2,$s0,0x1
    bnez	$a2,.L0d9afdc0
    lw	$t9,360($s1)
    # Line 4330
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s7
    jalr	$t9
    move	$a3,$s3
    b	.L0d9afdd4
    nop
.L0d9afe18:
    # Line 4351
    trunc.w.s	$f7,$f4
    b	.L0d9afcb8
    mfc1	$a0,$f7
.L0d9afe24:
    # Line 4319
    trunc.w.s	$f8,$f4
    b	.L0d9afbc8
    mfc1	$a0,$f8
.L0d9afe30:
    # Line 4270
    ld	$t9,-696($s8)
.L0d9afe34:
    move	$a0,$s2
    move	$a1,$s5
    # Line 4269
    mov.s	$f22,$f4
    # Line 4270
    jalr	$t9
    move	$a2,$s4
    # Line 4271
    ld	$a4,-712($s8)
    mtc1	$a4,$f10
    cvt.s.w	$f10,$f10
    lwc1	$f9,-352($s8)
    li	$a3,1
    sd	$a3,-672($s8)
    sub.s	$f9,$f9,$f10
    b	.L0d9af8c0
    swc1	$f9,-352($s8)
    nop
.L0d9afe70:
    # Line 4256
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s3
    jalr	$t9
    move	$a3,$s7
    # Line 4254
    ld	$a5,-760($s8)
.L0d9afe88:
    addiu	$s0,$s0,1
    beq	$a5,$s0,.L0d9afb40
    addiu	$s1,$s1,4
    nop
    nop
    nop
.L0d9afea0:
    # Line 4250
    andi	$a6,$s0,0x1
    bnez	$a6,.L0d9afe70
    lw	$t9,360($s1)
    # Line 4259
    move	$a0,$s2
    move	$a1,$s6
    move	$a2,$s7
    jalr	$t9
    move	$a3,$s3
    b	.L0d9afe88
    # Line 4254
    ld	$a5,-760($s8)
.L0d9afec8:
    # Line 4231
    trunc.w.s	$f11,$f4
    b	.L0d9afa60
    mfc1	$a0,$f11
.L0d9afed4:
    # Line 4250
    trunc.w.s	$f12,$f4
    b	.L0d9afb20
    mfc1	$a0,$f12
.L0d9afee0:
    # Line 4218
    ld	$ra,-744($s8)
    b	.L0d9af8a0
    # Line 4236
    ld	$at,-736($s8)
.end __glCopyPixelsOverlapping

# Function: __glSlowPickCopyPixels
# Declared: Line 4378 (Source lines: 4380-4387)
# Address: 0x0d9afef0 - 0x0d9aff74 (Size: 132 bytes, Frame: 144)
.globl __glSlowPickCopyPixels
.ent __glSlowPickCopyPixels
__glSlowPickCopyPixels:
    # Line 4380
    lui	$v0,0xa
    addiu	$sp,$sp,-528
    addiu	$v0,$v0,3740
    move	$a6,$a5
    sd	$gp,520($sp)
    addu	$gp,$t9,$v0
    move	$a5,$a4
    move	$a4,$a3
    # Line 4383
    # lw $t9, -27768($gp) # &__glInitCopyPixelsInfo
    # Line 4380
    move	$a3,$a2
    move	$at,$a1
    # Line 4383
    addiu	$a1,$sp,0
    move	$a2,$at
    # Line 4380
    sd	$s0,504($sp)
    # Line 4383
    nop
    # Line 4380
    sd	$ra,512($sp)
    # Line 4383
    bal __glInitCopyPixelsInfo
    # Line 4380
    move	$s0,$a0
    # Line 4384
    # lw $t9, -27772($gp) # &__glClipCopyPixels
    move	$a0,$s0
    bal __glClipCopyPixels
    addiu	$a1,$sp,0
    beqz	$v0,.L0d9aff64
    ld	$ra,512($sp)
    # Line 4386
    # lw $t9, -27740($gp) # &__glGenericPickCopyPixels
    move	$a0,$s0
    bal __glGenericPickCopyPixels
    addiu	$a1,$sp,0
    ld	$ra,512($sp)
.L0d9aff64:
    ld	$s0,504($sp)
    # Line 4387
    ld	$gp,520($sp)
    jr	$ra
    addiu	$sp,$sp,528
.end __glSlowPickCopyPixels

# Function: __glGenericPickCopyPixels
# Declared: Line 4393 (Source lines: 4394-4456)
# Address: 0x0d9aff80 - 0x0d9b00a4 (Size: 292 bytes, Frame: 192)
.globl __glGenericPickCopyPixels
.ent __glGenericPickCopyPixels
__glGenericPickCopyPixels:
    # Line 4394
    addiu	$sp,$sp,-64
    # Line 4406
    li	$at,1
    sb	$at,12($sp)
    # Line 4403
    li	$at,4
    # Line 4404
    sw	$at,4($sp)
    # Line 4394
    lui	$v0,0xa
    sd	$a0,48($sp)
    addiu	$v0,$v0,3596
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    # Line 4408
    # lw $t9, -32716($gp) # &sub_0d9b0000
    # Line 4394
    sd	$ra,32($sp)
    # Line 4405
    li	$ra,3
    sw	$ra,8($sp)
    # Line 4408
    addiu	$t9,$t9,-30800
    addiu	$a2,$sp,0
    # Line 4394
    sd	$s0,24($sp)
    move	$s0,$a1
    # Line 4408
    bal __glSpanRGBAScaleBiasReduce
    # Line 4403
    sw	$at,0($sp)
    # Line 4410
    lw	$a5,16($sp)
    # Line 4411
    lw	$a4,20($sp)
    # Line 4416
    lw	$a1,436($s0)
    # Line 4414
    addiu	$a2,$v0,-1
    sw	$a2,264($s0)
    # Line 4416
    lw	$a6,0($a1)
    # Line 4433
    la	$t0,__glCopyPixels2
    # Line 4416
    li	$a3,0x8012
    li	$v1,0x8011
    ld	$a0,48($sp)
    # Line 4442
    li	$t1,0x8016
    # Line 4424
    li	$a7,2
    # Line 4422
    # lw $t9, -28252($gp) # &__glSep2dCopyPixels
    # Line 4416
    beq	$a6,$v1,.L0d9b0084
    xor	$a7,$v0,$a7
    beq	$a6,$a3,.L0d9b008c
    nop
    # Line 4424
    beqz	$v0,.L0d9b0094
    # Line 4430
    nop	# was lw $t9, -27756($gp) # &__glCopyPixels1
    # Line 4424
    li	$a6,1
    beq	$v0,$a6,.L0d9b009c
    nop
    # Line 4435
    # lw $t9, -27764($gp) # &__glCopyPixelSpans
    movz	$t9,$t0,$a7
.L0d9b0030:
    # Line 4439
    sw	$v0,352($s0)
.L0d9b0034:
    # Line 4442
    lw	$t0,4($a1)
    beq	$t0,$t1,.L0d9b0064
    nop
.L0d9b0040:
    # Line 4453
    sw	$a4,412($s0)
    # Line 4452
    sw	$a5,356($s0)
    # Line 4455
    jal	__glCopyPixelSpans
    move	$a1,$s0
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    # Line 4456
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9b0064:
    # Line 4444
    lw	$t3,64($a1)
    lw	$t2,180($s0)
    subu	$t2,$t2,$t3
    addiu	$t2,$t2,1
    bgez	$t2,.L0d9b0040
    sw	$t2,184($s0)
    # Line 4446
    b	.L0d9b0040
    sw	$zero,184($s0)
.L0d9b0084:
    b	.L0d9b0030
    # Line 4418
    nop	# was lw $t9, -28256($gp) # &__glConv2dCopyPixels
.L0d9b008c:
    # Line 4422
    b	.L0d9b0034
    # Line 4439
    sw	$v0,352($s0)
.L0d9b0094:
    b	.L0d9b0030
    # Line 4426
    nop	# was lw $t9, -27752($gp) # &__glCopyPixels0
.L0d9b009c:
    # Line 4430
    b	.L0d9b0034
    # Line 4439
    sw	$v0,352($s0)
.end __glGenericPickCopyPixels

# Function: __glCopyImage1
# Declared: Line 4461 (Source lines: 4462-4480)
# Address: 0x0d9b00b0 - 0x0d9b016c (Size: 188 bytes, Frame: 192)
.globl __glCopyImage1
.ent __glCopyImage1
__glCopyImage1:
    # Line 4462
    addiu	$sp,$sp,-64
    sd	$s5,32($sp)
    # Line 4470
    lw	$s5,360($a1)
    # Line 4462
    sd	$s4,8($sp)
    sd	$s0,16($sp)
    sd	$s3,0($sp)
    # Line 4469
    lw	$s3,172($a1)
    # Line 4462
    move	$s0,$a1
    sd	$s1,24($sp)
    lui	$at,0xa
    move	$s1,$a0
    # Line 4465
    lw	$s4,30648($a0)
    # Line 4462
    addiu	$at,$at,3292
    sd	$gp,40($sp)
    # Line 4470
    blez	$s3,.L0d9b014c
    # Line 4462
    addu	$gp,$t9,$at
    sd	$ra,56($sp)
    sd	$s2,48($sp)
    # Line 4470
    move	$s2,$zero
    nop
.L0d9b0100:
    # Line 4472
    move	$t9,$s5
    move	$a0,$s1
    lw	$a3,92($s0)
    move	$a1,$s0
    jalr	$t9
    lw	$a2,12($s0)
    # Line 4473
    lw	$a1,12($s0)
    # Line 4475
    lw	$v1,92($s0)
    lw	$v0,96($s0)
    # Line 4473
    lw	$a0,16($s0)
    # Line 4471
    addiu	$s2,$s2,1
    # Line 4475
    addu	$v0,$v0,$v1
    sw	$v0,92($s0)
    # Line 4473
    addu	$a0,$a0,$a1
    sw	$a0,12($s0)
    # Line 4471
    bne	$s3,$s2,.L0d9b0100
    # Line 4478
    sw	$s4,30648($s1)
    ld	$s2,48($sp)
    ld	$ra,56($sp)
.L0d9b014c:
    ld	$s3,0($sp)
    ld	$s4,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    ld	$s5,32($sp)
    # Line 4480
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glCopyImage1

# Function: __glCopyImage2
# Declared: Line 4485 (Source lines: 4486-4512)
# Address: 0x0d9b0170 - 0x0d9b0284 (Size: 276 bytes, Frame: 0)
.globl __glCopyImage2
.ent __glCopyImage2
__glCopyImage2:
    # Line 4486
    addiu	$sp,$sp,-112
    move	$v1,$s8
    addiu	$s8,$sp,112
    sd	$s2,-40($s8)
    sd	$s5,-48($s8)
    sd	$s7,-80($s8)
    sd	$gp,-88($s8)
    sd	$s1,-32($s8)
    # Line 4497
    lw	$v0,168($a1)
    # Line 4486
    sd	$s4,-64($s8)
    sd	$s6,-72($s8)
    # Line 4497
    sll	$v0,$v0,0x4
    # Line 4486
    sd	$v1,-96($s8)
    # Line 4497
    li	$v1,-16
    addiu	$v0,$v0,15
    # Line 4490
    lw	$s6,30648($a0)
    # Line 4497
    and	$v0,$v0,$v1
    # Line 4486
    lui	$at,0xa
    subu	$sp,$sp,$v0
    # Line 4499
    lw	$s4,172($a1)
    # Line 4486
    addiu	$at,$at,3100
    move	$s1,$a1
    sd	$s0,-56($s8)
    move	$s0,$a0
    addu	$gp,$t9,$at
    # Line 4501
    lw	$s7,364($a1)
    # Line 4500
    lw	$s5,360($a1)
    # Line 4501
    blez	$s4,.L0d9b0254
    # Line 4497
    move	$s2,$sp
    sd	$ra,-112($s8)
    sd	$s3,-104($s8)
    # Line 4501
    move	$s3,$zero
.L0d9b01f0:
    # Line 4503
    move	$t9,$s5
    move	$a0,$s0
    move	$a1,$s1
    lw	$a2,12($s1)
    jalr	$t9
    move	$a3,$s2
    # Line 4504
    lw	$a5,12($s1)
    # Line 4506
    move	$a2,$s2
    move	$t9,$s7
    # Line 4504
    lw	$a4,16($s1)
    # Line 4506
    lw	$a3,92($s1)
    move	$a1,$s1
    move	$a0,$s0
    # Line 4504
    addu	$a4,$a4,$a5
    # Line 4506
    jalr	$t9
    # Line 4504
    sw	$a4,12($s1)
    # Line 4507
    lw	$a7,92($s1)
    lw	$a6,96($s1)
    # Line 4502
    addiu	$s3,$s3,1
    # Line 4507
    addu	$a6,$a6,$a7
    sw	$a6,92($s1)
    # Line 4502
    bne	$s4,$s3,.L0d9b01f0
    # Line 4510
    sw	$s6,30648($s0)
    ld	$s3,-104($s8)
    ld	$ra,-112($s8)
.L0d9b0254:
    ld	$s1,-32($s8)
    ld	$s2,-40($s8)
    ld	$s5,-48($s8)
    ld	$s0,-56($s8)
    ld	$s4,-64($s8)
    ld	$s6,-72($s8)
    ld	$s7,-80($s8)
    # Line 4512
    ld	$t0,-96($s8)
    ld	$gp,-88($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$t0
.end __glCopyImage2

# Function: __glCopyImageSpans
# Declared: Line 4517 (Source lines: 4518-4556)
# Address: 0x0d9b0290 - 0x0d9b0448 (Size: 440 bytes, Frame: 0)
.globl __glCopyImageSpans
.ent __glCopyImageSpans
__glCopyImageSpans:
    # Line 4518
    addiu	$sp,$sp,-176
    move	$a4,$s8
    addiu	$s8,$sp,176
    sd	$gp,-72($s8)
    sd	$s4,-48($s8)
    # Line 4530
    lw	$a3,168($a1)
    # Line 4518
    sd	$s3,-40($s8)
    lui	$v1,0xa
    # Line 4521
    lw	$a2,352($a1)
    # Line 4533
    sll	$a3,$a3,0x4
    # Line 4518
    sd	$a4,-64($s8)
    # Line 4533
    li	$a4,-16
    addiu	$a3,$a3,15
    # Line 4534
    li	$a5,-16
    # Line 4518
    sd	$s6,-56($s8)
    # Line 4533
    and	$a4,$a3,$a4
    # Line 4534
    and	$a3,$a3,$a5
    # Line 4523
    lw	$a5,30648($a0)
    subu	$sp,$sp,$a4
    # Line 4533
    move	$s6,$sp
    subu	$sp,$sp,$a3
    # Line 4536
    lw	$at,172($a1)
    # Line 4518
    addiu	$v1,$v1,2812
    # Line 4523
    sd	$a5,-120($s8)
    # Line 4518
    move	$s3,$a1
    move	$s4,$a0
    sd	$sp,-104($s8)
    addu	$gp,$t9,$v1
    # Line 4536
    blez	$at,.L0d9b0428
    sd	$at,-112($s8)
    sd	$s0,-160($s8)
    sd	$s2,-136($s8)
    sd	$s1,-128($s8)
    sd	$ra,-152($s8)
    addiu	$ra,$a1,4
    sd	$ra,-80($s8)
    addiu	$t9,$a2,-2
    sd	$t9,-32($s8)
    sd	$s7,-168($s8)
    li	$s7,1
    addiu	$t8,$a2,-1
    sd	$s5,-144($s8)
    slt	$s7,$s7,$t8
    sd	$s7,-96($s8)
    move	$s7,$zero
    sll	$s5,$t8,0x2
    sd	$t8,-88($s8)
    b	.L0d9b03a0
    addu	$s5,$s5,$a1
    nop
    nop
    nop
.L0d9b0360:
    # Line 4550
    sll	$t9,$a5,0x2
    addu	$t9,$s3,$t9
    lw	$t9,360($t9)
    move	$a0,$s4
    move	$a1,$s3
    jalr	$t9
    lw	$a3,92($s3)
    # Line 4551
    lw	$v1,92($s3)
    lw	$v0,96($s3)
    # Line 4538
    ld	$at,-112($s8)
    ld	$ra,-120($s8)
    addiu	$s7,$s7,1
    # Line 4551
    addu	$v0,$v0,$v1
    sw	$v0,92($s3)
    # Line 4538
    beq	$at,$s7,.L0d9b0410
    # Line 4554
    sw	$ra,30648($s4)
.L0d9b03a0:
    # Line 4540
    lw	$t9,360($s3)
    move	$a0,$s4
    move	$a1,$s3
    move	$a3,$s6
    jalr	$t9
    lw	$a2,12($s3)
    # Line 4541
    lw	$a2,12($s3)
    lw	$a1,16($s3)
    # Line 4543
    ld	$a0,-96($s8)
    ld	$s0,-104($s8)
    ld	$s1,-80($s8)
    # Line 4544
    li	$a5,1
    # Line 4541
    addu	$a1,$a1,$a2
    sw	$a1,12($s3)
    # Line 4543
    beqz	$a0,.L0d9b0360
    move	$a2,$s6
.L0d9b03e0:
    # Line 4545
    lw	$t9,360($s1)
    move	$s2,$a2
    move	$a0,$s4
    move	$a1,$s3
    jalr	$t9
    move	$a3,$s0
    # Line 4544
    addiu	$s1,$s1,4
    # Line 4547
    move	$a2,$s0
    # Line 4544
    bne	$s1,$s5,.L0d9b03e0
    # Line 4548
    move	$s0,$s2
    # Line 4544
    b	.L0d9b0360
    ld	$a5,-88($s8)
.L0d9b0410:
    ld	$s1,-128($s8)
    ld	$s2,-136($s8)
    ld	$s5,-144($s8)
    ld	$ra,-152($s8)
    ld	$s0,-160($s8)
    ld	$s7,-168($s8)
.L0d9b0428:
    ld	$s3,-40($s8)
    ld	$s4,-48($s8)
    ld	$s6,-56($s8)
    # Line 4556
    ld	$a3,-64($s8)
    ld	$gp,-72($s8)
    move	$sp,$s8
    jr	$ra
    move	$s8,$a3
.end __glCopyImageSpans

# Function: __glGenericPickCopyImageSpan
# Declared: Line 4572 (Source lines: 4574-4607)
# Address: 0x0d9b0450 - 0x0d9b051c (Size: 204 bytes, Frame: 48)
.globl __glGenericPickCopyImageSpan
.ent __glGenericPickCopyImageSpan
__glGenericPickCopyImageSpan:
    # Line 4574
    addiu	$sp,$sp,-48
    sd	$ra,32($sp)
    lui	$at,0xa
    # Line 4580
    li	$ra,7
    sw	$ra,8($sp)
    # Line 4574
    addiu	$at,$at,2364
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 4583
    # lw $t9, -32716($gp) # &sub_0d9b0000
    # Line 4574
    sd	$s0,24($sp)
    # Line 4581
    sb	$a2,12($sp)
    # Line 4583
    addiu	$t9,$t9,-30800
    addiu	$a2,$sp,0
    # Line 4578
    li	$at,2
    # Line 4579
    sw	$at,4($sp)
    # Line 4574
    move	$s0,$a1
    # Line 4583
    bal __glSpanRGBAScaleBiasReduce
    # Line 4578
    sw	$at,0($sp)
    ld	$ra,32($sp)
    # Line 4583
    beqz	$v0,.L0d9b0504
    move	$a2,$v0
.L0d9b04a4:
    # Line 4590
    lbu	$v0,12($sp)
    beqz	$v0,.L0d9b04c4
    # Line 4607
    ld	$gp,40($sp)
    # Line 4595
    li	$a0,0x8016
    lw	$v0,436($s0)
    lw	$v1,4($v0)
    beq	$v1,$a0,.L0d9b04d4
    nop
.L0d9b04c4:
    # Line 4607
    move	$v0,$a2
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9b04d4:
    # Line 4597
    lw	$a3,64($v0)
    lw	$a1,180($s0)
    subu	$a1,$a1,$a3
    addiu	$a1,$a1,1
    bgez	$a1,.L0d9b04c4
    sw	$a1,184($s0)
    # Line 4607
    ld	$gp,40($sp)
    move	$v0,$a2
    # Line 4599
    sw	$zero,184($s0)
    # Line 4607
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9b0504:
    # Line 4590
    addiu	$a2,$v0,1
    sll	$a5,$a2,0x2
    la	$a4,__glSpanCopy
    addu	$a5,$s0,$a5
    b	.L0d9b04a4
    sw	$a4,356($a5)
.end __glGenericPickCopyImageSpan

# Function: __glCopyImage3D
# Declared: Line 4610 (Source lines: 4612-4627)
# Address: 0x0d9b0520 - 0x0d9b05dc (Size: 188 bytes, Frame: 208)
.globl __glCopyImage3D
.ent __glCopyImage3D
__glCopyImage3D:
    # Line 4612
    addiu	$sp,$sp,-80
    sd	$s2,0($sp)
    # Line 4619
    lw	$s2,92($a1)
    # Line 4612
    sd	$s0,24($sp)
    sd	$s1,32($sp)
    sd	$s5,40($sp)
    sd	$s4,16($sp)
    move	$s5,$a2
    # Line 4617
    lw	$s4,176($a1)
    # Line 4612
    move	$s1,$a1
    sd	$s6,8($sp)
    lui	$at,0xa
    move	$s6,$a0
    # Line 4618
    lw	$s0,12($a1)
    # Line 4612
    addiu	$at,$at,2156
    sd	$gp,48($sp)
    # Line 4619
    blez	$s4,.L0d9b05b8
    # Line 4612
    addu	$gp,$t9,$at
    sd	$ra,64($sp)
    sd	$s3,56($sp)
    # Line 4619
    move	$s3,$zero
    nop
    nop
    nop
.L0d9b0580:
    # Line 4621
    move	$t9,$s5
    move	$a0,$s6
    jalr	$t9
    move	$a1,$s1
    # Line 4624
    lw	$v1,104($s1)
    # Line 4620
    addiu	$s3,$s3,1
    # Line 4622
    lw	$v0,24($s1)
    # Line 4624
    addu	$s2,$v1,$s2
    # Line 4625
    sw	$s2,92($s1)
    # Line 4622
    addu	$s0,$v0,$s0
    # Line 4620
    bne	$s4,$s3,.L0d9b0580
    # Line 4623
    sw	$s0,12($s1)
    ld	$s3,56($sp)
    ld	$ra,64($sp)
.L0d9b05b8:
    ld	$s2,0($sp)
    ld	$s6,8($sp)
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    ld	$s5,40($sp)
    # Line 4627
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glCopyImage3D

# Function: __glGenericPickCopyImage
# Declared: Line 4629 (Source lines: 4631-4675)
# Address: 0x0d9b05e0 - 0x0d9b06d8 (Size: 248 bytes, Frame: 48)
.globl __glGenericPickCopyImage
.ent __glGenericPickCopyImage
__glGenericPickCopyImage:
    # Line 4635
    li	$at,-1
    sw	$at,264($a1)
    # Line 4631
    addiu	$sp,$sp,-48
    lui	$v0,0xa
    sd	$a2,24($sp)
    addiu	$v0,$v0,1964
    sd	$gp,16($sp)
    addu	$gp,$t9,$v0
    # Line 4637
    # lw $t9, -27724($gp) # &__glGenericPickCopyImageSpan
    # Line 4631
    sd	$ra,8($sp)
    sd	$s0,0($sp)
    move	$s0,$a1
    # Line 4637
    bal __glGenericPickCopyImageSpan
    # Line 4631
    sd	$a0,32($sp)
    # Line 4637
    lw	$a2,264($s0)
    li	$v1,-1
    # Line 4640
    addiu	$a5,$v0,-1
    ld	$a0,32($sp)
    # Line 4644
    li	$a3,2
    # Line 4650
    la	$a4,__glCopyImage2
    # Line 4637
    beq	$a2,$v1,.L0d9b06b8
    move	$a1,$v0
    # Line 4642
    addiu	$a1,$a2,1
.L0d9b063c:
    # Line 4644
    li	$a2,1
    # Line 4656
    li	$a5,0x8011
    xor	$a3,$a1,$a3
    # Line 4644
    beq	$a1,$a2,.L0d9b06b0
    # Line 4656
    li	$v1,0x8012
    # Line 4652
    la	$a2,__glCopyImageSpans
    movz	$a2,$a4,$a3
.L0d9b0658:
    # Line 4654
    ld	$a4,24($sp)
    beqz	$a4,.L0d9b0678
    # Line 4662
    la	$a3,__glSep2dCopyImage
    # Line 4656
    lw	$v0,436($s0)
    lw	$v0,0($v0)
    beq	$v0,$a5,.L0d9b06c0
    xor	$v1,$v0,$v1
    movz	$a2,$a3,$v1
.L0d9b0678:
    # Line 4670
    lw	$a3,24($s0)
    bgtz	$a3,.L0d9b0690
    # Line 4668
    sw	$a1,352($s0)
    # Line 4670
    lw	$a4,104($s0)
    blez	$a4,.L0d9b06c8
    # Line 4673
    move	$t9,$a2
.L0d9b0690:
    # Line 4671
    # lw $t9, -27720($gp) # &__glCopyImage3D
    bal __glCopyImage3D
    move	$a1,$s0
    ld	$ra,8($sp)
.L0d9b06a0:
    ld	$s0,0($sp)
    # Line 4675
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9b06b0:
    b	.L0d9b0658
    # Line 4646
    la	$a2,__glCopyImage1
.L0d9b06b8:
    # Line 4640
    b	.L0d9b063c
    sw	$a5,264($s0)
.L0d9b06c0:
    b	.L0d9b0678
    # Line 4658
    la	$a2,__glConv2dCopyImage
.L0d9b06c8:
    # Line 4673
    jal	__glCopyImage3D
    move	$a1,$s0
    b	.L0d9b06a0
    ld	$ra,8($sp)
.end __glGenericPickCopyImage

# Function: __glInitReadImageSrcInfo
# Declared: Line 4685 (Source lines: 4691-4723)
# Address: 0x0d9b06e0 - 0x0d9b07a0 (Size: 192 bytes, Frame: 0)
.globl __glInitReadImageSrcInfo
.ent __glInitReadImageSrcInfo
__glInitReadImageSrcInfo:
    # Line 4691
    lw	$v0,3660($a0)
    addu	$v0,$v0,$a2
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,188($a1)
    lbu	$at,4848($a0)
    beqz	$at,.L0d9b078c
    lw	$a7,3664($a0)
    # Line 4693
    lw	$v1,3704($a0)
    subu	$v1,$v1,$a3
    addu	$v1,$a7,$v1
    addiu	$v1,$v1,-1
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,192($a1)
.L0d9b071c:
    # Line 4698
    lbu	$a7,3220($a0)
    # Line 4699
    li	$a2,5126
    sw	$a2,4($a1)
    # Line 4700
    sw	$a4,168($a1)
    # Line 4701
    sw	$a5,172($a1)
    # Line 4698
    li	$t0,6400
    li	$a6,6408
    movz	$a6,$t0,$a7
    sw	$a6,0($a1)
    # Line 4702
    lwc1	$f2,3544($a0)
    # Line 4722
    sb	$zero,72($a1)
    # Line 4721
    sw	$zero,8($a1)
    # Line 4720
    sw	$zero,40($a1)
    # Line 4719
    li	$a3,4
    sw	$a3,36($a1)
    # Line 4718
    sw	$a2,4($a1)
    # Line 4712
    sw	$a5,64($a1)
    # Line 4711
    sw	$a4,60($a1)
    # Line 4709
    sw	$zero,44($a1)
    # Line 4708
    sw	$zero,56($a1)
    # Line 4707
    sw	$zero,52($a1)
    # Line 4703
    mtc1	$zero,$f3
    # Line 4706
    sw	$zero,48($a1)
    # Line 4705
    li	$a0,1
    sw	$a0,68($a1)
    # Line 4703
    swc1	$f3,196($a1)
    # Line 4723
    jr	$ra
    # Line 4702
    swc1	$f2,160($a1)
.L0d9b078c:
    # Line 4696
    addu	$t1,$a7,$a3
    mtc1	$t1,$f4
    cvt.s.w	$f4,$f4
    b	.L0d9b071c
    swc1	$f4,192($a1)
.end __glInitReadImageSrcInfo

# Function: __glGenericPickReadImage
# Declared: Line 4730 (Source lines: 4731-4806)
# Address: 0x0d9b07a0 - 0x0d9b08d0 (Size: 304 bytes, Frame: 192)
.globl __glGenericPickReadImage
.ent __glGenericPickReadImage
__glGenericPickReadImage:
    # Line 4731
    addiu	$sp,$sp,-64
    # Line 4749
    li	$v0,3
    sw	$v0,4($sp)
    # Line 4731
    sd	$a0,48($sp)
    lui	$at,0xa
    sd	$ra,32($sp)
    addiu	$at,$at,1516
    sd	$gp,40($sp)
    addu	$gp,$t9,$at
    # Line 4753
    # lw $t9, -32716($gp) # &sub_0d9b0000
    # Line 4750
    li	$ra,5
    sw	$ra,8($sp)
    # Line 4731
    sd	$s0,24($sp)
    # Line 4753
    addiu	$t9,$t9,-30800
    addiu	$a2,$sp,0
    # Line 4748
    li	$at,1
    # Line 4751
    sb	$at,12($sp)
    # Line 4731
    move	$s0,$a1
    # Line 4753
    jal	sub_0d9b0000
    # Line 4748
    sw	$at,0($sp)
    # Line 4753
    move	$a1,$v0
    # Line 4764
    addiu	$t8,$v0,-1
    # Line 4762
    lw	$a4,264($s0)
    # Line 4776
    li	$a7,2
    ld	$a0,48($sp)
    # Line 4762
    li	$a2,-1
    # Line 4776
    li	$a6,1
    # Line 4768
    li	$a5,0x8012
    # Line 4762
    lw	$v1,16($sp)
    # Line 4794
    li	$t1,0x8016
    # Line 4762
    beq	$a4,$a2,.L0d9b08b0
    sw	$v1,356($s0)
    # Line 4766
    addiu	$a1,$a4,1
.L0d9b0824:
    # Line 4768
    li	$a3,0x8011
    lw	$a4,436($s0)
    lw	$v0,0($a4)
    beq	$v0,$a3,.L0d9b08a8
    xor	$a7,$a1,$a7
    # Line 4774
    # lw $t9, -28268($gp) # &__glSep2dReadPixels
    # Line 4768
    beq	$v0,$a5,.L0d9b08b8
    nop
    # Line 4776
    beqz	$a1,.L0d9b08c0
    # Line 4782
    nop	# was lw $t9, -27788($gp) # &__glReadPixels1
    # Line 4776
    beq	$a1,$a6,.L0d9b08c8
    # Line 4785
    la	$t0,__glReadPixels2
    # Line 4787
    # lw $t9, -27796($gp) # &__glReadPixelSpans
    movz	$t9,$t0,$a7
.L0d9b085c:
    # Line 4791
    sw	$a1,352($s0)
.L0d9b0860:
    # Line 4794
    lw	$t0,4($a4)
    beq	$t0,$t1,.L0d9b0888
    nop
.L0d9b086c:
    # Line 4805
    jal	__glReadPixelSpans
    move	$a1,$s0
    ld	$ra,32($sp)
    ld	$s0,24($sp)
    # Line 4806
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9b0888:
    # Line 4796
    lw	$t3,64($a4)
    lw	$t2,180($s0)
    subu	$t2,$t2,$t3
    addiu	$t2,$t2,1
    bgez	$t2,.L0d9b086c
    sw	$t2,184($s0)
    # Line 4798
    b	.L0d9b086c
    sw	$zero,184($s0)
.L0d9b08a8:
    b	.L0d9b085c
    # Line 4770
    nop	# was lw $t9, -28272($gp) # &__glConv2dReadPixels
.L0d9b08b0:
    # Line 4764
    b	.L0d9b0824
    sw	$t8,264($s0)
.L0d9b08b8:
    # Line 4774
    b	.L0d9b0860
    # Line 4791
    sw	$a1,352($s0)
.L0d9b08c0:
    b	.L0d9b085c
    # Line 4778
    nop	# was lw $t9, -27784($gp) # &__glReadPixels0
.L0d9b08c8:
    # Line 4782
    b	.L0d9b0860
    # Line 4791
    sw	$a1,352($s0)
.end __glGenericPickReadImage

# Function: __glInitMemLoad
# Declared: Line 4813 (Source lines: 4815-4870)
# Address: 0x0d9b08d0 - 0x0d9b0a0c (Size: 316 bytes, Frame: 0)
.globl __glInitMemLoad
.ent __glInitMemLoad
__glInitMemLoad:
    # Line 4833
    sw	$zero,432($a1)
    # Line 4830
    li	$a5,1
    sw	$a5,124($a1)
    # Line 4829
    sw	$zero,120($a1)
    # Line 4828
    sw	$zero,136($a1)
    # Line 4827
    sw	$zero,132($a1)
    # Line 4826
    sw	$zero,128($a1)
    # Line 4831
    lw	$a0,168($a1)
    # Line 4825
    sw	$a3,88($a1)
    # Line 4832
    lw	$a3,172($a1)
    sw	$a3,144($a1)
    # Line 4820
    mtc1	$zero,$f1
    # Line 4831
    sw	$a0,140($a1)
    # Line 4823
    swc1	$f1,344($a1)
    # Line 4815
    lui	$v1,0xa
    # Line 4822
    swc1	$f1,340($a1)
    # Line 4815
    addiu	$v1,$v1,1212
    # Line 4821
    swc1	$f1,336($a1)
    # Line 4815
    addu	$at,$t9,$v1
    # Line 4816
    lwc1	$f0,_lit_3f800000
    # Line 4820
    swc1	$f1,332($a1)
    # Line 4819
    swc1	$f0,328($a1)
    # Line 4835
    li	$v0,6409
    # Line 4818
    swc1	$f0,324($a1)
    # Line 4817
    swc1	$f0,320($a1)
    # Line 4835
    li	$a4,6410
    beq	$a2,$v0,.L0d9b0994
    # Line 4816
    swc1	$f0,316($a1)
    # Line 4835
    beq	$a2,$a4,.L0d9b09b0
    # Line 4844
    li	$t9,4
    # Line 4835
    li	$a4,6407
    beq	$a4,$a2,.L0d9b09c4
    li	$a5,0x8049
    li	$a4,6408
    beq	$a4,$a2,.L0d9b09dc
    nop
    li	$a4,6406
    beq	$a4,$a2,.L0d9b09f4
    nop
    beq	$a2,$a5,.L0d9b097c
    # Line 4864
    li	$t0,4
    # Line 4870
    jr	$ra
    nop
.L0d9b097c:
    # Line 4864
    sw	$t0,148($a1)
    # Line 4863
    li	$a7,5126
    sw	$a7,84($a1)
    # Line 4862
    li	$a6,6403
    # Line 4870
    jr	$ra
    # Line 4862
    sw	$a6,80($a1)
.L0d9b0994:
    # Line 4839
    li	$t3,4
    sw	$t3,148($a1)
    # Line 4838
    li	$t2,5126
    sw	$t2,84($a1)
    # Line 4837
    li	$t1,6403
    # Line 4870
    jr	$ra
    # Line 4837
    sw	$t1,80($a1)
.L0d9b09b0:
    # Line 4844
    sw	$t9,148($a1)
    # Line 4843
    li	$t8,5126
    sw	$t8,84($a1)
    # Line 4870
    jr	$ra
    # Line 4842
    sw	$a5,80($a1)
.L0d9b09c4:
    # Line 4849
    li	$v1,4
    sw	$v1,148($a1)
    # Line 4848
    li	$v0,5126
    sw	$v0,84($a1)
    # Line 4870
    jr	$ra
    # Line 4847
    sw	$a4,80($a1)
.L0d9b09dc:
    # Line 4854
    li	$a2,4
    sw	$a2,148($a1)
    # Line 4853
    li	$a0,5126
    sw	$a0,84($a1)
    # Line 4870
    jr	$ra
    # Line 4852
    sw	$a4,80($a1)
.L0d9b09f4:
    # Line 4859
    li	$a5,4
    sw	$a5,148($a1)
    # Line 4858
    li	$a3,5126
    sw	$a3,84($a1)
    # Line 4870
    jr	$ra
    # Line 4857
    sw	$a4,80($a1)
.end __glInitMemLoad

# Function: __glInitMemGet
# Declared: Line 4876 (Source lines: 4880-4925)
# Address: 0x0d9b0a10 - 0x0d9b0b08 (Size: 248 bytes, Frame: 0)
.globl __glInitMemGet
.ent __glInitMemGet
__glInitMemGet:
    # Line 4888
    sw	$zero,432($a1)
    # Line 4887
    sw	$a3,64($a1)
    # Line 4885
    li	$a6,1
    sw	$a6,44($a1)
    # Line 4884
    sw	$zero,40($a1)
    # Line 4883
    sw	$zero,56($a1)
    # Line 4882
    sw	$zero,52($a1)
    # Line 4881
    sw	$zero,48($a1)
    # Line 4890
    li	$at,6409
    # Line 4886
    sw	$a2,60($a1)
    # Line 4890
    beq	$a4,$at,.L0d9b0a94
    # Line 4880
    sw	$a5,8($a1)
    # Line 4890
    li	$v0,6410
    beq	$a4,$v0,.L0d9b0ab0
    li	$a2,6407
    beq	$a2,$a4,.L0d9b0ac8
    # Line 4904
    li	$t2,4
    # Line 4890
    li	$a2,6408
    beq	$a2,$a4,.L0d9b0adc
    # Line 4909
    li	$t8,4
    # Line 4890
    li	$a2,6406
    beq	$a2,$a4,.L0d9b0af0
    li	$v1,0x8049
    beq	$a4,$v1,.L0d9b0a7c
    # Line 4919
    li	$a3,4
    # Line 4925
    jr	$ra
    nop
.L0d9b0a7c:
    # Line 4919
    sw	$a3,68($a1)
    # Line 4918
    li	$a2,5126
    sw	$a2,4($a1)
    # Line 4917
    li	$a0,6403
    # Line 4925
    jr	$ra
    # Line 4917
    sw	$a0,0($a1)
.L0d9b0a94:
    # Line 4894
    li	$a6,4
    sw	$a6,68($a1)
    # Line 4893
    li	$a5,5126
    sw	$a5,4($a1)
    # Line 4892
    li	$a4,6403
    # Line 4925
    jr	$ra
    # Line 4892
    sw	$a4,0($a1)
.L0d9b0ab0:
    # Line 4899
    li	$t0,4
    sw	$t0,68($a1)
    # Line 4898
    li	$a7,5126
    sw	$a7,4($a1)
    # Line 4925
    jr	$ra
    # Line 4897
    sw	$a6,0($a1)
.L0d9b0ac8:
    # Line 4904
    sw	$t2,68($a1)
    # Line 4903
    li	$t1,5126
    sw	$t1,4($a1)
    # Line 4925
    jr	$ra
    # Line 4902
    sw	$a2,0($a1)
.L0d9b0adc:
    # Line 4909
    sw	$t8,68($a1)
    # Line 4908
    li	$t3,5126
    sw	$t3,4($a1)
    # Line 4925
    jr	$ra
    # Line 4907
    sw	$a2,0($a1)
.L0d9b0af0:
    # Line 4914
    li	$at,4
    sw	$at,68($a1)
    # Line 4913
    li	$t9,5126
    sw	$t9,4($a1)
    # Line 4925
    jr	$ra
    # Line 4912
    sw	$a2,0($a1)
.end __glInitMemGet

# Function: __glInitMemUnpack
# Declared: Line 4931 (Source lines: 4935-4947)
# Address: 0x0d9b0b10 - 0x0d9b0b78 (Size: 104 bytes, Frame: 208)
.globl __glInitMemUnpack
.ent __glInitMemUnpack
__glInitMemUnpack:
    # Line 4936
    mtc1	$zero,$f1
    # Line 4935
    addiu	$sp,$sp,-80
    sd	$ra,0($sp)
    # Line 4936
    swc1	$f1,196($a1)
    # Line 4937
    lwc1	$f0,3544($a0)
    # Line 4938
    sw	$a2,180($a1)
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 4946
    lbu	$a2,87($sp)
    # Line 4943
    sw	$a7,8($a1)
    # Line 4942
    sw	$a6,4($a1)
    # Line 4935
    lui	$v0,0xa
    # Line 4941
    sw	$a5,0($a1)
    # Line 4935
    addiu	$v0,$v0,636
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 4946
    # lw $t9, -27848($gp) # &__glLoadUnpackModes
    # Line 4940
    sw	$a4,176($a1)
    # Line 4939
    sw	$a3,172($a1)
    # Line 4946
    nop
    bal __glLoadUnpackModes
    # Line 4937
    swc1	$f0,160($a1)
    ld	$ra,0($sp)
    # Line 4947
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glInitMemUnpack

# Function: __glInitMemPack
# Declared: Line 4952 (Source lines: 4955-4967)
# Address: 0x0d9b0b80 - 0x0d9b0be4 (Size: 100 bytes, Frame: 16)
.globl __glInitMemPack
.ent __glInitMemPack
__glInitMemPack:
    # Line 4956
    mtc1	$zero,$f1
    # Line 4955
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 4956
    swc1	$f1,196($a1)
    # Line 4957
    lwc1	$f0,3544($a0)
    # Line 4963
    sw	$a7,88($a1)
    # Line 4962
    sw	$a6,84($a1)
    # Line 4961
    sw	$a5,80($a1)
    # Line 4960
    sw	$a4,176($a1)
    # Line 4959
    sw	$a3,172($a1)
    # Line 4955
    lui	$v0,0xa
    # Line 4958
    sw	$a2,180($a1)
    # Line 4955
    addiu	$v0,$v0,524
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 4966
    # lw $t9, -27804($gp) # &__glLoadPackModes
    # Line 4958
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 4966
    nop
    bal __glLoadPackModes
    # Line 4957
    swc1	$f0,160($a1)
    ld	$ra,0($sp)
    # Line 4967
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glInitMemPack

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_bfe0000000000000:
    .word 0xbfe00000, 0x00000000
_lit_3f800000:
    .word 0x3f800000
_lit_bf800000:
    .word 0xbf800000

