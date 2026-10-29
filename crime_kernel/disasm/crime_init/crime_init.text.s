.section .text
.set noat
.set noreorder


glabel gbeProbe
    lw         $v0,20($a0)
    xori       $v0,$v0,0x666
    sltiu      $v0,$v0,1
    bnez       $v0, .L0000001c
    lui        $a3,0x1
.L00000014:
    jr         $ra
    nop
.L0000001c:
    lui        $a2,0x3000
    sw         $a2,0($a0)
    addu       $a3,$a0,$a3
    lw         $v1,0($a3)
    lui        $a1,0x8000
    and        $v1,$v1,$a1
    beqz       $v1, .L00000014
    nop
    jr         $ra
    sw         $zero,0($a3)

glabel crimeProbe
    lui        $v0,0xb400
    ld         $v0,0($v0)
    sll        $v0,$v0,0x0
    andi       $v0,$v0,0xff
    li         $a2,160
    andi       $at,$v0,0xf0
    beq        $a2, $at, .L00000070
    nop
    move       $v0,$zero
    jr         $ra
    nop
.L00000070:
    beq        $a2, $v0, .L00000080
    nop
    jr         $ra
    li         $v0,1
.L00000080:
    jr         $ra
    move       $v0,$zero

glabel getNvramTiming
    lui        $a0,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        kopt_find
    addiu      $a0,$a0,0
    li         $a4,72
    li         $a5,76
    ld         $ra,0($sp)
    beqz       $v0, .L000000d0
    li         $a3,104
    lbu        $a2,0($v0)
    beq        $a2, $a3, .L000000e4
    nop
    beq        $a2, $a4, .L000000e4
    li         $a1,108
    beq        $a2, $a1, .L000000dc
    nop
    beq        $a2, $a5, .L000000dc
.L000000d0:
    move       $v0,$zero
.L000000d4:
    jr         $ra
    addiu      $sp,$sp,16
.L000000dc:
    b          .L000000d4
    li         $v0,4
.L000000e4:
    b          .L000000d4
    li         $v0,9

glabel crimeInitInfo
    lw         $v1,0($a1)
    lui        $a5,0x3000
    lui        $a4,0xa
    ori        $a4,$a4,0xa000
    and        $v1,$v1,$a5
    lui        $v0,0xb400
    or         $v1,$v1,$a4
    sw         $v1,0($a1)
    ld         $v0,0($v0)
    sll        $v0,$v0,0x0
    andi       $v0,$v0,0xf
    sb         $v0,41($a2)
    lw         $at,1024($a0)
    addiu      $sp,$sp,-32
    sd         $s1,0($sp)
    andi       $at,$at,0x1
    move       $s1,$a1
    sd         $s0,8($sp)
    move       $s0,$a2
    beqz       $at, .L00000148
    sd         $ra,16($sp)
    addiu      $a6,$v0,1
    sb         $a6,41($a2)
.L00000148:
    lw         $a0,0($s1)
    srl        $v0,$a0,0xf
    andi       $a2,$a0,0xf
    srl        $a1,$a0,0xe
    andi       $v0,$v0,0x8
    srl        $v1,$a0,0xc
    andi       $a1,$a1,0x4
    srl        $a0,$a0,0xd
    andi       $v1,$v1,0x1
    andi       $a0,$a0,0x2
    sb         $a2,42($s0)
    or         $v0,$v0,$a1
    or         $v1,$v1,$a0
    or         $v0,$v0,$v1
    sb         $v0,40($s0)
    lw         $a7,0($gp)
    beqz       $a7, .L00000194
    sltiu      $v1,$v0,1
    sw         $v1,0($gp)
.L00000194:
    beqz       $a3, .L000002c0
    li         $v0,2
    lui        $a3,0x0
    addiu      $a3,$a3,0
    lh         $a0,34($a3)
    beq        $a0, $v0, .L000002dc
    lui        $a0,0x0
.L000001b0:
    lui        $a0,0x0
.L000001b4:
    addiu      $a0,$a0,0
.L000001b8:
    lui        $a1,0x0
.L000001bc:
    lw         $a1,0($a1)
    beqz       $a1, .L00000354
    nop
    lbu        $a2,46($s0)
.L000001cc:
    li         $a4,130
    beq        $a2, $a4, .L000002ec
    li         $a5,131
    beq        $a2, $a5, .L00000344
    addiu      $a7,$a0,432
    li         $a6,132
    beq        $a2, $a6, .L00000300
.L000001e8:
    lw         $a7,0($gp)
.L000001ec:
    li         $v0,16
    beq        $a7, $v0, .L000002e4
    ld         $s1,0($sp)
    li         $t0,32
    sb         $t0,47($s0)
.L00000200:
    lw         $t1,0($gp)
    sltiu      $t1,$t1,8193
    beqz       $t1, .L0000021c
    addiu      $a7,$s0,56
    sb         $zero,43($s0)
    sb         $v0,47($s0)
    addiu      $a7,$s0,56
.L0000021c:
    li         $a1,0x8
    lw         $a3,48($s0)
    li         $a0,12
    move       $v0,$zero
    addiu      $a6,$s0,52
    addiu      $a2,$a3,4
.L00000234:
    addu       $t3,$v0,$a3
    addu       $t8,$v0,$a6
    lw         $t3,0($t3)
    addiu      $a0,$a0,-2
    addu       $t2,$v0,$a2
    sw         $t3,0($t8)
    addu       $t3,$v0,$a7
    lw         $t2,0($t2)
    addu       $v0,$v0,$a1
    bgtz       $a0, .L00000234
    sw         $t2,0($t3)
    move       $a0,$s0
    li         $a2,16
    lui        $a1,0x0
    jal        strncpy
    addiu      $a1,$a1,8
    ld         $ra,16($sp)
    lw         $a2,48($s0)
    lbu        $a3,44($s0)
    lh         $a4,8($a2)
    sh         $a4,32($s0)
    lh         $a2,10($a2)
    li         $a4,496
    sw         $a4,36($s0)
    beqz       $a3, .L000002b4
    sh         $a2,34($s0)
    lbu        $a5,45($s0)
    beqz       $a5, .L000002b4
    nop
    lhu        $a6,34($s0)
    sll        $a6,$a6,0x1
    sh         $a6,34($s0)
.L000002b4:
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000002c0:
    lw         $a7,228($s0)
    beqz       $a7, .L00000378
    lui        $a3,0x0
    addiu      $a3,$a3,0
    lh         $t0,34($a3)
    bne        $t0, $v0, .L000001b0
    lui        $a0,0x0
.L000002dc:
    b          .L000001b8
    addiu      $a0,$a0,0
.L000002e4:
    b          .L00000200
    sb         $v0,47($s0)
.L000002ec:
    addiu      $a2,$a0,192
    sw         $a2,48($s0)
    li         $a1,4
    b          .L000001e8
    sw         $a1,228($s0)
