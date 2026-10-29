# Source: ../soft/so_convolve.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_convolve.c
# Total Functions: 19

.text

# Function: __glCheckConvolutionFilterArgs
# Declared: Line 21 (Source lines: 25-181)
# Address: 0x0d9cf5f0 - 0x0d9cfe28 (Size: 2104 bytes, Frame: 16)
.globl __glCheckConvolutionFilterArgs
.ent __glCheckConvolutionFilterArgs
__glCheckConvolutionFilterArgs:
    # Line 25
    addiu	$sp,$sp,-16
    lui	$at,0x8
    sd	$ra,8($sp)
    addiu	$at,$at,6044
    sd	$gp,0($sp)
    # Line 26
    bltz	$a2,.L0d9cfba4
    # Line 25
    addu	$gp,$t9,$at
    # Line 26
    bltz	$a3,.L0d9cfba4
    # Line 30
    sltiu	$v0,$a4,6408
    bnez	$v0,.L0d9cf660
    sltiu	$t1,$a4,6405
    sltiu	$v0,$a4,6409
    bnez	$v0,.L0d9cf69c
    li	$v0,0x8000
    sltu	$v1,$a4,$v0
    bnez	$v1,.L0d9cf964
    sltiu	$t2,$a4,6410
    sltu	$a7,$v0,$a4
    beqz	$a7,.L0d9cf69c
    li	$v0,0x80e1
    sltu	$t0,$a4,$v0
    bnez	$t0,.L0d9cfbf0
    li	$t2,0x80e0
    sltu	$t1,$v0,$a4
    beqz	$t1,.L0d9cf69c
    nop
    b	.L0d9cf928
    # Line 44
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cf660:
    # Line 30
    bnez	$t1,.L0d9cf68c
    sltiu	$t8,$a4,6404
    sltiu	$t2,$a4,6406
    bnez	$t2,.L0d9cf69c
    sltiu	$t3,$a4,6407
    bnez	$t3,.L0d9cfae0
    li	$t0,6406
    bnez	$v0,.L0d9cf69c
    nop
    b	.L0d9cf928
    # Line 44
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cf68c:
    # Line 30
    bnez	$t8,.L0d9cf920
    li	$a7,6403
    beqz	$t1,.L0d9cf928
    # Line 44
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cf69c:
    # Line 48
    lw	$v0,0($a5)
    li	$t1,0x8048
    sltu	$t9,$v0,$t1
    bnez	$t9,.L0d9cf714
    sltu	$ra,$t1,$v0
    beqz	$ra,.L0d9cf754
    # Line 70
    li	$a7,6410
    # Line 48
    li	$t1,0x8052
    sltu	$at,$v0,$t1
    bnez	$at,.L0d9cf980
    sltu	$v1,$t1,$v0
    beqz	$v1,.L0d9cf9f8
    # Line 88
    li	$t3,6407
    # Line 48
    li	$t1,0x8057
    sltu	$a7,$v0,$t1
    bnez	$a7,.L0d9cfbc4
    sltu	$t0,$t1,$v0
    beqz	$t0,.L0d9cf95c
    # Line 98
    li	$t1,6408
    # Line 48
    li	$t1,0x805a
    sltu	$t2,$v0,$t1
    bnez	$t2,.L0d9cfdc4
    sltu	$t3,$t1,$v0
    beqz	$t3,.L0d9cf95c
    # Line 98
    li	$t1,6408
    # Line 48
    li	$t8,0x805b
    beq	$v0,$t8,.L0d9cf95c
    # Line 98
    li	$t1,6408
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cf714:
    # Line 48
    li	$t1,0x803e
    sltu	$t9,$v0,$t1
    bnez	$t9,.L0d9cf73c
    sltiu	$at,$v0,6410
    sltu	$ra,$t1,$v0
    bnez	$ra,.L0d9cf9a4
    li	$t1,0x8043
    li	$t1,6406
.L0d9cf734:
    b	.L0d9cf758
    # Line 54
    sw	$t1,0($a5)
.L0d9cf73c:
    # Line 48
    bnez	$at,.L0d9cf944
    sltiu	$t1,$v0,6408
    sltiu	$v1,$v0,6411
    beqz	$v1,.L0d9cfaf0
    li	$t1,0x803c
    # Line 70
    li	$a7,6410
.L0d9cf754:
    sw	$a7,0($a5)
.L0d9cf758:
    # Line 105
    li	$v0,0x8034
    sltu	$t0,$a6,$v0
    bnez	$t0,.L0d9cf7b4
    sltiu	$at,$a6,5124
    sltu	$t1,$v0,$a6
    beqz	$t1,.L0d9cf838
    # Line 135
    li	$t2,6408
    # Line 105
    li	$v0,0x8364
    sltu	$t2,$a6,$v0
    bnez	$t2,.L0d9cfa00
    sltu	$t3,$v0,$a6
    beqz	$t3,.L0d9cf7e0
    li	$v0,0x8367
    sltu	$t8,$a6,$v0
    bnez	$t8,.L0d9cfc90
    sltu	$t9,$v0,$a6
    beqz	$t9,.L0d9cf838
    # Line 135
    li	$t2,6408
    # Line 105
    li	$ra,0x8368
    beq	$a6,$ra,.L0d9cf838
    # Line 135
    li	$t2,6408
    b	.L0d9cfa5c
    # Line 146
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cf7b4:
    # Line 105
    bnez	$at,.L0d9cf8f8
    sltiu	$v0,$a6,5122
    sltiu	$v0,$a6,5125
    bnez	$v0,.L0d9cf888
    # Line 150
    li	$ra,0x8010
    # Line 105
    li	$v0,0x8032
    sltu	$v1,$a6,$v0
    bnez	$v1,.L0d9cfb4c
    sltu	$a5,$v0,$a6
    bnez	$a5,.L0d9cfcc4
    li	$ra,0x8033
.L0d9cf7e0:
    # Line 118
    li	$a6,6407
.L0d9cf7e4:
    beq	$a4,$a6,.L0d9cf888
    # Line 150
    li	$ra,0x8010
    # Line 118
    li	$a7,0x80e0
    beq	$a4,$a7,.L0d9cf888
    # Line 150
    li	$ra,0x8010
    # Line 123
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 124
    move	$v0,$zero
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cf818:
    # Line 105
    li	$v0,0x8036
    sltu	$t0,$a6,$v0
    bnez	$t0,.L0d9cfcb4
    li	$t9,0x8035
    sltu	$t1,$v0,$a6
    bnez	$t1,.L0d9cfa5c
    # Line 146
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 135
    li	$t2,6408
.L0d9cf838:
    beq	$a4,$t2,.L0d9cf888
    # Line 150
    li	$ra,0x8010
    # Line 135
    li	$t3,0x8000
    beq	$a4,$t3,.L0d9cf888
    # Line 150
    li	$ra,0x8010
    # Line 135
    li	$t8,0x80e1
    beq	$a4,$t8,.L0d9cf888
    # Line 150
    li	$ra,0x8010
    # Line 141
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,8($sp)
    # Line 142
    move	$v0,$zero
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cf878:
    # Line 105
    bnez	$t9,.L0d9cfa4c
    nop
    beqz	$v0,.L0d9cfa58
    # Line 150
    li	$ra,0x8010
.L0d9cf888:
    beq	$a1,$ra,.L0d9cfa28
    li	$at,0x8011
    beq	$a1,$at,.L0d9cfa78
    li	$v0,0x8012
    beq	$a1,$v0,.L0d9cf8bc
    # Line 177
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 178
    move	$v0,$zero
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cf8bc:
    # Line 168
    lw	$v1,1008($a0)
    slt	$v1,$v1,$a2
    bnez	$v1,.L0d9cfab4
    # Line 172
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 168
    lw	$a1,1012($a0)
    slt	$a1,$a1,$a3
    bnez	$a1,.L0d9cfab0
.L0d9cf8d8:
    ld	$ra,8($sp)
.L0d9cf8dc:
    # Line 181
    li	$v0,1
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cf8ec:
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cf8f8:
    # Line 105
    bnez	$v0,.L0d9cf878
    sltiu	$t9,$a6,5121
    sltiu	$a4,$a6,5123
    bnez	$a4,.L0d9cf888
    # Line 150
    li	$ra,0x8010
    # Line 105
    li	$a5,5123
    beq	$a6,$a5,.L0d9cf888
    # Line 150
    li	$ra,0x8010
    b	.L0d9cfa5c
    # Line 146
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cf920:
    # Line 30
    beq	$a4,$a7,.L0d9cf69c
    # Line 44
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cf928:
    bal __glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 45
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cf944:
    # Line 48
    bnez	$t1,.L0d9cf9e4
    sltiu	$t2,$v0,6407
    sltiu	$t0,$v0,6409
    beqz	$t0,.L0d9cfb6c
    li	$t1,6409
    # Line 98
    li	$t1,6408
