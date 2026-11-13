# Source: ../soft/so_colortable.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_colortable.c
# Total Functions: 20

.text

# Function: __glCheckColorTableArgs
# Declared: Line 33 (Source lines: 36-181)
# Address: 0x0d9cad50 - 0x0d9cb55c (Size: 2060 bytes, Frame: 48)
.globl __glCheckColorTableArgs
.ent __glCheckColorTableArgs
__glCheckColorTableArgs:
    # Line 36
    addiu	$sp,$sp,-48
    lui	$t2,0x8
    lui	$t1,0xffff
    addiu	$t2,$t2,24636
    ori	$t1,$t1,0x7f44
    sd	$gp,24($sp)
    addu	$gp,$t9,$t2
    move	$a0,$a4
    addu	$t1,$a1,$t1
    la	$t0,sub_0da40000
    move	$v0,$a3
    sltiu	$t2,$t1,26
    sll	$t1,$t1,0x2
    addiu	$t0,$t0,18680
    beqz	$t2,.L0d9cadfc
    addu	$t0,$t0,$t1
    lw	$t3,0($t0)
    jr	$t3
    # Line 51
    li	$a3,0x8048
.L0d9cad9c:
    sltu	$t8,$a2,$a3
    bnez	$t8,.L0d9cae18
    sltu	$t9,$a3,$a2
    beqz	$t9,.L0d9cae7c
    li	$a3,0x8052
    sltu	$at,$a2,$a3
    bnez	$at,.L0d9caf98
    sltu	$v1,$a3,$a2
    beqz	$v1,.L0d9cae7c
    li	$a3,0x8057
    sltu	$a1,$a2,$a3
    bnez	$a1,.L0d9cb164
    sltu	$a4,$a3,$a2
    beqz	$a4,.L0d9cae7c
    li	$a3,0x805a
    sltu	$a6,$a2,$a3
    bnez	$a6,.L0d9cb3c0
    sltu	$a7,$a3,$a2
    beqz	$a7,.L0d9cae7c
    li	$t0,0x805b
    bne	$a2,$t0,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cadfc:
    # Line 48
    li	$v0,1280
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9cae0c:
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9cae18:
    # Line 51
    li	$a3,0x803e
    sltu	$t1,$a2,$a3
    bnez	$t1,.L0d9caf24
    sltiu	$t8,$a2,6410
    sltu	$t2,$a3,$a2
    beqz	$t2,.L0d9cae7c
    li	$a3,0x8043
    sltu	$t3,$a2,$a3
    bnez	$t3,.L0d9cb06c
    sltu	$t8,$a3,$a2
    beqz	$t8,.L0d9cae7c
    li	$a3,0x8046
    sltu	$t9,$a2,$a3
    bnez	$t9,.L0d9cb2c0
    sltu	$at,$a3,$a2
    beqz	$at,.L0d9cae7c
    li	$v1,0x8047
    bne	$a2,$v1,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cae6c:
    bnez	$a1,.L0d9cb1f8
    li	$t3,6406
    beqz	$a3,.L0d9caf88
    nop
.L0d9cae7c:
    sd	$v0,0($sp)
.L0d9cae80:
    sd	$a5,16($sp)
    # Line 99
    bltz	$v0,.L0d9caf5c
    sd	$a0,8($sp)
    # Line 111
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    sd	$ra,32($sp)
    jal	__glElementsPerGroup
    move	$a0,$a2
    sll	$a2,$v0,0x2
    li	$a5,0x8000
    divu	$zero,$a5,$a2
    ld	$a4,0($sp)
    mflo	$a3
    sltu	$a3,$a3,$a4
    ld	$ra,32($sp)
    bnez	$a3,.L0d9caf14
    teq	$a2,$zero,0x7
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    ld	$a0,8($sp)
    sll	$a6,$v0,0x2
    li	$t1,0x8000
    divu	$zero,$t1,$a6
    ld	$t0,0($sp)
    mflo	$a7
    sltu	$a7,$a7,$t0
    ld	$ra,32($sp)
    bnez	$a7,.L0d9caf14
    teq	$a6,$zero,0x7
    ld	$t2,0($sp)
    addiu	$t3,$t2,-1
    and	$t2,$t2,$t3
    beqz	$t2,.L0d9cafd4
    # Line 122
    ld	$v0,8($sp)
    # Line 120
    li	$v0,1281
    # Line 48
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9caf14:
    # Line 115
    li	$v0,0x8031
    # Line 48
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9caf24:
    # Line 51
    bnez	$t8,.L0d9caf6c
    sltiu	$a3,$a2,6408
    sltiu	$t9,$a2,6411
    bnez	$t9,.L0d9cae7c
    li	$a3,0x803c
    sltu	$at,$a2,$a3
    bnez	$at,.L0d9cb1d4
    sltu	$v1,$a3,$a2
    beqz	$v1,.L0d9cae7c
    li	$a1,0x803d
    bne	$a2,$a1,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9caf5c:
    # Line 103
    li	$v0,1281
    # Line 48
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9caf6c:
    # Line 51
    bnez	$a3,.L0d9cae6c
    sltiu	$a1,$a2,6407
    sltiu	$a3,$a2,6409
    bnez	$a3,.L0d9cae7c
    li	$a4,6409
    beq	$a2,$a4,.L0d9cae7c
    nop
.L0d9caf88:
    # Line 98
    li	$v0,1280
.L0d9caf8c:
    # Line 48
    ld	$gp,24($sp)
    jr	$ra
    addiu	$sp,$sp,48
.L0d9caf98:
    # Line 51
    li	$a3,0x804d
    sltu	$a6,$a2,$a3
    bnez	$a6,.L0d9cb044
    sltu	$a7,$a3,$a2
    beqz	$a7,.L0d9cae7c
    li	$a3,0x8050
    sltu	$t0,$a2,$a3
    bnez	$t0,.L0d9cb28c
    sltu	$t1,$a3,$a2
    beqz	$t1,.L0d9cae7c
    li	$t2,0x8051
    bne	$a2,$t2,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cafd4:
    # Line 122
    sltiu	$v0,$v0,6408
    bnez	$v0,.L0d9cb094
    ld	$a2,8($sp)
    ld	$v1,8($sp)
    sltiu	$v1,$v1,6409
    bnez	$v1,.L0d9cb0e4
    # Line 139
    ld	$a6,16($sp)
    # Line 122
    ld	$a0,8($sp)
    move	$a1,$t1
    sltu	$a0,$a0,$a1
    bnez	$a0,.L0d9cb39c
    ld	$a5,8($sp)
    ld	$a3,8($sp)
    move	$a2,$a1
    sltu	$a2,$a2,$a3
    beqz	$a2,.L0d9cb0e4
    # Line 139
    ld	$a6,16($sp)
    # Line 122
    ld	$a4,8($sp)
    li	$v0,0x80e1
    sltu	$a4,$a4,$v0
    bnez	$a4,.L0d9cb4f8
    ld	$t9,8($sp)
    ld	$a5,8($sp)
    sltu	$a5,$v0,$a5
    beqz	$a5,.L0d9cb0e4
    # Line 139
    ld	$a6,16($sp)
    b	.L0d9cb394
    nop
.L0d9cb044:
    # Line 51
    li	$a3,0x804b
    sltu	$a6,$a2,$a3
    bnez	$a6,.L0d9cb18c
    sltu	$a7,$a3,$a2
    beqz	$a7,.L0d9cae7c
    li	$t0,0x804c
    bne	$a2,$t0,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cb06c:
    li	$a3,0x8041
    sltu	$t1,$a2,$a3
    bnez	$t1,.L0d9cb1b0
    sltu	$t2,$a3,$a2
    beqz	$t2,.L0d9cae7c
    li	$t3,0x8042
    bne	$a2,$t3,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cb094:
    # Line 122
    sltiu	$a2,$a2,6405
    bnez	$a2,.L0d9cb0d0
    ld	$a5,8($sp)
    ld	$a3,8($sp)
    sltiu	$a3,$a3,6406
    bnez	$a3,.L0d9cb0e4
    # Line 139
    ld	$a6,16($sp)
    # Line 122
    ld	$a4,8($sp)
    sltiu	$a4,$a4,6407
    bnez	$a4,.L0d9cb484
    ld	$a3,8($sp)
    bnez	$v0,.L0d9cb0e4
    # Line 139
    ld	$a6,16($sp)
    b	.L0d9cb394
    nop
.L0d9cb0d0:
    # Line 122
    sltiu	$a5,$a5,6404
    bnez	$a5,.L0d9cb388
    ld	$a3,8($sp)
    beqz	$a2,.L0d9cb394
    # Line 139
    ld	$a6,16($sp)
.L0d9cb0e4:
    li	$v0,0x8034
    sltu	$a6,$a6,$v0
    bnez	$a6,.L0d9cb208
    ld	$t8,16($sp)
    ld	$a7,16($sp)
    sltu	$a7,$v0,$a7
    beqz	$a7,.L0d9cb310
    # Line 168
    ld	$v1,8($sp)
    # Line 139
    ld	$t0,16($sp)
    li	$v0,0x8364
    sltu	$t0,$t0,$v0
    bnez	$t0,.L0d9cb414
    ld	$t8,16($sp)
    ld	$t1,16($sp)
    sltu	$t1,$v0,$t1
    beqz	$t1,.L0d9cb248
    # Line 152
    ld	$a0,8($sp)
    # Line 139
    ld	$t2,16($sp)
    li	$v0,0x8367
    sltu	$t2,$t2,$v0
    bnez	$t2,.L0d9cb50c
    ld	$v1,16($sp)
    ld	$t3,16($sp)
    sltu	$t3,$v0,$t3
    beqz	$t3,.L0d9cb310
    # Line 168
    ld	$v1,8($sp)
    # Line 139
    ld	$t8,16($sp)
    li	$t9,0x8368
    bne	$t8,$t9,.L0d9cb364
    nop
    b	.L0d9cb310
    # Line 168
    ld	$v1,8($sp)
.L0d9cb164:
    # Line 51
    li	$a3,0x8055
    sltu	$at,$a2,$a3
    bnez	$at,.L0d9cb268
    sltu	$v1,$a3,$a2
    beqz	$v1,.L0d9cae7c
    li	$a1,0x8056
    bne	$a2,$a1,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cb18c:
    li	$a3,0x804a
    sltu	$a4,$a2,$a3
    bnez	$a4,.L0d9cb2b0
    li	$t1,0x8049
    sltu	$a6,$a3,$a2
    beqz	$a6,.L0d9cae7c
    nop
    b	.L0d9caf8c
    # Line 98
    li	$v0,1280
.L0d9cb1b0:
    # Line 51
    li	$a3,0x8040
    sltu	$a7,$a2,$a3
    bnez	$a7,.L0d9cb2e4
    li	$t8,0x803f
    sltu	$t0,$a3,$a2
    beqz	$t0,.L0d9cae7c
    nop
    b	.L0d9caf8c
    # Line 98
    li	$v0,1280
.L0d9cb1d4:
    # Line 51
    li	$a3,0x803b
    sltu	$t1,$a2,$a3
    bnez	$t1,.L0d9cb2f4
    li	$t9,10768
    sltu	$t2,$a3,$a2
    beqz	$t2,.L0d9cae7c
    nop
    b	.L0d9caf8c
    # Line 98
    li	$v0,1280
.L0d9cb1f8:
    # Line 51
    bne	$a2,$t3,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cb208:
    # Line 139
    sltiu	$t8,$t8,5124
    bnez	$t8,.L0d9cb33c
    ld	$v0,16($sp)
    ld	$t9,16($sp)
    sltiu	$t9,$t9,5125
    bnez	$t9,.L0d9cb380
    ld	$at,16($sp)
    li	$v0,0x8032
    sltu	$at,$at,$v0
    bnez	$at,.L0d9cb44c
    ld	$v1,16($sp)
    ld	$v1,16($sp)
    sltu	$v1,$v0,$v1
    bnez	$v1,.L0d9cb304
    ld	$at,16($sp)
    # Line 152
    ld	$a0,8($sp)
.L0d9cb248:
    li	$a1,6407
    beq	$a0,$a1,.L0d9cb380
    ld	$a2,8($sp)
    li	$a3,0x80e0
    beq	$a2,$a3,.L0d9cb380
    nop
    # Line 157
    b	.L0d9cae0c
    li	$v0,1282
.L0d9cb268:
    # Line 51
    li	$a3,0x8054
    sltu	$a4,$a2,$a3
    bnez	$a4,.L0d9cb3e4
    li	$t1,0x8053
    sltu	$a6,$a3,$a2
    beqz	$a6,.L0d9cae7c
    nop
    b	.L0d9caf8c
    # Line 98
    li	$v0,1280
.L0d9cb28c:
    # Line 51
    li	$a3,0x804f
    sltu	$a7,$a2,$a3
    bnez	$a7,.L0d9cb3f4
    li	$t2,0x804e
    sltu	$t0,$a3,$a2
    beqz	$t0,.L0d9cae7c
    nop
    b	.L0d9caf8c
    # Line 98
    li	$v0,1280
.L0d9cb2b0:
    # Line 51
    bne	$a2,$t1,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cb2c0:
    li	$a3,0x8045
    sltu	$t2,$a2,$a3
    bnez	$t2,.L0d9cb404
    li	$t3,0x8044
    sltu	$t3,$a3,$a2
    beqz	$t3,.L0d9cae7c
    nop
    b	.L0d9caf8c
    # Line 98
    li	$v0,1280
.L0d9cb2e4:
    # Line 51
    bne	$a2,$t8,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cb2f4:
    bne	$a2,$t9,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cb304:
    # Line 139
    li	$v0,0x8033
    bne	$at,$v0,.L0d9cb364
    # Line 168
    ld	$v1,8($sp)
.L0d9cb310:
    li	$a0,6408
    beq	$v1,$a0,.L0d9cb380
    ld	$a2,8($sp)
    li	$a1,0x8000
    beq	$a1,$a2,.L0d9cb380
    ld	$a3,8($sp)
    li	$a4,0x80e1
    beq	$a3,$a4,.L0d9cb380
    nop
    # Line 174
    b	.L0d9cae0c
    li	$v0,1282
.L0d9cb33c:
    # Line 139
    sltiu	$v0,$v0,5122
    bnez	$v0,.L0d9cb36c
    ld	$a2,16($sp)
    ld	$v1,16($sp)
    sltiu	$v1,$v1,5123
    bnez	$v1,.L0d9cb380
    ld	$a0,16($sp)
    li	$a1,5123
    beq	$a0,$a1,.L0d9cb380
    nop
.L0d9cb364:
    # Line 178
    b	.L0d9cae0c
    li	$v0,1280
