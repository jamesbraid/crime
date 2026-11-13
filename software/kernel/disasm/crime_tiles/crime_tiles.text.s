.section .text
.set noat
.set noreorder


glabel crime_tileaddr_for_vice
    lui        $a6,0x0
    andi       $a5,$a0,0xffff
    addiu      $t0,$a6,0
    sll        $t1,$a5,0x3
    lw         $v0,0($gp)
    blez       $a5, .L00000048
    subu       $a7,$t1,$a5
    slt        $at,$a5,$v0
    beqz       $at, .L00000048
    sll        $t2,$a7,0x2
    addu       $t2,$t2,$a5
    sll        $t2,$t2,0x2
    addu       $t0,$t0,$t2
    lbu        $v0,58($t0)
    beqz       $v0, .L00000050
    li         $v0,19
.L00000040:
    jr         $ra
    nop
.L00000048:
    jr         $ra
    li         $v0,19
.L00000050:
    lw         $t3,0($t0)
    move       $a5,$zero
    bne        $t3, $a0, .L00000040
    li         $v0,19
    lw         $a0,76($t0)
    beqz       $a0, .L00000040
    li         $v0,19
    lw         $v0,12($a0)
    blez       $a2, .L000000e4
    lw         $v0,24($v0)
    addiu      $a5,$a5,1
.L0000007c:
    lh         $a0,0($a1)
    lbu        $a6,24($v0)
    andi       $a7,$a0,0xf
    slt        $v1,$a7,$a6
    addiu      $a1,$a1,2
    slt        $t1,$a5,$a2
    beqz       $v1, .L000000ec
    sra        $t0,$a0,0x4
    lbu        $a3,25($v0)
    slt        $a3,$t0,$a3
    beqz       $a3, .L000000ec
    nop
    mult       $t0,$a6
    lw         $a4,4($v0)
    mflo       $a0
    addu       $a0,$a7,$a0
    slt        $a4,$a0,$a4
    beqz       $a4, .L000000f4
    addu       $a7,$a0,$a0
    lw         $a6,8($v0)
    addu       $a6,$a6,$a7
    lhu        $a6,0($a6)
    beqz       $a6, .L000000fc
    addiu      $a5,$a5,1
    bnez       $t1, .L0000007c
    sh         $a6,-2($a1)
.L000000e4:
    jr         $ra
    move       $v0,$zero
.L000000ec:
    jr         $ra
    li         $v0,22
.L000000f4:
    jr         $ra
    li         $v0,22
.L000000fc:
    jr         $ra
    li         $v0,14

glabel crm_get_dms_tiles
    lw         $a3,32($a0)
    addiu      $sp,$sp,-240
    lw         $v0,0($a0)
    sd         $s1,224($sp)
    sd         $s0,216($sp)
    move       $s0,$a0
    beqz       $v0, .L000001ec
    sd         $ra,232($sp)
    beqz       $a3, .L00000208
    nop
.L0000012c:
    sw         $v0,0($sp)
    addiu      $a1,$sp,0
    jal        dms_block_info
    lw         $a0,32($s0)
    lw         $v0,16($sp)
    blez       $v0, .L00000284
    li         $a0,22
    lw         $a2,4($s0)
    beq        $a2, $v0, .L00000190
    slti       $at,$v0,257
    bnez       $at, .L00000164
    li         $a0,22
    b          .L000001d8
    ld         $ra,232($sp)
.L00000164:
    lw         $a0,8($s0)
    move       $a2,$v0
    beqz       $a0, .L00000180
    sw         $v0,4($s0)
    jal        kern_free
    nop
    lw         $a2,4($s0)
.L00000180:
    jal        kern_malloc
    addu       $a0,$a2,$a2
    lw         $a2,4($s0)
    sw         $v0,8($s0)
.L00000190:
    slti       $v0,$a2,33
    beqz       $v0, .L00000230
    addiu      $s1,$sp,64
.L0000019c:
    addiu      $a4,$sp,192
    lw         $a1,0($s0)
    move       $a3,$s1
    jal        dms_block_get_tile_list
    lw         $a0,32($s0)
    sd         $v0,208($sp)
    beqz       $v0, .L00000244
    lw         $a3,32($s0)
    jal        dms_close
    move       $a0,$a3
    addiu      $a0,$sp,64
    bne        $s1, $a0, .L00000220
    sw         $zero,32($s0)
    ld         $a0,208($sp)
.L000001d4:
    ld         $ra,232($sp)
.L000001d8:
    move       $v0,$a0
    ld         $s0,216($sp)
    ld         $s1,224($sp)
    jr         $ra
    addiu      $sp,$sp,240
.L000001ec:
    beqz       $a3, .L000001fc
    nop
    jal        dms_close
    move       $a0,$a3
.L000001fc:
    sw         $zero,32($s0)
    b          .L000001d4
    move       $a0,$zero
.L00000208:
    jal        dms_open
    addiu      $a0,$a0,32
    beqz       $v0, .L0000027c
    move       $a0,$v0
    b          .L000001d8
    ld         $ra,232($sp)
.L00000220:
    jal        kern_free
    move       $a0,$s1
    b          .L000001d4
    ld         $a0,208($sp)
.L00000230:
    jal        kern_malloc
    sll        $a0,$a2,0x2
    move       $s1,$v0
    b          .L0000019c
    lw         $a2,4($s0)
.L00000244:
    move       $a0,$a3
    lw         $a1,0($s0)
    jal        dms_block_start_dma
    li         $a2,3
    move       $a2,$zero
    beqz       $v0, .L0000028c
    sd         $v0,200($sp)
    jal        dms_close
    lw         $a0,32($s0)
    addiu      $a2,$sp,64
    bne        $s1, $a2, .L000002ec
    sw         $zero,32($s0)
.L00000274:
    b          .L000001d4
    ld         $a0,200($sp)
.L0000027c:
    b          .L0000012c
    lw         $v0,0($s0)
.L00000284:
    b          .L000001d8
    ld         $ra,232($sp)
.L0000028c:
    lw         $a3,4($s0)
    move       $v0,$zero
    blez       $a3, .L000002d0
    addiu      $a3,$sp,64
    move       $a0,$s1
.L000002a0:
    lw         $a5,0($a0)
    lw         $a6,8($s0)
    srl        $a5,$a5,0x4
    addu       $a6,$a6,$a2
    ori        $a5,$a5,0x8000
    sh         $a5,0($a6)
    lw         $a4,4($s0)
    addiu      $v0,$v0,1
    slt        $a4,$v0,$a4
    addiu      $a0,$a0,4
    bnez       $a4, .L000002a0
    addiu      $a2,$a2,2
.L000002d0:
    bne        $s1, $a3, .L000002fc
    nop
.L000002d8:
    jal        crmNextIncarnation
    nop
    sw         $v0,16($s0)
    b          .L000001d4
    move       $a0,$zero
.L000002ec:
    jal        kern_free
    move       $a0,$s1
    b          .L00000274
    nop
.L000002fc:
    jal        kern_free
    move       $a0,$s1
    b          .L000002d8
    nop

glabel crm_tileclassinit
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        tile_nclasses
    nop
    li         $a5,2
    lui        $a6,0x0
    sra        $a7,$v0,0x1
    ld         $ra,0($sp)
    li         $t0,1
    beq        $v0, $a5, .L000003b0
    srl        $a7,$a7,0x1e
    addu       $a3,$a7,$v0
    sra        $a3,$a3,0x2
    sllv       $a5,$t0,$v0
    addu       $t2,$a3,$a3
    sllv       $a2,$t0,$a3
    subu       $t2,$v0,$t2
    addiu      $a2,$a2,-1
    srl        $a4,$t2,0x1f
    addiu      $a5,$a5,-1
    sllv       $a3,$a2,$a3
    or         $t1,$a2,$a3
    addu       $a4,$a4,$t2
    sra        $a4,$a4,0x1
    xor        $a5,$a5,$t1
    srav       $a4,$a5,$a4
    nor        $t1,$a4,$zero
    and        $a4,$a5,$a4
    and        $a5,$a5,$t1
.L00000380:
    addiu      $a6,$a6,0
    li         $a7,-1
    sw         $a7,24($a6)
    sw         $a4,52($a6)
    sw         $a5,48($a6)
    sw         $a3,40($a6)
    sw         $a2,56($a6)
    sw         $a2,44($a6)
    sw         $a2,36($a6)
    addiu      $sp,$sp,16
    jr         $ra
    sw         $a2,32($a6)
.L000003b0:
    move       $a4,$t0
    move       $a3,$a5
    b          .L00000380
    li         $a2,1

glabel crmAllocTiles
    addiu      $sp,$sp,-48
    sd         $ra,24($sp)
    sd         $a0,0($sp)
    sd         $s0,8($sp)
    move       $s0,$a1
    sd         $s2,32($sp)
    move       $s2,$a2
    sll        $a0,$a1,0x2
    sd         $s7,16($sp)
    move       $s7,$a3
    jal        kern_malloc
    sd         $s1,40($sp)
    lui        $a3,0x0
    andi       $a4,$s2,0x8
    lw         $a3,20($a3)
    move       $s1,$v0
    beqz       $a4, .L0000040c
    ori        $a3,$a3,0x4
    ori        $a3,$a3,0x8
.L0000040c:
    lui        $a2,0x0
    sll        $a4,$s7,0x2
    addiu      $a2,$a2,24
    move       $a0,$s0
    addu       $a2,$a2,$a4
    move       $a1,$s1
    jal        tile_alloc
    lw         $a2,0($a2)
    move       $a6,$s1
    beqz       $v0, .L000004a4
    ld         $s7,16($sp)
    blez       $s0, .L00000480
    move       $a2,$zero
    ld         $a3,0($sp)
