.section .text
.set noat
.set noreorder


glabel mace_mask_disable
    addiu      $sp,$sp,-32
    sd         $s3,8($sp)
    sd         $ra,16($sp)
    jal        spl7
    move       $s3,$a0
    lui        $a0,0xbf31
    sd         $v0,0($sp)
    jal        pciio_pio_read64
    ori        $a0,$a0,0x18
    nor        $a0,$s3,$zero
    lui        $a1,0xbf31
    and        $a0,$v0,$a0
    jal        pciio_pio_write64
    ori        $a1,$a1,0x18
    ld         $s3,8($sp)
    jal        splx
    ld         $a0,0($sp)
    ld         $ra,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel mace_mask_enable
    addiu      $sp,$sp,-32
    sd         $s3,8($sp)
    sd         $ra,16($sp)
    jal        spl7
    move       $s3,$a0
    lui        $a0,0xbf31
    sd         $v0,0($sp)
    jal        pciio_pio_read64
    ori        $a0,$a0,0x18
    or         $a0,$v0,$s3
    lui        $a1,0xbf31
    jal        pciio_pio_write64
    ori        $a1,$a1,0x18
    ld         $s3,8($sp)
    jal        splx
    ld         $a0,0($sp)
    ld         $ra,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel mace_mask_update
    addiu      $sp,$sp,-32
    sd         $ra,16($sp)
    sd         $s3,8($sp)
    move       $s3,$a0
    jal        spl7
    sd         $a1,24($sp)
    lui        $a0,0xbf31
    sd         $v0,0($sp)
    jal        pciio_pio_read64
    ori        $a0,$a0,0x18
    ld         $a0,24($sp)
    nor        $a1,$s3,$zero
    and        $a1,$v0,$a1
    or         $a0,$a0,$a1
    lui        $a1,0xbf31
    jal        pciio_pio_write64
    ori        $a1,$a1,0x18
    ld         $s3,8($sp)
    jal        splx
    ld         $a0,0($sp)
    ld         $ra,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel mace_mask_read
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    jal        spl7
    sd         $s8,16($sp)
    move       $s8,$v0
    lui        $a0,0xbf31
    jal        pciio_pio_read64
    ori        $a0,$a0,0x18
    sd         $v0,8($sp)
    jal        splx
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s8,16($sp)
    ld         $v0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel mace_mask_write
    addiu      $sp,$sp,-32
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        spl7
    move       $s8,$a0
    move       $a0,$s8
    lui        $a1,0xbf31
    sd         $v0,16($sp)
    jal        pciio_pio_write64
    ori        $a1,$a1,0x18
    ld         $s8,8($sp)
    jal        splx
    ld         $a0,16($sp)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel mace_stray
    li         $a0,4
    lui        $a2,0x0
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    addiu      $a1,$a1,0
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a2,$a2,0
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel mace_tbl_init
    move       $a1,$zero
    li         $a4,4
    lui        $a2,0x0
    lui        $a3,0x0
    addiu      $a3,$a3,0
    sw         $zero,0($a2)
    addiu      $a2,$a2,0
.L000001c0:
    addiu      $a2,$a2,56
    sd         $zero,-24($a2)
    sd         $zero,-32($a2)
    addiu      $a1,$a1,1
    sw         $zero,-40($a2)
    slti       $a5,$a1,10
    sw         $a4,-44($a2)
    bnez       $a5, .L000001c0
    sw         $a3,-48($a2)
    jr         $ra
    nop

glabel mace_is_thd
    lui        $at,0xf
    and        $at,$a1,$at
    beqz       $at, .L00000204
    li         $v0,1
.L000001fc:
    jr         $ra
    nop
.L00000204:
    li         $v0,0xfff0
    dsll       $v0,$v0,0x10
    and        $v0,$a1,$v0
    andi       $a3,$a1,0xa00
    bnez       $v0, .L000001fc
    li         $v0,1
    bnez       $a3, .L000001fc
    li         $v0,1
    jr         $ra
    move       $v0,$zero

glabel setmaceisavector
    addiu      $sp,$sp,-96
    sd         $ra,64($sp)
    sd         $s2,56($sp)
    move       $s2,$a0
    sd         $s0,72($sp)
    move       $s0,$a1
    jal        spl7
    sd         $a2,40($sp)
    lw         $at,0($gp)
    sd         $v0,48($sp)
    beqz       $at, .L000003b4
    sd         $s1,80($sp)
.L0000025c:
    li         $v0,5
    lw         $a3,-30704($gp)
    li         $a1,4
    beq        $s2, $v0, .L00000384
    lw         $a4,-30708($gp)
    bne        $s2, $a1, .L000003f4
    lui        $a0,0x0
    beqz       $a3, .L000003c8
    lui        $a4,0x0
.L00000280:
    move       $t0,$zero
    addiu      $a4,$a4,0
    move       $s1,$zero
    addiu      $t1,$a4,8
    lw         $a3,0($sp)
    b          .L000002b0
    move       $a7,$a4
.L0000029c:
    bnez       $t2, .L000003f0
.L000002a0:
    addiu      $t0,$t0,1
    slti       $a5,$t0,10
    beqz       $a5, .L000002d4
    addiu      $t1,$t1,56
.L000002b0:
    ld         $t2,32($a7)
    addiu      $a7,$a7,56
    bnez       $t2, .L0000029c
    and        $t2,$t2,$s0
    bnez       $s1, .L000002a0
    nop
    move       $a3,$t0
    b          .L000002a0
    move       $s1,$t1