.L0d9cb36c:
    # Line 139
    sltiu	$a2,$a2,5121
    bnez	$a2,.L0d9cb4d0
    ld	$t1,16($sp)
    beqz	$v0,.L0d9cb364
    nop
.L0d9cb380:
    # Line 181
    b	.L0d9cae0c
    move	$v0,$zero
.L0d9cb388:
    # Line 122
    li	$a4,6403
    beq	$a3,$a4,.L0d9cb0e4
    # Line 139
    ld	$a6,16($sp)
.L0d9cb394:
    # Line 136
    b	.L0d9cae0c
    li	$v0,1280
.L0d9cb39c:
    # Line 122
    sltiu	$a5,$a5,6410
    bnez	$a5,.L0d9cb470
    ld	$a1,8($sp)
    ld	$a6,8($sp)
    sltiu	$a6,$a6,6411
    bnez	$a6,.L0d9cb0e4
    # Line 139
    ld	$a6,16($sp)
    b	.L0d9cb394
    nop
.L0d9cb3c0:
    # Line 51
    li	$a3,0x8059
    sltu	$a7,$a2,$a3
    bnez	$a7,.L0d9cb498
    li	$a6,0x8058
    sltu	$t0,$a3,$a2
    beqz	$t0,.L0d9cae7c
    nop
    b	.L0d9caf8c
    # Line 98
    li	$v0,1280
.L0d9cb3e4:
    # Line 51
    bne	$a2,$t1,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cb3f4:
    bne	$a2,$t2,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cb404:
    bne	$a2,$t3,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cb414:
    # Line 139
    li	$v0,0x8362
    sltu	$t8,$t8,$v0
    bnez	$t8,.L0d9cb4a8
    ld	$a7,16($sp)
    ld	$t9,16($sp)
    sltu	$t9,$v0,$t9
    beqz	$t9,.L0d9cb248
    # Line 152
    ld	$a0,8($sp)
    # Line 139
    ld	$at,16($sp)
    li	$v0,0x8363
    bne	$at,$v0,.L0d9cb364
    nop
    b	.L0d9cb248
    # Line 152
    ld	$a0,8($sp)
.L0d9cb44c:
    # Line 139
    sltiu	$v1,$v1,5126
    bnez	$v1,.L0d9cb4e4
    ld	$t3,16($sp)
    ld	$a0,16($sp)
    sltiu	$a0,$a0,5127
    bnez	$a0,.L0d9cb380
    nop
    b	.L0d9cb364
    nop
.L0d9cb470:
    # Line 122
    li	$a2,6409
    bne	$a1,$a2,.L0d9cb394
    nop
    b	.L0d9cb0e4
    # Line 139
    ld	$a6,16($sp)
.L0d9cb484:
    # Line 122
    li	$a4,6406
    bne	$a3,$a4,.L0d9cb394
    nop
    b	.L0d9cb0e4
    # Line 139
    ld	$a6,16($sp)
.L0d9cb498:
    # Line 51
    bne	$a2,$a6,.L0d9caf88
    nop
    b	.L0d9cae80
    sd	$v0,0($sp)
.L0d9cb4a8:
    # Line 139
    li	$v0,0x8036
    sltu	$a7,$a7,$v0
    bnez	$a7,.L0d9cb534
    ld	$a1,16($sp)
    ld	$t0,16($sp)
    sltu	$t0,$v0,$t0
    beqz	$t0,.L0d9cb310
    # Line 168
    ld	$v1,8($sp)
    b	.L0d9cb364
    nop
.L0d9cb4d0:
    # Line 139
    li	$t2,5120
    bne	$t1,$t2,.L0d9cb364
    nop
    b	.L0d9cb380
    nop
.L0d9cb4e4:
    li	$t8,5125
    bne	$t3,$t8,.L0d9cb364
    nop
    b	.L0d9cb380
    nop
.L0d9cb4f8:
    # Line 122
    li	$at,0x80e0
    bne	$t9,$at,.L0d9cb394
    nop
    b	.L0d9cb0e4
    # Line 139
    ld	$a6,16($sp)
.L0d9cb50c:
    li	$v0,0x8366
    sltu	$v1,$v1,$v0
    bnez	$v1,.L0d9cb548
    ld	$a3,16($sp)
    ld	$a0,16($sp)
    sltu	$a0,$v0,$a0
    beqz	$a0,.L0d9cb310
    # Line 168
    ld	$v1,8($sp)
    b	.L0d9cb364
    nop
.L0d9cb534:
    # Line 139
    li	$a2,0x8035
    bne	$a1,$a2,.L0d9cb364
    nop
    b	.L0d9cb310
    # Line 168
    ld	$v1,8($sp)
.L0d9cb548:
    # Line 139
    li	$a4,0x8365
    bne	$a3,$a4,.L0d9cb364
    nop
    b	.L0d9cb310
    # Line 168
    ld	$v1,8($sp)
.end __glCheckColorTableArgs

# Function: __glCheckColorSubTableArgs
# Declared: Line 189 (Source lines: 195-276)
# Address: 0x0d9cb560 - 0x0d9cb890 (Size: 816 bytes, Frame: 0)
.globl __glCheckColorSubTableArgs
.ent __glCheckColorSubTableArgs
__glCheckColorSubTableArgs:
    # Line 195
    li	$at,0x80d0
    beq	$a1,$at,.L0d9cb594
    li	$v0,0x80d1
    beq	$a1,$v0,.L0d9cb6e0
    li	$v1,0x80d2
    beq	$a1,$v1,.L0d9cb6e8
    li	$a6,0x80bc
    beq	$a1,$a6,.L0d9cb58c
    nop
    # Line 231
    jr	$ra
    # Line 210
    li	$v0,1280
.L0d9cb58c:
    # Line 207
    b	.L0d9cb598
    # Line 206
    addiu	$a1,$a0,5852
.L0d9cb594:
    # Line 197
    addiu	$a1,$a0,5372
.L0d9cb598:
    # Line 213
    bltz	$a2,.L0d9cb60c
    nop
    bltz	$a3,.L0d9cb60c
    nop
    lw	$a7,12($a1)
    addu	$t0,$a2,$a3
    slt	$a7,$a7,$t0
    bnez	$a7,.L0d9cb60c
    # Line 217
    sltiu	$a0,$a4,6408
    bnez	$a0,.L0d9cb614
    sltiu	$a1,$a4,6405
    sltiu	$t1,$a4,6409
    bnez	$t1,.L0d9cb650
    # Line 234
    li	$a0,0x8034
    # Line 217
    li	$a0,0x8000
    sltu	$t2,$a4,$a0
    bnez	$t2,.L0d9cb76c
    sltiu	$t0,$a4,6410
    sltu	$t3,$a0,$a4
    beqz	$t3,.L0d9cb650
    # Line 234
    li	$a0,0x8034
    # Line 217
    li	$a0,0x80e1
    sltu	$t8,$a4,$a0
    bnez	$t8,.L0d9cb838
    sltu	$t9,$a0,$a4
    beqz	$t9,.L0d9cb650
    # Line 234
    li	$a0,0x8034
    b	.L0d9cb764
    nop
.L0d9cb60c:
    # Line 231
    jr	$ra
    # Line 214
    li	$v0,1281
.L0d9cb614:
    # Line 217
    bnez	$a1,.L0d9cb63c
    sltiu	$at,$a4,6406
    bnez	$at,.L0d9cb64c
    sltiu	$v0,$a4,6407
    bnez	$v0,.L0d9cb7e0
    li	$v1,6406
    bnez	$a0,.L0d9cb650
    # Line 234
    li	$a0,0x8034
    b	.L0d9cb764
    nop
.L0d9cb63c:
    # Line 217
    sltiu	$v1,$a4,6404
    bnez	$v1,.L0d9cb75c
    li	$a7,6403
    beqz	$a1,.L0d9cb764
.L0d9cb64c:
    # Line 234
    li	$a0,0x8034
.L0d9cb650:
    sltu	$a1,$a5,$a0
    bnez	$a1,.L0d9cb6a0
    sltu	$a2,$a0,$a5
    beqz	$a2,.L0d9cb6f8
    li	$a0,0x8364
    sltu	$a3,$a5,$a0
    bnez	$a3,.L0d9cb784
    sltu	$a6,$a0,$a5
    beqz	$a6,.L0d9cb6c8
    # Line 247
    li	$at,6407
    # Line 234
    li	$a0,0x8367
    sltu	$a7,$a5,$a0
    bnez	$a7,.L0d9cb84c
    sltu	$t0,$a0,$a5
    beqz	$t0,.L0d9cb6f8
    li	$t1,0x8368
    bne	$a5,$t1,.L0d9cb738
    nop
    b	.L0d9cb6fc
    # Line 263
    li	$a0,6408
.L0d9cb6a0:
    # Line 234
    sltiu	$t2,$a5,5124
    bnez	$t2,.L0d9cb71c
    sltiu	$t3,$a5,5125
    bnez	$t3,.L0d9cb754
    li	$a0,0x8032
    sltu	$t8,$a5,$a0
    bnez	$t8,.L0d9cb7b0
    sltu	$t9,$a0,$a5
    bnez	$t9,.L0d9cb6f0
    # Line 247
    li	$at,6407
.L0d9cb6c8:
    beq	$a4,$at,.L0d9cb754
    li	$v0,0x80e0
    beq	$a4,$v0,.L0d9cb754
    nop
    # Line 231
    jr	$ra
    # Line 252
    li	$v0,1282
.L0d9cb6e0:
    # Line 201
    b	.L0d9cb598
    # Line 200
    addiu	$a1,$a0,5532
.L0d9cb6e8:
    # Line 204
    b	.L0d9cb598
    # Line 203
    addiu	$a1,$a0,5692
.L0d9cb6f0:
    # Line 234
    li	$v1,0x8033
    bne	$a5,$v1,.L0d9cb738
.L0d9cb6f8:
    # Line 263
    li	$a0,6408
.L0d9cb6fc:
    beq	$a4,$a0,.L0d9cb754
    li	$a1,0x8000
    beq	$a4,$a1,.L0d9cb754
    li	$a2,0x80e1
    beq	$a4,$a2,.L0d9cb754
    nop
    # Line 231
    jr	$ra
    # Line 269
    li	$v0,1282
.L0d9cb71c:
    # Line 234
    sltiu	$a0,$a5,5122
    bnez	$a0,.L0d9cb740
    sltiu	$a3,$a5,5123
    bnez	$a3,.L0d9cb754
    li	$a4,5123
    beq	$a5,$a4,.L0d9cb754
    nop
.L0d9cb738:
    # Line 231
    jr	$ra
    # Line 273
    li	$v0,1280
.L0d9cb740:
    # Line 234
    sltiu	$a6,$a5,5121
    bnez	$a6,.L0d9cb814
    li	$a3,5120
    beqz	$a0,.L0d9cb738
    nop
.L0d9cb754:
    # Line 231
    jr	$ra
    # Line 276
    move	$v0,$zero
.L0d9cb75c:
    # Line 217
    beq	$a4,$a7,.L0d9cb650
    # Line 234
    li	$a0,0x8034
.L0d9cb764:
    # Line 231
    jr	$ra
    li	$v0,1280
.L0d9cb76c:
    # Line 217
    bnez	$t0,.L0d9cb7cc
    sltiu	$t1,$a4,6411
    bnez	$t1,.L0d9cb650
    # Line 234
    li	$a0,0x8034
    b	.L0d9cb764
    nop
.L0d9cb784:
    li	$a0,0x8362
    sltu	$t2,$a5,$a0
    bnez	$t2,.L0d9cb7f0
    sltu	$t3,$a0,$a5
    beqz	$t3,.L0d9cb6c8
    # Line 247
    li	$at,6407
    # Line 234
    li	$t8,0x8363
    bne	$a5,$t8,.L0d9cb738
    nop
    b	.L0d9cb6c8
    # Line 247
    li	$at,6407
.L0d9cb7b0:
    # Line 234
    sltiu	$t9,$a5,5126
    bnez	$t9,.L0d9cb824
    sltiu	$at,$a5,5127
    bnez	$at,.L0d9cb754
    nop
    b	.L0d9cb738
    nop
.L0d9cb7cc:
    # Line 217
    li	$v0,6409
    bne	$a4,$v0,.L0d9cb764
    nop
    b	.L0d9cb650
    # Line 234
    li	$a0,0x8034
.L0d9cb7e0:
    # Line 217
    bne	$a4,$v1,.L0d9cb764
    nop
    b	.L0d9cb650
    # Line 234
    li	$a0,0x8034
.L0d9cb7f0:
    li	$a0,0x8036
    sltu	$a1,$a5,$a0
    bnez	$a1,.L0d9cb870
    li	$t1,0x8035
    sltu	$a2,$a0,$a5
    beqz	$a2,.L0d9cb6fc
    # Line 263
    li	$a0,6408
    b	.L0d9cb738
    nop
.L0d9cb814:
    # Line 234
    bne	$a5,$a3,.L0d9cb738
    nop
    b	.L0d9cb754
    nop
.L0d9cb824:
    li	$a4,5125
    bne	$a5,$a4,.L0d9cb738
    nop
    b	.L0d9cb754
    nop
.L0d9cb838:
    # Line 217
    li	$a6,0x80e0
    bne	$a4,$a6,.L0d9cb764
    nop
    b	.L0d9cb650
    # Line 234
    li	$a0,0x8034
.L0d9cb84c:
    li	$a0,0x8366
    sltu	$a7,$a5,$a0
    bnez	$a7,.L0d9cb880
    li	$t2,0x8365
    sltu	$t0,$a0,$a5
    beqz	$t0,.L0d9cb6fc
    # Line 263
    li	$a0,6408
    b	.L0d9cb738
    nop
.L0d9cb870:
    # Line 234
    bne	$a5,$t1,.L0d9cb738
    nop
    b	.L0d9cb6fc
    # Line 263
    li	$a0,6408
.L0d9cb880:
    # Line 234
    bne	$a5,$t2,.L0d9cb738
    nop
    b	.L0d9cb6fc
    # Line 263
    li	$a0,6408
.end __glCheckColorSubTableArgs

