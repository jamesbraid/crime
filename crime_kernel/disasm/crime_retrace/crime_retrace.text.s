.section .text
.set noat
.set noreorder


glabel crimeRetraceInit
    addiu      $sp,$sp,-32
    sd         $s8,8($sp)
    move       $s8,$a0
    sd         $ra,0($sp)
    jal        kern_malloc
    li         $a0,848
    move       $a0,$v0
    sd         $v0,16($sp)
    jal        bzero
    li         $a1,848
    ld         $v0,16($sp)
    sw         $v0,140($s8)
    li         $a3,-1
    sw         $v0,0($gp)
    move       $a2,$zero
    lui        $at,0xff
    sb         $zero,28($v0)
    move       $a1,$zero
    ori        $at,$at,0xffff
    sw         $zero,32($v0)
    addiu      $a0,$v0,840
    jal        init_mutex
    sw         $at,808($v0)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel gbeCacheVtInfo
    addiu      $sp,$sp,-32
    li         $a7,16
    lui        $a6,0x1
    sd         $s0,16($sp)
    li         $at,-2
    beqz       $a0, .L00000200
    sd         $s1,24($sp)
    lw         $s0,140($a0)
    bnez       $a1, .L00000158
    lw         $s1,128($a0)
    lw         $v0,132($a0)
    lw         $v1,8($v0)
    lw         $a1,4($v0)
    lw         $a2,0($v0)
    lw         $a3,76($v0)
    lw         $a4,80($v0)
    lw         $a6,88($v0)
    lw         $a5,84($v0)
    and        $a6,$at,$a6
    sw         $a6,88($v0)
    and        $a5,$at,$a5
    sw         $a5,84($v0)
    and        $a4,$at,$a4
    sw         $a4,80($v0)
    and        $a3,$at,$a3
    sw         $a3,76($v0)
    and        $a2,$at,$a2
    sw         $a2,0($v0)
    and        $a1,$at,$a1
    sw         $a1,4($v0)
    and        $at,$at,$v1
    beqz       $s0, .L00000200
    sw         $at,8($v0)
    lw         $a7,0($gp)
    beqz       $a7, .L00000210
    sd         $ra,8($sp)
    li         $t2,4095
.L00000100:
    sh         $t2,8($s0)
    sh         $t2,10($s0)
    lui        $t1,0x1
    lui        $t0,0xff
    addu       $t1,$s1,$t1
    sd         $t1,0($sp)
    ori        $t0,$t0,0xffff
    jal        flushbus
    sw         $t0,32($t1)
    lui        $t2,0xff
    ld         $t3,0($sp)
    ori        $t2,$t2,0xffff
    sw         $t2,808($s0)
    jal        flushbus
    sw         $t2,36($t3)
    lw         $t3,0($gp)
    bnez       $t3, .L00000200
    ld         $ra,8($sp)
    jal        mutex_unlock
    addiu      $a0,$s0,840
    b          .L00000200
    ld         $ra,8($sp)
.L00000158:
    lh         $a4,32($a1)
    sh         $a4,12($s0)
    addiu      $a5,$a4,-32
    sh         $a5,8($s0)
    addiu      $a4,$a4,4
    andi       $a4,$a4,0xffff
    sh         $a4,10($s0)
    lh         $a3,30($a1)
    ori        $a5,$a6,0x20
    slt        $t0,$a4,$a3
    lui        $v1,0xfff
    addu       $t2,$a5,$s1
    bnez       $t0, .L00000198
    subu       $a3,$a4,$a3
    andi       $a4,$a3,0xffff
    sh         $a4,10($s0)
.L00000198:
    lhu        $t1,8($s0)
    sll        $t3,$a4,0xc
    or         $t1,$t1,$t3
    sw         $t1,0($t2)
    sw         $zero,32($s0)
    lw         $a3,4($a1)
    andi       $t0,$a3,0x10
    beqz       $t0, .L000001c8
    andi       $t8,$a3,0x2
    sw         $a7,32($s0)
    lw         $a3,4($a1)
    andi       $t8,$a3,0x2
.L000001c8:
    beqz       $t8, .L000001d4
    li         $t9,2
    sw         $t9,32($s0)
.L000001d4:
    lw         $v0,124($a0)
    lhu        $v0,34($v0)
    sll        $v0,$v0,0xf
    and        $v0,$v0,$v1
    sw         $v0,16($s0)
    lhu        $at,10($a1)
    sb         $zero,24($s0)
    sh         $at,14($s0)
    sll        $at,$at,0x1
    addiu      $at,$at,-1
    sh         $at,20($s0)
.L00000200:
    ld         $s1,24($sp)
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000210:
    li         $a1,25
    jal        mutex_lock
    addiu      $a0,$s0,840
    b          .L00000100
    li         $t2,4095

glabel crmInitGbeData
    addiu      $sp,$sp,-32
    sd         $s0,8($sp)
    lw         $s0,132($a0)
    li         $a1,1536
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $ra,0($sp)
    jal        bzero
    move       $a0,$s0
    lui        $a1,0x0
    lw         $a0,140($s1)
    addiu      $a1,$a1,0
    lbu        $v1,24($a1)
    sb         $v1,26($a0)
    lw         $v0,140($s1)
    lbu        $at,25($a1)
    sb         $at,27($v0)
    lw         $a3,0($gp)
    lbu        $a6,24($a1)
    lbu        $a2,25($a1)
    beqz       $a3, .L00000518
    lw         $a4,4($a1)
    mult       $a6,$a2
    mflo       $a4
    move       $a2,$zero
    sra        $a4,$a4,0x1
    move       $a3,$zero
    slti       $a7,$a4,1
    move       $a6,$s0
    addu       $a5,$a4,$a4
    bne        $zero, $a7, .L00000348
    xori       $a7,$a7,0x1
.L000002a4:
    lw         $t1,8($a1)
    addiu      $a2,$a2,1
    addu       $t1,$t1,$a3
    slt        $t0,$a2,$a4
    lhu        $t1,0($t1)
    addiu      $a3,$a3,2
    andi       $t1,$t1,0x1fff
    sh         $t1,512($a6)
    beqz       $t0, .L000002f0
    lw         $t2,8($a1)
    addiu      $a2,$a2,1
    addu       $t2,$t2,$a3
    slt        $t3,$a2,$a4
    lhu        $t2,0($t2)
    addiu      $a6,$a6,4
    addiu      $a3,$a3,2
    andi       $t2,$t2,0x1fff
    bnez       $t3, .L000002a4
    sh         $t2,510($a6)
.L000002f0:
    beqz       $a7, .L00000348
    move       $a3,$s0
    move       $a2,$zero
.L000002fc:
    lw         $t8,8($a1)
    addiu      $a2,$a2,1
    addu       $t8,$t8,$a5
    slt        $t3,$a2,$a4
    lhu        $t8,0($t8)
    addiu      $a5,$a5,2
    andi       $t8,$t8,0x1fff
    sh         $t8,768($a3)
    beqz       $t3, .L00000348
    lw         $t9,8($a1)
    addiu      $a2,$a2,1
    addu       $t9,$t9,$a5
    slt        $ra,$a2,$a4
    lhu        $t9,0($t9)
    addiu      $a3,$a3,4
    addiu      $a5,$a5,2
    andi       $t9,$t9,0x1fff
    bnez       $ra, .L000002fc
    sh         $t9,766($a3)
.L00000348:
    lw         $a3,0($gp)
.L0000034c:
    lui        $a1,0x0
    addiu      $a1,$a1,0
    move       $a2,$zero
    beqz       $a3, .L0000055c
    lw         $a6,4($a1)
    move       $a2,$zero
    sra        $a4,$a6,0x1
    move       $a3,$zero
    slti       $a7,$a4,1
    move       $a6,$s0
    addu       $a5,$a4,$a4
    bne        $zero, $a7, .L00000428
    xori       $a7,$a7,0x1
.L00000380:
    lw         $t1,8($a1)
    addiu      $a2,$a2,1
    addu       $t1,$t1,$a3
    slt        $t0,$a2,$a4
    lhu        $t1,0($t1)
    addiu      $a3,$a3,2
    andi       $t1,$t1,0x1fff
    sh         $t1,288($a6)
    beqz       $t0, .L000003cc
    lw         $t2,8($a1)
    addiu      $a2,$a2,1
    addu       $t2,$t2,$a3
    slt        $t3,$a2,$a4
    lhu        $t2,0($t2)
    addiu      $a6,$a6,4
    addiu      $a3,$a3,2
    andi       $t2,$t2,0x1fff
    bnez       $t3, .L00000380
    sh         $t2,286($a6)
.L000003cc:
    beqz       $a7, .L0000042c
    move       $a2,$zero
    move       $a3,$s0
    move       $a2,$zero
.L000003dc:
    lw         $t8,8($a1)
    addiu      $a2,$a2,1
    addu       $t8,$t8,$a5
    slt        $t3,$a2,$a4
    lhu        $t8,0($t8)
    addiu      $a5,$a5,2
    andi       $t8,$t8,0x1fff
    sh         $t8,352($a3)
    beqz       $t3, .L00000428
    lw         $t9,8($a1)
    addiu      $a2,$a2,1
    addu       $t9,$t9,$a5
    slt        $ra,$a2,$a4
    lhu        $t9,0($t9)
    addiu      $a3,$a3,4
    addiu      $a5,$a5,2
    andi       $t9,$t9,0x1fff
    bnez       $ra, .L000003dc
    sh         $t9,350($a3)
.L00000428:
    move       $a2,$zero
.L0000042c:
    move       $a3,$zero
    lui        $a1,0x0
    move       $a4,$s0
    addiu      $a1,$a1,0
.L0000043c:
    lw         $a5,8($a1)
    addu       $a5,$a5,$a3
    addiu      $a4,$a4,12
    addiu      $a2,$a2,1
    lhu        $a5,0($a5)
    slti       $a6,$a2,4
    sw         $zero,16($a4)
    sw         $zero,20($a4)
    sll        $a5,$a5,0x10
    addiu      $a3,$a3,2
    bnez       $a6, .L0000043c
    sw         $a5,24($a4)
    move       $a2,$zero
    move       $a3,$s0
.L00000474:
    lw         $a7,8($a1)
    addiu      $a2,$a2,1
    sltiu      $a6,$a2,64
    lhu        $a7,6($a7)
    andi       $a7,$a7,0x1fff
    sh         $a7,160($a3)
    beqz       $a6, .L000004b0
    lw         $t0,8($a1)
    addiu      $a2,$a2,1
    sltiu      $t1,$a2,64
    lhu        $t0,6($t0)
    addiu      $a3,$a3,4
    andi       $t0,$t0,0x1fff
    bnez       $t1, .L00000474
    sh         $t0,158($a3)
.L000004b0:
    jal        kvtophys
    addiu      $a0,$s0,160
    addiu      $a0,$s0,288
    jal        kvtophys
    sw         $v0,8($s0)
    addiu      $a0,$s0,352
    jal        kvtophys
    sw         $v0,4($s0)
    addiu      $a0,$s0,512
    jal        kvtophys
    sw         $v0,0($s0)
    addiu      $a0,$s0,768
    jal        kvtophys
    sw         $v0,76($s0)
    addiu      $a0,$s0,1024
    jal        kvtophys
    sw         $v0,80($s0)
    addiu      $a0,$s0,1280
    jal        kvtophys
    sw         $v0,84($s0)
    ld         $ra,0($sp)
    sw         $v0,88($s0)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000518:
    blez       $a4, .L0000034c
    move       $a2,$zero
    move       $a4,$zero
    move       $a3,$s0
.L00000528:
    lw         $t2,8($a1)
    addu       $t2,$t2,$a4
    lhu        $t2,0($t2)
    andi       $t2,$t2,0x1fff
    sh         $t2,512($a3)
    lw         $t1,4($a1)
    addiu      $a2,$a2,1
    slt        $t1,$a2,$t1
    addiu      $a3,$a3,2
    bnez       $t1, .L00000528
    addiu      $a4,$a4,2
    b          .L0000034c
    lw         $a3,0($gp)
.L0000055c:
    blez       $a6, .L00000428
    move       $a3,$s0
    move       $a4,$zero
.L00000568:
    lw         $t8,8($a1)
    addu       $t8,$t8,$a4
    lhu        $t8,0($t8)
    andi       $t8,$t8,0x1fff
    sh         $t8,288($a3)
    lw         $t3,4($a1)
    addiu      $a2,$a2,1
    slt        $t3,$a2,$t3
    addiu      $a3,$a3,2
    bnez       $t3, .L00000568
    addiu      $a4,$a4,2
    b          .L0000042c
    move       $a2,$zero

glabel crmLoadGbelists
    addiu      $sp,$sp,-80
    lh         $a7,10($a1)
    sd         $ra,40($sp)
    lh         $ra,8($a1)
    lui        $a6,0x0
    addiu      $a7,$a7,127
    sd         $s0,48($sp)
    addiu      $a6,$a6,0
    sra        $a5,$a7,0x6
    lw         $at,4($a6)
    srl        $a5,$a5,0x19
    lw         $s0,132($a0)
    addu       $a5,$a5,$a7
    li         $t0,512
    sd         $s1,72($sp)
    sra        $a5,$a5,0x7
    lbu        $a4,20($a6)
    beqz       $at, .L00000790
    move       $t3,$a5
    div        $zero,$t0,$a4
    mflo       $t1
    addu       $a3,$t1,$ra
    addiu      $a3,$a3,-1
    div        $zero,$a3,$t1
    lw         $a2,4($a1)
    teq        $a4,$zero,0x7
    andi       $a2,$a2,0x2
    teq        $t1,$zero,0x7
    mflo       $s1
    beqz       $a2, .L0000061c
    addiu      $a7,$s1,-1
    addu       $t3,$a5,$a5
.L0000061c:
    slti       $t8,$s1,1
    slti       $at,$t3,1
    srl        $t9,$t3,0x1f
    sd         $t9,0($sp)
    xori       $v0,$at,0x1
    sd         $v0,16($sp)
    bne        $zero, $at, .L000006c4
    addu       $t9,$t9,$t3
    move       $t0,$zero
    move       $a5,$s0
    lbu        $v1,24($a6)
.L00000648:
    mult       $t0,$v1
    move       $a2,$zero
    addiu      $t0,$t0,1
    mflo       $t2
    bltz       $a7, .L000006b4
    slt        $t1,$t0,$t3
    addu       $a4,$t2,$t2
