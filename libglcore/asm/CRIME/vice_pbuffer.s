# Source: ../CRIME/vice_pbuffer.c
# Category: CRIME
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../CRIME/vice_pbuffer.c
# Total Functions: 12

.text

# Function: __viceMapSPBufCode
# Declared: Line 43 (Source lines: 45-212)
# Address: 0x0da39fd0 - 0x0da3a5c8 (Size: 1528 bytes, Frame: 224)
.globl __viceMapSPBufCode
.ent __viceMapSPBufCode
__viceMapSPBufCode:
    # Line 45
    addiu	$sp,$sp,-96
    sd	$s4,16($sp)
    sd	$s3,56($sp)
    sd	$s2,48($sp)
    sd	$s6,8($sp)
    sd	$s5,32($sp)
    # Line 46
    sw	$zero,0($sp)
    # Line 45
    sd	$s0,24($sp)
    move	$s6,$a4
    # Line 54
    lw	$s0,4100($a1)
    # Line 45
    move	$s2,$a1
    lui	$s5,0x1
    # Line 54
    lw	$at,1792($a3)
    # Line 45
    move	$s3,$a0
    # Line 51
    lw	$s4,1828($a3)
    # Line 45
    addiu	$s5,$s5,28092
    sd	$ra,80($sp)
    # Line 54
    andi	$at,$at,0x2
    sll	$s0,$s0,0x2
    sd	$gp,64($sp)
    # Line 45
    addu	$gp,$t9,$s5
    # Line 54
    addu	$s0,$a1,$s0
    # Line 50
    lw	$s5,1832($a3)
    # Line 54
    beqz	$at,.L0da3a528
    addiu	$s0,$s0,4
    # Line 62
    beqz	$a2,.L0da3a470
    # Line 71
    nop	# was lw $t9, -23224($gp) # &vice_gfxfile
    # Line 66
    # lw $t9, -23224($gp) # &vice_gfxfile
    la	$a0,sub_0da40000
    bal vice_gfxfile
    addiu	$a0,$a0,9160
    # lw $t9, -22828($gp) # &open
    move	$a0,$v0
    move	$a1,$zero
    jal	open
    sd	$s1,72($sp)
    # Line 67
    # lw $t9, -23224($gp) # &vice_gfxfile
    la	$a0,sub_0da40000
    # Line 66
    move	$s1,$v0
    # Line 67
    bal vice_gfxfile
    addiu	$a0,$a0,9160
    # lw $t9, -23188($gp) # &gfxmapfile
    move	$a1,$v0
    move	$a0,$s1
    addiu	$a2,$sp,0
    bal gfxmapfile
    sd	$s6,40($sp)
    move	$s6,$v0
.L0da3a090:
    # Line 75
    # lw $t9, -22748($gp) # &vice_loadmspcode
    move	$a0,$s3
    move	$a1,$s6
    move	$a2,$s0
    jal	vice_loadmspcode
    lw	$a3,0($sp)
    # Line 76
    lw	$t8,8($s6)
    lw	$ra,4100($s2)
    # Line 78
    # lw $t9, -22820($gp) # &close
    # Line 76
    addu	$t8,$t8,$ra
    # Line 77
    sll	$s0,$t8,0x2
    # Line 78
    move	$a0,$s1
    # Line 77
    addu	$s0,$s2,$s0
    # Line 76
    sw	$t8,4100($s2)
    # Line 78
    jal	close
    # Line 77
    addiu	$s0,$s0,4
    # Line 80
    li	$v0,770
    beq	$v0,$s4,.L0da3a4c4
.L0da3a0d8:
    # Line 84
    sltiu	$at,$s4,772
    bnez	$at,.L0da3a39c
    sltiu	$a4,$s4,770
    sltiu	$v0,$s4,773
    beqz	$v0,.L0da3a3e4
    # Line 108
    li	$a7,17
    # Line 105
    li	$v0,15
.L0da3a0f4:
    # Line 113
    # lw $t9, -23224($gp) # &vice_gfxfile
.L0da3a0f8:
    # Line 111
    la	$s6,glVasmFile
    # Line 113
    sll	$s1,$v0,0x2
    # Line 112
    sw	$zero,0($sp)
    # Line 113
    addu	$s1,$s6,$s1
    bal vice_gfxfile
    lw	$a0,0($s1)
    # lw $t9, -22828($gp) # &open
    move	$a0,$v0
    jal	open
    move	$a1,$zero
    # Line 114
    # lw $t9, -23224($gp) # &vice_gfxfile
    # Line 113
    move	$s4,$v0
    # Line 114
    bal vice_gfxfile
    lw	$a0,0($s1)
    # lw $t9, -23188($gp) # &gfxmapfile
    move	$a1,$v0
    move	$a0,$s4
    bal gfxmapfile
    addiu	$a2,$sp,0
    # Line 119
    # lw $t9, -22748($gp) # &vice_loadmspcode
    # Line 114
    move	$s1,$v0
    # Line 119
    move	$a0,$s3
    move	$a1,$v0
    move	$a2,$s0
    jal	vice_loadmspcode
    lw	$a3,0($sp)
    # Line 120
    lw	$t8,8($s1)
    lw	$ra,4100($s2)
    # Line 122
    # lw $t9, -22820($gp) # &close
    # Line 120
    addu	$t8,$t8,$ra
    # Line 121
    sll	$s0,$t8,0x2
    # Line 122
    move	$a0,$s4
    # Line 121
    addu	$s0,$s2,$s0
    # Line 120
    sw	$t8,4100($s2)
    # Line 122
    jal	close
    # Line 121
    addiu	$s0,$s0,4
    # Line 124
    sltiu	$at,$s5,770
    bnez	$at,.L0da3a3c0
    sltiu	$a6,$s5,768
    sltiu	$v0,$s5,771
    beqz	$v0,.L0da3a428
    sltiu	$t2,$s5,772
    # Line 139
    li	$v0,12
.L0da3a1a4:
    # Line 152
    # lw $t9, -23224($gp) # &vice_gfxfile
.L0da3a1a8:
    sll	$s1,$v0,0x2
    # Line 151
    sw	$zero,0($sp)
    # Line 152
    addu	$s1,$s6,$s1
    bal vice_gfxfile
    lw	$a0,0($s1)
    # lw $t9, -22828($gp) # &open
    move	$a0,$v0
    jal	open
    move	$a1,$zero
    # Line 153
    # lw $t9, -23224($gp) # &vice_gfxfile
    # Line 152
    move	$s4,$v0
    # Line 153
    bal vice_gfxfile
    lw	$a0,0($s1)
    # lw $t9, -23188($gp) # &gfxmapfile
    move	$a1,$v0
    move	$a0,$s4
    bal gfxmapfile
    addiu	$a2,$sp,0
    # Line 158
    # lw $t9, -22748($gp) # &vice_loadmspcode
    # Line 153
    move	$s1,$v0
    # Line 158
    move	$a0,$s3
    move	$a1,$v0
    move	$a2,$s0
    jal	vice_loadmspcode
    lw	$a3,0($sp)
    # Line 159
    lw	$t8,8($s1)
    lw	$ra,4100($s2)
    # Line 161
    # lw $t9, -22820($gp) # &close
    # Line 159
    addu	$t8,$t8,$ra
    # Line 160
    sll	$s0,$t8,0x2
    # Line 161
    move	$a0,$s4
    # Line 160
    addu	$s0,$s2,$s0
    # Line 159
    sw	$t8,4100($s2)
    # Line 161
    jal	close
    # Line 160
    addiu	$s0,$s0,4
    # Line 190
    # lw $t9, -23224($gp) # &vice_gfxfile
    la	$a0,sub_0da40000
    # Line 189
    sw	$zero,0($sp)
    # Line 190
    bal vice_gfxfile
    addiu	$a0,$a0,9200
    # lw $t9, -22828($gp) # &open
    move	$a0,$v0
    jal	open
    move	$a1,$zero
    # Line 191
    # lw $t9, -23224($gp) # &vice_gfxfile
    la	$a0,sub_0da40000
    # Line 190
    move	$s4,$v0
    # Line 191
    bal vice_gfxfile
    addiu	$a0,$a0,9200
    # lw $t9, -23188($gp) # &gfxmapfile
    move	$a1,$v0
    move	$a0,$s4
    bal gfxmapfile
    addiu	$a2,$sp,0
    # Line 195
    # lw $t9, -22748($gp) # &vice_loadmspcode
    # Line 191
    move	$s1,$v0
    # Line 195
    move	$a0,$s3
    move	$a1,$v0
    move	$a2,$s0
    jal	vice_loadmspcode
    lw	$a3,0($sp)
    # Line 196
    lw	$t8,8($s1)
    lw	$ra,4100($s2)
    # Line 198
    # lw $t9, -22820($gp) # &close
    # Line 196
    addu	$t8,$t8,$ra
    # Line 197
    sll	$s0,$t8,0x2
    # Line 198
    move	$a0,$s4
    # Line 197
    addu	$s0,$s2,$s0
    # Line 196
    sw	$t8,4100($s2)
    # Line 198
    jal	close
    # Line 197
    addiu	$s0,$s0,4
    # Line 200
    # lw $t9, -23224($gp) # &vice_gfxfile
    la	$a0,sub_0da40000
    # Line 199
    sw	$zero,0($sp)
    # Line 200
    bal vice_gfxfile
    addiu	$a0,$a0,9216
    # lw $t9, -22828($gp) # &open
    move	$a0,$v0
    jal	open
    move	$a1,$zero
    # Line 201
    # lw $t9, -23224($gp) # &vice_gfxfile
    la	$a0,sub_0da40000
    # Line 200
    move	$s4,$v0
    # Line 201
    bal vice_gfxfile
    addiu	$a0,$a0,9216
    # lw $t9, -23188($gp) # &gfxmapfile
    move	$a1,$v0
    move	$a0,$s4
    bal gfxmapfile
    addiu	$a2,$sp,0
    # Line 205
    # lw $t9, -22748($gp) # &vice_loadmspcode
    # Line 201
    move	$s1,$v0
    # Line 205
    move	$a0,$s3
    move	$a1,$v0
    move	$a2,$s0
    jal	vice_loadmspcode
    lw	$a3,0($sp)
    # Line 206
    lw	$a1,8($s1)
    # Line 207
    # lw $t9, -22820($gp) # &close
    # Line 206
    lw	$a2,4100($s2)
    # Line 207
    move	$a0,$s4
    # Line 206
    addu	$a1,$a1,$a2
    # Line 207
    jal	close
    # Line 206
    sw	$a1,4100($s2)
    ld	$s6,8($sp)