.L00000300:
    lw         $a4,48($s0)
    lw         $a4,4($a4)
    li         $a5,1024
    addiu      $v0,$a0,720
    beq        $a4, $a5, .L00000320
    li         $a1,15
    sw         $a1,228($s0)
    sw         $v0,48($s0)
.L00000320:
    lh         $a5,50($a3)
    bnez       $a5, .L000001ec
    lw         $a7,0($gp)
    move       $a0,$s1
    move       $a1,$s0
    jal        i2cfp_DMI2_KernelEDID
    move       $a2,$zero
    b          .L000001ec
    lw         $a7,0($gp)
.L00000344:
    sw         $a7,48($s0)
    li         $a6,9
    b          .L000001e8
    sw         $a6,228($s0)
.L00000354:
    jal        crime_i2cFpProbe
    move       $a0,$s1
    andi       $a2,$v0,0xff
    lui        $a0,0x0
    lui        $a3,0x0
    addiu      $a0,$a0,0
    sb         $a2,46($s0)
    b          .L000001cc
    addiu      $a3,$a3,0
.L00000378:
    jal        getNvramTiming
    nop
    li         $a1,2
    beqz       $v0, .L000003c4
    sw         $v0,228($s0)
    lui        $a3,0x0
    sll        $a5,$v0,0x2
    lui        $a4,0x0
    subu       $a5,$a5,$v0
    addiu      $a4,$a4,0
    sll        $a5,$a5,0x4
    addiu      $a3,$a3,0
    addu       $a4,$a4,$a5
    sw         $a4,48($s0)
    lh         $a2,34($a3)
    bne        $a2, $a1, .L000001b4
    lui        $a0,0x0
    b          .L000002dc
    lui        $a0,0x0
.L000003c4:
    lw         $a2,0($gp)
    lui        $a3,0x0
    sll        $a7,$a2,0x2
    lui        $a0,0x0
    subu       $a7,$a7,$a2
    sw         $a2,228($s0)
    addiu      $a0,$a0,0
    sll        $a7,$a7,0x4
    addiu      $a3,$a3,0
    addu       $a7,$a0,$a7
    sw         $a7,48($s0)
    lh         $a6,34($a3)
    bne        $a6, $a1, .L000001b0
    nop
    lbu        $v0,136($s0)
    beqz       $v0, .L000001b8
    andi       $t0,$v0,0x1
    beqz       $t0, .L0000041c
    andi       $t2,$v0,0x2
    li         $t1,11
    b          .L000001b8
    sw         $t1,228($s0)
.L0000041c:
    beqz       $t2, .L00000430
    andi       $t8,$v0,0x4
    li         $t3,6
    b          .L000001b8
    sw         $t3,228($s0)
.L00000430:
    beqz       $t8, .L00000444
    andi       $ra,$v0,0x8
    li         $t9,5
    b          .L000001b8
    sw         $t9,228($s0)
.L00000444:
    beqz       $ra, .L00000458
    andi       $v1,$v0,0x80
    li         $at,9
    b          .L000001b8
    sw         $at,228($s0)
.L00000458:
    beqz       $v1, .L0000046c
    nop
    li         $a1,3
    b          .L000001b8
    sw         $a1,228($s0)
.L0000046c:
    lbu        $v0,135($s0)
    andi       $a2,$v0,0x1
    beqz       $a2, .L00000484
    andi       $a4,$v0,0x20
    b          .L000001b8
    sw         $a1,228($s0)
.L00000484:
    beqz       $a4, .L000001bc
    lui        $a1,0x0
    li         $a5,1
    b          .L000001b8
    sw         $a5,228($s0)

glabel gbeSetTimingRegs
    addiu      $sp,$sp,-48
    sd         $s1,40($sp)
    sd         $s0,32($sp)
    lw         $s0,48($a1)
    sd         $s3,8($sp)
    sd         $s2,16($sp)
    lw         $at,4($a0)
    move       $s2,$a0
    move       $s3,$a1
    sd         $ra,24($sp)
    andi       $at,$at,0xffff
    jal        flushbus
    sw         $at,4($a0)
    lui        $s1,0x1
    addu       $s1,$s2,$s1
    sw         $zero,4($s1)
    lh         $a7,36($s0)
    lh         $a6,38($s0)
    andi       $a7,$a7,0xfff
    andi       $a6,$a6,0xfff
    sll        $a7,$a7,0xc
    or         $a6,$a6,$a7
    sw         $a6,8($s1)
    lh         $a5,26($s0)
    lh         $a4,28($s0)
    andi       $a5,$a5,0xfff
    andi       $a4,$a4,0xfff
    sll        $a5,$a5,0xc
    or         $a4,$a4,$a5
    sw         $a4,12($s1)
    lh         $a3,32($s0)
    lh         $a2,34($s0)
    andi       $a3,$a3,0xfff
    andi       $a2,$a2,0xfff
    sll        $a3,$a3,0xc
    or         $a2,$a2,$a3
    sw         $a2,16($s1)
    lh         $v0,20($s0)
    lh         $a1,22($s0)
    addu       $a1,$a1,$v0
    addiu      $a1,$a1,-5
    div        $zero,$a1,$v0
    lh         $a0,24($s0)
    addiu      $a0,$a0,-3
    mfhi       $a1
    andi       $a0,$a0,0xfff
    sll        $a1,$a1,0xc
    or         $a0,$a0,$a1
    sw         $a0,20($s1)
    lw         $v1,0($gp)
    slti       $v1,$v1,9
    beqz       $v1, .L000005a0
    teq        $v0,$zero,0x7
    lbu        $t8,45($s3)
    beqz       $t8, .L000005a0
    nop
    lh         $ra,10($s0)
    andi       $ra,$ra,0xfff
    sll        $ra,$ra,0xc
    ori        $ra,$ra,0xfff
    sw         $ra,16($s1)
    lh         $t9,8($s0)
    andi       $t9,$t9,0xfff
    sll        $t9,$t9,0xc
    ori        $t9,$t9,0xfff
    sw         $t9,20($s1)
.L000005a0:
    lh         $a1,22($s0)
    lh         $a0,24($s0)
    andi       $a1,$a1,0xfff
    andi       $a0,$a0,0xfff
    sll        $a1,$a1,0xc
    or         $a0,$a0,$a1
    sw         $a0,60($s1)
    lh         $v1,32($s0)
    lh         $v0,34($s0)
    andi       $v1,$v1,0xfff
    andi       $v0,$v0,0xfff
    sll        $v1,$v1,0xc
    or         $v0,$v0,$v1
    sw         $v0,64($s1)
    sw         $zero,24($s1)
    lw         $at,4($s0)
    lh         $a0,32($s0)
    andi       $at,$at,0x12
    andi       $a0,$a0,0xfff
    beqz       $at, .L00000858
    sll        $v0,$a0,0xc
    or         $a2,$a0,$v0
    sw         $a2,28($s1)
