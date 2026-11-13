.section .text
.set noat
.set noreorder


glabel crimeFifoEmptyHandler
    lw         $a0,120($a1)
    addiu      $sp,$sp,-32
    lw         $a2,544($a1)
    sd         $s1,16($sp)
    li         $at,2
    li         $v0,1
    sd         $s0,8($sp)
    move       $s0,$a1
    beq        $a2, $at, .L000000d8
    sd         $ra,24($sp)
    bne        $a2, $v0, .L00000108
    sd         $a0,0($sp)
    jal        splhi
    nop
    lw         $a0,316($s0)
    move       $s1,$v0
    beqz       $a0, .L000000c8
    sw         $zero,544($s0)
    jal        untimeout
    nop
    sw         $zero,316($s0)
    jal        splx
    move       $a0,$s1
    lw         $v1,40($s0)
    lw         $v1,24($v1)
    lw         $v0,44($v1)
    addiu      $v0,$v0,-1
    jal        splhi
    sw         $v0,44($v1)
    lw         $a0,0($gp)
    lw         $a1,0($gp)
    lui        $a2,0xfe0
    nor        $a2,$a2,$zero
    sll        $a1,$a1,0x15
    and        $a0,$a0,$a2
    or         $a0,$a0,$a1
    ld         $a1,0($sp)
    sw         $a0,0($gp)
    move       $s1,$v0
    jal        flushbus
    sw         $a0,1024($a1)
    jal        splx
    move       $a0,$s1
    jal        force_resched
    sw         $zero,60($s0)
    ld         $ra,24($sp)
.L000000b8:
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000000c8:
    jal        splx
    move       $a0,$v0
    b          .L000000b8
    ld         $ra,24($sp)
.L000000d8:
    jal        untimeout
    lw         $a0,552($a1)
    jal        splhi
    nop
    move       $s1,$v0
    jal        sv_signal
    addiu      $a0,$s0,556
    sw         $zero,544($s0)
    jal        splx
    move       $a0,$s1
    b          .L000000b8
    ld         $ra,24($sp)
.L00000108:
    li         $a0,5
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,0
    b          .L000000b8
    ld         $ra,24($sp)

glabel crimeEmptyWaitTimeout
    addiu      $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    jal        splhi
    sd         $s1,16($sp)
    lw         $at,544($s0)
    beqz       $at, .L00000198
    move       $s1,$v0
    jal        crime_intr_disable
    li         $a0,25
    sw         $zero,316($s0)
    jal        splx
    move       $a0,$s1
    lui        $a1,0x0
    lw         $a0,120($s0)
    jal        crimeError
    addiu      $a1,$a1,48
    sw         $zero,544($s0)
    lw         $a3,40($s0)
    sw         $zero,60($s0)
    lw         $a3,24($a3)
    lw         $a2,44($a3)
    addiu      $a2,$a2,-1
    sw         $a2,44($a3)
    ld         $ra,8($sp)
.L00000188:
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000198:
    jal        splx
    move       $a0,$v0
    b          .L00000188
    ld         $ra,8($sp)

glabel crimeFifoFullHandler
    addiu      $sp,$sp,-48
    sd         $s0,8($sp)
    lw         $s0,120($a1)
    lw         $v0,16384($s0)
    srl        $v0,$v0,0x12
    andi       $v0,$v0,0x7f
    sd         $ra,24($sp)
    slti       $at,$v0,65
    sd         $s2,16($sp)
    move       $s2,$a1
    beqz       $at, .L00000334
    sd         $s3,32($sp)
    lui        $v1,0xb400
.L000001dc:
    ld         $v1,16($v1)
    sll        $v1,$v1,0x0
    dsll32     $v1,$v1,0x5
    bgez       $v1, .L00000270
    lw         $a3,0($gp)
    jal        gfx_waitf_on
    sd         $s1,40($sp)
    b          .L00000370
    move       $s1,$zero
.L00000200:
    jal        us_delay
    li         $a0,1
    lw         $a1,0($gp)
    addiu      $s1,$s1,1
    slti       $s3,$s1,100
    srl        $a1,$a1,0x15
    beqz       $s3, .L00000238
    andi       $a1,$a1,0x7f
.L00000220:
    lw         $a0,16384($s0)
    srl        $a0,$a0,0x12
    andi       $a0,$a0,0x7f
    sltu       $a0,$a0,$a1
    beqz       $a0, .L00000200
    slti       $s3,$s1,100
.L00000238:
    jal        gfx_waitf_off
    nop
    ld         $s1,40($sp)
    beqz       $s3, .L00000280
    lw         $v0,0($gp)
    lw         $a1,28($v0)
    addiu      $a1,$a1,1
    sw         $a1,28($v0)
.L00000258:
    ld         $ra,24($sp)
.L0000025c:
    ld         $s3,32($sp)
    ld         $s0,8($sp)
    ld         $s2,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00000270:
    lw         $a2,28($a3)
    addiu      $a2,$a2,1
    b          .L00000258
    sw         $a2,28($a3)
.L00000280:
    lw         $a4,24($v0)
    addiu      $a4,$a4,1
    sw         $a4,24($v0)
    lw         $a3,16384($s0)
    jal        splhi
    sd         $a3,0($sp)
    ld         $a6,0($sp)
    srl        $a6,$a6,0x12
    lw         $a5,0($gp)
    lui        $a7,0xfe0
    andi       $a6,$a6,0x7f
    nor        $a7,$a7,$zero
    addiu      $a6,$a6,1
    and        $a5,$a5,$a7
    sll        $a6,$a6,0x15
    or         $a5,$a5,$a6
    sw         $a5,0($gp)
    move       $s3,$v0
    jal        flushbus
    sw         $a5,1024($s0)
    jal        splx
    move       $a0,$s3
    lw         $a7,60($s2)
    bnez       $a7, .L00000358
    lui        $a1,0x0
    lw         $t1,40($s2)
.L000002e8:
    li         $s0,1
    sw         $s0,60($s2)
    lw         $t1,24($t1)
    lw         $t0,44($t1)
    addiu      $t0,$t0,1
    sw         $t0,44($t1)
    jal        force_resched
    sw         $s0,72($s2)
    li         $a2,200
    move       $a1,$s2
    lui        $a0,0x0
    sw         $s0,544($s2)
    jal        timeout
    addiu      $a0,$a0,0
    li         $a0,25
    jal        crime_intr_enable
    sw         $v0,316($s2)
    b          .L0000025c
    ld         $ra,24($sp)
.L00000334:
    addiu      $a2,$v0,-1
    lui        $a1,0x0
    move       $a0,$zero
    addiu      $a1,$a1,0
    lw         $a3,1024($s0)
    jal        cmn_err
    addiu      $a1,$a1,64
    b          .L000001dc
    lui        $v1,0xb400
.L00000358:
    move       $a0,$zero
    addiu      $a1,$a1,0
    jal        cmn_err
    addiu      $a1,$a1,112
    b          .L000002e8
    lw         $t1,40($s2)
.L00000370:
    lw         $a1,0($gp)
    srl        $a1,$a1,0x15
    andi       $a1,$a1,0x7f
    b          .L00000220
    nop

glabel crimeInfo
    addiu      $sp,$sp,-64
    sd         $a3,0($sp)
    sltiu      $at,$a2,497
    move       $v0,$a0
    sd         $s0,8($sp)
    move       $s0,$a2
    bnez       $at, .L000003a8
    sd         $ra,16($sp)
    li         $s0,496
.L000003a8:
    lw         $a0,124($v0)
    jal        copyout
    move       $a2,$s0
    beqz       $v0, .L000003cc
    ld         $ra,16($sp)
    li         $v0,14
.L000003c0:
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L000003cc:
    ld         $v0,0($sp)
    sw         $s0,0($v0)
    b          .L000003c0
    move       $v0,$zero

glabel crmNextIncarnation
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        splhi
    sd         $s8,8($sp)
    lw         $s8,-30712($gp)
    move       $a0,$v0
    addiu      $s8,$s8,1
    jal        splx
    sw         $s8,-30712($gp)
    ld         $ra,0($sp)
    move       $v0,$s8
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crimeAttach
    addiu      $sp,$sp,-64
    sd         $ra,48($sp)
    sd         $s0,40($sp)
    sd         $a1,32($sp)
    andi       $at,$a1,0xfff
    li         $a1,3
    sw         $a1,16($sp)
    sw         $zero,12($sp)
    li         $a2,2
    lui        $a3,0x8
    sw         $a2,8($sp)
    ori        $a3,$a3,0x6000
    sw         $a3,4($sp)
    sw         $zero,0($sp)
    li         $v0,22
    lw         $v1,24($a0)
    move       $s0,$a0
    beqz       $at, .L00000470
    sd         $v1,24($sp)
