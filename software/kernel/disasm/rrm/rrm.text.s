.section .text
.set noat
.set noreorder


glabel pane_gc
    lw         $a4,0($gp)
    lw         $a3,-30704($gp)
    lui        $t0,0x0
    slt        $at,$a3,$a4
    lui        $t1,0x0
    li         $a7,8
    beqz       $at, .L00000078
    move       $a1,$a3
    addiu      $t2,$t1,0
    move       $a5,$zero
    sll        $a2,$a3,0x5
    move       $a6,$t2
    addu       $a2,$a2,$a3
    addiu      $t3,$t0,0
    sll        $a2,$a2,0x2
    b          .L00000054
    addu       $a2,$t3,$a2
.L00000044:
    addiu      $a1,$a1,1
    slt        $t0,$a1,$a4
    beqz       $t0, .L00000084
    nop
.L00000054:
    lh         $t1,16($a2)
    bnez       $t1, .L00000044
    addiu      $a2,$a2,132
    addiu      $a5,$a5,1
    sh         $a1,0($a6)
    bne        $a5, $a7, .L00000044
    addiu      $a6,$a6,2
    b          .L00000108
    addiu      $t8,$a4,-2
.L00000078:
    move       $a5,$zero
    addiu      $t2,$t1,0
    addiu      $t3,$t0,0
.L00000084:
    blez       $a3, .L00000124
    move       $a1,$zero
    move       $a2,$t3
    move       $a1,$zero
    li         $a7,8
    addu       $a6,$a5,$a5
    b          .L000000b4
    addu       $a6,$a6,$t2
.L000000a4:
    addiu      $a1,$a1,1
    slt        $t0,$a1,$a3
    beqz       $t0, .L00000104
    nop
.L000000b4:
    lh         $t1,16($a2)
    beqz       $t1, .L000000f4
    addiu      $a2,$a2,132
.L000000c0:
    addiu      $a1,$a1,1
    slt        $t2,$a1,$a3
    beqz       $t2, .L00000104
    nop
    lh         $t3,16($a2)
    bnez       $t3, .L000000a4
    addiu      $a2,$a2,132
    addiu      $a5,$a5,1
    sh         $a1,0($a6)
    bne        $a5, $a7, .L000000a4
    addiu      $a6,$a6,2
    b          .L00000104
    nop
.L000000f4:
    addiu      $a5,$a5,1
    sh         $a1,0($a6)
    bne        $a5, $a7, .L000000c0
    addiu      $a6,$a6,2
.L00000104:
    addiu      $t8,$a4,-2
.L00000108:
    slt        $t8,$a1,$t8
    beqz       $t8, .L00000118
    move       $a2,$zero
.L00000114:
    addiu      $a2,$a1,1
.L00000118:
    sw         $a2,-30704($gp)
    jr         $ra
    sh         $a5,-30716($gp)
.L00000124:
    slti       $t9,$a4,3
    beqz       $t9, .L00000114
    move       $a2,$zero
    b          .L00000118
    nop

glabel bind_pane
    addiu      $sp,$sp,-48
    sd         $s0,24($sp)
    sd         $s3,8($sp)
    move       $s3,$a0
    addiu      $a0,$gp,-30712
    sd         $s2,0($sp)
    move       $s2,$a1
    sd         $ra,16($sp)
    jal        psema
    li         $a1,25
    lw         $a0,0($gp)
    lui        $a1,0x0
    sd         $s1,40($sp)
    move       $s1,$zero
    addiu      $a4,$a1,0
    lh         $v0,-30716($gp)
    blez       $a0, .L000001c0
    move       $s0,$a4
    b          .L0000019c
    lw         $t9,4($s0)
.L00000188:
    addiu      $s1,$s1,1
    slt        $t8,$s1,$a0
    beqz       $t8, .L000001c0
    addiu      $s0,$s0,132
    lw         $t9,4($s0)
.L0000019c:
    bne        $t9, $s2, .L00000188
    nop
    lw         $at,60($s0)
    lw         $ra,24($s3)
    bne        $ra, $at, .L00000188
    lui        $a1,0x0
    lh         $v0,-30716($gp)
    b          .L00000224
    addiu      $a1,$a1,0
.L000001c0:
    beqz       $v0, .L000002e8
.L000001c4:
    addiu      $v0,$v0,-1
    dsll32     $v0,$v0,0x10
    lui        $a1,0x0
    dsra32     $v0,$v0,0x10
    addiu      $a1,$a1,0
    addu       $s1,$v0,$v0
    addu       $s1,$a1,$s1
    lh         $s1,0($s1)
    sll        $s0,$s1,0x5
    addu       $s0,$s0,$s1
    sll        $s0,$s0,0x2
    sh         $v0,-30716($gp)
    addu       $s0,$a4,$s0
    lh         $a5,0($s0)
    sh         $s1,2($s0)
    addiu      $a5,$a5,1
    sh         $a5,0($s0)
    lw         $a2,24($s3)
    sh         $zero,18($s0)
    sh         $zero,12($s0)
    li         $a3,1
    sw         $a3,8($s0)
    sw         $s2,4($s0)
    sw         $a2,60($s0)
.L00000224:
    move       $s2,$a1
    blez       $v0, .L00000294
    sd         $s4,32($sp)
    addiu      $s3,$a1,2
    b          .L00000274
    move       $s4,$zero
.L0000023c:
    dsll32     $a3,$a3,0x10
    move       $a1,$s2
    dsra32     $a3,$a3,0x10
    move       $a0,$s3
    subu       $a2,$a3,$s4
    sh         $a3,-30716($gp)
    jal        bcopy
    addu       $a2,$a2,$a2
    lh         $v0,-30716($gp)
    addiu      $s4,$s4,1
    slt        $a4,$s4,$v0
    addiu      $s3,$s3,2
    beqz       $a4, .L00000294
    addiu      $s2,$s2,2
.L00000274:
    lh         $a5,0($s2)
    beq        $a5, $s1, .L0000023c
    addiu      $a3,$v0,-1
    addiu      $s4,$s4,1
    slt        $a6,$s4,$v0
    addiu      $s3,$s3,2
    bnez       $a6, .L00000274
    addiu      $s2,$s2,2
.L00000294:
    lh         $a1,16($s0)
    beqz       $a1, .L000002dc
    lh         $v0,12($s0)
.L000002a0:
    ld         $s2,0($sp)
    ld         $s3,8($sp)
    ld         $s4,32($sp)
    ld         $s1,40($sp)
    addiu      $a0,$gp,-30712
    addiu      $t0,$a1,1
    sh         $t0,16($s0)
    ori        $a7,$v0,0x80
    jal        vsema
    sh         $a7,12($s0)
    ld         $ra,16($sp)
    move       $v0,$s0
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000002dc:
    ori        $v0,$v0,0x4
    b          .L000002a0
    sh         $v0,12($s0)
.L000002e8:
    jal        pane_gc
    nop
    lui        $a4,0x0
    lh         $v0,-30716($gp)
    b          .L000001c4
    addiu      $a4,$a4,0