.L0d9cf95c:
    # Line 99
    b	.L0d9cf758
    # Line 98
    sw	$t1,0($a5)
.L0d9cf964:
    # Line 30
    bnez	$t2,.L0d9cfad0
    li	$a7,6409
    sltiu	$t3,$a4,6411
    bnez	$t3,.L0d9cf69c
    nop
    b	.L0d9cf928
    # Line 44
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cf980:
    # Line 48
    li	$t1,0x804d
    sltu	$t8,$v0,$t1
    bnez	$t8,.L0d9cfb0c
    sltu	$t9,$t1,$v0
    bnez	$t9,.L0d9cfc00
    li	$t1,0x8050
    li	$t1,0x8049
.L0d9cf99c:
    # Line 78
    b	.L0d9cf758
    # Line 77
    sw	$t1,0($a5)
.L0d9cf9a4:
    # Line 48
    sltu	$ra,$v0,$t1
    bnez	$ra,.L0d9cfb2c
    sltu	$at,$t1,$v0
    beqz	$at,.L0d9cf754
    # Line 70
    li	$a7,6410
    # Line 48
    li	$t1,0x8046
    sltu	$v1,$v0,$t1
    bnez	$v1,.L0d9cfd50
    sltu	$a7,$t1,$v0
    beqz	$a7,.L0d9cf754
    # Line 70
    li	$a7,6410
    # Line 48
    li	$t0,0x8047
    beq	$v0,$t0,.L0d9cf754
    # Line 70
    li	$a7,6410
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cf9e4:
    # Line 48
    bnez	$t2,.L0d9cfb7c
    nop
    beqz	$t1,.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 88
    li	$t3,6407
.L0d9cf9f8:
    # Line 89
    b	.L0d9cf758
    # Line 88
    sw	$t3,0($a5)
.L0d9cfa00:
    # Line 105
    li	$v0,0x8362
    sltu	$t8,$a6,$v0
    bnez	$t8,.L0d9cf818
    sltu	$t9,$v0,$a6
    beqz	$t9,.L0d9cf7e0
    li	$ra,0x8363
    beq	$a6,$ra,.L0d9cf7e4
    # Line 118
    li	$a6,6407
    b	.L0d9cfa5c
    # Line 146
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfa28:
    # Line 152
    lw	$at,840($a0)
    slt	$at,$at,$a2
    beqz	$at,.L0d9cf8d8
    # Line 154
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    ld	$ra,8($sp)
    # Line 155
    b	.L0d9cf8ec
    move	$v0,$zero
.L0d9cfa4c:
    # Line 105
    li	$v0,5120
    beq	$a6,$v0,.L0d9cf888
    # Line 150
    li	$ra,0x8010
.L0d9cfa58:
    # Line 146
    # lw $t9, -26452($gp) # &__glSetError
.L0d9cfa5c:
    bal __glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 147
    move	$v0,$zero
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cfa78:
    # Line 159
    lw	$v1,924($a0)
    slt	$v1,$v1,$a2
    bnez	$v1,.L0d9cfa9c
    # Line 163
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 159
    lw	$a1,928($a0)
    slt	$a1,$a1,$a3
    beqz	$a1,.L0d9cf8dc
    ld	$ra,8($sp)
    # Line 163
    # lw $t9, -26452($gp) # &__glSetError
.L0d9cfa9c:
    bal __glSetError
    li	$a0,1281
    ld	$ra,8($sp)
    # Line 164
    b	.L0d9cf8ec
    move	$v0,$zero
.L0d9cfab0:
    # Line 172
    # lw $t9, -26452($gp) # &__glSetError
.L0d9cfab4:
    bal __glSetError
    li	$a0,1281
    ld	$ra,8($sp)
    # Line 173
    move	$v0,$zero
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cfad0:
    # Line 30
    beq	$a4,$a7,.L0d9cf69c
    nop
    b	.L0d9cf928
    # Line 44
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfae0:
    # Line 30
    beq	$a4,$t0,.L0d9cf69c
    nop
    b	.L0d9cf928
    # Line 44
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfaf0:
    # Line 48
    sltu	$t2,$v0,$t1
    bnez	$t2,.L0d9cfc48
    sltu	$t3,$t1,$v0
    bnez	$t3,.L0d9cfd74
    li	$ra,0x803d
    b	.L0d9cf734
    li	$t1,6406
.L0d9cfb0c:
    li	$t1,0x804b
    sltu	$t8,$v0,$t1
    bnez	$t8,.L0d9cfc28
    sltu	$t9,$t1,$v0
    bnez	$t9,.L0d9cfd2c
    li	$t3,0x804c
    b	.L0d9cf99c
    li	$t1,0x8049
.L0d9cfb2c:
    li	$t1,0x8041
    sltu	$ra,$v0,$t1
    bnez	$ra,.L0d9cfc6c
    sltu	$at,$t1,$v0
    bnez	$at,.L0d9cfd94
    li	$v1,0x8042
    b	.L0d9cfb74
    li	$t1,6409
.L0d9cfb4c:
    # Line 105
    sltiu	$v0,$a6,5126
    bnez	$v0,.L0d9cfcd4
    li	$at,5125
    sltiu	$v1,$a6,5127
    bnez	$v1,.L0d9cf888
    # Line 150
    li	$ra,0x8010
    b	.L0d9cfa5c
    # Line 146
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfb6c:
    # Line 48
    bne	$t1,$v0,.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfb74:
    # Line 62
    b	.L0d9cf758
    # Line 61
    sw	$t1,0($a5)
.L0d9cfb7c:
    # Line 48
    li	$t1,6406
    beq	$t1,$v0,.L0d9cf734
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfb88:
    bal __glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 102
    move	$v0,$zero
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cfba4:
    # Line 27
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1281
    ld	$ra,8($sp)
    # Line 28
    move	$v0,$zero
    # Line 45
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cfbc4:
    # Line 48
    li	$t1,0x8055
    sltu	$a7,$v0,$t1
    bnez	$a7,.L0d9cfce4
    sltu	$t0,$t1,$v0
    beqz	$t0,.L0d9cf95c
    # Line 98
    li	$t1,6408
    # Line 48
    li	$t1,0x8056
    beq	$v0,$t1,.L0d9cf95c
    # Line 98
    li	$t1,6408
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfbf0:
    # Line 30
    beq	$a4,$t2,.L0d9cf69c
    nop
    b	.L0d9cf928
    # Line 44
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfc00:
    # Line 48
    sltu	$t3,$v0,$t1
    bnez	$t3,.L0d9cfd08
    sltu	$t8,$t1,$v0
    beqz	$t8,.L0d9cf9f8
    # Line 88
    li	$t3,6407
    # Line 48
    li	$t9,0x8051
    beq	$v0,$t9,.L0d9cf9f8
    # Line 88
    li	$t3,6407
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfc28:
    # Line 48
    li	$t1,0x804a
    sltu	$ra,$v0,$t1
    bnez	$ra,.L0d9cfd3c
    sltu	$at,$t1,$v0
    bnez	$at,.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 48
    b	.L0d9cf99c
    li	$t1,0x8049
.L0d9cfc48:
    li	$t1,0x803b
    sltu	$v1,$v0,$t1
    bnez	$v1,.L0d9cfd84
    li	$at,10768
    sltu	$a7,$t1,$v0
    bnez	$a7,.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 48
    b	.L0d9cf734
    li	$t1,6406
.L0d9cfc6c:
    li	$t1,0x8040
    sltu	$t0,$v0,$t1
    bnez	$t0,.L0d9cfda4
    li	$a7,0x803f
    sltu	$t2,$t1,$v0
    bnez	$t2,.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 48
    b	.L0d9cfb74
    li	$t1,6409
