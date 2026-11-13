# Source: ../PIXMAP/pix_pick.c
# Category: PIXMAP
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../PIXMAP/pix_pick.c
# Total Functions: 2

.text

# Function: __glPixPickSpanProcs
# Declared: Line 21 (Source lines: 22-263)
# Address: 0x0d994680 - 0x0d994ba8 (Size: 1320 bytes, Frame: 208)
.globl __glPixPickSpanProcs
.ent __glPixPickSpanProcs
__glPixPickSpanProcs:
    # Line 25
    lw	$a3,11760($a0)
    # Line 22
    addiu	$sp,$sp,-80
    sd	$s2,24($sp)
    sd	$s0,8($sp)
    sd	$s1,16($sp)
    # Line 33
    addiu	$s1,$a0,12164
    # Line 36
    lbu	$v0,29836($a0)
    # Line 32
    addiu	$s0,$a0,12104
    # Line 22
    sd	$s3,32($sp)
    lui	$at,0xc
    move	$s3,$a0
    # Line 24
    lw	$s2,30436($a0)
    # Line 22
    addiu	$at,$at,-14580
    sd	$gp,40($sp)
    # Line 36
    beqz	$v0,.L0d9946d0
    # Line 22
    addu	$gp,$t9,$at
    # Line 36
    lw	$v0,1792($a0)
    andi	$v0,$v0,0x4000
    beqz	$v0,.L0d9946e8
    # Line 39
    andi	$a0,$s2,0x10
.L0d9946d0:
    sw	$zero,12164($s3)
    # Line 38
    la	$v1,__glClipSpan
    # Line 39
    addiu	$s1,$s3,12168
    # Line 38
    addiu	$s0,$s3,12108
    sw	$v1,12104($s3)
    # Line 39
    andi	$a0,$s2,0x10
.L0d9946e8:
    beqz	$a0,.L0d99470c
    # Line 44
    andi	$a0,$s2,0x200
    la	$a1,__glStippleStippledSpan
    # Line 43
    la	$a2,__glStippleSpan
    # Line 44
    addiu	$s1,$s1,4
    # Line 43
    sw	$a2,0($s0)
    addiu	$s0,$s0,4
    # Line 44
    sw	$a1,-4($s1)
    andi	$a0,$s2,0x200
.L0d99470c:
    beqz	$a0,.L0d994880
.L0d994710:
    # Line 95
    la	$t0,__glDepthTestStencilStippledOffsetSpan
.L0d994714:
    la	$a6,__glStencilTestStippledSpan
    # lw $t9, -25084($gp) # &__glDepthPassSpan
    la	$t2,__glDepthTestOffsetSpan
    la	$t8,__glDepthTestStencilSpan_asm
    la	$t1,__glDepthTestStippledOffsetSpan
    la	$a7,__glDepthTestStencilOffsetSpan
    andi	$a5,$s2,0x1
    la	$t3,__glDepthTestStencilStippledSpan_asm
    andi	$v0,$s2,0x2
    beqz	$a5,.L0d9948cc
    la	$a5,__glStencilTestSpan_asm
    beqz	$v0,.L0d994964
    # Line 114
    la	$at,__glFlatRGBASpan
    # Line 113
    la	$at,__glShadeRGBASpan
    sw	$at,0($s0)
    # Line 114
    sw	$at,0($s1)
.L0d994754:
    # Line 129
    andi	$v0,$s2,0x8
    addiu	$s1,$s1,4
    beqz	$v0,.L0d994794
    # Line 128
    addiu	$s0,$s0,4
    # Line 132
    la	$a1,__glTextureStippledSpan
    # Line 131
    la	$a2,__glTextureSpan
    sw	$a2,0($s0)
    # Line 132
    sw	$a1,0($s1)
    # Line 134
    lw	$v0,1792($s3)
    dsll32	$v1,$v0,0xe
    bgez	$v1,.L0d99478c
    dsll32	$a4,$v0,0x1
    bgez	$a4,.L0d9949a0
    nop
.L0d99478c:
    # Line 165
    addiu	$s1,$s1,4
    # Line 164
    addiu	$s0,$s0,4
