.section .text
.set noat
.set noreorder


glabel gfxtable_readerlock
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    lw         $at,0($s8)
    move       $a0,$v0
    addiu      $at,$at,1
    jal        splx
    sw         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel gfxtable_readerunlock
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    lw         $at,0($s8)
    move       $a0,$v0
    addiu      $at,$at,-1
    jal        splx
    sw         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel gfxtable_writerlock
    addiu      $sp,$sp,-32
    sd         $ra,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    jal        splhi
    sd         $s1,24($sp)
    lw         $at,0($s0)
    move       $a0,$v0
    blez       $at, .L000000c8
    li         $s1,1000
.L00000098:
    jal        splx
    nop
    sw         $s1,4($sp)
    addiu      $a0,$sp,0
    jal        nano_delay
    sw         $zero,0($sp)
    jal        splhi
    nop
    move       $a0,$v0
    lw         $v0,0($s0)
    bgtz       $v0, .L00000098
    nop
.L000000c8:
    ld         $ra,16($sp)
    move       $v0,$a0
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel gfxtable_writerunlock
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        splx
    move       $a0,$a1
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel init_gfx_group_table
    lw         $at,0($gp)
    addiu      $sp,$sp,-16
    beqz       $at, .L00000114
    sd         $ra,0($sp)
.L0000010c:
    jr         $ra
    addiu      $sp,$sp,16
.L00000114:
    jal        kern_malloc
    li         $a0,64
    move       $a3,$v0
    beqz       $v0, .L00000184
    sw         $v0,0($gp)
.L00000128:
    sdl        $zero,0($a3)
    sdr        $zero,7($a3)
    sdl        $zero,8($a3)
    sdr        $zero,15($a3)
    sdl        $zero,16($a3)
    sdr        $zero,23($a3)
    sdl        $zero,24($a3)
    sdr        $zero,31($a3)
    sdl        $zero,32($a3)
    sdr        $zero,39($a3)
    sdl        $zero,40($a3)
    sdr        $zero,47($a3)
    sdl        $zero,48($a3)
    sdr        $zero,55($a3)
    addiu      $a0,$gp,4
    sdl        $zero,56($a3)
    lui        $a1,0x0
    sdr        $zero,63($a3)
    jal        spinlock_init
    addiu      $a1,$a1,48
    ld         $ra,0($sp)
    b          .L0000010c
    sw         $zero,0($gp)
.L00000184:
    move       $a0,$zero
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,0
    b          .L00000128
    lw         $a3,0($gp)

glabel gfx_group_find
    addiu      $sp,$sp,-32
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    jal        threadhandle_to_threadgrouphandle
    sd         $s1,24($sp)
    andi       $a2,$v0,0xf
    srl        $a3,$v0,0xc
    move       $s1,$v0
    beqz       $a2, .L00000248
    sd         $s2,16($sp)
    move       $s2,$a2
.L000001c8:
    jal        gfxtable_readerlock
    addiu      $a0,$gp,0
    lw         $s0,0($gp)
    sll        $t8,$s2,0x2
    addu       $s0,$s0,$t8
    lw         $s0,0($s0)
    beqz       $s0, .L00000228
    ld         $s2,16($sp)
    lw         $t9,0($s0)
    beq        $t9, $s1, .L00000228
    ld         $s2,16($sp)
.L000001f4:
    lw         $s0,16($s0)
    beqz       $s0, .L00000224
    nop
    lw         $ra,0($s0)
    beq        $ra, $s1, .L00000224
    nop
    lw         $s0,16($s0)
    beqz       $s0, .L00000224
    nop
    lw         $at,0($s0)
    bne        $at, $s1, .L000001f4
    nop
.L00000224:
    ld         $s2,16($sp)
.L00000228:
    ld         $s1,24($sp)
    jal        gfxtable_readerunlock
    addiu      $a0,$gp,0
    ld         $ra,0($sp)
    move       $v0,$s0
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000248:
    b          .L000001c8
    andi       $s2,$a3,0xf

glabel gfx_group_create
    addiu      $sp,$sp,-32
    sd         $s0,24($sp)
    sd         $a0,8($sp)
    sd         $ra,16($sp)
    jal        kern_malloc
    li         $a0,20
    bnez       $v0, .L00000278
    move       $s0,$v0
    b          .L000002e8
    move       $s0,$zero
.L00000278:
    jal        threadhandle_to_threadgrouphandle
    ld         $a0,8($sp)
    addiu      $a0,$s0,12
    sw         $zero,4($s0)
    lui        $a1,0x0
    sw         $v0,0($s0)
    jal        spinlock_init
    addiu      $a1,$a1,56
    lw         $a0,0($s0)
    andi       $v0,$a0,0xf
    sw         $zero,8($s0)
    beqz       $v0, .L000002fc
    srl        $a0,$a0,0xc
    sd         $v0,0($sp)
.L000002b0:
    jal        gfxtable_writerlock
    addiu      $a0,$gp,0
    ld         $a3,0($sp)
    lw         $a4,0($gp)
    sll        $a3,$a3,0x2
    addu       $a4,$a4,$a3
    lw         $a4,0($a4)
    sw         $a4,16($s0)
    lw         $a2,0($gp)
    move       $a1,$v0
    addu       $a2,$a2,$a3
    addiu      $a0,$gp,0
    jal        gfxtable_writerunlock
    sw         $s0,0($a2)
.L000002e8:
    ld         $ra,16($sp)
    move       $v0,$s0
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000002fc:
    andi       $a4,$a0,0xf
    b          .L000002b0
    sd         $a4,0($sp)

glabel gfx_group_destroy
    addiu      $sp,$sp,-32
    lw         $a1,0($a0)
    sd         $a0,0($sp)
    sd         $ra,24($sp)
    andi       $v0,$a1,0xf
    sd         $s0,8($sp)
    sd         $s1,16($sp)
    beqz       $v0, .L000003cc
    srl        $a1,$a1,0xc
    move       $s1,$v0
.L00000330:
    jal        gfxtable_writerlock
    addiu      $a0,$gp,0
    lw         $a4,0($gp)
    sll        $a5,$s1,0x2
    addu       $a4,$a4,$a5
    lw         $a0,0($a4)
    beqz       $a0, .L0000037c
    ld         $a5,0($sp)
    lw         $a5,0($a5)
    lw         $a6,0($a0)
    beq        $a6, $a5, .L0000037c
    nop
.L00000360:
    addiu      $a4,$a0,16
    lw         $a0,16($a0)
    beqz       $a0, .L00000394
    move       $s0,$zero
    lw         $a6,0($a0)
    bne        $a6, $a5, .L00000360
    nop
.L0000037c:
    beqz       $a0, .L00000390
    move       $s0,$a0
    lw         $a7,16($a0)
    b          .L00000394
    sw         $a7,0($a4)
.L00000390:
    move       $s0,$zero
.L00000394:
    addiu      $a0,$gp,0
    jal        gfxtable_writerunlock
    move       $a1,$v0
    beqz       $s0, .L000003bc
    ld         $ra,24($sp)
    jal        spinlock_destroy
    addiu      $a0,$s0,12
    jal        kern_free
    move       $a0,$s0
    ld         $ra,24($sp)
.L000003bc:
    ld         $s1,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000003cc:
    b          .L00000330
    andi       $s1,$a1,0xf

glabel init_gthread_table
    addiu      $sp,$sp,-32
    lw         $at,0($gp)
    sd         $ra,0($sp)
    sd         $s0,8($sp)
    beqz       $at, .L00000400
    sd         $s1,16($sp)
    ld         $ra,0($sp)
.L000003f0:
    ld         $s1,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000400:
    jal        kern_malloc
    li         $a0,192
    move       $a0,$v0
    beqz       $v0, .L00000460
    sw         $v0,0($gp)
.L00000414:
    jal        bzero
    li         $a1,192
    move       $s0,$zero
    move       $s1,$zero
.L00000424:
    lw         $a0,0($gp)
    lui        $a1,0x0
    addiu      $a1,$a1,48
    addu       $a0,$a0,$s0
    jal        spinlock_init
    addiu      $a0,$a0,4
    lw         $a2,0($gp)
    addiu      $s1,$s1,1
    slti       $a3,$s1,16
    addu       $a2,$a2,$s0
    addiu      $s0,$s0,12
    bnez       $a3, .L00000424
    sw         $zero,0($a2)
    b          .L000003f0
    ld         $ra,0($sp)
.L00000460:
    move       $a0,$zero
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,64
    b          .L00000414
    lw         $a0,0($gp)

glabel gthread_create
    addiu      $sp,$sp,-32
    sd         $s0,24($sp)
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $ra,16($sp)
    jal        kern_malloc
    li         $a0,20
    bnez       $v0, .L000004a4
    move       $s0,$v0
    b          .L0000054c
    move       $s0,$zero
.L000004a4:
    sw         $s1,0($v0)
    sw         $zero,4($v0)
    sw         $zero,8($v0)
    sw         $zero,12($v0)
    jal        gfx_group_find
    move       $a0,$s1
    bnez       $v0, .L00000564
    srl        $a6,$s1,0x8
.L000004c4:
    andi       $a6,$a6,0xff
    sll        $a5,$a6,0x3
    srl        $a4,$s1,0x10
    subu       $a5,$a5,$a6
    sll        $a5,$a5,0x2
    andi       $a4,$a4,0xff
    addu       $a5,$a5,$a6
    xor        $a4,$a4,$a5
    sll        $a3,$a4,0x3
    subu       $a3,$a3,$a4
    sll        $a3,$a3,0x2
    srl        $a2,$s1,0x18
    addu       $a3,$a3,$a4
    xor        $a2,$a2,$a3
    andi       $a2,$a2,0xf
    sll        $a1,$a2,0x2
    lw         $a0,0($gp)
    subu       $a1,$a1,$a2
    sll        $a1,$a1,0x2
    sd         $a1,0($sp)
    jal        gfxtable_writerlock
    addu       $a0,$a0,$a1
    ld         $a2,0($sp)
    lw         $a4,0($gp)
    addu       $a4,$a4,$a2
    lw         $a4,8($a4)
    sw         $a4,16($s0)
    lw         $a3,0($gp)
    addu       $a3,$a3,$a2
    sw         $s0,8($a3)
    lw         $a0,0($gp)
    move       $a1,$v0
    jal        gfxtable_writerunlock
    addu       $a0,$a0,$a2
.L0000054c:
    ld         $ra,16($sp)
    ld         $s1,8($sp)
    move       $v0,$s0
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000564:
    move       $a0,$s0
    jal        gthread_attach_group
    move       $a1,$v0
    b          .L000004c4
    srl        $a6,$s1,0x8

glabel gthread_destroy
    srl        $v0,$a0,0x8
    andi       $v0,$v0,0xff
    addiu      $sp,$sp,-32
    sll        $at,$v0,0x3
    sd         $ra,8($sp)
    srl        $ra,$a0,0x10
    subu       $at,$at,$v0
    sll        $at,$at,0x2
    andi       $ra,$ra,0xff
    addu       $at,$at,$v0
    xor        $ra,$ra,$at
    sll        $t9,$ra,0x3
    subu       $t9,$t9,$ra
    sll        $t9,$t9,0x2
    srl        $t8,$a0,0x18
    addu       $t9,$t9,$ra
    xor        $t8,$t8,$t9
    sd         $s0,0($sp)
    andi       $t8,$t8,0xf
    sd         $s1,16($sp)
    sll        $s1,$t8,0x2
    move       $s0,$a0
    lw         $a0,0($gp)
    subu       $s1,$s1,$t8
    sll        $s1,$s1,0x2
    jal        gfxtable_writerlock
    addu       $a0,$a0,$s1
    lw         $a5,0($gp)
    addu       $a5,$a5,$s1
    lw         $a0,8($a5)
    move       $a1,$v0
    beqz       $a0, .L00000624
    addiu      $a4,$a5,8
    lw         $a6,0($a0)
    beq        $a6, $s0, .L00000624
    nop
.L00000608:
    addiu      $a4,$a0,16
    lw         $a0,16($a0)
    beqz       $a0, .L00000640
    nop
    lw         $a7,0($a0)
    bne        $a7, $s0, .L00000608
    nop
.L00000624:
    beqz       $a0, .L00000640
    move       $s0,$a0
    lw         $a6,16($a0)
    sw         $a6,0($a4)
    lw         $a5,0($gp)
    b          .L00000644
    addu       $a5,$a5,$s1
.L00000640:
    move       $s0,$zero
.L00000644:
    jal        gfxtable_writerunlock
    move       $a0,$a5
    beqz       $s0, .L00000660
    ld         $ra,8($sp)
    jal        kern_free
    move       $a0,$s0
    ld         $ra,8($sp)
