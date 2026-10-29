# Source: ../dlist/dl_list.c
# Category: dlist
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../dlist/dl_list.c
# Total Functions: 20

.text

# Function: __glim_NewList
# Declared: Line 57 (Source lines: 58-137)
# Address: 0x0d97a4e0 - 0x0d97a64c (Size: 364 bytes, Frame: 192)
.globl __glim_NewList
.ent __glim_NewList
__glim_NewList:
    # Line 58
    addiu	$sp,$sp,-64
    sd	$s0,24($sp)
    # Line 61
    lw	$s0,4112($zero)
    lw	$at,4120($zero)
    # Line 58
    sd	$s1,32($sp)
    # Line 61
    li	$v0,1
    # Line 58
    lui	$v1,0xd
    move	$s1,$a1
    sd	$ra,48($sp)
    addiu	$v1,$v1,26796
    sd	$gp,40($sp)
    # Line 61
    beq	$at,$v0,.L0d97a628
    # Line 58
    addu	$gp,$t9,$v1
    # Line 66
    li	$a1,4864
    beq	$s1,$a1,.L0d97a538
    li	$a2,4865
    beq	$s1,$a2,.L0d97a538
    # Line 71
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1280
    b	.L0d97a5ec
    ld	$ra,48($sp)
.L0d97a538:
    # Line 66
    lw	$a3,4988($s0)
    beqz	$a3,.L0d97a554
    # Line 77
    nop	# was lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d97a5ec
    ld	$ra,48($sp)
.L0d97a554:
    # Line 78
    beqz	$a0,.L0d97a63c
    # Line 82
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 86
    lw	$a4,4960($s0)
    beqz	$a4,.L0d97a574
    sd	$a0,16($sp)
    lw	$a5,5012($s0)
    beqz	$a5,.L0d97a600
    nop
.L0d97a574:
    # Line 94
    lw	$a6,4168($zero)
    # Line 111
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    # Line 108
    li	$a7,4176
    addiu	$a0,$s0,7976
    # Line 111
    addiu	$a1,$s0,9864
    sd	$a1,8($sp)
    movz	$a0,$a7,$a6
    jal	__glMipsCopyDispatch
    sd	$a0,0($sp)
    # Line 122
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    ld	$a1,0($sp)
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6080
    # Line 131
    sw	$zero,5008($s0)
    # Line 130
    sw	$zero,5004($s0)
    # Line 129
    sw	$zero,5000($s0)
    # Line 128
    sw	$zero,4996($s0)
    # Line 127
    sw	$s1,4984($s0)
    # Line 131
    ld	$t0,8($sp)
    lw	$t9,11780($s0)
    # Line 126
    ld	$t1,16($sp)
    sw	$t1,4988($s0)
    # Line 131
    beqz	$t9,.L0d97a5dc
    # Line 124
    sw	$t0,6072($s0)
    # Line 134
    jalr	$t9
    move	$a0,$s0
.L0d97a5dc:
    # Line 136
    lw	$t9,4952($s0)
    jalr	$t9
    move	$a0,$s0
    ld	$ra,48($sp)
.L0d97a5ec:
    ld	$s0,24($sp)
    ld	$s1,32($sp)
    # Line 137
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d97a600:
    # Line 94
    lw	$t9,12628($s0)
    jalr	$t9
    move	$a0,$s0
    bnez	$v0,.L0d97a574
    sw	$v0,5012($s0)
    # Line 99
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    b	.L0d97a5ec
    ld	$ra,48($sp)
.L0d97a628:
    # Line 61
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d97a5ec
    ld	$ra,48($sp)
.L0d97a63c:
    # Line 82
    jalr	$t9
    li	$a0,1281
    b	.L0d97a5ec
    ld	$ra,48($sp)
.end __glim_NewList

# Function: __glce_EndList
# Declared: Line 139 (Source lines: 140-145)
# Address: 0x0d97a650 - 0x0d97a68c (Size: 60 bytes, Frame: 16)
.globl __glce_EndList
.ent __glce_EndList
__glce_EndList:
    # Line 140
    lui	$v0,0xd
    # Line 143
    lw	$at,4112($zero)
    # Line 140
    addiu	$sp,$sp,-16
    addiu	$v0,$v0,26428
    sd	$gp,8($sp)
    addu	$gp,$t9,$v0
    # Line 144
    # lw $t9, -22712($gp) # &glEndList
    # Line 140
    sd	$ra,0($sp)
    # Line 143
    lw	$at,9868($at)
    # Line 144
    jal	glEndList
    # Line 143
    sw	$at,4180($zero)
    ld	$ra,0($sp)
    # Line 145
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glce_EndList

# Function: __glim_EndList
# Declared: Line 147 (Source lines: 148-235)
# Address: 0x0d97a690 - 0x0d97a7c8 (Size: 312 bytes, Frame: 48)
.globl __glim_EndList
.ent __glim_EndList
__glim_EndList:
    # Line 148
    addiu	$sp,$sp,-48
    sd	$s0,8($sp)
    # Line 154
    lw	$at,4120($zero)
    lw	$s0,4112($zero)
    li	$v0,1
    # Line 148
    lui	$v1,0xd
    sd	$ra,32($sp)
    addiu	$v1,$v1,26364
    sd	$gp,16($sp)
    # Line 154
    beq	$at,$v0,.L0d97a7b4
    # Line 148
    addu	$gp,$t9,$v1
    # Line 156
    lw	$a0,4988($s0)
    beqz	$a0,.L0d97a7a4
    # Line 160
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 169
    lw	$t9,4940($s0)
    move	$a0,$s0
    addiu	$a1,$s0,4992
    jal	__glSetError
    sd	$a1,0($sp)
    # Line 196
    lw	$t9,4944($s0)
    ld	$a1,0($sp)
    move	$a0,$s0
    jalr	$t9
    sd	$s1,24($sp)
    lw	$a1,4960($s0)
    bnez	$a1,.L0d97a770
    move	$s1,$v0
    # Line 211
    lw	$a2,4988($s0)
.L0d97a700:
    # lw $t9, -25404($gp) # &__glNamesNewData
    lw	$a1,4928($s0)
    move	$a3,$s1
    # Line 203
    sw	$zero,5008($s0)
    # Line 211
    move	$a0,$s0
    jal	__glNamesNewData
    # Line 202
    sw	$zero,5004($s0)
    # Line 211
    beqz	$v0,.L0d97a784
    # Line 228
    nop	# was lw $t9, -28816($gp) # &__glMipsCopyDispatch
.L0d97a724:
    # Line 218
    lw	$a2,4168($zero)
    # Line 225
    li	$a3,4176
    addiu	$s1,$s0,7976
    # Line 228
    addiu	$a0,$s0,9864
    movz	$s1,$a3,$a2
    jal	__glMipsCopyDispatch
    move	$a1,$s1
    # Line 231
    lw	$t9,11780($s0)
    sw	$zero,4988($s0)
    beqz	$t9,.L0d97a758
    # Line 229
    sw	$s1,6072($s0)
    # Line 234
    jalr	$t9
    move	$a0,$s0
.L0d97a758:
    ld	$ra,32($sp)
    ld	$s0,8($sp)
    ld	$s1,24($sp)
    # Line 235
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d97a770:
    # Line 201
    lw	$t9,12640($s0)
    jalr	$t9
    lw	$a0,5012($s0)
    b	.L0d97a700
    # Line 211
    lw	$a2,4988($s0)