.L00000664:
    lw         $t2,8($a6)
    addiu      $a4,$a4,2
    addiu      $a2,$a2,1
    addu       $t2,$t2,$a4
    slt        $a3,$a7,$a2
    lhu        $t2,-2($t2)
    addiu      $a5,$a5,2
    andi       $t2,$t2,0x1fff
    sh         $t2,510($a5)
    bnez       $a3, .L000006b4
    lw         $at,8($a6)
    addiu      $a4,$a4,2
    addiu      $a2,$a2,1
    addu       $at,$at,$a4
    slt        $v0,$a7,$a2
    lhu        $at,-2($at)
    addiu      $a5,$a5,2
    andi       $at,$at,0x1fff
    beqz       $v0, .L00000664
    sh         $at,510($a5)
.L000006b4:
    bnez       $t1, .L00000648
    lbu        $v1,24($a6)
    lw         $a2,4($a1)
    andi       $a2,$a2,0x2
.L000006c4:
    addiu      $a7,$s1,-1
    beqz       $a2, .L00000a20
    sd         $t9,56($sp)
    ld         $t3,56($sp)
    xori       $t9,$t8,0x1
    sra        $t3,$t3,0x1
    move       $t1,$zero
    move       $a5,$s0
    blez       $t3, .L00000768
    move       $t0,$t3
    addiu      $t1,$t1,1
.L000006f0:
    lbu        $t8,24($a6)
    mult       $t0,$t8
    move       $a4,$zero
    mflo       $t8
    beqz       $t9, .L0000075c
    slt        $t2,$t1,$t3
    addu       $a2,$t8,$t8
.L0000070c:
    lw         $v0,8($a6)
    addiu      $a2,$a2,2
    addiu      $a4,$a4,1
    addu       $v0,$v0,$a2
    slt        $at,$a7,$a4
    lhu        $v0,-2($v0)
    addiu      $a5,$a5,2
    andi       $v0,$v0,0x1fff
    sh         $v0,766($a5)
    bnez       $at, .L0000075c
    lw         $v1,8($a6)
    addiu      $a2,$a2,2
    addiu      $a4,$a4,1
    addu       $v1,$v1,$a2
    slt        $a3,$a7,$a4
    lhu        $v1,-2($v1)
    addiu      $a5,$a5,2
    andi       $v1,$v1,0x1fff
    beqz       $a3, .L0000070c
    sh         $v1,766($a5)
.L0000075c:
    addiu      $t0,$t0,1
    bnez       $t2, .L000006f0
    addiu      $t1,$t1,1
.L00000768:
    lw         $t0,140($a0)
    sb         $s1,26($t0)
    lw         $a7,140($a0)
    sb         $t3,27($a7)
    lh         $a6,10($a1)
    addiu      $a6,$a6,127
    sra        $a5,$a6,0x6
    srl        $a5,$a5,0x19
    addu       $a5,$a5,$a6
    sra        $a5,$a5,0x7
.L00000790:
    lui        $a4,0x0
    addiu      $a4,$a4,0
    lbu        $t1,20($a4)
    li         $a3,512
    div        $zero,$a3,$t1
    lw         $a2,4($a1)
    andi       $a2,$a2,0x2
    move       $t2,$a5
    ld         $s1,72($sp)
    mflo       $t9
    beqz       $a2, .L000007c4
    teq        $t1,$zero,0x7
    addu       $t2,$a5,$a5
.L000007c4:
    move       $a7,$zero
    addu       $t0,$t9,$ra
    sd         $t0,8($sp)
    slti       $a5,$t2,1
    srl        $t8,$t2,0x1f
    addiu      $t0,$t0,-1
    sd         $t0,32($sp)
    xori       $a6,$a5,0x1
    bne        $zero, $a5, .L00000868
    sd         $a6,24($sp)
    addu       $a6,$t9,$ra
    addiu      $a6,$a6,-1
    div        $zero,$a6,$t9
    teq        $t9,$zero,0x7
    move       $t0,$zero
    mflo       $a5
    move       $a0,$s0
    addiu      $a5,$a5,-1
    lbu        $t1,24($a4)
.L00000810:
    mult       $t0,$t1
    move       $a2,$zero
    addiu      $t0,$t0,1
    mflo       $t3
    bltz       $a5, .L00000858
    slt        $t1,$t0,$t2
    addu       $a6,$t3,$t3
.L0000082c:
    lw         $t3,8($a4)
    addiu      $a6,$a6,2
    addiu      $a2,$a2,1
    addu       $t3,$t3,$a6
    slt        $at,$a5,$a2
    lhu        $t3,-2($t3)
    addiu      $a0,$a0,2
    addiu      $a7,$a7,1
    andi       $t3,$t3,0x1fff
    beqz       $at, .L0000082c
    sh         $t3,286($a0)
.L00000858:
    bnez       $t1, .L00000810
    lbu        $t1,24($a4)
    lw         $a2,4($a1)
    andi       $a2,$a2,0x2
.L00000868:
    beqz       $a2, .L00000978
    sd         $t8,64($sp)
    ld         $a7,64($sp)
    addu       $a7,$a7,$t2
    move       $a2,$zero
    sra        $a7,$a7,0x1
    move       $t0,$zero
    move       $a0,$s0
    blez       $a7, .L00000ad0
    addiu      $t8,$a7,-1
    ld         $a6,32($sp)
    div        $zero,$a6,$t9
    move       $a2,$zero
    mflo       $a5
    teq        $t9,$zero,0x7
    slti       $t3,$a5,1
    addiu      $a5,$a5,-1
    xori       $t3,$t3,0x1
    addiu      $t0,$t0,1
.L000008b4:
    lbu        $t1,24($a4)
    mult       $a7,$t1
    move       $a6,$zero
    mflo       $t2
    beqz       $t3, .L000008fc
    slt        $t1,$t8,$t0
    addu       $a1,$t2,$t2
.L000008d0:
    lw         $t2,8($a4)
    addiu      $a1,$a1,2
    addiu      $a6,$a6,1
    addu       $t2,$t2,$a1
    slt        $t9,$a5,$a6
    lhu        $t2,-2($t2)
    addiu      $a0,$a0,2
    addiu      $a2,$a2,2
    andi       $t2,$t2,0x1fff
    beqz       $t9, .L000008d0
    sh         $t2,350($a0)
.L000008fc:
    addiu      $a7,$a7,1
    beqz       $t1, .L000008b4
    addiu      $t0,$t0,1
.L00000908:
    lw         $a1,0($gp)