.L000005fc:
    lbu        $v0,46($s3)
    li         $a3,130
    li         $a1,4094
    beq        $v0, $a3, .L000008ac
    li         $a5,4095
    li         $a4,131
    beq        $v0, $a4, .L00000908
    li         $a0,132
    beq        $a0, $v0, .L000008a0
    li         $a4,4094
    sh         $a5,2($sp)
    sh         $a5,0($sp)
.L0000062c:
    beq        $a0, $v0, .L00000920
    andi       $t3,$a1,0xfff
    lw         $a5,0($gp)
    beqz       $a5, .L000008cc
    li         $v0,127
    lw         $a7,16($s0)
    lui        $a6,0x1
    ori        $a6,$a6,0x86a0
    slt        $a6,$a6,$a7
    beqz       $a6, .L0000065c
    nop
    li         $v0,255
.L0000065c:
    move       $a0,$s2
    jal        i2cfp_DualChannelCommand
    andi       $a1,$v0,0xff
    lw         $a7,0($gp)
    slti       $a7,$a7,9
    bnez       $a7, .L0000067c
    li         $v0,2
    move       $v0,$zero
.L0000067c:
    lh         $t1,8($s0)
    addu       $t1,$t1,$v0
    andi       $t1,$t1,0xfff
    sll        $t1,$t1,0xc
    or         $t1,$v0,$t1
    sw         $t1,40($s1)
    lh         $t0,10($s0)
    addiu      $t0,$t0,1
    andi       $t0,$t0,0xfff
    sll        $t0,$t0,0xc
    ori        $t0,$t0,0x1
    sw         $t0,44($s1)
.L000006ac:
    lh         $v1,34($s0)
    lh         $v0,32($s0)
    subu       $v0,$v0,$v1
    addiu      $v0,$v0,-1
    blez       $v0, .L000006c8
    nop
    negu       $v0,$v0
.L000006c8:
    lh         $a0,24($s0)
    slti       $a2,$a0,20
    andi       $a1,$v0,0xfff
    bnez       $a2, .L000006e8
    sll        $a1,$a1,0xc
    addiu      $v0,$a0,-20
    b          .L000006f8
    or         $v0,$a1,$v0
.L000006e8:
    lh         $v0,20($s0)
    addu       $v0,$v0,$a0
    addiu      $v0,$v0,-20
    or         $v0,$a1,$v0
.L000006f8:
    sw         $v0,68($s1)
    lw         $a4,0($gp)
    lh         $a0,24($s0)
    lui        $a5,0xff
    slt        $v1,$a0,$a4
    ori        $a5,$a5,0xf000
    bnez       $v1, .L00000724
    and        $a1,$v0,$a5
    subu       $v0,$a0,$a4
    b          .L00000734
    or         $v0,$a1,$v0
.L00000724:
    lh         $v0,20($s0)
    subu       $v1,$a4,$a0
    subu       $v0,$v0,$v1
    or         $v0,$a1,$v0
.L00000734:
    addiu      $a3,$v0,4096
    sw         $a3,72($s1)
    lh         $a2,24($s0)
    addiu      $a2,$a2,-4
    and        $a3,$v0,$a5
    or         $a2,$a2,$a3
    sw         $a2,76($s1)
    lbu        $a0,47($s3)
    li         $a1,32
    beq        $a0, $a1, .L00000864
    lhu        $a1,32($s3)
    sra        $v1,$a1,0x7
    srl        $v1,$v1,0x18
    addu       $v1,$v1,$a1
    sra        $v1,$v1,0x8
    sll        $a0,$v1,0x8
    subu       $a0,$a1,$a0
    addu       $a0,$a0,$a0
    sra        $v0,$a0,0x4
    srl        $v0,$v0,0x1b
    addu       $v0,$v0,$a0
    sra        $v0,$v0,0x5
    sll        $v1,$v1,0x5
    or         $v0,$v0,$v1
    ori        $v0,$v0,0x2000
.L00000798:
    lui        $a4,0x3
    addu       $a4,$s2,$a4
    sw         $v0,0($a4)
    lbu        $v1,45($s3)
    lhu        $v0,34($s3)
    ld         $s1,40($sp)
    beqz       $v1, .L000007bc
    sll        $v0,$v0,0x10
    sra        $v0,$v0,0x1
.L000007bc:
    sra        $t0,$a1,0x8
    srl        $t0,$t0,0x17
    addu       $t0,$t0,$a1
    sra        $t0,$t0,0x9
    sll        $a7,$t0,0x9
    sll        $t0,$t0,0x5
    subu       $a7,$a1,$a7
    sra        $a6,$a7,0x4
    srl        $a6,$a6,0x1b
    addu       $a6,$a6,$a7
    lui        $a7,0x2
    sw         $v0,4($a4)
    addu       $a7,$a7,$s2
    sra        $a6,$a6,0x5
    or         $a6,$a6,$t0
    sw         $a6,0($a7)
    lh         $a6,44($s0)
    lh         $a5,40($s0)
    li         $a0,11000
    lh         $a7,42($s0)
    lui        $t0,0x10
    addiu      $a5,$a5,-1
    andi       $a6,$a6,0x3
    addiu      $a7,$a7,-1
    sll        $a6,$a6,0xe
    andi       $a7,$a7,0x3f
    andi       $a5,$a5,0xff
    sll        $a7,$a7,0x8
    ld         $s3,8($sp)
    or         $a5,$a5,$t0
    or         $a6,$a6,$a7
    or         $a5,$a5,$a6
    jal        us_delay
    sw         $a5,4($s2)
    ld         $ra,24($sp)
    ld         $s2,16($sp)
    ld         $s0,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00000858:
    ori        $t1,$v0,0xfff
    b          .L000005fc
    sw         $t1,28($s1)
.L00000864:
    sra        $v1,$a1,0x6
    srl        $v1,$v1,0x19
    addu       $v1,$v1,$a1
    sra        $v1,$v1,0x7
    sll        $a0,$v1,0x7
    subu       $a0,$a1,$a0
    sll        $a0,$a0,0x2
    sra        $v0,$a0,0x4
    srl        $v0,$v0,0x1b
    sll        $v1,$v1,0x5
    addu       $v0,$v0,$a0
    sra        $v0,$v0,0x5
    or         $v0,$v0,$v1
    b          .L00000798
    ori        $v0,$v0,0x4000
.L000008a0:
    li         $a4,1025
    b          .L0000062c
    li         $a1,1600
.L000008ac:
    li         $a0,132
    li         $a1,1024
    li         $a4,768
    li         $a3,806
    sh         $a3,2($sp)
    li         $a2,771
    b          .L0000062c
    sh         $a2,0($sp)
.L000008cc:
    lhu        $t0,0($sp)
    lhu        $a7,2($sp)
    addiu      $a6,$a1,1
    andi       $t0,$t0,0xfff
    andi       $a7,$a7,0xfff
    sll        $t0,$t0,0xc
    addiu      $a5,$a4,1
    or         $a7,$a7,$t0
    sw         $a7,48($s1)
    andi       $a6,$a6,0xfff
    andi       $a5,$a5,0xfff
    sw         $a6,40($s1)
    ori        $a5,$a5,0x1000
    b          .L000006ac
    sw         $a5,44($s1)