.L00000660:
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel gthread_attach_list
    addiu      $sp,$sp,-32
    sd         $a0,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a1
    beqz       $a1, .L000006ac
    sd         $ra,24($sp)
    lw         $at,0($a1)
    addiu      $at,$at,1
    sw         $at,0($a1)
.L00000694:
    li         $v0,1
    sw         $s0,8($a0)
.L0000069c:
    ld         $ra,24($sp)
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000006ac:
    jal        kern_malloc
    li         $a0,20
    move       $s0,$v0
    bnez       $v0, .L000006c8
    sd         $v0,0($sp)
    b          .L0000069c
    move       $v0,$zero
.L000006c8:
    ld         $a5,0($sp)
    li         $a3,-1
    move       $a1,$zero
    lui        $a2,0x0
    sw         $zero,4($a5)
    li         $a4,1
    addiu      $a2,$a2,112
    sw         $zero,16($a5)
    addiu      $a0,$a5,8
    jal        init_sv
    sw         $a4,0($a5)
    lui        $a1,0x0
    ld         $a0,0($sp)
    addiu      $a1,$a1,120
    jal        spinlock_init
    addiu      $a0,$a0,12
    b          .L00000694
    ld         $a0,16($sp)

glabel gthread_detach_list
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    lw         $s0,8($a0)
    sw         $zero,8($a0)
    lw         $at,0($s0)
    addiu      $at,$at,-1
    sd         $ra,8($sp)
    beqz       $at, .L00000744
    sw         $at,0($s0)
.L00000734:
    li         $v0,1
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L00000744:
    jal        spinlock_destroy
    addiu      $a0,$s0,12
    jal        sv_destroy
    addiu      $a0,$s0,8
    jal        kern_free
    move       $a0,$s0
    b          .L00000734
    ld         $ra,8($sp)

