.section .text
.set noat
.set noreorder


glabel crmAddZ
    addiu      $sp,$sp,-96
    sd         $s5,80($sp)
    sd         $s3,56($sp)
    lw         $s3,32($a0)
    sd         $ra,72($sp)
    lw         $s3,28($s3)
    sd         $s0,40($sp)
    lw         $s0,0($s3)
    sd         $s2,64($sp)
    lbu        $s2,25($s0)
    sd         $s4,48($sp)
    move       $v0,$a0
    move       $s4,$a1
    sd         $s1,88($sp)
    addiu      $t2,$sp,0
    blez       $s2, .L00000200
    lbu        $s0,24($s0)
    move       $t8,$a1
    move       $t3,$s3
    move       $t9,$zero
    move       $s1,$zero
    b          .L00000080
    sd         $a0,32($sp)
.L0000005c:
    xor        $a6,$a6,$a4
    lhu        $at,0($t2)
    andi       $a6,$a6,0xffff
    addiu      $s1,$s1,1
    or         $at,$at,$a4
    bnez       $a6, .L000000f4
    sh         $at,0($t2)
.L00000078:
    beqz       $ra, .L00000144
    addiu      $t2,$t2,2
.L00000080:
    addiu      $t9,$t9,1
    addiu      $t8,$t8,2
    sh         $zero,0($t2)
    li         $a4,1
    lhu        $a7,-2($t8)
    move       $a5,$zero
    move       $v0,$t3
    addiu      $t3,$t3,32
    slt        $ra,$t9,$s2
    beqz       $a7, .L00000078
    move       $a6,$a7
    blez       $s0, .L00000078
    nop
    b          .L000002fc
    addiu      $a5,$a5,1
.L000000bc:
    sh         $t1,8($v0)
.L000000c0:
    addiu      $a5,$a5,1
    addiu      $v0,$v0,2
    beqz       $t0, .L00000078
    andi       $a4,$a7,0xffff
    slt        $t1,$a5,$s0
.L000000d4:
    and        $t0,$a6,$a4
    addiu      $a5,$a5,1
    beqz       $t0, .L000000f4
    sll        $a7,$a4,0x1
    lh         $t0,8($v0)
    beqz       $t0, .L0000005c
    addiu      $t0,$t0,1
    sh         $t0,8($v0)
.L000000f4:
    addiu      $v0,$v0,2
    andi       $a4,$a7,0xffff
    beqz       $t1, .L00000078
    slt        $t0,$a5,$s0
    sll        $a7,$a4,0x1
    and        $at,$a6,$a4
    beqz       $at, .L000000c0
    nop
    lh         $t1,8($v0)
    bnez       $t1, .L000000bc
    addiu      $t1,$t1,1
    xor        $a6,$a6,$a4
    lhu        $at,0($t2)
    andi       $a6,$a6,0xffff
    addiu      $s1,$s1,1
    or         $at,$at,$a4
    bnez       $a6, .L000000c0
    sh         $at,0($t2)
    b          .L00000078
    nop
.L00000144:
    beqz       $s1, .L00000200
    nop
    jal        kern_malloc
    addu       $a0,$s1,$s1
    move       $s5,$v0
    lw         $a2,0($s3)
    move       $a0,$v0
    move       $a1,$s1
    li         $a3,4
    jal        crmAllocTiles
    lw         $a2,12($a2)
    beqz       $v0, .L00000208
    move       $a1,$s4
    move       $a4,$zero
    addiu      $a5,$sp,0
.L00000180:
    lhu        $a7,0($a5)
    addiu      $a4,$a4,1
    lhu        $a6,0($a1)
    slt        $a3,$a4,$s2
    xor        $a6,$a6,$a7
    sh         $a6,0($a5)
    beqz       $a3, .L000001c8
    ld         $a0,32($sp)
    lhu        $t2,2($a5)
    addiu      $a4,$a4,1
    lhu        $t0,2($a1)
    slt        $t1,$a4,$s2
    addiu      $a1,$a1,4
    addiu      $a5,$a5,4
    xor        $t0,$t0,$t2
    bnez       $t1, .L00000180
    sh         $t0,-2($a5)
    ld         $a0,32($sp)
.L000001c8:
    jal        crmSubtractZ
    addiu      $a1,$sp,0
    jal        kern_free
    move       $a0,$s5
    li         $v0,12