.L0d994794:
    # Line 165
    andi	$at,$s2,0x1000
    beqz	$at,.L0d9947c4
    nop
    lw	$v0,1912($s3)
    li	$v1,4354
    beq	$v0,$v1,.L0d994970
    # Line 173
    la	$a1,__glFogStippledSpan
    # Line 172
    la	$a2,__glFogSpan
    sw	$a2,0($s0)
    # Line 173
    sw	$a1,0($s1)
.L0d9947bc:
    # Line 176
    addiu	$s1,$s1,4
    # Line 175
    addiu	$s0,$s0,4
.L0d9947c4:
    # Line 176
    beqz	$a0,.L0d99481c
    # Line 181
    la	$at,__glAlphaTestStippledSpan
    addiu	$a0,$s1,4
    # Line 180
    la	$v1,__glAlphaTestSpan
    addiu	$v0,$s0,4
    # Line 181
    andi	$s0,$s2,0x20
    andi	$a4,$s2,0x4
    # Line 180
    sw	$v1,-4($v0)
    # Line 181
    move	$s1,$a0
    sw	$at,-4($a0)
    beqz	$s0,.L0d994928
    # Line 180
    move	$s0,$v0
    # Line 187
    sw	$a5,0($v0)
    # Line 191
    beqz	$a4,.L0d994990
    sw	$a6,0($a0)
    dsll32	$a1,$s2,0xd
    bgez	$a1,.L0d994984
    nop
    # Line 196
    sw	$a7,4($v0)
    # Line 197
    sw	$t0,4($a0)
.L0d994814:
    # Line 216
    addiu	$s1,$a0,8
    # Line 215
    addiu	$s0,$v0,8
.L0d99481c:
    # Line 230
    lw	$v1,1888($s3)
    li	$a1,1032
    subu	$a0,$s0,$s3
    addiu	$v0,$a0,-12100
    beq	$v1,$a1,.L0d9948e4
    sra	$v0,$v0,0x2
    # Line 260
    la	$a2,__glProcessSpan
    # Line 263
    ld	$gp,40($sp)
    ld	$s2,24($sp)
    # Line 252
    lw	$a4,184($a3)
    sw	$a4,0($s0)
    # Line 263
    ld	$s0,8($sp)
    # Line 253
    lw	$a3,188($a3)
    sw	$a3,0($s1)
    # Line 263
    ld	$s1,16($sp)
    # Line 261
    sw	$v0,12224($s3)
    # Line 260
    sw	$a2,12232($s3)
    # Line 256
    sw	$v0,12228($s3)
    # Line 263
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d994870:
    ld	$s3,32($sp)
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d994880:
    # Line 44
    andi	$a5,$s2,0x20
    # Line 81
    li	$a6,512
    # Line 44
    beqz	$a5,.L0d994a60
    andi	$a4,$s2,0x4
    # Line 52
    la	$a6,__glStencilTestStippledSpan
    la	$a7,__glStencilTestSpan_asm
    sw	$a7,0($s0)
    # Line 56
    beqz	$a4,.L0d994ad0
    sw	$a6,0($s1)
    dsll32	$t0,$s2,0xd
    bgez	$t0,.L0d994ac0
    # Line 62
    la	$a2,__glDepthTestStencilStippledSpan_asm
    # Line 61
    la	$t1,__glDepthTestStencilStippledOffsetSpan
    la	$t2,__glDepthTestStencilOffsetSpan
    sw	$t2,4($s0)
    # Line 62
    sw	$t1,4($s1)
.L0d9948c0:
    # Line 81
    addiu	$s1,$s1,8
    b	.L0d994710
    # Line 80
    addiu	$s0,$s0,8
.L0d9948cc:
    # Line 117
    beqz	$v0,.L0d994a9c
    # Line 122
    la	$at,__glFlatCISpan
    # Line 121
    la	$at,__glShadeCISpan
    sw	$at,0($s0)
    # Line 122
    b	.L0d994754
    sw	$at,0($s1)