.L0da3a34c:
    ld	$s4,16($sp)
    ld	$s0,24($sp)
    ld	$s1,72($sp)
    # Line 209
    # lw $t9, -22744($gp) # &vice_msp_code_to_etc
    ld	$s5,32($sp)
    move	$a0,$s3
    addiu	$a5,$s2,4
    move	$a4,$zero
    li	$a2,8192
    lw	$a3,4100($s2)
    ld	$a6,40($sp)
    li	$a1,8192
    jal	vice_msp_code_to_etc
    sll	$a3,$a3,0x2
    ld	$s2,48($sp)
    ld	$s3,56($sp)
    ld	$ra,80($sp)
    # Line 212
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,96
.L0da3a39c:
    # Line 84
    bnez	$a4,.L0da3a410
    move	$v0,$zero
    sltiu	$a5,$s4,771
    # Line 102
    li	$a3,13
    # Line 84
    li	$a2,771
    beqz	$a5,.L0da3a4f0
    xor	$a2,$s4,$a2
    # Line 99
    b	.L0da3a0f4
    li	$v0,11
.L0da3a3c0:
    # Line 124
    bnez	$a6,.L0da3a458
    move	$v0,$zero
    sltiu	$a7,$s5,769
    # Line 136
    li	$a5,10
    # Line 124
    li	$a4,769
    beqz	$a7,.L0da3a504
    xor	$a4,$s5,$a4
    # Line 133
    b	.L0da3a1a4
    li	$v0,8
.L0da3a3e4:
    # Line 84
    sltiu	$a0,$s4,775
    li	$a5,776
    sltiu	$t0,$s4,776
    bnez	$a0,.L0da3a4d4
    sltiu	$a1,$s4,774
    xor	$a5,$s4,$a5
    move	$v0,$zero
    beqz	$t0,.L0da3a50c
    li	$a6,19
    # Line 96
    b	.L0da3a0f4
    li	$v0,9
.L0da3a410:
    # Line 84
    beqz	$s4,.L0da3a5b8
    li	$v0,3
    sltiu	$t1,$s4,2
    # Line 90
    li	$v0,5
    b	.L0da3a0f4
    movz	$v0,$zero,$t1
.L0da3a428:
    # Line 142
    li	$a4,14
    # Line 124
    li	$a3,771
    bnez	$t2,.L0da3a4f8
    xor	$a3,$s5,$a3
    li	$t0,18
    sltiu	$t3,$s5,773
    # Line 145
    li	$v0,16
    # Line 124
    li	$a7,773
    beqz	$t3,.L0da3a51c
    xor	$a7,$s5,$a7
    # Line 145
    b	.L0da3a1a8
    # Line 152
    nop	# was lw $t9, -23224($gp) # &vice_gfxfile
.L0da3a458:
    # Line 124
    beqz	$s5,.L0da3a5c0
    li	$v0,4
    sltiu	$t8,$s5,2
    # Line 130
    li	$v0,6
    b	.L0da3a1a4
    movz	$v0,$zero,$t8
.L0da3a470:
    # Line 71
    la	$a0,sub_0da40000
    bal vice_gfxfile
    addiu	$a0,$a0,9184
    # lw $t9, -22828($gp) # &open
    move	$a0,$v0
    move	$a1,$zero
    jal	open
    sd	$s1,72($sp)
    # Line 72
    # lw $t9, -23224($gp) # &vice_gfxfile
    la	$a0,sub_0da40000
    # Line 71
    move	$s1,$v0
    # Line 72
    bal vice_gfxfile
    addiu	$a0,$a0,9184
    # lw $t9, -23188($gp) # &gfxmapfile
    move	$a1,$v0
    move	$a0,$s1
    addiu	$a2,$sp,0
    bal gfxmapfile
    sd	$s6,40($sp)
    b	.L0da3a090
    move	$s6,$v0
.L0da3a4c4:
    # Line 80
    bne	$v0,$s5,.L0da3a0d8
    # Line 81
    la	$s6,glVasmFile
    b	.L0da3a1a4
    li	$v0,20
.L0da3a4d4:
    # Line 84
    move	$v0,$zero
    li	$a6,773
    bnez	$a1,.L0da3a514
    xor	$a6,$s4,$a6
    # Line 93
    li	$v0,7
    b	.L0da3a0f4
    movz	$v0,$zero,$a0
.L0da3a4f0:
    # Line 102
    b	.L0da3a0f4
    movz	$v0,$a3,$a2
.L0da3a4f8:
    # Line 124
    move	$v0,$zero
    # Line 142
    b	.L0da3a1a4
    movz	$v0,$a4,$a3
.L0da3a504:
    # Line 136
    b	.L0da3a1a4
    movz	$v0,$a5,$a4
.L0da3a50c:
    # Line 84
    b	.L0da3a0f4
    movz	$v0,$a6,$a5
.L0da3a514:
    # Line 108
    b	.L0da3a0f4
    movz	$v0,$a7,$a6
.L0da3a51c:
    # Line 124
    move	$v0,$zero
    b	.L0da3a1a4
    movz	$v0,$t0,$a7
.L0da3a528:
    # Line 56
    # lw $t9, -23224($gp) # &vice_gfxfile
    la	$a0,sub_0da40000
    sd	$a4,40($sp)
    bal vice_gfxfile
    addiu	$a0,$a0,9144
    # lw $t9, -22828($gp) # &open
    move	$a0,$v0
    jal	open
    move	$a1,$zero
    # Line 57
    # lw $t9, -23224($gp) # &vice_gfxfile
    la	$a0,sub_0da40000
    # Line 56
    move	$s4,$v0
    # Line 57
    bal vice_gfxfile
    addiu	$a0,$a0,9144
    # lw $t9, -23188($gp) # &gfxmapfile
    move	$a1,$v0
    move	$a0,$s4
    addiu	$a2,$sp,0
    bal gfxmapfile
    sd	$s1,72($sp)
    # Line 59
    # lw $t9, -22748($gp) # &vice_loadmspcode
    # Line 57
    move	$s1,$v0
    # Line 59
    move	$a0,$s3
    move	$a1,$v0
    move	$a2,$s0
    jal	vice_loadmspcode
    lw	$a3,0($sp)
    # Line 60
    lw	$a2,4100($s2)
    # Line 62
    # lw $t9, -22820($gp) # &close
    # Line 60
    lw	$a1,8($s1)
    # Line 62
    move	$a0,$s4
    # Line 60
    addu	$a1,$a1,$a2
    # Line 62
    jal	close
    # Line 60
    sw	$a1,4100($s2)
    b	.L0da3a34c
    ld	$s6,8($sp)