.L0d9cfc90:
    # Line 105
    li	$v0,0x8366
    sltu	$t3,$a6,$v0
    bnez	$t3,.L0d9cfdb4
    li	$t0,0x8365
    sltu	$t8,$v0,$a6
    beqz	$t8,.L0d9cf838
    # Line 135
    li	$t2,6408
    b	.L0d9cfa5c
    # Line 146
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfcb4:
    # Line 105
    beq	$a6,$t9,.L0d9cf838
    # Line 135
    li	$t2,6408
    b	.L0d9cfa5c
    # Line 146
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfcc4:
    # Line 105
    beq	$a6,$ra,.L0d9cf838
    # Line 135
    li	$t2,6408
    b	.L0d9cfa5c
    # Line 146
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfcd4:
    # Line 105
    beq	$a6,$at,.L0d9cf888
    # Line 150
    li	$ra,0x8010
    b	.L0d9cfa5c
    # Line 146
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfce4:
    # Line 48
    li	$t1,0x8054
    sltu	$v1,$v0,$t1
    bnez	$v1,.L0d9cfde8
    li	$t8,0x8053
    sltu	$a7,$t1,$v0
    beqz	$a7,.L0d9cf9f8
    # Line 88
    li	$t3,6407
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfd08:
    # Line 48
    li	$t1,0x804f
    sltu	$t0,$v0,$t1
    bnez	$t0,.L0d9cfdf8
    li	$t9,0x804e
    sltu	$t2,$t1,$v0
    beqz	$t2,.L0d9cf9f8
    # Line 88
    li	$t3,6407
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfd2c:
    # Line 48
    bne	$v0,$t3,.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 48
    b	.L0d9cf99c
    li	$t1,0x8049
.L0d9cfd3c:
    li	$t1,0x8049
    beq	$t1,$v0,.L0d9cf99c
    nop
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfd50:
    # Line 48
    li	$t1,0x8045
    sltu	$t8,$v0,$t1
    bnez	$t8,.L0d9cfe08
    li	$ra,0x8044
    sltu	$t9,$t1,$v0
    beqz	$t9,.L0d9cf754
    # Line 70
    li	$a7,6410
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfd74:
    # Line 48
    bne	$v0,$ra,.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 48
    b	.L0d9cf734
    li	$t1,6406
.L0d9cfd84:
    beq	$v0,$at,.L0d9cf9f8
    # Line 88
    li	$t3,6407
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfd94:
    # Line 48
    bne	$v0,$v1,.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 48
    b	.L0d9cfb74
    li	$t1,6409
.L0d9cfda4:
    bne	$v0,$a7,.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 48
    b	.L0d9cfb74
    li	$t1,6409
.L0d9cfdb4:
    # Line 105
    beq	$a6,$t0,.L0d9cf838
    # Line 135
    li	$t2,6408
    b	.L0d9cfa5c
    # Line 146
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfdc4:
    # Line 48
    li	$t1,0x8059
    sltu	$t2,$v0,$t1
    bnez	$t2,.L0d9cfe18
    li	$at,0x8058
    sltu	$t3,$t1,$v0
    beqz	$t3,.L0d9cf95c
    # Line 98
    li	$t1,6408
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfde8:
    # Line 48
    beq	$v0,$t8,.L0d9cf9f8
    # Line 88
    li	$t3,6407
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfdf8:
    # Line 48
    beq	$v0,$t9,.L0d9cf9f8
    # Line 88
    li	$t3,6407
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfe08:
    # Line 48
    beq	$v0,$ra,.L0d9cf754
    # Line 70
    li	$a7,6410
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cfe18:
    # Line 48
    beq	$v0,$at,.L0d9cf95c
    # Line 98
    li	$t1,6408
    b	.L0d9cfb88
    # Line 101
    nop	# was lw $t9, -26452($gp) # &__glSetError
.end __glCheckConvolutionFilterArgs

# Function: __glim_ConvolutionFilter1DEXT
# Declared: Line 185 (Source lines: 188-210)
# Address: 0x0d9cfe30 - 0x0d9cff70 (Size: 320 bytes, Frame: 240)
.globl __glim_ConvolutionFilter1DEXT
.ent __glim_ConvolutionFilter1DEXT
__glim_ConvolutionFilter1DEXT:
    # Line 188
    addiu	$sp,$sp,-112
    sd	$a5,0($sp)
    sd	$a4,16($sp)
    sd	$a3,8($sp)
    sd	$a2,24($sp)
    sd	$a0,32($sp)
    sd	$ra,56($sp)
    sw	$a1,76($sp)
    # Line 190
    lw	$t0,4120($zero)
    sd	$gp,48($sp)
    # Line 188
    lui	$at,0x8
    addiu	$at,$at,3932
    # Line 190
    lw	$v0,4112($zero)
    sd	$v0,40($sp)
    beqz	$t0,.L0d9cfeac
    # Line 188
    addu	$gp,$t9,$at
    # Line 190
    li	$v0,2
    beq	$t0,$v0,.L0d9cfe98
    ld	$t9,40($sp)
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,56($sp)
.L0d9cfe8c:
    # Line 210
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9cfe98:
    # Line 190
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    sw	$zero,4120($zero)
.L0d9cfeac:
    # Line 192
    ld	$a0,40($sp)
    ld	$a1,32($sp)
    # lw $t9, -26420($gp) # &__glCheckConvolutionFilterArgs
    ld	$a2,24($sp)
    ld	$a6,16($sp)
    addiu	$a5,$sp,76
    ld	$a4,8($sp)
    bal __glCheckConvolutionFilterArgs
    li	$a3,1
    beqz	$v0,.L0d9cfe8c
    ld	$ra,56($sp)
    # Line 194
    li	$at,0x8010
    ld	$ra,32($sp)
    beq	$ra,$at,.L0d9cfef8
    # Line 197
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9cfe8c
    ld	$ra,56($sp)
.L0d9cfef8:
    # Line 202
    lw	$a0,76($sp)
    # Line 203
    ld	$v0,24($sp)
    # Line 202
    ld	$v1,40($sp)
    # Line 204
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 203
    sw	$v0,832($v1)
    # Line 202
    sw	$a0,776($v1)
    # Line 204
    jal	__glElementsPerGroup
    lw	$a0,76($sp)
    # Line 206
    ld	$a6,32($sp)
    ld	$a5,0($sp)
    ld	$t0,40($sp)
    ld	$a4,16($sp)
    lw	$t9,12584($t0)
    ld	$a3,8($sp)
    move	$a7,$zero
    li	$a2,1
    ld	$a1,24($sp)
    move	$a0,$t0
    jalr	$t9
    # Line 204
    sw	$v0,780($t0)
    # Line 209
    li	$t2,2
    sw	$t2,4120($zero)
    ld	$t2,40($sp)
    ld	$ra,56($sp)
    lw	$t1,11756($t2)
    # Line 210
    ld	$gp,48($sp)
    addiu	$sp,$sp,112
    # Line 209
    ori	$t1,$t1,0x10
    # Line 210
    jr	$ra
    # Line 209
    sw	$t1,11756($t2)
.end __glim_ConvolutionFilter1DEXT

# Function: __glim_ConvolutionFilter2DEXT
# Declared: Line 212 (Source lines: 216-239)
# Address: 0x0d9cff70 - 0x0d9d00b8 (Size: 328 bytes, Frame: 144)
.globl __glim_ConvolutionFilter2DEXT
.ent __glim_ConvolutionFilter2DEXT
__glim_ConvolutionFilter2DEXT:
    # Line 216
    addiu	$sp,$sp,-144
    sd	$a6,0($sp)
    sd	$a5,16($sp)
    sd	$a4,8($sp)
    sd	$a3,32($sp)
    sd	$a2,24($sp)
    sd	$a0,40($sp)
    sd	$ra,64($sp)
    sw	$a1,92($sp)
    # Line 218
    lw	$t0,4120($zero)
    sd	$gp,56($sp)
    # Line 216
    lui	$at,0x8
    addiu	$at,$at,3612
    # Line 218
    lw	$v0,4112($zero)
    sd	$v0,48($sp)
    beqz	$t0,.L0d9cfff0
    # Line 216
    addu	$gp,$t9,$at
    # Line 218
    li	$v0,2
    beq	$t0,$v0,.L0d9cffdc
    ld	$t9,48($sp)
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
.L0d9cffcc:
    ld	$ra,64($sp)
.L0d9cffd0:
    # Line 239
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,144
.L0d9cffdc:
    # Line 218
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    sw	$zero,4120($zero)
.L0d9cfff0:
    # Line 220
    ld	$a0,48($sp)
    ld	$a1,40($sp)
    ld	$a2,24($sp)
    # lw $t9, -26420($gp) # &__glCheckConvolutionFilterArgs
    ld	$a3,32($sp)
    ld	$a4,8($sp)
    ld	$a6,16($sp)
    bal __glCheckConvolutionFilterArgs
    addiu	$a5,$sp,92
    beqz	$v0,.L0d9cffcc
    # Line 222
    li	$at,0x8011
    ld	$ra,40($sp)
    beq	$ra,$at,.L0d9d0038
    # Line 225
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9cffd0
    ld	$ra,64($sp)