.L00000444:
    lw         $a5,0($a6)
    addiu      $a2,$a2,1
    slt        $a4,$a2,$s0
    srl        $a5,$a5,0x4
    sh         $a5,0($a3)
    beqz       $a4, .L00000480
    nop
    lw         $a7,4($a6)
    addiu      $a2,$a2,1
    slt        $t0,$a2,$s0
    addiu      $a3,$a3,4
    srl        $a7,$a7,0x4
    addiu      $a6,$a6,8
    bnez       $t0, .L00000444
    sh         $a7,-2($a3)
.L00000480:
    jal        kern_free
    move       $a0,$s1
    move       $v0,$zero
.L0000048c:
    ld         $ra,24($sp)
    ld         $s0,8($sp)
    ld         $s1,40($sp)
    ld         $s2,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000004a4:
    jal        kern_free
    move       $a0,$s1
    b          .L0000048c
    li         $v0,1

glabel crmFreeTiles
    addiu      $sp,$sp,-64
    sd         $s1,48($sp)
    sd         $ra,16($sp)
    sd         $s2,24($sp)
    sd         $a0,8($sp)
    sd         $s0,40($sp)
    lui        $at,0x0
    lw         $v0,0($at)
    sd         $v0,0($sp)
    addiu      $at,$at,0
    move       $s0,$a1
    sll        $a0,$a1,0x2
    lw         $at,12($at)
    move       $s2,$a3
    jal        kern_malloc
    sd         $at,32($sp)
    ld         $a6,8($sp)
    blez       $s0, .L00000544
    move       $s1,$v0
    move       $a5,$zero
    move       $a7,$v0
.L00000508:
    lhu        $a0,0($a6)
    addiu      $a5,$a5,1
    slt        $v1,$a5,$s0
    sll        $a0,$a0,0x4
    sw         $a0,0($a7)
    beqz       $v1, .L00000544
    nop
    lhu        $a1,2($a6)
    addiu      $a5,$a5,1
    slt        $a2,$a5,$s0
    addiu      $a7,$a7,8
    sll        $a1,$a1,0x4
    addiu      $a6,$a6,4
    bnez       $a2, .L00000508
    sw         $a1,-4($a7)
.L00000544:
    jal        curthreadhandle
    nop
    jal        gthread_find_gfxp
    move       $a0,$v0
    ld         $a1,32($sp)
    lw         $a1,4($a1)
    beqz       $a1, .L00000574
    move       $a0,$s0
    lw         $a2,48($a1)
    beq        $a2, $v0, .L000005c8
    ld         $a0,0($sp)
    move       $a0,$s0