# Function: __glLoadColorTableParams
# Declared: Line 282 (Source lines: 285-388)
# Address: 0x0d9cb890 - 0x0d9cbd30 (Size: 1184 bytes, Frame: 0)
.globl __glLoadColorTableParams
.ent __glLoadColorTableParams
__glLoadColorTableParams:
    # Line 289
    li	$a5,0x8048
    # Line 287
    sw	$a3,12($a0)
    # Line 289
    sltu	$at,$a2,$a5
    # Line 286
    sw	$a2,8($a0)
    # Line 289
    bnez	$at,.L0d9cb90c
    # Line 285
    sw	$a1,0($a0)
    # Line 289
    sltu	$v0,$a5,$a2
    beqz	$v0,.L0d9cb96c
    # Line 332
    li	$a1,2
    # Line 289
    li	$a3,0x8052
    sltu	$v1,$a2,$a3
    bnez	$v1,.L0d9cb9d4
    sltu	$a1,$a3,$a2
    beqz	$a1,.L0d9cba94
    li	$a3,0x8057
    sltu	$a4,$a2,$a3
    bnez	$a4,.L0d9cbb28
    sltu	$a5,$a3,$a2
    beqz	$a5,.L0d9cbafc
    # Line 381
    li	$t3,4
    # Line 289
    li	$a3,0x805a
    sltu	$a6,$a2,$a3
    bnez	$a6,.L0d9cbae4
    sltu	$a7,$a3,$a2
    beqz	$a7,.L0d9cbafc
    # Line 381
    li	$t3,4
    # Line 289
    li	$t0,0x805b
    bne	$a2,$t0,.L0d9cb998
    nop
    b	.L0d9cbafc
    # Line 381
    li	$t3,4
.L0d9cb90c:
    # Line 289
    li	$a3,0x803e
    sltu	$t1,$a2,$a3
    bnez	$t1,.L0d9cb9a0
    sltu	$t2,$a3,$a2
    bnez	$t2,.L0d9cba18
    li	$a3,6406
.L0d9cb924:
    # Line 302
    li	$t8,1
.L0d9cb928:
    sw	$t8,76($a0)
    # Line 301
    sw	$a3,72($a0)
    # Line 300
    sw	$zero,36($a0)
    # Line 299
    sw	$zero,32($a0)
    # Line 298
    li	$t3,24
    sw	$t3,28($a0)
    # Line 297
    sw	$zero,24($a0)
    # Line 296
    sw	$zero,20($a0)
    # Line 388
    jr	$ra
    # Line 295
    sw	$zero,16($a0)
.L0d9cb950:
    # Line 289
    li	$a3,0x8045
    sltu	$t9,$a2,$a3
    bnez	$t9,.L0d9cbd20
    li	$t2,0x8044
    sltu	$at,$a3,$a2
    bnez	$at,.L0d9cb998
    # Line 332
    li	$a1,2
.L0d9cb96c:
    sw	$a1,76($a0)
    # Line 331
    li	$v1,6410
    sw	$v1,72($a0)
    # Line 330
    sw	$zero,36($a0)
    # Line 328
    li	$v0,24
    # Line 329
    sw	$v0,32($a0)
    # Line 328
    sw	$v0,28($a0)
    # Line 327
    sw	$zero,24($a0)
    # Line 326
    sw	$zero,20($a0)
    # Line 388
    jr	$ra
    # Line 325
    sw	$zero,16($a0)
.L0d9cb998:
    # Line 388
    jr	$ra
    nop
.L0d9cb9a0:
    # Line 289
    sltiu	$a3,$a2,6410
    bnez	$a3,.L0d9cba5c
    sltiu	$a4,$a2,6411
    bnez	$a4,.L0d9cb96c
    # Line 332
    li	$a1,2
    # Line 289
    li	$a3,0x803c
    sltu	$a5,$a2,$a3
    bnez	$a5,.L0d9cbbe0
    sltu	$a6,$a3,$a2
    bnez	$a6,.L0d9cbc9c
    li	$a3,0x803d
    b	.L0d9cb924
    li	$a3,6406
.L0d9cb9d4:
    li	$a3,0x804d
    sltu	$a7,$a2,$a3
    bnez	$a7,.L0d9cbac4
    sltu	$t0,$a3,$a2
    bnez	$t0,.L0d9cbb94
    li	$a3,0x8049
.L0d9cb9ec:
    # Line 346
    li	$t2,1
.L0d9cb9f0:
    sw	$t2,76($a0)
    # Line 345
    sw	$a3,72($a0)
    # Line 344
    li	$t1,24
    sw	$t1,36($a0)
    # Line 343
    sw	$zero,32($a0)
    # Line 342
    sw	$zero,28($a0)
    # Line 341
    sw	$zero,24($a0)
    # Line 340
    sw	$zero,20($a0)
    # Line 388
    jr	$ra
    # Line 339
    sw	$zero,16($a0)
.L0d9cba18:
    # Line 289
    li	$a3,0x8043
    sltu	$t3,$a2,$a3
    bnez	$t3,.L0d9cbb50
    sltu	$t8,$a3,$a2
    beqz	$t8,.L0d9cb96c
    # Line 332
    li	$a1,2
    # Line 289
    li	$a3,0x8046
    sltu	$t9,$a2,$a3
    bnez	$t9,.L0d9cb950
    sltu	$at,$a3,$a2
    beqz	$at,.L0d9cb96c
    # Line 332
    li	$a1,2
    # Line 289
    li	$v0,0x8047
    bne	$a2,$v0,.L0d9cb998
    nop
    b	.L0d9cb96c
    # Line 332
    li	$a1,2
.L0d9cba5c:
    # Line 289
    sltiu	$a3,$a2,6408
    bnez	$a3,.L0d9cba88
    sltiu	$a1,$a2,6407
    sltiu	$v1,$a2,6409
    bnez	$v1,.L0d9cbafc
    # Line 381
    li	$t3,4
    # Line 289
    li	$a3,6409
    bne	$a3,$a2,.L0d9cb998
    nop
    b	.L0d9cbb6c
    # Line 316
    li	$a2,1
.L0d9cba88:
    # Line 289
    bnez	$a1,.L0d9cbc44
    nop
    beqz	$a3,.L0d9cb998
.L0d9cba94:
    # Line 364
    li	$a4,3
.L0d9cba98:
    sw	$a4,76($a0)
    # Line 363
    li	$a3,6407
    sw	$a3,72($a0)
    # Line 362
    sw	$zero,36($a0)
    # Line 361
    sw	$zero,32($a0)
    # Line 360
    sw	$zero,28($a0)
    # Line 357
    li	$a2,24
    # Line 359
    sw	$a2,24($a0)
    # Line 358
    sw	$a2,20($a0)
    # Line 388
    jr	$ra
    # Line 357
    sw	$a2,16($a0)
.L0d9cbac4:
    # Line 289
    li	$a3,0x804b
    sltu	$a5,$a2,$a3
    bnez	$a5,.L0d9cbbc0
    sltu	$a6,$a3,$a2
    bnez	$a6,.L0d9cbc78
    li	$a1,0x804c
    b	.L0d9cb9ec
    li	$a3,0x8049
.L0d9cbae4:
    li	$a3,0x8059
    sltu	$a7,$a2,$a3
    bnez	$a7,.L0d9cbcf8
    sltu	$t0,$a3,$a2
    bnez	$t0,.L0d9cb998
.L0d9cbaf8:
    # Line 381
    li	$t3,4
.L0d9cbafc:
    sw	$t3,76($a0)
    # Line 380
    li	$t2,6408
    sw	$t2,72($a0)
    # Line 379
    sw	$zero,36($a0)
    # Line 378
    sw	$zero,32($a0)
    # Line 374
    li	$t1,24
    # Line 377
    sw	$t1,28($a0)
    # Line 376
    sw	$t1,24($a0)
    # Line 375
    sw	$t1,20($a0)
    # Line 388
    jr	$ra
    # Line 374
    sw	$t1,16($a0)
.L0d9cbb28:
    # Line 289
    li	$a3,0x8055
    sltu	$t8,$a2,$a3
    bnez	$t8,.L0d9cbc00
    sltu	$t9,$a3,$a2
    beqz	$t9,.L0d9cbaf8
    li	$at,0x8056
    bne	$a2,$at,.L0d9cb998
    nop
    b	.L0d9cbafc
    # Line 381
    li	$t3,4
.L0d9cbb50:
    # Line 289
    li	$a3,0x8041
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0d9cbc20
    sltu	$v1,$a3,$a2
    bnez	$v1,.L0d9cbcd4
    li	$a3,6409
.L0d9cbb68:
    # Line 316
    li	$a2,1
.L0d9cbb6c:
    sw	$a2,76($a0)
    # Line 315
    sw	$a3,72($a0)
    # Line 314
    sw	$zero,36($a0)
    # Line 313
    li	$a1,24
    sw	$a1,32($a0)
    # Line 312
    sw	$zero,28($a0)
    # Line 311
    sw	$zero,24($a0)
    # Line 310
    sw	$zero,20($a0)
    # Line 388
    jr	$ra
    # Line 309
    sw	$zero,16($a0)
.L0d9cbb94:
    # Line 289
    li	$a3,0x8050
    sltu	$a4,$a2,$a3
    bnez	$a4,.L0d9cbc58
    sltu	$a5,$a3,$a2
    beqz	$a5,.L0d9cba98
    # Line 364
    li	$a4,3
    # Line 289
    li	$a6,0x8051
    bne	$a2,$a6,.L0d9cb998
    nop
    b	.L0d9cba98
    # Line 364
    li	$a4,3
.L0d9cbbc0:
    # Line 289
    li	$a3,0x804a
    sltu	$a7,$a2,$a3
    bnez	$a7,.L0d9cbc88
    sltu	$t0,$a3,$a2
    bnez	$t0,.L0d9cb998
    nop
    b	.L0d9cb9ec
    li	$a3,0x8049
.L0d9cbbe0:
    li	$a3,0x803b
    sltu	$t1,$a2,$a3
    bnez	$t1,.L0d9cbcac
    sltu	$t2,$a3,$a2
    bnez	$t2,.L0d9cb998
    nop
    b	.L0d9cb924
    li	$a3,6406
.L0d9cbc00:
    li	$a3,0x8054
    sltu	$t3,$a2,$a3
    bnez	$t3,.L0d9cbcc0
    sltu	$t8,$a3,$a2
    beqz	$t8,.L0d9cba98
    # Line 364
    li	$a4,3
    b	.L0d9cb998
    nop
.L0d9cbc20:
    # Line 289
    li	$a3,0x8040
    sltu	$t9,$a2,$a3
    bnez	$t9,.L0d9cbce8
    li	$a7,0x803f
    sltu	$at,$a3,$a2
    bnez	$at,.L0d9cb998
    nop
    b	.L0d9cbb68
    li	$a3,6409
.L0d9cbc44:
    li	$a3,6406
    bne	$a3,$a2,.L0d9cb998
    nop
    b	.L0d9cb928
    # Line 302
    li	$t8,1
.L0d9cbc58:
    # Line 289
    li	$a3,0x804f
    sltu	$v0,$a2,$a3
    bnez	$v0,.L0d9cbd0c
    sltu	$v1,$a3,$a2
    beqz	$v1,.L0d9cba98
    # Line 364
    li	$a4,3
    b	.L0d9cb998
    nop
.L0d9cbc78:
    # Line 289
    bne	$a2,$a1,.L0d9cb998
    nop
    b	.L0d9cb9ec
    li	$a3,0x8049
.L0d9cbc88:
    li	$a3,0x8049
    bne	$a3,$a2,.L0d9cb998
    nop
    b	.L0d9cb9f0
    # Line 346
    li	$t2,1
.L0d9cbc9c:
    # Line 289
    bne	$a2,$a3,.L0d9cb998
    nop
    b	.L0d9cb924
    li	$a3,6406
.L0d9cbcac:
    li	$a4,10768
    bne	$a2,$a4,.L0d9cb998
    nop
    b	.L0d9cba98
    # Line 364
    li	$a4,3
.L0d9cbcc0:
    # Line 289
    li	$a5,0x8053
    bne	$a2,$a5,.L0d9cb998
    nop
    b	.L0d9cba98
    # Line 364
    li	$a4,3
.L0d9cbcd4:
    # Line 289
    li	$a6,0x8042
    bne	$a2,$a6,.L0d9cb998
    nop
    b	.L0d9cbb68
    li	$a3,6409
.L0d9cbce8:
    bne	$a2,$a7,.L0d9cb998
    nop
    b	.L0d9cbb68
    li	$a3,6409
.L0d9cbcf8:
    li	$t0,0x8058
    bne	$a2,$t0,.L0d9cb998
    nop
    b	.L0d9cbafc
    # Line 381
    li	$t3,4
.L0d9cbd0c:
    # Line 289
    li	$t1,0x804e
    bne	$a2,$t1,.L0d9cb998
    nop
    b	.L0d9cba98
    # Line 364
    li	$a4,3
.L0d9cbd20:
    # Line 289
    bne	$a2,$t2,.L0d9cb998
    nop
    b	.L0d9cb96c
    # Line 332
    li	$a1,2
.end __glLoadColorTableParams

# Function: __glColorTableSGI
# Declared: Line 395 (Source lines: 398-493)
# Address: 0x0d9cbd30 - 0x0d9cc0b4 (Size: 900 bytes, Frame: 128)
.globl __glColorTableSGI
.ent __glColorTableSGI
__glColorTableSGI:
    # Line 398
    addiu	$sp,$sp,-640
    lui	$t3,0x8
    lui	$t2,0xffff
    addiu	$t3,$t3,20572
    ori	$t2,$t2,0x7f44
    sd	$gp,616($sp)
    addu	$gp,$t9,$t3
    addu	$t2,$a1,$t2
    la	$t1,sub_0da40000
    sd	$s1,592($sp)
    move	$s1,$a2
    sltiu	$at,$t2,26
    sll	$t2,$t2,0x2
    addiu	$t1,$t1,18784
    sd	$s0,528($sp)
    beqz	$at,.L0d9cbd80
    addu	$t1,$t1,$t2
    lw	$t8,0($t1)
    jr	$t8
    # Line 423
    addiu	$s0,$a0,5692
.L0d9cbd80:
    # Line 430
    lw	$s0,16($sp)
    sd	$zero,608($sp)
.L0d9cbd88:
    sd	$a4,584($sp)
    sd	$a5,576($sp)
    sd	$a7,568($sp)
    sd	$a6,560($sp)
    sd	$a0,552($sp)
    sd	$a1,544($sp)
    # Line 436
    beqz	$s1,.L0d9cbe28
    sd	$a3,536($sp)
.L0d9cbda8:
    # Line 451
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    sd	$ra,632($sp)
    jal	__glElementsPerGroup
    lw	$a0,72($s0)
    lw	$at,12($s0)
    mult	$at,$v0
    # Line 453
    # lw $t9, -26528($gp) # &__glLoadColorTableParams
    ld	$a3,536($sp)
    move	$a2,$s1
    ld	$a1,544($sp)
    # Line 451
    mflo	$ra
    sd	$ra,600($sp)
    # Line 453
    bal __glLoadColorTableParams
    move	$a0,$s0
    ld	$v0,608($sp)
    beqz	$v0,.L0d9cbe5c
    ld	$s1,592($sp)
