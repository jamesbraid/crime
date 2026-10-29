.section .text
.set noat
.set noreorder


glabel crime_i2cSetMonitor
    lw         $a4,0($a0)
    lw         $a3,-30656($gp)
    lw         $a2,-30652($gp)
    beqz       $a1, .L00000018
    and        $a3,$a3,$a4
    lw         $a2,-30648($gp)
.L00000018:
    or         $a5,$a3,$a2
    jr         $ra
    sw         $a5,0($a0)

glabel crime_i2cReset
    addiu      $sp,$sp,-80
    sd         $ra,64($sp)
    sd         $s4,40($sp)
    sd         $s0,48($sp)
    lw         $at,-30660($gp)
    move       $s0,$a0
    sd         $s1,56($sp)
    li         $s1,1
    li         $s4,2
    sd         $s3,32($sp)
    li         $s3,3
    blez       $at, .L000001e4
    sd         $s2,72($sp)
    b          .L00000204
    move       $s2,$zero
.L00000060:
    sw         $s4,8($s0)
    lw         $v1,8($s0)
    sw         $v1,4($sp)
    lw         $v0,4($sp)
    nor        $v0,$v0,$zero
    andi       $v0,$v0,0x3
    jal        us_delay
    sw         $v0,4($sp)
.L00000080:
    jal        us_delay
    li         $a0,0xc350
    lw         $a0,-30716($gp)
    beq        $a0, $s1, .L0000016c
    lw         $a0,-30720($gp)
    sw         $s3,8($s0)
    lw         $a2,8($s0)
    sw         $a2,12($sp)
    lw         $a1,12($sp)
    nor        $a1,$a1,$zero
    andi       $a1,$a1,0x3
    jal        us_delay
    sw         $a1,12($sp)
.L000000b4:
    jal        us_delay
    li         $a0,500
    lw         $a3,-30716($gp)
    beq        $a3, $s1, .L00000194
    lw         $a0,-30720($gp)
    sw         $s1,8($s0)
    lw         $a5,8($s0)
    sw         $a5,20($sp)
    lw         $a4,20($sp)
    nor        $a4,$a4,$zero
    andi       $a4,$a4,0x3
    jal        us_delay
    sw         $a4,20($sp)
.L000000e8:
    jal        us_delay
    li         $a0,500
    lw         $a6,-30716($gp)
    beq        $a6, $s1, .L000001bc
    lw         $a0,-30720($gp)
    sw         $zero,8($s0)
    lw         $t0,8($s0)
    sw         $t0,28($sp)
    lw         $a7,28($sp)
    nor        $a7,$a7,$zero
    andi       $a7,$a7,0x3
    jal        us_delay
    sw         $a7,28($sp)
.L0000011c:
    jal        us_delay
    li         $a0,500
    lw         $t1,-30660($gp)
    addiu      $s2,$s2,1
    slt        $t1,$s2,$t1
    lw         $a0,-30720($gp)
    beqz       $t1, .L000001e4
    lw         $t2,-30716($gp)
.L0000013c:
    bne        $t2, $s1, .L00000060
    nop
    sw         $s4,16($s0)
    lw         $t8,16($s0)
    sw         $t8,0($sp)
    lw         $t3,0($sp)
    nor        $t3,$t3,$zero
    andi       $t3,$t3,0x3
    jal        us_delay
    sw         $t3,0($sp)
    b          .L00000080
    nop
.L0000016c:
    sw         $s3,16($s0)
    lw         $ra,16($s0)
    sw         $ra,8($sp)
    lw         $t9,8($sp)
    nor        $t9,$t9,$zero
    andi       $t9,$t9,0x3
    jal        us_delay
    sw         $t9,8($sp)
    b          .L000000b4
    nop
.L00000194:
    sw         $s1,16($s0)
    lw         $v0,16($s0)
    sw         $v0,16($sp)
    lw         $at,16($sp)
    nor        $at,$at,$zero
    andi       $at,$at,0x3
    jal        us_delay
    sw         $at,16($sp)
    b          .L000000e8
    nop
.L000001bc:
    sw         $zero,16($s0)
    lw         $a1,16($s0)
    sw         $a1,24($sp)
    lw         $v1,24($sp)
    nor        $v1,$v1,$zero
    andi       $v1,$v1,0x3
    jal        us_delay
    sw         $v1,24($sp)
    b          .L0000011c
    nop