.L0000090c:
    jal        bcopy
    addiu      $a0,$s0,288
    lw         $t3,8($s0)
    lw         $t8,4($s0)
    lw         $t9,0($s0)
    lw         $at,76($s0)
    lw         $v0,80($s0)
    lw         $a0,88($s0)
    lw         $v1,84($s0)
    ori        $a0,$a0,0x1
    sw         $a0,88($s0)
    ori        $v1,$v1,0x1
    sw         $v1,84($s0)
    ori        $v0,$v0,0x1
    sw         $v0,80($s0)
    ori        $at,$at,0x1
    sw         $at,76($s0)
    ori        $t9,$t9,0x1
    sw         $t9,0($s0)
    ld         $ra,40($sp)
    ori        $t8,$t8,0x1
    sw         $t8,4($s0)
    ori        $t3,$t3,0x1
    sw         $t3,8($s0)
    ld         $s0,48($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00000978:
    move       $t0,$zero
    lw         $a1,0($gp)
    addu       $a2,$a7,$a7
    move       $a7,$t2
    move       $a0,$s0
    addu       $a6,$t9,$ra
    beqz       $a1, .L00000ad8
    addiu      $a1,$a6,-1
    ld         $a2,24($sp)
    beqz       $a2, .L00000ae0
    nop
    div        $zero,$a1,$t9
    teq        $t9,$zero,0x7
    mflo       $a5
    move       $a2,$zero
    slti       $t3,$a5,1
    addiu      $a5,$a5,-1
    xori       $t3,$t3,0x1
    addiu      $t0,$t0,1
.L000009c4:
    lbu        $a6,24($a4)
    mult       $a7,$a6
    move       $a1,$zero
    mflo       $t8
    beqz       $t3, .L00000a0c
    slt        $t1,$t0,$t2
    addu       $a6,$t8,$t8
.L000009e0:
    lw         $t8,8($a4)
    addiu      $a1,$a1,1
    addu       $t8,$t8,$a6
    addiu      $a0,$a0,2
    slt        $t9,$a5,$a1
    lhu        $t8,0($t8)
    addiu      $a2,$a2,2
    addiu      $a6,$a6,2
    andi       $t8,$t8,0x1fff
    beqz       $t9, .L000009e0
    sh         $t8,350($a0)
.L00000a0c:
    addiu      $a7,$a7,1
    bnez       $t1, .L000009c4
    addiu      $t0,$t0,1
    b          .L0000090c
    lw         $a1,0($gp)
.L00000a20:
    addiu      $a7,$s1,-1
    lw         $t9,0($gp)
    move       $t1,$zero
    move       $a5,$s0
    move       $t0,$t3
    slti       $a2,$s1,1
    ld         $at,16($sp)
    beqz       $t9, .L00000768
    xori       $t9,$a2,0x1
    beqz       $at, .L00000ac8
    nop
    addiu      $t1,$t1,1
.L00000a50:
    lbu        $v0,24($a6)
    mult       $t0,$v0
    move       $a2,$zero
    mflo       $t8
    beqz       $t9, .L00000abc
    slt        $t2,$t1,$t3
    addu       $a4,$t8,$t8
.L00000a6c:
    lw         $a3,8($a6)
    addiu      $a4,$a4,2
    addiu      $a2,$a2,1
    addu       $a3,$a3,$a4
    slt        $v1,$a7,$a2
    lhu        $a3,-2($a3)
    addiu      $a5,$a5,2
    andi       $a3,$a3,0x1fff
    sh         $a3,766($a5)
    bnez       $v1, .L00000abc
    lw         $t8,8($a6)
    addiu      $a4,$a4,2
    addiu      $a2,$a2,1
    addu       $t8,$t8,$a4
    slt        $at,$a7,$a2
    lhu        $t8,-2($t8)
    addiu      $a5,$a5,2
    andi       $t8,$t8,0x1fff
    beqz       $at, .L00000a6c
    sh         $t8,766($a5)
.L00000abc:
    addiu      $t0,$t0,1
    bnez       $t2, .L00000a50
    addiu      $t1,$t1,1
.L00000ac8:
    b          .L00000768
    addu       $t3,$t3,$t3
.L00000ad0:
    b          .L0000090c
    lw         $a1,0($gp)
.L00000ad8:
    b          .L0000090c
    lw         $a1,0($gp)
.L00000ae0:
    b          .L00000908
    move       $a2,$zero

glabel crimeBlankscreen
    lw         $a5,140($a0)
    sb         $a1,25($a5)
    lw         $at,124($a0)
    lbu        $at,46($at)
    andi       $a4,$a1,0xff
    li         $v0,132
    li         $a3,2
    lui        $v1,0x1
    ori        $v1,$v1,0x2c
    beq        $at, $v0, .L00000b44
    lw         $a2,0($gp)
    beq        $a4, $a3, .L00000b4c
    nop
    beqz       $a2, .L00000b44
    nop
    lhu        $v0,14($a5)
    lw         $a1,128($a0)
    addiu      $v0,$v0,1
    andi       $v0,$v0,0xfff
    addu       $v1,$v1,$a1
    sll        $v0,$v0,0xc
    ori        $v0,$v0,0x1
    sw         $v0,0($v1)
.L00000b44:
    jr         $ra
    nop
.L00000b4c:
    beqz       $a2, .L00000b44
    lui        $v1,0xff
    lw         $a2,128($a0)
    lui        $a1,0x1
    ori        $a1,$a1,0x2c
    addu       $a1,$a1,$a2
    ori        $v1,$v1,0xf001
    jr         $ra
    sw         $v1,0($a1)

glabel crime_retrace_callback
    sw         $a2,-30692($gp)
    sw         $a1,-30696($gp)
    jr         $ra
    move       $v0,$zero

glabel crimeRetraceHandler
    addiu      $sp,$sp,-96
    sd         $s0,72($sp)
    sd         $s5,32($sp)
    sd         $s4,16($sp)
    sd         $s1,24($sp)
    lw         $s1,140($a1)
    move       $s4,$a1
    lw         $s5,128($a1)
    li         $a1,25
    sd         $s2,8($sp)
    addiu      $s2,$s1,840
    sd         $ra,40($sp)
    jal        mutex_lock
    move       $a0,$s2
    lui        $a0,0xb400
    ld         $v1,40($a0)
    lui        $a1,0xfffe
    ori        $a1,$a1,0xffff
    sll        $v1,$v1,0x0
    and        $v1,$v1,$a1
    sll        $v1,$v1,0x0
    sd         $v1,40($a0)
    lhu        $v0,10($s1)
    lui        $s0,0x1
    lhu        $at,8($s1)
    addu       $s0,$s5,$s0
    sll        $v0,$v0,0xc
    or         $at,$at,$v0
    jal        flushbus
    sw         $at,32($s0)
    ld         $a1,0($s1)
    li         $a2,1
    daddu      $a1,$a1,$a2
    sd         $a1,0($s1)
    lw         $a2,0($gp)
    lw         $a1,-30696($gp)
    lw         $a0,16($a2)
    addiu      $a0,$a0,1
    beqz       $a1, .L00000c28
    sw         $a0,16($a2)
    jalr       $a1
    lw         $a0,-30692($gp)
.L00000c28:
    sd         $s3,56($sp)
    sd         $s7,64($sp)
    lw         $a1,32($s1)
    sd         $s8,80($sp)
    li         $a3,2
    li         $t8,1
    sd         $s6,48($sp)
    li         $s6,1
    sd         $s2,0($sp)
    beq        $a3, $a1, .L00000e48
    move       $a5,$s6
.L00000c54:
    li         $a4,16
    lui        $a7,0x5
    beq        $a1, $a4, .L00000e68
    addu       $s2,$s5,$a7
.L00000c64:
    lbu        $a5,23($s1)
.L00000c68:
    move       $s3,$zero
    move       $s0,$s1
    move       $s8,$zero
    beqz       $a5, .L00000ca0
    li         $s6,1
    lw         $a6,32($s1)
    beqz       $a6, .L00000c98
    nop
    ld         $t0,0($s1)
    andi       $t0,$t0,0x1
    bnez       $t0, .L00000ca0
    nop
.L00000c98:
    b          .L00000fd4
    lw         $s7,4($s4)
.L00000ca0:
    lw         $s0,832($s1)
    beqz       $s0, .L00000cc0
    nop
.L00000cac:
    jal        rrmValidateRetrace
    move       $a0,$s0
    lw         $s0,36($s0)
    bnez       $s0, .L00000cac
    nop
.L00000cc0:
    sw         $zero,832($s1)
    lw         $t3,80($s4)
    lw         $t2,84($s4)
    lw         $t1,76($s4)
    addiu      $t3,$t3,1
    sw         $t3,80($s4)
    addiu      $t1,$t1,1
    bnez       $t2, .L00000df0
    sw         $t1,76($s4)
    lw         $t8,0($gp)
.L00000ce8:
    beqz       $t8, .L00000ef4
    nop
    lbu        $t9,22($s1)
    beqz       $t9, .L00000f14
    lui        $s0,0x7
.L00000cfc:
    lw         $ra,836($s1)
    beqz       $ra, .L00000d10
    addiu      $a0,$s1,836
    jal        crime_i2cFpGbeRetrace
    move       $a1,$s5
.L00000d10:
    ld         $s6,48($sp)
    ld         $s3,56($sp)
    ld         $s7,64($sp)
    ld         $s2,8($sp)
    ld         $s4,16($sp)
    ld         $s0,72($sp)
    ld         $s8,80($sp)
    ld         $s1,24($sp)
    ld         $s5,32($sp)
    jal        mutex_unlock
    ld         $a0,0($sp)
    ld         $ra,40($sp)
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,96
.L00000d4c:
    beqz       $a1, .L00000de8
    addiu      $a5,$a4,-1
    lbu        $at,24($s1)
    andi       $at,$at,0x1
    beqz       $at, .L00000de8
    addiu      $a5,$a4,-1
.L00000d64:
    addiu      $s3,$s3,1
    slti       $v0,$s3,32
    addiu      $s0,$s0,24
    lw         $a1,0($gp)
    beqz       $v0, .L00000ca0
    addiu      $s2,$s2,4
    lbu        $v1,56($s0)
.L00000d80:
    beqz       $v1, .L00000d64
    move       $a3,$zero
    lw         $a4,48($s0)
    slti       $a0,$a4,2
    beqz       $a0, .L00000d4c
    nop
    lw         $a1,44($s0)
    bne        $a1, $s7, .L00000dac
    lbu        $a1,57($s0)
    beqz       $a1, .L00000f68
    nop
.L00000dac:
    beq        $s6, $a1, .L00000e00
    nop
    sw         $zero,48($s0)
    lbu        $a3,23($s1)
    addiu      $a3,$a3,-1
    sb         $a3,23($s1)
    lbu        $a2,57($s0)
    beqz       $a2, .L00000e08
    nop
    addiu      $s8,$s8,1
    beq        $s8, $s6, .L00000f90
    nop
.L00000ddc:
    b          .L00000d64
    sb         $zero,56($s0)
    addiu      $a5,$a4,-1
.L00000de8:
    b          .L00000d64
    sw         $a5,48($s0)
.L00000df0:
    jal        rrmValidateVideoSync
    move       $a0,$s4
    b          .L00000ce8
    lw         $t8,0($gp)
.L00000e00:
    b          .L00000d64
    sw         $s6,48($s0)
.L00000e08:
    lw         $t1,40($s0)
    sw         $t1,-32768($s2)
    lbu        $t0,56($s0)
    li         $a7,2
    lw         $a6,40($s0)
    beq        $a7, $t0, .L00000fa0
    sw         $a6,36($s0)
    lw         $s7,44($s0)
    jal        rrmValidateBuffer
    move       $a0,$s7
    lw         $t2,76($s7)
    sb         $zero,1360($t2)
    sb         $zero,56($s0)
.L00000e3c:
    sw         $zero,52($s0)
    b          .L00000d64
    sw         $zero,44($s0)
.L00000e48:
    ld         $t3,0($s1)
    andi       $t3,$t3,0x1
    bne        $t3, $t8, .L00000c54
    li         $t8,64
    sw         $t8,24($s0)
    sw         $zero,24($s0)
    b          .L00000c54
    lw         $a1,32($s1)
.L00000e68:
    lbu        $t9,28($s1)
    addu       $a4,$s5,$a7
    beqz       $t9, .L00000c64
    move       $a3,$zero
    ld         $ra,0($s1)
    andi       $ra,$ra,0x1
    beqz       $ra, .L00000fb4
    sb         $zero,28($s1)
.L00000e88:
    move       $a1,$s1
    li         $t0,-4
    addiu      $a3,$a3,1
.L00000e94:
    lbu        $at,58($a1)
    beqz       $at, .L00000eb4
    slti       $a6,$a3,32
    lw         $v0,36($a1)
    and        $v0,$t0,$v0
    or         $v0,$a5,$v0
    sw         $v0,-32768($a4)
    sb         $s6,28($s1)
.L00000eb4:
    beqz       $a6, .L00000eec
    addiu      $a3,$a3,1
    lbu        $v1,82($a1)
    beqz       $v1, .L00000edc
    slti       $a6,$a3,32
    lw         $a0,60($a1)
    and        $a0,$t0,$a0
    or         $a0,$a5,$a0
    sw         $a0,-32764($a4)
    sb         $s6,28($s1)
.L00000edc:
    addiu      $a4,$a4,8
    addiu      $a3,$a3,1
    bnez       $a6, .L00000e94
    addiu      $a1,$a1,48
.L00000eec:
    b          .L00000c68
    lbu        $a5,23($s1)
.L00000ef4:
    lbu        $a2,153($s4)
    lui        $a1,0x7
    beqz       $a2, .L00000cfc
    addu       $a1,$a1,$s5
    lw         $a3,148($s4)
    sw         $a3,0($a1)
    b          .L00000cfc
    sb         $zero,153($s4)
.L00000f14:
    addu       $s0,$s5,$s0
    lw         $s2,4($s0)
    lw         $a3,148($s4)
    lui        $a1,0xfff
    andi       $a4,$s2,0x1
    and        $a1,$a3,$a1
    beqz       $a4, .L00000f60
    andi       $a3,$a3,0xfff
    sw         $zero,4($s0)
    lbu        $t8,24($s1)
    andi       $t8,$t8,0x1
    beqz       $t8, .L00000f54
    or         $at,$a3,$a1
    lw         $t9,16($s1)
    subu       $a1,$a1,$t9
    or         $at,$a3,$a1
.L00000f54:
    jal        flushbus
    sw         $at,0($s0)
    sw         $s2,4($s0)
.L00000f60:
    b          .L00000cfc
    sb         $zero,153($s4)
.L00000f68:
    lw         $v1,120($s4)
    lw         $v1,16384($v1)
    lui        $v0,0x1000
    and        $v0,$v0,$v1
    beqz       $v0, .L00000fc8
    nop
.L00000f80:
    bnez       $a3, .L00000d64
    nop
    b          .L00000dac
    nop
.L00000f90:
    jal        vsema
    addiu      $a0,$gp,0
    b          .L00000ddc
    nop
.L00000fa0:
    lw         $a1,52($s0)
    jal        rrmValidateMGRSwapBuf
    lw         $a0,0($s4)
    b          .L00000e3c
    sb         $zero,56($s0)
.L00000fb4:
    li         $a0,64
    sw         $a0,24($s0)
    li         $a5,2
    b          .L00000e88
    sw         $zero,24($s0)
.L00000fc8:
    li         $a3,1
    b          .L00000f80
    sw         $s6,48($s0)
.L00000fd4:
    lw         $a1,0($gp)
    b          .L00000d80
    lbu        $v1,56($s0)

glabel crime_i2cFpGbeRetrace
    lw         $a6,0($a0)
    li         $a7,1
    li         $at,2
    lui        $a5,0x6
    lui        $t0,0x0
    bne        $a6, $at, .L0000104c
    addiu      $a3,$t0,0
    move       $a4,$zero
    move       $a3,$zero
    lui        $a6,0x6
    lui        $a5,0x101
    ori        $a5,$a5,0x100
    addu       $a6,$a1,$a6
.L00001014:
    addiu      $a3,$a3,1
    slti       $a7,$a3,256
    sw         $a4,0($a6)
    addu       $a4,$a4,$a5
    beqz       $a7, .L00001040
    addiu      $a3,$a3,1
    slti       $t0,$a3,256
    addiu      $a6,$a6,8
    sw         $a4,-4($a6)
    bnez       $t0, .L00001014
    addu       $a4,$a4,$a5
.L00001040:
    sw         $zero,0($gp)
    jr         $ra
    sw         $zero,0($a0)
.L0000104c:
    addu       $a4,$a1,$a5
    bne        $a6, $a7, .L00001090
    move       $a1,$zero
.L00001058:
    lbu        $t1,0($a3)
    addiu      $a3,$a3,1
    addiu      $a4,$a4,4
    addiu      $a1,$a1,1
    sll        $t3,$t1,0x10
    slti       $t2,$a1,256
    sll        $t8,$t1,0x18
    sll        $t1,$t1,0x8
    or         $t3,$t3,$t8
    or         $t1,$t1,$t3
    bnez       $t2, .L00001058
    sw         $t1,-4($a4)
    sw         $a7,0($gp)
    sw         $zero,0($a0)
.L00001090:
    jr         $ra
    nop

glabel crime_FpSchedForRetrace
    lw         $a4,140($a0)
    lw         $a3,124($a0)
    sw         $zero,836($a4)
    beqz       $a1, .L000010bc
    lbu        $a3,40($a3)
    beqz       $a3, .L000010cc
    li         $a6,2
.L000010b4:
    jr         $ra
    nop
.L000010bc:
    bnez       $a3, .L000010b4
    li         $a5,1
    jr         $ra
    sw         $a5,836($a4)
.L000010cc:
    jr         $ra
    sw         $a6,836($a4)

glabel crimePreblankHandler
    addiu      $sp,$sp,-240
    sd         $s5,152($sp)
    sd         $s0,160($sp)
    sd         $s7,168($sp)
    sd         $ra,176($sp)
    lw         $v0,128($a1)
    sd         $s8,136($sp)
    lui        $a0,0xb400
    ld         $v1,40($a0)
    lw         $s8,132($a1)
    lui        $a2,0xfffd
    sd         $s1,120($sp)
    ori        $a2,$a2,0xffff
    sll        $v1,$v1,0x0
    lw         $s1,140($a1)
    and        $v1,$v1,$a2
    sll        $v1,$v1,0x0
    sd         $v1,40($a0)
    lbu        $at,152($a1)
    sd         $s4,184($sp)
    sd         $s6,128($sp)
    andi       $at,$at,0x4
    move       $s6,$a1
    sd         $s3,192($sp)
    sd         $s2,200($sp)
    beqz       $at, .L00001638
    addiu      $a6,$s8,28
    lw         $a0,32($s1)
    li         $s7,2
    beq        $s7, $a0, .L000017b4
    sd         $v0,112($sp)
.L00001150:
    li         $s5,1
    li         $a5,3
    move       $a7,$zero
    move       $v0,$a6
    move       $a0,$zero
    li         $t0,3
    b          .L000011b0
    move       $a1,$t0
.L00001170:
    lw         $a2,12($v0)
    sll        $t8,$a5,0x2
    subu       $t2,$t8,$a5
    sltu       $a3,$a7,$a2
    sll        $t3,$t2,0x2
    beqz       $a3, .L000016d4
    addu       $t1,$a6,$t3
    beq        $a5, $t0, .L0000119c
    move       $a7,$a2
    sw         $zero,4($t1)
    move       $a7,$a2
.L0000119c:
    move       $a5,$a0
.L000011a0:
    addiu      $a0,$a0,1
    slti       $a4,$a0,3
    beqz       $a4, .L000011f0
    addiu      $v0,$v0,24
.L000011b0:
    lw         $a2,4($v0)
    beq        $a2, $s5, .L00001668
    nop
    beq        $a2, $s7, .L00001698
    nop
.L000011c4:
    addiu      $a0,$a0,1
    slti       $t1,$a0,3
    beqz       $t1, .L000011f0
    nop
    lw         $a2,16($v0)
    beq        $a2, $s5, .L00001170
    nop
    bne        $a2, $s7, .L000011a0
    nop
    b          .L000011a0
    move       $a1,$a0
.L000011f0:
    beq        $a5, $t0, .L000013c0
    lui        $a0,0x0
    addiu      $a0,$a0,0
    lui        $t3,0x1
    lw         $t9,8($a0)
    lui        $t8,0x4
    addu       $v0,$a5,$a5
    lw         $ra,128($s6)
    sll        $t2,$a5,0x2
    addu       $t9,$t9,$v0
    ori        $t8,$t8,0x4
    subu       $t2,$t2,$a5
    lhu        $t9,0($t9)
    addu       $t8,$t8,$ra
    sll        $t2,$t2,0x2
    addu       $t2,$a6,$t2
    or         $t3,$t3,$t9
    sw         $t3,0($t8)
    beq        $a1, $t0, .L00001254
    sw         $s7,4($t2)
    sll        $a2,$a1,0x2
    subu       $a2,$a2,$a1
    sll        $a2,$a2,0x2
    addu       $a2,$a6,$a2
    sw         $zero,4($a2)
.L00001254:
    lw         $s0,8($a0)
    lw         $a1,-30716($gp)
    addu       $s0,$s0,$v0
    lhu        $s0,0($s0)
    beqz       $a1, .L00001274
    sll        $s0,$s0,0x4
    jal        tile_mapout
    move       $a0,$a1
.L00001274:
    move       $a0,$s0
    jal        tile_mapin
    li         $a1,16
    lw         $a0,0($v0)
    lhu        $t9,20($s1)
    andi       $t8,$a0,0x7ff
    sltu       $t8,$t8,$t9
    move       $s0,$v0
    bnez       $t8, .L000012ac
    sw         $v0,-30716($gp)
    sw         $a0,4($v0)
    lhu        $ra,14($s1)
    subu       $ra,$a0,$ra
    sw         $ra,0($v0)
.L000012ac:
    lw         $at,0($gp)
    beqz       $at, .L000013c0
    move       $a1,$zero
    move       $a5,$zero
    lhu        $a0,14($s1)
    move       $a2,$s0
.L000012c4:
    lw         $v0,0($a2)
    andi       $v0,$v0,0x7ff
    sltu       $v0,$v0,$a0
    beqz       $v0, .L000016a0
    addiu      $a2,$a2,4
    addiu      $a5,$a5,1
    slti       $v0,$a5,2048
    bnez       $v0, .L000012c4
    nop
    sw         $a1,-30716($gp)
.L000012ec:
    beqz       $v0, .L000016b8
    sll        $a2,$a5,0x2
    lhu        $v0,20($s1)
    b          .L00001310
    addu       $a2,$s0,$a2
.L00001300:
    addiu      $a5,$a5,1
    slti       $a3,$a5,2048
    beqz       $a3, .L000016bc
    subu       $s2,$s5,$a1
.L00001310:
    lw         $a4,0($a2)
    andi       $a4,$a4,0x7ff
    sltu       $a4,$a4,$v0
    bnez       $a4, .L00001300
    addiu      $a2,$a2,4
    subu       $s2,$a5,$a1
    addiu      $s2,$s2,1
    beqz       $s2, .L0000133c
    sltiu      $t8,$s2,1025
    bnez       $t8, .L00001344
    move       $a0,$s0
.L0000133c:
    move       $s2,$zero
    move       $a0,$s0
.L00001344:
    sll        $a2,$s2,0x2
    lui        $a1,0x0
    sw         $a2,-30712($gp)
    jal        bcopy
    addiu      $a1,$a1,0
    beqz       $s2, .L000013c0
    move       $a2,$zero
    lw         $a6,-30716($gp)
    addiu      $a7,$s2,-1
    lui        $a5,0x0
    addiu      $a5,$a5,0
    sll        $a6,$a6,0x2
    addiu      $a5,$a5,4096
    addu       $a6,$a6,$s0
.L0000137c:
    lhu        $t2,14($s1)
    addiu      $a2,$a2,1
    lw         $t1,0($a6)
    sltu       $t0,$a7,$a2
    subu       $t1,$t1,$t2
    sw         $t1,0($a5)
    bnez       $t0, .L000013c0
    nop
    lhu        $t9,14($s1)
    addiu      $a2,$a2,1
    lw         $t3,4($a6)
    sltu       $t8,$a7,$a2
    addiu      $a6,$a6,8
    addiu      $a5,$a5,8
    subu       $t3,$t3,$t9
    beqz       $t8, .L0000137c
    sw         $t3,-4($a5)
.L000013c0:
    lbu        $ra,23($s1)
    beqz       $ra, .L000017ac
    nop
    lw         $v1,32($s1)
    beqz       $v1, .L000013e8
    nop
    ld         $a0,0($s1)
    andi       $a0,$a0,0x1
    beqz       $a0, .L00001860
    nop
.L000013e8:
    sd         $zero,144($sp)
    lw         $a7,16($sp)
    addiu      $v0,$s8,768
    sd         $v0,56($sp)
    addiu      $at,$s8,512
    sd         $at,48($sp)
    lw         $a1,12($sp)
    addiu      $ra,$s8,1280
    sd         $ra,72($sp)
    move       $t1,$zero
    lw         $ra,8($sp)
    move       $s4,$zero
    addiu      $t8,$s6,484
    sd         $t8,80($sp)
    move       $s3,$s6
    addiu      $t9,$s8,1024
    sd         $t9,64($sp)
    move       $s2,$s1
    lw         $t9,4($sp)
    lui        $s0,0x0
    lw         $t3,0($sp)
    b          .L00001464
    addiu      $s0,$s0,0
.L00001444:
    lbu        $v1,57($s2)
    ori        $v1,$v1,0x2
    sb         $v1,57($s2)
.L00001450:
    addiu      $s4,$s4,1
    slti       $a0,$s4,32
    addiu      $s2,$s2,24
    beqz       $a0, .L00001518
    addiu      $s3,$s3,4
.L00001464:
    lbu        $v0,57($s2)
    bne        $s5, $v0, .L00001450
    nop
    lbu        $a2,56($s2)
    beqz       $a2, .L00001450
    nop
    lw         $a3,48($s2)
    slti       $a3,$a3,2
    beqz       $a3, .L00001450
    nop
    beq        $s7, $a2, .L00001814
    nop
.L00001494:
    lw         $a2,44($s2)
    beqz       $a2, .L00001450
    nop
    lw         $a4,80($a2)
    beqz       $a4, .L00001450
    nop
    lw         $a0,76($a2)
    lw         $a0,12($a0)
    lw         $a0,20($a0)
    beqz       $a0, .L00001450
    nop
    lbu        $a5,8($a0)
    beqz       $a5, .L00001868
    nop
    lw         $a3,4($s6)
    bne        $a2, $a3, .L000014f4
    nop
    lw         $a6,120($s6)
.L000014dc:
    lw         $a6,16384($a6)
    lui        $a4,0x1000
    and        $a4,$a4,$a6
    sltiu      $a4,$a4,1
    bnez       $a4, .L00001450
    nop
.L000014f4:
    addiu      $t1,$t1,1
    sd         $t1,208($sp)
    beq        $t1, $s5, .L00001880
    sd         $a0,232($sp)
.L00001504:
    blez       $a5, .L00001444
    move       $t0,$zero
    move       $v0,$a0
    b          .L000019dc
    addiu      $t0,$t0,1
.L00001518:
    sd         $a7,216($sp)
    beqz       $t1, .L0000153c
    sd         $a1,224($sp)
    ld         $s2,224($sp)
    jal        crmNextIncarnation
    ld         $s0,216($sp)
    jal        crmNextIncarnation
    sw         $v0,16($s0)
    sw         $v0,16($s2)
.L0000153c:
    lw         $t0,128($s6)
    lui        $a7,0x1
    addu       $a7,$a7,$t0
    lw         $a7,0($a7)
    lhu        $v0,12($s1)
    srl        $a7,$a7,0xc
    addiu      $t0,$v0,-4
    andi       $a7,$a7,0xfff
    slt        $a7,$a7,$t0
    bnez       $a7, .L000015a8
    lw         $t9,0($gp)
    lhu        $a0,8($s1)
    subu       $t1,$v0,$a0
    slti       $t1,$t1,100
    beqz       $t1, .L00001588
    lw         $t3,0($gp)
    addiu      $t2,$a0,-4
    sh         $t2,8($s1)
    lw         $t3,0($gp)
.L00001588:
    beqz       $t3, .L00001608
    ld         $t8,144($sp)
    beqz       $t8, .L00001638
    sb         $s5,22($s1)
    jal        mrunlock
    addiu      $a0,$s6,484
    b          .L0000163c
    ld         $s2,200($sp)
.L000015a8:
    beqz       $t9, .L00001608
    nop
    lbu        $ra,24($s1)
    lw         $a1,-30716($gp)
    xori       $ra,$ra,0x1
    lw         $a2,-30712($gp)
    andi       $at,$ra,0x1
    sb         $zero,22($s1)
    beqz       $at, .L0000184c
    sb         $ra,24($s1)
    lui        $a0,0x0
    addiu      $a0,$a0,0
    jal        bcopy
    addiu      $a0,$a0,4096
    lbu        $a2,24($s1)
.L000015e4:
    andi       $a2,$a2,0x1
    ld         $a3,112($sp)
    addiu      $a1,$gp,-30712
    sll        $a2,$a2,0x2
    addu       $a1,$a1,$a2
    lui        $a2,0x1
    addu       $a2,$a2,$a3
    lw         $a1,0($a1)
    sw         $a1,48($a2)
.L00001608:
    lbu        $a0,25($s1)
    ld         $v0,112($sp)
    lui        $v1,0x2
    beqz       $a0, .L000017d4
    addu       $v0,$v0,$v1
    lw         $a1,8($s8)
    sw         $a1,8($v0)
.L00001624:
    ld         $a2,144($sp)
    beqz       $a2, .L0000163c
    ld         $s2,200($sp)
    jal        mrunlock
    addiu      $a0,$s6,484
.L00001638:
    ld         $s2,200($sp)
.L0000163c:
    ld         $s3,192($sp)
    ld         $s4,184($sp)
    ld         $s7,168($sp)
    ld         $s0,160($sp)
    ld         $s5,152($sp)
    ld         $ra,176($sp)
    ld         $s1,120($sp)
    ld         $s6,128($sp)
    ld         $s8,136($sp)
    jr         $ra
    addiu      $sp,$sp,240
.L00001668:
    lw         $a2,0($v0)
    sll        $t2,$a5,0x2
    subu       $t8,$t2,$a5
    sltu       $a3,$a7,$a2
    sll        $t3,$t8,0x2
    beqz       $a3, .L000016b0
    addu       $t1,$a6,$t3
    beq        $a5, $t0, .L00001690
    move       $a7,$a2
    sw         $zero,4($t1)
.L00001690:
    b          .L000011c4
    move       $a5,$a0
.L00001698:
    b          .L000011c4
    move       $a1,$a0
.L000016a0:
    move       $a1,$a5
    slti       $v0,$a5,2048
    b          .L000012ec
    sw         $a5,-30716($gp)
.L000016b0:
    b          .L000011c4
    sw         $zero,4($v0)
.L000016b8:
    subu       $s2,$s5,$a1
.L000016bc:
    beqz       $s2, .L0000133c
    sltiu      $a4,$s2,1025
    beqz       $a4, .L0000133c
    nop
    b          .L00001344
    move       $a0,$s0
.L000016d4:
    b          .L000011a0
    sw         $zero,16($v0)
.L000016dc:
    sh         $a2,0($a6)
.L000016e0:
    lw         $a6,8($a1)
    addu       $a6,$a6,$t2
.L000016e8:
    lbu        $a4,24($a7)
    mult       $a5,$a4
    mflo       $a3
    lw         $a4,8($a7)
    addu       $a3,$t8,$a3
    addu       $a3,$a3,$a3
    addu       $a4,$a4,$a3
    lhu        $a4,0($a4)
    sh         $a4,0($a6)
    lw         $v1,8($a7)
    addu       $v1,$v1,$a3
    sh         $a2,0($v1)
    lbu        $at,8($a0)
    slt        $at,$t0,$at
    beqz       $at, .L00001444
    addiu      $t0,$t0,1
    lbu        $t2,20($v0)
.L0000172c:
    lbu        $at,26($s1)
    sra        $a5,$t2,0x4
    mult       $a5,$at
    addiu      $v0,$v0,1
    lw         $a6,8($a1)
    andi       $t8,$t2,0xf
    addu       $t2,$t2,$t2
    slt        $at,$t8,$at
    sd         $t2,104($sp)
    addu       $a6,$a6,$t2
    mflo       $t2
    lhu        $a2,0($a6)
    beqz       $at, .L000016e8
    addu       $t2,$t8,$t2
    lbu        $at,27($s1)
    slt        $a3,$t2,$ra
    sd         $a3,96($sp)
    slt        $at,$a5,$at
    subu       $v1,$t2,$ra
    sd         $v1,40($sp)
    addu       $v1,$v1,$v1
    beqz       $at, .L000016e8
    sd         $v1,88($sp)
    ld         $at,96($sp)
    ld         $v1,88($sp)
    addu       $a6,$t2,$t2
    ld         $t2,104($sp)
    bnez       $at, .L000016dc
    addu       $a6,$t3,$a6
    addu       $v1,$t9,$v1
    b          .L000016e0
    sh         $a2,0($v1)
.L000017ac:
    b          .L0000153c
    sd         $zero,144($sp)
.L000017b4:
    ld         $a1,0($s1)
    lbu        $a0,24($s1)
    li         $a2,-2
    and        $a0,$a0,$a2
    andi       $a1,$a1,0x1
    or         $a0,$a0,$a1
    b          .L00001150
    sb         $a0,24($s1)
.L000017d4:
    lbu        $a4,24($s1)
    ld         $a6,112($sp)
    lui        $a5,0x3
    sll        $a4,$a4,0x2
    ori        $a5,$a5,0xc
    addu       $a4,$s8,$a4
    addu       $a5,$a5,$a6
    lw         $a4,76($a4)
    sw         $a4,0($a5)
    lbu        $a3,24($s1)
    andi       $a3,$a3,0x1
    beqz       $a3, .L00001874
    nop
    lw         $a5,0($s8)
    b          .L00001624
    sw         $a5,8($v0)
.L00001814:
    lw         $a6,52($s2)
    beqz       $a6, .L00001494
    nop
    lw         $a0,184($s3)
    beqz       $a0, .L00001450
    nop
    lbu        $a5,8($a0)
    beqz       $a5, .L0000186c
    ori        $a2,$v0,0x2
    lw         $t0,4($s6)
    bnez       $t0, .L000014f4
    nop
    b          .L000014dc
    lw         $a6,120($s6)
.L0000184c:
    lui        $a0,0x0
    jal        bcopy
    addiu      $a0,$a0,0
    b          .L000015e4
    lbu        $a2,24($s1)
.L00001860:
    b          .L0000153c
    sd         $zero,144($sp)
.L00001868:
    ori        $a2,$v0,0x2
.L0000186c:
    b          .L00001450
    sb         $a2,57($s2)
.L00001874:
    lw         $a3,4($s8)
    b          .L00001624
    sw         $a3,8($v0)
.L00001880:
    jal        mrtryaccess
    ld         $a0,80($sp)
    ld         $a0,232($sp)
    beqz       $v0, .L0000153c
    ld         $t1,208($sp)
    lbu        $a4,24($s1)
    xori       $a4,$a4,0x2
    andi       $a5,$a4,0x2
    beqz       $a5, .L000019d0
    sb         $a4,24($s1)
    ld         $t3,64($sp)
    ld         $t9,72($sp)
.L000018b0:
    lw         $v0,0($gp)
    move       $a7,$s0
    beqz       $v0, .L000018c4
    lbu        $t0,27($s1)
    sra        $t0,$t0,0x1
.L000018c4:
    lbu        $a6,26($s1)
    mult       $t0,$a6
    slti       $a5,$t0,1
    xori       $t2,$a5,0x1
    mflo       $ra
    bne        $zero, $a5, .L0000193c
    sd         $t2,24($sp)
    move       $a5,$t3
    move       $t2,$zero
.L000018e8:
    lbu        $t8,24($s0)
    mult       $t2,$t8
    move       $a2,$zero
    addiu      $t2,$t2,1
    mflo       $a1
    blez       $a6, .L00001934
    slt        $t8,$t2,$t0
    addu       $v0,$a1,$a1
.L00001908:
    lw         $v1,8($s0)
    addiu      $v0,$v0,2
    addu       $v1,$v1,$v0
    lhu        $v1,-2($v1)
    andi       $v1,$v1,0x1fff
    sh         $v1,0($a5)
    lbu        $a6,26($s1)
    addiu      $a2,$a2,1
    slt        $at,$a2,$a6
    bnez       $at, .L00001908
    addiu      $a5,$a5,2
.L00001934:
    bnez       $t8, .L000018e8
    lw         $v0,0($gp)
.L0000193c:
    beqz       $v0, .L000019bc
    li         $a5,1
    ld         $a1,24($sp)
    beqz       $a1, .L000019b8
    move       $t2,$zero
    move       $t8,$t0
    move       $a5,$t9
    addiu      $t2,$t2,1
.L0000195c:
    lbu        $a3,24($s0)
    mult       $t8,$a3
    move       $v0,$zero
    slt        $a1,$t2,$t0
    addiu      $t8,$t8,1
    mflo       $a2
    blez       $a6, .L000019b0
    sd         $a2,32($sp)
    ld         $a2,32($sp)
    addu       $a2,$a2,$a2
.L00001984:
    lw         $a4,8($s0)
    addiu      $a2,$a2,2
    addu       $a4,$a4,$a2
    lhu        $a4,-2($a4)
    andi       $a4,$a4,0x1fff
    sh         $a4,0($a5)
    lbu        $a6,26($s1)
    addiu      $v0,$v0,1
    slt        $a3,$v0,$a6
    bnez       $a3, .L00001984
    addiu      $a5,$a5,2
.L000019b0:
    bnez       $a1, .L0000195c
    addiu      $t2,$t2,1
.L000019b8:
    li         $a5,1
.L000019bc:
    sd         $a5,144($sp)
    lui        $a1,0x0
    lbu        $a5,8($a0)
    b          .L00001504
    addiu      $a1,$a1,0
.L000019d0:
    ld         $t3,48($sp)
    b          .L000018b0
    ld         $t9,56($sp)
.L000019dc:
    b          .L0000172c
    lbu        $t2,20($v0)

glabel crm_copy_swap_boxes
    addiu      $sp,$sp,-208
    sd         $a0,184($sp)
    sd         $a1,88($sp)
    sd         $a2,152($sp)
    sd         $a3,168($sp)
    sd         $a4,120($sp)
    sd         $a5,128($sp)
    sd         $a6,136($sp)
    sd         $a7,96($sp)
    sd         $s8,80($sp)
    sd         $s7,72($sp)
    sd         $s5,64($sp)
    sd         $s1,56($sp)
    sd         $s0,48($sp)
    sd         $s4,40($sp)
    sd         $ra,32($sp)
    sd         $s6,24($sp)
    sd         $s3,16($sp)
    beqz       $a7, .L00001ca0
    sd         $s2,8($sp)
    ld         $v0,184($sp)
    move       $t1,$zero
    lui        $s7,0xf
    ori        $s7,$s7,0x4240
    addiu      $v1,$v0,12344
    addiu      $v0,$v0,8352
    ori        $v1,$v1,0x800
    sd         $v1,112($sp)
    ori        $v0,$v0,0x800
    b          .L00001cd0
    sd         $v0,104($sp)
.L00001a60:
    ld         $t1,176($sp)
.L00001a64:
    ld         $t8,96($sp)
    addiu      $t1,$t1,1
    sltu       $t8,$t1,$t8
    beqz       $t8, .L00001ca0
    sltiu      $t2,$t1,128
.L00001a78:
    beqz       $t2, .L00001a88
    ld         $t3,96($sp)
    b          .L00001a8c
    addiu      $t2,$t1,31
.L00001a88:
    addiu      $t2,$t1,127
.L00001a8c:
    ld         $t9,96($sp)
    sltu       $t3,$t3,$t2
    ld         $ra,152($sp)
    move       $s5,$zero
    beqz       $t3, .L00001aa8
    sd         $t2,176($sp)
    sd         $t9,176($sp)
.L00001aa8:
    ld         $s2,88($sp)
    blez       $ra, .L00001a64
    ld         $t1,176($sp)
    b          .L00001af4
    lw         $a1,0($s2)
.L00001abc:
    ld         $at,192($sp)
.L00001ac0:
    ld         $v0,0($sp)
    addiu      $at,$at,1
    sd         $at,192($sp)
    slt        $at,$at,$v0
    bnez       $at, .L00001b1c
    addiu      $s0,$s0,8
.L00001ad8:
    ld         $v1,152($sp)
.L00001adc:
    addiu      $s5,$s5,1
    slt        $v1,$s5,$v1
    addiu      $s2,$s2,8
    beqz       $v1, .L00001a60
    sw         $s0,-4($s2)
    lw         $a1,0($s2)
.L00001af4:
    lw         $s0,4($s2)
    lw         $a2,276($a1)
    lw         $a1,12($a1)
    subu       $a2,$s0,$a2
    sra        $a2,$a2,0x3
    subu       $a1,$a1,$a2
    blez       $a1, .L00001adc
    ld         $v1,152($sp)
    sd         $zero,192($sp)
    sd         $a1,0($sp)
.L00001b1c:
    lh         $s1,2($s0)
    ld         $a2,176($sp)
    sltu       $a2,$a2,$s1
    bnez       $a2, .L00001ad8
    li         $t2,-8
    lh         $t1,6($s0)
    lh         $s3,0($s0)
    lh         $s6,4($s0)
    addiu      $t1,$t1,-1
    sd         $t1,160($sp)
    subu       $t1,$t1,$s1
    addiu      $s6,$s6,-1
    addiu      $t1,$t1,1
    subu       $s8,$s6,$s3
    and        $t2,$t1,$t2
    addiu      $s8,$s8,1
    beqz       $t2, .L00001bc4
    move       $s4,$t1
    ld         $t3,168($sp)
    subu       $s4,$t1,$t2
    li         $a1,4
    sllv       $t3,$s3,$t3
    ld         $a0,184($sp)
    move       $a2,$s7
    or         $t3,$s1,$t3
    sd         $t3,144($sp)
    jal        crmFifoWait
    addu       $s1,$s1,$t2
    bnez       $v0, .L00001ad8
    ld         $at,184($sp)
    ld         $ra,168($sp)
    ld         $t9,120($sp)
    sllv       $ra,$s6,$ra
    or         $t9,$t9,$ra
    ld         $ra,144($sp)
    addiu      $t8,$s1,-1
    sw         $ra,12320($at)
    or         $t8,$t8,$t9
    sw         $t8,12328($at)
    ld         $t9,112($sp)
    sw         $ra,12336($at)
    sw         $t8,0($t9)
.L00001bc4:
    beqz       $s4, .L00001abc
    ld         $t3,136($sp)
    ld         $t1,128($sp)
    and        $t1,$s3,$t1
    subu       $t2,$s6,$t1
    addiu      $t2,$t2,1
    and        $t3,$t2,$t3
    beqz       $t3, .L00001c44
    nop
    subu       $s8,$t2,$t3
    ld         $s4,168($sp)
    li         $a1,4
    move       $a2,$s7
    sllv       $s4,$s3,$s4
    addu       $s3,$t1,$t3
    ld         $a0,184($sp)
    jal        crmFifoWait
    or         $s4,$s1,$s4
    bnez       $v0, .L00001ad8
    ld         $t8,160($sp)
    ld         $at,168($sp)
    ld         $t9,120($sp)
    addiu      $ra,$s3,-1
    sllv       $ra,$ra,$at
    or         $t9,$t9,$ra
    ld         $ra,184($sp)
    sw         $s4,12320($ra)
    or         $t8,$t8,$t9
    sw         $t8,12328($ra)
    ld         $t9,112($sp)
    sw         $s4,12336($ra)
    sw         $t8,0($t9)
.L00001c44:
    beqz       $s8, .L00001ac0
    ld         $at,192($sp)
    li         $a1,4
    ld         $a0,184($sp)
    jal        crmFifoWait
    move       $a2,$s7
    bnez       $v0, .L00001ad8
    ld         $a1,160($sp)
    ld         $v0,184($sp)
    sll        $a0,$s3,0x10
    andi       $v1,$s1,0xffff
    sll        $a2,$s6,0x10
    or         $v1,$v1,$a0
    sw         $zero,12408($v0)
    dsll32     $a3,$v1,0x0
    andi       $a1,$a1,0xffff
    ld         $a0,104($sp)
    or         $a2,$a2,$a3
    or         $a1,$a1,$a2
    sd         $a1,8304($v0)
    sw         $v1,0($a0)
    b          .L00001abc
    sw         $zero,8696($v0)
.L00001ca0:
    ld         $s0,48($sp)
    ld         $s1,56($sp)
    ld         $s2,8($sp)
    ld         $s3,16($sp)
    ld         $s4,40($sp)
    ld         $s5,64($sp)
    ld         $ra,32($sp)
    ld         $s6,24($sp)
    ld         $s7,72($sp)
    ld         $s8,80($sp)
    jr         $ra
    addiu      $sp,$sp,208
.L00001cd0:
    sltiu      $t2,$t1,128
    b          .L00001a78
    nop

glabel crmSwapBufd
    addiu      $sp,$sp,-608
    sd         $s0,544($sp)
    sd         $s1,520($sp)
    sd         $s2,584($sp)
    sd         $s3,576($sp)
    sd         $s4,552($sp)
    sd         $s5,536($sp)
    move       $a1,$zero
    sd         $s6,568($sp)
    li         $a3,-1
    lui        $a2,0x0
    sd         $s7,528($sp)
    sd         $s8,512($sp)
    move       $s8,$a0
    addiu      $a0,$gp,0
    sd         $ra,560($sp)
    jal        init_sema
    addiu      $a2,$a2,40
    jal        semahistoff
    addiu      $a0,$gp,0
    lw         $s4,24($s8)
    li         $s5,-3
    lui        $s0,0x0
    lw         $s6,120($s4)
    li         $s1,-1
    addiu      $s0,$s0,0
    lw         $a3,140($s4)
    addiu      $s7,$s4,484
    b          .L00001e30
    sd         $a3,600($sp)
.L00001d54:
    blez       $s2, .L00001e24
    move       $a0,$s4
    move       $a1,$s0
    jal        crmLoadTlbABC
    move       $a2,$zero
    move       $a0,$s4
    li         $a2,1
    lui        $a1,0x0
    jal        crmLoadTlbABC
    addiu      $a1,$a1,0
    lw         $a2,124($s4)
    lui        $a4,0x1
    li         $a5,-16
    lbu        $a2,47($a2)
    li         $t0,1284
    li         $a0,32
    li         $a6,-128
    li         $a7,260
    beq        $a0, $a2, .L000020a4
    li         $a3,17
    sw         $t0,8192($s6)
    sw         $a7,8200($s6)
.L00001dac:
    ld         $t2,-30720($gp)
    lui        $t9,0x20
    ori        $t9,$t9,0x278
    sw         $t9,8216($s6)
    lui        $t8,0x302
    sw         $t8,8288($s6)
    li         $t3,3
    sw         $t3,8624($s6)
    sw         $zero,8272($s6)
    sw         $zero,8280($s6)
    sw         $zero,8208($s6)
    sd         $t2,8360($s6)
    sw         $s1,12296($s6)
    li         $t1,2080
    sw         $t1,12288($s6)
    li         $t0,1
    sw         $t0,12352($s6)
    sw         $t0,12360($s6)
    lw         $a7,124($s4)
    move       $a2,$s2
    lhu        $a7,34($a7)
    addiu      $a1,$sp,256
    move       $a0,$s6
    jal        crm_copy_swap_boxes
    addiu      $a7,$a7,-1
    move       $a0,$s6
    lui        $a1,0xf
    sw         $zero,12408($s6)
    jal        crmIdleWait
    ori        $a1,$a1,0x423f
.L00001e24:
    jal        mrunlock
    move       $a0,$s7
    bgtz       $s3, .L00002054
.L00001e30:
    li         $a1,26
.L00001e34:
    jal        psema
    addiu      $a0,$gp,0
    beq        $v0, $s1, .L00002024
    lw         $a2,4($s0)
    beqz       $a2, .L00001e30
    move       $a0,$s7
    jal        mraccessf
    move       $a1,$zero
    jal        RRM_CheckValidFault
    move       $a0,$s8
    bltz       $v0, .L000020c8
    move       $s2,$zero
    move       $s3,$zero
    move       $a6,$s4
    addiu      $a2,$sp,0
    addiu      $t2,$sp,256
    move       $a4,$zero
    ld         $a3,600($sp)
    b          .L000020e8
    addiu      $a4,$a4,1
.L00001e84:
    sw         $a5,0($t2)
    addiu      $t2,$t2,8
    lw         $a7,276($a5)
    addiu      $s2,$s2,1
    sw         $a7,-4($t2)
.L00001e98:
    sw         $zero,68($a3)
.L00001e9c:
    addiu      $a6,$a6,8
    addiu      $a4,$a4,1
    beqz       $t0, .L00001d54
    addiu      $a3,$a3,48
    lbu        $a5,57($a3)
.L00001eb0:
    andi       $t0,$a5,0x2
    beqz       $t0, .L00001ec8
    slti       $t0,$a4,32
    lw         $t1,48($a3)
    blez       $t1, .L00001f38
    nop
.L00001ec8:
    beqz       $t0, .L00001d54
    nop
    lbu        $a5,81($a3)
    andi       $t3,$a5,0x2
    addiu      $a4,$a4,1
    beqz       $t3, .L00001e9c
    slti       $t0,$a4,32
    lw         $t8,72($a3)
    bgtz       $t8, .L00001e9c
    nop
    lw         $t1,68($a3)
    and        $t9,$s5,$a5
    beqz       $t1, .L00001fdc
    sb         $t9,81($a3)
    lw         $ra,80($t1)
    beqz       $ra, .L00001e98
    nop
    lw         $a5,76($t1)
    lw         $a5,12($a5)
    lw         $a5,20($a5)
    lw         $at,12($a5)
    addiu      $a2,$a2,8
    sw         $zero,-4($a2)
    addiu      $s3,$s3,1
    bnez       $at, .L00001e84
    sw         $t1,-8($a2)
    b          .L00001e9c
    sw         $zero,68($a3)
.L00001f38:
    lw         $t1,44($a3)
    and        $a7,$s5,$a5
    beqz       $t1, .L00001f94
    sb         $a7,57($a3)
    lw         $t3,80($t1)
    beqz       $t3, .L00001f8c
    nop
    lw         $a5,76($t1)
    lw         $a5,12($a5)
    lw         $a5,20($a5)
    lw         $t8,12($a5)
    addiu      $a2,$a2,8
    sw         $zero,-4($a2)
    addiu      $s3,$s3,1
    beqz       $t8, .L00001f8c
    sw         $t1,-8($a2)
    sw         $a5,0($t2)
    addiu      $t2,$t2,8
    lw         $a7,276($a5)
    addiu      $s2,$s2,1
    sw         $a7,-4($t2)
.L00001f8c:
    b          .L00001ec8
    sw         $zero,44($a3)
.L00001f94:
    lw         $a0,52($a3)
    beqz       $a0, .L00001ec8
    nop
    lw         $a5,184($a6)
    lw         $t3,12($a5)
    sw         $a0,4($a2)
    addiu      $a2,$a2,8
    lw         $t1,0($s4)
    addiu      $s3,$s3,1
    beqz       $t3, .L00001fd4
    sw         $t1,-8($a2)
    sw         $a5,0($t2)
    addiu      $t2,$t2,8
    lw         $t8,276($a5)
    addiu      $s2,$s2,1
    sw         $t8,-4($t2)
.L00001fd4:
    b          .L00001ec8
    sw         $zero,52($a3)
.L00001fdc:
    lw         $a0,76($a3)
    beqz       $a0, .L00001e9c
    nop
    lw         $a5,188($a6)
    lw         $ra,12($a5)
    sw         $a0,4($a2)
    addiu      $a2,$a2,8
    lw         $t9,0($s4)
    addiu      $s3,$s3,1
    beqz       $ra, .L0000201c
    sw         $t9,-8($a2)
    sw         $a5,0($t2)
    addiu      $t2,$t2,8
    lw         $at,276($a5)
    addiu      $s2,$s2,1
    sw         $at,-4($t2)
.L0000201c:
    b          .L00001e9c
    sw         $zero,76($a3)
.L00002024:
    ld         $s0,544($sp)
.L00002028:
    ld         $s1,520($sp)
    ld         $s2,584($sp)
    ld         $s3,576($sp)
    ld         $s4,552($sp)
    ld         $s5,536($sp)
    ld         $ra,560($sp)
    ld         $s6,568($sp)
    ld         $s7,528($sp)
    ld         $s8,512($sp)
    jr         $ra
    addiu      $sp,$sp,608
.L00002054:
    sd         $zero,592($sp)
    b          .L00002080
    addiu      $s2,$sp,0
.L00002060:
    jal        rrmValidateMGRSwapBuf
    nop
    ld         $v0,592($sp)
.L0000206c:
    addiu      $v0,$v0,1
    sd         $v0,592($sp)
    slt        $v0,$v0,$s3
    beqz       $v0, .L0000209c
    addiu      $s2,$s2,8
.L00002080:
    lw         $a1,4($s2)
    bnez       $a1, .L00002060
    lw         $a0,0($s2)
    jal        rrmValidateBuffer
    nop
    b          .L0000206c
    ld         $v0,592($sp)
.L0000209c:
    b          .L00001e34
    li         $a1,26
.L000020a4:
    li         $a3,18
    lui        $a4,0x3
    li         $a5,-8
    li         $a6,-64
    li         $a0,1576
    sw         $a0,8192($s6)
    li         $v1,552
    b          .L00001dac
    sw         $v1,8200($s6)
.L000020c8:
    jal        mrunlock
    move       $a0,$s7
    li         $a0,1
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,0
    b          .L00002028
    ld         $s0,544($sp)
.L000020e8:
    b          .L00001eb0
    lbu        $a5,57($a3)

glabel crimeSchedSwapBuf
    addiu      $sp,$sp,-48
    sd         $s1,8($sp)
    lw         $s1,140($a0)
    sd         $s0,16($sp)
    sd         $ra,24($sp)
    bltz       $a2, .L000021e4
    sd         $s2,32($sp)
    slti       $at,$a2,32
    beqz       $at, .L000021e4
    sll        $s0,$a2,0x2
    subu       $s0,$s0,$a2
    sll        $s0,$s0,0x3
    addu       $s0,$s1,$s0
    lbu        $v0,56($s0)
    bnez       $v0, .L000022b8
    nop
    lw         $t8,124($a0)
    lbu        $t8,47($t8)
    lw         $v0,36($s0)
    li         $t9,32
    li         $a7,20
    beq        $t8, $t9, .L0000222c
    andi       $a6,$v0,0x1c
    li         $t9,4
    beq        $a6, $t9, .L000021ec
    li         $ra,16
    beq        $a6, $ra, .L000021ec
    nop
    sb         $zero,57($s0)
    lw         $a0,28($a1)
    slti       $at,$a0,2
    bnez       $at, .L0000217c
    li         $s2,1
    b          .L00002180
    sw         $a0,48($s0)
.L0000217c:
    sw         $s2,48($s0)
.L00002180:
    sw         $zero,52($s0)
    sw         $a1,44($s0)
.L00002188:
    li         $v1,-4
    and        $v0,$v0,$v1
    beqz       $a3, .L00002280
    sw         $v0,36($s0)
    ori        $a0,$v0,0x2
    sw         $a0,40($s0)
.L000021a0:
    li         $a1,25
    addiu      $a0,$s1,840
    jal        mutex_lock
    sd         $a0,0($sp)
    sb         $s2,56($s0)
    lbu        $a1,23($s1)
    ld         $a0,0($sp)
    addiu      $a1,$a1,1
    jal        mutex_unlock
    sb         $a1,23($s1)
    move       $v0,$zero
.L000021cc:
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $s2,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000021e4:
    b          .L000021cc
    li         $v0,22
.L000021ec:
    lbu        $a3,57($s0)
    andi       $a3,$a3,0x2
    bnez       $a3, .L000022d0
    li         $s2,1
    sb         $s2,57($s0)
    sw         $v0,40($s0)
    lw         $a0,28($a1)
    slti       $a4,$a0,2
    bnez       $a4, .L0000221c
    nop
    b          .L00002220
    sw         $a0,48($s0)
.L0000221c:
    sw         $s2,48($s0)
.L00002220:
    sw         $zero,52($s0)
    b          .L000021a0
    sw         $a1,44($s0)
.L0000222c:
    beq        $a6, $a7, .L00002240
    li         $s2,1
    lbu        $a5,58($s0)
    beqz       $a5, .L0000228c
    li         $s2,1
.L00002240:
    lbu        $a6,57($s0)
    andi       $a6,$a6,0x2
    bnez       $a6, .L000022d4
    li         $a0,4
    sb         $s2,57($s0)
    sw         $v0,40($s0)
    lw         $a0,28($a1)
    slti       $a7,$a0,2
    bnez       $a7, .L00002270
    nop
    b          .L00002274
    sw         $a0,48($s0)
.L00002270:
    sw         $s2,48($s0)
.L00002274:
    sw         $zero,52($s0)
    b          .L000021a0
    sw         $a1,44($s0)
.L00002280:
    ori        $t0,$v0,0x1
    b          .L000021a0
    sw         $t0,40($s0)
.L0000228c:
    sb         $zero,57($s0)
    lw         $a0,28($a1)
    slti       $t1,$a0,2
    bnez       $t1, .L000022a8
    li         $s2,1
    b          .L000022ac
    sw         $a0,48($s0)
.L000022a8:
    sw         $s2,48($s0)
.L000022ac:
    sw         $zero,52($s0)
    b          .L00002188
    sw         $a1,44($s0)
.L000022b8:
    li         $a0,4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,48
    b          .L000021cc
    li         $v0,16
.L000022d0:
    li         $a0,4
.L000022d4:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,104
    b          .L000021cc
    li         $v0,16

glabel crimeUnSchedSwapBuf
    addiu      $sp,$sp,-48
    sd         $s3,24($sp)
    sd         $ra,32($sp)
    sd         $s0,40($sp)
    sd         $s1,16($sp)
    sd         $s4,8($sp)
    lw         $s4,24($a0)
    li         $v0,-22
    sd         $s2,0($sp)
    move       $s2,$a2
    bltz       $a2, .L00002324
    lw         $s1,140($s4)
    slti       $at,$a2,32
    bnez       $at, .L00002344
    li         $a1,25
.L00002324:
    ld         $s2,0($sp)
.L00002328:
    ld         $s3,24($sp)
    ld         $ra,32($sp)
    ld         $s4,8($sp)
    ld         $s0,40($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00002344:
    addiu      $s3,$s1,840
    jal        mutex_lock
    move       $a0,$s3
    sll        $s0,$s2,0x2
    subu       $s0,$s0,$s2
    sll        $s0,$s0,0x3
    addu       $s0,$s1,$s0
    lbu        $a0,57($s0)
    beqz       $a0, .L000023fc
    andi       $a0,$a0,0x2
    beqz       $a0, .L0000244c
    lbu        $v0,56($s0)
    beqz       $v0, .L00002464
    nop
.L0000237c:
    sb         $zero,56($s0)
    lbu        $t8,23($s1)
    move       $a0,$s3
    addiu      $t8,$t8,-1
    jal        mutex_unlock
    sb         $t8,23($s1)
    lbu        $t9,57($s0)
    andi       $t9,$t9,0x2
    beqz       $t9, .L000023e4
    nop
    lw         $s1,4($s4)
    beqz       $s1, .L000023e4
    nop
    lw         $a0,48($s1)
    lw         $ra,0($s4)
    bne        $ra, $a0, .L000023e4
    move       $a1,$s1
    jal        rrmInvalidateRN
    li         $a2,1
    lw         $a0,48($s1)
    lw         $at,4($a0)
    andi       $at,$at,0x1
    beqz       $at, .L000023e4
    nop
    jal        rrmDoUnMapGfx
    nop
.L000023e4:
    sb         $zero,57($s0)
.L000023e8:
    sw         $zero,44($s0)
    sw         $zero,48($s0)
    li         $v0,1
    b          .L00002324
    sw         $zero,52($s0)
.L000023fc:
    lw         $s2,44($s0)
    beqz       $s2, .L00002474
    nop
    sb         $zero,56($s0)
    lbu        $v0,23($s1)
    move       $a0,$s3
    addiu      $v0,$v0,-1
    jal        mutex_unlock
    sb         $v0,23($s1)
    sw         $zero,44($s0)
    sw         $zero,48($s0)
    sw         $zero,52($s0)
    lw         $a0,76($s2)
    beqz       $a0, .L00002444
    li         $v0,1
    lbu        $v1,1360($a0)
    addiu      $v1,$v1,1
    sb         $v1,1360($a0)
.L00002444:
    b          .L00002328
    ld         $s2,0($sp)
.L0000244c:
    bnez       $v0, .L0000237c
    nop
    jal        mutex_unlock
    move       $a0,$s3
    b          .L00002324
    move       $v0,$zero
.L00002464:
    jal        mutex_unlock
    move       $a0,$s3
    b          .L000023e8
    sb         $zero,57($s0)
.L00002474:
    jal        mutex_unlock
    move       $a0,$s3
    b          .L00002324
    move       $v0,$zero

glabel crimeSchedMgrSwapBuf
    addiu      $sp,$sp,-64
    sd         $a1,8($sp)
    sd         $ra,24($sp)
    sd         $s2,32($sp)
    sd         $s3,16($sp)
    sd         $s1,40($sp)
    lw         $s1,24($a0)
    move       $s3,$a2
    sd         $s1,0($sp)
    move       $s2,$a4
    jal        RRM_CheckValidFault
    lw         $s1,140($s1)
    li         $a0,16
    bltz       $v0, .L00002590
    sd         $s0,48($sp)
    sll        $s0,$s3,0x2
    subu       $s0,$s0,$s3
    sll        $s0,$s0,0x3
    addu       $s0,$s1,$s0
    lbu        $t8,56($s0)
    bnez       $t8, .L00002598
    andi       $v0,$s2,0x1c
    ld         $t8,0($sp)
    lw         $t8,124($t8)
    lbu        $t8,47($t8)
    li         $t9,32
    beq        $t8, $t9, .L00002510
    li         $a2,20
    li         $t9,4
    beq        $v0, $t9, .L00002524
    nop
    beq        $v0, $a0, .L00002524
    li         $v0,1
.L00002508:
    b          .L00002530
    sb         $zero,57($s0)
.L00002510:
    beq        $v0, $a2, .L00002524
    nop
    lbu        $ra,58($s0)
    beqz       $ra, .L00002508
    li         $v0,1
.L00002524:
    sw         $s2,36($s0)
    li         $v0,1
    sb         $v0,57($s0)
.L00002530:
    sw         $s2,40($s0)
    sw         $zero,44($s0)
    sw         $v0,48($s0)
    li         $a1,25
    addiu      $s3,$s1,840
    ld         $at,8($sp)
    sw         $at,52($s0)
    jal        mutex_lock
    move       $a0,$s3
    li         $v1,2
    sb         $v1,56($s0)
    lbu        $v0,23($s1)
    move       $a0,$s3
    addiu      $v0,$v0,1
    jal        mutex_unlock
    sb         $v0,23($s1)
    move       $v0,$zero
.L00002574:
    ld         $s3,16($sp)
    ld         $ra,24($sp)
    ld         $s0,48($sp)
    ld         $s2,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00002590:
    b          .L00002574
    li         $v0,-14
.L00002598:
    li         $a0,4
    move       $a2,$s3
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,144
    b          .L00002574
    li         $v0,16

glabel crimeSchedRetraceEvent
    addiu      $sp,$sp,-32
    sd         $s1,0($sp)
    lw         $s1,140($a0)
    sd         $s0,16($sp)
    move       $s0,$a1
    li         $a1,25
    sd         $s2,24($sp)
    addiu      $s2,$s1,840
    sd         $ra,8($sp)
    jal        mutex_lock
    move       $a0,$s2
    lw         $a3,832($s1)
    beqz       $a3, .L00002600
    move       $v0,$a3
.L000025ec:
    beq        $s0, $v0, .L0000262c
    nop
    lw         $v0,36($v0)
    bnez       $v0, .L000025ec
    nop
.L00002600:
    sw         $a3,36($s0)
    sw         $s0,832($s1)
    jal        mutex_unlock
    move       $a0,$s2
    move       $v0,$zero
.L00002614:
    ld         $ra,8($sp)
    ld         $s0,16($sp)
    ld         $s1,0($sp)
    ld         $s2,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000262c:
    jal        mutex_unlock
    move       $a0,$s2
    b          .L00002614
    move       $v0,$zero

glabel crimeRetraceCloseRN
    addiu      $sp,$sp,-32
    sd         $s1,0($sp)
    lw         $s1,140($a0)
    sd         $s0,8($sp)
    move       $s0,$a1
    li         $a1,25
    sd         $s8,24($sp)
    addiu      $s8,$s1,840
    sd         $ra,16($sp)
    jal        mutex_lock
    move       $a0,$s8
    move       $a2,$s1
    b          .L0000267c
    move       $a3,$zero
.L00002674:
    beqz       $a4, .L00002708
    addiu      $a2,$a2,48
.L0000267c:
    addiu      $a3,$a3,1
    lbu        $at,56($a2)
    beqz       $at, .L000026bc
    slti       $a4,$a3,32
    lw         $v0,44($a2)
    bne        $v0, $s0, .L000026bc
    nop
    sw         $zero,48($a2)
    sb         $zero,56($a2)
    lbu        $v1,23($s1)
    addiu      $v1,$v1,-1
    sb         $v1,23($s1)
    sb         $zero,58($a2)
    sb         $zero,57($a2)
    sw         $zero,52($a2)
    sw         $zero,44($a2)
.L000026bc:
    beqz       $a4, .L00002708
    nop
    lbu        $a0,80($a2)
    addiu      $a3,$a3,1
    beqz       $a0, .L00002674
    slti       $a4,$a3,32
    lw         $a1,68($a2)
    bne        $a1, $s0, .L00002674
    nop
    sw         $zero,72($a2)
    sb         $zero,80($a2)
    lbu        $a5,23($s1)
    addiu      $a5,$a5,-1
    sb         $a5,23($s1)
    sb         $zero,82($a2)
    sb         $zero,81($a2)
    sw         $zero,76($a2)
    b          .L00002674
    sw         $zero,68($a2)
.L00002708:
    lw         $a3,832($s1)
    bne        $a3, $s0, .L0000273c
    nop
    lw         $a6,36($a3)
    sw         $a6,832($s1)
.L0000271c:
    ld         $s1,0($sp)
.L00002720:
    ld         $s0,8($sp)
    jal        mutex_unlock
    move       $a0,$s8
    ld         $ra,16($sp)
    ld         $s8,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000273c:
    beqz       $a3, .L00002720
    ld         $s1,0($sp)
    lw         $a7,36($a3)
    beqz       $a7, .L0000271c
    move       $a2,$a7
.L00002750:
    beq        $s0, $a2, .L00002770
    nop
    lw         $t0,36($a2)
    move       $a3,$a2
    bnez       $t0, .L00002750
    move       $a2,$t0
    b          .L00002720
    ld         $s1,0($sp)
.L00002770:
    lw         $t1,36($a2)
    b          .L0000271c
    sw         $t1,36($a3)

glabel crmRetraceCloseAllRn
    addiu      $sp,$sp,-32
    sd         $s0,8($sp)
    lw         $s0,140($a0)
    li         $a1,25
    sd         $s1,0($sp)
    move       $s1,$a0
    sd         $s8,24($sp)
    addiu      $s8,$s0,840
    sd         $ra,16($sp)
    jal        mutex_lock
    move       $a0,$s8
    sb         $zero,23($s0)
    move       $a3,$s0
    move       $a2,$zero
.L000027b4:
    addiu      $a3,$a3,24
    sb         $zero,34($a3)
    sw         $zero,28($a3)
    addiu      $a2,$a2,1
    sb         $zero,33($a3)
    slti       $at,$a2,32
    sw         $zero,20($a3)
    bnez       $at, .L000027b4
    sb         $zero,32($a3)
    sb         $zero,28($s0)
    lw         $a0,464($s1)
    beqz       $a0, .L000027f8
    li         $a1,4
    jal        untimeout
    nop
    sw         $zero,464($s1)
    li         $a1,4
.L000027f8:
    ld         $s1,0($sp)
    jal        bzero
    addiu      $a0,$s0,836
    ld         $s0,8($sp)
    jal        mutex_unlock
    move       $a0,$s8
    ld         $ra,16($sp)
    ld         $s8,24($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel crimeSetDisplayMode
    lw         $a6,24($a0)
    li         $a7,-1025
    slti       $v0,$a1,32
    bltz       $a1, .L00002888
    lw         $a5,0($gp)
    beqz       $v0, .L00002888
    lui        $v1,0x4
    sll        $t0,$a1,0x2
    lw         $v0,140($a6)
    ori        $v1,$v1,0x8000
    beqz       $a5, .L00002854
    lw         $a4,128($a6)
    and        $a2,$a2,$a7
.L00002854:
    addu       $a0,$a4,$t0
    subu       $a5,$t0,$a1
    addu       $v1,$v1,$a0
    sll        $a5,$a5,0x3
    andi       $at,$a2,0x3
    sw         $a2,0($v1)
    addu       $a5,$v0,$a5
    sw         $a2,36($a5)
    beqz       $at, .L00002890
    sb         $zero,58($a5)
.L0000287c:
    move       $v0,$zero
    jr         $ra
    nop
.L00002888:
    jr         $ra
    li         $v0,-22
.L00002890:
    li         $a0,1
    sb         $a0,58($a5)
    b          .L0000287c
    sb         $a0,28($v0)

glabel crimeSetGammaRamp
    lw         $a5,24($a0)
    lw         $a7,0($gp)
    lui        $a4,0x0
    lw         $a5,128($a5)
    lui        $a6,0x6
    addiu      $a4,$a4,0
    beqz       $a7, .L00002924
    addu       $a5,$a5,$a6
    move       $v0,$zero
    move       $a3,$a5
.L000028c8:
    lbu        $a6,0($a1)
    lbu        $t1,256($a1)
    addu       $a6,$a6,$a4
    lbu        $t0,512($a1)
    addiu      $a1,$a1,1
    lbu        $a6,0($a6)
    addu       $t1,$t1,$a4
    addiu      $a3,$a3,4
    lbu        $t1,0($t1)
    addu       $t0,$t0,$a4
    addiu      $v0,$v0,1
    sll        $a6,$a6,0x18
    lbu        $t0,0($t0)
    slti       $a7,$v0,256
    sll        $t1,$t1,0x10
    or         $a6,$a6,$t1
    sll        $t0,$t0,0x8
    or         $a6,$a6,$t0
    bnez       $a7, .L000028c8
    sw         $a6,-4($a3)
    move       $v0,$zero
    jr         $ra
    nop
.L00002924:
    move       $v0,$zero
    move       $a3,$a5
.L0000292c:
    addiu      $a1,$a1,1
    lbu        $a7,-1($a1)
    addiu      $a3,$a3,4
    lbu        $t2,255($a1)
    addiu      $v0,$v0,1
    sll        $a7,$a7,0x18
    lbu        $t1,511($a1)
    slti       $t0,$v0,256
    sll        $t2,$t2,0x10
    or         $a7,$a7,$t2
    sll        $t1,$t1,0x8
    or         $a7,$a7,$t1
    bnez       $t0, .L0000292c
    sw         $a7,-4($a3)
    jr         $ra
    move       $v0,$zero

glabel crmFindFreeDidTbl
    lw         $v0,140($a0)
    addiu      $sp,$sp,-48
    sd         $s2,8($sp)
    lw         $s2,132($a0)
    sd         $ra,24($sp)
    sd         $s0,16($sp)
    addiu      $s2,$s2,28
    move       $s0,$zero
    sd         $s1,32($sp)
    move       $a3,$s2
.L00002994:
    lw         $t8,4($a3)
    beqz       $t8, .L000029d4
    addiu      $a3,$a3,12
    addiu      $s0,$s0,1
    slti       $t9,$s0,3
    bnez       $t9, .L00002994
    li         $a1,25
    addiu      $a0,$v0,840
    jal        mutex_lock
    sd         $a0,0($sp)
    move       $a3,$s2
    li         $a5,-1
    li         $s1,3
    move       $s0,$zero
    b          .L00002a00
    li         $a6,2
.L000029d4:
    ld         $ra,24($sp)
.L000029d8:
    ld         $s2,8($sp)
    ld         $s1,32($sp)
    move       $v0,$s0
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000029f0:
    addiu      $s0,$s0,1
    slti       $ra,$s0,3
    beqz       $ra, .L00002a40
    addiu      $a3,$a3,12
.L00002a00:
    lw         $a4,4($a3)
    beqz       $a4, .L00002a30
    nop
    beq        $a4, $a6, .L000029f0
    nop
    lw         $a4,0($a3)
    sltu       $at,$a4,$a5
    beqz       $at, .L000029f0
    nop
    move       $a5,$a4
    b          .L000029f0
    move       $s1,$s0
.L00002a30:
    jal        mutex_unlock
    ld         $a0,0($sp)
    b          .L000029d8
    ld         $ra,24($sp)
.L00002a40:
    sll        $v0,$s1,0x2
    subu       $v0,$v0,$s1
    sll        $v0,$v0,0x2
    ld         $a0,0($sp)
    addu       $v0,$s2,$v0
    jal        mutex_unlock
    sw         $zero,4($v0)
    b          .L000029d4
    move       $s0,$s1

glabel crime_hli_handler
    addiu      $sp,$sp,-48
    sd         $s2,16($sp)
    lw         $s2,140($a0)
    sd         $s0,0($sp)
    sll        $s0,$a1,0x2
    addu       $s0,$s2,$s0
    sd         $s0,32($sp)
    lw         $s0,812($s0)
    sd         $a0,24($sp)
    sd         $s1,8($sp)
    move       $s1,$a1
    bnez       $s0, .L00002ab4
    sd         $ra,40($sp)
    b          .L00002acc
    nop
.L00002aa0:
    jalr       $a3
    lw         $a0,8($s0)
    lw         $s0,20($s0)
    beqz       $s0, .L00002acc
    nop
.L00002ab4:
    lw         $a3,4($s0)
    bnez       $a3, .L00002aa0
    nop
    lw         $s0,20($s0)
    bnez       $s0, .L00002ab4
    nop
.L00002acc:
    lw         $a1,828($s2)
    li         $a7,2
    li         $a5,1
    li         $t0,3
    lui        $a4,0xb400
    ld         $t8,32($sp)
    beqz       $a1, .L00002b64
    ori        $t1,$a4,0x28
    lw         $a6,812($t8)
    sw         $a1,812($t8)
    beq        $s1, $a7, .L00002bc4
    lw         $a3,12($a1)
    beq        $s1, $t0, .L00002c04
    nop
.L00002b04:
    lw         $s0,20($a1)
    addiu      $a0,$a3,3
    beqz       $s0, .L00002bfc
    nop
.L00002b14:
    lw         $t9,12($s0)
    sltu       $t9,$t9,$a0
    beqz       $t9, .L00002b3c
    nop
    lw         $ra,20($s0)
    move       $a1,$s0
    bnez       $ra, .L00002b14
    move       $s0,$ra
    b          .L00002b68
    ld         $s0,0($sp)
.L00002b3c:
    sw         $zero,20($a1)
    sw         $s0,828($s2)
    lw         $a0,20($s0)
    beqz       $a0, .L00002b60
    nop
.L00002b50:
    move       $s0,$a0
    lw         $a0,20($a0)
    bnez       $a0, .L00002b50
    nop
.L00002b60:
    sw         $a6,20($s0)
.L00002b64:
    ld         $s0,0($sp)
.L00002b68:
    ld         $a0,40($a4)
    ld         $ra,40($sp)
    li         $a1,2
    beqz       $s1, .L00002c38
    sll        $a0,$a0,0x0
    beq        $s1, $a5, .L00002c4c
    nop
    beq        $s1, $a1, .L00002c60
    lui        $a1,0xfffb
    li         $a1,3
    beq        $s1, $a1, .L00002bb4
    lui        $a1,0xfff7
.L00002b98:
    ld         $s2,16($sp)
    dsll32     $a2,$a0,0x0
    ld         $s1,8($sp)
    dsrl32     $a2,$a2,0x0
    addiu      $sp,$sp,48
    jr         $ra
    sd         $a2,0($t1)
.L00002bb4:
    ori        $a1,$a1,0xffff
    and        $a0,$a0,$a1
    b          .L00002b98
    sll        $a0,$a0,0x0
.L00002bc4:
    ld         $t0,-30712($gp)
    lw         $a2,808($s2)
    andi       $a7,$a3,0xfff
    sll        $a7,$a7,0xc
    and        $a2,$a2,$t0
    ld         $t0,24($sp)
    or         $a2,$a2,$a7
    sw         $a2,808($s2)
    lui        $a7,0x1
    lw         $t0,128($t0)
    ori        $a7,$a7,0x24
    addu       $a7,$a7,$t0
    b          .L00002b04
    sw         $a2,0($a7)
.L00002bfc:
    b          .L00002b64
    sw         $a6,828($s2)
.L00002c04:
    lw         $t2,808($s2)
    li         $t3,-4096
    ld         $t8,24($sp)
    and        $t2,$t2,$t3
    andi       $t3,$a3,0xfff
    or         $t2,$t2,$t3
    sw         $t2,808($s2)
    lw         $t8,128($t8)
    lui        $t3,0x1
    ori        $t3,$t3,0x24
    addu       $t3,$t3,$t8
    b          .L00002b04
    sw         $t2,0($t3)
.L00002c38:
    lui        $a1,0xfffe
    ori        $a1,$a1,0xffff
    and        $a0,$a0,$a1
    b          .L00002b98
    sll        $a0,$a0,0x0
.L00002c4c:
    lui        $a1,0xfffd
    ori        $a1,$a1,0xffff
    and        $a0,$a0,$a1
    b          .L00002b98
    sll        $a0,$a0,0x0
.L00002c60:
    ori        $a1,$a1,0xffff
    and        $a0,$a0,$a1
    b          .L00002b98
    sll        $a0,$a0,0x0

glabel crime_schedule_hli
    li         $t3,2
    lw         $t1,140($a0)
    li         $t2,3
    move       $a4,$t3
    b          .L00002c90
    addiu      $a3,$t1,8
.L00002c88:
    beqz       $a6, .L00002cf4
    addiu      $a3,$a3,4
.L00002c90:
    lw         $a5,812($a3)
    beqz       $a5, .L00002cdc
    nop
    lw         $a7,12($a5)
    lw         $t0,12($a1)
    addiu      $a4,$a4,1
    sltu       $t8,$t0,$a7
    sltiu      $a6,$a4,4
    addiu      $a7,$a7,3
    bnez       $t8, .L00002c88
    sltu       $a7,$t0,$a7
    beqz       $a7, .L00002c88
    nop
    lw         $t1,20($a5)
    beqz       $t1, .L00002d98
    move       $a0,$zero
    lw         $a4,16($a1)
    b          .L00002d64
    addu       $a4,$t0,$a4
.L00002cdc:
    beq        $t3, $a4, .L00002ddc
    sw         $a1,812($a3)
    beq        $a4, $t2, .L00002da0
    nop
    jr         $ra
    nop
.L00002cf4:
    lw         $a5,828($t1)
    lw         $a6,20($a5)
    beqz       $a6, .L00002d90
    move       $a0,$zero
    lw         $a4,16($a1)
    b          .L00002d24
    addu       $a4,$t0,$a4
.L00002d10:
    move       $a0,$a5
    lw         $a5,20($a5)
    lw         $a6,20($a5)
    beqz       $a6, .L00002d90
    nop
.L00002d24:
    lw         $t0,16($a5)
    lw         $a7,12($a5)
    addu       $a7,$a7,$t0
    sltu       $a7,$a4,$a7
    beqz       $a7, .L00002d10
    nop
    beqz       $a0, .L00002dd4
    nop
    sw         $a1,20($a0)
.L00002d48:
    jr         $ra
    sw         $a5,20($a1)
.L00002d50:
    move       $a0,$a5
    lw         $a5,20($a5)
    lw         $t1,20($a5)
    beqz       $t1, .L00002d98
    nop
.L00002d64:
    lw         $t3,16($a5)
    lw         $t2,12($a5)
    addu       $t2,$t2,$t3
    sltu       $t2,$a4,$t2
    beqz       $t2, .L00002d50
    nop
    beqz       $a0, .L00002e14
    nop
    sw         $a1,20($a0)
.L00002d88:
    jr         $ra
    sw         $a5,20($a1)
.L00002d90:
    jr         $ra
    sw         $a1,20($a5)
.L00002d98:
    jr         $ra
    sw         $a1,20($a5)
.L00002da0:
    lw         $t8,12($a1)
    lw         $t9,808($t1)
    li         $at,-4096
    and        $t9,$t9,$at
    andi       $t8,$t8,0xfff
    or         $t8,$t8,$t9
    sw         $t8,808($t1)
    lw         $at,128($a0)
    lui        $t9,0x1
    ori        $t9,$t9,0x24
    addu       $t9,$t9,$at
    jr         $ra
    sw         $t8,0($t9)
.L00002dd4:
    b          .L00002d48
    sw         $a1,828($t1)
.L00002ddc:
    ld         $v0,-30712($gp)
    lw         $at,12($a1)
    lw         $t9,808($t1)
    andi       $at,$at,0xfff
    and        $t9,$t9,$v0
    sll        $at,$at,0xc
    or         $t9,$t9,$at
    sw         $t9,808($t1)
    lw         $v0,128($a0)
    lui        $at,0x1
    ori        $at,$at,0x24
    addu       $at,$at,$v0
    jr         $ra
    sw         $t9,0($at)
.L00002e14:
    b          .L00002d88
    sw         $a1,812($a3)

glabel crime_hli_sched
    addiu      $sp,$sp,-80
    sd         $s0,48($sp)
    sd         $a3,40($sp)
    sd         $a4,64($sp)
    sd         $a5,32($sp)
    sd         $ra,16($sp)
    lui        $at,0x0
    sd         $s8,8($sp)
    sll        $v0,$a0,0x6
    addiu      $at,$at,0
    sd         $s7,0($sp)
    addu       $at,$at,$v0
    lw         $at,12($at)
    sd         $at,56($sp)
    li         $a0,24
    move       $s7,$a1
    lw         $at,140($at)
    move       $s8,$a2
    jal        kern_malloc
    sd         $at,24($sp)
    ld         $a2,64($sp)
    ld         $a3,24($sp)
    ld         $a0,56($sp)
    lw         $v1,804($a3)
    ld         $a1,40($sp)
    addiu      $v1,$v1,1
    sw         $v1,804($a3)
    sw         $s8,8($v0)
    ld         $a3,32($sp)
    li         $a4,1
    sw         $s7,4($v0)
    move       $s0,$v0
    sw         $a1,12($v0)
    addiu      $a1,$a1,40
    beq        $a3, $a4, .L00002ed8
    sw         $v1,0($v0)
.L00002eac:
    ld         $s7,0($sp)
    ld         $s8,8($sp)
    sw         $a2,16($s0)
    sw         $zero,20($s0)
    jal        crime_schedule_hli
    move       $a1,$s0
    ld         $ra,16($sp)
    lw         $v0,0($s0)
    ld         $s0,48($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00002ed8:
    b          .L00002eac
    sw         $a1,12($v0)

glabel crime_hli_unsched
    lui        $a7,0x0
    sll        $t0,$a0,0x6
    addiu      $a7,$a7,0
    addu       $a7,$a7,$t0
    lw         $a6,12($a7)
    addiu      $sp,$sp,-16
    lw         $a6,140($a6)
    sd         $ra,0($sp)
    li         $t0,2
    lw         $a7,4($a7)
    move       $a5,$t0
    addiu      $a4,$a6,8
.L00002f10:
    lw         $t1,812($a4)
    move       $v0,$zero
    beqz       $t1, .L00002f68
    move       $a0,$t1
    b          .L00002f3c
    lw         $t3,0($a0)
.L00002f28:
    lw         $t2,20($a0)
    move       $v0,$a0
    beqz       $t2, .L00002f68
    move       $a0,$t2
    lw         $t3,0($a0)
.L00002f3c:
    bne        $t3, $a1, .L00002f28
    nop
    beqz       $v0, .L00002f98
    lw         $a1,20($a0)
    sw         $a1,20($v0)
.L00002f50:
    jal        kern_free
    nop
    move       $v0,$zero
.L00002f5c:
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L00002f68:
    addiu      $a5,$a5,1
    sltiu      $t8,$a5,4
    bnez       $t8, .L00002f10
    addiu      $a4,$a4,4
    lw         $a0,828($a6)
    beqz       $a0, .L00003038
    nop
    lw         $t9,20($a0)
    beqz       $t9, .L00003038
    nop
    b          .L00003010
    move       $v0,$zero
.L00002f98:
    sw         $a1,812($a4)
    lw         $ra,20($a0)
    bnez       $ra, .L00002f50
    li         $v0,3
    beq        $t0, $a5, .L00002fd8
    lui        $a1,0x1
    bne        $a5, $v0, .L00002f50
    nop
    lw         $at,808($a6)
    lui        $v0,0x1
    ori        $v0,$v0,0x24
    ori        $at,$at,0xfff
    sw         $at,808($a6)
    addu       $v0,$v0,$a7
    b          .L00002f50
    sw         $at,0($v0)
.L00002fd8:
    lui        $a2,0xff
    lw         $v1,808($a6)
    ori        $a1,$a1,0x24
    ori        $a2,$a2,0xf000
    addu       $a1,$a1,$a7
    or         $v1,$v1,$a2
    sw         $v1,808($a6)
    b          .L00002f50
    sw         $v1,0($a1)
.L00002ffc:
    move       $v0,$a0
    lw         $a0,20($a0)
    lw         $a2,20($a0)
    beqz       $a2, .L00003038
    nop
.L00003010:
    lw         $a3,0($a0)
    bne        $a3, $a1, .L00002ffc
    nop
    beqz       $v0, .L00003040
    lw         $a1,20($a0)
    sw         $a1,20($v0)
.L00003028:
    jal        kern_free
    nop
    b          .L00002f5c
    move       $v0,$zero
.L00003038:
    b          .L00002f5c
    li         $v0,6
.L00003040:
    b          .L00003028
    sw         $a1,828($a6)

glabel crime_hli_update
    lui        $t1,0x0
    sll        $t2,$a0,0x6
    addiu      $t1,$t1,0
    addu       $t1,$t1,$t2
    lw         $t1,12($t1)
    lw         $t2,140($t1)
    move       $a7,$a1
    addiu      $sp,$sp,-16
    li         $t0,1
    sd         $ra,0($sp)
    addiu      $a6,$t2,4
.L00003074:
    lw         $a1,812($a6)
    beqz       $a1, .L000030e0
    move       $v0,$zero
    lw         $t3,20($a1)
    beqz       $t3, .L000030e0
    nop
    b          .L000030ac
    lw         $t9,0($a1)
.L00003094:
    move       $v0,$a1
    lw         $a1,20($a1)
    lw         $t8,20($a1)
    beqz       $t8, .L000030e0
    nop
    lw         $t9,0($a1)
.L000030ac:
    bne        $t9, $a7, .L00003094
    nop
    beqz       $v0, .L00003110
    lw         $a0,20($a1)
    sw         $a0,20($v0)
.L000030c0:
    sw         $a2,12($a1)
    sw         $a3,16($a1)
    jal        crime_schedule_hli
    move       $a0,$t1
    move       $v0,$zero
.L000030d4:
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L000030e0:
    addiu      $t0,$t0,1
    sltiu      $ra,$t0,4
    bnez       $ra, .L00003074
    addiu      $a6,$a6,4
    lw         $a1,828($t2)
    beqz       $a1, .L0000315c
    nop
    lw         $at,20($a1)
    beqz       $at, .L0000315c
    nop
    b          .L0000312c
    move       $v0,$zero
.L00003110:
    b          .L000030c0
    sw         $a0,812($a6)
.L00003118:
    move       $v0,$a1
    lw         $a1,20($a1)
    lw         $v1,20($a1)
    beqz       $v1, .L0000315c
    nop
.L0000312c:
    lw         $a0,0($a1)
    bne        $a0, $a7, .L00003118
    nop
    beqz       $v0, .L00003164
    lw         $a0,20($a1)
    sw         $a0,20($v0)
.L00003144:
    sw         $a3,16($a1)
    sw         $a2,12($a1)
    jal        crime_schedule_hli
    move       $a0,$t1
    b          .L000030d4
    move       $v0,$zero
.L0000315c:
    b          .L000030d4
    li         $v0,6
.L00003164:
    b          .L00003144
    sw         $a0,828($t2)

glabel crm_getustmsc
    lw         $a4,12($a2)
    li         $a5,1000
    addiu      $a4,$a4,500
    div        $zero,$a4,$a5
    addiu      $sp,$sp,-48
    sd         $a2,16($sp)
    sd         $ra,0($sp)
    sd         $s0,32($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    mflo       $a0
    sh         $a0,20($a3)
    lw         $v1,4($a2)
    sw         $v1,16($a3)
    lh         $v0,30($a2)
    sh         $v0,22($a3)
    ld         $at,0($a1)
    move       $s0,$a3
    jal        splprof
    sd         $at,8($a3)
    jal        update_ust
    sd         $v0,24($sp)
    jal        get_ust_nano
    move       $a0,$s0
    lui        $a6,0x1
    addu       $a6,$a6,$s8
    lw         $a6,0($a6)
    ld         $a0,24($sp)
    srl        $a6,$a6,0xc
    andi       $a6,$a6,0xfff
    jal        splx
    sh         $a6,24($s0)
    ld         $a7,16($sp)
    lh         $v1,24($s0)
    lh         $v0,36($a7)
    lh         $at,20($a7)
    subu       $v0,$v0,$v1
    dmult      $at,$v0
    lh         $t9,44($a7)
    lh         $t8,42($a7)
    mfhi       $zero
    sllv       $t8,$t8,$t9
    mflo       $t9
    dmult      $t8,$t9
    mflo       $t8
    dsll       $t3,$t8,0x2
    dsubu      $t3,$t3,$t8
    dsll       $t3,$t3,0x3
    lh         $t0,40($a7)
    daddu      $t3,$t3,$t8
    dsll       $t3,$t3,0x1
    ddiv       $zero,$t3,$t0
    ld         $s8,8($sp)
    ld         $t1,0($s0)
    ld         $ra,0($sp)
    mflo       $t2
    daddu      $t1,$t1,$t2
    sd         $t1,0($s0)
    lh         $a7,36($a7)
    teq        $t0,$zero,0x7
    sh         $a7,24($s0)
    ld         $s0,32($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel crime_getustmsc
    move       $a3,$a1
    lui        $a1,0x0
    sll        $a2,$a0,0x6
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    addiu      $sp,$sp,-16
    lw         $a1,12($a1)
    sd         $ra,0($sp)
    lw         $a0,128($a1)
    lw         $a2,124($a1)
    lw         $a1,140($a1)
    jal        crm_getustmsc
    lw         $a2,48($a2)
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16

glabel crimeFrameInfo
    addiu      $sp,$sp,-48
    sd         $s2,8($sp)
    lw         $s2,140($a0)
    sb         $zero,26($a2)
    sb         $zero,27($a2)
    sd         $ra,16($sp)
    sd         $s1,24($sp)
    move       $s1,$a2
    sd         $s0,0($sp)
    move       $s0,$a1
    li         $a1,25
    sd         $s8,32($sp)
    move       $s8,$a0
    addiu      $a0,$s2,840
    jal        mutex_lock
    sd         $a0,40($sp)
    li         $a1,1
    move       $a5,$s2
    move       $a6,$zero
.L00003304:
    addiu      $a6,$a6,1
    lw         $at,44($a5)
    beq        $at, $s0, .L0000336c
    slti       $a7,$a6,32
    bnez       $a7, .L00003304
    addiu      $a5,$a5,24
.L0000331c:
    lw         $a1,76($s0)
    beqz       $a1, .L00003334
    ld         $s0,0($sp)
    lbu        $v0,1360($a1)
    sb         $v0,27($s1)
    ld         $s0,0($sp)
.L00003334:
    lw         $a2,124($s8)
    lw         $a0,128($s8)
    move       $a1,$s2
    move       $a3,$s1
    jal        crm_getustmsc
    lw         $a2,48($a2)
    ld         $s2,8($sp)
    ld         $s1,24($sp)
    ld         $s8,32($sp)
    jal        mutex_unlock
    ld         $a0,40($sp)
    ld         $ra,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0000336c:
    lbu        $a3,56($a5)
    beqz       $a3, .L0000331c
    nop
    b          .L0000331c
    sb         $a1,26($s1)