.L000001dc:
    ld         $s1,88($sp)
    ld         $s5,80($sp)
    ld         $s0,40($sp)
    ld         $ra,72($sp)
    ld         $s2,64($sp)
    ld         $s3,56($sp)
    ld         $s4,48($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L00000200:
    b          .L000001dc
    move       $v0,$zero
.L00000208:
    lw         $at,0($s3)
    lbu        $at,21($at)
    lui        $t9,0x0
    addiu      $t9,$t9,0
    addu       $at,$at,$at
    addu       $at,$t9,$at
    lh         $ra,0($at)
    addu       $ra,$ra,$s1
    sh         $ra,0($at)
    lh         $t8,2($t9)
    addu       $t8,$t8,$s1
    sh         $t8,2($t9)
    lw         $t8,0($s3)
    lw         $t3,4($t8)
    addu       $t3,$t3,$s1
    jal        crmNextIncarnation
    sw         $t3,4($t8)
    lw         $v1,0($s3)
    blez       $s2, .L000002f4
    sw         $v0,16($v1)
    move       $v0,$zero
    move       $a5,$zero
    addiu      $t8,$sp,0
    move       $a0,$s3
    addiu      $t8,$t8,2
    addiu      $v0,$v0,1
.L00000270:
    lhu        $a1,-2($t8)
    li         $a7,1
    move       $a6,$zero
    move       $a4,$a0
    beqz       $a1, .L000002dc
    move       $t0,$a1
    lw         $a1,0($s3)
    lw         $a1,8($a1)
    blez       $s0, .L000002dc
    addu       $a1,$a1,$a5
.L00000298:
    addiu      $a6,$a6,1
    and        $a2,$t0,$a7
    sll        $t2,$a7,0x1
    xor        $t3,$t0,$a7
    beqz       $a2, .L000002cc
    slt        $t1,$a6,$s0
    li         $t0,1
    sh         $t0,8($a4)
    andi       $t0,$t3,0xffff
    lhu        $a3,0($s5)
    addiu      $s5,$s5,2
    beqz       $t0, .L000002dc
    sh         $a3,0($a1)
.L000002cc:
    andi       $a7,$t2,0xffff
    addiu      $a1,$a1,2
    bnez       $t1, .L00000298
    addiu      $a4,$a4,2
.L000002dc:
    addiu      $a0,$a0,32
    slt        $t1,$v0,$s2
    addiu      $t8,$t8,2
    addiu      $v0,$v0,1
    bnez       $t1, .L00000270
    addiu      $a5,$a5,32
.L000002f4:
    b          .L000001dc
    move       $v0,$zero
.L000002fc:
    b          .L000000d4
    slt        $t1,$a5,$s0

glabel crmSubtractZ
    addiu      $sp,$sp,-64
    sd         $a1,0($sp)
    sd         $s3,40($sp)
    sd         $s4,32($sp)
    sd         $ra,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    li         $a0,512
    jal        kern_malloc
    sd         $s2,24($sp)
    lw         $s3,32($s0)
    lw         $s3,28($s3)
    lw         $t3,0($s3)
    lbu        $s2,25($t3)
    move       $s4,$v0
    ld         $a1,0($sp)
    move       $t9,$zero
    move       $ra,$zero
    move       $s0,$zero
    sd         $s1,48($sp)
    move       $s1,$s3
    blez       $s2, .L0000044c
    lbu        $t3,24($t3)
    b          .L00000474
    addiu      $ra,$ra,1
.L00000368:
    addiu      $a6,$a6,2
    addiu      $a4,$a4,2
    beqz       $t1, .L000003c4
    andi       $a5,$t0,0xffff
.L00000378:
    addiu      $a7,$a7,1
    and        $at,$t2,$a5
    sll        $t0,$a5,0x1
    beqz       $at, .L00000368
    slt        $t1,$a7,$t3
    lh         $v0,8($a4)
    addiu      $v0,$v0,-1
    dsll32     $v0,$v0,0x10
    dsra32     $v0,$v0,0x10
    bnez       $v0, .L00000368
    sh         $v0,8($a4)
    xor        $t2,$t2,$a5
    addiu      $t8,$t8,2
    lhu        $v1,0($a6)
    andi       $t2,$t2,0xffff
    sh         $v1,-2($t8)
    addiu      $s0,$s0,1
    bnez       $t2, .L00000368
    sh         $zero,0($a6)
.L000003c4:
    slt        $t8,$ra,$s2
    addiu      $s1,$s1,32
    addiu      $ra,$ra,1
    beqz       $t8, .L00000410
    addiu      $t9,$t9,32
    lhu        $at,0($a1)
.L000003dc:
    addiu      $a1,$a1,2
    beqz       $at, .L000003c4
    move       $t2,$at
    lw         $a6,0($s3)
    lw         $a6,8($a6)
    blez       $t3, .L000003c4
    addu       $a6,$a6,$t9
    move       $a7,$zero
    move       $a4,$s1
    li         $a5,1
    addu       $t8,$s0,$s0
    b          .L00000378
    addu       $t8,$s4,$t8
.L00000410:
    beqz       $s0, .L00000450
    ld         $s1,48($sp)
    lw         $at,0($s3)
    lw         $t9,4($at)
    subu       $t9,$t9,$s0
    jal        crmNextIncarnation
    sw         $t9,4($at)
    lw         $a3,0($s3)
    sw         $v0,16($a3)
    lw         $a2,0($s3)
    move       $a1,$s0
    lbu        $a3,21($a2)
    move       $a0,$s4
    jal        crmFreeTiles
    lw         $a2,12($a2)
.L0000044c:
    ld         $s1,48($sp)
.L00000450:
    ld         $s3,40($sp)
    ld         $s2,24($sp)
    jal        kern_free
    move       $a0,$s4
    ld         $ra,16($sp)
    ld         $s4,32($sp)
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00000474:
    b          .L000003dc
    lhu        $at,0($a1)