.L0d97a784:
    beqz	$s1,.L0d97a724
    # Line 228
    nop	# was lw $t9, -28816($gp) # &__glMipsCopyDispatch
    # Line 218
    lw	$t9,4($s1)
    move	$a0,$s0
    jal	__glMipsCopyDispatch
    move	$a1,$s1
    b	.L0d97a724
    # Line 228
    nop	# was lw $t9, -28816($gp) # &__glMipsCopyDispatch
.L0d97a7a4:
    # Line 160
    jal	__glMipsCopyDispatch
    li	$a0,1282
    b	.L0d97a758
    sd	$s1,24($sp)
.L0d97a7b4:
    # Line 154
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0d97a758
    sd	$s1,24($sp)
.end __glim_EndList

# Function: DoCallList
# Declared: Line 237 (Source lines: 238-264)
# Address: 0x0d97a7d0 - 0x0d97a870 (Size: 160 bytes, Frame: 32)
.ent DoCallList
DoCallList:
    # Line 240
    lw	$v0,4112($zero)
    lw	$at,4980($v0)
    slti	$at,$at,64
    # Line 238
    addiu	$sp,$sp,-32
    # Line 244
    li	$v1,128
    # Line 240
    bnez	$at,.L0d97a7f8
    # Line 238
    move	$a2,$a0
    # Line 244
    sw	$v1,4980($v0)
    # Line 251
    jr	$ra
    addiu	$sp,$sp,32
.L0d97a7f8:
    sd	$v0,8($sp)
    # Line 250
    # lw $t9, -25400($gp) # &__glNamesLockData
    ld	$a1,8($sp)
    sd	$ra,16($sp)
    move	$a0,$a1
    jal	__glNamesLockData
    lw	$a1,4928($a1)
    bnez	$v0,.L0d97a828
    sd	$v0,0($sp)
    ld	$ra,16($sp)
    # Line 251
    jr	$ra
    addiu	$sp,$sp,32
.L0d97a828:
    # Line 254
    ld	$a0,8($sp)
    lw	$a3,4980($a0)
    # Line 257
    ld	$a1,0($sp)
    # Line 254
    addiu	$a3,$a3,1
    sw	$a3,4980($a0)
    # Line 257
    lw	$t9,8($a1)
    jalr	$t9
    nop
    ld	$ra,16($sp)
    # Line 259
    ld	$a5,8($sp)
    # Line 261
    # lw $t9, -25392($gp) # &__glNamesUnlockData
    # Line 259
    lw	$a4,4980($a5)
    # Line 261
    ld	$a1,0($sp)
    move	$a0,$a5
    # Line 264
    addiu	$sp,$sp,32
    # Line 259
    addiu	$a4,$a4,-1
    jr	$t9
    sw	$a4,4980($a5)
.end DoCallList

# Function: __gllc_CallList
# Declared: Line 275 (Source lines: 276-292)
# Address: 0x0d97a870 - 0x0d97a8fc (Size: 140 bytes, Frame: 32)
.globl __gllc_CallList
.ent __gllc_CallList
__gllc_CallList:
    # Line 276
    addiu	$sp,$sp,-32
    sd	$a0,0($sp)
    sd	$s0,8($sp)
    # Line 279
    lw	$s0,4112($zero)
    # Line 276
    lui	$at,0xd
    sd	$ra,24($sp)
    addiu	$at,$at,25884
    sd	$gp,16($sp)
    # Line 279
    beqz	$a0,.L0d97a8e8
    # Line 276
    addu	$gp,$t9,$at
    # Line 286
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    move	$a0,$s0
    bal __glDlistAllocOp2
    li	$a1,4
    bnez	$v0,.L0d97a8c4
    # Line 291
    la	$a2,__glle_CallList
    ld	$ra,24($sp)
.L0d97a8b4:
    ld	$s0,8($sp)
    # Line 292
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97a8c4:
    # Line 291
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    # Line 288
    sh	$zero,12($v0)
    # Line 291
    move	$a1,$v0
    # Line 290
    ld	$v1,0($sp)
    # Line 291
    move	$a0,$s0
    bal __glDlistAppendOp
    # Line 290
    sw	$v1,16($v0)
    b	.L0d97a8b4
    ld	$ra,24($sp)
.L0d97a8e8:
    # Line 282
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
    bal __gllc_InvalidEnum
    move	$a0,$s0
    b	.L0d97a8b4
    ld	$ra,24($sp)
.end __gllc_CallList

# Function: __glle_CallList
# Declared: Line 294 (Source lines: 295-300)
# Address: 0x0d97a900 - 0x0d97a948 (Size: 72 bytes, Frame: 32)
.globl __glle_CallList
.ent __glle_CallList
__glle_CallList:
    # Line 295
    addiu	$sp,$sp,-32
    sd	$s8,8($sp)
    lui	$s8,0xd
    addiu	$s8,$s8,25740
    sd	$gp,16($sp)
    addu	$gp,$t9,$s8
    # Line 299
    # lw $t9, -32728($gp) # &sub_0d980000
    addiu	$t9,$t9,-22576
    # Line 295
    sd	$ra,0($sp)
    move	$s8,$a0
    # Line 299
    bal __glim_EndList
    lw	$a0,0($a0)
    ld	$ra,0($sp)
    # Line 300
    ld	$gp,16($sp)
    addiu	$v0,$s8,4
    ld	$s8,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glle_CallList

# Function: __glce_CallList
# Declared: Line 304 (Source lines: 305-329)
# Address: 0x0d97a950 - 0x0d97ab24 (Size: 468 bytes, Frame: 176)
.globl __glce_CallList
.ent __glce_CallList
__glce_CallList:
    # Line 305
    addiu	$sp,$sp,-1968
    sd	$s2,1912($sp)
    sd	$s4,1928($sp)
    sd	$s1,1944($sp)
    sd	$s5,1952($sp)
    li	$a6,4
    # Line 307
    li	$a3,236
    sd	$s3,1904($sp)
    move	$a1,$zero
    li	$t3,0x40
    sd	$ra,1920($sp)
    li	$a4,4176
    # Line 305
    sd	$s6,1888($sp)
    lui	$at,0xd
    move	$s6,$a0
    sd	$s0,1936($sp)
    addiu	$at,$at,25660
    # Line 307
    addiu	$a5,$sp,0
    sd	$gp,1896($sp)
    # Line 305
    addu	$gp,$t9,$at
.L0d97a9a0:
    addiu	$a6,$a6,-1
    # Line 307
    addu	$v0,$a1,$a4
    addiu	$a3,$a3,-1
    addu	$v1,$a1,$a5
    ld	$v0,0($v0)
    addiu	$a1,$a1,8
    bnez	$a6,.L0d97a9a0
    sd	$v0,0($v1)
    addiu	$s0,$a4,32
    addiu	$ra,$a5,32
    addiu	$t9,$a4,48
    addiu	$t8,$a5,48
    addiu	$t0,$a5,40
    addiu	$a7,$a4,40
    addiu	$t1,$a5,24
    addiu	$s3,$a4,24
    addiu	$s5,$a4,16
    addiu	$s1,$a5,16
    addiu	$s4,$a4,8
    addiu	$t2,$a5,56
    addiu	$s2,$a4,56
    addiu	$a6,$a5,8
    nop
    nop