.L000002d4:
    beqz       $s1, .L000003f0
    lw         $a5,0($a4)
    ld         $a2,40($sp)
    addiu      $a5,$a5,1
    sw         $a5,0($a4)
    sd         $s0,24($s1)
    sd         $zero,16($s1)
    sw         $zero,8($s1)
    sw         $s2,4($s1)
    lui        $a1,0x0
    sw         $a2,0($s1)
    addiu      $a0,$sp,8
    addiu      $a1,$a1,48
    lw         $t3,0($gp)
    move       $a2,$s2
    jal        sprintf
    sh         $t3,48($s1)
    move       $a0,$s2
    jal        mace_is_thd
    move       $a1,$s0
    beqz       $v0, .L00000364
    addiu      $a2,$s1,32
    li         $t0,768
.L00000330:
    ll         $a7,0($a2)
    or         $t1,$a7,$t0
    sc         $t1,0($a2)
    beqzl      $t1, .L00000330
    nop
    lw         $a6,0($gp)
    beqz       $a6, .L00000364
    addiu      $a0,$sp,8
    move       $a4,$s1
    lui        $a3,0x0
    lh         $a1,48($s1)
    jal        xthread_setup
    addiu      $a3,$a3,0
.L00000364:
    jal        splx
    ld         $a0,48($sp)
    ld         $ra,64($sp)
.L00000370:
    ld         $s1,80($sp)
    ld         $s0,72($sp)
    ld         $s2,56($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L00000384:
    bnez       $a4, .L00000280
    lui        $a4,0x0
    li         $a4,1
    move       $a3,$s2
    move       $a0,$s2
    li         $a1,1
    lui        $a2,0x0
    sw         $a1,-30708($gp)
    jal        setcrimevector
    addiu      $a2,$a2,0
    b          .L00000280
    lui        $a4,0x0
.L000003b4:
    jal        mace_tbl_init
    nop
    li         $a3,1
    b          .L0000025c
    sw         $a3,0($gp)
.L000003c8:
    li         $a4,1
    move       $a3,$s2
    move       $a0,$s2
    li         $a1,1
    lui        $a2,0x0
    sw         $a1,-30704($gp)
    jal        setcrimevector
    addiu      $a2,$a2,0
    b          .L00000280
    lui        $a4,0x0
.L000003f0:
    lui        $a0,0x0
.L000003f4:
    jal        panic
    addiu      $a0,$a0,64
    jal        splx
    ld         $a0,48($sp)
    b          .L00000370
    ld         $ra,64($sp)

glabel mace_intr
    addiu      $sp,$sp,-48
    sd         $s0,8($sp)
    sd         $s1,0($sp)
    sd         $s2,40($sp)
    sd         $s3,32($sp)
    lui        $a0,0xbf31
    sd         $s4,16($sp)
    sd         $ra,24($sp)
    jal        pciio_pio_read64
    ori        $a0,$a0,0x10
    move       $s4,$v0
    move       $s1,$v0
    lui        $s0,0x0
    move       $s3,$zero
    addiu      $s0,$s0,0
    b          .L00000480
    addiu      $s2,$s0,44
.L00000450:
    jal        mace_mask_disable
    sd         $s4,24($s0)
    jal        vsema
    move       $a0,$s2
    ld         $t8,32($s0)
.L00000464:
    addiu      $s3,$s3,1
    addiu      $s2,$s2,56
    slti       $t9,$s3,10
    addiu      $s0,$s0,56
    nor        $t8,$t8,$zero
    beqz       $t9, .L000004c8
    and        $s1,$s1,$t8
.L00000480:
    beqz       $s1, .L000004c8
    ld         $a0,32($s0)
    and        $t9,$a0,$s1
    beqz       $t9, .L000004b4
    lw         $ra,40($s0)
    andi       $ra,$ra,0x1000
    bnez       $ra, .L00000450
    lw         $at,8($s0)
    move       $a0,$zero
    jalr       $at
    lw         $a1,16($s0)
    b          .L00000464
    ld         $t8,32($s0)
.L000004b4:
    addiu      $s3,$s3,1
    slti       $v0,$s3,10
    addiu      $s2,$s2,56
    bnez       $v0, .L00000480
    addiu      $s0,$s0,56
.L000004c8:
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    ld         $ra,24($sp)
    ld         $s2,40($sp)
    ld         $s3,32($sp)
    ld         $s4,16($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel macevec_intrd_setup
    addiu      $sp,$sp,-32
    lui        $a1,0x0
    sd         $s0,8($sp)
    move       $s0,$a0
    lw         $a0,-24552($zero)
    addiu      $a1,$a1,0
    sd         $ra,16($sp)
    jal        xthread_set_func
    move       $a2,$s0
    addiu      $a1,$sp,0
    jal        fetch_kname
    lw         $a0,0($s0)
    lw         $a0,-24552($zero)
    move       $a1,$v0
    li         $a2,16
    jal        strncpy
    addiu      $a0,$a0,532
    li         $a3,1024
    addiu      $a2,$s0,32
.L00000534:
    ll         $a1,0($a2)
    or         $a4,$a1,$a3
    sc         $a4,0($a2)
    beqzl      $a4, .L00000534
    nop
    jal        ipsema
    addiu      $a0,$s0,36
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel macevec_intrd
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    move       $s8,$a0
    lw         $at,0($s8)
    sd         $ra,0($sp)
    move       $a0,$zero
    jalr       $at
    lw         $a1,20($s8)
    jal        ipsema
    addiu      $a0,$s8,36
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16