.L00000574:
    move       $a1,$s1
    jal        tile_free
    move       $a2,$zero
    jal        kern_free
    move       $a0,$s1
    lui        $a4,0x0
    addu       $a6,$s2,$s2
    addiu      $a4,$a4,0
    ld         $s1,48($sp)
    addu       $a6,$a4,$a6
    lh         $a5,0($a6)
    ld         $ra,16($sp)
    subu       $a5,$a5,$s0
    sh         $a5,0($a6)
    lh         $a3,2($a4)
    ld         $s2,24($sp)
    subu       $a3,$a3,$s0
    sh         $a3,2($a4)
    ld         $s0,40($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L000005c8:
    lui        $a2,0xf
    lw         $a1,0($gp)
    jal        crmFifoWait
    ori        $a2,$a2,0x4240
    b          .L00000574
    move       $a0,$s0

glabel crmFreeChunk
    lw         $a3,4($a0)
    sw         $zero,16($a0)
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    beqz       $a3, .L000006b4
    move       $s0,$a0
    lw         $a2,12($a0)
    andi       $at,$a2,0x1
    move       $a0,$zero
    beqz       $at, .L00000678
    sd         $ra,8($sp)
    blez       $a3, .L00000660
    move       $a2,$zero
    move       $a4,$zero
    b          .L000006e0
    move       $a3,$zero
.L00000620:
    lw         $v0,4($s0)
    slt        $v0,$a0,$v0
    addiu      $a2,$a2,1
    beqz       $v0, .L00000660
    slti       $a5,$a2,256
    lw         $a7,8($s0)
.L00000638:
    addu       $a6,$a7,$a3
    lhu        $a6,0($a6)
    beqz       $a6, .L00000658
    addiu      $a3,$a3,2
    addiu      $a4,$a4,2
    addu       $t0,$a7,$a4
    addiu      $a0,$a0,1
    sh         $a6,-2($t0)
.L00000658:
    bnez       $a5, .L00000620
    nop
.L00000660:
    lw         $a2,28($s0)
    beqz       $a2, .L00000674
    li         $a1,1024
    jal        bzero
    addiu      $a0,$a2,8
.L00000674:
    lw         $a2,12($s0)
.L00000678:
    andi       $t1,$a2,0x20
    beqz       $t1, .L000006c0
    nop
    sw         $zero,0($s0)
    jal        crm_get_dms_tiles
    move       $a0,$s0
    lw         $t2,12($s0)
.L00000694:
    andi       $t2,$t2,0x1
    beqz       $t2, .L000006d8
    li         $a2,256
.L000006a0:
    addu       $a1,$a2,$a2
    jal        bzero
    lw         $a0,8($s0)
    ld         $ra,8($sp)
    sw         $zero,4($s0)
.L000006b4:
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L000006c0:
    lbu        $a3,21($s0)
    lw         $a1,4($s0)
    jal        crmFreeTiles
    lw         $a0,8($s0)
    b          .L00000694
    lw         $t2,12($s0)
.L000006d8:
    b          .L000006a0
    lw         $a2,4($s0)
.L000006e0:
    addiu      $a2,$a2,1
    slti       $a5,$a2,256
    b          .L00000638
    lw         $a7,8($s0)

glabel crmAllocChunk
    addiu      $sp,$sp,-48
    sd         $s0,16($sp)
    sd         $s3,0($sp)
    move       $s3,$a0
    sd         $s2,8($sp)
    move       $s2,$a1
    move       $s0,$a2
    sd         $s1,24($sp)
    move       $s1,$a3
    beqz       $a1, .L0000074c
    sd         $ra,32($sp)
    jal        crmAllocTiles
    lw         $a0,8($a0)
    beqz       $v0, .L0000074c
    li         $a0,1
.L0000072c:
    ld         $s3,0($sp)
    ld         $ra,32($sp)
    ld         $s2,8($sp)
    move       $v0,$a0
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0000074c:
    jal        crmNextIncarnation
    nop
    sb         $s1,21($s3)
    sb         $zero,23($s3)
    sb         $zero,22($s3)
    sw         $s0,12($s3)
    sw         $s2,4($s3)
    lui        $a0,0x0
    sw         $v0,16($s3)
    addiu      $a0,$a0,0
    lh         $v1,2($a0)
    addu       $v0,$s1,$s1
    addu       $v0,$a0,$v0
    addu       $v1,$v1,$s2
    sh         $v1,2($a0)
    lh         $at,0($v0)
    move       $a0,$zero
    addu       $at,$at,$s2
    b          .L0000072c
    sh         $at,0($v0)

glabel resizechunk
    addiu      $sp,$sp,-64
    sd         $s3,56($sp)
    mult       $a2,$a3
    sd         $ra,24($sp)
    sd         $s2,16($sp)
    sd         $s4,0($sp)
    move       $s4,$a1
    sd         $s1,32($sp)
    move       $s1,$a2
    move       $s2,$a3
    sd         $s0,48($sp)
    move       $s0,$a0
    sd         $s8,40($sp)
    mflo       $s8
    addu       $a0,$s8,$s8
    jal        kern_malloc
    sd         $a0,8($sp)
    move       $t3,$zero
    move       $t0,$zero
    lbu        $a3,25($s0)
    move       $t8,$zero
    move       $t1,$s4
    move       $a6,$v0
    move       $t9,$zero
    blez       $a3, .L00000934
    move       $s3,$v0
    lbu        $t2,24($s0)
    move       $t3,$zero
    move       $t0,$zero
.L00000810:
    blez       $t2, .L00000844
    move       $a7,$zero
.L00000818:
    lw         $v0,8($s0)
    addiu      $t8,$t8,2
    addu       $v0,$v0,$t8
    lhu        $v0,-2($v0)
    sh         $v0,0($a6)
    lbu        $t2,24($s0)
    addiu      $a7,$a7,1
    slt        $at,$a7,$t2
    addiu      $a6,$a6,2
    bnez       $at, .L00000818
    addiu      $t0,$t0,1
.L00000844:
    subu       $v1,$s1,$t2
    blez       $v1, .L0000087c
    move       $a7,$zero
.L00000850:
    lhu        $a1,0($t1)
    sh         $a1,0($a6)
    lbu        $t2,24($s0)
    addiu      $a7,$a7,1
    subu       $a0,$s1,$t2
    addiu      $a6,$a6,2
    slt        $a0,$a7,$a0
    addiu      $t0,$t0,1
    addiu      $t1,$t1,2
    bnez       $a0, .L00000850
    addiu      $t3,$t3,1
.L0000087c:
    lbu        $a3,25($s0)
    addiu      $t9,$t9,1
    slt        $a2,$t9,$a3
    bnez       $a2, .L00000810
    nop
    subu       $t8,$s2,$a3
.L00000894:
    mult       $s1,$t8
    move       $t9,$zero
    addu       $a0,$t0,$t0
    mflo       $t2
    addu       $t1,$t3,$t3
    addu       $a6,$s3,$a0
    ld         $v0,8($sp)
    blez       $t2, .L000008e4
    addu       $t1,$t1,$s4
.L000008b8:
    lhu        $v1,0($t1)
    sh         $v1,0($a6)
    lbu        $at,25($s0)
    subu       $at,$s2,$at
    mult       $s1,$at
    addiu      $t9,$t9,1
    mflo       $ra
    slt        $ra,$t9,$ra
    addiu      $a6,$a6,2
    bnez       $ra, .L000008b8
    addiu      $t1,$t1,2
.L000008e4:
    ld         $s4,0($sp)
    sb         $s1,24($s0)
    sb         $s2,25($s0)
    sw         $s8,4($s0)
    move       $a0,$s3
    lw         $a1,8($s0)
    jal        bcopy
    move       $a2,$v0
    ld         $s2,16($sp)
    ld         $s1,32($sp)
    ld         $s8,40($sp)
    jal        kern_free
    move       $a0,$s3
    jal        crmNextIncarnation
    ld         $s3,56($sp)
    ld         $ra,24($sp)
    sw         $v0,16($s0)
    ld         $s0,48($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00000934:
    b          .L00000894
    subu       $t8,$s2,$a3

glabel crmResizeFb
    lh         $a4,10($a0)
    addiu      $a4,$a4,127
    sra        $a3,$a4,0x6
    addiu      $sp,$sp,-96
    lw         $at,4($a0)
    srl        $a3,$a3,0x19
    sd         $s5,24($sp)
    addu       $a3,$a3,$a4
    lh         $s5,8($a0)
    andi       $at,$at,0x2
    sra        $a3,$a3,0x7
    sd         $s6,8($sp)
    move       $s6,$a3
    sd         $s0,16($sp)
    beqz       $at, .L00000980
    move       $s0,$a3
    addu       $s0,$a3,$a3
.L00000980:
    sd         $s3,40($sp)
    sd         $s8,48($sp)
    sd         $s2,56($sp)
    sd         $s4,64($sp)
    sd         $ra,72($sp)
    slti       $a5,$s0,17
    sd         $s1,80($sp)
    beqz       $a5, .L00000a80
    sd         $s7,88($sp)
    lui        $s2,0x0
    addiu      $s2,$s2,0
    lw         $a0,4($s2)
    beqz       $a0, .L00000bcc
    li         $a1,512
    lbu        $ra,20($s2)
    div        $zero,$a1,$ra
    mflo       $t8
    addu       $at,$t8,$s5
    addiu      $at,$at,-1
    div        $zero,$at,$t8
    mflo       $s1
    slti       $t9,$s1,17
    teq        $ra,$zero,0x7
    beqz       $t9, .L00000bc4
    teq        $t8,$zero,0x7
    lbu        $a2,24($s2)
    lbu        $a6,25($s2)
    slt        $v0,$a2,$s1
    bnez       $v0, .L00000a08
    slt        $v0,$a6,$s0
    beqz       $v0, .L00000c60
    nop
    b          .L00000a10
    move       $s1,$a2
.L00000a08:
    beqz       $v0, .L00000c48
    nop
.L00000a10:
    mult       $s1,$s0
    lui        $s7,0x0
    addiu      $s7,$s7,0
    lbu        $t8,20($s7)
    mflo       $s3
    div        $zero,$a1,$t8
    mflo       $a4
    addu       $t9,$a4,$s5
    addiu      $t9,$t9,-1
    div        $zero,$t9,$a4
    mflo       $a2
    teq        $t8,$zero,0x7
    slti       $v1,$a2,4
    subu       $s3,$s3,$a0
    teq        $a4,$zero,0x7
    beqz       $v1, .L00000c40
    move       $s8,$a2
    lbu        $a6,24($s7)
    lbu        $a0,25($s7)
    slt        $t8,$a6,$a2
    bnez       $t8, .L00000ab4
    slt        $v0,$a0,$a3
    beqz       $v0, .L00000c50
    move       $a2,$a6
    b          .L00000abc
    nop
.L00000a80:
    li         $v0,22
.L00000a84:
    ld         $s6,8($sp)
    ld         $s3,40($sp)
    ld         $s8,48($sp)
    ld         $s2,56($sp)
    ld         $s4,64($sp)
    ld         $s0,16($sp)
    ld         $ra,72($sp)
    ld         $s1,80($sp)
    ld         $s5,24($sp)
    ld         $s7,88($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L00000ab4:
    beqz       $v0, .L00000ac0
    move       $s6,$a0
.L00000abc:
    move       $s6,$a3
.L00000ac0:
    mult       $a2,$s6
    lw         $t8,4($s7)
    move       $s8,$a2
    mflo       $s4
    bnez       $s3, .L00000adc
    subu       $s4,$s4,$t8
.L00000ad8:
    beqz       $s4, .L00000c68
.L00000adc:
    addu       $a0,$s4,$s3
.L00000ae0:
    sd         $a0,0($sp)
    jal        kern_malloc
    addu       $a0,$a0,$a0
    move       $a0,$v0
    sd         $v0,32($sp)
    li         $a2,8
    ld         $a1,0($sp)
    jal        crmAllocTiles
    li         $a3,2
    beqz       $v0, .L00000b1c
    nop
    jal        kern_free
    ld         $a0,32($sp)
    b          .L00000a84
    li         $v0,12
.L00000b1c:
    beqz       $s1, .L00000b34
    move       $a0,$s2
    move       $a2,$s1
    ld         $a1,32($sp)
    jal        resizechunk
    move       $a3,$s0
.L00000b34:
    beqz       $s4, .L00000b54
    ld         $a1,32($sp)
    move       $a0,$s7
    addu       $a2,$s3,$s3
    move       $a3,$s6
    addu       $a1,$a1,$a2
    jal        resizechunk
    move       $a2,$s8
.L00000b54:
    jal        kern_free
    ld         $a0,32($sp)
    beqz       $s1, .L00000bbc
    lui        $v0,0x0
    lui        $a3,0x0
    lw         $v0,0($v0)
    addiu      $a3,$a3,0
    sb         $s0,25($a3)
    beqz       $v0, .L00000bbc
    sb         $s1,24($a3)
    lbu        $a0,20($v0)
    lbu        $v1,20($s2)
    beq        $v1, $a0, .L00000bb4
    li         $a3,512
    div        $zero,$a3,$a0
    mflo       $a1
    addu       $a2,$s5,$a1
    addiu      $a2,$a2,-1
    div        $zero,$a2,$a1
    teq        $a0,$zero,0x7
    teq        $a1,$zero,0x7
    mflo       $s1
.L00000bb4:
    sb         $s0,25($v0)
    sb         $s1,24($v0)
.L00000bbc:
    b          .L00000a84
    move       $v0,$zero
.L00000bc4:
    b          .L00000a84
    li         $v0,22
.L00000bcc:
    lui        $s7,0x0
    addiu      $s7,$s7,0
    lbu        $a6,20($s7)
    div        $zero,$a1,$a6
    mflo       $a5
    addu       $a7,$a5,$s5
    addiu      $a7,$a7,-1
    div        $zero,$a7,$a5
    mflo       $a2
    teq        $a6,$zero,0x7
    lbu        $a6,24($s7)
    slti       $a4,$a2,4
    lw         $t0,4($s7)
    teq        $a5,$zero,0x7
    lbu        $a0,25($s7)
    beqz       $a4, .L00000c40
    slt        $a7,$a6,$a2
    slt        $v0,$a0,$a3
    bnez       $a7, .L00000c70
    nop
    beqz       $v0, .L00000c68
    move       $s3,$zero
    mult       $a3,$a6
    move       $s1,$zero
    move       $s6,$a3
    move       $s8,$a6
    mflo       $s4
    b          .L00000ad8
    subu       $s4,$s4,$t0
.L00000c40:
    b          .L00000a84
    li         $v0,22
.L00000c48:
    b          .L00000a10
    move       $s0,$a6
.L00000c50:
    beqz       $s3, .L00000c68
    move       $s4,$zero
    b          .L00000ae0
    addu       $a0,$s4,$s3
.L00000c60:
    b          .L00000a84
    move       $v0,$zero
.L00000c68:
    b          .L00000a84
    move       $v0,$zero
.L00000c70:
    beqz       $v0, .L00000c98
    move       $a6,$t0
    move       $s3,$zero
    mult       $a2,$a3
    move       $s1,$zero
    move       $s6,$a3
    move       $s8,$a2
    mflo       $s4
    b          .L00000ad8
    subu       $s4,$s4,$t0
.L00000c98:
    move       $s3,$zero
    mult       $a2,$a0
    move       $s1,$zero
    move       $s6,$a0
    move       $s8,$a2
    mflo       $s4
    b          .L00000ad8
    subu       $s4,$s4,$t0

glabel crmAllocBackbuffer
    lw         $v0,8($a0)
    addiu      $sp,$sp,-48
    li         $at,32
    li         $a6,16
    sd         $s0,24($sp)
    move       $s0,$a0
    sd         $s1,32($sp)
    beq        $a3, $at, .L00000d4c
    move       $s1,$a3
    beq        $a3, $a6, .L00000d50
    sra        $a0,$s1,0x2
.L00000ce4:
    sd         $a1,16($sp)
    sd         $a2,8($sp)
    beqz       $v0, .L00000cfc
    sd         $ra,40($sp)
    jal        kern_free
    move       $a0,$v0
.L00000cfc:
    move       $a0,$s0
    jal        bzero
    li         $a1,40
    jal        kern_malloc
    li         $a0,512
    move       $a0,$v0
    sw         $v0,8($s0)
    jal        bzero
    li         $a1,512
    move       $a0,$s0
    move       $a1,$zero
    li         $a2,13
    jal        crmAllocChunk
    li         $a3,3
    beqz       $v0, .L00000d74
    ld         $ra,40($sp)
.L00000d3c:
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00000d4c:
    sra        $a0,$s1,0x2
.L00000d50:
    srl        $a0,$a0,0x1d
    addu       $a0,$a0,$s1
    li         $a3,512
    sra        $a0,$a0,0x3
    div        $zero,$a3,$a0
    teq        $a0,$zero,0x7
    mflo       $v1
    b          .L00000ce4
    sw         $v1,0($sp)
.L00000d74:
    lw         $a2,0($sp)
    ld         $a6,16($sp)
    addu       $a6,$a6,$a2
    addiu      $a6,$a6,-1
    div        $zero,$a6,$a2
    sra        $a5,$s1,0x2
    srl        $a5,$a5,0x1d
    ld         $a4,8($sp)
    addu       $a5,$a5,$s1
    sra        $a5,$a5,0x3
    addiu      $a4,$a4,127
    sra        $a3,$a4,0x6
    srl        $a3,$a3,0x19
    sb         $a5,20($s0)
    teq        $a2,$zero,0x7
    addu       $a3,$a3,$a4
    move       $v0,$zero
    sra        $a3,$a3,0x7
    sb         $a3,25($s0)
    mflo       $a1
    b          .L00000d3c
    sb         $a1,24($s0)

glabel crmAllocPbuffer
    addiu      $sp,$sp,-48
    sd         $s1,32($sp)
    li         $t0,512
    move       $s1,$a0
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    li         $at,32
    sra        $a6,$a3,0x2
    sd         $s0,24($sp)
    move       $s0,$a3
    srl        $a7,$a6,0x1d
    sd         $ra,40($sp)
    beq        $a3, $at, .L00000e18
    addu       $v0,$a7,$a3
    li         $v1,16
    beq        $a3, $v1, .L00000e18
    li         $a0,8
    bne        $a3, $a0, .L00000e34
    move       $a0,$s1
.L00000e18:
    sra        $a2,$v0,0x3
    div        $zero,$t0,$a2
    teq        $a2,$zero,0x7
    mflo       $a1
    nop
    sw         $a1,0($sp)
    move       $a0,$s1
.L00000e34:
    move       $a1,$zero
    li         $a2,12
    jal        crmAllocChunk
    move       $a3,$zero
    beqz       $v0, .L00000e5c
    ld         $ra,40($sp)
.L00000e4c:
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00000e5c:
    lw         $a4,0($sp)
    ld         $t0,8($sp)
    addu       $t0,$t0,$a4
    addiu      $t0,$t0,-1
    div        $zero,$t0,$a4
    sra        $a7,$s0,0x2
    srl        $a7,$a7,0x1d
    ld         $a6,16($sp)
    addu       $a7,$a7,$s0
    sra        $a7,$a7,0x3
    addiu      $a6,$a6,127
    sra        $a5,$a6,0x6
    srl        $a5,$a5,0x19
    sb         $a7,20($s1)
    teq        $a4,$zero,0x7
    addu       $a5,$a5,$a6
    move       $v0,$zero
    sra        $a5,$a5,0x7
    sb         $a5,25($s1)
    mflo       $a3
    b          .L00000e4c
    sb         $a3,24($s1)

glabel crmAllocPbufTiles
    lbu        $v1,25($a0)
    lbu        $v0,24($a0)
    mult       $v0,$v1
    addiu      $sp,$sp,-32
    sd         $s1,16($sp)
    move       $s1,$a1
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $ra,8($sp)
    mflo       $at
    sw         $at,4($a0)
    jal        kern_malloc
    addu       $a0,$at,$at
    sw         $v0,8($s0)
    bnez       $s1, .L00000f20
    lw         $a2,12($s0)
    move       $a0,$s0
    lw         $a1,4($s0)
    jal        crmAllocChunk
    li         $a3,8
    beqz       $v0, .L00000f44
    move       $s1,$v0
    jal        kern_free
    lw         $a0,8($s0)
    sw         $zero,4($s0)
    b          .L00000f44
    sw         $zero,8($s0)
.L00000f20:
    move       $a0,$v0
    lw         $a1,4($s0)
    li         $a3,9
    sb         $a3,21($s0)
    ori        $a2,$a2,0x20
    sw         $a2,12($s0)
    jal        bzero
    addu       $a1,$a1,$a1
    move       $s1,$zero
.L00000f44:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    move       $v0,$s1
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel crmDestroyPbuffer
    lw         $a3,32($a0)
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $a3, .L00000fd4
    sd         $ra,8($sp)
    lw         $a0,28($a3)
    li         $a1,282
    jal        psema
    lw         $a0,4($a0)
    bnez       $v0, .L00001020
    li         $a0,4
    jal        crmFreeChunk
    lw         $a0,32($s0)
    lw         $a3,32($s0)
    lw         $a0,8($a3)
    beqz       $a0, .L00000fb0
    nop
    jal        kern_free
    nop
    lw         $a3,32($s0)
.L00000fb0:
    lw         $a0,28($a3)
    jal        vsema
    lw         $a0,4($a0)
    lw         $a0,32($s0)
    jal        kern_free
    lw         $a0,28($a0)
    jal        kern_free
    lw         $a0,32($s0)
    sw         $zero,32($s0)
.L00000fd4:
    lw         $a0,24($s0)
    beqz       $a0, .L00001014
    ld         $ra,8($sp)
    jal        crmFreeChunk
    nop
    lw         $a0,24($s0)
    lw         $a2,8($a0)
    beqz       $a2, .L00001004
    nop
    jal        kern_free
    move       $a0,$a2
    lw         $a0,24($s0)
.L00001004:
    jal        kern_free
    nop
    sw         $zero,24($s0)
    ld         $ra,8($sp)
.L00001014:
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L00001020:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,0
    b          .L00001014
    ld         $ra,8($sp)

glabel crmAllocFrameBuffer
    move       $a7,$a1
    move       $a6,$a2
    addiu      $sp,$sp,-48
    li         $t3,512
    sd         $s1,24($sp)
    move       $s1,$a0
    li         $at,32
    sra        $t2,$a3,0x2
    sd         $s0,16($sp)
    move       $s0,$a3
    srl        $t1,$t2,0x1d
    sd         $ra,32($sp)
    beq        $a3, $at, .L000010e8
    addu       $t0,$t1,$a3
    li         $v0,16
    beq        $a3, $v0, .L000010e8
    li         $v1,8
    beq        $a3, $v1, .L000010e8
    li         $v0,256
.L00001080:
    addu       $a1,$a7,$v0
    addiu      $a1,$a1,-1
    div        $zero,$a1,$v0
    addiu      $a1,$a6,127
    sra        $a0,$a1,0x6
    srl        $a0,$a0,0x19
    addu       $a0,$a0,$a1
    sra        $a0,$a0,0x7
    mflo       $a1
    mult       $a0,$a1
    li         $a3,2
    li         $a2,12
    teq        $v0,$zero,0x7
    sd         $a1,8($sp)
    mflo       $a1
    sd         $a0,0($sp)
    jal        crmAllocChunk
    move       $a0,$s1
    beqz       $v0, .L000010fc
    ld         $ra,32($sp)
.L000010d8:
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000010e8:
    sra        $a2,$t0,0x3
    div        $zero,$t3,$a2
    mflo       $v0
    b          .L00001080
    teq        $a2,$zero,0x7
.L000010fc:
    ld         $a4,8($sp)
    sra        $a3,$s0,0x2
    sb         $a4,24($s1)
    srl        $a3,$a3,0x1d
    ld         $a4,0($sp)
    addu       $a3,$a3,$s0
    sb         $a4,25($s1)
    sra        $a3,$a3,0x3
    move       $v0,$zero
    b          .L000010d8
    sb         $a3,20($s1)

glabel crmAllocOverlayBuffer
    addiu      $a1,$a1,511
    addiu      $v1,$a2,127
    sra        $at,$a1,0x8
    sra        $v0,$v1,0x6
    srl        $v0,$v0,0x19
    srl        $at,$at,0x17
    addu       $v0,$v0,$v1
    addu       $at,$at,$a1
    sra        $v0,$v0,0x7
    sra        $at,$at,0x9
    mult       $at,$v0
    addiu      $sp,$sp,-32
    sd         $a0,8($sp)
    sd         $ra,0($sp)
    li         $a2,28
    li         $a3,5
    sd         $at,16($sp)
    mflo       $a1
    jal        crmAllocChunk
    sd         $v0,24($sp)
    beqz       $v0, .L00001188
    ld         $ra,0($sp)
.L00001180:
    jr         $ra
    addiu      $sp,$sp,32
.L00001188:
    ld         $a0,24($sp)
    ld         $v1,8($sp)
    ld         $a1,16($sp)
    sb         $a1,24($v1)
    li         $v0,1
    sb         $a0,25($v1)
    sb         $v0,20($v1)
    b          .L00001180
    move       $v0,$zero

glabel crmAllocCid
    addiu      $sp,$sp,-32
    sd         $a2,0($sp)
    li         $at,1280
    move       $v0,$a2
    sd         $s0,8($sp)
    move       $s0,$a0
    beq        $a1, $at, .L000011f0
    sd         $ra,16($sp)
    lw         $v1,4($a0)
    beqz       $v1, .L00001210
    addiu      $a2,$a2,127
    move       $a0,$zero
.L000011dc:
    ld         $ra,16($sp)
.L000011e0:
    move       $v0,$a0
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000011f0:
    move       $a1,$zero
    li         $a2,16
    jal        crmAllocChunk
    move       $a3,$zero
    beqz       $v0, .L00001234
    move       $a0,$v0
    b          .L000011e0
    ld         $ra,16($sp)
.L00001210:
    sra        $a1,$a2,0x6
    srl        $a1,$a1,0x19
    move       $a3,$zero
    addu       $a1,$a1,$a2
    li         $a2,8
    jal        crmAllocChunk
    sra        $a1,$a1,0x7
    b          .L000011dc
    move       $a0,$v0
.L00001234:
    li         $a1,32
    jal        bzero
    lw         $a0,8($s0)
    ld         $a5,0($sp)
    addiu      $a5,$a5,127
    sra        $a4,$a5,0x6
    srl        $a4,$a4,0x19
    addu       $a4,$a4,$a5
    sra        $a4,$a4,0x7
    blez       $a4, .L000012ac
    move       $v0,$zero
    move       $a2,$zero
    lui        $a5,0x0
    li         $a0,1
    addiu      $a5,$a5,0
.L00001270:
    lbu        $t2,24($a5)
    mult       $a0,$t2
    lw         $a6,8($a5)
    mflo       $t1
    addiu      $v0,$v0,1
    addu       $t1,$t1,$t1
    lw         $a7,8($s0)
    slt        $t0,$v0,$a4
    addu       $a6,$a6,$t1
    addiu      $a0,$a0,1
    addu       $a7,$a7,$a2
    lhu        $a6,-2($a6)
    addiu      $a2,$a2,2
    bnez       $t0, .L00001270
    sh         $a6,0($a7)
.L000012ac:
    sw         $a4,4($s0)
    b          .L000011dc
    move       $a0,$zero

glabel crmAllocGbeTables
    li         $a1,4
    move       $a2,$zero
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        crmAllocChunk
    move       $a3,$zero
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crmAllocZbuffer
    addiu      $sp,$sp,-48
    sd         $a2,8($sp)
    sd         $s0,24($sp)
    lw         $s0,4($a0)
    sd         $s1,40($sp)
    move       $s1,$a0
    sd         $a1,0($sp)
    nop
    sd         $ra,32($sp)
    jal        bzero
    li         $a1,1032
    li         $a0,40
    jal        kern_malloc
    sw         $s0,4($s1)
    move       $s0,$v0
    move       $a0,$v0
    jal        bzero
    li         $a1,40
    jal        kern_malloc
    li         $a0,512
    move       $a0,$v0
    sw         $v0,8($s0)
    jal        bzero
    li         $a1,512
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $s0,0($s1)
    li         $a3,4
    beq        $s1, $at, .L00001358
    sw         $s1,28($s0)
    li         $a3,8
.L00001358:
    move       $a0,$s0
    move       $a1,$zero
    jal        crmAllocChunk
    li         $a2,13
    li         $a4,4
    beqz       $v0, .L00001390
    sd         $v0,16($sp)
    jal        kern_free
    lw         $a0,8($s0)
    jal        kern_free
    move       $a0,$s0
    sw         $zero,0($s1)
    b          .L000013d0
    ld         $v0,16($sp)
.L00001390:
    ld         $a1,8($sp)
    ld         $a3,0($sp)
    addiu      $a1,$a1,127
    addiu      $a3,$a3,127
    sra        $a0,$a1,0x6
    sra        $a2,$a3,0x6
    srl        $a2,$a2,0x19
    sb         $a4,20($s0)
    srl        $a0,$a0,0x19
    addu       $a2,$a2,$a3
    addu       $a0,$a0,$a1
    sra        $a2,$a2,0x7
    sb         $a2,24($s0)
    move       $v0,$zero
    sra        $a0,$a0,0x7
    sb         $a0,25($s0)
.L000013d0:
    ld         $ra,32($sp)
    ld         $s0,24($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel crmAllocTex
    addiu      $sp,$sp,-80
    sd         $s4,32($sp)
    lw         $s4,4($a2)
    sd         $s3,48($sp)
    sd         $ra,56($sp)
    sd         $s2,24($sp)
    move       $v0,$a0
    move       $s2,$a2
    sd         $s1,40($sp)
    move       $s1,$a3
    beqz       $a1, .L000014b8
    sd         $s0,64($sp)
    lw         $s3,32($a1)
    beqz       $s3, .L000014b8
    nop
    beqz       $a3, .L00001510
    sd         $a0,8($sp)
.L00001428:
    lw         $at,8($s2)
    andi       $at,$at,0x1
    beqz       $at, .L000014c0
    li         $v0,7
    sd         $v0,16($sp)
.L0000143c:
    jal        kern_malloc
    li         $a0,40
    move       $s0,$v0
    move       $a0,$v0
    jal        bzero
    li         $a1,40
    beqz       $s1, .L0000153c
    li         $a2,34
.L0000145c:
    move       $a0,$s0
    move       $a1,$s4
    jal        crmAllocChunk
    ld         $a3,16($sp)
    beqz       $v0, .L000014cc
    move       $s4,$v0
    lw         $a0,8($s0)
    beqz       $a0, .L00001488
    nop
    jal        kern_free
    nop
.L00001488:
    jal        kern_free
    move       $a0,$s0
    beqz       $s1, .L0000152c
    move       $v0,$s4
.L00001498:
    ld         $s2,24($sp)
    ld         $s3,48($sp)
    ld         $ra,56($sp)
    ld         $s4,32($sp)
    ld         $s0,64($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L000014b8:
    b          .L00001498
    li         $v0,22
.L000014c0:
    li         $v1,6
    b          .L0000143c
    sd         $v1,16($sp)
.L000014cc:
    beqz       $s1, .L00001550
    ld         $a3,8($sp)
    lw         $a0,0($s2)
    sw         $a0,0($s0)
    jal        crm_get_dms_tiles
    move       $a0,$s0
    beqz       $v0, .L00001598
    move       $s4,$v0
    lw         $a0,8($s0)
    beqz       $a0, .L00001500
    nop
    jal        kern_free
    nop
.L00001500:
    jal        kern_free
    move       $a0,$s0
    b          .L00001498
    move       $v0,$s4
.L00001510:
    li         $a1,282
    jal        psema
    addiu      $a0,$s3,16
    beqz       $v0, .L00001428
    nop
    b          .L00001498
    li         $v0,4
.L0000152c:
    jal        vsema
    addiu      $a0,$s3,16
    b          .L00001498
    move       $v0,$s4
.L0000153c:
    jal        kern_malloc
    addu       $a0,$s4,$s4
    li         $a2,2
    b          .L0000145c
    sw         $v0,8($s0)
.L00001550:
    lw         $a2,312($a3)
    addiu      $a2,$a2,1
    sw         $a2,312($a3)
    addiu      $a1,$sp,0
    sw         $a2,0($s2)
    move       $a0,$s0
    jal        crmMapChunk
    sw         $a2,0($s0)
    beqz       $v0, .L00001598
    move       $s4,$v0
    jal        kern_free
    lw         $a0,8($s0)
    jal        kern_free
    move       $a0,$s0
    jal        vsema
    addiu      $a0,$s3,16
    b          .L00001498
    move       $v0,$s4
.L00001598:
    jal        kern_malloc
    li         $a0,12
    move       $s4,$v0
    move       $a0,$v0
    jal        bzero
    li         $a1,12
    sw         $s0,0($s4)
    lw         $a4,0($sp)
    sw         $a4,4($s4)
    lw         $a3,24($s3)
    sw         $a3,8($s4)
    beqz       $s1, .L000015dc
    sw         $s4,24($s3)
    lw         $a5,0($sp)
.L000015d0:
    move       $v0,$zero
    b          .L00001498
    sw         $a5,12($s2)
.L000015dc:
    jal        vsema
    addiu      $a0,$s3,16
    b          .L000015d0
    lw         $a5,0($sp)

glabel crmFreeTex
    addiu      $sp,$sp,-80
    sd         $a2,16($sp)
    sd         $s0,48($sp)
    move       $s0,$a1
    sd         $s3,32($sp)
    addiu      $s3,$a1,16
    li         $a1,282
    sd         $a0,24($sp)
    sd         $ra,40($sp)
    jal        psema
    move       $a0,$s3
    beqz       $v0, .L00001634
    li         $v0,-1
.L00001620:
    ld         $ra,40($sp)
    ld         $s3,32($sp)
    ld         $s0,48($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00001634:
    ld         $a0,24($sp)
    li         $a1,25
    addiu      $a0,$a0,476
    jal        mutex_lock
    sd         $a0,0($sp)
    lw         $a1,12($s0)
    addiu      $a1,$a1,-1
    blez       $a1, .L00001670
    sw         $a1,12($s0)
    jal        vsema
    move       $a0,$s3
    jal        mutex_unlock
    ld         $a0,0($sp)
    b          .L00001620
    move       $v0,$zero
.L00001670:
    lw         $a4,4($s0)
    beqz       $a4, .L0000178c
    lw         $v0,0($s0)
    sw         $v0,0($a4)
.L00001680:
    lw         $v0,0($s0)
    beqz       $v0, .L00001694
    nop
    lw         $a2,4($s0)
    sw         $a2,4($v0)
.L00001694:
    jal        mutex_unlock
    ld         $a0,0($sp)
    lw         $v0,24($s0)
    sd         $s2,56($sp)
    beqz       $v0, .L00001720
    sd         $s1,64($sp)
    b          .L000016ec
    sd         $s1,64($sp)
.L000016b4:
    jal        crmFreeChunk
    move       $a0,$s1
    lw         $a0,8($s1)
    beqz       $a0, .L000016d0
    nop
    jal        kern_free
    nop
.L000016d0:
    jal        kern_free
    move       $a0,$s1
    ld         $a0,8($sp)
    jal        kern_free
    lw         $s1,8($a0)
    beqz       $s1, .L0000171c
    move       $v0,$s1
.L000016ec:
    lw         $s1,0($v0)
    lw         $a3,12($s1)
    andi       $a3,$a3,0x20
    ld         $a4,16($sp)
    bnez       $a3, .L000016b4
    sd         $v0,8($sp)
    bnez       $a4, .L000016b4
    sd         $v0,8($sp)
    jal        crmUnmapChunk
    move       $a0,$s1
    b          .L000016b4
    nop
.L0000171c:
    sd         $s2,56($sp)
.L00001720:
    move       $s1,$s0
    b          .L00001748
    move       $s2,$zero
.L0000172c:
    jal        kmem_free
    li         $a1,464
    addiu      $s2,$s2,1
    sltiu      $a5,$s2,128
    addiu      $s1,$s1,4
    beqz       $a5, .L00001764
    sw         $zero,28($s1)
.L00001748:
    lw         $a0,32($s1)
    bnez       $a0, .L0000172c
    nop
    addiu      $s2,$s2,1
    sltiu      $a6,$s2,128
    bnez       $a6, .L00001748
    addiu      $s1,$s1,4
.L00001764:
    jal        vsema
    move       $a0,$s3
    ld         $s1,64($sp)
    ld         $s2,56($sp)
    jal        freesema
    move       $a0,$s3
    jal        kern_free
    move       $a0,$s0
    b          .L00001620
    move       $v0,$zero
.L0000178c:
    ld         $a7,24($sp)
    b          .L00001680
    sw         $v0,456($a7)

glabel crmDeallocTex
    addiu      $sp,$sp,-64
    lw         $a4,76($a0)
    sd         $s2,16($sp)
    li         $v0,22
    sd         $s3,8($sp)
    move       $s3,$a1
    beqz       $a4, .L000017e0
    sd         $ra,24($sp)
    lw         $s2,32($a4)
    beqz       $s2, .L00001864
    li         $v0,22
    li         $a1,282
    addiu      $a0,$s2,16
    jal        psema
    sd         $a0,0($sp)
    beqz       $v0, .L000017f4
    sd         $s0,40($sp)
    li         $v0,4
.L000017e0:
    ld         $ra,24($sp)
.L000017e4:
    ld         $s2,16($sp)
    ld         $s3,8($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L000017f4:
    lw         $s0,24($s2)
    sd         $s1,32($sp)
    beqz       $s0, .L00001848
    sd         $s4,48($sp)
    move       $s4,$zero
    b          .L00001830
    sd         $s1,32($sp)
.L00001810:
    lw         $at,12($s1)
    andi       $at,$at,0x20
    sltu       $at,$zero,$at
    beqz       $at, .L0000186c
    nop
.L00001824:
    lw         $s0,8($s0)
    beqz       $s0, .L00001848
    nop
.L00001830:
    lw         $s1,0($s0)
    lw         $v0,0($s1)
    beq        $v0, $s3, .L00001810
    nop
    b          .L00001824
    move       $s4,$s0
.L00001848:
    jal        vsema
    ld         $a0,0($sp)
    ld         $s4,48($sp)
    ld         $s0,40($sp)
    ld         $s1,32($sp)
    b          .L000017e0
    li         $v0,22
.L00001864:
    b          .L000017e4
    ld         $ra,24($sp)
.L0000186c:
    jal        crmUnmapChunk
    move       $a0,$s1
    jal        crmFreeChunk
    move       $a0,$s1
    lw         $a0,8($s1)
    beqz       $a0, .L00001890
    nop
    jal        kern_free
    nop
.L00001890:
    jal        kern_free
    move       $a0,$s1
    ld         $s1,32($sp)
    beqz       $s4, .L000018c8
    lw         $v0,8($s0)
    sw         $v0,8($s4)
.L000018a8:
    ld         $s4,48($sp)
    jal        kern_free
    move       $a0,$s0
    ld         $s0,40($sp)
    jal        vsema
    ld         $a0,0($sp)
    b          .L000017e0
    move       $v0,$zero
.L000018c8:
    b          .L000018a8
    sw         $v0,24($s2)

glabel crmDefineTex
    addiu      $sp,$sp,-160
    sd         $s7,64($sp)
    lw         $s7,8($a2)
    sd         $s2,56($sp)
    lw         $s2,4($a2)
    sd         $s5,136($sp)
    sd         $s1,128($sp)
    sd         $s6,120($sp)
    sd         $s0,112($sp)
    sd         $s4,48($sp)
    lw         $s4,76($a1)
    sd         $ra,104($sp)
    move       $v0,$a0
    sd         $s8,72($sp)
    move       $s8,$a2
    beqz       $s4, .L00001ba8
    sd         $s3,96($sp)
    lw         $s1,32($s4)
    beqz       $s1, .L000019b0
    sd         $a0,40($sp)
    jal        RRM_CheckValidFault
    lw         $a0,48($a1)
    bltz       $v0, .L00001bb0
    nop
    lw         $v0,0($s8)
    lui        $at,0x8000
    and        $at,$v0,$at
    beqz       $at, .L000019b8
    li         $s3,32
.L00001944:
    lui        $s5,0x7fff
    ori        $s5,$s5,0xffff
    and        $s5,$v0,$s5
    sltiu      $v1,$s5,128
    bnez       $v1, .L00001990
    sw         $s5,0($s8)
    li         $v0,22
.L00001960:
    ld         $s5,136($sp)
    ld         $s1,128($sp)
    ld         $s6,120($sp)
    ld         $s0,112($sp)
    ld         $s3,96($sp)
    ld         $s2,56($sp)
    ld         $ra,104($sp)
    ld         $s4,48($sp)
    ld         $s7,64($sp)
    ld         $s8,72($sp)
    jr         $ra
    addiu      $sp,$sp,160
.L00001990:
    li         $a1,282
    addiu      $s0,$s1,16
    jal        psema
    move       $a0,$s0
    beqz       $v0, .L000019c0
    sll        $s6,$s5,0x2
    b          .L00001960
    li         $v0,4
.L000019b0:
    b          .L00001960
    li         $v0,22
.L000019b8:
    b          .L00001944
    move       $s3,$zero
.L000019c0:
    addu       $s6,$s1,$s6
    lw         $a0,32($s6)
    sd         $s1,16($sp)
    sd         $s4,24($sp)
    beqz       $a0, .L00001cac
    sd         $s0,32($sp)
    move       $s4,$a0
    move       $a5,$zero
.L000019e0:
    addiu      $a5,$a5,1
    sltiu      $t8,$a5,29
    sd         $zero,8($a0)
    beqz       $t8, .L00001a14
    addiu      $a5,$a5,1
    sltiu      $t9,$a5,29
    sd         $zero,24($a0)
    beqz       $t9, .L00001a14
    addiu      $a5,$a5,1
    sltiu      $ra,$a5,29
    addiu      $a0,$a0,48
    bnez       $ra, .L000019e0
    sd         $zero,-8($a0)
.L00001a14:
    move       $s5,$zero
    move       $a2,$s8
    li         $s6,5
    move       $s0,$zero
    move       $a1,$zero
    lui        $t1,0x0
    move       $s1,$zero
    addiu      $t1,$t1,0
.L00001a34:
    lw         $a6,12($a2)
    beqz       $a6, .L00001b50
    li         $t2,1
    beqz       $s3, .L00001bb8
    addiu      $a1,$a1,1
    beqz       $s1, .L00001bbc
    ld         $v0,16($sp)
.L00001a50:
    beqz       $s3, .L00001a68
    nop
    sd         $a1,144($sp)
    sd         $t1,80($sp)
    beq        $a1, $t2, .L00001c64
    sd         $a2,88($sp)
.L00001a68:
    mult       $s2,$s7
    lw         $t3,4($s1)
    mflo       $t8
    slt        $t3,$t3,$t8
    bnez       $t3, .L00001c8c
    move       $v0,$zero
    beqz       $s3, .L00001c5c
    nop
.L00001a88:
    lw         $a6,0($t1)
    beqz       $s7, .L00001b50
    addu       $t0,$s0,$s0
.L00001a94:
    beqz       $s2, .L00001b34
    addiu      $a7,$a6,-1
    b          .L00001d1c
    move       $a5,$zero
.L00001aa4:
    lw         $t9,4($s1)
    sltu       $t9,$s0,$t9
    beqz       $t9, .L00001b98
    addiu      $a7,$a7,1
    addiu      $s0,$s0,1
    lw         $ra,8($s1)
    andi       $v1,$a6,0x3
    srl        $at,$a6,0x2
    sll        $at,$at,0x4
    addu       $ra,$ra,$t0
    addu       $v1,$v1,$v1
    addu       $at,$s4,$at
    lhu        $ra,0($ra)
    addiu      $a6,$a6,1
    addu       $at,$at,$v1
    addiu      $t0,$t0,2
    ori        $ra,$ra,0x8000
    sh         $ra,8($at)
.L00001aec:
    sltu       $v1,$a5,$s2
    beqz       $v1, .L00001b34
    addiu      $a5,$a5,1
.L00001af8:
    beqz       $s3, .L00001aa4
    nop
    bne        $s6, $s5, .L00001aa4
    andi       $a4,$a6,0x3
    srl        $a3,$a6,0x2
    andi       $a0,$a7,0x3
    sll        $a3,$a3,0x4
    addu       $a0,$a0,$a0
    addu       $a3,$s4,$a3
    addu       $a4,$a4,$a4
    addu       $a0,$a3,$a0
    addu       $a3,$a3,$a4
    lhu        $a0,8($a0)
    b          .L00001aec
    sh         $a0,8($a3)
.L00001b34:
    li         $a5,4
    addiu      $v0,$v0,1
    beqz       $s5, .L00001c54
    sltu       $a7,$v0,$s7
.L00001b44:
    subu       $a4,$a5,$s2
    bnez       $a7, .L00001a94
    addu       $a6,$a6,$a4
.L00001b50:
    addiu      $a2,$a2,4
    addiu      $s5,$s5,1
    beqz       $a1, .L00001b80
    sltiu      $v0,$s5,6
    slti       $a6,$s2,2
    slti       $a5,$s7,2
    bnez       $a6, .L00001b74
    nop
    sra        $s2,$s2,0x1
.L00001b74:
    bnez       $a5, .L00001b80
    nop
    sra        $s7,$s7,0x1
.L00001b80:
    bnez       $v0, .L00001a34
    addiu      $t1,$t1,4
    jal        vsema
    ld         $a0,32($sp)
    b          .L00001960
    move       $v0,$zero
.L00001b98:
    jal        vsema
    ld         $a0,32($sp)
    b          .L00001960
    li         $v0,22
.L00001ba8:
    b          .L00001960
    li         $v0,22
.L00001bb0:
    b          .L00001960
    li         $v0,4
.L00001bb8:
    ld         $v0,16($sp)
.L00001bbc:
    lw         $v0,24($v0)
    beqz       $v0, .L00001c04
    nop
    b          .L00001be0
    lw         $a0,0($v0)
.L00001bd0:
    lw         $v0,8($v0)
    beqz       $v0, .L00001c04
    nop
    lw         $a0,0($v0)
.L00001be0:
    lw         $v1,0($a0)
    bne        $v1, $a6, .L00001bd0
    nop
    lw         $a3,12($a0)
    andi       $a3,$a3,0x20
    bne        $s3, $a3, .L00001bd0
    nop
    bnez       $a0, .L00001a50
    move       $s1,$a0
.L00001c04:
    sd         $t1,80($sp)
    sd         $a2,88($sp)
    beqz       $s3, .L00001d0c
    sd         $a1,144($sp)
    sw         $zero,8($sp)
    ld         $a1,24($sp)
    sw         $zero,4($sp)
    li         $a3,1
    ld         $a0,40($sp)
    addiu      $a2,$sp,0
    jal        crmAllocTex
    sw         $a6,0($sp)
    ld         $a1,144($sp)
    ld         $a2,88($sp)
    bnez       $v0, .L00001c9c
    ld         $t1,80($sp)
    ld         $s1,16($sp)
    lw         $s1,24($s1)
    b          .L00001a68
    lw         $s1,0($s1)
.L00001c54:
    b          .L00001b44
    li         $a5,8
.L00001c5c:
    b          .L00001a88
    move       $s0,$zero
.L00001c64:
    jal        crm_get_dms_tiles
    move       $a0,$s1
    ld         $a1,144($sp)
    ld         $a2,88($sp)
    beqz       $v0, .L00001a68
    ld         $t1,80($sp)
    jal        vsema
    ld         $a0,32($sp)
    b          .L00001960
    li         $v0,22
.L00001c8c:
    jal        vsema
    ld         $a0,32($sp)
    b          .L00001960
    li         $v0,22
.L00001c9c:
    jal        vsema
    ld         $a0,32($sp)
    b          .L00001960
    li         $v0,22
.L00001cac:
    li         $a1,2304
    jal        kmem_alloc
    li         $a0,464
    move       $s0,$v0
    move       $s4,$v0
    li         $a1,464
    move       $a0,$v0
    jal        bzero
    sw         $v0,32($s6)
    ld         $a6,40($sp)
    lw         $a6,120($a6)
    move       $a5,$s0
    move       $a2,$zero
    addiu      $a6,$a6,5632
.L00001ce4:
    addiu      $a2,$a2,1
    dsll32     $a7,$a6,0x0
    sltiu      $t0,$a2,28
    addiu      $a5,$a5,16
    dsrl32     $a7,$a7,0x0
    addiu      $a6,$a6,8
    bnez       $t0, .L00001ce4
    sd         $a7,-16($a5)
    b          .L00001a14
    sd         $zero,448($s0)
.L00001d0c:
    jal        vsema
    ld         $a0,32($sp)
    b          .L00001960
    li         $v0,22
.L00001d1c:
    addiu      $a5,$a5,1
    b          .L00001af8
    nop

glabel crmLoadTexTlb
    lw         $a5,28($a0)
    lw         $a4,32($a0)
    sll        $a5,$a5,0x2
    addu       $a4,$a4,$a5
    lui        $a3,0xa000
    move       $a2,$zero
    lw         $a4,32($a4)
.L00001d44:
    lw         $t0,4($a4)
    addiu      $a2,$a2,1
    sltiu      $a6,$a2,28
    ld         $a7,8($a4)
    or         $t0,$a3,$t0
    sd         $a7,0($t0)
    beqz       $a6, .L00001d84
    nop
    lw         $t2,20($a4)
    addiu      $a2,$a2,1
    sltiu      $t3,$a2,28
    ld         $t1,24($a4)
    or         $t2,$a3,$t2
    addiu      $a4,$a4,32
    bnez       $t3, .L00001d44
    sd         $t1,0($t2)
.L00001d84:
    jr         $ra
    nop

glabel crmMapPages
    addiu      $sp,$sp,-48
    sd         $a1,16($sp)
    move       $a3,$zero
    move       $at,$a0
    sd         $s0,24($sp)
    move       $s0,$a2
    sd         $a0,8($sp)
    move       $a0,$a2
    sd         $ra,32($sp)
    jal        crmCreateRegion
    move       $a2,$at
    beqz       $v0, .L00001dd0
    nop
.L00001dc0:
    ld         $ra,32($sp)
.L00001dc4:
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00001dd0:
    jal        ddv_lock
    lw         $a0,0($s0)
    ld         $a3,16($sp)
    ld         $a2,8($sp)
    move       $a1,$zero
    lw         $a0,0($s0)
    addiu      $a3,$a3,4095
    jal        ddv_mappages
    srl        $a3,$a3,0xc
    sd         $v0,0($sp)
    jal        ddv_unlock
    lw         $a0,0($s0)
    ld         $a4,0($sp)
    beqz       $a4, .L00001e1c
    move       $v0,$zero
    jal        gfxdd_munmap
    lw         $a0,0($s0)
    b          .L00001dc0
    ld         $v0,0($sp)
.L00001e1c:
    b          .L00001dc4
    ld         $ra,32($sp)

glabel crmUnmapPages
    lw         $at,0($a0)
    sw         $zero,0($a0)
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        gfxdd_munmap
    move       $a0,$at
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16

glabel crmMapChunk
    lw         $a3,12($a0)
    sw         $zero,0($a1)
    addiu      $sp,$sp,-128
    sd         $a1,64($sp)
    move       $a2,$zero
    lw         $a1,4($a0)
    sd         $s0,96($sp)
    move       $s0,$a0
    addiu      $a0,$a0,36
    sd         $s1,104($sp)
    andi       $a3,$a3,0x2
    sll        $a1,$a1,0x10
    sd         $ra,88($sp)
    jal        crmCreateRegion
    sltiu      $a3,$a3,1
    beqz       $v0, .L00001ea8
    move       $s1,$v0
.L00001e90:
    ld         $ra,88($sp)
.L00001e94:
    ld         $s0,96($sp)
    move       $v0,$s1
    ld         $s1,104($sp)
    jr         $ra
    addiu      $sp,$sp,128
.L00001ea8:
    lw         $a5,12($s0)
    andi       $a5,$a5,0x1
    beqz       $a5, .L00001edc
    nop
    lw         $a0,4($s0)
    jal        kern_malloc
    addu       $a0,$a0,$a0
    move       $a1,$v0
    sd         $v0,80($sp)
    jal        crm_update_sz_tiles
    move       $a0,$s0
    b          .L00001ee4
    nop
.L00001edc:
    lw         $a3,8($s0)
    sd         $a3,80($sp)
.L00001ee4:
    jal        ddv_lock
    lw         $a0,36($s0)
    lw         $a4,4($s0)
    sd         $s2,112($sp)
    move       $s2,$zero
    blez       $a4, .L00001f90
    sd         $s3,120($sp)
    ld         $s3,80($sp)
    sd         $zero,72($sp)
.L00001f08:
    lhu        $v0,0($s3)
    addiu      $a5,$sp,0
    sll        $v0,$v0,0x4
    move       $a4,$zero
    addiu      $v0,$v0,-1
.L00001f1c:
    addiu      $a4,$a4,1
    slti       $v1,$a4,16
    addiu      $v0,$v0,1
    sw         $v0,0($a5)
    beqz       $v1, .L00001f48
    addiu      $a4,$a4,1
    slti       $a0,$a4,16
    addiu      $a5,$a5,8
    addiu      $v0,$v0,1
    bnez       $a0, .L00001f1c
    sw         $v0,-4($a5)
.L00001f48:
    move       $a1,$s2
    addiu      $a2,$sp,0
    li         $a3,16
    lw         $a0,36($s0)
    jal        ddv_mappfns
    move       $a4,$zero
    move       $s1,$v0
    lui        $a1,0x1
    ld         $a2,72($sp)
    bnez       $v0, .L00001f90
    daddu      $s2,$a1,$s2
    lw         $a3,4($s0)
    addiu      $a2,$a2,1
    sd         $a2,72($sp)
    slt        $a2,$a2,$a3
    addiu      $s3,$s3,2
    bnez       $a2, .L00001f08
    nop
.L00001f90:
    jal        ddv_unlock
    lw         $a0,36($s0)
    ld         $s3,120($sp)
    beqz       $s1, .L00001fcc
    ld         $s2,112($sp)
    lw         $a4,12($s0)
    andi       $a4,$a4,0x1
    beqz       $a4, .L00001fbc
    nop
    jal        kern_free
    ld         $a0,80($sp)
.L00001fbc:
    jal        gfxdd_munmap
    lw         $a0,36($s0)
    b          .L00001e94
    ld         $ra,88($sp)
.L00001fcc:
    jal        ddv_getaddr
    lw         $a0,36($s0)
    ld         $a5,64($sp)
    move       $s1,$zero
    b          .L00001e90
    sw         $v0,0($a5)

glabel crmCreateRegion
    move       $at,$a0
    move       $a0,$a3
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        gfxdd_mmap_mem
    move       $a3,$at
    beqz       $v0, .L00002010
    ld         $ra,0($sp)
    li         $v0,12
.L00002008:
    jr         $ra
    addiu      $sp,$sp,16
.L00002010:
    b          .L00002008
    move       $v0,$zero

glabel crm_update_sz_tiles
    beqz       $a0, .L00002090
    move       $v0,$zero
    move       $a5,$zero
    move       $a4,$zero
    addiu      $a5,$a5,1
.L0000202c:
    lw         $a6,8($a0)
    addu       $a6,$a6,$a4
    lhu        $a6,0($a6)
    slti       $a7,$a5,256
    addiu      $a5,$a5,1
    beqz       $a6, .L00002054
    addiu      $a4,$a4,2
    sh         $a6,0($a1)
    addiu      $a1,$a1,2
    addiu      $v0,$v0,1
.L00002054:
    beqz       $a7, .L00002088
    nop
    lw         $a6,8($a0)
    addu       $a6,$a6,$a4
    lhu        $a6,0($a6)
    slti       $a7,$a5,256
    beqz       $a6, .L00002080
    addiu      $a4,$a4,2
    sh         $a6,0($a1)
    addiu      $a1,$a1,2
    addiu      $v0,$v0,1
.L00002080:
    bnez       $a7, .L0000202c
    addiu      $a5,$a5,1
.L00002088:
    jr         $ra
    nop
.L00002090:
    move       $v0,$zero
    jr         $ra
    nop

glabel crm_tile_list
    lw         $at,12($a0)
    andi       $at,$at,0x1
    move       $v0,$zero
    addiu      $sp,$sp,-16
    move       $a5,$zero
    beqz       $at, .L000020cc
    sd         $ra,0($sp)
    jal        crm_update_sz_tiles
    nop
    ld         $ra,0($sp)
    b          .L00002130
    move       $a0,$v0
.L000020cc:
    blez       $a2, .L0000211c
    nop
.L000020d4:
    lw         $a3,8($a0)
    addiu      $v0,$v0,1
    slt        $v1,$v0,$a2
    addu       $a3,$a3,$a5
    lhu        $a3,0($a3)
    addiu      $a5,$a5,2
    sh         $a3,0($a1)
    beqz       $v1, .L0000211c
    nop
    lw         $a4,8($a0)
    addiu      $v0,$v0,1
    slt        $a6,$v0,$a2
    addu       $a4,$a4,$a5
    addiu      $a1,$a1,4
    lhu        $a4,0($a4)
    addiu      $a5,$a5,2
    bnez       $a6, .L000020d4
    sh         $a4,-2($a1)
.L0000211c:
    slt        $a5,$a2,$zero
    move       $a0,$a2
    beqz       $a5, .L00002130
    nop
    move       $a0,$zero
.L00002130:
    move       $v0,$a0
    jr         $ra
    addiu      $sp,$sp,16

glabel crmUnmapChunk
    lw         $at,36($a0)
    sw         $zero,36($a0)
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        gfxdd_munmap
    move       $a0,$at
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16

glabel crmValidateDrawable
    addiu      $sp,$sp,-48
    sd         $s4,16($sp)
    lw         $s4,120($a0)
    sd         $s0,24($sp)
    sd         $s2,0($sp)
    move       $s2,$a0
    sd         $s3,8($sp)
    move       $s3,$a1
    move       $s0,$a1
    sd         $s1,32($sp)
    move       $s1,$zero
    b          .L000021b0
    sd         $ra,40($sp)
.L00002198:
    jal        crmLoadTlbABC
    move       $a2,$s1
    addiu      $s1,$s1,1
    slti       $at,$s1,3
    beqz       $at, .L000021cc
    addiu      $s0,$s0,4
.L000021b0:
    lw         $a1,0($s0)
    bnez       $a1, .L00002198
    move       $a0,$s2
    addiu      $s1,$s1,1
    slti       $v0,$s1,3
    bnez       $v0, .L000021b0
    addiu      $s0,$s0,4
.L000021cc:
    lw         $v1,36($s3)
    move       $a2,$s3
    move       $a4,$s4
    beqz       $v1, .L00002260
    li         $a0,1
    move       $a5,$zero
.L000021e4:
    sw         $a0,180($s2)
.L000021e8:
    ld         $a3,80($a2)
    addiu      $a5,$a5,1
    sd         $a3,5888($a4)
    slti       $a1,$a5,16
    addiu      $a4,$a4,8
    ld         $a0,208($a2)
    addiu      $a2,$a2,8
    bnez       $a1, .L000021e8
    sd         $a0,6008($a4)
.L0000220c:
    sw         $zero,16392($s4)
    lw         $a0,32($s3)
    beqz       $a0, .L00002234
    ld         $s2,0($sp)
    lw         $a4,28($s3)
    sll        $a4,$a4,0x2
    addu       $a4,$a0,$a4
    lw         $a4,32($a4)
    bnez       $a4, .L00002250
.L00002230:
    ld         $s2,0($sp)
.L00002234:
    ld         $s3,8($sp)
    ld         $ra,40($sp)
    ld         $s4,16($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00002250:
    jal        crmLoadTexTlb
    move       $a0,$s3
    b          .L00002230
    sw         $zero,16392($s4)
.L00002260:
    lw         $a5,52($s3)
    bnez       $a5, .L000021e4
    move       $a5,$zero
    lw         $a6,180($s2)
    move       $a1,$s4
    beqz       $a6, .L0000220c
    move       $a0,$zero
    sw         $zero,180($s2)
.L00002280:
    addiu      $a0,$a0,1
    slti       $a7,$a0,16
    sd         $zero,5888($a1)
    sd         $zero,6016($a1)
    beqz       $a7, .L0000220c
    addiu      $a0,$a0,1
    addiu      $a1,$a1,16
    slti       $t0,$a0,16
    sd         $zero,5880($a1)
    bnez       $t0, .L00002280
    sd         $zero,6008($a1)
    b          .L0000220c
    nop

glabel crmLoadTlbABC
    lw         $a5,16($a1)
    addiu      $sp,$sp,-48
    sd         $s0,24($sp)
    sll        $a4,$a2,0x2
    lw         $s0,120($a0)
    addu       $a4,$a4,$a0
    lw         $at,164($a4)
    li         $a7,2
    li         $a6,1
    addiu      $t1,$s0,4608
    beq        $at, $a5, .L00002368
    addiu      $t0,$s0,4096
    beqz       $a2, .L0000244c
    sw         $a5,164($a4)
    beq        $a2, $a6, .L00002454
    addiu      $a3,$s0,5120
    beq        $a2, $a7, .L0000245c
    nop
.L000022fc:
    lw         $a5,12($a1)
    lbu        $a6,25($a1)
    andi       $a5,$a5,0x1
    lw         $a2,0($sp)
    lui        $a3,0xa000
    beqz       $a5, .L00002374
    sd         $ra,32($sp)
    sll        $a5,$a6,0x2
    lw         $a4,8($a1)
    blez       $a5, .L00002364
    move       $a1,$zero
.L00002328:
    addiu      $a1,$a1,1
    slt        $a6,$a1,$a5
    ld         $a7,0($a4)
    or         $t0,$a3,$a2
    addiu      $a2,$a2,8
    sd         $a7,0($t0)
    beqz       $a6, .L00002364
    addiu      $a1,$a1,1
    slt        $t3,$a1,$a5
    or         $t2,$a3,$a2
    addiu      $a2,$a2,8
    ld         $t1,8($a4)
    addiu      $a4,$a4,16
    bnez       $t3, .L00002328
    sd         $t1,0($t2)
.L00002364:
    sw         $zero,16392($s0)
.L00002368:
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00002374:
    lbu        $t8,23($a1)
    lbu        $t0,24($a1)
    li         $ra,3
    lbu        $a7,22($a1)
    addu       $t1,$t8,$a6
    move       $a4,$zero
    sd         $t1,16($sp)
    slt        $t1,$t8,$t1
    addiu      $t9,$sp,8
    lui        $a3,0xa000
    beqz       $t1, .L00002440
    addu       $a7,$a7,$t0
    addiu      $t3,$a7,-1
    addu       $a5,$a4,$a4
.L000023ac:
    lbu        $a2,22($a1)
    sll        $t0,$t8,0x2
    slt        $t2,$a2,$a7
    addiu      $t8,$t8,1
    andi       $v1,$a2,0x3
    beqz       $t2, .L00002430
    addu       $v0,$v1,$v1
    sd         $zero,8($sp)
    sra        $t2,$a2,0x2
    or         $t1,$t0,$t2
.L000023d4:
    lw         $at,8($a1)
    addiu      $a4,$a4,1
    addu       $at,$at,$a5
    sll        $a6,$t1,0x3
    addu       $v0,$t9,$v0
    lhu        $at,0($at)
    addiu      $a5,$a5,2
    beq        $v1, $ra, .L000023fc
    sh         $at,0($v0)
    bne        $a2, $t3, .L00002414
.L000023fc:
    lw         $v1,0($sp)
    ld         $v0,8($sp)
    addu       $v1,$v1,$a6
    sd         $zero,8($sp)
    or         $v1,$a3,$v1
    sd         $v0,0($v1)
.L00002414:
    addiu      $a2,$a2,1
    andi       $v1,$a2,0x3
    slt        $a0,$a2,$a7
    sra        $t2,$a2,0x2
    addu       $v0,$v1,$v1
    bnez       $a0, .L000023d4
    or         $t1,$t0,$t2
.L00002430:
    ld         $a2,16($sp)
    slt        $a2,$t8,$a2
    bnez       $a2, .L000023ac
    addu       $a5,$a4,$a4
.L00002440:
    ld         $ra,32($sp)
    b          .L00002368
    sw         $zero,16392($s0)
.L0000244c:
    b          .L000022fc
    sw         $t0,0($sp)
.L00002454:
    b          .L000022fc
    sw         $t1,0($sp)
.L0000245c:
    b          .L000022fc
    sw         $a3,0($sp)

glabel crmLoadCidTlb
    move       $a4,$zero
    move       $a3,$zero
    li         $a6,3
    addiu      $sp,$sp,-16
    sd         $zero,0($sp)
    b          .L000024f4
    addiu      $a7,$sp,0
.L00002480:
    addiu      $a3,$a3,1
    slti       $at,$a3,16
    addiu      $a4,$a4,2
    beqz       $at, .L000024e8
    andi       $a5,$a3,0x3
    lw         $v0,4($a1)
.L00002498:
    slt        $v0,$a3,$v0
    beqz       $v0, .L000024bc
    nop
    lw         $v1,8($a1)
    addu       $a2,$a5,$a5
    addu       $v1,$v1,$a4
    addu       $a2,$a7,$a2
    lhu        $v1,0($v1)
    sh         $v1,0($a2)
.L000024bc:
    bne        $a5, $a6, .L00002480
    sra        $a5,$a3,0x1
    srl        $a5,$a5,0x1e
    addu       $a5,$a5,$a3
    sra        $a5,$a5,0x2
    ld         $a2,0($sp)
    sll        $a5,$a5,0x3
    sd         $zero,0($sp)
    addu       $a5,$a0,$a5
    b          .L00002480
    sd         $a2,5856($a5)
.L000024e8:
    sw         $zero,16392($a0)
    jr         $ra
    addiu      $sp,$sp,16
.L000024f4:
    andi       $a5,$a3,0x3
    b          .L00002498
    lw         $v0,4($a1)
