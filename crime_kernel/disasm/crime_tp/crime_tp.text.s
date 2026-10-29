.section .text
.set noat
.set noreorder


glabel crime_color
    slti       $at,$a1,255
    lui        $v1,0x0
    beqz       $at, .L00000014
    li         $a2,255
    addiu      $a2,$a1,1
.L00000014:
    sll        $v0,$a2,0x8
    or         $v0,$a2,$v0
    sll        $a0,$v0,0x10
    or         $v0,$v0,$a0
    jr         $ra
    sw         $v0,8($v1)

glabel crime_mapcolor
    lui        $a6,0x0
    lw         $a6,4($a6)
    lui        $a7,0x6
    addu       $a7,$a6,$a7
    lw         $a5,-32768($a7)
    andi       $at,$a5,0x3f
    addiu      $sp,$sp,-64
    beqz       $at, .L00000098
    sd         $ra,48($sp)
    sd         $a7,0($sp)
.L00000054:
    sd         $a6,8($sp)
    sd         $a4,16($sp)
    sd         $a3,24($sp)
    sd         $a2,32($sp)
    bnez       $a5, .L00000098
    sd         $a1,40($sp)
    jal        us_delay
    li         $a0,1
    ld         $a5,0($sp)
    ld         $a1,40($sp)
    lw         $a5,-32768($a5)
    ld         $a2,32($sp)
    ld         $a3,24($sp)
    andi       $a7,$a5,0x3f
    ld         $a4,16($sp)
    bnez       $a7, .L00000054
    ld         $a6,8($sp)
.L00000098:
    ld         $ra,48($sp)
    addiu      $sp,$sp,64
    sll        $t1,$a3,0x10
    lui        $a7,0x5
    sll        $t0,$a2,0x18
    or         $t0,$t0,$t1
    sll        $t1,$a1,0x2
    ori        $a7,$a7,0x4404
    addu       $t1,$a6,$t1
    sll        $a6,$a4,0x8
    addu       $a7,$a7,$t1
    or         $a6,$t0,$a6
    jr         $ra
    sw         $a6,0($a7)

glabel crime_sboxfi
    addiu      $sp,$sp,-112
    sd         $a3,40($sp)
    sd         $ra,16($sp)
    sd         $a1,48($sp)
    sd         $s0,24($sp)
    sd         $s2,8($sp)
    move       $s2,$a0
    sd         $s3,0($sp)
    lui        $s3,0x0
    move       $s0,$a4
    li         $a1,7
    lw         $s3,16($s3)
    sd         $s1,32($sp)
    move       $s1,$a2
    lui        $a2,0xa
    ori        $a2,$a2,0xbcde
    jal        crmFifoWait
    lw         $s3,4($s3)
    ld         $a3,48($sp)
    lui        $t8,0x0
    ld         $a4,40($sp)
    addiu      $t8,$t8,0
    lw         $t9,8($t8)
    lw         $t8,16($t8)
    li         $ra,760
    sw         $ra,24($s3)
    sw         $ra,8216($s2)
    li         $a6,1
    subu       $s1,$t8,$s1
    lui        $a5,0x300
    lui        $a0,0x302
    sw         $t9,208($s3)
    sw         $t9,8400($s2)
    beq        $s1, $a6, .L00000174
    subu       $s0,$t8,$s0
    slt        $t9,$s0,$s1
.L00000160:
    beqz       $t9, .L00000184
    nop
.L00000168:
    sw         $a5,96($s3)
    b          .L0000018c
    sw         $a5,8288($s2)
.L00000174:
    bne        $s0, $a6, .L00000160
    slt        $t9,$s0,$s1
    bltz       $s0, .L000001f0
    move       $s1,$zero
.L00000184:
    sw         $a0,96($s3)
    sw         $a0,8288($s2)