.L00000908:
    li         $a1,1280
    li         $t1,1065
    sh         $t1,2($sp)
    li         $a4,1024
    b          .L0000062c
    sh         $a4,0($sp)
.L00000920:
    lui        $a0,0x0
    sw         $t3,40($s1)
    andi       $t2,$a4,0xfff
    addiu      $a0,$a0,16
    ori        $t2,$t2,0x1000
    jal        kopt_find
    sw         $t2,44($s1)
    beqz       $v0, .L00000964
    li         $a2,49
    lbu        $a1,0($v0)
    beq        $a1, $a2, .L0000096c
    li         $v0,2
.L00000950:
    lw         $a3,24($s1)
    andi       $a3,$a3,0x7d
    or         $a3,$v0,$a3
    b          .L000006ac
    sw         $a3,24($s1)
.L00000964:
    b          .L00000950
    lw         $v0,4($sp)
.L0000096c:
    b          .L00000950
    move       $v0,$zero

glabel gbeStartVideoTiming
    addiu      $sp,$sp,-80
    sd         $s1,40($sp)
    sd         $s0,16($sp)
    sd         $s4,48($sp)
    lui        $v0,0xb400
    move       $s4,$a0
    ld         $at,40($v0)
    move       $s0,$a1
    sd         $ra,8($sp)
    lui        $v1,0xfffe
    sd         $s6,0($sp)
    ori        $v1,$v1,0xffff
    sll        $at,$at,0x0
    move       $s6,$a2
    sd         $s7,24($sp)
    and        $at,$at,$v1
    move       $s7,$a3
    sd         $s8,32($sp)
    sll        $at,$at,0x0
    move       $s8,$a4
    jal        flushbus
    sd         $at,40($v0)
    sd         $s2,56($sp)
    lui        $s1,0x1
    sd         $s5,72($sp)
    lui        $v0,0xff
    addu       $s1,$s4,$s1
    ori        $v0,$v0,0xffff
    sw         $v0,56($s1)
    jal        flushbus
    sw         $v0,52($s1)
    lh         $t9,20($s0)
    lh         $ra,30($s0)
    lui        $s2,0x3
    sll        $ra,$ra,0xc
    andi       $t9,$t9,0xfff
    addu       $s2,$s4,$s2
    or         $t9,$t9,$ra
    sw         $t9,4($s1)
    lw         $s5,0($s2)
    sd         $s3,64($sp)
    ori        $t8,$s5,0x8000
    jal        flushbus
    sw         $t8,0($s2)
    lui        $s3,0x2
    sw         $s5,0($s2)
    addu       $s3,$s4,$s3
    lw         $s5,0($s3)
    ori        $at,$s5,0x2000
    jal        flushbus
    sw         $at,0($s3)
    sw         $s5,0($s3)
    lui        $t8,0x4
    sw         $s6,12($s2)
    ori        $t8,$t8,0x4
    sw         $s7,8($s3)
    addu       $t8,$t8,$s4
    jal        flushbus
    sw         $s8,0($t8)
    lh         $s4,24($s0)
    lh         $ra,34($s0)
    lh         $s8,32($s0)
    addiu      $s4,$s4,-19
    lh         $a0,20($s0)
    andi       $s5,$s6,0x1
    andi       $ra,$ra,0xfff
    lh         $a1,8($s0)
    bltz       $s4, .L00000b88
    andi       $s8,$s8,0xfff
.L00000a88:
    sll        $ra,$ra,0xc
    addu       $at,$a1,$s4
    addiu      $at,$at,-2
    div        $zero,$at,$a0
    lw         $t9,8($s2)
    teq        $a0,$zero,0x7
    or         $s8,$s8,$ra
    andi       $t9,$t9,0x1
    sll        $s4,$s4,0xc
    mfhi       $t8
    beq        $s5, $t9, .L00000ad0
    or         $s4,$t8,$s4
.L00000ab8:
    jal        us_delay
    li         $a0,1
    lw         $v0,8($s2)
    andi       $v0,$v0,0x1
    bne        $s5, $v0, .L00000ab8
    nop
.L00000ad0:
    lw         $v1,4($s3)
    andi       $s2,$s7,0x1
    andi       $v1,$v1,0x1
    ld         $s6,0($sp)
    beq        $s2, $v1, .L00000b00
    ld         $s5,72($sp)
.L00000ae8:
    jal        us_delay
    li         $a0,1
    lw         $a0,4($s3)
    andi       $a0,$a0,0x1
    bne        $s2, $a0, .L00000ae8
    nop
.L00000b00:
    lh         $a0,32($s0)
    lw         $a1,0($s1)
    sltu       $a1,$a1,$a0
    ld         $s2,56($sp)
    bnez       $a1, .L00000b34
    ld         $s3,64($sp)
.L00000b18:
    jal        us_delay
    li         $a0,1
    lh         $a0,32($s0)
    lw         $a2,0($s1)
    sltu       $a2,$a2,$a0
    beqz       $a2, .L00000b18
    nop
.L00000b34:
    lw         $a3,0($s1)
    sltu       $a3,$a0,$a3
    bnez       $a3, .L00000b60
    nop
.L00000b44:
    jal        us_delay
    li         $a0,1
    lw         $a5,0($s1)
    lh         $a4,32($s0)
    sltu       $a4,$a4,$a5
    beqz       $a4, .L00000b44
    nop