.L0d9d0038:
    # Line 231
    ld	$a0,24($sp)
    # Line 230
    lw	$a1,92($sp)
    ld	$v1,48($sp)
    # Line 232
    ld	$v0,32($sp)
    sw	$v0,920($v1)
    # Line 233
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 230
    sw	$a1,860($v1)
    # Line 231
    sw	$a0,916($v1)
    # Line 233
    jal	__glElementsPerGroup
    lw	$a0,92($sp)
    # Line 235
    ld	$a6,40($sp)
    ld	$a5,0($sp)
    ld	$a4,16($sp)
    ld	$t0,48($sp)
    ld	$a3,8($sp)
    lw	$t9,12584($t0)
    ld	$a2,32($sp)
    move	$a7,$zero
    ld	$a1,24($sp)
    move	$a0,$t0
    jalr	$t9
    # Line 233
    sw	$v0,864($t0)
    # Line 238
    li	$t2,2
    sw	$t2,4120($zero)
    ld	$t2,48($sp)
    ld	$ra,64($sp)
    lw	$t1,11756($t2)
    # Line 239
    ld	$gp,56($sp)
    addiu	$sp,$sp,144
    # Line 238
    ori	$t1,$t1,0x10
    # Line 239
    jr	$ra
    # Line 238
    sw	$t1,11756($t2)
.end __glim_ConvolutionFilter2DEXT

# Function: __glim_SeparableFilter2DEXT
# Declared: Line 241 (Source lines: 245-269)
# Address: 0x0d9d00c0 - 0x0d9d0210 (Size: 336 bytes, Frame: 160)
.globl __glim_SeparableFilter2DEXT
.ent __glim_SeparableFilter2DEXT
__glim_SeparableFilter2DEXT:
    # Line 245
    addiu	$sp,$sp,-160
    sd	$a7,24($sp)
    sd	$a6,16($sp)
    sd	$a5,40($sp)
    sd	$a4,32($sp)
    sd	$a3,56($sp)
    sd	$a2,48($sp)
    sd	$a0,64($sp)
    sd	$ra,88($sp)
    sw	$a1,108($sp)
    # Line 247
    lw	$t1,4120($zero)
    # Line 245
    lui	$at,0x8
    # Line 247
    lw	$v0,4112($zero)
    # Line 245
    addiu	$at,$at,3276
    # Line 247
    sd	$v0,72($sp)
    li	$v0,2
    sd	$gp,80($sp)
    beqz	$t1,.L0d9d0144
    # Line 245
    addu	$gp,$t9,$at
    # Line 247
    beq	$t1,$v0,.L0d9d012c
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,88($sp)
.L0d9d0120:
    # Line 269
    ld	$gp,80($sp)
    jr	$ra
    addiu	$sp,$sp,160