.L0d9948e4:
    # Line 258
    la	$v1,__glProcessReplicateSpan
    # Line 263
    ld	$gp,40($sp)
    ld	$s2,24($sp)
    # Line 247
    addiu	$a2,$a0,-12104
    sra	$a2,$a2,0x2
    sw	$a2,12224($s3)
    # Line 252
    lw	$a1,184($a3)
    sw	$a1,0($s0)
    # Line 263
    ld	$s0,8($sp)
    # Line 253
    lw	$a0,188($a3)
    sw	$a0,0($s1)
    # Line 263
    ld	$s1,16($sp)
    # Line 258
    sw	$v1,12232($s3)
    # Line 256
    sw	$v0,12228($s3)
    # Line 263
    ld	$s3,32($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d994928:
    # Line 216
    beqz	$a4,.L0d99481c
    nop
    lw	$a4,1632($s3)
    li	$a5,512
    ld	$s0,8($sp)
    beq	$a4,$a5,.L0d994ae4
    ld	$s1,16($sp)
    # Line 221
    dsll32	$a6,$s2,0xd
    bgez	$a6,.L0d994aa8
    # Line 230
    la	$v1,__glDepthTestStippledSpan_asm
    # Line 227
    addiu	$s1,$a0,4
    # Line 226
    sw	$t2,0($v0)
    addiu	$s0,$v0,4
    # Line 227
    b	.L0d99481c
    sw	$t1,0($a0)
.L0d994964:
    # Line 116
    sw	$at,0($s0)
    b	.L0d994754
    # Line 117
    sw	$at,0($s1)
.L0d994970:
    # Line 170
    la	$v0,__glFogStippledSpanSlow
    # Line 169
    la	$v1,__glFogSpanSlow
    sw	$v1,0($s0)
    # Line 170
    b	.L0d9947bc
    sw	$v0,0($s1)
.L0d994984:
    # Line 199
    sw	$t8,4($v0)
    b	.L0d994814
    # Line 200
    sw	$t3,4($a0)
.L0d994990:
    # Line 212
    sw	$t9,4($v0)
    la	$a1,__glDepthPassStippledSpan
    b	.L0d994814
    # Line 213
    sw	$a1,4($a0)
.L0d9949a0:
    # Line 138
    # lw $t9, -24468($gp) # &__glLookUpTextureParams
    sd	$a3,48($sp)
    sd	$a0,56($sp)
    move	$a0,$s3
    sd	$ra,64($sp)
    jal	__glLookUpTextureParams
    li	$a1,3553
    # Line 139
    # lw $t9, -24460($gp) # &__glLookUpTexture
    move	$a0,$s3
    # Line 138
    sd	$v0,0($sp)
    # Line 139
    jal	__glLookUpTexture
    li	$a1,3553
    ld	$ra,64($sp)
    ld	$a0,56($sp)
    ld	$a3,48($sp)
    la	$a5,__glStencilTestSpan_asm
    la	$a6,__glStencilTestStippledSpan
    la	$a7,__glDepthTestStencilOffsetSpan
    la	$t0,__glDepthTestStencilStippledOffsetSpan
    la	$t1,__glDepthTestStippledOffsetSpan
    # Line 140
    lw	$a4,228($v0)
    la	$t2,__glDepthTestOffsetSpan
    lw	$a2,64($a4)
    la	$t3,__glDepthTestStencilStippledSpan_asm
    li	$at,6407
    la	$t8,__glDepthTestStencilSpan_asm
    bne	$a2,$at,.L0d99478c
    nop	# was lw $t9, -25084($gp) # &__glDepthPassSpan
    lw	$v0,56($a4)
    bnez	$v0,.L0d99478c
    # Line 142
    ld	$a4,0($sp)
    lw	$a4,12($a4)
    li	$v1,9986
    beq	$a4,$v1,.L0d994b28
.L0d994a28:
    # Line 147
    li	$at,9987
    beq	$a4,$at,.L0d994b54
.L0d994a30:
    # Line 152
    li	$v0,9728
    beq	$v0,$a4,.L0d994b80
.L0d994a38:
    # Line 157
    li	$v1,9984
    bne	$a4,$v1,.L0d99478c
    ld	$a1,0($sp)
    lw	$a1,16($a1)
    bne	$v0,$a1,.L0d99478c
    # Line 160
    la	$a2,__glTextureRGB_N_NMN_StippledSpan
    # Line 159
    la	$a4,__glTextureRGB_N_NMN_Span
    sw	$a4,0($s0)
    # Line 160
    b	.L0d99478c
    sw	$a2,0($s1)
.L0d994a60:
    # Line 81
    beqz	$a4,.L0d994a94
    nop
    lw	$a5,1632($s3)
    beq	$a5,$a6,.L0d994b10
    # Line 86
    dsll32	$a7,$s2,0xd
    bgez	$a7,.L0d994af4
    # Line 92
    la	$t0,__glDepthTestStippledSpan_asm
    # Line 91
    la	$t1,__glDepthTestOffsetSpan
    la	$t0,__glDepthTestStippledOffsetSpan
    addiu	$s0,$s0,4
    # Line 92
    addiu	$s1,$s1,4
    # Line 91
    sw	$t1,-4($s0)
    # Line 92
    sw	$t0,-4($s1)
.L0d994a94:
    b	.L0d994714
    # Line 95
    la	$t0,__glDepthTestStencilStippledOffsetSpan
.L0d994a9c:
    # Line 124
    sw	$at,0($s0)
    b	.L0d994754
    # Line 125
    sw	$at,0($s1)
.L0d994aa8:
    # Line 229
    la	$a1,__glDepthTestSpan_asm
    # Line 230
    addiu	$s1,$a0,4
    # Line 229
    sw	$a1,0($v0)
    addiu	$s0,$v0,4
    b	.L0d99481c
    # Line 230
    sw	$v1,0($a0)
.L0d994ac0:
    # Line 62
    la	$a4,__glDepthTestStencilSpan_asm
    # Line 64
    sw	$a4,4($s0)
    b	.L0d9948c0
    # Line 65
    sw	$a2,4($s1)
.L0d994ad0:
    la	$a5,__glDepthPassStippledSpan
    la	$a6,__glDepthPassSpan
    # Line 77
    sw	$a6,4($s0)
    b	.L0d9948c0
    # Line 78
    sw	$a5,4($s1)
.L0d994ae4:
    ld	$s2,24($sp)
    # Line 220
    la	$a7,__glNop
    b	.L0d994870
    sw	$a7,12232($s3)
.L0d994af4:
    # Line 94
    addiu	$s0,$s0,4
    # Line 92
    la	$t2,__glDepthTestSpan_asm
    # Line 95
    addiu	$t1,$s1,4
    # Line 94
    sw	$t2,-4($s0)
    # Line 95
    move	$s1,$t1
    b	.L0d994a94
    sw	$t0,-4($t1)
.L0d994b10:
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    ld	$s2,24($sp)
    # Line 85
    la	$t3,__glNop
    b	.L0d994870
    sw	$t3,12232($s3)
.L0d994b28:
    # Line 142
    ld	$at,0($sp)
    lw	$at,16($at)
    li	$v0,9729
    bne	$at,$v0,.L0d994a28
    # Line 145
    la	$at,__glTextureRGB_L_NML_StippledSpan
    # Line 144
    la	$v0,__glTextureRGB_L_NML_Span
    sw	$v0,0($s0)
    # Line 145
    ld	$a4,0($sp)
    sw	$at,0($s1)
    b	.L0d994a28
    lw	$a4,12($a4)
.L0d994b54:
    # Line 147
    ld	$v1,0($sp)
    lw	$v1,16($v1)
    li	$a1,9729
    bne	$v1,$a1,.L0d994a30
    # Line 150
    la	$at,__glTextureRGB_L_LML_StippledSpan
    # Line 149
    la	$v0,__glTextureRGB_L_LML_Span
    sw	$v0,0($s0)
    # Line 150
    ld	$a4,0($sp)
    sw	$at,0($s1)
    b	.L0d994a30
    lw	$a4,12($a4)
.L0d994b80:
    # Line 152
    ld	$v1,0($sp)
    lw	$v1,16($v1)
    bne	$v0,$v1,.L0d994a38
    # Line 155
    la	$at,__glTextureRGB_N_N_StippledSpan
    # Line 154
    la	$v1,__glTextureRGB_N_N_Span
    sw	$v1,0($s0)
    # Line 155
    ld	$a4,0($sp)
    sw	$at,0($s1)
    b	.L0d994a38
    lw	$a4,12($a4)
.end __glPixPickSpanProcs

# Function: __glPixPickStoreProcs
# Declared: Line 278 (Source lines: 279-322)
# Address: 0x0d994bb0 - 0x0d994d04 (Size: 340 bytes, Frame: 0)
.globl __glPixPickStoreProcs
.ent __glPixPickStoreProcs
__glPixPickStoreProcs:
    # Line 281
    lw	$a5,1792($a0)
    # Line 283
    move	$a4,$zero
    # Line 279
    lui	$v0,0xc
    # Line 283
    andi	$v1,$a5,0x1
    # Line 292
    li	$t3,1036
    # Line 279
    addiu	$v0,$v0,-15908
    # Line 283
    beqz	$v1,.L0d994cd4
    # Line 279
    addu	$at,$t9,$v0
    # Line 283
    lbu	$v1,3220($a0)
    li	$a4,1
    movz	$a4,$zero,$v1
    # Line 284
    andi	$a7,$a5,0x8000
.L0d994be0:
    # Line 292
    li	$t9,1032
    lw	$a3,1888($a0)
    # Line 287
    andi	$a1,$a5,0x10
    # Line 292
    li	$a5,1034
    # Line 287
    ori	$a2,$a4,0x2
    # Line 292
    sltiu	$a6,$a3,1033
    sltiu	$t1,$a3,1035
    movz	$a2,$a4,$a7
    # Line 290
    ori	$a4,$a2,0x4
    # Line 292
    bnez	$a6,.L0d994c3c
    movz	$a4,$a2,$a1
    sltiu	$t2,$a3,1036
    sltiu	$t0,$a3,1034
    bnez	$t0,.L0d994c94
    nop
    bnez	$t1,.L0d994cc4
    nop
    bnez	$t2,.L0d994c94
    nop
    bne	$a3,$t3,.L0d994cbc
    nop
    b	.L0d994c98
    # Line 318
    la	$a3,sub_0da40000
.L0d994c3c:
    # Line 292
    sltiu	$a5,$a3,1029
    sltiu	$t8,$a3,1030
    bnez	$a5,.L0d994c88
    sltiu	$a1,$a3,1028
    bnez	$t8,.L0d994c94
    nop
    bne	$a3,$t9,.L0d994cbc
    nop
    lbu	$v0,30652($a0)
    # Line 300
    la	$a2,__glDoDoubleStore
    # Line 299
    sll	$a1,$a4,0x2
    # Line 292
    beqz	$v0,.L0d994c94
    # Line 299
    la	$v1,sub_0da40000
    addiu	$v1,$v1,30888
    # Line 300
    sw	$a2,12612($a0)
    # Line 299
    addu	$v1,$v1,$a1
    lw	$v1,0($v1)
    # Line 322
    jr	$ra
    # Line 299
    sw	$v1,12608($a0)
.L0d994c88:
    # Line 292
    bnez	$a1,.L0d994cdc
    nop
    beqz	$a5,.L0d994cbc
.L0d994c94:
    # Line 318
    la	$a3,sub_0da40000
.L0d994c98:
    sll	$a4,$a4,0x2
    addiu	$a3,$a3,30888
    # Line 319
    lw	$a2,11760($a0)
    # Line 318
    addu	$a3,$a3,$a4
    lw	$a3,0($a3)
    sw	$a3,12608($a0)
    # Line 319
    lw	$a2,164($a2)
    # Line 322
    jr	$ra
    # Line 319
    sw	$a2,12612($a0)
.L0d994cbc:
    # Line 322
    jr	$ra
    nop
.L0d994cc4:
    # Line 292
    bne	$a3,$a5,.L0d994cbc
    nop
    b	.L0d994c98
    # Line 318
    la	$a3,sub_0da40000
.L0d994cd4:
    b	.L0d994be0
    # Line 284
    andi	$a7,$a5,0x8000
.L0d994cdc:
    # Line 292
    bnez	$a3,.L0d994cbc
    # Line 294
    la	$a6,sub_0da40000
    # Line 295
    la	$t0,__glDoNullStore
    # Line 294
    sll	$a7,$a4,0x2
    addiu	$a6,$a6,30888
    # Line 295
    sw	$t0,12612($a0)
    # Line 294
    addu	$a6,$a6,$a7
    lw	$a6,0($a6)
    # Line 322
    jr	$ra
    # Line 294
    sw	$a6,12608($a0)
.end __glPixPickStoreProcs