.L0d9cbdec:
    ld	$ra,632($sp)
.L0d9cbdf0:
    ld	$s0,528($sp)
    # Line 493
    ld	$gp,616($sp)
    jr	$ra
    addiu	$sp,$sp,640
.L0d9cbe00:
    sd	$a0,552($sp)
    # Line 410
    sd	$zero,608($sp)
    sd	$a4,584($sp)
    sd	$a5,576($sp)
    sd	$a7,568($sp)
    sd	$a6,560($sp)
    sd	$a1,544($sp)
    # Line 409
    addiu	$s0,$a0,5372
    # Line 436
    bnez	$a2,.L0d9cbda8
    sd	$a3,536($sp)
.L0d9cbe28:
    # Line 493
    ld	$gp,616($sp)
    # Line 447
    sw	$zero,36($s0)
    # Line 446
    sw	$zero,32($s0)
    # Line 445
    sw	$zero,28($s0)
    # Line 444
    sw	$zero,24($s0)
    # Line 443
    sw	$zero,20($s0)
    # Line 442
    sw	$zero,16($s0)
    # Line 441
    sw	$zero,12($s0)
    # Line 440
    sw	$zero,8($s0)
    # Line 493
    ld	$s0,528($sp)
    ld	$s1,592($sp)
    jr	$ra
    addiu	$sp,$sp,640
.L0d9cbe5c:
    # Line 458
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    jal	__glElementsPerGroup
    lw	$a0,72($s0)
    ld	$a2,536($sp)
    mult	$v0,$a2
    ld	$v1,600($sp)
    mflo	$a0
    slt	$v1,$v1,$a0
    bnez	$v1,.L0d9cc074
    # Line 459
    nop	# was lw $t9, -27544($gp) # &__glElementsPerGroup
.L0d9cbe84:
    # Line 463
    beqz	$a2,.L0d9cbdf0
    ld	$ra,632($sp)
    ld	$a1,560($sp)
    beqz	$a1,.L0d9cbdf0
    ld	$ra,632($sp)
    lw	$a3,4($s0)
    beqz	$a3,.L0d9cbdec
    # Line 466
    ld	$a0,552($sp)
    ld	$a7,560($sp)
    ld	$a6,576($sp)
    # lw $t9, -27696($gp) # &__glInitMemUnpack
    ld	$a5,584($sp)
    move	$a4,$zero
    li	$a3,1
    ld	$t0,568($sp)
    addiu	$a1,$sp,24
    jal	__glInitMemUnpack
    sw	$t0,4($sp)
    # Line 468
    # lw $t9, -27704($gp) # &__glInitMemLoad
    ld	$a0,552($sp)
    lw	$a3,4($s0)
    lw	$a2,72($s0)
    jal	__glInitMemLoad
    addiu	$a1,$sp,24
    # Line 470
    lwc1	$f4,40($s0)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    c.eq.d	$f0,$f5
    bc1f	.L0d9cbf8c
    # Line 482
    li	$t1,1
    # Line 470
    lwc1	$f1,44($s0)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f5
    bc1f .L0d9cbf8c
    # Line 482
    li	$t1,1
    # Line 470
    lwc1	$f2,48($s0)
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f5
    bc1f .L0d9cbf8c
    # Line 482
    li	$t1,1
    # Line 470
    lwc1	$f3,52($s0)
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f5
    bc1f .L0d9cbf8c
    # Line 482
    li	$t1,1
    # Line 470
    lwc1	$f6,56($s0)
    dmtc1	$zero,$f5
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f5
    bc1f .L0d9cbf8c
    # Line 482
    li	$t1,1
    # Line 470
    lwc1	$f7,60($s0)
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f5
    bc1f .L0d9cbf8c
    # Line 482
    li	$t1,1
    # Line 470
    lwc1	$f8,64($s0)
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f5
    bc1f .L0d9cbf8c
    # Line 482
    li	$t1,1
    # Line 470
    lwc1	$f9,68($s0)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f5
    bc1t .L0d9cc0ac
    # Line 482
    li	$t1,1
.L0d9cbf8c:
    # Line 475
    swc1	$f4,340($sp)
    # Line 476
    lwc1	$f16,44($s0)
    swc1	$f16,344($sp)
    # Line 477
    lwc1	$f15,48($s0)
    swc1	$f15,348($sp)
    # Line 478
    lwc1	$f14,52($s0)
    swc1	$f14,352($sp)
    # Line 479
    lwc1	$f13,56($s0)
    swc1	$f13,356($sp)
    # Line 480
    lwc1	$f12,60($s0)
    swc1	$f12,360($sp)
    # Line 481
    lwc1	$f11,64($s0)
    # Line 482
    sd	$t1,624($sp)
    # Line 481
    swc1	$f11,364($sp)
    # Line 482
    lwc1	$f10,68($s0)
    ld	$s0,624($sp)
    swc1	$f10,368($sp)
.L0d9cbfd0:
    # Line 484
    # lw $t9, -27532($gp) # &__glInitUnpacker
    ld	$a0,552($sp)
    jal	__glInitUnpacker
    addiu	$a1,$sp,24
    # Line 485
    # lw $t9, -28080($gp) # &__glInitPacker
    ld	$a0,552($sp)
    jal	__glInitPacker
    addiu	$a1,$sp,24
    # Line 488
    sb	$zero,452($sp)
    # Line 490
    ld	$a0,552($sp)
    # Line 487
    sb	$s0,451($sp)
    # Line 490
    lw	$t9,12572($a0)
    move	$a2,$zero
    jalr	$t9
    addiu	$a1,$sp,24
    b	.L0d9cbdf0
    ld	$ra,632($sp)
.L0d9cc014:
    # Line 428
    li	$t2,1
    sd	$t2,608($sp)
    b	.L0d9cbd88
    # Line 426
    addiu	$s0,$a0,5772
.L0d9cc024:
    # Line 421
    li	$t3,1
    sd	$t3,608($sp)
    b	.L0d9cbd88
    # Line 419
    addiu	$s0,$a0,5612
.L0d9cc034:
    # Line 414
    li	$s0,1
    sd	$s0,608($sp)
    b	.L0d9cbd88
    # Line 412
    addiu	$s0,$a0,5452
.L0d9cc044:
    # Line 424
    b	.L0d9cbd88
    sd	$zero,608($sp)
.L0d9cc04c:
    # Line 416
    addiu	$s0,$a0,5532
    # Line 417
    b	.L0d9cbd88
    sd	$zero,608($sp)
.L0d9cc058:
    # Line 435
    li	$t8,1
    sd	$t8,608($sp)
    b	.L0d9cbd88
    # Line 433
    addiu	$s0,$a0,5932
.L0d9cc068:
    # Line 430
    addiu	$s0,$a0,5852
    b	.L0d9cbd88
    sd	$zero,608($sp)
.L0d9cc074:
    # Line 459
    jalr	$t9
    lw	$a0,72($s0)
    ld	$ra,536($sp)
    mult	$v0,$ra
    ld	$t9,552($sp)
    move	$a0,$t9
    lw	$t9,8($t9)
    lw	$a1,4($s0)
    mflo	$a2
    jalr	$t9
    sll	$a2,$a2,0x2
    ld	$a2,536($sp)
    b	.L0d9cbe84
    sw	$v0,4($s0)
.L0d9cc0ac:
    b	.L0d9cbfd0
    # Line 482
    move	$s0,$zero
.end __glColorTableSGI

# Function: __glim_ColorTableSGI
# Declared: Line 496 (Source lines: 498-527)
# Address: 0x0d9cc0c0 - 0x0d9cc218 (Size: 344 bytes, Frame: 240)
.globl __glim_ColorTableSGI
.ent __glim_ColorTableSGI
__glim_ColorTableSGI:
    # Line 500
    lw	$v1,4112($zero)
    # Line 498
    addiu	$sp,$sp,-112
    sd	$a5,0($sp)
    sd	$a4,8($sp)
    sd	$a3,24($sp)
    sd	$a2,16($sp)
    # Line 500
    lw	$v0,4120($zero)
    sw	$a1,76($sp)
    sd	$ra,56($sp)
    # Line 498
    sd	$s0,40($sp)
    lui	$at,0x8
    move	$s0,$a0
    # Line 500
    sd	$v1,32($sp)
    # Line 498
    addiu	$at,$at,19660
    sd	$gp,48($sp)
    # Line 500
    beqz	$v0,.L0d9cc144
    # Line 498
    addu	$gp,$t9,$at
    # Line 500
    li	$v1,2
    beq	$v0,$v1,.L0d9cc130
    ld	$t9,32($sp)
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    ld	$ra,56($sp)
.L0d9cc120:
    ld	$s0,40($sp)
    # Line 527
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,112
.L0d9cc130:
    # Line 500
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    sw	$zero,4120($zero)
.L0d9cc144:
    # Line 503
    ld	$a0,32($sp)
    lw	$a2,76($sp)
    # lw $t9, -26536($gp) # &__glCheckColorTableArgs
    ld	$a3,16($sp)
    ld	$a4,24($sp)
    move	$a1,$s0
    bal __glCheckColorTableArgs
    ld	$a5,8($sp)
    beqz	$v0,.L0d9cc1b0
    # Line 505
    li	$v1,0x80d4
    li	$ra,0x80bd
    beq	$s0,$ra,.L0d9cc1a0
    li	$at,0x80d3
    beq	$s0,$at,.L0d9cc1a4
    # Line 510
    li	$a1,0x8031
    # Line 505
    beq	$s0,$v1,.L0d9cc1a0
    li	$a0,0x80d5
    beq	$s0,$a0,.L0d9cc1a0
    # Line 518
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    move	$a0,$v0
    b	.L0d9cc120
    ld	$ra,56($sp)
.L0d9cc1a0:
    # Line 510
    li	$a1,0x8031
.L0d9cc1a4:
    bne	$v0,$a1,.L0d9cc208
    # Line 513
    nop	# was lw $t9, -26452($gp) # &__glSetError
    sw	$zero,76($sp)
.L0d9cc1b0:
    # Line 522
    lw	$a2,76($sp)
    ld	$t9,32($sp)
    ld	$a3,16($sp)
    move	$a0,$t9
    lw	$t9,12664($t9)
    ld	$a4,24($sp)
    move	$a1,$s0
    ld	$a5,8($sp)
    ld	$a6,0($sp)
    jal	__glSetError
    move	$a7,$zero
    # Line 527
    ld	$gp,48($sp)
    # Line 526
    li	$v0,2
    sw	$v0,4120($zero)
    ld	$v0,32($sp)
    ld	$ra,56($sp)
    lw	$at,11756($v0)
    # Line 527
    ld	$s0,40($sp)
    addiu	$sp,$sp,112
    # Line 526
    ori	$at,$at,0x11
    # Line 527
    jr	$ra
    # Line 526
    sw	$at,11756($v0)
.L0d9cc208:
    # Line 513
    bal __glSetError
    move	$a0,$v0
    b	.L0d9cc120
    ld	$ra,56($sp)
.end __glim_ColorTableSGI

# Function: __glColorSubTable
# Declared: Line 535 (Source lines: 538-588)
# Address: 0x0d9cc220 - 0x0d9cc440 (Size: 544 bytes, Frame: 192)
.globl __glColorSubTable
.ent __glColorSubTable
__glColorSubTable:
    # Line 538
    move	$t8,$a6
    addiu	$sp,$sp,-576
    move	$t1,$a5
    move	$t2,$a4
    sd	$s5,536($sp)
    move	$t3,$a3
    move	$s5,$a7
    sd	$s1,560($sp)
    # Line 547
    addiu	$s1,$a0,5372
    # Line 538
    sd	$s8,544($sp)
    move	$s8,$a2
    # Line 545
    li	$at,0x80d0
    # Line 538
    lui	$v0,0x8
    sd	$s0,528($sp)
    move	$s0,$a0
    addiu	$v0,$v0,19308
    sd	$gp,552($sp)
    # Line 545
    beq	$a1,$at,.L0d9cc41c
    # Line 538
    addu	$gp,$t9,$v0
    # Line 545
    li	$v1,0x80d1
    beq	$a1,$v1,.L0d9cc424
    # Line 553
    addiu	$s1,$s0,5692
    # Line 545
    li	$a0,0x80d2
    beq	$a1,$a0,.L0d9cc430
    # Line 556
    addiu	$a3,$s0,5852
    # Line 545
    lw	$s1,16($sp)
    li	$a2,0x80bc
    xor	$a2,$a1,$a2
    sd	$ra,568($sp)
    movz	$s1,$a3,$a2
.L0d9cc298:
    # Line 561
    move	$a0,$s0
    move	$a7,$t8
    move	$a6,$t1
    # lw $t9, -27696($gp) # &__glInitMemUnpack
    move	$a5,$t2
    move	$a4,$zero
    li	$a3,1
    move	$a2,$t3
    sw	$s5,4($sp)
    jal	__glInitMemUnpack
    addiu	$a1,$sp,24
    # Line 562
    # lw $t9, -27704($gp) # &__glInitMemLoad
    move	$a0,$s0
    lw	$a3,4($s1)
    lw	$a2,72($s1)
    jal	__glInitMemLoad
    addiu	$a1,$sp,24
    # Line 564
    lwc1	$f4,40($s1)
    ldc1	$f5,_lit8_3ff0000000000000
    lwc1	$f6,56($s1)
    cvt.d.s	$f0,$f4
    lwc1	$f8,64($s1)
    lwc1	$f7,60($s1)
    c.eq.d	$f0,$f5
    lwc1	$f3,52($s1)
    lwc1	$f2,48($s1)
    # Line 576
    li	$s5,1
    # Line 564
    bc1f	.L0d9cc380
    lwc1	$f1,44($s1)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f5
    bc1f .L0d9cc380
    nop
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f5
    bc1f .L0d9cc380
    nop
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f5
    bc1f .L0d9cc380
    dmtc1	$zero,$f5
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f5
    bc1f .L0d9cc380
    nop
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f5
    bc1f .L0d9cc380
    nop
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f5
    bc1f .L0d9cc380
    nop
    lwc1	$f9,68($s1)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f5
    bc1t .L0d9cc438
    nop