.L0d97aa00:
    addu	$a2,$a1,$a4
    addu	$at,$a1,$a5
    ld	$a2,0($a2)
    addu	$a0,$a1,$s4
    sd	$a2,0($at)
    addu	$a2,$a1,$a6
    ld	$a0,0($a0)
    addu	$v1,$a1,$s5
    sd	$a0,0($a2)
    addu	$a0,$a1,$s1
    ld	$v1,0($v1)
    addu	$v0,$a1,$s3
    sd	$v1,0($a0)
    addu	$v1,$a1,$t1
    ld	$v0,0($v0)
    addu	$at,$a1,$s0
    sd	$v0,0($v1)
    addu	$v0,$a1,$ra
    ld	$at,0($at)
    addu	$a2,$a1,$a7
    sd	$at,0($v0)
    addu	$at,$a1,$t0
    ld	$a2,0($a2)
    addu	$a0,$a1,$t9
    sd	$a2,0($at)
    addu	$a2,$a1,$t8
    ld	$a0,0($a0)
    addiu	$a3,$a3,-8
    addu	$v1,$a1,$s2
    sd	$a0,0($a2)
    addu	$a0,$a1,$t2
    ld	$v1,0($v1)
    addu	$a1,$a1,$t3
    bgtz	$a3,.L0d97aa00
    sd	$v1,0($a0)
    # Line 312
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    # Line 309
    lw	$s0,4112($zero)
    # Line 312
    li	$a1,4176
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6080
    ld	$s3,1904($sp)
    # Line 313
    # lw $t9, -22708($gp) # &glCallList
    ld	$s2,1912($sp)
    ld	$s4,1928($sp)
    ld	$s5,1952($sp)
    jal	glCallList
    move	$a0,$s6
    # Line 315
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s1,$s0,9864
    jal	__glMipsCopyDispatch
    move	$a0,$s1
    # Line 317
    # lw $t9, -22708($gp) # &glCallList
    move	$a0,$s6
    # Line 316
    li	$a3,4176
    # Line 317
    jal	glCallList
    # Line 316
    sw	$a3,6072($s0)
    # Line 318
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    move	$a1,$s1
    ld	$s6,1888($sp)
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 327
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$a0,$sp,0
    jal	__glMipsCopyDispatch
    # Line 319
    sw	$s1,6072($s0)
    ld	$ra,1920($sp)
    ld	$s0,1936($sp)
    ld	$s1,1944($sp)
    # Line 329
    ld	$gp,1896($sp)
    jr	$ra
    addiu	$sp,$sp,1968
.end __glce_CallList

# Function: __glce_CallLists
# Declared: Line 331 (Source lines: 332-356)
# Address: 0x0d97ab30 - 0x0d97ad34 (Size: 516 bytes, Frame: 208)
.globl __glce_CallLists
.ent __glce_CallLists
__glce_CallLists:
    # Line 332
    addiu	$sp,$sp,-2000
    sd	$s5,1976($sp)
    sd	$s7,1984($sp)
    sd	$s3,1928($sp)
    sd	$s4,1952($sp)
    sd	$s6,1936($sp)
    sd	$ra,1944($sp)
    li	$t0,4
    sd	$s0,1960($sp)
    # Line 334
    li	$a5,236
    move	$a4,$zero
    sd	$s1,1968($sp)
    li	$a6,4176
    # Line 332
    sd	$s8,1888($sp)
    lui	$at,0xd
    move	$s8,$a2
    sd	$s2,1920($sp)
    addiu	$at,$at,25180
    # Line 334
    addiu	$a7,$sp,0
    sd	$gp,1896($sp)
    # Line 332
    addu	$gp,$t9,$at
.L0d97ab84:
    addiu	$t0,$t0,-1
    # Line 334
    addu	$v0,$a4,$a6
    addiu	$a5,$a5,-1
    addu	$v1,$a4,$a7
    ld	$v0,0($v0)
    addiu	$a4,$a4,8
    bnez	$t0,.L0d97ab84
    sd	$v0,0($v1)
    addiu	$s2,$a6,32
    addiu	$s1,$a7,32
    addiu	$s0,$a6,48
    addiu	$ra,$a7,48
    addiu	$t1,$a6,40
    addiu	$t3,$a7,24
    addiu	$s6,$a6,24
    addiu	$s4,$a6,16
    addiu	$t2,$a7,16
    addiu	$s3,$a7,8
    addiu	$s7,$a6,8
    li	$t9,0x40
    addiu	$t8,$a7,56
    sd	$a0,1904($sp)
    addiu	$s5,$a6,56
    addiu	$t0,$a7,40
    sd	$a1,1912($sp)
    nop
    nop
.L0d97abf0:
    addu	$v1,$a4,$a6
    addu	$a0,$a4,$a7
    ld	$v1,0($v1)
    addu	$v0,$a4,$s7
    sd	$v1,0($a0)
    addu	$v1,$a4,$s3
    ld	$v0,0($v0)
    addu	$at,$a4,$s4
    sd	$v0,0($v1)
    addu	$v0,$a4,$t2
    ld	$at,0($at)
    addu	$a3,$a4,$s6
    sd	$at,0($v0)
    addu	$at,$a4,$t3
    ld	$a3,0($a3)
    addu	$a2,$a4,$s2
    sd	$a3,0($at)
    addu	$a3,$a4,$s1
    ld	$a2,0($a2)
    addu	$a1,$a4,$t1
    sd	$a2,0($a3)
    addu	$a2,$a4,$t0
    ld	$a1,0($a1)
    addu	$a0,$a4,$s0
    sd	$a1,0($a2)
    addu	$a1,$a4,$ra
    ld	$a0,0($a0)
    addiu	$a5,$a5,-8
    addu	$v1,$a4,$s5
    sd	$a0,0($a1)
    addu	$a0,$a4,$t8
    ld	$v1,0($v1)
    addu	$a4,$a4,$t9
    bgtz	$a5,.L0d97abf0
    sd	$v1,0($a0)
    # Line 339
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    # Line 336
    lw	$s0,4112($zero)
    # Line 339
    li	$a1,4176
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6080
    ld	$s6,1936($sp)
    ld	$s4,1952($sp)
    # Line 340
    ld	$s1,1904($sp)
    # lw $t9, -22704($gp) # &glCallLists
    ld	$s3,1912($sp)
    ld	$s5,1976($sp)
    move	$a2,$s8
    move	$a0,$s1
    ld	$s7,1984($sp)
    jal	glCallLists
    move	$a1,$s3
    # Line 342
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s2,$s0,9864
    jal	__glMipsCopyDispatch
    move	$a0,$s2
    # Line 344
    # lw $t9, -22704($gp) # &glCallLists
    move	$a2,$s8
    move	$a1,$s3
    move	$a0,$s1
    # Line 343
    li	$a3,4176
    # Line 344
    jal	glCallLists
    # Line 343
    sw	$a3,6072($s0)
    # Line 345
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    ld	$s3,1928($sp)
    ld	$s1,1968($sp)
    move	$a1,$s2
    ld	$s8,1888($sp)
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 354
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$a0,$sp,0
    jal	__glMipsCopyDispatch
    # Line 346
    sw	$s2,6072($s0)
    ld	$ra,1944($sp)
    ld	$s2,1920($sp)
    ld	$s0,1960($sp)
    # Line 356
    ld	$gp,1896($sp)
    jr	$ra
    addiu	$sp,$sp,2000
.end __glce_CallLists

