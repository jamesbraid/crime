# Source: ../soft/so_texture.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_texture.c
# Total Functions: 207

.text

# Function: __glLookUpTextureParams
# Declared: Line 42 (Source lines: 44-52)
# Address: 0x0da1e410 - 0x0da1e458 (Size: 72 bytes, Frame: 0)
.globl __glLookUpTextureParams
.ent __glLookUpTextureParams
__glLookUpTextureParams:
    # Line 44
    li	$at,3552
    li	$v0,3553
    beq	$a1,$at,.L0da1e444
    li	$v1,0x806f
    beq	$a1,$v0,.L0da1e44c
    nop
    beq	$a1,$v1,.L0da1e438
    # Line 52
    move	$v0,$zero
    # Line 46
    jr	$ra
    nop
.L0da1e438:
    # Line 50
    lw	$v0,2480($a0)
    # Line 46
    jr	$ra
    # Line 50
    addiu	$v0,$v0,448
.L0da1e444:
    # Line 46
    jr	$ra
    lw	$v0,2480($a0)
.L0da1e44c:
    # Line 48
    lw	$v0,2480($a0)
    # Line 46
    jr	$ra
    # Line 48
    addiu	$v0,$v0,224
.end __glLookUpTextureParams

# Function: __glLookUpTextureTexobjs
# Declared: Line 56 (Source lines: 59-67)
# Address: 0x0da1e460 - 0x0da1e4ac (Size: 76 bytes, Frame: 0)
.globl __glLookUpTextureTexobjs
.ent __glLookUpTextureTexobjs
__glLookUpTextureTexobjs:
    # Line 59
    li	$at,3552
    li	$v0,3553
    beq	$a1,$at,.L0da1e494
    li	$v1,0x806f
    beq	$a1,$v0,.L0da1e4a0
    nop
    beq	$a1,$v1,.L0da1e488
    # Line 67
    move	$v0,$zero
    # Line 61
    jr	$ra
    nop
.L0da1e488:
    # Line 65
    lw	$v0,2480($a0)
    # Line 61
    jr	$ra
    # Line 65
    addiu	$v0,$v0,664
.L0da1e494:
    # Line 61
    lw	$v0,2480($a0)
    jr	$ra
    addiu	$v0,$v0,216
.L0da1e4a0:
    # Line 63
    lw	$v0,2480($a0)
    # Line 61
    jr	$ra
    # Line 63
    addiu	$v0,$v0,440
.end __glLookUpTextureTexobjs

# Function: __glLookUpTexture
# Declared: Line 71 (Source lines: 73-87)
# Address: 0x0da1e4b0 - 0x0da1e540 (Size: 144 bytes, Frame: 0)
.globl __glLookUpTexture
.ent __glLookUpTexture
__glLookUpTexture:
    # Line 73
    li	$at,3552
    li	$a3,0x8064
    beq	$a1,$at,.L0da1e504
    li	$a4,0x8070
    li	$v0,3553
    beq	$a1,$v0,.L0da1e510
    li	$v1,0x806f
    beq	$a1,$v1,.L0da1e51c
    # Line 87
    move	$v0,$zero
    # Line 73
    li	$a2,0x8063
    beq	$a1,$a2,.L0da1e528
    nop
    beq	$a1,$a3,.L0da1e534
    nop
    beq	$a1,$a4,.L0da1e4f8
    nop
    # Line 75
    jr	$ra
    nop
.L0da1e4f8:
    # Line 85
    lw	$v0,28196($a0)
    # Line 75
    jr	$ra
    # Line 85
    lw	$v0,20($v0)
.L0da1e504:
    # Line 75
    lw	$v0,28196($a0)
    jr	$ra
    lw	$v0,0($v0)
.L0da1e510:
    # Line 77
    lw	$v0,28196($a0)
    # Line 75
    jr	$ra
    # Line 77
    lw	$v0,4($v0)
.L0da1e51c:
    # Line 79
    lw	$v0,28196($a0)
    # Line 75
    jr	$ra
    # Line 79
    lw	$v0,8($v0)
.L0da1e528:
    # Line 81
    lw	$v0,28196($a0)
    # Line 75
    jr	$ra
    # Line 81
    lw	$v0,12($v0)
.L0da1e534:
    # Line 83
    lw	$v0,28196($a0)
    # Line 75
    jr	$ra
    # Line 83
    lw	$v0,16($v0)
.end __glLookUpTexture

# Function: __glLookUpTextureObject
# Declared: Line 91 (Source lines: 93-101)
# Address: 0x0da1e540 - 0x0da1e58c (Size: 76 bytes, Frame: 0)
.globl __glLookUpTextureObject
.ent __glLookUpTextureObject
__glLookUpTextureObject:
    # Line 93
    li	$at,3552
    li	$v0,3553
    beq	$a1,$at,.L0da1e574
    li	$v1,0x806f
    beq	$a1,$v0,.L0da1e580
    nop
    beq	$a1,$v1,.L0da1e568
    # Line 101
    move	$v0,$zero
    # Line 95
    jr	$ra
    nop
.L0da1e568:
    # Line 99
    lw	$v0,28200($a0)
    # Line 95
    jr	$ra
    # Line 99
    lw	$v0,8($v0)
.L0da1e574:
    # Line 95
    lw	$v0,28200($a0)
    jr	$ra
    lw	$v0,0($v0)
.L0da1e580:
    # Line 97
    lw	$v0,28200($a0)
    # Line 95
    jr	$ra
    # Line 97
    lw	$v0,4($v0)
.end __glLookUpTextureObject

# Function: Clampf
# Declared: Line 105 (Source lines: 106-109)
# Address: 0x0da1e590 - 0x0da1e5b4 (Size: 36 bytes, Frame: 0)
.ent Clampf
Clampf:
    # Line 106
    c.lt.s	$f12,$f13
    bc1t	.L0da1e5ac
    # Line 109
    mov.s	$f0,$f13
    # Line 108
    mov.s	$f0,$f14
    # Line 107
    c.lt.s $f14,$f12
    # Line 109
    jr	$ra
    movf.s	$f0,$f12,$fcc1
.L0da1e5ac:
    jr	$ra
    nop
.end Clampf

# Function: __glCopyTexImage
# Declared: Line 115 (Source lines: 117-119)
# Address: 0x0da1e5c0 - 0x0da1e5f4 (Size: 52 bytes, Frame: 16)
.globl __glCopyTexImage
.ent __glCopyTexImage
__glCopyTexImage:
    # Line 117
    addiu	$sp,$sp,-16
    lui	$at,0x3
    sd	$gp,8($sp)
    addiu	$at,$at,10188
    addu	$gp,$t9,$at
    # Line 118
    lw	$t9,12572($a0)
    # Line 117
    sd	$ra,0($sp)
    # Line 118
    jalr	$t9
    li	$a2,1
    ld	$ra,0($sp)
    # Line 119
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glCopyTexImage

# Function: __glReadTexImage
# Declared: Line 123 (Source lines: 125-127)
# Address: 0x0da1e600 - 0x0da1e634 (Size: 52 bytes, Frame: 16)
.globl __glReadTexImage
.ent __glReadTexImage
__glReadTexImage:
    # Line 125
    addiu	$sp,$sp,-16
    lui	$at,0x3
    sd	$gp,8($sp)
    addiu	$at,$at,10124
    addu	$gp,$t9,$at
    # Line 126
    lw	$t9,12576($a0)
    # Line 125
    sd	$ra,0($sp)
    # Line 126
    jalr	$t9
    nop
    ld	$ra,0($sp)
    # Line 127
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glReadTexImage

# Function: __glTexInitTextureObject
# Declared: Line 145 (Source lines: 147-156)
# Address: 0x0da1e640 - 0x0da1e67c (Size: 60 bytes, Frame: 0)
.globl __glTexInitTextureObject
.ent __glTexInitTextureObject
__glTexInitTextureObject:
    # Line 154
    sw	$a2,236($a1)
    # Line 147
    lui	$a2,0x3
    # Line 151
    sb	$zero,12($a1)
    # Line 147
    addiu	$a2,$a2,10060
    # Line 150
    sw	$a3,8($a1)
    # Line 147
    addu	$at,$t9,$a2
    # Line 149
    la	$v0,__glFreeTexObj
    # Line 152
    la	$v1,__glCopyTexImage
    # Line 153
    la	$a0,__glReadTexImage
    sw	$a0,268($a1)
    # Line 152
    sw	$v1,264($a1)
    # Line 155
    lwc1	$f0,_lit_3f800000
    # Line 149
    sw	$v0,4($a1)
    # Line 156
    jr	$ra
    # Line 155
    swc1	$f0,240($a1)
.end __glTexInitTextureObject

# Function: __glShareTextureObjects
# Declared: Line 163 (Source lines: 165-167)
# Address: 0x0da1e680 - 0x0da1e698 (Size: 24 bytes, Frame: 0)
.globl __glShareTextureObjects
.ent __glShareTextureObjects
__glShareTextureObjects:
    # Line 165
    lw	$v0,28232($a1)
    sw	$v0,28232($a0)
    # Line 166
    lw	$at,8($v0)
    addiu	$at,$at,1
    # Line 167
    jr	$ra
    # Line 166
    sw	$at,8($v0)
.end __glShareTextureObjects

# Function: __glEarlyInitTextureState
# Declared: Line 169 (Source lines: 170-258)
# Address: 0x0da1e6a0 - 0x0da1e890 (Size: 496 bytes, Frame: 208)
.globl __glEarlyInitTextureState
.ent __glEarlyInitTextureState
__glEarlyInitTextureState:
    # Line 170
    addiu	$sp,$sp,-80
    sd	$s0,32($sp)
    sd	$s1,24($sp)
    sd	$s2,72($sp)
    sd	$s3,64($sp)
    sd	$s5,16($sp)
    sd	$s6,56($sp)
    sd	$s7,8($sp)
    lw	$v0,28228($a0)
    sd	$ra,48($sp)
    lui	$at,0x3
    sd	$s4,40($sp)
    move	$s4,$a0
    addiu	$at,$at,9964
    sd	$gp,0($sp)
    bnez	$v0,.L0da1e6ec
    addu	$gp,$t9,$at
    # Line 177
    la	$v0,__glTexInitTextureObject
    sw	$v0,28228($a0)
.L0da1e6ec:
    lw	$v1,28220($s4)
    # Line 183
    la	$a2,__glTexCreateProxyLevel
    # Line 177
    bnez	$v1,.L0da1e700
    # Line 180
    la	$a0,__glTexCreateLevel
    sw	$a0,28220($s4)
.L0da1e700:
    lw	$a1,28224($s4)
    # Line 187
    li	$a5,0x83c7
    # Line 191
    li	$s6,1
    # Line 180
    bnez	$a1,.L0da1e718
    # Line 190
    li	$s7,6
    # Line 183
    sw	$a2,28224($s4)
.L0da1e718:
    # Line 190
    sw	$s7,3604($s4)
    # Line 191
    lw	$a3,3732($s4)
    # Line 192
    lw	$a4,3612($s4)
    # Line 187
    sw	$a5,28212($s4)
    # Line 191
    addiu	$a3,$a3,-1
    sllv	$a3,$s6,$a3
    # Line 192
    sw	$a3,3728($s4)
    beqz	$a4,.L0da1e870
    # Line 191
    sw	$a3,3724($s4)
.L0da1e73c:
    # Line 199
    lw	$t9,4($s4)
    li	$a2,224
    li	$a1,6
    move	$a0,$s4
    jalr	$t9
    # Line 198
    lw	$s0,3608($s4)
    # Line 202
    lw	$t9,4($s4)
    li	$a2,4
    li	$a1,6
    move	$a0,$s4
    jalr	$t9
    # Line 199
    sw	$v0,2480($s4)
    # Line 205
    lw	$t9,4($s4)
    li	$a2,36
    move	$a1,$s0
    move	$a0,$s4
    jalr	$t9
    # Line 202
    sw	$v0,28196($s4)
    # Line 205
    lw	$a6,28232($s4)
    beqz	$a6,.L0da1e878
    sw	$v0,2484($s4)
.L0da1e790:
    # Line 229
    lw	$t9,4($s4)
    li	$a2,304
    li	$a1,6
    move	$a0,$s4
    jalr	$t9
    # Line 222
    lw	$s5,3732($s4)
    # Line 234
    lw	$t9,4($s4)
    li	$a2,4
    li	$a1,6
    move	$a0,$s4
    jalr	$t9
    # Line 229
    sw	$v0,28204($s4)
    # Line 238
    lw	$s0,28204($s4)
    move	$s3,$zero
    # Line 234
    sw	$v0,28200($s4)
    # Line 238
    move	$s1,$zero
    addiu	$s2,$s0,16
    nop
    nop
    nop
.L0da1e7e0:
    # Line 240
    lw	$t9,28228($s4)
    move	$a0,$s4
    move	$a1,$s0
    move	$a2,$zero
    jalr	$t9
    move	$a3,$s1
    # Line 246
    sw	$s6,0($s0)
    # Line 250
    lw	$t0,28196($s4)
    addu	$t0,$t0,$s3
    sw	$s2,0($t0)
    # Line 251
    lw	$a7,28200($s4)
    addu	$a7,$a7,$s3
    sw	$s0,0($a7)
    # Line 254
    lw	$t9,4($s4)
    li	$a2,100
    move	$a1,$s5
    jalr	$t9
    move	$a0,$s4
    # Line 239
    addiu	$s1,$s1,1
    addiu	$s2,$s2,304
    addiu	$s0,$s0,304
    addiu	$s3,$s3,4
    bne	$s1,$s7,.L0da1e7e0
    # Line 254
    sw	$v0,-60($s0)
    # Line 258
    ld	$gp,0($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    ld	$s2,72($sp)
    ld	$s3,64($sp)
    ld	$s4,40($sp)
    ld	$ra,48($sp)
    ld	$s5,16($sp)
    ld	$s6,56($sp)
    ld	$s7,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da1e870:
    # Line 194
    b	.L0da1e73c
    sw	$s6,3612($s4)
.L0da1e878:
    # Line 218
    # lw $t9, -25416($gp) # &__glNamesNewArray
    move	$a0,$s4
    jal	__glNamesNewArray
    li	$a1,1
    b	.L0da1e790
    sw	$v0,28232($s4)
.end __glEarlyInitTextureState

# Function: InitTextureMachine
# Declared: Line 269 (Source lines: 271-330)
# Address: 0x0da1e890 - 0x0da1ea68 (Size: 472 bytes, Frame: 48)
.ent InitTextureMachine
InitTextureMachine:
    # Line 271
    addiu	$sp,$sp,-48
    sd	$s1,32($sp)
    # Line 282
    li	$at,9986
    sw	$at,16($a2)
    # Line 279
    li	$v0,10497
    # Line 281
    sw	$v0,12($a2)
    # Line 280
    sw	$v0,8($a2)
    # Line 279
    sw	$v0,4($a2)
    # Line 274
    sw	$a0,0($a2)
    sd	$ra,16($sp)
    # Line 283
    li	$ra,9729
    sw	$ra,20($a2)
    # Line 284
    lwc1	$f3,3544($a0)
    # Line 271
    sd	$s0,24($sp)
    # Line 284
    swc1	$f3,172($a2)
    # Line 285
    lwc1	$f2,3544($a0)
    # Line 271
    sd	$s2,0($sp)
    # Line 285
    swc1	$f2,176($a2)
    # Line 286
    lwc1	$f1,3544($a0)
    # Line 288
    # lw $t9, -32688($gp) # &sub_0da20000
    # Line 286
    swc1	$f1,180($a2)
    # Line 271
    move	$s2,$a1
    # Line 288
    addiu	$t9,$t9,18352
    # Line 287
    lwc1	$f0,3544($a0)
    # Line 271
    move	$s0,$a2
    sd	$s3,8($sp)
    move	$s3,$a0
    # Line 288
    addiu	$a0,$a2,24
    bal __gllei_TexImage3DEXT
    # Line 287
    swc1	$f0,184($a2)
    # Line 290
    beqz	$s2,.L0da1ea08
    li	$s1,1
    li	$a0,2
    beq	$s1,$s2,.L0da1ea18
    li	$a1,3
    beq	$a0,$s2,.L0da1ea28
    nop
    beq	$a1,$s2,.L0da1ea38
    li	$v1,4
    beq	$s2,$v1,.L0da1ea48
    nop
    li	$a0,5
    beq	$s2,$a0,.L0da1ea58
    nop
.L0da1e940:
    # Line 321
    lw	$t9,4($s3)
    # Line 319
    lw	$s2,3732($s3)
    # Line 321
    li	$a2,100
    move	$a0,$s3
    jal	sub_0da20000
    move	$a1,$s2
    ld	$ra,16($sp)
    ld	$s3,8($sp)
    andi	$a4,$s2,0x3
    blez	$s2,.L0da1e9f4
    sw	$v0,228($s0)
    move	$a0,$zero
    sll	$a2,$s2,0x2
    subu	$a2,$a2,$s2
    sll	$a2,$a2,0x3
    addu	$a2,$a2,$s2
    beqz	$a4,.L0da1e9a0
    sll	$a2,$a2,0x2
.L0da1e988:
    # Line 327
    lw	$a3,228($s0)
    addiu	$a4,$a4,-1
    addu	$a3,$a3,$a0
    # Line 326
    addiu	$a0,$a0,100
    bnez	$a4,.L0da1e988
    # Line 327
    sw	$s1,60($a3)
.L0da1e9a0:
    sra	$a4,$s2,0x2
    beqz	$a4,.L0da1e9f4
    nop
    nop
.L0da1e9b0:
    lw	$t3,228($s0)
    addu	$t3,$t3,$a0
    sw	$s1,60($t3)
    lw	$t1,228($s0)
    # Line 326
    addiu	$t2,$a0,100
    # Line 327
    addu	$t1,$t1,$t2
    sw	$s1,60($t1)
    lw	$a7,228($s0)
    # Line 326
    addiu	$t0,$a0,200
    # Line 327
    addu	$a7,$a7,$t0
    sw	$s1,60($a7)
    lw	$a5,228($s0)
    # Line 326
    addiu	$a6,$a0,300
    addiu	$a0,$a0,400
    # Line 327
    addu	$a5,$a5,$a6
    # Line 326
    bne	$a0,$a2,.L0da1e9b0
    # Line 327
    sw	$s1,60($a5)
.L0da1e9f4:
    ld	$s2,0($sp)
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 330
    jr	$ra
    addiu	$sp,$sp,48
.L0da1ea08:
    # Line 292
    sw	$s1,232($s0)
    # Line 293
    lw	$t8,28220($s3)
    b	.L0da1e940
    sw	$t8,244($s0)
.L0da1ea18:
    # Line 296
    sw	$a0,232($s0)
    # Line 297
    lw	$t9,28220($s3)
    # Line 298
    b	.L0da1e940
    # Line 297
    sw	$t9,244($s0)
.L0da1ea28:
    # Line 300
    sw	$a1,232($s0)
    # Line 301
    lw	$ra,28220($s3)
    # Line 302
    b	.L0da1e940
    # Line 301
    sw	$ra,244($s0)
.L0da1ea38:
    # Line 304
    sw	$s1,232($s0)
    # Line 305
    lw	$at,28224($s3)
    # Line 306
    b	.L0da1e940
    # Line 305
    sw	$at,244($s0)
.L0da1ea48:
    # Line 308
    sw	$a0,232($s0)
    # Line 309
    lw	$v0,28224($s3)
    # Line 310
    b	.L0da1e940
    # Line 309
    sw	$v0,244($s0)
.L0da1ea58:
    # Line 312
    sw	$a1,232($s0)
    # Line 313
    lw	$v1,28224($s3)
    # Line 314
    b	.L0da1e940
    # Line 313
    sw	$v1,244($s0)
.end InitTextureMachine

# Function: __glInitTextureState
# Declared: Line 332 (Source lines: 333-427)
# Address: 0x0da1ea70 - 0x0da1efa0 (Size: 1328 bytes, Frame: 144)
.globl __glInitTextureState
.ent __glInitTextureState
__glInitTextureState:
    # Line 346
    lw	$a2,2484($a0)
    # Line 339
    lw	$v1,3604($a0)
    # Line 333
    addiu	$sp,$sp,-144
    # Line 341
    lw	$a1,3732($a0)
    sd	$a1,112($sp)
    # Line 339
    sd	$v1,104($sp)
    # Line 333
    sd	$a0,120($sp)
    sd	$s0,32($sp)
    # Line 340
    lw	$a4,3608($a0)
    # Line 343
    lwc1	$f0,3544($a0)
    # Line 333
    lui	$at,0x3
    sd	$gp,96($sp)
    addiu	$at,$at,8988
    # Line 343
    swc1	$f0,236($a0)
    # Line 346
    blez	$a4,.L0da1eb0c
    # Line 333
    addu	$gp,$t9,$at
    andi	$a7,$a4,0x3
    # Line 346
    sd	$zero,88($sp)
    beqz	$a7,.L0da1eadc
    li	$a6,8448
.L0da1eac0:
    # Line 347
    addiu	$a2,$a2,36
    addiu	$a7,$a7,-1
    ld	$a3,88($sp)
    # Line 348
    sw	$a6,-36($a2)
    # Line 347
    addiu	$a3,$a3,1
    bnez	$a7,.L0da1eac0
    sd	$a3,88($sp)
.L0da1eadc:
    sra	$a5,$a4,0x2
    beqz	$a5,.L0da1eb0c
    ld	$a3,88($sp)
    nop
    nop
.L0da1eaf0:
    addiu	$a2,$a2,144
    # Line 348
    sw	$a6,-36($a2)
    sw	$a6,-72($a2)
    # Line 347
    addiu	$a3,$a3,4
    # Line 348
    sw	$a6,-108($a2)
    # Line 347
    bne	$a4,$a3,.L0da1eaf0
    # Line 348
    sw	$a6,-144($a2)
.L0da1eb0c:
    # Line 353
    ld	$a7,120($sp)
    ld	$a6,104($sp)
    lw	$s0,28196($a7)
    # Line 352
    lw	$a7,2480($a7)
    # Line 353
    blez	$a6,.L0da1eebc
    sd	$a7,136($sp)
    sd	$zero,88($sp)
    sdc1	$f20,0($sp)
    lwc1	$f20,_lit_3f800000
    sd	$s8,24($sp)
    sd	$s2,40($sp)
    sd	$s6,56($sp)
    sd	$s5,80($sp)
    sd	$s4,64($sp)
    ld	$t9,136($sp)
    sd	$s3,48($sp)
    li	$s4,9729
    ld	$t8,112($sp)
    li	$s5,9986
    li	$s6,10497
    la	$s3,sub_0da20000
    li	$s2,1
    sd	$s1,72($sp)
    sll	$s1,$t8,0x2
    sd	$s7,16($sp)
    addiu	$s3,$s3,18352
    subu	$s1,$s1,$t8
    sd	$ra,8($sp)
    addiu	$t9,$t9,20
    sll	$s1,$s1,0x3
    sd	$t9,128($sp)
    addu	$s1,$s1,$t8
    b	.L0da1ec7c
    sll	$s1,$s1,0x2
    nop
    nop
    nop
.L0da1eba0:
    # Line 376
    lw	$at,0($s0)
    # Line 377
    ld	$ra,120($sp)
    # Line 376
    sw	$s2,232($at)
    # Line 377
    lw	$at,0($s0)
    lw	$ra,28220($ra)
    sw	$ra,244($at)
.L0da1ebb8:
    # Line 401
    ld	$v0,112($sp)
.L0da1ebbc:
    # Line 354
    addiu	$t9,$t9,1
    # Line 401
    blez	$v0,.L0da1ec54
    ld	$a4,112($sp)
    move	$a2,$zero
    move	$a5,$a4
    andi	$a4,$a4,0x3
    beqz	$a4,.L0da1ebf8
    sra	$a7,$a5,0x2
.L0da1ebdc:
    # Line 404
    lw	$a6,0($s0)
    lw	$a6,228($a6)
    addiu	$a4,$a4,-1
    addu	$a6,$a6,$a2
    # Line 403
    addiu	$a2,$a2,100
    bnez	$a4,.L0da1ebdc
    # Line 404
    sw	$s2,60($a6)
.L0da1ebf8:
    beqz	$a7,.L0da1ec54
    nop
.L0da1ec00:
    lw	$t3,0($s0)
    lw	$t3,228($t3)
    addu	$t3,$t3,$a2
    sw	$s2,60($t3)
    lw	$t2,0($s0)
    lw	$t2,228($t2)
    # Line 403
    addiu	$t3,$a2,100
    # Line 404
    addu	$t2,$t2,$t3
    sw	$s2,60($t2)
    lw	$t1,0($s0)
    lw	$t1,228($t1)
    # Line 403
    addiu	$t2,$a2,200
    # Line 404
    addu	$t1,$t1,$t2
    sw	$s2,60($t1)
    lw	$t0,0($s0)
    lw	$t0,228($t0)
    # Line 403
    addiu	$t1,$a2,300
    addiu	$a2,$a2,400
    # Line 404
    addu	$t0,$t0,$t1
    # Line 403
    bne	$a2,$s1,.L0da1ec00
    # Line 404
    sw	$s2,60($t0)
.L0da1ec54:
    # Line 354
    sd	$t9,88($sp)
    ld	$ra,136($sp)
    ld	$t8,104($sp)
    ld	$at,128($sp)
    addiu	$s0,$s0,4
    addiu	$ra,$ra,224
    sd	$ra,136($sp)
    addiu	$at,$at,224
    beq	$t8,$t9,.L0da1ef1c
    sd	$at,128($sp)
.L0da1ec7c:
    # Line 356
    ld	$v0,136($sp)
    # Line 361
    ld	$v1,120($sp)
    # Line 360
    sw	$s4,16($v0)
    # Line 359
    sw	$s5,12($v0)
    # Line 358
    sw	$s6,8($v0)
    # Line 357
    sw	$s6,4($v0)
    # Line 356
    sw	$s6,0($v0)
    # Line 361
    lwc1	$f4,3544($v1)
    swc1	$f4,168($v0)
    # Line 362
    lwc1	$f3,3544($v1)
    swc1	$f3,172($v0)
    # Line 363
    lwc1	$f2,3544($v1)
    swc1	$f2,176($v0)
    # Line 366
    move	$t9,$s3
    # Line 364
    lwc1	$f1,3544($v1)
    # Line 366
    ld	$a0,128($sp)
    bal __gllei_TexImage3DEXT
    # Line 364
    swc1	$f1,180($v0)
    # Line 368
    ld	$a3,136($sp)
    sw	$zero,216($a3)
    # Line 369
    swc1	$f20,220($a3)
    li	$a6,6
    # Line 372
    lw	$a5,0($s0)
    li	$t8,0x20
    addiu	$t1,$a3,28
    ld	$a4,120($sp)
    addiu	$a0,$a3,4
    addiu	$s7,$a3,8
    sw	$a4,0($a5)
    addiu	$s6,$a3,20
    addiu	$s3,$a3,24
    # Line 373
    lw	$a2,0($s0)
    addiu	$s4,$a3,16
    li	$a5,54
    ld	$t9,88($sp)
    move	$a4,$zero
    addiu	$a2,$a2,4
.L0da1ed10:
    addiu	$a6,$a6,-1
    addu	$a7,$a4,$a3
    addiu	$a5,$a5,-1
    addu	$t0,$a4,$a2
    lw	$a7,0($a7)
    addiu	$a4,$a4,4
    bnez	$a6,.L0da1ed10
    sw	$a7,0($t0)
    addiu	$s5,$a2,16
    addiu	$ra,$a2,24
    addiu	$t2,$a2,20
    addiu	$s8,$a2,12
    addiu	$t3,$a2,8
    addiu	$a7,$a2,28
    addiu	$t0,$a2,4
    addiu	$a6,$a3,12
.L0da1ed50:
    addu	$a1,$a4,$a3
    addu	$at,$a4,$a2
    lw	$a1,0($a1)
    addu	$v1,$a4,$a0
    sw	$a1,0($at)
    addu	$a1,$a4,$t0
    lw	$v1,0($v1)
    addu	$v0,$a4,$s7
    sw	$v1,0($a1)
    addu	$v1,$a4,$t3
    lw	$v0,0($v0)
    addu	$at,$a4,$a6
    sw	$v0,0($v1)
    addu	$v0,$a4,$s8
    lw	$at,0($at)
    addu	$a1,$a4,$s4
    sw	$at,0($v0)
    addu	$at,$a4,$s5
    lw	$a1,0($a1)
    addu	$v1,$a4,$s6
    sw	$a1,0($at)
    addu	$a1,$a4,$t2
    lw	$v1,0($v1)
    addu	$v0,$a4,$s3
    sw	$v1,0($a1)
    addu	$v1,$a4,$ra
    lw	$v0,0($v0)
    addiu	$a5,$a5,-8
    addu	$at,$a4,$t1
    sw	$v0,0($v1)
    addu	$v0,$a4,$a7
    lw	$at,0($at)
    addu	$a4,$a4,$t8
    bgtz	$a5,.L0da1ed50
    sw	$at,0($v0)
    li	$s4,9729
    li	$s5,9986
    la	$s3,sub_0da20000
    li	$s6,10497
    # Line 374
    li	$v0,5
    beqz	$t9,.L0da1eba0
    addiu	$s3,$s3,18352
    beq	$t9,$s2,.L0da1ee40
    li	$t8,2
    beq	$t9,$t8,.L0da1ee60
    li	$ra,3
    beq	$t9,$ra,.L0da1ee80
    li	$at,4
    beq	$t9,$at,.L0da1ee9c
    nop
    bne	$t9,$v0,.L0da1ebbc
    # Line 401
    ld	$v0,112($sp)
    # Line 396
    lw	$a1,0($s0)
    # Line 397
    ld	$v1,120($sp)
    move	$a0,$ra
    # Line 396
    sw	$a0,232($a1)
    # Line 397
    lw	$a0,0($s0)
    lw	$v1,28224($v1)
    # Line 398
    b	.L0da1ebb8
    # Line 397
    sw	$v1,244($a0)
.L0da1ee40:
    # Line 380
    lw	$a4,0($s0)
    # Line 381
    ld	$a2,120($sp)
    # Line 380
    li	$a3,2
    sw	$a3,232($a4)
    # Line 381
    lw	$a3,0($s0)
    lw	$a2,28220($a2)
    # Line 382
    b	.L0da1ebb8
    # Line 381
    sw	$a2,244($a3)
.L0da1ee60:
    # Line 384
    lw	$a7,0($s0)
    # Line 385
    ld	$a5,120($sp)
    # Line 384
    li	$a6,3
    sw	$a6,232($a7)
    # Line 385
    lw	$a6,0($s0)
    lw	$a5,28220($a5)
    # Line 386
    b	.L0da1ebb8
    # Line 385
    sw	$a5,244($a6)
.L0da1ee80:
    # Line 388
    lw	$t1,0($s0)
    # Line 389
    ld	$t0,120($sp)
    # Line 388
    sw	$s2,232($t1)
    # Line 389
    lw	$t1,0($s0)
    lw	$t0,28224($t0)
    # Line 390
    b	.L0da1ebb8
    # Line 389
    sw	$t0,244($t1)
.L0da1ee9c:
    # Line 392
    lw	$t8,0($s0)
    # Line 393
    ld	$t2,120($sp)
    # Line 392
    li	$t3,2
    sw	$t3,232($t8)
    # Line 393
    lw	$t3,0($s0)
    lw	$t2,28224($t2)
    # Line 394
    b	.L0da1ebb8
    # Line 393
    sw	$t2,244($t3)
.L0da1eebc:
    # Line 427
    ld	$gp,96($sp)
    # Line 426
    ld	$t9,120($sp)
    # Line 427
    ld	$s0,32($sp)
    # Line 354
    li	$v0,1
    # Line 426
    sb	$v0,2523($t9)
    # Line 425
    sb	$v0,2522($t9)
    # Line 424
    sb	$v0,2521($t9)
    # Line 423
    sb	$v0,2520($t9)
    # Line 409
    li	$at,9216
    # Line 416
    sw	$at,2356($t9)
    # Line 415
    sw	$at,2232($t9)
    # Line 412
    sw	$at,2108($t9)
    # Line 410
    lwc1	$f5,3544($t9)
    # Line 409
    sw	$at,1984($t9)
    # Line 421
    swc1	$f5,2500($t9)
    # Line 420
    swc1	$f5,2496($t9)
    # Line 419
    swc1	$f5,2492($t9)
    # Line 418
    swc1	$f5,2488($t9)
    # Line 414
    swc1	$f5,2132($t9)
    # Line 413
    swc1	$f5,2116($t9)
    # Line 411
    swc1	$f5,2004($t9)
    # Line 427
    addiu	$sp,$sp,144
    jr	$ra
    # Line 410
    swc1	$f5,1988($t9)
.L0da1ef1c:
    # Line 427
    ld	$gp,96($sp)
    ld	$s0,32($sp)
    ld	$s1,72($sp)
    ld	$s3,48($sp)
    ld	$s4,64($sp)
    ld	$s5,80($sp)
    ld	$s6,56($sp)
    ld	$s7,16($sp)
    ld	$s8,24($sp)
    # Line 426
    ld	$v1,120($sp)
    # Line 427
    ldc1	$f20,0($sp)
    # Line 409
    li	$a0,9216
    # Line 416
    sw	$a0,2356($v1)
    # Line 415
    sw	$a0,2232($v1)
    # Line 412
    sw	$a0,2108($v1)
    # Line 409
    sw	$a0,1984($v1)
    # Line 426
    sb	$s2,2523($v1)
    # Line 425
    sb	$s2,2522($v1)
    # Line 424
    sb	$s2,2521($v1)
    # Line 423
    sb	$s2,2520($v1)
    # Line 427
    ld	$s2,40($sp)
    # Line 410
    lwc1	$f6,3544($v1)
    # Line 427
    ld	$ra,8($sp)
    # Line 421
    swc1	$f6,2500($v1)
    # Line 420
    swc1	$f6,2496($v1)
    # Line 419
    swc1	$f6,2492($v1)
    # Line 418
    swc1	$f6,2488($v1)
    # Line 414
    swc1	$f6,2132($v1)
    # Line 413
    swc1	$f6,2116($v1)
    # Line 411
    swc1	$f6,2004($v1)
    # Line 427
    addiu	$sp,$sp,144
    jr	$ra
    # Line 410
    swc1	$f6,1988($v1)
.end __glInitTextureState

# Function: __glFreeTextureState
# Declared: Line 429 (Source lines: 430-467)
# Address: 0x0da1efa0 - 0x0da1f154 (Size: 436 bytes, Frame: 208)
.globl __glFreeTextureState
.ent __glFreeTextureState
__glFreeTextureState:
    # Line 430
    addiu	$sp,$sp,-80
    sd	$s5,8($sp)
    # Line 438
    lw	$s5,3732($a0)
    # Line 430
    sd	$s2,32($sp)
    # Line 431
    lw	$s2,28196($a0)
    sd	$s0,48($sp)
    # Line 430
    sd	$s6,16($sp)
    # Line 439
    lw	$s6,3604($a0)
    # Line 430
    sd	$s3,24($sp)
    lui	$at,0x3
    move	$s3,$a0
    sd	$ra,40($sp)
    addiu	$at,$at,7660
    sd	$gp,0($sp)
    # Line 439
    blez	$s6,.L0da1f098
    # Line 430
    addu	$gp,$t9,$at
    sd	$s1,64($sp)
    # Line 439
    sll	$s1,$s5,0x2
    subu	$s1,$s1,$s5
    sd	$s4,56($sp)
    move	$s4,$zero
    sll	$s1,$s1,0x3
    addu	$s1,$s1,$s5
    b	.L0da1f068
    sll	$s1,$s1,0x2
    nop
    nop
    nop
.L0da1f010:
    # Line 442
    lw	$a1,0($s2)
    move	$s0,$zero
    lw	$a1,228($a1)
    # Line 445
    addu	$a3,$s0,$a1
.L0da1f020:
    lw	$a3,0($a3)
    beqz	$a3,.L0da1f044
    nop
    # Line 447
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    move	$a1,$a3
    lw	$a1,0($s2)
    lw	$a1,228($a1)
.L0da1f044:
    # Line 444
    addiu	$s0,$s0,100
    bne	$s0,$s1,.L0da1f020
    # Line 445
    addu	$a3,$s0,$a1
.L0da1f050:
    # Line 449
    lw	$t9,12($s3)
    jalr	$t9
    move	$a0,$s3
    # Line 440
    addiu	$s4,$s4,1
    beq	$s6,$s4,.L0da1f090
    addiu	$s2,$s2,4
.L0da1f068:
    # Line 442
    # lw $t9, -23772($gp) # &__glBindTexture
    move	$a0,$s3
    move	$a1,$s4
    jal	__glBindTexture
    move	$a2,$zero
    bgtz	$s5,.L0da1f010
    nop
    # Line 444
    lw	$a1,0($s2)
    b	.L0da1f050
    lw	$a1,228($a1)
.L0da1f090:
    ld	$s4,56($sp)
    ld	$s1,64($sp)
.L0da1f098:
    # Line 451
    lw	$a4,28232($s3)
    lw	$a3,8($a4)
    addiu	$a3,$a3,-1
    sw	$a3,8($a4)
    lw	$a1,28232($s3)
    lw	$a2,8($a1)
    beqz	$a2,.L0da1f144
    # Line 453
    nop	# was lw $t9, -25408($gp) # &__glNamesFreeArray
    # Line 457
    lw	$t9,12($s3)
.L0da1f0bc:
    ld	$s0,48($sp)
    lw	$a1,28196($s3)
    move	$a0,$s3
    jal	__glNamesFreeArray
    # Line 455
    sw	$zero,28232($s3)
    # Line 458
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,28200($s3)
    # Line 459
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,28204($s3)
    # Line 460
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,2480($s3)
    # Line 461
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    lw	$a1,2484($s3)
    # Line 467
    ld	$gp,0($sp)
    ld	$s2,32($sp)
    # Line 466
    sw	$zero,2484($s3)
    # Line 465
    sw	$zero,2480($s3)
    # Line 464
    sw	$zero,28204($s3)
    # Line 463
    sw	$zero,28200($s3)
    # Line 462
    sw	$zero,28196($s3)
    ld	$ra,40($sp)
    # Line 467
    ld	$s3,24($sp)
    ld	$s5,8($sp)
    ld	$s6,16($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da1f144:
    # Line 453
    jalr	$t9
    move	$a0,$s3
    b	.L0da1f0bc
    # Line 457
    lw	$t9,12($s3)
.end __glFreeTextureState

# Function: __glim_TexGenfv
# Declared: Line 471 (Source lines: 472-527)
# Address: 0x0da1f160 - 0x0da1f370 (Size: 528 bytes, Frame: 192)
.globl __glim_TexGenfv
.ent __glim_TexGenfv
__glim_TexGenfv:
    # Line 472
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 476
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 472
    lui	$v1,0x3
    sd	$ra,48($sp)
    addiu	$v1,$v1,7212
    sd	$gp,32($sp)
    # Line 476
    beq	$at,$v0,.L0da1f340
    # Line 472
    addu	$gp,$t9,$v1
    # Line 478
    li	$a3,8192
    beq	$a0,$a3,.L0da1f298
    # Line 479
    addiu	$a4,$s0,1984
    # Line 478
    li	$a4,8193
    beq	$a0,$a4,.L0da1f2a0
    li	$a5,8194
    beq	$a0,$a5,.L0da1f2f4
    # Line 481
    addiu	$a4,$s0,2232
    # Line 478
    li	$a6,8195
    beq	$a0,$a6,.L0da1f1d0
    # Line 482
    addiu	$a4,$s0,2356
    # Line 484
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f28c
    ld	$ra,48($sp)
.L0da1f1d0:
    # Line 487
    li	$a7,9472
.L0da1f1d4:
    beq	$a1,$a7,.L0da1f2a8
    li	$t0,9473
    beq	$a1,$t0,.L0da1f2fc
    li	$t1,9474
    beq	$a1,$t1,.L0da1f200
    # Line 523
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f28c
    ld	$ra,48($sp)
.L0da1f200:
    # Line 514
    lwc1	$f3,0($a2)
    swc1	$f3,0($sp)
    lwc1	$f2,4($a2)
    swc1	$f2,4($sp)
    lwc1	$f1,8($a2)
    swc1	$f1,8($sp)
    lwc1	$f0,12($a2)
    swc1	$f0,12($sp)
    # Line 515
    lw	$a5,29660($s0)
    lbu	$t2,268($a5)
    beqz	$t2,.L0da1f250
    nop
    # Line 517
    lw	$t9,11900($s0)
    sd	$a5,16($sp)
    sd	$a4,40($sp)
    move	$a0,$s0
    jalr	$t9
    ld	$a1,16($sp)
    ld	$a4,40($sp)
    ld	$a5,16($sp)
.L0da1f250:
    # Line 519
    lw	$t9,168($a5)
    addiu	$a2,$a5,88
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$a4,4
.L0da1f264:
    # Line 526
    li	$t8,2
    sw	$t8,4120($zero)
    lw	$t3,11756($s0)
    ld	$ra,48($sp)
    # Line 527
    ld	$gp,32($sp)
    # Line 526
    ori	$t3,$t3,0x1
    sw	$t3,11756($s0)
    # Line 527
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da1f28c:
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da1f298:
    b	.L0da1f1d4
    # Line 487
    li	$a7,9472
.L0da1f2a0:
    # Line 480
    b	.L0da1f1d0
    addiu	$a4,$s0,2108
.L0da1f2a8:
    # Line 489
    lwc1	$f4,0($a2)
    trunc.l.s	$f4,$f4
    dmfc1	$a1,$f4
    # Line 495
    li	$a5,8194
    # Line 489
    li	$t9,9216
    sll	$a1,$a1,0x0
    li	$a3,9218
    li	$a2,9217
    beq	$a1,$t9,.L0da1f338
    # Line 495
    li	$a6,8195
    # Line 489
    beq	$a1,$a2,.L0da1f338
    nop
    beq	$a1,$a3,.L0da1f320
    # Line 502
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f28c
    ld	$ra,48($sp)
.L0da1f2f4:
    # Line 481
    b	.L0da1f1d4
    # Line 487
    li	$a7,9472
.L0da1f2fc:
    # Line 507
    lwc1	$f8,0($a2)
    swc1	$f8,20($a4)
    # Line 508
    lwc1	$f7,4($a2)
    swc1	$f7,24($a4)
    # Line 509
    lwc1	$f6,8($a2)
    swc1	$f6,28($a4)
    # Line 510
    lwc1	$f5,12($a2)
    # Line 511
    b	.L0da1f264
    # Line 510
    swc1	$f5,32($a4)
.L0da1f320:
    # Line 495
    beq	$a0,$a5,.L0da1f35c
    # Line 496
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 495
    beq	$a0,$a6,.L0da1f35c
    # Line 496
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 500
    b	.L0da1f264
    # Line 499
    sw	$a1,0($a4)
.L0da1f338:
    b	.L0da1f264
    # Line 492
    sw	$a1,0($a4)
.L0da1f340:
    # Line 476
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da1f28c
    ld	$ra,48($sp)
    # Line 496
    # lw $t9, -26452($gp) # &__glSetError
.L0da1f35c:
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f28c
    ld	$ra,48($sp)
.end __glim_TexGenfv

# Function: __glim_TexGenf
# Declared: Line 529 (Source lines: 530-540)
# Address: 0x0da1f370 - 0x0da1f3c4 (Size: 84 bytes, Frame: 48)
.globl __glim_TexGenf
.ent __glim_TexGenf
__glim_TexGenf:
    # Line 530
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 532
    li	$at,9472
    # Line 530
    lui	$v0,0x3
    sd	$ra,8($sp)
    addiu	$v0,$v0,6684
    sd	$gp,0($sp)
    # Line 532
    beq	$a1,$at,.L0da1f3b0
    # Line 530
    addu	$gp,$t9,$v0
    # Line 537
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0da1f3a4:
    # Line 540
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da1f3b0:
    # Line 534
    # lw $t9, -24424($gp) # &__glim_TexGenfv
    bal __glim_TexGenfv
    addiu	$a2,$sp,32
    b	.L0da1f3a4
    ld	$ra,8($sp)
.end __glim_TexGenf

# Function: __glim_TexGendv
# Declared: Line 542 (Source lines: 543-598)
# Address: 0x0da1f3d0 - 0x0da1f600 (Size: 560 bytes, Frame: 192)
.globl __glim_TexGendv
.ent __glim_TexGendv
__glim_TexGendv:
    # Line 543
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 547
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 543
    lui	$v1,0x3
    sd	$ra,48($sp)
    addiu	$v1,$v1,6588
    sd	$gp,32($sp)
    # Line 547
    beq	$at,$v0,.L0da1f5d0
    # Line 543
    addu	$gp,$t9,$v1
    # Line 549
    li	$a3,8192
    beq	$a0,$a3,.L0da1f518
    # Line 550
    addiu	$a4,$s0,1984
    # Line 549
    li	$a4,8193
    beq	$a0,$a4,.L0da1f520
    li	$a5,8194
    beq	$a0,$a5,.L0da1f574
    # Line 552
    addiu	$a4,$s0,2232
    # Line 549
    li	$a6,8195
    beq	$a0,$a6,.L0da1f43c
    # Line 555
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f50c
    ld	$ra,48($sp)
.L0da1f43c:
    # Line 553
    addiu	$a4,$s0,2356
.L0da1f440:
    # Line 558
    li	$a7,9472
.L0da1f444:
    beq	$a1,$a7,.L0da1f528
    li	$t0,9473
    beq	$a1,$t0,.L0da1f57c
    li	$t1,9474
    beq	$a1,$t1,.L0da1f470
    # Line 594
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f50c
    ld	$ra,48($sp)
.L0da1f470:
    # Line 585
    ldc1	$f3,0($a2)
    cvt.s.d	$f3,$f3
    swc1	$f3,0($sp)
    ldc1	$f2,8($a2)
    cvt.s.d	$f2,$f2
    swc1	$f2,4($sp)
    ldc1	$f1,16($a2)
    cvt.s.d	$f1,$f1
    swc1	$f1,8($sp)
    ldc1	$f0,24($a2)
    cvt.s.d	$f0,$f0
    swc1	$f0,12($sp)
    # Line 586
    lw	$a5,29660($s0)
    lbu	$t2,268($a5)
    beqz	$t2,.L0da1f4d0
    nop
    # Line 588
    lw	$t9,11900($s0)
    sd	$a5,16($sp)
    sd	$a4,40($sp)
    move	$a0,$s0
    jalr	$t9
    ld	$a1,16($sp)
    ld	$a4,40($sp)
    ld	$a5,16($sp)
.L0da1f4d0:
    # Line 590
    lw	$t9,168($a5)
    addiu	$a2,$a5,88
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$a4,4
.L0da1f4e4:
    # Line 597
    li	$t8,2
    sw	$t8,4120($zero)
    lw	$t3,11756($s0)
    ld	$ra,48($sp)
    # Line 598
    ld	$gp,32($sp)
    # Line 597
    ori	$t3,$t3,0x1
    sw	$t3,11756($s0)
    # Line 598
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da1f50c:
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da1f518:
    b	.L0da1f444
    # Line 558
    li	$a7,9472
.L0da1f520:
    # Line 551
    b	.L0da1f440
    addiu	$a4,$s0,2108
.L0da1f528:
    # Line 560
    ldc1	$f4,0($a2)
    trunc.l.d	$f4,$f4
    dmfc1	$a1,$f4
    # Line 566
    li	$a5,8194
    # Line 560
    li	$t9,9216
    sll	$a1,$a1,0x0
    li	$a3,9218
    li	$a2,9217
    beq	$a1,$t9,.L0da1f5c8
    # Line 566
    li	$a6,8195
    # Line 560
    beq	$a1,$a2,.L0da1f5c8
    nop
    beq	$a1,$a3,.L0da1f5b0
    # Line 573
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f50c
    ld	$ra,48($sp)
.L0da1f574:
    # Line 552
    b	.L0da1f444
    # Line 558
    li	$a7,9472
.L0da1f57c:
    # Line 578
    ldc1	$f8,0($a2)
    cvt.s.d	$f8,$f8
    swc1	$f8,20($a4)
    # Line 579
    ldc1	$f7,8($a2)
    cvt.s.d	$f7,$f7
    swc1	$f7,24($a4)
    # Line 580
    ldc1	$f6,16($a2)
    cvt.s.d	$f6,$f6
    swc1	$f6,28($a4)
    # Line 581
    ldc1	$f5,24($a2)
    cvt.s.d	$f5,$f5
    # Line 582
    b	.L0da1f4e4
    # Line 581
    swc1	$f5,32($a4)
.L0da1f5b0:
    # Line 566
    beq	$a0,$a5,.L0da1f5ec
    # Line 567
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 566
    beq	$a0,$a6,.L0da1f5ec
    # Line 567
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 571
    b	.L0da1f4e4
    # Line 570
    sw	$a1,0($a4)
.L0da1f5c8:
    b	.L0da1f4e4
    # Line 563
    sw	$a1,0($a4)
.L0da1f5d0:
    # Line 547
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da1f50c
    ld	$ra,48($sp)
    # Line 567
    # lw $t9, -26452($gp) # &__glSetError
.L0da1f5ec:
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f50c
    ld	$ra,48($sp)
.end __glim_TexGendv

# Function: __glim_TexGend
# Declared: Line 600 (Source lines: 601-611)
# Address: 0x0da1f600 - 0x0da1f654 (Size: 84 bytes, Frame: 48)
.globl __glim_TexGend
.ent __glim_TexGend
__glim_TexGend:
    # Line 601
    addiu	$sp,$sp,-48
    sdc1	$f14,32($sp)
    # Line 603
    li	$at,9472
    # Line 601
    lui	$v0,0x3
    sd	$ra,8($sp)
    addiu	$v0,$v0,6028
    sd	$gp,0($sp)
    # Line 603
    beq	$a1,$at,.L0da1f640
    # Line 601
    addu	$gp,$t9,$v0
    # Line 608
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0da1f634:
    # Line 611
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da1f640:
    # Line 605
    # lw $t9, -24416($gp) # &__glim_TexGendv
    bal __glim_TexGendv
    addiu	$a2,$sp,32
    b	.L0da1f634
    ld	$ra,8($sp)
.end __glim_TexGend

# Function: __glim_TexGeniv
# Declared: Line 613 (Source lines: 614-669)
# Address: 0x0da1f660 - 0x0da1f8a4 (Size: 580 bytes, Frame: 192)
.globl __glim_TexGeniv
.ent __glim_TexGeniv
__glim_TexGeniv:
    # Line 614
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 618
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 614
    lui	$v1,0x3
    sd	$ra,48($sp)
    addiu	$v1,$v1,5932
    sd	$gp,32($sp)
    # Line 618
    beq	$at,$v0,.L0da1f874
    # Line 614
    addu	$gp,$t9,$v1
    # Line 620
    li	$a3,8192
    beq	$a0,$a3,.L0da1f7b8
    # Line 621
    addiu	$a4,$s0,1984
    # Line 620
    li	$a4,8193
    beq	$a0,$a4,.L0da1f7c0
    li	$a5,8194
    beq	$a0,$a5,.L0da1f808
    # Line 623
    addiu	$a4,$s0,2232
    # Line 620
    li	$a6,8195
    beq	$a0,$a6,.L0da1f6d0
    # Line 624
    addiu	$a4,$s0,2356
    # Line 626
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f7ac
    ld	$ra,48($sp)
.L0da1f6d0:
    # Line 629
    li	$a7,9472
.L0da1f6d4:
    beq	$a1,$a7,.L0da1f7c8
    li	$t0,9473
    beq	$a1,$t0,.L0da1f810
    li	$t1,9474
    beq	$a1,$t1,.L0da1f700
    # Line 665
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f7ac
    ld	$ra,48($sp)
.L0da1f700:
    # Line 656
    lw	$ra,0($a2)
    mtc1	$ra,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,0($sp)
    lw	$t9,4($a2)
    mtc1	$t9,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,4($sp)
    lw	$t8,8($a2)
    mtc1	$t8,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,8($sp)
    lw	$t3,12($a2)
    mtc1	$t3,$f0
    cvt.s.w	$f0,$f0
    swc1	$f0,12($sp)
    # Line 657
    lw	$a5,29660($s0)
    lbu	$t2,268($a5)
    beqz	$t2,.L0da1f770
    nop
    # Line 659
    lw	$t9,11900($s0)
    sd	$a5,16($sp)
    sd	$a4,40($sp)
    move	$a0,$s0
    jalr	$t9
    ld	$a1,16($sp)
    ld	$a4,40($sp)
    ld	$a5,16($sp)
.L0da1f770:
    # Line 661
    lw	$t9,168($a5)
    addiu	$a2,$a5,88
    addiu	$a1,$sp,0
    jalr	$t9
    addiu	$a0,$a4,4
.L0da1f784:
    # Line 668
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$at,11756($s0)
    ld	$ra,48($sp)
    # Line 669
    ld	$gp,32($sp)
    # Line 668
    ori	$at,$at,0x1
    sw	$at,11756($s0)
    # Line 669
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da1f7ac:
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da1f7b8:
    b	.L0da1f6d4
    # Line 629
    li	$a7,9472
.L0da1f7c0:
    # Line 622
    b	.L0da1f6d0
    addiu	$a4,$s0,2108
.L0da1f7c8:
    # Line 631
    lw	$a1,0($a2)
    # Line 637
    li	$t1,8194
    # Line 631
    li	$v1,9216
    li	$a3,9218
    li	$a2,9217
    beq	$a1,$v1,.L0da1f86c
    # Line 637
    li	$t2,8195
    # Line 631
    beq	$a1,$a2,.L0da1f86c
    nop
    beq	$a1,$a3,.L0da1f854
    # Line 644
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f7ac
    ld	$ra,48($sp)
.L0da1f808:
    # Line 623
    b	.L0da1f6d4
    # Line 629
    li	$a7,9472
.L0da1f810:
    # Line 649
    lw	$t0,0($a2)
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    swc1	$f7,20($a4)
    # Line 650
    lw	$a7,4($a2)
    mtc1	$a7,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,24($a4)
    # Line 651
    lw	$a6,8($a2)
    mtc1	$a6,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,28($a4)
    # Line 652
    lw	$a5,12($a2)
    mtc1	$a5,$f4
    cvt.s.w	$f4,$f4
    # Line 653
    b	.L0da1f784
    # Line 652
    swc1	$f4,32($a4)
.L0da1f854:
    # Line 637
    beq	$a0,$t1,.L0da1f890
    # Line 638
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 637
    beq	$a0,$t2,.L0da1f890
    # Line 638
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 642
    b	.L0da1f784
    # Line 641
    sw	$a1,0($a4)
.L0da1f86c:
    b	.L0da1f784
    # Line 634
    sw	$a1,0($a4)
.L0da1f874:
    # Line 618
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da1f7ac
    ld	$ra,48($sp)
    # Line 638
    # lw $t9, -26452($gp) # &__glSetError
.L0da1f890:
    ld	$s0,24($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1f7ac
    ld	$ra,48($sp)
.end __glim_TexGeniv

# Function: __glim_TexGeni
# Declared: Line 671 (Source lines: 672-682)
# Address: 0x0da1f8b0 - 0x0da1f904 (Size: 84 bytes, Frame: 48)
.globl __glim_TexGeni
.ent __glim_TexGeni
__glim_TexGeni:
    # Line 672
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    # Line 674
    li	$at,9472
    # Line 672
    lui	$v0,0x3
    sd	$ra,8($sp)
    addiu	$v0,$v0,5340
    sd	$gp,0($sp)
    # Line 674
    beq	$a1,$at,.L0da1f8f0
    # Line 672
    addu	$gp,$t9,$v0
    # Line 679
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0da1f8e4:
    # Line 682
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da1f8f0:
    # Line 676
    # lw $t9, -24408($gp) # &__glim_TexGeniv
    bal __glim_TexGeniv
    addiu	$a2,$sp,36
    b	.L0da1f8e4
    ld	$ra,8($sp)
.end __glim_TexGeni

# Function: __glTexGendv_size
# Declared: Line 684 (Source lines: 686-693)
# Address: 0x0da1f910 - 0x0da1f94c (Size: 60 bytes, Frame: 0)
.globl __glTexGendv_size
.ent __glTexGendv_size
__glTexGendv_size:
    # Line 686
    li	$at,9472
    li	$v1,9474
    beq	$a0,$at,.L0da1f944
    # Line 688
    li	$v0,1
    # Line 686
    li	$v0,9473
    beq	$a0,$v0,.L0da1f93c
    nop
    beq	$a0,$v1,.L0da1f93c
    # Line 693
    li	$v0,-1
    # Line 688
    jr	$ra
    nop
.L0da1f93c:
    jr	$ra
    # Line 691
    li	$v0,4
.L0da1f944:
    # Line 688
    jr	$ra
    nop
.end __glTexGendv_size

# Function: __glTexGenfv_size
# Declared: Line 697 (Source lines: 698-699)
# Address: 0x0da1f950 - 0x0da1f984 (Size: 52 bytes, Frame: 16)
.globl __glTexGenfv_size
.ent __glTexGenfv_size
__glTexGenfv_size:
    # Line 698
    lui	$at,0x3
    addiu	$sp,$sp,-16
    addiu	$at,$at,5180
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 699
    # lw $t9, -24400($gp) # &__glTexGendv_size
    # Line 698
    sd	$ra,0($sp)
    # Line 699
    bal __glTexGendv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glTexGenfv_size

# Function: __glTexGeniv_size
# Declared: Line 702 (Source lines: 703-704)
# Address: 0x0da1f990 - 0x0da1f9c4 (Size: 52 bytes, Frame: 16)
.globl __glTexGeniv_size
.ent __glTexGeniv_size
__glTexGeniv_size:
    # Line 703
    lui	$at,0x3
    addiu	$sp,$sp,-16
    addiu	$at,$at,5116
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 704
    # lw $t9, -24400($gp) # &__glTexGendv_size
    # Line 703
    sd	$ra,0($sp)
    # Line 704
    bal __glTexGendv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glTexGeniv_size

# Function: __glim_TexParameterfv
# Declared: Line 709 (Source lines: 710-846)
# Address: 0x0da1f9d0 - 0x0da1ff00 (Size: 1328 bytes, Frame: 192)
.globl __glim_TexParameterfv
.ent __glim_TexParameterfv
__glim_TexParameterfv:
    # Line 710
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$s0,32($sp)
    # Line 715
    lw	$s0,4112($zero)
    # Line 710
    sd	$s1,0($sp)
    move	$s1,$a1
    # Line 715
    lw	$at,4120($zero)
    # Line 710
    sd	$s2,40($sp)
    # Line 715
    li	$v0,1
    # Line 710
    lui	$v1,0x3
    move	$s2,$a0
    sd	$ra,56($sp)
    addiu	$v1,$v1,5052
    sd	$gp,48($sp)
    # Line 715
    beq	$at,$v0,.L0da1fcec
    # Line 710
    addu	$gp,$t9,$v1
    # Line 717
    # lw $t9, -24468($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    bal __glLookUpTextureParams
    move	$a1,$s2
    # Line 718
    # lw $t9, -24460($gp) # &__glLookUpTexture
    move	$a0,$s0
    # Line 717
    sd	$v0,24($sp)
    # Line 718
    bal __glLookUpTexture
    move	$a1,$s2
    ld	$a0,24($sp)
    beqz	$a0,.L0da1fc04
    sd	$v0,8($sp)
    # Line 725
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    move	$a1,$s2
    lw	$a1,0($v0)
    slti	$a1,$a1,3
    beqz	$a1,.L0da1fcd0
    # Line 731
    li	$a0,0x8072
    sltu	$a2,$s1,$a0
    bnez	$a2,.L0da1faf4
    sltu	$a3,$a0,$s1
    bnez	$a3,.L0da1fb4c
    li	$a0,0x817a
    # Line 767
    ld	$a1,16($sp)
    lwc1	$f0,0($a1)
    trunc.l.s	$f0,$f0
    dmfc1	$a0,$f0
    li	$a4,10496
    sll	$a0,$a0,0x0
    beq	$a0,$a4,.L0da1faa8
    ld	$s1,0($sp)
    li	$a2,10497
    beq	$a0,$a2,.L0da1faa8
    li	$a3,0x812f
    bne	$a0,$a3,.L0da1fc08
    # Line 722
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da1faa8:
    # Line 771
    ld	$a5,24($sp)
    ld	$a4,8($sp)
    sw	$a0,8($a5)
    sw	$a0,12($a4)
.L0da1fab8:
    # Line 846
    ld	$gp,48($sp)
    # Line 845
    li	$a7,2
    sw	$a7,4120($zero)
    lw	$a6,11756($s0)
    ld	$ra,56($sp)
    # Line 846
    ld	$s2,40($sp)
    # Line 845
    ori	$a6,$a6,0x1
    sw	$a6,11756($s0)
    # Line 846
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da1fae4:
    ld	$s2,40($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da1faf4:
    # Line 731
    sltiu	$t0,$s1,10242
    bnez	$t0,.L0da1fba0
    sltiu	$t3,$s1,10240
    sltiu	$t1,$s1,10243
    beqz	$t1,.L0da1fc7c
    # Line 745
    ld	$a1,16($sp)
    lwc1	$f1,0($a1)
    trunc.l.s	$f1,$f1
    dmfc1	$a0,$f1
    li	$t2,10496
    sll	$a0,$a0,0x0
    beq	$a0,$t2,.L0da1fb38
    ld	$s1,0($sp)
    li	$a2,10497
    beq	$a0,$a2,.L0da1fb38
    li	$a3,0x812f
    bne	$a0,$a3,.L0da1fc04
.L0da1fb38:
    # Line 749
    ld	$a5,24($sp)
    ld	$a4,8($sp)
    sw	$a0,0($a5)
    b	.L0da1fab8
    sw	$a0,4($a4)
.L0da1fb4c:
    # Line 731
    sltu	$a6,$s1,$a0
    bnez	$a6,.L0da1fc20
    sltu	$a7,$a0,$s1
    bnez	$a7,.L0da1fd08
    # Line 739
    ld	$t2,16($sp)
    ld	$t1,24($sp)
    lwc1	$f5,0($t2)
    ld	$t0,8($sp)
    swc1	$f5,168($t1)
    swc1	$f5,172($t0)
    # Line 740
    lwc1	$f4,4($t2)
    swc1	$f4,172($t1)
    swc1	$f4,176($t0)
    # Line 741
    lwc1	$f3,8($t2)
    swc1	$f3,176($t1)
    swc1	$f3,180($t0)
    # Line 742
    lwc1	$f2,12($t2)
    ld	$s1,0($sp)
    swc1	$f2,180($t1)
    # Line 743
    b	.L0da1fab8
    # Line 742
    swc1	$f2,184($t0)
.L0da1fba0:
    # Line 731
    bnez	$t3,.L0da1fbfc
    li	$a6,4100
    sltiu	$t8,$s1,10241
    beqz	$t8,.L0da1fdd4
    li	$a6,10241
    # Line 793
    ld	$a1,16($sp)
    lwc1	$f6,0($a1)
    trunc.l.s	$f6,$f6
    dmfc1	$a0,$f6
    li	$t9,9728
    sll	$a0,$a0,0x0
    beq	$a0,$t9,.L0da1fbe8
    ld	$s1,0($sp)
    li	$a2,9729
    beq	$a0,$a2,.L0da1fbec
    # Line 797
    ld	$a5,24($sp)
    # Line 793
    li	$a3,0x8146
    bne	$a0,$a3,.L0da1fc04
.L0da1fbe8:
    # Line 797
    ld	$a5,24($sp)
.L0da1fbec:
    ld	$a4,8($sp)
    sw	$a0,16($a5)
    b	.L0da1fab8
    sw	$a0,20($a4)
.L0da1fbfc:
    # Line 731
    beq	$s1,$a6,.L0da1fe30
    # Line 804
    nop	# was lw $t9, -25832($gp) # &__glClampColorf
.L0da1fc04:
    # Line 722
    # lw $t9, -26452($gp) # &__glSetError
.L0da1fc08:
    ld	$s1,0($sp)
    ld	$s0,32($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da1fae4
    ld	$ra,56($sp)
.L0da1fc20:
    # Line 731
    li	$a0,0x8179
    sltu	$a7,$s1,$a0
    bnez	$a7,.L0da1fd60
    li	$a5,0x80bf
    sltu	$t0,$a0,$s1
    bnez	$t0,.L0da1fc04
    # Line 733
    ld	$t3,16($sp)
    ld	$t2,24($sp)
    lwc1	$f10,0($t3)
    ld	$t1,8($sp)
    swc1	$f10,184($t2)
    swc1	$f10,188($t1)
    # Line 734
    lwc1	$f9,4($t3)
    swc1	$f9,188($t2)
    swc1	$f9,192($t1)
    # Line 735
    lwc1	$f8,8($t3)
    swc1	$f8,192($t2)
    swc1	$f8,196($t1)
    # Line 736
    lwc1	$f7,12($t3)
    ld	$s1,0($sp)
    swc1	$f7,196($t2)
    # Line 737
    b	.L0da1fab8
    # Line 736
    swc1	$f7,200($t1)
.L0da1fc7c:
    # Line 731
    li	$a0,0x8066
    sltu	$t8,$s1,$a0
    bnez	$t8,.L0da1fd84
    li	$t1,10243
    sltu	$t9,$a0,$s1
    bnez	$t9,.L0da1fc04
    # Line 811
    nop	# was lw $t9, -24464($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    ld	$s1,0($sp)
    bal __glLookUpTextureTexobjs
    move	$a1,$s2
    # Line 812
    # lw $t9, -32688($gp) # &sub_0da20000
    ld	$at,16($sp)
    addiu	$t9,$t9,-6768
    lwc1	$f14,3544($s0)
    mtc1	$zero,$f13
    # Line 811
    move	$s2,$v0
    # Line 812
    bal __glLookUpTextureObject
    lwc1	$f12,0($at)
    # Line 814
    b	.L0da1fab8
    # Line 812
    swc1	$f0,4($s2)
.L0da1fcd0:
    # Line 727
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s1,0($sp)
    ld	$s0,32($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da1fae4
    ld	$ra,56($sp)
.L0da1fcec:
    # Line 715
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s1,0($sp)
    ld	$s0,32($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da1fae4
    ld	$ra,56($sp)
.L0da1fd08:
    # Line 731
    li	$a0,0x819b
    # Line 828
    li	$v0,0x819c
    # Line 731
    sltu	$ra,$s1,$a0
    li	$a4,0x819a
    # Line 828
    li	$a2,0x819d
    ld	$a1,16($sp)
    # Line 731
    bnez	$ra,.L0da1fe74
    sltu	$at,$a0,$s1
    bnez	$at,.L0da1fc04
    ld	$s1,0($sp)
    # Line 828
    lwc1	$f11,0($a1)
    trunc.l.s	$f11,$f11
    dmfc1	$a0,$f11
    sll	$a0,$a0,0x0
    beq	$a0,$v0,.L0da1fd50
    # Line 831
    ld	$a4,24($sp)
    # Line 828
    bne	$a0,$a2,.L0da1fc04
    # Line 831
    ld	$a4,24($sp)
.L0da1fd50:
    ld	$a3,8($sp)
    sw	$a0,204($a4)
    b	.L0da1fab8
    sw	$a0,208($a3)
.L0da1fd60:
    # Line 731
    bne	$s1,$a5,.L0da1fc04
    ld	$s1,0($sp)
    # Line 839
    ld	$t0,16($sp)
    ld	$a7,24($sp)
    lwc1	$f12,0($t0)
    # Line 840
    ld	$a6,8($sp)
    # Line 839
    swc1	$f12,208($a7)
    # Line 840
    b	.L0da1fab8
    # Line 839
    swc1	$f12,212($a6)
.L0da1fd84:
    # Line 760
    ld	$a4,8($sp)
    # Line 756
    li	$a3,0x812f
    li	$a2,10497
    # Line 731
    bne	$s1,$t1,.L0da1fc04
    # Line 760
    ld	$a5,24($sp)
    # Line 756
    ld	$a1,16($sp)
    lwc1	$f13,0($a1)
    trunc.l.s	$f13,$f13
    dmfc1	$a0,$f13
    li	$t2,10496
    sll	$a0,$a0,0x0
    beq	$a0,$t2,.L0da1fdc8
    ld	$s1,0($sp)
    beq	$a0,$a2,.L0da1fdc8
    nop
    bne	$a0,$a3,.L0da1fc08
    # Line 722
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da1fdc8:
    # Line 760
    sw	$a0,4($a5)
    b	.L0da1fab8
    sw	$a0,8($a4)
.L0da1fdd4:
    # Line 786
    ld	$t1,8($sp)
    # Line 731
    bne	$s1,$a6,.L0da1fc04
    # Line 786
    ld	$t2,24($sp)
    # Line 778
    ld	$a1,16($sp)
    lwc1	$f14,0($a1)
    trunc.l.s	$f14,$f14
    dmfc1	$a0,$f14
    sll	$a0,$a0,0x0
    sltiu	$a7,$a0,9985
    bnez	$a7,.L0da1feb4
    ld	$s1,0($sp)
    sltiu	$a2,$a0,9986
    bnez	$a2,.L0da1fee4
    sltiu	$a3,$a0,9987
    bnez	$a3,.L0da1fef0
    li	$t3,9986
    sltiu	$a4,$a0,9988
    bnez	$a4,.L0da1fee4
    li	$a5,0x8146
    beq	$a0,$a5,.L0da1fee4
    nop
    b	.L0da1fc08
    # Line 722
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da1fe30:
    # Line 804
    ld	$a1,24($sp)
    ld	$s1,0($sp)
    move	$a0,$s0
    ld	$a2,16($sp)
    jal	__glSetError
    addiu	$a1,$a1,152
    # Line 805
    ld	$a3,24($sp)
    ld	$a2,8($sp)
    lwc1	$f18,152($a3)
    swc1	$f18,156($a2)
    lwc1	$f17,156($a3)
    swc1	$f17,160($a2)
    lwc1	$f16,160($a3)
    swc1	$f16,164($a2)
    lwc1	$f15,164($a3)
    b	.L0da1fab8
    swc1	$f15,168($a2)
.L0da1fe74:
    # Line 731
    bne	$s1,$a4,.L0da1fc08
    # Line 722
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 817
    ld	$a1,16($sp)
    lwc1	$f19,0($a1)
    trunc.l.s	$f19,$f19
    dmfc1	$a0,$f19
    sll	$a0,$a0,0x0
    beqz	$a0,.L0da1fea0
    ld	$s1,0($sp)
    li	$a2,1
    bne	$a2,$a0,.L0da1fc04
.L0da1fea0:
    # Line 820
    ld	$a4,24($sp)
    ld	$a3,8($sp)
    sw	$a0,200($a4)
    b	.L0da1fab8
    sw	$a0,204($a3)
.L0da1feb4:
    # Line 778
    sltiu	$a5,$a0,9729
    bnez	$a5,.L0da1fedc
    li	$t0,9728
    sltiu	$a6,$a0,9730
    bnez	$a6,.L0da1fee4
    li	$a7,9984
    beq	$a0,$a7,.L0da1fee4
    nop
    b	.L0da1fc08
    # Line 722
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da1fedc:
    # Line 778
    bne	$a0,$t0,.L0da1fc08
    # Line 722
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da1fee4:
    # Line 786
    sw	$a0,12($t2)
    b	.L0da1fab8
    sw	$a0,16($t1)
.L0da1fef0:
    # Line 778
    beq	$a0,$t3,.L0da1fee4
    nop
    b	.L0da1fc08
    # Line 722
    nop	# was lw $t9, -26452($gp) # &__glSetError
.end __glim_TexParameterfv

# Function: __glim_TexParameterf
# Declared: Line 848 (Source lines: 849-865)
# Address: 0x0da1ff00 - 0x0da20008 (Size: 264 bytes, Frame: 48)
.globl __glim_TexParameterf
.ent __glim_TexParameterf
__glim_TexParameterf:
    # Line 849
    addiu	$sp,$sp,-48
    # Line 851
    li	$a3,0x8066
    # Line 849
    lui	$at,0x3
    # Line 851
    sltu	$v0,$a1,$a3
    li	$t2,0x8072
    # Line 849
    swc1	$f14,32($sp)
    addiu	$at,$at,3724
    sd	$gp,0($sp)
    # Line 851
    bnez	$v0,.L0da1ff60
    # Line 849
    addu	$gp,$t9,$at
    # Line 851
    sltu	$v0,$a3,$a1
    li	$a3,0x819a
    sltu	$a2,$a3,$a1
    sd	$ra,8($sp)
    beqz	$v0,.L0da1ff88
    sltu	$v1,$a1,$a3
    bnez	$v1,.L0da1ffd8
    li	$a3,0x819b
    beqz	$a2,.L0da1ff8c
    # Line 861
    nop	# was lw $t9, -24388($gp) # &__glim_TexParameterfv
    # Line 851
    beq	$a1,$a3,.L0da1ff8c
    # Line 861
    nop	# was lw $t9, -24388($gp) # &__glim_TexParameterfv
    b	.L0da1ffa8
    # Line 864
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da1ff60:
    # Line 851
    sltiu	$a4,$a1,10243
    sltiu	$a3,$a1,10242
    li	$a6,10240
    sltiu	$a7,$a1,10241
    li	$a5,10243
    bnez	$a3,.L0da1ffc0
    sd	$ra,8($sp)
    bnez	$a4,.L0da1ff8c
    # Line 861
    nop	# was lw $t9, -24388($gp) # &__glim_TexParameterfv
    # Line 851
    bne	$a1,$a5,.L0da1ffa4
.L0da1ff88:
    # Line 861
    nop	# was lw $t9, -24388($gp) # &__glim_TexParameterfv
.L0da1ff8c:
    bal __glim_TexParameterfv
    addiu	$a2,$sp,32
    b	.L0da1ffb0
    nop
.L0da1ff9c:
    # Line 851
    beq	$a1,$a6,.L0da1ff8c
    # Line 861
    nop	# was lw $t9, -24388($gp) # &__glim_TexParameterfv
.L0da1ffa4:
    # Line 864
    # lw $t9, -26452($gp) # &__glSetError
.L0da1ffa8:
    jal	__glSetError
    li	$a0,1280
.L0da1ffb0:
    ld	$ra,8($sp)
    # Line 865
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da1ffc0:
    # Line 851
    bnez	$a7,.L0da1ff9c
    nop
    bnez	$a3,.L0da1ff8c
    # Line 861
    nop	# was lw $t9, -24388($gp) # &__glim_TexParameterfv
    b	.L0da1ffa8
    # Line 864
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da1ffd8:
    # Line 851
    li	$a3,0x80bf
    sltu	$t0,$a1,$a3
    bnez	$t0,.L0da1fff8
    sltu	$t1,$a3,$a1
    beqz	$t1,.L0da1ff8c
    # Line 861
    nop	# was lw $t9, -24388($gp) # &__glim_TexParameterfv
    b	.L0da1ffa8
    # Line 864
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da1fff8:
    # Line 851
    beq	$a1,$t2,.L0da1ff8c
    # Line 861
    nop	# was lw $t9, -24388($gp) # &__glim_TexParameterfv
    b	.L0da1ffa8
    # Line 864
    nop	# was lw $t9, -26452($gp) # &__glSetError
.end __glim_TexParameterf

# Function: __glim_TexParameteriv
# Declared: Line 869 (Source lines: 870-1005)
# Address: 0x0da20010 - 0x0da20560 (Size: 1360 bytes, Frame: 192)
.globl __glim_TexParameteriv
.ent __glim_TexParameteriv
__glim_TexParameteriv:
    # Line 870
    addiu	$sp,$sp,-64
    sd	$a2,16($sp)
    sd	$s0,32($sp)
    # Line 875
    lw	$s0,4112($zero)
    # Line 870
    sd	$s1,0($sp)
    move	$s1,$a1
    # Line 875
    lw	$at,4120($zero)
    # Line 870
    sd	$s2,40($sp)
    # Line 875
    li	$v0,1
    # Line 870
    lui	$v1,0x3
    move	$s2,$a0
    sd	$ra,56($sp)
    addiu	$v1,$v1,3452
    sd	$gp,48($sp)
    # Line 875
    beq	$at,$v0,.L0da2036c
    # Line 870
    addu	$gp,$t9,$v1
    # Line 877
    # lw $t9, -24468($gp) # &__glLookUpTextureParams
    move	$a0,$s0
    bal __glLookUpTextureParams
    move	$a1,$s2
    # Line 878
    # lw $t9, -24460($gp) # &__glLookUpTexture
    move	$a0,$s0
    # Line 877
    sd	$v0,24($sp)
    # Line 878
    bal __glLookUpTexture
    move	$a1,$s2
    ld	$a0,24($sp)
    beqz	$a0,.L0da20244
    sd	$v0,8($sp)
    # Line 885
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    move	$a1,$s2
    lw	$a1,0($v0)
    slti	$a1,$a1,3
    beqz	$a1,.L0da20350
    # Line 891
    li	$a0,0x8072
    sltu	$a2,$s1,$a0
    bnez	$a2,.L0da20128
    sltu	$a3,$a0,$s1
    bnez	$a3,.L0da20174
    li	$a0,0x817a
    # Line 927
    ld	$a0,16($sp)
    lw	$a0,0($a0)
    li	$a4,10496
    beq	$a0,$a4,.L0da200dc
    ld	$s1,0($sp)
    li	$a1,10497
    beq	$a0,$a1,.L0da200e0
    # Line 931
    ld	$a4,24($sp)
    # Line 927
    li	$a2,0x812f
    bne	$a0,$a2,.L0da20244
.L0da200dc:
    # Line 931
    ld	$a4,24($sp)
.L0da200e0:
    ld	$a3,8($sp)
    sw	$a0,8($a4)
    sw	$a0,12($a3)
.L0da200ec:
    # Line 1005
    ld	$gp,48($sp)
    # Line 1004
    li	$a6,2
    sw	$a6,4120($zero)
    lw	$a5,11756($s0)
    ld	$ra,56($sp)
    # Line 1005
    ld	$s2,40($sp)
    # Line 1004
    ori	$a5,$a5,0x1
    sw	$a5,11756($s0)
    # Line 1005
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da20118:
    ld	$s2,40($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da20128:
    # Line 891
    sltiu	$a7,$s1,10242
    bnez	$a7,.L0da201ec
    sltiu	$t0,$s1,10243
    beqz	$t0,.L0da202e0
    # Line 905
    ld	$a0,16($sp)
    lw	$a0,0($a0)
    li	$t1,10496
    beq	$a0,$t1,.L0da20160
    ld	$s1,0($sp)
    li	$a1,10497
    beq	$a0,$a1,.L0da20164
    # Line 909
    ld	$a4,24($sp)
    # Line 905
    li	$a2,0x812f
    bne	$a0,$a2,.L0da20244
.L0da20160:
    # Line 909
    ld	$a4,24($sp)
.L0da20164:
    ld	$a3,8($sp)
    sw	$a0,0($a4)
    b	.L0da200ec
    sw	$a0,4($a3)
.L0da20174:
    # Line 891
    sltu	$a5,$s1,$a0
    bnez	$a5,.L0da20260
    sltu	$a6,$a0,$s1
    bnez	$a6,.L0da20388
    li	$a0,0x819b
    # Line 899
    ld	$t1,16($sp)
    lw	$t8,0($t1)
    mtc1	$t8,$f3
    cvt.s.w	$f3,$f3
    ld	$t0,24($sp)
    ld	$a7,8($sp)
    swc1	$f3,168($t0)
    swc1	$f3,172($a7)
    # Line 900
    lw	$t3,4($t1)
    mtc1	$t3,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,172($t0)
    swc1	$f2,176($a7)
    # Line 901
    lw	$t2,8($t1)
    mtc1	$t2,$f1
    cvt.s.w	$f1,$f1
    swc1	$f1,176($t0)
    swc1	$f1,180($a7)
    # Line 902
    lw	$t1,12($t1)
    mtc1	$t1,$f0
    cvt.s.w	$f0,$f0
    ld	$s1,0($sp)
    swc1	$f0,180($t0)
    # Line 903
    b	.L0da200ec
    # Line 902
    swc1	$f0,184($a7)
.L0da201ec:
    # Line 891
    sltiu	$t9,$s1,10240
    bnez	$t9,.L0da20238
    sltiu	$ra,$s1,10241
    beqz	$ra,.L0da20448
    # Line 953
    ld	$a0,16($sp)
    lw	$a0,0($a0)
    li	$at,9728
    beq	$a0,$at,.L0da20224
    ld	$s1,0($sp)
    li	$a1,9729
    beq	$a0,$a1,.L0da20224
    li	$a2,0x8146
    bne	$a0,$a2,.L0da20248
    # Line 882
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da20224:
    # Line 957
    ld	$a4,24($sp)
    ld	$a3,8($sp)
    sw	$a0,16($a4)
    b	.L0da200ec
    sw	$a0,20($a3)
.L0da20238:
    # Line 891
    li	$a5,4100
    beq	$s1,$a5,.L0da2049c
    # Line 964
    nop	# was lw $t9, -25820($gp) # &__glClampColori
.L0da20244:
    # Line 882
    # lw $t9, -26452($gp) # &__glSetError
.L0da20248:
    ld	$s1,0($sp)
    ld	$s0,32($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da20118
    ld	$ra,56($sp)
.L0da20260:
    # Line 891
    li	$a0,0x8179
    sltu	$a6,$s1,$a0
    bnez	$a6,.L0da203d0
    li	$a4,0x80bf
    sltu	$a7,$a0,$s1
    bnez	$a7,.L0da20248
    # Line 882
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 893
    ld	$t2,16($sp)
    lw	$t9,0($t2)
    mtc1	$t9,$f7
    cvt.s.w	$f7,$f7
    ld	$t1,24($sp)
    ld	$t0,8($sp)
    swc1	$f7,184($t1)
    swc1	$f7,188($t0)
    # Line 894
    lw	$t8,4($t2)
    mtc1	$t8,$f6
    cvt.s.w	$f6,$f6
    swc1	$f6,188($t1)
    swc1	$f6,192($t0)
    # Line 895
    lw	$t3,8($t2)
    mtc1	$t3,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,192($t1)
    swc1	$f5,196($t0)
    # Line 896
    lw	$t2,12($t2)
    mtc1	$t2,$f4
    cvt.s.w	$f4,$f4
    ld	$s1,0($sp)
    swc1	$f4,196($t1)
    # Line 897
    b	.L0da200ec
    # Line 896
    swc1	$f4,200($t0)
.L0da202e0:
    # Line 891
    li	$a0,0x8066
    sltu	$ra,$s1,$a0
    bnez	$ra,.L0da20400
    sltu	$at,$a0,$s1
    bnez	$at,.L0da20248
    # Line 882
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 972
    # lw $t9, -24464($gp) # &__glLookUpTextureTexobjs
    move	$a0,$s0
    ld	$s1,0($sp)
    bal __glLookUpTextureTexobjs
    move	$a1,$s2
    # Line 974
    ld	$ra,16($sp)
    lw	$ra,0($ra)
    mtc1	$ra,$f16
    cvt.s.w	$f16,$f16
    lwc1	$f17,_lit_40000000
    lwc1	$f15,_lit_3f800000
    madd.s	$f15,$f15,$f16,$f17
    # lw $t9, -32688($gp) # &sub_0da20000
    lwc1	$f12,3568($s0)
    addiu	$t9,$t9,-6768
    mtc1	$zero,$f13
    # Line 972
    move	$s2,$v0
    # Line 974
    lwc1	$f14,3544($s0)
    bal __glLookUpTextureObject
    mul.s	$f12,$f12,$f15
    # Line 976
    b	.L0da200ec
    # Line 974
    swc1	$f0,4($s2)
.L0da20350:
    # Line 887
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s1,0($sp)
    ld	$s0,32($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da20118
    ld	$ra,56($sp)
.L0da2036c:
    # Line 875
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s1,0($sp)
    ld	$s0,32($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da20118
    ld	$ra,56($sp)
.L0da20388:
    # Line 988
    li	$v1,0x819c
    # Line 891
    sltu	$at,$s1,$a0
    li	$a4,0x819a
    # Line 988
    li	$a1,0x819d
    # Line 891
    sltu	$v0,$a0,$s1
    bnez	$at,.L0da204e0
    # Line 988
    ld	$a0,16($sp)
    # Line 891
    bnez	$v0,.L0da20244
    ld	$s1,0($sp)
    # Line 988
    lw	$a0,0($a0)
    beq	$a0,$v1,.L0da203c0
    # Line 991
    ld	$a3,24($sp)
    # Line 988
    bne	$a0,$a1,.L0da20244
    # Line 991
    ld	$a3,24($sp)
.L0da203c0:
    ld	$a2,8($sp)
    sw	$a0,204($a3)
    b	.L0da200ec
    sw	$a0,208($a2)
.L0da203d0:
    # Line 891
    bne	$s1,$a4,.L0da20248
    # Line 882
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 998
    ld	$a7,16($sp)
    lw	$a7,0($a7)
    mtc1	$a7,$f17
    ld	$s1,0($sp)
    cvt.s.w	$f17,$f17
    ld	$a6,24($sp)
    # Line 999
    ld	$a5,8($sp)
    # Line 998
    swc1	$f17,208($a6)
    # Line 999
    b	.L0da200ec
    # Line 998
    swc1	$f17,212($a5)
.L0da20400:
    # Line 891
    li	$t0,10243
    # Line 920
    ld	$a3,8($sp)
    # Line 916
    li	$a2,0x812f
    li	$a1,10497
    # Line 891
    bne	$s1,$t0,.L0da20244
    # Line 920
    ld	$a4,24($sp)
    # Line 916
    ld	$a0,16($sp)
    lw	$a0,0($a0)
    li	$t1,10496
    beq	$a0,$t1,.L0da2043c
    ld	$s1,0($sp)
    beq	$a0,$a1,.L0da2043c
    nop
    bne	$a0,$a2,.L0da20248
    # Line 882
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2043c:
    # Line 920
    sw	$a0,4($a4)
    b	.L0da200ec
    sw	$a0,8($a3)
.L0da20448:
    # Line 891
    li	$a5,10241
    # Line 946
    ld	$t0,8($sp)
    # Line 891
    bne	$s1,$a5,.L0da20244
    # Line 946
    ld	$t1,24($sp)
    # Line 938
    ld	$a0,16($sp)
    lw	$a0,0($a0)
    sltiu	$a6,$a0,9985
    bnez	$a6,.L0da20514
    ld	$s1,0($sp)
    sltiu	$a1,$a0,9986
    bnez	$a1,.L0da20544
    sltiu	$a2,$a0,9987
    bnez	$a2,.L0da20550
    li	$t2,9986
    sltiu	$a3,$a0,9988
    bnez	$a3,.L0da20544
    li	$a4,0x8146
    beq	$a0,$a4,.L0da20544
    nop
    b	.L0da20248
    # Line 882
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2049c:
    # Line 964
    ld	$a1,24($sp)
    ld	$s1,0($sp)
    move	$a0,$s0
    ld	$a2,16($sp)
    jal	__glSetError
    addiu	$a1,$a1,152
    # Line 965
    ld	$a3,24($sp)
    ld	$a2,8($sp)
    lwc1	$f23,152($a3)
    swc1	$f23,156($a2)
    lwc1	$f21,156($a3)
    swc1	$f21,160($a2)
    lwc1	$f19,160($a3)
    swc1	$f19,164($a2)
    lwc1	$f18,164($a3)
    b	.L0da200ec
    swc1	$f18,168($a2)
.L0da204e0:
    # Line 891
    bne	$s1,$a4,.L0da20248
    # Line 882
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 978
    ld	$a0,16($sp)
    lw	$a0,0($a0)
    beqz	$a0,.L0da20500
    ld	$s1,0($sp)
    li	$a1,1
    bne	$a0,$a1,.L0da20244
.L0da20500:
    # Line 981
    ld	$a3,24($sp)
    ld	$a2,8($sp)
    sw	$a0,200($a3)
    b	.L0da200ec
    sw	$a0,204($a2)
.L0da20514:
    # Line 938
    sltiu	$a4,$a0,9729
    bnez	$a4,.L0da2053c
    li	$a7,9728
    sltiu	$a5,$a0,9730
    bnez	$a5,.L0da20544
    li	$a6,9984
    beq	$a0,$a6,.L0da20544
    nop
    b	.L0da20248
    # Line 882
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2053c:
    # Line 938
    bne	$a0,$a7,.L0da20248
    # Line 882
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da20544:
    # Line 946
    sw	$a0,12($t1)
    b	.L0da200ec
    sw	$a0,16($t0)
.L0da20550:
    # Line 938
    beq	$a0,$t2,.L0da20544
    nop
    b	.L0da20248
    # Line 882
    nop	# was lw $t9, -26452($gp) # &__glSetError
.end __glim_TexParameteriv

# Function: __glim_TexParameteri
# Declared: Line 1007 (Source lines: 1008-1024)
# Address: 0x0da20560 - 0x0da20668 (Size: 264 bytes, Frame: 48)
.globl __glim_TexParameteri
.ent __glim_TexParameteri
__glim_TexParameteri:
    # Line 1008
    addiu	$sp,$sp,-48
    # Line 1010
    li	$a4,0x8066
    # Line 1008
    lui	$at,0x3
    # Line 1010
    sltu	$v0,$a1,$a4
    li	$a3,0x819a
    # Line 1008
    sw	$a2,36($sp)
    addiu	$at,$at,2092
    sd	$gp,0($sp)
    # Line 1010
    bnez	$v0,.L0da205c0
    # Line 1008
    addu	$gp,$t9,$at
    # Line 1010
    li	$t2,0x8072
    sltu	$v0,$a4,$a1
    beqz	$v0,.L0da205ec
    sd	$ra,8($sp)
    sltu	$a2,$a3,$a1
    sltu	$v1,$a1,$a3
    bnez	$v1,.L0da20638
    li	$a3,0x819b
    beqz	$a2,.L0da205f0
    # Line 1020
    nop	# was lw $t9, -24380($gp) # &__glim_TexParameteriv
    # Line 1010
    beq	$a1,$a3,.L0da205f0
    # Line 1020
    nop	# was lw $t9, -24380($gp) # &__glim_TexParameteriv
    b	.L0da20608
    # Line 1023
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da205c0:
    # Line 1010
    li	$a6,10240
    sltiu	$a3,$a1,10242
    sltiu	$a7,$a1,10241
    li	$a5,10243
    sltiu	$a4,$a1,10243
    bnez	$a3,.L0da20620
    sd	$ra,8($sp)
    bnez	$a4,.L0da205f0
    # Line 1020
    nop	# was lw $t9, -24380($gp) # &__glim_TexParameteriv
    # Line 1010
    bne	$a1,$a5,.L0da20608
    # Line 1023
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da205ec:
    # Line 1020
    # lw $t9, -24380($gp) # &__glim_TexParameteriv
.L0da205f0:
    bal __glim_TexParameteriv
    addiu	$a2,$sp,36
    b	.L0da20610
    nop
.L0da20600:
    # Line 1010
    beq	$a1,$a6,.L0da205ec
    # Line 1023
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da20608:
    jal	__glSetError
    li	$a0,1280
.L0da20610:
    ld	$ra,8($sp)
    # Line 1024
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da20620:
    # Line 1010
    bnez	$a7,.L0da20600
    nop
    bnez	$a3,.L0da205f0
    # Line 1020
    nop	# was lw $t9, -24380($gp) # &__glim_TexParameteriv
    b	.L0da20608
    # Line 1023
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da20638:
    # Line 1010
    li	$a3,0x80bf
    sltu	$t0,$a1,$a3
    bnez	$t0,.L0da20658
    sltu	$t1,$a3,$a1
    beqz	$t1,.L0da205f0
    # Line 1020
    nop	# was lw $t9, -24380($gp) # &__glim_TexParameteriv
    b	.L0da20608
    # Line 1023
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da20658:
    # Line 1010
    beq	$a1,$t2,.L0da205f0
    # Line 1020
    nop	# was lw $t9, -24380($gp) # &__glim_TexParameteriv
    b	.L0da20608
    # Line 1023
    nop	# was lw $t9, -26452($gp) # &__glSetError
.end __glim_TexParameteri

# Function: __glTexParameterfv_size
# Declared: Line 1028 (Source lines: 1030-1056)
# Address: 0x0da20670 - 0x0da20850 (Size: 480 bytes, Frame: 0)
.globl __glTexParameterfv_size
.ent __glTexParameterfv_size
__glTexParameterfv_size:
    # Line 1030
    li	$a2,0x813a
    sltu	$at,$a0,$a2
    bnez	$at,.L0da206c4
    sltu	$v0,$a2,$a0
    beqz	$v0,.L0da2071c
    li	$a2,0x8173
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0da20754
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0da207e4
    li	$a2,0x819a
    sltu	$a3,$a0,$a2
    bnez	$a3,.L0da207ec
    li	$a5,0x819b
    sltu	$a4,$a2,$a0
    beqz	$a4,.L0da2071c
    nop
    bne	$a0,$a5,.L0da207b0
    nop
    b	.L0da2071c
    nop
.L0da206c4:
    li	$a2,0x8066
    sltu	$a6,$a0,$a2
    bnez	$a6,.L0da20724
    sltu	$a7,$a2,$a0
    beqz	$a7,.L0da2071c
    li	$a2,0x809b
    sltu	$t0,$a0,$a2
    bnez	$t0,.L0da20700
    sltu	$t1,$a2,$a0
    beqz	$t1,.L0da2071c
    li	$t2,0x80bf
    bne	$a0,$t2,.L0da207b0
    nop
    b	.L0da2071c
    nop
.L0da20700:
    li	$a2,0x809a
    sltu	$t3,$a0,$a2
    li	$t9,0x8072
    bnez	$t3,.L0da20820
    sltu	$t8,$a2,$a0
    bnez	$t8,.L0da207b0
    nop
.L0da2071c:
    # Line 1056
    jr	$ra
    # Line 1047
    li	$v0,1
.L0da20724:
    # Line 1030
    sltiu	$a2,$a0,10241
    bnez	$a2,.L0da2078c
    sltiu	$t9,$a0,10242
    bnez	$t9,.L0da2071c
    sltiu	$v0,$a0,10244
    sltiu	$at,$a0,10243
    bnez	$at,.L0da20830
    li	$at,10242
    bnez	$v0,.L0da2071c
    nop
    b	.L0da207b0
    nop
.L0da20754:
    li	$a2,0x813d
    sltu	$v1,$a0,$a2
    bnez	$v1,.L0da207b8
    sltu	$a1,$a2,$a0
    beqz	$a1,.L0da2071c
    li	$t1,0x8171
    li	$a2,0x8172
    sltu	$a3,$a0,$a2
    bnez	$a3,.L0da207dc
    sltu	$a4,$a2,$a0
    beqz	$a4,.L0da2071c
    nop
    b	.L0da207b0
    nop
.L0da2078c:
    sltiu	$a5,$a0,10240
    bnez	$a5,.L0da207a8
    li	$a6,4100
    beqz	$a2,.L0da207b0
    nop
    b	.L0da2071c
    nop
.L0da207a8:
    beq	$a0,$a6,.L0da20808
    nop
.L0da207b0:
    # Line 1056
    jr	$ra
    li	$v0,-1
.L0da207b8:
    # Line 1030
    li	$a2,0x813c
    sltu	$a7,$a0,$a2
    li	$t8,0x813b
    bnez	$a7,.L0da20810
    sltu	$t0,$a2,$a0
    beqz	$t0,.L0da2071c
    nop
    b	.L0da207b0
    nop
.L0da207dc:
    bne	$a0,$t1,.L0da207b0
    nop
.L0da207e4:
    # Line 1056
    jr	$ra
    # Line 1050
    li	$v0,2
.L0da207ec:
    # Line 1030
    li	$a2,0x817a
    sltu	$t2,$a0,$a2
    li	$v0,0x8179
    bnez	$t2,.L0da20840
    sltu	$t3,$a2,$a0
    bnez	$t3,.L0da207b0
    nop
.L0da20808:
    # Line 1056
    jr	$ra
    # Line 1054
    li	$v0,4
.L0da20810:
    # Line 1030
    bne	$a0,$t8,.L0da207b0
    nop
    b	.L0da2071c
    nop
.L0da20820:
    bne	$a0,$t9,.L0da207b0
    nop
    b	.L0da2071c
    nop
.L0da20830:
    bne	$a0,$at,.L0da207b0
    nop
    b	.L0da2071c
    nop
.L0da20840:
    bne	$a0,$v0,.L0da207b0
    nop
    b	.L0da20808
    nop
.end __glTexParameterfv_size

# Function: __glTexParameteriv_size
# Declared: Line 1060 (Source lines: 1061-1062)
# Address: 0x0da20850 - 0x0da20884 (Size: 52 bytes, Frame: 16)
.globl __glTexParameteriv_size
.ent __glTexParameteriv_size
__glTexParameteriv_size:
    # Line 1061
    lui	$at,0x3
    addiu	$sp,$sp,-16
    addiu	$at,$at,1340
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 1062
    # lw $t9, -24372($gp) # &__glTexParameterfv_size
    # Line 1061
    sd	$ra,0($sp)
    # Line 1062
    bal __glTexParameterfv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glTexParameteriv_size

# Function: __glim_TexEnvfv
# Declared: Line 1067 (Source lines: 1068-1107)
# Address: 0x0da20890 - 0x0da209d8 (Size: 328 bytes, Frame: 32)
.globl __glim_TexEnvfv
.ent __glim_TexEnvfv
__glim_TexEnvfv:
    # Line 1068
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 1071
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 1068
    lui	$v1,0x3
    # Line 1086
    li	$t0,8705
    sd	$ra,16($sp)
    # Line 1068
    addiu	$v1,$v1,1276
    sd	$gp,8($sp)
    # Line 1071
    beq	$at,$v0,.L0da209c4
    # Line 1068
    addu	$gp,$t9,$v1
    # Line 1071
    sltiu	$a3,$a0,8960
    bnez	$a3,.L0da209b4
    # Line 1075
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1078
    lw	$a5,3608($s0)
    addiu	$a4,$a0,-8960
    sltu	$a4,$a4,$a5
    # Line 1084
    lui	$a5,0x4
    # Line 1078
    beqz	$a4,.L0da20920
    # Line 1084
    ori	$a5,$a5,0xec00
    sll	$a7,$a0,0x3
    lw	$a4,2484($s0)
    addu	$a7,$a7,$a0
    # Line 1086
    li	$a6,8704
    # Line 1084
    sll	$a7,$a7,0x2
    addu	$a4,$a4,$a7
    # Line 1086
    beq	$a1,$a6,.L0da20940
    # Line 1084
    subu	$a4,$a4,$a5
    # Line 1086
    bne	$a1,$t0,.L0da20920
    # Line 1101
    nop	# was lw $t9, -25836($gp) # &__glClampAndScaleColorf
    move	$a0,$s0
    jal	__glClampAndScaleColorf
    addiu	$a1,$a4,4
    b	.L0da20990
    ld	$ra,16($sp)
.L0da20920:
    # Line 1081
    # lw $t9, -26452($gp) # &__glSetError
.L0da20924:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
.L0da20930:
    ld	$s0,0($sp)
    # Line 1107
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da20940:
    # Line 1088
    lwc1	$f0,0($a2)
    trunc.l.s	$f0,$f0
    dmfc1	$a0,$f0
    li	$a3,8449
    li	$t1,3042
    sll	$a0,$a0,0x0
    li	$a2,8448
    li	$a1,7681
    ld	$ra,16($sp)
    beq	$a0,$t1,.L0da2098c
    li	$a5,0x8062
    beq	$a0,$a1,.L0da2098c
    nop
    beq	$a0,$a2,.L0da2098c
    nop
    beq	$a0,$a3,.L0da2098c
    nop
    bne	$a0,$a5,.L0da20924
    # Line 1081
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2098c:
    # Line 1094
    sw	$a0,0($a4)
.L0da20990:
    # Line 1106
    li	$a7,2
    sw	$a7,4120($zero)
    lw	$a6,11756($s0)
    # Line 1107
    ld	$gp,8($sp)
    # Line 1106
    ori	$a6,$a6,0x1
    sw	$a6,11756($s0)
    # Line 1107
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da209b4:
    # Line 1075
    jal	__glSetError
    li	$a0,1280
    b	.L0da20930
    ld	$ra,16($sp)
.L0da209c4:
    # Line 1071
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da20930
    ld	$ra,16($sp)
.end __glim_TexEnvfv

# Function: __glim_TexEnvf
# Declared: Line 1109 (Source lines: 1110-1120)
# Address: 0x0da209e0 - 0x0da20a34 (Size: 84 bytes, Frame: 48)
.globl __glim_TexEnvf
.ent __glim_TexEnvf
__glim_TexEnvf:
    # Line 1110
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 1112
    li	$at,8704
    # Line 1110
    lui	$v0,0x3
    sd	$ra,8($sp)
    addiu	$v0,$v0,940
    sd	$gp,0($sp)
    # Line 1112
    beq	$a1,$at,.L0da20a20
    # Line 1110
    addu	$gp,$t9,$v0
    # Line 1117
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0da20a14:
    # Line 1120
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da20a20:
    # Line 1114
    # lw $t9, -24364($gp) # &__glim_TexEnvfv
    bal __glim_TexEnvfv
    addiu	$a2,$sp,32
    b	.L0da20a14
    ld	$ra,8($sp)
.end __glim_TexEnvf

# Function: __glim_TexEnviv
# Declared: Line 1122 (Source lines: 1123-1162)
# Address: 0x0da20a40 - 0x0da20b7c (Size: 316 bytes, Frame: 32)
.globl __glim_TexEnviv
.ent __glim_TexEnviv
__glim_TexEnviv:
    # Line 1123
    addiu	$sp,$sp,-32
    sd	$s0,0($sp)
    # Line 1126
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 1123
    lui	$v1,0x3
    # Line 1141
    li	$t0,8705
    sd	$ra,16($sp)
    # Line 1123
    addiu	$v1,$v1,844
    sd	$gp,8($sp)
    # Line 1126
    beq	$at,$v0,.L0da20b68
    # Line 1123
    addu	$gp,$t9,$v1
    # Line 1126
    sltiu	$a3,$a0,8960
    bnez	$a3,.L0da20b58
    # Line 1130
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1133
    lw	$a5,3608($s0)
    addiu	$a4,$a0,-8960
    sltu	$a4,$a4,$a5
    # Line 1139
    lui	$a5,0x4
    # Line 1133
    beqz	$a4,.L0da20ad0
    # Line 1139
    ori	$a5,$a5,0xec00
    sll	$a7,$a0,0x3
    lw	$a4,2484($s0)
    addu	$a7,$a7,$a0
    # Line 1141
    li	$a6,8704
    # Line 1139
    sll	$a7,$a7,0x2
    addu	$a4,$a4,$a7
    # Line 1141
    beq	$a1,$a6,.L0da20af0
    # Line 1139
    subu	$a4,$a4,$a5
    # Line 1141
    bne	$a1,$t0,.L0da20ad0
    # Line 1156
    nop	# was lw $t9, -25824($gp) # &__glClampAndScaleColori
    move	$a0,$s0
    jal	__glClampAndScaleColori
    addiu	$a1,$a4,4
    b	.L0da20b34
    ld	$ra,16($sp)
.L0da20ad0:
    # Line 1136
    # lw $t9, -26452($gp) # &__glSetError
.L0da20ad4:
    jal	__glSetError
    li	$a0,1280
    ld	$ra,16($sp)
.L0da20ae0:
    ld	$s0,0($sp)
    # Line 1162
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da20af0:
    # Line 1143
    lw	$a0,0($a2)
    li	$t8,8449
    li	$t1,3042
    li	$t3,8448
    li	$t2,7681
    ld	$ra,16($sp)
    beq	$a0,$t1,.L0da20b30
    li	$t9,0x8062
    beq	$a0,$t2,.L0da20b30
    nop
    beq	$a0,$t3,.L0da20b30
    nop
    beq	$a0,$t8,.L0da20b30
    nop
    bne	$a0,$t9,.L0da20ad4
    # Line 1136
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da20b30:
    # Line 1149
    sw	$a0,0($a4)
.L0da20b34:
    # Line 1161
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$at,11756($s0)
    # Line 1162
    ld	$gp,8($sp)
    # Line 1161
    ori	$at,$at,0x1
    sw	$at,11756($s0)
    # Line 1162
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da20b58:
    # Line 1130
    jal	__glSetError
    li	$a0,1280
    b	.L0da20ae0
    ld	$ra,16($sp)
.L0da20b68:
    # Line 1126
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da20ae0
    ld	$ra,16($sp)
.end __glim_TexEnviv

# Function: __glim_TexEnvi
# Declared: Line 1164 (Source lines: 1165-1175)
# Address: 0x0da20b80 - 0x0da20bd4 (Size: 84 bytes, Frame: 48)
.globl __glim_TexEnvi
.ent __glim_TexEnvi
__glim_TexEnvi:
    # Line 1165
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    # Line 1167
    li	$at,8704
    # Line 1165
    lui	$v0,0x3
    sd	$ra,8($sp)
    addiu	$v0,$v0,524
    sd	$gp,0($sp)
    # Line 1167
    beq	$a1,$at,.L0da20bc0
    # Line 1165
    addu	$gp,$t9,$v0
    # Line 1172
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0da20bb4:
    # Line 1175
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da20bc0:
    # Line 1169
    # lw $t9, -24356($gp) # &__glim_TexEnviv
    bal __glim_TexEnviv
    addiu	$a2,$sp,36
    b	.L0da20bb4
    ld	$ra,8($sp)
.end __glim_TexEnvi

# Function: __glTexEnvfv_size
# Declared: Line 1177 (Source lines: 1179-1185)
# Address: 0x0da20be0 - 0x0da20c0c (Size: 44 bytes, Frame: 0)
.globl __glTexEnvfv_size
.ent __glTexEnvfv_size
__glTexEnvfv_size:
    # Line 1179
    li	$at,8704
    li	$v1,8705
    beq	$a0,$at,.L0da20c04
    # Line 1181
    li	$v0,1
    xor	$v1,$a0,$v1
    # Line 1183
    li	$a0,4
    # Line 1185
    li	$v0,-1
    # Line 1181
    jr	$ra
    movz	$v0,$a0,$v1
.L0da20c04:
    jr	$ra
    nop
.end __glTexEnvfv_size

# Function: __glTexEnviv_size
# Declared: Line 1189 (Source lines: 1190-1191)
# Address: 0x0da20c10 - 0x0da20c44 (Size: 52 bytes, Frame: 16)
.globl __glTexEnviv_size
.ent __glTexEnviv_size
__glTexEnviv_size:
    # Line 1190
    lui	$at,0x3
    addiu	$sp,$sp,-16
    addiu	$at,$at,380
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 1191
    # lw $t9, -24348($gp) # &__glTexEnvfv_size
    # Line 1190
    sd	$ra,0($sp)
    # Line 1191
    bal __glTexEnvfv_size
    nop
    ld	$ra,0($sp)
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glTexEnviv_size

# Function: __glim_TextureColorMaskSGIS
# Declared: Line 1197 (Source lines: 1199-1207)
# Address: 0x0da20c50 - 0x0da20cc8 (Size: 120 bytes, Frame: 16)
.globl __glim_TextureColorMaskSGIS
.ent __glim_TextureColorMaskSGIS
__glim_TextureColorMaskSGIS:
    # Line 1200
    lw	$v0,4120($zero)
    li	$v1,1
    # Line 1199
    lui	$at,0x3
    # Line 1200
    lw	$a5,4112($zero)
    # Line 1199
    addiu	$sp,$sp,-16
    addiu	$at,$at,316
    sd	$gp,0($sp)
    # Line 1200
    beq	$v0,$v1,.L0da20cb0
    # Line 1199
    addu	$gp,$t9,$at
    # Line 1205
    sb	$a3,2523($a5)
    # Line 1204
    sb	$a2,2522($a5)
    # Line 1203
    sb	$a1,2521($a5)
    # Line 1202
    sb	$a0,2520($a5)
    # Line 1206
    li	$v1,2
    sw	$v1,4120($zero)
    lw	$v0,11756($a5)
    # Line 1207
    ld	$gp,0($sp)
    addiu	$sp,$sp,16
    # Line 1206
    ori	$v0,$v0,0x1
    # Line 1207
    jr	$ra
    # Line 1206
    sw	$v0,11756($a5)
.L0da20ca4:
    # Line 1207
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da20cb0:
    # Line 1200
    # lw $t9, -26452($gp) # &__glSetError
    sd	$ra,8($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da20ca4
    ld	$ra,8($sp)
.end __glim_TextureColorMaskSGIS

# Function: __glExtractTexelL
# Declared: Line 1216 (Source lines: 1221-1231)
# Address: 0x0da20cd0 - 0x0da20d2c (Size: 92 bytes, Frame: 0)
.globl __glExtractTexelL
.ent __glExtractTexelL
__glExtractTexelL:
    # Line 1221
    bltz	$a3,.L0da20cfc
    nop
    bltz	$a4,.L0da20cfc
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    slt	$at,$a3,$at
    beqz	$at,.L0da20cfc
    slt	$v0,$a4,$v0
    bnez	$v0,.L0da20d08
    nop
.L0da20cfc:
    # Line 1226
    lwc1	$f0,156($a1)
    # Line 1231
    jr	$ra
    # Line 1226
    swc1	$f0,12($a5)
.L0da20d08:
    # Line 1229
    lw	$a1,44($a0)
    sllv	$a1,$a3,$a1
    lw	$v1,0($a0)
    addu	$a0,$a4,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f1,0($v1)
    # Line 1231
    jr	$ra
    # Line 1229
    swc1	$f1,12($a5)
.end __glExtractTexelL

# Function: __glExtractTexelLA
# Declared: Line 1238 (Source lines: 1243-1255)
# Address: 0x0da20d30 - 0x0da20da0 (Size: 112 bytes, Frame: 0)
.globl __glExtractTexelLA
.ent __glExtractTexelLA
__glExtractTexelLA:
    # Line 1243
    bltz	$a3,.L0da20d5c
    nop
    bltz	$a4,.L0da20d5c
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    slt	$at,$a3,$at
    beqz	$at,.L0da20d5c
    slt	$v0,$a4,$v0
    bnez	$v0,.L0da20d70
    nop
.L0da20d5c:
    # Line 1248
    lwc1	$f1,156($a1)
    swc1	$f1,12($a5)
    # Line 1249
    lwc1	$f0,168($a1)
    # Line 1255
    jr	$ra
    # Line 1249
    swc1	$f0,16($a5)
.L0da20d70:
    # Line 1251
    lw	$a1,44($a0)
    sllv	$a1,$a3,$a1
    addu	$a1,$a4,$a1
    lw	$v1,0($a0)
    addu	$a0,$a1,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    # Line 1252
    lwc1	$f3,0($v1)
    swc1	$f3,12($a5)
    # Line 1253
    lwc1	$f2,4($v1)
    # Line 1255
    jr	$ra
    # Line 1253
    swc1	$f2,16($a5)
.end __glExtractTexelLA

# Function: __glExtractTexelRGB
# Declared: Line 1262 (Source lines: 1267-1281)
# Address: 0x0da20da0 - 0x0da20e24 (Size: 132 bytes, Frame: 0)
.globl __glExtractTexelRGB
.ent __glExtractTexelRGB
__glExtractTexelRGB:
    # Line 1267
    bltz	$a3,.L0da20dcc
    nop
    bltz	$a4,.L0da20dcc
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    slt	$at,$a3,$at
    beqz	$at,.L0da20dcc
    slt	$v0,$a4,$v0
    bnez	$v0,.L0da20de8
    nop
.L0da20dcc:
    # Line 1272
    lwc1	$f2,156($a1)
    swc1	$f2,0($a5)
    # Line 1273
    lwc1	$f1,160($a1)
    swc1	$f1,4($a5)
    # Line 1274
    lwc1	$f0,164($a1)
    # Line 1281
    jr	$ra
    # Line 1274
    swc1	$f0,8($a5)
.L0da20de8:
    # Line 1276
    lw	$a2,44($a0)
    sllv	$a2,$a3,$a2
    addu	$a2,$a4,$a2
    sll	$a1,$a2,0x2
    lw	$v1,0($a0)
    subu	$a0,$a1,$a2
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    # Line 1277
    lwc1	$f5,0($v1)
    swc1	$f5,0($a5)
    # Line 1278
    lwc1	$f4,4($v1)
    swc1	$f4,4($a5)
    # Line 1279
    lwc1	$f3,8($v1)
    # Line 1281
    jr	$ra
    # Line 1279
    swc1	$f3,8($a5)
.end __glExtractTexelRGB

# Function: __glExtractTexelRGBA
# Declared: Line 1288 (Source lines: 1293-1309)
# Address: 0x0da20e30 - 0x0da20ebc (Size: 140 bytes, Frame: 0)
.globl __glExtractTexelRGBA
.ent __glExtractTexelRGBA
__glExtractTexelRGBA:
    # Line 1293
    bltz	$a3,.L0da20e5c
    nop
    bltz	$a4,.L0da20e5c
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    slt	$at,$a3,$at
    beqz	$at,.L0da20e5c
    slt	$v0,$a4,$v0
    bnez	$v0,.L0da20e80
    nop
.L0da20e5c:
    # Line 1298
    lwc1	$f3,156($a1)
    swc1	$f3,0($a5)
    # Line 1299
    lwc1	$f2,160($a1)
    swc1	$f2,4($a5)
    # Line 1300
    lwc1	$f1,164($a1)
    swc1	$f1,8($a5)
    # Line 1301
    lwc1	$f0,168($a1)
    # Line 1309
    jr	$ra
    # Line 1301
    swc1	$f0,16($a5)
.L0da20e80:
    # Line 1303
    lw	$a1,44($a0)
    sllv	$a1,$a3,$a1
    lw	$v1,0($a0)
    addu	$a0,$a4,$a1
    sll	$a0,$a0,0x4
    addu	$v1,$v1,$a0
    # Line 1304
    lwc1	$f7,0($v1)
    swc1	$f7,0($a5)
    # Line 1305
    lwc1	$f6,4($v1)
    swc1	$f6,4($a5)
    # Line 1306
    lwc1	$f5,8($v1)
    swc1	$f5,8($a5)
    # Line 1307
    lwc1	$f4,12($v1)
    # Line 1309
    jr	$ra
    # Line 1307
    swc1	$f4,16($a5)
.end __glExtractTexelRGBA

# Function: __glExtractTexelA
# Declared: Line 1312 (Source lines: 1317-1327)
# Address: 0x0da20ec0 - 0x0da20f1c (Size: 92 bytes, Frame: 0)
.globl __glExtractTexelA
.ent __glExtractTexelA
__glExtractTexelA:
    # Line 1317
    bltz	$a3,.L0da20eec
    nop
    bltz	$a4,.L0da20eec
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    slt	$at,$a3,$at
    beqz	$at,.L0da20eec
    slt	$v0,$a4,$v0
    bnez	$v0,.L0da20ef8
    nop
.L0da20eec:
    # Line 1322
    lwc1	$f0,168($a1)
    # Line 1327
    jr	$ra
    # Line 1322
    swc1	$f0,16($a5)
.L0da20ef8:
    # Line 1325
    lw	$a1,44($a0)
    sllv	$a1,$a3,$a1
    lw	$v1,0($a0)
    addu	$a0,$a4,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f1,0($v1)
    # Line 1327
    jr	$ra
    # Line 1325
    swc1	$f1,16($a5)
.end __glExtractTexelA

# Function: __glExtractTexelI
# Declared: Line 1330 (Source lines: 1335-1345)
# Address: 0x0da20f20 - 0x0da20f7c (Size: 92 bytes, Frame: 0)
.globl __glExtractTexelI
.ent __glExtractTexelI
__glExtractTexelI:
    # Line 1335
    bltz	$a3,.L0da20f4c
    nop
    bltz	$a4,.L0da20f4c
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    slt	$at,$a3,$at
    beqz	$at,.L0da20f4c
    slt	$v0,$a4,$v0
    bnez	$v0,.L0da20f58
    nop
.L0da20f4c:
    # Line 1340
    lwc1	$f0,156($a1)
    # Line 1345
    jr	$ra
    # Line 1340
    swc1	$f0,20($a5)
.L0da20f58:
    # Line 1343
    lw	$a1,44($a0)
    sllv	$a1,$a3,$a1
    lw	$v1,0($a0)
    addu	$a0,$a4,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    lwc1	$f1,0($v1)
    # Line 1345
    jr	$ra
    # Line 1343
    swc1	$f1,20($a5)
.end __glExtractTexelI

# Function: __glExtractTexelRGB8
# Declared: Line 1348 (Source lines: 1351-1368)
# Address: 0x0da20f80 - 0x0da2102c (Size: 172 bytes, Frame: 0)
.globl __glExtractTexelRGB8
.ent __glExtractTexelRGB8
__glExtractTexelRGB8:
    # Line 1354
    bltz	$a3,.L0da20fac
    # Line 1351
    lw	$a6,0($a1)
    # Line 1354
    bltz	$a4,.L0da20fac
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    slt	$at,$a3,$at
    beqz	$at,.L0da20fac
    slt	$v0,$a4,$v0
    bnez	$v0,.L0da20fc8
    nop
.L0da20fac:
    # Line 1359
    lwc1	$f2,156($a1)
    swc1	$f2,0($a5)
    # Line 1360
    lwc1	$f1,160($a1)
    swc1	$f1,4($a5)
    # Line 1361
    lwc1	$f0,164($a1)
    # Line 1368
    jr	$ra
    # Line 1361
    swc1	$f0,8($a5)
.L0da20fc8:
    # Line 1363
    lw	$a1,44($a0)
    sllv	$a1,$a3,$a1
    lw	$v1,0($a0)
    addu	$a0,$a4,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    # Line 1364
    lbu	$a1,0($v1)
    mtc1	$a1,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f6,3552($a6)
    mul.s	$f5,$f5,$f6
    swc1	$f5,0($a5)
    # Line 1365
    lbu	$a0,1($v1)
    mtc1	$a0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,3552($a6)
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a5)
    # Line 1366
    lbu	$v1,2($v1)
    mtc1	$v1,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f4,3552($a6)
    mul.s	$f3,$f3,$f4
    # Line 1368
    jr	$ra
    # Line 1366
    swc1	$f3,8($a5)
.end __glExtractTexelRGB8

# Function: __glExtractTexelRGBA8
# Declared: Line 1371 (Source lines: 1374-1393)
# Address: 0x0da21030 - 0x0da210fc (Size: 204 bytes, Frame: 0)
.globl __glExtractTexelRGBA8
.ent __glExtractTexelRGBA8
__glExtractTexelRGBA8:
    # Line 1377
    bltz	$a3,.L0da2105c
    # Line 1374
    lw	$a6,0($a1)
    # Line 1377
    bltz	$a4,.L0da2105c
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    slt	$at,$a3,$at
    beqz	$at,.L0da2105c
    slt	$v0,$a4,$v0
    bnez	$v0,.L0da21080
    nop
.L0da2105c:
    # Line 1382
    lwc1	$f3,156($a1)
    swc1	$f3,0($a5)
    # Line 1383
    lwc1	$f2,160($a1)
    swc1	$f2,4($a5)
    # Line 1384
    lwc1	$f1,164($a1)
    swc1	$f1,8($a5)
    # Line 1385
    lwc1	$f0,168($a1)
    # Line 1393
    jr	$ra
    # Line 1385
    swc1	$f0,16($a5)
.L0da21080:
    # Line 1387
    lw	$a1,44($a0)
    sllv	$a1,$a3,$a1
    lw	$v1,0($a0)
    addu	$a0,$a4,$a1
    sll	$a0,$a0,0x2
    addu	$v1,$v1,$a0
    # Line 1388
    lbu	$a2,0($v1)
    mtc1	$a2,$f7
    cvt.s.w	$f7,$f7
    lwc1	$f8,3552($a6)
    mul.s	$f7,$f7,$f8
    swc1	$f7,0($a5)
    # Line 1389
    lbu	$a1,1($v1)
    mtc1	$a1,$f6
    cvt.s.w	$f6,$f6
    lwc1	$f7,3552($a6)
    mul.s	$f6,$f6,$f7
    swc1	$f6,4($a5)
    # Line 1390
    lbu	$a0,2($v1)
    mtc1	$a0,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f6,3552($a6)
    mul.s	$f5,$f5,$f6
    swc1	$f5,8($a5)
    # Line 1391
    lbu	$v1,3($v1)
    mtc1	$v1,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,3552($a6)
    mul.s	$f4,$f4,$f5
    # Line 1393
    jr	$ra
    # Line 1391
    swc1	$f4,16($a5)
.end __glExtractTexelRGBA8

# Function: __glExtractTexelL_B
# Declared: Line 1400 (Source lines: 1408-1409)
# Address: 0x0da21100 - 0x0da2112c (Size: 44 bytes, Frame: 0)
.globl __glExtractTexelL_B
.ent __glExtractTexelL_B
__glExtractTexelL_B:
    # Line 1408
    lw	$v1,4($a0)
    addiu	$a1,$a3,1
    mult	$v1,$a1
    mflo	$v0
    lw	$at,0($a0)
    addu	$v0,$a4,$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1409
    jr	$ra
    # Line 1408
    swc1	$f0,12($a5)
.end __glExtractTexelL_B

# Function: __glExtractTexelLA_B
# Declared: Line 1416 (Source lines: 1423-1426)
# Address: 0x0da21130 - 0x0da21168 (Size: 56 bytes, Frame: 0)
.globl __glExtractTexelLA_B
.ent __glExtractTexelLA_B
__glExtractTexelLA_B:
    # Line 1423
    lw	$v1,4($a0)
    addiu	$a1,$a3,1
    mult	$v1,$a1
    mflo	$v0
    addu	$v0,$a4,$v0
    lw	$at,0($a0)
    addu	$v0,$v0,$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 1424
    lwc1	$f1,8($at)
    swc1	$f1,12($a5)
    # Line 1425
    lwc1	$f0,12($at)
    # Line 1426
    jr	$ra
    # Line 1425
    swc1	$f0,16($a5)
.end __glExtractTexelLA_B

# Function: __glExtractTexelRGB_B
# Declared: Line 1433 (Source lines: 1440-1444)
# Address: 0x0da21170 - 0x0da211b4 (Size: 68 bytes, Frame: 0)
.globl __glExtractTexelRGB_B
.ent __glExtractTexelRGB_B
__glExtractTexelRGB_B:
    # Line 1440
    lw	$a1,4($a0)
    addiu	$a2,$a3,1
    mult	$a1,$a2
    mflo	$v1
    addu	$v1,$a4,$v1
    sll	$v0,$v1,0x2
    lw	$at,0($a0)
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 1441
    lwc1	$f2,12($at)
    swc1	$f2,0($a5)
    # Line 1442
    lwc1	$f1,16($at)
    swc1	$f1,4($a5)
    # Line 1443
    lwc1	$f0,20($at)
    # Line 1444
    jr	$ra
    # Line 1443
    swc1	$f0,8($a5)
.end __glExtractTexelRGB_B

# Function: __glExtractTexelRGBA_B
# Declared: Line 1451 (Source lines: 1458-1463)
# Address: 0x0da211c0 - 0x0da21204 (Size: 68 bytes, Frame: 0)
.globl __glExtractTexelRGBA_B
.ent __glExtractTexelRGBA_B
__glExtractTexelRGBA_B:
    # Line 1458
    lw	$v1,4($a0)
    addiu	$a1,$a3,1
    mult	$v1,$a1
    mflo	$v0
    lw	$at,0($a0)
    addu	$v0,$a4,$v0
    sll	$v0,$v0,0x4
    addu	$at,$at,$v0
    # Line 1459
    lwc1	$f3,16($at)
    swc1	$f3,0($a5)
    # Line 1460
    lwc1	$f2,20($at)
    swc1	$f2,4($a5)
    # Line 1461
    lwc1	$f1,24($at)
    swc1	$f1,8($a5)
    # Line 1462
    lwc1	$f0,28($at)
    # Line 1463
    jr	$ra
    # Line 1462
    swc1	$f0,16($a5)
.end __glExtractTexelRGBA_B

# Function: __glExtractTexelA_B
# Declared: Line 1466 (Source lines: 1474-1475)
# Address: 0x0da21210 - 0x0da2123c (Size: 44 bytes, Frame: 0)
.globl __glExtractTexelA_B
.ent __glExtractTexelA_B
__glExtractTexelA_B:
    # Line 1474
    lw	$v1,4($a0)
    addiu	$a1,$a3,1
    mult	$v1,$a1
    mflo	$v0
    lw	$at,0($a0)
    addu	$v0,$a4,$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1475
    jr	$ra
    # Line 1474
    swc1	$f0,16($a5)
.end __glExtractTexelA_B

# Function: __glExtractTexelI_B
# Declared: Line 1478 (Source lines: 1486-1487)
# Address: 0x0da21240 - 0x0da2126c (Size: 44 bytes, Frame: 0)
.globl __glExtractTexelI_B
.ent __glExtractTexelI_B
__glExtractTexelI_B:
    # Line 1486
    lw	$v1,4($a0)
    addiu	$a1,$a3,1
    mult	$v1,$a1
    mflo	$v0
    lw	$at,0($a0)
    addu	$v0,$a4,$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1487
    jr	$ra
    # Line 1486
    swc1	$f0,20($a5)
.end __glExtractTexelI_B

# Function: __glExtractTexelRGB8_B
# Declared: Line 1490 (Source lines: 1493-1502)
# Address: 0x0da21270 - 0x0da212e0 (Size: 112 bytes, Frame: 0)
.globl __glExtractTexelRGB8_B
.ent __glExtractTexelRGB8_B
__glExtractTexelRGB8_B:
    # Line 1498
    lw	$a2,4($a0)
    addiu	$a3,$a3,1
    mult	$a2,$a3
    mflo	$v1
    lw	$v0,0($a0)
    addu	$v1,$a4,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    # Line 1499
    lbu	$a0,4($v0)
    mtc1	$a0,$f2
    # Line 1493
    lw	$at,0($a1)
    # Line 1499
    cvt.s.w	$f2,$f2
    lwc1	$f3,3552($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($a5)
    # Line 1500
    lbu	$v1,5($v0)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f2,3552($at)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($a5)
    # Line 1501
    lbu	$v0,6($v0)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,3552($at)
    mul.s	$f0,$f0,$f1
    # Line 1502
    jr	$ra
    # Line 1501
    swc1	$f0,8($a5)
.end __glExtractTexelRGB8_B

# Function: __glExtractTexelRGBA8_B
# Declared: Line 1505 (Source lines: 1508-1518)
# Address: 0x0da212e0 - 0x0da21368 (Size: 136 bytes, Frame: 0)
.globl __glExtractTexelRGBA8_B
.ent __glExtractTexelRGBA8_B
__glExtractTexelRGBA8_B:
    # Line 1513
    lw	$a2,4($a0)
    addiu	$a3,$a3,1
    mult	$a2,$a3
    mflo	$v1
    lw	$v0,0($a0)
    addu	$v1,$a4,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    # Line 1514
    lbu	$a2,4($v0)
    mtc1	$a2,$f3
    # Line 1508
    lw	$at,0($a1)
    # Line 1514
    cvt.s.w	$f3,$f3
    lwc1	$f4,3552($at)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($a5)
    # Line 1515
    lbu	$a0,5($v0)
    mtc1	$a0,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f3,3552($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a5)
    # Line 1516
    lbu	$v1,6($v0)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f2,3552($at)
    mul.s	$f1,$f1,$f2
    swc1	$f1,8($a5)
    # Line 1517
    lbu	$v0,7($v0)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,3552($at)
    mul.s	$f0,$f0,$f1
    # Line 1518
    jr	$ra
    # Line 1517
    swc1	$f0,16($a5)
.end __glExtractTexelRGBA8_B

# Function: __glExtractTexel3L
# Declared: Line 1526 (Source lines: 1531-1544)
# Address: 0x0da21370 - 0x0da213f4 (Size: 132 bytes, Frame: 0)
.globl __glExtractTexel3L
.ent __glExtractTexel3L
__glExtractTexel3L:
    # Line 1531
    bltz	$a3,.L0da213b8
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    lw	$v1,28($a0)
    slt	$at,$a3,$at
    slt	$v0,$a4,$v0
    # Line 1542
    lw	$a6,16($a0)
    # Line 1531
    beqz	$at,.L0da213b8
    slt	$v1,$a2,$v1
    bltz	$a4,.L0da213b8
    nop
    beqz	$v0,.L0da213b8
    nop
    bltz	$a2,.L0da213b8
    nop
    bnez	$v1,.L0da213c4
    nop
.L0da213b8:
    # Line 1538
    lwc1	$f0,156($a1)
    # Line 1544
    jr	$ra
    # Line 1538
    swc1	$f0,12($a5)
.L0da213c4:
    # Line 1542
    mult	$a6,$a2
    lw	$a2,44($a0)
    sllv	$a2,$a3,$a2
    mflo	$a1
    addu	$a1,$a1,$a2
    lw	$a0,0($a0)
    addu	$a1,$a4,$a1
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lwc1	$f1,0($a0)
    # Line 1544
    jr	$ra
    # Line 1542
    swc1	$f1,12($a5)
.end __glExtractTexel3L

# Function: __glExtractTexel3LA
# Declared: Line 1550 (Source lines: 1555-1570)
# Address: 0x0da21400 - 0x0da21498 (Size: 152 bytes, Frame: 0)
.globl __glExtractTexel3LA
.ent __glExtractTexel3LA
__glExtractTexel3LA:
    # Line 1555
    bltz	$a3,.L0da21448
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    lw	$v1,28($a0)
    slt	$at,$a3,$at
    slt	$v0,$a4,$v0
    # Line 1565
    lw	$a6,16($a0)
    # Line 1555
    beqz	$at,.L0da21448
    slt	$v1,$a2,$v1
    bltz	$a4,.L0da21448
    nop
    beqz	$v0,.L0da21448
    nop
    bltz	$a2,.L0da21448
    nop
    bnez	$v1,.L0da2145c
    nop
.L0da21448:
    # Line 1562
    lwc1	$f1,156($a1)
    swc1	$f1,12($a5)
    # Line 1563
    lwc1	$f0,168($a1)
    # Line 1570
    jr	$ra
    # Line 1563
    swc1	$f0,16($a5)
.L0da2145c:
    # Line 1565
    mult	$a6,$a2
    lw	$a2,44($a0)
    sllv	$a2,$a3,$a2
    mflo	$a1
    addu	$a1,$a1,$a2
    addu	$a1,$a4,$a1
    lw	$a0,0($a0)
    addu	$a1,$a1,$a1
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    # Line 1567
    lwc1	$f3,0($a0)
    swc1	$f3,12($a5)
    # Line 1568
    lwc1	$f2,4($a0)
    # Line 1570
    jr	$ra
    # Line 1568
    swc1	$f2,16($a5)
.end __glExtractTexel3LA

# Function: __glExtractTexel3RGB
# Declared: Line 1576 (Source lines: 1581-1598)
# Address: 0x0da214a0 - 0x0da2154c (Size: 172 bytes, Frame: 0)
.globl __glExtractTexel3RGB
.ent __glExtractTexel3RGB
__glExtractTexel3RGB:
    # Line 1581
    bltz	$a3,.L0da214e8
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    lw	$v1,28($a0)
    slt	$at,$a3,$at
    slt	$v0,$a4,$v0
    # Line 1592
    lw	$a7,16($a0)
    # Line 1581
    beqz	$at,.L0da214e8
    slt	$v1,$a2,$v1
    bltz	$a4,.L0da214e8
    nop
    beqz	$v0,.L0da214e8
    nop
    bltz	$a2,.L0da214e8
    nop
    bnez	$v1,.L0da21504
    nop
.L0da214e8:
    # Line 1588
    lwc1	$f2,156($a1)
    swc1	$f2,0($a5)
    # Line 1589
    lwc1	$f1,160($a1)
    swc1	$f1,4($a5)
    # Line 1590
    lwc1	$f0,164($a1)
    # Line 1598
    jr	$ra
    # Line 1590
    swc1	$f0,8($a5)
.L0da21504:
    # Line 1592
    mult	$a7,$a2
    lw	$a6,44($a0)
    sllv	$a3,$a3,$a6
    mflo	$a2
    addu	$a2,$a2,$a3
    addu	$a2,$a4,$a2
    sll	$a1,$a2,0x2
    lw	$a0,0($a0)
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    # Line 1594
    lwc1	$f5,0($a0)
    swc1	$f5,0($a5)
    # Line 1595
    lwc1	$f4,4($a0)
    swc1	$f4,4($a5)
    # Line 1596
    lwc1	$f3,8($a0)
    # Line 1598
    jr	$ra
    # Line 1596
    swc1	$f3,8($a5)
.end __glExtractTexel3RGB

# Function: __glExtractTexel3RGBA
# Declared: Line 1604 (Source lines: 1609-1628)
# Address: 0x0da21550 - 0x0da21604 (Size: 180 bytes, Frame: 0)
.globl __glExtractTexel3RGBA
.ent __glExtractTexel3RGBA
__glExtractTexel3RGBA:
    # Line 1609
    bltz	$a3,.L0da21598
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    lw	$v1,28($a0)
    slt	$at,$a3,$at
    slt	$v0,$a4,$v0
    # Line 1621
    lw	$a6,16($a0)
    # Line 1609
    beqz	$at,.L0da21598
    slt	$v1,$a2,$v1
    bltz	$a4,.L0da21598
    nop
    beqz	$v0,.L0da21598
    nop
    bltz	$a2,.L0da21598
    nop
    bnez	$v1,.L0da215bc
    nop
.L0da21598:
    # Line 1616
    lwc1	$f3,156($a1)
    swc1	$f3,0($a5)
    # Line 1617
    lwc1	$f2,160($a1)
    swc1	$f2,4($a5)
    # Line 1618
    lwc1	$f1,164($a1)
    swc1	$f1,8($a5)
    # Line 1619
    lwc1	$f0,168($a1)
    # Line 1628
    jr	$ra
    # Line 1619
    swc1	$f0,16($a5)
.L0da215bc:
    # Line 1621
    mult	$a6,$a2
    lw	$a2,44($a0)
    sllv	$a2,$a3,$a2
    mflo	$a1
    addu	$a1,$a1,$a2
    lw	$a0,0($a0)
    addu	$a1,$a4,$a1
    sll	$a1,$a1,0x4
    addu	$a0,$a0,$a1
    # Line 1623
    lwc1	$f7,0($a0)
    swc1	$f7,0($a5)
    # Line 1624
    lwc1	$f6,4($a0)
    swc1	$f6,4($a5)
    # Line 1625
    lwc1	$f5,8($a0)
    swc1	$f5,8($a5)
    # Line 1626
    lwc1	$f4,12($a0)
    # Line 1628
    jr	$ra
    # Line 1626
    swc1	$f4,16($a5)
.end __glExtractTexel3RGBA

# Function: __glExtractTexel3A
# Declared: Line 1630 (Source lines: 1635-1648)
# Address: 0x0da21610 - 0x0da21694 (Size: 132 bytes, Frame: 0)
.globl __glExtractTexel3A
.ent __glExtractTexel3A
__glExtractTexel3A:
    # Line 1635
    bltz	$a3,.L0da21658
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    lw	$v1,28($a0)
    slt	$at,$a3,$at
    slt	$v0,$a4,$v0
    # Line 1646
    lw	$a6,16($a0)
    # Line 1635
    beqz	$at,.L0da21658
    slt	$v1,$a2,$v1
    bltz	$a4,.L0da21658
    nop
    beqz	$v0,.L0da21658
    nop
    bltz	$a2,.L0da21658
    nop
    bnez	$v1,.L0da21664
    nop
.L0da21658:
    # Line 1642
    lwc1	$f0,168($a1)
    # Line 1648
    jr	$ra
    # Line 1642
    swc1	$f0,16($a5)
.L0da21664:
    # Line 1646
    mult	$a6,$a2
    lw	$a2,44($a0)
    sllv	$a2,$a3,$a2
    mflo	$a1
    addu	$a1,$a1,$a2
    lw	$a0,0($a0)
    addu	$a1,$a4,$a1
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lwc1	$f1,0($a0)
    # Line 1648
    jr	$ra
    # Line 1646
    swc1	$f1,16($a5)
.end __glExtractTexel3A

# Function: __glExtractTexel3I
# Declared: Line 1650 (Source lines: 1655-1668)
# Address: 0x0da216a0 - 0x0da21724 (Size: 132 bytes, Frame: 0)
.globl __glExtractTexel3I
.ent __glExtractTexel3I
__glExtractTexel3I:
    # Line 1655
    bltz	$a3,.L0da216e8
    nop
    lw	$at,24($a0)
    lw	$v0,20($a0)
    lw	$v1,28($a0)
    slt	$at,$a3,$at
    slt	$v0,$a4,$v0
    # Line 1666
    lw	$a6,16($a0)
    # Line 1655
    beqz	$at,.L0da216e8
    slt	$v1,$a2,$v1
    bltz	$a4,.L0da216e8
    nop
    beqz	$v0,.L0da216e8
    nop
    bltz	$a2,.L0da216e8
    nop
    bnez	$v1,.L0da216f4
    nop
.L0da216e8:
    # Line 1662
    lwc1	$f0,156($a1)
    # Line 1668
    jr	$ra
    # Line 1662
    swc1	$f0,20($a5)
.L0da216f4:
    # Line 1666
    mult	$a6,$a2
    lw	$a2,44($a0)
    sllv	$a2,$a3,$a2
    mflo	$a1
    addu	$a1,$a1,$a2
    lw	$a0,0($a0)
    addu	$a1,$a4,$a1
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    lwc1	$f1,0($a0)
    # Line 1668
    jr	$ra
    # Line 1666
    swc1	$f1,20($a5)
.end __glExtractTexel3I

# Function: __glExtractTexel3RGB8
# Declared: Line 1670 (Source lines: 1673-1693)
# Address: 0x0da21730 - 0x0da21804 (Size: 212 bytes, Frame: 0)
.globl __glExtractTexel3RGB8
.ent __glExtractTexel3RGB8
__glExtractTexel3RGB8:
    # Line 1676
    bltz	$a3,.L0da21778
    # Line 1673
    lw	$a7,0($a1)
    # Line 1676
    lw	$at,24($a0)
    lw	$v0,20($a0)
    lw	$v1,28($a0)
    slt	$at,$a3,$at
    slt	$v0,$a4,$v0
    # Line 1687
    lw	$a6,16($a0)
    # Line 1676
    beqz	$at,.L0da21778
    slt	$v1,$a2,$v1
    bltz	$a4,.L0da21778
    nop
    beqz	$v0,.L0da21778
    nop
    bltz	$a2,.L0da21778
    nop
    bnez	$v1,.L0da21794
    nop
.L0da21778:
    # Line 1683
    lwc1	$f2,156($a1)
    swc1	$f2,0($a5)
    # Line 1684
    lwc1	$f1,160($a1)
    swc1	$f1,4($a5)
    # Line 1685
    lwc1	$f0,164($a1)
    # Line 1693
    jr	$ra
    # Line 1685
    swc1	$f0,8($a5)
.L0da21794:
    # Line 1687
    mult	$a6,$a2
    lw	$a2,44($a0)
    sllv	$a2,$a3,$a2
    mflo	$a1
    addu	$a1,$a1,$a2
    lw	$a0,0($a0)
    addu	$a1,$a4,$a1
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    # Line 1689
    lbu	$a2,0($a0)
    mtc1	$a2,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f6,3552($a7)
    mul.s	$f5,$f5,$f6
    swc1	$f5,0($a5)
    # Line 1690
    lbu	$a1,1($a0)
    mtc1	$a1,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,3552($a7)
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a5)
    # Line 1691
    lbu	$a0,2($a0)
    mtc1	$a0,$f3
    cvt.s.w	$f3,$f3
    lwc1	$f4,3552($a7)
    mul.s	$f3,$f3,$f4
    # Line 1693
    jr	$ra
    # Line 1691
    swc1	$f3,8($a5)
.end __glExtractTexel3RGB8

# Function: __glExtractTexel3RGBA8
# Declared: Line 1695 (Source lines: 1698-1720)
# Address: 0x0da21810 - 0x0da21904 (Size: 244 bytes, Frame: 0)
.globl __glExtractTexel3RGBA8
.ent __glExtractTexel3RGBA8
__glExtractTexel3RGBA8:
    # Line 1701
    bltz	$a3,.L0da21858
    # Line 1698
    lw	$a7,0($a1)
    # Line 1701
    lw	$at,24($a0)
    lw	$v0,20($a0)
    lw	$v1,28($a0)
    slt	$at,$a3,$at
    slt	$v0,$a4,$v0
    # Line 1713
    lw	$a6,16($a0)
    # Line 1701
    beqz	$at,.L0da21858
    slt	$v1,$a2,$v1
    bltz	$a4,.L0da21858
    nop
    beqz	$v0,.L0da21858
    nop
    bltz	$a2,.L0da21858
    nop
    bnez	$v1,.L0da2187c
    nop
.L0da21858:
    # Line 1708
    lwc1	$f3,156($a1)
    swc1	$f3,0($a5)
    # Line 1709
    lwc1	$f2,160($a1)
    swc1	$f2,4($a5)
    # Line 1710
    lwc1	$f1,164($a1)
    swc1	$f1,8($a5)
    # Line 1711
    lwc1	$f0,168($a1)
    # Line 1720
    jr	$ra
    # Line 1711
    swc1	$f0,16($a5)
.L0da2187c:
    # Line 1713
    mult	$a6,$a2
    lw	$a2,44($a0)
    sllv	$a2,$a3,$a2
    mflo	$a1
    addu	$a1,$a1,$a2
    lw	$a0,0($a0)
    addu	$a1,$a4,$a1
    sll	$a1,$a1,0x2
    addu	$a0,$a0,$a1
    # Line 1715
    lbu	$a3,0($a0)
    mtc1	$a3,$f7
    cvt.s.w	$f7,$f7
    lwc1	$f8,3552($a7)
    mul.s	$f7,$f7,$f8
    swc1	$f7,0($a5)
    # Line 1716
    lbu	$a2,1($a0)
    mtc1	$a2,$f6
    cvt.s.w	$f6,$f6
    lwc1	$f7,3552($a7)
    mul.s	$f6,$f6,$f7
    swc1	$f6,4($a5)
    # Line 1717
    lbu	$a1,2($a0)
    mtc1	$a1,$f5
    cvt.s.w	$f5,$f5
    lwc1	$f6,3552($a7)
    mul.s	$f5,$f5,$f6
    swc1	$f5,8($a5)
    # Line 1718
    lbu	$a0,3($a0)
    mtc1	$a0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f5,3552($a7)
    mul.s	$f4,$f4,$f5
    # Line 1720
    jr	$ra
    # Line 1718
    swc1	$f4,16($a5)
.end __glExtractTexel3RGBA8

# Function: __glExtractTexel3L_B
# Declared: Line 1727 (Source lines: 1737-1738)
# Address: 0x0da21910 - 0x0da21958 (Size: 72 bytes, Frame: 0)
.globl __glExtractTexel3L_B
.ent __glExtractTexel3L_B
__glExtractTexel3L_B:
    # Line 1737
    lw	$a6,4($a0)
    addiu	$a7,$a3,1
    mult	$a6,$a7
    lw	$a1,16($a0)
    addiu	$a2,$a2,1
    mflo	$v0
    nop
    nop
    mult	$a1,$a2
    mflo	$v1
    addu	$v0,$v0,$v1
    lw	$at,0($a0)
    addu	$v0,$a4,$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1738
    jr	$ra
    # Line 1737
    swc1	$f0,12($a5)
.end __glExtractTexel3L_B

# Function: __glExtractTexel3LA_B
# Declared: Line 1745 (Source lines: 1753-1757)
# Address: 0x0da21960 - 0x0da219b4 (Size: 84 bytes, Frame: 0)
.globl __glExtractTexel3LA_B
.ent __glExtractTexel3LA_B
__glExtractTexel3LA_B:
    # Line 1753
    lw	$a6,4($a0)
    addiu	$a7,$a3,1
    mult	$a6,$a7
    lw	$a1,16($a0)
    addiu	$a2,$a2,1
    mflo	$v0
    nop
    nop
    mult	$a1,$a2
    mflo	$v1
    addu	$v0,$v0,$v1
    addu	$v0,$a4,$v0
    lw	$at,0($a0)
    addu	$v0,$v0,$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 1755
    lwc1	$f1,8($at)
    swc1	$f1,12($a5)
    # Line 1756
    lwc1	$f0,12($at)
    # Line 1757
    jr	$ra
    # Line 1756
    swc1	$f0,16($a5)
.end __glExtractTexel3LA_B

# Function: __glExtractTexel3RGB_B
# Declared: Line 1764 (Source lines: 1772-1777)
# Address: 0x0da219c0 - 0x0da21a20 (Size: 96 bytes, Frame: 0)
.globl __glExtractTexel3RGB_B
.ent __glExtractTexel3RGB_B
__glExtractTexel3RGB_B:
    # Line 1772
    lw	$a7,4($a0)
    addiu	$t0,$a3,1
    mult	$a7,$t0
    lw	$a3,16($a0)
    addiu	$a6,$a2,1
    mflo	$v1
    nop
    nop
    mult	$a3,$a6
    mflo	$a1
    addu	$v1,$v1,$a1
    addu	$v1,$a4,$v1
    sll	$v0,$v1,0x2
    lw	$at,0($a0)
    subu	$v0,$v0,$v1
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 1774
    lwc1	$f2,12($at)
    swc1	$f2,0($a5)
    # Line 1775
    lwc1	$f1,16($at)
    swc1	$f1,4($a5)
    # Line 1776
    lwc1	$f0,20($at)
    # Line 1777
    jr	$ra
    # Line 1776
    swc1	$f0,8($a5)
.end __glExtractTexel3RGB_B

# Function: __glExtractTexel3RGBA_B
# Declared: Line 1784 (Source lines: 1792-1798)
# Address: 0x0da21a20 - 0x0da21a80 (Size: 96 bytes, Frame: 0)
.globl __glExtractTexel3RGBA_B
.ent __glExtractTexel3RGBA_B
__glExtractTexel3RGBA_B:
    # Line 1792
    lw	$a6,4($a0)
    addiu	$a7,$a3,1
    mult	$a6,$a7
    lw	$a1,16($a0)
    addiu	$a2,$a2,1
    mflo	$v0
    nop
    nop
    mult	$a1,$a2
    mflo	$v1
    addu	$v0,$v0,$v1
    lw	$at,0($a0)
    addu	$v0,$a4,$v0
    sll	$v0,$v0,0x4
    addu	$at,$at,$v0
    # Line 1794
    lwc1	$f3,16($at)
    swc1	$f3,0($a5)
    # Line 1795
    lwc1	$f2,20($at)
    swc1	$f2,4($a5)
    # Line 1796
    lwc1	$f1,24($at)
    swc1	$f1,8($a5)
    # Line 1797
    lwc1	$f0,28($at)
    # Line 1798
    jr	$ra
    # Line 1797
    swc1	$f0,16($a5)
.end __glExtractTexel3RGBA_B

# Function: __glExtractTexel3A_B
# Declared: Line 1801 (Source lines: 1811-1812)
# Address: 0x0da21a80 - 0x0da21ac8 (Size: 72 bytes, Frame: 0)
.globl __glExtractTexel3A_B
.ent __glExtractTexel3A_B
__glExtractTexel3A_B:
    # Line 1811
    lw	$a6,4($a0)
    addiu	$a7,$a3,1
    mult	$a6,$a7
    lw	$a1,16($a0)
    addiu	$a2,$a2,1
    mflo	$v0
    nop
    nop
    mult	$a1,$a2
    mflo	$v1
    addu	$v0,$v0,$v1
    lw	$at,0($a0)
    addu	$v0,$a4,$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1812
    jr	$ra
    # Line 1811
    swc1	$f0,16($a5)
.end __glExtractTexel3A_B

# Function: __glExtractTexel3I_B
# Declared: Line 1815 (Source lines: 1825-1826)
# Address: 0x0da21ad0 - 0x0da21b18 (Size: 72 bytes, Frame: 0)
.globl __glExtractTexel3I_B
.ent __glExtractTexel3I_B
__glExtractTexel3I_B:
    # Line 1825
    lw	$a6,4($a0)
    addiu	$a7,$a3,1
    mult	$a6,$a7
    lw	$a1,16($a0)
    addiu	$a2,$a2,1
    mflo	$v0
    nop
    nop
    mult	$a1,$a2
    mflo	$v1
    addu	$v0,$v0,$v1
    lw	$at,0($a0)
    addu	$v0,$a4,$v0
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    lwc1	$f0,4($at)
    # Line 1826
    jr	$ra
    # Line 1825
    swc1	$f0,20($a5)
.end __glExtractTexel3I_B

# Function: __glExtractTexel3RGB8_B
# Declared: Line 1828 (Source lines: 1831-1842)
# Address: 0x0da21b20 - 0x0da21bac (Size: 140 bytes, Frame: 0)
.globl __glExtractTexel3RGB8_B
.ent __glExtractTexel3RGB8_B
__glExtractTexel3RGB8_B:
    # Line 1837
    lw	$a7,4($a0)
    addiu	$t0,$a3,1
    mult	$a7,$t0
    lw	$a3,16($a0)
    addiu	$a6,$a2,1
    mflo	$v1
    nop
    nop
    mult	$a3,$a6
    mflo	$a2
    addu	$v1,$v1,$a2
    lw	$v0,0($a0)
    addu	$v1,$a4,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    # Line 1839
    lbu	$a0,4($v0)
    mtc1	$a0,$f2
    # Line 1831
    lw	$at,0($a1)
    # Line 1839
    cvt.s.w	$f2,$f2
    lwc1	$f3,3552($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,0($a5)
    # Line 1840
    lbu	$v1,5($v0)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f2,3552($at)
    mul.s	$f1,$f1,$f2
    swc1	$f1,4($a5)
    # Line 1841
    lbu	$v0,6($v0)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,3552($at)
    mul.s	$f0,$f0,$f1
    # Line 1842
    jr	$ra
    # Line 1841
    swc1	$f0,8($a5)
.end __glExtractTexel3RGB8_B

# Function: __glExtractTexel3RGBA8_B
# Declared: Line 1844 (Source lines: 1847-1859)
# Address: 0x0da21bb0 - 0x0da21c54 (Size: 164 bytes, Frame: 0)
.globl __glExtractTexel3RGBA8_B
.ent __glExtractTexel3RGBA8_B
__glExtractTexel3RGBA8_B:
    # Line 1853
    lw	$a7,4($a0)
    addiu	$t0,$a3,1
    mult	$a7,$t0
    lw	$a3,16($a0)
    addiu	$a6,$a2,1
    mflo	$v1
    nop
    nop
    mult	$a3,$a6
    mflo	$a2
    addu	$v1,$v1,$a2
    lw	$v0,0($a0)
    addu	$v1,$a4,$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    # Line 1855
    lbu	$a2,4($v0)
    mtc1	$a2,$f3
    # Line 1847
    lw	$at,0($a1)
    # Line 1855
    cvt.s.w	$f3,$f3
    lwc1	$f4,3552($at)
    mul.s	$f3,$f3,$f4
    swc1	$f3,0($a5)
    # Line 1856
    lbu	$a0,5($v0)
    mtc1	$a0,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f3,3552($at)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a5)
    # Line 1857
    lbu	$v1,6($v0)
    mtc1	$v1,$f1
    cvt.s.w	$f1,$f1
    lwc1	$f2,3552($at)
    mul.s	$f1,$f1,$f2
    swc1	$f1,8($a5)
    # Line 1858
    lbu	$v0,7($v0)
    mtc1	$v0,$f0
    cvt.s.w	$f0,$f0
    lwc1	$f1,3552($at)
    mul.s	$f0,$f0,$f1
    # Line 1859
    jr	$ra
    # Line 1858
    swc1	$f0,16($a5)
.end __glExtractTexel3RGBA8_B

# Function: IsTextureConsistent
# Declared: Line 1864 (Source lines: 1873-1926)
# Address: 0x0da21c60 - 0x0da21da4 (Size: 324 bytes, Frame: 0)
.ent IsTextureConsistent
IsTextureConsistent:
    # Line 1873
    lw	$t3,228($a1)
    lw	$a7,4($t3)
    beqz	$a7,.L0da21d78
    # Line 1889
    li	$v1,6408
    # Line 1873
    lw	$t2,8($t3)
    beqz	$t2,.L0da21d78
    nop
    lw	$t8,12($t3)
    beqz	$t8,.L0da21d78
    # Line 1887
    li	$v0,8449
    lw	$at,2484($a0)
    # Line 1879
    lw	$t1,56($t3)
    # Line 1887
    lw	$at,0($at)
    # Line 1883
    lw	$t0,3732($a0)
    # Line 1880
    addu	$a6,$t1,$t1
    # Line 1884
    lw	$t9,64($t3)
    # Line 1882
    subu	$a5,$t8,$a6
    # Line 1881
    subu	$a4,$t2,$a6
    # Line 1908
    lw	$t2,60($t3)
    # Line 1887
    beq	$at,$v0,.L0da21d88
    # Line 1880
    subu	$a3,$a7,$a6
.L0da21cb4:
    # Line 1898
    lw	$a0,16($a1)
    li	$v0,9728
    li	$a1,0x8146
    li	$v1,9729
    beq	$a0,$v0,.L0da21d80
    # Line 1908
    li	$a7,1
    # Line 1898
    beq	$a0,$v1,.L0da21d80
    nop
    beq	$a0,$a1,.L0da21d80
    # Line 1908
    slti	$a2,$t0,2
    bnez	$a2,.L0da21d68
    addiu	$a0,$t3,100
    b	.L0da21d58
    move	$a1,$a7
    nop
.L0da21cf0:
    # Line 1915
    sra	$a5,$a5,0x1
.L0da21cf4:
    # Line 1911
    sra	$a3,$a3,0x1
    # Line 1913
    sra	$a4,$a4,0x1
    # Line 1915
    sltiu	$at,$a5,1
    movn	$a5,$a7,$at
    # Line 1913
    sltiu	$t9,$a4,1
    # Line 1917
    lw	$t8,56($a0)
    # Line 1911
    sltiu	$t3,$a3,1
    # Line 1913
    movn	$a4,$a7,$t9
    # Line 1911
    movn	$a3,$a7,$t3
    # Line 1917
    bne	$t8,$t1,.L0da21d70
    addu	$at,$a6,$a5
    addu	$a2,$a6,$a3
    lw	$v0,60($a0)
    bne	$v0,$t2,.L0da21d70
    addu	$t8,$a6,$a4
    lw	$v1,4($a0)
    lw	$t3,8($a0)
    bne	$v1,$a2,.L0da21d70
    lw	$t9,12($a0)
    bne	$t3,$t8,.L0da21d70
    # Line 1908
    addiu	$a0,$a0,100
    # Line 1917
    bne	$t9,$at,.L0da21d70
    # Line 1908
    addiu	$a1,$a1,1
    beq	$t0,$a1,.L0da21d68
    nop
.L0da21d58:
    # Line 1909
    bne	$a3,$a7,.L0da21cf0
    nop
    bne	$a4,$a7,.L0da21cf4
    # Line 1915
    sra	$a5,$a5,0x1
.L0da21d68:
    # Line 1902
    jr	$ra
    # Line 1926
    li	$v0,1
.L0da21d70:
    # Line 1902
    jr	$ra
    # Line 1922
    move	$v0,$zero
.L0da21d78:
    # Line 1902
    jr	$ra
    # Line 1876
    move	$v0,$zero
.L0da21d80:
    # Line 1902
    jr	$ra
    li	$v0,1
.L0da21d88:
    # Line 1889
    li	$v0,6407
    beq	$t9,$v0,.L0da21cb4
    nop
    beq	$t9,$v1,.L0da21cb4
    # Line 1890
    move	$v0,$zero
    # Line 1902
    jr	$ra
    nop
.end IsTextureConsistent

# Function: __glIsTextureConsistent
# Declared: Line 1929 (Source lines: 1930-1933)
# Address: 0x0da21db0 - 0x0da21e04 (Size: 84 bytes, Frame: 32)
.globl __glIsTextureConsistent
.ent __glIsTextureConsistent
__glIsTextureConsistent:
    # Line 1930
    lui	$at,0x3
    addiu	$sp,$sp,-32
    addiu	$at,$at,-4132
    sd	$gp,16($sp)
    addu	$gp,$t9,$at
    # Line 1931
    # lw $t9, -24460($gp) # &__glLookUpTexture
    # Line 1930
    sd	$s8,8($sp)
    # Line 1931
    nop
    # Line 1930
    sd	$ra,0($sp)
    # Line 1931
    bal __glLookUpTexture
    # Line 1930
    move	$s8,$a0
    # Line 1933
    # lw $t9, -32688($gp) # &sub_0da20000
    addiu	$t9,$t9,7264
    # Line 1931
    move	$a1,$v0
    # Line 1933
    bal __glExtractTexel3RGBA8_B
    move	$a0,$s8
    ld	$ra,0($sp)
    ld	$s8,8($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glIsTextureConsistent

# Function: CheckTexImageArgs
# Declared: Line 1936 (Source lines: 1939-2054)
# Address: 0x0da21e10 - 0x0da2262c (Size: 2076 bytes, Frame: 192)
.ent CheckTexImageArgs
CheckTexImageArgs:
    # Line 1939
    addiu	$sp,$sp,-64
    sd	$a0,0($sp)
    sd	$a4,8($sp)
    sd	$ra,40($sp)
    sd	$s1,24($sp)
    sd	$s3,56($sp)
    # Line 1940
    # lw $t9, -24460($gp) # &__glLookUpTexture
    # Line 1939
    move	$s3,$a2
    sd	$s2,48($sp)
    move	$s2,$a3
    move	$s1,$a5
    sd	$s0,32($sp)
    move	$s0,$a6
    # Line 1940
    bal __glLookUpTexture
    # Line 1939
    sd	$a7,16($sp)
    # Line 1942
    beqz	$v0,.L0da21f7c
    # Line 1940
    move	$a3,$v0
    # Line 1942
    lw	$at,232($v0)
    ld	$v0,16($sp)
    bne	$at,$v0,.L0da21f7c
    # Line 1948
    li	$v0,0x8034
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0da21eb8
    sltu	$a0,$v0,$s0
    beqz	$a0,.L0da21f2c
    # Line 1980
    li	$t9,6408
    # Line 1948
    li	$v0,0x8364
    sltu	$a1,$s0,$v0
    bnez	$a1,.L0da2222c
    sltu	$a2,$v0,$s0
    beqz	$a2,.L0da21ee0
    li	$v0,0x8367
    sltu	$a4,$s0,$v0
    bnez	$a4,.L0da223b4
    sltu	$a5,$v0,$s0
    beqz	$a5,.L0da21f2c
    # Line 1980
    li	$t9,6408
    # Line 1948
    li	$a6,0x8368
    beq	$s0,$a6,.L0da21f2c
    # Line 1980
    li	$t9,6408
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da21eb8:
    # Line 1948
    sltiu	$v0,$s0,5125
    bnez	$v0,.L0da22164
    sltiu	$a7,$s0,5126
    bnez	$a7,.L0da21ffc
    li	$v0,0x8032
    sltu	$t0,$s0,$v0
    bnez	$t0,.L0da222e4
    sltu	$t1,$v0,$s0
    bnez	$t1,.L0da223ec
    li	$a5,0x8033
.L0da21ee0:
    # Line 1964
    li	$t2,6407
.L0da21ee4:
    beq	$s1,$t2,.L0da21ffc
    # Line 1968
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1945
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    # Line 1969
    move	$v0,$zero
    # Line 1945
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da21f14:
    # Line 1948
    li	$v0,0x8036
    sltu	$t3,$s0,$v0
    bnez	$t3,.L0da223d8
    sltu	$t8,$v0,$s0
    bnez	$t8,.L0da21f7c
    # Line 1980
    li	$t9,6408
.L0da21f2c:
    beq	$s1,$t9,.L0da21fa8
    li	$ra,0x8000
    beq	$s1,$ra,.L0da21fac
    # Line 1995
    sltiu	$v1,$s1,6408
    # Line 1980
    li	$at,0x80e1
    beq	$s1,$at,.L0da21fac
    # Line 1995
    sltiu	$v1,$s1,6408
    # Line 1986
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 1945
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    # Line 1987
    move	$v0,$zero
    # Line 1945
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da21f74:
    # Line 1948
    beq	$s0,$v0,.L0da22000
    # Line 1995
    sltiu	$a7,$s1,6408
.L0da21f7c:
    # Line 1944
    # lw $t9, -26452($gp) # &__glSetError
.L0da21f80:
    jal	__glSetError
    li	$a0,1280
    # Line 1945
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    move	$v0,$zero
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da21fa8:
    # Line 1995
    sltiu	$v1,$s1,6408
.L0da21fac:
    bnez	$v1,.L0da22008
    sltiu	$a0,$s1,6409
.L0da21fb4:
    bnez	$a0,.L0da22040
    li	$v0,0x8000
    sltu	$a1,$s1,$v0
    bnez	$a1,.L0da22254
    sltu	$a2,$v0,$s1
    beqz	$a2,.L0da22040
    li	$v0,0x80e1
    sltu	$a4,$s1,$v0
    bnez	$a4,.L0da2241c
    sltu	$a5,$v0,$s1
    beqz	$a5,.L0da22040
    nop
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da21fec:
    # Line 1948
    sltiu	$a6,$s0,5121
    bnez	$a6,.L0da21f74
    li	$v0,5120
    beqz	$a2,.L0da21f7c
.L0da21ffc:
    # Line 1995
    sltiu	$a7,$s1,6408
.L0da22000:
    beqz	$a7,.L0da21fb4
    sltiu	$a0,$s1,6409
.L0da22008:
    sltiu	$t0,$s1,6405
    bnez	$t0,.L0da221c0
    sltiu	$t1,$s1,6406
    bnez	$t1,.L0da22040
    sltiu	$t2,$s1,6407
    bnez	$t2,.L0da2232c
    li	$t1,6406
    sltiu	$t3,$s1,6408
    bnez	$t3,.L0da22040
    nop
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22038:
    # Line 1995
    bne	$s1,$t8,.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22040:
    # Line 2008
    bltz	$s3,.L0da22198
    # Line 2010
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2008
    ld	$t9,0($sp)
    lw	$t9,3732($t9)
    slt	$t9,$s3,$t9
    beqz	$t9,.L0da22194
    # Line 2014
    li	$v0,0x8046
    slt	$ra,$s2,$v0
    bnez	$ra,.L0da220cc
    slt	$at,$v0,$s2
    beqz	$at,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$v0,0x8051
    slt	$v1,$s2,$v0
    bnez	$v1,.L0da22274
    slt	$a0,$v0,$s2
    beqz	$a0,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$v0,0x8057
    slt	$a1,$s2,$v0
    bnez	$a1,.L0da22430
    slt	$a2,$v0,$s2
    beqz	$a2,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$v0,0x805a
    slt	$a4,$s2,$v0
    bnez	$a4,.L0da22594
    slt	$a5,$v0,$s2
    beqz	$a5,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$a6,0x805b
    beq	$s2,$a6,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da220cc:
    # Line 2014
    li	$v0,0x803b
    slt	$a7,$s2,$v0
    bnez	$a7,.L0da221e8
    slt	$t0,$v0,$s2
    beqz	$t0,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$v0,0x8041
    slt	$t1,$s2,$v0
    bnez	$t1,.L0da22378
    slt	$t2,$v0,$s2
    beqz	$t2,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$v0,0x8044
    slt	$t3,$s2,$v0
    bnez	$t3,.L0da22540
    slt	$t8,$v0,$s2
    beqz	$t8,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$t9,0x8045
    beq	$s2,$t9,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22128:
    # Line 2014
    bnez	$ra,.L0da224cc
    li	$a1,1
    beqz	$a2,.L0da21f7c
.L0da22134:
    # Line 2050
    ld	$v0,8($sp)
.L0da22138:
    bltz	$v0,.L0da22194
    slti	$at,$v0,2
    beqz	$at,.L0da22194
    # Line 1945
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    # Line 2054
    move	$v0,$a3
    # Line 1945
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da22164:
    # Line 1948
    sltiu	$a2,$s0,5122
    bnez	$a2,.L0da21fec
    sltiu	$v1,$s0,5123
    bnez	$v1,.L0da22000
    # Line 1995
    sltiu	$a7,$s1,6408
    # Line 1948
    sltiu	$a0,$s0,5124
    bnez	$a0,.L0da2240c
    li	$a7,5123
    bnez	$v0,.L0da22000
    # Line 1995
    sltiu	$a7,$s1,6408
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22194:
    # Line 2010
    # lw $t9, -26452($gp) # &__glSetError
.L0da22198:
    jal	__glSetError
    li	$a0,1281
    # Line 1945
    ld	$s0,32($sp)
    ld	$ra,40($sp)
    ld	$s1,24($sp)
    # Line 2011
    move	$v0,$zero
    # Line 1945
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da221c0:
    # Line 1995
    sltiu	$a1,$s1,6403
    bnez	$a1,.L0da22038
    li	$t8,6400
    sltiu	$a2,$s1,6404
    bnez	$a2,.L0da22040
    li	$a4,6404
    beq	$s1,$a4,.L0da22040
    nop
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da221e8:
    # Line 2014
    slti	$v0,$s2,6407
    bnez	$v0,.L0da222b8
    slti	$a2,$s2,3
    slti	$a5,$s2,6408
    bnez	$a5,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    slti	$v0,$s2,6410
    bnez	$v0,.L0da224b4
    slti	$a0,$s2,6409
    slti	$a6,$s2,6411
    bnez	$a6,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$a7,10768
    beq	$s2,$a7,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2222c:
    # Line 1948
    li	$v0,0x8362
    sltu	$t0,$s0,$v0
    bnez	$t0,.L0da21f14
    sltu	$t1,$v0,$s0
    beqz	$t1,.L0da21ee0
    li	$t2,0x8363
    beq	$s0,$t2,.L0da21ee4
    # Line 1964
    li	$t2,6407
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22254:
    # Line 1995
    sltiu	$t3,$s1,6410
    bnez	$t3,.L0da2231c
    li	$t0,6409
    sltiu	$t8,$s1,6411
    bnez	$t8,.L0da22040
    nop
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22274:
    # Line 2014
    li	$v0,0x804c
    slt	$t9,$s2,$v0
    bnez	$t9,.L0da2233c
    slt	$ra,$v0,$s2
    beqz	$ra,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$v0,0x804f
    slt	$at,$s2,$v0
    bnez	$at,.L0da2250c
    slt	$v1,$v0,$s2
    beqz	$v1,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$a0,0x8050
    beq	$s2,$a0,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da222b8:
    # Line 2014
    bnez	$a2,.L0da22128
    slti	$ra,$s2,2
    slti	$a1,$s2,4
    bnez	$a1,.L0da22134
    slti	$a2,$s2,6406
    bnez	$a2,.L0da22584
    li	$t9,4
    bnez	$v0,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da222e4:
    # Line 1948
    sltiu	$a4,$s0,6656
    bnez	$a4,.L0da223fc
    li	$a6,5126
    sltiu	$a5,$s0,6657
    beqz	$a5,.L0da21f7c
    # Line 1950
    li	$a6,6400
    bne	$s1,$a6,.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 1951
    ld	$a7,16($sp)
    slti	$a7,$a7,3
    bnez	$a7,.L0da22000
    # Line 1995
    sltiu	$a7,$s1,6408
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2231c:
    # Line 1995
    beq	$s1,$t0,.L0da22040
    nop
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2232c:
    # Line 1995
    beq	$s1,$t1,.L0da22040
    nop
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2233c:
    # Line 2014
    li	$v0,0x8049
    slt	$t2,$s2,$v0
    bnez	$t2,.L0da2246c
    slt	$t3,$v0,$s2
    beqz	$t3,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$v0,0x804b
    slt	$t8,$s2,$v0
    bnez	$t8,.L0da225dc
    li	$a0,0x804a
    slt	$t9,$v0,$s2
    beqz	$t9,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22378:
    # Line 2014
    li	$v0,0x803e
    slt	$ra,$s2,$v0
    bnez	$ra,.L0da22490
    slt	$at,$v0,$s2
    beqz	$at,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$v0,0x8040
    slt	$v1,$s2,$v0
    bnez	$v1,.L0da225fc
    li	$a2,0x803f
    slt	$a0,$v0,$s2
    beqz	$a0,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da223b4:
    # Line 1948
    li	$v0,0x8366
    sltu	$a1,$s0,$v0
    bnez	$a1,.L0da224dc
    li	$a2,0x8365
    sltu	$a2,$v0,$s0
    beqz	$a2,.L0da21f2c
    # Line 1980
    li	$t9,6408
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da223d8:
    # Line 1948
    li	$a4,0x8035
    beq	$s0,$a4,.L0da21f2c
    # Line 1980
    li	$t9,6408
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da223ec:
    # Line 1948
    beq	$s0,$a5,.L0da21f2c
    # Line 1980
    li	$t9,6408
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da223fc:
    # Line 1948
    beq	$s0,$a6,.L0da22000
    # Line 1995
    sltiu	$a7,$s1,6408
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2240c:
    # Line 1948
    beq	$s0,$a7,.L0da22000
    # Line 1995
    sltiu	$a7,$s1,6408
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2241c:
    # Line 1995
    li	$t0,0x80e0
    beq	$s1,$t0,.L0da22040
    nop
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22430:
    # Line 2014
    li	$v0,0x8054
    slt	$t1,$s2,$v0
    bnez	$t1,.L0da224ec
    slt	$t2,$v0,$s2
    beqz	$t2,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    # Line 2014
    li	$v0,0x8056
    slt	$t3,$s2,$v0
    bnez	$t3,.L0da2261c
    li	$a5,0x8055
    slt	$t8,$v0,$s2
    beqz	$t8,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2246c:
    # Line 2014
    li	$v0,0x8048
    slt	$t9,$s2,$v0
    bnez	$t9,.L0da22530
    li	$t0,0x8047
    slt	$ra,$v0,$s2
    beqz	$ra,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22490:
    # Line 2014
    li	$v0,0x803d
    slt	$at,$s2,$v0
    bnez	$at,.L0da22564
    li	$t3,0x803c
    slt	$v1,$v0,$s2
    beqz	$v1,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da224b4:
    # Line 2014
    bnez	$a0,.L0da22574
    li	$t8,6408
    bnez	$v0,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da224cc:
    # Line 2014
    beq	$s2,$a1,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da224dc:
    # Line 1948
    beq	$s0,$a2,.L0da21f2c
    # Line 1980
    li	$t9,6408
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da224ec:
    # Line 2014
    li	$v0,0x8053
    slt	$a4,$s2,$v0
    bnez	$a4,.L0da225b8
    slt	$a5,$v0,$s2
    beqz	$a5,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2250c:
    # Line 2014
    li	$v0,0x804e
    slt	$a6,$s2,$v0
    bnez	$a6,.L0da225cc
    li	$v1,0x804d
    slt	$a7,$v0,$s2
    beqz	$a7,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22530:
    # Line 2014
    beq	$s2,$t0,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22540:
    # Line 2014
    li	$v0,0x8043
    slt	$t1,$s2,$v0
    bnez	$t1,.L0da225ec
    li	$a1,0x8042
    slt	$t2,$v0,$s2
    beqz	$t2,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22564:
    # Line 2014
    beq	$s2,$t3,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22574:
    # Line 2014
    beq	$s2,$t8,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22584:
    # Line 2014
    beq	$s2,$t9,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da22594:
    # Line 2014
    li	$v0,0x8059
    slt	$ra,$s2,$v0
    bnez	$ra,.L0da2260c
    li	$a4,0x8058
    slt	$at,$v0,$s2
    beqz	$at,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da225b8:
    # Line 2014
    li	$v0,0x8052
    beq	$s2,$v0,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da225cc:
    # Line 2014
    beq	$s2,$v1,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da225dc:
    # Line 2014
    beq	$s2,$a0,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da225ec:
    # Line 2014
    beq	$s2,$a1,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da225fc:
    # Line 2014
    beq	$s2,$a2,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2260c:
    # Line 2014
    beq	$s2,$a4,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2261c:
    # Line 2014
    beq	$s2,$a5,.L0da22138
    # Line 2050
    ld	$v0,8($sp)
    b	.L0da21f80
    # Line 1944
    nop	# was lw $t9, -26452($gp) # &__glSetError
.end CheckTexImageArgs

# Function: ComputeTexLevelSize
# Declared: Line 2058 (Source lines: 2063-2237)
# Address: 0x0da22630 - 0x0da22d18 (Size: 1768 bytes, Frame: 208)
.ent ComputeTexLevelSize
ComputeTexLevelSize:
    # Line 2063
    addiu	$sp,$sp,-80
    lw	$t8,84($sp)
    li	$t9,1
    addu	$t1,$t8,$t8
    sllv	$t2,$t9,$a3
    subu	$v0,$a5,$t1
    mult	$t2,$v0
    lw	$t3,92($sp)
    slti	$at,$t3,3
    mflo	$t0
    beqz	$at,.L0da22694
    nop
    # Line 2070
    lw	$a3,3724($a0)
    slt	$v1,$a3,$t0
    bnez	$v1,.L0da227ac
    subu	$a1,$a6,$t1
    mult	$t2,$a1
    mflo	$a0
    slt	$a0,$a3,$a0
    bnez	$a0,.L0da227b0
    # Line 2073
    li	$v0,-1
    # Line 2075
    mult	$a5,$a6
    mflo	$t0
    b	.L0da226f4
    # Line 2092
    sw	$zero,92($a2)
.L0da22694:
    # Line 2077
    lw	$a3,3728($a0)
    slt	$at,$a3,$t0
    bnez	$at,.L0da22788
    subu	$v1,$a6,$t1
    mult	$t2,$v1
    mflo	$v0
    slt	$v0,$a3,$v0
    bnez	$v0,.L0da2278c
    # Line 2081
    li	$v0,-1
    # Line 2077
    subu	$a1,$a7,$t1
    mult	$t2,$a1
    mflo	$a0
    slt	$a0,$a3,$a0
    bnez	$a0,.L0da2278c
    # Line 2081
    li	$v0,-1
    # Line 2083
    mult	$a5,$a6
    mflo	$a3
    nop
    nop
    mult	$a7,$a3
    mflo	$t0
    nop
    nop
    # Line 2092
    sw	$zero,92($a2)
.L0da226f4:
    # Line 2091
    sw	$zero,88($a2)
    # Line 2090
    sw	$zero,84($a2)
    # Line 2089
    sw	$zero,80($a2)
    # Line 2094
    li	$a0,0x8046
    # Line 2088
    sw	$zero,76($a2)
    # Line 2094
    slt	$a5,$a4,$a0
    # Line 2087
    sw	$zero,72($a2)
    # Line 2094
    bnez	$a5,.L0da227b8
    # Line 2086
    sw	$a4,60($a2)
    # Line 2094
    slt	$a6,$a0,$a4
    beqz	$a6,.L0da2285c
    li	$a0,0x8051
    slt	$a7,$a4,$a0
    bnez	$a7,.L0da2291c
    slt	$t1,$a0,$a4
    beqz	$t1,.L0da2289c
    li	$a0,0x8057
    slt	$t2,$a4,$a0
    bnez	$t2,.L0da22a28
    slt	$t9,$a0,$a4
    bnez	$t9,.L0da22b08
    li	$a3,6408
.L0da2274c:
    # Line 2172
    li	$v0,24
.L0da22750:
    # Line 2175
    sw	$v0,84($a2)
    # Line 2174
    sw	$v0,80($a2)
    # Line 2173
    sw	$v0,76($a2)
    # Line 2172
    sw	$v0,72($a2)
    # Line 2176
    li	$at,3
    # Line 2171
    sw	$a3,68($a2)
    # Line 2176
    li	$a0,16
    beq	$t3,$at,.L0da22c94
    # Line 2170
    sw	$a3,64($a2)
    # Line 2181
    beqz	$t8,.L0da22cb4
    # Line 2187
    la	$a6,__glExtractTexelRGBA
    # Line 2185
    la	$v1,__glExtractTexelRGBA_B
    b	.L0da2279c
    sw	$v1,96($a2)
.L0da22788:
    # Line 2081
    li	$v0,-1
.L0da2278c:
    # Line 2237
    jr	$ra
    addiu	$sp,$sp,80
.L0da22794:
    # Line 2094
    beq	$a4,$t9,.L0da2297c
    # Line 2232
    lw	$a0,0($sp)
.L0da2279c:
    # Line 2237
    mult	$t0,$a0
    mflo	$v0
    jr	$ra
    addiu	$sp,$sp,80
.L0da227ac:
    # Line 2073
    li	$v0,-1
.L0da227b0:
    # Line 2237
    jr	$ra
    addiu	$sp,$sp,80
.L0da227b8:
    # Line 2094
    li	$a0,0x803b
    slt	$a1,$a4,$a0
    bnez	$a1,.L0da2280c
    slt	$a3,$a0,$a4
    beqz	$a3,.L0da228e8
    li	$a0,0x8041
    slt	$a5,$a4,$a0
    bnez	$a5,.L0da229e0
    slt	$a6,$a0,$a4
    beqz	$a6,.L0da22980
    # Line 2100
    li	$v0,24
    # Line 2094
    li	$a0,0x8044
    slt	$a7,$a4,$a0
    bnez	$a7,.L0da22b4c
    slt	$t1,$a0,$a4
    beqz	$t1,.L0da2285c
    li	$t2,0x8045
    bne	$a4,$t2,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da22860
    # Line 2122
    li	$a4,24
.L0da2280c:
    # Line 2094
    slti	$a0,$a4,6407
    bnez	$a0,.L0da22890
    slti	$a3,$a4,3
    slti	$t9,$a4,6408
    bnez	$t9,.L0da228a0
    # Line 2147
    li	$t2,24
    # Line 2094
    slti	$a0,$a4,6410
    bnez	$a0,.L0da22968
    slti	$at,$a4,6411
    bnez	$at,.L0da2285c
    li	$v0,10768
    bne	$a4,$v0,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da228a0
    # Line 2147
    li	$t2,24
.L0da22848:
    # Line 2094
    slti	$v1,$a4,2
    bnez	$v1,.L0da22794
    nop
    beqz	$a3,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
.L0da2285c:
    # Line 2122
    li	$a4,24
.L0da22860:
    # Line 2123
    sw	$a4,84($a2)
    # Line 2122
    sw	$a4,88($a2)
    # Line 2124
    li	$a3,3
    # Line 2120
    li	$a1,6410
    # Line 2121
    sw	$a1,68($a2)
    # Line 2124
    li	$a0,8
    beq	$t3,$a3,.L0da22a14
    # Line 2120
    sw	$a1,64($a2)
    # Line 2129
    beqz	$t8,.L0da22a60
    # Line 2133
    la	$a5,__glExtractTexelLA_B
    b	.L0da2279c
    sw	$a5,96($a2)
.L0da22890:
    # Line 2094
    bnez	$a3,.L0da22848
    slti	$a6,$a4,4
    beqz	$a6,.L0da228d4
.L0da2289c:
    # Line 2147
    li	$t2,24
.L0da228a0:
    # Line 2149
    sw	$t2,80($a2)
    # Line 2148
    sw	$t2,76($a2)
    # Line 2147
    sw	$t2,72($a2)
    # Line 2150
    li	$t1,3
    # Line 2145
    li	$a7,6407
    # Line 2146
    sw	$a7,68($a2)
    # Line 2150
    li	$a0,12
    beq	$t3,$t1,.L0da22ad4
    # Line 2145
    sw	$a7,64($a2)
    # Line 2155
    beqz	$t8,.L0da22ae4
    # Line 2159
    la	$t3,__glExtractTexelRGB_B
    b	.L0da2279c
    sw	$t3,96($a2)
.L0da228d4:
    # Line 2094
    slti	$t9,$a4,6406
    bnez	$t9,.L0da22bc8
    li	$a1,4
    beqz	$a0,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
.L0da228e8:
    # Line 2196
    li	$v1,24
.L0da228ec:
    sw	$v1,84($a2)
    # Line 2197
    li	$v0,3
    # Line 2194
    li	$at,6406
    # Line 2195
    sw	$at,68($a2)
    # Line 2197
    li	$a0,4
    beq	$t3,$v0,.L0da22af0
    # Line 2194
    sw	$at,64($a2)
    # Line 2202
    beqz	$t8,.L0da22b00
    # Line 2208
    la	$a3,__glExtractTexelA
    # Line 2206
    la	$a1,__glExtractTexelA_B
    b	.L0da2279c
    sw	$a1,96($a2)
.L0da2291c:
    # Line 2094
    li	$a0,0x804c
    slt	$a3,$a4,$a0
    bnez	$a3,.L0da229ac
    slt	$a5,$a0,$a4
    bnez	$a5,.L0da22a6c
    li	$a0,0x804f
    li	$a3,0x8049
.L0da22938:
    # Line 2217
    li	$a7,24
.L0da2293c:
    sw	$a7,92($a2)
    # Line 2218
    li	$a6,3
    # Line 2216
    sw	$a3,68($a2)
    # Line 2218
    li	$a0,4
    beq	$t3,$a6,.L0da22c48
    # Line 2215
    sw	$a3,64($a2)
    # Line 2223
    beqz	$t8,.L0da22c78
    # Line 2229
    la	$v0,__glExtractTexelI
    # Line 2227
    la	$t1,__glExtractTexelI_B
    b	.L0da2279c
    sw	$t1,96($a2)
.L0da22968:
    # Line 2094
    slti	$t2,$a4,6409
    bnez	$t2,.L0da22bb8
    li	$a3,6408
    beqz	$a0,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
.L0da2297c:
    # Line 2100
    li	$v0,24
.L0da22980:
    sw	$v0,88($a2)
    # Line 2101
    li	$at,3
    # Line 2098
    li	$t9,6409
    # Line 2099
    sw	$t9,68($a2)
    # Line 2101
    li	$a0,4
    beq	$t3,$at,.L0da22c68
    # Line 2098
    sw	$t9,64($a2)
    # Line 2106
    beqz	$t8,.L0da22c88
    # Line 2110
    la	$v1,__glExtractTexelL_B
    b	.L0da2279c
    sw	$v1,96($a2)
.L0da229ac:
    # Line 2094
    li	$a3,0x8049
    slt	$a0,$a4,$a3
    bnez	$a0,.L0da22a94
    slt	$a1,$a3,$a4
    beqz	$a1,.L0da22938
    li	$a0,0x804b
    slt	$a5,$a4,$a0
    bnez	$a5,.L0da22c0c
    slt	$a6,$a0,$a4
    bnez	$a6,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da2293c
    # Line 2217
    li	$a7,24
.L0da229e0:
    # Line 2094
    li	$a0,0x803e
    slt	$a7,$a4,$a0
    bnez	$a7,.L0da22ab4
    slt	$t1,$a0,$a4
    beqz	$t1,.L0da228e8
    li	$a0,0x8040
    slt	$t2,$a4,$a0
    bnez	$t2,.L0da22c34
    slt	$t9,$a0,$a4
    bnez	$t9,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da22980
    # Line 2100
    li	$v0,24
.L0da22a14:
    # Line 2124
    beqz	$t8,.L0da22c80
    # Line 2129
    la	$v1,__glExtractTexel3LA
    # Line 2127
    la	$at,__glExtractTexel3LA_B
    b	.L0da2279c
    sw	$at,96($a2)
.L0da22a28:
    # Line 2094
    li	$a0,0x8054
    slt	$v0,$a4,$a0
    bnez	$v0,.L0da22b28
    slt	$v1,$a0,$a4
    beqz	$v1,.L0da2289c
    li	$a0,0x8056
    slt	$a1,$a4,$a0
    bnez	$a1,.L0da22ca4
    li	$a5,0x8055
    slt	$a3,$a0,$a4
    bnez	$a3,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    # Line 2094
    b	.L0da2274c
    li	$a3,6408
.L0da22a60:
    # Line 2135
    la	$a4,__glExtractTexelLA
    b	.L0da2279c
    sw	$a4,96($a2)
.L0da22a6c:
    # Line 2094
    slt	$a5,$a4,$a0
    bnez	$a5,.L0da22b6c
    slt	$a6,$a0,$a4
    beqz	$a6,.L0da228a0
    # Line 2147
    li	$t2,24
    # Line 2094
    li	$a7,0x8050
    bne	$a4,$a7,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da228a0
    # Line 2147
    li	$t2,24
.L0da22a94:
    # Line 2094
    li	$a0,0x8048
    slt	$t1,$a4,$a0
    bnez	$t1,.L0da22b90
    slt	$t2,$a0,$a4
    bnez	$t2,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da22860
    # Line 2122
    li	$a4,24
.L0da22ab4:
    # Line 2094
    li	$a0,0x803d
    slt	$t9,$a4,$a0
    bnez	$t9,.L0da22ba4
    slt	$at,$a0,$a4
    bnez	$at,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da228ec
    # Line 2196
    li	$v1,24
.L0da22ad4:
    # Line 2150
    beqz	$t8,.L0da22cdc
    # Line 2153
    la	$v0,__glExtractTexel3RGB_B
    b	.L0da2279c
    sw	$v0,96($a2)
.L0da22ae4:
    # Line 2161
    la	$v1,__glExtractTexelRGB
    b	.L0da2279c
    sw	$v1,96($a2)
.L0da22af0:
    # Line 2197
    beqz	$t8,.L0da22ce8
    # Line 2200
    la	$a1,__glExtractTexel3A_B
    b	.L0da2279c
    sw	$a1,96($a2)
.L0da22b00:
    b	.L0da2279c
    # Line 2208
    sw	$a3,96($a2)
.L0da22b08:
    # Line 2094
    li	$a0,0x805a
    slt	$a5,$a4,$a0
    bnez	$a5,.L0da22bd8
    slt	$a6,$a0,$a4
    bnez	$a6,.L0da22cbc
    li	$a7,0x805b
    b	.L0da2274c
    li	$a3,6408
.L0da22b28:
    li	$a0,0x8053
    slt	$a7,$a4,$a0
    bnez	$a7,.L0da22bfc
    li	$a6,0x8052
    slt	$t1,$a0,$a4
    bnez	$t1,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da228a0
    # Line 2147
    li	$t2,24
.L0da22b4c:
    # Line 2094
    li	$a0,0x8043
    slt	$t2,$a4,$a0
    bnez	$t2,.L0da22c20
    slt	$t9,$a0,$a4
    bnez	$t9,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da22860
    # Line 2122
    li	$a4,24
.L0da22b6c:
    # Line 2094
    li	$a0,0x804e
    slt	$at,$a4,$a0
    bnez	$at,.L0da22c58
    li	$t9,0x804d
    slt	$v0,$a0,$a4
    bnez	$v0,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da228a0
    # Line 2147
    li	$t2,24
.L0da22b90:
    # Line 2094
    li	$v1,0x8047
    bne	$a4,$v1,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da22860
    # Line 2122
    li	$a4,24
.L0da22ba4:
    # Line 2094
    li	$a0,0x803c
    bne	$a4,$a0,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da228ec
    # Line 2196
    li	$v1,24
.L0da22bb8:
    # Line 2094
    bne	$a4,$a3,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da22750
    # Line 2172
    li	$v0,24
.L0da22bc8:
    # Line 2094
    bne	$a4,$a1,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da2274c
    # Line 2094
    li	$a3,6408
.L0da22bd8:
    li	$a0,0x8059
    slt	$a3,$a4,$a0
    bnez	$a3,.L0da22ccc
    li	$t1,0x8058
    slt	$a5,$a0,$a4
    bnez	$a5,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    # Line 2094
    b	.L0da2274c
    li	$a3,6408
.L0da22bfc:
    bne	$a4,$a6,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da228a0
    # Line 2147
    li	$t2,24
.L0da22c0c:
    # Line 2094
    li	$a7,0x804a
    bne	$a4,$a7,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da2293c
    # Line 2217
    li	$a7,24
.L0da22c20:
    # Line 2094
    li	$t1,0x8042
    bne	$a4,$t1,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da22980
    # Line 2100
    li	$v0,24
.L0da22c34:
    # Line 2094
    li	$t2,0x803f
    bne	$a4,$t2,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    b	.L0da22980
    # Line 2100
    li	$v0,24
.L0da22c48:
    # Line 2218
    beqz	$t8,.L0da22cf4
    # Line 2221
    la	$t3,__glExtractTexel3I_B
    b	.L0da2279c
    sw	$t3,96($a2)
.L0da22c58:
    # Line 2094
    bne	$a4,$t9,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    # Line 2094
    b	.L0da22938
    li	$a3,0x8049
.L0da22c68:
    # Line 2101
    beqz	$t8,.L0da22d00
    # Line 2104
    la	$at,__glExtractTexel3L_B
    b	.L0da2279c
    sw	$at,96($a2)
.L0da22c78:
    b	.L0da2279c
    # Line 2229
    sw	$v0,96($a2)
.L0da22c80:
    b	.L0da2279c
    # Line 2129
    sw	$v1,96($a2)
.L0da22c88:
    # Line 2112
    la	$a1,__glExtractTexelL
    b	.L0da2279c
    sw	$a1,96($a2)
.L0da22c94:
    # Line 2176
    beqz	$t8,.L0da22d0c
    # Line 2179
    la	$a3,__glExtractTexel3RGBA_B
    b	.L0da2279c
    sw	$a3,96($a2)
.L0da22ca4:
    # Line 2094
    bne	$a4,$a5,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    # Line 2094
    b	.L0da2274c
    li	$a3,6408
.L0da22cb4:
    b	.L0da2279c
    # Line 2187
    sw	$a6,96($a2)
.L0da22cbc:
    # Line 2094
    bne	$a4,$a7,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    # Line 2094
    b	.L0da2274c
    li	$a3,6408
.L0da22ccc:
    bne	$a4,$t1,.L0da2279c
    # Line 2232
    lw	$a0,0($sp)
    # Line 2094
    b	.L0da2274c
    li	$a3,6408
.L0da22cdc:
    # Line 2155
    la	$t2,__glExtractTexel3RGB
    b	.L0da2279c
    sw	$t2,96($a2)
.L0da22ce8:
    # Line 2202
    la	$t3,__glExtractTexel3A
    b	.L0da2279c
    sw	$t3,96($a2)
.L0da22cf4:
    # Line 2223
    la	$t8,__glExtractTexel3I
    b	.L0da2279c
    sw	$t8,96($a2)
.L0da22d00:
    # Line 2106
    # lw $t9, -24288($gp) # &__glExtractTexel3L
    b	.L0da2279c
    sw	$t9,96($a2)
.L0da22d0c:
    # Line 2181
    la	$at,__glExtractTexel3RGBA
    b	.L0da2279c
    sw	$at,96($a2)
.end ComputeTexLevelSize

# Function: __glTexCreateProxyLevel
# Declared: Line 2240 (Source lines: 2244-2285)
# Address: 0x0da22d20 - 0x0da22e80 (Size: 352 bytes, Frame: 240)
.globl __glTexCreateProxyLevel
.ent __glTexCreateProxyLevel
__glTexCreateProxyLevel:
    # Line 2244
    addiu	$sp,$sp,-240
    sd	$a4,120($sp)
    sd	$a6,136($sp)
    move	$v0,$a1
    sd	$a7,144($sp)
    sd	$ra,160($sp)
    move	$ra,$a7
    # Line 2248
    move	$a7,$a6
    # Line 2244
    move	$a6,$a5
    sd	$a5,128($sp)
    lui	$at,0x3
    move	$a5,$a4
    sd	$s3,152($sp)
    addiu	$at,$at,-8084
    # Line 2245
    sll	$t8,$a2,0x2
    sd	$gp,168($sp)
    # Line 2244
    addu	$gp,$t9,$at
    move	$a4,$a3
    # Line 2245
    subu	$t8,$t8,$a2
    # Line 2248
    # lw $t9, -32688($gp) # &sub_0da20000
    # Line 2244
    move	$a3,$a2
    # Line 2245
    lw	$s3,228($a1)
    sll	$t8,$t8,0x3
    # Line 2248
    sw	$ra,4($sp)
    # Line 2245
    addu	$t8,$t8,$a2
    # Line 2248
    addiu	$t9,$t9,9776
    lw	$ra,244($sp)
    addiu	$a2,$sp,16
    # Line 2245
    sll	$t8,$t8,0x2
    # Line 2248
    sw	$ra,12($sp)
    bal __glIsTextureConsistent
    # Line 2245
    addu	$s3,$s3,$t8
    # Line 2248
    bltz	$v0,.L0da22e30
    # Line 2266
    la	$ra,__glNop
    # Line 2285
    ld	$gp,168($sp)
    ld	$ra,160($sp)
    # Line 2271
    ld	$t8,128($sp)
    # Line 2270
    ld	$t9,120($sp)
    # Line 2273
    ld	$t2,144($sp)
    # Line 2272
    ld	$t3,136($sp)
    sw	$t3,12($s3)
    # Line 2273
    sw	$t2,56($s3)
    # Line 2270
    sw	$t9,4($s3)
    # Line 2271
    sw	$t8,8($s3)
    # Line 2274
    lw	$t1,76($sp)
    sw	$t1,60($s3)
    # Line 2275
    lw	$t0,80($sp)
    sw	$t0,64($s3)
    # Line 2276
    lw	$a7,84($sp)
    sw	$a7,68($s3)
    # Line 2277
    lw	$a6,88($sp)
    sw	$a6,72($s3)
    # Line 2278
    lw	$a5,92($sp)
    sw	$a5,76($s3)
    # Line 2279
    lw	$a4,96($sp)
    sw	$a4,80($s3)
    # Line 2280
    lw	$a3,100($sp)
    sw	$a3,84($s3)
    # Line 2281
    lw	$a2,104($sp)
    sw	$a2,88($s3)
    # Line 2282
    lw	$a1,108($sp)
    sw	$a1,92($s3)
    # Line 2283
    lw	$a0,112($sp)
    # Line 2285
    move	$v0,$zero
    # Line 2283
    sw	$a0,96($s3)
    # Line 2285
    ld	$s3,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.L0da22e30:
    ld	$gp,168($sp)
    # Line 2265
    sw	$zero,92($s3)
    # Line 2264
    sw	$zero,88($s3)
    # Line 2263
    sw	$zero,84($s3)
    # Line 2262
    sw	$zero,80($s3)
    # Line 2261
    sw	$zero,76($s3)
    # Line 2260
    sw	$zero,72($s3)
    # Line 2259
    sw	$zero,68($s3)
    # Line 2258
    sw	$zero,64($s3)
    # Line 2257
    sw	$zero,60($s3)
    # Line 2256
    sw	$zero,56($s3)
    # Line 2255
    sw	$zero,12($s3)
    # Line 2266
    sw	$ra,96($s3)
    # Line 2285
    ld	$ra,160($sp)
    # Line 2254
    sw	$zero,8($s3)
    # Line 2285
    move	$v0,$zero
    # Line 2253
    sw	$zero,4($s3)
    # Line 2285
    ld	$s3,152($sp)
    jr	$ra
    addiu	$sp,$sp,240
.end __glTexCreateProxyLevel

# Function: __glTexCreateLevel
# Declared: Line 2288 (Source lines: 2292-2376)
# Address: 0x0da22e80 - 0x0da23158 (Size: 728 bytes, Frame: 144)
.globl __glTexCreateLevel
.ent __glTexCreateLevel
__glTexCreateLevel:
    # Line 2292
    addiu	$sp,$sp,-272
    sd	$a1,136($sp)
    sd	$a0,144($sp)
    sd	$a2,176($sp)
    sd	$a4,128($sp)
    sd	$a6,168($sp)
    move	$v0,$a1
    sd	$a7,152($sp)
    sd	$ra,192($sp)
    move	$ra,$a7
    # Line 2296
    move	$a7,$a6
    # Line 2292
    move	$a6,$a5
    sd	$a5,160($sp)
    lui	$at,0x3
    move	$a5,$a4
    sd	$s0,184($sp)
    addiu	$at,$at,-8436
    # Line 2293
    sll	$t8,$a2,0x2
    sd	$gp,200($sp)
    # Line 2292
    addu	$gp,$t9,$at
    move	$a4,$a3
    # Line 2293
    subu	$t8,$t8,$a2
    # Line 2296
    # lw $t9, -32688($gp) # &sub_0da20000
    # Line 2292
    move	$a3,$a2
    # Line 2293
    lw	$s0,228($a1)
    sll	$t8,$t8,0x3
    # Line 2296
    sw	$ra,4($sp)
    # Line 2293
    addu	$t8,$t8,$a2
    # Line 2296
    addiu	$t9,$t9,9776
    lw	$ra,276($sp)
    addiu	$a2,$sp,16
    # Line 2293
    sll	$t8,$t8,0x2
    # Line 2296
    sw	$ra,12($sp)
    bal __glIsTextureConsistent
    # Line 2293
    addu	$s0,$s0,$t8
    # Line 2296
    bltz	$v0,.L0da23140
    # Line 2301
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 2302
    blez	$v0,.L0da23040
    lw	$a1,0($s0)
    # Line 2305
    ld	$t9,144($sp)
    move	$a0,$t9
    lw	$t9,8($t9)
    jal	__glSetError
    move	$a2,$v0
    beqz	$v0,.L0da23124
    sw	$v0,0($s0)
    # Line 2315
    ld	$a3,168($sp)
    # Line 2316
    ld	$a0,128($sp)
    ld	$a2,160($sp)
    # Line 2315
    sw	$a3,12($s0)
    # Line 2314
    sw	$a2,8($s0)
    # Line 2316
    mult	$a0,$a2
    # Line 2313
    sw	$a0,4($s0)
    # Line 2317
    ld	$a1,152($sp)
    # Line 2318
    # lw $t9, -25436($gp) # &__glFloorLog2
    # Line 2317
    addu	$a1,$a1,$a1
    sd	$a1,120($sp)
    subu	$a0,$a0,$a1
    sw	$a0,20($s0)
    # Line 2316
    mflo	$at
    # Line 2318
    jal	__glFloorLog2
    # Line 2316
    sw	$at,16($s0)
    # Line 2319
    ld	$a1,120($sp)
    # Line 2320
    # lw $t9, -25436($gp) # &__glFloorLog2
    # Line 2319
    ld	$a0,160($sp)
    # Line 2318
    sw	$v0,44($s0)
    # Line 2319
    subu	$a0,$a0,$a1
    # Line 2320
    jal	__glFloorLog2
    # Line 2319
    sw	$a0,24($s0)
    # Line 2321
    ld	$a1,120($sp)
    # Line 2322
    # lw $t9, -25436($gp) # &__glFloorLog2
    # Line 2321
    ld	$a0,168($sp)
    # Line 2320
    sw	$v0,48($s0)
    # Line 2321
    subu	$a0,$a0,$a1
    # Line 2322
    jal	__glFloorLog2
    # Line 2321
    sw	$a0,28($s0)
    # Line 2325
    lw	$t9,28($s0)
    # Line 2324
    lw	$ra,24($s0)
    # Line 2323
    lw	$at,20($s0)
    # Line 2325
    mtc1	$t9,$f0
    # Line 2324
    mtc1	$ra,$f1
    # Line 2323
    mtc1	$at,$f2
    # Line 2322
    sw	$v0,52($s0)
    # Line 2325
    cvt.s.w	$f0,$f0
    # Line 2326
    ld	$t8,152($sp)
    # Line 2324
    cvt.s.w	$f1,$f1
    # Line 2326
    sw	$t8,56($s0)
    # Line 2323
    cvt.s.w	$f2,$f2
    # Line 2325
    swc1	$f0,40($s0)
    # Line 2324
    swc1	$f1,36($s0)
    # Line 2323
    swc1	$f2,32($s0)
    # Line 2327
    lw	$t3,76($sp)
    sw	$t3,60($s0)
    # Line 2328
    lw	$t2,80($sp)
    sw	$t2,64($s0)
    # Line 2329
    lw	$t1,84($sp)
    sw	$t1,68($s0)
    # Line 2330
    lw	$t0,88($sp)
    sw	$t0,72($s0)
    # Line 2331
    lw	$a7,92($sp)
    sw	$a7,76($s0)
    # Line 2332
    lw	$a6,96($sp)
    sw	$a6,80($s0)
    # Line 2333
    lw	$a5,100($sp)
    sw	$a5,84($s0)
    # Line 2334
    lw	$a4,104($sp)
    sw	$a4,88($s0)
    # Line 2335
    lw	$a3,108($sp)
    sw	$a3,92($s0)
    # Line 2336
    lw	$a2,112($sp)
    b	.L0da230b8
    sw	$a2,96($s0)
.L0da23040:
    beqz	$a1,.L0da2305c
    # Line 2340
    ld	$t9,144($sp)
    move	$a0,$t9
    lw	$t9,12($t9)
    jalr	$t9
    nop
    # Line 2341
    sw	$zero,0($s0)
.L0da2305c:
    # Line 2362
    sw	$zero,92($s0)
    # Line 2361
    sw	$zero,88($s0)
    # Line 2360
    sw	$zero,84($s0)
    # Line 2359
    sw	$zero,80($s0)
    # Line 2358
    sw	$zero,76($s0)
    # Line 2357
    sw	$zero,72($s0)
    # Line 2356
    sw	$zero,68($s0)
    # Line 2355
    sw	$zero,64($s0)
    # Line 2354
    li	$at,1
    sw	$at,60($s0)
    # Line 2353
    sw	$zero,56($s0)
    # Line 2352
    sw	$zero,52($s0)
    # Line 2351
    sw	$zero,48($s0)
    # Line 2350
    sw	$zero,44($s0)
    # Line 2349
    sw	$zero,28($s0)
    # Line 2348
    sw	$zero,24($s0)
    # Line 2347
    sw	$zero,20($s0)
    # Line 2346
    sw	$zero,16($s0)
    # Line 2345
    sw	$zero,12($s0)
    # Line 2344
    sw	$zero,8($s0)
    # Line 2343
    sw	$zero,4($s0)
    # Line 2363
    la	$ra,__glNop
    sw	$ra,96($s0)
.L0da230b8:
    ld	$v0,176($sp)
    # Line 2376
    ld	$gp,200($sp)
    # Line 2363
    beqz	$v0,.L0da230e4
    # Line 2376
    ld	$ra,192($sp)
.L0da230c8:
    lw	$v0,0($s0)
    ld	$s0,184($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0da230d8:
    ld	$gp,200($sp)
    jr	$ra
    addiu	$sp,$sp,272
.L0da230e4:
    # Line 2368
    ld	$a0,136($sp)
    lw	$v0,48($s0)
    sw	$v0,236($a0)
    lw	$a0,44($s0)
    slt	$v1,$v0,$a0
    # Line 2373
    ld	$a3,136($sp)
    # Line 2368
    beqz	$v1,.L0da2310c
    # Line 2370
    ld	$a1,136($sp)
    move	$v0,$a0
    sw	$a0,236($a1)
.L0da2310c:
    lw	$a0,52($s0)
    slt	$a2,$v0,$a0
    beqz	$a2,.L0da230c8
    nop
    # Line 2373
    b	.L0da230c8
    sw	$a0,236($a3)
.L0da23124:
    # Line 2309
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,184($sp)
    jal	__glSetError
    li	$a0,1285
    ld	$ra,192($sp)
    # Line 2310
    b	.L0da230d8
    move	$v0,$zero
.L0da23140:
    ld	$s0,184($sp)
    # Line 2301
    jalr	$t9
    li	$a0,1281
    ld	$ra,192($sp)
    # Line 2302
    b	.L0da230d8
    move	$v0,$zero
.end __glTexCreateLevel

# Function: __glInitTexImageStore
# Declared: Line 2383 (Source lines: 2386-2436)
# Address: 0x0da23160 - 0x0da232a0 (Size: 320 bytes, Frame: 0)
.globl __glInitTexImageStore
.ent __glInitTexImageStore
__glInitTexImageStore:
    # Line 2386
    sll	$a5,$a3,0x2
    subu	$a5,$a5,$a3
    sll	$a5,$a5,0x3
    lw	$a4,228($a2)
    addu	$a5,$a5,$a3
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    # Line 2388
    lw	$a3,0($a4)
    # Line 2389
    sw	$zero,128($a1)
    # Line 2390
    sw	$zero,132($a1)
    # Line 2391
    sw	$zero,136($a1)
    # Line 2392
    sw	$zero,120($a1)
    # Line 2393
    li	$a5,1
    sw	$a5,124($a1)
    # Line 2388
    sw	$a3,88($a1)
    # Line 2394
    lw	$a0,4($a4)
    sw	$a0,140($a1)
    # Line 2395
    lw	$v1,8($a4)
    sw	$v1,144($a1)
    # Line 2396
    lw	$v0,232($a2)
    sw	$v0,432($a1)
    lw	$at,232($a2)
    beq	$at,$a5,.L0da23210
    # Line 2401
    li	$a6,6409
.L0da231c0:
    lw	$a2,68($a4)
    li	$t0,0x8049
    li	$a7,6410
    li	$a3,6407
    beq	$a2,$a6,.L0da23234
    # Line 2405
    li	$v0,4
    # Line 2401
    beq	$a2,$a7,.L0da2324c
    # Line 2410
    li	$a0,4
    # Line 2401
    beq	$a2,$a3,.L0da23260
    # Line 2415
    li	$a4,4
    # Line 2401
    li	$a3,6408
    beq	$a2,$a3,.L0da23274
    # Line 2420
    li	$a6,4
    # Line 2401
    li	$a3,6406
    beq	$a2,$a3,.L0da23288
    nop
    beq	$a2,$t0,.L0da2321c
    # Line 2430
    li	$t8,4
    # Line 2436
    jr	$ra
    nop
.L0da23210:
    # Line 2398
    lw	$t1,56($a4)
    b	.L0da231c0
    sw	$t1,132($a1)
.L0da2321c:
    # Line 2430
    sw	$t8,148($a1)
    # Line 2429
    li	$t3,5126
    sw	$t3,84($a1)
    # Line 2428
    li	$t2,6403
    # Line 2436
    jr	$ra
    # Line 2428
    sw	$t2,80($a1)
.L0da23234:
    # Line 2405
    sw	$v0,148($a1)
    # Line 2404
    li	$at,5126
    sw	$at,84($a1)
    # Line 2403
    li	$t9,6403
    # Line 2436
    jr	$ra
    # Line 2403
    sw	$t9,80($a1)
.L0da2324c:
    # Line 2410
    sw	$a0,148($a1)
    # Line 2409
    li	$v1,5126
    sw	$v1,84($a1)
    # Line 2436
    jr	$ra
    # Line 2408
    sw	$a5,80($a1)
.L0da23260:
    # Line 2415
    sw	$a4,148($a1)
    # Line 2414
    li	$a2,5126
    sw	$a2,84($a1)
    # Line 2436
    jr	$ra
    # Line 2413
    sw	$a3,80($a1)
.L0da23274:
    # Line 2420
    sw	$a6,148($a1)
    # Line 2419
    li	$a5,5126
    sw	$a5,84($a1)
    # Line 2436
    jr	$ra
    # Line 2418
    sw	$a3,80($a1)
.L0da23288:
    # Line 2425
    li	$t0,4
    sw	$t0,148($a1)
    # Line 2424
    li	$a7,5126
    sw	$a7,84($a1)
    # Line 2436
    jr	$ra
    # Line 2423
    sw	$a3,80($a1)
.end __glInitTexImageStore

# Function: __glInitTexImageGet
# Declared: Line 2442 (Source lines: 2445-2495)
# Address: 0x0da232a0 - 0x0da233e0 (Size: 320 bytes, Frame: 0)
.globl __glInitTexImageGet
.ent __glInitTexImageGet
__glInitTexImageGet:
    # Line 2445
    sll	$a5,$a3,0x2
    subu	$a5,$a5,$a3
    sll	$a5,$a5,0x3
    lw	$a4,228($a2)
    addu	$a5,$a5,$a3
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    # Line 2447
    lw	$a3,0($a4)
    # Line 2448
    sw	$zero,48($a1)
    # Line 2449
    sw	$zero,52($a1)
    # Line 2450
    sw	$zero,56($a1)
    # Line 2451
    sw	$zero,40($a1)
    # Line 2452
    li	$a5,1
    sw	$a5,44($a1)
    # Line 2447
    sw	$a3,8($a1)
    # Line 2453
    lw	$a0,4($a4)
    sw	$a0,60($a1)
    # Line 2454
    lw	$v1,8($a4)
    sw	$v1,64($a1)
    # Line 2455
    lw	$v0,232($a2)
    sw	$v0,432($a1)
    lw	$at,232($a2)
    beq	$at,$a5,.L0da23350
    # Line 2460
    li	$a6,6409
.L0da23300:
    lw	$a2,68($a4)
    li	$t0,0x8049
    li	$a7,6410
    li	$a3,6407
    beq	$a2,$a6,.L0da23374
    # Line 2464
    li	$v0,4
    # Line 2460
    beq	$a2,$a7,.L0da2338c
    # Line 2469
    li	$a0,4
    # Line 2460
    beq	$a2,$a3,.L0da233a0
    # Line 2474
    li	$a4,4
    # Line 2460
    li	$a3,6408
    beq	$a2,$a3,.L0da233b4
    # Line 2479
    li	$a6,4
    # Line 2460
    li	$a3,6406
    beq	$a2,$a3,.L0da233c8
    nop
    beq	$a2,$t0,.L0da2335c
    # Line 2489
    li	$t8,4
    # Line 2495
    jr	$ra
    nop
.L0da23350:
    # Line 2457
    lw	$t1,56($a4)
    b	.L0da23300
    sw	$t1,52($a1)
.L0da2335c:
    # Line 2489
    sw	$t8,68($a1)
    # Line 2488
    li	$t3,5126
    sw	$t3,4($a1)
    # Line 2487
    li	$t2,6403
    # Line 2495
    jr	$ra
    # Line 2487
    sw	$t2,0($a1)
.L0da23374:
    # Line 2464
    sw	$v0,68($a1)
    # Line 2463
    li	$at,5126
    sw	$at,4($a1)
    # Line 2462
    li	$t9,6403
    # Line 2495
    jr	$ra
    # Line 2462
    sw	$t9,0($a1)
.L0da2338c:
    # Line 2469
    sw	$a0,68($a1)
    # Line 2468
    li	$v1,5126
    sw	$v1,4($a1)
    # Line 2495
    jr	$ra
    # Line 2467
    sw	$a5,0($a1)
.L0da233a0:
    # Line 2474
    sw	$a4,68($a1)
    # Line 2473
    li	$a2,5126
    sw	$a2,4($a1)
    # Line 2495
    jr	$ra
    # Line 2472
    sw	$a3,0($a1)
.L0da233b4:
    # Line 2479
    sw	$a6,68($a1)
    # Line 2478
    li	$a5,5126
    sw	$a5,4($a1)
    # Line 2495
    jr	$ra
    # Line 2477
    sw	$a3,0($a1)
.L0da233c8:
    # Line 2484
    li	$t0,4
    sw	$t0,68($a1)
    # Line 2483
    li	$a7,5126
    sw	$a7,4($a1)
    # Line 2495
    jr	$ra
    # Line 2482
    sw	$a3,0($a1)
.end __glInitTexImageGet

# Function: __glInitTexSourceUnpack
# Declared: Line 2502 (Source lines: 2506-2518)
# Address: 0x0da233e0 - 0x0da23448 (Size: 104 bytes, Frame: 208)
.globl __glInitTexSourceUnpack
.ent __glInitTexSourceUnpack
__glInitTexSourceUnpack:
    # Line 2507
    mtc1	$zero,$f1
    # Line 2506
    addiu	$sp,$sp,-80
    sd	$ra,0($sp)
    # Line 2507
    swc1	$f1,196($a1)
    # Line 2508
    lwc1	$f0,3544($a0)
    # Line 2509
    sw	$a2,180($a1)
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 2517
    lbu	$a2,87($sp)
    # Line 2514
    sw	$a7,8($a1)
    # Line 2513
    sw	$a6,4($a1)
    # Line 2506
    lui	$v0,0x3
    # Line 2512
    sw	$a5,0($a1)
    # Line 2506
    addiu	$v0,$v0,-9812
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 2517
    # lw $t9, -27848($gp) # &__glLoadUnpackModes
    # Line 2511
    sw	$a4,176($a1)
    # Line 2510
    sw	$a3,172($a1)
    # Line 2517
    nop
    jal	__glLoadUnpackModes
    # Line 2508
    swc1	$f0,160($a1)
    ld	$ra,0($sp)
    # Line 2518
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,80
.end __glInitTexSourceUnpack

# Function: __glInitTexDestPack
# Declared: Line 2523 (Source lines: 2526-2538)
# Address: 0x0da23450 - 0x0da234b4 (Size: 100 bytes, Frame: 16)
.globl __glInitTexDestPack
.ent __glInitTexDestPack
__glInitTexDestPack:
    # Line 2527
    mtc1	$zero,$f1
    # Line 2526
    addiu	$sp,$sp,-16
    sd	$ra,0($sp)
    # Line 2527
    swc1	$f1,196($a1)
    # Line 2528
    lwc1	$f0,3544($a0)
    # Line 2534
    sw	$a7,88($a1)
    # Line 2533
    sw	$a6,84($a1)
    # Line 2532
    sw	$a5,80($a1)
    # Line 2531
    sw	$a4,176($a1)
    # Line 2530
    sw	$a3,172($a1)
    # Line 2526
    lui	$v0,0x3
    # Line 2529
    sw	$a2,180($a1)
    # Line 2526
    addiu	$v0,$v0,-9924
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 2537
    # lw $t9, -27804($gp) # &__glLoadPackModes
    # Line 2529
    sw	$a2,184($a1)
    sw	$a2,168($a1)
    # Line 2537
    nop
    jal	__glLoadPackModes
    # Line 2528
    swc1	$f0,160($a1)
    ld	$ra,0($sp)
    # Line 2538
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glInitTexDestPack

# Function: IsLegalRange
# Declared: Line 2552 (Source lines: 2554-2565)
# Address: 0x0da234c0 - 0x0da2351c (Size: 92 bytes, Frame: 16)
.ent IsLegalRange
IsLegalRange:
    # Line 2558
    addu	$a4,$a3,$a3
    subu	$a4,$a1,$a4
    # Line 2560
    subu	$v0,$a4,$a2
    slti	$at,$a2,1
    addiu	$v0,$v0,1
    # Line 2554
    addiu	$sp,$sp,-16
    movz	$a4,$v0,$at
    sd	$ra,0($sp)
    move	$ra,$ra
    # Line 2565
    li	$v0,1
    # Line 2561
    bltz	$a4,.L0da234f8
    addiu	$a5,$a4,-1
    and	$a5,$a4,$a5
    beqz	$a5,.L0da23514
.L0da234f8:
    # Line 2562
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    # Line 2563
    move	$v0,$zero
    # Line 2565
    jr	$ra
    addiu	$sp,$sp,16
.L0da23514:
    jr	$ra
    addiu	$sp,$sp,16
.end IsLegalRange

# Function: __glCheckTexImage1DArgs
# Declared: Line 2568 (Source lines: 2571-2588)
# Address: 0x0da23520 - 0x0da235e8 (Size: 200 bytes, Frame: 48)
.globl __glCheckTexImage1DArgs
.ent __glCheckTexImage1DArgs
__glCheckTexImage1DArgs:
    # Line 2571
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    lui	$ra,0x3
    addiu	$ra,$ra,-10132
    sd	$gp,40($sp)
    addu	$gp,$t9,$ra
    move	$v1,$a7
    # Line 2575
    li	$a7,1
    # lw $t9, -32688($gp) # &sub_0da20000
    # Line 2571
    move	$at,$a5
    move	$v0,$a6
    # Line 2575
    move	$a6,$v1
    # Line 2571
    sd	$a5,16($sp)
    # Line 2575
    addiu	$t9,$t9,7696
    move	$a5,$v0
    # Line 2571
    sd	$a4,8($sp)
    # Line 2575
    move	$a4,$at
    nop
    # Line 2571
    sd	$s0,32($sp)
    # Line 2575
    bal __glIsTextureConsistent
    # Line 2571
    move	$s0,$a0
    # Line 2575
    beqz	$v0,.L0da235d4
    # Line 2588
    ld	$ra,24($sp)
    # Line 2578
    li	$a2,0x8010
    lw	$a0,764($s0)
    lw	$a1,0($a0)
    beq	$a1,$a2,.L0da235cc
    sd	$v0,0($sp)
    # Line 2580
    move	$a2,$zero
.L0da23594:
    # lw $t9, -32688($gp) # &sub_0da20000
    addiu	$t9,$t9,13504
    ld	$a1,8($sp)
    move	$a0,$s0
    bal __glInitTexDestPack
    ld	$a3,16($sp)
    # Line 2588
    ld	$ra,0($sp)
    movz	$ra,$zero,$v0
    move	$v0,$ra
    ld	$ra,24($sp)
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da235cc:
    # Line 2580
    b	.L0da23594
    lw	$a2,64($a0)
.L0da235d4:
    # Line 2578
    move	$v0,$zero
    # Line 2588
    ld	$gp,40($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glCheckTexImage1DArgs

# Function: __glCheckTexImage2DArgs
# Declared: Line 2591 (Source lines: 2594-2623)
# Address: 0x0da235f0 - 0x0da23720 (Size: 304 bytes, Frame: 128)
.globl __glCheckTexImage2DArgs
.ent __glCheckTexImage2DArgs
__glCheckTexImage2DArgs:
    # Line 2594
    addiu	$sp,$sp,-128
    sd	$ra,24($sp)
    lui	$ra,0x3
    sd	$s1,8($sp)
    addiu	$ra,$ra,-10340
    sd	$gp,48($sp)
    addu	$gp,$t9,$ra
    # Line 2598
    # lw $t9, -32688($gp) # &sub_0da20000
    # Line 2594
    move	$at,$a7
    # Line 2598
    li	$a7,2
    # Line 2594
    sd	$a5,32($sp)
    # Line 2598
    move	$a5,$at
    # Line 2594
    sd	$s0,16($sp)
    # Line 2598
    addiu	$t9,$t9,7696
    # Line 2594
    move	$s0,$a0
    move	$s1,$a6
    sd	$a4,40($sp)
    # Line 2598
    nop
    move	$a4,$a6
    bal __glIsTextureConsistent
    lw	$a6,132($sp)
    beqz	$v0,.L0da236f4
    # Line 2623
    ld	$ra,24($sp)
    # Line 2603
    lw	$a3,764($s0)
    lw	$a0,0($a3)
    li	$a2,0x8011
    beq	$a2,$a0,.L0da236e4
    sd	$v0,0($sp)
    li	$v0,0x8012
    beq	$a0,$v0,.L0da236e4
    move	$a2,$zero
.L0da2366c:
    # lw $t9, -32688($gp) # &sub_0da20000
    addiu	$t9,$t9,13504
    move	$a0,$s0
    ld	$a1,40($sp)
    bal __glInitTexDestPack
    move	$a3,$s1
    beqz	$v0,.L0da2370c
    # Line 2613
    li	$at,0x8012
    lw	$a3,764($s0)
    lw	$a0,0($a3)
    li	$ra,0x8011
    beq	$ra,$a0,.L0da236ec
    nop
    beq	$a0,$at,.L0da236ec
    move	$a2,$zero
.L0da236a8:
    # lw $t9, -32688($gp) # &sub_0da20000
    addiu	$t9,$t9,13504
    move	$a0,$s0
    ld	$a1,32($sp)
    bal __glInitTexDestPack
    move	$a3,$s1
    ld	$s1,8($sp)
    # Line 2623
    ld	$a0,0($sp)
    ld	$s0,16($sp)
    ld	$ra,24($sp)
    movz	$a0,$zero,$v0
.L0da236d4:
    move	$v0,$a0
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da236e4:
    # Line 2603
    b	.L0da2366c
    lw	$a2,64($a3)
.L0da236ec:
    # Line 2613
    b	.L0da236a8
    lw	$a2,68($a3)
.L0da236f4:
    # Line 2623
    ld	$gp,48($sp)
    # Line 2601
    move	$v0,$zero
    # Line 2623
    ld	$s0,16($sp)
    ld	$s1,8($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da2370c:
    ld	$s1,8($sp)
    ld	$s0,16($sp)
    ld	$ra,24($sp)
    # Line 2611
    b	.L0da236d4
    move	$a0,$zero
.end __glCheckTexImage2DArgs

# Function: __glCheckTexImage3DArgs
# Declared: Line 2626 (Source lines: 2630-2663)
# Address: 0x0da23720 - 0x0da2388c (Size: 364 bytes, Frame: 144)
.globl __glCheckTexImage3DArgs
.ent __glCheckTexImage3DArgs
__glCheckTexImage3DArgs:
    # Line 2630
    addiu	$sp,$sp,-144
    sd	$a6,0($sp)
    # Line 2634
    lw	$a6,156($sp)
    # Line 2630
    sd	$ra,48($sp)
    lui	$ra,0x3
    sd	$a5,32($sp)
    addiu	$ra,$ra,-10644
    sd	$gp,56($sp)
    addu	$gp,$t9,$ra
    # Line 2634
    # lw $t9, -32688($gp) # &sub_0da20000
    # Line 2630
    sd	$s0,24($sp)
    sd	$s1,16($sp)
    move	$s1,$a7
    # Line 2634
    addiu	$t9,$t9,7696
    li	$a7,3
    # Line 2630
    move	$s0,$a0
    # Line 2634
    lw	$a5,148($sp)
    nop
    # Line 2630
    sd	$a4,40($sp)
    # Line 2634
    bal __glIsTextureConsistent
    move	$a4,$s1
    beqz	$v0,.L0da23868
    # Line 2639
    li	$a2,0x8011
    lw	$a3,764($s0)
    lw	$a0,0($a3)
    beq	$a2,$a0,.L0da23834
    sd	$v0,8($sp)
    li	$at,0x8012
    beq	$a0,$at,.L0da23834
    move	$a2,$zero
    sd	$s2,64($sp)
.L0da2379c:
    la	$s2,sub_0da20000
    addiu	$s2,$s2,13504
    move	$t9,$s2
    move	$a0,$s0
    ld	$a1,40($sp)
    bal __glInitTexDestPack
    move	$a3,$s1
    beqz	$v0,.L0da23878
    # Line 2649
    li	$t9,0x8012
    lw	$a3,764($s0)
    lw	$a0,0($a3)
    li	$t8,0x8011
    beq	$t8,$a0,.L0da23840
    nop
    beq	$a0,$t9,.L0da23840
    move	$a2,$zero
.L0da237dc:
    move	$t9,$s2
    move	$a0,$s0
    ld	$a1,32($sp)
    bal __glInitTexDestPack
    move	$a3,$s1
    beqz	$v0,.L0da23848
    # Line 2660
    move	$t9,$s2
    move	$a0,$s0
    move	$a2,$zero
    ld	$a1,0($sp)
    bal __glInitTexDestPack
    move	$a3,$s1
    ld	$s1,16($sp)
    # Line 2663
    ld	$a0,8($sp)
    ld	$s0,24($sp)
    ld	$s2,64($sp)
    movz	$a0,$zero,$v0
.L0da23820:
    ld	$ra,48($sp)
    move	$v0,$a0
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da23834:
    # Line 2639
    lw	$a2,64($a3)
    b	.L0da2379c
    sd	$s2,64($sp)
.L0da23840:
    # Line 2649
    b	.L0da237dc
    lw	$a2,68($a3)
.L0da23848:
    ld	$s2,64($sp)
    # Line 2663
    ld	$ra,48($sp)
    ld	$gp,56($sp)
    # Line 2657
    move	$v0,$zero
    # Line 2663
    ld	$s0,24($sp)
    ld	$s1,16($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da23868:
    ld	$s1,16($sp)
    ld	$s0,24($sp)
    # Line 2637
    b	.L0da23820
    move	$a0,$zero
.L0da23878:
    ld	$s1,16($sp)
    ld	$s0,24($sp)
    ld	$s2,64($sp)
    # Line 2647
    b	.L0da23820
    move	$a0,$zero
.end __glCheckTexImage3DArgs

# Function: __glCheckCopyTexImageArgs
# Declared: Line 2667 (Source lines: 2673-2723)
# Address: 0x0da23890 - 0x0da23a78 (Size: 488 bytes, Frame: 144)
.globl __glCheckCopyTexImageArgs
.ent __glCheckCopyTexImageArgs
__glCheckCopyTexImageArgs:
    # Line 2673
    addiu	$sp,$sp,-144
    # Line 2677
    lw	$a4,148($sp)
    # Line 2673
    sd	$s2,32($sp)
    sd	$s1,8($sp)
    sd	$s0,0($sp)
    sd	$ra,48($sp)
    lui	$ra,0x3
    sd	$a6,24($sp)
    addiu	$ra,$ra,-11012
    sd	$gp,56($sp)
    addu	$gp,$t9,$ra
    # Line 2677
    # lw $t9, -32688($gp) # &sub_0da20000
    li	$a5,6408
    li	$a6,5126
    # Line 2673
    sd	$s3,40($sp)
    move	$s0,$a3
    # Line 2677
    lw	$s3,156($sp)
    addiu	$t9,$t9,7696
    # Line 2673
    move	$s1,$a1
    move	$s2,$a0
    sd	$s4,64($sp)
    sd	$a7,16($sp)
    # Line 2677
    bal __glIsTextureConsistent
    move	$a7,$s3
    # Line 2680
    li	$at,0x8063
    # Line 2697
    slti	$a3,$s3,2
    # Line 2680
    beq	$s1,$at,.L0da23a4c
    # Line 2677
    move	$s4,$v0
    # Line 2680
    li	$v0,0x8064
    beq	$s1,$v0,.L0da23a4c
    li	$v1,0x8070
    beq	$s1,$v1,.L0da23a4c
    # Line 2697
    li	$a4,0x8011
    # Line 2687
    li	$v0,1
    beq	$v0,$s0,.L0da23a34
    ld	$s1,8($sp)
    li	$a0,2
    beq	$s0,$a0,.L0da23a34
    li	$a1,3
    beq	$s0,$a1,.L0da23a34
    li	$a2,4
    beq	$s0,$a2,.L0da23a34
    # Line 2697
    move	$a2,$zero
    # Line 2687
    beqz	$s4,.L0da23a68
    ld	$s0,0($sp)
    # Line 2697
    beq	$s3,$v0,.L0da239f0
    nop
    bnez	$a3,.L0da2396c
    nop
    lw	$a0,764($s2)
    lw	$v0,0($a0)
    beq	$v0,$a4,.L0da23a04
    li	$a5,0x8012
    beq	$v0,$a5,.L0da23a04
    nop
.L0da2396c:
    # lw $t9, -32688($gp) # &sub_0da20000
    addiu	$t9,$t9,13504
    ld	$a1,24($sp)
    move	$a0,$s2
    bal __glInitTexDestPack
    lw	$a3,148($sp)
    beqz	$v0,.L0da23a70
    # Line 2712
    li	$v1,0x8012
    slti	$ra,$s3,2
    bnez	$ra,.L0da239d4
    # Line 2723
    move	$v0,$s4
    # Line 2712
    lw	$a0,764($s2)
    lw	$v0,0($a0)
    li	$at,0x8011
    beq	$v0,$at,.L0da23a0c
    nop
    beq	$v0,$v1,.L0da23a0c
    move	$a2,$zero
.L0da239b4:
    # lw $t9, -32688($gp) # &sub_0da20000
    addiu	$t9,$t9,13504
    ld	$a1,16($sp)
    move	$a0,$s2
    bal __glInitTexDestPack
    lw	$a3,148($sp)
    beqz	$v0,.L0da23a14
    # Line 2723
    move	$v0,$s4
.L0da239d4:
    ld	$s2,32($sp)
    ld	$ra,48($sp)
    ld	$s3,40($sp)
    ld	$s4,64($sp)
    # Line 2685
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da239f0:
    # Line 2697
    lw	$a0,764($s2)
    lw	$ra,0($a0)
    li	$at,0x8010
    bne	$ra,$at,.L0da2396c
    nop
.L0da23a04:
    b	.L0da2396c
    lw	$a2,64($a0)
.L0da23a0c:
    # Line 2712
    b	.L0da239b4
    lw	$a2,68($a0)
.L0da23a14:
    ld	$s4,64($sp)
    # Line 2685
    ld	$ra,48($sp)
    ld	$gp,56($sp)
    # Line 2721
    move	$v0,$zero
    # Line 2685
    ld	$s2,32($sp)
    ld	$s3,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da23a34:
    # Line 2689
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    jal	__glSetError
    li	$a0,1280
    # Line 2690
    b	.L0da239d4
    move	$v0,$zero
.L0da23a4c:
    # Line 2684
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    jal	__glSetError
    li	$a0,1280
    b	.L0da239d4
    # Line 2685
    move	$v0,$zero
.L0da23a68:
    # Line 2695
    b	.L0da239d4
    move	$v0,$zero
.L0da23a70:
    # Line 2709
    b	.L0da239d4
    move	$v0,$zero
.end __glCheckCopyTexImageArgs

# Function: __glim_TexImage1D
# Declared: Line 2728 (Source lines: 2732-2780)
# Address: 0x0da23a80 - 0x0da23c9c (Size: 540 bytes, Frame: 240)
.globl __glim_TexImage1D
.ent __glim_TexImage1D
__glim_TexImage1D:
    # Line 2732
    addiu	$sp,$sp,-624
    sd	$a7,536($sp)
    sd	$a6,544($sp)
    sd	$a5,552($sp)
    sd	$a4,560($sp)
    sd	$a3,576($sp)
    sd	$a2,568($sp)
    sd	$a1,584($sp)
    sd	$s0,592($sp)
    # Line 2742
    lw	$v0,4120($zero)
    # Line 2732
    move	$t2,$a0
    # Line 2742
    lw	$s0,4112($zero)
    # Line 2732
    lui	$at,0x3
    # Line 2742
    li	$v1,2
    sd	$ra,608($sp)
    # Line 2732
    addiu	$at,$at,-11508
    sd	$gp,600($sp)
    # Line 2742
    beqz	$v0,.L0da23b08
    # Line 2732
    addu	$gp,$t9,$at
    # Line 2742
    beq	$v0,$v1,.L0da23af4
    sd	$a0,616($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da23ae0:
    ld	$ra,608($sp)
.L0da23ae4:
    ld	$s0,592($sp)
    # Line 2780
    ld	$gp,600($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0da23af4:
    # Line 2742
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$t2,616($sp)
    sw	$zero,4120($zero)
.L0da23b08:
    # Line 2745
    ld	$a2,584($sp)
    ld	$a3,568($sp)
    ld	$a4,576($sp)
    # lw $t9, -24212($gp) # &__glCheckTexImage1DArgs
    ld	$a5,560($sp)
    move	$a0,$s0
    ld	$a6,552($sp)
    move	$a1,$t2
    bal __glCheckTexImage1DArgs
    ld	$a7,544($sp)
    beqz	$v0,.L0da23ae0
    sd	$v0,528($sp)
    # Line 2750
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,3552
    lw	$a1,0($v0)
    slti	$a1,$a1,3
    # Line 2757
    li	$a3,0x8010
    # Line 2761
    ld	$a4,576($sp)
    # Line 2750
    beqz	$a1,.L0da23c88
    move	$a0,$v0
    # Line 2757
    lw	$t2,764($s0)
    lw	$t3,64($t2)
    beqz	$t3,.L0da23b7c
    sd	$v0,520($sp)
    lw	$a2,0($t2)
    beq	$a2,$a3,.L0da23c78
    nop
.L0da23b7c:
    # Line 2763
    li	$a6,1
    sw	$a6,4($sp)
    ld	$a1,528($sp)
    ld	$a5,560($sp)
    lw	$t9,244($a1)
    move	$a7,$a5
    addu	$a5,$a5,$a5
    ld	$a3,568($sp)
    move	$a0,$s0
    addiu	$a5,$a5,1
    ld	$a2,584($sp)
    jal	__glLookUpTextureObject
    move	$a6,$a5
    # Line 2766
    ld	$a7,536($sp)
    beqz	$a7,.L0da23bc8
    # Line 2776
    ld	$t3,520($sp)
    # Line 2766
    bnez	$v0,.L0da23bf8
    # Line 2767
    ld	$a7,536($sp)
    # Line 2776
    ld	$t3,520($sp)
.L0da23bc8:
    ld	$ra,608($sp)
    li	$t2,1
    sb	$t2,12($t3)
    # Line 2779
    li	$t1,2
    sw	$t1,4120($zero)
    lw	$t0,11756($s0)
    # Line 2780
    ld	$gp,600($sp)
    # Line 2779
    ori	$t0,$t0,0x1
    sw	$t0,11756($s0)
    # Line 2780
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0da23bf8:
    # Line 2767
    ld	$a6,544($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    move	$a0,$s0
    ld	$a5,552($sp)
    li	$a4,1
    li	$a3,1
    ld	$a2,576($sp)
    sw	$zero,4($sp)
    bal __glInitTexSourceUnpack
    addiu	$a1,$sp,16
    # Line 2769
    # lw $t9, -24228($gp) # &__glInitTexImageStore
    move	$a0,$s0
    ld	$a3,584($sp)
    ld	$a2,528($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 2770
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 2771
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 2772
    ld	$a2,528($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,584($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0da23bc8
    # Line 2776
    ld	$t3,520($sp)
.L0da23c78:
    # Line 2759
    ld	$a4,576($sp)
    subu	$a4,$a4,$t3
    b	.L0da23b7c
    addiu	$a4,$a4,1
.L0da23c88:
    # Line 2752
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da23ae4
    ld	$ra,608($sp)
.end __glim_TexImage1D

# Function: __gllei_TexImage1D
# Declared: Line 2782 (Source lines: 2785-2845)
# Address: 0x0da23ca0 - 0x0da23eb0 (Size: 528 bytes, Frame: 176)
.globl __gllei_TexImage1D
.ent __gllei_TexImage1D
__gllei_TexImage1D:
    # Line 2785
    addiu	$sp,$sp,-688
    sd	$a7,536($sp)
    sd	$a6,544($sp)
    sd	$a5,552($sp)
    sd	$a4,568($sp)
    sd	$a3,560($sp)
    sd	$a2,576($sp)
    # Line 2797
    lw	$v0,4120($zero)
    # Line 2785
    sd	$s0,584($sp)
    lui	$at,0x3
    move	$s0,$a0
    sd	$ra,600($sp)
    addiu	$at,$at,-12052
    sd	$gp,592($sp)
    # Line 2797
    beqz	$v0,.L0da23d20
    # Line 2785
    addu	$gp,$t9,$at
    # Line 2797
    li	$v1,2
    beq	$v0,$v1,.L0da23d0c
    sd	$a1,608($sp)
    # Line 2803
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da23cf8:
    ld	$ra,600($sp)
.L0da23cfc:
    ld	$s0,584($sp)
    # Line 2845
    ld	$gp,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da23d0c:
    # Line 2800
    lw	$t9,11784($s0)
    jalr	$t9
    nop
    ld	$a1,608($sp)
    # Line 2801
    sw	$zero,4120($zero)
.L0da23d20:
    # Line 2809
    ld	$a2,576($sp)
    ld	$a3,560($sp)
    ld	$a4,568($sp)
    # lw $t9, -24212($gp) # &__glCheckTexImage1DArgs
    ld	$a5,552($sp)
    ld	$a6,544($sp)
    move	$a0,$s0
    bal __glCheckTexImage1DArgs
    ld	$a7,536($sp)
    beqz	$v0,.L0da23cf8
    sd	$v0,528($sp)
    # Line 2815
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,3552
    lw	$a1,0($v0)
    slti	$a1,$a1,3
    # Line 2822
    li	$a3,0x8010
    # Line 2826
    ld	$a4,568($sp)
    # Line 2815
    beqz	$a1,.L0da23e9c
    move	$a0,$v0
    # Line 2822
    lw	$t2,764($s0)
    lw	$t3,64($t2)
    beqz	$t3,.L0da23d90
    sd	$v0,520($sp)
    lw	$a2,0($t2)
    beq	$a2,$a3,.L0da23e8c
    nop
.L0da23d90:
    # Line 2827
    li	$a6,1
    sw	$a6,4($sp)
    ld	$a1,528($sp)
    ld	$a5,552($sp)
    lw	$t9,244($a1)
    move	$a7,$a5
    addu	$a5,$a5,$a5
    ld	$a3,560($sp)
    move	$a0,$s0
    addiu	$a5,$a5,1
    ld	$a2,576($sp)
    jal	__glLookUpTextureObject
    move	$a6,$a5
    # Line 2831
    lw	$a7,692($sp)
    beqz	$a7,.L0da23dd8
    # Line 2841
    ld	$t2,520($sp)
    # Line 2831
    bnez	$v0,.L0da23e08
    # Line 2841
    ld	$t2,520($sp)
.L0da23dd8:
    ld	$ra,600($sp)
    li	$t1,1
    sb	$t1,12($t2)
    # Line 2844
    li	$t0,2
    sw	$t0,4120($zero)
    lw	$a7,11756($s0)
    # Line 2845
    ld	$gp,592($sp)
    # Line 2844
    ori	$a7,$a7,0x1
    sw	$a7,11756($s0)
    # Line 2845
    ld	$s0,584($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da23e08:
    # Line 2832
    ld	$a6,536($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    move	$a0,$s0
    ld	$a5,544($sp)
    li	$a3,1
    ld	$a2,568($sp)
    addiu	$a1,$sp,16
    li	$t3,1
    sw	$t3,4($sp)
    bal __glInitTexSourceUnpack
    move	$a4,$t3
    # Line 2834
    # lw $t9, -24228($gp) # &__glInitTexImageStore
    move	$a0,$s0
    ld	$a3,576($sp)
    ld	$a2,528($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 2835
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 2836
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 2837
    ld	$a2,528($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,576($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0da23dd8
    # Line 2841
    ld	$t2,520($sp)
.L0da23e8c:
    # Line 2824
    ld	$a4,568($sp)
    subu	$a4,$a4,$t3
    b	.L0da23d90
    addiu	$a4,$a4,1
.L0da23e9c:
    # Line 2817
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da23cfc
    ld	$ra,600($sp)
.end __gllei_TexImage1D

# Function: __glim_TexImage2D
# Declared: Line 2849 (Source lines: 2852-2904)
# Address: 0x0da23eb0 - 0x0da240f0 (Size: 576 bytes, Frame: 176)
.globl __glim_TexImage2D
.ent __glim_TexImage2D
__glim_TexImage2D:
    # Line 2852
    addiu	$sp,$sp,-688
    sd	$a7,536($sp)
    sd	$a6,544($sp)
    sd	$a5,552($sp)
    sd	$a4,576($sp)
    sd	$a3,568($sp)
    sd	$a2,560($sp)
    sd	$a1,584($sp)
    sd	$s0,592($sp)
    # Line 2862
    lw	$v0,4120($zero)
    lw	$s0,4112($zero)
    # Line 2852
    lui	$at,0x3
    move	$t2,$a0
    sd	$ra,608($sp)
    addiu	$at,$at,-12580
    sd	$gp,600($sp)
    # Line 2862
    beqz	$v0,.L0da23f38
    # Line 2852
    addu	$gp,$t9,$at
    # Line 2862
    li	$v1,2
    beq	$v0,$v1,.L0da23f24
    sd	$a0,616($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da23f10:
    ld	$ra,608($sp)
.L0da23f14:
    ld	$s0,592($sp)
    # Line 2904
    ld	$gp,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da23f24:
    # Line 2862
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$t2,616($sp)
    sw	$zero,4120($zero)
.L0da23f38:
    # Line 2865
    ld	$a2,584($sp)
    ld	$a3,560($sp)
    ld	$a4,568($sp)
    ld	$a5,576($sp)
    ld	$a6,552($sp)
    # lw $t9, -24208($gp) # &__glCheckTexImage2DArgs
    ld	$a7,544($sp)
    move	$a0,$s0
    ld	$t0,536($sp)
    move	$a1,$t2
    bal __glCheckTexImage2DArgs
    sw	$t0,4($sp)
    beqz	$v0,.L0da23f10
    sd	$v0,528($sp)
    # Line 2870
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,3553
    lw	$t2,0($v0)
    slti	$t2,$t2,3
    # Line 2877
    li	$t9,0x8012
    # Line 2883
    ld	$a4,568($sp)
    # Line 2877
    li	$t8,0x8011
    # Line 2884
    ld	$a5,576($sp)
    # Line 2870
    beqz	$t2,.L0da240dc
    move	$a0,$v0
    # Line 2877
    lw	$t2,764($s0)
    lw	$t3,64($t2)
    beqz	$t3,.L0da23fc4
    sd	$v0,520($sp)
    lw	$a0,0($t2)
    beq	$a0,$t8,.L0da2403c
    nop
    beq	$a0,$t9,.L0da2403c
    nop
.L0da23fc4:
    # Line 2886
    ld	$a6,552($sp)
    ld	$t9,528($sp)
    li	$ra,2
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    move	$a0,$s0
    ld	$a2,584($sp)
    move	$a7,$a6
    addu	$a6,$a6,$a6
    ld	$a3,560($sp)
    jal	__glLookUpTextureObject
    addiu	$a6,$a6,1
    # Line 2890
    lw	$a7,692($sp)
    beqz	$a7,.L0da2400c
    # Line 2900
    ld	$a0,520($sp)
    # Line 2890
    bnez	$v0,.L0da2405c
    # Line 2900
    ld	$a0,520($sp)
.L0da2400c:
    ld	$ra,608($sp)
    li	$v1,1
    sb	$v1,12($a0)
    # Line 2903
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$at,11756($s0)
    # Line 2904
    ld	$gp,600($sp)
    # Line 2903
    ori	$at,$at,0x1
    sw	$at,11756($s0)
    # Line 2904
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da2403c:
    # Line 2881
    lw	$a6,68($t2)
    # Line 2880
    ld	$a4,568($sp)
    # Line 2881
    ld	$a5,576($sp)
    # Line 2880
    subu	$a4,$a4,$t3
    # Line 2881
    subu	$a5,$a5,$a6
    # Line 2880
    addiu	$a4,$a4,1
    # Line 2881
    b	.L0da23fc4
    addiu	$a5,$a5,1
.L0da2405c:
    # Line 2891
    ld	$a6,536($sp)
    ld	$a5,544($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    ld	$a3,576($sp)
    move	$a0,$s0
    li	$a4,1
    ld	$a2,568($sp)
    sw	$zero,4($sp)
    bal __glInitTexSourceUnpack
    addiu	$a1,$sp,16
    # Line 2893
    # lw $t9, -24228($gp) # &__glInitTexImageStore
    move	$a0,$s0
    ld	$a3,584($sp)
    ld	$a2,528($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 2894
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 2895
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 2896
    ld	$a2,528($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,584($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0da2400c
    # Line 2900
    ld	$a0,520($sp)
.L0da240dc:
    # Line 2872
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da23f14
    ld	$ra,608($sp)
.end __glim_TexImage2D

# Function: __gllei_TexImage2D
# Declared: Line 2906 (Source lines: 2910-2973)
# Address: 0x0da240f0 - 0x0da24328 (Size: 568 bytes, Frame: 176)
.globl __gllei_TexImage2D
.ent __gllei_TexImage2D
__gllei_TexImage2D:
    # Line 2910
    addiu	$sp,$sp,-688
    sd	$a7,536($sp)
    sd	$a6,544($sp)
    sd	$a5,568($sp)
    sd	$a4,560($sp)
    sd	$a3,552($sp)
    sd	$a2,576($sp)
    # Line 2922
    lw	$v0,4120($zero)
    # Line 2910
    sd	$s0,584($sp)
    lui	$at,0x3
    move	$s0,$a0
    sd	$ra,600($sp)
    addiu	$at,$at,-13156
    sd	$gp,592($sp)
    # Line 2922
    beqz	$v0,.L0da24170
    # Line 2910
    addu	$gp,$t9,$at
    # Line 2922
    li	$v1,2
    beq	$v0,$v1,.L0da2415c
    sd	$a1,608($sp)
    # Line 2928
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da24148:
    ld	$ra,600($sp)
.L0da2414c:
    ld	$s0,584($sp)
    # Line 2973
    ld	$gp,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da2415c:
    # Line 2925
    lw	$t9,11784($s0)
    jalr	$t9
    nop
    ld	$a1,608($sp)
    # Line 2926
    sw	$zero,4120($zero)
.L0da24170:
    # Line 2934
    ld	$a7,536($sp)
    ld	$a6,544($sp)
    ld	$a5,568($sp)
    ld	$a4,560($sp)
    ld	$a3,552($sp)
    # lw $t9, -24208($gp) # &__glCheckTexImage2DArgs
    ld	$a2,576($sp)
    lw	$t0,692($sp)
    move	$a0,$s0
    bal __glCheckTexImage2DArgs
    sw	$t0,4($sp)
    beqz	$v0,.L0da24148
    sd	$v0,528($sp)
    # Line 2939
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,3553
    lw	$t2,0($v0)
    slti	$t2,$t2,3
    # Line 2946
    li	$t9,0x8012
    # Line 2952
    ld	$a4,560($sp)
    # Line 2946
    li	$t8,0x8011
    # Line 2953
    ld	$a5,568($sp)
    # Line 2939
    beqz	$t2,.L0da24314
    move	$a0,$v0
    # Line 2946
    lw	$t2,764($s0)
    lw	$t3,64($t2)
    beqz	$t3,.L0da241f8
    sd	$v0,520($sp)
    lw	$a0,0($t2)
    beq	$a0,$t8,.L0da24274
    nop
    beq	$a0,$t9,.L0da24274
    nop
.L0da241f8:
    # Line 2955
    ld	$a6,544($sp)
    ld	$t9,528($sp)
    li	$ra,2
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    move	$a0,$s0
    ld	$a2,576($sp)
    move	$a7,$a6
    addu	$a6,$a6,$a6
    ld	$a3,552($sp)
    jal	__glLookUpTextureObject
    addiu	$a6,$a6,1
    # Line 2959
    lw	$a7,700($sp)
    beqz	$a7,.L0da24244
    # Line 2969
    ld	$a0,520($sp)
    # Line 2959
    bnez	$v0,.L0da24294
    # Line 2960
    ld	$a5,536($sp)
    # Line 2969
    ld	$a0,520($sp)
.L0da24244:
    ld	$ra,600($sp)
    li	$v1,1
    sb	$v1,12($a0)
    # Line 2972
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$at,11756($s0)
    # Line 2973
    ld	$gp,592($sp)
    # Line 2972
    ori	$at,$at,0x1
    sw	$at,11756($s0)
    # Line 2973
    ld	$s0,584($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da24274:
    # Line 2950
    lw	$a6,68($t2)
    # Line 2949
    ld	$a4,560($sp)
    # Line 2950
    ld	$a5,568($sp)
    # Line 2949
    subu	$a4,$a4,$t3
    # Line 2950
    subu	$a5,$a5,$a6
    # Line 2949
    addiu	$a4,$a4,1
    # Line 2950
    b	.L0da241f8
    addiu	$a5,$a5,1
.L0da24294:
    # Line 2960
    ld	$a3,568($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    move	$a0,$s0
    ld	$a2,560($sp)
    addiu	$a1,$sp,16
    lw	$a6,692($sp)
    li	$t0,1
    sw	$t0,4($sp)
    bal __glInitTexSourceUnpack
    move	$a4,$t0
    # Line 2962
    # lw $t9, -24228($gp) # &__glInitTexImageStore
    move	$a0,$s0
    ld	$a3,576($sp)
    ld	$a2,528($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 2963
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 2964
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 2965
    ld	$a2,528($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,576($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0da24244
    # Line 2969
    ld	$a0,520($sp)
.L0da24314:
    # Line 2941
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da2414c
    ld	$ra,600($sp)
.end __gllei_TexImage2D

# Function: __glim_TexImage3DEXT
# Declared: Line 2977 (Source lines: 2980-3032)
# Address: 0x0da24330 - 0x0da24570 (Size: 576 bytes, Frame: 176)
.globl __glim_TexImage3DEXT
.ent __glim_TexImage3DEXT
__glim_TexImage3DEXT:
    # Line 2980
    addiu	$sp,$sp,-688
    sd	$a7,536($sp)
    sd	$a6,544($sp)
    sd	$a5,576($sp)
    sd	$a4,568($sp)
    sd	$a3,560($sp)
    sd	$a2,552($sp)
    sd	$a1,584($sp)
    sd	$s0,592($sp)
    # Line 2991
    lw	$v0,4120($zero)
    lw	$s0,4112($zero)
    # Line 2980
    lui	$at,0x3
    move	$t2,$a0
    sd	$ra,608($sp)
    addiu	$at,$at,-13732
    sd	$gp,600($sp)
    # Line 2991
    beqz	$v0,.L0da243b8
    # Line 2980
    addu	$gp,$t9,$at
    # Line 2991
    li	$v1,2
    beq	$v0,$v1,.L0da243a4
    sd	$a0,616($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da24390:
    ld	$ra,608($sp)
.L0da24394:
    ld	$s0,592($sp)
    # Line 3032
    ld	$gp,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da243a4:
    # Line 2991
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$t2,616($sp)
    sw	$zero,4120($zero)
.L0da243b8:
    # Line 2994
    ld	$a7,544($sp)
    ld	$a6,576($sp)
    ld	$a5,568($sp)
    ld	$a4,560($sp)
    ld	$a3,552($sp)
    ld	$a2,584($sp)
    lw	$t0,692($sp)
    # lw $t9, -24204($gp) # &__glCheckTexImage3DArgs
    ld	$t1,536($sp)
    move	$a1,$t2
    sw	$t1,4($sp)
    move	$a0,$s0
    bal __glCheckTexImage3DArgs
    sw	$t0,12($sp)
    beqz	$v0,.L0da24390
    sd	$v0,528($sp)
    # Line 2999
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,0x806f
    lw	$t3,0($v0)
    slti	$t3,$t3,3
    # Line 3006
    li	$t9,0x8012
    # Line 3012
    ld	$a4,560($sp)
    # Line 3006
    li	$t8,0x8011
    # Line 3013
    ld	$a5,568($sp)
    # Line 2999
    beqz	$t3,.L0da2455c
    move	$a0,$v0
    # Line 3006
    lw	$t2,764($s0)
    lw	$t3,64($t2)
    beqz	$t3,.L0da2444c
    sd	$v0,520($sp)
    lw	$a0,0($t2)
    beq	$a0,$t8,.L0da244c0
    nop
    beq	$a0,$t9,.L0da244c0
    nop
.L0da2444c:
    # Line 3015
    ld	$a2,584($sp)
    ld	$t9,528($sp)
    li	$ra,3
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    ld	$a3,552($sp)
    ld	$a6,576($sp)
    move	$a0,$s0
    jal	__glLookUpTextureObject
    ld	$a7,544($sp)
    # Line 3019
    lw	$a7,700($sp)
    beqz	$a7,.L0da24490
    # Line 3028
    ld	$a0,520($sp)
    # Line 3019
    bnez	$v0,.L0da244e0
    # Line 3020
    ld	$a5,536($sp)
    # Line 3028
    ld	$a0,520($sp)
.L0da24490:
    ld	$ra,608($sp)
    li	$v1,1
    sb	$v1,12($a0)
    # Line 3031
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$at,11756($s0)
    # Line 3032
    ld	$gp,600($sp)
    # Line 3031
    ori	$at,$at,0x1
    sw	$at,11756($s0)
    # Line 3032
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da244c0:
    # Line 3010
    lw	$a6,68($t2)
    # Line 3009
    ld	$a4,560($sp)
    # Line 3010
    ld	$a5,568($sp)
    # Line 3009
    subu	$a4,$a4,$t3
    # Line 3010
    subu	$a5,$a5,$a6
    # Line 3009
    addiu	$a4,$a4,1
    # Line 3010
    b	.L0da2444c
    addiu	$a5,$a5,1
.L0da244e0:
    # Line 3020
    ld	$a4,576($sp)
    ld	$a3,568($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    ld	$a2,560($sp)
    move	$a0,$s0
    lw	$a6,692($sp)
    sw	$zero,4($sp)
    bal __glInitTexSourceUnpack
    addiu	$a1,$sp,16
    # Line 3022
    # lw $t9, -24228($gp) # &__glInitTexImageStore
    move	$a0,$s0
    ld	$a3,584($sp)
    ld	$a2,528($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 3023
    # lw $t9, -27528($gp) # &__glInitUnpacker3D
    move	$a0,$s0
    jal	__glInitUnpacker3D
    addiu	$a1,$sp,16
    # Line 3024
    # lw $t9, -28076($gp) # &__glInitPacker3D
    move	$a0,$s0
    jal	__glInitPacker3D
    addiu	$a1,$sp,16
    # Line 3025
    ld	$a2,528($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,584($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0da24490
    # Line 3028
    ld	$a0,520($sp)
.L0da2455c:
    # Line 3001
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da24394
    ld	$ra,608($sp)
.end __glim_TexImage3DEXT

# Function: __gllei_TexImage3DEXT
# Declared: Line 3034 (Source lines: 3039-3102)
# Address: 0x0da24570 - 0x0da247a8 (Size: 568 bytes, Frame: 176)
.globl __gllei_TexImage3DEXT
.ent __gllei_TexImage3DEXT
__gllei_TexImage3DEXT:
    # Line 3039
    addiu	$sp,$sp,-688
    sd	$a7,536($sp)
    sd	$a6,568($sp)
    sd	$a5,560($sp)
    sd	$a4,552($sp)
    sd	$a3,544($sp)
    sd	$a2,576($sp)
    # Line 3051
    lw	$v0,4120($zero)
    # Line 3039
    sd	$s0,584($sp)
    lui	$at,0x3
    move	$s0,$a0
    sd	$ra,600($sp)
    addiu	$at,$at,-14308
    sd	$gp,592($sp)
    # Line 3051
    beqz	$v0,.L0da245f0
    # Line 3039
    addu	$gp,$t9,$at
    # Line 3051
    li	$v1,2
    beq	$v0,$v1,.L0da245dc
    sd	$a1,608($sp)
    # Line 3057
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da245c8:
    ld	$ra,600($sp)
.L0da245cc:
    ld	$s0,584($sp)
    # Line 3102
    ld	$gp,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da245dc:
    # Line 3054
    lw	$t9,11784($s0)
    jalr	$t9
    nop
    ld	$a1,608($sp)
    # Line 3055
    sw	$zero,4120($zero)
.L0da245f0:
    # Line 3063
    ld	$a7,536($sp)
    ld	$a6,568($sp)
    ld	$a5,560($sp)
    ld	$a4,552($sp)
    ld	$a3,544($sp)
    ld	$a2,576($sp)
    lw	$t0,692($sp)
    # lw $t9, -24204($gp) # &__glCheckTexImage3DArgs
    lw	$t1,700($sp)
    sw	$t1,12($sp)
    move	$a0,$s0
    bal __glCheckTexImage3DArgs
    sw	$t0,4($sp)
    beqz	$v0,.L0da245c8
    sd	$v0,528($sp)
    # Line 3068
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    bal __glLookUpTextureObject
    li	$a1,0x806f
    lw	$t3,0($v0)
    slti	$t3,$t3,3
    # Line 3075
    li	$t9,0x8012
    # Line 3081
    ld	$a4,552($sp)
    # Line 3075
    li	$t8,0x8011
    # Line 3082
    ld	$a5,560($sp)
    # Line 3068
    beqz	$t3,.L0da24794
    move	$a0,$v0
    # Line 3075
    lw	$t2,764($s0)
    lw	$t3,64($t2)
    beqz	$t3,.L0da24680
    sd	$v0,520($sp)
    lw	$a0,0($t2)
    beq	$a0,$t8,.L0da246f0
    nop
    beq	$a0,$t9,.L0da246f0
    nop
.L0da24680:
    # Line 3084
    ld	$a2,576($sp)
    ld	$t9,528($sp)
    li	$ra,3
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    ld	$a3,544($sp)
    ld	$a6,568($sp)
    move	$a0,$s0
    jal	__glLookUpTextureObject
    ld	$a7,536($sp)
    # Line 3088
    lw	$a7,708($sp)
    beqz	$a7,.L0da246c0
    # Line 3098
    ld	$a0,520($sp)
    # Line 3088
    bnez	$v0,.L0da24710
    # Line 3098
    ld	$a0,520($sp)
.L0da246c0:
    ld	$ra,600($sp)
    li	$v1,1
    sb	$v1,12($a0)
    # Line 3101
    li	$v0,2
    sw	$v0,4120($zero)
    lw	$at,11756($s0)
    # Line 3102
    ld	$gp,592($sp)
    # Line 3101
    ori	$at,$at,0x1
    sw	$at,11756($s0)
    # Line 3102
    ld	$s0,584($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da246f0:
    # Line 3079
    lw	$a6,68($t2)
    # Line 3078
    ld	$a4,552($sp)
    # Line 3079
    ld	$a5,560($sp)
    # Line 3078
    subu	$a4,$a4,$t3
    # Line 3079
    subu	$a5,$a5,$a6
    # Line 3078
    addiu	$a4,$a4,1
    # Line 3079
    b	.L0da24680
    addiu	$a5,$a5,1
.L0da24710:
    # Line 3089
    ld	$a4,568($sp)
    ld	$a3,560($sp)
    ld	$a2,552($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    lw	$a5,692($sp)
    move	$a0,$s0
    lw	$a6,700($sp)
    li	$t0,1
    sw	$t0,4($sp)
    bal __glInitTexSourceUnpack
    addiu	$a1,$sp,16
    # Line 3091
    # lw $t9, -24228($gp) # &__glInitTexImageStore
    move	$a0,$s0
    ld	$a3,576($sp)
    ld	$a2,528($sp)
    bal __glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 3092
    # lw $t9, -27528($gp) # &__glInitUnpacker3D
    move	$a0,$s0
    jal	__glInitUnpacker3D
    addiu	$a1,$sp,16
    # Line 3093
    # lw $t9, -28076($gp) # &__glInitPacker3D
    move	$a0,$s0
    jal	__glInitPacker3D
    addiu	$a1,$sp,16
    # Line 3094
    ld	$a2,528($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,576($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0da246c0
    # Line 3098
    ld	$a0,520($sp)
.L0da24794:
    # Line 3070
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da245cc
    ld	$ra,600($sp)
.end __gllei_TexImage3DEXT

# Function: __glLoadDefaultFilterFuncSGIS
# Declared: Line 3112 (Source lines: 3117-3150)
# Address: 0x0da247b0 - 0x0da248b8 (Size: 264 bytes, Frame: 0)
.ent __glLoadDefaultFilterFuncSGIS
__glLoadDefaultFilterFuncSGIS:
    # Line 3123
    lwc1	$f6,_lit_3f297ffa
    # Line 3124
    lwc1	$f7,_lit_3f1c0000
    # Line 3125
    lwc1	$f8,_lit_3f0d4003
    # Line 3126
    lwc1	$f9,_lit_3efc0011
    # Line 3127
    lwc1	$f10,_lit_3edc7ffe
    # Line 3128
    lwc1	$f11,_lit_3ebc7ffe
    # Line 3129
    lwc1	$f12,_lit_3e9c7ffe
    # Line 3130
    lwc1	$f13,_lit_3e7afff3
    # Line 3131
    lwc1	$f14,_lit_3e400000
    # Line 3132
    lwc1	$f15,_lit_3e07ffde
    # Line 3133
    lwc1	$f16,_lit_3daa0019
    # Line 3134
    lwc1	$f17,_lit_3d280065
    # Line 3135
    lwc1	$f18,_lit_3bfffbce
    # Line 3136
    lwc1	$f19,_lit_bc8fffbd
    # Line 3137
    lwc1	$f21,_lit_bd0fffbd
    # Line 3139
    lwc1	$f25,_lit_bd57ff9b
    # Line 3140
    lwc1	$f27,_lit_bd600086
    # Line 3141
    lwc1	$f29,_lit_bd540032
    # Line 3143
    lwc1	$f31,_lit_bd1fff7a
    # Line 3138
    lwc1	$f23,_lit_bd400000
    # Line 3143
    swc1	$f31,104($a0)
    # Line 3142
    swc1	$f23,100($a0)
    # Line 3141
    swc1	$f29,96($a0)
    # Line 3140
    swc1	$f27,92($a0)
    # Line 3139
    swc1	$f25,88($a0)
    # Line 3138
    swc1	$f23,84($a0)
    # Line 3137
    swc1	$f21,80($a0)
    # Line 3136
    swc1	$f19,76($a0)
    # Line 3135
    swc1	$f18,72($a0)
    # Line 3134
    swc1	$f17,68($a0)
    # Line 3133
    swc1	$f16,64($a0)
    # Line 3132
    swc1	$f15,60($a0)
    # Line 3131
    swc1	$f14,56($a0)
    # Line 3130
    swc1	$f13,52($a0)
    # Line 3129
    swc1	$f12,48($a0)
    # Line 3128
    swc1	$f11,44($a0)
    # Line 3127
    swc1	$f10,40($a0)
    # Line 3126
    swc1	$f9,36($a0)
    # Line 3125
    swc1	$f8,32($a0)
    # Line 3124
    swc1	$f7,28($a0)
    # Line 3123
    swc1	$f6,24($a0)
    # Line 3148
    lwc1	$f4,_lit_bafffbce
    # Line 3147
    lwc1	$f3,_lit_bbe00086
    # Line 3146
    lwc1	$f2,_lit_bc600086
    # Line 3144
    lwc1	$f0,_lit_bd000000
    # Line 3145
    lwc1	$f1,_lit_bcb80022
    # Line 3144
    swc1	$f0,108($a0)
    # Line 3117
    lwc1	$f0,_lit_3f554003
    # Line 3145
    swc1	$f1,112($a0)
    # Line 3118
    lwc1	$f1,_lit_3f540000
    # Line 3146
    swc1	$f2,116($a0)
    # Line 3119
    lwc1	$f2,_lit_3f4fbff9
    # Line 3149
    mtc1	$zero,$f5
    # Line 3147
    swc1	$f3,120($a0)
    # Line 3120
    lwc1	$f3,_lit_3f48fffc
    # Line 3149
    swc1	$f5,128($a0)
    # Line 3122
    lwc1	$f5,_lit_3f35c001
    # Line 3148
    swc1	$f4,124($a0)
    # Line 3121
    lwc1	$f4,_lit_3f404007
    # Line 3122
    swc1	$f5,20($a0)
    # Line 3121
    swc1	$f4,16($a0)
    # Line 3120
    swc1	$f3,12($a0)
    # Line 3119
    swc1	$f2,8($a0)
    # Line 3118
    swc1	$f1,4($a0)
    # Line 3150
    jr	$ra
    # Line 3117
    swc1	$f0,0($a0)
.end __glLoadDefaultFilterFuncSGIS

# Function: __glim_TexFilterFuncSGIS
# Declared: Line 3157 (Source lines: 3158-3202)
# Address: 0x0da248c0 - 0x0da24afc (Size: 572 bytes, Frame: 224)
.globl __glim_TexFilterFuncSGIS
.ent __glim_TexFilterFuncSGIS
__glim_TexFilterFuncSGIS:
    # Line 3158
    addiu	$sp,$sp,-96
    sdc1	$f20,32($sp)
    sdc1	$f26,40($sp)
    sdc1	$f22,48($sp)
    sdc1	$f24,56($sp)
    sdc1	$f28,64($sp)
    sdc1	$f30,72($sp)
    sd	$ra,80($sp)
    sd	$s2,8($sp)
    sd	$s1,16($sp)
    move	$v0,$a0
    move	$s1,$a3
    lw	$at,4120($zero)
    li	$v1,1
    sd	$a1,0($sp)
    lui	$a1,0x3
    move	$s2,$a2
    sd	$s0,88($sp)
    addiu	$a0,$a1,-15156
    sd	$gp,24($sp)
    beq	$at,$v1,.L0da24ad4
    addu	$gp,$t9,$a0
    # Line 3166
    # lw $t9, -24468($gp) # &__glLookUpTextureParams
    move	$a1,$v0
    bal __glLookUpTextureParams
    lw	$a0,4112($zero)
    # Line 3169
    ld	$a2,0($sp)
    # Line 3166
    beqz	$v0,.L0da24ae8
    # Line 3179
    move	$a0,$zero
    # Line 3169
    li	$a3,0x8146
    beq	$a2,$a3,.L0da24954
    # Line 3179
    li	$a4,2
    # Line 3175
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0da249bc
    ld	$s2,8($sp)
.L0da24954:
    # Line 3179
    beq	$s2,$a4,.L0da249ec
    addiu	$a3,$s2,-1
    b	.L0da2496c
    # Line 3180
    addiu	$a0,$a0,1
.L0da24964:
    beq	$a1,$a3,.L0da24998
    addiu	$a0,$a0,1
.L0da2496c:
    li	$a1,1
    sllv	$a1,$a1,$a0
    slti	$a5,$a1,1025
    beqz	$a5,.L0da24998
    addiu	$a0,$a0,1
    beq	$a1,$a3,.L0da2499c
    slti	$a2,$a1,1025
    li	$a1,1
    sllv	$a1,$a1,$a0
    slti	$a2,$a1,1025
    bnez	$a2,.L0da24964
.L0da24998:
    slti	$a2,$a1,1025
.L0da2499c:
    bnez	$a2,.L0da249f4
    mtc1	$a3,$f30
    # Line 3183
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0da249bc
    ld	$s2,8($sp)
.L0da249b8:
    ld	$s2,8($sp)
.L0da249bc:
    ld	$s0,88($sp)
    ld	$s1,16($sp)
    ldc1	$f20,32($sp)
    ldc1	$f26,40($sp)
    ldc1	$f22,48($sp)
    ldc1	$f24,56($sp)
    ld	$ra,80($sp)
    ldc1	$f28,64($sp)
    ldc1	$f30,72($sp)
    # Line 3202
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da249ec:
    # Line 3180
    addiu	$a3,$s2,-1
    mtc1	$a3,$f30
.L0da249f4:
    cvt.s.w	$f30,$f30
    lwc1	$f31,_lit_3d000000
    mtc1	$zero,$f20
    move	$s0,$v0
    ldc1	$f22,_lit8_3ff0000000000000
    addiu	$s2,$v0,132
    b	.L0da24a84
    mul.s	$f30,$f30,$f31
    nop
    nop
    nop
.L0da24a20:
    # Line 3195
    # lw $t9, -22760($gp) # &truncf
    jal	truncf
    mov.s	$f12,$f20
    cvt.d.s	$f12,$f20
    # lw $t9, -22760($gp) # &truncf
    add.d	$f12,$f12,$f22
    mov.s	$f28,$f0
    jal	truncf
    cvt.s.d	$f12,$f12
    trunc.w.s	$f15,$f0
    trunc.w.s	$f14,$f28
    mfc1	$a4,$f15
    mfc1	$a3,$f14
    sll	$a4,$a4,0x2
    sll	$a3,$a3,0x2
    addu	$a4,$s1,$a4
    addu	$a3,$s1,$a3
    lwc1	$f13,0($a4)
    lwc1	$f14,0($a3)
    mul.s	$f13,$f13,$f24
    madd.s	$f13,$f13,$f14,$f26
    swc1	$f13,20($s0)
.L0da24a78:
    # Line 3191
    addiu	$s0,$s0,4
    beq	$s0,$s2,.L0da249b8
    # Line 3200
    add.s	$f20,$f30,$f20
.L0da24a84:
    # Line 3192
    # lw $t9, -22760($gp) # &truncf
    jal	truncf
    mov.s	$f12,$f20
    sub.s	$f24,$f20,$f0
    # Line 3193
    ldc1	$f5,_lit8_3f50624dd2f1a9fc
    cvt.d.s	$f26,$f24
    c.lt.d	$f5,$f26
    sub.d	$f26,$f22,$f26
    bc1t	.L0da24a20
    cvt.s.d	$f26,$f26
    # Line 3198
    # lw $t9, -22760($gp) # &truncf
    jal	truncf
    mov.s	$f12,$f20
    trunc.w.s	$f29,$f0
    mfc1	$a5,$f29
    sll	$a5,$a5,0x2
    addu	$a5,$s1,$a5
    lwc1	$f27,0($a5)
    b	.L0da24a78
    swc1	$f27,20($s0)
.L0da24ad4:
    # Line 3165
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da249bc
    ld	$s2,8($sp)
.L0da24ae8:
    # Line 3168
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0da249bc
    ld	$s2,8($sp)
.end __glim_TexFilterFuncSGIS

# Function: __glNearestFilter1
# Declared: Line 3209 (Source lines: 3212-3229)
# Address: 0x0da24b00 - 0x0da24bc0 (Size: 192 bytes, Frame: 48)
.globl __glNearestFilter1
.ent __glNearestFilter1
__glNearestFilter1:
    # Line 3217
    lwc1	$f4,32($a1)
    # Line 3212
    move	$a7,$a0
    addiu	$sp,$sp,-48
    # Line 3217
    lw	$at,4($a0)
    # Line 3212
    sd	$s0,8($sp)
    # Line 3217
    li	$v0,10497
    # Line 3212
    lui	$v1,0x3
    move	$s0,$a1
    sd	$ra,40($sp)
    addiu	$v1,$v1,-15732
    sd	$gp,16($sp)
    # Line 3217
    beq	$at,$v0,.L0da24b8c
    # Line 3212
    addu	$gp,$t9,$v1
    # Line 3222
    mul.s	$f0,$f14,$f4
    trunc.w.s	$f0,$f0
    # Line 3221
    lw	$a0,20($a1)
    # Line 3222
    mfc1	$a1,$f0
    # Line 3224
    addiu	$a3,$a0,-1
    # Line 3222
    slt	$a2,$a1,$a0
    bltz	$a1,.L0da24b84
    move	$a4,$a1
    movz	$a4,$a3,$a2
.L0da24b58:
    # Line 3228
    lw	$t9,96($s0)
    move	$a0,$s0
    move	$a1,$a7
    move	$a2,$zero
    jalr	$t9
    move	$a3,$zero
    ld	$ra,40($sp)
    ld	$s0,8($sp)
    # Line 3229
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da24b84:
    # Line 3222
    b	.L0da24b58
    move	$a4,$zero
.L0da24b8c:
    # Line 3219
    # lw $t9, -28808($gp) # &__glFrac
    sdc1	$f4,0($sp)
    sd	$a5,24($sp)
    sd	$a0,32($sp)
    jal	__glFrac
    mov.s	$f12,$f14
    ldc1	$f1,0($sp)
    mul.s	$f1,$f0,$f1
    trunc.w.s	$f1,$f1
    ld	$a7,32($sp)
    ld	$a5,24($sp)
    b	.L0da24b58
    mfc1	$a4,$f1
.end __glNearestFilter1

# Function: __glNearestFilter2
# Declared: Line 3236 (Source lines: 3239-3267)
# Address: 0x0da24bc0 - 0x0da24cf4 (Size: 308 bytes, Frame: 208)
.globl __glNearestFilter2
.ent __glNearestFilter2
__glNearestFilter2:
    # Line 3244
    lwc1	$f4,32($a1)
    # Line 3239
    addiu	$sp,$sp,-80
    sd	$a5,16($sp)
    sd	$s1,56($sp)
    sd	$s0,32($sp)
    move	$s0,$a1
    # Line 3244
    lw	$at,4($a0)
    # Line 3239
    sd	$s2,24($sp)
    # Line 3244
    li	$a3,10497
    # Line 3239
    lui	$v0,0x3
    move	$s2,$a0
    sd	$ra,64($sp)
    addiu	$v0,$v0,-15924
    mov.s	$f5,$f15
    sd	$gp,40($sp)
    # Line 3244
    beq	$a3,$at,.L0da24ca0
    # Line 3239
    addu	$gp,$t9,$v0
    # Line 3249
    mul.s	$f0,$f14,$f4
    trunc.w.s	$f0,$f0
    # Line 3248
    lw	$a0,20($a1)
    # Line 3249
    mfc1	$a1,$f0
    # Line 3251
    addiu	$a2,$a0,-1
    # Line 3249
    slt	$v1,$a1,$a0
    bltz	$a1,.L0da24c90
    move	$s1,$a1
    movz	$s1,$a2,$v1
.L0da24c28:
    # Line 3255
    lw	$a4,8($s2)
    # Line 3259
    lw	$a1,24($s0)
    # Line 3255
    lwc1	$f4,36($s0)
    beq	$a3,$a4,.L0da24cd0
    # Line 3262
    addiu	$a6,$a1,-1
    # Line 3260
    mul.s	$f1,$f5,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f1
    slt	$a5,$a0,$a1
    bltz	$a0,.L0da24c98
    move	$a3,$a0
    movz	$a3,$a6,$a5
.L0da24c58:
    # Line 3266
    lw	$t9,96($s0)
    move	$a0,$s0
    move	$a1,$s2
    move	$a2,$zero
    move	$a4,$s1
    jalr	$t9
    ld	$a5,16($sp)
    ld	$s2,24($sp)
    ld	$ra,64($sp)
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 3267
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da24c90:
    # Line 3249
    b	.L0da24c28
    move	$s1,$zero
.L0da24c98:
    # Line 3260
    b	.L0da24c58
    move	$a3,$zero
.L0da24ca0:
    # Line 3246
    # lw $t9, -28808($gp) # &__glFrac
    sdc1	$f4,0($sp)
    sdc1	$f15,48($sp)
    jal	__glFrac
    mov.s	$f12,$f14
    ldc1	$f2,0($sp)
    mul.s	$f2,$f0,$f2
    trunc.w.s	$f2,$f2
    li	$a3,10497
    ldc1	$f5,48($sp)
    b	.L0da24c28
    mfc1	$s1,$f2
.L0da24cd0:
    # Line 3257
    # lw $t9, -28808($gp) # &__glFrac
    sdc1	$f4,8($sp)
    jal	__glFrac
    mov.s	$f12,$f5
    ldc1	$f3,8($sp)
    mul.s	$f3,$f0,$f3
    trunc.w.s	$f3,$f3
    b	.L0da24c58
    mfc1	$a3,$f3
.end __glNearestFilter2

# Function: __glNearestFilter3
# Declared: Line 3273 (Source lines: 3276-3315)
# Address: 0x0da24d00 - 0x0da24ea4 (Size: 420 bytes, Frame: 224)
.globl __glNearestFilter3
.ent __glNearestFilter3
__glNearestFilter3:
    # Line 3281
    lwc1	$f4,32($a1)
    # Line 3276
    addiu	$sp,$sp,-96
    sd	$a5,32($sp)
    sdc1	$f16,8($sp)
    sd	$s3,72($sp)
    sd	$s2,80($sp)
    sd	$s0,48($sp)
    move	$s0,$a1
    # Line 3281
    lw	$at,4($a0)
    # Line 3276
    sd	$s1,40($sp)
    # Line 3281
    li	$a2,10497
    # Line 3276
    lui	$v0,0x3
    move	$s1,$a0
    sd	$ra,88($sp)
    addiu	$v0,$v0,-16244
    mov.s	$f5,$f15
    sd	$gp,56($sp)
    # Line 3281
    beq	$a2,$at,.L0da24e28
    # Line 3276
    addu	$gp,$t9,$v0
    # Line 3286
    mul.s	$f0,$f14,$f4
    trunc.w.s	$f0,$f0
    # Line 3285
    lw	$a0,20($a1)
    # Line 3286
    mfc1	$a1,$f0
    # Line 3288
    addiu	$a3,$a0,-1
    # Line 3286
    slt	$v1,$a1,$a0
    bltz	$a1,.L0da24e10
    move	$s2,$a1
    movz	$s2,$a3,$v1
.L0da24d70:
    # Line 3292
    lw	$a4,8($s1)
    # Line 3296
    lw	$a1,24($s0)
    # Line 3292
    lwc1	$f4,36($s0)
    beq	$a2,$a4,.L0da24e58
    # Line 3299
    addiu	$a6,$a1,-1
    # Line 3297
    mul.s	$f1,$f5,$f4
    trunc.w.s	$f1,$f1
    mfc1	$a0,$f1
    slt	$a5,$a0,$a1
    bltz	$a0,.L0da24e18
    move	$s3,$a0
    movz	$s3,$a6,$a5
.L0da24da0:
    # Line 3303
    lw	$a7,12($s1)
    # Line 3307
    lw	$a0,28($s0)
    # Line 3308
    ldc1	$f2,8($sp)
    # Line 3303
    lwc1	$f4,40($s0)
    beq	$a2,$a7,.L0da24e80
    # Line 3310
    addiu	$t1,$a0,-1
    # Line 3308
    mul.s	$f2,$f2,$f4
    trunc.w.s	$f2,$f2
    mfc1	$a1,$f2
    slt	$t0,$a1,$a0
    bltz	$a1,.L0da24e20
    move	$a2,$a1
    movz	$a2,$t1,$t0
.L0da24dd4:
    # Line 3314
    lw	$t9,96($s0)
    move	$a0,$s0
    move	$a1,$s1
    move	$a3,$s3
    move	$a4,$s2
    jalr	$t9
    ld	$a5,32($sp)
    ld	$s3,72($sp)
    ld	$s2,80($sp)
    ld	$ra,88($sp)
    ld	$s1,40($sp)
    ld	$s0,48($sp)
    # Line 3315
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da24e10:
    # Line 3286
    b	.L0da24d70
    move	$s2,$zero
.L0da24e18:
    # Line 3297
    b	.L0da24da0
    move	$s3,$zero
.L0da24e20:
    # Line 3308
    b	.L0da24dd4
    move	$a2,$zero
.L0da24e28:
    # Line 3283
    # lw $t9, -28808($gp) # &__glFrac
    sdc1	$f15,64($sp)
    sdc1	$f4,16($sp)
    jal	__glFrac
    mov.s	$f12,$f14
    ldc1	$f3,16($sp)
    mul.s	$f3,$f0,$f3
    trunc.w.s	$f3,$f3
    li	$a2,10497
    ldc1	$f5,64($sp)
    b	.L0da24d70
    mfc1	$s2,$f3
.L0da24e58:
    # Line 3294
    # lw $t9, -28808($gp) # &__glFrac
    sdc1	$f4,24($sp)
    jal	__glFrac
    mov.s	$f12,$f5
    ldc1	$f4,24($sp)
    mul.s	$f4,$f0,$f4
    trunc.w.s	$f4,$f4
    li	$a2,10497
    b	.L0da24da0
    mfc1	$s3,$f4
.L0da24e80:
    # Line 3305
    # lw $t9, -28808($gp) # &__glFrac
    sdc1	$f4,0($sp)
    jal	__glFrac
    ldc1	$f12,8($sp)
    ldc1	$f5,0($sp)
    mul.s	$f5,$f0,$f5
    trunc.w.s	$f5,$f5
    b	.L0da24dd4
    mfc1	$a2,$f5
.end __glNearestFilter3

# Function: __glLinearFilter1
# Declared: Line 3321 (Source lines: 3324-3378)
# Address: 0x0da24eb0 - 0x0da25154 (Size: 676 bytes, Frame: 144)
.globl __glLinearFilter1
.ent __glLinearFilter1
__glLinearFilter1:
    # Line 3324
    addiu	$sp,$sp,-144
    sd	$a5,72($sp)
    sd	$ra,128($sp)
    # Line 3331
    lw	$v1,20($a1)
    # Line 3324
    sdc1	$f20,48($sp)
    sd	$gp,104($sp)
    # Line 3331
    mtc1	$v1,$f5
    # Line 3324
    sd	$s1,96($sp)
    sd	$s0,112($sp)
    # Line 3331
    lw	$a3,4($a0)
    cvt.s.w	$f5,$f5
    # Line 3335
    mtc1	$zero,$f6
    # Line 3324
    move	$s0,$a1
    # Line 3331
    sd	$v1,64($sp)
    li	$at,10497
    # Line 3324
    lui	$v0,0x3
    # Line 3325
    lw	$v1,0($a0)
    # Line 3324
    move	$s1,$a0
    addiu	$v0,$v0,-16676
    # Line 3325
    sd	$v1,80($sp)
    # Line 3324
    addu	$gp,$t9,$v0
    # Line 3331
    lwc1	$f0,3540($v1)
    beq	$a3,$at,.L0da25104
    mul.s	$f20,$f5,$f14
    # Line 3335
    c.lt.s	$f20,$f6
    bc1f	.L0da24f24
    sd	$a3,56($sp)
    b	.L0da24f2c
    mtc1	$zero,$f20
.L0da24f24:
    c.lt.s $f5,$f20
    movt.s	$f20,$f5,$fcc1
.L0da24f2c:
    # Line 3340
    # lw $t9, -22764($gp) # &floor
    # Line 3339
    sub.s	$f20,$f20,$f0
    sd	$s2,120($sp)
    # Line 3340
    jal	floor
    cvt.d.s	$f12,$f20
    trunc.w.d	$f5,$f0
    # Line 3341
    ld	$a1,56($sp)
    # Line 3340
    mfc1	$a0,$f5
    # Line 3341
    li	$a2,0x812f
    addiu	$s2,$a0,1
    # Line 3340
    move	$a3,$a0
    # Line 3341
    beq	$a1,$a2,.L0da25064
    sd	$a3,88($sp)
.L0da24f60:
    # Line 3349
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f20
    # Line 3352
    lw	$t9,96($s0)
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$zero
    # Line 3349
    mov.s	$f20,$f0
    # Line 3352
    ld	$a4,88($sp)
    jalr	$t9
    addiu	$a5,$sp,0
    # Line 3353
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$zero
    move	$a4,$s2
    jalr	$t9
    addiu	$a5,$sp,24
    # Line 3355
    ld	$a5,80($sp)
    # Line 3356
    lw	$a3,64($s0)
    li	$t2,0x8049
    # Line 3355
    lwc1	$f0,3544($a5)
    # Line 3356
    li	$t1,6406
    li	$a4,6410
    ld	$ra,128($sp)
    li	$t0,6407
    li	$a7,6408
    ld	$s2,120($sp)
    li	$a6,6409
    beq	$a3,$a4,.L0da2501c
    # Line 3355
    sub.s	$f0,$f0,$f20
    # Line 3356
    beq	$a3,$a6,.L0da25034
    # Line 3378
    ld	$s0,112($sp)
    ld	$s1,96($sp)
    # Line 3356
    beq	$a3,$a7,.L0da25090
    # Line 3378
    ld	$gp,104($sp)
    # Line 3356
    beq	$a3,$t0,.L0da250ac
    # Line 3367
    lwc1	$f8,24($sp)
    # Line 3356
    beq	$a3,$t1,.L0da2513c
    # Line 3372
    lwc1	$f11,40($sp)
    # Line 3356
    beq	$a3,$t2,.L0da250ec
    # Line 3375
    lwc1	$f9,44($sp)
.L0da25010:
    # Line 3378
    ldc1	$f20,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da2501c:
    # Line 3358
    lwc1	$f1,40($sp)
    lwc1	$f2,16($sp)
    mul.s	$f1,$f1,$f20
    madd.s	$f1,$f1,$f0,$f2
    ld	$t3,72($sp)
    swc1	$f1,16($t3)
.L0da25034:
    # Line 3361
    lwc1	$f2,36($sp)
    lwc1	$f3,12($sp)
    mul.s	$f2,$f2,$f20
    madd.s	$f2,$f2,$f0,$f3
    # Line 3378
    ld	$gp,104($sp)
    ld	$s1,96($sp)
    # Line 3361
    ld	$s0,72($sp)
    # Line 3378
    ldc1	$f20,48($sp)
    # Line 3361
    swc1	$f2,12($s0)
    # Line 3378
    ld	$s0,112($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da25064:
    # Line 3343
    cvt.s.w	$f3,$f5
    mtc1	$zero,$f4
    # Line 3344
    ld	$t9,64($sp)
    addiu	$ra,$t9,-1
    # Line 3343
    slt	$t9,$s2,$t9
    c.lt.s $f3,$f4
    move	$t8,$a0
    movz	$s2,$ra,$t9
    movt	$t8,$zero,$fcc2
    b	.L0da24f60
    sd	$t8,88($sp)
.L0da25090:
    # Line 3364
    lwc1	$f5,40($sp)
    lwc1	$f6,16($sp)
    mul.s	$f5,$f5,$f20
    madd.s	$f5,$f5,$f0,$f6
    ld	$at,72($sp)
    swc1	$f5,16($at)
    # Line 3367
    lwc1	$f8,24($sp)
.L0da250ac:
    lwc1	$f9,0($sp)
    mul.s	$f8,$f8,$f20
    madd.s	$f8,$f8,$f0,$f9
    ld	$v0,72($sp)
    swc1	$f8,0($v0)
    # Line 3368
    lwc1	$f7,28($sp)
    lwc1	$f8,4($sp)
    mul.s	$f7,$f7,$f20
    madd.s	$f7,$f7,$f0,$f8
    swc1	$f7,4($v0)
    # Line 3369
    lwc1	$f6,32($sp)
    lwc1	$f7,8($sp)
    mul.s	$f6,$f6,$f20
    madd.s	$f6,$f6,$f0,$f7
    # Line 3370
    b	.L0da25010
    # Line 3369
    swc1	$f6,8($v0)
.L0da250ec:
    # Line 3375
    lwc1	$f10,20($sp)
    mul.s	$f9,$f9,$f20
    madd.s	$f9,$f9,$f0,$f10
    # Line 3376
    ld	$v1,72($sp)
    b	.L0da25010
    # Line 3375
    swc1	$f9,20($v1)
.L0da25104:
    # Line 3333
    msub.s	$f20,$f0,$f5,$f14
    # Line 3334
    # lw $t9, -22764($gp) # &floor
    sd	$s2,120($sp)
    jal	floor
    cvt.d.s	$f12,$f20
    trunc.w.d	$f10,$f0
    ld	$s2,64($sp)
    mfc1	$t8,$f10
    addiu	$s2,$s2,-1
    and	$t8,$s2,$t8
    sd	$t8,88($sp)
    # Line 3335
    addiu	$t8,$t8,1
    b	.L0da24f60
    and	$s2,$s2,$t8
.L0da2513c:
    # Line 3372
    lwc1	$f12,16($sp)
    mul.s	$f11,$f11,$f20
    madd.s	$f11,$f11,$f0,$f12
    # Line 3373
    ld	$t8,72($sp)
    b	.L0da25010
    # Line 3372
    swc1	$f11,16($t8)
.end __glLinearFilter1

# Function: __glLinearFilter2
# Declared: Line 3384 (Source lines: 3387-3480)
# Address: 0x0da25160 - 0x0da25664 (Size: 1284 bytes, Frame: 224)
.globl __glLinearFilter2
.ent __glLinearFilter2
__glLinearFilter2:
    # Line 3388
    lw	$v0,0($a0)
    # Line 3387
    addiu	$sp,$sp,-224
    # Line 3388
    sd	$v0,168($sp)
    # Line 3395
    lwc1	$f5,32($a1)
    sdc1	$f20,184($sp)
    sd	$ra,208($sp)
    # Line 3387
    sdc1	$f22,104($sp)
    # Line 3395
    trunc.w.s	$f5,$f5
    sd	$gp,176($sp)
    # Line 3387
    sd	$s0,128($sp)
    # Line 3396
    cvt.s.w	$f5,$f5
    # Line 3387
    sd	$s5,152($sp)
    # Line 3402
    mtc1	$zero,$f6
    # Line 3387
    sd	$s2,136($sp)
    move	$s5,$a5
    move	$s0,$a1
    # Line 3397
    lw	$s2,4($a0)
    # Line 3387
    sd	$s1,144($sp)
    # Line 3397
    li	$a3,10497
    # Line 3387
    lui	$at,0x3
    # Line 3396
    mul.s	$f0,$f5,$f14
    # Line 3387
    move	$s1,$a0
    sdc1	$f24,96($sp)
    addiu	$at,$at,-17364
    # Line 3397
    lwc1	$f24,3540($v0)
    # Line 3387
    addu	$gp,$t9,$at
    # Line 3397
    beq	$a3,$s2,.L0da255a0
    # Line 3396
    mov.s	$f22,$f0
    # Line 3402
    c.lt.s	$f0,$f6
    bc1f	.L0da251e4
    nop
    b	.L0da251ec
    mtc1	$zero,$f22
.L0da251e4:
    c.lt.s $f5,$f0
    movt.s	$f22,$f5,$fcc1
.L0da251ec:
    # Line 3407
    # lw $t9, -22764($gp) # &floor
    sdc1	$f15,192($sp)
    # Line 3406
    sub.s	$f22,$f22,$f24
    sd	$s3,200($sp)
    sd	$s4,216($sp)
    # Line 3407
    jal	floor
    cvt.d.s	$f12,$f22
    trunc.w.d	$f6,$f0
    mfc1	$a0,$f6
    # Line 3408
    li	$v0,0x812f
    li	$a1,10497
    addiu	$s3,$a0,1
    ldc1	$f5,192($sp)
    beq	$s2,$v0,.L0da253c0
    # Line 3407
    move	$s4,$a0
.L0da25228:
    # Line 3416
    lwc1	$f6,36($s0)
    trunc.w.s	$f6,$f6
    # Line 3417
    cvt.s.w	$f6,$f6
    lw	$a0,8($s1)
    mul.s	$f0,$f6,$f5
    beq	$a1,$a0,.L0da255e8
    mov.s	$f20,$f0
    # Line 3422
    mtc1	$zero,$f5
    c.lt.s $f0,$f5
    bc1f .L0da2525c
    sd	$a0,160($sp)
    b	.L0da25264
    mtc1	$zero,$f20
.L0da2525c:
    c.lt.s $f6,$f0
    movt.s	$f20,$f6,$fcc3
.L0da25264:
    # Line 3427
    # lw $t9, -22764($gp) # &floor
    # Line 3426
    sub.s	$f20,$f20,$f24
    sd	$s5,120($sp)
    # Line 3427
    jal	floor
    cvt.d.s	$f12,$f20
    trunc.w.d	$f5,$f0
    # Line 3428
    ld	$v1,160($sp)
    # Line 3427
    mfc1	$a0,$f5
    # Line 3428
    li	$a1,0x812f
    addiu	$s2,$a0,1
    ldc1	$f24,96($sp)
    beq	$v1,$a1,.L0da253e8
    # Line 3427
    move	$s5,$a0
.L0da25298:
    # Line 3436
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f22
    # Line 3437
    # lw $t9, -28808($gp) # &__glFrac
    # Line 3436
    mov.s	$f22,$f0
    # Line 3437
    jal	__glFrac
    mov.s	$f12,$f20
    # Line 3440
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s5
    move	$a4,$s4
    # Line 3437
    mov.s	$f20,$f0
    # Line 3440
    jalr	$t9
    addiu	$a5,$sp,0
    # Line 3441
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s5
    move	$a4,$s3
    jalr	$t9
    addiu	$a5,$sp,24
    # Line 3442
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s2
    move	$a4,$s4
    ld	$s5,152($sp)
    jalr	$t9
    addiu	$a5,$sp,48
    # Line 3443
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s2
    move	$a4,$s3
    ld	$s4,216($sp)
    jalr	$t9
    addiu	$a5,$sp,72
    # Line 3445
    ld	$a3,168($sp)
    ld	$s3,200($sp)
    lwc1	$f5,3544($a3)
    # Line 3453
    li	$t0,0x8049
    lw	$a0,64($s0)
    ld	$ra,208($sp)
    li	$a7,6406
    li	$a2,6410
    ld	$s2,136($sp)
    li	$a6,6407
    li	$a5,6408
    # Line 3446
    sub.s	$f0,$f5,$f20
    ld	$s1,144($sp)
    # Line 3453
    li	$a4,6409
    beq	$a0,$a2,.L0da2545c
    # Line 3445
    sub.s	$f5,$f5,$f22
    ld	$s0,128($sp)
    # Line 3453
    beq	$a0,$a4,.L0da25410
    nop
    beq	$a0,$a5,.L0da25530
    # Line 3463
    lwc1	$f16,40($sp)
    # Line 3453
    beq	$a0,$a6,.L0da2549c
    nop
    beq	$a0,$a7,.L0da2562c
    # Line 3472
    lwc1	$f27,40($sp)
    # Line 3453
    beq	$a0,$t0,.L0da25568
    # Line 3476
    lwc1	$f17,44($sp)
.L0da253ac:
    ldc1	$f20,184($sp)
    ldc1	$f22,104($sp)
    # Line 3480
    ld	$gp,176($sp)
    jr	$ra
    addiu	$sp,$sp,224
.L0da253c0:
    # Line 3410
    cvt.s.w	$f7,$f6
    lw	$t1,20($s0)
    mtc1	$zero,$f8
    # Line 3411
    addiu	$t2,$t1,-1
    # Line 3410
    slt	$t1,$s3,$t1
    movz	$s3,$t2,$t1
    c.lt.s $f7,$f8
    move	$s4,$a0
    b	.L0da25228
    movt	$s4,$zero,$fcc4
.L0da253e8:
    # Line 3430
    cvt.s.w	$f9,$f5
    lw	$t2,24($s0)
    mtc1	$zero,$f10
    # Line 3431
    addiu	$t3,$t2,-1
    # Line 3430
    slt	$t2,$s2,$t2
    movz	$s2,$t3,$t2
    c.lt.s $f9,$f10
    move	$s5,$a0
    b	.L0da25298
    movt	$s5,$zero,$fcc5
.L0da25410:
    # Line 3455
    mul.s	$f7,$f20,$f22
    mul.s	$f8,$f20,$f5
    mul.s	$f9,$f22,$f0
    mul.s	$f6,$f5,$f0
.L0da25420:
    # Line 3459
    lwc1	$f11,36($sp)
    lwc1	$f12,12($sp)
    lwc1	$f13,60($sp)
    mul.s	$f11,$f11,$f9
    madd.s	$f11,$f11,$f12,$f6
    lwc1	$f12,84($sp)
    madd.s	$f11,$f11,$f13,$f8
    madd.s	$f11,$f11,$f12,$f7
    ldc1	$f20,184($sp)
    # Line 3480
    ld	$gp,176($sp)
    # Line 3459
    ld	$t3,120($sp)
    # Line 3480
    ldc1	$f22,104($sp)
    addiu	$sp,$sp,224
    jr	$ra
    # Line 3459
    swc1	$f11,12($t3)
.L0da2545c:
    # Line 3455
    lwc1	$f12,40($sp)
    mul.s	$f9,$f22,$f0
    lwc1	$f13,16($sp)
    mul.s	$f6,$f5,$f0
    mul.s	$f12,$f12,$f9
    madd.s	$f12,$f12,$f13,$f6
    lwc1	$f13,64($sp)
    mul.s	$f8,$f20,$f5
    madd.s	$f12,$f12,$f13,$f8
    lwc1	$f13,88($sp)
    mul.s	$f7,$f20,$f22
    madd.s	$f12,$f12,$f13,$f7
    ld	$t8,120($sp)
    ld	$s0,128($sp)
    b	.L0da25420
    swc1	$f12,16($t8)
.L0da2549c:
    # Line 3463
    mul.s	$f7,$f20,$f22
    mul.s	$f8,$f20,$f5
    mul.s	$f9,$f22,$f0
    mul.s	$f6,$f5,$f0
.L0da254ac:
    # Line 3467
    lwc1	$f15,24($sp)
    lwc1	$f16,0($sp)
    lwc1	$f17,48($sp)
    mul.s	$f15,$f15,$f9
    madd.s	$f15,$f15,$f16,$f6
    lwc1	$f16,72($sp)
    madd.s	$f15,$f15,$f17,$f8
    madd.s	$f15,$f15,$f16,$f7
    ld	$t9,120($sp)
    swc1	$f15,0($t9)
    # Line 3468
    lwc1	$f14,28($sp)
    lwc1	$f15,4($sp)
    lwc1	$f16,52($sp)
    mul.s	$f14,$f14,$f9
    madd.s	$f14,$f14,$f15,$f6
    lwc1	$f15,76($sp)
    madd.s	$f14,$f14,$f16,$f8
    madd.s	$f14,$f14,$f15,$f7
    swc1	$f14,4($t9)
    # Line 3469
    lwc1	$f13,32($sp)
    lwc1	$f14,8($sp)
    lwc1	$f15,56($sp)
    mul.s	$f13,$f13,$f9
    madd.s	$f13,$f13,$f14,$f6
    lwc1	$f14,80($sp)
    madd.s	$f13,$f13,$f15,$f8
    madd.s	$f13,$f13,$f14,$f7
    ldc1	$f20,184($sp)
    # Line 3480
    ld	$gp,176($sp)
    ldc1	$f22,104($sp)
    addiu	$sp,$sp,224
    jr	$ra
    # Line 3469
    swc1	$f13,8($t9)
.L0da25530:
    # Line 3463
    mul.s	$f9,$f22,$f0
    lwc1	$f17,16($sp)
    mul.s	$f6,$f5,$f0
    mul.s	$f16,$f16,$f9
    madd.s	$f16,$f16,$f17,$f6
    lwc1	$f17,64($sp)
    mul.s	$f8,$f20,$f5
    madd.s	$f16,$f16,$f17,$f8
    lwc1	$f17,88($sp)
    mul.s	$f7,$f20,$f22
    madd.s	$f16,$f16,$f17,$f7
    ld	$at,120($sp)
    b	.L0da254ac
    swc1	$f16,16($at)
.L0da25568:
    # Line 3476
    mul.s	$f21,$f22,$f0
    lwc1	$f18,20($sp)
    mul.s	$f19,$f5,$f0
    mul.s	$f17,$f17,$f21
    madd.s	$f17,$f17,$f18,$f19
    lwc1	$f18,68($sp)
    mul.s	$f19,$f20,$f5
    madd.s	$f17,$f17,$f18,$f19
    lwc1	$f18,92($sp)
    mul.s	$f19,$f20,$f22
    madd.s	$f17,$f17,$f18,$f19
    # Line 3478
    ld	$v0,120($sp)
    b	.L0da253ac
    # Line 3476
    swc1	$f17,20($v0)
.L0da255a0:
    # Line 3400
    msub.s	$f22,$f24,$f5,$f14
    sdc1	$f15,192($sp)
    # Line 3401
    # lw $t9, -22764($gp) # &floor
    # Line 3399
    lw	$s2,20($a1)
    sd	$s3,200($sp)
    sd	$s4,216($sp)
    addiu	$s2,$s2,-1
    # Line 3401
    jal	floor
    cvt.d.s	$f12,$f22
    trunc.w.d	$f23,$f0
    mfc1	$s3,$f23
    li	$a1,10497
    and	$s3,$s2,$s3
    move	$s4,$s3
    # Line 3402
    addiu	$s3,$s3,1
    ldc1	$f5,192($sp)
    b	.L0da25228
    and	$s3,$s2,$s3
.L0da255e8:
    # Line 3420
    msub.s	$f20,$f24,$f6,$f5
    # Line 3421
    # lw $t9, -22764($gp) # &floor
    # Line 3419
    lw	$t8,24($s0)
    sd	$s5,120($sp)
    addiu	$t8,$t8,-1
    sd	$t8,112($sp)
    # Line 3421
    jal	floor
    cvt.d.s	$f12,$f20
    trunc.w.d	$f25,$f0
    ld	$s2,112($sp)
    mfc1	$t8,$f25
    and	$t8,$s2,$t8
    move	$s5,$t8
    # Line 3422
    addiu	$t8,$t8,1
    ldc1	$f24,96($sp)
    b	.L0da25298
    and	$s2,$s2,$t8
.L0da2562c:
    # Line 3472
    mul.s	$f1,$f22,$f0
    lwc1	$f29,16($sp)
    mul.s	$f31,$f5,$f0
    mul.s	$f27,$f27,$f1
    madd.s	$f27,$f27,$f29,$f31
    lwc1	$f29,64($sp)
    mul.s	$f31,$f20,$f5
    madd.s	$f27,$f27,$f29,$f31
    lwc1	$f29,88($sp)
    mul.s	$f31,$f20,$f22
    madd.s	$f27,$f27,$f29,$f31
    # Line 3474
    ld	$t9,120($sp)
    b	.L0da253ac
    # Line 3472
    swc1	$f27,16($t9)
.end __glLinearFilter2

# Function: __glLinearFilter3
# Declared: Line 3485 (Source lines: 3488-3627)
# Address: 0x0da25670 - 0x0da25ed0 (Size: 2144 bytes, Frame: 224)
.globl __glLinearFilter3
.ent __glLinearFilter3
__glLinearFilter3:
    # Line 3488
    addiu	$sp,$sp,-352
    sdc1	$f16,224($sp)
    # Line 3489
    lw	$v0,0($a0)
    sd	$v0,296($sp)
    # Line 3488
    sdc1	$f15,216($sp)
    sdc1	$f20,200($sp)
    sdc1	$f22,208($sp)
    # Line 3497
    lwc1	$f5,32($a1)
    sd	$s4,320($sp)
    sd	$ra,328($sp)
    # Line 3488
    sdc1	$f24,232($sp)
    # Line 3497
    trunc.w.s	$f5,$f5
    sd	$gp,304($sp)
    # Line 3488
    sd	$s0,264($sp)
    # Line 3498
    cvt.s.w	$f5,$f5
    # Line 3488
    sd	$s5,280($sp)
    sd	$s2,256($sp)
    move	$s5,$a5
    move	$s0,$a1
    # Line 3499
    lw	$s2,4($a0)
    # Line 3488
    sd	$s1,272($sp)
    # Line 3499
    li	$a2,10497
    # Line 3488
    lui	$at,0x3
    # Line 3498
    mul.s	$f0,$f5,$f14
    # Line 3488
    move	$s1,$a0
    sdc1	$f26,192($sp)
    addiu	$at,$at,-18660
    # Line 3499
    lwc1	$f26,3540($v0)
    # Line 3488
    addu	$gp,$t9,$at
    # Line 3499
    beq	$a2,$s2,.L0da25d8c
    # Line 3498
    mov.s	$f24,$f0
    # Line 3504
    mtc1	$zero,$f6
    c.lt.s	$f0,$f6
    bc1f	.L0da25704
    ldc1	$f20,216($sp)
    b	.L0da2570c
    mtc1	$zero,$f24
.L0da25704:
    c.lt.s $f5,$f0
    movt.s	$f24,$f5,$fcc1
.L0da2570c:
    # Line 3509
    # lw $t9, -22764($gp) # &floor
    # Line 3508
    sub.s	$f24,$f24,$f26
    sd	$s7,336($sp)
    sd	$s3,344($sp)
    # Line 3509
    jal	floor
    cvt.d.s	$f12,$f24
    trunc.w.d	$f5,$f0
    mfc1	$a1,$f5
    # Line 3510
    li	$v0,0x812f
    li	$a0,10497
    addiu	$s3,$a1,1
    beq	$s2,$v0,.L0da259e0
    # Line 3509
    move	$s7,$a1
.L0da25740:
    # Line 3518
    lwc1	$f5,36($s0)
    trunc.w.s	$f5,$f5
    # Line 3519
    cvt.s.w	$f5,$f5
    lw	$s4,8($s1)
    mul.s	$f0,$f5,$f20
    beq	$a0,$s4,.L0da25dd0
    mov.s	$f22,$f0
    # Line 3524
    mtc1	$zero,$f6
    c.lt.s $f0,$f6
    bc1f .L0da25774
    nop
    b	.L0da2577c
    mtc1	$zero,$f22
.L0da25774:
    c.lt.s $f5,$f0
    movt.s	$f22,$f5,$fcc3
.L0da2577c:
    # Line 3529
    # lw $t9, -22764($gp) # &floor
    # Line 3528
    sub.s	$f22,$f22,$f26
    sd	$s6,312($sp)
    # Line 3529
    jal	floor
    cvt.d.s	$f12,$f22
    trunc.w.d	$f6,$f0
    mfc1	$a0,$f6
    # Line 3530
    li	$v1,0x812f
    li	$a1,10497
    addiu	$s2,$a0,1
    ldc1	$f5,224($sp)
    beq	$s4,$v1,.L0da25a08
    # Line 3529
    move	$s6,$a0
.L0da257b0:
    # Line 3538
    lwc1	$f6,40($s0)
    trunc.w.s	$f6,$f6
    # Line 3539
    cvt.s.w	$f6,$f6
    lw	$a0,12($s1)
    mul.s	$f0,$f6,$f5
    beq	$a1,$a0,.L0da25e10
    mov.s	$f20,$f0
    # Line 3544
    mtc1	$zero,$f5
    c.lt.s $f0,$f5
    bc1f .L0da257e4
    sd	$a0,288($sp)
    b	.L0da257ec
    mtc1	$zero,$f20
.L0da257e4:
    c.lt.s $f6,$f0
    movt.s	$f20,$f6,$fcc5
.L0da257ec:
    # Line 3549
    # lw $t9, -22764($gp) # &floor
    # Line 3548
    sub.s	$f20,$f20,$f26
    sd	$s5,248($sp)
    # Line 3549
    jal	floor
    cvt.d.s	$f12,$f20
    trunc.w.d	$f5,$f0
    # Line 3550
    ld	$a1,288($sp)
    # Line 3549
    mfc1	$a0,$f5
    # Line 3550
    li	$a2,0x812f
    addiu	$s4,$a0,1
    ldc1	$f26,192($sp)
    beq	$a1,$a2,.L0da25a30
    # Line 3549
    move	$s5,$a0
.L0da25820:
    # Line 3558
    # lw $t9, -28808($gp) # &__glFrac
    jal	__glFrac
    mov.s	$f12,$f24
    # Line 3559
    # lw $t9, -28808($gp) # &__glFrac
    # Line 3558
    mov.s	$f24,$f0
    # Line 3559
    jal	__glFrac
    mov.s	$f12,$f22
    # Line 3560
    # lw $t9, -28808($gp) # &__glFrac
    # Line 3559
    mov.s	$f22,$f0
    # Line 3560
    jal	__glFrac
    mov.s	$f12,$f20
    # Line 3563
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$s5
    move	$a3,$s6
    move	$a4,$s7
    # Line 3560
    mov.s	$f20,$f0
    # Line 3563
    jalr	$t9
    addiu	$a5,$sp,0
    # Line 3564
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$s5
    move	$a3,$s6
    move	$a4,$s3
    jalr	$t9
    addiu	$a5,$sp,24
    # Line 3565
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$s5
    move	$a3,$s2
    move	$a4,$s7
    jalr	$t9
    addiu	$a5,$sp,48
    # Line 3566
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$s5
    move	$a3,$s2
    move	$a4,$s3
    jalr	$t9
    addiu	$a5,$sp,72
    # Line 3568
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$s4
    move	$a3,$s6
    move	$a4,$s7
    ld	$s5,280($sp)
    jalr	$t9
    addiu	$a5,$sp,96
    # Line 3569
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$s4
    move	$a3,$s6
    move	$a4,$s3
    jalr	$t9
    addiu	$a5,$sp,120
    # Line 3570
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$s4
    move	$a3,$s2
    move	$a4,$s7
    ld	$s6,312($sp)
    jalr	$t9
    addiu	$a5,$sp,144
    # Line 3571
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$s4
    move	$a3,$s2
    move	$a4,$s3
    ld	$s7,336($sp)
    jalr	$t9
    addiu	$a5,$sp,168
    # Line 3573
    ld	$a4,296($sp)
    ld	$s4,320($sp)
    lwc1	$f0,3544($a4)
    ld	$ra,328($sp)
    # Line 3587
    lw	$a0,64($s0)
    ld	$s2,256($sp)
    li	$a3,6410
    # Line 3575
    sub.s	$f5,$f0,$f20
    ld	$s1,272($sp)
    # Line 3587
    li	$t1,0x8049
    # Line 3574
    sub.s	$f6,$f0,$f22
    ld	$s3,344($sp)
    # Line 3587
    li	$t0,6406
    beq	$a0,$a3,.L0da25ae8
    # Line 3573
    sub.s	$f0,$f0,$f24
    # Line 3587
    li	$a5,6409
    beq	$a0,$a5,.L0da25a58
    ld	$s0,264($sp)
    li	$a6,6408
    beq	$a0,$a6,.L0da25c80
    li	$a7,6407
    beq	$a0,$a7,.L0da25b68
    nop
    beq	$a0,$t0,.L0da25e54
    nop
    beq	$a0,$t1,.L0da25cfc
    nop
.L0da259c8:
    ldc1	$f20,200($sp)
    ldc1	$f22,208($sp)
    ldc1	$f24,232($sp)
    # Line 3627
    ld	$gp,304($sp)
    jr	$ra
    addiu	$sp,$sp,352
.L0da259e0:
    # Line 3512
    cvt.s.w	$f1,$f5
    lw	$t2,20($s0)
    mtc1	$zero,$f2
    # Line 3513
    addiu	$t3,$t2,-1
    # Line 3512
    slt	$t2,$s3,$t2
    movz	$s3,$t3,$t2
    c.lt.s $f1,$f2
    move	$s7,$a1
    b	.L0da25740
    movt	$s7,$zero,$fcc6
.L0da25a08:
    # Line 3532
    cvt.s.w	$f3,$f6
    lw	$t3,24($s0)
    mtc1	$zero,$f4
    # Line 3533
    addiu	$s6,$t3,-1
    # Line 3532
    slt	$t3,$s2,$t3
    movz	$s2,$s6,$t3
    c.lt.s $f3,$f4
    move	$s6,$a0
    b	.L0da257b0
    movt	$s6,$zero,$fcc7
.L0da25a30:
    # Line 3552
    cvt.s.w	$f6,$f5
    lw	$s5,28($s0)
    mtc1	$zero,$f7
    # Line 3553
    addiu	$t8,$s5,-1
    # Line 3552
    slt	$s5,$s4,$s5
    movz	$s4,$t8,$s5
    c.lt.s	$f6,$f7
    move	$s5,$a0
    b	.L0da25820
    movt	$s5,$zero,$fcc0
.L0da25a58:
    # Line 3589
    mul.s	$f12,$f0,$f6
    mul.s	$f10,$f24,$f6
    mul.s	$f14,$f22,$f24
    mul.s	$f8,$f22,$f0
    mul.s	$f13,$f20,$f14
    mul.s	$f14,$f14,$f5
    mul.s	$f7,$f20,$f8
    mul.s	$f8,$f8,$f5
    mul.s	$f9,$f20,$f10
    mul.s	$f10,$f10,$f5
    mul.s	$f11,$f20,$f12
    mul.s	$f12,$f12,$f5
.L0da25a88:
    # Line 3595
    lwc1	$f15,36($sp)
    lwc1	$f16,12($sp)
    lwc1	$f17,60($sp)
    mul.s	$f15,$f15,$f10
    madd.s	$f15,$f15,$f16,$f12
    lwc1	$f16,84($sp)
    madd.s	$f15,$f15,$f17,$f8
    lwc1	$f17,108($sp)
    madd.s	$f15,$f15,$f16,$f14
    lwc1	$f16,132($sp)
    madd.s	$f15,$f15,$f17,$f11
    lwc1	$f17,156($sp)
    madd.s	$f15,$f15,$f16,$f9
    lwc1	$f16,180($sp)
    madd.s	$f15,$f15,$f17,$f7
    ldc1	$f20,200($sp)
    madd.s	$f15,$f15,$f16,$f13
    ldc1	$f22,208($sp)
    # Line 3627
    ld	$gp,304($sp)
    # Line 3595
    ld	$t8,248($sp)
    # Line 3627
    ldc1	$f24,232($sp)
    addiu	$sp,$sp,352
    jr	$ra
    # Line 3595
    swc1	$f15,12($t8)
.L0da25ae8:
    # Line 3589
    mul.s	$f7,$f22,$f0
    mul.s	$f9,$f24,$f6
    lwc1	$f16,40($sp)
    mul.s	$f11,$f0,$f6
    lwc1	$f17,16($sp)
    mul.s	$f10,$f9,$f5
    mul.s	$f12,$f11,$f5
    mul.s	$f16,$f16,$f10
    madd.s	$f16,$f16,$f17,$f12
    lwc1	$f17,64($sp)
    mul.s	$f8,$f7,$f5
    mul.s	$f13,$f22,$f24
    madd.s	$f16,$f16,$f17,$f8
    lwc1	$f17,88($sp)
    mul.s	$f14,$f13,$f5
    madd.s	$f16,$f16,$f17,$f14
    lwc1	$f17,112($sp)
    mul.s	$f11,$f20,$f11
    madd.s	$f16,$f16,$f17,$f11
    lwc1	$f17,136($sp)
    mul.s	$f9,$f20,$f9
    madd.s	$f16,$f16,$f17,$f9
    lwc1	$f17,160($sp)
    mul.s	$f7,$f20,$f7
    madd.s	$f16,$f16,$f17,$f7
    lwc1	$f17,184($sp)
    mul.s	$f13,$f20,$f13
    madd.s	$f16,$f16,$f17,$f13
    ld	$t9,248($sp)
    ld	$s0,264($sp)
    b	.L0da25a88
    swc1	$f16,16($t9)
.L0da25b68:
    # Line 3601
    mul.s	$f12,$f0,$f6
    mul.s	$f10,$f24,$f6
    mul.s	$f14,$f22,$f24
    mul.s	$f8,$f22,$f0
    mul.s	$f13,$f20,$f14
    mul.s	$f14,$f14,$f5
    mul.s	$f7,$f20,$f8
    mul.s	$f8,$f8,$f5
    mul.s	$f9,$f20,$f10
    mul.s	$f10,$f10,$f5
    mul.s	$f11,$f20,$f12
    mul.s	$f12,$f12,$f5
.L0da25b98:
    # Line 3607
    lwc1	$f17,24($sp)
    lwc1	$f18,0($sp)
    lwc1	$f19,48($sp)
    mul.s	$f17,$f17,$f10
    madd.s	$f17,$f17,$f18,$f12
    lwc1	$f18,72($sp)
    madd.s	$f17,$f17,$f19,$f8
    lwc1	$f19,96($sp)
    madd.s	$f17,$f17,$f18,$f14
    lwc1	$f18,120($sp)
    madd.s	$f17,$f17,$f19,$f11
    lwc1	$f19,144($sp)
    madd.s	$f17,$f17,$f18,$f9
    lwc1	$f18,168($sp)
    madd.s	$f17,$f17,$f19,$f7
    madd.s	$f17,$f17,$f18,$f13
    ld	$at,248($sp)
    swc1	$f17,0($at)
    # Line 3609
    lwc1	$f16,28($sp)
    lwc1	$f17,4($sp)
    lwc1	$f18,52($sp)
    mul.s	$f16,$f16,$f10
    madd.s	$f16,$f16,$f17,$f12
    lwc1	$f17,76($sp)
    madd.s	$f16,$f16,$f18,$f8
    lwc1	$f18,100($sp)
    madd.s	$f16,$f16,$f17,$f14
    lwc1	$f17,124($sp)
    madd.s	$f16,$f16,$f18,$f11
    lwc1	$f18,148($sp)
    madd.s	$f16,$f16,$f17,$f9
    lwc1	$f17,172($sp)
    madd.s	$f16,$f16,$f18,$f7
    madd.s	$f16,$f16,$f17,$f13
    swc1	$f16,4($at)
    # Line 3611
    lwc1	$f15,32($sp)
    lwc1	$f16,8($sp)
    lwc1	$f17,56($sp)
    mul.s	$f15,$f15,$f10
    madd.s	$f15,$f15,$f16,$f12
    lwc1	$f16,80($sp)
    madd.s	$f15,$f15,$f17,$f8
    lwc1	$f17,104($sp)
    madd.s	$f15,$f15,$f16,$f14
    lwc1	$f16,128($sp)
    madd.s	$f15,$f15,$f17,$f11
    lwc1	$f17,152($sp)
    madd.s	$f15,$f15,$f16,$f9
    lwc1	$f16,176($sp)
    madd.s	$f15,$f15,$f17,$f7
    madd.s	$f15,$f15,$f16,$f13
    ldc1	$f20,200($sp)
    ldc1	$f22,208($sp)
    # Line 3627
    ld	$gp,304($sp)
    ldc1	$f24,232($sp)
    addiu	$sp,$sp,352
    jr	$ra
    # Line 3611
    swc1	$f15,8($at)
.L0da25c80:
    # Line 3601
    mul.s	$f7,$f22,$f0
    mul.s	$f9,$f24,$f6
    lwc1	$f18,40($sp)
    mul.s	$f11,$f0,$f6
    lwc1	$f19,16($sp)
    mul.s	$f10,$f9,$f5
    mul.s	$f12,$f11,$f5
    mul.s	$f18,$f18,$f10
    madd.s	$f18,$f18,$f19,$f12
    lwc1	$f19,64($sp)
    mul.s	$f8,$f7,$f5
    mul.s	$f13,$f22,$f24
    madd.s	$f18,$f18,$f19,$f8
    lwc1	$f19,88($sp)
    mul.s	$f14,$f13,$f5
    madd.s	$f18,$f18,$f19,$f14
    lwc1	$f19,112($sp)
    mul.s	$f11,$f20,$f11
    madd.s	$f18,$f18,$f19,$f11
    lwc1	$f19,136($sp)
    mul.s	$f9,$f20,$f9
    madd.s	$f18,$f18,$f19,$f9
    lwc1	$f19,160($sp)
    mul.s	$f7,$f20,$f7
    madd.s	$f18,$f18,$f19,$f7
    lwc1	$f19,184($sp)
    mul.s	$f13,$f20,$f13
    madd.s	$f18,$f18,$f19,$f13
    ld	$v0,248($sp)
    b	.L0da25b98
    swc1	$f18,16($v0)
.L0da25cfc:
    # Line 3621
    mul.s	$f25,$f24,$f6
    lwc1	$f19,44($sp)
    mul.s	$f21,$f25,$f5
    mul.s	$f27,$f0,$f6
    mul.s	$f19,$f19,$f21
    lwc1	$f21,20($sp)
    mul.s	$f29,$f27,$f5
    mul.s	$f23,$f22,$f0
    madd.s	$f19,$f19,$f21,$f29
    lwc1	$f21,68($sp)
    mul.s	$f29,$f23,$f5
    mul.s	$f22,$f22,$f24
    madd.s	$f19,$f19,$f21,$f29
    lwc1	$f21,92($sp)
    mul.s	$f24,$f22,$f5
    madd.s	$f19,$f19,$f21,$f24
    lwc1	$f21,116($sp)
    mul.s	$f24,$f20,$f27
    madd.s	$f19,$f19,$f21,$f24
    lwc1	$f21,140($sp)
    mul.s	$f24,$f20,$f25
    madd.s	$f19,$f19,$f21,$f24
    lwc1	$f21,164($sp)
    mul.s	$f23,$f20,$f23
    madd.s	$f19,$f19,$f21,$f23
    lwc1	$f21,188($sp)
    mul.s	$f22,$f20,$f22
    # Line 3627
    ld	$gp,304($sp)
    # Line 3621
    madd.s	$f19,$f19,$f21,$f22
    ld	$v1,248($sp)
    # Line 3627
    ldc1	$f20,200($sp)
    ldc1	$f24,232($sp)
    ldc1	$f22,208($sp)
    addiu	$sp,$sp,352
    jr	$ra
    # Line 3621
    swc1	$f19,20($v1)
.L0da25d8c:
    # Line 3502
    msub.s	$f24,$f26,$f5,$f14
    # Line 3503
    # lw $t9, -22764($gp) # &floor
    # Line 3501
    lw	$s2,20($a1)
    sd	$s7,336($sp)
    sd	$s3,344($sp)
    addiu	$s2,$s2,-1
    # Line 3503
    jal	floor
    cvt.d.s	$f12,$f24
    trunc.w.d	$f23,$f0
    mfc1	$s3,$f23
    li	$a0,10497
    and	$s3,$s2,$s3
    move	$s7,$s3
    # Line 3504
    addiu	$s3,$s3,1
    ldc1	$f20,216($sp)
    b	.L0da25740
    and	$s3,$s2,$s3
.L0da25dd0:
    # Line 3522
    msub.s	$f22,$f26,$f5,$f20
    # Line 3523
    # lw $t9, -22764($gp) # &floor
    # Line 3521
    lw	$s4,24($s0)
    sd	$s6,312($sp)
    addiu	$s4,$s4,-1
    # Line 3523
    jal	floor
    cvt.d.s	$f12,$f22
    trunc.w.d	$f25,$f0
    mfc1	$s2,$f25
    li	$a1,10497
    and	$s2,$s4,$s2
    move	$s6,$s2
    # Line 3524
    addiu	$s2,$s2,1
    ldc1	$f5,224($sp)
    b	.L0da257b0
    and	$s2,$s4,$s2
.L0da25e10:
    # Line 3542
    msub.s	$f20,$f26,$f6,$f5
    # Line 3543
    # lw $t9, -22764($gp) # &floor
    # Line 3541
    lw	$t8,28($s0)
    sd	$s5,248($sp)
    addiu	$t8,$t8,-1
    sd	$t8,240($sp)
    # Line 3543
    jal	floor
    cvt.d.s	$f12,$f20
    trunc.w.d	$f27,$f0
    ld	$s4,240($sp)
    mfc1	$t8,$f27
    and	$t8,$s4,$t8
    move	$s5,$t8
    # Line 3544
    addiu	$t8,$t8,1
    ldc1	$f26,192($sp)
    b	.L0da25820
    and	$s4,$s4,$t8
.L0da25e54:
    # Line 3615
    mul.s	$f3,$f24,$f6
    lwc1	$f29,40($sp)
    mul.s	$f31,$f3,$f5
    mul.s	$f4,$f0,$f6
    mul.s	$f29,$f29,$f31
    lwc1	$f31,16($sp)
    mul.s	$f1,$f4,$f5
    mul.s	$f2,$f22,$f0
    madd.s	$f29,$f29,$f31,$f1
    lwc1	$f31,64($sp)
    mul.s	$f7,$f2,$f5
    mul.s	$f1,$f22,$f24
    madd.s	$f29,$f29,$f31,$f7
    lwc1	$f31,88($sp)
    mul.s	$f7,$f1,$f5
    madd.s	$f29,$f29,$f31,$f7
    lwc1	$f31,112($sp)
    mul.s	$f4,$f20,$f4
    madd.s	$f29,$f29,$f31,$f4
    lwc1	$f31,136($sp)
    mul.s	$f3,$f20,$f3
    madd.s	$f29,$f29,$f31,$f3
    lwc1	$f31,160($sp)
    mul.s	$f2,$f20,$f2
    madd.s	$f29,$f29,$f31,$f2
    lwc1	$f31,184($sp)
    mul.s	$f1,$f20,$f1
    madd.s	$f29,$f29,$f31,$f1
    # Line 3619
    ld	$t9,248($sp)
    b	.L0da259c8
    # Line 3615
    swc1	$f29,16($t9)
.end __glLinearFilter3

# Function: __glFilter4Func
# Declared: Line 3633 (Source lines: 3636-3641)
# Address: 0x0da25ed0 - 0x0da25f04 (Size: 52 bytes, Frame: 16)
.globl __glFilter4Func
.ent __glFilter4Func
__glFilter4Func:
    # Line 3636
    addiu	$sp,$sp,-16
    lui	$at,0x3
    sd	$gp,8($sp)
    addiu	$at,$at,-20804
    addu	$gp,$t9,$at
    # Line 3640
    lw	$t9,272($a0)
    # Line 3636
    sd	$ra,0($sp)
    # Line 3640
    jalr	$t9
    lw	$a1,228($a0)
    ld	$ra,0($sp)
    # Line 3641
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glFilter4Func

# Function: __glLinearFilter
# Declared: Line 3647 (Source lines: 3650-3655)
# Address: 0x0da25f10 - 0x0da25f44 (Size: 52 bytes, Frame: 16)
.globl __glLinearFilter
.ent __glLinearFilter
__glLinearFilter:
    # Line 3650
    addiu	$sp,$sp,-16
    lui	$at,0x3
    sd	$gp,8($sp)
    addiu	$at,$at,-20868
    addu	$gp,$t9,$at
    # Line 3654
    lw	$t9,276($a0)
    # Line 3650
    sd	$ra,0($sp)
    # Line 3654
    jalr	$t9
    lw	$a1,228($a0)
    ld	$ra,0($sp)
    # Line 3655
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glLinearFilter

# Function: __glNearestFilter
# Declared: Line 3661 (Source lines: 3664-3669)
# Address: 0x0da25f50 - 0x0da25f84 (Size: 52 bytes, Frame: 16)
.globl __glNearestFilter
.ent __glNearestFilter
__glNearestFilter:
    # Line 3664
    addiu	$sp,$sp,-16
    lui	$at,0x3
    sd	$gp,8($sp)
    addiu	$at,$at,-20932
    addu	$gp,$t9,$at
    # Line 3668
    lw	$t9,280($a0)
    # Line 3664
    sd	$ra,0($sp)
    # Line 3668
    jalr	$t9
    lw	$a1,228($a0)
    ld	$ra,0($sp)
    # Line 3669
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glNearestFilter

# Function: __glNMNFilter
# Declared: Line 3674 (Source lines: 3677-3693)
# Address: 0x0da25f90 - 0x0da26018 (Size: 136 bytes, Frame: 16)
.globl __glNMNFilter
.ent __glNMNFilter
__glNMNFilter:
    # Line 3677
    lw	$v0,0($a0)
    lwc1	$f0,3540($v0)
    c.le.s	$f13,$f0
    lui	$at,0x3
    addiu	$sp,$sp,-16
    addiu	$at,$at,-20996
    move	$a3,$zero
    sd	$gp,0($sp)
    bc1f	.L0da25fc0
    addu	$gp,$t9,$at
    b	.L0da25fe4
    sd	$ra,8($sp)
.L0da25fc0:
    # Line 3687
    lwc1	$f1,_lit_3efff972
    add.s	$f1,$f13,$f1
    trunc.w.s	$f1,$f1
    # Line 3685
    lw	$a3,236($a0)
    # Line 3687
    mfc1	$v1,$f1
    move	$a1,$v1
    slt	$v1,$a3,$v1
    sd	$ra,8($sp)
    movz	$a3,$a1,$v1
.L0da25fe4:
    # Line 3692
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    lw	$t9,280($a0)
    sll	$a2,$a2,0x3
    lw	$a1,228($a0)
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a1,$a1,$a2
    ld	$ra,8($sp)
    # Line 3693
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glNMNFilter

# Function: __glLMNFilter
# Declared: Line 3698 (Source lines: 3701-3717)
# Address: 0x0da26020 - 0x0da260a8 (Size: 136 bytes, Frame: 16)
.globl __glLMNFilter
.ent __glLMNFilter
__glLMNFilter:
    # Line 3701
    lw	$v0,0($a0)
    lwc1	$f0,3540($v0)
    c.le.s	$f13,$f0
    lui	$at,0x3
    addiu	$sp,$sp,-16
    addiu	$at,$at,-21140
    move	$a3,$zero
    sd	$gp,0($sp)
    bc1f	.L0da26050
    addu	$gp,$t9,$at
    b	.L0da26074
    sd	$ra,8($sp)
.L0da26050:
    # Line 3711
    lwc1	$f1,_lit_3efff972
    add.s	$f1,$f13,$f1
    trunc.w.s	$f1,$f1
    # Line 3709
    lw	$a3,236($a0)
    # Line 3711
    mfc1	$v1,$f1
    move	$a1,$v1
    slt	$v1,$a3,$v1
    sd	$ra,8($sp)
    movz	$a3,$a1,$v1
.L0da26074:
    # Line 3716
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    lw	$t9,276($a0)
    sll	$a2,$a2,0x3
    lw	$a1,228($a0)
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    jalr	$t9
    addu	$a1,$a1,$a2
    ld	$ra,8($sp)
    # Line 3717
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glLMNFilter

# Function: __glNMLFilter
# Declared: Line 3722 (Source lines: 3725-3766)
# Address: 0x0da260b0 - 0x0da26308 (Size: 600 bytes, Frame: 128)
.globl __glNMLFilter
.ent __glNMLFilter
__glNMLFilter:
    # Line 3726
    lw	$a3,0($a0)
    # Line 3725
    addiu	$sp,$sp,-128
    # Line 3734
    trunc.w.s	$f0,$f13
    # Line 3725
    sd	$s0,96($sp)
    sdc1	$f24,56($sp)
    # Line 3734
    mfc1	$a4,$f0
    # Line 3732
    lw	$a6,236($a0)
    # Line 3725
    mov.s	$f24,$f16
    sdc1	$f22,64($sp)
    # Line 3734
    addiu	$a2,$a4,1
    # Line 3725
    mov.s	$f22,$f15
    sdc1	$f20,48($sp)
    lui	$v0,0x3
    # Line 3734
    slt	$at,$a6,$a2
    # Line 3725
    mov.s	$f20,$f14
    move	$s0,$a0
    sd	$ra,120($sp)
    addiu	$v0,$v0,-21284
    sd	$gp,112($sp)
    mov.s	$f0,$f13
    # Line 3734
    bnez	$at,.L0da261f4
    # Line 3725
    addu	$gp,$t9,$v0
    sdc1	$f13,72($sp)
    # Line 3734
    bltz	$a2,.L0da261f4
    sd	$a3,104($sp)
    # Line 3739
    sll	$a2,$a4,0x2
    subu	$a2,$a2,$a4
    lw	$t9,280($a0)
    sll	$a2,$a2,0x3
    lw	$a1,228($a0)
    addu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    sd	$a5,88($sp)
    addiu	$a5,$sp,0
    addu	$a1,$a1,$a2
    sd	$a2,80($sp)
    jalr	$t9
    addiu	$a1,$a1,100
    # Line 3740
    ld	$a2,80($sp)
    lw	$t9,280($s0)
    mov.s	$f16,$f24
    lw	$a1,228($s0)
    move	$a0,$s0
    addiu	$a5,$sp,24
    mov.s	$f15,$f22
    mov.s	$f14,$f20
    jalr	$t9
    addu	$a1,$a1,$a2
    ldc1	$f20,48($sp)
    # Line 3741
    # lw $t9, -28808($gp) # &__glFrac
    ldc1	$f24,56($sp)
    ldc1	$f22,64($sp)
    jal	__glFrac
    ldc1	$f12,72($sp)
    # Line 3743
    lw	$a2,228($s0)
    # Line 3742
    ld	$a3,104($sp)
    # Line 3743
    lw	$a2,64($a2)
    li	$t0,0x8049
    # Line 3742
    lwc1	$f5,3544($a3)
    # Line 3743
    li	$a7,6406
    li	$a3,6410
    li	$a6,6407
    li	$a5,6408
    ld	$ra,120($sp)
    li	$a4,6409
    ld	$s0,96($sp)
    beq	$a2,$a3,.L0da26240
    # Line 3742
    sub.s	$f5,$f5,$f0
    # Line 3743
    beq	$a2,$a4,.L0da26260
    # Line 3748
    lwc1	$f7,12($sp)
    # Line 3743
    beq	$a2,$a5,.L0da26280
    # Line 3751
    lwc1	$f8,16($sp)
    # Line 3743
    beq	$a2,$a6,.L0da26298
    # Line 3754
    lwc1	$f11,24($sp)
    # Line 3743
    beq	$a2,$a7,.L0da262f0
    # Line 3759
    lwc1	$f13,16($sp)
    # Line 3743
    beq	$a2,$t0,.L0da262d8
    # Line 3762
    lwc1	$f12,20($sp)
.L0da261e8:
    # Line 3766
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da261f4:
    # Line 3737
    sll	$a2,$a6,0x2
    subu	$a2,$a2,$a6
    lw	$t9,280($s0)
    sll	$a2,$a2,0x3
    mov.s	$f16,$f24
    lw	$a1,228($s0)
    addu	$a2,$a2,$a6
    move	$a0,$s0
    mov.s	$f15,$f22
    sll	$a2,$a2,0x2
    mov.s	$f14,$f20
    jalr	$t9
    addu	$a1,$a1,$a2
    ld	$s0,96($sp)
    ld	$ra,120($sp)
    ldc1	$f20,48($sp)
    ldc1	$f24,56($sp)
    b	.L0da261e8
    ldc1	$f22,64($sp)
.L0da26240:
    # Line 3745
    lwc1	$f6,16($sp)
    lwc1	$f7,40($sp)
    mul.s	$f6,$f6,$f0
    madd.s	$f6,$f6,$f5,$f7
    ld	$a3,88($sp)
    ld	$s0,96($sp)
    swc1	$f6,16($a3)
    # Line 3748
    lwc1	$f7,12($sp)
.L0da26260:
    lwc1	$f8,36($sp)
    mul.s	$f7,$f7,$f0
    madd.s	$f7,$f7,$f5,$f8
    ld	$a4,88($sp)
    # Line 3766
    ld	$gp,112($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 3748
    swc1	$f7,12($a4)
.L0da26280:
    # Line 3751
    lwc1	$f9,40($sp)
    mul.s	$f8,$f8,$f0
    madd.s	$f8,$f8,$f5,$f9
    ld	$a5,88($sp)
    swc1	$f8,16($a5)
    # Line 3754
    lwc1	$f11,24($sp)
.L0da26298:
    lwc1	$f12,0($sp)
    mul.s	$f11,$f11,$f5
    madd.s	$f11,$f11,$f12,$f0
    ld	$a6,88($sp)
    swc1	$f11,0($a6)
    # Line 3755
    lwc1	$f10,4($sp)
    lwc1	$f11,28($sp)
    mul.s	$f10,$f10,$f0
    madd.s	$f10,$f10,$f5,$f11
    swc1	$f10,4($a6)
    # Line 3756
    lwc1	$f9,8($sp)
    lwc1	$f10,32($sp)
    mul.s	$f9,$f9,$f0
    madd.s	$f9,$f9,$f5,$f10
    # Line 3757
    b	.L0da261e8
    # Line 3756
    swc1	$f9,8($a6)
.L0da262d8:
    # Line 3762
    lwc1	$f13,44($sp)
    mul.s	$f12,$f12,$f0
    madd.s	$f12,$f12,$f5,$f13
    # Line 3763
    ld	$a7,88($sp)
    b	.L0da261e8
    # Line 3762
    swc1	$f12,20($a7)
.L0da262f0:
    # Line 3759
    lwc1	$f14,40($sp)
    mul.s	$f13,$f13,$f0
    madd.s	$f13,$f13,$f5,$f14
    # Line 3760
    ld	$t0,88($sp)
    b	.L0da261e8
    # Line 3759
    swc1	$f13,16($t0)
.end __glNMLFilter

# Function: __glLMLFilter
# Declared: Line 3771 (Source lines: 3774-3815)
# Address: 0x0da26310 - 0x0da26568 (Size: 600 bytes, Frame: 128)
.globl __glLMLFilter
.ent __glLMLFilter
__glLMLFilter:
    # Line 3775
    lw	$a3,0($a0)
    # Line 3774
    addiu	$sp,$sp,-128
    # Line 3783
    trunc.w.s	$f0,$f13
    # Line 3774
    sd	$s0,96($sp)
    sdc1	$f24,56($sp)
    # Line 3783
    mfc1	$a4,$f0
    # Line 3781
    lw	$a6,236($a0)
    # Line 3774
    mov.s	$f24,$f16
    sdc1	$f22,64($sp)
    # Line 3783
    addiu	$a2,$a4,1
    # Line 3774
    mov.s	$f22,$f15
    sdc1	$f20,48($sp)
    lui	$v0,0x3
    # Line 3783
    slt	$at,$a6,$a2
    # Line 3774
    mov.s	$f20,$f14
    move	$s0,$a0
    sd	$ra,120($sp)
    addiu	$v0,$v0,-21892
    sd	$gp,112($sp)
    mov.s	$f0,$f13
    # Line 3783
    bnez	$at,.L0da26454
    # Line 3774
    addu	$gp,$t9,$v0
    sdc1	$f13,72($sp)
    # Line 3783
    bltz	$a2,.L0da26454
    sd	$a3,104($sp)
    # Line 3788
    sll	$a2,$a4,0x2
    subu	$a2,$a2,$a4
    lw	$t9,276($a0)
    sll	$a2,$a2,0x3
    lw	$a1,228($a0)
    addu	$a2,$a2,$a4
    sll	$a2,$a2,0x2
    sd	$a5,88($sp)
    addiu	$a5,$sp,0
    addu	$a1,$a1,$a2
    sd	$a2,80($sp)
    jalr	$t9
    addiu	$a1,$a1,100
    # Line 3789
    ld	$a2,80($sp)
    lw	$t9,276($s0)
    mov.s	$f16,$f24
    lw	$a1,228($s0)
    move	$a0,$s0
    addiu	$a5,$sp,24
    mov.s	$f15,$f22
    mov.s	$f14,$f20
    jalr	$t9
    addu	$a1,$a1,$a2
    ldc1	$f20,48($sp)
    # Line 3790
    # lw $t9, -28808($gp) # &__glFrac
    ldc1	$f24,56($sp)
    ldc1	$f22,64($sp)
    jal	__glFrac
    ldc1	$f12,72($sp)
    # Line 3792
    lw	$a2,228($s0)
    # Line 3791
    ld	$a3,104($sp)
    # Line 3792
    lw	$a2,64($a2)
    li	$t0,0x8049
    # Line 3791
    lwc1	$f5,3544($a3)
    # Line 3792
    li	$a7,6406
    li	$a3,6410
    li	$a6,6407
    li	$a5,6408
    ld	$ra,120($sp)
    li	$a4,6409
    ld	$s0,96($sp)
    beq	$a2,$a3,.L0da264a0
    # Line 3791
    sub.s	$f5,$f5,$f0
    # Line 3792
    beq	$a2,$a4,.L0da264c0
    # Line 3797
    lwc1	$f7,12($sp)
    # Line 3792
    beq	$a2,$a5,.L0da264e0
    # Line 3800
    lwc1	$f8,16($sp)
    # Line 3792
    beq	$a2,$a6,.L0da264f8
    # Line 3803
    lwc1	$f11,24($sp)
    # Line 3792
    beq	$a2,$a7,.L0da26550
    # Line 3808
    lwc1	$f13,16($sp)
    # Line 3792
    beq	$a2,$t0,.L0da26538
    # Line 3811
    lwc1	$f12,20($sp)
.L0da26448:
    # Line 3815
    ld	$gp,112($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da26454:
    # Line 3786
    sll	$a2,$a6,0x2
    subu	$a2,$a2,$a6
    lw	$t9,276($s0)
    sll	$a2,$a2,0x3
    mov.s	$f16,$f24
    lw	$a1,228($s0)
    addu	$a2,$a2,$a6
    move	$a0,$s0
    mov.s	$f15,$f22
    sll	$a2,$a2,0x2
    mov.s	$f14,$f20
    jalr	$t9
    addu	$a1,$a1,$a2
    ld	$s0,96($sp)
    ld	$ra,120($sp)
    ldc1	$f20,48($sp)
    ldc1	$f24,56($sp)
    b	.L0da26448
    ldc1	$f22,64($sp)
.L0da264a0:
    # Line 3794
    lwc1	$f6,16($sp)
    lwc1	$f7,40($sp)
    mul.s	$f6,$f6,$f0
    madd.s	$f6,$f6,$f5,$f7
    ld	$a3,88($sp)
    ld	$s0,96($sp)
    swc1	$f6,16($a3)
    # Line 3797
    lwc1	$f7,12($sp)
.L0da264c0:
    lwc1	$f8,36($sp)
    mul.s	$f7,$f7,$f0
    madd.s	$f7,$f7,$f5,$f8
    ld	$a4,88($sp)
    # Line 3815
    ld	$gp,112($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 3797
    swc1	$f7,12($a4)
.L0da264e0:
    # Line 3800
    lwc1	$f9,40($sp)
    mul.s	$f8,$f8,$f0
    madd.s	$f8,$f8,$f5,$f9
    ld	$a5,88($sp)
    swc1	$f8,16($a5)
    # Line 3803
    lwc1	$f11,24($sp)
.L0da264f8:
    lwc1	$f12,0($sp)
    mul.s	$f11,$f11,$f5
    madd.s	$f11,$f11,$f12,$f0
    ld	$a6,88($sp)
    swc1	$f11,0($a6)
    # Line 3804
    lwc1	$f10,4($sp)
    lwc1	$f11,28($sp)
    mul.s	$f10,$f10,$f0
    madd.s	$f10,$f10,$f5,$f11
    swc1	$f10,4($a6)
    # Line 3805
    lwc1	$f9,8($sp)
    lwc1	$f10,32($sp)
    mul.s	$f9,$f9,$f0
    madd.s	$f9,$f9,$f5,$f10
    # Line 3806
    b	.L0da26448
    # Line 3805
    swc1	$f9,8($a6)
.L0da26538:
    # Line 3811
    lwc1	$f13,44($sp)
    mul.s	$f12,$f12,$f0
    madd.s	$f12,$f12,$f5,$f13
    # Line 3812
    ld	$a7,88($sp)
    b	.L0da26448
    # Line 3811
    swc1	$f12,20($a7)
.L0da26550:
    # Line 3808
    lwc1	$f14,40($sp)
    mul.s	$f13,$f13,$f0
    madd.s	$f13,$f13,$f5,$f14
    # Line 3809
    ld	$t0,88($sp)
    b	.L0da26448
    # Line 3808
    swc1	$f13,16($t0)
.end __glLMLFilter

# Function: __glFilter4Func2
# Declared: Line 3821 (Source lines: 3824-4006)
# Address: 0x0da26570 - 0x0da272b8 (Size: 3400 bytes, Frame: 240)
.globl __glFilter4Func2
.ent __glFilter4Func2
__glFilter4Func2:
    # Line 3824
    addiu	$sp,$sp,-624
    sdc1	$f15,464($sp)
    sdc1	$f22,568($sp)
    sd	$s6,584($sp)
    # Line 3837
    lwc1	$f0,32($a1)
    sd	$ra,592($sp)
    sd	$gp,552($sp)
    # Line 3824
    sdc1	$f20,384($sp)
    # Line 3837
    trunc.w.s	$f0,$f0
    # Line 3824
    sd	$s1,536($sp)
    sd	$s0,528($sp)
    # Line 3838
    cvt.s.w	$f6,$f0
    # Line 3824
    sd	$s8,504($sp)
    sd	$s4,520($sp)
    move	$s8,$a5
    move	$s0,$a1
    # Line 3839
    lw	$s4,4($a0)
    li	$at,10497
    # Line 3825
    lw	$v1,0($a0)
    # Line 3824
    lui	$v0,0x3
    # Line 3838
    mul.s	$f5,$f6,$f14
    # Line 3824
    move	$s1,$a0
    sd	$s3,512($sp)
    addiu	$v0,$v0,-22500
    # Line 3837
    mfc1	$s3,$f0
    # Line 3839
    lwc1	$f20,3540($v1)
    # Line 3824
    addu	$gp,$t9,$v0
    # Line 3839
    beq	$at,$s4,.L0da27068
    # Line 3838
    mov.s	$f4,$f5
    # Line 3846
    mtc1	$zero,$f22
    c.lt.s	$f5,$f22
    bc1f	.L0da26600
    move	$s6,$at
    mtc1	$zero,$f4
    b	.L0da2660c
    sdc1	$f24,560($sp)
.L0da26600:
    c.lt.s $f6,$f5
    sdc1	$f24,560($sp)
    movt.s	$f4,$f6,$fcc1
.L0da2660c:
    # Line 3851
    sub.s	$f24,$f4,$f20
    # lw $t9, -22764($gp) # &floor
    sd	$s2,576($sp)
    cvt.d.s	$f24,$f24
    sd	$s5,600($sp)
    sd	$s7,616($sp)
    jal	floor
    mov.d	$f12,$f24
    trunc.w.d	$f5,$f0
    mfc1	$a0,$f5
    # Line 3852
    addiu	$s7,$a0,-1
    mtc1	$s7,$f25
    # Line 3855
    addiu	$a2,$a0,1
    slt	$a3,$s3,$a2
    # Line 3852
    cvt.s.w	$f25,$f25
    # Line 3855
    movn	$a2,$s3,$a3
    # Line 3858
    addiu	$s5,$a2,1
    li	$v1,0x812f
    slt	$a1,$s3,$s5
    ldc1	$f6,464($sp)
    movn	$s5,$s3,$a1
    # Line 3852
    c.lt.s $f25,$f22
    # Line 3851
    move	$s2,$a0
    # Line 3855
    sd	$a2,496($sp)
    # Line 3858
    beq	$s4,$v1,.L0da26a7c
    # Line 3852
    movt	$s7,$zero,$fcc2
.L0da26674:
    # Line 3869
    lwc1	$f27,36($s0)
    trunc.w.s	$f27,$f27
    # Line 3870
    cvt.s.w	$f7,$f27
    lw	$a1,8($s1)
    mul.s	$f5,$f7,$f6
    # Line 3869
    mfc1	$a0,$f27
    # Line 3870
    beq	$s6,$a1,.L0da27110
    mov.s	$f4,$f5
    # Line 3877
    mtc1	$zero,$f6
    c.lt.s $f5,$f6
    sd	$a1,544($sp)
    bc1f .L0da266b0
    sd	$a0,608($sp)
    b	.L0da266b8
    mtc1	$zero,$f4
.L0da266b0:
    c.lt.s $f7,$f5
    movt.s	$f4,$f7,$fcc4
.L0da266b8:
    # Line 3882
    sub.s	$f22,$f4,$f20
    # lw $t9, -22764($gp) # &floor
    cvt.d.s	$f22,$f22
    sd	$s8,488($sp)
    jal	floor
    mov.d	$f12,$f22
    trunc.w.d	$f6,$f0
    mfc1	$a1,$f6
    # Line 3883
    addiu	$s6,$a1,-1
    mtc1	$s6,$f23
    # Line 3886
    ld	$a0,608($sp)
    addiu	$s4,$a1,1
    # Line 3883
    mtc1	$zero,$f5
    # Line 3886
    slt	$a6,$a0,$s4
    # Line 3883
    cvt.s.w	$f23,$f23
    # Line 3886
    movn	$s4,$a0,$a6
    # Line 3889
    ld	$a3,544($sp)
    addiu	$s8,$s4,1
    li	$a4,0x812f
    slt	$a5,$a0,$s8
    movn	$s8,$a0,$a5
    # Line 3883
    c.lt.s $f23,$f5
    # Line 3882
    move	$s3,$a1
    # Line 3889
    beq	$a3,$a4,.L0da26a98
    # Line 3883
    movt	$s6,$zero,$fcc5
.L0da2671c:
    # Line 3901
    # lw $t9, -22764($gp) # &floor
    jal	floor
    mov.d	$f12,$f24
    ldc1	$f1,_lit8_4030000000000000
    sub.d	$f2,$f24,$f0
    cvt.d.s	$f0,$f20
    sdc1	$f0,456($sp)
    madd.d	$f0,$f0,$f1,$f2
    trunc.w.d	$f0,$f0
    mfc1	$v0,$f0
    # Line 3902
    sll	$at,$v0,0x2
    # Line 3906
    # lw $t9, -22764($gp) # &floor
    # Line 3902
    addu	$at,$s1,$at
    # Line 3905
    li	$ra,32
    # Line 3903
    lwc1	$f31,24($at)
    # Line 3902
    lwc1	$f29,88($at)
    # Line 3905
    subu	$ra,$ra,$v0
    # Line 3904
    sll	$t8,$v0,0x1e
    # Line 3903
    sdc1	$f31,448($sp)
    # Line 3905
    sll	$ra,$ra,0x2
    # Line 3904
    subu	$t8,$t8,$v0
    # Line 3902
    sdc1	$f29,440($sp)
    # Line 3905
    addu	$ra,$s1,$ra
    # Line 3904
    sll	$t8,$t8,0x2
    # Line 3905
    lwc1	$f27,24($ra)
    # Line 3904
    addu	$t8,$s1,$t8
    lwc1	$f25,88($t8)
    # Line 3905
    sdc1	$f27,400($sp)
    # Line 3906
    mov.d	$f12,$f22
    jal	floor
    sdc1	$f25,392($sp)
    ldc1	$f8,_lit8_4030000000000000
    sub.d	$f9,$f22,$f0
    ldc1	$f7,456($sp)
    madd.d	$f7,$f7,$f8,$f9
    trunc.w.d	$f7,$f7
    mfc1	$a1,$f7
    ldc1	$f20,384($sp)
    ldc1	$f24,560($sp)
    # Line 3907
    sll	$a0,$a1,0x2
    # Line 3914
    lw	$t9,96($s0)
    # Line 3907
    addu	$a0,$s1,$a0
    # Line 3910
    li	$v1,32
    # Line 3908
    lwc1	$f6,24($a0)
    # Line 3907
    lwc1	$f5,88($a0)
    # Line 3910
    subu	$v1,$v1,$a1
    # Line 3909
    sll	$v0,$a1,0x1e
    # Line 3908
    sdc1	$f6,416($sp)
    # Line 3910
    sll	$v1,$v1,0x2
    # Line 3909
    subu	$v0,$v0,$a1
    # Line 3907
    sdc1	$f5,408($sp)
    # Line 3910
    addu	$v1,$s1,$v1
    # Line 3909
    sll	$v0,$v0,0x2
    # Line 3914
    addiu	$a5,$sp,0
    # Line 3910
    lwc1	$f4,24($v1)
    # Line 3909
    addu	$v0,$s1,$v0
    # Line 3914
    move	$a4,$s7
    move	$a3,$s6
    # Line 3909
    lwc1	$f3,88($v0)
    # Line 3914
    move	$a2,$zero
    move	$a1,$s1
    # Line 3910
    sdc1	$f4,432($sp)
    # Line 3914
    move	$a0,$s0
    jalr	$t9
    sdc1	$f3,424($sp)
    # Line 3915
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s6
    move	$a4,$s2
    ldc1	$f22,568($sp)
    jalr	$t9
    addiu	$a5,$sp,24
    # Line 3916
    lw	$t9,96($s0)
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s6
    ld	$a4,496($sp)
    jalr	$t9
    addiu	$a5,$sp,48
    # Line 3917
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s6
    move	$a4,$s5
    jalr	$t9
    addiu	$a5,$sp,72
    # Line 3918
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s3
    move	$a4,$s7
    jalr	$t9
    addiu	$a5,$sp,96
    # Line 3919
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s3
    move	$a4,$s2
    jalr	$t9
    addiu	$a5,$sp,120
    # Line 3920
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    ld	$s6,496($sp)
    move	$a3,$s3
    addiu	$a5,$sp,144
    jalr	$t9
    move	$a4,$s6
    # Line 3921
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s3
    move	$a4,$s5
    jalr	$t9
    addiu	$a5,$sp,168
    # Line 3922
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s4
    move	$a4,$s7
    ld	$s3,512($sp)
    jalr	$t9
    addiu	$a5,$sp,192
    # Line 3923
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s4
    move	$a4,$s2
    jalr	$t9
    addiu	$a5,$sp,216
    # Line 3924
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s4
    move	$a4,$s6
    jalr	$t9
    addiu	$a5,$sp,240
    # Line 3925
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s4
    move	$a4,$s5
    jalr	$t9
    addiu	$a5,$sp,264
    # Line 3926
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s8
    move	$a4,$s7
    ld	$s4,520($sp)
    jalr	$t9
    addiu	$a5,$sp,288
    # Line 3927
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s8
    move	$a4,$s2
    ld	$s7,616($sp)
    jalr	$t9
    addiu	$a5,$sp,312
    # Line 3928
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s8
    move	$a4,$s6
    ld	$s2,576($sp)
    jalr	$t9
    addiu	$a5,$sp,336
    # Line 3929
    move	$a0,$s0
    lw	$t9,96($s0)
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$s8
    move	$a4,$s5
    ld	$s6,584($sp)
    jalr	$t9
    addiu	$a5,$sp,360
    ld	$s8,504($sp)
    # Line 3952
    lw	$a0,64($s0)
    ld	$ra,592($sp)
    li	$a1,6410
    ld	$s5,600($sp)
    beq	$a0,$a1,.L0da26ba8
    ld	$s1,536($sp)
    li	$a2,6409
    beq	$a0,$a2,.L0da26ab4
    ld	$s0,528($sp)
    li	$a3,6408
    beq	$a0,$a3,.L0da26e90
    # Line 3968
    ldc1	$f11,408($sp)
    # Line 3952
    li	$a4,6407
    beq	$a0,$a4,.L0da26c98
    # Line 3968
    ldc1	$f12,432($sp)
    # Line 3952
    li	$a5,6406
    beq	$a0,$a5,.L0da271c4
    li	$a6,0x8049
    beq	$a0,$a6,.L0da26f78
    # Line 3999
    ldc1	$f3,408($sp)
    # Line 4006
    ld	$gp,552($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0da26a7c:
    # Line 3863
    cvt.s.w	$f10,$f5
    c.lt.s $f10,$f22
    move	$s2,$a0
    movt	$s2,$zero,$fcc6
    slt	$a7,$s3,$s2
    b	.L0da26674
    movn	$s2,$s3,$a7
.L0da26a98:
    # Line 3894
    cvt.s.w	$f11,$f6
    c.lt.s $f11,$f5
    move	$s3,$a1
    movt	$s3,$zero,$fcc7
    slt	$t0,$a0,$s3
    b	.L0da2671c
    movn	$s3,$a0,$t0
.L0da26ab4:
    # Line 3954
    ldc1	$f12,432($sp)
    ldc1	$f11,400($sp)
    ldc1	$f7,424($sp)
    ldc1	$f9,416($sp)
    ldc1	$f21,408($sp)
    mul.s	$f14,$f11,$f12
    ldc1	$f18,392($sp)
    mul.s	$f15,$f11,$f7
    mul.s	$f4,$f11,$f9
    mul.s	$f11,$f11,$f21
    mul.s	$f13,$f18,$f12
    ldc1	$f19,448($sp)
    mul.s	$f16,$f18,$f7
    mul.s	$f8,$f18,$f9
    mul.s	$f18,$f18,$f21
    mul.s	$f10,$f19,$f12
    ldc1	$f6,440($sp)
    mul.s	$f17,$f19,$f7
    mul.s	$f5,$f19,$f9
    mul.s	$f19,$f19,$f21
    mul.s	$f12,$f6,$f12
    mul.s	$f7,$f6,$f7
    mul.s	$f9,$f6,$f9
    mul.s	$f6,$f6,$f21
.L0da26b14:
    # Line 3961
    lwc1	$f25,36($sp)
    lwc1	$f23,12($sp)
    lwc1	$f21,60($sp)
    mul.s	$f19,$f25,$f19
    madd.s	$f19,$f19,$f23,$f6
    lwc1	$f23,84($sp)
    madd.s	$f19,$f19,$f21,$f18
    lwc1	$f21,108($sp)
    madd.s	$f19,$f19,$f23,$f11
    lwc1	$f23,132($sp)
    madd.s	$f19,$f19,$f21,$f9
    lwc1	$f21,156($sp)
    madd.s	$f19,$f19,$f23,$f5
    lwc1	$f23,180($sp)
    madd.s	$f19,$f19,$f21,$f8
    lwc1	$f21,204($sp)
    madd.s	$f19,$f19,$f23,$f4
    lwc1	$f23,228($sp)
    madd.s	$f19,$f19,$f21,$f7
    lwc1	$f21,252($sp)
    madd.s	$f19,$f19,$f23,$f17
    lwc1	$f18,276($sp)
    madd.s	$f16,$f19,$f21,$f16
    lwc1	$f17,300($sp)
    madd.s	$f16,$f16,$f18,$f15
    lwc1	$f18,324($sp)
    madd.s	$f16,$f16,$f17,$f12
    lwc1	$f17,348($sp)
    madd.s	$f16,$f16,$f18,$f10
    lwc1	$f15,372($sp)
    madd.s	$f13,$f16,$f17,$f13
    madd.s	$f13,$f13,$f15,$f14
    ld	$t1,488($sp)
    # Line 4006
    ld	$gp,552($sp)
    addiu	$sp,$sp,624
    jr	$ra
    # Line 3961
    swc1	$f13,12($t1)
.L0da26ba8:
    # Line 3954
    ldc1	$f11,408($sp)
    ldc1	$f10,448($sp)
    ldc1	$f12,440($sp)
    lwc1	$f27,40($sp)
    lwc1	$f29,16($sp)
    mul.s	$f19,$f10,$f11
    ldc1	$f13,392($sp)
    mul.s	$f6,$f12,$f11
    mul.s	$f27,$f27,$f19
    madd.s	$f27,$f27,$f29,$f6
    lwc1	$f29,64($sp)
    ldc1	$f14,400($sp)
    mul.s	$f18,$f13,$f11
    madd.s	$f27,$f27,$f29,$f18
    lwc1	$f29,88($sp)
    ldc1	$f4,416($sp)
    mul.s	$f11,$f14,$f11
    madd.s	$f27,$f27,$f29,$f11
    lwc1	$f29,112($sp)
    mul.s	$f9,$f12,$f4
    madd.s	$f27,$f27,$f29,$f9
    lwc1	$f29,136($sp)
    mul.s	$f5,$f10,$f4
    madd.s	$f27,$f27,$f29,$f5
    lwc1	$f29,160($sp)
    mul.s	$f8,$f13,$f4
    madd.s	$f27,$f27,$f29,$f8
    lwc1	$f29,184($sp)
    ldc1	$f15,424($sp)
    mul.s	$f4,$f14,$f4
    madd.s	$f27,$f27,$f29,$f4
    lwc1	$f29,208($sp)
    mul.s	$f7,$f12,$f15
    madd.s	$f27,$f27,$f29,$f7
    lwc1	$f29,232($sp)
    mul.s	$f17,$f10,$f15
    madd.s	$f27,$f27,$f29,$f17
    lwc1	$f29,256($sp)
    mul.s	$f16,$f13,$f15
    madd.s	$f27,$f27,$f29,$f16
    lwc1	$f29,280($sp)
    ldc1	$f21,432($sp)
    mul.s	$f15,$f14,$f15
    madd.s	$f27,$f27,$f29,$f15
    lwc1	$f29,304($sp)
    mul.s	$f12,$f12,$f21
    madd.s	$f27,$f27,$f29,$f12
    lwc1	$f29,328($sp)
    mul.s	$f10,$f10,$f21
    madd.s	$f27,$f27,$f29,$f10
    lwc1	$f29,352($sp)
    mul.s	$f13,$f13,$f21
    madd.s	$f27,$f27,$f29,$f13
    lwc1	$f29,376($sp)
    mul.s	$f14,$f14,$f21
    madd.s	$f27,$f27,$f29,$f14
    ld	$t2,488($sp)
    ld	$s0,528($sp)
    b	.L0da26b14
    swc1	$f27,16($t2)
.L0da26c98:
    # Line 3968
    ldc1	$f11,400($sp)
    ldc1	$f7,424($sp)
    ldc1	$f9,416($sp)
    ldc1	$f21,408($sp)
    mul.s	$f14,$f11,$f12
    ldc1	$f18,392($sp)
    mul.s	$f15,$f11,$f7
    mul.s	$f4,$f11,$f9
    mul.s	$f11,$f11,$f21
    mul.s	$f13,$f18,$f12
    ldc1	$f19,448($sp)
    mul.s	$f16,$f18,$f7
    mul.s	$f8,$f18,$f9
    mul.s	$f18,$f18,$f21
    mul.s	$f10,$f19,$f12
    ldc1	$f6,440($sp)
    mul.s	$f17,$f19,$f7
    mul.s	$f5,$f19,$f9
    mul.s	$f19,$f19,$f21
    mul.s	$f12,$f6,$f12
    mul.s	$f7,$f6,$f7
    mul.s	$f9,$f6,$f9
    mul.s	$f6,$f6,$f21
.L0da26cf4:
    # Line 3975
    lwc1	$f29,24($sp)
    lwc1	$f31,0($sp)
    lwc1	$f0,48($sp)
    mul.s	$f29,$f29,$f19
    madd.s	$f29,$f29,$f31,$f6
    lwc1	$f31,72($sp)
    madd.s	$f29,$f29,$f0,$f18
    lwc1	$f0,96($sp)
    madd.s	$f29,$f29,$f31,$f11
    lwc1	$f31,120($sp)
    madd.s	$f29,$f29,$f0,$f9
    lwc1	$f0,144($sp)
    madd.s	$f29,$f29,$f31,$f5
    lwc1	$f31,168($sp)
    madd.s	$f29,$f29,$f0,$f8
    lwc1	$f0,192($sp)
    madd.s	$f29,$f29,$f31,$f4
    lwc1	$f31,216($sp)
    madd.s	$f29,$f29,$f0,$f7
    lwc1	$f0,240($sp)
    madd.s	$f29,$f29,$f31,$f17
    lwc1	$f31,264($sp)
    madd.s	$f29,$f29,$f0,$f16
    lwc1	$f0,288($sp)
    madd.s	$f29,$f29,$f31,$f15
    lwc1	$f31,312($sp)
    madd.s	$f29,$f29,$f0,$f12
    lwc1	$f0,336($sp)
    madd.s	$f29,$f29,$f31,$f10
    lwc1	$f31,360($sp)
    madd.s	$f29,$f29,$f0,$f13
    madd.s	$f29,$f29,$f31,$f14
    ld	$t3,488($sp)
    swc1	$f29,0($t3)
    # Line 3980
    lwc1	$f27,28($sp)
    lwc1	$f29,4($sp)
    lwc1	$f31,52($sp)
    mul.s	$f27,$f27,$f19
    madd.s	$f27,$f27,$f29,$f6
    lwc1	$f29,76($sp)
    madd.s	$f27,$f27,$f31,$f18
    lwc1	$f31,100($sp)
    madd.s	$f27,$f27,$f29,$f11
    lwc1	$f29,124($sp)
    madd.s	$f27,$f27,$f31,$f9
    lwc1	$f31,148($sp)
    madd.s	$f27,$f27,$f29,$f5
    lwc1	$f29,172($sp)
    madd.s	$f27,$f27,$f31,$f8
    lwc1	$f31,196($sp)
    madd.s	$f27,$f27,$f29,$f4
    lwc1	$f29,220($sp)
    madd.s	$f27,$f27,$f31,$f7
    lwc1	$f31,244($sp)
    madd.s	$f27,$f27,$f29,$f17
    lwc1	$f29,268($sp)
    madd.s	$f27,$f27,$f31,$f16
    lwc1	$f31,292($sp)
    madd.s	$f27,$f27,$f29,$f15
    lwc1	$f29,316($sp)
    madd.s	$f27,$f27,$f31,$f12
    lwc1	$f31,340($sp)
    madd.s	$f27,$f27,$f29,$f10
    lwc1	$f29,364($sp)
    madd.s	$f27,$f27,$f31,$f13
    madd.s	$f27,$f27,$f29,$f14
    swc1	$f27,4($t3)
    # Line 3985
    lwc1	$f25,32($sp)
    lwc1	$f23,8($sp)
    lwc1	$f21,56($sp)
    mul.s	$f19,$f25,$f19
    madd.s	$f19,$f19,$f23,$f6
    lwc1	$f23,80($sp)
    madd.s	$f19,$f19,$f21,$f18
    lwc1	$f21,104($sp)
    madd.s	$f19,$f19,$f23,$f11
    lwc1	$f23,128($sp)
    madd.s	$f19,$f19,$f21,$f9
    lwc1	$f21,152($sp)
    madd.s	$f19,$f19,$f23,$f5
    lwc1	$f23,176($sp)
    madd.s	$f19,$f19,$f21,$f8
    lwc1	$f21,200($sp)
    madd.s	$f19,$f19,$f23,$f4
    lwc1	$f23,224($sp)
    madd.s	$f19,$f19,$f21,$f7
    lwc1	$f21,248($sp)
    madd.s	$f19,$f19,$f23,$f17
    lwc1	$f18,272($sp)
    madd.s	$f16,$f19,$f21,$f16
    lwc1	$f17,296($sp)
    madd.s	$f16,$f16,$f18,$f15
    lwc1	$f18,320($sp)
    madd.s	$f16,$f16,$f17,$f12
    lwc1	$f17,344($sp)
    madd.s	$f16,$f16,$f18,$f10
    lwc1	$f15,368($sp)
    madd.s	$f13,$f16,$f17,$f13
    madd.s	$f13,$f13,$f15,$f14
    # Line 4006
    ld	$gp,552($sp)
    addiu	$sp,$sp,624
    jr	$ra
    # Line 3985
    swc1	$f13,8($t3)
.L0da26e90:
    # Line 3968
    ldc1	$f10,448($sp)
    ldc1	$f12,440($sp)
    lwc1	$f31,40($sp)
    lwc1	$f0,16($sp)
    mul.s	$f19,$f10,$f11
    ldc1	$f13,392($sp)
    mul.s	$f6,$f12,$f11
    mul.s	$f31,$f31,$f19
    madd.s	$f31,$f31,$f0,$f6
    lwc1	$f0,64($sp)
    ldc1	$f14,400($sp)
    mul.s	$f18,$f13,$f11
    madd.s	$f31,$f31,$f0,$f18
    lwc1	$f0,88($sp)
    ldc1	$f4,416($sp)
    mul.s	$f11,$f14,$f11
    madd.s	$f31,$f31,$f0,$f11
    lwc1	$f0,112($sp)
    mul.s	$f9,$f12,$f4
    madd.s	$f31,$f31,$f0,$f9
    lwc1	$f0,136($sp)
    mul.s	$f5,$f10,$f4
    madd.s	$f31,$f31,$f0,$f5
    lwc1	$f0,160($sp)
    mul.s	$f8,$f13,$f4
    madd.s	$f31,$f31,$f0,$f8
    lwc1	$f0,184($sp)
    ldc1	$f15,424($sp)
    mul.s	$f4,$f14,$f4
    madd.s	$f31,$f31,$f0,$f4
    lwc1	$f0,208($sp)
    mul.s	$f7,$f12,$f15
    madd.s	$f31,$f31,$f0,$f7
    lwc1	$f0,232($sp)
    mul.s	$f17,$f10,$f15
    madd.s	$f31,$f31,$f0,$f17
    lwc1	$f0,256($sp)
    mul.s	$f16,$f13,$f15
    madd.s	$f31,$f31,$f0,$f16
    lwc1	$f0,280($sp)
    ldc1	$f21,432($sp)
    mul.s	$f15,$f14,$f15
    madd.s	$f31,$f31,$f0,$f15
    lwc1	$f0,304($sp)
    mul.s	$f12,$f12,$f21
    madd.s	$f31,$f31,$f0,$f12
    lwc1	$f0,328($sp)
    mul.s	$f10,$f10,$f21
    madd.s	$f31,$f31,$f0,$f10
    lwc1	$f0,352($sp)
    mul.s	$f13,$f13,$f21
    madd.s	$f31,$f31,$f0,$f13
    lwc1	$f0,376($sp)
    mul.s	$f14,$f14,$f21
    madd.s	$f31,$f31,$f0,$f14
    ld	$t8,488($sp)
    b	.L0da26cf4
    swc1	$f31,16($t8)
.L0da26f78:
    # Line 3999
    ldc1	$f5,448($sp)
    ldc1	$f6,440($sp)
    lwc1	$f0,44($sp)
    mul.s	$f4,$f5,$f3
    lwc1	$f1,20($sp)
    mul.s	$f2,$f6,$f3
    mul.s	$f0,$f0,$f4
    ldc1	$f4,392($sp)
    madd.s	$f0,$f0,$f1,$f2
    lwc1	$f1,68($sp)
    mul.s	$f2,$f4,$f3
    madd.s	$f0,$f0,$f1,$f2
    ldc1	$f2,400($sp)
    lwc1	$f1,92($sp)
    mul.s	$f3,$f2,$f3
    madd.s	$f0,$f0,$f1,$f3
    ldc1	$f3,416($sp)
    lwc1	$f1,116($sp)
    mul.s	$f7,$f6,$f3
    madd.s	$f0,$f0,$f1,$f7
    lwc1	$f1,140($sp)
    mul.s	$f7,$f5,$f3
    madd.s	$f0,$f0,$f1,$f7
    lwc1	$f1,164($sp)
    mul.s	$f7,$f4,$f3
    madd.s	$f0,$f0,$f1,$f7
    lwc1	$f1,188($sp)
    mul.s	$f3,$f2,$f3
    madd.s	$f0,$f0,$f1,$f3
    ldc1	$f3,424($sp)
    lwc1	$f1,212($sp)
    mul.s	$f7,$f6,$f3
    madd.s	$f0,$f0,$f1,$f7
    lwc1	$f1,236($sp)
    mul.s	$f7,$f5,$f3
    madd.s	$f0,$f0,$f1,$f7
    lwc1	$f1,260($sp)
    mul.s	$f7,$f4,$f3
    madd.s	$f0,$f0,$f1,$f7
    lwc1	$f1,284($sp)
    mul.s	$f3,$f2,$f3
    madd.s	$f0,$f0,$f1,$f3
    ldc1	$f3,432($sp)
    lwc1	$f1,308($sp)
    mul.s	$f6,$f6,$f3
    madd.s	$f0,$f0,$f1,$f6
    lwc1	$f1,332($sp)
    mul.s	$f5,$f5,$f3
    madd.s	$f0,$f0,$f1,$f5
    lwc1	$f1,356($sp)
    mul.s	$f4,$f4,$f3
    madd.s	$f0,$f0,$f1,$f4
    lwc1	$f1,380($sp)
    mul.s	$f2,$f2,$f3
    madd.s	$f0,$f0,$f1,$f2
    ld	$t9,488($sp)
    # Line 4006
    ld	$gp,552($sp)
    addiu	$sp,$sp,624
    jr	$ra
    # Line 3999
    swc1	$f0,20($t9)
.L0da27068:
    # Line 3842
    msub.s	$f22,$f20,$f6,$f14
    # Line 3843
    lwc1	$f12,_lit_bf800000
    # lw $t9, -22764($gp) # &floor
    # Line 3841
    lw	$s3,20($a1)
    # Line 3843
    add.s	$f12,$f22,$f12
    sdc1	$f24,560($sp)
    sd	$s7,616($sp)
    # Line 3841
    addiu	$s3,$s3,-1
    # Line 3843
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f13,$f0
    # Line 3844
    # lw $t9, -22764($gp) # &floor
    cvt.d.s	$f24,$f22
    # Line 3843
    mfc1	$s7,$f13
    sd	$s2,576($sp)
    # Line 3844
    mov.d	$f12,$f24
    jal	floor
    # Line 3843
    and	$s7,$s3,$s7
    # Line 3845
    lwc1	$f12,_lit_3f800000
    # Line 3844
    trunc.w.d	$f13,$f0
    # Line 3845
    # lw $t9, -22764($gp) # &floor
    # Line 3844
    mfc1	$s2,$f13
    # Line 3845
    add.s	$f12,$f22,$f12
    # Line 3844
    and	$s2,$s3,$s2
    # Line 3845
    jal	floor
    cvt.d.s	$f12,$f12
    # Line 3846
    lwc1	$f12,_lit_40000000
    # Line 3845
    trunc.w.d	$f13,$f0
    # Line 3846
    # lw $t9, -22764($gp) # &floor
    # Line 3845
    mfc1	$t8,$f13
    # Line 3846
    add.s	$f12,$f22,$f12
    sd	$s5,600($sp)
    # Line 3845
    and	$t8,$s3,$t8
    sd	$t8,496($sp)
    # Line 3846
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f14,$f0
    mfc1	$s5,$f14
    li	$s6,10497
    ldc1	$f6,464($sp)
    b	.L0da26674
    and	$s5,$s3,$s5
.L0da27110:
    # Line 3873
    msub.s	$f12,$f20,$f7,$f6
    # Line 3874
    lwc1	$f13,_lit_bf800000
    # Line 3872
    lw	$t8,24($s0)
    # Line 3874
    # lw $t9, -22764($gp) # &floor
    # Line 3873
    sdc1	$f12,472($sp)
    # Line 3874
    add.s	$f12,$f12,$f13
    # Line 3872
    addiu	$t8,$t8,-1
    sd	$t8,480($sp)
    # Line 3874
    jal	floor
    cvt.d.s	$f12,$f12
    # Line 3875
    ldc1	$f22,472($sp)
    # Line 3874
    trunc.w.d	$f14,$f0
    # Line 3875
    # lw $t9, -22764($gp) # &floor
    ld	$s6,480($sp)
    # Line 3874
    mfc1	$t8,$f14
    # Line 3875
    cvt.d.s	$f22,$f22
    # Line 3874
    and	$s6,$s6,$t8
    # Line 3875
    jal	floor
    mov.d	$f12,$f22
    # Line 3876
    lwc1	$f13,_lit_3f800000
    ldc1	$f12,472($sp)
    # Line 3875
    trunc.w.d	$f14,$f0
    # Line 3876
    # lw $t9, -22764($gp) # &floor
    # Line 3875
    ld	$s3,480($sp)
    mfc1	$t8,$f14
    # Line 3876
    add.s	$f12,$f12,$f13
    # Line 3875
    and	$s3,$s3,$t8
    # Line 3876
    jal	floor
    cvt.d.s	$f12,$f12
    # Line 3877
    lwc1	$f13,_lit_40000000
    ldc1	$f12,472($sp)
    # Line 3876
    trunc.w.d	$f14,$f0
    # Line 3877
    # lw $t9, -22764($gp) # &floor
    # Line 3876
    ld	$s4,480($sp)
    mfc1	$t8,$f14
    # Line 3877
    add.s	$f12,$f12,$f13
    sd	$s8,488($sp)
    # Line 3876
    and	$s4,$s4,$t8
    # Line 3877
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f15,$f0
    ld	$s8,480($sp)
    mfc1	$ra,$f15
    b	.L0da2671c
    and	$s8,$s8,$ra
.L0da271c4:
    # Line 3992
    ldc1	$f19,408($sp)
    ldc1	$f23,448($sp)
    ldc1	$f25,440($sp)
    lwc1	$f16,40($sp)
    mul.s	$f21,$f23,$f19
    lwc1	$f17,16($sp)
    mul.s	$f18,$f25,$f19
    mul.s	$f16,$f16,$f21
    ldc1	$f21,392($sp)
    madd.s	$f16,$f16,$f17,$f18
    lwc1	$f17,64($sp)
    mul.s	$f18,$f21,$f19
    madd.s	$f16,$f16,$f17,$f18
    ldc1	$f18,400($sp)
    lwc1	$f17,88($sp)
    mul.s	$f19,$f18,$f19
    madd.s	$f16,$f16,$f17,$f19
    ldc1	$f19,416($sp)
    lwc1	$f17,112($sp)
    mul.s	$f27,$f25,$f19
    madd.s	$f16,$f16,$f17,$f27
    lwc1	$f17,136($sp)
    mul.s	$f27,$f23,$f19
    madd.s	$f16,$f16,$f17,$f27
    lwc1	$f17,160($sp)
    mul.s	$f27,$f21,$f19
    madd.s	$f16,$f16,$f17,$f27
    lwc1	$f17,184($sp)
    mul.s	$f19,$f18,$f19
    madd.s	$f16,$f16,$f17,$f19
    ldc1	$f19,424($sp)
    lwc1	$f17,208($sp)
    mul.s	$f27,$f25,$f19
    madd.s	$f16,$f16,$f17,$f27
    lwc1	$f17,232($sp)
    mul.s	$f27,$f23,$f19
    madd.s	$f16,$f16,$f17,$f27
    lwc1	$f17,256($sp)
    mul.s	$f27,$f21,$f19
    madd.s	$f16,$f16,$f17,$f27
    lwc1	$f17,280($sp)
    mul.s	$f19,$f18,$f19
    madd.s	$f16,$f16,$f17,$f19
    ldc1	$f19,432($sp)
    lwc1	$f17,304($sp)
    mul.s	$f25,$f25,$f19
    madd.s	$f16,$f16,$f17,$f25
    lwc1	$f17,328($sp)
    mul.s	$f23,$f23,$f19
    madd.s	$f16,$f16,$f17,$f23
    lwc1	$f17,352($sp)
    mul.s	$f21,$f21,$f19
    madd.s	$f16,$f16,$f17,$f21
    lwc1	$f17,376($sp)
    mul.s	$f18,$f18,$f19
    madd.s	$f16,$f16,$f17,$f18
    ld	$at,488($sp)
    # Line 4006
    ld	$gp,552($sp)
    addiu	$sp,$sp,624
    jr	$ra
    # Line 3992
    swc1	$f16,16($at)
.end __glFilter4Func2

# Function: __glFilter4Func1
# Declared: Line 4012 (Source lines: 4015-4103)
# Address: 0x0da272c0 - 0x0da277b0 (Size: 1264 bytes, Frame: 128)
.globl __glFilter4Func1
.ent __glFilter4Func1
__glFilter4Func1:
    # Line 4025
    lwc1	$f0,32($a1)
    # Line 4015
    addiu	$sp,$sp,-256
    sd	$a5,160($sp)
    # Line 4025
    trunc.w.s	$f0,$f0
    sd	$ra,240($sp)
    sd	$gp,208($sp)
    # Line 4026
    cvt.s.w	$f6,$f0
    # Line 4015
    sd	$s1,216($sp)
    sd	$s0,200($sp)
    # Line 4034
    mtc1	$zero,$f7
    # Line 4015
    move	$s0,$a1
    # Line 4027
    lw	$a4,4($a0)
    li	$at,10497
    # Line 4016
    lw	$v1,0($a0)
    # Line 4015
    lui	$v0,0x3
    # Line 4026
    mul.s	$f5,$f6,$f14
    # Line 4015
    move	$s1,$a0
    sdc1	$f20,128($sp)
    addiu	$v0,$v0,-25908
    # Line 4025
    mfc1	$a3,$f0
    # Line 4027
    lwc1	$f20,3540($v1)
    # Line 4015
    addu	$gp,$t9,$v0
    # Line 4027
    beq	$a4,$at,.L0da276b0
    # Line 4026
    mov.s	$f4,$f5
    # Line 4034
    c.lt.s	$f5,$f7
    sd	$a4,152($sp)
    bc1f	.L0da2733c
    sd	$a3,232($sp)
    mtc1	$zero,$f4
    b	.L0da27348
    sdc1	$f22,224($sp)
.L0da2733c:
    c.lt.s $f6,$f5
    sdc1	$f22,224($sp)
    movt.s	$f4,$f6,$fcc1
.L0da27348:
    # Line 4039
    sub.s	$f22,$f4,$f20
    # lw $t9, -22764($gp) # &floor
    cvt.d.s	$f22,$f22
    jal	floor
    mov.d	$f12,$f22
    trunc.w.d	$f6,$f0
    mfc1	$a1,$f6
    # Line 4040
    addiu	$a3,$a1,-1
    mtc1	$a3,$f23
    # Line 4043
    ld	$a0,232($sp)
    addiu	$a6,$a1,1
    # Line 4040
    cvt.s.w	$f23,$f23
    mtc1	$zero,$f5
    # Line 4043
    slt	$a7,$a0,$a6
    movn	$a6,$a0,$a7
    # Line 4046
    ld	$v1,152($sp)
    addiu	$a4,$a6,1
    # Line 4039
    move	$a5,$a1
    sd	$a5,192($sp)
    # Line 4046
    slt	$a5,$a0,$a4
    # Line 4040
    c.lt.s $f23,$f5
    # Line 4046
    li	$a2,0x812f
    # Line 4043
    sd	$a6,168($sp)
    # Line 4046
    movn	$a4,$a0,$a5
    sd	$a4,176($sp)
    # Line 4040
    movt	$a3,$zero,$fcc2
    # Line 4046
    beq	$v1,$a2,.L0da2758c
    sd	$a3,184($sp)
.L0da273b8:
    # Line 4058
    # lw $t9, -22764($gp) # &floor
    jal	floor
    mov.d	$f12,$f22
    ldc1	$f2,_lit8_4030000000000000
    sub.d	$f1,$f22,$f0
    cvt.d.s	$f0,$f20
    madd.d	$f0,$f0,$f1,$f2
    trunc.w.d	$f0,$f0
    mfc1	$t2,$f0
    # Line 4066
    ld	$a4,184($sp)
    # Line 4059
    sll	$t1,$t2,0x2
    # Line 4066
    lw	$t9,96($s0)
    # Line 4059
    addu	$t1,$s1,$t1
    # Line 4062
    li	$t0,32
    # Line 4060
    lwc1	$f31,24($t1)
    # Line 4059
    lwc1	$f29,88($t1)
    # Line 4062
    subu	$t0,$t0,$t2
    # Line 4061
    sll	$a7,$t2,0x1e
    # Line 4060
    sdc1	$f31,104($sp)
    # Line 4062
    sll	$t0,$t0,0x2
    # Line 4061
    subu	$a7,$a7,$t2
    # Line 4059
    sdc1	$f29,96($sp)
    # Line 4062
    addu	$t0,$s1,$t0
    # Line 4061
    sll	$a7,$a7,0x2
    # Line 4062
    lwc1	$f27,24($t0)
    # Line 4061
    addu	$a7,$s1,$a7
    # Line 4066
    addiu	$a5,$sp,0
    move	$a3,$zero
    # Line 4061
    lwc1	$f25,88($a7)
    # Line 4066
    move	$a2,$zero
    move	$a1,$s1
    # Line 4062
    sdc1	$f27,120($sp)
    # Line 4066
    move	$a0,$s0
    jalr	$t9
    sdc1	$f25,112($sp)
    # Line 4067
    lw	$t9,96($s0)
    move	$a0,$s0
    move	$a1,$s1
    ldc1	$f22,224($sp)
    move	$a2,$zero
    move	$a3,$zero
    ld	$a4,192($sp)
    jalr	$t9
    addiu	$a5,$sp,24
    # Line 4068
    lw	$t9,96($s0)
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$zero
    ld	$a4,168($sp)
    jalr	$t9
    addiu	$a5,$sp,48
    # Line 4069
    lw	$t9,96($s0)
    move	$a0,$s0
    move	$a1,$s1
    move	$a2,$zero
    move	$a3,$zero
    ld	$a4,176($sp)
    jalr	$t9
    addiu	$a5,$sp,72
    # Line 4073
    li	$v0,0x8049
    lw	$a0,64($s0)
    li	$at,6406
    li	$t2,6410
    li	$t9,6407
    li	$t8,6408
    li	$t3,6409
    beq	$a0,$t2,.L0da27504
    ld	$ra,240($sp)
    beq	$a0,$t3,.L0da27540
    # Line 4079
    ldc1	$f6,104($sp)
    # Line 4073
    beq	$a0,$t8,.L0da275ac
    # Line 4083
    ldc1	$f9,104($sp)
    # Line 4073
    beq	$a0,$t9,.L0da275e0
    # Line 4103
    ld	$s0,200($sp)
    ld	$s1,216($sp)
    # Line 4073
    beq	$a0,$at,.L0da27774
    # Line 4103
    ld	$gp,208($sp)
    # Line 4073
    beq	$a0,$v0,.L0da27678
    # Line 4099
    ldc1	$f18,104($sp)
.L0da274f8:
    # Line 4103
    ldc1	$f20,128($sp)
    jr	$ra
    addiu	$sp,$sp,256
.L0da27504:
    # Line 4075
    ldc1	$f4,104($sp)
    lwc1	$f3,40($sp)
    lwc1	$f5,16($sp)
    mul.s	$f3,$f3,$f4
    ldc1	$f4,96($sp)
    lwc1	$f6,64($sp)
    madd.s	$f3,$f3,$f4,$f5
    ldc1	$f4,112($sp)
    lwc1	$f5,88($sp)
    madd.s	$f3,$f3,$f4,$f6
    ldc1	$f4,120($sp)
    madd.s	$f3,$f3,$f4,$f5
    ld	$v1,160($sp)
    swc1	$f3,16($v1)
    # Line 4079
    ldc1	$f6,104($sp)
.L0da27540:
    lwc1	$f5,36($sp)
    lwc1	$f7,12($sp)
    mul.s	$f5,$f5,$f6
    ldc1	$f6,96($sp)
    lwc1	$f8,60($sp)
    madd.s	$f5,$f5,$f6,$f7
    ldc1	$f6,112($sp)
    lwc1	$f7,84($sp)
    madd.s	$f5,$f5,$f6,$f8
    ldc1	$f6,120($sp)
    # Line 4103
    ld	$gp,208($sp)
    # Line 4079
    madd.s	$f5,$f5,$f6,$f7
    # Line 4103
    ld	$s0,200($sp)
    ld	$s1,216($sp)
    # Line 4079
    ld	$a0,160($sp)
    # Line 4103
    ldc1	$f20,128($sp)
    addiu	$sp,$sp,256
    jr	$ra
    # Line 4079
    swc1	$f5,12($a0)
.L0da2758c:
    # Line 4051
    cvt.s.w	$f7,$f6
    c.lt.s $f7,$f5
    move	$a2,$a1
    movt	$a2,$zero,$fcc3
    slt	$a3,$a0,$a2
    movn	$a2,$a0,$a3
    b	.L0da273b8
    sd	$a2,192($sp)
.L0da275ac:
    # Line 4083
    lwc1	$f8,40($sp)
    lwc1	$f10,16($sp)
    mul.s	$f8,$f8,$f9
    ldc1	$f9,96($sp)
    lwc1	$f11,64($sp)
    madd.s	$f8,$f8,$f9,$f10
    ldc1	$f9,112($sp)
    lwc1	$f10,88($sp)
    madd.s	$f8,$f8,$f9,$f11
    ldc1	$f9,120($sp)
    madd.s	$f8,$f8,$f9,$f10
    ld	$a3,160($sp)
    swc1	$f8,16($a3)
.L0da275e0:
    # Line 4087
    ldc1	$f12,96($sp)
    ldc1	$f14,104($sp)
    lwc1	$f16,24($sp)
    lwc1	$f17,0($sp)
    ldc1	$f13,112($sp)
    lwc1	$f18,48($sp)
    mul.s	$f16,$f16,$f14
    ldc1	$f11,120($sp)
    madd.s	$f16,$f16,$f17,$f12
    lwc1	$f17,72($sp)
    madd.s	$f16,$f16,$f18,$f13
    madd.s	$f16,$f16,$f17,$f11
    ld	$a4,160($sp)
    swc1	$f16,0($a4)
    # Line 4089
    lwc1	$f15,28($sp)
    lwc1	$f16,4($sp)
    lwc1	$f17,52($sp)
    mul.s	$f15,$f15,$f14
    madd.s	$f15,$f15,$f12,$f16
    lwc1	$f16,76($sp)
    madd.s	$f15,$f15,$f13,$f17
    madd.s	$f15,$f15,$f11,$f16
    swc1	$f15,4($a4)
    # Line 4091
    lwc1	$f10,32($sp)
    lwc1	$f15,8($sp)
    mul.s	$f10,$f10,$f14
    lwc1	$f14,56($sp)
    madd.s	$f10,$f10,$f12,$f15
    lwc1	$f12,80($sp)
    madd.s	$f10,$f10,$f13,$f14
    madd.s	$f10,$f10,$f11,$f12
    # Line 4103
    ld	$gp,208($sp)
    ld	$s0,200($sp)
    ld	$s1,216($sp)
    ldc1	$f20,128($sp)
    addiu	$sp,$sp,256
    jr	$ra
    # Line 4091
    swc1	$f10,8($a4)
.L0da27678:
    # Line 4099
    lwc1	$f17,44($sp)
    lwc1	$f19,20($sp)
    mul.s	$f17,$f17,$f18
    ldc1	$f18,96($sp)
    lwc1	$f21,68($sp)
    madd.s	$f17,$f17,$f18,$f19
    ldc1	$f18,112($sp)
    lwc1	$f19,92($sp)
    madd.s	$f17,$f17,$f18,$f21
    ldc1	$f18,120($sp)
    madd.s	$f17,$f17,$f18,$f19
    # Line 4101
    ld	$a5,160($sp)
    b	.L0da274f8
    # Line 4099
    swc1	$f17,20($a5)
.L0da276b0:
    # Line 4030
    msub.s	$f12,$f20,$f6,$f14
    # Line 4031
    lwc1	$f13,_lit_bf800000
    # Line 4029
    lw	$a6,20($a1)
    # Line 4031
    # lw $t9, -22764($gp) # &floor
    # Line 4030
    sdc1	$f12,136($sp)
    # Line 4031
    add.s	$f12,$f12,$f13
    sdc1	$f22,224($sp)
    # Line 4029
    addiu	$a6,$a6,-1
    sd	$a6,144($sp)
    # Line 4031
    jal	floor
    cvt.d.s	$f12,$f12
    # Line 4032
    ldc1	$f22,136($sp)
    # Line 4031
    trunc.w.d	$f14,$f0
    # Line 4032
    # lw $t9, -22764($gp) # &floor
    ld	$a7,144($sp)
    # Line 4031
    mfc1	$t0,$f14
    # Line 4032
    cvt.d.s	$f22,$f22
    # Line 4031
    and	$a7,$a7,$t0
    sd	$a7,184($sp)
    # Line 4032
    jal	floor
    mov.d	$f12,$f22
    # Line 4033
    lwc1	$f13,_lit_3f800000
    ldc1	$f12,136($sp)
    # Line 4032
    trunc.w.d	$f14,$f0
    # Line 4033
    # lw $t9, -22764($gp) # &floor
    # Line 4032
    ld	$t1,144($sp)
    mfc1	$t2,$f14
    # Line 4033
    add.s	$f12,$f12,$f13
    # Line 4032
    and	$t1,$t1,$t2
    sd	$t1,192($sp)
    # Line 4033
    jal	floor
    cvt.d.s	$f12,$f12
    # Line 4034
    lwc1	$f13,_lit_40000000
    ldc1	$f12,136($sp)
    # Line 4033
    trunc.w.d	$f14,$f0
    # Line 4034
    # lw $t9, -22764($gp) # &floor
    # Line 4033
    ld	$t3,144($sp)
    mfc1	$t8,$f14
    # Line 4034
    add.s	$f12,$f12,$f13
    # Line 4033
    and	$t3,$t3,$t8
    sd	$t3,168($sp)
    # Line 4034
    jal	floor
    cvt.d.s	$f12,$f12
    trunc.w.d	$f15,$f0
    ld	$t9,144($sp)
    mfc1	$ra,$f15
    and	$t9,$t9,$ra
    b	.L0da273b8
    sd	$t9,176($sp)
.L0da27774:
    # Line 4095
    ldc1	$f17,104($sp)
    lwc1	$f16,40($sp)
    lwc1	$f18,16($sp)
    mul.s	$f16,$f16,$f17
    ldc1	$f17,96($sp)
    lwc1	$f19,64($sp)
    madd.s	$f16,$f16,$f17,$f18
    ldc1	$f17,112($sp)
    lwc1	$f18,88($sp)
    madd.s	$f16,$f16,$f17,$f19
    ldc1	$f17,120($sp)
    madd.s	$f16,$f16,$f17,$f18
    # Line 4097
    ld	$at,160($sp)
    b	.L0da274f8
    # Line 4095
    swc1	$f16,16($at)
.end __glFilter4Func1

# Function: __glTextureModulateL
# Declared: Line 4109 (Source lines: 4114-4117)
# Address: 0x0da277b0 - 0x0da277e4 (Size: 52 bytes, Frame: 0)
.globl __glTextureModulateL
.ent __glTextureModulateL
__glTextureModulateL:
    # Line 4114
    lwc1	$f5,12($a2)
    lwc1	$f4,0($a1)
    # Line 4115
    lwc1	$f2,4($a1)
    # Line 4114
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a1)
    # Line 4115
    lwc1	$f3,12($a2)
    # Line 4116
    lwc1	$f0,8($a1)
    # Line 4115
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 4116
    lwc1	$f1,12($a2)
    mul.s	$f0,$f0,$f1
    # Line 4117
    jr	$ra
    # Line 4116
    swc1	$f0,8($a1)
.end __glTextureModulateL

# Function: __glTextureModulateLA
# Declared: Line 4121 (Source lines: 4126-4130)
# Address: 0x0da277f0 - 0x0da27834 (Size: 68 bytes, Frame: 0)
.globl __glTextureModulateLA
.ent __glTextureModulateLA
__glTextureModulateLA:
    # Line 4126
    lwc1	$f7,12($a2)
    lwc1	$f6,0($a1)
    # Line 4127
    lwc1	$f4,4($a1)
    # Line 4126
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($a1)
    # Line 4127
    lwc1	$f5,12($a2)
    # Line 4128
    lwc1	$f2,8($a1)
    # Line 4127
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a1)
    # Line 4128
    lwc1	$f3,12($a2)
    # Line 4129
    lwc1	$f0,12($a1)
    # Line 4128
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4129
    lwc1	$f1,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4130
    jr	$ra
    # Line 4129
    swc1	$f0,12($a1)
.end __glTextureModulateLA

# Function: __glTextureModulateRGB
# Declared: Line 4134 (Source lines: 4139-4142)
# Address: 0x0da27840 - 0x0da27874 (Size: 52 bytes, Frame: 0)
.globl __glTextureModulateRGB
.ent __glTextureModulateRGB
__glTextureModulateRGB:
    # Line 4139
    lwc1	$f5,0($a2)
    lwc1	$f4,0($a1)
    # Line 4140
    lwc1	$f2,4($a1)
    # Line 4139
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a1)
    # Line 4140
    lwc1	$f3,4($a2)
    # Line 4141
    lwc1	$f0,8($a1)
    # Line 4140
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 4141
    lwc1	$f1,8($a2)
    mul.s	$f0,$f0,$f1
    # Line 4142
    jr	$ra
    # Line 4141
    swc1	$f0,8($a1)
.end __glTextureModulateRGB

# Function: __glTextureModulateRGBA
# Declared: Line 4146 (Source lines: 4151-4155)
# Address: 0x0da27880 - 0x0da278c4 (Size: 68 bytes, Frame: 0)
.globl __glTextureModulateRGBA
.ent __glTextureModulateRGBA
__glTextureModulateRGBA:
    # Line 4151
    lwc1	$f7,0($a2)
    lwc1	$f6,0($a1)
    # Line 4152
    lwc1	$f4,4($a1)
    # Line 4151
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($a1)
    # Line 4152
    lwc1	$f5,4($a2)
    # Line 4153
    lwc1	$f2,8($a1)
    # Line 4152
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a1)
    # Line 4153
    lwc1	$f3,8($a2)
    # Line 4154
    lwc1	$f0,12($a1)
    # Line 4153
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4154
    lwc1	$f1,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4155
    jr	$ra
    # Line 4154
    swc1	$f0,12($a1)
.end __glTextureModulateRGBA

# Function: __glTextureModulateA
# Declared: Line 4159 (Source lines: 4164-4165)
# Address: 0x0da278d0 - 0x0da278e4 (Size: 20 bytes, Frame: 0)
.globl __glTextureModulateA
.ent __glTextureModulateA
__glTextureModulateA:
    # Line 4164
    lwc1	$f1,16($a2)
    lwc1	$f0,12($a1)
    mul.s	$f0,$f0,$f1
    # Line 4165
    jr	$ra
    # Line 4164
    swc1	$f0,12($a1)
.end __glTextureModulateA

# Function: __glTextureModulateI
# Declared: Line 4169 (Source lines: 4174-4178)
# Address: 0x0da278f0 - 0x0da27934 (Size: 68 bytes, Frame: 0)
.globl __glTextureModulateI
.ent __glTextureModulateI
__glTextureModulateI:
    # Line 4174
    lwc1	$f7,20($a2)
    lwc1	$f6,0($a1)
    # Line 4175
    lwc1	$f4,4($a1)
    # Line 4174
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($a1)
    # Line 4175
    lwc1	$f5,20($a2)
    # Line 4176
    lwc1	$f2,8($a1)
    # Line 4175
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a1)
    # Line 4176
    lwc1	$f3,20($a2)
    # Line 4177
    lwc1	$f0,12($a1)
    # Line 4176
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4177
    lwc1	$f1,20($a2)
    mul.s	$f0,$f0,$f1
    # Line 4178
    jr	$ra
    # Line 4177
    swc1	$f0,12($a1)
.end __glTextureModulateI

# Function: __glTextureDecalRGB
# Declared: Line 4183 (Source lines: 4185-4188)
# Address: 0x0da27940 - 0x0da27974 (Size: 52 bytes, Frame: 0)
.globl __glTextureDecalRGB
.ent __glTextureDecalRGB
__glTextureDecalRGB:
    # Line 4185
    lwc1	$f5,30752($a0)
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a1)
    # Line 4186
    lwc1	$f3,30756($a0)
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 4187
    lwc1	$f1,30760($a0)
    lwc1	$f0,8($a2)
    mul.s	$f0,$f0,$f1
    # Line 4188
    jr	$ra
    # Line 4187
    swc1	$f0,8($a1)
.end __glTextureDecalRGB

# Function: __glTextureDecalRGBA
# Declared: Line 4191 (Source lines: 4193-4202)
# Address: 0x0da27980 - 0x0da279e4 (Size: 100 bytes, Frame: 0)
.globl __glTextureDecalRGBA
.ent __glTextureDecalRGBA
__glTextureDecalRGBA:
    # Line 4193
    lwc1	$f4,16($a2)
    # Line 4196
    lwc1	$f10,0($a2)
    # Line 4194
    lwc1	$f2,3544($a0)
    # Line 4196
    lwc1	$f8,30752($a0)
    lwc1	$f9,0($a1)
    mul.s	$f10,$f10,$f4
    # Line 4194
    sub.s	$f2,$f2,$f4
    # Line 4196
    mul.s	$f8,$f8,$f10
    madd.s	$f8,$f8,$f9,$f2
    swc1	$f8,0($a1)
    # Line 4198
    lwc1	$f7,4($a2)
    lwc1	$f5,30756($a0)
    lwc1	$f6,4($a1)
    mul.s	$f7,$f7,$f4
    mul.s	$f5,$f5,$f7
    madd.s	$f5,$f5,$f6,$f2
    swc1	$f5,4($a1)
    # Line 4200
    lwc1	$f3,8($a2)
    lwc1	$f0,30760($a0)
    lwc1	$f1,8($a1)
    mul.s	$f3,$f3,$f4
    mul.s	$f0,$f0,$f3
    madd.s	$f0,$f0,$f1,$f2
    # Line 4202
    jr	$ra
    # Line 4200
    swc1	$f0,8($a1)
.end __glTextureDecalRGBA

# Function: __glTextureBlendL
# Declared: Line 4207 (Source lines: 4209-4216)
# Address: 0x0da279f0 - 0x0da27a40 (Size: 80 bytes, Frame: 0)
.globl __glTextureBlendL
.ent __glTextureBlendL
__glTextureBlendL:
    # Line 4209
    lwc1	$f3,12($a2)
    # Line 4211
    lw	$at,2484($a0)
    # Line 4210
    lwc1	$f2,3544($a0)
    # Line 4213
    lwc1	$f5,4($at)
    lwc1	$f6,0($a1)
    # Line 4210
    sub.s	$f2,$f2,$f3
    # Line 4213
    mul.s	$f5,$f5,$f3
    madd.s	$f5,$f5,$f6,$f2
    swc1	$f5,0($a1)
    # Line 4214
    lwc1	$f4,8($at)
    lwc1	$f5,4($a1)
    mul.s	$f4,$f4,$f3
    madd.s	$f4,$f4,$f5,$f2
    swc1	$f4,4($a1)
    # Line 4215
    lwc1	$f0,12($at)
    lwc1	$f1,8($a1)
    mul.s	$f0,$f0,$f3
    madd.s	$f0,$f0,$f1,$f2
    # Line 4216
    jr	$ra
    # Line 4215
    swc1	$f0,8($a1)
.end __glTextureBlendL

# Function: __glTextureBlendLA
# Declared: Line 4219 (Source lines: 4221-4229)
# Address: 0x0da27a40 - 0x0da27aa0 (Size: 96 bytes, Frame: 0)
.globl __glTextureBlendLA
.ent __glTextureBlendLA
__glTextureBlendLA:
    # Line 4221
    lwc1	$f5,12($a2)
    # Line 4223
    lw	$at,2484($a0)
    # Line 4222
    lwc1	$f4,3544($a0)
    # Line 4225
    lwc1	$f7,4($at)
    lwc1	$f8,0($a1)
    # Line 4222
    sub.s	$f4,$f4,$f5
    # Line 4225
    mul.s	$f7,$f7,$f5
    madd.s	$f7,$f7,$f8,$f4
    swc1	$f7,0($a1)
    # Line 4226
    lwc1	$f6,8($at)
    lwc1	$f7,4($a1)
    mul.s	$f6,$f6,$f5
    madd.s	$f6,$f6,$f7,$f4
    swc1	$f6,4($a1)
    # Line 4227
    lwc1	$f2,12($at)
    lwc1	$f3,8($a1)
    mul.s	$f2,$f2,$f5
    madd.s	$f2,$f2,$f3,$f4
    # Line 4228
    lwc1	$f0,12($a1)
    # Line 4227
    swc1	$f2,8($a1)
    # Line 4228
    lwc1	$f1,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4229
    jr	$ra
    # Line 4228
    swc1	$f0,12($a1)
.end __glTextureBlendLA

# Function: __glTextureBlendRGB
# Declared: Line 4232 (Source lines: 4234-4242)
# Address: 0x0da27aa0 - 0x0da27b08 (Size: 104 bytes, Frame: 0)
.globl __glTextureBlendRGB
.ent __glTextureBlendRGB
__glTextureBlendRGB:
    # Line 4234
    lwc1	$f11,0($a2)
    # Line 4237
    lw	$at,2484($a0)
    # Line 4239
    lwc1	$f10,3544($a0)
    lwc1	$f8,4($at)
    lwc1	$f9,0($a1)
    sub.s	$f10,$f10,$f11
    mul.s	$f8,$f8,$f11
    madd.s	$f8,$f8,$f9,$f10
    # Line 4236
    lwc1	$f3,8($a2)
    # Line 4235
    lwc1	$f7,4($a2)
    # Line 4239
    swc1	$f8,0($a1)
    # Line 4240
    lwc1	$f6,3544($a0)
    lwc1	$f4,8($at)
    lwc1	$f5,4($a1)
    sub.s	$f6,$f6,$f7
    mul.s	$f4,$f4,$f7
    madd.s	$f4,$f4,$f5,$f6
    swc1	$f4,4($a1)
    # Line 4241
    lwc1	$f2,3544($a0)
    lwc1	$f0,12($at)
    lwc1	$f1,8($a1)
    sub.s	$f2,$f2,$f3
    mul.s	$f0,$f0,$f3
    madd.s	$f0,$f0,$f1,$f2
    # Line 4242
    jr	$ra
    # Line 4241
    swc1	$f0,8($a1)
.end __glTextureBlendRGB

# Function: __glTextureBlendRGBA
# Declared: Line 4245 (Source lines: 4247-4256)
# Address: 0x0da27b10 - 0x0da27b88 (Size: 120 bytes, Frame: 0)
.globl __glTextureBlendRGBA
.ent __glTextureBlendRGBA
__glTextureBlendRGBA:
    # Line 4247
    lwc1	$f13,0($a2)
    # Line 4250
    lw	$at,2484($a0)
    # Line 4252
    lwc1	$f12,3544($a0)
    lwc1	$f10,4($at)
    lwc1	$f11,0($a1)
    sub.s	$f12,$f12,$f13
    mul.s	$f10,$f10,$f13
    madd.s	$f10,$f10,$f11,$f12
    # Line 4249
    lwc1	$f5,8($a2)
    # Line 4248
    lwc1	$f9,4($a2)
    # Line 4252
    swc1	$f10,0($a1)
    # Line 4253
    lwc1	$f8,3544($a0)
    lwc1	$f6,8($at)
    lwc1	$f7,4($a1)
    sub.s	$f8,$f8,$f9
    mul.s	$f6,$f6,$f9
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,4($a1)
    # Line 4254
    lwc1	$f4,3544($a0)
    lwc1	$f2,12($at)
    lwc1	$f3,8($a1)
    sub.s	$f4,$f4,$f5
    mul.s	$f2,$f2,$f5
    madd.s	$f2,$f2,$f3,$f4
    # Line 4255
    lwc1	$f0,12($a1)
    # Line 4254
    swc1	$f2,8($a1)
    # Line 4255
    lwc1	$f1,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4256
    jr	$ra
    # Line 4255
    swc1	$f0,12($a1)
.end __glTextureBlendRGBA

# Function: __glTextureBlendA
# Declared: Line 4260 (Source lines: 4265-4266)
# Address: 0x0da27b90 - 0x0da27ba4 (Size: 20 bytes, Frame: 0)
.globl __glTextureBlendA
.ent __glTextureBlendA
__glTextureBlendA:
    # Line 4265
    lwc1	$f1,16($a2)
    lwc1	$f0,12($a1)
    mul.s	$f0,$f0,$f1
    # Line 4266
    jr	$ra
    # Line 4265
    swc1	$f0,12($a1)
.end __glTextureBlendA

# Function: __glTextureBlendI
# Declared: Line 4269 (Source lines: 4271-4279)
# Address: 0x0da27bb0 - 0x0da27c14 (Size: 100 bytes, Frame: 0)
.globl __glTextureBlendI
.ent __glTextureBlendI
__glTextureBlendI:
    # Line 4271
    lwc1	$f3,20($a2)
    # Line 4273
    lw	$at,2484($a0)
    # Line 4272
    lwc1	$f2,3544($a0)
    # Line 4275
    lwc1	$f6,4($at)
    lwc1	$f7,0($a1)
    # Line 4272
    sub.s	$f2,$f2,$f3
    # Line 4275
    mul.s	$f6,$f6,$f3
    madd.s	$f6,$f6,$f7,$f2
    swc1	$f6,0($a1)
    # Line 4276
    lwc1	$f5,8($at)
    lwc1	$f6,4($a1)
    mul.s	$f5,$f5,$f3
    madd.s	$f5,$f5,$f6,$f2
    swc1	$f5,4($a1)
    # Line 4277
    lwc1	$f4,12($at)
    lwc1	$f5,8($a1)
    mul.s	$f4,$f4,$f3
    madd.s	$f4,$f4,$f5,$f2
    swc1	$f4,8($a1)
    # Line 4278
    lwc1	$f0,16($at)
    lwc1	$f1,12($a1)
    mul.s	$f0,$f0,$f3
    madd.s	$f0,$f0,$f1,$f2
    # Line 4279
    jr	$ra
    # Line 4278
    swc1	$f0,12($a1)
.end __glTextureBlendI

# Function: __glTextureReplaceL
# Declared: Line 4284 (Source lines: 4286-4289)
# Address: 0x0da27c20 - 0x0da27c54 (Size: 52 bytes, Frame: 0)
.globl __glTextureReplaceL
.ent __glTextureReplaceL
__glTextureReplaceL:
    # Line 4286
    lwc1	$f5,30752($a0)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a1)
    # Line 4287
    lwc1	$f3,30756($a0)
    lwc1	$f2,12($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 4288
    lwc1	$f1,30760($a0)
    lwc1	$f0,12($a2)
    mul.s	$f0,$f0,$f1
    # Line 4289
    jr	$ra
    # Line 4288
    swc1	$f0,8($a1)
.end __glTextureReplaceL

# Function: __glTextureReplaceLA
# Declared: Line 4292 (Source lines: 4294-4298)
# Address: 0x0da27c60 - 0x0da27ca4 (Size: 68 bytes, Frame: 0)
.globl __glTextureReplaceLA
.ent __glTextureReplaceLA
__glTextureReplaceLA:
    # Line 4294
    lwc1	$f7,30752($a0)
    lwc1	$f6,12($a2)
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($a1)
    # Line 4295
    lwc1	$f5,30756($a0)
    lwc1	$f4,12($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a1)
    # Line 4296
    lwc1	$f3,30760($a0)
    lwc1	$f2,12($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4297
    lwc1	$f1,30792($a0)
    lwc1	$f0,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4298
    jr	$ra
    # Line 4297
    swc1	$f0,12($a1)
.end __glTextureReplaceLA

# Function: __glTextureReplaceRGB
# Declared: Line 4301 (Source lines: 4303-4306)
# Address: 0x0da27cb0 - 0x0da27ce4 (Size: 52 bytes, Frame: 0)
.globl __glTextureReplaceRGB
.ent __glTextureReplaceRGB
__glTextureReplaceRGB:
    # Line 4303
    lwc1	$f5,30752($a0)
    lwc1	$f4,0($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a1)
    # Line 4304
    lwc1	$f3,30756($a0)
    lwc1	$f2,4($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a1)
    # Line 4305
    lwc1	$f1,30760($a0)
    lwc1	$f0,8($a2)
    mul.s	$f0,$f0,$f1
    # Line 4306
    jr	$ra
    # Line 4305
    swc1	$f0,8($a1)
.end __glTextureReplaceRGB

# Function: __glTextureReplaceRGBA
# Declared: Line 4309 (Source lines: 4311-4315)
# Address: 0x0da27cf0 - 0x0da27d34 (Size: 68 bytes, Frame: 0)
.globl __glTextureReplaceRGBA
.ent __glTextureReplaceRGBA
__glTextureReplaceRGBA:
    # Line 4311
    lwc1	$f7,30752($a0)
    lwc1	$f6,0($a2)
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($a1)
    # Line 4312
    lwc1	$f5,30756($a0)
    lwc1	$f4,4($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a1)
    # Line 4313
    lwc1	$f3,30760($a0)
    lwc1	$f2,8($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4314
    lwc1	$f1,30792($a0)
    lwc1	$f0,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4315
    jr	$ra
    # Line 4314
    swc1	$f0,12($a1)
.end __glTextureReplaceRGBA

# Function: __glTextureReplaceA
# Declared: Line 4318 (Source lines: 4320-4321)
# Address: 0x0da27d40 - 0x0da27d54 (Size: 20 bytes, Frame: 0)
.globl __glTextureReplaceA
.ent __glTextureReplaceA
__glTextureReplaceA:
    # Line 4320
    lwc1	$f1,30792($a0)
    lwc1	$f0,16($a2)
    mul.s	$f0,$f0,$f1
    # Line 4321
    jr	$ra
    # Line 4320
    swc1	$f0,12($a1)
.end __glTextureReplaceA

# Function: __glTextureReplaceI
# Declared: Line 4324 (Source lines: 4326-4330)
# Address: 0x0da27d60 - 0x0da27da4 (Size: 68 bytes, Frame: 0)
.globl __glTextureReplaceI
.ent __glTextureReplaceI
__glTextureReplaceI:
    # Line 4326
    lwc1	$f7,30752($a0)
    lwc1	$f6,20($a2)
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($a1)
    # Line 4327
    lwc1	$f5,30756($a0)
    lwc1	$f4,20($a2)
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a1)
    # Line 4328
    lwc1	$f3,30760($a0)
    lwc1	$f2,20($a2)
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a1)
    # Line 4329
    lwc1	$f1,30792($a0)
    lwc1	$f0,20($a2)
    mul.s	$f0,$f0,$f1
    # Line 4330
    jr	$ra
    # Line 4329
    swc1	$f0,12($a1)
.end __glTextureReplaceI

# Function: __GL_TEXENV_CLAMP
# Declared: Line 4348 (Source lines: 4349-4356)
# Address: 0x0da27db0 - 0x0da27dd4 (Size: 36 bytes, Frame: 0)
.globl __GL_TEXENV_CLAMP
.ent __GL_TEXENV_CLAMP
__GL_TEXENV_CLAMP:
    # Line 4349
    c.le.s	$f12,$f14
    bc1f	.L0da27dcc
    # Line 4356
    mov.s	$f0,$f14
    # Line 4352
    mov.s	$f0,$f12
    # Line 4349
    c.le.s $f13,$f12
    # Line 4356
    jr	$ra
    movf.s	$f0,$f13,$fcc1
.L0da27dcc:
    jr	$ra
    nop
.end __GL_TEXENV_CLAMP

# Function: __glTextureSBModulateL
# Declared: Line 33 (Source lines: 34-46)
# Address: 0x0da27de0 - 0x0da27ef0 (Size: 272 bytes, Frame: 192)
.globl __glTextureSBModulateL
.ent __glTextureSBModulateL
__glTextureSBModulateL:
    # Line 34
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s1,24($sp)
    sd	$s0,48($sp)
    sdc1	$f30,0($sp)
    # Line 40
    lwc1	$f15,12($a2)
    sd	$gp,40($sp)
    # Line 34
    sd	$s2,8($sp)
    # Line 35
    lw	$s2,28208($a0)
    # Line 40
    swc1	$f15,8($a2)
    # Line 34
    lui	$t8,0x3
    # Line 40
    swc1	$f15,4($a2)
    # Line 34
    addiu	$t8,$t8,-28756
    # Line 40
    swc1	$f15,0($a2)
    # Line 34
    addu	$gp,$t9,$t8
    # Line 41
    mtc1	$zero,$f30
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 34
    move	$s0,$a2
    sd	$s8,32($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 41
    lwc1	$f12,188($s2)
    mov.s	$f13,$f30
    lwc1	$f14,3544($a0)
    # Line 35
    addiu	$s2,$s2,4
    # Line 41
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    # Line 43
    lwc1	$f25,0($s0)
    # Line 41
    swc1	$f0,8($s0)
    # Line 43
    lwc1	$f23,0($s8)
    ld	$s2,8($sp)
    # Line 44
    lwc1	$f19,4($s8)
    # Line 43
    mul.s	$f23,$f23,$f25
    swc1	$f23,0($s8)
    # Line 44
    lwc1	$f21,4($s0)
    ld	$s1,24($sp)
    ldc1	$f30,0($sp)
    # Line 45
    lwc1	$f17,8($s8)
    # Line 44
    mul.s	$f19,$f19,$f21
    swc1	$f19,4($s8)
    # Line 45
    lwc1	$f18,8($s0)
    # Line 46
    ld	$gp,40($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    # Line 45
    mul.s	$f17,$f17,$f18
    swc1	$f17,8($s8)
    # Line 46
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBModulateL

# Function: __glTextureSBModulateLA
# Declared: Line 49 (Source lines: 50-63)
# Address: 0x0da27ef0 - 0x0da28034 (Size: 324 bytes, Frame: 192)
.globl __glTextureSBModulateLA
.ent __glTextureSBModulateLA
__glTextureSBModulateLA:
    # Line 50
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s1,24($sp)
    sd	$s0,48($sp)
    sdc1	$f20,0($sp)
    # Line 56
    lwc1	$f15,12($a2)
    sd	$gp,40($sp)
    # Line 50
    sd	$s2,8($sp)
    # Line 51
    lw	$s2,28208($a0)
    # Line 56
    swc1	$f15,8($a2)
    # Line 50
    lui	$t8,0x3
    # Line 56
    swc1	$f15,4($a2)
    # Line 50
    addiu	$t8,$t8,-29028
    # Line 56
    swc1	$f15,0($a2)
    # Line 50
    addu	$gp,$t9,$t8
    # Line 57
    mtc1	$zero,$f20
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 50
    move	$s0,$a2
    sd	$s8,32($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 57
    lwc1	$f12,188($s2)
    mov.s	$f13,$f20
    lwc1	$f14,3544($a0)
    # Line 51
    addiu	$s2,$s2,4
    # Line 57
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,16($s0)
    swc1	$f0,8($s0)
    lwc1	$f15,180($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,196($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    # Line 59
    lwc1	$f29,0($s0)
    # Line 57
    swc1	$f0,16($s0)
    # Line 59
    lwc1	$f27,0($s8)
    # Line 60
    lwc1	$f23,4($s8)
    # Line 59
    mul.s	$f27,$f27,$f29
    swc1	$f27,0($s8)
    # Line 60
    lwc1	$f25,4($s0)
    ld	$s2,8($sp)
    # Line 61
    lwc1	$f19,8($s8)
    # Line 60
    mul.s	$f23,$f23,$f25
    swc1	$f23,4($s8)
    # Line 61
    lwc1	$f21,8($s0)
    ld	$s1,24($sp)
    ldc1	$f20,0($sp)
    # Line 62
    lwc1	$f17,12($s8)
    # Line 61
    mul.s	$f19,$f19,$f21
    swc1	$f19,8($s8)
    # Line 62
    lwc1	$f18,16($s0)
    # Line 63
    ld	$gp,40($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    # Line 62
    mul.s	$f17,$f17,$f18
    swc1	$f17,12($s8)
    # Line 63
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBModulateLA

# Function: __glTextureSBModulateRGB
# Declared: Line 66 (Source lines: 67-78)
# Address: 0x0da28040 - 0x0da28144 (Size: 260 bytes, Frame: 192)
.globl __glTextureSBModulateRGB
.ent __glTextureSBModulateRGB
__glTextureSBModulateRGB:
    # Line 73
    lwc1	$f14,3544($a0)
    # Line 67
    addiu	$sp,$sp,-64
    sd	$s1,24($sp)
    sd	$s0,48($sp)
    # Line 73
    lwc1	$f15,0($a2)
    # Line 67
    sdc1	$f30,0($sp)
    sd	$gp,40($sp)
    lui	$t8,0x3
    addiu	$t8,$t8,-29364
    sd	$s2,8($sp)
    # Line 68
    lw	$s2,28208($a0)
    # Line 67
    addu	$gp,$t9,$t8
    # Line 73
    mtc1	$zero,$f30
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 67
    move	$s0,$a2
    sd	$s8,32($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 73
    lwc1	$f12,188($s2)
    mov.s	$f13,$f30
    # Line 67
    sd	$ra,16($sp)
    # Line 68
    addiu	$s2,$s2,4
    # Line 73
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    # Line 75
    lwc1	$f25,0($s0)
    # Line 73
    swc1	$f0,8($s0)
    # Line 75
    lwc1	$f23,0($s8)
    ld	$s2,8($sp)
    # Line 76
    lwc1	$f19,4($s8)
    # Line 75
    mul.s	$f23,$f23,$f25
    swc1	$f23,0($s8)
    # Line 76
    lwc1	$f21,4($s0)
    ld	$s1,24($sp)
    ldc1	$f30,0($sp)
    # Line 77
    lwc1	$f17,8($s8)
    # Line 76
    mul.s	$f19,$f19,$f21
    swc1	$f19,4($s8)
    # Line 77
    lwc1	$f18,8($s0)
    # Line 78
    ld	$gp,40($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    # Line 77
    mul.s	$f17,$f17,$f18
    swc1	$f17,8($s8)
    # Line 78
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBModulateRGB

# Function: __glTextureSBModulateRGBA
# Declared: Line 81 (Source lines: 82-95)
# Address: 0x0da28150 - 0x0da28288 (Size: 312 bytes, Frame: 192)
.globl __glTextureSBModulateRGBA
.ent __glTextureSBModulateRGBA
__glTextureSBModulateRGBA:
    # Line 89
    lwc1	$f14,3544($a0)
    # Line 82
    addiu	$sp,$sp,-64
    sd	$s1,24($sp)
    sd	$s0,48($sp)
    # Line 89
    lwc1	$f15,0($a2)
    # Line 82
    sdc1	$f20,0($sp)
    sd	$gp,40($sp)
    lui	$t8,0x3
    addiu	$t8,$t8,-29636
    sd	$s2,8($sp)
    # Line 84
    lw	$s2,28208($a0)
    # Line 82
    addu	$gp,$t9,$t8
    # Line 89
    mtc1	$zero,$f20
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 82
    move	$s0,$a2
    sd	$s8,32($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 89
    lwc1	$f12,188($s2)
    mov.s	$f13,$f20
    # Line 82
    sd	$ra,16($sp)
    # Line 84
    addiu	$s2,$s2,4
    # Line 89
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,16($s0)
    swc1	$f0,8($s0)
    lwc1	$f15,180($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,196($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    # Line 91
    lwc1	$f29,0($s0)
    # Line 89
    swc1	$f0,16($s0)
    # Line 91
    lwc1	$f27,0($s8)
    # Line 92
    lwc1	$f23,4($s8)
    # Line 91
    mul.s	$f27,$f27,$f29
    swc1	$f27,0($s8)
    # Line 92
    lwc1	$f25,4($s0)
    ld	$s2,8($sp)
    # Line 93
    lwc1	$f19,8($s8)
    # Line 92
    mul.s	$f23,$f23,$f25
    swc1	$f23,4($s8)
    # Line 93
    lwc1	$f21,8($s0)
    ld	$s1,24($sp)
    ldc1	$f20,0($sp)
    # Line 94
    lwc1	$f17,12($s8)
    # Line 93
    mul.s	$f19,$f19,$f21
    swc1	$f19,8($s8)
    # Line 94
    lwc1	$f18,16($s0)
    # Line 95
    ld	$gp,40($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    # Line 94
    mul.s	$f17,$f17,$f18
    swc1	$f17,12($s8)
    # Line 95
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBModulateRGBA

# Function: __glTextureSBModulateA
# Declared: Line 98 (Source lines: 99-108)
# Address: 0x0da28290 - 0x0da28300 (Size: 112 bytes, Frame: 32)
.globl __glTextureSBModulateA
.ent __glTextureSBModulateA
__glTextureSBModulateA:
    # Line 105
    lwc1	$f14,3544($a0)
    # Line 99
    addiu	$sp,$sp,-32
    sd	$a2,24($sp)
    # Line 105
    lwc1	$f16,16($a2)
    # Line 100
    lw	$at,28208($a0)
    # Line 99
    lui	$v0,0x3
    sd	$gp,16($sp)
    addiu	$v0,$v0,-29956
    # Line 105
    lwc1	$f15,184($at)
    # Line 99
    addu	$gp,$t9,$v0
    # Line 105
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    # Line 99
    sd	$s8,8($sp)
    # Line 105
    mtc1	$zero,$f13
    lwc1	$f12,200($at)
    # Line 99
    move	$s8,$a1
    sd	$ra,0($sp)
    # Line 105
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$v1,24($sp)
    swc1	$f0,16($v1)
    # Line 107
    lwc1	$f17,12($s8)
    ld	$ra,0($sp)
    # Line 108
    ld	$gp,16($sp)
    # Line 107
    mul.s	$f17,$f17,$f0
    swc1	$f17,12($s8)
    # Line 108
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glTextureSBModulateA

# Function: __glTextureSBModulateI
# Declared: Line 111 (Source lines: 112-125)
# Address: 0x0da28300 - 0x0da28448 (Size: 328 bytes, Frame: 192)
.globl __glTextureSBModulateI
.ent __glTextureSBModulateI
__glTextureSBModulateI:
    # Line 112
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s1,24($sp)
    sd	$s0,48($sp)
    sdc1	$f20,0($sp)
    # Line 118
    lwc1	$f15,20($a2)
    sd	$gp,40($sp)
    # Line 112
    sd	$s2,8($sp)
    # Line 113
    lw	$s2,28208($a0)
    # Line 118
    swc1	$f15,16($a2)
    swc1	$f15,8($a2)
    # Line 112
    lui	$t8,0x3
    # Line 118
    swc1	$f15,4($a2)
    # Line 112
    addiu	$t8,$t8,-30068
    # Line 118
    swc1	$f15,0($a2)
    # Line 112
    addu	$gp,$t9,$t8
    # Line 119
    mtc1	$zero,$f20
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 112
    move	$s0,$a2
    sd	$s8,32($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 119
    lwc1	$f12,188($s2)
    mov.s	$f13,$f20
    lwc1	$f14,3544($a0)
    # Line 113
    addiu	$s2,$s2,4
    # Line 119
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,16($s0)
    swc1	$f0,8($s0)
    lwc1	$f15,180($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,196($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    # Line 121
    lwc1	$f29,0($s0)
    # Line 119
    swc1	$f0,16($s0)
    # Line 121
    lwc1	$f27,0($s8)
    # Line 122
    lwc1	$f23,4($s8)
    # Line 121
    mul.s	$f27,$f27,$f29
    swc1	$f27,0($s8)
    # Line 122
    lwc1	$f25,4($s0)
    ld	$s2,8($sp)
    # Line 123
    lwc1	$f19,8($s8)
    # Line 122
    mul.s	$f23,$f23,$f25
    swc1	$f23,4($s8)
    # Line 123
    lwc1	$f21,8($s0)
    ld	$s1,24($sp)
    ldc1	$f20,0($sp)
    # Line 124
    lwc1	$f17,12($s8)
    # Line 123
    mul.s	$f19,$f19,$f21
    swc1	$f19,8($s8)
    # Line 124
    lwc1	$f18,16($s0)
    # Line 125
    ld	$gp,40($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    # Line 124
    mul.s	$f17,$f17,$f18
    swc1	$f17,12($s8)
    # Line 125
    ld	$s8,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBModulateI

# Function: __glTextureSBDecalRGB
# Declared: Line 130 (Source lines: 131-138)
# Address: 0x0da28450 - 0x0da28554 (Size: 260 bytes, Frame: 192)
.globl __glTextureSBDecalRGB
.ent __glTextureSBDecalRGB
__glTextureSBDecalRGB:
    # Line 134
    lwc1	$f14,3544($a0)
    # Line 131
    addiu	$sp,$sp,-64
    sd	$s1,40($sp)
    sd	$s0,48($sp)
    # Line 134
    lwc1	$f15,0($a2)
    # Line 131
    sdc1	$f30,0($sp)
    sd	$gp,32($sp)
    lui	$t8,0x3
    addiu	$t8,$t8,-30404
    sd	$s2,8($sp)
    # Line 132
    lw	$s2,28208($a0)
    # Line 131
    addu	$gp,$t9,$t8
    # Line 134
    mtc1	$zero,$f30
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 131
    move	$s0,$a2
    sd	$s8,24($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 134
    lwc1	$f12,188($s2)
    mov.s	$f13,$f30
    # Line 131
    sd	$ra,16($sp)
    # Line 132
    addiu	$s2,$s2,4
    # Line 134
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    swc1	$f0,8($s0)
    # Line 135
    lwc1	$f25,30752($s1)
    lwc1	$f23,0($s0)
    mul.s	$f23,$f23,$f25
    swc1	$f23,0($s8)
    # Line 136
    lwc1	$f21,30756($s1)
    lwc1	$f19,4($s0)
    ld	$s2,8($sp)
    ldc1	$f30,0($sp)
    # Line 138
    ld	$gp,32($sp)
    # Line 136
    mul.s	$f19,$f19,$f21
    swc1	$f19,4($s8)
    # Line 137
    lwc1	$f18,30760($s1)
    lwc1	$f17,8($s0)
    ld	$ra,16($sp)
    # Line 138
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 137
    mul.s	$f17,$f17,$f18
    swc1	$f17,8($s8)
    # Line 138
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBDecalRGB

# Function: __glTextureSBDecalRGBA
# Declared: Line 141 (Source lines: 142-157)
# Address: 0x0da28560 - 0x0da286b4 (Size: 340 bytes, Frame: 192)
.globl __glTextureSBDecalRGBA
.ent __glTextureSBDecalRGBA
__glTextureSBDecalRGBA:
    # Line 147
    lwc1	$f14,3544($a0)
    # Line 142
    addiu	$sp,$sp,-64
    sd	$s1,40($sp)
    sd	$s0,48($sp)
    # Line 147
    lwc1	$f15,0($a2)
    # Line 142
    sdc1	$f20,0($sp)
    sd	$gp,32($sp)
    lui	$t8,0x3
    addiu	$t8,$t8,-30676
    sd	$s2,8($sp)
    # Line 145
    lw	$s2,28208($a0)
    # Line 142
    addu	$gp,$t9,$t8
    # Line 147
    mtc1	$zero,$f20
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 142
    move	$s0,$a2
    sd	$s8,24($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 147
    lwc1	$f12,188($s2)
    mov.s	$f13,$f20
    # Line 142
    sd	$ra,16($sp)
    # Line 145
    addiu	$s2,$s2,4
    # Line 147
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,16($s0)
    swc1	$f0,8($s0)
    lwc1	$f15,180($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,196($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    # Line 151
    lwc1	$f1,0($s0)
    # Line 147
    swc1	$f0,16($s0)
    # Line 149
    lwc1	$f19,3544($s1)
    # Line 151
    lwc1	$f29,30752($s1)
    lwc1	$f31,0($s8)
    mul.s	$f1,$f1,$f0
    # Line 149
    sub.s	$f19,$f19,$f0
    # Line 151
    mul.s	$f29,$f29,$f1
    madd.s	$f29,$f29,$f31,$f19
    swc1	$f29,0($s8)
    # Line 153
    lwc1	$f27,4($s0)
    lwc1	$f23,30756($s1)
    lwc1	$f25,4($s8)
    mul.s	$f27,$f27,$f0
    mul.s	$f23,$f23,$f27
    madd.s	$f23,$f23,$f25,$f19
    swc1	$f23,4($s8)
    # Line 155
    lwc1	$f21,8($s0)
    lwc1	$f17,30760($s1)
    lwc1	$f18,8($s8)
    mul.s	$f21,$f21,$f0
    ld	$s2,8($sp)
    mul.s	$f17,$f17,$f21
    ldc1	$f20,0($sp)
    madd.s	$f17,$f17,$f18,$f19
    # Line 157
    ld	$gp,32($sp)
    ld	$ra,16($sp)
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 155
    swc1	$f17,8($s8)
    # Line 157
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBDecalRGBA

# Function: __glTextureSBBlendL
# Declared: Line 162 (Source lines: 163-180)
# Address: 0x0da286c0 - 0x0da28804 (Size: 324 bytes, Frame: 192)
.globl __glTextureSBBlendL
.ent __glTextureSBBlendL
__glTextureSBBlendL:
    # Line 163
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s2,8($sp)
    sd	$s1,48($sp)
    sd	$s8,24($sp)
    sd	$s0,56($sp)
    # Line 166
    lw	$at,2484($a0)
    # Line 163
    sdc1	$f30,0($sp)
    # Line 167
    lw	$v0,28208($a0)
    # Line 169
    lwc1	$f15,12($a2)
    sd	$gp,32($sp)
    swc1	$f15,8($a2)
    swc1	$f15,4($a2)
    # Line 163
    lui	$v1,0x3
    # Line 169
    swc1	$f15,0($a2)
    # Line 163
    addiu	$v1,$v1,-31028
    # Line 170
    mtc1	$zero,$f30
    lwc1	$f16,172($v0)
    # Line 163
    addu	$gp,$t9,$v1
    # Line 170
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    # Line 163
    move	$s0,$a2
    move	$s8,$a1
    # Line 170
    lwc1	$f14,3544($a0)
    # Line 163
    move	$s1,$a0
    # Line 167
    addiu	$s2,$v0,4
    # Line 170
    lwc1	$f12,188($v0)
    mov.s	$f13,$f30
    # Line 166
    addiu	$at,$at,4
    sd	$at,40($sp)
    # Line 170
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    # Line 171
    lwc1	$f2,0($s0)
    # Line 177
    ld	$a0,40($sp)
    # Line 170
    swc1	$f0,8($s0)
    # Line 175
    lwc1	$f19,3544($s1)
    # Line 177
    lwc1	$f29,0($a0)
    lwc1	$f31,0($s8)
    sub.s	$f1,$f19,$f2
    mul.s	$f29,$f29,$f2
    madd.s	$f29,$f29,$f31,$f1
    # Line 172
    lwc1	$f27,4($s0)
    # Line 177
    swc1	$f29,0($s8)
    # Line 178
    lwc1	$f21,4($a0)
    lwc1	$f23,4($s8)
    # Line 175
    sub.s	$f25,$f19,$f27
    # Line 178
    mul.s	$f21,$f21,$f27
    madd.s	$f21,$f21,$f23,$f25
    swc1	$f21,4($s8)
    # Line 179
    lwc1	$f17,8($a0)
    lwc1	$f18,8($s8)
    # Line 176
    sub.s	$f19,$f19,$f0
    ld	$s2,8($sp)
    # Line 179
    mul.s	$f17,$f17,$f0
    ldc1	$f30,0($sp)
    madd.s	$f17,$f17,$f18,$f19
    # Line 180
    ld	$gp,32($sp)
    ld	$s0,56($sp)
    ld	$ra,16($sp)
    ld	$s1,48($sp)
    # Line 179
    swc1	$f17,8($s8)
    # Line 180
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBBlendL

# Function: __glTextureSBBlendLA
# Declared: Line 183 (Source lines: 184-203)
# Address: 0x0da28810 - 0x0da28988 (Size: 376 bytes, Frame: 192)
.globl __glTextureSBBlendLA
.ent __glTextureSBBlendLA
__glTextureSBBlendLA:
    # Line 184
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s2,8($sp)
    sd	$s1,48($sp)
    sd	$s8,24($sp)
    sd	$s0,56($sp)
    # Line 187
    lw	$at,2484($a0)
    # Line 184
    sdc1	$f20,0($sp)
    # Line 188
    lw	$v0,28208($a0)
    # Line 190
    lwc1	$f15,12($a2)
    sd	$gp,32($sp)
    swc1	$f15,8($a2)
    swc1	$f15,4($a2)
    # Line 184
    lui	$v1,0x3
    # Line 190
    swc1	$f15,0($a2)
    # Line 184
    addiu	$v1,$v1,-31364
    # Line 191
    mtc1	$zero,$f20
    lwc1	$f16,172($v0)
    # Line 184
    addu	$gp,$t9,$v1
    # Line 191
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    # Line 184
    move	$s0,$a2
    move	$s8,$a1
    # Line 191
    lwc1	$f14,3544($a0)
    # Line 184
    move	$s1,$a0
    # Line 188
    addiu	$s2,$v0,4
    # Line 191
    lwc1	$f12,188($v0)
    mov.s	$f13,$f20
    # Line 187
    addiu	$at,$at,4
    sd	$at,40($sp)
    # Line 191
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,16($s0)
    swc1	$f0,8($s0)
    lwc1	$f15,180($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,196($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    # Line 192
    lwc1	$f3,0($s0)
    # Line 199
    ld	$a0,40($sp)
    # Line 191
    swc1	$f0,16($s0)
    # Line 197
    lwc1	$f21,3544($s1)
    # Line 199
    lwc1	$f31,0($a0)
    lwc1	$f1,0($s8)
    sub.s	$f2,$f21,$f3
    mul.s	$f31,$f31,$f3
    madd.s	$f31,$f31,$f1,$f2
    # Line 194
    lwc1	$f18,8($s0)
    # Line 193
    lwc1	$f29,4($s0)
    # Line 199
    swc1	$f31,0($s8)
    # Line 200
    lwc1	$f23,4($a0)
    lwc1	$f25,4($s8)
    # Line 197
    sub.s	$f27,$f21,$f29
    # Line 200
    mul.s	$f23,$f23,$f29
    madd.s	$f23,$f23,$f25,$f27
    ld	$s2,8($sp)
    swc1	$f23,4($s8)
    # Line 201
    lwc1	$f17,8($a0)
    lwc1	$f19,8($s8)
    ldc1	$f20,0($sp)
    # Line 198
    sub.s	$f21,$f21,$f18
    # Line 203
    ld	$gp,32($sp)
    # Line 201
    mul.s	$f17,$f17,$f18
    # Line 202
    lwc1	$f18,12($s8)
    # Line 201
    madd.s	$f17,$f17,$f19,$f21
    # Line 203
    ld	$s0,56($sp)
    ld	$s1,48($sp)
    ld	$ra,16($sp)
    # Line 202
    mul.s	$f18,$f18,$f0
    swc1	$f18,12($s8)
    # Line 201
    swc1	$f17,8($s8)
    # Line 203
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBBlendLA

# Function: __glTextureSBBlendRGB
# Declared: Line 206 (Source lines: 207-223)
# Address: 0x0da28990 - 0x0da28ac8 (Size: 312 bytes, Frame: 192)
.globl __glTextureSBBlendRGB
.ent __glTextureSBBlendRGB
__glTextureSBBlendRGB:
    # Line 213
    lwc1	$f14,3544($a0)
    # Line 207
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s2,8($sp)
    sd	$s1,48($sp)
    sd	$s8,24($sp)
    sd	$s0,56($sp)
    # Line 213
    lwc1	$f15,0($a2)
    # Line 207
    sdc1	$f30,0($sp)
    # Line 211
    lw	$v0,28208($a0)
    # Line 207
    lui	$v1,0x3
    sd	$gp,32($sp)
    addiu	$v1,$v1,-31748
    # Line 213
    mtc1	$zero,$f30
    lwc1	$f16,172($v0)
    # Line 207
    addu	$gp,$t9,$v1
    # Line 213
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    # Line 207
    move	$s0,$a2
    move	$s8,$a1
    # Line 210
    lw	$at,2484($a0)
    # Line 207
    move	$s1,$a0
    # Line 211
    addiu	$s2,$v0,4
    # Line 213
    lwc1	$f12,188($v0)
    mov.s	$f13,$f30
    # Line 210
    addiu	$at,$at,4
    sd	$at,40($sp)
    # Line 213
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    # Line 214
    lwc1	$f2,0($s0)
    # Line 220
    ld	$a0,40($sp)
    # Line 213
    swc1	$f0,8($s0)
    # Line 218
    lwc1	$f19,3544($s1)
    # Line 220
    lwc1	$f29,0($a0)
    lwc1	$f31,0($s8)
    sub.s	$f1,$f19,$f2
    mul.s	$f29,$f29,$f2
    madd.s	$f29,$f29,$f31,$f1
    # Line 215
    lwc1	$f27,4($s0)
    # Line 220
    swc1	$f29,0($s8)
    # Line 221
    lwc1	$f21,4($a0)
    lwc1	$f23,4($s8)
    # Line 218
    sub.s	$f25,$f19,$f27
    # Line 221
    mul.s	$f21,$f21,$f27
    madd.s	$f21,$f21,$f23,$f25
    swc1	$f21,4($s8)
    # Line 222
    lwc1	$f17,8($a0)
    lwc1	$f18,8($s8)
    # Line 219
    sub.s	$f19,$f19,$f0
    ld	$s2,8($sp)
    # Line 222
    mul.s	$f17,$f17,$f0
    ldc1	$f30,0($sp)
    madd.s	$f17,$f17,$f18,$f19
    # Line 223
    ld	$gp,32($sp)
    ld	$s0,56($sp)
    ld	$ra,16($sp)
    ld	$s1,48($sp)
    # Line 222
    swc1	$f17,8($s8)
    # Line 223
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBBlendRGB

# Function: __glTextureSBBlendRGBA
# Declared: Line 226 (Source lines: 227-244)
# Address: 0x0da28ad0 - 0x0da28c40 (Size: 368 bytes, Frame: 192)
.globl __glTextureSBBlendRGBA
.ent __glTextureSBBlendRGBA
__glTextureSBBlendRGBA:
    # Line 233
    lwc1	$f14,3544($a0)
    # Line 227
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s2,8($sp)
    sd	$s1,48($sp)
    sd	$s8,24($sp)
    sd	$s0,56($sp)
    # Line 233
    lwc1	$f15,0($a2)
    # Line 227
    sdc1	$f20,0($sp)
    # Line 231
    lw	$v0,28208($a0)
    # Line 227
    lui	$v1,0x3
    sd	$gp,32($sp)
    addiu	$v1,$v1,-32068
    # Line 233
    mtc1	$zero,$f20
    lwc1	$f16,172($v0)
    # Line 227
    addu	$gp,$t9,$v1
    # Line 233
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    # Line 227
    move	$s0,$a2
    move	$s8,$a1
    # Line 230
    lw	$at,2484($a0)
    # Line 227
    move	$s1,$a0
    # Line 231
    addiu	$s2,$v0,4
    # Line 233
    lwc1	$f12,188($v0)
    mov.s	$f13,$f20
    # Line 230
    addiu	$at,$at,4
    sd	$at,40($sp)
    # Line 233
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,16($s0)
    swc1	$f0,8($s0)
    lwc1	$f15,180($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,196($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    # Line 234
    lwc1	$f4,0($s0)
    # Line 240
    ld	$a0,40($sp)
    # Line 233
    swc1	$f0,16($s0)
    # Line 238
    lwc1	$f23,3544($s1)
    # Line 240
    lwc1	$f1,0($a0)
    lwc1	$f2,0($s8)
    sub.s	$f3,$f23,$f4
    mul.s	$f1,$f1,$f4
    madd.s	$f1,$f1,$f2,$f3
    # Line 236
    lwc1	$f25,8($s0)
    # Line 235
    lwc1	$f0,4($s0)
    # Line 240
    swc1	$f1,0($s8)
    # Line 241
    lwc1	$f27,4($a0)
    lwc1	$f29,4($s8)
    # Line 238
    sub.s	$f31,$f23,$f0
    # Line 241
    mul.s	$f27,$f27,$f0
    madd.s	$f27,$f27,$f29,$f31
    swc1	$f27,4($s8)
    # Line 242
    lwc1	$f19,8($a0)
    lwc1	$f21,8($s8)
    # Line 239
    sub.s	$f23,$f23,$f25
    # Line 242
    mul.s	$f19,$f19,$f25
    madd.s	$f19,$f19,$f21,$f23
    ld	$s2,8($sp)
    ldc1	$f20,0($sp)
    # Line 244
    ld	$gp,32($sp)
    # Line 243
    lwc1	$f17,12($s8)
    # Line 242
    swc1	$f19,8($s8)
    # Line 243
    lwc1	$f18,16($s0)
    # Line 244
    ld	$s1,48($sp)
    ld	$ra,16($sp)
    ld	$s0,56($sp)
    # Line 243
    mul.s	$f17,$f17,$f18
    swc1	$f17,12($s8)
    # Line 244
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBBlendRGBA

# Function: __glTextureSBBlendA
# Declared: Line 247 (Source lines: 248-256)
# Address: 0x0da28c40 - 0x0da28cb0 (Size: 112 bytes, Frame: 32)
.globl __glTextureSBBlendA
.ent __glTextureSBBlendA
__glTextureSBBlendA:
    # Line 254
    lwc1	$f14,3544($a0)
    # Line 248
    addiu	$sp,$sp,-32
    sd	$a2,24($sp)
    # Line 254
    lwc1	$f16,16($a2)
    # Line 249
    lw	$at,28208($a0)
    # Line 248
    lui	$v0,0x3
    sd	$gp,16($sp)
    addiu	$v0,$v0,-32436
    # Line 254
    lwc1	$f15,184($at)
    # Line 248
    addu	$gp,$t9,$v0
    # Line 254
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    # Line 248
    sd	$s8,8($sp)
    # Line 254
    mtc1	$zero,$f13
    lwc1	$f12,200($at)
    # Line 248
    move	$s8,$a1
    sd	$ra,0($sp)
    # Line 254
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$v1,24($sp)
    swc1	$f0,16($v1)
    # Line 255
    lwc1	$f17,12($s8)
    ld	$ra,0($sp)
    # Line 256
    ld	$gp,16($sp)
    # Line 255
    mul.s	$f17,$f17,$f0
    swc1	$f17,12($s8)
    # Line 256
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glTextureSBBlendA

# Function: __glTextureSBBlendI
# Declared: Line 259 (Source lines: 260-280)
# Address: 0x0da28cb0 - 0x0da28e38 (Size: 392 bytes, Frame: 192)
.globl __glTextureSBBlendI
.ent __glTextureSBBlendI
__glTextureSBBlendI:
    # Line 260
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s2,8($sp)
    sd	$s1,48($sp)
    sd	$s8,24($sp)
    sd	$s0,56($sp)
    # Line 263
    lw	$at,2484($a0)
    # Line 260
    sdc1	$f20,0($sp)
    # Line 264
    lw	$v0,28208($a0)
    # Line 266
    lwc1	$f15,20($a2)
    sd	$gp,32($sp)
    swc1	$f15,16($a2)
    swc1	$f15,8($a2)
    swc1	$f15,4($a2)
    # Line 260
    lui	$v1,0x3
    # Line 266
    swc1	$f15,0($a2)
    # Line 260
    addiu	$v1,$v1,-32548
    # Line 267
    mtc1	$zero,$f20
    lwc1	$f16,172($v0)
    # Line 260
    addu	$gp,$t9,$v1
    # Line 267
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    # Line 260
    move	$s0,$a2
    move	$s8,$a1
    # Line 267
    lwc1	$f14,3544($a0)
    # Line 260
    move	$s1,$a0
    # Line 264
    addiu	$s2,$v0,4
    # Line 267
    lwc1	$f12,188($v0)
    mov.s	$f13,$f20
    # Line 263
    addiu	$at,$at,4
    sd	$at,40($sp)
    # Line 267
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,16($s0)
    swc1	$f0,8($s0)
    lwc1	$f15,180($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,196($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    # Line 268
    lwc1	$f6,0($s0)
    # Line 276
    ld	$a0,40($sp)
    # Line 267
    swc1	$f0,16($s0)
    # Line 273
    lwc1	$f19,3544($s1)
    # Line 276
    lwc1	$f3,0($a0)
    lwc1	$f4,0($s8)
    sub.s	$f5,$f19,$f6
    mul.s	$f3,$f3,$f6
    madd.s	$f3,$f3,$f4,$f5
    # Line 270
    lwc1	$f27,8($s0)
    # Line 269
    lwc1	$f2,4($s0)
    # Line 276
    swc1	$f3,0($s8)
    # Line 277
    lwc1	$f29,4($a0)
    lwc1	$f31,4($s8)
    # Line 273
    sub.s	$f1,$f19,$f2
    # Line 277
    mul.s	$f29,$f29,$f2
    madd.s	$f29,$f29,$f31,$f1
    swc1	$f29,4($s8)
    # Line 278
    lwc1	$f21,8($a0)
    lwc1	$f23,8($s8)
    # Line 274
    sub.s	$f25,$f19,$f27
    # Line 278
    mul.s	$f21,$f21,$f27
    madd.s	$f21,$f21,$f23,$f25
    swc1	$f21,8($s8)
    # Line 279
    lwc1	$f17,12($a0)
    lwc1	$f18,12($s8)
    # Line 275
    sub.s	$f19,$f19,$f0
    ld	$s2,8($sp)
    # Line 279
    mul.s	$f17,$f17,$f0
    ldc1	$f20,0($sp)
    madd.s	$f17,$f17,$f18,$f19
    # Line 280
    ld	$gp,32($sp)
    ld	$s0,56($sp)
    ld	$ra,16($sp)
    ld	$s1,48($sp)
    # Line 279
    swc1	$f17,12($s8)
    # Line 280
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBBlendI

# Function: __glTextureSBReplaceL
# Declared: Line 285 (Source lines: 286-294)
# Address: 0x0da28e40 - 0x0da28f50 (Size: 272 bytes, Frame: 192)
.globl __glTextureSBReplaceL
.ent __glTextureSBReplaceL
__glTextureSBReplaceL:
    # Line 286
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s1,40($sp)
    sd	$s0,48($sp)
    sdc1	$f30,0($sp)
    # Line 289
    lwc1	$f15,12($a2)
    sd	$gp,32($sp)
    # Line 286
    sd	$s2,8($sp)
    # Line 287
    lw	$s2,28208($a0)
    # Line 289
    swc1	$f15,8($a2)
    # Line 286
    lui	$t8,0x2
    # Line 289
    swc1	$f15,4($a2)
    # Line 286
    addiu	$t8,$t8,32588
    # Line 289
    swc1	$f15,0($a2)
    # Line 286
    addu	$gp,$t9,$t8
    # Line 290
    mtc1	$zero,$f30
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 286
    move	$s0,$a2
    sd	$s8,24($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 290
    lwc1	$f12,188($s2)
    mov.s	$f13,$f30
    lwc1	$f14,3544($a0)
    # Line 287
    addiu	$s2,$s2,4
    # Line 290
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    swc1	$f0,8($s0)
    # Line 291
    lwc1	$f25,30752($s1)
    lwc1	$f23,0($s0)
    mul.s	$f23,$f23,$f25
    swc1	$f23,0($s8)
    # Line 292
    lwc1	$f21,30756($s1)
    lwc1	$f19,4($s0)
    ld	$s2,8($sp)
    ldc1	$f30,0($sp)
    # Line 294
    ld	$gp,32($sp)
    # Line 292
    mul.s	$f19,$f19,$f21
    swc1	$f19,4($s8)
    # Line 293
    lwc1	$f18,30760($s1)
    lwc1	$f17,8($s0)
    ld	$ra,16($sp)
    # Line 294
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 293
    mul.s	$f17,$f17,$f18
    swc1	$f17,8($s8)
    # Line 294
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBReplaceL

# Function: __glTextureSBReplaceLA
# Declared: Line 297 (Source lines: 298-307)
# Address: 0x0da28f50 - 0x0da29094 (Size: 324 bytes, Frame: 192)
.globl __glTextureSBReplaceLA
.ent __glTextureSBReplaceLA
__glTextureSBReplaceLA:
    # Line 298
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s1,40($sp)
    sd	$s0,48($sp)
    sdc1	$f20,0($sp)
    # Line 301
    lwc1	$f15,12($a2)
    sd	$gp,32($sp)
    # Line 298
    sd	$s2,8($sp)
    # Line 299
    lw	$s2,28208($a0)
    # Line 301
    swc1	$f15,8($a2)
    # Line 298
    lui	$t8,0x2
    # Line 301
    swc1	$f15,4($a2)
    # Line 298
    addiu	$t8,$t8,32316
    # Line 301
    swc1	$f15,0($a2)
    # Line 298
    addu	$gp,$t9,$t8
    # Line 302
    mtc1	$zero,$f20
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 298
    move	$s0,$a2
    sd	$s8,24($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 302
    lwc1	$f12,188($s2)
    mov.s	$f13,$f20
    lwc1	$f14,3544($a0)
    # Line 299
    addiu	$s2,$s2,4
    # Line 302
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,16($s0)
    swc1	$f0,8($s0)
    lwc1	$f15,180($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,196($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    swc1	$f0,16($s0)
    # Line 303
    lwc1	$f29,30752($s1)
    lwc1	$f27,0($s0)
    mul.s	$f27,$f27,$f29
    swc1	$f27,0($s8)
    # Line 304
    lwc1	$f25,30756($s1)
    lwc1	$f23,4($s0)
    mul.s	$f23,$f23,$f25
    swc1	$f23,4($s8)
    # Line 305
    lwc1	$f21,30760($s1)
    lwc1	$f19,8($s0)
    ld	$s2,8($sp)
    ldc1	$f20,0($sp)
    # Line 307
    ld	$gp,32($sp)
    # Line 305
    mul.s	$f19,$f19,$f21
    swc1	$f19,8($s8)
    # Line 306
    lwc1	$f18,30792($s1)
    lwc1	$f17,16($s0)
    ld	$ra,16($sp)
    # Line 307
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 306
    mul.s	$f17,$f17,$f18
    swc1	$f17,12($s8)
    # Line 307
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBReplaceLA

# Function: __glTextureSBReplaceRGB
# Declared: Line 310 (Source lines: 311-318)
# Address: 0x0da290a0 - 0x0da291a4 (Size: 260 bytes, Frame: 192)
.globl __glTextureSBReplaceRGB
.ent __glTextureSBReplaceRGB
__glTextureSBReplaceRGB:
    # Line 314
    lwc1	$f14,3544($a0)
    # Line 311
    addiu	$sp,$sp,-64
    sd	$s1,40($sp)
    sd	$s0,48($sp)
    # Line 314
    lwc1	$f15,0($a2)
    # Line 311
    sdc1	$f30,0($sp)
    sd	$gp,32($sp)
    lui	$t8,0x2
    addiu	$t8,$t8,31980
    sd	$s2,8($sp)
    # Line 312
    lw	$s2,28208($a0)
    # Line 311
    addu	$gp,$t9,$t8
    # Line 314
    mtc1	$zero,$f30
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 311
    move	$s0,$a2
    sd	$s8,24($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 314
    lwc1	$f12,188($s2)
    mov.s	$f13,$f30
    # Line 311
    sd	$ra,16($sp)
    # Line 312
    addiu	$s2,$s2,4
    # Line 314
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f30
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    swc1	$f0,8($s0)
    # Line 315
    lwc1	$f25,30752($s1)
    lwc1	$f23,0($s0)
    mul.s	$f23,$f23,$f25
    swc1	$f23,0($s8)
    # Line 316
    lwc1	$f21,30756($s1)
    lwc1	$f19,4($s0)
    ld	$s2,8($sp)
    ldc1	$f30,0($sp)
    # Line 318
    ld	$gp,32($sp)
    # Line 316
    mul.s	$f19,$f19,$f21
    swc1	$f19,4($s8)
    # Line 317
    lwc1	$f18,30760($s1)
    lwc1	$f17,8($s0)
    ld	$ra,16($sp)
    # Line 318
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 317
    mul.s	$f17,$f17,$f18
    swc1	$f17,8($s8)
    # Line 318
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBReplaceRGB

# Function: __glTextureSBReplaceRGBA
# Declared: Line 321 (Source lines: 322-330)
# Address: 0x0da291b0 - 0x0da292e8 (Size: 312 bytes, Frame: 192)
.globl __glTextureSBReplaceRGBA
.ent __glTextureSBReplaceRGBA
__glTextureSBReplaceRGBA:
    # Line 325
    lwc1	$f14,3544($a0)
    # Line 322
    addiu	$sp,$sp,-64
    sd	$s1,40($sp)
    sd	$s0,48($sp)
    # Line 325
    lwc1	$f15,0($a2)
    # Line 322
    sdc1	$f20,0($sp)
    sd	$gp,32($sp)
    lui	$t8,0x2
    addiu	$t8,$t8,31708
    sd	$s2,8($sp)
    # Line 323
    lw	$s2,28208($a0)
    # Line 322
    addu	$gp,$t9,$t8
    # Line 325
    mtc1	$zero,$f20
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 322
    move	$s0,$a2
    sd	$s8,24($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 325
    lwc1	$f12,188($s2)
    mov.s	$f13,$f20
    # Line 322
    sd	$ra,16($sp)
    # Line 323
    addiu	$s2,$s2,4
    # Line 325
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,16($s0)
    swc1	$f0,8($s0)
    lwc1	$f15,180($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,196($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    swc1	$f0,16($s0)
    # Line 326
    lwc1	$f29,30752($s1)
    lwc1	$f27,0($s0)
    mul.s	$f27,$f27,$f29
    swc1	$f27,0($s8)
    # Line 327
    lwc1	$f25,30756($s1)
    lwc1	$f23,4($s0)
    mul.s	$f23,$f23,$f25
    swc1	$f23,4($s8)
    # Line 328
    lwc1	$f21,30760($s1)
    lwc1	$f19,8($s0)
    ld	$s2,8($sp)
    ldc1	$f20,0($sp)
    # Line 330
    ld	$gp,32($sp)
    # Line 328
    mul.s	$f19,$f19,$f21
    swc1	$f19,8($s8)
    # Line 329
    lwc1	$f18,30792($s1)
    lwc1	$f17,16($s0)
    ld	$ra,16($sp)
    # Line 330
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 329
    mul.s	$f17,$f17,$f18
    swc1	$f17,12($s8)
    # Line 330
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBReplaceRGBA

# Function: __glTextureSBReplaceA
# Declared: Line 333 (Source lines: 334-339)
# Address: 0x0da292f0 - 0x0da29368 (Size: 120 bytes, Frame: 48)
.globl __glTextureSBReplaceA
.ent __glTextureSBReplaceA
__glTextureSBReplaceA:
    # Line 337
    lwc1	$f14,3544($a0)
    # Line 334
    addiu	$sp,$sp,-48
    sd	$a2,24($sp)
    sd	$a1,32($sp)
    # Line 337
    lwc1	$f16,16($a2)
    # Line 335
    lw	$at,28208($a0)
    # Line 334
    lui	$v0,0x2
    sd	$gp,16($sp)
    addiu	$v0,$v0,31388
    # Line 337
    lwc1	$f15,184($at)
    # Line 334
    addu	$gp,$t9,$v0
    # Line 337
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    # Line 334
    sd	$s8,8($sp)
    # Line 337
    mtc1	$zero,$f13
    lwc1	$f12,200($at)
    # Line 334
    move	$s8,$a0
    sd	$ra,0($sp)
    # Line 337
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$a0,24($sp)
    # Line 339
    ld	$gp,16($sp)
    # Line 337
    swc1	$f0,16($a0)
    # Line 338
    lwc1	$f17,30792($s8)
    ld	$ra,0($sp)
    ld	$v1,32($sp)
    # Line 339
    ld	$s8,8($sp)
    # Line 338
    mul.s	$f17,$f17,$f0
    # Line 339
    addiu	$sp,$sp,48
    jr	$ra
    # Line 338
    swc1	$f17,12($v1)
.end __glTextureSBReplaceA

# Function: __glTextureSBReplaceI
# Declared: Line 342 (Source lines: 343-352)
# Address: 0x0da29370 - 0x0da294b8 (Size: 328 bytes, Frame: 192)
.globl __glTextureSBReplaceI
.ent __glTextureSBReplaceI
__glTextureSBReplaceI:
    # Line 343
    addiu	$sp,$sp,-64
    sd	$ra,16($sp)
    sd	$s1,40($sp)
    sd	$s0,48($sp)
    sdc1	$f20,0($sp)
    # Line 346
    lwc1	$f15,20($a2)
    sd	$gp,32($sp)
    # Line 343
    sd	$s2,8($sp)
    # Line 344
    lw	$s2,28208($a0)
    # Line 346
    swc1	$f15,16($a2)
    swc1	$f15,8($a2)
    # Line 343
    lui	$t8,0x2
    # Line 346
    swc1	$f15,4($a2)
    # Line 343
    addiu	$t8,$t8,31260
    # Line 346
    swc1	$f15,0($a2)
    # Line 343
    addu	$gp,$t9,$t8
    # Line 347
    mtc1	$zero,$f20
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,172($s2)
    # Line 343
    move	$s0,$a2
    sd	$s8,24($sp)
    move	$s8,$a1
    move	$s1,$a0
    # Line 347
    lwc1	$f12,188($s2)
    mov.s	$f13,$f20
    lwc1	$f14,3544($a0)
    # Line 344
    addiu	$s2,$s2,4
    # Line 347
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,4($s0)
    swc1	$f0,0($s0)
    lwc1	$f15,172($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,188($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,8($s0)
    swc1	$f0,4($s0)
    lwc1	$f15,176($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,192($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lwc1	$f16,16($s0)
    swc1	$f0,8($s0)
    lwc1	$f15,180($s2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mov.s	$f13,$f20
    lwc1	$f12,196($s2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    swc1	$f0,16($s0)
    # Line 348
    lwc1	$f29,30752($s1)
    lwc1	$f27,0($s0)
    mul.s	$f27,$f27,$f29
    swc1	$f27,0($s8)
    # Line 349
    lwc1	$f25,30756($s1)
    lwc1	$f23,4($s0)
    mul.s	$f23,$f23,$f25
    swc1	$f23,4($s8)
    # Line 350
    lwc1	$f21,30760($s1)
    lwc1	$f19,8($s0)
    ld	$s2,8($sp)
    ldc1	$f20,0($sp)
    # Line 352
    ld	$gp,32($sp)
    # Line 350
    mul.s	$f19,$f19,$f21
    swc1	$f19,8($s8)
    # Line 351
    lwc1	$f18,30792($s1)
    lwc1	$f17,16($s0)
    ld	$ra,16($sp)
    # Line 352
    ld	$s0,48($sp)
    ld	$s1,40($sp)
    # Line 351
    mul.s	$f17,$f17,$f18
    swc1	$f17,12($s8)
    # Line 352
    ld	$s8,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glTextureSBReplaceI

# Function: __glTextureCTModulateL
# Declared: Line 33 (Source lines: 34-46)
# Address: 0x0da294c0 - 0x0da29844 (Size: 900 bytes, Frame: 48)
.globl __glTextureCTModulateL
.ent __glTextureCTModulateL
__glTextureCTModulateL:
    # Line 34
    addiu	$sp,$sp,-48
    sd	$a1,16($sp)
    sd	$a0,8($sp)
    sd	$s0,32($sp)
    # Line 40
    lwc1	$f5,12($a2)
    # Line 35
    lw	$v1,28208($a0)
    # Line 40
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    swc1	$f5,0($a2)
    # Line 34
    move	$s0,$a2
    # Line 41
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6409
    # Line 34
    lui	$v0,0x2
    sd	$gp,24($sp)
    addiu	$v0,$v0,30924
    # Line 35
    addiu	$v1,$v1,4
    sd	$v1,0($sp)
    # Line 41
    beq	$a4,$at,.L0da29704
    # Line 34
    addu	$gp,$t9,$v0
    # Line 41
    li	$a2,6410
    beq	$a4,$a2,.L0da29708
    ld	$t8,0($sp)
    li	$a3,0x8049
    beq	$a4,$a3,.L0da29708
    ld	$t8,0($sp)
    li	$a5,6407
    beq	$a4,$a5,.L0da29588
    ld	$t1,0($sp)
    li	$a6,6408
    beq	$a4,$a6,.L0da29588
    ld	$t1,0($sp)
.L0da29540:
    # Line 43
    ld	$a7,16($sp)
    lwc1	$f4,0($a7)
    # Line 44
    lwc1	$f2,4($a7)
    # Line 43
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a7)
    # Line 44
    lwc1	$f3,4($s0)
    # Line 45
    lwc1	$f0,8($a7)
    # Line 44
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a7)
    # Line 45
    lwc1	$f1,8($s0)
    ld	$ra,40($sp)
    # Line 46
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    # Line 45
    mul.s	$f0,$f0,$f1
    # Line 46
    addiu	$sp,$sp,48
    jr	$ra
    # Line 45
    swc1	$f0,8($a7)
    # Line 41
    ld	$t1,0($sp)
.L0da29588:
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t1)
    ld	$t0,8($sp)
    mtc1	$zero,$f13
    lwc1	$f12,184($t1)
    lwc1	$f14,3544($t0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    ld	$t2,8($sp)
    lw	$v0,5864($t2)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$ra,5928($t2)
    mfc1	$at,$f18
    mult	$ra,$at
    lw	$t8,5856($t2)
    mflo	$t9
    lwc1	$f16,4($s0)
    sll	$t9,$t9,0x2
    ld	$t3,0($sp)
    addu	$t8,$t8,$t9
    lwc1	$f17,0($t8)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t3)
    mtc1	$zero,$f13
    lwc1	$f12,188($t3)
    lwc1	$f14,3544($t2)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$v1,8($sp)
    lw	$a5,5864($v1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($v1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($v1)
    mflo	$a2
    lwc1	$f16,8($s0)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,4($a1)
    ld	$a0,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($a0)
    mtc1	$zero,$f13
    lwc1	$f12,192($a0)
    lwc1	$f14,3544($v1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$a7,8($sp)
    lw	$t2,5864($a7)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f1,_lit_3f000000
    madd.s	$f1,$f1,$f2,$f0
    trunc.w.s	$f1,$f1
    lw	$t0,5928($a7)
    mfc1	$t1,$f1
    mult	$t0,$t1
    lw	$a7,5856($a7)
    mflo	$t0
    sll	$t0,$t0,0x2
    lwc1	$f31,0($s0)
    addu	$a7,$a7,$t0
    lwc1	$f0,8($a7)
    # Line 43
    ld	$a6,16($sp)
    # Line 41
    swc1	$f0,8($s0)
    # Line 43
    lwc1	$f29,0($a6)
    # Line 44
    lwc1	$f25,4($a6)
    # Line 43
    mul.s	$f29,$f29,$f31
    swc1	$f29,0($a6)
    # Line 44
    lwc1	$f27,4($s0)
    # Line 45
    lwc1	$f21,8($a6)
    # Line 44
    mul.s	$f25,$f25,$f27
    swc1	$f25,4($a6)
    # Line 45
    lwc1	$f23,8($s0)
    ld	$ra,40($sp)
    # Line 46
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    # Line 45
    mul.s	$f21,$f21,$f23
    # Line 46
    addiu	$sp,$sp,48
    jr	$ra
    # Line 45
    swc1	$f21,8($a6)
.L0da29704:
    # Line 41
    ld	$t8,0($sp)
.L0da29708:
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t8)
    ld	$t3,8($sp)
    mtc1	$zero,$f13
    lwc1	$f12,184($t8)
    lwc1	$f14,3544($t3)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    ld	$ra,8($sp)
    lw	$a2,5864($ra)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($ra)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($ra)
    mflo	$v1
    lwc1	$f16,4($s0)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,172($at)
    mtc1	$zero,$f13
    lwc1	$f12,188($at)
    lwc1	$f14,3544($ra)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$a3,8($sp)
    lw	$t1,5864($a3)
    addiu	$t1,$t1,-1
    mtc1	$t1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a7,5928($a3)
    mfc1	$t0,$f18
    mult	$a7,$t0
    lw	$a5,5856($a3)
    mflo	$a6
    lwc1	$f16,8($s0)
    sll	$a6,$a6,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a5,$a5,$a6
    lwc1	$f17,0($a5)
    ld	$a4,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($a4)
    mtc1	$zero,$f13
    lwc1	$f12,192($a4)
    lwc1	$f14,3544($a3)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$t2,8($sp)
    lw	$t9,5864($t2)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$t3,5928($t2)
    mfc1	$t8,$f23
    mult	$t3,$t8
    lw	$t2,5856($t2)
    mflo	$t3
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    lwc1	$f21,0($t2)
    lwc1	$f5,0($s0)
    b	.L0da29540
    swc1	$f21,8($s0)
.end __glTextureCTModulateL

# Function: __glTextureCTModulateLA
# Declared: Line 49 (Source lines: 50-63)
# Address: 0x0da29850 - 0x0da29eac (Size: 1628 bytes, Frame: 48)
.globl __glTextureCTModulateLA
.ent __glTextureCTModulateLA
__glTextureCTModulateLA:
    # Line 50
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$s1,8($sp)
    sd	$s0,32($sp)
    # Line 56
    lwc1	$f5,12($a2)
    # Line 51
    lw	$a5,28208($a0)
    # Line 56
    swc1	$f5,8($a2)
    # Line 57
    li	$a6,6406
    # Line 56
    swc1	$f5,4($a2)
    # Line 57
    li	$a3,6407
    # Line 50
    move	$s0,$a2
    # Line 56
    swc1	$f5,0($a2)
    # Line 50
    move	$s1,$a0
    # Line 57
    li	$a1,0x8049
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6410
    # Line 50
    lui	$v0,0x2
    sd	$gp,16($sp)
    addiu	$v0,$v0,30012
    # Line 51
    addiu	$v1,$a5,4
    sd	$v1,0($sp)
    # Line 57
    beq	$a4,$at,.L0da29be4
    # Line 50
    addu	$gp,$t9,$v0
    # Line 57
    li	$a0,6409
    beq	$a4,$a0,.L0da29930
    li	$a2,6408
    beq	$a4,$a1,.L0da29d1c
    nop
    beq	$a4,$a2,.L0da29c4c
    nop
    beq	$a4,$a3,.L0da29ab4
    nop
    beq	$a4,$a6,.L0da29cb4
.L0da298d8:
    # Line 59
    ld	$a7,24($sp)
    lwc1	$f6,0($a7)
    # Line 60
    lwc1	$f4,4($a7)
    # Line 59
    mul.s	$f6,$f6,$f5
    swc1	$f6,0($a7)
    # Line 60
    lwc1	$f5,4($s0)
    # Line 61
    lwc1	$f2,8($a7)
    # Line 60
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a7)
    # Line 61
    lwc1	$f3,8($s0)
    ld	$s1,8($sp)
    # Line 62
    lwc1	$f0,12($a7)
    # Line 61
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a7)
    # Line 62
    lwc1	$f1,16($s0)
    ld	$ra,40($sp)
    # Line 63
    ld	$gp,16($sp)
    ld	$s0,32($sp)
    # Line 62
    mul.s	$f0,$f0,$f1
    # Line 63
    addiu	$sp,$sp,48
    jr	$ra
    # Line 62
    swc1	$f0,12($a7)
.L0da29930:
    # Line 57
    ld	$t0,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t0)
    mtc1	$zero,$f13
    lwc1	$f12,184($t0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$ra,5864($s1)
    addiu	$ra,$ra,-1
    mtc1	$ra,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t8,5928($s1)
    mfc1	$t9,$f18
    mult	$t8,$t9
    lw	$t2,5856($s1)
    mflo	$t3
    lwc1	$f16,4($s0)
    sll	$t3,$t3,0x2
    ld	$t1,0($sp)
    addu	$t2,$t2,$t3
    lwc1	$f17,0($t2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t1)
    mtc1	$zero,$f13
    lwc1	$f12,188($t1)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a2,5864($s1)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($s1)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($s1)
    mflo	$v1
    lwc1	$f16,8($s0)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($at)
    mtc1	$zero,$f13
    lwc1	$f12,192($at)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f3,_lit_3f000000
    madd.s	$f3,$f3,$f4,$f0
    trunc.w.s	$f3,$f3
    lw	$a6,5928($s1)
    mfc1	$a7,$f3
    mult	$a6,$a7
    lw	$a4,5856($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    lwc1	$f1,0($s0)
    addu	$a4,$a4,$a5
    lwc1	$f2,0($a4)
    # Line 59
    ld	$a3,24($sp)
    # Line 57
    swc1	$f2,8($s0)
    # Line 59
    lwc1	$f0,0($a3)
    # Line 60
    lwc1	$f29,4($a3)
    # Line 59
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 60
    lwc1	$f31,4($s0)
    # Line 61
    lwc1	$f25,8($a3)
    # Line 60
    mul.s	$f29,$f29,$f31
    swc1	$f29,4($a3)
    # Line 61
    lwc1	$f27,8($s0)
    # Line 63
    ld	$gp,16($sp)
    # Line 62
    lwc1	$f21,12($a3)
    # Line 61
    mul.s	$f25,$f25,$f27
    swc1	$f25,8($a3)
    # Line 62
    lwc1	$f23,16($s0)
    ld	$ra,40($sp)
    # Line 63
    ld	$s1,8($sp)
    ld	$s0,32($sp)
    # Line 62
    mul.s	$f21,$f21,$f23
    # Line 63
    addiu	$sp,$sp,48
    jr	$ra
    # Line 62
    swc1	$f21,12($a3)
.L0da29ab4:
    # Line 57
    ld	$t1,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t1)
    mtc1	$zero,$f13
    lwc1	$f12,184($t1)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$at,5864($s1)
    addiu	$at,$at,-1
    mtc1	$at,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t9,5928($s1)
    mfc1	$ra,$f18
    mult	$t9,$ra
    lw	$t3,5856($s1)
    mflo	$t8
    lwc1	$f16,4($s0)
    sll	$t8,$t8,0x2
    ld	$t2,0($sp)
    addu	$t3,$t3,$t8
    lwc1	$f17,0($t3)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t2)
    mtc1	$zero,$f13
    lwc1	$f12,188($t2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a3,5864($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a1,5928($s1)
    mfc1	$a2,$f18
    mult	$a1,$a2
    lw	$v1,5856($s1)
    mflo	$a0
    lwc1	$f16,8($s0)
    sll	$a0,$a0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v1,$v1,$a0
    lwc1	$f17,4($v1)
    ld	$v0,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($v0)
    mtc1	$zero,$f13
    lwc1	$f12,192($v0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$a6,5928($s1)
    mfc1	$a7,$f23
    mult	$a6,$a7
    lw	$a4,5856($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f21,8($a4)
    lwc1	$f5,0($s0)
    b	.L0da298d8
    swc1	$f21,8($s0)
.L0da29be4:
    lwc1	$f16,16($a2)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t9,5864($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t3,5928($s1)
    mfc1	$t8,$f18
    mult	$t3,$t8
    lw	$t1,5856($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    lwc1	$f5,0($s0)
    b	.L0da29930
    swc1	$f17,16($s0)
.L0da29c4c:
    lwc1	$f16,16($s0)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a0,5864($s1)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$v0,5928($s1)
    mfc1	$v1,$f18
    mult	$v0,$v1
    lw	$ra,5856($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f17,12($ra)
    lwc1	$f5,0($s0)
    b	.L0da29ab4
    swc1	$f17,16($s0)
.L0da29cb4:
    lwc1	$f16,16($s0)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    lwc1	$f5,0($s0)
    b	.L0da298d8
    swc1	$f17,16($s0)
.L0da29d1c:
    lwc1	$f15,172($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,188($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$t3,5864($s1)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t1,5928($s1)
    mfc1	$t2,$f18
    mult	$t1,$t2
    lw	$a7,5856($s1)
    mflo	$t0
    lwc1	$f16,4($s0)
    sll	$t0,$t0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a6,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,172($a6)
    mtc1	$zero,$f13
    lwc1	$f12,188($a6)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s1)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s1)
    mflo	$ra
    lwc1	$f16,8($s0)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,4($s0)
    lwc1	$f15,176($t8)
    mtc1	$zero,$f13
    lwc1	$f12,192($t8)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    lwc1	$f16,16($s0)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,8($s0)
    lwc1	$f15,180($a0)
    mtc1	$zero,$f13
    lwc1	$f12,196($a0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s1)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$t0,5928($s1)
    mfc1	$t1,$f23
    mult	$t0,$t1
    lw	$a6,5856($s1)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f21,0($a6)
    lwc1	$f5,0($s0)
    b	.L0da298d8
    swc1	$f21,16($s0)
.end __glTextureCTModulateLA

# Function: __glTextureCTModulateRGB
# Declared: Line 66 (Source lines: 67-78)
# Address: 0x0da29eb0 - 0x0da2a21c (Size: 876 bytes, Frame: 48)
.globl __glTextureCTModulateRGB
.ent __glTextureCTModulateRGB
__glTextureCTModulateRGB:
    # Line 67
    addiu	$sp,$sp,-48
    sd	$a1,16($sp)
    sd	$a0,8($sp)
    sd	$s0,32($sp)
    # Line 68
    lw	$v1,28208($a0)
    # Line 67
    move	$s0,$a2
    # Line 73
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6409
    # Line 67
    lui	$v0,0x2
    sd	$gp,24($sp)
    addiu	$v0,$v0,28380
    # Line 68
    addiu	$v1,$v1,4
    sd	$v1,0($sp)
    # Line 73
    beq	$a4,$at,.L0da2a0dc
    # Line 67
    addu	$gp,$t9,$v0
    # Line 73
    li	$a2,6410
    beq	$a4,$a2,.L0da2a0dc
    li	$a3,0x8049
    beq	$a4,$a3,.L0da2a0dc
    li	$a5,6407
    beq	$a4,$a5,.L0da29f58
    li	$a6,6408
    beq	$a4,$a6,.L0da29f58
.L0da29f10:
    # Line 75
    ld	$a7,16($sp)
    lwc1	$f5,0($s0)
    lwc1	$f4,0($a7)
    # Line 76
    lwc1	$f2,4($a7)
    # Line 75
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a7)
    # Line 76
    lwc1	$f3,4($s0)
    # Line 77
    lwc1	$f0,8($a7)
    # Line 76
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a7)
    # Line 77
    lwc1	$f1,8($s0)
    ld	$ra,40($sp)
    # Line 78
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    # Line 77
    mul.s	$f0,$f0,$f1
    # Line 78
    addiu	$sp,$sp,48
    jr	$ra
    # Line 77
    swc1	$f0,8($a7)
.L0da29f58:
    # Line 73
    lwc1	$f15,0($s0)
    ld	$t1,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($t1)
    ld	$t0,8($sp)
    mtc1	$zero,$f13
    lwc1	$f12,184($t1)
    lwc1	$f14,3544($t0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$t2,8($sp)
    lw	$v0,5864($t2)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$ra,5928($t2)
    mfc1	$at,$f18
    mult	$ra,$at
    lw	$t8,5856($t2)
    mflo	$t9
    lwc1	$f16,4($s0)
    sll	$t9,$t9,0x2
    ld	$t3,0($sp)
    addu	$t8,$t8,$t9
    lwc1	$f17,0($t8)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t3)
    mtc1	$zero,$f13
    lwc1	$f12,188($t3)
    lwc1	$f14,3544($t2)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$v1,8($sp)
    lw	$a5,5864($v1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($v1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($v1)
    mflo	$a2
    lwc1	$f16,8($s0)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,4($a1)
    ld	$a0,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($a0)
    mtc1	$zero,$f13
    lwc1	$f12,192($a0)
    lwc1	$f14,3544($v1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$a7,8($sp)
    lw	$t2,5864($a7)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f1,_lit_3f000000
    madd.s	$f1,$f1,$f2,$f0
    trunc.w.s	$f1,$f1
    lw	$t0,5928($a7)
    mfc1	$t1,$f1
    mult	$t0,$t1
    lw	$a7,5856($a7)
    mflo	$t0
    sll	$t0,$t0,0x2
    # Line 75
    lwc1	$f31,0($s0)
    # Line 73
    addu	$a7,$a7,$t0
    lwc1	$f0,8($a7)
    # Line 75
    ld	$a6,16($sp)
    # Line 73
    swc1	$f0,8($s0)
    # Line 75
    lwc1	$f29,0($a6)
    # Line 76
    lwc1	$f25,4($a6)
    # Line 75
    mul.s	$f29,$f29,$f31
    swc1	$f29,0($a6)
    # Line 76
    lwc1	$f27,4($s0)
    # Line 77
    lwc1	$f21,8($a6)
    # Line 76
    mul.s	$f25,$f25,$f27
    swc1	$f25,4($a6)
    # Line 77
    lwc1	$f23,8($s0)
    ld	$ra,40($sp)
    # Line 78
    ld	$gp,24($sp)
    ld	$s0,32($sp)
    # Line 77
    mul.s	$f21,$f21,$f23
    # Line 78
    addiu	$sp,$sp,48
    jr	$ra
    # Line 77
    swc1	$f21,8($a6)
.L0da2a0dc:
    # Line 73
    lwc1	$f15,0($s0)
    ld	$t8,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($t8)
    ld	$t3,8($sp)
    mtc1	$zero,$f13
    lwc1	$f12,184($t8)
    lwc1	$f14,3544($t3)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$ra,8($sp)
    lw	$a2,5864($ra)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($ra)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($ra)
    mflo	$v1
    lwc1	$f16,4($s0)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,172($at)
    mtc1	$zero,$f13
    lwc1	$f12,188($at)
    lwc1	$f14,3544($ra)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$a3,8($sp)
    lw	$t1,5864($a3)
    addiu	$t1,$t1,-1
    mtc1	$t1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a7,5928($a3)
    mfc1	$t0,$f18
    mult	$a7,$t0
    lw	$a5,5856($a3)
    mflo	$a6
    lwc1	$f16,8($s0)
    sll	$a6,$a6,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a5,$a5,$a6
    lwc1	$f17,0($a5)
    ld	$a4,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($a4)
    mtc1	$zero,$f13
    lwc1	$f12,192($a4)
    lwc1	$f14,3544($a3)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$t2,8($sp)
    lw	$t9,5864($t2)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$t3,5928($t2)
    mfc1	$t8,$f23
    mult	$t3,$t8
    lw	$t2,5856($t2)
    mflo	$t3
    sll	$t3,$t3,0x2
    addu	$t2,$t2,$t3
    lwc1	$f21,0($t2)
    b	.L0da29f10
    swc1	$f21,8($s0)
.end __glTextureCTModulateRGB

# Function: __glTextureCTModulateRGBA
# Declared: Line 81 (Source lines: 82-95)
# Address: 0x0da2a220 - 0x0da2a86c (Size: 1612 bytes, Frame: 48)
.globl __glTextureCTModulateRGBA
.ent __glTextureCTModulateRGBA
__glTextureCTModulateRGBA:
    # Line 82
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$s1,8($sp)
    # Line 89
    li	$a6,6406
    # Line 82
    sd	$s0,32($sp)
    # Line 89
    li	$a3,6407
    # Line 82
    move	$s0,$a2
    # Line 84
    lw	$a5,28208($a0)
    # Line 82
    move	$s1,$a0
    # Line 89
    li	$a1,0x8049
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6410
    # Line 82
    lui	$v0,0x2
    sd	$gp,16($sp)
    addiu	$v0,$v0,27500
    # Line 84
    addiu	$v1,$a5,4
    sd	$v1,0($sp)
    # Line 89
    beq	$a4,$at,.L0da2a5b0
    # Line 82
    addu	$gp,$t9,$v0
    # Line 89
    li	$a0,6409
    beq	$a4,$a0,.L0da2a2f8
    nop
    beq	$a4,$a1,.L0da2a6dc
    nop
    li	$a2,6408
    beq	$a4,$a2,.L0da2a614
    nop
    beq	$a4,$a3,.L0da2a480
    nop
    beq	$a4,$a6,.L0da2a678
.L0da2a29c:
    # Line 91
    ld	$a7,24($sp)
    lwc1	$f7,0($s0)
    lwc1	$f6,0($a7)
    # Line 92
    lwc1	$f4,4($a7)
    # Line 91
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($a7)
    # Line 92
    lwc1	$f5,4($s0)
    # Line 93
    lwc1	$f2,8($a7)
    # Line 92
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a7)
    # Line 93
    lwc1	$f3,8($s0)
    ld	$s1,8($sp)
    # Line 94
    lwc1	$f0,12($a7)
    # Line 93
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a7)
    # Line 94
    lwc1	$f1,16($s0)
    ld	$ra,40($sp)
    # Line 95
    ld	$gp,16($sp)
    ld	$s0,32($sp)
    # Line 94
    mul.s	$f0,$f0,$f1
    # Line 95
    addiu	$sp,$sp,48
    jr	$ra
    # Line 94
    swc1	$f0,12($a7)
.L0da2a2f8:
    # Line 89
    lwc1	$f15,0($s0)
    ld	$t0,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($t0)
    mtc1	$zero,$f13
    lwc1	$f12,184($t0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$ra,5864($s1)
    addiu	$ra,$ra,-1
    mtc1	$ra,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t8,5928($s1)
    mfc1	$t9,$f18
    mult	$t8,$t9
    lw	$t2,5856($s1)
    mflo	$t3
    lwc1	$f16,4($s0)
    sll	$t3,$t3,0x2
    ld	$t1,0($sp)
    addu	$t2,$t2,$t3
    lwc1	$f17,0($t2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t1)
    mtc1	$zero,$f13
    lwc1	$f12,188($t1)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a2,5864($s1)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($s1)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($s1)
    mflo	$v1
    lwc1	$f16,8($s0)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($at)
    mtc1	$zero,$f13
    lwc1	$f12,192($at)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f3,_lit_3f000000
    madd.s	$f3,$f3,$f4,$f0
    trunc.w.s	$f3,$f3
    lw	$a6,5928($s1)
    mfc1	$a7,$f3
    mult	$a6,$a7
    lw	$a4,5856($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    # Line 91
    lwc1	$f1,0($s0)
    # Line 89
    addu	$a4,$a4,$a5
    lwc1	$f2,0($a4)
    # Line 91
    ld	$a3,24($sp)
    # Line 89
    swc1	$f2,8($s0)
    # Line 91
    lwc1	$f0,0($a3)
    # Line 92
    lwc1	$f29,4($a3)
    # Line 91
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 92
    lwc1	$f31,4($s0)
    # Line 93
    lwc1	$f25,8($a3)
    # Line 92
    mul.s	$f29,$f29,$f31
    swc1	$f29,4($a3)
    # Line 93
    lwc1	$f27,8($s0)
    # Line 95
    ld	$gp,16($sp)
    # Line 94
    lwc1	$f21,12($a3)
    # Line 93
    mul.s	$f25,$f25,$f27
    swc1	$f25,8($a3)
    # Line 94
    lwc1	$f23,16($s0)
    ld	$ra,40($sp)
    # Line 95
    ld	$s1,8($sp)
    ld	$s0,32($sp)
    # Line 94
    mul.s	$f21,$f21,$f23
    # Line 95
    addiu	$sp,$sp,48
    jr	$ra
    # Line 94
    swc1	$f21,12($a3)
.L0da2a480:
    # Line 89
    lwc1	$f15,0($s0)
    ld	$t1,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($t1)
    mtc1	$zero,$f13
    lwc1	$f12,184($t1)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$at,5864($s1)
    addiu	$at,$at,-1
    mtc1	$at,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t9,5928($s1)
    mfc1	$ra,$f18
    mult	$t9,$ra
    lw	$t3,5856($s1)
    mflo	$t8
    lwc1	$f16,4($s0)
    sll	$t8,$t8,0x2
    ld	$t2,0($sp)
    addu	$t3,$t3,$t8
    lwc1	$f17,0($t3)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t2)
    mtc1	$zero,$f13
    lwc1	$f12,188($t2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a3,5864($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a1,5928($s1)
    mfc1	$a2,$f18
    mult	$a1,$a2
    lw	$v1,5856($s1)
    mflo	$a0
    lwc1	$f16,8($s0)
    sll	$a0,$a0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v1,$v1,$a0
    lwc1	$f17,4($v1)
    ld	$v0,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($v0)
    mtc1	$zero,$f13
    lwc1	$f12,192($v0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$a6,5928($s1)
    mfc1	$a7,$f23
    mult	$a6,$a7
    lw	$a4,5856($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f21,8($a4)
    b	.L0da2a29c
    swc1	$f21,8($s0)
.L0da2a5b0:
    lwc1	$f16,16($a2)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t9,5864($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t3,5928($s1)
    mfc1	$t8,$f18
    mult	$t3,$t8
    lw	$t1,5856($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    b	.L0da2a2f8
    swc1	$f17,16($s0)
.L0da2a614:
    lwc1	$f16,16($s0)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a0,5864($s1)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$v0,5928($s1)
    mfc1	$v1,$f18
    mult	$v0,$v1
    lw	$ra,5856($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f17,12($ra)
    b	.L0da2a480
    swc1	$f17,16($s0)
.L0da2a678:
    lwc1	$f16,16($s0)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    b	.L0da2a29c
    swc1	$f17,16($s0)
.L0da2a6dc:
    lwc1	$f16,172($a5)
    lwc1	$f15,0($a2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,188($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t3,5864($s1)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t1,5928($s1)
    mfc1	$t2,$f18
    mult	$t1,$t2
    lw	$a7,5856($s1)
    mflo	$t0
    lwc1	$f16,4($s0)
    sll	$t0,$t0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a6,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,172($a6)
    mtc1	$zero,$f13
    lwc1	$f12,188($a6)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s1)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s1)
    mflo	$ra
    lwc1	$f16,8($s0)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,4($s0)
    lwc1	$f15,176($t8)
    mtc1	$zero,$f13
    lwc1	$f12,192($t8)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    lwc1	$f16,16($s0)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,8($s0)
    lwc1	$f15,180($a0)
    mtc1	$zero,$f13
    lwc1	$f12,196($a0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s1)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$t0,5928($s1)
    mfc1	$t1,$f23
    mult	$t0,$t1
    lw	$a6,5856($s1)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f21,0($a6)
    b	.L0da2a29c
    swc1	$f21,16($s0)
.end __glTextureCTModulateRGBA

# Function: __glTextureCTModulateA
# Declared: Line 98 (Source lines: 99-108)
# Address: 0x0da2a870 - 0x0da2aa4c (Size: 476 bytes, Frame: 48)
.globl __glTextureCTModulateA
.ent __glTextureCTModulateA
__glTextureCTModulateA:
    # Line 99
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$s0,16($sp)
    # Line 100
    lw	$a5,28208($a0)
    # Line 99
    move	$s0,$a2
    # Line 105
    li	$a1,6408
    lw	$a4,5924($a0)
    # Line 99
    sd	$a0,0($sp)
    # Line 105
    li	$at,6406
    # Line 99
    lui	$v0,0x2
    sd	$ra,32($sp)
    addiu	$v0,$v0,25884
    # Line 100
    addiu	$a6,$a5,4
    sd	$gp,24($sp)
    # Line 105
    beq	$a4,$at,.L0da2a978
    # Line 99
    addu	$gp,$t9,$v0
    # Line 105
    li	$a0,0x8049
    beq	$a4,$a0,.L0da2a978
    nop
    beq	$a4,$a1,.L0da2a9e4
    lwc1	$f5,16($a2)
    li	$a2,6410
    beq	$a4,$a2,.L0da2a8f0
.L0da2a8cc:
    # Line 107
    ld	$a3,8($sp)
    lwc1	$f0,12($a3)
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    # Line 108
    ld	$gp,24($sp)
    # Line 107
    mul.s	$f0,$f0,$f5
    # Line 108
    addiu	$sp,$sp,48
    jr	$ra
    # Line 107
    swc1	$f0,12($a3)
.L0da2a8f0:
    # Line 105
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    ld	$a4,0($sp)
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a4)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    ld	$a6,0($sp)
    lw	$t1,5864($a6)
    addiu	$t1,$t1,-1
    mtc1	$t1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a7,5928($a6)
    mfc1	$t0,$f18
    mult	$a7,$t0
    lw	$a6,5856($a6)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f17,4($a6)
    # Line 107
    ld	$a5,8($sp)
    # Line 105
    swc1	$f17,16($s0)
    # Line 107
    lwc1	$f16,12($a5)
    ld	$ra,32($sp)
    # Line 108
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    # Line 107
    mul.s	$f16,$f16,$f17
    # Line 108
    addiu	$sp,$sp,48
    jr	$ra
    # Line 107
    swc1	$f16,12($a5)
.L0da2a978:
    # Line 105
    lwc1	$f16,16($s0)
    lwc1	$f15,180($a6)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    ld	$t2,0($sp)
    mtc1	$zero,$f13
    lwc1	$f12,196($a6)
    lwc1	$f14,3544($t2)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$t3,0($sp)
    lw	$ra,5864($t3)
    addiu	$ra,$ra,-1
    mtc1	$ra,$f18
    cvt.s.w	$f18,$f18
    lwc1	$f17,_lit_3f000000
    madd.s	$f17,$f17,$f18,$f0
    trunc.w.s	$f17,$f17
    lw	$t8,5928($t3)
    mfc1	$t9,$f17
    mult	$t8,$t9
    lw	$t3,5856($t3)
    mflo	$t8
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t8
    lwc1	$f5,0($t3)
    b	.L0da2a8cc
    swc1	$f5,16($s0)
.L0da2a9e4:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    ld	$at,0($sp)
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($at)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    ld	$v0,0($sp)
    lw	$a1,5864($v0)
    addiu	$a1,$a1,-1
    mtc1	$a1,$f17
    cvt.s.w	$f17,$f17
    lwc1	$f16,_lit_3f000000
    madd.s	$f16,$f16,$f17,$f0
    trunc.w.s	$f16,$f16
    lw	$v1,5928($v0)
    mfc1	$a0,$f16
    mult	$v1,$a0
    lw	$v0,5856($v0)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f5,12($v0)
    b	.L0da2a8cc
    swc1	$f5,16($s0)
.end __glTextureCTModulateA

# Function: __glTextureCTModulateI
# Declared: Line 111 (Source lines: 112-125)
# Address: 0x0da2aa50 - 0x0da2b0a0 (Size: 1616 bytes, Frame: 48)
.globl __glTextureCTModulateI
.ent __glTextureCTModulateI
__glTextureCTModulateI:
    # Line 112
    addiu	$sp,$sp,-48
    sd	$a1,24($sp)
    sd	$s0,32($sp)
    sd	$s1,8($sp)
    # Line 118
    lwc1	$f5,20($a2)
    # Line 113
    lw	$a5,28208($a0)
    # Line 118
    swc1	$f5,16($a2)
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    # Line 119
    li	$a6,6406
    li	$a3,6407
    # Line 118
    swc1	$f5,0($a2)
    # Line 112
    move	$s1,$a0
    move	$s0,$a2
    # Line 119
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6410
    # Line 112
    lui	$v0,0x2
    sd	$gp,16($sp)
    addiu	$v0,$v0,25404
    # Line 113
    addiu	$v1,$a5,4
    sd	$v1,0($sp)
    # Line 119
    beq	$a4,$at,.L0da2ade4
    # Line 112
    addu	$gp,$t9,$v0
    # Line 119
    li	$a0,6409
    beq	$a4,$a0,.L0da2ab30
    li	$a1,0x8049
    beq	$a4,$a1,.L0da2af10
    li	$a2,6408
    beq	$a4,$a2,.L0da2ae48
    nop
    beq	$a4,$a3,.L0da2acb4
    nop
    beq	$a4,$a6,.L0da2aeac
.L0da2aad8:
    # Line 121
    ld	$a7,24($sp)
    lwc1	$f6,0($a7)
    # Line 122
    lwc1	$f4,4($a7)
    # Line 121
    mul.s	$f6,$f6,$f5
    swc1	$f6,0($a7)
    # Line 122
    lwc1	$f5,4($s0)
    # Line 123
    lwc1	$f2,8($a7)
    # Line 122
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a7)
    # Line 123
    lwc1	$f3,8($s0)
    ld	$s1,8($sp)
    # Line 124
    lwc1	$f0,12($a7)
    # Line 123
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a7)
    # Line 124
    lwc1	$f1,16($s0)
    ld	$ra,40($sp)
    # Line 125
    ld	$gp,16($sp)
    ld	$s0,32($sp)
    # Line 124
    mul.s	$f0,$f0,$f1
    # Line 125
    addiu	$sp,$sp,48
    jr	$ra
    # Line 124
    swc1	$f0,12($a7)
.L0da2ab30:
    # Line 119
    ld	$t0,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t0)
    mtc1	$zero,$f13
    lwc1	$f12,184($t0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$ra,5864($s1)
    addiu	$ra,$ra,-1
    mtc1	$ra,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t8,5928($s1)
    mfc1	$t9,$f18
    mult	$t8,$t9
    lw	$t2,5856($s1)
    mflo	$t3
    lwc1	$f16,4($s0)
    sll	$t3,$t3,0x2
    ld	$t1,0($sp)
    addu	$t2,$t2,$t3
    lwc1	$f17,0($t2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t1)
    mtc1	$zero,$f13
    lwc1	$f12,188($t1)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a2,5864($s1)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($s1)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($s1)
    mflo	$v1
    lwc1	$f16,8($s0)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($at)
    mtc1	$zero,$f13
    lwc1	$f12,192($at)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f3,_lit_3f000000
    madd.s	$f3,$f3,$f4,$f0
    trunc.w.s	$f3,$f3
    lw	$a6,5928($s1)
    mfc1	$a7,$f3
    mult	$a6,$a7
    lw	$a4,5856($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    lwc1	$f1,0($s0)
    addu	$a4,$a4,$a5
    lwc1	$f2,0($a4)
    # Line 121
    ld	$a3,24($sp)
    # Line 119
    swc1	$f2,8($s0)
    # Line 121
    lwc1	$f0,0($a3)
    # Line 122
    lwc1	$f29,4($a3)
    # Line 121
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 122
    lwc1	$f31,4($s0)
    # Line 123
    lwc1	$f25,8($a3)
    # Line 122
    mul.s	$f29,$f29,$f31
    swc1	$f29,4($a3)
    # Line 123
    lwc1	$f27,8($s0)
    # Line 125
    ld	$gp,16($sp)
    # Line 124
    lwc1	$f21,12($a3)
    # Line 123
    mul.s	$f25,$f25,$f27
    swc1	$f25,8($a3)
    # Line 124
    lwc1	$f23,16($s0)
    ld	$ra,40($sp)
    # Line 125
    ld	$s1,8($sp)
    ld	$s0,32($sp)
    # Line 124
    mul.s	$f21,$f21,$f23
    # Line 125
    addiu	$sp,$sp,48
    jr	$ra
    # Line 124
    swc1	$f21,12($a3)
.L0da2acb4:
    # Line 119
    ld	$t1,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t1)
    mtc1	$zero,$f13
    lwc1	$f12,184($t1)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$at,5864($s1)
    addiu	$at,$at,-1
    mtc1	$at,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t9,5928($s1)
    mfc1	$ra,$f18
    mult	$t9,$ra
    lw	$t3,5856($s1)
    mflo	$t8
    lwc1	$f16,4($s0)
    sll	$t8,$t8,0x2
    ld	$t2,0($sp)
    addu	$t3,$t3,$t8
    lwc1	$f17,0($t3)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t2)
    mtc1	$zero,$f13
    lwc1	$f12,188($t2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a3,5864($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a1,5928($s1)
    mfc1	$a2,$f18
    mult	$a1,$a2
    lw	$v1,5856($s1)
    mflo	$a0
    lwc1	$f16,8($s0)
    sll	$a0,$a0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v1,$v1,$a0
    lwc1	$f17,4($v1)
    ld	$v0,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($v0)
    mtc1	$zero,$f13
    lwc1	$f12,192($v0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$a6,5928($s1)
    mfc1	$a7,$f23
    mult	$a6,$a7
    lw	$a4,5856($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f21,8($a4)
    lwc1	$f5,0($s0)
    b	.L0da2aad8
    swc1	$f21,8($s0)
.L0da2ade4:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    lw	$t9,5864($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    cvt.s.w	$f18,$f18
    lwc1	$f17,_lit_3f000000
    madd.s	$f17,$f17,$f18,$f0
    trunc.w.s	$f17,$f17
    lw	$t3,5928($s1)
    mfc1	$t8,$f17
    mult	$t3,$t8
    lw	$t1,5856($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f16,4($t1)
    lwc1	$f5,0($s0)
    b	.L0da2ab30
    swc1	$f16,16($s0)
.L0da2ae48:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    lw	$a0,5864($s1)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f18
    cvt.s.w	$f18,$f18
    lwc1	$f17,_lit_3f000000
    madd.s	$f17,$f17,$f18,$f0
    trunc.w.s	$f17,$f17
    lw	$v0,5928($s1)
    mfc1	$v1,$f17
    mult	$v0,$v1
    lw	$ra,5856($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f16,12($ra)
    lwc1	$f5,0($s0)
    b	.L0da2acb4
    swc1	$f16,16($s0)
.L0da2aeac:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f18
    cvt.s.w	$f18,$f18
    lwc1	$f17,_lit_3f000000
    madd.s	$f17,$f17,$f18,$f0
    trunc.w.s	$f17,$f17
    lw	$a3,5928($s1)
    mfc1	$a4,$f17
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f16,0($a1)
    lwc1	$f5,0($s0)
    b	.L0da2aad8
    swc1	$f16,16($s0)
.L0da2af10:
    lwc1	$f15,172($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,188($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$t3,5864($s1)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t1,5928($s1)
    mfc1	$t2,$f18
    mult	$t1,$t2
    lw	$a7,5856($s1)
    mflo	$t0
    lwc1	$f16,4($s0)
    sll	$t0,$t0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a6,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,172($a6)
    mtc1	$zero,$f13
    lwc1	$f12,188($a6)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s1)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s1)
    mflo	$ra
    lwc1	$f16,8($s0)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,4($s0)
    lwc1	$f15,176($t8)
    mtc1	$zero,$f13
    lwc1	$f12,192($t8)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    lwc1	$f16,16($s0)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,8($s0)
    lwc1	$f15,180($a0)
    mtc1	$zero,$f13
    lwc1	$f12,196($a0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s1)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$t0,5928($s1)
    mfc1	$t1,$f23
    mult	$t0,$t1
    lw	$a6,5856($s1)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f21,0($a6)
    lwc1	$f5,0($s0)
    b	.L0da2aad8
    swc1	$f21,16($s0)
.end __glTextureCTModulateI

# Function: __glTextureCTDecalRGB
# Declared: Line 130 (Source lines: 131-138)
# Address: 0x0da2b0a0 - 0x0da2b3fc (Size: 860 bytes, Frame: 48)
.globl __glTextureCTDecalRGB
.ent __glTextureCTDecalRGB
__glTextureCTDecalRGB:
    # Line 131
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$s1,32($sp)
    sd	$s0,24($sp)
    # Line 132
    lw	$v1,28208($a0)
    # Line 131
    move	$s0,$a2
    move	$s1,$a0
    # Line 134
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6409
    # Line 131
    lui	$v0,0x2
    sd	$gp,16($sp)
    addiu	$v0,$v0,23788
    # Line 132
    addiu	$v1,$v1,4
    sd	$v1,0($sp)
    # Line 134
    beq	$a4,$at,.L0da2b2cc
    # Line 131
    addu	$gp,$t9,$v0
    # Line 134
    li	$a0,6410
    beq	$a4,$a0,.L0da2b2cc
    li	$a1,0x8049
    beq	$a4,$a1,.L0da2b2cc
    li	$a2,6407
    beq	$a4,$a2,.L0da2b154
    li	$a3,6408
    beq	$a4,$a3,.L0da2b154
    nop
.L0da2b108:
    # Line 135
    lwc1	$f5,30752($s1)
    lwc1	$f4,0($s0)
    ld	$a4,8($sp)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a4)
    # Line 136
    lwc1	$f3,30756($s1)
    lwc1	$f2,4($s0)
    # Line 138
    ld	$gp,16($sp)
    # Line 136
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    # Line 137
    lwc1	$f1,30760($s1)
    lwc1	$f0,8($s0)
    ld	$ra,40($sp)
    # Line 138
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 137
    mul.s	$f0,$f0,$f1
    # Line 138
    addiu	$sp,$sp,48
    jr	$ra
    # Line 137
    swc1	$f0,8($a4)
.L0da2b154:
    # Line 134
    lwc1	$f15,0($s0)
    ld	$a5,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($a5)
    mtc1	$zero,$f13
    lwc1	$f12,184($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t3,5864($s1)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t1,5928($s1)
    mfc1	$t2,$f18
    mult	$t1,$t2
    lw	$a7,5856($s1)
    mflo	$t0
    lwc1	$f16,4($s0)
    sll	$t0,$t0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a6,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,172($a6)
    mtc1	$zero,$f13
    lwc1	$f12,188($a6)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s1)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s1)
    mflo	$ra
    lwc1	$f16,8($s0)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,4($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,4($s0)
    lwc1	$f15,176($t8)
    mtc1	$zero,$f13
    lwc1	$f12,192($t8)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f1,_lit_3f000000
    madd.s	$f1,$f1,$f2,$f0
    trunc.w.s	$f1,$f1
    lw	$a3,5928($s1)
    mfc1	$a4,$f1
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f0,8($a1)
    # Line 135
    lwc1	$f29,0($s0)
    # Line 134
    swc1	$f0,8($s0)
    # Line 135
    lwc1	$f31,30752($s1)
    ld	$a0,8($sp)
    mul.s	$f29,$f29,$f31
    swc1	$f29,0($a0)
    # Line 136
    lwc1	$f27,30756($s1)
    lwc1	$f25,4($s0)
    # Line 138
    ld	$gp,16($sp)
    # Line 136
    mul.s	$f25,$f25,$f27
    swc1	$f25,4($a0)
    # Line 137
    lwc1	$f23,30760($s1)
    lwc1	$f21,8($s0)
    ld	$ra,40($sp)
    # Line 138
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 137
    mul.s	$f21,$f21,$f23
    # Line 138
    addiu	$sp,$sp,48
    jr	$ra
    # Line 137
    swc1	$f21,8($a0)
.L0da2b2cc:
    # Line 134
    lwc1	$f15,0($s0)
    ld	$a6,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($a6)
    mtc1	$zero,$f13
    lwc1	$f12,184($a6)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t8,5864($s1)
    addiu	$t8,$t8,-1
    mtc1	$t8,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t2,5928($s1)
    mfc1	$t3,$f18
    mult	$t2,$t3
    lw	$t0,5856($s1)
    mflo	$t1
    lwc1	$f16,4($s0)
    sll	$t1,$t1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$t0,$t0,$t1
    lwc1	$f17,0($t0)
    ld	$a7,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,172($a7)
    mtc1	$zero,$f13
    lwc1	$f12,188($a7)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a1,5864($s1)
    addiu	$a1,$a1,-1
    mtc1	$a1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$v1,5928($s1)
    mfc1	$a0,$f18
    mult	$v1,$a0
    lw	$at,5856($s1)
    mflo	$v0
    lwc1	$f16,8($s0)
    sll	$v0,$v0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$at,$at,$v0
    lwc1	$f17,0($at)
    ld	$ra,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($ra)
    mtc1	$zero,$f13
    lwc1	$f12,192($ra)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a6,5864($s1)
    addiu	$a6,$a6,-1
    mtc1	$a6,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$a4,5928($s1)
    mfc1	$a5,$f23
    mult	$a4,$a5
    lw	$a2,5856($s1)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lwc1	$f21,0($a2)
    b	.L0da2b108
    swc1	$f21,8($s0)
.end __glTextureCTDecalRGB

# Function: __glTextureCTDecalRGBA
# Declared: Line 141 (Source lines: 142-157)
# Address: 0x0da2b400 - 0x0da2ba8c (Size: 1676 bytes, Frame: 48)
.globl __glTextureCTDecalRGBA
.ent __glTextureCTDecalRGBA
__glTextureCTDecalRGBA:
    # Line 142
    addiu	$sp,$sp,-48
    sd	$a1,16($sp)
    sd	$s1,24($sp)
    # Line 147
    li	$a6,6406
    # Line 142
    sd	$s0,32($sp)
    # Line 147
    li	$a3,6407
    # Line 142
    move	$s0,$a2
    # Line 145
    lw	$a5,28208($a0)
    # Line 142
    move	$s1,$a0
    # Line 147
    li	$a1,0x8049
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6410
    # Line 142
    lui	$v0,0x2
    sd	$gp,8($sp)
    addiu	$v0,$v0,22924
    # Line 145
    addiu	$v1,$a5,4
    sd	$v1,0($sp)
    # Line 147
    beq	$a4,$at,.L0da2b7d4
    # Line 142
    addu	$gp,$t9,$v0
    # Line 147
    li	$a0,6409
    beq	$a4,$a0,.L0da2b4f8
    nop
    beq	$a4,$a1,.L0da2b8fc
    nop
    li	$a2,6408
    beq	$a4,$a2,.L0da2b838
    nop
    beq	$a4,$a3,.L0da2b6a0
    nop
    beq	$a4,$a6,.L0da2b89c
    lwc1	$f5,16($s0)
.L0da2b480:
    # Line 149
    lwc1	$f2,3544($s1)
    # Line 151
    lwc1	$f10,0($s0)
    ld	$a7,16($sp)
    lwc1	$f8,30752($s1)
    lwc1	$f9,0($a7)
    mul.s	$f10,$f10,$f5
    # Line 149
    sub.s	$f2,$f2,$f5
    # Line 151
    mul.s	$f8,$f8,$f10
    madd.s	$f8,$f8,$f9,$f2
    swc1	$f8,0($a7)
    # Line 153
    lwc1	$f7,4($s0)
    lwc1	$f4,30756($s1)
    lwc1	$f6,4($a7)
    mul.s	$f7,$f7,$f5
    mul.s	$f4,$f4,$f7
    madd.s	$f4,$f4,$f6,$f2
    swc1	$f4,4($a7)
    # Line 155
    lwc1	$f3,8($s0)
    lwc1	$f0,30760($s1)
    lwc1	$f1,8($a7)
    mul.s	$f3,$f3,$f5
    mul.s	$f0,$f0,$f3
    madd.s	$f0,$f0,$f1,$f2
    # Line 157
    ld	$gp,8($sp)
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 155
    swc1	$f0,8($a7)
.L0da2b4f8:
    # Line 147
    lwc1	$f15,0($s0)
    ld	$t0,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($t0)
    mtc1	$zero,$f13
    lwc1	$f12,184($t0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$ra,5864($s1)
    addiu	$ra,$ra,-1
    mtc1	$ra,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t8,5928($s1)
    mfc1	$t9,$f18
    mult	$t8,$t9
    lw	$t2,5856($s1)
    mflo	$t3
    lwc1	$f16,4($s0)
    sll	$t3,$t3,0x2
    ld	$t1,0($sp)
    addu	$t2,$t2,$t3
    lwc1	$f17,0($t2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t1)
    mtc1	$zero,$f13
    lwc1	$f12,188($t1)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a2,5864($s1)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($s1)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($s1)
    mflo	$v1
    lwc1	$f16,8($s0)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($at)
    mtc1	$zero,$f13
    lwc1	$f12,192($at)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f7
    cvt.s.w	$f7,$f7
    lwc1	$f6,_lit_3f000000
    madd.s	$f6,$f6,$f7,$f0
    trunc.w.s	$f6,$f6
    lw	$a6,5928($s1)
    mfc1	$a7,$f6
    mult	$a6,$a7
    lw	$a4,5856($s1)
    mflo	$a5
    # Line 151
    ld	$a3,16($sp)
    # Line 147
    sll	$a5,$a5,0x2
    lwc1	$f29,16($s0)
    addu	$a4,$a4,$a5
    lwc1	$f5,0($a4)
    # Line 151
    lwc1	$f4,0($s0)
    # Line 147
    swc1	$f5,8($s0)
    # Line 149
    lwc1	$f25,3544($s1)
    # Line 151
    lwc1	$f2,30752($s1)
    mul.s	$f4,$f4,$f29
    lwc1	$f3,0($a3)
    # Line 149
    sub.s	$f25,$f25,$f29
    # Line 151
    mul.s	$f2,$f2,$f4
    madd.s	$f2,$f2,$f3,$f25
    swc1	$f2,0($a3)
    # Line 153
    lwc1	$f1,4($s0)
    lwc1	$f31,30756($s1)
    lwc1	$f0,4($a3)
    mul.s	$f1,$f1,$f29
    mul.s	$f31,$f31,$f1
    madd.s	$f31,$f31,$f0,$f25
    swc1	$f31,4($a3)
    # Line 155
    lwc1	$f27,8($s0)
    lwc1	$f21,30760($s1)
    lwc1	$f23,8($a3)
    mul.s	$f27,$f27,$f29
    mul.s	$f21,$f21,$f27
    madd.s	$f21,$f21,$f23,$f25
    # Line 157
    ld	$gp,8($sp)
    ld	$ra,40($sp)
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 155
    swc1	$f21,8($a3)
.L0da2b6a0:
    # Line 147
    lwc1	$f15,0($s0)
    ld	$t1,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($t1)
    mtc1	$zero,$f13
    lwc1	$f12,184($t1)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$at,5864($s1)
    addiu	$at,$at,-1
    mtc1	$at,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t9,5928($s1)
    mfc1	$ra,$f18
    mult	$t9,$ra
    lw	$t3,5856($s1)
    mflo	$t8
    lwc1	$f16,4($s0)
    sll	$t8,$t8,0x2
    ld	$t2,0($sp)
    addu	$t3,$t3,$t8
    lwc1	$f17,0($t3)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t2)
    mtc1	$zero,$f13
    lwc1	$f12,188($t2)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a3,5864($s1)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a1,5928($s1)
    mfc1	$a2,$f18
    mult	$a1,$a2
    lw	$v1,5856($s1)
    mflo	$a0
    lwc1	$f16,8($s0)
    sll	$a0,$a0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v1,$v1,$a0
    lwc1	$f17,4($v1)
    ld	$v0,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($v0)
    mtc1	$zero,$f13
    lwc1	$f12,192($v0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$a6,5928($s1)
    mfc1	$a7,$f23
    mult	$a6,$a7
    lw	$a4,5856($s1)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f21,8($a4)
    lwc1	$f5,16($s0)
    b	.L0da2b480
    swc1	$f21,8($s0)
.L0da2b7d4:
    lwc1	$f16,16($a2)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t9,5864($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t3,5928($s1)
    mfc1	$t8,$f18
    mult	$t3,$t8
    lw	$t1,5856($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    b	.L0da2b4f8
    swc1	$f17,16($s0)
.L0da2b838:
    lwc1	$f16,16($s0)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a0,5864($s1)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$v0,5928($s1)
    mfc1	$v1,$f18
    mult	$v0,$v1
    lw	$ra,5856($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f17,12($ra)
    b	.L0da2b6a0
    swc1	$f17,16($s0)
.L0da2b89c:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f17
    cvt.s.w	$f17,$f17
    lwc1	$f16,_lit_3f000000
    madd.s	$f16,$f16,$f17,$f0
    trunc.w.s	$f16,$f16
    lw	$a3,5928($s1)
    mfc1	$a4,$f16
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f5,0($a1)
    b	.L0da2b480
    swc1	$f5,16($s0)
.L0da2b8fc:
    lwc1	$f16,172($a5)
    lwc1	$f15,0($a2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,188($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t3,5864($s1)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t1,5928($s1)
    mfc1	$t2,$f18
    mult	$t1,$t2
    lw	$a7,5856($s1)
    mflo	$t0
    lwc1	$f16,4($s0)
    sll	$t0,$t0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a6,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,172($a6)
    mtc1	$zero,$f13
    lwc1	$f12,188($a6)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s1)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s1)
    mflo	$ra
    lwc1	$f16,8($s0)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,4($s0)
    lwc1	$f15,176($t8)
    mtc1	$zero,$f13
    lwc1	$f12,192($t8)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    lwc1	$f16,16($s0)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,8($s0)
    lwc1	$f15,180($a0)
    mtc1	$zero,$f13
    lwc1	$f12,196($a0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s1)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f23
    cvt.s.w	$f23,$f23
    lwc1	$f21,_lit_3f000000
    madd.s	$f21,$f21,$f23,$f0
    trunc.w.s	$f21,$f21
    lw	$t0,5928($s1)
    mfc1	$t1,$f21
    mult	$t0,$t1
    lw	$a6,5856($s1)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f5,0($a6)
    b	.L0da2b480
    swc1	$f5,16($s0)
.end __glTextureCTDecalRGBA

# Function: __glTextureCTBlendL
# Declared: Line 162 (Source lines: 163-180)
# Address: 0x0da2ba90 - 0x0da2be0c (Size: 892 bytes, Frame: 192)
.globl __glTextureCTBlendL
.ent __glTextureCTBlendL
__glTextureCTBlendL:
    # Line 163
    addiu	$sp,$sp,-64
    sd	$a2,8($sp)
    sd	$ra,48($sp)
    sd	$gp,32($sp)
    sd	$s0,40($sp)
    # Line 167
    lw	$a3,28208($a0)
    # Line 169
    lwc1	$f7,12($a2)
    # Line 166
    lw	$v1,2484($a0)
    # Line 169
    swc1	$f7,8($a2)
    swc1	$f7,4($a2)
    swc1	$f7,0($a2)
    # Line 163
    move	$s0,$a0
    lui	$v0,0x2
    # Line 170
    lw	$a4,5924($a0)
    # Line 163
    sd	$a1,16($sp)
    # Line 170
    li	$at,6409
    # Line 163
    addiu	$v0,$v0,21244
    # Line 167
    addiu	$a1,$a3,4
    sd	$a1,0($sp)
    # Line 166
    addiu	$v1,$v1,4
    # Line 169
    mov.s	$f6,$f7
    # Line 166
    sd	$v1,24($sp)
    # Line 163
    addu	$gp,$t9,$v0
    # Line 170
    beq	$a4,$at,.L0da2bccc
    # Line 169
    mov.s	$f5,$f7
    # Line 170
    li	$a5,6410
    beq	$a4,$a5,.L0da2bcd0
    ld	$at,0($sp)
    li	$a6,0x8049
    beq	$a4,$a6,.L0da2bcd0
    ld	$at,0($sp)
    li	$a7,6407
    beq	$a4,$a7,.L0da2bb90
    ld	$t3,0($sp)
    li	$t0,6408
    beq	$a4,$t0,.L0da2bb90
    ld	$t3,0($sp)
.L0da2bb24:
    # Line 175
    lwc1	$f2,3544($s0)
    # Line 177
    ld	$t2,24($sp)
    ld	$t1,16($sp)
    lwc1	$f4,0($t2)
    lwc1	$f8,0($t1)
    sub.s	$f9,$f2,$f7
    mul.s	$f4,$f4,$f7
    madd.s	$f4,$f4,$f8,$f9
    swc1	$f4,0($t1)
    # Line 178
    lwc1	$f3,4($t2)
    lwc1	$f4,4($t1)
    # Line 175
    sub.s	$f7,$f2,$f5
    # Line 178
    mul.s	$f3,$f3,$f5
    madd.s	$f3,$f3,$f4,$f7
    swc1	$f3,4($t1)
    # Line 179
    lwc1	$f0,8($t2)
    lwc1	$f1,8($t1)
    # Line 176
    sub.s	$f2,$f2,$f6
    # Line 179
    mul.s	$f0,$f0,$f6
    madd.s	$f0,$f0,$f1,$f2
    ld	$ra,48($sp)
    # Line 180
    ld	$gp,32($sp)
    ld	$s0,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 179
    swc1	$f0,8($t1)
    # Line 170
    ld	$t3,0($sp)
.L0da2bb90:
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t3)
    mtc1	$zero,$f13
    lwc1	$f12,184($t3)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f7,$f15
    lw	$a1,5864($s0)
    addiu	$a1,$a1,-1
    mtc1	$a1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$v1,5928($s0)
    mfc1	$a0,$f18
    mult	$v1,$a0
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lw	$at,5856($s0)
    mflo	$v0
    ld	$t8,0($sp)
    sll	$v0,$v0,0x2
    ld	$ra,8($sp)
    addu	$at,$at,$v0
    lwc1	$f17,0($at)
    lwc1	$f16,4($ra)
    swc1	$f17,0($ra)
    lwc1	$f15,172($t8)
    mtc1	$zero,$f13
    lwc1	$f12,188($t8)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a6,5928($s0)
    mfc1	$a7,$f18
    mult	$a6,$a7
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lw	$a4,5856($s0)
    mflo	$a5
    ld	$a2,0($sp)
    sll	$a5,$a5,0x2
    ld	$a3,8($sp)
    addu	$a4,$a4,$a5
    lwc1	$f17,4($a4)
    lwc1	$f16,8($a3)
    swc1	$f17,4($a3)
    lwc1	$f15,176($a2)
    mtc1	$zero,$f13
    lwc1	$f12,192($a2)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$ra,5864($s0)
    addiu	$ra,$ra,-1
    mtc1	$ra,$f23
    cvt.s.w	$f23,$f23
    lwc1	$f21,_lit_3f000000
    madd.s	$f21,$f21,$f23,$f0
    trunc.w.s	$f21,$f21
    lw	$t8,5928($s0)
    mfc1	$t9,$f21
    mult	$t8,$t9
    ld	$t1,8($sp)
    lw	$t2,5856($s0)
    mflo	$t3
    sll	$t3,$t3,0x2
    lwc1	$f5,4($t1)
    addu	$t2,$t2,$t3
    lwc1	$f6,8($t2)
    lwc1	$f7,0($t1)
    b	.L0da2bb24
    swc1	$f6,8($t1)
.L0da2bccc:
    ld	$at,0($sp)
.L0da2bcd0:
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($at)
    mtc1	$zero,$f13
    lwc1	$f12,184($at)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f7,$f15
    lw	$a4,5864($s0)
    addiu	$a4,$a4,-1
    mtc1	$a4,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a2,5928($s0)
    mfc1	$a3,$f18
    mult	$a2,$a3
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lw	$a0,5856($s0)
    mflo	$a1
    ld	$v0,0($sp)
    sll	$a1,$a1,0x2
    ld	$v1,8($sp)
    addu	$a0,$a0,$a1
    lwc1	$f17,0($a0)
    lwc1	$f16,4($v1)
    swc1	$f17,0($v1)
    lwc1	$f15,172($v0)
    mtc1	$zero,$f13
    lwc1	$f12,188($v0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t3,5864($s0)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t1,5928($s0)
    mfc1	$t2,$f18
    mult	$t1,$t2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lw	$a7,5856($s0)
    mflo	$t0
    ld	$a5,0($sp)
    sll	$t0,$t0,0x2
    ld	$a6,8($sp)
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    lwc1	$f16,8($a6)
    swc1	$f17,4($a6)
    lwc1	$f15,176($a5)
    mtc1	$zero,$f13
    lwc1	$f12,192($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s0)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f23
    cvt.s.w	$f23,$f23
    lwc1	$f21,_lit_3f000000
    madd.s	$f21,$f21,$f23,$f0
    trunc.w.s	$f21,$f21
    lw	$at,5928($s0)
    mfc1	$v0,$f21
    mult	$at,$v0
    ld	$t8,8($sp)
    lw	$t9,5856($s0)
    mflo	$ra
    sll	$ra,$ra,0x2
    lwc1	$f5,4($t8)
    addu	$t9,$t9,$ra
    lwc1	$f6,0($t9)
    lwc1	$f7,0($t8)
    b	.L0da2bb24
    swc1	$f6,8($t8)
.end __glTextureCTBlendL

# Function: __glTextureCTBlendLA
# Declared: Line 183 (Source lines: 184-203)
# Address: 0x0da2be10 - 0x0da2c4dc (Size: 1740 bytes, Frame: 192)
.globl __glTextureCTBlendLA
.ent __glTextureCTBlendLA
__glTextureCTBlendLA:
    # Line 184
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    sd	$gp,16($sp)
    sd	$s0,40($sp)
    sd	$s1,8($sp)
    # Line 188
    lw	$a5,28208($a0)
    # Line 190
    lwc1	$f7,12($a2)
    # Line 187
    lw	$v1,2484($a0)
    # Line 190
    swc1	$f7,8($a2)
    # Line 191
    li	$t0,6406
    # Line 190
    swc1	$f7,4($a2)
    # Line 191
    li	$a7,6407
    # Line 184
    move	$s1,$a2
    # Line 190
    swc1	$f7,0($a2)
    # Line 184
    move	$s0,$a0
    lui	$v0,0x2
    # Line 191
    lw	$a4,5924($a0)
    # Line 184
    sd	$a1,32($sp)
    # Line 191
    li	$at,6410
    # Line 184
    addiu	$v0,$v0,20348
    # Line 188
    addiu	$a1,$a5,4
    sd	$a1,0($sp)
    # Line 187
    addiu	$v1,$v1,4
    # Line 190
    mov.s	$f6,$f7
    # Line 187
    sd	$v1,24($sp)
    # Line 184
    addu	$gp,$t9,$v0
    # Line 191
    beq	$a4,$at,.L0da2c208
    # Line 190
    mov.s	$f5,$f7
    # Line 191
    li	$a2,6409
    beq	$a4,$a2,.L0da2bf24
    li	$a3,0x8049
    beq	$a4,$a3,.L0da2c344
    li	$a6,6408
    beq	$a4,$a6,.L0da2c270
    nop
    beq	$a4,$a7,.L0da2c0d0
    nop
    beq	$a4,$t0,.L0da2c2d8
    lwc1	$f8,16($s1)
.L0da2beac:
    # Line 197
    lwc1	$f3,3544($s0)
    # Line 199
    ld	$t2,24($sp)
    ld	$t1,32($sp)
    lwc1	$f11,0($t2)
    lwc1	$f9,0($t1)
    sub.s	$f10,$f3,$f5
    mul.s	$f5,$f11,$f5
    madd.s	$f5,$f5,$f9,$f10
    swc1	$f5,0($t1)
    # Line 200
    lwc1	$f4,4($t2)
    lwc1	$f5,4($t1)
    # Line 197
    sub.s	$f9,$f3,$f7
    # Line 200
    mul.s	$f4,$f4,$f7
    madd.s	$f4,$f4,$f5,$f9
    swc1	$f4,4($t1)
    # Line 201
    lwc1	$f0,8($t2)
    lwc1	$f2,8($t1)
    # Line 198
    sub.s	$f3,$f3,$f6
    ld	$s1,8($sp)
    # Line 201
    mul.s	$f0,$f0,$f6
    # Line 202
    lwc1	$f1,12($t1)
    # Line 201
    madd.s	$f0,$f0,$f2,$f3
    # Line 203
    ld	$gp,16($sp)
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    # Line 202
    mul.s	$f1,$f1,$f8
    swc1	$f1,12($t1)
    # Line 203
    addiu	$sp,$sp,64
    jr	$ra
    # Line 201
    swc1	$f0,8($t1)
.L0da2bf24:
    # Line 191
    ld	$t3,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t3)
    mtc1	$zero,$f13
    lwc1	$f12,184($t3)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$v1,5864($s0)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s0)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s0)
    mflo	$ra
    lwc1	$f16,4($s1)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s1)
    lwc1	$f15,172($t8)
    mtc1	$zero,$f13
    lwc1	$f12,188($t8)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s0)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s0)
    mflo	$a2
    lwc1	$f16,8($s1)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($a0)
    mtc1	$zero,$f13
    lwc1	$f12,192($a0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t8,5864($s0)
    addiu	$t8,$t8,-1
    mtc1	$t8,$f8
    cvt.s.w	$f8,$f8
    lwc1	$f7,_lit_3f000000
    madd.s	$f7,$f7,$f8,$f0
    trunc.w.s	$f7,$f7
    lw	$t2,5928($s0)
    mfc1	$t3,$f7
    mult	$t2,$t3
    lw	$t0,5856($s0)
    mflo	$t1
    lwc1	$f6,0($s1)
    sll	$t1,$t1,0x2
    # Line 199
    ld	$a6,32($sp)
    # Line 191
    addu	$t0,$t0,$t1
    lwc1	$f23,0($t0)
    # Line 199
    ld	$a7,24($sp)
    # Line 191
    swc1	$f23,8($s1)
    # Line 197
    lwc1	$f29,3544($s0)
    # Line 199
    lwc1	$f3,0($a7)
    lwc1	$f4,0($a6)
    sub.s	$f5,$f29,$f6
    mul.s	$f3,$f3,$f6
    madd.s	$f3,$f3,$f4,$f5
    # Line 191
    lwc1	$f25,16($s1)
    lwc1	$f2,4($s1)
    # Line 199
    swc1	$f3,0($a6)
    # Line 200
    lwc1	$f31,4($a7)
    lwc1	$f0,4($a6)
    # Line 197
    sub.s	$f1,$f29,$f2
    # Line 200
    mul.s	$f31,$f31,$f2
    madd.s	$f31,$f31,$f0,$f1
    swc1	$f31,4($a6)
    # Line 201
    lwc1	$f21,8($a7)
    lwc1	$f27,8($a6)
    # Line 198
    sub.s	$f29,$f29,$f23
    # Line 203
    ld	$gp,16($sp)
    # Line 201
    mul.s	$f21,$f21,$f23
    # Line 202
    lwc1	$f23,12($a6)
    # Line 201
    madd.s	$f21,$f21,$f27,$f29
    ld	$ra,48($sp)
    # Line 203
    ld	$s0,40($sp)
    ld	$s1,8($sp)
    # Line 202
    mul.s	$f23,$f23,$f25
    swc1	$f23,12($a6)
    # Line 203
    addiu	$sp,$sp,64
    jr	$ra
    # Line 201
    swc1	$f21,8($a6)
.L0da2c0d0:
    # Line 191
    ld	$ra,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($ra)
    mtc1	$zero,$f13
    lwc1	$f12,184($ra)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$a2,5864($s0)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($s0)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($s0)
    mflo	$v1
    lwc1	$f16,4($s1)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,172($at)
    mtc1	$zero,$f13
    lwc1	$f12,188($at)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a6,5928($s0)
    mfc1	$a7,$f18
    mult	$a6,$a7
    lw	$a4,5856($s0)
    mflo	$a5
    lwc1	$f16,8($s1)
    sll	$a5,$a5,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a4,$a4,$a5
    lwc1	$f17,4($a4)
    ld	$a3,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($a3)
    mtc1	$zero,$f13
    lwc1	$f12,192($a3)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t9,5864($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f23
    cvt.s.w	$f23,$f23
    lwc1	$f21,_lit_3f000000
    madd.s	$f21,$f21,$f23,$f0
    trunc.w.s	$f21,$f21
    lw	$t3,5928($s0)
    mfc1	$t8,$f21
    mult	$t3,$t8
    lw	$t1,5856($s0)
    mflo	$t2
    lwc1	$f8,16($s1)
    sll	$t2,$t2,0x2
    lwc1	$f7,4($s1)
    addu	$t1,$t1,$t2
    lwc1	$f6,8($t1)
    lwc1	$f5,0($s1)
    b	.L0da2beac
    swc1	$f6,8($s1)
.L0da2c208:
    lwc1	$f16,16($a2)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a0,5864($s0)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$v0,5928($s0)
    mfc1	$v1,$f18
    mult	$v0,$v1
    lw	$ra,5856($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f17,4($ra)
    lwc1	$f5,0($s1)
    b	.L0da2bf24
    swc1	$f17,16($s1)
.L0da2c270:
    lwc1	$f16,16($s1)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s0)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s0)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f17,12($a1)
    lwc1	$f5,0($s1)
    b	.L0da2c0d0
    swc1	$f17,16($s1)
.L0da2c2d8:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f8
    lw	$t2,5864($s0)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f17
    cvt.s.w	$f17,$f17
    lwc1	$f16,_lit_3f000000
    madd.s	$f16,$f16,$f17,$f0
    trunc.w.s	$f16,$f16
    lw	$t0,5928($s0)
    mfc1	$t1,$f16
    mult	$t0,$t1
    lw	$a6,5856($s0)
    mflo	$a7
    lwc1	$f6,8($s1)
    sll	$a7,$a7,0x2
    lwc1	$f7,4($s1)
    addu	$a6,$a6,$a7
    lwc1	$f8,0($a6)
    lwc1	$f5,0($s1)
    b	.L0da2beac
    swc1	$f8,16($s1)
.L0da2c344:
    lwc1	$f15,172($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,188($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f7,$f15
    lw	$v0,5864($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$ra,5928($s0)
    mfc1	$at,$f18
    mult	$ra,$at
    lw	$t8,5856($s0)
    mflo	$t9
    lwc1	$f16,4($s1)
    sll	$t9,$t9,0x2
    ld	$t3,0($sp)
    addu	$t8,$t8,$t9
    lwc1	$f17,0($t8)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s1)
    lwc1	$f15,172($t3)
    mtc1	$zero,$f13
    lwc1	$f12,188($t3)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a4,5864($s0)
    addiu	$a4,$a4,-1
    mtc1	$a4,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a2,5928($s0)
    mfc1	$a3,$f18
    mult	$a2,$a3
    lw	$a0,5856($s0)
    mflo	$a1
    lwc1	$f16,8($s1)
    sll	$a1,$a1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a0,$a0,$a1
    lwc1	$f17,0($a0)
    ld	$v1,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($v1)
    mtc1	$zero,$f13
    lwc1	$f12,192($v1)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s0)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t0,5928($s0)
    mfc1	$t1,$f18
    mult	$t0,$t1
    lw	$a6,5856($s0)
    mflo	$a7
    lwc1	$f16,16($s1)
    sll	$a7,$a7,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a6,$a6,$a7
    lwc1	$f17,0($a6)
    ld	$a5,0($sp)
    swc1	$f17,8($s1)
    lwc1	$f15,180($a5)
    mtc1	$zero,$f13
    lwc1	$f12,196($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$at,5864($s0)
    addiu	$at,$at,-1
    mtc1	$at,$f23
    cvt.s.w	$f23,$f23
    lwc1	$f21,_lit_3f000000
    madd.s	$f21,$f21,$f23,$f0
    trunc.w.s	$f21,$f21
    lw	$t9,5928($s0)
    mfc1	$ra,$f21
    mult	$t9,$ra
    lw	$t3,5856($s0)
    mflo	$t8
    lwc1	$f6,8($s1)
    sll	$t8,$t8,0x2
    lwc1	$f7,4($s1)
    addu	$t3,$t3,$t8
    lwc1	$f8,0($t3)
    lwc1	$f5,0($s1)
    b	.L0da2beac
    swc1	$f8,16($s1)
.end __glTextureCTBlendLA

# Function: __glTextureCTBlendRGB
# Declared: Line 206 (Source lines: 207-223)
# Address: 0x0da2c4e0 - 0x0da2c82c (Size: 844 bytes, Frame: 192)
.globl __glTextureCTBlendRGB
.ent __glTextureCTBlendRGB
__glTextureCTBlendRGB:
    # Line 207
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    sd	$gp,24($sp)
    sd	$s1,40($sp)
    sd	$s0,32($sp)
    # Line 210
    lw	$v1,2484($a0)
    # Line 207
    move	$s0,$a2
    # Line 211
    lw	$a3,28208($a0)
    # Line 207
    move	$s1,$a0
    lui	$v0,0x2
    # Line 213
    lw	$a4,5924($a0)
    # Line 207
    sd	$a1,8($sp)
    # Line 213
    li	$at,6409
    # Line 207
    addiu	$v0,$v0,18604
    # Line 211
    addiu	$a1,$a3,4
    sd	$a1,0($sp)
    # Line 210
    addiu	$v1,$v1,4
    sd	$v1,16($sp)
    # Line 213
    beq	$a4,$at,.L0da2c6fc
    # Line 207
    addu	$gp,$t9,$v0
    # Line 213
    li	$a5,6410
    beq	$a4,$a5,.L0da2c6fc
    li	$a6,0x8049
    beq	$a4,$a6,.L0da2c6fc
    li	$a7,6407
    beq	$a4,$a7,.L0da2c5cc
    li	$t0,6408
    beq	$a4,$t0,.L0da2c5cc
    nop
    lwc1	$f5,8($a2)
.L0da2c558:
    # Line 214
    lwc1	$f11,0($s0)
    # Line 218
    lwc1	$f2,3544($s1)
    # Line 220
    ld	$t2,16($sp)
    ld	$t1,8($sp)
    lwc1	$f8,0($t2)
    lwc1	$f9,0($t1)
    sub.s	$f10,$f2,$f11
    mul.s	$f8,$f8,$f11
    madd.s	$f8,$f8,$f9,$f10
    # Line 215
    lwc1	$f7,4($s0)
    # Line 220
    swc1	$f8,0($t1)
    # Line 221
    lwc1	$f3,4($t2)
    lwc1	$f4,4($t1)
    # Line 218
    sub.s	$f6,$f2,$f7
    # Line 221
    mul.s	$f3,$f3,$f7
    madd.s	$f3,$f3,$f4,$f6
    swc1	$f3,4($t1)
    # Line 222
    lwc1	$f0,8($t2)
    lwc1	$f1,8($t1)
    # Line 219
    sub.s	$f2,$f2,$f5
    # Line 222
    mul.s	$f0,$f0,$f5
    madd.s	$f0,$f0,$f1,$f2
    # Line 223
    ld	$gp,24($sp)
    ld	$ra,48($sp)
    ld	$s0,32($sp)
    ld	$s1,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 222
    swc1	$f0,8($t1)
.L0da2c5cc:
    # Line 213
    lwc1	$f15,0($s0)
    ld	$t3,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($t3)
    mtc1	$zero,$f13
    lwc1	$f12,184($t3)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s1)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s1)
    mflo	$ra
    lwc1	$f16,4($s0)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t8)
    mtc1	$zero,$f13
    lwc1	$f12,188($t8)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    lwc1	$f16,8($s0)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,4($a1)
    ld	$a0,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($a0)
    mtc1	$zero,$f13
    lwc1	$f12,192($a0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s1)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f23
    cvt.s.w	$f23,$f23
    lwc1	$f21,_lit_3f000000
    madd.s	$f21,$f21,$f23,$f0
    trunc.w.s	$f21,$f21
    lw	$t0,5928($s1)
    mfc1	$t1,$f21
    mult	$t0,$t1
    lw	$a6,5856($s1)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f5,8($a6)
    b	.L0da2c558
    swc1	$f5,8($s0)
.L0da2c6fc:
    lwc1	$f15,0($s0)
    ld	$t3,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($t3)
    mtc1	$zero,$f13
    lwc1	$f12,184($t3)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s1)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s1)
    mflo	$ra
    lwc1	$f16,4($s0)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t8)
    mtc1	$zero,$f13
    lwc1	$f12,188($t8)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    lwc1	$f16,8($s0)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($a0)
    mtc1	$zero,$f13
    lwc1	$f12,192($a0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s1)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f23
    cvt.s.w	$f23,$f23
    lwc1	$f21,_lit_3f000000
    madd.s	$f21,$f21,$f23,$f0
    trunc.w.s	$f21,$f21
    lw	$t0,5928($s1)
    mfc1	$t1,$f21
    mult	$t0,$t1
    lw	$a6,5856($s1)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f5,0($a6)
    b	.L0da2c558
    swc1	$f5,8($s0)
.end __glTextureCTBlendRGB

# Function: __glTextureCTBlendRGBA
# Declared: Line 226 (Source lines: 227-244)
# Address: 0x0da2c830 - 0x0da2cedc (Size: 1708 bytes, Frame: 192)
.globl __glTextureCTBlendRGBA
.ent __glTextureCTBlendRGBA
__glTextureCTBlendRGBA:
    # Line 227
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    sd	$gp,8($sp)
    sd	$s1,32($sp)
    sd	$s0,40($sp)
    # Line 230
    lw	$v1,2484($a0)
    # Line 233
    li	$t0,6406
    # Line 227
    move	$s0,$a2
    # Line 231
    lw	$a5,28208($a0)
    # Line 227
    move	$s1,$a0
    lui	$v0,0x2
    # Line 233
    lw	$a4,5924($a0)
    # Line 227
    sd	$a1,24($sp)
    # Line 233
    li	$at,6410
    # Line 227
    addiu	$v0,$v0,17756
    # Line 231
    addiu	$a1,$a5,4
    sd	$a1,0($sp)
    # Line 230
    addiu	$v1,$v1,4
    sd	$v1,16($sp)
    # Line 233
    beq	$a4,$at,.L0da2cc18
    # Line 227
    addu	$gp,$t9,$v0
    # Line 233
    li	$a2,6409
    beq	$a4,$a2,.L0da2c938
    li	$a3,0x8049
    beq	$a4,$a3,.L0da2cd48
    li	$a6,6408
    beq	$a4,$a6,.L0da2cc7c
    li	$a7,6407
    beq	$a4,$a7,.L0da2cae8
    nop
    beq	$a4,$t0,.L0da2cce0
    nop
    lwc1	$f5,8($s0)
.L0da2c8b4:
    # Line 234
    lwc1	$f13,0($s0)
    # Line 238
    lwc1	$f4,3544($s1)
    # Line 240
    ld	$t2,16($sp)
    ld	$t1,24($sp)
    lwc1	$f10,0($t2)
    lwc1	$f11,0($t1)
    sub.s	$f12,$f4,$f13
    mul.s	$f10,$f10,$f13
    madd.s	$f10,$f10,$f11,$f12
    # Line 235
    lwc1	$f9,4($s0)
    # Line 240
    swc1	$f10,0($t1)
    # Line 241
    lwc1	$f6,4($t2)
    lwc1	$f7,4($t1)
    # Line 238
    sub.s	$f8,$f4,$f9
    # Line 241
    mul.s	$f6,$f6,$f9
    madd.s	$f6,$f6,$f7,$f8
    swc1	$f6,4($t1)
    # Line 242
    lwc1	$f2,8($t2)
    lwc1	$f3,8($t1)
    # Line 239
    sub.s	$f4,$f4,$f5
    # Line 242
    mul.s	$f2,$f2,$f5
    madd.s	$f2,$f2,$f3,$f4
    # Line 244
    ld	$gp,8($sp)
    # Line 243
    lwc1	$f0,12($t1)
    # Line 242
    swc1	$f2,8($t1)
    # Line 243
    lwc1	$f1,16($s0)
    ld	$ra,48($sp)
    # Line 244
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    # Line 243
    mul.s	$f0,$f0,$f1
    # Line 244
    addiu	$sp,$sp,64
    jr	$ra
    # Line 243
    swc1	$f0,12($t1)
.L0da2c938:
    # Line 233
    lwc1	$f15,0($s0)
    ld	$t3,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($t3)
    mtc1	$zero,$f13
    lwc1	$f12,184($t3)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s1)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s1)
    mflo	$ra
    lwc1	$f16,4($s0)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t8)
    mtc1	$zero,$f13
    lwc1	$f12,188($t8)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    lwc1	$f16,8($s0)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($a0)
    mtc1	$zero,$f13
    lwc1	$f12,192($a0)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t8,5864($s1)
    addiu	$t8,$t8,-1
    mtc1	$t8,$f9
    cvt.s.w	$f9,$f9
    lwc1	$f8,_lit_3f000000
    madd.s	$f8,$f8,$f9,$f0
    trunc.w.s	$f8,$f8
    lw	$t2,5928($s1)
    mfc1	$t3,$f8
    mult	$t2,$t3
    lw	$t0,5856($s1)
    mflo	$t1
    # Line 234
    lwc1	$f7,0($s0)
    # Line 233
    sll	$t1,$t1,0x2
    # Line 240
    ld	$a6,24($sp)
    # Line 233
    addu	$t0,$t0,$t1
    lwc1	$f31,0($t0)
    # Line 240
    ld	$a7,16($sp)
    # Line 233
    swc1	$f31,8($s0)
    # Line 238
    lwc1	$f29,3544($s1)
    # Line 240
    lwc1	$f4,0($a7)
    lwc1	$f5,0($a6)
    sub.s	$f6,$f29,$f7
    mul.s	$f4,$f4,$f7
    madd.s	$f4,$f4,$f5,$f6
    # Line 235
    lwc1	$f3,4($s0)
    # Line 240
    swc1	$f4,0($a6)
    # Line 241
    lwc1	$f0,4($a7)
    lwc1	$f1,4($a6)
    # Line 238
    sub.s	$f2,$f29,$f3
    # Line 241
    mul.s	$f0,$f0,$f3
    madd.s	$f0,$f0,$f1,$f2
    swc1	$f0,4($a6)
    # Line 242
    lwc1	$f25,8($a7)
    lwc1	$f27,8($a6)
    # Line 239
    sub.s	$f29,$f29,$f31
    # Line 242
    mul.s	$f25,$f25,$f31
    madd.s	$f25,$f25,$f27,$f29
    # Line 244
    ld	$gp,8($sp)
    # Line 243
    lwc1	$f21,12($a6)
    # Line 242
    swc1	$f25,8($a6)
    # Line 243
    lwc1	$f23,16($s0)
    ld	$ra,48($sp)
    # Line 244
    ld	$s1,32($sp)
    ld	$s0,40($sp)
    # Line 243
    mul.s	$f21,$f21,$f23
    # Line 244
    addiu	$sp,$sp,64
    jr	$ra
    # Line 243
    swc1	$f21,12($a6)
.L0da2cae8:
    # Line 233
    lwc1	$f15,0($s0)
    ld	$ra,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($ra)
    mtc1	$zero,$f13
    lwc1	$f12,184($ra)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a2,5864($s1)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($s1)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($s1)
    mflo	$v1
    lwc1	$f16,4($s0)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,172($at)
    mtc1	$zero,$f13
    lwc1	$f12,188($at)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s1)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a6,5928($s1)
    mfc1	$a7,$f18
    mult	$a6,$a7
    lw	$a4,5856($s1)
    mflo	$a5
    lwc1	$f16,8($s0)
    sll	$a5,$a5,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a4,$a4,$a5
    lwc1	$f17,4($a4)
    ld	$a3,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($a3)
    mtc1	$zero,$f13
    lwc1	$f12,192($a3)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t9,5864($s1)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f23
    cvt.s.w	$f23,$f23
    lwc1	$f21,_lit_3f000000
    madd.s	$f21,$f21,$f23,$f0
    trunc.w.s	$f21,$f21
    lw	$t3,5928($s1)
    mfc1	$t8,$f21
    mult	$t3,$t8
    lw	$t1,5856($s1)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f5,8($t1)
    b	.L0da2c8b4
    swc1	$f5,8($s0)
.L0da2cc18:
    lwc1	$f16,16($a2)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a0,5864($s1)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$v0,5928($s1)
    mfc1	$v1,$f18
    mult	$v0,$v1
    lw	$ra,5856($s1)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f17,4($ra)
    b	.L0da2c938
    swc1	$f17,16($s0)
.L0da2cc7c:
    lwc1	$f16,16($s0)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s1)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f17,12($a1)
    b	.L0da2cae8
    swc1	$f17,16($s0)
.L0da2cce0:
    lwc1	$f16,16($s0)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s1)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t0,5928($s1)
    mfc1	$t1,$f18
    mult	$t0,$t1
    lw	$a6,5856($s1)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f17,0($a6)
    lwc1	$f5,8($s0)
    b	.L0da2c8b4
    swc1	$f17,16($s0)
.L0da2cd48:
    lwc1	$f16,172($a5)
    lwc1	$f15,0($s0)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,188($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v0,5864($s1)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$ra,5928($s1)
    mfc1	$at,$f18
    mult	$ra,$at
    lw	$t8,5856($s1)
    mflo	$t9
    lwc1	$f16,4($s0)
    sll	$t9,$t9,0x2
    ld	$t3,0($sp)
    addu	$t8,$t8,$t9
    lwc1	$f17,0($t8)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s0)
    lwc1	$f15,172($t3)
    mtc1	$zero,$f13
    lwc1	$f12,188($t3)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a4,5864($s1)
    addiu	$a4,$a4,-1
    mtc1	$a4,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a2,5928($s1)
    mfc1	$a3,$f18
    mult	$a2,$a3
    lw	$a0,5856($s1)
    mflo	$a1
    lwc1	$f16,8($s0)
    sll	$a1,$a1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a0,$a0,$a1
    lwc1	$f17,0($a0)
    ld	$v1,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($v1)
    mtc1	$zero,$f13
    lwc1	$f12,192($v1)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s1)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t0,5928($s1)
    mfc1	$t1,$f18
    mult	$t0,$t1
    lw	$a6,5856($s1)
    mflo	$a7
    lwc1	$f16,16($s0)
    sll	$a7,$a7,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a6,$a6,$a7
    lwc1	$f17,0($a6)
    ld	$a5,0($sp)
    swc1	$f17,8($s0)
    lwc1	$f15,180($a5)
    mtc1	$zero,$f13
    lwc1	$f12,196($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$at,5864($s1)
    addiu	$at,$at,-1
    mtc1	$at,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$t9,5928($s1)
    mfc1	$ra,$f23
    mult	$t9,$ra
    lw	$t3,5856($s1)
    mflo	$t8
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t8
    lwc1	$f21,0($t3)
    lwc1	$f5,8($s0)
    b	.L0da2c8b4
    swc1	$f21,16($s0)
.end __glTextureCTBlendRGBA

# Function: __glTextureCTBlendA
# Declared: Line 247 (Source lines: 248-256)
# Address: 0x0da2cee0 - 0x0da2d0bc (Size: 476 bytes, Frame: 48)
.globl __glTextureCTBlendA
.ent __glTextureCTBlendA
__glTextureCTBlendA:
    # Line 248
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$s0,16($sp)
    # Line 249
    lw	$a5,28208($a0)
    # Line 248
    move	$s0,$a2
    # Line 254
    li	$a1,6408
    lw	$a4,5924($a0)
    # Line 248
    sd	$a0,0($sp)
    # Line 254
    li	$at,6406
    # Line 248
    lui	$v0,0x2
    sd	$ra,32($sp)
    addiu	$v0,$v0,16044
    # Line 249
    addiu	$a6,$a5,4
    sd	$gp,24($sp)
    # Line 254
    beq	$a4,$at,.L0da2cfe8
    # Line 248
    addu	$gp,$t9,$v0
    # Line 254
    li	$a0,0x8049
    beq	$a4,$a0,.L0da2cfe8
    nop
    beq	$a4,$a1,.L0da2d054
    lwc1	$f5,16($a2)
    li	$a2,6410
    beq	$a4,$a2,.L0da2cf60
.L0da2cf3c:
    # Line 255
    ld	$a3,8($sp)
    lwc1	$f0,12($a3)
    ld	$ra,32($sp)
    ld	$s0,16($sp)
    # Line 256
    ld	$gp,24($sp)
    # Line 255
    mul.s	$f0,$f0,$f5
    # Line 256
    addiu	$sp,$sp,48
    jr	$ra
    # Line 255
    swc1	$f0,12($a3)
.L0da2cf60:
    # Line 254
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    ld	$a4,0($sp)
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a4)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    ld	$a6,0($sp)
    lw	$t1,5864($a6)
    addiu	$t1,$t1,-1
    mtc1	$t1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a7,5928($a6)
    mfc1	$t0,$f18
    mult	$a7,$t0
    lw	$a6,5856($a6)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f17,4($a6)
    # Line 255
    ld	$a5,8($sp)
    # Line 254
    swc1	$f17,16($s0)
    # Line 255
    lwc1	$f16,12($a5)
    ld	$ra,32($sp)
    # Line 256
    ld	$gp,24($sp)
    ld	$s0,16($sp)
    # Line 255
    mul.s	$f16,$f16,$f17
    # Line 256
    addiu	$sp,$sp,48
    jr	$ra
    # Line 255
    swc1	$f16,12($a5)
.L0da2cfe8:
    # Line 254
    lwc1	$f16,16($s0)
    lwc1	$f15,180($a6)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    ld	$t2,0($sp)
    mtc1	$zero,$f13
    lwc1	$f12,196($a6)
    lwc1	$f14,3544($t2)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    ld	$t3,0($sp)
    lw	$ra,5864($t3)
    addiu	$ra,$ra,-1
    mtc1	$ra,$f18
    cvt.s.w	$f18,$f18
    lwc1	$f17,_lit_3f000000
    madd.s	$f17,$f17,$f18,$f0
    trunc.w.s	$f17,$f17
    lw	$t8,5928($t3)
    mfc1	$t9,$f17
    mult	$t8,$t9
    lw	$t3,5856($t3)
    mflo	$t8
    sll	$t8,$t8,0x2
    addu	$t3,$t3,$t8
    lwc1	$f5,0($t3)
    b	.L0da2cf3c
    swc1	$f5,16($s0)
.L0da2d054:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    ld	$at,0($sp)
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($at)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    ld	$v0,0($sp)
    lw	$a1,5864($v0)
    addiu	$a1,$a1,-1
    mtc1	$a1,$f17
    cvt.s.w	$f17,$f17
    lwc1	$f16,_lit_3f000000
    madd.s	$f16,$f16,$f17,$f0
    trunc.w.s	$f16,$f16
    lw	$v1,5928($v0)
    mfc1	$a0,$f16
    mult	$v1,$a0
    lw	$v0,5856($v0)
    mflo	$v1
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lwc1	$f5,12($v0)
    b	.L0da2cf3c
    swc1	$f5,16($s0)
.end __glTextureCTBlendA

# Function: __glTextureCTBlendI
# Declared: Line 259 (Source lines: 260-280)
# Address: 0x0da2d0c0 - 0x0da2d7a0 (Size: 1760 bytes, Frame: 192)
.globl __glTextureCTBlendI
.ent __glTextureCTBlendI
__glTextureCTBlendI:
    # Line 260
    addiu	$sp,$sp,-64
    sd	$ra,48($sp)
    sd	$gp,16($sp)
    sd	$s0,40($sp)
    sd	$s1,8($sp)
    # Line 263
    lw	$v1,2484($a0)
    # Line 266
    lwc1	$f8,20($a2)
    # Line 264
    lw	$a5,28208($a0)
    # Line 266
    swc1	$f8,0($a2)
    swc1	$f8,4($a2)
    swc1	$f8,8($a2)
    # Line 267
    li	$t0,6406
    # Line 260
    move	$s1,$a2
    # Line 266
    swc1	$f8,16($a2)
    # Line 260
    move	$s0,$a0
    lui	$v0,0x2
    # Line 267
    lw	$a4,5924($a0)
    # Line 260
    sd	$a1,32($sp)
    # Line 267
    li	$at,6410
    # Line 260
    addiu	$v0,$v0,15564
    # Line 266
    mov.s	$f7,$f8
    # Line 264
    addiu	$a1,$a5,4
    sd	$a1,0($sp)
    # Line 263
    addiu	$v1,$v1,4
    # Line 266
    mov.s	$f6,$f8
    # Line 263
    sd	$v1,24($sp)
    # Line 260
    addu	$gp,$t9,$v0
    # Line 267
    beq	$a4,$at,.L0da2d4d4
    # Line 266
    mov.s	$f5,$f8
    # Line 267
    li	$a2,6409
    beq	$a4,$a2,.L0da2d1e4
    li	$a3,0x8049
    beq	$a4,$a3,.L0da2d608
    li	$a6,6408
    beq	$a4,$a6,.L0da2d538
    li	$a7,6407
    beq	$a4,$a7,.L0da2d39c
    nop
    beq	$a4,$t0,.L0da2d59c
    nop
.L0da2d160:
    # Line 273
    lwc1	$f2,3544($s0)
    # Line 276
    ld	$t2,24($sp)
    ld	$t1,32($sp)
    lwc1	$f11,0($t2)
    lwc1	$f9,0($t1)
    sub.s	$f10,$f2,$f5
    mul.s	$f5,$f11,$f5
    madd.s	$f5,$f5,$f9,$f10
    swc1	$f5,0($t1)
    # Line 277
    lwc1	$f4,4($t2)
    lwc1	$f5,4($t1)
    # Line 273
    sub.s	$f9,$f2,$f6
    # Line 277
    mul.s	$f4,$f4,$f6
    madd.s	$f4,$f4,$f5,$f9
    swc1	$f4,4($t1)
    # Line 278
    lwc1	$f3,8($t2)
    lwc1	$f4,8($t1)
    # Line 274
    sub.s	$f5,$f2,$f8
    # Line 278
    mul.s	$f3,$f3,$f8
    madd.s	$f3,$f3,$f4,$f5
    swc1	$f3,8($t1)
    # Line 279
    lwc1	$f0,12($t2)
    lwc1	$f1,12($t1)
    # Line 275
    sub.s	$f2,$f2,$f7
    # Line 279
    mul.s	$f0,$f0,$f7
    madd.s	$f0,$f0,$f1,$f2
    ld	$s1,8($sp)
    ld	$ra,48($sp)
    # Line 280
    ld	$gp,16($sp)
    ld	$s0,40($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 279
    swc1	$f0,12($t1)
.L0da2d1e4:
    # Line 267
    ld	$t3,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t3)
    mtc1	$zero,$f13
    lwc1	$f12,184($t3)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$v1,5864($s0)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s0)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s0)
    mflo	$ra
    lwc1	$f16,4($s1)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s1)
    lwc1	$f15,172($t8)
    mtc1	$zero,$f13
    lwc1	$f12,188($t8)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s0)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s0)
    mflo	$a2
    lwc1	$f16,8($s1)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($a0)
    mtc1	$zero,$f13
    lwc1	$f12,192($a0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t8,5864($s0)
    addiu	$t8,$t8,-1
    mtc1	$t8,$f11
    cvt.s.w	$f11,$f11
    lwc1	$f10,_lit_3f000000
    madd.s	$f10,$f10,$f11,$f0
    trunc.w.s	$f10,$f10
    lw	$t2,5928($s0)
    mfc1	$t3,$f10
    mult	$t2,$t3
    lw	$t0,5856($s0)
    mflo	$t1
    lwc1	$f9,0($s1)
    sll	$t1,$t1,0x2
    # Line 276
    ld	$a6,32($sp)
    # Line 267
    addu	$t0,$t0,$t1
    lwc1	$f1,0($t0)
    # Line 276
    ld	$a7,24($sp)
    # Line 267
    swc1	$f1,8($s1)
    # Line 273
    lwc1	$f25,3544($s0)
    # Line 276
    lwc1	$f6,0($a7)
    lwc1	$f7,0($a6)
    sub.s	$f8,$f25,$f9
    mul.s	$f6,$f6,$f9
    madd.s	$f6,$f6,$f7,$f8
    # Line 267
    lwc1	$f27,16($s1)
    lwc1	$f5,4($s1)
    # Line 276
    swc1	$f6,0($a6)
    # Line 277
    lwc1	$f2,4($a7)
    lwc1	$f3,4($a6)
    # Line 273
    sub.s	$f4,$f25,$f5
    # Line 277
    mul.s	$f2,$f2,$f5
    madd.s	$f2,$f2,$f3,$f4
    swc1	$f2,4($a6)
    # Line 278
    lwc1	$f29,8($a7)
    lwc1	$f31,8($a6)
    # Line 274
    sub.s	$f0,$f25,$f1
    # Line 278
    mul.s	$f29,$f29,$f1
    madd.s	$f29,$f29,$f31,$f0
    swc1	$f29,8($a6)
    # Line 279
    lwc1	$f21,12($a7)
    lwc1	$f23,12($a6)
    # Line 275
    sub.s	$f25,$f25,$f27
    # Line 279
    mul.s	$f21,$f21,$f27
    madd.s	$f21,$f21,$f23,$f25
    # Line 280
    ld	$gp,16($sp)
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    ld	$s1,8($sp)
    addiu	$sp,$sp,64
    jr	$ra
    # Line 279
    swc1	$f21,12($a6)
.L0da2d39c:
    # Line 267
    ld	$ra,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($ra)
    mtc1	$zero,$f13
    lwc1	$f12,184($ra)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$a2,5864($s0)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($s0)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($s0)
    mflo	$v1
    lwc1	$f16,4($s1)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,172($at)
    mtc1	$zero,$f13
    lwc1	$f12,188($at)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a6,5928($s0)
    mfc1	$a7,$f18
    mult	$a6,$a7
    lw	$a4,5856($s0)
    mflo	$a5
    lwc1	$f16,8($s1)
    sll	$a5,$a5,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a4,$a4,$a5
    lwc1	$f17,4($a4)
    ld	$a3,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($a3)
    mtc1	$zero,$f13
    lwc1	$f12,192($a3)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t9,5864($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f23
    cvt.s.w	$f23,$f23
    lwc1	$f21,_lit_3f000000
    madd.s	$f21,$f21,$f23,$f0
    trunc.w.s	$f21,$f21
    lw	$t3,5928($s0)
    mfc1	$t8,$f21
    mult	$t3,$t8
    lw	$t1,5856($s0)
    mflo	$t2
    lwc1	$f7,16($s1)
    sll	$t2,$t2,0x2
    lwc1	$f6,4($s1)
    addu	$t1,$t1,$t2
    lwc1	$f8,8($t1)
    lwc1	$f5,0($s1)
    b	.L0da2d160
    swc1	$f8,8($s1)
.L0da2d4d4:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f8
    lw	$a0,5864($s0)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f18
    cvt.s.w	$f18,$f18
    lwc1	$f17,_lit_3f000000
    madd.s	$f17,$f17,$f18,$f0
    trunc.w.s	$f17,$f17
    lw	$v0,5928($s0)
    mfc1	$v1,$f17
    mult	$v0,$v1
    lw	$ra,5856($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f16,4($ra)
    lwc1	$f5,0($s1)
    b	.L0da2d1e4
    swc1	$f16,16($s1)
.L0da2d538:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f8
    lw	$a5,5864($s0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f18
    cvt.s.w	$f18,$f18
    lwc1	$f17,_lit_3f000000
    madd.s	$f17,$f17,$f18,$f0
    trunc.w.s	$f17,$f17
    lw	$a3,5928($s0)
    mfc1	$a4,$f17
    mult	$a3,$a4
    lw	$a1,5856($s0)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f16,12($a1)
    lwc1	$f5,0($s1)
    b	.L0da2d39c
    swc1	$f16,16($s1)
.L0da2d59c:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f8
    lw	$t2,5864($s0)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f17
    cvt.s.w	$f17,$f17
    lwc1	$f16,_lit_3f000000
    madd.s	$f16,$f16,$f17,$f0
    trunc.w.s	$f16,$f16
    lw	$t0,5928($s0)
    mfc1	$t1,$f16
    mult	$t0,$t1
    lw	$a6,5856($s0)
    mflo	$a7
    lwc1	$f8,8($s1)
    sll	$a7,$a7,0x2
    lwc1	$f6,4($s1)
    addu	$a6,$a6,$a7
    lwc1	$f7,0($a6)
    lwc1	$f5,0($s1)
    b	.L0da2d160
    swc1	$f7,16($s1)
.L0da2d608:
    lwc1	$f15,172($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,188($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f8,$f15
    lw	$v0,5864($s0)
    addiu	$v0,$v0,-1
    mtc1	$v0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$ra,5928($s0)
    mfc1	$at,$f18
    mult	$ra,$at
    lw	$t8,5856($s0)
    mflo	$t9
    lwc1	$f16,4($s1)
    sll	$t9,$t9,0x2
    ld	$t3,0($sp)
    addu	$t8,$t8,$t9
    lwc1	$f17,0($t8)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s1)
    lwc1	$f15,172($t3)
    mtc1	$zero,$f13
    lwc1	$f12,188($t3)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a4,5864($s0)
    addiu	$a4,$a4,-1
    mtc1	$a4,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a2,5928($s0)
    mfc1	$a3,$f18
    mult	$a2,$a3
    lw	$a0,5856($s0)
    mflo	$a1
    lwc1	$f16,8($s1)
    sll	$a1,$a1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a0,$a0,$a1
    lwc1	$f17,0($a0)
    ld	$v1,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($v1)
    mtc1	$zero,$f13
    lwc1	$f12,192($v1)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s0)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t0,5928($s0)
    mfc1	$t1,$f18
    mult	$t0,$t1
    lw	$a6,5856($s0)
    mflo	$a7
    lwc1	$f16,16($s1)
    sll	$a7,$a7,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a6,$a6,$a7
    lwc1	$f17,0($a6)
    ld	$a5,0($sp)
    swc1	$f17,8($s1)
    lwc1	$f15,180($a5)
    mtc1	$zero,$f13
    lwc1	$f12,196($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$at,5864($s0)
    addiu	$at,$at,-1
    mtc1	$at,$f23
    cvt.s.w	$f23,$f23
    lwc1	$f21,_lit_3f000000
    madd.s	$f21,$f21,$f23,$f0
    trunc.w.s	$f21,$f21
    lw	$t9,5928($s0)
    mfc1	$ra,$f21
    mult	$t9,$ra
    lw	$t3,5856($s0)
    mflo	$t8
    lwc1	$f8,8($s1)
    sll	$t8,$t8,0x2
    lwc1	$f6,4($s1)
    addu	$t3,$t3,$t8
    lwc1	$f7,0($t3)
    lwc1	$f5,0($s1)
    b	.L0da2d160
    swc1	$f7,16($s1)
.end __glTextureCTBlendI

# Function: __glTextureCTReplaceL
# Declared: Line 285 (Source lines: 286-294)
# Address: 0x0da2d7a0 - 0x0da2db04 (Size: 868 bytes, Frame: 48)
.globl __glTextureCTReplaceL
.ent __glTextureCTReplaceL
__glTextureCTReplaceL:
    # Line 286
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$s0,24($sp)
    sd	$s1,32($sp)
    # Line 289
    lwc1	$f5,12($a2)
    # Line 287
    lw	$v1,28208($a0)
    # Line 289
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    swc1	$f5,0($a2)
    # Line 286
    move	$s1,$a2
    move	$s0,$a0
    # Line 290
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6409
    # Line 286
    lui	$v0,0x2
    sd	$gp,16($sp)
    addiu	$v0,$v0,13804
    # Line 287
    addiu	$v1,$v1,4
    sd	$v1,0($sp)
    # Line 290
    beq	$a4,$at,.L0da2d9d4
    # Line 286
    addu	$gp,$t9,$v0
    # Line 290
    li	$a0,6410
    beq	$a4,$a0,.L0da2d9d4
    li	$a1,0x8049
    beq	$a4,$a1,.L0da2d9d4
    li	$a2,6407
    beq	$a4,$a2,.L0da2d860
    li	$a3,6408
    beq	$a4,$a3,.L0da2d864
    ld	$a5,0($sp)
.L0da2d818:
    # Line 291
    lwc1	$f4,30752($s0)
    ld	$a4,8($sp)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a4)
    # Line 292
    lwc1	$f3,30756($s0)
    lwc1	$f2,4($s1)
    # Line 294
    ld	$gp,16($sp)
    # Line 292
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    # Line 293
    lwc1	$f0,8($s1)
    lwc1	$f1,30760($s0)
    ld	$ra,40($sp)
    # Line 294
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 293
    mul.s	$f0,$f0,$f1
    # Line 294
    addiu	$sp,$sp,48
    jr	$ra
    # Line 293
    swc1	$f0,8($a4)
.L0da2d860:
    # Line 290
    ld	$a5,0($sp)
.L0da2d864:
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($a5)
    mtc1	$zero,$f13
    lwc1	$f12,184($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$t3,5864($s0)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t1,5928($s0)
    mfc1	$t2,$f18
    mult	$t1,$t2
    lw	$a7,5856($s0)
    mflo	$t0
    lwc1	$f16,4($s1)
    sll	$t0,$t0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a6,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,172($a6)
    mtc1	$zero,$f13
    lwc1	$f12,188($a6)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s0)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s0)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s0)
    mflo	$ra
    lwc1	$f16,8($s1)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,4($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,4($s1)
    lwc1	$f15,176($t8)
    mtc1	$zero,$f13
    lwc1	$f12,192($t8)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f1,_lit_3f000000
    madd.s	$f1,$f1,$f2,$f0
    trunc.w.s	$f1,$f1
    lw	$a3,5928($s0)
    mfc1	$a4,$f1
    mult	$a3,$a4
    lw	$a1,5856($s0)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f0,8($a1)
    lwc1	$f31,0($s1)
    swc1	$f0,8($s1)
    # Line 291
    lwc1	$f29,30752($s0)
    ld	$a0,8($sp)
    mul.s	$f29,$f29,$f31
    swc1	$f29,0($a0)
    # Line 292
    lwc1	$f27,30756($s0)
    lwc1	$f25,4($s1)
    # Line 294
    ld	$gp,16($sp)
    # Line 292
    mul.s	$f25,$f25,$f27
    swc1	$f25,4($a0)
    # Line 293
    lwc1	$f21,8($s1)
    lwc1	$f23,30760($s0)
    ld	$ra,40($sp)
    # Line 294
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 293
    mul.s	$f21,$f21,$f23
    # Line 294
    addiu	$sp,$sp,48
    jr	$ra
    # Line 293
    swc1	$f21,8($a0)
.L0da2d9d4:
    # Line 290
    ld	$a6,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($a6)
    mtc1	$zero,$f13
    lwc1	$f12,184($a6)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$t8,5864($s0)
    addiu	$t8,$t8,-1
    mtc1	$t8,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t2,5928($s0)
    mfc1	$t3,$f18
    mult	$t2,$t3
    lw	$t0,5856($s0)
    mflo	$t1
    lwc1	$f16,4($s1)
    sll	$t1,$t1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$t0,$t0,$t1
    lwc1	$f17,0($t0)
    ld	$a7,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,172($a7)
    mtc1	$zero,$f13
    lwc1	$f12,188($a7)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a1,5864($s0)
    addiu	$a1,$a1,-1
    mtc1	$a1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$v1,5928($s0)
    mfc1	$a0,$f18
    mult	$v1,$a0
    lw	$at,5856($s0)
    mflo	$v0
    lwc1	$f16,8($s1)
    sll	$v0,$v0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$at,$at,$v0
    lwc1	$f17,0($at)
    ld	$ra,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($ra)
    mtc1	$zero,$f13
    lwc1	$f12,192($ra)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a6,5864($s0)
    addiu	$a6,$a6,-1
    mtc1	$a6,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$a4,5928($s0)
    mfc1	$a5,$f23
    mult	$a4,$a5
    lw	$a2,5856($s0)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lwc1	$f21,0($a2)
    lwc1	$f5,0($s1)
    b	.L0da2d818
    swc1	$f21,8($s1)
.end __glTextureCTReplaceL

# Function: __glTextureCTReplaceLA
# Declared: Line 297 (Source lines: 298-307)
# Address: 0x0da2db10 - 0x0da2e170 (Size: 1632 bytes, Frame: 48)
.globl __glTextureCTReplaceLA
.ent __glTextureCTReplaceLA
__glTextureCTReplaceLA:
    # Line 298
    addiu	$sp,$sp,-48
    sd	$a1,16($sp)
    sd	$s0,32($sp)
    sd	$s1,24($sp)
    # Line 301
    lwc1	$f5,12($a2)
    # Line 299
    lw	$a5,28208($a0)
    # Line 301
    swc1	$f5,8($a2)
    # Line 302
    li	$a6,6406
    # Line 301
    swc1	$f5,4($a2)
    # Line 302
    li	$a3,6407
    # Line 298
    move	$s1,$a2
    # Line 301
    swc1	$f5,0($a2)
    # Line 298
    move	$s0,$a0
    # Line 302
    li	$a1,0x8049
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6410
    # Line 298
    lui	$v0,0x2
    sd	$gp,8($sp)
    addiu	$v0,$v0,12924
    # Line 299
    addiu	$v1,$a5,4
    sd	$v1,0($sp)
    # Line 302
    beq	$a4,$at,.L0da2dea8
    # Line 298
    addu	$gp,$t9,$v0
    # Line 302
    li	$a0,6409
    beq	$a4,$a0,.L0da2dbf4
    li	$a2,6408
    beq	$a4,$a1,.L0da2dfe0
    nop
    beq	$a4,$a2,.L0da2df10
    nop
    beq	$a4,$a3,.L0da2dd78
    nop
    beq	$a4,$a6,.L0da2df78
    nop
.L0da2db9c:
    # Line 303
    lwc1	$f6,30752($s0)
    ld	$a7,16($sp)
    mul.s	$f6,$f6,$f5
    swc1	$f6,0($a7)
    # Line 304
    lwc1	$f5,30756($s0)
    lwc1	$f4,4($s1)
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a7)
    # Line 305
    lwc1	$f3,30760($s0)
    lwc1	$f2,8($s1)
    # Line 307
    ld	$gp,8($sp)
    # Line 305
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a7)
    # Line 306
    lwc1	$f0,16($s1)
    lwc1	$f1,30792($s0)
    ld	$ra,40($sp)
    # Line 307
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 306
    mul.s	$f0,$f0,$f1
    # Line 307
    addiu	$sp,$sp,48
    jr	$ra
    # Line 306
    swc1	$f0,12($a7)
.L0da2dbf4:
    # Line 302
    ld	$t0,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t0)
    mtc1	$zero,$f13
    lwc1	$f12,184($t0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$ra,5864($s0)
    addiu	$ra,$ra,-1
    mtc1	$ra,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t8,5928($s0)
    mfc1	$t9,$f18
    mult	$t8,$t9
    lw	$t2,5856($s0)
    mflo	$t3
    lwc1	$f16,4($s1)
    sll	$t3,$t3,0x2
    ld	$t1,0($sp)
    addu	$t2,$t2,$t3
    lwc1	$f17,0($t2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s1)
    lwc1	$f15,172($t1)
    mtc1	$zero,$f13
    lwc1	$f12,188($t1)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a2,5864($s0)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($s0)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($s0)
    mflo	$v1
    lwc1	$f16,8($s1)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($at)
    mtc1	$zero,$f13
    lwc1	$f12,192($at)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f3,_lit_3f000000
    madd.s	$f3,$f3,$f4,$f0
    trunc.w.s	$f3,$f3
    lw	$a6,5928($s0)
    mfc1	$a7,$f3
    mult	$a6,$a7
    lw	$a4,5856($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f2,0($a4)
    lwc1	$f1,0($s1)
    swc1	$f2,8($s1)
    # Line 303
    lwc1	$f0,30752($s0)
    ld	$a3,16($sp)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 304
    lwc1	$f31,30756($s0)
    lwc1	$f29,4($s1)
    mul.s	$f29,$f29,$f31
    swc1	$f29,4($a3)
    # Line 305
    lwc1	$f27,30760($s0)
    lwc1	$f25,8($s1)
    # Line 307
    ld	$gp,8($sp)
    # Line 305
    mul.s	$f25,$f25,$f27
    swc1	$f25,8($a3)
    # Line 306
    lwc1	$f21,16($s1)
    lwc1	$f23,30792($s0)
    ld	$ra,40($sp)
    # Line 307
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 306
    mul.s	$f21,$f21,$f23
    # Line 307
    addiu	$sp,$sp,48
    jr	$ra
    # Line 306
    swc1	$f21,12($a3)
.L0da2dd78:
    # Line 302
    ld	$t1,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t1)
    mtc1	$zero,$f13
    lwc1	$f12,184($t1)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$at,5864($s0)
    addiu	$at,$at,-1
    mtc1	$at,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t9,5928($s0)
    mfc1	$ra,$f18
    mult	$t9,$ra
    lw	$t3,5856($s0)
    mflo	$t8
    lwc1	$f16,4($s1)
    sll	$t8,$t8,0x2
    ld	$t2,0($sp)
    addu	$t3,$t3,$t8
    lwc1	$f17,0($t3)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s1)
    lwc1	$f15,172($t2)
    mtc1	$zero,$f13
    lwc1	$f12,188($t2)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a3,5864($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a1,5928($s0)
    mfc1	$a2,$f18
    mult	$a1,$a2
    lw	$v1,5856($s0)
    mflo	$a0
    lwc1	$f16,8($s1)
    sll	$a0,$a0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v1,$v1,$a0
    lwc1	$f17,4($v1)
    ld	$v0,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($v0)
    mtc1	$zero,$f13
    lwc1	$f12,192($v0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$a6,5928($s0)
    mfc1	$a7,$f23
    mult	$a6,$a7
    lw	$a4,5856($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f21,8($a4)
    lwc1	$f5,0($s1)
    b	.L0da2db9c
    swc1	$f21,8($s1)
.L0da2dea8:
    lwc1	$f16,16($a2)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t9,5864($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t3,5928($s0)
    mfc1	$t8,$f18
    mult	$t3,$t8
    lw	$t1,5856($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    lwc1	$f5,0($s1)
    b	.L0da2dbf4
    swc1	$f17,16($s1)
.L0da2df10:
    lwc1	$f16,16($s1)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a0,5864($s0)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$v0,5928($s0)
    mfc1	$v1,$f18
    mult	$v0,$v1
    lw	$ra,5856($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f17,12($ra)
    lwc1	$f5,0($s1)
    b	.L0da2dd78
    swc1	$f17,16($s1)
.L0da2df78:
    lwc1	$f16,16($s1)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s0)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s0)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    lwc1	$f5,0($s1)
    b	.L0da2db9c
    swc1	$f17,16($s1)
.L0da2dfe0:
    lwc1	$f15,172($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,188($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$t3,5864($s0)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t1,5928($s0)
    mfc1	$t2,$f18
    mult	$t1,$t2
    lw	$a7,5856($s0)
    mflo	$t0
    lwc1	$f16,4($s1)
    sll	$t0,$t0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a6,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,172($a6)
    mtc1	$zero,$f13
    lwc1	$f12,188($a6)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s0)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s0)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s0)
    mflo	$ra
    lwc1	$f16,8($s1)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,4($s1)
    lwc1	$f15,176($t8)
    mtc1	$zero,$f13
    lwc1	$f12,192($t8)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s0)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s0)
    mflo	$a2
    lwc1	$f16,16($s1)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,8($s1)
    lwc1	$f15,180($a0)
    mtc1	$zero,$f13
    lwc1	$f12,196($a0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s0)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$t0,5928($s0)
    mfc1	$t1,$f23
    mult	$t0,$t1
    lw	$a6,5856($s0)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f21,0($a6)
    lwc1	$f5,0($s1)
    b	.L0da2db9c
    swc1	$f21,16($s1)
.end __glTextureCTReplaceLA

# Function: __glTextureCTReplaceRGB
# Declared: Line 310 (Source lines: 311-318)
# Address: 0x0da2e170 - 0x0da2e4cc (Size: 860 bytes, Frame: 48)
.globl __glTextureCTReplaceRGB
.ent __glTextureCTReplaceRGB
__glTextureCTReplaceRGB:
    # Line 311
    addiu	$sp,$sp,-48
    sd	$a1,8($sp)
    sd	$s1,32($sp)
    sd	$s0,24($sp)
    # Line 312
    lw	$v1,28208($a0)
    # Line 311
    move	$s0,$a2
    move	$s1,$a0
    # Line 314
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6409
    # Line 311
    lui	$v0,0x2
    sd	$gp,16($sp)
    addiu	$v0,$v0,11292
    # Line 312
    addiu	$v1,$v1,4
    sd	$v1,0($sp)
    # Line 314
    beq	$a4,$at,.L0da2e39c
    # Line 311
    addu	$gp,$t9,$v0
    # Line 314
    li	$a0,6410
    beq	$a4,$a0,.L0da2e39c
    li	$a1,0x8049
    beq	$a4,$a1,.L0da2e39c
    li	$a2,6407
    beq	$a4,$a2,.L0da2e224
    li	$a3,6408
    beq	$a4,$a3,.L0da2e224
    nop
.L0da2e1d8:
    # Line 315
    lwc1	$f5,30752($s1)
    lwc1	$f4,0($s0)
    ld	$a4,8($sp)
    mul.s	$f4,$f4,$f5
    swc1	$f4,0($a4)
    # Line 316
    lwc1	$f3,30756($s1)
    lwc1	$f2,4($s0)
    # Line 318
    ld	$gp,16($sp)
    # Line 316
    mul.s	$f2,$f2,$f3
    swc1	$f2,4($a4)
    # Line 317
    lwc1	$f1,30760($s1)
    lwc1	$f0,8($s0)
    ld	$ra,40($sp)
    # Line 318
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 317
    mul.s	$f0,$f0,$f1
    # Line 318
    addiu	$sp,$sp,48
    jr	$ra
    # Line 317
    swc1	$f0,8($a4)
.L0da2e224:
    # Line 314
    lwc1	$f15,0($s0)
    ld	$a5,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($a5)
    mtc1	$zero,$f13
    lwc1	$f12,184($a5)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t3,5864($s1)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t1,5928($s1)
    mfc1	$t2,$f18
    mult	$t1,$t2
    lw	$a7,5856($s1)
    mflo	$t0
    lwc1	$f16,4($s0)
    sll	$t0,$t0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a6,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,172($a6)
    mtc1	$zero,$f13
    lwc1	$f12,188($a6)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s1)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s1)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s1)
    mflo	$ra
    lwc1	$f16,8($s0)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,4($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,4($s0)
    lwc1	$f15,176($t8)
    mtc1	$zero,$f13
    lwc1	$f12,192($t8)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s1)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f2
    cvt.s.w	$f2,$f2
    lwc1	$f1,_lit_3f000000
    madd.s	$f1,$f1,$f2,$f0
    trunc.w.s	$f1,$f1
    lw	$a3,5928($s1)
    mfc1	$a4,$f1
    mult	$a3,$a4
    lw	$a1,5856($s1)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f0,8($a1)
    # Line 315
    lwc1	$f29,0($s0)
    # Line 314
    swc1	$f0,8($s0)
    # Line 315
    lwc1	$f31,30752($s1)
    ld	$a0,8($sp)
    mul.s	$f29,$f29,$f31
    swc1	$f29,0($a0)
    # Line 316
    lwc1	$f27,30756($s1)
    lwc1	$f25,4($s0)
    # Line 318
    ld	$gp,16($sp)
    # Line 316
    mul.s	$f25,$f25,$f27
    swc1	$f25,4($a0)
    # Line 317
    lwc1	$f23,30760($s1)
    lwc1	$f21,8($s0)
    ld	$ra,40($sp)
    # Line 318
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 317
    mul.s	$f21,$f21,$f23
    # Line 318
    addiu	$sp,$sp,48
    jr	$ra
    # Line 317
    swc1	$f21,8($a0)
.L0da2e39c:
    # Line 314
    lwc1	$f15,0($s0)
    ld	$a6,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($a6)
    mtc1	$zero,$f13
    lwc1	$f12,184($a6)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t8,5864($s1)
    addiu	$t8,$t8,-1
    mtc1	$t8,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t2,5928($s1)
    mfc1	$t3,$f18
    mult	$t2,$t3
    lw	$t0,5856($s1)
    mflo	$t1
    lwc1	$f16,4($s0)
    sll	$t1,$t1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$t0,$t0,$t1
    lwc1	$f17,0($t0)
    ld	$a7,0($sp)
    swc1	$f17,0($s0)
    lwc1	$f15,172($a7)
    mtc1	$zero,$f13
    lwc1	$f12,188($a7)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a1,5864($s1)
    addiu	$a1,$a1,-1
    mtc1	$a1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$v1,5928($s1)
    mfc1	$a0,$f18
    mult	$v1,$a0
    lw	$at,5856($s1)
    mflo	$v0
    lwc1	$f16,8($s0)
    sll	$v0,$v0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$at,$at,$v0
    lwc1	$f17,0($at)
    ld	$ra,0($sp)
    swc1	$f17,4($s0)
    lwc1	$f15,176($ra)
    mtc1	$zero,$f13
    lwc1	$f12,192($ra)
    lwc1	$f14,3544($s1)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a6,5864($s1)
    addiu	$a6,$a6,-1
    mtc1	$a6,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$a4,5928($s1)
    mfc1	$a5,$f23
    mult	$a4,$a5
    lw	$a2,5856($s1)
    mflo	$a3
    sll	$a3,$a3,0x2
    addu	$a2,$a2,$a3
    lwc1	$f21,0($a2)
    b	.L0da2e1d8
    swc1	$f21,8($s0)
.end __glTextureCTReplaceRGB

# Function: __glTextureCTReplaceRGBA
# Declared: Line 321 (Source lines: 322-330)
# Address: 0x0da2e4d0 - 0x0da2eb20 (Size: 1616 bytes, Frame: 48)
.globl __glTextureCTReplaceRGBA
.ent __glTextureCTReplaceRGBA
__glTextureCTReplaceRGBA:
    # Line 322
    addiu	$sp,$sp,-48
    sd	$a1,16($sp)
    sd	$s0,32($sp)
    # Line 325
    li	$a6,6406
    # Line 322
    sd	$s1,24($sp)
    # Line 325
    li	$a3,6407
    # Line 322
    move	$s1,$a2
    # Line 323
    lw	$a5,28208($a0)
    # Line 322
    move	$s0,$a0
    # Line 325
    li	$a1,0x8049
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6410
    # Line 322
    lui	$v0,0x2
    sd	$gp,8($sp)
    addiu	$v0,$v0,10428
    # Line 323
    addiu	$v1,$a5,4
    sd	$v1,0($sp)
    # Line 325
    beq	$a4,$at,.L0da2e864
    # Line 322
    addu	$gp,$t9,$v0
    # Line 325
    li	$a0,6409
    beq	$a4,$a0,.L0da2e5ac
    nop
    beq	$a4,$a1,.L0da2e990
    nop
    li	$a2,6408
    beq	$a4,$a2,.L0da2e8c8
    nop
    beq	$a4,$a3,.L0da2e734
    nop
    beq	$a4,$a6,.L0da2e92c
    nop
.L0da2e550:
    # Line 326
    lwc1	$f7,30752($s0)
    lwc1	$f6,0($s1)
    ld	$a7,16($sp)
    mul.s	$f6,$f6,$f7
    swc1	$f6,0($a7)
    # Line 327
    lwc1	$f5,30756($s0)
    lwc1	$f4,4($s1)
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a7)
    # Line 328
    lwc1	$f3,30760($s0)
    lwc1	$f2,8($s1)
    # Line 330
    ld	$gp,8($sp)
    # Line 328
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a7)
    # Line 329
    lwc1	$f0,16($s1)
    lwc1	$f1,30792($s0)
    ld	$ra,40($sp)
    # Line 330
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 329
    mul.s	$f0,$f0,$f1
    # Line 330
    addiu	$sp,$sp,48
    jr	$ra
    # Line 329
    swc1	$f0,12($a7)
.L0da2e5ac:
    # Line 325
    lwc1	$f15,0($s1)
    ld	$t0,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($t0)
    mtc1	$zero,$f13
    lwc1	$f12,184($t0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$ra,5864($s0)
    addiu	$ra,$ra,-1
    mtc1	$ra,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t8,5928($s0)
    mfc1	$t9,$f18
    mult	$t8,$t9
    lw	$t2,5856($s0)
    mflo	$t3
    lwc1	$f16,4($s1)
    sll	$t3,$t3,0x2
    ld	$t1,0($sp)
    addu	$t2,$t2,$t3
    lwc1	$f17,0($t2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s1)
    lwc1	$f15,172($t1)
    mtc1	$zero,$f13
    lwc1	$f12,188($t1)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a2,5864($s0)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($s0)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($s0)
    mflo	$v1
    lwc1	$f16,8($s1)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($at)
    mtc1	$zero,$f13
    lwc1	$f12,192($at)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f3,_lit_3f000000
    madd.s	$f3,$f3,$f4,$f0
    trunc.w.s	$f3,$f3
    lw	$a6,5928($s0)
    mfc1	$a7,$f3
    mult	$a6,$a7
    lw	$a4,5856($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f2,0($a4)
    # Line 326
    lwc1	$f0,0($s1)
    # Line 325
    swc1	$f2,8($s1)
    # Line 326
    lwc1	$f1,30752($s0)
    ld	$a3,16($sp)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 327
    lwc1	$f31,30756($s0)
    lwc1	$f29,4($s1)
    mul.s	$f29,$f29,$f31
    swc1	$f29,4($a3)
    # Line 328
    lwc1	$f27,30760($s0)
    lwc1	$f25,8($s1)
    # Line 330
    ld	$gp,8($sp)
    # Line 328
    mul.s	$f25,$f25,$f27
    swc1	$f25,8($a3)
    # Line 329
    lwc1	$f21,16($s1)
    lwc1	$f23,30792($s0)
    ld	$ra,40($sp)
    # Line 330
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 329
    mul.s	$f21,$f21,$f23
    # Line 330
    addiu	$sp,$sp,48
    jr	$ra
    # Line 329
    swc1	$f21,12($a3)
.L0da2e734:
    # Line 325
    lwc1	$f15,0($s1)
    ld	$t1,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f16,168($t1)
    mtc1	$zero,$f13
    lwc1	$f12,184($t1)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$at,5864($s0)
    addiu	$at,$at,-1
    mtc1	$at,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t9,5928($s0)
    mfc1	$ra,$f18
    mult	$t9,$ra
    lw	$t3,5856($s0)
    mflo	$t8
    lwc1	$f16,4($s1)
    sll	$t8,$t8,0x2
    ld	$t2,0($sp)
    addu	$t3,$t3,$t8
    lwc1	$f17,0($t3)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s1)
    lwc1	$f15,172($t2)
    mtc1	$zero,$f13
    lwc1	$f12,188($t2)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a3,5864($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a1,5928($s0)
    mfc1	$a2,$f18
    mult	$a1,$a2
    lw	$v1,5856($s0)
    mflo	$a0
    lwc1	$f16,8($s1)
    sll	$a0,$a0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v1,$v1,$a0
    lwc1	$f17,4($v1)
    ld	$v0,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($v0)
    mtc1	$zero,$f13
    lwc1	$f12,192($v0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$a6,5928($s0)
    mfc1	$a7,$f23
    mult	$a6,$a7
    lw	$a4,5856($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f21,8($a4)
    b	.L0da2e550
    swc1	$f21,8($s1)
.L0da2e864:
    lwc1	$f16,16($a2)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t9,5864($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t3,5928($s0)
    mfc1	$t8,$f18
    mult	$t3,$t8
    lw	$t1,5856($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f17,4($t1)
    b	.L0da2e5ac
    swc1	$f17,16($s1)
.L0da2e8c8:
    lwc1	$f16,16($s1)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a0,5864($s0)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$v0,5928($s0)
    mfc1	$v1,$f18
    mult	$v0,$v1
    lw	$ra,5856($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f17,12($ra)
    b	.L0da2e734
    swc1	$f17,16($s1)
.L0da2e92c:
    lwc1	$f16,16($s1)
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s0)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s0)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    b	.L0da2e550
    swc1	$f17,16($s1)
.L0da2e990:
    lwc1	$f16,172($a5)
    lwc1	$f15,0($a2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,188($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t3,5864($s0)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t1,5928($s0)
    mfc1	$t2,$f18
    mult	$t1,$t2
    lw	$a7,5856($s0)
    mflo	$t0
    lwc1	$f16,4($s1)
    sll	$t0,$t0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a6,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,172($a6)
    mtc1	$zero,$f13
    lwc1	$f12,188($a6)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s0)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s0)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s0)
    mflo	$ra
    lwc1	$f16,8($s1)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,4($s1)
    lwc1	$f15,176($t8)
    mtc1	$zero,$f13
    lwc1	$f12,192($t8)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s0)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s0)
    mflo	$a2
    lwc1	$f16,16($s1)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,8($s1)
    lwc1	$f15,180($a0)
    mtc1	$zero,$f13
    lwc1	$f12,196($a0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s0)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$t0,5928($s0)
    mfc1	$t1,$f23
    mult	$t0,$t1
    lw	$a6,5856($s0)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f21,0($a6)
    b	.L0da2e550
    swc1	$f21,16($s1)
.end __glTextureCTReplaceRGBA

# Function: __glTextureCTReplaceA
# Declared: Line 333 (Source lines: 334-339)
# Address: 0x0da2eb20 - 0x0da2ecf0 (Size: 464 bytes, Frame: 48)
.globl __glTextureCTReplaceA
.ent __glTextureCTReplaceA
__glTextureCTReplaceA:
    # Line 334
    addiu	$sp,$sp,-48
    sd	$s0,24($sp)
    sd	$s1,8($sp)
    # Line 335
    lw	$a5,28208($a0)
    # Line 334
    move	$s1,$a2
    move	$s0,$a0
    # Line 337
    lw	$a4,5924($a0)
    # Line 334
    sd	$a1,0($sp)
    # Line 337
    li	$at,6406
    # Line 334
    lui	$v0,0x2
    sd	$ra,32($sp)
    addiu	$v0,$v0,8812
    # Line 335
    addiu	$a6,$a5,4
    sd	$gp,16($sp)
    # Line 337
    beq	$a4,$at,.L0da2ec2c
    # Line 334
    addu	$gp,$t9,$v0
    # Line 337
    li	$v1,0x8049
    beq	$a4,$v1,.L0da2ec2c
    li	$a0,6408
    beq	$a4,$a0,.L0da2ec90
    lwc1	$f5,16($a2)
    li	$a1,6410
    beq	$a4,$a1,.L0da2eba8
    nop
.L0da2eb80:
    ld	$s1,8($sp)
    # Line 339
    ld	$gp,16($sp)
    # Line 338
    lwc1	$f0,30792($s0)
    ld	$ra,32($sp)
    ld	$a2,0($sp)
    # Line 339
    ld	$s0,24($sp)
    # Line 338
    mul.s	$f0,$f0,$f5
    # Line 339
    addiu	$sp,$sp,48
    jr	$ra
    # Line 338
    swc1	$f0,12($a2)
.L0da2eba8:
    # Line 337
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    lw	$t0,5864($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a6,5928($s0)
    mfc1	$a7,$f18
    mult	$a6,$a7
    lw	$a4,5856($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    # Line 339
    ld	$gp,16($sp)
    # Line 337
    addu	$a4,$a4,$a5
    lwc1	$f17,4($a4)
    # Line 338
    ld	$a3,0($sp)
    # Line 337
    swc1	$f17,16($s1)
    # Line 338
    lwc1	$f16,30792($s0)
    ld	$ra,32($sp)
    # Line 339
    ld	$s0,24($sp)
    ld	$s1,8($sp)
    # Line 338
    mul.s	$f16,$f16,$f17
    # Line 339
    addiu	$sp,$sp,48
    jr	$ra
    # Line 338
    swc1	$f16,12($a3)
.L0da2ec2c:
    # Line 337
    lwc1	$f16,16($s1)
    lwc1	$f15,180($a6)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,196($a6)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t9,5864($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    cvt.s.w	$f18,$f18
    lwc1	$f17,_lit_3f000000
    madd.s	$f17,$f17,$f18,$f0
    trunc.w.s	$f17,$f17
    lw	$t3,5928($s0)
    mfc1	$t8,$f17
    mult	$t3,$t8
    lw	$t1,5856($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f5,0($t1)
    b	.L0da2eb80
    swc1	$f5,16($s1)
.L0da2ec90:
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,184($a5)
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    lw	$a0,5864($s0)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f17
    cvt.s.w	$f17,$f17
    lwc1	$f16,_lit_3f000000
    madd.s	$f16,$f16,$f17,$f0
    trunc.w.s	$f16,$f16
    lw	$v0,5928($s0)
    mfc1	$v1,$f16
    mult	$v0,$v1
    lw	$ra,5856($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f5,12($ra)
    b	.L0da2eb80
    swc1	$f5,16($s1)
.end __glTextureCTReplaceA

# Function: __glTextureCTReplaceI
# Declared: Line 342 (Source lines: 343-352)
# Address: 0x0da2ecf0 - 0x0da2f344 (Size: 1620 bytes, Frame: 48)
.globl __glTextureCTReplaceI
.ent __glTextureCTReplaceI
__glTextureCTReplaceI:
    # Line 343
    addiu	$sp,$sp,-48
    sd	$a1,16($sp)
    sd	$s1,24($sp)
    sd	$s0,32($sp)
    # Line 346
    lwc1	$f5,20($a2)
    # Line 344
    lw	$a5,28208($a0)
    # Line 346
    swc1	$f5,16($a2)
    swc1	$f5,8($a2)
    swc1	$f5,4($a2)
    # Line 347
    li	$a6,6406
    li	$a3,6407
    # Line 346
    swc1	$f5,0($a2)
    # Line 343
    move	$s0,$a0
    move	$s1,$a2
    # Line 347
    lw	$a4,5924($a0)
    sd	$ra,40($sp)
    li	$at,6410
    # Line 343
    lui	$v0,0x2
    sd	$gp,8($sp)
    addiu	$v0,$v0,8348
    # Line 344
    addiu	$v1,$a5,4
    sd	$v1,0($sp)
    # Line 347
    beq	$a4,$at,.L0da2f088
    # Line 343
    addu	$gp,$t9,$v0
    # Line 347
    li	$a0,6409
    beq	$a4,$a0,.L0da2edd4
    li	$a1,0x8049
    beq	$a4,$a1,.L0da2f1b4
    li	$a2,6408
    beq	$a4,$a2,.L0da2f0ec
    nop
    beq	$a4,$a3,.L0da2ef58
    nop
    beq	$a4,$a6,.L0da2f150
    nop
.L0da2ed7c:
    # Line 348
    lwc1	$f6,30752($s0)
    ld	$a7,16($sp)
    mul.s	$f6,$f6,$f5
    swc1	$f6,0($a7)
    # Line 349
    lwc1	$f5,30756($s0)
    lwc1	$f4,4($s1)
    mul.s	$f4,$f4,$f5
    swc1	$f4,4($a7)
    # Line 350
    lwc1	$f3,30760($s0)
    lwc1	$f2,8($s1)
    # Line 352
    ld	$gp,8($sp)
    # Line 350
    mul.s	$f2,$f2,$f3
    swc1	$f2,8($a7)
    # Line 351
    lwc1	$f0,16($s1)
    lwc1	$f1,30792($s0)
    ld	$ra,40($sp)
    # Line 352
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 351
    mul.s	$f0,$f0,$f1
    # Line 352
    addiu	$sp,$sp,48
    jr	$ra
    # Line 351
    swc1	$f0,12($a7)
.L0da2edd4:
    # Line 347
    ld	$t0,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t0)
    mtc1	$zero,$f13
    lwc1	$f12,184($t0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$ra,5864($s0)
    addiu	$ra,$ra,-1
    mtc1	$ra,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t8,5928($s0)
    mfc1	$t9,$f18
    mult	$t8,$t9
    lw	$t2,5856($s0)
    mflo	$t3
    lwc1	$f16,4($s1)
    sll	$t3,$t3,0x2
    ld	$t1,0($sp)
    addu	$t2,$t2,$t3
    lwc1	$f17,0($t2)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s1)
    lwc1	$f15,172($t1)
    mtc1	$zero,$f13
    lwc1	$f12,188($t1)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a2,5864($s0)
    addiu	$a2,$a2,-1
    mtc1	$a2,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a0,5928($s0)
    mfc1	$a1,$f18
    mult	$a0,$a1
    lw	$v0,5856($s0)
    mflo	$v1
    lwc1	$f16,8($s1)
    sll	$v1,$v1,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v0,$v0,$v1
    lwc1	$f17,0($v0)
    ld	$at,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($at)
    mtc1	$zero,$f13
    lwc1	$f12,192($at)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f4
    cvt.s.w	$f4,$f4
    lwc1	$f3,_lit_3f000000
    madd.s	$f3,$f3,$f4,$f0
    trunc.w.s	$f3,$f3
    lw	$a6,5928($s0)
    mfc1	$a7,$f3
    mult	$a6,$a7
    lw	$a4,5856($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f2,0($a4)
    lwc1	$f1,0($s1)
    swc1	$f2,8($s1)
    # Line 348
    lwc1	$f0,30752($s0)
    ld	$a3,16($sp)
    mul.s	$f0,$f0,$f1
    swc1	$f0,0($a3)
    # Line 349
    lwc1	$f31,30756($s0)
    lwc1	$f29,4($s1)
    mul.s	$f29,$f29,$f31
    swc1	$f29,4($a3)
    # Line 350
    lwc1	$f27,30760($s0)
    lwc1	$f25,8($s1)
    # Line 352
    ld	$gp,8($sp)
    # Line 350
    mul.s	$f25,$f25,$f27
    swc1	$f25,8($a3)
    # Line 351
    lwc1	$f21,16($s1)
    lwc1	$f23,30792($s0)
    ld	$ra,40($sp)
    # Line 352
    ld	$s0,32($sp)
    ld	$s1,24($sp)
    # Line 351
    mul.s	$f21,$f21,$f23
    # Line 352
    addiu	$sp,$sp,48
    jr	$ra
    # Line 351
    swc1	$f21,12($a3)
.L0da2ef58:
    # Line 347
    ld	$t1,0($sp)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    lwc1	$f15,168($t1)
    mtc1	$zero,$f13
    lwc1	$f12,184($t1)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$at,5864($s0)
    addiu	$at,$at,-1
    mtc1	$at,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t9,5928($s0)
    mfc1	$ra,$f18
    mult	$t9,$ra
    lw	$t3,5856($s0)
    mflo	$t8
    lwc1	$f16,4($s1)
    sll	$t8,$t8,0x2
    ld	$t2,0($sp)
    addu	$t3,$t3,$t8
    lwc1	$f17,0($t3)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,0($s1)
    lwc1	$f15,172($t2)
    mtc1	$zero,$f13
    lwc1	$f12,188($t2)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a3,5864($s0)
    addiu	$a3,$a3,-1
    mtc1	$a3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a1,5928($s0)
    mfc1	$a2,$f18
    mult	$a1,$a2
    lw	$v1,5856($s0)
    mflo	$a0
    lwc1	$f16,8($s1)
    sll	$a0,$a0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$v1,$v1,$a0
    lwc1	$f17,4($v1)
    ld	$v0,0($sp)
    swc1	$f17,4($s1)
    lwc1	$f15,176($v0)
    mtc1	$zero,$f13
    lwc1	$f12,192($v0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t0,5864($s0)
    addiu	$t0,$t0,-1
    mtc1	$t0,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$a6,5928($s0)
    mfc1	$a7,$f23
    mult	$a6,$a7
    lw	$a4,5856($s0)
    mflo	$a5
    sll	$a5,$a5,0x2
    addu	$a4,$a4,$a5
    lwc1	$f21,8($a4)
    lwc1	$f5,0($s1)
    b	.L0da2ed7c
    swc1	$f21,8($s1)
.L0da2f088:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($a0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    lw	$t9,5864($s0)
    addiu	$t9,$t9,-1
    mtc1	$t9,$f18
    cvt.s.w	$f18,$f18
    lwc1	$f17,_lit_3f000000
    madd.s	$f17,$f17,$f18,$f0
    trunc.w.s	$f17,$f17
    lw	$t3,5928($s0)
    mfc1	$t8,$f17
    mult	$t3,$t8
    lw	$t1,5856($s0)
    mflo	$t2
    sll	$t2,$t2,0x2
    addu	$t1,$t1,$t2
    lwc1	$f16,4($t1)
    lwc1	$f5,0($s1)
    b	.L0da2edd4
    swc1	$f16,16($s1)
.L0da2f0ec:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    lw	$a0,5864($s0)
    addiu	$a0,$a0,-1
    mtc1	$a0,$f18
    cvt.s.w	$f18,$f18
    lwc1	$f17,_lit_3f000000
    madd.s	$f17,$f17,$f18,$f0
    trunc.w.s	$f17,$f17
    lw	$v0,5928($s0)
    mfc1	$v1,$f17
    mult	$v0,$v1
    lw	$ra,5856($s0)
    mflo	$at
    sll	$at,$at,0x2
    addu	$ra,$ra,$at
    lwc1	$f16,12($ra)
    lwc1	$f5,0($s1)
    b	.L0da2ef58
    swc1	$f16,16($s1)
.L0da2f150:
    lwc1	$f15,184($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,200($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f5
    lw	$a5,5864($s0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f18
    cvt.s.w	$f18,$f18
    lwc1	$f17,_lit_3f000000
    madd.s	$f17,$f17,$f18,$f0
    trunc.w.s	$f17,$f17
    lw	$a3,5928($s0)
    mfc1	$a4,$f17
    mult	$a3,$a4
    lw	$a1,5856($s0)
    mflo	$a2
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lwc1	$f16,0($a1)
    lwc1	$f5,0($s1)
    b	.L0da2ed7c
    swc1	$f16,16($s1)
.L0da2f1b4:
    lwc1	$f15,172($a5)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    mtc1	$zero,$f13
    lwc1	$f12,188($a5)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f5,$f15
    lw	$t3,5864($s0)
    addiu	$t3,$t3,-1
    mtc1	$t3,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$t1,5928($s0)
    mfc1	$t2,$f18
    mult	$t1,$t2
    lw	$a7,5856($s0)
    mflo	$t0
    lwc1	$f16,4($s1)
    sll	$t0,$t0,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a7,$a7,$t0
    lwc1	$f17,0($a7)
    ld	$a6,0($sp)
    swc1	$f17,0($s1)
    lwc1	$f15,172($a6)
    mtc1	$zero,$f13
    lwc1	$f12,188($a6)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$v1,5864($s0)
    addiu	$v1,$v1,-1
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$at,5928($s0)
    mfc1	$v0,$f18
    mult	$at,$v0
    lw	$t9,5856($s0)
    mflo	$ra
    lwc1	$f16,8($s1)
    sll	$ra,$ra,0x2
    ld	$t8,0($sp)
    addu	$t9,$t9,$ra
    lwc1	$f17,0($t9)
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    swc1	$f17,4($s1)
    lwc1	$f15,176($t8)
    mtc1	$zero,$f13
    lwc1	$f12,192($t8)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$a5,5864($s0)
    addiu	$a5,$a5,-1
    mtc1	$a5,$f19
    cvt.s.w	$f19,$f19
    lwc1	$f18,_lit_3f000000
    madd.s	$f18,$f18,$f19,$f0
    trunc.w.s	$f18,$f18
    lw	$a3,5928($s0)
    mfc1	$a4,$f18
    mult	$a3,$a4
    lw	$a1,5856($s0)
    mflo	$a2
    lwc1	$f16,16($s1)
    sll	$a2,$a2,0x2
    # lw $t9, -24032($gp) # &__GL_TEXENV_CLAMP
    addu	$a1,$a1,$a2
    lwc1	$f17,0($a1)
    ld	$a0,0($sp)
    swc1	$f17,8($s1)
    lwc1	$f15,180($a0)
    mtc1	$zero,$f13
    lwc1	$f12,196($a0)
    lwc1	$f14,3544($s0)
    bal __GL_TEXENV_CLAMP
    madd.s	$f12,$f12,$f15,$f16
    lw	$t2,5864($s0)
    addiu	$t2,$t2,-1
    mtc1	$t2,$f25
    cvt.s.w	$f25,$f25
    lwc1	$f23,_lit_3f000000
    madd.s	$f23,$f23,$f25,$f0
    trunc.w.s	$f23,$f23
    lw	$t0,5928($s0)
    mfc1	$t1,$f23
    mult	$t0,$t1
    lw	$a6,5856($s0)
    mflo	$a7
    sll	$a7,$a7,0x2
    addu	$a6,$a6,$a7
    lwc1	$f21,0($a6)
    lwc1	$f5,0($s1)
    b	.L0da2ed7c
    swc1	$f21,16($s1)
.end __glTextureCTReplaceI

# Function: __glNopPolygonRho
# Declared: Line 4520 (Source lines: 4524-4524)
# Address: 0x0da2f350 - 0x0da2f358 (Size: 8 bytes, Frame: 0)
.globl __glNopPolygonRho
.ent __glNopPolygonRho
__glNopPolygonRho:
    # Line 4524
    jr	$ra
    mtc1	$zero,$f0
.end __glNopPolygonRho

# Function: __glComputePolygonRho
# Declared: Line 4533 (Source lines: 4536-4593)
# Address: 0x0da2f360 - 0x0da2f4a4 (Size: 324 bytes, Frame: 0)
.globl __glComputePolygonRho
.ent __glComputePolygonRho
__glComputePolygonRho:
    # Line 4544
    lwc1	$f19,256($a1)
    # Line 4543
    lwc1	$f11,3544($a0)
    # Line 4544
    sub.s	$f21,$f17,$f19
    # Line 4545
    add.s	$f19,$f19,$f17
    div.s	$f19,$f11,$f19
    # Line 4544
    div.s	$f21,$f11,$f21
    # Line 4553
    lwc1	$f13,276($a1)
    add.s	$f7,$f13,$f17
    div.s	$f7,$f11,$f7
    lwc1	$f6,248($a1)
    # Line 4548
    lwc1	$f8,244($a1)
    # Line 4553
    sub.s	$f5,$f15,$f6
    add.s	$f6,$f6,$f15
    # Line 4548
    sub.s	$f4,$f14,$f8
    # Line 4553
    mul.s	$f5,$f21,$f5
    # Line 4548
    add.s	$f8,$f8,$f14
    # Line 4553
    msub.s	$f5,$f5,$f19,$f6
    # Line 4540
    lw	$v0,28208($a0)
    # Line 4548
    mul.s	$f4,$f21,$f4
    # Line 4553
    lwc1	$f12,264($a1)
    # Line 4548
    msub.s	$f4,$f4,$f19,$f8
    lw	$a4,228($v0)
    # Line 4553
    lw	$v0,232($v0)
    sub.s	$f13,$f17,$f13
    # Line 4548
    lwc1	$f9,32($a4)
    # Line 4553
    lwc1	$f10,36($a4)
    div.s	$f11,$f11,$f13
    lwc1	$f8,268($a1)
    sub.s	$f13,$f14,$f12
    # Line 4548
    mul.s	$f4,$f9,$f4
    # Line 4536
    lui	$v1,0x2
    # Line 4553
    add.s	$f12,$f12,$f14
    slti	$v0,$v0,3
    mul.s	$f5,$f10,$f5
    # Line 4536
    addiu	$v1,$v1,6700
    # Line 4553
    sub.s	$f18,$f15,$f8
    mul.s	$f4,$f4,$f4
    # Line 4536
    addu	$at,$t9,$v1
    # Line 4553
    add.s	$f8,$f8,$f15
    bnez	$v0,.L0da2f464
    madd.s	$f4,$f4,$f5,$f5
    # Line 4567
    mul.s	$f17,$f13,$f11
    msub.s	$f17,$f17,$f12,$f7
    # Line 4572
    mul.s	$f5,$f18,$f11
    msub.s	$f5,$f5,$f8,$f7
    # Line 4578
    lwc1	$f25,272($a1)
    # Line 4559
    lwc1	$f23,252($a1)
    # Line 4578
    sub.s	$f14,$f16,$f25
    add.s	$f25,$f25,$f16
    # Line 4559
    sub.s	$f15,$f16,$f23
    # Line 4578
    mul.s	$f14,$f11,$f14
    # Line 4559
    add.s	$f23,$f23,$f16
    # Line 4578
    msub.s	$f14,$f14,$f7,$f25
    # Line 4559
    mul.s	$f15,$f21,$f15
    msub.s	$f15,$f15,$f19,$f23
    # Line 4572
    mul.s	$f5,$f10,$f5
    # Line 4559
    lwc1	$f6,40($a4)
    # Line 4567
    mul.s	$f17,$f9,$f17
    # Line 4582
    mul.s	$f5,$f5,$f5
    madd.s	$f5,$f5,$f17,$f17
    # Line 4578
    mul.s	$f14,$f6,$f14
    # Line 4559
    mul.s	$f6,$f6,$f15
    # Line 4582
    madd.s	$f5,$f5,$f14,$f14
    b	.L0da2f488
    # Line 4581
    madd.s	$f6,$f4,$f6,$f6
.L0da2f464:
    # Line 4572
    mul.s	$f5,$f18,$f11
    msub.s	$f5,$f5,$f8,$f7
    # Line 4567
    mul.s	$f14,$f13,$f11
    msub.s	$f14,$f14,$f12,$f7
    # Line 4585
    mov.s	$f6,$f4
    # Line 4572
    mul.s	$f5,$f10,$f5
    # Line 4567
    mul.s	$f14,$f9,$f14
    # Line 4586
    mul.s	$f5,$f5,$f5
    madd.s	$f5,$f5,$f14,$f14
.L0da2f488:
    c.lt.s	$f5,$f6
    bc1f	.L0da2f49c
    lwc1	$f7,_lit_3e800000
    # Line 4593
    jr	$ra
    # Line 4591
    mul.s	$f0,$f6,$f7
.L0da2f49c:
    # Line 4593
    jr	$ra
    mul.s	$f0,$f5,$f7
.end __glComputePolygonRho

# Function: __glNopLineRho
# Declared: Line 4598 (Source lines: 4602-4602)
# Address: 0x0da2f4b0 - 0x0da2f4b8 (Size: 8 bytes, Frame: 0)
.globl __glNopLineRho
.ent __glNopLineRho
__glNopLineRho:
    # Line 4602
    jr	$ra
    mtc1	$zero,$f0
.end __glNopLineRho

# Function: __glComputeLineRho
# Declared: Line 4605 (Source lines: 4615-4674)
# Address: 0x0da2f4c0 - 0x0da2f5e8 (Size: 296 bytes, Frame: 0)
.globl __glComputeLineRho
.ent __glComputeLineRho
__glComputeLineRho:
    # Line 4616
    lw	$a4,29948($a0)
    # Line 4617
    lw	$a3,29952($a0)
    # Line 4629
    lwc1	$f18,52($a4)
    # Line 4627
    lwc1	$f7,140($a3)
    # Line 4631
    lwc1	$f17,52($a3)
    # Line 4620
    lwc1	$f9,128($a4)
    lwc1	$f8,128($a3)
    # Line 4621
    lwc1	$f11,132($a4)
    lwc1	$f10,132($a3)
    # Line 4620
    sub.s	$f8,$f8,$f9
    # Line 4626
    lwc1	$f9,140($a4)
    # Line 4631
    mul.s	$f17,$f17,$f7
    # Line 4621
    sub.s	$f10,$f10,$f11
    # Line 4643
    sub.s	$f11,$f7,$f9
    # Line 4645
    nmsub.s	$f17,$f17,$f18,$f9
    nmsub.s	$f17,$f17,$f14,$f11
    # Line 4630
    lwc1	$f14,48($a3)
    # Line 4628
    lwc1	$f18,48($a4)
    # Line 4630
    mul.s	$f14,$f14,$f7
    # Line 4643
    nmsub.s	$f14,$f14,$f18,$f9
    nmsub.s	$f14,$f14,$f13,$f11
    div.s	$f14,$f14,$f16
    # Line 4623
    mul.s	$f12,$f10,$f10
    madd.s	$f12,$f12,$f8,$f8
    sqrt.s	$f12,$f12
    # Line 4645
    div.s	$f17,$f17,$f16
    # Line 4623
    lwc1	$f6,3544($a0)
    div.s	$f6,$f6,$f12
    # Line 4615
    lw	$at,28208($a0)
    # Line 4643
    lw	$a2,228($at)
    # Line 4645
    mul.s	$f5,$f17,$f8
    # Line 4643
    mul.s	$f6,$f6,$f6
    # Line 4646
    mul.s	$f13,$f17,$f10
    # Line 4645
    lwc1	$f12,36($a2)
    mul.s	$f5,$f6,$f5
    # Line 4646
    mul.s	$f13,$f6,$f13
    # Line 4645
    mul.s	$f5,$f12,$f5
    # Line 4646
    mul.s	$f12,$f12,$f13
    # Line 4651
    mul.s	$f5,$f8,$f5
    madd.s	$f5,$f5,$f10,$f12
    # Line 4643
    mul.s	$f12,$f14,$f8
    lwc1	$f13,32($a2)
    # Line 4644
    mul.s	$f14,$f14,$f10
    # Line 4643
    mul.s	$f12,$f6,$f12
    # Line 4644
    mul.s	$f14,$f6,$f14
    # Line 4643
    mul.s	$f12,$f13,$f12
    # Line 4644
    mul.s	$f13,$f13,$f14
    # Line 4651
    mul.s	$f12,$f8,$f12
    lw	$at,232($at)
    madd.s	$f12,$f12,$f10,$f13
    # Line 4660
    lwc1	$f2,56($a3)
    # Line 4651
    slti	$at,$at,3
    # Line 4659
    lwc1	$f3,56($a4)
    # Line 4651
    mul.s	$f5,$f5,$f5
    # Line 4667
    lwc1	$f1,40($a2)
    # Line 4651
    bnez	$at,.L0da2f5e0
    madd.s	$f5,$f5,$f12,$f12
    # Line 4660
    mul.s	$f2,$f2,$f7
    # Line 4667
    nmsub.s	$f2,$f2,$f3,$f9
    nmsub.s	$f2,$f2,$f15,$f11
    div.s	$f2,$f2,$f16
    mul.s	$f0,$f2,$f8
    # Line 4668
    mul.s	$f2,$f2,$f10
    # Line 4667
    mul.s	$f0,$f6,$f0
    # Line 4668
    mul.s	$f2,$f6,$f2
    # Line 4667
    mul.s	$f0,$f1,$f0
    # Line 4668
    mul.s	$f1,$f1,$f2
    # Line 4671
    mul.s	$f0,$f8,$f0
    madd.s	$f0,$f0,$f10,$f1
    madd.s	$f0,$f5,$f0,$f0
    # Line 4674
    jr	$ra
    mul.s	$f0,$f6,$f0
.L0da2f5e0:
    jr	$ra
    mul.s	$f0,$f6,$f5
.end __glComputeLineRho

# Function: __glFastTextureFragment
# Declared: Line 4685 (Source lines: 4688-4697)
# Address: 0x0da2f5f0 - 0x0da2f65c (Size: 108 bytes, Frame: 192)
.globl __glFastTextureFragment
.ent __glFastTextureFragment
__glFastTextureFragment:
    # Line 4688
    addiu	$sp,$sp,-64
    # Line 4689
    lw	$at,28208($a0)
    sd	$at,48($sp)
    # Line 4688
    lui	$v0,0x2
    sd	$gp,40($sp)
    addiu	$v0,$v0,6044
    addu	$gp,$t9,$v0
    # Line 4695
    lw	$t9,264($at)
    mtc1	$zero,$f13
    # Line 4688
    sd	$a1,56($sp)
    # Line 4695
    addiu	$a5,$sp,0
    # Line 4688
    sd	$s8,32($sp)
    move	$s8,$a0
    sd	$ra,24($sp)
    # Line 4695
    jalr	$t9
    move	$a0,$at
    # Line 4696
    ld	$t9,48($sp)
    lw	$t9,260($t9)
    move	$a0,$s8
    ld	$a1,56($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$ra,24($sp)
    ld	$s8,32($sp)
    # Line 4697
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glFastTextureFragment

# Function: __glTextureFragment
# Declared: Line 4702 (Source lines: 4705-4717)
# Address: 0x0da2f660 - 0x0da2f6e8 (Size: 136 bytes, Frame: 192)
.globl __glTextureFragment
.ent __glTextureFragment
__glTextureFragment:
    # Line 4705
    addiu	$sp,$sp,-64
    sd	$s0,40($sp)
    # Line 4706
    lw	$s0,28208($a0)
    lwc1	$f0,240($s0)
    # Line 4705
    sd	$a1,32($sp)
    # Line 4706
    c.le.s	$f17,$f0
    # Line 4705
    sd	$a0,24($sp)
    lui	$at,0x2
    sd	$ra,56($sp)
    addiu	$at,$at,5932
    # Line 4706
    mtc1	$zero,$f13
    sd	$gp,48($sp)
    bc1f	.L0da2f6d0
    # Line 4705
    addu	$gp,$t9,$at
    # Line 4710
    lw	$t9,264($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a5,$sp,0
    # Line 4716
    lw	$t9,260($s0)
.L0da2f6ac:
    ld	$a0,24($sp)
    ld	$a1,32($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$s0,40($sp)
    ld	$ra,56($sp)
    # Line 4717
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da2f6d0:
    # Line 4712
    lw	$t9,268($s0)
    move	$a0,$s0
    jalr	$t9
    addiu	$a5,$sp,0
    b	.L0da2f6ac
    # Line 4716
    lw	$t9,260($s0)
.end __glTextureFragment

# Function: __glMipMapFragment
# Declared: Line 4719 (Source lines: 4722-4758)
# Address: 0x0da2f6f0 - 0x0da2f7fc (Size: 268 bytes, Frame: 240)
.globl __glMipMapFragment
.ent __glMipMapFragment
__glMipMapFragment:
    # Line 4722
    addiu	$sp,$sp,-112
    sd	$s0,40($sp)
    # Line 4723
    lw	$s0,28208($a0)
    lwc1	$f0,240($s0)
    # Line 4722
    sd	$a1,32($sp)
    # Line 4723
    c.le.s	$f17,$f0
    # Line 4747
    move	$a3,$zero
    # Line 4722
    sd	$a0,24($sp)
    lui	$at,0x2
    # Line 4749
    li	$v1,1
    sd	$ra,56($sp)
    # Line 4722
    addiu	$at,$at,5788
    # Line 4731
    mtc1	$zero,$f1
    sd	$gp,48($sp)
    # Line 4723
    bc1t	.L0da2f7e0
    # Line 4722
    addu	$gp,$t9,$at
    # Line 4731
    c.eq.s $f17,$f1
    bc1t .L0da2f7a0
    nop
    # Line 4747
    trunc.w.s	$f2,$f17
    mfc1	$v0,$f2
    sra	$v0,$v0,0x1
    beqz	$v0,.L0da2f76c
    move	$a4,$v0
    move	$a3,$zero
.L0da2f754:
    sra	$a4,$a4,0x1
    addiu	$a3,$a3,1
    beqz	$a4,.L0da2f76c
    sra	$a4,$a4,0x1
    bnez	$a4,.L0da2f754
    addiu	$a3,$a3,1
.L0da2f76c:
    # Line 4749
    sllv	$v1,$v1,$a3
    mtc1	$v1,$f19
    cvt.s.w	$f19,$f19
    sub.s	$f18,$f17,$f19
    div.s	$f18,$f18,$f19
    mtc1	$a3,$f17
    cvt.s.w	$f17,$f17
    add.s	$f17,$f17,$f18
    ldc1	$f18,_lit8_3fe0000000000000
    cvt.d.s	$f17,$f17
    mul.d	$f17,$f17,$f18
    b	.L0da2f7a4
    cvt.s.d	$f17,$f17
.L0da2f7a0:
    # Line 4751
    mtc1	$zero,$f17
.L0da2f7a4:
    # Line 4753
    lw	$t9,268($s0)
    move	$a0,$s0
    mov.s	$f13,$f17
    jalr	$t9
    addiu	$a5,$sp,0
    # Line 4757
    lw	$t9,260($s0)
.L0da2f7bc:
    ld	$a0,24($sp)
    ld	$a1,32($sp)
    jalr	$t9
    addiu	$a2,$sp,0
    ld	$s0,40($sp)
    ld	$ra,56($sp)
    # Line 4758
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da2f7e0:
    # Line 4731
    lw	$t9,264($s0)
    move	$a0,$s0
    mov.s	$f13,$f17
    jalr	$t9
    addiu	$a5,$sp,0
    b	.L0da2f7bc
    # Line 4757
    lw	$t9,260($s0)
.end __glMipMapFragment

# Function: Dot
# Declared: Line 4763 (Source lines: 4765-4765)
# Address: 0x0da2f800 - 0x0da2f828 (Size: 40 bytes, Frame: 0)
.ent Dot
Dot:
    # Line 4765
    lwc1	$f4,0($a1)
    lwc1	$f2,4($a1)
    lwc1	$f0,4($a0)
    lwc1	$f3,0($a0)
    lwc1	$f1,8($a0)
    mul.s	$f0,$f0,$f2
    lwc1	$f2,8($a1)
    madd.s	$f0,$f0,$f3,$f4
    jr	$ra
    madd.s	$f0,$f0,$f1,$f2
.end Dot

# Function: SphereGen
# Declared: Line 4773 (Source lines: 4774-4799)
# Address: 0x0da2f830 - 0x0da2f92c (Size: 252 bytes, Frame: 48)
.ent SphereGen
SphereGen:
    # Line 4774
    addiu	$sp,$sp,-48
    sd	$s8,16($sp)
    # Line 4779
    lw	$t9,11904($a0)
    # Line 4774
    move	$s8,$a2
    sd	$s0,40($sp)
    move	$s0,$a1
    # Line 4779
    addiu	$a1,$a1,96
    # Line 4774
    sd	$s1,32($sp)
    move	$s1,$a0
    sd	$ra,24($sp)
    # Line 4779
    jalr	$t9
    addiu	$a0,$sp,0
    # Line 4782
    # lw $t9, -32684($gp) # &sub_0da30000
    addiu	$t9,$t9,-2048
    addiu	$a1,$sp,0
    bal __glMipMapFragment
    addiu	$a0,$s0,32
    # Line 4786
    lwc1	$f9,36($s0)
    # Line 4785
    lwc1	$f6,_lit_40000000
    lwc1	$f10,32($s0)
    # Line 4787
    lwc1	$f11,40($s0)
    # Line 4786
    mul.s	$f9,$f9,$f6
    # Line 4785
    mul.s	$f10,$f10,$f6
    lwc1	$f8,0($sp)
    # Line 4787
    mul.s	$f11,$f11,$f6
    # Line 4785
    nmsub.s	$f8,$f8,$f0,$f10
    # Line 4787
    lwc1	$f10,8($sp)
    nmsub.s	$f10,$f10,$f0,$f11
    # Line 4786
    lwc1	$f7,4($sp)
    nmsub.s	$f7,$f7,$f0,$f9
    # Line 4787
    lwc1	$f11,_lit_3f800000
    mul.s	$f9,$f8,$f8
    madd.s	$f9,$f9,$f7,$f7
    add.s	$f10,$f10,$f11
    madd.s	$f9,$f9,$f10,$f10
    sqrt.s	$f9,$f9
    mtc1	$zero,$f0
    mul.s	$f6,$f6,$f9
    c.eq.s	$f6,$f0
    # Line 4799
    ld	$s0,40($sp)
    ld	$ra,24($sp)
    # Line 4787
    bc1t	.L0da2f910
    lwc1	$f5,3540($s1)
    # Line 4793
    div.s	$f13,$f8,$f6
    # Line 4794
    div.s	$f12,$f7,$f6
    # Line 4793
    add.s	$f13,$f5,$f13
    swc1	$f13,0($s8)
    # Line 4794
    lwc1	$f11,3540($s1)
    # Line 4799
    ld	$s0,40($sp)
    ld	$ra,24($sp)
    ld	$s1,32($sp)
    # Line 4794
    add.s	$f11,$f11,$f12
    swc1	$f11,4($s8)
    # Line 4799
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da2f910:
    # Line 4796
    swc1	$f5,0($s8)
    # Line 4797
    lwc1	$f14,3540($s1)
    # Line 4799
    ld	$s1,32($sp)
    # Line 4797
    swc1	$f14,4($s8)
    # Line 4799
    ld	$s8,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SphereGen

# Function: __glCalcMixedTexture
# Declared: Line 4804 (Source lines: 4805-4897)
# Address: 0x0da2f930 - 0x0da2fd18 (Size: 1000 bytes, Frame: 208)
.globl __glCalcMixedTexture
.ent __glCalcMixedTexture
__glCalcMixedTexture:
    # Line 4805
    addiu	$sp,$sp,-80
    sd	$s1,56($sp)
    # Line 4808
    lui	$a4,0x8
    lw	$s1,1792($a0)
    # Line 4805
    sd	$s2,64($sp)
    move	$s2,$a1
    lui	$v0,0x2
    sd	$s0,48($sp)
    addiu	$v0,$v0,5212
    # Line 4808
    dsll32	$at,$s1,0xd
    # Line 4805
    move	$s0,$a0
    sd	$gp,40($sp)
    addu	$gp,$t9,$v0
    sd	$ra,72($sp)
    # Line 4808
    bgez	$at,.L0da2fa64
    and	$a4,$s1,$a4
    # Line 4813
    lw	$a3,1984($a0)
    li	$a0,9216
    beq	$a0,$a3,.L0da2fad8
    nop
    li	$a1,9217
    beq	$a1,$a3,.L0da2fbf4
    li	$a5,9218
    beq	$a5,$a3,.L0da2fcc4
    # Line 4825
    nop	# was lw $t9, -32684($gp) # &sub_0da30000
    # Line 4813
    dsll32	$a6,$s1,0xc
    bgez	$a6,.L0da2fb40
    nop
    # Line 4836
    lw	$a3,2108($s0)
    beq	$a0,$a3,.L0da2fbbc
    nop
    beq	$a1,$a3,.L0da2fc8c
    nop
    beq	$a5,$a3,.L0da2fa9c
.L0da2f9b8:
    # Line 4853
    dsll32	$a7,$s1,0xb
.L0da2f9bc:
    bgez	$a7,.L0da2fac0
    nop
    # Line 4860
    lw	$a3,2232($s0)
    li	$t0,9216
    beq	$a3,$t0,.L0da2fb4c
    li	$t1,9217
    beq	$a3,$t1,.L0da2fc54
.L0da2f9d8:
    # Line 4873
    dsll32	$t2,$s1,0xa
    bgez	$t2,.L0da2facc
    nop
    # Line 4878
    lw	$a3,2356($s0)
    li	$t3,9216
    beq	$a3,$t3,.L0da2fb84
    li	$t8,9217
    beq	$a3,$t8,.L0da2fa2c
    nop
.L0da2f9fc:
    # Line 4895
    lw	$a2,29680($s0)
    # Line 4896
    lw	$t9,80($a2)
    addiu	$a1,$sp,16
    jal	sub_0da30000
    addiu	$a0,$s2,48
    # Line 4897
    ld	$gp,40($sp)
    ld	$ra,72($sp)
    ld	$s0,48($sp)
    ld	$s1,56($sp)
    ld	$s2,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0da2fa2c:
    # Line 4886
    lwc1	$f0,20($s2)
    lwc1	$f4,2380($s0)
    lwc1	$f1,2376($s0)
    lwc1	$f2,16($s2)
    lwc1	$f3,2384($s0)
    mul.s	$f0,$f0,$f4
    lwc1	$f4,24($s2)
    madd.s	$f0,$f0,$f1,$f2
    lwc1	$f1,2388($s0)
    lwc1	$f2,28($s2)
    madd.s	$f0,$f0,$f3,$f4
    madd.s	$f0,$f0,$f1,$f2
    # Line 4888
    b	.L0da2f9fc
    # Line 4886
    swc1	$f0,28($sp)
.L0da2fa64:
    # Line 4831
    lwc1	$f5,48($a1)
    dsll32	$t9,$s1,0xc
    # Line 4836
    li	$v0,9218
    li	$at,9217
    # Line 4831
    bgez	$t9,.L0da2fb40
    swc1	$f5,16($sp)
    # Line 4836
    lw	$a3,2108($a0)
    li	$ra,9216
    beq	$a3,$ra,.L0da2fbbc
    nop
    beq	$a3,$at,.L0da2fc8c
    nop
    bne	$a3,$v0,.L0da2f9bc
    # Line 4853
    dsll32	$a7,$s1,0xb
.L0da2fa9c:
    # Line 4849
    # lw $t9, -32684($gp) # &sub_0da30000
.L0da2faa0:
    addiu	$t9,$t9,-2000
    move	$a0,$s0
    move	$a1,$s2
    bal __glMipMapFragment
    addiu	$a2,$sp,0
    # Line 4851
    lwc1	$f6,4($sp)
.L0da2fab8:
    b	.L0da2f9b8
    swc1	$f6,20($sp)
.L0da2fac0:
    # Line 4873
    lwc1	$f7,56($s2)
    b	.L0da2f9d8
    swc1	$f7,24($sp)
.L0da2facc:
    # Line 4891
    lwc1	$f8,60($s2)
    b	.L0da2f9fc
    swc1	$f8,28($sp)
.L0da2fad8:
    # Line 4816
    lwc1	$f11,96($a1)
    lwc1	$f13,1992($s0)
    lwc1	$f9,100($a1)
    lwc1	$f10,1988($s0)
    lwc1	$f12,1996($s0)
    mul.s	$f9,$f9,$f13
    lwc1	$f13,104($a1)
    madd.s	$f9,$f9,$f10,$f11
    lwc1	$f11,108($a1)
    lwc1	$f10,2000($s0)
    madd.s	$f9,$f9,$f12,$f13
    madd.s	$f9,$f9,$f10,$f11
    dsll32	$ra,$s1,0xc
    # Line 4836
    li	$v0,9218
    li	$at,9217
    # Line 4816
    bgez	$ra,.L0da2fb40
    swc1	$f9,16($sp)
    # Line 4836
    lw	$a3,2108($s0)
    beq	$a0,$a3,.L0da2fbbc
    nop
    beq	$a3,$at,.L0da2fc8c
    nop
    bne	$a3,$v0,.L0da2f9bc
    # Line 4853
    dsll32	$a7,$s1,0xb
    b	.L0da2faa0
    # Line 4849
    nop	# was lw $t9, -32684($gp) # &sub_0da30000
.L0da2fb40:
    # Line 4855
    lwc1	$f14,52($s2)
    b	.L0da2f9b8
    swc1	$f14,20($sp)
.L0da2fb4c:
    # Line 4863
    lwc1	$f17,96($s2)
    lwc1	$f19,2240($s0)
    lwc1	$f15,100($s2)
    lwc1	$f16,2236($s0)
    lwc1	$f18,2244($s0)
    mul.s	$f15,$f15,$f19
    lwc1	$f19,104($s2)
    madd.s	$f15,$f15,$f16,$f17
    lwc1	$f17,108($s2)
    lwc1	$f16,2248($s0)
    madd.s	$f15,$f15,$f18,$f19
    madd.s	$f15,$f15,$f16,$f17
    b	.L0da2f9d8
    swc1	$f15,24($sp)
.L0da2fb84:
    # Line 4881
    lwc1	$f25,96($s2)
    lwc1	$f29,2364($s0)
    lwc1	$f21,100($s2)
    lwc1	$f23,2360($s0)
    lwc1	$f27,2368($s0)
    mul.s	$f21,$f21,$f29
    lwc1	$f29,104($s2)
    madd.s	$f21,$f21,$f23,$f25
    lwc1	$f25,108($s2)
    lwc1	$f23,2372($s0)
    madd.s	$f21,$f21,$f27,$f29
    madd.s	$f21,$f21,$f23,$f25
    b	.L0da2f9fc
    swc1	$f21,28($sp)
.L0da2fbbc:
    # Line 4839
    lwc1	$f1,2112($s0)
    lwc1	$f3,2116($s0)
    lwc1	$f31,100($s2)
    lwc1	$f0,96($s2)
    lwc1	$f2,104($s2)
    mul.s	$f31,$f31,$f3
    lwc1	$f3,2120($s0)
    madd.s	$f31,$f31,$f0,$f1
    lwc1	$f1,2124($s0)
    lwc1	$f0,108($s2)
    madd.s	$f31,$f31,$f2,$f3
    madd.s	$f31,$f31,$f0,$f1
    # Line 4841
    b	.L0da2f9b8
    # Line 4839
    swc1	$f31,20($sp)
.L0da2fbf4:
    # Line 4821
    lwc1	$f6,16($s2)
    lwc1	$f8,2008($s0)
    lwc1	$f4,20($s2)
    lwc1	$f5,2004($s0)
    lwc1	$f7,2012($s0)
    mul.s	$f4,$f4,$f8
    lwc1	$f8,24($s2)
    madd.s	$f4,$f4,$f5,$f6
    lwc1	$f6,28($s2)
    lwc1	$f5,2016($s0)
    madd.s	$f4,$f4,$f7,$f8
    madd.s	$f4,$f4,$f5,$f6
    dsll32	$v1,$s1,0xc
    bgez	$v1,.L0da2fb40
    swc1	$f4,16($sp)
    # Line 4836
    lw	$a3,2108($s0)
    beq	$a0,$a3,.L0da2fbbc
    nop
    beq	$a1,$a3,.L0da2fc8c
    li	$a0,9218
    bne	$a3,$a0,.L0da2f9bc
    # Line 4853
    dsll32	$a7,$s1,0xb
    b	.L0da2faa0
    # Line 4849
    nop	# was lw $t9, -32684($gp) # &sub_0da30000
.L0da2fc54:
    # Line 4868
    lwc1	$f11,16($s2)
    lwc1	$f13,2256($s0)
    lwc1	$f9,20($s2)
    lwc1	$f10,2252($s0)
    lwc1	$f12,2260($s0)
    mul.s	$f9,$f9,$f13
    lwc1	$f13,24($s2)
    madd.s	$f9,$f9,$f10,$f11
    lwc1	$f11,28($s2)
    lwc1	$f10,2264($s0)
    madd.s	$f9,$f9,$f12,$f13
    madd.s	$f9,$f9,$f10,$f11
    # Line 4870
    b	.L0da2f9d8
    # Line 4868
    swc1	$f9,24($sp)
.L0da2fc8c:
    # Line 4844
    lwc1	$f16,2128($s0)
    lwc1	$f18,2132($s0)
    lwc1	$f14,20($s2)
    lwc1	$f15,16($s2)
    lwc1	$f17,24($s2)
    mul.s	$f14,$f14,$f18
    lwc1	$f18,2136($s0)
    madd.s	$f14,$f14,$f15,$f16
    lwc1	$f16,2140($s0)
    lwc1	$f15,28($s2)
    madd.s	$f14,$f14,$f17,$f18
    madd.s	$f14,$f14,$f15,$f16
    # Line 4846
    b	.L0da2f9b8
    # Line 4844
    swc1	$f14,20($sp)
.L0da2fcc4:
    # Line 4825
    addiu	$t9,$t9,-2000
    move	$a0,$s0
    move	$a1,$s2
    sd	$a4,32($sp)
    bal __glMipMapFragment
    addiu	$a2,$sp,0
    # Line 4826
    ld	$ra,32($sp)
    lwc1	$f19,0($sp)
    # Line 4836
    li	$v0,9217
    li	$at,9216
    # Line 4826
    beqz	$ra,.L0da2fb40
    swc1	$f19,16($sp)
    # Line 4836
    lw	$a3,2108($s0)
    beq	$at,$a3,.L0da2fbbc
    nop
    beq	$v0,$a3,.L0da2fc8c
    li	$v1,9218
    bne	$v1,$a3,.L0da2f9bc
    # Line 4853
    dsll32	$a7,$s1,0xb
    b	.L0da2fab8
    # Line 4851
    lwc1	$f6,4($sp)
.end __glCalcMixedTexture

# Function: __glCalcSphereMap
# Declared: Line 4900 (Source lines: 4901-4912)
# Address: 0x0da2fd20 - 0x0da2fd94 (Size: 116 bytes, Frame: 48)
.globl __glCalcSphereMap
.ent __glCalcSphereMap
__glCalcSphereMap:
    # Line 4901
    addiu	$sp,$sp,-48
    sd	$s8,24($sp)
    lui	$s8,0x2
    addiu	$s8,$s8,4204
    sd	$gp,32($sp)
    addu	$gp,$t9,$s8
    # Line 4905
    # lw $t9, -32684($gp) # &sub_0da30000
    addiu	$t9,$t9,-2000
    addiu	$a2,$sp,0
    # Line 4901
    sd	$a1,40($sp)
    # Line 4905
    nop
    # Line 4901
    sd	$ra,16($sp)
    # Line 4905
    bal __glMipMapFragment
    # Line 4901
    move	$s8,$a0
    # Line 4906
    ld	$a0,40($sp)
    lwc1	$f1,56($a0)
    swc1	$f1,8($sp)
    # Line 4907
    lwc1	$f0,60($a0)
    swc1	$f0,12($sp)
    # Line 4910
    lw	$a2,29680($s8)
    # Line 4911
    lw	$t9,80($a2)
    addiu	$a1,$sp,0
    jal	sub_0da30000
    addiu	$a0,$a0,48
    ld	$ra,16($sp)
    ld	$s8,24($sp)
    # Line 4912
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glCalcSphereMap

# Function: CheckTexSubImageArgs
# Declared: Line 4974 (Source lines: 4977-5057)
# Address: 0x0da2fda0 - 0x0da301c8 (Size: 1064 bytes, Frame: 192)
.ent CheckTexSubImageArgs
CheckTexSubImageArgs:
    # Line 4977
    addiu	$sp,$sp,-64
    sd	$a0,8($sp)
    sd	$a2,0($sp)
    sd	$ra,48($sp)
    sd	$s1,24($sp)
    # Line 4978
    # lw $t9, -24460($gp) # &__glLookUpTexture
    # Line 4977
    sd	$s2,32($sp)
    move	$s2,$a1
    move	$s1,$a3
    sd	$s0,40($sp)
    move	$s0,$a4
    # Line 4978
    jal	__glLookUpTexture
    # Line 4977
    sd	$a5,16($sp)
    # Line 4980
    beqz	$v0,.L0da2feb8
    # Line 4978
    move	$a3,$v0
    # Line 4980
    li	$at,0x8063
    beq	$s2,$at,.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 4980
    li	$v0,0x8064
    beq	$s2,$v0,.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 4980
    li	$v1,0x8070
    beq	$s2,$v1,.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 4989
    ld	$a1,16($sp)
    lw	$a0,232($a3)
    bne	$a0,$a1,.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 4993
    li	$v0,0x8034
    sltu	$a2,$s0,$v0
    bnez	$a2,.L0da2fe64
    sltu	$a4,$v0,$s0
    beqz	$a4,.L0da2ff00
    # Line 5025
    li	$a0,6408
    # Line 4993
    li	$v0,0x8364
    sltu	$a5,$s0,$v0
    bnez	$a5,.L0da300a0
    sltu	$a6,$v0,$s0
    beqz	$a6,.L0da2fe90
    li	$v0,0x8367
    sltu	$a7,$s0,$v0
    bnez	$a7,.L0da3013c
    sltu	$t0,$v0,$s0
    beqz	$t0,.L0da2fefc
    li	$t1,0x8368
    beq	$s0,$t1,.L0da2ff00
    # Line 5025
    li	$a0,6408
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2fe64:
    # Line 4993
    sltiu	$v0,$s0,5125
    bnez	$v0,.L0da30020
    sltiu	$t2,$s0,5126
    bnez	$t2,.L0da2ff94
    li	$v0,0x8032
    sltu	$t3,$s0,$v0
    bnez	$t3,.L0da300e8
    sltiu	$t3,$s0,6656
    sltu	$t8,$v0,$s0
    bnez	$t8,.L0da30170
    li	$a2,0x8033
.L0da2fe90:
    # Line 5009
    li	$t9,6407
.L0da2fe94:
    beq	$s1,$t9,.L0da2ff94
    # Line 5013
    nop	# was lw $t9, -26452($gp) # &__glSetError
    ld	$s1,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    # Line 5014
    b	.L0da2fed0
    move	$v0,$zero
.L0da2feb4:
    # Line 4993
    beq	$s0,$ra,.L0da2ff94
.L0da2feb8:
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2febc:
    ld	$s1,24($sp)
    jal	__glSetError
    li	$a0,1280
    ld	$ra,48($sp)
    # Line 4986
    move	$v0,$zero
.L0da2fed0:
    ld	$s2,32($sp)
    ld	$s0,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da2fee0:
    # Line 4993
    li	$v0,0x8036
    sltu	$at,$s0,$v0
    bnez	$at,.L0da30160
    li	$a1,0x8035
    sltu	$v1,$v0,$s0
    bnez	$v1,.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2fefc:
    # Line 5025
    li	$a0,6408
.L0da2ff00:
    beq	$s1,$a0,.L0da2ff34
    li	$a1,0x8000
    beq	$s1,$a1,.L0da2ff34
    li	$a2,0x80e1
    beq	$s1,$a2,.L0da2ff38
    # Line 5039
    sltiu	$a4,$s1,6408
    # Line 5031
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s1,24($sp)
    jal	__glSetError
    li	$a0,1282
    ld	$ra,48($sp)
    # Line 5032
    b	.L0da2fed0
    move	$v0,$zero
.L0da2ff34:
    # Line 5039
    sltiu	$a4,$s1,6408
.L0da2ff38:
    bnez	$a4,.L0da2ffa0
    sltiu	$a5,$s1,6409
.L0da2ff40:
    bnez	$a5,.L0da2ffe8
    # Line 5052
    ld	$v0,0($sp)
    # Line 5039
    li	$v0,0x8000
    sltu	$a6,$s1,$v0
    bnez	$a6,.L0da300cc
    sltiu	$t1,$s1,6410
    sltu	$a7,$v0,$s1
    beqz	$a7,.L0da2ffe8
    # Line 5052
    ld	$v0,0($sp)
    # Line 5039
    li	$v0,0x80e1
    sltu	$t0,$s1,$v0
    bnez	$t0,.L0da301a4
    sltu	$t1,$v0,$s1
    beqz	$t1,.L0da2ffe8
    # Line 5052
    ld	$v0,0($sp)
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2ff84:
    # Line 4993
    bnez	$t2,.L0da2feb4
    li	$ra,5120
    beqz	$a4,.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2ff94:
    # Line 5039
    sltiu	$t3,$s1,6408
.L0da2ff98:
    beqz	$t3,.L0da2ff40
    sltiu	$a5,$s1,6409
.L0da2ffa0:
    sltiu	$t8,$s1,6405
    bnez	$t8,.L0da30054
    sltiu	$a2,$s1,6403
    sltiu	$t9,$s1,6406
    bnez	$t9,.L0da2ffe8
    # Line 5052
    ld	$v0,0($sp)
    # Line 5039
    sltiu	$ra,$s1,6407
    bnez	$ra,.L0da3012c
    li	$v0,6406
    sltiu	$at,$s1,6408
    bnez	$at,.L0da2ffe8
    # Line 5052
    ld	$v0,0($sp)
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da2ffd8:
    # Line 5039
    li	$v0,6400
    bne	$s1,$v0,.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 5052
    ld	$v0,0($sp)
.L0da2ffe8:
    bltz	$v0,.L0da3007c
    # Line 5053
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 5052
    ld	$v1,8($sp)
    lw	$v1,3732($v1)
    slt	$v1,$v0,$v1
    beqz	$v1,.L0da3007c
    # Line 5053
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 4986
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    # Line 5057
    move	$v0,$a3
    # Line 4986
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da30020:
    # Line 4993
    sltiu	$a4,$s0,5122
    bnez	$a4,.L0da2ff84
    sltiu	$t2,$s0,5121
    sltiu	$a0,$s0,5123
    bnez	$a0,.L0da2ff98
    # Line 5039
    sltiu	$t3,$s1,6408
    # Line 4993
    sltiu	$a1,$s0,5124
    bnez	$a1,.L0da30194
    li	$a5,5123
    bnez	$v0,.L0da2ff98
    # Line 5039
    sltiu	$t3,$s1,6408
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da30054:
    # Line 5039
    bnez	$a2,.L0da2ffd8
    sltiu	$a4,$s1,6404
    bnez	$a4,.L0da2ffe8
    # Line 5052
    ld	$v0,0($sp)
    # Line 5039
    li	$a5,6404
    beq	$s1,$a5,.L0da2ffe8
    # Line 5052
    ld	$v0,0($sp)
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 5053
    # lw $t9, -26452($gp) # &__glSetError
.L0da3007c:
    jal	__glSetError
    li	$a0,1281
    # Line 4986
    ld	$ra,48($sp)
    ld	$s0,40($sp)
    # Line 5054
    move	$v0,$zero
    # Line 4986
    ld	$s1,24($sp)
    ld	$s2,32($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da300a0:
    # Line 4993
    li	$v0,0x8362
    sltu	$a6,$s0,$v0
    bnez	$a6,.L0da2fee0
    sltu	$a7,$v0,$s0
    beqz	$a7,.L0da2fe94
    # Line 5009
    li	$t9,6407
    # Line 4993
    li	$t0,0x8363
    beq	$s0,$t0,.L0da2fe94
    # Line 5009
    li	$t9,6407
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da300cc:
    # Line 5039
    bnez	$t1,.L0da3011c
    li	$at,6409
    sltiu	$t2,$s1,6411
    bnez	$t2,.L0da2ffe8
    # Line 5052
    ld	$v0,0($sp)
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da300e8:
    # Line 4993
    bnez	$t3,.L0da30180
    # Line 4995
    li	$t9,6400
    # Line 4993
    sltiu	$t8,$s0,6657
    beqz	$t8,.L0da2feb8
    nop
    # Line 4995
    bne	$s1,$t9,.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 4996
    ld	$ra,16($sp)
    slti	$ra,$ra,3
    bnez	$ra,.L0da2ff98
    # Line 5039
    sltiu	$t3,$s1,6408
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da3011c:
    # Line 5039
    beq	$s1,$at,.L0da2ffe8
    # Line 5052
    ld	$v0,0($sp)
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da3012c:
    # Line 5039
    beq	$s1,$v0,.L0da2ffe8
    # Line 5052
    ld	$v0,0($sp)
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da3013c:
    # Line 4993
    li	$v0,0x8366
    sltu	$v1,$s0,$v0
    bnez	$v1,.L0da301b8
    li	$a7,0x8365
    sltu	$a0,$v0,$s0
    beqz	$a0,.L0da2ff00
    # Line 5025
    li	$a0,6408
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da30160:
    # Line 4993
    beq	$s0,$a1,.L0da2ff00
    # Line 5025
    li	$a0,6408
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da30170:
    # Line 4993
    beq	$s0,$a2,.L0da2ff00
    # Line 5025
    li	$a0,6408
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da30180:
    # Line 4993
    li	$a4,5126
    beq	$s0,$a4,.L0da2ff98
    # Line 5039
    sltiu	$t3,$s1,6408
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da30194:
    # Line 4993
    beq	$s0,$a5,.L0da2ff98
    # Line 5039
    sltiu	$t3,$s1,6408
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da301a4:
    # Line 5039
    li	$a6,0x80e0
    beq	$s1,$a6,.L0da2ffe8
    # Line 5052
    ld	$v0,0($sp)
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0da301b8:
    # Line 4993
    beq	$s0,$a7,.L0da2ff00
    # Line 5025
    li	$a0,6408
    b	.L0da2febc
    # Line 4985
    nop	# was lw $t9, -26452($gp) # &__glSetError
.end CheckTexSubImageArgs

# Function: __glInitTexSubImageStore
# Declared: Line 5060 (Source lines: 5063-5073)
# Address: 0x0da301d0 - 0x0da3028c (Size: 188 bytes, Frame: 192)
.globl __glInitTexSubImageStore
.ent __glInitTexSubImageStore
__glInitTexSubImageStore:
    # Line 5063
    addiu	$sp,$sp,-64
    sd	$a6,32($sp)
    sd	$a5,40($sp)
    sd	$a4,48($sp)
    sd	$a2,56($sp)
    lui	$v1,0x2
    sd	$s8,8($sp)
    # Line 5064
    sll	$v0,$a3,0x2
    # Line 5063
    addiu	$v1,$v1,3004
    # Line 5064
    subu	$v0,$v0,$a3
    sd	$gp,16($sp)
    # Line 5063
    addu	$gp,$t9,$v1
    # Line 5064
    sll	$v0,$v0,0x3
    # Line 5066
    # lw $t9, -24228($gp) # &__glInitTexImageStore
    # Line 5064
    lw	$at,228($a2)
    addu	$v0,$v0,$a3
    # Line 5063
    move	$s8,$a1
    sd	$ra,0($sp)
    # Line 5064
    sll	$v0,$v0,0x2
    addu	$at,$at,$v0
    # Line 5066
    jal	__glInitTexImageStore
    sd	$at,24($sp)
    # Line 5073
    ld	$gp,16($sp)
    ld	$ra,0($sp)
    # Line 5067
    ld	$a6,24($sp)
    ld	$t9,48($sp)
    lw	$t8,56($a6)
    # Line 5068
    ld	$t3,40($sp)
    # Line 5067
    addu	$t8,$t8,$t9
    sw	$t8,128($s8)
    # Line 5068
    lw	$t2,56($a6)
    # Line 5069
    ld	$t1,32($sp)
    # Line 5068
    addu	$t2,$t2,$t3
    sw	$t2,132($s8)
    # Line 5069
    lw	$t0,56($a6)
    # Line 5072
    ld	$a5,56($sp)
    # Line 5069
    addu	$t0,$t0,$t1
    sw	$t0,136($s8)
    # Line 5070
    lw	$a7,4($a6)
    sw	$a7,140($s8)
    # Line 5071
    lw	$a6,8($a6)
    sw	$a6,144($s8)
    # Line 5072
    lw	$a5,232($a5)
    sw	$a5,432($s8)
    # Line 5073
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glInitTexSubImageStore

# Function: CheckTexSubImageRange
# Declared: Line 5076 (Source lines: 5078-5087)
# Address: 0x0da30290 - 0x0da302ec (Size: 92 bytes, Frame: 16)
.ent CheckTexSubImageRange
CheckTexSubImageRange:
    # Line 5078
    addiu	$sp,$sp,-16
    # Line 5082
    addu	$v1,$a2,$a3
    bltz	$a3,.L0da302d0
    sd	$ra,0($sp)
    lw	$a5,56($a1)
    negu	$at,$a5
    slt	$at,$a2,$at
    move	$ra,$ra
    subu	$v0,$a4,$a5
    bnez	$at,.L0da302d0
    slt	$v0,$v0,$v1
    bnez	$v0,.L0da302d4
    # Line 5084
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 5087
    li	$v0,1
    jr	$ra
    addiu	$sp,$sp,16
.L0da302d0:
    # Line 5084
    # lw $t9, -26452($gp) # &__glSetError
.L0da302d4:
    jal	__glSetError
    li	$a0,1281
    ld	$ra,0($sp)
    # Line 5085
    move	$v0,$zero
    # Line 5087
    jr	$ra
    addiu	$sp,$sp,16
.end CheckTexSubImageRange

# Function: __glCheckTexSubImage1DArgs
# Declared: Line 5090 (Source lines: 5094-5111)
# Address: 0x0da302f0 - 0x0da303e4 (Size: 244 bytes, Frame: 192)
.globl __glCheckTexSubImage1DArgs
.ent __glCheckTexSubImage1DArgs
__glCheckTexSubImage1DArgs:
    # Line 5094
    addiu	$sp,$sp,-64
    sd	$a2,32($sp)
    lui	$at,0x2
    sd	$a0,8($sp)
    addiu	$at,$at,2716
    sd	$gp,48($sp)
    addu	$gp,$t9,$at
    # Line 5099
    # lw $t9, -32684($gp) # &sub_0da30000
    # Line 5094
    move	$v0,$a6
    sd	$a4,24($sp)
    sd	$ra,40($sp)
    move	$ra,$a5
    # Line 5099
    addiu	$t9,$t9,-608
    li	$a5,1
    move	$a4,$a6
    # Line 5094
    sd	$a3,16($sp)
    # Line 5099
    move	$a3,$ra
    bal __glCalcSphereMap
    sd	$s0,0($sp)
    # Line 5103
    ld	$a3,32($sp)
    # Line 5099
    beqz	$v0,.L0da303cc
    move	$s0,$v0
    # Line 5103
    sll	$a2,$a3,0x2
    subu	$a2,$a2,$a3
    sll	$a2,$a2,0x3
    lw	$a1,228($v0)
    addu	$a2,$a2,$a3
    sll	$a2,$a2,0x2
    addu	$a1,$a1,$a2
    lw	$v0,0($a1)
    beqz	$v0,.L0da303a8
    # Line 5108
    nop	# was lw $t9, -32684($gp) # &sub_0da30000
    ld	$a0,8($sp)
    ld	$a2,16($sp)
    addiu	$t9,$t9,656
    ld	$a3,24($sp)
    bal __glInitTexSubImageStore
    lw	$a4,4($a1)
    # Line 5111
    move	$ra,$s0
    movz	$ra,$zero,$v0
    move	$v0,$ra
    ld	$ra,40($sp)
    ld	$gp,48($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da303a8:
    # Line 5105
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    # Line 5111
    ld	$ra,40($sp)
    # Line 5106
    move	$v0,$zero
    # Line 5111
    ld	$gp,48($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0da303cc:
    ld	$ra,40($sp)
    # Line 5101
    move	$v0,$zero
    # Line 5111
    ld	$gp,48($sp)
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glCheckTexSubImage1DArgs

# Function: __glCheckTexSubImage2DArgs
# Declared: Line 5114 (Source lines: 5119-5139)
# Address: 0x0da303f0 - 0x0da30528 (Size: 312 bytes, Frame: 144)
.globl __glCheckTexSubImage2DArgs
.ent __glCheckTexSubImage2DArgs
__glCheckTexSubImage2DArgs:
    # Line 5119
    addiu	$sp,$sp,-144
    sd	$a6,8($sp)
    sd	$a2,32($sp)
    sd	$a4,0($sp)
    # Line 5124
    lw	$a4,148($sp)
    # Line 5119
    lui	$at,0x2
    sd	$ra,48($sp)
    addiu	$at,$at,2460
    sd	$gp,56($sp)
    addu	$gp,$t9,$at
    # Line 5124
    # lw $t9, -32684($gp) # &sub_0da30000
    # Line 5119
    sd	$a3,16($sp)
    sd	$a5,24($sp)
    # Line 5124
    addiu	$t9,$t9,-608
    li	$a5,2
    move	$a3,$a7
    # Line 5119
    sd	$s1,40($sp)
    move	$s1,$a0
    # Line 5124
    bal __glCalcSphereMap
    sd	$s0,72($sp)
    # Line 5128
    ld	$t9,32($sp)
    # Line 5124
    beqz	$v0,.L0da3051c
    move	$s0,$v0
    # Line 5128
    sll	$t8,$t9,0x2
    subu	$t8,$t8,$t9
    sd	$s2,64($sp)
    sll	$t8,$t8,0x3
    lw	$s2,228($v0)
    addu	$t8,$t8,$t9
    sll	$t8,$t8,0x2
    addu	$s2,$s2,$t8
    lw	$v0,0($s2)
    beqz	$v0,.L0da304e4
    # Line 5130
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 5133
    # lw $t9, -32684($gp) # &sub_0da30000
    ld	$a3,24($sp)
    addiu	$t9,$t9,656
    ld	$a2,16($sp)
    move	$a1,$s2
    lw	$a4,4($s2)
    bal __glInitTexSubImageStore
    move	$a0,$s1
    beqz	$v0,.L0da3050c
    # Line 5136
    nop	# was lw $t9, -32684($gp) # &sub_0da30000
    ld	$a2,0($sp)
    addiu	$t9,$t9,656
    move	$a0,$s1
    ld	$a3,8($sp)
    move	$a1,$s2
    bal __glInitTexSubImageStore
    lw	$a4,8($s2)
    ld	$s1,40($sp)
    # Line 5139
    move	$a0,$s0
    ld	$s2,64($sp)
    movz	$a0,$zero,$v0
.L0da304cc:
    ld	$ra,48($sp)
    move	$v0,$a0
    ld	$s0,72($sp)
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da304e4:
    ld	$s0,72($sp)
    ld	$s2,64($sp)
    # Line 5130
    jal	sub_0da30000
    li	$a0,1282
    # Line 5139
    ld	$ra,48($sp)
    # Line 5131
    move	$v0,$zero
    # Line 5139
    ld	$gp,56($sp)
    ld	$s1,40($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da3050c:
    ld	$s1,40($sp)
    ld	$s2,64($sp)
    # Line 5134
    b	.L0da304cc
    move	$a0,$zero
.L0da3051c:
    # Line 5126
    move	$a0,$zero
    b	.L0da304cc
    ld	$s1,40($sp)
.end __glCheckTexSubImage2DArgs

# Function: __glCheckTexSubImage3DArgs
# Declared: Line 5142 (Source lines: 5147-5170)
# Address: 0x0da30530 - 0x0da306a0 (Size: 368 bytes, Frame: 160)
.globl __glCheckTexSubImage3DArgs
.ent __glCheckTexSubImage3DArgs
__glCheckTexSubImage3DArgs:
    # Line 5147
    addiu	$sp,$sp,-160
    sd	$a7,16($sp)
    sd	$a2,40($sp)
    sd	$a6,32($sp)
    sd	$a4,8($sp)
    # Line 5152
    lw	$a4,180($sp)
    # Line 5147
    sd	$ra,56($sp)
    lui	$ra,0x2
    sd	$a3,24($sp)
    addiu	$ra,$ra,2140
    sd	$gp,64($sp)
    addu	$gp,$t9,$ra
    # Line 5152
    # lw $t9, -32684($gp) # &sub_0da30000
    lw	$a3,172($sp)
    # Line 5147
    sd	$a5,0($sp)
    # Line 5152
    addiu	$t9,$t9,-608
    li	$a5,3
    # Line 5147
    sd	$s0,48($sp)
    move	$s0,$a0
    # Line 5152
    bal __glCalcSphereMap
    sd	$s2,80($sp)
    # Line 5156
    ld	$t9,40($sp)
    # Line 5152
    beqz	$v0,.L0da30694
    move	$s2,$v0
    # Line 5156
    sll	$t8,$t9,0x2
    subu	$t8,$t8,$t9
    sd	$s1,72($sp)
    sll	$t8,$t8,0x3
    lw	$s1,228($v0)
    addu	$t8,$t8,$t9
    sll	$t8,$t8,0x2
    addu	$s1,$s1,$t8
    lw	$at,0($s1)
    beqz	$at,.L0da30648
    # Line 5161
    nop	# was lw $t9, -32684($gp) # &sub_0da30000
    ld	$a3,32($sp)
    addiu	$t9,$t9,656
    ld	$a2,24($sp)
    move	$a1,$s1
    lw	$a4,4($s1)
    bal __glInitTexSubImageStore
    move	$a0,$s0
    beqz	$v0,.L0da30674
    # Line 5164
    nop	# was lw $t9, -32684($gp) # &sub_0da30000
    ld	$a2,8($sp)
    addiu	$t9,$t9,656
    move	$a0,$s0
    ld	$a3,16($sp)
    move	$a1,$s1
    bal __glInitTexSubImageStore
    lw	$a4,8($s1)
    beqz	$v0,.L0da30684
    # Line 5167
    nop	# was lw $t9, -32684($gp) # &sub_0da30000
    ld	$a2,0($sp)
    addiu	$t9,$t9,656
    move	$a0,$s0
    lw	$a4,12($s1)
    move	$a1,$s1
    bal __glInitTexSubImageStore
    lw	$a3,164($sp)
    ld	$s1,72($sp)
    # Line 5170
    move	$a0,$s2
    ld	$s0,48($sp)
    movz	$a0,$zero,$v0
.L0da30630:
    ld	$ra,56($sp)
    move	$v0,$a0
    ld	$s2,80($sp)
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da30648:
    # Line 5158
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s2,80($sp)
    ld	$s1,72($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 5170
    ld	$ra,56($sp)
    # Line 5159
    move	$v0,$zero
    # Line 5170
    ld	$gp,64($sp)
    ld	$s0,48($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0da30674:
    ld	$s1,72($sp)
    ld	$s0,48($sp)
    # Line 5162
    b	.L0da30630
    move	$a0,$zero
.L0da30684:
    ld	$s1,72($sp)
    ld	$s0,48($sp)
    # Line 5165
    b	.L0da30630
    move	$a0,$zero
.L0da30694:
    # Line 5154
    move	$a0,$zero
    b	.L0da30630
    ld	$s0,48($sp)
.end __glCheckTexSubImage3DArgs

# Function: __glCheckCopyTexSubImageArgs
# Declared: Line 5174 (Source lines: 5179-5202)
# Address: 0x0da306a0 - 0x0da30808 (Size: 360 bytes, Frame: 144)
.globl __glCheckCopyTexSubImageArgs
.ent __glCheckCopyTexSubImageArgs
__glCheckCopyTexSubImageArgs:
    # Line 5179
    addiu	$sp,$sp,-144
    sd	$a2,24($sp)
    sd	$a5,0($sp)
    sd	$ra,40($sp)
    lui	$ra,0x2
    # Line 5184
    lw	$a5,164($sp)
    # Line 5179
    addiu	$ra,$ra,1772
    sd	$gp,48($sp)
    addu	$gp,$t9,$ra
    # Line 5184
    # lw $t9, -32684($gp) # &sub_0da30000
    # Line 5179
    sd	$a3,16($sp)
    sd	$a4,8($sp)
    # Line 5184
    addiu	$t9,$t9,-608
    li	$a4,5126
    li	$a3,6408
    # Line 5179
    sd	$s0,32($sp)
    move	$s0,$a0
    # Line 5184
    bal __glCalcSphereMap
    sd	$s2,64($sp)
    # Line 5188
    ld	$t9,24($sp)
    # Line 5184
    beqz	$v0,.L0da307fc
    move	$s2,$v0
    # Line 5188
    sll	$t8,$t9,0x2
    subu	$t8,$t8,$t9
    sd	$s1,56($sp)
    sll	$t8,$t8,0x3
    lw	$s1,228($v0)
    addu	$t8,$t8,$t9
    sll	$t8,$t8,0x2
    addu	$s1,$s1,$t8
    lw	$at,0($s1)
    beqz	$at,.L0da307b0
    # Line 5193
    nop	# was lw $t9, -32684($gp) # &sub_0da30000
    lw	$a4,4($s1)
    addiu	$t9,$t9,656
    ld	$a2,16($sp)
    move	$a1,$s1
    lw	$a3,148($sp)
    bal __glInitTexSubImageStore
    move	$a0,$s0
    beqz	$v0,.L0da307dc
    # Line 5196
    nop	# was lw $t9, -32684($gp) # &sub_0da30000
    ld	$a2,8($sp)
    addiu	$t9,$t9,656
    move	$a0,$s0
    lw	$a4,8($s1)
    move	$a1,$s1
    bal __glInitTexSubImageStore
    lw	$a3,156($sp)
    beqz	$v0,.L0da307ec
    # Line 5199
    nop	# was lw $t9, -32684($gp) # &sub_0da30000
    addiu	$t9,$t9,656
    move	$a0,$s0
    move	$a1,$s1
    ld	$a2,0($sp)
    lw	$a4,12($s1)
    bal __glInitTexSubImageStore
    li	$a3,1
    ld	$s1,56($sp)
    # Line 5202
    move	$a0,$s2
    ld	$s0,32($sp)
    movz	$a0,$zero,$v0
.L0da30798:
    ld	$ra,40($sp)
    move	$v0,$a0
    ld	$s2,64($sp)
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da307b0:
    # Line 5190
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s2,64($sp)
    ld	$s1,56($sp)
    jal	__glSetError
    li	$a0,1282
    # Line 5202
    ld	$ra,40($sp)
    # Line 5191
    move	$v0,$zero
    # Line 5202
    ld	$gp,48($sp)
    ld	$s0,32($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0da307dc:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 5194
    b	.L0da30798
    move	$a0,$zero
.L0da307ec:
    ld	$s1,56($sp)
    ld	$s0,32($sp)
    # Line 5197
    b	.L0da30798
    move	$a0,$zero
.L0da307fc:
    # Line 5186
    move	$a0,$zero
    b	.L0da30798
    ld	$s0,32($sp)
.end __glCheckCopyTexSubImageArgs

# Function: __glim_TexSubImage1DEXT
# Declared: Line 5205 (Source lines: 5208-5231)
# Address: 0x0da30810 - 0x0da30950 (Size: 320 bytes, Frame: 224)
.globl __glim_TexSubImage1DEXT
.ent __glim_TexSubImage1DEXT
__glim_TexSubImage1DEXT:
    # Line 5208
    addiu	$sp,$sp,-608
    sd	$a6,528($sp)
    sd	$a5,544($sp)
    sd	$a4,536($sp)
    sd	$a3,560($sp)
    sd	$a2,552($sp)
    sd	$a1,568($sp)
    sd	$s0,576($sp)
    # Line 5215
    lw	$v0,4120($zero)
    lw	$s0,4112($zero)
    # Line 5208
    lui	$at,0x2
    move	$a7,$a0
    sd	$ra,600($sp)
    addiu	$at,$at,1404
    sd	$gp,584($sp)
    # Line 5215
    beqz	$v0,.L0da30894
    # Line 5208
    addu	$gp,$t9,$at
    # Line 5215
    li	$v1,2
    beq	$v0,$v1,.L0da30880
    sd	$a0,592($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da3086c:
    ld	$ra,600($sp)
.L0da30870:
    ld	$s0,576($sp)
    # Line 5231
    ld	$gp,584($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0da30880:
    # Line 5215
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$a7,592($sp)
    sw	$zero,4120($zero)
.L0da30894:
    # Line 5218
    ld	$a2,568($sp)
    ld	$a3,552($sp)
    # lw $t9, -23828($gp) # &__glCheckTexSubImage1DArgs
    ld	$a4,560($sp)
    move	$a0,$s0
    ld	$a5,536($sp)
    move	$a1,$a7
    bal __glCheckTexSubImage1DArgs
    ld	$a6,544($sp)
    beqz	$v0,.L0da3086c
    sd	$v0,520($sp)
    # Line 5225
    ld	$a7,528($sp)
    ld	$a6,544($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    move	$a0,$s0
    ld	$a5,536($sp)
    li	$a4,1
    li	$a3,1
    ld	$a2,560($sp)
    sw	$zero,4($sp)
    jal	__glInitTexSourceUnpack
    addiu	$a1,$sp,16
    # Line 5227
    # lw $t9, -23832($gp) # &__glInitTexSubImageStore
    move	$a0,$s0
    ld	$a4,552($sp)
    move	$a6,$zero
    move	$a5,$zero
    ld	$a3,568($sp)
    ld	$a2,520($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,16
    # Line 5228
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5229
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5230
    ld	$a2,520($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,568($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0da30870
    ld	$ra,600($sp)
.end __glim_TexSubImage1DEXT

# Function: __gllei_TexSubImage1DEXT
# Declared: Line 5233 (Source lines: 5236-5270)
# Address: 0x0da30950 - 0x0da30a8c (Size: 316 bytes, Frame: 224)
.globl __gllei_TexSubImage1DEXT
.ent __gllei_TexSubImage1DEXT
__gllei_TexSubImage1DEXT:
    # Line 5236
    addiu	$sp,$sp,-608
    sd	$a7,528($sp)
    sd	$a6,552($sp)
    sd	$a5,544($sp)
    sd	$a4,536($sp)
    sd	$a3,560($sp)
    sd	$a2,568($sp)
    # Line 5245
    lw	$v0,3200($a0)
    # Line 5236
    sd	$s0,576($sp)
    lui	$at,0x2
    move	$s0,$a0
    sd	$ra,600($sp)
    addiu	$at,$at,1084
    sd	$gp,584($sp)
    # Line 5245
    beqz	$v0,.L0da309d0
    # Line 5236
    addu	$gp,$t9,$at
    # Line 5245
    li	$v1,2
    beq	$v0,$v1,.L0da309bc
    sd	$a1,592($sp)
    # Line 5251
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da309a8:
    ld	$ra,600($sp)
.L0da309ac:
    ld	$s0,576($sp)
    # Line 5270
    ld	$gp,584($sp)
    jr	$ra
    addiu	$sp,$sp,608
.L0da309bc:
    # Line 5248
    lw	$t9,11784($s0)
    jalr	$t9
    nop
    ld	$a1,592($sp)
    # Line 5249
    sw	$zero,3200($s0)
.L0da309d0:
    # Line 5257
    ld	$a2,568($sp)
    ld	$a3,560($sp)
    # lw $t9, -23828($gp) # &__glCheckTexSubImage1DArgs
    ld	$a4,536($sp)
    ld	$a5,544($sp)
    move	$a0,$s0
    bal __glCheckTexSubImage1DArgs
    ld	$a6,552($sp)
    beqz	$v0,.L0da309a8
    sd	$v0,520($sp)
    # Line 5264
    ld	$a7,528($sp)
    ld	$a6,552($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    move	$a0,$s0
    ld	$a5,544($sp)
    li	$a1,1
    li	$a3,1
    ld	$a2,536($sp)
    move	$a4,$a1
    sw	$a1,4($sp)
    jal	__glInitTexSourceUnpack
    addiu	$a1,$sp,16
    # Line 5266
    # lw $t9, -23832($gp) # &__glInitTexSubImageStore
    move	$a0,$s0
    ld	$a4,560($sp)
    move	$a6,$zero
    move	$a5,$zero
    ld	$a3,568($sp)
    ld	$a2,520($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,16
    # Line 5267
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5268
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5269
    ld	$a2,520($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,568($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0da309ac
    ld	$ra,600($sp)
.end __gllei_TexSubImage1DEXT

# Function: __glim_TexSubImage2DEXT
# Declared: Line 5272 (Source lines: 5276-5299)
# Address: 0x0da30a90 - 0x0da30be4 (Size: 340 bytes, Frame: 176)
.globl __glim_TexSubImage2DEXT
.ent __glim_TexSubImage2DEXT
__glim_TexSubImage2DEXT:
    # Line 5283
    lw	$v1,4112($zero)
    # Line 5276
    addiu	$sp,$sp,-688
    sd	$a7,560($sp)
    sd	$a6,544($sp)
    sd	$a5,536($sp)
    sd	$a4,528($sp)
    sd	$a3,552($sp)
    sd	$a2,568($sp)
    sd	$a1,576($sp)
    # Line 5283
    lw	$v0,4120($zero)
    # Line 5276
    move	$t2,$a0
    sd	$ra,608($sp)
    lui	$at,0x2
    # Line 5283
    sd	$v1,584($sp)
    li	$v1,2
    # Line 5276
    addiu	$at,$at,764
    sd	$gp,592($sp)
    # Line 5283
    beqz	$v0,.L0da30b1c
    # Line 5276
    addu	$gp,$t9,$at
    # Line 5283
    beq	$v0,$v1,.L0da30b00
    sd	$a0,600($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da30af0:
    ld	$ra,608($sp)
.L0da30af4:
    # Line 5299
    ld	$gp,592($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da30b00:
    # Line 5283
    ld	$t9,584($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$t2,600($sp)
    sw	$zero,4120($zero)
.L0da30b1c:
    # Line 5286
    ld	$a0,584($sp)
    ld	$a2,576($sp)
    ld	$a3,568($sp)
    ld	$a4,552($sp)
    ld	$a5,528($sp)
    ld	$a6,536($sp)
    # lw $t9, -23824($gp) # &__glCheckTexSubImage2DArgs
    ld	$a7,544($sp)
    ld	$at,560($sp)
    move	$a1,$t2
    bal __glCheckTexSubImage2DArgs
    sw	$at,4($sp)
    beqz	$v0,.L0da30af0
    sd	$v0,520($sp)
    # Line 5293
    ld	$a0,584($sp)
    ld	$a6,560($sp)
    ld	$a5,544($sp)
    ld	$a3,536($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    ld	$a2,528($sp)
    li	$a4,1
    lw	$a7,692($sp)
    sw	$zero,4($sp)
    jal	__glInitTexSourceUnpack
    addiu	$a1,$sp,16
    # Line 5295
    ld	$a0,584($sp)
    ld	$a5,552($sp)
    # lw $t9, -23832($gp) # &__glInitTexSubImageStore
    ld	$a4,568($sp)
    move	$a6,$zero
    ld	$a3,576($sp)
    ld	$a2,520($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,16
    # Line 5296
    # lw $t9, -27532($gp) # &__glInitUnpacker
    ld	$a0,584($sp)
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5297
    # lw $t9, -28080($gp) # &__glInitPacker
    ld	$a0,584($sp)
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5298
    ld	$a2,520($sp)
    lw	$t9,248($a2)
    ld	$a0,584($sp)
    ld	$a3,576($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0da30af4
    ld	$ra,608($sp)
.end __glim_TexSubImage2DEXT

# Function: __gllei_TexSubImage2DEXT
# Declared: Line 5301 (Source lines: 5305-5339)
# Address: 0x0da30bf0 - 0x0da30d38 (Size: 328 bytes, Frame: 160)
.globl __gllei_TexSubImage2DEXT
.ent __gllei_TexSubImage2DEXT
__gllei_TexSubImage2DEXT:
    # Line 5305
    addiu	$sp,$sp,-672
    sd	$a7,544($sp)
    sd	$a6,536($sp)
    sd	$a5,528($sp)
    sd	$a4,552($sp)
    sd	$a3,560($sp)
    sd	$a2,568($sp)
    # Line 5314
    lw	$v0,3200($a0)
    # Line 5305
    sd	$s0,576($sp)
    lui	$at,0x2
    move	$s0,$a0
    sd	$ra,600($sp)
    addiu	$at,$at,412
    sd	$gp,584($sp)
    # Line 5314
    beqz	$v0,.L0da30c70
    # Line 5305
    addu	$gp,$t9,$at
    # Line 5314
    li	$v1,2
    beq	$v0,$v1,.L0da30c5c
    sd	$a1,592($sp)
    # Line 5320
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da30c48:
    ld	$ra,600($sp)
.L0da30c4c:
    ld	$s0,576($sp)
    # Line 5339
    ld	$gp,584($sp)
    jr	$ra
    addiu	$sp,$sp,672
.L0da30c5c:
    # Line 5317
    lw	$t9,11784($s0)
    jalr	$t9
    nop
    ld	$a1,592($sp)
    # Line 5318
    sw	$zero,3200($s0)
.L0da30c70:
    # Line 5326
    ld	$a7,544($sp)
    ld	$a6,536($sp)
    ld	$a5,528($sp)
    ld	$a4,552($sp)
    ld	$a3,560($sp)
    # lw $t9, -23824($gp) # &__glCheckTexSubImage2DArgs
    ld	$a2,568($sp)
    lw	$t0,676($sp)
    move	$a0,$s0
    bal __glCheckTexSubImage2DArgs
    sw	$t0,4($sp)
    beqz	$v0,.L0da30c48
    sd	$v0,520($sp)
    # Line 5333
    ld	$a5,544($sp)
    ld	$a3,536($sp)
    ld	$a2,528($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    move	$a0,$s0
    lw	$a7,684($sp)
    addiu	$a1,$sp,16
    lw	$a6,676($sp)
    li	$t2,1
    sw	$t2,4($sp)
    jal	__glInitTexSourceUnpack
    move	$a4,$t2
    # Line 5335
    ld	$a5,552($sp)
    # lw $t9, -23832($gp) # &__glInitTexSubImageStore
    ld	$a4,560($sp)
    move	$a0,$s0
    move	$a6,$zero
    ld	$a3,568($sp)
    ld	$a2,520($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,16
    # Line 5336
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5337
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5338
    ld	$a2,520($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,568($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    b	.L0da30c4c
    ld	$ra,600($sp)
.end __gllei_TexSubImage2DEXT

# Function: __glim_TexSubImage3DEXT
# Declared: Line 5341 (Source lines: 5345-5368)
# Address: 0x0da30d40 - 0x0da30ea4 (Size: 356 bytes, Frame: 192)
.globl __glim_TexSubImage3DEXT
.ent __glim_TexSubImage3DEXT
__glim_TexSubImage3DEXT:
    # Line 5352
    lw	$v1,4112($zero)
    # Line 5345
    addiu	$sp,$sp,-704
    sd	$a7,568($sp)
    sd	$a6,560($sp)
    sd	$a5,552($sp)
    sd	$a4,544($sp)
    sd	$a3,576($sp)
    sd	$a2,584($sp)
    sd	$a1,592($sp)
    # Line 5352
    lw	$v0,4120($zero)
    # Line 5345
    move	$t2,$a0
    sd	$ra,624($sp)
    lui	$at,0x2
    # Line 5352
    sd	$v1,600($sp)
    li	$v1,2
    # Line 5345
    addiu	$at,$at,76
    sd	$gp,608($sp)
    # Line 5352
    beqz	$v0,.L0da30dcc
    # Line 5345
    addu	$gp,$t9,$at
    # Line 5352
    beq	$v0,$v1,.L0da30db0
    sd	$a0,616($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da30da0:
    ld	$ra,624($sp)
.L0da30da4:
    # Line 5368
    ld	$gp,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0da30db0:
    # Line 5352
    ld	$t9,600($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$t2,616($sp)
    sw	$zero,4120($zero)
.L0da30dcc:
    # Line 5355
    ld	$a7,560($sp)
    ld	$a6,552($sp)
    ld	$a5,544($sp)
    ld	$a4,576($sp)
    ld	$a3,584($sp)
    ld	$a2,592($sp)
    ld	$a0,600($sp)
    lw	$at,708($sp)
    lw	$v0,716($sp)
    ld	$v1,568($sp)
    # lw $t9, -23820($gp) # &__glCheckTexSubImage3DArgs
    sw	$v1,4($sp)
    sw	$v0,20($sp)
    move	$a1,$t2
    bal __glCheckTexSubImage3DArgs
    sw	$at,12($sp)
    beqz	$v0,.L0da30da0
    sd	$v0,536($sp)
    # Line 5362
    ld	$a0,600($sp)
    ld	$a4,568($sp)
    ld	$a3,560($sp)
    ld	$a2,552($sp)
    lw	$a7,724($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    lw	$a5,708($sp)
    lw	$a6,716($sp)
    sw	$zero,4($sp)
    jal	__glInitTexSourceUnpack
    addiu	$a1,$sp,32
    # Line 5364
    ld	$a0,600($sp)
    ld	$a6,544($sp)
    ld	$a5,576($sp)
    # lw $t9, -23832($gp) # &__glInitTexSubImageStore
    ld	$a4,584($sp)
    ld	$a3,592($sp)
    ld	$a2,536($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,32
    # Line 5365
    # lw $t9, -27528($gp) # &__glInitUnpacker3D
    ld	$a0,600($sp)
    jal	__glInitUnpacker3D
    addiu	$a1,$sp,32
    # Line 5366
    # lw $t9, -28076($gp) # &__glInitPacker3D
    ld	$a0,600($sp)
    jal	__glInitPacker3D
    addiu	$a1,$sp,32
    # Line 5367
    ld	$a2,536($sp)
    lw	$t9,248($a2)
    ld	$a0,600($sp)
    ld	$a3,592($sp)
    jalr	$t9
    addiu	$a1,$sp,32
    b	.L0da30da4
    ld	$ra,624($sp)
.end __glim_TexSubImage3DEXT

# Function: __gllei_TexSubImage3DEXT
# Declared: Line 5370 (Source lines: 5374-5408)
# Address: 0x0da30eb0 - 0x0da31008 (Size: 344 bytes, Frame: 176)
.globl __gllei_TexSubImage3DEXT
.ent __gllei_TexSubImage3DEXT
__gllei_TexSubImage3DEXT:
    # Line 5374
    addiu	$sp,$sp,-688
    sd	$a7,560($sp)
    sd	$a6,552($sp)
    sd	$a5,544($sp)
    sd	$a4,568($sp)
    sd	$a3,576($sp)
    sd	$a2,584($sp)
    # Line 5383
    lw	$v0,3200($a0)
    # Line 5374
    sd	$s0,592($sp)
    lui	$at,0x2
    move	$s0,$a0
    sd	$ra,616($sp)
    addiu	$at,$at,-292
    sd	$gp,600($sp)
    # Line 5383
    beqz	$v0,.L0da30f30
    # Line 5374
    addu	$gp,$t9,$at
    # Line 5383
    li	$v1,2
    beq	$v0,$v1,.L0da30f1c
    sd	$a1,608($sp)
    # Line 5389
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da30f08:
    ld	$ra,616($sp)
.L0da30f0c:
    ld	$s0,592($sp)
    # Line 5408
    ld	$gp,600($sp)
    jr	$ra
    addiu	$sp,$sp,688
.L0da30f1c:
    # Line 5386
    lw	$t9,11784($s0)
    jalr	$t9
    nop
    ld	$a1,608($sp)
    # Line 5387
    sw	$zero,3200($s0)
.L0da30f30:
    # Line 5395
    ld	$a7,560($sp)
    ld	$a6,552($sp)
    ld	$a5,544($sp)
    ld	$a4,568($sp)
    ld	$a3,576($sp)
    ld	$a2,584($sp)
    lw	$t0,692($sp)
    lw	$t1,700($sp)
    lw	$t2,708($sp)
    # lw $t9, -23820($gp) # &__glCheckTexSubImage3DArgs
    sw	$t2,20($sp)
    sw	$t1,12($sp)
    move	$a0,$s0
    bal __glCheckTexSubImage3DArgs
    sw	$t0,4($sp)
    beqz	$v0,.L0da30f08
    sd	$v0,536($sp)
    # Line 5402
    ld	$a3,560($sp)
    ld	$a2,552($sp)
    lw	$a7,716($sp)
    lw	$a4,692($sp)
    # lw $t9, -24220($gp) # &__glInitTexSourceUnpack
    lw	$a5,700($sp)
    move	$a0,$s0
    lw	$a6,708($sp)
    li	$t8,1
    sw	$t8,4($sp)
    jal	__glInitTexSourceUnpack
    addiu	$a1,$sp,32
    # Line 5404
    ld	$a6,544($sp)
    ld	$a5,568($sp)
    # lw $t9, -23832($gp) # &__glInitTexSubImageStore
    ld	$a4,576($sp)
    move	$a0,$s0
    ld	$a3,584($sp)
    ld	$a2,536($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,32
    # Line 5405
    # lw $t9, -27528($gp) # &__glInitUnpacker3D
    move	$a0,$s0
    jal	__glInitUnpacker3D
    addiu	$a1,$sp,32
    # Line 5406
    # lw $t9, -28076($gp) # &__glInitPacker3D
    move	$a0,$s0
    jal	__glInitPacker3D
    addiu	$a1,$sp,32
    # Line 5407
    ld	$a2,536($sp)
    lw	$t9,248($a2)
    move	$a0,$s0
    ld	$a3,584($sp)
    jalr	$t9
    addiu	$a1,$sp,32
    b	.L0da30f0c
    ld	$ra,616($sp)
.end __gllei_TexSubImage3DEXT

# Function: __glEmptyFreeTexObj
# Declared: Line 5430 (Source lines: 5432-5432)
# Address: 0x0da31010 - 0x0da31018 (Size: 8 bytes, Frame: 0)
.globl __glEmptyFreeTexObj
.ent __glEmptyFreeTexObj
__glEmptyFreeTexObj:
    # Line 5432
    jr	$ra
    nop
.end __glEmptyFreeTexObj

# Function: __glFreeTexObj
# Declared: Line 5437 (Source lines: 5438-5449)
# Address: 0x0da31020 - 0x0da310f4 (Size: 212 bytes, Frame: 48)
.globl __glFreeTexObj
.ent __glFreeTexObj
__glFreeTexObj:
    # Line 5438
    addiu	$sp,$sp,-48
    sd	$s1,40($sp)
    sd	$s2,8($sp)
    # Line 5441
    lw	$a3,3732($a0)
    # Line 5438
    move	$s2,$a1
    sd	$s3,16($sp)
    lui	$at,0x2
    move	$s3,$a0
    sd	$s0,32($sp)
    addiu	$at,$at,-660
    sd	$gp,0($sp)
    # Line 5441
    blez	$a3,.L0da310e8
    # Line 5438
    addu	$gp,$t9,$at
    # Line 5441
    move	$s0,$zero
    sll	$s1,$a3,0x2
    subu	$s1,$s1,$a3
    sll	$s1,$s1,0x3
    lw	$a1,244($a1)
    addu	$s1,$s1,$a3
    sd	$ra,24($sp)
    sll	$s1,$s1,0x2
    nop
    nop
    # Line 5443
    addu	$a3,$a1,$s0
.L0da31080:
    lw	$a3,0($a3)
    beqz	$a3,.L0da310a0
    nop
    # Line 5445
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    move	$a1,$a3
    lw	$a1,244($s2)
.L0da310a0:
    # Line 5442
    addiu	$s0,$s0,100
    bne	$s0,$s1,.L0da31080
    # Line 5443
    addu	$a3,$a1,$s0
.L0da310ac:
    # Line 5447
    lw	$t9,12($s3)
    ld	$s1,40($sp)
    ld	$s0,32($sp)
    jalr	$t9
    move	$a0,$s3
    # Line 5448
    lw	$t9,12($s3)
    move	$a0,$s3
    jalr	$t9
    move	$a1,$s2
    ld	$ra,24($sp)
    # Line 5449
    ld	$gp,0($sp)
    ld	$s2,8($sp)
    ld	$s3,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da310e8:
    # Line 5442
    lw	$a1,244($a1)
    b	.L0da310ac
    sd	$ra,24($sp)
.end __glFreeTexObj

# Function: __glDisposeTexObj
# Declared: Line 5454 (Source lines: 5455-5464)
# Address: 0x0da31100 - 0x0da31148 (Size: 72 bytes, Frame: 16)
.globl __glDisposeTexObj
.ent __glDisposeTexObj
__glDisposeTexObj:
    # Line 5458
    lw	$v0,0($a1)
    # Line 5455
    addiu	$sp,$sp,-16
    lui	$at,0x2
    # Line 5458
    addiu	$v0,$v0,-1
    sd	$gp,0($sp)
    # Line 5455
    addiu	$at,$at,-884
    # Line 5458
    sw	$v0,0($a1)
    beqz	$v0,.L0da31130
    # Line 5455
    addu	$gp,$t9,$at
.L0da31124:
    # Line 5464
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da31130:
    # Line 5462
    lw	$t9,4($a1)
    sd	$ra,8($sp)
    jalr	$t9
    nop
    b	.L0da31124
    ld	$ra,8($sp)
.end __glDisposeTexObj

# Function: __glim_GenTexturesEXT
# Declared: Line 5466 (Source lines: 5467-5477)
# Address: 0x0da31150 - 0x0da31200 (Size: 176 bytes, Frame: 48)
.globl __glim_GenTexturesEXT
.ent __glim_GenTexturesEXT
__glim_GenTexturesEXT:
    # Line 5468
    lw	$a2,4112($zero)
    # Line 5467
    addiu	$sp,$sp,-48
    sd	$s1,24($sp)
    move	$s1,$a1
    # Line 5468
    lw	$at,4120($zero)
    # Line 5467
    sd	$s0,16($sp)
    # Line 5468
    li	$v0,1
    # Line 5467
    lui	$v1,0x2
    move	$s0,$a0
    sd	$ra,32($sp)
    addiu	$v1,$v1,-964
    sd	$gp,8($sp)
    # Line 5468
    beq	$at,$v0,.L0da311ec
    # Line 5467
    addu	$gp,$t9,$v1
    # Line 5468
    bltz	$a0,.L0da311d8
    sd	$a2,0($sp)
    # Line 5469
    beqz	$a0,.L0da311a4
    ld	$ra,32($sp)
.L0da31198:
    bnez	$s1,.L0da311b8
    # Line 5475
    nop	# was lw $t9, -25372($gp) # &__glNamesGenNames
    ld	$ra,32($sp)
.L0da311a4:
    # Line 5477
    ld	$gp,8($sp)
    ld	$s0,16($sp)
    ld	$s1,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da311b8:
    # Line 5475
    ld	$a1,0($sp)
    move	$a3,$s1
    move	$a2,$s0
    move	$a0,$a1
    jal	__glNamesGenNames
    lw	$a1,28232($a1)
    b	.L0da311a4
    ld	$ra,32($sp)
.L0da311d8:
    # Line 5469
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0da31198
    nop
.L0da311ec:
    # Line 5468
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da311a4
    ld	$ra,32($sp)
.end __glim_GenTexturesEXT

# Function: __glim_DeleteTexturesEXT
# Declared: Line 5479 (Source lines: 5480-5549)
# Address: 0x0da31200 - 0x0da31548 (Size: 840 bytes, Frame: 128)
.globl __glim_DeleteTexturesEXT
.ent __glim_DeleteTexturesEXT
__glim_DeleteTexturesEXT:
    # Line 5480
    addiu	$sp,$sp,-128
    sd	$s3,64($sp)
    sd	$s6,72($sp)
    sd	$ra,80($sp)
    sd	$s5,96($sp)
    sd	$s7,104($sp)
    sd	$s8,112($sp)
    sd	$gp,16($sp)
    sd	$s1,8($sp)
    move	$s1,$a1
    # Line 5485
    lw	$at,4120($zero)
    li	$v0,1
    # Line 5480
    lui	$v1,0x2
    sd	$s0,0($sp)
    addiu	$v1,$v1,-1140
    move	$s0,$a0
    # Line 5485
    lw	$a0,4112($zero)
    sd	$a0,48($sp)
    beq	$at,$v0,.L0da31530
    # Line 5480
    addu	$gp,$t9,$v1
    # Line 5485
    bltz	$s0,.L0da3151c
    # Line 5486
    nop	# was lw $t9, -26452($gp) # &__glSetError
    sd	$s2,56($sp)
    beqz	$s0,.L0da314e8
    sd	$s4,88($sp)
.L0da31264:
    # Line 5499
    lw	$a0,0($s1)
    # Line 5489
    ld	$a1,48($sp)
    # Line 5499
    sd	$a0,32($sp)
    # Line 5489
    lw	$s2,3604($a1)
    # Line 5488
    lw	$a1,28232($a1)
    # Line 5499
    move	$s4,$a0
    beqz	$s0,.L0da314cc
    # Line 5488
    sd	$a1,24($sp)
    # Line 5499
    move	$s3,$s1
    sll	$a2,$s0,0x2
    addu	$a2,$a2,$s1
    b	.L0da312e0
    sd	$a2,40($sp)
    nop
    nop
.L0da312a0:
    # Line 5503
    ld	$a3,32($sp)
    # lw $t9, -25380($gp) # &__glNamesDeleteRange
    ld	$a0,48($sp)
    move	$a2,$a3
    ld	$a1,24($sp)
    jal	__glNamesDeleteRange
    subu	$a3,$s4,$a3
    # Line 5505
    lw	$s4,4($s3)
    sd	$s4,32($sp)
    # Line 5506
    addiu	$s4,$s4,-1
    nop
    nop
.L0da312d0:
    # Line 5500
    ld	$t8,40($sp)
    addiu	$s3,$s3,4
    beq	$s3,$t8,.L0da314cc
    addiu	$s4,$s4,1
.L0da312e0:
    # Line 5499
    lw	$a4,0($s3)
    # Line 5519
    ld	$s0,48($sp)
    # Line 5499
    beqz	$a4,.L0da312a0
    # Line 5519
    move	$s1,$zero
    beqz	$s2,.L0da3131c
    lw	$s0,28200($s0)
    nop
    nop
.L0da31300:
    lw	$a1,0($s0)
    lw	$t8,236($a1)
    beq	$t8,$a4,.L0da3134c
    # Line 5525
    ld	$a0,48($sp)
    # Line 5520
    addiu	$s1,$s1,1
    bne	$s2,$s1,.L0da31300
    addiu	$s0,$s0,4
.L0da3131c:
    # Line 5542
    beq	$a4,$s4,.L0da312d0
    # Line 5544
    ld	$a3,32($sp)
    # lw $t9, -25380($gp) # &__glNamesDeleteRange
    ld	$a0,48($sp)
    move	$a2,$a3
    ld	$a1,24($sp)
    jal	__glNamesDeleteRange
    subu	$a3,$s4,$a3
    # Line 5545
    lw	$a4,0($s3)
    sd	$a4,32($sp)
    b	.L0da312d0
    move	$s4,$a4
.L0da3134c:
    # Line 5527
    # lw $t9, -25392($gp) # &__glNamesUnlockData
    # Line 5525
    sll	$t8,$s1,0x3
    subu	$t8,$t8,$s1
    lw	$s5,2480($a0)
    sll	$t8,$t8,0x5
    # Line 5527
    jal	__glNamesUnlockData
    # Line 5525
    addu	$s5,$s5,$t8
    # Line 5530
    ld	$t0,48($sp)
    sll	$t1,$s1,0x2
    addu	$a6,$t1,$s1
    lw	$a5,28204($t0)
    sll	$a6,$a6,0x2
    # Line 5532
    lw	$t0,28196($t0)
    # Line 5530
    subu	$a6,$a6,$s1
    sll	$a6,$a6,0x4
    # Line 5532
    addu	$t0,$t0,$t1
    # Line 5530
    addu	$a5,$a5,$a6
    # Line 5532
    addiu	$a7,$a5,16
    sw	$a7,0($t0)
    li	$t8,0x20
    # Line 5535
    move	$a4,$s5
    # Line 5533
    sw	$a5,0($s0)
    addiu	$s8,$a4,8
    addiu	$t3,$a4,24
    # Line 5534
    lw	$a6,236($a5)
    addiu	$ra,$a4,16
    addiu	$s1,$a4,12
    sw	$a6,216($s5)
    li	$t0,6
    # Line 5535
    move	$a7,$zero
    # Line 5534
    lwc1	$f0,240($a5)
    # Line 5535
    li	$a6,54
    addiu	$a5,$a5,20
    addiu	$s7,$a5,28
    # Line 5534
    swc1	$f0,220($s5)
    addiu	$s5,$a4,28
    nop
.L0da313e0:
    addiu	$t0,$t0,-1
    # Line 5535
    addu	$t1,$a7,$a5
    addiu	$a6,$a6,-1
    addu	$t2,$a7,$a4
    lw	$t1,0($t1)
    addiu	$a7,$a7,4
    bnez	$t0,.L0da313e0
    sw	$t1,0($t2)
    addiu	$s0,$a5,16
    addiu	$t9,$a5,24
    addiu	$a0,$a5,12
    addiu	$s6,$a5,8
    addiu	$a1,$a5,4
    addiu	$t2,$a4,4
    addiu	$t1,$a5,20
    addiu	$t0,$a4,20
.L0da31420:
    addu	$v1,$a7,$a5
    addu	$a2,$a7,$a4
    lw	$v1,0($v1)
    addu	$v0,$a7,$a1
    sw	$v1,0($a2)
    addu	$v1,$a7,$t2
    lw	$v0,0($v0)
    addu	$at,$a7,$s6
    sw	$v0,0($v1)
    addu	$v0,$a7,$s8
    lw	$at,0($at)
    addu	$a3,$a7,$a0
    sw	$at,0($v0)
    addu	$at,$a7,$s1
    lw	$a3,0($a3)
    addu	$a2,$a7,$s0
    sw	$a3,0($at)
    addu	$a3,$a7,$ra
    lw	$a2,0($a2)
    addu	$v1,$a7,$t1
    sw	$a2,0($a3)
    addu	$a2,$a7,$t0
    lw	$v1,0($v1)
    addu	$v0,$a7,$t9
    sw	$v1,0($a2)
    addu	$v1,$a7,$t3
    lw	$v0,0($v0)
    addiu	$a6,$a6,-8
    addu	$at,$a7,$s7
    sw	$v0,0($v1)
    addu	$v0,$a7,$s5
    lw	$at,0($at)
    addu	$a7,$a7,$t8
    bgtz	$a6,.L0da31420
    sw	$at,0($v0)
    # Line 5538
    li	$a1,2
    sw	$a1,4120($zero)
    ld	$a1,48($sp)
    lw	$a0,11756($a1)
    ori	$a0,$a0,0x1
    sw	$a0,11756($a1)
    # Line 5539
    b	.L0da3131c
    lw	$a4,0($s3)
.L0da314cc:
    # Line 5548
    ld	$a3,32($sp)
    # lw $t9, -25380($gp) # &__glNamesDeleteRange
    ld	$a0,48($sp)
    move	$a2,$a3
    ld	$a1,24($sp)
    jal	__glNamesDeleteRange
    subu	$a3,$s4,$a3
.L0da314e8:
    ld	$s2,56($sp)
    ld	$s3,64($sp)
    ld	$s6,72($sp)
    ld	$s4,88($sp)
    ld	$s0,0($sp)
    ld	$s1,8($sp)
    ld	$s5,96($sp)
    ld	$ra,80($sp)
    ld	$s7,104($sp)
    ld	$s8,112($sp)
    # Line 5549
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da3151c:
    # Line 5486
    jalr	$t9
    li	$a0,1281
    sd	$s2,56($sp)
    b	.L0da31264
    sd	$s4,88($sp)
.L0da31530:
    # Line 5485
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    sd	$s2,56($sp)
    b	.L0da314e8
    sd	$s4,88($sp)
.end __glim_DeleteTexturesEXT

# Function: __glBindTexture
# Declared: Line 5555 (Source lines: 5556-5632)
# Address: 0x0da31550 - 0x0da31998 (Size: 1096 bytes, Frame: 128)
.globl __glBindTexture
.ent __glBindTexture
__glBindTexture:
    # Line 5556
    addiu	$sp,$sp,-128
    sd	$a2,16($sp)
    sd	$s2,8($sp)
    sd	$s8,104($sp)
    sd	$s3,32($sp)
    sd	$s6,80($sp)
    sd	$s7,72($sp)
    sd	$s4,64($sp)
    sd	$s1,56($sp)
    sd	$s5,48($sp)
    lui	$v0,0x2
    sd	$s0,88($sp)
    addiu	$v0,$v0,-1988
    move	$s0,$a1
    sd	$gp,96($sp)
    addu	$gp,$t9,$v0
    sd	$ra,40($sp)
    bnez	$a2,.L0da31648
    move	$v0,$a0
    sd	$a0,24($sp)
    # Line 5565
    sll	$a0,$a1,0x2
    addu	$a0,$a0,$a1
    ld	$v1,24($sp)
    sll	$a0,$a0,0x2
    subu	$a0,$a0,$a1
    lw	$v1,28204($v1)
    sll	$a0,$a0,0x4
    addu	$v1,$v1,$a0
    # Line 5570
    bnez	$v1,.L0da31664
    # Line 5565
    sd	$v1,0($sp)
.L0da315c8:
    # Line 5579
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,4($t9)
    li	$a2,304
    jalr	$t9
    li	$a1,1
    # Line 5582
    ld	$t9,24($sp)
    move	$a0,$t9
    lw	$t9,28228($t9)
    # Line 5579
    move	$s1,$v0
    sd	$v0,0($sp)
    # Line 5582
    move	$a1,$v0
    ld	$a2,16($sp)
    jalr	$t9
    move	$a3,$s0
    # Line 5583
    # lw $t9, -32688($gp) # &sub_0da20000
    addiu	$t9,$t9,-6000
    move	$a1,$s0
    ld	$a0,24($sp)
    jal	sub_0da20000
    addiu	$a2,$s1,16
    # Line 5584
    # lw $t9, -25404($gp) # &__glNamesNewData
    ld	$a1,24($sp)
    move	$a3,$s1
    ld	$a2,16($sp)
    move	$a0,$a1
    jal	__glNamesNewData
    lw	$a1,28232($a1)
    # Line 5588
    lw	$a2,0($s1)
    addiu	$a2,$a2,1
    b	.L0da31674
    sw	$a2,0($s1)
.L0da31648:
    # Line 5570
    # lw $t9, -25400($gp) # &__glNamesLockData
    sd	$a0,24($sp)
    ld	$a2,16($sp)
    jal	__glNamesLockData
    lw	$a1,28232($v0)
    beqz	$v0,.L0da315c8
    sd	$v0,0($sp)
.L0da31664:
    # Line 5588
    ld	$a4,0($sp)
    lw	$a4,8($a4)
    bne	$a4,$s0,.L0da31964
    ld	$s2,8($sp)
.L0da31674:
    # Line 5608
    ld	$a1,24($sp)
    li	$t1,6
    # Line 5612
    li	$a7,54
    # Line 5608
    sll	$a3,$s0,0x2
    lw	$a0,28196($a1)
    # Line 5612
    move	$t0,$zero
    # Line 5607
    sll	$a2,$s0,0x3
    # Line 5609
    lw	$v0,28200($a1)
    # Line 5607
    subu	$a2,$a2,$s0
    lw	$a1,2480($a1)
    # Line 5608
    addu	$a0,$a0,$a3
    li	$t9,0x20
    # Line 5607
    sll	$a2,$a2,0x5
    # Line 5608
    lw	$a0,0($a0)
    # Line 5609
    addu	$v0,$v0,$a3
    # Line 5607
    addu	$a1,$a1,$a2
    # Line 5612
    move	$a2,$a1
    # Line 5609
    lw	$v0,0($v0)
    # Line 5612
    addiu	$a6,$a0,4
.L0da316c0:
    addiu	$t1,$t1,-1
    addu	$a4,$t0,$a2
    addiu	$a7,$a7,-1
    addu	$a5,$t0,$a6
    lw	$a4,0($a4)
    addiu	$t0,$t0,4
    bnez	$t1,.L0da316c0
    sw	$a4,0($a5)
    addiu	$s1,$a2,16
    addiu	$s0,$a6,16
    addiu	$ra,$a2,24
    addiu	$t8,$a6,24
    addiu	$t2,$a2,20
    addiu	$s3,$a6,12
    addiu	$s7,$a2,12
    addiu	$s5,$a2,8
    addiu	$s2,$a6,8
    addiu	$t3,$a6,4
    addiu	$s8,$a2,4
    addiu	$s4,$a6,28
    addiu	$s6,$a2,28
    addiu	$t1,$a6,20
    nop
    nop
.L0da31720:
    addu	$a4,$t0,$a2
    addu	$a5,$t0,$a6
    lw	$a4,0($a4)
    addu	$v1,$t0,$s8
    sw	$a4,0($a5)
    addu	$a4,$t0,$t3
    lw	$v1,0($v1)
    addu	$at,$t0,$s5
    sw	$v1,0($a4)
    addu	$v1,$t0,$s2
    lw	$at,0($at)
    addu	$a5,$t0,$s7
    sw	$at,0($v1)
    addu	$at,$t0,$s3
    lw	$a5,0($a5)
    addu	$a4,$t0,$s1
    sw	$a5,0($at)
    addu	$a5,$t0,$s0
    lw	$a4,0($a4)
    addu	$v1,$t0,$t2
    sw	$a4,0($a5)
    addu	$a4,$t0,$t1
    lw	$v1,0($v1)
    addu	$at,$t0,$ra
    sw	$v1,0($a4)
    addu	$v1,$t0,$t8
    lw	$at,0($at)
    addiu	$a7,$a7,-8
    addu	$a5,$t0,$s6
    sw	$at,0($v1)
    addu	$at,$t0,$s4
    lw	$a5,0($a5)
    addu	$t0,$t0,$t9
    bgtz	$a7,.L0da31720
    sw	$a5,0($at)
    # Line 5613
    lw	$a6,216($a1)
    sw	$a6,220($a0)
    lwc1	$f0,220($a1)
    swc1	$f0,224($a0)
    lw	$a5,236($v0)
    beqz	$a5,.L0da317ec
    li	$t1,6
    # Line 5617
    # lw $t9, -25392($gp) # &__glNamesUnlockData
    sd	$a3,120($sp)
    ld	$a0,24($sp)
    sd	$a1,112($sp)
    jal	__glNamesUnlockData
    move	$a1,$v0
    ld	$a1,112($sp)
    ld	$a3,120($sp)
    li	$t1,6
.L0da317ec:
    # Line 5624
    ld	$t2,24($sp)
    # Line 5628
    li	$a7,54
    move	$a2,$a1
    move	$t0,$zero
    addiu	$s3,$a2,28
    # Line 5624
    lw	$t8,28196($t2)
    addiu	$s1,$a2,8
    addiu	$s2,$a2,12
    ld	$v0,0($sp)
    addiu	$a0,$a2,20
    addu	$t8,$t8,$a3
    # Line 5628
    addiu	$a6,$v0,20
    # Line 5624
    addiu	$t3,$v0,16
    sw	$t3,0($t8)
    addiu	$s5,$a6,28
    addiu	$s7,$a6,4
    # Line 5625
    lw	$t2,28200($t2)
    ld	$s8,104($sp)
    addiu	$s4,$a6,8
    addiu	$s6,$a6,12
    # Line 5632
    ld	$gp,96($sp)
    addiu	$s0,$a6,16
    # Line 5625
    addu	$t2,$t2,$a3
    li	$t8,0x20
    sw	$v0,0($t2)
    addiu	$t2,$a2,4
    nop
    nop
    nop
.L0da31860:
    addiu	$t1,$t1,-1
    # Line 5628
    addu	$t9,$t0,$a6
    addiu	$a7,$a7,-1
    addu	$ra,$t0,$a2
    lw	$t9,0($t9)
    addiu	$t0,$t0,4
    bnez	$t1,.L0da31860
    sw	$t9,0($ra)
    addiu	$t3,$a2,24
    addiu	$t1,$a6,20
    addiu	$t9,$a6,24
    addiu	$ra,$a2,16
.L0da31890:
    addu	$a3,$t0,$a6
    addu	$a4,$t0,$a2
    lw	$a3,0($a3)
    addu	$v1,$t0,$s7
    sw	$a3,0($a4)
    addu	$a3,$t0,$t2
    lw	$v1,0($v1)
    addu	$at,$t0,$s4
    sw	$v1,0($a3)
    addu	$v1,$t0,$s1
    lw	$at,0($at)
    addu	$a5,$t0,$s6
    sw	$at,0($v1)
    addu	$at,$t0,$s2
    lw	$a5,0($a5)
    addu	$a4,$t0,$s0
    sw	$a5,0($at)
    addu	$a5,$t0,$ra
    lw	$a4,0($a4)
    addu	$a3,$t0,$t1
    sw	$a4,0($a5)
    addu	$a4,$t0,$a0
    lw	$a3,0($a3)
    addu	$v1,$t0,$t9
    sw	$a3,0($a4)
    addu	$a3,$t0,$t3
    lw	$v1,0($v1)
    addiu	$a7,$a7,-8
    addu	$at,$t0,$s5
    sw	$v1,0($a3)
    addu	$v1,$t0,$s3
    lw	$at,0($at)
    addu	$t0,$t0,$t8
    bgtz	$a7,.L0da31890
    sw	$at,0($v1)
    # Line 5632
    ld	$s0,88($sp)
    ld	$s1,56($sp)
    ld	$s2,8($sp)
    ld	$s3,32($sp)
    ld	$s4,64($sp)
    ld	$s5,48($sp)
    ld	$s6,80($sp)
    ld	$ra,40($sp)
    # Line 5629
    lw	$a4,236($v0)
    sw	$a4,216($a1)
    lwc1	$f1,240($v0)
    # Line 5632
    ld	$s7,72($sp)
    addiu	$sp,$sp,128
    jr	$ra
    # Line 5629
    swc1	$f1,220($a1)
.L0da31958:
    # Line 5632
    ld	$gp,96($sp)
    jr	$ra
    addiu	$sp,$sp,128
.L0da31964:
    ld	$s8,104($sp)
    ld	$s3,32($sp)
    ld	$s6,80($sp)
    ld	$s7,72($sp)
    ld	$s4,64($sp)
    # Line 5596
    # lw $t9, -26452($gp) # &__glSetError
    ld	$s0,88($sp)
    ld	$s1,56($sp)
    ld	$s5,48($sp)
    jal	__glSetError
    li	$a0,1282
    b	.L0da31958
    ld	$ra,40($sp)
.end __glBindTexture

# Function: __glim_BindTextureEXT
# Declared: Line 5634 (Source lines: 5635-5662)
# Address: 0x0da319a0 - 0x0da31a94 (Size: 244 bytes, Frame: 48)
.globl __glim_BindTextureEXT
.ent __glim_BindTextureEXT
__glim_BindTextureEXT:
    # Line 5641
    lw	$v0,4112($zero)
    # Line 5635
    addiu	$sp,$sp,-48
    # Line 5641
    lw	$a4,4120($zero)
    sd	$v0,0($sp)
    # Line 5635
    lui	$at,0x2
    move	$a2,$a1
    sd	$ra,24($sp)
    addiu	$at,$at,-3092
    sd	$gp,8($sp)
    # Line 5641
    beqz	$a4,.L0da31a18
    # Line 5635
    addu	$gp,$t9,$at
    # Line 5641
    li	$v0,2
    sd	$a1,16($sp)
    beq	$a4,$v0,.L0da319f8
    sd	$a0,32($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,24($sp)
.L0da319ec:
    # Line 5662
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da319f8:
    # Line 5641
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a0,32($sp)
    ld	$a2,16($sp)
    sw	$zero,4120($zero)
.L0da31a18:
    # Line 5643
    li	$ra,3552
    li	$at,3553
    # Line 5649
    li	$a1,1
    # Line 5643
    beq	$a0,$ra,.L0da31a84
    li	$v0,0x806f
    beq	$a0,$at,.L0da31a8c
    nop
    beq	$a0,$v0,.L0da31a50
    # Line 5651
    li	$a1,2
    # Line 5654
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0da319ec
    ld	$ra,24($sp)
.L0da31a50:
    # Line 5658
    # lw $t9, -23772($gp) # &__glBindTexture
.L0da31a54:
    bal __glBindTexture
    ld	$a0,0($sp)
    # Line 5661
    li	$a0,2
    sw	$a0,4120($zero)
    ld	$a0,0($sp)
    ld	$ra,24($sp)
    lw	$v1,11756($a0)
    # Line 5662
    ld	$gp,8($sp)
    addiu	$sp,$sp,48
    # Line 5661
    ori	$v1,$v1,0x1
    # Line 5662
    jr	$ra
    # Line 5661
    sw	$v1,11756($a0)
.L0da31a84:
    b	.L0da31a50
    # Line 5645
    move	$a1,$zero
.L0da31a8c:
    # Line 5649
    b	.L0da31a54
    # Line 5658
    nop	# was lw $t9, -23772($gp) # &__glBindTexture
.end __glim_BindTextureEXT

# Function: __glim_PrioritizeTexturesEXT
# Declared: Line 5665 (Source lines: 5668-5698)
# Address: 0x0da31aa0 - 0x0da31c18 (Size: 376 bytes, Frame: 224)
.globl __glim_PrioritizeTexturesEXT
.ent __glim_PrioritizeTexturesEXT
__glim_PrioritizeTexturesEXT:
    # Line 5668
    addiu	$sp,$sp,-96
    sd	$s2,0($sp)
    # Line 5672
    lw	$s2,4112($zero)
    sdc1	$f20,24($sp)
    sd	$ra,48($sp)
    sd	$s4,56($sp)
    sd	$s0,64($sp)
    sd	$s1,72($sp)
    li	$v1,1
    lw	$at,4120($zero)
    sd	$s5,80($sp)
    # Line 5668
    move	$v0,$a2
    lui	$a2,0x2
    sd	$s3,8($sp)
    move	$s3,$a0
    addiu	$a0,$a2,-3348
    sd	$gp,16($sp)
    # Line 5672
    beq	$at,$v1,.L0da31c04
    # Line 5668
    addu	$gp,$t9,$a0
    # Line 5672
    bltz	$s3,.L0da31be8
    # Line 5673
    nop	# was lw $t9, -26452($gp) # &__glSetError
    beqz	$s3,.L0da31bbc
    nop
.L0da31afc:
    blez	$s3,.L0da31bbc
    move	$s0,$a1
    move	$s1,$v0
    sll	$s4,$s3,0x2
    la	$s5,sub_0da20000
    mtc1	$zero,$f20
    addu	$s4,$s4,$a1
    b	.L0da31b3c
    addiu	$s5,$s5,-6768
.L0da31b20:
    # Line 5696
    # lw $t9, -25392($gp) # &__glNamesUnlockData
.L0da31b24:
    move	$a0,$s2
    jal	__glNamesUnlockData
    move	$a1,$s3
.L0da31b30:
    # Line 5675
    addiu	$s0,$s0,4
    beq	$s0,$s4,.L0da31bbc
    addiu	$s1,$s1,4
.L0da31b3c:
    # Line 5677
    lw	$a2,0($s0)
    beqz	$a2,.L0da31b30
    # Line 5679
    nop	# was lw $t9, -25400($gp) # &__glNamesLockData
    move	$a0,$s2
    jal	__glNamesLockData
    lw	$a1,28232($s2)
    # Line 5683
    beqz	$v0,.L0da31b30
    # Line 5679
    move	$s3,$v0
    # Line 5685
    move	$t9,$s5
    lwc1	$f14,3544($s2)
    mov.s	$f13,$f20
    jalr	$t9
    lwc1	$f12,0($s1)
    swc1	$f0,240($s3)
    lw	$v1,8($s3)
    lw	$v0,28196($s2)
    sll	$v1,$v1,0x2
    addu	$v0,$v0,$v1
    lw	$v0,0($v0)
    lw	$t9,236($s3)
    lw	$t8,220($v0)
    bne	$t8,$t9,.L0da31b24
    # Line 5696
    nop	# was lw $t9, -25392($gp) # &__glNamesUnlockData
    # Line 5692
    swc1	$f0,224($v0)
    lw	$a2,8($s3)
    sll	$a1,$a2,0x3
    lw	$a0,2480($s2)
    subu	$a1,$a1,$a2
    sll	$a1,$a1,0x5
    addu	$a0,$a0,$a1
    b	.L0da31b20
    swc1	$f0,220($a0)
.L0da31bbc:
    ld	$s2,0($sp)
.L0da31bc0:
    ld	$s3,8($sp)
    ld	$s4,56($sp)
    ld	$s0,64($sp)
    ld	$s1,72($sp)
    ld	$ra,48($sp)
    ld	$s5,80($sp)
    ldc1	$f20,24($sp)
    # Line 5698
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da31be8:
    sd	$a1,32($sp)
    sd	$v0,40($sp)
    # Line 5673
    jal	__glNamesUnlockData
    li	$a0,1281
    ld	$v0,40($sp)
    b	.L0da31afc
    ld	$a1,32($sp)
.L0da31c04:
    # Line 5672
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da31bc0
    ld	$s2,0($sp)
.end __glim_PrioritizeTexturesEXT

# Function: IsTextureResident
# Declared: Line 5702 (Source lines: 5705-5722)
# Address: 0x0da31c20 - 0x0da31cb8 (Size: 152 bytes, Frame: 0)
.ent IsTextureResident
IsTextureResident:
    # Line 5705
    lw	$a3,3732($a0)
    # Line 5715
    li	$v0,1
    # Line 5705
    blez	$a3,.L0da31ca0
    sll	$t0,$a3,0x2
    li	$a6,9728
    subu	$t0,$t0,$a3
    li	$a7,9729
    lw	$a4,228($a1)
    sll	$t0,$t0,0x3
    li	$a5,1
    addu	$t0,$t0,$a3
    move	$a2,$a4
    sll	$t0,$t0,0x2
    b	.L0da31c68
    addu	$a4,$a4,$t0
    nop
.L0da31c60:
    # Line 5707
    beq	$a2,$a4,.L0da31ca0
    nop
.L0da31c68:
    # Line 5705
    lw	$t1,0($a2)
    # Line 5707
    addiu	$a2,$a2,100
    # Line 5719
    lw	$t3,-92($a2)
    # Line 5705
    beqz	$t1,.L0da31cb0
    # Line 5719
    lw	$t2,-96($a2)
    # Line 5712
    lw	$a3,16($a1)
    beq	$a6,$a3,.L0da31ca8
    nop
    beq	$a7,$a3,.L0da31ca8
    nop
    # Line 5719
    bne	$t2,$a5,.L0da31c60
    nop
    bne	$t3,$a5,.L0da31c60
    nop
.L0da31ca0:
    # Line 5722
    jr	$ra
    li	$v0,1
.L0da31ca8:
    jr	$ra
    nop
.L0da31cb0:
    jr	$ra
    # Line 5709
    move	$v0,$zero
.end IsTextureResident

# Function: __glim_AreTexturesResidentEXT
# Declared: Line 5725 (Source lines: 5728-5762)
# Address: 0x0da31cc0 - 0x0da31eac (Size: 492 bytes, Frame: 240)
.globl __glim_AreTexturesResidentEXT
.ent __glim_AreTexturesResidentEXT
__glim_AreTexturesResidentEXT:
    # Line 5728
    addiu	$sp,$sp,-112
    sd	$s0,8($sp)
    # Line 5733
    lw	$s0,4112($zero)
    sd	$s2,72($sp)
    sd	$s6,64($sp)
    sd	$ra,56($sp)
    sd	$s1,48($sp)
    sd	$s5,40($sp)
    # Line 5731
    li	$v1,1
    # Line 5733
    lw	$at,4120($zero)
    sd	$s7,96($sp)
    # Line 5728
    move	$v0,$a2
    lui	$a2,0x2
    sd	$s3,0($sp)
    move	$s3,$a0
    addiu	$a0,$a2,-3892
    sd	$gp,16($sp)
    # Line 5733
    beq	$at,$v1,.L0da31e90
    # Line 5728
    addu	$gp,$t9,$a0
    # Line 5733
    bltz	$s3,.L0da31e74
    # Line 5734
    nop	# was lw $t9, -26452($gp) # &__glSetError
    beqz	$s3,.L0da31e64
.L0da31d18:
    move	$s1,$a1
    blez	$s3,.L0da31dd0
    sd	$s8,88($sp)
    la	$s5,sub_0da20000
    move	$s2,$v0
    li	$s8,1
    sll	$s7,$s3,0x2
    la	$s6,sub_0da30000
    addiu	$s5,$s5,7264
    addu	$s7,$s7,$a1
    sd	$s4,32($sp)
    b	.L0da31d84
    addiu	$s6,$s6,7200
    nop
.L0da31d50:
    # Line 5751
    move	$a0,$s0
    bal __glim_PrioritizeTexturesEXT
    move	$a1,$s4
    beqz	$v0,.L0da31dc4
    # Line 5757
    li	$t8,1
    sb	$t8,0($s2)
.L0da31d68:
    # Line 5759
    # lw $t9, -25392($gp) # &__glNamesUnlockData
    move	$a0,$s0
    jal	__glNamesUnlockData
    move	$a1,$s3
    # Line 5736
    addiu	$s1,$s1,4
    beq	$s1,$s7,.L0da31dd8
    addiu	$s2,$s2,1
.L0da31d84:
    # Line 5734
    lw	$a2,0($s1)
    beqz	$a2,.L0da31e10
    # Line 5739
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 5742
    # lw $t9, -25400($gp) # &__glNamesLockData
    move	$a0,$s0
    jal	__glNamesLockData
    lw	$a1,28232($s0)
    beqz	$v0,.L0da31e50
    move	$s3,$v0
    # Line 5751
    move	$t9,$s5
    move	$a0,$s0
    addiu	$s4,$v0,16
    jalr	$t9
    move	$a1,$s4
    bnez	$v0,.L0da31d50
    move	$t9,$s6
.L0da31dc4:
    # Line 5754
    sb	$zero,0($s2)
    # Line 5751
    b	.L0da31d68
    move	$s8,$zero
.L0da31dd0:
    # Line 5736
    li	$s8,1
    sd	$s4,32($sp)
.L0da31dd8:
    # Line 5762
    move	$v0,$s8
.L0da31ddc:
    ld	$s2,72($sp)
    ld	$s3,0($sp)
    ld	$s6,64($sp)
    ld	$s4,32($sp)
    ld	$s0,8($sp)
    ld	$s1,48($sp)
    ld	$s5,40($sp)
    ld	$ra,56($sp)
    ld	$s7,96($sp)
    ld	$s8,88($sp)
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da31e10:
    # Line 5739
    jalr	$t9
    li	$a0,1281
    ld	$s7,96($sp)
    ld	$s8,88($sp)
    ld	$s2,72($sp)
    ld	$s6,64($sp)
    ld	$s1,48($sp)
    ld	$s5,40($sp)
    ld	$s4,32($sp)
    ld	$ra,56($sp)
    # Line 5762
    ld	$gp,16($sp)
    # Line 5740
    move	$v0,$zero
    # Line 5762
    ld	$s0,8($sp)
    ld	$s3,0($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0da31e50:
    # Line 5748
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    # Line 5749
    b	.L0da31ddc
    move	$v0,$zero
.L0da31e64:
    sd	$s4,32($sp)
    # Line 5734
    move	$v0,$zero
    b	.L0da31ddc
    sd	$s8,88($sp)
.L0da31e74:
    sd	$a1,24($sp)
    sd	$v0,80($sp)
    jalr	$t9
    li	$a0,1281
    ld	$v0,80($sp)
    b	.L0da31d18
    ld	$a1,24($sp)
.L0da31e90:
    # Line 5733
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    sd	$s4,32($sp)
    move	$v0,$zero
    b	.L0da31ddc
    sd	$s8,88($sp)
.end __glim_AreTexturesResidentEXT

# Function: __glim_IsTextureEXT
# Declared: Line 5765 (Source lines: 5766-5779)
# Address: 0x0da31eb0 - 0x0da31f74 (Size: 196 bytes, Frame: 32)
.globl __glim_IsTextureEXT
.ent __glim_IsTextureEXT
__glim_IsTextureEXT:
    # Line 5766
    addiu	$sp,$sp,-32
    sd	$s0,8($sp)
    # Line 5768
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 5766
    lui	$v1,0x2
    move	$a2,$a0
    sd	$ra,16($sp)
    addiu	$v1,$v1,-4388
    sd	$gp,0($sp)
    # Line 5768
    beq	$at,$v0,.L0da31f50
    # Line 5766
    addu	$gp,$t9,$v1
    # Line 5768
    beqz	$a0,.L0da31f3c
    move	$ra,$ra
    # Line 5772
    # lw $t9, -25400($gp) # &__glNamesLockData
    move	$a0,$s0
    jal	__glNamesLockData
    lw	$a1,28232($s0)
    bnez	$v0,.L0da31f14
    ld	$ra,16($sp)
    # Line 5775
    move	$v0,$zero
    # Line 5779
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da31f14:
    # Line 5777
    # lw $t9, -25392($gp) # &__glNamesUnlockData
    move	$a0,$s0
    jal	__glNamesUnlockData
    move	$a1,$v0
    ld	$ra,16($sp)
    # Line 5779
    li	$v0,1
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da31f3c:
    # Line 5770
    move	$v0,$zero
    # Line 5779
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da31f50:
    # Line 5768
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    ld	$ra,16($sp)
    move	$v0,$zero
    # Line 5779
    ld	$gp,0($sp)
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glim_IsTextureEXT

# Function: __glim_CopyTexImage1DEXT
# Declared: Line 5792 (Source lines: 5799-5850)
# Address: 0x0da31f80 - 0x0da321a0 (Size: 544 bytes, Frame: 240)
.globl __glim_CopyTexImage1DEXT
.ent __glim_CopyTexImage1DEXT
__glim_CopyTexImage1DEXT:
    # Line 5799
    addiu	$sp,$sp,-624
    sd	$a6,552($sp)
    sd	$a5,568($sp)
    sd	$a4,536($sp)
    sd	$a3,544($sp)
    sd	$a2,560($sp)
    sd	$a1,576($sp)
    sd	$s0,584($sp)
    # Line 5809
    lw	$v0,4120($zero)
    lw	$s0,4112($zero)
    # Line 5799
    lui	$at,0x2
    move	$t2,$a0
    sd	$ra,600($sp)
    addiu	$at,$at,-4596
    sd	$gp,592($sp)
    # Line 5809
    beqz	$v0,.L0da32004
    # Line 5799
    addu	$gp,$t9,$at
    # Line 5809
    li	$v1,2
    beq	$v0,$v1,.L0da31ff0
    sd	$a0,608($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da31fdc:
    ld	$ra,600($sp)
.L0da31fe0:
    ld	$s0,584($sp)
    # Line 5850
    ld	$gp,592($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0da31ff0:
    # Line 5809
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$t2,608($sp)
    sw	$zero,4120($zero)
.L0da32004:
    # Line 5812
    ld	$a2,576($sp)
    ld	$a3,560($sp)
    ld	$a4,544($sp)
    ld	$a5,536($sp)
    ld	$a6,568($sp)
    # lw $t9, -24200($gp) # &__glCheckCopyTexImageArgs
    li	$t0,1
    sw	$t0,12($sp)
    move	$a0,$s0
    move	$a1,$t2
    ld	$a7,552($sp)
    sw	$a7,4($sp)
    jal	__glCheckCopyTexImageArgs
    li	$a7,1
    beqz	$v0,.L0da31fdc
    sd	$v0,528($sp)
    # Line 5817
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    li	$a1,3552
    lw	$t3,0($v0)
    slti	$t3,$t3,3
    # Line 5824
    li	$t9,0x8010
    # Line 5828
    ld	$a4,568($sp)
    # Line 5817
    beqz	$t3,.L0da3218c
    move	$t2,$v0
    # Line 5824
    lw	$a0,764($s0)
    lw	$t3,64($a0)
    beqz	$t3,.L0da32088
    sd	$v0,520($sp)
    lw	$t8,0($a0)
    beq	$t8,$t9,.L0da3217c
    nop
.L0da32088:
    # Line 5830
    li	$a6,1
    sw	$a6,4($sp)
    ld	$a1,528($sp)
    ld	$a5,552($sp)
    lw	$t9,244($a1)
    move	$a7,$a5
    addu	$a5,$a5,$a5
    ld	$a3,560($sp)
    move	$a0,$s0
    addiu	$a5,$a5,1
    ld	$a2,576($sp)
    jalr	$t9
    move	$a6,$a5
    beqz	$v0,.L0da32154
    # Line 5836
    nop	# was lw $t9, -27712($gp) # &__glInitReadImageSrcInfo
    ld	$a4,568($sp)
    move	$a0,$s0
    li	$a5,1
    ld	$a3,536($sp)
    ld	$a2,544($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,16
    # Line 5837
    # lw $t9, -24228($gp) # &__glInitTexImageStore
    move	$a0,$s0
    ld	$a3,576($sp)
    ld	$a2,528($sp)
    jal	__glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 5838
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5839
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5841
    # lw $t9, -27808($gp) # &__glClipReadPixels
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,16
    beqz	$v0,.L0da31fe0
    ld	$ra,600($sp)
    # Line 5842
    ld	$a2,528($sp)
    lw	$t9,252($a2)
    move	$a0,$s0
    ld	$a3,576($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 5845
    ld	$t0,520($sp)
    li	$a7,1
    sb	$a7,12($t0)
.L0da32154:
    # Line 5849
    li	$t2,2
    sw	$t2,4120($zero)
    lw	$t1,11756($s0)
    ld	$ra,600($sp)
    # Line 5850
    ld	$gp,592($sp)
    # Line 5849
    ori	$t1,$t1,0x1
    sw	$t1,11756($s0)
    # Line 5850
    ld	$s0,584($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0da3217c:
    # Line 5826
    ld	$a4,568($sp)
    subu	$a4,$a4,$t3
    b	.L0da32088
    addiu	$a4,$a4,1
.L0da3218c:
    # Line 5819
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da31fe0
    ld	$ra,600($sp)
.end __glim_CopyTexImage1DEXT

# Function: __glim_CopyTexImage2DEXT
# Declared: Line 5852 (Source lines: 5858-5912)
# Address: 0x0da321a0 - 0x0da323e4 (Size: 580 bytes, Frame: 240)
.globl __glim_CopyTexImage2DEXT
.ent __glim_CopyTexImage2DEXT
__glim_CopyTexImage2DEXT:
    # Line 5858
    addiu	$sp,$sp,-624
    sd	$a7,552($sp)
    sd	$a6,576($sp)
    sd	$a5,568($sp)
    sd	$a4,536($sp)
    sd	$a3,544($sp)
    sd	$a2,560($sp)
    sd	$a1,584($sp)
    sd	$s0,592($sp)
    # Line 5868
    lw	$v0,4120($zero)
    lw	$s0,4112($zero)
    # Line 5858
    lui	$at,0x2
    move	$t2,$a0
    sd	$ra,608($sp)
    addiu	$at,$at,-5140
    sd	$gp,600($sp)
    # Line 5868
    beqz	$v0,.L0da32228
    # Line 5858
    addu	$gp,$t9,$at
    # Line 5868
    li	$v1,2
    beq	$v0,$v1,.L0da32214
    sd	$a0,616($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da32200:
    ld	$ra,608($sp)
.L0da32204:
    ld	$s0,592($sp)
    # Line 5912
    ld	$gp,600($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0da32214:
    # Line 5868
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$t2,616($sp)
    sw	$zero,4120($zero)
.L0da32228:
    # Line 5871
    ld	$a2,584($sp)
    ld	$a3,560($sp)
    ld	$a4,544($sp)
    ld	$a5,536($sp)
    ld	$a6,568($sp)
    ld	$a7,576($sp)
    # lw $t9, -24200($gp) # &__glCheckCopyTexImageArgs
    li	$t1,2
    sw	$t1,12($sp)
    move	$a0,$s0
    ld	$t0,552($sp)
    move	$a1,$t2
    jal	__glCheckCopyTexImageArgs
    sw	$t0,4($sp)
    beqz	$v0,.L0da32200
    sd	$v0,528($sp)
    # Line 5876
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    li	$a1,3553
    lw	$t3,0($v0)
    slti	$t3,$t3,3
    # Line 5883
    li	$t9,0x8012
    # Line 5889
    ld	$a4,568($sp)
    # Line 5883
    li	$t8,0x8011
    # Line 5890
    ld	$a5,576($sp)
    # Line 5876
    beqz	$t3,.L0da323d0
    move	$t2,$v0
    # Line 5883
    lw	$a0,764($s0)
    lw	$t3,64($a0)
    beqz	$t3,.L0da322bc
    sd	$v0,520($sp)
    lw	$t2,0($a0)
    beq	$t2,$t8,.L0da323b0
    nop
    beq	$t2,$t9,.L0da323b0
    nop
.L0da322bc:
    # Line 5892
    ld	$a6,552($sp)
    ld	$t9,528($sp)
    li	$ra,2
    sw	$ra,4($sp)
    move	$a1,$t9
    lw	$t9,244($t9)
    move	$a0,$s0
    ld	$a2,584($sp)
    move	$a7,$a6
    addu	$a6,$a6,$a6
    ld	$a3,560($sp)
    jalr	$t9
    addiu	$a6,$a6,1
    beqz	$v0,.L0da32388
    # Line 5898
    ld	$a5,576($sp)
    # lw $t9, -27712($gp) # &__glInitReadImageSrcInfo
    ld	$a4,568($sp)
    move	$a0,$s0
    ld	$a3,536($sp)
    ld	$a2,544($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,16
    # Line 5899
    # lw $t9, -24228($gp) # &__glInitTexImageStore
    move	$a0,$s0
    ld	$a3,584($sp)
    ld	$a2,528($sp)
    jal	__glInitTexImageStore
    addiu	$a1,$sp,16
    # Line 5900
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,16
    # Line 5901
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,16
    # Line 5903
    # lw $t9, -27808($gp) # &__glClipReadPixels
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,16
    beqz	$v0,.L0da32204
    ld	$ra,608($sp)
    # Line 5904
    ld	$a2,528($sp)
    lw	$t9,252($a2)
    move	$a0,$s0
    ld	$a3,584($sp)
    jalr	$t9
    addiu	$a1,$sp,16
    # Line 5907
    ld	$v0,520($sp)
    li	$at,1
    sb	$at,12($v0)
.L0da32388:
    # Line 5911
    li	$a0,2
    sw	$a0,4120($zero)
    lw	$v1,11756($s0)
    ld	$ra,608($sp)
    # Line 5912
    ld	$gp,600($sp)
    # Line 5911
    ori	$v1,$v1,0x1
    sw	$v1,11756($s0)
    # Line 5912
    ld	$s0,592($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0da323b0:
    # Line 5887
    lw	$a6,68($a0)
    # Line 5886
    ld	$a4,568($sp)
    # Line 5887
    ld	$a5,576($sp)
    # Line 5886
    subu	$a4,$a4,$t3
    # Line 5887
    subu	$a5,$a5,$a6
    # Line 5886
    addiu	$a4,$a4,1
    # Line 5887
    b	.L0da322bc
    addiu	$a5,$a5,1
.L0da323d0:
    # Line 5878
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da32204
    ld	$ra,608($sp)
.end __glim_CopyTexImage2DEXT

# Function: __glim_CopyTexSubImage1DEXT
# Declared: Line 5915 (Source lines: 5921-5951)
# Address: 0x0da323f0 - 0x0da3257c (Size: 396 bytes, Frame: 240)
.globl __glim_CopyTexSubImage1DEXT
.ent __glim_CopyTexSubImage1DEXT
__glim_CopyTexSubImage1DEXT:
    # Line 5921
    addiu	$sp,$sp,-624
    sd	$a5,552($sp)
    sd	$a4,544($sp)
    sd	$a3,568($sp)
    sd	$a2,560($sp)
    sd	$a1,576($sp)
    sd	$s0,584($sp)
    # Line 5929
    lw	$v0,4120($zero)
    lw	$s0,4112($zero)
    # Line 5921
    lui	$at,0x2
    move	$t2,$a0
    sd	$ra,608($sp)
    addiu	$at,$at,-5732
    sd	$gp,592($sp)
    # Line 5929
    beqz	$v0,.L0da32470
    # Line 5921
    addu	$gp,$t9,$at
    # Line 5929
    li	$v1,2
    beq	$v0,$v1,.L0da3245c
    sd	$a0,600($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da32448:
    ld	$ra,608($sp)
.L0da3244c:
    ld	$s0,584($sp)
    # Line 5951
    ld	$gp,592($sp)
    jr	$ra
    addiu	$sp,$sp,624
.L0da3245c:
    # Line 5929
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$t2,600($sp)
    sw	$zero,4120($zero)
.L0da32470:
    # Line 5932
    ld	$a2,576($sp)
    ld	$a3,560($sp)
    ld	$a6,568($sp)
    ld	$a7,544($sp)
    li	$t0,1
    sw	$t0,12($sp)
    # lw $t9, -23816($gp) # &__glCheckCopyTexSubImageArgs
    move	$a0,$s0
    sw	$t0,20($sp)
    move	$a1,$t2
    move	$a4,$zero
    ld	$t1,552($sp)
    move	$a5,$zero
    bal __glCheckCopyTexSubImageArgs
    sw	$t1,4($sp)
    beqz	$v0,.L0da32448
    sd	$v0,536($sp)
    # Line 5937
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    li	$a1,3552
    lw	$t3,0($v0)
    slti	$t3,$t3,3
    beqz	$t3,.L0da3256c
    # Line 5939
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 5944
    # lw $t9, -27712($gp) # &__glInitReadImageSrcInfo
    ld	$a4,552($sp)
    move	$a0,$s0
    li	$a5,1
    ld	$a3,544($sp)
    ld	$a2,568($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,32
    # Line 5945
    # lw $t9, -23832($gp) # &__glInitTexSubImageStore
    move	$a0,$s0
    ld	$a4,560($sp)
    move	$a6,$zero
    move	$a5,$zero
    ld	$a3,576($sp)
    ld	$a2,536($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,32
    # Line 5946
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,32
    # Line 5947
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,32
    # Line 5949
    # lw $t9, -27808($gp) # &__glClipReadPixels
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,32
    beqz	$v0,.L0da32448
    # Line 5950
    ld	$a2,536($sp)
    lw	$t9,252($a2)
    move	$a0,$s0
    ld	$a3,576($sp)
    jalr	$t9
    addiu	$a1,$sp,32
    b	.L0da3244c
    ld	$ra,608($sp)
.L0da3256c:
    # Line 5939
    jalr	$t9
    li	$a0,1282
    b	.L0da3244c
    ld	$ra,608($sp)
.end __glim_CopyTexSubImage1DEXT

# Function: __glim_CopyTexSubImage2DEXT
# Declared: Line 5953 (Source lines: 5961-5992)
# Address: 0x0da32580 - 0x0da3271c (Size: 412 bytes, Frame: 128)
.globl __glim_CopyTexSubImage2DEXT
.ent __glim_CopyTexSubImage2DEXT
__glim_CopyTexSubImage2DEXT:
    # Line 5961
    addiu	$sp,$sp,-640
    sd	$a7,576($sp)
    sd	$a6,560($sp)
    sd	$a5,552($sp)
    sd	$a4,544($sp)
    sd	$a3,568($sp)
    sd	$a2,584($sp)
    sd	$a1,592($sp)
    sd	$s0,600($sp)
    # Line 5969
    lw	$v0,4120($zero)
    # Line 5961
    move	$t2,$a0
    # Line 5969
    lw	$s0,4112($zero)
    # Line 5961
    lui	$at,0x2
    # Line 5969
    li	$v1,2
    sd	$ra,624($sp)
    # Line 5961
    addiu	$at,$at,-6132
    sd	$gp,608($sp)
    # Line 5969
    beqz	$v0,.L0da32608
    # Line 5961
    addu	$gp,$t9,$at
    # Line 5969
    beq	$v0,$v1,.L0da325f4
    sd	$a0,616($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da325e0:
    ld	$ra,624($sp)
.L0da325e4:
    ld	$s0,600($sp)
    # Line 5992
    ld	$gp,608($sp)
    jr	$ra
    addiu	$sp,$sp,640
.L0da325f4:
    # Line 5969
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$t2,616($sp)
    sw	$zero,4120($zero)
.L0da32608:
    # Line 5972
    ld	$a2,592($sp)
    ld	$a3,584($sp)
    ld	$a4,568($sp)
    ld	$a6,544($sp)
    ld	$a7,552($sp)
    move	$a1,$t2
    li	$t2,2
    sw	$t2,20($sp)
    ld	$t0,560($sp)
    # lw $t9, -23816($gp) # &__glCheckCopyTexSubImageArgs
    ld	$t1,576($sp)
    move	$a0,$s0
    sw	$t1,12($sp)
    move	$a5,$zero
    bal __glCheckCopyTexSubImageArgs
    sw	$t0,4($sp)
    beqz	$v0,.L0da325e0
    sd	$v0,536($sp)
    # Line 5978
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    li	$a1,3553
    lw	$t8,0($v0)
    slti	$t8,$t8,3
    beqz	$t8,.L0da3270c
    # Line 5980
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 5985
    ld	$a5,576($sp)
    # lw $t9, -27712($gp) # &__glInitReadImageSrcInfo
    ld	$a4,560($sp)
    move	$a0,$s0
    ld	$a3,552($sp)
    ld	$a2,544($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,32
    # Line 5986
    ld	$a5,568($sp)
    # lw $t9, -23832($gp) # &__glInitTexSubImageStore
    ld	$a4,584($sp)
    move	$a0,$s0
    move	$a6,$zero
    ld	$a3,592($sp)
    ld	$a2,536($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,32
    # Line 5987
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,32
    # Line 5988
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,32
    # Line 5990
    # lw $t9, -27808($gp) # &__glClipReadPixels
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,32
    beqz	$v0,.L0da325e4
    ld	$ra,624($sp)
    # Line 5991
    ld	$a2,536($sp)
    lw	$t9,252($a2)
    move	$a0,$s0
    ld	$a3,592($sp)
    jalr	$t9
    addiu	$a1,$sp,32
    b	.L0da325e4
    ld	$ra,624($sp)
.L0da3270c:
    # Line 5980
    jalr	$t9
    li	$a0,1282
    b	.L0da325e4
    ld	$ra,624($sp)
.end __glim_CopyTexSubImage2DEXT

# Function: __glim_CopyTexSubImage3DEXT
# Declared: Line 5995 (Source lines: 6004-6035)
# Address: 0x0da32720 - 0x0da328b8 (Size: 408 bytes, Frame: 192)
.globl __glim_CopyTexSubImage3DEXT
.ent __glim_CopyTexSubImage3DEXT
__glim_CopyTexSubImage3DEXT:
    # Line 6004
    addiu	$sp,$sp,-704
    sd	$a7,568($sp)
    sd	$a6,560($sp)
    sd	$a5,552($sp)
    sd	$a4,544($sp)
    sd	$a3,576($sp)
    sd	$a2,584($sp)
    sd	$a1,592($sp)
    sd	$s0,600($sp)
    # Line 6012
    lw	$v0,4120($zero)
    # Line 6004
    move	$t2,$a0
    # Line 6012
    lw	$s0,4112($zero)
    # Line 6004
    lui	$at,0x2
    # Line 6012
    li	$v1,2
    sd	$ra,624($sp)
    # Line 6004
    addiu	$at,$at,-6548
    sd	$gp,608($sp)
    # Line 6012
    beqz	$v0,.L0da327a8
    # Line 6004
    addu	$gp,$t9,$at
    # Line 6012
    beq	$v0,$v1,.L0da32794
    sd	$a0,616($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
.L0da32780:
    ld	$ra,624($sp)
.L0da32784:
    ld	$s0,600($sp)
    # Line 6035
    ld	$gp,608($sp)
    jr	$ra
    addiu	$sp,$sp,704
.L0da32794:
    # Line 6012
    lw	$t9,11784($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$t2,616($sp)
    sw	$zero,4120($zero)
.L0da327a8:
    # Line 6015
    ld	$a7,560($sp)
    ld	$a6,552($sp)
    ld	$a5,544($sp)
    lw	$t0,708($sp)
    li	$t3,3
    sw	$t3,20($sp)
    ld	$a4,576($sp)
    ld	$a3,584($sp)
    ld	$a2,592($sp)
    # lw $t9, -23816($gp) # &__glCheckCopyTexSubImageArgs
    ld	$t1,568($sp)
    move	$a1,$t2
    sw	$t1,4($sp)
    move	$a0,$s0
    bal __glCheckCopyTexSubImageArgs
    sw	$t0,12($sp)
    beqz	$v0,.L0da32780
    sd	$v0,536($sp)
    # Line 6021
    # lw $t9, -24456($gp) # &__glLookUpTextureObject
    move	$a0,$s0
    jal	__glLookUpTextureObject
    li	$a1,3552
    lw	$t9,0($v0)
    slti	$t9,$t9,3
    beqz	$t9,.L0da328a4
    # Line 6028
    lw	$a5,708($sp)
    # lw $t9, -27712($gp) # &__glInitReadImageSrcInfo
    ld	$a4,568($sp)
    move	$a0,$s0
    ld	$a3,560($sp)
    ld	$a2,552($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,32
    # Line 6029
    ld	$a6,544($sp)
    ld	$a5,576($sp)
    # lw $t9, -23832($gp) # &__glInitTexSubImageStore
    ld	$a4,584($sp)
    move	$a0,$s0
    ld	$a3,592($sp)
    ld	$a2,536($sp)
    bal __glInitTexSubImageStore
    addiu	$a1,$sp,32
    # Line 6030
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,32
    # Line 6031
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,32
    # Line 6033
    # lw $t9, -27808($gp) # &__glClipReadPixels
    move	$a0,$s0
    jal	__glClipReadPixels
    addiu	$a1,$sp,32
    beqz	$v0,.L0da32780
    # Line 6034
    ld	$a2,536($sp)
    lw	$t9,252($a2)
    move	$a0,$s0
    ld	$a3,592($sp)
    jalr	$t9
    addiu	$a1,$sp,32
    b	.L0da32784
    ld	$ra,624($sp)
.L0da328a4:
    # Line 6023
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da32784
    ld	$ra,624($sp)
.end __glim_CopyTexSubImage3DEXT

# Function: __glim_SelectTextureCoordSetSGIS
# Declared: Line 6041 (Source lines: 6042-6052)
# Address: 0x0da328c0 - 0x0da32954 (Size: 148 bytes, Frame: 16)
.globl __glim_SelectTextureCoordSetSGIS
.ent __glim_SelectTextureCoordSetSGIS
__glim_SelectTextureCoordSetSGIS:
    # Line 6045
    li	$a3,0x83c7
    # Line 6042
    addiu	$sp,$sp,-16
    # Line 6043
    lw	$at,4120($zero)
    lw	$a2,4112($zero)
    li	$v0,1
    # Line 6042
    lui	$v1,0x2
    sd	$ra,8($sp)
    move	$ra,$ra
    addiu	$v1,$v1,-6964
    sd	$gp,0($sp)
    # Line 6043
    beq	$at,$v0,.L0da32940
    # Line 6042
    addu	$gp,$t9,$v1
    # Line 6045
    sltu	$a1,$a0,$a3
    bnez	$a1,.L0da32930
    # Line 6047
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 6045
    lw	$a4,3612($a2)
    addu	$a4,$a4,$a3
    sltu	$a4,$a4,$a0
    bnez	$a4,.L0da32930
    # Line 6047
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 6051
    sw	$a0,28212($a2)
    # Line 6052
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0da32920:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
    # Line 6047
    # lw $t9, -26452($gp) # &__glSetError
.L0da32930:
    jal	__glSetError
    li	$a0,1280
    b	.L0da32920
    ld	$ra,8($sp)
.L0da32940:
    # Line 6043
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da32920
    ld	$ra,8($sp)
.end __glim_SelectTextureCoordSetSGIS

.rdata
_lit8_3f50624dd2f1a9fc:
    .word 0x3f50624d, 0xd2f1a9fc
_lit8_3fe0000000000000:
    .word 0x3fe00000, 0x00000000
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000
_lit8_4030000000000000:
    .word 0x40300000, 0x00000000
_lit_3bfffbce:
    .word 0x3bfffbce
_lit_3d000000:
    .word 0x3d000000
_lit_3d280065:
    .word 0x3d280065
_lit_3daa0019:
    .word 0x3daa0019
_lit_3e07ffde:
    .word 0x3e07ffde
_lit_3e400000:
    .word 0x3e400000
_lit_3e7afff3:
    .word 0x3e7afff3
_lit_3e800000:
    .word 0x3e800000
_lit_3e9c7ffe:
    .word 0x3e9c7ffe
_lit_3ebc7ffe:
    .word 0x3ebc7ffe
_lit_3edc7ffe:
    .word 0x3edc7ffe
_lit_3efc0011:
    .word 0x3efc0011
_lit_3efff972:
    .word 0x3efff972
_lit_3f000000:
    .word 0x3f000000
_lit_3f0d4003:
    .word 0x3f0d4003
_lit_3f1c0000:
    .word 0x3f1c0000
_lit_3f297ffa:
    .word 0x3f297ffa
_lit_3f35c001:
    .word 0x3f35c001
_lit_3f404007:
    .word 0x3f404007
_lit_3f48fffc:
    .word 0x3f48fffc
_lit_3f4fbff9:
    .word 0x3f4fbff9
_lit_3f540000:
    .word 0x3f540000
_lit_3f554003:
    .word 0x3f554003
_lit_3f800000:
    .word 0x3f800000
_lit_40000000:
    .word 0x40000000
_lit_bafffbce:
    .word 0xbafffbce
_lit_bbe00086:
    .word 0xbbe00086
_lit_bc600086:
    .word 0xbc600086
_lit_bc8fffbd:
    .word 0xbc8fffbd
_lit_bcb80022:
    .word 0xbcb80022
_lit_bd000000:
    .word 0xbd000000
_lit_bd0fffbd:
    .word 0xbd0fffbd
_lit_bd1fff7a:
    .word 0xbd1fff7a
_lit_bd400000:
    .word 0xbd400000
_lit_bd540032:
    .word 0xbd540032
_lit_bd57ff9b:
    .word 0xbd57ff9b
_lit_bd600086:
    .word 0xbd600086
_lit_bf800000:
    .word 0xbf800000