glabel gthread_attach_group
    addiu      $sp,$sp,-32
    sd         $s8,8($sp)
    move       $s8,$a0
    sd         $s0,16($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s0,$a1
    lw         $at,4($s0)
    move       $a0,$v0
    addiu      $at,$at,1
    jal        splx
    sw         $at,4($s0)
    ld         $ra,0($sp)
    sw         $s0,12($s8)
    li         $v0,1
    ld         $s0,16($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel gthread_detach_group
    lw         $at,12($a0)
    addiu      $sp,$sp,-16
    sd         $at,0($sp)
    move       $v0,$zero
    bnez       $at, .L000007d0
    sd         $ra,8($sp)
    b          .L000007f8
    nop
.L000007d0:
    jal        splhi
    sw         $zero,12($a0)
    ld         $v1,0($sp)
    move       $a0,$v0
    lw         $v0,4($v1)
    addiu      $v0,$v0,-1
    jal        splx
    sw         $v0,4($v1)
    ld         $ra,8($sp)
    li         $v0,1
.L000007f8:
    jr         $ra
    addiu      $sp,$sp,16

glabel gthread_find
    srl        $v0,$a0,0x8
    andi       $v0,$v0,0xff
    addiu      $sp,$sp,-32
    sll        $at,$v0,0x3
    sd         $ra,16($sp)
    srl        $ra,$a0,0x10
    subu       $at,$at,$v0
    sll        $at,$at,0x2
    andi       $ra,$ra,0xff
    addu       $at,$at,$v0
    xor        $ra,$ra,$at
    sll        $t9,$ra,0x3
    subu       $t9,$t9,$ra
    sll        $t9,$t9,0x2
    srl        $t8,$a0,0x18
    addu       $t9,$t9,$ra
    xor        $t8,$t8,$t9
    sd         $s1,0($sp)
    andi       $t8,$t8,0xf
    sd         $s5,8($sp)
    sll        $s5,$t8,0x2
    move       $s1,$a0
    lw         $a0,0($gp)
    subu       $s5,$s5,$t8
    sll        $s5,$s5,0x2
    sd         $s0,24($sp)
    jal        gfxtable_readerlock
    addu       $a0,$a0,$s5
    lw         $a0,0($gp)
    addu       $a0,$a0,$s5
    lw         $s0,8($a0)
    beqz       $s0, .L000008c0
    nop
    lw         $a1,0($s0)
    beq        $a1, $s1, .L000008c0
    nop
.L00000890:
    lw         $s0,16($s0)
    beqz       $s0, .L000008c0
    nop
    lw         $a2,0($s0)
    beq        $a2, $s1, .L000008c0
    nop
    lw         $s0,16($s0)
    beqz       $s0, .L000008c0
    nop
    lw         $a3,0($s0)
    bne        $a3, $s1, .L00000890
    nop
.L000008c0:
    ld         $s1,0($sp)
    jal        gfxtable_readerunlock
    ld         $s5,8($sp)
    ld         $ra,16($sp)
    move       $v0,$s0
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel gthread_find_gfxp
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        gthread_find
    nop
    beqz       $v0, .L00000910
    ld         $ra,0($sp)
    lw         $a2,8($v0)
    beqz       $a2, .L00000910
    nop
    lw         $v0,16($a2)
.L00000908:
    jr         $ra
    addiu      $sp,$sp,16
.L00000910:
    b          .L00000908
    move       $v0,$zero

glabel gthread_scan
    addiu      $sp,$sp,-64
    sd         $a1,16($sp)
    move       $at,$a0
    move       $a2,$zero
    sd         $a0,8($sp)
    sd         $ra,24($sp)
    jalr       $at
    move       $a0,$zero
    sd         $s2,32($sp)
    sd         $s0,40($sp)
    move       $a0,$zero
    beqz       $v0, .L00000968
    sd         $s1,48($sp)
.L0000094c:
    ld         $ra,24($sp)
    ld         $s2,32($sp)
    move       $v0,$a0
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00000968:
    move       $s0,$zero
    move       $s1,$zero
.L00000970:
    lw         $a0,0($gp)
    jal        gfxtable_readerlock
    addu       $a0,$a0,$s0
    addiu      $s1,$s1,1
    slti       $a1,$s1,16
    bnez       $a1, .L00000970
    addiu      $s0,$s0,12
    move       $s2,$zero
    move       $s1,$zero
    lw         $s0,0($gp)
.L00000998:
    addu       $s0,$s0,$s1
    lw         $s0,8($s0)
    beqz       $s0, .L000009c4
    nop
.L000009a8:
    lw         $t8,4($s0)
    andi       $t8,$t8,0x4
    beqz       $t8, .L00000a18
    ld         $a3,8($sp)
    lw         $s0,16($s0)
    bnez       $s0, .L000009a8
    nop
.L000009c4:
    addiu      $s2,$s2,1
.L000009c8:
    slti       $t9,$s2,16
    lw         $s0,0($gp)
    bnez       $t9, .L00000998
    addiu      $s1,$s1,12
    move       $s1,$zero
    move       $s0,$zero
.L000009e0:
    lw         $a0,0($gp)
    jal        gfxtable_readerunlock
    addu       $a0,$a0,$s0
    addiu      $s1,$s1,1
    slti       $a1,$s1,16
    bnez       $a1, .L000009e0
    addiu      $s0,$s0,12
    ld         $a2,8($sp)
    move       $a0,$zero
    ld         $a1,16($sp)
    move       $t9, $a2
    jalr       $t9
    li         $a2,2
    b          .L0000094c
    move       $a0,$v0
.L00000a18:
    move       $a0,$s0
    ld         $a1,16($sp)
    jalr       $a3
    li         $a2,1
    beqz       $v0, .L00000a60
    nop
    move       $s1,$zero
    move       $s0,$zero
    sd         $v0,0($sp)
.L00000a3c:
    lw         $a0,0($gp)
    jal        gfxtable_readerunlock
    addu       $a0,$a0,$s0
    addiu      $s1,$s1,1
    slti       $a1,$s1,16
    bnez       $a1, .L00000a3c
    addiu      $s0,$s0,12
    b          .L0000094c
    ld         $a0,0($sp)
.L00000a60:
    lw         $s0,16($s0)
    bnez       $s0, .L000009a8
    nop
    b          .L000009c8
    addiu      $s2,$s2,1

glabel GfxRegisterBoard
    lw         $v0,0($gp)
    addiu      $sp,$sp,-32
    lw         $at,0($gp)
    sd         $a0,0($sp)
    sd         $a1,8($sp)
    slt        $at,$at,$v0
    sd         $a2,16($sp)
    beqz       $at, .L00000b5c
    sd         $ra,24($sp)
    jal        kern_malloc
    li         $a0,36
    lw         $t1,0($gp)
    lui        $a2,0x0
    addiu      $a2,$a2,0
    sll        $t1,$t1,0x2
    addu       $t1,$a2,$t1
    sw         $v0,0($t1)
    sdl        $zero,0($v0)
    sdr        $zero,7($v0)
    sdl        $zero,8($v0)
    sdr        $zero,15($v0)
    sdl        $zero,16($v0)
    sdr        $zero,23($v0)
    sdl        $zero,24($v0)
    sdr        $zero,31($v0)
    swl        $zero,32($v0)
    swr        $zero,35($v0)
    lw         $t0,0($gp)
    sll        $t0,$t0,0x2
    addu       $t0,$a2,$t0
    lw         $t0,0($t0)
    ld         $a7,0($sp)
    sw         $a7,28($t0)
    lw         $a6,0($gp)
    sll        $a6,$a6,0x2
    addu       $a6,$a2,$a6
    lw         $a6,0($a6)
    ld         $a0,8($sp)
    sw         $a0,32($a6)
    lw         $a5,0($gp)
    sll        $a5,$a5,0x2
    addu       $a5,$a2,$a5
    lw         $a5,0($a5)
    ld         $a4,16($sp)
    sw         $a4,0($a5)
    lw         $a1,0($gp)
    sll        $a3,$a1,0x2
    addu       $a2,$a2,$a3
    lw         $a2,0($a2)
    sw         $a1,12($a2)
    lw         $v1,0($gp)
    addiu      $v1,$v1,1
    jal        RRM_Init
    sw         $v1,0($gp)
    move       $v0,$zero
.L00000b50:
    ld         $ra,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000b5c:
    li         $a0,4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,128
    b          .L00000b50
    li         $v0,-1

glabel GfxAddHwgraphEdge
    lui        $a2,0x0
    lw         $at,0($a2)
    addiu      $sp,$sp,-32
    lw         $at,32($at)
    sd         $s1,8($sp)
    move       $s1,$a0
    addiu      $a2,$a2,0
    sd         $s0,16($sp)
    move       $s0,$zero
    beq        $at, $a1, .L00000be0
    sd         $ra,24($sp)
    move       $s0,$zero
.L00000ba4:
    lw         $v0,4($a2)
    lw         $v0,32($v0)
    addiu      $s0,$s0,1
    beq        $v0, $a1, .L00000be0
    nop
    lw         $v1,8($a2)
    lw         $v1,32($v1)
    addiu      $s0,$s0,1
    beq        $v1, $a1, .L00000be0
    nop
    lw         $a0,12($a2)
    lw         $a0,32($a0)
    addiu      $a2,$a2,12
    bne        $a0, $a1, .L00000ba4
    addiu      $s0,$s0,1
.L00000be0:
    move       $a1,$s1
    move       $a3,$zero
    move       $a4,$s0
    lui        $a2,0x0
    lw         $a0,0($gp)
    jal        graph_info_add_LBL
    addiu      $a2,$a2,160
    lw         $a3,-30704($gp)
    li         $a4,-1
    beq        $a3, $a4, .L00000c44
    addiu      $a2,$gp,-30704
    addiu      $a0,$sp,0
.L00000c10:
    move       $a2,$s0
    lui        $a1,0x0
    jal        sprintf
    addiu      $a1,$a1,172
    ld         $s0,16($sp)
    addiu      $a2,$sp,0
    move       $a1,$s1
    jal        hwgraph_edge_add
    lw         $a0,-30704($gp)
    ld         $ra,24($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000c44:
    lui        $a1,0x0
    lw         $a0,0($gp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,168
    b          .L00000c10
    addiu      $a0,$sp,0

glabel gfx_disp
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    jal        gthread_find
    sd         $s2,8($sp)
    move       $s2,$v0
    sd         $s0,16($sp)
    move       $s0,$zero
    beqz       $v0, .L00000c90
    sd         $s1,24($sp)
    lw         $v0,8($v0)
    beqz       $v0, .L00000c90
    nop
    lw         $s0,16($v0)
.L00000c90:
    beqz       $s0, .L00000d30
    nop
    b          .L00000cdc
    lw         $s1,24($s0)
.L00000ca0:
    jalr       $v0
    move       $a0,$s1
    beqz       $v0, .L00000cfc
    nop
.L00000cb0:
    lw         $v0,12($s2)
    beqz       $v0, .L00000ccc
    nop
    lw         $at,4($s0)
    andi       $at,$at,0x8
    beqz       $at, .L00000d38
    nop
.L00000ccc:
    lw         $s0,16($s0)
.L00000cd0:
    beqz       $s0, .L00000d30
    nop
    lw         $s1,24($s0)
.L00000cdc:
    beqz       $s1, .L00000ccc
    nop
    lw         $v0,60($s1)
    blez       $v0, .L00000cb0
    nop
    lw         $v0,68($s1)
    bnez       $v0, .L00000ca0
    nop
.L00000cfc:
    lw         $v1,4($s0)
    andi       $v1,$v1,0x3
    bnez       $v1, .L00000d18
    move       $v0,$zero
    lw         $a0,40($s1)
    bne        $a0, $s0, .L00000cb0
    move       $v0,$zero
.L00000d18:
    ld         $ra,0($sp)
    ld         $s2,8($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000d30:
    b          .L00000d18
    li         $v0,1
.L00000d38:
    lw         $a1,40($s1)
    bne        $a1, $s0, .L00000ccc
    nop
    lw         $a2,44($s1)
    bnez       $a2, .L00000ccc
    nop
    lw         $a3,4($s2)
    andi       $a3,$a3,0x4
    bnez       $a3, .L00000ccc
    nop
    lw         $a4,72($s1)
    bnez       $a4, .L00000ccc
    nop
    lw         $a5,8($v0)
    beqz       $a5, .L00000ccc
    nop
    jal        valusema
    addiu      $a0,$s1,32
    bgezl      $v0, .L00000cd0
    lw         $s0,16($s0)
    b          .L00000d18
    move       $v0,$zero

glabel gfx_fault
    addiu      $sp,$sp,-48
    sd         $ra,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a1
    jal        curthreadhandle
    sd         $a2,0($sp)
    move       $a0,$v0
    jal        gthread_find
    sd         $s1,32($sp)
    li         $a0,1
    beqz       $v0, .L00000e24
    move       $s1,$v0
    lw         $at,12($v0)
    beqz       $at, .L00000dd8
    lw         $a0,4($s0)
    andi       $v0,$a0,0x8
    beqz       $v0, .L00000e48
    li         $a1,25
.L00000dd8:
    andi       $v1,$a0,0x1
    beqz       $v1, .L00000df8
    move       $a0,$s0
    lw         $a1,20($s0)
    lw         $a1,56($a1)
    jalr       $a1
    move       $a0,$s0
    move       $a0,$s0
.L00000df8:
    jal        RRM_ValidFault
    ld         $a1,0($sp)
    lw         $a2,12($s1)
    beqz       $a2, .L00000e1c
    nop
    lw         $a3,4($s0)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00000e58
    sd         $v0,24($sp)
.L00000e1c:
    bltz       $v0, .L00000e3c
    move       $a0,$zero
.L00000e24:
    ld         $ra,16($sp)
.L00000e28:
    move       $v0,$a0
    ld         $s0,8($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00000e3c:
    li         $a0,1
    b          .L00000e28
    ld         $ra,16($sp)
.L00000e48:
    jal        psema
    addiu      $a0,$s0,44
    b          .L00000dd8
    lw         $a0,4($s0)
.L00000e58:
    jal        vsema
    addiu      $a0,$s0,44
    b          .L00000e1c
    ld         $v0,24($sp)

glabel gfx_exit
    addiu      $sp,$sp,-48
    sd         $ra,16($sp)
    jal        curthreadhandle
    nop
    move       $a0,$v0
    jal        gthread_find
    sd         $s1,32($sp)
    move       $s1,$v0
    beqz       $v0, .L00000f50
    sd         $s0,24($sp)
    lw         $v0,12($v0)
    lw         $at,4($s1)
    lw         $a0,8($s1)
    ori        $at,$at,0x4
    beqz       $v0, .L00000ee8
    sw         $at,4($s1)
    beqz       $a0, .L00000f90
    move       $v0,$zero
    jal        GfxListReaderLock
    nop
    lw         $a0,8($s1)
    lw         $s0,16($a0)
    beqz       $s0, .L00000ed8
    nop
    lw         $v0,4($s0)
    andi       $v0,$v0,0x8
    beqz       $v0, .L00000f58
    nop
.L00000ed8:
    jal        GfxListReaderUnlock
    nop
    b          .L00000f3c
    move       $v0,$zero
.L00000ee8:
    beqz       $a0, .L00000ef4
    move       $s0,$zero
    lw         $s0,16($a0)
.L00000ef4:
    bnezl      $s0, .L00000f1c
    lw         $v0,20($s0)
    b          .L00000f3c
    move       $v0,$zero
.L00000f04:
    jalr       $a3
    move       $a0,$s0
    lw         $s0,16($s0)
    beqz       $s0, .L00000f3c
    move       $v0,$zero
.L00000f18:
    lw         $v0,20($s0)
.L00000f1c:
    beqz       $v0, .L00000f30
    nop
    lw         $a3,28($v0)
    bnez       $a3, .L00000f04
    nop
.L00000f30:
    lw         $s0,16($s0)
    bnez       $s0, .L00000f18
    move       $v0,$zero
.L00000f3c:
    ld         $ra,16($sp)
.L00000f40:
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00000f50:
    b          .L00000f3c
    move       $v0,$zero
.L00000f58:
    jal        splhi
    nop
    sd         $v0,8($sp)
    jal        threadgroup_refcnt
    lw         $a0,0($s1)
    li         $v1,1
    beq        $v0, $v1, .L00000fa4
    nop
.L00000f78:
    jal        splx
    ld         $a0,8($sp)
    jal        GfxListReaderUnlock
    lw         $a0,8($s1)
    b          .L00000f3c
    move       $v0,$zero
.L00000f90:
    b          .L00000f40
    ld         $ra,16($sp)
.L00000f98:
    lw         $s0,16($s0)
    beqz       $s0, .L00000f78
    nop
.L00000fa4:
    lw         $a3,24($s0)
    beqz       $a3, .L00000f98
    nop
    lw         $a0,40($a3)
    bne        $a0, $s0, .L00000f98
    nop
    jal        splhi
    nop
    lw         $a3,20($s0)
    lw         $a3,96($a3)
    beqz       $a3, .L00000fdc
    sd         $v0,0($sp)
    jalr       $a3
    move       $a0,$s0
.L00000fdc:
    lw         $a1,24($s0)
    sw         $zero,40($a1)
    lw         $a0,24($s0)
    jal        vsema
    addiu      $a0,$a0,32
    jal        splx
    ld         $a0,0($sp)
    lw         $s0,16($s0)
    bnez       $s0, .L00000fa4
    nop
    b          .L00000f78
    nop

glabel gfx_shcheck
    addiu      $sp,$sp,-80
    sd         $a0,16($sp)
    sd         $ra,24($sp)
    jal        gthread_find
    sd         $s1,40($sp)
    sd         $s0,48($sp)
    sd         $s2,56($sp)
    move       $s1,$v0
    beqz       $v0, .L000010e4
    sd         $s3,64($sp)
    lw         $s2,8($v0)
    bnez       $s2, .L00001100
    nop
.L00001040:
    beqz       $s1, .L000011c8
    nop
    lw         $v0,8($s1)
    beqz       $v0, .L00001070
    move       $s0,$zero
    lw         $s0,16($v0)
    beqz       $s0, .L00001070
    nop
    lw         $at,4($s0)
    andi       $at,$at,0x8
    beqz       $at, .L000010e8
    ld         $s3,64($sp)
.L00001070:
    bnez       $s0, .L00001098
    nop
    b          .L000010b8
    nop
.L00001080:
    jal        ddv_destroy_handle
    nop
    sw         $zero,28($s0)
    lw         $s0,16($s0)
    beqz       $s0, .L000010b4
    nop
.L00001098:
    lw         $a0,28($s0)
    bnez       $a0, .L00001080
    nop
    sw         $zero,28($s0)
    lw         $s0,16($s0)
    bnez       $s0, .L00001098
    nop
.L000010b4:
    lw         $v0,8($s1)
.L000010b8:
    beqz       $v0, .L000010c4
    nop
    sw         $zero,16($v0)
.L000010c4:
    jal        gthread_detach_list
    move       $a0,$s1
    jal        gthread_detach_group
    move       $a0,$s1
    jal        cleargfxsched_thread
    lw         $a0,0($s1)
    jal        gthread_destroy
    lw         $a0,0($s1)
.L000010e4:
    ld         $s3,64($sp)
.L000010e8:
    ld         $ra,24($sp)
    ld         $s2,56($sp)
    ld         $s0,48($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00001100:
    jal        GfxListWriterLock
    move       $a0,$s2
    lw         $a0,16($s2)
    beqz       $a0, .L000011ac
    move       $s3,$v0
    lw         $v0,4($a0)
    andi       $v0,$v0,0x8
    beqz       $v0, .L000011d8
    nop
.L00001124:
    b          .L00001138
    move       $s0,$a0
.L0000112c:
    lw         $s0,16($s0)
    beqz       $s0, .L000011b8
    move       $a0,$s2
.L00001138:
    lw         $v0,24($s0)
    beqz       $v0, .L0000112c
    nop
    lw         $v1,40($v0)
    bne        $v1, $s0, .L0000112c
    nop
    lw         $a0,44($v0)
    bnez       $a0, .L0000112c
    nop
    jal        splhi
    nop
    lw         $a1,20($s0)
    lw         $a1,96($a1)
    beqz       $a1, .L0000117c
    sd         $v0,8($sp)
    jalr       $a1
    move       $a0,$s0
.L0000117c:
    lw         $a1,24($s0)
    sw         $zero,40($a1)
    lw         $a0,24($s0)
    jal        vsema
    addiu      $a0,$a0,32
    jal        splx
    ld         $a0,8($sp)
    lw         $s0,16($s0)
    bnez       $s0, .L00001138
    nop
    b          .L000011b8
    move       $a0,$s2
.L000011ac:
    beqz       $s2, .L00001040
    sw         $v0,0($sp)
.L000011b4:
    move       $a0,$s2
.L000011b8:
    jal        GfxListWriterUnlock
    move       $a1,$s3
    b          .L00001040
    nop
.L000011c8:
    jal        gthread_destroy
    ld         $a0,16($sp)
    b          .L000010e8
    ld         $s3,64($sp)
.L000011d8:
    lw         $a2,4($s1)
    andi       $a2,$a2,0x2
    beqz       $a2, .L00001224
    sd         $a0,32($sp)
    lw         $s0,12($s1)
.L000011ec:
    lw         $s0,8($s0)
    move       $a0,$s1
    jal        gthread_detach_list
    sltiu      $s0,$s0,1
    jal        gthread_detach_group
    move       $a0,$s1
    jal        cleargfxsched_thread
    lw         $a0,0($s1)
    bnez       $s0, .L0000121c
    ld         $a0,32($sp)
    b          .L000011b4
    move       $s1,$zero
.L0000121c:
    b          .L00001124
    move       $s1,$zero
.L00001224:
    jal        splhi
    nop
    lw         $t9,12($s1)
    lw         $t8,8($t9)
    move       $a0,$v0
    addiu      $t8,$t8,-1
    jal        splx
    sw         $t8,8($t9)
    b          .L000011ec
    lw         $s0,12($s1)

glabel gfx_shdup
    addiu      $sp,$sp,-32
    sd         $a1,0($sp)
    sd         $ra,8($sp)
    jal        gthread_find
    sd         $s0,16($sp)
    beqz       $v0, .L0000128c
    move       $s0,$v0
    lw         $v0,8($v0)
    beqz       $v0, .L00001290
    ld         $ra,8($sp)
    lw         $a4,16($v0)
    beqz       $a4, .L00001290
    ld         $ra,8($sp)
    lw         $at,4($a4)
    andi       $at,$at,0x8
    beqz       $at, .L0000129c
.L0000128c:
    ld         $ra,8($sp)
.L00001290:
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000129c:
    jal        gthread_create
    ld         $a0,0($sp)
    beqz       $v0, .L00001290
    ld         $ra,8($sp)
    move       $a0,$v0
    jal        gthread_attach_list
    lw         $a1,8($s0)
    jal        setgfxsched_thread
    ld         $a0,0($sp)
    b          .L00001290
    ld         $ra,8($sp)

glabel GfxKiller
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    li         $a4,1
    move       $s0,$a0
    sd         $s1,8($sp)
    move       $s1,$a1
    beqz       $a2, .L00001388
    sd         $ra,16($sp)
    li         $at,2
    beq        $a2, $at, .L0000138c
    ld         $ra,16($sp)
    bne        $a2, $a4, .L0000138c
    ld         $ra,16($sp)
    lw         $a0,8($a1)
    beqz       $a0, .L000013bc
    nop
    bne        $a0, $s0, .L0000131c
    lw         $a1,12($s0)
    lw         $v0,12($a0)
    beq        $v0, $a1, .L0000138c
    ld         $ra,16($sp)
.L0000131c:
    beqz       $a1, .L00001338
    lw         $a0,8($s0)
    beqz       $a0, .L00001344
    move       $a2,$zero
    jal        GfxListReaderLock
    nop
    lw         $a0,8($s0)
.L00001338:
    beqz       $a0, .L00001344
    move       $a2,$zero
    lw         $a2,16($a0)
.L00001344:
    beqz       $a2, .L00001368
    nop
    lw         $a0,4($s1)
.L00001350:
    lw         $v1,24($a2)
    beq        $v1, $a0, .L000013a0
    nop
    lw         $a2,16($a2)
    bnez       $a2, .L00001350
    nop
.L00001368:
    lw         $a0,12($s0)
.L0000136c:
    beqz       $a0, .L0000138c
    ld         $ra,16($sp)
    lw         $a0,8($s0)
    beqz       $a0, .L0000138c
    ld         $ra,16($sp)
    jal        GfxListReaderUnlock
    nop
.L00001388:
    ld         $ra,16($sp)
.L0000138c:
    move       $v0,$zero
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000013a0:
    jal        threadhandle_to_proc
    lw         $a0,0($s0)
    move       $a0,$v0
    jal        psignal
    lw         $a1,0($s1)
    b          .L0000136c
    lw         $a0,12($s0)
.L000013bc:
    b          .L0000131c
    lw         $a1,12($s0)

glabel gfxcleanup
    lw         $at,32($a0)
    addiu      $sp,$sp,-16
    sd         $a0,0($sp)
    beqz       $at, .L000013e0
    sd         $ra,8($sp)
.L000013d8:
    jr         $ra
    addiu      $sp,$sp,16
.L000013e0:
    jal        spinlock_destroy
    ld         $a0,0($sp)
    jal        kern_free
    ld         $a0,0($sp)
    b          .L000013d8
    ld         $ra,8($sp)

glabel GfxOpen
    addiu      $sp,$sp,-48
    sd         $a0,16($sp)
    li         $at,2
    sd         $a1,24($sp)
    li         $a5,19
    beq        $a3, $at, .L00001424
    sd         $ra,32($sp)
.L00001414:
    ld         $ra,32($sp)
    move       $v0,$a5
    jr         $ra
    addiu      $sp,$sp,48
.L00001424:
    jal        curthreadhandle
    nop
    move       $a0,$v0
    jal        gthread_find_gfxp
    sd         $s0,40($sp)
    li         $a5,19
    beqz       $v0, .L000014f0
    move       $s0,$v0
    lw         $v0,16($v0)
    beqz       $v0, .L00001460
    li         $a5,19
.L00001450:
    move       $s0,$v0
    lw         $v0,16($v0)
    bnez       $v0, .L00001450
    nop
.L00001460:
    lw         $v0,24($s0)
    bnez       $v0, .L00001474
    li         $a0,9
    b          .L00001414
    ld         $s0,40($sp)
.L00001474:
    sw         $a0,0($sp)
    lw         $v1,24($s0)
    jal        curthreadhandle
    sw         $v1,4($sp)
    jal        gthread_find
    move       $a0,$v0
    addiu      $a1,$sp,0
    lui        $a0,0x0
    sw         $v0,8($sp)
    jal        gthread_scan
    addiu      $a0,$a0,0
    jal        streams_unlock
    nop
    lw         $a1,24($s0)
    lw         $a1,8($a1)
    beqz       $a1, .L000014d0
    nop
.L000014b8:
    jal        delay
    li         $a0,100
    lw         $a2,24($s0)
    lw         $a2,8($a2)
    bnez       $a2, .L000014b8
    nop
.L000014d0:
    jal        streams_lock
    nop
    lw         $v0,8($s0)
    lw         $a3,4($v0)
    beqz       $a3, .L000014f8
    li         $a5,1
    b          .L00001414
    ld         $s0,40($sp)
.L000014f0:
    b          .L00001414
    ld         $s0,40($sp)
.L000014f8:
    sw         $s0,4($v0)
    lw         $a4,24($s0)
    move       $a0,$s0
    jal        RRM_init_panes
    sw         $s0,0($a4)
    lw         $a5,8($s0)
    ld         $a2,16($sp)
    sw         $a2,16($a5)
    lw         $a4,8($s0)
    addiu      $a3,$a2,72
    sw         $a3,20($a4)
    sw         $s0,92($a2)
    sw         $s0,20($a2)
    lw         $a1,32($s0)
    ld         $a0,24($sp)
    ori        $a1,$a1,0x1
    sw         $a1,32($s0)
    jal        getemajor
    lw         $a0,0($a0)
    lw         $a1,8($s0)
    move       $a0,$v0
    jal        makedevice
    lw         $a1,12($a1)
    ld         $a2,24($sp)
    ld         $s0,40($sp)
    move       $a5,$zero
    b          .L00001414
    sw         $v0,0($a2)

glabel GfxUnmanage
    lw         $v0,24($a0)
    lw         $at,40($v0)
    addiu      $sp,$sp,-48
    sd         $s0,32($sp)
    move       $s0,$a0
    bne        $at, $a0, .L00001644
    sd         $ra,40($sp)
.L00001584:
    lw         $v0,8($s0)
.L00001588:
    beqz       $v0, .L000015b0
    li         $a3,9
    sw         $zero,4($v0)
    lw         $a1,24($s0)
    sw         $zero,0($a1)
    lw         $a0,8($s0)
    sw         $zero,16($a0)
    lw         $v1,8($s0)
    sw         $zero,20($v1)
    li         $a3,9
.L000015b0:
    sw         $a3,0($sp)
    lw         $a2,24($s0)
    jal        curthreadhandle
    sw         $a2,4($sp)
    jal        gthread_find
    move       $a0,$v0
    addiu      $a1,$sp,0
    lui        $a0,0x0
    sw         $v0,8($sp)
    jal        gthread_scan
    addiu      $a0,$a0,0
    lw         $v1,8($s0)
    lw         $v1,12($v1)
    lw         $v0,24($s0)
    beqz       $v1, .L00001688
    lw         $v0,40($v0)
    bne        $v0, $s0, .L00001638
    ld         $ra,40($sp)
    jal        splhi
    nop
    lw         $a3,20($s0)
    lw         $a3,96($a3)
    beqz       $a3, .L00001618
    sd         $v0,24($sp)
    jalr       $a3
    move       $a0,$s0
.L00001618:
    lw         $a1,24($s0)
    sw         $zero,40($a1)
    lw         $a0,24($s0)
    jal        vsema
    addiu      $a0,$a0,32
    jal        splx
    ld         $a0,24($sp)
    ld         $ra,40($sp)
.L00001638:
    ld         $s0,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00001644:
    li         $a1,537
    jal        psema
    addiu      $a0,$v0,32
    lw         $a3,24($s0)
    sw         $s0,40($a3)
    lw         $a2,24($s0)
    lw         $a2,60($a2)
    beqz       $a2, .L00001584
    nop
.L00001668:
    jal        us_delay
    li         $a0,2
    lw         $a4,24($s0)
    lw         $a4,60($a4)
    bnez       $a4, .L00001668
    nop
    b          .L00001588
    lw         $v0,8($s0)
.L00001688:
    beq        $v0, $s0, .L000016c8
.L0000168c:
    move       $a0,$zero
.L00001690:
    jal        cn_init
    li         $a1,1
    lw         $v0,24($s0)
    lw         $a5,40($v0)
    bne        $a5, $s0, .L00001638
    ld         $ra,40($sp)
    sw         $zero,40($v0)
    lw         $a0,24($s0)
    jal        vsema
    addiu      $a0,$a0,32
    jal        splx
    lw         $a0,16($sp)
    b          .L00001638
    ld         $ra,40($sp)
.L000016c8:
    jal        splhi
    nop
    lw         $a3,20($s0)
    lw         $a3,96($a3)
    beqz       $a3, .L0000168c
    sw         $v0,16($sp)
    jalr       $a3
    move       $a0,$s0
    b          .L00001690
    move       $a0,$zero

glabel GfxClose
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    lw         $s0,20($a0)
    lw         $at,24($s0)
    bnez       $at, .L00001720
    sd         $ra,8($sp)
    lw         $a0,8($s0)
    beqz       $a0, .L00001720
    nop
    lw         $v0,4($a0)
    beq        $v0, $s0, .L0000174c
    nop
.L00001720:
    lw         $v1,32($s0)
.L00001724:
    li         $a0,-2
    and        $v1,$v1,$a0
    sw         $v1,32($s0)
    jal        gfxcleanup
    move       $a0,$s0
    ld         $ra,8($sp)
    move       $v0,$zero
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L0000174c:
    jal        GfxUnmanage
    move       $a0,$s0
    b          .L00001724
    lw         $v1,32($s0)

glabel GfxProto
    lw         $a5,12($a1)
    lw         $v0,20($a0)
    lui        $t0,0x5348
    addiu      $sp,$sp,-32
    lw         $a2,0($a5)
    sd         $s1,8($sp)
    move       $s1,$a0
    li         $at,102
    sd         $s0,0($sp)
    move       $s0,$a1
    ori        $a6,$t0,0x4951
    ori        $a7,$t0,0x4d51
    beq        $a2, $at, .L000017dc
    sd         $ra,16($sp)
    beq        $a2, $a6, .L000017dc
    nop
    bne        $a2, $a7, .L00001844
    li         $a0,4
    lw         $a2,8($v0)
    lh         $a1,4($a5)
    sh         $a1,24($a2)
    lw         $a0,8($v0)
    lh         $v1,6($a5)
    lui        $v0,0x514d
    move       $a1,$s0
    ori        $v0,$v0,0x4853
    sh         $v1,26($a0)
    sw         $v0,0($a5)
    jal        qreply
    move       $a0,$s1
    b          .L00001820
    move       $v0,$zero
.L000017dc:
    lw         $a6,20($v0)
    beqz       $a6, .L00001834
    nop
    lw         $a3,24($a6)
    lw         $a2,8($a5)
    lw         $a1,4($a5)
    jalr       $a3
    lw         $a0,24($v0)
    beqz       $v0, .L00001834
    nop
    lw         $a5,20($s0)
    move       $a0,$s1
    move       $a1,$s0
    li         $a4,138
    jal        qreply
    sb         $a4,18($a5)
    move       $v0,$zero
.L00001820:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00001834:
    jal        freemsg
    move       $a0,$s0
    b          .L00001820
    move       $v0,$zero
.L00001844:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,176
    jal        freemsg
    move       $a0,$s0
    b          .L00001820
    move       $v0,$zero

glabel GfxWput
    lw         $a2,20($a1)
    lbu        $a2,18($a2)
    addiu      $sp,$sp,-16
    li         $at,1
    li         $a5,134
    li         $v0,131
    sd         $s0,0($sp)
    move       $s0,$a1
    beq        $a2, $at, .L000018d4
    sd         $ra,8($sp)
    beq        $a2, $v0, .L000018d4
    nop
    bne        $a2, $a5, .L000018e4
    nop
    lw         $a3,12($a1)
    lbu        $a3,0($a3)
    andi       $a3,$a3,0x2
    beqz       $a3, .L000018b4
    nop
    jal        flushq
    move       $a1,$zero
.L000018b4:
    jal        freemsg
    move       $a0,$s0
    move       $a0,$zero
.L000018c0:
    ld         $ra,8($sp)
    move       $v0,$a0
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L000018d4:
    jal        GfxProto
    move       $a1,$s0
    b          .L000018c0
    move       $a0,$v0
.L000018e4:
    li         $a0,4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,232
    b          .L000018b4
    nop

glabel sendMsg
    addiu      $sp,$sp,-32
    lw         $a3,0($a1)
    sd         $ra,16($sp)
    lw         $a3,4($a3)
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s0,0($sp)
    move       $s0,$a1
    beqz       $a3, .L000019e8
    sd         $s2,24($sp)
    lw         $a4,32($a3)
    andi       $a4,$a4,0x1
    beqz       $a4, .L000019ec
    ld         $ra,16($sp)
    lw         $a4,8($a1)
    sll        $a3,$a4,0x2
    lw         $s2,16($a0)
    subu       $a3,$a3,$a4
    sll        $a3,$a3,0x2
    addu       $a3,$s2,$a3
    sw         $a3,16($a0)
    lw         $a2,8($a1)
    move       $a0,$s2
    sll        $a1,$a2,0x2
    subu       $a1,$a1,$a2
    jal        bzero
    sll        $a1,$a1,0x2
    lw         $a5,0($s0)
    lh         $a5,26($a5)
    sh         $a5,2($s2)
    lw         $a4,8($s0)
    sb         $a4,5($s2)
    lw         $a3,8($s0)
    li         $a6,-1
    addiu      $a3,$a3,-1
    sll        $a1,$a3,0x2
    beq        $a3, $a6, .L000019d8
    subu       $a0,$a1,$a3
    addu       $a5,$a1,$s0
    sll        $a4,$a0,0x2
    addu       $a4,$a4,$s2
.L000019a0:
    lw         $t2,0($s0)
    lh         $t2,24($t2)
    sh         $t2,0($a4)
    lw         $t1,0($s0)
    lh         $t1,26($t1)
    sb         $t1,4($a4)
    lbu        $t0,4($s0)
    addiu      $a3,$a3,-1
    sb         $t0,6($a4)
    addiu      $a4,$a4,-12
    lw         $a7,12($a5)
    addiu      $a5,$a5,-4
    bne        $a3, $a6, .L000019a0
    sw         $a7,20($a4)
.L000019d8:
    lw         $a0,0($s0)
    move       $a1,$s1
    jal        putq
    lw         $a0,16($a0)
.L000019e8:
    ld         $ra,16($sp)
.L000019ec:
    ld         $s2,24($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel GfxDelayedMessage
    lw         $a2,8($a0)
    li         $a1,3
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    sll        $a0,$a2,0x2
    sd         $ra,8($sp)
    subu       $a0,$a0,$a2
    jal        allocb
    sll        $a0,$a0,0x2
    bnez       $v0, .L00001a64
    move       $a0,$v0
    lw         $a3,8($s0)
    li         $a1,3
    lui        $a2,0x0
    sll        $a0,$a3,0x2
    addiu      $a2,$a2,0
    subu       $a0,$a0,$a3
    move       $a3,$s0
    jal        bufcall
    sll        $a0,$a0,0x2
    beqz       $v0, .L00001a90
    li         $a0,4
    b          .L00001a80
    li         $v0,1
.L00001a64:
    jal        sendMsg
    move       $a1,$s0
.L00001a6c:
    jal        wakeup
    move       $a0,$s0
    jal        kern_free
    move       $a0,$s0
    move       $v0,$zero
.L00001a80:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L00001a90:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,288
    b          .L00001a6c
    nop

glabel GfxSendMessage
    addiu      $sp,$sp,-48
    sd         $s2,24($sp)
    sd         $s0,8($sp)
    li         $v0,1
    move       $s0,$a0
    sd         $s1,16($sp)
    move       $s1,$a1
    beqz       $a0, .L00001ba0
    sd         $ra,32($sp)
    beqz       $a1, .L00001bc0
    nop
    lw         $a1,8($s0)
.L00001ad4:
    sll        $a0,$a1,0x2
    subu       $a0,$a0,$a1
    li         $a1,3
    jal        allocb
    sll        $a0,$a0,0x2
    bnez       $v0, .L00001b88
    move       $a0,$v0
    bnez       $s1, .L00001bd0
    move       $s2,$zero
    lw         $a0,8($s0)
    sll        $a0,$a0,0x2
    addiu      $a0,$a0,48
    jal        kern_malloc
    sd         $a0,0($sp)
    beqz       $v0, .L00001bd0
    move       $s2,$v0
    move       $a0,$s0
    move       $a1,$v0
    jal        bcopy
    ld         $a2,0($sp)
    lw         $a3,8($s0)
    li         $a1,3
    lui        $a2,0x0
    sll        $a0,$a3,0x2
    addiu      $a2,$a2,0
    subu       $a0,$a0,$a3
    move       $a3,$s2
    jal        bufcall
    sll        $a0,$a0,0x2
    beqz       $v0, .L00001be8
    li         $a0,4
    move       $s0,$zero
.L00001b54:
    beqz       $s1, .L00001bb0
    nop
.L00001b5c:
    beqz       $s2, .L00001b6c
    move       $a0,$s2
    jal        sleep
    li         $a1,25
.L00001b6c:
    move       $v0,$s0
.L00001b70:
    ld         $ra,32($sp)
.L00001b74:
    ld         $s2,24($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00001b88:
    jal        sendMsg
    move       $a1,$s0
    beqz       $s1, .L00001ba8
    move       $s0,$zero
    b          .L00001b70
    move       $v0,$s0
.L00001ba0:
    b          .L00001b74
    ld         $ra,32($sp)
.L00001ba8:
    move       $s0,$zero
    move       $s2,$zero
.L00001bb0:
    jal        streams_unlock
    nop
    b          .L00001b5c
    nop
.L00001bc0:
    jal        streams_lock
    nop
    b          .L00001ad4
    lw         $a1,8($s0)
.L00001bd0:
    li         $a0,4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,328
    b          .L00001b54
    li         $s0,1
.L00001be8:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,288
    jal        kern_free
    move       $a0,$s2
    b          .L00001b54
    li         $s0,1

glabel GfxMessage
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        GfxSendMessage
    move       $a1,$zero
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel GfxIntrMessage
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        GfxSendMessage
    li         $a1,1
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel GfxRqService
    addiu      $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    jal        getq
    sd         $s1,16($sp)
    beqz       $v0, .L00001c90
    move       $s1,$v0
.L00001c5c:
    jal        canput
    lw         $a0,12($s0)
    beqz       $v0, .L00001ca8
    move       $a0,$s0
    lw         $a0,12($s0)
    lw         $at,0($a0)
    lw         $at,0($at)
    jalr       $at
    move       $a1,$s1
    jal        getq
    move       $a0,$s0
    bnez       $v0, .L00001c5c
    move       $s1,$v0
.L00001c90:
    move       $v0,$zero
.L00001c94:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00001ca8:
    jal        putbq
    move       $a1,$s1
    b          .L00001c94
    li         $v0,1

glabel GfxDetach
    lw         $at,20($a0)
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $at, .L00001d4c
    sd         $ra,8($sp)
    lw         $a0,28($a0)
    beqz       $a0, .L00001cec
    nop
    jal        gfxdd_lookup
    nop
    beqz       $v0, .L00001d9c
    nop
.L00001cec:
    jal        RRM_Exit
    move       $a0,$s0
    lw         $v0,28($s0)
    bnez       $v0, .L00001d74
    nop
.L00001d00:
    jal        streams_lock
    nop
    lw         $v1,8($s0)
    lw         $v1,4($v1)
    beq        $v1, $s0, .L00001d8c
    nop
.L00001d18:
    jal        streams_unlock
    nop
    lw         $a0,8($s0)
    lw         $a1,8($a0)
    bne        $a1, $s0, .L00001d4c
    nop
    lw         $a3,0($a0)
    sw         $zero,28($a3)
    sw         $zero,24($a3)
    sw         $zero,20($a3)
    sw         $zero,16($a3)
    lw         $a2,8($s0)
    sw         $zero,8($a2)
.L00001d4c:
    jal        streams_lock
    nop
    sw         $zero,20($s0)
    sw         $zero,8($s0)
    jal        streams_unlock
    sw         $zero,24($s0)
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L00001d74:
    lw         $a4,20($s0)
    lw         $a4,8($a4)
    jalr       $a4
    move       $a0,$s0
    b          .L00001d00
    nop
.L00001d8c:
    jal        GfxUnmanage
    move       $a0,$s0
    b          .L00001d18
    nop
.L00001d9c:
    jal        ddv_destroy_handle
    lw         $a0,28($s0)
    b          .L00001cec
    sw         $zero,28($s0)

glabel gfxinit
    lw         $a2,0($gp)
    lui        $at,0x2
    slt        $at,$at,$a2
    addiu      $sp,$sp,-16
    bnez       $at, .L00001e50
    sd         $ra,8($sp)
.L00001dc4:
    li         $a3,-1
    li         $a1,1
    lui        $a2,0x0
    addiu      $a0,$gp,0
    addiu      $a2,$a2,0
    jal        init_sema
    addiu      $a2,$a2,496
    li         $a3,-1
    li         $a1,1
    lui        $a2,0x0
    addiu      $a0,$gp,0
    addiu      $a2,$a2,0
    jal        init_sema
    addiu      $a2,$a2,520
    jal        processors_configured
    sd         $s0,0($sp)
    jal        init_gfx_group_table
    move       $s0,$v0
    jal        init_gthread_table
    nop
    move       $a0,$s0
    jal        kern_calloc
    li         $a1,32
    move       $a1,$v0
    li         $a2,32
    move       $a3,$s0
    li         $a4,32
    lui        $a0,0x0
    sw         $v0,0($gp)
    jal        ksym_add
    addiu      $a0,$a0,536
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L00001e50:
    li         $a0,4
    lui        $a4,0x2
    lui        $a1,0x0
    move       $a3,$a4
    addiu      $a1,$a1,0
    jal        cmn_err
    addiu      $a1,$a1,376
    lui        $a2,0x2
    b          .L00001dc4
    sw         $a2,0($gp)

glabel gfx_conflict_scan
    addiu      $sp,$sp,-48
    sd         $s2,24($sp)
    sd         $s1,16($sp)
    li         $at,1
    move       $s1,$a1
    sd         $s0,32($sp)
    move       $s0,$zero
    beq        $a2, $at, .L00001eb8
    sd         $ra,40($sp)
    move       $v0,$zero
.L00001ea0:
    ld         $ra,40($sp)
    ld         $s2,24($sp)
    ld         $s0,32($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00001eb8:
    lw         $v0,12($a0)
    beqz       $v0, .L00001ed4
    nop
    lw         $a1,4($a1)
    lw         $v1,0($v0)
    beq        $v1, $a1, .L00001edc
    nop
.L00001ed4:
    b          .L00001ea0
    move       $v0,$zero
.L00001edc:
    lw         $v0,8($a0)
    lw         $a2,0($s1)
    beqz       $v0, .L00001f60
    sd         $a2,8($sp)
    lw         $s0,16($v0)
.L00001ef0:
    beqz       $s0, .L00001f4c
    nop
    b          .L00001f24
    li         $a1,25
.L00001f00:
    li         $s2,2
.L00001f04:
    jal        vsema
    ld         $a0,0($sp)
    ld         $a3,8($sp)
    bne        $s2, $a3, .L00001f54
    li         $v0,1
    lw         $s0,16($s0)
    beqz       $s0, .L00001f4c
    li         $a1,25
.L00001f24:
    addiu      $s2,$s0,44
    jal        psema
    move       $a0,$s2
    lw         $a4,4($s0)
    li         $v0,8
    and        $a4,$v0,$a4
    bne        $v0, $a4, .L00001f00
    sd         $s2,0($sp)
    b          .L00001f04
    li         $s2,1
.L00001f4c:
    b          .L00001ea0
    move       $v0,$zero
.L00001f54:
    li         $a5,3
    b          .L00001ea0
    sw         $a5,0($s1)
.L00001f60:
    b          .L00001ef0
    nop

glabel irisgl_sproc_setup_scan
    addiu      $sp,$sp,-48
    lw         $at,0($a1)
    sd         $s1,24($sp)
    move       $v0,$zero
    move       $s1,$a0
    sd         $s0,16($sp)
    move       $s0,$a1
    bne        $at, $a0, .L00001fa0
    sd         $ra,32($sp)
.L00001f8c:
    ld         $ra,32($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00001fa0:
    jal        gthread_create
    nop
    bnez       $v0, .L00001fb8
    sd         $v0,8($sp)
    b          .L00001f8c
    move       $v0,$zero
.L00001fb8:
    ld         $a1,8($sp)
    lw         $a0,4($a1)
    ori        $a0,$a0,0x2
    sw         $a0,4($a1)
    jal        GfxListWriterLock
    lw         $a0,8($s0)
    sd         $v0,0($sp)
    ld         $a0,8($sp)
    jal        gthread_attach_list
    lw         $a1,8($s0)
    lw         $a0,8($s0)
    jal        GfxListWriterUnlock
    ld         $a1,0($sp)
    jal        setgfxsched_thread
    move       $a0,$s1
    b          .L00001f8c
    move       $v0,$zero

glabel gfxopen
    addiu      $sp,$sp,-112
    sd         $ra,32($sp)
    sd         $s5,40($sp)
    move       $s5,$a0
    jal        curthreadhandle
    sd         $s3,56($sp)
    move       $s3,$v0
    li         $a1,25
    jal        psema
    addiu      $a0,$gp,0
    sd         $s2,48($sp)
    lw         $v0,0($s5)
    lui        $a0,0x3
    sd         $s6,64($sp)
    ori        $a0,$a0,0xffff
    sd         $s0,72($sp)
    and        $v0,$a0,$v0
    sd         $s1,80($sp)
    slti       $at,$v0,2
    sd         $s7,88($sp)
    beqz       $at, .L0000236c
    sd         $s4,96($sp)
    lw         $a4,0($gp)
    blez       $a4, .L0000243c
    lui        $a0,0x0
    addiu      $a0,$a0,0
    move       $s0,$zero
    move       $a3,$a0
.L0000206c:
    lw         $a1,0($a3)
    beqz       $a1, .L000020a0
    addiu      $a3,$a3,4
    addiu      $s0,$s0,1
    slt        $a2,$s0,$a4
    beqz       $a2, .L000020a4
    slt        $a7,$s0,$a4
    lw         $a5,0($a3)
    beqz       $a5, .L000020a0
    addiu      $a3,$a3,4
    addiu      $s0,$s0,1
    slt        $a6,$s0,$a4
    bnez       $a6, .L0000206c
.L000020a0:
    slt        $a7,$s0,$a4
.L000020a4:
    beqz       $a7, .L0000243c
    li         $s1,1
    move       $a0,$s3
    xor        $s4,$s1,$v0
    jal        gthread_find
    sltiu      $s4,$s4,1
    beqz       $v0, .L000020fc
    move       $s2,$v0
    lw         $t8,4($v0)
    andi       $t8,$t8,0x4
    beqz       $t8, .L0000235c
    nop
    lw         $v0,8($v0)
    beqz       $v0, .L000020e4
    nop
    sw         $zero,16($v0)
.L000020e4:
    jal        gthread_detach_list
    move       $a0,$s2
    jal        gthread_detach_group
    move       $a0,$s2
    jal        gthread_destroy
    lw         $a0,0($s2)
.L000020fc:
    jal        gthread_create
    move       $a0,$s3
    beqz       $v0, .L0000234c
    move       $s2,$v0
.L0000210c:
    jal        gfx_group_find
    move       $a0,$s3
    move       $s6,$v0
    jal        gthread_find_gfxp
    move       $a0,$s3
    move       $s7,$v0
    beqz       $v0, .L00002158
    move       $s1,$v0
    li         $v0,8
.L00002130:
    lw         $t9,4($s1)
    and        $t9,$v0,$t9
    xor        $t9,$v0,$t9
    sltiu      $t9,$t9,1
    xor        $t9,$s4,$t9
    bnez       $t9, .L000022cc
    nop
    lw         $s1,16($s1)
    bnez       $s1, .L00002130
    nop
.L00002158:
    beqz       $s2, .L000021a8
    nop
    lw         $ra,12($s2)
    beqz       $ra, .L000021a8
    nop
    bnez       $s4, .L00002178
    li         $v0,1
    li         $v0,2
.L00002178:
    sw         $v0,0($sp)
    lw         $at,12($s2)
    addiu      $a1,$sp,0
    lui        $a0,0x0
    lw         $at,0($at)
    addiu      $a0,$a0,0
    jal        gthread_scan
    sw         $at,4($sp)
    lw         $v0,0($sp)
    li         $v1,3
    beq        $v0, $v1, .L00002418
    nop
.L000021a8:
    bnez       $s7, .L000021c0
    nop
    jal        kern_malloc
    li         $a0,60
    b          .L000021cc
    move       $s1,$v0
.L000021c0:
    jal        kern_malloc
    li         $a0,60
    move       $s1,$v0
.L000021cc:
    lui        $a2,0x0
    sll        $a3,$s0,0x2
    addiu      $a2,$a2,0
    li         $a1,60
    addu       $a2,$a2,$a3
    move       $a0,$s1
    jal        bzero
    sw         $s1,0($a2)
    sw         $s3,12($s1)
    lw         $a3,12($s2)
    li         $a2,-1
    sw         $zero,20($s1)
    move       $a0,$s1
    sw         $zero,24($s1)
    lui        $a1,0x0
    addiu      $a1,$a1,760
    jal        init_spinlock
    sw         $a3,52($s1)
    bnez       $s4, .L00002384
.L00002218:
    li         $a3,-1
    li         $a1,1
    addiu      $a0,$s1,44
    lui        $a2,0x0
    jal        init_sema
    addiu      $a2,$a2,168
    li         $a3,1
    bnez       $s7, .L000022f0
    sw         $a3,56($s1)
    beqz       $s6, .L00002254
    move       $a0,$s2
    lw         $a4,4($s1)
    andi       $a4,$a4,0x8
    beqz       $a4, .L000023ac
    move       $a0,$s2
.L00002254:
    jal        gthread_attach_list
    move       $a1,$zero
    lw         $a5,8($s2)
    sw         $s1,16($a5)
.L00002264:
    jal        setgfxsched_thread
    move       $a0,$s3
.L0000226c:
    jal        vsema
    addiu      $a0,$gp,0
    lw         $a6,32($s1)
    lui        $a0,0x2
    ori        $a6,$a6,0x2
    bnez       $s4, .L0000237c
    sw         $a6,32($s1)
    move       $a0,$zero
    lw         $a7,0($s5)
.L00002290:
    or         $t0,$a0,$s0
    move       $v0,$zero
    or         $a7,$a7,$t0
    sw         $a7,0($s5)
.L000022a0:
    ld         $s2,48($sp)
    ld         $s3,56($sp)
    ld         $s6,64($sp)
    ld         $s0,72($sp)
    ld         $s5,40($sp)
    ld         $ra,32($sp)
    ld         $s1,80($sp)
    ld         $s7,88($sp)
    ld         $s4,96($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L000022cc:
    jal        vsema
    addiu      $a0,$gp,0
    li         $a1,4
    li         $a0,2126
    lui        $a2,0x0
    jal        cmn_err_tag
    addiu      $a2,$a2,576
    b          .L000022a0
    li         $v0,19
.L000022f0:
    beqz       $s6, .L00002308
    nop
    lw         $a3,4($s1)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00002408
    nop
.L00002308:
    lw         $a3,16($s7)
    beqz       $a3, .L00002324
    nop
.L00002314:
    move       $s7,$a3
    lw         $a3,16($a3)
    bnez       $a3, .L00002314
    nop
.L00002324:
    beqz       $s6, .L0000226c
    sw         $s1,16($s7)
    lw         $a4,4($s1)
    andi       $a4,$a4,0x8
    bnez       $a4, .L0000226c
    lw         $a1,24($sp)
    jal        GfxListWriterUnlock
    lw         $a0,8($s2)
    b          .L0000226c
    nop
.L0000234c:
    jal        vsema
    addiu      $a0,$gp,0
    b          .L000022a0
    li         $v0,12
.L0000235c:
    bnez       $v0, .L0000210c
    nop
    b          .L000020fc
    nop
.L0000236c:
    jal        vsema
    addiu      $a0,$gp,0
    b          .L000022a0
    li         $v0,6
.L0000237c:
    b          .L00002290
    lw         $a7,0($s5)
.L00002384:
    lw         $a7,4($s1)
    ori        $a7,$a7,0x8
    sw         $a7,4($s1)
    lui        $a6,0x3
    lw         $a5,0($s5)
    ori        $a6,$a6,0xffff
    and        $a6,$a6,$a5
    subu       $a5,$a5,$a6
    b          .L00002218
    sw         $a5,0($s5)
.L000023ac:
    move       $a0,$s2
    jal        gthread_attach_list
    move       $a1,$zero
    jal        GfxListWriterLock
    lw         $a0,8($s2)
    lw         $t1,8($s2)
    sw         $s1,16($t1)
    li         $t0,1
    sw         $t0,8($s6)
    move       $a1,$v0
    jal        GfxListWriterUnlock
    lw         $a0,8($s2)
    lw         $a1,0($s2)
    sw         $s6,12($sp)
    sw         $a1,8($sp)
    lui        $a0,0x0
    addiu      $a1,$sp,8
    lw         $t2,8($s2)
    addiu      $a0,$a0,0
    jal        curthreadgroup_scan
    sw         $t2,16($sp)
    b          .L00002264
    nop
.L00002408:
    jal        GfxListWriterLock
    lw         $a0,8($s2)
    b          .L00002308
    sw         $v0,24($sp)
.L00002418:
    jal        vsema
    addiu      $a0,$gp,0
    li         $a1,4
    li         $a0,2127
    lui        $a2,0x0
    jal        cmn_err_tag
    addiu      $a2,$a2,672
    b          .L000022a0
    li         $v0,19
.L0000243c:
    jal        vsema
    addiu      $a0,$gp,0
    li         $a0,4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,544
    b          .L000022a0
    li         $v0,19

glabel irisgl_sproc_cleanup
    li         $at,1
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    beq        $a2, $at, .L0000247c
    move       $s0,$a0
    move       $v0,$zero
    b          .L000024b8
    nop
.L0000247c:
    lw         $v0,12($a0)
    bne        $v0, $a1, .L000024b4
    sd         $ra,8($sp)
    jal        cleargfxsched_thread
    lw         $a0,0($a0)
    jal        gthread_detach_list
    move       $a0,$s0
    jal        gthread_detach_group
    move       $a0,$s0
    lw         $v1,4($s0)
    ld         $ra,8($sp)
    li         $a0,-3
    and        $v1,$v1,$a0
    sw         $v1,4($s0)
.L000024b4:
    move       $v0,$zero
.L000024b8:
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel gfxclose
    addiu      $sp,$sp,-112
    sd         $s6,56($sp)
    sd         $s0,88($sp)
    sd         $s5,96($sp)
    sd         $ra,40($sp)
    sd         $s1,32($sp)
    move       $s1,$a0
    jal        curthreadhandle
    sd         $s7,104($sp)
    lui        $s0,0x3
    ori        $s0,$s0,0xffff
    lui        $s5,0x2
    and        $s0,$s1,$s0
    and        $s7,$s5,$s0
    beq        $s7, $s5, .L00002510
    move       $s6,$v0
    li         $a1,25
    jal        psema
    addiu      $a0,$gp,0
.L00002510:
    sd         $s2,48($sp)
    sd         $s3,64($sp)
    sd         $s4,72($sp)
    move       $a0,$s6
    jal        gthread_find
    sd         $s8,80($sp)
    lui        $a0,0x1
    lw         $t8,0($gp)
    ori        $a0,$a0,0xffff
    and        $a0,$s0,$a0
    slt        $t8,$a0,$t8
    move       $s4,$v0
    bnez       $t8, .L0000258c
    move       $s1,$v0
    beq        $s7, $s5, .L0000255c
    li         $v0,6
    jal        vsema
    addiu      $a0,$gp,0
    li         $v0,6
.L0000255c:
    ld         $s2,48($sp)
    ld         $s6,56($sp)
    ld         $s3,64($sp)
    ld         $s4,72($sp)
    ld         $s8,80($sp)
    ld         $s0,88($sp)
    ld         $ra,40($sp)
    ld         $s5,96($sp)
    ld         $s1,32($sp)
    ld         $s7,104($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L0000258c:
    lui        $v0,0x0
    addiu      $v0,$v0,0
    sll        $v1,$a0,0x2
    addu       $v0,$v0,$v1
    lw         $s0,0($v0)
    beqz       $s0, .L000027a8
    nop
    beqz       $s4, .L00002794
    sd         $v0,24($sp)
    lw         $v0,8($s4)
    beqz       $v0, .L00002794
    nop
    lw         $s2,16($v0)
.L000025c0:
    lw         $s3,12($s0)
    beq        $s6, $s3, .L00002788
    nop
    beq        $s7, $s5, .L00002890
    nop
    beqz       $s4, .L000028d4
    nop
    lw         $v1,12($s4)
    beqz       $v1, .L00002890
    nop
    move       $s3,$zero
    move       $s8,$zero
.L000025f0:
    beqz       $s4, .L000027c0
    nop
.L000025f8:
    jal        GfxDetach
    move       $a0,$s0
    lw         $a0,12($s1)
    beqz       $a0, .L0000275c
    move       $s4,$zero
    lw         $s4,8($s1)
    beqz       $s4, .L0000275c
    nop
    jal        GfxListWriterLock
    move       $a0,$s4
    bne        $s0, $s2, .L00002764
    sw         $v0,0($sp)
.L00002628:
    lw         $a2,8($s1)
    lw         $a1,16($s0)
    sw         $a1,16($a2)
.L00002634:
    lw         $s2,12($s1)
.L00002638:
    beqz       $s2, .L00002650
    nop
    lw         $a3,4($s0)
    andi       $a3,$a3,0x8
    beqz       $a3, .L00002824
    nop
.L00002650:
    beqz       $s4, .L00002660
    move       $a0,$s4
    jal        GfxListWriterUnlock
    lw         $a1,0($sp)
.L00002660:
    jal        freesema
    addiu      $a0,$s0,44
    lw         $v0,8($s1)
    beqz       $v0, .L00002680
    nop
    lw         $a4,16($v0)
    beqz       $a4, .L00002870
    nop
.L00002680:
    beqz       $s8, .L000026f0
    nop
    jal        splhi
    nop
    move       $s4,$v0
    jal        gthread_find
    move       $a0,$s8
    beqz       $s3, .L000027ec
    move       $s2,$v0
    beqz       $v0, .L00002804
    nop
    lw         $a5,4($v0)
    andi       $a5,$a5,0x4
    beqz       $a5, .L000029a0
    nop
.L000026bc:
    jal        splx
    move       $a0,$s4
    lw         $v0,8($s2)
    beqz       $v0, .L000026d4
    nop
    sw         $zero,16($v0)
.L000026d4:
    jal        gthread_detach_list
    move       $a0,$s2
    jal        gthread_detach_group
    move       $a0,$s2
    jal        gthread_destroy
    lw         $a0,0($s2)
    move       $s3,$zero
.L000026f0:
    lw         $a6,8($s1)
    beqz       $a6, .L00002814
    nop
.L000026fc:
    jal        streams_lock
    nop
    lw         $a7,32($s0)
    move       $a0,$s0
    li         $t0,-3
    and        $a7,$a7,$t0
    jal        gfxcleanup
    sw         $a7,32($s0)
    jal        streams_unlock
    nop
    ld         $t1,24($sp)
    beq        $s7, $s5, .L00002738
    sw         $zero,0($t1)
    jal        vsema
    addiu      $a0,$gp,0
.L00002738:
    beqz       $s3, .L00002754
    nop
    jal        curproc
    nop
    move       $a0,$v0
    jal        psignal
    li         $a1,6
.L00002754:
    b          .L0000255c
    move       $v0,$zero
.L0000275c:
    beq        $s0, $s2, .L00002628
    nop
.L00002764:
    beqz       $s2, .L00002634
    nop
.L0000276c:
    lw         $v0,16($s2)
    beq        $s0, $v0, .L0000279c
    nop
    bnez       $v0, .L0000276c
    move       $s2,$v0
    b          .L00002638
    lw         $s2,12($s1)
.L00002788:
    move       $s3,$zero
    b          .L000025f0
    move       $s8,$zero
.L00002794:
    b          .L000025c0
    move       $s2,$zero
.L0000279c:
    lw         $t2,16($s0)
    b          .L00002634
    sw         $t2,16($s2)
.L000027a8:
    beq        $s7, $s5, .L000027b8
    nop
    jal        vsema
    addiu      $a0,$gp,0
.L000027b8:
    b          .L0000255c
    li         $v0,19
.L000027c0:
    jal        gthread_create
    move       $a0,$s6
    move       $s4,$v0
    bnez       $v0, .L000028e0
    move       $s1,$v0
    beq        $s7, $s5, .L000027e4
    nop
    jal        vsema
    addiu      $a0,$gp,0
.L000027e4:
    b          .L0000255c
    li         $v0,12
.L000027ec:
    beqz       $v0, .L00002804
    nop
    lw         $t3,4($v0)
    andi       $t3,$t3,0x4
    bnez       $t3, .L000026bc
    nop
.L00002804:
    jal        splx
    move       $a0,$s4
    b          .L000026f0
    move       $s3,$zero
.L00002814:
    jal        gthread_destroy
    lw         $a0,0($s1)
    b          .L000026fc
    nop
.L00002824:
    lw         $v0,8($s1)
    beqz       $v0, .L00002650
    nop
    lw         $t8,16($v0)
    bnez       $t8, .L00002650
    nop
    jal        splhi
    nop
    move       $a0,$v0
    jal        splx
    sw         $zero,8($s2)
    jal        gthread_detach_group
    move       $a0,$s1
    move       $a1,$s2
    lui        $a0,0x0
    jal        gthread_scan
    addiu      $a0,$a0,0
    b          .L00002650
    nop
.L00002870:
    jal        cleargfxsched_thread
    lw         $a0,0($s1)
    jal        gthread_detach_list
    move       $a0,$s1
    jal        gthread_detach_group
    move       $a0,$s1
    b          .L00002680
    nop
.L00002890:
    jal        splhi
    move       $s8,$s3
    sd         $v0,16($sp)
    jal        gthread_find
    move       $a0,$s3
    beqz       $v0, .L00002914
    move       $s3,$v0
    lw         $a0,8($v0)
    beqz       $a0, .L00002998
    nop
    lw         $a1,16($a0)
    beqz       $a1, .L00002988
    nop
    bnez       $a1, .L0000294c
    addiu      $v0,$a0,16
    b          .L00002990
    nop
.L000028d4:
    move       $s3,$zero
    b          .L000025f0
    move       $s8,$zero
.L000028e0:
    sw         $zero,16($s0)
    sw         $s6,12($s0)
    move       $a0,$v0
    sw         $zero,56($s0)
    jal        gthread_attach_list
    move       $a1,$zero
    lw         $a1,8($s4)
    move       $s2,$s0
    move       $a0,$s6
    jal        setgfxsched_thread
    sw         $s0,16($a1)
    b          .L000025f8
    nop
.L00002914:
    move       $s3,$zero
.L00002918:
    jal        splx
    ld         $a0,16($sp)
    beqz       $s4, .L000027c0
    nop
    sw         $s6,12($s0)
    lw         $a2,16($s2)
    sw         $a2,16($s0)
    b          .L000025f0
    sw         $s0,16($s2)
.L0000293c:
    addiu      $v0,$a1,16
    lw         $a1,16($a1)
    beqz       $a1, .L00002990
    nop
.L0000294c:
    bne        $s0, $a1, .L0000293c
    nop
    beqz       $a1, .L00002990
    sd         $v0,8($sp)
    jal        GfxListWriterLock
    nop
    ld         $a4,8($sp)
    lw         $a3,0($a4)
    lw         $a3,16($a3)
    sw         $a3,0($a4)
    move       $a1,$v0
    jal        GfxListWriterUnlock
    lw         $a0,8($s3)
    b          .L00002918
    li         $s3,1
.L00002988:
    b          .L00002918
    move       $s3,$zero
.L00002990:
    b          .L00002918
    move       $s3,$zero
.L00002998:
    b          .L00002918
    move       $s3,$zero
.L000029a0:
    jal        splx
    move       $a0,$s4
    jal        curproc
    nop
    jal        proc_name
    move       $a0,$v0
    jal        curproc
    move       $s3,$v0
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    li         $a0,1
    lui        $s4,0x0
    move       $a2,$s3
    addiu      $s4,$s4,0
    jal        cmn_err
    addiu      $a1,$s4,768
    jal        threadhandle_to_proc
    lw         $a0,0($s2)
    jal        proc_name
    move       $a0,$v0
    move       $s3,$v0
    jal        threadhandle_to_proc
    lw         $a0,0($s2)
    jal        proc_pid
    move       $a0,$v0
    move       $a3,$v0
    addiu      $a1,$s4,848
    li         $a0,1
    jal        cmn_err
    move       $a2,$s3
    jal        threadhandle_to_proc
    lw         $a0,0($s2)
    move       $a0,$v0
    jal        psignal
    li         $a1,9
    b          .L000026f0
    li         $s3,1

glabel GfxListWriterLock
    addiu      $sp,$sp,-32
    sd         $s2,16($sp)
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    jal        splhi
    sd         $s1,24($sp)
    lw         $at,4($s0)
    move       $a3,$v0
    addiu      $s2,$s0,12
    blez       $at, .L00002a90
    addiu      $s1,$s0,8
    move       $a0,$s1
.L00002a6c:
    li         $a1,25
    jal        sv_wait
    move       $a2,$s2
    jal        splhi
    nop
    move       $a3,$v0
    lw         $v0,4($s0)
    bgtz       $v0, .L00002a6c
    move       $a0,$s1
.L00002a90:
    ld         $ra,8($sp)
    ld         $s2,16($sp)
    move       $v0,$a3
    ld         $s0,0($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel GfxListWriterUnlock
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        splx
    move       $a0,$a1
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel GfxListReaderLock
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    lw         $at,4($s8)
    move       $a0,$v0
    addiu      $at,$at,1
    jal        splx
    sw         $at,4($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel GfxListReaderUnlock
    addiu      $sp,$sp,-32
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    move       $s8,$a0
    lw         $at,4($s8)
    sd         $v0,16($sp)
    addiu      $a0,$s8,8
    addiu      $at,$at,-1
    jal        sv_signal
    sw         $at,4($s8)
    ld         $s8,8($sp)
    jal        splx
    ld         $a0,16($sp)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel gfxread
    jr         $ra
    li         $v0,54

glabel gfxwrite
    jr         $ra
    li         $v0,54

glabel gfxioctl
    addiu      $sp,$sp,-112
    sd         $a4,48($sp)
    sd         $s3,56($sp)
    sd         $s0,80($sp)
    move       $s0,$a0
    sd         $s1,88($sp)
    move       $s1,$a1
    move       $s3,$a2
    sd         $s4,72($sp)
    sd         $ra,64($sp)
    jal        curthreadhandle
    move       $s4,$a5
    move       $a0,$v0
    jal        gthread_find
    sd         $s2,96($sp)
    lw         $a4,0($gp)
    lw         $a3,12($a4)
    lui        $a2,0x1
    lui        $a1,0x3
    ori        $a1,$a1,0xffff
    addiu      $a3,$a3,1
    sw         $a3,12($a4)
    ori        $a2,$a2,0xffff
    and        $a1,$s0,$a1
    lw         $at,0($gp)
    and        $a1,$a1,$a2
    slt        $at,$a1,$at
    beqz       $at, .L00002cc0
    move       $s2,$v0
    lui        $s0,0x0
    addiu      $s0,$s0,0
    sll        $t8,$a1,0x2
    addu       $s0,$s0,$t8
    lw         $s0,0($s0)
    beqz       $s0, .L00002d14
    nop
    beqz       $v0, .L00002d0c
    nop
    lw         $t8,4($s0)
    andi       $t8,$t8,0x8
    beqz       $t8, .L00002c1c
    lw         $v0,12($v0)
    beqz       $v0, .L00002c30
    li         $at,101
    lw         $t9,0($s2)
    lw         $ra,12($s0)
    beq        $t9, $ra, .L00002c30
    li         $at,101
    b          .L00002cec
    li         $v0,13
.L00002c1c:
    beqz       $v0, .L00002c2c
    li         $a1,25
    jal        psema
    addiu      $a0,$s0,44
.L00002c2c:
    li         $at,101
.L00002c30:
    beq        $s1, $at, .L00002cc8
    lw         $t1,0($gp)
    li         $v0,102
    beq        $s1, $v0, .L00002e88
    move       $a0,$s3
    li         $v1,105
    beq        $s1, $v1, .L00002ea4
    move       $a0,$s3
    li         $a0,103
    beq        $s1, $a0, .L00002ee0
    li         $a1,112
    beq        $s1, $a1, .L00002f00
    move       $a0,$s3
    li         $a2,113
    beq        $s1, $a2, .L00002f1c
    nop
    lw         $v0,20($s0)
    beqz       $v0, .L00002d40
    sltiu      $a3,$s1,10000
    beqz       $a3, .L00002d1c
    sltiu      $a4,$s1,1000
    beqz       $a4, .L00002db8
    li         $a5,108
    beq        $s1, $a5, .L00002f3c
    move       $a0,$s3
    li         $a6,104
    beq        $s1, $a6, .L00002e50
    li         $a7,110
    beq        $s1, $a7, .L00002d48
    nop
    lw         $a3,8($s0)
    lw         $t0,8($a3)
    beq        $t0, $s0, .L00002dd4
    li         $v1,106
    b          .L00002cd0
    li         $s1,1
.L00002cc0:
    b          .L00002cec
    li         $v0,6
.L00002cc8:
    move       $s1,$zero
    sw         $t1,0($s4)
.L00002cd0:
    lw         $t2,12($s2)
.L00002cd4:
    beqz       $t2, .L00002cec
    move       $v0,$s1
    lw         $t3,4($s0)
    andi       $t3,$t3,0x8
    beqz       $t3, .L00002ec0
    move       $v0,$s1
.L00002cec:
    ld         $s2,96($sp)
    ld         $s3,56($sp)
    ld         $ra,64($sp)
    ld         $s4,72($sp)
    ld         $s0,80($sp)
    ld         $s1,88($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L00002d0c:
    b          .L00002cec
    li         $v0,13
.L00002d14:
    b          .L00002cec
    li         $v0,19
.L00002d1c:
    lw         $t8,100($v0)
    move       $a0,$s0
    move       $a4,$s4
    move       $a3,$s3
    move       $a2,$s1
    jalr       $t8
    lw         $a1,40($s0)
    b          .L00002cd0
    move       $s1,$v0
.L00002d40:
    b          .L00002cd0
    li         $s1,13
.L00002d48:
    b          .L00002d5c
    lw         $v0,24($s0)
.L00002d50:
    jal        ddv_unlock
    lw         $a0,28($s0)
    lw         $v0,24($s0)
.L00002d5c:
    lw         $t9,40($v0)
    bne        $t9, $s0, .L00002e10
    li         $a1,537
.L00002d68:
    jal        ddv_lock
    lw         $a0,28($s0)
    lw         $ra,24($s0)
    lw         $ra,40($ra)
    bne        $ra, $s0, .L00002d50
    nop
    lw         $at,20($s0)
    lw         $at,48($at)
    move       $a0,$s0
    move       $a1,$zero
    jalr       $at
    li         $a2,-1
    move       $s1,$v0
    lw         $v0,4($s0)
    lw         $a0,28($s0)
    ori        $v0,$v0,0x20
    jal        ddv_unlock
    sw         $v0,4($s0)
    b          .L00002cd4
    lw         $t2,12($s2)
.L00002db8:
    move       $a0,$s0
    move       $a1,$s1
    move       $a2,$s3
    jal        RRM_Dispatch
    move       $a3,$s4
    b          .L00002cd0
    move       $s1,$v0
.L00002dd4:
    beq        $s1, $v1, .L00002f58
    li         $a0,107
    beq        $s1, $a0, .L00002fd8
    li         $a1,109
    beq        $s1, $a1, .L00002ffc
    li         $a2,111
    beq        $s1, $a2, .L00003034
    li         $a1,4
    li         $a0,2128
    move       $a3,$s1
    lui        $a2,0x0
    jal        cmn_err_tag
    addiu      $a2,$a2,920
    b          .L00002cd0
    li         $s1,22
.L00002e10:
    jal        psema
    addiu      $a0,$v0,32
    lw         $a4,24($s0)
    sw         $s0,40($a4)
    lw         $a3,24($s0)
    lw         $a3,60($a3)
    beqz       $a3, .L00002d68
    nop
.L00002e30:
    jal        us_delay
    li         $a0,2
    lw         $a5,24($s0)
    lw         $a5,60($a5)
    bnez       $a5, .L00002e30
    nop
    b          .L00002d68
    nop
.L00002e50:
    lw         $a6,4($s0)
    andi       $a6,$a6,0x8
    bnez       $a6, .L00002ed0
    nop
    lw         $a7,12($s2)
    beqz       $a7, .L00002ed0
    nop
    jal        threadgroup_refcnt
    lw         $a0,0($s2)
    li         $t0,1
    beq        $v0, $t0, .L00002ed0
    nop
    b          .L00002cd0
    li         $s1,16
.L00002e88:
    li         $a2,12
    jal        copyin
    addiu      $a1,$sp,0
    beqz       $v0, .L00003004
    lw         $v0,0($sp)
    b          .L00002cd0
    li         $s1,14
.L00002ea4:
    li         $a2,4
    jal        copyin
    addiu      $a1,$sp,40
    beqz       $v0, .L0000301c
    lw         $a0,40($sp)
    b          .L00002cd0
    li         $s1,14
.L00002ec0:
    jal        vsema
    addiu      $a0,$s0,44
    b          .L00002cec
    move       $v0,$s1
.L00002ed0:
    jal        GfxDetach
    move       $a0,$s0
    b          .L00002cd0
    move       $s1,$zero
.L00002ee0:
    move       $a0,$s3
    li         $a2,8
    jal        copyin
    addiu      $a1,$sp,0
    beqz       $v0, .L00003058
    lw         $v0,0($sp)
    b          .L00002cd0
    li         $s1,14
.L00002f00:
    li         $a2,8
    jal        copyin
    addiu      $a1,$sp,0
    beqz       $v0, .L00003070
    lw         $v0,0($sp)
    b          .L00002cd0
    li         $s1,14
.L00002f1c:
    jal        drv_priv
    ld         $a0,48($sp)
    bnez       $v0, .L00002cd0
    move       $s1,$v0
    lw         $t1,4($s0)
    ori        $t1,$t1,0x4
    b          .L00002cd0
    sw         $t1,4($s0)
.L00002f3c:
    li         $a2,32
    jal        copyin
    addiu      $a1,$sp,0
    beqz       $v0, .L0000321c
    nop
    b          .L00002cd0
    li         $s1,14
.L00002f58:
    lw         $a2,24($s0)
    lw         $t2,40($a2)
    bne        $t2, $s0, .L00003120
    li         $a1,537
.L00002f68:
    lw         $t3,12($v0)
    jalr       $t3
    move       $a0,$s0
    lw         $t8,24($s0)
    move       $s1,$v0
    jal        splhi
    sw         $zero,80($t8)
    lw         $a1,20($s0)
    lw         $a1,96($a1)
    beqz       $a1, .L00002f9c
    move       $s3,$v0
    jalr       $a1
    move       $a0,$s0
.L00002f9c:
    lw         $a1,24($s0)
    sw         $zero,40($a1)
    lw         $a0,24($s0)
    jal        vsema
    addiu      $a0,$a0,32
    jal        splx
    move       $a0,$s3
    lw         $a2,4($s0)
    andi       $a2,$a2,0x1
    beqz       $a2, .L00002cd0
    nop
    jal        rrmUnMapGfx
    move       $a0,$s0
    b          .L00002cd4
    lw         $t2,12($s2)
.L00002fd8:
    lw         $a2,24($s0)
    lw         $a3,40($a2)
    bne        $a3, $s0, .L00003160
    li         $a1,537
.L00002fe8:
    lw         $a4,20($v0)
    jalr       $a4
    move       $a0,$s0
    b          .L00002cd0
    move       $s1,$v0
.L00002ffc:
    b          .L00002cd0
    move       $s1,$zero
.L00003004:
    lw         $a5,0($gp)
    sltu       $a5,$v0,$a5
    bnez       $a5, .L00003088
    lui        $a4,0x0
    b          .L00002cd0
    li         $s1,19
.L0000301c:
    lw         $a6,0($gp)
    sltu       $a6,$a0,$a6
    bnez       $a6, .L000030a8
    lui        $v0,0x0
    b          .L00002cd0
    li         $s1,19
.L00003034:
    lw         $a1,0($a3)
    move       $a0,$s3
    li         $a2,16
    jal        copyin
    addiu      $a1,$a1,16
    beqz       $v0, .L00003214
    nop
    b          .L00002cd0
    li         $s1,14
.L00003058:
    lw         $a2,0($gp)
    sltu       $a2,$v0,$a2
    bnez       $a2, .L000030d4
    lui        $a2,0x0
    b          .L00002cd0
    li         $s1,19
.L00003070:
    lw         $a3,0($gp)
    sltu       $a3,$v0,$a3
    bnez       $a3, .L00003100
    lui        $a2,0x0
    b          .L00002cd0
    li         $s1,19
.L00003088:
    addiu      $a4,$a4,0
    sll        $a5,$v0,0x2
    addu       $a4,$a4,$a5
    lw         $a4,0($a4)
    bnez       $a4, .L000031a0
    nop
    b          .L00002cd0
    li         $s1,19
.L000030a8:
    addiu      $v0,$v0,0
    sll        $v1,$a0,0x2
    addu       $v0,$v0,$v1
    lw         $v0,0($v0)
    beqz       $v0, .L00003238
    nop
    lw         $v1,4($v0)
    move       $s1,$zero
    sltu       $v1,$zero,$v1
    b          .L00002cd0
    sw         $v1,0($s4)
.L000030d4:
    addiu      $a2,$a2,0
    sll        $a3,$v0,0x2
    addu       $a3,$a2,$a3
    lw         $a3,0($a3)
    beqz       $a3, .L00003240
    nop
    lw         $a4,20($s0)
    beqz       $a4, .L00003248
    nop
    b          .L00002cd0
    li         $s1,16
.L00003100:
    addiu      $a2,$a2,0
    sll        $a3,$v0,0x2
    addu       $a3,$a2,$a3
    lw         $a3,0($a3)
    bnez       $a3, .L000031c4
    nop
    b          .L00002cd0
    li         $s1,19
.L00003120:
    jal        psema
    addiu      $a0,$a2,32
    lw         $a4,24($s0)
    sw         $s0,40($a4)
    lw         $a3,24($s0)
    lw         $a3,60($a3)
    beqz       $a3, .L00003158
    nop
.L00003140:
    jal        us_delay
    li         $a0,2
    lw         $a5,24($s0)
    lw         $a5,60($a5)
    bnez       $a5, .L00003140
    nop
.L00003158:
    b          .L00002f68
    lw         $v0,20($s0)
.L00003160:
    jal        psema
    addiu      $a0,$a2,32
    lw         $a7,24($s0)
    sw         $s0,40($a7)
    lw         $a6,24($s0)
    lw         $a6,60($a6)
    beqz       $a6, .L00003198
    nop
.L00003180:
    jal        us_delay
    li         $a0,2
    lw         $t0,24($s0)
    lw         $t0,60($t0)
    bnez       $t0, .L00003180
    nop
.L00003198:
    b          .L00002fe8
    lw         $v0,20($s0)
.L000031a0:
    lw         $t1,28($a4)
    lw         $t1,0($t1)
    lw         $a2,8($sp)
    lw         $a1,4($sp)
    move       $a3,$s4
    jalr       $t1
    lw         $a0,32($a4)
    b          .L00002cd0
    move       $s1,$v0
.L000031c4:
    sw         $a3,8($s0)
    lw         $t8,32($a3)
    sw         $t8,24($s0)
    lw         $t3,28($a3)
    sw         $t3,20($s0)
    lw         $t2,0($sp)
    sll        $t2,$t2,0x2
    addu       $t2,$a2,$t2
    lw         $t2,0($t2)
    lw         $t2,28($t2)
    lw         $t2,4($t2)
    move       $a0,$s0
    jalr       $t2
    lw         $a1,4($sp)
    beqz       $v0, .L00003298
    move       $s1,$v0
    sw         $zero,20($s0)
    sw         $zero,24($s0)
    b          .L00002cd0
    sw         $zero,8($s0)
.L00003214:
    b          .L00002cd0
    move       $s1,$zero
.L0000321c:
    lw         $t9,20($s0)
    lw         $t9,16($t9)
    move       $a0,$s0
    jalr       $t9
    addiu      $a1,$sp,0
    b          .L00002cd0
    move       $s1,$v0
.L00003238:
    b          .L00002cd0
    li         $s1,19
.L00003240:
    b          .L00002cd0
    li         $s1,19
.L00003248:
    sw         $a3,8($s0)
    lw         $v1,28($a3)
    sw         $v1,20($s0)
    lw         $v0,32($a3)
    sw         $v0,24($s0)
    lw         $at,0($sp)
    sll        $at,$at,0x2
    addu       $at,$a2,$at
    lw         $at,0($at)
    lw         $at,28($at)
    lw         $at,4($at)
    move       $a0,$s0
    jalr       $at
    lw         $a1,4($sp)
    beqz       $v0, .L000032b0
    move       $s1,$v0
    sw         $zero,20($s0)
    sw         $zero,24($s0)
    b          .L00002cd0
    sw         $zero,8($s0)
.L00003298:
    lw         $a3,8($s0)
    lw         $a0,8($a3)
    bnez       $a0, .L00002cd0
    nop
    b          .L00002cd0
    sw         $s0,8($a3)
.L000032b0:
    lw         $a3,8($s0)
    lw         $a1,8($a3)
    bnez       $a1, .L00002cd0
    nop
    b          .L00002cd0
    sw         $s0,8($a3)

glabel gfxmap
    jr         $ra
    li         $v0,54

glabel gfxunmap
    jr         $ra
    li         $v0,54

glabel gfx_shalloc
    addiu      $sp,$sp,-32
    sd         $ra,8($sp)
    jal        curthreadhandle
    sd         $s1,24($sp)
    jal        splhi
    move       $s1,$v0
    sd         $v0,0($sp)
    move       $a0,$s1
    jal        gfx_group_create
    sd         $s0,16($sp)
    move       $s0,$v0
    jal        gthread_find
    move       $a0,$s1
    beqz       $v0, .L00003374
    move       $s1,$v0
    move       $a0,$v0
    jal        gthread_attach_group
    move       $a1,$s0
    lw         $a0,8($s1)
    beqz       $a0, .L00003374
    nop
    jal        GfxListWriterLock
    nop
    lw         $a0,8($s1)
    lw         $a4,16($a0)
    li         $a5,1
    beqz       $a4, .L0000336c
    move       $a1,$v0
    lw         $at,4($a4)
    andi       $at,$at,0x8
    beqz       $at, .L00003390
    nop
.L00003358:
    sw         $s0,52($a4)
    lw         $a4,16($a4)
    bnez       $a4, .L00003358
    nop
    lw         $a0,8($s1)
.L0000336c:
    jal        GfxListWriterUnlock
    nop
.L00003374:
    jal        splx
    ld         $a0,0($sp)
    ld         $ra,8($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00003390:
    b          .L00003358
    sw         $a5,8($s0)

glabel gfx_shfree
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        curthreadhandle
    nop
    jal        gfx_group_find
    move       $a0,$v0
    jal        gfx_group_destroy
    move       $a0,$v0
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel gfx_frs_valid_pipenum
    lw         $v0,0($gp)
    jr         $ra
    slt        $v0,$a0,$v0
