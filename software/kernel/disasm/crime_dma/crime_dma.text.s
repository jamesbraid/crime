.section .text
.set noat
.set noreorder


glabel crm_curproc_vtop
    addiu      $sp,$sp,-32
    sd         $a0,16($sp)
    sd         $a1,8($sp)
    sd         $ra,24($sp)
    li         $a3,4
    jal        curproc_vtop
    sd         $a2,0($sp)
    ld         $a2,16($sp)
    ld         $a4,8($sp)
    ld         $ra,24($sp)
    beqz       $v0, .L00000078
    andi       $a2,$a2,0xfff
    addu       $a4,$a4,$a2
    addiu      $a4,$a4,4095
    srl        $a4,$a4,0xc
    move       $a2,$zero
    beqz       $a4, .L00000064
    ld         $v0,0($sp)
    addiu      $a2,$a2,1
.L0000004c:
    lw         $a5,0($v0)
    addiu      $v0,$v0,4
    beqz       $a5, .L00000070
    sltu       $a3,$a2,$a4
    bnez       $a3, .L0000004c
    addiu      $a2,$a2,1
.L00000064:
    move       $v0,$zero
.L00000068:
    jr         $ra
    addiu      $sp,$sp,32
.L00000070:
    b          .L00000068
    li         $v0,14
.L00000078:
    b          .L00000068
    li         $v0,14

glabel crmpixdma
    lw         $v0,0($a1)
    addiu      $sp,$sp,-112
    sd         $ra,80($sp)
    sd         $s5,88($sp)
    sd         $s7,40($sp)
    sd         $s0,32($sp)
    sd         $s4,24($sp)
    lbu        $at,37($a1)
    move       $s4,$a0
    sd         $s2,16($sp)
    move       $s0,$a1
    lw         $s2,12($a1)
    andi       $at,$at,0x1
    move       $s7,$a3
    sd         $s8,48($sp)
    move       $s8,$a2
    sd         $s1,96($sp)
    beqz       $at, .L000003e8
    addiu      $a2,$s2,-1
    lw         $a1,4($a1)
    mult       $a1,$a2
    lw         $v1,8($s0)
    mflo       $a0
    addu       $a0,$v0,$a0
    addu       $v1,$v1,$a0
    sw         $v1,0($sp)
.L000000e8:
    beqz       $s7, .L00000148
    nop
    lw         $a7,24($s0)
    lw         $a6,8($s0)
    lw         $t0,32($s0)
    lbu        $a3,36($s0)
    lw         $a5,16($s0)
    lw         $a4,20($s0)
    addiu      $a5,$a5,4096
    sw         $a5,16($s0)
    addiu      $a4,$a4,4096
    sw         $a4,20($s0)
    lw         $a4,4($s0)
    addiu      $a7,$a7,4096
    lw         $a5,28($s0)
    addiu      $a3,$a3,-1
    sw         $a7,24($s0)
    sll        $a3,$a3,0x1c
    addu       $a4,$a4,$t0
    addiu      $a5,$a5,4096
    sw         $a5,28($s0)
    subu       $a4,$a4,$a6
    or         $a3,$a3,$a4
    sw         $a3,8364($s4)
.L00000148:
    lw         $s5,20($s0)
    sd         $s6,64($sp)
    addiu      $a6,$s4,8352
    sd         $s3,72($sp)
    blez       $s2, .L00000348
    ori        $a6,$a6,0x800
    lw         $s6,4($sp)
    lw         $s3,0($sp)
    addiu      $a7,$s4,8368
    ori        $a7,$a7,0x800
    sd         $a7,8($sp)
    lbu        $a7,37($s0)
    lw         $a0,4($s0)
    sd         $a6,56($sp)
    andi       $a6,$a7,0x1
.L00000184:
    beqz       $a6, .L00000350
    lui        $s1,0x2
    andi       $v0,$s3,0xfff
    beqz       $v0, .L00000368
    nop
    lui        $s1,0x1
    ori        $s1,$s1,0xf000
    addu       $s1,$s1,$v0
.L000001a4:
    div        $zero,$s1,$a0
    mflo       $s1
    slt        $t8,$s2,$s1
    lw         $v0,8($s0)
    beqz       $t8, .L000001c0
    teq        $a0,$zero,0x7
    move       $s1,$s2
.L000001c0:
    addiu      $a1,$s1,-1
    mult       $a0,$a1
    mflo       $v1
    beqz       $a6, .L00000360
    addu       $v0,$v0,$v1
    subu       $s6,$s3,$v0