glabel unbind_pane
    addiu      $sp,$sp,-16
    li         $a1,25
    sd         $s8,8($sp)
    move       $s8,$a0
    sd         $ra,0($sp)
    jal        psema
    addiu      $a0,$gp,-30712
    lh         $at,16($s8)
    addiu      $a0,$gp,-30712
    addiu      $at,$at,-1
    jal        vsema
    sh         $at,16($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel clip2pane
    lw         $a5,0($gp)
    lui        $v0,0x0
    blez       $a5, .L0000038c
    addiu      $v0,$v0,0
    move       $a4,$zero
    b          .L00000398
    lw         $a6,24($a1)
    slt        $v1,$a4,$a5
.L00000360:
    addiu      $a4,$a4,1
    beqz       $v1, .L0000038c
    addiu      $v0,$v0,132
    lw         $a1,4($v0)
.L00000370:
    bne        $a1, $a0, .L00000360
    slt        $v1,$a4,$a5
    lw         $a2,60($v0)
    bne        $a2, $a6, .L00000360
    slt        $v1,$a4,$a5
    b          .L00000390
    nop
.L0000038c:
    move       $v0,$zero
.L00000390:
    jr         $ra
    nop
.L00000398:
    addiu      $a4,$a4,1
    b          .L00000370
    lw         $a1,4($v0)

glabel pane_cleanup
    addiu      $sp,$sp,-32
    sd         $a1,0($sp)
    sd         $ra,8($sp)
    jal        clip2pane
    sd         $s0,24($sp)
    beqz       $v0, .L00000428
    move       $s0,$v0
    li         $a1,25
    jal        psema
    addiu      $a0,$gp,-30712
    jal        splhi
    nop
    sd         $v0,16($sp)
    lh         $v0,14($s0)
    lh         $at,12($s0)
    sw         $zero,4($s0)
    li         $v1,-75
    and        $at,$at,$v1
    beqz       $v0, .L0000040c
    sh         $at,12($s0)
    sw         $zero,44($s0)
    addiu      $a0,$s0,36
    jal        vsema
    sh         $zero,14($s0)
    jal        sv_signal
    addiu      $a0,$s0,48
.L0000040c:
    jal        splx
    ld         $a0,16($sp)
    lw         $a0,120($s0)
    bnez       $a0, .L00000438
    ld         $a0,0($sp)
.L00000420:
    jal        vsema
    addiu      $a0,$gp,-30712
.L00000428:
    ld         $ra,8($sp)
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000438:
    jal        rrmSwapUnGroup
    move       $a1,$s0
    b          .L00000420
    nop

glabel pane_setnullclip
    lw         $at,20($a1)
    lw         $at,44($at)
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    move       $s8,$a0
    sd         $ra,0($sp)
    jalr       $at
    addiu      $a0,$a0,64
    lw         $v0,8($s8)
    lh         $v1,12($s8)
    ld         $ra,0($sp)
    ori        $v1,$v1,0xca
    sh         $v1,12($s8)
    addiu      $v0,$v0,1
    sw         $v0,8($s8)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel pane_validmask
    jr         $ra
    lh         $v0,12($a0)

glabel invalidate_pane
    addiu      $sp,$sp,-32
    sd         $s2,16($sp)
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    move       $a0,$a1
    move       $a1,$a2
    jal        clip2pane
    sd         $s1,24($sp)
    andi       $at,$s0,0x2
    move       $s2,$zero
    beqz       $at, .L000004d0
    move       $s1,$v0
    ori        $s0,$s0,0x40
.L000004d0:
    bnez       $s1, .L000004f4
    nop
    ld         $ra,8($sp)
.L000004dc:
    ld         $s0,0($sp)
    ld         $s1,24($sp)
    move       $v0,$s2
    ld         $s2,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000004f4:
    jal        splhi
    nop
    lh         $s2,12($s1)
    move       $a0,$v0
    nor        $v0,$s0,$zero
    and        $v0,$s2,$v0
    jal        splx
    sh         $v0,12($s1)
    b          .L000004dc
    ld         $ra,8($sp)

glabel invalidate_pane_buffer
    addiu      $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    move       $a0,$a1
    move       $a1,$a2
    jal        clip2pane
    sd         $s1,16($sp)
    andi       $at,$s0,0x2
    beqz       $at, .L0000054c
    move       $s1,$v0
    ori        $s0,$s0,0x40
.L0000054c:
    bnez       $s1, .L00000568
    ld         $ra,8($sp)
.L00000554:
    move       $v0,$zero
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000568:
    jal        splhi
    nop
    move       $a0,$v0
    lh         $v0,12($s1)
    nor        $v1,$s0,$zero
    and        $v0,$v0,$v1
    jal        splx
    sh         $v0,12($s1)
    b          .L00000554
    ld         $ra,8($sp)

glabel validate_pane_clip
    addiu      $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s1,0($sp)
    move       $s1,$a2
    jal        clip2pane
    sd         $s0,24($sp)
    move       $s0,$v0
    beqz       $v0, .L000006e0
    sd         $s2,16($sp)
    lw         $a1,92($v0)
    beqz       $a1, .L00000724
    nop
.L000005c0:
    lw         $a0,28($s1)
    beqz       $a0, .L000005fc
    li         $v0,14
    lw         $s2,24($s1)
    sll        $s2,$s2,0x4
    sltiu      $at,$s2,225
    bnez       $at, .L000005ec
    nop
    sw         $v0,24($s1)
    li         $s2,224
    lw         $a1,92($s0)
.L000005ec:
    jal        copyin
    move       $a2,$s2
    bnez       $v0, .L0000074c
    li         $a0,4
.L000005fc:
    jal        splhi
    nop
    lh         $t8,12($s0)
    andi       $t8,$t8,0x8
    move       $s2,$v0
    lw         $a1,48($s1)
    beqz       $t8, .L00000708
    li         $a0,-3
    lh         $t9,18($s0)
    beqz       $t9, .L000006fc
    li         $a5,-5
    ori        $a1,$a1,0x4
    sw         $a1,48($s1)
.L00000630:
    sw         $a1,32($s0)
.L00000634:
    li         $a3,14
    addiu      $t1,$s0,64
    move       $a1,$zero
    addiu      $a6,$s1,4
    lw         $ra,92($s0)
    addiu      $t0,$s0,68
    li         $a7,0x8
    sw         $ra,28($s1)
.L00000654:
    addu       $v0,$a1,$s1
    addu       $v1,$a1,$t1
    lw         $v0,0($v0)
    addiu      $a3,$a3,-2
    addu       $at,$a1,$a6
    sw         $v0,0($v1)
    addu       $v0,$a1,$t0
    lw         $at,0($at)
    addu       $a1,$a1,$a7
    bgtz       $a3, .L00000654
    sw         $at,0($v0)
    lh         $v0,12($s0)
    lw         $v1,8($s0)
    andi       $a1,$v0,0x2
    ori        $a3,$v0,0x42
    addiu      $v1,$v1,1
    beqz       $a1, .L000006ac
    sw         $v1,8($s0)
    jal        splx
    move       $a0,$s2
    b          .L000006e4
    move       $v0,$zero
.L000006ac:
    lh         $a1,14($s0)
    andi       $a2,$a1,0x2
    sh         $a3,12($s0)
    and        $a1,$a1,$a0
    beqz       $a2, .L000006d8
    dsll32     $a1,$a1,0x10
    dsra32     $a4,$a1,0x10
    beqz       $a4, .L00000738
    sh         $a4,14($s0)
.L000006d0:
    jal        sv_signal
    addiu      $a0,$s0,48
.L000006d8:
    jal        splx
    move       $a0,$s2
.L000006e0:
    move       $v0,$zero
.L000006e4:
    ld         $ra,8($sp)
    ld         $s0,24($sp)
    ld         $s2,16($sp)
    ld         $s1,0($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000006fc:
    and        $a1,$a1,$a5
    b          .L00000630
    sw         $a1,48($s1)
.L00000708:
    sw         $a1,32($s0)
    lw         $a6,48($s1)
    andi       $a6,$a6,0x4
    xori       $a6,$a6,0x4
    sltiu      $a6,$a6,1
    b          .L00000634
    sh         $a6,18($s0)
.L00000724:
    jal        kern_malloc
    li         $a0,224
    move       $a1,$v0
    b          .L000005c0
    sw         $v0,92($s0)
.L00000738:
    addiu      $a0,$s0,36
    jal        vsema
    sw         $zero,44($s0)
    b          .L000006d0
    nop
.L0000074c:
    move       $a2,$s0
    move       $a3,$s2
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,0
    b          .L000006e4
    li         $v0,14

glabel validate_pane_swapbuf
    addiu      $sp,$sp,-32
    sd         $a2,8($sp)
    sd         $ra,16($sp)
    jal        clip2pane
    sd         $s0,24($sp)
    beqz       $v0, .L000007d8
    move       $s0,$v0
    jal        splhi
    nop
    sd         $v0,0($sp)
    lh         $a4,14($s0)
    lh         $a7,12($s0)
    ld         $t0,8($sp)
    andi       $a5,$a4,0x8
    sw         $t0,20($s0)
    li         $a6,-9
    ori        $a7,$a7,0x8
    sh         $a7,12($s0)
    and        $a4,$a4,$a6
    beqz       $a5, .L000007d0
    dsll32     $a4,$a4,0x10
    dsra32     $t1,$a4,0x10
    beqz       $t1, .L000007ec
    sh         $t1,14($s0)
.L000007c8:
    jal        sv_signal
    addiu      $a0,$s0,48
.L000007d0:
    jal        splx
    ld         $a0,0($sp)
.L000007d8:
    ld         $ra,16($sp)
    move       $v0,$zero
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000007ec:
    addiu      $a0,$s0,36
    jal        vsema
    sw         $zero,44($s0)
    b          .L000007c8
    nop

glabel validate_pane_buffer
    addiu      $sp,$sp,-32
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    lh         $at,12($s8)
    sd         $v0,16($sp)
    addiu      $a0,$s8,52
    ori        $at,$at,0x4
    jal        sv_broadcast
    sh         $at,12($s8)
    ld         $s8,8($sp)
    jal        splx
    ld         $a0,16($sp)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel validate_my_pane_buffer
    addiu      $sp,$sp,-48
    sd         $ra,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $s7,24($sp)
    move       $s7,$a2
    jal        splhi
    sd         $s1,32($sp)
    lh         $at,12($s0)
    xor        $at,$at,$s7
    and        $at,$s7,$at
    andi       $at,$at,0x4
    beqz       $at, .L000008d4
    move       $s1,$v0
    jal        hold_nonfatalsig
    addiu      $a0,$sp,0
    addiu      $a0,$s0,52
    li         $a1,542
    addiu      $a2,$s0,56
    jal        sv_wait_sig
    move       $a3,$s1
    bltz       $v0, .L000008c4
    nop
    jal        release_nonfatalsig
    addiu      $a0,$sp,0
    move       $v0,$zero
.L000008ac:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    ld         $s1,32($sp)
    ld         $s7,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000008c4:
    jal        release_nonfatalsig
    addiu      $a0,$sp,0
    b          .L000008ac
    li         $v0,-1
.L000008d4:
    jal        splx
    move       $a0,$v0
    b          .L000008ac
    move       $v0,$zero

glabel validate_my_pane_resources
    addiu      $sp,$sp,-144
    sd         $s2,128($sp)
    sd         $ra,120($sp)
    sd         $s1,96($sp)
    sd         $s0,88($sp)
    andi       $at,$a2,0x8e
    move       $s0,$a0
    move       $s1,$a1
    sd         $s3,104($sp)
    move       $s3,$a2
    beqz       $at, .L00000aa0
    sd         $s4,112($sp)
    jal        validate_my_pane_buffer
    nop
    bltz       $v0, .L00000b24
    nop
    jal        splhi
    nop
    move       $s2,$v0
    lh         $v0,12($s0)
    ori        $v0,$v0,0x80
    xor        $s4,$v0,$s3
    and        $s4,$s3,$s4
    andi       $s4,$s4,0xa
    beqz       $s4, .L00000c80
    sh         $v0,12($s0)
    lw         $v1,44($s0)
    beq        $v1, $s1, .L00000bd8
    nop
    lw         $a0,4($s0)
    bnez       $a0, .L000009ac
    addiu      $a0,$s0,36
    lw         $a1,8($s1)
    lw         $a1,4($a1)
    beq        $a1, $s1, .L000009ac
    addiu      $a0,$s0,36
    andi       $a2,$s3,0x2
    beqz       $a2, .L000009ac
    addiu      $a0,$s0,36
    lw         $a3,4($s1)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00000c34
    move       $a0,$s0
    jal        pane_setnullclip
    move       $a1,$s1
    jal        splx
    move       $a0,$s2
    b          .L00000aa4
    move       $v0,$zero
    addiu      $a0,$s0,36
.L000009ac:
    jal        cpsema
    sd         $a0,80($sp)
    beqz       $v0, .L00000b34
    nop
.L000009bc:
    sh         $s4,14($s0)
    sw         $s1,44($s0)
    jal        splx
    move       $a0,$s2
    lw         $a4,8($s1)
    lw         $a4,4($a4)
    beqz       $a4, .L00000b2c
    andi       $a5,$s4,0x8
    move       $v0,$zero
    beqz       $a5, .L000009f0
    sb         $zero,12($sp)
    li         $v0,2
    sb         $v0,12($sp)
.L000009f0:
    andi       $a6,$s4,0x2
    beqz       $a6, .L00000a00
    ori        $a7,$v0,0x1
    sb         $a7,12($sp)
.L00000a00:
    lw         $t2,8($s1)
    sw         $t2,8($sp)
    li         $t1,1
    sw         $t1,16($sp)
    lw         $t0,4($s0)
    addiu      $a0,$sp,8
    jal        GfxMessage
    sw         $t0,20($sp)
    jal        splhi
    nop
    lh         $t3,14($s0)
    andi       $t3,$t3,0xa
    beqz       $t3, .L00000b14
    move       $s2,$v0
    lw         $t8,44($s0)
    bne        $t8, $s1, .L00000b14
    addiu      $ra,$s0,48
    sd         $ra,72($sp)
    addiu      $s4,$s0,56
    andi       $t9,$s3,0x2
    sd         $t9,64($sp)
.L00000a54:
    lw         $at,4($s0)
    bnez       $at, .L00000ac4
    ld         $v1,64($sp)
    lw         $v0,8($s1)
    lw         $v0,4($v0)
    beq        $v0, $s1, .L00000ac4
    nop
    beqz       $v1, .L00000ac4
    nop
    lw         $a0,4($s1)
    andi       $a0,$a0,0x8
    beqz       $a0, .L00000be8
    move       $a0,$s0
    jal        pane_setnullclip
    move       $a1,$s1
    jal        splx
    move       $a0,$s2
    b          .L00000aa4
    move       $v0,$zero
.L00000aa0:
    move       $v0,$zero
.L00000aa4:
    ld         $s2,128($sp)
    ld         $s4,112($sp)
    ld         $ra,120($sp)
    ld         $s0,88($sp)
    ld         $s1,96($sp)
    ld         $s3,104($sp)
    jr         $ra
    addiu      $sp,$sp,144
.L00000ac4:
    jal        hold_nonfatalsig
    addiu      $a0,$sp,0
    li         $a1,542
    move       $a2,$s4
    ld         $a0,72($sp)
    jal        sv_wait_sig
    move       $a3,$s2
    bltz       $v0, .L00000c90
    nop
    jal        release_nonfatalsig
    addiu      $a0,$sp,0
    jal        splhi
    nop
    lh         $a1,14($s0)
    andi       $a1,$a1,0xa
    beqz       $a1, .L00000b14
    move       $s2,$v0
    lw         $a2,44($s0)
    beq        $a2, $s1, .L00000a54
    nop
.L00000b14:
    jal        splx
    move       $a0,$s2
    b          .L00000aa4
    move       $v0,$zero
.L00000b24:
    b          .L00000aa4
    li         $v0,-1
.L00000b2c:
    b          .L00000aa4
    li         $v0,-2
.L00000b34:
    jal        splx
    move       $a0,$s2
    jal        hold_nonfatalsig
    addiu      $a0,$sp,0
    ld         $a0,80($sp)
    jal        psema
    li         $a1,798
    bltz       $v0, .L00000ca0
    nop
    jal        release_nonfatalsig
    addiu      $a0,$sp,0
    jal        splhi
    nop
    lh         $s4,12($s0)
    xor        $s4,$s4,$s3
    and        $s4,$s3,$s4
    andi       $s4,$s4,0xa
    move       $s2,$v0
    beqz       $s4, .L00000cfc
    andi       $a1,$s3,0x2
    lw         $t8,4($s0)
    bnez       $t8, .L000009bc
    nop
    lw         $t9,8($s1)
    lw         $t9,4($t9)
    beq        $t9, $s1, .L000009bc
    nop
    beqz       $a1, .L000009bc
    nop
    jal        vsema
    ld         $a0,80($sp)
    lw         $ra,4($s1)
    andi       $ra,$ra,0x8
    beqz       $ra, .L00000cb0
    move       $a0,$s0
    jal        pane_setnullclip
    move       $a1,$s1
    jal        splx
    move       $a0,$s2
    b          .L00000aa4
    move       $v0,$zero
.L00000bd8:
    jal        splx
    move       $a0,$s2
    b          .L00000aa4
    li         $v0,-1
.L00000be8:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    li         $a1,4
    li         $a0,2131
    lui        $a2,0x0
    jal        cmn_err_tag
    addiu      $a2,$a2,192
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    jal        splx
    move       $a0,$s2
    b          .L00000aa4
    li         $v0,-1
.L00000c34:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    li         $a0,2129
    li         $a1,4
    lui        $a2,0x0
    jal        cmn_err_tag
    addiu      $a2,$a2,48
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    jal        splx
    move       $a0,$s2
    b          .L00000aa4
    li         $v0,-1
.L00000c80:
    jal        splx
    move       $a0,$s2
    b          .L00000aa4
    move       $v0,$zero
.L00000c90:
    jal        release_nonfatalsig
    addiu      $a0,$sp,0
    b          .L00000aa4
    li         $v0,-1
.L00000ca0:
    jal        release_nonfatalsig
    addiu      $a0,$sp,0
    b          .L00000aa4
    li         $v0,-1
.L00000cb0:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    li         $a1,4
    li         $a0,2130
    lui        $a2,0x0
    jal        cmn_err_tag
    addiu      $a2,$a2,120
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    jal        splx
    move       $a0,$s2
    b          .L00000aa4
    li         $v0,-1
.L00000cfc:
    jal        vsema
    ld         $a0,80($sp)
    jal        splx
    move       $a0,$s2
    b          .L00000aa4
    move       $v0,$zero

glabel init_panes
    addiu      $sp,$sp,-64
    sd         $s2,16($sp)
    sd         $s3,24($sp)
    addiu      $a0,$gp,-30712
    sd         $s0,32($sp)
    li         $a1,1
    sd         $s5,8($sp)
    lui        $s5,0x0
    li         $a3,-1
    sd         $s1,40($sp)
    addiu      $s5,$s5,0
    sd         $ra,0($sp)
    jal        init_sema
    addiu      $a2,$s5,264
    lui        $a0,0x0
    addiu      $a0,$a0,0
    lw         $t8,0($gp)
    sd         $s4,48($sp)
    move       $s4,$zero
    addiu      $s0,$a0,56
    addiu      $s1,$a0,52
    addiu      $s2,$a0,48
    blez       $t8, .L00000de8
    addiu      $s3,$a0,36
.L00000d74:
    move       $a0,$s3
    li         $a1,1
    li         $a3,-1
    lui        $a2,0x0
    jal        init_sema
    addiu      $a2,$a2,296
    move       $a0,$s2
    move       $a1,$zero
    li         $a3,-1
    lui        $a2,0x0
    jal        init_sv
    addiu      $a2,$a2,304
    move       $a0,$s1
    move       $a1,$zero
    addiu      $a2,$s5,280
    jal        init_sv
    li         $a3,-1
    move       $a0,$s0
    lui        $a1,0x0
    jal        spinlock_init
    addiu      $a1,$a1,312
    lw         $a2,0($gp)
    addiu      $s4,$s4,1
    addiu      $s3,$s3,132
    slt        $a2,$s4,$a2
    addiu      $s2,$s2,132
    addiu      $s1,$s1,132
    bnez       $a2, .L00000d74
    addiu      $s0,$s0,132
.L00000de8:
    ld         $s2,16($sp)
    ld         $s3,24($sp)
    ld         $s4,48($sp)
    ld         $ra,0($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    ld         $s5,8($sp)
    jr         $ra
    addiu      $sp,$sp,64

glabel RRM_init_panes
    addiu      $sp,$sp,-48
    sd         $ra,16($sp)
    sd         $s3,32($sp)
    lw         $a3,0($gp)
    sd         $s0,8($sp)
    lui        $s0,0x0
    move       $s3,$a0
    sd         $s2,24($sp)
    addiu      $s0,$s0,0
    sd         $s1,0($sp)
    blez       $a3, .L00000ec4
    addiu      $s1,$s0,36
    move       $s2,$zero
    b          .L00000e6c
    lw         $at,60($s0)
.L00000e48:
    lw         $t8,120($s0)
    bnez       $t8, .L00000ea4
    move       $a0,$s3
.L00000e54:
    addiu      $s2,$s2,1
    slt        $t9,$s2,$a3
    addiu      $s1,$s1,132
    beqz       $t9, .L00000ec4
    addiu      $s0,$s0,132
.L00000e68:
    lw         $at,60($s0)
.L00000e6c:
    lw         $ra,24($s3)
    bne        $ra, $at, .L00000e54
    nop
    lh         $v0,14($s0)
    beqz       $v0, .L00000e48
    sh         $zero,12($s0)
    sh         $zero,14($s0)
    sw         $zero,44($s0)
    jal        vsema
    move       $a0,$s1
    lw         $v1,120($s0)
    beqz       $v1, .L00000eb0
    lw         $a3,0($gp)
    move       $a0,$s3
.L00000ea4:
    jal        rrmSwapUnGroup
    move       $a1,$s0
    lw         $a3,0($gp)
.L00000eb0:
    addiu      $s2,$s2,1
    slt        $a0,$s2,$a3
    addiu      $s1,$s1,132
    bnez       $a0, .L00000e68
    addiu      $s0,$s0,132
.L00000ec4:
    ld         $s0,8($sp)
    ld         $ra,16($sp)
    ld         $s1,0($sp)
    ld         $s2,24($sp)
    ld         $s3,32($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel RRM_init
    addiu      $sp,$sp,-48
    sd         $ra,8($sp)
    sd         $s1,16($sp)
    lw         $a0,0($gp)
    lui        $s1,0x0
    sd         $s0,24($sp)
    lui        $s0,0x0
    sd         $s4,0($sp)
    li         $s4,1
    slti       $at,$a0,2
    sd         $s2,40($sp)
    move       $s2,$s4
    addiu      $s0,$s0,116
    sd         $s3,32($sp)
    bnez       $at, .L00000f58
    addiu      $s1,$s1,8
    lui        $s3,0x0
    addiu      $s3,$s3,0
.L00000f28:
    li         $a3,-1
    addiu      $a2,$s3,320
    li         $a1,1
    move       $a0,$s1
    jal        init_sema
    sb         $s4,58($s0)
    lw         $a0,0($gp)
    addiu      $s2,$s2,1
    slt        $t8,$s2,$a0
    addiu      $s0,$s0,116
    bnez       $t8, .L00000f28
    addiu      $s1,$s1,8
.L00000f58:
    ld         $s2,40($sp)
    ld         $s3,32($sp)
    ld         $s4,0($sp)
    ld         $s0,24($sp)
    ld         $s1,16($sp)
    jal        init_panes
    sw         $a0,0($gp)
    ld         $ra,8($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel RRM_Init
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    move       $s8,$a0
    addiu      $a0,$a0,28
    sd         $ra,0($sp)
    jal        spinlock_init
    addiu      $a1,$a1,336
    li         $a3,-1
    li         $a1,1
    addiu      $a0,$s8,32
    lui        $a2,0x0
    jal        init_sema
    addiu      $a2,$a2,352
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel rrmDoUnMapGfx
    addiu      $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    jal        splhi
    sd         $s8,16($sp)
    move       $s8,$v0
    lw         $v0,4($s0)
    lw         $at,20($s0)
    ori        $v0,$v0,0x10
    sw         $v0,4($s0)
    lw         $at,52($at)
    jalr       $at
    move       $a0,$s0
    lw         $v1,4($s0)
    li         $a0,-17
    and        $v1,$v1,$a0
    sw         $v1,4($s0)
    jal        splx
    move       $a0,$s8
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    ld         $s8,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel rrmUnMapGfx
    lw         $at,52($a0)
    addiu      $sp,$sp,-32
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $at, .L0000109c
    sd         $ra,16($sp)
    lw         $v0,4($a0)
    andi       $v0,$v0,0x8
    bnez       $v0, .L0000109c
    nop
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    beqz       $v0, .L000010a8
    ld         $ra,16($sp)
    lw         $v1,8($v0)
    beqz       $v1, .L000010a8
    ld         $ra,16($sp)
    jal        splhi
    nop
    sd         $v0,0($sp)
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    jal        splx
    ld         $a0,0($sp)
    b          .L000010a8
    ld         $ra,16($sp)
.L0000109c:
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    ld         $ra,16($sp)
.L000010a8:
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel rrmInvalidateRN
    addiu      $sp,$sp,-32
    lw         $v0,24($a0)
    sd         $s1,8($sp)
    lw         $at,40($v0)
    sd         $s0,16($sp)
    move       $s0,$a0
    move       $s1,$a1
    sd         $s2,0($sp)
    move       $s2,$a2
    bne        $at, $a0, .L0000112c
    sd         $ra,24($sp)
.L000010e0:
    jal        splhi
    nop
    lhu        $a1,6($s1)
    move       $a0,$v0
    and        $v0,$a1,$s2
    beq        $s2, $v0, .L00001100
    move       $s0,$zero
    li         $s0,-2
.L00001100:
    nor        $v1,$s2,$zero
    and        $v1,$a1,$v1
    jal        splx
    sh         $v1,6($s1)
    ld         $ra,24($sp)
    ld         $s2,0($sp)
    ld         $s1,8($sp)
    move       $v0,$s0
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000112c:
    li         $a1,537
    jal        psema
    addiu      $a0,$v0,32
    lw         $a1,24($s0)
    sw         $s0,40($a1)
    lw         $a0,24($s0)
    lw         $a0,60($a0)
    beqz       $a0, .L000010e0
    nop
.L00001150:
    jal        us_delay
    li         $a0,2
    lw         $a2,24($s0)
    lw         $a2,60($a2)
    bnez       $a2, .L00001150
    nop
    b          .L000010e0
    nop

glabel RRM_InvalidateRN
    lw         $v0,8($a2)
    addiu      $sp,$sp,-64
    li         $a6,255
    sd         $s0,24($sp)
    or         $at,$a6,$v0
    move       $a1,$a3
    move       $s0,$a0
    sd         $s1,32($sp)
    move       $s1,$a2
    beq        $a6, $at, .L000011b4
    sd         $ra,48($sp)
    li         $v0,22
.L000011a0:
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L000011b4:
    li         $v1,-203
    and        $v1,$v0,$v1
    beqz       $v1, .L000011cc
    sd         $a3,16($sp)
    b          .L000011a0
    li         $v0,22
.L000011cc:
    move       $a0,$v0
    lw         $a1,4($a2)
    jal        invalidate_pane
    move       $a2,$s0
    lw         $a0,8($s1)
    andi       $a0,$a0,0x8
    move       $a6,$v0
    beqz       $a0, .L00001280
    sd         $v0,40($sp)
    lw         $a0,4($s1)
    jal        clip2pane
    move       $a1,$s0
    beqz       $v0, .L000012a4
    nop
    lw         $a1,40($s0)
    beqz       $a1, .L000012f0
    li         $a3,255
    lw         $a2,20($v0)
    and        $a4,$a2,$a3
    beq        $a3, $a4, .L00001270
    sd         $v0,8($sp)
    lw         $a5,20($s0)
    lw         $a5,72($a5)
    jalr       $a5
    move       $a0,$s0
    bltz       $v0, .L000012f8
    move       $a2,$v0
    blez       $v0, .L00001274
    ld         $t1,8($sp)
    li         $a6,2
    bne        $v0, $a6, .L00001260
    ld         $a0,8($sp)
    lw         $a7,40($s0)
    bnez       $a7, .L000012b4
    sd         $a7,0($sp)
    b          .L000011a0
    li         $v0,14
.L00001260:
    jal        validate_pane_buffer
    move       $a1,$s0
    li         $t0,1
    sw         $t0,16($s1)
.L00001270:
    ld         $t1,8($sp)
.L00001274:
    ld         $a6,40($sp)
    lw         $t1,32($t1)
    sw         $t1,12($s1)
.L00001280:
    li         $a2,20
    ld         $a1,16($sp)
    move       $a0,$s1
    jal        copyout
    sw         $a6,8($s1)
    beqz       $v0, .L000012ac
    nop
    b          .L000011a0
    li         $v0,14
.L000012a4:
    b          .L000011a0
    li         $v0,22
.L000012ac:
    b          .L000011a0
    move       $v0,$zero
.L000012b4:
    move       $a0,$s0
    ld         $a1,0($sp)
    jal        rrmInvalidateRN
    li         $a2,16
    bnez       $v0, .L00001274
    ld         $t1,8($sp)
    lw         $t2,20($s0)
    lw         $t2,76($t2)
    ld         $a1,0($sp)
    jalr       $t2
    lw         $a0,24($s0)
    jal        rrmUnMapGfx
    move       $a0,$s0
    b          .L00001274
    ld         $t1,8($sp)
.L000012f0:
    b          .L000011a0
    li         $v0,14
.L000012f8:
    b          .L000011a0
    negu       $v0,$v0

glabel rrmUnbindProcFromRN
    addiu      $sp,$sp,-32
    lw         $at,40($a0)
    sd         $s1,16($sp)
    li         $v0,-1
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $at, .L00001368
    sd         $ra,24($sp)
    lw         $v0,52($a0)
    move       $s1,$zero
    beqz       $v0, .L00001340
    nop
    lw         $v1,4($a0)
    andi       $v1,$v1,0x8
    beqz       $v1, .L0000137c
    move       $s1,$zero
.L00001340:
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    beqz       $s1, .L00001364
    sw         $zero,40($s0)
    lw         $a0,8($s1)
    beqz       $a0, .L00001368
    move       $v0,$zero
    jal        GfxListWriterUnlock
    lw         $a1,0($sp)
.L00001364:
    move       $v0,$zero
.L00001368:
    ld         $ra,24($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000137c:
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    beqz       $v0, .L00001340
    move       $s1,$v0
    lw         $a0,8($v0)
    beqz       $a0, .L00001340
    nop
    jal        GfxListWriterLock
    nop
    b          .L00001340
    sw         $v0,0($sp)

glabel RRM_BindProcToRN
    addiu      $sp,$sp,-48
    lw         $at,4($a0)
    sd         $ra,24($sp)
    sd         $s0,8($sp)
    andi       $at,$at,0x8
    move       $s0,$a0
    sd         $s1,16($sp)
    move       $s1,$a1
    beqz       $at, .L00001494
    sd         $s2,32($sp)
    lw         $s2,40($a0)
    beqz       $s2, .L000013ec
    nop
    bne        $a1, $s2, .L0000143c
    nop
.L000013ec:
    beqz       $s1, .L00001400
    nop
    sw         $s0,48($s1)
    li         $v0,1
    sb         $v0,60($s1)
.L00001400:
    lw         $a0,24($s0)
.L00001404:
    sw         $s1,40($s0)
    jal        valusema
    addiu      $a0,$a0,32
    beqz       $v0, .L00001424
    ld         $ra,24($sp)
    jal        force_resched
    nop
    ld         $ra,24($sp)
.L00001424:
    ld         $s0,8($sp)
    move       $v0,$zero
    ld         $s1,16($sp)
    ld         $s2,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0000143c:
    lh         $a2,2($s2)
    li         $a1,25
    lui        $a0,0x0
    addiu      $a0,$a0,0
    sll        $a2,$a2,0x3
    addu       $a0,$a0,$a2
    jal        psema
    sd         $a0,0($sp)
    lw         $a1,44($s2)
    bnez       $a1, .L0000147c
    sb         $zero,60($s2)
    move       $a0,$s0
    jal        rrmCloseRN
    move       $a1,$s2
    b          .L00001484
    nop
.L0000147c:
    jal        rrmUnbindProcFromRN
    move       $a0,$s0
.L00001484:
    jal        vsema
    ld         $a0,0($sp)
    b          .L000013ec
    nop
.L00001494:
    jal        rrmUnbindProcFromRN
    nop
    b          .L00001404
    lw         $a0,24($s0)

glabel RRM_BindRNToReadAndClip
    addiu      $sp,$sp,-112
    sd         $s3,88($sp)
    sd         $s2,56($sp)
    sd         $s1,80($sp)
    lw         $a6,4($a2)
    li         $v0,22
    move       $s1,$a0
    sd         $s0,72($sp)
    move       $s0,$a1
    move       $s2,$a2
    sd         $s4,64($sp)
    move       $s4,$a3
    beqz       $a6, .L0000169c
    sd         $ra,96($sp)
    lw         $a0,80($a1)
    beqz       $a0, .L00001538
    move       $a1,$s1
    jal        validate_my_pane_buffer
    lhu        $a2,4($s0)
    lw         $a0,80($s0)
    jal        unbind_pane
    move       $a1,$s1
    lhu        $a2,4($s0)
    andi       $at,$a2,0x40
    beqz       $at, .L0000152c
    li         $v0,-9
    lw         $a0,84($s0)
    jal        validate_my_pane_buffer
    move       $a1,$s1
    lw         $a0,84($s0)
    jal        unbind_pane
    move       $a1,$s1
    lhu        $a2,4($s0)
    li         $v0,-9
.L0000152c:
    and        $v0,$a2,$v0
    sh         $v0,4($s0)
    lw         $a6,4($s2)
.L00001538:
    move       $a0,$s1
    jal        bind_pane
    move       $a1,$a6
    sw         $zero,88($s0)
    sw         $v0,80($s0)
    lw         $a1,8($s2)
    lw         $v1,4($s2)
    bne        $v1, $a1, .L000016ec
    move       $a0,$v0
    sw         $zero,92($s0)
    lhu        $a2,4($s0)
    sw         $v0,84($s0)
    li         $a3,-65
    move       $a1,$v0
    and        $a2,$a2,$a3
    sh         $a2,4($s0)
.L00001578:
    lh         $a4,12($a0)
    andi       $a4,$a4,0x2
    beqz       $a4, .L0000177c
    move       $s3,$zero
    lh         $a5,12($a1)
    andi       $a5,$a5,0x40
    beqz       $a5, .L0000177c
    move       $s3,$zero
    lw         $a6,24($s1)
    lw         $a6,4($a6)
    beq        $a6, $s0, .L00001714
    li         $s3,1
.L000015a8:
    lw         $a0,8($s1)
.L000015ac:
    lw         $a7,4($a0)
    beqz       $a7, .L000016e4
    li         $v0,14
    sw         $a0,0($sp)
    lw         $t0,4($s1)
    andi       $t0,$t0,0x8
    beqz       $t0, .L00001770
    li         $v0,4
    li         $t1,132
    sb         $t1,4($sp)
.L000015d4:
    li         $t3,3
    sw         $t3,8($sp)
    lw         $a1,8($s2)
    lw         $t2,4($s2)
    beq        $t2, $a1, .L00001638
    nop
    sw         $a1,12($sp)
    lw         $t9,0($s2)
    sw         $t9,16($sp)
    lw         $t8,20($s0)
    beqz       $s3, .L00001794
    sw         $t8,20($sp)
    lw         $v1,8($s2)
.L00001608:
    sw         $v1,20($s0)
    lw         $v0,4($s2)
    sw         $v0,12($sp)
    lw         $at,0($s2)
    sw         $at,16($sp)
    lw         $ra,16($s0)
    bnez       $s3, .L00001658
    sw         $ra,20($sp)
.L00001628:
    jal        GfxMessage
    addiu      $a0,$sp,0
    b          .L0000165c
    lw         $a5,4($s2)
.L00001638:
    sw         $a1,20($s0)
    lw         $a3,4($s2)
    sw         $a3,12($sp)
    lw         $a2,0($s2)
    sw         $a2,16($sp)
    lw         $a0,16($s0)
    beqz       $s3, .L00001628
    sw         $a0,20($sp)
.L00001658:
    lw         $a5,4($s2)
.L0000165c:
    sw         $a5,16($s0)
    lw         $a4,4($s1)
    andi       $a4,$a4,0x8
    beqz       $a4, .L0000169c
    move       $v0,$zero
    lw         $a7,8($s2)
    lw         $a6,4($s2)
    lw         $v0,80($s0)
    lw         $v0,0($v0)
    beq        $a6, $a7, .L000016bc
    sw         $v0,12($s2)
    lw         $v1,84($s0)
    lw         $v1,0($v1)
    bnez       $s4, .L000016c4
    sw         $v1,16($s2)
.L00001698:
    move       $v0,$zero
.L0000169c:
    ld         $s2,56($sp)
.L000016a0:
    ld         $s3,88($sp)
    ld         $ra,96($sp)
    ld         $s4,64($sp)
    ld         $s0,72($sp)
    ld         $s1,80($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L000016bc:
    beqz       $s4, .L00001698
    sw         $v0,16($s2)
.L000016c4:
    move       $a0,$s2
    move       $a1,$s4
    jal        copyout
    li         $a2,20
    beqz       $v0, .L0000169c
    move       $v0,$zero
    b          .L0000169c
    li         $v0,14
.L000016e4:
    b          .L000016a0
    ld         $s2,56($sp)
.L000016ec:
    jal        bind_pane
    move       $a0,$s1
    sw         $v0,84($s0)
    sw         $zero,92($s0)
    lhu        $a2,4($s0)
    move       $a1,$v0
    lw         $a0,80($s0)
    ori        $a2,$a2,0x40
    b          .L00001578
    sh         $a2,4($s0)
.L00001714:
    jal        RRM_CheckValidFault
    move       $a0,$s1
    bltz       $v0, .L0000178c
    nop
    lw         $a4,20($s1)
    lw         $a3,80($s0)
    lw         $a4,40($a4)
    lw         $a2,24($s1)
    move       $a0,$s1
    move       $a1,$s0
    lw         $a2,4($a2)
    jalr       $a4
    addiu      $a3,$a3,64
    li         $a5,-1
    beq        $v0, $a5, .L000017a4
    nop
    lw         $a7,80($s0)
    lw         $a6,84($s0)
    lw         $a7,8($a7)
    sw         $a7,88($s0)
    lw         $a6,8($a6)
    b          .L000015a8
    sw         $a6,92($s0)
.L00001770:
    b          .L000015d4
    sb         $v0,4($sp)
    move       $s3,$zero
.L0000177c:
    jal        rrmUnMapGfx
    move       $a0,$s1
    b          .L000015ac
    lw         $a0,8($s1)
.L0000178c:
    b          .L0000169c
    li         $v0,14
.L00001794:
    jal        GfxMessage
    addiu      $a0,$sp,0
    b          .L00001608
    lw         $v1,8($s2)
.L000017a4:
    b          .L0000169c
    li         $v0,14

glabel RRM_BindRNToClip
    addiu      $sp,$sp,-64
    sd         $s0,56($sp)
    sd         $ra,40($sp)
    sd         $a2,24($sp)
    sd         $a3,32($sp)
    sd         $s3,48($sp)
    lw         $v1,0($a2)
    sw         $v1,0($sp)
    lw         $v0,4($a2)
    move       $s3,$a0
    sw         $v0,4($sp)
    move       $a3,$zero
    move       $a0,$s3
    lw         $at,4($a2)
    addiu      $a2,$sp,0
    jal        RRM_BindRNToReadAndClip
    sw         $at,8($sp)
    lw         $a1,4($s3)
    andi       $a1,$a1,0x8
    beqz       $a1, .L00001808
    move       $s0,$v0
    beqz       $v0, .L00001820
    ld         $a1,32($sp)
.L00001808:
    move       $v0,$s0
.L0000180c:
    ld         $ra,40($sp)
    ld         $s0,56($sp)
    ld         $s3,48($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00001820:
    ld         $a4,24($sp)
    li         $a2,12
    lw         $a3,12($sp)
    move       $a0,$a4
    jal        copyout
    sw         $a3,8($a4)
    beqz       $v0, .L0000180c
    move       $v0,$s0
    b          .L0000180c
    li         $v0,14

glabel RRM_UnbindRNFromClip
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    move       $a1,$a0
    jal        pane_cleanup
    lw         $a0,4($a2)
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16

glabel RRM_OpenRN
    addiu      $sp,$sp,-80
    sd         $a4,16($sp)
    sd         $s3,40($sp)
    sd         $s0,48($sp)
    lw         $v0,24($a0)
    sd         $ra,56($sp)
    lw         $at,40($v0)
    sd         $s1,32($sp)
    move       $s1,$a0
    sd         $s4,24($sp)
    move       $s4,$a2
    bne        $at, $a0, .L000018ec
    sd         $s2,64($sp)
.L000018a0:
    lw         $a0,44($v0)
.L000018a4:
    addiu      $a0,$a0,1
    sw         $a0,44($v0)
    lw         $v1,0($s4)
    li         $a2,-1
    beq        $v1, $a2, .L00001930
    li         $v0,22
.L000018bc:
    ld         $s4,24($sp)
    ld         $s3,40($sp)
    ld         $s0,48($sp)
    ld         $s2,64($sp)
    lw         $a2,24($s1)
    ld         $ra,56($sp)
    lw         $a1,44($a2)
    ld         $s1,32($sp)
    addiu      $sp,$sp,80
    addiu      $a1,$a1,-1
    jr         $ra
    sw         $a1,44($a2)
.L000018ec:
    li         $a1,537
    jal        psema
    addiu      $a0,$v0,32
    lw         $a3,24($s1)
    sw         $s1,40($a3)
    lw         $v0,24($s1)
    lw         $a2,60($v0)
    beqz       $a2, .L000018a0
    nop
.L00001910:
    jal        us_delay
    li         $a0,2
    lw         $v0,24($s1)
    lw         $a4,60($v0)
    bnez       $a4, .L00001910
    nop
    b          .L000018a4
    lw         $a0,44($v0)
.L00001930:
    li         $a1,25
    addiu      $a0,$gp,-30712
    jal        psema
    lw         $s0,24($s1)
    lw         $a1,0($gp)
    li         $s3,1
    slti       $a5,$a1,2
    sd         $s0,0($sp)
    lui        $a6,0x0
    move       $s0,$s3
    bnez       $a5, .L000019bc
    addiu      $a6,$a6,0
    sll        $v1,$s0,0x3
    addiu      $v0,$s0,1
    subu       $v1,$v1,$s0
.L0000196c:
    dsll32     $v0,$v0,0x10
    sll        $v1,$v1,0x2
    addu       $v1,$v1,$s0
    sll        $v1,$v1,0x2
    addu       $v1,$a6,$v1
    lbu        $v1,58($v1)
    beq        $s3, $v1, .L000019a4
    nop
    dsra32     $s0,$v0,0x10
    slt        $a0,$s0,$a1
    addiu      $v0,$s0,1
    sll        $v1,$s0,0x3
    bnez       $a0, .L0000196c
    subu       $v1,$v1,$s0
.L000019a4:
    bne        $a1, $s0, .L000019d0
    sll        $s2,$s0,0x3
.L000019ac:
    jal        vsema
    addiu      $a0,$gp,-30712
    b          .L000018bc
    li         $v0,12
.L000019bc:
    beq        $a1, $s3, .L000019ac
    move       $s0,$s3
    lui        $a6,0x0
    addiu      $a6,$a6,0
    sll        $s2,$s0,0x3
.L000019d0:
    subu       $s2,$s2,$s0
    sll        $s2,$s2,0x2
    addu       $s2,$s2,$s0
    sll        $s2,$s2,0x2
    addu       $s2,$a6,$s2
    li         $a1,116
    lh         $a7,0($s2)
    move       $a0,$s2
    jal        bzero
    sd         $a7,8($sp)
    addiu      $a0,$gp,-30712
    jal        vsema
    sb         $zero,58($s2)
    ld         $v0,8($sp)
    sw         $s1,48($s2)
    sw         $s1,44($s2)
    sll        $v0,$v0,0x10
    or         $v0,$s0,$v0
    sw         $v0,0($s2)
    lw         $at,24($s1)
    sw         $at,52($s2)
    lw         $ra,4($s4)
    li         $t9,52
    sh         $t9,6($s2)
    ori        $ra,$ra,0xb5
    sh         $ra,4($s2)
    lw         $t8,8($s1)
    lw         $t8,4($t8)
    li         $a7,-5
    li         $t1,-129
    move       $v0,$t9
    beq        $t8, $s1, .L00001b18
    lhu        $a1,4($s2)
    andi       $v1,$a1,0x2
    beqz       $v1, .L00001b18
    nop
    li         $a7,-5
.L00001a64:
    li         $a3,-1
    move       $a1,$zero
    li         $a4,-1
    sh         $a4,56($s2)
    sw         $zero,76($s2)
    and        $a0,$a7,$v0
    lui        $a2,0x0
    sw         $zero,8($s2)
    addiu      $s4,$s2,40
    addiu      $a2,$a2,360
    sh         $a0,6($s2)
    jal        init_sv
    move       $a0,$s4
    lui        $a1,0x0
    addiu      $s0,$s2,72
    addiu      $a1,$a1,368
    jal        spinlock_init
    move       $a0,$s0
    lw         $a2,20($s1)
    lw         $a2,32($a2)
    ld         $a0,0($sp)
    jalr       $a2
    move       $a1,$s2
    beqz       $v0, .L00001ae4
    ld         $a5,0($sp)
    jal        sv_destroy
    move       $a0,$s4
    jal        spinlock_destroy
    move       $a0,$s0
    li         $v0,12
    b          .L000018bc
    sb         $s3,58($s2)
.L00001ae4:
    lw         $a4,8($a5)
    addiu      $a4,$a4,1
    sw         $a4,8($a5)
    lw         $a3,4($s1)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00001b2c
    nop
    sb         $zero,60($s2)
.L00001b04:
    ld         $a6,16($sp)
    lw         $a5,0($s2)
    move       $v0,$zero
    b          .L000018bc
    sw         $a5,0($a6)
.L00001b18:
    lhu        $v0,6($s2)
    and        $t0,$a7,$a1
    and        $t0,$t0,$t1
    b          .L00001a64
    sh         $t0,4($s2)
.L00001b2c:
    jal        kern_malloc
    li         $a0,8
    sw         $s2,0($v0)
    lw         $t2,36($s1)
    sw         $t2,4($v0)
    sw         $v0,36($s1)
    b          .L00001b04
    sb         $s3,60($s2)

glabel rrmCloseRN
    addiu      $sp,$sp,-32
    sd         $s2,0($sp)
    lw         $s2,24($a0)
    sw         $zero,44($a1)
    lw         $at,4($a0)
    andi       $at,$at,0x8
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $s0,8($sp)
    beqz       $at, .L00001b9c
    move       $s0,$a1
    lbu        $v0,60($a1)
    beqz       $v0, .L00001b98
    nop
    lw         $v1,48($a1)
    beq        $v1, $a0, .L00001b98
    nop
    b          .L00001d50
    move       $v0,$zero
.L00001b98:
    sw         $s1,48($s0)
.L00001b9c:
    lw         $v0,24($s1)
    lw         $a0,40($v0)
    bne        $a0, $s1, .L00001d74
    sd         $ra,24($sp)
.L00001bac:
    lw         $a4,44($v0)
.L00001bb0:
    addiu      $a4,$a4,1
    sw         $a4,44($v0)
    lw         $a3,20($s1)
    lw         $a3,36($a3)
    move       $a2,$s0
    move       $a1,$s1
    jalr       $a3
    move       $a0,$s2
    lw         $a5,40($s1)
    beq        $a5, $s0, .L00001df0
    nop
.L00001bdc:
    jal        splhi
    nop
    lw         $a5,104($s2)
    move       $a0,$v0
    move       $a2,$a5
    beqz       $a5, .L00001c30
    move       $a1,$a5
.L00001bf8:
    beq        $s0, $a2, .L00001c18
    nop
    lw         $a6,112($a2)
    move       $a1,$a2
    bnez       $a6, .L00001bf8
    move       $a2,$a6
    b          .L00001c34
    lw         $a5,84($s2)
.L00001c18:
    bne        $a5, $a2, .L00001c28
    lw         $v0,112($a2)
    b          .L00001c2c
    sw         $v0,104($s2)
.L00001c28:
    sw         $v0,112($a1)
.L00001c2c:
    sw         $zero,112($a2)
.L00001c30:
    lw         $a5,84($s2)
.L00001c34:
    move       $a2,$a5
    beqz       $a5, .L00001c68
    move       $a1,$a5
.L00001c40:
    beq        $s0, $a2, .L00001d64
    nop
    lw         $a7,108($a2)
    move       $a1,$a2
    bnez       $a7, .L00001c40
    move       $a2,$a7
    b          .L00001c68
    nop
.L00001c60:
    sw         $v0,108($a1)
.L00001c64:
    sw         $zero,108($a2)
.L00001c68:
    jal        splx
    nop
    lw         $t0,4($s1)
    andi       $t0,$t0,0x8
    beqz       $t0, .L00001dc8
    nop
    lw         $a0,80($s0)
.L00001c84:
    lh         $t1,0($s0)
    addiu      $t1,$t1,1
    andi       $t1,$t1,0x7fff
    beqz       $a0, .L00001cb8
    sh         $t1,0($s0)
    jal        unbind_pane
    move       $a1,$s1
    lw         $t2,80($s0)
    lw         $a0,84($s0)
    bne        $t2, $a0, .L00001db8
    nop
    sw         $zero,80($s0)
.L00001cb4:
    sw         $zero,84($s0)
.L00001cb8:
    jal        sv_destroy
    addiu      $a0,$s0,40
    jal        spinlock_destroy
    addiu      $a0,$s0,72
    li         $t8,1
    sb         $t8,58($s0)
    lw         $t3,4($s2)
    bne        $t3, $s0, .L00001ce0
    ld         $ra,24($sp)
    sw         $zero,4($s2)
.L00001ce0:
    lh         $v0,56($s0)
    li         $t9,-1
    beq        $v0, $t9, .L00001d30
    nop
    lw         $v1,16($s2)
    sll        $a0,$v0,0x2
    addu       $v1,$v1,$a0
    sw         $zero,0($v1)
    lw         $at,8($s1)
    lw         $at,4($at)
    beq        $at, $s1, .L00001d30
    nop
    lw         $a0,68($s0)
    beqz       $a0, .L00001e08
    lw         $v0,64($s0)
    sw         $v0,64($a0)
.L00001d20:
    lw         $v0,64($s0)
    beqz       $v0, .L00001e10
    lw         $a0,68($s0)
    sw         $a0,68($v0)
.L00001d30:
    lw         $a2,8($s2)
    addiu      $a2,$a2,-1
    sw         $a2,8($s2)
    lw         $a2,24($s1)
    lw         $a1,44($a2)
    move       $v0,$zero
    addiu      $a1,$a1,-1
    sw         $a1,44($a2)
.L00001d50:
    ld         $s2,0($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00001d64:
    bne        $a5, $a2, .L00001c60
    lw         $v0,108($a2)
    b          .L00001c64
    sw         $v0,84($s2)
.L00001d74:
    li         $a1,537
    jal        psema
    addiu      $a0,$v0,32
    lw         $a4,24($s1)
    sw         $s1,40($a4)
    lw         $v0,24($s1)
    lw         $a3,60($v0)
    beqz       $a3, .L00001bac
    nop
.L00001d98:
    jal        us_delay
    li         $a0,2
    lw         $v0,24($s1)
    lw         $a5,60($v0)
    bnez       $a5, .L00001d98
    nop
    b          .L00001bb0
    lw         $a4,44($v0)
.L00001db8:
    jal        unbind_pane
    move       $a1,$s1
    b          .L00001cb4
    sw         $zero,80($s0)
.L00001dc8:
    lw         $v0,36($s1)
    lw         $a6,0($v0)
    bne        $a6, $s0, .L00001e18
    move       $a0,$v0
    lw         $a7,4($v0)
    sw         $a7,36($s1)
.L00001de0:
    jal        kern_free
    nop
    b          .L00001c84
    lw         $a0,80($s0)
.L00001df0:
    jal        rrmUnbindProcFromRN
    move       $a0,$s1
    beqz       $v0, .L00001bdc
    nop
    b          .L00001e54
    move       $a0,$zero
.L00001e08:
    b          .L00001d20
    sw         $v0,20($s2)
.L00001e10:
    b          .L00001d30
    sw         $a0,24($s2)
.L00001e18:
    lw         $t0,4($v0)
    beqz       $t0, .L00001de0
    move       $a0,$t0
.L00001e24:
    lw         $t1,0($a0)
    beq        $t1, $s0, .L00001e48
    nop
    lw         $t2,4($a0)
    move       $v0,$a0
    bnez       $t2, .L00001e24
    move       $a0,$t2
    b          .L00001de0
    nop
.L00001e48:
    lw         $t3,4($a0)
    b          .L00001de0
    sw         $t3,4($v0)
.L00001e54:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,376
    b          .L00001bdc
    nop

glabel RRM_CloseRN
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        rrmCloseRN
    nop
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16

glabel RRM_Exit
    addiu      $sp,$sp,-48
    sd         $s2,8($sp)
    sd         $s3,16($sp)
    lw         $at,4($a0)
    sd         $ra,24($sp)
    sd         $s4,32($sp)
    andi       $at,$at,0x8
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $at, .L00001ff8
    sd         $s1,40($sp)
    lw         $s1,40($a0)
    beqz       $s1, .L00001ecc
    lw         $v0,0($gp)
    lw         $v0,44($s1)
    bne        $v0, $a0, .L00002060
    lw         $v0,0($gp)
.L00001ecc:
    slti       $a2,$v0,2
    li         $s1,1
    lui        $s2,0x0
    nop
    bnez       $a2, .L00001f74
    addiu      $s2,$s2,0
    b          .L00001f3c
    sll        $s3,$s1,0x3
.L00001eec:
    sll        $t8,$s1,0x3
    addiu      $s4,$s4,0
    li         $a1,25
    addu       $s4,$s4,$t8
    jal        psema
    move       $a0,$s4
    move       $a0,$s0
    jal        rrmCloseRN
    move       $a1,$s3
    bnez       $v0, .L000020c8
    lui        $a1,0x0
.L00001f18:
    jal        vsema
    move       $a0,$s4
    addiu      $s1,$s1,1
    lw         $v0,0($gp)
    dsll32     $s1,$s1,0x10
    dsra32     $s1,$s1,0x10
    slt        $t8,$s1,$v0
    beqz       $t8, .L00001f74
    sll        $s3,$s1,0x3
.L00001f3c:
    subu       $s3,$s3,$s1
    sll        $s3,$s3,0x2
    addu       $s3,$s3,$s1
    sll        $s3,$s3,0x2
    addu       $s3,$s2,$s3
    lw         $t8,44($s3)
    beq        $t8, $s0, .L00001eec
    lui        $s4,0x0
    addiu      $s1,$s1,1
    dsll32     $s1,$s1,0x10
    dsra32     $s1,$s1,0x10
    slt        $t8,$s1,$v0
    bnez       $t8, .L00001f3c
    sll        $s3,$s1,0x3
.L00001f74:
    lw         $v0,24($s0)
.L00001f78:
    beqz       $v0, .L00001f8c
    ld         $s2,8($sp)
    lw         $t8,40($v0)
    beq        $t8, $s0, .L00001fac
    ld         $s2,8($sp)
.L00001f8c:
    ld         $s3,16($sp)
    ld         $ra,24($sp)
    ld         $s4,32($sp)
    move       $v0,$zero
    ld         $s1,40($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00001fac:
    sw         $zero,48($v0)
    lw         $t9,24($s0)
    jal        splhi
    sw         $zero,44($t9)
    lw         $a1,20($s0)
    lw         $a1,96($a1)
    beqz       $a1, .L00001fd4
    move       $s1,$v0
    jalr       $a1
    move       $a0,$s0
.L00001fd4:
    lw         $a1,24($s0)
    sw         $zero,40($a1)
    lw         $a0,24($s0)
    jal        vsema
    addiu      $a0,$a0,32
    jal        splx
    move       $a0,$s1
    b          .L00001f8c
    ld         $s2,8($sp)
.L00001ff8:
    lw         $v0,36($a0)
    beqz       $v0, .L00001f74
    nop
.L00002004:
    lw         $s1,0($v0)
    li         $a1,25
    lh         $t8,2($s1)
    lui        $s2,0x0
    lui        $s4,0x0
    addiu      $s4,$s4,0
    sll        $t8,$t8,0x3
    addiu      $s2,$s2,0
    addu       $s4,$s4,$t8
    jal        psema
    move       $a0,$s4
    move       $a0,$s0
    jal        rrmCloseRN
    move       $a1,$s1
    bnez       $v0, .L000020b8
    move       $a0,$zero
.L00002044:
    jal        vsema
    move       $a0,$s4
    lw         $v0,36($s0)
    bnez       $v0, .L00002004
    nop
    b          .L00001f78
    lw         $v0,24($s0)
.L00002060:
    lh         $t8,2($s1)
    lui        $s4,0x0
    addiu      $s4,$s4,0
    sll        $t8,$t8,0x3
    li         $a1,25
    addu       $s4,$s4,$t8
    jal        psema
    move       $a0,$s4
    lw         $t8,44($s1)
    bnez       $t8, .L000020a0
    sb         $zero,60($s1)
    move       $a0,$s0
    jal        rrmCloseRN
    move       $a1,$s1
    b          .L000020a8
    nop
.L000020a0:
    jal        rrmUnbindProcFromRN
    move       $a0,$s0
.L000020a8:
    jal        vsema
    move       $a0,$s4
    b          .L00001ecc
    lw         $v0,0($gp)
.L000020b8:
    jal        cmn_err
    addiu      $a1,$s2,416
    b          .L00002044
    nop
.L000020c8:
    move       $a0,$zero
    addiu      $a1,$a1,0
    jal        cmn_err
    addiu      $a1,$a1,416
    b          .L00001f18
    nop

glabel rrmGetResourceMask
    jr         $ra
    lhu        $v0,4($a0)

glabel rrmSuspend
    addiu      $sp,$sp,-80
    sd         $s1,64($sp)
    sd         $ra,16($sp)
    sd         $s2,24($sp)
    move       $s2,$a1
    jal        gthread_find
    sd         $s4,56($sp)
    lw         $a5,4($v0)
    sd         $s0,48($sp)
    andi       $at,$a5,0x1
    move       $s1,$v0
    li         $s4,1
    sd         $s5,40($sp)
    move       $s5,$zero
    bnez       $at, .L00002474
    sd         $s3,32($sp)
    beqz       $v0, .L0000224c
    nop
    lw         $a0,8($v0)
    beqz       $a0, .L0000224c
    nop
    lw         $v0,12($v0)
    bnez       $v0, .L00002334
    nop
    lw         $s0,16($a0)
.L0000214c:
    andi       $s3,$s2,0x100
    beqz       $s3, .L0000215c
    ori        $a5,$a5,0x8
    move       $s4,$zero
.L0000215c:
    beqz       $s0, .L00002220
    sw         $a5,4($s1)
    andi       $v1,$s2,0x80
    b          .L000021cc
    sd         $v1,8($sp)
.L00002170:
    lw         $a1,12($s1)
    lw         $a0,8($a1)
    addiu      $a0,$a0,1
    sw         $a0,8($a1)
.L00002180:
    beqz       $s4, .L00002270
    nop
    lw         $s2,24($s0)
    beqz       $s2, .L000021a0
    nop
    lw         $a1,40($s2)
    beq        $a1, $s0, .L00002298
    nop
.L000021a0:
    lw         $v0,20($s0)
    beqz       $v0, .L000021c0
    nop
    lw         $a3,88($v0)
    move       $a0,$s2
    move       $a1,$s0
    jalr       $a3
    move       $a2,$s3
.L000021c0:
    lw         $s0,16($s0)
.L000021c4:
    beqz       $s0, .L0000221c
    nop
.L000021cc:
    beqz       $s3, .L00002180
    nop
    lw         $v0,24($s0)
    beqz       $v0, .L00002180
    nop
    lw         $a4,40($v0)
    bne        $a4, $s0, .L00002180
    nop
    lw         $a5,4($s1)
    ori        $a5,$a5,0x1
    beqz       $s5, .L00002180
    sw         $a5,4($s1)
    andi       $a6,$a5,0x4
    bnez       $a6, .L00002170
    nop
    lw         $t0,24($s0)
    lw         $a7,44($t0)
    addiu      $a7,$a7,1
    b          .L00002170
    sw         $a7,44($t0)
.L0000221c:
    lw         $a5,4($s1)
.L00002220:
    lw         $t1,12($s1)
    li         $t0,-9
    and        $t0,$a5,$t0
    beqz       $t1, .L0000224c
    sw         $t0,4($s1)
    beqz       $s5, .L00002244
    nop
    jal        splx
    lw         $a0,0($sp)
.L00002244:
    jal        GfxListReaderUnlock
    lw         $a0,8($s1)
.L0000224c:
    ld         $s1,64($sp)
.L00002250:
    ld         $s4,56($sp)
    ld         $s0,48($sp)
    ld         $ra,16($sp)
    ld         $s5,40($sp)
    ld         $s3,32($sp)
    ld         $s2,24($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00002270:
    lw         $v0,20($s0)
    beqz       $v0, .L000021c0
    nop
    lw         $t1,88($v0)
    move       $a2,$s3
    move       $a1,$s0
    jalr       $t1
    lw         $a0,24($s0)
    b          .L000021c4
    lw         $s0,16($s0)
.L00002298:
    lw         $t2,20($s0)
    lw         $t2,88($t2)
    move       $a0,$s2
    move       $a1,$s0
    jalr       $t2
    move       $a2,$s3
    lw         $t3,44($s2)
    beqz       $t3, .L00002368
    ld         $ra,8($sp)
    lw         $t8,48($s2)
    beqz       $t8, .L000022d0
    nop
    beqz       $v0, .L00002388
    nop
.L000022d0:
    lw         $t9,60($s2)
    beqz       $t9, .L000021c0
    nop
    beqz       $ra, .L000021c0
    nop
    lw         $v0,24($s0)
    lw         $at,44($v0)
    addiu      $at,$at,-1
    jal        splhi
    sw         $at,44($v0)
    lw         $a1,20($s0)
    lw         $a1,96($a1)
    beqz       $a1, .L00002310
    move       $s2,$v0
    jalr       $a1
    move       $a0,$s0
.L00002310:
    lw         $a1,24($s0)
    sw         $zero,40($a1)
    lw         $a0,24($s0)
    jal        vsema
    addiu      $a0,$a0,32
    jal        splx
    move       $a0,$s2
    b          .L000021c4
    lw         $s0,16($s0)
.L00002334:
    jal        GfxListReaderLock
    nop
    lw         $a0,8($s1)
    lw         $s0,16($a0)
    move       $s5,$zero
    beqz       $s0, .L000023dc
    li         $s4,1
    lw         $a2,4($s0)
    andi       $a2,$a2,0x8
    beqz       $a2, .L000023ec
    nop
    b          .L0000214c
    lw         $a5,4($s1)
.L00002368:
    beqz       $v0, .L00002418
    nop
    lw         $a4,24($s0)
    lw         $a3,44($a4)
    addiu      $a3,$a3,1
    sw         $a3,44($a4)
    b          .L000021c0
    sw         $v0,48($s2)
.L00002388:
    sw         $zero,48($s2)
    lw         $a5,24($s0)
    lw         $a4,44($a5)
    addiu      $a4,$a4,-1
    jal        splhi
    sw         $a4,44($a5)
    lw         $a1,20($s0)
    lw         $a1,96($a1)
    beqz       $a1, .L000023b8
    move       $s2,$v0
    jalr       $a1
    move       $a0,$s0
.L000023b8:
    lw         $a1,24($s0)
    sw         $zero,40($a1)
    lw         $a0,24($s0)
    jal        vsema
    addiu      $a0,$a0,32
    jal        splx
    move       $a0,$s2
    b          .L000021c4
    lw         $s0,16($s0)
.L000023dc:
    jal        GfxListReaderUnlock
    nop
    b          .L00002250
    ld         $s1,64($sp)
.L000023ec:
    jal        splhi
    nop
    lw         $a5,4($s1)
    andi       $a2,$a5,0x2
    beqz       $a2, .L0000245c
    sw         $v0,0($sp)
.L00002404:
    lw         $s4,12($s1)
    lw         $s4,8($s4)
    li         $s5,1
    b          .L0000214c
    sltiu      $s4,$s4,1
.L00002418:
    jal        splhi
    nop
    lw         $a1,20($s0)
    lw         $a1,96($a1)
    beqz       $a1, .L00002438
    move       $s2,$v0
    jalr       $a1
    move       $a0,$s0
.L00002438:
    lw         $a1,24($s0)
    sw         $zero,40($a1)
    lw         $a0,24($s0)
    jal        vsema
    addiu      $a0,$a0,32
    jal        splx
    move       $a0,$s2
    b          .L000021c4
    lw         $s0,16($s0)
.L0000245c:
    lw         $a3,12($s1)
    lw         $a2,8($a3)
    addiu      $a2,$a2,-1
    sw         $a2,8($a3)
    b          .L00002404
    lw         $a5,4($s1)
.L00002474:
    li         $a0,5
    move       $a2,$v0
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,448
    b          .L00002250
    ld         $s1,64($sp)

glabel rrmResume
    addiu      $sp,$sp,-96
    sd         $a1,24($sp)
    sd         $ra,32($sp)
    jal        gthread_find
    sd         $s1,40($sp)
    sd         $s0,48($sp)
    sd         $s5,56($sp)
    sd         $s4,72($sp)
    move       $s1,$v0
    sd         $s6,80($sp)
    move       $s6,$zero
    beqz       $v0, .L000025e4
    sd         $s2,88($sp)
    lw         $a0,8($v0)
    beqz       $a0, .L000025e8
    ld         $s2,88($sp)
    lw         $at,12($v0)
    bnez       $at, .L000026b0
    nop
    lw         $s0,16($a0)
.L000024e0:
    beqz       $s0, .L000025c0
    sd         $s3,64($sp)
    ld         $s3,24($sp)
    andi       $s3,$s3,0x100
    b          .L00002548
    lw         $ra,24($s0)
.L000024f8:
    lw         $v0,20($s0)
    beqz       $v0, .L0000252c
    li         $s2,1
    lw         $t8,4($s0)
    andi       $t8,$t8,0x3
    beqz       $t8, .L0000252c
    li         $s2,1
    lw         $t9,92($v0)
    move       $a2,$s3
    move       $a1,$s0
    jalr       $t9
    lw         $a0,24($s0)
    li         $s2,1
.L0000252c:
    lw         $s0,16($s0)
.L00002530:
    bnez       $s2, .L0000253c
    nop
.L00002538:
    lw         $s0,16($s0)
.L0000253c:
    beqz       $s0, .L000025c0
    nop
    lw         $ra,24($s0)
.L00002548:
    beqz       $ra, .L00002538
    move       $s2,$zero
    lw         $at,4($s0)
    andi       $at,$at,0x8
    beqz       $at, .L00002608
    nop
.L00002560:
    lw         $v0,56($s0)
    andi       $v0,$v0,0x1
    beqz       $v0, .L00002684
    nop
.L00002570:
    beqz       $s3, .L00002638
    nop
    lw         $v0,4($s1)
    andi       $v1,$v0,0x1
    beqz       $v1, .L000024f8
    li         $a0,-2
    lw         $a1,24($s0)
    lw         $a1,40($a1)
    bne        $a1, $s0, .L000024f8
    and        $v0,$a0,$v0
    beqz       $s6, .L000024f8
    sw         $v0,4($s1)
    andi       $a2,$v0,0x4
    bnez       $a2, .L000024f8
    nop
    lw         $a4,24($s0)
    lw         $a3,44($a4)
    addiu      $a3,$a3,-1
    b          .L000024f8
    sw         $a3,44($a4)
.L000025c0:
    lw         $a4,12($s1)
    beqz       $a4, .L000025e4
    ld         $s3,64($sp)
    beqz       $s6, .L000025dc
    nop
    jal        splx
    lw         $a0,0($sp)
.L000025dc:
    jal        GfxListReaderUnlock
    lw         $a0,8($s1)
.L000025e4:
    ld         $s2,88($sp)
.L000025e8:
    ld         $s6,80($sp)
    ld         $s4,72($sp)
    ld         $ra,32($sp)
    ld         $s1,40($sp)
    ld         $s5,56($sp)
    ld         $s0,48($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L00002608:
    lw         $a5,12($s1)
    beqz       $a5, .L00002560
    nop
    lw         $a6,28($s0)
    beqz       $a6, .L00002560
    nop
    lw         $a7,20($s0)
    lw         $a7,56($a7)
    jalr       $a7
    move       $a0,$s0
    b          .L00002570
    nop
.L00002638:
    lw         $v0,4($s0)
    andi       $v1,$v0,0x1
    andi       $a0,$v0,0x2
    beqz       $v1, .L000026f0
    andi       $v0,$v0,0x20
    beqz       $v0, .L00002718
    nop
    lw         $v0,24($s0)
    lw         $a0,40($v0)
    bne        $a0, $s0, .L000026e0
    nop
.L00002664:
    lw         $a3,20($s0)
    lw         $a3,92($a3)
    move       $a0,$v0
    move       $a1,$s0
    jalr       $a3
    move       $a2,$s3
    b          .L00002530
    nop
.L00002684:
    lw         $a4,28($s0)
    beqz       $a4, .L00002570
    nop
    lw         $a5,20($s0)
    lw         $a5,56($a5)
    jalr       $a5
    move       $a0,$s0
    lw         $a6,56($s0)
    ori        $a6,$a6,0x1
    b          .L00002570
    sw         $a6,56($s0)
.L000026b0:
    jal        GfxListReaderLock
    nop
    lw         $a0,8($s1)
    lw         $s0,16($a0)
    beqz       $s0, .L00002888
    move       $s6,$zero
    lw         $a7,4($s0)
    andi       $a7,$a7,0x8
    bnez       $a7, .L000024e0
    nop
    b          .L0000284c
    nop
.L000026e0:
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    b          .L00002664
    lw         $v0,24($s0)
.L000026f0:
    beqz       $a0, .L00002530
    nop
    lw         $t0,20($s0)
    lw         $t0,92($t0)
    move       $a2,$s3
    move       $a1,$s0
    jalr       $t0
    lw         $a0,24($s0)
    b          .L00002530
    nop
.L00002718:
    lw         $t1,40($s0)
    bnez       $t1, .L0000275c
    sd         $t1,8($sp)
    b          .L000028ac
    nop
.L0000272c:
    lw         $t2,44($v0)
    beqz       $t2, .L000027f8
    and        $a0,$s5,$s4
.L00002738:
    lw         $t3,20($s0)
    lw         $t3,92($t3)
    move       $a0,$v0
    move       $a1,$s0
    jalr       $t3
    move       $a2,$s3
.L00002750:
    ld         $t8,16($sp)
.L00002754:
    beqz       $t8, .L00002530
    nop
.L0000275c:
    jal        splhi
    sd         $zero,16($sp)
    ld         $s4,8($sp)
    lw         $a1,80($s4)
    lhu        $s5,4($s4)
    ld         $ra,8($sp)
    move       $a0,$v0
    lhu        $s4,6($s4)
    beqz       $a1, .L000027a8
    andi       $t9,$s5,0x40
    lh         $t8,12($a1)
    beqz       $t9, .L000027a8
    or         $s4,$t8,$s4
    lw         $ra,84($ra)
    lh         $ra,12($ra)
    li         $t8,-65
    and        $s4,$s4,$t8
    andi       $ra,$ra,0x40
    or         $s4,$ra,$s4
.L000027a8:
    jal        splx
    nop
    lw         $v0,24($s0)
    lw         $at,40($v0)
    beq        $at, $s0, .L0000272c
    and        $a0,$s5,$s4
    bne        $s5, $a0, .L000027e8
    nop
    jal        cpsema
    addiu      $a0,$v0,32
    beqz       $v0, .L000027e8
    li         $v1,1
    lw         $v0,24($s0)
    sd         $v1,16($sp)
    b          .L00002750
    sw         $s0,40($v0)
.L000027e8:
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    b          .L00002754
    ld         $t8,16($sp)
.L000027f8:
    beq        $s5, $a0, .L00002738
    nop
    jal        splhi
    nop
    lw         $a1,20($s0)
    lw         $a1,96($a1)
    beqz       $a1, .L00002820
    move       $s4,$v0
    jalr       $a1
    move       $a0,$s0
.L00002820:
    lw         $a1,24($s0)
    sw         $zero,40($a1)
    lw         $a0,24($s0)
    jal        vsema
    addiu      $a0,$a0,32
    jal        splx
    move       $a0,$s4
    jal        rrmDoUnMapGfx
    move       $a0,$s0
    b          .L00002754
    ld         $t8,16($sp)
.L0000284c:
    lw         $v0,4($s1)
    andi       $a0,$v0,0x2
    li         $v1,-3
    beqz       $a0, .L00002864
    and        $v0,$v0,$v1
    sw         $v0,4($s1)
.L00002864:
    jal        splhi
    nop
    lw         $a1,4($s1)
    andi       $a1,$a1,0x1
    sw         $v0,0($sp)
    bnez       $a1, .L000024e0
    li         $s6,1
    b          .L00002898
    nop
.L00002888:
    jal        GfxListReaderUnlock
    nop
    b          .L000025e8
    ld         $s2,88($sp)
.L00002898:
    lw         $a3,12($s1)
    lw         $a2,8($a3)
    addiu      $a2,$a2,1
    b          .L000024e0
    sw         $a2,8($a3)
.L000028ac:
    lw         $a3,20($s0)
    lw         $a3,92($a3)
    move       $a2,$s3
    move       $a1,$s0
    jalr       $a3
    lw         $a0,24($s0)
    b          .L00002530
    nop

glabel rrmSetResourceMask
    addiu      $sp,$sp,-64
    sd         $a0,0($sp)
    sd         $s8,40($sp)
    sd         $ra,24($sp)
    sd         $s0,16($sp)
    move       $s0,$a1
    sd         $s2,8($sp)
    move       $s2,$a2
    jal        splhi
    sd         $s1,48($sp)
    lhu        $at,4($s0)
    sd         $at,32($sp)
    andi       $at,$at,0x2
    move       $s8,$v0
    beqz       $at, .L00002918
    lhu        $s1,6($s0)
    jal        pane_validmask
    lw         $a0,80($s0)
    or         $s1,$v0,$s1
.L00002918:
    jal        splx
    move       $a0,$s8
    ld         $v0,32($sp)
    xor        $v0,$v0,$s2
    and        $v0,$s2,$v0
    xor        $v1,$s1,$v0
    and        $v0,$v0,$v1
    beqz       $v0, .L00002948
    ld         $s8,40($sp)
    jal        rrmUnMapGfx
    ld         $a0,0($sp)
    ld         $s8,40($sp)
.L00002948:
    jal        splhi
    ld         $s1,48($sp)
    move       $a0,$v0
    jal        splx
    sh         $s2,4($s0)
    ld         $ra,24($sp)
    ld         $s2,8($sp)
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,64

glabel RRM_ValidateSwapBuf
    addiu      $sp,$sp,-32
    sd         $a0,0($sp)
    sd         $ra,16($sp)
    jal        RRM_CheckValidFault
    sd         $a2,8($sp)
    bgez       $v0, .L00002994
    ld         $a0,8($sp)
    b          .L000029a8
    li         $a1,14
.L00002994:
    ld         $a1,0($sp)
    lw         $a2,8($a0)
    jal        validate_pane_swapbuf
    lw         $a0,4($a0)
    move       $a1,$v0
.L000029a8:
    ld         $ra,16($sp)
    move       $v0,$a1
    jr         $ra
    addiu      $sp,$sp,32

glabel rrmValidateBuffer
    lw         $a2,52($a0)
    lw         $at,96($a2)
    addiu      $sp,$sp,-16
    move       $a3,$a0
    beqz       $at, .L000029e4
    sd         $ra,0($sp)
    lw         $v1,80($a0)
    lw         $a0,100($a2)
    lw         $v0,24($v1)
    addu       $v0,$v0,$a0
    sw         $v0,28($v1)
.L000029e4:
    lw         $a1,48($a3)
    jal        validate_pane_buffer
    lw         $a0,80($a3)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel RRM_ValidateMessage
    addiu      $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a1
    jal        splhi
    sd         $s8,16($sp)
    move       $a0,$v0
    jal        splx
    lhu        $s8,6($s0)
    andi       $at,$s8,0x20
    beqz       $at, .L00002a40
    li         $v0,22
.L00002a2c:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    ld         $s8,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00002a40:
    jal        rrmValidateBuffer
    move       $a0,$s0
    b          .L00002a2c
    move       $v0,$zero

glabel RRM_SetDisplayMode
    addiu      $sp,$sp,-96
    sd         $ra,80($sp)
    sd         $s0,64($sp)
    move       $s0,$a0
    sd         $s1,72($sp)
    move       $s1,$a1
    jal        RRM_CheckValidFault
    sd         $a2,56($sp)
    bltz       $v0, .L00002b10
    li         $a1,139
    lw         $a0,8($s0)
    lw         $at,4($a0)
    beqz       $at, .L00002b08
    li         $v0,14
    li         $v1,11
    sb         $v1,4($sp)
    sw         $a0,0($sp)
    lw         $v0,4($s0)
    andi       $v0,$v0,0x8
    beqz       $v0, .L00002aac
    li         $a4,3
    sb         $a1,4($sp)
    li         $a4,3
.L00002aac:
    sw         $a4,8($sp)
    lw         $a3,16($s1)
    ld         $a1,56($sp)
    sw         $a3,12($sp)
    lw         $a2,8($a1)
    sw         $a2,16($sp)
    lw         $a1,4($a1)
    addiu      $a0,$sp,0
    jal        GfxMessage
    sw         $a1,20($sp)
    lw         $a1,80($s1)
    li         $a0,8
    move       $a2,$s0
    jal        invalidate_pane
    lw         $a1,4($a1)
    jal        rrmUnMapGfx
    move       $a0,$s0
    move       $v0,$zero
.L00002af4:
    ld         $ra,80($sp)
.L00002af8:
    ld         $s0,64($sp)
    ld         $s1,72($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L00002b08:
    b          .L00002af8
    ld         $ra,80($sp)
.L00002b10:
    b          .L00002af4
    li         $v0,14

glabel RRM_LoadDisplayMode
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    lw         $a0,4($a2)
    sd         $s1,16($sp)
    move       $s1,$a2
    sd         $s2,24($sp)
    sd         $ra,8($sp)
    jal        clip2pane
    move       $a1,$s0
    beqz       $v0, .L00002b70
    move       $s2,$v0
    lh         $at,12($v0)
    andi       $at,$at,0x8
    beqz       $at, .L00002b70
    li         $v0,22
.L00002b58:
    ld         $ra,8($sp)
.L00002b5c:
    ld         $s2,24($sp)
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00002b70:
    lw         $a1,8($s1)
    bltz       $a1, .L00002b90
    li         $v0,22
    lw         $v1,24($s0)
    lw         $v1,52($v1)
    slt        $v1,$a1,$v1
    bnez       $v1, .L00002b98
    nop
.L00002b90:
    b          .L00002b5c
    ld         $ra,8($sp)
.L00002b98:
    lw         $a2,20($s0)
    lw         $a2,80($a2)
    move       $a0,$s0
    move       $t9, $a2
    jalr       $t9
    lw         $a2,12($s1)
    bltz       $v0, .L00002c34
    move       $a0,$v0
    beqz       $s2, .L00002bd8
    nop
    lw         $a4,16($s1)
    sw         $a4,32($s2)
    lw         $a3,16($s1)
    andi       $a3,$a3,0x4
    xori       $a3,$a3,0x4
    sltiu      $a3,$a3,1
    sh         $a3,18($s2)
.L00002bd8:
    lw         $v0,24($s0)
    lw         $a1,8($s1)
    lw         $a5,52($v0)
    slt        $a5,$a1,$a5
    beqz       $a5, .L00002c00
    sll        $t0,$a1,0x2
    lw         $a7,56($v0)
    lw         $a6,16($s1)
    addu       $a7,$a7,$t0
    sw         $a6,0($a7)
.L00002c00:
    li         $t1,1
    bne        $a0, $t1, .L00002c2c
    nop
    lw         $s1,40($s0)
    beqz       $s1, .L00002c3c
    move       $a0,$s0
    move       $a1,$s1
    jal        rrmInvalidateRN
    li         $a2,16
    beqz       $v0, .L00002c44
    nop
.L00002c2c:
    b          .L00002b58
    move       $v0,$zero
.L00002c34:
    b          .L00002b58
    negu       $v0,$v0
.L00002c3c:
    b          .L00002b58
    li         $v0,14
.L00002c44:
    lw         $t2,20($s0)
    lw         $t2,76($t2)
    move       $a1,$s1
    jalr       $t2
    lw         $a0,24($s0)
    jal        rrmUnMapGfx
    move       $a0,$s0
    b          .L00002c2c
    nop

glabel RRM_GetDisplayModes
    lw         $a7,24($a0)
    lw         $a5,52($a7)
    lw         $at,8($a2)
    sll        $a5,$a5,0x2
    sltu       $at,$at,$a5
    move       $a6,$a2
    addiu      $sp,$sp,-16
    li         $v0,22
    beqz       $at, .L00002c98
    sd         $ra,0($sp)
.L00002c90:
    jr         $ra
    addiu      $sp,$sp,16
.L00002c98:
    lw         $a0,56($a7)
    lw         $a1,4($a2)
    jal        copyout
    move       $a2,$a5
    beqz       $v0, .L00002cb8
    ld         $ra,0($sp)
    b          .L00002c90
    li         $v0,14
.L00002cb8:
    b          .L00002c90
    move       $v0,$zero

glabel rrmValidateMyRetrace
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        splhi
    move       $s0,$a1
    lhu        $at,4($s0)
    lhu        $v1,6($s0)
    xor        $v1,$v1,$at
    and        $at,$at,$v1
    andi       $at,$at,0x10
    beqz       $at, .L00002d14
    addiu      $a0,$s0,40
    li         $a1,25
    addiu      $a2,$s0,72
    jal        sv_wait
    move       $a3,$v0
    move       $v0,$zero
.L00002d04:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L00002d14:
    jal        splx
    move       $a0,$v0
    b          .L00002d04
    move       $v0,$zero

glabel rrmValidateRetrace
    addiu      $sp,$sp,-32
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    lhu        $at,6($s8)
    sd         $v0,16($sp)
    addiu      $a0,$s8,40
    ori        $at,$at,0x10
    jal        sv_signal
    sh         $at,6($s8)
    ld         $s8,8($sp)
    jal        splx
    ld         $a0,16($sp)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel rrmAllocPcxid
    lw         $a6,24($a0)
    lw         $a5,12($a6)
    li         $at,1
    beq        $a5, $at, .L00002e60
    li         $t0,-1
    lh         $a7,56($a1)
    beq        $a7, $t0, .L00002db4
    nop
    lw         $a4,8($a0)
    lw         $a4,4($a4)
    xor        $a4,$a4,$a0
    sltiu      $a4,$a4,1
    sltiu      $a4,$a4,1
    bnez       $a4, .L00002e30
.L00002da0:
    move       $v0,$zero
    jr         $ra
    nop
.L00002dac:
    jr         $ra
    nop
.L00002db4:
    blez       $a5, .L00002df0
    move       $a4,$zero
    lw         $v0,16($a6)
    lw         $t1,0($v0)
.L00002dc4:
    beqz       $t1, .L00002de4
    addiu      $v0,$v0,4
    addiu      $a4,$a4,1
    slt        $t2,$a4,$a5
    bnezl      $t2, .L00002dc4
    lw         $t1,0($v0)
    b          .L00002df4
    lw         $a4,8($a0)
.L00002de4:
    dsll32     $a7,$a4,0x10
    dsra32     $a7,$a7,0x10
    sh         $a7,56($a1)
.L00002df0:
    lw         $a4,8($a0)
.L00002df4:
    lw         $a4,4($a4)
    xor        $a4,$a4,$a0
    sltiu      $a4,$a4,1
    sltiu      $a4,$a4,1
    bnez       $a4, .L00002e68
    move       $v0,$zero
.L00002e0c:
    beqz       $a4, .L00002dac
    nop
.L00002e14:
    lw         $a7,20($a6)
    sw         $a1,68($a7)
    lw         $a5,20($a6)
    sw         $zero,68($a1)
    sw         $a5,64($a1)
    jr         $ra
    sw         $a1,20($a6)
.L00002e30:
    lw         $v0,68($a1)
    beqz       $v0, .L00002e94
    nop
    lw         $t0,64($a1)
    sw         $t0,64($v0)
    lw         $a0,64($a1)
    beqz       $a0, .L00002e84
    lw         $v0,68($a1)
    beqz       $a4, .L00002da0
    sw         $v0,68($a0)
.L00002e58:
    b          .L00002e14
    move       $v0,$zero
.L00002e60:
    jr         $ra
    lw         $v0,4($a6)
.L00002e68:
    beq        $a7, $t0, .L00002eb4
    nop
    lw         $t1,20($a6)
    beqz       $t1, .L00002e9c
    nop
    b          .L00002e0c
    move       $v0,$zero
.L00002e84:
    beqz       $a4, .L00002da0
    sw         $v0,24($a6)
    b          .L00002e58
    nop
.L00002e94:
    jr         $ra
    move       $v0,$zero
.L00002e9c:
    sw         $a1,24($a6)
    sw         $a1,20($a6)
    sw         $zero,64($a1)
    sw         $zero,68($a1)
    jr         $ra
    move       $v0,$zero
.L00002eb4:
    lw         $v0,24($a6)
    lw         $t3,68($v0)
    sw         $t3,24($a6)
    sw         $zero,64($t3)
    lh         $t2,56($v0)
    b          .L00002e0c
    sh         $t2,56($a1)

glabel rrmValidateMyPcx
    addiu      $sp,$sp,-48
    sd         $s2,24($sp)
    sd         $ra,0($sp)
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s0,16($sp)
    move       $s0,$a1
    jal        splhi
    sd         $s3,40($sp)
    lhu        $s2,4($s0)
    move       $a0,$v0
    jal        splx
    lhu        $s3,6($s0)
    xor        $at,$s2,$s3
    and        $at,$s2,$at
    andi       $at,$at,0x1
    beqz       $at, .L00003004
    move       $s2,$zero
    lw         $a5,24($s1)
    lw         $a4,44($a5)
    addiu      $a4,$a4,1
    sw         $a4,44($a5)
    lw         $a3,24($s1)
    lw         $a3,4($a3)
    beqz       $a3, .L00002f40
    nop
    bne        $a3, $s0, .L00003094
    move       $a0,$s1
.L00002f40:
    lh         $a5,56($s0)
.L00002f44:
    li         $v0,-1
    beq        $a5, $v0, .L00003024
    move       $a0,$s1
    jal        rrmAllocPcxid
    move       $a1,$s0
    lw         $a6,20($s1)
    lw         $a6,64($a6)
    lw         $a0,24($s1)
    move       $a1,$s0
    jalr       $a6
    lw         $a2,4($a0)
    bltz       $v0, .L00002f7c
    li         $s2,-1
    move       $s2,$zero
.L00002f7c:
    move       $s3,$zero
.L00002f80:
    lw         $t1,0($gp)
    lw         $t0,8($t1)
    addiu      $t0,$t0,1
    sw         $t0,8($t1)
    lw         $a7,24($s1)
    jal        splhi
    sw         $s0,4($a7)
    lhu        $t1,6($s0)
    move       $a0,$v0
    ori        $t1,$t1,0x1
    jal        splx
    sh         $t1,6($s0)
    lw         $t3,24($s1)
    lw         $t2,44($t3)
    addiu      $t2,$t2,-1
    beqz       $s3, .L00003004
    sw         $t2,44($t3)
    li         $t3,1
    jal        splhi
    sb         $t3,59($s0)
    lw         $a1,20($s1)
    lw         $a1,96($a1)
    beqz       $a1, .L00002fe8
    move       $s0,$v0
    jalr       $a1
    move       $a0,$s1
.L00002fe8:
    lw         $a1,24($s1)
    sw         $zero,40($a1)
    lw         $a0,24($s1)
    jal        vsema
    addiu      $a0,$a0,32
    jal        splx
    move       $a0,$s0
.L00003004:
    ld         $s3,40($sp)
    ld         $ra,0($sp)
    ld         $s1,8($sp)
    ld         $s0,16($sp)
    move       $v0,$s2
    ld         $s2,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00003024:
    lbu        $a2,59($s0)
    beqz       $a2, .L000030c8
    move       $s3,$zero
.L00003030:
    move       $a0,$s1
.L00003034:
    jal        rrmAllocPcxid
    move       $a1,$s0
    lw         $a0,24($s1)
    lw         $a6,20($s1)
    lw         $a3,4($a0)
    beqz       $v0, .L000030a8
    lw         $a6,60($a6)
    move       $a1,$v0
    sd         $v0,32($sp)
    jalr       $a6
    move       $a2,$s0
    ld         $a1,32($sp)
    bltz       $v0, .L000030f4
    li         $a0,-1
    move       $s2,$zero
.L00003070:
    sh         $a0,56($a1)
    lh         $v0,56($s0)
.L00003078:
    beq        $v0, $a0, .L00002f80
    sll        $t0,$v0,0x2
    lw         $a7,24($s1)
    lw         $a7,16($a7)
    addu       $a7,$a7,$t0
    b          .L00002f80
    sw         $s0,0($a7)
.L00003094:
    move       $a1,$a3
    jal        rrmInvalidateRN
    li         $a2,1
    b          .L00002f44
    lh         $a5,56($s0)
.L000030a8:
    move       $a1,$zero
    jalr       $a6
    move       $a2,$s0
    bltz       $v0, .L00003108
    li         $a0,-1
    move       $s2,$zero
    b          .L00003078
    lh         $v0,56($s0)
.L000030c8:
    lhu        $t0,4($s0)
    andi       $t0,$t0,0x2
    beqz       $t0, .L00003100
    move       $s3,$zero
    lw         $a1,80($s0)
    li         $a0,2
    move       $a2,$s1
    jal        invalidate_pane
    lw         $a1,4($a1)
    b          .L00003030
    li         $s3,1
.L000030f4:
    li         $s2,-1
    b          .L00003070
    nop
.L00003100:
    b          .L00003034
    move       $a0,$s1
.L00003108:
    li         $s2,-1
    b          .L00003078
    lh         $v0,56($s0)

glabel RRM_ValidateClip
    addiu      $sp,$sp,-48
    lw         $v0,24($a0)
    sd         $s1,16($sp)
    lw         $at,40($v0)
    sd         $s0,24($sp)
    move       $s0,$a0
    move       $s1,$a2
    sd         $s2,8($sp)
    move       $s2,$zero
    bne        $at, $a0, .L000031c0
    sd         $ra,32($sp)
.L00003140:
    lw         $a2,44($v0)
.L00003144:
    addiu      $a2,$a2,1
    sw         $a2,44($v0)
    lw         $a1,24($s0)
    lw         $a1,4($a1)
    beqz       $a1, .L00003184
    lw         $a0,4($s1)
    lw         $a3,16($a1)
    bne        $a3, $a0, .L00003188
    move       $a1,$s0
    jal        RRM_CheckValidFault
    move       $a0,$s0
    bltz       $v0, .L00003204
    nop
.L00003178:
    bnez       $s2, .L00003194
    lw         $a0,0($sp)
    lw         $a0,4($s1)
.L00003184:
    move       $a1,$s0
.L00003188:
    jal        validate_pane_clip
    move       $a2,$s1
    move       $a0,$v0
.L00003194:
    ld         $s2,8($sp)
    ld         $s1,16($sp)
    lw         $a5,24($s0)
    ld         $ra,32($sp)
    lw         $a4,44($a5)
    move       $v0,$a0
    ld         $s0,24($sp)
    addiu      $sp,$sp,48
    addiu      $a4,$a4,-1
    jr         $ra
    sw         $a4,44($a5)
.L000031c0:
    li         $a1,537
    jal        psema
    addiu      $a0,$v0,32
    lw         $a6,24($s0)
    sw         $s0,40($a6)
    lw         $v0,24($s0)
    lw         $a5,60($v0)
    beqz       $a5, .L00003140
    nop
.L000031e4:
    jal        us_delay
    li         $a0,2
    lw         $v0,24($s0)
    lw         $a7,60($v0)
    bnez       $a7, .L000031e4
    nop
    b          .L00003144
    lw         $a2,44($v0)
.L00003204:
    li         $s2,1
    li         $t0,14
    b          .L00003178
    sw         $t0,0($sp)

glabel RRM_ValidFault
    addiu      $sp,$sp,-64
    sd         $ra,56($sp)
    sd         $s1,48($sp)
    lw         $a2,4($a0)
    sd         $s2,40($sp)
    sd         $s0,8($sp)
    andi       $a2,$a2,0x20
    move       $s0,$a0
    sd         $s4,16($sp)
    move       $s4,$a1
    beqz       $a2, .L0000330c
    sd         $s3,32($sp)
.L00003244:
    lw         $v0,24($s0)
    lw         $a3,40($v0)
    bne        $a3, $s0, .L000032e0
    li         $a1,537
.L00003254:
    bnez       $a2, .L000032b8
    nop
    lw         $v0,8($s0)
    lw         $v0,4($v0)
    bnez       $v0, .L00003380
    lw         $s1,0($sp)
    b          .L00003360
    li         $v0,-1
.L00003274:
    bnez       $v1, .L00003454
    move       $a1,$s0
.L0000327c:
    lw         $v0,24($s0)
    lw         $a0,40($v0)
    bne        $a0, $s0, .L000032dc
    andi       $a1,$s2,0x1
    bnez       $a1, .L000032b0
    nop
    move       $a0,$s0
    jal        rrmValidateMyPcx
    move       $a1,$s1
    bltz       $v0, .L00003470
    nop
    lw         $v0,24($s0)
    lw         $a0,40($v0)
.L000032b0:
    bne        $a0, $s0, .L000032e0
    li         $a1,537
.L000032b8:
    jal        ddv_lock
    lw         $a0,28($s0)
    lw         $a2,24($s0)
    lw         $a2,40($a2)
    beq        $a2, $s0, .L00003498
    nop
    jal        ddv_unlock
    lw         $a0,28($s0)
    lw         $v0,24($s0)
.L000032dc:
    li         $a1,537
.L000032e0:
    jal        psema
    addiu      $a0,$v0,32
    lw         $a4,24($s0)
    sw         $s0,40($a4)
    lw         $a3,24($s0)
    lw         $a3,60($a3)
    bnez       $a3, .L00003478
    nop
    lw         $a2,4($s0)
.L00003304:
    b          .L00003254
    andi       $a2,$a2,0x20
.L0000330c:
    lw         $s1,40($a0)
    beqz       $s1, .L00003320
    nop
    b          .L00003244
    sw         $s1,0($sp)
.L00003320:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    li         $a1,4
    li         $a0,2132
    lui        $a2,0x0
    jal        cmn_err_tag
    addiu      $a2,$a2,496
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    li         $v0,-1
.L00003360:
    ld         $s1,48($sp)
    ld         $s2,40($sp)
    ld         $ra,56($sp)
    ld         $s3,32($sp)
    ld         $s0,8($sp)
    ld         $s4,16($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00003380:
    lw         $a3,16($s1)
    bnez       $a3, .L000033a4
    nop
    beq        $v0, $s0, .L000033a4
    nop
    lhu        $a4,4($s1)
    andi       $a4,$a4,0x2
    bnez       $a4, .L0000353c
    nop
.L000033a4:
    jal        splhi
    nop
    lw         $a5,8($s0)
    lw         $a5,4($a5)
    sd         $v0,24($sp)
    lhu        $s2,6($s1)
    beq        $a5, $s0, .L000033e4
    lhu        $s3,4($s1)
    andi       $a6,$s3,0x2
    beqz       $a6, .L000033e4
    nop
    jal        pane_validmask
    lw         $a0,80($s1)
    andi       $a7,$s3,0x40
    bnez       $a7, .L00003438
    or         $s2,$v0,$s2
.L000033e4:
    jal        splx
    ld         $a0,24($sp)
    and        $t0,$s3,$s2
    beq        $s3, $t0, .L000032b8
    andi       $t1,$s2,0x10
    bnez       $t1, .L00003408
    move       $a0,$s0
    jal        rrmValidateMyRetrace
    move       $a1,$s1
.L00003408:
    lw         $v0,24($s0)
    lw         $t2,40($v0)
    bne        $t2, $s0, .L000032e0
    li         $a1,537
    move       $a1,$s0
    lw         $a0,80($s1)
    jal        validate_my_pane_resources
    move       $a2,$s3
    bgez       $v0, .L00003274
    andi       $v1,$s3,0x40
    b          .L00003360
    li         $v0,-1
.L00003438:
    jal        pane_validmask
    lw         $a0,84($s1)
    li         $t8,-65
    andi       $t3,$v0,0x40
    and        $s2,$s2,$t8
    b          .L000033e4
    or         $s2,$t3,$s2
.L00003454:
    lw         $a0,84($s1)
    jal        validate_my_pane_resources
    move       $a2,$s3
    bgez       $v0, .L0000327c
    nop
    b          .L00003360
    li         $v0,-1
.L00003470:
    b          .L00003360
    li         $v0,-1
.L00003478:
    jal        us_delay
    li         $a0,2
    lw         $t9,24($s0)
    lw         $t9,60($t9)
    bnez       $t9, .L00003478
    nop
    b          .L00003304
    lw         $a2,4($s0)
.L00003498:
    lw         $ra,52($s0)
    beqz       $ra, .L00003508
    lw         $v0,4($s0)
    andi       $at,$v0,0x8
    bnez       $at, .L0000350c
    andi       $a4,$v0,0x20
    jal        splhi
    nop
    move       $s2,$v0
    lw         $v0,4($s0)
    andi       $v0,$v0,0x20
    beqz       $v0, .L000034d4
    lw         $a2,0($sp)
    b          .L000034d8
    li         $a2,-1
.L000034d4:
    lh         $a2,56($a2)
.L000034d8:
    lw         $a3,20($s0)
    lw         $a3,48($a3)
    move       $a0,$s0
    jalr       $a3
    move       $a1,$s4
    move       $s1,$v0
    jal        splx
    move       $a0,$s2
.L000034f8:
    jal        ddv_unlock
    lw         $a0,28($s0)
    b          .L00003360
    move       $v0,$s1
.L00003508:
    andi       $a4,$v0,0x20
.L0000350c:
    beqz       $a4, .L00003534
    lw         $a2,0($sp)
    li         $a2,-1
.L00003518:
    lw         $a5,20($s0)
    lw         $a5,48($a5)
    move       $a0,$s0
    jalr       $a5
    move       $a1,$s4
    b          .L000034f8
    move       $s1,$v0
.L00003534:
    b          .L00003518
    lh         $a2,56($a2)
.L0000353c:
    jal        curproc
    nop
    jal        proc_pid
    move       $a0,$v0
    move       $a2,$v0
    li         $a0,4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,560
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L00003360
    li         $v0,-1

glabel RRM_CheckValidFault
    lw         $a4,4($a0)
    andi       $at,$a4,0x4
    addiu      $sp,$sp,-16
    beqz       $at, .L000035a4
    andi       $a3,$a4,0x1
.L00003590:
    move       $v0,$zero
    beqz       $a3, .L000035bc
    sd         $ra,0($sp)
.L0000359c:
    jr         $ra
    addiu      $sp,$sp,16
.L000035a4:
    lw         $v0,8($a0)
    lw         $v0,4($v0)
    bnez       $v0, .L00003590
    li         $v0,-1
    b          .L0000359c
    nop
.L000035bc:
    jal        RRM_ValidFault
    move       $a1,$zero
    bltz       $v0, .L000035d4
    ld         $ra,0($sp)
    b          .L0000359c
    move       $v0,$zero
.L000035d4:
    b          .L0000359c
    li         $v0,-1

glabel rrmSwapWait
    addiu      $sp,$sp,-48
    sd         $s1,24($sp)
    sd         $ra,32($sp)
    sd         $s0,16($sp)
    move       $s0,$a0
    jal        splhi
    lw         $s1,52($a0)
    lw         $a6,80($s0)
    lw         $at,100($s1)
    lw         $a6,28($a6)
    addiu      $at,$at,1
    sltu       $at,$at,$a6
    sd         $v0,8($sp)
    beqz       $at, .L0000369c
    addiu      $a5,$s1,104
    lw         $a4,104($s1)
    beqz       $a4, .L00003650
    nop
    b          .L00003640
    lw         $a7,80($a4)
.L0000362c:
    addiu      $a5,$a4,112
    lw         $a4,112($a4)
    beqz       $a4, .L00003650
    nop
    lw         $a7,80($a4)
.L00003640:
    lw         $a7,28($a7)
    sltu       $a7,$a7,$a6
    bnez       $a7, .L0000362c
    nop
.L00003650:
    sw         $a4,112($s0)
    addiu      $a0,$sp,0
    jal        hold_nonfatalsig
    sw         $s0,0($a5)
    addiu      $a0,$s0,40
    li         $a1,30
    addiu      $a2,$s1,28
    jal        sv_wait_sig
    ld         $a3,8($sp)
    bltz       $v0, .L000036ac
    nop
    jal        release_nonfatalsig
    addiu      $a0,$sp,0
    move       $v0,$zero
.L00003688:
    ld         $ra,32($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0000369c:
    jal        splx
    ld         $a0,8($sp)
    b          .L00003688
    move       $v0,$zero
.L000036ac:
    jal        release_nonfatalsig
    addiu      $a0,$sp,0
    b          .L00003688
    li         $v0,-1

glabel RRM_SwapBuf
    addiu      $sp,$sp,-48
    sd         $s3,0($sp)
    sd         $s1,24($sp)
    sd         $s0,16($sp)
    move       $s0,$a1
    sd         $s2,32($sp)
    move       $s2,$a2
    move       $s1,$a0
    lw         $s3,24($a0)
    sd         $ra,8($sp)
    jal        rrmGetResourceMask
    move       $a0,$a1
    andi       $at,$v0,0x8
    beqz       $at, .L00003928
    move       $a0,$s1
    lw         $v0,96($s3)
.L000036fc:
    beqz       $v0, .L00003758
    nop
    lw         $v0,80($s0)
    lw         $v1,24($v0)
    beqz       $v1, .L00003758
    nop
    lw         $a0,100($s3)
    lw         $a1,28($v0)
    addiu      $a0,$a0,1
    sltu       $a0,$a0,$a1
    beqz       $a0, .L00003758
    nop
    jal        rrmSwapWait
    move       $a0,$s0
    beqz       $v0, .L00003758
    li         $v0,4
.L0000373c:
    ld         $s3,0($sp)
    ld         $ra,8($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    ld         $s2,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00003758:
    jal        RRM_CheckValidFault
    move       $a0,$s1
    bltz       $v0, .L0000393c
    nop
    lw         $v0,80($s0)
    lw         $a1,4($v0)
    beqz       $a1, .L000038c0
    nop
.L00003778:
    lw         $a3,20($v0)
    sw         $a3,24($s0)
    lw         $a2,4($s1)
    andi       $a2,$a2,0x8
    beqz       $a2, .L000038d8
    nop
    lh         $a5,18($v0)
    xori       $a5,$a5,0x1
    sh         $a5,18($v0)
    lw         $a4,80($s0)
    lh         $a4,18($a4)
    beqz       $a4, .L00003908
    lw         $a0,8($s2)
    ori        $a0,$a0,0x4
    sw         $a0,8($s2)
.L000037b4:
    lw         $v0,80($s0)
.L000037b8:
    sw         $a0,32($v0)
    lw         $a1,24($s0)
    li         $a6,255
    andi       $a1,$a1,0xff
    beq        $a1, $a6, .L000038f0
    nop
.L000037d0:
    lw         $a2,24($s1)
    lw         $a3,52($a2)
    slt        $a3,$a1,$a3
    beqz       $a3, .L000037f8
    sll        $a6,$a1,0x2
    lw         $a5,56($a2)
    lw         $a4,8($s2)
    addu       $a5,$a5,$a6
    sw         $a4,0($a5)
    lw         $a2,24($s1)
.L000037f8:
    lw         $t0,44($a2)
    addiu      $t0,$t0,1
    sw         $t0,44($a2)
    lw         $a7,80($s0)
    lw         $a7,120($a7)
    bnez       $a7, .L000038b0
    li         $a1,25
    li         $a0,4
.L00003818:
    lw         $a1,16($s0)
    jal        invalidate_pane
    move       $a2,$s1
    lw         $t1,20($s1)
    lw         $t1,68($t1)
    lw         $a3,4($s2)
    lw         $a2,24($s0)
    move       $a1,$s0
    jalr       $t1
    lw         $a0,24($s1)
    lw         $a2,24($s1)
    lw         $a5,44($a2)
    move       $s2,$v0
    beqz       $v0, .L0000387c
    addiu      $a5,$a5,-1
    sw         $a5,44($a2)
    lw         $a0,80($s0)
    jal        validate_pane_buffer
    move       $a1,$s1
    lw         $a6,80($s0)
    lw         $a6,120($a6)
    bnez       $a6, .L000038e0
    nop
.L00003874:
    b          .L0000373c
    move       $v0,$s2
.L0000387c:
    sw         $a5,44($a2)
    lw         $a7,80($s0)
    lw         $a7,120($a7)
    bnez       $a7, .L00003918
    nop
.L00003890:
    jal        rrmUnMapGfx
    move       $a0,$s1
    lw         $t1,0($gp)
    lw         $t0,20($t1)
    move       $v0,$zero
    addiu      $t0,$t0,1
    b          .L0000373c
    sw         $t0,20($t1)
.L000038b0:
    jal        psema
    addiu      $a0,$gp,-30712
    b          .L00003818
    li         $a0,4
.L000038c0:
    lw         $t1,4($s1)
    andi       $t1,$t1,0x8
    beqz       $t1, .L00003778
    nop
    b          .L0000373c
    move       $v0,$zero
.L000038d8:
    b          .L000037b8
    lw         $a0,8($s2)
.L000038e0:
    jal        vsema
    addiu      $a0,$gp,-30712
    b          .L00003874
    nop
.L000038f0:
    lw         $t2,80($s0)
    lw         $t2,120($t2)
    bnez       $t2, .L000037d0
    nop
    b          .L0000373c
    move       $v0,$zero
.L00003908:
    li         $t3,-5
    and        $a0,$a0,$t3
    b          .L000037b4
    sw         $a0,8($s2)
.L00003918:
    jal        vsema
    addiu      $a0,$gp,-30712
    b          .L00003890
    nop
.L00003928:
    move       $a1,$s0
    jal        rrmSetResourceMask
    ori        $a2,$v0,0x8
    b          .L000036fc
    lw         $v0,96($s3)
.L0000393c:
    b          .L0000373c
    li         $v0,14

glabel rrmSwapUnGroup
    lw         $a7,120($a1)
    lw         $a5,4($a7)
    lw         $a4,24($a0)
    addiu      $sp,$sp,-16
    move       $a3,$a1
    beqz       $a5, .L0000396c
    sd         $ra,0($sp)
    lbu        $at,128($a1)
    beqz       $at, .L00003a20
    addiu      $a0,$a5,-1
.L0000396c:
    lw         $a5,124($a1)
    sw         $zero,120($a1)
    beq        $a5, $a1, .L0000398c
    move       $a0,$a5
.L0000397c:
    move       $a3,$a0
    lw         $a0,124($a0)
    bne        $a0, $a1, .L0000397c
    nop
.L0000398c:
    sw         $a5,124($a3)
    lw         $v0,0($a7)
    addiu      $v0,$v0,-1
    bnez       $v0, .L000039c0
    sw         $v0,0($a7)
    lw         $a5,108($a4)
    move       $a3,$zero
    beqz       $a5, .L000039b8
    move       $a1,$zero
    b          .L00003a28
    addiu      $a3,$a3,1
.L000039b8:
    jal        kern_free
    move       $a0,$a7
.L000039c0:
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L000039cc:
    sltu       $v1,$a3,$a5
    beqz       $v1, .L000039b8
    addiu      $a3,$a3,1
    lw         $a6,112($a4)
.L000039dc:
    addu       $a6,$a6,$a1
    lw         $a0,0($a6)
    bne        $a0, $a7, .L000039f4
    addiu      $a1,$a1,4
    sw         $zero,0($a6)
    lw         $a5,108($a4)
.L000039f4:
    sltu       $t0,$a3,$a5
    beqz       $t0, .L000039b8
    addiu      $a3,$a3,1
    lw         $a6,112($a4)
    addu       $a6,$a6,$a1
    lw         $t1,0($a6)
    bne        $t1, $a7, .L000039cc
    addiu      $a1,$a1,4
    sw         $zero,0($a6)
    b          .L000039cc
    lw         $a5,108($a4)
.L00003a20:
    b          .L0000396c
    sw         $a0,4($a7)
.L00003a28:
    b          .L000039dc
    lw         $a6,112($a4)

glabel RRM_SwapUnGroup
    addiu      $sp,$sp,-32
    li         $a1,25
    sd         $s0,16($sp)
    move       $s0,$a2
    sd         $s1,0($sp)
    move       $s1,$a0
    sd         $ra,8($sp)
    jal        psema
    addiu      $a0,$gp,-30712
    lw         $a0,0($s0)
    jal        clip2pane
    move       $a1,$s1
    beqz       $v0, .L00003a74
    li         $s0,2
    lw         $at,120($v0)
    bnez       $at, .L00003a94
    li         $s0,15
.L00003a74:
    ld         $s1,0($sp)
    jal        vsema
    addiu      $a0,$gp,-30712
    ld         $ra,8($sp)
    move       $v0,$s0
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00003a94:
    move       $a0,$s1
    jal        rrmSwapUnGroup
    move       $a1,$v0
    b          .L00003a74
    move       $s0,$zero

glabel RRM_SwapGroup
    addiu      $sp,$sp,-48
    sd         $a2,8($sp)
    sd         $s1,16($sp)
    move       $s1,$a0
    lw         $a0,0($a2)
    sd         $s0,32($sp)
    sd         $ra,24($sp)
    jal        clip2pane
    move       $a1,$s1
    li         $a5,2
    beqz       $v0, .L00003b94
    move       $s0,$v0
    lw         $v0,120($v0)
    bnez       $v0, .L00003b80
    ld         $a0,8($sp)
.L00003ae4:
    lw         $a0,4($a0)
    beqz       $a0, .L00003ba8
    nop
    jal        clip2pane
    move       $a1,$s1
    beqz       $v0, .L00003b9c
    move       $s1,$v0
    li         $a5,15
    lw         $a0,120($v0)
    beqz       $a0, .L00003bd0
    nop
    lw         $a2,60($v0)
    lw         $a1,60($s0)
    beq        $a1, $a2, .L00003b28
    li         $a5,6
    b          .L00003b6c
    ld         $ra,24($sp)
.L00003b28:
    sd         $a0,0($sp)
    li         $a1,25
.L00003b30:
    jal        psema
    addiu      $a0,$gp,-30712
    ld         $a5,0($sp)
    sw         $a5,120($s0)
    lw         $a6,124($s1)
    sb         $zero,128($s0)
    sw         $a6,124($s0)
    sw         $s0,124($s1)
    lw         $a4,0($a5)
    addiu      $a0,$gp,-30712
    addiu      $a4,$a4,1
    jal        vsema
    sw         $a4,0($a5)
    move       $a5,$zero
    ld         $ra,24($sp)
.L00003b6c:
    move       $v0,$a5
    ld         $s0,32($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00003b80:
    move       $a0,$s1
    jal        rrmSwapUnGroup
    move       $a1,$s0
    b          .L00003ae4
    ld         $a0,8($sp)
.L00003b94:
    b          .L00003b6c
    ld         $ra,24($sp)
.L00003b9c:
    li         $a5,9
    b          .L00003b6c
    ld         $ra,24($sp)
.L00003ba8:
    move       $s1,$s0
    sw         $s0,124($s0)
    jal        kern_malloc
    li         $a0,12
    move       $a0,$v0
    sd         $v0,0($sp)
    jal        bzero
    li         $a1,12
    b          .L00003b30
    li         $a1,25
.L00003bd0:
    b          .L00003b6c
    ld         $ra,24($sp)

glabel RRM_SwapReady
    addiu      $sp,$sp,-48
    sd         $s2,0($sp)
    lw         $s2,24($a0)
    lw         $at,4($a2)
    lw         $v0,108($s2)
    sd         $s3,24($sp)
    sd         $s0,8($sp)
    sltu       $at,$at,$v0
    li         $a5,37
    move       $s0,$a0
    sd         $s1,16($sp)
    move       $s1,$a2
    bnez       $at, .L00003c30
    sd         $ra,32($sp)
.L00003c10:
    ld         $s3,24($sp)
.L00003c14:
    ld         $ra,32($sp)
    ld         $s2,0($sp)
    move       $v0,$a5
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00003c30:
    lw         $a0,0($a2)
    jal        clip2pane
    move       $a1,$s0
    li         $a5,2
    beqz       $v0, .L00003cb0
    move       $s3,$v0
    lw         $v1,60($v0)
    beq        $v1, $s2, .L00003c5c
    li         $a5,6
    b          .L00003c14
    ld         $s3,24($sp)
.L00003c5c:
    lw         $v0,120($v0)
    beqz       $v0, .L00003d24
    nop
    lw         $a2,24($s0)
    lw         $a0,40($a2)
    bne        $a0, $s0, .L00003cc0
    li         $a1,537
.L00003c78:
    lw         $a2,8($s1)
    lw         $a3,4($s1)
    lw         $a1,112($s2)
    sll        $a3,$a3,0x2
    addu       $a1,$a1,$a3
    li         $a5,16
    beqz       $a2, .L00003d00
    lw         $a0,0($a1)
    beqz       $a0, .L00003d10
    nop
    bne        $v0, $a0, .L00003cb8
    nop
    b          .L00003c10
    li         $a5,17
.L00003cb0:
    b          .L00003c14
    ld         $s3,24($sp)
.L00003cb8:
    b          .L00003c14
    ld         $s3,24($sp)
.L00003cc0:
    jal        psema
    addiu      $a0,$a2,32
    lw         $a5,24($s0)
    sw         $s0,40($a5)
    lw         $a4,24($s0)
    lw         $a4,60($a4)
    beqz       $a4, .L00003cf8
    nop
.L00003ce0:
    jal        us_delay
    li         $a0,2
    lw         $a6,24($s0)
    lw         $a6,60($a6)
    bnez       $a6, .L00003ce0
    nop
.L00003cf8:
    b          .L00003c78
    lw         $v0,120($s3)
.L00003d00:
    beq        $v0, $a0, .L00003d18
    nop
    b          .L00003c10
    li         $a5,9
.L00003d10:
    b          .L00003d1c
    sw         $v0,0($a1)
.L00003d18:
    sw         $zero,0($a1)
.L00003d1c:
    b          .L00003c10
    move       $a5,$zero
.L00003d24:
    b          .L00003c10
    li         $a5,15

glabel RRM_CushionBuffer
    addiu      $sp,$sp,-32
    sd         $a2,0($sp)
    sd         $s0,8($sp)
    lw         $s0,24($a0)
    sd         $ra,16($sp)
    move       $a1,$a0
    jal        clip2pane
    lw         $a0,0($a2)
    ld         $a0,0($sp)
    ld         $ra,16($sp)
    beqz       $v0, .L00003d68
    li         $a3,2
    lw         $v1,60($v0)
    beq        $v1, $s0, .L00003d78
    li         $a3,6
.L00003d68:
    move       $v0,$a3
.L00003d6c:
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00003d78:
    lw         $a5,116($s0)
    beqz       $a5, .L00003dc0
    li         $a3,19
    lw         $a0,4($a0)
    lbu        $a4,129($v0)
    beqz       $a0, .L00003db0
    li         $a3,16
    beqz       $a4, .L00003da4
    nop
    b          .L00003d6c
    move       $v0,$a3
.L00003da4:
    sb         $a5,129($v0)
.L00003da8:
    b          .L00003d68
    move       $a3,$zero
.L00003db0:
    beqz       $a4, .L00003dc8
    nop
    b          .L00003d68
    li         $a3,2
.L00003dc0:
    b          .L00003d6c
    move       $v0,$a3
.L00003dc8:
    b          .L00003da8
    sb         $zero,129($v0)

glabel RRM_MGR_SwapBuf
    addiu      $sp,$sp,-32
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s0,0($sp)
    sd         $ra,16($sp)
    jal        RRM_CheckValidFault
    move       $s0,$a2
    bltz       $v0, .L00003e8c
    nop
    lw         $v0,24($s1)
    lw         $a2,4($s0)
    lw         $at,52($v0)
    slt        $at,$a2,$at
    beqz       $at, .L00003e20
    sll        $a1,$a2,0x2
    lw         $a0,56($v0)
    lw         $v1,16($s0)
    addu       $a0,$a0,$a1
    sw         $v1,0($a0)
    lw         $a2,4($s0)
.L00003e20:
    lw         $a4,20($s1)
    lw         $a4,84($a4)
    lw         $a1,8($s0)
    lw         $a3,16($s0)
    move       $a0,$s1
    move       $t9, $a4
    jalr       $t9
    lw         $a4,12($s0)
    beqz       $v0, .L00003e5c
    move       $a0,$v0
    negu       $v0,$v0
.L00003e48:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00003e5c:
    lw         $a0,8($s0)
    jal        clip2pane
    move       $a1,$s1
    beqz       $v0, .L00003e84
    nop
    lw         $a5,16($s0)
    andi       $a5,$a5,0x4
    xori       $a5,$a5,0x4
    sltiu      $a5,$a5,1
    sh         $a5,18($v0)
.L00003e84:
    b          .L00003e48
    move       $v0,$zero
.L00003e8c:
    b          .L00003e48
    li         $v0,14

glabel rrmValidateMGRSwapBufSTREAM
    addiu      $sp,$sp,-64
    beqz       $a0, .L00003ed4
    sd         $ra,56($sp)
    lw         $a3,8($a0)
    beqz       $a3, .L00003ed8
    ld         $ra,56($sp)
    sw         $zero,20($sp)
    sw         $zero,16($sp)
    sw         $a1,12($sp)
    li         $v0,3
    sw         $v0,8($sp)
    li         $at,9
    sb         $at,4($sp)
    addiu      $a0,$sp,0
    jal        GfxIntrMessage
    sw         $a3,0($sp)
.L00003ed4:
    ld         $ra,56($sp)
.L00003ed8:
    jr         $ra
    addiu      $sp,$sp,64

glabel rrmValidateMGRSwapBuf
    addiu      $sp,$sp,-16
    move       $a3,$a0
    beqz       $a0, .L00003efc
    move       $a4,$a1
    lw         $at,8($a0)
    bnez       $at, .L00003f04
    sd         $ra,0($sp)
.L00003efc:
    jr         $ra
    addiu      $sp,$sp,16
.L00003f04:
    addiu      $a0,$gp,0
    li         $a2,-100
    move       $a5,$zero
    lui        $a1,0x0
    jal        streams_timeout
    addiu      $a1,$a1,0
    b          .L00003efc
    ld         $ra,0($sp)

glabel rrmGenlockNotifySTREAM
    addiu      $sp,$sp,-64
    beqz       $a0, .L00003f60
    sd         $ra,56($sp)
    lw         $a3,8($a0)
    beqz       $a3, .L00003f64
    ld         $ra,56($sp)
    sw         $a1,16($sp)
    sw         $zero,12($sp)
    li         $v0,2
    sw         $v0,8($sp)
    li         $at,12
    sb         $at,4($sp)
    addiu      $a0,$sp,0
    jal        GfxIntrMessage
    sw         $a3,0($sp)
.L00003f60:
    ld         $ra,56($sp)
.L00003f64:
    jr         $ra
    addiu      $sp,$sp,64

glabel rrmGenlockNotify
    addiu      $sp,$sp,-16
    move       $a3,$a0
    beqz       $a0, .L00003f88
    move       $a4,$a1
    lw         $at,8($a0)
    bnez       $at, .L00003f90
    sd         $ra,0($sp)
.L00003f88:
    jr         $ra
    addiu      $sp,$sp,16
.L00003f90:
    addiu      $a0,$gp,0
    li         $a2,-100
    move       $a5,$zero
    lui        $a1,0x0
    jal        streams_timeout
    addiu      $a1,$a1,0
    b          .L00003f88
    ld         $ra,0($sp)

glabel RRM_WaitForRetrace
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s1,8($sp)
    sd         $ra,16($sp)
    jal        RRM_CheckValidFault
    move       $s1,$a1
    bgez       $v0, .L00003fdc
    move       $a0,$s0
    b          .L00004008
    li         $v0,14
.L00003fdc:
    move       $a1,$s1
    jal        rrmInvalidateRN
    li         $a2,16
    lw         $at,20($s0)
    lw         $at,76($at)
    move       $a1,$s1
    jalr       $at
    lw         $a0,24($s0)
    jal        rrmUnMapGfx
    move       $a0,$s0
    move       $v0,$zero
.L00004008:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel RRM_SetSwapInterval
    lw         $a4,4($a2)
    bltz       $a4, .L0000403c
    li         $v0,22
    sw         $a4,28($a1)
    lw         $v0,80($a1)
    lw         $at,4($a2)
    sw         $at,24($v0)
    move       $v0,$zero
.L0000403c:
    jr         $ra
    nop

glabel RRM_Message
    addiu      $sp,$sp,-112
    sd         $ra,72($sp)
    sd         $s0,64($sp)
    sd         $s2,56($sp)
    move       $s2,$a0
    move       $s0,$a1
    sd         $s1,80($sp)
    move       $s1,$a2
    jal        splhi
    sd         $s5,88($sp)
    lw         $a0,80($s0)
    move       $s5,$v0
    jal        pane_validmask
    sd         $s7,96($sp)
    lhu        $s7,6($s0)
    move       $a0,$s5
    jal        splx
    or         $s7,$v0,$s7
    lw         $a2,4($s1)
    and        $a2,$s7,$a2
    ld         $s5,88($sp)
    beqz       $a2, .L000040c8
    sw         $a2,4($s1)
    move       $a0,$s2
    jal        rrmInvalidateRN
    move       $a1,$s0
    lw         $a1,80($s0)
    lw         $a0,4($s1)
    move       $a2,$s2
    jal        invalidate_pane
    lw         $a1,4($a1)
    jal        rrmUnMapGfx
    move       $a0,$s2
.L000040c8:
    lw         $a0,8($s2)
    lw         $a2,4($a0)
    beqz       $a2, .L00004134
    li         $v0,14
    sw         $a0,0($sp)
    lbu        $a4,8($s1)
    sb         $a4,4($sp)
    lw         $v0,12($s1)
    slti       $a3,$v0,11
    bnez       $a3, .L000040f8
    nop
    li         $v0,10
.L000040f8:
    sll        $a2,$v0,0x2
    addiu      $a1,$sp,12
    addiu      $a0,$s1,16
    jal        bcopy
    sw         $v0,8($sp)
    jal        GfxMessage
    addiu      $a0,$sp,0
    move       $v0,$zero
    ld         $s2,56($sp)
.L0000411c:
    ld         $ra,72($sp)
    ld         $s0,64($sp)
    ld         $s1,80($sp)
    ld         $s7,96($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L00004134:
    b          .L0000411c
    ld         $s2,56($sp)

glabel RRM_SetVideoSync
    lw         $v0,24($a0)
    lw         $at,4($a2)
    sw         $at,80($v0)
    jr         $ra
    move       $v0,$zero

glabel RRM_GetVideoSync
    addiu      $sp,$sp,-16
    lw         $at,24($a0)
    move       $a1,$a3
    sd         $ra,0($sp)
    move       $v0,$a2
    move       $a0,$a2
    lw         $at,80($at)
    sw         $at,4($a2)
    jal        copyout
    li         $a2,8
    beqz       $v0, .L0000418c
    ld         $ra,0($sp)
    li         $v0,14
.L00004184:
    jr         $ra
    addiu      $sp,$sp,16
.L0000418c:
    b          .L00004184
    move       $v0,$zero

glabel RRM_WaitVideoSync
    addiu      $sp,$sp,-32
    sd         $a1,0($sp)
    sd         $a2,8($sp)
    move       $at,$a2
    lw         $a2,4($a2)
    sd         $a3,16($sp)
    sd         $ra,24($sp)
    jal        rrmWaitVideoSync
    lw         $a3,8($at)
    beqz       $v0, .L000041cc
    ld         $a1,16($sp)
.L000041c0:
    ld         $ra,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000041cc:
    ld         $v0,0($sp)
    ld         $v1,8($sp)
    li         $a2,16
    lw         $v0,104($v0)
    move       $a0,$v1
    jal        copyout
    sw         $v0,12($v1)
    beqz       $v0, .L000041f8
    nop
    b          .L000041c0
    li         $v0,14
.L000041f8:
    b          .L000041c0
    move       $v0,$zero

glabel rrmWaitVideoSync
    addiu      $sp,$sp,-64
    sd         $s2,40($sp)
    sd         $s3,16($sp)
    li         $v0,22
    sd         $s1,32($sp)
    move       $s1,$a1
    move       $s3,$a2
    sd         $s0,24($sp)
    move       $s0,$a3
    blez       $a2, .L0000423c
    lw         $s2,24($a0)
    bltz       $a3, .L0000423c
    slt        $at,$a3,$a2
    bnez       $at, .L00004254
    sd         $ra,48($sp)
.L0000423c:
    ld         $s3,16($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    ld         $s2,40($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00004254:
    jal        splhi
    nop
    sw         $zero,108($s1)
    sw         $s0,100($s1)
    sw         $s3,96($s1)
    lw         $a1,84($s2)
    beqz       $a1, .L000042b8
    sd         $v0,8($sp)
    sw         $a1,108($s1)
    sw         $s1,84($s2)
.L0000427c:
    ld         $s0,8($sp)
    jal        hold_nonfatalsig
    addiu      $a0,$sp,0
    addiu      $a0,$s1,40
    li         $a1,30
    addiu      $a2,$s2,28
    jal        sv_wait_sig
    move       $a3,$s0
    bltz       $v0, .L000042c0
    nop
    jal        release_nonfatalsig
    addiu      $a0,$sp,0
    ld         $ra,48($sp)
    b          .L0000423c
    move       $v0,$zero
.L000042b8:
    b          .L0000427c
    sw         $s1,84($s2)
.L000042c0:
    jal        release_nonfatalsig
    addiu      $a0,$sp,0
    ld         $ra,48($sp)
    b          .L0000423c
    li         $v0,-1

glabel rrmValidateVideoSync
    addiu      $sp,$sp,-48
    sd         $s0,24($sp)
    sd         $s2,32($sp)
    sd         $ra,0($sp)
    sd         $s1,8($sp)
    move       $s1,$a0
    jal        splhi
    sd         $s8,40($sp)
    lw         $at,84($s1)
    move       $s8,$v0
    move       $s0,$at
    sd         $s3,16($sp)
    bnez       $at, .L00004324
    move       $s2,$at
    b          .L0000438c
    nop
.L00004314:
    lw         $v0,108($a3)
    move       $s2,$a3
    beqz       $v0, .L0000438c
    move       $s0,$v0
.L00004324:
    lw         $v1,48($s0)
    lw         $v1,4($v1)
    andi       $v1,$v1,0x8
    lw         $a5,96($s0)
    move       $a3,$s0
    beqz       $v1, .L000043a8
    lw         $a6,100($s0)
    lw         $a4,80($s1)
.L00004344:
    divu       $zero,$a4,$a5
    mfhi       $a0
    bne        $a6, $a0, .L00004314
    teq        $a5,$zero,0x7
    lw         $a1,84($s1)
    bne        $a1, $a3, .L00004370
    lw         $a5,108($a3)
    move       $s0,$a5
    sw         $a5,84($s1)
    b          .L00004378
    move       $s2,$a5
.L00004370:
    sw         $a5,108($s2)
    lw         $s0,108($a3)
.L00004378:
    addiu      $a0,$a3,40
    jal        sv_signal
    sw         $a4,104($a3)
    bnez       $s0, .L00004324
    nop
.L0000438c:
    lw         $s3,100($s1)
    lw         $s0,104($s1)
    addiu      $s3,$s3,1
    beqz       $s0, .L000043dc
    move       $s2,$s0
    b          .L000043c8
    lw         $t8,80($s0)
.L000043a8:
    b          .L00004344
    lw         $a4,76($s1)
.L000043b0:
    addiu      $a0,$s2,40
    jal        sv_signal
    sw         $zero,112($s2)
    beqz       $s0, .L000043dc
    move       $s2,$s0
    lw         $t8,80($s0)
.L000043c8:
    lw         $t8,28($t8)
    sltu       $t8,$s3,$t8
    move       $s2,$s0
    beqz       $t8, .L000043b0
    lw         $s0,112($s0)
.L000043dc:
    ld         $s3,16($sp)
    ld         $s0,24($sp)
    sw         $s2,104($s1)
    jal        splx
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s2,32($sp)
    ld         $s1,8($sp)
    ld         $s8,40($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel RRM_MapClipToSwapbufID
    move       $a1,$a0
    lw         $a0,4($a2)
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a2
    sd         $s1,8($sp)
    sd         $ra,16($sp)
    jal        clip2pane
    move       $s1,$a3
    beqz       $v0, .L00004458
    li         $a0,-1
    lw         $at,20($v0)
    bnez       $s1, .L00004460
    sw         $at,8($s0)
.L00004440:
    move       $v0,$zero
.L00004444:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00004458:
    beqz       $s1, .L00004440
    sw         $a0,8($s0)
.L00004460:
    move       $a0,$s0
    move       $a1,$s1
    jal        copyout
    li         $a2,12
    beqz       $v0, .L00004444
    move       $v0,$zero
    b          .L00004444
    li         $v0,14

glabel RRM_Dispatch
    addiu      $sp,$sp,-128
    sd         $s2,88($sp)
    sd         $s3,96($sp)
    sd         $s6,104($sp)
    sd         $ra,112($sp)
    sd         $s0,80($sp)
    move       $v0,$a3
    sd         $s1,72($sp)
    slti       $at,$a1,1000
    move       $s1,$a0
    move       $s0,$a1
    sd         $s4,64($sp)
    move       $s4,$a2
    bnez       $at, .L00004518
    sd         $s5,120($sp)
    slti       $v1,$a1,1100
    beqz       $v1, .L00004518
    lui        $s6,0x0
    addiu      $s6,$s6,0
    sll        $t8,$a1,0x4
    addu       $s6,$s6,$t8
    lw         $a0,-16000($s6)
    beqz       $a0, .L0000451c
    li         $v0,22
    li         $s3,1011
    lw         $a2,-15996($s6)
    beq        $a1, $s3, .L000046fc
    sd         $a3,56($sp)
    li         $t8,1016
    beq        $a1, $t8, .L00004694
    move       $a0,$s4
    move       $a0,$s4
    jal        copyin
    addiu      $a1,$sp,0
    beqz       $v0, .L00004544
    nop
    b          .L0000451c
    li         $v0,14
.L00004518:
    li         $v0,22
.L0000451c:
    ld         $s2,88($sp)
    ld         $s3,96($sp)
    ld         $s6,104($sp)
    ld         $s4,64($sp)
    ld         $ra,112($sp)
    ld         $s1,72($sp)
    ld         $s5,120($sp)
    ld         $s0,80($sp)
    jr         $ra
    addiu      $sp,$sp,128
.L00004544:
    lw         $t9,8($s1)
    lw         $t9,4($t9)
    bne        $t9, $s1, .L00004568
    lw         $s2,-15992($s6)
    beqz       $s2, .L0000456c
    li         $at,1000
    lw         $v0,24($s1)
    lw         $ra,40($v0)
    bne        $ra, $s1, .L00004758
.L00004568:
    li         $at,1000
.L0000456c:
    lw         $a0,0($sp)
    beq        $s0, $at, .L000046ac
    andi       $s5,$a0,0xffff
    li         $v0,1002
    beq        $s0, $v0, .L00004718
    li         $v1,1020
.L00004584:
    beq        $s0, $v1, .L00004740
    li         $a1,1010
    beq        $s0, $a1, .L00004640
    nop
    beq        $s0, $s3, .L00004640
    li         $a2,1004
    beq        $s0, $a2, .L00004640
    li         $a3,1012
    beq        $s0, $a3, .L00004640
    li         $a4,1017
    beq        $s0, $a4, .L00004640
    li         $a5,1013
    beq        $s0, $a5, .L00004640
    li         $a6,1014
    beq        $s0, $a6, .L00004640
    li         $a7,1019
    beq        $s0, $a7, .L00004640
    li         $t0,1018
    beq        $s0, $t0, .L00004640
    andi       $v0,$a0,0xffff
    beqz       $v0, .L0000479c
    lw         $t1,0($gp)
    slt        $t1,$v0,$t1
    beqz       $t1, .L0000479c
    sll        $t8,$v0,0x3
    subu       $t8,$t8,$v0
    sll        $t8,$t8,0x2
    lui        $s3,0x0
    addu       $t8,$t8,$v0
    addiu      $s3,$s3,0
    sll        $t8,$t8,0x2
    addu       $s3,$s3,$t8
    lbu        $t2,58($s3)
    li         $a1,1
    beq        $a1, $t2, .L000047ac
    move       $s0,$s3
    lw         $t9,0($s3)
    bne        $t9, $a0, .L000047ac
    nop
    lw         $ra,8($s1)
    lw         $ra,4($ra)
    beq        $ra, $s1, .L000047bc
    nop
    beqz       $s2, .L00004828
    nop
    b          .L0000451c
    li         $v0,13
.L00004640:
    beqz       $s2, .L00004750
    move       $s0,$zero
.L00004648:
    lw         $v0,24($s1)
    lw         $at,44($v0)
    addiu      $at,$at,1
    sw         $at,44($v0)
.L00004658:
    lw         $v0,-16000($s6)
    move       $a0,$s1
    move       $a1,$s0
    move       $a3,$s4
    ld         $a4,56($sp)
    jalr       $v0
    addiu      $a2,$sp,0
    beqz       $s2, .L000046dc
    move       $s3,$v0
    lw         $a0,24($s1)
    lw         $v1,44($a0)
    addiu      $v1,$v1,-1
    sw         $v1,44($a0)
.L0000468c:
    b          .L0000451c
    move       $v0,$s3
.L00004694:
    jal        copyin
    addiu      $a1,$sp,0
    beqz       $v0, .L00004544
    nop
    b          .L0000451c
    li         $v0,14
.L000046ac:
    li         $a1,-1
    beq        $a0, $a1, .L000046cc
    nop
    beqz       $s5, .L000047a4
    lw         $a2,0($gp)
    slt        $a2,$s5,$a2
    beqz       $a2, .L000047a4
    nop
.L000046cc:
    beqz       $s2, .L00004820
    nop
    b          .L00004648
    move       $s0,$zero
.L000046dc:
    beqz       $s0, .L0000468c
    lui        $a0,0x0
    sll        $a1,$s5,0x3
    addiu      $a0,$a0,0
    jal        vsema
    addu       $a0,$a0,$a1
    b          .L0000468c
    nop
.L000046fc:
    move       $a0,$s4
    jal        copyin
    addiu      $a1,$sp,0
    beqz       $v0, .L00004544
    nop
    b          .L0000451c
    li         $v0,14
.L00004718:
    bnez       $s5, .L00004584
    li         $v1,1020
    lw         $a1,4($s1)
    andi       $a1,$a1,0x8
    beqz       $a1, .L000048c0
    nop
    beqz       $s2, .L0000488c
    nop
    b          .L00004648
    move       $s0,$zero
.L00004740:
    beqz       $s2, .L00004818
    nop
    b          .L00004648
    move       $s0,$zero
.L00004750:
    b          .L00004658
    move       $s0,$zero
.L00004758:
    li         $a1,537
    jal        psema
    addiu      $a0,$v0,32
    lw         $a3,24($s1)
    sw         $s1,40($a3)
    lw         $a2,24($s1)
    lw         $a2,60($a2)
    beqz       $a2, .L0000456c
    li         $at,1000
.L0000477c:
    jal        us_delay
    li         $a0,2
    lw         $a4,24($s1)
    lw         $a4,60($a4)
    bnez       $a4, .L0000477c
    nop
    b          .L0000456c
    li         $at,1000
.L0000479c:
    b          .L0000451c
    li         $v0,22
.L000047a4:
    b          .L0000451c
    li         $v0,22
.L000047ac:
    b          .L0000451c
    li         $v0,22
.L000047b4:
    beqz       $a0, .L000048b8
    nop
.L000047bc:
    bnez       $s2, .L00004648
    nop
    beqz       $s3, .L00004658
    li         $a1,25
    lui        $a0,0x0
    sll        $a2,$v0,0x3
    addiu      $a0,$a0,0
    jal        psema
    addu       $a0,$a0,$a2
    lbu        $a2,58($s3)
    li         $a1,1
    beq        $a1, $a2, .L00004800
    lui        $a0,0x0
    lw         $a3,0($s3)
    lw         $a4,0($sp)
    beq        $a3, $a4, .L00004658
    lui        $a0,0x0
.L00004800:
    sll        $a1,$s5,0x3
    addiu      $a0,$a0,0
    jal        vsema
    addu       $a0,$a0,$a1
    b          .L0000451c
    li         $v0,22
.L00004818:
    b          .L00004658
    move       $s0,$zero
.L00004820:
    b          .L00004658
    move       $s0,$zero
.L00004828:
    lw         $a1,4($s1)
    andi       $a1,$a1,0x8
    beqz       $a1, .L00004894
    nop
    lw         $a0,44($s3)
    beqz       $a0, .L000048c8
    nop
    lw         $a2,4($a0)
    andi       $a2,$a2,0x8
    beqz       $a2, .L00004864
    nop
    lw         $a3,24($a0)
    lw         $a4,24($s1)
    beq        $a3, $a4, .L0000486c
    nop
.L00004864:
    b          .L0000451c
    li         $v0,13
.L0000486c:
    lbu        $a5,60($s3)
    beqz       $a5, .L000047bc
    nop
    lw         $a6,48($s3)
    beq        $a6, $s1, .L000047bc
    nop
    b          .L0000451c
    li         $v0,13
.L0000488c:
    b          .L00004658
    move       $s0,$zero
.L00004894:
    lw         $a0,36($s1)
    beqz       $a0, .L000048b8
    nop
.L000048a0:
    lw         $a7,0($a0)
    beq        $a7, $s3, .L000047b4
    nop
    lw         $a0,4($a0)
    bnez       $a0, .L000048a0
    nop
.L000048b8:
    b          .L0000451c
    li         $v0,13
.L000048c0:
    b          .L0000451c
    li         $v0,22
.L000048c8:
    b          .L0000451c
    li         $v0,22