.L00000b60:
    ld         $s0,16($sp)
    ld         $s7,24($sp)
    sw         $s4,52($s1)
    sw         $s8,56($s1)
    ld         $ra,8($sp)
    ld         $s1,40($sp)
    ld         $s4,48($sp)
    ld         $s8,32($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00000b88:
    b          .L00000a88
    addu       $s4,$a0,$s4

glabel crimeInitHW
    li         $a2,63
    sw         $a2,0($gp)
    li         $a4,127
    sw         $a4,0($gp)
    li         $v1,10
    sw         $v1,0($gp)
    addiu      $sp,$sp,-48
    sd         $s3,24($sp)
    sd         $s0,32($sp)
    sd         $s1,40($sp)
    lui        $v1,0xfef
    sd         $ra,8($sp)
    ori        $v1,$v1,0xff0a
    sw         $v1,0($gp)
    sd         $a3,16($sp)
    li         $a3,126
    sw         $a3,0($gp)
    lui        $v0,0x7
    sd         $s2,0($sp)
    ori        $v0,$v0,0x4
    move       $s2,$a0
    sw         $zero,1032($a0)
    addu       $v0,$v0,$a1
    move       $a0,$a1
    jal        gbeGmapInit
    sw         $zero,0($v0)
    li         $s3,7
    lw         $a5,0($gp)
    move       $s0,$zero
    move       $s1,$s2
    sw         $a5,1024($s2)
    and        $a6,$s0,$s3
.L00000c10:
    sd         $zero,4096($s1)
    sd         $zero,4608($s1)
    beq        $s3, $a6, .L00000d78
    sd         $zero,5120($s1)
.L00000c20:
    addiu      $s0,$s0,1
    slti       $a7,$s0,64
    beqz       $a7, .L00000c54
    and        $a0,$s0,$s3
    sd         $zero,4104($s1)
    sd         $zero,4616($s1)
    beq        $s3, $a0, .L00000d90
    sd         $zero,5128($s1)
.L00000c40:
    addiu      $s0,$s0,1
    slti       $t0,$s0,64
    addiu      $s1,$s1,16
    bnez       $t0, .L00000c10
    and        $a6,$s0,$s3
.L00000c54:
    move       $a2,$zero
    move       $a4,$s2
.L00000c5c:
    addiu      $a2,$a2,1
    slti       $t1,$a2,16
    sd         $zero,5888($a4)
    sd         $zero,6016($a4)
    beqz       $t1, .L00000c90
    move       $a0,$s2
    addiu      $a2,$a2,1
    addiu      $a4,$a4,16
    slti       $t2,$a2,16
    sd         $zero,5880($a4)
    bnez       $t2, .L00000c5c
    sd         $zero,6008($a4)
    move       $a0,$s2
.L00000c90:
    lw         $a1,0($gp)
    jal        crmFifoWait
    li         $a2,4096
    ld         $a3,16($sp)
    sw         $zero,16392($s2)
    move       $a2,$zero
    move       $a0,$s2
.L00000cac:
    addiu      $a2,$a2,1
    slti       $t3,$a2,28
    sd         $zero,5632($a0)
    beqz       $t3, .L00000ce0
    addiu      $a2,$a2,1
    slti       $t8,$a2,28
    sd         $zero,5640($a0)
    beqz       $t8, .L00000ce0
    addiu      $a2,$a2,1
    slti       $t9,$a2,28
    addiu      $a0,$a0,24
    bnez       $t9, .L00000cac
    sd         $zero,5624($a0)
.L00000ce0:
    beqz       $a3, .L00000d50
    sw         $zero,16392($s2)
    jal        get_cpu_irr
    nop
    sra        $ra,$v0,0x8
    slti       $ra,$ra,35
    move       $a3,$zero
    beqz       $ra, .L00000da8
    lw         $a4,0($gp)
    sw         $zero,0($gp)
    sw         $a4,0($gp)
.L00000d0c:
    li         $a1,4096
    sll        $v0,$a4,0x15
    addiu      $v1,$a4,-1
    li         $a0,10
    sll        $at,$v1,0x7
    sw         $a0,0($gp)
    or         $at,$at,$v0
    sll        $v0,$a3,0xe
    move       $a0,$s2
    sw         $v1,0($gp)
    or         $at,$at,$v0
    ori        $at,$at,0xa
    jal        crmIdleWait
    sw         $at,0($gp)
    lw         $a1,0($gp)
    jal        flushbus
    sw         $a1,1024($s2)
.L00000d50:
    ld         $s2,0($sp)
    ld         $s3,24($sp)
    ld         $ra,8($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    addiu      $sp,$sp,48
    lui        $a3,0x0
    li         $a2,1
    jr         $ra
    sh         $a2,56($a3)
.L00000d78:
    move       $a0,$s2
    lw         $a1,0($gp)
    jal        crmFifoWait
    li         $a2,4096
    b          .L00000c20
    sw         $zero,16392($s2)
.L00000d90:
    move       $a0,$s2
    lw         $a1,0($gp)
    jal        crmFifoWait
    li         $a2,4096
    b          .L00000c40
    sw         $zero,16392($s2)
.L00000da8:
    jal        get_cpu_irr
    nop
    li         $a5,39
    sra        $a4,$v0,0x8
    beq        $a4, $a5, .L00000dd0
    li         $a3,24
    sw         $a3,0($gp)
    li         $a4,48
    b          .L00000d0c
    sw         $a4,0($gp)
.L00000dd0:
    sw         $zero,0($gp)
    lw         $a4,0($gp)
    move       $a3,$zero
    b          .L00000d0c
    sw         $a4,0($gp)

glabel crmInitTp
    addiu      $sp,$sp,-96
    sd         $s5,8($sp)
    lw         $s5,48($a2)
    sd         $s0,24($sp)
    lui        $a6,0x0
    li         $a7,64
    sd         $s3,32($sp)
    addiu      $a6,$a6,0
    move       $s3,$a0
    sd         $s6,40($sp)
    andi       $v0,$a6,0x3f
    move       $s6,$a1
    move       $s0,$a3
    sd         $ra,64($sp)
    sd         $s1,16($sp)
    beqz       $v0, .L00000e30
    move       $s1,$v0
    subu       $s1,$a7,$v0
    sra        $s1,$s1,0x1
.L00000e30:
    sd         $s7,80($sp)
    sd         $s4,72($sp)
    sd         $s8,56($sp)
    sd         $s2,48($sp)
    addu       $a0,$s1,$s1
    addu       $a0,$a6,$a0
    jal        kvtophys
    sw         $a0,0($gp)
    li         $s2,-2
    lui        $s7,0x3
    lui        $s4,0x2
    addu       $s7,$s6,$s7
    and        $s2,$v0,$s2
    addu       $s4,$s6,$s4
    sw         $s2,12($s7)
    move       $s8,$v0
    jal        flushbus
    sw         $s2,8($s4)
    lw         $t8,4($s4)
    andi       $t8,$t8,0x1
    beqz       $t8, .L00000ea4
    addiu      $s1,$s2,32
.L00000e88:
    jal        us_delay
    li         $a0,10
    lw         $t9,4($s4)
    andi       $t9,$t9,0x1
    bnez       $t9, .L00000e88
    nop
    addiu      $s1,$s2,32
.L00000ea4:
    sw         $s1,8($s4)
    lw         $ra,4($s4)
    beq        $ra, $s1, .L00000ec8
    nop
.L00000eb4:
    jal        us_delay
    li         $a0,10
    lw         $at,4($s4)
    bne        $at, $s1, .L00000eb4
    nop
.L00000ec8:
    lbu        $a3,25($s0)
    li         $s2,3
    move       $s1,$zero
    move       $a0,$zero
    blez       $a3, .L00001124
    addiu      $t2,$sp,0
    lbu        $a6,24($s0)
    li         $s2,3
    b          .L00000f04
    sd         $zero,0($sp)
.L00000ef0:
    lbu        $a3,25($s0)
.L00000ef4:
    addiu      $a0,$a0,1
    slt        $v0,$a0,$a3
    beqz       $v0, .L00000fa0
    nop
.L00000f04:
    blez       $a6, .L00000ef4
    move       $a5,$zero
    sll        $t0,$a0,0x2
    b          .L0000112c
    addu       $a3,$s1,$s1
.L00000f18:
    ld         $v1,0($sp)
.L00000f1c:
    sd         $zero,0($sp)
    sd         $v1,5120($a1)
    lbu        $a6,24($s0)
.L00000f28:
    addiu      $a5,$a5,1
    lw         $a7,0($gp)
    slt        $a2,$a5,$a6
    andi       $t3,$a5,0x3
    sra        $t1,$a5,0x2
    beqz       $a2, .L00000ef0
    addu       $a7,$a7,$a3
    lw         $a6,8($s0)
.L00000f48:
    addu       $a6,$a6,$a3
    lhu        $a6,0($a6)
    andi       $a6,$a6,0x1fff
    sh         $a6,0($a7)
    addiu      $s1,$s1,1
    lw         $a4,8($s0)
    or         $a7,$t0,$t1
    addu       $a6,$t3,$t3
    addu       $a6,$t2,$a6
    addu       $a4,$a4,$a3
    sll        $a1,$a7,0x3
    addiu      $a3,$a3,2
    lhu        $a4,0($a4)
    addu       $a1,$s3,$a1
    beq        $t3, $s2, .L00000f18
    sh         $a4,0($a6)
    lbu        $a6,24($s0)
    addiu      $t3,$a6,-1
    bne        $a5, $t3, .L00000f28
    nop
    b          .L00000f1c
    ld         $v1,0($sp)
.L00000fa0:
    lw         $a1,4($s0)
.L00000fa4:
    lw         $a0,0($gp)
    jal        dki_dcache_wb
    addu       $a1,$a1,$a1
    lui        $a4,0x4
    ori        $a4,$a4,0x8000
    lui        $s0,0x1
    addu       $a4,$a4,$s6
    lui        $a3,0xff
    addu       $s0,$s6,$s0
    sw         $s2,0($a4)
    ori        $a3,$a3,0xffff
    sw         $a3,56($s0)
    sw         $a3,52($s0)
    lw         $s1,0($s7)
    ori        $a2,$s1,0x8000
    jal        flushbus
    sw         $a2,0($s7)
    sw         $s1,0($s7)
    lw         $s1,0($s4)
    ori        $a5,$s1,0x2000
    jal        flushbus
    sw         $a5,0($s4)
    sw         $s1,0($s4)
    ori        $a6,$s8,0x1
    jal        flushbus
    sw         $a6,8($s4)
    lw         $a7,4($s4)
    andi       $s1,$s8,0x1
    andi       $a7,$a7,0x1
    beq        $s1, $a7, .L00001038
    nop
.L00001020:
    jal        us_delay
    li         $a0,1
    lw         $t0,4($s4)
    andi       $t0,$t0,0x1
    bne        $s1, $t0, .L00001020
    nop
.L00001038:
    lh         $s1,24($s5)
    ld         $s4,72($sp)
    lh         $v0,32($s5)
    addiu      $s1,$s1,-19
    lh         $a0,20($s5)
    lh         $a1,8($s5)
    bltz       $s1, .L0000111c
    andi       $s6,$v0,0xfff
.L00001058:
    addu       $t9,$a1,$s1
    addiu      $t9,$t9,-2
    div        $zero,$t9,$a0
    lh         $t8,34($s5)
    teq        $a0,$zero,0x7
    lw         $t9,0($s0)
    sll        $s1,$s1,0xc
    andi       $t8,$t8,0xfff
    sll        $t8,$t8,0xc
    sltu       $t9,$t9,$v0
    or         $s6,$s6,$t8
    mfhi       $t8
    bnez       $t9, .L000010ac
    or         $s1,$t8,$s1
.L00001090:
    jal        us_delay
    li         $a0,1
    lh         $v0,32($s5)
    lw         $ra,0($s0)
    sltu       $ra,$ra,$v0
    beqz       $ra, .L00001090
    nop
.L000010ac:
    lw         $at,0($s0)
    sltu       $at,$v0,$at
    bnez       $at, .L000010dc
    ld         $s7,80($sp)
.L000010bc:
    jal        us_delay
    li         $a0,1
    lw         $v1,0($s0)
    lh         $v0,32($s5)
    sltu       $v0,$v0,$v1
    beqz       $v0, .L000010bc
    nop
    ld         $s7,80($sp)
.L000010dc:
    ld         $s8,56($sp)
    ld         $s2,48($sp)
    move       $a0,$s3
    sw         $s1,52($s0)
    lui        $a1,0x1
    sw         $s6,56($s0)
    jal        crmIdleWait
    ori        $a1,$a1,0x86a0
    ld         $s0,24($sp)
    ld         $s1,16($sp)
    ld         $ra,64($sp)
    ld         $s3,32($sp)
    ld         $s5,8($sp)
    ld         $s6,40($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L0000111c:
    b          .L00001058
    addu       $s1,$a0,$s1
.L00001124:
    b          .L00000fa4
    lw         $a1,4($s0)
.L0000112c:
    lw         $a7,0($gp)
    andi       $t3,$a5,0x3
    sra        $t1,$a5,0x2
    addu       $a7,$a7,$a3
    b          .L00000f48
    lw         $a6,8($s0)

glabel crmInvalidVideoTiming
    lh         $a4,44($a0)
    lh         $a3,40($a0)
    slti       $a5,$a4,4
    lh         $v0,42($a0)
    blez       $a3, .L00001184
    slti       $a3,$a3,257
    slti       $a2,$v0,65
    beqz       $a3, .L00001184
    nop
    blez       $v0, .L00001188
    li         $v0,1
    beqz       $a2, .L00001188
    li         $v0,1
    bltz       $a4, .L00001188
    li         $v0,1
    bnez       $a5, .L00001190
.L00001184:
    li         $v0,1
.L00001188:
    jr         $ra
    nop
.L00001190:
    move       $v0,$zero
    jr         $ra
    nop

glabel crime_setvideotiming
    addiu      $sp,$sp,-112
    sd         $s4,96($sp)
    move       $v0,$zero
    sd         $s0,72($sp)
    li         $a5,12
    li         $a7,0x8
    sd         $s2,56($sp)
    move       $s2,$a0
    move       $s0,$a1
    sd         $s1,80($sp)
    move       $s1,$a2
    lw         $t1,48($a1)
    lui        $t3,0x0
    addiu      $t0,$sp,0
    sd         $s3,64($sp)
    addiu      $t3,$t3,0
    addiu      $a6,$sp,4
    lw         $s3,4($t3)
    addiu      $t2,$t1,4
.L000011e8:
    addu       $t8,$v0,$t2
    lw         $t8,0($t8)
    addu       $at,$v0,$t1
    addiu      $a5,$a5,-2
    lw         $at,0($at)
    addu       $v1,$v0,$t0
    addu       $t9,$v0,$a6
    sw         $at,0($v1)
    addu       $v0,$v0,$a7
    bgtz       $a5, .L000011e8
    sw         $t8,0($t9)
    lw         $s4,0($t3)
    lw         $v0,0($s1)
    sd         $ra,88($sp)
    li         $t9,13
    lw         $at,228($s0)
    beq        $v0, $t9, .L00001390
    sd         $at,48($sp)
.L00001230:
    blez       $v0, .L00001264
    slti       $v1,$v0,16
    beqz       $v1, .L00001264
    lui        $a5,0x0
    li         $a6,1
    addiu      $a5,$a5,48
.L00001248:
    lw         $a7,0($a5)
    beq        $a7, $v0, .L00001378
    nop
    addiu      $a6,$a6,1
    sltiu      $t0,$a6,16
    bnez       $t0, .L00001248
    addiu      $a5,$a5,48
.L00001264:
    jal        crmInvalidVideoTiming
    move       $a0,$s1
    beqz       $v0, .L0000127c
    addiu      $a7,$s0,52
    b          .L00001358
    li         $v0,22
.L0000127c:
    move       $a5,$zero
    li         $v0,12
    move       $a6,$a7
    li         $t0,16
    addiu      $a2,$s1,4
    addiu      $a1,$s0,56
    li         $a0,0x8
.L00001298:
    addu       $t2,$a5,$s1
    addu       $t3,$a5,$a6
    lw         $t2,0($t2)
    addiu      $v0,$v0,-2
    addu       $t1,$a5,$a2
    sw         $t2,0($t3)
    addu       $t2,$a5,$a1
    lw         $t1,0($t1)
    addu       $a5,$a5,$a0
    bgtz       $v0, .L00001298
    sw         $t1,0($t2)
    sw         $a7,48($s0)
    sw         $t0,228($s0)
.L000012cc:
    move       $a0,$s4
    move       $a1,$s3
    move       $a2,$s0
    jal        crimeInitInfo
    li         $a3,1
    jal        crmResizeFb
    lw         $a0,48($s0)
    beqz       $v0, .L000013bc
    move       $s1,$v0
    move       $a2,$zero
    li         $a5,12
    lw         $a7,48($s0)
    addiu      $a6,$sp,0
    addiu      $t2,$sp,4
    li         $t1,0x8
    addiu      $t0,$a7,4
.L0000130c:
    addu       $t3,$a2,$t2
    lw         $t3,0($t3)
    addu       $t9,$a2,$a6
    addiu      $a5,$a5,-2
    lw         $t9,0($t9)
    addu       $ra,$a2,$a7
    addu       $t8,$a2,$t0
    sw         $t9,0($ra)
    addu       $a2,$a2,$t1
    bgtz       $a5, .L0000130c
    sw         $t3,0($t8)
    li         $a3,1
    move       $a2,$s0
    move       $a1,$s3
    ld         $t8,48($sp)
    move       $a0,$s4
    jal        crimeInitInfo
    sw         $t8,228($s0)
    move       $v0,$s1
.L00001358:
    ld         $s2,56($sp)
.L0000135c:
    ld         $s4,96($sp)
    ld         $ra,88($sp)
    ld         $s3,64($sp)
    ld         $s0,72($sp)
    ld         $s1,80($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L00001378:
    lh         $t9,20($a5)
    beqz       $t9, .L0000145c
    li         $v0,22
    sw         $a5,48($s0)
    b          .L000012cc
    sw         $a6,228($s0)
.L00001390:
    beqz       $s2, .L000013a8
    nop
    lbu        $ra,152($s2)
    andi       $ra,$ra,0x2
    beqz       $ra, .L00001464
    li         $a0,4
.L000013a8:
    lbu        $at,43($s0)
    beqz       $at, .L00001230
    nop
    b          .L00001358
    li         $v0,22
.L000013bc:
    beqz       $s2, .L00001448
    move       $a0,$s3
    lw         $v0,452($s2)
    beqz       $v0, .L00001448
    move       $a0,$s3
    b          .L000013f0
    li         $a1,-2
.L000013d8:
    lhu        $v1,644($a0)
    ori        $v1,$v1,0x1
    sh         $v1,644($a0)
.L000013e4:
    lw         $v0,20($v0)
    beqz       $v0, .L00001444
    nop
.L000013f0:
    lw         $a4,48($s0)
    lw         $a5,76($v0)
    lh         $a4,8($a4)
    sh         $a4,636($a5)
    lw         $a3,48($s0)
    lw         $a4,76($v0)
    lh         $a3,10($a3)
    sh         $a3,638($a4)
    lw         $a2,48($s0)
    lw         $a3,76($v0)
    lw         $a2,12($a2)
    sw         $a2,640($a3)
    lw         $a0,48($s0)
    lw         $a0,4($a0)
    andi       $a0,$a0,0x2
    bnez       $a0, .L000013d8
    lw         $a0,76($v0)
    lhu        $a5,644($a0)
    and        $a5,$a1,$a5
    b          .L000013e4
    sh         $a5,644($a0)
.L00001444:
    move       $a0,$s3
.L00001448:
    move       $a1,$s0
    jal        gbeRun
    move       $a2,$s2
    b          .L00001358
    move       $v0,$zero
.L0000145c:
    b          .L0000135c
    ld         $s2,56($sp)
.L00001464:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,32
    b          .L00001358
    li         $v0,22

glabel gbeGmapInit
    lw         $a4,0($gp)
    move       $a1,$zero
    lui        $a3,0x6
    lui        $a2,0x0
    addu       $a3,$a0,$a3
    beqz       $a4, .L000014cc
    addiu      $a2,$a2,768
.L00001494:
    lbu        $a4,0($a2)
    addiu      $a2,$a2,1
    addiu      $a3,$a3,4
    addiu      $a1,$a1,1
    sll        $a6,$a4,0x10
    slti       $a5,$a1,256
    sll        $a7,$a4,0x18
    sll        $a4,$a4,0x8
    or         $a6,$a6,$a7
    or         $a4,$a4,$a6
    bnez       $a5, .L00001494
    sw         $a4,-4($a3)
.L000014c4:
    jr         $ra
    nop
.L000014cc:
    move       $a2,$zero
    lui        $a4,0x101
    move       $a1,$zero
    ori        $a4,$a4,0x100
.L000014dc:
    addiu      $a1,$a1,1
    slti       $a5,$a1,256
    sw         $a2,0($a3)
    addu       $a2,$a2,$a4
    beqz       $a5, .L000014c4
    addiu      $a1,$a1,1
    slti       $a6,$a1,256
    addiu      $a3,$a3,8
    sw         $a2,-4($a3)
    bnez       $a6, .L000014dc
    addu       $a2,$a2,$a4
    b          .L000014c4
    nop

glabel gbeRun
    addiu      $sp,$sp,-48
    sd         $s0,32($sp)
    move       $s0,$a0
    sd         $s2,16($sp)
    move       $s2,$a2
    sd         $s1,24($sp)
    move       $s1,$a1
    sd         $ra,40($sp)
    jal        crm_callvideo
    li         $a1,1
    move       $a0,$s0
    addiu      $a1,$sp,0
    addiu      $a2,$sp,4
    jal        gbeStop
    addiu      $a3,$sp,8
    move       $a0,$s0
    jal        gbeSetTimingRegs
    move       $a1,$s1
    beqz       $s2, .L000015b4
    lw         $a1,48($s1)
    jal        crmLoadGbelists
    move       $a0,$s2
    move       $a0,$s2
    jal        gbeCacheVtInfo
    lw         $a1,48($s1)
    lw         $a4,8($sp)
    lw         $a2,132($s2)
    lw         $a1,48($s1)
    lw         $a3,4($a2)
    move       $a0,$s0
    jal        gbeStartVideoTiming
    lw         $a2,76($a2)
    ld         $s2,16($sp)
.L00001594:
    move       $a0,$s0
    ld         $s1,24($sp)
    jal        crm_callvideo
    li         $a1,2
    ld         $s0,32($sp)
    ld         $ra,40($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000015b4:
    lw         $a2,0($sp)
    lw         $a3,4($sp)
    move       $a0,$s0
    jal        gbeStartVideoTiming
    lw         $a4,8($sp)
    b          .L00001594
    ld         $s2,16($sp)

glabel gbeBlankScreen
    addiu      $sp,$sp,-64
    sd         $ra,48($sp)
    sd         $s4,8($sp)
    sd         $s1,24($sp)
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $s2,0($sp)
    move       $s2,$a2
    move       $s1,$a1
    sd         $s7,32($sp)
    move       $s7,$a3
    move       $s4,$a4
    sd         $s3,40($sp)
    move       $s3,$zero
    beqz       $a1, .L00001620
    sd         $s5,56($sp)
    lbu        $at,46($a1)
    beqz       $at, .L00001620
    nop
    li         $s3,1
.L00001620:
    lbu        $t8,45($s1)
    lui        $s5,0x0
    beqz       $t8, .L00001638
    lh         $s5,56($s5)
    bnez       $s0, .L000016b0
    li         $a1,25
.L00001638:
    beqz       $s7, .L000016c0
    nop
    beqz       $s4, .L00001664
    lui        $t9,0xa
    beqz       $s3, .L00001664
    lui        $t9,0xa
    beqz       $s5, .L00001664
    lui        $t9,0xa
    jal        i2cfp_PanelOff
    move       $a0,$s2
    lui        $t9,0xa
.L00001664:
    ori        $t9,$t9,0xa000
    sw         $t9,0($s2)
.L0000166c:
    lbu        $ra,45($s1)
    beqz       $ra, .L0000167c
    ld         $s2,0($sp)
    bnez       $s0, .L000016a0
.L0000167c:
    ld         $s3,40($sp)
.L00001680:
    ld         $s4,8($sp)
    ld         $s0,16($sp)
    ld         $ra,48($sp)
    ld         $s1,24($sp)
    ld         $s5,56($sp)
    ld         $s7,32($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L000016a0:
    jal        mutex_unlock
    addiu      $a0,$s0,468
    b          .L00001680
    ld         $s3,40($sp)
.L000016b0:
    jal        mutex_lock
    addiu      $a0,$s0,468
    b          .L00001638
    nop
.L000016c0:
    beqz       $s4, .L000016d4
    lui        $at,0x300a
.L000016c8:
    ori        $at,$at,0xa000
    b          .L0000166c
    sw         $at,0($s2)
.L000016d4:
    beqz       $s3, .L000016c8
    lui        $at,0x300a
    beqz       $s5, .L000016c8
    lui        $at,0x300a
    move       $a0,$s0
    move       $a1,$s1
    jal        i2cfp_PanelOn
    move       $a2,$s2
    b          .L000016c8
    lui        $at,0x300a

glabel gbeStop
    addiu      $sp,$sp,-80
    sd         $s3,40($sp)
    sd         $s1,64($sp)
    sd         $ra,8($sp)
    sd         $s5,16($sp)
    move       $s5,$a2
    sd         $s7,24($sp)
    move       $s7,$a3
    sd         $s2,0($sp)
    move       $s2,$a1
    sd         $s0,32($sp)
    move       $s0,$a0
    lui        $a0,0x0
    move       $a1,$zero
    jal        gbeCacheVtInfo
    lw         $a0,12($a0)
    lui        $s1,0x3
    sd         $s4,56($sp)
    addu       $s1,$s0,$s1
    lw         $a1,12($s1)
    li         $s3,-2
    sw         $a1,0($s2)
    and        $a1,$s3,$a1
    jal        flushbus
    sw         $a1,12($s1)
    lui        $s4,0x2
    sd         $s6,48($sp)
    addu       $s4,$s0,$s4
    lw         $t8,8($s4)
    sw         $t8,0($s5)
    and        $t8,$s3,$t8
    jal        flushbus
    sw         $t8,8($s4)
    lui        $s6,0x4
    addu       $s6,$s0,$s6
    lui        $t9,0x1
    lw         $t8,4($s6)
    nor        $t9,$t9,$zero
    sw         $t8,0($s7)
    and        $t8,$t8,$t9
    jal        flushbus
    sw         $t8,4($s6)
    lw         $t8,0($s5)
    andi       $t8,$t8,0x1
    lui        $s5,0x1
    move       $s0,$zero
    bnez       $t8, .L000017dc
    ld         $s7,24($sp)
    b          .L00001878
    nop
.L000017c4:
    jal        us_delay
    li         $a0,10
    addiu      $s0,$s0,1
.L000017d0:
    slti       $t9,$s0,20000
    beqz       $t9, .L0000182c
    nop
.L000017dc:
    lw         $ra,8($s1)
    andi       $ra,$ra,0x1
    bnez       $ra, .L000017c4
    nop
    lw         $at,4($s4)
    andi       $at,$at,0x1
    beqz       $at, .L0000180c
    nop
    jal        us_delay
    li         $a0,10
    b          .L000017d0
    addiu      $s0,$s0,1
.L0000180c:
    lw         $v0,0($s6)
    and        $v0,$s5,$v0
    beqz       $v0, .L0000182c
    nop
    jal        us_delay
    li         $a0,10
    b          .L000017d0
    addiu      $s0,$s0,1
.L0000182c:
    lw         $v1,0($s2)
    and        $v1,$s3,$v1
    addiu      $v1,$v1,32
    jal        flushbus
    sw         $v1,12($s1)
    b          .L00001860
    move       $s0,$zero
.L00001848:
    jal        us_delay
    li         $a0,10
    addiu      $s0,$s0,1
    slti       $a0,$s0,20000
    beqz       $a0, .L00001878
    nop
.L00001860:
    lw         $a2,0($s2)
    lw         $a1,8($s1)
    and        $a2,$s3,$a2
    addiu      $a2,$a2,32
    bne        $a1, $a2, .L00001848
    nop
.L00001878:
    ld         $s2,0($sp)
    ld         $s3,40($sp)
    ld         $s6,48($sp)
    ld         $s4,56($sp)
    ld         $ra,8($sp)
    ld         $s5,16($sp)
    ld         $s1,64($sp)
    ld         $s0,32($sp)
    jr         $ra
    addiu      $sp,$sp,80
