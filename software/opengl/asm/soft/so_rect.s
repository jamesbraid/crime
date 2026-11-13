# Source: ../soft/so_rect.c
# Category: soft
# Compiler Options: /xlv41/6.5.30m/troot/usr/bin/cc -DEFAULT:abi=n32:isa=mips3 -xansi -D_PAGESZ=4096 -D__GL_FUTURE=1 -D__GL_LINT=1 -UDEBUG -DNDEBUG -D__GLX_ALIGN64 -D__GL_IGLOO_INTERFACE -D__GLX_DM_PBUFFER -D__GLX_CRIME -DCRIME -DCRM -DIP32 -DR4000 -D__GL_USEASMCODE -DREAL_KERNEL -I. -I../include -I../CRIME -I../../../include/CRIME/gl -I../CRIME.IP32 -use_readonly_const -fullwarn -OPT:Olimit=3390 -nostdinc -I/xlv41/6.5.30m/root/usr/include -mips4 -n32 -O -MDupdate Makedepend -woff 1685,515,608,658,799,803,852,1048,1233,1499,635,813,819,822,826,831,1140,1172,1209,1515,803,1506 -c ../soft/so_rect.c
# Total Functions: 9

.text

# Function: __glim_Rectd
# Declared: Line 25 (Source lines: 26-30)
# Address: 0x0da040e0 - 0x0da04198 (Size: 184 bytes, Frame: 192)
.globl __glim_Rectd
.ent __glim_Rectd
__glim_Rectd:
    # Line 26
    mov.d	$f4,$f15
    # Line 27
    lw	$a2,4120($zero)
    # Line 26
    mov.d	$f5,$f14
    # Line 27
    lw	$a0,4112($zero)
    # Line 26
    addiu	$sp,$sp,-64
    lui	$at,0x5
    mov.d	$f6,$f13
    sd	$ra,48($sp)
    addiu	$at,$at,-13140
    mov.d	$f7,$f12
    sd	$gp,8($sp)
    # Line 27
    beqz	$a2,.L0da04170
    # Line 26
    addu	$gp,$t9,$at
    # Line 27
    li	$v0,2
    sdc1	$f12,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f14,32($sp)
    sdc1	$f15,40($sp)
    beq	$a2,$v0,.L0da04144
    sd	$a0,0($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da04188
    nop
.L0da04144:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a0,0($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    ldc1	$f6,24($sp)
    ldc1	$f7,16($sp)
    sw	$zero,4120($zero)
.L0da04170:
    # Line 29
    cvt.s.d	$f16,$f4
    lw	$t9,12100($a0)
    cvt.s.d	$f15,$f5
    cvt.s.d	$f14,$f6
    jalr	$t9
    cvt.s.d	$f13,$f7
.L0da04188:
    ld	$ra,48($sp)
    # Line 30
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_Rectd

# Function: __glim_Rectdv
# Declared: Line 32 (Source lines: 33-37)
# Address: 0x0da041a0 - 0x0da04250 (Size: 176 bytes, Frame: 48)
.globl __glim_Rectdv
.ent __glim_Rectdv
__glim_Rectdv:
    # Line 33
    move	$a5,$a0
    # Line 34
    lw	$a3,4120($zero)
    lw	$a4,4112($zero)
    # Line 33
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 34
    li	$v0,2
    sd	$ra,32($sp)
    # Line 33
    addiu	$at,$at,-13332
    sd	$gp,8($sp)
    # Line 34
    beqz	$a3,.L0da04214
    # Line 33
    addu	$gp,$t9,$at
    sd	$a0,16($sp)
    sd	$a1,24($sp)
    # Line 34
    beq	$a3,$v0,.L0da041f0
    sd	$a4,0($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da04240
    nop
.L0da041f0:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a4,0($sp)
    ld	$a1,24($sp)
    ld	$a5,16($sp)
    sw	$zero,4120($zero)
.L0da04214:
    # Line 36
    ldc1	$f13,0($a5)
    ldc1	$f16,8($a1)
    ldc1	$f15,0($a1)
    ldc1	$f14,8($a5)
    lw	$t9,12100($a4)
    cvt.s.d	$f16,$f16
    cvt.s.d	$f15,$f15
    cvt.s.d	$f14,$f14
    move	$a0,$a4
    jalr	$t9
    cvt.s.d	$f13,$f13
.L0da04240:
    ld	$ra,32($sp)
    # Line 37
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Rectdv

# Function: __glim_Rectf
# Declared: Line 39 (Source lines: 40-44)
# Address: 0x0da04250 - 0x0da04308 (Size: 184 bytes, Frame: 192)
.globl __glim_Rectf
.ent __glim_Rectf
__glim_Rectf:
    # Line 40
    mov.s	$f4,$f15
    # Line 41
    lw	$a2,4120($zero)
    # Line 40
    mov.s	$f5,$f14
    # Line 41
    lw	$a0,4112($zero)
    # Line 40
    addiu	$sp,$sp,-64
    lui	$at,0x5
    mov.s	$f6,$f13
    sd	$ra,48($sp)
    addiu	$at,$at,-13508
    mov.s	$f7,$f12
    sd	$gp,8($sp)
    # Line 41
    beqz	$a2,.L0da042e0
    # Line 40
    addu	$gp,$t9,$at
    # Line 41
    li	$v0,2
    sdc1	$f12,16($sp)
    sdc1	$f13,24($sp)
    sdc1	$f14,32($sp)
    sdc1	$f15,40($sp)
    beq	$a2,$v0,.L0da042b4
    sd	$a0,0($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da042f8
    nop
.L0da042b4:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a0,0($sp)
    ldc1	$f4,40($sp)
    ldc1	$f5,32($sp)
    ldc1	$f6,24($sp)
    ldc1	$f7,16($sp)
    sw	$zero,4120($zero)
.L0da042e0:
    # Line 43
    mov.s	$f13,$f7
    lw	$t9,12100($a0)
    mov.s	$f14,$f6
    mov.s	$f15,$f5
    jalr	$t9
    mov.s	$f16,$f4
.L0da042f8:
    ld	$ra,48($sp)
    # Line 44
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_Rectf

# Function: __glim_Rectfv
# Declared: Line 46 (Source lines: 47-51)
# Address: 0x0da04310 - 0x0da043b0 (Size: 160 bytes, Frame: 48)
.globl __glim_Rectfv
.ent __glim_Rectfv
__glim_Rectfv:
    # Line 47
    move	$a5,$a0
    # Line 48
    lw	$a3,4120($zero)
    lw	$a4,4112($zero)
    # Line 47
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 48
    li	$v0,2
    sd	$ra,32($sp)
    # Line 47
    addiu	$at,$at,-13700
    sd	$gp,8($sp)
    # Line 48
    beqz	$a3,.L0da04384
    # Line 47
    addu	$gp,$t9,$at
    sd	$a0,16($sp)
    sd	$a1,24($sp)
    # Line 48
    beq	$a3,$v0,.L0da04360
    sd	$a4,0($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da043a0
    nop
.L0da04360:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a4,0($sp)
    ld	$a1,24($sp)
    ld	$a5,16($sp)
    sw	$zero,4120($zero)
.L0da04384:
    # Line 50
    lwc1	$f16,4($a1)
    lw	$t9,12100($a4)
    lwc1	$f15,0($a1)
    lwc1	$f14,4($a5)
    move	$a0,$a4
    jalr	$t9
    lwc1	$f13,0($a5)
.L0da043a0:
    ld	$ra,32($sp)
    # Line 51
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Rectfv

# Function: __glim_Recti
# Declared: Line 53 (Source lines: 54-58)
# Address: 0x0da043b0 - 0x0da04470 (Size: 192 bytes, Frame: 192)
.globl __glim_Recti
.ent __glim_Recti
__glim_Recti:
    # Line 54
    move	$a7,$a0
    # Line 55
    lw	$a5,4120($zero)
    lw	$a6,4112($zero)
    # Line 54
    addiu	$sp,$sp,-64
    lui	$at,0x5
    # Line 55
    li	$v0,2
    sd	$ra,48($sp)
    # Line 54
    addiu	$at,$at,-13860
    sd	$gp,8($sp)
    # Line 55
    beqz	$a5,.L0da04434
    # Line 54
    addu	$gp,$t9,$at
    sd	$a0,16($sp)
    sd	$a1,24($sp)
    sd	$a2,32($sp)
    sd	$a3,40($sp)
    # Line 55
    beq	$a5,$v0,.L0da04408
    sd	$a6,0($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da04460
    nop
.L0da04408:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a6,0($sp)
    ld	$a3,40($sp)
    ld	$a2,32($sp)
    ld	$a1,24($sp)
    ld	$a7,16($sp)
    sw	$zero,4120($zero)
.L0da04434:
    # Line 57
    mtc1	$a3,$f16
    mtc1	$a2,$f15
    mtc1	$a1,$f14
    mtc1	$a7,$f13
    lw	$t9,12100($a6)
    cvt.s.w	$f16,$f16
    cvt.s.w	$f15,$f15
    cvt.s.w	$f14,$f14
    move	$a0,$a6
    jalr	$t9
    cvt.s.w	$f13,$f13
.L0da04460:
    ld	$ra,48($sp)
    # Line 58
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_Recti

# Function: __glim_Rectiv
# Declared: Line 60 (Source lines: 61-65)
# Address: 0x0da04470 - 0x0da04530 (Size: 192 bytes, Frame: 48)
.globl __glim_Rectiv
.ent __glim_Rectiv
__glim_Rectiv:
    # Line 61
    move	$a5,$a0
    # Line 62
    lw	$a3,4120($zero)
    lw	$a4,4112($zero)
    # Line 61
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 62
    li	$v0,2
    sd	$ra,32($sp)
    # Line 61
    addiu	$at,$at,-14052
    sd	$gp,8($sp)
    # Line 62
    beqz	$a3,.L0da044e4
    # Line 61
    addu	$gp,$t9,$at
    sd	$a0,16($sp)
    sd	$a1,24($sp)
    # Line 62
    beq	$a3,$v0,.L0da044c0
    sd	$a4,0($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da04520
    nop
.L0da044c0:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a4,0($sp)
    ld	$a1,24($sp)
    ld	$a5,16($sp)
    sw	$zero,4120($zero)
.L0da044e4:
    # Line 64
    lw	$v1,4($a1)
    lw	$v0,0($a1)
    lw	$at,4($a5)
    mtc1	$v1,$f16
    lw	$ra,0($a5)
    mtc1	$v0,$f15
    mtc1	$at,$f14
    lw	$t9,12100($a4)
    mtc1	$ra,$f13
    cvt.s.w	$f16,$f16
    cvt.s.w	$f15,$f15
    cvt.s.w	$f14,$f14
    move	$a0,$a4
    jalr	$t9
    cvt.s.w	$f13,$f13
.L0da04520:
    ld	$ra,32($sp)
    # Line 65
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Rectiv

# Function: __glim_Rects
# Declared: Line 67 (Source lines: 68-72)
# Address: 0x0da04530 - 0x0da045f0 (Size: 192 bytes, Frame: 192)
.globl __glim_Rects
.ent __glim_Rects
__glim_Rects:
    # Line 68
    move	$a7,$a0
    # Line 69
    lw	$a5,4120($zero)
    lw	$a6,4112($zero)
    # Line 68
    addiu	$sp,$sp,-64
    lui	$at,0x5
    # Line 69
    li	$v0,2
    sd	$ra,48($sp)
    # Line 68
    addiu	$at,$at,-14244
    sd	$gp,8($sp)
    # Line 69
    beqz	$a5,.L0da045b4
    # Line 68
    addu	$gp,$t9,$at
    sd	$a0,16($sp)
    sd	$a1,24($sp)
    sd	$a2,32($sp)
    sd	$a3,40($sp)
    # Line 69
    beq	$a5,$v0,.L0da04588
    sd	$a6,0($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da045e0
    nop
.L0da04588:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a6,0($sp)
    ld	$a3,40($sp)
    ld	$a2,32($sp)
    ld	$a1,24($sp)
    ld	$a7,16($sp)
    sw	$zero,4120($zero)
.L0da045b4:
    # Line 71
    mtc1	$a3,$f16
    mtc1	$a2,$f15
    mtc1	$a1,$f14
    mtc1	$a7,$f13
    lw	$t9,12100($a6)
    cvt.s.w	$f16,$f16
    cvt.s.w	$f15,$f15
    cvt.s.w	$f14,$f14
    move	$a0,$a6
    jalr	$t9
    cvt.s.w	$f13,$f13
.L0da045e0:
    ld	$ra,48($sp)
    # Line 72
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glim_Rects

# Function: __glim_Rectsv
# Declared: Line 74 (Source lines: 75-79)
# Address: 0x0da045f0 - 0x0da046b0 (Size: 192 bytes, Frame: 48)
.globl __glim_Rectsv
.ent __glim_Rectsv
__glim_Rectsv:
    # Line 75
    move	$a5,$a0
    # Line 76
    lw	$a3,4120($zero)
    lw	$a4,4112($zero)
    # Line 75
    addiu	$sp,$sp,-48
    lui	$at,0x5
    # Line 76
    li	$v0,2
    sd	$ra,32($sp)
    # Line 75
    addiu	$at,$at,-14436
    sd	$gp,8($sp)
    # Line 76
    beqz	$a3,.L0da04664
    # Line 75
    addu	$gp,$t9,$at
    sd	$a0,16($sp)
    sd	$a1,24($sp)
    # Line 76
    beq	$a3,$v0,.L0da04640
    sd	$a4,0($sp)
    # lw $t9, -26452($gp) # &__glSetError
    jal	__glSetError
    li	$a0,1282
    b	.L0da046a0
    nop
.L0da04640:
    ld	$t9,0($sp)
    move	$a0,$t9
    lw	$t9,11784($t9)
    jalr	$t9
    nop
    ld	$a4,0($sp)
    ld	$a1,24($sp)
    ld	$a5,16($sp)
    sw	$zero,4120($zero)
.L0da04664:
    # Line 78
    lh	$v1,2($a1)
    lh	$v0,0($a1)
    lh	$at,2($a5)
    mtc1	$v1,$f16
    lh	$ra,0($a5)
    mtc1	$v0,$f15
    mtc1	$at,$f14
    lw	$t9,12100($a4)
    mtc1	$ra,$f13
    cvt.s.w	$f16,$f16
    cvt.s.w	$f15,$f15
    cvt.s.w	$f14,$f14
    move	$a0,$a4
    jalr	$t9
    cvt.s.w	$f13,$f13
.L0da046a0:
    ld	$ra,32($sp)
    # Line 79
    ld	$gp,8($sp)
    jr	$ra
    addiu	$sp,$sp,48
.end __glim_Rectsv

# Function: __glRect
# Declared: Line 81 (Source lines: 83-93)
# Address: 0x0da046b0 - 0x0da04778 (Size: 200 bytes, Frame: 192)
.globl __glRect
.ent __glRect
__glRect:
    # Line 83
    addiu	$sp,$sp,-64
    sd	$ra,40($sp)
    sdc1	$f22,16($sp)
    sdc1	$f26,8($sp)
    sdc1	$f24,24($sp)
    lui	$at,0x5
    sd	$gp,48($sp)
    addiu	$at,$at,-14628
    mov.s	$f24,$f16
    addu	$gp,$t9,$at
    # Line 86
    lw	$t9,12056($a0)
    # Line 83
    mov.s	$f26,$f15
    sdc1	$f20,0($sp)
    mov.s	$f20,$f14
    sd	$s1,32($sp)
    move	$s1,$a0
    mov.s	$f22,$f13
    # Line 86
    jalr	$t9
    sd	$s0,56($sp)
    # Line 87
    lw	$s0,6072($s1)
    lw	$s0,1328($s0)
    # Line 88
    move	$t9,$s0
    mov.s	$f12,$f22
    jalr	$t9
    mov.s	$f13,$f20
    # Line 89
    move	$t9,$s0
    mov.s	$f12,$f26
    jalr	$t9
    mov.s	$f13,$f20
    # Line 90
    move	$t9,$s0
    mov.s	$f12,$f26
    ldc1	$f20,0($sp)
    jalr	$t9
    mov.s	$f13,$f24
    # Line 91
    move	$t9,$s0
    mov.s	$f12,$f22
    ldc1	$f26,8($sp)
    jalr	$t9
    mov.s	$f13,$f24
    # Line 92
    lw	$t9,12068($s1)
    ld	$s0,56($sp)
    ldc1	$f22,16($sp)
    ldc1	$f24,24($sp)
    jalr	$t9
    move	$a0,$s1
    ld	$ra,40($sp)
    ld	$s1,32($sp)
    # Line 93
    ld	$gp,48($sp)
    jr	$ra
    addiu	$sp,$sp,64
.end __glRect