# Function: __glim_CallList
# Declared: Line 358 (Source lines: 359-368)
# Address: 0x0d97ad40 - 0x0d97adac (Size: 108 bytes, Frame: 32)
.globl __glim_CallList
.ent __glim_CallList
__glim_CallList:
    # Line 359
    addiu	$sp,$sp,-32
    # Line 360
    lw	$v0,4112($zero)
    sd	$v0,0($sp)
    # Line 359
    lui	$at,0xd
    sd	$ra,16($sp)
    addiu	$at,$at,24652
    sd	$gp,8($sp)
    # Line 360
    beqz	$a0,.L0d97ad98
    # Line 359
    addu	$gp,$t9,$at
    # Line 366
    # lw $t9, -32728($gp) # &sub_0d980000
    addiu	$t9,$t9,-22576
    bal __glim_EndList
    nop
    ld	$ra,16($sp)
    # Line 367
    ld	$at,0($sp)
    # Line 368
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 367
    sw	$zero,4980($at)
.L0d97ad8c:
    # Line 368
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97ad98:
    # Line 363
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d97ad8c
    ld	$ra,16($sp)
.end __glim_CallList

# Function: DoCallLists
# Declared: Line 370 (Source lines: 371-416)
# Address: 0x0d97adb0 - 0x0d97af38 (Size: 392 bytes, Frame: 208)
.ent DoCallLists
DoCallLists:
    # Line 371
    addiu	$sp,$sp,-1104
    sd	$s1,1024($sp)
    # Line 377
    lw	$s1,4112($zero)
    sd	$s7,1048($sp)
    sd	$s0,1056($sp)
    sd	$ra,1064($sp)
    sd	$s3,1072($sp)
    # Line 371
    sd	$s4,1032($sp)
    # Line 381
    sltiu	$at,$a1,5120
    # Line 371
    move	$a5,$a2
    move	$s4,$a0
    sd	$s6,1040($sp)
    move	$s6,$a1
    # Line 381
    bnez	$at,.L0d97ae08
    sd	$s2,1080($sp)
    sltiu	$v0,$a1,5130
    beqz	$v0,.L0d97ae0c
    li	$s7,-1
    la	$s7,__GLdlsize_tab
    addu	$s7,$a1,$s7
    b	.L0d97ae0c
    lbu	$s7,-5120($s7)
.L0d97ae08:
    li	$s7,-1
.L0d97ae0c:
    lw	$a1,4980($s1)
    slti	$t8,$a1,64
    beqz	$t8,.L0d97af0c
    ld	$s2,1080($sp)
    # Line 388
    addiu	$a0,$a1,1
    sw	$a0,4980($s1)
    sd	$s5,1088($sp)
    # Line 391
    beqz	$s4,.L0d97aed8
    move	$s5,$a5
    sd	$s8,1096($sp)
    li	$s8,256
    nop
    nop
.L0d97ae40:
    # Line 397
    addiu	$a6,$sp,0
    move	$a5,$s5
    move	$a3,$s6
    # lw $t9, -25396($gp) # &__glNamesLockDataList
    li	$ra,256
    move	$s3,$s4
    slt	$ra,$ra,$s4
    lw	$a4,1980($s1)
    move	$a0,$s1
    movn	$s3,$s8,$ra
    lw	$a1,4928($s1)
    jal	__glNamesLockDataList
    move	$a2,$s3
    blez	$s3,.L0d97aea8
    addiu	$s0,$sp,0
    sll	$t8,$s3,0x2
    addu	$s2,$sp,$t8
    nop
    nop
    # Line 403
    lw	$a1,0($s0)
.L0d97ae90:
    # Line 404
    lw	$t9,8($a1)
    jalr	$t9
    move	$a0,$s1
    # Line 405
    addiu	$s0,$s0,4
    bnel	$s0,$s2,.L0d97ae90
    # Line 403
    lw	$a1,0($s0)
.L0d97aea8:
    # Line 408
    # lw $t9, -25388($gp) # &__glNamesUnlockDataList
    move	$a0,$s1
    move	$a1,$s3
    jal	__glNamesUnlockDataList
    addiu	$a2,$sp,0
    # Line 411
    mult	$s7,$s3
    # Line 412
    subu	$s4,$s4,$s3
    # Line 411
    mflo	$t9
    # Line 412
    bnez	$s4,.L0d97ae40
    # Line 411
    addu	$s5,$s5,$t9
    # Line 412
    lw	$a0,4980($s1)
    ld	$s8,1096($sp)
.L0d97aed8:
    ld	$s7,1048($sp)
    ld	$s5,1088($sp)
    ld	$s0,1056($sp)
    ld	$s3,1072($sp)
    ld	$s2,1080($sp)
    # Line 415
    addiu	$at,$a0,-1
    sw	$at,4980($s1)
    ld	$ra,1064($sp)
    # Line 416
    ld	$s1,1024($sp)
    ld	$s4,1032($sp)
    ld	$s6,1040($sp)
    jr	$ra
    addiu	$sp,$sp,1104
.L0d97af0c:
    ld	$s3,1072($sp)
    ld	$s0,1056($sp)
    ld	$s7,1048($sp)
    # Line 385
    li	$v0,128
    sw	$v0,4980($s1)
    ld	$ra,1064($sp)
    # Line 416
    ld	$s1,1024($sp)
    ld	$s4,1032($sp)
    ld	$s6,1040($sp)
    jr	$ra
    addiu	$sp,$sp,1104
.end DoCallLists

# Function: __gllc_CallLists
# Declared: Line 424 (Source lines: 425-451)
# Address: 0x0d97af40 - 0x0d97b06c (Size: 300 bytes, Frame: 192)
.globl __gllc_CallLists
.ent __gllc_CallLists
__gllc_CallLists:
    # Line 425
    addiu	$sp,$sp,-64
    sd	$s1,16($sp)
    # Line 430
    lw	$s1,4112($zero)
    sd	$ra,56($sp)
    # Line 425
    move	$v0,$a2
    sd	$s0,40($sp)
    move	$s0,$a1
    lui	$at,0xd
    sd	$s2,24($sp)
    move	$s2,$a0
    sd	$s3,48($sp)
    addiu	$at,$at,24140
    # Line 436
    negu	$s3,$s2
    sd	$gp,32($sp)
    # Line 430
    bltz	$a0,.L0d97b058
    # Line 425
    addu	$gp,$t9,$at
    # Line 436
    sltiu	$v1,$a1,5120
    sltiu	$a0,$a1,5130
    la	$a1,__GLdlsize_tab
    bnez	$v1,.L0d97afc4
    addu	$a1,$s0,$a1
    beqz	$a0,.L0d97afc4
    nop
    lbu	$a1,-5120($a1)
    mult	$a1,$s2
    mflo	$s3
    bgez	$s3,.L0d97afd0
    sd	$a2,0($sp)
    # Line 438
    # lw $t9, -31076($gp) # &__gllc_InvalidEnum
.L0d97afb4:
    bal __gllc_InvalidEnum
    move	$a0,$s1
    b	.L0d97aff8
    ld	$s3,48($sp)
.L0d97afc4:
    # Line 436
    bltz	$s3,.L0d97afb4
    # Line 438
    nop	# was lw $t9, -31076($gp) # &__gllc_InvalidEnum
    sd	$v0,0($sp)
.L0d97afd0:
    # Line 442
    # lw $t9, -31148($gp) # &__glDlistAllocOp2
    li	$a2,-4
    addiu	$a1,$s3,3
    move	$a0,$s1
    and	$a1,$a1,$a2
    bal __glDlistAllocOp2
    addiu	$a1,$a1,8
    bnez	$v0,.L0d97b014
    sd	$v0,8($sp)
    ld	$s3,48($sp)