.L000001e4:
    ld         $s2,72($sp)
    ld         $s3,32($sp)
    ld         $ra,64($sp)
    ld         $s4,40($sp)
    ld         $s0,48($sp)
    ld         $s1,56($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00000204:
    lw         $t2,-30716($gp)
    lw         $a0,-30720($gp)
    b          .L0000013c
    nop

glabel crime_i2cFixupAfterErr
    lw         $a3,-30688($gp)
    lw         $a1,-30684($gp)
    addiu      $sp,$sp,-16
    slt        $at,$a1,$a3
    sd         $s8,0($sp)
    move       $s8,$a0
    sd         $ra,8($sp)
    beqz       $at, .L00000240
    move       $a0,$a3
    b          .L00000244
    nop
.L00000240:
    move       $a0,$a1
.L00000244:
    jal        us_delay
    nop
    lw         $a0,-30716($gp)
    jal        i2_stop
    move       $a1,$s8
    ld         $s8,0($sp)
    jal        us_delay
    lw         $a0,-30680($gp)
    ld         $ra,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crime_i2cfpFixupAfterErr
    lw         $a3,-30688($gp)
    lw         $a1,-30684($gp)
    addiu      $sp,$sp,-16
    slt        $at,$a1,$a3
    sd         $s8,0($sp)
    move       $s8,$a0
    sd         $ra,8($sp)
    beqz       $at, .L0000029c
    move       $a0,$a3
    b          .L000002a0
    nop
.L0000029c:
    move       $a0,$a1
.L000002a0:
    jal        us_delay
    nop
    li         $a0,1
    jal        i2_stop
    move       $a1,$s8
    ld         $s8,0($sp)
    jal        us_delay
    lw         $a0,-30680($gp)
    ld         $ra,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crime_i2cProbe
    addiu      $sp,$sp,-96
    sd         $s3,40($sp)
    lui        $s3,0x0
    sd         $s0,24($sp)
    addiu      $s3,$s3,0
    lw         $s3,12($s3)
    sd         $s1,16($sp)
    move       $s1,$a0
    move       $s0,$a1
    sd         $s6,32($sp)
    move       $s6,$a2
    beqz       $s3, .L0000030c
    sd         $ra,56($sp)
    li         $a1,25
    jal        mutex_lock
    addiu      $a0,$s3,468
.L0000030c:
    lw         $t8,0($gp)
    beqz       $t8, .L00000320
    move       $a0,$s1
    jal        crime_i2cSetMonitor
    move       $a1,$s6
.L00000320:
    sd         $s7,80($sp)
    sd         $s5,72($sp)
    li         $t9,1
    sd         $s4,64($sp)
    addiu      $s4,$s0,234
    beq        $s6, $t9, .L000004f4
    sd         $s2,48($sp)
    addiu      $s4,$s0,100
    move       $a0,$s4
.L00000344:
    jal        bzero
    li         $a1,128
    jal        crime_i2cReset
    move       $a0,$s1
    move       $s5,$zero
    lbu        $s7,0($sp)
    addiu      $s5,$s5,1
.L00000360:
    slti       $ra,$s5,3
    beqz       $ra, .L000003e8
    move       $s0,$zero
    addiu      $s0,$s0,1
.L00000370:
    slti       $at,$s0,3
    beqz       $at, .L000003e8
    lw         $a0,-30716($gp)
    jal        i2_start
    move       $a1,$s1
    li         $a2,160
    move       $a1,$s1
    jal        i2_sendbyte
    lw         $a0,-30716($gp)
    beqz       $v0, .L000004fc
    move       $a1,$s1
    lw         $a0,-30716($gp)
    jal        i2_sendbyte
    move       $a2,$zero
    beqz       $v0, .L0000050c
    lw         $a0,-30716($gp)
    jal        i2_start
    move       $a1,$s1
    li         $a2,161
    move       $a1,$s1
    jal        i2_sendbyte
    lw         $a0,-30716($gp)
    beqz       $v0, .L0000051c
    move       $s2,$s4
    move       $s0,$zero
    li         $v0,1
    b          .L00000440
    sd         $v0,8($sp)
.L000003e0:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s1
.L000003e8:
    beqz       $s3, .L000003fc
    move       $a0,$zero
    jal        mutex_unlock
    addiu      $a0,$s3,468
    move       $a0,$zero
.L000003fc:
    ld         $s7,80($sp)
    ld         $s5,72($sp)
    ld         $s4,64($sp)
    ld         $s2,48($sp)
    ld         $s0,24($sp)
    ld         $ra,56($sp)
    ld         $s1,16($sp)
    move       $v0,$a0
    ld         $s3,40($sp)
    ld         $s6,32($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L0000042c:
    sd         $zero,8($sp)
.L00000430:
    addiu      $s0,$s0,1
.L00000434:
    sltiu      $v1,$s0,128
    beqz       $v1, .L000004ac
    addiu      $s2,$s2,1
.L00000440:
    li         $a0,127
    beq        $a0, $s0, .L00000450
    move       $a3,$zero
    li         $a3,1
.L00000450:
    move       $a1,$s1
    lw         $a0,-30716($gp)
    jal        i2_master_recvbyte
    move       $a2,$s2
    beqz       $v0, .L000003e0
    nop
    beqz       $s0, .L000004a4
    sltiu      $a1,$s0,16
    beqz       $a1, .L00000430
    li         $a3,15
    lbu        $a2,0($s2)
    bne        $a2, $s7, .L0000042c
    ld         $a4,8($sp)
    bne        $a3, $s0, .L00000430
    nop
    beqz       $a4, .L00000434
    addiu      $s0,$s0,1
    jal        crime_i2cFixupAfterErr
    move       $a0,$s1
    b          .L00000360
    addiu      $s5,$s5,1
.L000004a4:
    b          .L00000430
    lbu        $s7,0($s4)
.L000004ac:
    lw         $a0,-30716($gp)
    jal        i2_stop
    move       $a1,$s1
    beqz       $s3, .L000004c8
    nop
    jal        mutex_unlock
    addiu      $a0,$s3,468
.L000004c8:
    jal        crime_EdidCksum
    move       $a0,$s4
    lui        $a5,0x0
    sll        $a6,$s6,0x3
    addiu      $a5,$a5,0
    addu       $a5,$a5,$a6
    li         $a6,2
    sh         $a6,32($a5)
    li         $a0,1
    b          .L000003fc
    sh         $v0,38($a5)
.L000004f4:
    b          .L00000344
    move       $a0,$s4
.L000004fc:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s1
    b          .L00000370
    addiu      $s0,$s0,1
.L0000050c:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s1
    b          .L00000370
    addiu      $s0,$s0,1
.L0000051c:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s1
    b          .L00000370
    addiu      $s0,$s0,1

glabel crime_validate_ddc_data
    addiu      $sp,$sp,-32
    sd         $s1,8($sp)
    li         $a3,1
    addiu      $s1,$a0,232
    sd         $s0,0($sp)
    addiu      $s0,$a0,100
    beq        $a1, $a3, .L0000058c
    sd         $s2,16($sp)
.L0000054c:
    lui        $s2,0x0
    sll        $t8,$a1,0x3
    addiu      $s2,$s2,0
    addu       $s2,$s2,$t8
    sh         $a3,34($s2)
    sh         $zero,0($s1)
    lh         $at,32($s2)
    li         $v0,2
    beq        $at, $v0, .L00000598
    sd         $ra,24($sp)
.L00000574:
    ld         $ra,24($sp)
.L00000578:
    ld         $s2,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000058c:
    addiu      $s1,$a0,362
    b          .L0000054c
    addiu      $s0,$a0,234
.L00000598:
    move       $a0,$s0
    jal        crime_i2cValidEdid
    addiu      $a1,$s2,32
    beqz       $v0, .L000005d4
    li         $t8,2
    sh         $t8,34($s2)
    sh         $t8,0($s1)
    jal        sgiEdid
    move       $a0,$s0
    beqz       $v0, .L00000578
    ld         $ra,24($sp)
    jal        crmFixupSony24
    move       $a0,$s0
    b          .L00000578
    ld         $ra,24($sp)
.L000005d4:
    jal        sgiEdid
    move       $a0,$s0
    beqz       $v0, .L00000578
    ld         $ra,24($sp)
    jal        crmFixupSony24
    move       $a0,$s0
    lbu        $t9,10($s0)
    lbu        $a0,11($s0)
    lbu        $a3,22($s0)
    li         $a4,1
    bnez       $t9, .L00000574
    lbu        $a1,21($s0)
    li         $ra,16
    beq        $a0, $ra, .L00000674
    li         $at,18
    beq        $a0, $at, .L00000678
    li         $t1,33
    beq        $a0, $a4, .L00000694
    li         $t3,38
    li         $v0,2
    beq        $a0, $v0, .L00000634
    li         $v1,17
    bne        $a0, $v1, .L00000578
    ld         $ra,24($sp)
.L00000634:
    beq        $a0, $a4, .L00000690
    li         $a2,2
.L0000063c:
    beq        $a0, $a2, .L00000690
    li         $a5,17
.L00000644:
    beq        $a0, $a5, .L000006b0
    li         $t9,48
    lbu        $a0,36($s0)
.L00000650:
    andi       $a6,$a0,0x1
    beqz       $a6, .L000006cc
    ori        $at,$a0,0x1
.L0000065c:
    lh         $a7,36($s2)
    beqz       $a7, .L000006d4
.L00000664:
    li         $t0,2
    sh         $t0,34($s2)
    b          .L00000574
    sh         $a4,0($s1)
.L00000674:
    li         $t1,33
.L00000678:
    bne        $a1, $t1, .L00000574
    li         $t2,24
    bne        $a3, $t2, .L00000578
    ld         $ra,24($sp)
    bne        $a0, $a4, .L0000063c
    li         $a2,2
.L00000690:
    li         $t3,38
.L00000694:
    bne        $a1, $t3, .L00000578
    ld         $ra,24($sp)
    li         $t8,29
    bne        $a3, $t8, .L00000578
    ld         $ra,24($sp)
    b          .L00000644
    li         $a5,17
.L000006b0:
    bne        $a1, $t9, .L00000578
    ld         $ra,24($sp)
    li         $ra,31
    bne        $a3, $ra, .L00000578
    ld         $ra,24($sp)
    b          .L00000650
    lbu        $a0,36($s0)
.L000006cc:
    b          .L0000065c
    sb         $at,36($s0)
.L000006d4:
    li         $a2,8
    move       $a1,$s0
    jal        bcopy
    addiu      $a0,$gp,-30616
    b          .L00000664
    li         $a4,1

glabel i2cfp_DMI2_FailedEDID
    lui        $v0,0x0
    sll        $v1,$a1,0x3
    addiu      $v0,$v0,0
    addu       $v0,$v0,$v1
    li         $at,1
    sh         $at,50($v0)
    jr         $ra
    sh         $zero,492($a0)

glabel crime_EdidCksum
    move       $a4,$a0
    move       $a3,$zero
    move       $v0,$zero
.L00000718:
    lbu        $v1,0($a4)
    addiu      $a3,$a3,1
    slti       $at,$a3,128
    addu       $v0,$v1,$v0
    andi       $v0,$v0,0xff
    beqz       $at, .L00000750
    nop
    lbu        $a0,1($a4)
    addiu      $a3,$a3,1
    slti       $v1,$a3,128
    addiu      $a4,$a4,2
    addu       $v0,$a0,$v0
    bnez       $v1, .L00000718
    andi       $v0,$v0,0xff
.L00000750:
    jr         $ra
    nop

glabel crime_i2cValidEdid
    lbu        $at,0($a0)
    beqz       $at, .L00000784
    li         $v0,255
.L00000764:
    move       $v0,$zero
.L00000768:
    beqz       $v0, .L00000778
    sh         $v0,4($a1)
    lhu        $v0,6($a1)
    beqz       $v0, .L000007e0
.L00000778:
    move       $v0,$zero
    jr         $ra
    nop
.L00000784:
    lbu        $v1,1($a0)
    bne        $v0, $v1, .L00000764
    nop
    lbu        $a2,2($a0)
    bne        $v0, $a2, .L00000764
    nop
    lbu        $a3,3($a0)
    bne        $v0, $a3, .L00000764
    nop
    lbu        $a4,4($a0)
    bne        $v0, $a4, .L00000764
    nop
    lbu        $a5,5($a0)
    bne        $v0, $a5, .L00000764
    nop
    lbu        $a6,6($a0)
    bne        $v0, $a6, .L00000768
    move       $v0,$zero
    lbu        $a7,7($a0)
    bnez       $a7, .L00000768
    move       $v0,$zero
    b          .L00000768
    li         $v0,1
.L000007e0:
    jr         $ra
    li         $v0,1

glabel sgiEdid
    lbu        $at,8($a0)
    li         $v0,76
    bne        $at, $v0, .L00000810
    move       $v0,$zero
    lbu        $a3,9($a0)
    li         $v1,248
    beq        $a3, $v1, .L00000818
    li         $v0,233
    beq        $a3, $v0, .L00000818
    move       $v0,$zero
.L00000810:
    jr         $ra
    nop
.L00000818:
    jr         $ra
    li         $v0,1

glabel crmFixupSony24
    lbu        $at,10($a0)
    bnez       $at, .L00000848
    nop
    lbu        $v0,11($a0)
    li         $v1,1
    bne        $v0, $v1, .L00000848
    li         $a2,48
    lbu        $a1,21($a0)
    beq        $a1, $a2, .L00000850
    nop
.L00000848:
    jr         $ra
    nop
.L00000850:
    lbu        $a3,127($a0)
    li         $a4,17
    sb         $a4,11($a0)
    addiu      $a3,$a3,-16
    jr         $ra
    sb         $a3,127($a0)

glabel crime_copyin_cmd
    lh         $a2,2($a0)
    addiu      $sp,$sp,-16
    li         $a5,1
    blez       $a2, .L000008c0
    slti       $v0,$a2,128
    beqz       $v0, .L000008c0
    li         $v0,-22
    beq        $a2, $a5, .L000008c8
    sd         $a1,0($sp)
    lw         $a5,8($a0)
    beqz       $a5, .L000008f4
    sd         $ra,8($sp)
    lui        $a1,0x0
    move       $a0,$a5
    addiu      $a1,$a1,0
    jal        copyin
    addiu      $a1,$a1,128
    beqz       $v0, .L000008d8
    ld         $ra,8($sp)
    li         $v0,-14
.L000008b8:
    jr         $ra
    addiu      $sp,$sp,16
.L000008c0:
    b          .L000008b8
    li         $v0,-22
.L000008c8:
    lui        $a3,0x0
    lbu        $a2,6($a0)
    addiu      $a3,$a3,0
    sb         $a2,128($a3)
.L000008d8:
    ld         $a5,0($sp)
    lui        $a4,0x0
    move       $v0,$zero
    addiu      $a4,$a4,0
    addiu      $a4,$a4,128
    b          .L000008b8
    sw         $a4,0($a5)
.L000008f4:
    b          .L000008b8
    nop

glabel crime_i2c_cmd
    lbu        $v1,1($a1)
    addiu      $sp,$sp,-96
    sd         $zero,16($sp)
    sd         $v1,40($sp)
    sd         $s3,56($sp)
    lw         $s3,128($a0)
    sd         $ra,80($sp)
    lbu        $at,0($a1)
    sd         $s1,64($sp)
    move       $v0,$a0
    move       $s1,$a1
    sd         $s0,72($sp)
    move       $s0,$a2
    blez       $at, .L00000940
    sd         $s2,88($sp)
    lw         $a0,0($gp)
    beqz       $a0, .L000009c0
.L00000940:
    li         $a1,25
    addiu      $a0,$v0,468
    jal        mutex_lock
    sd         $a0,48($sp)
    lw         $a1,0($gp)
    beqz       $a1, .L0000096c
    ld         $v1,40($sp)
    move       $a0,$s3
    jal        crime_i2cSetMonitor
    lbu        $a1,0($s1)
    ld         $v1,40($sp)
.L0000096c:
    lui        $v0,0x0
    sltiu      $a2,$v1,8
    addiu      $v0,$v0,0
    sll        $v1,$v1,0x2
    sd         $s0,32($sp)
    beqz       $a2, .L00000994
    addu       $v0,$v0,$v1
    lw         $v1,0($v0)
    jr         $v1
    lw         $a0,-30716($gp)
.L00000994:
    move       $s0,$zero
.L00000998:
    jal        mutex_unlock
    ld         $a0,48($sp)
.L000009a0:
    ld         $s3,56($sp)
    ld         $ra,80($sp)
    ld         $s1,64($sp)
    ld         $s2,88($sp)
    move       $v0,$s0
    ld         $s0,72($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L000009c0:
    b          .L000009a0
    li         $s0,-22
    lw         $a0,-30716($gp)
    jal        i2_start
    move       $a1,$s3
    b          .L00000998
    move       $s0,$zero
    move       $a0,$s1
    jal        crime_copyin_cmd
    addiu      $a1,$sp,0
    bltz       $v0, .L00000998
    move       $s0,$v0
    move       $a1,$s1
    lui        $s2,0x0
    move       $a0,$s3
    addiu      $s2,$s2,0
    lw         $a2,0($sp)
    jal        crime_2abCmdWrapper
    move       $a3,$s2
    lw         $a1,12($s1)
    beqz       $a1, .L00000998
    move       $s0,$v0
    lh         $a2,4($s1)
    blez       $a2, .L00000b9c
    move       $a0,$s1
    jal        copyout
    move       $a0,$s2
    beqz       $v0, .L00000b9c
    move       $a0,$s1
    b          .L00000998
    li         $s0,-14
    move       $a0,$s3
    lui        $a1,0x0
    jal        crime_Probe2AB
    addiu      $a1,$a1,0
    beqz       $v0, .L00000b90
    nop
    b          .L00000998
    move       $s0,$zero
    jal        crime_i2cReset
    move       $a0,$s3
    b          .L00000998
    move       $s0,$zero
    b          .L00000998
    li         $s0,-22
    lh         $s0,4($s1)
    sh         $zero,4($s1)
    blez       $s0, .L00000a98
    slti       $v0,$s0,129
    lw         $a2,12($s1)
    beqz       $a2, .L00000a98
    nop
    bnez       $v0, .L00000b10
    addiu      $a4,$s0,-1
.L00000a98:
    b          .L00000998
    li         $s0,-22
    move       $a0,$s1
    jal        crime_copyin_cmd
    addiu      $a1,$sp,0
    bltz       $v0, .L00000998
    move       $s0,$v0
    lh         $s0,2($s1)
    blez       $s0, .L00000998
    move       $s2,$zero
    lw         $a2,0($sp)
.L00000ac4:
    lw         $a0,-30716($gp)
    addu       $a2,$s2,$a2
    move       $a1,$s3
    jal        i2_sendbyte
    lbu        $a2,0($a2)
    beqz       $v0, .L00000b88
    nop
    addiu      $s2,$s2,1
    slt        $v0,$s2,$s0
    bnez       $v0, .L00000ac4
    lw         $a2,0($sp)
.L00000af0:
    beqz       $v0, .L00000998
    nop
    b          .L00000998
    li         $s0,-5
    jal        i2_stop
    move       $a1,$s3
    b          .L00000998
    move       $s0,$zero
.L00000b10:
    sd         $a4,8($sp)
    lui        $a3,0x0
    move       $s2,$zero
    addiu      $a3,$a3,0
    sd         $a3,24($sp)
.L00000b24:
    ld         $a3,8($sp)
    ld         $a2,24($sp)
    move       $a1,$s3
    xor        $a3,$a3,$s2
    lw         $a0,-30716($gp)
    jal        i2_master_recvbyte
    sltu       $a3,$zero,$a3
    beqz       $v0, .L00000b60
    nop
    addiu      $s2,$s2,1
    ld         $a5,24($sp)
    slt        $a4,$s2,$s0
    addiu      $a5,$a5,1
    bnez       $a4, .L00000b24
    sd         $a5,24($sp)
.L00000b60:
    blez       $s2, .L00000bc4
    move       $a2,$s2
    lui        $a0,0x0
    lw         $a1,12($s1)
    jal        copyout
    addiu      $a0,$a0,0
    beqz       $v0, .L00000bc8
    li         $a2,16
    b          .L00000998
    li         $s0,-14
.L00000b88:
    b          .L00000af0
    slt        $v0,$s2,$s0
.L00000b90:
    b          .L00000998
    li         $s0,-5
    move       $a0,$s1
.L00000b9c:
    ld         $a1,32($sp)
    jal        copyout
    li         $a2,16
    beqz       $v0, .L00000998
    nop
    li         $s0,-14
    li         $a1,1
    sd         $a1,16($sp)
    b          .L00000998
    nop
.L00000bc4:
    li         $a2,16
.L00000bc8:
    ld         $a1,32($sp)
    move       $a0,$s1
    jal        copyout
    sh         $s2,4($s1)
    beqz       $v0, .L00000be8
    slt        $a2,$s2,$s0
    b          .L00000998
    li         $s0,-14
.L00000be8:
    beqz       $a2, .L00000998
    nop
    b          .L00000998
    li         $s0,-5

glabel crime_Probe2AB
    addiu      $sp,$sp,-240
    sd         $s5,232($sp)
    sd         $s1,224($sp)
    sd         $s0,216($sp)
    sd         $s7,208($sp)
    sd         $ra,168($sp)
    sd         $s3,176($sp)
    move       $s3,$a0
    sd         $s4,160($sp)
    move       $s4,$a1
    jal        crime_i2cReset
    sd         $s6,200($sp)
    li         $s7,1
    li         $s6,3
    addiu      $t8,$s4,1
    sd         $t8,152($sp)
    li         $s5,240
    sd         $s8,192($sp)
    lui        $s1,0x0
    move       $s0,$zero
    sd         $s2,184($sp)
    addiu      $s1,$s1,0
    addiu      $at,$s1,129
    b          .L00000cbc
    sd         $at,144($sp)
.L00000c5c:
    addiu      $s2,$s2,1
    slti       $t9,$s2,3
    beqz       $t9, .L00000c8c
    nop
.L00000c6c:
    addiu      $s0,$s0,1
    move       $a0,$s3
    li         $a1,1
    addiu      $a2,$s1,128
    jal        crime_2abSendCmd
    move       $a3,$zero
    beqz       $v0, .L00000c5c
    nop
.L00000c8c:
    beq        $s2, $s6, .L00000cc8
    move       $a0,$s3
    move       $a1,$s4
    jal        crime_2abGetReply
    addiu      $a2,$sp,0
    lw         $a2,0($sp)
    blez       $v0, .L00000d44
    move       $s2,$v0
    beq        $a2, $s7, .L00000ce8
    slti       $s2,$s0,30
.L00000cb4:
    beqz       $s2, .L00000d0c
    li         $v0,110
.L00000cbc:
    sb         $s5,128($s1)
    b          .L00000c6c
    move       $s2,$zero
.L00000cc8:
    lw         $a0,-30716($gp)
    jal        i2_stop
    move       $a1,$s3
    jal        us_delay
    lw         $a0,-30640($gp)
    addiu      $s0,$s0,1
    b          .L00000cb4
    slti       $s2,$s0,30
.L00000ce8:
    lbu        $at,0($s4)
    li         $ra,224
    li         $v1,4
    li         $t9,110
    lbu        $v0,-30643($gp)
    bne        $ra, $at, .L00000cb4
    slti       $s2,$s0,30
    b          .L00000d68
    nop
.L00000d0c:
    sb         $v0,-30643($gp)
    move       $v0,$zero
.L00000d14:
    ld         $s5,232($sp)
    ld         $s1,224($sp)
    ld         $s0,216($sp)
    ld         $s7,208($sp)
    ld         $s6,200($sp)
    ld         $s8,192($sp)
    ld         $ra,168($sp)
    ld         $s2,184($sp)
    ld         $s3,176($sp)
    ld         $s4,160($sp)
    jr         $ra
    addiu      $sp,$sp,240
.L00000d44:
    lw         $a0,-30716($gp)
    jal        i2_stop
    move       $a1,$s3
    jal        us_delay
    lw         $a0,-30640($gp)
    bltz       $s2, .L00000eb4
    nop
.L00000d60:
    b          .L00000cb4
    slti       $s2,$s0,30
.L00000d68:
    beq        $v1, $v0, .L00000ebc
    nop
.L00000d70:
    jal        us_delay
    lw         $a0,-30640($gp)
    b          .L00000d90
    move       $s2,$zero
.L00000d80:
    addiu      $s2,$s2,1
.L00000d84:
    slti       $a0,$s2,2
    beqz       $a0, .L00000e98
    nop
.L00000d90:
    jal        us_delay
    lw         $a0,-30640($gp)
    addiu      $s0,$s0,1
    move       $a0,$s3
    li         $a1,1
    addiu      $a2,$s1,128
    li         $s8,241
    sb         $s8,128($s1)
    jal        crime_2abSendCmd
    move       $a3,$zero
    beqz       $v0, .L00000d80
    move       $a0,$s3
    move       $a1,$s4
    jal        crime_2abGetReply
    addiu      $a2,$sp,0
    blez       $v0, .L00000d80
    move       $s8,$v0
    slti       $a1,$v0,128
    beqz       $a1, .L00000d80
    addiu      $a2,$v0,-1
    sd         $a2,136($sp)
    ld         $a0,152($sp)
    jal        bcopy
    addiu      $a1,$sp,8
    beq        $s8, $s7, .L00000d80
    li         $a2,225
    lbu        $a3,0($s4)
    bnel       $a2, $a3, .L00000d84
    addiu      $s2,$s2,1
    jal        us_delay
    lw         $a0,-30640($gp)
    li         $a4,242
    sb         $a4,128($s1)
    addiu      $a0,$sp,8
    ld         $a1,144($sp)
    addiu      $s0,$s0,1
    jal        bcopy
    ld         $a2,136($sp)
    li         $a3,1
    addiu      $a2,$s1,128
    addiu      $a1,$s8,1
    move       $a0,$s3
    addu       $a6,$s8,$s1
    li         $a5,4
    jal        crime_2abSendCmd
    sb         $a5,128($a6)
    beqz       $v0, .L00000d80
    lw         $t0,-30708($gp)
    li         $a7,4
    beqz       $t0, .L00000e90
    sb         $a7,-30643($gp)
    lui        $s0,0x0
    sw         $s7,-30712($gp)
    move       $s1,$zero
    addiu      $s0,$s0,0
.L00000e6c:
    li         $a2,19
    addiu      $a1,$sp,8
    jal        strncmp
    lw         $a0,0($s0)
    beqz       $v0, .L00000ec4
    addiu      $s1,$s1,1
    slti       $t8,$s1,3
    bnez       $t8, .L00000e6c
    addiu      $s0,$s0,4
.L00000e90:
    b          .L00000d14
    li         $v0,1
.L00000e98:
    slti       $s2,$s0,30
    beqz       $s2, .L00000cb4
    nop
    jal        us_delay
    lw         $a0,-30640($gp)
    b          .L00000cb4
    nop
.L00000eb4:
    b          .L00000d60
    addiu      $s0,$s0,1
.L00000ebc:
    b          .L00000d70
    sb         $t9,-30643($gp)
.L00000ec4:
    b          .L00000e90
    sw         $zero,-30712($gp)

glabel crime_2abCmdWrapper
    addiu      $sp,$sp,-64
    sd         $ra,16($sp)
    sd         $s5,24($sp)
    sd         $s1,32($sp)
    sd         $s3,56($sp)
    move       $s3,$a0
    move       $s1,$a1
    sd         $s4,48($sp)
    move       $s4,$a2
    move       $s5,$a3
    sd         $s0,40($sp)
    move       $s0,$zero
    b          .L00000f0c
    sd         $s2,8($sp)
.L00000f04:
    bgez       $s2, .L00000fb4
    addiu      $s0,$s0,1
.L00000f0c:
    lw         $a3,12($s1)
    move       $a2,$s4
    lh         $a1,2($s1)
    move       $a0,$s3
    sh         $zero,4($s1)
    jal        crime_2abSendCmd
    sltiu      $a3,$a3,1
    beqz       $v0, .L00000f68
    nop
    lw         $a4,12($s1)
    beqz       $a4, .L00000f04
    move       $s2,$zero
    move       $a0,$s3
    move       $a1,$s5
    jal        crime_2abGetReply
    addiu      $a2,$sp,0
    move       $s2,$v0
    lw         $a5,0($sp)
    li         $a7,1
    bgtz       $v0, .L00000f04
    sh         $a5,4($s1)
    b          .L00000f7c
    nop
.L00000f68:
    bgtz       $s0, .L00000fb4
    li         $s2,-5
    li         $s2,-5
    b          .L00000f04
    nop
.L00000f7c:
    beqz       $s2, .L00000fdc
    lw         $v0,-30636($gp)
    li         $s2,-5
.L00000f88:
    slt        $a6,$v0,$s0
    bnez       $a6, .L00000fb4
    nop
    beqz       $s0, .L00000ff4
    nop
    beq        $s0, $a7, .L00000fe4
    nop
    jal        us_delay
    lw         $a0,-30668($gp)
    b          .L00000f04
    nop
.L00000fb4:
    ld         $s0,40($sp)
    ld         $s1,32($sp)
    move       $v0,$s2
    ld         $s2,8($sp)
    ld         $ra,16($sp)
    ld         $s3,56($sp)
    ld         $s4,48($sp)
    ld         $s5,24($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00000fdc:
    b          .L00000f88
    li         $s2,-145
.L00000fe4:
    jal        us_delay
    lw         $a0,-30672($gp)
    b          .L00000f04
    nop
.L00000ff4:
    jal        us_delay
    lw         $a0,-30676($gp)
    b          .L00000f04
    nop

glabel crime_2abSendCmd
    addiu      $sp,$sp,-128
    sd         $a3,16($sp)
    sd         $s0,48($sp)
    move       $s0,$a0
    lw         $a0,-30716($gp)
    sd         $s8,24($sp)
    move       $s8,$a2
    sd         $s4,40($sp)
    move       $s4,$a1
    sd         $ra,32($sp)
    jal        i2_wait_for_bus
    move       $a1,$s0
    sd         $s6,72($sp)
    sd         $s3,80($sp)
    sd         $s5,96($sp)
    sd         $s1,104($sp)
    sd         $s2,88($sp)
    move       $s2,$zero
    beqz       $v0, .L00001244
    sd         $s7,112($sp)
    addiu      $at,$s4,128
    move       $s7,$zero
    andi       $at,$at,0xff
    sd         $at,56($sp)
.L00001064:
    addiu      $s2,$s2,1
.L00001068:
    move       $s1,$zero
    slti       $v1,$s2,4
    move       $v0,$zero
    move       $a2,$zero
    bnez       $v1, .L000010f0
    move       $s3,$zero
    li         $ra,110
    li         $a0,3
    li         $a1,240
    li         $a3,4
    bne        $s7, $a0, .L000010bc
    move       $a5,$a3
    lbu        $a2,0($s8)
    bne        $a1, $a2, .L000010c0
    move       $v0,$zero
    lbu        $a4,-30643($gp)
    beq        $a3, $a4, .L000011c8
    move       $s2,$zero
    sb         $a5,-30643($gp)
.L000010b4:
    b          .L00001068
    addiu      $s2,$s2,1
.L000010bc:
    move       $v0,$zero
.L000010c0:
    ld         $s6,72($sp)
    ld         $s8,24($sp)
    ld         $s3,80($sp)
    ld         $s4,40($sp)
    ld         $s0,48($sp)
    ld         $s2,88($sp)
    ld         $ra,32($sp)
    ld         $s5,96($sp)
    ld         $s1,104($sp)
    ld         $s7,112($sp)
    jr         $ra
    addiu      $sp,$sp,128
.L000010f0:
    lw         $a0,-30716($gp)
    sd         $zero,8($sp)
    move       $a1,$s0
    jal        i2_start
    sd         $zero,0($sp)
    lbu        $a2,-30643($gp)
    move       $a1,$s0
    jal        i2_sendbyte
    lw         $a0,-30716($gp)
    beqz       $v0, .L000011d0
    lbu        $a2,-30644($gp)
    lw         $a0,-30716($gp)
    move       $a1,$s0
    jal        i2_sendbyte
    sd         $s1,64($sp)
    beqz       $v0, .L00001210
    lw         $a0,-30716($gp)
    move       $a1,$s0
    jal        i2_sendbyte
    ld         $a2,56($sp)
    beqz       $v0, .L0000124c
    lbu        $t9,-30643($gp)
    lbu        $t8,-30644($gp)
    ld         $s3,56($sp)
    xor        $t8,$t8,$t9
    xor        $s3,$s3,$t8
    blez       $s4, .L00001198
    andi       $s3,$s3,0xff
    move       $s5,$zero
    move       $s1,$s8
.L00001168:
    lbu        $s6,0($s1)
    move       $a1,$s0
    lw         $a0,-30716($gp)
    jal        i2_sendbyte
    move       $a2,$s6
    beqz       $v0, .L00001234
    addiu      $s5,$s5,1
    slt        $t8,$s5,$s4
    addiu      $s1,$s1,1
    xor        $s3,$s3,$s6
    bnez       $t8, .L00001168
    andi       $s3,$s3,0xff
.L00001198:
    move       $a1,$s0
    lw         $a0,-30716($gp)
    jal        i2_sendbyte
    move       $a2,$s3
    beqz       $v0, .L00001224
    ld         $t9,16($sp)
.L000011b0:
    beqz       $t9, .L000011c0
    lw         $a0,-30716($gp)
    jal        i2_stop
    move       $a1,$s0
.L000011c0:
    b          .L000010c0
    li         $v0,1
.L000011c8:
    b          .L000010b4
    sb         $ra,-30643($gp)
.L000011d0:
    addiu      $s7,$s7,1
    jal        crime_i2cFixupAfterErr
    move       $a0,$s0
    li         $at,1
    sd         $at,64($sp)
.L000011e4:
    ld         $v1,64($sp)
    bnez       $v1, .L00001064
    ld         $a0,0($sp)
    bnez       $a0, .L00001064
    ld         $a1,8($sp)
    bnez       $a1, .L00001064
    nop
    bnez       $s3, .L00001068
    addiu      $s2,$s2,1
    b          .L000011b0
    ld         $t9,16($sp)
.L00001210:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s0
    li         $a2,1
    b          .L000011e4
    sd         $a2,0($sp)
.L00001224:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s0
    b          .L000011e4
    li         $s3,1
.L00001234:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s0
    b          .L00001068
    addiu      $s2,$s2,1
.L00001244:
    b          .L000010c0
    move       $v0,$zero
.L0000124c:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s0
    li         $a3,1
    b          .L000011e4
    sd         $a3,8($sp)

glabel crime_2abGetReply
    addiu      $sp,$sp,-80
    sd         $a1,16($sp)
    sd         $s0,40($sp)
    move       $s0,$a0
    sd         $s2,56($sp)
    sd         $ra,48($sp)
    jal        splprof
    move       $s2,$a2
    lw         $a0,-30716($gp)
    sw         $v0,-30720($gp)
    jal        i2_stop
    move       $a1,$s0
    li         $a4,1
    addiu      $a3,$sp,4
    lw         $a0,-30716($gp)
    addiu      $a2,$sp,0
    move       $a1,$s0
    sw         $zero,0($s2)
    jal        i2_slave_recvbyte
    move       $a5,$zero
    beqz       $v0, .L000012f8
    sd         $s1,64($sp)
    lbu        $s1,0($sp)
    andi       $at,$s1,0x1
    beqz       $at, .L00001318
    move       $a1,$s0
    lw         $v0,-30712($gp)
    beqz       $v0, .L00001430
    nop
.L000012d4:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s0
    li         $v0,-1
.L000012e0:
    ld         $ra,48($sp)
.L000012e4:
    ld         $s0,40($sp)
    ld         $s1,64($sp)
    ld         $s2,56($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L000012f8:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s0
    lw         $v1,4($sp)
    li         $a0,2
    beq        $v1, $a0, .L00001448
    li         $v0,-1
    b          .L000012e4
    ld         $ra,48($sp)
.L00001318:
    addiu      $a2,$sp,0
    addiu      $a3,$sp,4
    move       $a4,$zero
    lw         $a0,-30716($gp)
    jal        i2_slave_recvbyte
    move       $a5,$zero
    beqz       $v0, .L00001450
    move       $a1,$s0
    lbu        $a4,0($sp)
    addiu      $a2,$sp,0
    addiu      $a3,$sp,4
    move       $a5,$zero
    xor        $s1,$a4,$s1
    lw         $a0,-30716($gp)
    jal        i2_slave_recvbyte
    move       $a4,$zero
    beqz       $v0, .L00001480
    lbu        $t9,0($sp)
    xor        $s1,$s1,$t9
    andi       $t8,$t9,0x7f
    sd         $t8,8($sp)
    blez       $t8, .L000013e0
    andi       $s1,$s1,0xff
    ld         $ra,16($sp)
    sd         $zero,32($sp)
    sd         $ra,24($sp)
.L00001380:
    move       $a1,$s0
    addiu      $a2,$sp,0
    addiu      $a3,$sp,4
    move       $a4,$zero
    lw         $a0,-30716($gp)
    jal        i2_slave_recvbyte
    move       $a5,$zero
    beqz       $v0, .L00001470
    lbu        $t9,0($sp)
    ld         $v1,8($sp)
    ld         $t8,24($sp)
    ld         $v0,32($sp)
    sb         $t9,0($t8)
    lw         $at,0($s2)
    addiu      $v0,$v0,1
    xor        $s1,$s1,$t9
    sd         $v0,32($sp)
    slt        $v0,$v0,$v1
    addiu      $t8,$t8,1
    sd         $t8,24($sp)
    andi       $s1,$s1,0xff
    addiu      $at,$at,1
    bnez       $v0, .L00001380
    sw         $at,0($s2)
.L000013e0:
    li         $a5,1
    move       $a4,$zero
    addiu      $a3,$sp,4
    addiu      $a2,$sp,0
    move       $a1,$s0
    jal        i2_slave_recvbyte
    lw         $a0,-30716($gp)
    beqz       $v0, .L00001460
    lw         $a0,-30716($gp)
    jal        i2_wait_for_stop
    move       $a1,$s0
    jal        splx
    lw         $a0,-30720($gp)
    jal        us_delay
    lw         $a0,-30664($gp)
    lbu        $a0,0($sp)
    beq        $a0, $s1, .L00001440
    nop
    b          .L000012e0
    li         $v0,-1
.L00001430:
    jal        splx
    lw         $a0,-30720($gp)
    b          .L000012d4
    nop
.L00001440:
    b          .L000012e0
    lw         $v0,0($s2)
.L00001448:
    b          .L000012e0
    move       $v0,$zero
.L00001450:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s0
    b          .L000012e0
    li         $v0,-1
.L00001460:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s0
    b          .L000012e0
    li         $v0,-1
.L00001470:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s0
    b          .L000012e0
    li         $v0,-1
.L00001480:
    jal        crime_i2cFixupAfterErr
    move       $a0,$s0
    b          .L000012e0
    li         $v0,-1

glabel crime_i2cFpProbe
    addiu      $sp,$sp,-48
    sb         $zero,0($sp)
    sd         $s2,32($sp)
    lw         $at,0($gp)
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $s1,24($sp)
    li         $s1,2
    beqz       $at, .L000014dc
    sd         $ra,40($sp)
    lui        $v0,0x0
    sw         $s1,0($v0)
    move       $v0,$zero
.L000014c4:
    ld         $ra,40($sp)
    ld         $s2,32($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000014dc:
    li         $a0,1
    li         $v1,-1
    lui        $a1,0x0
    sh         $v1,58($a1)
    jal        i2_stop
    move       $a1,$s0
    lw         $a2,16($s0)
    andi       $a2,$a2,0xff
    nor        $a2,$a2,$zero
    andi       $a2,$a2,0x3
    li         $s2,3
    andi       $a2,$a2,0xff
    beq        $s2, $a2, .L00001570
    move       $a0,$s0
    b          .L00001524
    sd         $zero,8($sp)
.L0000151c:
    beq        $s2, $a0, .L0000156c
    sd         $v0,8($sp)
.L00001524:
    li         $a0,1
    jal        i2_stop
    move       $a1,$s0
    ld         $v0,8($sp)
    lw         $a0,16($s0)
    andi       $a0,$a0,0xff
    addiu      $v0,$v0,1
    sltiu      $a1,$v0,26
    nor        $a0,$a0,$zero
    andi       $a0,$a0,0x3
    bnez       $a1, .L0000151c
    andi       $a0,$a0,0xff
    beq        $s2, $a0, .L00001570
    move       $a0,$s0
    lui        $a1,0x0
    move       $v0,$zero
    b          .L000014c4
    sw         $s1,0($a1)
.L0000156c:
    move       $a0,$s0
.L00001570:
    jal        i2cfp_PanelID
    addiu      $a1,$sp,0
    beqz       $v0, .L00001640
    li         $a0,4
    lbu        $v0,0($sp)
    beq        $s2, $v0, .L000015e0
    nop
    beq        $s1, $v0, .L000015e0
    nop
    beq        $v0, $a0, .L000015e4
    move       $a0,$zero
    li         $a2,5
    beq        $v0, $a2, .L00001678
    move       $a0,$zero
    lbu        $v0,0($sp)
.L000015ac:
    li         $a1,5
    li         $a0,4
    beq        $s1, $v0, .L00001630
    lui        $a4,0x0
    beq        $s2, $v0, .L00001630
    nop
    beq        $v0, $a0, .L0000166c
    nop
    beq        $v0, $a1, .L00001628
    li         $v0,132
    sw         $s1,0($a4)
    b          .L000014c4
    move       $v0,$zero
.L000015e0:
    move       $a0,$zero
.L000015e4:
    li         $a1,17
    move       $a2,$zero
    move       $a3,$zero
    move       $a4,$zero
    jal        find_inventory
    move       $a5,$zero
    beqz       $v0, .L00001650
    li         $a1,1
    move       $a0,$v0
    li         $a2,1
    li         $a1,17
    move       $a3,$zero
    move       $a4,$zero
    jal        replace_in_inventory
    move       $a5,$zero
    b          .L000015ac
    lbu        $v0,0($sp)
.L00001628:
    b          .L000014c4
    sw         $s2,0($a4)
.L00001630:
    lui        $a4,0x0
    li         $v0,130
    b          .L000014c4
    sw         $s2,0($a4)
.L00001640:
    lui        $a5,0x0
    move       $v0,$zero
    b          .L000014c4
    sw         $s1,0($a5)
.L00001650:
    li         $a0,17
    move       $a2,$zero
    move       $a3,$zero
    jal        add_to_inventory
    move       $a4,$zero
    b          .L000015ac
    lbu        $v0,0($sp)
.L0000166c:
    li         $v0,131
    b          .L000014c4
    sw         $s2,0($a4)
.L00001678:
    li         $a2,4
    li         $a1,17
    move       $a3,$zero
    move       $a4,$zero
    jal        find_inventory
    move       $a5,$zero
    beqz       $v0, .L000016b8
    move       $a0,$v0
    li         $a2,5
    li         $a1,17
    move       $a3,$zero
    move       $a4,$zero
    jal        replace_in_inventory
    move       $a5,$zero
    b          .L000015ac
    lbu        $v0,0($sp)
.L000016b8:
    li         $a1,5
    li         $a0,17
    move       $a2,$zero
    move       $a3,$zero
    jal        add_to_inventory
    move       $a4,$zero
    b          .L000015ac
    lbu        $v0,0($sp)

glabel crime_i2cFpHotProbe
    addiu      $sp,$sp,-48
    sd         $s3,0($sp)
    lw         $s3,128($a0)
    sd         $s0,8($sp)
    lw         $s0,124($a0)
    sd         $ra,32($sp)
    lbu        $a5,46($s0)
    sd         $s2,16($sp)
    li         $a2,132
    sd         $s1,24($sp)
    lui        $s1,0x0
    move       $s2,$a0
    beq        $a2, $a5, .L00001858
    lw         $s1,0($s1)
    lbu        $t8,44($s0)
    bnez       $t8, .L00001858
    li         $t9,1
    beq        $s1, $t9, .L00001758
    li         $a3,132
    jal        crime_i2cFpProbe
    move       $a0,$s3
    li         $a6,2
    lui        $a2,0x0
    andi       $a5,$v0,0xff
    sb         $a5,46($s0)
    addiu      $a2,$a2,0
    li         $a1,3
    beq        $s1, $a6, .L00001784
    lw         $a0,0($a2)
.L0000174c:
    beq        $s1, $a1, .L000017f8
    lw         $t0,0($a2)
.L00001754:
    li         $a3,132
.L00001758:
    beq        $a3, $a5, .L0000176c
    ld         $s3,0($sp)
    lbu        $a4,44($s0)
    beqz       $a4, .L00001810
.L00001768:
    ld         $s3,0($sp)
.L0000176c:
    ld         $ra,32($sp)
    ld         $s0,8($sp)
    ld         $s2,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00001784:
    bne        $a0, $a1, .L0000174c
    nop
    lw         $a0,48($s0)
    beqz       $a0, .L00001758
    li         $a3,132
    lw         $a2,12($a0)
    li         $a1,0xec54
    slt        $a1,$a1,$a2
    bltz       $a1, .L0000182c
    move       $a2,$a1
.L000017ac:
    bnez       $a2, .L00001754
    li         $a3,130
    beq        $a5, $a3, .L00001834
    lh         $a1,8($a0)
    li         $a4,1280
    bne        $a1, $a4, .L00001758
    li         $a3,132
    lh         $a6,10($a0)
    li         $a7,1024
    bne        $a6, $a7, .L00001754
    move       $a0,$s2
.L000017d8:
    move       $a1,$s0
    jal        i2cfp_PanelOn
    move       $a2,$s3
    move       $a0,$s2
    jal        crime_FpSchedForRetrace
    li         $a1,1
    b          .L00001754
    lbu        $a5,46($s0)
.L000017f8:
    bne        $t0, $a6, .L00001754
    move       $a0,$s2
    jal        crime_FpSchedForRetrace
    move       $a1,$zero
    b          .L00001754
    lbu        $a5,46($s0)
.L00001810:
    li         $a2,3000
    move       $a1,$s2
    lui        $a0,0x0
    jal        timeout
    addiu      $a0,$a0,0
    b          .L00001768
    sw         $v0,464($s2)
.L0000182c:
    b          .L000017ac
    negu       $a2,$a1
.L00001834:
    li         $a2,1024
    bne        $a1, $a2, .L00001758
    li         $a3,132
    lh         $a3,10($a0)
    li         $a4,768
    bne        $a3, $a4, .L00001758
    li         $a3,132
    b          .L000017d8
    move       $a0,$s2
.L00001858:
    li         $a0,4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,32
    b          .L00001754
    lbu        $a5,46($s0)

glabel i2cfp_PortRead
    move       $a3,$a1
    move       $a1,$a0
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,1
    sd         $s1,16($sp)
    move       $s1,$a2
    ori        $a2,$a3,0x1
    sd         $ra,8($sp)
    jal        i2_start_addr
    andi       $a2,$a2,0xff
    beqz       $v0, .L000018e4
    li         $a0,1
    move       $a1,$s0
    move       $a2,$s1
    jal        i2_master_recvbyte
    move       $a3,$zero
    beqz       $v0, .L000018ec
    li         $s1,1
.L000018c0:
    li         $a0,1
.L000018c4:
    jal        i2_stop
    move       $a1,$s0
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    move       $v0,$s1
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000018e4:
    b          .L000018c0
    move       $s1,$zero
.L000018ec:
    move       $s1,$zero
    b          .L000018c4
    li         $a0,1

glabel i2cfp_PortWrite
    move       $at,$a1
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,1
    sd         $s1,16($sp)
    move       $s1,$a2
    andi       $a2,$at,0xff
    sd         $ra,8($sp)
    jal        i2_start_addr
    move       $a1,$s0
    beqz       $v0, .L00001964
    li         $a0,1
    move       $a1,$s0
    jal        i2_sendbyte
    move       $a2,$s1
    beqz       $v0, .L0000196c
    li         $s1,1
.L00001940:
    li         $a0,1
.L00001944:
    jal        i2_stop
    move       $a1,$s0
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    move       $v0,$s1
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00001964:
    b          .L00001940
    move       $s1,$zero
.L0000196c:
    move       $s1,$zero
    b          .L00001944
    li         $a0,1

glabel i2cfp_PanelID
    addiu      $sp,$sp,-16
    move       $a2,$a1
    sd         $a1,8($sp)
    sd         $ra,0($sp)
    jal        i2cfp_PortRead
    li         $a1,112
    beqz       $v0, .L000019b8
    ld         $ra,0($sp)
    ld         $v1,8($sp)
    lbu        $at,0($v1)
    sra        $at,$at,0x5
    li         $v0,1
    andi       $at,$at,0x7
    sb         $at,0($v1)
.L000019b0:
    jr         $ra
    addiu      $sp,$sp,16
.L000019b8:
    b          .L000019b0
    move       $v0,$zero

glabel i2cfp_DualChannelProbe
    addiu      $sp,$sp,-32
    li         $a1,126
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $ra,16($sp)
    jal        i2cfp_PortRead
    addiu      $a2,$sp,0
    bnez       $v0, .L000019ec
    sd         $s1,24($sp)
    b          .L00001a70
    move       $v0,$zero
.L000019ec:
    move       $a0,$s0
    li         $a1,126
    jal        i2cfp_PortWrite
    li         $a2,255
    move       $a0,$s0
    li         $a1,126
    jal        i2cfp_PortRead
    addiu      $a2,$sp,1
    lbu        $s1,1($sp)
    li         $a2,127
    li         $a1,126
    move       $a0,$s0
    sra        $s1,$s1,0x5
    jal        i2cfp_PortWrite
    andi       $s1,$s1,0x3
    move       $a0,$s0
    li         $a1,126
    jal        i2cfp_PortRead
    addiu      $a2,$sp,1
    lbu        $a2,0($sp)
    li         $a1,126
    lbu        $t8,1($sp)
    move       $a0,$s0
    sll        $s1,$s1,0x2
    ori        $a2,$a2,0x70
    sra        $t8,$t8,0x5
    andi       $a2,$a2,0xff
    andi       $t8,$t8,0x3
    jal        i2cfp_PortWrite
    addu       $s1,$t8,$s1
    addiu      $v0,$s1,1
    li         $a3,1
    sw         $a3,-30716($gp)
.L00001a70:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel i2cfp_DualChannelCommand
    move       $a2,$a1
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        i2cfp_PortWrite
    li         $a1,126
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel i2_start
    lw         $a3,-30720($gp)
    addiu      $sp,$sp,-48
    sd         $s1,32($sp)
    li         $at,1
    move       $s1,$a0
    sd         $s0,24($sp)
    move       $s0,$a1
    beq        $a0, $at, .L00001b68
    sd         $ra,40($sp)
    sw         $zero,8($a1)
    lw         $v1,8($a1)
    sw         $v1,4($sp)
    lw         $v0,4($sp)
    move       $a0,$a3
    nor        $v0,$v0,$zero
    andi       $v0,$v0,0x3
    jal        us_delay
    sw         $v0,4($sp)
    move       $a0,$s1
.L00001af0:
    jal        i2_sync_clk
    move       $a1,$s0
    li         $a0,1
    beq        $s1, $a0, .L00001b94
    lw         $a3,-30720($gp)
    move       $a4,$a0
    sw         $a4,8($s0)
    lw         $a2,8($s0)
    sw         $a2,16($sp)
    lw         $a1,16($sp)
    li         $s1,3
    move       $a0,$a3
    nor        $a1,$a1,$zero
    andi       $a1,$a1,0x3
    jal        us_delay
    sw         $a1,16($sp)
    sw         $s1,8($s0)
    lw         $a6,8($s0)
    sw         $a6,20($sp)
    lw         $a5,20($sp)
    lw         $a0,-30720($gp)
    nor        $a5,$a5,$zero
    andi       $a5,$a5,0x3
    jal        us_delay
    sw         $a5,20($sp)
    ld         $ra,40($sp)
.L00001b58:
    ld         $s0,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00001b68:
    sw         $zero,16($a1)
    lw         $t0,16($a1)
    sw         $t0,0($sp)
    lw         $a7,0($sp)
    move       $a0,$a3
    nor        $a7,$a7,$zero
    andi       $a7,$a7,0x3
    jal        us_delay
    sw         $a7,0($sp)
    b          .L00001af0
    move       $a0,$s1
.L00001b94:
    move       $t3,$a0
    sw         $t3,16($s0)
    lw         $t2,16($s0)
    sw         $t2,8($sp)
    lw         $t1,8($sp)
    move       $a0,$a3
    nor        $t1,$t1,$zero
    andi       $t1,$t1,0x3
    jal        us_delay
    sw         $t1,8($sp)
    li         $ra,3
    sw         $ra,16($s0)
    lw         $t9,16($s0)
    sw         $t9,12($sp)
    lw         $t8,12($sp)
    lw         $a0,-30720($gp)
    nor        $t8,$t8,$zero
    andi       $t8,$t8,0x3
    jal        us_delay
    sw         $t8,12($sp)
    b          .L00001b58
    ld         $ra,40($sp)

glabel i2_start_addr
    addiu      $sp,$sp,-32
    sd         $a1,24($sp)
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        i2_start
    sd         $a2,16($sp)
    ld         $a1,24($sp)
    move       $a0,$s8
    jal        i2_sendbyte
    ld         $a2,16($sp)
    ld         $ra,0($sp)
    beqz       $v0, .L00001c30
    ld         $s8,8($sp)
    li         $v0,1
.L00001c28:
    jr         $ra
    addiu      $sp,$sp,32
.L00001c30:
    b          .L00001c28
    move       $v0,$zero

glabel i2_stop
    lw         $a3,-30720($gp)
    addiu      $sp,$sp,-48
    li         $at,1
    li         $a4,2
    sd         $s0,32($sp)
    move       $s0,$a1
    beq        $a0, $at, .L00001d00
    sd         $ra,40($sp)
    sw         $a4,8($a1)
    lw         $v1,8($a1)
    sw         $v1,16($sp)
    lw         $v0,16($sp)
    move       $a0,$a3
    nor        $v0,$v0,$zero
    andi       $v0,$v0,0x3
    jal        us_delay
    sw         $v0,16($sp)
    li         $a3,3
    sw         $a3,8($s0)
    lw         $a2,8($s0)
    sw         $a2,20($sp)
    lw         $a1,20($sp)
    lw         $a0,-30720($gp)
    nor        $a1,$a1,$zero
    andi       $a1,$a1,0x3
    jal        us_delay
    sw         $a1,20($sp)
    li         $a6,1
    sw         $a6,8($s0)
    lw         $a5,8($s0)
    sw         $a5,24($sp)
    lw         $a4,24($sp)
    lw         $a0,-30720($gp)
    nor        $a4,$a4,$zero
    andi       $a4,$a4,0x3
    jal        us_delay
    sw         $a4,24($sp)
    sw         $zero,8($s0)
    lw         $t0,8($s0)
    sw         $t0,28($sp)
    lw         $a7,28($sp)
    lw         $a0,-30720($gp)
    nor        $a7,$a7,$zero
    andi       $a7,$a7,0x3
    jal        us_delay
    sw         $a7,28($sp)
    ld         $ra,40($sp)
.L00001cf4:
    ld         $s0,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00001d00:
    sw         $a4,16($a1)
    lw         $t2,16($a1)
    sw         $t2,0($sp)
    lw         $t1,0($sp)
    move       $a0,$a3
    nor        $t1,$t1,$zero
    andi       $t1,$t1,0x3
    jal        us_delay
    sw         $t1,0($sp)
    li         $t9,3
    sw         $t9,16($s0)
    lw         $t8,16($s0)
    sw         $t8,4($sp)
    lw         $t3,4($sp)
    lw         $a0,-30720($gp)
    nor        $t3,$t3,$zero
    andi       $t3,$t3,0x3
    jal        us_delay
    sw         $t3,4($sp)
    li         $v1,1
    sw         $v1,16($s0)
    lw         $v0,16($s0)
    sw         $v0,8($sp)
    lw         $at,8($sp)
    lw         $a0,-30720($gp)
    nor        $at,$at,$zero
    andi       $at,$at,0x3
    jal        us_delay
    sw         $at,8($sp)
    sw         $zero,16($s0)
    lw         $a2,16($s0)
    sw         $a2,12($sp)
    lw         $a1,12($sp)
    lw         $a0,-30720($gp)
    nor        $a1,$a1,$zero
    andi       $a1,$a1,0x3
    jal        us_delay
    sw         $a1,12($sp)
    b          .L00001cf4
    ld         $ra,40($sp)

glabel i2_sync_clk
    addiu      $sp,$sp,-32
    sd         $s2,8($sp)
    li         $a4,1
    move       $s2,$a0
    sd         $s1,0($sp)
    move       $s1,$a1
    beq        $a0, $a4, .L00001e34
    sd         $ra,24($sp)
    lw         $v0,8($a1)
.L00001dc4:
    andi       $at,$v0,0x2
    beqz       $at, .L00001e2c
    sd         $s0,16($sp)
    b          .L00001e3c
    move       $s0,$zero
.L00001dd8:
    jal        us_delay
    li         $a0,1
    li         $a4,1
    beq        $s2, $a4, .L00001e24
    nop
    lw         $v0,8($s1)
.L00001df0:
    andi       $v1,$v0,0x2
    addiu      $s0,$s0,1
    andi       $s0,$s0,0xff
    beqz       $v1, .L00001e2c
    slti       $a0,$s0,61
.L00001e04:
    bnez       $a0, .L00001dd8
    move       $v0,$zero
.L00001e0c:
    ld         $ra,24($sp)
    ld         $s0,16($sp)
    ld         $s1,0($sp)
    ld         $s2,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00001e24:
    b          .L00001df0
    lw         $v0,16($s1)
.L00001e2c:
    b          .L00001e0c
    li         $v0,1
.L00001e34:
    b          .L00001dc4
    lw         $v0,16($a1)
.L00001e3c:
    addiu      $s0,$s0,1
    andi       $s0,$s0,0xff
    slti       $a0,$s0,61
    b          .L00001e04
    nop

glabel i2_sendbyte
    addiu      $sp,$sp,-144
    sd         $s6,104($sp)
    sd         $s3,112($sp)
    sd         $s0,88($sp)
    sd         $s1,80($sp)
    move       $s1,$a0
    move       $s0,$a1
    sd         $s5,72($sp)
    move       $s5,$a2
    li         $s3,128
    sd         $s2,120($sp)
    li         $s2,1
    li         $s6,3
    sd         $s4,96($sp)
    li         $s4,2
    b          .L00002278
    sd         $ra,128($sp)
.L00001e94:
    sw         $s4,8($s0)
    lw         $v0,8($s0)
    sw         $v0,20($sp)
    lw         $at,20($sp)
    nor        $at,$at,$zero
    andi       $at,$at,0x3
    jal        us_delay
    sw         $at,20($sp)
    srl        $s3,$s3,0x1
.L00001eb8:
    andi       $s3,$s3,0xff
    beqz       $s3, .L000020b4
    lw         $a0,-30720($gp)
    and        $t8,$s5,$s3
.L00001ec8:
    beqz       $t8, .L00001f64
    nop
    beq        $s1, $s2, .L00001ff4
    nop
    sw         $s4,8($s0)
    lw         $ra,8($s0)
    sw         $ra,8($sp)
    lw         $t9,8($sp)
    nor        $t9,$t9,$zero
    andi       $t9,$t9,0x3
    jal        us_delay
    sw         $t9,8($sp)
    sw         $zero,8($s0)
    lw         $v0,8($s0)
    sw         $v0,12($sp)
    lw         $at,12($sp)
    lw         $a0,-30720($gp)
    nor        $at,$at,$zero
    andi       $at,$at,0x3
    jal        us_delay
    sw         $at,12($sp)
    move       $a0,$s1
.L00001f20:
    jal        i2_sync_clk
    move       $a1,$s0
    beqz       $v0, .L0000216c
    move       $v0,$zero
    lw         $a0,-30720($gp)
    bne        $s1, $s2, .L00001e94
    nop
    sw         $s4,16($s0)
    lw         $a1,16($s0)
    sw         $a1,16($sp)
    lw         $v1,16($sp)
    nor        $v1,$v1,$zero
    andi       $v1,$v1,0x3
    jal        us_delay
    sw         $v1,16($sp)
    b          .L00001eb8
    srl        $s3,$s3,0x1
.L00001f64:
    beq        $s1, $s2, .L00002040
    nop
    sw         $s6,8($s0)
    lw         $a3,8($s0)
    sw         $a3,32($sp)
    lw         $a2,32($sp)
    nor        $a2,$a2,$zero
    andi       $a2,$a2,0x3
    jal        us_delay
    sw         $a2,32($sp)
    sw         $s2,8($s0)
    lw         $a5,8($s0)
    sw         $a5,36($sp)
    lw         $a4,36($sp)
    lw         $a0,-30720($gp)
    nor        $a4,$a4,$zero
    andi       $a4,$a4,0x3
    jal        us_delay
    sw         $a4,36($sp)
.L00001fb0:
    move       $a0,$s1
    jal        i2_sync_clk
    move       $a1,$s0
    beqz       $v0, .L000021ec
    lw         $a0,-30720($gp)
    beq        $s1, $s2, .L0000208c
    nop
    sw         $s6,8($s0)
    lw         $a7,8($s0)
    sw         $a7,44($sp)
    lw         $a6,44($sp)
    nor        $a6,$a6,$zero
    andi       $a6,$a6,0x3
    jal        us_delay
    sw         $a6,44($sp)
    b          .L00001eb8
    srl        $s3,$s3,0x1
.L00001ff4:
    sw         $s4,16($s0)
    lw         $t1,16($s0)
    sw         $t1,0($sp)
    lw         $t0,0($sp)
    nor        $t0,$t0,$zero
    andi       $t0,$t0,0x3
    jal        us_delay
    sw         $t0,0($sp)
    sw         $zero,16($s0)
    lw         $t3,16($s0)
    sw         $t3,4($sp)
    lw         $t2,4($sp)
    lw         $a0,-30720($gp)
    nor        $t2,$t2,$zero
    andi       $t2,$t2,0x3
    jal        us_delay
    sw         $t2,4($sp)
    b          .L00001f20
    move       $a0,$s1
.L00002040:
    sw         $s6,16($s0)
    lw         $t9,16($s0)
    sw         $t9,24($sp)
    lw         $t8,24($sp)
    nor        $t8,$t8,$zero
    andi       $t8,$t8,0x3
    jal        us_delay
    sw         $t8,24($sp)
    sw         $s2,16($s0)
    lw         $v0,16($s0)
    sw         $v0,28($sp)
    lw         $at,28($sp)
    lw         $a0,-30720($gp)
    nor        $at,$at,$zero
    andi       $at,$at,0x3
    jal        us_delay
    sw         $at,28($sp)
    b          .L00001fb0
    nop
.L0000208c:
    sw         $s6,16($s0)
    lw         $a1,16($s0)
    sw         $a1,40($sp)
    lw         $v1,40($sp)
    nor        $v1,$v1,$zero
    andi       $v1,$v1,0x3
    jal        us_delay
    sw         $v1,40($sp)
    b          .L00001eb8
    srl        $s3,$s3,0x1
.L000020b4:
    beq        $s1, $s2, .L000021f4
    lw         $a0,-30720($gp)
    sw         $s4,8($s0)
    lw         $a3,8($s0)
    sw         $a3,56($sp)
    lw         $a2,56($sp)
    nor        $a2,$a2,$zero
    andi       $a2,$a2,0x3
    jal        us_delay
    sw         $a2,56($sp)
    sw         $zero,8($s0)
    lw         $a5,8($s0)
    sw         $a5,60($sp)
    lw         $a4,60($sp)
    lw         $a0,-30720($gp)
    nor        $a4,$a4,$zero
    andi       $a4,$a4,0x3
    jal        us_delay
    sw         $a4,60($sp)
.L00002100:
    move       $a0,$s1
    jal        i2_sync_clk
    move       $a1,$s0
    beqz       $v0, .L00002248
    nop
    beq        $s1, $s2, .L00002240
    nop
    lw         $v0,8($s0)
.L00002120:
    nor        $a6,$v0,$zero
    andi       $a6,$a6,0x1
    beqz       $a6, .L0000219c
    move       $s3,$zero
    b          .L00002284
    addiu      $s3,$s3,1
.L00002138:
    jal        us_delay
    li         $a0,1
    beq        $s1, $s2, .L00002194
    nop
    lw         $v0,8($s0)
.L0000214c:
    nor        $a7,$v0,$zero
    andi       $a7,$a7,0x1
    addiu      $s3,$s3,1
    beqz       $a7, .L0000219c
    slti       $t0,$s3,101
.L00002160:
    bnez       $t0, .L00002138
    nop
    move       $v0,$zero
.L0000216c:
    ld         $s0,88($sp)
    ld         $s1,80($sp)
    ld         $s2,120($sp)
    ld         $s3,112($sp)
    ld         $ra,128($sp)
    ld         $s4,96($sp)
    ld         $s5,72($sp)
    ld         $s6,104($sp)
    jr         $ra
    addiu      $sp,$sp,144
.L00002194:
    b          .L0000214c
    lw         $v0,16($s0)
.L0000219c:
    beq        $s1, $s2, .L00002250
    lw         $a0,-30720($gp)
    sw         $s4,8($s0)
    lw         $t2,8($s0)
    sw         $t2,68($sp)
    lw         $t1,68($sp)
    nor        $t1,$t1,$zero
    andi       $t1,$t1,0x3
    jal        us_delay
    sw         $t1,68($sp)
    lw         $v0,-30688($gp)
.L000021c8:
    lw         $a0,-30684($gp)
    slt        $t3,$a0,$v0
    beqz       $t3, .L000021dc
    nop
    move       $a0,$v0
.L000021dc:
    jal        us_delay
    nop
    b          .L0000216c
    li         $v0,1
.L000021ec:
    b          .L0000216c
    move       $v0,$zero
.L000021f4:
    sw         $s4,16($s0)
    lw         $t9,16($s0)
    sw         $t9,48($sp)
    lw         $t8,48($sp)
    nor        $t8,$t8,$zero
    andi       $t8,$t8,0x3
    jal        us_delay
    sw         $t8,48($sp)
    sw         $zero,16($s0)
    lw         $v0,16($s0)
    sw         $v0,52($sp)
    lw         $at,52($sp)
    lw         $a0,-30720($gp)
    nor        $at,$at,$zero
    andi       $at,$at,0x3
    jal        us_delay
    sw         $at,52($sp)
    b          .L00002100
    nop
.L00002240:
    b          .L00002120
    lw         $v0,16($s0)
.L00002248:
    b          .L0000216c
    move       $v0,$zero
.L00002250:
    sw         $s4,16($s0)
    lw         $a1,16($s0)
    sw         $a1,64($sp)
    lw         $v1,64($sp)
    nor        $v1,$v1,$zero
    andi       $v1,$v1,0x3
    jal        us_delay
    sw         $v1,64($sp)
    b          .L000021c8
    lw         $v0,-30688($gp)
.L00002278:
    lw         $a0,-30720($gp)
    b          .L00001ec8
    and        $t8,$s5,$s3
.L00002284:
    slti       $t0,$s3,101
    b          .L00002160
    nop

glabel i2_wait_for_bus
    lw         $a3,-30720($gp)
    addiu      $sp,$sp,-64
    sd         $ra,32($sp)
    sd         $s0,40($sp)
    sd         $s1,48($sp)
    sd         $s3,8($sp)
    sd         $s4,24($sp)
    li         $s4,1
    move       $s3,$a0
    sd         $s2,16($sp)
    move       $s2,$a1
    beq        $a0, $s4, .L00002398
    sd         $s5,56($sp)
    sw         $zero,8($a1)
    lw         $v0,8($a1)
    sw         $v0,4($sp)
    lw         $at,4($sp)
    move       $a0,$a3
    nor        $at,$at,$zero
    andi       $at,$at,0x3
    jal        us_delay
    sw         $at,4($sp)
    lw         $a0,8($s2)
.L000022ec:
    nor        $v1,$a0,$zero
    andi       $v1,$v1,0x3
    li         $s5,2
    andi       $v1,$v1,0xff
    and        $v1,$s5,$v1
    move       $s0,$zero
    beq        $s5, $v1, .L00002370
    lw         $a1,-30632($gp)
    bgtz       $a1, .L00002350
    nop
    b          .L00002370
    nop
.L0000231c:
    lw         $s1,8($s2)
.L00002320:
    jal        us_delay
    li         $a0,100
    nor        $a0,$s1,$zero
    andi       $a0,$a0,0x3
    andi       $a0,$a0,0xff
    and        $a0,$s5,$a0
    addiu      $s0,$s0,1
    beq        $s5, $a0, .L00002360
    lw         $a1,-30632($gp)
    slt        $a2,$s0,$a1
    beqz       $a2, .L00002360
    nop
.L00002350:
    bne        $s3, $s4, .L0000231c
    nop
    b          .L00002320
    lw         $s1,16($s2)
.L00002360:
    beqz       $s0, .L00002374
    ld         $s3,8($sp)
    jal        us_delay
    li         $a0,100
.L00002370:
    ld         $s3,8($sp)
.L00002374:
    ld         $s2,16($sp)
    ld         $s4,24($sp)
    ld         $ra,32($sp)
    ld         $s0,40($sp)
    li         $v0,1
    ld         $s1,48($sp)
    ld         $s5,56($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00002398:
    sw         $zero,16($a1)
    lw         $a5,16($a1)
    sw         $a5,0($sp)
    lw         $a4,0($sp)
    move       $a0,$a3
    nor        $a4,$a4,$zero
    andi       $a4,$a4,0x3
    jal        us_delay
    sw         $a4,0($sp)
    b          .L000022ec
    lw         $a0,16($s2)

glabel i2_spin_for
    beqz       $a5, .L000023d4
    li         $v0,1
    b          .L000023ec
    lbu        $v0,0($a5)
.L000023d4:
    beq        $a0, $v0, .L000024b8
    nop
    lw         $a5,8($a1)
.L000023e0:
    nor        $v0,$a5,$zero
    andi       $v0,$v0,0x3
    andi       $v0,$v0,0xff
.L000023ec:
    li         $t3,1
    and        $v1,$a2,$v0
    beq        $a3, $v1, .L0000240c
    move       $a5,$zero
    bgtz       $a4, .L00002430
    nop
    b          .L000024c0
    nop
.L0000240c:
    beqz       $a6, .L00002418
    nop
    sb         $v0,0($a6)
.L00002418:
    blez       $a4, .L000024a0
    li         $v0,1
.L00002420:
    jr         $ra
    nop
.L00002428:
    beqz       $t2, .L00002488
    nop
.L00002430:
    beq        $a0, $t3, .L000024a8
    nop
    lw         $t1,8($a1)
.L0000243c:
    addiu      $a5,$a5,1
    nor        $v0,$t1,$zero
    andi       $v0,$v0,0x3
    andi       $a7,$v0,0xff
    and        $a7,$a2,$a7
    beq        $a3, $a7, .L00002488
    slt        $t2,$a5,$a4
    beqz       $t2, .L00002488
    nop
    beq        $a0, $t3, .L000024b0
    nop
    lw         $t1,8($a1)
.L0000246c:
    addiu      $a5,$a5,1
    nor        $v0,$t1,$zero
    andi       $v0,$v0,0x3
    andi       $v1,$v0,0xff
    and        $v1,$a2,$v1
    bne        $a3, $v1, .L00002428
    slt        $t2,$a5,$a4
.L00002488:
    beqz       $a6, .L00002498
    slt        $v1,$a5,$a4
    sb         $v0,0($a6)
    slt        $v1,$a5,$a4
.L00002498:
    bnez       $v1, .L00002420
    li         $v0,1
.L000024a0:
    jr         $ra
    move       $v0,$zero
.L000024a8:
    b          .L0000243c
    lw         $t1,16($a1)
.L000024b0:
    b          .L0000246c
    lw         $t1,16($a1)
.L000024b8:
    b          .L000023e0
    lw         $a5,16($a1)
.L000024c0:
    beqz       $a6, .L000024a0
    nop
    b          .L000024a0
    sb         $v0,0($a6)

glabel i2_wait_for_stop
    lw         $a4,-30628($gp)
    addiu      $sp,$sp,-48
    sd         $a0,8($sp)
    li         $a2,2
    sd         $a1,16($sp)
    li         $a3,2
    move       $a5,$zero
    sd         $a4,24($sp)
    sd         $ra,32($sp)
    jal        i2_spin_for
    addiu      $a6,$sp,0
    beqz       $v0, .L00002554
    lbu        $at,0($sp)
    li         $v0,3
    beq        $at, $v0, .L00002544
    li         $v0,1
    ld         $a0,8($sp)
    li         $a2,3
    ld         $a1,16($sp)
    li         $a3,3
    move       $a5,$zero
    ld         $a4,24($sp)
    jal        i2_spin_for
    move       $a6,$zero
    beqz       $v0, .L0000254c
    li         $v0,1
.L00002538:
    ld         $ra,32($sp)
.L0000253c:
    jr         $ra
    addiu      $sp,$sp,48
.L00002544:
    b          .L0000253c
    ld         $ra,32($sp)
.L0000254c:
    b          .L00002538
    move       $v0,$zero
.L00002554:
    b          .L00002538
    move       $v0,$zero

glabel i2_slave_recvbyte
    addiu      $sp,$sp,-80
    sd         $a5,8($sp)
    sd         $s3,56($sp)
    sd         $ra,64($sp)
    sd         $s6,24($sp)
    sd         $s1,48($sp)
    sd         $s2,16($sp)
    lw         $at,-30712($gp)
    move       $s2,$a0
    move       $s1,$a1
    sd         $s4,32($sp)
    move       $s4,$a2
    move       $s6,$a3
    sd         $s5,40($sp)
    move       $s5,$a4
    beqz       $at, .L000025a4
    sd         $s0,72($sp)
    beqz       $a4, .L000027e8
.L000025a4:
    lw         $s3,-30628($gp)
    b          .L00002878
    move       $s0,$zero
    move       $a0,$s2
.L000025b4:
    move       $a1,$s1
    li         $a2,2
    move       $a3,$zero
    move       $a4,$s3
    move       $a5,$zero
    jal        i2_spin_for
    move       $a6,$zero
    beqz       $v0, .L000027cc
    nop
    beqz       $s0, .L00002654
.L000025dc:
    move       $a0,$s2
.L000025e0:
    move       $a1,$s1
    li         $a2,2
    li         $a3,2
    move       $a4,$s3
    move       $a5,$zero
    jal        i2_spin_for
    addiu      $a6,$sp,0
    beqz       $v0, .L0000276c
    lbu        $v0,0($sp)
    lbu        $v1,0($s4)
    sll        $v1,$v1,0x1
    andi       $v0,$v0,0x1
    or         $v0,$v0,$v1
    beqz       $s0, .L0000264c
    sb         $v0,0($s4)
.L0000261c:
    addiu      $s0,$s0,1
    slti       $v1,$s0,8
    beqz       $v1, .L0000265c
    lw         $a0,-30712($gp)
.L0000262c:
    beqz       $a0, .L000025b4
    move       $a0,$s2
    bnez       $s0, .L000025b4
    move       $a0,$s2
    bnez       $s5, .L000025b4
    move       $a0,$s2
    b          .L000025e0
    move       $a0,$s2
.L0000264c:
    b          .L0000261c
    lw         $s3,-30624($gp)
.L00002654:
    b          .L000025dc
    lw         $s3,-30624($gp)
.L0000265c:
    move       $a0,$s2
    move       $a1,$s1
    move       $a3,$zero
    li         $a2,2
    move       $a5,$zero
    lw         $a4,-30624($gp)
    jal        i2_spin_for
    move       $a6,$zero
    beqz       $v0, .L00002854
    li         $s0,1
    beq        $s2, $s0, .L00002734
    nop
    sw         $s0,8($s1)
    lw         $a1,8($s1)
    nor        $a1,$a1,$zero
    andi       $a1,$a1,0x3
    sb         $a1,0($sp)
.L000026a0:
    move       $a0,$s2
    move       $a1,$s1
    addiu      $a5,$sp,0
    li         $a3,2
    li         $a2,2
    lw         $a4,-30624($gp)
    jal        i2_spin_for
    move       $a6,$zero
    beqz       $v0, .L0000274c
    move       $a0,$s2
    move       $a1,$s1
    move       $a3,$zero
    li         $a2,2
    move       $a5,$zero
    lw         $a4,-30624($gp)
    jal        i2_spin_for
    move       $a6,$zero
    beqz       $v0, .L00002804
    ld         $a2,8($sp)
    beqz       $a2, .L00002788
    lw         $a5,-30712($gp)
.L000026f4:
    beq        $s2, $s0, .L000027bc
    nop
    sw         $zero,8($s1)
    lw         $a3,8($s1)
    sb         $a3,0($sp)
.L00002708:
    li         $v0,1
.L0000270c:
    ld         $s2,16($sp)
    ld         $s3,56($sp)
    ld         $s6,24($sp)
    ld         $s4,32($sp)
    ld         $ra,64($sp)
    ld         $s5,40($sp)
    ld         $s1,48($sp)
    ld         $s0,72($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00002734:
    sw         $s0,16($s1)
    lw         $a4,16($s1)
    nor        $a4,$a4,$zero
    andi       $a4,$a4,0x3
    b          .L000026a0
    sb         $a4,0($sp)
.L0000274c:
    jal        splx
    lw         $a0,-30720($gp)
    beq        $s2, $s0, .L00002824
    nop
    sw         $zero,8($s1)
.L00002760:
    sw         $s0,0($s6)
    b          .L0000270c
    move       $v0,$zero
.L0000276c:
    jal        splx
    lw         $a0,-30720($gp)
    beqz       $s0, .L0000282c
    li         $a0,1
.L0000277c:
    sw         $a0,0($s6)
    b          .L0000270c
    move       $v0,$zero
.L00002788:
    beqz       $a5, .L000026f4
    li         $v0,2
    beq        $s2, $s0, .L0000283c
    nop
    sw         $v0,8($s1)
    lw         $a6,8($s1)
    nor        $a6,$a6,$zero
    andi       $a6,$a6,0x3
    sb         $a6,0($sp)
.L000027ac:
    jal        splx
    lw         $a0,-30720($gp)
    b          .L0000270c
    li         $v0,1
.L000027bc:
    sw         $zero,16($s1)
    lw         $a7,16($s1)
    b          .L00002708
    sb         $a7,0($sp)
.L000027cc:
    jal        splx
    lw         $a0,-30720($gp)
    beqz       $s0, .L00002834
    move       $v0,$zero
    li         $a0,1
.L000027e0:
    b          .L0000270c
    sw         $a0,0($s6)
.L000027e8:
    jal        splprof
    nop
    li         $t0,1
    beq        $s2, $t0, .L00002868
    sw         $v0,-30720($gp)
    b          .L000025a4
    sw         $zero,8($s1)
.L00002804:
    jal        splx
    lw         $a0,-30720($gp)
    beq        $s2, $s0, .L00002870
    nop
    sw         $zero,8($s1)
.L00002818:
    move       $v0,$zero
    b          .L0000270c
    sw         $s0,0($s6)
.L00002824:
    b          .L00002760
    sw         $zero,16($s1)
.L0000282c:
    b          .L0000277c
    li         $a0,2
.L00002834:
    b          .L000027e0
    li         $a0,2
.L0000283c:
    sw         $v0,16($s1)
    lw         $t1,16($s1)
    nor        $t1,$t1,$zero
    andi       $t1,$t1,0x3
    b          .L000027ac
    sb         $t1,0($sp)
.L00002854:
    jal        splx
    lw         $a0,-30720($gp)
    sw         $s0,0($s6)
    b          .L0000270c
    move       $v0,$zero
.L00002868:
    b          .L000025a4
    sw         $zero,16($s1)
.L00002870:
    b          .L00002818
    sw         $zero,16($s1)
.L00002878:
    lw         $a0,-30712($gp)
    b          .L0000262c
    nop

glabel i2_master_recvbyte
    lw         $v0,-30720($gp)
    addiu      $sp,$sp,-128
    sd         $a3,56($sp)
    sd         $ra,104($sp)
    sd         $s2,64($sp)
    sd         $s0,96($sp)
    sd         $s1,88($sp)
    move       $s1,$a0
    sd         $s3,72($sp)
    li         $s3,1
    move       $s0,$a1
    move       $s2,$a2
    sd         $s4,80($sp)
    li         $s4,2
    beq        $a0, $s3, .L00002a9c
    sd         $s5,112($sp)
    sw         $s4,8($a1)
    lw         $v1,8($a1)
    sw         $v1,4($sp)
    lw         $at,4($sp)
    move       $a0,$v0
    nor        $at,$at,$zero
    andi       $at,$at,0x3
    jal        us_delay
    sw         $at,4($sp)
.L000028e8:
    b          .L00002c04
    move       $s5,$zero
.L000028f0:
    lw         $a2,8($s0)
    nor        $a2,$a2,$zero
    andi       $a2,$a2,0x1
    or         $a2,$a1,$a2
    sb         $a2,0($s2)
    sw         $s4,8($s0)
    lw         $a1,8($s0)
    sw         $a1,20($sp)
    lw         $a0,20($sp)
    nor        $a0,$a0,$zero
    andi       $a0,$a0,0x3
    sw         $a0,20($sp)
    jal        us_delay
    move       $a0,$v0
.L00002928:
    addiu      $s5,$s5,1
    sltiu      $a3,$s5,8
    beqz       $a3, .L000029f4
    lw         $v0,-30720($gp)
.L00002938:
    beq        $s1, $s3, .L000029c8
    nop
    sw         $zero,8($s0)
    lw         $a5,8($s0)
    sw         $a5,12($sp)
    lw         $a4,12($sp)
    move       $a0,$v0
    nor        $a4,$a4,$zero
    andi       $a4,$a4,0x3
    jal        us_delay
    sw         $a4,12($sp)
.L00002964:
    move       $a0,$s1
    jal        i2_sync_clk
    move       $a1,$s0
    beqz       $v0, .L00002b3c
    nop
    lbu        $a1,0($s2)
    lw         $v0,-30720($gp)
    bne        $s1, $s3, .L000028f0
    sll        $a1,$a1,0x1
    lw         $a4,16($s0)
    nor        $a4,$a4,$zero
    andi       $a4,$a4,0x1
    or         $a4,$a1,$a4
    sb         $a4,0($s2)
    sw         $s4,16($s0)
    lw         $a3,16($s0)
    sw         $a3,16($sp)
    lw         $a2,16($sp)
    move       $a0,$v0
    nor        $a2,$a2,$zero
    andi       $a2,$a2,0x3
    jal        us_delay
    sw         $a2,16($sp)
    b          .L00002928
    nop
.L000029c8:
    sw         $zero,16($s0)
    lw         $a6,16($s0)
    sw         $a6,8($sp)
    lw         $a5,8($sp)
    move       $a0,$v0
    nor        $a5,$a5,$zero
    andi       $a5,$a5,0x3
    jal        us_delay
    sw         $a5,8($sp)
    b          .L00002964
    nop
.L000029f4:
    ld         $a7,56($sp)
    beqz       $a7, .L00002ac8
    lw         $v0,-30720($gp)
    beq        $s1, $s3, .L00002b44
    nop
    sw         $s3,8($s0)
    lw         $t1,8($s0)
    sw         $t1,28($sp)
    lw         $t0,28($sp)
    move       $a0,$v0
    nor        $t0,$t0,$zero
    andi       $t0,$t0,0x3
    jal        us_delay
    sw         $t0,28($sp)
    move       $a0,$s1
.L00002a30:
    jal        i2_sync_clk
    move       $a1,$s0
    beqz       $v0, .L00002bc8
    li         $a1,3
    beq        $s1, $s3, .L00002b70
    lw         $v0,-30720($gp)
    sw         $a1,8($s0)
    lw         $t3,8($s0)
    sw         $t3,36($sp)
    lw         $t2,36($sp)
    move       $a0,$v0
    nor        $t2,$t2,$zero
    andi       $t2,$t2,0x3
    jal        us_delay
    sw         $t2,36($sp)
.L00002a6c:
    jal        us_delay
    lw         $a0,-30688($gp)
    li         $v0,1
.L00002a78:
    ld         $s2,64($sp)
    ld         $s3,72($sp)
    ld         $s4,80($sp)
    ld         $ra,104($sp)
    ld         $s5,112($sp)
    ld         $s1,88($sp)
    ld         $s0,96($sp)
    jr         $ra
    addiu      $sp,$sp,128
.L00002a9c:
    sw         $s4,16($a1)
    lw         $t9,16($a1)
    sw         $t9,0($sp)
    lw         $t8,0($sp)
    move       $a0,$v0
    nor        $t8,$t8,$zero
    andi       $t8,$t8,0x3
    jal        us_delay
    sw         $t8,0($sp)
    b          .L000028e8
    nop
.L00002ac8:
    beq        $s1, $s3, .L00002bd0
    nop
    sw         $zero,8($s0)
    lw         $at,8($s0)
    sw         $at,44($sp)
    lw         $ra,44($sp)
    nor        $ra,$ra,$zero
    andi       $ra,$ra,0x3
    sw         $ra,44($sp)
    jal        us_delay
    move       $a0,$v0
    move       $a0,$s1
.L00002af8:
    jal        i2_sync_clk
    move       $a1,$s0
    beqz       $v0, .L00002bfc
    nop
    bne        $s1, $s3, .L00002b9c
    lw         $v0,-30720($gp)
    sw         $s4,16($s0)
    lw         $a0,16($s0)
    sw         $a0,48($sp)
    lw         $v1,48($sp)
    move       $a0,$v0
    nor        $v1,$v1,$zero
    andi       $v1,$v1,0x3
    jal        us_delay
    sw         $v1,48($sp)
    b          .L00002a6c
    nop
.L00002b3c:
    b          .L00002a78
    move       $v0,$zero
.L00002b44:
    sw         $s3,16($s0)
    lw         $a2,16($s0)
    sw         $a2,24($sp)
    lw         $a1,24($sp)
    move       $a0,$v0
    nor        $a1,$a1,$zero
    andi       $a1,$a1,0x3
    jal        us_delay
    sw         $a1,24($sp)
    b          .L00002a30
    move       $a0,$s1
.L00002b70:
    sw         $a1,16($s0)
    lw         $a4,16($s0)
    sw         $a4,32($sp)
    lw         $a3,32($sp)
    move       $a0,$v0
    nor        $a3,$a3,$zero
    andi       $a3,$a3,0x3
    jal        us_delay
    sw         $a3,32($sp)
    b          .L00002a6c
    nop
.L00002b9c:
    sw         $s4,8($s0)
    lw         $a6,8($s0)
    sw         $a6,52($sp)
    lw         $a5,52($sp)
    move       $a0,$v0
    nor        $a5,$a5,$zero
    andi       $a5,$a5,0x3
    jal        us_delay
    sw         $a5,52($sp)
    b          .L00002a6c
    nop
.L00002bc8:
    b          .L00002a78
    move       $v0,$zero
.L00002bd0:
    sw         $zero,16($s0)
    lw         $t0,16($s0)
    sw         $t0,40($sp)
    lw         $a7,40($sp)
    move       $a0,$v0
    nor        $a7,$a7,$zero
    andi       $a7,$a7,0x3
    jal        us_delay
    sw         $a7,40($sp)
    b          .L00002af8
    move       $a0,$s1
.L00002bfc:
    b          .L00002a78
    move       $v0,$zero
.L00002c04:
    lw         $v0,-30720($gp)
    b          .L00002938
    nop

glabel i2cfp_DMI2_BkltWrapper
    addiu      $sp,$sp,-48
    li         $a2,8
    sd         $a0,24($sp)
    move       $a0,$a1
    sd         $ra,32($sp)
    jal        copyin
    addiu      $a1,$sp,0
    beqz       $v0, .L00002c44
    li         $a2,1
    li         $v0,-14
.L00002c38:
    ld         $ra,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00002c44:
    addiu      $a1,$sp,8
    jal        copyin
    lw         $a0,4($sp)
    beqz       $v0, .L00002c60
    ld         $a0,24($sp)
    b          .L00002c38
    li         $v0,-14
.L00002c60:
    lbu        $a3,2($sp)
    lbu        $a2,1($sp)
    addiu      $a4,$sp,8
    jal        i2cfp_DMI2_BkltFuncs
    lbu        $a1,0($sp)
    sd         $v0,16($sp)
    li         $a2,1
    lw         $a1,4($sp)
    jal        copyout
    addiu      $a0,$sp,8
    beqz       $v0, .L00002c98
    nop
    b          .L00002c38
    li         $v0,-14
.L00002c98:
    b          .L00002c38
    ld         $v0,16($sp)

glabel i2cfp_DMI2_BkltFuncs
    addiu      $sp,$sp,-80
    sd         $a2,8($sp)
    sd         $a3,16($sp)
    sd         $ra,56($sp)
    sd         $s4,24($sp)
    sd         $s1,40($sp)
    move       $s1,$a0
    sd         $s0,32($sp)
    slti       $at,$a1,129
    move       $s0,$a1
    move       $s4,$a4
    sd         $s3,48($sp)
    li         $s3,2
    bnez       $at, .L00002ce0
    sd         $s2,64($sp)
    li         $s3,3
.L00002ce0:
    li         $a0,160
    li         $v1,144
    li         $v0,176
    li         $s2,2
    beq        $s0, $v1, .L00002de4
    li         $a1,192
    beq        $s0, $v0, .L00002de4
    nop
    beq        $s0, $a0, .L00002df4
    nop
    beq        $s0, $a1, .L00002df4
    nop
.L00002d10:
    li         $a2,80
    move       $a1,$s1
    jal        i2_start_addr
    li         $a0,1
    beqz       $v0, .L00002dec
    ld         $a3,8($sp)
    ld         $a2,16($sp)
    move       $a1,$s1
    or         $a3,$s0,$a3
    li         $a0,1
    or         $a2,$a2,$a3
    jal        i2_sendbyte
    andi       $a2,$a2,0xff
    beqz       $v0, .L00002dfc
    li         $a0,2
    beq        $s3, $a0, .L00002e04
    li         $a0,1
    li         $a4,1
    beq        $s2, $a4, .L00002d90
    li         $a3,1
    lbu        $a3,0($s4)
    li         $a0,1
    li         $a2,63
    move       $a1,$s1
    subu       $a2,$a2,$a3
    andi       $a2,$a2,0xff
    jal        i2_sendbyte
    sb         $a2,0($sp)
    bnez       $v0, .L00002db8
    li         $a0,1
    b          .L00002dc4
    move       $v0,$zero
.L00002d90:
    addiu      $a2,$sp,0
    move       $a1,$s1
    jal        i2_master_recvbyte
    li         $a0,1
    beqz       $v0, .L00002e14
    lbu        $a5,0($sp)
    li         $a4,63
    subu       $a4,$a4,$a5
    sb         $a4,0($s4)
    li         $a0,1
.L00002db8:
    jal        i2_stop
    move       $a1,$s1
    li         $v0,1
.L00002dc4:
    ld         $s3,48($sp)
    ld         $s4,24($sp)
    ld         $ra,56($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    ld         $s2,64($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00002de4:
    b          .L00002d10
    li         $s2,1
.L00002dec:
    b          .L00002dc4
    move       $v0,$zero
.L00002df4:
    b          .L00002d10
    move       $s2,$zero
.L00002dfc:
    b          .L00002dc4
    move       $v0,$zero
.L00002e04:
    jal        i2_stop
    move       $a1,$s1
    b          .L00002dc4
    li         $v0,1
.L00002e14:
    b          .L00002dc4
    move       $v0,$zero

glabel i2cfp_DMI2_SensorFuncs
    addiu      $sp,$sp,-320
    li         $a2,12
    sd         $s0,280($sp)
    move       $s0,$a0
    move       $a0,$a1
    sd         $a1,272($sp)
    sd         $ra,288($sp)
    jal        copyin
    addiu      $a1,$sp,0
    sd         $s2,296($sp)
    beqz       $v0, .L00002e68
    sd         $s1,304($sp)
    li         $v0,-14
.L00002e50:
    ld         $ra,288($sp)
    ld         $s2,296($sp)
    ld         $s0,280($sp)
    ld         $s1,304($sp)
    jr         $ra
    addiu      $sp,$sp,320
.L00002e68:
    lbu        $v0,0($sp)
    beqz       $v0, .L00002ecc
    move       $s1,$v0
    li         $at,2
    beq        $v0, $at, .L00002ecc
    li         $v1,1
    beq        $v0, $v1, .L00002e94
    li         $s2,1
    li         $a0,3
    bne        $v0, $a0, .L000030d4
    li         $s2,1
.L00002e94:
    move       $a1,$s0
    li         $a0,1
    ori        $a2,$v0,0x30
    jal        i2_start_addr
    andi       $a2,$a2,0xff
    beqz       $v0, .L00002f8c
    li         $a2,256
    addiu      $a1,$sp,16
    jal        copyin
    lw         $a0,8($sp)
    beqz       $v0, .L00002ed4
    nop
    b          .L00002e50
    li         $v0,-14
.L00002ecc:
    b          .L00002e94
    move       $s2,$zero
.L00002ed4:
    beqz       $s2, .L00002f94
    li         $s2,3
    beq        $s2, $s1, .L00003028
    li         $a3,1
    addiu      $a2,$sp,16
    move       $a1,$s0
    jal        i2_master_recvbyte
    li         $a0,1
    beqz       $v0, .L00003078
    nop
.L00002efc:
    beq        $s2, $s1, .L00003004
    li         $s1,1
    li         $a3,4
    sb         $a3,1($sp)
.L00002f0c:
    addiu      $s2,$sp,16
    addu       $s2,$s1,$s2
.L00002f14:
    li         $a3,1
    move       $a2,$s2
    move       $a1,$s0
    jal        i2_master_recvbyte
    li         $a0,1
    beqz       $v0, .L0000304c
    lbu        $t8,1($sp)
    addiu      $s1,$s1,1
    addiu      $t8,$t8,-1
    slt        $t8,$s1,$t8
    addiu      $s2,$s2,1
    bnez       $t8, .L00002f14
.L00002f44:
    move       $a1,$s0
    li         $a0,1
    move       $a3,$zero
    addiu      $a2,$sp,16
    jal        i2_master_recvbyte
    addu       $a2,$s1,$a2
    beqz       $v0, .L00003020
    li         $a0,1
    jal        i2_stop
    move       $a1,$s0
    li         $a2,256
    lw         $a1,8($sp)
    jal        copyout
    addiu      $a0,$sp,16
    beqz       $v0, .L0000305c
    li         $a2,12
    b          .L00002e50
    li         $v0,-14
.L00002f8c:
    b          .L00002e50
    move       $v0,$zero
.L00002f94:
    beqz       $s1, .L00003080
    move       $a1,$s0
    lbu        $a2,1($sp)
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L000030b8
    nop
.L00002fb0:
    beqz       $s1, .L000030a0
    lbu        $a3,1($sp)
    blez       $a3, .L00002ff0
    addiu      $s2,$sp,16
    move       $s1,$zero
    move       $a1,$s0
.L00002fc8:
    lbu        $a2,0($s2)
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L000030a8
    lbu        $a4,1($sp)
    addiu      $s1,$s1,1
    slt        $a4,$s1,$a4
    addiu      $s2,$s2,1
    bnez       $a4, .L00002fc8
    move       $a1,$s0
.L00002ff0:
    li         $a0,1
    jal        i2_stop
    move       $a1,$s0
    b          .L00002e50
    li         $v0,1
.L00003004:
    lbu        $v0,1($sp)
    beqz       $v0, .L000030c0
    slti       $a5,$v0,2
    bnez       $a5, .L00003054
    nop
    b          .L00002f0c
    move       $s1,$zero
.L00003020:
    b          .L00002e50
    move       $v0,$zero
.L00003028:
    li         $a3,1
    addiu      $a2,$sp,1
    move       $a1,$s0
    jal        i2_master_recvbyte
    li         $a0,1
    bnez       $v0, .L00002efc
    nop
    b          .L00002e50
    move       $v0,$zero
.L0000304c:
    b          .L00002e50
    move       $v0,$zero
.L00003054:
    b          .L00002f44
    move       $s1,$zero
.L0000305c:
    ld         $a1,272($sp)
    jal        copyout
    addiu      $a0,$sp,0
    beqz       $v0, .L000030b0
    nop
    b          .L00002e50
    li         $v0,-14
.L00003078:
    b          .L00002e50
    move       $v0,$zero
.L00003080:
    move       $a1,$s0
    lbu        $a2,16($sp)
    jal        i2_sendbyte
    li         $a0,1
    bnez       $v0, .L00002fb0
    nop
    b          .L00002e50
    move       $v0,$zero
.L000030a0:
    b          .L00002ff0
    sb         $zero,1($sp)
.L000030a8:
    b          .L00002e50
    move       $v0,$zero
.L000030b0:
    b          .L00002e50
    li         $v0,1
.L000030b8:
    b          .L00002e50
    move       $v0,$zero
.L000030c0:
    li         $a0,1
    jal        i2_stop
    move       $a1,$s0
    b          .L00002e50
    li         $v0,1
.L000030d4:
    li         $a0,4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,88
    b          .L00002e50
    move       $v0,$zero

glabel i2cfp_DMI2_EnableSequel
    lbu        $at,46($a1)
    addiu      $sp,$sp,-32
    li         $v0,132
    sd         $a0,8($sp)
    move       $a0,$zero
    beq        $at, $v0, .L00003114
    sd         $ra,16($sp)
.L00003108:
    move       $v0,$a0
    jr         $ra
    addiu      $sp,$sp,32
.L00003114:
    li         $a1,112
    ld         $a0,8($sp)
    jal        i2cfp_PortRead
    addiu      $a2,$sp,0
    lbu        $a2,0($sp)
    ld         $a0,8($sp)
    li         $a1,112
    andi       $a2,$a2,0xf7
    andi       $a2,$a2,0xff
    jal        i2cfp_PortWrite
    sb         $a2,0($sp)
    ld         $ra,16($sp)
    b          .L00003108
    move       $a0,$v0

glabel i2cfp_DMI2_DisableSequel
    lbu        $at,46($a1)
    addiu      $sp,$sp,-32
    li         $v0,132
    sd         $a0,8($sp)
    move       $a0,$zero
    beq        $at, $v0, .L00003174
    sd         $ra,16($sp)
.L00003168:
    move       $v0,$a0
    jr         $ra
    addiu      $sp,$sp,32
.L00003174:
    li         $a1,112
    ld         $a0,8($sp)
    jal        i2cfp_PortRead
    addiu      $a2,$sp,0
    lbu        $a2,0($sp)
    andi       $a2,$a2,0xf7
    ld         $a0,8($sp)
    li         $a1,112
    ori        $a2,$a2,0x8
    andi       $a2,$a2,0xff
    jal        i2cfp_PortWrite
    sb         $a2,0($sp)
    ld         $ra,16($sp)
    b          .L00003168
    move       $a0,$v0

glabel i2cfp_PanelOn
    addiu      $sp,$sp,-112
    sd         $s2,72($sp)
    sd         $s3,80($sp)
    sd         $ra,88($sp)
    lbu        $a5,46($a1)
    sd         $s4,96($sp)
    sd         $s0,64($sp)
    move       $s0,$a2
    beqz       $a5, .L0000336c
    sd         $s1,104($sp)
    lui        $a2,0x0
    addiu      $a2,$a2,0
    lh         $at,58($a2)
    li         $v0,1
    beq        $at, $v0, .L00003364
    li         $a3,132
    beq        $a5, $a3, .L00003374
    sh         $v0,58($a2)
    sw         $zero,-30708($gp)
    li         $a4,131
    sw         $v0,-30712($gp)
    beq        $a5, $a4, .L0000332c
    sw         $zero,-30716($gp)
    li         $a6,130
    beq        $a5, $a6, .L00003348
    lhu        $s3,62($sp)
    lhu        $s2,60($sp)
    lhu        $s1,58($sp)
    lhu        $s4,56($sp)
.L00003224:
    jal        crime_setvideotiming
    addiu      $a2,$sp,8
    li         $a2,231
    li         $a1,112
    move       $a0,$s0
    addiu      $a7,$s2,1
    andi       $t2,$s4,0xfff
    andi       $t3,$s1,0xfff
    lui        $t0,0x1
    sll        $t3,$t3,0xc
    addu       $t0,$s0,$t0
    addiu      $t1,$s3,1
    or         $t2,$t2,$t3
    sw         $t2,48($t0)
    andi       $a7,$a7,0xfff
    andi       $t1,$t1,0xfff
    sw         $t1,40($t0)
    ori        $a7,$a7,0x1000
    jal        i2cfp_PortWrite
    sw         $a7,44($t0)
    beqz       $v0, .L0000330c
    move       $v0,$zero
    move       $a0,$s0
    jal        i2cfp_AudioVolLeft
    lw         $a1,-30704($gp)
    beqz       $v0, .L0000330c
    move       $v0,$zero
    move       $a0,$s0
    jal        i2cfp_AudioVolRight
    lw         $a1,-30700($gp)
    beqz       $v0, .L0000330c
    move       $v0,$zero
    move       $a0,$s0
    jal        i2cfp_AudioBass
    lw         $a1,-30696($gp)
    beqz       $v0, .L0000330c
    move       $v0,$zero
    move       $a0,$s0
    jal        i2cfp_AudioTreble
    lw         $a1,-30692($gp)
    beqz       $v0, .L0000330c
    move       $v0,$zero
    move       $a0,$s0
    jal        i2cfp_AudioSwitch
    li         $a1,206
    beqz       $v0, .L0000330c
    move       $v0,$zero
    move       $a0,$s0
    jal        i2cfp_BlUp
    li         $a1,100
    beqz       $v0, .L0000330c
    move       $v0,$zero
    move       $a0,$s0
    jal        i2cfp_SetBit
    move       $a1,$zero
    beqz       $v0, .L0000330c
    move       $v0,$zero
    li         $v0,1
.L0000330c:
    ld         $s2,72($sp)
.L00003310:
    ld         $s3,80($sp)
    ld         $ra,88($sp)
    ld         $s4,96($sp)
    ld         $s0,64($sp)
    ld         $s1,104($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L0000332c:
    li         $s4,1065
    li         $s3,1280
    li         $t8,9
    li         $s2,1024
    sw         $t8,8($sp)
    b          .L00003224
    move       $s1,$s2
.L00003348:
    li         $t9,4
    li         $s4,806
    li         $s1,771
    li         $s2,768
    sw         $t9,8($sp)
    b          .L00003224
    li         $s3,1024
.L00003364:
    b          .L00003310
    ld         $s2,72($sp)
.L0000336c:
    b          .L0000330c
    move       $v0,$zero
.L00003374:
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortRead
    addiu      $a2,$sp,0
    lbu        $a2,0($sp)
    move       $a0,$s0
    andi       $a2,$a2,0xfb
    li         $a1,112
    ori        $a2,$a2,0x4
    andi       $a2,$a2,0xff
    jal        i2cfp_PortWrite
    sb         $a2,0($sp)
    beqz       $v0, .L000034a0
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortRead
    addiu      $a2,$sp,0
    lbu        $a3,0($sp)
    li         $s2,-252
    and        $a3,$s2,$a3
    li         $s1,4
    andi       $a3,$a3,0xff
    beq        $s1, $a3, .L0000342c
    sb         $a3,0($sp)
.L000033d4:
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortRead
    addiu      $a2,$sp,0
    lbu        $a2,0($sp)
    move       $a0,$s0
    andi       $a2,$a2,0xfb
    li         $a1,112
    ori        $a2,$a2,0x4
    andi       $a2,$a2,0xff
    jal        i2cfp_PortWrite
    sb         $a2,0($sp)
    beqz       $v0, .L00003498
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortRead
    addiu      $a2,$sp,0
    lbu        $a3,0($sp)
    and        $a3,$s2,$a3
    andi       $a3,$a3,0xff
    bne        $s1, $a3, .L000033d4
    sb         $a3,0($sp)
.L0000342c:
    move       $a0,$s0
    li         $a1,128
    move       $a2,$zero
    li         $a3,1
    jal        i2cfp_DMI2_BkltFuncs
    move       $a4,$zero
    beqz       $v0, .L000034a8
    move       $a0,$s0
    li         $a1,16
    move       $a2,$zero
    move       $a3,$zero
    jal        i2cfp_DMI2_BkltFuncs
    move       $a4,$zero
    beqz       $v0, .L000034b0
    lui        $a0,0x3
    jal        us_delay
    ori        $a0,$a0,0xd40
    move       $a0,$s0
    li         $a3,1
    move       $a2,$zero
    li         $a1,16
    jal        i2cfp_DMI2_BkltFuncs
    move       $a4,$zero
    beqz       $v0, .L000034b8
    nop
    b          .L0000330c
    li         $v0,1
.L00003498:
    b          .L0000330c
    move       $v0,$zero
.L000034a0:
    b          .L0000330c
    move       $v0,$zero
.L000034a8:
    b          .L0000330c
    move       $v0,$zero
.L000034b0:
    b          .L0000330c
    move       $v0,$zero
.L000034b8:
    b          .L0000330c
    move       $v0,$zero

glabel i2cfp_PanelOff
    lui        $a6,0x0
    addiu      $a6,$a6,0
    lw         $a5,8($a6)
    addiu      $sp,$sp,-32
    lbu        $a5,46($a5)
    sd         $ra,16($sp)
    li         $a4,132
    move       $a3,$zero
    sd         $s0,8($sp)
    move       $s0,$a0
    beqz       $a5, .L00003510
    lh         $v0,58($a6)
    beqz       $v0, .L00003554
    li         $a3,1
    beq        $a5, $a4, .L00003524
    sh         $zero,58($a6)
    li         $a1,112
    jal        i2cfp_PortWrite
    li         $a2,255
    move       $a3,$v0
.L00003510:
    ld         $ra,16($sp)
.L00003514:
    move       $v0,$a3
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00003524:
    li         $a1,112
    jal        i2cfp_PortRead
    addiu      $a2,$sp,0
    lbu        $a2,0($sp)
    move       $a0,$s0
    li         $a1,112
    andi       $a2,$a2,0xfb
    andi       $a2,$a2,0xff
    jal        i2cfp_PortWrite
    sb         $a2,0($sp)
    b          .L00003510
    move       $a3,$v0
.L00003554:
    b          .L00003514
    ld         $ra,16($sp)

glabel i2cfp_BlUp
    addiu      $sp,$sp,-80
    sd         $s3,24($sp)
    sd         $ra,32($sp)
    sd         $s4,40($sp)
    sd         $s1,48($sp)
    lw         $at,-30708($gp)
    sd         $s0,8($sp)
    move       $v0,$zero
    move       $s0,$a0
    sd         $s6,0($sp)
    addiu      $s6,$a1,-1
    beqz       $at, .L00003594
    sd         $s5,56($sp)
    li         $v0,8
.L00003594:
    sd         $s2,16($sp)
    li         $v1,-1
    sd         $s7,64($sp)
    ori        $s7,$v0,0xe4
    beq        $s6, $v1, .L0000366c
    sd         $s8,72($sp)
    ori        $s2,$v0,0xe6
    andi       $s7,$s7,0xff
    ori        $s8,$v0,0xe7
    andi       $s2,$s2,0xff
    andi       $s8,$s8,0xff
    move       $s1,$zero
.L000035c4:
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortWrite
    move       $a2,$s2
    move       $s3,$v0
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortWrite
    move       $a2,$s7
    move       $s4,$v0
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortWrite
    move       $a2,$s2
    move       $s5,$v0
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortWrite
    move       $a2,$s8
    beqz       $s3, .L00003630
    nop
    beqz       $s4, .L00003630
    nop
    beqz       $s5, .L00003630
    nop
    bnez       $v0, .L00003640
    sltiu      $at,$s1,10
.L00003630:
    addiu      $s1,$s1,1
    sltiu      $ra,$s1,10
    bnez       $ra, .L000035c4
    sltiu      $at,$s1,10
.L00003640:
    li         $a1,-1
    lw         $v0,-30716($gp)
    beqz       $at, .L000036a0
    addiu      $s6,$s6,-1
    addiu      $a0,$v0,1
    slti       $v1,$v0,100
    beqz       $v1, .L00003664
    nop
    sw         $a0,-30716($gp)
.L00003664:
    bne        $s6, $a1, .L000035c4
    move       $s1,$zero
.L0000366c:
    li         $v0,1
.L00003670:
    ld         $s2,16($sp)
    ld         $s3,24($sp)
    ld         $s6,0($sp)
    ld         $s4,40($sp)
    ld         $s0,8($sp)
    ld         $s1,48($sp)
    ld         $ra,32($sp)
    ld         $s5,56($sp)
    ld         $s7,64($sp)
    ld         $s8,72($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L000036a0:
    b          .L00003670
    move       $v0,$zero

glabel i2cfp_BlDown
    addiu      $sp,$sp,-96
    sd         $s3,32($sp)
    sd         $ra,40($sp)
    sd         $s4,48($sp)
    sd         $s1,56($sp)
    lw         $at,-30708($gp)
    sd         $s0,8($sp)
    move       $v0,$zero
    move       $s0,$a0
    sd         $s6,0($sp)
    addiu      $s6,$a1,-1
    beqz       $at, .L000036e0
    sd         $s5,64($sp)
    li         $v0,8
.L000036e0:
    sd         $s7,72($sp)
    li         $v1,-1
    ori        $s7,$v0,0xe0
    sd         $s8,80($sp)
    ori        $a0,$v0,0xe7
    sd         $s2,24($sp)
    beq        $s6, $v1, .L000037d4
    andi       $ra,$a0,0xff
    ori        $s8,$v0,0xe3
    andi       $s7,$s7,0xff
    ori        $s2,$v0,0xe2
    sd         $ra,16($sp)
    andi       $s8,$s8,0xff
    andi       $s2,$s2,0xff
    move       $s1,$zero
.L0000371c:
    move       $a0,$s0
.L00003720:
    li         $a1,112
    jal        i2cfp_PortWrite
    move       $a2,$s2
    move       $s3,$v0
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortWrite
    move       $a2,$s7
    move       $s4,$v0
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortWrite
    move       $a2,$s2
    move       $s5,$v0
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortWrite
    move       $a2,$s8
    move       $a0,$s0
    li         $a1,112
    jal        i2cfp_PortWrite
    ld         $a2,16($sp)
    beqz       $s3, .L00003798
    nop
    beqz       $s4, .L00003798
    nop
    beqz       $s5, .L00003798
    nop
    bnez       $v0, .L000037ac
    sltiu      $t9,$s1,10
.L00003798:
    addiu      $s1,$s1,1
    sltiu      $t8,$s1,10
    bnez       $t8, .L00003720
    move       $a0,$s0
    sltiu      $t9,$s1,10
.L000037ac:
    li         $at,-1
    lw         $v0,-30716($gp)
    beqz       $t9, .L00003808
    addiu      $s6,$s6,-1
    addiu      $ra,$v0,-1
    blez       $v0, .L000037cc
    nop
    sw         $ra,-30716($gp)
.L000037cc:
    bne        $s6, $at, .L0000371c
    move       $s1,$zero
.L000037d4:
    li         $v0,1
.L000037d8:
    ld         $s2,24($sp)
    ld         $s3,32($sp)
    ld         $s6,0($sp)
    ld         $s4,48($sp)
    ld         $s0,8($sp)
    ld         $s1,56($sp)
    ld         $ra,40($sp)
    ld         $s5,64($sp)
    ld         $s7,72($sp)
    ld         $s8,80($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L00003808:
    b          .L000037d8
    move       $v0,$zero

glabel i2cfp_DMI2_KernelEDID
    addiu      $sp,$sp,-80
    sd         $s3,32($sp)
    lui        $s3,0x0
    sd         $s4,24($sp)
    addiu      $s3,$s3,0
    lw         $s3,12($s3)
    sd         $s0,8($sp)
    move       $s0,$a0
    move       $s4,$a1
    sd         $s7,16($sp)
    move       $s7,$a2
    beqz       $s3, .L00003850
    sd         $ra,48($sp)
    li         $a1,25
    jal        mutex_lock
    addiu      $a0,$s3,468
.L00003850:
    addiu      $a0,$s4,364
    sd         $a0,0($sp)
    sd         $s5,64($sp)
    sd         $s1,56($sp)
    li         $a1,128
    jal        bzero
    sd         $s2,40($sp)
    move       $s1,$zero
.L00003870:
    addiu      $s1,$s1,1
.L00003874:
    slti       $t8,$s1,3
    move       $s2,$zero
    beqz       $t8, .L000038f8
    move       $s5,$zero
    li         $a0,1
    jal        i2_start
    move       $a1,$s0
    li         $a2,160
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003934
    nop
    li         $a0,1
.L000038ac:
    move       $a1,$s0
    jal        i2_sendbyte
    move       $a2,$zero
    beqz       $v0, .L00003910
    li         $a0,1
    jal        i2_start
    move       $a1,$s0
    li         $a2,161
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003944
    nop
    move       $s1,$zero
    ld         $s2,0($sp)
    b          .L0000397c
    li         $s5,127
.L000038f0:
    jal        crime_i2cfpFixupAfterErr
    move       $a0,$s0
.L000038f8:
    beqz       $s3, .L00003908
    nop
    jal        mutex_unlock
    addiu      $a0,$s3,468
.L00003908:
    b          .L000039e4
    move       $v0,$zero
.L00003910:
    jal        crime_i2cfpFixupAfterErr
    move       $a0,$s0
    li         $s2,1
.L0000391c:
    bnez       $s2, .L00003870
    nop
    beqz       $s5, .L000038ac
    li         $a0,1
    b          .L00003874
    addiu      $s1,$s1,1
.L00003934:
    jal        crime_i2cfpFixupAfterErr
    move       $a0,$s0
    b          .L00003874
    addiu      $s1,$s1,1
.L00003944:
    jal        crime_i2cfpFixupAfterErr
    move       $a0,$s0
    b          .L0000391c
    li         $s5,1
.L00003954:
    li         $a0,1
    move       $a1,$s0
    jal        i2_master_recvbyte
    move       $a2,$s2
    beqz       $v0, .L000038f0
    addiu      $s1,$s1,1
    sltiu      $t9,$s1,128
    addiu      $s2,$s2,1
    beqz       $t9, .L00003990
    li         $a0,1
.L0000397c:
    bne        $s5, $s1, .L00003954
    li         $a3,1
    move       $a3,$zero
    b          .L00003954
    nop
.L00003990:
    ld         $s1,0($sp)
    jal        i2_stop
    move       $a1,$s0
    jal        crime_EdidCksum
    move       $a0,$s1
    lui        $a0,0x0
    sll        $a1,$s7,0x3
    addiu      $a0,$a0,0
    andi       $ra,$v0,0xffff
    addu       $a0,$a0,$a1
    li         $a1,2
    sh         $a1,48($a0)
    bnez       $ra, .L000039d0
    sh         $v0,54($a0)
    sh         $a1,50($a0)
    sh         $a1,492($s4)
.L000039d0:
    beqz       $s3, .L000039e4
    li         $v0,1
    jal        mutex_unlock
    addiu      $a0,$s3,468
    li         $v0,1
.L000039e4:
    ld         $s5,64($sp)
    ld         $s1,56($sp)
    ld         $s2,40($sp)
    ld         $s0,8($sp)
    ld         $ra,48($sp)
    ld         $s3,32($sp)
    ld         $s4,24($sp)
    ld         $s7,16($sp)
    jr         $ra
    addiu      $sp,$sp,80

glabel i2cfp_DMI2_EDIDFuncs
    addiu      $sp,$sp,-208
    sd         $ra,152($sp)
    sd         $s0,160($sp)
    move       $s0,$a0
    move       $a0,$a2
    li         $a2,12
    sd         $s3,176($sp)
    lui        $s3,0x0
    sd         $s5,168($sp)
    move       $s5,$a1
    addiu      $s3,$s3,0
    addiu      $a1,$sp,0
    jal        copyin
    lw         $s3,12($s3)
    sd         $s1,200($sp)
    sd         $s4,192($sp)
    beqz       $v0, .L00003a7c
    sd         $s2,184($sp)
    li         $v0,-14
.L00003a58:
    ld         $s1,200($sp)
    ld         $s4,192($sp)
    ld         $s2,184($sp)
    ld         $ra,152($sp)
    ld         $s0,160($sp)
    ld         $s3,176($sp)
    ld         $s5,168($sp)
    jr         $ra
    addiu      $sp,$sp,208
.L00003a7c:
    lbu        $t8,0($sp)
    beqz       $t8, .L00003ba4
    li         $a2,128
    bnez       $s3, .L00003b44
    lbu        $t9,1($sp)
.L00003a90:
    beqz       $t9, .L00003b7c
    addiu      $at,$s5,492
.L00003a98:
    li         $a1,128
    jal        bzero
    addiu      $a0,$sp,16
    move       $s1,$zero
.L00003aa8:
    addiu      $s1,$s1,1
.L00003aac:
    slti       $ra,$s1,3
    move       $s2,$zero
    beqz       $ra, .L00003b2c
    move       $s4,$zero
    li         $a0,1
    jal        i2_start
    move       $a1,$s0
    li         $a2,160
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003b84
    nop
    move       $a1,$s0
.L00003ae4:
    lbu        $a2,1($sp)
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003b58
    li         $a0,1
    jal        i2_start
    move       $a1,$s0
    li         $a2,161
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003b94
    li         $s4,127
    move       $s1,$zero
    b          .L00003d24
    addiu      $s2,$sp,16
.L00003b24:
    jal        crime_i2cfpFixupAfterErr
    move       $a0,$s0
.L00003b2c:
    beqz       $s3, .L00003b3c
    nop
    jal        mutex_unlock
    addiu      $a0,$s3,468
.L00003b3c:
    b          .L00003a58
    move       $v0,$zero
.L00003b44:
    li         $a1,25
    jal        mutex_lock
    addiu      $a0,$s3,468
    b          .L00003a90
    lbu        $t9,1($sp)
.L00003b58:
    jal        crime_i2cfpFixupAfterErr
    move       $a0,$s0
    li         $s2,1
.L00003b64:
    bnez       $s2, .L00003aa8
    nop
    beqz       $s4, .L00003ae4
    move       $a1,$s0
    b          .L00003aac
    addiu      $s1,$s1,1
.L00003b7c:
    b          .L00003a98
    sw         $at,148($sp)
.L00003b84:
    jal        crime_i2cfpFixupAfterErr
    move       $a0,$s0
    b          .L00003aac
    addiu      $s1,$s1,1
.L00003b94:
    jal        crime_i2cfpFixupAfterErr
    move       $a0,$s0
    b          .L00003b64
    li         $s4,1
.L00003ba4:
    addiu      $a1,$sp,16
    jal        copyin
    lw         $a0,4($sp)
    beqz       $v0, .L00003bc0
    move       $a0,$s0
    b          .L00003a58
    li         $v0,-14
.L00003bc0:
    addiu      $a2,$sp,144
    jal        i2cfp_PortRead
    li         $a1,112
    beqz       $v0, .L00003cec
    lbu        $a2,144($sp)
    li         $a1,112
    move       $a0,$s0
    andi       $a2,$a2,0xfe
    andi       $a2,$a2,0xff
    jal        i2cfp_PortWrite
    sb         $a2,144($sp)
    beqz       $v0, .L00003cf4
    addiu      $s1,$sp,16
    move       $s3,$zero
    lbu        $s2,1($sp)
    b          .L00003c30
    move       $s4,$zero
.L00003c04:
    li         $s4,1
.L00003c08:
    li         $a0,1
.L00003c0c:
    jal        i2_stop
    move       $a1,$s0
    jal        us_delay
    li         $a0,10000
    addiu      $s3,$s3,4
    sltiu      $a3,$s3,128
    addiu      $s1,$s1,4
    beqz       $a3, .L00003cb4
    addiu      $s2,$s2,4
.L00003c30:
    li         $a2,160
    move       $a1,$s0
    jal        i2_start_addr
    li         $a0,1
    beqz       $v0, .L00003c04
    andi       $a2,$s2,0xff
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003c04
    move       $a1,$s0
    lbu        $a2,0($s1)
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003c04
    move       $a1,$s0
    lbu        $a2,1($s1)
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003c04
    move       $a1,$s0
    lbu        $a2,2($s1)
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003c04
    move       $a1,$s0
    lbu        $a2,3($s1)
    jal        i2_sendbyte
    li         $a0,1
    bnez       $v0, .L00003c0c
    li         $a0,1
    b          .L00003c08
    li         $s4,1
.L00003cb4:
    move       $a0,$s0
    addiu      $a2,$sp,144
    jal        i2cfp_PortRead
    li         $a1,112
    lbu        $a2,144($sp)
    li         $a1,112
    andi       $a2,$a2,0xfe
    move       $a0,$s0
    ori        $a2,$a2,0x1
    andi       $a2,$a2,0xff
    jal        i2cfp_PortWrite
    sb         $a2,144($sp)
    b          .L00003a58
    sltiu      $v0,$s4,1
.L00003cec:
    b          .L00003a58
    move       $v0,$zero
.L00003cf4:
    b          .L00003a58
    move       $v0,$zero
.L00003cfc:
    li         $a0,1
    move       $a1,$s0
    jal        i2_master_recvbyte
    move       $a2,$s2
    beqz       $v0, .L00003b24
    addiu      $s1,$s1,1
    sltiu      $a3,$s1,128
    addiu      $s2,$s2,1
    beqz       $a3, .L00003d38
    li         $a0,1
.L00003d24:
    bne        $s4, $s1, .L00003cfc
    li         $a3,1
    move       $a3,$zero
    b          .L00003cfc
    nop
.L00003d38:
    jal        i2_stop
    move       $a1,$s0
    lbu        $a4,1($sp)
    bnez       $a4, .L00003d98
    li         $a2,4
    addiu      $a1,$s5,364
    addiu      $a0,$sp,16
    lui        $s1,0x0
    jal        bcopy
    addiu      $s1,$s1,0
    lw         $s0,8($sp)
    sll        $s0,$s0,0x3
    addiu      $a0,$sp,16
    addu       $s0,$s1,$s0
    jal        crime_EdidCksum
    addiu      $s0,$s0,48
    andi       $t8,$v0,0xffff
    li         $a0,2
    sh         $a0,0($s0)
    bnez       $t8, .L00003d98
    sh         $v0,6($s0)
    lw         $t9,148($sp)
    sh         $a0,2($s0)
    sh         $a0,0($t9)
.L00003d98:
    li         $a2,128
    lw         $a1,4($sp)
    jal        copyout
    addiu      $a0,$sp,16
    beqz       $v0, .L00003db8
    nop
    b          .L00003a58
    li         $v0,-14
.L00003db8:
    bnez       $s3, .L00003dc8
    nop
.L00003dc0:
    b          .L00003a58
    li         $v0,1
.L00003dc8:
    jal        mutex_unlock
    addiu      $a0,$s3,468
    b          .L00003dc0
    nop

glabel i2cfp_AudioVolLeft
    sw         $a1,-30704($gp)
    addiu      $sp,$sp,-32
    li         $a2,130
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,1
    sd         $s1,16($sp)
    move       $s1,$a1
    sd         $ra,8($sp)
    jal        i2_start_addr
    move       $a1,$s0
    beqz       $v0, .L00003e3c
    li         $a0,1
    move       $a1,$s0
    jal        i2_sendbyte
    move       $a2,$zero
    beqz       $v0, .L00003e64
    andi       $a2,$s1,0xff
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003e6c
    li         $s1,1
    b          .L00003e44
    li         $a0,1
.L00003e3c:
    move       $s1,$zero
.L00003e40:
    li         $a0,1
.L00003e44:
    jal        i2_stop
    move       $a1,$s0
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    move       $v0,$s1
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00003e64:
    b          .L00003e40
    move       $s1,$zero
.L00003e6c:
    move       $s1,$zero
    b          .L00003e44
    li         $a0,1

glabel i2cfp_AudioVolRight
    sw         $a1,-30700($gp)
    addiu      $sp,$sp,-32
    li         $a2,130
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,1
    sd         $s1,16($sp)
    move       $s1,$a1
    sd         $ra,8($sp)
    jal        i2_start_addr
    move       $a1,$s0
    beqz       $v0, .L00003edc
    li         $a2,1
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003f04
    andi       $a2,$s1,0xff
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003f0c
    li         $s1,1
    b          .L00003ee4
    li         $a0,1
.L00003edc:
    move       $s1,$zero
.L00003ee0:
    li         $a0,1
.L00003ee4:
    jal        i2_stop
    move       $a1,$s0
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    move       $v0,$s1
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00003f04:
    b          .L00003ee0
    move       $s1,$zero
.L00003f0c:
    move       $s1,$zero
    b          .L00003ee4
    li         $a0,1

glabel i2cfp_AudioBass
    sw         $a1,-30696($gp)
    addiu      $sp,$sp,-32
    li         $a2,130
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,1
    sd         $s1,16($sp)
    move       $s1,$a1
    sd         $ra,8($sp)
    jal        i2_start_addr
    move       $a1,$s0
    beqz       $v0, .L00003f7c
    li         $a2,2
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003fa4
    andi       $a2,$s1,0xff
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00003fac
    li         $s1,1
    b          .L00003f84
    li         $a0,1
.L00003f7c:
    move       $s1,$zero
.L00003f80:
    li         $a0,1
.L00003f84:
    jal        i2_stop
    move       $a1,$s0
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    move       $v0,$s1
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00003fa4:
    b          .L00003f80
    move       $s1,$zero
.L00003fac:
    move       $s1,$zero
    b          .L00003f84
    li         $a0,1

glabel i2cfp_AudioTreble
    sw         $a1,-30692($gp)
    addiu      $sp,$sp,-32
    li         $a2,130
    sd         $s0,0($sp)
    move       $s0,$a0
    li         $a0,1
    sd         $s1,16($sp)
    move       $s1,$a1
    sd         $ra,8($sp)
    jal        i2_start_addr
    move       $a1,$s0
    beqz       $v0, .L0000401c
    li         $a2,3
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00004044
    andi       $a2,$s1,0xff
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L0000404c
    li         $s1,1
    b          .L00004024
    li         $a0,1
.L0000401c:
    move       $s1,$zero
.L00004020:
    li         $a0,1
.L00004024:
    jal        i2_stop
    move       $a1,$s0
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    move       $v0,$s1
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00004044:
    b          .L00004020
    move       $s1,$zero
.L0000404c:
    move       $s1,$zero
    b          .L00004024
    li         $a0,1

glabel i2cfp_AudioSwitch
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    andi       $at,$a1,0x20
    li         $v0,1
    move       $s0,$a0
    sd         $s1,8($sp)
    move       $s1,$a1
    beqz       $at, .L000040f8
    sd         $ra,16($sp)
    sw         $v0,-30712($gp)
.L00004080:
    li         $a2,130
    move       $a1,$s0
    jal        i2_start_addr
    li         $a0,1
    beqz       $v0, .L000040c8
    li         $a2,8
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L000040f0
    andi       $a2,$s1,0xff
    move       $a1,$s0
    jal        i2_sendbyte
    li         $a0,1
    beqz       $v0, .L00004100
    li         $s1,1
    b          .L000040d0
    li         $a0,1
.L000040c8:
    move       $s1,$zero
.L000040cc:
    li         $a0,1
.L000040d0:
    jal        i2_stop
    move       $a1,$s0
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    move       $v0,$s1
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000040f0:
    b          .L000040cc
    move       $s1,$zero
.L000040f8:
    b          .L00004080
    sw         $zero,-30712($gp)
.L00004100:
    move       $s1,$zero
    b          .L000040d0
    li         $a0,1

glabel i2cfp_SetBit
    addiu      $sp,$sp,-16
    beqz       $a1, .L00004140
    sd         $ra,0($sp)
    li         $a2,239
    li         $a1,112
    li         $at,1
    jal        i2cfp_PortWrite
    sw         $at,-30708($gp)
    move       $a0,$v0
.L00004130:
    ld         $ra,0($sp)
    move       $v0,$a0
    jr         $ra
    addiu      $sp,$sp,16
.L00004140:
    li         $a2,231
    li         $a1,112
    jal        i2cfp_PortWrite
    sw         $zero,-30708($gp)
    b          .L00004130
    move       $a0,$v0

glabel crime_i2cfp_command
    lw         $a5,124($a0)
    lbu        $at,46($a5)
    lw         $v0,128($a0)
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a1
    beqz       $at, .L000041a8
    sd         $ra,8($sp)
    lw         $a2,0($a1)
    lui        $a1,0x0
    sltiu      $a4,$a2,22
    addiu      $a1,$a1,160
    sll        $a3,$a2,0x2
    beqz       $a4, .L00004384
    addu       $a1,$a1,$a3
    lw         $a3,0($a1)
    lw         $a6,-30704($gp)
    lw         $a2,-30716($gp)
    jr         $a3
    lw         $a7,-30700($gp)
.L000041a8:
    b          .L000041c0
    li         $v0,19
    jal        i2cfp_PanelOff
    move       $a0,$v0
    sw         $v0,8($s0)
.L000041bc:
    move       $v0,$zero
.L000041c0:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
    move       $a1,$a5
    jal        i2cfp_PanelOn
    move       $a2,$v0
    b          .L000041bc
    sw         $v0,8($s0)
    move       $a0,$v0
    jal        i2cfp_DMI2_DisableSequel
    move       $a1,$a5
    b          .L000041bc
    sw         $v0,8($s0)
    move       $a0,$v0
    jal        i2cfp_DMI2_EnableSequel
    move       $a1,$a5
    b          .L000041bc
    sw         $v0,8($s0)
    move       $a0,$v0
    move       $a1,$a5
    jal        i2cfp_DMI2_EDIDFuncs
    lw         $a2,4($s0)
    bltz       $v0, .L0000436c
    move       $a0,$v0
    b          .L000041bc
    sw         $v0,8($s0)
    move       $a0,$v0
    jal        i2cfp_DMI2_SensorFuncs
    lw         $a1,4($s0)
    bltz       $v0, .L00004374
    move       $a0,$v0
    b          .L000041bc
    sw         $v0,8($s0)
    move       $a0,$v0
    jal        i2cfp_DMI2_BkltWrapper
    lw         $a1,4($s0)
    bltz       $v0, .L0000437c
    move       $a0,$v0
    b          .L000041bc
    sw         $v0,8($s0)
    lw         $a4,-30708($gp)
    b          .L000041bc
    sw         $a4,8($s0)
    lw         $a1,4($s0)
    move       $a0,$v0
    jal        i2cfp_SetBit
    lw         $a1,0($a1)
    b          .L000041bc
    sw         $v0,8($s0)
    lw         $a2,-30712($gp)
    b          .L000041bc
    sw         $a2,8($s0)
    lw         $a3,-30692($gp)
    b          .L000041bc
    sw         $a3,8($s0)
    lw         $a4,-30696($gp)
    b          .L000041bc
    sw         $a4,8($s0)
    b          .L000041bc
    sw         $a7,8($s0)
    b          .L000041bc
    sw         $a6,8($s0)
    b          .L000041bc
    sw         $a2,8($s0)
    lw         $a1,4($s0)
    move       $a0,$v0
    jal        i2cfp_AudioSwitch
    lw         $a1,0($a1)
    b          .L000041bc
    sw         $v0,8($s0)
    lw         $a1,4($s0)
    move       $a0,$v0
    jal        i2cfp_AudioTreble
    lw         $a1,0($a1)
    b          .L000041bc
    sw         $v0,8($s0)
    lw         $a1,4($s0)
    move       $a0,$v0
    jal        i2cfp_AudioBass
    lw         $a1,0($a1)
    b          .L000041bc
    sw         $v0,8($s0)
    lw         $a1,4($s0)
    move       $a0,$v0
    jal        i2cfp_AudioVolRight
    lw         $a1,0($a1)
    b          .L000041bc
    sw         $v0,8($s0)
    lw         $a1,4($s0)
    move       $a0,$v0
    jal        i2cfp_AudioVolLeft
    lw         $a1,0($a1)
    b          .L000041bc
    sw         $v0,8($s0)
    lw         $a1,4($s0)
    move       $a0,$v0
    jal        i2cfp_BlDown
    lw         $a1,0($a1)
    b          .L000041bc
    sw         $v0,8($s0)
    lw         $a1,4($s0)
    move       $a0,$v0
    jal        i2cfp_BlUp
    lw         $a1,0($a1)
    b          .L000041bc
    sw         $v0,8($s0)
.L0000436c:
    b          .L000041c0
    negu       $v0,$v0
.L00004374:
    b          .L000041c0
    negu       $v0,$v0
.L0000437c:
    b          .L000041c0
    negu       $v0,$v0
.L00004384:
    li         $a0,6
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,128
    b          .L000041c0
    li         $v0,22