.L0d9d012c:
    # Line 247
    ld	$t9,72($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    sw	$zero,4120($zero)
.L0d9d0144:
    # Line 249
    ld	$a0,72($sp)
    ld	$a1,64($sp)
    ld	$a2,48($sp)
    # lw $t9, -26420($gp) # &__glCheckConvolutionFilterArgs
    ld	$a3,56($sp)
    ld	$a4,32($sp)
    ld	$a6,40($sp)
    bal __glCheckConvolutionFilterArgs
    addiu	$a5,$sp,108
    beqz	$v0,.L0d9d0120
    ld	$ra,88($sp)
    # Line 251
    li	$at,0x8012
    ld	$ra,64($sp)
    beq	$ra,$at,.L0d9d0190
    # Line 254
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9d0120
    ld	$ra,88($sp)
.L0d9d0190:
    # Line 261
    ld	$a0,48($sp)
    # Line 260
    lw	$a1,108($sp)
    ld	$v1,72($sp)
    # Line 262
    ld	$v0,56($sp)
    sw	$v0,1004($v1)
    # Line 263
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 260
    sw	$a1,944($v1)
    # Line 261
    sw	$a0,1000($v1)
    # Line 263
    jal	__glElementsPerGroup
    lw	$a0,108($sp)
    # Line 265
    ld	$a7,64($sp)
    ld	$a6,24($sp)
    ld	$a5,16($sp)
    # Line 263
    ld	$a0,72($sp)
    # Line 265
    ld	$a4,40($sp)
    # Line 263
    sw	$v0,948($a0)
    # Line 265
    sw	$zero,4($sp)
    lw	$t9,12588($a0)
    ld	$a3,32($sp)
    ld	$a2,56($sp)
    jalr	$t9
    ld	$a1,48($sp)
    # Line 268
    li	$a3,2
    sw	$a3,4120($zero)
    ld	$a3,72($sp)
    ld	$ra,88($sp)
    lw	$a2,11756($a3)
    # Line 269
    ld	$gp,80($sp)
    addiu	$sp,$sp,160
    # Line 268
    ori	$a2,$a2,0x10
    # Line 269
    jr	$ra
    # Line 268
    sw	$a2,11756($a3)
.end __glim_SeparableFilter2DEXT

# Function: __glim_CopyConvolutionFilter1DEXT
# Declared: Line 271 (Source lines: 273-297)
# Address: 0x0d9d0210 - 0x0d9d033c (Size: 300 bytes, Frame: 240)
.globl __glim_CopyConvolutionFilter1DEXT
.ent __glim_CopyConvolutionFilter1DEXT
__glim_CopyConvolutionFilter1DEXT:
    # Line 273
    addiu	$sp,$sp,-112
    sd	$a4,16($sp)
    sd	$a3,8($sp)
    sd	$a2,0($sp)
    sd	$a0,24($sp)
    sd	$ra,48($sp)
    sw	$a1,76($sp)
    # Line 275
    lw	$a7,4120($zero)
    # Line 273
    lui	$at,0x8
    # Line 275
    lw	$v0,4112($zero)
    # Line 273
    addiu	$at,$at,2940
    # Line 275
    sd	$v0,32($sp)
    li	$v0,2
    sd	$gp,40($sp)
    beqz	$a7,.L0d9d0288
    # Line 273
    addu	$gp,$t9,$at
    # Line 275
    beq	$a7,$v0,.L0d9d0274
    ld	$t9,32($sp)
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
.L0d9d0264:
    ld	$ra,48($sp)
.L0d9d0268:
    # Line 297
    ld	$gp,40($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9d0274:
    # Line 275
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    sw	$zero,4120($zero)
.L0d9d0288:
    # Line 278
    # lw $t9, -26420($gp) # &__glCheckConvolutionFilterArgs
    ld	$a0,32($sp)
    move	$a3,$zero
    ld	$a1,24($sp)
    li	$a6,5126
    addiu	$a5,$sp,76
    ld	$a2,16($sp)
    bal __glCheckConvolutionFilterArgs
    li	$a4,6408
    beqz	$v0,.L0d9d0264
    # Line 280
    li	$at,0x8010
    ld	$ra,24($sp)
    beq	$ra,$at,.L0d9d02d0
    # Line 283
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9d0268
    ld	$ra,48($sp)
.L0d9d02d0:
    # Line 289
    lw	$a0,76($sp)
    # Line 290
    ld	$v0,16($sp)
    # Line 289
    ld	$v1,32($sp)
    # Line 291
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 290
    sw	$v0,832($v1)
    # Line 289
    sw	$a0,776($v1)
    # Line 291
    jal	__glElementsPerGroup
    lw	$a0,76($sp)
    # Line 293
    ld	$a5,16($sp)
    ld	$a4,8($sp)
    ld	$a0,32($sp)
    ld	$a3,0($sp)
    lw	$t9,12600($a0)
    ld	$a1,24($sp)
    # Line 291
    sw	$v0,780($a0)
    # Line 293
    jalr	$t9
    lw	$a2,76($sp)
    # Line 296
    li	$a2,2
    sw	$a2,4120($zero)
    ld	$a2,32($sp)
    ld	$ra,48($sp)
    lw	$a1,11756($a2)
    # Line 297
    ld	$gp,40($sp)
    addiu	$sp,$sp,112
    # Line 296
    ori	$a1,$a1,0x10
    # Line 297
    jr	$ra
    # Line 296
    sw	$a1,11756($a2)
.end __glim_CopyConvolutionFilter1DEXT

# Function: __glim_CopyConvolutionFilter2DEXT
# Declared: Line 299 (Source lines: 302-327)
# Address: 0x0d9d0340 - 0x0d9d047c (Size: 316 bytes, Frame: 240)
.globl __glim_CopyConvolutionFilter2DEXT
.ent __glim_CopyConvolutionFilter2DEXT
__glim_CopyConvolutionFilter2DEXT:
    # Line 302
    addiu	$sp,$sp,-112
    sd	$a5,24($sp)
    sd	$a4,16($sp)
    sd	$a3,8($sp)
    sd	$a2,0($sp)
    sd	$a0,32($sp)
    sd	$ra,56($sp)
    sw	$a1,76($sp)
    # Line 304
    lw	$t0,4120($zero)
    sd	$gp,48($sp)
    # Line 302
    lui	$at,0x8
    addiu	$at,$at,2636
    # Line 304
    lw	$v0,4112($zero)
    sd	$v0,40($sp)
    beqz	$t0,.L0d9d03bc
    # Line 302
    addu	$gp,$t9,$at
    # Line 304
    li	$v0,2
    beq	$t0,$v0,.L0d9d03a8
    ld	$t9,40($sp)
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
.L0d9d0398:
    ld	$ra,56($sp)
.L0d9d039c:
    # Line 327
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9d03a8:
    # Line 304
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    sw	$zero,4120($zero)
.L0d9d03bc:
    # Line 307
    ld	$a0,40($sp)
    # lw $t9, -26420($gp) # &__glCheckConvolutionFilterArgs
    ld	$a1,32($sp)
    ld	$a2,16($sp)
    li	$a6,5126
    addiu	$a5,$sp,76
    ld	$a3,24($sp)
    bal __glCheckConvolutionFilterArgs
    li	$a4,6408
    beqz	$v0,.L0d9d0398
    # Line 309
    li	$at,0x8011
    ld	$ra,32($sp)
    beq	$ra,$at,.L0d9d0404
    # Line 312
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9d039c
    ld	$ra,56($sp)
.L0d9d0404:
    # Line 319
    ld	$a0,16($sp)
    # Line 318
    lw	$a1,76($sp)
    ld	$v1,40($sp)
    # Line 320
    ld	$v0,24($sp)
    sw	$v0,920($v1)
    # Line 321
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 318
    sw	$a1,860($v1)
    # Line 319
    sw	$a0,916($v1)
    # Line 321
    jal	__glElementsPerGroup
    lw	$a0,76($sp)
    # Line 323
    ld	$a6,24($sp)
    ld	$a5,16($sp)
    ld	$a4,8($sp)
    ld	$a0,40($sp)
    ld	$a3,0($sp)
    lw	$t9,12604($a0)
    ld	$a1,32($sp)
    # Line 321
    sw	$v0,864($a0)
    # Line 323
    jalr	$t9
    lw	$a2,76($sp)
    # Line 326
    li	$a3,2
    sw	$a3,4120($zero)
    ld	$a3,40($sp)
    ld	$ra,56($sp)
    lw	$a2,11756($a3)
    # Line 327
    ld	$gp,48($sp)
    addiu	$sp,$sp,112
    # Line 326
    ori	$a2,$a2,0x10
    # Line 327
    jr	$ra
    # Line 326
    sw	$a2,11756($a3)
.end __glim_CopyConvolutionFilter2DEXT

# Function: __glim_GetConvolutionFilterEXT
# Declared: Line 331 (Source lines: 333-345)
# Address: 0x0d9d0480 - 0x0d9d0550 (Size: 208 bytes, Frame: 192)
.globl __glim_GetConvolutionFilterEXT
.ent __glim_GetConvolutionFilterEXT
__glim_GetConvolutionFilterEXT:
    # Line 333
    addiu	$sp,$sp,-64
    sd	$a3,8($sp)
    sd	$a2,32($sp)
    sd	$a1,24($sp)
    sd	$a0,16($sp)
    sd	$ra,56($sp)
    # Line 334
    li	$v0,6408
    sw	$v0,0($sp)
    # Line 335
    lw	$a7,4120($zero)
    sd	$gp,48($sp)
    # Line 333
    lui	$at,0x8
    addiu	$at,$at,2316
    # Line 335
    lw	$v0,4112($zero)
    sd	$v0,40($sp)
    beqz	$a7,.L0d9d04fc
    # Line 333
    addu	$gp,$t9,$at
    # Line 335
    li	$v1,2
    beq	$a7,$v1,.L0d9d04e4
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,56($sp)
.L0d9d04d8:
    # Line 345
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.L0d9d04e4:
    # Line 335
    ld	$t9,40($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    sw	$zero,4120($zero)
.L0d9d04fc:
    # Line 338
    ld	$a0,40($sp)
    # lw $t9, -26420($gp) # &__glCheckConvolutionFilterArgs
    ld	$a1,16($sp)
    move	$a2,$zero
    move	$a3,$zero
    ld	$a4,24($sp)
    ld	$a6,32($sp)
    bal __glCheckConvolutionFilterArgs
    addiu	$a5,$sp,0
    beqz	$v0,.L0d9d04d8
    ld	$ra,56($sp)
    # Line 343
    ld	$t9,40($sp)
    ld	$a1,16($sp)
    move	$a0,$t9
    lw	$t9,12592($t9)
    ld	$a2,24($sp)
    ld	$a3,32($sp)
    jal	__glCheckConvolutionFilterArgs
    ld	$a4,8($sp)
    b	.L0d9d04d8
    ld	$ra,56($sp)
.end __glim_GetConvolutionFilterEXT

# Function: __glim_GetSeparableFilterEXT
# Declared: Line 347 (Source lines: 349-364)
# Address: 0x0d9d0550 - 0x0d9d0650 (Size: 256 bytes, Frame: 208)
.globl __glim_GetSeparableFilterEXT
.ent __glim_GetSeparableFilterEXT
__glim_GetSeparableFilterEXT:
    # Line 349
    addiu	$sp,$sp,-80
    sd	$a5,24($sp)
    sd	$a4,16($sp)
    sd	$a3,8($sp)
    sd	$a2,40($sp)
    sd	$a1,32($sp)
    sd	$a0,56($sp)
    sd	$ra,72($sp)
    # Line 350
    li	$v0,6408
    sw	$v0,0($sp)
    # Line 351
    lw	$t0,4120($zero)
    sd	$gp,64($sp)
    # Line 349
    lui	$at,0x8
    # Line 351
    li	$v1,2
    # Line 349
    addiu	$at,$at,2108
    # Line 351
    lw	$v0,4112($zero)
    sd	$v0,48($sp)
    beqz	$t0,.L0d9d05d4
    # Line 349
    addu	$gp,$t9,$at
    # Line 351
    beq	$t0,$v1,.L0d9d05c0
    ld	$t9,48($sp)
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,72($sp)
.L0d9d05b4:
    # Line 364
    ld	$gp,64($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9d05c0:
    # Line 351
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    sw	$zero,4120($zero)
.L0d9d05d4:
    # Line 354
    ld	$a0,48($sp)
    # lw $t9, -26420($gp) # &__glCheckConvolutionFilterArgs
    ld	$a1,56($sp)
    move	$a2,$zero
    move	$a3,$zero
    ld	$a4,32($sp)
    ld	$a6,40($sp)
    bal __glCheckConvolutionFilterArgs
    addiu	$a5,$sp,0
    beqz	$v0,.L0d9d05b4
    ld	$ra,72($sp)
    # Line 356
    li	$at,0x8012
    ld	$ra,56($sp)
    beq	$ra,$at,.L0d9d0620
    # Line 359
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9d05b4
    ld	$ra,72($sp)
.L0d9d0620:
    # Line 363
    ld	$a1,56($sp)
    ld	$a2,32($sp)
    ld	$t9,48($sp)
    ld	$a3,40($sp)
    move	$a0,$t9
    lw	$t9,12596($t9)
    ld	$a4,8($sp)
    ld	$a5,16($sp)
    jal	__glSetError
    ld	$a6,24($sp)
    b	.L0d9d05b4
    ld	$ra,72($sp)
.end __glim_GetSeparableFilterEXT

# Function: __GLconvolutionParameter
# Declared: Line 379 (Source lines: 381-453)
# Address: 0x0d9d0650 - 0x0d9d0870 (Size: 544 bytes, Frame: 32)
.globl __GLconvolutionParameter
.ent __GLconvolutionParameter
__GLconvolutionParameter:
    # Line 381
    addiu	$sp,$sp,-32
    # Line 384
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 381
    lui	$v1,0x8
    # Line 402
    li	$t2,0x8015
    sd	$ra,16($sp)
    # Line 381
    addiu	$v1,$v1,1852
    sd	$gp,8($sp)
    # Line 384
    beq	$at,$v0,.L0d9d07f8
    # Line 381
    addu	$gp,$t9,$v1
    # Line 386
    li	$a4,0x8010
    beq	$a0,$a4,.L0d9d071c
    li	$a6,0x8011
    beq	$a0,$a6,.L0d9d0724
    li	$a7,0x8012
    beq	$a0,$a7,.L0d9d06ac
    # Line 394
    addiu	$a0,$a5,936
    # Line 397
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9d0710
    ld	$ra,16($sp)
.L0d9d06ac:
    # Line 402
    li	$t0,0x8013
    beq	$a1,$t0,.L0d9d072c
    # Line 437
    li	$t3,5124
    # Line 402
    li	$t1,0x8014
    beq	$a1,$t1,.L0d9d0764
    # Line 424
    li	$ra,5124
    # Line 402
    beq	$a1,$t2,.L0d9d06e0
    ld	$ra,16($sp)
    # Line 450
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9d0710
    ld	$ra,16($sp)
.L0d9d06e0:
    # Line 437
    beq	$a3,$t3,.L0d9d0798
    # Line 453
    ld	$gp,8($sp)
    # Line 443
    lwc1	$f3,0($a2)
    swc1	$f3,32($a0)
    # Line 444
    lwc1	$f2,4($a2)
    swc1	$f2,36($a0)
    # Line 445
    lwc1	$f1,8($a2)
    swc1	$f1,40($a0)
    # Line 446
    lwc1	$f0,12($a2)
    # Line 453
    addiu	$sp,$sp,32
    jr	$ra
    # Line 446
    swc1	$f0,44($a0)
.L0d9d0710:
    # Line 453
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9d071c:
    b	.L0d9d06ac
    # Line 388
    addiu	$a0,$a5,768
.L0d9d0724:
    # Line 392
    b	.L0d9d06ac
    # Line 391
    addiu	$a0,$a5,852
.L0d9d072c:
    # Line 404
    li	$t8,5124
    lw	$a1,0($sp)
    li	$t9,5126
    beq	$a3,$t8,.L0d9d080c
    ld	$ra,16($sp)
    beq	$a3,$t9,.L0d9d0814
    nop
.L0d9d0748:
    # Line 414
    li	$a2,0x8016
    beq	$a2,$a1,.L0d9d07e8
    # Line 419
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9d0710
    ld	$ra,16($sp)
.L0d9d0764:
    # Line 424
    beq	$a3,$ra,.L0d9d0828
    # Line 453
    ld	$gp,8($sp)
    # Line 430
    lwc1	$f7,0($a2)
    swc1	$f7,16($a0)
    # Line 431
    lwc1	$f6,4($a2)
    swc1	$f6,20($a0)
    # Line 432
    lwc1	$f5,8($a2)
    ld	$ra,16($sp)
    swc1	$f5,24($a0)
    # Line 433
    lwc1	$f4,12($a2)
    # Line 453
    addiu	$sp,$sp,32
    jr	$ra
    # Line 433
    swc1	$f4,28($a0)
.L0d9d0798:
    # Line 438
    lw	$a1,0($a2)
    mtc1	$a1,$f11
    cvt.s.w	$f11,$f11
    swc1	$f11,32($a0)
    # Line 439
    lw	$v1,4($a2)
    mtc1	$v1,$f10
    cvt.s.w	$f10,$f10
    swc1	$f10,36($a0)
    # Line 440
    lw	$v0,8($a2)
    mtc1	$v0,$f9
    cvt.s.w	$f9,$f9
    swc1	$f9,40($a0)
    # Line 441
    lw	$at,12($a2)
    mtc1	$at,$f8
    ld	$ra,16($sp)
    cvt.s.w	$f8,$f8
    # Line 453
    ld	$gp,8($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 441
    swc1	$f8,44($a0)
.L0d9d07e8:
    # Line 416
    sw	$a2,4($a0)
    # Line 453
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.L0d9d07f8:
    # Line 384
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9d0710
    ld	$ra,16($sp)
.L0d9d080c:
    b	.L0d9d0748
    # Line 406
    lw	$a1,0($a2)
.L0d9d0814:
    # Line 409
    lwc1	$f12,0($a2)
    trunc.l.s	$f12,$f12
    dmfc1	$a1,$f12
    # Line 410
    b	.L0d9d0748
    # Line 409
    sll	$a1,$a1,0x0
.L0d9d0828:
    # Line 425
    lw	$a6,0($a2)
    mtc1	$a6,$f16
    cvt.s.w	$f16,$f16
    swc1	$f16,16($a0)
    # Line 426
    lw	$a5,4($a2)
    mtc1	$a5,$f15
    cvt.s.w	$f15,$f15
    swc1	$f15,20($a0)
    # Line 427
    lw	$a4,8($a2)
    mtc1	$a4,$f14
    cvt.s.w	$f14,$f14
    swc1	$f14,24($a0)
    # Line 428
    lw	$a3,12($a2)
    mtc1	$a3,$f13
    cvt.s.w	$f13,$f13
    ld	$ra,16($sp)
    b	.L0d9d0710
    swc1	$f13,28($a0)
.end __GLconvolutionParameter

# Function: __glim_ConvolutionParameteriEXT
# Declared: Line 457 (Source lines: 458-468)
# Address: 0x0d9d0870 - 0x0d9d08c8 (Size: 88 bytes, Frame: 48)
.globl __glim_ConvolutionParameteriEXT
.ent __glim_ConvolutionParameteriEXT
__glim_ConvolutionParameteriEXT:
    # Line 458
    addiu	$sp,$sp,-48
    sw	$a2,36($sp)
    # Line 459
    li	$at,0x8013
    # Line 458
    lui	$v0,0x8
    sd	$ra,8($sp)
    addiu	$v0,$v0,1308
    sd	$gp,0($sp)
    # Line 459
    beq	$a1,$at,.L0d9d08b0
    # Line 458
    addu	$gp,$t9,$v0
    # Line 464
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9d08a4:
    # Line 468
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d08b0:
    # Line 461
    # lw $t9, -26388($gp) # &__GLconvolutionParameter
    li	$a3,5124
    bal __GLconvolutionParameter
    addiu	$a2,$sp,36
    b	.L0d9d08a4
    ld	$ra,8($sp)
.end __glim_ConvolutionParameteriEXT

# Function: __glim_ConvolutionParameterivEXT
# Declared: Line 470 (Source lines: 472-484)
# Address: 0x0d9d08d0 - 0x0d9d0930 (Size: 96 bytes, Frame: 16)
.globl __glim_ConvolutionParameterivEXT
.ent __glim_ConvolutionParameterivEXT
__glim_ConvolutionParameterivEXT:
    # Line 472
    addiu	$sp,$sp,-16
    # Line 473
    li	$at,0x8013
    # Line 472
    lui	$v0,0x8
    sd	$ra,8($sp)
    addiu	$v0,$v0,1212
    sd	$gp,0($sp)
    # Line 473
    beq	$a1,$at,.L0d9d091c
    # Line 472
    addu	$gp,$t9,$v0
    # Line 473
    li	$v1,0x8014
    beq	$a1,$v1,.L0d9d091c
    li	$a3,0x8015
    beq	$a1,$a3,.L0d9d091c
    # Line 480
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9d0910:
    # Line 484
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d091c:
    # Line 477
    # lw $t9, -26388($gp) # &__GLconvolutionParameter
    bal __GLconvolutionParameter
    li	$a3,5124
    b	.L0d9d0910
    ld	$ra,8($sp)
.end __glim_ConvolutionParameterivEXT

# Function: __glim_ConvolutionParameterfEXT
# Declared: Line 486 (Source lines: 488-498)
# Address: 0x0d9d0930 - 0x0d9d0988 (Size: 88 bytes, Frame: 48)
.globl __glim_ConvolutionParameterfEXT
.ent __glim_ConvolutionParameterfEXT
__glim_ConvolutionParameterfEXT:
    # Line 488
    addiu	$sp,$sp,-48
    swc1	$f14,32($sp)
    # Line 489
    li	$at,0x8013
    # Line 488
    lui	$v0,0x8
    sd	$ra,8($sp)
    addiu	$v0,$v0,1116
    sd	$gp,0($sp)
    # Line 489
    beq	$a1,$at,.L0d9d0970
    # Line 488
    addu	$gp,$t9,$v0
    # Line 494
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9d0964:
    # Line 498
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9d0970:
    # Line 491
    # lw $t9, -26388($gp) # &__GLconvolutionParameter
    li	$a3,5126
    bal __GLconvolutionParameter
    addiu	$a2,$sp,32
    b	.L0d9d0964
    ld	$ra,8($sp)
.end __glim_ConvolutionParameterfEXT

# Function: __glim_ConvolutionParameterfvEXT
# Declared: Line 500 (Source lines: 502-514)
# Address: 0x0d9d0990 - 0x0d9d09f0 (Size: 96 bytes, Frame: 16)
.globl __glim_ConvolutionParameterfvEXT
.ent __glim_ConvolutionParameterfvEXT
__glim_ConvolutionParameterfvEXT:
    # Line 502
    addiu	$sp,$sp,-16
    # Line 503
    li	$at,0x8013
    # Line 502
    lui	$v0,0x8
    sd	$ra,8($sp)
    addiu	$v0,$v0,1020
    sd	$gp,0($sp)
    # Line 503
    beq	$a1,$at,.L0d9d09dc
    # Line 502
    addu	$gp,$t9,$v0
    # Line 503
    li	$v1,0x8014
    beq	$a1,$v1,.L0d9d09dc
    li	$a3,0x8015
    beq	$a1,$a3,.L0d9d09dc
    # Line 510
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    ld	$ra,8($sp)
.L0d9d09d0:
    # Line 514
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d09dc:
    # Line 507
    # lw $t9, -26388($gp) # &__GLconvolutionParameter
    bal __GLconvolutionParameter
    li	$a3,5126
    b	.L0d9d09d0
    ld	$ra,8($sp)
.end __glim_ConvolutionParameterfvEXT

# Function: __GLgetConvolutionParameter
# Declared: Line 523 (Source lines: 525-613)
# Address: 0x0d9d09f0 - 0x0d9d0cbc (Size: 716 bytes, Frame: 16)
.globl __GLgetConvolutionParameter
.ent __GLgetConvolutionParameter
__GLgetConvolutionParameter:
    # Line 525
    addiu	$sp,$sp,-16
    # Line 527
    lw	$at,4120($zero)
    lw	$a5,4112($zero)
    li	$v0,1
    # Line 525
    lui	$v1,0x8
    sd	$ra,8($sp)
    addiu	$v1,$v1,924
    sd	$gp,0($sp)
    # Line 527
    beq	$at,$v0,.L0d9d0c04
    # Line 525
    addu	$gp,$t9,$v1
    # Line 528
    li	$a4,0x8010
    beq	$a0,$a4,.L0d9d0a8c
    # Line 530
    li	$t0,0x8019
    # Line 528
    li	$a6,0x8011
    beq	$a0,$a6,.L0d9d0abc
    li	$a7,0x8012
    beq	$a0,$a7,.L0d9d0a50
    # Line 544
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
.L0d9d0a40:
    ld	$ra,8($sp)
.L0d9d0a44:
    # Line 613
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9d0a50:
    # Line 541
    addiu	$a0,$a5,936
.L0d9d0a54:
    # Line 546
    lui	$a6,0xffff
    ori	$a6,$a6,0x7fed
    la	$a5,sub_0da40000
    addu	$a6,$a1,$a6
    sltiu	$a7,$a6,9
    addiu	$a5,$a5,19136
    sll	$a6,$a6,0x2
    beqz	$a7,.L0d9d0aa8
    addu	$a5,$a5,$a6
    lw	$a7,0($a5)
    # Line 586
    li	$v1,5124
    # Line 580
    li	$a1,5124
    # Line 546
    jr	$a7
    # Line 599
    li	$v0,5124
.L0d9d0a8c:
    # Line 530
    beq	$a1,$t0,.L0d9d0cac
    # Line 532
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 530
    li	$t1,0x801b
    beq	$a1,$t1,.L0d9d0cac
    # Line 532
    nop	# was lw $t9, -26452($gp) # &__glSetError
    b	.L0d9d0a54
    # Line 535
    addiu	$a0,$a5,768
.L0d9d0aa8:
    # Line 612
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9d0a44
    ld	$ra,8($sp)
.L0d9d0abc:
    # Line 539
    b	.L0d9d0a54
    # Line 538
    addiu	$a0,$a5,852
.L0d9d0ac4:
    ld	$ra,8($sp)
    # Line 550
    li	$t2,5124
    # Line 613
    ld	$gp,0($sp)
    # Line 550
    beq	$a3,$t2,.L0d9d0c18
    lw	$a1,8($a0)
    # Line 553
    dsll32	$t3,$a1,0x0
    dsrl32	$t3,$t3,0x0
    dmtc1	$t3,$f0
    cvt.s.l	$f0,$f0
    # Line 613
    addiu	$sp,$sp,16
    jr	$ra
    # Line 553
    swc1	$f0,0($a2)
.L0d9d0af4:
    ld	$ra,8($sp)
    # Line 574
    li	$t8,5124
    # Line 613
    ld	$gp,0($sp)
    # Line 574
    beq	$a3,$t8,.L0d9d0c20
    lw	$a1,76($a0)
    # Line 577
    mtc1	$a1,$f1
    cvt.s.w	$f1,$f1
    # Line 613
    addiu	$sp,$sp,16
    jr	$ra
    # Line 577
    swc1	$f1,0($a2)
.L0d9d0b1c:
    ld	$ra,8($sp)
    # Line 568
    li	$t9,5124
    # Line 613
    ld	$gp,0($sp)
    # Line 568
    beq	$a3,$t9,.L0d9d0c28
    lw	$a1,72($a0)
    # Line 571
    mtc1	$a1,$f2
    cvt.s.w	$f2,$f2
    # Line 613
    addiu	$sp,$sp,16
    jr	$ra
    # Line 571
    swc1	$f2,0($a2)
.L0d9d0b44:
    # Line 562
    li	$ra,5124
    # Line 613
    ld	$gp,0($sp)
    # Line 562
    beq	$a3,$ra,.L0d9d0c30
    lw	$a1,68($a0)
    # Line 565
    mtc1	$a1,$f3
    ld	$ra,8($sp)
    cvt.s.w	$f3,$f3
    # Line 613
    addiu	$sp,$sp,16
    jr	$ra
    # Line 565
    swc1	$f3,0($a2)
.L0d9d0b6c:
    ld	$ra,8($sp)
    # Line 556
    li	$at,5124
    # Line 613
    ld	$gp,0($sp)
    # Line 556
    beq	$a3,$at,.L0d9d0c38
    lw	$a1,64($a0)
    # Line 559
    mtc1	$a1,$f4
    cvt.s.w	$f4,$f4
    # Line 613
    addiu	$sp,$sp,16
    jr	$ra
    # Line 559
    swc1	$f4,0($a2)
.L0d9d0b94:
    # Line 599
    beq	$a3,$v0,.L0d9d0c40
    lwc1	$f4,32($a0)
    # Line 605
    swc1	$f4,0($a2)
    # Line 606
    lwc1	$f7,36($a0)
    swc1	$f7,4($a2)
    # Line 607
    lwc1	$f6,40($a0)
    swc1	$f6,8($a2)
    # Line 608
    lwc1	$f5,44($a0)
    b	.L0d9d0a40
    swc1	$f5,12($a2)
.L0d9d0bbc:
    # Line 586
    beq	$a3,$v1,.L0d9d0c70
    lwc1	$f4,16($a0)
    # Line 592
    swc1	$f4,0($a2)
    # Line 593
    lwc1	$f10,20($a0)
    swc1	$f10,4($a2)
    # Line 594
    lwc1	$f9,24($a0)
    swc1	$f9,8($a2)
    # Line 595
    lwc1	$f8,28($a0)
    b	.L0d9d0a40
    swc1	$f8,12($a2)
.L0d9d0be4:
    # Line 580
    beq	$a3,$a1,.L0d9d0ca0
    lw	$a1,4($a0)
    # Line 583
    dsll32	$a3,$a1,0x0
    dsrl32	$a3,$a3,0x0
    dmtc1	$a3,$f11
    cvt.s.l	$f11,$f11
    b	.L0d9d0a40
    swc1	$f11,0($a2)
.L0d9d0c04:
    # Line 527
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9d0a44
    ld	$ra,8($sp)
.L0d9d0c18:
    # Line 551
    b	.L0d9d0a40
    sw	$a1,0($a2)
.L0d9d0c20:
    # Line 575
    b	.L0d9d0a40
    sw	$a1,0($a2)
.L0d9d0c28:
    # Line 569
    b	.L0d9d0a40
    sw	$a1,0($a2)
.L0d9d0c30:
    # Line 563
    b	.L0d9d0a40
    sw	$a1,0($a2)
.L0d9d0c38:
    # Line 557
    b	.L0d9d0a40
    sw	$a1,0($a2)
.L0d9d0c40:
    # Line 600
    trunc.w.s	$f15,$f4
    swc1	$f15,0($a2)
    # Line 601
    lwc1	$f14,36($a0)
    trunc.w.s	$f14,$f14
    swc1	$f14,4($a2)
    # Line 602
    lwc1	$f13,40($a0)
    trunc.w.s	$f13,$f13
    swc1	$f13,8($a2)
    # Line 603
    lwc1	$f12,44($a0)
    trunc.w.s	$f12,$f12
    b	.L0d9d0a40
    swc1	$f12,12($a2)
.L0d9d0c70:
    # Line 587
    trunc.w.s	$f19,$f4
    swc1	$f19,0($a2)
    # Line 588
    lwc1	$f18,20($a0)
    trunc.w.s	$f18,$f18
    swc1	$f18,4($a2)
    # Line 589
    lwc1	$f17,24($a0)
    trunc.w.s	$f17,$f17
    swc1	$f17,8($a2)
    # Line 590
    lwc1	$f16,28($a0)
    trunc.w.s	$f16,$f16
    b	.L0d9d0a40
    swc1	$f16,12($a2)
.L0d9d0ca0:
    # Line 581
    b	.L0d9d0a40
    sw	$a1,0($a2)
    # Line 532
    # lw $t9, -26452($gp) # &__glSetError
.L0d9d0cac:
    bal __glSetError
    li	$a0,1280
    b	.L0d9d0a44
    ld	$ra,8($sp)
.end __GLgetConvolutionParameter

# Function: __glim_GetConvolutionParameterivEXT
# Declared: Line 619 (Source lines: 621-623)
# Address: 0x0d9d0cc0 - 0x0d9d0cf4 (Size: 52 bytes, Frame: 16)
.globl __glim_GetConvolutionParameterivEXT
.ent __glim_GetConvolutionParameterivEXT
__glim_GetConvolutionParameterivEXT:
    # Line 621
    lui	$at,0x8
    addiu	$sp,$sp,-16
    addiu	$at,$at,204
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 622
    # lw $t9, -26368($gp) # &__GLgetConvolutionParameter
    # Line 621
    sd	$ra,0($sp)
    # Line 622
    bal __GLgetConvolutionParameter
    li	$a3,5124
    ld	$ra,0($sp)
    # Line 623
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetConvolutionParameterivEXT

# Function: __glim_GetConvolutionParameterfvEXT
# Declared: Line 625 (Source lines: 627-629)
# Address: 0x0d9d0d00 - 0x0d9d0d34 (Size: 52 bytes, Frame: 16)
.globl __glim_GetConvolutionParameterfvEXT
.ent __glim_GetConvolutionParameterfvEXT
__glim_GetConvolutionParameterfvEXT:
    # Line 627
    lui	$at,0x8
    addiu	$sp,$sp,-16
    addiu	$at,$at,140
    sd	$gp,8($sp)
    addu	$gp,$t9,$at
    # Line 628
    # lw $t9, -26368($gp) # &__GLgetConvolutionParameter
    # Line 627
    sd	$ra,0($sp)
    # Line 628
    bal __GLgetConvolutionParameter
    li	$a3,5126
    ld	$ra,0($sp)
    # Line 629
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,16
.end __glim_GetConvolutionParameterfvEXT

# Function: __glConvolutionParameterfvEXT_size
# Declared: Line 631 (Source lines: 633-641)
# Address: 0x0d9d0d40 - 0x0d9d0d7c (Size: 60 bytes, Frame: 0)
.globl __glConvolutionParameterfvEXT_size
.ent __glConvolutionParameterfvEXT_size
__glConvolutionParameterfvEXT_size:
    # Line 633
    li	$at,0x8013
    li	$v1,0x8015
    beq	$a0,$at,.L0d9d0d6c
    # Line 635
    li	$v0,4
    # Line 633
    li	$v0,0x8014
    beq	$a0,$v0,.L0d9d0d74
    xor	$v1,$a0,$v1
    # Line 639
    li	$a0,16
    # Line 641
    li	$v0,-1
    # Line 635
    jr	$ra
    movz	$v0,$a0,$v1
.L0d9d0d6c:
    jr	$ra
    nop
.L0d9d0d74:
    jr	$ra
    # Line 637
    li	$v0,16
.end __glConvolutionParameterfvEXT_size

# Function: __glConvolutionParameterivEXT_size
# Declared: Line 645 (Source lines: 647-655)
# Address: 0x0d9d0d80 - 0x0d9d0dbc (Size: 60 bytes, Frame: 0)
.globl __glConvolutionParameterivEXT_size
.ent __glConvolutionParameterivEXT_size
__glConvolutionParameterivEXT_size:
    # Line 647
    li	$at,0x8013
    li	$v1,0x8015
    beq	$a0,$at,.L0d9d0dac
    # Line 649
    li	$v0,4
    # Line 647
    li	$v0,0x8014
    beq	$a0,$v0,.L0d9d0db4
    xor	$v1,$a0,$v1
    # Line 653
    li	$a0,16
    # Line 655
    li	$v0,-1
    # Line 649
    jr	$ra
    movz	$v0,$a0,$v1
.L0d9d0dac:
    jr	$ra
    nop
.L0d9d0db4:
    jr	$ra
    # Line 651
    li	$v0,16
.end __glConvolutionParameterivEXT_size

# Function: __glCopyConvolutionPixelModeState
# Declared: Line 674 (Source lines: 676-682)
# Address: 0x0d9d0dc0 - 0x0d9d0efc (Size: 316 bytes, Frame: 0)
.globl __glCopyConvolutionPixelModeState
.ent __glCopyConvolutionPixelModeState
__glCopyConvolutionPixelModeState:
    # Line 676
    lw	$v1,132($a0)
    sw	$v1,132($a1)
    lwc1	$f9,144($a0)
    swc1	$f9,144($a1)
    lwc1	$f8,148($a0)
    swc1	$f8,148($a1)
    lwc1	$f7,152($a0)
    swc1	$f7,152($a1)
    lwc1	$f6,156($a0)
    swc1	$f6,156($a1)
    lwc1	$f5,160($a0)
    swc1	$f5,160($a1)
    lwc1	$f4,164($a0)
    swc1	$f4,164($a1)
    lwc1	$f3,168($a0)
    swc1	$f3,168($a1)
    lwc1	$f2,172($a0)
    swc1	$f2,172($a1)
    lwc1	$f1,176($a0)
    swc1	$f1,176($a1)
    lwc1	$f0,180($a0)
    swc1	$f0,180($a1)
    lwc1	$f31,184($a0)
    swc1	$f31,184($a1)
    lwc1	$f29,188($a0)
    swc1	$f29,188($a1)
    # Line 678
    lw	$v0,216($a0)
    sw	$v0,216($a1)
    lwc1	$f27,228($a0)
    swc1	$f27,228($a1)
    lwc1	$f25,232($a0)
    swc1	$f25,232($a1)
    lwc1	$f23,236($a0)
    swc1	$f23,236($a1)
    lwc1	$f21,240($a0)
    swc1	$f21,240($a1)
    lwc1	$f19,244($a0)
    swc1	$f19,244($a1)
    lwc1	$f18,248($a0)
    swc1	$f18,248($a1)
    lwc1	$f17,252($a0)
    swc1	$f17,252($a1)
    lwc1	$f16,256($a0)
    swc1	$f16,256($a1)
    lwc1	$f15,260($a0)
    swc1	$f15,260($a1)
    lwc1	$f14,264($a0)
    swc1	$f14,264($a1)
    lwc1	$f13,268($a0)
    swc1	$f13,268($a1)
    lwc1	$f12,272($a0)
    swc1	$f12,272($a1)
    # Line 680
    lw	$at,300($a0)
    sw	$at,300($a1)
    lwc1	$f11,312($a0)
    swc1	$f11,312($a1)
    lwc1	$f10,316($a0)
    swc1	$f10,316($a1)
    lwc1	$f9,320($a0)
    swc1	$f9,320($a1)
    lwc1	$f8,324($a0)
    swc1	$f8,324($a1)
    lwc1	$f7,328($a0)
    swc1	$f7,328($a1)
    lwc1	$f6,332($a0)
    swc1	$f6,332($a1)
    lwc1	$f5,336($a0)
    swc1	$f5,336($a1)
    lwc1	$f4,340($a0)
    swc1	$f4,340($a1)
    lwc1	$f3,344($a0)
    swc1	$f3,344($a1)
    lwc1	$f2,348($a0)
    swc1	$f2,348($a1)
    lwc1	$f1,352($a0)
    swc1	$f1,352($a1)
    lwc1	$f0,356($a0)
    # Line 682
    jr	$ra
    # Line 680
    swc1	$f0,356($a1)
.end __glCopyConvolutionPixelModeState

.late_rodata
jtbl_0da44ac0:
    .word .L0d9d0be4
    .word .L0d9d0bbc
    .word .L0d9d0b94
    .word .L0d9d0aa8
    .word .L0d9d0ac4
    .word .L0d9d0b6c
    .word .L0d9d0b44
    .word .L0d9d0b1c
    .word .L0d9d0af4