.L0da3a5b8:
    # Line 84
    b	.L0da3a0f8
    # Line 113
    nop	# was lw $t9, -23224($gp) # &vice_gfxfile
.L0da3a5c0:
    # Line 124
    b	.L0da3a1a8
    # Line 152
    nop	# was lw $t9, -23224($gp) # &vice_gfxfile
.end __viceMapSPBufCode

# Function: SPbufFreeTiles
# Declared: Line 214 (Source lines: 215-229)
# Address: 0x0da3a5d0 - 0x0da3a638 (Size: 104 bytes, Frame: 16)
.ent SPbufFreeTiles
SPbufFreeTiles:
    # Line 215
    lw	$a2,28($a0)
    addiu	$sp,$sp,-16
    sd	$s0,0($sp)
    move	$s0,$a0
    beqz	$a2,.L0da3a5f4
    sd	$ra,8($sp)
    # Line 221
    # lw $t9, -22964($gp) # &dmBufferFree
    jal	dmBufferFree
    move	$a0,$a2
.L0da3a5f4:
    lw	$a0,20($s0)
    beqz	$a0,.L0da3a608
    # Line 223
    nop	# was lw $t9, -22960($gp) # &dmBufferDestroyPool
    jal	dmBufferDestroyPool
    nop
.L0da3a608:
    lw	$a0,24($s0)
    beqz	$a0,.L0da3a61c
    # Line 225
    nop	# was lw $t9, -22956($gp) # &dmParamsDestroy
    jal	dmParamsDestroy
    nop
.L0da3a61c:
    # Line 228
    sw	$zero,24($s0)
    ld	$ra,8($sp)
    # Line 227
    sw	$zero,20($s0)
    # Line 226
    sw	$zero,28($s0)
    # Line 229
    ld	$s0,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end SPbufFreeTiles

# Function: SPbuffFree
# Declared: Line 231 (Source lines: 232-240)
# Address: 0x0da3a640 - 0x0da3a6b0 (Size: 112 bytes, Frame: 48)
.ent SPbuffFree
SPbuffFree:
    # Line 232
    addiu	$sp,$sp,-48
    # Line 233
    lw	$v0,4($a0)
    sd	$v0,16($sp)
    # Line 232
    sd	$a1,0($sp)
    lui	$at,0x1
    sd	$a0,8($sp)
    addiu	$at,$at,26444
    sd	$gp,24($sp)
    # Line 233
    bnez	$v0,.L0da3a674
    # Line 232
    addu	$gp,$t9,$at
    # Line 240
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3a674:
    # Line 237
    # lw $t9, -32680($gp) # &sub_0da40000
    addiu	$t9,$t9,-23088
    sd	$ra,32($sp)
    bal __viceMapSPBufCode
    ld	$a0,16($sp)
    # Line 238
    ld	$t9,0($sp)
    lw	$t9,20($t9)
    jal	sub_0da40000
    ld	$a0,16($sp)
    ld	$ra,32($sp)
    # Line 239
    ld	$at,8($sp)
    # Line 240
    ld	$gp,24($sp)
    addiu	$sp,$sp,48
    jr	$ra
    # Line 239
    sw	$zero,4($at)
.end SPbuffFree

# Function: __viceAllocSPbuf
# Declared: Line 242 (Source lines: 244-297)
# Address: 0x0da3a6b0 - 0x0da3a864 (Size: 436 bytes, Frame: 48)
.globl __viceAllocSPbuf
.ent __viceAllocSPbuf
__viceAllocSPbuf:
    # Line 246
    mult	$a2,$a3
    # Line 244
    addiu	$sp,$sp,-48
    sd	$s2,16($sp)
    # Line 246
    li	$a6,0xffff
    # Line 244
    move	$s2,$a1
    sd	$s1,32($sp)
    # Line 246
    li	$v0,16
    # Line 244
    lui	$v1,0x1
    # Line 246
    lw	$at,3260($a0)
    sd	$gp,8($sp)
    lui	$a7,0x1
    # Line 244
    addiu	$v1,$v1,26332
    sd	$s0,24($sp)
    # Line 246
    addu	$a7,$a0,$a7
    mflo	$a5
    lw	$s0,-32516($a7)
    beq	$at,$v0,.L0da3a7d8
    # Line 244
    addu	$gp,$t9,$v1
    move	$s1,$a6
    # Line 258
    addu	$t9,$a5,$a5
    addu	$t9,$a6,$t9
    sd	$a7,0($sp)
    addu	$s1,$t9,$s1
    slt	$t8,$t9,$zero
    sd	$ra,40($sp)
    movz	$s1,$t9,$t8
    sra	$s1,$s1,0x10
    sw	$s1,36($s0)
.L0da3a720:
    # Line 261
    # lw $t9, -22948($gp) # &dmParamsCreate
    # Line 260
    sll	$at,$s1,0x10
    # Line 261
    addiu	$a0,$s0,24
    jal	dmParamsCreate
    # Line 260
    sw	$at,4($s0)
    # Line 262
    # lw $t9, -22944($gp) # &dmBufferSetPoolDefaults
    li	$a4,1
    move	$a3,$zero
    lw	$a2,4($s0)
    li	$a1,1
    jal	dmBufferSetPoolDefaults
    lw	$a0,24($s0)
    # Line 265
    bnez	$v0,.L0da3a77c
    # Line 291
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 268
    # lw $t9, -22940($gp) # &vice_dmbuf_requirements
    jal	vice_dmbuf_requirements
    lw	$a0,24($s0)
    # Line 269
    # lw $t9, -22936($gp) # &dmBufferCreatePool
    addiu	$a1,$s0,20
    jal	dmBufferCreatePool
    lw	$a0,24($s0)
    # Line 270
    beqz	$v0,.L0da3a804
    # Line 291
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
.L0da3a77c:
    addiu	$t9,$t9,-23088
    bal __viceMapSPBufCode
    move	$a0,$s0
    # Line 293
    # lw $t9, -22740($gp) # &vice_alloc
    move	$a1,$s1
    jal	vice_alloc
    lw	$a0,40($s0)
    # Line 294
    # lw $t9, -22736($gp) # &vice_mmap
    # Line 293
    move	$a1,$v0
    # Line 294
    lw	$a0,40($s0)
    move	$a2,$s1
    jal	vice_mmap
    # Line 293
    sw	$v0,28($s0)
    ld	$s1,32($sp)
    # Line 297
    ld	$gp,8($sp)
    # Line 294
    sw	$v0,0($s0)
    ld	$ra,40($sp)
    # Line 296
    sw	$v0,16($s2)
    # Line 297
    move	$v0,$zero
    ld	$s0,24($sp)
    ld	$s2,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3a7d8:
    # Line 255
    sll	$t9,$a5,0x3
    move	$s1,$a6
    addu	$t9,$a6,$t9
    addu	$s1,$t9,$s1
    slt	$t8,$t9,$zero
    sd	$a7,0($sp)
    movz	$s1,$t9,$t8
    sd	$ra,40($sp)
    sra	$s1,$s1,0x10
    b	.L0da3a720
    sw	$s1,36($s0)
.L0da3a804:
    # Line 275
    # lw $t9, -22932($gp) # &dmBufferAllocate
    lw	$a0,20($s0)
    addiu	$a1,$s0,28
    jal	dmBufferAllocate
    # Line 274
    sw	$s1,36($s0)
    # Line 276
    bnez	$v0,.L0da3a77c
    # Line 291
    nop	# was lw $t9, -32680($gp) # &sub_0da40000
    # Line 282
    # lw $t9, -22928($gp) # &dmBufferMapData
    ld	$s1,32($sp)
    jal	dmBufferMapData
    lw	$a0,28($s0)
    # Line 297
    ld	$gp,8($sp)
    # Line 282
    sw	$v0,0($s0)
    # Line 297
    ld	$s0,24($sp)
    # Line 283
    sw	$v0,16($s2)
    # Line 284
    ld	$v1,0($sp)
    ld	$ra,40($sp)
    lbu	$at,-32512($v1)
    # Line 288
    li	$v0,1
    # Line 297
    ld	$s2,16($sp)
    addiu	$sp,$sp,48
    # Line 284
    addiu	$at,$at,1
    # Line 297
    jr	$ra
    # Line 284
    sb	$at,-32512($v1)
.end __viceAllocSPbuf