.L0d97aff8:
    # Line 451
    ld	$gp,32($sp)
    ld	$ra,56($sp)
    ld	$s0,40($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d97b014:
    # Line 449
    ld	$a1,0($sp)
    # Line 447
    ld	$a5,8($sp)
    # Line 449
    # lw $t9, -22900($gp) # &memcpy
    # Line 447
    sw	$s0,20($a5)
    # Line 449
    move	$a2,$s3
    # Line 444
    li	$a4,1
    # Line 446
    sw	$s2,16($a5)
    # Line 449
    addiu	$a0,$a5,24
    jal	memcpy
    # Line 444
    sh	$a4,12($a5)
    # Line 450
    # lw $t9, -31140($gp) # &__glDlistAppendOp
    ld	$a1,8($sp)
    move	$a0,$s1
    bal __glDlistAppendOp
    la	$a2,__glle_CallLists
    b	.L0d97aff8
    ld	$s3,48($sp)
.L0d97b058:
    # Line 433
    # lw $t9, -31080($gp) # &__gllc_InvalidValue
    bal __gllc_InvalidValue
    move	$a0,$s1
    b	.L0d97aff8
    ld	$s3,48($sp)
.end __gllc_CallLists

# Function: __glle_CallLists
# Declared: Line 453 (Source lines: 454-463)
# Address: 0x0d97b070 - 0x0d97b138 (Size: 200 bytes, Frame: 32)
.globl __glle_CallLists
.ent __glle_CallLists
__glle_CallLists:
    # Line 454
    addiu	$sp,$sp,-32
    sd	$ra,8($sp)
    lui	$ra,0xd
    addiu	$ra,$ra,23836
    sd	$gp,0($sp)
    addu	$gp,$t9,$ra
    # Line 460
    # lw $t9, -32728($gp) # &sub_0d980000
    # Line 454
    sd	$s0,16($sp)
    # Line 460
    addiu	$t9,$t9,-21072
    # Line 454
    move	$s0,$a0
    # Line 460
    lw	$a0,0($a0)
    addiu	$a2,$s0,8
    bal __glim_CallList
    lw	$a1,4($s0)
    # Line 461
    lw	$a2,4($s0)
    la	$a0,__GLdlsize_tab
    sltiu	$at,$a2,5120
    # Line 463
    ld	$ra,8($sp)
    # Line 461
    sltiu	$v0,$a2,5130
    # Line 463
    ld	$gp,0($sp)
    # Line 461
    bnez	$at,.L0d97b100
    addu	$a0,$a2,$a0
    beqz	$v0,.L0d97b100
    nop
    lbu	$a0,-5120($a0)
    # Line 463
    lw	$v1,0($s0)
    mult	$v1,$a0
    mflo	$v0
    li	$v1,-4
    addiu	$v0,$v0,3
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.L0d97b100:
    lw	$v1,0($s0)
    # Line 461
    li	$a0,-1
    # Line 463
    mult	$v1,$a0
    mflo	$v0
    ld	$ra,8($sp)
    li	$v1,-4
    addiu	$v0,$v0,3
    ld	$gp,0($sp)
    and	$v0,$v0,$v1
    addu	$v0,$s0,$v0
    ld	$s0,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    addiu	$v0,$v0,8
.end __glle_CallLists

# Function: __glim_CallLists
# Declared: Line 466 (Source lines: 467-482)
# Address: 0x0d97b140 - 0x0d97b1e8 (Size: 168 bytes, Frame: 32)
.globl __glim_CallLists
.ent __glim_CallLists
__glim_CallLists:
    # Line 468
    lw	$a4,4112($zero)
    # Line 467
    addiu	$sp,$sp,-32
    lui	$at,0xd
    sd	$ra,16($sp)
    addiu	$at,$at,23628
    sd	$gp,8($sp)
    # Line 468
    bltz	$a0,.L0d97b1d4
    # Line 467
    addu	$gp,$t9,$at
    # Line 477
    sltiu	$v0,$a1,5120
    la	$a3,__GLdlsize_tab
    bnez	$v0,.L0d97b1c0
    addu	$a3,$a1,$a3
    sltiu	$v1,$a1,5130
    beqz	$v1,.L0d97b1c4
    # Line 476
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 477
    lbu	$a3,-5120($a3)
    li	$a5,-1
    beq	$a3,$a5,.L0d97b1c0
    sd	$a4,0($sp)
    # Line 480
    # lw $t9, -32728($gp) # &sub_0d980000
    addiu	$t9,$t9,-21072
    bal __glim_CallList
    nop
    ld	$ra,16($sp)
    # Line 481
    ld	$at,0($sp)
    # Line 482
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 481
    sw	$zero,4980($at)
.L0d97b1b4:
    # Line 482
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d97b1c0:
    # Line 476
    # lw $t9, -26452($gp) # &__glSetError
.L0d97b1c4:
    jal	__glSetError
    li	$a0,1280
    b	.L0d97b1b4
    ld	$ra,16($sp)
.L0d97b1d4:
    # Line 471
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1281
    b	.L0d97b1b4
    ld	$ra,16($sp)
.end __glim_CallLists

# Function: __glce_DrawArraysEXT
# Declared: Line 484 (Source lines: 485-509)
# Address: 0x0d97b1f0 - 0x0d97b3f4 (Size: 516 bytes, Frame: 208)
.globl __glce_DrawArraysEXT
.ent __glce_DrawArraysEXT
__glce_DrawArraysEXT:
    # Line 485
    addiu	$sp,$sp,-2000
    sd	$s5,1976($sp)
    sd	$s7,1984($sp)
    sd	$s3,1928($sp)
    sd	$s4,1952($sp)
    sd	$s6,1936($sp)
    sd	$ra,1944($sp)
    li	$t0,4
    sd	$s0,1960($sp)
    # Line 487
    li	$a5,236
    move	$a4,$zero
    sd	$s1,1968($sp)
    li	$a6,4176
    # Line 485
    sd	$s8,1888($sp)
    lui	$at,0xd
    move	$s8,$a2
    sd	$s2,1920($sp)
    addiu	$at,$at,23452
    # Line 487
    addiu	$a7,$sp,0
    sd	$gp,1896($sp)
    # Line 485
    addu	$gp,$t9,$at
.L0d97b244:
    addiu	$t0,$t0,-1
    # Line 487
    addu	$v0,$a4,$a6
    addiu	$a5,$a5,-1
    addu	$v1,$a4,$a7
    ld	$v0,0($v0)
    addiu	$a4,$a4,8
    bnez	$t0,.L0d97b244
    sd	$v0,0($v1)
    addiu	$s2,$a6,32
    addiu	$s1,$a7,32
    addiu	$s0,$a6,48
    addiu	$ra,$a7,48
    addiu	$t1,$a6,40
    addiu	$t3,$a7,24
    addiu	$s6,$a6,24
    addiu	$s4,$a6,16
    addiu	$t2,$a7,16
    addiu	$s3,$a7,8
    addiu	$s7,$a6,8
    li	$t9,0x40
    addiu	$t8,$a7,56
    sd	$a0,1904($sp)
    addiu	$s5,$a6,56
    addiu	$t0,$a7,40
    sd	$a1,1912($sp)
    nop
    nop
.L0d97b2b0:
    addu	$v1,$a4,$a6
    addu	$a0,$a4,$a7
    ld	$v1,0($v1)
    addu	$v0,$a4,$s7
    sd	$v1,0($a0)
    addu	$v1,$a4,$s3
    ld	$v0,0($v0)
    addu	$at,$a4,$s4
    sd	$v0,0($v1)
    addu	$v0,$a4,$t2
    ld	$at,0($at)
    addu	$a3,$a4,$s6
    sd	$at,0($v0)
    addu	$at,$a4,$t3
    ld	$a3,0($a3)
    addu	$a2,$a4,$s2
    sd	$a3,0($at)
    addu	$a3,$a4,$s1
    ld	$a2,0($a2)
    addu	$a1,$a4,$t1
    sd	$a2,0($a3)
    addu	$a2,$a4,$t0
    ld	$a1,0($a1)
    addu	$a0,$a4,$s0
    sd	$a1,0($a2)
    addu	$a1,$a4,$ra
    ld	$a0,0($a0)
    addiu	$a5,$a5,-8
    addu	$v1,$a4,$s5
    sd	$a0,0($a1)
    addu	$a0,$a4,$t8
    ld	$v1,0($v1)
    addu	$a4,$a4,$t9
    bgtz	$a5,.L0d97b2b0
    sd	$v1,0($a0)
    # Line 492
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    # Line 489
    lw	$s0,4112($zero)
    # Line 492
    li	$a1,4176
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6080
    ld	$s6,1936($sp)
    ld	$s4,1952($sp)
    # Line 493
    ld	$s1,1904($sp)
    # lw $t9, -22448($gp) # &glDrawArraysEXT
    ld	$s3,1912($sp)
    ld	$s5,1976($sp)
    move	$a2,$s8
    move	$a0,$s1
    ld	$s7,1984($sp)
    jal	glDrawArraysEXT
    move	$a1,$s3
    # Line 495
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s2,$s0,9864
    jal	__glMipsCopyDispatch
    move	$a0,$s2
    # Line 497
    # lw $t9, -22448($gp) # &glDrawArraysEXT
    move	$a2,$s8
    move	$a1,$s3
    move	$a0,$s1
    # Line 496
    li	$a3,4176
    # Line 497
    jal	glDrawArraysEXT
    # Line 496
    sw	$a3,6072($s0)
    # Line 498
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    ld	$s3,1928($sp)
    ld	$s1,1968($sp)
    move	$a1,$s2
    ld	$s8,1888($sp)
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 507
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$a0,$sp,0
    jal	__glMipsCopyDispatch
    # Line 499
    sw	$s2,6072($s0)
    ld	$ra,1944($sp)
    ld	$s2,1920($sp)
    ld	$s0,1960($sp)
    # Line 509
    ld	$gp,1896($sp)
    jr	$ra
    addiu	$sp,$sp,2000
.end __glce_DrawArraysEXT

# Function: __glce_DrawElements
# Declared: Line 511 (Source lines: 513-537)
# Address: 0x0d97b400 - 0x0d97b61c (Size: 540 bytes, Frame: 224)
.globl __glce_DrawElements
.ent __glce_DrawElements
__glce_DrawElements:
    # Line 513
    addiu	$sp,$sp,-2016
    sd	$s5,1968($sp)
    sd	$ra,1936($sp)
    sd	$s8,1984($sp)
    sd	$s3,1920($sp)
    sd	$s6,1928($sp)
    sd	$s4,1944($sp)
    sd	$s7,1976($sp)
    li	$t1,4
    # Line 515
    li	$a6,236
    sd	$s0,1952($sp)
    move	$a5,$zero
    sd	$s1,1960($sp)
    # Line 513
    lui	$at,0xd
    # Line 515
    li	$a7,4176
    sd	$s2,1912($sp)
    # Line 513
    addiu	$at,$at,22924
    # Line 515
    addiu	$t0,$sp,0
    sd	$gp,1888($sp)
    # Line 513
    addu	$gp,$t9,$at
.L0d97b450:
    addiu	$t1,$t1,-1
    # Line 515
    addu	$v0,$a5,$a7
    addiu	$a6,$a6,-1
    addu	$v1,$a5,$t0
    ld	$v0,0($v0)
    addiu	$a5,$a5,8
    bnez	$t1,.L0d97b450
    sd	$v0,0($v1)
    addiu	$t3,$a7,32
    addiu	$s2,$t0,32
    addiu	$s1,$a7,48
    addiu	$s0,$t0,48
    addiu	$t2,$a7,40
    addiu	$t8,$t0,24
    addiu	$s7,$a7,24
    addiu	$s4,$a7,16
    addiu	$s6,$t0,16
    addiu	$s3,$t0,8
    addiu	$s8,$a7,8
    li	$ra,0x40
    addiu	$t9,$t0,56
    sd	$a0,1896($sp)
    addiu	$s5,$a7,56
    addiu	$t1,$t0,40
    sd	$a1,1904($sp)
    nop
    nop
    nop
.L0d97b4c0:
    addu	$a0,$a5,$a7
    addu	$a1,$a5,$t0
    ld	$a0,0($a0)
    addu	$v1,$a5,$s8
    sd	$a0,0($a1)
    addu	$a0,$a5,$s3
    ld	$v1,0($v1)
    addu	$v0,$a5,$s4
    sd	$v1,0($a0)
    addu	$v1,$a5,$s6
    ld	$v0,0($v0)
    addu	$at,$a5,$s7
    sd	$v0,0($v1)
    addu	$v0,$a5,$t8
    ld	$at,0($at)
    addu	$a4,$a5,$t3
    sd	$at,0($v0)
    addu	$at,$a5,$s2
    ld	$a4,0($a4)
    addu	$a1,$a5,$t2
    sd	$a4,0($at)
    addu	$a4,$a5,$t1
    ld	$a1,0($a1)
    addu	$a0,$a5,$s1
    sd	$a1,0($a4)
    addu	$a1,$a5,$s0
    ld	$a0,0($a0)
    addiu	$a6,$a6,-8
    addu	$v1,$a5,$s5
    sd	$a0,0($a1)
    addu	$a0,$a5,$t9
    ld	$v1,0($v1)
    addu	$a5,$a5,$ra
    bgtz	$a6,.L0d97b4c0
    sd	$v1,0($a0)
    # Line 520
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    # Line 517
    lw	$s0,4112($zero)
    # Line 520
    li	$a1,4176
    sd	$a3,1992($sp)
    sd	$a2,2000($sp)
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6080
    ld	$s6,1928($sp)
    # Line 521
    ld	$s2,2000($sp)
    ld	$s4,1904($sp)
    ld	$s1,1896($sp)
    # lw $t9, -22444($gp) # &glDrawElements
    ld	$s5,1992($sp)
    move	$a0,$s1
    ld	$s7,1976($sp)
    move	$a1,$s4
    move	$a2,$s2
    ld	$s8,1984($sp)
    jal	glDrawElements
    move	$a3,$s5
    # Line 523
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s3,$s0,9864
    jal	__glMipsCopyDispatch
    move	$a0,$s3
    # Line 525
    # lw $t9, -22444($gp) # &glDrawElements
    move	$a3,$s5
    move	$a2,$s2
    move	$a1,$s4
    move	$a0,$s1
    # Line 524
    li	$a4,4176
    # Line 525
    jal	glDrawElements
    # Line 524
    sw	$a4,6072($s0)
    ld	$s2,1912($sp)
    # Line 526
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    ld	$s4,1944($sp)
    ld	$s1,1960($sp)
    move	$a1,$s3
    ld	$s5,1968($sp)
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 535
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$a0,$sp,0
    jal	__glMipsCopyDispatch
    # Line 527
    sw	$s3,6072($s0)
    ld	$ra,1936($sp)
    ld	$s3,1920($sp)
    ld	$s0,1952($sp)
    # Line 537
    ld	$gp,1888($sp)
    jr	$ra
    addiu	$sp,$sp,2016
.end __glce_DrawElements

# Function: __glce_DrawRangeElements
# Declared: Line 539 (Source lines: 542-566)
# Address: 0x0d97b620 - 0x0d97b85c (Size: 572 bytes, Frame: 240)
.globl __glce_DrawRangeElements
.ent __glce_DrawRangeElements
__glce_DrawRangeElements:
    # Line 542
    addiu	$sp,$sp,-2032
    sd	$s1,1960($sp)
    sd	$a1,1896($sp)
    sd	$s3,1920($sp)
    sd	$s8,1984($sp)
    sd	$s4,1944($sp)
    sd	$a0,1888($sp)
    sd	$ra,1936($sp)
    sd	$s2,1912($sp)
    li	$t3,4
    # Line 544
    li	$t0,236
    sd	$s6,1928($sp)
    move	$a7,$zero
    li	$t1,4176
    sd	$s5,1968($sp)
    addiu	$s5,$t1,56
    sd	$s7,1976($sp)
    # Line 542
    lui	$at,0xd
    sd	$gp,1904($sp)
    addiu	$at,$at,22380
    # Line 544
    addiu	$t2,$sp,0
    sd	$s0,1952($sp)
    addiu	$s0,$t2,56
    # Line 542
    addu	$gp,$t9,$at
.L0d97b680:
    addiu	$t3,$t3,-1
    # Line 544
    addu	$v0,$a7,$t1
    addiu	$t0,$t0,-1
    addu	$v1,$a7,$t2
    ld	$v0,0($v0)
    addiu	$a7,$a7,8
    bnez	$t3,.L0d97b680
    sd	$v0,0($v1)
    addiu	$s7,$t1,32
    addiu	$s6,$t2,32
    addiu	$t8,$t1,48
    addiu	$s2,$t2,48
    addiu	$t9,$t2,40
    addiu	$ra,$t2,24
    addiu	$a0,$t1,24
    addiu	$s4,$t1,16
    addiu	$s8,$t2,16
    addiu	$s3,$t2,8
    addiu	$a1,$t1,8
    li	$s1,0x40
    addiu	$t3,$t1,40
    nop
    nop
    nop
.L0d97b6e0:
    addu	$v0,$a7,$t1
    addu	$v1,$a7,$t2
    ld	$v0,0($v0)
    addu	$at,$a7,$a1
    sd	$v0,0($v1)
    addu	$v0,$a7,$s3
    ld	$at,0($at)
    addu	$a6,$a7,$s4
    sd	$at,0($v0)
    addu	$at,$a7,$s8
    ld	$a6,0($a6)
    addu	$v1,$a7,$a0
    sd	$a6,0($at)
    addu	$a6,$a7,$ra
    ld	$v1,0($v1)
    addu	$v0,$a7,$s7
    sd	$v1,0($a6)
    addu	$v1,$a7,$s6
    ld	$v0,0($v0)
    addu	$at,$a7,$t3
    sd	$v0,0($v1)
    addu	$v0,$a7,$t9
    ld	$at,0($at)
    addu	$a6,$a7,$t8
    sd	$at,0($v0)
    addu	$at,$a7,$s2
    ld	$a6,0($a6)
    addiu	$t0,$t0,-8
    addu	$v1,$a7,$s5
    sd	$a6,0($at)
    addu	$a6,$a7,$s0
    ld	$v1,0($v1)
    addu	$a7,$a7,$s1
    bgtz	$t0,.L0d97b6e0
    sd	$v1,0($a6)
    sd	$a3,1992($sp)
    sd	$a4,2000($sp)
    # Line 549
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    # Line 546
    lw	$s0,4112($zero)
    # Line 549
    li	$a1,4176
    sd	$a5,2008($sp)
    sd	$a2,2016($sp)
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6080
    # Line 550
    ld	$s5,2000($sp)
    ld	$s7,1992($sp)
    ld	$s2,2016($sp)
    ld	$s1,1888($sp)
    ld	$s4,1896($sp)
    move	$a0,$s1
    # lw $t9, -22436($gp) # &glDrawRangeElements
    ld	$s3,2008($sp)
    move	$a1,$s4
    move	$a2,$s2
    move	$a3,$s7
    move	$a4,$s5
    ld	$s8,1984($sp)
    jal	glDrawRangeElements
    move	$a5,$s3
    # Line 552
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s6,$s0,9864
    jal	__glMipsCopyDispatch
    move	$a0,$s6
    # Line 554
    move	$a5,$s3
    move	$a4,$s5
    # lw $t9, -22436($gp) # &glDrawRangeElements
    move	$a3,$s7
    move	$a2,$s2
    move	$a1,$s4
    move	$a0,$s1
    # Line 553
    li	$v1,4176
    # Line 554
    jal	glDrawRangeElements
    # Line 553
    sw	$v1,6072($s0)
    ld	$s2,1912($sp)
    ld	$s3,1920($sp)
    ld	$s4,1944($sp)
    # Line 555
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    ld	$s1,1960($sp)
    ld	$s5,1968($sp)
    move	$a1,$s6
    ld	$s7,1976($sp)
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 564
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$a0,$sp,0
    jal	__glMipsCopyDispatch
    # Line 556
    sw	$s6,6072($s0)
    ld	$ra,1936($sp)
    ld	$s6,1928($sp)
    ld	$s0,1952($sp)
    # Line 566
    ld	$gp,1904($sp)
    jr	$ra
    addiu	$sp,$sp,2032
.end __glce_DrawRangeElements

# Function: __glce_ArrayElementEXT
# Declared: Line 568 (Source lines: 569-593)
# Address: 0x0d97b860 - 0x0d97ba34 (Size: 468 bytes, Frame: 176)
.globl __glce_ArrayElementEXT
.ent __glce_ArrayElementEXT
__glce_ArrayElementEXT:
    # Line 569
    addiu	$sp,$sp,-1968
    sd	$s2,1912($sp)
    sd	$s4,1928($sp)
    sd	$s1,1944($sp)
    sd	$s5,1952($sp)
    li	$a6,4
    # Line 571
    li	$a3,236
    sd	$s3,1904($sp)
    move	$a1,$zero
    li	$t3,0x40
    sd	$ra,1920($sp)
    li	$a4,4176
    # Line 569
    sd	$s6,1888($sp)
    lui	$at,0xd
    move	$s6,$a0
    sd	$s0,1936($sp)
    addiu	$at,$at,21804
    # Line 571
    addiu	$a5,$sp,0
    sd	$gp,1896($sp)
    # Line 569
    addu	$gp,$t9,$at
.L0d97b8b0:
    addiu	$a6,$a6,-1
    # Line 571
    addu	$v0,$a1,$a4
    addiu	$a3,$a3,-1
    addu	$v1,$a1,$a5
    ld	$v0,0($v0)
    addiu	$a1,$a1,8
    bnez	$a6,.L0d97b8b0
    sd	$v0,0($v1)
    addiu	$s0,$a4,32
    addiu	$ra,$a5,32
    addiu	$t9,$a4,48
    addiu	$t8,$a5,48
    addiu	$t0,$a5,40
    addiu	$a7,$a4,40
    addiu	$t1,$a5,24
    addiu	$s3,$a4,24
    addiu	$s5,$a4,16
    addiu	$s1,$a5,16
    addiu	$s4,$a4,8
    addiu	$t2,$a5,56
    addiu	$s2,$a4,56
    addiu	$a6,$a5,8
    nop
    nop
.L0d97b910:
    addu	$a2,$a1,$a4
    addu	$at,$a1,$a5
    ld	$a2,0($a2)
    addu	$a0,$a1,$s4
    sd	$a2,0($at)
    addu	$a2,$a1,$a6
    ld	$a0,0($a0)
    addu	$v1,$a1,$s5
    sd	$a0,0($a2)
    addu	$a0,$a1,$s1
    ld	$v1,0($v1)
    addu	$v0,$a1,$s3
    sd	$v1,0($a0)
    addu	$v1,$a1,$t1
    ld	$v0,0($v0)
    addu	$at,$a1,$s0
    sd	$v0,0($v1)
    addu	$v0,$a1,$ra
    ld	$at,0($at)
    addu	$a2,$a1,$a7
    sd	$at,0($v0)
    addu	$at,$a1,$t0
    ld	$a2,0($a2)
    addu	$a0,$a1,$t9
    sd	$a2,0($at)
    addu	$a2,$a1,$t8
    ld	$a0,0($a0)
    addiu	$a3,$a3,-8
    addu	$v1,$a1,$s2
    sd	$a0,0($a2)
    addu	$a0,$a1,$t2
    ld	$v1,0($v1)
    addu	$a1,$a1,$t3
    bgtz	$a3,.L0d97b910
    sd	$v1,0($a0)
    # Line 576
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    # Line 573
    lw	$s0,4112($zero)
    # Line 576
    li	$a1,4176
    jal	__glMipsCopyDispatch
    addiu	$a0,$s0,6080
    ld	$s3,1904($sp)
    # Line 577
    # lw $t9, -22452($gp) # &glArrayElementEXT
    ld	$s2,1912($sp)
    ld	$s4,1928($sp)
    ld	$s5,1952($sp)
    jal	glArrayElementEXT
    move	$a0,$s6
    # Line 579
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$s1,$s0,9864
    jal	__glMipsCopyDispatch
    move	$a0,$s1
    # Line 581
    # lw $t9, -22452($gp) # &glArrayElementEXT
    move	$a0,$s6
    # Line 580
    li	$a3,4176
    # Line 581
    jal	glArrayElementEXT
    # Line 580
    sw	$a3,6072($s0)
    # Line 582
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    move	$a1,$s1
    ld	$s6,1888($sp)
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 591
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    li	$a1,4176
    addiu	$a0,$sp,0
    jal	__glMipsCopyDispatch
    # Line 583
    sw	$s1,6072($s0)
    ld	$ra,1920($sp)
    ld	$s0,1936($sp)
    ld	$s1,1944($sp)
    # Line 593
    ld	$gp,1896($sp)
    jr	$ra
    addiu	$sp,$sp,1968
.end __glce_ArrayElementEXT

# Function: __glDlistAllocOp2
# Declared: Line 607 (Source lines: 608-635)
# Address: 0x0d97ba40 - 0x0d97babc (Size: 124 bytes, Frame: 32)
.globl __glDlistAllocOp2
.ent __glDlistAllocOp2
__glDlistAllocOp2:
    # Line 608
    addiu	$sp,$sp,-32
    lui	$v1,0xd
    sd	$gp,8($sp)
    addiu	$v1,$v1,21324
    addu	$gp,$t9,$v1
    # Line 617
    lw	$t9,12636($a0)
    # Line 608
    sd	$ra,16($sp)
    move	$v0,$a0
    sd	$a1,0($sp)
    # Line 617
    addiu	$a1,$a1,16
    jalr	$t9
    lw	$a0,5012($a0)
    # Line 635
    ld	$ra,16($sp)
    # Line 617
    beqz	$v0,.L0d97ba9c
    move	$a2,$v0
    # Line 633
    sb	$zero,14($v0)
    # Line 632
    sw	$zero,4($v0)
    # Line 630
    sw	$zero,0($v0)
    # Line 635
    ld	$gp,8($sp)
    # Line 631
    ld	$a0,0($sp)
    # Line 635
    addiu	$sp,$sp,32
    jr	$ra
    # Line 631
    sw	$a0,8($v0)
.L0d97ba9c:
    # Line 621
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1285
    # Line 635
    ld	$ra,16($sp)
    # Line 622
    move	$v0,$zero
    # Line 635
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glDlistAllocOp2

# Function: __glDlistFreeOp
# Declared: Line 639 (Source lines: 647-647)
# Address: 0x0d97bac0 - 0x0d97bac8 (Size: 8 bytes, Frame: 0)
.globl __glDlistFreeOp
.ent __glDlistFreeOp
__glDlistFreeOp:
    # Line 647
    jr	$ra
    nop
.end __glDlistFreeOp

# Function: __glDlistAppendOp
# Declared: Line 650 (Source lines: 652-682)
# Address: 0x0d97bad0 - 0x0d97bbbc (Size: 236 bytes, Frame: 48)
.globl __glDlistAppendOp
.ent __glDlistAppendOp
__glDlistAppendOp:
    # Line 652
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    lui	$at,0xd
    sd	$gp,16($sp)
    addiu	$at,$at,21180
    addu	$gp,$t9,$at
    # Line 660
    lw	$t9,4948($a0)
    # Line 652
    sd	$s0,40($sp)
    move	$s0,$a0
    sd	$s1,32($sp)
    # Line 660
    nop
    # Line 652
    move	$s1,$a1
    # Line 660
    jalr	$t9
    # Line 652
    sd	$a2,8($sp)
    # Line 660
    lw	$v0,4984($s0)
    li	$v1,4865
    beq	$v0,$v1,.L0d97bb60
    # Line 664
    nop	# was lw $t9, -28816($gp) # &__glMipsCopyDispatch
.L0d97bb18:
    # Line 674
    lw	$a0,5008($s0)
    # Line 682
    ld	$ra,24($sp)
    # Line 674
    beqz	$a0,.L0d97bb40
    # Line 682
    ld	$gp,16($sp)
    # Line 677
    sw	$s1,0($a0)
    # Line 681
    sw	$s1,5008($s0)
    # Line 682
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d97bb40:
    ld	$gp,16($sp)
    # Line 681
    sw	$s1,5008($s0)
    # Line 682
    ld	$ra,24($sp)
    # Line 679
    sw	$s1,5004($s0)
    # Line 682
    ld	$s0,40($sp)
    ld	$s1,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d97bb60:
    # Line 664
    li	$a1,4176
    addiu	$a0,$s0,9864
    jal	__glMipsCopyDispatch
    sd	$a0,0($sp)
    # Line 667
    ld	$t9,8($sp)
    addiu	$a0,$s1,16
    # Line 665
    li	$a1,4176
    # Line 667
    jalr	$t9
    # Line 665
    sw	$a1,6072($s0)
    # Line 670
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    ld	$a1,0($sp)
    jal	__glMipsCopyDispatch
    li	$a0,4176
    # Line 673
    # lw $t9, -28816($gp) # &__glMipsCopyDispatch
    # Line 670
    lw	$a2,4168($zero)
    # Line 673
    li	$a1,4176
    # Line 671
    addiu	$a3,$s0,6080
    move	$a0,$a2
    # Line 673
    jal	__glMipsCopyDispatch
    movz	$a0,$a3,$a2
    ld	$a4,0($sp)
    b	.L0d97bb18
    # Line 674
    sw	$a4,6072($s0)
.end __glDlistAppendOp