.L0000018c:
    sll        $a6,$a3,0x10
    andi       $a5,$s1,0xffff
    sll        $a4,$a4,0x10
    or         $a5,$a5,$a6
    dsll32     $a5,$a5,0x0
    andi       $a3,$s0,0xffff
    or         $a4,$a4,$a5
    addiu      $a2,$s2,8688
    or         $a3,$a3,$a4
    sw         $a3,112($s3)
    ori        $a2,$a2,0x800
    sd         $a3,8304($s2)
    move       $a0,$s2
    lui        $a1,0xa
    sw         $zero,0($a2)
    ori        $a1,$a1,0xbcde
    jal        crmIdleWait
    sw         $zero,8696($s2)
    ld         $s3,0($sp)
    ld         $ra,16($sp)
    ld         $s2,8($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L000001f0:
    b          .L00000168
    move       $s1,$zero

glabel crime_pnt2i
    addiu      $sp,$sp,-48
    sd         $ra,0($sp)
    sd         $a1,32($sp)
    sd         $s2,8($sp)
    lui        $at,0x0
    lw         $at,16($at)
    move       $s2,$a0
    sd         $a2,24($sp)
    li         $a1,6
    lui        $a2,0xa
    lw         $at,4($at)
    ori        $a2,$a2,0xbcde
    jal        crmFifoWait
    sd         $at,16($sp)
    ld         $a4,16($sp)
    li         $t0,760
    sw         $t0,24($a4)
    sw         $t0,8216($s2)
    sw         $zero,96($a4)
    sw         $zero,8288($s2)
    ld         $a3,32($sp)
    lui        $a6,0x0
    ld         $a7,24($sp)
    addiu      $a6,$a6,0
    lw         $a5,16($a6)
    lw         $a6,8($a6)
    sw         $a6,208($a4)
    subu       $a5,$a5,$a7
    sll        $a3,$a3,0x10
    sw         $a6,8400($s2)
    andi       $a5,$a5,0xffff
    addiu      $a2,$s2,8688
    or         $a3,$a3,$a5
    sw         $a3,112($a4)
    ori        $a2,$a2,0x800
    sw         $a3,8304($s2)
    move       $a0,$s2
    lui        $a1,0xa
    sw         $zero,0($a2)
    ori        $a1,$a1,0xbcde
    jal        crmIdleWait
    sw         $zero,8696($s2)
    ld         $ra,0($sp)
    ld         $s2,8($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel crime_cmov2i
    lui        $at,0x0
    sw         $a1,0($at)
    addiu      $at,$at,0
    jr         $ra
    sw         $a2,4($at)

glabel crime_drawbitmap
    addiu      $sp,$sp,-192
    sd         $a1,40($sp)
    sd         $s5,64($sp)
    lw         $s5,0($a1)
    sd         $s8,112($sp)
    lh         $s8,6($a1)
    sd         $s0,80($sp)
    lh         $s0,4($a1)
    sd         $s1,72($sp)
    lh         $t9,8($a1)
    sd         $s6,120($sp)
    lh         $s6,10($a1)
    sd         $s7,88($sp)
    sd         $ra,104($sp)
    sd         $s3,128($sp)
    sd         $s2,136($sp)
    sd         $s4,96($sp)
    lui        $s4,0x0
    lw         $s2,0($s4)
    addiu      $s4,$s4,0
    move       $s1,$a0
    lui        $s7,0xa
    lw         $t8,16($s4)
    ori        $s7,$s7,0xbcde
    lui        $s3,0x0
    lw         $ra,4($s4)
    li         $a1,20
    move       $a2,$s7
    lw         $s3,16($s3)
    lw         $s4,8($s4)
    subu       $s2,$s2,$t9
    subu       $t8,$t8,$ra
    lw         $s3,4($s3)
    jal        crmFifoWait
    addu       $s6,$s6,$t8
    sd         $s2,56($sp)
    li         $ra,16
    lui        $v0,0x8
    slt        $ra,$ra,$s8
    sd         $ra,168($sp)
    ori        $v0,$v0,0x2f8
    sw         $v0,24($s3)
    lui        $at,0x100
    sw         $v0,8216($s1)
    ori        $at,$at,0x20
    sw         $at,96($s3)
    sw         $at,8288($s1)
    sw         $s4,208($s3)
    sw         $s4,8400($s1)
    slti       $t8,$s0,17
    lui        $t9,0x1f
    sw         $t9,192($s3)
    beqz       $t8, .L000004fc
    sw         $t9,8384($s1)
    ld         $v1,168($sp)
    beqz       $v1, .L00000428
    sd         $s0,32($sp)
    ld         $s4,32($sp)
    ld         $s2,56($sp)
    sll        $s0,$s2,0x10
    addu       $s2,$s2,$s4
    addiu      $s4,$s1,8388
    addiu      $s2,$s2,-1
    ori        $s4,$s4,0x800
    sll        $s2,$s2,0x10
    move       $a0,$zero
.L000003cc:
    or         $ra,$s0,$s6
    dsll32     $ra,$ra,0x0
    or         $ra,$s2,$ra
    lhu        $t8,0($s5)
    addiu      $a0,$a0,1
    or         $ra,$s6,$ra
    sw         $ra,112($s3)
    slti       $t9,$a0,16
    sd         $ra,8304($s1)
    addiu      $s5,$s5,2
    sll        $t8,$t8,0x10
    sw         $t8,196($s3)
    addiu      $s6,$s6,-1
    bnez       $t9, .L000003cc
    sw         $t8,0($s4)
    move       $a0,$s1
    li         $a1,16
    jal        crmFifoWait
    move       $a2,$s7
    addiu      $s8,$s8,-16
    slti       $at,$s8,17
    beqz       $at, .L000003cc
    move       $a0,$zero
.L00000428:
    beqz       $s8, .L0000048c
    addiu      $a0,$s8,-1
    ld         $s4,32($sp)
    ld         $s2,56($sp)
    li         $a1,-1
    sll        $s0,$s2,0x10
    addu       $s2,$s2,$s4
    addiu      $s4,$s1,8388
    addiu      $s2,$s2,-1
    ori        $s4,$s4,0x800
    sll        $s2,$s2,0x10
.L00000454:
    or         $t9,$s0,$s6
    dsll32     $t9,$t9,0x0
    or         $t9,$s2,$t9
    lhu        $t8,0($s5)
    or         $t9,$s6,$t9
    sw         $t9,112($s3)
    addiu      $a0,$a0,-1
    sd         $t9,8304($s1)
    addiu      $s5,$s5,2
    sll        $t8,$t8,0x10
    sw         $t8,196($s3)
    addiu      $s6,$s6,-1
    bne        $a0, $a1, .L00000454
    sw         $t8,0($s4)
.L0000048c:
    move       $a0,$s1
.L00000490:
    lui        $s2,0x0
    ld         $s0,40($sp)
    lui        $a1,0xa
    addiu      $s2,$s2,0
    sw         $zero,8696($s1)
    jal        crmIdleWait
    ori        $a1,$a1,0xbcde
    lh         $s5,14($s0)
    lh         $s3,12($s0)
    ld         $s0,80($sp)
    ld         $s1,72($sp)
    ld         $s7,88($sp)
    ld         $s8,112($sp)
    lw         $s6,4($s2)
    lw         $s4,0($s2)
    addu       $s5,$s5,$s6
    sw         $s5,4($s2)
    addu       $s3,$s3,$s4
    sw         $s3,0($s2)
    ld         $s2,136($sp)
    ld         $s3,128($sp)
    ld         $ra,104($sp)
    ld         $s4,96($sp)
    ld         $s5,64($sp)
    ld         $s6,120($sp)
    jr         $ra
    addiu      $sp,$sp,192
.L000004fc:
    slti       $t8,$s0,33
    beqz       $t8, .L00000610
    sd         $s0,32($sp)
    ld         $t9,168($sp)
    beqz       $t9, .L00000598
    ld         $s4,32($sp)
    ld         $s2,56($sp)
    sll        $s0,$s2,0x10
    addu       $s2,$s2,$s4
    addiu      $s4,$s1,8388
    addiu      $s2,$s2,-1
    ori        $s4,$s4,0x800
    sll        $s2,$s2,0x10
    move       $a0,$zero
.L00000534:
    or         $at,$s0,$s6
    dsll32     $at,$at,0x0
    lhu        $t8,2($s5)
    or         $at,$s2,$at
    lhu        $ra,0($s5)
    addiu      $a0,$a0,1
    or         $at,$s6,$at
    sw         $at,112($s3)
    slti       $t9,$a0,16
    sll        $ra,$ra,0x10
    sd         $at,8304($s1)
    addiu      $s5,$s5,4
    or         $t8,$t8,$ra
    sw         $t8,196($s3)
    addiu      $s6,$s6,-1
    bnez       $t9, .L00000534
    sw         $t8,0($s4)
    move       $a0,$s1
    li         $a1,16
    jal        crmFifoWait
    move       $a2,$s7
    addiu      $s8,$s8,-16
    slti       $v0,$s8,17
    beqz       $v0, .L00000534
    move       $a0,$zero
.L00000598:
    beqz       $s8, .L0000048c
    addiu      $a0,$s8,-1
    ld         $t8,32($sp)
    ld         $s2,56($sp)
    li         $a1,-1
    sll        $s0,$s2,0x10
    addu       $s2,$s2,$t8
    addiu      $a2,$s1,8688
    addiu      $s2,$s2,-1
    ori        $a2,$a2,0x800
    sll        $s2,$s2,0x10
.L000005c4:
    or         $at,$s0,$s6
    dsll32     $at,$at,0x0
    lhu        $t9,2($s5)
    or         $at,$s2,$at
    lhu        $ra,0($s5)
    or         $at,$s6,$at
    sw         $at,112($s3)
    sll        $ra,$ra,0x10
    sd         $at,8304($s1)
    addiu      $a0,$a0,-1
    or         $t9,$t9,$ra
    sw         $t9,196($s3)
    addiu      $s5,$s5,4
    sw         $t9,8388($s1)
    addiu      $s6,$s6,-1
    bne        $a0, $a1, .L000005c4
    sw         $zero,0($a2)
    b          .L00000490
    move       $a0,$s1
.L00000610:
    ld         $v0,32($sp)
    ld         $a0,56($sp)
    addu       $v0,$a0,$v0
    sd         $a0,176($sp)
    addiu      $a0,$a0,15
    addiu      $v0,$v0,-1
    sd         $v0,144($sp)
    slt        $v0,$a0,$v0
    sd         $s8,48($sp)
    beqz       $v0, .L0000087c
    sd         $a0,24($sp)
    ld         $ra,56($sp)
    addiu      $s4,$s1,8388
    ld         $s8,32($sp)
    ori        $s4,$s4,0x800
    sra        $s7,$s8,0x4
    addiu      $ra,$ra,16
    sd         $ra,152($sp)
    b          .L000007a8
    andi       $s8,$s8,0xf
.L00000660:
    ld         $at,48($sp)
    sll        $a2,$a2,0x10
    sd         $at,0($sp)
.L0000066c:
    move       $a0,$zero
.L00000670:
    or         $a6,$a2,$s2
    dsll32     $a6,$a6,0x0
    sd         $a1,8($sp)
    or         $a6,$a1,$a6
    or         $a6,$s2,$a6
    sw         $a6,112($s3)
    sltu       $a5,$zero,$s8
    sd         $a6,8304($s1)
    addiu      $a0,$a0,1
    addu       $a5,$s7,$a5
    lhu        $a3,0($s0)
    sd         $a2,16($sp)
    slti       $a4,$a0,16
    addu       $a5,$a5,$a5
    addiu      $s2,$s2,-1
    sll        $a3,$a3,0x10
    sw         $a3,196($s3)
    addu       $s0,$s0,$a5
    bnez       $a4, .L00000670
    sw         $a3,0($s4)
    move       $a0,$s1
    li         $a1,16
    lui        $a2,0xa
    jal        crmFifoWait
    ori        $a2,$a2,0xbcde
    ld         $a4,0($sp)
    addiu      $a4,$a4,-16
    ld         $a1,8($sp)
    slti       $a3,$a4,17
    ld         $a2,16($sp)
    beqz       $a3, .L0000066c
    sd         $a4,0($sp)
.L000006f0:
    beqz       $a4, .L00000764
    nop
    blez       $a4, .L00000764
    ld         $a5,24($sp)
    ld         $a6,176($sp)
    sll        $a5,$a5,0x10
    sd         $a5,8($sp)
    addiu      $a0,$a4,-1
    sll        $a6,$a6,0x10
    sd         $a6,16($sp)
.L00000718:
    ld         $t2,16($sp)
    ld         $t1,8($sp)
    or         $t2,$t2,$s2
    dsll32     $t2,$t2,0x0
    or         $t1,$t1,$t2
    or         $t1,$s2,$t1
    sw         $t1,112($s3)
    sltu       $t0,$zero,$s8
    sd         $t1,8304($s1)
    addu       $t0,$s7,$t0
    lhu        $a7,0($s0)
    addiu      $a0,$a0,-1
    addu       $t0,$t0,$t0
    addiu      $s2,$s2,-1
    sll        $a7,$a7,0x10
    sw         $a7,196($s3)
    addu       $s0,$s0,$t0
    bgez       $a0, .L00000718
    sw         $a7,0($s4)
.L00000764:
    addiu      $s5,$s5,2
    ld         $s2,24($sp)
    move       $a0,$s1
    ld         $t8,152($sp)
    lui        $s0,0xa
    li         $a1,16
    ori        $s0,$s0,0xbcde
    sd         $t8,176($sp)
    addiu      $s2,$s2,16
    addiu      $t8,$t8,16
    sd         $t8,152($sp)
    jal        crmFifoWait
    move       $a2,$s0
    ld         $ra,144($sp)
    slt        $ra,$s2,$ra
    beqz       $ra, .L000007d0
    sd         $s2,24($sp)
.L000007a8:
    ld         $at,168($sp)
    move       $s0,$s5
    ld         $a1,24($sp)
    move       $s2,$s6
    ld         $a2,176($sp)
    bnez       $at, .L00000660
    sll        $a1,$a1,0x10
    ld         $a4,48($sp)
    b          .L000006f0
    nop
.L000007d0:
    ld         $a2,168($sp)
    bnez       $a2, .L0000089c
    ld         $t8,48($sp)
.L000007dc:
    ld         $a3,48($sp)
    move       $s0,$s5
    sd         $a3,160($sp)
    ld         $a4,160($sp)
.L000007ec:
    beqz       $a4, .L00000490
    move       $a0,$s1
    ld         $t8,160($sp)
    blez       $t8, .L0000048c
    ld         $a0,160($sp)
    ld         $s2,144($sp)
    addiu      $s4,$s1,8388
    ld         $s8,32($sp)
    ori        $s4,$s4,0x800
    ld         $a1,176($sp)
    sll        $s2,$s2,0x10
    sra        $s7,$s8,0x4
    andi       $s8,$s8,0xf
    sll        $a1,$a1,0x10
    sd         $a1,184($sp)
    addiu      $a0,$a0,-1
.L0000082c:
    ld         $ra,184($sp)
    or         $ra,$s6,$ra
    dsll32     $ra,$ra,0x0
    or         $ra,$s2,$ra
    or         $ra,$s6,$ra
    sw         $ra,112($s3)
    sltu       $t9,$zero,$s8
    sd         $ra,8304($s1)
    addu       $t9,$s7,$t9
    lhu        $t8,0($s0)
    addiu      $a0,$a0,-1
    addu       $t9,$t9,$t9
    addiu      $s6,$s6,-1
    sll        $t8,$t8,0x10
    sw         $t8,196($s3)
    addu       $s0,$s0,$t9
    bgez       $a0, .L0000082c
    sw         $t8,0($s4)
    b          .L00000490
    move       $a0,$s1
.L0000087c:
    ld         $at,168($sp)
    beqz       $at, .L000007dc
    addiu      $s4,$s1,8388
    ld         $s8,32($sp)
    ori        $s4,$s4,0x800
    sra        $s7,$s8,0x4
    andi       $s8,$s8,0xf
    ld         $t8,48($sp)
.L0000089c:
    ld         $s2,144($sp)
    ld         $ra,176($sp)
    sd         $t8,160($sp)
    sll        $s2,$s2,0x10
    move       $s0,$s5
    sll        $ra,$ra,0x10
    sd         $ra,184($sp)
    lui        $s5,0xa
    ori        $s5,$s5,0xbcde
.L000008c0:
    move       $a0,$zero
.L000008c4:
    ld         $at,184($sp)
    or         $at,$s6,$at
    dsll32     $at,$at,0x0
    or         $at,$s2,$at
    or         $at,$s6,$at
    sw         $at,112($s3)
    sltu       $ra,$zero,$s8
    sd         $at,8304($s1)
    addiu      $a0,$a0,1
    addu       $ra,$s7,$ra
    lhu        $t8,0($s0)
    slti       $t9,$a0,16
    addu       $ra,$ra,$ra
    addiu      $s6,$s6,-1
    sll        $t8,$t8,0x10
    sw         $t8,196($s3)
    addu       $s0,$s0,$ra
    bnez       $t9, .L000008c4
    sw         $t8,0($s4)
    move       $a0,$s1
    li         $a1,16
    jal        crmFifoWait
    move       $a2,$s5
    ld         $v0,160($sp)
    addiu      $v0,$v0,-16
    sd         $v0,160($sp)
    slti       $v0,$v0,17
    lui        $s5,0xa
    beqz       $v0, .L000008c0
    ori        $s5,$s5,0xbcde
    b          .L000007ec
    ld         $a4,160($sp)

glabel crime_unblank
    addiu      $sp,$sp,-16
    lui        $a2,0x0
    sd         $ra,0($sp)
    addiu      $a2,$a2,0
    move       $a0,$zero
    move       $a3,$zero
    lw         $a1,8($a2)
    move       $a4,$zero
    jal        gbeBlankScreen
    lw         $a2,4($a2)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crime_getdesc
    li         $at,1
    beq        $a1, $at, .L00000988
    li         $v0,1
    move       $v0,$zero
.L00000988:
    jr         $ra
    nop

glabel crime_positioncursor
    lui        $a0,0x0
    andi       $at,$a1,0xfff
    andi       $v1,$a2,0xfff
    lw         $a0,4($a0)
    lui        $v0,0x7
    sll        $v1,$v1,0x10
    or         $at,$at,$v1
    addu       $v0,$v0,$a0
    sw         $at,0($v0)
    jr         $ra
    move       $v0,$zero

glabel crime_clearfb
    addiu      $sp,$sp,-48
    sd         $s0,32($sp)
    sd         $s2,40($sp)
    sd         $ra,16($sp)
    lui        $a2,0x0
    sd         $s5,0($sp)
    addiu      $a2,$a2,0
    lw         $s5,8($a2)
    sd         $s1,24($sp)
    move       $s1,$a0
    lw         $a0,16($a2)
    li         $a1,1
    sh         $a1,60($a2)
    lw         $a0,4($a0)
    li         $a1,648
    jal        bzero
    sd         $a0,8($sp)
    lbu        $a3,45($s5)
    lhu        $s0,34($s5)
    li         $a6,1
    beqz       $a3, .L00000a18
    lhu        $s2,32($s5)
    sra        $s0,$s0,0x1
.L00000a18:
    lui        $a4,0x0
    ld         $s5,0($sp)
    addiu      $a4,$a4,0
    move       $a0,$s1
    move       $a1,$zero
    sw         $s2,12($a4)
    move       $a2,$zero
    move       $a3,$zero
    sw         $s0,16($a4)
    sw         $a6,8($a4)
    jal        crime_mapcolor
    move       $a4,$zero
    move       $a0,$s1
    lui        $a1,0xa
    jal        crmIdleWait
    ori        $a1,$a1,0xbcde
    ld         $a3,8($sp)
    sw         $zero,80($a3)
    sw         $zero,8272($s1)
    sw         $zero,88($a3)
    sw         $zero,8280($s1)
    li         $a6,33
    sw         $a6,16($a3)
    sll        $a5,$s2,0x10
    sw         $a6,8208($s1)
    or         $a5,$s0,$a5
    sd         $a5,32($a3)
    sd         $a5,8224($s1)
    li         $a4,3
    sw         $a4,432($a3)
    sw         $a4,8624($s1)
    li         $a2,2048
    sw         $a2,0($a3)
    sw         $a2,8192($s1)
    move       $a0,$s1
    move       $a1,$zero
    sw         $a2,8($a3)
    sw         $a2,8200($s1)
    move       $a2,$zero
    move       $a3,$s2
    jal        crime_sboxfi
    move       $a4,$s0
    ld         $ra,16($sp)
    ld         $s0,32($sp)
    ld         $s1,24($sp)
    ld         $s2,40($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel crime_tpinit
    li         $a7,32
    lui        $a1,0x0
    move       $a6,$zero
    addiu      $a1,$a1,0
    lui        $at,0xff00
    addiu      $sp,$sp,-16
    lw         $a2,4($a1)
    li         $v0,-256
    sd         $s8,0($sp)
    lui        $t1,0x7
    lui        $a5,0x0
    lw         $a1,8($a1)
    addu       $t1,$a2,$t1
    move       $s8,$a0
    lui        $t3,0x8
    sw         $v0,8($t1)
    addiu      $a5,$a5,0
    addu       $t2,$t3,$a2
    sw         $at,12($t1)
    move       $a4,$t2
    addiu      $t0,$t2,128
    sw         $zero,0($t1)
.L00000b30:
    addiu      $a6,$a6,1
    addiu      $a5,$a5,4
    slti       $a3,$a6,32
    lw         $t8,-4($a5)
    sw         $t8,-32768($a4)
    bnez       $a3, .L00000b30
    addiu      $a4,$a4,4
    sd         $ra,8($sp)
.L00000b50:
    addiu      $a7,$a7,1
    slti       $t9,$a7,64
    sw         $zero,-32768($t0)
    beqz       $t9, .L00000b8c
    move       $a0,$zero
    addiu      $a7,$a7,1
    slti       $ra,$a7,64
    sw         $zero,-32764($t0)
    beqz       $ra, .L00000b88
    addiu      $a7,$a7,1
    slti       $at,$a7,64
    sw         $zero,-32760($t0)
    bnez       $at, .L00000b50
    addiu      $t0,$t0,12
.L00000b88:
    move       $a0,$zero
.L00000b8c:
    move       $a3,$zero
    li         $v0,1
    sw         $v0,4($t1)
    jal        gbeBlankScreen
    move       $a4,$zero
    move       $a0,$s8
    lui        $a1,0xa
    jal        crmIdleWait
    ori        $a1,$a1,0xbcde
    ld         $ra,8($sp)
    ld         $s8,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