# Function: __viceInit
# Declared: Line 300 (Source lines: 301-321)
# Address: 0x0da3a870 - 0x0da3a924 (Size: 180 bytes, Frame: 48)
.globl __viceInit
.ent __viceInit
__viceInit:
    # Line 301
    addiu	$sp,$sp,-48
    # Line 305
    lw	$at,31500($a0)
    # Line 301
    lui	$v0,0x1
    sd	$gp,8($sp)
    addiu	$v0,$v0,25884
    addu	$gp,$t9,$v0
    # Line 305
    lw	$t9,8($at)
    # Line 301
    sd	$ra,16($sp)
    sd	$s0,24($sp)
    move	$s0,$a0
    # Line 305
    li	$a0,108
    jalr	$t9
    sd	$s3,32($sp)
    # Line 309
    # lw $t9, -22976($gp) # &vice_open_and_setetc
    la	$a0,sub_0da40000
    # Line 307
    lui	$v1,0x1
    # Line 305
    move	$s3,$v0
    # Line 307
    addu	$v1,$s0,$v1
    sd	$v1,0($sp)
    # Line 309
    addiu	$a0,$a0,9232
    jal	vice_open_and_setetc
    # Line 307
    sw	$v0,-32516($v1)
    # Line 309
    bltz	$v0,.L0da3a8f4
    sw	$v0,40($s3)
    ld	$s3,32($sp)
    # Line 321
    ld	$gp,8($sp)
    ld	$ra,16($sp)
    # Line 315
    ld	$v1,0($sp)
    # Line 321
    ld	$s0,24($sp)
    addiu	$sp,$sp,48
    # Line 315
    li	$v0,1
    # Line 321
    jr	$ra
    # Line 315
    sb	$v0,-32512($v1)
.L0da3a8f4:
    # Line 311
    lw	$t9,20($s0)
    la	$a1,sub_0da40000
    move	$a0,$s0
    ld	$s3,32($sp)
    jalr	$t9
    addiu	$a1,$a1,9248
    # Line 321
    ld	$ra,16($sp)
    # Line 312
    move	$v0,$zero
    # Line 321
    ld	$gp,8($sp)
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __viceInit