.L0d9cc380:
    # Line 569
    swc1	$f4,340($sp)
    # Line 570
    lwc1	$f16,44($s1)
    swc1	$f16,344($sp)
    # Line 571
    lwc1	$f15,48($s1)
    swc1	$f15,348($sp)
    # Line 572
    lwc1	$f14,52($s1)
    swc1	$f14,352($sp)
    # Line 573
    lwc1	$f13,56($s1)
    swc1	$f13,356($sp)
    # Line 574
    lwc1	$f12,60($s1)
    swc1	$f12,360($sp)
    # Line 575
    lwc1	$f11,64($s1)
    swc1	$f11,364($sp)
    # Line 576
    lwc1	$f10,68($s1)
    swc1	$f10,368($sp)
.L0d9cc3bc:
    # Line 581
    # lw $t9, -27532($gp) # &__glInitUnpacker
    ld	$s1,560($sp)
    addiu	$a1,$sp,24
    move	$a0,$s0
    jal	__glInitUnpacker
    # Line 579
    sw	$s8,152($sp)
    # Line 582
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    ld	$s8,544($sp)
    jal	__glInitPacker
    addiu	$a1,$sp,24
    # Line 585
    sb	$zero,452($sp)
    # Line 584
    sb	$s5,451($sp)
    # Line 587
    lw	$t9,12572($s0)
    move	$a2,$zero
    addiu	$a1,$sp,24
    jalr	$t9
    move	$a0,$s0
    ld	$ra,568($sp)
    ld	$s0,528($sp)
    ld	$s5,536($sp)
    # Line 588
    ld	$gp,552($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0d9cc41c:
    b	.L0d9cc298
    sd	$ra,568($sp)
.L0d9cc424:
    # Line 550
    addiu	$s1,$a0,5532
    # Line 551
    b	.L0d9cc298
    sd	$ra,568($sp)
.L0d9cc430:
    # Line 554
    b	.L0d9cc298
    sd	$ra,568($sp)
.L0d9cc438:
    b	.L0d9cc3bc
    # Line 576
    move	$s5,$zero
.end __glColorSubTable

# Function: __glim_ColorSubTable
# Declared: Line 590 (Source lines: 593-612)
# Address: 0x0d9cc440 - 0x0d9cc558 (Size: 280 bytes, Frame: 208)
.globl __glim_ColorSubTable
.ent __glim_ColorSubTable
__glim_ColorSubTable:
    # Line 595
    lw	$v1,4112($zero)
    # Line 593
    addiu	$sp,$sp,-80
    sd	$a5,0($sp)
    sd	$a4,16($sp)
    sd	$a3,32($sp)
    sd	$a2,40($sp)
    sd	$a1,24($sp)
    sd	$a0,8($sp)
    # Line 595
    lw	$v0,4120($zero)
    sd	$ra,64($sp)
    # Line 593
    lui	$at,0x8
    # Line 595
    sd	$v1,48($sp)
    # Line 593
    addiu	$at,$at,18764
    sd	$gp,56($sp)
    # Line 595
    beqz	$v0,.L0d9cc4bc
    # Line 593
    addu	$gp,$t9,$at
    # Line 595
    li	$v1,2
    beq	$v0,$v1,.L0d9cc4a8
    ld	$t9,48($sp)
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
.L0d9cc498:
    ld	$ra,64($sp)
.L0d9cc49c:
    # Line 612
    ld	$gp,56($sp)
    jr	$ra
    addiu	$sp,$sp,80
.L0d9cc4a8:
    # Line 595
    move	$a0,$t9
    lw	$t9,11784($t9)
    jal	__glSetError
    nop
    sw	$zero,4120($zero)
.L0d9cc4bc:
    # Line 598
    ld	$a0,48($sp)
    ld	$a1,8($sp)
    ld	$a2,24($sp)
    # lw $t9, -26532($gp) # &__glCheckColorSubTableArgs
    ld	$a3,40($sp)
    ld	$a4,32($sp)
    bal __glCheckColorSubTableArgs
    ld	$a5,16($sp)
    beqz	$v0,.L0d9cc4f8
    # Line 603
    ld	$ra,40($sp)
    # Line 600
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    move	$a0,$v0
    b	.L0d9cc49c
    ld	$ra,64($sp)
.L0d9cc4f8:
    # Line 603
    beqz	$ra,.L0d9cc498
    ld	$at,0($sp)
    beqz	$at,.L0d9cc498
    # Line 607
    ld	$a1,8($sp)
    ld	$a2,24($sp)
    ld	$t9,48($sp)
    ld	$a3,40($sp)
    move	$a0,$t9
    lw	$t9,12668($t9)
    ld	$a4,32($sp)
    ld	$a5,16($sp)
    ld	$a6,0($sp)
    jal	__glSetError
    move	$a7,$zero
    # Line 611
    li	$v0,2
    sw	$v0,4120($zero)
    ld	$v0,48($sp)
    ld	$ra,64($sp)
    lw	$at,11756($v0)
    # Line 612
    ld	$gp,56($sp)
    addiu	$sp,$sp,80
    # Line 611
    ori	$at,$at,0x11
    # Line 612
    jr	$ra
    # Line 611
    sw	$at,11756($v0)
.end __glim_ColorSubTable

# Function: __glim_GetColorTableSGI
# Declared: Line 614 (Source lines: 616-675)
# Address: 0x0d9cc560 - 0x0d9cc754 (Size: 500 bytes, Frame: 192)
.globl __glim_GetColorTableSGI
.ent __glim_GetColorTableSGI
__glim_GetColorTableSGI:
    # Line 616
    addiu	$sp,$sp,-576
    sd	$a3,520($sp)
    sd	$a2,536($sp)
    sd	$a1,528($sp)
    sd	$a0,544($sp)
    sd	$s0,552($sp)
    # Line 620
    lw	$v0,4120($zero)
    lw	$s0,4112($zero)
    # Line 616
    lui	$at,0x8
    sd	$ra,568($sp)
    addiu	$at,$at,18476
    sd	$gp,560($sp)
    # Line 620
    beqz	$v0,.L0d9cc5d0
    # Line 616
    addu	$gp,$t9,$at
    # Line 620
    li	$v1,2
    beq	$v0,$v1,.L0d9cc5c0
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
.L0d9cc5ac:
    ld	$ra,568($sp)
.L0d9cc5b0:
    ld	$s0,552($sp)
    # Line 675
    ld	$gp,560($sp)
    jr	$ra
    addiu	$sp,$sp,576
.L0d9cc5c0:
    # Line 620
    lw	$t9,11784($s0)
    jal	__glSetError
    move	$a0,$s0
    sw	$zero,4120($zero)
.L0d9cc5d0:
    # Line 625
    # lw $t9, -26536($gp) # &__glCheckColorTableArgs
    ld	$a1,544($sp)
    move	$a0,$s0
    ld	$a5,536($sp)
    move	$a3,$zero
    ld	$a4,528($sp)
    bal __glCheckColorTableArgs
    li	$a2,6407
    beqz	$v0,.L0d9cc60c
    # Line 631
    lui	$a0,0xffff
    # Line 627
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    move	$a0,$v0
    b	.L0d9cc5b0
    ld	$ra,568($sp)
.L0d9cc60c:
    # Line 631
    ld	$v1,544($sp)
    ori	$a0,$a0,0x7f44
    la	$v0,sub_0da40000
    addu	$v1,$v1,$a0
    sltiu	$a0,$v1,26
    addiu	$v0,$v0,18888
    sll	$v1,$v1,0x2
    beqz	$a0,.L0d9cc63c
    addu	$v0,$v0,$v1
    lw	$a1,0($v0)
    jr	$a1
    # Line 642
    nop	# was lw $t9, -26452($gp) # &__glSetError
.L0d9cc63c:
    # Line 657
    lw	$v0,0($sp)
.L0d9cc640:
    # Line 661
    lw	$a2,12($v0)
    beqz	$a2,.L0d9cc5ac
    lw	$a5,4($v0)
    beqz	$a5,.L0d9cc5ac
    sd	$v0,512($sp)
    # Line 664
    # lw $t9, -27700($gp) # &__glInitMemGet
    ld	$a4,512($sp)
    move	$a0,$s0
    li	$a3,1
    addiu	$a1,$sp,8
    jal	__glInitMemGet
    lw	$a4,72($a4)
    # Line 665
    ld	$a7,520($sp)
    ld	$a6,536($sp)
    # lw $t9, -27692($gp) # &__glInitMemPack
    move	$a0,$s0
    ld	$a2,512($sp)
    ld	$a5,528($sp)
    move	$a4,$zero
    li	$a3,1
    addiu	$a1,$sp,8
    jal	__glInitMemPack
    lw	$a2,12($a2)
    # Line 666
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s0
    jal	__glInitUnpacker
    addiu	$a1,$sp,8
    # Line 667
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,8
    # Line 669
    li	$a3,1
    # Line 671
    sb	$a3,438($sp)
    # Line 670
    sb	$zero,436($sp)
    # Line 669
    sb	$a3,432($sp)
    # Line 673
    lw	$t9,12572($s0)
    move	$a2,$zero
    addiu	$a1,$sp,8
    jalr	$t9
    move	$a0,$s0
    b	.L0d9cc5b0
    ld	$ra,568($sp)
.L0d9cc6e8:
    # Line 634
    b	.L0d9cc640
    # Line 633
    addiu	$v0,$s0,5372
.L0d9cc6f0:
    # Line 648
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9cc5b0
    ld	$ra,568($sp)
.L0d9cc704:
    # Line 642
    bal __glSetError
    li	$a0,1280
    b	.L0d9cc5b0
    ld	$ra,568($sp)
.L0d9cc714:
    # Line 636
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9cc5b0
    ld	$ra,568($sp)
.L0d9cc728:
    # Line 646
    b	.L0d9cc640
    # Line 645
    addiu	$v0,$s0,5692
.L0d9cc730:
    # Line 640
    b	.L0d9cc640
    # Line 639
    addiu	$v0,$s0,5532
.L0d9cc738:
    # Line 654
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    b	.L0d9cc5b0
    ld	$ra,568($sp)
.L0d9cc74c:
    # Line 652
    b	.L0d9cc640
    # Line 651
    addiu	$v0,$s0,5852
.end __glim_GetColorTableSGI

# Function: __glColorTableModifiers
# Declared: Line 681 (Source lines: 683-762)
# Address: 0x0d9cc760 - 0x0d9cc958 (Size: 504 bytes, Frame: 16)
.globl __glColorTableModifiers
.ent __glColorTableModifiers
__glColorTableModifiers:
    # Line 683
    addiu	$sp,$sp,-16
    lui	$a4,0x8
    lui	$v1,0xffff
    addiu	$a4,$a4,17964
    ori	$v1,$v1,0x7f44
    sd	$gp,0($sp)
    addu	$gp,$t9,$a4
    addu	$v1,$a1,$v1
    la	$v0,sub_0da40000
    sltiu	$at,$v1,26
    sll	$v1,$v1,0x2
    addiu	$v0,$v0,18992
    sd	$ra,8($sp)
    beqz	$at,.L0d9cc7a8
    addu	$v0,$v0,$v1
    lw	$a5,0($v0)
    jr	$a5
    # Line 701
    li	$a6,1
.L0d9cc7a8:
    # Line 717
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 718
    move	$v0,$zero
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cc7c8:
    ld	$ra,8($sp)
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cc7d8:
    # Line 689
    addiu	$a5,$a0,5372
    # Line 690
    b	.L0d9cc7ec
    move	$a6,$zero
.L0d9cc7e4:
    # Line 710
    addiu	$a5,$a0,5852
    move	$a6,$zero
.L0d9cc7ec:
    # Line 719
    lui	$v1,0xffff
    ori	$v1,$v1,0x7f2a
    la	$v0,sub_0da40000
    addu	$v1,$a2,$v1
    sltiu	$a0,$v1,10
    addiu	$v0,$v0,19096
    sll	$v1,$v1,0x2
    beqz	$a0,.L0d9cc860
    addu	$v0,$v0,$v1
    lw	$a0,0($v0)
    jr	$a0
    # Line 727
    addiu	$v0,$a5,12
.L0d9cc81c:
    # Line 708
    li	$a6,1
    b	.L0d9cc7ec
    # Line 706
    addiu	$a5,$a0,5772
.L0d9cc828:
    # Line 701
    b	.L0d9cc7ec
    # Line 699
    addiu	$a5,$a0,5612
.L0d9cc830:
    # Line 694
    li	$a6,1
    b	.L0d9cc7ec
    # Line 692
    addiu	$a5,$a0,5452
.L0d9cc83c:
    # Line 703
    addiu	$a5,$a0,5692
    # Line 704
    b	.L0d9cc7ec
    move	$a6,$zero
.L0d9cc848:
    # Line 696
    addiu	$a5,$a0,5532
    # Line 697
    b	.L0d9cc7ec
    move	$a6,$zero
.L0d9cc854:
    # Line 715
    li	$a6,1
    b	.L0d9cc7ec
    # Line 713
    addiu	$a5,$a0,5932
.L0d9cc860:
    # Line 761
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    ld	$ra,8($sp)
    # Line 762
    move	$v0,$zero
    # Line 718
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cc880:
    # Line 724
    addiu	$v0,$a5,8
    # Line 723
    li	$a1,1
    # Line 724
    b	.L0d9cc7c8
    # Line 723
    sw	$a1,0($a3)
.L0d9cc890:
    # Line 745
    addiu	$v0,$a5,36
    # Line 744
    li	$a2,1
    # Line 745
    b	.L0d9cc7c8
    # Line 744
    sw	$a2,0($a3)
.L0d9cc8a0:
    # Line 742
    addiu	$v0,$a5,32
    # Line 741
    li	$a4,1
    # Line 742
    b	.L0d9cc7c8
    # Line 741
    sw	$a4,0($a3)
.L0d9cc8b0:
    # Line 739
    addiu	$v0,$a5,28
    # Line 738
    li	$a6,1
    # Line 739
    b	.L0d9cc7c8
    # Line 738
    sw	$a6,0($a3)
.L0d9cc8c0:
    # Line 736
    addiu	$v0,$a5,24
    # Line 735
    li	$a7,1
    # Line 736
    b	.L0d9cc7c8
    # Line 735
    sw	$a7,0($a3)
.L0d9cc8d0:
    ld	$ra,8($sp)
    # Line 733
    addiu	$v0,$a5,20
    # Line 732
    li	$t0,1
    sw	$t0,0($a3)
    # Line 718
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cc8ec:
    # Line 730
    addiu	$v0,$a5,16
    # Line 729
    li	$t1,1
    # Line 730
    b	.L0d9cc7c8
    # Line 729
    sw	$t1,0($a3)
.L0d9cc8fc:
    # Line 726
    li	$t2,1
    # Line 727
    b	.L0d9cc7c8
    # Line 726
    sw	$t2,0($a3)
.L0d9cc908:
    # Line 754
    beqz	$a6,.L0d9cc938
    # Line 755
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 756
    b	.L0d9cc7c8
    move	$v0,$zero
.L0d9cc920:
    # Line 747
    beqz	$a6,.L0d9cc948
    # Line 748
    nop	# was lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1280
    # Line 749
    b	.L0d9cc7c8
    move	$v0,$zero
.L0d9cc938:
    # Line 758
    li	$t3,4
    # Line 759
    addiu	$v0,$a5,56
    b	.L0d9cc7c8
    # Line 758
    sw	$t3,0($a3)
.L0d9cc948:
    # Line 751
    li	$t8,4
    # Line 752
    addiu	$v0,$a5,40
    b	.L0d9cc7c8
    # Line 751
    sw	$t8,0($a3)
.end __glColorTableModifiers

# Function: __glColorTableParameterv
# Declared: Line 768 (Source lines: 770-798)
# Address: 0x0d9cc960 - 0x0d9ccae4 (Size: 388 bytes, Frame: 32)
.ent __glColorTableParameterv
__glColorTableParameterv:
    # Line 770
    addiu	$sp,$sp,-32
    # Line 775
    # lw $t9, -26512($gp) # &__glColorTableModifiers
    # Line 770
    sd	$s1,16($sp)
    move	$s1,$a4
    sd	$s0,8($sp)
    move	$s0,$a3
    sd	$ra,24($sp)
    # Line 775
    bal __glColorTableModifiers
    addiu	$a3,$sp,0
    # Line 786
    move	$a2,$zero
    # Line 775
    beqz	$v0,.L0d9cca94
    ld	$ra,24($sp)
    # Line 776
    li	$at,1
    lw	$a3,0($sp)
    beq	$a3,$at,.L0d9ccaa4
    nop
    # Line 786
    beqz	$s1,.L0d9cc9f0
    nop
    blez	$a3,.L0d9cc9f0
    nop
.L0d9cc9b0:
    # Line 790
    lwc1	$f0,0($s1)
    swc1	$f0,0($v0)
    # Line 789
    lw	$a3,0($sp)
    addiu	$a2,$a2,1
    slt	$v1,$a2,$a3
    # Line 790
    addiu	$v0,$v0,4
    # Line 789
    beqz	$v1,.L0d9cc9f0
    nop
    # Line 790
    lwc1	$f1,4($s1)
    swc1	$f1,0($v0)
    # Line 789
    lw	$a3,0($sp)
    addiu	$a2,$a2,1
    slt	$a0,$a2,$a3
    # Line 790
    addiu	$v0,$v0,4
    # Line 789
    bnez	$a0,.L0d9cc9b0
    # Line 790
    addiu	$s1,$s1,8
.L0d9cc9f0:
    # Line 789
    beqz	$s0,.L0d9cca94
    nop
    blez	$a3,.L0d9cca94
    move	$a2,$zero
.L0d9cca00:
    # Line 795
    lw	$a3,0($s0)
    mtc1	$a3,$f2
    cvt.s.w	$f2,$f2
    swc1	$f2,0($v0)
    # Line 794
    lw	$a1,0($sp)
    addiu	$a2,$a2,1
    slt	$a1,$a2,$a1
    beqz	$a1,.L0d9cca94
    nop
    # Line 795
    lw	$a5,4($s0)
    mtc1	$a5,$f3
    cvt.s.w	$f3,$f3
    swc1	$f3,4($v0)
    # Line 794
    lw	$a4,0($sp)
    addiu	$a2,$a2,1
    slt	$a4,$a2,$a4
    beqz	$a4,.L0d9cca94
    nop
    # Line 795
    lw	$a7,8($s0)
    mtc1	$a7,$f4
    cvt.s.w	$f4,$f4
    swc1	$f4,8($v0)
    # Line 794
    lw	$a6,0($sp)
    addiu	$a2,$a2,1
    slt	$a6,$a2,$a6
    beqz	$a6,.L0d9cca94
    nop
    # Line 795
    lw	$t1,12($s0)
    mtc1	$t1,$f5
    cvt.s.w	$f5,$f5
    swc1	$f5,12($v0)
    # Line 794
    lw	$t0,0($sp)
    addiu	$a2,$a2,1
    slt	$t0,$a2,$t0
    # Line 795
    addiu	$v0,$v0,16
    # Line 794
    bnez	$t0,.L0d9cca00
    # Line 795
    addiu	$s0,$s0,16
.L0d9cca94:
    ld	$s0,8($sp)
.L0d9cca98:
    ld	$s1,16($sp)
    # Line 798
    jr	$ra
    addiu	$sp,$sp,32
.L0d9ccaa4:
    # Line 776
    beqz	$s1,.L0d9ccac4
    nop
    # Line 780
    lwc1	$f6,0($s1)
    trunc.w.s	$f6,$f6
    bnez	$s0,.L0d9ccacc
    swc1	$f6,0($v0)
    b	.L0d9cca98
    ld	$s0,8($sp)
.L0d9ccac4:
    beqz	$s0,.L0d9cca94
    nop
.L0d9ccacc:
    # Line 782
    lw	$t2,0($s0)
    # Line 798
    ld	$s0,8($sp)
    ld	$s1,16($sp)
    addiu	$sp,$sp,32
    jr	$ra
    # Line 782
    sw	$t2,0($v0)
.end __glColorTableParameterv

# Function: __glim_ColorTableParameterivSGI
# Declared: Line 800 (Source lines: 802-805)
# Address: 0x0d9ccaf0 - 0x0d9ccb60 (Size: 112 bytes, Frame: 16)
.globl __glim_ColorTableParameterivSGI
.ent __glim_ColorTableParameterivSGI
__glim_ColorTableParameterivSGI:
    # Line 802
    move	$a3,$a2
    move	$a6,$a1
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x8
    move	$a7,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,17052
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9ccb4c
    addu	$gp,$t9,$v1
    # Line 804
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-13984
    move	$a4,$zero
    move	$a2,$a1
    move	$a1,$a0
    bal __glColorTableModifiers
    lw	$a0,4112($zero)
    ld	$ra,8($sp)
.L0d9ccb40:
    # Line 805
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9ccb4c:
    # Line 803
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9ccb40
    ld	$ra,8($sp)
.end __glim_ColorTableParameterivSGI

# Function: __glim_ColorTableParameterfvSGI
# Declared: Line 807 (Source lines: 809-812)
# Address: 0x0d9ccb60 - 0x0d9ccbd0 (Size: 112 bytes, Frame: 16)
.globl __glim_ColorTableParameterfvSGI
.ent __glim_ColorTableParameterfvSGI
__glim_ColorTableParameterfvSGI:
    # Line 809
    move	$a4,$a2
    move	$a6,$a1
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x8
    move	$a7,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,16940
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9ccbbc
    addu	$gp,$t9,$v1
    # Line 811
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-13984
    move	$a3,$zero
    move	$a2,$a1
    move	$a1,$a0
    bal __glColorTableModifiers
    lw	$a0,4112($zero)
    ld	$ra,8($sp)
.L0d9ccbb0:
    # Line 812
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9ccbbc:
    # Line 810
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9ccbb0
    ld	$ra,8($sp)
.end __glim_ColorTableParameterfvSGI

# Function: __glGetColorTableParameterv
# Declared: Line 815 (Source lines: 817-845)
# Address: 0x0d9ccbd0 - 0x0d9ccd44 (Size: 372 bytes, Frame: 32)
.ent __glGetColorTableParameterv
__glGetColorTableParameterv:
    # Line 817
    addiu	$sp,$sp,-32
    # Line 822
    # lw $t9, -26512($gp) # &__glColorTableModifiers
    # Line 817
    sd	$s1,16($sp)
    move	$s1,$a4
    sd	$s0,8($sp)
    move	$s0,$a3
    sd	$ra,24($sp)
    # Line 822
    bal __glColorTableModifiers
    addiu	$a3,$sp,0
    # Line 833
    move	$a2,$zero
    # Line 822
    beqz	$v0,.L0d9cccf4
    ld	$ra,24($sp)
    # Line 823
    li	$at,1
    lw	$a3,0($sp)
    beq	$a3,$at,.L0d9ccd04
    nop
    # Line 833
    beqz	$s1,.L0d9ccc60
    nop
    blez	$a3,.L0d9ccc60
    nop
.L0d9ccc20:
    # Line 837
    lwc1	$f0,0($v0)
    swc1	$f0,0($s1)
    # Line 836
    lw	$a3,0($sp)
    addiu	$a2,$a2,1
    slt	$v1,$a2,$a3
    # Line 837
    addiu	$v0,$v0,4
    # Line 836
    beqz	$v1,.L0d9ccc60
    nop
    # Line 837
    lwc1	$f1,0($v0)
    swc1	$f1,4($s1)
    # Line 836
    lw	$a3,0($sp)
    addiu	$a2,$a2,1
    slt	$a0,$a2,$a3
    # Line 837
    addiu	$s1,$s1,8
    # Line 836
    bnez	$a0,.L0d9ccc20
    # Line 837
    addiu	$v0,$v0,4
.L0d9ccc60:
    # Line 836
    beqz	$s0,.L0d9cccf4
    nop
    blez	$a3,.L0d9cccf4
    move	$a2,$zero
.L0d9ccc70:
    # Line 842
    lwc1	$f2,0($v0)
    trunc.w.s	$f2,$f2
    swc1	$f2,0($s0)
    # Line 841
    lw	$a1,0($sp)
    addiu	$a2,$a2,1
    slt	$a1,$a2,$a1
    beqz	$a1,.L0d9cccf4
    nop
    # Line 842
    lwc1	$f3,4($v0)
    trunc.w.s	$f3,$f3
    swc1	$f3,4($s0)
    # Line 841
    lw	$a3,0($sp)
    addiu	$a2,$a2,1
    slt	$a3,$a2,$a3
    beqz	$a3,.L0d9cccf4
    nop
    # Line 842
    lwc1	$f4,8($v0)
    trunc.w.s	$f4,$f4
    swc1	$f4,8($s0)
    # Line 841
    lw	$a4,0($sp)
    addiu	$a2,$a2,1
    slt	$a4,$a2,$a4
    beqz	$a4,.L0d9cccf4
    nop
    # Line 842
    lwc1	$f5,12($v0)
    trunc.w.s	$f5,$f5
    swc1	$f5,12($s0)
    # Line 841
    lw	$a5,0($sp)
    addiu	$a2,$a2,1
    slt	$a5,$a2,$a5
    # Line 842
    addiu	$s0,$s0,16
    # Line 841
    bnez	$a5,.L0d9ccc70
    # Line 842
    addiu	$v0,$v0,16
.L0d9cccf4:
    ld	$s0,8($sp)
.L0d9cccf8:
    ld	$s1,16($sp)
    # Line 845
    jr	$ra
    addiu	$sp,$sp,32
.L0d9ccd04:
    # Line 823
    beqz	$s1,.L0d9ccd28
    nop
    # Line 827
    lw	$a6,0($v0)
    mtc1	$a6,$f6
    cvt.s.w	$f6,$f6
    bnez	$s0,.L0d9ccd2c
    swc1	$f6,0($s1)
    b	.L0d9cccf8
    ld	$s0,8($sp)
.L0d9ccd28:
    beqz	$s0,.L0d9cccf4
.L0d9ccd2c:
    # Line 845
    ld	$s1,16($sp)
    # Line 829
    lw	$a7,0($v0)
    sw	$a7,0($s0)
    # Line 845
    ld	$s0,8($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glGetColorTableParameterv

# Function: __glim_GetColorTableParameterivSGI
# Declared: Line 847 (Source lines: 849-852)
# Address: 0x0d9ccd50 - 0x0d9ccdc0 (Size: 112 bytes, Frame: 16)
.globl __glim_GetColorTableParameterivSGI
.ent __glim_GetColorTableParameterivSGI
__glim_GetColorTableParameterivSGI:
    # Line 849
    move	$a3,$a2
    move	$a6,$a1
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x8
    move	$a7,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,16444
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9ccdac
    addu	$gp,$t9,$v1
    # Line 851
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-13360
    move	$a4,$zero
    move	$a2,$a1
    move	$a1,$a0
    bal __glim_ColorTableParameterfvSGI
    lw	$a0,4112($zero)
    ld	$ra,8($sp)
.L0d9ccda0:
    # Line 852
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9ccdac:
    # Line 850
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9ccda0
    ld	$ra,8($sp)
.end __glim_GetColorTableParameterivSGI

# Function: __glim_GetColorTableParameterfvSGI
# Declared: Line 854 (Source lines: 856-859)
# Address: 0x0d9ccdc0 - 0x0d9cce30 (Size: 112 bytes, Frame: 16)
.globl __glim_GetColorTableParameterfvSGI
.ent __glim_GetColorTableParameterfvSGI
__glim_GetColorTableParameterfvSGI:
    # Line 856
    move	$a4,$a2
    move	$a6,$a1
    addiu	$sp,$sp,-16
    lw	$at,4120($zero)
    li	$v0,1
    lui	$v1,0x8
    move	$a7,$a0
    sd	$ra,8($sp)
    addiu	$v1,$v1,16332
    sd	$gp,0($sp)
    beq	$at,$v0,.L0d9cce1c
    addu	$gp,$t9,$v1
    # Line 858
    # lw $t9, -32708($gp) # &sub_0d9d0000
    addiu	$t9,$t9,-13360
    move	$a3,$zero
    move	$a2,$a1
    move	$a1,$a0
    bal __glim_ColorTableParameterfvSGI
    lw	$a0,4112($zero)
    ld	$ra,8($sp)
.L0d9cce10:
    # Line 859
    ld	$gp,0($sp)
    jr	$ra
    addiu	$sp,$sp,16
.L0d9cce1c:
    # Line 857
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9cce10
    ld	$ra,8($sp)
.end __glim_GetColorTableParameterfvSGI

# Function: __glim_CopyColorTableSGI
# Declared: Line 862 (Source lines: 864-953)
# Address: 0x0d9cce30 - 0x0d9cd1ec (Size: 956 bytes, Frame: 208)
.globl __glim_CopyColorTableSGI
.ent __glim_CopyColorTableSGI
__glim_CopyColorTableSGI:
    # Line 864
    addiu	$sp,$sp,-592
    sd	$a3,512($sp)
    sd	$a2,520($sp)
    sd	$s1,552($sp)
    # Line 873
    lw	$s1,4112($zero)
    sd	$ra,584($sp)
    # Line 864
    sd	$s4,536($sp)
    sd	$s3,528($sp)
    move	$s3,$a4
    move	$s4,$a1
    # Line 873
    lw	$at,4120($zero)
    # Line 864
    sd	$s0,544($sp)
    # Line 873
    li	$v0,1
    # Line 864
    lui	$v1,0x8
    move	$s0,$a0
    sd	$s2,576($sp)
    addiu	$v1,$v1,16220
    sd	$gp,560($sp)
    # Line 873
    beq	$at,$v0,.L0d9cd18c
    # Line 864
    addu	$gp,$t9,$v1
    # Line 876
    move	$a0,$s1
    # lw $t9, -26536($gp) # &__glCheckColorTableArgs
    move	$a1,$s0
    move	$a2,$s4
    li	$a5,5126
    move	$a3,$a4
    bal __glCheckColorTableArgs
    li	$a4,6408
    beqz	$v0,.L0d9cced8
    move	$s2,$v0
    # Line 878
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    move	$a0,$v0
.L0d9cceb4:
    ld	$s3,528($sp)
.L0d9cceb8:
    ld	$s4,536($sp)
    ld	$s2,576($sp)
    ld	$ra,584($sp)
    ld	$s0,544($sp)
    ld	$s1,552($sp)
    # Line 887
    ld	$gp,560($sp)
    jr	$ra
    addiu	$sp,$sp,592
.L0d9cced8:
    # Line 881
    li	$a0,0x80bd
    beq	$s0,$a0,.L0d9cd1d4
    # Line 886
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 881
    li	$a1,0x80d3
    beq	$s0,$a1,.L0d9cd1d4
    # Line 886
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 881
    li	$a2,0x80d4
    beq	$s0,$a2,.L0d9cd1d4
    # Line 886
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 881
    li	$a3,0x80d5
    beq	$s0,$a3,.L0d9cd1d4
    # Line 886
    nop	# was lw $t9, -26452($gp) # &__glSetError
    # Line 890
    li	$a4,0x80d0
    beq	$s0,$a4,.L0d9ccf3c
    # Line 892
    addiu	$s2,$s1,5372
    # Line 890
    li	$a5,0x80d1
    beq	$s0,$a5,.L0d9cd184
    li	$a6,0x80d2
    beq	$s0,$a6,.L0d9cd1c8
    # Line 898
    addiu	$s2,$s1,5692
    # Line 890
    li	$a7,0x80bc
    lw	$s2,0($sp)
    xor	$a7,$s0,$a7
    # Line 901
    addiu	$t0,$s1,5852
    movz	$s2,$t0,$a7
.L0d9ccf3c:
    # Line 905
    # lw $t9, -27544($gp) # &__glElementsPerGroup
.L0d9ccf40:
    jal	__glElementsPerGroup
    lw	$a0,72($s2)
    lw	$t1,12($s2)
    mult	$t1,$v0
    # Line 907
    # lw $t9, -26528($gp) # &__glLoadColorTableParams
    move	$a3,$s3
    move	$a2,$s4
    move	$a1,$s0
    move	$a0,$s2
    # Line 905
    mflo	$t0
    # Line 907
    bal __glLoadColorTableParams
    # Line 905
    sd	$t0,568($sp)
    # Line 910
    # lw $t9, -27544($gp) # &__glElementsPerGroup
    ld	$s0,568($sp)
    jal	__glElementsPerGroup
    lw	$a0,72($s2)
    mult	$v0,$s3
    mflo	$t2
    slt	$t2,$s0,$t2
    bnez	$t2,.L0d9cd158
    # Line 911
    nop	# was lw $t9, -27544($gp) # &__glElementsPerGroup
.L0d9ccf94:
    # Line 915
    beqz	$s3,.L0d9cceb4
    nop
    lw	$t3,4($s2)
    beqz	$t3,.L0d9cceb4
    # Line 918
    nop	# was lw $t9, -27712($gp) # &__glInitReadImageSrcInfo
    move	$a0,$s1
    li	$a5,1
    move	$a4,$s3
    ld	$a3,512($sp)
    ld	$a2,520($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,8
    # Line 919
    # lw $t9, -27704($gp) # &__glInitMemLoad
    move	$a0,$s1
    lw	$a3,4($s2)
    lw	$a2,72($s2)
    jal	__glInitMemLoad
    addiu	$a1,$sp,8
    # Line 921
    lwc1	$f4,40($s2)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    lwc1	$f6,56($s2)
    c.eq.d	$f0,$f5
    lwc1	$f3,52($s2)
    lwc1	$f2,48($s2)
    bc1f	.L0d9cd07c
    lwc1	$f1,44($s2)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f5
    bc1f .L0d9cd07c
    nop
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f5
    bc1f .L0d9cd07c
    nop
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f5
    bc1f .L0d9cd07c
    dmtc1	$zero,$f5
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f5
    bc1f .L0d9cd07c
    nop
    lwc1	$f7,60($s2)
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f5
    bc1f .L0d9cd07c
    nop
    lwc1	$f8,64($s2)
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f5
    bc1f .L0d9cd07c
    nop
    lwc1	$f9,68($s2)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f5
    bc1t .L0d9cd1e4
    nop
.L0d9cd07c:
    # Line 926
    swc1	$f4,324($sp)
    # Line 927
    lwc1	$f16,44($s2)
    swc1	$f16,328($sp)
    # Line 928
    lwc1	$f15,48($s2)
    swc1	$f15,332($sp)
    # Line 929
    lwc1	$f14,52($s2)
    swc1	$f14,336($sp)
    # Line 930
    lwc1	$f13,56($s2)
    swc1	$f13,340($sp)
    # Line 931
    lwc1	$f12,60($s2)
    swc1	$f12,344($sp)
    # Line 932
    lwc1	$f11,64($s2)
    swc1	$f11,348($sp)
    # Line 933
    lwc1	$f10,68($s2)
    li	$s0,1
    swc1	$f10,352($sp)
.L0d9cd0bc:
    # Line 935
    # lw $t9, -27532($gp) # &__glInitUnpacker
    move	$a0,$s1
    jal	__glInitUnpacker
    addiu	$a1,$sp,8
    # Line 936
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s1
    jal	__glInitPacker
    addiu	$a1,$sp,8
    # Line 940
    # lw $t9, -27808($gp) # &__glClipReadPixels
    addiu	$a1,$sp,8
    move	$a0,$s1
    jal	__glClipReadPixels
    # Line 938
    sb	$s0,435($sp)
    # Line 940
    beqz	$v0,.L0d9cceb4
    # Line 945
    nop	# was lw $t9, -28264($gp) # &__glGetCurrentSetDefaultPixelXferState
    jal	__glGetCurrentSetDefaultPixelXferState
    move	$a0,$s1
    bnez	$v0,.L0d9cd1a0
    move	$s2,$v0
    # Line 948
    lw	$t9,12576($s1)
.L0d9cd10c:
    move	$a0,$s1
    jalr	$t9
    addiu	$a1,$sp,8
    bnez	$s2,.L0d9cd1b4
    # Line 951
    nop	# was lw $t9, -28260($gp) # &__glRestoreCurrentPixelXferState
    ld	$s2,576($sp)
.L0d9cd124:
    # Line 887
    ld	$gp,560($sp)
    # Line 953
    li	$s3,2
    sw	$s3,4120($zero)
    # Line 887
    ld	$s3,528($sp)
    ld	$s4,536($sp)
    # Line 953
    lw	$s0,11756($s1)
    ld	$ra,584($sp)
    ori	$s0,$s0,0x10
    sw	$s0,11756($s1)
    # Line 887
    ld	$s0,544($sp)
    ld	$s1,552($sp)
    jr	$ra
    addiu	$sp,$sp,592
.L0d9cd158:
    # Line 911
    jal	__glRestoreCurrentPixelXferState
    lw	$a0,72($s2)
    mult	$v0,$s3
    lw	$t9,8($s1)
    move	$a0,$s1
    lw	$a1,4($s2)
    mflo	$a2
    jalr	$t9
    sll	$a2,$a2,0x2
    b	.L0d9ccf94
    sw	$v0,4($s2)
.L0d9cd184:
    # Line 896
    b	.L0d9ccf3c
    # Line 895
    addiu	$s2,$s1,5532
.L0d9cd18c:
    # Line 873
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9cceb8
    ld	$s3,528($sp)
.L0d9cd1a0:
    # Line 946
    lw	$t9,11784($s1)
    jal	__glSetError
    move	$a0,$s1
    b	.L0d9cd10c
    # Line 948
    lw	$t9,12576($s1)
.L0d9cd1b4:
    # Line 951
    move	$a0,$s1
    jalr	$t9
    move	$a1,$s2
    b	.L0d9cd124
    ld	$s2,576($sp)
.L0d9cd1c8:
    # Line 899
    b	.L0d9ccf40
    # Line 905
    nop	# was lw $t9, -27544($gp) # &__glElementsPerGroup
    # Line 886
    # lw $t9, -26452($gp) # &__glSetError
.L0d9cd1d4:
    bal __glSetError
    li	$a0,1280
    b	.L0d9cceb8
    ld	$s3,528($sp)
.L0d9cd1e4:
    b	.L0d9cd0bc
    # Line 933
    move	$s0,$zero
.end __glim_CopyColorTableSGI

# Function: __glim_CopyColorSubTable
# Declared: Line 956 (Source lines: 958-1034)
# Address: 0x0d9cd1f0 - 0x0d9cd4e8 (Size: 760 bytes, Frame: 208)
.globl __glim_CopyColorSubTable
.ent __glim_CopyColorSubTable
__glim_CopyColorSubTable:
    # Line 958
    addiu	$sp,$sp,-592
    sd	$a3,520($sp)
    sd	$a2,512($sp)
    sd	$s0,552($sp)
    # Line 966
    lw	$s0,4112($zero)
    # Line 958
    sd	$s4,528($sp)
    sd	$s2,544($sp)
    move	$s2,$a4
    move	$s4,$a1
    # Line 966
    lw	$at,4120($zero)
    # Line 958
    sd	$s1,536($sp)
    # Line 966
    li	$v0,1
    # Line 958
    lui	$v1,0x8
    move	$s1,$a0
    sd	$ra,568($sp)
    addiu	$v1,$v1,15260
    sd	$gp,560($sp)
    # Line 966
    beq	$at,$v0,.L0d9cd4c4
    # Line 958
    addu	$gp,$t9,$v1
    # Line 969
    move	$a0,$s0
    # lw $t9, -26532($gp) # &__glCheckColorSubTableArgs
    move	$a1,$s1
    move	$a2,$s4
    li	$a5,5126
    move	$a3,$a4
    bal __glCheckColorSubTableArgs
    li	$a4,6408
    beqz	$v0,.L0d9cd278
    # Line 979
    li	$a2,0x80d2
    # Line 971
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    move	$a0,$v0
    b	.L0d9cd468
    ld	$s4,528($sp)
.L0d9cd278:
    # Line 972
    beqz	$s2,.L0d9cd464
    # Line 979
    li	$a0,0x80d0
    beq	$s1,$a0,.L0d9cd4ac
    li	$a1,0x80d1
    beq	$s1,$a1,.L0d9cd4b8
    nop
    beq	$s1,$a2,.L0d9cd4d8
    sd	$s3,576($sp)
    # Line 990
    addiu	$a4,$s0,5852
    # Line 979
    lw	$s3,0($sp)
    li	$a3,0x80bc
    xor	$a3,$s1,$a3
    movz	$s3,$a4,$a3
.L0d9cd2ac:
    # Line 994
    # lw $t9, -27712($gp) # &__glInitReadImageSrcInfo
    move	$a0,$s0
    li	$a5,1
    move	$a4,$s2
    ld	$a3,520($sp)
    ld	$a2,512($sp)
    jal	__glInitReadImageSrcInfo
    addiu	$a1,$sp,8
    # Line 995
    # lw $t9, -27704($gp) # &__glInitMemLoad
    move	$a0,$s0
    lw	$a3,4($s3)
    lw	$a2,72($s3)
    jal	__glInitMemLoad
    addiu	$a1,$sp,8
    # Line 997
    lwc1	$f4,40($s3)
    ldc1	$f5,_lit8_3ff0000000000000
    cvt.d.s	$f0,$f4
    lwc1	$f6,56($s3)
    lwc1	$f7,60($s3)
    c.eq.d	$f0,$f5
    lwc1	$f3,52($s3)
    lwc1	$f2,48($s3)
    bc1f	.L0d9cd384
    lwc1	$f1,44($s3)
    cvt.d.s	$f1,$f1
    c.eq.d $f1,$f5
    bc1f .L0d9cd384
    nop
    cvt.d.s	$f2,$f2
    c.eq.d $f2,$f5
    bc1f .L0d9cd384
    nop
    cvt.d.s	$f3,$f3
    c.eq.d $f3,$f5
    bc1f .L0d9cd384
    dmtc1	$zero,$f5
    cvt.d.s	$f6,$f6
    c.eq.d $f6,$f5
    bc1f .L0d9cd384
    nop
    cvt.d.s	$f7,$f7
    c.eq.d $f7,$f5
    bc1f .L0d9cd384
    nop
    lwc1	$f8,64($s3)
    cvt.d.s	$f8,$f8
    c.eq.d $f8,$f5
    bc1f .L0d9cd384
    nop
    lwc1	$f9,68($s3)
    cvt.d.s	$f9,$f9
    c.eq.d $f9,$f5
    bc1t .L0d9cd4e0
    nop
.L0d9cd384:
    # Line 1002
    swc1	$f4,324($sp)
    # Line 1003
    lwc1	$f16,44($s3)
    swc1	$f16,328($sp)
    # Line 1004
    lwc1	$f15,48($s3)
    swc1	$f15,332($sp)
    # Line 1005
    lwc1	$f14,52($s3)
    swc1	$f14,336($sp)
    # Line 1006
    lwc1	$f13,56($s3)
    swc1	$f13,340($sp)
    # Line 1007
    lwc1	$f12,60($s3)
    swc1	$f12,344($sp)
    # Line 1008
    lwc1	$f11,64($s3)
    swc1	$f11,348($sp)
    # Line 1009
    lwc1	$f10,68($s3)
    li	$s1,1
    swc1	$f10,352($sp)
.L0d9cd3c4:
    # Line 1014
    # lw $t9, -27532($gp) # &__glInitUnpacker
    ld	$s3,576($sp)
    addiu	$a1,$sp,8
    move	$a0,$s0
    jal	__glInitUnpacker
    # Line 1012
    sw	$s4,136($sp)
    # Line 1015
    # lw $t9, -28080($gp) # &__glInitPacker
    move	$a0,$s0
    jal	__glInitPacker
    addiu	$a1,$sp,8
    # Line 1019
    # lw $t9, -27808($gp) # &__glClipReadPixels
    addiu	$a1,$sp,8
    move	$a0,$s0
    jal	__glClipReadPixels
    # Line 1017
    sb	$s1,435($sp)
    # Line 1019
    beqz	$v0,.L0d9cd464
    # Line 1025
    nop	# was lw $t9, -28264($gp) # &__glGetCurrentSetDefaultPixelXferState
    jal	__glGetCurrentSetDefaultPixelXferState
    move	$a0,$s0
    bnez	$v0,.L0d9cd484
    move	$s1,$v0
    # Line 1028
    lw	$t9,12576($s0)
.L0d9cd41c:
    move	$a0,$s0
    jalr	$t9
    addiu	$a1,$sp,8
    bnez	$s1,.L0d9cd498
    # Line 1031
    nop	# was lw $t9, -28260($gp) # &__glRestoreCurrentPixelXferState
    # Line 1034
    ld	$gp,560($sp)
.L0d9cd434:
    ld	$s1,536($sp)
    ld	$s2,544($sp)
    # Line 1033
    li	$a5,2
    sw	$a5,4120($zero)
    lw	$a4,11756($s0)
    ld	$ra,568($sp)
    # Line 1034
    ld	$s4,528($sp)
    # Line 1033
    ori	$a4,$a4,0x10
    sw	$a4,11756($s0)
    # Line 1034
    ld	$s0,552($sp)
    jr	$ra
    addiu	$sp,$sp,592
.L0d9cd464:
    ld	$s4,528($sp)
.L0d9cd468:
    ld	$s1,536($sp)
    ld	$ra,568($sp)
    ld	$s2,544($sp)
    ld	$s0,552($sp)
    ld	$gp,560($sp)
    jr	$ra
    addiu	$sp,$sp,592
.L0d9cd484:
    # Line 1026
    lw	$t9,11784($s0)
    jal	__glRestoreCurrentPixelXferState
    move	$a0,$s0
    b	.L0d9cd41c
    # Line 1028
    lw	$t9,12576($s0)
.L0d9cd498:
    # Line 1031
    move	$a0,$s0
    jalr	$t9
    move	$a1,$s1
    b	.L0d9cd434
    # Line 1034
    ld	$gp,560($sp)
.L0d9cd4ac:
    sd	$s3,576($sp)
    b	.L0d9cd2ac
    # Line 981
    addiu	$s3,$s0,5372
.L0d9cd4b8:
    sd	$s3,576($sp)
    # Line 985
    b	.L0d9cd2ac
    # Line 984
    addiu	$s3,$s0,5532
.L0d9cd4c4:
    # Line 966
    # lw $t9, -26452($gp) # &__glSetError
    bal __glSetError
    li	$a0,1282
    b	.L0d9cd468
    ld	$s4,528($sp)
.L0d9cd4d8:
    # Line 988
    b	.L0d9cd2ac
    # Line 987
    addiu	$s3,$s0,5692
.L0d9cd4e0:
    b	.L0d9cd3c4
    # Line 1009
    move	$s1,$zero
.end __glim_CopyColorSubTable

# Function: __glInitColorTables
# Declared: Line 1036 (Source lines: 1044-1103)
# Address: 0x0d9cd4f0 - 0x0d9cd5dc (Size: 236 bytes, Frame: 0)
.globl __glInitColorTables
.ent __glInitColorTables
__glInitColorTables:
    # Line 1045
    li	$v0,6408
    # Line 1097
    sw	$v0,5940($a0)
    # Line 1096
    li	$a6,0x80bd
    sw	$a6,5932($a0)
    # Line 1090
    sw	$v0,5860($a0)
    # Line 1089
    li	$a5,0x80bc
    sw	$a5,5852($a0)
    # Line 1083
    sw	$v0,5780($a0)
    # Line 1081
    li	$a4,0x80d5
    sw	$a4,5772($a0)
    # Line 1075
    sw	$v0,5700($a0)
    # Line 1074
    li	$a3,0x80d2
    sw	$a3,5692($a0)
    # Line 1068
    sw	$v0,5620($a0)
    # Line 1066
    li	$a2,0x80d4
    sw	$a2,5612($a0)
    # Line 1060
    sw	$v0,5540($a0)
    # Line 1059
    li	$a1,0x80d1
    sw	$a1,5532($a0)
    # Line 1052
    sw	$v0,5460($a0)
    # Line 1051
    li	$v1,0x80d3
    sw	$v1,5452($a0)
    # Line 1045
    sw	$v0,5380($a0)
    # Line 1046
    lwc1	$f0,3544($a0)
    # Line 1044
    li	$at,0x80d0
    sw	$at,5372($a0)
    # Line 1101
    swc1	$f0,5984($a0)
    # Line 1100
    swc1	$f0,5980($a0)
    # Line 1099
    swc1	$f0,5976($a0)
    # Line 1098
    swc1	$f0,5972($a0)
    # Line 1094
    swc1	$f0,5904($a0)
    # Line 1093
    swc1	$f0,5900($a0)
    # Line 1092
    swc1	$f0,5896($a0)
    # Line 1091
    swc1	$f0,5892($a0)
    # Line 1087
    swc1	$f0,5824($a0)
    # Line 1086
    swc1	$f0,5820($a0)
    # Line 1085
    swc1	$f0,5816($a0)
    # Line 1084
    swc1	$f0,5812($a0)
    # Line 1079
    swc1	$f0,5744($a0)
    # Line 1078
    swc1	$f0,5740($a0)
    # Line 1077
    swc1	$f0,5736($a0)
    # Line 1076
    swc1	$f0,5732($a0)
    # Line 1072
    swc1	$f0,5664($a0)
    # Line 1071
    swc1	$f0,5660($a0)
    # Line 1070
    swc1	$f0,5656($a0)
    # Line 1069
    swc1	$f0,5652($a0)
    # Line 1064
    swc1	$f0,5584($a0)
    # Line 1063
    swc1	$f0,5580($a0)
    # Line 1062
    swc1	$f0,5576($a0)
    # Line 1061
    swc1	$f0,5572($a0)
    # Line 1056
    swc1	$f0,5504($a0)
    # Line 1055
    swc1	$f0,5500($a0)
    # Line 1054
    swc1	$f0,5496($a0)
    # Line 1053
    swc1	$f0,5492($a0)
    # Line 1049
    swc1	$f0,5424($a0)
    # Line 1048
    swc1	$f0,5420($a0)
    # Line 1047
    swc1	$f0,5416($a0)
    # Line 1103
    jr	$ra
    # Line 1046
    swc1	$f0,5412($a0)
.end __glInitColorTables

# Function: __glFreeColorTables
# Declared: Line 1105 (Source lines: 1106-1114)
# Address: 0x0d9cd5e0 - 0x0d9cd654 (Size: 116 bytes, Frame: 32)
.globl __glFreeColorTables
.ent __glFreeColorTables
__glFreeColorTables:
    # Line 1106
    addiu	$sp,$sp,-32
    lui	$at,0x8
    sd	$gp,16($sp)
    addiu	$at,$at,14252
    addu	$gp,$t9,$at
    # Line 1110
    lw	$t9,12($a0)
    lw	$a1,5376($a0)
    # Line 1106
    sd	$s0,0($sp)
    # Line 1110
    nop
    # Line 1106
    sd	$ra,8($sp)
    # Line 1110
    jalr	$t9
    # Line 1106
    move	$s0,$a0
    # Line 1111
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,5536($s0)
    # Line 1112
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,5696($s0)
    # Line 1113
    lw	$t9,12($s0)
    move	$a0,$s0
    jalr	$t9
    lw	$a1,5856($s0)
    ld	$ra,8($sp)
    ld	$s0,0($sp)
    # Line 1114
    ld	$gp,16($sp)
    jr	$ra
    addiu	$sp,$sp,32
.end __glFreeColorTables

# Function: __glCopyColorTableScaleBias
# Declared: Line 1130 (Source lines: 1133-1143)
# Address: 0x0d9cd660 - 0x0d9cd864 (Size: 516 bytes, Frame: 0)
.globl __glCopyColorTableScaleBias
.ent __glCopyColorTableScaleBias
__glCopyColorTableScaleBias:
    # Line 1133
    lwc1	$f11,40($a0)
    swc1	$f11,40($a1)
    lwc1	$f10,44($a0)
    swc1	$f10,44($a1)
    lwc1	$f9,48($a0)
    swc1	$f9,48($a1)
    lwc1	$f8,52($a0)
    swc1	$f8,52($a1)
    lwc1	$f7,56($a0)
    swc1	$f7,56($a1)
    lwc1	$f6,60($a0)
    swc1	$f6,60($a1)
    lwc1	$f5,64($a0)
    swc1	$f5,64($a1)
    lwc1	$f4,68($a0)
    swc1	$f4,68($a1)
    # Line 1134
    lwc1	$f3,120($a0)
    swc1	$f3,120($a1)
    lwc1	$f2,124($a0)
    swc1	$f2,124($a1)
    lwc1	$f1,128($a0)
    swc1	$f1,128($a1)
    lwc1	$f0,132($a0)
    swc1	$f0,132($a1)
    lwc1	$f31,136($a0)
    swc1	$f31,136($a1)
    lwc1	$f29,140($a0)
    swc1	$f29,140($a1)
    lwc1	$f27,144($a0)
    swc1	$f27,144($a1)
    lwc1	$f25,148($a0)
    swc1	$f25,148($a1)
    # Line 1135
    lwc1	$f23,200($a0)
    swc1	$f23,200($a1)
    lwc1	$f21,204($a0)
    swc1	$f21,204($a1)
    lwc1	$f19,208($a0)
    swc1	$f19,208($a1)
    lwc1	$f18,212($a0)
    swc1	$f18,212($a1)
    lwc1	$f17,216($a0)
    swc1	$f17,216($a1)
    lwc1	$f16,220($a0)
    swc1	$f16,220($a1)
    lwc1	$f15,224($a0)
    swc1	$f15,224($a1)
    lwc1	$f14,228($a0)
    swc1	$f14,228($a1)
    # Line 1136
    lwc1	$f13,280($a0)
    swc1	$f13,280($a1)
    lwc1	$f12,284($a0)
    swc1	$f12,284($a1)
    lwc1	$f11,288($a0)
    swc1	$f11,288($a1)
    lwc1	$f10,292($a0)
    swc1	$f10,292($a1)
    lwc1	$f9,296($a0)
    swc1	$f9,296($a1)
    lwc1	$f8,300($a0)
    swc1	$f8,300($a1)
    lwc1	$f7,304($a0)
    swc1	$f7,304($a1)
    lwc1	$f6,308($a0)
    swc1	$f6,308($a1)
    # Line 1138
    lwc1	$f5,360($a0)
    swc1	$f5,360($a1)
    lwc1	$f4,364($a0)
    swc1	$f4,364($a1)
    lwc1	$f3,368($a0)
    swc1	$f3,368($a1)
    lwc1	$f2,372($a0)
    swc1	$f2,372($a1)
    lwc1	$f1,376($a0)
    swc1	$f1,376($a1)
    lwc1	$f0,380($a0)
    swc1	$f0,380($a1)
    lwc1	$f31,384($a0)
    swc1	$f31,384($a1)
    lwc1	$f29,388($a0)
    swc1	$f29,388($a1)
    # Line 1139
    lwc1	$f27,440($a0)
    swc1	$f27,440($a1)
    lwc1	$f25,444($a0)
    swc1	$f25,444($a1)
    lwc1	$f23,448($a0)
    swc1	$f23,448($a1)
    lwc1	$f21,452($a0)
    swc1	$f21,452($a1)
    lwc1	$f19,456($a0)
    swc1	$f19,456($a1)
    lwc1	$f18,460($a0)
    swc1	$f18,460($a1)
    lwc1	$f17,464($a0)
    swc1	$f17,464($a1)
    lwc1	$f16,468($a0)
    swc1	$f16,468($a1)
    # Line 1141
    lwc1	$f15,520($a0)
    swc1	$f15,520($a1)
    lwc1	$f14,524($a0)
    swc1	$f14,524($a1)
    lwc1	$f13,528($a0)
    swc1	$f13,528($a1)
    lwc1	$f12,532($a0)
    swc1	$f12,532($a1)
    lwc1	$f11,536($a0)
    swc1	$f11,536($a1)
    lwc1	$f10,540($a0)
    swc1	$f10,540($a1)
    lwc1	$f9,544($a0)
    swc1	$f9,544($a1)
    lwc1	$f8,548($a0)
    swc1	$f8,548($a1)
    # Line 1142
    lwc1	$f7,600($a0)
    swc1	$f7,600($a1)
    lwc1	$f6,604($a0)
    swc1	$f6,604($a1)
    lwc1	$f5,608($a0)
    swc1	$f5,608($a1)
    lwc1	$f4,612($a0)
    swc1	$f4,612($a1)
    lwc1	$f3,616($a0)
    swc1	$f3,616($a1)
    lwc1	$f2,620($a0)
    swc1	$f2,620($a1)
    lwc1	$f1,624($a0)
    swc1	$f1,624($a1)
    lwc1	$f0,628($a0)
    # Line 1143
    jr	$ra
    # Line 1142
    swc1	$f0,628($a1)
.end __glCopyColorTableScaleBias

.late_rodata
jtbl_0da448f8:
    .word .L0d9cad9c
    .word .L0d9cad9c
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cadfc
    .word .L0d9cad9c
    .word .L0d9cad9c
    .word .L0d9cad9c
    .word .L0d9cad9c
    .word .L0d9cad9c
    .word .L0d9cad9c
jtbl_0da44960:
    .word .L0d9cc068
    .word .L0d9cc058
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbd80
    .word .L0d9cbe00
    .word .L0d9cc04c
    .word .L0d9cc044
    .word .L0d9cc034
    .word .L0d9cc024
    .word .L0d9cc014
jtbl_0da449c8:
    .word .L0d9cc74c
    .word .L0d9cc738
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc63c
    .word .L0d9cc6e8
    .word .L0d9cc730
    .word .L0d9cc728
    .word .L0d9cc714
    .word .L0d9cc704
    .word .L0d9cc6f0
jtbl_0da44a30:
    .word .L0d9cc7e4
    .word .L0d9cc854
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7a8
    .word .L0d9cc7d8
    .word .L0d9cc848
    .word .L0d9cc83c
    .word .L0d9cc830
    .word .L0d9cc828
    .word .L0d9cc81c
    .word .L0d9cc920
    .word .L0d9cc908
    .word .L0d9cc880
    .word .L0d9cc8fc
    .word .L0d9cc8ec
    .word .L0d9cc8d0
    .word .L0d9cc8c0
    .word .L0d9cc8b0
    .word .L0d9cc8a0
    .word .L0d9cc890

.rdata
_lit8_3ff0000000000000:
    .word 0x3ff00000, 0x00000000

