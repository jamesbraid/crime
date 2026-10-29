.section .text
.set noat
.set noreorder


glabel crmAddBackTiles
    addiu      $sp,$sp,-560
    sd         $s2,528($sp)
    lw         $s2,8($a0)
    sd         $s1,512($sp)
    sd         $s3,536($sp)
    move       $s3,$a0
    move       $s1,$a1
    sd         $s0,520($sp)
    move       $s0,$a2
    beqz       $a1, .L0000004c
    sd         $ra,544($sp)
    li         $a3,3
    lw         $a2,12($a0)
    jal        crmAllocTiles
    addiu      $a0,$sp,0
    beqz       $v0, .L00000050
    lui        $v0,0x0
    b          .L000000dc
    li         $a0,1
.L0000004c:
    lui        $v0,0x0
.L00000050:
    addiu      $v0,$v0,0
    lh         $v1,2($v0)
    lh         $at,6($v0)
    addiu      $a2,$sp,0
    addu       $v1,$v1,$s1
    sh         $v1,2($v0)
    addu       $at,$at,$s1
    blez       $s1, .L000000c4
    sh         $at,6($v0)
    move       $v0,$zero
.L00000078:
    lbu        $a1,0($s0)
    addiu      $v0,$v0,1
    slt        $v1,$v0,$s1
    addu       $a1,$a1,$a1
    lhu        $a0,0($a2)
    addu       $a1,$s2,$a1
    sh         $a0,0($a1)
    beqz       $v1, .L000000c4
    nop
    lbu        $a4,1($s0)
    addiu      $a2,$a2,4
    addiu      $v0,$v0,1
    slt        $a5,$v0,$s1
    addu       $a4,$a4,$a4
    lhu        $a3,-2($a2)
    addu       $a4,$s2,$a4
    addiu      $s0,$s0,2
    bnez       $a5, .L00000078
    sh         $a3,0($a4)
.L000000c4:
    lw         $a5,4($s3)
    addu       $a5,$a5,$s1
    jal        crmNextIncarnation
    sw         $a5,4($s3)
    sw         $v0,16($s3)
    move       $a0,$zero
.L000000dc:
    ld         $s0,520($sp)
    ld         $ra,544($sp)
    ld         $s1,512($sp)
    move       $v0,$a0
    ld         $s2,528($sp)
    ld         $s3,536($sp)
    jr         $ra
    addiu      $sp,$sp,560

glabel crmSubtractBackTiles
    addiu      $sp,$sp,-64
    sd         $ra,32($sp)
    sd         $s3,8($sp)
    sd         $s5,24($sp)
    sd         $s2,0($sp)
    move       $s2,$a1
    sd         $s0,16($sp)
    move       $s0,$a2
    move       $s5,$a0
    lw         $s3,8($a0)
    addu       $a0,$a1,$a1
    jal        kern_malloc
    sd         $s4,40($sp)
    move       $s4,$v0
    blez       $s2, .L000001ac
    sd         $s1,48($sp)
    move       $a2,$zero
    move       $a5,$v0
    move       $s1,$zero
.L00000148:
    lbu        $t0,0($s0)
    addu       $t0,$t0,$t0
    addu       $t0,$s3,$t0
    lhu        $a7,0($t0)
    addiu      $s0,$s0,1
    addiu      $a2,$a2,1
    beqz       $a7, .L00000174
    slt        $a6,$a2,$s2
    sh         $a7,0($a5)
    sh         $zero,0($t0)
    addiu      $s1,$s1,1
.L00000174:
    bnez       $a6, .L00000148
    addiu      $a5,$a5,2
    blez       $s1, .L000001b0
    ld         $s2,0($sp)
    lw         $t1,4($s5)
    subu       $t1,$t1,$s1
    jal        crmNextIncarnation
    sw         $t1,4($s5)
    lbu        $a3,21($s5)
    lw         $a2,12($s5)
    move       $a1,$s1
    move       $a0,$s4
    jal        crmFreeTiles
    sw         $v0,16($s5)
.L000001ac:
    ld         $s2,0($sp)
.L000001b0:
    ld         $s3,8($sp)
    ld         $s0,16($sp)
    ld         $s1,48($sp)
    ld         $s5,24($sp)
    jal        kern_free
    move       $a0,$s4
    ld         $ra,32($sp)
    ld         $s4,40($sp)
    jr         $ra
    addiu      $sp,$sp,64