# Function: SPBuffMakeCurrent
# Declared: Line 324 (Source lines: 326-336)
# Address: 0x0da3a930 - 0x0da3a9bc (Size: 140 bytes, Frame: 48)
.ent SPBuffMakeCurrent
SPBuffMakeCurrent:
    # Line 326
    addiu	$sp,$sp,-48
    lui	$at,0x1
    sd	$a2,8($sp)
    addiu	$at,$at,25692
    sd	$gp,32($sp)
    addu	$gp,$t9,$at
    # Line 328
    # lw $t9, -26716($gp) # &__glMakeCurrentBuffer
    # Line 326
    sd	$a1,16($sp)
    sd	$s3,24($sp)
    # Line 328
    nop
    # Line 326
    sd	$ra,0($sp)
    # Line 328
    jal	__glMakeCurrentBuffer
    # Line 326
    move	$s3,$a0
    # Line 329
    lw	$a3,68($s3)
    la	$a2,sub_0da40000
    ld	$a1,16($sp)
    addiu	$a2,$a2,-22976
    sw	$a2,16($a3)
    lw	$a1,0($a1)
    # Line 333
    ld	$a5,8($sp)
    # Line 336
    ld	$gp,32($sp)
    # Line 333
    li	$a4,0x80fc
    ld	$ra,0($sp)
    # Line 329
    beqz	$a1,.L0da3a9ac
    # Line 333
    addu	$a4,$a4,$a5
    sw	$a1,0($a4)
    # Line 334
    lw	$a3,0($a1)
    sw	$a3,16($s3)
    # Line 336
    ld	$s3,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3a9ac:
    ld	$s3,24($sp)
    ld	$gp,32($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end SPBuffMakeCurrent

# Function: SPBuffLoseCurrent
# Declared: Line 338 (Source lines: 339-351)
# Address: 0x0da3a9c0 - 0x0da3aa2c (Size: 108 bytes, Frame: 32)
.ent SPBuffLoseCurrent
SPBuffLoseCurrent:
    # Line 340
    lw	$v1,68($a0)
    # Line 339
    addiu	$sp,$sp,-32
    # Line 340
    lw	$v0,0($a0)
    # Line 339
    sd	$a1,8($sp)
    lui	$at,0x1
    # Line 340
    sd	$v1,0($sp)
    # Line 339
    addiu	$at,$at,25548
    sd	$gp,16($sp)
    # Line 340
    bnez	$v0,.L0da3a9f4
    # Line 339
    addu	$gp,$t9,$at
    # Line 351
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3a9f4:
    # Line 347
    # lw $t9, -26712($gp) # &__glLoseCurrentBuffer
    sd	$ra,24($sp)
    jal	__glLoseCurrentBuffer
    ld	$a1,8($sp)
    # Line 351
    ld	$gp,16($sp)
    # Line 350
    ld	$v1,8($sp)
    ld	$ra,24($sp)
    li	$v0,0x80fc
    addu	$v0,$v0,$v1
    ld	$v1,0($sp)
    lw	$v0,0($v0)
    # Line 351
    addiu	$sp,$sp,32
    jr	$ra
    # Line 350
    sw	$v0,0($v1)
.end SPBuffLoseCurrent

# Function: viceCopySPBuffer
# Declared: Line 353 (Source lines: 354-540)
# Address: 0x0da3aa30 - 0x0da3b2dc (Size: 2220 bytes, Frame: 192)
.globl viceCopySPBuffer
.ent viceCopySPBuffer
viceCopySPBuffer:
    # Line 364
    lw	$t8,3664($a0)
    # Line 354
    addiu	$sp,$sp,-4288
    sd	$s5,4176($sp)
    # Line 364
    lw	$s5,3704($a0)
    # Line 354
    sd	$s3,4216($sp)
    # Line 367
    lw	$s3,32300($a0)
    # Line 364
    addu	$t8,$t8,$s5
    mtc1	$t8,$f5
    # Line 367
    lw	$t8,8($s3)
    # Line 354
    sd	$s7,4168($sp)
    lui	$s7,0x1
    # Line 367
    mtc1	$t8,$f1
    # Line 364
    cvt.s.w	$f5,$f5
    # Line 367
    lwc1	$f4,372($a0)
    # Line 354
    addiu	$s7,$s7,25436
    # Line 367
    mtc1	$s5,$f2
    sd	$gp,4192($sp)
    # Line 354
    addu	$gp,$t9,$s7
    # Line 364
    lwc1	$f3,_lit_bf800000
    # Line 367
    cvt.s.w	$f1,$f1
    sub.s	$f4,$f5,$f4
    cvt.s.w	$f2,$f2
    add.s	$f4,$f3,$f4
    mul.s	$f1,$f1,$f4
    # Line 354
    sd	$s4,4208($sp)
    # Line 367
    div.s	$f1,$f1,$f2
    # Line 366
    lw	$s4,3660($a0)
    # Line 354
    sd	$s1,4160($sp)
    # Line 370
    lw	$s3,4($s3)
    # Line 366
    mtc1	$s4,$f4
    # Line 370
    lw	$s1,3700($a0)
    mtc1	$s3,$f0
    mtc1	$s1,$f2
    # Line 366
    cvt.s.w	$f4,$f4
    # Line 370
    lwc1	$f6,368($a0)
    cvt.s.w	$f0,$f0
    cvt.s.w	$f2,$f2
    sub.s	$f6,$f6,$f4
    mul.s	$f0,$f0,$f6
    sd	$ra,4264($sp)
    # Line 354
    sd	$s0,4184($sp)
    # Line 370
    div.s	$f0,$f0,$f2
    # Line 364
    lwc1	$f6,192($a1)
    # Line 356
    li	$s0,0x80fc
    # Line 366
    lwc1	$f2,188($a1)
    # Line 354
    sd	$s8,4200($sp)
    # Line 356
    addu	$s0,$s0,$a0
    lw	$s0,0($s0)
    # Line 364
    sub.s	$f5,$f5,$f6
    # Line 375
    sw	$zero,4100($sp)
    # Line 366
    sub.s	$f2,$f2,$f4
    # Line 389
    lw	$a7,40($s0)
    # Line 364
    add.s	$f3,$f3,$f5
    # Line 377
    lw	$v1,3260($a0)
    # Line 366
    trunc.w.s	$f2,$f2
    # Line 383
    li	$a6,0x8000
    sw	$a6,100($s0)
    # Line 364
    trunc.w.s	$f3,$f3
    # Line 382
    li	$a2,1
    sw	$a2,60($s0)
    # Line 366
    mfc1	$v0,$f2
    # Line 384
    li	$a5,48
    sw	$a5,104($s0)
    # Line 367
    trunc.w.s	$f1,$f1
    # Line 364
    mfc1	$s5,$f3
    # Line 387
    lw	$a5,172($a1)
    # Line 388
    lw	$a3,32300($a0)
    # Line 367
    mfc1	$s1,$f1
    # Line 389
    xor	$a4,$s5,$v0
    # Line 370
    trunc.w.s	$f0,$f0
    # Line 389
    lw	$at,8($s0)
    sltiu	$a4,$a4,1
    # Line 354
    move	$s8,$a0
    # Line 388
    lw	$a0,4($a3)
    # Line 389
    xor	$a4,$a4,$s1
    # Line 370
    mfc1	$s3,$f0
    # Line 377
    li	$s7,8
    # Line 387
    sd	$a5,4128($sp)
    # Line 389
    sltiu	$a4,$a4,1
    # Line 386
    lw	$a1,168($a1)
    # Line 389
    xor	$at,$at,$a0
    xor	$a4,$a4,$s3
    # Line 386
    sd	$a1,4152($sp)
    # Line 389
    sltiu	$at,$at,1
    sltu	$a4,$zero,$a4
    lw	$a1,8($a3)
    # Line 377
    xori	$v1,$v1,0x10
    # Line 389
    and	$at,$at,$a4
    addiu	$s4,$s0,44
    sd	$a1,4136($sp)
    # Line 377
    sltiu	$v1,$v1,1
    # Line 388
    sd	$a0,4144($sp)
    # Line 377
    li	$a0,2
    # Line 389
    beqz	$at,.L0da3af00
    # Line 377
    movz	$s7,$a0,$v1
    # Line 395
    # lw $t9, -23244($gp) # &__viceMapSPBufCode
    move	$a0,$a7
    move	$a4,$s4
    move	$a3,$s8
    move	$a2,$zero
    bal __viceMapSPBufCode
    addiu	$a1,$sp,0
    lw	$t8,36($s0)
    li	$t9,4161
    dsll	$t9,$t9,0x14
    addu	$t8,$t8,$t8
    ori	$t9,$t9,0x4105
    addiu	$t8,$t8,62
    multu	$t8,$t9
    # Line 406
    # lw $t9, -22916($gp) # &vice_etc_dramp
    # Line 395
    mfhi	$s1
    # Line 406
    lw	$a0,40($s0)
    # Line 395
    subu	$t8,$t8,$s1
    sd	$s6,4272($sp)
    srl	$t8,$t8,0x1
    sd	$s2,4280($sp)
    addu	$s1,$s1,$t8
    # Line 406
    jal	vice_etc_dramp
    # Line 395
    srl	$s1,$s1,0x5
    # Line 407
    lui	$s6,0x80
    sw	$s6,0($v0)
    # Line 409
    lwc1	$f12,30752($s8)
    lwc1	$f13,30756($s8)
    trunc.w.s	$f12,$f12
    trunc.w.s	$f13,$f13
    mfc1	$a0,$f12
    mfc1	$v1,$f13
    sll	$a0,$a0,0x10
    dsll32	$v1,$v1,0x10
    dsra32	$v1,$v1,0x10
    or	$v1,$v1,$a0
    sw	$v1,16($v0)
    # Line 411
    lwc1	$f10,30760($s8)
    lwc1	$f11,30792($s8)
    trunc.w.s	$f10,$f10
    trunc.w.s	$f11,$f11
    mfc1	$v1,$f10
    mfc1	$at,$f11
    sll	$v1,$v1,0x10
    dsll32	$at,$at,0x10
    dsra32	$at,$at,0x10
    or	$at,$at,$v1
    sw	$at,20($v0)
    # Line 414
    lwc1	$f8,30752($s8)
    lwc1	$f9,30756($s8)
    trunc.w.s	$f8,$f8
    trunc.w.s	$f9,$f9
    mfc1	$at,$f8
    mfc1	$ra,$f9
    sll	$at,$at,0x10
    dsll32	$ra,$ra,0x10
    dsra32	$ra,$ra,0x10
    or	$ra,$ra,$at
    sw	$ra,24($v0)
    # Line 416
    lwc1	$f6,30760($s8)
    lwc1	$f7,30792($s8)
    trunc.w.s	$f6,$f6
    trunc.w.s	$f7,$f7
    mfc1	$at,$f6
    # Line 406
    move	$s2,$v0
    # Line 416
    mfc1	$t9,$f7
    li	$s7,31
    sll	$at,$at,0x10
    slti	$ra,$s1,2
    dsll32	$t9,$t9,0x10
    lui	$s3,0x9f
    dsra32	$t9,$t9,0x10
    or	$t9,$t9,$at
    bnez	$ra,.L0da3ade4
    sw	$t9,28($v0)
    addiu	$v0,$s1,-1
    move	$s1,$zero
    blez	$v0,.L0da3b2d4
    sll	$s5,$v0,0x5
    sd	$v0,4120($sp)
    subu	$s5,$s5,$v0
.L0da3acf0:
    # Line 420
    sw	$s3,4($s2)
    # Line 421
    lw	$t8,0($s2)
    # Line 422
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    # Line 421
    subu	$t8,$s3,$t8
    sw	$t8,8($s2)
    # Line 422
    li	$a4,31
    move	$a3,$s1
    lw	$a2,28($s0)
    move	$a1,$zero
    jal	vice_dmbuf_settlb
    lw	$a0,40($s0)
    # Line 426
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    li	$a4,31
    move	$a3,$s1
    lw	$a2,28($s0)
    li	$a1,31
    jal	vice_dmbuf_settlb
    lw	$a0,40($s0)
    # Line 430
    # lw $t9, -22908($gp) # &vice_put
    move	$a1,$s4
    jal	vice_put
    lw	$a0,40($s0)
    # Line 419
    addiu	$s1,$s1,31
    bne	$s1,$s5,.L0da3acf0
    ld	$v0,4120($sp)
.L0da3ad54:
    # Line 433
    li	$a6,0x8208
    lw	$t9,4($s0)
    dsll	$a6,$a6,0x10
    negu	$a5,$t9
    srl	$a3,$t9,0x1f
    ori	$a6,$a6,0x2083
    movz	$a5,$t9,$a3
    multu	$a5,$a6
    mfhi	$a4
    sra	$a4,$a4,0x14
    lui	$a2,0x1f
    negu	$a1,$a4
    ori	$a2,$a2,0x8000
    movz	$a1,$a4,$a3
    mult	$a1,$a2
    # Line 437
    li	$a0,0x8421
    lw	$s3,36($s0)
    dsll	$a0,$a0,0x11
    ori	$a0,$a0,0x1085
    # Line 433
    mflo	$ra
    nop
    nop
    # Line 437
    multu	$s3,$a0
    mfhi	$at
    subu	$v1,$s3,$at
    srl	$v1,$v1,0x1
    addu	$at,$at,$v1
    srl	$at,$at,0x4
    mult	$at,$s7
    # Line 433
    subu	$t9,$t9,$ra
    # Line 435
    sw	$t9,4108($sp)
    # Line 433
    sw	$t9,4104($sp)
    # Line 437
    mflo	$t8
    subu	$s3,$s3,$t8
    # Line 439
    b	.L0da3adec
    sw	$s3,4112($sp)
.L0da3ade4:
    lw	$s3,4116($sp)
    move	$v0,$zero
.L0da3adec:
    lw	$t8,32300($s8)
    lw	$t9,12($s0)
    lw	$t8,8($t8)
    slt	$t8,$t8,$t9
    lw	$a2,28($s0)
    sll	$s1,$v0,0x5
    lw	$a7,40($s0)
    bnez	$t8,.L0da3ae64
    subu	$s1,$s1,$v0
    # Line 445
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a0,$a7
    move	$a1,$zero
    move	$a3,$s1
    jal	vice_dmbuf_settlb
    move	$a4,$s3
    # Line 447
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a4,$s3
    move	$a3,$s1
    lw	$a2,28($s0)
    move	$a1,$s3
    jal	vice_dmbuf_settlb
    lw	$a0,40($s0)
    # Line 450
    slt	$at,$s7,$s3
    # Line 452
    lw	$ra,4104($sp)
    # Line 450
    movz	$s7,$s3,$at
    # Line 452
    sw	$ra,8($s2)
    # Line 450
    sll	$t9,$s7,0x10
    addu	$t9,$s6,$t9
    # Line 452
    b	.L0da3aeb8
    # Line 450
    sw	$t9,4($s2)
.L0da3ae64:
    # Line 454
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a3,$s1
    lw	$s5,4112($sp)
    move	$a1,$zero
    move	$a0,$a7
    jal	vice_dmbuf_settlb
    move	$a4,$s5
    # Line 456
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    move	$a4,$s5
    move	$a3,$s1
    lw	$a2,28($s0)
    move	$a1,$s3
    jal	vice_dmbuf_settlb
    lw	$a0,40($s0)
    # Line 459
    slt	$a0,$s7,$s5
    # Line 461
    lw	$v1,4108($sp)
    # Line 459
    movz	$s7,$s5,$a0
    # Line 461
    sw	$v1,8($s2)
    # Line 459
    sll	$v0,$s7,0x10
    addu	$v0,$s6,$v0
    sw	$v0,4($s2)
.L0da3aeb8:
    # Line 463
    # lw $t9, -22908($gp) # &vice_put
    move	$a1,$s4
    jal	vice_put
    lw	$a0,40($s0)
.L0da3aec8:
    ld	$s2,4280($sp)
.L0da3aecc:
    ld	$s6,4272($sp)
    # Line 540
    ld	$gp,4192($sp)
    ld	$s0,4184($sp)
    ld	$s1,4160($sp)
    ld	$s3,4216($sp)
    ld	$s4,4208($sp)
    ld	$ra,4264($sp)
    ld	$s5,4176($sp)
    li	$v0,1
    ld	$s7,4168($sp)
    ld	$s8,4200($sp)
    jr	$ra
    addiu	$sp,$sp,4288
.L0da3af00:
    # Line 470
    # lw $t9, -23244($gp) # &__viceMapSPBufCode
    move	$a0,$a7
    move	$a4,$s4
    move	$a3,$s8
    addiu	$a1,$sp,0
    bal __viceMapSPBufCode
    sd	$v0,4256($sp)
    # Line 472
    # lw $t9, -22916($gp) # &vice_etc_dramp
    lw	$a0,40($s0)
    jal	vice_etc_dramp
    sd	$s2,4280($sp)
    # Line 473
    lwc1	$f21,30752($s8)
    lwc1	$f23,30756($s8)
    trunc.w.s	$f21,$f21
    trunc.w.s	$f23,$f23
    mfc1	$t2,$f21
    mfc1	$t1,$f23
    sll	$t2,$t2,0x10
    dsll32	$t1,$t1,0x10
    dsra32	$t1,$t1,0x10
    or	$t1,$t1,$t2
    sw	$t1,16($v0)
    # Line 475
    lwc1	$f18,30760($s8)
    lwc1	$f19,30792($s8)
    trunc.w.s	$f18,$f18
    trunc.w.s	$f19,$f19
    mfc1	$t1,$f18
    mfc1	$t0,$f19
    sll	$t1,$t1,0x10
    dsll32	$t0,$t0,0x10
    dsra32	$t0,$t0,0x10
    or	$t0,$t0,$t1
    sw	$t0,20($v0)
    # Line 478
    lwc1	$f16,30752($s8)
    lwc1	$f17,30756($s8)
    trunc.w.s	$f16,$f16
    trunc.w.s	$f17,$f17
    mfc1	$t0,$f16
    mfc1	$a7,$f17
    sll	$t0,$t0,0x10
    dsll32	$a7,$a7,0x10
    dsra32	$a7,$a7,0x10
    or	$a7,$a7,$t0
    sw	$a7,24($v0)
    # Line 480
    lwc1	$f14,30760($s8)
    lwc1	$f15,30792($s8)
    trunc.w.s	$f14,$f14
    trunc.w.s	$f15,$f15
    mfc1	$a7,$f14
    mfc1	$a6,$f15
    sll	$a7,$a7,0x10
    dsll32	$a6,$a6,0x10
    dsra32	$a6,$a6,0x10
    or	$a6,$a6,$a7
    sw	$a6,28($v0)
    # Line 482
    lw	$a5,32300($s8)
    # Line 487
    lw	$a3,4($a5)
    # Line 491
    ld	$a4,4144($sp)
    ld	$a1,4152($sp)
    # Line 489
    mult	$a3,$s7
    # Line 495
    ld	$t9,4152($sp)
    # Line 491
    slt	$a1,$a1,$a4
    # Line 482
    ld	$a4,4136($sp)
    ld	$t0,4128($sp)
    # Line 472
    move	$s2,$v0
    # Line 487
    lw	$a2,8($s0)
    # Line 495
    addu	$t9,$s3,$t9
    # Line 482
    slt	$a7,$a4,$t0
    lw	$a5,8($a5)
    # Line 489
    mflo	$a0
    nop
    nop
    # Line 491
    mult	$a2,$s7
    # Line 482
    addu	$a6,$s1,$t0
    xori	$a7,$a7,0x1
    slt	$a5,$a5,$a6
    move	$a6,$a4
    sd	$s6,4272($sp)
    # Line 487
    subu	$a4,$a4,$s1
    # Line 482
    movn	$a6,$t0,$a7
    # Line 511
    lui	$t0,0x1e
    movz	$a4,$a6,$a5
    sd	$a4,4248($sp)
    # Line 493
    ld	$t2,4152($sp)
    # Line 511
    mtc1	$t0,$f31
    # Line 487
    slt	$a2,$a2,$a3
    # Line 513
    ld	$a7,4248($sp)
    # Line 491
    mflo	$a3
    beqz	$a1,.L0da3b078
    movz	$a0,$a3,$a2
    # Line 493
    mult	$s7,$t2
    mflo	$a2
    b	.L0da3b08c
    sw	$a2,8($v0)
.L0da3b078:
    # Line 495
    ld	$t3,4144($sp)
    mult	$t3,$s7
    mflo	$a2
    nop
    sw	$a2,8($v0)
.L0da3b08c:
    lw	$t8,32300($s8)
    lw	$t8,4($t8)
    slt	$t8,$t8,$t9
    # Line 497
    ld	$t9,4144($sp)
    # Line 516
    ld	$t2,4248($sp)
    # Line 495
    beqz	$t8,.L0da3b0b8
    # Line 497
    subu	$t9,$t9,$s3
    mult	$s7,$t9
    mflo	$a2
    nop
    sw	$a2,8($s2)
.L0da3b0b8:
    # Line 505
    ld	$a4,4248($sp)
    # Line 503
    mtc1	$a0,$f4
    lui	$a5,0x1f
    mtc1	$a5,$f27
    cvt.d.w	$f4,$f4
    cvt.d.w	$f27,$f27
    div.d	$f27,$f27,$f4
    trunc.w.d	$f27,$f27
    mfc1	$v1,$f27
    # Line 505
    addu	$a4,$v1,$a4
    addiu	$a4,$a4,-1
    mtc1	$a4,$f25
    cvt.d.w	$f27,$f27
    cvt.d.w	$f25,$f25
    div.d	$f25,$f25,$f27
    # Line 499
    lw	$a3,8($s0)
    mult	$a3,$s7
    mflo	$a1
    subu	$a1,$a1,$a2
    sw	$a1,12($s2)
    # Line 500
    lw	$v0,32300($s8)
    lw	$v0,4($v0)
    mult	$v0,$s7
    # Line 505
    trunc.w.d	$f25,$f25
    mfc1	$v0,$f25
    # Line 500
    mflo	$at
    # Line 505
    slti	$ra,$v0,2
    # Line 503
    teq	$a0,$zero,0x7
    # Line 500
    subu	$at,$at,$a2
    sw	$at,32($s2)
    # Line 503
    move	$a1,$v1
    # Line 505
    bnez	$ra,.L0da3b178
    teq	$v1,$zero,0x7
    # Line 511
    cvt.d.w	$f31,$f31
    div.d	$f31,$f31,$f4
    trunc.w.d	$f31,$f31
    mfc1	$a6,$f31
    # Line 513
    addu	$a7,$a6,$a7
    addiu	$a7,$a7,-1
    mtc1	$a7,$f29
    cvt.d.w	$f31,$f31
    cvt.d.w	$f29,$f29
    div.d	$f29,$f29,$f31
    trunc.w.d	$f29,$f29
    # Line 511
    teq	$a0,$zero,0x7
    move	$a1,$a6
    # Line 513
    teq	$a6,$zero,0x7
    mfc1	$v0,$f29
.L0da3b178:
    sd	$s8,4232($sp)
    # Line 516
    move	$s6,$a1
    sd	$s3,4240($sp)
    slt	$t1,$t2,$a1
    blez	$v0,.L0da3aec8
    movn	$s6,$t2,$t1
    li	$s8,1
    lui	$s3,0x9f
    addiu	$t3,$v0,1
    sd	$t3,4224($sp)
.L0da3b1a0:
    # Line 519
    lw	$a6,8($s0)
    mult	$a6,$s5
    ld	$a4,4256($sp)
    mflo	$a5
    nop
    addu	$a4,$a4,$a5
    mult	$s7,$a4
    # Line 520
    li	$a3,0xffff
    # Line 519
    mflo	$a5
    # Line 520
    addu	$a3,$a5,$a3
    slt	$a4,$a5,$zero
    movz	$a3,$a5,$a4
    sra	$a3,$a3,0x10
    sll	$a6,$a3,0x10
    subu	$a5,$a5,$a6
    addu	$a5,$s3,$a5
    sw	$a5,0($s2)
    lw	$a4,36($s0)
    # Line 522
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    # Line 520
    subu	$a4,$a4,$a3
    # Line 522
    li	$ra,31
    # Line 520
    sltiu	$t8,$a4,32
    # Line 522
    lw	$a2,28($s0)
    movz	$a4,$ra,$t8
    li	$a1,31
    jal	vice_dmbuf_settlb
    lw	$a0,40($s0)
    # Line 526
    ld	$a6,4232($sp)
    lw	$a6,32300($a6)
    lw	$a6,4($a6)
    mult	$a6,$s1
    ld	$a4,4240($sp)
    mflo	$a5
    nop
    addu	$a4,$a4,$a5
    mult	$s7,$a4
    # Line 527
    li	$a3,0xffff
    # Line 526
    mflo	$a6
    # Line 527
    addu	$a3,$a6,$a3
    slt	$a4,$a6,$zero
    movz	$a3,$a6,$a4
    sra	$a3,$a3,0x10
    sll	$a7,$a3,0x10
    # Line 529
    # lw $t9, -22920($gp) # &vice_dmbuf_settlb
    # Line 527
    lui	$a5,0x80
    subu	$a6,$a6,$a7
    addu	$a5,$a5,$a6
    sw	$a5,4($s2)
    lw	$a4,36($s0)
    # Line 529
    move	$a1,$zero
    li	$t0,31
    lw	$a2,28($s0)
    # Line 527
    subu	$a4,$a4,$a3
    # Line 529
    lw	$a0,40($s0)
    # Line 527
    sltiu	$a7,$a4,32
    # Line 529
    jal	vice_dmbuf_settlb
    movz	$a4,$t0,$a7
    # Line 534
    # lw $t9, -22908($gp) # &vice_put
    # Line 533
    sw	$s6,36($s2)
    # Line 534
    move	$a1,$s4
    jal	vice_put
    lw	$a0,40($s0)
    # Line 536
    mult	$s8,$s6
    ld	$t2,4248($sp)
    addu	$s1,$s1,$s6
    mflo	$t3
    # Line 518
    addiu	$s8,$s8,1
    ld	$t0,4224($sp)
    # Line 536
    subu	$t2,$t2,$t3
    # Line 537
    move	$a7,$s6
    # Line 536
    slt	$t1,$s6,$t2
    # Line 535
    addu	$s5,$s5,$s6
    movz	$a7,$t2,$t1
    # Line 518
    bne	$s8,$t0,.L0da3b1a0
    # Line 537
    move	$s6,$a7
    b	.L0da3aecc
    ld	$s2,4280($sp)
.L0da3b2d4:
    b	.L0da3ad54
    # Line 419
    move	$v0,$zero
.end viceCopySPBuffer

# Function: ClearSPBuff
# Declared: Line 543 (Source lines: 545-574)
# Address: 0x0da3b2e0 - 0x0da3b404 (Size: 292 bytes, Frame: 0)
.ent ClearSPBuff
ClearSPBuff:
    # Line 545
    lw	$a4,0($a0)
    # Line 553
    li	$at,0x80c0
    addu	$at,$at,$a4
    lw	$at,0($at)
    beqz	$at,.L0da3b3fc
    nop
    lw	$v0,29700($a4)
    lw	$v1,29708($a4)
    beq	$v0,$v1,.L0da3b3fc
    nop
    lw	$a1,29704($a4)
    lw	$a2,29712($a4)
    beq	$a1,$a2,.L0da3b3fc
    nop
    # Line 562
    lwc1	$f4,1872($a4)
    lwc1	$f5,30792($a4)
    # Line 561
    lwc1	$f2,1868($a4)
    lwc1	$f3,30760($a4)
    # Line 560
    lwc1	$f1,1864($a4)
    # Line 562
    mul.s	$f4,$f4,$f5
    # Line 560
    lwc1	$f5,30756($a4)
    # Line 559
    lwc1	$f0,1860($a4)
    # Line 562
    trunc.l.s	$f4,$f4
    # Line 561
    mul.s	$f2,$f2,$f3
    # Line 559
    lwc1	$f3,30752($a4)
    # Line 560
    mul.s	$f1,$f1,$f5
    # Line 562
    dmfc1	$t1,$f4
    # Line 561
    trunc.l.s	$f2,$f2
    # Line 560
    trunc.l.s	$f1,$f1
    # Line 559
    mul.s	$f0,$f0,$f3
    # Line 561
    dmfc1	$t0,$f2
    # Line 567
    lw	$a2,8($a0)
    # Line 562
    sll	$t1,$t1,0x0
    # Line 560
    dmfc1	$t3,$f1
    # Line 559
    trunc.l.s	$f0,$f0
    # Line 560
    sll	$t3,$t3,0x0
    # Line 559
    dmfc1	$t2,$f0
    # Line 567
    lw	$a3,16($a0)
    blez	$a2,.L0da3b3fc
    sll	$a5,$t0,0x10
    move	$a7,$zero
    sll	$a6,$t2,0x10
    or	$a6,$t3,$a6
    or	$a5,$t1,$a5
    lw	$a4,4($a0)
    andi	$a5,$a5,0xffff
    andi	$a6,$a6,0xffff
    nop
.L0da3b3a0:
    blez	$a4,.L0da3b3ec
    nop
    move	$a2,$zero
.L0da3b3ac:
    # Line 572
    sw	$a5,4($a3)
    # Line 571
    sw	$a6,0($a3)
    # Line 570
    lw	$a4,4($a0)
    addiu	$a2,$a2,1
    slt	$t0,$a2,$a4
    # Line 572
    addiu	$a3,$a3,8
    # Line 570
    beqz	$t0,.L0da3b3e8
    nop
    # Line 572
    sw	$a5,4($a3)
    # Line 571
    sw	$a6,0($a3)
    # Line 570
    lw	$a4,4($a0)
    addiu	$a2,$a2,1
    slt	$t1,$a2,$a4
    bnez	$t1,.L0da3b3ac
    # Line 572
    addiu	$a3,$a3,8
.L0da3b3e8:
    # Line 570
    lw	$a2,8($a0)
.L0da3b3ec:
    # Line 569
    addiu	$a7,$a7,1
    slt	$t2,$a7,$a2
    bnez	$t2,.L0da3b3a0
    nop
.L0da3b3fc:
    # Line 574
    jr	$ra
    nop
.end ClearSPBuff

# Function: ClearSPBuffRed
# Declared: Line 576 (Source lines: 578-598)
# Address: 0x0da3b410 - 0x0da3b514 (Size: 260 bytes, Frame: 0)
.ent ClearSPBuffRed
ClearSPBuffRed:
    # Line 578
    lw	$a4,0($a0)
    # Line 585
    li	$at,0x80c0
    addu	$at,$at,$a4
    lw	$at,0($at)
    beqz	$at,.L0da3b50c
    nop
    lw	$v0,29700($a4)
    lw	$v1,29708($a4)
    beq	$v0,$v1,.L0da3b50c
    nop
    lw	$a1,29704($a4)
    lw	$a2,29712($a4)
    beq	$a1,$a2,.L0da3b50c
    nop
    # Line 591
    lwc1	$f0,1860($a4)
    lwc1	$f1,30752($a4)
    mul.s	$f0,$f0,$f1
    # Line 592
    lw	$a2,8($a0)
    # Line 591
    trunc.l.s	$f0,$f0
    dmfc1	$a5,$f0
    # Line 592
    lw	$a3,16($a0)
    blez	$a2,.L0da3b50c
    # Line 591
    sll	$a5,$a5,0x0
    # Line 592
    lw	$a4,4($a0)
    move	$a6,$zero
    nop
    nop
    nop
.L0da3b480:
    blez	$a4,.L0da3b4fc
    nop
    move	$a2,$zero
.L0da3b48c:
    # Line 596
    sh	$a5,0($a3)
    # Line 595
    lw	$a4,4($a0)
    addiu	$a2,$a2,1
    slt	$a7,$a2,$a4
    # Line 596
    addiu	$a3,$a3,2
    # Line 595
    beqz	$a7,.L0da3b4f8
    nop
    # Line 596
    sh	$a5,0($a3)
    # Line 595
    lw	$a4,4($a0)
    addiu	$a2,$a2,1
    slt	$t0,$a2,$a4
    # Line 596
    addiu	$a3,$a3,2
    # Line 595
    beqz	$t0,.L0da3b4f8
    nop
    # Line 596
    sh	$a5,0($a3)
    # Line 595
    lw	$a4,4($a0)
    addiu	$a2,$a2,1
    slt	$t1,$a2,$a4
    # Line 596
    addiu	$a3,$a3,2
    # Line 595
    beqz	$t1,.L0da3b4f8
    nop
    # Line 596
    sh	$a5,0($a3)
    # Line 595
    lw	$a4,4($a0)
    addiu	$a2,$a2,1
    slt	$t2,$a2,$a4
    bnez	$t2,.L0da3b48c
    # Line 596
    addiu	$a3,$a3,2
.L0da3b4f8:
    # Line 595
    lw	$a2,8($a0)
.L0da3b4fc:
    # Line 594
    addiu	$a6,$a6,1
    slt	$t3,$a6,$a2
    bnez	$t3,.L0da3b480
    nop
.L0da3b50c:
    # Line 598
    jr	$ra
    nop
.end ClearSPBuffRed

# Function: __glCrmAllocSPBuff
# Declared: Line 600 (Source lines: 601-618)
# Address: 0x0da3b520 - 0x0da3b5b8 (Size: 152 bytes, Frame: 48)
.ent __glCrmAllocSPBuff
__glCrmAllocSPBuff:
    # Line 601
    addiu	$sp,$sp,-48
    sd	$ra,24($sp)
    sd	$s0,0($sp)
    # Line 602
    lw	$s0,0($a0)
    sd	$gp,16($sp)
    # Line 604
    li	$at,0x80fc
    # Line 601
    sd	$s8,8($sp)
    # Line 604
    addu	$at,$at,$s0
    # Line 601
    move	$a3,$a2
    # Line 604
    lw	$at,0($at)
    # Line 601
    move	$a5,$a1
    lui	$v0,0x1
    # Line 608
    sw	$a2,8($a0)
    # Line 601
    move	$s8,$a0
    addiu	$v0,$v0,22636
    # Line 607
    sw	$a1,4($a0)
    # Line 601
    addu	$gp,$t9,$v0
    # Line 608
    beqz	$at,.L0da3b598
    # Line 607
    sw	$a1,28($a0)
.L0da3b56c:
    # Line 613
    # lw $t9, -23240($gp) # &__viceAllocSPbuf
    move	$a0,$s0
    move	$a1,$s8
    bal __viceAllocSPbuf
    move	$a2,$a5
    ld	$ra,24($sp)
    ld	$s0,0($sp)
    ld	$s8,8($sp)
    # Line 618
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0da3b598:
    # Line 610
    # lw $t9, -23236($gp) # &__viceInit
    sd	$a2,32($sp)
    sd	$a1,40($sp)
    bal __viceInit
    move	$a0,$s0
    ld	$a5,40($sp)
    b	.L0da3b56c
    ld	$a3,32($sp)
.end __glCrmAllocSPBuff

# Function: __glInitSPBuff
# Declared: Line 620 (Source lines: 622-667)
# Address: 0x0da3b5c0 - 0x0da3b734 (Size: 372 bytes, Frame: 32)
.globl __glInitSPBuff
.ent __glInitSPBuff
__glInitSPBuff:
    # Line 622
    lui	$at,0x1
    addiu	$sp,$sp,-32
    addiu	$at,$at,22476
    sd	$gp,0($sp)
    addu	$gp,$t9,$at
    # Line 626
    # lw $t9, -26720($gp) # &__glInitBuffer
    # Line 622
    sd	$s1,16($sp)
    # Line 626
    move	$a1,$a2
    # Line 622
    move	$s1,$a2
    sd	$s0,24($sp)
    # Line 626
    nop
    # Line 622
    sd	$ra,8($sp)
    # Line 626
    jal	__glInitBuffer
    # Line 622
    move	$s0,$a0
    # Line 664
    la	$t0,__glCrmFetchSPBuffRed
    # Line 635
    sw	$zero,64($s0)
    # Line 632
    la	$a0,PickRGBA
    # Line 631
    la	$a1,__glReadSpan
    sw	$a1,176($s0)
    # Line 632
    sw	$a0,160($s0)
    # Line 628
    la	$v1,sub_0da40000
    la	$a3,sub_0da40000
    # Line 629
    la	$a2,sub_0da40000
    # Line 628
    addiu	$a3,$a3,-22224
    sw	$a3,44($s0)
    # Line 629
    addiu	$a2,$a2,-22080
    sw	$a2,48($s0)
    # Line 628
    addiu	$v1,$v1,-19168
    # Line 633
    sw	$v1,52($s0)
    # Line 634
    sw	$v1,56($s0)
    # Line 635
    lw	$v0,3256($s1)
    # Line 663
    la	$a7,__glCrmReadSPBuffRed
    # Line 635
    li	$a1,16
    # Line 641
    lwc1	$f0,_lit_3f800000
    # Line 635
    beq	$v0,$a1,.L0da3b718
    # Line 665
    la	$t1,__glCrmDumpSPBuffSpanRed
    # Line 639
    lwc1	$f4,88($s0)
.L0da3b654:
    # Line 641
    div.s	$f0,$f0,$f4
    swc1	$f0,136($s0)
    lw	$a4,3260($s1)
    beq	$a4,$a1,.L0da3b69c
    # Line 667
    ld	$s1,16($sp)
    # Line 662
    la	$a6,StoreSPBuffRed
    # Line 661
    la	$a5,sub_0da40000
    # Line 667
    ld	$gp,0($sp)
    # Line 665
    sw	$t1,184($s0)
    # Line 664
    sw	$t0,168($s0)
    # Line 663
    sw	$a7,172($s0)
    # Line 667
    ld	$ra,8($sp)
    # Line 662
    sw	$a6,164($s0)
    # Line 661
    addiu	$a5,$a5,-19440
    sw	$a5,216($s0)
    # Line 667
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3b69c:
    # Line 647
    # lw $t9, -31400($gp) # &__glCrmFetchSPBuffColor
    # Line 646
    la	$t8,__glCrmReadSPBuffColor
    # Line 645
    la	$s1,__glCrmDumpSPBuffSpan
    # Line 644
    la	$t3,StoreSPBuffRGBA
    # Line 656
    lwc1	$f2,_lit_38000100
    # Line 650
    lwc1	$f1,_lit_46fffe00
    # Line 643
    la	$t2,sub_0da40000
    # Line 667
    ld	$gp,0($sp)
    # Line 645
    sw	$s1,184($s0)
    # Line 667
    ld	$s1,16($sp)
    # Line 647
    sw	$t9,168($s0)
    # Line 646
    sw	$t8,172($s0)
    # Line 644
    sw	$t3,164($s0)
    # Line 658
    swc1	$f2,148($s0)
    # Line 657
    swc1	$f2,144($s0)
    # Line 656
    swc1	$f2,140($s0)
    # Line 652
    swc1	$f1,128($s0)
    # Line 651
    swc1	$f1,96($s0)
    # Line 648
    li	$ra,32767
    # Line 655
    sw	$ra,132($s0)
    # Line 654
    sw	$ra,108($s0)
    # Line 653
    sw	$ra,104($s0)
    # Line 649
    sw	$ra,80($s0)
    # Line 648
    sw	$ra,76($s0)
    # Line 667
    ld	$ra,8($sp)
    # Line 650
    swc1	$f1,92($s0)
    # Line 643
    addiu	$t2,$t2,-19744
    sw	$t2,216($s0)
    # Line 667
    ld	$s0,24($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0da3b718:
    # Line 637
    li	$at,32767
    # Line 639
    sw	$at,100($s0)
    # Line 638
    lwc1	$f4,_lit_46fffe00
    lwc1	$f3,_lit_46fffe00
    # Line 637
    sw	$at,72($s0)
    # Line 639
    b	.L0da3b654
    # Line 638
    swc1	$f3,88($s0)
.end __glInitSPBuff

.rdata
_lit_38000100:
    .word 0x38000100
_lit_3f800000:
    .word 0x3f800000
_lit_46fffe00:
    .word 0x46fffe00
_lit_bf800000:
    .word 0xbf800000