.L00000460:
    ld         $ra,48($sp)
    ld         $s0,40($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00000470:
    move       $a1,$s0
    lui        $a0,0x0
    ld         $a2,32($sp)
    jal        gfxdd_recycle
    addiu      $a0,$a0,0
    beqz       $v0, .L00000494
    ld         $a4,32($sp)
    b          .L00000460
    move       $v0,$zero
.L00000494:
    lw         $a3,4($sp)
    addiu      $a7,$s0,28
    lw         $a2,0($sp)
    li         $a6,1
    addu       $a3,$a3,$a4
    sw         $a3,4($sp)
    lui        $a1,0x8
    addu       $a2,$a2,$a4
    sw         $a2,0($sp)
    addiu      $a5,$sp,0
    ori        $a1,$a1,0x6000
    lw         $a0,4($s0)
    move       $a4,$s0
    lui        $a3,0x0
    addiu      $a3,$a3,0
    andi       $a0,$a0,0x8
    jal        gfxdd_mmap
    sltu       $a0,$zero,$a0
    beqz       $v0, .L000004ec
    nop
    b          .L00000460
    li         $v0,12
.L000004ec:
    lw         $a4,4($s0)
    li         $a5,-2
    and        $a4,$a4,$a5
    sw         $a4,4($s0)
    ld         $a4,24($sp)
    lw         $a3,320($a4)
    move       $v0,$zero
    addiu      $a3,$a3,1
    b          .L00000460
    sw         $a3,320($a4)

glabel crimeDetach
    lw         $at,28($a0)
    sw         $zero,28($a0)
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    lw         $s8,24($a0)
    sd         $ra,0($sp)
    jal        gfxdd_munmap
    move       $a0,$at
    lw         $v0,320($s8)
    ld         $ra,0($sp)
    addiu      $v0,$v0,-1
    sw         $v0,320($s8)
    move       $v0,$zero
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crimeInitialize
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    lw         $s8,24($a0)
    move       $a1,$zero
    move       $a2,$zero
    sd         $ra,0($sp)
    move       $a3,$zero
    lui        $at,0x0
    sb         $zero,152($s8)
    move       $a0,$zero
    jal        htp_register_board
    sh         $zero,60($at)
    ld         $ra,0($sp)
    li         $v0,1
    sb         $v0,152($s8)
    move       $v0,$zero
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crimeStart
    addiu      $sp,$sp,-64
    sd         $s0,16($sp)
    sd         $s1,8($sp)
    sd         $s2,48($sp)
    sd         $s3,40($sp)
    sd         $s4,24($sp)
    lw         $s4,24($a0)
    sd         $s5,0($sp)
    move       $a3,$zero
    lw         $s5,124($s4)
    move       $a4,$zero
    sd         $ra,32($sp)
    move       $a0,$s4
    lw         $a2,128($s4)
    jal        gbeBlankScreen
    move       $a1,$s5
    lw         $a2,0($gp)
    li         $s3,3
    addiu      $s1,$gp,0
    move       $s2,$zero
    lui        $s0,0x0
    blez       $a2, .L0000069c
    addiu      $s0,$s0,0
    b          .L0000061c
    lh         $t9,34($s0)
.L00000604:
    addiu      $s2,$s2,1
    slt        $t8,$s2,$a2
    addiu      $s0,$s0,8
    beqz       $t8, .L0000069c
    addiu      $s1,$s1,4
.L00000618:
    lh         $t9,34($s0)
.L0000061c:
    beqz       $t9, .L00000660
    move       $a1,$s5
    lw         $ra,0($s1)
    bne        $ra, $s3, .L00000604
    nop
    lh         $at,50($s0)
    bnez       $at, .L00000604
    move       $a1,$s5
.L0000063c:
    lw         $a0,128($s4)
    jal        i2cfp_DMI2_KernelEDID
    move       $a2,$s2
    bnez       $v0, .L00000684
    move       $a0,$s5
    jal        i2cfp_DMI2_FailedEDID
    move       $a1,$s2
    b          .L00000688
    lw         $a2,0($gp)
.L00000660:
    lw         $a0,128($s4)
    jal        crime_i2cProbe
    move       $a2,$s2
    beqz       $v0, .L0000067c
    move       $a0,$s5
    jal        crime_validate_ddc_data
    move       $a1,$s2
.L0000067c:
    lw         $v0,0($s1)
    beq        $v0, $s3, .L000006d0
.L00000684:
    lw         $a2,0($gp)
.L00000688:
    addiu      $s2,$s2,1
    slt        $v1,$s2,$a2
    addiu      $s0,$s0,8
    bnez       $v1, .L00000618
    addiu      $s1,$s1,4
.L0000069c:
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $s2,48($sp)
    ld         $s3,40($sp)
    lbu        $a0,152($s4)
    ld         $ra,32($sp)
    ld         $s5,0($sp)
    move       $v0,$zero
    ori        $a0,$a0,0x4
    sb         $a0,152($s4)
    ld         $s4,24($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L000006d0:
    lh         $a1,50($s0)
    bnez       $a1, .L00000688
    lw         $a2,0($gp)
    b          .L0000063c
    move       $a1,$s5

glabel crmInitialize
    addiu      $sp,$sp,-48
    sd         $s1,32($sp)
    lw         $s1,124($a0)
    sd         $ra,16($sp)
    addiu      $a3,$sp,0
    addiu      $a2,$sp,0
    sd         $s2,8($sp)
    move       $s2,$a1
    addiu      $a1,$sp,0
    sd         $s0,24($sp)
    move       $s0,$a0
    jal        gbeStop
    lw         $a0,128($a0)
    beqz       $s2, .L0000086c
    lw         $t8,0($gp)
    lbu        $v0,48($s2)
    li         $a1,16
    beq        $a1, $v0, .L000009dc
    li         $at,32
    beq        $v0, $at, .L000009dc
    nop
.L00000738:
    lbu        $a2,49($s2)
    sb         $a2,43($s1)
    lh         $a0,50($s2)
    sh         $a0,32($s1)
    lhu        $v0,52($s2)
    sh         $v0,34($s1)
    lw         $v1,0($gp)
    beqz       $v1, .L00000768
    lw         $a4,0($gp)
    lbu        $a3,54($s2)
    sb         $a3,45($s1)
    lw         $a4,0($gp)
.L00000768:
    sltiu      $a4,$a4,8193
    sll        $a0,$v0,0x1
    beqz       $a4, .L000009ac
    li         $a2,1
    sb         $zero,45($s1)
    sb         $zero,43($s1)
    sb         $a1,47($s1)
.L00000784:
    sw         $zero,0($gp)
.L00000788:
    lw         $v0,0($s2)
    li         $a5,13
    beq        $v0, $a5, .L000007a0
    lw         $a0,4($s2)
    andi       $a6,$a0,0x2
    beqz       $a6, .L000007b8
.L000007a0:
    li         $t0,9
    sw         $t0,0($s2)
    li         $a7,-3
    move       $v0,$t0
    and        $a7,$a0,$a7
    sw         $a7,4($s2)
.L000007b8:
    blez       $v0, .L000007f0
    slti       $t1,$v0,16
    beqz       $t1, .L000007f0
    lui        $a6,0x0
    addiu      $a6,$a6,0
    li         $a7,1
    addiu      $a6,$a6,48
.L000007d4:
    lw         $t0,0($a6)
    beq        $t0, $v0, .L000009c4
    nop
    addiu      $a7,$a7,1
    slti       $t1,$a7,16
    bnez       $t1, .L000007d4
    addiu      $a6,$a6,48
.L000007f0:
    jal        crmInvalidVideoTiming
    move       $a0,$s2
    beqz       $v0, .L00000808
    addiu      $a7,$s1,52
    b          .L00000994
    li         $v0,22
.L00000808:
    move       $a1,$zero
    li         $v0,12
    move       $a2,$a7
    addiu      $a3,$s2,4
    addiu      $a0,$s1,56
    li         $a6,0x8
.L00000820:
    addu       $t3,$a1,$s2
    addu       $t8,$a1,$a2
    lw         $t3,0($t3)
    addiu      $v0,$v0,-2
    addu       $t2,$a1,$a3
    sw         $t3,0($t8)
    addu       $t3,$a1,$a0
    lw         $t2,0($t2)
    addu       $a1,$a1,$a6
    bgtz       $v0, .L00000820
    sw         $t2,0($t3)
    li         $t8,16
    sw         $t8,228($s1)
    sw         $a7,48($s1)
.L00000858:
    lw         $t9,4($s2)
    andi       $t9,$t9,0x2
    bnez       $t9, .L00000a58
    li         $a0,4
    lw         $t8,0($gp)
.L0000086c:
    lui        $s2,0x0
    beqz       $t8, .L00000a28
    addiu      $s2,$s2,0
    lbu        $a0,46($s1)
.L0000087c:
    li         $t9,130
    beq        $a0, $t9, .L00000a18
    addiu      $v0,$s2,192
    li         $ra,131
    beq        $a0, $ra, .L00000a20
    addiu      $v0,$s2,432
.L00000894:
    lw         $at,464($s0)
    beqz       $at, .L000009e8
    li         $v0,132
.L000008a0:
    lbu        $v0,152($s0)
    andi       $v0,$v0,0x2
    beqz       $v0, .L000008c8
    lw         $a1,0($gp)
    sll        $a0,$a1,0x5
    subu       $a0,$a0,$a1
    sll        $a0,$a0,0x2
    addu       $a0,$a0,$a1
    jal        us_delay
    sll        $a0,$a0,0x3
.L000008c8:
    jal        crmAllocGfxBuffers
    move       $a0,$s0
    bnez       $v0, .L00000a44
    li         $a0,4
    jal        crmInitGbeData
    move       $a0,$s0
    jal        curthreadhandle
    nop
    jal        gthread_find_gfxp
    move       $a0,$v0
    lw         $a1,40($s0)
    beq        $a1, $v0, .L0000093c
    move       $s2,$v0
    lw         $a0,24($v0)
    li         $a1,537
    jal        psema
    addiu      $a0,$a0,32
    lw         $a2,24($s2)
    sw         $s2,40($a2)
    lw         $a1,24($s2)
    lw         $a1,60($a1)
    beqz       $a1, .L0000093c
    nop
.L00000924:
    jal        us_delay
    li         $a0,2
    lw         $a3,24($s2)
    lw         $a3,60($a3)
    bnez       $a3, .L00000924
    nop
.L0000093c:
    lw         $a1,128($s0)
    move       $a2,$s1
    lw         $a0,120($s0)
    jal        crimeInitHW
    move       $a3,$s0
    move       $a0,$s0
    lui        $s1,0x0
    move       $a2,$zero
    addiu      $s1,$s1,0
    jal        crmLoadTlbABC
    move       $a1,$s1
    move       $a0,$s0
    li         $a2,2
    jal        crmLoadTlbABC
    addiu      $a1,$s1,552
    addiu      $a1,$s1,720
    jal        crmLoadCidTlb
    lw         $a0,120($s0)
    lbu        $t8,152($s0)
    move       $v0,$zero
    ori        $t8,$t8,0x2
    sb         $t8,152($s0)
.L00000994:
    ld         $ra,16($sp)
.L00000998:
    ld         $s2,8($sp)
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000009ac:
    lbu        $t9,45($s1)
    beqz       $t9, .L00000784
    nop
    sh         $a0,34($s1)
    b          .L00000788
    sw         $a2,0($gp)
.L000009c4:
    lh         $ra,20($a6)
    beqz       $ra, .L00000a3c
    li         $v0,22
    sw         $a6,48($s1)
    b          .L00000858
    sw         $a7,228($s1)
.L000009dc:
    sb         $v0,47($s1)
    b          .L00000738
    sw         $v0,0($gp)
.L000009e8:
    lbu        $at,46($s1)
    beq        $at, $v0, .L000008a0
    nop
    lbu        $v1,44($s1)
    bnez       $v1, .L000008a0
    li         $a2,3000
    move       $a1,$s0
    lui        $a0,0x0
    jal        timeout
    addiu      $a0,$a0,0
    b          .L000008a0
    sw         $v0,464($s0)
.L00000a18:
    b          .L00000894
    sw         $v0,48($s1)
.L00000a20:
    b          .L00000894
    sw         $v0,48($s1)
.L00000a28:
    jal        crime_i2cFpProbe
    lw         $a0,128($s0)
    andi       $a0,$v0,0xff
    b          .L0000087c
    sb         $a0,46($s1)
.L00000a3c:
    b          .L00000998
    ld         $ra,16($sp)
.L00000a44:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,200
    b          .L00000994
    li         $v0,12
.L00000a58:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,144
    b          .L00000994
    li         $v0,22

glabel crimeDownload
    jr         $ra
    move       $v0,$zero

glabel crimeSetNullClip
    sw         $zero,52($a0)
    sw         $zero,36($a0)
    li         $at,-1
    sw         $at,32($a0)
    sw         $zero,24($a0)
    sw         $zero,20($a0)
    sw         $zero,16($a0)
    sw         $at,12($a0)
    sw         $at,8($a0)
    li         $v0,1
    sw         $v0,44($a0)
    sw         $v0,40($a0)
    jr         $ra
    move       $v0,$zero

glabel crimePositionCursor
    sw         $a1,156($a0)
    lw         $at,124($a0)
    sw         $a2,160($a0)
    lw         $at,56($at)
    lbu        $a6,154($a0)
    slti       $a4,$a2,513
    andi       $at,$at,0x2
    li         $a7,1
    subu       $v0,$a1,$a6
    lbu        $a5,155($a0)
    beqz       $at, .L00000ae8
    andi       $v0,$v0,0xfff
    bnez       $a4, .L00000aec
    subu       $v1,$a2,$a5
    addiu      $a2,$a2,-512
.L00000ae8:
    subu       $v1,$a2,$a5
.L00000aec:
    andi       $v1,$v1,0xfff
    sll        $v1,$v1,0x10
    sb         $a7,153($a0)
    or         $v0,$v0,$v1
    sw         $v0,148($a0)
    jr         $ra
    move       $v0,$zero

glabel crm_freedrawable
    lw         $v0,4($a0)
    lw         $at,0($a0)
    sw         $at,0($v0)
    lw         $a2,0($a0)
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $a2, .L00000b34
    sd         $ra,8($sp)
    lw         $v1,4($a0)
    sw         $v1,4($a2)
.L00000b34:
    move       $a0,$s0
    jal        bzero
    li         $a1,108
    jal        kern_free
    move       $a0,$s0
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crm_createdrawable
    addiu      $sp,$sp,-32
    sd         $s8,8($sp)
    move       $s8,$a0
    sd         $ra,0($sp)
    jal        kern_malloc
    li         $a0,108
    move       $a0,$v0
    sd         $v0,16($sp)
    jal        bzero
    li         $a1,108
    ld         $v0,16($sp)
    ld         $ra,0($sp)
    li         $at,16
    sw         $at,36($v0)
    sw         $s8,8($v0)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel crm_mapcliptodraw
    lui        $v0,0x0
    lw         $v0,3296($v0)
    beqz       $v0, .L00000bdc
    nop
    lw         $v1,8($v0)
    slt        $v1,$v1,$a0
    beqz       $v1, .L00000bdc
    nop
.L00000bc0:
    lw         $v0,0($v0)
    beqz       $v0, .L00000bf0
    nop
    lw         $a1,8($v0)
    slt        $a1,$a1,$a0
    bnez       $a1, .L00000bc0
    nop
.L00000bdc:
    beqz       $v0, .L00000bf0
    nop
    lw         $a2,8($v0)
    beq        $a2, $a0, .L00000bf4
    nop
.L00000bf0:
    move       $v0,$zero
.L00000bf4:
    jr         $ra
    nop

glabel crm_finddrawable
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    li         $a1,25
    sd         $s0,8($sp)
    move       $s0,$a0
    addiu      $a0,$gp,0
    jal        mutex_lock
    sd         $s1,16($sp)
    lui        $a0,0x0
    addiu      $a0,$a0,0
    lw         $v0,3296($a0)
    beqz       $v0, .L00000c60
    addiu      $s1,$a0,3296
    lw         $a1,8($v0)
    slt        $a1,$a1,$s0
    beqz       $a1, .L00000c60
    addiu      $s1,$a0,3296
.L00000c40:
    move       $s1,$v0
    lw         $v0,0($v0)
    beqz       $v0, .L00000c98
    nop
    lw         $a2,8($v0)
    slt        $a2,$a2,$s0
    bnez       $a2, .L00000c40
    nop
.L00000c60:
    beqz       $v0, .L00000c98
    nop
    lw         $a3,8($v0)
    bne        $a3, $s0, .L00000c98
    nop
    move       $s0,$v0
.L00000c78:
    ld         $s1,16($sp)
    jal        mutex_unlock
    addiu      $a0,$gp,0
    ld         $ra,0($sp)
    move       $v0,$s0
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000c98:
    jal        crm_createdrawable
    move       $a0,$s0
    lw         $a4,0($s1)
    sw         $s1,4($v0)
    sw         $a4,0($v0)
    sw         $v0,0($s1)
    lw         $a0,0($v0)
    beqz       $a0, .L00000c78
    move       $s0,$v0
    b          .L00000c78
    sw         $v0,4($a0)

glabel crm_unbinddrawable
    addiu      $sp,$sp,-32
    li         $at,3
    li         $a3,1
    sd         $s0,8($sp)
    move       $s0,$a0
    bne        $a1, $at, .L00000d64
    sd         $ra,16($sp)
    move       $a1,$a0
    move       $a0,$zero
.L00000ce8:
    addiu      $a0,$a0,1
    slti       $v0,$a0,3
    addiu      $a1,$a1,4
    bnez       $v0, .L00000ce8
    sw         $zero,-4($a1)
    lw         $a2,12($s0)
    lw         $a1,40($a2)
    addiu      $a1,$a1,-1
    sw         $a1,40($a2)
    lw         $a1,16($s0)
    lw         $a0,40($a1)
    addiu      $a0,$a0,-1
    sw         $a0,40($a1)
    lw         $a1,12($s0)
    lw         $v1,40($a1)
    beqz       $v1, .L00000e3c
    nop
.L00000d2c:
    lw         $a0,16($s0)
    beq        $a1, $a0, .L00000e28
    ld         $ra,16($sp)
    lw         $a2,40($a0)
    bnez       $a2, .L00000e28
    ld         $ra,16($sp)
    lw         $a3,36($a0)
    andi       $a3,$a3,0x20
    beqz       $a3, .L00000e28
    ld         $ra,16($sp)
    jal        crm_destroydrawable
    nop
    b          .L00000e28
    ld         $ra,16($sp)
.L00000d64:
    beq        $a1, $a3, .L00000e34
    nop
    lw         $a0,16($a0)
.L00000d70:
    lw         $a6,40($a0)
    addiu      $a6,$a6,-1
    sw         $a6,40($a0)
    lw         $a5,16($s0)
    lw         $a4,12($s0)
    beq        $a4, $a5, .L00000e0c
    move       $a1,$s0
    b          .L00000da0
    move       $a4,$zero
.L00000d94:
    sw         $zero,4($a1)
.L00000d98:
    beqz       $a5, .L00000e0c
    addiu      $a1,$a1,8
.L00000da0:
    lw         $a3,0($a1)
    lw         $a7,24($a0)
    addiu      $a4,$a4,1
    beq        $a7, $a3, .L00000dcc
    slti       $a5,$a4,3
    lw         $t0,28($a0)
    beq        $t0, $a3, .L00000dcc
    nop
    lw         $t1,32($a0)
    bne        $t1, $a3, .L00000dd0
    nop
.L00000dcc:
    sw         $zero,0($a1)
.L00000dd0:
    beqz       $a5, .L00000e0c
    nop
    lw         $a3,4($a1)
    lw         $t2,24($a0)
    addiu      $a4,$a4,1
    beq        $t2, $a3, .L00000d94
    slti       $a5,$a4,3
    lw         $t3,28($a0)
    beq        $t3, $a3, .L00000d94
    nop
    lw         $t8,32($a0)
    bne        $t8, $a3, .L00000d98
    nop
    b          .L00000d98
    sw         $zero,4($a1)
.L00000e0c:
    lw         $t9,36($a0)
    andi       $t9,$t9,0x20
    beqz       $t9, .L00000e28
    ld         $ra,16($sp)
    lw         $ra,40($a0)
    beqz       $ra, .L00000e5c
    ld         $ra,16($sp)
.L00000e28:
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00000e34:
    b          .L00000d70
    lw         $a0,12($a0)
.L00000e3c:
    lw         $at,36($a1)
    andi       $at,$at,0x20
    beqz       $at, .L00000d2c
    sd         $a1,0($sp)
    jal        crm_destroydrawable
    ld         $a0,0($sp)
    b          .L00000d2c
    ld         $a1,0($sp)
.L00000e5c:
    jal        crm_destroydrawable
    nop
    b          .L00000e28
    ld         $ra,16($sp)

glabel crimeInitSpecialDDRN
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    move       $s8,$a0
    sd         $ra,0($sp)
    jal        crm_finddrawable
    move       $a0,$zero
    sw         $v0,16($s8)
    sw         $v0,12($s8)
    li         $v1,2
    sw         $v1,40($v0)
    lw         $a0,12($s8)
    ld         $ra,0($sp)
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $at,24($a0)
    lw         $a0,12($s8)
    lui        $v1,0x0
    sw         $at,0($s8)
    addiu      $v1,$v1,0
    sw         $v1,28($a0)
    lw         $v0,12($s8)
    sw         $zero,4($s8)
    sw         $zero,32($v0)
    addiu      $at,$at,552
    sw         $at,8($s8)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crimeCreateDDRN
    addiu      $sp,$sp,-48
    sd         $a1,0($sp)
    lui        $at,0x0
    lw         $at,16($at)
    sd         $s0,16($sp)
    sd         $s1,8($sp)
    move       $s1,$a0
    bnez       $at, .L00000f14
    sd         $ra,24($sp)
    lw         $v0,8($a0)
    bltz       $v0, .L00000ff0
    li         $v0,-1
.L00000f0c:
    b          .L00000fe0
    ld         $ra,24($sp)
.L00000f14:
    jal        kern_malloc
    li         $a0,1368
    move       $s0,$v0
    li         $a0,1
    lui        $a1,0x2000
    move       $a2,$zero
    jal        kvpalloc
    sd         $s2,32($sp)
    move       $s2,$v0
    move       $a0,$s0
    jal        bzero
    li         $a1,1368
    move       $a0,$s2
    jal        bzero
    li         $a1,648
    sw         $s2,76($s0)
    lw         $a2,124($s1)
    lw         $a2,48($a2)
    lh         $a2,8($a2)
    sh         $a2,636($s2)
    lw         $a1,124($s1)
    lw         $a1,48($a1)
    lw         $a2,76($s0)
    lh         $a1,10($a1)
    sh         $a1,638($a2)
    lw         $a0,124($s1)
    lw         $a0,48($a0)
    lw         $a1,76($s0)
    lw         $a0,12($a0)
    sw         $a0,640($a1)
    lw         $v1,124($s1)
    lw         $v1,48($v1)
    lw         $v1,4($v1)
    andi       $v1,$v1,0x2
    ld         $a5,0($sp)
    li         $a0,1
    beqz       $v1, .L00000ff8
    lw         $v0,76($s0)
    sh         $a0,644($v0)
.L00000fb0:
    sw         $s0,76($a5)
    lw         $a4,48($a5)
    sw         $s2,8($a5)
    lw         $a3,8($a4)
    lw         $a3,4($a3)
    beq        $a3, $a4, .L00001000
    ld         $s2,32($sp)
.L00000fcc:
    lw         $a6,452($s1)
    sw         $a6,20($s0)
    move       $v0,$zero
    sw         $s0,452($s1)
    ld         $ra,24($sp)
.L00000fe0:
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00000ff0:
    b          .L00000f0c
    sw         $zero,8($a0)
.L00000ff8:
    b          .L00000fb0
    sh         $zero,644($v0)
.L00001000:
    jal        crimeInitSpecialDDRN
    move       $a0,$s0
    b          .L00000fcc
    ld         $s2,32($sp)

glabel crmunpinscratch
    move       $a2,$a0
    lw         $a0,0($a0)
    addiu      $sp,$sp,-16
    lw         $a1,4($a2)
    sd         $ra,0($sp)
    move       $a3,$zero
    jal        fast_undma
    lw         $a2,8($a2)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crimeDestroyDDRN
    addiu      $sp,$sp,-64
    sd         $a1,0($sp)
    sd         $s3,40($sp)
    sd         $s0,16($sp)
    lw         $s0,76($a2)
    sd         $s1,32($sp)
    move       $s1,$a0
    sd         $s2,24($sp)
    move       $s2,$a2
    bnez       $s0, .L00001070
    sd         $ra,48($sp)
    b          .L00001134
    move       $v0,$zero
.L00001070:
    jal        crimeRetraceCloseRN
    move       $a1,$a2
    lw         $at,48($s0)
    beqz       $at, .L0000108c
    nop
    jal        crmunpinscratch
    addiu      $a0,$s0,36
.L0000108c:
    lw         $v0,64($s0)
    beqz       $v0, .L000010a0
    nop
    jal        crmunpinscratch
    addiu      $a0,$s0,52
.L000010a0:
    lw         $t8,8($s2)
    lui        $s3,0x0
    beqz       $t8, .L00001164
    addiu      $s3,$s3,0
    lui        $a0,0x0
    addiu      $a0,$a0,0
    lw         $v1,16($a0)
    addiu      $a1,$s0,72
    lui        $v0,0x0
    addiu      $v0,$v0,0
    bne        $v1, $a1, .L000010d4
    addiu      $v0,$v0,1512
    sw         $v0,16($a0)
.L000010d4:
    lw         $a0,24($s0)
    lui        $s3,0x0
    beqz       $a0, .L0000114c
    addiu      $s3,$s3,0
    jal        gfxdd_lookup
    nop
    lw         $t8,24($s0)
    sltiu      $t9,$v0,1
    beqz       $t8, .L00001150
    sd         $t9,8($sp)
    beqz       $v0, .L00001154
    li         $a1,1
    jal        crmUnmapPages
    addiu      $a0,$s0,24
    b          .L00001154
    li         $a1,1
.L00001114:
    beqz       $a0, .L00001230
    lw         $a1,20($v0)
    sw         $a1,20($a0)
.L00001120:
    sw         $zero,76($s2)
.L00001124:
    jal        kern_free
    move       $a0,$s0
    ld         $ra,48($sp)
    move       $v0,$zero
.L00001134:
    ld         $s3,40($sp)
    ld         $s0,16($sp)
    ld         $s2,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0000114c:
    sd         $zero,8($sp)
.L00001150:
    li         $a1,1
.L00001154:
    jal        kvpfree
    lw         $a0,8($s2)
    b          .L00001168
    sw         $zero,8($s2)
.L00001164:
    sd         $zero,8($sp)
.L00001168:
    ld         $at,0($sp)
    lw         $ra,8($at)
    lw         $ra,4($ra)
    bne        $ra, $at, .L00001190
    lw         $v1,3296($s3)
    lw         $at,460($s1)
    bnez       $at, .L00001210
    lw         $v0,860($s3)
.L00001188:
    bnez       $v0, .L00001220
    lw         $v1,3296($s3)
.L00001190:
    beqz       $v1, .L000011b4
    nop
    lw         $a0,12($s0)
    beqz       $a0, .L000011f8
    lw         $v0,16($s0)
    beqz       $v0, .L00001238
    move       $a0,$s0
    jal        crm_unbinddrawable
    li         $a1,3
.L000011b4:
    lw         $a1,32($s0)
.L000011b8:
    beqz       $a1, .L000011cc
    move       $a0,$s1
    jal        crmFreeTex
    ld         $a2,8($sp)
    sw         $zero,32($s0)
.L000011cc:
    lw         $v0,452($s1)
    beqz       $v0, .L00001120
    move       $a0,$zero
.L000011d8:
    beq        $s0, $v0, .L00001114
    nop
    lw         $a1,20($v0)
    move       $a0,$v0
    bnez       $a1, .L000011d8
    move       $v0,$a1
    b          .L00001124
    sw         $zero,76($s2)
.L000011f8:
    beqz       $v0, .L000011b4
    move       $a0,$s0
    jal        crm_unbinddrawable
    li         $a1,2
    b          .L000011b8
    lw         $a1,32($s0)
.L00001210:
    jal        crmUnmapPages
    addiu      $a0,$s1,460
    b          .L00001188
    lw         $v0,860($s3)
.L00001220:
    jal        crmUnmapChunk
    addiu      $a0,$s3,824
    b          .L00001190
    lw         $v1,3296($s3)
.L00001230:
    b          .L00001120
    sw         $a1,452($s1)
.L00001238:
    move       $a0,$s0
    jal        crm_unbinddrawable
    li         $a1,1
    b          .L000011b8
    lw         $a1,32($s0)

glabel crm_destroydrawable
    addiu      $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    addiu      $a0,$gp,0
    jal        mutex_mine
    sd         $s1,16($sp)
    beqz       $v0, .L00001380
    move       $s1,$v0
    lui        $at,0x0
.L00001274:
    lw         $at,3296($at)
    beqz       $at, .L000013a4
    move       $a3,$at
    b          .L00001294
    move       $a0,$zero
.L00001288:
    lw         $a3,0($a3)
.L0000128c:
    beqz       $a3, .L000012c8
    nop
.L00001294:
    bne        $s0, $a3, .L000012a8
    nop
    move       $a3,$zero
    b          .L000012ac
    li         $a0,1
.L000012a8:
    lw         $a3,0($a3)
.L000012ac:
    beqz       $a3, .L000012c8
    nop
    bne        $s0, $a3, .L00001288
    nop
    move       $a3,$zero
    b          .L0000128c
    li         $a0,1
.L000012c8:
    beqz       $a0, .L000013a4
    nop
    lw         $a0,36($s0)
    andi       $a1,$a0,0x2
    lui        $a3,0x0
    lw         $v0,0($a3)
    beqz       $a1, .L00001310
    andi       $a0,$a0,0x1
    jal        crmDestroyPbuffer
    move       $a0,$s0
    jal        crm_freedrawable
    move       $a0,$s0
    beqz       $s1, .L00001394
    ld         $ra,8($sp)
.L00001300:
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00001310:
    beqz       $a0, .L00001334
    nop
    beqz       $v0, .L00001334
    nop
    lw         $a2,4($v0)
    beqz       $a2, .L00001334
    move       $a0,$s0
    jal        crmSubtractZ
    addiu      $a1,$s0,44
.L00001334:
    lw         $a0,20($s0)
    beqz       $a0, .L00001360
    nop
    lw         $v0,276($a0)
    beqz       $v0, .L00001358
    nop
    jal        kern_free
    move       $a0,$v0
    lw         $a0,20($s0)
.L00001358:
    jal        kern_free
    nop
.L00001360:
    jal        crm_freedrawable
    move       $a0,$s0
    bnez       $s1, .L00001300
    ld         $ra,8($sp)
    jal        mutex_unlock
    addiu      $a0,$gp,0
    b          .L00001300
    ld         $ra,8($sp)
.L00001380:
    li         $a1,25
    jal        mutex_lock
    addiu      $a0,$gp,0
    b          .L00001274
    lui        $at,0x0
.L00001394:
    jal        mutex_unlock
    addiu      $a0,$gp,0
    b          .L00001300
    ld         $ra,8($sp)
.L000013a4:
    jal        mutex_unlock
    addiu      $a0,$gp,0
    b          .L00001300
    ld         $ra,8($sp)

glabel crm_enableovl
    addiu      $sp,$sp,-48
    sd         $s1,24($sp)
    lui        $a6,0x0
    lw         $at,24($a3)
    addiu      $a6,$a6,0
    sd         $s0,16($sp)
    addiu      $v0,$a6,552
    move       $s0,$a0
    move       $s1,$a2
    sd         $s2,32($sp)
    move       $s2,$a3
    beq        $at, $v0, .L00001484
    sd         $ra,40($sp)
    sw         $v0,24($a3)
    lw         $a7,12($a2)
    bne        $a7, $a3, .L000013fc
    nop
    sw         $v0,0($a2)
.L000013fc:
    lw         $t0,24($s0)
    lw         $t0,4($t0)
    bne        $t0, $a1, .L0000146c
    move       $v0,$zero
    jal        RRM_CheckValidFault
    move       $a0,$s0
    bltz       $v0, .L0000148c
    addiu      $a1,$s1,848
    sd         $a1,0($sp)
    lw         $a0,24($s0)
    addiu      $a2,$s1,336
    sd         $a2,8($sp)
    jal        crmSavePP
    lw         $a0,120($a0)
    move       $s1,$v0
    lw         $a0,24($s0)
    lw         $a1,24($s2)
    jal        crmLoadTlbABC
    move       $a2,$zero
    blez       $s1, .L0000146c
    move       $v0,$zero
    ld         $a1,0($sp)
    lw         $a0,24($s0)
    ld         $a2,8($sp)
    move       $a3,$s1
    jal        crmRestorePP
    lw         $a0,120($a0)
    move       $v0,$zero
.L0000146c:
    ld         $ra,40($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    ld         $s2,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00001484:
    b          .L0000146c
    move       $v0,$zero
.L0000148c:
    b          .L0000146c
    li         $v0,14

glabel crm_enablesz
    addiu      $sp,$sp,-80
    sd         $ra,56($sp)
    sd         $s3,32($sp)
    lw         $v0,32($a3)
    sd         $s2,48($sp)
    move       $s2,$a0
    move       $s3,$a2
    sd         $s1,40($sp)
    move       $s1,$a3
    beqz       $v0, .L000014f0
    sd         $s0,64($sp)
    lw         $at,12($a2)
    bne        $at, $a3, .L000014d0
    nop
    sw         $v0,8($a2)
.L000014d0:
    move       $v0,$zero
.L000014d4:
    ld         $s3,32($sp)
    ld         $ra,56($sp)
    ld         $s0,64($sp)
    ld         $s1,40($sp)
    ld         $s2,48($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L000014f0:
    lw         $v0,36($a3)
    andi       $v0,$v0,0x2
    beqz       $v0, .L00001534
    lui        $s0,0x0
    jal        kern_malloc
    li         $a0,1032
    move       $s0,$v0
    move       $a0,$v0
    jal        bzero
    li         $a1,1032
    move       $a0,$zero
    li         $a1,1
    lui        $a2,0x0
    jal        sema_alloc
    addiu      $a2,$a2,248
    b          .L00001538
    sw         $v0,4($s0)
.L00001534:
    addiu      $s0,$s0,0
.L00001538:
    lw         $t9,24($s2)
    lw         $t8,44($t9)
    addiu      $t8,$t8,1
    sw         $t8,44($t9)
    li         $a1,282
    jal        psema
    lw         $a0,4($s0)
    beqz       $v0, .L00001574
    nop
    lw         $ra,24($s2)
    lw         $t9,44($ra)
    li         $v0,4
    addiu      $t9,$t9,-1
    b          .L000014d4
    sw         $t9,44($ra)
.L00001574:
    lw         $v0,0($s0)
    beqz       $v0, .L00001764
    lui        $a2,0x0
.L00001580:
    lw         $at,36($s1)
    sw         $v0,32($s1)
    ori        $at,$at,0x1
    sw         $at,36($s1)
    lw         $ra,12($s3)
    bne        $ra, $s1, .L000015a4
    move       $a0,$s1
    sw         $v0,8($s3)
    move       $a0,$s1
.L000015a4:
    move       $v0,$zero
.L000015a8:
    addiu      $v0,$v0,1
    slti       $v1,$v0,32
    sh         $zero,44($a0)
    beqz       $v1, .L000015dc
    addiu      $v0,$v0,1
    slti       $a1,$v0,32
    sh         $zero,46($a0)
    beqz       $a1, .L000015dc
    addiu      $v0,$v0,1
    slti       $a2,$v0,32
    addiu      $a0,$a0,6
    bnez       $a2, .L000015a8
    sh         $zero,42($a0)
.L000015dc:
    lh         $a0,12($s1)
    li         $a6,1
    bltz       $a0, .L000017ec
    lh         $v0,16($s1)
    sra        $a1,$a0,0x6
    srl        $a1,$a1,0x19
    addu       $a1,$a1,$a0
    beqz       $v0, .L0000184c
    sra        $a1,$a1,0x7
    addu       $a4,$a0,$v0
    addiu      $a4,$a4,-1
    sra        $a3,$a4,0x6
    srl        $a3,$a3,0x19
    addu       $a3,$a3,$a4
    sra        $a3,$a3,0x7
    subu       $a3,$a3,$a1
    addiu      $a3,$a3,1
.L00001620:
    sllv       $a2,$a6,$a3
    addiu      $a2,$a2,-1
    sllv       $a2,$a2,$a1
.L0000162c:
    lh         $a1,14($s1)
    bltz       $a1, .L00001818
    lh         $a0,18($s1)
    sra        $v0,$a1,0x6
    srl        $v0,$v0,0x19
    addu       $v0,$v0,$a1
    beqz       $a0, .L00001854
    sra        $v0,$v0,0x7
    addu       $a4,$a1,$a0
    addiu      $a4,$a4,-1
    sra        $a3,$a4,0x6
    srl        $a3,$a3,0x19
    addu       $a3,$a3,$a4
    sra        $a3,$a3,0x7
    subu       $a3,$a3,$v0
    addiu      $a3,$a3,1
.L0000166c:
    addu       $a1,$a3,$v0
    slt        $a5,$v0,$a1
    beqz       $a5, .L000016b4
    addu       $a0,$v0,$v0
.L0000167c:
    addu       $a0,$s1,$a0
.L00001680:
    addiu      $v0,$v0,1
    slt        $a3,$v0,$a1
    sh         $a2,44($a0)
    beqz       $a3, .L000016b4
    addiu      $v0,$v0,1
    slt        $a4,$v0,$a1
    sh         $a2,46($a0)
    beqz       $a4, .L000016b4
    addiu      $v0,$v0,1
    slt        $a5,$v0,$a1
    sh         $a2,48($a0)
    bnez       $a5, .L00001680
    addiu      $a0,$a0,6
.L000016b4:
    addiu      $a1,$s1,44
.L000016b8:
    sd         $a1,24($sp)
    jal        crmAddZ
    move       $a0,$s1
    beqz       $v0, .L000016f8
    move       $s1,$v0
    ld         $a0,24($sp)
    jal        bzero
    li         $a1,64
    jal        vsema
    lw         $a0,4($s0)
    lw         $a7,24($s2)
    lw         $a6,44($a7)
    move       $v0,$s1
    addiu      $a6,$a6,-1
    b          .L000014d4
    sw         $a6,44($a7)
.L000016f8:
    addiu      $a2,$s3,336
    sd         $a2,16($sp)
    lw         $a0,24($s2)
    addiu      $a1,$s3,848
    sd         $a1,8($sp)
    jal        crmSavePP
    lw         $a0,120($a0)
    move       $s1,$v0
    lw         $a1,0($s0)
    li         $a2,2
    jal        crmLoadTlbABC
    lw         $a0,24($s2)
    blez       $s1, .L00001744
    ld         $a1,8($sp)
    lw         $a0,24($s2)
    ld         $a2,16($sp)
    move       $a3,$s1
    jal        crmRestorePP
    lw         $a0,120($a0)
.L00001744:
    jal        vsema
    lw         $a0,4($s0)
    lw         $a2,24($s2)
    lw         $a1,44($a2)
    move       $v0,$zero
    addiu      $a1,$a1,-1
    b          .L000014d4
    sw         $a1,44($a2)
.L00001764:
    addiu      $a2,$a2,0
    bne        $s0, $a2, .L00001784
    nop
    lw         $a1,8($s2)
    lw         $a1,0($a1)
    lhu        $a2,34($a1)
    b          .L0000178c
    lhu        $a1,32($a1)
.L00001784:
    lh         $a2,18($s1)
    lh         $a1,16($s1)
.L0000178c:
    jal        crmAllocZbuffer
    move       $a0,$s0
    beqz       $v0, .L0000186c
    lui        $a2,0x0
    addiu      $a2,$a2,0
    lw         $a0,4($s0)
    beq        $s0, $a2, .L0000185c
    sd         $v0,0($sp)
    jal        vsema
    nop
    jal        valusema
    lw         $a0,4($s0)
    blez       $v0, .L000017d4
    nop
    jal        sema_dealloc
    lw         $a0,4($s0)
    jal        kern_free
    move       $a0,$s0
.L000017d4:
    lw         $a4,24($s2)
.L000017d8:
    lw         $a3,44($a4)
    ld         $v0,0($sp)
    addiu      $a3,$a3,-1
    b          .L000014d4
    sw         $a3,44($a4)
.L000017ec:
    addu       $a1,$a0,$v0
    beqz       $a1, .L00001874
    addiu      $v1,$a1,-1
    sra        $v0,$v1,0x6
    srl        $v0,$v0,0x19
    addu       $v0,$v0,$v1
    sra        $v0,$v0,0x7
    addiu      $v0,$v0,1
.L0000180c:
    sllv       $a2,$a6,$v0
    b          .L0000162c
    addiu      $a2,$a2,-1
.L00001818:
    addu       $a3,$a1,$a0
    beqz       $a3, .L0000187c
    move       $v0,$zero
    addiu      $a4,$a3,-1
    sra        $a1,$a4,0x6
    srl        $a1,$a1,0x19
    addu       $a1,$a1,$a4
    sra        $a1,$a1,0x7
    addiu      $a1,$a1,1
.L0000183c:
    bgtz       $a1, .L0000167c
    addu       $a0,$v0,$v0
    b          .L000016b8
    addiu      $a1,$s1,44
.L0000184c:
    b          .L00001620
    move       $a3,$zero
.L00001854:
    b          .L0000166c
    move       $a3,$zero
.L0000185c:
    jal        vsema
    nop
    b          .L000017d8
    lw         $a4,24($s2)
.L0000186c:
    b          .L00001580
    lw         $v0,0($s0)
.L00001874:
    b          .L0000180c
    move       $v0,$zero
.L0000187c:
    b          .L0000183c
    move       $a1,$zero

glabel crmRecomputeSZ
    lw         $t3,20($a2)
    lw         $v0,12($a2)
    lw         $t2,16($a2)
    lw         $a5,8($a2)
    lh         $a6,14($a1)
    addiu      $sp,$sp,-176
    sd         $ra,144($sp)
    lh         $ra,18($a1)
    sd         $s0,136($sp)
    lh         $s0,16($a1)
    lh         $t9,12($a1)
    sd         $s3,160($sp)
    sd         $s1,152($sp)
    move       $s1,$a1
    bltz       $t9, .L000019a0
    sd         $s2,168($sp)
    sra        $s2,$t9,0x6
    srl        $s2,$s2,0x19
    addu       $s2,$s2,$t9
    bltz       $a6, .L00001c30
    sra        $s2,$s2,0x7
    bltz       $a5, .L00001c1c
    addu       $t0,$a5,$t2
    move       $a7,$a5
    bltz       $v0, .L00001c24
    move       $t0,$t2
.L000018ec:
    move       $a1,$v0
    move       $t1,$t3
.L000018f4:
    sra        $t8,$a7,0x6
    srl        $t8,$t8,0x19
    addu       $t8,$t8,$a7
    sra        $t8,$t8,0x7
    bne        $s2, $t8, .L000019e0
    addu       $a3,$s0,$t9
    addiu      $a3,$a3,-1
    sra        $at,$a3,0x6
    addu       $v1,$t0,$a7
    srl        $at,$at,0x19
    addiu      $v1,$v1,-1
    sra        $v0,$v1,0x6
    addu       $at,$at,$a3
    srl        $v0,$v0,0x19
    sra        $at,$at,0x7
    addu       $v0,$v0,$v1
    sra        $v0,$v0,0x7
    bne        $at, $v0, .L000019e0
    sra        $a4,$a6,0x6
    srl        $a4,$a4,0x19
    sra        $a5,$a1,0x6
    addu       $a4,$a4,$a6
    srl        $a5,$a5,0x19
    sra        $a4,$a4,0x7
    addu       $a5,$a5,$a1
    sra        $a5,$a5,0x7
    bne        $a4, $a5, .L000019e0
    addu       $v0,$ra,$a6
    addiu      $v0,$v0,-1
    sra        $a5,$v0,0x6
    addu       $at,$t1,$a1
    srl        $a5,$a5,0x19
    addiu      $at,$at,-1
    sra        $t9,$at,0x6
    addu       $a5,$a5,$v0
    srl        $t9,$t9,0x19
    sra        $a5,$a5,0x7
    addu       $t9,$t9,$at
    sra        $t9,$t9,0x7
    bne        $a5, $t9, .L000019e0
    nop
.L00001998:
    b          .L00001c00
    move       $v0,$zero
.L000019a0:
    addu       $s3,$s0,$t9
    sd         $s3,128($sp)
    bltz       $a6, .L00001e04
    move       $s2,$zero
    bltz       $a5, .L00001dd4
    move       $a7,$a5
    bltz       $v0, .L00001de0
    move       $t0,$t2
.L000019c0:
    move       $a1,$v0
    move       $t1,$t3
.L000019c8:
    sra        $t8,$a7,0x6
    srl        $t8,$t8,0x19
    addu       $t8,$t8,$a7
    sra        $t8,$t8,0x7
    beq        $t8, $s2, .L00001eb8
    addiu      $at,$s3,-1
.L000019e0:
    lw         $t9,32($s1)
    lbu        $s0,25($t9)
    addiu      $a6,$s0,-1
    bltz       $a6, .L00001a2c
    addiu      $a5,$sp,0
    move       $v0,$zero
.L000019f8:
    addiu      $v0,$v0,1
    slt        $ra,$a6,$v0
    sh         $zero,0($a5)
    bnez       $ra, .L00001a2c
    addiu      $v0,$v0,1
    slt        $at,$a6,$v0
    sh         $zero,2($a5)
    bnez       $at, .L00001a2c
    addiu      $v0,$v0,1
    slt        $v1,$a6,$v0
    addiu      $a5,$a5,6
    beqz       $v1, .L000019f8
    sh         $zero,-2($a5)
.L00001a2c:
    blez       $t2, .L00001af8
    slti       $s2,$s0,1
    blez       $t3, .L00001af8
    slti       $s2,$s0,1
    beqz       $t0, .L00001d48
    addu       $t3,$t0,$a7
    addiu      $t3,$t3,-1
    sra        $t2,$t3,0x6
    srl        $t2,$t2,0x19
    addu       $t2,$t2,$t3
    sra        $t2,$t2,0x7
    subu       $t2,$t2,$t8
    addiu      $t2,$t2,1
.L00001a60:
    sra        $v0,$a1,0x6
    srl        $v0,$v0,0x19
    addu       $v0,$v0,$a1
    beqz       $t1, .L00001af4
    sra        $v0,$v0,0x7
    addu       $t0,$t1,$a1
    addiu      $t0,$t0,-1
    sra        $a7,$t0,0x6
    srl        $a7,$a7,0x19
    addu       $a7,$a7,$t0
    sra        $a7,$a7,0x7
    subu       $v1,$a7,$v0
    bltz       $v1, .L00001af4
    addiu      $a6,$a7,1
    li         $t0,1
    lbu        $t1,24($t9)
    addu       $a1,$v0,$v0
    sllv       $a5,$t0,$t2
    addiu      $a5,$a5,-1
    sllv       $t0,$t0,$t1
    sllv       $a5,$a5,$t8
    addiu      $t0,$t0,-1
    addu       $a1,$a1,$sp
    and        $a5,$a5,$t0
.L00001ac0:
    addiu      $v0,$v0,1
    slt        $a7,$v0,$a6
    sh         $a5,0($a1)
    beqz       $a7, .L00001af4
    addiu      $v0,$v0,1
    slt        $t0,$v0,$a6
    sh         $a5,2($a1)
    beqz       $t0, .L00001af4
    addiu      $v0,$v0,1
    slt        $t1,$v0,$a6
    sh         $a5,4($a1)
    bnez       $t1, .L00001ac0
    addiu      $a1,$a1,6
.L00001af4:
    slti       $s2,$s0,1
.L00001af8:
    bne        $zero, $s2, .L00001b3c
    xori       $s2,$s2,0x1
    move       $a6,$zero
    move       $a7,$s1
    addiu      $v0,$sp,64
    addiu      $a5,$sp,0
.L00001b10:
    addiu      $a7,$a7,2
    addiu      $a6,$a6,1
    lhu        $ra,0($a5)
    addiu      $a5,$a5,2
    slt        $t9,$a6,$s0
    lhu        $t8,42($a7)
    addiu      $v0,$v0,2
    nor        $ra,$ra,$zero
    and        $t8,$t8,$ra
    bnez       $t9, .L00001b10
    sh         $t8,-2($v0)
.L00001b3c:
    lw         $at,124($a0)
    lw         $at,48($at)
    lw         $at,4($at)
    andi       $at,$at,0x2
    beqz       $at, .L00001d50
    move       $a0,$s1
    lh         $v1,12($s1)
    lh         $v0,14($s1)
    lw         $a1,12($a2)
    lw         $a0,8($a2)
    subu       $v0,$v0,$a1
    dsll32     $v0,$v0,0x10
    bne        $v1, $a0, .L00001b90
    dsra32     $v0,$v0,0x10
    li         $a2,512
    beq        $v0, $a2, .L00001b88
    li         $a3,-512
    bne        $v0, $a3, .L00001b94
    move       $a0,$s1
.L00001b88:
    b          .L00001ba0
    li         $s3,1
.L00001b90:
    move       $a0,$s1
.L00001b94:
    jal        crmSubtractZ
    addiu      $a1,$sp,64
    move       $s3,$zero
.L00001ba0:
    beqz       $s2, .L00001be0
    move       $a6,$zero
    addiu      $a5,$sp,64
    move       $v0,$s1
    addiu      $a2,$sp,0
.L00001bb4:
    addiu      $a2,$a2,2
    addiu      $a6,$a6,1
    lhu        $t0,44($v0)
    addiu      $v0,$v0,2
    slt        $a7,$a6,$s0
    lhu        $a4,-2($a2)
    addiu      $a5,$a5,2
    nor        $t0,$t0,$zero
    and        $a4,$a4,$t0
    bnez       $a7, .L00001bb4
    sh         $a4,-2($a5)
.L00001be0:
    lw         $a0,32($s1)
    lw         $a0,28($a0)
    li         $a1,282
    jal        psema
    lw         $a0,4($a0)
    beqz       $v0, .L00001ce4
    move       $a0,$s1
    li         $v0,4
.L00001c00:
    ld         $s3,160($sp)
    ld         $ra,144($sp)
    ld         $s2,168($sp)
    ld         $s0,136($sp)
    ld         $s1,152($sp)
    jr         $ra
    addiu      $sp,$sp,176
.L00001c1c:
    bgez       $v0, .L000018ec
    move       $a7,$zero
.L00001c24:
    addu       $t1,$v0,$t3
    b          .L000018f4
    move       $a1,$zero
.L00001c30:
    bltz       $a5, .L00001dec
    addu       $s3,$ra,$a6
    move       $a7,$a5
    bltz       $v0, .L00001df8
    move       $t0,$t2
.L00001c44:
    move       $a1,$v0
    move       $t1,$t3
.L00001c4c:
    sra        $t8,$a7,0x6
    srl        $t8,$t8,0x19
    addu       $t8,$t8,$a7
    sra        $t8,$t8,0x7
    bne        $s2, $t8, .L000019e0
    sra        $v0,$a1,0x6
    addu       $a5,$s0,$t9
    addu       $a4,$t0,$a7
    addiu      $a5,$a5,-1
    addiu      $a4,$a4,-1
    sra        $v1,$a5,0x6
    sra        $a3,$a4,0x6
    srl        $a3,$a3,0x19
    srl        $v1,$v1,0x19
    addu       $a3,$a3,$a4
    addu       $v1,$v1,$a5
    sra        $a3,$a3,0x7
    sra        $v1,$v1,0x7
    srl        $v0,$v0,0x19
    addu       $v0,$v0,$a1
    bne        $v1, $a3, .L000019e0
    sra        $v0,$v0,0x7
    bnez       $v0, .L000019e0
    addiu      $at,$s3,-1
    sra        $a6,$at,0x6
    addu       $ra,$t1,$a1
    srl        $a6,$a6,0x19
    addiu      $ra,$ra,-1
    sra        $t9,$ra,0x6
    addu       $a6,$a6,$at
    srl        $t9,$t9,0x19
    sra        $a6,$a6,0x7
    addu       $t9,$t9,$ra
    sra        $t9,$t9,0x7
    bne        $a6, $t9, .L000019e0
    nop
    b          .L00001998
    nop
.L00001ce4:
    jal        crmAddZ
    addiu      $a1,$sp,64
    beqz       $v0, .L00001d60
    nop
    lw         $a0,32($s1)
    lw         $a0,28($a0)
    jal        vsema
    lw         $a0,4($a0)
    beqz       $s2, .L00001d40
    move       $a1,$zero
    addiu      $v0,$sp,64
    addiu      $a0,$sp,0
.L00001d14:
    addiu      $a0,$a0,2
    addiu      $a1,$a1,1
    lhu        $a4,0($v0)
    addiu      $v0,$v0,2
    slt        $a3,$a1,$s0
    lhu        $a2,-2($a0)
    addiu      $s1,$s1,2
    nor        $a4,$a4,$zero
    and        $a2,$a2,$a4
    bnez       $a3, .L00001d14
    sh         $a2,42($s1)
.L00001d40:
    b          .L00001c00
    li         $v0,12
.L00001d48:
    b          .L00001a60
    move       $t2,$zero
.L00001d50:
    jal        crmSubtractZ
    addiu      $a1,$sp,64
    b          .L00001ba0
    move       $s3,$zero
.L00001d60:
    beqz       $s3, .L00001f48
    nop
    beqz       $s2, .L00001dbc
    move       $v0,$zero
    move       $a1,$s1
    addiu      $a0,$sp,0
.L00001d78:
    lhu        $a7,44($a1)
    addiu      $v0,$v0,1
    lhu        $a6,0($a0)
    slt        $a5,$v0,$s0
    or         $a6,$a6,$a7
    sh         $a6,44($a1)
    beqz       $a5, .L00001dbc
    nop
    lhu        $t2,46($a1)
    addiu      $v0,$v0,1
    lhu        $t0,2($a0)
    slt        $t1,$v0,$s0
    addiu      $a1,$a1,4
    addiu      $a0,$a0,4
    or         $t0,$t0,$t2
    bnez       $t1, .L00001d78
    sh         $t0,42($a1)
.L00001dbc:
    lw         $a0,32($s1)
.L00001dc0:
    lw         $a0,28($a0)
    jal        vsema
    lw         $a0,4($a0)
    b          .L00001c00
    move       $v0,$zero
.L00001dd4:
    move       $a7,$zero
    bgez       $v0, .L000019c0
    addu       $t0,$a5,$t2
.L00001de0:
    addu       $t1,$v0,$t3
    b          .L000019c8
    move       $a1,$zero
.L00001dec:
    move       $a7,$zero
    bgez       $v0, .L00001c44
    addu       $t0,$a5,$t2
.L00001df8:
    addu       $t1,$v0,$t3
    b          .L00001c4c
    move       $a1,$zero
.L00001e04:
    addu       $s3,$ra,$a6
    bltz       $a5, .L00001f7c
    move       $t0,$t2
    bltz       $v0, .L00001f88
    move       $a7,$a5
.L00001e18:
    move       $t1,$t3
    move       $a1,$v0
.L00001e20:
    sra        $t8,$a7,0x6
    srl        $t8,$t8,0x19
    addu       $t8,$t8,$a7
    sra        $t8,$t8,0x7
    bne        $t8, $s2, .L000019e0
    addu       $at,$t0,$a7
    addiu      $at,$at,-1
    ld         $v0,128($sp)
    sra        $ra,$at,0x6
    srl        $ra,$ra,0x19
    addiu      $v0,$v0,-1
    sra        $t9,$v0,0x6
    addu       $ra,$ra,$at
    srl        $t9,$t9,0x19
    sra        $ra,$ra,0x7
    addu       $t9,$t9,$v0
    sra        $t9,$t9,0x7
    bne        $t9, $ra, .L000019e0
    sra        $v1,$a1,0x6
    srl        $v1,$v1,0x19
    addu       $v1,$v1,$a1
    sra        $v1,$v1,0x7
    bne        $s2, $v1, .L000019e0
    addiu      $a6,$s3,-1
    sra        $a3,$a6,0x6
    addu       $a5,$t1,$a1
    srl        $a3,$a3,0x19
    addiu      $a5,$a5,-1
    sra        $a4,$a5,0x6
    addu       $a3,$a3,$a6
    srl        $a4,$a4,0x19
    sra        $a3,$a3,0x7
    addu       $a4,$a4,$a5
    sra        $a4,$a4,0x7
    bne        $a3, $a4, .L000019e0
    nop
    b          .L00001998
    nop
.L00001eb8:
    sra        $a4,$at,0x6
    addu       $t9,$t0,$a7
    srl        $a4,$a4,0x19
    addiu      $t9,$t9,-1
    sra        $a5,$t9,0x6
    addu       $a4,$a4,$at
    srl        $a5,$a5,0x19
    sra        $a4,$a4,0x7
    addu       $a5,$a5,$t9
    sra        $a5,$a5,0x7
    bne        $a4, $a5, .L000019e0
    sra        $a5,$a6,0x6
    srl        $a5,$a5,0x19
    sra        $t9,$a1,0x6
    addu       $a5,$a5,$a6
    srl        $t9,$t9,0x19
    sra        $a5,$a5,0x7
    addu       $t9,$t9,$a1
    sra        $t9,$t9,0x7
    bne        $a5, $t9, .L000019e0
    addu       $v1,$ra,$a6
    addiu      $v1,$v1,-1
    sra        $t9,$v1,0x6
    addu       $v0,$t1,$a1
    srl        $t9,$t9,0x19
    addiu      $v0,$v0,-1
    sra        $at,$v0,0x6
    addu       $t9,$t9,$v1
    srl        $at,$at,0x19
    sra        $t9,$t9,0x7
    addu       $at,$at,$v0
    sra        $at,$at,0x7
    bne        $t9, $at, .L000019e0
    nop
    b          .L00001998
    nop
.L00001f48:
    beqz       $s2, .L00001dbc
    move       $a1,$zero
    addiu      $a0,$sp,0
    move       $v0,$s1
.L00001f58:
    addiu      $a1,$a1,1
    slt        $a3,$a1,$s0
    addiu      $v0,$v0,2
    lhu        $a2,0($a0)
    addiu      $a0,$a0,2
    bnez       $a3, .L00001f58
    sh         $a2,42($v0)
    b          .L00001dc0
    lw         $a0,32($s1)
.L00001f7c:
    addu       $t0,$a5,$t2
    bgez       $v0, .L00001e18
    move       $a7,$zero
.L00001f88:
    addu       $t1,$v0,$t3
    b          .L00001e20
    move       $a1,$zero

glabel crm_changedrawables
    addiu      $sp,$sp,-48
    sd         $ra,32($sp)
    sd         $s1,40($sp)
    sd         $s0,24($sp)
    lw         $s0,76($a0)
    sd         $s3,8($sp)
    lw         $a5,12($s0)
    sd         $s4,16($sp)
    move       $s4,$a0
    move       $s3,$a1
    sd         $s2,0($sp)
    move       $s2,$a2
    beqz       $a5, .L00002154
    lw         $v0,16($s0)
    lw         $at,8($a5)
    beq        $at, $a1, .L00002128
    nop
    beqz       $v0, .L00002144
    li         $s1,1
    lw         $v1,8($v0)
    beq        $v1, $a2, .L00002144
    nop
    li         $s1,1
    ori        $s1,$s1,0x2
.L00001ff4:
    beqz       $s1, .L00002024
    move       $a0,$s0
.L00001ffc:
    jal        crm_unbinddrawable
    move       $a1,$s1
    andi       $a0,$s1,0x1
    beqz       $a0, .L00002170
    move       $a5,$zero
    sw         $zero,12($s0)
.L00002014:
    andi       $a1,$s1,0x2
    beqz       $a1, .L00002024
    nop
    sw         $zero,16($s0)
.L00002024:
    beqz       $a5, .L00002178
    nop
.L0000202c:
    bne        $s3, $s2, .L00002054
    lw         $v0,16($s0)
    bnez       $v0, .L0000205c
    nop
    lw         $a3,12($s0)
    sw         $a3,16($s0)
    lw         $a2,40($a3)
    addiu      $a2,$a2,1
    b          .L0000205c
    sw         $a2,40($a3)
.L00002054:
    beqz       $v0, .L00002194
    nop
.L0000205c:
    lw         $a5,12($s0)
    lw         $v0,36($a5)
    andi       $a3,$v0,0x10
    beqz       $a3, .L000020b0
    li         $a2,-17
    and        $a2,$v0,$a2
    sw         $a2,36($a5)
    lw         $a5,12($s0)
    lw         $a1,36($a5)
    andi       $a1,$a1,0x2
    lui        $a0,0x0
    beqz       $a1, .L000020ac
    addiu      $a0,$a0,0
    move       $a0,$s4
    jal        crm_makecurrentpbuf
    move       $a1,$a5
    beqz       $v0, .L0000214c
    nop
    b          .L0000210c
    ld         $s2,0($sp)
.L000020ac:
    sw         $a0,24($a5)
.L000020b0:
    lw         $v0,16($s0)
.L000020b4:
    lw         $a0,36($v0)
    andi       $a2,$a0,0x10
    lui        $a1,0x0
    beqz       $a2, .L00002104
    addiu      $a1,$a1,0
    li         $a4,-17
    and        $a4,$a0,$a4
    sw         $a4,36($v0)
    lw         $v0,16($s0)
    lw         $a3,36($v0)
    andi       $a3,$a3,0x2
    beqz       $a3, .L00002100
    move       $a0,$s4
    jal        crm_makecurrentpbuf
    move       $a1,$v0
    beqz       $v0, .L00002104
    nop
    b          .L0000210c
    ld         $s2,0($sp)
.L00002100:
    sw         $a1,24($v0)
.L00002104:
    move       $v0,$zero
    ld         $s2,0($sp)
.L0000210c:
    ld         $s3,8($sp)
    ld         $ra,32($sp)
    ld         $s4,16($sp)
    ld         $s0,24($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00002128:
    beqz       $v0, .L00002024
    nop
    lw         $a6,8($v0)
    beq        $a6, $a2, .L00002024
    move       $s1,$zero
    b          .L00001ff4
    ori        $s1,$s1,0x2
.L00002144:
    b          .L00001ffc
    move       $a0,$s0
.L0000214c:
    b          .L000020b4
    lw         $v0,16($s0)
.L00002154:
    beqz       $v0, .L00002024
    nop
    lw         $a7,8($v0)
    beq        $a7, $a2, .L00002024
    move       $s1,$zero
    b          .L00001ff4
    ori        $s1,$s1,0x2
.L00002170:
    b          .L00002014
    lw         $a5,12($s0)
.L00002178:
    jal        crm_finddrawable
    move       $a0,$s3
    sw         $v0,12($s0)
    lw         $t0,40($v0)
    addiu      $t0,$t0,1
    b          .L0000202c
    sw         $t0,40($v0)
.L00002194:
    jal        crm_finddrawable
    move       $a0,$s2
    sw         $v0,16($s0)
    lw         $t1,40($v0)
    addiu      $t1,$t1,1
    b          .L0000205c
    sw         $t1,40($v0)

glabel crimeValidateClip
    addiu      $sp,$sp,-96
    sd         $a2,8($sp)
    sd         $s3,16($sp)
    lw         $s3,8($a1)
    sd         $s2,24($sp)
    lw         $s2,76($a1)
    sd         $s6,56($sp)
    sd         $s8,64($sp)
    sd         $s4,72($sp)
    sd         $ra,80($sp)
    sd         $s1,40($sp)
    sd         $s7,48($sp)
    move       $s7,$a0
    move       $s1,$a1
    sd         $s0,32($sp)
    move       $s0,$a3
    beqz       $a2, .L0000220c
    sd         $s5,88($sp)
    lw         $s5,84($a1)
    lw         $s4,80($a1)
    lw         $s5,4($s5)
    b          .L00002214
    lw         $s4,4($s4)
.L0000220c:
    lw         $s5,20($a1)
    lw         $s4,16($a1)
.L00002214:
    lw         $v0,12($s2)
    beqz       $v0, .L0000228c
    move       $a0,$s1
    lw         $t8,8($v0)
    bne        $t8, $s4, .L0000228c
    move       $a0,$s1
    lw         $v0,16($s2)
    beqz       $v0, .L0000228c
    move       $a0,$s1
    lw         $t9,8($v0)
    bne        $t9, $s5, .L0000228c
    move       $a0,$s1
.L00002244:
    lw         $a0,8($s0)
    lw         $v0,12($s0)
    li         $s6,33
    lw         $a3,24($s0)
    addiu      $s8,$v0,-4096
    addiu      $ra,$a0,-4096
    sll        $ra,$ra,0x10
    andi       $s8,$s8,0xffff
    lw         $a6,28($s0)
    blez       $a3, .L000024d0
    or         $s8,$s8,$ra
    slti       $ra,$a3,6
    beqz       $ra, .L000024d8
    move       $t2,$s3
    move       $a7,$zero
    b          .L00002564
    move       $t0,$s6
    move       $a0,$s1
.L0000228c:
    move       $a1,$s4
    jal        crm_changedrawables
    move       $a2,$s5
    beqz       $v0, .L00002244
    nop
    b          .L00002400
    li         $v0,-1
.L000022a8:
    move       $t8,$t1
.L000022ac:
    move       $t1,$a3
    dsll32     $a2,$v0,0x10
    addu       $a1,$t8,$v0
    bltz       $a3, .L00002320
    sll        $ra,$a1,0x10
    move       $t3,$t9
.L000022c4:
    addu       $v1,$t3,$t1
    dsll32     $a0,$t1,0x0
    or         $a0,$a0,$a2
    or         $v1,$v1,$ra
    or         $v1,$v1,$a0
    sd         $v1,32($t2)
    lw         $a3,24($s0)
    slt        $at,$a7,$a3
    addiu      $t2,$t2,8
    sllv       $a0,$s6,$a7
    beqz       $at, .L0000232c
    addiu      $a7,$a7,1
    lw         $a1,0($a6)
.L000022f8:
    lw         $t1,8($a6)
    lw         $t9,12($a6)
    addiu      $a6,$a6,16
    or         $t0,$t0,$a0
    lw         $a3,-12($a6)
    bgez       $a1, .L000022a8
    move       $v0,$a1
    addu       $t8,$t1,$a1
    b          .L000022ac
    move       $v0,$zero
.L00002320:
    addu       $t3,$t9,$a3
    b          .L000022c4
    move       $t1,$zero
.L0000232c:
    beqz       $a3, .L000024e0
.L00002330:
    move       $v0,$t0
.L00002334:
    sw         $s8,88($s3)
    sw         $v0,16($s3)
    lw         $s6,12($s2)
    lw         $a1,36($s6)
    andi       $a1,$a1,0x1
    beqz       $a1, .L00002430
    move       $a1,$s6
    lw         $a0,24($s7)
    jal        crmRecomputeSZ
    move       $a2,$s0
    beqz       $v0, .L00002430
    nop
    b          .L00002400
    li         $v0,-1
.L0000236c:
    jal        crmLoadTlbABC
    move       $a2,$s1
    addiu      $s1,$s1,1
    slti       $a2,$s1,3
    beqz       $a2, .L000023a0
    addiu      $s0,$s0,4
.L00002384:
    lw         $a1,0($s0)
    bnez       $a1, .L0000236c
    move       $a0,$s4
    addiu      $s1,$s1,1
    slti       $a3,$s1,3
    bnez       $a3, .L00002384
    addiu      $s0,$s0,4
.L000023a0:
    lw         $t3,16($s3)
    sw         $t3,8208($s6)
    ld         $t2,32($s3)
    sd         $t2,8224($s6)
    ld         $t1,40($s3)
    sd         $t1,8232($s6)
    ld         $t0,48($s3)
    sd         $t0,8240($s6)
    ld         $a7,56($s3)
    sd         $a7,8248($s6)
    ld         $a6,64($s3)
    sd         $a6,8256($s6)
    lw         $a5,80($s3)
    sw         $a5,8272($s6)
    lw         $a4,88($s3)
    sw         $a4,8280($s6)
    blez       $s5, .L000023fc
    sw         $zero,16392($s6)
    move       $a0,$s6
    move       $a2,$s8
    ld         $a1,0($sp)
    jal        crmRestorePP
    move       $a3,$s5
.L000023fc:
    move       $v0,$zero
.L00002400:
    ld         $s6,56($sp)
    ld         $s3,16($sp)
    ld         $s2,24($sp)
    ld         $s8,64($sp)
    ld         $s4,72($sp)
    ld         $s0,32($sp)
    ld         $ra,80($sp)
    ld         $s1,40($sp)
    ld         $s5,88($sp)
    ld         $s7,48($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L00002430:
    lw         $v1,8($s0)
    sh         $v1,12($s6)
    lw         $v0,12($s0)
    sh         $v0,14($s6)
    lw         $at,16($s0)
    sh         $at,16($s6)
    lw         $ra,20($s0)
    sh         $ra,18($s6)
    lw         $t9,80($s1)
    lw         $v0,84($s1)
    lw         $t9,8($t9)
    sw         $t9,88($s1)
    lw         $t8,8($v0)
    bne        $s4, $s5, .L00002474
    sw         $t8,92($s1)
    b          .L00002494
    sw         $s8,80($s3)
.L00002474:
    lw         $a1,72($v0)
    lw         $a0,76($v0)
    addiu      $a0,$a0,-4096
    addiu      $a1,$a1,-4096
    sll        $a1,$a1,0x10
    andi       $a0,$a0,0xffff
    or         $a0,$a0,$a1
    sw         $a0,80($s3)
.L00002494:
    ld         $a1,8($sp)
    beqz       $a1, .L00002400
    move       $v0,$zero
    lw         $s4,24($s7)
    addiu      $s8,$s2,336
    lw         $s6,120($s4)
    addiu      $a1,$s2,848
    move       $a2,$s8
    sd         $a1,0($sp)
    jal        crmSavePP
    move       $a0,$s6
    move       $s5,$v0
    move       $s0,$s2
    b          .L00002384
    move       $s1,$zero
.L000024d0:
    beqz       $a3, .L00002504
    move       $a1,$a0
.L000024d8:
    bnez       $a3, .L00002330
    li         $t0,33
.L000024e0:
    lw         $a2,36($s0)
    ori        $v0,$t0,0x800
    beqz       $a2, .L00002330
    li         $a4,1
    lw         $a3,32($s0)
    bne        $a3, $a4, .L00002334
    nop
    b          .L00002334
    ori        $v0,$v0,0x400
.L00002504:
    bltz       $a0, .L0000254c
    lw         $a3,16($s0)
    move       $a6,$a3
.L00002510:
    move       $a0,$v0
    bltz       $v0, .L00002558
    lw         $a3,20($s0)
    move       $a7,$a3
.L00002520:
    addu       $t2,$a6,$a1
    sll        $t2,$t2,0x10
    dsll32     $t0,$a0,0x0
    addu       $a5,$a7,$a0
    dsll32     $t1,$a1,0x10
    or         $a5,$a5,$t2
    or         $t0,$t0,$t1
    or         $a5,$a5,$t0
    sd         $a5,32($s3)
    b          .L000024d8
    lw         $a3,24($s0)
.L0000254c:
    addu       $a6,$a3,$a0
    b          .L00002510
    move       $a1,$zero
.L00002558:
    addu       $a7,$a3,$v0
    b          .L00002520
    move       $a0,$zero
.L00002564:
    sllv       $a0,$s6,$a7
    addiu      $a7,$a7,1
    b          .L000022f8
    lw         $a1,0($a6)

glabel crimeValidateDDClip
    addiu      $sp,$sp,-32
    lw         $v0,4($a1)
    sd         $s1,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a1
    beqz       $v0, .L000026dc
    sd         $ra,24($sp)
    bltz       $v0, .L000025a0
    slti       $at,$v0,32
    bnez       $at, .L000025a8
    nop
.L000025a0:
    b          .L0000266c
    li         $a0,22
.L000025a8:
    lw         $v1,24($a0)
    sll        $a1,$v0,0x2
    addu       $v1,$v1,$a1
    lw         $s1,184($v1)
    sd         $v1,0($sp)
    beqz       $s1, .L000026a4
    sw         $zero,184($v1)
.L000025c4:
    lbu        $a2,8($s0)
    beqz       $a2, .L000025e0
    sb         $a2,8($s1)
    addiu      $a1,$s1,20
    lbu        $a2,8($s0)
    jal        bcopy
    addiu      $a0,$s0,20
.L000025e0:
    lw         $a3,16($s1)
    lw         $a1,12($s0)
    sltu       $a3,$a3,$a1
    beqz       $a3, .L00002624
    nop
    lw         $a0,276($s1)
    beqz       $a0, .L0000260c
    nop
    jal        kern_free
    nop
    lw         $a1,12($s0)
.L0000260c:
    jal        kern_malloc
    sll        $a0,$a1,0x3
    sw         $v0,276($s1)
    lw         $a4,12($s0)
    sw         $a4,16($s1)
    lw         $a1,12($s0)
.L00002624:
    sw         $a1,12($s1)
    lw         $a2,12($s0)
    sll        $a2,$a2,0x3
    blez       $a2, .L00002688
    ld         $a4,0($sp)
    lw         $a1,276($s1)
    jal        copyin
    lw         $a0,276($s0)
    beqz       $v0, .L00002688
    ld         $a4,0($sp)
    jal        kern_free
    lw         $a0,276($s1)
    li         $a3,-20
    bne        $s1, $a3, .L00002694
    nop
.L00002660:
    jal        kern_free
    move       $a0,$s1
    li         $a0,14
.L0000266c:
    ld         $ra,24($sp)
.L00002670:
    move       $v0,$a0
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
    ld         $a4,0($sp)
.L00002688:
    move       $a0,$zero
    b          .L0000266c
    sw         $s1,184($a4)
.L00002694:
    jal        kern_free
    addiu      $a0,$s1,20
    b          .L00002660
    nop
.L000026a4:
    jal        kern_malloc
    li         $a0,280
    move       $s1,$v0
    move       $a0,$v0
    jal        bzero
    li         $a1,280
    lw         $a5,12($s0)
    beqz       $a5, .L000025c4
    sw         $a5,16($s1)
    lw         $a0,12($s0)
    jal        kern_malloc
    sll        $a0,$a0,0x3
    b          .L000025c4
    sw         $v0,276($s1)
.L000026dc:
    jal        crm_finddrawable
    lw         $a0,0($a1)
    lw         $a1,36($v0)
    andi       $a1,$a1,0x2
    move       $s1,$v0
    beqz       $a1, .L00002700
    li         $a0,22
    b          .L00002670
    ld         $ra,24($sp)
.L00002700:
    lw         $a5,20($v0)
    beqz       $a5, .L000027d0
    nop
.L0000270c:
    lbu        $a2,8($s0)
    beqz       $a2, .L0000272c
    sb         $a2,8($a5)
    lw         $a1,20($s1)
    addiu      $a0,$s0,20
    lbu        $a2,8($s0)
    jal        bcopy
    addiu      $a1,$a1,20
.L0000272c:
    lw         $a5,20($s1)
    lw         $a2,16($a5)
    lw         $a1,12($s0)
    sltu       $a2,$a2,$a1
    beqz       $a2, .L00002780
    nop
    lw         $a0,276($a5)
    beqz       $a0, .L0000275c
    nop
    jal        kern_free
    nop
    lw         $a1,12($s0)
.L0000275c:
    jal        kern_malloc
    sll        $a0,$a1,0x3
    lw         $a5,20($s1)
    sw         $v0,276($a5)
    lw         $a4,20($s1)
    lw         $a3,12($s0)
    sw         $a3,16($a4)
    lw         $a1,12($s0)
    lw         $a5,20($s1)
.L00002780:
    sw         $a1,12($a5)
    lw         $a2,12($s0)
    sll        $a2,$a2,0x3
    blez       $a2, .L000027c0
    move       $a0,$zero
    lw         $a1,20($s1)
    lw         $a0,276($s0)
    jal        copyin
    lw         $a1,276($a1)
    beqz       $v0, .L000027c0
    move       $a0,$zero
    lw         $a2,20($s1)
    li         $a0,14
    b          .L0000266c
    sw         $zero,12($a2)
    move       $a0,$zero
.L000027c0:
    lui        $a3,0x0
    addiu      $a3,$a3,0
    b          .L0000266c
    sw         $a3,28($s1)
.L000027d0:
    jal        kern_malloc
    li         $a0,280
    move       $a0,$v0
    li         $a1,280
    jal        bzero
    sw         $v0,20($s1)
    lw         $a4,12($s0)
    lw         $a5,20($s1)
    beqz       $a4, .L0000280c
    sw         $a4,16($a5)
    lw         $a0,12($s0)
    jal        kern_malloc
    sll        $a0,$a0,0x3
    lw         $a1,20($s1)
    sw         $v0,276($a1)
.L0000280c:
    b          .L0000270c
    lw         $a5,20($s1)

glabel crimeUpdateBackTiles
    addiu      $sp,$sp,-64
    sd         $a1,16($sp)
    sd         $s3,32($sp)
    sd         $ra,40($sp)
    lbu        $at,1($a2)
    sd         $s0,48($sp)
    move       $v0,$a0
    sd         $s1,24($sp)
    move       $s1,$a2
    bnez       $at, .L0000284c
    sd         $s2,56($sp)
    lbu        $v1,0($a2)
    beqz       $v1, .L00002978
    nop
.L0000284c:
    lw         $s0,24($v0)
    move       $a1,$zero
    addiu      $s3,$s0,484
    jal        mrupdatef
    move       $a0,$s3
    jal        RRM_CheckValidFault
    lw         $a0,0($s0)
    beqz       $v0, .L00002880
    nop
    jal        mrunlock
    move       $a0,$s3
    b          .L0000297c
    li         $v0,4
.L00002880:
    lw         $a1,40($s0)
    lw         $a1,24($a1)
    lw         $a0,44($a1)
    addiu      $a0,$a0,1
    sw         $a0,44($a1)
    lbu        $a1,1($s1)
    beqz       $a1, .L000028b0
    subu       $a2,$s1,$a1
    lui        $a0,0x0
    addiu      $a2,$a2,258
    jal        crmSubtractBackTiles
    addiu      $a0,$a0,0
.L000028b0:
    lbu        $a1,0($s1)
    lui        $s2,0x0
    beqz       $a1, .L000028f8
    addiu      $s2,$s2,0
    move       $a0,$s2
    jal        crmAddBackTiles
    addiu      $a2,$s1,2
    beqz       $v0, .L000028f8
    nop
    jal        mrunlock
    move       $a0,$s3
    lw         $t9,40($s0)
    lw         $t9,24($t9)
    lw         $t8,44($t9)
    li         $v0,12
    addiu      $t8,$t8,-1
    b          .L0000297c
    sw         $t8,44($t9)
.L000028f8:
    lw         $at,40($s0)
    lw         $at,24($at)
    lw         $ra,44($at)
    addiu      $ra,$ra,-1
    sw         $ra,44($at)
    jal        mrunlock
    move       $a0,$s3
    ld         $s1,16($sp)
    lw         $s1,76($s1)
    lw         $a0,120($s0)
    addiu      $a1,$s1,848
    sd         $a1,0($sp)
    addiu      $a2,$s1,336
    jal        crmSavePP
    sd         $a2,8($sp)
    move       $s3,$v0
    move       $a0,$s0
    move       $a1,$s2
    sw         $v0,72($s1)
    jal        crmLoadTlbABC
    li         $a2,1
    blez       $s3, .L0000296c
    lw         $t8,4($s2)
    lw         $a0,120($s0)
    ld         $a1,0($sp)
    ld         $a2,8($sp)
    jal        crmRestorePP
    move       $a3,$s3
    lw         $t8,4($s2)
.L0000296c:
    beqz       $t8, .L00002998
    nop
    sw         $s2,4($s1)
.L00002978:
    move       $v0,$zero
.L0000297c:
    ld         $s3,32($sp)
    ld         $ra,40($sp)
    ld         $s0,48($sp)
    ld         $s1,24($sp)
    ld         $s2,56($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00002998:
    b          .L00002978
    sw         $zero,4($s1)

glabel crimeInvalTLB
    move       $a1,$zero
    lw         $a0,28($a0)
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        ddv_invaltlb
    li         $a2,-1
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16

glabel crimeMapGfx
    addiu      $sp,$sp,-48
    sd         $a1,0($sp)
    sd         $s1,24($sp)
    sd         $s0,8($sp)
    sd         $s2,32($sp)
    lw         $s2,28($a0)
    move       $s0,$a0
    lw         $s1,24($a0)
    sd         $ra,16($sp)
    jal        ddv_getaddr
    move       $a0,$s2
    move       $a1,$v0
    move       $a0,$s2
    sd         $v0,40($sp)
    li         $a3,5
    li         $a4,16
    lw         $a2,120($s1)
    jal        v_mapkvsegment
    move       $a5,$zero
    lw         $a2,8($s0)
    lw         $a2,4($a2)
    ld         $a1,40($sp)
    li         $v0,-1
    ld         $a3,0($sp)
    beq        $a2, $s0, .L00002a44
    addiu      $a1,$a1,20480
    sltu       $a3,$a3,$a1
    bnez       $a3, .L00002a5c
    nop
    b          .L00002a70
    ld         $ra,16($sp)
.L00002a44:
    move       $a0,$s2
    li         $a3,129
    li         $a4,16
    lw         $a2,128($s1)
    jal        v_mapkvsegment
    move       $a5,$zero
.L00002a5c:
    lw         $a4,4($s0)
    move       $v0,$zero
    ori        $a4,$a4,0x1
    sw         $a4,4($s0)
    ld         $ra,16($sp)
.L00002a70:
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    ld         $s2,32($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel crimeUnMapGfx
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    lw         $at,28($a0)
    lw         $v0,4($a0)
    li         $v1,-2
    move       $s0,$a0
    sd         $ra,8($sp)
    and        $v0,$v0,$v1
    bnez       $at, .L00002ac0
    sw         $v0,4($a0)
    move       $v0,$zero
.L00002ab0:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L00002ac0:
    jal        curthreadhandle
    nop
    jal        gthread_find
    move       $a0,$v0
    lw         $a0,4($v0)
    andi       $a0,$a0,0x4
    beqz       $a0, .L00002afc
    li         $a2,-1
    jal        thread_issproc
    lw         $a0,0($v0)
    beqz       $v0, .L00002afc
    li         $a2,-1
    b          .L00002ab0
    move       $v0,$zero
    li         $a2,-1
.L00002afc:
    move       $a1,$zero
    jal        ddv_invalphys_fal
    lw         $a0,28($s0)
    li         $a1,2
    bne        $v0, $a1, .L00002b1c
    nop
    b          .L00002ab0
    move       $v0,$zero
.L00002b1c:
    jal        crimeInvalTLB
    move       $a0,$s0
    li         $a2,1
    sw         $a2,56($s0)
    b          .L00002ab0
    move       $v0,$zero

glabel crimeFifoWaitTimeout
    lui        $a1,0x0
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,4
    sd         $ra,8($sp)
    jal        cmn_err
    addiu      $a1,$a1,256
    jal        crime_intr_disable
    li         $a0,25
    li         $a2,1
    sw         $a2,548($s0)
    jal        splhi
    sd         $s8,16($sp)
    move       $s8,$v0
    jal        sv_signal
    addiu      $a0,$s0,556
    ld         $s0,0($sp)
    jal        splx
    move       $a0,$s8
    ld         $ra,8($sp)
    ld         $s8,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel crmFifoWait
    addiu      $sp,$sp,-64
    sd         $ra,40($sp)
    sd         $s0,48($sp)
    sd         $s5,56($sp)
    sd         $s4,24($sp)
    sd         $s1,32($sp)
    sd         $s3,16($sp)
    lui        $s3,0x0
    sd         $s2,8($sp)
    addiu      $s3,$s3,0
    lh         $at,60($s3)
    slti       $v0,$a2,101
    move       $s1,$a0
    lw         $s2,0($gp)
    move       $s4,$a2
    move       $s5,$a2
    lw         $s3,12($s3)
    subu       $s2,$s2,$a1
    beqz       $at, .L00002c5c
    sd         $at,0($sp)
    move       $s5,$a2
.L00002be8:
    bgtz       $s5, .L00002c0c
    move       $s0,$s5
    b          .L00002c48
    nop
.L00002bf8:
    jal        us_delay
    li         $a0,1
    addiu      $s0,$s0,-1
    blez       $s0, .L00002c4c
    ld         $t9,0($sp)
.L00002c0c:
    lw         $t8,16384($s1)
    srl        $t8,$t8,0x12
    andi       $t8,$t8,0x7f
    sltu       $t8,$s2,$t8
    bnez       $t8, .L00002bf8
    move       $v0,$zero
.L00002c24:
    ld         $s2,8($sp)
.L00002c28:
    ld         $s3,16($sp)
    ld         $s4,24($sp)
    ld         $ra,40($sp)
    ld         $s0,48($sp)
    ld         $s1,32($sp)
    ld         $s5,56($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00002c48:
    ld         $t9,0($sp)
.L00002c4c:
    beqz       $t9, .L00002c70
    slt        $ra,$s5,$s4
    b          .L00002c24
    li         $v0,1
.L00002c5c:
    bnez       $v0, .L00002be8
    nop
    li         $s5,100
    b          .L00002be8
    nop
.L00002c70:
    li         $a0,1
    bnez       $ra, .L00002c90
    li         $v0,1
    sw         $a0,548($s3)
.L00002c80:
    bnez       $v0, .L00002da4
    li         $a0,4
.L00002c88:
    b          .L00002c28
    ld         $s2,8($sp)
.L00002c90:
    lw         $v1,40($s3)
    lw         $v1,24($v1)
    lw         $v0,44($v1)
    addiu      $v0,$v0,1
    sw         $v0,44($v1)
    li         $at,2
    sw         $at,544($s3)
    jal        splhi
    sw         $zero,548($s3)
    lw         $a1,0($gp)
    lui        $a0,0xffe0
    ori        $a0,$a0,0x3fff
    and        $a0,$a0,$a1
    sll        $a1,$s2,0xe
    or         $a0,$a0,$a1
    sw         $a0,0($gp)
    move       $s0,$v0
    jal        flushbus
    sw         $a0,1024($s1)
    jal        splx
    move       $a0,$s0
    lui        $a4,0xf
    subu       $a3,$s4,$s5
    ori        $a4,$a4,0x4240
    div        $zero,$a3,$a4
    mflo       $a3
    sll        $a2,$a3,0x2
    move       $a1,$s3
    subu       $a2,$a2,$a3
    lui        $a0,0x0
    sll        $a2,$a2,0x3
    teq        $a4,$zero,0x7
    addu       $a2,$a2,$a3
    addiu      $a0,$a0,0
    sll        $a2,$a2,0x2
    jal        timeout
    addiu      $a2,$a2,100
    jal        splhi
    sw         $v0,552($s3)
    move       $s0,$v0
    jal        crime_intr_enable
    li         $a0,25
    addiu      $a0,$s3,556
    li         $a1,25
    addiu      $a2,$s3,540
    jal        sv_wait
    move       $a3,$s0
    lui        $s2,0xffe0
    jal        splhi
    ori        $s2,$s2,0x3fff
    lw         $t8,0($gp)
    lw         $t9,0($gp)
    sll        $t9,$t9,0xe
    and        $t8,$s2,$t8
    or         $t8,$t8,$t9
    sw         $t8,0($gp)
    move       $s0,$v0
    jal        flushbus
    sw         $t8,1024($s1)
    jal        splx
    move       $a0,$s0
    lw         $ra,40($s3)
    lw         $ra,24($ra)
    lw         $t9,44($ra)
    addiu      $t9,$t9,-1
    sw         $t9,44($ra)
    lw         $v0,548($s3)
    b          .L00002c80
    sw         $zero,552($s3)
.L00002da4:
    move       $a2,$s4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,280
    b          .L00002c88
    lw         $v0,548($s3)

glabel crmIdleWait
    addiu      $sp,$sp,-48
    sd         $a1,8($sp)
    sd         $ra,24($sp)
    sd         $s2,0($sp)
    lui        $a4,0x1000
    move       $s2,$a0
    sd         $s0,16($sp)
    move       $s0,$a1
    blez       $a1, .L00002e18
    sd         $s1,32($sp)
    move       $s1,$a4
.L00002de8:
    lw         $a4,16384($s2)
    and        $a5,$s1,$a4
    srl        $a4,$a4,0x12
    beqz       $a5, .L00002e04
    andi       $a4,$a4,0x7f
    beqz       $a4, .L00002e18
    nop
.L00002e04:
    jal        us_delay
    li         $a0,1
    addiu      $s0,$s0,-1
    bgtz       $s0, .L00002de8
    nop
.L00002e18:
    ld         $s1,32($sp)
    beqz       $s0, .L00002e38
    ld         $s2,0($sp)
    ld         $ra,24($sp)
.L00002e28:
    sltiu      $v0,$s0,1
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00002e38:
    li         $a0,4
    lui        $a1,0x0
    ld         $a2,8($sp)
    jal        cmn_err
    addiu      $a1,$a1,320
    b          .L00002e28
    ld         $ra,24($sp)

glabel crimePcxSwap
    addiu      $sp,$sp,-64
    sd         $s0,16($sp)
    sd         $ra,0($sp)
    sd         $s4,8($sp)
    sd         $s5,32($sp)
    move       $s5,$a0
    move       $s4,$a1
    sd         $s1,24($sp)
    move       $s1,$a2
    jal        gfx_waitc_on
    lw         $s0,120($a0)
    sd         $s2,40($sp)
    bnez       $s4, .L00002f90
    sd         $s3,48($sp)
.L00002e8c:
    beqz       $s1, .L00002f60
    sw         $zero,16392($s0)
    move       $a0,$s0
    lw         $s2,76($s1)
    lui        $a1,0xf
    lw         $s3,8($s1)
    jal        crmIdleWait
    ori        $a1,$a1,0x4240
    beqz       $v0, .L00002ec8
    move       $a0,$s0
    lui        $a1,0x0
    jal        crimeError
    addiu      $a1,$a1,376
    b          .L00002f6c
    move       $v0,$zero
.L00002ec8:
    lw         $a4,144($s5)
    addiu      $a3,$s2,72
    sw         $a3,0($a4)
    lhu        $a2,4($s1)
    andi       $a2,$a2,0x2
    beqz       $a2, .L00002f24
    move       $a0,$s5
    lw         $v0,80($s1)
    lw         $a6,88($s1)
    lw         $a5,8($v0)
    bne        $a5, $a6, .L00002f0c
    addiu      $a3,$v0,64
    lw         $a7,84($s1)
    lw         $t0,92($s1)
    lw         $a7,8($a7)
    beq        $a7, $t0, .L00002f20
    addiu      $a3,$v0,64
.L00002f0c:
    move       $a2,$zero
    move       $a1,$s1
    jal        crimeValidateClip
    lw         $a0,48($s1)
    bltz       $v0, .L00002ff0
.L00002f20:
    move       $a0,$s5
.L00002f24:
    jal        crmValidateDrawable
    move       $a1,$s2
    move       $a0,$s0
    jal        crmLoadGlobalsFromShadow
    move       $a1,$s3
    move       $a0,$s0
    jal        crmLoadNonglobalsFromShadow
    move       $a1,$s3
    sw         $zero,16392($s0)
    lw         $a3,72($s2)
    beqz       $a3, .L00002f60
    move       $a0,$s0
    addiu      $a1,$s2,848
    jal        crmRestorePP
    addiu      $a2,$s2,336
.L00002f60:
    jal        gfx_waitc_off
    nop
    move       $v0,$zero
.L00002f6c:
    ld         $s2,40($sp)
    ld         $s3,48($sp)
    ld         $s4,8($sp)
    ld         $ra,0($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    ld         $s5,32($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00002f90:
    lw         $s2,76($s4)
    move       $a0,$s0
    addiu      $a2,$s2,336
    lw         $s3,8($s4)
    jal        crmSavePP
    addiu      $a1,$s2,848
    sw         $v0,72($s2)
    lw         $t0,496($s3)
    andi       $t0,$t0,0x1
    beqz       $t0, .L00002e8c
    move       $a0,$s0
    lui        $a1,0xf
    jal        crmIdleWait
    ori        $a1,$a1,0x4240
    beqz       $v0, .L00002fe4
    move       $a0,$s0
    lui        $a1,0x0
    jal        crimeError
    addiu      $a1,$a1,360
    b          .L00002f6c
    move       $v0,$zero
.L00002fe4:
    lw         $a2,8388($s0)
    b          .L00002e8c
    sw         $a2,196($s3)
.L00002ff0:
    b          .L00002f6c
    li         $v0,-1

glabel crmSavePP
    addiu      $sp,$sp,-64
    sd         $s0,24($sp)
    lw         $s0,16384($a0)
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    srl        $at,$s0,0x6
    sd         $s2,32($sp)
    andi       $s0,$s0,0x3f
    andi       $at,$at,0x3f
    sd         $at,0($sp)
    subu       $at,$at,$s0
    move       $s2,$a0
    sd         $ra,48($sp)
    sd         $s1,40($sp)
    beqz       $at, .L000030f4
    move       $s1,$at
.L00003038:
    bltz       $s1, .L000030ec
.L0000303c:
    move       $a0,$s2
    lui        $a2,0xf
    lw         $a1,0($gp)
    jal        crmFifoWait
    ori        $a2,$a2,0x4240
    beqz       $v0, .L0000306c
    move       $a0,$s2
    lui        $a1,0x0
    jal        crimeError
    addiu      $a1,$a1,392
    b          .L000030d0
    move       $s1,$zero
.L0000306c:
    blez       $s1, .L000030cc
    move       $a5,$zero
    ld         $a2,16($sp)
    ld         $a1,8($sp)
    sll        $a3,$s0,0x3
    addiu      $s0,$s0,1
    addu       $a3,$s2,$a3
.L00003088:
    ld         $a7,512($a3)
    sd         $a7,0($a1)
    lw         $a6,0($a3)
    slti       $a4,$s0,64
    sw         $a6,0($a2)
    addiu      $a1,$a1,8
    addiu      $a5,$a5,1
    lw         $a3,4($a3)
    slt        $a6,$a5,$s1
    bnez       $a4, .L000030b8
    sw         $a3,4($a2)
    move       $s0,$zero
.L000030b8:
    sll        $a3,$s0,0x3
    addiu      $s0,$s0,1
    addiu      $a2,$a2,8
    bnez       $a6, .L00003088
    addu       $a3,$s2,$a3
.L000030cc:
    sw         $zero,16392($s2)
.L000030d0:
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s2,32($sp)
    move       $v0,$s1
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L000030ec:
    b          .L0000303c
    addiu      $s1,$s1,64
.L000030f4:
    jal        crmFindPP
    move       $a1,$s0
    ld         $s1,0($sp)
    li         $t8,-1
    move       $s0,$v0
    bne        $v0, $t8, .L00003038
    subu       $s1,$s1,$v0
    b          .L000030d0
    move       $s1,$zero

glabel crmRestorePP
    addiu      $sp,$sp,-80
    sd         $ra,16($sp)
    sd         $s3,48($sp)
    sd         $s6,56($sp)
    sd         $s1,32($sp)
    sd         $s2,40($sp)
    sd         $s4,8($sp)
    li         $a5,3
    move       $s4,$a0
    sd         $s5,0($sp)
    move       $s5,$a3
    move       $s2,$zero
    sd         $s0,24($sp)
    move       $s0,$a2
    blez       $a3, .L000031f4
    sd         $s7,64($sp)
    move       $s1,$a1
    li         $s7,1
    li         $s6,2
    b          .L00003194
    lui        $s3,0xa000
.L0000316c:
    bne        $a5, $a1, .L00003220
    lui        $a1,0x0
    or         $v0,$s3,$a2
    ld         $at,0($s0)
    sd         $at,0($v0)
.L00003180:
    addiu      $s2,$s2,1
    slt        $v1,$s2,$s5
    addiu      $s1,$s1,8
    beqz       $v1, .L000031f4
    addiu      $s0,$s0,8
.L00003194:
    ld         $a3,0($s1)
    dsrl32     $a4,$a3,0x8
    dsrl32     $a2,$a3,0x0
    andi       $a4,$a4,0x7
    andi       $a2,$a2,0xff
    dsll       $a4,$a4,0xc
    dsll       $a2,$a2,0x3
    dsrl32     $a1,$a3,0xb
    or         $a2,$a2,$a4
    andi       $a1,$a1,0x3
    dsrl       $a2,$a2,0x2
    sll        $a2,$a2,0x2
    beq        $s6, $a1, .L000031e4
    addu       $a2,$s4,$a2
    bne        $s7, $a1, .L0000316c
    addiu      $a4,$a2,4
    lw         $a3,4($s0)
    or         $a4,$s3,$a4
    b          .L00003180
    sw         $a3,0($a4)
.L000031e4:
    or         $a7,$s3,$a2
    lw         $a6,0($s0)
    b          .L00003180
    sw         $a6,0($a7)
.L000031f4:
    ld         $s7,64($sp)
    ld         $s6,56($sp)
    ld         $s5,0($sp)
    ld         $s4,8($sp)
    ld         $s3,48($sp)
    ld         $ra,16($sp)
    ld         $s2,40($sp)
    ld         $s1,32($sp)
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00003220:
    move       $a0,$zero
    lw         $a4,0($s0)
    addiu      $a1,$a1,0
    lw         $a5,4($s0)
    jal        cmn_err
    addiu      $a1,$a1,400
    b          .L00003180
    li         $a5,3

glabel crmLoadNonglobalsFromShadow
    lw         $a5,496($a1)
    lw         $a7,96($a1)
    sw         $a7,8288($a0)
    lw         $a6,160($a1)
    sw         $a6,8352($a0)
    lw         $a4,168($a1)
    sw         $a4,8360($a0)
    lw         $a3,172($a1)
    sw         $a3,8364($a0)
    lw         $a2,176($a1)
    sw         $a2,8368($a0)
    lw         $v1,180($a1)
    andi       $v0,$a5,0x1
    sw         $v1,8372($a0)
    andi       $a4,$a5,0x80
    lw         $at,208($a1)
    andi       $a3,$a5,0x4
    beqz       $v0, .L0000329c
    sw         $at,8400($a0)
    lw         $t1,192($a1)
    sw         $t1,8384($a0)
    lw         $t0,196($a1)
    sw         $t0,8388($a0)
.L0000329c:
    beqz       $a3, .L000032bc
    nop
    lw         $t8,528($a1)
    sw         $t8,12304($a0)
    lw         $t3,560($a1)
    sw         $t3,12336($a0)
    lw         $t2,568($a1)
    sw         $t2,12344($a0)
.L000032bc:
    beqz       $a4, .L000032e4
    nop
    lw         $v0,112($a1)
    sw         $v0,8304($a0)
    lw         $at,116($a1)
    sw         $at,8308($a0)
    lw         $t9,120($a1)
    sw         $t9,8312($a0)
.L000032dc:
    jr         $ra
    nop
.L000032e4:
    lw         $t0,128($a1)
    sw         $t0,8320($a0)
    lw         $a7,132($a1)
    sw         $a7,8324($a0)
    lw         $a6,136($a1)
    sw         $a6,8328($a0)
    lw         $a4,140($a1)
    sw         $a4,8332($a0)
    lw         $a3,144($a1)
    andi       $a2,$a5,0x40
    sw         $a3,8336($a0)
    andi       $a6,$a5,0x10
    andi       $a4,$a5,0x8
    lw         $v1,148($a1)
    andi       $a3,$a5,0x20
    beqz       $a2, .L00003350
    sw         $v1,8340($a0)
    lw         $t9,376($a1)
    sw         $t9,8568($a0)
    lw         $t8,384($a1)
    sw         $t8,8576($a0)
    lw         $t3,392($a1)
    sw         $t3,8584($a0)
    lw         $t2,400($a1)
    sw         $t2,8592($a0)
    lw         $t1,404($a1)
    sw         $t1,8596($a0)
.L00003350:
    beqz       $a3, .L00003370
    nop
    ld         $v1,456($a1)
    sd         $v1,8648($a0)
    ld         $v0,464($a1)
    sd         $v0,8656($a0)
    ld         $at,472($a1)
    sd         $at,8664($a0)
.L00003370:
    beqz       $a6, .L000033d8
    nop
    lw         $v0,224($a1)
    sw         $v0,8416($a0)
    lw         $at,228($a1)
    sw         $at,8420($a0)
    lw         $t9,232($a1)
    sw         $t9,8424($a0)
    lw         $t8,236($a1)
    sw         $t8,8428($a0)
    lw         $t3,240($a1)
    sw         $t3,8432($a0)
    lw         $t2,244($a1)
    sw         $t2,8436($a0)
    lw         $t1,248($a1)
    sw         $t1,8440($a0)
    lw         $t0,252($a1)
    sw         $t0,8444($a0)
    lw         $a7,256($a1)
    sw         $a7,8448($a0)
    lw         $a6,260($a1)
    sw         $a6,8452($a0)
    lw         $a3,264($a1)
    sw         $a3,8456($a0)
    lw         $a2,268($a1)
    sw         $a2,8460($a0)
.L000033d8:
    beqz       $a4, .L000032dc
    nop
    ld         $t2,288($a1)
    sd         $t2,8480($a0)
    ld         $t1,296($a1)
    sd         $t1,8488($a0)
    lw         $t0,304($a1)
    sw         $t0,8496($a0)
    lw         $a7,308($a1)
    sw         $a7,8500($a0)
    ld         $a6,312($a1)
    sd         $a6,8504($a0)
    ld         $a5,320($a1)
    sd         $a5,8512($a0)
    ld         $a4,328($a1)
    sd         $a4,8520($a0)
    ld         $a3,336($a1)
    sd         $a3,8528($a0)
    lw         $a2,344($a1)
    sw         $a2,8536($a0)
    lw         $v1,348($a1)
    jr         $ra
    sw         $v1,8540($a0)

glabel crmLoadGlobalsFromShadow
    lw         $a4,496($a1)
    lw         $at,0($a1)
    sw         $at,8192($a0)
    lw         $t9,8($a1)
    sw         $t9,8200($a0)
    lw         $t8,16($a1)
    sw         $t8,8208($a0)
    lw         $t3,24($a1)
    sw         $t3,8216($a0)
    ld         $t2,32($a1)
    sd         $t2,8224($a0)
    ld         $t1,40($a1)
    sd         $t1,8232($a0)
    ld         $t0,48($a1)
    sd         $t0,8240($a0)
    ld         $a7,56($a1)
    sd         $a7,8248($a0)
    ld         $a6,64($a1)
    sd         $a6,8256($a0)
    lw         $a5,80($a1)
    sw         $a5,8272($a0)
    lw         $a3,88($a1)
    sw         $a3,8280($a0)
    lw         $a2,432($a1)
    sw         $a2,8624($a0)
    lw         $v1,440($a1)
    andi       $v0,$a4,0x4
    sw         $v1,8632($a0)
    lw         $at,216($a1)
    andi       $a3,$a4,0x80
    beqz       $v0, .L000034ec
    sw         $at,8408($a0)
    lw         $t0,512($a1)
    sw         $t0,12288($a0)
    lw         $a7,520($a1)
    sw         $a7,12296($a0)
    lw         $a6,536($a1)
    sw         $a6,12312($a0)
    lw         $a5,544($a1)
    sw         $a5,12320($a0)
    lw         $a2,552($a1)
    sw         $a2,12328($a0)
    lw         $v1,576($a1)
    sw         $v1,12352($a0)
    lw         $v0,584($a1)
    sw         $v0,12360($a0)
.L000034ec:
    beqz       $a3, .L000034fc
    andi       $t2,$a4,0x40
.L000034f4:
    jr         $ra
    nop
.L000034fc:
    andi       $a5,$a4,0x8
    ld         $t1,72($a1)
    andi       $a3,$a4,0x20
    beqz       $t2, .L00003530
    sd         $t1,8264($a0)
    lw         $at,368($a1)
    sw         $at,8560($a0)
    lw         $t9,416($a1)
    sw         $t9,8608($a0)
    lw         $t8,424($a1)
    sw         $t8,8616($a0)
    lw         $t3,408($a1)
    sw         $t3,8600($a0)
.L00003530:
    beqz       $a3, .L00003550
    nop
    lw         $a2,448($a1)
    sw         $a2,8640($a0)
    lw         $v1,480($a1)
    sw         $v1,8672($a0)
    lw         $v0,488($a1)
    sw         $v0,8680($a0)
.L00003550:
    beqz       $a5, .L000034f4
    nop
    lw         $a6,272($a1)
    sw         $a6,8464($a0)
    ld         $a5,280($a1)
    sd         $a5,8472($a0)
    lw         $a4,352($a1)
    sw         $a4,8544($a0)
    lw         $a3,360($a1)
    jr         $ra
    sw         $a3,8552($a0)

glabel restore_linear
    beqz       $a2, .L000035dc
    lui        $a7,0xa000
    move       $a4,$zero
    li         $t0,3
    srl        $a6,$a4,0x1f
.L00003590:
    sllv       $a5,$t0,$a4
    and        $t1,$a5,$a2
    addu       $a6,$a6,$a4
    beqz       $t1, .L000035c4
    nor        $t8,$a5,$zero
    sra        $t2,$a6,0x1
    sll        $t2,$t2,0x3
    addu       $t3,$t2,$a0
    addu       $t2,$t2,$a1
    or         $t3,$a7,$t3
    ld         $t2,0($t2)
    and        $a2,$a2,$t8
    sd         $t2,0($t3)
.L000035c4:
    addiu      $a4,$a4,2
    slti       $t3,$a4,32
    beqz       $t3, .L000035dc
    nop
    bnez       $a2, .L00003590
    srl        $a6,$a4,0x1f
.L000035dc:
    jr         $ra
    nop

glabel crimeRestore
    addiu      $sp,$sp,-64
    sd         $s0,40($sp)
    lui        $s0,0x0
    sd         $s1,24($sp)
    addiu      $s1,$s0,0
    lw         $s1,16($s1)
    sd         $s3,16($sp)
    move       $t3,$a0
    lui        $t1,0xa000
    lw         $t2,4($s1)
    move       $s3,$a1
    sd         $s2,32($sp)
    move       $s2,$a6
    lw         $s0,0($s0)
    blez       $a3, .L0000365c
    addiu      $t2,$t2,512
    move       $t0,$zero
.L00003628:
    lw         $t8,0($a2)
    srl        $t8,$t8,0x2
    addiu      $t0,$t0,1
    sll        $t8,$t8,0x2
    slt        $at,$t0,$a3
    addu       $t9,$t8,$s0
    addiu      $t9,$t9,12288
    addu       $t8,$t8,$t2
    or         $t9,$t1,$t9
    lw         $t8,0($t8)
    addiu      $a2,$a2,4
    bnez       $at, .L00003628
    sw         $t8,0($t9)
.L0000365c:
    sd         $a4,8($sp)
    sd         $a5,0($sp)
    beqz       $t3, .L0000367c
    sd         $ra,48($sp)
    addiu      $a0,$s0,5888
    addiu      $a1,$s1,8
    jal        restore_linear
    move       $a2,$t3
.L0000367c:
    beqz       $s3, .L00003690
    addiu      $a0,$s0,6016
    addiu      $a1,$s1,136
    jal        restore_linear
    move       $a2,$s3
.L00003690:
    ld         $s3,16($sp)
    ld         $s1,24($sp)
    blez       $s2, .L000036b4
    sw         $zero,16392($s0)
    move       $a0,$s0
    ld         $a1,8($sp)
    ld         $a2,0($sp)
    jal        crmRestorePP
    move       $a3,$s2
.L000036b4:
    ld         $ra,48($sp)
    ld         $s2,32($sp)
    ld         $s0,40($sp)
    jr         $ra
    addiu      $sp,$sp,64

glabel crimeLockOut
    jr         $ra
    li         $v0,1

glabel crimePcxSwitch
    jr         $ra
    move       $v0,$zero

glabel crimeSuspend
    beqz       $a0, .L000036ec
    nop
    lw         $at,60($a0)
    beqz       $at, .L000036f4
    nop
.L000036ec:
    jr         $ra
    move       $v0,$zero
.L000036f4:
    b          .L000036ec
    sw         $zero,72($a0)

glabel crimeResume
    addiu      $sp,$sp,-16
    beqz       $a0, .L0000371c
    sd         $ra,0($sp)
    lw         $at,72($a0)
    beqz       $at, .L00003720
    ld         $ra,0($sp)
    jal        force_resched
    sw         $zero,72($a0)
.L0000371c:
    ld         $ra,0($sp)
.L00003720:
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16

glabel crimeLoadTimingTable
    addiu      $sp,$sp,-16
    move       $at,$a0
    sd         $ra,0($sp)
    move       $a2,$a1
    jal        crime_setvideotiming
    lw         $a1,124($at)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crimeOpenPbuf
    lw         $a0,0($a1)
    addiu      $sp,$sp,-32
    li         $a4,22
    sd         $s0,0($sp)
    move       $s0,$a1
    beqz       $a0, .L000037a8
    sd         $ra,8($sp)
    lw         $v0,12($a1)
    bltz       $v0, .L000037a8
    slti       $v0,$v0,3
    beqz       $v0, .L000037a8
    nop
    lw         $v0,4($a1)
    blez       $v0, .L000037a8
    slti       $v0,$v0,2049
    beqz       $v0, .L000037a8
    nop
    lw         $v0,8($a1)
    blez       $v0, .L000037a8
    slti       $v0,$v0,2049
    bnez       $v0, .L000037bc
    nop
.L000037a8:
    ld         $ra,8($sp)
    move       $v0,$a4
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000037bc:
    jal        crm_finddrawable
    sd         $s1,16($sp)
    lw         $a0,36($v0)
    li         $v1,16
    move       $s1,$v0
    beq        $a0, $v1, .L000037e0
    li         $a4,11
    b          .L000037a8
    ld         $s1,16($sp)
.L000037e0:
    ori        $a0,$a0,0x2
    sw         $a0,36($v0)
    lw         $a1,16($s0)
    andi       $a1,$a1,0x1
    beqz       $a1, .L000037fc
    ori        $v0,$a0,0x8
    sw         $v0,36($s1)
.L000037fc:
    jal        kern_malloc
    li         $a0,40
    move       $a0,$v0
    sw         $v0,24($s1)
    jal        bzero
    li         $a1,40
    lw         $a4,12($s0)
    lw         $a2,8($s0)
    li         $a3,1
    lw         $a1,4($s0)
    sllv       $a3,$a3,$a4
    lw         $a0,24($s1)
    jal        crmAllocPbuffer
    sll        $a3,$a3,0x3
    beqz       $v0, .L00003850
    move       $s0,$v0
    jal        crm_destroydrawable
    move       $a0,$s1
    ld         $s1,16($sp)
    b          .L000037a8
    move       $a4,$s0
.L00003850:
    ld         $s1,16($sp)
    b          .L000037a8
    move       $a4,$zero

glabel crimeClosePbuf
    addiu      $sp,$sp,-32
    sd         $a0,0($sp)
    addiu      $a0,$gp,0
    sd         $s3,8($sp)
    move       $s3,$a1
    sd         $ra,16($sp)
    jal        mutex_lock
    li         $a1,25
    jal        crm_mapcliptodraw
    lw         $a0,0($s3)
    beqz       $v0, .L000038ec
    ld         $s3,8($sp)
    lw         $at,40($v0)
    beqz       $at, .L000038d4
    nop
    lw         $v1,36($v0)
    addiu      $a0,$gp,0
    ori        $v1,$v1,0x20
    jal        mutex_unlock
    sw         $v1,36($v0)
    ld         $a0,0($sp)
    jal        RRM_CheckValidFault
    lw         $a0,0($a0)
    beqz       $v0, .L000038cc
    li         $v0,4
.L000038c0:
    ld         $ra,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000038cc:
    b          .L000038c0
    move       $v0,$zero
.L000038d4:
    jal        crm_destroydrawable
    move       $a0,$v0
    jal        mutex_unlock
    addiu      $a0,$gp,0
    b          .L000038c0
    move       $v0,$zero
.L000038ec:
    jal        mutex_unlock
    addiu      $a0,$gp,0
    b          .L000038c0
    li         $v0,22

glabel crm_makecurrentpbuf
    lw         $a0,24($a1)
    addiu      $sp,$sp,-16
    lw         $at,36($a1)
    move       $v0,$a1
    sd         $a1,8($sp)
    sd         $ra,0($sp)
    jal        crmAllocPbufTiles
    andi       $a1,$at,0x8
    beqz       $v0, .L00003930
    ld         $ra,0($sp)
    li         $v0,12
.L00003928:
    jr         $ra
    addiu      $sp,$sp,16
.L00003930:
    ld         $a0,8($sp)
    lw         $v1,36($a0)
    move       $v0,$zero
    ori        $v1,$v1,0x4
    b          .L00003928
    sw         $v1,36($a0)

glabel crime_load_fbtlb
    addiu      $sp,$sp,-80
    sd         $a0,24($sp)
    sd         $s2,40($sp)
    sd         $ra,56($sp)
    sd         $s4,48($sp)
    sd         $s3,32($sp)
    move       $s3,$a1
    move       $s4,$a2
    sd         $s1,64($sp)
    move       $s1,$a3
    jal        RRM_CheckValidFault
    lw         $s2,76($a1)
    bltz       $v0, .L00003b14
    sd         $s0,72($sp)
    lw         $at,16($s2)
    lw         $at,8($at)
    lw         $a2,20($s3)
    bne        $at, $a2, .L00003a04
    move       $a0,$zero
.L00003994:
    lbu        $v0,1($s1)
    beqz       $v0, .L00003a20
    li         $v1,1
    beq        $v0, $v1, .L000039cc
    nop
    li         $v0,22
.L000039ac:
    ld         $s3,32($sp)
.L000039b0:
    ld         $s2,40($sp)
    ld         $ra,56($sp)
    ld         $s4,48($sp)
    ld         $s0,72($sp)
    ld         $s1,64($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L000039cc:
    beqz       $v0, .L00003a20
    nop
    lw         $v0,16($s2)
    beqz       $v0, .L00003a2c
    nop
.L000039e0:
    lbu        $a1,0($s1)
    beqz       $a1, .L00003b48
    li         $a2,1
    beq        $a1, $a2, .L00003b64
    li         $a3,2
    beq        $a1, $a3, .L00003a34
    nop
    b          .L000039ac
    li         $v0,22
.L00003a04:
    move       $a0,$s3
    jal        crm_changedrawables
    lw         $a1,16($s3)
    beqz       $v0, .L00003b1c
    nop
    b          .L000039ac
    li         $v0,22
.L00003a20:
    lw         $v0,12($s2)
    bnez       $v0, .L000039e0
    nop
.L00003a2c:
    b          .L000039ac
    li         $v0,22
.L00003a34:
    lw         $s0,32($v0)
    beqz       $s0, .L00003b54
    nop
.L00003a40:
    lbu        $a4,2($s1)
    slti       $a4,$a4,3
    beqz       $a4, .L00003b5c
    li         $v0,22
    lw         $a5,12($s0)
    andi       $a5,$a5,0x20
    beqz       $a5, .L00003a70
    nop
    lw         $v0,4($s1)
    lw         $a6,0($s0)
    bne        $a6, $v0, .L00003b84
    sd         $a0,16($sp)
.L00003a70:
    lw         $a7,8($s0)
    beqz       $a7, .L00003b7c
    li         $v0,14
    lw         $v0,4($s0)
    blez       $v0, .L00003ba0
    nop
.L00003a88:
    lbu        $t1,2($s1)
    sll        $t1,$t1,0x2
    addu       $t1,$s2,$t1
    sw         $s0,0($t1)
    lw         $t0,4($s4)
    bne        $t0, $s3, .L00003b0c
    sd         $a0,16($sp)
    lw         $s3,120($s4)
    jal        RRM_CheckValidFault
    ld         $a0,24($sp)
    bltz       $v0, .L00003bc0
    addiu      $a1,$s2,848
    sd         $a1,8($sp)
    addiu      $a2,$s2,336
    sd         $a2,0($sp)
    jal        crmSavePP
    move       $a0,$s3
    ld         $t2,16($sp)
    beqz       $t2, .L00003ae4
    move       $s2,$v0
    ld         $t3,16($sp)
    lw         $t3,80($t3)
    sw         $t3,8272($s3)
.L00003ae4:
    move       $a0,$s4
    move       $a1,$s0
    jal        crmLoadTlbABC
    lbu        $a2,2($s1)
    blez       $s2, .L00003b0c
    move       $a0,$s3
    ld         $a1,8($sp)
    ld         $a2,0($sp)
    jal        crmRestorePP
    move       $a3,$s2
.L00003b0c:
    b          .L000039ac
    move       $v0,$zero
.L00003b14:
    b          .L000039ac
    li         $v0,14
.L00003b1c:
    lw         $t9,16($s2)
    lh         $t8,14($t9)
    lh         $t9,12($t9)
    addiu      $t8,$t8,-4096
    addiu      $t9,$t9,-4096
    lw         $a0,8($s3)
    andi       $t8,$t8,0xffff
    sll        $t9,$t9,0x10
    or         $t8,$t8,$t9
    b          .L00003994
    sw         $t8,80($a0)
.L00003b48:
    lw         $s0,24($v0)
.L00003b4c:
    bnez       $s0, .L00003a40
    nop
.L00003b54:
    b          .L000039ac
    li         $v0,14
.L00003b5c:
    b          .L000039b0
    ld         $s3,32($sp)
.L00003b64:
    lw         $s0,28($v0)
    bnez       $s0, .L00003a40
    nop
    lui        $s0,0x0
    b          .L00003b4c
    addiu      $s0,$s0,0
.L00003b7c:
    b          .L000039b0
    ld         $s3,32($sp)
.L00003b84:
    sw         $v0,0($s0)
    jal        crm_get_dms_tiles
    move       $a0,$s0
    beqz       $v0, .L00003a70
    ld         $a0,16($sp)
    b          .L000039b0
    ld         $s3,32($sp)
.L00003ba0:
    bltz       $v0, .L00003bc8
    nop
    lw         $t8,12($s0)
    andi       $t8,$t8,0x1
    bnez       $t8, .L00003a88
    nop
    b          .L000039ac
    li         $v0,22
.L00003bc0:
    b          .L000039ac
    li         $v0,4
.L00003bc8:
    b          .L000039ac
    li         $v0,22

glabel crimePrivate
    addiu      $sp,$sp,-1040
    sd         $s1,1008($sp)
    lw         $s1,24($a0)
    sd         $ra,1024($sp)
    move       $v0,$a4
    sd         $s0,1000($sp)
    move       $a7,$zero
    sd         $s3,992($sp)
    sltiu      $at,$a2,22019
    move       $s3,$a0
    move       $s0,$a1
    sd         $s2,1016($sp)
    move       $s2,$a3
    bnez       $at, .L00003c48
    sd         $s4,1032($sp)
    sltiu      $v1,$a2,22020
    beqz       $v1, .L00003c70
    nop
    bnez       $a1, .L00003dec
    move       $a0,$a3
    li         $s0,14
.L00003c24:
    move       $v0,$s0
.L00003c28:
    ld         $s3,992($sp)
    ld         $s4,1032($sp)
    ld         $ra,1024($sp)
    ld         $s0,1000($sp)
    ld         $s1,1008($sp)
    ld         $s2,1016($sp)
    jr         $ra
    addiu      $sp,$sp,1040
.L00003c48:
    sltiu      $a0,$a2,22008
    bnez       $a0, .L00003cc4
    sltiu      $t2,$a2,22004
    sltiu      $a1,$a2,22009
    beqz       $a1, .L00003d58
    sltiu      $a5,$a2,22015
    bnez       $s0, .L00003dbc
    nop
    b          .L00003c24
    li         $s0,14
.L00003c70:
    sltiu      $a3,$a2,22028
    bnez       $a3, .L00003d14
    sltiu      $at,$a2,22024
    sltiu      $a4,$a2,22029
    bnez       $a4, .L00003fd0
    move       $a0,$s1
    sltiu      $a5,$a2,22032
    bnez       $a5, .L00003e9c
    sltiu      $a0,$a2,22030
    sltiu      $a6,$a2,22033
    bnez       $a6, .L00004254
    sltiu      $t0,$a2,22096
    bnez       $t0, .L00004ac0
    li         $v0,22095
    sltiu      $t1,$a2,22097
    beqz       $t1, .L00004294
    li         $a4,22097
    bnez       $a1, .L0000431c
    nop
    b          .L00003c24
    li         $s0,19
.L00003cc4:
    bnez       $t2, .L00003d90
    sltiu      $v0,$a2,22002
    sltiu      $t3,$a2,22005
    bnez       $t3, .L00003ff8
    sltiu      $t8,$a2,22006
    bnez       $t8, .L00003ed4
    li         $a6,22005
    sltiu      $t9,$a2,22007
    bnez       $t9, .L00004274
    li         $ra,22007
    bne        $a2, $ra, .L00004ae4
    li         $a0,1
    move       $a0,$a3
    li         $a2,8
    jal        copyin
    addiu      $a1,$sp,896
    beqz       $v0, .L000045cc
    move       $a0,$s3
    b          .L00003c24
    li         $s0,14
.L00003d14:
    bnez       $at, .L00003e08
    sltiu      $v1,$a2,22025
    bnez       $v1, .L000041b0
    sltiu      $a0,$a2,22026
    bnez       $a0, .L0000403c
    sltiu      $a1,$a2,22027
    bnez       $a1, .L0000435c
    move       $a0,$s2
    li         $a3,22027
    bne        $a2, $a3, .L00004ae4
    li         $a0,1
    lbu        $a4,152($s1)
    andi       $a4,$a4,0x1
    bnez       $a4, .L00004234
    sd         $v0,984($sp)
    b          .L00003c24
    li         $s0,11
.L00003d58:
    bnez       $a5, .L00003e40
    sltiu      $v0,$a2,22013
    sltiu      $a6,$a2,22016
    bnez       $a6, .L000041d0
    sltiu      $a7,$a2,22017
    bnez       $a7, .L00004068
    li         $ra,22016
    sltiu      $t0,$a2,22018
    beqz       $t0, .L00004210
    nop
    bnez       $s0, .L0000442c
    move       $a0,$a3
    b          .L00003c24
    li         $s0,14
.L00003d90:
    bnez       $v0, .L00003e6c
    sltiu      $v1,$a2,22001
    sltiu      $t1,$a2,22003
    bnez       $t1, .L000041f0
    li         $t2,22003
    bne        $a2, $t2, .L00004ae4
    li         $a0,1
    bnez       $a1, .L00003fa0
    nop
    b          .L00003c24
    li         $s0,14
.L00003dbc:
    lw         $s1,76($s0)
    beqz       $s1, .L0000422c
    nop
    lw         $a0,24($s1)
    beqz       $a0, .L00003f10
    nop
    jal        gfxdd_lookup
    nop
    bnez       $v0, .L00003f10
    nop
    b          .L00003c24
    li         $s0,11
.L00003dec:
    li         $a2,36
    jal        copyin
    addiu      $a1,$sp,0
    beqz       $v0, .L000043bc
    move       $a0,$s1
    b          .L00003c24
    li         $s0,14
.L00003e08:
    sltiu      $v0,$a2,22022
    bnez       $v0, .L00003f28
    sltiu      $a7,$a2,22021
    sltiu      $t3,$a2,22023
    bnez       $t3, .L000042fc
    li         $t8,22023
    bne        $a2, $t8, .L00004ae4
    li         $a0,1
    lbu        $t9,152($s1)
    andi       $t9,$t9,0x1
    bnez       $t9, .L00004190
    lw         $s3,124($s1)
    b          .L00003c24
    li         $s0,11
.L00003e40:
    bnez       $v0, .L00003f58
    sltiu      $t0,$a2,22012
    sltiu      $ra,$a2,22014
    beqz       $ra, .L00004130
    li         $v1,22014
    lw         $at,8($s3)
    lw         $at,4($at)
    beq        $at, $s3, .L000044dc
    move       $a0,$a3
    b          .L00003c24
    li         $s0,22
.L00003e6c:
    bnez       $v1, .L00003f7c
    li         $t2,21011
    beqz       $v0, .L00004ae4
    li         $a0,1
    move       $a0,$a3
    li         $a2,4
    jal        copyin
    addiu      $a1,$sp,948
    beqz       $v0, .L00004600
    nop
    b          .L00003c24
    li         $s0,14
.L00003e9c:
    bnez       $a0, .L00004018
    sltiu      $a1,$a2,22031
    bnez       $a1, .L00004338
    li         $a3,22031
    bne        $a2, $a3, .L00004ae4
    li         $a0,1
    lw         $a4,124($s1)
    beqz       $a4, .L00003ecc
    nop
    lw         $a5,128($s1)
    bnez       $a5, .L00004478
    li         $a1,1
.L00003ecc:
    b          .L00003c24
    li         $s0,22
.L00003ed4:
    bne        $a2, $a6, .L00004ae4
    li         $a0,1
    jal        kern_malloc
    li         $a0,772
    move       $s1,$v0
    move       $a0,$s2
    move       $a1,$v0
    jal        copyin
    li         $a2,772
    beqz       $v0, .L000042e0
    move       $a0,$s3
    jal        kern_free
    move       $a0,$s1
    b          .L00003c24
    li         $s0,14
.L00003f10:
    jal        crmUnmapPages
    addiu      $a0,$s1,24
    bnez       $v0, .L00003c24
    move       $s0,$v0
    b          .L00003c24
    sw         $zero,24($s1)
.L00003f28:
    bnez       $a7, .L000040d4
    li         $at,22020
    beqz       $v0, .L00004ae4
    li         $a0,1
    move       $a0,$s2
    li         $a2,12
    jal        copyin
    addiu      $a1,$sp,464
    beqz       $v0, .L000046cc
    move       $a0,$s3
    b          .L00003c24
    li         $s0,14
.L00003f58:
    bnez       $t0, .L00004158
    li         $a0,22009
    beqz       $v0, .L00004ae4
    li         $a0,1
    lw         $t1,76($s0)
    bnez       $t1, .L000042b0
    nop
    b          .L00003c24
    li         $s0,22
.L00003f7c:
    bne        $a2, $t2, .L00004ae0
    move       $a0,$a3
    li         $a2,12
    jal        copyin
    addiu      $a1,$sp,952
    beqz       $v0, .L00004378
    nop
    b          .L00003c24
    li         $s0,14
.L00003fa0:
    lw         $s4,76($a1)
    beqz       $s4, .L00004398
    nop
    lw         $a0,24($s4)
    beqz       $a0, .L00004094
    addiu      $a2,$s4,24
    jal        gfxdd_lookup
    nop
    bnez       $v0, .L00004094
    addiu      $a2,$s4,24
    b          .L00003c24
    li         $s0,11
.L00003fd0:
    jal        crimeFrameInfo
    addiu      $a2,$sp,40
    li         $a2,32
    move       $a1,$s2
    jal        copyout
    addiu      $a0,$sp,40
    beqz       $v0, .L000043a0
    nop
    b          .L00003c24
    li         $s0,14
.L00003ff8:
    move       $a0,$a3
    li         $a2,8
    jal        copyin
    addiu      $a1,$sp,840
    beqz       $v0, .L000045e4
    lw         $a2,844($sp)
    b          .L00003c24
    li         $s0,14
.L00004018:
    li         $t3,22029
    bne        $a2, $t3, .L00004ae4
    li         $a0,1
    lbu        $t8,152($s1)
    andi       $t8,$t8,0x1
    bnez       $t8, .L00004174
    move       $a0,$s2
    b          .L00003c24
    li         $s0,11
.L0000403c:
    li         $t9,22025
    bne        $a2, $t9, .L00004ae4
    li         $a0,1
    move       $a0,$s2
    li         $a2,16
    jal        copyin
    addiu      $a1,$sp,424
    beqz       $v0, .L000043a8
    nop
    b          .L00003c24
    li         $s0,14
.L00004068:
    bne        $a2, $ra, .L00004ae4
    li         $a0,1
    move       $a0,$a3
    li         $a2,8
    jal        copyin
    addiu      $a1,$sp,784
    beqz       $v0, .L00004628
    move       $a0,$s1
    b          .L00003c24
    li         $s0,14
    addiu      $a2,$s4,24
.L00004094:
    li         $a1,648
    jal        crmMapPages
    lw         $a0,8($s0)
    bnez       $v0, .L00003c24
    move       $s0,$v0
    jal        ddv_getaddr
    lw         $a0,24($s4)
    li         $a2,4
    move       $a1,$s2
    addiu      $a0,$sp,944
    jal        copyout
    sw         $v0,944($sp)
    beqz       $v0, .L00003c28
    move       $v0,$s0
    b          .L00003c24
    li         $s0,14
.L000040d4:
    bne        $a2, $at, .L00004ae4
    li         $a0,1
    jal        kern_malloc
    li         $a0,544
    move       $s0,$v0
    move       $a0,$v0
    jal        bzero
    li         $a1,544
    lw         $v0,312($s1)
    addiu      $v0,$v0,1
    sw         $v0,312($s1)
    li         $a2,4
    move       $a1,$s2
    sw         $v0,8($s0)
    addiu      $a0,$sp,480
    jal        copyout
    sw         $v0,480($sp)
    beqz       $v0, .L00004494
    li         $a1,1
    jal        kern_free
    move       $a0,$s0
    b          .L00003c24
    li         $s0,14
.L00004130:
    bne        $a2, $v1, .L00004ae4
    li         $a0,1
    move       $a0,$a3
    li         $a2,20
    jal        copyin
    addiu      $a1,$sp,800
    beqz       $v0, .L000046e4
    move       $a0,$s0
    b          .L00003c24
    li         $s0,14
.L00004158:
    bne        $a2, $a0, .L00004ae4
    li         $a0,1
    lw         $a1,76($s0)
    bnez       $a1, .L000042c8
    nop
    b          .L00003c24
    li         $s0,22
.L00004174:
    li         $a2,56
    jal        copyin
    addiu      $a1,$sp,80
    beqz       $v0, .L000046f4
    move       $a0,$s1
    b          .L00003c24
    li         $s0,14
.L00004190:
    move       $a0,$s2
    li         $a2,8
    jal        copyin
    addiu      $a1,$sp,456
    beqz       $v0, .L000044f8
    lbu        $a1,456($sp)
    b          .L00003c24
    li         $s0,14
.L000041b0:
    move       $a0,$s2
    li         $a2,258
    jal        copyin
    addiu      $a1,$sp,136
    beqz       $v0, .L00004704
    move       $a0,$s3
    b          .L00003c24
    li         $s0,14
.L000041d0:
    move       $a0,$a3
    li         $a2,280
    jal        copyin
    addiu      $a1,$sp,488
    beqz       $v0, .L00004718
    move       $a0,$s3
    b          .L00003c24
    li         $s0,14
.L000041f0:
    move       $a0,$a3
    li         $a2,40
    jal        copyin
    addiu      $a1,$sp,904
    beqz       $v0, .L00004728
    move       $a0,$s3
    b          .L00003c24
    li         $s0,14
.L00004210:
    li         $a3,22018
    bne        $a2, $a3, .L00004ae4
    li         $a0,1
    bnez       $s0, .L00004448
    move       $a0,$s0
    b          .L00003c24
    li         $s0,14
.L0000422c:
    b          .L00003c24
    li         $s0,22
.L00004234:
    move       $a0,$s2
    li         $a2,16
    jal        copyin
    addiu      $a1,$sp,408
    beqz       $v0, .L0000479c
    move       $a0,$s1
    b          .L00003c24
    li         $s0,14
.L00004254:
    move       $a0,$s2
    li         $a2,4
    jal        copyin
    addiu      $a1,$sp,72
    beqz       $v0, .L000047bc
    move       $a0,$s1
    b          .L00003c24
    li         $s0,14
.L00004274:
    move       $a0,$a3
    li         $a2,48
    jal        copyin
    addiu      $a1,$sp,848
    beqz       $v0, .L000047cc
    move       $a0,$s1
    b          .L00003c24
    li         $s0,14
.L00004294:
    bne        $a2, $a4, .L00004ae4
    li         $a0,1
    lw         $a5,-30704($gp)
    beqz       $a5, .L00004680
    nop
    b          .L00003c28
    li         $v0,16
.L000042b0:
    lw         $a6,8($s3)
    lw         $a6,4($a6)
    beq        $a6, $s3, .L000043d0
    nop
    b          .L00003c24
    li         $s0,22
.L000042c8:
    lw         $a7,8($s3)
    lw         $a7,4($a7)
    beq        $a7, $s3, .L000043e4
    nop
    b          .L00003c24
    li         $s0,22
.L000042e0:
    jal        crimeSetGammaRamp
    move       $a1,$s1
    move       $s0,$v0
    jal        kern_free
    move       $a0,$s1
    b          .L00003c28
    move       $v0,$s0
.L000042fc:
    move       $a0,$s2
    li         $a2,12
    jal        copyin
    addiu      $a1,$sp,440
    beqz       $v0, .L00004898
    move       $a0,$s3
    b          .L00003c24
    li         $s0,14
.L0000431c:
    lw         $s4,76($a1)
    lw         $t0,32($s4)
    sd         $zero,976($sp)
    bnez       $t0, .L00004458
    sd         $t0,968($sp)
    b          .L00003c24
    li         $s0,22
.L00004338:
    li         $a2,20
    move       $a1,$s2
    lui        $a0,0x0
    jal        copyout
    addiu      $a0,$a0,0
    beqz       $v0, .L000046bc
    nop
    b          .L00003c24
    li         $s0,14
.L0000435c:
    li         $a2,4
    jal        copyin
    addiu      $a1,$sp,400
    beqz       $v0, .L000048fc
    move       $a0,$s3
    b          .L00003c24
    li         $s0,14
.L00004378:
    lw         $v0,124($s1)
    beqz       $v0, .L00004390
    nop
    lbu        $a1,46($v0)
    bnez       $a1, .L00004588
    addiu      $a1,$sp,952
.L00004390:
    b          .L00003c24
    li         $s0,19
.L00004398:
    b          .L00003c24
    li         $s0,22
.L000043a0:
    b          .L00003c24
    move       $s0,$zero
.L000043a8:
    lw         $s2,76($s0)
    bnez       $s2, .L00004638
    nop
    b          .L00003c24
    li         $s0,22
.L000043bc:
    move       $a1,$s0
    jal        crmDefineTex
    addiu      $a2,$sp,0
    b          .L00003c24
    move       $s0,$v0
.L000043d0:
    lw         $a2,136($s1)
    beqz       $a2, .L00004738
    addiu      $a2,$sp,824
    b          .L00003c24
    li         $s0,11
.L000043e4:
    lw         $a3,136($s1)
    beqz       $a3, .L000046c4
    move       $v0,$zero
    move       $a0,$zero
.L000043f4:
    addiu      $a0,$a0,1
    lw         $a4,132($s1)
    slti       $a5,$a0,4
    addu       $a4,$a4,$v0
    addiu      $v0,$v0,4
    bnez       $a5, .L000043f4
    sw         $zero,12($a4)
    lui        $a0,0x0
    jal        crmUnmapChunk
    addiu      $a0,$a0,824
    beqz       $v0, .L00004960
    nop
    b          .L00003c24
    li         $s0,14
.L0000442c:
    li         $a2,16
    jal        copyin
    addiu      $a1,$sp,768
    beqz       $v0, .L00004928
    move       $a0,$s1
    b          .L00003c24
    li         $s0,14
.L00004448:
    jal        crmDeallocTex
    move       $a1,$s2
    b          .L00003c24
    move       $s0,$v0
.L00004458:
    move       $a0,$s2
    li         $a2,4
    jal        copyin
    addiu      $a1,$sp,76
    beqz       $v0, .L000047dc
    lw         $v0,76($sp)
    b          .L00003c24
    li         $s0,14
.L00004478:
    sw         $a1,0($gp)
    jal        crime_i2cFpProbe
    lw         $a0,128($s1)
    lw         $a2,124($s1)
    move       $s0,$zero
    b          .L00003c24
    sb         $v0,46($a2)
.L00004494:
    addiu      $a0,$s0,16
    lui        $a2,0x0
    lw         $a3,8($s0)
    jal        init_sema
    addiu      $a2,$a2,512
    li         $a1,25
    addiu      $s2,$s1,476
    jal        mutex_lock
    move       $a0,$s2
    lw         $v0,456($s1)
    beqz       $v0, .L000044c8
    sw         $v0,0($s0)
    sw         $s0,4($v0)
.L000044c8:
    sw         $s0,456($s1)
    jal        mutex_unlock
    move       $a0,$s2
    b          .L00003c24
    move       $s0,$zero
.L000044dc:
    li         $a2,8
    jal        copyin
    addiu      $a1,$sp,792
    beqz       $v0, .L00004844
    lw         $a6,792($sp)
    b          .L00003c24
    li         $s0,14
.L000044f8:
    blez       $a1, .L00004888
    lw         $v0,0($gp)
    beqz       $v0, .L000048ec
    move       $s0,$a1
.L00004508:
    lbu        $a3,152($s1)
    andi       $a3,$a3,0x4
    beqz       $a3, .L00004538
    li         $a4,1
    move       $a1,$s3
    lw         $a0,128($s1)
    jal        crime_i2cProbe
    move       $a2,$s0
    move       $a0,$s3
    jal        crime_validate_ddc_data
    move       $a1,$s0
    li         $a4,1
.L00004538:
    addiu      $s1,$s3,232
    beq        $s0, $a4, .L000048e0
    addiu      $a0,$s3,100
.L00004544:
    lui        $a5,0x0
    addiu      $a5,$a5,0
    sll        $a6,$s0,0x3
    addu       $a5,$a5,$a6
    lh         $a5,34($a5)
    li         $a6,2
    beq        $a5, $a6, .L0000486c
    li         $a2,8
.L00004564:
    move       $a1,$s2
    lhu        $a6,0($s1)
    addiu      $a0,$sp,456
    jal        copyout
    sb         $a6,457($sp)
    beqz       $v0, .L00004910
    nop
    b          .L00003c24
    li         $s0,14
.L00004588:
    move       $a0,$s1
    lw         $s3,0($gp)
    li         $s4,1
    jal        crime_i2cfp_command
    sw         $s4,0($gp)
    lw         $a7,0($gp)
    beq        $a7, $s4, .L000048f4
    move       $s0,$v0
.L000045a8:
    bnez       $v0, .L00003c24
    li         $a2,12
    move       $a1,$s2
    jal        copyout
    addiu      $a0,$sp,952
    beqz       $v0, .L00003c28
    move       $v0,$s0
    b          .L00003c24
    li         $s0,14
.L000045cc:
    move       $a1,$s0
    move       $a2,$s1
    jal        crime_load_fbtlb
    addiu      $a3,$sp,896
    b          .L00003c24
    move       $s0,$v0
.L000045e4:
    move       $a0,$s3
    jal        crimeSetDisplayMode
    lw         $a1,840($sp)
    bltz       $v0, .L00004918
    nop
    b          .L00003c24
    move       $s0,$zero
.L00004600:
    lw         $a2,160($s1)
    lw         $a1,156($s1)
    lhu        $t1,948($sp)
    sb         $t1,154($s1)
    lhu        $t0,950($sp)
    move       $a0,$s1
    jal        crimePositionCursor
    sb         $t0,155($s1)
    b          .L00003c24
    move       $s0,$zero
.L00004628:
    jal        crimeClosePbuf
    addiu      $a1,$sp,784
    b          .L00003c24
    move       $s0,$v0
.L00004638:
    jal        RRM_CheckValidFault
    move       $a0,$s3
    bltz       $v0, .L00004920
    lw         $v0,432($sp)
    andi       $t2,$v0,0x1
    beqz       $t2, .L00004804
    andi       $a5,$v0,0x4
    move       $a0,$s3
    move       $a1,$s0
    move       $a2,$s2
    jal        crm_enablesz
    lw         $a3,12($s2)
    beqz       $v0, .L0000499c
    move       $a0,$v0
.L00004670:
    beqz       $a0, .L00004824
    li         $a1,25
.L00004678:
    b          .L00003c24
    li         $s0,12
.L00004680:
    lw         $t8,8($a1)
    li         $t9,1
    sw         $t9,-30704($gp)
    li         $t3,132
    sw         $t3,496($t8)
    jal        crimeInitSpecialDDRN
    lw         $a0,76($a1)
    lw         $ra,4($s3)
    ori        $ra,$ra,0x2
    sw         $ra,4($s3)
    jal        crmSwapBufd
    move       $a0,$s3
    sw         $zero,-30704($gp)
    b          .L00003c24
    move       $s0,$zero
.L000046bc:
    b          .L00003c24
    move       $s0,$zero
.L000046c4:
    b          .L00003c24
    li         $s0,11
.L000046cc:
    move       $a1,$s0
    move       $a2,$s1
    jal        crime_load_linear_tlb
    addiu      $a3,$sp,464
    b          .L00003c24
    move       $s0,$v0
.L000046e4:
    jal        crimeOpenPbuf
    addiu      $a1,$sp,800
    b          .L00003c24
    move       $s0,$v0
.L000046f4:
    jal        crmInitialize
    addiu      $a1,$sp,80
    b          .L00003c24
    move       $s0,$v0
.L00004704:
    move       $a1,$s0
    jal        crimeUpdateBackTiles
    addiu      $a2,$sp,136
    b          .L00003c24
    move       $s0,$v0
.L00004718:
    jal        crimeValidateDDClip
    addiu      $a1,$sp,488
    b          .L00003c24
    move       $s0,$v0
.L00004728:
    jal        crimePixelDma
    addiu      $a1,$sp,904
    b          .L00003c24
    move       $s0,$v0
.L00004738:
    li         $a1,1536
    jal        crmMapPages
    lw         $a0,132($s1)
    bnez       $v0, .L00003c24
    move       $s0,$v0
    lw         $at,824($sp)
    sw         $at,460($s1)
    jal        ddv_getaddr
    lw         $a0,824($sp)
    sw         $v0,136($s1)
    jal        ddv_getaddr
    lw         $a0,824($sp)
    li         $a2,4
    move       $a1,$s2
    addiu      $a0,$sp,828
    jal        copyout
    sw         $v0,828($sp)
    addiu      $a1,$sp,832
    lui        $a0,0x0
    jal        crmMapChunk
    addiu      $a0,$a0,824
    beqz       $v0, .L00004a48
    move       $s0,$v0
    b          .L00003c24
    li         $s0,14
.L0000479c:
    addiu      $a1,$sp,408
    jal        crime_i2c_cmd
    move       $a2,$s2
    bltz       $v0, .L00004994
    ld         $a1,984($sp)
    move       $s0,$zero
    b          .L00003c24
    sw         $v0,0($a1)
.L000047bc:
    jal        crimeBlankscreen
    lw         $a1,72($sp)
    b          .L00003c24
    move       $s0,$zero
.L000047cc:
    jal        crimeLoadTimingTable
    addiu      $a1,$sp,848
    b          .L00003c24
    move       $s0,$v0
.L000047dc:
    slti       $a2,$v0,128
    beqz       $a2, .L000047fc
    ld         $a3,968($sp)
    sll        $a4,$v0,0x2
    addu       $a3,$a3,$a4
    lw         $a3,32($a3)
    bnez       $a3, .L0000497c
    nop
.L000047fc:
    b          .L00003c24
    li         $s0,22
.L00004804:
    beqz       $a5, .L00004820
.L00004808:
    move       $a0,$s3
    move       $a1,$s0
    move       $a2,$s2
    jal        crm_enableovl
    lw         $a3,12($s2)
    bnez       $v0, .L00004678
.L00004820:
    li         $a1,25
.L00004824:
    addiu      $s0,$s1,476
    jal        mutex_lock
    move       $a0,$s0
    lw         $v0,456($s1)
    beqz       $v0, .L00004a00
    nop
    b          .L000049c0
    lw         $a0,436($sp)
.L00004844:
    li         $a7,1
    beq        $a6, $a7, .L00004aa8
.L0000484c:
    li         $a2,8
    move       $a1,$s2
    jal        copyout
    addiu      $a0,$sp,792
    beqz       $v0, .L000049f8
    nop
    b          .L00003c24
    li         $s0,14
.L0000486c:
    li         $a2,128
    jal        copyout
    lw         $a1,460($sp)
    beqz       $v0, .L00004564
    li         $a2,8
    b          .L00003c24
    li         $s0,14
.L00004888:
    bnez       $v0, .L00004508
    move       $s0,$a1
    b          .L00004508
    move       $s0,$zero
.L00004898:
    move       $a1,$s0
    addiu      $a3,$sp,440
    jal        crime_clear_buffer
    lw         $a2,120($s1)
    li         $t0,-1
    bne        $v0, $t0, .L00003c24
    move       $s0,$v0
    li         $a2,12
    lbu        $t1,450($sp)
    move       $a1,$s2
    addiu      $a0,$sp,440
    ori        $t1,$t1,0x2
    jal        copyout
    sb         $t1,450($sp)
    beqz       $v0, .L00004ab8
    nop
    b          .L00003c24
    li         $s0,14
.L000048e0:
    addiu      $s1,$s3,362
    b          .L00004544
    addiu      $a0,$s3,234
.L000048ec:
    b          .L00003c24
    li         $s0,22
.L000048f4:
    b          .L000045a8
    sw         $s3,0($gp)
.L000048fc:
    move       $a1,$zero
    jal        crimeUnSchedSwapBuf
    lw         $a2,400($sp)
    b          .L00003c24
    move       $s0,$v0
.L00004910:
    b          .L00003c24
    move       $s0,$zero
.L00004918:
    b          .L00003c24
    negu       $s0,$v0
.L00004920:
    b          .L00003c24
    li         $s0,14
.L00004928:
    addiu      $a2,$sp,768
    lw         $a1,76($s0)
    jal        crmAllocTex
    move       $a3,$zero
    bnez       $v0, .L00003c24
    move       $s0,$v0
    li         $a2,16
    move       $a1,$s2
    jal        copyout
    addiu      $a0,$sp,768
    beqz       $v0, .L00003c28
    move       $v0,$s0
    b          .L00003c24
    li         $s0,14
.L00004960:
    jal        crmUnmapPages
    addiu      $a0,$s1,460
    bnez       $v0, .L00003c24
    move       $s0,$v0
    sw         $zero,460($s1)
    b          .L00003c24
    sw         $zero,136($s1)
.L0000497c:
    sw         $v0,28($s4)
    lw         $t2,4($s1)
    beq        $t2, $s0, .L00004a10
    nop
    b          .L00003c24
    move       $s0,$zero
.L00004994:
    b          .L00003c24
    negu       $s0,$v0
.L0000499c:
    lw         $t3,432($sp)
    andi       $t3,$t3,0x4
    bnez       $t3, .L00004808
    nop
    b          .L00004670
    nop
.L000049b4:
    lw         $v0,0($v0)
    beqz       $v0, .L00004a00
    nop
.L000049c0:
    lw         $t8,8($v0)
    bne        $t8, $a0, .L000049b4
    nop
    beqz       $v0, .L00004a00
    nop
    lw         $a0,32($s2)
    beqz       $a0, .L00004a88
    nop
    beq        $a0, $v0, .L00004a98
    nop
    jal        mutex_unlock
    move       $a0,$s0
    b          .L00003c24
    li         $s0,11
.L000049f8:
    b          .L00003c24
    move       $s0,$zero
.L00004a00:
    jal        mutex_unlock
    move       $a0,$s0
    b          .L00003c24
    li         $s0,22
.L00004a10:
    lw         $s2,120($s1)
    jal        RRM_CheckValidFault
    move       $a0,$s3
    bgez       $v0, .L00004a30
    li         $s0,4
    li         $t9,1
    b          .L00004a40
    sd         $t9,976($sp)
.L00004a30:
    jal        crmLoadTexTlb
    move       $a0,$s4
    sw         $zero,16392($s2)
    move       $s0,$zero
.L00004a40:
    b          .L00003c28
    move       $v0,$s0
.L00004a48:
    move       $a1,$zero
    move       $a0,$zero
    move       $v0,$zero
    lui        $a2,0x1
.L00004a58:
    lw         $ra,832($sp)
    addiu      $v0,$v0,1
    lw         $at,132($s1)
    slti       $v1,$v0,4
    addu       $ra,$a1,$ra
    addu       $a1,$a1,$a2
    addu       $at,$at,$a0
    addiu      $a0,$a0,4
    bnez       $v1, .L00004a58
    sw         $ra,12($at)
    b          .L00003c28
    move       $v0,$s0
.L00004a88:
    sw         $v0,32($s2)
    lw         $at,12($v0)
    addiu      $at,$at,1
    sw         $at,12($v0)
.L00004a98:
    jal        mutex_unlock
    move       $a0,$s0
    b          .L00003c24
    move       $s0,$zero
.L00004aa8:
    jal        crmFindFreeDidTbl
    move       $a0,$s1
    b          .L0000484c
    sw         $v0,796($sp)
.L00004ab8:
    b          .L00003c24
    move       $s0,$zero
.L00004ac0:
    bne        $a2, $v0, .L00004ae4
    li         $a0,1
    li         $a0,1
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,440
    b          .L00003c24
    move       $s0,$zero
.L00004ae0:
    li         $a0,1
.L00004ae4:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,480
    b          .L00003c24
    li         $s0,22

glabel crimeInterrupt
    li         $at,18
    move       $a3,$a1
    addiu      $sp,$sp,-16
    li         $a2,19
    beq        $a1, $at, .L00004b24
    sd         $ra,0($sp)
    beq        $a1, $a2, .L00004b28
    lui        $a0,0x0
    ld         $ra,0($sp)
.L00004b1c:
    jr         $ra
    addiu      $sp,$sp,16
.L00004b24:
    lui        $a0,0x0
.L00004b28:
    addiu      $a1,$a3,-16
    jal        crime_hli_handler
    lw         $a0,12($a0)
    b          .L00004b1c
    ld         $ra,0($sp)

glabel crmAllocGfxBuffers
    addiu      $sp,$sp,-48
    sd         $s3,0($sp)
    lw         $s3,124($a0)
    sd         $s2,16($sp)
    sd         $s0,32($sp)
    addiu      $a0,$a0,164
    sd         $ra,8($sp)
    li         $a1,20
    jal        bzero
    sd         $s1,40($sp)
    lui        $s0,0x0
    addiu      $s0,$s0,0
    lw         $a2,556($s0)
    lhu        $s1,34($s3)
    lhu        $s2,32($s3)
    beqz       $a2, .L00004bf0
    sd         $s4,24($sp)
    addiu      $a1,$s2,511
    sra        $a0,$a1,0x8
    srl        $a0,$a0,0x17
    addu       $a0,$a0,$a1
    addiu      $v1,$s1,127
    sra        $a0,$a0,0x9
    sra        $v0,$v1,0x6
    slti       $t8,$a0,17
    srl        $v0,$v0,0x19
    addu       $v0,$v0,$v1
    beqz       $t8, .L00004c88
    sra        $v0,$v0,0x7
    slti       $a1,$v0,17
    beqz       $a1, .L00004c88
    lbu        $a6,576($s0)
    lbu        $a5,577($s0)
    slt        $a3,$a6,$a0
    bnez       $a3, .L00004bd8
    slt        $a1,$a5,$v0
    beqz       $a1, .L00004be4
    nop
    move       $a0,$a6
.L00004bd8:
    bnez       $a1, .L00004be4
    nop
    move       $v0,$a5
.L00004be4:
    mult       $a0,$v0
    mflo       $a4
    bne        $a2, $a4, .L00004d38
.L00004bf0:
    lw         $a1,4($s0)
.L00004bf4:
    beqz       $a1, .L00004cc4
    lui        $s4,0x0
    lbu        $t0,47($s3)
    sra        $a7,$t0,0x2
    srl        $a7,$a7,0x1d
    addu       $a7,$a7,$t0
    li         $a0,512
    sra        $a7,$a7,0x3
    div        $zero,$a0,$a7
    mflo       $a6
    addu       $v1,$s2,$a6
    addiu      $v1,$v1,-1
    div        $zero,$v1,$a6
    teq        $a7,$zero,0x7
    teq        $a6,$zero,0x7
    addiu      $v1,$s1,127
    mflo       $a0
    sra        $v0,$v1,0x6
    slti       $a5,$a0,17
    srl        $v0,$v0,0x19
    addu       $v0,$v0,$v1
    beqz       $a5, .L00004d30
    sra        $v0,$v0,0x7
    slti       $t0,$v0,17
    beqz       $t0, .L00004d30
    lbu        $a6,24($s0)
    lbu        $a5,25($s0)
    slt        $t1,$a6,$a0
    bnez       $t1, .L00004c78
    slt        $a2,$a5,$v0
    beqz       $a2, .L00004cb0
    nop
    move       $a0,$a6
.L00004c78:
    beqz       $a2, .L00004cac
    nop
    b          .L00004cb0
    nop
.L00004c88:
    li         $v0,22
.L00004c8c:
    ld         $s2,16($sp)
    ld         $s3,0($sp)
    ld         $ra,8($sp)
    ld         $s4,24($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00004cac:
    move       $v0,$a5
.L00004cb0:
    mult       $a0,$v0
    mflo       $t2
    bne        $a1, $t2, .L00004da4
    lw         $a1,4($s0)
.L00004cc0:
    lui        $s4,0x0
.L00004cc4:
    beqz       $a1, .L00004d48
    addiu      $s4,$s4,0
    jal        crmNextIncarnation
    nop
    sw         $v0,16($s0)
    lw         $t8,4($s4)
.L00004cdc:
    beqz       $t8, .L00004d84
    move       $a0,$s4
    jal        crmNextIncarnation
    nop
    sw         $v0,16($s4)
    lw         $t9,556($s0)
.L00004cf4:
    beqz       $t9, .L00004dc0
    addiu      $a0,$s0,552
    jal        crmNextIncarnation
    nop
    sw         $v0,568($s0)
    lw         $ra,724($s0)
.L00004d0c:
    beqz       $ra, .L00004ddc
    addiu      $a0,$s0,720
    lui        $s0,0x0
.L00004d18:
    addiu      $s0,$s0,0
    lw         $at,4($s0)
    beqz       $at, .L00004d6c
    move       $a0,$zero
.L00004d28:
    b          .L00004c8c
    move       $v0,$zero
.L00004d30:
    b          .L00004c8c
    li         $v0,22
.L00004d38:
    jal        crmFreeChunk
    addiu      $a0,$s0,552
    b          .L00004bf4
    lw         $a1,4($s0)
.L00004d48:
    move       $a0,$s0
    move       $a1,$s2
    move       $a2,$s1
    jal        crmAllocFrameBuffer
    lbu        $a3,47($s3)
    beqz       $v0, .L00004cdc
    lw         $t8,4($s4)
    b          .L00004c8c
    li         $v0,-1
.L00004d6c:
    li         $a1,1
    lui        $a2,0x0
    jal        sema_alloc
    addiu      $a2,$a2,248
    b          .L00004d28
    sw         $v0,4($s0)
.L00004d84:
    move       $a1,$s2
    move       $a2,$s1
    jal        crmAllocBackbuffer
    lbu        $a3,47($s3)
    beqz       $v0, .L00004cf4
    lw         $t9,556($s0)
    b          .L00004c8c
    li         $v0,-1
.L00004da4:
    jal        crmFreeChunk
    move       $a0,$s0
    lui        $a0,0x0
    jal        crmFreeChunk
    addiu      $a0,$a0,0
    b          .L00004cc0
    lw         $a1,4($s0)
.L00004dc0:
    move       $a1,$s2
    jal        crmAllocOverlayBuffer
    move       $a2,$s1
    beqz       $v0, .L00004d0c
    lw         $ra,724($s0)
    b          .L00004c8c
    li         $v0,-1
.L00004ddc:
    move       $a1,$s2
    jal        crmAllocCid
    move       $a2,$s1
    beqz       $v0, .L00004d18
    lui        $s0,0x0
    b          .L00004c8c
    li         $v0,-1

glabel crmFirstInit
    lui        $at,0x0
    addiu      $at,$at,0
    lw         $at,1516($at)
    addiu      $sp,$sp,-16
    beqz       $at, .L00004e18
    sd         $ra,0($sp)
.L00004e10:
    jr         $ra
    addiu      $sp,$sp,16
.L00004e18:
    lui        $v1,0x0
    addiu      $v1,$v1,0
    addiu      $v0,$v1,864
    jal        crm_tileclassinit
    sw         $v0,1516($v1)
    lui        $a2,0x0
    addiu      $a2,$a2,0
    addiu      $a5,$gp,-30720
    sw         $a5,832($a2)
    addiu      $a4,$a2,760
    sw         $a4,728($a2)
    addiu      $a0,$a2,824
    addiu      $a3,$a2,592
    sw         $a3,560($a2)
    addiu      $a1,$a2,40
    jal        crmAllocGbeTables
    sw         $a1,8($a2)
    b          .L00004e10
    ld         $ra,0($sp)

glabel crime_earlyinit
    addiu      $sp,$sp,-80
    sd         $ra,24($sp)
    sd         $s5,48($sp)
    sd         $s4,32($sp)
    sd         $s6,16($sp)
    sd         $s0,40($sp)
    lui        $s0,0x0
    lw         $s6,0($s0)
    addiu      $s0,$s0,0
    lw         $s4,8($s0)
    lw         $s5,4($s0)
    jal        crimeProbe
    move       $a0,$s6
    beqz       $v0, .L000052cc
    nop
    sd         $s1,56($sp)
    lw         $t8,12($s0)
    sd         $s3,64($sp)
    sd         $s2,72($sp)
    beqz       $t8, .L000051bc
    sd         $t8,8($sp)
    addiu      $a3,$sp,0
    addiu      $a2,$sp,0
    addiu      $a1,$sp,0
    move       $a0,$s5
    jal        gbeStop
    sh         $zero,56($s0)
    jal        in_panic_mode
    nop
    beqz       $v0, .L000052f8
    lui        $s1,0x0
.L00004ee0:
    addiu      $s1,$s1,0
    jal        crmFreeChunk
    move       $a0,$s1
    lui        $a0,0x0
    jal        crmFreeChunk
    addiu      $a0,$a0,0
    lui        $s2,0x0
    lw         $a0,0($s2)
    beqz       $a0, .L00004f1c
    addiu      $s2,$s2,0
    jal        crmFreeChunk
    nop
    jal        kern_free
    lw         $a0,0($s2)
    sw         $zero,0($s2)
.L00004f1c:
    lw         $v0,732($s1)
    andi       $t8,$v0,0x10
    beqz       $t8, .L000052bc
    lw         $a0,728($s1)
    sw         $zero,736($s1)
    li         $a1,64
    sw         $zero,724($s1)
    li         $t9,-17
    and        $t9,$v0,$t9
    jal        bzero
    sw         $t9,732($s1)
    lw         $a0,3296($s1)
.L00004f4c:
    beqz       $a0, .L00004f68
    nop
.L00004f54:
    jal        crm_destroydrawable
    nop
    lw         $a0,3296($s1)
    bnez       $a0, .L00004f54
    nop
.L00004f68:
    lw         $a0,12($s0)
    sw         $zero,136($a0)
    lw         $v1,12($s0)
    sw         $zero,460($v1)
    lw         $v0,12($s0)
    sw         $zero,312($v0)
    lw         $at,12($s0)
    sw         $zero,-30712($gp)
    jal        crmNextIncarnation
    sb         $zero,152($at)
    move       $s2,$zero
    sw         $v0,840($s1)
    b          .L00004fe4
    move       $s3,$zero
.L00004fa0:
    lw         $v0,276($a0)
    beqz       $v0, .L00004fc0
    nop
    jal        kern_free
    move       $a0,$v0
    lw         $a0,12($s0)
    addu       $a0,$a0,$s2
    lw         $a0,184($a0)
.L00004fc0:
    jal        kern_free
    nop
    lw         $a1,12($s0)
    addiu      $s3,$s3,1
    slti       $a2,$s3,32
    addu       $a1,$a1,$s2
    addiu      $s2,$s2,4
    beqz       $a2, .L0000500c
    sw         $zero,184($a1)
.L00004fe4:
    lw         $v0,12($s0)
    addu       $v0,$v0,$s2
.L00004fec:
    lw         $a0,184($v0)
    addiu      $a1,$s3,1
    slti       $v1,$s3,31
    bnez       $a0, .L00004fa0
    addiu      $v0,$v0,4
    addiu      $s2,$s2,4
    bnez       $v1, .L00004fec
    move       $s3,$a1
.L0000500c:
    lw         $a0,48($s4)
    lw         $a0,4($a0)
    andi       $a0,$a0,0x2
    beqz       $a0, .L00005028
    lw         $a0,0($gp)
    sw         $zero,228($s4)
    lw         $a0,0($gp)
.L00005028:
    blez       $a0, .L00005064
    sw         $zero,0($gp)
    move       $v0,$zero
    move       $a1,$s0
.L00005038:
    addiu      $v0,$v0,1
    slt        $a2,$v0,$a0
    sh         $zero,34($a1)
    sh         $zero,32($a1)
    beqz       $a2, .L00005064
    addiu      $v0,$v0,1
    addiu      $a1,$a1,16
    slt        $a3,$v0,$a0
    sh         $zero,26($a1)
    bnez       $a3, .L00005038
    sh         $zero,24($a1)
.L00005064:
    move       $a0,$s6
    li         $a4,255
    sh         $a4,362($s4)
    move       $a1,$s5
    move       $a2,$s4
    sh         $a4,232($s4)
    jal        crimeInitInfo
    move       $a3,$zero
    lbu        $a6,46($s4)
    li         $a5,132
    beq        $a5, $a6, .L000052d4
    move       $a0,$s5
.L00005094:
    lhu        $s3,32($s4)
.L00005098:
    addiu      $t1,$s3,511
    sra        $t0,$t1,0x8
    srl        $t0,$t0,0x17
    lbu        $a7,576($s1)
    addu       $t0,$t0,$t1
    sra        $t0,$t0,0x9
    bne        $a7, $t0, .L0000519c
    lhu        $s2,34($s4)
    addiu      $t3,$s2,127
    sra        $t2,$t3,0x6
    srl        $t2,$t2,0x19
    lbu        $t1,577($s1)
    addu       $t2,$t2,$t3
    sra        $t2,$t2,0x7
    bne        $t1, $t2, .L0000519c
    nop
    jal        crmNextIncarnation
    nop
    sw         $v0,568($s1)
    move       $a0,$s6
.L000050e8:
    move       $a1,$s5
    move       $a2,$s4
    jal        crimeInitHW
    move       $a3,$zero
    move       $a0,$s5
    move       $a1,$s4
    jal        gbeRun
    move       $a2,$zero
    li         $a4,1
    move       $a3,$zero
    move       $a2,$s5
    move       $a1,$s4
    jal        gbeBlankScreen
    lw         $a0,12($s0)
    lbu        $t3,62($s0)
    li         $t8,100
    beq        $t3, $t8, .L000052a0
    move       $a0,$s6
.L00005130:
    move       $a1,$s5
    move       $a2,$s4
    jal        crmInitTp
    addiu      $a3,$s1,552
    lbu        $t9,45($s4)
    beqz       $t9, .L00005150
    ld         $s1,56($sp)
    sra        $s2,$s2,0x1
.L00005150:
    move       $a0,$s6
    jal        crime_clearfb
    move       $a1,$s5
    move       $a0,$s6
    move       $a2,$s3
    move       $a3,$s2
    lui        $a1,0x0
    jal        htp_register_board
    addiu      $a1,$a1,0
    ld         $s2,72($sp)
    ld         $s3,64($sp)
    li         $v0,1
.L00005180:
    ld         $s6,16($sp)
    ld         $ra,24($sp)
    ld         $s4,32($sp)
    ld         $s0,40($sp)
    ld         $s5,48($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L0000519c:
    jal        crmFreeChunk
    addiu      $a0,$s1,552
    addiu      $a0,$s1,552
    move       $a1,$s3
    jal        crmAllocOverlayBuffer
    move       $a2,$s2
    b          .L000050e8
    move       $a0,$s6
.L000051bc:
    lui        $s1,0x0
    addiu      $s1,$s1,0
    jal        is_specified
    move       $a0,$s1
    beqz       $v0, .L00005308
    lbu        $v0,0($s1)
    li         $t8,71
    beq        $v0, $t8, .L00005310
    nop
.L000051e0:
    sb         $v0,62($s0)
    sh         $zero,56($s0)
    jal        gbeProbe
    move       $a0,$s5
    move       $a0,$s5
    addiu      $a1,$sp,0
    addiu      $a2,$sp,0
    jal        gbeStop
    addiu      $a3,$sp,0
    sw         $zero,1032($s6)
    sw         $zero,0($gp)
    li         $t9,255
    sh         $t9,232($s4)
    sh         $t9,492($s4)
    sh         $t9,362($s4)
    jal        i2cfp_DualChannelProbe
    move       $a0,$s5
    sw         $v0,0($gp)
    beqz       $v0, .L00005234
    li         $a0,2
    sw         $a0,0($gp)
.L00005234:
    sb         $v0,44($s4)
    lw         $a0,0($gp)
    blez       $a0, .L00005268
    move       $v0,$zero
    move       $a1,$s0
.L00005248:
    addiu      $a1,$a1,8
    sh         $zero,42($a1)
    addiu      $v0,$v0,1
    sh         $zero,40($a1)
    slt        $ra,$v0,$a0
    sh         $zero,26($a1)
    bnez       $ra, .L00005248
    sh         $zero,24($a1)
.L00005268:
    move       $a0,$s6
    move       $a1,$s5
    move       $a2,$s4
    jal        crimeInitInfo
    move       $a3,$zero
    lbu        $v0,46($s4)
    li         $at,132
    beq        $at, $v0, .L00005318
    move       $a0,$s5
.L0000528c:
    jal        crmFirstInit
    move       $a0,$s0
    lui        $s1,0x0
    b          .L00005094
    addiu      $s1,$s1,0
.L000052a0:
    lbu        $t8,46($s4)
    beqz       $t8, .L00005130
    move       $a0,$s6
    jal        i2cfp_PanelOff
    move       $a0,$s5
    b          .L00005130
    move       $a0,$s6
.L000052bc:
    jal        crmFreeChunk
    addiu      $a0,$s1,720
    b          .L00004f4c
    lw         $a0,3296($s1)
.L000052cc:
    b          .L00005180
    move       $v0,$zero
.L000052d4:
    li         $a1,16
    move       $a2,$zero
    move       $a3,$zero
    jal        i2cfp_DMI2_BkltFuncs
    move       $a4,$zero
    bnezl      $v0, .L00005098
    lhu        $s3,32($s4)
    b          .L0000533c
    li         $a0,4
.L000052f8:
    jal        crmRetraceCloseAllRn
    ld         $a0,8($sp)
    b          .L00004ee0
    lui        $s1,0x0
.L00005308:
    b          .L000051e0
    li         $v0,103
.L00005310:
    b          .L000051e0
    li         $v0,103
.L00005318:
    li         $a1,16
    move       $a2,$zero
    move       $a3,$zero
    jal        i2cfp_DMI2_BkltFuncs
    move       $a4,$zero
    bnez       $v0, .L0000528c
    nop
    b          .L00005350
    li         $a0,4
.L0000533c:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,520
    b          .L00005098
    lhu        $s3,32($s4)
.L00005350:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,520
    b          .L0000528c
    nop

glabel crime_init
    addiu      $sp,$sp,-64
    sd         $s4,0($sp)
    lui        $s4,0x0
    sd         $s5,8($sp)
    addiu      $s4,$s4,0
    lw         $s5,8($s4)
    sd         $ra,32($sp)
    beqz       $s5, .L00005658
    sd         $s3,40($sp)
    lbu        $a2,46($s5)
    li         $t8,130
    beq        $a2, $t8, .L000056a8
    li         $t9,131
    beq        $a2, $t9, .L000056a8
    li         $v0,132
    beq        $a2, $v0, .L000056a8
    nop
    bnez       $a2, .L000057bc
    lui        $a1,0x0
.L000053b0:
    li         $a0,560
.L000053b4:
    lui        $s3,0x0
    sd         $s1,16($sp)
    jal        kern_malloc
    addiu      $s3,$s3,0
    move       $s1,$v0
    move       $a0,$v0
    jal        bzero
    li         $a1,560
    lw         $ra,0($s4)
    sw         $ra,120($s1)
    li         $a4,1
    lw         $t8,4($s4)
    move       $a3,$zero
    addiu      $t9,$s4,16
    sw         $t9,144($s1)
    move       $a2,$zero
    li         $a1,17
    sw         $s5,124($s1)
    li         $a0,7
    jal        add_to_inventory
    sw         $t8,128($s1)
    lw         $at,0($gp)
    beqz       $at, .L00005428
    li         $a0,17
    li         $a1,3
    move       $a2,$zero
    move       $a3,$zero
    jal        add_to_inventory
    move       $a4,$zero
.L00005428:
    lbu        $v1,46($s5)
    li         $v0,132
    beq        $v0, $v1, .L000056f4
    li         $a2,32
.L00005438:
    sw         $a2,52($s1)
    move       $a2,$zero
    addiu      $a3,$s1,324
    sw         $a3,56($s1)
    li         $a0,1
    lui        $a1,0x1008
    sw         $a0,12($s1)
    jal        kvpalloc
    ori        $a1,$a1,0x10
    move       $a0,$v0
    li         $a1,1536
    jal        bzero
    sw         $v0,132($s1)
    li         $a3,-1
    addiu      $a2,$s3,616
    move       $a1,$zero
    jal        init_mutex
    addiu      $a0,$s1,468
    lw         $v0,0($gp)
    sd         $s0,24($sp)
    blez       $v0, .L000054b4
    sd         $s2,48($sp)
    move       $s0,$s4
    move       $s2,$zero
.L00005498:
    lh         $a4,34($s0)
    beqz       $a4, .L00005670
    move       $a1,$s5
    addiu      $s2,$s2,1
    slt        $a5,$s2,$v0
    bnez       $a5, .L00005498
    addiu      $s0,$s0,8
.L000054b4:
    lh         $a6,60($s4)
.L000054b8:
    beqz       $a6, .L000056b0
    move       $a0,$zero
.L000054c0:
    li         $a3,-1
.L000054c4:
    addiu      $a2,$s3,632
    move       $a1,$zero
    jal        init_mutex
    addiu      $a0,$s1,476
    li         $a3,-1
    addiu      $a2,$s3,648
    move       $a1,$zero
    jal        mrlock_init
    addiu      $a0,$s1,484
    addiu      $a1,$s3,664
    jal        spinlock_init
    addiu      $a0,$s1,540
    li         $a3,-1
    addiu      $a2,$s3,680
    move       $a1,$zero
    jal        init_sv
    addiu      $a0,$s1,556
    li         $a3,-1
    move       $a2,$zero
    move       $a1,$zero
    jal        init_mutex
    addiu      $a0,$gp,0
    jal        crimeRetraceInit
    move       $a0,$s1
    addiu      $a0,$s4,64
    move       $a1,$s1
    jal        GfxRegisterBoard
    move       $a2,$s5
    lw         $s2,20($s4)
    sw         $s1,12($s4)
    li         $s5,-2
    lui        $s0,0xb400
    and        $s2,$s2,$s5
    sw         $s2,20($s4)
    ld         $t3,40($s0)
    lui        $s2,0xfff0
    sll        $t3,$t3,0x0
    ori        $s2,$s2,0xffff
    and        $t3,$t3,$s2
    sll        $t3,$t3,0x0
    sd         $t3,40($s0)
    lw         $t2,4($s4)
    lui        $t0,0x1
    lui        $a7,0xff
    addu       $t2,$t0,$t2
    ori        $a7,$a7,0xffff
    sw         $a7,32($t2)
    lw         $t1,4($s4)
    li         $s0,18
    lui        $s5,0x0
    addu       $t0,$t0,$t1
    li         $s2,2
    addiu      $s5,$s5,0
    sw         $a7,36($t0)
.L0000559c:
    move       $a0,$s0
    li         $a1,1
    move       $a2,$s5
    move       $a3,$s0
    jal        setcrimevector
    move       $a4,$zero
    bnez       $v0, .L00005758
    addiu      $a1,$s3,696
    addiu      $s2,$s2,1
.L000055c0:
    slti       $t8,$s2,4
    bnez       $t8, .L0000559c
    addiu      $s0,$s0,1
    li         $a1,1
    li         $a0,16
    move       $a3,$s1
    move       $a4,$zero
    lui        $a2,0x0
    jal        setcrimevector
    addiu      $a2,$a2,0
    ld         $s2,48($sp)
    bnez       $v0, .L0000576c
    ld         $s0,24($sp)
    li         $a1,1
.L000055f8:
    li         $a0,17
    move       $a3,$s1
    move       $a4,$zero
    lui        $a2,0x0
    jal        setcrimevector
    addiu      $a2,$a2,0
    bnez       $v0, .L00005780
    li         $a1,1
.L00005618:
    li         $a0,26
    move       $a3,$s1
    move       $a4,$zero
    lui        $a2,0x0
    jal        setcrimevector
    addiu      $a2,$a2,0
    bnez       $v0, .L00005794
    li         $a4,4
.L00005638:
    move       $a3,$s1
    li         $a1,1
    li         $a0,25
    lui        $a2,0x0
    jal        setcrimevector
    addiu      $a2,$a2,0
    bnez       $v0, .L000057a8
    ld         $s1,16($sp)
.L00005658:
    ld         $ra,32($sp)
.L0000565c:
    ld         $s3,40($sp)
    ld         $s4,0($sp)
    ld         $s5,8($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00005670:
    lw         $a0,4($s4)
    jal        crime_i2cProbe
    move       $a2,$s2
    beqz       $v0, .L0000568c
    move       $a0,$s5
    jal        crime_validate_ddc_data
    move       $a1,$s2
.L0000568c:
    lw         $v0,0($gp)
    addiu      $s2,$s2,1
    slt        $a3,$s2,$v0
    bnez       $a3, .L00005498
    addiu      $s0,$s0,8
    b          .L000054b8
    lh         $a6,60($s4)
.L000056a8:
    b          .L000053b0
    sw         $zero,0($gp)
.L000056b0:
    blez       $v0, .L000056d4
    move       $a1,$s4
    addiu      $a0,$a0,1
.L000056bc:
    lh         $a4,34($a1)
    slt        $a5,$a0,$v0
    beqz       $a4, .L000054c0
    addiu      $a1,$a1,8
    bnez       $a5, .L000056bc
    addiu      $a0,$a0,1
.L000056d4:
    move       $a0,$s1
    move       $a1,$s5
    li         $a3,1
    lw         $a2,128($s1)
    jal        gbeBlankScreen
    li         $a4,1
    b          .L000054c4
    li         $a3,-1
.L000056f4:
    move       $a0,$zero
    li         $a1,17
    li         $a2,4
    move       $a3,$zero
    move       $a4,$zero
    jal        find_inventory
    move       $a5,$zero
    beqz       $v0, .L00005738
    move       $a0,$v0
    li         $a1,17
    li         $a2,5
    move       $a3,$zero
    move       $a4,$zero
    jal        replace_in_inventory
    move       $a5,$zero
    b          .L00005438
    li         $a2,32
.L00005738:
    li         $a1,5
    li         $a0,17
    move       $a2,$zero
    move       $a3,$zero
    jal        add_to_inventory
    move       $a4,$zero
    b          .L00005438
    li         $a2,32
.L00005758:
    li         $a0,4
    jal        cmn_err
    move       $a2,$s2
    b          .L000055c0
    addiu      $s2,$s2,1
.L0000576c:
    addiu      $a1,$s3,736
    jal        cmn_err
    li         $a0,4
    b          .L000055f8
    li         $a1,1
.L00005780:
    addiu      $a1,$s3,776
    jal        cmn_err
    li         $a0,4
    b          .L00005618
    li         $a1,1
.L00005794:
    addiu      $a1,$s3,808
    jal        cmn_err
    li         $a0,4
    b          .L00005638
    li         $a4,4
.L000057a8:
    addiu      $a1,$s3,840
    jal        cmn_err
    li         $a0,4
    b          .L0000565c
    ld         $ra,32($sp)
.L000057bc:
    li         $a0,4
    addiu      $a1,$a1,0
    jal        cmn_err
    addiu      $a1,$a1,576
    b          .L000053b4
    li         $a0,560

glabel crimeError
    move       $a2,$a1
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,4
    sd         $ra,8($sp)
    jal        cmn_err
    addiu      $a1,$a1,872
    li         $a0,10
    jal        us_delay
    sw         $zero,1032($s0)
    lw         $a5,0($gp)
    lw         $a4,0($gp)
    lw         $a3,0($gp)
    sll        $a5,$a5,0xe
    lw         $a2,0($gp)
    sll        $a4,$a4,0x7
    sll        $a3,$a3,0x15
    or         $a3,$a3,$a4
    or         $a2,$a2,$a5
    or         $a2,$a2,$a3
    sw         $a2,0($gp)
    jal        flushbus
    sw         $a2,1024($s0)
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crime_regmatch
    addiu      $sp,$sp,-32
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $a0, .L00005880
    sd         $ra,24($sp)
    jal        crimeUnMapGfx
    nop
    lw         $a0,28($s0)
    beqz       $a0, .L00005880
    sw         $zero,40($s0)
    jal        ddv_destroy_handle
    sw         $zero,28($s0)
.L00005880:
    ld         $s0,0($sp)
    ld         $ra,24($sp)
    ld         $v0,16($sp)
    ld         $at,8($sp)
    addiu      $sp,$sp,32
    jr         $ra
    sw         $at,28($v0)

glabel crime_channel_info
    lui        $a4,0x0
    lw         $a4,8($a4)
    beqz       $a4, .L000058ec
    nop
    lw         $a5,48($a4)
    beqz       $a5, .L000058ec
    nop
    lh         $a7,8($a5)
    sh         $a7,0($a0)
    lw         $a6,48($a4)
    lh         $a6,10($a6)
    sh         $a6,0($a1)
    lbu        $v0,45($a4)
    beqz       $v0, .L000058e4
    sll        $a6,$a6,0x1
    sh         $a6,0($a1)
    jr         $ra
    lbu        $v0,45($a4)
.L000058e4:
    jr         $ra
    nop
.L000058ec:
    jr         $ra
    move       $v0,$zero

glabel crime_present
    lui        $a3,0x0
    beqz       $a0, .L00005908
    li         $v0,-1
.L00005900:
    jr         $ra
    nop
.L00005908:
    lw         $at,8($a3)
    beqz       $at, .L00005900
    move       $v0,$zero
    jr         $ra
    li         $v0,1

glabel crime_video_info
    lui        $a4,0x0
    sll        $a5,$a0,0x6
    addiu      $a4,$a4,0
    addu       $a4,$a4,$a5
    lw         $a5,8($a4)
    li         $v0,-1
    beqz       $a5, .L000059b8
    li         $a6,2
    lbu        $at,40($a5)
    sb         $at,0($a1)
    lbu        $t9,41($a5)
    sb         $t9,1($a1)
    lbu        $t8,42($a5)
    sb         $t8,2($a1)
    lw         $t3,64($a5)
    li         $t8,1000
    addiu      $t3,$t3,500
    div        $zero,$t3,$t8
    mflo       $t2
    sb         $t2,3($a1)
    lh         $t1,60($a5)
    sh         $t1,4($a1)
    lh         $t0,62($a5)
    sh         $zero,8($a1)
    sh         $t0,6($a1)
    lw         $a7,56($a5)
    andi       $a7,$a7,0x2
    beqz       $a7, .L00005998
    move       $v0,$zero
    sh         $a6,8($a1)
    move       $v0,$a6
.L00005998:
    lw         $a3,12($a4)
    beqz       $a3, .L000059b4
    ori        $a5,$v0,0x1
    lw         $v1,136($a3)
    beqz       $v1, .L000059b8
    move       $v0,$zero
    sh         $a5,8($a1)
.L000059b4:
    move       $v0,$zero
.L000059b8:
    jr         $ra
    nop

glabel crime_resync_sched
    lui        $at,0x0
    sll        $v0,$a0,0x6
    addiu      $at,$at,0
    addu       $at,$at,$v0
    sw         $a2,28($at)
    move       $v0,$zero
    jr         $ra
    sw         $a1,24($at)

glabel crm_callvideo
    addiu      $sp,$sp,-16
    lui        $a3,0x0
    move       $a4,$zero
    addiu      $a3,$a3,0
.L000059f0:
    lw         $a5,4($a3)
    beq        $a5, $a0, .L00005a0c
    addiu      $a4,$a4,1
    blez       $a4, .L000059f0
    addiu      $a3,$a3,64
.L00005a04:
    jr         $ra
    addiu      $sp,$sp,16
.L00005a0c:
    lw         $a4,24($a3)
    beqz       $a4, .L00005a04
    sd         $ra,0($sp)
    jalr       $a4
    lw         $a0,28($a3)
    b          .L00005a04
    ld         $ra,0($sp)