.L000001d8:
    move       $a0,$s4
    move       $a1,$s6
    andi       $a3,$s6,0xfff
    lw         $a4,0($s0)
    srl        $a2,$s6,0xc
    addu       $a3,$v0,$a3
    addiu      $a3,$a3,4095
    srl        $a4,$a4,0xc
    srl        $a3,$a3,0xc
    subu       $a2,$a2,$a4
    andi       $a4,$a7,0x4
    sll        $a2,$a2,0x2
    jal        loadLinearTlb
    addu       $a2,$s8,$a2
    beqz       $v0, .L0000024c
    subu       $s2,$s2,$s1
    li         $v0,14
.L0000021c:
    ld         $s6,64($sp)
    ld         $s3,72($sp)
    ld         $s2,16($sp)
    ld         $s4,24($sp)
    ld         $s0,32($sp)
    ld         $s5,88($sp)
    ld         $ra,80($sp)
    ld         $s1,96($sp)
    ld         $s7,40($sp)
    ld         $s8,48($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L0000024c:
    lbu        $a0,36($s0)
    mult       $s1,$a0
    lbu        $a6,37($s0)
    lw         $v1,20($s0)
    lw         $a0,28($s0)
    andi       $a2,$a6,0x1
    slt        $v1,$a0,$v1
    andi       $a1,$a6,0x2
    mflo       $v0
    lw         $a3,16($s0)
    beqz       $v1, .L00000294
    addiu      $v0,$v0,-1
    subu       $v0,$s5,$v0
    slt        $a4,$v0,$a0
    beqz       $a4, .L000002a8
    nop
    b          .L000002a8
    move       $v0,$a0
.L00000294:
    addu       $v0,$s5,$v0
    slt        $a5,$a0,$v0
    beqz       $a5, .L000002a8
    nop
    move       $v0,$a0
.L000002a8:
    beqz       $a2, .L00000370
    nop
    beqz       $a1, .L000003dc
    nop
    lw         $a0,32($s0)
    subu       $a0,$s3,$a0
.L000002c0:
    beqz       $s7, .L0000038c
    dsll32     $a2,$a3,0x10
    sll        $a1,$v0,0x6
    dsll32     $a5,$a3,0x6
    sll        $a4,$s5,0x6
    or         $a4,$a4,$a5
    sd         $a4,8320($s4)
    lw         $a2,24($s0)
    dsll32     $a2,$a2,0x6
    or         $a1,$a1,$a2
    sd         $a1,8328($s4)
.L000002ec:
    lbu        $a6,37($s0)
    andi       $a6,$a6,0x8
    beqz       $a6, .L000003b4
    ld         $a7,56($sp)
    sw         $a0,0($a7)
.L00000300:
    lw         $a0,4($s0)
    mult       $a0,$s1
    lbu        $a7,37($s0)
    andi       $a6,$a7,0x1
    lw         $a2,28($s0)
    addiu      $s5,$v0,-1
    mflo       $a1
    beqz       $a6, .L000003d4
    lw         $a3,20($s0)
    subu       $s3,$s3,$a1
.L00000328:
    slt        $t0,$a2,$a3
    beqz       $t0, .L0000033c
    nop
    b          .L00000340
    nop
.L0000033c:
    addiu      $s5,$v0,1
.L00000340:
    bgtz       $s2, .L00000184
    nop
.L00000348:
    b          .L0000021c
    move       $v0,$zero
.L00000350:
    andi       $t8,$s6,0xfff
    lui        $s1,0x2
    b          .L000001a4
    subu       $s1,$s1,$t8
.L00000360:
    b          .L000001d8
    addu       $s3,$v0,$s6
.L00000368:
    b          .L000001a4
    nop
.L00000370:
    beqz       $a1, .L000003f0
    move       $a0,$s6
    lw         $a0,8($s0)
    lw         $a1,32($s0)
    addu       $a0,$a0,$s6
    b          .L000002c0
    subu       $a0,$a0,$a1
.L0000038c:
    andi       $a4,$s5,0xffff
    lw         $a5,24($s0)
    dsll32     $a4,$a4,0x0
    andi       $a1,$v0,0xffff
    sll        $a5,$a5,0x10
    or         $a2,$a2,$a4
    or         $a1,$a1,$a5
    or         $a1,$a1,$a2
    b          .L000002ec
    sd         $a1,8304($s4)
.L000003b4:
    lw         $t0,16($s0)
    andi       $a7,$s5,0xffff
    ld         $a6,8($sp)
    sll        $t0,$t0,0x10
    or         $a7,$a7,$t0
    sw         $a7,8352($s4)
    b          .L00000300
    sw         $a0,0($a6)
.L000003d4:
    b          .L00000328
    addu       $s6,$a1,$s6
.L000003dc:
    lw         $a0,8($s0)
    b          .L000002c0
    subu       $a0,$s3,$a0
.L000003e8:
    b          .L000000e8
    sw         $v0,4($sp)
.L000003f0:
    b          .L000002c0
    nop

glabel crimePixelDma
    addiu      $sp,$sp,-96
    sd         $ra,64($sp)
    sd         $s4,72($sp)
    sd         $s1,80($sp)
    sd         $s2,88($sp)
    lw         $v0,8($a1)
    lw         $a2,4($a1)
    sd         $s3,40($sp)
    lw         $a5,24($a0)
    slt        $at,$a2,$v0
    sd         $s0,48($sp)
    move       $s0,$a1
    bnez       $at, .L000004e8
    lw         $s3,120($a5)
    blez       $a2, .L000004e8
    slti       $v1,$v0,8193
    beqz       $v1, .L000004e8
    nop
    bltz       $v0, .L000004e8
    nop
    lw         $a1,12($a1)
    slti       $a3,$a1,2049
    beqz       $a3, .L000004e8
    nop
    bltz       $a1, .L000004e8
    addiu      $t8,$a1,-1
    mult       $a2,$t8
    mflo       $s2
    lui        $a4,0x18
    addu       $s2,$v0,$s2
    slt        $a4,$a4,$s2
    bnez       $a4, .L00000538
    nop
    lbu        $t9,37($s0)
    andi       $t9,$t9,0x8
    beqz       $t9, .L00000540
    sd         $a5,32($sp)
    move       $s4,$zero
.L00000490:
    lw         $ra,8($a0)
    lw         $ra,4($ra)
    lw         $at,0($s0)
    beq        $ra, $a0, .L0000050c
    sd         $at,8($sp)
    sd         $a0,24($sp)
    lw         $at,16($s0)
    lw         $v1,20($s0)
    lw         $a2,28($s0)
    lui        $v0,0xfffd
    lw         $a1,24($s0)
    ori        $v0,$v0,0xf000
    addu       $a2,$a2,$v0
    sw         $a2,28($s0)
    addu       $a1,$a1,$v0
    sw         $a1,24($s0)
    li         $s1,2
    addu       $v1,$v1,$v0
    sw         $v1,20($s0)
    addu       $at,$at,$v0
    b          .L00000514
    sw         $at,16($s0)
.L000004e8:
    li         $v0,22
.L000004ec:
    ld         $s3,40($sp)
.L000004f0:
    ld         $s4,72($sp)
    ld         $ra,64($sp)
    ld         $s1,80($sp)
    ld         $s2,88($sp)
    ld         $s0,48($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L0000050c:
    move       $s1,$zero
    sd         $a0,24($sp)
.L00000514:
    move       $a1,$s2
    move       $a2,$s4
    ld         $a0,8($sp)
    jal        fast_userdma
    move       $a3,$zero
    beqz       $v0, .L00000548
    ld         $a0,8($sp)
    b          .L000004f0
    ld         $s3,40($sp)
.L00000538:
    b          .L000004ec
    li         $v0,22
.L00000540:
    b          .L00000490
    li         $s4,1
.L00000548:
    andi       $a0,$a0,0xfff
    addu       $a0,$s2,$a0
    addiu      $a0,$a0,4095
    srl        $a0,$a0,0xc
    jal        kern_malloc
    sll        $a0,$a0,0x2
    move       $a2,$v0
    sd         $v0,16($sp)
    lw         $a0,0($s0)
    jal        crm_curproc_vtop
    move       $a1,$s2
    beqz       $v0, .L00000598
    nop
    jal        kern_free
    ld         $a0,16($sp)
    andi       $a1,$s1,0x1
    beqz       $a1, .L0000067c
    move       $a1,$s2
.L00000590:
    b          .L000004ec
    li         $v0,14
.L00000598:
    jal        RRM_CheckValidFault
    ld         $a0,24($sp)
    bgez       $v0, .L000005b8
    andi       $a2,$s1,0x1
    beqz       $a2, .L0000069c
    move       $a1,$s2
.L000005b0:
    b          .L000004ec
    li         $v0,4
.L000005b8:
    ld         $a4,32($sp)
    lw         $a6,40($a4)
    lw         $a6,24($a6)
    lw         $a5,44($a6)
    addiu      $a5,$a5,1
    sw         $a5,44($a6)
    lw         $a4,4($a4)
    ld         $a2,16($sp)
    andi       $a3,$s1,0x2
    move       $a1,$s0
    lw         $a4,8($a4)
    move       $a0,$s3
    jal        crmpixdma
    sd         $a4,0($sp)
    beqz       $v0, .L00000600
    move       $a0,$s3
    ori        $s1,$s1,0x20
    move       $a0,$s3
.L00000600:
    lui        $a1,0x7
    jal        crmIdleWait
    ori        $a1,$a1,0xa120
    andi       $a2,$s1,0x10
    beqz       $a2, .L00000624
    ld         $a3,0($sp)
    lw         $a3,16($a3)
    sw         $a3,8208($s3)
    sw         $zero,16392($s3)
.L00000624:
    ld         $a5,32($sp)
    lw         $a5,40($a5)
    lw         $a5,24($a5)
    lw         $a4,44($a5)
    move       $a1,$s2
    sd         $v0,56($sp)
    move       $a2,$s4
    addiu      $a4,$a4,-1
    sw         $a4,44($a5)
    move       $a3,$zero
    jal        fast_undma
    lw         $a0,0($s0)
    ld         $s0,56($sp)
    jal        kern_free
    ld         $a0,16($sp)
    beqz       $s0, .L00000694
    move       $a0,$s3
    lui        $a1,0x0
    jal        crimeError
    addiu      $a1,$a1,0
    b          .L000004ec
    li         $v0,14
.L0000067c:
    move       $a2,$s4
    lw         $a0,0($s0)
    jal        fast_undma
    move       $a3,$zero
    b          .L00000590
    nop
.L00000694:
    b          .L000004ec
    move       $v0,$zero
.L0000069c:
    move       $a2,$s4
    lw         $a0,0($s0)
    jal        fast_undma
    move       $a3,$zero
    b          .L000005b0
    nop

glabel loadLinearTlb
    addiu      $sp,$sp,-32
    sd         $s0,8($sp)
    beqz       $a4, .L000007a4
    sd         $ra,16($sp)
    addiu      $ra,$a0,5888
.L000006c8:
    lui        $t3,0xa000
    srl        $a1,$a1,0xc
    li         $v0,1
    andi       $at,$a1,0x1
    addiu      $s0,$sp,0
    li         $a0,32
    lui        $t2,0x8000
    beqz       $at, .L000006f4
    nop
    beq        $a3, $a0, .L0000078c
    nop
.L000006f4:
    sd         $zero,0($sp)
.L000006f8:
    blez       $a3, .L00000770
    move       $a0,$zero
    b          .L000007b4
    addiu      $a0,$a0,1
.L00000708:
    addu       $a4,$ra,$t1
.L0000070c:
    ld         $v1,0($sp)
    sd         $zero,0($sp)
    or         $a4,$t3,$a4
    sd         $v1,0($a4)
.L0000071c:
    addiu      $a2,$a2,4
    addiu      $a1,$a1,1
    addiu      $a0,$a0,1
    beqz       $t0, .L00000770
    addiu      $v0,$v0,1
    srl        $t9,$a1,0x1
.L00000734:
    lw         $a7,0($a2)
    andi       $a6,$a1,0x1
    andi       $t8,$t9,0xf
    slt        $t0,$a0,$a3
    sll        $t1,$t8,0x3
    beqz       $a7, .L00000784
    or         $a5,$a7,$t2
    sll        $at,$a6,0x2
    addu       $at,$s0,$at
    bnez       $a6, .L00000708
    sw         $a5,0($at)
    bne        $v0, $a3, .L0000071c
    nop
    b          .L0000070c
    addu       $a4,$ra,$t1
.L00000770:
    move       $v0,$zero
.L00000774:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000784:
    b          .L00000774
    li         $v0,-1
.L0000078c:
    lw         $a0,124($a2)
    addiu      $a3,$a3,-1
    beqz       $a0, .L000007ac
    or         $a0,$a0,$t2
    b          .L000006f8
    sw         $a0,0($sp)
.L000007a4:
    b          .L000006c8
    addiu      $ra,$a0,6016
.L000007ac:
    b          .L00000774
    li         $v0,-1
.L000007b4:
    b          .L00000734
    srl        $t9,$a1,0x1

glabel crime_load_linear_tlb
    addiu      $sp,$sp,-96
    sd         $a0,8($sp)
    sd         $a1,0($sp)
    sd         $s3,24($sp)
    lw         $s3,76($a1)
    sd         $s2,16($sp)
    lw         $s2,120($a2)
    sd         $ra,48($sp)
    sd         $s0,56($sp)
    sd         $s5,64($sp)
    lw         $at,8($a3)
    sd         $s7,72($sp)
    sd         $s6,32($sp)
    andi       $at,$at,0x4
    move       $s6,$a2
    sd         $s1,40($sp)
    move       $s1,$a3
    beqz       $at, .L00000978
    sd         $s4,80($sp)
    addiu      $s4,$s3,80
    addiu      $s0,$s3,36
.L00000810:
    lw         $v1,12($s0)
    beqz       $v1, .L00000830
    nop
    lw         $a2,8($s0)
    lw         $a1,4($s0)
    jal        undma
    lw         $a0,0($s0)
    sw         $zero,0($s0)
.L00000830:
    sw         $zero,12($s0)
    lw         $a2,4($s1)
    beqz       $a2, .L00000984
    move       $v0,$zero
    lw         $s7,0($s1)
    andi       $s7,$s7,0xfff
    addu       $s7,$a2,$s7
    addiu      $s7,$s7,4095
    srl        $s7,$s7,0xc
    slti       $a0,$s7,33
    bnez       $a0, .L00000944
    li         $s5,22
.L00000860:
    beqz       $v0, .L00000884
    move       $a0,$s4
    lw         $a2,8($s0)
    lw         $a1,4($s0)
    jal        undma
    lw         $a0,0($s0)
    sw         $zero,12($s0)
    sw         $zero,0($s0)
    move       $a0,$s4
.L00000884:
    jal        bzero
    li         $a1,128
    ld         $t9,0($sp)
    lw         $t8,4($s6)
    bne        $t8, $t9, .L00000918
    move       $v0,$s5
    lw         $ra,8($s1)
    andi       $ra,$ra,0x4
    beqz       $ra, .L0000099c
    addiu      $s0,$s2,5888
.L000008ac:
    jal        RRM_CheckValidFault
    ld         $a0,8($sp)
    bltz       $v0, .L00000a18
    move       $a1,$s0
    move       $a3,$zero
    lui        $a6,0xa000
.L000008c4:
    addiu      $a3,$a3,1
    slti       $at,$a3,16
    or         $v0,$a6,$a1
    addiu      $a1,$a1,8
    sd         $zero,0($v0)
    beqz       $at, .L000008f4
    addiu      $a3,$a3,1
    slti       $a0,$a3,16
    or         $v1,$a6,$a1
    addiu      $a1,$a1,8
    bnez       $a0, .L000008c4
    sd         $zero,0($v1)
.L000008f4:
    sw         $zero,16392($s2)
    lw         $a1,36($s3)
    bnez       $a1, .L00000910
    li         $v0,1
    lw         $a2,52($s3)
    beqz       $a2, .L000009a4
    li         $v0,1
.L00000910:
    sw         $v0,180($s6)
    move       $v0,$s5
.L00000918:
    ld         $s2,16($sp)
.L0000091c:
    ld         $s3,24($sp)
    ld         $s6,32($sp)
    ld         $s0,56($sp)
    ld         $s1,40($sp)
    ld         $ra,48($sp)
    ld         $s5,64($sp)
    ld         $s7,72($sp)
    ld         $s4,80($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L00000944:
    lw         $a3,8($s1)
    andi       $a3,$a3,0x8
    beqz       $a3, .L0000098c
    move       $a2,$zero
    sw         $zero,8($s0)
.L00000958:
    lw         $a1,4($s1)
    lw         $a0,0($s1)
    jal        fast_userdma
    move       $a3,$zero
    beqz       $v0, .L000009ac
    nop
    b          .L0000091c
    ld         $s2,16($sp)
.L00000978:
    addiu      $s4,$s3,208
    b          .L00000810
    addiu      $s0,$s3,52
.L00000984:
    b          .L00000860
    move       $s5,$zero
.L0000098c:
    li         $a4,1
    sw         $a4,8($s0)
    b          .L00000958
    li         $a2,1
.L0000099c:
    b          .L000008ac
    addiu      $s0,$s2,6016
.L000009a4:
    b          .L00000910
    move       $v0,$zero
.L000009ac:
    sd         $s8,88($sp)
    li         $s5,1
    sw         $s5,12($s0)
    lw         $a6,0($s1)
    sw         $a6,0($s0)
    sll        $a0,$s7,0x2
    lw         $a5,4($s1)
    jal        kern_malloc
    sw         $a5,4($s0)
    move       $s8,$v0
    lw         $a0,0($s1)
    lw         $a1,4($s1)
    jal        crm_curproc_vtop
    move       $a2,$v0
    beqz       $v0, .L00000a20
    move       $a0,$s4
    li         $s5,14
.L000009f0:
    bnez       $s8, .L00000a04
    nop
    ld         $s8,88($sp)
    b          .L00000860
    lw         $v0,12($s0)
.L00000a04:
    jal        kern_free
    move       $a0,$s8
    ld         $s8,88($sp)
    b          .L00000860
    lw         $v0,12($s0)
.L00000a18:
    b          .L00000918
    li         $v0,4
.L00000a20:
    jal        bzero
    li         $a1,128
    lw         $v0,0($s1)
    blez       $s7, .L00000a7c
    srl        $v0,$v0,0xc
    move       $a3,$s8
    move       $a2,$zero
    lui        $a6,0x8000
.L00000a40:
    addiu      $a3,$a3,4
    addiu      $a2,$a2,1
    srl        $a0,$v0,0x1
    slt        $a1,$a2,$s7
    andi       $a0,$a0,0xf
    sll        $a0,$a0,0x3
    andi       $a4,$v0,0x1
    addu       $a0,$s4,$a0
    sll        $a4,$a4,0x2
    lw         $v1,-4($a3)
    addiu      $v0,$v0,1
    addu       $a0,$a0,$a4
    or         $v1,$v1,$a6
    bnez       $a1, .L00000a40
    sw         $v1,0($a0)
.L00000a7c:
    jal        RRM_CheckValidFault
    ld         $a0,8($sp)
    bgez       $v0, .L00000a94
    move       $a0,$s2
    b          .L000009f0
    li         $s5,4
.L00000a94:
    lw         $a4,8($s1)
    move       $a3,$s7
    move       $a2,$s8
    lw         $a1,0($s1)
    jal        loadLinearTlb
    andi       $a4,$a4,0x4
    beqz       $v0, .L00000abc
    nop
    b          .L000009f0
    li         $s5,14
.L00000abc:
    lw         $a5,8($s1)
    andi       $a5,$a5,0x40
    beqz       $a5, .L00000b34
    nop
.L00000acc:
    sw         $s5,180($s6)
    jal        kern_free
    move       $a0,$s8
    lw         $a6,8($s1)
    andi       $a6,$a6,0x40
    beqz       $a6, .L00000b2c
    ld         $s8,88($sp)
    move       $a0,$s2
    addiu      $a7,$s2,8688
    lui        $a1,0x7
    ori        $a7,$a7,0x800
    ori        $a1,$a1,0xa120
    jal        crmIdleWait
    sw         $zero,0($a7)
    lw         $t0,12($s0)
    beqz       $t0, .L00000b2c
    nop
    lw         $a2,8($s0)
    lw         $a1,4($s0)
    lw         $a0,0($s0)
    jal        fast_undma
    move       $a3,$zero
    sw         $zero,12($s0)
    sw         $zero,0($s0)
.L00000b2c:
    b          .L00000918
    move       $v0,$zero
.L00000b34:
    b          .L00000acc
    sw         $zero,16392($s2)

glabel crime_clear_buffer
    addiu      $sp,$sp,-144
    lw         $at,76($a1)
    sd         $at,32($sp)
    sd         $s0,56($sp)
    sd         $ra,48($sp)
    sd         $s1,64($sp)
    move       $s1,$a2
    sd         $s2,40($sp)
    move       $s2,$a3
    jal        RRM_CheckValidFault
    lw         $s0,8($a1)
    sd         $s6,96($sp)
    sd         $s3,104($sp)
    sd         $s7,112($sp)
    bltz       $v0, .L00000ee0
    sd         $s4,120($sp)
    ld         $v0,32($sp)
    lw         $v0,12($v0)
    lh         $v1,16($v0)
    beqz       $v1, .L00000ccc
    nop
    lh         $v1,18($v0)
    beqz       $v1, .L00000ccc
    li         $v0,-1
    lw         $ra,16($s0)
    andi       $a0,$ra,0x800
    beqz       $a0, .L00000bd4
    li         $s3,33
.L00000bac:
    ld         $s6,96($sp)
.L00000bb0:
    ld         $s2,40($sp)
    ld         $s3,104($sp)
    ld         $s7,112($sp)
    ld         $ra,48($sp)
    ld         $s4,120($sp)
    ld         $s0,56($sp)
    ld         $s1,64($sp)
    jr         $ra
    addiu      $sp,$sp,144
.L00000bd4:
    li         $v0,22
    lbu        $a0,8($s2)
    lui        $t8,0x1ff
    li         $a1,1
    lui        $t9,0x1
    addiu      $a5,$s1,12344
    beq        $a1, $a0, .L00000c10
    ori        $a2,$a5,0x800
    li         $a3,2
    beq        $a0, $a3, .L00000c10
    li         $a4,4
    beq        $a0, $a4, .L00000c10
    nop
    b          .L00000bb0
    ld         $s6,96($sp)
.L00000c10:
    sra        $v0,$a0,0x1
    lbu        $a6,10($s2)
    addiu      $t1,$v0,16
    lbu        $t0,9($s2)
    sll        $a7,$v0,0x8
    andi       $a6,$a6,0x1
    sd         $t1,72($sp)
    move       $t1,$zero
    sll        $t0,$t0,0x2
    or         $a7,$a7,$t0
    beqz       $a6, .L00000f08
    sd         $a7,8($sp)
    lw         $a0,88($s0)
    ld         $a1,72($s0)
    lw         $a3,88($s0)
    ld         $a4,72($s0)
    lw         $s6,88($s0)
    ld         $v1,72($s0)
    lw         $s4,88($s0)
    ld         $at,72($s0)
    dsrl32     $v1,$v1,0x0
    dsrl32     $at,$at,0x10
    srl        $s4,$s4,0x10
    dsrl       $a4,$a4,0x10
    daddu      $a0,$a0,$a1
    srl        $a3,$a3,0x10
    daddu      $a3,$a3,$a4
    daddu      $s4,$s4,$at
    andi       $s4,$s4,0xffff
    andi       $a3,$a3,0xffff
    andi       $a0,$a0,0xffff
    sd         $a0,88($sp)
    slt        $at,$a3,$s4
    daddu      $s6,$s6,$v1
    andi       $s6,$s6,0xffff
    beqz       $at, .L00000ee8
    ld         $a4,88($sp)
    move       $s4,$zero
    slt        $a4,$a4,$s6
.L00000cac:
    beqz       $a4, .L00000ef8
    ld         $a4,88($sp)
    move       $s6,$zero
.L00000cb8:
    move       $s7,$zero
.L00000cbc:
    sd         $s8,128($sp)
    move       $a6,$s0
    b          .L00000f2c
    sd         $s5,136($sp)
.L00000ccc:
    b          .L00000bac
    move       $v0,$zero
.L00000cd4:
    sllv       $a5,$s3,$t1
    addiu      $t1,$t1,1
    addiu      $a6,$a6,8
    beqz       $t3, .L00000eb0
    and        $a7,$ra,$a5
.L00000ce8:
    bne        $a5, $a7, .L00000cd4
    slti       $t3,$t1,5
    ld         $t0,32($a6)
    ld         $v0,32($a6)
    ld         $t2,32($a6)
    ld         $a5,32($a6)
    dsrl32     $t2,$t2,0x0
    andi       $t0,$t0,0xffff
    dsrl32     $a5,$a5,0x10
    lbu        $at,10($s2)
    sltu       $s5,$a5,$s4
    andi       $t2,$t2,0xffff
    andi       $at,$at,0x1
    dsrl       $v0,$v0,0x10
    sltu       $a7,$a5,$a3
    andi       $v0,$v0,0xffff
    beqz       $at, .L00000dc4
    sltu       $a0,$s4,$v0
    beqz       $a7, .L00000cd4
    sltu       $s8,$a3,$v0
    xori       $at,$a0,0x1
    beqz       $a0, .L00000e3c
    sd         $at,80($sp)
    ld         $a0,88($sp)
    sltu       $a1,$a0,$t0
    sd         $a1,24($sp)
    beqz       $s5, .L00000d5c
    sltu       $a0,$t2,$a0
    move       $a5,$s4
.L00000d5c:
    beqz       $s8, .L00000d6c
    xori       $s8,$a0,0x1
    move       $v0,$a3
    xori       $s8,$a0,0x1
.L00000d6c:
    sltu       $s5,$s6,$t0
    xori       $a4,$s5,0x1
    beqz       $a0, .L00000e54
    sd         $a4,16($sp)
    ld         $v1,80($sp)
    beqz       $s5, .L00000da4
    sltu       $a0,$t2,$s6
    beqz       $a0, .L00000d98
    ld         $at,24($sp)
    move       $t2,$s6
    ld         $at,24($sp)
.L00000d98:
    beqz       $at, .L00000da4
    nop
    ld         $t0,88($sp)
.L00000da4:
    beqz       $a7, .L00000cd4
    nop
    bnez       $v1, .L00000cd4
    nop
    bnez       $s8, .L00000cd4
    ld         $a0,16($sp)
    bnez       $a0, .L00000cd4
    nop
.L00000dc4:
    beqz       $s7, .L00000e74
    ld         $a4,72($sp)
.L00000dcc:
    addiu      $v0,$v0,-1
    lbu        $a7,8($s2)
    sllv       $v0,$v0,$a4
    addiu      $a7,$a7,-1
    sll        $a7,$a7,0x10
    sllv       $a5,$a5,$a4
    addu       $v0,$a7,$v0
    sltu       $a1,$v0,$a5
    addiu      $a0,$t0,-1
    bnez       $a1, .L00000cd4
    or         $a7,$t8,$a5
    b          .L00000f20
    sltu       $a1,$a7,$v0
.L00000e00:
    sw         $t0,560($s0)
    addu       $a5,$t9,$a7
    sw         $t0,12336($s1)
    or         $at,$a0,$a7
    sltu       $v1,$v0,$a5
    sw         $at,568($s0)
    or         $t0,$t2,$a5
    or         $a7,$t8,$a5
    sw         $at,0($a2)
    bnez       $v1, .L00000cd4
    sltu       $a1,$a7,$v0
.L00000e2c:
    bnez       $a1, .L00000e00
    nop
    b          .L00000e00
    move       $a7,$v0
.L00000e3c:
    beqz       $a7, .L00000cd4
    nop
    beq        $zero, $a0, .L00000cd4
    nop
    b          .L00000dc4
    nop
.L00000e54:
    beqz       $a7, .L00000cd4
    ld         $a4,80($sp)
    bnez       $a4, .L00000cd4
    nop
    beq        $zero, $a0, .L00000cd4
    nop
    b          .L00000dc4
    nop
.L00000e74:
    ld         $a7,8($sp)
    lw         $a1,0($s2)
    sw         $a1,536($s0)
    lw         $a0,0($s2)
    sw         $a0,12312($s1)
    lw         $v1,4($s2)
    sw         $v1,520($s0)
    lw         $at,4($s2)
    sw         $at,12296($s1)
    li         $s7,1
    sw         $s7,584($s0)
    sw         $s7,12360($s1)
    sw         $a7,512($s0)
    b          .L00000dcc
    sw         $a7,12288($s1)
.L00000eb0:
    beqz       $s7, .L00000ed0
    ld         $s5,136($sp)
    ld         $s8,128($sp)
    move       $a0,$s1
    lui        $a1,0x7
    sw         $zero,12408($s1)
    jal        crmIdleWait
    ori        $a1,$a1,0xa120
.L00000ed0:
    ld         $s5,136($sp)
    ld         $s8,128($sp)
    b          .L00000bac
    move       $v0,$zero
.L00000ee0:
    b          .L00000bac
    li         $v0,4
.L00000ee8:
    bne        $s4, $a3, .L00000cac
    slt        $a4,$a4,$s6
    b          .L00000bac
    move       $v0,$zero
.L00000ef8:
    bne        $s6, $a4, .L00000cbc
    move       $s7,$zero
    b          .L00000bac
    move       $v0,$zero
.L00000f08:
    lhu        $a3,6($sp)
    lhu        $s4,4($sp)
    lhu        $s6,0($sp)
    lhu        $a6,2($sp)
    b          .L00000cb8
    sd         $a6,88($sp)
.L00000f20:
    or         $t0,$t2,$a5
    b          .L00000e2c
    nop
.L00000f2c:
    sllv       $a5,$s3,$t1
    addiu      $t1,$t1,1
    and        $a7,$ra,$a5
    b          .L00000ce8
    nop
