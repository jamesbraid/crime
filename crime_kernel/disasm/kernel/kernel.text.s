.section .text
.set noat
.set noreorder


glabel VEC_int
    lui        $s1,0xb400
    lw         $s4,-23840($zero)
    ori        $s1,$s1,0x18
    ld         $k0,0($s1)
    dsll32     $s4,$s4,0x0
    or         $k0,$k0,$s4
    sd         $k0,312($k1)
    li         $k0,24
    sw         $k0,-23840($zero)
    ld         $k0,-23880($k0)
    dsrl32     $s4,$s4,0x0
    sd         $k0,0($s1)
    lui        $k0,0x1
    ori        $k0,$k0,0x4
    and        $k0,$k0,$s0
    ori        $k0,$k0,0x1
    mtc0       $k0,c0_sr
    move       $a2,$s0
    jal        intr
    move       $s1,$a0
    move       $s3,$v0
    sw         $s4,-23840($zero)
    ld         $s2,-23880($s4)
    lui        $k0,0xb400
    addiu      $k0,$k0,24
    sd         $s2,0($k0)
    andi       $s2,$s0,0xff00
    mtc0       $s2,c0_sr
    move       $k1,$s1

glabel tfp_special_int_exit
    lw         $k0,-24544($zero)
    sltu       $at,$sp,$k0
    bnez       $at, .L000001e0
    nop
    bne        $sp, $k0, .L000001e8
    nop
    andi       $a0,$s0,0x18
    beqz       $a0, .L00000100
    nop
    lb         $a0,-24514($zero)
    bnez       $a0, .L000000d4
    nop
    lw         $a0,-24556($zero)
    lw         $a0,640($a0)
    addiu      $a0,$a0,0
    lw         $a0,0($a0)
    bnez       $a0, .L000000d4
    nop
    j          backtouser
    nop
.L000000d4:
    li         $k0,1
    sb         $k0,-24513($zero)
    li         $sp,-12432
    lw         $a0,-24552($zero)
    jal        ktimer_switch
    li         $a1,1
    ld         $s0,248($k1)
    move       $a0,$k1
    li         $a1,132
    j          soft_trap
    ld         $a3,280($k1)
.L00000100:
    lw         $a0,-24552($zero)
    move       $a1,$s7
    beqz       $a0, .L00000118
    nop
    jal        ktimer_switch
    nop
.L00000118:
    lb         $k0,-24509($zero)
    beqz       $k0, .L00000160
    nop
    li         $k0,3
    sb         $k0,-24513($zero)
    lb         $k0,-24512($zero)
    sb         $zero,-24509($zero)
    beqz       $k0, .L000001e0
    nop
    jal        splhi
    lw         $sp,-24156($zero)
    mfc0       $t1,c0_sr
    ori        $t1,$t1,0x3
    xori       $t1,$t1,0x2
    mtc0       $t1,c0_sr
    sb         $zero,-24512($zero)
    j          resumeidle
    move       $a0,$zero
.L00000160:
    lw         $k0,-24552($zero)
    sw         $zero,348($k0)
    li         $k0,1
    sb         $k0,-24513($zero)
    beqz       $s3, .L000001e0
    nop
    lb         $v0,-24514($zero)
    beqz       $v0, .L000001e0
    nop
    jal        splhi
    move       $sp,$s1
    mfc0       $t1,c0_sr
    ori        $t1,$t1,0x3
    xori       $t1,$t1,0x2
    mtc0       $t1,c0_sr

glabel kpreemption
    jal        kpswtch
    nop
    lui        $a0,0x1
    ori        $a0,$a0,0x4
    and        $a0,$a0,$s0
    ori        $a0,$a0,0x1
    mtc0       $a0,c0_sr
    sw         $s4,-23840($zero)
    ld         $a0,-23880($s4)
    lui        $k1,0xb400
    addiu      $k1,$k1,24
    sd         $a0,0($k1)
    move       $k1,$s1
.L000001e0:
    j          exception_leave
    nop
.L000001e8:
    move       $a2,$sp
    lui        $a1,0x0
    addiu      $a1,$a1,0
    lw         $sp,-24156($zero)
    jal        cmn_err
    li         $a0,0

glabel arcs_write
    move       $a0,$a1
    move       $a1,$a2
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        mh16550_console_write
    move       $a2,$a3
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel arcs_load
    addiu      $sp,$sp,-48
    sd         $a0,24($sp)
    sd         $a1,0($sp)
    lw         $at,0($gp)
    sd         $a2,16($sp)
    move       $a6,$a0
    move       $a7,$a2
    sd         $a3,8($sp)
    move       $t0,$a3
    bnez       $at, .L00000290
    sd         $ra,32($sp)
.L00000250:
    lui        $a5,0x1fff
    lui        $a0,0x8000
    ori        $a5,$a5,0xffff
    lui        $a4,0xa000
    and        $a3,$a5,$t0
    lw         $a4,4128($a4)
    and        $a2,$a5,$a7
    and        $a5,$a5,$a6
    or         $a3,$a0,$a3
    or         $a2,$a0,$a2
    lw         $a4,0($a4)
    jal        call_prom_cached
    or         $a0,$a0,$a5
    ld         $ra,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00000290:
    move       $a0,$zero
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,0
    ld         $a6,24($sp)
    ld         $a7,16($sp)
    ld         $t0,8($sp)
    b          .L00000250
    ld         $a1,0($sp)

glabel prom_autoboot
    lw         $at,0($gp)
    lw         $a1,0($gp)
    addiu      $sp,$sp,-16
    beqz       $at, .L000002d8
    sd         $ra,0($sp)
    beqz       $a1, .L000002dc
    lw         $v0,0($gp)
    jal        _r4600sc_disable_scache
    nop
.L000002d8:
    lw         $v0,0($gp)
.L000002dc:
    beqz       $v0, .L000002ec
    nop
    jal        prom_reinit
    nop
.L000002ec:
    jal        flash_write_env
    nop
    jal        ecc_disable
    nop
    jal        early_gbe_stop
    nop
    jal        update_flash_version
    nop
    jal        flash_version
    move       $a0,$zero
    slti       $v1,$v0,2
    bnez       $v1, .L00000328
    lui        $a3,0xbfc0
    b          .L0000032c
    ori        $a2,$a3,0x100
.L00000328:
    move       $a2,$a3
.L0000032c:
    jalr       $a2
    li         $a0,6
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel prom_reinit
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        flash_write_env
    nop
    jal        set_autopoweron
    nop
    lw         $at,0($gp)
    beqz       $at, .L0000036c
    nop
    jal        cpu_powerdown
    nop
.L0000036c:
    jal        ecc_disable
    nop
    jal        early_gbe_stop
    nop
    jal        update_flash_version
    nop
    jal        flash_version
    move       $a0,$zero
    slti       $v0,$v0,2
    bnez       $v0, .L000003a0
    lui        $a3,0xbfc0
    b          .L000003a4
    ori        $a2,$a3,0x100
.L000003a0:
    move       $a2,$a3
.L000003a4:
    jalr       $a2
    li         $a0,5
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel arcs_setuproot
    lui        $a0,0x0
    addiu      $sp,$sp,-32
    sd         $ra,24($sp)
    jal        kopt_find
    addiu      $a0,$a0,48
    beqz       $v0, .L000003fc
    ld         $ra,24($sp)
    move       $a0,$v0
    jal        .text
    addiu      $a1,$sp,0
    beqz       $v0, .L000003fc
    ld         $ra,24($sp)
    addiu      $a1,$sp,0
    lui        $a0,0x0
    jal        kopt_set
    addiu      $a0,$a0,64
    ld         $ra,24($sp)
.L000003fc:
    jr         $ra
    addiu      $sp,$sp,32

glabel arcs_getenv
    move       $a3,$zero
    move       $a2,$zero
    move       $a1,$zero
    lui        $a6,0x1fff
    lui        $a4,0xa000
    addiu      $sp,$sp,-16
    lw         $a4,4128($a4)
    ori        $a6,$a6,0xffff
    lui        $a5,0x8000
    sd         $ra,0($sp)
    and        $a0,$a0,$a6
    or         $a0,$a0,$a5
    jal        call_prom_cached
    lw         $a4,120($a4)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel arcs_nvram_tab
    move       $a3,$zero
    move       $a2,$zero
    lui        $a6,0x1fff
    lui        $a4,0xa000
    addiu      $sp,$sp,-16
    lw         $a4,4136($a4)
    ori        $a6,$a6,0xffff
    lui        $a5,0x8000
    sd         $ra,0($sp)
    and        $a0,$a0,$a6
    or         $a0,$a0,$a5
    jal        call_prom_cached
    lw         $a4,4($a4)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel arcs_eaddr
    li         $a2,6
    move       $a1,$a0
    lui        $a0,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        bcopy
    addiu      $a0,$a0,0
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel prom_eaddr
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        arcs_eaddr
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
    addiu      $sp,$sp,-64
    li         $a2,4
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $a1,0($sp)
    move       $a1,$a0
    lui        $a0,0x0
    sd         $ra,8($sp)
    jal        strncmp
    addiu      $a0,$a0,88
    sd         $s3,24($sp)
    sd         $s2,40($sp)
    sd         $s1,48($sp)
    sd         $s4,32($sp)
    move       $s4,$zero
    beqz       $v0, .L000005d4
    sd         $s5,56($sp)
    lbu        $a1,0($s0)
    beqz       $a1, .L000006bc
    move       $s5,$zero
    b          .L00000548
    li         $s3,-1
.L00000524:
    move       $a0,$s1
.L00000528:
    jal        strchr
    li         $a1,41
    beqz       $v0, .L000006c4
    nop
    lbu        $a2,1($v0)
    addiu      $s0,$v0,1
    beqz       $a2, .L0000066c
    li         $a4,-1
.L00000548:
    move       $a0,$s0
    jal        strchr
    li         $a1,40
    beqz       $v0, .L00000694
    move       $s2,$v0
    addiu      $s1,$v0,1
    lbu        $v1,1($v0)
    subu       $v0,$v0,$s0
    beqz       $v1, .L00000694
    slti       $v0,$v0,3
    bnez       $v0, .L00000524
    li         $a2,4
    move       $a1,$s0
    lui        $a0,0x0
    jal        strncmp
    addiu      $a0,$a0,96
    beqz       $v0, .L000006cc
    addiu      $s1,$s2,1
    li         $a2,4
    move       $a1,$s0
    lui        $a0,0x0
    jal        strncmp
    addiu      $a0,$a0,104
    beqz       $v0, .L000006dc
    li         $a2,4
    move       $a1,$s0
    lui        $a0,0x0
    jal        strncmp
    addiu      $a0,$a0,112
    bnez       $v0, .L00000528
    move       $a0,$s1
    jal        atoi
    move       $a0,$s1
    b          .L00000524
    move       $s5,$v0
.L000005d4:
    move       $a0,$s0
    jal        strchr
    li         $a1,40
    beqz       $v0, .L000006ec
    nop
    lbu        $a1,1($v0)
    beqz       $a1, .L000006ec
    addiu      $s1,$v0,1
    jal        atoi
    move       $a0,$s1
    move       $s4,$v0
    move       $a0,$s1
    jal        strchr
    li         $a1,44
    beqz       $v0, .L000006f4
    nop
    lbu        $a2,1($v0)
    beqz       $a2, .L000006f4
    addiu      $s1,$v0,1
    jal        atoi
    move       $a0,$s1
    move       $s3,$v0
    move       $a0,$s1
    jal        strchr
    li         $a1,44
    beqz       $v0, .L000006fc
    nop
    lbu        $a3,1($v0)
    beqz       $a3, .L000006fc
    nop
    jal        atoi
    addiu      $a0,$v0,1
    move       $s5,$v0
    move       $a0,$s0
    jal        strchr
    li         $a1,41
    beqz       $v0, .L00000704
    li         $a4,-1
.L0000066c:
    beq        $s3, $a4, .L000006bc
    move       $a2,$s4
    move       $a3,$s3
    move       $a4,$s5
    lui        $a1,0x0
    ld         $a0,0($sp)
    jal        sprintf
    addiu      $a1,$a1,72
    b          .L00000698
    li         $v0,1
.L00000694:
    move       $v0,$zero
.L00000698:
    ld         $s3,24($sp)
    ld         $s4,32($sp)
    ld         $s0,16($sp)
    ld         $ra,8($sp)
    ld         $s2,40($sp)
    ld         $s1,48($sp)
    ld         $s5,56($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L000006bc:
    b          .L00000698
    move       $v0,$zero
.L000006c4:
    b          .L00000698
    move       $v0,$zero
.L000006cc:
    jal        atoi
    move       $a0,$s1
    b          .L00000524
    move       $s4,$v0
.L000006dc:
    jal        atoi
    move       $a0,$s1
    b          .L00000524
    move       $s3,$v0
.L000006ec:
    b          .L00000698
    move       $v0,$zero
.L000006f4:
    b          .L00000698
    move       $v0,$zero
.L000006fc:
    b          .L00000698
    move       $v0,$zero
.L00000704:
    b          .L00000698
    move       $v0,$zero

glabel exception_exit
    move       $a0,$k1
    move       $k1,$a0
    andi       $k0,$s0,0x18
    beqz       $k0, .L0000075c
    nop
    lb         $k0,-24514($zero)
    bnez       $k0, .L0000074c
    nop
    lw         $k0,-24556($zero)
    lw         $k0,640($k0)
    addiu      $k0,$k0,0
    lw         $k0,0($k0)
    bnez       $k0, .L0000074c
    nop
    j          backtouser
    nop
.L0000074c:
    move       $a0,$k1
    li         $a1,132
    j          soft_trap
    ld         $a3,280($k1)

glabel exception_leave
.L0000075c:
    jal        tfi_restore
    nop
    ld         $a0,24($k1)
    ld         $a1,32($k1)
    ld         $a2,40($k1)
    ld         $a3,48($k1)
    ld         $a4,56($k1)
    ld         $a5,64($k1)
    ld         $a6,72($k1)
    ld         $a7,80($k1)
    ld         $s0,120($k1)
    ld         $s1,128($k1)
    ld         $s2,136($k1)
    ld         $s3,144($k1)
    ld         $s4,152($k1)
    ld         $s5,160($k1)
    ld         $s6,168($k1)
    ld         $s7,176($k1)
    ld         $k0,248($k1)
    ld         $ra,240($k1)
    nop
    mtc0       $k0,c0_sr
    ld         $k0,288($k1)
    ld         $at,0($k1)
    mtc0       $k0,c0_epc
    ld         $sp,224($k1)
    eret

glabel unmaptlb
    mfc0       $t0,c0_sr
    mtc0       $zero,c0_sr
    beq        $zero, $a0, .L00000834
    nop
    lbu        $a0,0($a0)
.L00000834:
    mfc0       $t1,c0_entryhi
    sll        $a1,$a1,0xc
    li         $at,-8192
    and        $a1,$a1,$at
    or         $t2,$a1,$a0
    mtc0       $t2,c0_entryhi
    tlbp
    mfc0       $t3,c0_index
    move       $v0,$zero
    bltz       $t3, .L0000089c
    nop
    lui        $t2,0x8000
    mtc0       $t2,c0_entryhi
    mtc0       $zero,c0_entrylo0
    mtc0       $zero,c0_entrylo1
    move       $v0,$t3
    nop
    tlbwi
    nop
.L0000089c:
    mtc0       $t1,c0_entryhi
    mtc0       $t0,c0_sr
    jr         $ra
    nop

glabel invaltlb
    lui        $t2,0x8000
    mfc0       $v0,c0_sr
    mtc0       $zero,c0_sr
    mfc0       $t0,c0_entryhi
    mtc0       $t2,c0_entryhi
    mtc0       $zero,c0_entrylo0
    mtc0       $zero,c0_entrylo1
    mtc0       $a0,c0_index
    tlbwi
    nop
    mtc0       $t0,c0_entryhi
    mtc0       $v0,c0_sr
    jr         $ra
    nop

glabel tlbwired
    dsrl32     $a3,$a3,0x0
    dsrl32     $a4,$a4,0x0
    mfc0       $v0,c0_sr
    mtc0       $zero,c0_sr
    mfc0       $t0,c0_entryhi
    beq        $zero, $a1, .L0000094c
    nop
    lbu        $a1,0($a1)
.L0000094c:
    lui        $at,0x3ff
    ori        $at,$at,0xffff
    move       $t1,$a4
    and        $a3,$a3,$at
    and        $t1,$t1,$at
    li         $at,-8192
    and        $a2,$a2,$at
    move       $t2,$a5
    or         $a1,$a1,$a2
    mfc0       $t3,c0_pagemask
    mtc0       $t2,c0_pagemask
    mtc0       $a1,c0_entryhi
    mtc0       $a3,c0_entrylo0
    mtc0       $t1,c0_entrylo1
    mtc0       $a0,c0_index
    tlbwi
    nop
    mtc0       $t0,c0_entryhi
    mtc0       $t3,c0_pagemask
    mtc0       $v0,c0_sr
    jr         $ra
    nop

glabel tlbdropin
    dsrl32     $a2,$a2,0x0
    mfc0       $t0,c0_sr
    mtc0       $zero,c0_sr
    mfc0       $t1,c0_entryhi
    beq        $zero, $a0, .L000009f8
    li         $at,1
    bne        $a0, $at, .L000009f4
    nop
    b          .L000009f8
    andi       $a0,$t1,0xff
.L000009f4:
    lbu        $a0,0($a0)
.L000009f8:
    lui        $at,0x3ff
    ori        $at,$at,0xffff
    and        $a2,$a2,$at
    andi       $t2,$a1,0x1000
    li         $at,-8192
    and        $a1,$a1,$at
    or         $a0,$a0,$a1
    mtc0       $a0,c0_entryhi
    tlbp
    mfc0       $t3,c0_index
    move       $v0,$zero
    bltz       $t3, .L00000ab0
    nop
    tlbr
    beqz       $t2, .L00000a70
    mtc0       $a0,c0_entryhi
    nop
    mfc0       $v0,c0_entrylo1
    mtc0       $a2,c0_entrylo1
    b          .L00000a80
    nop
.L00000a70:
    nop
    mfc0       $v0,c0_entrylo0
    mtc0       $a2,c0_entrylo0
    nop
.L00000a80:
    li         $t2,0
    mtc0       $t2,c0_pagemask
    tlbwi
    nop
    mtc0       $t1,c0_entryhi
    mtc0       $t0,c0_sr
    jr         $ra
    nop
.L00000ab0:
    beqz       $t2, .L00000ac8
    andi       $t3,$a2,0x1
    mtc0       $t3,c0_entrylo0
    mtc0       $a2,c0_entrylo1
    b          .L00000ad8
    nop
.L00000ac8:
    mtc0       $t3,c0_entrylo1
    mtc0       $a2,c0_entrylo0
.L00000ad8:
    tlbwr
    nop
    mtc0       $t1,c0_entryhi
    mtc0       $t0,c0_sr
    jr         $ra
    move       $v0,$zero

glabel tlbdrop2in
    dsrl32     $a2,$a2,0x0
    dsrl32     $a3,$a3,0x0
    mfc0       $t0,c0_sr
    mtc0       $zero,c0_sr
    mfc0       $t1,c0_entryhi
    lui        $at,0x3ff
    ori        $at,$at,0xffff
    and        $a2,$a2,$at
    and        $a3,$a3,$at
    li         $at,-8192
    and        $a1,$a1,$at
    or         $a0,$a0,$a1
    mtc0       $a0,c0_entryhi
    mtc0       $a2,c0_entrylo0
    mtc0       $a3,c0_entrylo1
    tlbp
    mfc0       $t3,c0_index
    move       $v0,$zero
    bltz       $t3, .L00000b88
    nop
    tlbwi
    b          .L00000b90
    nop
.L00000b88:
    tlbwr
    nop
.L00000b90:
    mtc0       $t1,c0_entryhi
    mtc0       $t0,c0_sr
    jr         $ra
    nop

glabel flush_tlb
    lui        $v1,0x0
    addiu      $v1,$v1,0
    lui        $t0,0x8000
    lw         $v1,0($v1)
    mfc0       $t2,c0_sr
    mtc0       $zero,c0_sr
    mfc0       $t1,c0_entryhi
    mtc0       $t0,c0_entryhi
    mtc0       $zero,c0_entrylo0
    mtc0       $zero,c0_entrylo1
    mtc0       $a0,c0_index
.L00000bdc:
    addiu      $a0,$a0,1
    nop
    tlbwi
    bne        $a0, $v1, .L00000bdc
    mtc0       $a0,c0_index
    mtc0       $t1,c0_entryhi
    jr         $ra
    mtc0       $t2,c0_sr

glabel set_tlbpid
    mfc0       $t0,c0_sr
    mtc0       $zero,c0_sr
    sll        $a0,$a0,0x0
    li         $t1,9
    li         $t3,3
.L00000c30:
    mtc0       $t1,c0_index
    tlbr
    mfc0       $t2,c0_entryhi
    li         $at,-256
    and        $t2,$t2,$at
    or         $t2,$t2,$a0
    mtc0       $t2,c0_entryhi
    tlbwi
    slt        $at,$t3,$t1
    bnez       $at, .L00000c30
    addi       $t1,$t1,-1
    mtc0       $t0,c0_sr
    jr         $ra
    nop

glabel tlbfind
    mfc0       $t0,c0_sr
    mtc0       $zero,c0_sr
    mfc0       $t1,c0_entryhi
    li         $at,-8192
    sll        $a0,$a0,0x0
    and        $a1,$a1,$at
    or         $t2,$a0,$a1
    mtc0       $t2,c0_entryhi
    tlbp
    mfc0       $v0,c0_index
    nop
    bltz       $v0, .L00000d1c
    nop
    tlbr
    mfc0       $t3,c0_entrylo0
    sw         $t3,0($a2)
    mfc0       $t3,c0_entrylo1
    sw         $t3,0($a3)
    b          .L00000d20
    nop
.L00000d1c:
    li         $v0,-1
.L00000d20:
    li         $t2,0
    mtc0       $t2,c0_pagemask
    mtc0       $t1,c0_entryhi
    mtc0       $t0,c0_sr
    jr         $ra
    nop

glabel tlbgetpid
    mfc0       $v0,c0_entryhi
    jr         $ra
    andi       $v0,$v0,0xff

glabel tlbgetent
    mfc0       $t3,c0_sr
    mtc0       $zero,c0_sr
    mfc0       $v0,c0_entryhi
    nop
    mtc0       $a0,c0_index
    tlbr
    mfc0       $t0,c0_entryhi
    nop
    sd         $t0,0($a1)
    mfc0       $t0,c0_entrylo0
    nop
    sw         $t0,0($a2)
    mfc0       $t0,c0_entrylo1
    nop
    sw         $t0,0($a3)
    mtc0       $v0,c0_entryhi
    nop
    li         $t0,0
    mtc0       $t0,c0_pagemask
    mtc0       $t3,c0_sr
    jr         $ra
    nop

glabel tlbgetrand
    mfc0       $v0,c0_random
    jr         $ra
    nop

glabel tlb_probe
    mfc0       $t3,c0_sr
    mtc0       $zero,c0_sr
    mfc0       $t0,c0_entryhi
    sll        $a0,$a0,0x0
    li         $at,-8192
    and        $t1,$a1,$at
    or         $t1,$t1,$a0
    mtc0       $t1,c0_entryhi
    tlbp
    mfc0       $t1,c0_index
    bltz       $t1, .L00000ea4
    li         $v0,-1
    tlbr
    mfc0       $t1,c0_pagemask
    sw         $t1,0($a2)
    srl        $t1,$t1,0x1
    ori        $t1,$t1,0xfff
    addiu      $t1,$t1,1
    and        $t1,$t1,$a1
    mfc0       $v0,c0_entrylo1
    bnez       $t1, .L00000ea4
    nop
    nop
    mfc0       $v0,c0_entrylo0
.L00000ea4:
    mtc0       $t0,c0_entryhi
    li         $t0,0
    mtc0       $t0,c0_pagemask
    mtc0       $t3,c0_sr
    jr         $ra
    nop

glabel save
    mfc0       $v0,c0_sr
    sd         $ra,80($a0)
    sd         $sp,64($a0)
    sd         $s8,72($a0)
    sd         $s0,0($a0)
    sd         $s1,8($a0)
    sd         $s2,16($a0)
    sd         $s3,24($a0)
    sd         $v0,88($a0)
    sd         $s4,32($a0)
    sd         $s5,40($a0)
    sd         $s6,48($a0)
    sd         $s7,56($a0)
    jr         $ra
    move       $v0,$zero

glabel resume
    mtc0       $zero,c0_sr
    li         $t1,1
    li         $t2,1
    li         $t3,-16384
    li         $s1,3
    beqz       $a1, .L00000f2c
    sb         $t2,-24513($zero)
    sb         $zero,114($a1)
.L00000f2c:
    sb         $t1,114($a0)
    sw         $a0,-24552($zero)
    sw         $a0,-24556($zero)
    lw         $t1,644($a0)
    sw         $t1,-23996($zero)
    sll        $t1,$t1,0x6
    srl        $t1,$t1,0x6
    mtc0       $t3,c0_entryhi
    mtc0       $s1,c0_index
    li         $t2,1
    mtc0       $t2,c0_entrylo1
    mtc0       $t1,c0_entrylo0
    tlbwi
    lw         $t1,-23716($zero)
    beqz       $t1, .L00000fbc
    nop
    lw         $t3,-24000($zero)
    lw         $t1,-23724($zero)
    sw         $zero,-23716($zero)
    li         $t2,-24576
    sll        $t3,$t3,0x6
    srl        $t3,$t3,0x6
    sll        $t1,$t1,0x6
    srl        $t1,$t1,0x6
    li         $at,-8192
    and        $t2,$t2,$at
    mtc0       $t2,c0_entryhi
    mtc0       $t3,c0_entrylo0
    mtc0       $t1,c0_entrylo1
    mtc0       $zero,c0_index
    tlbwi
    nop
.L00000fbc:
    lw         $t2,640($a0)
    li         $t3,4
    li         $s0,10
    addiu      $t1,$t2,704
    addiu      $t2,$t2,756
.L00000fd0:
    lw         $a4,0($t1)
    lw         $t0,4($t1)
    lw         $a5,0($t2)
    sll        $a4,$a4,0x6
    sll        $t0,$t0,0x6
    srl        $a4,$a4,0x6
    srl        $t0,$t0,0x6
    addiu      $t1,$t1,8
    or         $a5,$a5,$a2
    mtc0       $a4,c0_entrylo0
    mtc0       $t0,c0_entrylo1
    mtc0       $a5,c0_entryhi
    mtc0       $t3,c0_index
    addi       $t3,$t3,1
    nop
    tlbwi
    bne        $t3, $s0, .L00000fd0
    addiu      $t2,$t2,4
    ld         $ra,80($a0)
    ld         $sp,64($a0)
    ld         $s8,72($a0)
    ld         $s0,0($a0)
    ld         $s1,8($a0)
    ld         $s2,16($a0)
    ld         $s3,24($a0)
    ld         $s4,32($a0)
    ld         $s5,40($a0)
    ld         $v0,88($a0)
    ld         $s6,48($a0)
    ld         $s7,56($a0)
    mtc0       $v0,c0_sr
    jr         $ra
    li         $v0,1

glabel resumethread
    mfc0       $v0,c0_sr
    mtc0       $zero,c0_sr
    li         $t1,1
    li         $t2,1
    sb         $t1,114($a0)
    sw         $a0,-24552($zero)
    sw         $zero,-24556($zero)
    sb         $t2,-24513($zero)
    beq        $a0, $a1, .L000010ac
    ld         $sp,64($a0)
    bnezl      $a1, .L000010ac
    sb         $zero,114($a1)
.L000010ac:
    ld         $ra,80($a0)
    ld         $s8,72($a0)
    ld         $s0,0($a0)
    ld         $s1,8($a0)
    ld         $s2,16($a0)
    ld         $s3,24($a0)
    ld         $s4,32($a0)
    ld         $s5,40($a0)
    ld         $s6,48($a0)
    ld         $s7,56($a0)
    mtc0       $v0,c0_sr
    li         $v0,1
    jr         $ra

glabel restartxthread
    mfc0       $v0,c0_sr
    mtc0       $zero,c0_sr
    li         $t1,1
    li         $t2,1
    sb         $t1,114($a0)
    sw         $a0,-24552($zero)
    sw         $zero,-24556($zero)
    sb         $t2,-24513($zero)
    beq        $a0, $a2, .L00001130
    move       $sp,$a1
    bnezl      $a2, .L00001130
    sb         $zero,114($a2)
.L00001130:
    mtc0       $v0,c0_sr
    j          xthread_prologue
    nop

glabel loopxthread
    j          xthread_loop_prologue
    move       $sp,$a1

glabel sthread_launch
    jal        spl0
    nop
    move       $a0,$s0
    move       $a1,$s1
    move       $a2,$s2
    jalr       $s8
    move       $a3,$s3
    jal        sthread_exit
    nop

glabel p0_launch
    jal        spl0
    nop
    jal        p0
    nop
    j          proc1
    nop

glabel resumeidle
    mfc0       $v0,c0_sr
    mtc0       $zero,c0_sr
    li         $t1,3
    sb         $t1,-24513($zero)
    lw         $sp,-24156($zero)
    beqz       $a0, .L000011cc
    nop
    sb         $zero,114($a0)
.L000011cc:
    sw         $zero,-24552($zero)
    sw         $zero,-24556($zero)
    mtc0       $v0,c0_sr
    jal        idle
    nop
    move       $a0,$v0
    jal        resumenewthread
    li         $a1,0

glabel toidlestk
    mfc0       $v0,c0_sr
    mtc0       $zero,c0_sr
    li         $t1,3
    lw         $sp,-24156($zero)
    sb         $t1,-24513($zero)
    sw         $zero,-24552($zero)
    sw         $zero,-24556($zero)
    sb         $zero,114($a0)
    addiu      $sp,$sp,-16
    mtc0       $v0,c0_sr
    move       $s0,$a1
    move       $a0,$a2
    jr         $s0
    move       $a1,$a3

glabel setjmp
    sd         $ra,80($a0)
    sd         $sp,64($a0)
    sd         $s8,72($a0)
    sd         $s0,0($a0)
    sd         $s1,8($a0)
    sd         $s2,16($a0)
    sd         $s3,24($a0)
    sd         $s4,32($a0)
    sd         $s5,40($a0)
    sd         $s6,48($a0)
    sd         $s7,56($a0)
    mfc0       $v0,c0_sr
    sd         $v0,88($a0)
    jr         $ra
    move       $v0,$zero

glabel longjmp
    ld         $ra,80($a0)
    ld         $sp,64($a0)
    ld         $s8,72($a0)
    ld         $s0,0($a0)
    ld         $s1,8($a0)
    ld         $s2,16($a0)
    ld         $s3,24($a0)
    ld         $s4,32($a0)
    ld         $s5,40($a0)
    ld         $s6,48($a0)
    ld         $v0,88($a0)
    ld         $s7,56($a0)
    mtc0       $v0,c0_sr
    jr         $ra
    li         $v0,1

glabel dummy_func
    jr         $ra
    nop

glabel dki_dcache_wb
    lui        $a2,0x2
    j          cache_operation
    ori        $a2,$a2,0x1002

glabel dcache_wbinval
    j          dki_dcache_wbinval
    nop

glabel _dki_dcache_wbinval
    lui        $a2,0x2
    j          cache_operation
    ori        $a2,$a2,0x1003

glabel _dki_dcache_inval
    lui        $a2,0x2
    j          cache_operation
    ori        $a2,$a2,0x1001

glabel __cdx_blkfill
    beqz       $a1, .L00001350
    addu       $v0,$a0,$a1
    addiu      $v0,$v0,-32
.L00001338:
    sd         $a2,0($a0)
    sd         $a2,8($a0)
    sd         $a2,16($a0)
    sd         $a2,24($a0)
    bnel       $a0, $v0, .L00001338
    addiu      $a0,$a0,32
.L00001350:
    jr         $ra
    nop

glabel __cdx_blkcopy
    move       $t8,$a1
    beqz       $a2, .L00001398
    sltu       $t1,$a0,$a1
    bnez       $t1, .L000013a0
    addu       $v0,$a1,$a2
.L0000136c:
    ld         $t0,0($a0)
    ld         $t1,8($a0)
    sd         $t0,0($a1)
    ld         $t0,16($a0)
    sd         $t1,8($a1)
    ld         $t1,24($a0)
    sd         $t0,16($a1)
    sd         $t1,24($a1)
    addiu      $a1,$a1,32
    bnel       $a1, $v0, .L0000136c
    addiu      $a0,$a0,32
.L00001398:
    jr         $ra
    move       $v0,$t8
.L000013a0:
    move       $v0,$a1
    addu       $a0,$a0,$a2
    addu       $a1,$a1,$a2
.L000013ac:
    ld         $t0,-8($a0)
    ld         $t1,-16($a0)
    sd         $t0,-8($a1)
    ld         $t0,-24($a0)
    sd         $t1,-16($a1)
    ld         $t1,-32($a0)
    sd         $t0,-24($a1)
    sd         $t1,-32($a1)
    addi       $a1,$a1,-32
    bnel       $a1, $v0, .L000013ac
    addi       $a0,$a0,-32
    jr         $ra
    move       $v0,$t8

glabel __sysad_wbflush
    sync
    lui        $v0,0xb400
    jr         $ra
    ld         $v0,0($v0)

glabel dummyret0_func
    jr         $ra
    move       $v0,$zero

glabel dummyret1_func
    jr         $ra
    li         $v0,1

glabel _get_timestamp
    j          get_r4k_counter
    nop

glabel scrub_memory
    ld         $a4,0($a0)
    jr         $ra
    sd         $a4,0($a0)

glabel tlbgetlo
    mfc0       $t1,c0_entryhi
    andi       $v1,$a1,0x1000
    li         $at,-8192
    sll        $a0,$a0,0x0
    and        $a1,$a1,$at
    or         $t2,$a0,$a1
    mtc0       $t2,c0_entryhi
    tlbp
    mfc0       $t3,c0_index
    nop
    bltz       $t3, .L00001488
    li         $v0,-1
    tlbr
    beqz       $v1, .L00001484
    nop
    mfc0       $v0,c0_entrylo1
    b          .L00001488
    nop
.L00001484:
    mfc0       $v0,c0_entrylo0
.L00001488:
    mtc0       $t1,c0_entryhi
    jr         $ra
    nop

glabel getcachesz
    mfc0       $v1,c0_config
    lui        $at,0x7
    and        $v1,$v1,$at
    dsrl       $v1,$v1,0x10
    daddi      $v1,$v1,19
    li         $v0,1
    jr         $ra
    dsllv      $v0,$v0,$v1

glabel get_r10k_config
    mfc0       $v0,c0_config
    jr         $ra
    nop

glabel set_r10k_config
    mtc0       $a0,c0_config
    jr         $ra
    nop

glabel clr_r4kcount_intr
    mtc0       $zero,c0_compare
    jr         $ra
    nop

glabel get_r4k_compare
    mfc0       $v0,c0_compare
    jr         $ra
    nop

glabel set_r4k_compare
    mtc0       $a0,c0_compare
    jr         $ra
    nop

glabel _get_r4k_counter
    mfc0       $v0,c0_count
    jr         $ra
    nop

glabel get_r4k_counter
    mfc0       $v0,c0_count
    jr         $ra
    nop

glabel get_r4k_config
    mfc0       $v0,c0_config
    jr         $ra
    nop

glabel wait_for_interrupt
    mfc0       $t2,c0_prid
    andi       $t2,$t2,0xff00
    addiu      $t2,$t2,-8192
    beqz       $t2, .L00001588
    nop
    addiu      $t2,$t2,-256
    beqz       $t2, .L00001588
    nop
    addiu      $t2,$t2,-512
    beqz       $t2, .L00001588
    nop
    addiu      $t2,$t2,-1024
    beqz       $t2, .L00001588
    nop
    addiu      $t2,$t2,-256
    bnez       $t2, .L000015a4
    nop
.L00001588:
    mfc0       $a1,c0_sr
    mtc0       $zero,c0_sr
    lbu        $t1,0($a0)
    beqz       $t1, .L000015ac
    nop
    mtc0       $a1,c0_sr
    nop
.L000015a4:
    jr         $ra
    nop

glabel wait_for_interrupt_fix_loc
.L000015ac:
    mtc0       $a1,c0_sr
    wait
    jr         $ra
    nop

glabel in_cksum_sub
    move       $v0,$a2
    bnez       $a1, .L000015e8
    andi       $v1,$a0,0x7
    jr         $ra
    andi       $v1,$a0,0x7
.L000015e8:
    beqz       $v1, .L000016dc
    andi       $v1,$a0,0x3
    beqz       $v1, .L0000165c
    andi       $v1,$a0,0x1
    beqz       $v1, .L00001618
    nop
    lbu        $t0,0($a0)
    daddiu     $a0,$a0,1
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-1
.L00001618:
    slti       $at,$a1,2
    bnez       $at, .L000019a4
    andi       $v1,$a1,0x1
    lhu        $t0,0($a0)
    daddiu     $a0,$a0,2
    daddu      $v0,$v0,$t0
    addiu      $a1,$a1,-2
    slti       $at,$a1,2
    bnez       $at, .L000019a4
    andi       $v1,$a1,0x1
    andi       $v1,$a0,0x2
    beqz       $v1, .L0000165c
    nop
    lhu        $t0,0($a0)
    daddiu     $a0,$a0,2
    daddu      $v0,$v0,$t0
    addiu      $a1,$a1,-2
.L0000165c:
    slti       $at,$a1,4
    bnez       $at, .L0000197c
    andi       $v1,$a1,0x2
    lwu        $t0,0($a0)
    daddiu     $a0,$a0,4
    daddu      $v0,$v0,$t0
    addiu      $a1,$a1,-4
    slti       $at,$a1,4
    bnez       $at, .L0000197c
    andi       $v1,$a1,0x2
    andi       $v1,$a0,0x4
    beqz       $v1, .L000016a0
    nop
    lwu        $t0,0($a0)
    daddiu     $a0,$a0,4
    daddu      $v0,$v0,$t0
    addiu      $a1,$a1,-4
.L000016a0:
    dsrl32     $v1,$v0,0x0
    lui        $t3,0xffff
    dsrl32     $t3,$t3,0x0
    and        $v0,$v0,$t3
    daddu      $v0,$v0,$v1
    dsrl32     $t0,$v0,0x0
    addu       $v0,$v0,$t0
    dsrl       $v1,$v0,0x10
    andi       $v1,$v1,0xffff
    andi       $v0,$v0,0xffff
    daddu      $v0,$v0,$v1
    dsrl       $t0,$v0,0x10
    andi       $t0,$t0,0xffff
    daddu      $v0,$v0,$t0
    andi       $v0,$v0,0xffff
.L000016dc:
    slti       $at,$a1,128
    bnez       $at, .L00001804
    andi       $v1,$a1,0x40

glabel in_cksum_pref
.L000016e8:
    .word      0xcc800180
    ld         $t0,0($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,8($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,16($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,24($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    ld         $t0,32($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,40($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,48($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,56($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    ld         $t0,64($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,72($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,80($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,88($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    ld         $t0,96($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,104($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,112($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,120($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-128
    slti       $at,$a1,128
    beqz       $at, .L000016e8
    daddiu     $a0,$a0,128
    beqz       $a1, .L000019c4
    andi       $v1,$a1,0x40
.L00001804:
    beqz       $v1, .L0000189c
    andi       $v1,$a1,0x20
    ld         $t0,0($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,8($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,16($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,24($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    ld         $t0,32($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,40($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,48($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,56($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-64
    daddiu     $a0,$a0,64
    beqz       $a1, .L000019c4
    andi       $v1,$a1,0x20
.L0000189c:
    beqz       $v1, .L000018f4
    andi       $v1,$a1,0x10
    ld         $t0,0($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,8($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    ld         $t2,16($a0)
    daddu      $v0,$v0,$t2
    sltu       $v1,$v0,$t2
    daddu      $v0,$v0,$v1
    ld         $t3,24($a0)
    daddu      $v0,$v0,$t3
    sltu       $v1,$v0,$t3
    daddu      $v0,$v0,$v1
    daddiu     $a0,$a0,32
    addiu      $a1,$a1,-32
    beqz       $a1, .L000019c4
    andi       $v1,$a1,0x10
.L000018f4:
    beqz       $v1, .L0000192c
    andi       $v1,$a1,0x8
    ld         $t0,0($a0)
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    ld         $t1,8($a0)
    daddu      $v0,$v0,$t1
    sltu       $v1,$v0,$t1
    daddu      $v0,$v0,$v1
    daddiu     $a0,$a0,16
    addiu      $a1,$a1,-16
    beqz       $a1, .L000019c4
    andi       $v1,$a1,0x8
.L0000192c:
    beqz       $v1, .L00001954
    andi       $v1,$a1,0x4
    ld         $t0,0($a0)
    daddiu     $a0,$a0,8
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-8
    beqz       $a1, .L000019c4
    andi       $v1,$a1,0x4
.L00001954:
    beqz       $v1, .L0000197c
    andi       $v1,$a1,0x2
    lwu        $t0,0($a0)
    daddiu     $a0,$a0,4
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-4
    beqz       $a1, .L000019c4
    andi       $v1,$a1,0x2
.L0000197c:
    beqz       $v1, .L000019a4
    andi       $v1,$a1,0x1
    lhu        $t0,0($a0)
    daddiu     $a0,$a0,2
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
    addiu      $a1,$a1,-2
    beqz       $a1, .L000019c4
    andi       $v1,$a1,0x1
.L000019a4:
    beqz       $v1, .L000019c4
    nop
    lbu        $t0,0($a0)
    daddiu     $a0,$a0,1
    dsll       $t0,$t0,0x8
    daddu      $v0,$v0,$t0
    sltu       $v1,$v0,$t0
    daddu      $v0,$v0,$v1
.L000019c4:
    dsrl32     $v1,$v0,0x0
    lui        $t3,0xffff
    dsrl32     $t3,$t3,0x0
    and        $v0,$v0,$t3
    daddu      $v0,$v0,$v1
    dsrl32     $t0,$v0,0x0
    addu       $v0,$v0,$t0
    dsrl       $v1,$v0,0x10
    andi       $v1,$v1,0xffff
    andi       $v0,$v0,0xffff
    daddu      $v0,$v0,$v1
    dsrl       $t0,$v0,0x10
    andi       $t0,$t0,0xffff
    daddu      $v0,$v0,$t0
    jr         $ra
    andi       $v0,$v0,0xffff

glabel start
    lui        $gp,0x0
    lui        $sp,0x0
    addiu      $gp,$gp,0
    addiu      $sp,$sp,0
    lw         $sp,0($sp)
    addiu      $at,$gp,0
    sw         $a0,0($at)
    addiu      $at,$gp,0
    sw         $a1,0($at)
    addiu      $at,$gp,0
    sw         $a2,0($at)
    addiu      $a0,$gp,0
    addiu      $a1,$gp,0
    addiu      $a2,$gp,0
    lui        $a3,0x0
    lw         $a0,0($a0)
    lw         $a1,0($a1)
    lw         $a2,0($a2)
    jal        _check_dbg
    addiu      $a3,$a3,6752
    lui        $gp,0x0
    addiu      $gp,$gp,0
    addiu      $a1,$gp,0
    addiu      $a2,$gp,0
    addiu      $v0,$gp,0
    lw         $v0,0($v0)
    lw         $a1,0($a1)
    lw         $a2,0($a2)
    lui        $sp,0x0
    addiu      $sp,$sp,0
    beq        $zero, $v0, .L00001a9c
    lw         $sp,0($sp)
    lui        $a0,0x0
    jal        debug
    addiu      $a0,$a0,0
.L00001a9c:
    addiu      $a0,$gp,0
    lw         $a0,0($a0)
    sd         $zero,8($sp)
    sd         $zero,0($sp)
    mtc0       $zero,c0_cause
    mtc0       $zero,c0_entryhi
    mtc0       $zero,c0_sr
    nop
    mfc0       $a3,c0_prid
    andi       $a3,$a3,0xff00
    addiu      $a3,$a3,-8192
    beqz       $a3, .L00001b1c
    nop
    addiu      $a3,$a3,-256
    beqz       $a3, .L00001b1c
    nop
    addiu      $a3,$a3,-512
    beqz       $a3, .L00001b1c
    nop
    addiu      $a3,$a3,-1024
    beqz       $a3, .L00001b1c
    nop
    addiu      $a3,$a3,-256
    beqz       $a3, .L00001b1c
    nop
    nop
    mtc0       $zero,c0_watchlo
    mtc0       $zero,c0_watchhi
.L00001b1c:
    li         $a3,0
    mtc0       $a3,c0_pagemask
    li         $a3,10
    mtc0       $a3,c0_wired
    li         $v0,511
    dsll       $v0,$v0,0x18
    mtc0       $v0,c0_context
    lui        $gp,0x0
    jal        mlsetup
    addiu      $gp,$gp,0
    move       $sp,$v0
    li         $v0,1
    jal        main
    sb         $v0,-24513($zero)

glabel proc1
    ld         $k1,-23880($zero)
    lui        $v0,0xb400
    sw         $zero,-23840($zero)
    ori        $v0,$v0,0x18
    sd         $k1,0($v0)
    li         $v0,0x8713
    mtc0       $v0,c0_sr
    lui        $k1,0x1000
    sb         $zero,-24513($zero)
    mtc0       $k1,c0_epc
    eret

glabel mlclosure
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lw         $t0,0($t0)
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lw         $t0,0($t0)
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lw         $t0,0($t0)
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lw         $t0,0($t0)
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lw         $t0,0($t0)
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lw         $t0,0($t0)

glabel silence_all_audio
    jr         $ra
    nop

glabel icode
    lui        $a0,0x0
    lui        $v0,0x0
    addiu      $a0,$a0,0
    addiu      $v0,$v0,0
    subu       $a0,$a0,$v0
    lui        $at,0x1000
    lui        $a1,0x0
    lui        $v0,0x0
    ori        $at,$at,0x200
    addiu      $a1,$a1,0
    addiu      $v0,$v0,0
    subu       $a1,$a1,$v0
    addu       $a0,$a0,$at
    addu       $a1,$a1,$at
    sw         $a0,0($a1)
    move       $a2,$zero
    li         $v0,1059
    syscall
    move       $a0,$v0
    li         $v0,1001
    syscall
.L00001c44:
    b          .L00001c44
    nop

glabel eicode
    nop

glabel call_prom_cached
    lui        $t0,0x0
    addiu      $t0,$t0,0
    daddi      $t0,$t0,7
    li         $t1,-8
    and        $t0,$t0,$t1
    sd         $ra,0($t0)
    sd         $s0,8($t0)
    sd         $s1,16($t0)
    sd         $s2,24($t0)
    sd         $s3,32($t0)
    sd         $s4,40($t0)
    sd         $s5,48($t0)
    sd         $s6,56($t0)
    sd         $s7,64($t0)
    sd         $s8,72($t0)
    sd         $sp,80($t0)
    lui        $t1,0x8000
    lui        $ra,0x0
    addiu      $ra,$ra,7360
    dsll32     $ra,$ra,0x3
    dsrl32     $ra,$ra,0x3
    or         $ra,$ra,$t1
    daddiu     $sp,$sp,-64
    dsll32     $sp,$sp,0x3
    dsrl32     $sp,$sp,0x3
    or         $sp,$sp,$t1
    jr         $a4
    nop
    mfc0       $t0,c0_sr
    ori        $t0,$t0,0x80
    mtc0       $t0,c0_sr
    lui        $t0,0x0
    addiu      $t0,$t0,0
    daddi      $t0,$t0,7
    li         $t1,-8
    and        $t0,$t0,$t1
    ld         $ra,0($t0)
    ld         $s0,8($t0)
    ld         $s1,16($t0)
    ld         $s2,24($t0)
    ld         $s3,32($t0)
    ld         $s4,40($t0)
    ld         $s5,48($t0)
    ld         $s6,56($t0)
    ld         $s7,64($t0)
    ld         $s8,72($t0)
    ld         $sp,80($t0)
    nop
    jr         $ra
    nop
    addiu      $sp,$sp,-48
    sd         $s1,16($sp)
    sd         $s3,0($sp)
    sd         $ra,8($sp)
    jal        strlen
    move       $s3,$a0
    move       $s1,$zero
    sd         $s2,24($sp)
    move       $s2,$s3
    beqz       $v0, .L00001d98
    sd         $s0,32($sp)
    move       $s0,$zero
    move       $s1,$zero
    addiu      $s0,$s0,1
.L00001d78:
    lbu        $at,0($s2)
    addiu      $s2,$s2,1
    move       $a0,$s3
    jal        strlen
    addu       $s1,$s1,$at
    sltu       $v0,$s0,$v0
    bnez       $v0, .L00001d78
    addiu      $s0,$s0,1
.L00001d98:
    ld         $s2,24($sp)
    ld         $ra,8($sp)
    ld         $s3,0($sp)
    ld         $s0,32($sp)
    move       $v0,$s1
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
    lw         $a5,2344($a0)
    addiu      $sp,$sp,-48
    move       $a3,$a0
    addiu      $a4,$a0,2347
    sd         $s3,8($sp)
    move       $a2,$zero
    move       $s3,$a0
    sd         $s1,0($sp)
.L00001dd8:
    addiu      $a3,$a3,4
    lw         $v0,-4($a3)
    sltu       $at,$a4,$a3
    addu       $a2,$v0,$a2
    bnez       $at, .L00001e14
    addiu      $a3,$a3,4
    lw         $a0,-4($a3)
    sltu       $v1,$a4,$a3
    addu       $a2,$a0,$a2
    bnez       $v1, .L00001e14
    addiu      $a3,$a3,4
    lw         $a1,-4($a3)
    sltu       $a6,$a4,$a3
    beqz       $a6, .L00001dd8
    addu       $a2,$a1,$a2
.L00001e14:
    negu       $a7,$a2
    sw         $a7,2348($s3)
    sd         $s0,16($sp)
    move       $s1,$zero
    move       $s0,$s3
    sd         $s2,24($sp)
    move       $s2,$zero
    blez       $a5, .L00001e58
    sd         $ra,32($sp)
.L00001e38:
    jal        .text
    lw         $a0,32($s0)
    lw         $t0,2344($s3)
    addiu      $s2,$s2,1
    slt        $t0,$s2,$t0
    addiu      $s0,$s0,36
    bnez       $t0, .L00001e38
    addu       $s1,$v0,$s1
.L00001e58:
    ld         $s2,24($sp)
    ld         $s0,16($sp)
    ld         $ra,32($sp)
    negu       $t1,$s1
    ld         $s1,0($sp)
    sw         $t1,2352($s3)
    ld         $s3,8($sp)
    jr         $ra
    addiu      $sp,$sp,48
    addiu      $sp,$sp,-48
    move       $v0,$a0
    addiu      $a3,$a0,2351
    sd         $s2,8($sp)
    move       $s2,$a0
    sd         $s0,0($sp)
    move       $s0,$zero
.L00001e98:
    addiu      $v0,$v0,4
    lw         $v1,-4($v0)
    sltu       $at,$a3,$v0
    addu       $s0,$v1,$s0
    bnez       $at, .L00001ed4
    addiu      $v0,$v0,4
    lw         $a1,-4($v0)
    sltu       $a0,$a3,$v0
    addu       $s0,$a1,$s0
    bnez       $a0, .L00001ed4
    addiu      $v0,$v0,4
    lw         $a2,-4($v0)
    sltu       $a4,$a3,$v0
    beqz       $a4, .L00001e98
    addu       $s0,$a2,$s0
.L00001ed4:
    beqz       $s0, .L00001ee4
    move       $v0,$s0
    b          .L00001f38
    ld         $s0,0($sp)
.L00001ee4:
    lw         $a5,2344($s2)
    sd         $s1,16($sp)
    move       $s1,$s2
    sd         $s3,24($sp)
    move       $s3,$zero
    blez       $a5, .L00001f20
    sd         $ra,32($sp)
.L00001f00:
    jal        .text
    lw         $a0,32($s1)
    lw         $a6,2344($s2)
    addiu      $s3,$s3,1
    slt        $a6,$s3,$a6
    addiu      $s1,$s1,36
    bnez       $a6, .L00001f00
    addu       $s0,$v0,$s0
.L00001f20:
    ld         $ra,32($sp)
    lw         $v0,2352($s2)
    ld         $s3,24($sp)
    ld         $s1,16($sp)
    addu       $v0,$v0,$s0
    ld         $s0,0($sp)
.L00001f38:
    ld         $s2,8($sp)
    jr         $ra
    addiu      $sp,$sp,48
    lbu        $v0,0($a0)
    li         $a5,61
    beq        $a5, $v0, .L00001f8c
    move       $a4,$a0
    beqz       $v0, .L00001f8c
    move       $a3,$zero
    slti       $at,$a3,34
.L00001f60:
    beqz       $at, .L00001fa0
    addiu      $a3,$a3,1
    lbu        $v0,1($a4)
    beq        $a5, $v0, .L00001f8c
    addiu      $a4,$a4,1
    bnez       $v0, .L00001f60
    slti       $at,$a3,34
.L00001f7c:
    sw         $zero,0($a1)
    move       $v0,$zero
    jr         $ra
    nop
.L00001f8c:
    beqz       $v0, .L00001f7c
    addiu      $v0,$a4,1
    sw         $v0,0($a1)
    jr         $ra
    li         $v0,1
.L00001fa0:
    sw         $zero,0($a1)
    jr         $ra
    move       $v0,$zero
    lbu        $at,0($a1)
    li         $a7,31
    addiu      $a5,$a1,1
    addiu      $a4,$a0,1
    li         $a6,61
    move       $v0,$zero
    beqz       $at, .L00001ff4
    sb         $at,0($a0)
    move       $v0,$zero
.L00001fd0:
    lbu        $a2,0($a5)
    addiu      $v0,$v0,1
    beq        $a6, $a2, .L00001ffc
    addiu      $a5,$a5,1
    beq        $v0, $a7, .L00001ffc
    nop
    addiu      $a4,$a4,1
    bnez       $a2, .L00001fd0
    sb         $a2,-1($a4)
.L00001ff4:
    jr         $ra
    nop
.L00001ffc:
    jr         $ra
    sb         $zero,0($a4)
    lw         $at,8($a0)
    lui        $v0,0x5348
    ori        $v0,$v0,0x4452
    bne        $at, $v0, .L00002030
    andi       $v0,$a0,0xff
    bnez       $v0, .L00002034
    move       $v0,$zero
    lw         $v1,12($a0)
    andi       $v1,$v1,0x3
    beqz       $v1, .L0000203c
    addiu      $v0,$a0,64
.L00002030:
    move       $v0,$zero
.L00002034:
    jr         $ra
    nop
.L0000203c:
    beq        $v0, $a0, .L00002080
    move       $a3,$zero
.L00002044:
    addiu      $a0,$a0,4
    lw         $a1,-4($a0)
    addu       $a3,$a1,$a3
    beq        $v0, $a0, .L00002078
    addiu      $a0,$a0,4
    lw         $a2,-4($a0)
    addu       $a3,$a2,$a3
    beq        $v0, $a0, .L00002078
    nop
    lw         $a4,0($a0)
    addiu      $a0,$a0,4
    bne        $v0, $a0, .L00002044
    addu       $a3,$a4,$a3
.L00002078:
    jr         $ra
    sltiu      $v0,$a3,1
.L00002080:
    b          .L00002078
    move       $a3,$zero
    addiu      $sp,$sp,-48
    sd         $s2,8($sp)
    lui        $s2,0xbfc8
    sd         $s1,16($sp)
    lui        $s1,0x5348
    sd         $s0,24($sp)
    li         $s0,-4
    sd         $ra,32($sp)
    and        $s0,$a0,$s0
    ori        $s1,$s1,0x4452
.L000020b0:
    lw         $t8,0($s0)
    beq        $t8, $s1, .L000020d8
    addiu      $a0,$s0,-8
.L000020bc:
    addiu      $s0,$s0,4
    sltu       $t9,$s2,$s0
    bnez       $t9, .L000020f8
    move       $v0,$zero
    lw         $ra,0($s0)
    bne        $ra, $s1, .L000020bc
    addiu      $a0,$s0,-8
.L000020d8:
    jal        .text
    sd         $a0,0($sp)
    beqz       $v0, .L00002110
    nop
    lw         $at,4($s0)
    beqz       $at, .L00002118
    move       $v0,$zero
    ld         $v0,0($sp)
.L000020f8:
    ld         $ra,32($sp)
.L000020fc:
    ld         $s0,24($sp)
    ld         $s1,16($sp)
    ld         $s2,8($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00002110:
    b          .L000020b0
    addiu      $s0,$s0,4
.L00002118:
    b          .L000020fc
    ld         $ra,32($sp)
    addiu      $sp,$sp,-32
    sd         $s0,16($sp)
    sd         $s1,0($sp)
    move       $s1,$a0
    sd         $ra,8($sp)
    jal        .text
    lui        $a0,0xbfc0
    beqz       $v0, .L00002174
    move       $s0,$v0
.L00002144:
    move       $a1,$s1
    lw         $a2,16($s0)
    addiu      $a0,$s0,20
    jal        strncmp
    srl        $a2,$a2,0x18
    beqz       $v0, .L00002190
    nop
    lw         $a0,12($s0)
    jal        .text
    addu       $a0,$a0,$s0
    bnez       $v0, .L00002144
    move       $s0,$v0
.L00002174:
    move       $s0,$zero
    ld         $ra,8($sp)
.L0000217c:
    ld         $s1,0($sp)
    move       $v0,$s0
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00002190:
    b          .L0000217c
    ld         $ra,8($sp)
    addiu      $sp,$sp,-48
    sd         $s2,16($sp)
    lw         $a0,-32748($gp)
    sd         $ra,24($sp)
    li         $v0,1
    sd         $s0,8($sp)
    lui        $s0,0x0
    sd         $s1,32($sp)
    beqz       $a0, .L00002330
    addiu      $s0,$s0,0
    sw         $v0,2356($s0)
    lbu        $s1,0($a0)
    move       $s2,$s0
    beqz       $s1, .L0000229c
    move       $s1,$a0
.L000021d4:
    lw         $t8,-32744($gp)
    sltu       $t8,$t8,$s1
    bnez       $t8, .L000022bc
    li         $a0,4
    move       $a0,$s1
    jal        .text
    addiu      $a1,$sp,0
    beqz       $v0, .L000022d4
    li         $a0,4
    jal        strlen
    lw         $a0,0($sp)
    sltiu      $t9,$v0,4097
    beqz       $t9, .L000022ec
    li         $a0,4
    move       $a0,$s2
    jal        .text
    move       $a1,$s1
    lw         $at,2340($s0)
    lw         $a0,0($sp)
    addu       $at,$at,$v0
    addiu      $at,$at,1
    jal        strlen
    sw         $at,2340($s0)
    lw         $v1,2340($s0)
    lw         $a0,0($sp)
    addu       $v0,$v1,$v0
    addiu      $v0,$v0,1
    jal        strlen
    sw         $v0,2340($s0)
    addiu      $a0,$v0,1
    jal        kmem_alloc
    move       $a1,$zero
    beqz       $v0, .L00002304
    sw         $v0,32($s2)
    move       $a0,$v0
    jal        strcpy
    lw         $a1,0($sp)
    lw         $a0,2344($s0)
    addiu      $a0,$a0,1
    sw         $a0,2344($s0)
    jal        strlen
    move       $a0,$s1
    addu       $s1,$v0,$s1
    lbu        $t8,1($s1)
    addiu      $s2,$s2,36
    bnez       $t8, .L000021d4
    addiu      $s1,$s1,1
    lw         $t9,2356($s0)
.L00002294:
    beqz       $t9, .L000022a8
    ld         $ra,24($sp)
.L0000229c:
    jal        .text
    move       $a0,$s0
.L000022a4:
    ld         $ra,24($sp)
.L000022a8:
    ld         $s2,16($sp)
    ld         $s0,8($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000022bc:
    lui        $a1,0x0
    sw         $zero,2356($s0)
    jal        cmn_err
    addiu      $a1,$a1,192
    b          .L00002294
    lw         $t9,2356($s0)
.L000022d4:
    lui        $a1,0x0
    sw         $zero,2356($s0)
    jal        cmn_err
    addiu      $a1,$a1,264
    b          .L00002294
    lw         $t9,2356($s0)
.L000022ec:
    lui        $a1,0x0
    sw         $zero,2356($s0)
    jal        cmn_err
    addiu      $a1,$a1,336
    b          .L00002294
    lw         $t9,2356($s0)
.L00002304:
    jal        strlen
    lw         $a0,0($sp)
    move       $a3,$s2
    addiu      $a2,$v0,1
    li         $a0,4
    lui        $a1,0x0
    lw         $a4,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,408
    b          .L000022a4
    sw         $zero,2356($s0)
.L00002330:
    li         $a0,4
    lui        $a1,0x0
    lui        $a2,0x0
    addiu      $a1,$a1,120
    jal        cmn_err
    sw         $zero,2356($a2)
    b          .L000022a8
    ld         $ra,24($sp)

glabel init_flash_rom
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        flash_sync_globals
    nop
    li         $a1,2364
    lui        $a0,0x0
    jal        bzero
    addiu      $a0,$a0,0
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
    lui        $a0,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        .text
    addiu      $a0,$a0,504
    lw         $a1,-32736($gp)
    beqz       $a1, .L000023a8
    move       $a4,$v0
.L0000239c:
    ld         $ra,0($sp)
.L000023a0:
    jr         $ra
    addiu      $sp,$sp,16
.L000023a8:
    sw         $zero,-32736($gp)
    sw         $zero,-32732($gp)
    li         $a2,1
    beqz       $v0, .L00002458
    sw         $a2,-32736($gp)
.L000023bc:
    beqz       $a4, .L000023a0
    ld         $ra,0($sp)
    lw         $a3,16($a4)
    srl        $a3,$a3,0x10
    andi       $a3,$a3,0xff
    beqz       $a3, .L000023a0
    ld         $ra,0($sp)
    addiu      $a2,$a4,52
    lbu        $v0,52($a4)
    slti       $v1,$v0,48
    bnez       $v1, .L0000239c
    slti       $v0,$v0,58
    beqz       $v0, .L000023a0
    ld         $ra,0($sp)
    lbu        $a3,52($a4)
    slti       $a0,$a3,58
    beqz       $a0, .L00002440
    lw         $v0,-32736($gp)
    sll        $v1,$v0,0x2
.L00002408:
    addu       $v0,$v1,$v0
    sll        $v0,$v0,0x1
    addu       $v0,$a3,$v0
    lbu        $a3,1($a2)
    slti       $a1,$a3,48
    addiu      $a2,$a2,1
    addiu      $v0,$v0,-48
    bnez       $a1, .L0000243c
    slti       $a4,$a3,58
    bnez       $a4, .L00002408
    sll        $v1,$v0,0x2
    b          .L00002440
    sw         $v0,-32736($gp)
.L0000243c:
    sw         $v0,-32736($gp)
.L00002440:
    lbu        $a0,0($a2)
    li         $a1,46
    beq        $a0, $a1, .L0000246c
    addiu      $a2,$a2,1
    b          .L0000239c
    sw         $zero,-32736($gp)
.L00002458:
    lui        $a0,0x0
    jal        .text
    addiu      $a0,$a0,488
    b          .L000023bc
    move       $a4,$v0
.L0000246c:
    lbu        $a3,0($a2)
    slti       $a1,$a3,48
    bnez       $a1, .L000024ec
    slti       $v0,$a3,58
    beqz       $v0, .L000024ec
    lw         $v0,-32732($gp)
    sll        $v1,$v0,0x2
.L00002488:
    addu       $v0,$v1,$v0
    sll        $v0,$v0,0x1
    addu       $v0,$a3,$v0
    lbu        $a3,1($a2)
    addiu      $v0,$v0,-48
    sll        $v1,$v0,0x2
    slti       $a4,$a3,48
    sw         $v0,-32732($gp)
    addu       $v0,$v1,$v0
    bnez       $a4, .L000024e4
    slti       $a4,$a3,58
    beqz       $a4, .L000024e4
    sll        $v0,$v0,0x1
    addu       $v0,$a3,$v0
    lbu        $a3,2($a2)
    slti       $a0,$a3,48
    addiu      $a2,$a2,2
    addiu      $v0,$v0,-48
    sw         $v0,-32732($gp)
    bnez       $a0, .L000024e4
    slti       $a4,$a3,58
    bnez       $a4, .L00002488
    sll        $v1,$v0,0x2
.L000024e4:
    b          .L000023a0
    ld         $ra,0($sp)
.L000024ec:
    b          .L0000239c
    sw         $zero,-32736($gp)

glabel update_flash_version
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        .text
    sw         $zero,-32736($gp)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel load_nvram_tab
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        init_flash_rom
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel flash_version
    beqz       $a0, .L00002538
    lw         $v0,-32736($gp)
    lw         $v0,-32732($gp)
.L00002538:
    jr         $ra
    nop
    lui        $v0,0xbf31
    ld         $at,8($v0)
    andi       $at,$at,0xff
    ori        $at,$at,0x1
    jr         $ra
    sd         $at,8($v0)
    lui        $v0,0xbf31
    ld         $at,8($v0)
    li         $v1,-2
    andi       $at,$at,0xff
    and        $at,$at,$v1
    jr         $ra
    sd         $at,8($v0)

glabel flash_write_sector
    addiu      $sp,$sp,-64
    sd         $ra,24($sp)
    sd         $s0,32($sp)
    sd         $s4,16($sp)
    andi       $at,$a0,0xff
    move       $s4,$a0
    sd         $s3,8($sp)
    move       $s3,$a1
    bnez       $at, .L00002678
    sd         $s1,40($sp)
    jal        splecc
    nop
    sd         $v0,0($sp)
    jal        .text
    sd         $s2,48($sp)
    move       $s0,$s3
    move       $s1,$s4
    move       $s2,$zero
.L000025bc:
    lbu        $a0,0($s0)
    jal        pciio_pio_write8
    move       $a1,$s1
    addiu      $s2,$s2,1
    slti       $v0,$s2,256
    addiu      $s0,$s0,1
    bnez       $v0, .L000025bc
    addiu      $s1,$s1,1
    jal        .text
    nop
    ld         $s2,48($sp)
    jal        splxecc
    ld         $a0,0($sp)
    jal        us_delay
    li         $a0,7000
    li         $s0,1000
    addiu      $s1,$s4,255
    jal        pciio_pio_read8
    move       $a0,$s1
    lbu        $v1,255($s3)
    andi       $a0,$v0,0xff
    beq        $v1, $a0, .L00002640
    move       $v0,$zero
.L00002618:
    jal        us_delay
    li         $a0,1000
    beqz       $s0, .L0000265c
    addiu      $s0,$s0,-1
    jal        pciio_pio_read8
    move       $a0,$s1
    lbu        $a1,255($s3)
    andi       $a2,$v0,0xff
    bne        $a1, $a2, .L00002618
    move       $v0,$zero
.L00002640:
    ld         $s3,8($sp)
    ld         $ra,24($sp)
    ld         $s4,16($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0000265c:
    li         $a0,4
    move       $a2,$s4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,552
    b          .L00002640
    li         $v0,1
.L00002678:
    li         $a0,4
    move       $a2,$s4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,512
    b          .L00002640
    li         $v0,1

glabel flash_read_sector
    addiu      $sp,$sp,-32
    sd         $s2,0($sp)
    sd         $s0,8($sp)
    andi       $at,$a0,0xff
    sd         $ra,16($sp)
    li         $v0,1
    beqz       $at, .L000026cc
    sd         $s1,24($sp)
.L000026b4:
    ld         $ra,16($sp)
    ld         $s2,0($sp)
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000026cc:
    move       $s0,$a0
    move       $s1,$a1
    move       $s2,$zero
.L000026d8:
    jal        pciio_pio_read8
    move       $a0,$s0
    addiu      $s2,$s2,1
    slti       $v1,$s2,256
    addiu      $s1,$s1,1
    addiu      $s0,$s0,1
    bnez       $v1, .L000026d8
    sb         $v0,-1($s1)
    b          .L000026b4
    move       $v0,$zero
    addiu      $sp,$sp,-48
    sd         $s2,16($sp)
    move       $s2,$a0
    sd         $s4,0($sp)
    sd         $ra,8($sp)
    jal        strlen
    move       $s4,$a1
    sd         $s1,40($sp)
    sltiu      $at,$v0,32
    sd         $s0,32($sp)
    beqz       $at, .L0000295c
    sd         $s3,24($sp)
    lui        $s0,0x0
    addiu      $s0,$s0,0
    lw         $v0,2344($s0)
    blez       $v0, .L0000276c
    move       $s1,$s0
    move       $s3,$zero
.L00002748:
    move       $a0,$s1
    jal        strcmp
    move       $a1,$s2
    beqz       $v0, .L00002890
    lw         $v0,2344($s0)
    addiu      $s3,$s3,1
    slt        $t8,$s3,$v0
    bnez       $t8, .L00002748
    addiu      $s1,$s1,36
.L0000276c:
    slti       $t9,$v0,64
    beqz       $t9, .L00002940
    li         $a0,1
    jal        strlen
    move       $a0,$s2
    move       $s1,$v0
    jal        strlen
    move       $a0,$s4
    lw         $ra,0($gp)
    lw         $at,2340($s0)
    lw         $ra,12($ra)
    addu       $at,$at,$s1
    addu       $at,$v0,$at
    addiu      $ra,$ra,-72
    addiu      $at,$at,2
    sltu       $ra,$ra,$at
    bnez       $ra, .L00002940
    li         $a0,1
    jal        strlen
    move       $a0,$s4
    addiu      $a0,$v0,1
    jal        kmem_alloc
    move       $a1,$zero
    beqz       $v0, .L0000297c
    lw         $v1,2344($s0)
    addiu      $v1,$v1,1
    sll        $at,$v1,0x3
    addu       $at,$at,$v1
    sll        $at,$at,0x2
    move       $a0,$v0
    sw         $v1,2344($s0)
    addu       $at,$s0,$at
    move       $a1,$s4
    jal        strcpy
    sw         $v0,-4($at)
    jal        strlen
    move       $a0,$s4
    lw         $a2,2344($s0)
    lw         $a1,2340($s0)
    sll        $a0,$a2,0x3
    addu       $a1,$a1,$v0
    addu       $a0,$a0,$a2
    addiu      $a1,$a1,1
    sll        $a0,$a0,0x2
    sw         $a1,2340($s0)
    move       $a1,$s2
    addu       $a0,$s0,$a0
    jal        strcpy
    addiu      $a0,$a0,-36
    jal        strlen
    move       $a0,$s2
    lw         $a3,2340($s0)
    addu       $a3,$a3,$v0
    addiu      $a3,$a3,1
    sw         $a3,2340($s0)
.L00002848:
    li         $a4,1
    sw         $a4,2360($s0)
    jal        .text
    move       $a0,$s0
    lw         $a5,0($gp)
    beqz       $a5, .L00002870
    move       $v0,$zero
    jal        flash_write_env
    nop
    move       $v0,$zero
.L00002870:
    ld         $s1,40($sp)
    ld         $s0,32($sp)
    ld         $ra,8($sp)
    ld         $s3,24($sp)
    ld         $s2,16($sp)
    ld         $s4,0($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00002890:
    jal        strlen
    move       $a0,$s4
    move       $s3,$v0
    jal        strlen
    lw         $a0,32($s1)
    lw         $a6,0($gp)
    lw         $a7,2340($s0)
    lw         $a6,12($a6)
    addu       $a7,$a7,$s3
    subu       $a7,$a7,$v0
    addiu      $a6,$a6,-72
    sltu       $a6,$a6,$a7
    bnez       $a6, .L000029a4
    li         $a0,1
    jal        strlen
    move       $a0,$s4
    addiu      $a0,$v0,1
    jal        kmem_alloc
    move       $a1,$zero
    beqz       $v0, .L000029c0
    move       $s3,$v0
    jal        strlen
    lw         $a0,32($s1)
    lw         $a7,2340($s0)
    subu       $a7,$a7,$v0
    addiu      $a7,$a7,-1
    sw         $a7,2340($s0)
    jal        strlen
    lw         $a0,32($s1)
    addiu      $a1,$v0,1
    jal        kmem_free
    lw         $a0,32($s1)
    move       $a0,$s3
    sw         $s3,32($s1)
    jal        strcpy
    move       $a1,$s4
    jal        strlen
    lw         $a0,32($s1)
    lw         $t0,2340($s0)
    addu       $t0,$t0,$v0
    addiu      $t0,$t0,1
    b          .L00002848
    sw         $t0,2340($s0)
    li         $a0,1
.L00002940:
    move       $a2,$s2
    move       $a3,$s4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,656
    b          .L00002870
    li         $v0,-1
.L0000295c:
    li         $a3,31
    move       $a2,$s2
    li         $a0,1
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,600
    b          .L00002870
    li         $v0,-1
.L0000297c:
    jal        strlen
    move       $a0,$s4
    addiu      $a2,$v0,1
    li         $a0,4
    move       $a3,$s2
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,704
    b          .L00002870
    li         $v0,-1
.L000029a4:
    move       $a2,$s2
    move       $a3,$s4
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,656
    b          .L00002870
    li         $v0,-1
.L000029c0:
    jal        strlen
    move       $a0,$s4
    addiu      $a2,$v0,1
    li         $a0,4
    move       $a3,$s2
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,704
    b          .L00002870
    li         $v0,-1

glabel set_nvram
    addiu      $sp,$sp,-48
    sd         $s4,8($sp)
    move       $s4,$a1
    lui        $a1,0x0
    sd         $s1,0($sp)
    move       $s1,$a0
    addiu      $a1,$a1,120
    sd         $ra,16($sp)
    jal        strcmp
    addiu      $a1,$a1,632
    sd         $s0,40($sp)
    sd         $s3,32($sp)
    beqz       $v0, .L00002b24
    sd         $s2,24($sp)
    lw         $a2,-32740($gp)
.L00002a24:
    beqz       $a2, .L00002b3c
.L00002a28:
    lui        $s2,0x0
    addiu      $s2,$s2,0
    lw         $a3,2356($s2)
    beqz       $a3, .L00002b68
    lui        $a1,0x0
    jal        .text
    move       $a0,$s2
    bnez       $v0, .L00002b64
    lw         $t8,2344($s2)
    blez       $t8, .L00002a84
    lui        $ra,0x0
    move       $s3,$zero
    move       $s0,$s2
.L00002a5c:
    move       $a0,$s0
    jal        strcmp
    move       $a1,$s1
    beqz       $v0, .L00002b08
    lw         $t9,2344($s2)
    addiu      $s3,$s3,1
    slt        $t9,$s3,$t9
    bnez       $t9, .L00002a5c
    addiu      $s0,$s0,36
    lui        $ra,0x0
.L00002a84:
    addiu      $v0,$ra,232
    lw         $ra,232($ra)
    beqz       $ra, .L00002ab8
    move       $a0,$ra
    addiu      $s0,$v0,4
.L00002a98:
    jal        strcmp
    move       $a1,$s1
    beqz       $v0, .L00002acc
    move       $a0,$s1
    lw         $at,0($s0)
    addiu      $s0,$s0,4
    bnez       $at, .L00002a98
    move       $a0,$at
.L00002ab8:
    jal        kopt_find
    move       $a0,$s1
    beqz       $v0, .L00002b00
    nop
    move       $a0,$s1
.L00002acc:
    jal        .text
    move       $a1,$s4
    beqz       $v0, .L00002b54
    move       $a0,$s1
    li         $v0,-1
.L00002ae0:
    ld         $s0,40($sp)
    ld         $s3,32($sp)
    ld         $ra,16($sp)
    ld         $s2,24($sp)
    ld         $s1,0($sp)
    ld         $s4,8($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00002b00:
    b          .L00002ae0
    li         $v0,-1
.L00002b08:
    lw         $a0,32($s0)
    jal        strcmp
    move       $a1,$s4
    bnez       $v0, .L00002acc
    move       $a0,$s1
    b          .L00002ae0
    move       $v0,$zero
.L00002b24:
    jal        strlen
    move       $a0,$s4
    beqz       $v0, .L00002a24
    lw         $a2,-32740($gp)
    b          .L00002ae0
    li         $v0,-2
.L00002b3c:
    jal        .text
    nop
    lw         $v0,-32740($gp)
    addiu      $v0,$v0,1
    b          .L00002a28
    sw         $v0,-32740($gp)
.L00002b54:
    jal        kopt_set
    move       $a1,$s4
    b          .L00002ae0
    move       $v0,$zero
.L00002b64:
    lui        $a1,0x0
.L00002b68:
    li         $a0,1
    addiu      $a1,$a1,120
    jal        cmn_err
    addiu      $a1,$a1,648
    li         $v0,-1
    b          .L00002ae0
    sw         $zero,2356($s2)
    addiu      $sp,$sp,-32
    sd         $s1,24($sp)
    move       $s1,$a0
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s7,16($sp)
    move       $s7,$a1
    sd         $ra,8($sp)
    jal        bzero
    li         $a1,64
    lui        $a0,0x0
    lui        $at,0x5348
    addiu      $a0,$a0,824
    ori        $at,$at,0x4452
    jal        strlen
    sw         $at,8($s1)
    lui        $a0,0x0
    lw         $a1,16($s1)
    lui        $a2,0xff
    addiu      $a0,$a0,828
    ori        $a2,$a2,0xffff
    and        $a1,$a1,$a2
    sll        $a2,$v0,0x18
    or         $a1,$a1,$a2
    jal        strlen
    sw         $a1,16($s1)
    addiu      $a1,$s1,20
    lui        $a0,0x0
    li         $a6,-4
    addiu      $a5,$s7,3
    addiu      $a0,$a0,824
    and        $a5,$a5,$a6
    addiu      $a5,$a5,64
    lw         $a2,16($s1)
    lui        $a4,0xff
    andi       $a3,$v0,0xff
    nor        $a4,$a4,$zero
    sw         $a5,12($s1)
    sll        $a3,$a3,0x10
    and        $a2,$a2,$a4
    or         $a2,$a2,$a3
    sw         $a2,16($s1)
    jal        bcopy
    srl        $a2,$a2,0x18
    lw         $a2,16($s1)
    addiu      $a1,$s1,52
    lui        $a0,0x0
    addiu      $a0,$a0,828
    srl        $a2,$a2,0x10
    ld         $s7,16($sp)
    jal        bcopy
    andi       $a2,$a2,0xff
    addiu      $a2,$s1,60
    move       $a1,$zero
    beq        $a2, $s1, .L00002c9c
    ld         $ra,8($sp)
    move       $a1,$zero
.L00002c68:
    addiu      $s0,$s0,4
    lw         $a3,-4($s0)
    addu       $a1,$a3,$a1
    beq        $a2, $s0, .L00002c9c
    addiu      $s0,$s0,4
    lw         $a4,-4($s0)
    addu       $a1,$a4,$a1
    beq        $a2, $s0, .L00002c9c
    nop
    lw         $a5,0($s0)
    addiu      $s0,$s0,4
    bne        $a2, $s0, .L00002c68
    addu       $a1,$a5,$a1
.L00002c9c:
    ld         $s0,0($sp)
    negu       $a6,$a1
    sw         $a6,60($s1)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
    addiu      $sp,$sp,-32
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        strcpy
    move       $s0,$a1
    jal        strlen
    move       $a0,$s0
    addu       $s1,$v0,$s1
    li         $at,61
    sb         $at,0($s1)
    lw         $a1,32($s0)
    jal        strcpy
    addiu      $a0,$s1,1
    jal        strlen
    lw         $a0,32($s0)
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    addu       $v0,$v0,$s1
    ld         $s1,16($sp)
    addiu      $sp,$sp,32
    sb         $zero,1($v0)
    jr         $ra
    addiu      $v0,$v0,2

glabel flash_body_cksum
    sltu       $at,$a0,$a1
    beqz       $at, .L00002d64
    move       $a4,$zero
    move       $a4,$zero
.L00002d28:
    addiu      $a0,$a0,4
    lw         $v1,-4($a0)
    sltu       $v0,$a0,$a1
    addu       $a4,$v1,$a4
    beqz       $v0, .L00002d64
    addiu      $a0,$a0,4
    lw         $a3,-4($a0)
    sltu       $a2,$a0,$a1
    addu       $a4,$a3,$a4
    beqz       $a2, .L00002d64
    addiu      $a0,$a0,4
    lw         $a5,-4($a0)
    sltu       $a6,$a0,$a1
    bnez       $a6, .L00002d28
    addu       $a4,$a5,$a4
.L00002d64:
    jr         $ra
    negu       $v0,$a4

glabel flash_write_env
    addiu      $sp,$sp,-80
    sd         $s5,8($sp)
    sd         $s1,16($sp)
    sd         $s7,24($sp)
    sd         $s0,32($sp)
    sd         $s4,40($sp)
    sd         $ra,48($sp)
    lw         $at,-32740($gp)
    sd         $s6,56($sp)
    sd         $s3,64($sp)
    beqz       $at, .L00002f2c
    sd         $s2,72($sp)
    lui        $s5,0x0
    addiu      $s5,$s5,0
    lw         $v0,2360($s5)
    beqz       $v0, .L00002f2c
    lw         $t8,0($gp)
    lw         $t8,12($t8)
    addiu      $t8,$t8,255
    sra        $s7,$t8,0x7
    srl        $s7,$s7,0x18
    addu       $s7,$s7,$t8
    sra        $s7,$s7,0x8
    move       $a1,$zero
    sll        $s7,$s7,0x8
    jal        kmem_alloc
    move       $a0,$s7
    beqz       $v0, .L00002ff8
    move       $s4,$v0
    move       $s0,$v0
    move       $a0,$v0
    lw         $s2,0($gp)
    jal        bzero
    move       $a1,$s7
    lw         $t9,2356($s5)
    beqz       $t9, .L00002fc8
    lui        $s3,0x0
    jal        .text
    move       $a0,$s5
    bnez       $v0, .L00002fc4
    lw         $a1,0($gp)
    lw         $a1,12($a1)
    move       $a0,$s4
    jal        .text
    addiu      $a1,$a1,-64
    lw         $t8,12($s4)
    move       $s1,$s5
    addiu      $v0,$s4,64
    lbu        $a2,0($s5)
    addu       $t8,$t8,$s4
    li         $s6,-4
    addiu      $t8,$t8,3
    move       $s0,$v0
    and        $s6,$s6,$t8
    beqz       $a2, .L00002eb4
    addiu      $s6,$s6,-4
    sd         $v0,0($sp)
.L00002e50:
    jal        strlen
    move       $a0,$s1
    move       $s3,$v0
    jal        strlen
    lw         $a0,32($s1)
    addu       $t9,$v0,$s3
    addu       $t9,$s0,$t9
    addiu      $t9,$t9,2
    sltu       $t9,$t9,$s6
    beqz       $t9, .L00002f8c
    li         $a0,1
    move       $a0,$s0
    jal        .text
    move       $a1,$s1
    lbu        $ra,36($s1)
    move       $s0,$v0
    bnez       $ra, .L00002e50
    addiu      $s1,$s1,36
    lw         $t8,12($s4)
    addu       $t8,$t8,$s4
    li         $s6,-4
    addiu      $t8,$t8,3
    and        $s6,$s6,$t8
    ld         $v0,0($sp)
    addiu      $s6,$s6,-4
.L00002eb4:
    li         $s3,-4
    move       $a0,$v0
    jal        flash_body_cksum
    move       $a1,$s6
    lw         $ra,12($s4)
    sra        $t9,$s7,0x7
    srl        $t9,$t9,0x18
    addu       $ra,$ra,$s4
    addu       $t9,$t9,$s7
    sra        $t9,$t9,0x8
    addiu      $ra,$ra,3
    move       $s0,$s4
    and        $ra,$s3,$ra
    move       $s1,$t9
    beqz       $t9, .L00002f14
    sw         $v0,-4($ra)
.L00002ef4:
    move       $a0,$s2
    jal        flash_write_sector
    move       $a1,$s0
    bnez       $v0, .L00002fac
    addiu      $s1,$s1,-1
    addiu      $s0,$s0,256
    bnez       $s1, .L00002ef4
    addiu      $s2,$s2,256
.L00002f14:
    sw         $zero,2360($s5)
    jal        .text
    move       $a0,$s5
    move       $a0,$s4
    jal        kmem_free
    move       $a1,$s7
.L00002f2c:
    ld         $s2,72($sp)
.L00002f30:
    ld         $s3,64($sp)
    ld         $s6,56($sp)
    ld         $s4,40($sp)
    ld         $s0,32($sp)
    ld         $ra,48($sp)
    ld         $s7,24($sp)
    ld         $s1,16($sp)
    ld         $s5,8($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00002f58:
    move       $a0,$s2
    jal        flash_write_sector
    move       $a1,$s0
    bnez       $v0, .L00003010
    addiu      $s1,$s1,-1
    addiu      $s0,$s0,256
    bnez       $s1, .L00002f58
    addiu      $s2,$s2,256
    move       $a0,$s4
.L00002f7c:
    jal        kmem_free
    move       $a1,$s7
    b          .L00002f30
    ld         $s2,72($sp)
.L00002f8c:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,928
    move       $a0,$s4
    jal        kmem_free
    move       $a1,$s7
    b          .L00002f30
    ld         $s2,72($sp)
.L00002fac:
    li         $a0,1
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,984
    b          .L00002f30
    ld         $s2,72($sp)
.L00002fc4:
    lui        $s3,0x0
.L00002fc8:
    li         $a0,1
    addiu      $s3,$s3,120
    jal        cmn_err
    addiu      $a1,$s3,752
    sra        $t8,$s7,0x7
    srl        $t8,$t8,0x18
    addu       $t8,$t8,$s7
    sra        $t8,$t8,0x8
    bnez       $t8, .L00002f58
    move       $s1,$t8
    b          .L00002f7c
    move       $a0,$s4
.L00002ff8:
    li         $a0,1
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,832
    b          .L00002f30
    ld         $s2,72($sp)
.L00003010:
    addiu      $a1,$s3,928
    jal        cmn_err
    li         $a0,1
    move       $a0,$s4
    jal        kmem_free
    move       $a1,$s7
    b          .L00002f30
    ld         $s2,72($sp)

glabel flash_set_nvram_changed
    lw         $at,-32740($gp)
    lui        $v1,0x0
    li         $v0,1
    addiu      $sp,$sp,-16
    sw         $v0,2360($v1)
    beqz       $at, .L00003054
    sd         $ra,0($sp)
.L0000304c:
    jr         $ra
    addiu      $sp,$sp,16
.L00003054:
    jal        .text
    nop
    lw         $a0,-32740($gp)
    ld         $ra,0($sp)
    addiu      $a0,$a0,1
    b          .L0000304c
    sw         $a0,-32740($gp)

glabel prom_does_eccinit
    lw         $at,-32732($gp)
    addiu      $sp,$sp,-16
    beqz       $at, .L0000308c
    sd         $ra,0($sp)
.L00003080:
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16
.L0000308c:
    li         $v0,1
    jal        .text
    sw         $v0,-32732($gp)
    b          .L00003080
    ld         $ra,0($sp)

glabel flash_sync_globals
    lui        $a0,0x0
    addiu      $sp,$sp,-32
    sd         $ra,24($sp)
    jal        .text
    addiu      $a0,$a0,824
    addiu      $a2,$v0,64
    beqz       $v0, .L0000317c
    sw         $v0,0($gp)
    lw         $a1,12($v0)
    sll        $a1,$a1,0x2
    sw         $a2,-32748($gp)
    addu       $a1,$v0,$a1
    addiu      $a1,$a1,-192
    sw         $a1,-32744($gp)
.L000030d8:
    jal        update_flash_version
    nop
    lw         $a2,-32740($gp)
    beqz       $a2, .L0000313c
    move       $a0,$zero
    li         $a1,3
    li         $a2,21
    li         $a3,-1
    li         $a4,-1
    jal        find_inventory
    move       $a5,$zero
    beqz       $v0, .L00003148
    sd         $v0,16($sp)
    jal        flash_version
    move       $a0,$zero
    sd         $v0,8($sp)
    jal        flash_version
    li         $a0,1
    move       $a4,$v0
    ld         $a0,16($sp)
    li         $a1,3
    li         $a2,21
    ld         $a3,8($sp)
    jal        replace_in_inventory
    move       $a5,$zero
.L0000313c:
    ld         $ra,24($sp)
.L00003140:
    jr         $ra
    addiu      $sp,$sp,32
.L00003148:
    jal        flash_version
    move       $a0,$zero
    sd         $v0,0($sp)
    jal        flash_version
    li         $a0,1
    move       $a3,$v0
    li         $a0,3
    li         $a1,21
    ld         $a2,0($sp)
    jal        add_to_inventory
    move       $a4,$zero
    b          .L00003140
    ld         $ra,24($sp)
.L0000317c:
    li         $a0,1
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,1104
    sw         $zero,-32744($gp)
    b          .L000030d8
    sw         $zero,-32748($gp)

glabel dump_nvram_vars
    li         $a0,6
    addiu      $sp,$sp,-32
    lui        $a1,0x0
    sd         $s0,16($sp)
    lui        $s0,0x0
    sd         $ra,24($sp)
    addiu      $a1,$a1,120
    addiu      $s0,$s0,0
    addiu      $a1,$a1,1032
    jal        cmn_err
    lw         $a2,2344($s0)
    lw         $a2,2344($s0)
    bgtz       $a2, .L000031e0
    ld         $ra,24($sp)
.L000031d0:
    li         $v0,1
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000031e0:
    sd         $s0,0($sp)
    sd         $zero,8($sp)
.L000031e8:
    lui        $a1,0x0
    ld         $a4,0($sp)
    addiu      $a1,$a1,120
    ld         $a2,8($sp)
    li         $a0,6
    addiu      $a1,$a1,1064
    move       $a3,$a4
    jal        cmn_err
    lw         $a4,32($a4)
    ld         $a2,8($sp)
    lw         $a3,2344($s0)
    addiu      $a2,$a2,1
    sd         $a2,8($sp)
    slt        $a2,$a2,$a3
    ld         $a3,0($sp)
    addiu      $a3,$a3,36
    bnez       $a2, .L000031e8
    sd         $a3,0($sp)
    b          .L000031d0
    ld         $ra,24($sp)

glabel copyin
    addiu      $sp,$sp,-16
    bltz       $a2, .L000033f0
    sd         $ra,8($sp)
    bltz       $a0, .L000033f0
    nop
    lui        $t0,0x7fff
    addu       $v0,$a0,$a2
    ori        $t0,$t0,0x8000
    sltu       $at,$t0,$v0
    bnez       $at, .L000033f0
    nop
    lw         $t0,-24552($zero)
    li         $v0,2
    jal        bcopy
    sh         $v0,194($t0)
    lw         $t0,-24552($zero)
    move       $v0,$zero
    sh         $zero,194($t0)
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    nop

glabel copyout
    addiu      $sp,$sp,-16
    bltz       $a2, .L000033f0
    sd         $ra,8($sp)
    bltz       $a1, .L000033f0
    nop
    lui        $t0,0x7fff
    addu       $v0,$a1,$a2
    ori        $t0,$t0,0x8000
    sltu       $at,$t0,$v0
    bnez       $at, .L000033f0
    nop
    lw         $t0,-24552($zero)
    li         $v0,2
    jal        bcopy
    sh         $v0,194($t0)
    lw         $t0,-24552($zero)
    move       $v0,$zero
    sh         $zero,194($t0)
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    nop

glabel swcopyin
    addiu      $sp,$sp,-16
    bltz       $a2, .L000033f0
    sd         $ra,8($sp)
    bltz       $a0, .L000033f0
    nop
    lui        $t0,0x7fff
    addu       $v0,$a0,$a2
    ori        $t0,$t0,0x8000
    sltu       $at,$t0,$v0
    bnez       $at, .L000033f0
    nop
    lw         $t0,-24552($zero)
    li         $v0,2
    jal        swbcopy
    sh         $v0,194($t0)
    lw         $t0,-24552($zero)
    move       $v0,$zero
    sh         $zero,194($t0)
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    nop

glabel swcopyout
    addiu      $sp,$sp,-16
    bltz       $a2, .L000033f0
    sd         $ra,8($sp)
    bltz       $a1, .L000033f0
    nop
    lui        $t0,0x7fff
    addu       $v0,$a1,$a2
    ori        $t0,$t0,0x8000
    sltu       $at,$t0,$v0
    bnez       $at, .L000033f0
    nop
    lw         $t0,-24552($zero)
    li         $v0,2
    jal        swbcopy
    sh         $v0,194($t0)
    lw         $t0,-24552($zero)
    move       $v0,$zero
    sh         $zero,194($t0)
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    nop

glabel uzero
    addiu      $sp,$sp,-16
    bltz       $a1, .L000033f0
    sd         $ra,8($sp)
    bltz       $a0, .L000033f0
    nop
    lui        $t0,0x7fff
    addu       $v0,$a0,$a1
    ori        $t0,$t0,0x8000
    sltu       $at,$t0,$v0
    bnez       $at, .L000033f0
    nop
    lw         $t0,-24552($zero)
    li         $v0,2
    jal        bzero
    sh         $v0,194($t0)
    lw         $t0,-24552($zero)
    move       $v0,$zero
    sh         $zero,194($t0)
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    nop

glabel cerror
.L000033f0:
    ld         $ra,8($sp)
    li         $v0,-1
    addiu      $sp,$sp,16
    jr         $ra
    nop

glabel memset
    beqz       $a2, .L00003510
    move       $v0,$a0
    andi       $a1,$a1,0xff
    dsll       $t0,$a1,0x8
    or         $a1,$a1,$t0
    dsll       $t0,$a1,0x10
    or         $a1,$a1,$t0
    dsll32     $t0,$a1,0x0
    or         $a1,$a1,$t0
    andi       $t0,$a0,0x1f
    beqz       $t0, .L000034e8
    nop
    andi       $t0,$a0,0xf
    beqz       $t0, .L000034c8
    nop
    andi       $t0,$a0,0x7
    beqz       $t0, .L000034ac
    nop
    andi       $t0,$a0,0x3
    beqz       $t0, .L00003490
    nop
    andi       $t0,$a0,0x1
    beqz       $t0, .L00003474
    nop
.L00003464:
    addiu      $a2,$a2,-1
    sb         $a1,0($a0)
    beqz       $a2, .L00003510
    addiu      $a0,$a0,1
.L00003474:
    sltiu      $at,$a2,3
    bnez       $at, .L00003464
    nop
    addiu      $a2,$a2,-2
    sh         $a1,0($a0)
    beqz       $a2, .L00003510
    addiu      $a0,$a0,2
.L00003490:
    sltiu      $at,$a2,5
    bnez       $at, .L00003474
    nop
    addiu      $a2,$a2,-4
    sw         $a1,0($a0)
    beqz       $a2, .L00003510
    addiu      $a0,$a0,4
.L000034ac:
    sltiu      $at,$a2,9
    bnez       $at, .L00003490
    nop
    addiu      $a2,$a2,-8
    sd         $a1,0($a0)
    beqz       $a2, .L00003510
    addiu      $a0,$a0,8
.L000034c8:
    sltiu      $at,$a2,17
    bnez       $at, .L000034ac
    nop
    addiu      $a2,$a2,-16
    sd         $a1,0($a0)
    sd         $a1,8($a0)
    beqz       $a2, .L00003510
    addiu      $a0,$a0,16
.L000034e8:
    sltiu      $at,$a2,33
    bnez       $at, .L000034c8
    nop
    addiu      $a2,$a2,-32
    sd         $a1,0($a0)
    sd         $a1,8($a0)
    sd         $a1,16($a0)
    sd         $a1,24($a0)
    bnez       $a2, .L000034e8
    addiu      $a0,$a0,32
.L00003510:
    jr         $ra
    nop

glabel bzero
    or         $v0,$a0,$a1

glabel bzero_cdx_entry
    li         $v0,1
    bnez       $v0, .L00003530
    nop
    j          __cdx_blkfill
    move       $a2,$zero
.L00003530:
    slti       $v0,$a1,8
    bnez       $v0, .L000035b0
    negu       $v1,$a0
    sdl        $zero,0($a0)
    andi       $v0,$v1,0x7
    subu       $a1,$a1,$v0
    addu       $a0,$a0,$v0
    li         $at,-32
    and        $a3,$a1,$at
    beqz       $a3, .L00003574
    addu       $a3,$a3,$a0
.L0000355c:
    addiu      $a0,$a0,32
    sd         $zero,-32($a0)
    sd         $zero,-16($a0)
    sd         $zero,-24($a0)
    bne        $a0, $a3, .L0000355c
    sd         $zero,-8($a0)
.L00003574:
    andi       $v0,$a1,0x10
    beqz       $v0, .L0000358c
    andi       $v1,$a1,0x8
    sd         $zero,0($a0)
    sd         $zero,8($a0)
    addiu      $a0,$a0,16
.L0000358c:
    beqz       $v1, .L0000359c
    andi       $v0,$a1,0x7
    sd         $zero,0($a0)
    addiu      $a0,$a0,8
.L0000359c:
    addu       $a0,$a0,$v0
    beqz       $v0, .L000035c4
    nop
    jr         $ra
    sdr        $zero,-1($a0)
.L000035b0:
    blez       $a1, .L000035c4
    addu       $a3,$a0,$a1
.L000035b8:
    addiu      $a0,$a0,1
    bne        $a0, $a3, .L000035b8
    sb         $zero,-1($a0)
.L000035c4:
    jr         $ra
    nop

glabel bzerror
    jr         $ra
    nop

glabel bcmp
    slti       $at,$a2,11
    bnez       $at, .L00003760
    xor        $v0,$a0,$a1
    andi       $v0,$v0,0x3
    bnez       $v0, .L000036f4
    negu       $t8,$a0
    andi       $t8,$t8,0x3
    beqz       $t8, .L00003618
    nop
    lwl        $t0,0($a0)
    lwl        $t1,0($a1)
    lwr        $t0,3($a0)
    lwr        $t1,3($a1)
    subu       $a2,$a2,$t8
    addu       $a0,$a0,$t8
    bne        $t0, $t1, .L000036ec
    addu       $a1,$a1,$t8
.L00003618:
    li         $at,-16
    and        $v0,$a2,$at
    beqz       $v0, .L0000367c
    nop
.L00003628:
    lw         $t0,0($a0)
    lw         $t1,0($a1)
    addiu      $a0,$a0,16
    addiu      $a1,$a1,16
    bne        $t0, $t1, .L000036ec
    nop
    lw         $t0,-12($a0)
    lw         $t1,-12($a1)
    addiu      $v0,$v0,-16
    bne        $t0, $t1, .L000036ec
    nop
    lw         $t0,-8($a0)
    lw         $t1,-8($a1)
    bne        $t0, $t1, .L000036ec
    nop
    lw         $t0,-4($a0)
    lw         $t1,-4($a1)
    bne        $t0, $t1, .L000036ec
    nop
    bnez       $v0, .L00003628
    nop
.L0000367c:
    andi       $t9,$a2,0x8
    beqz       $t9, .L000036b0
    andi       $t8,$a2,0x4
    lw         $t0,0($a0)
    lw         $t1,0($a1)
    addiu      $a0,$a0,8
    addiu      $a1,$a1,8
    bne        $t0, $t1, .L000036ec
    nop
    lw         $t0,-4($a0)
    lw         $t1,-4($a1)
    bne        $t0, $t1, .L000036ec
    nop
.L000036b0:
    beqz       $t8, .L000036d0
    andi       $t9,$a2,0x3
    lw         $t0,0($a0)
    lw         $t1,0($a1)
    addiu      $a0,$a0,4
    addiu      $a1,$a1,4
    bne        $t0, $t1, .L000036ec
    nop
.L000036d0:
    beqz       $t9, .L00003788
    addu       $a0,$a0,$t9
    addu       $a1,$a1,$t9
    lwl        $t0,-4($a0)
    lwl        $t1,-4($a1)
    lwr        $t0,-1($a0)
    lwr        $t1,-1($a1)
.L000036ec:
    jr         $ra
    subu       $v0,$t0,$t1
.L000036f4:
    negu       $a3,$a1
    andi       $a3,$a3,0x3
    beqz       $a3, .L00003728
    subu       $a2,$a2,$a3
    addu       $a3,$a3,$a0
.L00003708:
    lbu        $t0,0($a0)
    lbu        $t1,0($a1)
    addiu      $a0,$a0,1
    addiu      $a1,$a1,1
    bne        $t0, $t1, .L000036ec
    nop
    bne        $a0, $a3, .L00003708
    nop
.L00003728:
    li         $at,-4
    and        $a3,$a2,$at
    beqz       $a3, .L00003760
    subu       $a2,$a2,$a3
    addu       $a3,$a3,$a0
.L0000373c:
    lwl        $t0,0($a0)
    lw         $t1,0($a1)
    lwr        $t0,3($a0)
    addiu      $a0,$a0,4
    addiu      $a1,$a1,4
    bne        $t0, $t1, .L000036ec
    nop
    bne        $a0, $a3, .L0000373c
    nop
.L00003760:
    blez       $a2, .L00003788
    addu       $a3,$a2,$a0
.L00003768:
    lbu        $t0,0($a0)
    lbu        $t1,0($a1)
    addiu      $a0,$a0,1
    addiu      $a1,$a1,1
    bne        $t0, $t1, .L000036ec
    nop
    bne        $a0, $a3, .L00003768
    nop
.L00003788:
    jr         $ra
    move       $v0,$zero

glabel addupc
    lw         $v1,8($a1)
    subu       $a0,$a0,$v1
    bltz       $a0, .L00003880
    nop
    lw         $v0,12($a1)
    li         $at,2
    bne        $v0, $at, .L000037b8
    nop
    b          .L000037d0
    li         $v0,0
.L000037b8:
    multu      $v0,$a0
    mflo       $v0
    mfhi       $v1
    srl        $v0,$v0,0x10
    sll        $v1,$v1,0x10
    or         $v0,$v0,$v1
.L000037d0:
    lw         $v1,4($a1)
    bnez       $a3, .L00003834
    lw         $a0,0($a1)
    li         $at,-2
    and        $v0,$v0,$at
    sltu       $at,$v0,$v1
    beqz       $at, .L00003880
    nop
    addu       $v0,$v0,$a0
    bltz       $v0, .L00003888
    nop
    lw         $t0,-24552($zero)
    li         $v1,3
    sh         $v1,194($t0)
    andi       $t1,$v0,0x2
    ori        $v0,$v0,0x2
    bnez       $t1, .L0000381c
    xori       $v0,$v0,0x2
    sll        $a2,$a2,0x10
.L0000381c:
    ll         $v1,0($v0)
    addu       $v1,$v1,$a2
    sc         $v1,0($v0)
    beqz       $v1, .L0000381c
    nop
    b          .L00003874
.L00003834:
    li         $at,-4
    and        $v0,$v0,$at
    sltu       $at,$v0,$v1
    beqz       $at, .L00003880
    nop
    addu       $v0,$v0,$a0
    bltz       $v0, .L00003888
    nop
    lw         $t0,-24552($zero)
    li         $v1,3
    sh         $v1,194($t0)
.L00003860:
    ll         $v1,0($v0)
    addu       $v1,$v1,$a2
    sc         $v1,0($v0)
    beqz       $v1, .L00003860
    nop
.L00003874:
    sh         $zero,194($t0)
    jr         $ra
    li         $v0,0
.L00003880:
    jr         $ra
    li         $v0,-1

glabel adderr
.L00003888:
    li         $v0,0
    jr         $ra
    sw         $zero,12($a1)

glabel fubyte
    bltz       $a0, .L00003a10
    lw         $t0,-24552($zero)
    li         $v0,4
    sh         $v0,194($t0)
    lbu        $v0,0($a0)
    jr         $ra
    sh         $zero,194($t0)

glabel upath
    bltz       $a0, .L00003a10
    lw         $t0,-24552($zero)
    li         $v0,4
    sh         $v0,194($t0)
    move       $v1,$a2
.L000038c4:
    lbu        $v0,0($a0)
    addiu      $a2,$a2,-1
    beqz       $v0, .L000038e8
    sb         $v0,0($a1)
    addiu      $a0,$a0,1
    bnez       $a2, .L000038c4
    addiu      $a1,$a1,1
    b          .L000038ec
    li         $v0,-2
.L000038e8:
    subu       $v0,$v1,$a2
.L000038ec:
    jr         $ra
    sh         $zero,194($t0)

glabel subyte
    bltz       $a0, .L00003a10
    lw         $t0,-24552($zero)
    li         $v0,4
    sh         $v0,194($t0)
    sb         $a1,0($a0)
    sh         $zero,194($t0)
    jr         $ra
    move       $v0,$zero

glabel fuword
    bltz       $a0, .L00003a10
    lw         $t0,-24552($zero)
    li         $v0,4
    sh         $v0,194($t0)
    lw         $v0,0($a0)
    sh         $zero,194($t0)
    jr         $ra
    nop

glabel sfu32v
    bltz       $a1, .L000039a8
    lw         $t0,-24552($zero)
    li         $v0,12
    sh         $v0,194($t0)
.L00003944:
    lw         $v0,0($a1)
    addiu      $a3,$a3,-4
    sw         $v0,0($a2)
    addiu      $a1,$a1,4
    bne        $zero, $a3, .L00003944
    addiu      $a2,$a2,4
    sh         $zero,194($t0)
    jr         $ra
    li         $v0,1

glabel sfu32
    bltz       $a1, .L000039a8
    lw         $t0,-24552($zero)
    li         $v0,12
    sh         $v0,194($t0)
    lw         $v0,0($a1)
    sh         $zero,194($t0)
    jr         $ra
    nop

glabel spu32
    bltz       $a1, .L000039a8
    lw         $t0,-24552($zero)
    li         $v0,12
    sh         $v0,194($t0)
    sw         $a2,0($a1)
    sh         $zero,194($t0)
    jr         $ra
    li         $v0,1

glabel suerror
.L000039a8:
    li         $v1,14
    sw         $v1,0($a0)
    jr         $ra
    li         $v0,0

glabel suword
    bltz       $a0, .L00003a10
    lw         $t0,-24552($zero)
    li         $v0,4
    sh         $v0,194($t0)
    sw         $a1,0($a0)
    sh         $zero,194($t0)
    jr         $ra
    move       $v0,$zero

glabel suhalf
    bltz       $a0, .L00003a10
    lw         $t0,-24552($zero)
    li         $v0,4
    sh         $v0,194($t0)
    sh         $a1,0($a0)
    sh         $zero,194($t0)
    jr         $ra
    move       $v0,$zero

glabel fkiword
    li         $v0,13
    sw         $v0,-24104($zero)
    lw         $v0,0($a0)
    sw         $zero,-24104($zero)
    jr         $ra
    nop

glabel uerror
.L00003a10:
    jr         $ra
    li         $v0,-1

glabel strlen
    move       $v0,$a0
.L00003a1c:
    lb         $v1,0($a0)
    addiu      $a0,$a0,1
    bnez       $v1, .L00003a1c
    nop
    subu       $v0,$a0,$v0
    jr         $ra
    addiu      $v0,$v0,-1

glabel uload_word
    lw         $t0,-24552($zero)
    li         $v0,11
    sh         $v0,194($t0)
    lwl        $v1,0($a0)
    lwr        $v1,3($a0)
    sh         $zero,194($t0)
    sd         $v1,0($a1)
    jr         $ra
    move       $v0,$zero

glabel uload_half
    lw         $t0,-24552($zero)
    li         $v0,11
    sh         $v0,194($t0)
    lb         $v1,0($a0)
    lbu        $at,1($a0)
    sll        $v1,$v1,0x8
    or         $v1,$v1,$at
    sh         $zero,194($t0)
    sd         $v1,0($a1)
    jr         $ra
    move       $v0,$zero

glabel uload_uhalf
    lw         $t0,-24552($zero)
    li         $v0,11
    sh         $v0,194($t0)
    lbu        $v1,0($a0)
    lbu        $at,1($a0)
    sll        $v1,$v1,0x8
    or         $v1,$v1,$at
    sh         $zero,194($t0)
    sd         $v1,0($a1)
    jr         $ra
    move       $v0,$zero

glabel uload_uword
    lw         $t0,-24552($zero)
    li         $v0,11
    sh         $v0,194($t0)
    lwl        $v1,0($a0)
    lwr        $v1,3($a0)
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    sh         $zero,194($t0)
    sd         $v1,0($a1)
    jr         $ra
    move       $v0,$zero

glabel uload_double
    lw         $t0,-24552($zero)
    li         $v0,11
    sh         $v0,194($t0)
    ldl        $v1,0($a0)
    ldr        $v1,7($a0)
    sh         $zero,194($t0)
    sd         $v1,0($a1)
    jr         $ra
    move       $v0,$zero

glabel ustore_double
    lw         $t0,-24552($zero)
    li         $v0,11
    sh         $v0,194($t0)
    sdl        $a1,0($a0)
    sdr        $a1,7($a0)
    sh         $zero,194($t0)
    jr         $ra
    move       $v0,$zero

glabel ustore_word
    lw         $t0,-24552($zero)
    li         $v0,11
    sh         $v0,194($t0)
    swl        $a1,0($a0)
    swr        $a1,3($a0)
    sh         $zero,194($t0)
    jr         $ra
    move       $v0,$zero

glabel ustore_half
    lw         $t0,-24552($zero)
    li         $v0,11
    sh         $v0,194($t0)
    sb         $a1,1($a0)
    srl        $at,$a1,0x8
    sb         $at,0($a0)
    sh         $zero,194($t0)
    jr         $ra
    move       $v0,$zero

glabel fixade_error
    jr         $ra
    move       $v0,$gp

glabel memcpy
    move       $t0,$a0
    move       $a0,$a1
    move       $a1,$t0

glabel bcopy
    or         $v0,$a0,$a1
    move       $t8,$a1
    or         $v0,$v0,$a2

glabel bcopy_cdx_entry
    li         $v0,1
    bnez       $v0, .L00003b9c
    nop
    j          __cdx_blkcopy
    nop
.L00003b9c:
    slt        $at,$a0,$a1
    beqz       $at, .L00003bb0
    addu       $v0,$a0,$a2
    slt        $at,$a1,$v0
    bnez       $at, .L00003e60
.L00003bb0:
    slti       $at,$a2,12
    bnez       $at, .L00003e3c
    nop
    andi       $v0,$a0,0x7
    andi       $v1,$a1,0x7
    bne        $v0, $v1, .L00003c54
    li         $a3,8
    beqz       $v0, .L00003bec
    nop
    ldl        $v0,0($a0)
    subu       $a3,$a3,$v1
    addu       $a0,$a0,$a3
    sdl        $v0,0($a1)
    addu       $a1,$a1,$a3
    subu       $a2,$a2,$a3
.L00003bec:
    li         $at,-64
    and        $a3,$a2,$at
    beqz       $a3, .L00003c84
    nop
    addu       $a3,$a3,$a1
.L00003c00:
    ld         $t0,0($a0)
    ld         $t2,16($a0)
    ld         $t1,8($a0)
    ld         $t3,24($a0)
    ld         $a4,32($a0)
    ld         $a6,48($a0)
    ld         $a5,40($a0)
    ld         $a7,56($a0)
    addiu      $a1,$a1,64
    addiu      $a0,$a0,64
    sd         $t0,-64($a1)
    sd         $t2,-48($a1)
    sd         $t1,-56($a1)
    sd         $t3,-40($a1)
    sd         $a4,-32($a1)
    sd         $a6,-16($a1)
    sd         $a5,-24($a1)
    bne        $a3, $a1, .L00003c00
    sd         $a7,-8($a1)
    b          .L00003c84
    andi       $a2,$a2,0x3f
.L00003c54:
    andi       $v0,$a0,0x3
    andi       $v1,$a1,0x3
    bne        $v0, $v1, .L00003d78
    li         $a3,4
    beqz       $v0, .L00003c84
    nop
    lwl        $v0,0($a0)
    subu       $a3,$a3,$v1
    addu       $a0,$a0,$a3
    swl        $v0,0($a1)
    addu       $a1,$a1,$a3
    subu       $a2,$a2,$a3
.L00003c84:
    li         $at,-32
    and        $a3,$a2,$at
    beqz       $a3, .L00003ce4
    nop
    addu       $a3,$a3,$a1
.L00003c98:
    lw         $t0,0($a0)
    lw         $t1,4($a0)
    lw         $t2,8($a0)
    lw         $t3,12($a0)
    lw         $a4,16($a0)
    lw         $a5,20($a0)
    lw         $a6,24($a0)
    lw         $a7,28($a0)
    addiu      $a1,$a1,32
    addiu      $a0,$a0,32
    sw         $t0,-32($a1)
    sw         $t1,-28($a1)
    sw         $t2,-24($a1)
    sw         $t3,-20($a1)
    sw         $a4,-16($a1)
    sw         $a5,-12($a1)
    sw         $a6,-8($a1)
    bne        $a3, $a1, .L00003c98
    sw         $a7,-4($a1)
.L00003ce4:
    andi       $v0,$a2,0x10
    beqz       $v0, .L00003d18
    nop
    lw         $t0,0($a0)
    lw         $t1,4($a0)
    lw         $t2,8($a0)
    lw         $t3,12($a0)
    addiu      $a0,$a0,16
    addiu      $a1,$a1,16
    sw         $t0,-16($a1)
    sw         $t1,-12($a1)
    sw         $t2,-8($a1)
    sw         $t3,-4($a1)
.L00003d18:
    andi       $v1,$a2,0x8
    beqz       $v1, .L00003d3c
    nop
    lw         $t0,0($a0)
    lw         $t1,4($a0)
    addiu      $a0,$a0,8
    addiu      $a1,$a1,8
    sw         $t0,-8($a1)
    sw         $t1,-4($a1)
.L00003d3c:
    andi       $v0,$a2,0x4
    beqz       $v0, .L00003d58
    nop
    lw         $t0,0($a0)
    addiu      $a0,$a0,4
    addiu      $a1,$a1,4
    sw         $t0,-4($a1)
.L00003d58:
    andi       $v1,$a2,0x3
    beqz       $v1, .L00003e58
    addu       $a0,$a0,$v1
    lwr        $t0,-1($a0)
    addu       $a1,$a1,$v1
    move       $v0,$t8
    jr         $ra
    swr        $t0,-1($a1)
.L00003d78:
    beqz       $v1, .L00003da0
    nop
    subu       $a3,$a3,$v1
    subu       $a2,$a2,$a3
    addu       $a3,$a3,$a1
.L00003d8c:
    lb         $v0,0($a0)
    addiu      $a1,$a1,1
    addiu      $a0,$a0,1
    bne        $a1, $a3, .L00003d8c
    sb         $v0,-1($a1)
.L00003da0:
    li         $at,-16
    and        $a3,$a2,$at
    beqz       $a3, .L00003df0
    nop
    addu       $a3,$a3,$a1
.L00003db4:
    lwl        $t0,0($a0)
    lwr        $t0,3($a0)
    lwl        $t1,4($a0)
    lwr        $t1,7($a0)
    sw         $t0,0($a1)
    lwl        $t2,8($a0)
    lwr        $t2,11($a0)
    sw         $t1,4($a1)
    lwl        $t3,12($a0)
    lwr        $t3,15($a0)
    addiu      $a1,$a1,16
    addiu      $a0,$a0,16
    sw         $t2,-8($a1)
    bne        $a3, $a1, .L00003db4
    sw         $t3,-4($a1)
.L00003df0:
    andi       $v1,$a2,0x8
    beqz       $v1, .L00003e1c
    nop
    lwl        $t0,0($a0)
    lwl        $t1,4($a0)
    lwr        $t0,3($a0)
    lwr        $t1,7($a0)
    addiu      $a0,$a0,8
    addiu      $a1,$a1,8
    sw         $t0,-8($a1)
    sw         $t1,-4($a1)
.L00003e1c:
    andi       $v0,$a2,0x4
    beqz       $v0, .L00003e3c
    andi       $a2,$a2,0x3
    lwl        $t0,0($a0)
    lwr        $t0,3($a0)
    addiu      $a0,$a0,4
    addiu      $a1,$a1,4
    sw         $t0,-4($a1)
.L00003e3c:
    beqz       $a2, .L00003e58
    addu       $a3,$a0,$a2
.L00003e44:
    lb         $v0,0($a0)
    addiu      $a0,$a0,1
    addiu      $a1,$a1,1
    bne        $a0, $a3, .L00003e44
    sb         $v0,-1($a1)
.L00003e58:
    jr         $ra
    move       $v0,$t8
.L00003e60:
    slti       $at,$a2,12
    addu       $a0,$a0,$a2
    bnez       $at, .L00003e80
    addu       $a1,$a1,$a2
    andi       $v0,$a0,0x3
    andi       $v1,$a1,0x3
    beq        $v0, $v1, .L00003eb0
    nop
.L00003e80:
    beqz       $a2, .L00003e58
    nop
    addiu      $a0,$a0,-1
    addiu      $a1,$a1,-1
    subu       $v1,$a0,$a2
.L00003e94:
    lb         $v0,0($a0)
    addiu      $a0,$a0,-1
    addiu      $a1,$a1,-1
    bne        $a0, $v1, .L00003e94
    sb         $v0,1($a1)
    jr         $ra
    move       $v0,$t8
.L00003eb0:
    beqz       $v0, .L00003f14
    li         $at,3
    beq        $v0, $at, .L00003ef8
    li         $at,2
    beq        $v0, $at, .L00003ee0
    nop
    lb         $v0,-1($a0)
    addiu      $a0,$a0,-1
    addiu      $a1,$a1,-1
    addiu      $a2,$a2,-1
    b          .L00003f14
    sb         $v0,0($a1)
.L00003ee0:
    lh         $v0,-2($a0)
    addiu      $a0,$a0,-2
    addiu      $a1,$a1,-2
    addiu      $a2,$a2,-2
    b          .L00003f14
    sh         $v0,0($a1)
.L00003ef8:
    lb         $v0,-1($a0)
    lh         $v1,-3($a0)
    addiu      $a0,$a0,-3
    addiu      $a1,$a1,-3
    addiu      $a2,$a2,-3
    sb         $v0,2($a1)
    sh         $v1,0($a1)
.L00003f14:
    slti       $at,$a2,32
    bnez       $at, .L00003f70
    nop
    lw         $v0,-4($a0)
    lw         $v1,-8($a0)
    lw         $t0,-12($a0)
    lw         $t1,-16($a0)
    lw         $t2,-20($a0)
    lw         $t3,-24($a0)
    lw         $a4,-28($a0)
    lw         $a5,-32($a0)
    addiu      $a0,$a0,-32
    addiu      $a1,$a1,-32
    addiu      $a2,$a2,-32
    sw         $v0,28($a1)
    sw         $v1,24($a1)
    sw         $t0,20($a1)
    sw         $t1,16($a1)
    sw         $t2,12($a1)
    sw         $t3,8($a1)
    sw         $a4,4($a1)
    b          .L00003f14
    sw         $a5,0($a1)
.L00003f70:
    slti       $at,$a2,16
    bnez       $at, .L00003fac
    nop
    lw         $v0,-4($a0)
    lw         $v1,-8($a0)
    lw         $t0,-12($a0)
    lw         $t1,-16($a0)
    addiu      $a0,$a0,-16
    addiu      $a1,$a1,-16
    addiu      $a2,$a2,-16
    sw         $v0,12($a1)
    sw         $v1,8($a1)
    sw         $t0,4($a1)
    b          .L00003f70
    sw         $t1,0($a1)
.L00003fac:
    slti       $at,$a2,4
    bnez       $at, .L00003e80
    nop
    lw         $v0,-4($a0)
    addiu      $a0,$a0,-4
    addiu      $a1,$a1,-4
    addiu      $a2,$a2,-4
    b          .L00003fac
    sw         $v0,0($a1)

glabel swbcopy
    beqz       $a2, .L00004000
    nop
    beq        $a0, $a1, .L00004000
    nop
.L00003fe0:
    lb         $v0,0($a0)
    lb         $v1,1($a0)
    addiu      $a2,$a2,-2
    addiu      $a0,$a0,2
    addiu      $a1,$a1,2
    sb         $v0,-1($a1)
    bgtz       $a2, .L00003fe0
    sb         $v1,-2($a1)
.L00004000:
    jr         $ra
    nop

glabel rtlock_ownerstamp
    bltz       $a0, .L00003a10
    lw         $t0,-24552($zero)
    li         $v0,4
    sh         $v0,194($t0)
.L00004018:
    ll         $t1,0($a0)
    move       $t1,$a1
    sc         $t1,0($a0)
    beqz       $t1, .L00004018
    nop
    sh         $zero,194($t0)
    jr         $ra
    move       $v0,$zero

glabel dumpcopy
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    lw         $t0,-24552($zero)
    beqz       $t0, .L00004054
    li         $v0,14
    b          .L00004058
    sh         $v0,194($t0)
.L00004054:
    sw         $v0,-24104($zero)
.L00004058:
    jal        bcopy
    nop
    lw         $t0,-24552($zero)
    beqz       $t0, .L00004074
    move       $v0,$zero
    b          .L00004078
    sh         $zero,194($t0)
.L00004074:
    sw         $zero,-24104($zero)
.L00004078:
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    nop

glabel update_ust_i
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    jal        spl7
    sd         $s8,16($sp)
    jal        update_ust
    move       $s8,$v0
    sd         $v0,8($sp)
    jal        splx
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s8,16($sp)
    ld         $v0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel get_ust_nano
    ld         $a2,0($gp)
    lwu        $a1,-32728($gp)
    dmultu     $a1,$a2
    lwu        $v0,-32724($gp)
    mflo       $v1
    ddivu      $zero,$v1,$v0
    teq        $v0,$zero,0x7
    mflo       $at
    jr         $ra
    sd         $at,0($a0)

glabel ust_to_nano
    lwu        $a2,-32728($gp)
    dmultu     $a2,$a0
    lwu        $v0,-32724($gp)
    mflo       $v1
    ddivu      $zero,$v1,$v0
    teq        $v0,$zero,0x7
    mflo       $at
    jr         $ra
    sd         $at,0($a1)

glabel get_ust
    ld         $at,0($gp)
    jr         $ra
    sd         $at,0($a0)

glabel get_updated_ust_i
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    jal        spl7
    sd         $s8,16($sp)
    jal        update_ust
    move       $s8,$v0
    ld         $at,0($gp)
    move       $a0,$s8
    jal        splx
    sd         $at,8($sp)
    ld         $ra,0($sp)
    ld         $s8,16($sp)
    ld         $v0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel nano_to_ust
    lwu        $v1,-32724($gp)
    dmult      $a0,$v1
    lwu        $at,-32728($gp)
    mflo       $v0
    ddiv       $zero,$v0,$at
    mflo       $v0
    jr         $ra
    teq        $at,$zero,0x7

glabel ust_init
    li         $v1,417
    sw         $v1,-32724($gp)
    lui        $v0,0x6
    lui        $at,0xf
    ori        $v0,$v0,0x1bc1
    sw         $v0,-32728($gp)
    ori        $at,$at,0xe500
    jr         $ra
    sw         $at,0($gp)

glabel fill_ust_highbits
    dsll32     $at,$a0,0x0
    addiu      $sp,$sp,-48
    dsrl32     $at,$at,0x0
    sd         $at,0($a1)
    sd         $ra,16($sp)
    sd         $s7,24($sp)
    move       $s7,$a0
    sd         $s0,8($sp)
    move       $s0,$a1
    jal        splprof
    sd         $s8,32($sp)
    ld         $s8,0($gp)
    move       $a0,$v0
    jal        splx
    sd         $s8,0($sp)
    sll        $a0,$s8,0x0
    lui        $a3,0x8000
    subu       $a2,$a0,$s7
    ld         $ra,16($sp)
    sltu       $a2,$a2,$a3
    lw         $a1,0($sp)
    sltu       $a3,$s7,$a0
    ld         $s8,32($sp)
    beqz       $a2, .L00004224
    sltu       $a0,$a0,$s7
    bnez       $a0, .L00004248
    addiu      $a5,$a1,-1
    b          .L00004238
    sw         $a1,0($s0)
.L00004224:
    bnez       $a3, .L00004234
    addiu      $a4,$a1,1
    b          .L00004238
    sw         $a1,0($s0)
.L00004234:
    sw         $a4,0($s0)
.L00004238:
    ld         $s0,8($sp)
    ld         $s7,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00004248:
    b          .L00004238
    sw         $a5,0($s0)

glabel update_ust
    lui        $t0,0xbf34
    ld         $v0,0($t0)
    addiu      $t0,$gp,0
    lw         $v1,8($t0)
    dsll32     $v0,$v0,0x0
    lw         $t2,4($t0)
    dsrl32     $v0,$v0,0x0
    lw         $t1,0($t0)
    sw         $v0,8($t0)
    subu       $a5,$v0,$v1
    addu       $v0,$t2,$a5
    sltu       $a4,$v0,$t2
    addu       $t1,$t1,$a4
    sw         $v0,4($t0)
    jr         $ra
    sw         $t1,0($t0)

glabel ecc_exception
    sd         $k0,3936($zero)
    sd         $k1,3944($zero)
    mfc0       $k0,c0_sr
    lui        $k1,0x1
    ori        $k1,$k1,0x4
    mtc0       $k1,c0_sr
    li         $k1,3736
    sd         $at,0($k1)
    sd         $k0,248($k1)
    sd         $a0,24($k1)
    sd         $a1,32($k1)
    sd         $a2,40($k1)
    sd         $a3,48($k1)
    sd         $a4,56($k1)
    sd         $a5,64($k1)
    sd         $a6,72($k1)
    sd         $a7,80($k1)
    mfc0       $a3,c0_cause
    mfc0       $a0,c0_epc
    sd         $a3,280($k1)
    sd         $s0,120($k1)
    sd         $s1,128($k1)
    sd         $s2,136($k1)
    sd         $s3,144($k1)
    sd         $s4,152($k1)
    sd         $s5,160($k1)
    sd         $s6,168($k1)
    sd         $s7,176($k1)
    sd         $a0,288($k1)
    sd         $a0,352($k1)
    mfc0       $a0,c0_badvaddr
    sd         $gp,216($k1)
    sd         $ra,240($k1)
    sd         $sp,224($k1)
    lui        $gp,0x0
    sd         $a0,272($k1)
    addiu      $gp,$gp,0
    jal        tfi_save
    li         $sp,3672
    move       $a0,$k1
    mfc0       $a2,c0_cacheerr
    mfc0       $a3,c0_errorepc
    mfc0       $k1,c0_taglo
    mfc0       $k0,c0_ecc
    li         $a1,3688
    sd         $a2,0($a1)
    sd         $a3,24($a1)
    sd         $k1,8($a1)
    sd         $k0,16($a1)
    sd         $zero,40($a1)
    jal        ecc_handler
    sd         $zero,32($a1)
    bnez       $v0, .L00004424
    nop
    ld         $k0,3704($zero)
    ld         $a2,3696($zero)
    ld         $a1,3688($zero)
    mtc0       $k0,c0_ecc
    mtc0       $a2,c0_taglo
    mtc0       $a1,c0_cacheerr
    jal        tfi_restore
    li         $k1,3736
    ld         $a0,24($k1)
    ld         $a1,32($k1)
    ld         $a2,40($k1)
    ld         $a3,48($k1)
    ld         $a4,56($k1)
    ld         $a5,64($k1)
    ld         $a6,72($k1)
    ld         $a7,80($k1)
    ld         $s0,120($k1)
    ld         $s1,128($k1)
    ld         $s2,136($k1)
    ld         $s3,144($k1)
    ld         $s4,152($k1)
    ld         $s5,160($k1)
    ld         $s6,168($k1)
    ld         $s7,176($k1)
    ld         $ra,240($k1)
    ld         $at,0($k1)
    ld         $sp,224($k1)
    ld         $gp,216($k1)
    ld         $k0,248($k1)
    mtc0       $k0,c0_sr
    ld         $k0,200($k1)
    ld         $k1,208($k1)
    eret
    nop
.L00004424:
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $sp,0($at)
    lw         $sp,-24156($zero)
    li         $a2,3
    sb         $a2,-24513($zero)
    lui        $a2,0x0
    addiu      $a2,$a2,17496
    mtc0       $a2,c0_errorepc
    li         $a2,3688
    ld         $a0,0($a2)
    jal        ecc_panic
    ld         $a1,24($a2)
    lui        $a1,0x0
    addiu      $a1,$a1,360
    jal        cmn_err
    li         $a0,0

glabel eccword
    nop

glabel r10k_ecc_exception
    sd         $s0,120($k1)
    sd         $s1,128($k1)
    sd         $s2,136($k1)
    sd         $s3,144($k1)
    sd         $s4,152($k1)
    sd         $s5,160($k1)
    sd         $s6,168($k1)
    sd         $s7,176($k1)
    sd         $a0,24($k1)
    sd         $a1,32($k1)
    sd         $a2,40($k1)
    sd         $a3,48($k1)
    sd         $a4,56($k1)
    sd         $a5,64($k1)
    sd         $a6,72($k1)
    sd         $a7,80($k1)
    sd         $gp,216($k1)
    sd         $sp,224($k1)
    sd         $ra,240($k1)
    lui        $gp,0x0
    addiu      $gp,$gp,0
    jal        tfi_save
    nop
    mfc0       $k0,c0_sr
    sd         $k0,248($k1)
    mfc0       $k0,c0_cause
    sd         $k0,280($k1)
    mfc0       $k0,c0_badvaddr
    sd         $k0,272($k1)
    mfc0       $k0,c0_epc
    sd         $k0,288($k1)
    sd         $k0,352($k1)
    move       $s0,$k1
    addi       $s1,$k1,360
    lb         $k0,38($s1)
    bnez       $k0, .L00004504
    li         $k0,1
    sb         $k0,38($s1)
.L00004504:
    mfc0       $k0,c0_errorepc
    sd         $k0,3($s1)
    mfc0       $v0,c0_taghi
    sw         $v0,32($s1)
    mfc0       $v0,c0_taglo
    sw         $v0,1($s1)
    mfc0       $v0,c0_cacheerr
    sw         $v0,0($s1)
    daddiu     $sp,$s0,4096
    move       $a0,$s0
    jal        r10k_ecc_handler
    move       $a1,$s1
    beqz       $v0, .L00004568
    nop
    lw         $sp,-24156($zero)
    lui        $gp,0x0
    addiu      $gp,$gp,0
    mfc0       $t0,c0_sr
    li         $at,-25
    and        $t0,$t0,$at
    mtc0       $t0,c0_sr
    move       $a1,$s0
    move       $a2,$s1
    jal        r10k_ecc_panic
    move       $a0,$v0
.L00004568:
    lw         $k1,32($s1)
    mtc0       $k1,c0_taghi
    lw         $k1,1($s1)
    mtc0       $k1,c0_taglo
    jal        tfi_restore
    move       $k1,$s0
    ld         $k0,3($s1)
    mtc0       $k0,c0_errorepc
    move       $k0,$s1
    ld         $a0,24($k1)
    ld         $a1,32($k1)
    ld         $a2,40($k1)
    ld         $a3,48($k1)
    ld         $a4,56($k1)
    ld         $a5,64($k1)
    ld         $a6,72($k1)
    ld         $a7,80($k1)
    ld         $s0,120($k1)
    ld         $s1,128($k1)
    ld         $s2,136($k1)
    ld         $s3,144($k1)
    ld         $s4,152($k1)
    ld         $s5,160($k1)
    ld         $s6,168($k1)
    ld         $s7,176($k1)
    ld         $ra,240($k1)
    ld         $at,0($k1)
    ld         $sp,224($k1)
    ld         $gp,216($k1)
    sb         $zero,38($k0)
    ld         $k0,200($k1)
    ld         $k1,208($k1)
    eret
    addiu      $sp,$sp,-32
    sd         $a1,0($sp)
    sw         $a0,8($sp)
    sd         $ra,24($sp)
    jal        cacheOP
    addiu      $a0,$sp,0
    ld         $ra,24($sp)
    lwu        $v1,12($sp)
    lwu        $v0,16($sp)
    addiu      $sp,$sp,32
    dsll32     $v1,$v1,0x0
    jr         $ra
    or         $v0,$v0,$v1

glabel ecc_cacheop_get
    sw         $a0,8($a2)
    addiu      $sp,$sp,-16
    dsll32     $v0,$a1,0x0
    dsrl32     $v0,$v0,0x0
    sd         $ra,0($sp)
    move       $a0,$a2
    jal        cacheOP
    sd         $v0,0($a2)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
    addiu      $sp,$sp,-112
    sd         $s2,96($sp)
    andi       $v1,$a2,0x3ff8
    lui        $t0,0x0
    sd         $s7,72($sp)
    dsll32     $t1,$a2,0x0
    lui        $a7,0x0
    sd         $s6,88($sp)
    move       $s6,$a1
    move       $s7,$a3
    sd         $s1,64($sp)
    move       $s1,$a4
    addiu      $s2,$a7,408
    sd         $s5,48($sp)
    move       $s5,$zero
    sd         $s3,16($sp)
    dsrl32     $s3,$t1,0x0
    sd         $s0,40($sp)
    addiu      $s0,$t0,1592
    lui        $t2,0xc000
    sd         $s8,80($sp)
    move       $s8,$a0
    and        $a6,$t2,$a2
    andi       $a0,$a2,0x3ff8
    sd         $s4,32($sp)
    lui        $s4,0xfff
    sd         $ra,24($sp)
    ori        $s4,$s4,0xffff
    beqz       $a6, .L0000478c
    dsll       $s4,$s4,0x8
    lui        $t8,0x4000
    bne        $a6, $t8, .L00004828
    lui        $s4,0xfff
    sd         $a0,56($sp)
    ori        $s4,$s4,0xffff
    b          .L0000472c
    dsll       $s4,$s4,0x8
.L000046e0:
    move       $t1,$s0
    move       $a6,$s7
.L000046e8:
    addiu      $a5,$s2,40
    move       $a4,$s3
    move       $a3,$s6
    addiu      $a2,$s2,832
    move       $a1,$s8
    ld         $t8,56($sp)
    and        $t9,$s4,$a7
    sw         $t1,12($sp)
    li         $a0,2961
    dsll       $t9,$t9,0x4
    or         $t8,$t8,$t9
    jal        cmn_err_tag
    sd         $t8,0($sp)
    addiu      $s5,$s5,1
    slti       $ra,$s5,2
    beqz       $ra, .L0000475c
    addiu      $s1,$s1,8
.L0000472c:
    ld         $a7,0($s1)
    beqz       $a7, .L0000474c
    dsrl       $at,$a7,0x6
    andi       $at,$at,0x3
    bnez       $at, .L000046e0
    addiu      $t1,$s0,16
    b          .L000046e8
    move       $a6,$s7
.L0000474c:
    addiu      $s5,$s5,1
    slti       $v0,$s5,2
    bnez       $v0, .L0000472c
    addiu      $s1,$s1,8
.L0000475c:
    ld         $s0,40($sp)
.L00004760:
    ld         $s1,64($sp)
    ld         $s2,96($sp)
    ld         $s3,16($sp)
    ld         $s4,32($sp)
    ld         $s5,48($sp)
    ld         $ra,24($sp)
    ld         $s6,88($sp)
    ld         $s7,72($sp)
    ld         $s8,80($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L0000478c:
    addiu      $s0,$t0,1592
    dsrl32     $s3,$t1,0x0
    dsll32     $v1,$v1,0x0
    dsrl32     $v1,$v1,0x0
    move       $s5,$zero
    b          .L000047f4
    sd         $v1,56($sp)
.L000047a8:
    move       $t1,$s0
.L000047ac:
    move       $a6,$s7
    addiu      $a5,$s2,40
    move       $a4,$s3
    move       $a3,$s6
    addiu      $a2,$s2,832
    move       $a1,$s8
    ld         $t8,56($sp)
    and        $t9,$s4,$a7
    sw         $t1,12($sp)
    li         $a0,2960
    dsll       $t9,$t9,0x4
    or         $t8,$t8,$t9
    jal        cmn_err_tag
    sd         $t8,0($sp)
    addiu      $s5,$s5,1
    slti       $ra,$s5,2
    beqz       $ra, .L0000475c
    addiu      $s1,$s1,8
.L000047f4:
    ld         $a7,0($s1)
    beqz       $a7, .L00004810
    andi       $at,$a7,0xc0
    bnez       $at, .L000047a8
    addiu      $t1,$s0,16
    b          .L000047ac
    nop
.L00004810:
    addiu      $s5,$s5,1
    slti       $v0,$s5,2
    bnez       $v0, .L000047f4
    addiu      $s1,$s1,8
    b          .L00004760
    ld         $s0,40($sp)
.L00004828:
    lui        $a0,0x3f
    lui        $t8,0x8000
    move       $a1,$a7
    move       $s4,$zero
    addiu      $s0,$t0,1592
    bne        $a6, $t8, .L000048f0
    dsrl32     $s3,$t1,0x0
    lui        $t9,0x7f
    ori        $s5,$a0,0xffff
    ori        $t9,$t9,0xffc0
    dsll       $s5,$s5,0xe
    and        $t9,$a2,$t9
    dsll32     $t9,$t9,0x0
    dsrl32     $t9,$t9,0x0
    addiu      $s2,$a7,408
    b          .L000048b8
    sd         $t9,104($sp)
.L0000486c:
    move       $t1,$s0
    move       $a6,$s7
.L00004874:
    addiu      $a5,$s2,40
    move       $a4,$s3
    move       $a3,$s6
    addiu      $a2,$s2,832
    move       $a1,$s8
    ld         $t8,104($sp)
    and        $t9,$s5,$a7
    sw         $t1,12($sp)
    li         $a0,2962
    dsll       $t9,$t9,0x4
    or         $t8,$t8,$t9
    jal        cmn_err_tag
    sd         $t8,0($sp)
    addiu      $s4,$s4,1
    slti       $ra,$s4,2
    beqz       $ra, .L0000475c
    addiu      $s1,$s1,8
.L000048b8:
    ld         $a7,0($s1)
    beqz       $a7, .L000048d8
    dsrl       $at,$a7,0xa
    andi       $at,$at,0x3
    bnez       $at, .L0000486c
    addiu      $t1,$s0,16
    b          .L00004874
    move       $a6,$s7
.L000048d8:
    addiu      $s4,$s4,1
    slti       $v0,$s4,2
    bnez       $v0, .L000048b8
    addiu      $s1,$s1,8
    b          .L00004760
    ld         $s0,40($sp)
.L000048f0:
    bne        $t2, $a6, .L0000475c
    lui        $v1,0x7f
    addiu      $s2,$a7,408
    addiu      $s0,$t0,1592
    move       $s4,$zero
    dsrl32     $s3,$t1,0x0
    ori        $s5,$a0,0xffff
    ori        $v1,$v1,0xffc0
    dsll       $s5,$s5,0xe
    and        $v1,$a2,$v1
    b          .L00004964
    sd         $v1,104($sp)
.L00004920:
    addiu      $a5,$s2,328
    move       $a4,$s3
    move       $a3,$s6
    addiu      $a2,$s2,832
    move       $a1,$s8
    ld         $t8,104($sp)
    and        $t9,$s5,$a7
    sw         $s0,12($sp)
    li         $a0,2963
    dsll       $t9,$t9,0x4
    or         $t8,$t8,$t9
    jal        cmn_err_tag
    sd         $t8,0($sp)
    addiu      $s4,$s4,1
    slti       $ra,$s4,2
    beqz       $ra, .L0000475c
    addiu      $s1,$s1,8
.L00004964:
    ld         $a7,0($s1)
    bnez       $a7, .L00004920
    move       $a6,$s7
    addiu      $s4,$s4,1
    slti       $at,$s4,2
    bnez       $at, .L00004964
    addiu      $s1,$s1,8
    b          .L00004760
    ld         $s0,40($sp)
    addiu      $sp,$sp,-32
    sd         $s1,8($sp)
    sd         $s0,0($sp)
    dsll32     $s0,$a0,0x0
    move       $s1,$a1
    sd         $ra,16($sp)
    blez       $a1, .L000049c4
    dsrl32     $s0,$s0,0x0
.L000049a8:
    li         $a0,23
    jal        .text
    move       $a1,$s0
    addiu      $s1,$s1,-64
    li         $t8,64
    bgtz       $s1, .L000049a8
    daddu      $s0,$s0,$t8
.L000049c4:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel ecc_init
    li         $a0,4096
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    jal        kmem_zalloc
    li         $a1,2304
    dsll32     $a3,$v0,0x0
    dsrl32     $a3,$a3,0x0
    sd         $s8,16($sp)
    beqz       $a3, .L00004a3c
    sd         $a3,8($sp)
.L00004a00:
    li         $a1,4096
    sll        $s8,$a3,0x0
    jal        .text
    move       $a0,$s8
    li         $a1,512
    lui        $a5,0x0
    lui        $a4,0xa000
    addiu      $a0,$a5,2368
    or         $a4,$s8,$a4
    jal        .text
    sw         $a4,2368($a5)
    ld         $ra,0($sp)
    ld         $s8,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00004a3c:
    move       $a0,$zero
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,1624
    b          .L00004a00
    ld         $a3,8($sp)

glabel early_ecc_init
    lui        $at,0x0
    jr         $ra
    sw         $a0,2368($at)

glabel ecc_force_cache_line_invalid
    addiu      $sp,$sp,-48
    sw         $zero,20($sp)
    sw         $zero,12($sp)
    sw         $zero,16($sp)
    addiu      $v0,$a2,8
    sw         $v0,8($sp)
    or         $at,$a1,$a0
    sd         $s8,32($sp)
    dsll32     $at,$at,0x0
    move       $s8,$a2
    sd         $ra,24($sp)
    dsrl32     $at,$at,0x0
    addiu      $a0,$sp,0
    jal        cacheOP
    sd         $at,0($sp)
    addiu      $a0,$sp,0
    addiu      $v0,$s8,28
    jal        cacheOP
    sw         $v0,8($sp)
    ld         $ra,24($sp)
    ld         $s8,32($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel cer_to_hex
    li         $a7,48
    li         $a6,120
    addiu      $sp,$sp,-16
    lui        $a5,0x0
    addiu      $a3,$sp,0
    addiu      $a4,$sp,0
    addiu      $a5,$a5,1592
.L00004ad8:
    andi       $t0,$a1,0xf
    srl        $a1,$a1,0x4
    addu       $t0,$a5,$t0
    addiu      $a3,$a3,1
    lbu        $t0,56($t0)
    sb         $t0,-1($a3)
    beqz       $a1, .L00004b10
    andi       $t1,$a1,0xf
    srl        $a1,$a1,0x4
    addu       $t1,$a5,$t1
    addiu      $a3,$a3,1
    lbu        $t1,56($t1)
    bnez       $a1, .L00004ad8
    sb         $t1,-1($a3)
.L00004b10:
    sb         $a6,0($a3)
    sb         $a7,1($a3)
    addiu      $a3,$a3,2
.L00004b1c:
    addiu      $a3,$a3,-1
    sltu       $t2,$a4,$a3
    lbu        $t3,0($a3)
    sb         $t3,0($a0)
    beqz       $t2, .L00004b48
    addiu      $a3,$a3,-1
    sltu       $t9,$a4,$a3
    addiu      $a0,$a0,2
    lbu        $t8,0($a3)
    bnez       $t9, .L00004b1c
    sb         $t8,-1($a0)
.L00004b48:
    jr         $ra
    addiu      $sp,$sp,16

glabel r10k_ecc_handler
    addiu      $sp,$sp,-128
    sd         $s2,80($sp)
    sd         $s3,88($sp)
    sd         $s1,72($sp)
    lwu        $s1,24($a1)
    sd         $s4,96($sp)
    sd         $ra,104($sp)
    dsll32     $at,$s1,0x2
    move       $v0,$a0
    sd         $s0,64($sp)
    move       $s0,$a1
    bgez       $at, .L00004ba0
    sd         $s5,112($sp)
    lui        $s4,0x0
    sll        $a1,$s1,0x0
    addiu      $s4,$s4,1592
    jal        cer_to_hex
    addiu      $a0,$s4,84
    b          .L00004d00
    addiu      $s2,$s4,80
.L00004ba0:
    lw         $s3,568($a1)
    lw         $t8,572($a1)
    addiu      $t9,$s3,1
    andi       $t9,$t9,0xf
    beq        $t8, $t9, .L00004c00
    sd         $a0,40($sp)
    slti       $v1,$s3,17
    sra        $a1,$s3,0x1f
    xor        $v0,$s3,$a1
    bnez       $v1, .L00004bd8
    subu       $v0,$v0,$a1
    andi       $s3,$v0,0xf
    xor        $s3,$s3,$a1
    subu       $s3,$s3,$a1
.L00004bd8:
    sll        $ra,$s3,0x5
    addu       $ra,$s0,$ra
    sw         $s1,56($ra)
    ld         $t9,0($s0)
    sd         $t9,80($ra)
    lw         $t8,568($s0)
    addiu      $t8,$t8,1
    andi       $t8,$t8,0xf
    b          .L00004c04
    sw         $t8,568($s0)
.L00004c00:
    li         $s3,-1
.L00004c04:
    li         $a1,0xc000
    dsll       $a1,$a1,0x10
    and        $v0,$a1,$s1
    sd         $zero,8($s0)
    beqz       $v0, .L00004d28
    sd         $zero,16($s0)
    lui        $a2,0x4000
    beq        $v0, $a2, .L00004e38
    li         $a4,0x8000
    dsll       $a4,$a4,0x10
    beq        $a4, $v0, .L00004f88
    lui        $s2,0x0
    beq        $a1, $v0, .L00004f9c
    lui        $s2,0x0
    addiu      $s2,$s2,1736
.L00004c40:
    bltz       $s3, .L00004c64
    li         $ra,1
    sll        $t9,$s3,0x5
    addu       $t9,$s0,$t9
    ld         $ra,8($s0)
    sd         $ra,64($t9)
    ld         $t8,16($s0)
    sd         $t8,72($t9)
    li         $ra,1
.L00004c64:
    beqz       $s2, .L00004cd4
    sb         $ra,-23704($zero)
    lbu        $v0,38($s0)
    li         $at,2
    beq        $at, $v0, .L00004cd4
    li         $a6,0x10
    li         $a4,8
    ld         $a2,40($sp)
    move       $a5,$at
    sb         $a5,38($s0)
    li         $a5,0x2c
    addiu      $a1,$a2,8
    addiu      $v0,$a2,960
    ld         $v1,0($a2)
    addiu      $a7,$a2,952
    move       $a0,$a2
    sd         $v1,952($a2)
.L00004ca8:
    addu       $t1,$a4,$a0
    addu       $t2,$a4,$a7
    ld         $t1,0($t1)
    addiu      $a5,$a5,-2
    addu       $t0,$a4,$a1
    sd         $t1,0($t2)
    addu       $t1,$a4,$v0
    ld         $t0,0($t0)
    addu       $a4,$a4,$a6
    bgtz       $a5, .L00004ca8
    sd         $t0,0($t1)
.L00004cd4:
    move       $s1,$zero
    lui        $s3,0x8000
.L00004cdc:
    or         $a1,$s3,$s0
    dsll32     $a1,$a1,0x0
    li         $a0,19
    jal        .text
    dsrl32     $a1,$a1,0x0
    addiu      $s1,$s1,64
    sltiu      $a2,$s1,4096
    bnez       $a2, .L00004cdc
    addiu      $s0,$s0,64
.L00004d00:
    ld         $s3,88($sp)
    ld         $s4,96($sp)
    ld         $s0,64($sp)
    ld         $ra,104($sp)
    ld         $s5,112($sp)
    ld         $s1,72($sp)
    move       $v0,$s2
    ld         $s2,80($sp)
    jr         $ra
    addiu      $sp,$sp,128
.L00004d28:
    move       $s2,$zero
    andi       $s4,$s1,0x3ff8
    lui        $t9,0x550
    and        $t9,$s1,$t9
    sd         $t9,56($sp)
    li         $t8,0x8000
    lui        $s5,0xaa0
    lw         $a3,40($s0)
    dsll       $t8,$t8,0x10
    and        $s5,$s1,$s5
    daddu      $s4,$s4,$t8
    sd         $s4,48($sp)
    addiu      $a3,$a3,1
    b          .L00004da0
    sw         $a3,40($s0)
.L00004d64:
    beqz       $t8, .L00004db0
    li         $a0,1
.L00004d6c:
    li         $a0,4
    jal        .text
    move       $a1,$s4
    li         $at,1
    li         $v1,1
    daddu      $at,$s2,$at
    sll        $t9,$s2,0x3
    sltiu      $ra,$at,2
    daddu      $s4,$s4,$v1
    addu       $t9,$s0,$t9
    move       $s2,$at
    beqz       $ra, .L00004dc4
    sd         $v0,8($t9)
.L00004da0:
    beqz       $s2, .L00004d64
    ld         $t8,56($sp)
    bnez       $s5, .L00004d6c
    li         $a0,1
.L00004db0:
    daddu      $s2,$s2,$a0
    sltiu      $v0,$s2,2
    li         $v1,1
    bnez       $v0, .L00004da0
    daddu      $s4,$s4,$v1
.L00004dc4:
    move       $a0,$zero
    jal        .text
    ld         $a1,48($sp)
    ld         $a1,48($sp)
    move       $a0,$zero
    jal        .text
    xori       $a1,$a1,0x1
    ld         $s1,48($sp)
    move       $a1,$zero
    move       $a2,$zero
    sll        $s1,$s1,0x0
    jal        ecc_force_cache_line_invalid
    move       $a0,$s1
    move       $a0,$s1
    li         $a1,1
    jal        ecc_force_cache_line_invalid
    move       $a2,$zero
    bltz       $s3, .L00004e2c
    li         $ra,1
    sll        $t9,$s3,0x5
    addu       $t9,$s0,$t9
    ld         $ra,8($s0)
    sd         $ra,64($t9)
    ld         $t8,16($s0)
    sd         $t8,72($t9)
    li         $ra,1
.L00004e2c:
    sb         $ra,-23704($zero)
    b          .L00004cd4
    move       $s2,$zero
.L00004e38:
    lui        $v0,0x550
    lui        $s5,0xaa0
    lw         $at,44($s0)
    and        $v0,$s1,$v0
    sd         $v0,56($sp)
    and        $s5,$s1,$s5
    addiu      $at,$at,1
    beqz       $v0, .L00005014
    sw         $at,44($s0)
.L00004e5c:
    move       $s2,$zero
    andi       $s4,$s1,0x3ff8
    lui        $t9,0xc00
    lui        $at,0x30
    lui        $ra,0x3c0
    and        $at,$s1,$at
    sd         $at,32($sp)
    and        $ra,$s1,$ra
    li         $t8,0x8000
    sd         $ra,24($sp)
    and        $t9,$s1,$t9
    dsll       $t8,$t8,0x10
    sd         $t9,16($sp)
    b          .L00004ebc
    daddu      $s4,$s4,$t8
    li         $a0,1
.L00004e9c:
    jal        .text
    move       $a1,$s4
    li         $a0,1
.L00004ea8:
    daddu      $s2,$s2,$a0
    sltiu      $v1,$s2,2
    li         $v0,1
    beqz       $v1, .L00004f70
    daddu      $s4,$s4,$v0
.L00004ebc:
    beqz       $s2, .L00004f60
    ld         $t9,56($sp)
    beqz       $s5, .L00004ea8
    li         $a0,1
    li         $a0,5
.L00004ed0:
    jal        .text
    move       $a1,$s4
    ld         $a3,32($sp)
    li         $a1,3
    ld         $t0,16($sp)
    sll        $a2,$s2,0x3
    dsrl32     $a5,$v0,0x1d
    ld         $a6,24($sp)
    addu       $a2,$s0,$a2
    li         $a4,2
    beqz       $a3, .L00004f10
    sd         $v0,8($a2)
    dsrl       $a3,$v0,0x6
    and        $a3,$a1,$a3
    beq        $a1, $a3, .L00004fc4
    nop
.L00004f10:
    beqz       $a6, .L00004f20
    dsrl32     $a7,$v0,0x1d
    beq        $a4, $a7, .L00004fd4
    nop
.L00004f20:
    beqz       $t0, .L00004e9c
    li         $a0,1
    dsrl       $t1,$v0,0x6
    and        $t1,$a1,$t1
    bne        $a1, $t1, .L00004e9c
    li         $a0,1
    bne        $a4, $a5, .L00004e9c
    li         $a0,1
    lui        $s4,0x0
    addiu      $s4,$s4,1592
    addiu      $s2,$s4,480
.L00004f4c:
    dsll32     $t8,$s1,0x3
    bgez       $t8, .L00004c40
    nop
.L00004f58:
    b          .L00004c40
    addiu      $s2,$s4,320
.L00004f60:
    bnez       $t9, .L00004ed0
    li         $a0,5
    b          .L00004ea8
    li         $a0,1
.L00004f70:
    dsll32     $t8,$s1,0x3
    lui        $s4,0x0
    bltz       $t8, .L00004f58
    addiu      $s4,$s4,1592
    b          .L00004fe4
    nop
.L00004f88:
    lw         $t9,48($s0)
    addiu      $s2,$s2,1872
    addiu      $t9,$t9,1
    b          .L00004c40
    sw         $t9,48($s0)
.L00004f9c:
    lui        $t9,0x380
    lui        $s2,0x0
    lw         $t8,52($s0)
    and        $t9,$s1,$t9
    addiu      $s2,$s2,1776
    addiu      $t8,$t8,1
    bnez       $t9, .L00004c40
    sw         $t8,52($s0)
    b          .L00005030
    nop
.L00004fc4:
    lui        $s4,0x0
    addiu      $s4,$s4,1592
    b          .L00004f4c
    addiu      $s2,$s4,416
.L00004fd4:
    lui        $s4,0x0
    addiu      $s4,$s4,1592
    b          .L00004f4c
    addiu      $s2,$s4,448
.L00004fe4:
    bltz       $s3, .L00005008
    li         $ra,1
    sll        $t9,$s3,0x5
    addu       $t9,$s0,$t9
    ld         $ra,8($s0)
    sd         $ra,64($t9)
    ld         $t8,16($s0)
    sd         $t8,72($t9)
    li         $ra,1
.L00005008:
    sb         $ra,-23704($zero)
    b          .L00004cd4
    move       $s2,$zero
.L00005014:
    bnez       $s5, .L00004e5c
    dsll32     $at,$s1,0x3
    bgez       $at, .L00005150
    lui        $s2,0x0
    lui        $s2,0x0
    b          .L00004c40
    addiu      $s2,$s2,1912
.L00005030:
    lui        $s5,0x800
    dsll32     $t8,$s1,0x5
    lui        $t9,0x400
    and        $s5,$s1,$s5
    and        $t9,$s1,$t9
    bgez       $t8, .L0000513c
    sd         $t9,0($sp)
.L0000504c:
    lui        $s4,0x7f
    ori        $s4,$s4,0xffc0
    and        $s4,$s1,$s4
    daddu      $s4,$a4,$s4
    sll        $t8,$s4,0x0
    move       $s2,$zero
    b          .L000050cc
    sd         $t8,8($sp)
    li         $a0,7
.L00005070:
    jal        .text
    move       $a1,$s4
    dsrl       $a1,$v0,0xa
    sll        $t8,$s2,0x3
    andi       $a1,$a1,0x3
    addu       $t8,$s0,$t8
    beqz       $a1, .L000050b4
    sd         $v0,8($t8)
    li         $a2,3
    beq        $a2, $a1, .L00005130
    move       $a0,$a2
    jal        .text
    move       $a1,$s4
    ld         $a0,8($sp)
    li         $a2,3
    jal        ecc_force_cache_line_invalid
    sll        $a1,$s2,0x0
.L000050b4:
    li         $a5,1
    daddu      $s2,$s2,$a5
    sltiu      $a3,$s2,2
    li         $a4,1
    beqz       $a3, .L00005104
    daddu      $s4,$s4,$a4
.L000050cc:
    beqz       $s2, .L000050e4
    ld         $a6,0($sp)
    bnez       $s5, .L00005070
    li         $a0,7
    b          .L000050f0
    li         $t1,1
.L000050e4:
    bnez       $a6, .L00005070
    li         $a0,7
    li         $t1,1
.L000050f0:
    daddu      $s2,$s2,$t1
    sltiu      $a7,$s2,2
    li         $t0,1
    bnez       $a7, .L000050cc
    daddu      $s4,$s4,$t0
.L00005104:
    bltz       $s3, .L00005120
    sll        $t3,$s3,0x5
    addu       $t3,$s0,$t3
    ld         $t8,8($s0)
    sd         $t8,64($t3)
    ld         $t2,16($s0)
    sd         $t2,72($t3)
.L00005120:
    li         $s2,1
    sb         $s2,-23704($zero)
    b          .L00004cd4
    move       $s2,$zero
.L00005130:
    lui        $s2,0x0
    b          .L00004c40
    addiu      $s2,$s2,1832
.L0000513c:
    dsll32     $t8,$s1,0x4
    bltz       $t8, .L0000504c
    lui        $s2,0x0
    b          .L00004c40
    addiu      $s2,$s2,1800
.L00005150:
    b          .L00004c40
    addiu      $s2,$s2,1968

glabel r10k_ecc_panic
    move       $a4,$a2
    lw         $a2,24($a2)
    ld         $a3,0($a4)
    addiu      $sp,$sp,-32
    sd         $s8,8($sp)
    move       $s8,$a0
    li         $a0,20
    addiu      $a4,$a4,8
    sd         $a1,16($sp)
    sd         $ra,0($sp)
    jal        .text
    move       $a1,$s8
    move       $a2,$s8
    lui        $a1,0x0
    ld         $a3,16($sp)
    li         $a0,16
    addiu      $a1,$a1,2104
    jal        cmn_err
    addiu      $a3,$a3,952
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel ecc_log
    sb         $zero,-23704($zero)
    addiu      $sp,$sp,-32
    sd         $s1,0($sp)
    lui        $s1,0x0
    lw         $s1,2368($s1)
    lw         $v0,932($s1)
    lw         $at,928($s1)
    addiu      $v0,$v0,15
    sd         $s0,8($sp)
    andi       $v0,$v0,0xf
    sd         $s2,16($sp)
    sd         $ra,24($sp)
    beq        $at, $v0, .L00005250
    addiu      $s1,$s1,360
    lw         $s0,572($s1)
.L000051f0:
    lw         $t8,568($s1)
    lui        $s2,0x0
    beq        $t8, $s0, .L00005234
    addiu      $s2,$s2,1592
    sll        $a2,$s0,0x5
.L00005204:
    addu       $a2,$s1,$a2
    addiu      $a1,$s2,600
    li         $a0,276
    ld         $a3,80($a2)
    addiu      $a4,$a2,64
    jal        .text
    lw         $a2,56($a2)
    lw         $a3,568($s1)
    addiu      $s0,$s0,1
    andi       $s0,$s0,0xf
    bne        $a3, $s0, .L00005204
    sll        $a2,$s0,0x5
.L00005234:
    ld         $s2,16($sp)
    ld         $ra,24($sp)
    sw         $s0,572($s1)
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00005250:
    lui        $a1,0x0
    li         $a0,20
    addiu      $a1,$a1,1592
    jal        cmn_err
    addiu      $a1,$a1,544
    b          .L000051f0
    lw         $s0,572($s1)

glabel ecc_printPending
    addiu      $sp,$sp,-64
    sd         $s0,16($sp)
    sd         $s1,8($sp)
    sd         $s4,24($sp)
    move       $s4,$a0
    sd         $s5,0($sp)
    move       $s5,$zero
    sd         $s3,40($sp)
    lui        $s3,0x0
    sd         $s2,48($sp)
    lui        $s2,0x0
    addiu      $s3,$s3,2368
    sd         $ra,32($sp)
    b          .L000052b8
    addiu      $s2,$s2,1592
.L000052a8:
    addiu      $s5,$s5,1
.L000052ac:
    slti       $t8,$s5,128
    beqz       $t8, .L00005344
    addiu      $s3,$s3,4
.L000052b8:
    lw         $a7,0($s3)
    beqz       $a7, .L000052a8
    nop
    lw         $a5,412($a7)
    lw         $a4,408($a7)
    lw         $a3,404($a7)
    move       $a1,$s5
    addiu      $a0,$s2,616
    lw         $a2,400($a7)
    jalr       $s4
    addiu      $s1,$a7,360
    lw         $t9,568($s1)
    lw         $s0,572($s1)
    beq        $s0, $t9, .L000052a8
    nop
    sll        $a1,$s0,0x5
.L000052f8:
    addu       $a1,$s1,$a1
    ld         $a4,72($a1)
    ld         $a3,64($a1)
    ld         $a2,80($a1)
    addiu      $a0,$s2,672
    jalr       $s4
    lwu        $a1,56($a1)
    addiu      $s0,$s0,1
    sra        $t8,$s0,0x1f
    xor        $s0,$s0,$t8
    subu       $s0,$s0,$t8
    andi       $s0,$s0,0xf
    lw         $a2,568($s1)
    xor        $s0,$s0,$t8
    subu       $s0,$s0,$t8
    bne        $s0, $a2, .L000052f8
    sll        $a1,$s0,0x5
    b          .L000052ac
    addiu      $s5,$s5,1
.L00005344:
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $s2,48($sp)
    ld         $ra,32($sp)
    ld         $s3,40($sp)
    ld         $s4,24($sp)
    ld         $s5,0($sp)
    jr         $ra
    addiu      $sp,$sp,64

glabel ecc_compute_sctag_ecc
    addiu      $sp,$sp,-48
    sd         $ra,16($sp)
    sd         $s3,24($sp)
    move       $s3,$a0
    sd         $s2,32($sp)
    move       $s2,$zero
    sd         $s1,0($sp)
    lui        $s1,0x0
    sd         $s0,8($sp)
    move       $s0,$zero
    addiu      $s1,$s1,952
.L00005394:
    ld         $a0,0($s1)
    sll        $s0,$s0,0x1
    jal        ecc_bitcount
    and        $a0,$a0,$s3
    andi       $a1,$v0,0x1
    addiu      $s1,$s1,8
    addiu      $s2,$s2,1
    beqz       $a1, .L000053bc
    slti       $a3,$s2,7
    ori        $s0,$s0,0x1
.L000053bc:
    bnez       $a3, .L00005394
    move       $v0,$s0
    ld         $s0,8($sp)
    ld         $ra,16($sp)
    ld         $s1,0($sp)
    ld         $s2,32($sp)
    ld         $s3,24($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel scache_data_bit_error
    addiu      $sp,$sp,-32
    li         $t9,-64
    move       $v0,$zero
    sd         $ra,16($sp)
    li         $a6,1
    li         $ra,-128
    sd         $s1,0($sp)
    andi       $s1,$a0,0x1ff
    sd         $s0,8($sp)
    lui        $s0,0x0
    b          .L000054e4
    addiu      $s0,$s0,408
.L00005410:
    beq        $s1, $a5, .L000054b8
    addiu      $ra,$ra,1
    addiu      $v0,$v0,1
    addiu      $t9,$t9,1
    slti       $t8,$v0,136
    dsllv      $t1,$a6,$v0
    slti       $t2,$v0,128
    beqz       $t8, .L000054c0
    slti       $t0,$v0,64
    dsllv      $t3,$a6,$t9
.L00005438:
    addiu      $a3,$s0,616
    li         $a2,8
    dsllv      $t8,$a6,$ra
    move       $a4,$zero
    b          .L000054d8
    move       $a5,$zero
.L00005450:
    ld         $at,16($a3)
    and        $at,$at,$t1
    beqz       $at, .L00005464
    sllv       $v1,$a6,$a2
    or         $a5,$a5,$v1
.L00005464:
    slti       $a0,$a4,9
.L00005468:
    addiu      $a3,$a3,24
    addiu      $a4,$a4,1
    beqz       $a0, .L00005410
    addiu      $a2,$a2,-1
.L00005478:
    bnez       $t0, .L00005450
    sllv       $a7,$a6,$a2
    beqz       $t2, .L000054a0
    nop
    ld         $a1,8($a3)
    and        $a1,$a1,$t3
    beqz       $a1, .L00005468
    slti       $a0,$a4,9
    b          .L00005464
    or         $a5,$a5,$a7
.L000054a0:
    ld         $a7,0($a3)
    and        $a7,$a7,$t8
    beqz       $a7, .L00005464
    sllv       $at,$a6,$a2
    b          .L00005464
    or         $a5,$a5,$at
.L000054b8:
    b          .L000054c8
    ld         $ra,16($sp)
.L000054c0:
    li         $v0,-1
    ld         $ra,16($sp)
.L000054c8:
    ld         $s1,0($sp)
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000054d8:
    addiu      $a4,$a4,1
    b          .L00005478
    nop
.L000054e4:
    slti       $t0,$v0,64
    slti       $t2,$v0,128
    dsllv      $t1,$a6,$v0
    b          .L00005438
    dsllv      $t3,$a6,$t9

glabel ecc_compute_scdata_ecc
    addiu      $sp,$sp,-48
    sd         $s0,32($sp)
    sd         $s4,16($sp)
    sd         $s3,8($sp)
    move       $s3,$a0
    move       $s4,$a1
    sd         $s2,0($sp)
    move       $s2,$zero
    sd         $s1,24($sp)
    lui        $s1,0x0
    move       $s0,$zero
    sd         $ra,40($sp)
    addiu      $s1,$s1,1024
.L0000552c:
    ld         $a0,8($s1)
    ld         $a1,16($s1)
    sll        $s0,$s0,0x1
    and        $a1,$a1,$s4
    and        $a0,$a0,$s3
    jal        ecc_bitcount
    xor        $a0,$a0,$a1
    andi       $a1,$v0,0x1
    addiu      $s1,$s1,24
    addiu      $s2,$s2,1
    beqz       $a1, .L00005560
    slti       $a4,$s2,9
    ori        $s0,$s0,0x1
.L00005560:
    bnez       $a4, .L0000552c
    dsll32     $a0,$s0,0x0
    jal        ecc_bitcount
    dsrl32     $a0,$a0,0x0
    ld         $s2,0($sp)
    ld         $s3,8($sp)
    ld         $ra,40($sp)
    andi       $a1,$v0,0x1
    ld         $s4,16($sp)
    beqz       $a1, .L00005590
    ld         $s1,24($sp)
    ori        $s0,$s0,0x200
.L00005590:
    move       $v0,$s0
    ld         $s0,32($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel ecc_bitcount
    beqz       $a0, .L000055d8
    move       $v0,$zero
.L000055a8:
    li         $at,-1
    daddu      $at,$a0,$at
    and        $a0,$a0,$at
    addiu      $v0,$v0,1
    beqz       $a0, .L000055d0
    li         $v1,-1
    daddu      $v1,$a0,$v1
    and        $a0,$a0,$v1
    bnez       $a0, .L000055a8
    addiu      $v0,$v0,1
.L000055d0:
    jr         $ra
    nop
.L000055d8:
    move       $v0,$zero
    jr         $ra
    nop

glabel ecc_scache_bits_in_error
    move       $v0,$a0
    addiu      $sp,$sp,-16
    move       $v0,$zero
    beqz       $a0, .L00005628
    sd         $ra,0($sp)
    dsll32     $a0,$a0,0x0
    jal        ecc_bitcount
    dsrl32     $a0,$a0,0x0
    li         $a1,1
    li         $a3,5
    ld         $ra,0($sp)
    beq        $v0, $a1, .L00005630
    li         $a0,3
    beq        $v0, $a0, .L00005630
    nop
    beq        $v0, $a3, .L00005630
    li         $v0,2
.L00005628:
    jr         $ra
    addiu      $sp,$sp,16
.L00005630:
    b          .L00005628
    li         $v0,1

glabel warn
    addiu      $sp,$sp,-80
    sd         $a4,48($sp)
    sd         $a5,56($sp)
    sd         $a6,64($sp)
    sd         $ra,0($sp)
    sd         $a2,32($sp)
    sw         $a0,20($sp)
    move       $at,$a0
    move       $a0,$zero
    sd         $a1,24($sp)
    li         $a1,20
    move       $a2,$at
    sd         $a3,40($sp)
    addiu      $a3,$sp,24
    jal        icmn_err_tag
    sd         $a7,72($sp)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,80

glabel engr_dvt_thread
    li         $a0,5
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,2312
    jal        sthread_exit
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
    blez       $a2, .L000056d8
    move       $v0,$a2
    move       $a5,$zero
.L000056bc:
    addiu      $a5,$a5,1
    slt        $v1,$a5,$v0
    addiu      $a1,$a1,1
    lbu        $at,0($a0)
    addiu      $a0,$a0,1
    bnez       $v1, .L000056bc
    sb         $at,-1($a1)
.L000056d8:
    jr         $ra
    nop
    andi       $at,$a2,0x1
    andi       $a6,$a1,0x1
    li         $v0,-1
    bnez       $at, .L00005704
    andi       $a5,$a0,0x1
    bnez       $a5, .L00005704
    nop
    beqz       $a6, .L0000570c
    srl        $a5,$a2,0x1f
.L00005704:
    jr         $ra
    nop
.L0000570c:
    addu       $a5,$a5,$a2
    sra        $a5,$a5,0x1
    move       $v0,$zero
    blez       $a5, .L0000573c
    addiu      $a5,$a5,-1
.L00005720:
    addiu      $v0,$v0,1
    slt        $a7,$a5,$v0
    addiu      $a1,$a1,2
    lh         $a6,0($a0)
    addiu      $a0,$a0,2
    beqz       $a7, .L00005720
    sh         $a6,-2($a1)
.L0000573c:
    jr         $ra
    move       $v0,$a2
    andi       $at,$a2,0x3
    andi       $a6,$a1,0x3
    li         $v0,-1
    bnez       $at, .L00005768
    andi       $a5,$a0,0x3
    bnez       $a5, .L00005768
    nop
    beqz       $a6, .L00005770
    sra        $a5,$a2,0x1
.L00005768:
    jr         $ra
    nop
.L00005770:
    srl        $a5,$a5,0x1e
    addu       $a5,$a5,$a2
    sra        $a5,$a5,0x2
    move       $v0,$zero
    blez       $a5, .L000057a4
    addiu      $a5,$a5,-1
.L00005788:
    addiu      $v0,$v0,1
    slt        $a7,$a5,$v0
    addiu      $a1,$a1,4
    lw         $a6,0($a0)
    addiu      $a0,$a0,4
    beqz       $a7, .L00005788
    sw         $a6,-4($a1)
.L000057a4:
    jr         $ra
    move       $v0,$a2
    andi       $at,$a2,0x7
    andi       $a6,$a1,0x7
    li         $v0,-1
    bnez       $at, .L000057d0
    andi       $a5,$a0,0x7
    bnez       $a5, .L000057d0
    nop
    beqz       $a6, .L000057d8
    sra        $a5,$a2,0x2
.L000057d0:
    jr         $ra
    nop
.L000057d8:
    srl        $a5,$a5,0x1d
    addu       $a5,$a5,$a2
    sra        $a5,$a5,0x3
    move       $v0,$zero
    blez       $a5, .L0000580c
    addiu      $a5,$a5,-1
.L000057f0:
    addiu      $v0,$v0,1
    slt        $a7,$a5,$v0
    addiu      $a1,$a1,8
    ld         $a6,0($a0)
    addiu      $a0,$a0,8
    beqz       $a7, .L000057f0
    sd         $a6,-8($a1)
.L0000580c:
    jr         $ra
    move       $v0,$a2
    li         $a6,-1
    li         $a7,4
    li         $at,1
    li         $v0,2
    addiu      $sp,$sp,-16
    li         $t0,8
    beq        $a3, $at, .L0000586c
    sd         $ra,0($sp)
    beq        $a3, $v0, .L0000587c
    nop
    beq        $a3, $a7, .L0000588c
    nop
    beq        $a3, $t0, .L0000585c
    nop
.L0000584c:
    ld         $ra,0($sp)
    move       $v0,$a6
    jr         $ra
    addiu      $sp,$sp,16
.L0000585c:
    jal        .text
    nop
    b          .L0000584c
    move       $a6,$v0
.L0000586c:
    jal        .text
    nop
    b          .L0000584c
    move       $a6,$v0
.L0000587c:
    jal        .text
    nop
    b          .L0000584c
    move       $a6,$v0
.L0000588c:
    jal        .text
    nop
    b          .L0000584c
    move       $a6,$v0

glabel pio_bcopyin
    lw         $a7,12($a0)
    addiu      $sp,$sp,-32
    sltu       $at,$a1,$a7
    sd         $s0,16($sp)
    move       $s0,$a3
    subu       $t0,$a1,$a7
    bnez       $at, .L00005918
    addu       $v0,$a3,$t0
    lw         $t1,16($a0)
    addu       $v1,$a7,$t1
    sltu       $v1,$a1,$v1
    beqz       $v1, .L00005918
    sltu       $a3,$t1,$v0
    sd         $a2,8($sp)
    sd         $a4,0($sp)
    beqz       $a3, .L000058e4
    sd         $ra,24($sp)
    subu       $s0,$t1,$t0
.L000058e4:
    jal        pio_mapaddr
    nop
    move       $a0,$v0
    ld         $a1,8($sp)
    move       $a2,$s0
    jal        .text
    ld         $a3,0($sp)
    ld         $ra,24($sp)
    move       $a0,$v0
.L00005908:
    move       $v0,$a0
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00005918:
    b          .L00005908
    move       $a0,$zero

glabel pio_bcopyout
    lw         $a7,12($a0)
    addiu      $sp,$sp,-32
    sltu       $at,$a1,$a7
    sd         $s0,16($sp)
    move       $s0,$a3
    subu       $t0,$a1,$a7
    bnez       $at, .L0000599c
    addu       $v0,$a3,$t0
    lw         $t1,16($a0)
    addu       $v1,$a7,$t1
    sltu       $v1,$a1,$v1
    beqz       $v1, .L0000599c
    sltu       $a3,$t1,$v0
    sd         $a2,8($sp)
    sd         $a4,0($sp)
    beqz       $a3, .L00005968
    sd         $ra,24($sp)
    subu       $s0,$t1,$t0
.L00005968:
    jal        pio_mapaddr
    nop
    move       $a1,$v0
    ld         $a0,8($sp)
    move       $a2,$s0
    jal        .text
    ld         $a3,0($sp)
    ld         $ra,24($sp)
    move       $a0,$v0
.L0000598c:
    move       $v0,$a0
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000599c:
    b          .L0000598c
    move       $a0,$zero

glabel pio_orb_rmw
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        pio_mapaddr
    move       $s8,$a2
    move       $a0,$v0
    jal        orb_rmw
    move       $a1,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel pio_orh_rmw
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        pio_mapaddr
    move       $s8,$a2
    move       $a0,$v0
    jal        orh_rmw
    move       $a1,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel pio_orw_rmw
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        pio_mapaddr
    move       $s8,$a2
    move       $a0,$v0
    jal        orw_rmw
    move       $a1,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel pio_andb_rmw
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        pio_mapaddr
    move       $s8,$a2
    move       $a0,$v0
    jal        andb_rmw
    move       $a1,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel pio_andh_rmw
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        pio_mapaddr
    move       $s8,$a2
    move       $a0,$v0
    jal        andh_rmw
    move       $a1,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel pio_andw_rmw
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        pio_mapaddr
    move       $s8,$a2
    move       $a0,$v0
    jal        andw_rmw
    move       $a1,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel pio_badaddr
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        pio_mapaddr
    move       $s8,$a2
    move       $a0,$v0
    jal        badaddr
    move       $a1,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel pio_badaddr_val
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a2
    jal        pio_mapaddr
    sd         $a3,16($sp)
    move       $a0,$v0
    move       $a1,$s8
    jal        badaddr_val
    ld         $a2,16($sp)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel pio_wbadaddr
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        pio_mapaddr
    move       $s8,$a2
    move       $a0,$v0
    jal        wbadaddr
    move       $a1,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel pio_wbadaddr_val
    addiu      $sp,$sp,-48
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a2
    jal        pio_mapaddr
    sw         $a3,44($sp)
    move       $a0,$v0
    addiu      $a2,$sp,44
    move       $a1,$s8
    subu       $a2,$a2,$s8
    jal        wbadaddr_val
    addiu      $a2,$a2,4
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel _r4600sc_disable_scache
    lui        $a1,0xe000
    li         $a0,0
    and        $a1,$a1,$ra
    mfc0       $t2,c0_prid
    andi       $t2,$t2,0xff00
    addiu      $t2,$t2,-8960
    beqz       $t2, .L00005be4
    nop
    addiu      $t2,$t2,-1024
    beqz       $t2, .L00005be4
    nop
    addiu      $t2,$t2,-256
    bnez       $t2, .L00005c20
    nop
.L00005be4:
    mfc0       $t2,c0_config
    li         $at,-4097
    and        $t2,$t2,$at
    sync
    mtc0       $t2,c0_config
    b          .L00005c20
    nop
.L00005c20:
    lui        $a0,0x0
    addiu      $a0,$a0,1312
    or         $a0,$a0,$a1
    lw         $v0,0($a0)
    li         $t0,1
    jr         $ra
    sw         $t0,0($a0)

glabel _r4600sc_enable_scache
    lui        $a1,0xe000
    li         $a0,0
    and        $a1,$a1,$ra
    mfc0       $t2,c0_prid
    andi       $t2,$t2,0xff00
    addiu      $t2,$t2,-8960
    beqz       $t2, .L00005c84
    nop
    addiu      $t2,$t2,-1024
    beqz       $t2, .L00005c84
    nop
    addiu      $t2,$t2,-256
    bnez       $t2, .L00005dd8
    nop
.L00005c84:
    sync
    mfc0       $t2,c0_config
    lui        $v1,0x0
    addiu      $v1,$v1,0
    lui        $a4,0x8000
    andi       $t3,$t2,0x1000
    lw         $v1,0($v1)
    bnez       $t3, .L00005dd8
    addiu      $a4,$a4,0
    lui        $v0,0x0
    addiu      $v0,$v0,23772
    lui        $at,0xa000
    lui        $t9,0x0
    or         $v0,$v0,$at
    addiu      $t9,$t9,24024
    ori        $t2,$t2,0x1000
    jr         $v0
    or         $t9,$t9,$a1
    mfc0       $a5,c0_sr
    nop
    andi       $t3,$a5,0x4
    bnez       $t3, .L00005cf4
    nop
    mtc0       $zero,c0_sr
.L00005cf4:
    addiu      $t3,$gp,0
    lw         $t3,0($t3)
    bnez       $t3, .L00005d7c
    mtc0       $t2,c0_config
    nop
    mfc0       $a6,c0_taglo
    mtc0       $zero,c0_taglo
    add        $v1,$v1,$a4
    addi       $a4,$a4,4096
    mfc0       $t3,c0_prid
    andi       $t3,$t3,0xff00
    addiu      $t3,$t3,-9984
    sync
    bnez       $t3, .L00005d64
    nop
.L00005d50:
    cache      0x16,-4096($a4)
    bne        $a4, $v1, .L00005d50
    addi       $a4,$a4,4096
    b          .L00005d70
    nop
.L00005d64:
    cache      0x17,-4096($a4)
    bne        $a4, $v1, .L00005d64
    addi       $a4,$a4,4096
.L00005d70:
    mtc0       $a6,c0_taglo
    b          .L00005dc0
    nop
    mfc0       $t3,c0_prid
    andi       $t3,$t3,0xff00
    addiu      $t3,$t3,-9984
    bnez       $t3, .L00005dbc
    nop
    sync
    b          .L00005dc0
    cache      0x2,0($a4)
.L00005dbc:
    cache      0x3,0($a4)
.L00005dc0:
    andi       $t3,$a5,0x4
    bnez       $t3, .L00005dd0
    nop
    mtc0       $a5,c0_sr
.L00005dd0:
    jr         $t9
    nop
.L00005dd8:
    lui        $a0,0x0
    addiu      $a0,$a0,1312
    or         $a0,$a0,$a1
    jr         $ra
    sw         $zero,0($a0)

glabel _r4600sc_vtop
    bgez       $a0, .L00005e08
    sll        $a5,$a0,0x1
    bltz       $a5, .L00005e08
    nop
    sll        $v0,$a0,0x3
    jr         $t9
    srl        $v0,$v0,0x3
.L00005e08:
    dmfc0      $a7,c0_entryhi
    dsrl32     $a5,$a7,0x8
    andi       $a6,$a7,0xff
    dsll32     $a5,$a5,0x8
    li         $at,-8192
    and        $t3,$a0,$at
    or         $v0,$a5,$a6
    or         $v0,$t3,$v0
    dmtc0      $v0,c0_entryhi
    tlbp
    nop
    mfc0       $t3,c0_index
    nop
    bltz       $t3, .L00005e88
    li         $v0,-1
    tlbr
    nop
    srl        $t8,$a0,0xc
    andi       $a6,$t8,0x1
    bnez       $a6, .L00005e6c
    dmfc0      $v0,c0_entrylo0
    j          .text
    nop
.L00005e6c:
    dmfc0      $v0,c0_entrylo1
    nop
    dsrl       $v0,$v0,0x6
    li         $t3,4095
    dsll       $v0,$v0,0xc
    and        $t3,$a0,$t3
    or         $v0,$v0,$t3
.L00005e88:
    dmtc0      $a7,c0_entryhi
    jr         $t9
    nop

glabel _r4600sc_cache_index
    li         $a7,1
    dsll       $a7,$a7,0x1f
    or         $v0,$a0,$a7
    lui        $a7,0x9000
    dsll32     $a7,$a7,0x0
    jr         $t9
    or         $v0,$v0,$a7

glabel _r4600sc_limit
    srl        $v0,$a0,0xc
    srl        $v1,$a1,0xc
    bne        $v0, $v1, .L00005ed0
    nop
    subu       $v0,$a1,$a0
    li         $at,-32
    jr         $t9
    and        $v0,$v0,$at
.L00005ed0:
    addiu      $v0,$a0,4096
    srl        $v0,$v0,0xc
    sll        $v0,$v0,0xc
    subu       $v0,$v0,$a0
    li         $at,-32
    jr         $t9
    and        $v0,$v0,$at

glabel _r4600sc_inval_cache
.L00005eec:
    lw         $t0,-23888($zero)
    beqz       $t0, .L00006038
    sltu       $at,$a1,$t0
    bnez       $at, .L00006040
    nop
    lui        $t0,0x0
    addiu      $t0,$t0,1312
    lw         $t0,0($t0)
    bnez       $t0, .L00006038
    nop
    mfc0       $t2,c0_prid
    andi       $t2,$t2,0xff00
    addiu      $t2,$t2,-8960
    beqz       $t2, .L00005f50
    nop
    addiu      $t2,$t2,-1024
    beqz       $t2, .L00005f50
    nop
    addiu      $t2,$t2,-256
    bnez       $t2, .L00006038
    nop
.L00005f50:
    addiu      $t3,$gp,0
    lw         $t3,0($t3)
    lui        $t2,0x8000
    addiu      $t2,$t2,0
    bnez       $t3, .L00005ffc
    nop
    lui        $v1,0x0
    addiu      $v1,$v1,0
    lw         $v1,0($v1)
    add        $v1,$v1,$t2
    addi       $t2,$t2,4096
    mfc0       $a5,c0_sr
    nop
    mtc0       $zero,c0_sr
    nop
    mfc0       $a6,c0_taglo
    nop
    mtc0       $zero,c0_taglo
    mfc0       $t3,c0_prid
    andi       $t3,$t3,0xff00
    addiu      $t3,$t3,-9984
    bnez       $t3, .L00005fe4
    nop
    sync
.L00005fd0:
    cache      0x16,-4096($t2)
    bne        $t2, $v1, .L00005fd0
    addi       $t2,$t2,4096
    b          .L00005ff0
    nop
.L00005fe4:
    cache      0x17,-4096($t2)
    bne        $t2, $v1, .L00005fe4
    addi       $t2,$t2,4096
.L00005ff0:
    mtc0       $a6,c0_taglo
    b          .L00006038
    mtc0       $a5,c0_sr
.L00005ffc:
    mfc0       $t3,c0_prid
    andi       $t3,$t3,0xff00
    addiu      $t3,$t3,-9984
    bnez       $t3, .L0000602c
    nop
    sync
    b          .L00006038
    cache      0x2,0($t2)
.L0000602c:
    cache      0x3,0($t2)
    b          .L00006038
    nop
.L00006038:
    jr         $ra
    nop

glabel _r4600sc_index_inval
.L00006040:
    lw         $t0,-23888($zero)
    beqz       $t0, .L0000630c
    nop
    lui        $t2,0x0
    addiu      $t2,$t2,1312
    lw         $t2,0($t2)
    bnez       $t2, .L0000630c
    nop
    mfc0       $t2,c0_prid
    andi       $t2,$t2,0xff00
    addiu      $t2,$t2,-8960
    beqz       $t2, .L0000609c
    nop
    addiu      $t2,$t2,-1024
    beqz       $t2, .L0000609c
    nop
    addiu      $t2,$t2,-256
    bnez       $t2, .L0000630c
    nop
.L0000609c:
    sltu       $t2,$t0,$a1
    bnez       $t2, .L00006218
    nop
    li         $t3,2048
    move       $t0,$a1
    sltu       $t2,$t3,$a1
    addu       $t0,$t0,$a0
    bnez       $t2, .L0000616c
    move       $t1,$a0
    li         $at,-32
    and        $t1,$t1,$at
    addiu      $t0,$t0,31
    and        $t0,$t0,$at
    addiu      $t1,$t1,32
    sltu       $at,$t0,$t1
    bnez       $at, .L0000630c
    nop
    mfc0       $a5,c0_sr
    nop
    mtc0       $zero,c0_sr
    nop
    mfc0       $a6,c0_taglo
    mtc0       $zero,c0_taglo
    mfc0       $t3,c0_prid
    andi       $t3,$t3,0xff00
    addiu      $t3,$t3,-9984
    bnez       $t3, .L00006154
    nop
    sync
.L00006140:
    cache      0xa,-32($t1)
    bne        $t1, $t0, .L00006140
    addiu      $t1,$t1,32
    b          .L00006160
    nop
.L00006154:
    cache      0xb,-32($t1)
    bne        $t1, $t0, .L00006154
    addiu      $t1,$t1,32
.L00006160:
    mtc0       $a6,c0_taglo
    b          .L0000630c
    mtc0       $a5,c0_sr
.L0000616c:
    li         $at,-4096
    and        $t1,$t1,$at
    addiu      $t0,$t0,4095
    and        $t0,$t0,$at
    addiu      $t1,$t1,4096
    sltu       $at,$t0,$t1
    bnez       $at, .L0000630c
    nop
    mfc0       $a5,c0_sr
    nop
    mtc0       $zero,c0_sr
    nop
    mfc0       $a6,c0_taglo
    mtc0       $zero,c0_taglo
    mfc0       $t3,c0_prid
    andi       $t3,$t3,0xff00
    addiu      $t3,$t3,-9984
    bnez       $t3, .L00006200
    nop
    sync
.L000061ec:
    cache      0x16,-4096($t1)
    bne        $t1, $t0, .L000061ec
    addiu      $t1,$t1,4096
    b          .L0000620c
    nop
.L00006200:
    cache      0x17,-4096($t1)
    bne        $t1, $t0, .L00006200
    addiu      $t1,$t1,4096
.L0000620c:
    mtc0       $a6,c0_taglo
    b          .L0000630c
    mtc0       $a5,c0_sr
.L00006218:
    addiu      $t3,$gp,0
    lw         $t3,0($t3)
    lui        $t1,0x8000
    addiu      $t1,$t1,0
    bnez       $t3, .L000062d0
    nop
    lui        $v1,0x0
    addiu      $v1,$v1,0
    lw         $v1,0($v1)
    add        $v1,$v1,$t1
    addi       $t1,$t1,4096
    mfc0       $a5,c0_sr
    nop
    mtc0       $zero,c0_sr
    nop
    mfc0       $a6,c0_taglo
    mtc0       $zero,c0_taglo
    mfc0       $t3,c0_prid
    andi       $t3,$t3,0xff00
    addiu      $t3,$t3,-9984
    bnez       $t3, .L000062b8
    nop
    sync
.L000062a4:
    cache      0x16,-4096($t1)
    bne        $t1, $v1, .L000062a4
    addi       $t1,$t1,4096
    b          .L000062c4
    nop
.L000062b8:
    cache      0x17,-4096($t1)
    bne        $t1, $v1, .L000062b8
    addi       $t1,$t1,4096
.L000062c4:
    mtc0       $a6,c0_taglo
    b          .L0000630c
    mtc0       $a5,c0_sr
.L000062d0:
    mfc0       $t3,c0_prid
    andi       $t3,$t3,0xff00
    addiu      $t3,$t3,-9984
    bnez       $t3, .L00006300
    nop
    sync
    b          .L0000630c
    cache      0x2,0($t1)
.L00006300:
    cache      0x3,0($t1)
    b          .L0000630c
    nop
.L0000630c:
    jr         $ra
    nop

glabel __dcache_inval
    blez       $a1, .L00006990
    nop
    lw         $a7,-23888($zero)
    beqz       $a7, .L000063e8
    nop
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lw         $t0,0($t0)
    bnez       $t0, .L000063e8
    nop
    sltu       $t2,$a7,$a1
    bnez       $t2, .L000063b8
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L000063ac
    nop
    andi       $t2,$t0,0x3f
    beqz       $t2, .L0000637c
    addiu      $t1,$t1,-64
    subu       $t0,$t0,$t2
    cache      0x17,0($t0)
    sltu       $at,$t0,$t1
    beqz       $at, .L000063ac
    addiu      $t0,$t0,64
.L0000637c:
    andi       $t2,$t1,0x3f
    beqz       $t2, .L0000639c
    subu       $t1,$t1,$t2
    cache      0x17,64($t1)
    addiu      $t1,$t1,1
    sltu       $at,$t0,$t1
    beqz       $at, .L000063ac
    nop
.L0000639c:
    cache      0x13,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000639c
    addiu      $t0,$t0,64
.L000063ac:
    cache      0x14,-23888($zero)
    jr         $ra
    nop
.L000063b8:
    lui        $t0,0x8000
    srl        $a7,$a7,0x1
    addu       $t1,$t0,$a7
    addiu      $t1,$t1,-64
.L000063c8:
    cache      0x3,0($t0)
    cache      0x3,1($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L000063c8
    addiu      $t0,$t0,64
    cache      0x14,-23888($zero)
    jr         $ra
    nop
.L000063e8:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L00006490
    nop
    lui        $t3,0x0
    addiu      $t3,$t3,0
    lw         $t3,0($t3)
    bnez       $t3, .L00006554
    nop
    lui        $t3,0x0
    addiu      $t3,$t3,0
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006504
    lw         $t3,0($t3)
    beqz       $t3, .L00006498
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006490
    nop
    andi       $t2,$t0,0x1f
    beqz       $t2, .L00006460
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
    cache      0x15,0($t0)
    sltu       $at,$t0,$t1
    beqz       $at, .L00006490
    addiu      $t0,$t0,32
.L00006460:
    andi       $t2,$t1,0x1f
    beqz       $t2, .L00006480
    subu       $t1,$t1,$t2
    cache      0x15,32($t1)
    addiu      $t1,$t1,1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006490
    nop
.L00006480:
    cache      0x11,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006480
    addiu      $t0,$t0,32
.L00006490:
    b          .L00006040
    nop
.L00006498:
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L000064fc
    nop
    andi       $t2,$t0,0x1f
    beqz       $t2, .L000064cc
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
    cache      0x15,0($t0)
    sltu       $at,$t0,$t1
    beqz       $at, .L000064fc
    addiu      $t0,$t0,32
.L000064cc:
    andi       $t2,$t1,0x1f
    beqz       $t2, .L000064ec
    subu       $t1,$t1,$t2
    cache      0x15,32($t1)
    addiu      $t1,$t1,1
    sltu       $at,$t0,$t1
    beqz       $at, .L000064fc
    nop
.L000064ec:
    cache      0x11,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L000064ec
    addiu      $t0,$t0,32
.L000064fc:
    jr         $ra
    nop
.L00006504:
    beqz       $t3, .L00006534
    lui        $t0,0x8000
    addu       $t1,$t0,$t3
    addiu      $t1,$t1,-32
.L00006514:
    cache      0x1,0($t0)
    xor        $t2,$t0,$t3
    cache      0x1,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006514
    addiu      $t0,$t0,32
    b          .L00005eec
    nop
.L00006534:
    addu       $t1,$t0,$a7
    addiu      $t1,$t1,-32
.L0000653c:
    cache      0x1,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000653c
    addiu      $t0,$t0,32
    jr         $ra
    nop
.L00006554:
    sltu       $t2,$a7,$a1
    bnez       $t2, .L000065d4
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L000065cc
    nop
    andi       $t2,$t0,0x1f
    beqz       $t2, .L00006598
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
    sync
    cache      0x17,0($t0)
    sltu       $at,$t0,$t1
    beqz       $at, .L000065cc
    addiu      $t0,$t0,32
.L00006598:
    andi       $t2,$t1,0x1f
    beqz       $t2, .L000065bc
    subu       $t1,$t1,$t2
    cache      0x17,32($t1)
    addiu      $t1,$t1,1
    sltu       $at,$t0,$t1
    beqz       $at, .L000065cc
    nop
    sync
.L000065bc:
    cache      0x13,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L000065bc
    addiu      $t0,$t0,32
.L000065cc:
    b          .L00006040
    nop
.L000065d4:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    lui        $t0,0x8000
    srl        $t3,$a7,0x2
    addu       $t1,$t0,$t3
    addiu      $t1,$t1,-32
    srl        $a4,$a7,0x1
    sync
.L000065f8:
    cache      0x1,0($t0)
    xor        $t2,$t0,$t3
    cache      0x1,0($t2)
    xor        $t2,$t0,$a4
    cache      0x1,0($t2)
    xor        $t2,$t2,$t3
    cache      0x1,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L000065f8
    addiu      $t0,$t0,32
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L00006680
    nop
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    lui        $t0,0x8000
    srl        $t3,$a7,0x2
    addu       $t1,$t0,$t3
    addiu      $t1,$t1,-32
    srl        $a4,$a7,0x1
    sync
.L00006658:
    cache      0x3,0($t0)
    xor        $t2,$t0,$t3
    cache      0x3,0($t2)
    xor        $t2,$t0,$a4
    cache      0x3,0($t2)
    xor        $t2,$t2,$t3
    cache      0x3,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006658
    addiu      $t0,$t0,32
.L00006680:
    b          .L00005eec
    nop

glabel __dcache_wb
    blez       $a1, .L00006990
    nop
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lw         $t0,0($t0)
    lw         $a7,-23888($zero)
    bnez       $t0, .L00006728
    nop
    beqz       $a7, .L00006728
    nop
    sltu       $t2,$a7,$a1
    bnez       $t2, .L000066f8
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L000066ec
    nop
    andi       $t2,$t0,0x3f
    addiu      $t1,$t1,-64
    subu       $t0,$t0,$t2
.L000066dc:
    cache      0x17,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L000066dc
    addiu      $t0,$t0,64
.L000066ec:
    cache      0x14,-23888($zero)
    jr         $ra
    nop
.L000066f8:
    lui        $t0,0x8000
    srl        $a7,$a7,0x1
    addu       $t1,$t0,$a7
    addiu      $t1,$t1,-64
.L00006708:
    cache      0x3,0($t0)
    cache      0x3,1($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006708
    addiu      $t0,$t0,64
    cache      0x14,-23888($zero)
    jr         $ra
    nop
.L00006728:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L0000679c
    nop
    lui        $t3,0x0
    addiu      $t3,$t3,0
    lw         $t3,0($t3)
    bnez       $t3, .L0000682c
    nop
    lui        $t3,0x0
    addiu      $t3,$t3,0
    sltu       $t2,$a7,$a1
    bnez       $t2, .L000067dc
    lw         $t3,0($t3)
    beqz       $t3, .L000067a4
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L0000679c
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
.L0000678c:
    cache      0x19,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000678c
    addiu      $t0,$t0,32
.L0000679c:
    jr         $ra
    nop
.L000067a4:
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L000067d4
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
.L000067c4:
    cache      0x19,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L000067c4
    addiu      $t0,$t0,32
.L000067d4:
    jr         $ra
    nop
.L000067dc:
    beqz       $t3, .L0000680c
    lui        $t0,0x8000
    addu       $t1,$t0,$t3
    addiu      $t1,$t1,-32
.L000067ec:
    cache      0x1,0($t0)
    xor        $t2,$t0,$t3
    cache      0x1,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L000067ec
    addiu      $t0,$t0,32
    jr         $ra
    nop
.L0000680c:
    addu       $t1,$t0,$a7
    addiu      $t1,$t1,-32
.L00006814:
    cache      0x1,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006814
    addiu      $t0,$t0,32
    jr         $ra
    nop
.L0000682c:
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006874
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L0000686c
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
    sync
.L0000685c:
    cache      0x1b,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000685c
    addiu      $t0,$t0,32
.L0000686c:
    jr         $ra
    nop
.L00006874:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    lui        $t0,0x8000
    srl        $t3,$a7,0x2
    addu       $t1,$t0,$t3
    addiu      $t1,$t1,-32
    srl        $a4,$a7,0x1
    sync
.L00006898:
    cache      0x1,0($t0)
    xor        $t2,$t0,$t3
    cache      0x1,0($t2)
    xor        $t2,$t0,$a4
    cache      0x1,0($t2)
    xor        $t2,$t2,$t3
    cache      0x1,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006898
    addiu      $t0,$t0,32
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L00006920
    nop
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    lui        $t0,0x8000
    srl        $t3,$a7,0x2
    addu       $t1,$t0,$t3
    addiu      $t1,$t1,-32
    srl        $a4,$a7,0x1
    sync
.L000068f8:
    cache      0x3,0($t0)
    xor        $t2,$t0,$t3
    cache      0x3,0($t2)
    xor        $t2,$t0,$a4
    cache      0x3,0($t2)
    xor        $t2,$t2,$t3
    cache      0x3,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L000068f8
    addiu      $t0,$t0,32
.L00006920:
    jr         $ra
    nop

glabel __dcache_wb_inval
    blez       $a1, .L00006990
    nop
    lw         $a7,-23888($zero)
    beqz       $a7, .L000069c8
    nop
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lw         $t0,0($t0)
    bnez       $t0, .L000069c8
    nop
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006998
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L0000698c
    nop
    andi       $t2,$t0,0x3f
    addiu      $t1,$t1,-64
    subu       $t0,$t0,$t2
.L0000697c:
    cache      0x17,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000697c
    addiu      $t0,$t0,64
.L0000698c:
    cache      0x14,-23888($zero)
.L00006990:
    jr         $ra
    nop
.L00006998:
    lui        $t0,0x8000
    srl        $a7,$a7,0x1
    addu       $t1,$t0,$a7
    addiu      $t1,$t1,-64
.L000069a8:
    cache      0x3,0($t0)
    cache      0x3,1($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L000069a8
    addiu      $t0,$t0,64
    cache      0x14,-23888($zero)
    jr         $ra
    nop
.L000069c8:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L00006a3c
    nop
    lui        $t3,0x0
    addiu      $t3,$t3,0
    lw         $t3,0($t3)
    bnez       $t3, .L00006acc
    nop
    lui        $t3,0x0
    addiu      $t3,$t3,0
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006a7c
    lw         $t3,0($t3)
    beqz       $t3, .L00006a44
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006a3c
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
.L00006a2c:
    cache      0x15,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006a2c
    addiu      $t0,$t0,32
.L00006a3c:
    b          .L00006040
    nop
.L00006a44:
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006a74
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
.L00006a64:
    cache      0x15,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006a64
    addiu      $t0,$t0,32
.L00006a74:
    jr         $ra
    nop
.L00006a7c:
    beqz       $t3, .L00006aac
    lui        $t0,0x8000
    addu       $t1,$t0,$t3
    addiu      $t1,$t1,-32
.L00006a8c:
    cache      0x1,0($t0)
    xor        $t2,$t0,$t3
    cache      0x1,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006a8c
    addiu      $t0,$t0,32
    b          .L00005eec
    nop
.L00006aac:
    addu       $t1,$t0,$a7
    addiu      $t1,$t1,-32
.L00006ab4:
    cache      0x1,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006ab4
    addiu      $t0,$t0,32
    jr         $ra
    nop
.L00006acc:
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006b14
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006b0c
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
    sync
.L00006afc:
    cache      0x17,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006afc
    addiu      $t0,$t0,32
.L00006b0c:
    b          .L00006040
    nop
.L00006b14:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    lui        $t0,0x8000
    srl        $t3,$a7,0x2
    addu       $t1,$t0,$t3
    addiu      $t1,$t1,-32
    srl        $a4,$a7,0x1
    sync
.L00006b38:
    cache      0x1,0($t0)
    xor        $t2,$t0,$t3
    cache      0x1,0($t2)
    xor        $t2,$t0,$a4
    cache      0x1,0($t2)
    xor        $t2,$t2,$t3
    cache      0x1,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006b38
    addiu      $t0,$t0,32
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L00006bc0
    nop
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    lui        $t0,0x8000
    srl        $t3,$a7,0x2
    addu       $t1,$t0,$t3
    addiu      $t1,$t1,-32
    srl        $a4,$a7,0x1
    sync
.L00006b98:
    cache      0x3,0($t0)
    xor        $t2,$t0,$t3
    cache      0x3,0($t2)
    xor        $t2,$t0,$a4
    cache      0x3,0($t2)
    xor        $t2,$t2,$t3
    cache      0x3,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006b98
    addiu      $t0,$t0,32
.L00006bc0:
    b          .L00005eec
    nop

glabel __icache_inval
    blez       $a1, .L000072d8
    nop
    lw         $a7,-23888($zero)
    beqz       $a7, .L00006c68
    nop
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lw         $t0,0($t0)
    bnez       $t0, .L00006c68
    nop
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006c38
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006c2c
    nop
    andi       $t2,$t0,0x3f
    addiu      $t1,$t1,-64
    subu       $t0,$t0,$t2
.L00006c1c:
    cache      0x17,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006c1c
    addiu      $t0,$t0,64
.L00006c2c:
    cache      0x14,-23888($zero)
    jr         $ra
    nop
.L00006c38:
    lui        $t0,0x8000
    srl        $a7,$a7,0x1
    addu       $t1,$t0,$a7
    addiu      $t1,$t1,-64
.L00006c48:
    cache      0x3,0($t0)
    cache      0x3,1($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006c48
    addiu      $t0,$t0,64
    cache      0x14,-23888($zero)
    jr         $ra
    nop
.L00006c68:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L00006cdc
    nop
    lui        $t3,0x0
    addiu      $t3,$t3,0
    lw         $t3,0($t3)
    bnez       $t3, .L00006e5c
    nop
    lui        $t3,0x0
    addiu      $t3,$t3,0
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006ce4
    lw         $t3,0($t3)
    beqz       $t3, .L00006d8c
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006d08
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
.L00006ccc:
    cache      0x15,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006ccc
    addiu      $t0,$t0,32
.L00006cdc:
    b          .L00006d08
    nop
.L00006ce4:
    lui        $t0,0x8000
    addu       $t1,$t0,$t3
    addiu      $t1,$t1,-32
.L00006cf0:
    cache      0x1,0($t0)
    xor        $t2,$t0,$t3
    cache      0x1,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006cf0
    addiu      $t0,$t0,32
.L00006d08:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L00006d58
    nop
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006d60
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006d58
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
.L00006d48:
    cache      0x10,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006d48
    addiu      $t0,$t0,32
.L00006d58:
    b          .L00006040
    nop
.L00006d60:
    lui        $t0,0x8000
    addu       $t1,$t0,$t3
    addiu      $t1,$t1,-32
.L00006d6c:
    cache      0x0,0($t0)
    xor        $t2,$t0,$t3
    cache      0x0,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006d6c
    addiu      $t0,$t0,32
    b          .L00005eec
    nop
.L00006d8c:
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006de0
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
.L00006dac:
    cache      0x15,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006dac
    addiu      $t0,$t0,32
    b          .L00006de0
    nop
    lui        $t0,0x8000
    addu       $t1,$t0,$a7
    addiu      $t1,$t1,-32
.L00006dd0:
    cache      0x1,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006dd0
    addiu      $t0,$t0,32
.L00006de0:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L00006e30
    nop
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006e38
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006e30
    nop
    andi       $t2,$t0,0x3f
    addiu      $t1,$t1,-64
    subu       $t0,$t0,$t2
.L00006e20:
    cache      0x10,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006e20
    addiu      $t0,$t0,64
.L00006e30:
    jr         $ra
    nop
.L00006e38:
    lui        $t0,0x8000
    addu       $t1,$t0,$a7
    addiu      $t1,$t1,-64
.L00006e44:
    cache      0x0,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006e44
    addiu      $t0,$t0,64
    jr         $ra
    nop
.L00006e5c:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006eb0
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006ef0
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
    sync
.L00006e98:
    cache      0x15,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006e98
    addiu      $t0,$t0,32
    b          .L00006ef0
    nop
.L00006eb0:
    lui        $t0,0x8000
    srl        $t3,$a7,0x2
    addu       $t1,$t0,$t3
    srl        $a4,$a7,0x1
    addiu      $t1,$t1,-32
    sync
.L00006ec8:
    cache      0x1,0($t0)
    xor        $t2,$t0,$t3
    cache      0x1,0($t2)
    xor        $t2,$t0,$a4
    cache      0x1,0($t2)
    xor        $t2,$t2,$t3
    cache      0x1,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006ec8
    addiu      $t0,$t0,32
.L00006ef0:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L00006f44
    nop
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006f4c
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006f44
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
    sync
.L00006f34:
    cache      0x10,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006f34
    addiu      $t0,$t0,32
.L00006f44:
    b          .L00006f8c
    nop
.L00006f4c:
    lui        $t0,0x8000
    srl        $t3,$a7,0x2
    addu       $t1,$t0,$t3
    srl        $a4,$a7,0x1
    addiu      $t1,$t1,-32
    sync
.L00006f64:
    cache      0x0,0($t0)
    xor        $t2,$t0,$t3
    cache      0x0,0($t2)
    xor        $t2,$t0,$a4
    cache      0x0,0($t2)
    xor        $t2,$t2,$t3
    cache      0x0,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006f64
    addiu      $t0,$t0,32
.L00006f8c:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L00007034
    nop
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    sltu       $t2,$a7,$a1
    bnez       $t2, .L00006ff4
    nop
    move       $t0,$a0
    addu       $t1,$a0,$a1
    sltu       $at,$t0,$t1
    beqz       $at, .L00006fec
    nop
    andi       $t2,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t2
    sync
.L00006fdc:
    cache      0x17,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00006fdc
    addiu      $t0,$t0,32
.L00006fec:
    b          .L00005eec
    nop
.L00006ff4:
    lui        $t0,0x8000
    srl        $t3,$a7,0x2
    addu       $t1,$t0,$t3
    srl        $a4,$a7,0x1
    addiu      $t1,$t1,-32
    sync
.L0000700c:
    cache      0x3,0($t0)
    xor        $t2,$t0,$t3
    cache      0x3,0($t2)
    xor        $t2,$t0,$a4
    cache      0x3,0($t2)
    xor        $t2,$t2,$t3
    cache      0x3,0($t2)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000700c
    addiu      $t0,$t0,32
.L00007034:
    b          .L00005eec
    nop

glabel __cache_wb_inval
    blez       $a1, .L000072d8
    nop
    lui        $a6,0x0
    addiu      $a6,$a6,0
    lw         $a6,0($a6)
    bnez       $a6, .L00007068
    nop
    lw         $a4,-23888($zero)
    srl        $a4,$a4,0x1
    bnez       $a4, .L000072e0
    nop
.L00007068:
    lui        $a7,0x0
    lui        $v0,0x0
    move       $t0,$a0
    addiu      $a7,$a7,0
    addiu      $v0,$v0,0
    addu       $t1,$t0,$a1
    lw         $a7,0($a7)
    beqz       $a6, .L00007278
    lw         $v0,0($v0)
    lui        $t2,0x0
    addiu      $t2,$t2,0
    lw         $t2,0($t2)
    bnez       $t2, .L00007128
    nop
    beqz       $a7, .L000070d8
    sltu       $at,$a6,$a1
    beqz       $at, .L000070b4
    nop
    addu       $t1,$t0,$a6
.L000070b4:
    andi       $t3,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t3
.L000070c0:
    cache      0x1,0($t0)
    xor        $a5,$t0,$a6
    cache      0x1,0($a5)
    sltu       $at,$t0,$t1
    bnez       $at, .L000070c0
    addiu      $t0,$t0,32
.L000070d8:
    beqz       $v0, .L00007120
    nop
    move       $t0,$a0
    sltu       $at,$a6,$a1
    beqz       $at, .L000070f4
    addu       $t1,$t0,$a1
    addu       $t1,$t0,$a6
.L000070f4:
    andi       $t3,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t3
    andi       $t3,$t1,0x1f
    subu       $t1,$t1,$t3
.L00007108:
    cache      0x0,0($t0)
    xor        $a5,$t0,$a6
    cache      0x0,0($a5)
    sltu       $at,$t0,$t1
    bnez       $at, .L00007108
    addiu      $t0,$t0,32
.L00007120:
    b          .L00006040
    nop
.L00007128:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    srl        $a6,$a7,0x1
    srl        $a7,$a7,0x2
    sltu       $at,$a7,$a1
    beqz       $at, .L0000714c
    nop
    addu       $t1,$t0,$a7
.L0000714c:
    andi       $t3,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t3
    sync
.L0000715c:
    cache      0x1,0($t0)
    xor        $a5,$t0,$a7
    cache      0x1,0($a5)
    xor        $a5,$t0,$a6
    cache      0x1,0($a5)
    xor        $a5,$a5,$a7
    cache      0x1,0($a5)
    sltu       $at,$t0,$t1
    bnez       $at, .L0000715c
    addiu      $t0,$t0,32
    beqz       $v0, .L000071f8
    nop
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    move       $t0,$a0
    addu       $t1,$t0,$a1
    srl        $a6,$a7,0x1
    srl        $a7,$a7,0x2
    sltu       $at,$a7,$a1
    beqz       $at, .L000071b8
    nop
    addu       $t1,$t0,$a7
.L000071b8:
    andi       $t3,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t3
    andi       $t3,$t1,0x1f
    subu       $t1,$t1,$t3
    sync
.L000071d0:
    cache      0x0,0($t0)
    xor        $a5,$t0,$a7
    cache      0x0,0($a5)
    xor        $a5,$t0,$a6
    cache      0x0,0($a5)
    xor        $a5,$a5,$a7
    cache      0x0,0($a5)
    sltu       $at,$t0,$t1
    bnez       $at, .L000071d0
    addiu      $t0,$t0,32
.L000071f8:
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    beqz       $a7, .L00007270
    nop
    lui        $a7,0x0
    addiu      $a7,$a7,0
    lw         $a7,0($a7)
    move       $t0,$a0
    addu       $t1,$t0,$a1
    srl        $a6,$a7,0x1
    srl        $a7,$a7,0x2
    sltu       $at,$a7,$a1
    beqz       $at, .L00007238
    nop
    addu       $t1,$t0,$a7
.L00007238:
    andi       $t3,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t3
    sync
.L00007248:
    cache      0x3,0($t0)
    xor        $a5,$t0,$a7
    cache      0x3,0($a5)
    xor        $a5,$t0,$a6
    cache      0x3,0($a5)
    xor        $a5,$a5,$a7
    cache      0x3,0($a5)
    sltu       $at,$t0,$t1
    bnez       $at, .L00007248
    addiu      $t0,$t0,32
.L00007270:
    b          .L00006040
    nop
.L00007278:
    beqz       $a7, .L000072a4
    nop
    move       $t0,$a0
    addu       $t1,$t0,$a1
    andi       $t3,$t0,0x1f
    addiu      $t1,$t1,-32
    subu       $t0,$t0,$t3
.L00007294:
    cache      0x1,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L00007294
    addiu      $t0,$t0,32
.L000072a4:
    beqz       $v0, .L000072d8
    nop
    move       $t0,$a0
    addu       $t1,$t0,$a1
    andi       $t3,$t0,0x3f
    addiu      $t1,$t1,-64
    subu       $t0,$t0,$t3
    andi       $t3,$t1,0x3f
    subu       $t1,$t1,$t3
.L000072c8:
    cache      0x0,0($t0)
    sltu       $at,$t0,$t1
    bnez       $at, .L000072c8
    addiu      $t0,$t0,64
.L000072d8:
    jr         $ra
    nop
.L000072e0:
    move       $t0,$a0
    sltu       $at,$a4,$a1
    move       $a5,$a4
    bnez       $at, .L000072f8
    andi       $t2,$t0,0x3f
    move       $a4,$a1
.L000072f8:
    addu       $a4,$a4,$t0
    sltu       $at,$a1,$a5
    subu       $t0,$t0,$t2
    beqz       $at, .L0000735c
    addiu      $a4,$a4,-64
    lui        $t2,0x0
    addiu      $t2,$t2,0
    lw         $t2,0($t2)
    move       $a5,$a0
    move       $a6,$a1
    srl        $t2,$t2,0x1
    addu       $t2,$t2,$a5
    sltu       $at,$a6,$t2
    bnez       $at, .L00007338
    nop
    move       $a6,$t2
.L00007338:
    addiu      $a5,$a5,64
    cache      0x1,-32($a5)
    cache      0x1,-31($a5)
    cache      0x1,-64($a5)
    cache      0x1,-63($a5)
    cache      0x0,-64($a5)
    sltu       $at,$a5,$a6
    bnez       $at, .L00007338
    cache      0x0,-63($a5)
.L0000735c:
    cache      0x3,0($t0)
    cache      0x3,1($t0)
    sltu       $at,$t0,$a4
    bnez       $at, .L0000735c
    addiu      $t0,$t0,64
    cache      0x14,-23888($zero)
    jr         $ra
    nop

glabel config_cache
    addiu      $sp,$sp,-32
    sd         $ra,24($sp)
    sd         $s0,16($sp)
    sd         $s1,8($sp)
    sd         $s2,0($sp)
    mfc0       $s0,c0_sr
    nop
    mtc0       $zero,c0_sr
    nop
    mfc0       $t0,c0_config
    mfc0       $t3,c0_prid
    andi       $t3,$t3,0xff00
    addiu      $t3,$t3,-8960
    beqz       $t3, .L00007424
    nop
    addiu      $t3,$t3,-1024
    beqz       $t3, .L00007424
    nop
    addiu      $t3,$t3,-256
    beqz       $t3, .L00007424
    li         $at,7
    dsll       $at,$at,0x1d
    and        $t1,$t0,$at
    srl        $t1,$t1,0x1d
    addi       $t1,$t1,12
    li         $t2,1
    lui        $at,0x0
    sllv       $t2,$t2,$t1
    addiu      $at,$at,0
    sw         $t2,0($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t2,0($at)
    lui        $at,0x1c00
    and        $t1,$t0,$at
    srl        $t1,$t1,0x1a
    b          .L0000745c
    addi       $t1,$t1,12
.L00007424:
    andi       $t1,$t0,0xe00
    srl        $t1,$t1,0x9
    addi       $t1,$t1,12
    li         $t2,1
    lui        $at,0x0
    sllv       $t2,$t2,$t1
    addiu      $at,$at,0
    sw         $t2,0($at)
    lui        $at,0x0
    andi       $t1,$t0,0x1c0
    addiu      $at,$at,0
    srl        $t1,$t1,0x6
    sw         $t2,0($at)
    addi       $t1,$t1,12
.L0000745c:
    li         $t2,1
    lui        $at,0x0
    sllv       $t2,$t2,$t1
    addiu      $at,$at,0
    sw         $t2,0($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t2,0($at)
    mfc0       $t3,c0_prid
    andi       $t3,$t3,0xff00
    addiu      $t3,$t3,-9984
    bnez       $t3, .L000075a0
    nop
    mfc0       $t3,c0_config
    li         $at,1
    dsll       $at,$at,0x1f
    and        $t2,$t3,$at
    bnez       $t2, .L000075a0
    nop
    andi       $v0,$t3,0x8
    bnez       $v0, .L0000757c
    lui        $t2,0x4
    nop
    lui        $v0,0x0
    addiu      $v0,$v0,29952
    lui        $at,0xa000
    or         $v0,$v0,$at
    jr         $v0
    nop
    mtc0       $zero,c0_taghi
    mtc0       $zero,c0_taglo
    ori        $t3,$t3,0x8
    mtc0       $t3,c0_config
    mfc0       $t3,c0_config
    lui        $t0,0x8000
    addiu      $t0,$t0,0
    addu       $t1,$t0,$t2
.L00007560:
    addiu      $t0,$t0,32
    bne        $t0, $t1, .L00007560
    cache      0xb,-32($t0)
    lui        $t0,0x0
    addiu      $t0,$t0,30076
    jr         $t0
    nop
.L0000757c:
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t2,0($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t2,0($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t2,0($at)
.L000075a0:
    lui        $at,0x0
    li         $t2,63
    addiu      $at,$at,0
    sw         $t2,0($at)
    mfc0       $t3,c0_prid
    andi       $t3,$t3,0xff00
    addiu      $t3,$t3,-2304
    beqz       $t3, .L000077d8
    nop
    addiu      $t3,$t3,-1280
    beqz       $t3, .L000077d8
    nop
    addiu      $t3,$t3,-256
    beqz       $t3, .L000077d8
    nop
    lui        $v0,0x0
    addiu      $v0,$v0,30212
    lui        $at,0xa000
    or         $v0,$v0,$at
    jr         $v0
    nop
    jal        size_2nd_cache
    nop
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $v0,0($at)
    bnez       $v0, .L000076fc
    nop
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lui        $t1,0x0
    lw         $t0,0($t0)
    addiu      $t1,$t1,0
    lw         $t1,0($t1)
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t0,0($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t1,0($at)
    srl        $t3,$t1,0xc
    mfc0       $t2,c0_prid
    andi       $t2,$t2,0xff00
    addiu      $t2,$t2,-8192
    beqz       $t2, .L000076c8
    nop
    addiu      $t2,$t2,-256
    beqz       $t2, .L000076c8
    nop
    addiu      $t2,$t2,-512
    beqz       $t2, .L000076c8
    nop
    addiu      $t2,$t2,-1024
    bnez       $t2, .L000076bc
    nop
    lui        $t1,0x0
    addiu      $t1,$t1,0
    lw         $t1,0($t1)
    srl        $t2,$t1,0x2
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t2,0($at)
    b          .L000076c8
.L000076bc:
    addiu      $t2,$t2,-256
    bnez       $t2, .L000076dc
    nop
.L000076c8:
    srl        $t2,$t1,0x1
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t2,0($at)
    srl        $t3,$t2,0xc
.L000076dc:
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t3,0($at)
    lui        $at,0x0
    addiu      $t3,$t3,-1
    addiu      $at,$at,0
    j          .text
    sw         $t3,0($at)
.L000076fc:
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $v0,0($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $v0,0($at)
    mfc0       $t2,c0_prid
    andi       $t2,$t2,0xff00
    addiu      $t2,$t2,-8192
    beqz       $t2, .L000077a0
    nop
    addiu      $t2,$t2,-256
    beqz       $t2, .L000077a0
    nop
    addiu      $t2,$t2,-512
    beqz       $t2, .L000077a0
    nop
    addiu      $t2,$t2,-1024
    bnez       $t2, .L00007794
    nop
    jal        _r4600sc_enable_scache
    nop
    lui        $t1,0x0
    addiu      $t1,$t1,0
    lw         $t1,0($t1)
    srl        $t2,$t1,0x2
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t2,0($at)
    li         $t3,31
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $t3,0($at)
    b          .L000076c8
.L00007794:
    addiu      $t2,$t2,-256
    bnez       $t2, .L000077c8
    nop
.L000077a0:
    jal        _r4600sc_enable_scache
    nop
    lui        $t1,0x0
    addiu      $t1,$t1,0
    lui        $at,0x0
    lw         $t1,0($t1)
    li         $t3,31
    addiu      $at,$at,0
    b          .L000076c8
    sw         $t3,0($at)
.L000077c8:
    lui        $t0,0x0
    addiu      $t0,$t0,30680
    jr         $t0
    nop
.L000077d8:
    mtc0       $s0,c0_sr
    ld         $ra,24($sp)
    ld         $s2,0($sp)
    ld         $s1,8($sp)
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel size_2nd_cache
    mfc0       $t0,c0_prid
    andi       $t0,$t0,0xff00
    addiu      $t0,$t0,-8192
    beqz       $t0, .L00007878
    nop
    addiu      $t0,$t0,-256
    beqz       $t0, .L00007878
    nop
    addiu      $t0,$t0,-512
    beqz       $t0, .L00007848
    nop
    addiu      $t0,$t0,-1024
    beqz       $t0, .L00007848
    nop
    addiu      $t0,$t0,-256
    bnez       $t0, .L00007880
    nop
.L00007848:
    mfc0       $t0,c0_config
    nop
    lui        $at,0x2
    and        $v0,$t0,$at
    bnez       $v0, .L00007908
    and        $v0,$v0,$zero
    lui        $at,0x30
    and        $t0,$t0,$at
    srl        $t0,$t0,0x14
    lui        $v0,0x8
    b          .L00007908
    sllv       $v0,$v0,$t0
.L00007878:
    b          .L00007908
    move       $v0,$zero
.L00007880:
    lui        $v0,0x2
    lui        $t0,0x100
    bne        $t0, $v0, .L00007898
    nop
    jr         $ra
    nop
.L00007898:
    lui        $t2,0x8000
    addu       $t2,$t2,$v0
    sll        $v0,$v0,0x1
    lui        $at,0x100
    slt        $at,$at,$v0
    beqz       $at, .L00007898
    lw         $zero,0($t2)
    mtc0       $zero,c0_taglo
    mtc0       $zero,c0_taghi
    lui        $t0,0x8000
    lui        $v0,0x2
    cache      0x8,0($t0)
    cache      0x9,0($t0)
    cache      0xb,0($t0)
.L000078d0:
    lui        $t0,0x8000
    addu       $t0,$t0,$v0
    cache      0x7,0($t0)
    mfc0       $t1,c0_taglo
    beqz       $t1, .L00007908
    nop
    sll        $v0,$v0,0x1
    lui        $at,0x100
    slt        $at,$v0,$at
    bnez       $at, .L000078d0
    nop
.L00007908:
    jr         $ra
    nop

glabel _c_hwb
    li         $t0,1
    sltu       $at,$a0,$t0
    bnez       $at, .L00007978
    move       $v0,$zero
    beq        $a0, $t0, .L00007988
    nop
    li         $t0,3
    beq        $a0, $t0, .L00007970
    nop
    sync
    cache      0x17,0($a1)
    mfc0       $v0,c0_sr
    lui        $at,0x4
    and        $v0,$v0,$at
.L00007968:
    jr         $ra
    nop
.L00007970:
    b          .L00007968
    li         $v0,-1
.L00007978:
    sync
    cache      0x14,0($a1)
    b          .L00007968
    nop
.L00007988:
    sync
    cache      0x15,0($a1)
    b          .L00007968
    nop

glabel _c_hwbinv
    li         $t0,1
    sltu       $at,$a0,$t0
    bnez       $at, .L000079f8
    move       $v0,$zero
    beq        $a0, $t0, .L00007a00
    nop
    li         $t0,3
    beq        $a0, $t0, .L000079f8
    nop
    sync
    cache      0x17,0($a1)
    mfc0       $v0,c0_sr
    lui        $at,0x4
    and        $v0,$v0,$at
.L000079f0:
    jr         $ra
    nop
.L000079f8:
    b          .L000079f0
    li         $v0,-1
.L00007a00:
    sync
    cache      0x15,0($a1)
    b          .L000079f0
    nop

glabel _c_hinv
    li         $t0,1
    sltu       $at,$a0,$t0
    bnez       $at, .L00007a64
    move       $v0,$zero
    beq        $a0, $t0, .L00007a74
    nop
    sync
    cache      0x13,0($a1)
    mfc0       $v0,c0_sr
    lui        $at,0x4
    and        $v0,$v0,$at
.L00007a5c:
    jr         $ra
    nop
.L00007a64:
    sync
    cache      0x10,0($a1)
    b          .L00007a5c
    nop
.L00007a74:
    sync
    cache      0x11,0($a1)
    b          .L00007a5c
    nop

glabel _c_ilt_n_ecc
    li         $t0,1
    sltu       $at,$a0,$t0
    bnez       $at, .L00007ae8
    move       $v0,$zero
    beq        $a0, $t0, .L00007af8
    nop
    sync
    cache      0x7,0($a1)
    mfc0       $t0,c0_taglo
    mfc0       $t1,c0_ecc
    sw         $t0,0($a2)
    jr         $ra
    sw         $t1,0($a3)
.L00007ae8:
    sync
    cache      0x4,0($a1)
    b          .L00007aa4
    nop
.L00007af8:
    sync
    cache      0x5,0($a1)
    b          .L00007aa4
    nop

glabel _c_ilt
    li         $t0,1
    sltu       $at,$a0,$t0
    bnez       $at, .L00007b58
    move       $v0,$zero
    beq        $a0, $t0, .L00007b68
    nop
    sync
    cache      0x7,0($a1)
    mfc0       $t0,c0_taglo
    sw         $t0,0($a2)
    jr         $ra
    nop
.L00007b58:
    sync
    cache      0x4,0($a1)
    b          .L00007b28
    nop
.L00007b68:
    sync
    cache      0x5,0($a1)
    b          .L00007b28
    nop

glabel _c_ist
    move       $v0,$zero
    lw         $t1,0($a2)
    mtc0       $t1,c0_taglo
    li         $t0,1
    sltu       $at,$a0,$t0
    bnez       $at, .L00007bc4
    nop
    beq        $a0, $t0, .L00007bdc
    nop
    sync
    cache      0xb,0($a1)
    jr         $ra
    nop
    sync
    cache      0x8,0($a1)
    jr         $ra
    nop
    sync
    cache      0x9,0($a1)
    jr         $ra
    nop

glabel getecc
    mfc0       $v0,c0_ecc
    jr         $ra
    nop

glabel setecc
    mtc0       $a0,c0_ecc
    jr         $ra
    nop

glabel runcached
    lui        $at,0x2000
    subu       $v0,$ra,$at
    jr         $v0
    nop

glabel uncached
    lui        $at,0x2000
    addu       $v0,$ra,$at
    jr         $v0
    nop

glabel _munge_decc
    mfc0       $t1,c0_sr
    mtc0       $a1,c0_sr
    sync
    cache      0x15,0($a0)
    mtc0       $t1,c0_sr
    jr         $ra
    nop

glabel _read_tag
    li         $t0,1
    sltu       $at,$a0,$t0
    bnez       $at, .L00007cf8
    move       $v0,$zero
    beq        $a0, $t0, .L00007d08
    nop
    sync
    cache      0x7,0($a1)
    mfc0       $t0,c0_taglo
    sw         $t0,0($a2)
    jr         $ra
    nop
.L00007cf8:
    sync
    cache      0x4,0($a1)
    b          .L00007cd8
    nop
.L00007d08:
    sync
    cache      0x5,0($a1)
    b          .L00007cd8
    nop

glabel _write_tag
    lw         $t0,0($a2)
    mtc0       $t0,c0_taglo
    li         $t0,1
    sltu       $at,$a0,$t0
    bnez       $at, .L00007d50
    nop
    beq        $a0, $t0, .L00007d60
    nop
    sync
    cache      0xb,0($a1)
.L00007d48:
    jr         $ra
    nop
.L00007d50:
    sync
    cache      0x8,0($a1)
    b          .L00007d48
    nop
.L00007d60:
    sync
    cache      0x9,0($a1)
    b          .L00007d48
    nop

glabel flush_cache
    lw         $a1,-23888($zero)
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    bnez       $a1, .L00007db8
    lui        $a0,0x8000
    lui        $a2,0x0
    addiu      $a2,$a2,0
    lw         $a2,0($a2)
    lui        $a1,0x0
    addiu      $a1,$a1,0
    bnez       $a2, .L00007db8
    lw         $a1,0($a1)
    lui        $a2,0x0
    addiu      $a2,$a2,0
    lw         $a2,0($a2)
    beqz       $a2, .L00007db8
    nop
    move       $a1,$a2
.L00007db8:
    jal        __cache_wb_inval
    nop
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    nop

glabel cacheOP
    lw         $v0,16($a0)
    mtc0       $v0,c0_taglo
    lw         $v0,12($a0)
    mtc0       $v0,c0_taghi
    lw         $v0,20($a0)
    mtc0       $v0,c0_ecc
    ld         $a1,0($a0)
    lw         $v1,8($a0)
    lui        $v0,0x0
    ld         $v0,2560($v0)
    lui        $at,0x1fff
    ori        $at,$at,0xffff
    and        $v0,$v0,$at
    lui        $at,0xe000
    and        $t0,$ra,$at
    or         $v0,$v0,$t0
    sll        $v1,$v1,0x3
    daddu      $v0,$v0,$v1
    jalr       $a2,$v0
    nop
    mfc0       $v0,c0_taglo
    sw         $v0,16($a0)
    mfc0       $v0,c0_taghi
    sw         $v0,12($a0)
    mfc0       $v0,c0_ecc
    jr         $ra
    sw         $v0,20($a0)
    jr         $a2
    cache      0x0,0($a1)
    jr         $a2
    cache      0x1,0($a1)
    jr         $a2
    cache      0x2,0($a1)
    jr         $a2
    cache      0x3,0($a1)
    jr         $a2
    cache      0x4,0($a1)
    jr         $a2
    cache      0x5,0($a1)
    jr         $a2
    cache      0x6,0($a1)
    jr         $a2
    cache      0x7,0($a1)
    jr         $a2
    cache      0x8,0($a1)
    jr         $a2
    cache      0x9,0($a1)
    jr         $a2
    cache      0xa,0($a1)
    jr         $a2
    cache      0xb,0($a1)
    jr         $a2
    cache      0xc,0($a1)
    jr         $a2
    cache      0xd,0($a1)
    jr         $a2
    cache      0xe,0($a1)
    jr         $a2
    cache      0xf,0($a1)
    jr         $a2
    cache      0x10,0($a1)
    jr         $a2
    cache      0x11,0($a1)
    jr         $a2
    cache      0x12,0($a1)
    jr         $a2
    cache      0x13,0($a1)
    jr         $a2
    cache      0x14,0($a1)
    jr         $a2
    cache      0x15,0($a1)
    jr         $a2
    cache      0x16,0($a1)
    jr         $a2
    cache      0x17,0($a1)
    jr         $a2
    cache      0x18,0($a1)
    jr         $a2
    cache      0x19,0($a1)
    jr         $a2
    cache      0x1a,0($a1)
    jr         $a2
    cache      0x1b,0($a1)
    jr         $a2
    cache      0x1c,0($a1)
    jr         $a2
    cache      0x1d,0($a1)
    jr         $a2
    cache      0x1e,0($a1)
    jr         $a2
    cache      0x1f,0($a1)

glabel __prefetch_store
    blez       $a1, .L00007f60
    nop
    li         $t0,-64
    and        $a0,$a0,$t0
    dsrl       $a1,$a1,0x7
.L00007f50:
    .word      0xcc810000
    daddiu     $a1,$a1,-1
    bgez       $a1, .L00007f50
    daddiu     $a0,$a0,128
.L00007f60:
    jr         $ra
    nop

glabel __prefetch_load
    blez       $a1, .L00007f8c
    nop
    li         $t0,-64
    and        $a0,$a0,$t0
    dsrl       $a1,$a1,0x7
.L00007f7c:
    daddiu     $a1,$a1,-1
    .word      0xcc800000
    bgez       $a1, .L00007f7c
    daddiu     $a0,$a0,128
.L00007f8c:
    jr         $ra
    nop

glabel sw_cachesynch_patch_insts
    addiu      $k1,$k1,-16
    andi       $k0,$a0,0xf
    addiu      $k0,$k0,16

glabel cache_sync_bp_start
    break      0x80
    jr         $ra

glabel cache_sync
    sd         $t0,-24528($zero)
    blez       $a1, .L0000808c
    sltiu      $at,$a1,257
    bnez       $at, .L00007fc4
    lui        $at,0x8000
    j          longway
    nop
.L00007fc4:
    addu       $t0,$a0,$a1
    addiu      $t0,$t0,-1
    sltu       $at,$t0,$at
    bnez       $t0, .L00007fe0
    nop
    j          longway
    nop
.L00007fe0:
    mfc0       $k0,c0_entryhi
    li         $at,-8192
    and        $t0,$a0,$at
    andi       $k1,$k0,0xff
    or         $t0,$t0,$k1
    mtc0       $t0,c0_entryhi
    li         $t0,4096
    andi       $k1,$a0,0xfff
    subu       $t0,$t0,$k1
    slt        $at,$a1,$t0
    beqz       $at, .L0000802c
    nop
    move       $t0,$a1
.L0000802c:
    addu       $k1,$a0,$t0

glabel sw_cachesynch_op1
    addiu      $k1,$k1,-32

glabel sw_cachesynch_op2
    andi       $k0,$a0,0x1f
    subu       $k0,$a0,$k0

glabel sw_cachesynch_op4
.L0000803c:
    tlbp
    nop
    mfc0       $at,c0_index
    nop
    bgez       $at, .L00008060
    nop
    ld         $at,-24536($zero)
    j          longway
    ld         $t0,-24528($zero)
.L00008060:
    cache      0x15,0($k0)
    nop
    cache      0x10,0($k0)
    nop
    sltu       $at,$k0,$k1
    bnez       $at, .L0000803c

glabel sw_cachesynch_op3
    addiu      $k0,$k0,32
    addu       $a0,$a0,$t0
    subu       $a1,$a1,$t0
    bnez       $a1, .L00007fe0
    nop
.L0000808c:
    mfc0       $k0,c0_epc
    li         $v0,0
    addiu      $k0,$k0,4
    mtc0       $k0,c0_epc
    ld         $at,-24536($zero)
    ld         $t0,-24528($zero)
    eret
    eret

glabel cache_tag_ecc
    move       $v0,$zero
    lui        $a1,0x0
    ld         $a1,2568($a1)
.L000080b8:
    lui        $a2,0x0
    ld         $a2,2576($a2)
    beq        $a1, $a2, .L00008104
    nop
    move       $v1,$zero
    lwu        $a2,0($a1)
    and        $a2,$a2,$a0
.L000080d4:
    beqz       $a2, .L000080ec
    nop
    xor        $v1,$v1,$a2
    srl        $a2,$a2,0x1
    b          .L000080d4
    nop
.L000080ec:
    andi       $v1,$v1,0x1
    sll        $v0,$v0,0x1
    or         $v0,$v0,$v1
    daddiu     $a1,$a1,4
    b          .L000080b8
    nop
.L00008104:
    jr         $ra
    nop

glabel VEC_trap
    andi       $a2,$s0,0xff04
    ori        $a2,$a2,0x1
    lui        $at,0x1
    and        $at,$at,$s0
    or         $a2,$a2,$at
    mtc0       $a2,c0_sr
    move       $a2,$s0
    jal        trap
    move       $s1,$a0
    andi       $s2,$s0,0xff00
    mtc0       $s2,c0_sr
    j          exception_exit
    move       $k1,$s1

glabel add_ioboard
    jr         $ra
    nop
    addiu      $sp,$sp,-16
    lui        $v0,0xb700
    li         $a0,10
    sd         $ra,0($sp)
    ori        $v0,$v0,0xe014
    li         $at,4
    jal        us_delay
    sw         $at,0($v0)
    lui        $v1,0xb700
    li         $a0,10
    jal        us_delay
    sw         $zero,444($v1)
    lui        $a0,0xb400
    li         $a1,0x8000
    ld         $a0,16($a0)
    dsll       $a1,$a1,0x10
    and        $a0,$a0,$a1
    beqz       $a0, .L000081d8
    lui        $a4,0xb700
    move       $a3,$zero
    ori        $a6,$a4,0xe00c
    lw         $a5,356($a4)
    move       $a2,$zero
    li         $a1,3
    sw         $a5,0($a6)
    li         $a0,15
    jal        add_to_inventory
    lw         $a4,12($a4)
.L000081d8:
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel add_cpuboard
    move       $a3,$zero
    move       $a2,$zero
    li         $a0,1
    lw         $a4,-24112($zero)
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        add_to_inventory
    li         $a1,2
    move       $a3,$zero
    move       $a2,$zero
    li         $a1,3
    lw         $a4,-24108($zero)
    jal        add_to_inventory
    li         $a0,1
    jal        cpu_mhz_rating
    nop
    move       $a2,$v0
    li         $a0,1
    li         $a1,1
    li         $a3,-1
    jal        add_to_inventory
    li         $a4,18
    move       $a0,$zero
    jal        flash_version
    sd         $s8,8($sp)
    move       $s8,$v0
    jal        flash_version
    li         $a0,1
    move       $a3,$v0
    li         $a0,3
    li         $a1,21
    move       $a2,$s8
    jal        add_to_inventory
    move       $a4,$zero
    jal        .text
    ld         $s8,8($sp)
    jal        get_crimerev
    nop
    jal        get_crimerev
    sw         $v0,0($gp)
    li         $at,19
    beq        $v0, $at, .L000082a8
    li         $a0,5
.L00008290:
    jal        get_cpu_irr
    nop
    ld         $ra,0($sp)
    sw         $v0,0($gp)
    jr         $ra
    addiu      $sp,$sp,16
.L000082a8:
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,2584
    b          .L00008290
    nop

glabel init_sysid
    lui        $a0,0x0
    addiu      $sp,$sp,-64
    sd         $ra,56($sp)
    jal        kopt_find
    addiu      $a0,$a0,2656
    move       $a0,$v0
    jal        etoh
    sd         $v0,48($sp)
    bnez       $v0, .L00008378
    li         $at,221
    sb         $at,5($gp)
    li         $v0,204
    sb         $v0,4($gp)
    li         $v1,187
    sb         $v1,3($gp)
    li         $a7,10
    li         $a6,10
    sb         $zero,1($gp)
    move       $a5,$zero
    li         $a3,8
    sb         $a3,0($gp)
    li         $a0,170
    sb         $a0,2($gp)
    lui        $ra,0xaabb
    li         $t8,13
    ori        $ra,$ra,0xccdd
    sw         $ra,0($gp)
    move       $a4,$zero
    move       $t9,$t8
    sw         $t9,44($sp)
    move       $a2,$zero
    li         $t2,12
    sw         $t8,36($sp)
    lui        $a0,0x0
    move       $t3,$t2
    sw         $t3,28($sp)
    lui        $a1,0x0
    li         $t0,11
    sw         $t2,20($sp)
    move       $t1,$t0
    sw         $t1,12($sp)
    addiu      $a1,$a1,2624
    sw         $t0,4($sp)
    jal        sprintf
    addiu      $a0,$a0,0
    b          .L000083c0
    ld         $ra,56($sp)
.L00008378:
    jal        etoh
    ld         $a0,48($sp)
    move       $a0,$v0
    addiu      $a1,$gp,0
    jal        bcopy
    li         $a2,6
    lbu        $a4,4($gp)
    lbu        $a3,3($gp)
    lbu        $a2,2($gp)
    sll        $a4,$a4,0x8
    lbu        $a1,5($gp)
    sll        $a3,$a3,0x10
    sll        $a2,$a2,0x18
    or         $a2,$a2,$a3
    or         $a1,$a1,$a4
    or         $a1,$a1,$a2
    sw         $a1,0($gp)
    ld         $ra,56($sp)
.L000083c0:
    jr         $ra
    addiu      $sp,$sp,64
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        get_cpu_irr
    nop
    srl        $a1,$v0,0x8
    andi       $a1,$a1,0xff
    addiu      $a1,$a1,-9
    lui        $a0,0x0
    sltiu      $at,$a1,32
    addiu      $a0,$a0,2680
    sll        $a1,$a1,0x2
    sd         $s0,8($sp)
    beqz       $at, .L00008424
    addu       $a0,$a0,$a1
    lw         $a2,0($a0)
    jr         $a2
    nop
    jal        get_r10k_config
    nop
    li         $a0,-8
    and        $a0,$v0,$a0
    jal        set_r10k_config
    ori        $a0,$a0,0x5
.L00008424:
    lw         $a1,0($gp)
    sw         $zero,0($gp)
    li         $s0,1
    beqz       $a1, .L000084e4
    sw         $zero,0($gp)
.L00008438:
    sw         $s0,0($gp)
.L0000843c:
    lw         $a2,0($gp)
    li         $a4,-1
    lh         $a0,0($gp)
    beqz       $a2, .L0000845c
    slti       $a3,$a2,4097
    beqz       $a3, .L0000845c
    nop
    sw         $zero,0($gp)
.L0000845c:
    beq        $a0, $a4, .L000084dc
    sw         $s0,0($gp)
.L00008464:
    lui        $a0,0x0
    jal        is_specified
    addiu      $a0,$a0,0
    beqz       $v0, .L0000848c
    lw         $a1,0($gp)
    lui        $a0,0x0
    jal        is_enabled
    addiu      $a0,$a0,0
    sw         $v0,0($gp)
    lw         $a1,0($gp)
.L0000848c:
    li         $a2,-1
    beq        $a1, $a2, .L000084c0
.L00008494:
    lui        $a0,0x0
    sw         $s0,0($gp)
    jal        kopt_find
    addiu      $a0,$a0,2664
    ld         $s0,8($sp)
    jal        atoi
    move       $a0,$v0
    ld         $ra,0($sp)
    sw         $v0,0($gp)
    jr         $ra
    addiu      $sp,$sp,16
.L000084c0:
    b          .L00008494
    sw         $zero,0($gp)
    sw         $zero,0($gp)
    sw         $zero,0($gp)
    li         $s0,1
    b          .L00008438
    sw         $s0,0($gp)
.L000084dc:
    b          .L00008464
    sh         $zero,0($gp)
.L000084e4:
    sw         $zero,0($gp)
    lw         $a1,-23888($zero)
    beqz       $a1, .L000084fc
    nop
    b          .L0000843c
    sw         $zero,0($gp)
.L000084fc:
    b          .L00008438
    li         $s0,1

glabel early_gbe_stop
    addiu      $sp,$sp,-64
    sd         $s3,16($sp)
    sd         $ra,24($sp)
    sd         $s0,0($sp)
    lui        $s0,0xb603
    lw         $at,8($s0)
    sd         $s2,40($sp)
    lui        $a1,0xb602
    sd         $s1,8($sp)
    andi       $at,$at,0x1
    ori        $s1,$a1,0x4
    lui        $s2,0x1
    sd         $s4,32($sp)
    sd         $s5,48($sp)
    beqz       $at, .L0000870c
    ori        $s0,$s0,0x8
    lui        $s4,0xb604
.L00008548:
    jal        flushbus
    nop
    lui        $v1,0xb603
    lw         $a0,12($v1)
    li         $v0,-2
    and        $v0,$v0,$a0
    jal        flushbus
    sw         $v0,12($v1)
    lui        $a2,0xb602
    lw         $a3,8($a2)
    li         $a1,-2
    ori        $s5,$a2,0x8
    and        $a1,$a1,$a3
    jal        flushbus
    sw         $a1,8($a2)
    lui        $a5,0xb604
    lui        $a6,0x1
    lw         $a4,4($a5)
    nor        $a6,$a6,$zero
    and        $a4,$a4,$a6
    jal        flushbus
    sw         $a4,4($a5)
    lui        $a1,0x6
    b          .L000085b4
    ori        $a1,$a1,0x1a80
.L000085ac:
    blez       $a1, .L00008624
    lui        $t0,0xb603
.L000085b4:
    lw         $a2,0($s0)
    andi       $a2,$a2,0x1
    beqz       $a2, .L00008604
    addiu      $a1,$a1,-1
.L000085c4:
    blez       $a1, .L00008624
    lui        $t0,0xb603
    lw         $a3,0($s0)
    andi       $a3,$a3,0x1
    bnez       $a3, .L000085ac
    addiu      $a1,$a1,-1
    lw         $a4,0($s1)
    andi       $a4,$a4,0x1
    bnez       $a4, .L000085ac
    nop
    lw         $a5,0($s4)
    and        $a5,$a5,$s2
    bnez       $a5, .L000085ac
    nop
    b          .L00008624
    lui        $t0,0xb603
.L00008604:
    lw         $a6,0($s1)
    andi       $a6,$a6,0x1
    bnez       $a6, .L000085c4
    nop
    lw         $a7,0($s4)
    and        $a7,$a7,$s2
    bnez       $a7, .L000085c4
    lui        $t0,0xb603
.L00008624:
    ori        $t0,$t0,0xc
    lw         $s2,0($t0)
    addiu      $s2,$s2,32
    jal        flushbus
    sw         $s2,0($t0)
    lw         $s3,0($s5)
    addiu      $s3,$s3,32
    jal        flushbus
    sw         $s3,0($s5)
    lui        $t8,0xb604
    ori        $t8,$t8,0x4
    lw         $s5,0($t8)
    addiu      $s5,$s5,32
    jal        flushbus
    sw         $s5,0($t8)
    lui        $a1,0x6
    b          .L00008674
    ori        $a1,$a1,0x1a80
.L0000866c:
    blez       $a1, .L000086c4
    lui        $t8,0xb601
.L00008674:
    lw         $a2,0($s0)
    bne        $a2, $s2, .L00008698
    addiu      $a1,$a1,-1
    lw         $a3,0($s1)
    bne        $a3, $s3, .L00008698
    nop
    lw         $a4,0($s4)
    beq        $a4, $s5, .L000086c4
    lui        $t8,0xb601
.L00008698:
    blez       $a1, .L000086c4
    lui        $t8,0xb601
    lw         $a5,0($s0)
    bne        $a5, $s2, .L0000866c
    addiu      $a1,$a1,-1
    lw         $a6,0($s1)
    bne        $a6, $s3, .L0000866c
    nop
    lw         $a7,0($s4)
    bne        $a7, $s5, .L0000866c
    lui        $t8,0xb601
.L000086c4:
    lui        $t3,0x8000
    lui        $t1,0xb600
    sw         $t3,0($t8)
    lui        $t2,0x10
    lw         $t0,4($t1)
    nor        $t2,$t2,$zero
    and        $t0,$t0,$t2
    jal        flushbus
    sw         $t0,4($t1)
    ld         $s3,16($sp)
.L000086ec:
    ld         $s4,32($sp)
    ld         $s2,40($sp)
    ld         $ra,24($sp)
    ld         $s0,0($sp)
    ld         $s5,48($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0000870c:
    lw         $t9,4($a1)
    andi       $t9,$t9,0x1
    lui        $s2,0x1
    bnez       $t9, .L00008548
    lui        $s4,0xb604
    lw         $ra,0($s4)
    dsll32     $ra,$ra,0xf
    bltz       $ra, .L00008548
    nop
    b          .L000086ec
    ld         $s3,16($sp)

glabel mlreset
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    lui        $a0,0x0
    sd         $s0,0($sp)
    lui        $s0,0xb400
    addiu      $a0,$a0,0
    jal        is_enabled
    ld         $s0,8($s0)
    sw         $v0,0($gp)
    lui        $t8,0xb400
    sd         $zero,72($t8)
    jal        get_crimerev
    sd         $zero,592($t8)
    beqz       $v0, .L00008998
    lui        $a2,0xb400
.L00008774:
    jal        get_cpu_irr
    nop
    li         $a2,-12801
    sra        $a3,$v0,0x8
    lui        $a5,0xb400
    slti       $a3,$a3,35
    li         $a1,-513
    ori        $a5,$a5,0x8
    beqz       $a3, .L000087a8
    and        $a1,$s0,$a1
    and        $a0,$s0,$a2
    b          .L000087ac
    nop
.L000087a8:
    ori        $a0,$a1,0x3000
.L000087ac:
    sd         $a0,0($a5)
    lui        $a6,0xb400
    sd         $zero,24($a6)
    jal        flushbus
    sd         $zero,16($a6)
    move       $a1,$zero
    move       $a0,$zero
.L000087c8:
    addiu      $a0,$a0,1
    slti       $a7,$a0,5
    addiu      $a1,$a1,8
    bnez       $a7, .L000087c8
    sd         $zero,-23888($a1)
    li         $a1,40
    lui        $a0,0x0
    sw         $a1,-23840($zero)
    jal        setkgvector
    addiu      $a0,$a0,0
    li         $a4,1
    move       $a3,$zero
    li         $a1,1
    li         $a0,28
    lui        $a2,0x0
    jal        setcrimevector
    addiu      $a2,$a2,0
    li         $a4,1
    move       $a3,$zero
    li         $a1,2
    li         $a0,29
    lui        $a2,0x0
    jal        setcrimevector
    addiu      $a2,$a2,0
    li         $a4,1
    move       $a3,$zero
    li         $a1,3
    lui        $s0,0x0
    li         $a0,21
    addiu      $s0,$s0,0
    jal        setcrimevector
    move       $a2,$s0
    li         $a4,1
    move       $a3,$zero
    move       $a2,$s0
    li         $a1,3
    jal        setcrimevector
    li         $a0,20
    li         $a1,256
    li         $a0,5
    lui        $a2,0x0
    jal        setmaceisavector
    addiu      $a2,$a2,0
    lui        $a3,0xb400
    jal        .text
    sd         $zero,48($a3)
    jal        init_sysid
    nop
    jal        load_nvram_tab
    nop
    li         $a5,7
    sw         $a5,0($gp)
    lw         $a4,-23888($zero)
    lui        $a6,0x0
    addiu      $s0,$a6,0
    li         $a1,6
    andi       $a5,$s0,0x1f
    beqz       $a4, .L000089a4
    slti       $a2,$a5,24
.L000088b4:
    lw         $a0,0($gp)
    beqz       $a0, .L000088d4
    sra        $a7,$a0,0xb
    srl        $a7,$a7,0x14
    addu       $a7,$a7,$a0
    sra        $a7,$a7,0xc
    addiu      $a7,$a7,-1
    sw         $a7,0($gp)
.L000088d4:
    lw         $a4,0($gp)
    beqz       $a4, .L000088f4
    sra        $t0,$a4,0xb
    srl        $t0,$t0,0x14
    addu       $t0,$t0,$a4
    sra        $t0,$t0,0xc
    addiu      $t0,$t0,-1
    sw         $t0,0($gp)
.L000088f4:
    beqz       $a0, .L0000893c
    nop
    bnez       $a2, .L0000893c
    addiu      $a2,$s0,24
.L00008904:
    addiu      $a2,$a2,-4
    addiu      $a1,$a1,-1
    lw         $t1,4($a2)
    bgez       $a1, .L00008904
    sw         $t1,12($a2)
    lw         $t2,36($s0)
    li         $a1,36
    sw         $t2,4($s0)
    move       $a0,$s0
    jal        __dcache_wb_inval
    sw         $t2,0($s0)
    move       $a0,$s0
    jal        __icache_inval
    li         $a1,36
.L0000893c:
    jal        get_cpu_irr
    nop
    sra        $t3,$v0,0x8
    slti       $t3,$t3,35
    beqz       $t3, .L0000895c
    move       $a0,$zero
    sw         $zero,0($gp)
    move       $a0,$zero
.L0000895c:
    lui        $a1,0xbf08
    jal        pciio_pio_write32
    ori        $a1,$a1,0x4
    lw         $a2,0($gp)
    lui        $a1,0xbf08
    beqz       $a2, .L000089c4
    ori        $a1,$a1,0x8
    lui        $a0,0xfe00
    jal        pciio_pio_write32
    ori        $a0,$a0,0x8dff
.L00008984:
    jal        mh16550_earlyinit
    ld         $s0,0($sp)
    ld         $ra,8($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L00008998:
    li         $a1,1023
    b          .L00008774
    sd         $a1,80($a2)
.L000089a4:
    lw         $a4,0($gp)
    sra        $a3,$a4,0xb
    srl        $a3,$a3,0x14
    addu       $a3,$a3,$a4
    sra        $a3,$a3,0xc
    addiu      $a3,$a3,-1
    b          .L000088b4
    sw         $a3,0($gp)
.L000089c4:
    lui        $a0,0xfe00
    jal        pciio_pio_write32
    ori        $a0,$a0,0x85ff
    b          .L00008984
    nop

glabel timestamp_init
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        findcpufreq_raw
    nop
    lui        $a1,0x3b9a
    ori        $a1,$a1,0xca00
    divu       $zero,$a1,$v0
    li         $a0,-1
    mflo       $v1
    divu       $zero,$a0,$v0
    sw         $v0,0($gp)
    ld         $ra,0($sp)
    sw         $v0,0($gp)
    teq        $v0,$zero,0x7
    teq        $v0,$zero,0x7
    addiu      $sp,$sp,16
    sw         $v1,0($gp)
    mflo       $at
    jr         $ra
    sw         $at,0($gp)

glabel init_all_devices
    addiu      $sp,$sp,-48
    lw         $a0,0($gp)
    lui        $a1,0x0
    addiu      $a2,$sp,0
    sd         $ra,32($sp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,2856
    bnez       $v0, .L00008b2c
    sd         $s0,40($sp)
    lui        $s0,0x0
.L00008a58:
    lw         $a0,0($sp)
    jal        add_cpu
    addiu      $s0,$s0,2584
    addiu      $a2,$sp,4
    lui        $a1,0x0
    lw         $a0,0($sp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,2864
    bnez       $v0, .L00008b50
    addiu      $a2,$sp,8
.L00008a80:
    lui        $a1,0x0
    lw         $a0,0($sp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,2872
    bnez       $v0, .L00008b6c
    addiu      $a2,$sp,12
.L00008a98:
    lui        $a1,0x0
    lw         $a0,8($sp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,2880
    bnez       $v0, .L00008b88
    move       $a0,$zero
.L00008ab0:
    jal        pcimh_attach
    lw         $a0,8($sp)
    jal        isa_dma_buf_init
    nop
    jal        mh16550_attach
    lw         $a0,8($sp)
    jal        pckm_attach
    lw         $a0,8($sp)
    addiu      $a2,$sp,16
    lui        $a1,0x0
    lw         $a0,0($gp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,2888
    bnez       $v0, .L00008ba0
    move       $a0,$zero
    addiu      $a2,$sp,20
.L00008af0:
    addiu      $a1,$s0,256
    jal        hwgraph_path_add
    lw         $a0,0($gp)
    bnez       $v0, .L00008bb8
    addiu      $a2,$sp,24
.L00008b04:
    lui        $a1,0x0
    lw         $a0,0($gp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,2896
    bnez       $v0, .L00008bd0
    move       $a0,$zero
    ld         $ra,32($sp)
.L00008b20:
    ld         $s0,40($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00008b2c:
    move       $a0,$zero
    lui        $a2,0x0
    lui        $a1,0x0
    addiu      $a2,$a2,2856
    addiu      $a1,$a1,2584
    jal        cmn_err
    addiu      $a1,$a1,224
    b          .L00008a58
    lui        $s0,0x0
.L00008b50:
    move       $a0,$zero
    addiu      $a1,$s0,224
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,2864
    b          .L00008a80
    addiu      $a2,$sp,8
.L00008b6c:
    move       $a0,$zero
    addiu      $a1,$s0,224
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,2872
    b          .L00008a98
    addiu      $a2,$sp,12
.L00008b88:
    addiu      $a1,$s0,224
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,2880
    b          .L00008ab0
    nop
.L00008ba0:
    addiu      $a1,$s0,224
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,2888
    b          .L00008af0
    addiu      $a2,$sp,20
.L00008bb8:
    move       $a0,$zero
    addiu      $a2,$s0,256
    jal        cmn_err
    addiu      $a1,$s0,224
    b          .L00008b04
    addiu      $a2,$sp,24
.L00008bd0:
    addiu      $a1,$s0,224
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,2896
    b          .L00008b20
    ld         $ra,32($sp)

glabel allowboot
    lw         $a4,0($gp)
    addiu      $sp,$sp,-16
    lui        $a3,0x0
    lui        $a5,0x0
    addiu      $a3,$a3,0
    addiu      $a2,$a5,0
    blez       $a4, .L00008c40
    sd         $ra,0($sp)
    move       $a1,$zero
.L00008c0c:
    addiu      $a1,$a1,1
    slt        $a6,$a1,$a4
    sw         $zero,4($a3)
    beqz       $a6, .L00008c40
    addiu      $a1,$a1,1
    slt        $a7,$a1,$a4
    sw         $zero,56($a3)
    beqz       $a7, .L00008c40
    addiu      $a1,$a1,1
    slt        $t0,$a1,$a4
    addiu      $a3,$a3,156
    bnez       $t0, .L00008c0c
    sw         $zero,-48($a3)
.L00008c40:
    lw         $a3,0($gp)
    blez       $a3, .L00008c80
    move       $a1,$zero
.L00008c4c:
    addiu      $a1,$a1,1
    slt        $t1,$a1,$a3
    sw         $zero,4($a2)
    beqz       $t1, .L00008c80
    addiu      $a1,$a1,1
    slt        $t2,$a1,$a3
    sw         $zero,80($a2)
    beqz       $t2, .L00008c80
    addiu      $a1,$a1,1
    slt        $t3,$a1,$a3
    addiu      $a2,$a2,228
    bnez       $t3, .L00008c4c
    sw         $zero,-72($a2)
.L00008c80:
    jal        get_cpu_irr
    nop
    sra        $t8,$v0,0x8
    slti       $t8,$t8,35
    bnez       $t8, .L00008ca0
    ld         $ra,0($sp)
.L00008c98:
    jr         $ra
    addiu      $sp,$sp,16
.L00008ca0:
    jal        init_mfhi_war
    nop
    b          .L00008c98
    ld         $ra,0($sp)

glabel setupbadmem
    addiu      $sp,$sp,-48
    sd         $s3,40($sp)
    sd         $s2,24($sp)
    move       $s2,$a1
    sd         $s0,32($sp)
    move       $s0,$a2
    sd         $s1,16($sp)
    move       $s1,$a0
    sd         $ra,8($sp)
    jal        flush_tlb
    li         $a0,1
    li         $a0,2
    jal        flush_tlb
    sd         $s0,0($sp)
    lui        $a5,0x0
    addiu      $a5,$a5,2880
    lw         $a7,4($a5)
    li         $a4,2048
    li         $s0,0xffff
    move       $s3,$zero
    lw         $a1,0($gp)
    beqz       $a7, .L00008e08
    slti       $a0,$a7,2049
    lui        $a6,0x1
    ori        $a6,$a6,0x2000
    bnez       $a0, .L00008e00
    addu       $a6,$a1,$a6
.L00008d1c:
    sh         $s0,12($a6)
    lw         $a7,4($a5)
    addiu      $a4,$a4,1
    slt        $t0,$a4,$a7
    beqz       $t0, .L00008d4c
    nop
    sh         $s0,48($a6)
    lw         $a7,4($a5)
    addiu      $a4,$a4,1
    slt        $t1,$a4,$a7
    bnez       $t1, .L00008d1c
    addiu      $a6,$a6,72
.L00008d4c:
    addiu      $s3,$a7,-2048
    jal        extk0_avail_alloc
    move       $a0,$s2
    lw         $t1,0($gp)
.L00008d5c:
    move       $a0,$zero
    ld         $a6,0($sp)
    lui        $t0,0x8
    lw         $t2,0($gp)
    nor        $a7,$t0,$zero
    subu       $t8,$t1,$s2
    and        $a6,$a6,$a7
    sll        $t3,$t8,0x3
    ld         $ra,8($sp)
    sll        $a5,$a6,0x3
    addu       $t3,$t3,$t8
    ld         $s2,24($sp)
    beqz       $t2, .L00008e10
    addu       $a1,$a5,$a6
    sll        $t3,$t3,0x2
    lui        $t2,0x5
    addu       $s1,$s1,$t3
    subu       $a4,$t2,$t1
    beq        $t1, $t2, .L00008dd4
    move       $a0,$a4
.L00008dac:
    addiu      $a4,$a4,-1
    sh         $s0,12($s1)
    beqz       $a4, .L00008dd4
    addiu      $a4,$a4,-1
    sh         $s0,48($s1)
    beqz       $a4, .L00008dd4
    addiu      $a4,$a4,-1
    addiu      $s1,$s1,108
    bnez       $a4, .L00008dac
    sh         $s0,-24($s1)
.L00008dd4:
    lw         $t9,0($gp)
.L00008dd8:
    ld         $s1,16($sp)
    sll        $at,$a1,0x2
    addu       $v0,$a0,$s3
    ld         $s3,40($sp)
    addu       $t9,$t9,$at
    addiu      $v0,$v0,1
    sh         $s0,12($t9)
    ld         $s0,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00008e00:
    b          .L00008d4c
    li         $s0,0xffff
.L00008e08:
    b          .L00008d5c
    lw         $t1,0($gp)
.L00008e10:
    b          .L00008dd8
    lw         $t9,0($gp)

glabel szmem
    addiu      $sp,$sp,-64
    sd         $s3,16($sp)
    sd         $s2,8($sp)
    sd         $s4,24($sp)
    lw         $a4,0($gp)
    move       $s4,$a1
    lui        $s2,0xa000
    sd         $s1,40($sp)
    move       $s1,$zero
    sd         $s0,32($sp)
    lui        $s0,0x1400
    ld         $s3,0($sp)
    bnez       $a4, .L00008f2c
    ori        $s0,$s0,0x208
    b          .L00008e7c
    sd         $ra,48($sp)
.L00008e58:
    jal        bank_size
    move       $s3,$a0
    lw         $a4,0($gp)
    addu       $a4,$a4,$v0
    sw         $a4,0($gp)
.L00008e6c:
    addiu      $s1,$s1,1
    slti       $a5,$s1,8
    beqz       $a5, .L00008ea8
    addiu      $s0,$s0,8
.L00008e7c:
    or         $a0,$s0,$s2
    beqz       $s1, .L00008e58
    ld         $a0,0($a0)
    beq        $a0, $s3, .L00008e6c
    nop
    jal        bank_size
    nop
    lw         $a4,0($gp)
    addu       $a4,$a4,$v0
    b          .L00008e6c
    sw         $a4,0($gp)
.L00008ea8:
    lui        $a0,0x1000
    slt        $a5,$a0,$a4
    move       $v0,$zero
    ld         $ra,48($sp)
    beqz       $a5, .L00008ecc
    lui        $a1,0xf000
    ld         $ra,48($sp)
    b          .L00008ed0
    addu       $v0,$a4,$a1
.L00008ecc:
    move       $a0,$a4
.L00008ed0:
    addiu      $v0,$v0,4095
    addiu      $a0,$a0,4095
    srl        $v0,$v0,0xc
    move       $a1,$s4
    srl        $a0,$a0,0xc
    addiu      $a4,$a4,4095
    beqz       $s4, .L00008f4c
    srl        $a4,$a4,0xc
    slt        $a2,$a4,$s4
    beqz       $a2, .L00008f00
    nop
    move       $a1,$a4
.L00008f00:
    slt        $v1,$a1,$a0
    sw         $a1,0($gp)
    beqz       $v1, .L00008f14
    move       $a4,$a1
    move       $a0,$a1
.L00008f14:
    subu       $a5,$a1,$a0
    slt        $a3,$a5,$v0
    beqz       $a3, .L00008f28
    sw         $a0,0($gp)
    move       $v0,$a5
.L00008f28:
    sw         $v0,0($gp)
.L00008f2c:
    ld         $s2,8($sp)
    ld         $s3,16($sp)
    ld         $s4,24($sp)
    move       $v0,$a4
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00008f4c:
    sw         $a4,0($gp)
    sw         $a0,0($gp)
    b          .L00008f2c
    sw         $v0,0($gp)

glabel last_phys_pfn
    addiu      $sp,$sp,-64
    sd         $s4,16($sp)
    ld         $s4,0($sp)
    sd         $s3,40($sp)
    sd         $s1,32($sp)
    move       $s1,$zero
    move       $s3,$zero
    sd         $s2,8($sp)
    lui        $s2,0xa000
    sd         $s0,24($sp)
    lui        $s0,0x1400
    sd         $ra,48($sp)
    b          .L00008fb0
    ori        $s0,$s0,0x208
.L00008f94:
    jal        bank_size
    move       $s4,$a0
    addu       $s3,$v0,$s3
.L00008fa0:
    addiu      $s1,$s1,1
    slti       $t8,$s1,8
    beqz       $t8, .L00008fd4
    addiu      $s0,$s0,8
.L00008fb0:
    or         $a0,$s0,$s2
    beqz       $s1, .L00008f94
    ld         $a0,0($a0)
    beq        $a0, $s4, .L00008fa0
    nop
    jal        bank_size
    nop
    b          .L00008fa0
    addu       $s3,$v0,$s3
.L00008fd4:
    ld         $s2,8($sp)
    lui        $a1,0x1000
    ld         $s4,16($sp)
    sltu       $a1,$a1,$s3
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    beqz       $a1, .L00008ff8
    lui        $a0,0x4000
    addu       $s3,$s3,$a0
.L00008ff8:
    ld         $s1,32($sp)
    addiu      $v0,$s3,4095
    ld         $s3,40($sp)
    addiu      $sp,$sp,64
    jr         $ra
    srl        $v0,$v0,0xc

glabel isa_dma_buf_init
    lw         $a1,0($gp)
    addiu      $sp,$sp,-16
    beqz       $a1, .L00009048
    sd         $ra,0($sp)
.L00009020:
    li         $at,-32768
    and        $at,$a1,$at
    dsll32     $at,$at,0x0
    lui        $v0,0xbf31
    dsrl32     $at,$at,0x0
    jal        flushbus
    sd         $at,0($v0)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L00009048:
    li         $a1,8
    li         $a0,8
    lui        $a2,0x1800
    jal        contig_memalloc
    ori        $a2,$a2,0x110
    sll        $a3,$v0,0xc
    beqz       $a3, .L00009070
    sw         $a3,0($gp)
.L00009068:
    b          .L00009020
    lw         $a1,0($gp)
.L00009070:
    lui        $a0,0x0
    jal        panic
    addiu      $a0,$a0,2904
    b          .L00009068
    nop
    addiu      $sp,$sp,-32
    sd         $s1,8($sp)
    andi       $s1,$a0,0x7
    sd         $s0,0($sp)
    li         $s0,-8
    and        $s0,$a0,$s0
    addu       $s1,$a1,$s1
    addu       $s1,$s1,$s0
    sltu       $at,$s0,$s1
    beqz       $at, .L000090c8
    sd         $ra,16($sp)
.L000090b0:
    jal        scrub_memory
    move       $a0,$s0
    addiu      $s0,$s0,8
    sltu       $t8,$s0,$s1
    bnez       $t8, .L000090b0
    nop
.L000090c8:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel ecc_meminit
    addiu      $sp,$sp,-32
    lw         $at,0($gp)
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s0,0($sp)
    move       $s0,$a1
    beqz       $at, .L00009114
    sd         $ra,16($sp)
    jal        get_crimerev
    nop
    beqz       $v0, .L00009114
    nop
    jal        early_gbe_stop
    nop
.L00009114:
    jal        prom_does_eccinit
    nop
    beqz       $v0, .L00009140
    nop
    jal        get_crimerev
    nop
    beqz       $v0, .L00009140
    sltiu      $v0,$s0,16385
    bnez       $v0, .L00009140
    nop
    li         $s0,16384
.L00009140:
    jal        get_crimerev
    nop
    beqz       $v0, .L000091b8
    lw         $a0,0($gp)
    beqz       $a0, .L000091b8
    lui        $a0,0xa000
    lui        $a1,0x0
    jal        .text
    addiu      $a1,$a1,0
    lui        $a2,0x5
    sltu       $a2,$s0,$a2
    bnez       $a2, .L00009180
    sll        $v0,$s1,0xc
    lui        $a0,0x4000
    b          .L00009184
    addu       $a0,$v0,$a0
.L00009180:
    move       $a0,$v0
.L00009184:
    li         $a2,1
    sll        $a1,$s0,0xc
    sw         $a2,0($gp)
    jal        early_mte_zero
    subu       $a1,$a1,$a0
    sw         $s0,0($gp)
    li         $v0,1
    sw         $zero,0($gp)
.L000091a4:
    ld         $ra,16($sp)
.L000091a8:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000091b8:
    lui        $a3,0x5
    sltu       $a3,$s0,$a3
    bnez       $a3, .L000091d0
    move       $v0,$zero
    b          .L000091a8
    ld         $ra,16($sp)
.L000091d0:
    lui        $a0,0xa000
    lui        $a2,0x0
    lui        $a1,0x8000
    addiu      $a2,$a2,0
    jal        .text
    addu       $a1,$a1,$a2
    sll        $a2,$s1,0xc
    subu       $a1,$s0,$s1
    lui        $a0,0x8000
    sll        $a1,$a1,0xc
    jal        bzero
    or         $a0,$a0,$a2
    li         $v0,1
    b          .L000091a4
    sw         $s0,0($gp)

glabel ecc_enable
    lui        $a0,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        is_specified
    addiu      $a0,$a0,0
    beqz       $v0, .L00009234
    lui        $a0,0x0
    jal        is_enabled
    addiu      $a0,$a0,0
    sw         $v0,0($gp)
.L00009234:
    lw         $a1,0($gp)
    li         $a3,1
    lw         $a0,0($gp)
    ld         $ra,0($sp)
    beqz       $a1, .L00009258
    lui        $a2,0xb400
    beqz       $a0, .L00009258
    nop
    sd         $a3,512($a2)
.L00009258:
    jr         $ra
    addiu      $sp,$sp,16

glabel ecc_disable
    lui        $at,0xb400
    jr         $ra
    sd         $zero,512($at)

glabel mace_hwgraph_lookup
    lui        $a4,0x0
    lui        $a3,0x0
    lui        $a2,0x0
    addiu      $sp,$sp,-48
    lui        $a1,0x0
    sd         $s8,40($sp)
    move       $s8,$a0
    addiu      $a0,$sp,0
    addiu      $a1,$a1,2936
    addiu      $a2,$a2,2856
    addiu      $a3,$a3,2872
    sd         $ra,32($sp)
    jal        sprintf
    addiu      $a4,$a4,2880
    li         $a0,-1
    addiu      $a1,$sp,0
    jal        hwgraph_traverse
    move       $a2,$s8
    ld         $ra,32($sp)
    ld         $s8,40($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel is_extk0_pfn
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        get_cpu_irr
    move       $s8,$a0
    sra        $at,$v0,0x8
    lui        $a5,0x0
    lw         $a4,2884($a5)
    slti       $at,$at,35
    sltiu      $a0,$s8,2048
    move       $v0,$zero
    ld         $ra,0($sp)
    beqz       $at, .L00009318
    sltu       $a3,$s8,$a4
    bnez       $a0, .L00009318
    nop
    beqz       $a3, .L00009318
    nop
    li         $v0,1
    b          .L0000931c
    ld         $s8,8($sp)
.L00009318:
    ld         $s8,8($sp)
.L0000931c:
    jr         $ra
    addiu      $sp,$sp,16

glabel extk0_pages_added
    lui        $a0,0x0
    lw         $a0,2880($a0)
    lui        $at,0x8
    srl        $a0,$a0,0xc
    sltu       $at,$a0,$at
    addiu      $sp,$sp,-16
    beqz       $at, .L000093dc
    sd         $ra,0($sp)
.L00009344:
    sll        $a5,$a0,0x2
.L00009348:
    lui        $a4,0xffd0
    lui        $t0,0xb
    lui        $a1,0xa
    lui        $t2,0xf
    sltu       $a1,$a0,$a1
    lui        $a3,0xc
    ori        $t1,$t2,0xffff
    lw         $a6,0($gp)
    bnez       $a1, .L0000938c
    sltu       $a7,$t1,$a0
    lui        $a2,0xfff6
    ori        $t3,$t0,0xffff
    sltu       $t3,$t3,$a0
    bnez       $t3, .L0000938c
    addu       $a2,$a0,$a2
    b          .L000093c8
    move       $a3,$a2
.L0000938c:
    sltu       $t8,$a0,$a3
    addu       $t0,$a6,$a5
    bnez       $t8, .L000093b4
    addu       $a2,$a4,$t0
    bnez       $a7, .L000093b4
    nop
    lw         $a3,0($a2)
    srl        $a3,$a3,0x6
    b          .L000093c0
    and        $a3,$t1,$a3
.L000093b4:
    jal        bad_vfn
    nop
    move       $a3,$v0
.L000093c0:
    move       $a2,$a3
    move       $a3,$a2
.L000093c8:
    ld         $ra,0($sp)
    lw         $v0,0($gp)
    addiu      $sp,$sp,16
    jr         $ra
    subu       $v0,$v0,$a3
.L000093dc:
    jal        get_cpu_irr
    nop
    sra        $a1,$v0,0x8
    lui        $a0,0x0
    slti       $a1,$a1,35
    addiu      $a0,$a0,2880
    lui        $a3,0x8
    lw         $a0,0($a0)
    ori        $a3,$a3,0x7ff
    beqz       $a1, .L0000941c
    srl        $a0,$a0,0xc
    sltu       $a2,$a3,$a0
    bnez       $a2, .L00009344
    lui        $a3,0xfff8
.L00009414:
    b          .L000093c8
    addu       $a3,$a0,$a3
.L0000941c:
    lui        $a4,0x8
    ori        $a4,$a4,0xffff
    sltu       $a4,$a4,$a0
    bnez       $a4, .L00009348
    sll        $a5,$a0,0x2
    b          .L00009414
    lui        $a3,0xfff8

glabel extk0_wiremem
    addiu      $sp,$sp,-64
    sd         $s0,16($sp)
    sd         $s1,8($sp)
    sd         $s2,48($sp)
    sd         $s3,40($sp)
    sd         $s4,24($sp)
    sd         $ra,32($sp)
    li         $a0,3
    jal        flush_tlb
    sd         $s5,0($sp)
    li         $s1,1
    lui        $s2,0xc180
    move       $s4,$zero
    lui        $s0,0x0
    lui        $s5,0xf
    addiu      $s0,$s0,2880
    ori        $s5,$s5,0xffff
    move       $s3,$s0
.L00009480:
    lw         $a7,12($s0)
    beqz       $a7, .L000094e8
    move       $a2,$s2
    move       $a1,$zero
    dsll32     $a3,$a7,0x0
    lw         $a4,16($s0)
    lw         $a5,28($s3)
    move       $a0,$s1
    jal        tlbwired
    dsll32     $a4,$a4,0x0
    lw         $a5,16($s0)
    lw         $a6,12($s0)
    addiu      $s1,$s1,1
    srl        $a5,$a5,0x6
    addiu      $s0,$s0,8
    srl        $a6,$a6,0x6
    and        $a6,$s5,$a6
    and        $a5,$s5,$a5
    addiu      $s4,$s4,1
    subu       $a5,$a5,$a6
    sltiu      $a6,$s4,2
    sll        $a5,$a5,0xc
    addiu      $s3,$s3,4
    addu       $a5,$a5,$a5
    bnez       $a6, .L00009480
    addu       $s2,$s2,$a5
.L000094e8:
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    ld         $s2,48($sp)
    ld         $ra,32($sp)
    ld         $s3,40($sp)
    ld         $s4,24($sp)
    ld         $s5,0($sp)
    jr         $ra
    addiu      $sp,$sp,64

glabel extk0_mem_alloc
    lui        $a4,0x0
    lui        $v0,0x0
    lw         $a3,2880($a4)
    addiu      $sp,$sp,-48
    lw         $v0,8($v0)
    sd         $s2,16($sp)
    sd         $s3,24($sp)
    sd         $ra,32($sp)
    lw         $at,0($gp)
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s0,0($sp)
    addiu      $s0,$a4,2880
    beqz       $at, .L00009610
    sd         $s4,40($sp)
    beqz       $v0, .L00009610
    nop
    beqz       $a3, .L00009618
    lui        $s3,0x4000
.L00009558:
    lw         $a3,8($s0)
    b          .L000095b0
    ori        $s4,$s3,0x7
.L00009564:
    sw         $a0,4($s0)
    sw         $v0,0($s0)
.L0000956c:
    addu       $t8,$s3,$v0
    lw         $s2,0($gp)
    srl        $t8,$t8,0xc
    addiu      $t9,$a0,1
    sll        $t8,$t8,0x2
    sw         $t9,4($s0)
    jal        pte_cachebits
    addu       $s2,$s2,$t8
    lw         $a4,4($s0)
    addiu      $a4,$a4,-1
    sll        $a4,$a4,0x6
    or         $a4,$v0,$a4
    or         $a4,$s4,$a4
    sw         $a4,0($s2)
    lw         $a3,8($s0)
    addiu      $a3,$a3,4096
    sw         $a3,8($s0)
.L000095b0:
    slt        $a5,$s1,$a3
    bnez       $a5, .L000095dc
    li         $a0,1
    move       $a1,$zero
    jal        kvalloc
    move       $a2,$zero
    lw         $a6,0($s0)
    beqz       $a6, .L00009564
    li         $a0,2048
    b          .L0000956c
    lw         $a0,4($s0)
.L000095dc:
    lw         $v0,0($s0)
    subu       $t0,$a3,$s1
    sw         $t0,8($s0)
    addu       $a7,$s1,$v0
    sw         $a7,0($s0)
.L000095f0:
    ld         $s2,16($sp)
    ld         $s3,24($sp)
    ld         $ra,32($sp)
    ld         $s4,40($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00009610:
    b          .L000095f0
    move       $v0,$zero
.L00009618:
    li         $a0,6144
    move       $a1,$zero
    jal        kvalloc
    move       $a2,$zero
    b          .L00009558
    lui        $s3,0x4000

glabel extk0_avail_alloc
    addiu      $sp,$sp,-80
    sd         $ra,72($sp)
    sd         $s1,0($sp)
    lui        $at,0x0
    lw         $t9,2880($at)
    li         $v0,-4096
    lui        $s1,0x4000
    lw         $a3,0($gp)
    li         $v1,12288
    sd         $s0,8($sp)
    addiu      $s0,$at,2880
    addiu      $t9,$t9,4095
    lw         $a2,4($s0)
    addu       $a3,$a3,$a3
    sd         $s8,64($sp)
    and        $t9,$t9,$v0
    addu       $a3,$a3,$a0
    sd         $s4,40($sp)
    subu       $v1,$v1,$a2
    addiu      $a3,$a3,-2048
    sd         $s6,32($sp)
    addu       $t8,$t9,$s1
    slt        $v0,$a3,$v1
    sd         $s2,16($sp)
    ori        $s1,$s1,0x7
    srl        $t8,$t8,0xc
    lw         $s2,0($gp)
    bnez       $v0, .L000096a8
    nop
    move       $a3,$v1
.L000096a8:
    sd         $s3,24($sp)
    sll        $t8,$t8,0x2
    move       $s3,$a3
    sw         $t9,2880($at)
    blez       $a3, .L00009708
    addu       $s2,$s2,$t8
.L000096c0:
    li         $a0,1
    move       $a1,$zero
    jal        kvalloc
    move       $a2,$zero
    lw         $at,4($s0)
    addiu      $at,$at,1
    jal        pte_cachebits
    sw         $at,4($s0)
    lw         $v1,4($s0)
    addiu      $v1,$v1,-1
    addiu      $s3,$s3,-1
    sll        $v1,$v1,0x6
    addiu      $s2,$s2,4
    or         $v0,$v0,$v1
    or         $v0,$s1,$v0
    bgtz       $s3, .L000096c0
    sw         $v0,-4($s2)
    lw         $a2,4($s0)
.L00009708:
    addiu      $s6,$s0,12
    addiu      $a0,$a2,-2048
    li         $s3,2048
    sll        $a0,$a0,0xc
    lui        $a1,0x4000
    lui        $s8,0x100
    sd         $s5,48($sp)
    sd         $s7,56($sp)
    blez       $a0, .L00009948
    move       $s2,$a0
    ori        $s1,$a1,0x7
    move       $s5,$zero
    b          .L000097ac
    move       $s7,$s0
    li         $a1,1
.L00009744:
    beq        $s5, $a1, .L00009918
    li         $s4,4096
    move       $a1,$zero
.L00009750:
    sll        $a2,$a1,0xd
.L00009754:
    jal        pte_cachebits
    sw         $a2,28($s7)
    sll        $a3,$s3,0x6
    addiu      $s6,$s6,8
    or         $a3,$v0,$a3
    or         $a3,$s1,$a3
    jal        pte_cachebits
    sw         $a3,-8($s6)
    addiu      $s7,$s7,4
    subu       $s2,$s2,$s4
    subu       $s2,$s2,$s4
    srl        $a6,$s4,0xc
    addiu      $s5,$s5,1
    addu       $s3,$s3,$a6
    slti       $a5,$s5,2
    sll        $a4,$s3,0x6
    addu       $s3,$a6,$s3
    or         $a4,$v0,$a4
    or         $a4,$s1,$a4
    beqz       $a5, .L0000980c
    sw         $a4,-4($s6)
    blez       $s2, .L0000980c
.L000097ac:
    li         $a2,16384
    li         $a1,16384
    beqz       $s5, .L000097d0
    slt        $a1,$a1,$s2
    move       $a3,$s8
    beqz       $a1, .L00009744
    li         $a1,1
    b          .L000097dc
    nop
.L000097d0:
    lui        $a3,0x40
    beqz       $a1, .L00009744
    li         $a1,1
.L000097dc:
    b          .L000097f4
    move       $a1,$zero
.L000097e4:
    sll        $a2,$s4,0x2
    slt        $a4,$a2,$s2
    beqz       $a4, .L000098fc
    li         $a5,1
.L000097f4:
    move       $s4,$a2
    sll        $a1,$a1,0x2
    bne        $a3, $a2, .L000097e4
    ori        $a1,$a1,0x3
    b          .L00009754
    sll        $a2,$a1,0xd
.L0000980c:
    lw         $a2,4($s0)
    slt        $a3,$a2,$s3
    beqz       $a3, .L00009874
    lw         $s2,0($gp)
.L0000981c:
    sll        $t8,$a2,0x2
    addu       $s2,$s2,$t8
    addiu      $s2,$s2,16384
    li         $a0,1
.L0000982c:
    move       $a1,$zero
    jal        kvalloc
    move       $a2,$zero
    lw         $t9,4($s0)
    addiu      $s2,$s2,4
    addiu      $t9,$t9,1
    jal        pte_cachebits
    sw         $t9,4($s0)
    lw         $at,4($s0)
    addiu      $at,$at,-1
    sll        $at,$at,0x6
    or         $at,$v0,$at
    or         $at,$s1,$at
    sw         $at,-4($s2)
    lw         $a2,4($s0)
    slt        $ra,$a2,$s3
    bnez       $ra, .L0000982c
    li         $a0,1
.L00009874:
    ld         $s8,64($sp)
.L00009878:
    ld         $s7,56($sp)
    ld         $s5,48($sp)
    ld         $s4,40($sp)
    ld         $s6,32($sp)
    srl        $a1,$a2,0x4
    lui        $a4,0x8
    ld         $s3,24($sp)
    lui        $a3,0xfff
    nor        $a4,$a4,$zero
    sw         $a2,0($gp)
    ori        $a3,$a3,0x7fff
    and        $a2,$a2,$a4
    lw         $a0,0($gp)
    and        $a1,$a1,$a3
    sll        $v1,$a2,0x3
    lw         $v0,0($gp)
    sll        $a1,$a1,0x3
    addu       $v1,$v1,$a2
    addu       $a0,$a0,$a1
    sw         $a0,0($gp)
    sll        $v1,$v1,0x2
    addu       $v0,$v0,$v1
    jal        extk0_wiremem
    sw         $v0,0($gp)
    li         $a1,6144
    jal        kvfree
    lui        $a0,0xc000
    ld         $ra,72($sp)
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    ld         $s2,16($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L000098fc:
    bne        $s5, $a5, .L00009750
    addu       $a6,$s4,$s4
    slt        $a6,$a6,$s2
    beqz       $a6, .L00009750
    nop
    b          .L00009934
    move       $s4,$a2
.L00009918:
    slti       $a7,$s2,8193
    li         $s4,4096
    move       $a1,$zero
    bnez       $a7, .L00009940
    li         $a2,16384
    move       $a1,$zero
    move       $s4,$a2
.L00009934:
    sll        $a1,$a1,0x2
    b          .L00009750
    ori        $a1,$a1,0x3
.L00009940:
    b          .L00009754
    sll        $a2,$a1,0xd
.L00009948:
    ori        $s1,$a1,0x7
    slti       $t8,$a2,2048
    beqz       $t8, .L00009878
    ld         $s8,64($sp)
    b          .L0000981c
    lw         $s2,0($gp)

glabel early_mte_zero
    addiu      $sp,$sp,-64
    sd         $s5,24($sp)
    sd         $ra,40($sp)
    sd         $s3,48($sp)
    sd         $s4,32($sp)
    sd         $s1,16($sp)
    li         $v0,17
    move       $s1,$a0
    sd         $s0,8($sp)
    move       $s0,$a1
    beqz       $a1, .L00009a10
    sd         $s2,56($sp)
    move       $s4,$v0
    li         $s5,-1
    b          .L000099fc
    lui        $s3,0x2
.L000099a0:
    move       $a0,$s1
    move       $a1,$s2
    li         $a2,1792
    jal        mte_set_tlb
    addiu      $a3,$sp,0
    move       $a0,$s2
    jal        min
    lw         $a1,0($sp)
    move       $s2,$v0
    jal        mte_fifo_wait
    li         $a0,5
    lw         $v0,-32664($gp)
    addu       $at,$s2,$s1
    sw         $s1,12336($v0)
    addiu      $v1,$at,-1
    sw         $v1,12344($v0)
    sw         $zero,12312($v0)
    subu       $s0,$s0,$s2
    sw         $s5,12296($v0)
    sw         $s4,14336($v0)
    jal        mte_spin
    move       $s1,$at
    beqz       $s0, .L00009a10
.L000099fc:
    sltu       $a0,$s3,$s0
    bnez       $a0, .L000099a0
    move       $s2,$s3
    b          .L000099a0
    move       $s2,$s0
.L00009a10:
    ld         $s2,56($sp)
    ld         $s3,48($sp)
    ld         $s4,32($sp)
    ld         $ra,40($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s5,24($sp)
    jr         $ra
    addiu      $sp,$sp,64

glabel mte_copy
    addiu      $sp,$sp,-880
    li         $v1,12328
    sw         $v1,8($sp)
    li         $v0,12336
    sw         $v0,12($sp)
    li         $at,12344
    sw         $at,16($sp)
    sd         $s2,800($sp)
    move       $s2,$a0
    li         $a0,12320
    sw         $a0,4($sp)
    lw         $a0,-32660($gp)
    sd         $s6,832($sp)
    sd         $ra,824($sp)
    sd         $s1,816($sp)
    move       $s1,$a1
    li         $a1,12288
    sw         $a1,0($sp)
    addiu      $a1,$sp,24
    sd         $s0,808($sp)
    move       $s0,$a2
    addiu      $a2,$sp,280
    jal        crmSavePP
    sd         $s8,872($sp)
    sd         $s5,840($sp)
    sd         $s7,848($sp)
    li         $s6,2199
    move       $s8,$v0
    sd         $s3,856($sp)
    move       $s3,$zero
    beqz       $s0, .L00009ba0
    sd         $s4,864($sp)
    li         $s7,-1
    move       $s4,$zero
.L00009abc:
    move       $a0,$s2
    move       $a1,$s0
    li         $a2,1792
    jal        mte_set_tlb
    addiu      $a3,$sp,792
    or         $s3,$v0,$s3
    lw         $a0,792($sp)
    jal        min
    move       $a1,$s0
    move       $s5,$v0
    move       $a0,$s1
    move       $a1,$v0
    li         $a2,1920
    jal        mte_set_tlb
    addiu      $a3,$sp,792
    or         $s4,$v0,$s4
    lw         $a0,792($sp)
    jal        min
    move       $a1,$s5
    move       $s5,$v0
    jal        mte_fifo_wait
    li         $a0,6
    lw         $a0,-32660($gp)
    addu       $a2,$s5,$s2
    sw         $s2,12320($a0)
    addiu      $a5,$a2,-1
    sw         $a5,12328($a0)
    addu       $a3,$s5,$s1
    sw         $s1,12336($a0)
    addiu      $a4,$a3,-1
    subu       $s0,$s0,$s5
    sw         $a4,12344($a0)
    move       $s1,$a3
    sw         $s7,12296($a0)
    sw         $s6,14336($a0)
    bnez       $s0, .L00009abc
    move       $s2,$a2
.L00009b50:
    ld         $s2,800($sp)
    ld         $s6,832($sp)
    ld         $s0,808($sp)
    move       $a1,$s3
    move       $a2,$s4
    ld         $s1,816($sp)
    addiu      $a3,$sp,0
    li         $a4,5
    ld         $s5,840($sp)
    addiu      $a5,$sp,24
    addiu      $a6,$sp,280
    ld         $s7,848($sp)
    jal        crimeRestore
    move       $a7,$s8
    ld         $ra,824($sp)
    ld         $s3,856($sp)
    ld         $s4,864($sp)
    ld         $s8,872($sp)
    jr         $ra
    addiu      $sp,$sp,880
.L00009ba0:
    move       $s4,$zero
    lw         $a0,-32660($gp)
    b          .L00009b50
    move       $s3,$zero

glabel mte_zero
    addiu      $sp,$sp,-864
    li         $v1,12288
    sw         $v1,0($sp)
    li         $v0,12336
    sw         $v0,4($sp)
    li         $at,12344
    sw         $at,8($sp)
    sd         $s1,800($sp)
    move       $s1,$a0
    lw         $a0,-32660($gp)
    sd         $s4,824($sp)
    sd         $s0,792($sp)
    move       $s0,$a1
    addiu      $a1,$sp,16
    sd         $ra,808($sp)
    addiu      $a2,$sp,272
    jal        crmSavePP
    sd         $s8,848($sp)
    sd         $s3,816($sp)
    sd         $s5,832($sp)
    li         $s4,17
    move       $s8,$v0
    beqz       $s0, .L00009cbc
    sd         $s2,840($sp)
    li         $s5,-1
    move       $s2,$zero
.L00009c18:
    move       $a0,$s1
    move       $a1,$s0
    li         $a2,1792
    jal        mte_set_tlb
    addiu      $a3,$sp,784
    or         $s2,$v0,$s2
    lw         $a0,784($sp)
    jal        min
    move       $a1,$s0
    move       $s3,$v0
    jal        mte_fifo_wait
    li         $a0,5
    lw         $a0,-32660($gp)
    addu       $a1,$s3,$s1
    sw         $s1,12336($a0)
    addiu      $a2,$a1,-1
    sw         $a2,12344($a0)
    subu       $s0,$s0,$s3
    sw         $zero,12312($a0)
    sw         $s5,12296($a0)
    sw         $s4,14336($a0)
    bnez       $s0, .L00009c18
    move       $s1,$a1
.L00009c74:
    ld         $s3,816($sp)
    ld         $s4,824($sp)
    move       $a1,$s2
    move       $a2,$zero
    ld         $s0,792($sp)
    addiu      $a3,$sp,0
    li         $a4,3
    ld         $s1,800($sp)
    addiu      $a5,$sp,16
    addiu      $a6,$sp,272
    ld         $s5,832($sp)
    jal        crimeRestore
    move       $a7,$s8
    ld         $ra,808($sp)
    ld         $s2,840($sp)
    ld         $s8,848($sp)
    jr         $ra
    addiu      $sp,$sp,864
.L00009cbc:
    lw         $a0,-32660($gp)
    b          .L00009c74
    move       $s2,$zero

glabel mte_delay
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        crimeLockOut
    lw         $a0,-32660($gp)
    beqz       $v0, .L00009cec
    ld         $ra,0($sp)
    lui        $v0,0xff
    b          .L00009d00
    ori        $v0,$v0,0xffff
.L00009cec:
    lw         $a2,-32660($gp)
    lw         $a2,16384($a2)
    dsll32     $v1,$a2,0x6
    bgez       $v1, .L00009d08
    move       $v0,$zero
.L00009d00:
    jr         $ra
    addiu      $sp,$sp,16
.L00009d08:
    srl        $v0,$a2,0x12
    andi       $v0,$v0,0x7f
    sll        $v0,$v0,0x8
    b          .L00009d00
    addiu      $v0,$v0,768

glabel mte_spin
    lw         $at,-32660($gp)
    lw         $at,16384($at)
    sltiu      $at,$at,1
    addiu      $sp,$sp,-16
    dsll32     $at,$at,0x6
    sd         $s0,0($sp)
    lui        $s0,0x200
    bgez       $at, .L00009d60
    sd         $ra,8($sp)
.L00009d40:
    jal        us_delay
    li         $a0,1
    lw         $v0,-32660($gp)
    lw         $v0,16384($v0)
    sltiu      $v0,$v0,1
    and        $v0,$s0,$v0
    bnez       $v0, .L00009d40
    nop
.L00009d60:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel mte_set_tlb
    sw         $zero,0($a3)
    addiu      $sp,$sp,-48
    sd         $s3,0($sp)
    lui        $v0,0x1
    move       $s3,$a2
    sd         $s2,8($sp)
    move       $s2,$a3
    sd         $s0,16($sp)
    sll        $at,$a0,0x13
    srl        $s0,$a0,0xc
    sd         $ra,32($sp)
    addu       $a6,$a0,$a1
    sd         $s1,24($sp)
    addiu      $a6,$a6,-1
    bltz       $at, .L00009e6c
    srl        $s1,$a6,0xc
.L00009db0:
    subu       $a4,$a6,$a0
    ori        $a2,$v0,0xffff
    sltu       $a4,$a2,$a4
    sll        $a3,$s0,0xc
    beqz       $a4, .L00009dcc
    addu       $a2,$a2,$a3
    srl        $s1,$a2,0xc
.L00009dcc:
    subu       $a0,$s1,$s0
    srl        $a0,$a0,0x1
    jal        mte_fifo_wait
    addiu      $a0,$a0,1
    addiu      $a0,$s0,1
    sltu       $a1,$s1,$s0
    lui        $a5,0x8000
    move       $v0,$zero
    ld         $ra,32($sp)
    lw         $a2,-32660($gp)
    bnez       $a1, .L00009e54
    li         $a3,1
    move       $v0,$zero
.L00009e00:
    or         $t2,$a5,$s0
    srl        $a7,$s0,0x1
    dsll32     $t2,$t2,0x0
    andi       $a7,$a7,0xf
    or         $t0,$a5,$a0
    sll        $t1,$a7,0x3
    dsll32     $t0,$t0,0x0
    addu       $t1,$s3,$t1
    dsrl32     $t0,$t0,0x0
    addu       $t1,$a2,$t1
    addiu      $s0,$s0,2
    or         $t0,$t0,$t2
    sd         $t0,4096($t1)
    sltu       $a6,$s1,$s0
    sllv       $a7,$a3,$a7
    lw         $a4,0($s2)
    addiu      $a0,$a0,2
    or         $v0,$v0,$a7
    addiu      $a4,$a4,8192
    beqz       $a6, .L00009e00
    sw         $a4,0($s2)
.L00009e54:
    ld         $s3,0($sp)
    ld         $s2,8($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00009e6c:
    li         $t1,-4096
    sw         $t1,0($a3)
    addiu      $s0,$s0,-1
    b          .L00009db0
    sll        $a0,$s0,0xc

glabel mte_fifo_wait
    lw         $at,-32660($gp)
    lw         $at,16384($at)
    addiu      $sp,$sp,-32
    srl        $at,$at,0x12
    sd         $s1,8($sp)
    li         $s1,64
    andi       $at,$at,0x7f
    subu       $at,$s1,$at
    sltu       $at,$at,$a0
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $at, .L00009edc
    sd         $ra,16($sp)
.L00009eb4:
    jal        us_delay
    li         $a0,1
    lw         $v0,-32660($gp)
    lw         $v0,16384($v0)
    srl        $v0,$v0,0x12
    andi       $v0,$v0,0x7f
    subu       $v0,$s1,$v0
    sltu       $v0,$v0,$s0
    bnez       $v0, .L00009eb4
    nop
.L00009edc:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
    li         $a0,4
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,2952
    ld         $ra,0($sp)
    lw         $a2,-32632($gp)
    addiu      $sp,$sp,16
    addiu      $a2,$a2,1
    jr         $ra
    sw         $a2,-32632($gp)
    li         $a0,4
    move       $a2,$a1
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,2984
    ld         $ra,0($sp)
    lw         $a2,-32628($gp)
    addiu      $sp,$sp,16
    addiu      $a2,$a2,1
    jr         $ra
    sw         $a2,-32628($gp)

glabel crmerr_intr
    move       $a0,$zero
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,3016
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel set_hwperf_intr
    move       $a0,$zero
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        r1nkperf_control_register_set
    move       $a1,$zero
    li         $a0,1
    jal        r1nkperf_control_register_set
    move       $a1,$zero
    jal        get_cpu_irr
    nop
    sra        $at,$v0,0x8
    li         $v0,14
    beq        $at, $v0, .L00009fdc
    li         $a0,2
    jal        get_cpu_irr
    nop
    li         $a0,15
    sra        $v1,$v0,0x8
    beq        $v1, $a0, .L00009fd8
    ld         $ra,0($sp)
.L00009fc8:
    li         $a1,1
    sw         $a1,-32656($gp)
    jr         $ra
    addiu      $sp,$sp,16
.L00009fd8:
    li         $a0,2
.L00009fdc:
    jal        r1nkperf_control_register_set
    move       $a1,$zero
    li         $a0,3
    jal        r1nkperf_control_register_set
    move       $a1,$zero
    b          .L00009fc8
    ld         $ra,0($sp)

glabel synthclock
    addiu      $sp,$sp,-48
    sd         $s1,16($sp)
    lw         $v0,-32648($gp)
    lui        $v1,0xb400
    ld         $at,32($v1)
    move       $s1,$a0
    sd         $s3,0($sp)
    lui        $s3,0xefff
    sd         $s2,8($sp)
    ori        $s2,$v1,0x20
    ori        $s3,$s3,0xffff
    and        $at,$s3,$at
    beqz       $v0, .L0000a044
    sd         $at,32($v1)
.L0000a030:
    ld         $s3,0($sp)
    ld         $s2,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0000a044:
    lw         $t8,-32656($gp)
    addiu      $t9,$v0,1
    sw         $t9,-32648($gp)
    beqz       $t8, .L0000a060
    sd         $ra,32($sp)
    jal        hwperf_intr
    sw         $zero,-32656($gp)
.L0000a060:
    lw         $ra,0($gp)
    beqz       $ra, .L0000a0c4
    sd         $s0,24($sp)
    move       $a0,$s1
.L0000a070:
    jal        clock
    lw         $a1,-24552($zero)
    ld         $at,0($s2)
    and        $at,$s3,$at
    jal        spl7
    sd         $at,0($s2)
    lw         $a4,0($gp)
    lw         $a3,0($gp)
    sltiu      $a4,$a4,2
    move       $a0,$v0
    bnez       $a4, .L0000a0a4
    addiu      $a3,$a3,1
    sw         $a3,0($gp)
.L0000a0a4:
    lw         $t8,0($gp)
    addiu      $t8,$t8,-1
    sw         $t8,0($gp)
    lw         $s0,0($gp)
    jal        splx
    sltiu      $s0,$s0,1
    beqz       $s0, .L0000a070
    move       $a0,$s1
.L0000a0c4:
    ld         $ra,32($sp)
    ld         $s0,24($sp)
    b          .L0000a030
    sw         $zero,-32648($gp)

glabel synthackkgclock
    addiu      $sp,$sp,-48
    sd         $s3,0($sp)
    sd         $s4,16($sp)
    lw         $v0,-32644($gp)
    lui        $v1,0xb400
    move       $s4,$a0
    ld         $at,32($v1)
    move       $s3,$a1
    sd         $s2,8($sp)
    lui        $s2,0xdfff
    sd         $s1,24($sp)
    ori        $s1,$v1,0x20
    ori        $s2,$s2,0xffff
    and        $at,$s2,$at
    bnez       $v0, .L0000a194
    sd         $at,32($v1)
    lw         $t8,0($gp)
    sd         $s0,32($sp)
    addiu      $v0,$v0,1
    beqz       $t8, .L0000a188
    sd         $ra,40($sp)
    sw         $v0,-32644($gp)
    lw         $t9,-32680($gp)
.L0000a130:
    move       $a0,$s4
    jalr       $t9
    move       $a1,$s3
    ld         $at,0($s1)
    and        $at,$s2,$at
    jal        spl7
    sd         $at,0($s1)
    lw         $a5,0($gp)
    lw         $a4,0($gp)
    sltiu      $a5,$a5,2
    move       $a0,$v0
    bnez       $a5, .L0000a168
    addiu      $a4,$a4,1
    sw         $a4,0($gp)
.L0000a168:
    lw         $t8,0($gp)
    addiu      $t8,$t8,-1
    sw         $t8,0($gp)
    lw         $s0,0($gp)
    jal        splx
    sltiu      $s0,$s0,1
    beqz       $s0, .L0000a130
    lw         $t9,-32680($gp)
.L0000a188:
    ld         $ra,40($sp)
    ld         $s0,32($sp)
    sw         $zero,-32644($gp)
.L0000a194:
    ld         $s3,0($sp)
    ld         $s2,8($sp)
    ld         $s4,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
    sltiu      $a1,$a0,32
    lui        $v0,0x0
    sll        $v1,$a0,0x2
    addiu      $v0,$v0,3040
    beqz       $a1, .L0000a1d0
    addu       $v0,$v0,$v1
    lw         $v1,0($v0)
    jr         $v1
    li         $v0,1
.L0000a1d0:
    move       $v0,$zero
    jr         $ra
    nop

glabel crimegang
    addiu      $sp,$sp,-32
    sd         $ra,8($sp)
    sd         $s0,16($sp)
    lui        $s0,0x0
    sd         $s1,0($sp)
    sll        $s1,$a1,0x2
    addiu      $s0,$s0,2920
    sd         $s2,24($sp)
    addu       $s0,$s0,$s1
    move       $s2,$a0
    move       $s1,$zero
    lw         $s0,0($s0)
.L0000a20c:
    lw         $a3,0($s0)
    beqz       $a3, .L0000a230
    move       $a0,$s2
    jalr       $a3
    lw         $a1,4($s0)
    addiu      $s1,$s1,1
    slti       $t8,$s1,16
    bnez       $t8, .L0000a20c
    addiu      $s0,$s0,48
.L0000a230:
    ld         $ra,8($sp)
    ld         $s0,16($sp)
    ld         $s1,0($sp)
    ld         $s2,24($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel crime_intr_enable
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        spl7
    move       $s8,$a0
    ld         $at,-23880($zero)
    move       $a0,$v0
    li         $v0,1
    sllv       $v0,$v0,$s8
    or         $at,$at,$v0
    jal        splx
    sd         $at,-23880($zero)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crime_intr_disable
    addiu      $sp,$sp,-16
    sd         $s8,8($sp)
    sd         $ra,0($sp)
    jal        spl7
    move       $s8,$a0
    move       $a0,$v0
    li         $v0,1
    ld         $at,-23880($zero)
    sllv       $v0,$v0,$s8
    nor        $v0,$v0,$zero
    and        $at,$at,$v0
    jal        splx
    sd         $at,-23880($zero)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16
    addiu      $sp,$sp,-208
    sd         $s7,160($sp)
    sd         $s5,152($sp)
    sd         $s1,144($sp)
    sd         $s6,192($sp)
    sd         $s0,176($sp)
    sd         $s8,168($sp)
    sd         $s4,184($sp)
    sd         $s2,200($sp)
    move       $s8,$a0
    lui        $a6,0xb400
    ld         $s2,312($a0)
    addiu      $s0,$sp,0
    lui        $s4,0x0
    ld         $a6,16($a6)
    li         $s6,-1
    sd         $ra,136($sp)
    addiu      $s4,$s4,1408
    sd         $s3,128($sp)
    and        $a6,$a6,$s2
    b          .L0000a56c
    sll        $a6,$a6,0x0
.L0000a324:
    lui        $a6,0xb400
    ori        $a6,$a6,0x10
    ld         $a6,0($a6)
    and        $a6,$a6,$s2
    sll        $a6,$a6,0x0
    beqz       $a6, .L0000a538
    addiu      $a4,$s4,144
    addiu      $s3,$sp,0
.L0000a344:
    move       $a3,$zero
    li         $s7,1
    b          .L0000a368
    li         $v0,1
.L0000a354:
    move       $a5,$a3
.L0000a358:
    addu       $t0,$s0,$a7
    addiu      $a3,$a3,1
    beqz       $v0, .L0000a3c0
    sw         $a5,0($t0)
.L0000a368:
    and        $t2,$a6,$v0
    sll        $v0,$v0,0x1
    lh         $t1,12($a4)
    li         $a5,-1
    beqz       $t2, .L0000a3b8
    sll        $a7,$t1,0x2
    move       $a5,$a3
    and        $t0,$a6,$v0
.L0000a388:
    addu       $t3,$s0,$a7
    addiu      $a3,$a3,1
    beqz       $v0, .L0000a3c0
    sw         $a5,0($t3)
    sll        $v0,$v0,0x1
    li         $a5,-1
    lh         $t1,60($a4)
    addiu      $a4,$a4,96
    bnez       $t0, .L0000a354
    sll        $a7,$t1,0x2
    b          .L0000a358
    nop
.L0000a3b8:
    b          .L0000a388
    and        $t0,$a6,$v0
.L0000a3c0:
    b          .L0000a430
    lw         $v1,0($s3)
.L0000a3c8:
    jal        splint
    nop
    lw         $a3,8($s1)
    move       $s5,$v0
    ld         $a4,16($s1)
    move       $a5,$zero
    sra        $a3,$a3,0x3
    move       $a6,$zero
    nor        $a4,$a4,$zero
    blez       $a3, .L0000a410
    and        $s2,$a4,$s2
.L0000a3f4:
    addiu      $a6,$a6,1
    ld         $a7,-23880($a5)
    slt        $t0,$a6,$a3
    addiu      $a5,$a5,8
    and        $a7,$a7,$a4
    bnez       $t0, .L0000a3f4
    sd         $a7,-23888($a5)
.L0000a410:
    jal        vsema
    addiu      $a0,$s1,28
    jal        splx
    move       $a0,$s5
.L0000a420:
    sll        $s7,$s7,0x1
.L0000a424:
    beqz       $s7, .L0000a324
    addiu      $s3,$s3,4
    lw         $v1,0($s3)
.L0000a430:
    move       $a5,$zero
    sll        $v0,$v1,0x2
    beq        $v1, $s6, .L0000a420
    subu       $v0,$v0,$v1
    sll        $a7,$v0,0x4
    addu       $a7,$s4,$a7
    lh         $a1,158($a7)
    lw         $a0,152($a7)
    move       $v0,$zero
    lw         $t0,168($a7)
    andi       $a1,$a1,0x4
    addiu      $s1,$a7,144
    sra        $a3,$a0,0x3
    beqz       $a1, .L0000a498
    andi       $a6,$t0,0x1000
    blez       $a3, .L0000a498
    nop
    ld         $a4,160($a7)
    nor        $a4,$a4,$zero
.L0000a47c:
    addiu      $a5,$a5,1
    ld         $a7,-23880($v0)
    slt        $t1,$a5,$a3
    addiu      $v0,$v0,8
    and        $a7,$a7,$a4
    bnez       $t1, .L0000a47c
    sd         $a7,-23888($v0)
.L0000a498:
    bnez       $a6, .L0000a3c8
    nop
    jal        splint
    nop
    lw         $t0,0($s1)
    move       $s5,$v0
    move       $a0,$s8
    jalr       $t0
    lw         $a1,4($s1)
    lh         $t1,14($s1)
    andi       $t1,$t1,0x4
    beqz       $t1, .L0000a4fc
    nop
    ld         $t8,16($s1)
    ld         $t3,312($s8)
    nor        $t8,$t8,$zero
    and        $t3,$t3,$t8
    sd         $t3,312($s8)
    ld         $t2,16($s1)
    nor        $t2,$t2,$zero
    and        $s2,$s2,$t2
.L0000a4ec:
    jal        splx
    move       $a0,$s5
    b          .L0000a424
    sll        $s7,$s7,0x1
.L0000a4fc:
    lw         $a3,8($s1)
    sra        $a3,$a3,0x3
    move       $a5,$zero
    blez       $a3, .L0000a4ec
    move       $a4,$zero
    ld         $a6,16($s1)
.L0000a514:
    addiu      $a5,$a5,1
    ld         $a7,-23880($a4)
    slt        $t0,$a5,$a3
    addiu      $a4,$a4,8
    or         $a7,$a7,$a6
    bnez       $t0, .L0000a514
    sd         $a7,-23888($a4)
    b          .L0000a4ec
    nop
.L0000a538:
    ld         $s0,176($sp)
    ld         $s1,144($sp)
    sd         $s2,312($s8)
    ld         $s2,200($sp)
    ld         $s3,128($sp)
    ld         $s4,184($sp)
    ld         $s5,152($sp)
    ld         $ra,136($sp)
    ld         $s6,192($sp)
    ld         $s7,160($sp)
    ld         $s8,168($sp)
    jr         $ra
    addiu      $sp,$sp,208
.L0000a56c:
    addiu      $a4,$s4,144
    b          .L0000a344
    addiu      $s3,$sp,0

glabel intr
    addiu      $sp,$sp,-96
    sd         $s7,24($sp)
    sd         $s3,40($sp)
    sd         $s8,48($sp)
    sd         $ra,64($sp)
    ld         $at,-24320($zero)
    sd         $s5,16($sp)
    sd         $s6,0($sp)
    andi       $at,$at,0x20
    move       $s6,$a0
    move       $s5,$a2
    sd         $s0,8($sp)
    move       $s0,$a3
    bnez       $at, .L0000a788
    sd         $s1,80($sp)
    move       $s3,$zero
.L0000a5b8:
    move       $s7,$zero
    sd         $s2,56($sp)
    lui        $s1,0x0
    lui        $at,0xb400
    ld         $s8,312($s6)
    li         $ra,-1
    addiu      $s1,$s1,1408
    ld         $at,16($at)
    dsrl32     $ra,$ra,0x0
    sd         $s4,72($sp)
    and        $ra,$s8,$ra
    dsrl32     $s8,$s8,0x0
    sd         $ra,312($s6)
    and        $at,$ra,$at
    sll        $s8,$s8,0x0
    sd         $at,32($sp)
    b          .L0000a638
    slti       $s8,$s8,8
.L0000a600:
    move       $v0,$zero
    lw         $t8,0($s2)
.L0000a608:
    move       $s7,$v0
    jalr       $t8
    move       $a0,$s6
    jal        splx
    move       $a0,$s4
    lw         $t9,8($s2)
    sll        $t9,$t9,0x8
    addiu      $s3,$s3,1
    nor        $t9,$t9,$zero
    jal        getcause
    and        $s0,$s0,$t9
    or         $s0,$v0,$s0
.L0000a638:
    and        $s0,$s5,$s0
    andi       $s0,$s0,0xff00
    ld         $t8,32($sp)
    beqz       $s0, .L0000a6b8
    andi       $a3,$s0,0x400
    beqz       $a3, .L0000a660
    srl        $v0,$s0,0xc
    beqz       $t8, .L0000a6b0
    li         $v1,-1025
    srl        $v0,$s0,0xc
.L0000a660:
    addu       $v0,$s1,$v0
    lbu        $v0,1680($v0)
    beqz       $v0, .L0000a69c
    nop
.L0000a670:
    sll        $s2,$v0,0x4
    addu       $s2,$s1,$s2
    jal        splint
    lw         $a0,4($s2)
    lw         $a3,0($gp)
    beqz       $s8, .L0000a600
    move       $s4,$v0
    bnez       $a3, .L0000a600
    li         $v0,1
    b          .L0000a608
    lw         $t8,0($s2)
.L0000a69c:
    srl        $v0,$s0,0x8
    andi       $v0,$v0,0xf
    addu       $v0,$s1,$v0
    b          .L0000a670
    lbu        $v0,1696($v0)
.L0000a6b0:
    b          .L0000a638
    and        $s0,$v1,$s0
.L0000a6b8:
    lui        $a3,0xb400
    ld         $v0,32($a3)
    lw         $v1,0($gp)
    lui        $a0,0x3000
    lw         $a2,-32644($gp)
    ori        $a3,$a3,0x20
    beqz       $v1, .L0000a758
    sll        $v0,$v0,0x0
    lw         $a4,-32648($gp)
.L0000a6dc:
    beqz       $a4, .L0000a76c
    lui        $v1,0x1000
.L0000a6e4:
    lw         $a5,0($gp)
    beqz       $a5, .L0000a6f8
    and        $a6,$v0,$a0
    beqz       $a2, .L0000a778
.L0000a6f4:
    and        $a6,$v0,$a0
.L0000a6f8:
    beqz       $a6, .L0000a704
    nop
    sd         $v0,0($a3)
.L0000a704:
    lw         $t1,-24028($zero)
    lw         $t0,208($t1)
    addu       $t0,$s3,$t0
    sw         $t0,208($t1)
    ld         $a7,-24320($zero)
    andi       $a7,$a7,0x20
    bnez       $a7, .L0000a7a8
    li         $a1,102
    ld         $s6,0($sp)
.L0000a728:
    ld         $s3,40($sp)
    ld         $s8,48($sp)
    ld         $s2,56($sp)
    ld         $s4,72($sp)
    ld         $s0,8($sp)
    ld         $ra,64($sp)
    ld         $s1,80($sp)
    ld         $s5,16($sp)
    move       $v0,$s7
    ld         $s7,24($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L0000a758:
    lw         $t1,-32656($gp)
    bnez       $t1, .L0000a6dc
    lw         $a4,-32648($gp)
    b          .L0000a6e4
    nop
.L0000a76c:
    or         $v0,$v0,$v1
    b          .L0000a6e4
    sll        $v0,$v0,0x0
.L0000a778:
    lui        $v1,0x2000
    or         $v0,$v0,$v1
    b          .L0000a6f4
    sll        $v0,$v0,0x0
.L0000a788:
    li         $a0,102
    move       $a1,$zero
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L0000a5b8
    move       $s3,$zero
.L0000a7a8:
    li         $a0,101
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L0000a728
    ld         $s6,0($sp)

glabel setkgvector
    jr         $ra
    sw         $a0,-32680($gp)

glabel getcvpriority
    move       $a3,$zero
    li         $a6,31
    sll        $t8,$a0,0x2
    li         $t2,31
    addiu      $sp,$sp,-128
    lui        $t9,0x0
    addiu      $t1,$sp,0
    addiu      $t9,$t9,1408
    addiu      $t3,$sp,4
    addiu      $a2,$t9,144
.L0000a7f4:
    lh         $v1,12($a2)
    sll        $v0,$v1,0x1e
    addiu      $a3,$a3,1
    subu       $v0,$v0,$v1
    slti       $at,$a3,32
    sll        $v0,$v0,0x2
    addu       $v0,$t1,$v0
    sw         $a2,124($v0)
    addiu      $a2,$a2,48
    beqz       $at, .L0000a848
    nop
    lh         $a5,12($a2)
    sll        $a4,$a5,0x1e
    addiu      $a3,$a3,1
    subu       $a4,$a4,$a5
    slti       $a1,$a3,32
    sll        $a4,$a4,0x2
    addu       $a4,$t1,$a4
    sw         $a2,124($a4)
    bnez       $a1, .L0000a7f4
    addiu      $a2,$a2,48
.L0000a848:
    b          .L0000a864
    nop
.L0000a850:
    addiu      $a6,$a6,-1
    bltz       $a6, .L0000a8ec
    subu       $a4,$t8,$a0
    bnez       $t0, .L0000a8ec
    subu       $a4,$t8,$a0
.L0000a864:
    blez       $a6, .L0000a8ec
    subu       $a4,$t8,$a0
    move       $a2,$t3
    li         $a3,1
    li         $t0,1
    b          .L0000a88c
    addiu      $a3,$a3,1
.L0000a880:
    bnez       $a7, .L0000a850
    addiu      $a2,$a2,8
    addiu      $a3,$a3,1
.L0000a88c:
    lw         $a5,-4($a2)
    lw         $a4,0($a2)
    lw         $at,8($a5)
    lw         $a7,8($a4)
    slt        $a7,$a7,$at
    beqz       $a7, .L0000a8b4
    slt        $a7,$a6,$a3
    sw         $a4,-4($a2)
    sw         $a5,0($a2)
    move       $t0,$zero
.L0000a8b4:
    bnez       $a7, .L0000a850
    addiu      $a3,$a3,1
    lw         $a5,0($a2)
    lw         $a4,4($a2)
    lw         $v1,8($a5)
    lw         $v0,8($a4)
    slt        $v0,$v0,$v1
    beqz       $v0, .L0000a880
    slt        $a7,$a6,$a3
    sw         $a4,0($a2)
    sw         $a5,4($a2)
    b          .L0000a880
    move       $t0,$zero
    subu       $a4,$t8,$a0
.L0000a8ec:
    addiu      $a3,$t1,124
    move       $a2,$zero
.L0000a8f4:
    addiu      $t2,$t2,-1
    lw         $a1,0($a3)
    sh         $a2,12($a1)
    addiu      $a2,$a2,1
    bltz       $t2, .L0000a920
    addiu      $t2,$t2,-1
    lw         $a5,-4($a3)
    addiu      $a3,$a3,-8
    sh         $a2,12($a5)
    bgez       $t2, .L0000a8f4
    addiu      $a2,$a2,1
.L0000a920:
    sll        $v0,$a4,0x4
    addu       $v0,$t9,$v0
    lh         $v0,156($v0)
    jr         $ra
    addiu      $sp,$sp,128

glabel create_crimegang
    addiu      $sp,$sp,-64
    sd         $a1,40($sp)
    sd         $a2,8($sp)
    sd         $a3,32($sp)
    lui        $t0,0x0
    sll        $t2,$a0,0x2
    sd         $a4,24($sp)
    addiu      $t0,$t0,1552
    subu       $t1,$t2,$a0
    sd         $ra,48($sp)
    sll        $t1,$t1,0x4
    lui        $a7,0x0
    addu       $t0,$t0,$t1
    sd         $t0,16($sp)
    addiu      $a7,$a7,2920
    addu       $a7,$a7,$t2
    sd         $a7,0($sp)
    lui        $at,0x0
    lw         $a7,0($a7)
    addiu      $at,$at,0
    sw         $at,0($t0)
    sw         $a1,8($t0)
    beqz       $a7, .L0000a9c8
    sw         $a0,4($t0)
.L0000a994:
    beqz       $a7, .L0000a9bc
    move       $v0,$zero
    sw         $a1,8($a7)
    sw         $a3,4($a7)
    sw         $a2,0($a7)
    lh         $t1,12($t0)
    sh         $a4,14($a7)
    sh         $t1,12($a7)
.L0000a9b4:
    jr         $ra
    addiu      $sp,$sp,64
.L0000a9bc:
    li         $v0,2
    b          .L0000a9b4
    nop
.L0000a9c8:
    li         $a0,768
    jal        kmem_zalloc
    move       $a1,$zero
    ld         $ra,48($sp)
    ld         $a1,40($sp)
    ld         $a3,32($sp)
    ld         $a4,24($sp)
    ld         $t0,16($sp)
    ld         $t2,0($sp)
    ld         $a2,8($sp)
    move       $a7,$v0
    b          .L0000a994
    sw         $v0,0($t2)

glabel join_crimegang
    sll        $t0,$a0,0x2
    lui        $t1,0x0
    subu       $t0,$t0,$a0
    addiu      $t1,$t1,1552
    sll        $t0,$t0,0x4
    addu       $t0,$t0,$t1
    sll        $a7,$a0,0x2
    lw         $t3,8($t0)
    sll        $t1,$a1,0x3
    li         $v0,1
    lui        $t2,0x0
    bne        $t3, $t1, .L0000aa84
    addiu      $t2,$t2,2920
    addu       $a5,$t2,$a7
    lw         $a5,0($a5)
    beqz       $a5, .L0000aa84
    li         $v0,2
    move       $v0,$zero
.L0000aa44:
    addiu      $v0,$v0,1
    lw         $a6,0($a5)
    beqz       $a6, .L0000aa68
    slti       $a6,$v0,16
    bnez       $a6, .L0000aa44
    addiu      $a5,$a5,48
    lw         $a7,0($a5)
    bnez       $a7, .L0000aa84
    li         $v0,2
.L0000aa68:
    sw         $a3,4($a5)
    sw         $t1,8($a5)
    sw         $a2,0($a5)
    lh         $t2,12($t0)
    sh         $a4,14($a5)
    move       $v0,$zero
    sh         $t2,12($a5)
.L0000aa84:
    jr         $ra
    nop

glabel setsplmasks
    blez       $a1, .L0000aac0
    li         $a6,1
    move       $a4,$zero
    move       $a5,$a6
    move       $a3,$zero
    sllv       $a5,$a5,$a0
.L0000aaa4:
    addiu      $a4,$a4,1
    ld         $a7,-23880($a3)
    slt        $t0,$a4,$a1
    addiu      $a3,$a3,8
    or         $a7,$a5,$a7
    bnez       $t0, .L0000aaa4
    sd         $a7,-23888($a3)
.L0000aac0:
    sll        $a3,$a1,0x3
    slti       $a5,$a1,5
    sllv       $a4,$a6,$a0
    beqz       $a5, .L0000aaf0
    nor        $a4,$a4,$zero
.L0000aad4:
    addiu      $a1,$a1,1
    ld         $a6,-23880($a3)
    slti       $a7,$a1,5
    addiu      $a3,$a3,8
    and        $a6,$a4,$a6
    bnez       $a7, .L0000aad4
    sd         $a6,-23888($a3)
.L0000aaf0:
    jr         $ra
    nop

glabel setcrimevector
    addiu      $sp,$sp,-64
    sd         $s2,8($sp)
    sd         $s0,32($sp)
    move       $s0,$a0
    move       $s2,$a1
    sd         $s5,40($sp)
    move       $s5,$a2
    sd         $s4,24($sp)
    move       $s4,$a3
    sd         $s3,16($sp)
    beqz       $a2, .L0000ac2c
    move       $s3,$a4
    bltz       $a1, .L0000ac24
    slti       $at,$a1,6
    beqz       $at, .L0000ac24
    nop
    bltz       $a0, .L0000ab48
    slti       $v0,$a0,33
    bnez       $v0, .L0000ab50
    sd         $ra,56($sp)
.L0000ab48:
    b          .L0000ac08
    li         $v0,2
.L0000ab50:
    jal        spl7
    sd         $s1,48($sp)
    sll        $t8,$s0,0x2
    lui        $s1,0x0
    subu       $t8,$t8,$s0
    addiu      $s1,$s1,1552
    sll        $t8,$t8,0x4
    addu       $s1,$s1,$t8
    lui        $v1,0x0
    lw         $a2,0($s1)
    addiu      $v1,$v1,0
    beq        $a2, $v1, .L0000ac58
    sd         $v0,0($sp)
    lh         $a4,14($s1)
    andi       $t9,$a4,0x1
    beqz       $t9, .L0000ac34
    lui        $a1,0x0
    addiu      $a1,$a1,-24800
    beq        $a2, $a1, .L0000ac40
    andi       $a3,$s3,0x1
    li         $s2,2
.L0000aba4:
    jal        .text
    move       $a0,$s0
    beqz       $v0, .L0000abf4
    nop
    lw         $a2,24($s1)
    andi       $a2,$a2,0x800
    bnez       $a2, .L0000abf4
    addiu      $a5,$s1,24
    li         $a6,768
.L0000abc8:
    ll         $a4,0($a5)
    or         $a7,$a4,$a6
    sc         $a7,0($a5)
    beqzl      $a7, .L0000abc8
    nop
    lw         $a3,0($gp)
    beqz       $a3, .L0000abf4
    move       $a0,$s0
    lh         $a1,40($s1)
    jal        crimevec_thread_setup
    move       $a2,$s1
.L0000abf4:
    jal        splx
    ld         $a0,0($sp)
    ld         $ra,56($sp)
    ld         $s1,48($sp)
    move       $v0,$s2
.L0000ac08:
    ld         $s2,8($sp)
    ld         $s3,16($sp)
    ld         $s4,24($sp)
    ld         $s0,32($sp)
    ld         $s5,40($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0000ac24:
    b          .L0000ac08
    li         $v0,2
.L0000ac2c:
    b          .L0000ac08
    li         $v0,2
.L0000ac34:
    lui        $a1,0x0
    addiu      $a1,$a1,-24800
    andi       $a3,$s3,0x1
.L0000ac40:
    beqz       $a3, .L0000ac78
    nop
    beq        $a2, $a1, .L0000ac98
    nop
    b          .L0000aba4
    li         $s2,2
.L0000ac58:
    move       $a0,$s0
    move       $a1,$s2
    move       $a2,$s5
    move       $a3,$s4
    jal        join_crimegang
    move       $a4,$s3
    b          .L0000aba4
    move       $s2,$v0
.L0000ac78:
    beq        $a2, $a1, .L0000ac98
    nop
    lw         $a1,8($s1)
    sll        $a5,$s2,0x3
    beq        $a1, $a5, .L0000ad24
    move       $a0,$s0
    b          .L0000aba4
    li         $s2,1
.L0000ac98:
    sw         $s4,4($s1)
    sll        $a6,$s2,0x3
    sw         $a6,8($s1)
    sw         $s5,0($s1)
    jal        getcvpriority
    move       $a0,$s0
    sh         $s3,14($s1)
    li         $a1,1
    li         $t0,16
    sh         $v0,12($s1)
    sllv       $a7,$a1,$s0
    beq        $s0, $t0, .L0000ad18
    sd         $a7,16($s1)
    li         $t1,17
    beq        $s0, $t1, .L0000ad18
    li         $t2,2
    beq        $s0, $t2, .L0000ad10
    lw         $t9,0($gp)
    beqz       $s0, .L0000ad10
    lw         $t9,0($gp)
    beq        $s0, $a1, .L0000ad10
    lw         $t9,0($gp)
    lw         $t3,0($gp)
    sh         $t3,40($s1)
.L0000acf8:
    andi       $t8,$s3,0x4
    beqz       $t8, .L0000ad3c
    move       $a0,$s0
.L0000ad04:
    b          .L0000aba4
    move       $s2,$zero
    lw         $t9,0($gp)
.L0000ad10:
    b          .L0000acf8
    sh         $t9,40($s1)
.L0000ad18:
    lw         $ra,0($gp)
    b          .L0000acf8
    sh         $ra,40($s1)
.L0000ad24:
    jal        create_crimegang
    lw         $a3,4($s1)
    beqz       $v0, .L0000ad4c
    move       $a0,$s0
    b          .L0000aba4
    li         $s2,2
.L0000ad3c:
    jal        setsplmasks
    move       $a1,$s2
    b          .L0000ad04
    nop
.L0000ad4c:
    move       $a1,$s2
    move       $a2,$s5
    move       $a3,$s4
    jal        join_crimegang
    move       $a4,$s3
    b          .L0000aba4
    move       $s2,$v0

glabel enable_ithreads
    addiu      $sp,$sp,-32
    sd         $s0,8($sp)
    sd         $s1,16($sp)
    sd         $ra,0($sp)
    jal        spl7
    sd         $s8,24($sp)
    move       $s8,$v0
    li         $s1,1
    sw         $s1,0($gp)
    move       $s1,$zero
    lui        $s0,0x0
    b          .L0000adb8
    addiu      $s0,$s0,1552
.L0000ad9c:
    lh         $a1,40($s0)
    jal        crimevec_thread_setup
    move       $a2,$s0
    addiu      $s1,$s1,1
    slti       $t8,$s1,32
    beqz       $t8, .L0000add8
    addiu      $s0,$s0,48
.L0000adb8:
    lw         $t9,24($s0)
    andi       $t9,$t9,0x200
    bnez       $t9, .L0000ad9c
    move       $a0,$s1
    addiu      $s1,$s1,1
    slti       $ra,$s1,32
    bnez       $ra, .L0000adb8
    addiu      $s0,$s0,48
.L0000add8:
    jal        splx
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s8,24($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel crimevec_thread_setup
    move       $at,$a0
    addiu      $sp,$sp,-64
    addiu      $a0,$sp,0
    sd         $a2,48($sp)
    move       $a2,$at
    sd         $s8,40($sp)
    move       $s8,$a1
    lui        $a1,0x0
    sd         $ra,32($sp)
    jal        sprintf
    addiu      $a1,$a1,3168
    addiu      $a0,$sp,0
    lui        $a3,0x0
    ld         $a4,48($sp)
    move       $a1,$s8
    addiu      $a3,$a3,0
    jal        xthread_setup
    addiu      $a2,$a4,24
    ld         $ra,32($sp)
    ld         $s8,40($sp)
    jr         $ra
    addiu      $sp,$sp,64

glabel crimevec_intrd_init
    addiu      $sp,$sp,-16
    lui        $a1,0x0
    sd         $s8,8($sp)
    move       $s8,$a0
    lw         $a0,-24552($zero)
    addiu      $a1,$a1,0
    sd         $ra,0($sp)
    jal        xthread_set_func
    move       $a2,$s8
    li         $a4,1024
    addiu      $a3,$s8,24
.L0000ae7c:
    ll         $a2,0($a3)
    or         $a5,$a2,$a4
    sc         $a5,0($a3)
    beqzl      $a5, .L0000ae7c
    nop
    jal        ipsema
    addiu      $a0,$s8,28
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel crimevec_intrd
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    lw         $at,0($s0)
    sd         $ra,8($sp)
    move       $a0,$zero
    jalr       $at
    lw         $a1,4($s0)
    jal        splhi
    nop
    move       $a0,$v0
    lh         $v0,14($s0)
    andi       $v0,$v0,0x4
    bnez       $v0, .L0000af18
    nop
    lw         $a5,8($s0)
    sra        $a5,$a5,0x3
    move       $a4,$zero
    blez       $a5, .L0000af18
    move       $a3,$zero
    ld         $a6,16($s0)
.L0000aefc:
    addiu      $a4,$a4,1
    ld         $a7,-23880($a3)
    slt        $t0,$a4,$a5
    addiu      $a3,$a3,8
    or         $a7,$a7,$a6
    bnez       $t0, .L0000aefc
    sd         $a7,-23888($a3)
.L0000af18:
    jal        splx
    nop
    jal        ipsema
    addiu      $a0,$s0,28
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
    sll        $v1,$a1,0x2
    lui        $v0,0x0
    subu       $v1,$v1,$a1
    addiu      $v0,$v0,1552
    sll        $v1,$v1,0x4
    lw         $a2,0($a0)
    addu       $v0,$v0,$v1
    sw         $a2,0($v0)
    lw         $a1,4($a0)
    sw         $a1,4($v0)
    lw         $v1,8($a0)
    sw         $v1,8($v0)
    lh         $at,14($a0)
    sh         $at,14($v0)
    sh         $zero,12($a0)
    sh         $zero,14($a0)
    sw         $zero,4($a0)
    sw         $zero,8($a0)
    jr         $ra
    sw         $zero,0($a0)
    addiu      $sp,$sp,-48
    sd         $a1,0($sp)
    sd         $ra,24($sp)
    sd         $s0,32($sp)
    lui        $s0,0x0
    sd         $s1,16($sp)
    sll        $t8,$a1,0x2
    addiu      $s0,$s0,2920
    addu       $s0,$s0,$t8
    sd         $s0,8($sp)
    move       $s1,$a0
    jal        spl7
    lw         $s0,0($s0)
    beqz       $s0, .L0000b0b8
    li         $a0,16
    move       $a4,$zero
.L0000afc8:
    lw         $a5,0($s0)
    beqz       $a5, .L0000b0b0
    nop
    beq        $a5, $s1, .L0000afec
    nop
    addiu      $a4,$a4,1
    slti       $t9,$a4,16
    bnez       $t9, .L0000afc8
    addiu      $s0,$s0,48
.L0000afec:
    beq        $a4, $a0, .L0000b0c0
    addiu      $a5,$s0,48
    addiu      $a4,$a4,1
    slti       $ra,$a4,16
    beqz       $ra, .L0000b058
    li         $a7,48
    lw         $a0,48($s0)
    beqz       $a0, .L0000b058
    nop
    b          .L0000b0d8
    addiu      $a4,$a4,1
.L0000b018:
    lw         $a0,0($a5)
    addiu      $a4,$a4,1
    beqz       $a0, .L0000b058
    slti       $v1,$a4,16
    sw         $a0,0($s0)
.L0000b02c:
    lw         $a3,4($a5)
    sw         $a3,4($s0)
    lw         $a2,8($a5)
    sw         $a2,8($s0)
    lh         $a1,14($a5)
    sh         $a1,14($s0)
    addiu      $s0,$s0,48
    lh         $at,12($a5)
    addiu      $a5,$a5,48
    bnez       $v1, .L0000b018
    sh         $at,-36($s0)
.L0000b058:
    sh         $zero,12($s0)
    sh         $zero,14($s0)
    sw         $zero,8($s0)
    sw         $zero,4($s0)
    ld         $a0,8($sp)
    sw         $zero,0($s0)
    lw         $a0,0($a0)
    subu       $a6,$s0,$a0
    div        $zero,$a6,$a7
    li         $a5,1
    mflo       $a4
    beq        $a4, $a5, .L0000b0c8
    sd         $v0,40($sp)
.L0000b08c:
    li         $s0,1
.L0000b090:
    ld         $s1,16($sp)
    jal        splx
    move       $a0,$v0
    ld         $ra,24($sp)
    move       $v0,$s0
    ld         $s0,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0000b0b0:
    b          .L0000b090
    move       $s0,$zero
.L0000b0b8:
    b          .L0000b090
    move       $s0,$zero
.L0000b0c0:
    b          .L0000b090
    move       $s0,$zero
.L0000b0c8:
    jal        .text
    ld         $a1,0($sp)
    b          .L0000b08c
    ld         $v0,40($sp)
.L0000b0d8:
    slti       $v1,$a4,16
    b          .L0000b02c
    sw         $a0,0($s0)

glabel unsetcrimevector
    sll        $t8,$a0,0x2
    addiu      $sp,$sp,-32
    sd         $s1,16($sp)
    lui        $s1,0x0
    subu       $t8,$t8,$a0
    sll        $t8,$t8,0x4
    addiu      $s1,$s1,1552
    addu       $s1,$s1,$t8
    move       $a4,$a1
    lui        $a6,0x0
    lw         $v0,0($s1)
    lui        $a5,0x0
    addiu      $a6,$a6,-24800
    addiu      $a5,$a5,0
    sd         $s0,8($sp)
    move       $s0,$a0
    move       $a0,$zero
    beq        $v0, $a6, .L0000b190
    sd         $ra,24($sp)
    bne        $v0, $a5, .L0000b148
    move       $a0,$a1
    jal        .text
    move       $a1,$s0
    b          .L0000b190
    move       $a0,$v0
.L0000b148:
    jal        spl7
    nop
    sd         $v0,0($sp)
    sw         $zero,8($s1)
    move       $a0,$s0
    lui        $t9,0x0
    addiu      $t9,$t9,-24800
    jal        getcvpriority
    sw         $t9,0($s1)
    sh         $v0,12($s1)
    sw         $v0,4($s1)
    move       $a0,$s0
    sh         $zero,14($s1)
    jal        setsplmasks
    move       $a1,$zero
    jal        splx
    ld         $a0,0($sp)
    li         $a0,1
.L0000b190:
    ld         $ra,24($sp)
    move       $v0,$a0
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel sendintr
    move       $a0,$zero
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,3184
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel spl0
    mfc0       $v0,c0_sr
    lui        $v1,0x1
    ori        $v1,$v1,0x84
    and        $v1,$v1,$v0
    ori        $v1,$v1,0x8701
    xori       $t2,$v1,0x1
    mtc0       $t2,c0_sr
    ld         $t0,-23880($zero)
    lui        $t1,0xb400
    ori        $t1,$t1,0x18
    sd         $t0,0($t1)
    lw         $t0,-23840($zero)
    lui        $at,0xffff
    ori        $at,$at,0xff
    and        $v0,$v0,$at
    sll        $at,$t0,0x8
    or         $v0,$v0,$at
    sw         $zero,-23840($zero)
    jr         $ra
    mtc0       $v1,c0_sr

glabel splhi
    mfc0       $v0,c0_sr
    li         $t1,8
    lw         $t0,-23840($zero)
    slt        $at,$t0,$t1
    beqz       $at, .L0000b280
    nop
    lui        $v1,0x1
    ori        $v1,$v1,0x8485
    and        $v1,$v1,$v0
    li         $at,-2
    and        $t2,$v0,$at
    mtc0       $t2,c0_sr
    ld         $t0,-23880($t1)
    lui        $t2,0xb400
    ori        $t2,$t2,0x18
    sd         $t0,0($t2)
    lw         $t0,-23840($zero)
    lui        $at,0xffff
    ori        $at,$at,0xff
    and        $v0,$v0,$at
    sll        $at,$t0,0x8
    or         $v0,$v0,$at
    sw         $t1,-23840($zero)
    jr         $ra
    mtc0       $v1,c0_sr
.L0000b280:
    lw         $t0,-23840($zero)
    lui        $at,0xffff
    ori        $at,$at,0xff
    and        $v0,$v0,$at
    sll        $at,$t0,0x8
    or         $v0,$v0,$at
    jr         $ra
    nop

glabel issplhi
    andi       $v1,$a0,0x3
    li         $a0,1
    beq        $v1, $a0, .L0000b2b8
    li         $v0,0
    b          .L0000b2cc
    li         $v0,1
.L0000b2b8:
    lw         $v1,-23840($zero)
    slti       $at,$v1,8
    bnez       $at, .L0000b2cc
    nop
    li         $v0,1
.L0000b2cc:
    jr         $ra
    nop

glabel issplprof
    andi       $v1,$a0,0x3
    li         $a0,1
    beq        $v1, $a0, .L0000b2ec
    li         $v0,0
    b          .L0000b300
    li         $v0,1
.L0000b2ec:
    lw         $v1,-23840($zero)
    slti       $at,$v1,16
    bnez       $at, .L0000b300
    nop
    li         $v0,1
.L0000b300:
    jr         $ra
    nop

glabel splprof
    mfc0       $v0,c0_sr
    li         $t1,16
    lw         $t0,-23840($zero)
    slt        $at,$t0,$t1
    beqz       $at, .L0000b36c
    nop
    lui        $v1,0x1
    ori        $v1,$v1,0x485
    and        $v1,$v1,$v0
    li         $at,-2
    and        $t2,$v0,$at
    mtc0       $t2,c0_sr
    ld         $t0,-23880($t1)
    lui        $t2,0xb400
    ori        $t2,$t2,0x18
    sd         $t0,0($t2)
    lw         $t0,-23840($zero)
    lui        $at,0xffff
    ori        $at,$at,0xff
    and        $v0,$v0,$at
    sll        $at,$t0,0x8
    or         $v0,$v0,$at
    sw         $t1,-23840($zero)
    jr         $ra
    mtc0       $v1,c0_sr
.L0000b36c:
    lw         $t0,-23840($zero)
    lui        $at,0xffff
    ori        $at,$at,0xff
    and        $v0,$v0,$at
    sll        $at,$t0,0x8
    or         $v0,$v0,$at
    jr         $ra
    nop

glabel spl7
    mfc0       $v0,c0_sr
    li         $t1,24
    lw         $t0,-23840($zero)
    slt        $at,$t0,$t1
    beqz       $at, .L0000b3f0
    nop
    lui        $v1,0x1
    ori        $v1,$v1,0x85
    and        $v1,$v1,$v0
    li         $at,-2
    and        $t2,$v0,$at
    mtc0       $t2,c0_sr
    ld         $t0,-23880($t1)
    lui        $t2,0xb400
    ori        $t2,$t2,0x18
    sd         $t0,0($t2)
    lw         $t0,-23840($zero)
    lui        $at,0xffff
    ori        $at,$at,0xff
    and        $v0,$v0,$at
    sll        $at,$t0,0x8
    or         $v0,$v0,$at
    sw         $t1,-23840($zero)
    jr         $ra
    mtc0       $v1,c0_sr
.L0000b3f0:
    lw         $t0,-23840($zero)
    lui        $at,0xffff
    ori        $at,$at,0xff
    and        $v0,$v0,$at
    sll        $at,$t0,0x8
    or         $v0,$v0,$at
    jr         $ra
    nop

glabel splecc
    mfc0       $v0,c0_sr
    li         $v1,4
    and        $v1,$v1,$v0
    lui        $at,0x1
    ori        $at,$at,0x81
    or         $v1,$v1,$at
    li         $t0,32
    lw         $t0,-23840($zero)
    lui        $at,0xffff
    ori        $at,$at,0xff
    and        $v0,$v0,$at
    sll        $at,$t0,0x8
    or         $v0,$v0,$at
    sw         $t0,-23840($zero)
    jr         $ra
    mtc0       $v1,c0_sr

glabel splx
    mfc0       $v0,c0_sr
    lui        $v1,0x1
    ori        $v1,$v1,0x84
    and        $v1,$v1,$v0
    andi       $t0,$a0,0xff00
    srl        $t0,$t0,0x8
    lui        $at,0xffff
    ori        $at,$at,0xff
    and        $a0,$a0,$at
    lui        $t1,0x0
    addiu      $t1,$t1,3120
    addu       $t1,$t1,$t0
    ld         $t1,0($t1)
    or         $a0,$a0,$t1
    or         $a0,$a0,$v1
    li         $at,-2
    and        $t2,$a0,$at
    mtc0       $t2,c0_sr
    ld         $t1,-23880($t0)
    lui        $t2,0xb400
    ori        $t2,$t2,0x18
    sd         $t1,0($t2)
    sw         $t0,-23840($zero)
    jr         $ra
    mtc0       $a0,c0_sr

glabel splint
    mfc0       $v0,c0_sr
    lui        $v1,0x1
    ori        $v1,$v1,0x84
    and        $v1,$v1,$v0
    ori        $v1,$v1,0x1
    ld         $t0,-23880($a0)
    lui        $t2,0xb400
    ori        $t2,$t2,0x18
    sd         $t0,0($t2)
    lw         $t0,-23840($zero)
    lui        $at,0xffff
    ori        $at,$at,0xff
    and        $v0,$v0,$at
    sll        $at,$t0,0x8
    or         $v0,$v0,$at
    sw         $a0,-23840($zero)
    jr         $ra
    mtc0       $v1,c0_sr

glabel isspl0
    li         $v1,0x8701
    and        $a0,$a0,$v1
    bne        $a0, $v1, .L0000b514
    nop
    jr         $ra
    li         $v0,1
.L0000b514:
    jr         $ra
    li         $v0,0

glabel allowintrs
    jr         $ra
    nop

glabel delay_for_intr
    j          __sysad_wbflush
    nop
    lw         $at,-32596($gp)
    lui        $a3,0x0
    beqz       $at, .L0000b58c
    addiu      $a3,$a3,0
    lui        $v0,0x0
    sw         $zero,-32596($gp)
    sw         $a3,-32640($gp)
    addiu      $v0,$v0,0
    sw         $v0,-32620($gp)
    lui        $v1,0x0
    lui        $a0,0x0
    addiu      $v1,$v1,0
    sw         $v1,-32624($gp)
    lui        $a1,0x0
    addiu      $a0,$a0,0
    sw         $a0,-32628($gp)
    lui        $a2,0x0
    addiu      $a1,$a1,0
    sw         $a1,-32632($gp)
    lui        $a4,0x0
    addiu      $a2,$a2,0
    sw         $a2,-32636($gp)
    addiu      $a4,$a4,0
    sw         $a4,-32616($gp)
.L0000b58c:
    jr         $ra
    nop

glabel startrtclock
    lw         $at,-32596($gp)
    addiu      $sp,$sp,-16
    beqz       $at, .L0000b5ac
    sd         $ra,0($sp)
    jal        .text
    nop
.L0000b5ac:
    lw         $v0,-32640($gp)
    jalr       $v0
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel stopclocks
    lw         $at,-32596($gp)
    addiu      $sp,$sp,-16
    beqz       $at, .L0000b5dc
    sd         $ra,0($sp)
    jal        .text
    nop
.L0000b5dc:
    lw         $v0,-32636($gp)
    jalr       $v0
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel startkgclock
    lw         $at,-32596($gp)
    addiu      $sp,$sp,-16
    beqz       $at, .L0000b60c
    sd         $ra,0($sp)
    jal        .text
    nop
.L0000b60c:
    lw         $v0,-32632($gp)
    jalr       $v0
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel slowkgclock
    lw         $at,-32596($gp)
    addiu      $sp,$sp,-16
    beqz       $at, .L0000b63c
    sd         $ra,0($sp)
    jal        .text
    nop
.L0000b63c:
    lw         $v0,-32628($gp)
    jalr       $v0
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel r4kcount_intr
    ld         $at,-24320($zero)
    addiu      $sp,$sp,-16
    andi       $at,$at,0x20
    sd         $s8,0($sp)
    move       $s8,$a0
    bnez       $at, .L0000b6d8
    sd         $ra,8($sp)
    lw         $v0,-32596($gp)
.L0000b674:
    beqz       $v0, .L0000b688
    lw         $a0,0($gp)
    jal        .text
    nop
    lw         $a0,0($gp)
.L0000b688:
    addiu      $v1,$a0,1
    beqz       $a0, .L0000b69c
    slti       $a1,$a0,200
    beqz       $a1, .L0000b6c4
    sw         $v1,0($gp)
.L0000b69c:
    lw         $a2,-32624($gp)
    jalr       $a2
    move       $a0,$s8
    ld         $a3,-24320($zero)
    andi       $a3,$a3,0x20
    bnez       $a3, .L0000b6f8
    ld         $s8,0($sp)
    ld         $ra,8($sp)
.L0000b6bc:
    jr         $ra
    addiu      $sp,$sp,16
.L0000b6c4:
    jal        power_dump
    li         $a0,1
    li         $a4,1
    b          .L0000b69c
    sw         $a4,0($gp)
.L0000b6d8:
    li         $a0,108
    move       $a1,$zero
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L0000b674
    lw         $v0,-32596($gp)
.L0000b6f8:
    li         $a1,108
    li         $a0,101
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L0000b6bc
    ld         $ra,8($sp)

glabel ackkgclock
    lw         $at,-32596($gp)
    addiu      $sp,$sp,-16
    beqz       $at, .L0000b730
    sd         $ra,0($sp)
    jal        .text
    nop
.L0000b730:
    lw         $v0,-32620($gp)
    jalr       $v0
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel ackrtclock
    lw         $at,-32596($gp)
    addiu      $sp,$sp,-16
    beqz       $at, .L0000b760
    sd         $ra,0($sp)
    jal        .text
    nop
.L0000b760:
    lw         $v0,-32616($gp)
    jalr       $v0
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel tick_maint
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        _get_timestamp
    nop
    lui        $a3,0x0
    lw         $a0,-32600($gp)
    addiu      $a2,$a3,3048
    sw         $v0,20($a2)
    lw         $v1,4($a2)
    addu       $v1,$v1,$a0
    sw         $v1,4($a2)
    lui        $v0,0x3b9a
    lw         $at,4($a2)
    ori        $v0,$v0,0xca00
    slt        $at,$at,$v0
    li         $a6,1
    bnez       $at, .L0000b7e8
    lui        $a5,0xc465
    lw         $a7,3048($a3)
    addiu      $a7,$a7,1
    sw         $a7,3048($a3)
    lw         $a4,4($a2)
    sw         $a6,0($gp)
    ori        $a5,$a5,0x3600
    addu       $a4,$a4,$a5
    sw         $a4,4($a2)
    lw         $a1,3048($a3)
    sw         $a1,0($gp)
.L0000b7e8:
    lw         $a1,-32620($gp)
    beqz       $a1, .L0000b850
    addiu      $a1,$a1,-1
    bnez       $a1, .L0000b84c
    lw         $t0,-32608($gp)
    sw         $zero,-32608($gp)
    lw         $t3,-32612($gp)
    sw         $zero,-32612($gp)
    lw         $a3,0($gp)
    lw         $a1,0($gp)
    li         $a6,100
    lw         $t2,-32604($gp)
    negu       $a4,$a3
    lui        $t1,0x98
    sw         $t3,-32620($gp)
    slt        $t3,$a1,$a4
    ori        $a5,$t1,0x9680
    sw         $t0,-32616($gp)
    slt        $t9,$a3,$a1
    addiu      $t2,$t2,1
    beqz       $t3, .L0000b864
    sw         $t2,-32604($gp)
    move       $a1,$a4
    b          .L0000b874
    sw         $a4,0($gp)
.L0000b84c:
    sw         $a1,-32620($gp)
.L0000b850:
    ld         $ra,0($sp)
    lw         $t8,20($a2)
    addiu      $sp,$sp,16
    jr         $ra
    sw         $t8,16($a2)
.L0000b864:
    beqz       $t9, .L0000b874
    nop
    move       $a1,$a3
    sw         $a3,0($gp)
.L0000b874:
    div        $zero,$a1,$a6
    mfhi       $a3
    mflo       $a7
    bltz       $a3, .L0000b89c
    move       $a4,$a7
    sw         $a3,-32660($gp)
.L0000b88c:
    addu       $ra,$t0,$a4
    addu       $ra,$ra,$a5
    b          .L0000b850
    sw         $ra,-32600($gp)
.L0000b89c:
    addiu      $a4,$a7,-1
    addiu      $at,$a3,100
    b          .L0000b88c
    sw         $at,-32660($gp)

glabel onesec_maint
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        update_ust_i
    nop
    jal        tlb_onesec_actions
    nop
    lw         $at,0($gp)
    sra        $v0,$at,0x1f
    xor        $at,$at,$v0
    subu       $at,$at,$v0
    andi       $at,$at,0x1f
    xor        $at,$at,$v0
    subu       $at,$at,$v0
    bnez       $at, .L0000b918
    lw         $v0,0($gp)
    lw         $a2,-32620($gp)
    lw         $a4,0($gp)
    beqz       $v0, .L0000b918
    lw         $a1,0($gp)
    lw         $a3,0($gp)
    slt        $v1,$a3,$a4
    beqz       $v1, .L0000b910
    slt        $a0,$a1,$a3
    beqz       $a2, .L0000b954
    nop
.L0000b910:
    bnez       $a0, .L0000b93c
    lui        $a3,0xa
.L0000b918:
    lw         $a3,-32660($gp)
.L0000b91c:
    lui        $a2,0x0
    ld         $ra,0($sp)
    addiu      $a2,$a2,3048
    lw         $a1,4($a2)
    addiu      $sp,$sp,16
    addu       $a1,$a1,$a3
    jr         $ra
    sw         $a1,4($a2)
.L0000b93c:
    ori        $a3,$a3,0xfc80
    addu       $a3,$a4,$a3
    jal        wtodc
    sw         $a3,0($gp)
    b          .L0000b91c
    lw         $a3,-32660($gp)
.L0000b954:
    jal        chktimedrift
    nop
    b          .L0000b91c
    lw         $a3,-32660($gp)

glabel fastick_maint
    ld         $at,-24320($zero)
    li         $v0,1
    sb         $v0,-24510($zero)
    addiu      $sp,$sp,-16
    andi       $at,$at,0x20
    sd         $s0,0($sp)
    move       $s0,$a0
    bnez       $at, .L0000baac
    sd         $ra,8($sp)
.L0000b988:
    jal        ackkgclock
    nop
    lw         $a0,0($gp)
    beqz       $a0, .L0000b9a4
    nop
    jalr       $a0
    nop
.L0000b9a4:
    lw         $a0,0($gp)
    beqz       $a0, .L0000b9b8
    nop
    jalr       $a0
    nop
.L0000b9b8:
    lw         $a0,0($gp)
    beqz       $a0, .L0000b9cc
    nop
    jalr       $a0
    nop
.L0000b9cc:
    lw         $a0,0($gp)
    beqz       $a0, .L0000b9e0
    nop
    jalr       $a0
    nop
.L0000b9e0:
    lw         $a0,0($gp)
    beqz       $a0, .L0000b9f8
    lw         $a2,0($gp)
    jalr       $a0
    nop
    lw         $a2,0($gp)
.L0000b9f8:
    lw         $v0,16($a2)
    beqz       $v0, .L0000ba4c
    nop
    lw         $v1,-24520($zero)
    andi       $v1,$v1,0x8
    beqz       $v1, .L0000ba4c
    nop
    jal        nested_spinlock
    addiu      $a0,$a2,4
    lw         $a2,0($gp)
    lw         $a0,16($a2)
    beqz       $a0, .L0000ba44
    nop
    ld         $a1,0($a0)
    li         $a2,-1
    daddu      $a1,$a1,$a2
    sd         $a1,0($a0)
    blez       $a1, .L0000ba94
    lw         $a2,0($gp)
.L0000ba44:
    jal        nested_spinunlock
    addiu      $a0,$a2,4
.L0000ba4c:
    jal        fast_user_prof
    move       $a0,$s0
    lw         $a3,-23904($zero)
    beqz       $a3, .L0000ba74
    nop
    ld         $a3,248($s0)
    lw         $a2,244($s0)
    lw         $a1,228($s0)
    jal        prfintr
    lw         $a0,292($s0)
.L0000ba74:
    ld         $a4,-24320($zero)
    andi       $a4,$a4,0x20
    bnez       $a4, .L0000bacc
    ld         $ra,8($sp)
.L0000ba84:
    sb         $zero,-24510($zero)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L0000ba94:
    jal        nested_spinunlock
    addiu      $a0,$a2,4
    jal        fast_timepoke
    nop
    b          .L0000ba4c
    nop
.L0000baac:
    li         $a0,110
    move       $a1,$zero
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L0000b988
    nop
.L0000bacc:
    li         $a1,110
    li         $a0,101
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L0000ba84
    ld         $ra,8($sp)

glabel tick_actions
    addiu      $sp,$sp,-32
    sd         $s8,0($sp)
    sd         $ra,8($sp)
    jal        splprof
    lw         $s8,0($gp)
    lw         $a0,16($s8)
    beqz       $a0, .L0000bb20
    li         $v1,-1
    ld         $at,0($a0)
    daddu      $at,$at,$v1
    sd         $v0,16($sp)
    blez       $at, .L0000bb40
    sd         $at,0($a0)
.L0000bb20:
    ld         $s8,0($sp)
    jal        splx
    move       $a0,$v0
    jal        tlb_tick_actions
    nop
    ld         $ra,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000bb40:
    jal        timepoke
    nop
    b          .L0000bb20
    ld         $v0,16($sp)

glabel timeout_get_queuehead
    li         $t0,4
    li         $v0,4
    lui        $a6,0xff
    li         $t3,1
    lui        $t2,0x100
    ori        $t8,$a6,0xffff
    beq        $a0, $t3, .L0000bbf8
    nor        $a7,$t2,$zero
    beq        $a0, $v0, .L0000bbfc
    lw         $v0,0($gp)
    lw         $v1,12($a1)
    lw         $v0,0($gp)
    srl        $v1,$v1,0x19
    sll        $v1,$v1,0x7
    addu       $v0,$v0,$v1
    addiu      $v0,$v0,8
.L0000bb90:
    lui        $a5,0xff00
    lw         $t1,12($v0)
    and        $t9,$t8,$t1
    addiu      $t9,$t9,1
    and        $t1,$a5,$t1
    and        $t9,$t8,$t9
    or         $t1,$t1,$t9
    and        $a4,$t8,$t1
    beqz       $a4, .L0000bc0c
    sw         $t1,12($v0)
.L0000bbb8:
    lw         $a6,12($a1)
    and        $a6,$a5,$a6
    or         $a6,$a4,$a6
    beq        $a0, $t3, .L0000bc04
    sw         $a6,12($a1)
    beq        $a0, $t0, .L0000bc04
    move       $a0,$zero
.L0000bbd4:
    ld         $a4,0($a1)
    andi       $t1,$a0,0x1
    and        $t0,$a6,$a7
    sll        $t1,$t1,0x18
    or         $t0,$t0,$t1
    blez       $a4, .L0000bc28
    sw         $t0,12($a1)
    jr         $ra
    nop
.L0000bbf8:
    lw         $v0,0($gp)
.L0000bbfc:
    b          .L0000bb90
    addiu      $v0,$v0,8
.L0000bc04:
    b          .L0000bbd4
    li         $a0,1
.L0000bc0c:
    addiu      $a6,$a4,1
    and        $a4,$a5,$t1
    and        $a6,$t8,$a6
    or         $a4,$a4,$a6
    sw         $a4,12($v0)
    b          .L0000bbb8
    and        $a4,$t8,$a4
.L0000bc28:
    li         $a7,-100
    xor        $a7,$a4,$a7
    sltu       $a7,$zero,$a7
    jr         $ra
    sd         $a7,0($a1)

glabel chktimeout_tick
    lw         $a7,0($gp)
    addiu      $sp,$sp,-64
    sd         $ra,32($sp)
    sd         $s0,16($sp)
    sd         $s1,8($sp)
    sd         $s2,48($sp)
    li         $v0,4
    sd         $s3,40($sp)
    li         $at,1
    move       $s3,$a1
    move       $s2,$a2
    sd         $s4,24($sp)
    move       $s4,$a3
    beq        $a0, $at, .L0000bcf0
    ld         $a6,0($sp)
    beq        $a0, $v0, .L0000bcf4
    move       $a1,$s3
    blez       $a7, .L0000bce8
    move       $s1,$zero
    b          .L0000bca0
    move       $s0,$zero
.L0000bc90:
    addiu      $s1,$s1,1
    slt        $v0,$s1,$a0
    addiu      $s0,$s0,128
    beqz       $v0, .L0000bcc4
.L0000bca0:
    move       $a1,$s3
    lw         $a0,0($gp)
    move       $a2,$s2
    move       $a3,$s4
    jal        do_chktimeout_tick
    addu       $a0,$a0,$s0
    lw         $a0,0($gp)
    beqz       $v0, .L0000bc90
    move       $a6,$v0
.L0000bcc4:
    ld         $s0,16($sp)
.L0000bcc8:
    ld         $s1,8($sp)
    ld         $ra,32($sp)
    ld         $s2,48($sp)
    move       $v0,$a6
    ld         $s3,40($sp)
    ld         $s4,24($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0000bce8:
    b          .L0000bcc8
    ld         $s0,16($sp)
.L0000bcf0:
    move       $a1,$s3
.L0000bcf4:
    move       $a2,$s2
    lw         $a0,0($gp)
    jal        do_chktimeout_tick
    move       $a3,$s4
    b          .L0000bcc4
    move       $a6,$v0

glabel fast_timeout
    addiu      $sp,$sp,-80
    sd         $a7,72($sp)
    sd         $a6,64($sp)
    sd         $a5,56($sp)
    sd         $a4,48($sp)
    sd         $a3,40($sp)
    sw         $a2,36($sp)
    lw         $at,0($gp)
    sw         $a1,28($sp)
    sw         $a0,20($sp)
    beqz       $at, .L0000bd78
    sd         $ra,8($sp)
.L0000bd3c:
    jal        callout_get_pri
    nop
    move       $a4,$v0
    lw         $a1,20($sp)
    move       $a0,$zero
    lw         $a2,28($sp)
    li         $a5,1
    lw         $a3,36($sp)
    jal        dotimeout
    addiu      $a6,$sp,40
    beqz       $v0, .L0000bd88
    sd         $v0,0($sp)
.L0000bd6c:
    ld         $ra,8($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L0000bd78:
    jal        enable_fastclock
    nop
    b          .L0000bd3c
    nop
.L0000bd88:
    move       $a0,$zero
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,3200
    b          .L0000bd6c
    ld         $v0,0($sp)

glabel fast_timeout_nothrd
    addiu      $sp,$sp,-80
    sd         $a7,72($sp)
    sd         $a6,64($sp)
    sd         $a5,56($sp)
    sd         $a4,48($sp)
    sd         $a3,40($sp)
    sw         $a2,36($sp)
    lw         $at,0($gp)
    sw         $a1,28($sp)
    move       $t3,$a0
    move       $t2,$a1
    sw         $a0,20($sp)
    move       $v0,$a2
    beqz       $at, .L0000be10
    sd         $ra,8($sp)
.L0000bddc:
    move       $a0,$zero
    move       $a1,$t3
    move       $a2,$t2
    move       $a3,$v0
    move       $a4,$zero
    li         $a5,4
    jal        dotimeout
    addiu      $a6,$sp,40
    beqz       $v0, .L0000be28
    sd         $v0,0($sp)
.L0000be04:
    ld         $ra,8($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L0000be10:
    jal        enable_fastclock
    nop
    lw         $t2,28($sp)
    lw         $t3,20($sp)
    b          .L0000bddc
    lw         $v0,36($sp)
.L0000be28:
    move       $a0,$zero
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,3200
    b          .L0000be04
    ld         $v0,0($sp)

glabel set_timer_intr
    addiu      $sp,$sp,-16
    li         $a3,1
    bnez       $a1, .L0000be6c
    sd         $ra,0($sp)
    li         $a1,4
    beq        $a2, $a3, .L0000be7c
    nop
    beq        $a2, $a1, .L0000be7c
    nop
    jal        timepoke
    nop
.L0000be6c:
    ld         $ra,0($sp)
.L0000be70:
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16
.L0000be7c:
    jal        fast_timepoke
    nop
    b          .L0000be70
    ld         $ra,0($sp)

glabel callout_time_to_hz
    blez       $a0, .L0000bec4
    li         $v0,1
    beqz       $a2, .L0000becc
    lw         $a1,0($gp)
    li         $a2,100
    div        $zero,$a1,$a2
    mflo       $v1
    ddiv       $zero,$a0,$v1
    teq        $v1,$zero,0x7
    mflo       $v0
    nop
    sll        $v0,$v0,0x0
.L0000bec4:
    jr         $ra
    nop
.L0000becc:
    sll        $v0,$a0,0x0
    jr         $ra
    nop

glabel timein_body
    addiu      $sp,$sp,-48
    addiu      $at,$a0,72
    sd         $at,0($sp)
    sd         $s0,24($sp)
    sd         $s1,8($sp)
    move       $s1,$a0
    sd         $s2,16($sp)
    addiu      $s2,$a0,56
    b          .L0000bf64
    sd         $ra,32($sp)
.L0000bf00:
    lw         $a1,8($s0)
    beqz       $a1, .L0000bf1c
    sw         $a1,16($s1)
    ld         $a0,0($a1)
    ld         $v1,0($s0)
    daddu      $v1,$v1,$a0
    sd         $v1,0($a1)
.L0000bf1c:
    lh         $a1,42($s0)
    andi       $a1,$a1,0x2
    beqz       $a1, .L0000bfa4
    move       $a0,$s1
    lw         $a2,12($s0)
    li         $a3,1
    sd         $a3,56($s1)
    move       $a0,$v0
    jal        splx
    sw         $a2,68($s1)
    jal        timein_entry
    move       $a0,$s0
    li         $s0,2
    move       $a0,$s2
    jal        test_and_set_int64
    move       $a1,$zero
    beq        $v0, $s0, .L0000bfb8
    nop
.L0000bf64:
    jal        splprof
    nop
    lw         $s0,16($s1)
    beqz       $s0, .L0000bf84
    nop
    ld         $a4,0($s0)
    blez       $a4, .L0000bf00
    nop
.L0000bf84:
    jal        splx
    move       $a0,$v0
    ld         $ra,32($sp)
    ld         $s1,8($sp)
    ld         $s0,24($sp)
    ld         $s2,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0000bfa4:
    move       $a1,$s0
    jal        timein_entry_ithrd
    move       $a2,$v0
    b          .L0000bf64
    nop
.L0000bfb8:
    jal        splprof
    nop
    move       $s0,$v0
    jal        sv_broadcast
    ld         $a0,0($sp)
    jal        splx
    move       $a0,$s0
    b          .L0000bf64
    nop

glabel timein
    ld         $at,-24320($zero)
    andi       $at,$at,0x20
    addiu      $sp,$sp,-16
    bnez       $at, .L0000c090
    sd         $ra,0($sp)
.L0000bff0:
    jal        siroff
    li         $a0,256
    lw         $v0,-24008($zero)
    andi       $v1,$v0,0x2
    beqz       $v1, .L0000c01c
    li         $a0,-3
    and        $a0,$v0,$a0
    sw         $a0,-24008($zero)
    jal        timein_body
    lw         $a0,0($gp)
    lw         $v0,-24008($zero)
.L0000c01c:
    andi       $a1,$v0,0x1
    beqz       $a1, .L0000c038
    li         $a2,-2
    and        $a2,$v0,$a2
    sw         $a2,-24008($zero)
    jal        timein_body
    lw         $a0,0($gp)
.L0000c038:
    jal        splecc
    nop
    lw         $a3,0($gp)
    beqz       $a3, .L0000c058
    nop
    lw         $a4,0($gp)
    beqz       $a4, .L0000c078
    nop
.L0000c058:
    jal        splxecc
    move       $a0,$v0
.L0000c060:
    ld         $a5,-24320($zero)
    andi       $a5,$a5,0x20
    bnez       $a5, .L0000c0b0
    ld         $ra,0($sp)
.L0000c070:
    jr         $ra
    addiu      $sp,$sp,16
.L0000c078:
    jal        splxecc
    move       $a0,$v0
    jal        ecc_cleanup
    nop
    b          .L0000c060
    nop
.L0000c090:
    li         $a0,109
    move       $a1,$zero
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L0000bff0
    nop
.L0000c0b0:
    li         $a1,109
    li         $a0,101
    move       $a2,$zero
    move       $a3,$zero
    jal        log_tstamp_event
    move       $a4,$zero
    b          .L0000c070
    ld         $ra,0($sp)

glabel settimetrim
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $ra,8($sp)
    jal        cap_able
    lui        $a0,0x800
    beqz       $v0, .L0000c150
    lw         $a0,0($gp)
    negu       $at,$a0
    slt        $at,$s0,$at
    slt        $v1,$a0,$s0
    bnez       $at, .L0000c10c
    li         $v0,22
    beqz       $v1, .L0000c11c
    nop
.L0000c10c:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L0000c11c:
    jal        splhi
    nop
    lw         $a1,-32620($gp)
    move       $a0,$v0
    sw         $s0,0($gp)
    beqz       $a1, .L0000c148
    li         $a3,1
.L0000c138:
    jal        splx
    nop
    b          .L0000c10c
    move       $v0,$zero
.L0000c148:
    b          .L0000c138
    sw         $a3,-32620($gp)
.L0000c150:
    b          .L0000c10c
    li         $v0,1

glabel gettimetrim
    jr         $ra
    lw         $v0,0($gp)

glabel doadjtime
    addiu      $sp,$sp,-48
    sd         $s1,8($sp)
    sd         $ra,16($sp)
    li         $a3,400
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $a0, .L0000c280
    sd         $s2,24($sp)
    slti       $v0,$a0,0
    bltz       $a0, .L0000c258
.L0000c188:
    slti       $at,$s0,1001
    li         $s2,18000
    li         $a4,1
    beqz       $at, .L0000c224
    li         $a0,18000
    move       $s2,$a4
.L0000c1a0:
    bnez       $v0, .L0000c260
    nop
.L0000c1a8:
    jal        splhi
    nop
    lw         $a3,-32612($gp)
    li         $a5,1
    move       $a0,$v0
    beqz       $a3, .L0000c268
    lw         $a4,-32608($gp)
    mult       $a4,$a3
    mflo       $s1
.L0000c1d4:
    sll        $v0,$s0,0x5
    subu       $v0,$v0,$s0
    sll        $v0,$v0,0x2
    sw         $s2,-32612($gp)
    addu       $v0,$v0,$s0
    sw         $a5,-32620($gp)
    sll        $v0,$v0,0x3
    jal        splx
    sw         $v0,-32608($gp)
    li         $v1,1000
    div        $zero,$s1,$v1
    mflo       $v0
    ld         $ra,16($sp)
.L0000c210:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    ld         $s2,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0000c224:
    lui        $a1,0xa
    ori        $a1,$a1,0xfc80
    slt        $a1,$a1,$s0
    bnez       $a1, .L0000c248
    nop
    div        $zero,$s0,$a0
    mflo       $s0
    b          .L0000c1a0
    nop
.L0000c248:
    div        $zero,$s0,$a3
    mflo       $s2
    b          .L0000c1a0
    li         $s0,400
.L0000c258:
    b          .L0000c188
    negu       $s0,$a0
.L0000c260:
    b          .L0000c1a8
    negu       $s0,$s0
.L0000c268:
    lw         $a3,-32616($gp)
    lw         $a2,-32620($gp)
    mult       $a2,$a3
    mflo       $s1
    b          .L0000c1d4
    nop
.L0000c280:
    jal        splhi
    nop
    lw         $a3,-32612($gp)
    move       $a0,$v0
    beqz       $a3, .L0000c2c4
    lw         $a4,-32608($gp)
    mult       $a4,$a3
    mflo       $s1
.L0000c2a8:
    jal        splx
    nop
    li         $a4,1000
    div        $zero,$s1,$a4
    mflo       $v0
    b          .L0000c210
    ld         $ra,16($sp)
.L0000c2c4:
    lw         $a5,-32620($gp)
    lw         $a6,-32616($gp)
    mult       $a5,$a6
    mflo       $s1
    b          .L0000c2a8
    nop

glabel nanotime_syscall
    addiu      $sp,$sp,-64
    sd         $s8,56($sp)
    sd         $ra,8($sp)
    sd         $s4,0($sp)
    move       $s4,$a0
    jal        spl7
    sd         $s0,40($sp)
    sd         $s1,32($sp)
    sd         $s3,24($sp)
    lui        $s0,0x0
    move       $s8,$v0
    sd         $s2,16($sp)
    addiu      $s0,$s0,3048
.L0000c310:
    lw         $s2,16($s0)
    lw         $s1,0($s0)
    lw         $s3,4($s0)
    lw         $t8,20($s0)
    bne        $t8, $s2, .L0000c310
    nop
    jal        _get_timestamp
    sd         $s5,48($sp)
    move       $s5,$v0
    jal        nested_spinlock
    addiu      $a0,$gp,0
    lw         $at,0($gp)
    subu       $a6,$s5,$s2
    multu      $at,$a6
    lw         $a0,0($gp)
    mflo       $ra
    divu       $zero,$ra,$a0
    lw         $t9,-32620($gp)
    lui        $t0,0x3b9a
    ori        $t0,$t0,0xca00
    lw         $v0,0($gp)
    mflo       $a3
    beqz       $t9, .L0000c3b0
    teq        $a0,$zero,0x7
    lw         $a5,-32616($gp)
    multu      $a5,$a6
    li         $a4,100
    mflo       $a2
    divu       $zero,$a0,$a4
    mflo       $a1
    divu       $zero,$a2,$a1
    mflo       $v1
    teq        $a1,$zero,0x7
    addu       $a3,$a3,$v1
.L0000c3b0:
    multu      $v0,$a6
    mflo       $t1
    addu       $t1,$s3,$t1
    addu       $t1,$a3,$t1
    divu       $zero,$t1,$t0
    teq        $t0,$zero,0x7
    lw         $t0,8($s0)
    mflo       $a7
    addu       $a7,$s1,$a7
    mfhi       $a5
    sw         $a5,4($s4)
    slt        $t0,$a7,$t0
    sw         $a7,0($s4)
    lw         $a0,0($gp)
    bnez       $t0, .L0000c40c
    move       $a4,$a7
    lw         $t2,8($s0)
    bne        $t2, $a7, .L0000c458
    slt        $t8,$a0,$a7
    lw         $t3,12($s0)
    slt        $t3,$a5,$t3
    beqz       $t3, .L0000c458
    slt        $t8,$a0,$a7
.L0000c40c:
    lw         $a4,8($s0)
    lw         $a5,12($s0)
    sw         $a5,4($s4)
    sw         $a4,0($s4)
.L0000c41c:
    ld         $s5,48($sp)
.L0000c420:
    ld         $s1,32($sp)
    ld         $s3,24($sp)
    ld         $s2,16($sp)
    sw         $a4,8($s0)
    sw         $a5,12($s0)
    jal        splx
    move       $a0,$s8
    ld         $ra,8($sp)
    ld         $s8,56($sp)
    ld         $s0,40($sp)
    ld         $s4,0($sp)
    jr         $ra
    addiu      $sp,$sp,64
    slt        $t8,$a0,$a7
.L0000c458:
    beqz       $t8, .L0000c420
    ld         $s5,48($sp)
    sw         $a7,0($gp)
    lw         $a5,4($s4)
    b          .L0000c41c
    lw         $a4,0($s4)

glabel nanotime
    addiu      $sp,$sp,-32
    sd         $s0,24($sp)
    sd         $s1,16($sp)
    sd         $s5,8($sp)
    sd         $ra,0($sp)
    jal        spl7
    move       $s5,$a0
    lui        $a3,0x0
    move       $a0,$v0
    addiu      $a3,$a3,3048
.L0000c498:
    lw         $a5,16($a3)
    lw         $s0,0($a3)
    lw         $s1,4($a3)
    lw         $a4,20($a3)
    bne        $a4, $a5, .L0000c498
    nop
    jal        splx
    nop
    sw         $s0,0($s5)
    ld         $s0,24($sp)
    ld         $ra,0($sp)
    sw         $s1,4($s5)
    ld         $s1,16($sp)
    ld         $s5,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel microtime
    addiu      $sp,$sp,-32
    sd         $s8,16($sp)
    move       $s8,$a0
    sd         $ra,8($sp)
    jal        nanotime_syscall
    addiu      $a0,$sp,0
    lw         $a0,0($sp)
    sw         $a0,0($s8)
    lw         $v0,4($sp)
    li         $v1,1000
    div        $zero,$v0,$v1
    ld         $ra,8($sp)
    mflo       $at
    sw         $at,4($s8)
    ld         $s8,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel settime
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s8,16($sp)
    sd         $ra,8($sp)
    jal        splhi
    move       $s8,$a1
    sd         $v0,24($sp)
    jal        _get_timestamp
    sw         $s0,0($gp)
    sw         $zero,-32612($gp)
    sw         $zero,-32608($gp)
    sll        $a2,$s8,0x5
    sw         $zero,-32620($gp)
    lui        $a1,0x0
    subu       $a2,$a2,$s8
    sw         $zero,-32616($gp)
    addiu      $v1,$a1,3048
    sll        $a2,$a2,0x2
    sw         $v0,20($v1)
    addu       $a2,$a2,$s8
    sll        $a2,$a2,0x3
    sw         $a2,4($v1)
    sw         $s0,3048($a1)
    lw         $a1,3048($a1)
    sw         $a1,8($v1)
    lw         $a0,4($v1)
    sw         $a0,12($v1)
    ld         $a0,24($sp)
    lw         $at,20($v1)
    jal        splx
    sw         $at,16($v1)
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    ld         $s8,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel clkset
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        inittodr
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel startprfclk
    lw         $at,-23904($zero)
    li         $v0,1
    addiu      $at,$at,1
    addiu      $sp,$sp,-16
    bne        $at, $v0, .L0000c600
    sw         $at,-23904($zero)
    lw         $v0,0($gp)
    beqz       $v0, .L0000c608
    sd         $ra,0($sp)
.L0000c5f0:
    lw         $v1,-24520($zero)
    andi       $v1,$v1,0x8
    beqz       $v1, .L0000c618
    sd         $ra,0($sp)
.L0000c600:
    jr         $ra
    addiu      $sp,$sp,16
.L0000c608:
    jal        enable_fastclock
    nop
    b          .L0000c5f0
    ld         $ra,0($sp)
.L0000c618:
    jal        startkgclock
    nop
    b          .L0000c600
    ld         $ra,0($sp)

glabel stopprfclk
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        spl7
    nop
    lw         $a0,-23904($zero)
    beqz       $a0, .L0000c65c
    addiu      $a0,$a0,-1
    bnez       $a0, .L0000c65c
    sw         $a0,-23904($zero)
    lw         $a1,-24520($zero)
    andi       $a1,$a1,0x8
    beqz       $a1, .L0000c670
    sd         $v0,8($sp)
.L0000c65c:
    jal        splx
    move       $a0,$v0
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L0000c670:
    jal        slowkgclock
    nop
    b          .L0000c65c
    ld         $v0,8($sp)

glabel enable_fastclock
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        spl7
    sd         $s8,8($sp)
    li         $a1,1
    sw         $a1,0($gp)
    lui        $a0,0x0
    lw         $at,-24520($zero)
    move       $s8,$v0
    addiu      $a0,$a0,0
    ori        $at,$at,0x8
    jal        setkgvector
    sw         $at,-24520($zero)
    jal        startkgclock
    nop
    jal        splx
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel query_cyclecntr_size
    jr         $ra
    li         $v0,32

glabel query_fasttimer
    lw         $at,0($gp)
    lui        $v0,0x3b9a
    ori        $v0,$v0,0xca00
    div        $zero,$v0,$at
    mflo       $v0
    jr         $ra
    teq        $at,$zero,0x7

glabel timepoke
    addiu      $sp,$sp,-16
    lw         $at,-24008($zero)
    li         $a0,256
    sd         $ra,0($sp)
    ori        $at,$at,0x1
    jal        siron
    sw         $at,-24008($zero)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel fast_timepoke
    addiu      $sp,$sp,-16
    lw         $at,-24008($zero)
    li         $a0,256
    sd         $ra,0($sp)
    ori        $at,$at,0x2
    jal        siron
    sw         $at,-24008($zero)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel inithrestime
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        _get_timestamp
    nop
    ld         $ra,0($sp)
    lui        $v1,0x0
    lw         $a0,0($gp)
    addiu      $v1,$v1,3048
    sw         $v0,20($v1)
    lw         $at,20($v1)
    beqz       $a0, .L0000c780
    sw         $at,16($v1)
.L0000c778:
    jr         $ra
    addiu      $sp,$sp,16
.L0000c780:
    lw         $a1,0($gp)
    lui        $a2,0xf
    ori        $a2,$a2,0x4240
    div        $zero,$a2,$a1
    teq        $a1,$zero,0x7
    mflo       $a0
    b          .L0000c778
    sw         $a0,0($gp)

glabel atomicAddInt
.L0000c7a0:
    ll         $t2,0($a0)
    addu       $t1,$t2,$a1
    sc         $t1,0($a0)
    beqz       $t1, .L0000c7a0
    addu       $v0,$t2,$a1
    jr         $ra
    nop

glabel atomicSetCpumask
    lw         $a1,0($a1)
.L0000c7c0:
    ll         $v0,0($a0)
    or         $t2,$v0,$a1
    sc         $t2,0($a0)
    beqz       $t2, .L0000c7c0
    nop
    jr         $ra
    nop

glabel atomicClearInt
    nor        $a1,$a1,$zero
.L0000c7e0:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    sc         $t2,0($a0)
    beqz       $t2, .L0000c7e0
    nop
    jr         $ra
    nop

glabel atomicClearInt64
    nor        $a1,$a1,$zero
.L0000c800:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    sc         $t2,0($a0)
    beqz       $t2, .L0000c800
    nop
    jr         $ra
    nop

glabel atomicFieldAssignLong
    nor        $a1,$a1,$zero
.L0000c820:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    or         $t2,$t2,$a2
    sc         $t2,0($a0)
    beqz       $t2, .L0000c820
    nop
    jr         $ra
    nop

glabel atomicFieldAssignUint
    nor        $a1,$a1,$zero
.L0000c844:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    or         $t2,$t2,$a2
    sc         $t2,0($a0)
    beqz       $t2, .L0000c844
    nop
    jr         $ra
    nop

glabel atomicClearCpumask
    lw         $a1,0($a1)
    nor        $a1,$a1,$zero
.L0000c86c:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    sc         $t2,0($a0)
    beqz       $t2, .L0000c86c
    nop
    jr         $ra
    nop

glabel atomicAddInt64
.L0000c888:
    lld        $t2,0($a0)
    daddu      $t1,$t2,$a1
    scd        $t1,0($a0)
    beqz       $t1, .L0000c888
    daddu      $v0,$t2,$a1
    jr         $ra
    nop

glabel atomicPush
.L0000c8a4:
    lw         $t0,0($a0)
    sw         $t0,0($a2)
    ll         $v0,0($a0)
    bne        $v0, $t0, .L0000c8a4
    move       $t2,$a1
    sc         $t2,0($a0)
    beqz       $t2, .L0000c8a4
    nop
    jr         $ra
    nop

glabel atomicPull
.L0000c8cc:
    ll         $v0,0($a0)
    move       $t0,$zero
    sc         $t0,0($a0)
    beqz       $t0, .L0000c8cc
    nop
    jr         $ra
    nop

glabel atomicIncWithWrap
.L0000c8e8:
    ll         $t2,0($a0)
    addiu      $t1,$t2,1
    bne        $t1, $a1, .L0000c8fc
    nop
    move       $t1,$zero
.L0000c8fc:
    sc         $t1,0($a0)
    beqz       $t1, .L0000c8e8
    move       $v0,$t2
    jr         $ra
    nop

glabel atomicAddWithWrap
.L0000c910:
    ll         $t2,0($a0)
    addu       $t1,$t2,$a1
    slt        $at,$t1,$a2
    bnez       $at, .L0000c928
    nop
    subu       $t1,$t1,$a2
.L0000c928:
    sc         $t1,0($a0)
    beqz       $t1, .L0000c910
    move       $v0,$t2
    jr         $ra
    nop

glabel bitlock_set
.L0000c93c:
    ll         $v0,0($a0)
    or         $t2,$v0,$a2
    sc         $t2,0($a0)
    beqz       $t2, .L0000c93c
    nop
    jr         $ra
    nop

glabel bitlock_clr
    nor        $a2,$a2,$zero
.L0000c95c:
    ll         $v0,0($a0)
    and        $t2,$v0,$a2
    sc         $t2,0($a0)
    beqz       $t2, .L0000c95c
    nop
    jr         $ra
    nop

glabel bitlock_acquire
.L0000c978:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    bnez       $t2, .L0000c978
    or         $t2,$v0,$a1
    sc         $t2,0($a0)
    beqz       $t2, .L0000c978
    nop
    jr         $ra
    nop

glabel bitlock_acquire_32bit
.L0000c99c:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    bnez       $t2, .L0000c99c
    or         $t2,$v0,$a1
    sc         $t2,0($a0)
    beqz       $t2, .L0000c99c
    nop
    jr         $ra
    nop

glabel bitlock_condacq
    li         $t3,5
.L0000c9c4:
    nop
    bltz       $t3, .L0000ca0c
    addiu      $t3,$t3,-1
.L0000c9d0:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    bnez       $t2, .L0000c9f4
    or         $t2,$v0,$a1
    sc         $t2,0($a0)
    beqz       $t2, .L0000c9d0
    nop
    jr         $ra
    move       $v0,$zero
.L0000c9f4:
    li         $a5,15
.L0000c9f8:
    nop
    bgez       $a5, .L0000c9f8
    addiu      $a5,$a5,-1
    b          .L0000c9c4
    nop
.L0000ca0c:
    jr         $ra
    li         $v0,1

glabel bitlock_condacq_32bit
    li         $t3,5
.L0000ca18:
    nop
    bltz       $t3, .L0000ca60
    addiu      $t3,$t3,-1
.L0000ca24:
    ll         $v0,0($a0)
    and        $t2,$v0,$a1
    bnez       $t2, .L0000ca48
    or         $t2,$v0,$a1
    sc         $t2,0($a0)
    beqz       $t2, .L0000ca24
    nop
    jr         $ra
    move       $v0,$zero
.L0000ca48:
    li         $a5,15
.L0000ca4c:
    nop
    bgez       $a5, .L0000ca4c
    addiu      $a5,$a5,-1
    b          .L0000ca18
    nop
.L0000ca60:
    jr         $ra
    li         $v0,1

glabel mutex_set_always
.L0000ca68:
    ll         $v0,0($a0)
    move       $t0,$a1
    sc         $t0,0($a0)
    beqz       $t0, .L0000ca68
    nop
    jr         $ra
    nop

glabel test_and_set_int
.L0000ca84:
    ll         $v0,0($a0)
    move       $t2,$a1
    sc         $t2,0($a0)
    beqz       $t2, .L0000ca84
    nop
    jr         $ra
    nop

glabel test_and_set_int64
.L0000caa0:
    lld        $v0,0($a0)
    move       $t2,$a1
    scd        $t2,0($a0)
    beqz       $t2, .L0000caa0
    nop
    jr         $ra
    nop

glabel swap_int
.L0000cabc:
    ll         $v0,0($a0)
    move       $t0,$a1
    sc         $t0,0($a0)
    beqz       $t0, .L0000cabc
    nop
    jr         $ra
    nop

glabel compare_and_swap_int
.L0000cad8:
    ll         $t0,0($a0)
    bne        $t0, $a1, .L0000caf8
    move       $v0,$a2
    sc         $v0,0($a0)
    beqz       $v0, .L0000cad8
    nop
    jr         $ra
    nop
.L0000caf8:
    jr         $ra
    move       $v0,$zero

glabel compare_and_inc_int_gt_zero
.L0000cb00:
    ll         $v0,0($a0)
    blez       $v0, .L0000cb20
    addiu      $v0,$v0,1
    sc         $v0,0($a0)
    beqz       $v0, .L0000cb00
    nop
    jr         $ra
    nop
.L0000cb20:
    jr         $ra
    move       $v0,$zero

glabel compare_and_dec_int_gt
.L0000cb28:
    ll         $v0,0($a0)
    addiu      $v0,$v0,-1
    slt        $at,$v0,$a1
    bnez       $at, .L0000cb50
    nop
    sc         $v0,0($a0)
    beqz       $v0, .L0000cb28
    nop
    jr         $ra
    nop
.L0000cb50:
    jr         $ra
    move       $v0,$zero

glabel swap_int64
.L0000cb58:
    lld        $v0,0($a0)
    move       $t0,$a1
    scd        $t0,0($a0)
    beqz       $t0, .L0000cb58
    nop
    jr         $ra
    nop

glabel compare_and_swap_int64
.L0000cb74:
    lld        $t0,0($a0)
    bne        $t0, $a1, .L0000cb94
    move       $v0,$a2
    scd        $v0,0($a0)
    beqz       $v0, .L0000cb74
    nop
    jr         $ra
    nop
.L0000cb94:
    jr         $ra
    move       $v0,$zero

glabel comparegt_and_swap_int
.L0000cb9c:
    ll         $t1,0($a0)
    slt        $at,$a1,$t1
    beqz       $at, .L0000cbc0
    move       $v0,$a2
    sc         $v0,0($a0)
    beqz       $v0, .L0000cb9c
    nop
    jr         $ra
    nop
.L0000cbc0:
    jr         $ra
    move       $v0,$zero

glabel store_atomic
.L0000cbc8:
    ll         $a4,0($a0)
    sc         $a4,0($a0)
    beqz       $a4, .L0000cbc8
    nop
    jr         $ra
    nop

glabel atomicIncPort
.L0000cbe0:
    ll         $t2,0($a0)
    addiu      $t1,$t2,1
    slt        $at,$a1,$t1
    beqz       $at, .L0000cbf8
    nop
    move       $t1,$a2
.L0000cbf8:
    sc         $t1,0($a0)
    beqz       $t1, .L0000cbe0
    move       $v0,$t2
    jr         $ra
    nop

glabel startrtclock_r4000
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    jal        spl7
    nop
    sd         $v0,0($sp)
    lw         $v0,0($gp)
    li         $v1,100
    divu       $zero,$v0,$v1
    mflo       $at
    jal        get_r4k_counter
    sw         $at,0($gp)
    lw         $a0,0($gp)
    addu       $a0,$a0,$v0
    sw         $a0,0($gp)
    jal        set_r4k_compare
    sw         $a0,0($gp)
    lw         $a1,-24520($zero)
    andi       $a1,$a1,0x2
    beqz       $a1, .L0000cc64
    nop
    jal        inithrestime
    nop
.L0000cc64:
    jal        splx
    ld         $a0,0($sp)
    ld         $ra,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel stopclocks_r4000
    sw         $zero,0($gp)
    li         $at,-1
    sw         $at,0($gp)
    sw         $zero,0($gp)
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        ackrtclock
    sw         $at,0($gp)
    jal        ackkgclock
    nop
    ld         $ra,0($sp)
    sw         $zero,-32572($gp)
    jr         $ra
    addiu      $sp,$sp,16

glabel startkgclock_r4000
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    lw         $s0,0($gp)
    lw         $at,0($gp)
    slti       $a0,$s0,2501
    sd         $ra,16($sp)
    beqz       $s0, .L0000cd8c
    slti       $v0,$s0,500
    bnez       $v0, .L0000cdd4
    nop
    beqz       $a0, .L0000ce0c
    li         $a0,4
    divu       $zero,$at,$s0
    mflo       $v1
    multu      $s0,$v1
    mflo       $v0
    bne        $at, $v0, .L0000ce44
    teq        $s0,$zero,0x7
    lw         $a0,0($gp)
.L0000cd04:
    beqz       $a0, .L0000cd14
    lw         $v0,0($gp)
    beq        $s0, $v0, .L0000cd34
    lw         $a4,0($gp)
.L0000cd14:
    lui        $a2,0xf
.L0000cd18:
    ori        $a2,$a2,0x4240
    div        $zero,$a2,$v0
    teq        $v0,$zero,0x7
    mflo       $a1
    nop
    sw         $a1,0($gp)
    lw         $a4,0($gp)
.L0000cd34:
    divu       $zero,$a4,$v0
    teq        $v0,$zero,0x7
    mflo       $a3
    jal        spl7
    sw         $a3,-24004($zero)
    lw         $a7,0($gp)
    lw         $t0,0($gp)
    divu       $zero,$t0,$a7
    lw         $a6,0($gp)
    sd         $v0,8($sp)
    lw         $a0,0($gp)
    teq        $a7,$zero,0x7
    mflo       $a5
    beqz       $a6, .L0000cdb0
    sw         $a5,0($gp)
    sw         $a0,0($gp)
.L0000cd74:
    ld         $s0,0($sp)
    jal        splx
    move       $a0,$v0
    ld         $ra,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000cd8c:
    lw         $t1,0($gp)
    li         $v0,1000
    sw         $v0,0($gp)
    beqz       $t1, .L0000cd14
    li         $a0,1000
    bne        $s0, $a0, .L0000cd18
    lui        $a2,0xf
    b          .L0000cd34
    lw         $a4,0($gp)
.L0000cdb0:
    jal        get_r4k_counter
    nop
    lw         $a0,0($gp)
    addu       $a0,$a0,$v0
    sw         $a0,0($gp)
    jal        set_r4k_compare
    sw         $a0,0($gp)
    b          .L0000cd74
    ld         $v0,8($sp)
.L0000cdd4:
    li         $a0,4
    move       $a2,$s0
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,3264
    li         $a0,6
    lui        $a1,0x0
    li         $a2,500
    addiu      $a1,$a1,3264
    sw         $a2,0($gp)
    jal        cmn_err
    addiu      $a1,$a1,48
    b          .L0000cd04
    lw         $a0,0($gp)
.L0000ce0c:
    lui        $a1,0x0
    move       $a2,$s0
    addiu      $a1,$a1,3264
    jal        cmn_err
    addiu      $a1,$a1,80
    li         $a0,6
    lui        $a1,0x0
    li         $a2,2500
    addiu      $a1,$a1,3264
    sw         $a2,0($gp)
    jal        cmn_err
    addiu      $a1,$a1,48
    b          .L0000cd04
    lw         $a0,0($gp)
.L0000ce44:
    li         $a0,4
    lui        $a1,0x0
    move       $a2,$s0
    addiu      $a1,$a1,3264
    jal        cmn_err
    addiu      $a1,$a1,128
    li         $a0,6
    lui        $a1,0x0
    li         $a2,1000
    addiu      $a1,$a1,3264
    sw         $a2,0($gp)
    jal        cmn_err
    addiu      $a1,$a1,48
    b          .L0000cd04
    lw         $a0,0($gp)

glabel slowkgclock_r4000
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        spl7
    nop
    lw         $at,0($gp)
    sd         $v0,8($sp)
    sw         $zero,0($gp)
    beqz       $at, .L0000cec4
    lw         $a0,0($gp)
    sw         $a0,0($gp)
.L0000cea8:
    jal        splx
    move       $a0,$v0
    jal        ackkgclock
    sw         $zero,-24004($zero)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L0000cec4:
    jal        get_r4k_counter
    nop
    lw         $a0,0($gp)
    addu       $a0,$a0,$v0
    sw         $a0,0($gp)
    jal        set_r4k_compare
    sw         $a0,0($gp)
    b          .L0000cea8
    ld         $v0,8($sp)

glabel r4kcount_intr_r4000
    addiu      $sp,$sp,-32
    sd         $s1,8($sp)
    sd         $s0,16($sp)
    sd         $ra,0($sp)
    jal        get_cpu_irr
    move       $s0,$a0
    sra        $at,$v0,0x8
    slti       $at,$at,35
    bnez       $at, .L0000d0c4
    lw         $a5,0($gp)
.L0000cf10:
    lw         $a6,0($gp)
    sltu       $v0,$a6,$a5
    beqz       $v0, .L0000cf38
    li         $s1,1
    bnez       $a5, .L0000cf40
    move       $a6,$a5
.L0000cf28:
    jal        set_r4k_compare
    lw         $a0,0($gp)
    b          .L0000d0b4
    ld         $ra,0($sp)
.L0000cf38:
    beqz       $a6, .L0000cf28
    nop
.L0000cf40:
    b          .L0000d060
    negu       $s0,$a6
.L0000cf48:
    lw         $a5,0($gp)
.L0000cf4c:
    beqz       $a5, .L0000cfc0
    negu       $a4,$a5
    lw         $a0,0($gp)
    subu       $a3,$a7,$a0
    sltu       $v1,$a3,$s0
    beqz       $v1, .L0000cfbc
    move       $a2,$zero
.L0000cf68:
    addu       $a3,$a3,$a4
    sltu       $a1,$a3,$s0
    addu       $a0,$a0,$a5
    addiu      $a2,$a2,1
    beqz       $a1, .L0000cf90
    addu       $a3,$a3,$a4
    sltu       $a6,$a3,$s0
    addu       $a0,$a0,$a5
    bnez       $a6, .L0000cf68
    addiu      $a2,$a2,1
.L0000cf90:
    lw         $a4,0($gp)
    slti       $a3,$a2,2
    beqz       $a2, .L0000cfbc
    sw         $a0,0($gp)
    addu       $t0,$a2,$a4
    bnez       $a3, .L0000cfbc
    sw         $t0,0($gp)
    lw         $t1,0($gp)
    addu       $t1,$t1,$a2
    addiu      $t1,$t1,-1
    sw         $t1,0($gp)
.L0000cfbc:
    sw         $a0,0($gp)
.L0000cfc0:
    lw         $a6,0($gp)
    lw         $a4,0($gp)
    move       $a2,$zero
    lw         $t0,0($gp)
    beqz       $a6, .L0000d054
    negu       $a5,$a6
    subu       $a3,$a7,$a4
    sltu       $t2,$a3,$s0
    beqz       $t2, .L0000d040
    subu       $at,$a4,$t0
.L0000cfe8:
    addu       $a3,$a3,$a5
    sltu       $t3,$a3,$s0
    addu       $a4,$a4,$a6
    addiu      $a2,$a2,1
    beqz       $t3, .L0000d010
    addu       $a3,$a3,$a5
    sltu       $t8,$a3,$s0
    addu       $a4,$a4,$a6
    bnez       $t8, .L0000cfe8
    addiu      $a2,$a2,1
.L0000d010:
    lw         $a3,0($gp)
    slti       $a5,$a2,2
    beqz       $a2, .L0000d03c
    sw         $a4,0($gp)
    addu       $t9,$a2,$a3
    bnez       $a5, .L0000d03c
    sw         $t9,0($gp)
    lw         $ra,0($gp)
    addu       $ra,$ra,$a2
    addiu      $ra,$ra,-1
    sw         $ra,0($gp)
.L0000d03c:
    subu       $at,$a4,$t0
.L0000d040:
    sltu       $at,$at,$s0
    bnez       $at, .L0000d054
    nop
    move       $a0,$a4
    sw         $a4,0($gp)
.L0000d054:
    jal        set_r4k_compare
    nop
    move       $s1,$zero
.L0000d060:
    jal        _get_r4k_counter
    nop
    lw         $a0,0($gp)
    move       $a7,$v0
    subu       $v0,$v0,$a0
    sltu       $v0,$v0,$s0
    bnez       $v0, .L0000cf4c
    lw         $a5,0($gp)
    beqz       $s1, .L0000d0b0
    lw         $v1,0($gp)
    addiu      $v1,$v1,1
    jal        set_r4k_compare
    sw         $v1,0($gp)
    jal        get_r4k_counter
    nop
    lw         $a0,0($gp)
    subu       $a1,$v0,$a0
    sltu       $a1,$a1,$s0
    bnez       $a1, .L0000cf48
    move       $a7,$v0
.L0000d0b0:
    ld         $ra,0($sp)
.L0000d0b4:
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000d0c4:
    jal        hwperf_overflowed_intr
    nop
    beqz       $v0, .L0000cf10
    lw         $a5,0($gp)
    jal        hwperf_intr
    move       $a0,$s0
    b          .L0000d0b4
    ld         $ra,0($sp)

glabel ackkgclock_r4000
    jr         $ra
    nop

glabel ackrtclock_r4000
    jr         $ra
    nop

glabel ecc_cleanup
    addiu      $sp,$sp,-64
    sd         $s2,40($sp)
    sd         $s3,8($sp)
    sd         $s0,24($sp)
    li         $s3,1
    lui        $s0,0x0
    sd         $s4,16($sp)
    lui        $s4,0x0
    sd         $s5,32($sp)
    lui        $s5,0x0
    sd         $ra,48($sp)
    addiu      $s5,$s5,3168
    addiu      $s4,$s4,3448
    sd         $s1,56($sp)
    b          .L0000d1d4
    addiu      $s0,$s0,3072
.L0000d134:
    sw         $zero,4($s0)
.L0000d138:
    lw         $s2,4($s0)
    lw         $t8,12($s0)
    move       $a0,$v0
    addiu      $t8,$t8,1
    jal        splxecc
    sw         $t8,12($s0)
    lw         $t8,0($gp)
    sll        $s1,$s2,0x3
    subu       $s1,$s1,$s2
    sll        $s1,$s1,0x4
    bnez       $t8, .L0000d2d8
    addu       $s1,$s0,$s1
    lw         $t8,152($s1)
    bnez       $t8, .L0000d2d8
    li         $a3,1
.L0000d174:
    li         $a2,1
    move       $a1,$s2
    lh         $a4,164($s1)
    jal        .text
    li         $a0,2
    lw         $t9,0($gp)
    beqz       $t9, .L0000d1b0
    nop
    lw         $a0,96($s1)
    lw         $a1,100($s1)
    lw         $a2,140($s1)
    ld         $a3,104($s1)
    lh         $a5,164($s1)
    jal        .text
    li         $a4,1
.L0000d1b0:
    lw         $ra,152($s1)
    bnez       $ra, .L0000d2fc
    li         $a5,1
    lw         $at,0($gp)
    bnez       $at, .L0000d2fc
    li         $a5,1
.L0000d1c8:
    lw         $v0,152($s1)
    bnez       $v0, .L0000d214
    nop
.L0000d1d4:
    jal        splecc
    nop
    lw         $v1,0($s0)
    lw         $a0,4($s0)
    beq        $v1, $a0, .L0000d278
    nop
    sw         $s3,0($gp)
    sw         $zero,0($gp)
    lw         $a1,4($s0)
    slti       $a1,$a1,9
    beqz       $a1, .L0000d134
    nop
    lw         $a2,4($s0)
    addiu      $a2,$a2,1
    b          .L0000d138
    sw         $a2,4($s0)
.L0000d214:
    ld         $a0,24($s0)
    ld         $a1,88($s1)
    sll        $a1,$a1,0x0
    li         $a2,2
    jal        dobuserr
    sll        $a0,$a0,0x0
    lw         $a2,160($s1)
    beqz       $a2, .L0000d378
    addiu      $a1,$s4,248
    li         $a1,10
    li         $a2,18
    move       $a3,$zero
    move       $a4,$zero
    lw         $a0,160($s1)
    jal        sigtopid
    move       $a5,$zero
    li         $a3,11
    beq        $v0, $a3, .L0000d2a8
    nop
    lw         $a4,-24556($zero)
.L0000d264:
    lw         $a4,640($a4)
    sw         $s3,0($a4)
.L0000d26c:
    sw         $zero,152($s1)
    b          .L0000d1d4
    sw         $zero,160($s1)
.L0000d278:
    sw         $zero,0($gp)
    jal        splxecc
    move       $a0,$v0
    ld         $s2,40($sp)
    ld         $s3,8($sp)
    ld         $s4,16($sp)
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s5,32($sp)
    ld         $s1,56($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0000d2a8:
    li         $s2,11
.L0000d2ac:
    li         $a1,10
    li         $a2,18
    move       $a3,$zero
    move       $a4,$zero
    lw         $a0,160($s1)
    jal        sigtopid
    move       $a5,$zero
    beq        $v0, $s2, .L0000d2ac
    li         $s2,11
    b          .L0000d264
    lw         $a4,-24556($zero)
.L0000d2d8:
    lw         $a2,12($s0)
    lw         $a3,4($s0)
    move       $a1,$s4
    lw         $a4,0($s0)
    jal        cmn_err
    li         $a0,6
    b          .L0000d174
    li         $a3,1
    li         $a5,1
.L0000d2fc:
    sd         $a5,0($sp)
.L0000d300:
    ld         $a0,0($sp)
    move       $a1,$s2
    li         $a2,1
    lh         $a4,164($s1)
    jal        .text
    li         $a3,1
    ld         $a6,0($sp)
    addiu      $a6,$a6,-1
    bgez       $a6, .L0000d300
    sd         $a6,0($sp)
    lw         $a2,80($s1)
    addiu      $a3,$s5,2024
    addiu      $a1,$s4,56
    ld         $a4,88($s1)
    jal        cmn_err
    li         $a0,6
    lw         $a7,152($s1)
    bnez       $a7, .L0000d358
    nop
    lw         $t0,0($gp)
    beqz       $t0, .L0000d1c8
    nop
.L0000d358:
    jal        get_cpu_irr
    nop
    sra        $t1,$v0,0x8
    slti       $t1,$t1,35
    beqz       $t1, .L0000d388
    addiu      $a3,$s5,2416
    b          .L0000d388
    addiu      $a3,$s5,2536
.L0000d378:
    jal        cmn_err
    li         $a0,4
    b          .L0000d26c
    nop
.L0000d388:
    lw         $t2,120($s1)
    beqz       $t2, .L0000d3a0
    lui        $a4,0x0
    lui        $a4,0x0
    b          .L0000d3a4
    addiu      $a4,$a4,3736
.L0000d3a0:
    addiu      $a4,$a4,3744
.L0000d3a4:
    lw         $a2,120($s1)
    addiu      $a1,$s4,88
    lw         $a5,128($s1)
    ld         $a6,88($s1)
    jal        cmn_err
    li         $a0,6
    lw         $a2,132($s1)
    lw         $a3,136($s1)
    lw         $a4,168($s1)
    addiu      $a1,$s4,128
    lw         $a5,172($s1)
    jal        cmn_err
    li         $a0,6
    jal        get_cpu_irr
    nop
    sra        $a5,$v0,0x8
    slti       $a5,$a5,35
    beqz       $a5, .L0000d3f4
    addiu      $a3,$s5,112
    addiu      $a3,$s5,856
.L0000d3f4:
    ld         $a6,72($s1)
    beqz       $a6, .L0000d428
    lui        $a4,0x0
    lui        $a4,0x0
    addiu      $a4,$a4,3736
.L0000d408:
    ld         $a2,72($s1)
    addiu      $a1,$s4,200
    ld         $a5,104($s1)
    ld         $a6,112($s1)
    jal        cmn_err
    li         $a0,6
    b          .L0000d1c8
    nop
.L0000d428:
    b          .L0000d408
    addiu      $a4,$a4,3744

glabel ecc_panic
    addiu      $sp,$sp,-48
    lui        $v0,0x0
    sd         $s3,8($sp)
    addiu      $s3,$v0,3072
    lw         $v0,3072($v0)
    lw         $at,16($s3)
    sw         $zero,0($gp)
    sd         $ra,32($sp)
    andi       $at,$at,0x2
    sd         $s0,40($sp)
    beqz       $at, .L0000d47c
    sd         $v0,0($sp)
    lui        $s0,0x0
    li         $a0,14
    addiu      $s0,$s0,3448
    jal        cmn_err
    addiu      $a1,$s0,304
    b          .L0000d494
    nop
.L0000d47c:
    li         $a0,14
    lui        $s0,0x0
    move       $a2,$zero
    addiu      $s0,$s0,3448
    jal        cmn_err
    addiu      $a1,$s0,352
.L0000d494:
    lw         $t8,16($s3)
    lui        $a4,0x0
    lui        $a3,0x0
    andi       $t8,$t8,0x3
    sd         $s2,16($sp)
    addiu      $a4,$a4,3168
    addiu      $a3,$a3,3168
    sd         $s1,24($sp)
    beqz       $t8, .L0000d4dc
    addiu      $a2,$a3,6064
    lw         $a5,16($s3)
    andi       $a5,$a5,0x1
    beqz       $a5, .L0000d4d0
    nop
    addiu      $a2,$a4,6128
.L0000d4d0:
    li         $a0,6
    jal        cmn_err
    addiu      $a1,$s0,392
.L0000d4dc:
    ld         $s2,0($sp)
    li         $a3,1
    move       $a2,$zero
    sll        $s1,$s2,0x3
    li         $a0,-1
    subu       $s1,$s1,$s2
    move       $a1,$s2
    sll        $s1,$s1,0x4
    lui        $s2,0x0
    addu       $s1,$s3,$s1
    addiu      $s2,$s2,3168
    jal        .text
    lh         $a4,164($s1)
    lw         $t8,96($s1)
    beqz       $t8, .L0000d544
    li         $ra,1
    lw         $t9,96($s1)
    beq        $t9, $ra, .L0000d548
    addiu      $a3,$s2,2024
    lw         $a0,96($s1)
    lw         $a1,100($s1)
    lw         $a2,140($s1)
    ld         $a3,104($s1)
    lh         $a5,164($s1)
    jal        .text
    li         $a4,1
.L0000d544:
    addiu      $a3,$s2,2024
.L0000d548:
    addiu      $a1,$s0,408
    lw         $a2,80($s1)
    jal        cmn_err
    li         $a0,6
    jal        get_cpu_irr
    nop
    sra        $at,$v0,0x8
    slti       $at,$at,35
    bnez       $at, .L0000d574
    addiu      $a3,$s2,856
    addiu      $a3,$s2,112
.L0000d574:
    li         $a0,6
    addiu      $a1,$s0,432
    jal        cmn_err
    ld         $a2,72($s1)
    ld         $a2,88($s1)
    addiu      $a1,$s0,448
    ld         $a3,24($s3)
    ld         $a4,32($s3)
    jal        cmn_err
    li         $a0,6
    addiu      $a1,$s0,512
    ld         $a2,104($s1)
    ld         $a3,112($s1)
    jal        cmn_err
    li         $a0,6
    lw         $a2,128($s1)
    addiu      $a1,$s0,552
    lw         $a3,132($s1)
    lw         $a4,136($s1)
    jal        cmn_err
    li         $a0,6
    addiu      $a1,$s0,600
    lw         $a2,168($s1)
    lw         $a3,172($s1)
    jal        cmn_err
    li         $a0,6
    lw         $v0,120($s1)
    lui        $a1,0x0
    lui        $a4,0x0
    beqz       $v0, .L0000d660
    addiu      $a4,$a4,3736
.L0000d5f0:
    li         $a0,6
    addiu      $a1,$s0,640
    lw         $a2,120($s1)
    jal        cmn_err
    addiu      $a3,$s2,2416
    lw         $a5,144($s1)
    beqz       $a5, .L0000d624
    addiu      $a1,$s0,664
    lw         $a2,144($s1)
    jal        cmn_err
    li         $a0,6
    b          .L0000d634
    nop
.L0000d624:
    li         $a0,6
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,4168
.L0000d634:
    ld         $s2,16($sp)
    ld         $s1,24($sp)
    addiu      $a2,$s0,680
    move       $a1,$zero
    ld         $s3,8($sp)
    jal        cmn_err_tag
    li         $a0,73
    ld         $ra,32($sp)
    ld         $s0,40($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0000d660:
    b          .L0000d5f0
    addiu      $a4,$a1,3744
    li         $a3,1
    srl        $a5,$a0,0x15
    li         $t0,8
    srl        $v0,$a0,0x1a
    sltiu      $a4,$v0,20
    sltiu      $a6,$v0,24
    beqz       $v0, .L0000d6e8
    sltiu      $a7,$v0,8
    beq        $v0, $a3, .L0000d708
    sltiu      $at,$v0,16
    bnez       $at, .L0000d6b8
    sltiu      $v1,$v0,2
    andi       $a3,$a5,0x1f
    beqz       $a4, .L0000d6b8
    sltiu      $v1,$v0,2
    bne        $a3, $t0, .L0000d6d8
    move       $v0,$zero
    b          .L0000d748
    nop
    sltiu      $v1,$v0,2
.L0000d6b8:
    bnez       $v1, .L0000d6c8
    sltiu      $a0,$v0,20
    bnez       $a7, .L0000d6e0
    sltiu      $a0,$v0,20
.L0000d6c8:
    bnez       $a0, .L0000d6d8
    move       $v0,$zero
    bnez       $a6, .L0000d6e0
    nop
.L0000d6d8:
    jr         $ra
    nop
.L0000d6e0:
    jr         $ra
    li         $v0,1
.L0000d6e8:
    li         $a1,8
    andi       $a3,$a0,0x3f
    beq        $a3, $a1, .L0000d740
    li         $v0,9
    beq        $a3, $v0, .L0000d740
    nop
    jr         $ra
    move       $v0,$zero
.L0000d708:
    srl        $a4,$a0,0x10
    andi       $a4,$a4,0x1f
    sltiu      $a2,$a4,4
    sltiu      $a3,$a4,20
    bnez       $a2, .L0000d730
    sltiu      $v0,$a4,16
    bnez       $v0, .L0000d738
    nop
    beqz       $a3, .L0000d738
    nop
.L0000d730:
    jr         $ra
    li         $v0,1
.L0000d738:
    jr         $ra
    move       $v0,$zero
.L0000d740:
    jr         $ra
    li         $v0,1
.L0000d748:
    li         $v0,1
    jr         $ra
    nop
    addiu      $sp,$sp,-80
    sw         $zero,0($sp)
    sd         $a0,48($sp)
    move       $a0,$a1
    sd         $a1,40($sp)
    addiu      $a1,$sp,4
    sd         $s1,56($sp)
    move       $s1,$a2
    sd         $ra,64($sp)
    jal        tlb_to_phys
    addiu      $a2,$sp,8
    beqz       $v0, .L0000d854
    sd         $s0,72($sp)
    jal        r_phys_word_erl
    lw         $a0,4($sp)
    move       $a0,$v0
    jal        .text
    move       $s0,$v0
    beqz       $v0, .L0000d83c
    lui        $t0,0x8000
    addiu      $a2,$sp,8
    ld         $a0,40($sp)
    addiu      $a1,$sp,12
    li         $a3,4
    jal        tlb_to_phys
    daddu      $a0,$a0,$a3
    beqz       $v0, .L0000d864
    nop
    jal        r_phys_word_erl
    lw         $a0,12($sp)
    lw         $a4,0($s1)
    lui        $a5,0x8000
    and        $a4,$a4,$a5
    beqz       $a4, .L0000d874
    move       $a1,$v0
    sw         $v0,16($sp)
    lw         $a6,12($sp)
.L0000d7e8:
    beqz       $a6, .L0000d7f4
    ld         $v0,48($sp)
    lw         $s0,16($sp)
.L0000d7f4:
    move       $a0,$v0
    move       $a1,$s0
    addiu      $a2,$sp,20
    addiu      $a3,$sp,24
    jal        decode_inst
    addiu      $a4,$sp,32
    beqz       $v0, .L0000d85c
    addiu      $a2,$sp,8
    addiu      $a1,$sp,0
    jal        tlb_to_phys
    ld         $a0,24($sp)
    beqz       $v0, .L0000d86c
    lw         $v0,0($sp)
.L0000d828:
    ld         $ra,64($sp)
    ld         $s0,72($sp)
    ld         $s1,56($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L0000d83c:
    lw         $a7,0($s1)
    and        $a7,$a7,$t0
    bnez       $a7, .L0000d7e8
    lw         $a6,12($sp)
.L0000d84c:
    b          .L0000d828
    lw         $v0,4($sp)
.L0000d854:
    b          .L0000d828
    li         $v0,-1
.L0000d85c:
    b          .L0000d828
    li         $v0,-1
.L0000d864:
    b          .L0000d828
    li         $v0,-1
.L0000d86c:
    b          .L0000d828
    li         $v0,-1
.L0000d874:
    lw         $a1,4($sp)
    move       $a0,$zero
    jal        ecc_same_cache_block
    lw         $a2,12($sp)
    bnez       $v0, .L0000d84c
    nop
    b          .L0000d828
    li         $v0,-1

glabel ecc_handler
    addiu      $sp,$sp,-144
    andi       $t8,$a2,0x7
    sd         $t8,16($sp)
    sw         $a2,132($sp)
    sd         $s6,56($sp)
    sd         $s8,64($sp)
    sd         $ra,72($sp)
    sd         $s4,40($sp)
    sd         $s2,24($sp)
    sd         $s3,32($sp)
    li         $v0,1
    move       $s3,$a0
    lw         $at,0($gp)
    move       $s2,$a1
    sd         $s5,48($sp)
    lui        $s5,0x3f
    move       $s4,$a3
    sd         $s1,88($sp)
    ori        $s5,$s5,0xfff8
    sd         $s7,96($sp)
    beqz       $at, .L0000dbd4
    and        $s5,$a2,$s5
    lw         $t9,-23888($zero)
    beqz       $t9, .L0000dbac
    nop
    jal        _r4600sc_disable_scache
    nop
    move       $s8,$v0
.L0000d904:
    lw         $ra,0($gp)
    beqz       $ra, .L0000dccc
    sd         $s0,80($sp)
    lui        $a0,0x2
.L0000d914:
    ld         $v1,248($s3)
    nor        $a0,$a0,$zero
    lui        $v0,0x0
    and        $v1,$v1,$a0
    sd         $v1,248($s3)
    lw         $at,3072($v0)
    slti       $at,$at,9
    bnez       $at, .L0000d940
    addiu      $s0,$v0,3072
    b          .L0000d94c
    sw         $zero,3072($v0)
.L0000d940:
    lw         $a1,3072($v0)
    addiu      $a1,$a1,1
    sw         $a1,3072($v0)
.L0000d94c:
    lw         $a2,0($s0)
    lw         $a3,4($s0)
    bne        $a2, $a3, .L0000d9b4
    nop
    lw         $a5,16($s0)
    ori        $a5,$a5,0x2
    sw         $a5,16($s0)
    lw         $a4,0($s0)
    blez       $a4, .L0000dbe8
    li         $a1,9
    lw         $a6,0($s0)
    addiu      $a6,$a6,-1
    sw         $a6,0($s0)
.L0000d980:
    li         $v0,1
.L0000d984:
    ld         $s2,24($sp)
    ld         $s6,56($sp)
    ld         $s3,32($sp)
    ld         $s8,64($sp)
    ld         $s4,40($sp)
    ld         $s0,80($sp)
    ld         $ra,72($sp)
    ld         $s1,88($sp)
    ld         $s5,48($sp)
    ld         $s7,96($sp)
    jr         $ra
    addiu      $sp,$sp,144
.L0000d9b4:
    lw         $s6,0($s0)
    sll        $s1,$s6,0x3
    lw         $a7,0($gp)
    subu       $s1,$s1,$s6
    li         $s7,-1
    sll        $s1,$s1,0x4
    dsll32     $a7,$a7,0xe
    addu       $s1,$s0,$s1
    dsrl32     $s7,$s7,0x0
    sh         $zero,164($s1)
    li         $a0,3
    bgez       $a7, .L0000dd10
    sb         $a0,176($s1)
    lui        $a1,0xb400
    ld         $v0,72($a1)
    and        $v0,$s7,$v0
    sll        $v0,$v0,0x0
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    sd         $v0,56($s2)
    ld         $t9,592($a1)
    and        $t9,$s7,$t9
    sll        $t9,$t9,0x0
    dsll32     $t9,$t9,0x0
    dsrl32     $t9,$t9,0x0
    sd         $t9,64($s2)
    ld         $at,64($a1)
    sd         $at,80($s2)
    ld         $ra,600($a1)
    and        $ra,$s7,$ra
    lui        $t8,0x24
    sll        $ra,$ra,0x0
    and        $t9,$t8,$t9
    dsll32     $ra,$ra,0x0
    dsrl32     $ra,$ra,0x0
    beq        $t8, $t9, .L0000dc24
    sd         $ra,88($s2)
    andi       $v1,$v0,0x201
    li         $a0,513
    beq        $v1, $a0, .L0000dcb4
    andi       $a2,$v0,0x5
    li         $a3,5
    bne        $a2, $a3, .L0000da7c
    move       $a0,$s3
    sd         $zero,72($a1)
    ld         $a3,72($s2)
    ld         $a2,80($s2)
    dsll32     $a3,$a3,0x0
    b          .L0000dabc
    or         $a2,$a2,$a3
.L0000da7c:
    move       $a1,$s4
    jal        .text
    addiu      $a2,$sp,132
    dsll32     $a2,$v0,0x0
    li         $a4,-1
    dsrl32     $a2,$a2,0x0
    beq        $a2, $a4, .L0000ddac
    lw         $a3,132($sp)
    lui        $a4,0x8000
    and        $a3,$a3,$a4
    beqz       $a3, .L0000dac0
    lui        $a4,0x1000
    lbu        $a5,176($s1)
    li         $a6,-2
    and        $a5,$a5,$a6
    sb         $a5,176($s1)
.L0000dabc:
    lui        $a4,0x1000
.L0000dac0:
    sd         $a2,104($s1)
.L0000dac4:
    ld         $t3,16($sp)
    andi       $t2,$s5,0xfff
    sll        $t3,$t3,0xc
    sd         $a2,104($s1)
    or         $t2,$t2,$t3
    and        $t8,$s7,$a2
    sd         $t8,40($s2)
    dsll32     $t2,$t2,0x0
    dsrl32     $t3,$a2,0x0
    sd         $t3,32($s2)
    dsrl32     $t2,$t2,0x0
    sd         $t2,112($s1)
    lw         $a3,132($sp)
    lui        $t0,0x8200
    sw         $a3,80($s1)
    sd         $s4,88($s1)
    and        $t1,$t0,$a3
    ld         $a7,248($s3)
    beq        $t0, $t1, .L0000dc08
    sd         $a7,72($s1)
.L0000db14:
    dsll32     $t8,$a3,0x2
    bgez       $t8, .L0000dbf0
    and        $v0,$a4,$a3
    beqz       $v0, .L0000dc1c
    li         $s5,3
.L0000db28:
    dsll32     $t9,$a3,0x5
    bgez       $t9, .L0000dbb4
    li         $s7,4
    li         $a0,6
    jal        .text
    move       $a1,$s6
    li         $v0,4
.L0000db44:
    li         $ra,1
    sw         $v0,96($s1)
    beq        $v0, $ra, .L0000dbdc
    sw         $s5,100($s1)
    beqz       $v0, .L0000dbdc
    nop
.L0000db5c:
    beq        $v0, $s7, .L0000dd5c
    lw         $a3,132($sp)
    lbu        $v0,176($s1)
    li         $at,3
    and        $v0,$at,$v0
    beq        $at, $v0, .L0000dd78
    move       $a0,$s6
    dsll32     $v1,$a3,0x6
    bgez       $v1, .L0000dc00
.L0000db80:
    li         $s2,1
.L0000db84:
    ld         $a0,248($s3)
    andi       $a0,$a0,0x18
    li         $a1,16
    beq        $a0, $a1, .L0000dc44
    move       $a1,$s6
    lw         $a1,16($s0)
    li         $v0,1
    ori        $a1,$a1,0x1
    b          .L0000d984
    sw         $a1,16($s0)
.L0000dbac:
    b          .L0000d904
    move       $s8,$v0
.L0000dbb4:
    dsll32     $v1,$a3,0x1
    lui        $v0,0x8000
    bgez       $v1, .L0000dcdc
    and        $v0,$a3,$v0
    beqz       $v0, .L0000dd08
    nop
    b          .L0000db44
    li         $v0,3
.L0000dbd4:
    b          .L0000d904
    move       $s8,$v0
.L0000dbdc:
    ld         $a0,112($s1)
    b          .L0000db5c
    sd         $a0,40($s2)
.L0000dbe8:
    b          .L0000d980
    sw         $a1,0($s0)
.L0000dbf0:
    beqz       $v0, .L0000ddb4
    nop
    b          .L0000db28
    li         $s5,2
.L0000dc00:
    b          .L0000db84
    li         $s2,1
.L0000dc08:
    lui        $a2,0x200
    nor        $a2,$a2,$zero
    and        $a3,$a3,$a2
    b          .L0000db14
    sw         $a3,132($sp)
.L0000dc1c:
    b          .L0000db28
    li         $s5,1
.L0000dc24:
    sd         $zero,592($a1)
    ld         $a2,88($s2)
    lui        $a4,0x1000
    sltu       $a5,$a2,$a4
    bnez       $a5, .L0000dac0
    lui        $v0,0x4000
    b          .L0000dac0
    daddu      $a2,$a2,$v0
.L0000dc44:
    li         $a0,1
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9352
    li         $a3,1
    sw         $a3,152($s1)
    lw         $v0,-24556($zero)
    beqz       $v0, .L0000ddbc
    nop
    lw         $a1,492($v0)
    beqz       $a1, .L0000ddbc
    nop
    lw         $a0,8($a1)
.L0000dc78:
    sw         $a0,160($s1)
.L0000dc7c:
    beqz       $s8, .L0000dddc
    nop
.L0000dc84:
    lw         $a4,8($s0)
    beqz       $a4, .L0000dcec
    li         $a2,-100
    move       $a1,$zero
    lui        $a0,0x0
    jal        timeout
    addiu      $a0,$a0,0
    sw         $zero,8($s0)
    li         $a1,1
    sw         $a1,0($gp)
.L0000dcac:
    b          .L0000d984
    move       $v0,$s2
.L0000dcb4:
    sd         $zero,72($a1)
    ld         $a3,72($s2)
    ld         $a2,80($s2)
    dsll32     $a3,$a3,0x0
    b          .L0000dabc
    or         $a2,$a2,$a3
.L0000dccc:
    jal        .text
    nop
    b          .L0000d914
    lui        $a0,0x2
.L0000dcdc:
    beqz       $v0, .L0000ddcc
    nop
    b          .L0000db44
    li         $v0,1
.L0000dcec:
    lw         $a4,0($s0)
    blez       $a4, .L0000ddd4
    li         $a7,9
    lw         $a5,0($s0)
    addiu      $a5,$a5,-1
    b          .L0000dcac
    sw         $a5,0($s0)
.L0000dd08:
    b          .L0000db44
    li         $v0,3
.L0000dd10:
    addiu      $a2,$sp,0
    addiu      $a3,$sp,8
    lui        $a1,0x8000
    jal        _c_ilt_n_ecc
    or         $a1,$s5,$a1
    lwu        $a5,8($sp)
    sd         $a5,16($s2)
    sw         $a5,128($s1)
    lw         $a4,0($sp)
    sw         $a4,120($s1)
    lw         $a2,120($s1)
    li         $a3,-8192
    and        $a2,$a2,$a3
    sll        $a2,$a2,0x4
    or         $a2,$s5,$a2
    dsll32     $a2,$a2,0x0
    lui        $a4,0x1000
    b          .L0000dac4
    dsrl32     $a2,$a2,0x0
.L0000dd5c:
    move       $a0,$s6
    move       $a1,$s3
    move       $a2,$s2
    jal        .text
    move       $a4,$s4
    b          .L0000dd8c
    move       $s2,$v0
.L0000dd78:
    move       $a1,$s3
    move       $a2,$s2
    jal        .text
    move       $a4,$s4
    move       $s2,$v0
.L0000dd8c:
    lw         $a6,132($sp)
    dsll32     $a6,$a6,0x6
    bltz       $a6, .L0000db80
    nop
    bnez       $s2, .L0000db84
    nop
    b          .L0000dc7c
    nop
.L0000ddac:
    b          .L0000d984
    li         $v0,1
.L0000ddb4:
    b          .L0000db28
    move       $s5,$zero
.L0000ddbc:
    jal        kthread_get_pid
    nop
    b          .L0000dc78
    move       $a0,$v0
.L0000ddcc:
    b          .L0000db44
    move       $v0,$zero
.L0000ddd4:
    b          .L0000dcac
    sw         $a7,0($s0)
.L0000dddc:
    jal        _r4600sc_enable_scache
    nop
    b          .L0000dc84
    nop
    lw         $v0,0($gp)
    lui        $a3,0x0
    sll        $a4,$a0,0x3
    subu       $a4,$a4,$a0
    dsll32     $v0,$v0,0xe
    addiu      $a3,$a3,3072
    sll        $a4,$a4,0x4
    addu       $a3,$a3,$a4
    lui        $a4,0xdead
    ori        $a7,$a4,0xbeef
    bgez       $v0, .L0000de4c
    ld         $at,104($a3)
    lw         $a5,124($a3)
    dsll32     $a5,$a5,0x0
    dsrl32     $a5,$a5,0x0
    sd         $a5,8($a2)
.L0000de2c:
    lw         $t0,128($a3)
    sw         $a7,132($a3)
    sw         $a7,136($a3)
    lui        $a6,0xb400
    ld         $a6,608($a6)
    li         $v0,1
    jr         $ra
    sw         $a6,140($a3)
.L0000de4c:
    lw         $t1,120($a3)
    dsll32     $t1,$t1,0x0
    dsrl32     $t1,$t1,0x0
    b          .L0000de2c
    sd         $t1,8($a2)
    addiu      $sp,$sp,-80
    sd         $s4,40($sp)
    sd         $s3,32($sp)
    sd         $s2,64($sp)
    sll        $s2,$a0,0x3
    sd         $s0,48($sp)
    lui        $s0,0x0
    subu       $s2,$s2,$a0
    sd         $s1,56($sp)
    addiu      $s0,$s0,3072
    sll        $s2,$s2,0x4
    move       $s1,$a0
    lw         $a0,-23888($zero)
    addu       $s0,$s0,$s2
    ld         $v1,104($s0)
    lui        $v0,0x8000
    move       $s3,$a2
    ld         $s2,112($s0)
    li         $s4,3
    addiu      $a0,$a0,-1
    lw         $at,96($s0)
    sd         $a3,24($sp)
    sll        $s2,$s2,0x0
    and        $v1,$v1,$a0
    sd         $ra,72($sp)
    or         $s2,$v0,$s2
    sll        $v1,$v1,0x0
    or         $v0,$v0,$v1
    beqz       $at, .L0000e00c
    sd         $v0,16($sp)
    lw         $t8,96($s0)
    beq        $t8, $s4, .L0000e00c
    li         $a0,1
.L0000dee4:
    move       $a1,$s2
    addiu      $a2,$sp,0
    jal        _c_ilt_n_ecc
    addiu      $a3,$sp,8
    lw         $ra,0($gp)
    dsll32     $ra,$ra,0xe
    lw         $t9,0($sp)
    bgez       $ra, .L0000e028
    sw         $t9,124($s0)
    sw         $zero,120($s0)
.L0000df0c:
    lw         $at,96($s0)
    beq        $at, $s4, .L0000df20
    li         $s2,6
    lw         $s2,96($s0)
    addu       $s2,$s2,$s2
.L0000df20:
    lw         $v0,96($s0)
    beqz       $v0, .L0000df6c
    li         $a0,1
    beq        $v0, $a0, .L0000df6c
    nop
    beq        $v0, $s4, .L0000df58
    nop
    move       $a0,$zero
    move       $a1,$s1
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9400
    b          .L0000dfec
    li         $v0,1
.L0000df58:
    lw         $a3,120($s0)
    dsll32     $a3,$a3,0x0
    dsrl32     $a3,$a3,0x0
    b          .L0000df7c
    sd         $a3,8($s3)
.L0000df6c:
    lw         $a4,124($s0)
    dsll32     $a4,$a4,0x0
    dsrl32     $a4,$a4,0x0
    sd         $a4,8($s3)
.L0000df7c:
    lw         $a5,100($s0)
    beq        $a0, $a5, .L0000e014
    move       $a1,$s1
    lw         $a0,96($s0)
    jal        ecc_fixctag
    move       $a1,$s1
    li         $a6,2
    beq        $v0, $a6, .L0000e080
    move       $s3,$v0
.L0000dfa0:
    lw         $t0,100($s0)
    li         $a7,1
    addiu      $s4,$s2,1
    beq        $a7, $t0, .L0000e06c
    li         $t2,2
    lw         $t1,100($s0)
    bne        $t1, $t2, .L0000dfd0
    move       $a0,$s4
    jal        .text
    move       $a1,$s1
    b          .L0000dfec
    move       $v0,$s3
.L0000dfd0:
    move       $a0,$s2
    jal        .text
    move       $a1,$s1
    move       $a0,$s4
    jal        .text
    move       $a1,$s1
    move       $v0,$s3
.L0000dfec:
    ld         $s3,32($sp)
    ld         $s4,40($sp)
    ld         $ra,72($sp)
    ld         $s0,48($sp)
    ld         $s1,56($sp)
    ld         $s2,64($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L0000e00c:
    b          .L0000dee4
    move       $a0,$zero
.L0000e014:
    lw         $a0,96($s0)
    jal        ecc_fixcdata
    move       $a2,$s3
    b          .L0000dfa0
    move       $s3,$v0
.L0000e028:
    addiu      $a3,$sp,8
    addiu      $a2,$sp,0
    ld         $a1,16($sp)
    jal        _c_ilt_n_ecc
    li         $a0,3
    ld         $t8,24($sp)
    dsll32     $t8,$t8,0x7
    lw         $t3,0($sp)
    bgez       $t8, .L0000df0c
    sw         $t3,120($s0)
    addiu      $a2,$sp,0
    move       $a1,$s2
    li         $a0,1
    jal        _c_ist
    sw         $zero,0($sp)
    b          .L0000df0c
    nop
.L0000e06c:
    move       $a0,$s2
    jal        .text
    move       $a1,$s1
    b          .L0000dfec
    move       $v0,$s3
.L0000e080:
    move       $a0,$zero
    move       $a1,$s1
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,10064
    b          .L0000dfa0
    li         $s3,1

glabel ecc_find_bad_cline
    addiu      $sp,$sp,-48
    sd         $a0,8($sp)
    sd         $s0,16($sp)
    move       $s0,$a1
    sd         $s1,24($sp)
    move       $s1,$a2
    sd         $ra,32($sp)
    jal        _read_tag
    addiu      $a2,$sp,0
    jal        .text
    lw         $a0,0($sp)
    beqz       $v0, .L0000e0ec
    lw         $a1,0($gp)
    li         $v0,1
    sw         $s0,0($s1)
.L0000e0d8:
    ld         $ra,32($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0000e0ec:
    addiu      $a2,$sp,0
    ld         $a0,8($sp)
    jal        _read_tag
    xor        $a1,$a1,$s0
    jal        .text
    lw         $a0,0($sp)
    beqz       $v0, .L0000e11c
    lw         $a2,0($gp)
    li         $v0,1
    xor        $a2,$a2,$s0
    b          .L0000e0d8
    sw         $a2,0($s1)
.L0000e11c:
    b          .L0000e0d8
    move       $v0,$zero

glabel ecc_fixctag
    addiu      $sp,$sp,-112
    sd         $s3,64($sp)
    sd         $s0,88($sp)
    sd         $s4,80($sp)
    sll        $s4,$a1,0x3
    sd         $s2,72($sp)
    lui        $s2,0x0
    subu       $s4,$s4,$a1
    sd         $s1,96($sp)
    addiu      $s2,$s2,3072
    sll        $s4,$s4,0x4
    lw         $t9,-23888($zero)
    addu       $s2,$s2,$s4
    lw         $v0,124($s2)
    lw         $a4,120($s2)
    lw         $s4,80($s2)
    move       $s0,$a0
    move       $s3,$a1
    ld         $t8,104($s2)
    li         $at,3
    lui        $v1,0x3f
    ld         $s1,112($s2)
    ori        $v1,$v1,0xfff8
    addiu      $t9,$t9,-1
    sll        $s1,$s1,0x0
    and        $s4,$s4,$v1
    sd         $s4,56($sp)
    lui        $s4,0x8000
    and        $t8,$t8,$t9
    sw         $zero,0($sp)
    or         $s1,$s4,$s1
    sll        $t8,$t8,0x0
    sd         $ra,104($sp)
    beq        $a0, $at, .L0000e2c4
    or         $s4,$s4,$t8
    lw         $t8,0($gp)
    sw         $zero,8($sp)
    dsll32     $t8,$t8,0xe
    sw         $zero,12($sp)
    bgez       $t8, .L0000e330
    sd         $a4,48($sp)
    beqz       $a0, .L0000e228
    move       $a1,$s1
    jal        ecc_find_bad_cline
    addiu      $a2,$sp,0
    beqz       $v0, .L0000e264
    move       $a0,$s0
    addiu      $a2,$sp,8
    jal        _c_ist
    lw         $a1,0($sp)
    move       $a0,$zero
.L0000e1f0:
    move       $a1,$s3
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9544
    li         $a4,1
.L0000e204:
    ld         $s3,64($sp)
.L0000e208:
    ld         $s2,72($sp)
    ld         $ra,104($sp)
    ld         $s4,80($sp)
    move       $v0,$a4
    ld         $s0,88($sp)
    ld         $s1,96($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L0000e228:
    move       $a1,$s1
    jal        _c_ist
    addiu      $a2,$sp,8
    lw         $a1,0($gp)
    move       $a0,$s0
    addiu      $a2,$sp,8
    jal        _c_ist
    xor        $a1,$a1,$s1
.L0000e248:
    lw         $a2,80($s2)
    lui        $a3,0x8200
    and        $a2,$a2,$a3
    bnez       $a2, .L0000e1f0
    move       $a0,$zero
    b          .L0000e204
    move       $a4,$zero
.L0000e264:
    move       $a0,$s0
    move       $a1,$s1
    jal        _read_tag
    addiu      $a2,$sp,40
    lw         $a5,40($sp)
    li         $a4,128
    andi       $a5,$a5,0xc0
    beq        $a4, $a5, .L0000e498
    move       $s4,$zero
.L0000e288:
    lw         $a1,0($gp)
    move       $a0,$s0
    addiu      $a2,$sp,40
    jal        _read_tag
    xor        $a1,$a1,$s1
    lw         $a3,40($sp)
    li         $a2,128
    andi       $a3,$a3,0xc0
    beq        $a2, $a3, .L0000e4b0
    move       $a0,$s0
.L0000e2b0:
    slti       $a4,$s4,2
    bnez       $a4, .L0000e248
    nop
    b          .L0000e204
    move       $a4,$zero
.L0000e2c4:
    ld         $a2,56($sp)
    lui        $a1,0x8000
    or         $a1,$a1,$a2
    jal        _c_ilt
    addiu      $a2,$sp,8
    li         $a4,128
    sb         $a4,16($sp)
    addiu      $a1,$sp,16
    lw         $a3,8($sp)
    li         $a0,2
    jal        calc_err_info
    sw         $a3,28($sp)
    lbu        $a5,16($sp)
    lw         $a6,128($s2)
    sw         $a6,156($s2)
    sw         $a5,128($s2)
    li         $a4,2
    beqz       $v0, .L0000e4cc
    sw         $v0,140($s2)
    lw         $a0,20($sp)
    li         $s1,1
    beq        $a0, $s1, .L0000e3ac
    li         $a7,2
    beq        $a0, $a7, .L0000e438
    nop
    b          .L0000e208
    ld         $s3,64($sp)
.L0000e330:
    jal        .text
    move       $a0,$v0
    beqz       $v0, .L0000e4f4
    ld         $a0,48($sp)
    li         $a1,4096
    ld         $v0,112($s2)
    lui        $v1,0xfff
    andi       $a0,$a0,0x1c00
    ori        $v1,$v1,0xff00
    dsrl       $v0,$v0,0x4
    beq        $a0, $a1, .L0000e3a4
    and        $v0,$v0,$v1
    ori        $v0,$v0,0xc0
.L0000e364:
    addiu      $a2,$sp,8
    move       $a1,$s1
    sw         $zero,12($sp)
    move       $a0,$s0
    jal        _c_ist
    sw         $v0,8($sp)
    move       $a0,$s0
    move       $a1,$s1
    jal        _c_ilt
    addiu      $a2,$sp,8
    jal        .text
    lw         $a0,8($sp)
    bnez       $v0, .L0000e1f0
    move       $a0,$zero
    b          .L0000e204
    move       $a4,$zero
.L0000e3a4:
    b          .L0000e364
    ori        $v0,$v0,0x80
.L0000e3ac:
    jal        xlate_bit
    lbu        $a1,24($sp)
    lw         $a4,8($sp)
    sllv       $a5,$s1,$v0
    xor        $a4,$a4,$a5
    sw         $a4,120($s2)
    lw         $a3,120($s2)
    li         $a5,-8192
    ld         $a2,56($sp)
    and        $a3,$a3,$a5
    sll        $a3,$a3,0x4
    sw         $a4,8($sp)
    or         $a2,$a2,$a3
    lw         $a3,0($gp)
    dsll32     $a2,$a2,0x0
    dsrl32     $a2,$a2,0x0
    sd         $a2,104($s2)
    ld         $t8,104($s2)
    addiu      $a3,$a3,-1
    lw         $t9,-23888($zero)
    and        $a2,$a2,$a3
    sd         $a2,112($s2)
    move       $a0,$zero
    lui        $s4,0x8000
    ld         $a1,112($s2)
    addiu      $a2,$sp,8
    addiu      $t9,$t9,-1
    sll        $a1,$a1,0x0
    and        $t8,$t8,$t9
    or         $a1,$s4,$a1
    sll        $t8,$t8,0x0
    jal        _c_ilt
    or         $s4,$s4,$t8
    lw         $a6,8($sp)
    sw         $a6,124($s2)
.L0000e438:
    sw         $zero,12($sp)
    addiu      $a2,$sp,8
    move       $a1,$s4
    lw         $a7,120($s2)
    move       $a0,$s0
    jal        _c_ist
    sw         $a7,8($sp)
    move       $a0,$s0
    move       $a1,$s4
    jal        _c_ilt
    addiu      $a2,$sp,8
    addiu      $a1,$sp,16
    lw         $t0,8($sp)
    li         $a0,2
    jal        calc_err_info
    sw         $t0,28($sp)
    beqz       $v0, .L0000e4c4
    move       $a0,$zero
    move       $a1,$s3
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9584
    b          .L0000e204
    li         $a4,1
.L0000e498:
    move       $a0,$s0
    addiu      $a2,$sp,8
    jal        _c_ist
    lw         $a1,0($sp)
    b          .L0000e288
    li         $s4,1
.L0000e4b0:
    addiu      $a2,$sp,8
    jal        _c_ist
    lw         $a1,0($sp)
    b          .L0000e2b0
    addiu      $s4,$s4,1
.L0000e4c4:
    b          .L0000e204
    move       $a4,$zero
.L0000e4cc:
    move       $a1,$s3
    li         $a0,2
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9496
    li         $a0,7
    jal        .text
    move       $a1,$s3
    b          .L0000e204
    li         $a4,1
.L0000e4f4:
    move       $a1,$s3
    li         $a0,2
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9448
    li         $a0,7
    jal        .text
    move       $a1,$s3
    b          .L0000e204
    li         $a4,1

glabel ecc_fixcdata
    addiu      $sp,$sp,-112
    sd         $s2,56($sp)
    sd         $s1,80($sp)
    lw         $at,0($gp)
    sd         $s3,64($sp)
    sll        $s3,$a1,0x3
    sd         $s0,88($sp)
    lui        $s0,0x0
    subu       $s3,$s3,$a1
    lw         $t8,-23888($zero)
    addiu      $s0,$s0,3072
    sll        $s3,$s3,0x4
    sd         $s4,72($sp)
    addu       $s0,$s0,$s3
    lui        $v0,0x8000
    ld         $s4,112($s0)
    move       $s1,$a0
    move       $s2,$a1
    ld         $s3,104($s0)
    dsll32     $at,$at,0xe
    addiu      $t8,$t8,-1
    sll        $s4,$s4,0x0
    and        $s3,$s3,$t8
    or         $s4,$v0,$s4
    sll        $s3,$s3,0x0
    sd         $ra,96($sp)
    bgez       $at, .L0000e5b0
    or         $s3,$v0,$s3
    li         $v0,-1
.L0000e590:
    ld         $s2,56($sp)
    ld         $s3,64($sp)
    ld         $ra,96($sp)
    ld         $s4,72($sp)
    ld         $s1,80($sp)
    ld         $s0,88($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L0000e5b0:
    beqz       $a0, .L0000e79c
    li         $t8,1
    bne        $t8, $a0, .L0000e664
    sd         $a2,40($sp)
    lw         $a0,0($gp)
.L0000e5c4:
    lui        $s4,0x8000
    move       $s3,$zero
    addiu      $t9,$a0,-4096
    sd         $t9,48($sp)
.L0000e5d4:
    ld         $a3,112($s0)
    dsll32     $a2,$s3,0x0
    dsrl32     $a2,$a2,0x0
    andi       $a3,$a3,0xfff
    or         $a2,$a2,$a3
    sd         $a2,112($s0)
    ld         $a1,112($s0)
    move       $a0,$s1
    addiu      $a2,$sp,0
    sll        $a1,$a1,0x0
    jal        _c_ilt
    or         $a1,$s4,$a1
    lw         $v1,0($sp)
    li         $a1,-256
    and        $v1,$a1,$v1
    ld         $a2,104($s0)
    sll        $v1,$v1,0x4
    li         $a0,-4096
    dsll32     $v1,$v1,0x0
    ld         $v0,48($sp)
    and        $a2,$a0,$a2
    dsrl32     $v1,$v1,0x0
    addiu      $s3,$s3,4096
    beq        $v1, $a2, .L0000e7a4
    sltu       $v0,$v0,$s3
    beqz       $v0, .L0000e5d4
    move       $a1,$s2
    li         $a0,2
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9632
    li         $a0,7
    jal        .text
    move       $a1,$s2
    b          .L0000e590
    move       $v0,$zero
.L0000e664:
    sw         $zero,0($sp)
    sw         $zero,4($sp)
    lw         $a5,0($s4)
    sw         $a5,20($sp)
    addiu      $a3,$sp,32
    addiu      $a2,$sp,0
    lw         $a4,4($s4)
    move       $a1,$s3
    jal        _c_ilt_n_ecc
    sw         $a4,24($sp)
    lw         $a6,32($sp)
    sb         $a6,8($sp)
    lw         $t0,0($sp)
    sw         $t0,120($s0)
    lw         $a7,128($s0)
    addiu      $a1,$sp,8
    sw         $a7,156($s0)
    li         $a0,1
    jal        calc_err_info
    sw         $a6,128($s0)
    sw         $v0,140($s0)
    lw         $t1,24($sp)
    lw         $t2,20($sp)
    sw         $t2,132($s0)
    sw         $t1,136($s0)
    sw         $zero,172($s0)
    beqz       $v0, .L0000e854
    sw         $zero,168($s0)
    li         $t3,3
    beq        $s1, $t3, .L0000e7dc
    move       $a0,$s1
    lw         $v0,12($sp)
    beqz       $v0, .L0000e72c
    li         $a0,3
    li         $t8,1
    beq        $v0, $t8, .L0000e72c
    li         $a0,3
    li         $t9,2
    beq        $v0, $t9, .L0000e728
    move       $a1,$s2
    ld         $v0,40($sp)
    move       $a0,$zero
    ld         $at,104($s0)
    lui        $a2,0x0
    addiu      $a2,$a2,9936
    jal        .text
    sd         $at,40($v0)
    b          .L0000e590
    li         $v0,1
.L0000e728:
    li         $a0,3
.L0000e72c:
    jal        _c_hwbinv
    move       $a1,$s3
    lw         $a5,0($s4)
    addiu      $a3,$sp,32
    sw         $a5,20($sp)
    addiu      $a2,$sp,0
    move       $a1,$s3
    lw         $a4,4($s4)
    move       $a0,$s1
    jal        _c_ilt_n_ecc
    sw         $a4,24($sp)
    addiu      $a1,$sp,8
    lw         $a6,32($sp)
    li         $a0,1
    jal        calc_err_info
    sb         $a6,8($sp)
    beqz       $v0, .L0000e7c0
    move       $s1,$v0
    move       $a0,$zero
    move       $a1,$s2
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9832
    lw         $a3,32($sp)
    sw         $a3,156($s0)
    li         $v0,1
    b          .L0000e590
    sw         $s1,144($s0)
.L0000e79c:
    b          .L0000e5c4
    lw         $a0,0($gp)
.L0000e7a4:
    move       $a0,$zero
    move       $a1,$s2
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9984
    b          .L0000e590
    li         $v0,1
.L0000e7c0:
    move       $a1,$s2
    li         $a0,1
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9888
    b          .L0000e590
    move       $v0,$zero
.L0000e7dc:
    jal        _c_hinv
    move       $a1,$s3
    beqz       $v0, .L0000e898
    move       $a1,$s2
    lw         $a5,0($s4)
    addiu      $a3,$sp,32
    sw         $a5,20($sp)
    addiu      $a2,$sp,0
    move       $a1,$s3
    lw         $a4,4($s4)
    move       $a0,$s1
    jal        _c_ilt_n_ecc
    sw         $a4,24($sp)
    addiu      $a1,$sp,8
    lw         $a6,32($sp)
    li         $a0,1
    jal        calc_err_info
    sb         $a6,8($sp)
    beqz       $v0, .L0000e87c
    move       $s1,$v0
    move       $a0,$zero
    move       $a1,$s2
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9728
    lw         $a3,32($sp)
    sw         $a3,156($s0)
    li         $v0,1
    b          .L0000e590
    sw         $s1,144($s0)
.L0000e854:
    move       $a1,$s2
    li         $a0,2
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9680
    li         $a0,7
    jal        .text
    move       $a1,$s2
    b          .L0000e590
    move       $v0,$zero
.L0000e87c:
    move       $a1,$s2
    li         $a0,1
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,9784
    b          .L0000e590
    move       $v0,$zero
.L0000e898:
    li         $a0,2
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,10112
    b          .L0000e590
    li         $v0,1
    li         $a1,1312
    lui        $a0,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        bzero
    addiu      $a0,$a0,3072
    lui        $a3,0x0
    addiu      $a3,$a3,3072
    li         $a4,3736
    sd         $a4,24($a3)
    li         $a2,3688
    sd         $a2,32($a3)
    li         $a1,1
    jal        get_r4k_config
    sw         $a1,0($gp)
    ld         $ra,0($sp)
    sw         $v0,0($gp)
    jr         $ra
    addiu      $sp,$sp,16
    lui        $v1,0x0
    sll        $a0,$a0,0x2
    addiu      $v1,$v1,9216
    addu       $v1,$v1,$a0
    lw         $v1,0($v1)
    sll        $a0,$a1,0x2
    addu       $v1,$v1,$a0
    li         $at,1
    lui        $v0,0x0
    sw         $a2,0($v1)
    sw         $at,3080($v0)
    jr         $ra
    move       $v0,$zero
    addiu      $sp,$sp,-48
    li         $a7,-1
    li         $v0,-1
    sd         $ra,32($sp)
    lui        $t3,0x0
    li         $t1,2
    sd         $s1,8($sp)
    sll        $t2,$a0,0x2
    lui        $t0,0x0
    lw         $at,0($gp)
    lui        $t8,0x0
    move       $s1,$a1
    sd         $s2,24($sp)
    move       $s2,$a2
    sd         $s3,16($sp)
    move       $s3,$a3
    addiu      $a3,$t8,0
    beqz       $at, .L0000e980
    sd         $s0,40($sp)
    addiu      $a3,$t0,0
.L0000e980:
    li         $a1,1
    beq        $a0, $a7, .L0000ea10
    move       $s0,$zero
    beqz       $a0, .L0000e9b0
    sll        $t8,$s1,0x2
    beq        $a0, $a1, .L0000e9b0
    sll        $t8,$s1,0x2
    beq        $a0, $t1, .L0000e9b0
    sll        $t8,$s1,0x2
    b          .L0000e9f8
    ld         $s1,8($sp)
    sll        $t8,$s1,0x2
.L0000e9b0:
    addiu      $a4,$t3,3168
    addu       $v0,$t2,$a4
    lw         $s0,6048($v0)
    addu       $s0,$s0,$t8
    lw         $a2,0($s0)
    beqz       $a2, .L0000e9f0
    nop
    beqz       $s3, .L0000ea44
    lui        $a1,0x0
    lw         $a1,6032($v0)
.L0000e9d8:
    lui        $a0,0x0
    jalr       $a3
    addiu      $a0,$a0,4176
    beqz       $s2, .L0000e9f4
    move       $v0,$zero
    sw         $zero,0($s0)
.L0000e9f0:
    move       $v0,$zero
.L0000e9f4:
    ld         $s1,8($sp)
.L0000e9f8:
    ld         $ra,32($sp)
    ld         $s3,16($sp)
    ld         $s0,40($sp)
    ld         $s2,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0000ea10:
    sd         $a4,0($sp)
    move       $a0,$s0
.L0000ea18:
    move       $a1,$s1
    move       $a2,$s2
    move       $a3,$s3
    jal        .text
    ld         $a4,0($sp)
    addiu      $s0,$s0,1
    slti       $a1,$s0,3
    bnez       $a1, .L0000ea18
    move       $a0,$s0
    b          .L0000e9f4
    move       $v0,$zero
.L0000ea44:
    b          .L0000e9d8
    addiu      $a1,$a1,4192
    li         $v0,64
    li         $a6,1
    move       $a4,$zero
    li         $a3,6
.L0000ea5c:
    addiu      $a3,$a3,1
    and        $at,$a0,$v0
    sltiu      $a5,$a3,32
    sll        $v0,$v0,0x1
    beqz       $at, .L0000ea78
    and        $v1,$a0,$v0
    addiu      $a4,$a4,1
.L0000ea78:
    beqz       $a5, .L0000ea94
    addiu      $a3,$a3,1
    sll        $v0,$v0,0x1
    beqz       $v1, .L0000ea90
    sltiu      $a5,$a3,32
    addiu      $a4,$a4,1
.L0000ea90:
    bnez       $a5, .L0000ea5c
.L0000ea94:
    andi       $a1,$a4,0x1
    beqz       $a1, .L0000eab0
    andi       $v0,$a0,0x1
    beq        $v0, $a6, .L0000eab8
    li         $v0,1
.L0000eaa8:
    jr         $ra
    nop
.L0000eab0:
    bnez       $v0, .L0000eaa8
    li         $v0,1
.L0000eab8:
    jr         $ra
    move       $v0,$zero
    addiu      $sp,$sp,-16
    lui        $a4,0x0
    slti       $at,$a0,8
    sd         $s0,0($sp)
    move       $s0,$a0
    bltz       $a0, .L0000eb0c
    sd         $ra,8($sp)
    beqz       $at, .L0000eb0c
    sll        $a0,$a0,0x2
    addiu      $v1,$a4,3072
    addu       $v1,$v1,$a0
    lw         $v0,40($v1)
    addiu      $v0,$v0,1
    sw         $v0,40($v1)
    move       $v0,$zero
.L0000eafc:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L0000eb0c:
    li         $a0,2
    lui        $a2,0x0
    jal        .text
    addiu      $a2,$a2,10024
    li         $v0,1
    b          .L0000eafc
    sw         $s0,0($gp)

glabel calc_err_info
    addiu      $sp,$sp,-80
    sd         $s4,48($sp)
    sd         $s2,56($sp)
    lui        $v0,0x8000
    move       $t9,$zero
    sd         $s3,32($sp)
    lui        $a4,0x0
    sd         $s0,24($sp)
    li         $s0,1
    move       $s3,$a1
    sd         $s1,64($sp)
    addiu      $a4,$a4,3168
    sd         $ra,40($sp)
    bne        $a0, $s0, .L0000ec50
    addiu      $ra,$a4,6976
    lw         $a1,12($a1)
    lw         $s4,16($s3)
    lbu        $a5,0($s3)
    move       $a0,$zero
    sd         $a5,16($sp)
.L0000eb78:
    sllv       $s2,$s0,$a0
    addiu      $ra,$ra,8
    move       $v0,$zero
    lw         $a7,-4($ra)
    move       $a4,$zero
    addiu      $a0,$a0,1
    lw         $a6,-8($ra)
    move       $a5,$zero
    slti       $s1,$a0,8
    and        $a6,$a6,$a1
    and        $a7,$a7,$s4
.L0000eba4:
    sllv       $t0,$s0,$v0
    addiu      $v0,$v0,1
    and        $t1,$t0,$a6
    slti       $t2,$v0,32
    and        $t0,$t0,$a7
    beqz       $t1, .L0000ebc4
    sllv       $t1,$s0,$v0
    addiu      $a5,$a5,1
.L0000ebc4:
    and        $t8,$t1,$a7
    and        $t3,$t1,$a6
    beqz       $t0, .L0000ebd8
    addiu      $v0,$v0,1
    addiu      $a4,$a4,1
.L0000ebd8:
    beqz       $t2, .L0000ec04
    addu       $t1,$a4,$a5
    slti       $t0,$v0,32
    beqz       $t3, .L0000ebf0
    nop
    addiu      $a5,$a5,1
.L0000ebf0:
    beqz       $t8, .L0000ebfc
    nop
    addiu      $a4,$a4,1
.L0000ebfc:
    bnez       $t0, .L0000eba4
    addu       $t1,$a4,$a5
.L0000ec04:
    andi       $t1,$t1,0x1
    beqz       $t1, .L0000ec14
    nop
    or         $t9,$t9,$s2
.L0000ec14:
    bnez       $s1, .L0000eb78
    ld         $v0,16($sp)
    xor        $v0,$v0,$t9
    lui        $t2,0x0
    andi       $v0,$v0,0xff
    sb         $t9,1($s3)
    addiu      $t2,$t2,3168
    sll        $t3,$v0,0x3
    sb         $v0,2($s3)
    addu       $t2,$t2,$t3
    lw         $t3,2856($t2)
    sw         $t3,4($s3)
    lbu        $t2,2860($t2)
    b          .L0000ec5c
    sb         $t2,8($s3)
.L0000ec50:
    li         $v1,2
    beq        $a0, $v1, .L0000ec7c
    addiu      $a1,$sp,0
.L0000ec5c:
    ld         $s0,24($sp)
    ld         $s4,48($sp)
    ld         $ra,40($sp)
    ld         $s3,32($sp)
    ld         $s2,56($sp)
    ld         $s1,64($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L0000ec7c:
    lw         $a2,12($s3)
    move       $a0,$s0
    jal        ecc_swap_s_tag
    sw         $a2,0($sp)
    lbu        $t1,0($s3)
    move       $a7,$zero
    lui        $a0,0x0
    andi       $t1,$t1,0x80
    lw         $v0,12($sp)
    move       $t9,$zero
    addiu      $t0,$a0,3168
    lw         $t3,8($sp)
    beqz       $t1, .L0000ecb8
    addiu      $t0,$t0,7040
    sb         $v0,0($s3)
.L0000ecb8:
    lbu        $t8,0($s3)
.L0000ecbc:
    sllv       $t2,$s0,$a7
    addiu      $t0,$t0,4
    move       $v0,$zero
    lw         $a5,-4($t0)
    move       $a0,$zero
    addiu      $a7,$a7,1
    slti       $t1,$a7,7
    and        $a5,$a5,$t3
.L0000ecdc:
    sllv       $ra,$s0,$v0
    addiu      $v0,$v0,1
    slti       $a1,$v0,25
    and        $ra,$a5,$ra
    sllv       $a6,$s0,$v0
    addiu      $v0,$v0,1
    beqz       $ra, .L0000ed00
    and        $a4,$a5,$a6
    addiu      $a0,$a0,1
.L0000ed00:
    beqz       $a1, .L0000ed20
    andi       $at,$a0,0x1
    slti       $a1,$v0,25
    beqz       $a4, .L0000ed18
    nop
    addiu      $a0,$a0,1
.L0000ed18:
    bnez       $a1, .L0000ecdc
    andi       $at,$a0,0x1
.L0000ed20:
    beqz       $at, .L0000ed2c
    nop
    or         $t9,$t9,$t2
.L0000ed2c:
    bnez       $t1, .L0000ecbc
    lui        $v1,0x0
    xor        $v0,$t8,$t9
    andi       $v0,$v0,0xff
    sb         $t9,1($s3)
    addiu      $v1,$v1,3168
    sll        $a0,$v0,0x3
    sb         $v0,2($s3)
    addu       $v1,$v1,$a0
    lw         $a0,4904($v1)
    sw         $a0,4($s3)
    lbu        $v1,4908($v1)
    b          .L0000ec5c
    sb         $v1,8($s3)

glabel ecc_swap_s_tag
    li         $at,1
    addiu      $sp,$sp,-16
    move       $v0,$a0
    lw         $a4,0($a1)
    beq        $a0, $at, .L0000edd4
    li         $a5,2
    srl        $a6,$a4,0xc
    srl        $a0,$a4,0x19
    andi       $a3,$a6,0x1c00
    sd         $ra,0($sp)
    beq        $v0, $a5, .L0000edb4
    andi       $a2,$a6,0x380
    move       $a1,$v0
    lui        $a0,0x0
    jal        printf
    addiu      $a0,$a0,4200
    ld         $ra,0($sp)
    li         $v0,-1
.L0000edac:
    jr         $ra
    addiu      $sp,$sp,16
.L0000edb4:
    move       $v0,$zero
    sll        $a5,$a4,0xd
    sw         $a0,12($a1)
    or         $a2,$a0,$a2
    or         $a3,$a3,$a5
    or         $a2,$a2,$a3
    b          .L0000edac
    sw         $a2,4($a1)
.L0000edd4:
    move       $v0,$zero
    andi       $a7,$a4,0x7f
    srl        $a5,$a4,0xd
    andi       $a6,$a4,0x1c00
    andi       $a3,$a4,0x380
    sll        $a6,$a6,0xc
    sw         $a7,12($a1)
    sll        $a3,$a3,0xc
    or         $a5,$a5,$a6
    or         $a3,$a3,$a5
    sw         $a3,8($a1)
    sll        $a5,$a4,0x19
    or         $a3,$a3,$a5
    b          .L0000edac
    sw         $a3,4($a1)

glabel xlate_bit
    move       $v0,$a1
    li         $a6,2
    sll        $a4,$a1,0x2
    lui        $a5,0x0
    beq        $a0, $a6, .L0000ee30
    addiu      $a5,$a5,10240
    addu       $v0,$a5,$a4
    lw         $v0,0($v0)
.L0000ee30:
    jr         $ra
    nop

glabel print_ecc_info
    addiu      $sp,$sp,-96
    sd         $ra,32($sp)
    sd         $s1,56($sp)
    sd         $s3,0($sp)
    li         $at,-1
    move       $s3,$a0
    sd         $s5,8($sp)
    move       $s5,$a1
    beq        $a0, $at, .L0000f204
    sd         $s7,64($sp)
.L0000ee60:
    lui        $s7,0x0
    bltz       $s3, .L0000f218
    addiu      $s7,$s7,3072
    slti       $a1,$s3,10
    bltz       $s5, .L0000f25c
    slti       $a2,$s5,10
    bne        $zero, $a1, .L0000f26c
    nop
    bne        $zero, $a2, .L0000f28c
    li         $a0,9
    move       $s5,$a0
    li         $s3,9
.L0000ee90:
    lui        $s1,0x0
.L0000ee94:
    move       $a1,$s3
    addiu      $s1,$s1,3448
    jal        qprintf
    addiu      $a0,$s1,832
.L0000eea4:
    ld         $a1,24($s7)
    ld         $a2,32($s7)
    jal        qprintf
    addiu      $a0,$s1,856
    lw         $a1,0($s7)
    lw         $a2,4($s7)
    lw         $a3,8($s7)
    lw         $a4,12($s7)
    lw         $a5,16($s7)
    jal        qprintf
    addiu      $a0,$s1,888
    jal        qprintf
    addiu      $a0,$s1,944
    sd         $s2,16($sp)
    sd         $s6,24($sp)
    sd         $s4,40($sp)
    sd         $s0,48($sp)
    lui        $s2,0x0
    move       $s0,$s7
    addiu      $s2,$s2,3168
    move       $s6,$zero
    addiu      $s4,$s2,5952
.L0000eefc:
    lw         $a2,40($s0)
    lui        $a0,0x0
    lw         $a1,0($s4)
    jal        qprintf
    addiu      $a0,$a0,4776
    addiu      $s6,$s6,1
    slti       $a1,$s6,8
    addiu      $s4,$s4,4
    bnez       $a1, .L0000eefc
    addiu      $s0,$s0,4
    lui        $a0,0x0
    jal        qprintf
    addiu      $a0,$a0,4784
    slt        $a1,$s5,$s3
    bnez       $a1, .L0000f144
    sd         $s8,72($sp)
    sll        $s0,$s3,0x3
    li         $s8,3
    subu       $s0,$s0,$s3
    li         $s4,1
    sll        $s0,$s0,0x4
    b          .L0000f040
    addu       $s0,$s7,$s0
.L0000ef58:
    lw         $t8,124($s0)
    beqz       $t8, .L0000f174
    addiu      $a3,$a0,3736
.L0000ef64:
    addiu      $a5,$s2,2656
    lw         $a1,120($s0)
    lw         $a4,124($s0)
    jal        qprintf
    addiu      $a0,$s1,1072
    ld         $a1,104($s0)
    ld         $a2,112($s0)
    lw         $a3,140($s0)
    lw         $a4,152($s0)
    lw         $a5,160($s0)
    jal        qprintf
    addiu      $a0,$s1,1104
    lw         $t9,156($s0)
    beqz       $t9, .L0000efac
    nop
    lw         $a1,156($s0)
    jal        qprintf
    addiu      $a0,$s1,1160
.L0000efac:
    lw         $ra,144($s0)
    beqz       $ra, .L0000f17c
    lui        $a0,0x0
    lw         $a1,144($s0)
    jal        qprintf
    addiu      $a0,$s1,1184
.L0000efc4:
    lw         $at,100($s0)
    beq        $s4, $at, .L0000f1a8
    nop
    lw         $v0,96($s0)
    beq        $v0, $s8, .L0000f1c8
    nop
    lw         $v1,96($s0)
    beqz       $v1, .L0000f190
    addiu      $a2,$s2,2656
    lw         $a0,96($s0)
    beq        $a0, $s4, .L0000f190
    addiu      $a2,$s2,2656
.L0000eff4:
    lw         $a1,96($s0)
    beqz       $a1, .L0000f128
    nop
    lw         $a2,96($s0)
    beq        $a2, $s4, .L0000f128
    nop
.L0000f00c:
    sw         $s4,0($gp)
    lw         $a0,96($s0)
    lw         $a1,100($s0)
    li         $a4,1
    lw         $a2,140($s0)
    lh         $a5,164($s0)
    jal        .text
    move       $a3,$s6
    sw         $zero,0($gp)
    addiu      $s3,$s3,1
.L0000f034:
    slt        $a3,$s5,$s3
    bnez       $a3, .L0000f144
    addiu      $s0,$s0,112
.L0000f040:
    lw         $a4,80($s0)
    beqz       $a4, .L0000f130
    addiu      $a0,$s1,976
    jal        qprintf
    move       $a1,$s3
    li         $a3,1
    move       $a2,$zero
    move       $a1,$s3
    sw         $s4,0($gp)
    lh         $a4,164($s0)
    jal        .text
    li         $a0,-1
    sw         $zero,0($gp)
    ld         $s6,104($s0)
    lw         $a6,96($s0)
    lui        $a1,0x0
    addiu      $a3,$a1,4792
    bltz       $a6, .L0000f094
    slti       $a0,$a6,5
    bnez       $a0, .L0000f098
    nop
.L0000f094:
    li         $a6,5
.L0000f098:
    lw         $a5,100($s0)
    beq        $s4, $a5, .L0000f0a8
    lui        $a0,0x0
    addiu      $a3,$a0,4800
.L0000f0a8:
    lw         $a2,96($s0)
    sll        $a1,$a6,0x2
    lw         $a4,100($s0)
    addu       $a1,$s2,$a1
    addiu      $a0,$s1,992
    jal        qprintf
    lw         $a1,5928($a1)
    jal        get_cpu_irr
    nop
    sra        $a2,$v0,0x8
    slti       $a2,$a2,35
    beqz       $a2, .L0000f0e0
    addiu      $a2,$s2,112
    addiu      $a2,$s2,856
.L0000f0e0:
    addiu      $a0,$s1,1024
    jal        qprintf
    ld         $a1,72($s0)
    addiu      $a2,$s2,2024
    lw         $a1,80($s0)
    ld         $a3,88($s0)
    jal        qprintf
    addiu      $a0,$s1,1040
    jal        get_cpu_irr
    nop
    sra        $a3,$v0,0x8
    slti       $a3,$a3,35
    addiu      $a2,$s2,2416
    lui        $a1,0x0
    beqz       $a3, .L0000ef58
    lui        $a0,0x0
    b          .L0000ef58
    addiu      $a2,$s2,2536
.L0000f128:
    b          .L0000f00c
    ld         $s6,112($s0)
.L0000f130:
    addiu      $a0,$s1,960
    jal        qprintf
    move       $a1,$s3
    b          .L0000f034
    addiu      $s3,$s3,1
.L0000f144:
    ld         $s2,16($sp)
    ld         $s3,0($sp)
    ld         $s6,24($sp)
    ld         $s4,40($sp)
    ld         $s0,48($sp)
    ld         $s1,56($sp)
    ld         $ra,32($sp)
    ld         $s5,8($sp)
    ld         $s7,64($sp)
    ld         $s8,72($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L0000f174:
    b          .L0000ef64
    addiu      $a3,$a1,4192
.L0000f17c:
    jal        qprintf
    addiu      $a0,$a0,4168
    b          .L0000efc4
    nop
    addiu      $a2,$s2,2656
.L0000f190:
    lw         $a1,124($s0)
    ld         $a3,112($s0)
    jal        qprintf
    addiu      $a0,$s1,1296
    b          .L0000eff4
    nop
.L0000f1a8:
    lw         $a1,132($s0)
    lw         $a2,136($s0)
    lw         $a3,128($s0)
    lw         $a4,140($s0)
    jal        qprintf
    addiu      $a0,$s1,1200
    b          .L0000eff4
    nop
.L0000f1c8:
    jal        get_cpu_irr
    nop
    sra        $a1,$v0,0x8
    slti       $a1,$a1,35
    bnez       $a1, .L0000f1e4
    addiu      $a2,$s2,2536
    addiu      $a2,$s2,2416
.L0000f1e4:
    lw         $a1,120($s0)
    lw         $a3,128($s0)
    lw         $a4,140($s0)
    ld         $a5,104($s0)
    jal        qprintf
    addiu      $a0,$s1,1248
    b          .L0000eff4
    nop
.L0000f204:
    lui        $s5,0x0
    addiu      $s3,$s5,3072
    lw         $s3,4($s3)
    b          .L0000ee60
    lw         $s5,3072($s5)
.L0000f218:
    bltz       $s5, .L0000f2cc
    move       $s3,$zero
    slti       $t8,$s5,10
    bnez       $t8, .L0000f234
    nop
    b          .L0000f23c
    li         $s5,9
.L0000f234:
    beqz       $s5, .L0000f2ec
    nop
.L0000f23c:
    move       $a1,$s3
.L0000f240:
    lui        $s1,0x0
    move       $a2,$s5
    addiu      $s1,$s1,3448
    jal        qprintf
    addiu      $a0,$s1,792
    b          .L0000eea4
    nop
.L0000f25c:
    bne        $zero, $a1, .L0000f2a4
    li         $s5,9
    b          .L0000ee90
    li         $s3,9
.L0000f26c:
    bne        $zero, $a2, .L0000f2d8
    li         $a0,9
    beqz       $a1, .L0000f2ac
    move       $s5,$s3
    beq        $s3, $a0, .L0000f2fc
    move       $s5,$a0
    b          .L0000f240
    move       $a1,$s3
.L0000f28c:
    slti       $t8,$s5,9
    beqz       $t8, .L0000f2bc
    move       $s3,$a0
    move       $s5,$a0
    b          .L0000ee90
    li         $s3,9
.L0000f2a4:
    blez       $s3, .L0000f304
    move       $s5,$s3
.L0000f2ac:
    beq        $s5, $s3, .L0000ee94
    lui        $s1,0x0
    b          .L0000f240
    move       $a1,$s3
.L0000f2bc:
    beq        $s5, $a0, .L0000f2f4
    nop
    b          .L0000f240
    move       $a1,$s3
.L0000f2cc:
    move       $s3,$zero
    b          .L0000ee90
    move       $s5,$zero
.L0000f2d8:
    slt        $t9,$s5,$s3
    beqz       $t9, .L0000f2ac
    nop
    b          .L0000f2ac
    move       $s5,$s3
.L0000f2ec:
    b          .L0000ee90
    move       $s3,$zero
.L0000f2f4:
    b          .L0000ee90
    move       $s3,$a0
.L0000f2fc:
    b          .L0000ee90
    move       $s5,$a0
.L0000f304:
    beqz       $s3, .L0000f314
    nop
    b          .L0000f23c
    move       $s5,$zero
.L0000f314:
    b          .L0000ee90
    move       $s5,$zero

glabel idbg_ecc_info
    addiu      $sp,$sp,-32
    sd         $s0,8($sp)
    sd         $s2,16($sp)
    lui        $a0,0x0
    sd         $ra,0($sp)
    addiu      $a0,$a0,4808
    jal        qprintf
    sd         $s1,24($sp)
    move       $s2,$zero
    lui        $s0,0x0
    lui        $s1,0x0
    addiu      $s1,$s1,9120
    addiu      $s0,$s0,3072
.L0000f350:
    lw         $a2,40($s0)
    lui        $a0,0x0
    lw         $a1,0($s1)
    jal        qprintf
    addiu      $a0,$a0,4776
    addiu      $s2,$s2,1
    slti       $a1,$s2,8
    addiu      $s1,$s1,4
    bnez       $a1, .L0000f350
    addiu      $s0,$s0,4
    lui        $a0,0x0
    jal        qprintf
    addiu      $a0,$a0,4784
    ld         $ra,0($sp)
    ld         $s0,8($sp)
    ld         $s2,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
    addiu      $sp,$sp,-128
    sd         $s3,32($sp)
    sd         $s4,40($sp)
    sd         $ra,48($sp)
    sd         $s0,56($sp)
    sd         $s1,64($sp)
    sd         $s5,16($sp)
    lw         $at,0($gp)
    move       $v0,$a0
    lui        $a7,0x0
    sd         $s2,0($sp)
    move       $s2,$a1
    move       $s5,$a3
    sd         $s6,8($sp)
    move       $s6,$a4
    beqz       $at, .L0000f56c
    sd         $s7,72($sp)
    lui        $s1,0x0
    addiu      $s1,$s1,0
.L0000f3e8:
    li         $a1,3
    li         $s7,2
    beq        $s2, $a1, .L0000f4fc
    lui        $a0,0x0
    bltz       $v0, .L0000f408
    slti       $t8,$v0,5
    bnez       $t8, .L0000f40c
    nop
.L0000f408:
    li         $v0,5
.L0000f40c:
    beq        $s2, $s7, .L0000f574
    sltiu      $t9,$a2,256
    bnez       $t9, .L0000f470
    li         $a3,256
.L0000f41c:
    beqz       $s6, .L0000f444
    li         $v0,-1
    beq        $s2, $s7, .L0000f528
    lui        $a1,0x0
    addiu      $a1,$a1,4792
.L0000f430:
    move       $a2,$a3
    lui        $a0,0x0
    jalr       $s1
    addiu      $a0,$a0,4824
    li         $v0,-1
.L0000f444:
    ld         $s2,0($sp)
    ld         $s3,32($sp)
    ld         $s6,8($sp)
    ld         $s4,40($sp)
    ld         $s0,56($sp)
    ld         $ra,48($sp)
    ld         $s5,16($sp)
    ld         $s1,64($sp)
    ld         $s7,72($sp)
    jr         $ra
    addiu      $sp,$sp,128
.L0000f470:
    lui        $s4,0x0
    addiu      $s4,$s4,3168
    addiu      $a3,$s4,2856
.L0000f47c:
    sll        $a1,$v0,0x2
    addu       $a1,$s4,$a1
    sll        $s0,$a2,0x3
    lw         $a1,5928($a1)
    addu       $s0,$a3,$s0
    lui        $s3,0x0
    lbu        $t8,4($s0)
    addiu      $s3,$s3,3448
    lw         $s0,0($s0)
    addiu      $a0,$s3,1424
    jalr       $s1
    sd         $t8,24($sp)
    beqz       $s0, .L0000f5e4
    ld         $v0,24($sp)
    li         $a2,3
    beq        $s0, $a2, .L0000f538
    sll        $a1,$s0,0x2
    li         $a3,4
    beq        $s0, $a3, .L0000f534
    li         $a4,6
    beq        $s0, $a4, .L0000f534
    li         $a5,1
    beq        $s0, $a5, .L0000f594
    sll        $a1,$s0,0x2
    beq        $s0, $s7, .L0000f594
    sll        $a1,$s0,0x2
    beqz       $s6, .L0000f4f4
    addiu      $a0,$s3,1440
    jalr       $s1
    move       $a1,$s0
.L0000f4f4:
    b          .L0000f444
    li         $v0,-1
.L0000f4fc:
    bltz       $v0, .L0000f50c
    slti       $a6,$v0,5
    bnez       $a6, .L0000f514
    sltiu      $a7,$a2,128
.L0000f50c:
    li         $v0,5
    sltiu      $a7,$a2,128
.L0000f514:
    bnez       $a7, .L0000f5d0
    li         $s2,2
    beqz       $s6, .L0000f444
    li         $v0,-1
    li         $a3,128
.L0000f528:
    lui        $a1,0x0
    b          .L0000f430
    addiu      $a1,$a1,4800
.L0000f534:
    sll        $a1,$s0,0x2
.L0000f538:
    addu       $a1,$s4,$a1
    bne        $s2, $s7, .L0000f558
    lw         $a1,2824($a1)
    addiu      $a0,$s3,1568
    jalr       $s1
    move       $a2,$s5
    b          .L0000f564
    nop
.L0000f558:
    addiu      $a0,$s3,1616
    jalr       $s1
    move       $a2,$s5
.L0000f564:
    b          .L0000f444
    move       $v0,$zero
.L0000f56c:
    b          .L0000f3e8
    addiu      $s1,$a7,0
.L0000f574:
    sltiu      $t8,$a2,128
    li         $a3,128
    lui        $s4,0x0
    bnez       $t8, .L0000f5dc
    addiu      $s4,$s4,3168
    b          .L0000f41c
    nop
    sll        $a1,$s0,0x2
.L0000f594:
    addu       $a1,$s4,$a1
    bne        $s2, $s7, .L0000f5b8
    lw         $a1,2824($a1)
    addiu      $a0,$s3,1472
    move       $a2,$v0
    jalr       $s1
    move       $a3,$s5
    b          .L0000f5c8
    nop
.L0000f5b8:
    addiu      $a0,$s3,1520
    move       $a2,$v0
    jalr       $s1
    move       $a3,$s5
.L0000f5c8:
    b          .L0000f444
    move       $v0,$zero
.L0000f5d0:
    addiu      $s4,$a0,3168
    b          .L0000f47c
    addiu      $a3,$s4,4904
.L0000f5dc:
    b          .L0000f47c
    addiu      $a3,$s4,4904
.L0000f5e4:
    addiu      $a0,$s3,1664
    jalr       $s1
    move       $a1,$s5
    b          .L0000f444
    li         $v0,-2

glabel softfp_adderr
    move       $a0,$zero
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,5152
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16

glabel softfp_insterr
    move       $a0,$zero
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,5184
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16

glabel ioerror_dump
    addiu      $sp,$sp,-32
    sd         $s1,8($sp)
    andi       $at,$a1,0x4
    move       $t0,$a0
    move       $t1,$a2
    sd         $s0,0($sp)
    move       $s0,$a3
    beqz       $at, .L0000f7bc
    sd         $ra,16($sp)
    lui        $a2,0x0
    addiu      $a2,$a2,5384
.L0000f674:
    andi       $a3,$a1,0x8
    beqz       $a3, .L0000f7c8
    lui        $a3,0x0
    lui        $a3,0x0
    addiu      $a3,$a3,5400
.L0000f688:
    andi       $a4,$a1,0x1
    beqz       $a4, .L0000f7d0
    lui        $a4,0x0
    lui        $a4,0x0
    addiu      $a4,$a4,5408
.L0000f69c:
    andi       $a5,$a1,0x2
    beqz       $a5, .L0000f7d8
    lui        $a5,0x0
    lui        $a5,0x0
    addiu      $a5,$a5,5416
.L0000f6b0:
    move       $a1,$t0
    sll        $a7,$t1,0x2
    lui        $a6,0x0
    lui        $s1,0x0
    addiu      $a6,$a6,10344
    addiu      $s1,$s1,3448
    addu       $a6,$a6,$a7
    addiu      $a0,$s1,1768
    jal        printf
    lw         $a6,0($a6)
    lw         $a0,0($s0)
    srl        $a7,$a0,0x1f
    beqz       $a7, .L0000f700
    sll        $t0,$a0,0x1
    addiu      $a1,$s1,1816
    lh         $a2,4($s0)
    jal        printf
    addiu      $a0,$s1,1800
    lw         $a0,0($s0)
    sll        $t0,$a0,0x1
.L0000f700:
    bltz       $t0, .L0000f7e0
.L0000f704:
    sll        $t1,$a0,0x2
    bltz       $t1, .L0000f7f8
    addiu      $a1,$s1,1848
.L0000f710:
    sll        $t2,$a0,0x3
    bltz       $t2, .L0000f80c
.L0000f718:
    sll        $t3,$a0,0x4
    bltz       $t3, .L0000f828
.L0000f720:
    sll        $t8,$a0,0x5
    bltz       $t8, .L0000f844
.L0000f728:
    sll        $t9,$a0,0x6
    bltz       $t9, .L0000f860
    addiu      $a1,$s1,1864
.L0000f734:
    sll        $ra,$a0,0x7
    bltz       $ra, .L0000f874
    addiu      $a1,$s1,1880
.L0000f740:
    sll        $at,$a0,0x8
    bltz       $at, .L0000f888
    addiu      $a1,$s1,1896
.L0000f74c:
    sll        $v0,$a0,0x9
    bltz       $v0, .L0000f89c
.L0000f754:
    sll        $v1,$a0,0xa
    bltz       $v1, .L0000f8b8
.L0000f75c:
    sll        $a1,$a0,0xb
    bltz       $a1, .L0000f8d4
.L0000f764:
    sll        $a2,$a0,0xc
    bltz       $a2, .L0000f8f0
.L0000f76c:
    sll        $a3,$a0,0xd
    bltz       $a3, .L0000f90c
    addiu      $a0,$s1,1800
    lh         $a1,10($s0)
.L0000f77c:
    lui        $a2,0x0
    addiu      $a2,$a2,0
    sll        $a3,$a1,0x3
    addu       $a2,$a2,$a3
    lw         $a2,4($a2)
    addiu      $a0,$s1,1912
    jal        printf
    lw         $a2,676($a2)
    ld         $s0,0($sp)
    lui        $a0,0x0
    ld         $s1,8($sp)
    jal        printf
    addiu      $a0,$a0,4168
    ld         $ra,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000f7bc:
    lui        $a2,0x0
    b          .L0000f674
    addiu      $a2,$a2,5392
.L0000f7c8:
    b          .L0000f688
    addiu      $a3,$a3,5392
.L0000f7d0:
    b          .L0000f69c
    addiu      $a4,$a4,5392
.L0000f7d8:
    b          .L0000f6b0
    addiu      $a5,$a5,5392
.L0000f7e0:
    addiu      $a1,$s1,1832
    lh         $a2,6($s0)
    jal        printf
    addiu      $a0,$s1,1800
    b          .L0000f704
    lw         $a0,0($s0)
.L0000f7f8:
    lh         $a2,8($s0)
    jal        printf
    addiu      $a0,$s1,1800
    b          .L0000f710
    lw         $a0,0($s0)
.L0000f80c:
    addiu      $a0,$s1,1800
    lui        $a1,0x0
    lh         $a2,10($s0)
    jal        printf
    addiu      $a1,$a1,5424
    b          .L0000f718
    lw         $a0,0($s0)
.L0000f828:
    addiu      $a0,$s1,1800
    lui        $a1,0x0
    lh         $a2,12($s0)
    jal        printf
    addiu      $a1,$a1,5432
    b          .L0000f720
    lw         $a0,0($s0)
.L0000f844:
    addiu      $a0,$s1,1800
    lui        $a1,0x0
    lh         $a2,14($s0)
    jal        printf
    addiu      $a1,$a1,5440
    b          .L0000f728
    lw         $a0,0($s0)
.L0000f860:
    lw         $a2,16($s0)
    jal        printf
    addiu      $a0,$s1,1800
    b          .L0000f734
    lw         $a0,0($s0)
.L0000f874:
    lw         $a2,20($s0)
    jal        printf
    addiu      $a0,$s1,1800
    b          .L0000f740
    lw         $a0,0($s0)
.L0000f888:
    lw         $a2,24($s0)
    jal        printf
    addiu      $a0,$s1,1800
    b          .L0000f74c
    lw         $a0,0($s0)
.L0000f89c:
    addiu      $a0,$s1,1800
    lui        $a1,0x0
    lw         $a2,28($s0)
    jal        printf
    addiu      $a1,$a1,5448
    b          .L0000f754
    lw         $a0,0($s0)
.L0000f8b8:
    addiu      $a0,$s1,1800
    lui        $a1,0x0
    lw         $a2,32($s0)
    jal        printf
    addiu      $a1,$a1,5456
    b          .L0000f75c
    lw         $a0,0($s0)
.L0000f8d4:
    addiu      $a0,$s1,1800
    lui        $a1,0x0
    lw         $a2,36($s0)
    jal        printf
    addiu      $a1,$a1,5464
    b          .L0000f764
    lw         $a0,0($s0)
.L0000f8f0:
    addiu      $a0,$s1,1800
    lui        $a1,0x0
    lw         $a2,40($s0)
    jal        printf
    addiu      $a1,$a1,5472
    b          .L0000f76c
    lw         $a0,0($s0)
.L0000f90c:
    lui        $a1,0x0
    lw         $a2,44($s0)
    jal        printf
    addiu      $a1,$a1,5476
    b          .L0000f77c
    lh         $a1,10($s0)

glabel error_mark_page
    li         $a0,5
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,5480
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel error_reclaim_page
    li         $a0,5
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,5512
    ld         $ra,0($sp)
    move       $v0,$zero
    jr         $ra
    addiu      $sp,$sp,16

glabel tlb_to_phys
    li         $v0,1
    lui        $a6,0xc000
    lui        $a5,0xa000
    addiu      $sp,$sp,-32
    lui        $at,0x8000
    sd         $s0,8($sp)
    sll        $s0,$a0,0x0
    lui        $t0,0xff60
    sd         $s2,0($sp)
    sltu       $at,$s0,$at
    move       $s2,$a2
    sd         $s1,16($sp)
    move       $s1,$a1
    sd         $ra,24($sp)
    bnez       $at, .L0000f9d0
    sltu       $a7,$s0,$t0
    lui        $a1,0x1fff
    sltu       $v1,$s0,$a5
    li         $a0,1
    beqz       $v1, .L0000f9dc
    ori        $a2,$a1,0xffff
    and        $a2,$s0,$a2
    b          .L0000f9f8
    sw         $a2,0($s1)
.L0000f9d0:
    sltu       $a0,$s0,$a6
    sltu       $a1,$s0,$a5
    bnez       $a1, .L0000fa14
.L0000f9dc:
    sltu       $a2,$s0,$a6
    lui        $a1,0x1fff
    move       $a0,$zero
    ori        $a1,$a1,0xffff
    beqz       $a2, .L0000fa1c
    and        $a1,$s0,$a1
    sw         $a1,0($s1)
.L0000f9f8:
    sw         $a0,0($s2)
.L0000f9fc:
    ld         $ra,24($sp)
    ld         $s2,0($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0000fa14:
    bnez       $a0, .L0000fa54
    nop
.L0000fa1c:
    beqz       $a7, .L0000fa54
    move       $a0,$zero
.L0000fa24:
    jal        tlbgetlo
    move       $a1,$s0
    li         $a2,-1
    sra        $a1,$v0,0x6
    beq        $v0, $a2, .L0000fa64
    andi       $a0,$s0,0xfff
    sll        $a2,$a1,0xc
    addu       $a2,$a0,$a2
    sw         $a2,0($s1)
    li         $v0,1
    b          .L0000f9fc
    sw         $v0,0($s2)
.L0000fa54:
    jal        tlbgetpid
    nop
    b          .L0000fa24
    move       $a0,$v0
.L0000fa64:
    b          .L0000f9fc
    move       $v0,$zero

glabel r_phys_word_erl
    jr         $ra
    lw         $v0,0($a0)
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    li         $s0,1
    beqz       $a0, .L0000fad8
    sd         $ra,8($sp)
    beq        $a0, $s0, .L0000fabc
    nop
    jal        get_r4k_config
    nop
    sra        $a0,$v0,0x16
    andi       $a0,$a0,0x3
    addiu      $a0,$a0,4
    sllv       $a0,$s0,$a0
.L0000faa8:
    ld         $ra,8($sp)
    move       $v0,$a0
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L0000fabc:
    jal        get_r4k_config
    nop
    sra        $a0,$v0,0x4
    and        $a0,$s0,$a0
    addiu      $a0,$a0,4
    b          .L0000faa8
    sllv       $a0,$s0,$a0
.L0000fad8:
    jal        get_r4k_config
    nop
    sra        $a0,$v0,0x5
    and        $a0,$s0,$a0
    addiu      $a0,$a0,4
    b          .L0000faa8
    sllv       $a0,$s0,$a0
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    jal        get_r4k_config
    sd         $a0,0($sp)
    dsll32     $at,$v0,0xe
    bgez       $at, .L0000fb4c
    ld         $v0,0($sp)
    beqz       $v0, .L0000fb38
    nop
    jal        .text
    li         $a0,1
    addiu      $a0,$v0,-1
    nor        $a0,$a0,$zero
.L0000fb28:
    ld         $ra,8($sp)
    move       $v0,$a0
    jr         $ra
    addiu      $sp,$sp,16
.L0000fb38:
    jal        .text
    move       $a0,$zero
    addiu      $a0,$v0,-1
    b          .L0000fb28
    nor        $a0,$a0,$zero
.L0000fb4c:
    jal        .text
    li         $a0,3
    addiu      $a0,$v0,-1
    b          .L0000fb28
    nor        $a0,$a0,$zero

glabel ecc_same_cache_block
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a1
    jal        .text
    sd         $a2,16($sp)
    ld         $a0,16($sp)
    ld         $ra,0($sp)
    and        $v1,$v0,$s8
    and        $v0,$v0,$a0
    ld         $s8,8($sp)
    addiu      $sp,$sp,32
    xor        $v0,$v1,$v0
    jr         $ra
    sltiu      $v0,$v0,1

glabel decode_inst
    srl        $v0,$a1,0x15
    andi       $v0,$v0,0x1f
    beqz       $v0, .L0000fbb8
    move       $a7,$zero
    sll        $a7,$v0,0x3
    addu       $a7,$a0,$a7
    ld         $a7,-8($a7)
.L0000fbb8:
    sll        $v0,$a1,0x10
    lui        $a0,0x0
    srl        $a5,$a1,0x1a
    addiu      $a0,$a0,6360
    addiu      $a5,$a5,-26
    sra        $v0,$v0,0x10
    sltiu      $a6,$a5,38
    daddu      $v0,$a7,$v0
    sll        $a5,$a5,0x2
    sd         $v0,0($a3)
    beqz       $a6, .L0000fbf4
    addu       $a0,$a0,$a5
    lw         $v1,0($a0)
    jr         $v1
    li         $t0,8
.L0000fbf4:
    move       $v0,$zero
    jr         $ra
    nop
    li         $a1,8
    sw         $a1,0($a4)
    li         $a0,1
    b          .L0000fc2c
    sw         $a0,0($a2)
    andi       $a6,$v0,0x7
    li         $a5,8
    dsubu      $a5,$a5,$a6
    sw         $a5,0($a4)
    li         $a3,1
    sw         $a3,0($a2)
.L0000fc2c:
    jr         $ra
    li         $v0,1
    sw         $t0,0($a4)
    li         $a7,2
    b          .L0000fc2c
    sw         $a7,0($a2)
    li         $t2,8
    sw         $t2,0($a4)
    li         $t1,2
    b          .L0000fc2c
    sw         $t1,0($a2)
    li         $t8,4
    sw         $t8,0($a4)
    li         $t3,2
    b          .L0000fc2c
    sw         $t3,0($a2)
    li         $at,8
    sw         $at,0($a4)
    li         $t9,1
    b          .L0000fc2c
    sw         $t9,0($a2)
    li         $v1,4
    sw         $v1,0($a4)
    li         $v0,1
    b          .L0000fc2c
    sw         $v0,0($a2)
    li         $a3,1
    andi       $a1,$v0,0x3
    daddu      $a1,$a1,$a3
    sw         $a1,0($a4)
    li         $a0,2
    b          .L0000fc2c
    sw         $a0,0($a2)
    li         $a7,1
    andi       $a6,$v0,0x7
    daddu      $a6,$a6,$a7
    sw         $a6,0($a4)
    li         $a5,2
    b          .L0000fc2c
    sw         $a5,0($a2)
    andi       $t2,$v0,0x7
    li         $t1,8
    dsubu      $t1,$t1,$t2
    sw         $t1,0($a4)
    li         $t0,2
    b          .L0000fc2c
    sw         $t0,0($a2)
    li         $t8,4
    sw         $t8,0($a4)
    li         $t3,2
    b          .L0000fc2c
    sw         $t3,0($a2)
    andi       $v1,$v0,0x3
    li         $at,4
    dsubu      $at,$at,$v1
    sw         $at,0($a4)
    li         $t9,2
    b          .L0000fc2c
    sw         $t9,0($a2)
    li         $a0,2
    sw         $a0,0($a4)
    b          .L0000fc2c
    sw         $a0,0($a2)
    li         $a3,1
    sw         $a3,0($a4)
    li         $a1,2
    b          .L0000fc2c
    sw         $a1,0($a2)
    li         $a6,4
    sw         $a6,0($a4)
    li         $a5,1
    b          .L0000fc2c
    sw         $a5,0($a2)
    li         $t1,1
    andi       $t0,$v0,0x3
    daddu      $t0,$t0,$t1
    sw         $t0,0($a4)
    li         $a7,1
    b          .L0000fc2c
    sw         $a7,0($a2)
    li         $t3,4
    sw         $t3,0($a4)
    li         $t2,1
    b          .L0000fc2c
    sw         $t2,0($a2)
    andi       $at,$v0,0x3
    li         $t9,4
    dsubu      $t9,$t9,$at
    sw         $t9,0($a4)
    li         $t8,1
    b          .L0000fc2c
    sw         $t8,0($a2)
    li         $v1,2
    sw         $v1,0($a4)
    li         $v0,1
    b          .L0000fc2c
    sw         $v0,0($a2)
    li         $a0,1
    sw         $a0,0($a4)
    b          .L0000fc2c
    sw         $a0,0($a2)
    li         $a5,1
    andi       $a3,$v0,0x7
    daddu      $a3,$a3,$a5
    sw         $a3,0($a4)
    li         $a1,1
    b          .L0000fc2c
    sw         $a1,0($a2)

glabel map_physaddr
    lui        $v1,0x2000
    sltu       $v1,$a0,$v1
    addiu      $sp,$sp,-32
    lui        $v0,0xa000
    lw         $a5,-32532($gp)
    bnez       $v1, .L0000fe78
    or         $v0,$a0,$v0
    sd         $a0,8($sp)
    beqz       $a5, .L0000fe80
    sd         $ra,16($sp)
.L0000fe04:
    ld         $a1,8($sp)
    lw         $a2,0($gp)
    srl        $a4,$a1,0xc
    and        $a2,$a2,$a4
    sll        $a2,$a2,0xc
    andi       $a1,$a1,0xfff
    addu       $a2,$a5,$a2
    lui        $a6,0x4000
    addu       $a1,$a1,$a2
    sll        $a4,$a4,0x6
    addu       $a3,$a1,$a6
    lw         $a5,0($gp)
    srl        $a3,$a3,0xc
    sll        $a3,$a3,0x2
    ori        $a6,$a6,0x17
    addu       $a5,$a5,$a3
    or         $a4,$a4,$a6
    sw         $a4,0($a5)
    lw         $a2,0($gp)
    addu       $a2,$a2,$a3
    lw         $a2,0($a2)
    move       $a0,$zero
    sd         $a1,0($sp)
    jal        tlbdropin
    dsll32     $a2,$a2,0x0
    ld         $ra,16($sp)
    ld         $v0,0($sp)
.L0000fe70:
    jr         $ra
    addiu      $sp,$sp,32
.L0000fe78:
    b          .L0000fe70
    nop
.L0000fe80:
    lui        $a1,0x2
    lw         $a0,0($gp)
    move       $a2,$zero
    ori        $a1,$a1,0x10
    jal        kvalloc
    addiu      $a0,$a0,1
    move       $a5,$v0
    b          .L0000fe04
    sw         $v0,-32532($gp)

glabel unmap_physaddr
    lui        $at,0xa000
    move       $a3,$a0
    sltu       $at,$a0,$at
    addiu      $sp,$sp,-16
    lui        $a2,0xc000
    sltu       $a2,$a0,$a2
    bnez       $at, .L0000fed4
    sd         $ra,0($sp)
    beqz       $a2, .L0000fed4
    ld         $ra,0($sp)
.L0000fecc:
    jr         $ra
    addiu      $sp,$sp,16
.L0000fed4:
    lui        $a2,0x4000
    srl        $a1,$a3,0xc
    addu       $a2,$a3,$a2
    lw         $v1,0($gp)
    srl        $a2,$a2,0xc
    sll        $a2,$a2,0x2
    move       $a0,$zero
    addu       $v1,$v1,$a2
    li         $v0,1
    jal        unmaptlb
    sw         $v0,0($v1)
    b          .L0000fecc
    ld         $ra,0($sp)
    lui        $at,0xb400
    ld         $a4,72($at)
    sd         $a4,0($gp)
    ld         $a3,64($at)
    sd         $a3,0($gp)
    ld         $a2,592($at)
    sd         $a2,0($gp)
    ld         $a1,600($at)
    sd         $a1,0($gp)
    ld         $a0,88($at)
    sd         $a0,0($gp)
    ld         $v1,616($at)
    sd         $v1,0($gp)
    ld         $v0,608($at)
    sd         $v0,0($gp)
    sd         $zero,72($at)
    jr         $ra
    sd         $zero,592($at)

glabel ecc_error_correction
    dsll32     $at,$a3,0xa
    addiu      $sp,$sp,-32
    bgez       $at, .L0000ff6c
    move       $v0,$a0
    move       $v0,$zero
.L0000ff64:
    jr         $ra
    addiu      $sp,$sp,32
.L0000ff6c:
    lui        $a5,0x190
    lui        $v1,0x90
    and        $a5,$a3,$a5
    sd         $a0,16($sp)
    lui        $a4,0x110
    move       $v0,$zero
    beq        $a5, $v1, .L0000ff9c
    sd         $ra,24($sp)
    beq        $a5, $a4, .L0000ff9c
    sd         $ra,24($sp)
    b          .L0000ff64
    nop
.L0000ff9c:
    jal        splecc
    nop
    ld         $a0,16($sp)
    li         $a1,-8
    and        $a0,$a0,$a1
    lui        $a1,0x4000
    sd         $v0,0($sp)
    jal        map_physaddr
    or         $a0,$a0,$a1
    move       $a0,$v0
    jal        scrub_memory
    sd         $v0,8($sp)
    ld         $a0,0($sp)
    lui        $a2,0xb400
    jal        splxecc
    sd         $zero,592($a2)
    jal        unmap_physaddr
    ld         $a0,8($sp)
    ld         $ra,24($sp)
    b          .L0000ff64
    li         $v0,1
    lui        $a3,0x0
    move       $v0,$zero
    addiu      $a3,$a3,6296
    lbu        $a4,0($a3)
.L00010000:
    beq        $a0, $a4, .L0001001c
    addiu      $a3,$a3,1
    addiu      $v0,$v0,1
    slti       $a5,$v0,63
    bnezl      $a5, .L00010000
    lbu        $a4,0($a3)
    li         $v0,-1
.L0001001c:
    jr         $ra
    nop
    beqz       $a0, .L00010044
    move       $v0,$zero
    move       $v0,$zero
.L00010030:
    negu       $at,$a0
    nor        $at,$at,$zero
    and        $a0,$a0,$at
    bnez       $a0, .L00010030
    addiu      $v0,$v0,1
.L00010044:
    jr         $ra
    nop
    beqz       $a0, .L00010094
    li         $a3,1
    andi       $at,$a0,0x1
    bnez       $at, .L00010088
    move       $v0,$zero
.L00010060:
    sll        $a3,$a3,0x1
    and        $v1,$a0,$a3
    addiu      $v0,$v0,1
    bnez       $v1, .L00010080
    sll        $a3,$a3,0x1
    and        $a1,$a0,$a3
    beqz       $a1, .L00010060
    addiu      $v0,$v0,1
.L00010080:
    jr         $ra
    nop
.L00010088:
    move       $v0,$zero
    jr         $ra
    nop
.L00010094:
    move       $v0,$zero
    jr         $ra
    nop

glabel log_ecc_err
    addiu      $sp,$sp,-64
    sll        $a0,$a0,0x0
    sd         $s1,16($sp)
    move       $s1,$a2
    sd         $s0,8($sp)
    move       $s0,$a1
    li         $a1,-32
    sd         $ra,0($sp)
    jal        addr_to_bank
    and        $a0,$a0,$a1
    lui        $a0,0x0
    lui        $a5,0x0
    sd         $s4,40($sp)
    lui        $s4,0x0
    sd         $s5,48($sp)
    andi       $a2,$s0,0xffff
    sd         $s2,24($sp)
    bltz       $v0, .L0001021c
    sltiu      $a2,$a2,1
    addiu      $s4,$s4,6296
    lw         $a4,6624($a0)
    sw         $a4,4384($a5)
    addiu      $t8,$a0,6624
    addiu      $s5,$a5,4384
    lbu        $a3,6($t8)
    sb         $a3,6($s5)
    li         $a3,-2
    lhu        $t8,4($t8)
    and        $a3,$v0,$a3
    sh         $t8,4($s5)
    addu       $a2,$a2,$a3
    addiu      $a2,$a2,49
    sb         $a2,5($s5)
.L00010124:
    andi       $a6,$v0,0x1
    lui        $a1,0x0
    lui        $a0,0x0
    beqz       $a6, .L00010248
    sd         $s3,32($sp)
    addiu      $s3,$a0,6632
.L0001013c:
    bnez       $s1, .L000101e4
    li         $a0,56
    andi       $a7,$s0,0xffff
    beqz       $a7, .L00010250
    move       $s1,$zero
.L00010150:
    beqz       $s0, .L00010258
    andi       $s2,$s0,0xff
    bnez       $s2, .L0001017c
    nop
    move       $s1,$zero
    dsrl       $s0,$s0,0x8
.L00010168:
    addiu      $s1,$s1,1
    beqz       $s0, .L00010264
    andi       $s2,$s0,0xff
    beqz       $s2, .L00010168
    dsrl       $s0,$s0,0x8
.L0001017c:
    jal        .text
    move       $a0,$s2
    slti       $t0,$v0,2
    bnez       $t0, .L000101ac
    nop
    jal        .text
    move       $a0,$s2
    lui        $a5,0x0
    sll        $a6,$s1,0x6
    addiu      $a5,$a5,6648
    b          .L000101c4
    addu       $a6,$v0,$a6
.L000101ac:
    jal        .text
    move       $a0,$s2
    sll        $a6,$s1,0x3
    lui        $a5,0x0
    addiu      $a5,$a5,6656
    addu       $a6,$v0,$a6
.L000101c4:
    li         $a0,55
    li         $a1,1
    addiu      $a2,$s4,232
    move       $a3,$s3
    jal        cmn_err_tag
    move       $a4,$s5
    b          .L000101f8
    nop
.L000101e4:
    li         $a1,1
    addiu      $a2,$s4,288
    move       $a3,$s3
    jal        cmn_err_tag
    move       $a4,$s5
.L000101f8:
    ld         $s2,24($sp)
    ld         $s3,32($sp)
    ld         $s4,40($sp)
    ld         $ra,0($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s5,48($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0001021c:
    lui        $s4,0x0
    addiu      $s4,$s4,6296
    lw         $a6,224($s4)
    lbu        $a7,228($s4)
    lui        $t1,0x0
    ld         $t0,216($s4)
    addiu      $s5,$t1,4384
    sd         $t0,4384($t1)
    sb         $a7,12($s5)
    b          .L00010124
    sw         $a6,8($s5)
.L00010248:
    b          .L0001013c
    addiu      $s3,$a1,6640
.L00010250:
    b          .L00010150
    dsrl       $s0,$s0,0x10
.L00010258:
    move       $s1,$zero
    b          .L0001017c
    nop
.L00010264:
    b          .L0001017c
    andi       $s2,$s0,0xff

glabel dobuserre
    li         $at,1
    addiu      $sp,$sp,-16
    bne        $a2, $at, .L00010284
    sd         $ra,0($sp)
    b          .L000102a4
    move       $a0,$zero
.L00010284:
    lui        $v0,0xb400
    ld         $v1,616($v0)
    sd         $v1,0($gp)
    ld         $v0,608($v0)
    jal        .text
    sd         $v0,0($gp)
    ld         $ra,0($sp)
    move       $a0,$v0
.L000102a4:
    move       $v0,$a0
    jr         $ra
    addiu      $sp,$sp,16

glabel dobuserr
    addiu      $sp,$sp,-32
    sd         $a1,24($sp)
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        .text
    sd         $a2,16($sp)
    ld         $a1,24($sp)
    move       $a0,$s8
    jal        .text
    ld         $a2,16($sp)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel print_buserr_rev1
    addiu      $sp,$sp,-48
    sd         $a3,8($sp)
    sd         $s2,32($sp)
    lh         $a4,0($gp)
    sd         $s1,16($sp)
    move       $s1,$a0
    move       $s2,$a1
    sd         $s0,24($sp)
    andi       $s0,$a0,0x5
    bnez       $a4, .L0001037c
    sd         $ra,40($sp)
    bnez       $s0, .L00010380
    andi       $t2,$s1,0x4
.L00010320:
    andi       $s0,$s1,0x2
    lui        $a7,0x0
    bnez       $a4, .L000103d0
    addiu      $a7,$a7,6296
    beqz       $s0, .L00010368
    ld         $ra,40($sp)
.L00010338:
    addiu      $a3,$a7,392
.L0001033c:
    li         $a0,6
    addiu      $a1,$a7,456
    move       $a2,$s0
    jal        cmn_err
    move       $a4,$s2
    beqz       $s0, .L00010368
    ld         $ra,40($sp)
    ld         $t1,8($sp)
    li         $t0,1
    sw         $t0,0($t1)
    ld         $ra,40($sp)
.L00010368:
    ld         $s1,16($sp)
    ld         $s0,24($sp)
    ld         $s2,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0001037c:
    andi       $t2,$s1,0x4
.L00010380:
    beqz       $t2, .L000103e0
    sd         $a2,0($sp)
    lui        $a7,0x0
    addiu      $a7,$a7,6296
    addiu      $a3,$a7,368
.L00010394:
    andi       $t0,$s1,0x1
    beqz       $t0, .L000103f4
    lui        $a4,0x0
    addiu      $a4,$a7,392
.L000103a4:
    addiu      $a1,$a7,416
    li         $a0,6
    move       $a2,$s0
    jal        cmn_err
    move       $a5,$s2
    beqz       $s0, .L000103c8
    ld         $t2,0($sp)
    li         $t1,1
    sw         $t1,0($t2)
.L000103c8:
    b          .L00010320
    lh         $a4,0($gp)
.L000103d0:
    bnez       $s0, .L00010338
    lui        $a3,0x0
    b          .L0001033c
    addiu      $a3,$a3,6792
.L000103e0:
    lui        $a7,0x0
    addiu      $a7,$a7,6296
    lui        $a3,0x0
    b          .L00010394
    addiu      $a3,$a3,6792
.L000103f4:
    b          .L000103a4
    addiu      $a4,$a4,6792

glabel print_buserr_rev0
    addiu      $sp,$sp,-64
    sd         $a3,32($sp)
    lh         $a4,0($gp)
    sd         $s0,48($sp)
    move       $t2,$a1
    move       $s0,$a0
    sd         $s1,40($sp)
    andi       $s1,$a0,0x217
    bnez       $a4, .L00010458
    sd         $ra,56($sp)
    bnez       $s1, .L0001045c
    andi       $t3,$s0,0x200
.L0001042c:
    andi       $s1,$s0,0x1e0
    lui        $t1,0x0
    bnez       $a4, .L000104f4
    addiu      $t1,$t1,6296
    bnez       $s1, .L000104f8
    andi       $a1,$s0,0x100
.L00010444:
    ld         $ra,56($sp)
    ld         $s1,40($sp)
    ld         $s0,48($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00010458:
    andi       $t3,$s0,0x200
.L0001045c:
    beqz       $t3, .L00010554
    sd         $a2,24($sp)
    lui        $t1,0x0
    addiu      $t1,$t1,6296
    addiu      $a3,$t1,504
.L00010470:
    andi       $t3,$s0,0x10
    beqz       $t3, .L00010568
    addiu      $a4,$t1,528
.L0001047c:
    andi       $t8,$s0,0x8
    beqz       $t8, .L00010574
    lui        $a5,0x0
    addiu      $a5,$t1,552
.L0001048c:
    andi       $t9,$s0,0x4
    beqz       $t9, .L0001057c
    lui        $a6,0x0
    addiu      $a6,$t1,576
.L0001049c:
    andi       $ra,$s0,0x2
    beqz       $ra, .L00010584
    addiu      $a7,$t1,600
.L000104a8:
    andi       $at,$s0,0x1
    beqz       $at, .L00010590
    lui        $t3,0x0
    addiu      $t3,$t1,624
    sd         $t2,16($sp)
.L000104bc:
    sw         $t3,4($sp)
    move       $a2,$s1
    addiu      $a1,$t1,656
    ld         $v0,16($sp)
    li         $a0,6
    jal        cmn_err
    sd         $v0,8($sp)
    beqz       $s1, .L000104ec
    ld         $t2,16($sp)
    ld         $a0,24($sp)
    li         $v1,1
    sw         $v1,0($a0)
.L000104ec:
    b          .L0001042c
    lh         $a4,0($gp)
.L000104f4:
    andi       $a1,$s0,0x100
.L000104f8:
    beqz       $a1, .L0001059c
    lui        $a3,0x0
    addiu      $a3,$t1,528
.L00010504:
    andi       $a2,$s0,0x80
    beqz       $a2, .L000105a4
    addiu      $a4,$t1,552
.L00010510:
    andi       $a5,$s0,0x40
    beqz       $a5, .L000105b0
    addiu      $a5,$t1,576
.L0001051c:
    andi       $a6,$s0,0x20
    beqz       $a6, .L000105bc
    lui        $a6,0x0
    addiu      $a6,$t1,368
.L0001052c:
    addiu      $a1,$t1,704
    li         $a0,6
    move       $a2,$s1
    jal        cmn_err
    move       $a7,$t2
    beqz       $s1, .L00010444
    ld         $t0,32($sp)
    li         $a7,1
    b          .L00010444
    sw         $a7,0($t0)
.L00010554:
    lui        $t1,0x0
    addiu      $t1,$t1,6296
    lui        $a3,0x0
    b          .L00010470
    addiu      $a3,$a3,6792
.L00010568:
    lui        $a4,0x0
    b          .L0001047c
    addiu      $a4,$a4,6792
.L00010574:
    b          .L0001048c
    addiu      $a5,$a5,6792
.L0001057c:
    b          .L0001049c
    addiu      $a6,$a6,6792
.L00010584:
    lui        $a7,0x0
    b          .L000104a8
    addiu      $a7,$a7,6792
.L00010590:
    sd         $t2,16($sp)
    b          .L000104bc
    addiu      $t3,$t3,6792
.L0001059c:
    b          .L00010504
    addiu      $a3,$a3,6792
.L000105a4:
    lui        $a4,0x0
    b          .L00010510
    addiu      $a4,$a4,6792
.L000105b0:
    lui        $a5,0x0
    b          .L0001051c
    addiu      $a5,$a5,6792
.L000105bc:
    b          .L0001052c
    addiu      $a6,$a6,6792
    lui        $a3,0xe70
    lui        $at,0x10
    and        $a3,$a0,$a3
    move       $a2,$a0
    addiu      $sp,$sp,-16
    move       $a5,$a1
    beq        $a3, $at, .L00010640
    sd         $ra,0($sp)
    lui        $a6,0x20
    dsll32     $a0,$a0,0x7
    lui        $a1,0x0
    beq        $a3, $a6, .L000106d4
    move       $a4,$a1
    dsll32     $a1,$a2,0x7
    lui        $a0,0x200
    lui        $t3,0x800
    lui        $a4,0x0
    lui        $a7,0x40
    lui        $t1,0x0
    move       $t0,$a4
    beq        $a3, $a7, .L000106f8
    move       $t2,$a4
    lui        $a1,0x400
    beq        $a3, $a0, .L00010720
    addiu      $a7,$a4,6296
    beq        $a3, $a1, .L00010734
    nop
    beq        $a3, $t3, .L00010748
    addiu      $a7,$t1,6296
    b          .L00010668
    addiu      $a3,$a7,752
.L00010640:
    dsll32     $t0,$a0,0x7
    lui        $a1,0x0
    lui        $a0,0x0
    bgez       $t0, .L00010660
    addiu      $a7,$a0,6296
    addiu      $a3,$a7,984
    b          .L00010668
    nop
.L00010660:
    addiu      $a7,$a1,6296
    addiu      $a3,$a7,1008
.L00010668:
    lui        $a0,0x7
.L0001066c:
    ori        $a0,$a0,0x8080
    and        $a0,$a2,$a0
    li         $t1,128
    beq        $a0, $t1, .L000106bc
    addiu      $a4,$a7,1120
    lui        $a1,0x1
    li         $a6,0x8000
    lui        $t1,0x4
    addiu      $a4,$a7,1104
    beq        $a0, $a6, .L000106f0
    lui        $t0,0x2
    beq        $a0, $a1, .L00010718
    addiu      $a4,$a7,1088
    addiu      $a4,$a7,1072
    beq        $a0, $t0, .L0001072c
    nop
    beq        $a0, $t1, .L0001073c
    addiu      $a4,$a7,1032
    b          .L000106c0
    addiu      $a1,$a7,1136
.L000106bc:
    addiu      $a1,$a7,1136
.L000106c0:
    jal        cmn_err
    li         $a0,6
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L000106d4:
    addiu      $a7,$a1,6296
    bgez       $a0, .L000106e8
    addiu      $a3,$a7,960
    addiu      $a7,$a1,6296
    addiu      $a3,$a7,936
.L000106e8:
    b          .L0001066c
    lui        $a0,0x7
.L000106f0:
    b          .L000106c0
    addiu      $a1,$a7,1136
.L000106f8:
    bgez       $a1, .L0001070c
    addiu      $a7,$a4,6296
    addiu      $a7,$t1,6296
    b          .L00010710
    addiu      $a3,$a7,872
.L0001070c:
    addiu      $a3,$a7,904
.L00010710:
    b          .L0001066c
    lui        $a0,0x7
.L00010718:
    b          .L000106c0
    addiu      $a1,$a7,1136
.L00010720:
    addiu      $a7,$a4,6296
    b          .L00010668
    addiu      $a3,$a7,840
.L0001072c:
    b          .L000106c0
    addiu      $a1,$a7,1136
.L00010734:
    b          .L00010668
    addiu      $a3,$a7,808
.L0001073c:
    addiu      $a4,$a7,1056
    b          .L000106c0
    addiu      $a1,$a7,1136
.L00010748:
    addiu      $a7,$t1,6296
    b          .L00010668
    addiu      $a3,$a7,776
    addiu      $sp,$sp,-80
    sw         $zero,4($sp)
    sw         $zero,0($sp)
    sd         $s2,48($sp)
    sd         $ra,56($sp)
    sd         $s3,24($sp)
    lw         $at,0($gp)
    li         $v0,1
    sd         $s4,32($sp)
    move       $s4,$a0
    move       $s3,$a1
    sd         $s1,40($sp)
    move       $s1,$a2
    beqz       $at, .L00010940
    sd         $s0,64($sp)
    lw         $v1,-23888($zero)
    beqz       $v1, .L000108f4
    nop
    jal        _r4600sc_disable_scache
    nop
    move       $s2,$v0
.L000107a8:
    jal        get_crimerev
    nop
    ld         $a0,0($gp)
    beqz       $v0, .L00010948
    ld         $a1,0($gp)
    addiu      $a3,$sp,4
    jal        print_buserr_rev1
    addiu      $a2,$sp,0
    lh         $a0,0($gp)
.L000107cc:
    bnez       $a0, .L000107e8
    ld         $v0,0($gp)
    lui        $a1,0x7
    ori        $a1,$a1,0x8080
    and        $a1,$v0,$a1
    beqz       $a1, .L00010818
    lui        $s0,0x0
.L000107e8:
    move       $a0,$v0
    jal        .text
    ld         $a1,0($gp)
    ld         $v0,0($gp)
    lui        $a2,0xe00
    and        $a2,$v0,$a2
    beqz       $a2, .L00010970
    dsll32     $a3,$v0,0xe
    bgez       $a3, .L0001095c
    li         $a4,1
    sw         $a4,4($sp)
    lui        $s0,0x0
.L00010818:
    addiu      $s0,$s0,6296
    lw         $t8,0($sp)
.L00010820:
    beqz       $t8, .L00010894
    lw         $at,4($sp)
.L00010828:
    li         $t9,2
    bne        $s1, $t9, .L0001087c
    addiu      $a2,$s0,1408
    lw         $v0,-24556($zero)
    beqz       $v0, .L0001087c
    addiu      $a2,$s0,1408
    lw         $a0,492($v0)
    beqz       $a0, .L0001087c
    addiu      $a2,$s0,1408
    lw         $ra,8($a0)
    sd         $ra,16($sp)
    jal        get_current_name
    nop
    move       $a3,$v0
    addiu      $a1,$s0,1360
    li         $a0,6
    jal        cmn_err
    ld         $a2,16($sp)
    b          .L00010894
    lw         $at,4($sp)
    addiu      $a2,$s0,1408
.L0001087c:
    move       $a1,$zero
    li         $a0,59
    move       $a3,$s3
    jal        cmn_err_tag
    move       $a4,$s4
    lw         $at,4($sp)
.L00010894:
    beqz       $at, .L000108cc
    ld         $a1,0($gp)
    jal        vice_err
    ld         $a0,0($gp)
    beqz       $v0, .L000108fc
    li         $v0,2
    b          .L000108d4
    li         $v0,1
.L000108b4:
    li         $a0,60
.L000108b8:
    move       $a1,$zero
    addiu      $a2,$s0,1408
    move       $a3,$s3
    jal        cmn_err_tag
    move       $a4,$s4
.L000108cc:
    beqz       $s2, .L000109b4
    move       $v0,$zero
.L000108d4:
    ld         $s2,48($sp)
    ld         $s3,24($sp)
    ld         $ra,56($sp)
    ld         $s4,32($sp)
    ld         $s0,64($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L000108f4:
    b          .L000107a8
    move       $s2,$v0
.L000108fc:
    bne        $s1, $v0, .L000108b8
    li         $a0,60
    lw         $v0,-24556($zero)
    beqz       $v0, .L000108b8
    li         $a0,60
    lw         $a0,492($v0)
    beqz       $a0, .L000108b4
    nop
    jal        get_current_name
    lw         $s1,8($a0)
    move       $a3,$v0
    li         $a0,6
    addiu      $a1,$s0,1360
    jal        cmn_err
    move       $a2,$s1
    b          .L000108cc
    nop
.L00010940:
    b          .L000107a8
    move       $s2,$v0
.L00010948:
    addiu      $a3,$sp,4
    jal        print_buserr_rev0
    addiu      $a2,$sp,0
    b          .L000107cc
    lh         $a0,0($gp)
.L0001095c:
    li         $t8,1
    lui        $s0,0x0
    sw         $t8,0($sp)
    b          .L00010828
    addiu      $s0,$s0,6296
.L00010970:
    lui        $a2,0x20
    ld         $a1,0($gp)
    and        $a2,$v0,$a2
    ld         $a0,0($gp)
    jal        log_ecc_err
    sltu       $a2,$zero,$a2
    ld         $a3,0($gp)
    ld         $a2,0($gp)
    ld         $a1,0($gp)
    jal        ecc_error_correction
    lw         $a0,4($gp)
    beqz       $v0, .L000109c4
    li         $a3,2
    beqz       $s2, .L00010a60
    nop
.L000109ac:
    b          .L000108d4
    li         $v0,1
.L000109b4:
    jal        _r4600sc_enable_scache
    nop
    b          .L000108d4
    move       $v0,$zero
.L000109c4:
    bne        $s1, $a3, .L00010a24
    nop
    lw         $v0,-24556($zero)
    beqz       $v0, .L00010a24
    nop
    lw         $a0,492($v0)
    beqz       $a0, .L00010a24
    nop
    lw         $a4,8($a0)
    jal        get_current_name
    sd         $a4,8($sp)
    move       $a4,$v0
    li         $a1,1
    li         $a0,57
    lui        $a5,0x0
    lui        $s0,0x0
    ld         $a3,8($sp)
    addiu      $a5,$a5,4384
    addiu      $s0,$s0,6296
    ld         $a6,0($gp)
    jal        cmn_err_tag
    addiu      $a2,$s0,1184
    b          .L00010820
    lw         $t8,0($sp)
.L00010a24:
    jal        ecc_disable
    nop
    move       $a1,$zero
    li         $a0,58
    move       $a5,$s3
    move       $a6,$s4
    lui        $a3,0x0
    lui        $s0,0x0
    addiu      $a3,$a3,4384
    addiu      $s0,$s0,6296
    ld         $a4,0($gp)
    jal        cmn_err_tag
    addiu      $a2,$s0,1272
    b          .L00010820
    lw         $t8,0($sp)
.L00010a60:
    jal        _r4600sc_enable_scache
    nop
    b          .L000109ac
    nop

glabel idle_err
    addiu      $sp,$sp,-48
    sd         $a2,24($sp)
    li         $a4,28
    sd         $a3,16($sp)
    sd         $s0,0($sp)
    li         $at,24
    andi       $a7,$a1,0x7c
    dsll32     $t0,$a1,0xb
    move       $s0,$a0
    sd         $s8,8($sp)
    move       $s8,$a1
    beq        $a7, $at, .L00010aa8
    sd         $ra,32($sp)
    bne        $a7, $a4, .L00010af8
.L00010aa8:
    move       $a0,$zero
    move       $a1,$s0
    jal        dobuserre
    move       $a2,$zero
.L00010ab8:
    jal        getbadvaddr
    nop
    move       $a6,$v0
    move       $a0,$zero
    move       $a3,$s0
    ld         $a2,24($sp)
    move       $a4,$s8
    lui        $a1,0x0
    ld         $a5,16($sp)
    jal        cmn_err
    addiu      $a1,$a1,7760
    ld         $ra,32($sp)
    ld         $s0,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00010af8:
    bgez       $t0, .L00010ab8
    move       $a0,$zero
    move       $a1,$s0
    jal        dobuserr
    move       $a2,$zero
    b          .L00010ab8
    nop

glabel earlynofault
    li         $at,28
    addiu      $sp,$sp,-16
    beq        $a1, $at, .L00010b30
    sd         $ra,0($sp)
    move       $v0,$zero
.L00010b28:
    jr         $ra
    addiu      $sp,$sp,16
.L00010b30:
    lw         $a1,292($a0)
    jal        dobuserre
    li         $a2,1
    ld         $ra,0($sp)
    b          .L00010b28
    li         $v0,1

glabel pci_error_intr
    addiu      $sp,$sp,-16
    lui        $a0,0xbf08
    sd         $ra,0($sp)
    ori        $a0,$a0,0x4
    jal        pciio_pio_read32
    sd         $s0,8($sp)
    move       $s0,$v0
    jal        pciio_pio_read32
    lui        $a0,0xbf08
    lui        $a1,0x3d00
    and        $a1,$s0,$a1
    bnez       $a1, .L00010b9c
    move       $a0,$zero
    move       $a0,$zero
.L00010b80:
    lui        $a1,0xbf08
    ld         $s0,8($sp)
    jal        pciio_pio_write32
    ori        $a1,$a1,0x4
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L00010b9c:
    move       $a2,$s0
    move       $a3,$v0
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,7840
    b          .L00010b80
    move       $a0,$zero

glabel etoh
    lbu        $v0,0($a0)
    move       $a3,$a0
    beqz       $v0, .L00010ce8
    addiu      $a4,$gp,-32504
    move       $a2,$zero
    slti       $a5,$a2,6
.L00010bd0:
    li         $a6,58
    beq        $a6, $v0, .L00010cbc
    slti       $at,$v0,97
    addiu      $a2,$a2,1
    bnez       $at, .L00010bf0
    addiu      $a4,$a4,1
    slti       $v1,$v0,103
    bnez       $v1, .L00010c04
.L00010bf0:
    slti       $a0,$v0,48
    bnez       $a0, .L00010cc4
    slti       $a1,$v0,58
    beqz       $a1, .L00010ccc
    nop
.L00010c04:
    lbu        $a6,1($a3)
    slti       $t0,$v0,48
    slti       $t9,$v0,58
    slti       $a7,$a6,48
    slti       $t8,$a6,58
    slti       $t3,$a6,97
    move       $t2,$t8
    move       $t1,$a7
    bnez       $t3, .L00010c34
    slti       $t3,$a6,103
    bnez       $t3, .L00010c44
    nop
.L00010c34:
    bnez       $a7, .L00010cac
    nop
    beqz       $t2, .L00010cd4
    nop
.L00010c44:
    beqz       $a5, .L00010cdc
    nop
    bnez       $t1, .L00010c5c
    addiu      $a3,$a3,2
    bnez       $t8, .L00010c60
    addiu      $a5,$a6,-48
.L00010c5c:
    addiu      $a5,$a6,-87
.L00010c60:
    bnez       $t0, .L00010c7c
    addiu      $a6,$v0,-87
    beqz       $t9, .L00010c78
    addiu      $a6,$v0,-48
    b          .L00010c80
    sll        $t8,$a6,0x4
.L00010c78:
    addiu      $a6,$v0,-87
.L00010c7c:
    sll        $t8,$a6,0x4
.L00010c80:
    addu       $t8,$a5,$t8
    sb         $t8,-1($a4)
.L00010c88:
    lbu        $v0,0($a3)
    bnez       $v0, .L00010bd0
    slti       $a5,$a2,6
    li         $t9,6
    addiu      $v0,$gp,-32504
    beq        $a2, $t9, .L00010cb4
    sw         $a3,-32496($gp)
.L00010ca4:
    jr         $ra
    move       $v0,$zero
.L00010cac:
    sw         $a3,-32496($gp)
.L00010cb0:
    move       $v0,$zero
.L00010cb4:
    jr         $ra
    nop
.L00010cbc:
    b          .L00010c88
    addiu      $a3,$a3,1
.L00010cc4:
    b          .L00010cb0
    sw         $a3,-32496($gp)
.L00010ccc:
    b          .L00010cb0
    sw         $a3,-32496($gp)
.L00010cd4:
    b          .L00010cb0
    sw         $a3,-32496($gp)
.L00010cdc:
    sw         $a3,-32496($gp)
    jr         $ra
    move       $v0,$zero
.L00010ce8:
    b          .L00010ca4
    sw         $a0,-32496($gp)

glabel getsysid
    lw         $at,0($gp)
    sw         $at,0($a0)
    sdl        $zero,4($a0)
    sdr        $zero,11($a0)
    sdl        $zero,12($a0)
    sdr        $zero,19($a0)
    sdl        $zero,20($a0)
    sdr        $zero,27($a0)
    sdl        $zero,28($a0)
    sdr        $zero,35($a0)
    sdl        $zero,36($a0)
    sdr        $zero,43($a0)
    sdl        $zero,44($a0)
    sdr        $zero,51($a0)
    sdl        $zero,52($a0)
    sdr        $zero,59($a0)
    swl        $zero,60($a0)
    move       $v0,$zero
    jr         $ra
    swr        $zero,63($a0)
    addiu      $sp,$sp,-16
    li         $a1,3
    sd         $s8,0($sp)
    move       $s8,$a0
    beqz       $a0, .L00010d5c
    sd         $ra,8($sp)
    move       $a1,$zero
.L00010d5c:
    li         $a2,100
    lui        $a0,0x0
    jal        timeout
    addiu      $a0,$a0,3392
    jal        set_leds
    move       $a0,$s8
    ld         $ra,8($sp)
    ld         $s8,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel pg_setcachable
    li         $a2,-57
.L00010d88:
    lw         $v0,0($a0)
    and        $v1,$a2,$v0
    ori        $v1,$v1,0x18
.L00010d94:
    ll         $at,0($a0)
    bne        $at, $v0, .L00010db0
    move       $at,$zero
    move       $at,$v1
    sc         $at,0($a0)
    beqzl      $at, .L00010d94
    nop
.L00010db0:
    bnez       $at, .L00010de8
    nop
    lw         $a3,0($a0)
    and        $a4,$a2,$a3
    ori        $a4,$a4,0x18
.L00010dc4:
    ll         $a1,0($a0)
    bne        $a1, $a3, .L00010de0
    move       $a1,$zero
    move       $a1,$a4
    sc         $a1,0($a0)
    beqzl      $a1, .L00010dc4
    nop
.L00010de0:
    beqz       $a1, .L00010d88
    nop
.L00010de8:
    jr         $ra
    nop

glabel pte_cachebits
    jr         $ra
    li         $v0,24

glabel reset_leds
    lui        $v0,0xbf31
    addiu      $sp,$sp,-16
    ld         $at,8($v0)
    move       $a0,$zero
    sd         $ra,0($sp)
    ori        $at,$at,0x30
    jal        set_leds
    sd         $at,8($v0)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel sys_setled
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        set_leds
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel bump_leds
    lw         $at,0($gp)
    bnez       $at, .L00010e6c
    addiu      $sp,$sp,-16
    lw         $a4,0($gp)
    lw         $a3,0($gp)
    lw         $a1,0($gp)
    lui        $a2,0xbf31
    beqz       $a4, .L00010e74
    ld         $a2,8($a2)
    bne        $a3, $a1, .L00010e90
    sd         $ra,0($sp)
.L00010e6c:
    jr         $ra
    addiu      $sp,$sp,16
.L00010e74:
    andi       $a5,$a2,0x10
    bnez       $a5, .L00010e6c
    sd         $ra,0($sp)
    jal        set_leds
    move       $a0,$zero
    b          .L00010e6c
    ld         $ra,0($sp)
.L00010e90:
    andi       $a0,$a2,0x10
    jal        set_leds
    sltu       $a0,$zero,$a0
    ld         $ra,0($sp)
    lw         $a1,0($gp)
    b          .L00010e6c
    sw         $a1,0($gp)

glabel set_leds
    li         $a3,-49
    lui        $a4,0xbf31
    ld         $a2,8($a4)
    beqz       $a0, .L00010ed4
    ori        $a4,$a4,0x8
    move       $a1,$zero
.L00010ec4:
    and        $a5,$a2,$a3
    or         $a5,$a1,$a5
    jr         $ra
    sd         $a5,0($a4)
.L00010ed4:
    li         $a1,16
    b          .L00010ec4
    nop

glabel get_except_norm
    lui        $v0,0x0
    jr         $ra
    addiu      $v0,$v0,0

glabel cpu_isvalid
    lui        $a3,0x0
    bltz       $a0, .L00010f24
    lw         $v0,0($gp)
    sll        $a4,$a0,0x3
    slt        $at,$a0,$v0
    beqz       $at, .L00010f24
    li         $v1,-1
    addiu      $v0,$a3,0
    addu       $v0,$v0,$a4
    lw         $v0,0($v0)
    beq        $v0, $v1, .L00010f28
    move       $v0,$zero
    jr         $ra
    li         $v0,1
.L00010f24:
    move       $v0,$zero
.L00010f28:
    jr         $ra
    nop

glabel debug_stop_all_cpus
    jr         $ra
    nop

glabel pmem_getfirstclick
    jr         $ra
    move       $v0,$zero

glabel node_getfirstfree
    jr         $ra
    move       $v0,$zero

glabel node_getmaxclick
    lw         $a3,0($gp)
    lui        $a2,0x4
    lw         $a4,0($gp)
    beqz       $a3, .L00010f68
    ori        $a2,$a2,0xffff
    addu       $v0,$a3,$a2
    jr         $ra
    nop
.L00010f68:
    addiu      $v0,$a4,-1
    jr         $ra
    nop

glabel bank_size
    andi       $at,$a0,0x100
    beqz       $at, .L00010f84
    lui        $v0,0x200
    lui        $v0,0x800
.L00010f84:
    jr         $ra
    nop
    addiu      $sp,$sp,-112
    sd         $a1,72($sp)
    sd         $s4,32($sp)
    ld         $s4,0($sp)
    sd         $s5,96($sp)
    sd         $s0,88($sp)
    sd         $s3,48($sp)
    sd         $s7,16($sp)
    move       $s7,$a0
    sd         $s1,24($sp)
    move       $s1,$zero
    lui        $s3,0xa000
    sd         $s8,8($sp)
    lui        $s8,0x3800
    sd         $s2,56($sp)
    lui        $s2,0x1400
    sd         $s6,40($sp)
    lui        $s6,0x3fff
    ori        $s2,$s2,0x208
    sd         $ra,80($sp)
    b          .L000110dc
    ori        $s6,$s6,0xffff
.L00010fe4:
    addiu      $s1,$s1,1
    slti       $t8,$s1,8
    lui        $s5,0x3e00
    beqz       $t8, .L00011088
    addiu      $s2,$s2,8
    or         $s0,$s2,$s3
.L00010ffc:
    beqz       $s1, .L000110d4
    ld         $s0,0($s0)
    beq        $s0, $s4, .L00010fe4
.L00011008:
    andi       $t8,$s0,0x100
    beqz       $t8, .L00011018
    sd         $t8,64($sp)
    move       $s5,$s8
.L00011018:
    jal        bank_size
    move       $a0,$s0
    andi       $a1,$s0,0x1f
    and        $a0,$s5,$s7
    dsll       $a1,$a1,0x19
    and        $a0,$s6,$a0
    sll        $a1,$a1,0x0
    sltu       $a2,$a0,$a1
    addu       $a1,$v0,$a1
    bnez       $a2, .L00010fe4
    sltu       $a0,$a0,$a1
    beqz       $a0, .L00010fe4
    ld         $a2,72($sp)
    addu       $a5,$s1,$s1
    lui        $v0,0x100
    beqz       $a2, .L00011080
    ld         $a3,64($sp)
    beqz       $a3, .L00011068
    nop
    lui        $v0,0x400
.L00011068:
    and        $a4,$v0,$s7
    and        $a4,$s6,$a4
    sltu       $a4,$zero,$a4
    addu       $a4,$a4,$a5
    ld         $a5,72($sp)
    sw         $a4,0($a5)
.L00011080:
    b          .L000110a4
    ld         $s5,96($sp)
.L00011088:
    ld         $a5,72($sp)
    ld         $a7,72($sp)
    beqz       $a5, .L000110a0
    li         $s1,-1
    li         $a6,-1
    sw         $a6,0($a7)
.L000110a0:
    ld         $s5,96($sp)
.L000110a4:
    ld         $s0,88($sp)
    move       $v0,$s1
    ld         $s1,24($sp)
    ld         $s2,56($sp)
    ld         $s3,48($sp)
    ld         $s4,32($sp)
    ld         $ra,80($sp)
    ld         $s6,40($sp)
    ld         $s7,16($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L000110d4:
    b          .L00011008
    move       $s4,$s0
.L000110dc:
    lui        $s5,0x3e00
    b          .L00010ffc
    or         $s0,$s2,$s3

glabel addr_to_bank
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        .text
    move       $a1,$zero
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel addr_to_ibank
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    jal        .text
    addiu      $a1,$sp,0
    ld         $ra,8($sp)
    lw         $v0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel cpu_powerdown
    addiu      $sp,$sp,-80
    sd         $s7,8($sp)
    sd         $s5,16($sp)
    sd         $s1,24($sp)
    sd         $s0,32($sp)
    sd         $s4,40($sp)
    sd         $s6,48($sp)
    sd         $s3,56($sp)
    sd         $ra,0($sp)
    jal        flash_write_env
    sd         $s2,64($sp)
    li         $s7,-8
    lui        $s1,0xf
    lui        $s4,0x0
    addiu      $s4,$s4,7896
    lui        $s0,0xbf3a
    ori        $s1,$s1,0x4240
    ori        $s2,$s0,0x4a07
    lbu        $s5,2567($s0)
    ori        $s3,$s0,0x4b07
    li         $s6,-65
    ori        $s0,$s0,0xa07
    and        $s5,$s5,$s6
    ori        $s6,$s5,0x20
    ori        $s5,$s5,0x30
.L00011188:
    jal        flushbus
    sb         $s5,0($s0)
    lbu        $ra,0($s3)
    ori        $ra,$ra,0x81
    sb         $ra,0($s3)
    lbu        $t9,0($s2)
    and        $t9,$s7,$t9
    sb         $t9,0($s2)
    lbu        $t8,0($s2)
    ori        $t8,$t8,0x8
    sb         $t8,0($s2)
    jal        flushbus
    sb         $s6,0($s0)
    jal        us_delay
    move       $a0,$s1
    li         $a0,4
    jal        cmn_err
    move       $a1,$s4
    jal        us_delay
    move       $a0,$s1
    b          .L00011188
    nop
    li         $a0,4
    lw         $a2,0($gp)
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,7928
    lui        $a0,0x7
    jal        us_delay
    ori        $a0,$a0,0xa120
    jal        cpu_powerdown
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel cpu_waitforreset
    addiu      $sp,$sp,-64
    sd         $s5,8($sp)
    sd         $s1,16($sp)
    sd         $s4,32($sp)
    sd         $s6,40($sp)
    sd         $s3,48($sp)
    sd         $ra,0($sp)
    jal        flash_write_env
    sd         $s2,56($sp)
    li         $s6,-17
    lui        $s1,0xbf31
    lui        $s4,0xbf3a
    lui        $s5,0x0
    addiu      $s5,$s5,7896
    ori        $s3,$s4,0x4a07
    ori        $s2,$s4,0xa07
    ori        $s4,$s4,0xc07
    sd         $s0,24($sp)
    b          .L000112a8
    ori        $s1,$s1,0x10
.L0001126c:
    lbu        $t8,0($s2)
    ori        $t8,$t8,0x10
    jal        flushbus
    sb         $t8,0($s2)
    lbu        $t9,0($s3)
    andi       $t9,$t9,0x1
    beqz       $t9, .L00011294
    nop
    jal        cpu_powerdown
    nop
.L00011294:
    lbu        $ra,0($s2)
    and        $ra,$s6,$ra
    sb         $ra,0($s2)
.L000112a0:
    jal        splx
    move       $a0,$s0
.L000112a8:
    jal        spl7
    nop
    ld         $at,0($s1)
    andi       $at,$at,0x100
    beqz       $at, .L000112a0
    move       $s0,$v0
    lbu        $v0,0($s4)
    andi       $v0,$v0,0x80
    bnez       $v0, .L0001126c
    addiu      $a1,$s5,96
    jal        cmn_err
    li         $a0,4
    b          .L0001126c
    nop

glabel power_dump
    addiu      $sp,$sp,-48
    sd         $ra,16($sp)
    sd         $s2,8($sp)
    move       $s2,$a0
    jal        splprof
    sd         $s3,24($sp)
    lui        $a0,0xbf31
    sd         $s0,32($sp)
    move       $s3,$v0
    beqz       $s2, .L00011318
    sd         $s1,40($sp)
    ld         $at,16($a0)
    andi       $at,$at,0x100
    beqz       $at, .L00011400
.L00011318:
    lui        $a0,0x7
    lw         $v0,0($gp)
    ori        $a0,$a0,0xa120
    addiu      $v0,$v0,1
    jal        us_delay
    sw         $v0,0($gp)
    lui        $s0,0xbf3a
    ori        $s0,$s0,0xa07
    jal        pciio_pio_read8
    move       $a0,$s0
    move       $a1,$s0
    ori        $a0,$v0,0x10
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    jal        flushbus
    nop
    lui        $s1,0xbf3a
    ori        $s1,$s1,0x4a07
    jal        pciio_pio_read8
    move       $a0,$s1
    sw         $v0,0($sp)
    jal        pciio_pio_read8
    move       $a0,$s1
    li         $a0,-8
    move       $a1,$s1
    and        $a0,$v0,$a0
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    jal        pciio_pio_read8
    move       $a0,$s0
    li         $a0,-17
    move       $a1,$s0
    and        $a0,$v0,$a0
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    jal        flushbus
    nop
    beqz       $s2, .L000113f4
    lui        $v0,0x0
    lui        $v0,0x0
    addiu      $v0,$v0,7896
    addiu      $a3,$v0,144
.L000113c0:
    li         $a0,61
    move       $a1,$zero
    jal        cmn_err_tag
    addiu      $a2,$v0,176
    jal        splx
    move       $a0,$s3
    ld         $s3,24($sp)
.L000113dc:
    ld         $ra,16($sp)
    ld         $s2,8($sp)
    ld         $s0,32($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000113f4:
    addiu      $v0,$v0,7896
    b          .L000113c0
    addiu      $a3,$v0,160
.L00011400:
    jal        splx
    move       $a0,$v0
    b          .L000113dc
    ld         $s3,24($sp)

glabel powerintr
    lui        $at,0xbf31
    ld         $at,16($at)
    lw         $v0,0($gp)
    addiu      $sp,$sp,-32
    andi       $at,$at,0x100
    sd         $s2,0($sp)
    beqz       $at, .L000114f8
    sd         $ra,16($sp)
    beqz       $v0, .L00011444
    lui        $v0,0xbf3a
    jal        power_dump
    move       $a0,$zero
    lui        $v0,0xbf3a
.L00011444:
    lbu        $v0,3079($v0)
    andi       $v0,$v0,0x80
    beqz       $v0, .L0001156c
    sd         $s0,24($sp)
.L00011454:
    lui        $s0,0xbf3a
    ori        $s0,$s0,0xa07
    jal        pciio_pio_read8
    move       $a0,$s0
    move       $a1,$s0
    ori        $a0,$v0,0x10
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    jal        flushbus
    sd         $s1,8($sp)
    lui        $s1,0xbf3a
    ori        $s1,$s1,0x4a07
    jal        pciio_pio_read8
    move       $a0,$s1
    move       $s2,$v0
    jal        pciio_pio_read8
    move       $a0,$s1
    li         $a0,-8
    move       $a1,$s1
    and        $a0,$v0,$a0
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    ld         $s1,8($sp)
    jal        pciio_pio_read8
    move       $a0,$s0
    li         $a0,-17
    move       $a1,$s0
    and        $a0,$v0,$a0
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    jal        flushbus
    ld         $s0,24($sp)
    andi       $a1,$s2,0x1
    lw         $v0,0($gp)
    beqz       $a1, .L00011588
    li         $a1,1
    lw         $a0,-32492($gp)
    beqz       $a0, .L00011508
    sw         $a1,0($gp)
    slt        $a2,$a0,$v0
    bnez       $a2, .L000115bc
.L000114f8:
    ld         $ra,16($sp)
.L000114fc:
    ld         $s2,0($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00011508:
    jal        .text
    li         $a0,3
    li         $a2,18
    li         $a1,2
    li         $a0,1
    move       $a3,$zero
    move       $a4,$zero
    jal        sigtopid
    move       $a5,$zero
    lw         $a3,0($gp)
    move       $a1,$zero
    sll        $a2,$a3,0x2
    lui        $a0,0x0
    subu       $a2,$a2,$a3
    addiu      $a0,$a0,4576
    sll        $a2,$a2,0x3
    addu       $a2,$a2,$a3
    jal        timeout
    sll        $a2,$a2,0x2
    lw         $a3,0($gp)
    addiu      $a3,$a3,100
    jal        set_autopoweron
    sw         $a3,-32492($gp)
    b          .L000114fc
    ld         $ra,16($sp)
.L0001156c:
    lui        $a1,0x0
    li         $a0,4
    addiu      $a1,$a1,7896
    jal        cmn_err
    addiu      $a1,$a1,96
    b          .L00011454
    sd         $s0,24($sp)
.L00011588:
    lui        $a1,0x0
    li         $a0,4
    addiu      $a1,$a1,7896
    jal        cmn_err
    addiu      $a1,$a1,216
    li         $a0,4
    lui        $a1,0x0
    move       $a2,$s2
    addiu      $a1,$a1,7896
    jal        cmn_err
    addiu      $a1,$a1,264
    b          .L000114fc
    ld         $ra,16($sp)
.L000115bc:
    jal        us_delay
    li         $a0,10000
    lui        $a1,0x0
    li         $a0,5
    addiu      $a1,$a1,7896
    jal        cmn_err
    addiu      $a1,$a1,296
    jal        cpu_powerdown
    nop
    b          .L000114fc
    ld         $ra,16($sp)

glabel readadapters
    li         $at,3
    li         $a4,10
    li         $v0,1
    beq        $a0, $at, .L0001160c
    li         $a3,4
    beq        $a0, $a3, .L0001160c
    li         $v0,1
    beq        $a0, $a4, .L00011614
    move       $v0,$zero
.L0001160c:
    jr         $ra
    nop
.L00011614:
    li         $v0,1
    jr         $ra
    nop

glabel cpuboard
    jr         $ra
    li         $v0,18

glabel fp_find
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        get_fpc_irr
    nop
    srl        $at,$v0,0x8
    li         $v1,40
    andi       $at,$at,0xff
    ld         $ra,0($sp)
    beq        $at, $v1, .L00011658
    sw         $v0,-24108($zero)
.L00011650:
    jr         $ra
    addiu      $sp,$sp,16
.L00011658:
    lui        $v1,0xffff
    ori        $v1,$v1,0xff
    and        $v1,$v0,$v1
    ori        $v1,$v1,0x2300
    b          .L00011650
    sw         $v1,-24108($zero)

glabel fp_init
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        set_fpc_csr
    move       $a0,$zero
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel dprintf
    lui        $t1,0xa000
    addiu      $sp,$sp,-160
    lw         $t1,4112($t1)
    sw         $a2,116($sp)
    sw         $a1,108($sp)
    sw         $a7,156($sp)
    sw         $a3,124($sp)
    sw         $a6,148($sp)
    sw         $a5,140($sp)
    sw         $a4,132($sp)
    sw         $a0,100($sp)
    beqz       $t1, .L0001173c
    sd         $ra,80($sp)
    lw         $t2,12($t1)
    beqz       $t2, .L0001173c
    lw         $a7,156($sp)
    lw         $a6,148($sp)
    lw         $a5,140($sp)
    lw         $a4,132($sp)
    lw         $a3,124($sp)
    lw         $a2,116($sp)
    lw         $a1,108($sp)
    lw         $t1,164($sp)
    sw         $t1,4($sp)
    lw         $t0,172($sp)
    sw         $t0,12($sp)
    lw         $v1,180($sp)
    sw         $v1,20($sp)
    lw         $v0,188($sp)
    sw         $v0,28($sp)
    lw         $at,196($sp)
    sw         $at,36($sp)
    lw         $ra,204($sp)
    sw         $ra,44($sp)
    lw         $t9,212($sp)
    sw         $t9,52($sp)
    lw         $t8,220($sp)
    sw         $t8,60($sp)
    lw         $t3,228($sp)
    jalr       $t2
    sw         $t3,68($sp)
    ld         $ra,80($sp)
.L00011734:
    jr         $ra
    addiu      $sp,$sp,160
.L0001173c:
    jal        cn_is_inited
    nop
    beqz       $v0, .L00011734
    ld         $ra,80($sp)
    lw         $a3,116($sp)
    lw         $a2,108($sp)
    lw         $a4,124($sp)
    lw         $a7,148($sp)
    lw         $a6,140($sp)
    lw         $a5,132($sp)
    lw         $a1,100($sp)
    lw         $t0,156($sp)
    sw         $t0,4($sp)
    lw         $a0,164($sp)
    sw         $a0,12($sp)
    lw         $v1,172($sp)
    sw         $v1,20($sp)
    lw         $v0,180($sp)
    sw         $v0,28($sp)
    lw         $at,188($sp)
    sw         $at,36($sp)
    lw         $ra,196($sp)
    sw         $ra,44($sp)
    lw         $t9,204($sp)
    sw         $t9,52($sp)
    lw         $t8,212($sp)
    sw         $t8,60($sp)
    lw         $t3,220($sp)
    sw         $t3,68($sp)
    lw         $t2,228($sp)
    li         $a0,6
    jal        cmn_err
    sw         $t2,76($sp)
    b          .L00011734
    ld         $ra,80($sp)

glabel get_isa_dma_buf_addr
    lw         $v0,0($gp)
    addiu      $sp,$sp,-16
    beqz       $v0, .L000117e4
    sd         $ra,0($sp)
.L000117d8:
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L000117e4:
    jal        isa_dma_buf_init
    nop
    lw         $v0,0($gp)
    bnez       $v0, .L000117d8
    move       $a0,$zero
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,8248
    b          .L000117d8
    lw         $v0,0($gp)

glabel query_cyclecntr
    li         $v1,15000
    lui        $v0,0xb400
    sw         $v1,0($a0)
    jr         $ra
    ori        $v0,$v0,0x3c

glabel absolute_rtc_current_time
    lui        $v0,0xb400
    li         $v1,-1
    ld         $v0,56($v0)
    dsrl32     $v1,$v1,0x0
    jr         $ra
    and        $v0,$v0,$v1

glabel get_crimerev
    lw         $at,-32504($gp)
    li         $a3,1
    lw         $v0,-32508($gp)
    beqz       $at, .L0001187c
    lui        $a4,0xb400
    ld         $a5,0($a4)
    andi       $v0,$a5,0xf
    dsrl32     $a2,$a5,0x0
    sw         $zero,-32504($gp)
    beqz       $v0, .L00011868
    sll        $v0,$v0,0x0
    li         $v0,17
.L00011868:
    beqz       $a2, .L00011890
    nop
    beq        $a2, $a3, .L00011884
    li         $v0,20
    sw         $v0,-32508($gp)
.L0001187c:
    jr         $ra
    nop
.L00011884:
    li         $v0,19
    jr         $ra
    sw         $v0,-32508($gp)
.L00011890:
    jr         $ra
    sw         $v0,-32508($gp)

glabel unmaptlb_range
    andi       $a3,$a0,0xfff
    addu       $a3,$a1,$a3
    addiu      $sp,$sp,-32
    addiu      $a3,$a3,4095
    sd         $s0,0($sp)
    srl        $a3,$a3,0xc
    srl        $s0,$a0,0xc
    sd         $ra,8($sp)
    blez       $a3, .L000118e0
    sd         $s1,16($sp)
    move       $s1,$a3
.L000118c4:
    lw         $a0,-24556($zero)
    move       $a1,$s0
    jal        unmaptlb
    lw         $a0,872($a0)
    addiu      $s1,$s1,-1
    bgtz       $s1, .L000118c4
    addiu      $s0,$s0,1
.L000118e0:
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel tfi_save
    sd         $t0,88($k1)
    sd         $t1,96($k1)
    mflo       $t0
    mfhi       $t1
    sd         $v0,8($k1)
    sd         $v1,16($k1)
    sd         $t2,104($k1)
    sd         $t3,112($k1)
    sd         $t8,184($k1)
    sd         $t9,192($k1)
    sd         $s8,232($k1)
    sd         $t0,256($k1)
    jr         $ra
    sd         $t1,264($k1)

glabel tfi_restore
    ld         $v0,256($k1)
    ld         $v1,264($k1)
    ld         $t0,88($k1)
    mtlo       $v0
    mthi       $v1
    ld         $v0,8($k1)
    ld         $v1,16($k1)
    ld         $t1,96($k1)
    ld         $t2,104($k1)
    ld         $t3,112($k1)
    ld         $t8,184($k1)
    ld         $t9,192($k1)
    jr         $ra
    ld         $s8,232($k1)

glabel assbuffer
    nop

glabel assfail
    mfc0       $zero,c0_sr
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $v0,8($at)
    lui        $v0,0x0
    addiu      $v0,$v0,0
    lw         $v0,0($v0)
    li         $at,-1
    bne        $v0, $at, .L00011b54
    nop
    lh         $v0,-24176($zero)
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $v0,0($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $gp,216($at)
    mfc0       $v0,c0_sr
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $v0,248($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $sp,224($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $v1,16($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $a3,48($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $a4,56($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $a5,64($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $a6,72($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $a7,80($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t0,88($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t1,96($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t2,104($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t3,112($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $s0,120($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $s1,128($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $s2,136($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $s3,144($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $s4,152($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $s5,160($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $s6,168($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $s7,176($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t8,184($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t9,192($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $k0,200($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $k1,208($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $s8,232($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $ra,240($at)
    lui        $at,0x0
    mflo       $v0
    addiu      $at,$at,0
    sd         $v0,256($at)
    mfhi       $v0
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $v0,264($at)
    mfc0       $v0,c0_cause
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $v0,280($at)
    mfc0       $v0,c0_badvaddr
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $v0,272($at)
    mfc0       $v0,c0_sr
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $v0,248($at)
    mfc0       $v0,c0_epc
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $v0,288($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $v0,352($at)
.L00011b54:
    j          _assfail
    nop

glabel getsr
    mfc0       $v0,c0_sr
    jr         $ra
    nop

glabel setsr
    ori        $a0,$a0,0x0
    mtc0       $a0,c0_sr
    jr         $ra
    nop

glabel getpc
    jr         $ra
    move       $v0,$ra

glabel getsp
    jr         $ra
    move       $v0,$sp

glabel getpcsp
    sw         $ra,0($a0)
    jr         $ra
    sw         $sp,0($a1)

glabel getgp
    jr         $ra
    move       $v0,$gp

glabel getcause
    mfc0       $v0,c0_cause
    jr         $ra
    nop

glabel setcause
    mtc0       $a0,c0_cause
    jr         $ra
    nop

glabel getbadvaddr
    mfc0       $v0,c0_badvaddr
    jr         $ra
    nop

glabel get_sr
    mfc0       $v0,c0_sr
    jr         $ra
    nop

glabel set_sr
    mtc0       $a0,c0_sr
    jr         $ra
    nop

glabel get_lladdr
    mfc0       $v0,c0_lladdr
    jr         $ra
    nop

glabel set_lladdr
    mtc0       $a0,c0_lladdr
    jr         $ra
    nop

glabel do_sync_instruction
    sync
    jr         $ra
    nop

glabel siron
    mfc0       $v0,c0_sr
    lui        $v1,0x1
    ori        $v1,$v1,0x4
    and        $v1,$v1,$v0
    mtc0       $v1,c0_sr
    mfc0       $v1,c0_cause
    or         $v1,$v1,$a0
    mtc0       $v1,c0_cause
    jr         $ra
    mtc0       $v0,c0_sr

glabel siroff
    mfc0       $v0,c0_sr
    lui        $v1,0x1
    ori        $v1,$v1,0x4
    and        $v1,$v1,$v0
    mtc0       $v1,c0_sr
    mfc0       $v1,c0_cause
    nor        $a0,$a0,$zero
    and        $v1,$v1,$a0
    mtc0       $v1,c0_cause
    jr         $ra
    mtc0       $v0,c0_sr

glabel flushbus
    lui        $at,0xb400
    ori        $at,$at,0x8
    ld         $at,0($at)
    jr         $ra
    nop

glabel wbflush
    j          __sysad_wbflush
    nop
    jr         $ra
    nop

glabel ip26_enable_ucmem
    jr         $ra
    nop

glabel exception
    mfc0       $k0,c0_cause
    andi       $k0,$k0,0x7c
    beqz       $k0, .L00011df0
    xori       $k0,$k0,0x20
    bnez       $k0, .L00011da0
    xori       $k0,$k0,0x28
    j          systrap
    nop
.L00011da0:
    bnez       $k0, .L00011db0
    xori       $k0,$k0,0x4
.L00011da8:
    j          kmiss
    sd         $at,-24536($zero)
.L00011db0:
    beqz       $k0, .L00011da8
    xori       $k0,$k0,0x50
    beqz       $k0, .L00011e00
    xori       $k0,$k0,0x78
    beqz       $k0, .L00011df8
    sd         $at,-24536($zero)
    xori       $k0,$k0,0xc
    beqz       $k0, .L00011de0
    nop
    xori       $k0,$k0,0x14
    bnez       $k0, .L00011de8
    nop
.L00011de0:
    j          handle_ii
    nop
.L00011de8:
    j          longway
    nop
.L00011df0:
    j          intrnorm
    sd         $at,-24536($zero)
.L00011df8:
    j          handle_brkpt
    sd         $at,-24536($zero)
.L00011e00:
    j          handle_watch
    sd         $at,-24536($zero)

glabel exception_endfast
    mfc0       $k0,c0_sr
    nop
    andi       $k0,$k0,0x18
    beqz       $k0, .L00011e60
    mfc0       $k0,c0_epc
    nop
    lw         $k1,0($k0)
    nop
    srl        $k1,$k1,0xe
    andi       $at,$k1,0x200
    beqz       $at, .L00011de8
    nop
    andi       $k1,$k1,0xfdff
    slti       $at,$k1,12
    beqz       $at, .L00011de8
    nop
    lui        $at,0x0
    addiu      $at,$at,10360
    addu       $k1,$k1,$at
    lw         $k1,0($k1)
    jr         $k1
    nop
.L00011e60:
    mfc0       $k0,c0_cause
    mfc0       $at,c0_epc
    bgez       $k0, .L00011e74
    nop
    addiu      $at,$at,4
.L00011e74:
    move       $k0,$at
    lw         $k0,0($k0)
    lui        $at,0x0
    addiu      $at,$at,0
    lw         $at,0($at)
    bne        $at, $k0, .L00011de8
    nop

glabel handle_watch
    lui        $at,0x8000
    ori        $at,$at,0x1010
    lw         $at,0($at)
    beqz       $at, .L00011de8
    nop
    lw         $at,4($at)
    beqz       $at, .L00011de8
    ld         $k0,-24536($zero)
    jr         $at
    nop

glabel kmiss
    mfc0       $k0,c0_badvaddr
    lui        $at,0xff60
    sltu       $at,$k0,$at
    bnez       $at, .L000121ec
    nop
    lui        $at,0xff80
    subu       $k0,$k0,$at
    lui        $at,0x20
    bltz       $k0, .L00012028
    nop
    sltu       $at,$k0,$at
    beqz       $at, .L00012094
    nop
    mfc0       $at,c0_sr
    nop
    andi       $at,$at,0x18
    beqz       $at, .L000121ec
    lw         $at,-24556($zero)
    nop
    tlbp
    beqz       $at, .L000121ec
    nop
    lh         $k1,896($at)
    beqz       $k1, .L0001208c
    srl        $k1,$k0,0xc
    lw         $k0,888($at)
    sll        $k1,$k1,0x2
    addu       $k0,$k0,$k1
    lw         $k0,0($k0)
    beqzl      $k0, .L0001207c
    nop
.L00011f34:
    mfc0       $k1,c0_index
    lui        $at,0xc000
    subu       $at,$k0,$at
    bgez       $k1, .L00011f54
    nop
    mtc0       $zero,c0_entrylo0
    b          .L00011f6c
    mtc0       $zero,c0_entrylo1
.L00011f54:
    mfc0       $k1,c0_entryhi
    tlbr
    mtc0       $k1,c0_entryhi
.L00011f6c:
    lui        $k1,0x0
    addiu      $k1,$k1,0
    lw         $k1,0($k1)
    srl        $at,$at,0xc
    sll        $at,$at,0x2
    mfc0       $k0,c0_badvaddr
    addu       $at,$at,$k1
    lw         $at,0($at)
    andi       $k1,$k0,0x1000
    sll        $at,$at,0x6
    srl        $at,$at,0x6
    mfc0       $k0,c0_index
    beqz       $k1, .L00011fb0
    li         $k1,-2
    and        $at,$at,$k1
    b          .L00011fb8
    mtc0       $at,c0_entrylo1
.L00011fb0:
    and        $at,$at,$k1
    mtc0       $at,c0_entrylo0
.L00011fb8:
    bgez       $k0, .L00012010
    ld         $at,-24536($zero)
    lui        $at,0x0
    addiu      $at,$at,0
    lw         $k0,0($at)
    addiu      $k0,$k0,1
    andi       $k0,$k0,0x7
    sw         $k0,0($at)
    beqz       $k0, .L00011ff4
    srl        $k0,$k0,0x1
    beqz       $k0, .L00011ff4
    srl        $k0,$k0,0x1
    beqz       $k0, .L00011ff4
    nop
    nop
.L00011ff4:
    ld         $at,-24536($zero)
    tlbwr
    eret
.L00012010:
    tlbwi
    eret
.L00012028:
    addu       $k0,$k0,$at
    mfc0       $at,c0_sr
    nop
    andi       $at,$at,0x18
    beqz       $at, .L000121ec
    nop
    tlbp
.L00012044:
    lw         $at,-24556($zero)
    lh         $k1,896($at)
    beqz       $k1, .L0001208c
    srl        $k1,$k0,0xc
    lw         $k0,892($at)
    sll        $k1,$k1,0x2
    beqz       $k0, .L0001208c
    addu       $k0,$k0,$k1
    lw         $k0,0($k0)
    nop
    bnez       $k0, .L00011f34
    nop
    b          .L0001208c
    nop
.L0001207c:
    mfc0       $k0,c0_badvaddr
    lui        $k1,0xff80
    b          .L00012044
    subu       $k0,$k0,$k1
.L0001208c:
    j          longway
    nop

glabel kmissnxt
.L00012094:
    mfc0       $k0,c0_badvaddr
    lui        $at,0xffb0
    subu       $k0,$k0,$at
    bltz       $k0, .L000121ec
    nop
    lui        $at,0x0
    addiu      $at,$at,0
    lw         $at,0($at)
    addiu      $at,$at,0
    srl        $k0,$k0,0x2
    sltu       $at,$k0,$at
    beqz       $at, .L00012168
    sll        $k0,$k0,0x2
    lui        $at,0x0
    addiu      $at,$at,0
    lw         $at,0($at)
    li         $k1,4095
    nor        $k1,$k1,$zero
    and        $k1,$k1,$k0
    addu       $k1,$k1,$at
    andi       $at,$k0,0x1000
    beqz       $at, .L000120f4
    nop
    addiu      $k1,$k1,-4096
.L000120f4:
    sll        $k1,$k1,0x2
    srl        $k1,$k1,0xe
    sll        $k1,$k1,0x6
    ori        $k1,$k1,0x1f
    mtc0       $k1,c0_entrylo0
    addiu      $k1,$k1,64
    mtc0       $k1,c0_entrylo1
    lui        $at,0x0
    addiu      $at,$at,0
    lw         $k0,0($at)
    addiu      $k0,$k0,1
    andi       $k0,$k0,0x7
    sw         $k0,0($at)
    beqz       $k0, .L00012144
    srl        $k0,$k0,0x1
    beqz       $k0, .L00012144
    srl        $k0,$k0,0x1
    beqz       $k0, .L00012144
    nop
    nop
.L00012144:
    ld         $at,-24536($zero)
    tlbwr
    eret
.L00012168:
    mfc0       $k0,c0_badvaddr
    lui        $at,0xc000
    sll        $k0,$k0,0xa
    bgez       $k0, .L000121ec
    subu       $k0,$k0,$at
    bltz       $k0, .L000121ec
    nop
    lui        $at,0x0
    addiu      $at,$at,0
    lw         $at,0($at)
    addiu      $at,$at,0
    srl        $k0,$k0,0xc
    subu       $at,$at,$k0
    blez       $at, .L000121ec
    nop

glabel kvmiss_hit
    b          .L000121ac
    nop
.L000121ac:
    lui        $a0,0x8000
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $a0,24($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $a1,32($at)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $a2,40($at)
    lui        $a0,0x0
    addiu      $a0,$a0,10380
    lui        $a1,0x0
    addiu      $a1,$a1,10399
    move       $a2,$zero
    j          assfail
.L000121ec:
    j          longway
    nop
    lw         $at,-32500($gp)
    addiu      $sp,$sp,-16
    beqz       $at, .L0001220c
    sd         $ra,8($sp)
.L00012204:
    jr         $ra
    addiu      $sp,$sp,16
.L0001220c:
    jal        splhi
    nop
    lui        $v1,0xbf3a
    lbu        $t1,2823($v1)
    li         $t2,-117
    and        $t1,$t1,$t2
    sb         $t1,2823($v1)
    lbu        $t0,2823($v1)
    ori        $t0,$t0,0x2
    sb         $t0,2823($v1)
    lbu        $a7,2567($v1)
    ori        $a7,$a7,0x10
    sb         $a7,2567($v1)
    lbu        $a5,18951($v1)
    li         $a6,-4
    and        $a5,$a5,$a6
    sb         $a5,18951($v1)
    lbu        $a3,19207($v1)
    li         $a4,-83
    and        $a3,$a3,$a4
    sb         $a3,19207($v1)
    lbu        $a2,19207($v1)
    sd         $v0,0($sp)
    ori        $a2,$a2,0x9
    sb         $a2,19207($v1)
    lui        $a0,0xbf31
    li         $a1,1
    lbu        $v0,2567($v1)
    sw         $a1,-32500($gp)
    li         $a1,-32
    ori        $a0,$a0,0x18
    and        $v0,$v0,$a1
    jal        pciio_pio_read64
    sb         $v0,2567($v1)
    ori        $a0,$v0,0x100
    lui        $a1,0xbf31
    jal        pciio_pio_write64
    ori        $a1,$a1,0x18
    jal        splx
    ld         $a0,0($sp)
    b          .L00012204
    ld         $ra,8($sp)

glabel inittodr
    addiu      $sp,$sp,-64
    sd         $ra,8($sp)
    sd         $s0,16($sp)
    move       $s0,$a0
    jal        splprof
    sd         $s2,32($sp)
    move       $s2,$v0
    jal        nested_spinlock
    addiu      $a0,$gp,0
    jal        .text
    nop
    jal        rtodc
    sd         $s1,40($sp)
    move       $s1,$v0
    move       $a0,$v0
    jal        settime
    move       $a1,$zero
    lbu        $at,0($gp)
    beqz       $at, .L00012388
    nop
    jal        nested_spinunlock
    addiu      $a0,$gp,0
    jal        splx
    move       $a0,$s2
    b          .L00012374
    ld         $ra,8($sp)
.L0001231c:
    lui        $v1,0x1
    ori        $v1,$v1,0x5180
    divu       $zero,$v0,$v1
    addiu      $a2,$s3,152
    li         $a1,4
    li         $a0,66
    mflo       $a4
    jal        cmn_err_tag
    teq        $v1,$zero,0x7
.L00012340:
    jal        .text
    nop
    beqz       $v0, .L0001235c
    addiu      $a2,$s3,176
    li         $a1,4
    jal        cmn_err_tag
    li         $a0,67
.L0001235c:
    ld         $s3,48($sp)
    jal        nested_spinunlock
    addiu      $a0,$gp,0
    jal        splx
    move       $a0,$s2
    ld         $ra,8($sp)
.L00012374:
    ld         $s2,32($sp)
    ld         $s0,16($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00012388:
    jal        .text
    move       $a0,$s1
    move       $a0,$zero
    sd         $v0,24($sp)
    jal        .text
    addiu      $a1,$sp,0
    lbu        $a0,6($sp)
    ld         $v0,24($sp)
    bne        $v0, $a0, .L0001248c
    sd         $s3,48($sp)
    lui        $t8,0x400
.L000123b4:
    sltu       $t8,$s1,$t8
    sltu       $v0,$s1,$s0
    lui        $s3,0x0
    beqz       $t8, .L000123f0
    addiu      $s3,$s3,8296
    beqz       $v0, .L00012468
    li         $a1,4
    li         $a0,63
    lui        $s3,0x0
    li         $a1,4
    addiu      $s3,$s3,8296
    jal        cmn_err_tag
    move       $a2,$s3
    b          .L00012408
    nop
.L000123f0:
    beqz       $v0, .L00012428
    lui        $a5,0x2
    li         $a0,65
    li         $a1,4
    jal        cmn_err_tag
    addiu      $a2,$s3,88
.L00012408:
    move       $a0,$s0
    jal        settime
    move       $a1,$zero
    jal        resettodr
    nop
    jal        .text
    nop
    lui        $a5,0x2
.L00012428:
    subu       $a3,$s1,$s0
    lw         $a2,0($gp)
    li         $t8,1
    ori        $a0,$a5,0xa300
    sw         $t8,0($gp)
    bltz       $a3, .L000124a4
    move       $v0,$a3
.L00012444:
    sltu       $t9,$a0,$v0
    beqz       $t9, .L00012340
    slt        $ra,$a2,$s0
    lui        $a0,0x0
    lui        $a5,0x0
    beqz       $ra, .L0001231c
    addiu      $a3,$a5,8512
    b          .L0001231c
    addiu      $a3,$a0,8504
.L00012468:
    lui        $s3,0x0
    li         $a0,64
    addiu      $s3,$s3,8296
    jal        cmn_err_tag
    addiu      $a2,$s3,56
    jal        .text
    nop
    b          .L00012428
    lui        $a5,0x2
.L0001248c:
    addiu      $a1,$sp,0
    li         $a0,1
    jal        .text
    sb         $v0,6($sp)
    b          .L000123b4
    lui        $t8,0x400
.L000124a4:
    b          .L00012444
    negu       $v0,$a3

glabel resettodr
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        wtodc
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel rtodc
    move       $a0,$zero
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    jal        .text
    addiu      $a1,$sp,0
    lbu        $t1,5($sp)
    sra        $t9,$t1,0x4
    lbu        $t8,7($sp)
    sll        $t3,$t9,0x2
    sra        $v0,$t8,0x4
    sll        $at,$v0,0x2
    addu       $t3,$t3,$t9
    addu       $at,$at,$v0
    andi       $t8,$t8,0xf
    sll        $at,$at,0x1
    sll        $t3,$t3,0x1
    addu       $t8,$t8,$at
    lbu        $v0,0($sp)
    sll        $t2,$t8,0x2
    sra        $a4,$v0,0x4
    subu       $t2,$t2,$t8
    sll        $a1,$a4,0x2
    sll        $t2,$t2,0x3
    addu       $a1,$a1,$a4
    sll        $a1,$a1,0x1
    addu       $t2,$t2,$t8
    lbu        $a5,3($sp)
    andi       $t1,$t1,0xf
    sll        $t2,$t2,0x2
    lbu        $a0,2($sp)
    addu       $t1,$t1,$t3
    sra        $a7,$a5,0x4
    andi       $v0,$v0,0xf
    sra        $a3,$a0,0x4
    sll        $a6,$a7,0x2
    andi       $a3,$a3,0x3
    andi       $a5,$a5,0xf
    sll        $a2,$a3,0x2
    addu       $a6,$a6,$a7
    addu       $a2,$a2,$a3
    andi       $a0,$a0,0xf
    sll        $a2,$a2,0x1
    sll        $a6,$a6,0x1
    addu       $a0,$a0,$a2
    lbu        $a2,1($sp)
    addu       $v0,$v0,$a1
    sll        $v1,$a0,0x3
    addu       $a5,$a5,$a6
    sra        $a4,$a2,0x4
    andi       $a2,$a2,0xf
    sll        $a3,$a4,0x2
    addu       $a3,$a3,$a4
    lui        $a4,0x1
    subu       $v1,$v1,$a0
    ori        $a4,$a4,0x5180
    sll        $a3,$a3,0x1
    multu      $a4,$a5
    sll        $v1,$v1,0x5
    addu       $a2,$a2,$a3
    addu       $v1,$v1,$a0
    sll        $a0,$a2,0x4
    sll        $v1,$v1,0x4
    subu       $a0,$a0,$a2
    addu       $t1,$t1,$t2
    sll        $a0,$a0,0x2
    andi       $t0,$t1,0x3
    addu       $v1,$v1,$a0
    move       $a2,$zero
    addu       $v0,$v0,$v1
    lui        $v1,0xfffe
    mflo       $a0
    ld         $ra,8($sp)
    ori        $v1,$v1,0xae80
    addu       $v0,$v0,$a0
    lbu        $a5,4($sp)
    beqz       $t0, .L000126b8
    addu       $v0,$v0,$v1
.L000125fc:
    sra        $a7,$a5,0x4
    sll        $a6,$a7,0x2
    addu       $a6,$a6,$a7
    andi       $a5,$a5,0xf
    sll        $a6,$a6,0x1
    lui        $a7,0x0
    addu       $a5,$a5,$a6
    addiu      $a7,$a7,10408
    addiu      $t2,$a5,-1
    addiu      $a6,$t1,-1
    move       $a3,$a7
    beqz       $t2, .L00012650
    addiu      $a5,$a5,-2
.L00012630:
    lw         $t8,0($a3)
    multu      $t8,$a4
    addiu      $a2,$a2,1
    sltu       $t3,$a5,$a2
    addiu      $a3,$a3,4
    mflo       $t2
    beqz       $t3, .L00012630
    addu       $v0,$v0,$t2
.L00012650:
    beqz       $t0, .L000126d0
    lw         $t3,4($a7)
.L00012658:
    sltiu      $t9,$a6,1970
    bnez       $t9, .L000126a8
    move       $a2,$a6
    lui        $a3,0x1e1
    b          .L00012674
    ori        $a3,$a3,0x3380
.L00012670:
    bnez       $a7, .L000126a8
.L00012674:
    andi       $a6,$a2,0x3
    addiu      $a2,$a2,-1
    addu       $v0,$a3,$v0
    sltiu      $a5,$a2,1970
    beqz       $a6, .L000126b0
    andi       $a6,$a2,0x3
.L0001268c:
    addiu      $a2,$a2,-1
    bnez       $a5, .L000126a8
    sltiu      $a7,$a2,1970
    bnez       $a6, .L00012670
    addu       $v0,$a3,$v0
    b          .L00012670
    addu       $v0,$a4,$v0
.L000126a8:
    jr         $ra
    addiu      $sp,$sp,16
.L000126b0:
    b          .L0001268c
    addu       $v0,$a4,$v0
.L000126b8:
    lui        $t2,0x0
    addiu      $t2,$t2,10408
    lw         $a7,4($t2)
    addiu      $a7,$a7,1
    b          .L000125fc
    sw         $a7,4($t2)
.L000126d0:
    addiu      $t3,$t3,-1
    b          .L00012658
    sw         $t3,4($a7)

glabel wtodc
    addiu      $sp,$sp,-32
    lw         $a0,0($gp)
    sd         $s0,16($sp)
    sd         $ra,8($sp)
    jal        .text
    move       $s0,$a0
    li         $a4,1970
    lui        $t0,0x1e2
    lui        $t2,0xfffe
    lui        $a7,0x1e1
    ori        $a7,$a7,0x3380
    ori        $a5,$t2,0xae80
    b          .L0001271c
    ori        $t0,$t0,0x8500
.L00012714:
    subu       $s0,$s0,$a2
.L00012718:
    addiu      $a4,$a4,1
.L0001271c:
    lui        $a3,0x1e1
    sra        $t3,$a4,0x1f
    xor        $t1,$a4,$t3
    subu       $t1,$t1,$t3
    andi       $t1,$t1,0x3
    xor        $t1,$t1,$t3
    subu       $t1,$t1,$t3
    slt        $a6,$s0,$a7
    beqz       $t1, .L000129b0
    ori        $a2,$a3,0x3380
    beqz       $a6, .L00012714
    nop
.L0001274c:
    beqz       $t1, .L000129c8
    lui        $a7,0x0
.L00012754:
    lui        $a6,0x0
    lui        $a2,0x1
    lw         $t0,10408($a6)
    ori        $a2,$a2,0x5180
    multu      $t0,$a2
    mflo       $a7
    sltu       $a7,$s0,$a7
    addiu      $a6,$a6,10408
    bnez       $a7, .L000127b8
    move       $t0,$zero
    move       $a3,$a6
    move       $t0,$zero
.L00012784:
    lw         $t9,0($a3)
    multu      $t9,$a2
    lw         $t8,4($a3)
    mflo       $t3
    multu      $t8,$a2
    subu       $s0,$s0,$t3
    mflo       $a7
    sltu       $a7,$s0,$a7
    addiu      $a3,$a3,4
    beqz       $a7, .L00012784
    addiu      $t0,$t0,1
.L000127b8:
    beqz       $t1, .L000129dc
    lw         $t1,4($a6)
.L000127c0:
    sltu       $ra,$s0,$a2
    li         $a7,1
    bnez       $ra, .L000127f8
    move       $a6,$zero
    li         $a7,1
.L000127d4:
    addu       $s0,$s0,$a5
    sltu       $at,$s0,$a2
    addiu      $a7,$a7,1
    bnez       $at, .L000127f8
    nop
    addu       $s0,$s0,$a5
    sltu       $v1,$s0,$a2
    beqz       $v1, .L000127d4
    addiu      $a7,$a7,1
.L000127f8:
    sltiu      $a0,$s0,3600
    bnez       $a0, .L0001282c
    move       $a5,$zero
    move       $a6,$zero
.L00012808:
    addiu      $s0,$s0,-3600
    sltiu      $a1,$s0,3600
    addiu      $a6,$a6,1
    bnez       $a1, .L0001282c
    nop
    addiu      $s0,$s0,-3600
    sltiu      $a2,$s0,3600
    beqz       $a2, .L00012808
    addiu      $a6,$a6,1
.L0001282c:
    sltiu      $a3,$s0,60
    bnez       $a3, .L00012860
    nop
    move       $a5,$zero
.L0001283c:
    addiu      $s0,$s0,-60
    sltiu      $t1,$s0,60
    addiu      $a5,$a5,1
    bnez       $t1, .L00012860
    nop
    addiu      $s0,$s0,-60
    sltiu      $t2,$s0,60
    beqz       $t2, .L0001283c
    addiu      $a5,$a5,1
.L00012860:
    li         $a0,10
    div        $zero,$s0,$a0
    mflo       $t8
    sd         $s1,24($sp)
    mfhi       $s1
    div        $zero,$a5,$a0
    mflo       $t1
    nop
    mfhi       $a5
    div        $zero,$a6,$a0
    mflo       $t3
    nop
    mfhi       $t2
    div        $zero,$a7,$a0
    addiu      $t0,$t0,1
    mflo       $a2
    nop
    mfhi       $v1
    div        $zero,$t0,$a0
    li         $a7,100
    mflo       $a3
    nop
    mfhi       $at
    div        $zero,$a4,$a7
    mfhi       $a6
    nop
    mflo       $a1
    div        $zero,$a6,$a0
    mflo       $ra
    nop
    mfhi       $t9
    div        $zero,$a1,$a0
    li         $a0,1000
    mfhi       $t0
    div        $zero,$a4,$a0
    sll        $t8,$t8,0x4
    sb         $v0,6($sp)
    sll        $t3,$t3,0x4
    or         $s1,$s1,$t8
    sb         $s1,0($sp)
    sll        $a2,$a2,0x4
    ld         $s1,24($sp)
    or         $t2,$t2,$t3
    sll        $v0,$a3,0x4
    sb         $t2,2($sp)
    or         $v1,$v1,$a2
    or         $at,$at,$v0
    sb         $v1,3($sp)
    addiu      $a1,$sp,0
    sll        $ra,$ra,0x4
    sb         $at,4($sp)
    or         $t9,$t9,$ra
    li         $a0,1
    sb         $t9,5($sp)
    sll        $a4,$t1,0x4
    mflo       $t1
    or         $a4,$a5,$a4
    sb         $a4,1($sp)
    sll        $t1,$t1,0x4
    or         $t0,$t0,$t1
    jal        .text
    sb         $t0,7($sp)
    jal        .text
    nop
    ld         $ra,8($sp)
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000129b0:
    slt        $a3,$s0,$t0
    lui        $a2,0x1e2
    bnez       $a3, .L0001274c
    ori        $a2,$a2,0x8500
    b          .L00012718
    subu       $s0,$s0,$a2
.L000129c8:
    addiu      $a7,$a7,10408
    lw         $a6,4($a7)
    addiu      $a6,$a6,1
    b          .L00012754
    sw         $a6,4($a7)
.L000129dc:
    addiu      $t1,$t1,-1
    b          .L000127c0
    sw         $t1,4($a6)
    addiu      $sp,$sp,-96
    sd         $a0,24($sp)
    sd         $s0,0($sp)
    sd         $ra,16($sp)
    jal        splhi
    move       $s0,$a1
    sd         $v0,8($sp)
    sd         $s3,32($sp)
    sd         $s6,40($sp)
    sd         $s4,48($sp)
    sd         $s1,56($sp)
    sd         $s5,64($sp)
    lw         $at,-32500($gp)
    sd         $s7,72($sp)
    sd         $s2,80($sp)
    beqz       $at, .L00012c18
    sd         $s8,88($sp)
    lui        $s1,0xbf3a
.L00012a30:
    ori        $s5,$s1,0x4807
    ori        $s7,$s1,0x607
    ori        $s6,$s1,0x907
    ld         $t8,24($sp)
    ori        $s8,$s1,0x807
    ori        $s4,$s1,0x407
    ori        $s3,$s1,0x7
    ori        $s2,$s1,0xb07
    bnez       $t8, .L00012b04
    ori        $s1,$s1,0xa07
    jal        pciio_pio_read8
    move       $a0,$s2
    move       $a1,$s2
    ori        $a0,$v0,0x80
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    jal        pciio_pio_read8
    move       $a0,$s1
    move       $a1,$s1
    ori        $a0,$v0,0x10
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    jal        pciio_pio_read8
    move       $a0,$s3
    lui        $a0,0xbf3a
    sb         $v0,0($s0)
    jal        pciio_pio_read8
    ori        $a0,$a0,0x207
    sb         $v0,1($s0)
    jal        pciio_pio_read8
    move       $a0,$s4
    andi       $a1,$v0,0x3f
    lui        $a0,0xbf3a
    sb         $a1,2($s0)
    jal        pciio_pio_read8
    ori        $a0,$a0,0x707
    andi       $a2,$v0,0x3f
    sb         $a2,3($s0)
    jal        pciio_pio_read8
    move       $a0,$s8
    andi       $a3,$v0,0x1f
    sb         $a3,4($s0)
    jal        pciio_pio_read8
    move       $a0,$s6
    sb         $v0,5($s0)
    jal        pciio_pio_read8
    move       $a0,$s7
    andi       $a4,$v0,0x7
    sb         $a4,6($s0)
    jal        pciio_pio_read8
    move       $a0,$s5
    b          .L00012bc0
    sb         $v0,7($s0)
.L00012b04:
    jal        pciio_pio_read8
    move       $a0,$s1
    move       $a1,$s1
    ori        $a0,$v0,0x30
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    jal        pciio_pio_read8
    move       $a0,$s1
    li         $a0,-65
    move       $a1,$s1
    and        $a0,$v0,$a0
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    jal        pciio_pio_read8
    move       $a0,$s2
    move       $a1,$s2
    ori        $a0,$v0,0x80
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    lbu        $a0,0($s0)
    jal        pciio_pio_write8
    move       $a1,$s3
    lui        $a1,0xbf3a
    lbu        $a0,1($s0)
    jal        pciio_pio_write8
    ori        $a1,$a1,0x207
    lbu        $a0,2($s0)
    move       $a1,$s4
    andi       $a0,$a0,0x3f
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    lui        $a1,0xbf3a
    lbu        $a0,3($s0)
    jal        pciio_pio_write8
    ori        $a1,$a1,0x707
    lbu        $a0,4($s0)
    jal        pciio_pio_write8
    move       $a1,$s8
    lbu        $a0,5($s0)
    jal        pciio_pio_write8
    move       $a1,$s6
    lbu        $a0,6($s0)
    jal        pciio_pio_write8
    move       $a1,$s7
    lbu        $a0,7($s0)
    jal        pciio_pio_write8
    move       $a1,$s5
.L00012bc0:
    ld         $s3,32($sp)
    ld         $s6,40($sp)
    ld         $s4,48($sp)
    ld         $s0,0($sp)
    ld         $s1,56($sp)
    ld         $s5,64($sp)
    ld         $s7,72($sp)
    ld         $s8,8($sp)
    jal        pciio_pio_read8
    move       $a0,$s2
    li         $a0,-129
    move       $a1,$s2
    and        $a0,$v0,$a0
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    ld         $s2,80($sp)
    jal        splx
    move       $a0,$s8
    ld         $ra,16($sp)
    ld         $s8,88($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L00012c18:
    jal        .text
    nop
    b          .L00012a30
    lui        $s1,0xbf3a

glabel read_dallas_nvram
    addu       $at,$a1,$a2
    addiu      $sp,$sp,-64
    slti       $at,$at,114
    li         $v0,1
    sd         $s0,24($sp)
    move       $s0,$a1
    sd         $s1,16($sp)
    beqz       $at, .L00012cf8
    move       $s1,$a2
    sd         $a0,8($sp)
    blez       $a1, .L00012cf8
    sd         $ra,40($sp)
    jal        splhi
    nop
    lui        $a0,0xbf3a
    sd         $v0,0($sp)
    jal        pciio_pio_read8
    ori        $a0,$a0,0xa07
    lui        $a1,0xbf3a
    li         $a0,-17
    ori        $a1,$a1,0xa07
    and        $a0,$v0,$a0
    sd         $s3,48($sp)
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    li         $s3,-1
    addiu      $s1,$s1,-1
    lui        $a2,0xbf3a
    sd         $s2,32($sp)
    ld         $s2,8($sp)
    beq        $s1, $s3, .L00012cd0
    addu       $a1,$s0,$s1
    ori        $s0,$a2,0xe08
    addu       $s2,$s1,$s2
    addu       $s0,$a1,$s0
.L00012cb4:
    jal        pciio_pio_read8
    move       $a0,$s0
    addiu      $s1,$s1,-1
    addiu      $s2,$s2,-1
    addiu      $s0,$s0,-1
    bne        $s1, $s3, .L00012cb4
    sb         $v0,1($s2)
.L00012cd0:
    ld         $s3,48($sp)
    ld         $s2,32($sp)
    jal        splx
    ld         $a0,0($sp)
    ld         $ra,40($sp)
    move       $v0,$zero
    ld         $s1,16($sp)
.L00012cec:
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00012cf8:
    b          .L00012cec
    ld         $s1,16($sp)

glabel write_dallas_nvram
    addu       $at,$a1,$a2
    addiu      $sp,$sp,-64
    slti       $at,$at,114
    li         $v0,1
    sd         $s0,24($sp)
    move       $s0,$a1
    sd         $s2,16($sp)
    beqz       $at, .L00012dd0
    move       $s2,$a2
    sd         $a0,8($sp)
    blez       $a1, .L00012dd0
    sd         $ra,40($sp)
    jal        splhi
    nop
    lui        $a0,0xbf3a
    sd         $v0,0($sp)
    jal        pciio_pio_read8
    ori        $a0,$a0,0xa07
    lui        $a1,0xbf3a
    li         $a0,-17
    ori        $a1,$a1,0xa07
    and        $a0,$v0,$a0
    sd         $s3,48($sp)
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    li         $s3,-1
    addiu      $s2,$s2,-1
    lui        $a2,0xbf3a
    sd         $s1,32($sp)
    beq        $s2, $s3, .L00012da8
    addu       $a1,$s0,$s2
    ld         $s0,8($sp)
    ori        $s1,$a2,0xe08
    addu       $s1,$a1,$s1
    addu       $s0,$s2,$s0
.L00012d8c:
    lbu        $a0,0($s0)
    jal        pciio_pio_write8
    move       $a1,$s1
    addiu      $s2,$s2,-1
    addiu      $s1,$s1,-1
    bne        $s2, $s3, .L00012d8c
    addiu      $s0,$s0,-1
.L00012da8:
    ld         $s3,48($sp)
    ld         $s1,32($sp)
    jal        splx
    ld         $a0,0($sp)
    ld         $ra,40($sp)
    move       $v0,$zero
    ld         $s2,16($sp)
.L00012dc4:
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L00012dd0:
    b          .L00012dc4
    ld         $s2,16($sp)
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        splhi
    sd         $s0,8($sp)
    move       $s0,$v0
    lui        $a0,0xbf3a
    jal        pciio_pio_read8
    ori        $a0,$a0,0xa07
    lui        $a1,0xbf3a
    li         $a0,-17
    ori        $a1,$a1,0xa07
    and        $a0,$v0,$a0
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    lui        $a0,0xbf3a
    jal        pciio_pio_read8
    ori        $a0,$a0,0xe07
    ori        $a0,$v0,0x1
    lui        $a1,0xbf3a
    andi       $a0,$a0,0xff
    jal        pciio_pio_write8
    ori        $a1,$a1,0xe07
    jal        splx
    move       $a0,$s0
    ld         $ra,0($sp)
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,16
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        splhi
    sd         $s0,8($sp)
    move       $s0,$v0
    lui        $a0,0xbf3a
    jal        pciio_pio_read8
    ori        $a0,$a0,0xa07
    lui        $a1,0xbf3a
    li         $a0,-17
    ori        $a1,$a1,0xa07
    and        $a0,$v0,$a0
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    lui        $a0,0xbf3a
    jal        pciio_pio_read8
    ori        $a0,$a0,0xe07
    lui        $a1,0xbf3a
    li         $a0,-2
    ori        $a1,$a1,0xe07
    and        $a0,$v0,$a0
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    jal        splx
    move       $a0,$s0
    ld         $ra,0($sp)
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,16
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    jal        splhi
    nop
    lui        $a0,0xbf3a
    sd         $v0,16($sp)
    jal        pciio_pio_read8
    ori        $a0,$a0,0xa07
    lui        $a1,0xbf3a
    li         $a0,-17
    ori        $a1,$a1,0xa07
    and        $a0,$v0,$a0
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    lui        $a0,0xbf3a
    jal        pciio_pio_read8
    ori        $a0,$a0,0xe07
    sd         $v0,8($sp)
    jal        splx
    ld         $a0,16($sp)
    ld         $ra,0($sp)
    ld         $v0,8($sp)
    addiu      $sp,$sp,32
    jr         $ra
    andi       $v0,$v0,0x1

glabel set_autopoweron
    lw         $at,0($gp)
    addiu      $sp,$sp,-32
    lw         $a0,0($gp)
    sd         $ra,0($sp)
    sd         $s0,8($sp)
    sltu       $at,$a0,$at
    sd         $s2,16($sp)
    bnez       $at, .L000130bc
    sd         $s1,24($sp)
    jal        .text
    move       $s0,$a0
    li         $a0,1970
    lui        $a6,0x1e1
    lui        $t0,0x1e2
    ori        $a6,$a6,0x3380
    b          .L00012f68
    ori        $t0,$t0,0x8500
.L00012f64:
    subu       $s0,$s0,$a1
.L00012f68:
    lui        $a5,0x1e1
    sra        $t1,$a0,0x1f
    xor        $a7,$a0,$t1
    subu       $a7,$a7,$t1
    andi       $a7,$a7,0x3
    xor        $a7,$a7,$t1
    subu       $a7,$a7,$t1
    slt        $a4,$s0,$a6
    ori        $a1,$a5,0x3380
    beqz       $a7, .L000130d4
    addiu      $a0,$a0,1
    beqz       $a4, .L00012f64
.L00012f98:
    lui        $a4,0x0
    lui        $a0,0x1
    lw         $a6,10408($a4)
    ori        $a0,$a0,0x5180
    multu      $a6,$a0
    mflo       $a5
    sltu       $a5,$s0,$a5
    bnez       $a5, .L00012ff0
    addiu      $a4,$a4,10408
    move       $a1,$a4
.L00012fc0:
    lw         $a6,0($a1)
    multu      $a6,$a0
    lw         $a5,4($a1)
    mflo       $a3
    multu      $a5,$a0
    subu       $s0,$s0,$a3
    mflo       $a2
    sltu       $a2,$s0,$a2
    beqz       $a2, .L00012fc0
    addiu      $a1,$a1,4
.L00012ff0:
    beqz       $a7, .L00013104
    lw         $a5,4($a4)
.L00012ff8:
    slti       $a5,$v0,8
    sltu       $a2,$s0,$a0
    li         $s2,1
    lui        $a1,0xfffe
    bnez       $a2, .L00013038
    ori        $a1,$a1,0xae80
    li         $s2,1
.L00013014:
    addu       $s0,$s0,$a1
    sltu       $a3,$s0,$a0
    addiu      $s2,$s2,1
    bnez       $a3, .L00013038
    nop
    addu       $s0,$s0,$a1
    sltu       $a4,$s0,$a0
    beqz       $a4, .L00013014
    addiu      $s2,$s2,1
.L00013038:
    sltiu      $a6,$s0,3600
    bnez       $a6, .L0001306c
    move       $s1,$zero
    move       $s1,$zero
.L00013048:
    addiu      $s0,$s0,-3600
    sltiu      $a7,$s0,3600
    addiu      $s1,$s1,1
    bnez       $a7, .L0001306c
    nop
    addiu      $s0,$s0,-3600
    sltiu      $t0,$s0,3600
    beqz       $t0, .L00013048
    addiu      $s1,$s1,1
.L0001306c:
    sltiu      $t1,$s0,60
    move       $a4,$zero
    bnez       $t1, .L000130ac
    slti       $a0,$s1,24
    move       $a4,$zero
.L00013080:
    addiu      $s0,$s0,-60
    sltiu      $t2,$s0,60
    addiu      $a4,$a4,1
    bnez       $t2, .L000130a0
    addiu      $s0,$s0,-60
    sltiu      $t3,$s0,60
    beqz       $t3, .L00013080
    addiu      $a4,$a4,1
.L000130a0:
    slti       $t8,$a4,60
    beqz       $t8, .L000130c0
    ld         $ra,0($sp)
.L000130ac:
    beqz       $a0, .L000130c0
    ld         $ra,0($sp)
    bnez       $a5, .L00013110
    li         $s0,10
.L000130bc:
    ld         $ra,0($sp)
.L000130c0:
    ld         $s1,24($sp)
    ld         $s2,16($sp)
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L000130d4:
    slt        $a2,$s0,$t0
    lui        $a1,0x1e2
    bnez       $a2, .L000130ec
    ori        $a1,$a1,0x8500
    b          .L00012f68
    subu       $s0,$s0,$a1
.L000130ec:
    lui        $a4,0x0
    addiu      $a4,$a4,10408
    lw         $a3,4($a4)
    addiu      $a3,$a3,1
    b          .L00012f98
    sw         $a3,4($a4)
.L00013104:
    addiu      $a5,$a5,-1
    b          .L00012ff8
    sw         $a5,4($a4)
.L00013110:
    div        $zero,$a4,$s0
    lui        $a1,0xbf3a
    mflo       $a2
    mfhi       $a0
    sll        $a2,$a2,0x4
    ori        $a1,$a1,0x307
    or         $a0,$a0,$a2
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    div        $zero,$s1,$s0
    lui        $a1,0xbf3a
    mflo       $a2
    mfhi       $a0
    sll        $a2,$a2,0x4
    ori        $a1,$a1,0x507
    or         $a0,$a0,$a2
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    lui        $s0,0xbf3a
    ori        $s0,$s0,0xa07
    jal        pciio_pio_read8
    move       $a0,$s0
    li         $s1,10
    move       $a1,$s0
    ori        $a0,$v0,0x10
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    div        $zero,$s2,$s1
    lui        $a1,0xbf3a
    mflo       $a2
    mfhi       $a0
    sll        $a2,$a2,0x4
    ori        $a1,$a1,0x4907
    or         $a0,$a0,$a2
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    li         $a0,192
    lui        $a1,0xbf3a
    jal        pciio_pio_write8
    ori        $a1,$a1,0x107
    lui        $s0,0xbf3a
    ori        $s0,$s0,0x4b07
    jal        pciio_pio_read8
    move       $a0,$s0
    move       $a1,$s0
    ori        $a0,$v0,0x2
    jal        pciio_pio_write8
    andi       $a0,$a0,0xff
    b          .L000130c0
    ld         $ra,0($sp)
    move       $a3,$zero
    li         $t0,1970
    lui        $t3,0x1e2
    lui        $a7,0xfffe
    lui        $t2,0x1e1
    lui        $a6,0x1
    ori        $t2,$t2,0x3380
    ori        $a6,$a6,0x5180
    ori        $a7,$a7,0xae80
    b          .L000132d0
    ori        $t3,$t3,0x8500
.L00013204:
    addiu      $a3,$a3,1
.L00013208:
    sltu       $t8,$a2,$a6
    addu       $a2,$a2,$a7
    sltu       $a4,$a2,$a6
    bnez       $t8, .L00013224
    addu       $a2,$a2,$a7
    beqz       $a4, .L00013204
    addiu      $a3,$a3,1
.L00013224:
    addiu      $t0,$t0,1
    bnez       $t1, .L0001327c
    subu       $a0,$a0,$a5
    sra        $at,$t0,0x1f
    xor        $t9,$t0,$at
.L00013238:
    subu       $t9,$t9,$at
    andi       $t9,$t9,0x3
    xor        $t9,$t9,$at
    subu       $t9,$t9,$at
    lui        $t1,0x1e1
    slt        $a2,$a0,$t2
    lui        $a4,0x1e1
    beqz       $t9, .L000132b8
    slt        $v1,$a0,$t3
    bnez       $a2, .L0001326c
    ori        $a5,$a4,0x3380
.L00013264:
    b          .L00013274
    move       $a2,$a5
.L0001326c:
    ori        $a5,$t1,0x3380
.L00013270:
    move       $a2,$a0
.L00013274:
    b          .L00013208
    slt        $t1,$a0,$a5
.L0001327c:
    slti       $at,$a3,4
    li         $a2,7
    bnez       $at, .L000132ac
    addiu      $a0,$a3,-3
    div        $zero,$a0,$a2
    mfhi       $v0
    div        $zero,$v0,$a2
    mfhi       $a3
    b          .L000132b0
    nop
.L000132ac:
    addiu      $a3,$a3,4
.L000132b0:
    jr         $ra
    addiu      $v0,$a3,1
.L000132b8:
    lui        $a2,0x1e2
    lui        $a4,0x1e2
    beqz       $v1, .L00013264
    ori        $a5,$a4,0x8500
    b          .L00013270
    ori        $a5,$a2,0x8500
.L000132d0:
    sra        $at,$t0,0x1f
    b          .L00013238
    xor        $t9,$t0,$at

glabel chktimedrift
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        rtodc
    nop
    lw         $a3,0($gp)
    subu       $a3,$v0,$a3
    slti       $at,$a3,3
    beqz       $at, .L00013310
    slti       $a2,$a3,-2
    bnez       $a2, .L00013310
    ld         $ra,0($sp)
.L00013308:
    jr         $ra
    addiu      $sp,$sp,16
.L00013310:
    lui        $a4,0xf
    ori        $a4,$a4,0x4240
    mult       $a3,$a4
    mflo       $a0
    jal        doadjtime
    nop
    b          .L00013308
    ld         $ra,0($sp)

glabel systrap
    li         $k0,-16384
    mfc0       $at,c0_entryhi
    mtc0       $k0,c0_entryhi
    li         $k0,3
    mtc0       $k0,c0_index
    lw         $k1,-23996($zero)
    li         $k0,1
    sll        $k1,$k1,0x6
    srl        $k1,$k1,0x6
    mtc0       $k0,c0_entrylo1
    mtc0       $k1,c0_entrylo0
    andi       $k1,$k1,0x2
    nop
    tlbwi
    beqz       $k1, .L00013588
    mtc0       $at,c0_entryhi
    lw         $k1,-24556($zero)
    lw         $k1,640($k1)
    addiu      $k1,$k1,336
    sd         $gp,216($k1)
    lui        $gp,0x0
    sd         $sp,224($k1)
    addiu      $gp,$gp,0
    sd         $a0,24($k1)
    sd         $a1,32($k1)
    sd         $a2,40($k1)
    sd         $a3,48($k1)
    sd         $a4,56($k1)
    sd         $a5,64($k1)
    sd         $a6,72($k1)
    sd         $a7,80($k1)
    mfc0       $a0,c0_epc
    sd         $s0,120($k1)
    sd         $s1,128($k1)
    sd         $s2,136($k1)
    sd         $s3,144($k1)
    sd         $s4,152($k1)
    sd         $s5,160($k1)
    sd         $s6,168($k1)
    sd         $s7,176($k1)
    sd         $ra,240($k1)
    mfc0       $s0,c0_sr
    addiu      $a0,$a0,4
    sd         $a0,288($k1)
    sd         $a0,352($k1)
    sd         $v0,8($k1)
    sd         $v1,16($k1)
    sd         $s8,232($k1)
    sd         $s0,248($k1)
    li         $sp,-12432
    lw         $a0,-24552($zero)
    jal        ktimer_switch
    li         $a1,1
    ld         $a0,8($k1)
    li         $k1,1
    sb         $k1,-24513($zero)
    andi       $a2,$s0,0xff00
    ori        $a2,$a2,0x1
    mtc0       $a2,c0_sr
    jal        syscall
    andi       $s2,$s0,0xff00
    mtc0       $s2,c0_sr
    lw         $k1,-24556($zero)
    lw         $k1,640($k1)
    addiu      $k1,$k1,336
    bnez       $v0, .L00013590
    nop
    lw         $a0,-24552($zero)
    jal        ktimer_switch
    li         $a1,0
    ld         $v0,8($k1)
    ld         $v1,16($k1)
    ld         $s8,232($k1)
    sb         $zero,-24513($zero)
    ld         $gp,216($k1)
    ld         $a7,80($k1)
    ld         $a6,72($k1)
    ld         $a5,64($k1)
    ld         $a4,56($k1)
    ld         $a3,48($k1)
    ld         $a2,40($k1)
    ld         $a1,32($k1)
    ld         $a0,24($k1)
    ori        $s2,$s2,0x2
    mtc0       $s2,c0_sr
    ld         $s6,248($k1)
    ld         $s7,288($k1)
    ld         $s0,120($k1)
    mtc0       $s6,c0_sr
    ld         $s1,128($k1)
    ld         $s2,136($k1)
    ld         $s3,144($k1)
    mtc0       $s7,c0_epc
    ld         $s4,152($k1)
    ld         $s5,160($k1)
    ld         $s6,168($k1)
    ld         $s7,176($k1)
    ld         $ra,240($k1)
    ld         $sp,224($k1)
    mfc0       $t1,c0_entryhi
    lw         $k0,-24556($zero)
    lw         $k0,640($k0)
    lw         $t0,700($k0)
    lw         $k0,696($k0)
    sll        $t0,$t0,0x6
    srl        $t0,$t0,0x6
    sll        $k0,$k0,0x6
    srl        $k0,$k0,0x6
    mtc0       $t0,c0_entrylo1
    lw         $t0,-24556($zero)
    lw         $t0,640($t0)
    lw         $t0,752($t0)
    andi       $t1,$t1,0xff
    or         $t0,$t0,$t1
    mtc0       $t0,c0_entryhi
    li         $t0,3
    mtc0       $t0,c0_index
    mtc0       $k0,c0_entrylo0
    tlbwi
    eret
.L00013588:
    j          _baduk
    nop
.L00013590:
    j          exception_exit
    nop

glabel VEC_syscall
    lui        $a1,0x0
    addiu      $a1,$a1,10456
    jal        cmn_err
    li         $a0,0

glabel get_fpc_csr
    mfc0       $v1,c0_sr
    lui        $a0,0x2000
    mtc0       $a0,c0_sr
    cfc1       $v0,c1_fcsr
    mtc0       $v1,c0_sr
    jr         $ra
    nop

glabel set_fpc_csr
    mfc0       $v1,c0_sr
    lui        $a1,0x2000
    mtc0       $a1,c0_sr
    cfc1       $v0,c1_fcsr
    ctc1       $a0,c1_fcsr
    nop
    mtc0       $v1,c0_sr
    jr         $ra
    nop

glabel get_cpu_irr
    mfc0       $v0,c0_prid
    jr         $ra
    nop

glabel get_fpc_irr
    mfc0       $a1,c0_sr
    mtc0       $zero,c0_sr
    li         $a0,7
    sw         $a0,-24104($zero)
    lui        $v0,0x2000
    mtc0       $v0,c0_sr
    cfc1       $v0,c1_fir
    sw         $zero,-24104($zero)
    mtc0       $a1,c0_sr
    jr         $ra
    nop

glabel reviderror
    mtc0       $a1,c0_sr
    move       $v0,$zero
    jr         $ra
    nop

glabel VEC_fpe
    andi       $t0,$s0,0x18
    bnez       $t0, .L000136a4
    nop
    andi       $a2,$s0,0xff00
    ori        $a2,$a2,0x1
    mtc0       $a2,c0_sr
    jal        trap
    move       $a2,$s0
.L000136a4:
    ld         $t1,288($k1)
    ld         $t0,280($k1)
    lw         $t3,-24556($zero)
    lw         $t2,0($t1)
    bgez       $t0, .L000136c4
    sw         $t2,848($t3)
    lw         $t2,4($t1)
    sw         $t2,852($t3)
.L000136c4:
    lui        $at,0x400
    ori        $at,$at,0xff00
    and        $a2,$s0,$at
    ori        $a2,$a2,0x1
    mtc0       $a2,c0_sr
    jal        fp_intr
    move       $s1,$a0
    andi       $s2,$s0,0xff00
    mtc0       $s2,c0_sr
    j          exception_exit
    move       $k1,$s1

glabel pio_mapalloc
    addiu      $sp,$sp,-80
    sd         $a0,8($sp)
    sd         $a1,24($sp)
    sd         $a3,32($sp)
    sd         $a4,16($sp)
    li         $at,10
    move       $v0,$zero
    sd         $s0,48($sp)
    move       $s0,$a2
    beq        $a0, $at, .L00013748
    sd         $ra,64($sp)
.L0001373c:
    ld         $s0,48($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00013748:
    li         $a1,60
    jal        kern_calloc
    li         $a0,1
    ld         $a1,32($sp)
    ld         $a4,24($sp)
    sw         $a4,4($v0)
    ld         $a4,16($sp)
    ld         $a5,8($sp)
    sw         $a5,0($v0)
    lbu        $a3,0($s0)
    sb         $a3,8($v0)
    lw         $a2,4($s0)
    sw         $a2,12($v0)
    lw         $v1,8($s0)
    sw         $a1,24($v0)
    li         $a0,-1
    sw         $a0,28($v0)
    move       $a7,$v0
    move       $a2,$zero
    sw         $v1,16($v0)
.L00013798:
    lbu        $a3,0($a4)
    addiu      $a4,$a4,1
    addiu      $a2,$a2,1
    beqz       $a3, .L000137b0
    slti       $a1,$a2,7
    sb         $a3,32($a7)
.L000137b0:
    bnez       $a1, .L00013798
    addiu      $a7,$a7,1
    lbu        $a1,0($s0)
    beqz       $a1, .L000137e4
    sd         $v0,40($sp)
    li         $a6,1
    beq        $a1, $a6, .L000137e4
    nop
    jal        kern_free
    ld         $a0,40($sp)
    ld         $ra,64($sp)
    b          .L0001373c
    move       $v0,$zero
.L000137e4:
    lw         $a0,8($s0)
    lw         $a1,4($s0)
    addiu      $a0,$a0,4095
    move       $a2,$zero
    sd         $a1,0($sp)
    srl        $a0,$a0,0xc
    li         $a1,16
    jal        kvalloc
    sd         $a0,56($sp)
    ld         $a4,56($sp)
    li         $t2,-64
    ld         $a1,40($sp)
    ld         $ra,64($sp)
    move       $a3,$zero
    lui        $t1,0x4000
    ori        $t0,$t1,0x17
    beqz       $a4, .L00013868
    sw         $v0,20($a1)
    addu       $a2,$v0,$t1
    ld         $a1,0($sp)
    addiu      $a7,$a4,-1
.L00013838:
    and        $a4,$t2,$a1
    addiu      $a1,$a1,4096
    addiu      $a3,$a3,1
    srl        $t1,$a2,0xc
    lw         $a5,0($gp)
    sltu       $a6,$a7,$a3
    sll        $t1,$t1,0x2
    addiu      $a2,$a2,4096
    addu       $a5,$a5,$t1
    or         $a4,$t0,$a4
    beqz       $a6, .L00013838
    sw         $a4,0($a5)
.L00013868:
    b          .L0001373c
    ld         $v0,40($sp)

glabel pio_mapaddr
    lw         $a4,12($a0)
    lw         $at,16($a0)
    addu       $at,$at,$a4
    sltu       $at,$at,$a1
    move       $v0,$zero
    bnez       $at, .L00013894
    subu       $v1,$a1,$a4
    lw         $v0,20($a0)
    addu       $v0,$v0,$v1
.L00013894:
    jr         $ra
    nop

glabel pio_mapfree
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a0
    bnez       $a0, .L000138bc
    sd         $ra,8($sp)
.L000138b0:
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L000138bc:
    lw         $a1,16($a0)
    lw         $a0,20($a0)
    addiu      $a1,$a1,4095
    jal        kvfree
    srl        $a1,$a1,0xc
    jal        kern_free
    move       $a0,$s0
    b          .L000138b0
    ld         $ra,8($sp)

glabel orb_rmw
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        spl7
    sd         $a1,16($sp)
    move       $a0,$v0
    ld         $v0,16($sp)
    lbu        $at,0($s8)
    or         $at,$at,$v0
    jal        splx
    sb         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel orh_rmw
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        spl7
    sd         $a1,16($sp)
    move       $a0,$v0
    ld         $v0,16($sp)
    lhu        $at,0($s8)
    andi       $v0,$v0,0xff
    or         $at,$at,$v0
    jal        splx
    sh         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel orw_rmw
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        spl7
    sd         $a1,16($sp)
    move       $a0,$v0
    ld         $v0,16($sp)
    lw         $at,0($s8)
    or         $at,$at,$v0
    jal        splx
    sw         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel andb_rmw
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        spl7
    sd         $a1,16($sp)
    move       $a0,$v0
    ld         $v0,16($sp)
    lbu        $at,0($s8)
    and        $at,$at,$v0
    jal        splx
    sb         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel andh_rmw
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        spl7
    sd         $a1,16($sp)
    move       $a0,$v0
    ld         $v0,16($sp)
    lhu        $at,0($s8)
    andi       $v0,$v0,0xff
    and        $at,$at,$v0
    jal        splx
    sh         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel andw_rmw
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        spl7
    sd         $a1,16($sp)
    move       $a0,$v0
    ld         $v0,16($sp)
    lw         $at,0($s8)
    and        $at,$at,$v0
    jal        splx
    sw         $at,0($s8)
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel us_delay
    addiu      $sp,$sp,-48
    lw         $at,0($gp)
    sd         $s1,24($sp)
    lui        $a4,0x20
    sd         $s3,0($sp)
    ori        $a1,$a4,0xc49b
    sd         $ra,8($sp)
    beqz       $at, .L00013b20
    sltu       $a3,$a1,$a0
    li         $s1,7
.L00013a90:
    li         $s3,-1
    beqz       $a3, .L00013b18
    sd         $s0,16($sp)
    li         $s0,1
.L00013aa0:
    srl        $a0,$a0,0x1
    sltu       $v0,$a1,$a0
    addiu      $s0,$s0,1
    beqz       $v0, .L00013ac4
    nop
    srl        $a0,$a0,0x1
    sltu       $v1,$a1,$a0
    bnez       $v1, .L00013aa0
    addiu      $s0,$s0,1
.L00013ac4:
    addiu      $s0,$s0,-1
    sll        $a1,$a0,0x5
    sd         $s2,32($sp)
    beq        $s0, $s3, .L00013afc
    subu       $a1,$a1,$a0
    sll        $s2,$a1,0x2
    addu       $s2,$s2,$a0
    sll        $s2,$s2,0x3
    move       $a0,$s2
.L00013ae8:
    jal        delayloop
    move       $a1,$s1
    addiu      $s0,$s0,-1
    bne        $s0, $s3, .L00013ae8
    move       $a0,$s2
.L00013afc:
    ld         $s2,32($sp)
    ld         $ra,8($sp)
    ld         $s3,0($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00013b18:
    b          .L00013ac4
    li         $s0,1
.L00013b20:
    b          .L00013a90
    lw         $s1,-23992($zero)

glabel us_delaybus
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        flushbus
    move       $s0,$a0
    beqz       $s0, .L00013b50
    ld         $ra,8($sp)
    jal        us_delay
    addiu      $a0,$s0,-1
    ld         $ra,8($sp)
.L00013b50:
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel cache_preempt_limit
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        _ticksper1024inst
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel findcpufreq_raw
    addiu      $sp,$sp,-96
    sd         $ra,72($sp)
    jal        get_cpu_irr
    sd         $s1,80($sp)
    move       $s1,$v0
    jal        _cpuclkper100ticks
    addiu      $a0,$sp,0
    lw         $at,0($sp)
    lui        $a5,0x3f9
    ori        $a5,$a5,0x4004
    divu       $zero,$a5,$at
    lui        $t8,0x3d
    li         $t9,35
    sd         $t9,24($sp)
    li         $t9,15
    lui        $t3,0x5f9
    sd         $t3,56($sp)
    li         $t3,14
    mflo       $a2
    ld         $ra,72($sp)
    lui        $a3,0x5d6
    multu      $v0,$a2
    sd         $a3,16($sp)
    move       $a3,$zero
    lui        $a1,0x55d
    sd         $a1,48($sp)
    li         $a4,35
    li         $a0,35
    sd         $a0,8($sp)
    lui        $v1,0x539
    lui        $t2,0x0
    sd         $v1,32($sp)
    li         $t0,-1
    addiu      $t2,$t2,10472
    sd         $a4,64($sp)
    move       $a4,$t0
    move       $a5,$t2
    lw         $t1,4($sp)
    teq        $at,$zero,0x7
    li         $v0,35
    mflo       $a6
    b          .L00013c50
    sd         $v0,40($sp)
.L00013c24:
    beq        $a4, $t0, .L00013cc4
    subu       $a2,$a6,$a7
    slt        $a7,$a2,$a4
.L00013c30:
    beqz       $a7, .L00013c40
    nop
    move       $a4,$a2
    move       $t1,$a3
.L00013c40:
    addiu      $a3,$a3,1
    sltiu      $at,$a3,39
    beqz       $at, .L00013cd0
    nop
.L00013c50:
    lw         $a7,0($a5)
    slt        $v0,$a7,$a6
    beqz       $v0, .L00013ca8
    subu       $a2,$a7,$a6
    beq        $a4, $t0, .L00013cb0
    subu       $a2,$a6,$a7
    slt        $v1,$a2,$a4
.L00013c6c:
    beqz       $v1, .L00013c7c
    nop
    move       $a4,$a2
    move       $t1,$a3
.L00013c7c:
    addiu      $a3,$a3,1
    sltiu      $a0,$a3,39
    beqz       $a0, .L00013cd0
    nop
    lw         $a7,4($a5)
    slt        $a1,$a7,$a6
    addiu      $a5,$a5,8
    beqz       $a1, .L00013cbc
    subu       $a2,$a7,$a6
    b          .L00013c24
    nop
.L00013ca8:
    bne        $a4, $t0, .L00013c6c
    slt        $v1,$a2,$a4
.L00013cb0:
    move       $t1,$a3
    b          .L00013c7c
    move       $a4,$a2
.L00013cbc:
    bne        $a4, $t0, .L00013c30
    slt        $a7,$a2,$a4
.L00013cc4:
    move       $t1,$a3
    b          .L00013c40
    move       $a4,$a2
.L00013cd0:
    ld         $a5,48($sp)
    li         $a3,9
    srl        $a2,$s1,0x8
    ld         $a4,40($sp)
    sll        $v0,$t1,0x2
    andi       $a2,$a2,0xff
    ld         $v1,8($sp)
    addu       $v0,$t2,$v0
    beq        $a2, $a3, .L00013d40
    lw         $v0,0($v0)
    beq        $a2, $t3, .L00013d44
    ld         $a3,56($sp)
    beq        $a2, $t9, .L00013d44
    ld         $a3,56($sp)
.L00013d08:
    ld         $v1,64($sp)
    beq        $a2, $v1, .L00013d88
.L00013d10:
    lw         $a2,152($t2)
.L00013d14:
    slt        $a3,$a2,$a6
    beqz       $a3, .L00013d34
    subu       $a2,$a6,$a2
    ori        $a4,$t8,0x900
    slt        $a4,$a4,$a2
    beqz       $a4, .L00013d38
    ld         $s1,80($sp)
    move       $v0,$a6
.L00013d34:
    ld         $s1,80($sp)
.L00013d38:
    jr         $ra
    addiu      $sp,$sp,96
.L00013d40:
    ld         $a3,56($sp)
.L00013d44:
    ori        $a5,$a5,0x4a80
    bne        $v0, $a5, .L00013d64
    ori        $a3,$a3,0x57b8
    ld         $v0,32($sp)
    beq        $a2, $a4, .L00013db8
    ori        $v0,$v0,0x4ba8
    b          .L00013d14
    lw         $a2,152($t2)
.L00013d64:
    lui        $a4,0x8f5
    ld         $a5,24($sp)
    bne        $v0, $a3, .L00013dc4
    ori        $a4,$a4,0xfdb8
    ld         $v0,16($sp)
    beq        $a2, $a5, .L00013de8
    ori        $v0,$v0,0xa4e8
    b          .L00013d14
    lw         $a2,152($t2)
.L00013d88:
    lui        $a2,0x5d6
    lui        $a7,0x52f
    lui        $a5,0x8f6
    ori        $a7,$a7,0x83c0
    lui        $a3,0x53e
    slt        $a7,$a7,$v0
    ori        $a4,$a5,0x1528
    ori        $a3,$a3,0xc600
    beqz       $a7, .L00013ddc
    slt        $a3,$v0,$a3
    beqz       $a3, .L00013de0
    ori        $a0,$a2,0xa4e8
.L00013db8:
    lui        $v0,0x55d
    b          .L00013d10
    ori        $v0,$v0,0x4a80
.L00013dc4:
    bne        $v0, $a4, .L00013d08
    lui        $a3,0x8f6
    beq        $a2, $v1, .L00013dfc
    ori        $v0,$a3,0x1528
    b          .L00013d14
    lw         $a2,152($t2)
.L00013ddc:
    ori        $a0,$a2,0xa4e8
.L00013de0:
    bne        $v0, $a0, .L00013df4
    nop
.L00013de8:
    lui        $v0,0x5f9
    b          .L00013d10
    ori        $v0,$v0,0x57b8
.L00013df4:
    bne        $v0, $a4, .L00013d14
    lw         $a2,152($t2)
.L00013dfc:
    lui        $v0,0x8f5
    b          .L00013d10
    ori        $v0,$v0,0xfdb8

glabel findcpufreq
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        findcpufreq_raw
    nop
    lui        $v1,0x7
    lui        $at,0xf
    ori        $v1,$v1,0xa120
    ori        $at,$at,0x4240
    addu       $v0,$v0,$v1
    div        $zero,$v0,$at
    ld         $ra,0($sp)
    addiu      $sp,$sp,16
    mflo       $v0
    jr         $ra
    teq        $at,$zero,0x7

glabel cpu_mhz_rating
    addiu      $sp,$sp,-128
    sd         $ra,120($sp)
    jal        findcpufreq_raw
    nop
    move       $a2,$v0
    lui        $a6,0xa5f
    lui        $at,0x5c8
    lui        $t1,0xbeb
    ori        $at,$at,0x1a40
    lui        $t8,0x839
    slt        $at,$v0,$at
    lui        $a7,0x832
    ori        $t9,$t8,0xb680
    ld         $ra,120($sp)
    bnez       $at, .L00013e94
    slt        $a3,$t9,$v0
    lui        $v1,0x5d7
    ori        $v1,$v1,0x5c80
    slt        $v1,$v1,$v0
    beqz       $v1, .L00014044
.L00013e94:
    lui        $t0,0x764
    ori        $t0,$t0,0x1700
    lui        $a5,0xd78
    slt        $t0,$v0,$t0
    lui        $t9,0x8ca
    lui        $a4,0xb62
    sd         $a4,88($sp)
    bnez       $t0, .L00013ecc
    ori        $a4,$a4,0x6dc0
    lui        $t2,0x782
    ori        $t2,$t2,0x9b80
    slt        $t2,$t2,$v0
    beqz       $t2, .L00014078
    lui        $t0,0x773
.L00013ecc:
    slt        $t0,$v0,$a4
    lui        $at,0x82a
    ori        $t3,$a5,0x7c80
    ori        $at,$at,0x7440
    sd         $t3,72($sp)
    lui        $t2,0xbdc
    slt        $at,$v0,$at
    sd         $t2,56($sp)
    slt        $t3,$t3,$v0
    ori        $t2,$t2,0x7fc0
    sd         $t2,64($sp)
    bnez       $at, .L00013f04
    slt        $t2,$v0,$t2
    beqz       $a3, .L00014088
.L00013f04:
    lui        $t8,0xd69
    lui        $v1,0x8d2
    lui        $a3,0x8e1
    ori        $v1,$v1,0x4d00
    ori        $a3,$a3,0x8f40
    slt        $v1,$v0,$v1
    sd         $t8,48($sp)
    ori        $t8,$t8,0x3a40
    slt        $a0,$a3,$v0
    bnez       $v1, .L00013f40
    slt        $a7,$v0,$t8
    bnez       $a0, .L00013f4c
    lui        $a3,0x900
    b          .L0001404c
    ori        $a2,$t9,0xabe0
.L00013f40:
    slt        $a1,$v0,$a3
    bnez       $a1, .L00013f5c
    lui        $a3,0x900
.L00013f4c:
    ori        $a3,$a3,0x13c0
    slt        $a3,$a3,$v0
    beqz       $a3, .L00014080
    lui        $a3,0x8f0
.L00013f5c:
    lui        $v1,0xb53
    lui        $at,0x9e4
    sd         $v1,96($sp)
    lui        $a3,0xa7d
    ori        $at,$at,0xf580
    sd         $a3,24($sp)
    lui        $t9,0xb71
    slt        $at,$v0,$at
    sd         $t9,32($sp)
    ori        $a3,$a3,0x8c00
    ori        $t9,$t9,0xb000
    sd         $t9,40($sp)
    bnez       $at, .L00013fac
    slt        $t9,$t9,$v0
    lui        $a1,0x9d5
    lui        $a0,0x9f4
    ori        $a0,$a0,0x37c0
    slt        $a0,$a0,$v0
    beqz       $a0, .L00014090
    sd         $a1,80($sp)
.L00013fac:
    lui        $at,0xf05
    sd         $at,16($sp)
    lui        $v1,0xc0a
    sd         $v1,0($sp)
    ori        $a1,$a6,0x780
    ori        $at,$at,0x3700
    sd         $at,112($sp)
    slt        $a1,$v0,$a1
    ori        $v1,$v1,0x4680
    sd         $v1,8($sp)
    slt        $v1,$v1,$v0
    bnez       $a1, .L00013ff0
    sd         $v1,104($sp)
    slt        $a0,$a3,$v0
    lui        $a6,0xa6e
    beqz       $a0, .L0001409c
    nop
.L00013ff0:
    bnez       $t0, .L00014000
    nop
    beqz       $t9, .L000140a4
    nop
.L00014000:
    bnez       $t2, .L00014010
    ld         $a1,104($sp)
    beqz       $a1, .L000140b0
    nop
.L00014010:
    bnez       $a7, .L00014020
    lui        $a3,0xee6
    beqz       $t3, .L000140b8
    lui        $a3,0xee6
.L00014020:
    ori        $a3,$a3,0xb280
    slt        $a4,$v0,$a3
    bnez       $a4, .L0001404c
    ld         $a4,112($sp)
    slt        $a4,$a4,$v0
    bnez       $a4, .L00014050
    addu       $a4,$a2,$a2
    b          .L0001404c
    move       $a2,$a3
.L00014044:
    lui        $a2,0x5cf
    ori        $a2,$a2,0xbb60
.L0001404c:
    addu       $a4,$a2,$a2
.L00014050:
    lui        $a5,0x7
    lui        $a3,0xf
    ori        $a5,$a5,0xa120
    ori        $a3,$a3,0x4240
    addu       $a4,$a4,$a5
    div        $zero,$a4,$a3
    addiu      $sp,$sp,128
    mflo       $v0
    jr         $ra
    teq        $a3,$zero,0x7
.L00014078:
    b          .L0001404c
    ori        $a2,$t0,0x5940
.L00014080:
    b          .L0001404c
    ori        $a2,$a3,0xd180
.L00014088:
    b          .L0001404c
    ori        $a2,$a7,0x1560
.L00014090:
    ld         $a2,80($sp)
    b          .L0001404c
    ori        $a2,$a2,0xb340
.L0001409c:
    b          .L0001404c
    ori        $a2,$a6,0x49c0
.L000140a4:
    ld         $a2,96($sp)
    b          .L0001404c
    ori        $a2,$a2,0x2b80
.L000140b0:
    b          .L0001404c
    ori        $a2,$t1,0xc200
.L000140b8:
    b          .L0001404c
    move       $a2,$t8

glabel _ticksper1024inst
    lui        $t0,0xb400
    addiu      $t0,$t0,56
    li         $t1,1
    li         $t3,2
.L000140d0:
    ld         $t2,0($t0)
.L000140d4:
    bgtz       $t1, .L000140d4
    addiu      $t1,$t1,-1
    ld         $v0,0($t0)
    addiu      $t3,$t3,-1
    li         $t1,512
    bgtz       $t3, .L000140d0
    dsubu      $v0,$v0,$t2
    jr         $ra
    nop

glabel _cpuclkper100ticks
    mtc0       $zero,c0_count
    lui        $t1,0xb400
    lui        $a4,0x0
    addiu      $t1,$t1,56
    li         $t3,3
    addiu      $a4,$a4,16684
    li         $a5,0
    li         $a6,0
    cache      0x14,0($a4)
    cache      0x14,32($a4)
    cache      0x14,64($a4)
    cache      0x14,96($a4)
    cache      0x14,128($a4)
.L0001412c:
    mtc0       $zero,c0_count
    sd         $zero,0($t1)
    li         $t0,23496
.L00014138:
    ld         $t2,0($t1)
    dsll32     $t2,$t2,0x0
    dsra32     $t2,$t2,0x0
    mfc0       $v0,c0_count
    sltu       $a4,$t2,$t0
    bnez       $a4, .L00014138
    nop
    addu       $a5,$a5,$t2
    addu       $a6,$a6,$v0
    bnez       $t3, .L0001412c
    addi       $t3,$t3,-1
    li         $t3,4
    divu       $zero,$a6,$t3
    mflo       $a6
    mflo       $v0
    bnez       $t3, .L00014180
    nop
    break      0x7
.L00014180:
    divu       $zero,$a5,$t3
    mflo       $a5
    mflo       $a4
    sw         $a4,0($a0)
    bnez       $t3, .L0001419c
    nop
    break      0x7
.L0001419c:
    jr         $ra
    nop

glabel delay_calibrate
    lui        $t0,0xb400
    addiu      $t0,$t0,56
    li         $t1,1
    li         $t3,2
.L000141b4:
    ld         $t2,0($t0)
    bgtz       $t1, .L000141b8
    addiu      $t1,$t1,-1
    ld         $v0,0($t0)
    lui        $t1,0x1
    addiu      $t3,$t3,-1
    ori        $t1,$t1,0x869f
    bgtz       $t3, .L000141b4
    dsubu      $v0,$v0,$t2
    move       $at,$v0
    sll        $v0,$at,0x4
    subu       $v0,$v0,$at
    lui        $at,0x1
    ori        $at,$at,0x86a0
    divu       $zero,$v0,$at
    mflo       $v0
    sw         $v0,-23992($zero)
    bnez       $at, .L00014220
    nop
    break      0x7
.L00014220:
    jr         $ra
    nop

glabel delayloop
    sync
    bgtz       $a0, .L00014244
    subu       $a0,$a0,$a1
    jr         $ra
    nop

glabel badaddr
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    mfc0       $t0,c0_sr
    mtc0       $zero,c0_sr
    lui        $v0,0xb400
    sd         $zero,72($v0)
    sd         $zero,592($v0)
    ld         $zero,592($v0)
    ld         $zero,72($v0)
    lui        $v0,0xbf08
    ori        $v0,$v0,0x4
    sw         $zero,0($v0)
    lw         $zero,0($v0)
    lw         $t2,-24552($zero)
    li         $v0,1
    sh         $v0,194($t2)
    li         $at,1
    bne        $a1, $at, .L000142e8
    nop
    lb         $v0,0($a0)
    b          .L00014340
    nop
.L000142e8:
    li         $at,2
    bne        $a1, $at, .L00014300
    nop
    lh         $v0,0($a0)
    b          .L00014340
    nop
.L00014300:
    li         $at,4
    bne        $a1, $at, .L00014318
    nop
    lw         $v0,0($a0)
    b          .L00014340
    nop
.L00014318:
    li         $at,8
    bne        $a1, $at, .L00014330
    nop
    ld         $v0,0($a0)
    b          .L00014340
    nop
.L00014330:
    lui        $a1,0x0
    addiu      $a1,$a1,10632
    jal        cmn_err
    li         $a0,0
.L00014340:
    lui        $at,0xb400
    ori        $at,$at,0x8
    ld         $at,0($at)
    lui        $t1,0xb400
    ld         $t1,40($t1)
    lui        $at,0x30
    ori        $at,$at,0x80
    and        $t1,$t1,$at
    bnez       $t1, .L000149a8
    nop
    lw         $t2,-24552($zero)
    sh         $zero,194($t2)
    mtc0       $t0,c0_sr
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    move       $v0,$zero

glabel badaddr_val
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    mfc0       $t0,c0_sr
    mtc0       $zero,c0_sr
    lui        $v0,0xb400
    sd         $zero,72($v0)
    sd         $zero,592($v0)
    ld         $zero,592($v0)
    ld         $zero,72($v0)
    lui        $v0,0xbf08
    ori        $v0,$v0,0x4
    sw         $zero,0($v0)
    lw         $zero,0($v0)
    lw         $t2,-24552($zero)
    beqz       $t2, .L00014414
    li         $v0,1
    sh         $v0,194($t2)
    b          .L00014418
    nop
.L00014414:
    sw         $v0,-24104($zero)
.L00014418:
    li         $at,1
    bne        $a1, $at, .L00014438
    nop
    lb         $v0,0($a0)
    nop
    sb         $v0,0($a2)
    b          .L000144a8
    nop
.L00014438:
    li         $at,2
    bne        $a1, $at, .L00014458
    nop
    lh         $v0,0($a0)
    nop
    sh         $v0,0($a2)
    b          .L000144a8
    nop
.L00014458:
    li         $at,4
    bne        $a1, $at, .L00014478
    nop
    lw         $v0,0($a0)
    nop
    sw         $v0,0($a2)
    b          .L000144a8
    nop
.L00014478:
    li         $at,8
    bne        $a1, $at, .L00014498
    nop
    ld         $v0,0($a0)
    nop
    sd         $v0,0($a2)
    b          .L000144a8
    nop
.L00014498:
    lui        $a1,0x0
    addiu      $a1,$a1,10641
    jal        cmn_err
    li         $a0,0
.L000144a8:
    lui        $at,0xb400
    ori        $at,$at,0x8
    ld         $at,0($at)
    lui        $t1,0xb400
    ld         $t1,40($t1)
    lui        $at,0x30
    ori        $at,$at,0x80
    and        $t1,$t1,$at
    bnez       $t1, .L000149a8
    nop
    lw         $t2,-24552($zero)
    beqz       $t2, .L000144fc
    nop
    sh         $zero,194($t2)
    b          .L00014500
    nop
.L000144fc:
    sw         $zero,-24104($zero)
.L00014500:
    mtc0       $t0,c0_sr
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    move       $v0,$zero

glabel wbadaddr
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    mfc0       $t0,c0_sr
    mtc0       $zero,c0_sr
    lui        $v0,0xb400
    sd         $zero,72($v0)
    sd         $zero,592($v0)
    ld         $zero,592($v0)
    ld         $zero,72($v0)
    lui        $v0,0xbf08
    ori        $v0,$v0,0x4
    sw         $zero,0($v0)
    lw         $zero,0($v0)
    lw         $t2,-24552($zero)
    li         $v0,1
    sh         $v0,194($t2)
    li         $at,1
    bne        $a1, $at, .L0001459c
    nop
    sb         $zero,0($a0)
    b          .L000145f4
    nop
.L0001459c:
    li         $at,2
    bne        $a1, $at, .L000145b4
    nop
    sh         $zero,0($a0)
    b          .L000145f4
    nop
.L000145b4:
    li         $at,4
    bne        $a1, $at, .L000145cc
    nop
    sw         $zero,0($a0)
    b          .L000145f4
    nop
.L000145cc:
    li         $at,8
    bne        $a1, $at, .L000145e4
    nop
    sd         $zero,0($a0)
    b          .L000145f4
    nop
.L000145e4:
    lui        $a1,0x0
    addiu      $a1,$a1,10654
    jal        cmn_err
    li         $a0,0
.L000145f4:
    lui        $at,0xb400
    ori        $at,$at,0x8
    ld         $at,0($at)
    lui        $at,0xb400
    ori        $at,$at,0x8
    ld         $at,0($at)
    lui        $t2,0xa000
    lw         $t2,0($t2)
    nop
    lui        $t1,0xb400
    ld         $t1,40($t1)
    lui        $at,0x30
    ori        $at,$at,0x80
    and        $t1,$t1,$at
    bnez       $t1, .L000149a8
    nop
    lw         $t2,-24552($zero)
    sh         $zero,194($t2)
    mtc0       $t0,c0_sr
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    move       $v0,$zero

glabel wbadaddr_val
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    mfc0       $t0,c0_sr
    mtc0       $zero,c0_sr
    lui        $v0,0xb400
    sd         $zero,72($v0)
    sd         $zero,592($v0)
    ld         $zero,592($v0)
    ld         $zero,72($v0)
    lui        $v0,0xbf08
    ori        $v0,$v0,0x4
    sw         $zero,0($v0)
    lw         $zero,0($v0)
    lw         $t2,-24552($zero)
    li         $v0,1
    sh         $v0,194($t2)
    li         $at,1
    bne        $a1, $at, .L00014708
    nop
    lb         $v0,0($a2)
    nop
    sb         $v0,0($a0)
    b          .L00014778
    nop
.L00014708:
    li         $at,2
    bne        $a1, $at, .L00014728
    nop
    lh         $v0,0($a2)
    nop
    sh         $v0,0($a0)
    b          .L00014778
    nop
.L00014728:
    li         $at,4
    bne        $a1, $at, .L00014748
    nop
    lw         $v0,0($a2)
    nop
    sw         $v0,0($a0)
    b          .L00014778
    nop
.L00014748:
    li         $at,8
    bne        $a1, $at, .L00014768
    nop
    ld         $v0,0($a2)
    nop
    sd         $v0,0($a0)
    b          .L00014778
    nop
.L00014768:
    lui        $a1,0x0
    addiu      $a1,$a1,10664
    jal        cmn_err
    li         $a0,0
.L00014778:
    lui        $at,0xb400
    ori        $at,$at,0x8
    ld         $at,0($at)
    lui        $at,0xb400
    ori        $at,$at,0x8
    ld         $at,0($at)
    lui        $t2,0xa000
    lw         $t2,0($t2)
    lui        $t1,0xb400
    ld         $t1,40($t1)
    lui        $at,0x30
    ori        $at,$at,0x80
    and        $t1,$t1,$at
    bnez       $t1, .L000149a8
    nop
    lw         $t2,-24552($zero)
    sh         $zero,194($t2)
    mtc0       $t0,c0_sr
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    move       $v0,$zero

glabel earlybadaddr
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    mfc0       $t0,c0_sr
    mtc0       $zero,c0_sr
    lui        $v0,0xb400
    sd         $zero,72($v0)
    sd         $zero,592($v0)
    ld         $zero,592($v0)
    ld         $zero,72($v0)
    lui        $v0,0xbf08
    ori        $v0,$v0,0x4
    sw         $zero,0($v0)
    lw         $zero,0($v0)
    li         $v0,9
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $v0,0($at)
    li         $at,1
    bne        $a1, $at, .L00014884
    nop
    lb         $v0,0($a0)
    b          .L000148c4
    nop
.L00014884:
    li         $at,2
    bne        $a1, $at, .L0001489c
    nop
    lh         $v0,0($a0)
    b          .L000148c4
    nop
.L0001489c:
    li         $at,4
    bne        $a1, $at, .L000148b4
    nop
    lw         $v0,0($a0)
    b          .L000148c4
    nop
.L000148b4:
    lui        $a1,0x0
    addiu      $a1,$a1,10678
    jal        cmn_err
    li         $a0,0
.L000148c4:
    lui        $at,0xb400
    ori        $at,$at,0x8
    ld         $at,0($at)
    lui        $t1,0xb400
    ld         $t1,40($t1)
    lui        $at,0x30
    ori        $at,$at,0x80
    and        $t1,$t1,$at
    bnez       $t1, .L00014a0c
    nop
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $zero,0($at)
    mtc0       $t0,c0_sr
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    move       $v0,$zero

glabel wbadmemaddr
    mfc0       $t0,c0_sr
    mtc0       $zero,c0_sr
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    li         $v0,9
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $v0,0($at)
    sw         $zero,0($a0)
    lw         $v0,0($a0)
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $zero,0($at)
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    mtc0       $t0,c0_sr
    jr         $ra
    move       $v0,$zero

glabel baerror
.L000149a8:
    lui        $v0,0xb400
    sd         $zero,72($v0)
    sd         $zero,592($v0)
    ld         $zero,592($v0)
    ld         $zero,72($v0)
    lui        $v0,0xbf08
    ori        $v0,$v0,0x4
    sw         $zero,0($v0)
    lw         $zero,0($v0)
    mtc0       $t0,c0_sr
    lw         $t2,-24552($zero)
    beqz       $t2, .L000149f8
    li         $v0,1
    sh         $zero,194($t2)
    b          .L000149fc
    nop
.L000149f8:
    sw         $zero,-24104($zero)
.L000149fc:
    ld         $ra,8($sp)
    addiu      $sp,$sp,16
    jr         $ra
    nop

glabel earlybaerror
.L00014a0c:
    lui        $v0,0xb400
    sd         $zero,72($v0)
    sd         $zero,592($v0)
    ld         $zero,592($v0)
    ld         $zero,72($v0)
    lui        $v0,0xbf08
    ori        $v0,$v0,0x4
    sw         $zero,0($v0)
    lw         $zero,0($v0)
    mtc0       $t0,c0_sr
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $zero,0($at)
    ld         $ra,8($sp)
    li         $v0,1
    addiu      $sp,$sp,16
    jr         $ra
    nop

glabel VEC_breakpoint
    j          VEC_trap
    nop

glabel kernelbp
    break      0x1

glabel debug
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lh         $t0,0($t0)
    blez       $t0, .L00014ab0
    nop
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    break      0x1
    lui        $at,0x0
    ld         $ra,8($sp)
    addiu      $at,$at,0
    sh         $zero,0($at)
    lui        $at,0x0
    addiu      $at,$at,0
    addiu      $sp,$sp,16
    sb         $zero,0($at)
.L00014ab0:
    jr         $ra
    nop

glabel sstepbp
    break      0x5

glabel intrnorm
    lb         $k1,-23664($zero)
    xori       $k1,$k1,0x1
    beqz       $k1, .L00014ae8
    lw         $k1,-24056($zero)
    beqz       $k1, .L00014ae8
    lw         $k0,-24556($zero)
    bne        $k1, $k0, .L00014ae8
    nop
    mfc0       $k1,c0_epc
    bgez       $k1, .L00014c10
    nop
.L00014ae8:
    lb         $k0,-24513($zero)
    addi       $k0,$k0,-2
    beqz       $k0, .L00014bf4
    addi       $k0,$k0,1
    beqz       $k0, .L00014b90
    addi       $k0,$k0,-2
    beqz       $k0, .L00014bbc
    li         $k0,2
    sb         $k0,-24513($zero)
    li         $k0,-16384
    li         $k1,1
    mfc0       $at,c0_entryhi
    mtc0       $k1,c0_entrylo1
    mtc0       $k0,c0_entryhi
    li         $k0,3
    lw         $k1,-23996($zero)
    mtc0       $k0,c0_index
    sll        $k1,$k1,0x6
    srl        $k1,$k1,0x6
    mtc0       $k1,c0_entrylo0
    andi       $k1,$k1,0x2
    nop
    tlbwi
    beqz       $k1, .L00014b74
    mtc0       $at,c0_entryhi
    lw         $k1,-24556($zero)
    lw         $k1,640($k1)
    addiu      $k1,$k1,336
    sd         $sp,224($k1)
    lw         $sp,-24544($zero)
    sd         $gp,216($k1)
    lui        $gp,0x0
    addiu      $gp,$gp,0
    j          ecommon
    li         $k0,2

glabel _baduk
.L00014b74:
    lui        $a0,0x0
    lui        $a1,0x0
    lw         $sp,-24156($zero)
    addiu      $a1,$a1,10709
    addiu      $a0,$a0,10696
    j          assfail
    move       $a2,$zero
.L00014b90:
    li         $k1,2
    sb         $k1,-24513($zero)
    addiu      $k1,$sp,-360
    ori        $k1,$k1,0x7
    xori       $k1,$k1,0x7
    sd         $sp,224($k1)
    lw         $k0,-24552($zero)
    lw         $sp,-24544($zero)
    sw         $k1,348($k0)
    j          ecommon
    li         $k0,2
.L00014bbc:
    li         $k1,2
    sb         $k1,-24513($zero)
    lw         $k1,-24544($zero)
    li         $k0,1
    sd         $sp,224($k1)
    sb         $k0,-24509($zero)
    lb         $k0,-24512($zero)
    move       $sp,$k1
    beqz       $k0, .L00014bec
    nop
    j          ecommon_allsaved
    li         $k0,2
.L00014bec:
    j          ecommon
    li         $k0,2
.L00014bf4:
    addiu      $k1,$sp,-360
    ori        $k1,$k1,0x7
    xori       $k1,$k1,0x7
    sd         $sp,224($k1)
    move       $sp,$k1
    j          ecommon
    li         $k0,256
.L00014c10:
    sd         $at,-24536($zero)
    addiu      $k1,$k1,-4
    li         $at,-8192
    and        $k1,$k1,$at
    mfc0       $at,c0_entryhi
    andi       $k0,$at,0xff
    or         $k0,$k0,$k1
    mtc0       $k0,c0_entryhi
    tlbp
    mfc0       $k0,c0_index
    bltz       $k0, .L00014ea0
    nop
    tlbr
    mfc0       $k0,c0_pagemask
    srl        $k0,$k0,0x1
    ori        $k0,$k0,0xfff
    addiu      $k0,$k0,1
    mfc0       $k1,c0_epc
    addiu      $k1,$k1,-4
    and        $k0,$k0,$k1
    bnez       $k0, .L00014c74
    nop
    mfc0       $k0,c0_entrylo0
    b          .L00014c78
    nop
.L00014c74:
    mfc0       $k0,c0_entrylo1
.L00014c78:
    li         $k1,0
    mtc0       $k1,c0_pagemask
    andi       $k0,$k0,0x2
    beqz       $k0, .L00014ea0
    nop
    mtc0       $at,c0_entryhi
    mfc0       $k1,c0_epc
    lw         $k0,-4($k1)
    srl        $at,$k0,0x1a
    bnez       $at, .L00014ea0
    andi       $at,$k0,0x38
    xori       $at,$at,0x18
    bnez       $at, .L00014ea0
    nop
    lw         $k1,-23632($zero)
    beqz       $k1, .L00014ea0
    nop
    sw         $k0,4($k1)
    cache      0x15,0($k1)
    cache      0x10,0($k1)
    mfc0       $zero,c0_epc
    ld         $at,-24536($zero)
    mfhi       $k0
    sd         $k0,-23648($zero)
    mflo       $k0
    sd         $k0,-23640($zero)
    jalr       $k0,$k1
    nop
    ld         $k0,-23640($zero)
    mflo       $k1
    mtlo       $k0
    beq        $k0, $k1, .L00014d08
    ld         $k0,-23648($zero)
    mthi       $k0
    j          .text
    nop
.L00014d08:
    mfhi       $k1
    bne        $k0, $k1, .L00014d18
    li         $at,1
    li         $at,0
.L00014d18:
    sd         $at,-23648($zero)
    mthi       $k0
    mfc0       $k1,c0_epc
    addiu      $k0,$k1,-4
    andi       $k0,$k0,0xfff
    bnez       $k0, .L00014db4
    nop
    addiu      $k1,$k1,-8
    li         $at,-8192
    and        $k1,$k1,$at
    mfc0       $at,c0_entryhi
    andi       $k0,$at,0xff
    or         $k0,$k0,$k1
    mtc0       $k0,c0_entryhi
    tlbp
    mfc0       $k0,c0_index
    bltzl      $k0, .L00014e70
    li         $at,4
    tlbr
    mfc0       $k0,c0_pagemask
    srl        $k0,$k0,0x1
    ori        $k0,$k0,0xfff
    addiu      $k0,$k0,1
    mfc0       $k1,c0_epc
    addiu      $k1,$k1,-8
    and        $k0,$k0,$k1
    bnez       $k0, .L00014d94
    nop
    mfc0       $k0,c0_entrylo0
    b          .L00014d98
    nop
.L00014d94:
    mfc0       $k0,c0_entrylo1
.L00014d98:
    li         $k1,0
    mtc0       $k1,c0_pagemask
    andi       $k0,$k0,0x2
    beqzl      $k0, .L00014e70
    li         $at,4
    mtc0       $at,c0_entryhi
    mfc0       $k1,c0_epc
.L00014db4:
    lw         $k0,-8($k1)
    srl        $at,$k0,0x1a
    bnez       $at, .L00014df4
    nop
    andi       $k0,$k0,0x3f
    xori       $k0,$k0,0x8
    beqz       $k0, .L00014e70
    li         $at,8
    xori       $k0,$k0,0x1
    bnez       $k0, .L00014e70
    li         $at,4
    ld         $at,-23648($zero)
    bnez       $at, .L00014ea0
    nop
    b          .L00014e70
    li         $at,8
.L00014df4:
    xori       $at,$at,0x1
    bnez       $at, .L00014e14
    srl        $k0,$k0,0x10
    andi       $k0,$k0,0x8
    beqz       $k0, .L00014e70
    li         $at,8
    b          .L00014e70
    li         $at,4
.L00014e14:
    li         $k0,2
    bne        $k0, $at, .L00014e34
    nop
    ld         $at,-23648($zero)
    bnez       $at, .L00014ea0
    nop
    b          .L00014e70
    li         $at,8
.L00014e34:
    sltiu      $k0,$at,8
    beqz       $k0, .L00014e48
    nop
    b          .L00014e70
    li         $at,8
.L00014e48:
    ori        $at,$at,0x3
    xori       $k0,$at,0x17
    beqz       $k0, .L00014e70
    li         $at,8
    lw         $k0,-8($k1)
    srl        $k0,$k0,0x15
    xori       $k0,$k0,0x228
    beqz       $k0, .L00014e70
    li         $at,8
    li         $at,4
.L00014e70:
    mfc0       $k1,c0_epc
    subu       $k1,$k1,$at
    mtc0       $k1,c0_epc
    lw         $k0,-23656($zero)
    addiu      $k0,$k0,1
    sw         $k0,-23656($zero)
    xori       $at,$at,0x8
    bnez       $at, .L00014ea0
    lw         $at,-23660($zero)
    addiu      $at,$at,1
    b          .L00014ea0
    sw         $at,-23660($zero)
.L00014ea0:
    j          .text
    ld         $at,-24536($zero)

glabel ecommon
    ld         $at,-24536($zero)
    sd         $ra,240($k1)
    sd         $a7,80($k1)
    sd         $a6,72($k1)
    sd         $a5,64($k1)
    sd         $a4,56($k1)
    sd         $a3,48($k1)
    sd         $a2,40($k1)
    sd         $a1,32($k1)
    sd         $a0,24($k1)
    sd         $s7,176($k1)
    sd         $s6,168($k1)
    sd         $s5,160($k1)
    sd         $s4,152($k1)
    sd         $s3,144($k1)
    sd         $s2,136($k1)
    sd         $s1,128($k1)
    sd         $s0,120($k1)
    jal        tfi_save
    sd         $at,0($k1)

glabel ecommon_allsaved
    lw         $a0,-24552($zero)
    andi       $a1,$k0,0xff
    beqz       $a0, .L00014f1c
    nop
    andi       $t0,$k0,0x100
    bnez       $t0, .L00014f1c
    lw         $s7,472($a0)
    jal        ktimer_switch
    nop
.L00014f1c:
    mfc0       $a3,c0_cause
    dmfc0      $a0,c0_epc
    sd         $a3,280($k1)
    mfc0       $s0,c0_sr
    nop
    sd         $a0,288($k1)
    sd         $a0,352($k1)
    mfc0       $a0,c0_badvaddr
    sd         $s0,248($k1)
    andi       $a1,$a3,0x7c
    lui        $a2,0x0
    sd         $a0,272($k1)
    addu       $a2,$a2,$a1
    lw         $a2,0($a2)
    move       $a0,$k1
    jr         $a2
    nop

glabel _hook_exceptions
    addiu      $sp,$sp,-48
    sd         $ra,0($sp)
    jal        get_cpu_irr
    sd         $s3,24($sp)
    lui        $s3,0xa000
    srl        $a2,$v0,0x8
    li         $a6,35
    andi       $a2,$a2,0xff
    lui        $a3,0x0
    sd         $s1,8($sp)
    lui        $a4,0x0
    sd         $s4,16($sp)
    beq        $a6, $a2, .L00014fd4
    addiu      $a5,$a4,0
    li         $a7,40
    beq        $a2, $a7, .L00014fe0
    li         $s4,39
    li         $s4,39
    beq        $s4, $a2, .L00014fe4
    addiu      $t9,$a3,0
    li         $t0,32
    beq        $a2, $t0, .L00014fcc
    li         $s1,1
    li         $t1,33
    beq        $a2, $t1, .L00014fcc
    li         $s1,1
    move       $s1,$zero
.L00014fcc:
    b          .L0001500c
    lui        $s3,0xa000
.L00014fd4:
    li         $t2,1
    sw         $t2,0($gp)
    li         $s4,39
.L00014fe0:
    addiu      $t9,$a3,0
.L00014fe4:
    lui        $s1,0x3042
    or         $t9,$s3,$t9
    or         $t8,$s3,$a5
    ori        $s1,$s1,0x1f
    sw         $s1,0($t9)
    sw         $s1,0($t8)
    lbu        $t3,-23664($zero)
    li         $s1,1
    ori        $t3,$t3,0x1
    sb         $t3,-23664($zero)
.L0001500c:
    jal        get_crimerev
    nop
    li         $ra,17
    beq        $v0, $ra, .L00015084
    lui        $a1,0x0
    lui        $a3,0x0
    lui        $a0,0x0
    addiu      $a3,$a3,0
    lui        $at,0x3e0
    or         $a3,$s3,$a3
    addiu      $a0,$a0,0
    ori        $at,$at,0x8
    sw         $at,0($a3)
    or         $a0,$s3,$a0
    lui        $a2,0x9082
    sw         $a2,4($a3)
    lui        $v0,0x0
    addiu      $a1,$a1,0
    sw         $at,0($a0)
    or         $a1,$s3,$a1
    lui        $v1,0x9482
    sw         $v1,4($a0)
    addiu      $v0,$v0,0
    sw         $at,0($a1)
    or         $v0,$s3,$v0
    lui        $a0,0x8c82
    sw         $a0,4($a1)
    lui        $v1,0xdc82
    sw         $v1,4($v0)
    sw         $at,0($v0)
.L00015084:
    jal        get_cpu_irr
    nop
    srl        $a2,$v0,0x8
    andi       $a2,$a2,0xff
    beq        $s4, $a2, .L00015398
    lui        $a1,0x0
    li         $a3,35
    beq        $a3, $a2, .L00015398
    lui        $a1,0x0
.L000150a8:
    beqz       $s1, .L000153d0
    sd         $s2,32($sp)
    lui        $s2,0x0
    lui        $a1,0x0
    addiu      $s2,$s2,0
    addiu      $a1,$a1,0
    or         $s2,$s3,$s2
    or         $a1,$s3,$a1
.L000150c8:
    sltu       $t8,$a1,$s2
    subu       $a2,$s2,$a1
    sw         $a2,0($gp)
    beqz       $t8, .L000153c0
    sd         $s0,40($sp)
    lui        $s0,0xa000
.L000150e0:
    addiu      $a1,$a1,4
    sltu       $t9,$a1,$s2
    addiu      $s0,$s0,4
    lw         $ra,-4($a1)
    sw         $ra,-4($s0)
    beqz       $t9, .L00015110
    addiu      $a1,$a1,4
    sltu       $v0,$a1,$s2
    addiu      $s0,$s0,4
    lw         $at,-4($a1)
    bnez       $v0, .L000150e0
    sw         $at,-4($s0)
.L00015110:
    lw         $v1,0($gp)
    beqz       $v1, .L00015138
    lui        $t0,0x0
    lui        $a1,0x0
    lw         $a1,0($a1)
    sw         $a1,0($s3)
    lw         $a2,0($gp)
    li         $a0,1
    sw         $a0,0($gp)
    lui        $t0,0x0
.L00015138:
    lui        $t1,0x0
    addiu      $t1,$t1,0
    addiu      $t0,$t0,0
    lui        $a3,0x0
    subu       $t2,$t0,$t1
    lui        $a5,0x0
    addu       $t2,$a2,$t2
    lui        $a4,0x0
    slti       $t2,$t2,129
    lui        $a6,0x0
    lui        $a7,0x0
    lw         $a1,0($gp)
    beqz       $t2, .L00015180
    addiu      $a7,$a7,0
    beqz       $a1, .L00015434
    addiu      $s4,$a6,0
    b          .L00015188
    addiu      $s1,$a5,0
.L00015180:
    addiu      $s4,$a3,0
    addiu      $s1,$a4,0
.L00015188:
    subu       $t1,$s1,$s4
    addu       $t1,$a2,$t1
    slti       $t1,$t1,129
    beqz       $t1, .L00015458
.L00015198:
    sltu       $a4,$s4,$s1
    beqz       $a4, .L000151d0
    move       $a1,$s4
.L000151a4:
    addiu      $a1,$a1,4
    sltu       $t2,$a1,$s1
    lw         $t3,-4($a1)
    sw         $t3,0($s0)
    beqz       $t2, .L000151d0
    addiu      $a1,$a1,4
    sltu       $t9,$a1,$s1
    addiu      $s0,$s0,8
    lw         $t8,-4($a1)
    bnez       $t9, .L000151a4
    sw         $t8,-4($s0)
.L000151d0:
    subu       $a1,$s2,$a2
    sltu       $a5,$a1,$s2
    lui        $a3,0xa000
    beqz       $a5, .L000153c8
    ori        $a3,$a3,0x80
    move       $s0,$a3
.L000151e8:
    addiu      $a1,$a1,4
    sltu       $a6,$a1,$s2
    addiu      $s0,$s0,4
    lw         $t0,-4($a1)
    sw         $t0,-4($s0)
    beqz       $a6, .L00015218
    addiu      $a1,$a1,4
    sltu       $t2,$a1,$s2
    addiu      $s0,$s0,4
    lw         $t1,-4($a1)
    bnez       $t2, .L000151e8
    sw         $t1,-4($s0)
.L00015218:
    lw         $t3,0($gp)
    beqz       $t3, .L00015228
    lw         $t8,0($a7)
    sw         $t8,0($a3)
.L00015228:
    beqz       $a4, .L0001525c
    move       $a1,$s4
.L00015230:
    addiu      $a1,$a1,4
    sltu       $t9,$a1,$s1
    lw         $ra,-4($a1)
    sw         $ra,0($s0)
    beqz       $t9, .L0001525c
    addiu      $a1,$a1,4
    sltu       $v0,$a1,$s1
    addiu      $s0,$s0,8
    lw         $at,-4($a1)
    bnez       $v0, .L00015230
    sw         $at,-4($s0)
.L0001525c:
    lui        $a1,0x0
    lui        $a2,0x0
    addiu      $a2,$a2,0
    addiu      $a1,$a1,0
    sltu       $v1,$a1,$a2
    beqz       $v1, .L000152a8
    lui        $s0,0xa000
    ori        $s0,$s0,0x100
.L0001527c:
    addiu      $a1,$a1,4
    sltu       $t8,$a1,$a2
    lw         $t9,-4($a1)
    sw         $t9,0($s0)
    beqz       $t8, .L000152a8
    addiu      $a1,$a1,4
    sltu       $at,$a1,$a2
    addiu      $s0,$s0,8
    lw         $ra,-4($a1)
    bnez       $at, .L0001527c
    sw         $ra,-4($s0)
.L000152a8:
    jal        get_cpu_irr
    nop
    sra        $v0,$v0,0x8
    slti       $v0,$v0,35
    beqz       $v0, .L00015318
    lh         $v0,0($gp)
    lui        $a2,0x0
    lui        $a1,0x0
    addiu      $a1,$a1,0
    addiu      $a2,$a2,0
    or         $a2,$s3,$a2
    or         $a1,$s3,$a1
    sltu       $v1,$a1,$a2
    beqz       $v1, .L00015314
    lui        $s0,0xa000
    ori        $s0,$s0,0x100
.L000152e8:
    addiu      $a1,$a1,4
    sltu       $t8,$a1,$a2
    lw         $t9,-4($a1)
    sw         $t9,0($s0)
    beqz       $t8, .L00015314
    addiu      $a1,$a1,4
    sltu       $at,$a1,$a2
    addiu      $s0,$s0,8
    lw         $ra,-4($a1)
    bnez       $at, .L000152e8
    sw         $ra,-4($s0)
.L00015314:
    lh         $v0,0($gp)
.L00015318:
    beqz       $v0, .L000153e4
    lui        $a1,0x0
    lui        $a1,0x0
    lui        $a3,0x0
    addiu      $a1,$a1,0
    addiu      $a3,$a3,0
    sltu       $v1,$a1,$a3
    beqz       $v1, .L0001536c
    lui        $a2,0xa000
    ori        $a2,$a2,0x180
.L00015340:
    addiu      $a1,$a1,4
    sltu       $a4,$a1,$a3
    lw         $a5,-4($a1)
    sw         $a5,0($a2)
    beqz       $a4, .L0001536c
    addiu      $a1,$a1,4
    sltu       $a7,$a1,$a3
    addiu      $a2,$a2,8
    lw         $a6,-4($a1)
    bnez       $a7, .L00015340
    sw         $a6,-4($a2)
.L0001536c:
    jal        flush_cache
    nop
    ld         $s1,8($sp)
    ld         $s4,16($sp)
    ld         $ra,0($sp)
    ld         $s3,24($sp)
    ld         $s2,32($sp)
    ld         $s0,40($sp)
    jr         $ra
    addiu      $sp,$sp,48
    lui        $a1,0x0
.L00015398:
    addiu      $a1,$a1,0
    or         $a1,$s3,$a1
    lw         $t0,0($a1)
    lui        $t1,0xfc00
    and        $t0,$t0,$t1
    lui        $t1,0xcc00
    bne        $t0, $t1, .L000150a8
    nop
    b          .L000150a8
    sw         $zero,0($a1)
.L000153c0:
    b          .L00015110
    lui        $s0,0xa000
.L000153c8:
    b          .L00015218
    move       $s0,$a3
.L000153d0:
    lui        $a1,0x0
    lui        $s2,0x0
    addiu      $a1,$a1,0
    b          .L000150c8
    addiu      $s2,$s2,0
.L000153e4:
    lui        $a2,0x0
    addiu      $a2,$a2,0
    addiu      $a1,$a1,0
    sltu       $t8,$a1,$a2
    lui        $s0,0xa000
    beqz       $t8, .L0001536c
    ori        $s0,$s0,0x180
.L00015400:
    addiu      $a1,$a1,4
    sltu       $a3,$a1,$a2
    lw         $a4,-4($a1)
    sw         $a4,0($s0)
    beqz       $a3, .L0001536c
    addiu      $a1,$a1,4
    sltu       $a6,$a1,$a2
    addiu      $s0,$s0,8
    lw         $a5,-4($a1)
    bnez       $a6, .L00015400
    sw         $a5,-4($s0)
    b          .L0001536c
    nop
.L00015434:
    beqz       $s1, .L00015450
    move       $s1,$t0
    lui        $s4,0x0
    lui        $s1,0x0
    addiu      $s4,$s4,0
    b          .L00015188
    addiu      $s1,$s1,0
.L00015450:
    b          .L00015188
    move       $s4,$t1
.L00015458:
    lui        $a0,0x0
    li         $a2,414
    addiu      $a0,$a0,8520
    jal        assfail
    addiu      $a1,$a0,96
    lui        $a7,0x0
    lw         $a2,0($gp)
    b          .L00015198
    addiu      $a7,$a7,0

glabel sw_cachesynch_patch
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        get_cpu_irr
    nop
    srl        $at,$v0,0x8
    li         $v0,4
    andi       $at,$at,0xff
    bne        $at, $v0, .L000154e8
    ld         $ra,0($sp)
    lui        $v0,0x0
    addiu      $a3,$v0,10720
    lw         $v0,10720($v0)
    lui        $a2,0x0
    addiu      $a2,$a2,0
    beqz       $v0, .L000154e8
    move       $a1,$v0
.L000154bc:
    lw         $v1,0($a2)
    sw         $v1,0($a1)
    lw         $a1,4($a3)
    beqz       $a1, .L000154e8
    nop
    lw         $a0,4($a2)
    sw         $a0,0($a1)
    lw         $a1,8($a3)
    addiu      $a2,$a2,8
    bnez       $a1, .L000154bc
    addiu      $a3,$a3,8
.L000154e8:
    jr         $ra
    addiu      $sp,$sp,16

glabel utlbmiss_prolog_up
    mfc0       $k0,c0_context
    nop
    sra        $k0,$k0,0x1

glabel utlbmiss
    lw         $k1,0($k0)
    lw         $k0,4($k0)
    sll        $k1,$k1,0x6
    srl        $k1,$k1,0x6
    mtc0       $k1,c0_entrylo0
    sll        $k0,$k0,0x6
    srl        $k0,$k0,0x6
    mtc0       $k0,c0_entrylo1
    tlbwr
    eret

glabel utlbmiss2
    lw         $k1,0($k0)
    lw         $k0,4($k0)
    sll        $k1,$k1,0x6
    srl        $k1,$k1,0x6
    mtc0       $k1,c0_entrylo0
    sll        $k0,$k0,0x6
    srl        $k0,$k0,0x6
    mtc0       $k0,c0_entrylo1
    xori       $k1,$k1,0x40
    beqz       $k1, .L0001563c
    xori       $k0,$k0,0x40
    beqz       $k0, .L00015644
    mfc0       $k1,c0_context
    tlbwr
    eret
.L0001563c:
    j          utlbmiss_sharedseg1
    mfc0       $k1,c0_context
.L00015644:
    j          utlbmiss_sharedseg2
    lui        $k0,0x20

glabel utlbmiss_sharedseg1
    bnez       $k0, .L0001568c
    lui        $k0,0x20
    sra        $k1,$k1,0x1
    subu       $k1,$k1,$k0
    lw         $k0,0($k1)
    lw         $k1,4($k1)
    sll        $k0,$k0,0x6
    srl        $k0,$k0,0x6
    sll        $k1,$k1,0x6
    srl        $k1,$k1,0x6
    mtc0       $k0,c0_entrylo0
    mtc0       $k1,c0_entrylo1
    tlbwr
    eret
.L0001568c:
    sra        $k1,$k1,0x1
    subu       $k1,$k1,$k0
    lw         $k0,0($k1)
    sll        $k0,$k0,0x6
    srl        $k0,$k0,0x6
    mtc0       $k0,c0_entrylo0
    tlbwr
    eret

glabel utlbmiss_sharedseg2a
    lui        $k0,0x20

glabel utlbmiss_sharedseg2
    sra        $k1,$k1,0x1
    subu       $k1,$k1,$k0
    lw         $k1,4($k1)
    sll        $k1,$k1,0x6
    srl        $k1,$k1,0x6
    mtc0       $k1,c0_entrylo1
    tlbwr
    eret

glabel utlbmiss1
    mfc0       $k1,c0_sr
    andi       $k1,$k1,0x10
    beqz       $k1, .L000156fc
    lw         $k1,-23988($zero)
    addi       $k1,$k1,1
    j          utlbmiss
    sw         $k1,-23988($zero)
.L000156fc:
    lw         $k1,-23984($zero)
    addi       $k1,$k1,1
    j          utlbmiss
    sw         $k1,-23984($zero)

glabel utlbmiss3
    mfc0       $k1,c0_sr
    andi       $k1,$k1,0x10
    beqz       $k1, .L00015728
    lw         $k1,-23988($zero)
    addi       $k1,$k1,1
    j          utlbmiss2
    sw         $k1,-23988($zero)
.L00015728:
    lw         $k1,-23984($zero)
    addi       $k1,$k1,1
    j          utlbmiss2
    sw         $k1,-23984($zero)

glabel utlbmiss_prolog_r4600
    mfc0       $k0,c0_context
    sra        $k0,$k0,0x1

glabel utlbmiss_r4600
    lw         $k1,0($k0)
    lw         $k0,4($k0)
    sll        $k1,$k1,0x6
    srl        $k1,$k1,0x6
    mtc0       $k1,c0_entrylo0
    sll        $k0,$k0,0x6
    srl        $k0,$k0,0x6
    mtc0       $k0,c0_entrylo1
    tlbwr
    nop
    eret

glabel utlbmiss_r4600_1
    lw         $k1,-23988($zero)
    addi       $k1,$k1,1
    j          utlbmiss_r4600
    sw         $k1,-23988($zero)

glabel utlbmiss_r5000
    lw         $k1,0($k0)
    lw         $k0,4($k0)
    tlbp
    sll        $k1,$k1,0x6
    srl        $k1,$k1,0x6
    mtc0       $k1,c0_entrylo0
    mfc0       $k1,c0_index
    sll        $k0,$k0,0x6
    srl        $k0,$k0,0x6
    bgez       $k1, .L000157c4
    mtc0       $k0,c0_entrylo1
    tlbwr
    nop
    eret
.L000157c4:
    lui        $k0,0x8000
    addiu      $k0,$k0,384
    jr         $k0
    nop

glabel utlbmiss2_r5000
    lw         $k1,0($k0)
    lw         $k0,4($k0)
    tlbp
    sll        $k1,$k1,0x6
    srl        $k1,$k1,0x6
    mtc0       $k1,c0_entrylo0
    sll        $k0,$k0,0x6
    srl        $k0,$k0,0x6
    xori       $k1,$k1,0x40
    beqz       $k1, .L00015834
    mtc0       $k0,c0_entrylo1
    mfc0       $k1,c0_index
    xori       $k0,$k0,0x40
    beqz       $k0, .L0001582c
    lui        $k0,0x20
    bltzl      $k1, .L00015824
    tlbwr
    lui        $k0,0x8000
    addiu      $k0,$k0,384
    jr         $k0
.L00015824:
    nop
    eret
.L0001582c:
    j          utlbmiss_sharedseg2_r5000
    mfc0       $k1,c0_context
.L00015834:
    j          utlbmiss_sharedseg1_r5000
    mfc0       $k1,c0_context

glabel utlbmiss_sharedseg1_r5000
    lui        $k0,0x20
    sra        $k1,$k1,0x1
    subu       $k1,$k1,$k0
    lw         $k0,0($k1)
    mfc0       $k1,c0_entrylo1
    sll        $k0,$k0,0x6
    srl        $k0,$k0,0x6
    mtc0       $k0,c0_entrylo0
    xori       $k1,$k1,0x40
    mfc0       $k0,c0_index
    beqz       $k1, .L00015888
    mfc0       $k1,c0_context
    bltzl      $k0, .L00015880
    tlbwr
    lui        $k0,0x8000
    addiu      $k0,$k0,384
    jr         $k0
.L00015880:
    nop
    eret

glabel utlbmiss_sharedseg2a_r5000
.L00015888:
    lui        $k0,0x20

glabel utlbmiss_sharedseg2_r5000
    sra        $k1,$k1,0x1
    subu       $k1,$k1,$k0
    lw         $k1,4($k1)
    mfc0       $k0,c0_index
    sll        $k1,$k1,0x6
    srl        $k1,$k1,0x6
    mtc0       $k1,c0_entrylo1
    bltzl      $k0, .L000158c8
    tlbwr
    lui        $k0,0x8000
    addiu      $k0,$k0,384
    jr         $k0
.L000158c8:
    nop
    eret

glabel utlbmiss1_r5000
    lw         $k1,-23988($zero)
    addi       $k1,$k1,1
    j          utlbmiss_r5000
    sw         $k1,-23988($zero)

glabel utlbmiss3_r5000
    lw         $k1,-23988($zero)
    addi       $k1,$k1,1
    j          utlbmiss2_r5000
    sw         $k1,-23988($zero)

glabel utlbmiss_prolog_patch
    lw         $k1,-23976($zero)

glabel utlbmissj
    j          utlbmiss
    nop

glabel _j_exceptnorm
    j          exception
    nop

glabel _ecc_errorvec
    j          ecc_exception
    nop

glabel _ecc_end
    j          r10k_ecc_exception
    nop

glabel is_in_pfdat
    lw         $at,0($gp)
    lui        $a7,0x8
    lui        $t0,0x5
    lw         $a6,0($gp)
    nor        $a7,$a7,$zero
    lw         $a4,0($gp)
    srl        $at,$at,0xc
    and        $a7,$a0,$a7
    addu       $a5,$a6,$t0
    slt        $at,$a7,$at
    sltu       $a4,$a7,$a4
    sltu       $a3,$a7,$a5
    bnez       $at, .L000159a4
    sltu       $v0,$a7,$t0
    bnez       $a4, .L000159bc
    nop
.L000159a4:
    bnez       $v0, .L000159b4
    move       $v0,$zero
    bnez       $a3, .L000159bc
    move       $v0,$zero
.L000159b4:
    jr         $ra
    nop
.L000159bc:
    jr         $ra
    li         $v0,1
    addiu      $sp,$sp,-80
    sd         $s3,40($sp)
    sd         $s1,48($sp)
    sd         $s0,16($sp)
    sd         $s2,0($sp)
    lw         $at,-23952($zero)
    move       $s2,$a0
    sd         $s4,8($sp)
    move       $s4,$a1
    move       $s0,$a2
    sd         $s8,24($sp)
    move       $s8,$a3
    beqz       $at, .L00015c3c
    sd         $ra,72($sp)
.L000159fc:
    lw         $v0,0($gp)
    beqz       $v0, .L00015a50
    lw         $s3,0($gp)
    jal        is_in_pfdat
    move       $a0,$s0
    beqz       $v0, .L00015a50
    lw         $s3,0($gp)
    lui        $t9,0x8
    nor        $t9,$t9,$zero
    and        $t9,$s0,$t9
    sll        $t8,$t9,0x3
    lw         $s3,0($gp)
    addu       $t8,$t8,$t9
    sll        $t8,$t8,0x2
    addu       $s3,$s3,$t8
    lw         $s3,8($s3)
    sra        $s3,$s3,0x19
    li         $v1,-1
    bne        $s3, $v1, .L00015a58
    nop
    lw         $s3,0($gp)
.L00015a50:
    srl        $t8,$s2,0xc
    and        $s3,$s3,$t8
.L00015a58:
    lw         $s1,-23952($zero)
    sll        $t8,$s3,0xc
    sd         $s5,56($sp)
    addu       $s1,$s1,$t8
    andi       $t8,$s2,0xfff
    sd         $s6,64($sp)
    jal        spl7
    addu       $s1,$s1,$t8
    lw         $t8,-32484($gp)
    sll        $s6,$s3,0x2
    addu       $t8,$t8,$s6
    lui        $s2,0x4000
    lw         $t8,0($t8)
    srl        $s5,$s1,0xc
    addu       $s2,$s1,$s2
    srl        $s2,$s2,0xc
    sd         $v0,32($sp)
    beqz       $t8, .L00015ac4
    sll        $s2,$s2,0x2
    lw         $s3,0($gp)
    move       $a0,$zero
    addu       $s3,$s3,$s2
    move       $a1,$s5
    jal        unmaptlb
    lw         $s3,0($s3)
    b          .L00015ac8
    nop
.L00015ac4:
    move       $s3,$zero
.L00015ac8:
    jal        is_in_pfdat
    move       $a0,$s0
    beqz       $v0, .L00015b0c
    lui        $a1,0x8
    nor        $a2,$a1,$zero
    and        $a2,$s0,$a2
    sll        $t9,$a2,0x3
    lw         $t8,0($gp)
    addu       $t9,$t9,$a2
    sll        $t9,$t9,0x2
    addu       $t8,$t8,$t9
    lw         $t8,8($t8)
    sll        $t8,$t8,0x8
    sra        $t8,$t8,0x8
    dsll32     $t8,$t8,0xb
    bgez       $t8, .L00015cc8
    or         $s0,$s0,$a1
.L00015b0c:
    jal        pte_cachebits
    nop
    li         $a1,3
    lui        $t0,0x4000
    lw         $a7,0($gp)
    sll        $a6,$s0,0x6
    ori        $t0,$t0,0x7
    lw         $a5,-32484($gp)
    or         $a6,$v0,$a6
    addu       $a7,$a7,$s2
    or         $a6,$a6,$t0
    addu       $a5,$a5,$s6
    sw         $a6,0($a7)
    andi       $a3,$s8,0x1
    dsll32     $a7,$s8,0xf
    lw         $a4,0($a5)
    andi       $a2,$s8,0x3
    andi       $a6,$s8,0x2
    addiu      $a4,$a4,1
    bgez       $a7, .L00015bec
    sw         $a4,0($a5)
    move       $a0,$s1
    jal        __icache_inval
    move       $a1,$s4
    move       $a0,$zero
.L00015b70:
    jal        unmaptlb
    move       $a1,$s5
    lw         $a3,0($gp)
    beqz       $s3, .L00015c0c
    addu       $a3,$a3,$s2
    sw         $s3,0($a3)
    lw         $a2,0($gp)
    addu       $a2,$a2,$s2
    move       $a0,$zero
    lw         $a2,0($a2)
    move       $a1,$s1
    jal        tlbdropin
    dsll32     $a2,$a2,0x0
    ld         $s2,0($sp)
.L00015ba8:
    ld         $s3,40($sp)
    ld         $s4,8($sp)
    ld         $s0,16($sp)
    ld         $s1,48($sp)
    lw         $a4,-32484($gp)
    ld         $s5,56($sp)
    ld         $s8,24($sp)
    addu       $a4,$a4,$s6
    lw         $a3,0($a4)
    ld         $a0,32($sp)
    addiu      $a3,$a3,-1
    jal        splx
    sw         $a3,0($a4)
    ld         $s6,64($sp)
    ld         $ra,72($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L00015bec:
    beq        $a2, $a1, .L00015cd0
    move       $a0,$s1
    beqz       $a3, .L00015cac
    move       $a0,$s1
    jal        __dcache_inval
    move       $a1,$s4
    b          .L00015b70
    move       $a0,$zero
.L00015c0c:
    li         $a5,1
    jal        get_cpu_irr
    sw         $a5,0($a3)
    sra        $a6,$v0,0x8
    slti       $a6,$a6,35
    beqz       $a6, .L00015ba8
    ld         $s2,0($sp)
    move       $a0,$zero
    jal        unmaptlb
    move       $a1,$s5
    b          .L00015ba8
    ld         $s2,0($sp)
.L00015c3c:
    jal        get_cpu_irr
    nop
    sra        $a7,$v0,0x8
    slti       $a7,$a7,35
    beqz       $a7, .L00015c78
    li         $a0,3
    move       $a1,$zero
    jal        kvalloc
    move       $a2,$zero
    andi       $a1,$v0,0x1000
    sw         $v0,-23952($zero)
    beqz       $a1, .L00015c90
    addiu      $a0,$v0,4096
    b          .L00015c90
    sw         $a0,-23952($zero)
.L00015c78:
    lw         $a0,0($gp)
    lui        $a1,0x2
    move       $a2,$zero
    jal        kvalloc
    addiu      $a0,$a0,1
    sw         $v0,-23952($zero)
.L00015c90:
    lw         $a0,0($gp)
    move       $a1,$zero
    sll        $a0,$a0,0x2
    jal        kmem_zalloc
    addiu      $a0,$a0,4
    b          .L000159fc
    sw         $v0,-32484($gp)
.L00015cac:
    beqz       $a6, .L00015b70
    move       $a0,$zero
    move       $a0,$s1
    jal        __dcache_wb
    move       $a1,$s4
    b          .L00015b70
    move       $a0,$zero
.L00015cc8:
    b          .L00015b0c
    move       $s0,$a2
.L00015cd0:
    jal        __dcache_wb_inval
    move       $a1,$s4
    b          .L00015b70
    move       $a0,$zero

glabel clean_icache
    addiu      $sp,$sp,-48
    sd         $s1,16($sp)
    sd         $s0,8($sp)
    lui        $a5,0xa000
    move       $s0,$a0
    sd         $s2,24($sp)
    move       $s2,$a1
    move       $s1,$a2
    sd         $s3,0($sp)
    move       $s3,$a3
    beqz       $a1, .L00015ddc
    sd         $ra,40($sp)
    andi       $a0,$a3,0x100
    beqz       $a0, .L00015d34
    sltu       $a1,$s0,$a5
    lui        $at,0x8000
    sltu       $at,$s0,$at
    bnez       $at, .L00015d34
    nop
    bnez       $a1, .L00015e4c
    nop
.L00015d34:
    beqz       $s1, .L00015df8
    sd         $a0,32($sp)
    jal        is_in_pfdat
    move       $a0,$s1
    ld         $a0,32($sp)
    beqz       $v0, .L00015df8
    lui        $a1,0x8
    lui        $a3,0x8000
    nor        $a2,$a1,$zero
    and        $a2,$s1,$a2
    sll        $v1,$a2,0x3
    lw         $v0,0($gp)
    addu       $v1,$v1,$a2
    sll        $v1,$v1,0x2
    addu       $v0,$v0,$v1
    lw         $v0,8($v0)
    sll        $v0,$v0,0x8
    sra        $v0,$v0,0x8
    dsll32     $v0,$v0,0xb
    bltz       $v0, .L00015d9c
    sltu       $a2,$s0,$a3
    bnez       $a2, .L00015d98
    lw         $a3,0($gp)
    beqz       $a0, .L00015e10
    lw         $a3,0($gp)
.L00015d98:
    beqz       $a3, .L00015e18
.L00015d9c:
    move       $a0,$s0
.L00015da0:
    move       $a1,$s2
    lui        $a3,0x2
    move       $a2,$s1
    nor        $a3,$a3,$zero
    jal        .text
    and        $a3,$s3,$a3
    b          .L00015de0
    ld         $s3,0($sp)
.L00015dc0:
    beqz       $a2, .L00015d9c
    sll        $a2,$s1,0xc
.L00015dc8:
    lui        $a0,0x8000
    or         $a2,$a1,$a2
    or         $a0,$a0,$a2
.L00015dd4:
    jal        __icache_inval
    move       $a1,$s2
.L00015ddc:
    ld         $s3,0($sp)
.L00015de0:
    ld         $ra,40($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s2,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00015df8:
    lui        $a3,0x8000
    sltu       $a3,$s0,$a3
    bnez       $a3, .L00015e18
    nop
    bnez       $a0, .L00015e18
    nop
.L00015e10:
    b          .L00015dd4
    move       $a0,$s0
.L00015e18:
    jal        get_cpu_irr
    nop
    sra        $a3,$v0,0x8
    sltiu      $a0,$s1,2047
    slti       $a3,$a3,35
    andi       $a1,$s0,0xfff
    li         $a2,0xffff
    beqz       $a3, .L00015dc0
    sltu       $a2,$s1,$a2
    bnez       $a0, .L00015dc8
    sll        $a2,$s1,0xc
    b          .L00015da0
    move       $a0,$s0
.L00015e4c:
    move       $a0,$s0
    jal        __cache_wb_inval
    move       $a1,$s2
    b          .L00015de0
    ld         $s3,0($sp)

glabel clean_dcache
    addiu      $sp,$sp,-48
    sd         $s1,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $s3,0($sp)
    move       $s3,$a1
    move       $s1,$a2
    sd         $s2,24($sp)
    move       $s2,$a3
    beqz       $a1, .L00015f4c
    sd         $ra,40($sp)
    andi       $a0,$a3,0x100
    beqz       $a0, .L00015eb0
    lui        $at,0x8000
    sltu       $at,$s0,$at
    bnez       $at, .L00015eb0
    lui        $v0,0xa000
    sltu       $v0,$s0,$v0
    bnez       $v0, .L00016028
    nop
.L00015eb0:
    beqz       $s1, .L00015f68
    sd         $a0,32($sp)
    jal        is_in_pfdat
    move       $a0,$s1
    beqz       $v0, .L00015f68
    ld         $a0,32($sp)
    lui        $a2,0x8
    nor        $a2,$a2,$zero
    and        $a2,$s1,$a2
    sll        $a1,$a2,0x3
    lw         $v1,0($gp)
    addu       $a1,$a1,$a2
    sll        $a1,$a1,0x2
    addu       $v1,$v1,$a1
    lw         $v1,8($v1)
    sll        $v1,$v1,0x8
    sra        $v1,$v1,0x8
    dsll32     $v1,$v1,0xb
    lui        $a3,0x8000
    lw         $a2,0($gp)
    bltz       $v1, .L00015f1c
    sltu       $a1,$s0,$a3
    bnez       $a1, .L00015f18
    nop
    beqz       $a0, .L00015f80
    nop
.L00015f18:
    beqz       $a2, .L00015f88
.L00015f1c:
    move       $a0,$s0
.L00015f20:
    move       $a1,$s3
    lui        $a3,0x1
    move       $a2,$s1
    nor        $a3,$a3,$zero
    jal        .text
    and        $a3,$s2,$a3
    andi       $a4,$s2,0x1000
    beqz       $a4, .L00015f50
    ld         $s3,0($sp)
    jal        __sysad_wbflush
    nop
.L00015f4c:
    ld         $s3,0($sp)
.L00015f50:
    ld         $ra,40($sp)
    ld         $s0,8($sp)
    ld         $s1,16($sp)
    ld         $s2,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00015f68:
    lui        $a5,0x8000
    sltu       $a5,$s0,$a5
    bnez       $a5, .L00015f88
    nop
    bnez       $a0, .L00015f88
    nop
.L00015f80:
    b          .L00015fd0
    move       $a0,$s0
.L00015f88:
    jal        get_cpu_irr
    nop
    sra        $a3,$v0,0x8
    andi       $a1,$s0,0xfff
    slti       $a3,$a3,35
    sltiu      $a0,$s1,2047
    li         $a2,0xffff
    beqz       $a3, .L00015fbc
    sltu       $a2,$s1,$a2
    bnez       $a0, .L00015fc4
    sll        $a2,$s1,0xc
    b          .L00015f20
    move       $a0,$s0
.L00015fbc:
    beqz       $a2, .L00015f1c
    sll        $a2,$s1,0xc
.L00015fc4:
    lui        $a0,0x8000
    or         $a2,$a1,$a2
    or         $a0,$a0,$a2
.L00015fd0:
    li         $a4,3
    andi       $a3,$s2,0x3
    andi       $a2,$s2,0x2
    beq        $a3, $a4, .L0001604c
    andi       $a1,$s2,0x1
    beqz       $a1, .L00016010
    nop
    jal        __dcache_inval
    move       $a1,$s3
    andi       $a5,$s2,0x1000
.L00015ff8:
    beqz       $a5, .L00015f50
    ld         $s3,0($sp)
    jal        __sysad_wbflush
    nop
    b          .L00015f50
    ld         $s3,0($sp)
.L00016010:
    beqz       $a2, .L00015ff8
    andi       $a5,$s2,0x1000
    jal        __dcache_wb
    move       $a1,$s3
    b          .L00015ff8
    andi       $a5,$s2,0x1000
.L00016028:
    jal        __cache_wb_inval
    move       $a0,$s0
    andi       $a6,$s2,0x1000
    beqz       $a6, .L00015f50
    ld         $s3,0($sp)
    jal        __sysad_wbflush
    nop
    b          .L00015f50
    ld         $s3,0($sp)
.L0001604c:
    jal        __dcache_wb_inval
    move       $a1,$s3
    b          .L00015ff8
    andi       $a5,$s2,0x1000

glabel __vm_dcache_inval
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s1,8($sp)
    sd         $ra,16($sp)
    jal        get_cpu_irr
    move       $s1,$a1
    sra        $at,$v0,0x8
    slti       $at,$at,35
    beqz       $at, .L000160a8
    move       $a0,$s0
    move       $a0,$s0
    move       $a1,$s1
    li         $a3,2
    lui        $a2,0x6
    jal        invalidate_range_references
    ori        $a2,$a2,0x1001
    b          .L000160b0
    nop
.L000160a8:
    jal        __dcache_inval
    move       $a1,$s1
.L000160b0:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel __vm_dcache_wb_inval
    addiu      $sp,$sp,-32
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s1,8($sp)
    sd         $ra,16($sp)
    jal        get_cpu_irr
    move       $s1,$a1
    sra        $at,$v0,0x8
    slti       $at,$at,35
    beqz       $at, .L0001610c
    move       $a0,$s0
    move       $a1,$s1
    li         $a3,2
    lui        $a2,0x6
    jal        invalidate_range_references
    ori        $a2,$a2,0x1003
    b          .L00016118
    nop
.L0001610c:
    move       $a0,$s0
    jal        __dcache_wb_inval
    move       $a1,$s1
.L00016118:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel VEC_addrerr
    j          VEC_trap
    nop

glabel VEC_tlbmiss
    ld         $a2,272($k1)
    andi       $k0,$s0,0xff00
    ori        $k0,$k0,0x1
    mtc0       $k0,c0_sr
    jal        tlbmiss
    move       $s1,$a0
    ld         $s0,248($s1)
    bnez       $v0, .L00016188
    nop
    andi       $s2,$s0,0xff00
    mtc0       $s2,c0_sr
    j          exception_exit
    move       $k1,$s1
.L00016188:
    move       $a0,$s1
    move       $a1,$v0
    j          soft_trap
    ld         $a3,280($a0)
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        getsr
    nop
    lui        $a0,0x2000
    jal        setsr
    or         $a0,$v0,$a0
    jal        set_fpc_csr
    move       $a0,$zero
    jal        getsr
    nop
    lui        $a0,0x2000
    nor        $a0,$a0,$zero
    jal        setsr
    and        $a0,$v0,$a0
    li         $a0,5
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,8640
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
    lw         $a2,-24556($zero)
    addiu      $sp,$sp,-16
    li         $at,1
    sd         $s0,0($sp)
    move       $s0,$a0
    bne        $a2, $a0, .L00016214
    sd         $ra,8($sp)
    lw         $v0,640($a2)
    sw         $at,0($v0)
.L00016214:
    move       $a0,$s0
    li         $a1,8
    jal        sigtouthread
    move       $a2,$zero
    move       $a0,$s0
    jal        checkfp
    move       $a1,$zero
    ld         $ra,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel fp_intr
    addiu      $sp,$sp,-48
    sd         $s0,16($sp)
    lw         $s0,-24556($zero)
    li         $a3,1
    li         $a2,4
    sd         $s1,24($sp)
    move       $s1,$a0
    beqz       $s0, .L0001634c
    sd         $ra,32($sp)
    lw         $a1,508($s0)
    lbu        $a0,329($a1)
    beqz       $a0, .L00016280
    nop
    beq        $a0, $a3, .L0001635c
    li         $a7,2
    sb         $a3,329($a1)
.L00016280:
    ld         $at,280($s1)
    li         $v0,0x8000
    dsll       $v0,$v0,0x10
    and        $at,$at,$v0
    beqz       $at, .L000162c0
    nop
    jal        load_fpcsr
    nop
    move       $a2,$v0
    move       $a0,$s1
    lw         $a1,848($s0)
    jal        emulate_branch
    addiu      $a3,$sp,0
    sd         $v0,8($sp)
    b          .L000162d0
    lw         $a1,852($s0)
.L000162c0:
    ld         $a0,288($s1)
    lw         $a1,848($s0)
    daddu      $a0,$a0,$a2
    sd         $a0,8($sp)
.L000162d0:
    li         $a5,17
    srl        $a0,$a1,0x1a
    li         $a4,35
    li         $a3,19
    beq        $a0, $a5, .L00016330
    srl        $a5,$a1,0x19
.L000162e8:
    bne        $a0, $a3, .L00016314
    nop
.L000162f0:
    jal        .text
    move       $a0,$s1
    beqz       $v0, .L00016340
    ld         $a6,8($sp)
    move       $a0,$s0
    jal        checkfp
    li         $a1,2
    b          .L00016320
    ld         $ra,32($sp)
.L00016314:
    jal        .text
    move       $a0,$s0
.L0001631c:
    ld         $ra,32($sp)
.L00016320:
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00016330:
    bne        $a5, $a4, .L000162e8
    nop
    b          .L000162f0
    nop
.L00016340:
    sd         $a6,352($s1)
    b          .L0001631c
    sd         $a6,288($s1)
.L0001634c:
    jal        .text
    nop
    b          .L00016320
    ld         $ra,32($sp)
.L0001635c:
    sb         $a7,329($a1)
    jal        .text
    move       $a0,$s0
    b          .L00016320
    ld         $ra,32($sp)
    addiu      $sp,$sp,-80
    lw         $at,0($gp)
    sd         $s2,16($sp)
    move       $s2,$a0
    sd         $s1,8($sp)
    move       $s1,$a1
    beqz       $at, .L0001639c
    sd         $ra,40($sp)
    lw         $a0,-24556($zero)
    jal        checkfp
    move       $a1,$zero
.L0001639c:
    sd         $s7,72($sp)
    sd         $s5,64($sp)
    sd         $s0,56($sp)
    sd         $s4,48($sp)
    sd         $s6,32($sp)
    jal        get_current_abi
    sd         $s3,24($sp)
    jal        load_fpcsr
    move       $s0,$v0
    dsll32     $t8,$v0,0x7
    ld         $s3,-32752($gp)
    bgez       $t8, .L00016540
    and        $s3,$v0,$s3
    li         $a4,3
.L000163d4:
    lw         $a0,-24556($zero)
    lw         $a0,508($a0)
    lw         $v0,292($s2)
    lw         $t9,316($a0)
    sltu       $t9,$v0,$t9
    bnez       $t9, .L0001640c
    move       $a3,$zero
    lw         $a1,320($a0)
    sltu       $a1,$a1,$v0
    bnez       $a1, .L0001640c
    move       $a3,$zero
    li         $a2,-3969
    andi       $a3,$s3,0xf80
    and        $s3,$s3,$a2
.L0001640c:
    move       $a2,$s3
    move       $a0,$s2
    srl        $a5,$s1,0x6
    andi       $s7,$s0,0xc
    andi       $a5,$a5,0x1f
    sltu       $s6,$zero,$s7
    jal        fp_init_glob
    move       $a1,$s6
    srl        $v0,$s1,0x1a
    li         $a6,19
    beq        $v0, $a6, .L00016548
    li         $s5,1
    li         $a7,17
    beq        $v0, $a7, .L00016458
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L00016458:
    srl        $v0,$s1,0x15
    move       $s5,$zero
    andi       $v0,$v0,0xf
.L00016464:
    beqz       $s7, .L00016550
    move       $s4,$v0
    lw         $v1,0($gp)
.L00016470:
    beqz       $v1, .L00016488
    li         $a0,6
    beq        $v0, $a0, .L00016538
    li         $a1,7
    beq        $v0, $a1, .L00016538
    nop
.L00016488:
    beqz       $s4, .L000165c4
    move       $a1,$s6
    li         $a2,4
    beq        $s4, $a2, .L000165c0
    li         $a3,1
    beq        $s4, $a3, .L000164f0
    move       $a1,$s6
    li         $a4,5
    beq        $s4, $a4, .L000164ec
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    move       $a0,$v0
.L000164bc:
    ld         $s7,72($sp)
    ld         $s5,64($sp)
    ld         $s0,56($sp)
    ld         $s4,48($sp)
    ld         $s6,32($sp)
    ld         $ra,40($sp)
    ld         $s3,24($sp)
    move       $v0,$a0
    ld         $s1,8($sp)
    ld         $s2,16($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L000164ec:
    move       $a1,$s6
.L000164f0:
    srl        $a0,$s1,0xb
    jal        fpload_d
    andi       $a0,$a0,0x1f
    move       $s0,$v0
.L00016500:
    beqz       $s5, .L000165d8
    andi       $s5,$s1,0x3f
    beqz       $s7, .L00016624
    sll        $a5,$s1,0xf
.L00016510:
    beqz       $s4, .L000166d0
    move       $a1,$s6
    li         $a1,1
    beq        $s4, $a1, .L00016570
    move       $a1,$s6
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L00016538:
    b          .L00016488
    addiu      $s4,$v0,-2
.L00016540:
    b          .L000163d4
    move       $a4,$zero
.L00016548:
    b          .L00016464
    andi       $v0,$s1,0x7
.L00016550:
    sll        $a2,$s1,0x14
    bgez       $a2, .L00016470
    lw         $v1,0($gp)
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L00016570:
    srl        $a0,$s1,0x10
    jal        fpload_d
    andi       $a0,$a0,0x1f
    move       $s4,$v0
    move       $a1,$s6
    srl        $a0,$s1,0x15
    jal        fpload_d
    andi       $a0,$a0,0x1f
    move       $a3,$v0
.L00016594:
    andi       $v1,$s1,0x3f
    addiu      $v1,$v1,-32
    lui        $v0,0x0
    sltiu      $a0,$v1,26
    addiu      $v0,$v0,8968
    sll        $v1,$v1,0x2
    beqz       $a0, .L000166bc
    addu       $v0,$v0,$v1
    lw         $a0,0($v0)
    jr         $a0
    li         $a0,1
.L000165c0:
    move       $a1,$s6
.L000165c4:
    srl        $a0,$s1,0xb
    jal        fpload_s
    andi       $a0,$a0,0x1f
    b          .L00016500
    move       $s0,$v0
.L000165d8:
    sltiu      $a1,$s5,4
    bnez       $a1, .L000165f4
    sltiu      $a2,$s5,48
    bnez       $a2, .L00016674
    sltiu      $a3,$s5,64
    beqz       $a3, .L00016674
    nop
.L000165f4:
    beqz       $s7, .L000167e4
    sll        $a1,$s1,0xf
.L000165fc:
    beqz       $s4, .L000168c4
    move       $a1,$s6
    li         $a4,1
    beq        $s4, $a4, .L00016650
    move       $a1,$s6
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L00016624:
    bltz       $a5, .L00016640
    move       $a0,$s3
    sll        $a6,$s1,0xa
    bltz       $a6, .L0001663c
    sll        $a7,$s1,0x19
    bgez       $a7, .L00016510
.L0001663c:
    move       $a0,$s3
.L00016640:
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L00016650:
    srl        $a0,$s1,0x10
    jal        fpload_d
    andi       $a0,$a0,0x1f
    sd         $v0,0($sp)
.L00016660:
    sltiu      $a1,$s5,48
    bnez       $a1, .L00016674
    sltiu      $a2,$s5,64
    bnez       $a2, .L0001667c
    nop
.L00016674:
    beqz       $s7, .L00016834
    sll        $a0,$s1,0x19
.L0001667c:
    beqz       $s4, .L000167fc
    sltiu      $a2,$s5,48
    li         $v0,1
    beq        $v0, $s4, .L0001684c
    sltiu      $a1,$s5,48
    li         $a3,4
    beq        $s4, $a3, .L0001689c
    li         $a1,32
    li         $a4,5
    beq        $s4, $a4, .L000166f8
    li         $a1,32
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L000166bc:
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L000166d0:
    srl        $a0,$s1,0x10
    jal        fpload_s
    andi       $a0,$a0,0x1f
    move       $s4,$v0
    move       $a1,$s6
    srl        $a0,$s1,0x15
    jal        fpload_s
    andi       $a0,$a0,0x1f
    b          .L00016594
    move       $a3,$v0
.L000166f8:
    beq        $s5, $a1, .L000168fc
    move       $a0,$zero
    li         $a2,33
    beq        $s5, $a2, .L00016884
    move       $a0,$v0
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
    move       $a0,$zero
    move       $a1,$s0
    jal        _madd_sd
    move       $a2,$s4
    b          .L0001674c
    lw         $a0,-24556($zero)
    li         $a0,1
    move       $a1,$s0
    jal        _madd_sd
    move       $a2,$s4
    lw         $a0,-24556($zero)
.L0001674c:
    lbu        $a0,857($a0)
    b          .L000164bc
    andi       $a0,$a0,0x10
    move       $a1,$s0
    jal        _nmsub_sd
    move       $a2,$s4
    b          .L0001674c
    lw         $a0,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    jal        _nmsub_sd
    move       $a2,$s4
    b          .L0001674c
    lw         $a0,-24556($zero)
    li         $a0,1
    move       $a1,$s0
    jal        _nmadd_sd
    move       $a2,$s4
    b          .L0001674c
    lw         $a0,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    jal        _nmadd_sd
    move       $a2,$s4
    b          .L0001674c
    lw         $a0,-24556($zero)
    li         $a0,1
    move       $a1,$s0
    jal        _msub_sd
    move       $a2,$s4
    b          .L0001674c
    lw         $a0,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    jal        _msub_sd
    move       $a2,$s4
    b          .L0001674c
    lw         $a0,-24556($zero)
.L000167e4:
    bgez       $a1, .L000165fc
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L000167fc:
    bnez       $a2, .L00016814
    sltiu      $a0,$s5,38
    sltiu      $a3,$s5,64
    bnez       $a3, .L00016920
    move       $a0,$zero
    sltiu      $a0,$s5,38
.L00016814:
    lui        $v0,0x0
    addiu      $v0,$v0,8816
    sll        $v1,$s5,0x2
    beqz       $a0, .L000168e8
    addu       $v0,$v0,$v1
    lw         $v1,0($v0)
    jr         $v1
    move       $a0,$zero
.L00016834:
    bgez       $a0, .L0001667c
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L0001684c:
    bnez       $a1, .L00016864
    sltiu      $a2,$s5,38
    sltiu      $a2,$s5,64
    bnez       $a2, .L00016948
    move       $a0,$v0
    sltiu      $a2,$s5,38
.L00016864:
    lui        $a0,0x0
    addiu      $a0,$a0,8664
    sll        $a1,$s5,0x2
    beqz       $a2, .L0001690c
    addu       $a0,$a0,$a1
    lw         $a1,0($a0)
    jr         $a1
    li         $a0,1
.L00016884:
    jal        _cvtsd_l
    move       $a1,$s0
    lw         $a0,-24556($zero)
.L00016890:
    lbu        $a0,857($a0)
    b          .L000164bc
    andi       $a0,$a0,0x10
.L0001689c:
    beq        $s5, $a1, .L00016b8c
    move       $a0,$zero
    li         $a2,33
    beq        $s5, $a2, .L000168d8
    move       $a0,$v0
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L000168c4:
    srl        $a0,$s1,0x10
    jal        fpload_s
    andi       $a0,$a0,0x1f
    b          .L00016660
    sd         $v0,0($sp)
.L000168d8:
    jal        _cvtsd_w
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
.L000168e8:
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L000168fc:
    jal        _cvtsd_l
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
.L0001690c:
    move       $a0,$s3
    jal        .text
    move       $a1,$s2
    b          .L000164bc
    move       $a0,$v0
.L00016920:
    move       $a1,$s0
    andi       $a3,$s1,0xf
    srl        $a4,$s1,0x8
    ld         $a2,0($sp)
    jal        _comp_sd
    andi       $a4,$a4,0x7
    lw         $a0,-24556($zero)
    lbu        $a0,857($a0)
    b          .L000164bc
    andi       $a0,$a0,0x10
.L00016948:
    move       $a1,$s0
    andi       $a3,$s1,0xf
    srl        $a4,$s1,0x8
    ld         $a2,0($sp)
    jal        _comp_sd
    andi       $a4,$a4,0x7
    lw         $a0,-24556($zero)
    lbu        $a0,857($a0)
    b          .L000164bc
    andi       $a0,$a0,0x10
    move       $a0,$zero
    move       $a1,$s0
    jal        _add_sd
    ld         $a2,0($sp)
    b          .L00016890
    lw         $a0,-24556($zero)
    jal        _cvtl_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a0,$zero
    jal        _cvtw_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    jal        _cvtd_s
    move       $a0,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a0,$zero
    jal        _rsqrt_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a0,$zero
    lui        $a1,0x3f80
    jal        _div_sd
    move       $a2,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $a2,-24556($zero)
    move       $a0,$zero
    li         $a1,3
    sb         $a1,856($a2)
    jal        _cvtw_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $a4,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    li         $a3,2
    jal        _cvtw_sd
    sb         $a3,856($a4)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $a6,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    li         $a5,1
    jal        _cvtw_sd
    sb         $a5,856($a6)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $a7,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    jal        _cvtw_sd
    sb         $zero,856($a7)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $t1,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    li         $t0,3
    jal        _cvtl_sd
    sb         $t0,856($t1)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $t3,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    li         $t2,2
    jal        _cvtl_sd
    sb         $t2,856($t3)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $t9,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    li         $t8,1
    jal        _cvtl_sd
    sb         $t8,856($t9)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $ra,-24556($zero)
    move       $a0,$zero
    sb         $zero,856($ra)
    jal        _cvtl_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a0,$zero
    jal        _neg_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $a1,-24556($zero)
    lbu        $a2,857($a1)
    move       $a0,$s0
    lbu        $a1,858($a1)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a0,$zero
    jal        _abs_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a0,$zero
    jal        _sqrt_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    jal        _div_sd
    ld         $a2,0($sp)
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    jal        _mul_sd
    ld         $a2,0($sp)
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a0,$zero
    move       $a1,$s0
    jal        _sub_sd
    ld         $a2,0($sp)
    b          .L00016890
    lw         $a0,-24556($zero)
.L00016b8c:
    jal        _cvtsd_w
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a1,$s0
    ld         $a2,0($sp)
    jal        _add_sd
    li         $a0,1
    b          .L00016890
    lw         $a0,-24556($zero)
    jal        _cvtl_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    li         $a0,1
    jal        _cvtw_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    jal        _cvts_d
    move       $a0,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    li         $a0,1
    jal        _rsqrt_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    li         $a0,1
    move       $a2,$s0
    li         $a1,1023
    jal        _div_sd
    dsll32     $a1,$a1,0x14
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $a3,-24556($zero)
    li         $a0,1
    move       $a1,$s0
    li         $a2,3
    jal        _cvtw_sd
    sb         $a2,856($a3)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $a5,-24556($zero)
    li         $a0,1
    move       $a1,$s0
    li         $a4,2
    jal        _cvtw_sd
    sb         $a4,856($a5)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $a6,-24556($zero)
    li         $a0,1
    move       $a1,$s0
    jal        _cvtw_sd
    sb         $v0,856($a6)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $a7,-24556($zero)
    li         $a0,1
    move       $a1,$s0
    jal        _cvtw_sd
    sb         $zero,856($a7)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $t1,-24556($zero)
    li         $a0,1
    move       $a1,$s0
    li         $t0,3
    jal        _cvtl_sd
    sb         $t0,856($t1)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $t3,-24556($zero)
    li         $a0,1
    move       $a1,$s0
    li         $t2,2
    jal        _cvtl_sd
    sb         $t2,856($t3)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $t8,-24556($zero)
    li         $a0,1
    move       $a1,$s0
    jal        _cvtl_sd
    sb         $v0,856($t8)
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $t9,-24556($zero)
    li         $a0,1
    move       $a1,$s0
    jal        _cvtl_sd
    sb         $zero,856($t9)
    b          .L00016890
    lw         $a0,-24556($zero)
    li         $a0,1
    jal        _neg_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    lw         $a1,-24556($zero)
    lbu        $a2,857($a1)
    move       $a0,$s0
    lbu        $a1,858($a1)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00016890
    lw         $a0,-24556($zero)
    li         $a0,1
    jal        _abs_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    li         $a0,1
    jal        _sqrt_sd
    move       $a1,$s0
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a1,$s0
    ld         $a2,0($sp)
    jal        _div_sd
    li         $a0,1
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a1,$s0
    ld         $a2,0($sp)
    jal        _mul_sd
    li         $a0,1
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $a1,$s0
    ld         $a2,0($sp)
    jal        _sub_sd
    li         $a0,1
    b          .L00016890
    lw         $a0,-24556($zero)
    move       $at,$a0
    li         $a0,4
    move       $a2,$a1
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        softfp_psignal
    move       $a1,$at
    lw         $a0,-24556($zero)
    jal        checkfp
    move       $a1,$zero
    ld         $ra,0($sp)
    li         $v0,1
    jr         $ra
    addiu      $sp,$sp,16

glabel _rsqrt_sd
    addiu      $sp,$sp,-96
    sd         $s0,40($sp)
    move       $s0,$a0
    addiu      $a4,$sp,8
    addiu      $a3,$sp,4
    addiu      $a2,$sp,0
    sd         $a1,88($sp)
    nop
    sd         $ra,48($sp)
    jal        breakout_and_test_sd
    addiu      $a1,$sp,88
    bnez       $v0, .L00016ec0
    sd         $s1,64($sp)
    addiu      $at,$gp,0
    sll        $s1,$s0,0x2
    lw         $t2,4($sp)
    addu       $at,$s1,$at
    lw         $at,0($at)
    bne        $at, $t2, .L00016ed4
    lw         $v0,0($sp)
    beqz       $v0, .L000170b8
    move       $a0,$s0
    lw         $a1,-24556($zero)
    lui        $a2,0x1
    lw         $a0,844($a1)
    ori        $a2,$a2,0x40
    or         $a0,$a0,$a2
    sw         $a0,844($a1)
    lw         $v1,-24556($zero)
    lw         $v1,844($v1)
    andi       $v1,$v1,0x800
    beqz       $v1, .L00017000
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00016ec4
    ld         $ra,48($sp)
.L00016e88:
    move       $a0,$s0
    addu       $a5,$t3,$t2
    dsrl       $a4,$a4,0x3
    nor        $a3,$t8,$zero
    ld         $a2,16($sp)
    lui        $a1,0x0
    and        $a3,$a3,$a4
    addiu      $a1,$a1,0
    sw         $a5,4($sp)
    addu       $a1,$t9,$a1
    dsllv      $a2,$a5,$a2
    or         $a2,$a2,$a3
    jal        _div_sd
    ld         $a1,0($a1)
.L00016ec0:
    ld         $ra,48($sp)
.L00016ec4:
    ld         $s1,64($sp)
    ld         $s0,40($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L00016ed4:
    beqz       $t2, .L00016fb8
    lw         $a3,0($sp)
.L00016edc:
    li         $a4,1
    beq        $a3, $a4, .L00017028
    sll        $t9,$s0,0x3
    sd         $t9,56($sp)
    addiu      $a0,$gp,0
    lui        $a2,0x0
    addu       $a0,$s1,$a0
    sd         $a0,32($sp)
    addiu      $a2,$a2,0
    addu       $a2,$t9,$a2
    beqz       $t2, .L00017074
    sd         $a2,24($sp)
    ld         $t8,0($a2)
    ld         $a7,8($sp)
    lw         $t3,0($a0)
    or         $a7,$t8,$a7
    sd         $a7,8($sp)
    subu       $t2,$t2,$t3
    sw         $t2,4($sp)
.L00016f28:
    addiu      $t0,$gp,0
    addu       $t0,$s1,$t0
    andi       $ra,$t2,0x1
    sra        $t2,$t2,0x1
    lw         $t0,0($t0)
    dsllv      $a7,$a7,$ra
    li         $t1,64
    dsrlv      $a3,$a7,$t0
    sd         $t0,16($sp)
    subu       $t1,$t1,$t0
    addiu      $t0,$t0,1
    sw         $t2,4($sp)
    dsllv      $a7,$a7,$t1
    li         $t1,-4
    bltz       $t0, .L0001706c
    sd         $a7,8($sp)
    move       $a2,$zero
    b          .L00017138
    li         $a4,1
.L00016f74:
    dsll       $a5,$a6,0x2
    ori        $a4,$a4,0x4
.L00016f7c:
    dsrl32     $a3,$a7,0x1e
    slt        $a6,$t0,$a2
    addiu      $a2,$a2,1
    dsll       $a7,$a7,0x2
    sd         $a7,8($sp)
    bnez       $a6, .L00016e88
    or         $a3,$a5,$a3
    dsubu      $a6,$a3,$a4
.L00016f9c:
    dsll       $a5,$a4,0x1
    and        $a4,$t1,$a5
    bgez       $a6, .L00016f74
    ori        $a4,$a4,0x1
    dsll       $a5,$a3,0x2
    b          .L00016f7c
    nop
.L00016fb8:
    ld         $a6,8($sp)
    bnez       $a6, .L00016edc
    lw         $a3,0($sp)
    lw         $t1,-24556($zero)
    lw         $t0,844($t1)
    ori        $t0,$t0,0x8020
    sw         $t0,844($t1)
    lw         $a7,-24556($zero)
    lw         $a7,844($a7)
    andi       $a7,$a7,0x400
    beqz       $a7, .L000170f8
    sll        $a4,$s0,0x3
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00016ec4
    ld         $ra,48($sp)
.L00017000:
    sll        $a2,$s0,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00016ec4
    ld         $ra,48($sp)
.L00017028:
    lw         $a4,-24556($zero)
    lui        $a5,0x1
    lw         $a3,844($a4)
    ori        $a5,$a5,0x40
    or         $a3,$a3,$a5
    sw         $a3,844($a4)
    lw         $a2,-24556($zero)
    lw         $a2,844($a2)
    andi       $a2,$a2,0x800
    beqz       $a2, .L000170d0
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00016ec4
    ld         $ra,48($sp)
.L0001706c:
    b          .L00016e88
    li         $a4,1
.L00017074:
    addiu      $a6,$gp,0
    addu       $a6,$s1,$a6
    lw         $a6,0($a6)
    jalr       $a6
    addiu      $a0,$sp,8
    ld         $t9,56($sp)
    ld         $a7,8($sp)
    ld         $t8,24($sp)
    ld         $t3,32($sp)
    addiu      $t2,$gp,0
    ld         $t8,0($t8)
    addu       $t2,$s1,$t2
    lw         $t2,0($t2)
    lw         $t3,0($t3)
    subu       $t2,$t2,$v0
    b          .L00016f28
    sw         $t2,4($sp)
.L000170b8:
    jal        fpstore_sd
    move       $a1,$zero
    jal        store_fpcsr
    nop
    b          .L00016ec4
    ld         $ra,48($sp)
.L000170d0:
    sll        $a2,$s0,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00016ec4
    ld         $ra,48($sp)
.L000170f8:
    addiu      $a3,$gp,0
    lui        $a1,0x0
    lwu        $a2,0($sp)
    addiu      $a1,$a1,0
    addu       $a3,$s1,$a3
    lw         $a3,0($a3)
    addu       $a1,$a1,$a4
    ld         $a1,0($a1)
    move       $a0,$s0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    or         $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L00016ec4
    ld         $ra,48($sp)
.L00017138:
    addiu      $a2,$a2,1
    b          .L00016f9c
    dsubu      $a6,$a3,$a4

glabel _cvtsd_l
    addiu      $sp,$sp,-48
    li         $a3,-1
    sd         $s1,8($sp)
    move       $a2,$a1
    lui        $a6,0x0
    sd         $s0,0($sp)
    move       $s0,$a0
    beqz       $a1, .L00017298
    sd         $ra,16($sp)
    dsll32     $at,$a3,0x1f
    beq        $a1, $at, .L00017238
    nop
    bltz       $a1, .L000171fc
    li         $a0,-1
    move       $s1,$zero
.L00017180:
    dsll32     $v0,$a0,0x15
    and        $v0,$a2,$v0
    beqz       $v0, .L00017264
    addiu      $a0,$sp,40
    li         $a7,64
    li         $v1,-1
    dsll32     $v1,$v1,0x1c
    and        $v1,$a2,$v1
    beqz       $v1, .L00017208
    addiu      $t0,$a6,10736
    dsra32     $a5,$a2,0x1c
    andi       $a5,$a5,0xf
    addu       $a5,$a5,$t0
    lb         $a5,0($a5)
    addiu      $a5,$a5,8
.L000171bc:
    subu       $a3,$a7,$a5
    dsllv      $a3,$a2,$a3
    addiu      $a1,$a5,52
    dsrav      $a2,$a2,$a5
    sd         $a2,40($sp)
.L000171d0:
    sll        $a5,$s0,0x2
    addiu      $a4,$gp,0
    addu       $a4,$a4,$a5
    lw         $a4,0($a4)
    jalr       $a4
    move       $a0,$s1
    ld         $ra,16($sp)
.L000171ec:
    ld         $s1,8($sp)
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000171fc:
    li         $s1,1
    b          .L00017180
    dnegu      $a2,$a1
.L00017208:
    li         $a6,-1
    dsll32     $a6,$a6,0x18
    and        $a6,$a2,$a6
    lui        $a0,0x0
    dsra32     $a5,$a2,0x18
    beqz       $a6, .L00017280
    andi       $a5,$a5,0xf
    addiu      $a6,$a0,10736
    addu       $a5,$a5,$a6
    lb         $a5,0($a5)
    b          .L000171bc
    addiu      $a5,$a5,4
.L00017238:
    lui        $a1,0x0
    sll        $a3,$a0,0x3
    addiu      $a1,$a1,0
    sd         $a2,40($sp)
    addu       $a1,$a1,$a3
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L000171ec
    ld         $ra,16($sp)
.L00017264:
    jal        renorm_d
    sd         $a2,40($sp)
    move       $a3,$zero
    li         $a1,52
    ld         $a2,40($sp)
    b          .L000171d0
    subu       $a1,$a1,$v0
.L00017280:
    dsra32     $a5,$a2,0x14
    addiu      $a6,$a0,10736
    andi       $a5,$a5,0xf
    addu       $a5,$a5,$a6
    b          .L000171bc
    lb         $a5,0($a5)
.L00017298:
    sd         $a1,40($sp)
    jal        fpstore_sd
    move       $a1,$zero
    jal        store_fpcsr
    nop
    b          .L000171ec
    ld         $ra,16($sp)

glabel fpstore_sd
    lw         $a5,-24556($zero)
    addiu      $sp,$sp,-16
    lbu        $a2,857($a5)
    move       $a4,$a1
    sd         $ra,0($sp)
    lbu        $a5,858($a5)
    beqz       $a0, .L000172ec
    andi       $a2,$a2,0x20
    move       $a0,$a1
    jal        fpstore_d
    move       $a1,$a5
    ld         $ra,0($sp)
.L000172e4:
    jr         $ra
    addiu      $sp,$sp,16
.L000172ec:
    move       $a0,$a1
    jal        fpstore_s
    move       $a1,$a5
    b          .L000172e4
    ld         $ra,0($sp)

glabel fpstore_d
    addiu      $sp,$sp,-48
    sd         $ra,8($sp)
    sd         $s3,24($sp)
    sd         $s1,32($sp)
    move       $s1,$a0
    move       $s3,$a1
    sd         $s0,16($sp)
    move       $s0,$a2
    jal        splhi
    sd         $s2,40($sp)
    move       $s2,$v0
    lw         $v0,-24056($zero)
    lw         $at,-24556($zero)
    bne        $at, $v0, .L00017390
    lui        $v1,0x2400
    beqz       $s0, .L000173b4
    nop
    sd         $v1,0($sp)
.L00017348:
    jal        getsr
    nop
    ld         $a0,0($sp)
    jal        setsr
    or         $a0,$a0,$v0
    move       $a0,$s1
    move       $a1,$s3
    jal        fpunit_fpstore_d
    move       $a2,$s0
    jal        splx
    move       $a0,$s2
.L00017374:
    ld         $s2,40($sp)
    ld         $ra,8($sp)
    ld         $s0,16($sp)
    ld         $s3,24($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00017390:
    jal        splx
    move       $a0,$s2
    lw         $v0,-24556($zero)
    lw         $v0,640($v0)
    sll        $a0,$s3,0x3
    beqz       $s0, .L000173c0
    addu       $v0,$a0,$v0
    b          .L00017374
    sd         $s1,40($v0)
.L000173b4:
    lui        $v1,0x2000
    b          .L00017348
    sd         $v1,0($sp)
.L000173c0:
    li         $a1,-1
    dsrl32     $a1,$a1,0x0
    and        $a3,$s1,$a1
    sd         $a3,40($v0)
    lw         $a2,-24556($zero)
    lw         $a2,640($a2)
    dsra32     $a3,$s1,0x0
    addu       $a2,$a2,$a0
    and        $a1,$a1,$a3
    b          .L00017374
    sd         $a1,48($a2)

glabel fpstore_s
    addiu      $sp,$sp,-48
    sd         $a2,0($sp)
    sd         $ra,8($sp)
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $s1,24($sp)
    move       $s1,$a1
    jal        splhi
    sd         $s2,40($sp)
    move       $s2,$v0
    lw         $v0,-24056($zero)
    lw         $at,-24556($zero)
    ld         $v1,0($sp)
    bne        $at, $v0, .L00017474
    sd         $s3,32($sp)
    beqz       $v1, .L00017434
    lui        $s3,0x2000
    lui        $s3,0x2400
.L00017434:
    jal        getsr
    nop
    jal        setsr
    or         $a0,$s3,$v0
    move       $a0,$s0
    jal        fpunit_fpstore_s
    move       $a1,$s1
    jal        splx
    move       $a0,$s2
.L00017458:
    ld         $s3,32($sp)
    ld         $ra,8($sp)
    ld         $s2,40($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00017474:
    jal        splx
    move       $a0,$s2
    lw         $a0,-24556($zero)
    lw         $a0,640($a0)
    sll        $a1,$s1,0x3
    addu       $a0,$a0,$a1
    b          .L00017458
    sd         $s0,40($a0)

glabel fpload_d
    addiu      $sp,$sp,-48
    sd         $ra,16($sp)
    sd         $s1,24($sp)
    move       $s1,$a0
    sd         $s0,8($sp)
    move       $s0,$a1
    jal        splhi
    sd         $s2,32($sp)
    move       $s2,$v0
    lw         $v0,-24056($zero)
    lw         $at,-24556($zero)
    bne        $at, $v0, .L0001751c
    lui        $v1,0x2400
    beqz       $s0, .L00017548
    lui        $a3,0x2000
    sd         $v1,0($sp)
.L000174d4:
    jal        getsr
    nop
    ld         $a0,0($sp)
    jal        setsr
    or         $a0,$a0,$v0
    move       $a0,$s1
    jal        fpunit_fpload_d
    move       $a1,$s0
    move       $s0,$v0
    jal        splx
    move       $a0,$s2
    move       $v0,$s0
    ld         $ra,16($sp)
.L00017508:
    ld         $s2,32($sp)
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0001751c:
    jal        splx
    move       $a0,$s2
    lw         $a2,-24556($zero)
    lw         $a2,640($a2)
    sll        $a1,$s1,0x3
    addu       $a1,$a1,$a2
    beqz       $s0, .L00017550
    ld         $a0,40($a1)
    move       $v0,$a0
.L00017540:
    b          .L00017508
    ld         $ra,16($sp)
.L00017548:
    b          .L000174d4
    sd         $a3,0($sp)
.L00017550:
    sll        $v0,$a0,0x0
    ld         $v1,48($a1)
    li         $a2,-1
    dsrl32     $a2,$a2,0x0
    dsll32     $v1,$v1,0x0
    and        $v0,$v0,$a2
    b          .L00017540
    or         $v0,$v0,$v1

glabel fpload_s
    addiu      $sp,$sp,-48
    sd         $a1,0($sp)
    sd         $ra,16($sp)
    sd         $s0,8($sp)
    move       $s0,$a0
    jal        splhi
    sd         $s1,24($sp)
    move       $s1,$v0
    lw         $v0,-24056($zero)
    lw         $at,-24556($zero)
    bne        $at, $v0, .L000175ec
    ld         $v1,0($sp)
    beqz       $v1, .L00017618
    sd         $s2,32($sp)
    lui        $s2,0x2400
.L000175ac:
    jal        getsr
    nop
    jal        setsr
    or         $a0,$s2,$v0
    ld         $s2,32($sp)
    jal        fpunit_fpload_s
    move       $a0,$s0
    move       $s0,$v0
    jal        splx
    move       $a0,$s1
    move       $v0,$s0
.L000175d8:
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000175ec:
    jal        splx
    move       $a0,$s1
    lw         $v0,-24556($zero)
    lw         $v0,640($v0)
    sll        $v1,$s0,0x3
    addu       $v0,$v0,$v1
    li         $v1,-1
    ld         $v0,40($v0)
    dsrl32     $v1,$v1,0x0
    b          .L000175d8
    and        $v0,$v0,$v1
.L00017618:
    b          .L000175ac
    lui        $s2,0x2000

glabel store_fpcsr
    lw         $a3,-24556($zero)
    lbu        $at,857($a3)
    addiu      $sp,$sp,-32
    sd         $ra,16($sp)
    andi       $at,$at,0x10
    sd         $s0,0($sp)
    beqz       $at, .L000176ac
    lw         $s0,844($a3)
.L00017640:
    jal        splhi
    nop
    lw         $a3,-24556($zero)
    lbu        $v1,857($a3)
    andi       $v1,$v1,0x10
    beqz       $v1, .L0001767c
    nop
.L0001765c:
    lw         $a0,640($a3)
    sw         $s0,304($a0)
.L00017664:
    ld         $s0,0($sp)
    jal        splx
    move       $a0,$v0
    ld         $ra,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0001767c:
    lw         $a1,-24056($zero)
    bne        $a1, $a3, .L0001765c
    sd         $v0,8($sp)
    jal        getsr
    nop
    lui        $a0,0x2000
    jal        setsr
    or         $a0,$v0,$a0
    jal        set_fpc_csr
    move       $a0,$s0
    b          .L00017664
    ld         $v0,8($sp)
.L000176ac:
    lw         $a4,840($a3)
    lui        $v0,0x3
    ori        $t9,$v0,0xf000
    beqz       $a4, .L00017640
    sll        $a0,$a4,0x5
    or         $s0,$a4,$s0
    and        $t8,$s0,$a0
    and        $t8,$t8,$t9
    b          .L00017640
    xor        $s0,$s0,$t8

glabel load_fpcsr
    addiu      $sp,$sp,-32
    sd         $s0,8($sp)
    sd         $ra,0($sp)
    jal        splhi
    sd         $s7,16($sp)
    lw         $a0,-24556($zero)
    lw         $at,-24056($zero)
    beq        $at, $a0, .L00017720
    move       $s7,$v0
    lw         $s0,640($a0)
    lw         $s0,304($s0)
.L00017700:
    jal        splx
    move       $a0,$s7
    ld         $ra,0($sp)
    ld         $s7,16($sp)
    move       $v0,$s0
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L00017720:
    jal        getsr
    nop
    lui        $a0,0x2000
    jal        setsr
    or         $a0,$v0,$a0
    jal        get_fpc_csr
    nop
    b          .L00017700
    move       $s0,$v0

glabel post_sig
    lw         $a4,-24556($zero)
    lbu        $at,857($a4)
    andi       $at,$at,0x10
    addiu      $sp,$sp,-16
    beqz       $at, .L00017764
    sd         $ra,0($sp)
.L0001775c:
    jr         $ra
    addiu      $sp,$sp,16
.L00017764:
    lw         $a1,844($a4)
    jal        softfp_psignal
    lw         $a2,836($a4)
    lw         $v1,-24556($zero)
    lbu        $v0,857($v1)
    ori        $v0,$v0,0x10
    sb         $v0,857($v1)
    move       $a1,$zero
    jal        checkfp
    lw         $a0,-24556($zero)
    b          .L0001775c
    ld         $ra,0($sp)

glabel fp_init_glob
    move       $a6,$zero
    beqz       $a1, .L000177a4
    lw         $a7,-24556($zero)
    li         $a6,32
.L000177a4:
    sw         $a0,836($a7)
    lw         $a7,-24556($zero)
    sw         $a2,844($a7)
    lw         $a1,-24556($zero)
    sw         $a3,840($a1)
    lw         $a0,-24556($zero)
    andi       $v1,$a2,0x3
    sb         $v1,856($a0)
    lw         $v1,-24556($zero)
    or         $v0,$a6,$a4
    ori        $v0,$v0,0x4
    sb         $v0,857($v1)
    lw         $at,-24556($zero)
    jr         $ra
    sb         $a5,858($at)

glabel breakout_sd
    addiu      $t3,$gp,0
    sll        $a7,$a0,0x2
    ld         $t2,0($a1)
    addu       $t3,$a7,$t3
    lw         $t3,0($t3)
    addiu      $t1,$gp,0
    dsrav      $t2,$t2,$t3
    addu       $t1,$a7,$t1
    sll        $t2,$t2,0x0
    sw         $t2,0($a3)
    lw         $t1,0($t1)
    addiu      $t0,$gp,0
    addu       $a7,$a7,$t0
    and        $t1,$t1,$t2
    sw         $t1,0($a3)
    lw         $t3,0($a7)
    ld         $t2,0($a1)
    lui        $t0,0x0
    sll        $t1,$a0,0x3
    addiu      $t0,$t0,0
    dsrav      $t2,$t2,$t3
    addu       $t0,$t0,$t1
    andi       $t2,$t2,0x1
    sw         $t2,0($a2)
    ld         $t0,0($t0)
    ld         $a6,0($a1)
    and        $a6,$a6,$t0
    sd         $a6,0($a4)
    lw         $at,-24556($zero)
    lbu        $at,857($at)
    andi       $at,$at,0x1
    beqz       $at, .L000178bc
    addiu      $sp,$sp,-16
    lw         $t8,0($a3)
    bnez       $t8, .L000178bc
    nop
    beqz       $a6, .L000178bc
    nop
    sd         $zero,0($a4)
    lw         $v1,0($a7)
    lwu        $v0,0($a2)
    dsllv      $v0,$v0,$v1
    sd         $v0,0($a1)
    lw         $v0,-24556($zero)
    lw         $at,844($v0)
    ori        $at,$at,0x1004
    sw         $at,844($v0)
    lw         $t9,-24556($zero)
    lw         $t9,844($t9)
    andi       $t9,$t9,0x80
    beqz       $t9, .L000178bc
    sd         $ra,0($sp)
    jal        post_sig
    li         $a0,8
    ld         $ra,0($sp)
.L000178bc:
    jr         $ra
    addiu      $sp,$sp,16

glabel screen_nan_sd
    sll        $v0,$a0,0x2
    addiu      $at,$gp,0
    addu       $at,$at,$v0
    lw         $at,0($at)
    addiu      $sp,$sp,-16
    lui        $a4,0x1
    lui        $a6,0x0
    ori        $a4,$a4,0x40
    addiu      $v1,$a6,0
    bne        $at, $a2, .L00017948
    sll        $v0,$a0,0x3
    addu       $v1,$v0,$v1
    ld         $v1,0($v1)
    and        $v1,$v1,$a3
    beqz       $v1, .L00017950
    nop
    lw         $a3,-24556($zero)
    lw         $a2,844($a3)
    or         $a2,$a2,$a4
    sw         $a2,844($a3)
    lw         $a1,-24556($zero)
    lw         $a1,844($a1)
    andi       $a1,$a1,0x800
    beqz       $a1, .L00017978
    sd         $ra,0($sp)
    jal        post_sig
    li         $a0,8
.L00017930:
    jal        store_fpcsr
    nop
    ld         $ra,0($sp)
    li         $v0,1
.L00017940:
    jr         $ra
    addiu      $sp,$sp,16
.L00017948:
    b          .L00017940
    move       $v0,$zero
.L00017950:
    move       $v0,$zero
    beqz       $a3, .L00017940
    sd         $ra,0($sp)
    jal        fpstore_sd
    nop
    jal        store_fpcsr
    nop
    ld         $ra,0($sp)
    b          .L00017940
    li         $v0,1
.L00017978:
    lui        $a1,0x0
    addiu      $a1,$a1,0
    addu       $a1,$v0,$a1
    jal        fpstore_sd
    ld         $a1,0($a1)
    b          .L00017930
    nop

glabel breakout_and_test_sd
    addiu      $sp,$sp,-48
    sd         $a1,32($sp)
    sd         $a3,24($sp)
    sd         $ra,0($sp)
    sd         $s8,8($sp)
    move       $s8,$a0
    jal        breakout_sd
    sd         $a4,16($sp)
    ld         $a3,16($sp)
    ld         $a1,32($sp)
    ld         $a2,24($sp)
    ld         $a1,0($a1)
    lw         $a2,0($a2)
    move       $a0,$s8
    jal        screen_nan_sd
    ld         $a3,0($a3)
    ld         $ra,0($sp)
    beqz       $v0, .L000179ec
    ld         $s8,8($sp)
    li         $v0,1
.L000179e4:
    jr         $ra
    addiu      $sp,$sp,48
.L000179ec:
    b          .L000179e4
    move       $v0,$zero

glabel breakout_and_test2_sd
    addiu      $sp,$sp,-128
    sd         $a1,0($sp)
    sd         $a3,56($sp)
    sd         $s8,16($sp)
    sd         $s3,8($sp)
    sd         $s0,40($sp)
    move       $s0,$a0
    move       $s3,$a4
    sd         $s2,24($sp)
    move       $s2,$a5
    move       $s8,$a6
    sd         $s1,48($sp)
    sd         $ra,32($sp)
    jal        breakout_sd
    move       $s1,$a7
    move       $a0,$s0
    move       $a1,$s2
    move       $a2,$s8
    lw         $a4,132($sp)
    jal        breakout_sd
    move       $a3,$s1
    sll        $v1,$s0,0x2
    addiu      $v0,$gp,0
    ld         $a3,56($sp)
    addu       $v0,$v0,$v1
    lw         $v0,0($v0)
    lw         $a3,0($a3)
    sll        $a2,$s0,0x3
    lui        $t8,0x1
    ld         $s8,16($sp)
    lui        $a0,0x0
    ori        $t8,$t8,0x40
    lw         $a1,132($sp)
    bne        $a3, $v0, .L00017a98
    addiu      $a4,$a0,0
    ld         $a5,0($s3)
    addu       $a6,$a2,$a4
    ld         $a6,0($a6)
    and        $a5,$a5,$a6
    bnez       $a5, .L00017ac0
    nop
.L00017a98:
    lw         $a4,0($s1)
    addiu      $a5,$a0,0
    bne        $a4, $v0, .L00017b14
    sll        $a2,$s0,0x3
    ld         $a7,0($a1)
    addu       $t0,$a2,$a5
    ld         $t0,0($t0)
    and        $a7,$a7,$t0
    beqz       $a7, .L00017b14
    nop
.L00017ac0:
    lw         $t3,-24556($zero)
    lw         $t2,844($t3)
    or         $t2,$t2,$t8
    sw         $t2,844($t3)
    lw         $t1,-24556($zero)
    lw         $t1,844($t1)
    andi       $t1,$t1,0x800
    beqz       $t1, .L00017b7c
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
.L00017aec:
    jal        store_fpcsr
    nop
    li         $v0,1
.L00017af8:
    ld         $s3,8($sp)
    ld         $ra,32($sp)
    ld         $s2,24($sp)
    ld         $s0,40($sp)
    ld         $s1,48($sp)
    jr         $ra
    addiu      $sp,$sp,128
.L00017b14:
    bne        $a3, $v0, .L00017b48
    nop
    ld         $t9,0($s3)
    beqz       $t9, .L00017b48
    nop
    ld         $a1,0($sp)
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00017af8
    li         $v0,1
.L00017b48:
    bne        $a4, $v0, .L00017b74
    nop
    ld         $a2,0($a1)
    beqz       $a2, .L00017b74
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($s2)
    jal        store_fpcsr
    nop
    b          .L00017af8
    li         $v0,1
.L00017b74:
    b          .L00017af8
    move       $v0,$zero
.L00017b7c:
    addiu      $a1,$a1,0
    addu       $a1,$a2,$a1
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    b          .L00017aec
    nop

glabel breakout_and_test3_sd
    addiu      $sp,$sp,-128
    sd         $a1,0($sp)
    sd         $a3,24($sp)
    sd         $s8,48($sp)
    sd         $s3,32($sp)
    sd         $s0,56($sp)
    move       $s0,$a0
    move       $s3,$a4
    sd         $s2,8($sp)
    move       $s2,$a5
    move       $s8,$a6
    sd         $s1,40($sp)
    sd         $ra,16($sp)
    jal        breakout_sd
    move       $s1,$a7
    move       $a0,$s0
    move       $a1,$s2
    move       $a2,$s8
    move       $a3,$s1
    jal        breakout_sd
    lw         $a4,132($sp)
    ld         $s8,24($sp)
    lw         $a2,148($sp)
    lw         $a1,140($sp)
    lw         $a3,156($sp)
    move       $a0,$s0
    jal        breakout_sd
    lw         $a4,164($sp)
    sll        $v1,$s0,0x2
    addiu      $v0,$gp,0
    lw         $a6,0($s8)
    addu       $v0,$v0,$v1
    lw         $v0,0($v0)
    lw         $t2,156($sp)
    sll        $a2,$s0,0x3
    lw         $t3,164($sp)
    lui        $a5,0x0
    lw         $t0,132($sp)
    bne        $a6, $v0, .L00017cb0
    addiu      $a0,$a5,0
    ld         $a1,0($s3)
    addu       $a3,$a2,$a0
    ld         $a3,0($a3)
    and        $a1,$a1,$a3
    beqz       $a1, .L00017cb0
    nop
.L00017c50:
    lw         $a6,-24556($zero)
    lui        $a7,0x1
    lw         $a5,844($a6)
    ori        $a7,$a7,0x40
    or         $a5,$a5,$a7
    sw         $a5,844($a6)
    lw         $a4,-24556($zero)
    lw         $a4,844($a4)
    andi       $a4,$a4,0x800
    beqz       $a4, .L00017d90
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
.L00017c84:
    jal        store_fpcsr
    nop
    li         $v0,1
.L00017c90:
    ld         $s2,8($sp)
    ld         $s3,32($sp)
    ld         $ra,16($sp)
    ld         $s1,40($sp)
    ld         $s8,48($sp)
    ld         $s0,56($sp)
    jr         $ra
    addiu      $sp,$sp,128
.L00017cb0:
    lw         $a5,0($s1)
    sll        $a2,$s0,0x3
    lw         $a3,164($sp)
    bne        $a5, $v0, .L00017cd8
    addu       $t1,$a2,$a0
    ld         $t1,0($t1)
    ld         $t0,0($t0)
    and        $t0,$t0,$t1
    bnez       $t0, .L00017c50
    nop
.L00017cd8:
    lw         $t2,0($t2)
    sll        $a2,$s0,0x3
    bne        $t2, $v0, .L00017cfc
    addu       $a7,$a2,$a0
    ld         $t8,0($a7)
    ld         $t3,0($t3)
    and        $t3,$t3,$t8
    bnez       $t3, .L00017c50
    nop
.L00017cfc:
    bne        $a6, $v0, .L00017d2c
    nop
    ld         $t8,0($s3)
    beqz       $t8, .L00017d2c
    ld         $a1,0($sp)
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00017c90
    li         $v0,1
.L00017d2c:
    bne        $a5, $v0, .L00017d58
    lw         $a2,132($sp)
    ld         $a2,0($a2)
    beqz       $a2, .L00017d58
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($s2)
    jal        store_fpcsr
    nop
    b          .L00017c90
    li         $v0,1
.L00017d58:
    bne        $t2, $v0, .L00017d88
    nop
    ld         $a3,0($a3)
    beqz       $a3, .L00017d88
    lw         $a1,140($sp)
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00017c90
    li         $v0,1
.L00017d88:
    b          .L00017c90
    move       $v0,$zero
.L00017d90:
    addiu      $a1,$a1,0
    addu       $a1,$a2,$a1
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    b          .L00017c84
    nop

glabel _cvtsd_w
    addiu      $sp,$sp,-48
    sd         $s0,0($sp)
    move       $a3,$a1
    move       $s0,$a0
    sd         $s1,8($sp)
    move       $s1,$zero
    beqz       $a1, .L00017e34
    sd         $ra,16($sp)
    dsll32     $a3,$a1,0x0
    dsra32     $a3,$a3,0x0
    bltz       $a3, .L00017e24
    nop
    sd         $a3,40($sp)
.L00017de0:
    jal        renorm_d
    addiu      $a0,$sp,40
    sll        $a5,$s0,0x2
    addiu      $a4,$gp,0
    addu       $a4,$a4,$a5
    lw         $a4,0($a4)
    move       $a0,$s1
    move       $a3,$zero
    li         $a1,52
    ld         $a2,40($sp)
    jalr       $a4
    subu       $a1,$a1,$v0
    ld         $ra,16($sp)
.L00017e14:
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L00017e24:
    li         $s1,1
    dnegu      $a6,$a3
    b          .L00017de0
    sd         $a6,40($sp)
.L00017e34:
    sd         $a1,40($sp)
    jal        fpstore_sd
    move       $a1,$zero
    jal        store_fpcsr
    nop
    b          .L00017e14
    ld         $ra,16($sp)

glabel _nmsub_sd
    addiu      $sp,$sp,-144
    sd         $a3,136($sp)
    sd         $a2,128($sp)
    sd         $a1,120($sp)
    lw         $t1,-24556($zero)
    sd         $a0,96($sp)
    li         $t2,-5
    lbu        $t0,857($t1)
    addiu      $a1,$sp,120
    addiu      $a2,$sp,48
    sd         $ra,104($sp)
    addiu      $a3,$sp,52
    and        $t0,$t0,$t2
    sb         $t0,857($t1)
    addiu      $a4,$sp,56
    addiu      $v1,$sp,80
    sw         $v1,20($sp)
    addiu      $a5,$sp,128
    addiu      $v0,$sp,84
    sw         $v0,28($sp)
    addiu      $at,$sp,88
    addiu      $a6,$sp,136
    sw         $a6,12($sp)
    addiu      $a7,$sp,72
    addiu      $a6,$sp,64
    sw         $a7,4($sp)
    addiu      $a7,$sp,68
    jal        breakout_and_test3_sd
    sw         $at,36($sp)
    beqz       $v0, .L00017ed8
    ld         $a0,96($sp)
    ld         $ra,104($sp)
.L00017ed0:
    jr         $ra
    addiu      $sp,$sp,144
.L00017ed8:
    lw         $a7,80($sp)
    ld         $a6,72($sp)
    lw         $a5,68($sp)
    lw         $a4,64($sp)
    ld         $a3,56($sp)
    lw         $a2,52($sp)
    lw         $a1,48($sp)
    lw         $t0,84($sp)
    sw         $t0,4($sp)
    ld         $t3,88($sp)
    xori       $a1,$a1,0x1
    jal        madd
    sd         $t3,8($sp)
    b          .L00017ed0
    ld         $ra,104($sp)

glabel _cvtw_sd
    addiu      $sp,$sp,-64
    sd         $s0,24($sp)
    move       $s0,$a0
    sd         $a1,56($sp)
    addiu      $a1,$sp,56
    addiu      $a2,$sp,0
    addiu      $a3,$sp,4
    nop
    sd         $ra,32($sp)
    jal        breakout_sd
    addiu      $a4,$sp,8
    addiu      $a5,$gp,0
    sll        $a2,$s0,0x2
    addu       $a5,$a2,$a5
    lw         $a5,0($a5)
    lw         $a4,4($sp)
    sll        $a3,$s0,0x3
    addiu      $at,$a5,32
    lui        $t1,0x1
    slt        $at,$a4,$at
    lui        $t0,0x0
    ori        $t1,$t1,0x40
    ld         $a1,8($sp)
    bnez       $at, .L00017fb4
    addiu      $a7,$t0,0
    lw         $t0,-24556($zero)
    lw         $a7,844($t0)
    or         $a7,$a7,$t1
    sw         $a7,844($t0)
    lw         $a4,-24556($zero)
    lw         $a6,844($a4)
    andi       $a6,$a6,0x800
    beqz       $a6, .L00018078
    lui        $a0,0x7fff
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00018020
    ld         $ra,32($sp)
.L00017fb4:
    beqz       $a4, .L0001802c
    addu       $a6,$a7,$a3
    ld         $t2,0($a6)
    subu       $a4,$a4,$a5
    sw         $a4,4($sp)
    or         $t2,$t2,$a1
    sd         $t2,8($sp)
.L00017fd0:
    slti       $t3,$a4,-1
    addiu      $a2,$a4,12
    move       $a1,$zero
    beqz       $s0, .L00018068
    li         $a3,52
.L00017fe4:
    beqz       $t3, .L00017ffc
    subu       $a6,$a3,$a4
    sd         $zero,8($sp)
    li         $a2,1
    b          .L00018014
    dsll32     $a2,$a2,0x1e
.L00017ffc:
    li         $a5,-1
    beq        $a4, $a5, .L0001809c
    ld         $a1,8($sp)
    dsllv      $a2,$a1,$a2
    dsrlv      $a1,$a1,$a6
    sd         $a1,8($sp)
.L00018014:
    jal        round_w
    lw         $a0,0($sp)
    ld         $ra,32($sp)
.L00018020:
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0001802c:
    beqz       $a1, .L000180ac
    sd         $a2,16($sp)
    ld         $a3,16($sp)
    addiu      $a4,$gp,0
    addu       $a3,$a3,$a4
    lw         $a3,0($a3)
    jalr       $a3
    addiu      $a0,$sp,8
    ld         $a4,16($sp)
    addiu      $a5,$gp,0
    addu       $a4,$a4,$a5
    lw         $a4,0($a4)
    subu       $a4,$a4,$v0
    b          .L00017fd0
    sw         $a4,4($sp)
.L00018068:
    ld         $a6,8($sp)
    dsll       $a6,$a6,0x1d
    b          .L00017fe4
    sd         $a6,8($sp)
.L00018078:
    lbu        $a2,857($a4)
    ori        $a0,$a0,0xffff
    lbu        $a1,858($a4)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00018020
    ld         $ra,32($sp)
.L0001809c:
    dsll       $a2,$a1,0xb
    sd         $zero,8($sp)
    b          .L00018014
    move       $a1,$zero
.L000180ac:
    lw         $a1,-24556($zero)
    lbu        $a2,857($a1)
    move       $a0,$zero
    lbu        $a1,858($a1)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00018020
    ld         $ra,32($sp)

glabel _cvtl_sd
    addiu      $sp,$sp,-64
    sd         $s0,24($sp)
    move       $s0,$a0
    sd         $a1,56($sp)
    addiu      $a1,$sp,56
    addiu      $a2,$sp,0
    addiu      $a3,$sp,4
    nop
    sd         $ra,32($sp)
    jal        breakout_sd
    addiu      $a4,$sp,8
    lui        $at,0x0
    sll        $a7,$s0,0x3
    addiu      $at,$at,0
    ld         $v0,56($sp)
    addu       $at,$a7,$at
    ld         $at,0($at)
    lui        $a6,0x0
    addiu      $t0,$a6,0
    beq        $at, $v0, .L00018230
    addu       $a3,$a7,$t0
    addiu      $a5,$gp,0
    sll        $a2,$s0,0x2
    addu       $a5,$a2,$a5
    lw         $a5,0($a5)
    lw         $a4,4($sp)
    addiu      $v0,$a5,63
    slt        $v0,$a4,$v0
    bnez       $v0, .L00018190
    nop
    lw         $t0,-24556($zero)
    lui        $t1,0x1
    lw         $a7,844($t0)
    ori        $t1,$t1,0x40
    or         $a7,$a7,$t1
    sw         $a7,844($t0)
    lw         $a4,-24556($zero)
    lw         $a6,844($a4)
    andi       $a6,$a6,0x800
    beqz       $a6, .L000182a8
    li         $a0,-1
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L000181dc
    ld         $ra,32($sp)
.L00018190:
    beqz       $a4, .L0001825c
    ld         $a1,8($sp)
    ld         $t2,0($a3)
    subu       $a4,$a4,$a5
    sw         $a4,4($sp)
    or         $t2,$t2,$a1
    sd         $t2,8($sp)
.L000181ac:
    beqz       $s0, .L00018298
.L000181b0:
    move       $a1,$zero
    slti       $a5,$a4,-1
    slti       $a7,$a4,52
    li         $a3,52
    li         $a2,1
    beqz       $a5, .L000181e8
    dsll32     $a2,$a2,0x1e
    sd         $zero,8($sp)
.L000181d0:
    jal        round_l
    lw         $a0,0($sp)
    ld         $ra,32($sp)
.L000181dc:
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L000181e8:
    subu       $t0,$a3,$a4
    li         $a6,-1
    addiu      $a2,$a4,12
    beq        $a4, $a6, .L000182cc
    ld         $a1,8($sp)
    beqz       $a7, .L00018210
    dsllv      $a2,$a1,$a2
    dsrlv      $a1,$a1,$t0
    b          .L000181d0
    sd         $a1,8($sp)
.L00018210:
    beq        $a4, $a3, .L00018228
    move       $a2,$zero
    addiu      $a3,$a4,-52
    dsllv      $a1,$a1,$a3
    sd         $a1,8($sp)
    move       $a2,$zero
.L00018228:
    b          .L000181d0
    nop
.L00018230:
    lw         $a1,-24556($zero)
    li         $a0,-1
    lbu        $a2,857($a1)
    dsll32     $a0,$a0,0x1f
    lbu        $a1,858($a1)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L000181dc
    ld         $ra,32($sp)
.L0001825c:
    beqz       $a1, .L000182dc
    sd         $a2,16($sp)
    ld         $a1,16($sp)
    addiu      $a2,$gp,0
    addu       $a1,$a1,$a2
    lw         $a1,0($a1)
    jalr       $a1
    addiu      $a0,$sp,8
    ld         $a4,16($sp)
    addiu      $a5,$gp,0
    addu       $a4,$a4,$a5
    lw         $a4,0($a4)
    subu       $a4,$a4,$v0
    b          .L000181ac
    sw         $a4,4($sp)
.L00018298:
    ld         $a6,8($sp)
    dsll       $a6,$a6,0x1d
    b          .L000181b0
    sd         $a6,8($sp)
.L000182a8:
    lbu        $a2,857($a4)
    dsrl       $a0,$a0,0x1
    lbu        $a1,858($a4)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L000181dc
    ld         $ra,32($sp)
.L000182cc:
    dsll       $a2,$a1,0xb
    sd         $zero,8($sp)
    b          .L000181d0
    move       $a1,$zero
.L000182dc:
    lw         $a1,-24556($zero)
    lbu        $a2,857($a1)
    move       $a0,$zero
    lbu        $a1,858($a1)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L000181dc
    ld         $ra,32($sp)

glabel _comp_sd
    addiu      $t9,$gp,0
    sll        $a7,$a0,0x2
    addu       $t9,$a7,$t9
    addiu      $sp,$sp,-32
    addiu      $at,$gp,0
    lw         $t9,0($t9)
    sll        $t3,$a0,0x3
    addu       $at,$a7,$at
    lui        $t8,0x0
    lw         $at,0($at)
    dsrav      $t0,$a1,$t9
    addiu      $t8,$t8,0
    dsrav      $t9,$a2,$t9
    addu       $t8,$t3,$t8
    dsrav      $v0,$a1,$at
    addiu      $t1,$gp,0
    ld         $t8,0($t8)
    dsrav      $at,$a2,$at
    addu       $t1,$a7,$t1
    sll        $at,$at,0x0
    and        $t2,$t8,$a1
    sll        $t9,$t9,0x0
    lw         $t1,0($t1)
    and        $t8,$t8,$a2
    sll        $v0,$v0,0x0
    sll        $t0,$t0,0x0
    andi       $v0,$v0,0x1
    sd         $v0,8($sp)
    and        $t0,$t1,$t0
    and        $t1,$t1,$t9
    andi       $at,$at,0x1
    beqz       $a4, .L0001838c
    sd         $at,16($sp)
    addiu      $a4,$a4,1
.L0001838c:
    addiu      $t9,$gp,0
    addu       $t9,$a7,$t9
    lw         $a6,0($t9)
    lui        $at,0x0
    sd         $at,0($sp)
    bne        $a6, $t0, .L000183b0
    sd         $ra,24($sp)
    bnez       $t2, .L000183c8
    lui        $a7,0x80
.L000183b0:
    ld         $a5,8($sp)
    bne        $a6, $t1, .L00018478
    li         $a7,-1
    beqz       $t8, .L00018478
    nop
    lui        $a7,0x80
.L000183c8:
    lw         $a0,-24556($zero)
    andi       $ra,$a3,0x1
    lui        $a1,0x0
    sllv       $a7,$a7,$a4
    andi       $a2,$a3,0x8
    beqz       $ra, .L00018500
    lw         $a6,844($a0)
    or         $ra,$a6,$a7
    sw         $ra,844($a0)
.L000183ec:
    lw         $a6,0($t9)
    bne        $a6, $t0, .L0001840c
    addiu      $at,$a1,0
    addu       $at,$t3,$at
    ld         $at,0($at)
    and        $at,$at,$t2
    bnez       $at, .L00018434
    nop
.L0001840c:
    bne        $a6, $t1, .L0001842c
    lui        $v0,0x0
    addiu      $v0,$v0,0
    addu       $v0,$t3,$v0
    ld         $v0,0($v0)
    and        $v0,$v0,$t8
    bnez       $v0, .L00018434
    nop
.L0001842c:
    beqz       $a2, .L00018468
    nop
.L00018434:
    lw         $a1,-24556($zero)
    lui        $a2,0x1
    lw         $a0,844($a1)
    ori        $a2,$a2,0x40
    or         $a0,$a0,$a2
    sw         $a0,844($a1)
    lw         $v1,-24556($zero)
    lw         $v1,844($v1)
    andi       $v1,$v1,0x800
    beqz       $v1, .L00018468
    nop
    jal        post_sig
    li         $a0,8
.L00018468:
    jal        store_fpcsr
    nop
    b          .L000184dc
    ld         $ra,24($sp)
.L00018478:
    beqz       $a0, .L00018520
.L0001847c:
    lui        $t0,0x80
    beqz       $a5, .L00018498
    lw         $a0,-24556($zero)
    li         $a5,-1
    dsrl       $a5,$a5,0x1
    and        $a1,$a1,$a5
    dnegu      $a1,$a1
.L00018498:
    ld         $a6,16($sp)
    beqz       $a6, .L000184b4
    slt        $a6,$a1,$a2
    dsrl       $a5,$a7,0x1
    and        $a2,$a2,$a5
    dnegu      $a2,$a2
    slt        $a6,$a1,$a2
.L000184b4:
    sllv       $a7,$t0,$a4
    beqz       $a6, .L000184e4
    lw         $a6,844($a0)
    andi       $t0,$a3,0x4
    beqz       $t0, .L0001852c
    or         $a1,$a6,$a7
    sw         $a1,844($a0)
.L000184d0:
    jal        store_fpcsr
    nop
    ld         $ra,24($sp)
.L000184dc:
    jr         $ra
    addiu      $sp,$sp,32
.L000184e4:
    bne        $a1, $a2, .L00018510
    or         $a4,$a6,$a7
    andi       $t1,$a3,0x2
    beqz       $t1, .L0001853c
    nor        $v1,$a7,$zero
    b          .L000184d0
    sw         $a4,844($a0)
.L00018500:
    nor        $ra,$a7,$zero
    and        $ra,$a6,$ra
    b          .L000183ec
    sw         $ra,844($a0)
.L00018510:
    nor        $at,$a7,$zero
    and        $at,$a6,$at
    b          .L000184d0
    sw         $at,844($a0)
.L00018520:
    dsll32     $a2,$a2,0x0
    b          .L0001847c
    dsll32     $a1,$a1,0x0
.L0001852c:
    nor        $v0,$a7,$zero
    and        $v0,$a6,$v0
    b          .L000184d0
    sw         $v0,844($a0)
.L0001853c:
    and        $v1,$a6,$v1
    b          .L000184d0
    sw         $v1,844($a0)

glabel _nmadd_sd
    addiu      $sp,$sp,-144
    sd         $a3,136($sp)
    sd         $a2,128($sp)
    sd         $a1,120($sp)
    lw         $t1,-24556($zero)
    sd         $a0,96($sp)
    li         $t2,-5
    lbu        $t0,857($t1)
    addiu      $a1,$sp,120
    addiu      $a2,$sp,48
    sd         $ra,104($sp)
    addiu      $a3,$sp,52
    and        $t0,$t0,$t2
    sb         $t0,857($t1)
    addiu      $a4,$sp,56
    addiu      $v1,$sp,80
    sw         $v1,20($sp)
    addiu      $a5,$sp,128
    addiu      $v0,$sp,84
    sw         $v0,28($sp)
    addiu      $at,$sp,88
    addiu      $a6,$sp,136
    sw         $a6,12($sp)
    addiu      $a7,$sp,72
    addiu      $a6,$sp,64
    sw         $a7,4($sp)
    addiu      $a7,$sp,68
    jal        breakout_and_test3_sd
    sw         $at,36($sp)
    beqz       $v0, .L000185d0
    ld         $a0,96($sp)
    ld         $ra,104($sp)
.L000185c8:
    jr         $ra
    addiu      $sp,$sp,144
.L000185d0:
    ld         $a6,72($sp)
    lw         $a5,68($sp)
    lw         $a4,64($sp)
    ld         $a3,56($sp)
    lw         $a2,52($sp)
    lw         $a7,80($sp)
    lw         $a1,48($sp)
    lw         $t0,84($sp)
    sw         $t0,4($sp)
    ld         $t0,88($sp)
    xori       $a1,$a1,0x1
    sd         $t0,8($sp)
    jal        madd
    xori       $a7,$a7,0x1
    b          .L000185c8
    ld         $ra,104($sp)

glabel _madd_sd
    addiu      $sp,$sp,-144
    sd         $a3,136($sp)
    sd         $a2,128($sp)
    sd         $a1,120($sp)
    lw         $t1,-24556($zero)
    sd         $a0,96($sp)
    li         $t2,-5
    lbu        $t0,857($t1)
    addiu      $a1,$sp,120
    addiu      $a2,$sp,48
    sd         $ra,104($sp)
    addiu      $a3,$sp,52
    and        $t0,$t0,$t2
    sb         $t0,857($t1)
    addiu      $a4,$sp,56
    addiu      $v1,$sp,80
    sw         $v1,20($sp)
    addiu      $a5,$sp,128
    addiu      $v0,$sp,84
    sw         $v0,28($sp)
    addiu      $at,$sp,88
    addiu      $a6,$sp,136
    sw         $a6,12($sp)
    addiu      $a7,$sp,72
    addiu      $a6,$sp,64
    sw         $a7,4($sp)
    addiu      $a7,$sp,68
    jal        breakout_and_test3_sd
    sw         $at,36($sp)
    beqz       $v0, .L00018698
    ld         $a0,96($sp)
    ld         $ra,104($sp)
.L00018690:
    jr         $ra
    addiu      $sp,$sp,144
.L00018698:
    lw         $a7,80($sp)
    ld         $a6,72($sp)
    lw         $a5,68($sp)
    lw         $a4,64($sp)
    ld         $a3,56($sp)
    lw         $a2,52($sp)
    lw         $a1,48($sp)
    lw         $t8,84($sp)
    sw         $t8,4($sp)
    ld         $t3,88($sp)
    jal        madd
    sd         $t3,8($sp)
    b          .L00018690
    ld         $ra,104($sp)

glabel _sqrt_sd
    addiu      $sp,$sp,-64
    sd         $s0,16($sp)
    move       $s0,$a0
    addiu      $a4,$sp,8
    addiu      $a3,$sp,4
    addiu      $a2,$sp,0
    sd         $a1,56($sp)
    nop
    sd         $ra,24($sp)
    jal        breakout_and_test_sd
    addiu      $a1,$sp,56
    bnez       $v0, .L000187cc
    sd         $s1,32($sp)
    addiu      $at,$gp,0
    sll        $s1,$s0,0x2
    lw         $a1,4($sp)
    addu       $at,$s1,$at
    lw         $at,0($at)
    sll        $a2,$s0,0x3
    lui        $a6,0x0
    addiu      $a7,$gp,0
    addiu      $a5,$a6,0
    ld         $t1,8($sp)
    bne        $at, $a1, .L000187e0
    addu       $a3,$s1,$a7
    lw         $v0,0($sp)
    beqz       $v0, .L00018970
    move       $a0,$s0
    lw         $a1,-24556($zero)
    lui        $a2,0x1
    lw         $a0,844($a1)
    ori        $a2,$a2,0x40
    or         $a0,$a0,$a2
    sw         $a0,844($a1)
    lw         $v1,-24556($zero)
    lw         $v1,844($v1)
    andi       $v1,$v1,0x800
    beqz       $v1, .L000188c8
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L000187d0
    ld         $ra,24($sp)
.L00018784:
    dsrl       $a2,$a5,0x3
    dsrl       $a3,$a5,0x2
    beqz       $a6, .L000187a0
    dsll32     $a3,$a3,0x1f
    li         $a4,1
    dsll32     $a4,$a4,0x1e
    or         $a3,$a3,$a4
.L000187a0:
    bnez       $s0, .L000187bc
    addiu      $a4,$gp,0
    dsll       $a2,$a2,0x1d
    dsrl32     $a5,$a3,0x3
    dsll       $a3,$a3,0x1d
    or         $a2,$a5,$a2
    addiu      $a4,$gp,0
.L000187bc:
    addu       $a4,$s1,$a4
    lw         $a4,0($a4)
    jalr       $a4
    nop
.L000187cc:
    ld         $ra,24($sp)
.L000187d0:
    ld         $s1,32($sp)
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L000187e0:
    beqz       $a1, .L000188a4
.L000187e4:
    lw         $a0,0($sp)
    li         $t0,1
    beq        $a0, $t0, .L000188f0
    nop
    beqz       $a1, .L0001893c
    addu       $t0,$a5,$a2
    lw         $t2,0($a3)
    ld         $t0,0($t0)
    subu       $a1,$a1,$t2
    sw         $a1,4($sp)
    or         $t0,$t0,$t1
    sd         $t0,8($sp)
.L00018814:
    addiu      $t1,$gp,0
    addu       $t1,$s1,$t1
    andi       $t3,$a1,0x1
    sra        $a1,$a1,0x1
    lw         $t1,0($t1)
    move       $a2,$zero
    dsllv      $t0,$t0,$t3
    li         $t2,64
    dsrlv      $a6,$t0,$t1
    subu       $t2,$t2,$t1
    addiu      $t1,$t1,1
    sw         $a1,4($sp)
    li         $a5,1
    dsllv      $t0,$t0,$t2
    li         $t2,-4
    bltz       $t1, .L00018934
    sd         $t0,8($sp)
    b          .L000189b0
    addiu      $a2,$a2,1
.L00018860:
    dsll       $a3,$a7,0x2
    ori        $a5,$a5,0x4
.L00018868:
    dsrl32     $a6,$t0,0x1e
    slt        $a7,$t1,$a2
    addiu      $a2,$a2,1
    dsll       $t0,$t0,0x2
    sd         $t0,8($sp)
    bnez       $a7, .L00018784
    or         $a6,$a3,$a6
    dsubu      $a7,$a6,$a5
.L00018888:
    dsll       $t3,$a5,0x1
    and        $a5,$t2,$t3
    bgez       $a7, .L00018860
    ori        $a5,$a5,0x1
    dsll       $a3,$a6,0x2
    b          .L00018868
    nop
.L000188a4:
    ld         $t8,8($sp)
    bnez       $t8, .L000187e4
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,56($sp)
    jal        store_fpcsr
    nop
    b          .L000187d0
    ld         $ra,24($sp)
.L000188c8:
    sll        $a2,$s0,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L000187d0
    ld         $ra,24($sp)
.L000188f0:
    lw         $a4,-24556($zero)
    lui        $a5,0x1
    lw         $a3,844($a4)
    ori        $a5,$a5,0x40
    or         $a3,$a3,$a5
    sw         $a3,844($a4)
    lw         $a2,-24556($zero)
    lw         $a2,844($a2)
    andi       $a2,$a2,0x800
    beqz       $a2, .L00018988
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L000187d0
    ld         $ra,24($sp)
.L00018934:
    b          .L00018784
    li         $a5,1
.L0001893c:
    addiu      $a6,$gp,0
    addu       $a6,$s1,$a6
    lw         $a6,0($a6)
    jalr       $a6
    addiu      $a0,$sp,8
    addiu      $a1,$gp,0
    lw         $a0,0($sp)
    addu       $a1,$s1,$a1
    lw         $a1,0($a1)
    ld         $t0,8($sp)
    subu       $a1,$a1,$v0
    b          .L00018814
    sw         $a1,4($sp)
.L00018970:
    jal        fpstore_sd
    ld         $a1,56($sp)
    jal        store_fpcsr
    nop
    b          .L000187d0
    ld         $ra,24($sp)
.L00018988:
    sll        $a2,$s0,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L000187d0
    ld         $ra,24($sp)
.L000189b0:
    b          .L00018888
    dsubu      $a7,$a6,$a5

glabel _msub_sd
    addiu      $sp,$sp,-144
    sd         $a3,136($sp)
    sd         $a2,128($sp)
    sd         $a1,120($sp)
    lw         $t1,-24556($zero)
    sd         $a0,96($sp)
    li         $t2,-5
    lbu        $t0,857($t1)
    addiu      $a1,$sp,120
    addiu      $a2,$sp,48
    sd         $ra,104($sp)
    addiu      $a3,$sp,52
    and        $t0,$t0,$t2
    sb         $t0,857($t1)
    addiu      $a4,$sp,56
    addiu      $v1,$sp,80
    sw         $v1,20($sp)
    addiu      $a5,$sp,128
    addiu      $v0,$sp,84
    sw         $v0,28($sp)
    addiu      $at,$sp,88
    addiu      $a6,$sp,136
    sw         $a6,12($sp)
    addiu      $a7,$sp,72
    addiu      $a6,$sp,64
    sw         $a7,4($sp)
    addiu      $a7,$sp,68
    jal        breakout_and_test3_sd
    sw         $at,36($sp)
    beqz       $v0, .L00018a40
    ld         $a0,96($sp)
    ld         $ra,104($sp)
.L00018a38:
    jr         $ra
    addiu      $sp,$sp,144
.L00018a40:
    ld         $a6,72($sp)
    lw         $a5,68($sp)
    lw         $a4,64($sp)
    ld         $a3,56($sp)
    lw         $a2,52($sp)
    lw         $a1,48($sp)
    lw         $a7,80($sp)
    lw         $t0,84($sp)
    sw         $t0,4($sp)
    ld         $t3,88($sp)
    xori       $a7,$a7,0x1
    jal        madd
    sd         $t3,8($sp)
    b          .L00018a38
    ld         $ra,104($sp)

glabel _cvts_d
    addiu      $sp,$sp,-48
    sd         $a0,32($sp)
    li         $a0,1
    addiu      $a1,$sp,32
    addiu      $a2,$sp,0
    addiu      $a3,$sp,4
    sd         $ra,16($sp)
    jal        breakout_sd
    addiu      $a4,$sp,8
    lw         $a1,4($sp)
    li         $at,2047
    ld         $a2,8($sp)
    li         $a4,1
    beq        $a1, $at, .L00018ae4
    dsll32     $a0,$a4,0x14
    beqz       $a1, .L00018b3c
    addiu      $a1,$a1,-1023
    sw         $a1,4($sp)
    or         $a2,$a2,$a0
    sd         $a2,8($sp)
.L00018acc:
    lw         $a0,0($sp)
    jal        round_s
    move       $a3,$zero
    ld         $ra,16($sp)
.L00018adc:
    jr         $ra
    addiu      $sp,$sp,48
.L00018ae4:
    li         $v0,1
    dsll32     $v0,$v0,0x13
    and        $v0,$a2,$v0
    beqz       $v0, .L00018b60
    nop
    lw         $a1,-24556($zero)
    lui        $a2,0x1
    lw         $a0,844($a1)
    ori        $a2,$a2,0x40
    or         $a0,$a0,$a2
    sw         $a0,844($a1)
    lw         $a4,-24556($zero)
    lw         $v1,844($a4)
    andi       $v1,$v1,0x800
    beqz       $v1, .L00018bac
    lui        $a0,0x7fbf
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00018adc
    ld         $ra,16($sp)
.L00018b3c:
    beqz       $a2, .L00018bd0
    nop
    jal        renorm_d
    addiu      $a0,$sp,8
    ld         $a2,8($sp)
    li         $a1,-1022
    subu       $a1,$a1,$v0
    b          .L00018acc
    sw         $a1,4($sp)
.L00018b60:
    beqz       $a2, .L00018c08
    lwu        $a0,0($sp)
    dsrl       $a2,$a2,0x1d
    beqz       $a2, .L00018bfc
    sd         $a2,8($sp)
    lui        $a1,0x7f80
    lwu        $a0,0($sp)
    dsll       $a0,$a0,0x1f
    or         $a0,$a2,$a0
    or         $a0,$a0,$a1
.L00018b88:
    lw         $a1,-24556($zero)
    lbu        $a2,857($a1)
    lbu        $a1,858($a1)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00018adc
    ld         $ra,16($sp)
.L00018bac:
    lbu        $a2,857($a4)
    ori        $a0,$a0,0xffff
    lbu        $a1,858($a4)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00018adc
    ld         $ra,16($sp)
.L00018bd0:
    lw         $a1,-24556($zero)
    lwu        $a0,0($sp)
    lbu        $a2,857($a1)
    dsll       $a0,$a0,0x1f
    lbu        $a1,858($a1)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00018adc
    ld         $ra,16($sp)
.L00018bfc:
    lui        $a0,0x7fbf
    b          .L00018b88
    ori        $a0,$a0,0xffff
.L00018c08:
    lw         $a1,-24556($zero)
    dsll       $a0,$a0,0x1f
    lui        $a3,0x7f80
    lbu        $a2,857($a1)
    or         $a0,$a0,$a3
    lbu        $a1,858($a1)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L00018adc
    ld         $ra,16($sp)

glabel checkfp
    addiu      $sp,$sp,-48
    sd         $ra,32($sp)
    sd         $a0,16($sp)
    jal        splhi
    sd         $a1,24($sp)
    sd         $v0,8($sp)
    lw         $v0,-24056($zero)
    ld         $a0,16($sp)
    ld         $a1,24($sp)
    beqz       $v0, .L00018e20
    nop
    bne        $a0, $v0, .L00018e20
    li         $at,1
    beq        $a1, $at, .L00018df4
    nop
    lw         $t0,508($a0)
    lw         $a3,640($a0)
    lb         $t0,92($t0)
    andi       $t0,$t0,0xc
    beqz       $t0, .L00018c90
    nop
    lui        $t0,0x400
.L00018c90:
    mfc0       $v1,c0_sr
    lui        $at,0x2000
    or         $v0,$v1,$at
    or         $v0,$v0,$t0
    mtc0       $v0,c0_sr
    li         $at,2
    beq        $a1, $at, .L00018cd0
    nop
    cfc1       $v0,c1_fcsr
    sw         $v0,304($a3)
.L00018cd0:
    bnez       $t0, .L00018d5c
    nop
    swc1       $f31,292($a3)
    swc1       $f30,284($a3)
    swc1       $f29,276($a3)
    swc1       $f28,268($a3)
    swc1       $f27,260($a3)
    swc1       $f26,252($a3)
    swc1       $f25,244($a3)
    swc1       $f24,236($a3)
    swc1       $f23,228($a3)
    swc1       $f22,220($a3)
    swc1       $f21,212($a3)
    swc1       $f20,204($a3)
    swc1       $f19,196($a3)
    swc1       $f18,188($a3)
    swc1       $f17,180($a3)
    swc1       $f16,172($a3)
    swc1       $f15,164($a3)
    swc1       $f14,156($a3)
    swc1       $f13,148($a3)
    swc1       $f12,140($a3)
    swc1       $f11,132($a3)
    swc1       $f10,124($a3)
    swc1       $f9,116($a3)
    swc1       $f8,108($a3)
    swc1       $f7,100($a3)
    swc1       $f6,92($a3)
    swc1       $f5,84($a3)
    swc1       $f4,76($a3)
    swc1       $f3,68($a3)
    swc1       $f2,60($a3)
    swc1       $f1,52($a3)
    b          .L00018ddc
    swc1       $f0,44($a3)
.L00018d5c:
    sdc1       $f31,288($a3)
    sdc1       $f30,280($a3)
    sdc1       $f29,272($a3)
    sdc1       $f28,264($a3)
    sdc1       $f27,256($a3)
    sdc1       $f26,248($a3)
    sdc1       $f25,240($a3)
    sdc1       $f24,232($a3)
    sdc1       $f23,224($a3)
    sdc1       $f22,216($a3)
    sdc1       $f21,208($a3)
    sdc1       $f20,200($a3)
    sdc1       $f19,192($a3)
    sdc1       $f18,184($a3)
    sdc1       $f17,176($a3)
    sdc1       $f16,168($a3)
    sdc1       $f15,160($a3)
    sdc1       $f14,152($a3)
    sdc1       $f13,144($a3)
    sdc1       $f12,136($a3)
    sdc1       $f11,128($a3)
    sdc1       $f10,120($a3)
    sdc1       $f9,112($a3)
    sdc1       $f8,104($a3)
    sdc1       $f7,96($a3)
    sdc1       $f6,88($a3)
    sdc1       $f5,80($a3)
    sdc1       $f4,72($a3)
    sdc1       $f3,64($a3)
    sdc1       $f2,56($a3)
    sdc1       $f1,48($a3)
    sdc1       $f0,40($a3)
.L00018ddc:
    ctc1       $zero,c1_fcsr
    mtc0       $v1,c0_sr
.L00018df4:
    lw         $t1,-24556($zero)
    sw         $zero,-24056($zero)
    beqz       $t1, .L00018e20
    nop
    lw         $t1,640($t1)
    lui        $at,0xdfff
    ori        $at,$at,0xffff
    ld         $a1,584($t1)
    addiu      $t1,$t1,336
    and        $a1,$a1,$at
    sd         $a1,248($t1)
.L00018e20:
    jal        splx
    ld         $a0,8($sp)
    ld         $ra,32($sp)
    addiu      $sp,$sp,48
    jr         $ra
    nop

glabel fpunit_fpstore_s
    sll        $v0,$a1,0x2
    lui        $at,0x0
    addu       $at,$at,$v0
    lw         $v0,9328($at)
    jr         $v0
    nop
    mtc1       $a0,$f0
    jr         $ra
    nop
    mtc1       $a0,$f1
    jr         $ra
    nop
    mtc1       $a0,$f2
    jr         $ra
    nop
    mtc1       $a0,$f3
    jr         $ra
    nop
    mtc1       $a0,$f4
    jr         $ra
    nop
    mtc1       $a0,$f5
    jr         $ra
    nop
    mtc1       $a0,$f6
    jr         $ra
    nop
    mtc1       $a0,$f7
    jr         $ra
    nop
    mtc1       $a0,$f8
    jr         $ra
    nop
    mtc1       $a0,$f9
    jr         $ra
    nop
    mtc1       $a0,$f10
    jr         $ra
    nop
    mtc1       $a0,$f11
    jr         $ra
    nop
    mtc1       $a0,$f12
    jr         $ra
    nop
    mtc1       $a0,$f13
    jr         $ra
    nop
    mtc1       $a0,$f14
    jr         $ra
    nop
    mtc1       $a0,$f15
    jr         $ra
    nop
    mtc1       $a0,$f16
    jr         $ra
    nop
    mtc1       $a0,$f17
    jr         $ra
    nop
    mtc1       $a0,$f18
    jr         $ra
    nop
    mtc1       $a0,$f19
    jr         $ra
    nop
    mtc1       $a0,$f20
    jr         $ra
    nop
    mtc1       $a0,$f21
    jr         $ra
    nop
    mtc1       $a0,$f22
    jr         $ra
    nop
    mtc1       $a0,$f23
    jr         $ra
    nop
    mtc1       $a0,$f24
    jr         $ra
    nop
    mtc1       $a0,$f25
    jr         $ra
    nop
    mtc1       $a0,$f26
    jr         $ra
    nop
    mtc1       $a0,$f27
    jr         $ra
    nop
    mtc1       $a0,$f28
    jr         $ra
    nop
    mtc1       $a0,$f29
    jr         $ra
    nop
    mtc1       $a0,$f30
    jr         $ra
    nop
    mtc1       $a0,$f31
    jr         $ra
    nop

glabel fpunit_fpstore_d
    bnez       $a2, .L00018ff0
    sll        $v0,$a1,0x2
    srl        $v0,$v0,0x1
    lui        $at,0x0
    addu       $at,$at,$v0
    lw         $v0,9456($at)
    jr         $v0
    nop
.L00018ff0:
    lui        $at,0x0
    addu       $at,$at,$v0
    lw         $v0,9520($at)
    jr         $v0
    nop
    mtc1       $a0,$f0
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f1
    jr         $ra
    nop
    mtc1       $a0,$f2
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f3
    jr         $ra
    nop
    mtc1       $a0,$f4
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f5
    jr         $ra
    nop
    mtc1       $a0,$f6
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f7
    jr         $ra
    nop
    mtc1       $a0,$f8
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f9
    jr         $ra
    nop
    mtc1       $a0,$f10
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f11
    jr         $ra
    nop
    mtc1       $a0,$f12
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f13
    jr         $ra
    nop
    mtc1       $a0,$f14
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f15
    jr         $ra
    nop
    mtc1       $a0,$f16
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f17
    jr         $ra
    nop
    mtc1       $a0,$f18
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f19
    jr         $ra
    nop
    mtc1       $a0,$f20
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f21
    jr         $ra
    nop
    mtc1       $a0,$f22
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f23
    jr         $ra
    nop
    mtc1       $a0,$f24
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f25
    jr         $ra
    nop
    mtc1       $a0,$f26
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f27
    jr         $ra
    nop
    mtc1       $a0,$f28
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f29
    jr         $ra
    nop
    mtc1       $a0,$f30
    dsrl32     $a0,$a0,0x0
    mtc1       $a0,$f31
    jr         $ra
    nop
    dmtc1      $a0,$f0
    jr         $ra
    nop
    dmtc1      $a0,$f1
    jr         $ra
    nop
    dmtc1      $a0,$f2
    jr         $ra
    nop
    dmtc1      $a0,$f3
    jr         $ra
    nop
    dmtc1      $a0,$f4
    jr         $ra
    nop
    dmtc1      $a0,$f5
    jr         $ra
    nop
    dmtc1      $a0,$f6
    jr         $ra
    nop
    dmtc1      $a0,$f7
    jr         $ra
    nop
    dmtc1      $a0,$f8
    jr         $ra
    nop
    dmtc1      $a0,$f9
    jr         $ra
    nop
    dmtc1      $a0,$f10
    jr         $ra
    nop
    dmtc1      $a0,$f11
    jr         $ra
    nop
    dmtc1      $a0,$f12
    jr         $ra
    nop
    dmtc1      $a0,$f13
    jr         $ra
    nop
    dmtc1      $a0,$f14
    jr         $ra
    nop
    dmtc1      $a0,$f15
    jr         $ra
    nop
    dmtc1      $a0,$f16
    jr         $ra
    nop
    dmtc1      $a0,$f17
    jr         $ra
    nop
    dmtc1      $a0,$f18
    jr         $ra
    nop
    dmtc1      $a0,$f19
    jr         $ra
    nop
    dmtc1      $a0,$f20
    jr         $ra
    nop
    dmtc1      $a0,$f21
    jr         $ra
    nop
    dmtc1      $a0,$f22
    jr         $ra
    nop
    dmtc1      $a0,$f23
    jr         $ra
    nop
    dmtc1      $a0,$f24
    jr         $ra
    nop
    dmtc1      $a0,$f25
    jr         $ra
    nop
    dmtc1      $a0,$f26
    jr         $ra
    nop
    dmtc1      $a0,$f27
    jr         $ra
    nop
    dmtc1      $a0,$f28
    jr         $ra
    nop
    dmtc1      $a0,$f29
    jr         $ra
    nop
    dmtc1      $a0,$f30
    jr         $ra
    nop
    dmtc1      $a0,$f31
    jr         $ra
    nop

glabel longway
    lb         $k0,-24513($zero)
    beqz       $k0, .L000193b4
    addi       $k0,$k0,-1
    beqz       $k0, .L0001935c
    addi       $k0,$k0,-1
    bnez       $k0, .L00019304
    addiu      $k0,$sp,-360
    ori        $k0,$k0,0x7
    xori       $k0,$k0,0x7
    sd         $sp,224($k0)
    sd         $k1,208($k0)
    sd         $gp,216($k0)
    move       $sp,$k0
    move       $k1,$k0
    j          ecommon
    li         $k0,256
.L00019304:
    addiu      $k0,$sp,-360
    ori        $k0,$k0,0x7
    xori       $k0,$k0,0x7
    sd         $sp,224($k0)
    sd         $k1,208($k0)
    sd         $gp,216($k0)
    move       $sp,$k0
    move       $k1,$k0
    j          ecommon
    li         $k0,256
    move       $a3,$sp
    lw         $sp,-24156($zero)
    mfc0       $a0,c0_sr
    li         $at,-4
    and        $a0,$a0,$at
    mtc0       $a0,c0_sr
    nop
    mfc0       $a0,c0_epc
    mfc0       $a1,c0_cause
    move       $a2,$k1
    jal        idle_err
    nop
.L0001935c:
    lui        $k0,0x0
    addiu      $k0,$k0,0
    lw         $k0,0($k0)
    bnez       $k0, .L0001938c
    nop
    lw         $k0,-24552($zero)
    beqz       $k0, .L0001938c
    nop
    lw         $k0,180($k0)
    sltu       $at,$k0,$sp
    beqz       $at, .L0001942c
    nop
.L0001938c:
    addiu      $k0,$sp,-360
    ori        $k0,$k0,0x7
    xori       $k0,$k0,0x7
    sd         $sp,224($k0)
    sd         $k1,208($k0)
    sd         $gp,216($k0)
    move       $sp,$k0
    move       $k1,$k0
    j          ecommon
    li         $k0,256
.L000193b4:
    li         $k0,-16384
    mfc0       $at,c0_entryhi
    mtc0       $k0,c0_entryhi
    li         $k0,3
    mtc0       $k0,c0_index
    li         $k0,1
    mtc0       $k0,c0_entrylo1
    lw         $k0,-23996($zero)
    nop
    sll        $k0,$k0,0x6
    srl        $k0,$k0,0x6
    mtc0       $k0,c0_entrylo0
    andi       $k0,$k0,0x2
    nop
    tlbwi
    beqz       $k0, .L000194e8
    mtc0       $at,c0_entryhi
    lw         $k0,-24556($zero)
    lw         $k0,640($k0)
    addiu      $k0,$k0,336
    sd         $k1,208($k0)
    move       $k1,$k0
    sd         $gp,216($k1)
    sd         $sp,224($k1)
    lui        $gp,0x0
    li         $k0,1
    addiu      $gp,$gp,0
    sb         $k0,-24513($zero)
    j          ecommon
    li         $sp,-12432

glabel stkovflw
.L0001942c:
    lui        $a0,0x0
    b          .L00019468
    addiu      $a0,$a0,10752

glabel stkundflw
    lui        $a0,0x0
    b          .L00019468
    addiu      $a0,$a0,10808

glabel stkscr1
    lui        $a0,0x0
    b          .L00019468
    addiu      $a0,$a0,10865

glabel stkscr2
    lui        $a0,0x0
    b          .L00019468
    addiu      $a0,$a0,10930

glabel stkscr3
    lui        $a0,0x0
    b          .L00019468
    addiu      $a0,$a0,10995
.L00019468:
    lui        $at,0x0
    addiu      $at,$at,0
    sw         $sp,0($at)
    mfc0       $a1,c0_epc
    move       $a2,$sp
    move       $s0,$ra
    lb         $s1,-24513($zero)
    li         $k0,3
    move       $a3,$k1
    sb         $k0,-24513($zero)
    jal        printf
    lw         $sp,-24156($zero)
    lui        $a0,0x0
    addiu      $a0,$a0,11060
    move       $a1,$s0
    jal        printf
    move       $a2,$s1
    li         $a0,24
    sw         $a0,-23840($zero)
    ld         $a0,-23880($a0)
    lui        $k0,0xb400
    ori        $k0,$k0,0x18
    sd         $a0,0($k0)
    mfc0       $a0,c0_sr
    lui        $k0,0x1
    ori        $k0,$k0,0x4
    and        $a0,$k0,$a0
    ori        $a0,$a0,0x1
    mtc0       $a0,c0_sr
    lui        $a0,0x0
    jal        panic
    addiu      $a0,$a0,11080
.L000194e8:
    j          _baduk
    nop

glabel _cvtd_s
    addiu      $sp,$sp,-48
    addiu      $a1,$sp,32
    addiu      $a2,$sp,0
    addiu      $a3,$sp,4
    addiu      $a4,$sp,8
    sd         $a0,32($sp)
    sd         $ra,16($sp)
    jal        breakout_sd
    move       $a0,$zero
    lw         $a4,4($sp)
    li         $at,255
    beq        $a4, $at, .L00019574
    ld         $a5,8($sp)
    beqz       $a4, .L000195c0
    addiu      $a4,$a4,-127
    sw         $a4,4($sp)
.L00019530:
    lw         $a1,-24556($zero)
    dsll       $a5,$a5,0x1d
    addiu      $a3,$a4,1023
    lw         $a0,0($sp)
    dsll32     $a3,$a3,0x14
    lbu        $a2,857($a1)
    dsll32     $a0,$a0,0x1f
    or         $a0,$a0,$a5
    andi       $a2,$a2,0x20
    lbu        $a1,858($a1)
    jal        fpstore_d
    or         $a0,$a0,$a3
    jal        store_fpcsr
    nop
    ld         $ra,16($sp)
.L0001956c:
    jr         $ra
    addiu      $sp,$sp,48
.L00019574:
    dsll32     $a4,$a5,0x9
    lw         $a3,-24556($zero)
    bgez       $a4, .L000195f4
    lui        $a1,0x1
    lw         $a6,844($a3)
    ori        $a7,$a1,0x40
    or         $a6,$a6,$a7
    sw         $a6,844($a3)
    lw         $a4,-24556($zero)
    lw         $a5,844($a4)
    andi       $a5,$a5,0x800
    beqz       $a5, .L00019634
    nop
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001956c
    ld         $ra,16($sp)
.L000195c0:
    beqz       $a5, .L00019658
    nop
    jal        renorm_s
    addiu      $a0,$sp,8
    li         $a4,-126
    ld         $a5,8($sp)
    lui        $a6,0x80
    subu       $a4,$a4,$v0
    sw         $a4,4($sp)
    nor        $a6,$a6,$zero
    and        $a5,$a5,$a6
    b          .L00019530
    sd         $a5,8($sp)
.L000195f4:
    li         $a4,2047
    lbu        $a2,857($a3)
    dsll32     $a4,$a4,0x14
    lw         $a6,0($sp)
    lbu        $a1,858($a3)
    andi       $a2,$a2,0x20
    beqz       $a5, .L00019684
    dsll32     $a6,$a6,0x1f
    dsll       $a0,$a5,0x1d
    or         $a0,$a6,$a0
    jal        fpstore_d
    or         $a0,$a4,$a0
    jal        store_fpcsr
    nop
    b          .L0001956c
    ld         $ra,16($sp)
.L00019634:
    lbu        $a2,857($a4)
    lbu        $a1,858($a4)
    ld         $a0,-32744($gp)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L0001956c
    ld         $ra,16($sp)
.L00019658:
    lw         $a1,-24556($zero)
    lw         $a0,0($sp)
    lbu        $a2,857($a1)
    dsll32     $a0,$a0,0x1f
    lbu        $a1,858($a1)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    nop
    b          .L0001956c
    ld         $ra,16($sp)
.L00019684:
    jal        fpstore_d
    or         $a0,$a6,$a4
    jal        store_fpcsr
    nop
    b          .L0001956c
    ld         $ra,16($sp)

glabel round_w
    sll        $a6,$a0,0x3
    li         $at,-1
    li         $a4,-1
    dsrl       $at,$at,0x1
    li         $a7,1
    and        $at,$a2,$at
    andi       $t0,$a1,0x1
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    move       $s0,$a1
    beqz       $at, .L000196dc
    sll        $a5,$t0,0x2
    dsll32     $a3,$a7,0x1e
    dsll32     $t1,$a4,0x1f
    and        $a2,$a2,$t1
    or         $a2,$a2,$a3
.L000196dc:
    addu       $t2,$a6,$a5
    lw         $a4,-24556($zero)
    lui        $t3,0x0
    dsrl32     $t9,$a2,0x1f
    addiu      $t3,$t3,0
    dsrl32     $at,$a2,0x1e
    lbu        $t8,856($a4)
    andi       $at,$at,0x1
    addu       $t9,$t9,$t9
    addu       $t9,$t9,$at
    sll        $t8,$t8,0x4
    addu       $t2,$t2,$t9
    addu       $t3,$t3,$t8
    addu       $t2,$t2,$t3
    lui        $a1,0x7fff
    lb         $t2,0($t2)
    lui        $a7,0x8000
    ori        $a5,$a1,0xffff
    beqz       $a0, .L00019730
    daddu      $s0,$t2,$s0
    dnegu      $s0,$s0
.L00019730:
    slt        $at,$s0,$a7
    slt        $a5,$a5,$s0
    lui        $a0,0x1
    sd         $ra,8($sp)
    bnez       $at, .L00019750
    ori        $t0,$a0,0x40
    beqz       $a5, .L0001978c
    nop
.L00019750:
    lw         $a7,844($a4)
    or         $a7,$a7,$t0
    sw         $a7,844($a4)
    lw         $a4,-24556($zero)
    lw         $a6,844($a4)
    andi       $a6,$a6,0x800
    beqz       $a6, .L000197e4
    lui        $a0,0x7fff
    jal        post_sig
    li         $a0,8
.L00019778:
    jal        store_fpcsr
    ld         $s0,0($sp)
    ld         $ra,8($sp)
.L00019784:
    jr         $ra
    addiu      $sp,$sp,16
.L0001978c:
    beqz       $a2, .L000197c0
    nop
    lw         $t2,844($a4)
    ori        $t2,$t2,0x1004
    sw         $t2,844($a4)
    lw         $a4,-24556($zero)
    lw         $t1,844($a4)
    andi       $t1,$t1,0x80
    beqz       $t1, .L000197c0
    nop
    jal        post_sig
    li         $a0,8
    lw         $a4,-24556($zero)
.L000197c0:
    lbu        $a2,857($a4)
    move       $a0,$s0
    lbu        $a1,858($a4)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    ld         $s0,0($sp)
    b          .L00019784
    ld         $ra,8($sp)
.L000197e4:
    lbu        $a2,857($a4)
    ori        $a0,$a0,0xffff
    lbu        $a1,858($a4)
    jal        fpstore_s
    andi       $a2,$a2,0x20
    b          .L00019778
    nop

glabel round_s
    addiu      $sp,$sp,-112
    sd         $s0,8($sp)
    sd         $s2,0($sp)
    li         $a6,-1
    move       $s2,$a0
    sd         $s3,16($sp)
    dsrl       $a6,$a6,0x1
    move       $s3,$a1
    sd         $s7,32($sp)
    and        $at,$a6,$a3
    move       $s7,$a1
    move       $s0,$a2
    sd         $s1,24($sp)
    move       $s1,$a3
    beqz       $at, .L00019858
    sd         $s8,48($sp)
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$a3,$t9
    or         $s1,$s1,$t8
.L00019858:
    dsll32     $t8,$s0,0x3
    dsrl       $s1,$s1,0x1d
    or         $s1,$s1,$t8
    and        $at,$a6,$s1
    dsrl       $s8,$s0,0x1d
    beqz       $at, .L0001988c
    sd         $s4,64($sp)
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L0001988c:
    sd         $s6,40($sp)
    sd         $ra,56($sp)
    lw         $a5,-24556($zero)
    slti       $at,$s3,-150
    li         $a3,-127
    sd         $s5,72($sp)
    move       $s4,$s1
    beqz       $at, .L00019a1c
    lbu        $a1,856($a5)
    lbu        $v0,857($a5)
    andi       $v0,$v0,0x2
    beqz       $v0, .L00019d7c
    sll        $s5,$s2,0x3
    sll        $s5,$s2,0x3
.L000198c4:
    sll        $v1,$a1,0x4
    lui        $a0,0x0
    addu       $v1,$s5,$v1
    addiu      $a0,$a0,0
    addu       $v1,$v1,$a0
    lb         $v1,0($v1)
    beqz       $v1, .L00019d74
    lui        $s0,0x80
.L000198e4:
    lw         $a2,844($a5)
    ori        $a2,$a2,0x2008
    sw         $a2,844($a5)
    lw         $a5,-24556($zero)
    lw         $a0,844($a5)
    andi       $a1,$a0,0x100
    beqz       $a1, .L00019ab8
    ori        $t1,$a0,0x1004
    jal        post_sig
    li         $a0,8
    andi       $a6,$s8,0x1
    sll        $a6,$a6,0x2
    dsrl32     $t1,$s4,0x1f
    lw         $a5,-24556($zero)
    addu       $a6,$s5,$a6
    dsrl32     $t2,$s4,0x1e
    addu       $t1,$t1,$t1
    andi       $t2,$t2,0x1
    lbu        $t0,856($a5)
    addu       $t1,$t1,$t2
    lui        $a7,0x0
    addiu      $a7,$a7,0
    sll        $t0,$t0,0x4
    addu       $a6,$a6,$t1
    addu       $a7,$a7,$t0
    addu       $a6,$a6,$a7
    lb         $a6,0($a6)
    dsll32     $a6,$a6,0x0
    dsrl32     $a6,$a6,0x0
    daddu      $a6,$a6,$s8
    dsll32     $a3,$a6,0x7
    addiu      $a0,$s3,192
    bgez       $a3, .L00019974
    move       $a7,$a0
    addiu      $a7,$s3,193
    dsrl       $a6,$a6,0x1
.L00019974:
    beqz       $s4, .L0001998c
    nop
    lw         $t0,844($a5)
    ori        $t0,$t0,0x1004
    sw         $t0,844($a5)
    lw         $a5,-24556($zero)
.L0001998c:
    lbu        $a3,857($a5)
    andi       $t1,$a3,0x4
    beqz       $t1, .L000199e4
    andi       $a2,$a3,0x20
    dsll32     $a0,$s2,0x0
    lui        $a4,0x80
    addiu      $a3,$a7,127
    nor        $a4,$a4,$zero
    dsll       $a3,$a3,0x17
    and        $a4,$a6,$a4
    dsrl       $a0,$a0,0x1
    or         $a3,$a3,$a4
    lbu        $a1,858($a5)
    jal        fpstore_s
    or         $a0,$a0,$a3
    lw         $a6,-24556($zero)
    sll        $a5,$s2,0x1f
    dsll32     $a5,$a5,0x0
    lw         $a6,640($a6)
    dsrl32     $a5,$a5,0x0
    or         $a5,$a5,$s0
    sd         $a5,296($a6)
.L000199e4:
    jal        store_fpcsr
    nop
    ld         $s2,0($sp)
.L000199f0:
    ld         $s6,40($sp)
    ld         $s8,48($sp)
    ld         $s4,64($sp)
    ld         $s0,8($sp)
    ld         $s3,16($sp)
    ld         $ra,56($sp)
    ld         $s1,24($sp)
    ld         $s5,72($sp)
    ld         $s7,32($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L00019a1c:
    slti       $a2,$s3,-126
    beqz       $a2, .L00019b20
    addiu      $t8,$s3,190
    li         $s1,-126
    lbu        $a3,857($a5)
    dsllv      $t8,$s8,$t8
    subu       $s1,$s1,$s3
    dsrlv      $s0,$s8,$s1
    andi       $t9,$a3,0x2
    dsrlv      $s1,$s4,$s1
    beqz       $t9, .L00019eb0
    or         $s1,$s1,$t8
    lui        $t8,0x7f
    ori        $t8,$t8,0xffff
    sltu       $t8,$s0,$t8
    bnez       $t8, .L000198c4
    sll        $s5,$s2,0x3
    dsll       $a4,$s1,0x2
    sll        $a2,$a1,0x4
    lui        $a6,0x0
    addiu      $a6,$a6,0
    dsrl32     $a7,$s1,0x1e
    dsrl32     $a0,$s1,0x1f
    andi       $a7,$a7,0x1
    sll        $a3,$a0,0x2
    addu       $a7,$a7,$a7
    sll        $s5,$s2,0x3
    addu       $a3,$a3,$a7
    addu       $a2,$a2,$a6
    addu       $a3,$s5,$a3
    beqz       $a4, .L00019f58
    addu       $a2,$a2,$a3
    lb         $a7,1($a2)
    beqz       $a7, .L00019fe0
    nop
    beqz       $a0, .L00019ff0
    lui        $s0,0x80
.L00019ab0:
    lw         $a0,844($a5)
    ori        $t1,$a0,0x1004
.L00019ab8:
    sw         $t1,844($a5)
    lw         $a5,-24556($zero)
    lw         $t0,844($a5)
    andi       $t0,$t0,0x80
    beqz       $t0, .L00019adc
    nop
    jal        post_sig
    li         $a0,8
    lw         $a5,-24556($zero)
.L00019adc:
    lbu        $a3,857($a5)
    andi       $t2,$a3,0x4
    bnez       $t2, .L00019af8
    sll        $a0,$s2,0x1f
    andi       $t3,$a3,0x8
    bnez       $t3, .L00019b10
    sll        $a0,$s2,0x1f
.L00019af8:
    dsll32     $a0,$a0,0x0
    andi       $a2,$a3,0x20
    dsrl32     $a0,$a0,0x0
    lbu        $a1,858($a5)
    jal        fpstore_s
    or         $a0,$a0,$s0
.L00019b10:
    jal        store_fpcsr
    nop
    b          .L000199f0
    ld         $s2,0($sp)
.L00019b20:
    beqz       $s1, .L00019f3c
    li         $a0,1
.L00019b28:
    and        $a4,$a6,$s4
    beqz       $a4, .L00019b50
    sll        $s0,$a1,0x4
    li         $s1,-1
    dsll32     $s1,$s1,0x1f
    li         $t8,1
    and        $s1,$s4,$s1
    dsll32     $t8,$t8,0x1e
    or         $s1,$s1,$t8
    sll        $s0,$a1,0x4
.L00019b50:
    sll        $s5,$s2,0x3
    andi       $t8,$s8,0x1
    sll        $t8,$t8,0x2
    lui        $a6,0x0
    dsrl32     $t9,$s1,0x1f
    addiu      $a6,$a6,0
    dsrl32     $ra,$s1,0x1e
    addu       $t9,$t9,$t9
    andi       $ra,$ra,0x1
    addu       $t8,$s5,$t8
    addu       $t9,$t9,$ra
    addu       $s0,$a6,$s0
    addu       $t8,$t8,$t9
    addu       $s0,$s0,$t8
    lb         $s0,0($s0)
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    beq        $s3, $a3, .L00019f44
    daddu      $s0,$s0,$s8
    dsll32     $t9,$s0,0x7
.L00019ba0:
    bgez       $t9, .L00019bb8
    li         $a3,127
    addiu      $s7,$s3,1
    dsrl       $s0,$s0,0x1
    slti       $a2,$s7,-126
.L00019bb4:
    li         $a3,127
.L00019bb8:
    beqz       $a2, .L00019e64
    slt        $a3,$a3,$s7
    beqz       $a3, .L00019c7c
    nop
.L00019bc8:
    lw         $t8,844($a5)
    ori        $t8,$t8,0x4010
    sw         $t8,844($a5)
    lw         $a5,-24556($zero)
    lui        $s6,0x0
    addu       $t9,$a1,$a1
    lw         $a0,844($a5)
    addiu      $s6,$s6,11120
    addu       $t9,$s2,$t9
    sll        $t9,$t9,0x2
    andi       $t8,$a0,0x200
    addu       $s6,$s6,$t9
    beqz       $t8, .L00019e04
    lwu        $s6,0($s6)
    jal        post_sig
    li         $a0,8
    lw         $a5,-24556($zero)
    lbu        $a3,857($a5)
    andi       $t9,$a3,0x4
    beqz       $t9, .L00019c54
    andi       $a2,$a3,0x20
    dsll32     $a0,$s2,0x0
    lui        $a4,0x80
    addiu      $a3,$s7,-65
    nor        $a4,$a4,$zero
    dsll       $a3,$a3,0x17
    and        $a4,$s0,$a4
    dsrl       $a0,$a0,0x1
    or         $a3,$a3,$a4
    lbu        $a1,858($a5)
    jal        fpstore_s
    or         $a0,$a0,$a3
    lw         $a5,-24556($zero)
    lw         $a5,640($a5)
    sd         $s6,296($a5)
.L00019c54:
    beqz       $s1, .L00019c6c
    nop
    lw         $a7,-24556($zero)
    lw         $a6,844($a7)
    ori        $a6,$a6,0x1004
    sw         $a6,844($a7)
.L00019c6c:
    jal        store_fpcsr
    nop
    b          .L000199f0
    ld         $s2,0($sp)
.L00019c7c:
    lw         $a1,844($a5)
    dsll32     $s1,$s2,0x0
    andi       $a7,$a1,0x100
    dsrl       $s1,$s1,0x1
    beqz       $a7, .L00019dc0
    or         $s6,$s1,$s0
.L00019c94:
    li         $a0,8
    ori        $t8,$a1,0x2008
    jal        post_sig
    sw         $t8,844($a5)
    lui        $a6,0x0
    addiu      $a6,$a6,0
    dsrl32     $t0,$s4,0x1f
    lw         $a5,-24556($zero)
    andi       $a7,$s8,0x1
    dsrl32     $t2,$s4,0x1e
    andi       $t2,$t2,0x1
    addu       $t0,$t0,$t0
    lbu        $t1,856($a5)
    sll        $a7,$a7,0x2
    addu       $t0,$t0,$t2
    addu       $a7,$s5,$a7
    sll        $t1,$t1,0x4
    addu       $a7,$a7,$t0
    addu       $a6,$a6,$t1
    addu       $a6,$a6,$a7
    lb         $a6,0($a6)
    dsll32     $a6,$a6,0x0
    dsrl32     $a6,$a6,0x0
    daddu      $a6,$a6,$s8
    dsll32     $t9,$a6,0x7
    addiu      $a0,$s3,192
    bgez       $t9, .L00019d0c
    move       $a7,$a0
    addiu      $a7,$s3,193
    dsrl       $a6,$a6,0x1
.L00019d0c:
    beqz       $s4, .L00019d24
    nop
    lw         $t2,844($a5)
    ori        $t2,$t2,0x1004
    sw         $t2,844($a5)
    lw         $a5,-24556($zero)
.L00019d24:
    lbu        $a3,857($a5)
    andi       $t3,$a3,0x4
    beqz       $t3, .L00019d64
    lui        $a1,0x80
    addiu      $a0,$a7,127
    nor        $a1,$a1,$zero
    dsll       $a0,$a0,0x17
    and        $a1,$a6,$a1
    andi       $a2,$a3,0x20
    or         $a0,$a0,$a1
    lbu        $a1,858($a5)
    jal        fpstore_s
    or         $a0,$s1,$a0
    lw         $a2,-24556($zero)
    lw         $a2,640($a2)
    sd         $s6,296($a2)
.L00019d64:
    jal        store_fpcsr
    nop
    b          .L000199f0
    ld         $s2,0($sp)
.L00019d74:
    b          .L000198e4
    move       $s0,$zero
.L00019d7c:
    lui        $a6,0x0
    sll        $s0,$a1,0x4
    addiu      $a6,$a6,0
    addu       $s0,$s5,$s0
    addu       $s0,$a6,$s0
    lb         $s0,1($s0)
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    dsll32     $a4,$s0,0x8
    bgez       $a4, .L00019f88
    li         $a0,1
    li         $s1,1
    move       $s7,$a3
    dsll32     $s1,$s1,0x1e
.L00019db4:
    addiu      $s7,$s7,1
    b          .L00019bb4
    slti       $a2,$s7,-126
.L00019dc0:
    li         $a2,1
    beq        $a0, $a2, .L00019ff8
    ori        $at,$a1,0x2008
.L00019dcc:
    lbu        $a3,857($a5)
.L00019dd0:
    andi       $t8,$a3,0x4
.L00019dd4:
    bnez       $t8, .L00019de8
    move       $a0,$s6
    andi       $t9,$a3,0x8
    bnez       $t9, .L00019df4
    move       $a0,$s6
.L00019de8:
    andi       $a2,$a3,0x20
    jal        fpstore_s
    lbu        $a1,858($a5)
.L00019df4:
    jal        store_fpcsr
    nop
    b          .L000199f0
    ld         $s2,0($sp)
.L00019e04:
    ori        $at,$a0,0x1004
    sw         $at,844($a5)
    lw         $a5,-24556($zero)
    lw         $ra,844($a5)
    andi       $ra,$ra,0x80
    beqz       $ra, .L00019e2c
    nop
    jal        post_sig
    li         $a0,8
    lw         $a5,-24556($zero)
.L00019e2c:
    lbu        $a3,857($a5)
    andi       $v0,$a3,0x4
    bnez       $v0, .L00019e48
    move       $a0,$s6
    andi       $v1,$a3,0x8
    bnez       $v1, .L00019e54
    move       $a0,$s6
.L00019e48:
    andi       $a2,$a3,0x20
    jal        fpstore_s
    lbu        $a1,858($a5)
.L00019e54:
    jal        store_fpcsr
    nop
    b          .L000199f0
    ld         $s2,0($sp)
.L00019e64:
    bnez       $a3, .L00019bc8
    nop
    lw         $t9,844($a5)
    andi       $t9,$t9,0x100
    dsll32     $s6,$s2,0x0
    lui        $ra,0x80
    addiu      $t8,$s7,127
    nor        $ra,$ra,$zero
    dsll       $t8,$t8,0x17
    and        $ra,$s0,$ra
    dsrl       $s6,$s6,0x1
    or         $t8,$t8,$ra
    beqz       $t9, .L0001a0a4
    or         $s6,$s6,$t8
    li         $a2,1
.L00019ea0:
    bne        $a0, $a2, .L00019dcc
    nop
    b          .L00019fb0
    lw         $ra,844($a5)
.L00019eb0:
    lui        $a0,0x80
    sll        $a7,$a1,0x4
    sll        $s5,$s2,0x3
    and        $t0,$a6,$s1
    andi       $a2,$s0,0x1
    beqz       $s1, .L0001a00c
    sll        $a2,$a2,0x2
    beqz       $t0, .L00019ef0
    addu       $v0,$a2,$s5
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
    addu       $v0,$a2,$s5
.L00019ef0:
    dsrl32     $v1,$s1,0x1f
    lui        $a6,0x0
    dsrl32     $a3,$s1,0x1e
    andi       $a3,$a3,0x1
    addu       $v1,$v1,$v1
    addiu      $a6,$a6,0
    addu       $v1,$v1,$a3
    addu       $at,$a7,$a6
    addu       $v0,$v0,$v1
    addu       $at,$at,$v0
    lb         $at,0($at)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    daddu      $s0,$at,$s0
    and        $ra,$a0,$s0
    beqz       $ra, .L0001a07c
    li         $a0,1
.L00019f34:
    b          .L00019db4
    li         $s7,-127
.L00019f3c:
    b          .L00019b28
    move       $a0,$zero
.L00019f44:
    dsll32     $a7,$s0,0x8
    bltz       $a7, .L00019db4
    nop
    b          .L00019ba0
    dsll32     $t9,$s0,0x7
.L00019f58:
    lb         $t0,0($a2)
    beqz       $t0, .L0001a0ac
    nop
    beqz       $a0, .L0001a0d4
    li         $t1,1
    bne        $a0, $t1, .L00019ab0
    lui        $s0,0x80
    dsll       $t2,$s1,0x1
    bltz       $t2, .L00019ab0
    lui        $s0,0x80
    b          .L000198e4
    lui        $s0,0x80
.L00019f88:
    lw         $a1,844($a5)
    dsll32     $s1,$s2,0x0
    andi       $t3,$a1,0x100
    dsrl       $s1,$s1,0x1
    bnez       $t3, .L00019c94
    or         $s6,$s1,$s0
    ori        $t8,$a1,0x2008
    sw         $t8,844($a5)
    lw         $a5,-24556($zero)
.L00019fac:
    lw         $ra,844($a5)
.L00019fb0:
    ori        $ra,$ra,0x1004
    sw         $ra,844($a5)
    lw         $a5,-24556($zero)
    lw         $t9,844($a5)
    andi       $t9,$t9,0x80
    beqz       $t9, .L00019fd8
    nop
    jal        post_sig
    li         $a0,8
    lw         $a5,-24556($zero)
.L00019fd8:
    b          .L00019dd0
    lbu        $a3,857($a5)
.L00019fe0:
    beqz       $a0, .L0001a0cc
    nop
.L00019fe8:
    b          .L000198e4
    move       $s0,$zero
.L00019ff0:
    b          .L000198e4
    lui        $s0,0x80
.L00019ff8:
    sw         $at,844($a5)
    bne        $a0, $a2, .L00019dcc
    lw         $a5,-24556($zero)
    b          .L00019fb0
    lw         $ra,844($a5)
.L0001a00c:
    beqz       $t0, .L0001a030
    addu       $v0,$a2,$s5
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
    addu       $v0,$a2,$s5
.L0001a030:
    dsrl32     $v1,$s1,0x1f
    lui        $a6,0x0
    dsrl32     $a4,$s1,0x1e
    andi       $a4,$a4,0x1
    addu       $v1,$v1,$v1
    addiu      $a6,$a6,0
    addu       $v1,$v1,$a4
    addu       $at,$a7,$a6
    addu       $v0,$v0,$v1
    addu       $at,$at,$v0
    lb         $at,0($at)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    daddu      $s0,$at,$s0
    and        $ra,$a0,$s0
    beqz       $ra, .L0001a0dc
    nop
    b          .L00019f34
    move       $a0,$zero
.L0001a07c:
    lw         $a1,844($a5)
    dsll32     $s1,$s2,0x0
    andi       $a7,$a1,0x100
    dsrl       $s1,$s1,0x1
    bnez       $a7, .L00019c94
    or         $s6,$s1,$s0
    ori        $t8,$a1,0x2008
    sw         $t8,844($a5)
    b          .L00019fac
    lw         $a5,-24556($zero)
.L0001a0a4:
    b          .L00019ea0
    li         $a2,1
.L0001a0ac:
    beqz       $a0, .L0001a0fc
    li         $t9,1
    bne        $a0, $t9, .L00019fe8
    dsll       $ra,$s1,0x1
    bltz       $ra, .L00019fe8
    nop
    b          .L000198e4
    move       $s0,$zero
.L0001a0cc:
    b          .L000198e4
    move       $s0,$zero
.L0001a0d4:
    b          .L000198e4
    lui        $s0,0x80
.L0001a0dc:
    lw         $a1,844($a5)
    dsll32     $s1,$s2,0x0
    andi       $at,$a1,0x100
    dsrl       $s1,$s1,0x1
    bnez       $at, .L00019c94
    or         $s6,$s1,$s0
    b          .L00019dd4
    andi       $t8,$a3,0x4
.L0001a0fc:
    b          .L000198e4
    move       $s0,$zero

glabel maddrnd_s
    addiu      $sp,$sp,-96
    li         $v0,-1
    sd         $s3,0($sp)
    dsrl       $v0,$v0,0x1
    move       $s3,$a0
    sd         $s2,8($sp)
    and        $at,$v0,$a3
    move       $s2,$a1
    sd         $s0,16($sp)
    move       $s0,$a2
    sd         $s1,24($sp)
    beqz       $at, .L0001a150
    move       $s1,$a3
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$a3,$t9
    or         $s1,$s1,$t8
.L0001a150:
    dsll32     $t8,$s0,0x3
    dsrl       $s1,$s1,0x1d
    or         $s1,$s1,$t8
    and        $at,$v0,$s1
    beqz       $at, .L0001a180
    dsrl       $s0,$s0,0x1d
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L0001a180:
    sd         $ra,32($sp)
    sd         $s4,40($sp)
    lw         $a2,-24556($zero)
    slti       $at,$s2,-150
    sd         $s5,48($sp)
    li         $a3,-127
    beqz       $at, .L0001a234
    lbu        $a0,856($a2)
    lbu        $v0,857($a2)
    andi       $v0,$v0,0x2
    beqz       $v0, .L0001a4a8
    sll        $v1,$a0,0x4
.L0001a1b0:
    sll        $a3,$s3,0x3
    lui        $a1,0x0
    addu       $v1,$v1,$a3
    addiu      $a1,$a1,0
    addu       $v1,$v1,$a1
    lb         $v1,0($v1)
    beqz       $v1, .L0001a4a0
    lui        $s0,0x80
.L0001a1d0:
    li         $s5,1
    move       $s1,$s5
.L0001a1d8:
    lw         $a5,844($a2)
    ori        $a5,$a5,0x1004
    sw         $a5,844($a2)
    lw         $a4,-24556($zero)
    lw         $a4,844($a4)
    andi       $a4,$a4,0x80
    beqz       $a4, .L0001a200
    nop
    jal        post_sig
    li         $a0,8
.L0001a200:
    beq        $s1, $s5, .L0001a3e4
.L0001a204:
    dsll32     $v0,$s3,0x0
.L0001a208:
    dsrl       $v0,$v0,0x1
    or         $v0,$s0,$v0
.L0001a210:
    ld         $s3,0($sp)
    ld         $s2,8($sp)
    ld         $s4,40($sp)
    ld         $ra,32($sp)
    ld         $s0,16($sp)
    ld         $s1,24($sp)
    ld         $s5,48($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L0001a234:
    slti       $a1,$s2,-126
    beqz       $a1, .L0001a2d4
    addiu      $t8,$s2,190
    li         $ra,-126
    lbu        $t9,857($a2)
    dsllv      $t8,$s0,$t8
    subu       $ra,$ra,$s2
    dsrlv      $s0,$s0,$ra
    andi       $t9,$t9,0x2
    dsrlv      $s1,$s1,$ra
    beqz       $t9, .L0001a550
    or         $s1,$s1,$t8
    lui        $t9,0x7f
    ori        $t9,$t9,0xffff
    sltu       $t9,$s0,$t9
    bnez       $t9, .L0001a1b0
    sll        $v1,$a0,0x4
    dsll       $a4,$s1,0x2
    sll        $a1,$s3,0x3
    dsrl32     $a7,$s1,0x1e
    dsrl32     $v0,$s1,0x1f
    andi       $a7,$a7,0x1
    sll        $a6,$v0,0x2
    addu       $a7,$a7,$a7
    addu       $a6,$a6,$a7
    lui        $a5,0x0
    sll        $a3,$a0,0x4
    addiu      $a5,$a5,0
    addu       $a1,$a1,$a6
    addu       $a3,$a3,$a5
    beqz       $a4, .L0001a638
    addu       $a1,$a1,$a3
    lb         $t0,1($a1)
    beqz       $t0, .L0001a664
    nop
    beqz       $v0, .L0001a67c
    li         $s5,1
.L0001a2c8:
    move       $s1,$zero
.L0001a2cc:
    b          .L0001a1d8
    lui        $s0,0x80
.L0001a2d4:
    beqz       $s1, .L0001a5dc
    li         $s4,1
.L0001a2dc:
    and        $t1,$v0,$s1
    beqz       $t1, .L0001a2fc
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L0001a2fc:
    sll        $ra,$s3,0x3
    andi       $at,$s0,0x1
    sll        $at,$at,0x2
    dsrl32     $v1,$s1,0x1f
    addu       $ra,$ra,$at
    dsrl32     $a4,$s1,0x1e
    addu       $v1,$v1,$v1
    andi       $a4,$a4,0x1
    addu       $v1,$v1,$a4
    lui        $at,0x0
    addiu      $at,$at,0
    sll        $v0,$a0,0x4
    addu       $ra,$ra,$v1
    addu       $at,$at,$v0
    addu       $ra,$ra,$at
    lb         $ra,0($ra)
    dsll32     $ra,$ra,0x0
    dsrl32     $ra,$ra,0x0
    beq        $s2, $a3, .L0001a5e4
    daddu      $s0,$ra,$s0
    dsll32     $v0,$s0,0x7
.L0001a350:
    bgez       $v0, .L0001a368
    li         $v0,127
    addiu      $s2,$s2,1
    dsrl       $s0,$s0,0x1
    slti       $a1,$s2,-126
.L0001a364:
    li         $v0,127
.L0001a368:
    beqz       $a1, .L0001a530
    slt        $v0,$v0,$s2
    beqz       $v0, .L0001a424
    nop
.L0001a378:
    lw         $t8,844($a2)
    ori        $t8,$t8,0x4010
    sw         $t8,844($a2)
    lw         $a2,-24556($zero)
    lui        $s0,0x0
    addu       $t9,$a0,$a0
    lw         $v0,844($a2)
    addiu      $s0,$s0,11120
    addu       $t9,$s3,$t9
    sll        $t9,$t9,0x2
    andi       $t8,$v0,0x200
    addu       $s0,$s0,$t9
    beqz       $t8, .L0001a504
    lwu        $s0,0($s0)
    jal        post_sig
    li         $a0,8
    lw         $ra,-24556($zero)
    lbu        $t9,857($ra)
    ori        $t9,$t9,0x8
    beqz       $s1, .L0001a3dc
    sb         $t9,857($ra)
    lw         $at,-24556($zero)
    lw         $ra,844($at)
    ori        $ra,$ra,0x1004
    sw         $ra,844($at)
.L0001a3dc:
    b          .L0001a210
    move       $v0,$s0
.L0001a3e4:
    lw         $v1,-24556($zero)
    lw         $v0,844($v1)
    ori        $v0,$v0,0x2008
    sw         $v0,844($v1)
    lw         $at,-24556($zero)
    lw         $at,844($at)
    andi       $at,$at,0x100
    beqz       $at, .L0001a208
    dsll32     $v0,$s3,0x0
    jal        post_sig
    li         $a0,8
    lw         $a0,-24556($zero)
    lbu        $v1,857($a0)
    ori        $v1,$v1,0x8
    b          .L0001a204
    sb         $v1,857($a0)
.L0001a424:
    lw         $v0,844($a2)
    andi       $a0,$v0,0x100
    beqz       $a0, .L0001a4f4
    li         $s5,1
.L0001a434:
    li         $a0,8
    ori        $a1,$v0,0x2008
    jal        post_sig
    sw         $a1,844($a2)
    lw         $a3,-24556($zero)
    lbu        $a2,857($a3)
    ori        $a2,$a2,0x8
    sb         $a2,857($a3)
.L0001a454:
    beq        $s4, $s5, .L0001a604
.L0001a458:
    slti       $a3,$s2,-126
.L0001a45c:
    bnez       $a3, .L0001a490
    dsll32     $a0,$s3,0x0
    dsll32     $a0,$s3,0x0
    lui        $a2,0x80
    addiu      $a1,$s2,127
    nor        $a2,$a2,$zero
    dsll       $a1,$a1,0x17
    and        $a2,$s0,$a2
    dsrl       $a0,$a0,0x1
    or         $a1,$a1,$a2
    b          .L0001a498
    or         $a0,$a0,$a1
    dsll32     $a0,$s3,0x0
.L0001a490:
    dsrl       $a0,$a0,0x1
    or         $a0,$s0,$a0
.L0001a498:
    b          .L0001a210
    move       $v0,$a0
.L0001a4a0:
    b          .L0001a1d0
    move       $s0,$zero
.L0001a4a8:
    sll        $s0,$a0,0x4
    sll        $t8,$s3,0x3
    lui        $s5,0x0
    addu       $s0,$s0,$t8
    addiu      $s5,$s5,0
    addu       $s0,$s0,$s5
    lb         $s0,1($s0)
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    dsll32     $a1,$s0,0x8
    bgez       $a1, .L0001a68c
    li         $s5,1
    move       $s4,$s5
    li         $s1,1
    move       $s2,$a3
    dsll32     $s1,$s1,0x1e
.L0001a4e8:
    addiu      $s2,$s2,1
    b          .L0001a364
    slti       $a1,$s2,-126
.L0001a4f4:
    bne        $s4, $s5, .L0001a458
    ori        $t8,$v0,0x2008
    b          .L0001a454
    sw         $t8,844($a2)
.L0001a504:
    ori        $ra,$v0,0x1004
    sw         $ra,844($a2)
    lw         $t9,-24556($zero)
    lw         $t9,844($t9)
    andi       $t9,$t9,0x80
    beqz       $t9, .L0001a528
    nop
    jal        post_sig
    li         $a0,8
.L0001a528:
    b          .L0001a210
    move       $v0,$s0
.L0001a530:
    bnez       $v0, .L0001a378
    nop
    lw         $at,844($a2)
    andi       $at,$at,0x100
    beqz       $at, .L0001a72c
    nop
    b          .L0001a454
    li         $s5,1
.L0001a550:
    lui        $a1,0x80
    sll        $a7,$a0,0x4
    sll        $t0,$s3,0x3
    and        $a6,$v0,$s1
    andi       $a3,$s0,0x1
    beqz       $s1, .L0001a6a4
    sll        $a3,$a3,0x2
    beqz       $a6, .L0001a58c
    li         $s5,1
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L0001a58c:
    lui        $at,0x0
    dsrl32     $v1,$s1,0x1f
    addiu      $at,$at,0
    dsrl32     $a4,$s1,0x1e
    addu       $v1,$v1,$v1
    andi       $a4,$a4,0x1
    addu       $v0,$a3,$t0
    addu       $v1,$v1,$a4
    addu       $at,$a7,$at
    addu       $v0,$v0,$v1
    addu       $at,$at,$v0
    lb         $at,0($at)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    daddu      $s0,$at,$s0
    and        $ra,$a1,$s0
    beqz       $ra, .L0001a710
    li         $s4,1
.L0001a5d4:
    b          .L0001a4e8
    li         $s2,-127
.L0001a5dc:
    b          .L0001a2dc
    move       $s4,$zero
.L0001a5e4:
    dsll32     $v0,$s0,0x8
    bltz       $v0, .L0001a4e8
    nop
    b          .L0001a350
    dsll32     $v0,$s0,0x7
.L0001a5f8:
    ori        $v1,$v0,0x2008
    sw         $v1,844($a2)
    move       $s2,$a3
.L0001a604:
    lw         $a2,-24556($zero)
    lw         $a1,844($a2)
    ori        $a1,$a1,0x1004
    sw         $a1,844($a2)
    lw         $a0,-24556($zero)
    lw         $a0,844($a0)
    andi       $a0,$a0,0x80
    beqz       $a0, .L0001a45c
    slti       $a3,$s2,-126
    jal        post_sig
    li         $a0,8
    b          .L0001a45c
    slti       $a3,$s2,-126
.L0001a638:
    lb         $a3,0($a1)
    beqz       $a3, .L0001a734
    nop
    beqz       $v0, .L0001a75c
    li         $s5,1
    bne        $s5, $v0, .L0001a2c8
    dsll       $a4,$s1,0x1
    bltz       $a4, .L0001a2cc
    move       $s1,$zero
    b          .L0001a684
    lui        $s0,0x80
.L0001a664:
    beqz       $v0, .L0001a754
    move       $s0,$zero
    li         $s5,1
.L0001a670:
    li         $s1,1
.L0001a674:
    b          .L0001a1d8
    move       $s0,$zero
.L0001a67c:
    li         $s5,1
    lui        $s0,0x80
.L0001a684:
    b          .L0001a1d8
    li         $s1,1
.L0001a68c:
    lw         $v0,844($a2)
    andi       $a5,$v0,0x100
    beqz       $a5, .L0001a5f8
    move       $s4,$s5
    b          .L0001a434
    move       $s2,$a3
.L0001a6a4:
    beqz       $a6, .L0001a6c0
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L0001a6c0:
    lui        $at,0x0
    dsrl32     $v1,$s1,0x1f
    addiu      $at,$at,0
    dsrl32     $a4,$s1,0x1e
    addu       $v1,$v1,$v1
    andi       $a4,$a4,0x1
    addu       $v0,$a3,$t0
    addu       $v1,$v1,$a4
    addu       $at,$a7,$at
    addu       $v0,$v0,$v1
    addu       $at,$at,$v0
    lb         $at,0($at)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    daddu      $s0,$at,$s0
    and        $ra,$a1,$s0
    beqz       $ra, .L0001a764
    nop
    b          .L0001a5d4
    move       $s4,$zero
.L0001a710:
    lw         $v0,844($a2)
    andi       $v1,$v0,0x100
    beqz       $v1, .L0001a784
    li         $s2,-127
    li         $s2,-127
    b          .L0001a434
    li         $s4,1
.L0001a72c:
    b          .L0001a454
    li         $s5,1
.L0001a734:
    beqz       $v0, .L0001a790
    li         $s5,1
    bne        $s5, $v0, .L0001a670
    dsll       $a0,$s1,0x1
    bltz       $a0, .L0001a674
    li         $s1,1
    b          .L0001a684
    move       $s0,$zero
.L0001a754:
    b          .L0001a684
    li         $s5,1
.L0001a75c:
    b          .L0001a684
    lui        $s0,0x80
.L0001a764:
    lw         $v0,844($a2)
    andi       $a1,$v0,0x100
    beqz       $a1, .L0001a490
    dsll32     $a0,$s3,0x0
    move       $s4,$zero
    li         $s5,1
    b          .L0001a434
    li         $s2,-127
.L0001a784:
    ori        $a3,$v0,0x2008
    b          .L0001a604
    sw         $a3,844($a2)
.L0001a790:
    b          .L0001a684
    move       $s0,$zero

glabel uphwg_init
    addiu      $sp,$sp,-80
    sd         $s1,40($sp)
    lui        $a1,0x0
    sd         $s2,64($sp)
    sd         $s0,48($sp)
    move       $s0,$a0
    addiu      $a2,$sp,0
    sd         $ra,56($sp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,9696
    bnez       $v0, .L0001a910
    lui        $s1,0x0
.L0001a7c8:
    lw         $a0,0($sp)
    jal        add_cpu
    addiu      $s1,$s1,9648
    addiu      $a2,$sp,4
    lui        $a1,0x0
    lw         $a0,0($sp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,9704
    bnez       $v0, .L0001a930
    addiu      $a2,$sp,8
.L0001a7f0:
    lui        $a1,0x0
    lw         $a0,0($sp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,9712
    bnez       $v0, .L0001a94c
    addiu      $a2,$sp,12
.L0001a808:
    lui        $a1,0x0
    lw         $a0,8($sp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,9716
    bnez       $v0, .L0001a968
    addiu      $a2,$sp,16
.L0001a820:
    lui        $a1,0x0
    lw         $a0,12($sp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,9720
    bnez       $v0, .L0001a984
    move       $a0,$s0
.L0001a838:
    addiu      $a2,$sp,20
    lui        $a1,0x0
    jal        hwgraph_path_add
    addiu      $a1,$a1,9728
    bnez       $v0, .L0001a9a0
    move       $a0,$s0
.L0001a850:
    addiu      $a1,$s1,32
    jal        hwgraph_path_add
    addiu      $a2,$sp,24
    bnez       $v0, .L0001a9bc
    move       $a0,$s0
.L0001a864:
    addiu      $a2,$sp,28
    lui        $a1,0x0
    jal        hwgraph_path_add
    addiu      $a1,$a1,9736
    bnez       $v0, .L0001a9d4
    move       $s0,$zero
.L0001a87c:
    li         $s2,2
.L0001a880:
    addiu      $a0,$sp,32
    move       $a2,$s0
    lui        $a1,0x0
    jal        sprintf
    addiu      $a1,$a1,9744
    addiu      $a2,$sp,36
    addiu      $a1,$sp,32
    jal        hwgraph_path_add
    lw         $a0,12($sp)
    bnez       $v0, .L0001a8f8
    move       $a0,$zero
.L0001a8ac:
    beq        $s0, $s2, .L0001a8d8
    lw         $a1,36($sp)
    addiu      $s0,$s0,1
.L0001a8b8:
    slti       $a2,$s0,3
    bnez       $a2, .L0001a880
    ld         $ra,56($sp)
    ld         $s0,48($sp)
    ld         $s1,40($sp)
    ld         $s2,64($sp)
    jr         $ra
    addiu      $sp,$sp,80
.L0001a8d8:
    lui        $a2,0x0
    lw         $a0,12($sp)
    jal        hwgraph_edge_add
    addiu      $a2,$a2,9760
    beqzl      $v0, .L0001a8b8
    addiu      $s0,$s0,1
    b          .L0001a9f0
    move       $a0,$zero
.L0001a8f8:
    move       $a1,$s1
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,9752
    b          .L0001a8ac
    nop
.L0001a910:
    move       $a0,$zero
    lui        $a2,0x0
    lui        $a1,0x0
    addiu      $a2,$a2,9696
    jal        cmn_err
    addiu      $a1,$a1,9648
    b          .L0001a7c8
    lui        $s1,0x0
.L0001a930:
    move       $a0,$zero
    move       $a1,$s1
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,9704
    b          .L0001a7f0
    addiu      $a2,$sp,8
.L0001a94c:
    move       $a0,$zero
    move       $a1,$s1
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,9712
    b          .L0001a808
    addiu      $a2,$sp,12
.L0001a968:
    move       $a0,$zero
    move       $a1,$s1
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,9716
    b          .L0001a820
    addiu      $a2,$sp,16
.L0001a984:
    move       $a0,$zero
    move       $a1,$s1
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,9720
    b          .L0001a838
    move       $a0,$s0
.L0001a9a0:
    move       $a0,$zero
    move       $a1,$s1
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,9728
    b          .L0001a850
    move       $a0,$s0
.L0001a9bc:
    move       $a0,$zero
    move       $a1,$s1
    jal        cmn_err
    addiu      $a2,$s1,32
    b          .L0001a864
    move       $a0,$s0
.L0001a9d4:
    move       $a0,$zero
    move       $a1,$s1
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,9736
    b          .L0001a87c
    move       $s0,$zero
.L0001a9f0:
    move       $a1,$s1
    lui        $a2,0x0
    jal        cmn_err
    addiu      $a2,$a2,9760
    b          .L0001a8b8
    addiu      $s0,$s0,1

glabel hpc_hwgraph_lookup
    lui        $a5,0x0
    lui        $a4,0x0
    lui        $a3,0x0
    lui        $a2,0x0
    lui        $a1,0x0
    addiu      $sp,$sp,-48
    sd         $s8,40($sp)
    move       $s8,$a0
    addiu      $a0,$sp,0
    addiu      $a1,$a1,9768
    addiu      $a2,$a2,9696
    addiu      $a3,$a3,9712
    addiu      $a4,$a4,9716
    sd         $ra,32($sp)
    jal        sprintf
    addiu      $a5,$a5,9720
    li         $a0,-1
    addiu      $a1,$sp,0
    jal        hwgraph_traverse
    move       $a2,$s8
    ld         $ra,32($sp)
    ld         $s8,40($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel gio_hwgraph_lookup
    li         $a5,2
    addiu      $sp,$sp,-48
    lui        $at,0xbf00
    lui        $v0,0xbf40
    lui        $a2,0xbf60
    sd         $s0,32($sp)
    move       $s0,$a1
    beq        $a0, $at, .L0001aaa4
    sd         $ra,40($sp)
    beq        $a0, $v0, .L0001aaf4
    li         $a5,1
    bne        $a0, $a2, .L0001ab00
    nop
    b          .L0001aaa8
    addiu      $a0,$sp,0
.L0001aaa4:
    addiu      $a0,$sp,0
.L0001aaa8:
    lui        $a4,0x0
    lui        $a3,0x0
    lui        $a1,0x0
    lui        $a2,0x0
    addiu      $a1,$a1,9784
    addiu      $a2,$a2,9696
    addiu      $a3,$a3,9712
    jal        sprintf
    addiu      $a4,$a4,9716
    li         $a0,-1
    addiu      $a1,$sp,0
    jal        hwgraph_traverse
    move       $a2,$s0
    move       $a0,$v0
.L0001aae0:
    ld         $ra,40($sp)
    move       $v0,$a0
    ld         $s0,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0001aaf4:
    move       $a5,$zero
    b          .L0001aaa8
    addiu      $a0,$sp,0
.L0001ab00:
    jal        hpc_hwgraph_lookup
    move       $a0,$a1
    b          .L0001aae0
    move       $a0,$v0

glabel add_cpu
    lui        $a1,0x0
    addiu      $sp,$sp,-32
    sd         $s8,16($sp)
    move       $s8,$a0
    addiu      $a2,$sp,0
    sd         $ra,8($sp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,9800
    bnez       $v0, .L0001ab70
    addiu      $a2,$sp,4
.L0001ab38:
    lui        $a1,0x0
    lw         $a0,0($sp)
    jal        hwgraph_path_add
    addiu      $a1,$a1,9804
    lw         $a0,4($sp)
    jal        mark_cpuvertex_as_cpu
    move       $a1,$zero
    lw         $a0,4($sp)
    jal        device_master_set
    move       $a1,$s8
    ld         $ra,8($sp)
    ld         $s8,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0001ab70:
    move       $a0,$zero
    lui        $a2,0x0
    lui        $a1,0x0
    addiu      $a2,$a2,9800
    jal        cmn_err
    addiu      $a1,$a1,9648
    b          .L0001ab38
    addiu      $a2,$sp,4

glabel devnamefromarcs
    li         $a2,3
    addiu      $sp,$sp,-272
    lui        $a1,0x0
    sd         $s0,264($sp)
    move       $s0,$a0
    sd         $ra,256($sp)
    jal        strncmp
    addiu      $a1,$a1,9864
    beqz       $v0, .L0001abc4
.L0001abb4:
    ld         $ra,256($sp)
.L0001abb8:
    ld         $s0,264($sp)
    jr         $ra
    addiu      $sp,$sp,272
.L0001abc4:
    lui        $t8,0x0
    addiu      $t8,$t8,9648
    lbu        $a7,212($t8)
    lbu        $a4,184($t8)
    lbu        $t1,213($t8)
    ld         $t3,200($t8)
    ld         $t2,192($t8)
    ld         $at,160($t8)
    lw         $ra,168($t8)
    lhu        $t9,172($t8)
    lbu        $t0,174($t8)
    sb         $t0,14($sp)
    sh         $t9,12($sp)
    sw         $ra,8($sp)
    sd         $at,0($sp)
    lbu        $a6,3($s0)
    li         $a0,100
    ld         $a5,176($t8)
    addiu      $a2,$s0,3
    lbu        $t0,214($t8)
    addiu      $a3,$sp,14
    beq        $a0, $a6, .L0001ac40
    lw         $a6,208($t8)
.L0001ac20:
    lbu        $t9,0($a2)
    addiu      $a3,$a3,1
    addiu      $a2,$a2,1
    beqz       $t9, .L0001abb4
    sb         $t9,-1($a3)
    lbu        $ra,0($a2)
    bne        $a0, $ra, .L0001ac20
    nop
.L0001ac40:
    sdl        $a5,0($a3)
    sdr        $a5,7($a3)
    sb         $a4,8($a3)
    lbu        $at,1($a2)
    li         $a0,115
    addiu      $a2,$a2,1
    beq        $a0, $at, .L0001ac80
    addiu      $a3,$a3,8
.L0001ac60:
    lbu        $v0,0($a2)
    addiu      $a3,$a3,1
    addiu      $a2,$a2,1
    beqz       $v0, .L0001abb4
    sb         $v0,-1($a3)
    lbu        $v1,0($a2)
    bne        $a0, $v1, .L0001ac60
    nop
.L0001ac80:
    sdl        $t2,0($a3)
    sdr        $t2,7($a3)
    sdl        $t3,8($a3)
    sdr        $t3,15($a3)
    swl        $a6,16($a3)
    swr        $a6,19($a3)
    sb         $t0,22($a3)
    sb         $t1,21($a3)
    sb         $a7,20($a3)
    lbu        $a0,1($a2)
    addiu      $a3,$a3,23
    addiu      $a2,$a2,2
    beqz       $a0, .L0001acf4
    sb         $a0,-1($a3)
.L0001acb8:
    lbu        $a1,0($a2)
    addiu      $a3,$a3,1
    sb         $a1,-1($a3)
    beqz       $a1, .L0001acf4
    nop
    lbu        $a4,1($a2)
    addiu      $a3,$a3,1
    sb         $a4,-1($a3)
    beqz       $a4, .L0001acf4
    nop
    lbu        $a5,2($a2)
    addiu      $a3,$a3,1
    addiu      $a2,$a2,3
    bnez       $a5, .L0001acb8
    sb         $a5,-1($a3)
.L0001acf4:
    li         $t1,47
    sb         $t1,-1($a3)
    lui        $t0,0x0
    addiu      $a6,$t0,9872
    lw         $t0,9872($t0)
    swl        $t0,0($a3)
    swr        $t0,3($a3)
    lbu        $a7,5($a6)
    lbu        $a6,4($a6)
    addiu      $a1,$sp,0
    sb         $a7,5($a3)
    move       $a0,$s0
    jal        strcpy
    sb         $a6,4($a3)
    b          .L0001abb8
    ld         $ra,256($sp)

glabel round_l
    li         $a7,1
    sll        $a5,$a0,0x3
    li         $at,-1
    addiu      $sp,$sp,-16
    dsrl       $at,$at,0x1
    andi       $t0,$a1,0x1
    and        $at,$a2,$at
    li         $a4,-1
    sll        $a6,$t0,0x2
    sd         $s0,0($sp)
    move       $s0,$a1
    beqz       $at, .L0001ad78
    sd         $ra,8($sp)
    dsll32     $a3,$a7,0x1e
    dsll32     $t1,$a4,0x1f
    and        $a2,$a2,$t1
    or         $a2,$a2,$a3
.L0001ad78:
    lui        $t3,0x0
    lw         $a4,-24556($zero)
    addiu      $t3,$t3,0
    dsrl32     $t9,$a2,0x1f
    addu       $t2,$a5,$a6
    dsrl32     $ra,$a2,0x1e
    lbu        $t8,856($a4)
    andi       $ra,$ra,0x1
    addu       $t9,$t9,$t9
    addu       $t9,$t9,$ra
    sll        $t8,$t8,0x4
    addu       $t2,$t2,$t9
    addu       $t3,$t3,$t8
    addu       $t2,$t2,$t3
    lb         $t2,0($t2)
    beqz       $a0, .L0001adc0
    daddu      $s0,$t2,$s0
    dnegu      $s0,$s0
.L0001adc0:
    beqz       $a2, .L0001adf4
    nop
    lw         $at,844($a4)
    ori        $at,$at,0x1004
    sw         $at,844($a4)
    lw         $a4,-24556($zero)
    lw         $ra,844($a4)
    andi       $ra,$ra,0x80
    beqz       $ra, .L0001adf4
    nop
    jal        post_sig
    li         $a0,8
    lw         $a4,-24556($zero)
.L0001adf4:
    lbu        $a2,857($a4)
    move       $a0,$s0
    lbu        $a1,858($a4)
    jal        fpstore_d
    andi       $a2,$a2,0x20
    jal        store_fpcsr
    ld         $s0,0($sp)
    ld         $ra,8($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel round_d
    addiu      $sp,$sp,-112
    sd         $s8,32($sp)
    sd         $s2,0($sp)
    li         $a6,-1
    move       $s2,$a0
    sd         $s3,8($sp)
    dsrl       $a6,$a6,0x1
    move       $s3,$a1
    sd         $s7,16($sp)
    and        $at,$a6,$a3
    move       $s7,$a1
    move       $s8,$a2
    sd         $s1,24($sp)
    move       $s1,$a3
    beqz       $at, .L0001ae74
    sd         $s4,48($sp)
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$a3,$t9
    or         $s1,$s1,$t8
.L0001ae74:
    sd         $s6,40($sp)
    sd         $ra,56($sp)
    sd         $s0,64($sp)
    lw         $a5,-24556($zero)
    slti       $at,$s3,-1075
    li         $a3,-1023
    sd         $s5,72($sp)
    move       $s4,$s1
    beqz       $at, .L0001b01c
    lbu        $a1,856($a5)
    lbu        $v0,857($a5)
    andi       $v0,$v0,0x2
    beqz       $v0, .L0001b374
    li         $s1,1
    dsll32     $s1,$s1,0x1e
.L0001aeb0:
    sll        $s5,$s2,0x3
    sll        $t8,$a1,0x4
    lui        $t9,0x0
    addu       $t8,$s5,$t8
    addiu      $t9,$t9,0
    addu       $t8,$t8,$t9
    lb         $t8,0($t8)
    beqz       $t8, .L0001b36c
    li         $s0,1
    dsll32     $s0,$s0,0x14
.L0001aed8:
    lw         $t9,844($a5)
    ori        $t9,$t9,0x2008
    sw         $t9,844($a5)
    lw         $a5,-24556($zero)
    lw         $a0,844($a5)
    andi       $t8,$a0,0x100
    beqz       $t8, .L0001b0b8
    ori        $t9,$a0,0x1004
    jal        post_sig
    li         $a0,8
    andi       $a6,$s8,0x1
    sll        $a6,$a6,0x2
    dsrl32     $t1,$s4,0x1f
    lw         $a5,-24556($zero)
    addu       $a6,$s5,$a6
    dsrl32     $t2,$s4,0x1e
    addu       $t1,$t1,$t1
    andi       $t2,$t2,0x1
    lbu        $t0,856($a5)
    addu       $t1,$t1,$t2
    lui        $a7,0x0
    addiu      $a7,$a7,0
    sll        $t0,$t0,0x4
    addu       $a6,$a6,$t1
    addu       $a7,$a7,$t0
    addu       $a6,$a6,$a7
    lb         $a6,0($a6)
    dsll32     $a6,$a6,0x0
    dsrl32     $a6,$a6,0x0
    li         $ra,1
    daddu      $a6,$a6,$s8
    dsll32     $ra,$ra,0x15
    and        $ra,$a6,$ra
    addiu      $a0,$s3,1536
    beqz       $ra, .L0001af70
    move       $a7,$a0
    addiu      $a7,$s3,1537
    dsrl       $a6,$a6,0x1
.L0001af70:
    beqz       $s4, .L0001af88
    nop
    lw         $t0,844($a5)
    ori        $t0,$t0,0x1004
    sw         $t0,844($a5)
    lw         $a5,-24556($zero)
.L0001af88:
    lbu        $a3,857($a5)
    andi       $t1,$a3,0x4
    beqz       $t1, .L0001afcc
    ld         $a1,-32736($gp)
    andi       $a2,$a3,0x20
    addiu      $a0,$a7,1023
    dsll32     $a0,$a0,0x14
    and        $a1,$a6,$a1
    dsll32     $s7,$s2,0x1f
    or         $a0,$a0,$a1
    lbu        $a1,858($a5)
    jal        fpstore_d
    or         $a0,$s7,$a0
    lw         $a2,-24556($zero)
    lw         $a2,640($a2)
    or         $a1,$s7,$s0
    sd         $a1,296($a2)
.L0001afcc:
    beqz       $s1, .L0001afe4
    nop
    lw         $a4,-24556($zero)
    lw         $a3,844($a4)
    ori        $a3,$a3,0x1004
    sw         $a3,844($a4)
.L0001afe4:
    jal        store_fpcsr
    nop
    ld         $s2,0($sp)
.L0001aff0:
    ld         $s3,8($sp)
    ld         $s6,40($sp)
    ld         $s4,48($sp)
    ld         $s7,16($sp)
    ld         $s0,64($sp)
    ld         $ra,56($sp)
    ld         $s1,24($sp)
    ld         $s5,72($sp)
    ld         $s8,32($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L0001b01c:
    slti       $a2,$s3,-1022
    beqz       $a2, .L0001b118
    addiu      $t8,$s3,1086
    li         $s1,-1022
    lbu        $a3,857($a5)
    dsllv      $t8,$s8,$t8
    subu       $s1,$s1,$s3
    dsrlv      $s0,$s8,$s1
    andi       $t9,$a3,0x2
    dsrlv      $s1,$s4,$s1
    beqz       $t9, .L0001b4ac
    or         $s1,$s1,$t8
    li         $t8,-1
    dsrl       $t8,$t8,0xc
    sltu       $t8,$s0,$t8
    bnez       $t8, .L0001aeb0
    dsll       $a4,$s1,0x2
    sll        $a2,$a1,0x4
    lui        $a6,0x0
    addiu      $a6,$a6,0
    dsrl32     $a7,$s1,0x1e
    dsrl32     $a0,$s1,0x1f
    andi       $a7,$a7,0x1
    sll        $a3,$a0,0x2
    addu       $a7,$a7,$a7
    sll        $s5,$s2,0x3
    addu       $a3,$a3,$a7
    addu       $a2,$a2,$a6
    addu       $a3,$s5,$a3
    beqz       $a4, .L0001b560
    addu       $a2,$a2,$a3
    lb         $a7,1($a2)
    beqz       $a7, .L0001b5e8
    nop
    beqz       $a0, .L0001b5f8
.L0001b0a8:
    li         $s0,1
.L0001b0ac:
    lw         $a0,844($a5)
    dsll32     $s0,$s0,0x14
    ori        $t9,$a0,0x1004
.L0001b0b8:
    sw         $t9,844($a5)
    lw         $a5,-24556($zero)
    lw         $t8,844($a5)
    andi       $t8,$t8,0x80
    beqz       $t8, .L0001b0dc
    nop
    jal        post_sig
    li         $a0,8
    lw         $a5,-24556($zero)
.L0001b0dc:
    lbu        $a3,857($a5)
    andi       $ra,$a3,0x4
    bnez       $ra, .L0001b0f8
    andi       $a2,$a3,0x20
    andi       $at,$a3,0x8
    bnez       $at, .L0001b108
    andi       $a2,$a3,0x20
.L0001b0f8:
    dsll32     $a0,$s2,0x1f
    lbu        $a1,858($a5)
    jal        fpstore_d
    or         $a0,$s0,$a0
.L0001b108:
    jal        store_fpcsr
    nop
    b          .L0001aff0
    ld         $s2,0($sp)
.L0001b118:
    beqz       $s1, .L0001b53c
    li         $a0,1
.L0001b120:
    and        $a4,$a6,$s4
    beqz       $a4, .L0001b148
    sll        $s0,$a1,0x4
    li         $s1,-1
    dsll32     $s1,$s1,0x1f
    li         $t8,1
    and        $s1,$s4,$s1
    dsll32     $t8,$t8,0x1e
    or         $s1,$s1,$t8
    sll        $s0,$a1,0x4
.L0001b148:
    sll        $s5,$s2,0x3
    andi       $t8,$s8,0x1
    sll        $t8,$t8,0x2
    lui        $a6,0x0
    dsrl32     $t9,$s1,0x1f
    addiu      $a6,$a6,0
    dsrl32     $ra,$s1,0x1e
    addu       $t9,$t9,$t9
    andi       $ra,$ra,0x1
    addu       $t8,$s5,$t8
    addu       $t9,$t9,$ra
    addu       $s0,$a6,$s0
    addu       $t8,$t8,$t9
    addu       $s0,$s0,$t8
    lb         $s0,0($s0)
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    beq        $s3, $a3, .L0001b544
    daddu      $s0,$s0,$s8
    li         $t9,1
.L0001b198:
    dsll32     $t9,$t9,0x15
    and        $t9,$s0,$t9
    beqz       $t9, .L0001b1b8
    li         $a3,1023
    addiu      $s7,$s3,1
    dsrl       $s0,$s0,0x1
    slti       $a2,$s7,-1022
.L0001b1b4:
    li         $a3,1023
.L0001b1b8:
    beqz       $a2, .L0001b468
    slt        $a3,$a3,$s7
    beqz       $a3, .L0001b274
    nop
.L0001b1c8:
    lw         $t8,844($a5)
    ori        $t8,$t8,0x4010
    sw         $t8,844($a5)
    lw         $a5,-24556($zero)
    lui        $s6,0x0
    addu       $t9,$a1,$a1
    lw         $a0,844($a5)
    addiu      $s6,$s6,11152
    addu       $t9,$s2,$t9
    sll        $t9,$t9,0x3
    andi       $t8,$a0,0x200
    addu       $s6,$s6,$t9
    beqz       $t8, .L0001b408
    ld         $s6,0($s6)
    jal        post_sig
    li         $a0,8
    lw         $a5,-24556($zero)
    lbu        $a3,857($a5)
    andi       $t9,$a3,0x4
    beqz       $t9, .L0001b24c
    ld         $a4,-32736($gp)
    andi       $a2,$a3,0x20
    addiu      $a3,$s7,-513
    dsll32     $a3,$a3,0x14
    and        $a4,$s0,$a4
    dsll32     $a0,$s2,0x1f
    or         $a3,$a3,$a4
    lbu        $a1,858($a5)
    jal        fpstore_d
    or         $a0,$a0,$a3
    lw         $a4,-24556($zero)
    lw         $a4,640($a4)
    sd         $s6,296($a4)
.L0001b24c:
    beqz       $s1, .L0001b264
    nop
    lw         $a6,-24556($zero)
    lw         $a5,844($a6)
    ori        $a5,$a5,0x1004
    sw         $a5,844($a6)
.L0001b264:
    jal        store_fpcsr
    nop
    b          .L0001aff0
    ld         $s2,0($sp)
.L0001b274:
    lw         $a1,844($a5)
    andi       $a7,$a1,0x100
    dsll32     $s7,$s2,0x1f
    beqz       $a7, .L0001b3c4
    or         $s6,$s7,$s0
.L0001b288:
    li         $a0,8
    ori        $t0,$a1,0x2008
    jal        post_sig
    sw         $t0,844($a5)
    lui        $a6,0x0
    addiu      $a6,$a6,0
    dsrl32     $t0,$s4,0x1f
    lw         $a5,-24556($zero)
    andi       $a7,$s8,0x1
    dsrl32     $t2,$s4,0x1e
    andi       $t2,$t2,0x1
    addu       $t0,$t0,$t0
    lbu        $t1,856($a5)
    sll        $a7,$a7,0x2
    addu       $t0,$t0,$t2
    addu       $a7,$s5,$a7
    sll        $t1,$t1,0x4
    addu       $a7,$a7,$t0
    addu       $a6,$a6,$t1
    addu       $a6,$a6,$a7
    lb         $a6,0($a6)
    dsll32     $a6,$a6,0x0
    li         $t1,1
    dsrl32     $a6,$a6,0x0
    dsll32     $t1,$t1,0x15
    daddu      $a6,$a6,$s8
    and        $t1,$a6,$t1
    addiu      $a0,$s3,1536
    beqz       $t1, .L0001b308
    move       $a7,$a0
    addiu      $a7,$s3,1537
    dsrl       $a6,$a6,0x1
.L0001b308:
    beqz       $s4, .L0001b320
    nop
    lw         $t2,844($a5)
    ori        $t2,$t2,0x1004
    sw         $t2,844($a5)
    lw         $a5,-24556($zero)
.L0001b320:
    lbu        $a3,857($a5)
    andi       $t3,$a3,0x4
    beqz       $t3, .L0001b35c
    ld         $a1,-32736($gp)
    addiu      $a0,$a7,1023
    dsll32     $a0,$a0,0x14
    and        $a1,$a6,$a1
    andi       $a2,$a3,0x20
    or         $a0,$a0,$a1
    lbu        $a1,858($a5)
    jal        fpstore_d
    or         $a0,$s7,$a0
    lw         $a1,-24556($zero)
    lw         $a1,640($a1)
    sd         $s6,296($a1)
.L0001b35c:
    jal        store_fpcsr
    nop
    b          .L0001aff0
    ld         $s2,0($sp)
.L0001b36c:
    b          .L0001aed8
    move       $s0,$zero
.L0001b374:
    sll        $s5,$s2,0x3
    lui        $a6,0x0
    sll        $s0,$a1,0x4
    addiu      $a6,$a6,0
    addu       $s0,$s5,$s0
    addu       $s0,$a6,$s0
    lb         $s0,1($s0)
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    li         $a2,1
    dsll32     $a2,$a2,0x14
    and        $a2,$s0,$a2
    beqz       $a2, .L0001b594
    li         $a0,1
    li         $s1,1
    move       $s7,$a3
    dsll32     $s1,$s1,0x1e
.L0001b3b8:
    addiu      $s7,$s7,1
    b          .L0001b1b4
    slti       $a2,$s7,-1022
.L0001b3c4:
    li         $a2,1
    beq        $a0, $a2, .L0001b604
    ori        $t8,$a1,0x2008
.L0001b3d0:
    lbu        $a3,857($a5)
.L0001b3d4:
    andi       $t8,$a3,0x4
.L0001b3d8:
    bnez       $t8, .L0001b3ec
    move       $a0,$s6
    andi       $t9,$a3,0x8
    bnez       $t9, .L0001b3f8
    move       $a0,$s6
.L0001b3ec:
    andi       $a2,$a3,0x20
    jal        fpstore_d
    lbu        $a1,858($a5)
.L0001b3f8:
    jal        store_fpcsr
    nop
    b          .L0001aff0
    ld         $s2,0($sp)
.L0001b408:
    ori        $at,$a0,0x1004
    sw         $at,844($a5)
    lw         $a5,-24556($zero)
    lw         $ra,844($a5)
    andi       $ra,$ra,0x80
    beqz       $ra, .L0001b430
    nop
    jal        post_sig
    li         $a0,8
    lw         $a5,-24556($zero)
.L0001b430:
    lbu        $a3,857($a5)
    andi       $v0,$a3,0x4
    bnez       $v0, .L0001b44c
    move       $a0,$s6
    andi       $v1,$a3,0x8
    bnez       $v1, .L0001b458
    move       $a0,$s6
.L0001b44c:
    andi       $a2,$a3,0x20
    jal        fpstore_d
    lbu        $a1,858($a5)
.L0001b458:
    jal        store_fpcsr
    nop
    b          .L0001aff0
    ld         $s2,0($sp)
.L0001b468:
    bnez       $a3, .L0001b1c8
    nop
    lw         $t9,844($a5)
    ld         $ra,-32736($gp)
    andi       $t9,$t9,0x100
    addiu      $t8,$s7,1023
    dsll32     $t8,$t8,0x14
    and        $ra,$s0,$ra
    dsll32     $s6,$s2,0x1f
    or         $t8,$t8,$ra
    beqz       $t9, .L0001b6ac
    or         $s6,$s6,$t8
    li         $a2,1
.L0001b49c:
    bne        $a0, $a2, .L0001b3d0
    nop
    b          .L0001b5b8
    lw         $at,844($a5)
.L0001b4ac:
    sll        $a7,$a1,0x4
    sll        $s5,$s2,0x3
    li         $a0,1
    and        $t0,$a6,$s1
    dsll32     $a0,$a0,0x14
    andi       $a2,$s0,0x1
    beqz       $s1, .L0001b618
    sll        $a2,$a2,0x2
    beqz       $t0, .L0001b4f0
    addu       $v0,$a2,$s5
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
    addu       $v0,$a2,$s5
.L0001b4f0:
    dsrl32     $v1,$s1,0x1f
    lui        $a6,0x0
    dsrl32     $a3,$s1,0x1e
    andi       $a3,$a3,0x1
    addu       $v1,$v1,$v1
    addiu      $a6,$a6,0
    addu       $v1,$v1,$a3
    addu       $at,$a7,$a6
    addu       $v0,$v0,$v1
    addu       $at,$at,$v0
    lb         $at,0($at)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    daddu      $s0,$at,$s0
    and        $ra,$a0,$s0
    beqz       $ra, .L0001b688
    li         $a0,1
.L0001b534:
    b          .L0001b3b8
    li         $s7,-1023
.L0001b53c:
    b          .L0001b120
    move       $a0,$zero
.L0001b544:
    li         $a7,1
    dsll32     $a7,$a7,0x14
    and        $a7,$s0,$a7
    bnez       $a7, .L0001b3b8
    nop
    b          .L0001b198
    li         $t9,1
.L0001b560:
    lb         $t0,0($a2)
    beqz       $t0, .L0001b6b4
    nop
    beqz       $a0, .L0001b6dc
    li         $s0,1
    li         $t1,1
    bne        $a0, $t1, .L0001b0ac
    li         $s0,1
    dsll       $t2,$s1,0x1
    bltz       $t2, .L0001b0a8
    li         $s0,1
    b          .L0001aed8
    dsll32     $s0,$s0,0x14
.L0001b594:
    lw         $a1,844($a5)
    andi       $t8,$a1,0x100
    dsll32     $s7,$s2,0x1f
    bnez       $t8, .L0001b288
    or         $s6,$s7,$s0
    ori        $t9,$a1,0x2008
    sw         $t9,844($a5)
    lw         $a5,-24556($zero)
.L0001b5b4:
    lw         $at,844($a5)
.L0001b5b8:
    ori        $at,$at,0x1004
    sw         $at,844($a5)
    lw         $a5,-24556($zero)
    lw         $ra,844($a5)
    andi       $ra,$ra,0x80
    beqz       $ra, .L0001b5e0
    nop
    jal        post_sig
    li         $a0,8
    lw         $a5,-24556($zero)
.L0001b5e0:
    b          .L0001b3d4
    lbu        $a3,857($a5)
.L0001b5e8:
    beqz       $a0, .L0001b6d4
    nop
.L0001b5f0:
    b          .L0001aed8
    move       $s0,$zero
.L0001b5f8:
    li         $s0,1
    b          .L0001aed8
    dsll32     $s0,$s0,0x14
.L0001b604:
    sw         $t8,844($a5)
    bne        $a0, $a2, .L0001b3d0
    lw         $a5,-24556($zero)
    b          .L0001b5b8
    lw         $at,844($a5)
.L0001b618:
    beqz       $t0, .L0001b63c
    addu       $v0,$a2,$s5
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
    addu       $v0,$a2,$s5
.L0001b63c:
    dsrl32     $v1,$s1,0x1f
    lui        $a6,0x0
    dsrl32     $a4,$s1,0x1e
    andi       $a4,$a4,0x1
    addu       $v1,$v1,$v1
    addiu      $a6,$a6,0
    addu       $v1,$v1,$a4
    addu       $at,$a7,$a6
    addu       $v0,$v0,$v1
    addu       $at,$at,$v0
    lb         $at,0($at)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    daddu      $s0,$at,$s0
    and        $ra,$a0,$s0
    beqz       $ra, .L0001b6e4
    nop
    b          .L0001b534
    move       $a0,$zero
.L0001b688:
    lw         $a1,844($a5)
    andi       $a7,$a1,0x100
    dsll32     $s7,$s2,0x1f
    bnez       $a7, .L0001b288
    or         $s6,$s7,$s0
    ori        $t0,$a1,0x2008
    sw         $t0,844($a5)
    b          .L0001b5b4
    lw         $a5,-24556($zero)
.L0001b6ac:
    b          .L0001b49c
    li         $a2,1
.L0001b6b4:
    beqz       $a0, .L0001b700
    li         $t1,1
    bne        $a0, $t1, .L0001b5f0
    dsll       $t2,$s1,0x1
    bltz       $t2, .L0001b5f0
    nop
    b          .L0001aed8
    move       $s0,$zero
.L0001b6d4:
    b          .L0001aed8
    move       $s0,$zero
.L0001b6dc:
    b          .L0001aed8
    dsll32     $s0,$s0,0x14
.L0001b6e4:
    lw         $a1,844($a5)
    andi       $s6,$a1,0x100
    dsll32     $s7,$s2,0x1f
    bnez       $s6, .L0001b288
    or         $s6,$s7,$s0
    b          .L0001b3d8
    andi       $t8,$a3,0x4
.L0001b700:
    b          .L0001aed8
    move       $s0,$zero

glabel maddrnd_d
    addiu      $sp,$sp,-96
    li         $a6,-1
    sd         $s3,0($sp)
    dsrl       $a6,$a6,0x1
    move       $s3,$a0
    sd         $s2,8($sp)
    and        $at,$a6,$a3
    move       $s2,$a1
    sd         $s0,24($sp)
    move       $s0,$a2
    sd         $s1,16($sp)
    beqz       $at, .L0001b754
    move       $s1,$a3
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$a3,$t9
    or         $s1,$s1,$t8
.L0001b754:
    sd         $ra,32($sp)
    sd         $s4,40($sp)
    lw         $a2,-24556($zero)
    slti       $at,$s2,-1075
    sd         $s5,48($sp)
    li         $a1,-1023
    beqz       $at, .L0001b808
    lbu        $a0,856($a2)
    lbu        $v0,857($a2)
    andi       $v0,$v0,0x2
    beqz       $v0, .L0001ba74
.L0001b780:
    sll        $v1,$a0,0x4
    sll        $a3,$s3,0x3
    lui        $a1,0x0
    addu       $v1,$v1,$a3
    addiu      $a1,$a1,0
    addu       $v1,$v1,$a1
    lb         $v1,0($v1)
    beqz       $v1, .L0001ba6c
    li         $s0,1
    dsll32     $s0,$s0,0x14
.L0001b7a8:
    li         $s5,1
    move       $s1,$s5
.L0001b7b0:
    lw         $t9,844($a2)
    ori        $t9,$t9,0x1004
    sw         $t9,844($a2)
    lw         $t8,-24556($zero)
    lw         $t8,844($t8)
    andi       $t8,$t8,0x80
    beqz       $t8, .L0001b7d8
    nop
    jal        post_sig
    li         $a0,8
.L0001b7d8:
    beq        $s1, $s5, .L0001b9c0
.L0001b7dc:
    dsll32     $v0,$s3,0x1f
.L0001b7e0:
    or         $v0,$s0,$v0
.L0001b7e4:
    ld         $s3,0($sp)
    ld         $s2,8($sp)
    ld         $s4,40($sp)
    ld         $ra,32($sp)
    ld         $s5,48($sp)
    ld         $s1,16($sp)
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,96
.L0001b808:
    slti       $v0,$s2,-1022
    beqz       $v0, .L0001b8a8
    addiu      $t8,$s2,1086
    li         $ra,-1022
    lbu        $t9,857($a2)
    dsllv      $t8,$s0,$t8
    subu       $ra,$ra,$s2
    dsrlv      $s0,$s0,$ra
    andi       $t9,$t9,0x2
    dsrlv      $s1,$s1,$ra
    beqz       $t9, .L0001bb24
    or         $s1,$s1,$t8
    li         $t9,-1
    dsrl       $t9,$t9,0xc
    sltu       $t9,$s0,$t9
    bnez       $t9, .L0001b780
    dsll       $a4,$s1,0x2
    sll        $a1,$s3,0x3
    dsrl32     $a7,$s1,0x1e
    dsrl32     $v0,$s1,0x1f
    andi       $a7,$a7,0x1
    sll        $a6,$v0,0x2
    addu       $a7,$a7,$a7
    addu       $a6,$a6,$a7
    lui        $a5,0x0
    sll        $a3,$a0,0x4
    addiu      $a5,$a5,0
    addu       $a1,$a1,$a6
    addu       $a3,$a3,$a5
    beqz       $a4, .L0001bc18
    addu       $a1,$a1,$a3
    lb         $t0,1($a1)
    beqz       $t0, .L0001bc44
    nop
    beqz       $v0, .L0001bc58
    li         $s5,1
.L0001b898:
    move       $s1,$zero
    li         $s0,1
    b          .L0001b7b0
    dsll32     $s0,$s0,0x14
.L0001b8a8:
    beqz       $s1, .L0001bbb4
    li         $s4,1
.L0001b8b0:
    and        $t8,$a6,$s1
    beqz       $t8, .L0001b8d0
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L0001b8d0:
    sll        $ra,$s3,0x3
    andi       $at,$s0,0x1
    sll        $at,$at,0x2
    dsrl32     $a3,$s1,0x1f
    addu       $ra,$ra,$at
    dsrl32     $a4,$s1,0x1e
    addu       $a3,$a3,$a3
    andi       $a4,$a4,0x1
    addu       $a3,$a3,$a4
    lui        $at,0x0
    addiu      $at,$at,0
    sll        $v1,$a0,0x4
    addu       $ra,$ra,$a3
    addu       $at,$at,$v1
    addu       $ra,$ra,$at
    lb         $ra,0($ra)
    dsll32     $ra,$ra,0x0
    dsrl32     $ra,$ra,0x0
    beq        $s2, $a1, .L0001bbbc
    daddu      $s0,$ra,$s0
    li         $v1,1
.L0001b924:
    dsll32     $v1,$v1,0x15
    and        $v1,$s0,$v1
    beqz       $v1, .L0001b944
    li         $a1,1023
    addiu      $s2,$s2,1
    dsrl       $s0,$s0,0x1
    slti       $v0,$s2,-1022
.L0001b940:
    li         $a1,1023
.L0001b944:
    beqz       $v0, .L0001bb04
    slt        $a1,$a1,$s2
    beqz       $a1, .L0001ba00
    nop
.L0001b954:
    lw         $t8,844($a2)
    ori        $t8,$t8,0x4010
    sw         $t8,844($a2)
    lw         $a2,-24556($zero)
    lui        $s0,0x0
    addu       $t9,$a0,$a0
    lw         $v0,844($a2)
    addiu      $s0,$s0,11152
    addu       $t9,$s3,$t9
    sll        $t9,$t9,0x3
    andi       $t8,$v0,0x200
    addu       $s0,$s0,$t9
    beqz       $t8, .L0001bad8
    ld         $s0,0($s0)
    jal        post_sig
    li         $a0,8
    lw         $ra,-24556($zero)
    lbu        $t9,857($ra)
    ori        $t9,$t9,0x8
    beqz       $s1, .L0001b9b8
    sb         $t9,857($ra)
    lw         $at,-24556($zero)
    lw         $ra,844($at)
    ori        $ra,$ra,0x1004
    sw         $ra,844($at)
.L0001b9b8:
    b          .L0001b7e4
    move       $v0,$s0
.L0001b9c0:
    lw         $v1,-24556($zero)
    lw         $v0,844($v1)
    ori        $v0,$v0,0x2008
    sw         $v0,844($v1)
    lw         $at,-24556($zero)
    lw         $at,844($at)
    andi       $at,$at,0x100
    beqz       $at, .L0001b7e0
    dsll32     $v0,$s3,0x1f
    jal        post_sig
    li         $a0,8
    lw         $a0,-24556($zero)
    lbu        $v1,857($a0)
    ori        $v1,$v1,0x8
    b          .L0001b7dc
    sb         $v1,857($a0)
.L0001ba00:
    lw         $v0,844($a2)
    andi       $a0,$v0,0x100
    beqz       $a0, .L0001bac8
    li         $s5,1
.L0001ba10:
    li         $a0,8
    ori        $a1,$v0,0x2008
    jal        post_sig
    sw         $a1,844($a2)
    lw         $a3,-24556($zero)
    lbu        $a2,857($a3)
    ori        $a2,$a2,0x8
    sb         $a2,857($a3)
.L0001ba30:
    beq        $s4, $s5, .L0001bbe4
.L0001ba34:
    slti       $a3,$s2,-1022
.L0001ba38:
    bnez       $a3, .L0001ba5c
    ld         $a2,-32736($gp)
    addiu      $a1,$s2,1023
    dsll32     $a1,$a1,0x14
    and        $a2,$s0,$a2
    dsll32     $a0,$s3,0x1f
    or         $a1,$a1,$a2
    b          .L0001ba64
    or         $a0,$a0,$a1
.L0001ba5c:
    dsll32     $a0,$s3,0x1f
    or         $a0,$s0,$a0
.L0001ba64:
    b          .L0001b7e4
    move       $v0,$a0
.L0001ba6c:
    b          .L0001b7a8
    move       $s0,$zero
.L0001ba74:
    sll        $s0,$a0,0x4
    sll        $t8,$s3,0x3
    lui        $s5,0x0
    addu       $s0,$s0,$t8
    addiu      $s5,$s5,0
    addu       $s0,$s0,$s5
    lb         $s0,1($s0)
    dsll32     $s0,$s0,0x0
    dsrl32     $s0,$s0,0x0
    li         $a3,1
    dsll32     $a3,$a3,0x14
    and        $a3,$s0,$a3
    beqz       $a3, .L0001bc6c
    li         $s5,1
    move       $s4,$s5
    li         $s1,1
    move       $s2,$a1
    dsll32     $s1,$s1,0x1e
.L0001babc:
    addiu      $s2,$s2,1
    b          .L0001b940
    slti       $v0,$s2,-1022
.L0001bac8:
    bne        $s4, $s5, .L0001ba34
    ori        $t8,$v0,0x2008
    b          .L0001ba30
    sw         $t8,844($a2)
.L0001bad8:
    ori        $ra,$v0,0x1004
    sw         $ra,844($a2)
    lw         $t9,-24556($zero)
    lw         $t9,844($t9)
    andi       $t9,$t9,0x80
    beqz       $t9, .L0001bafc
    nop
    jal        post_sig
    li         $a0,8
.L0001bafc:
    b          .L0001b7e4
    move       $v0,$s0
.L0001bb04:
    bnez       $a1, .L0001b954
    nop
    lw         $at,844($a2)
    andi       $at,$at,0x100
    beqz       $at, .L0001bd08
    nop
    b          .L0001ba30
    li         $s5,1
.L0001bb24:
    sll        $a7,$a0,0x4
    sll        $t0,$s3,0x3
    li         $v0,1
    and        $a3,$a6,$s1
    dsll32     $v0,$v0,0x14
    andi       $a1,$s0,0x1
    beqz       $s1, .L0001bc84
    sll        $a1,$a1,0x2
    beqz       $a3, .L0001bb64
    li         $s5,1
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L0001bb64:
    lui        $at,0x0
    dsrl32     $a3,$s1,0x1f
    addiu      $at,$at,0
    dsrl32     $a4,$s1,0x1e
    addu       $a3,$a3,$a3
    andi       $a4,$a4,0x1
    addu       $v1,$a1,$t0
    addu       $a3,$a3,$a4
    addu       $at,$a7,$at
    addu       $v1,$v1,$a3
    addu       $at,$at,$v1
    lb         $at,0($at)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    daddu      $s0,$at,$s0
    and        $ra,$v0,$s0
    beqz       $ra, .L0001bcf0
    li         $s4,1
.L0001bbac:
    b          .L0001babc
    li         $s2,-1023
.L0001bbb4:
    b          .L0001b8b0
    move       $s4,$zero
.L0001bbbc:
    li         $v1,1
    dsll32     $v1,$v1,0x14
    and        $v1,$s0,$v1
    bnez       $v1, .L0001babc
    nop
    b          .L0001b924
    li         $v1,1
.L0001bbd8:
    ori        $a0,$v0,0x2008
    sw         $a0,844($a2)
    move       $s2,$a1
.L0001bbe4:
    lw         $a3,-24556($zero)
    lw         $a2,844($a3)
    ori        $a2,$a2,0x1004
    sw         $a2,844($a3)
    lw         $a1,-24556($zero)
    lw         $a1,844($a1)
    andi       $a1,$a1,0x80
    beqz       $a1, .L0001ba38
    slti       $a3,$s2,-1022
    jal        post_sig
    li         $a0,8
    b          .L0001ba38
    slti       $a3,$s2,-1022
.L0001bc18:
    lb         $a3,0($a1)
    beqz       $a3, .L0001bd10
    nop
    beqz       $v0, .L0001bd3c
    li         $s5,1
    bne        $s5, $v0, .L0001b898
    dsll       $a4,$s1,0x1
    bltz       $a4, .L0001b898
    li         $s0,1
    b          .L0001bc64
    dsll32     $s0,$s0,0x14
.L0001bc44:
    beqz       $v0, .L0001bd30
    li         $s5,1
.L0001bc4c:
    li         $s1,1
.L0001bc50:
    b          .L0001b7b0
    move       $s0,$zero
.L0001bc58:
    li         $s0,1
    li         $s5,1
    dsll32     $s0,$s0,0x14
.L0001bc64:
    b          .L0001b7b0
    li         $s1,1
.L0001bc6c:
    lw         $v0,844($a2)
    andi       $t8,$v0,0x100
    beqz       $t8, .L0001bbd8
    move       $s4,$s5
    b          .L0001ba10
    move       $s2,$a1
.L0001bc84:
    beqz       $a3, .L0001bca0
    li         $t9,-1
    li         $t8,1
    dsll32     $t9,$t9,0x1f
    dsll32     $t8,$t8,0x1e
    and        $s1,$s1,$t9
    or         $s1,$s1,$t8
.L0001bca0:
    lui        $at,0x0
    dsrl32     $a3,$s1,0x1f
    addiu      $at,$at,0
    dsrl32     $a4,$s1,0x1e
    addu       $a3,$a3,$a3
    andi       $a4,$a4,0x1
    addu       $v1,$a1,$t0
    addu       $a3,$a3,$a4
    addu       $at,$a7,$at
    addu       $v1,$v1,$a3
    addu       $at,$at,$v1
    lb         $at,0($at)
    dsll32     $at,$at,0x0
    dsrl32     $at,$at,0x0
    daddu      $s0,$at,$s0
    and        $ra,$v0,$s0
    beqz       $ra, .L0001bd48
    nop
    b          .L0001bbac
    move       $s4,$zero
.L0001bcf0:
    lw         $v0,844($a2)
    andi       $v1,$v0,0x100
    beqz       $v1, .L0001bd64
    li         $s2,-1023
    b          .L0001ba10
    li         $s4,1
.L0001bd08:
    b          .L0001ba30
    li         $s5,1
.L0001bd10:
    beqz       $v0, .L0001bd74
    li         $s5,1
    bne        $s5, $v0, .L0001bc4c
    dsll       $a0,$s1,0x1
    bltz       $a0, .L0001bc50
    li         $s1,1
    b          .L0001bc64
    move       $s0,$zero
.L0001bd30:
    move       $s0,$zero
    b          .L0001bc64
    li         $s5,1
.L0001bd3c:
    li         $s0,1
    b          .L0001bc64
    dsll32     $s0,$s0,0x14
.L0001bd48:
    lw         $v0,844($a2)
    andi       $t8,$v0,0x100
    beqz       $t8, .L0001ba5c
    move       $s4,$zero
    li         $s5,1
    b          .L0001ba10
    li         $s2,-1023
.L0001bd64:
    li         $s2,-1023
    ori        $t9,$v0,0x2008
    b          .L0001bbe4
    sw         $t9,844($a2)
.L0001bd74:
    b          .L0001bc64
    move       $s0,$zero

glabel VEC_unexp
    lui        $a1,0x0
    addiu      $a1,$a1,11216
    jal        cmn_err
    li         $a0,0

glabel backtouser
    lw         $a0,-24552($zero)
    jal        ktimer_switch
    li         $a1,0
    sb         $zero,-24513($zero)
    ld         $gp,216($k1)
    lw         $k0,-24556($zero)
    lw         $k0,640($k0)
    lw         $t0,700($k0)
    lw         $k0,696($k0)
    sll        $t0,$t0,0x6
    srl        $t0,$t0,0x6
    sll        $k0,$k0,0x6
    srl        $k0,$k0,0x6
    mtc0       $t0,c0_entrylo1
    nop
    mfc0       $t1,c0_entryhi
    lw         $t0,-24556($zero)
    lw         $t0,640($t0)
    lw         $t0,752($t0)
    andi       $t1,$t1,0xff
    or         $t0,$t0,$t1
    mtc0       $t0,c0_entryhi
    li         $t0,3
    mtc0       $t0,c0_index
    mtc0       $k0,c0_entrylo0
    jal        tfi_restore
    nop
    ld         $a0,24($k1)
    ld         $a1,32($k1)
    ld         $a2,40($k1)
    ld         $a3,48($k1)
    ld         $a4,56($k1)
    ld         $a5,64($k1)
    ld         $a6,72($k1)
    ld         $a7,80($k1)
    ld         $s0,120($k1)
    ld         $s1,128($k1)
    ld         $s2,136($k1)
    ld         $s3,144($k1)
    ld         $s4,152($k1)
    ld         $s5,160($k1)
    ld         $s6,168($k1)
    ld         $s7,176($k1)
    ld         $ra,240($k1)
    nop
    ld         $k0,288($k1)
    ld         $at,0($k1)
    mtc0       $k0,c0_epc
    ld         $sp,224($k1)
    ld         $k1,248($k1)
    nop
    mtc0       $k1,c0_sr
    tlbwi
    eret

glabel migrate_timeouts
    jr         $ra
    nop

glabel fpunit_fpload_s
    sll        $v0,$a0,0x2
    lui        $at,0x0
    addu       $at,$at,$v0
    lw         $v0,9880($at)
    jr         $v0
    nop
    mfc1       $v0,$f0
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f1
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f2
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f3
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f4
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f5
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f6
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f7
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f8
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f9
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f10
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f11
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f12
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f13
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f14
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f15
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f16
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f17
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f18
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f19
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f20
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f21
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f22
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f23
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f24
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f25
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f26
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f27
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f28
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f29
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f30
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop
    mfc1       $v0,$f31
    nop
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    jr         $ra
    nop

glabel renorm_d
    ld         $a3,0($a0)
    li         $v1,-1
    dsrl       $v1,$v1,0xb
    li         $v0,1
    and        $v1,$a3,$v1
    dsll32     $v0,$v0,0x14
    beqz       $v1, .L0001c2cc
    and        $v0,$a3,$v0
    beqz       $v0, .L0001c1ec
    li         $a5,4095
    move       $v0,$zero
    jr         $ra
    nop
.L0001c1ec:
    dsll32     $a5,$a5,0x8
    and        $a1,$a5,$a3
    lui        $a6,0x0
    move       $a4,$zero
    li         $a7,15
    bnez       $a1, .L0001c258
    dsll32     $v0,$a7,0x10
    move       $a4,$zero
.L0001c20c:
    dsll       $a3,$a3,0xc
    and        $t0,$a5,$a3
    addiu      $a4,$a4,12
    sd         $a3,0($a0)
    bnez       $t0, .L0001c250
    nop
    dsll       $a3,$a3,0xc
    and        $t1,$a5,$a3
    addiu      $a4,$a4,12
    sd         $a3,0($a0)
    bnez       $t1, .L0001c250
    nop
    dsll       $a3,$a3,0xc
    and        $t2,$a5,$a3
    addiu      $a4,$a4,12
    beqz       $t2, .L0001c20c
    sd         $a3,0($a0)
.L0001c250:
    b          .L0001c25c
    and        $t3,$v0,$a3
.L0001c258:
    and        $t3,$v0,$a3
.L0001c25c:
    bnez       $t3, .L0001c2ac
    dsrl32     $v1,$a3,0x10
.L0001c264:
    dsll       $a3,$a3,0x4
    and        $t8,$v0,$a3
    addiu      $a4,$a4,4
    sd         $a3,0($a0)
    bnez       $t8, .L0001c2a8
    nop
    dsll       $a3,$a3,0x4
    and        $t9,$v0,$a3
    addiu      $a4,$a4,4
    sd         $a3,0($a0)
    bnez       $t9, .L0001c2a8
    nop
    dsll       $a3,$a3,0x4
    and        $at,$v0,$a3
    addiu      $a4,$a4,4
    beqz       $at, .L0001c264
    sd         $a3,0($a0)
.L0001c2a8:
    dsrl32     $v1,$a3,0x10
.L0001c2ac:
    addiu      $v0,$a6,11240
    andi       $v1,$v1,0xf
    addu       $v0,$v0,$v1
    lb         $v0,0($v0)
    dsllv      $v1,$a3,$v0
    addu       $v0,$v0,$a4
    jr         $ra
    sd         $v1,0($a0)
.L0001c2cc:
    jr         $ra
    move       $v0,$zero

glabel VEC_dbe
    lui        $t0,0xb400
    ld         $t1,72($t0)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t1,0($at)
    ld         $t1,64($t0)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t1,0($at)
    ld         $t1,592($t0)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t1,0($at)
    ld         $t1,600($t0)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t1,0($at)
    ld         $t1,88($t0)
    lui        $at,0x0
    addiu      $at,$at,0
    lui        $v0,0xb400
    sd         $t1,0($at)
    sd         $zero,592($v0)
    sd         $zero,72($v0)
    ld         $zero,72($v0)
    ld         $zero,592($v0)
    lui        $v0,0xbf08
    ori        $v0,$v0,0x4
    sw         $zero,0($v0)
    lh         $t0,-24176($zero)
    lw         $zero,0($v0)
    j          VEC_trap
    sd         $t0,320($a0)

glabel renorm_s
    ld         $a3,0($a0)
    lui        $v0,0xff
    ori        $at,$v0,0xffff
    and        $at,$a3,$at
    beqz       $at, .L0001c420
    dsll32     $a4,$a3,0x8
    bgez       $a4, .L0001c384
    and        $v1,$v0,$a3
    move       $v0,$zero
    jr         $ra
    nop
.L0001c384:
    lui        $a6,0x0
    move       $a4,$zero
    bnez       $v1, .L0001c3e4
    lui        $a5,0xf0
    move       $a4,$zero
.L0001c398:
    dsll       $a3,$a3,0x8
    and        $a1,$v0,$a3
    addiu      $a4,$a4,8
    sd         $a3,0($a0)
    bnez       $a1, .L0001c3dc
    nop
    dsll       $a3,$a3,0x8
    and        $a2,$v0,$a3
    addiu      $a4,$a4,8
    sd         $a3,0($a0)
    bnez       $a2, .L0001c3dc
    nop
    dsll       $a3,$a3,0x8
    and        $a7,$v0,$a3
    addiu      $a4,$a4,8
    beqz       $a7, .L0001c398
    sd         $a3,0($a0)
.L0001c3dc:
    b          .L0001c3e8
    and        $t0,$a3,$a5
.L0001c3e4:
    and        $t0,$a3,$a5
.L0001c3e8:
    beqz       $t0, .L0001c410
    addiu      $v0,$a6,11256
.L0001c3f0:
    dsrl       $v1,$a3,0x14
    andi       $v1,$v1,0xf
    addu       $v0,$v0,$v1
    lb         $v0,0($v0)
    dsllv      $t1,$a3,$v0
    addu       $v0,$v0,$a4
    jr         $ra
    sd         $t1,0($a0)
.L0001c410:
    dsll       $a3,$a3,0x4
    addiu      $a4,$a4,4
    b          .L0001c3f0
    sd         $a3,0($a0)
.L0001c420:
    jr         $ra
    move       $v0,$zero

glabel _add_sd
    addiu      $sp,$sp,-96
    sd         $a1,72($sp)
    addiu      $a1,$sp,72
    sd         $a2,80($sp)
    addiu      $a2,$sp,16
    addiu      $a3,$sp,20
    sd         $a0,48($sp)
    addiu      $a4,$sp,24
    addiu      $a5,$sp,80
    addiu      $at,$sp,40
    sw         $at,4($sp)
    addiu      $a6,$sp,32
    sd         $ra,56($sp)
    jal        breakout_and_test2_sd
    addiu      $a7,$sp,36
    beqz       $v0, .L0001c478
    ld         $a0,48($sp)
    ld         $ra,56($sp)
.L0001c470:
    jr         $ra
    addiu      $sp,$sp,96
.L0001c478:
    lw         $a1,16($sp)
    lw         $a2,20($sp)
    ld         $a3,24($sp)
    lw         $a4,32($sp)
    lw         $a5,36($sp)
    jal        add
    ld         $a6,40($sp)
    b          .L0001c470
    ld         $ra,56($sp)

glabel fpunit_fpload_d
    bnez       $a1, .L0001c4bc
    sll        $v0,$a0,0x2
    srl        $v0,$v0,0x1
    lui        $at,0x0
    addu       $at,$at,$v0
    lw         $v0,10008($at)
    jr         $v0
    nop
.L0001c4bc:
    lui        $at,0x0
    addu       $at,$at,$v0
    lw         $v0,10072($at)
    jr         $v0
    nop
    mfc1       $a0,$f0
    mfc1       $v0,$f1
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f2
    mfc1       $v0,$f3
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f4
    mfc1       $v0,$f5
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f6
    mfc1       $v0,$f7
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f8
    mfc1       $v0,$f9
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f10
    mfc1       $v0,$f11
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f12
    mfc1       $v0,$f13
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f14
    mfc1       $v0,$f15
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f16
    mfc1       $v0,$f17
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f18
    mfc1       $v0,$f19
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f20
    mfc1       $v0,$f21
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f22
    mfc1       $v0,$f23
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f24
    mfc1       $v0,$f25
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f26
    mfc1       $v0,$f27
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f28
    mfc1       $v0,$f29
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    mfc1       $a0,$f30
    mfc1       $v0,$f31
    dsll32     $a0,$a0,0x0
    dsrl32     $a0,$a0,0x0
    dsll32     $v0,$v0,0x0
    or         $v0,$v0,$a0
    jr         $ra
    nop
    dmfc1      $v0,$f0
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f1
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f2
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f3
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f4
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f5
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f6
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f7
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f8
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f9
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f10
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f11
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f12
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f13
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f14
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f15
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f16
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f17
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f18
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f19
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f20
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f21
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f22
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f23
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f24
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f25
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f26
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f27
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f28
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f29
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f30
    nop
    jr         $ra
    nop
    dmfc1      $v0,$f31
    nop
    jr         $ra
    nop

glabel _sub_sd
    addiu      $sp,$sp,-96
    sd         $a1,72($sp)
    addiu      $a1,$sp,72
    sd         $a2,80($sp)
    addiu      $a2,$sp,16
    addiu      $a3,$sp,20
    sd         $a0,48($sp)
    addiu      $a4,$sp,24
    addiu      $a5,$sp,80
    addiu      $at,$sp,40
    sw         $at,4($sp)
    addiu      $a6,$sp,32
    sd         $ra,56($sp)
    jal        breakout_and_test2_sd
    addiu      $a7,$sp,36
    beqz       $v0, .L0001c920
    ld         $a0,48($sp)
    ld         $ra,56($sp)
.L0001c918:
    jr         $ra
    addiu      $sp,$sp,96
.L0001c920:
    lw         $a1,16($sp)
    lw         $a2,20($sp)
    ld         $a3,24($sp)
    lw         $a4,32($sp)
    lw         $a5,36($sp)
    ld         $a6,40($sp)
    jal        add
    xori       $a4,$a4,0x1
    b          .L0001c918
    ld         $ra,56($sp)

glabel _mul_sd
    addiu      $sp,$sp,-128
    sd         $s0,72($sp)
    move       $s0,$a0
    addiu      $a7,$sp,36
    addiu      $a6,$sp,32
    addiu      $a5,$sp,112
    sd         $a1,104($sp)
    addiu      $a4,$sp,24
    addiu      $a3,$sp,20
    sd         $a2,112($sp)
    addiu      $a2,$sp,16
    addiu      $a1,$sp,104
    sd         $ra,80($sp)
    nop
    addiu      $at,$sp,40
    jal        breakout_and_test2_sd
    sw         $at,4($sp)
    bnez       $v0, .L0001ca3c
    sd         $s1,88($sp)
    sll        $s1,$s0,0x2
    addiu      $a0,$gp,0
    addu       $a0,$s1,$a0
    lw         $a0,0($a0)
    lw         $a6,20($sp)
    bne        $a0, $a6, .L0001ca50
    lw         $a3,36($sp)
    beq        $a0, $a3, .L0001cbd4
    nop
    bnez       $a3, .L0001ca14
    addiu      $a3,$gp,0
    ld         $a1,40($sp)
    bnez       $a1, .L0001ca14
    addiu      $a3,$gp,0
    lw         $a4,-24556($zero)
    lui        $a5,0x1
    lw         $a3,844($a4)
    ori        $a5,$a5,0x40
    or         $a3,$a3,$a5
    sw         $a3,844($a4)
    lw         $a2,-24556($zero)
    lw         $a2,844($a2)
    andi       $a2,$a2,0x800
    beqz       $a2, .L0001cc6c
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001ca40
    ld         $ra,80($sp)
    addiu      $a3,$gp,0
.L0001ca14:
    lwu        $a2,32($sp)
    addu       $a3,$s1,$a3
    lw         $a3,0($a3)
    ld         $a1,104($sp)
    move       $a0,$s0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    xor        $a1,$a1,$a2
    jal        store_fpcsr
    nop
.L0001ca3c:
    ld         $ra,80($sp)
.L0001ca40:
    ld         $s1,88($sp)
    ld         $s0,72($sp)
    jr         $ra
    addiu      $sp,$sp,128
.L0001ca50:
    bne        $a0, $a3, .L0001caac
    nop
    bnez       $a6, .L0001cba4
    addiu      $a3,$gp,0
    ld         $a4,24($sp)
    bnez       $a4, .L0001cba0
    lui        $t0,0x1
    lw         $a7,-24556($zero)
    lw         $a6,844($a7)
    ori        $t0,$t0,0x40
    or         $a6,$a6,$t0
    sw         $a6,844($a7)
    lw         $a5,-24556($zero)
    lw         $a5,844($a5)
    andi       $a5,$a5,0x800
    beqz       $a5, .L0001cd04
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001ca40
    ld         $ra,80($sp)
.L0001caac:
    beqz       $a6, .L0001cc08
    ld         $a4,24($sp)
.L0001cab4:
    beqz       $a3, .L0001cc18
    ld         $a5,40($sp)
.L0001cabc:
    beqz       $a6, .L0001cc94
    sll        $t1,$s0,0x3
    addiu      $a2,$gp,0
    lui        $a0,0x0
    ld         $t2,24($sp)
    addu       $t3,$s1,$a2
    addiu      $a0,$a0,0
    lw         $t3,0($t3)
    addu       $t1,$a0,$t1
    ld         $t1,0($t1)
    subu       $a6,$a6,$t3
    sw         $a6,20($sp)
    or         $t1,$t1,$t2
    beqz       $a3, .L0001ccd0
    sd         $t1,24($sp)
.L0001caf8:
    addu       $a5,$s1,$a2
    sll        $a1,$s0,0x3
    lw         $a5,0($a5)
    addu       $a1,$a0,$a1
    ld         $a1,0($a1)
    ld         $a4,40($sp)
    subu       $a3,$a3,$a5
    sw         $a3,36($sp)
    or         $a1,$a1,$a4
    sd         $a1,40($sp)
.L0001cb20:
    beqz       $s0, .L0001cc58
    ld         $a0,24($sp)
.L0001cb28:
    lw         $t0,32($sp)
    lw         $a7,16($sp)
    addiu      $a2,$sp,48
    addu       $s0,$a3,$a6
    xor        $a6,$a7,$t0
    jal        mul64
    sd         $a6,64($sp)
    addiu      $a0,$sp,56
    jal        renorm_d
    sd         $v0,56($sp)
    ld         $a4,48($sp)
    ld         $a0,64($sp)
    li         $t1,11
    li         $a5,64
    ld         $a2,56($sp)
    subu       $a5,$a5,$v0
    dsllv      $a3,$a4,$v0
    sd         $a3,48($sp)
    dsrlv      $a4,$a4,$a5
    or         $a2,$a2,$a4
    bne        $v0, $t1, .L0001cb84
    sd         $a2,56($sp)
    addiu      $s0,$s0,1
.L0001cb84:
    addiu      $a6,$gp,0
    addu       $a6,$s1,$a6
    lw         $a6,0($a6)
    jalr       $a6
    move       $a1,$s0
    b          .L0001ca40
    ld         $ra,80($sp)
.L0001cba0:
    addiu      $a3,$gp,0
.L0001cba4:
    lwu        $a2,16($sp)
    addu       $a3,$s1,$a3
    lw         $a3,0($a3)
    ld         $a1,112($sp)
    move       $a0,$s0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    xor        $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001ca40
    ld         $ra,80($sp)
.L0001cbd4:
    addiu      $a3,$gp,0
    lwu        $a2,16($sp)
    addu       $a3,$s1,$a3
    lw         $a3,0($a3)
    ld         $a1,112($sp)
    move       $a0,$s0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    xor        $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001ca40
    ld         $ra,80($sp)
.L0001cc08:
    bnez       $a4, .L0001cab4
    nop
    b          .L0001cc20
    lw         $a2,32($sp)
.L0001cc18:
    bnez       $a5, .L0001cabc
    lw         $a2,32($sp)
.L0001cc20:
    lw         $a1,16($sp)
    xor        $a1,$a1,$a2
    addiu      $a2,$gp,0
    dsll32     $a1,$a1,0x0
    addu       $a2,$s1,$a2
    dsrl32     $a1,$a1,0x0
    lw         $a2,0($a2)
    move       $a0,$s0
    jal        fpstore_sd
    dsllv      $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001ca40
    ld         $ra,80($sp)
.L0001cc58:
    dsll       $a1,$a1,0x1d
    sd         $a1,40($sp)
    dsll       $a0,$a0,0x1d
    b          .L0001cb28
    sd         $a0,24($sp)
.L0001cc6c:
    sll        $a2,$s0,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0001ca40
    ld         $ra,80($sp)
.L0001cc94:
    addiu      $a2,$gp,0
    addu       $a2,$s1,$a2
    lw         $a2,0($a2)
    jalr       $a2
    addiu      $a0,$sp,24
    addiu      $a6,$gp,0
    lw         $a3,36($sp)
    addu       $a6,$s1,$a6
    lui        $a0,0x0
    lw         $a6,0($a6)
    addiu      $a2,$gp,0
    addiu      $a0,$a0,0
    subu       $a6,$a6,$v0
    bnez       $a3, .L0001caf8
    sw         $a6,20($sp)
.L0001ccd0:
    addiu      $a7,$gp,0
    addu       $a7,$s1,$a7
    lw         $a7,0($a7)
    jalr       $a7
    addiu      $a0,$sp,40
    addiu      $a3,$gp,0
    lw         $a6,20($sp)
    addu       $a3,$s1,$a3
    lw         $a3,0($a3)
    ld         $a1,40($sp)
    subu       $a3,$a3,$v0
    b          .L0001cb20
    sw         $a3,36($sp)
.L0001cd04:
    sll        $a2,$s0,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    move       $a0,$s0
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0001ca40
    ld         $ra,80($sp)

glabel _abs_sd
    sll        $a3,$a0,0x3
    addiu      $sp,$sp,-32
    addiu      $a4,$gp,0
    sd         $a0,0($sp)
    sll        $a2,$a0,0x2
    lui        $a6,0x0
    sd         $a3,16($sp)
    addiu      $a6,$a6,0
    addu       $a4,$a2,$a4
    lw         $a4,0($a4)
    addu       $a3,$a3,$a6
    addiu      $a6,$gp,0
    move       $a5,$a1
    ld         $a3,0($a3)
    addu       $a2,$a2,$a6
    lw         $a2,0($a2)
    dsrav      $a4,$a5,$a4
    sd         $a1,8($sp)
    and        $a3,$a3,$a5
    sll        $a4,$a4,0x0
    sd         $ra,24($sp)
    jal        screen_nan_sd
    and        $a2,$a2,$a4
    beqz       $v0, .L0001cd9c
    ld         $a2,16($sp)
    ld         $ra,24($sp)
.L0001cd94:
    jr         $ra
    addiu      $sp,$sp,32
.L0001cd9c:
    lui        $a3,0x0
    addiu      $a3,$a3,0
    addu       $a2,$a2,$a3
    ld         $a2,0($a2)
    ld         $a1,8($sp)
    nor        $a2,$a2,$zero
    ld         $a0,0($sp)
    jal        fpstore_sd
    and        $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001cd94
    ld         $ra,24($sp)

glabel _neg_sd
    sll        $a3,$a0,0x3
    addiu      $sp,$sp,-32
    addiu      $a4,$gp,0
    sd         $a0,0($sp)
    sll        $a2,$a0,0x2
    lui        $a6,0x0
    sd         $a3,16($sp)
    addiu      $a6,$a6,0
    addu       $a4,$a2,$a4
    lw         $a4,0($a4)
    addu       $a3,$a3,$a6
    addiu      $a6,$gp,0
    move       $a5,$a1
    ld         $a3,0($a3)
    addu       $a2,$a2,$a6
    lw         $a2,0($a2)
    dsrav      $a4,$a5,$a4
    sd         $a1,8($sp)
    and        $a3,$a3,$a5
    sll        $a4,$a4,0x0
    sd         $ra,24($sp)
    jal        screen_nan_sd
    and        $a2,$a2,$a4
    beqz       $v0, .L0001ce40
    ld         $a1,16($sp)
    ld         $ra,24($sp)
.L0001ce38:
    jr         $ra
    addiu      $sp,$sp,32
.L0001ce40:
    lui        $a2,0x0
    addiu      $a2,$a2,0
    addu       $a1,$a1,$a2
    ld         $a2,8($sp)
    ld         $a1,0($a1)
    ld         $a0,0($sp)
    jal        fpstore_sd
    xor        $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001ce38
    ld         $ra,24($sp)

glabel _div_sd
    addiu      $sp,$sp,-112
    sd         $s1,48($sp)
    move       $s1,$a0
    addiu      $a7,$sp,36
    addiu      $a6,$sp,32
    addiu      $a5,$sp,96
    sd         $a1,88($sp)
    addiu      $a4,$sp,24
    addiu      $a3,$sp,20
    sd         $a2,96($sp)
    addiu      $a2,$sp,16
    addiu      $a1,$sp,88
    sd         $ra,56($sp)
    nop
    addiu      $at,$sp,40
    jal        breakout_and_test2_sd
    sw         $at,4($sp)
    bnez       $v0, .L0001cf68
    sd         $s0,64($sp)
    sll        $s0,$s1,0x2
    addiu      $a1,$gp,0
    addu       $a1,$s0,$a1
    lw         $a1,0($a1)
    lw         $a2,20($sp)
    bne        $a1, $a2, .L0001cf7c
    lw         $a0,36($sp)
    bne        $a1, $a0, .L0001d18c
    addiu      $a3,$gp,0
    lw         $a4,-24556($zero)
    lui        $a5,0x1
    lw         $a3,844($a4)
    ori        $a5,$a5,0x40
    or         $a3,$a3,$a5
    sw         $a3,844($a4)
    lw         $a2,-24556($zero)
    lw         $a2,844($a2)
    andi       $a2,$a2,0x800
    beqz       $a2, .L0001d164
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001cf6c
    ld         $ra,56($sp)
.L0001cf24:
    beqz       $a5, .L0001cf34
    li         $a6,1
    dsll32     $a6,$a6,0x1e
    or         $a3,$a3,$a6
.L0001cf34:
    bnez       $s1, .L0001cf50
    addiu      $a5,$gp,0
    dsrl32     $a7,$a3,0x3
    dsll       $a2,$a2,0x1d
    dsll       $a3,$a3,0x1d
    or         $a2,$a7,$a2
    addiu      $a5,$gp,0
.L0001cf50:
    lw         $a4,32($sp)
    addu       $a5,$s0,$a5
    lw         $a5,0($a5)
    lw         $a0,16($sp)
    jalr       $a5
    xor        $a0,$a0,$a4
.L0001cf68:
    ld         $ra,56($sp)
.L0001cf6c:
    ld         $s1,48($sp)
    ld         $s0,64($sp)
    jr         $ra
    addiu      $sp,$sp,112
.L0001cf7c:
    beq        $a1, $a0, .L0001d1bc
    nop
    beqz       $a0, .L0001d118
    ld         $a1,40($sp)
.L0001cf8c:
    beqz       $a2, .L0001d0a4
    ld         $a5,24($sp)
    sll        $a7,$s1,0x3
    addiu      $a3,$gp,0
    lui        $a1,0x0
    addu       $t0,$s0,$a3
    addiu      $a1,$a1,0
    lw         $t0,0($t0)
    addu       $a7,$a1,$a7
    ld         $a7,0($a7)
    subu       $a2,$a2,$t0
    sw         $a2,20($sp)
    or         $a7,$a7,$a5
    beqz       $a0, .L0001d0e4
    sd         $a7,24($sp)
.L0001cfc8:
    addu       $t0,$s0,$a3
    sll        $a6,$s1,0x3
    lw         $t0,0($t0)
    addu       $a6,$a1,$a6
    ld         $a6,0($a6)
    ld         $a7,40($sp)
    subu       $a0,$a0,$t0
    sw         $a0,36($sp)
    or         $a6,$a6,$a7
    sd         $a6,40($sp)
.L0001cff0:
    ld         $a5,24($sp)
    sltu       $t1,$a5,$a6
    beqz       $t1, .L0001d00c
    subu       $a1,$a2,$a0
    addiu      $a1,$a1,-1
    dsll       $a5,$a5,0x1
    sd         $a5,24($sp)
.L0001d00c:
    addiu      $a7,$gp,0
    addu       $a7,$s0,$a7
    lw         $a7,0($a7)
    bltz       $a7, .L0001d1f8
    move       $a3,$zero
    b          .L0001d300
    move       $a2,$zero
.L0001d028:
    addiu      $a3,$a3,1
    dsll       $a5,$a5,0x1
    sd         $a5,24($sp)
    bnez       $t0, .L0001d084
    sltu       $a4,$a5,$a6
    dsll       $a2,$a2,0x1
.L0001d040:
    slt        $t0,$a7,$a3
    bnez       $a4, .L0001d058
    addiu      $a3,$a3,1
    dsubu      $a5,$a5,$a6
    sd         $a5,24($sp)
    ori        $a2,$a2,0x1
.L0001d058:
    dsll       $a5,$a5,0x1
    sd         $a5,24($sp)
    bnez       $t0, .L0001d084
    sltu       $t1,$a5,$a6
    slt        $t0,$a7,$a3
    bnez       $t1, .L0001d028
    dsll       $a2,$a2,0x1
    dsubu      $a5,$a5,$a6
    sd         $a5,24($sp)
    b          .L0001d028
    ori        $a2,$a2,0x1
.L0001d084:
    sltu       $t2,$a5,$a6
    bnez       $t2, .L0001cf24
    move       $a3,$zero
    dsubu      $a5,$a5,$a6
    sd         $a5,24($sp)
    li         $a3,-1
    b          .L0001cf24
    dsll32     $a3,$a3,0x1f
.L0001d0a4:
    beqz       $a5, .L0001d200
    addiu      $a4,$gp,0
    addu       $a4,$s0,$a4
    lw         $a4,0($a4)
    jalr       $a4
    addiu      $a0,$sp,24
    addiu      $a2,$gp,0
    lw         $a0,36($sp)
    addu       $a2,$s0,$a2
    lui        $a1,0x0
    lw         $a2,0($a2)
    addiu      $a3,$gp,0
    addiu      $a1,$a1,0
    subu       $a2,$a2,$v0
    bnez       $a0, .L0001cfc8
    sw         $a2,20($sp)
.L0001d0e4:
    addiu      $a3,$gp,0
    addu       $a3,$s0,$a3
    lw         $a3,0($a3)
    jalr       $a3
    addiu      $a0,$sp,40
    addiu      $a0,$gp,0
    lw         $a2,20($sp)
    addu       $a0,$s0,$a0
    lw         $a0,0($a0)
    ld         $a6,40($sp)
    subu       $a0,$a0,$v0
    b          .L0001cff0
    sw         $a0,36($sp)
.L0001d118:
    bnez       $a1, .L0001cf8c
    nop
    beqz       $a2, .L0001d23c
    ld         $a3,24($sp)
.L0001d128:
    lw         $a4,-24556($zero)
    lw         $a3,844($a4)
    ori        $a3,$a3,0x8020
    sw         $a3,844($a4)
    lw         $a2,-24556($zero)
    lw         $a2,844($a2)
    andi       $a2,$a2,0x400
    beqz       $a2, .L0001d288
    lw         $a5,32($sp)
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001cf6c
    ld         $ra,56($sp)
.L0001d164:
    sll        $a2,$s1,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    move       $a0,$s1
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0001cf6c
    ld         $ra,56($sp)
.L0001d18c:
    lwu        $a2,32($sp)
    addu       $a3,$s0,$a3
    lw         $a3,0($a3)
    ld         $a1,88($sp)
    move       $a0,$s1
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    xor        $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001cf6c
    ld         $ra,56($sp)
.L0001d1bc:
    lw         $a2,32($sp)
    lw         $a1,16($sp)
    xor        $a1,$a1,$a2
    addiu      $a2,$gp,0
    dsll32     $a1,$a1,0x0
    addu       $a2,$s0,$a2
    dsrl32     $a1,$a1,0x0
    lw         $a2,0($a2)
    move       $a0,$s1
    jal        fpstore_sd
    dsllv      $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001cf6c
    ld         $ra,56($sp)
.L0001d1f8:
    b          .L0001d084
    move       $a2,$zero
.L0001d200:
    lw         $a2,32($sp)
    lw         $a1,16($sp)
    xor        $a1,$a1,$a2
    addiu      $a2,$gp,0
    dsll32     $a1,$a1,0x0
    addu       $a2,$s0,$a2
    dsrl32     $a1,$a1,0x0
    lw         $a2,0($a2)
    move       $a0,$s1
    jal        fpstore_sd
    dsllv      $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001cf6c
    ld         $ra,56($sp)
.L0001d23c:
    bnez       $a3, .L0001d128
    nop
    lw         $a6,-24556($zero)
    lui        $a7,0x1
    lw         $a5,844($a6)
    ori        $a7,$a7,0x40
    or         $a5,$a5,$a7
    sw         $a5,844($a6)
    lw         $a4,-24556($zero)
    lw         $a4,844($a4)
    andi       $a4,$a4,0x800
    beqz       $a4, .L0001d2d8
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L0001cf6c
    ld         $ra,56($sp)
.L0001d288:
    sll        $a4,$s1,0x3
    lui        $a1,0x0
    lw         $a2,16($sp)
    addiu      $a3,$gp,0
    addiu      $a1,$a1,0
    addu       $a3,$s0,$a3
    xor        $a2,$a2,$a5
    lw         $a3,0($a3)
    addu       $a1,$a1,$a4
    dsll32     $a2,$a2,0x0
    ld         $a1,0($a1)
    dsrl32     $a2,$a2,0x0
    move       $a0,$s1
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    or         $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L0001cf6c
    ld         $ra,56($sp)
.L0001d2d8:
    sll        $a2,$s1,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    move       $a0,$s1
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L0001cf6c
    ld         $ra,56($sp)
.L0001d300:
    addiu      $a3,$a3,1
    sltu       $a4,$a5,$a6
    b          .L0001d040
    dsll       $a2,$a2,0x1

glabel dumptlb
    lw         $a1,0($gp)
    addiu      $sp,$sp,-64
    sd         $s4,32($sp)
    lw         $a3,0($gp)
    sd         $s5,16($sp)
    move       $s5,$a0
    sd         $s0,8($sp)
    sll        $a2,$a0,0x7
    sd         $ra,0($sp)
    addu       $a2,$a2,$a0
    beqz       $a3, .L0001d460
    sll        $a2,$a2,0x3
    sd         $s2,48($sp)
    addu       $s4,$a3,$a2
    sd         $s1,24($sp)
    addiu      $s1,$s4,20
    sd         $s3,40($sp)
    blez       $a1, .L0001d394
    addiu      $s3,$s4,16
    addiu      $s2,$s4,8
    move       $s0,$zero
.L0001d364:
    move       $a0,$s0
    move       $a1,$s2
    move       $a2,$s3
    jal        tlbgetent
    move       $a3,$s1
    lw         $a3,0($gp)
    addiu      $s0,$s0,1
    slt        $a3,$s0,$a3
    addiu      $s2,$s2,16
    addiu      $s3,$s3,16
    bnez       $a3, .L0001d364
    addiu      $s1,$s1,16
.L0001d394:
    sll        $a5,$s5,0x8
    ori        $a5,$a5,0x1
    sw         $a5,0($s4)
    lw         $t0,0($gp)
    li         $t8,1
    addiu      $t9,$s4,16
    ld         $s2,48($sp)
    slti       $a4,$t0,2
    li         $t2,-8192
    ld         $s3,40($sp)
    li         $t1,-7937
    ld         $s1,24($sp)
    bnez       $a4, .L0001d460
    lui        $a5,0x8000
    addiu      $ra,$t0,-1
    move       $t3,$s4
    move       $s0,$zero
    b          .L0001d478
    slt        $a1,$t8,$t0
.L0001d3e0:
    ld         $a6,8($a2)
    and        $at,$t2,$a6
    addiu      $a2,$a2,16
    beq        $a5, $at, .L0001d3fc
    and        $a6,$t1,$a6
    beq        $a7, $a6, .L0001d450
    move       $a1,$s5
.L0001d3fc:
    addiu      $a3,$a3,1
    slt        $v0,$a3,$t0
    bnez       $v0, .L0001d3e0
    nop
.L0001d40c:
    addiu      $s0,$s0,1
.L0001d410:
    slt        $v1,$s0,$ra
    addiu      $t8,$t8,1
    beqz       $v1, .L0001d460
    slt        $a1,$t8,$t0
    ld         $a6,8($t3)
.L0001d424:
    addiu      $t3,$t3,16
    move       $a2,$t9
    and        $a0,$t2,$a6
    addiu      $t9,$t9,16
    move       $a3,$t8
    beq        $a5, $a0, .L0001d40c
    and        $a7,$t1,$a6
    bnez       $a1, .L0001d3e0
    nop
    b          .L0001d410
    addiu      $s0,$s0,1
.L0001d450:
    move       $a2,$s0
    lui        $a0,0x0
    jal        printf
    addiu      $a0,$a0,10200
.L0001d460:
    ld         $ra,0($sp)
    ld         $s4,32($sp)
    ld         $s0,8($sp)
    ld         $s5,16($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0001d478:
    b          .L0001d424
    ld         $a6,8($t3)

glabel checkAllTlbsDumped
    addiu      $sp,$sp,-32
    lw         $at,0($gp)
    sd         $ra,16($sp)
    sd         $s0,8($sp)
    move       $s0,$zero
    beqz       $at, .L0001d4d0
    sd         $s1,0($sp)
    lw         $a3,0($gp)
    blez       $a3, .L0001d4d0
    move       $s1,$zero
.L0001d4a8:
    lw         $a1,0($gp)
    addu       $a1,$a1,$s0
.L0001d4b0:
    lw         $a4,0($a1)
    addiu      $a1,$a1,1032
    addiu      $a2,$s1,1
    beqz       $a4, .L0001d4e4
    slt        $a5,$a2,$a3
    addiu      $s0,$s0,1032
    bnez       $a5, .L0001d4b0
    move       $s1,$a2
.L0001d4d0:
    ld         $ra,16($sp)
.L0001d4d4:
    ld         $s0,8($sp)
    ld         $s1,0($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0001d4e4:
    lui        $a0,0x0
    move       $a1,$s1
    addiu      $a0,$a0,10200
    jal        printf
    addiu      $a0,$a0,56
    lw         $a3,0($gp)
    addiu      $s1,$s1,1
    slt        $a1,$s1,$a3
    bnez       $a1, .L0001d4a8
    addiu      $s0,$s0,1032
    b          .L0001d4d4
    ld         $ra,16($sp)

glabel flash_getenv
    li         $a2,5
    move       $a1,$a0
    lui        $a0,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        strncmp
    addiu      $a0,$a0,10304
    beqz       $v0, .L0001d544
    ld         $ra,0($sp)
    move       $v0,$zero
.L0001d53c:
    jr         $ra
    addiu      $sp,$sp,16
.L0001d544:
    b          .L0001d53c
    lw         $v0,-32452($gp)

glabel flash_nvram_tab
    jr         $ra
    nop

glabel vice_err
    jr         $ra
    move       $v0,$zero

glabel VEC_nofault
    move       $a2,$s0
    jal        trap_nofault
    move       $s1,$k1
    j          exception_exit
    move       $k1,$s1

glabel VEC_cpfault
    andi       $a1,$s0,0x18
    beqz       $a1, .L0001d8dc
    move       $s5,$k1
    lui        $at,0x3000
    and        $a1,$a3,$at
    srl        $a1,$a1,0x1c
    li         $at,1
    bne        $a1, $at, .L0001d8d4
    nop
    lw         $a1,-24556($zero)
    lui        $at,0x2000
    or         $a2,$s0,$at
    lw         $t0,640($a1)
    sw         $gp,312($t0)
    sd         $a2,248($k1)
    lw         $a2,-24056($zero)
    addiu      $t0,$t0,0
    beq        $a2, $a1, .L0001d8cc
    nop
    beqz       $a2, .L0001d720
    nop
    lw         $t0,508($a2)
    lb         $t0,92($t0)
    andi       $t0,$t0,0xc
    beqz       $t0, .L0001d5dc
    nop
    lui        $t0,0x400
.L0001d5dc:
    andi       $t3,$s0,0xff00
    lui        $at,0x2000
    or         $t3,$t3,$at
    or         $t3,$t3,$t0
    mtc0       $t3,c0_sr
    lw         $a3,640($a2)
    cfc1       $a1,c1_fcsr
    sw         $a1,304($a3)
    bnez       $t0, .L0001d6a0
    nop
    swc1       $f31,292($a3)
    swc1       $f30,284($a3)
    swc1       $f29,276($a3)
    swc1       $f28,268($a3)
    swc1       $f27,260($a3)
    swc1       $f26,252($a3)
    swc1       $f25,244($a3)
    swc1       $f24,236($a3)
    swc1       $f23,228($a3)
    swc1       $f22,220($a3)
    swc1       $f21,212($a3)
    swc1       $f20,204($a3)
    swc1       $f19,196($a3)
    swc1       $f18,188($a3)
    swc1       $f17,180($a3)
    swc1       $f16,172($a3)
    swc1       $f15,164($a3)
    swc1       $f14,156($a3)
    swc1       $f13,148($a3)
    swc1       $f12,140($a3)
    swc1       $f11,132($a3)
    swc1       $f10,124($a3)
    swc1       $f9,116($a3)
    swc1       $f8,108($a3)
    swc1       $f7,100($a3)
    swc1       $f6,92($a3)
    swc1       $f5,84($a3)
    swc1       $f4,76($a3)
    swc1       $f3,68($a3)
    swc1       $f2,60($a3)
    swc1       $f1,52($a3)
    swc1       $f0,44($a3)
    b          .L0001d720
    nop
.L0001d6a0:
    sdc1       $f31,288($a3)
    sdc1       $f30,280($a3)
    sdc1       $f29,272($a3)
    sdc1       $f28,264($a3)
    sdc1       $f27,256($a3)
    sdc1       $f26,248($a3)
    sdc1       $f25,240($a3)
    sdc1       $f24,232($a3)
    sdc1       $f23,224($a3)
    sdc1       $f22,216($a3)
    sdc1       $f21,208($a3)
    sdc1       $f20,200($a3)
    sdc1       $f19,192($a3)
    sdc1       $f18,184($a3)
    sdc1       $f17,176($a3)
    sdc1       $f16,168($a3)
    sdc1       $f15,160($a3)
    sdc1       $f14,152($a3)
    sdc1       $f13,144($a3)
    sdc1       $f12,136($a3)
    sdc1       $f11,128($a3)
    sdc1       $f10,120($a3)
    sdc1       $f9,112($a3)
    sdc1       $f8,104($a3)
    sdc1       $f7,96($a3)
    sdc1       $f6,88($a3)
    sdc1       $f5,80($a3)
    sdc1       $f4,72($a3)
    sdc1       $f3,64($a3)
    sdc1       $f2,56($a3)
    sdc1       $f1,48($a3)
    sdc1       $f0,40($a3)
.L0001d720:
    lw         $t0,-24556($zero)
    lw         $a3,640($t0)
    lw         $t0,508($t0)
    lb         $t0,92($t0)
    addiu      $a3,$a3,0
    andi       $t0,$t0,0xc
    beqz       $t0, .L0001d744
    nop
    lui        $t0,0x400
.L0001d744:
    andi       $a2,$s0,0xff00
    lui        $at,0x2000
    or         $a2,$a2,$at
    or         $a2,$a2,$t0
    mtc0       $a2,c0_sr
    bnez       $t0, .L0001d7f0
    nop
    lwc1       $f0,44($a3)
    lwc1       $f1,52($a3)
    lwc1       $f2,60($a3)
    lwc1       $f3,68($a3)
    lwc1       $f4,76($a3)
    lwc1       $f5,84($a3)
    lwc1       $f6,92($a3)
    lwc1       $f7,100($a3)
    lwc1       $f8,108($a3)
    lwc1       $f9,116($a3)
    lwc1       $f10,124($a3)
    lwc1       $f11,132($a3)
    lwc1       $f12,140($a3)
    lwc1       $f13,148($a3)
    lwc1       $f14,156($a3)
    lwc1       $f15,164($a3)
    lwc1       $f16,172($a3)
    lwc1       $f17,180($a3)
    lwc1       $f18,188($a3)
    lwc1       $f19,196($a3)
    lwc1       $f20,204($a3)
    lwc1       $f21,212($a3)
    lwc1       $f22,220($a3)
    lwc1       $f23,228($a3)
    lwc1       $f24,236($a3)
    lwc1       $f25,244($a3)
    lwc1       $f26,252($a3)
    lwc1       $f27,260($a3)
    lwc1       $f28,268($a3)
    lwc1       $f29,276($a3)
    lwc1       $f30,284($a3)
    lwc1       $f31,292($a3)
    b          .L0001d870
    nop
.L0001d7f0:
    ldc1       $f0,40($a3)
    ldc1       $f1,48($a3)
    ldc1       $f2,56($a3)
    ldc1       $f3,64($a3)
    ldc1       $f4,72($a3)
    ldc1       $f5,80($a3)
    ldc1       $f6,88($a3)
    ldc1       $f7,96($a3)
    ldc1       $f8,104($a3)
    ldc1       $f9,112($a3)
    ldc1       $f10,120($a3)
    ldc1       $f11,128($a3)
    ldc1       $f12,136($a3)
    ldc1       $f13,144($a3)
    ldc1       $f14,152($a3)
    ldc1       $f15,160($a3)
    ldc1       $f16,168($a3)
    ldc1       $f17,176($a3)
    ldc1       $f18,184($a3)
    ldc1       $f19,192($a3)
    ldc1       $f20,200($a3)
    ldc1       $f21,208($a3)
    ldc1       $f22,216($a3)
    ldc1       $f23,224($a3)
    ldc1       $f24,232($a3)
    ldc1       $f25,240($a3)
    ldc1       $f26,248($a3)
    ldc1       $f27,256($a3)
    ldc1       $f28,264($a3)
    ldc1       $f29,272($a3)
    ldc1       $f30,280($a3)
    ldc1       $f31,288($a3)
.L0001d870:
    ctc1       $zero,c1_fcsr
    lw         $a2,304($a3)
    nop
    andi       $a1,$a2,0xf80
    ori        $a1,$a1,0x1000
    sll        $a1,$a1,0x5
    lui        $at,0x3
    ori        $at,$at,0xf000
    and        $a3,$a2,$at
    and        $a3,$a3,$a1
    xor        $a2,$a2,$a3
    ctc1       $a2,c1_fcsr
    lw         $a3,-24556($zero)
    nop
    sw         $a3,-24056($zero)
    andi       $a2,$s0,0xff00
    mtc0       $a2,c0_sr
    j          exception_exit
    move       $k1,$s5
.L0001d8cc:
    j          exception_exit
    nop
.L0001d8d4:
    j          VEC_trap
    li         $a1,140
.L0001d8dc:
    lui        $a1,0x0
    ld         $a2,288($k1)
    move       $a3,$k1
    addiu      $a1,$a1,11272
    jal        cmn_err
    li         $a0,0

glabel hwperf_init
    addiu      $sp,$sp,-32
    sd         $ra,0($sp)
    jal        get_cpu_irr
    nop
    sra        $at,$v0,0x8
    slti       $at,$at,35
    beqz       $at, .L0001d9c4
    sd         $s2,24($sp)
    lui        $a0,0x0
    lui        $s2,0x0
    addiu      $a0,$a0,4640
    addiu      $s2,$s2,10336
    addiu      $a0,$a0,4
    sd         $s0,16($sp)
    jal        spinlock_init
    move       $a1,$s2
    sw         $zero,-32468($gp)
    lui        $t8,0x0
    sd         $s1,8($sp)
    addiu      $t8,$t8,4640
    sw         $zero,0($t8)
    lw         $a1,0($gp)
    li         $t9,1
    sh         $t9,8($t8)
    move       $s1,$zero
    lui        $s0,0x0
    sh         $zero,10($t8)
    addiu      $s0,$s0,0
    blez       $a1, .L0001d9b0
    sw         $zero,12($t8)
.L0001d96c:
    jal        .text
    nop
    lw         $t9,4($s0)
    beqz       $v0, .L0001d9d4
    sw         $v0,864($t9)
    lw         $a0,4($s0)
.L0001d984:
    move       $a1,$zero
    lw         $a0,864($a0)
    addiu      $a2,$s2,48
    move       $a3,$s1
    jal        init_mutex
    addiu      $a0,$a0,28
    lw         $a1,0($gp)
    addiu      $s1,$s1,1
    slt        $a1,$s1,$a1
    bnez       $a1, .L0001d96c
    addiu      $s0,$s0,8
.L0001d9b0:
    ld         $s0,16($sp)
    jal        .text
    ld         $s1,8($sp)
    beqz       $v0, .L0001d9e8
    sw         $v0,0($gp)
.L0001d9c4:
    ld         $ra,0($sp)
.L0001d9c8:
    ld         $s2,24($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0001d9d4:
    move       $a0,$zero
    jal        cmn_err
    addiu      $a1,$s2,16
    b          .L0001d984
    lw         $a0,4($s0)
.L0001d9e8:
    move       $a0,$zero
    jal        cmn_err
    addiu      $a1,$s2,16
    b          .L0001d9c8
    ld         $ra,0($sp)

glabel hwperf_overflowed_intr
    lw         $a2,-24112($zero)
    li         $at,14
    sra        $a2,$a2,0x8
    addiu      $sp,$sp,-16
    li         $v0,15
    beq        $a2, $at, .L0001da3c
    sd         $ra,0($sp)
    beq        $a2, $v0, .L0001da3c
    nop
    jal        r10k_perf_overflow_intr
    nop
    move       $a2,$v0
.L0001da2c:
    ld         $ra,0($sp)
    move       $v0,$a2
    jr         $ra
    addiu      $sp,$sp,16
.L0001da3c:
    jal        r12k_perf_overflow_intr
    nop
    b          .L0001da2c
    move       $a2,$v0

glabel hwperf_enable_sys_counters
    move       $a4,$a3
    move       $v0,$a1
    move       $a1,$a0
    addiu      $sp,$sp,-16
    lw         $a0,0($gp)
    move       $at,$a2
    move       $a2,$v0
    sd         $ra,0($sp)
    jal        hwperf_enable_counters
    ori        $a3,$at,0x8
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel hwperf_enable_counters
    addiu      $sp,$sp,-128
    sd         $a4,16($sp)
    sd         $s3,32($sp)
    sd         $s2,24($sp)
    move       $s2,$a1
    move       $s3,$a2
    sd         $s1,56($sp)
    move       $s1,$a3
    sd         $s0,48($sp)
    move       $s0,$a0
    sd         $ra,40($sp)
    li         $a0,1
    jal        cap_able
    dsll32     $a0,$a0,0x5
    andi       $a0,$s1,0x8
    beqz       $a0, .L0001dacc
    sd         $s4,72($sp)
    beqz       $v0, .L0001db68
    nop
.L0001dacc:
    beqz       $s3, .L0001db3c
    nop
.L0001dad4:
    lw         $v0,192($s2)
    bltz       $v0, .L0001dae8
    slti       $a1,$v0,65
    bnez       $a1, .L0001db0c
    sd         $a0,64($sp)
.L0001dae8:
    li         $v0,22
.L0001daec:
    ld         $s2,24($sp)
    ld         $s3,32($sp)
    ld         $ra,40($sp)
    ld         $s4,72($sp)
    ld         $s0,48($sp)
    ld         $s1,56($sp)
    jr         $ra
    addiu      $sp,$sp,128
.L0001db0c:
    li         $a1,25
    addiu      $s4,$s0,28
    jal        mutex_lock
    move       $a0,$s4
    lh         $a2,0($s0)
    andi       $a2,$a2,0x8
    beqz       $a2, .L0001db48
    move       $a0,$s0
    jal        mutex_unlock
    move       $a0,$s4
    b          .L0001daec
    li         $v0,16
.L0001db3c:
    lui        $s3,0x0
    b          .L0001dad4
    addiu      $s3,$s3,4656
.L0001db48:
    jal        hwperf_get_access
    move       $a1,$s1
    beqz       $v0, .L0001db70
    sd         $v0,8($sp)
    jal        mutex_unlock
    move       $a0,$s4
    b          .L0001daec
    ld         $v0,8($sp)
.L0001db68:
    b          .L0001daec
    li         $v0,1
.L0001db70:
    move       $a0,$s0
    move       $a1,$s2
    jal        r1nk_perf_init_counters
    move       $a2,$s3
    ld         $a0,64($sp)
    li         $ra,-1
    andi       $a2,$s1,0x10
    beqz       $v0, .L0001dbac
    sd         $v0,0($sp)
    jal        hwperf_release_access
    move       $a0,$s0
    jal        mutex_unlock
    move       $a0,$s4
    b          .L0001daec
    ld         $v0,0($sp)
.L0001dbac:
    lw         $at,192($s2)
    sh         $ra,22($s0)
    sh         $at,12($s0)
    lw         $v0,0($s3)
    beqz       $v0, .L0001dc18
    nop
    beqz       $a0, .L0001dc2c
    sw         $v0,24($s0)
.L0001dbcc:
    li         $v0,2
.L0001dbd0:
    move       $a1,$v0
    beqz       $a2, .L0001dbe4
    sh         $v0,0($s0)
    ori        $a1,$v0,0x80
    sh         $a1,0($s0)
.L0001dbe4:
    move       $a0,$s0
    li         $v1,-17
    ori        $v0,$a1,0x8
    and        $v0,$v0,$v1
    jal        hwperf_initiate_startup
    sh         $v0,0($s0)
    ld         $s1,16($sp)
    jal        mutex_unlock
    move       $a0,$s4
    lw         $a0,24($s0)
    move       $v0,$zero
    b          .L0001daec
    sw         $a0,0($s1)
.L0001dc18:
    lw         $a1,24($s0)
    bltz       $a1, .L0001dc34
    addiu      $v0,$a1,1
.L0001dc24:
    bnez       $a0, .L0001dbcc
    sw         $v0,24($s0)
.L0001dc2c:
    b          .L0001dbd0
    li         $v0,1
.L0001dc34:
    b          .L0001dc24
    li         $v0,1

glabel hwperf_disable_sys_counters
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        hwperf_disable_counters
    lw         $a0,0($gp)
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel hwperf_disable_counters
    addiu      $sp,$sp,-32
    li         $a1,25
    sd         $s0,0($sp)
    move       $s0,$a0
    sd         $s1,8($sp)
    addiu      $s1,$a0,28
    sd         $ra,16($sp)
    jal        mutex_lock
    move       $a0,$s1
    lh         $a3,0($s0)
    lui        $a5,0x0
    li         $a4,-137
    andi       $at,$a3,0xf
    addiu      $v0,$a5,0
    and        $a3,$a3,$a4
    beqz       $at, .L0001dd38
    andi       $a0,$a3,0x2
    beqz       $a0, .L0001dcdc
    sh         $a3,0($s0)
    lw         $a6,0($gp)
    blez       $a6, .L0001dcdc
    move       $a3,$zero
    li         $a4,-9
.L0001dcb4:
    lw         $t1,4($v0)
    lw         $t1,864($t1)
    lh         $t0,0($t1)
    and        $t0,$t0,$a4
    sh         $t0,0($t1)
    lw         $a7,0($gp)
    addiu      $a3,$a3,1
    slt        $a7,$a3,$a7
    bnez       $a7, .L0001dcb4
    addiu      $v0,$v0,8
.L0001dcdc:
    jal        hwperf_read_counters
    move       $a0,$s0
    jal        hwperf_check_release
    move       $a0,$s0
    jal        hwperf_release_access
    move       $a0,$s0
    lh         $v0,0($s0)
    andi       $v1,$v0,0x40
    beqz       $v1, .L0001dd30
    ori        $v0,$v0,0x10
.L0001dd04:
    lw         $a0,24($s0)
    addiu      $a0,$a0,1
    sw         $a0,24($s0)
    jal        mutex_unlock
    move       $a0,$s1
    move       $v0,$zero
.L0001dd1c:
    ld         $ra,16($sp)
    ld         $s0,0($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0001dd30:
    b          .L0001dd04
    sh         $v0,0($s0)
.L0001dd38:
    jal        mutex_unlock
    move       $a0,$s1
    b          .L0001dd1c
    move       $v0,$zero

glabel hwperf_parent_accumulates
    beqz       $a0, .L0001dd74
    li         $a3,-1
    lh         $a3,0($a0)
    andi       $a4,$a3,0xf
    beqz       $a4, .L0001dd64
    ori        $a3,$a3,0x20
    sh         $a3,0($a0)
.L0001dd64:
    lw         $a5,24($a0)
    sw         $a5,0($a1)
.L0001dd6c:
    jr         $ra
    move       $v0,$zero
.L0001dd74:
    b          .L0001dd6c
    sw         $a3,0($a1)

glabel hwperf_change_sys_control
    move       $a3,$a2
    addiu      $sp,$sp,-16
    move       $v0,$a0
    lw         $a0,0($gp)
    move       $at,$a1
    move       $a1,$v0
    sd         $ra,0($sp)
    jal        hwperf_change_control
    move       $a2,$at
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel cpumon_alloc
    lw         $v0,724($a0)
    addiu      $sp,$sp,-64
    sd         $s4,8($sp)
    beqz       $v0, .L0001ddcc
    move       $s4,$a0
.L0001ddc0:
    ld         $s4,8($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0001ddcc:
    sd         $s5,16($sp)
    sd         $s1,24($sp)
    sd         $s0,32($sp)
    sd         $ra,40($sp)
    sd         $s3,48($sp)
    sd         $s2,56($sp)
    lw         $at,508($a0)
    b          .L0001de00
    sd         $at,0($sp)
.L0001ddf0:
    sw         $s3,724($s4)
    move       $s1,$zero
.L0001ddf8:
    move       $s0,$s2
.L0001ddfc:
    beqz       $s0, .L0001de80
.L0001de00:
    move       $s0,$zero
    jal        get_cpu_irr
    move       $s2,$zero
    sra        $v0,$v0,0x8
    slti       $v0,$v0,35
    beqz       $v0, .L0001deb8
    lui        $a1,0x0
.L0001de1c:
    jal        .text
    nop
    move       $s3,$v0
    beqz       $v0, .L0001de00
    move       $s1,$v0
    jal        splhi
    nop
    lw         $v1,724($s4)
    ld         $a0,0($sp)
    bnez       $v1, .L0001ddfc
    move       $s5,$v0
    lw         $a0,100($a0)
    bnez       $a0, .L0001ddf0
    ld         $a1,0($sp)
    lw         $a2,4($s3)
    lh         $a3,0($s3)
    ori        $a2,$a2,0x2
    sw         $a2,4($s3)
    ori        $a3,$a3,0x10
    sh         $a3,0($s3)
    move       $a0,$v0
    jal        splx
    sw         $s3,100($a1)
    b          .L0001ddf8
    li         $s2,1
.L0001de80:
    jal        splx
    move       $a0,$s5
    beqz       $s1, .L0001de9c
    ld         $s2,56($sp)
    jal        hwperf_cpu_monitor_info_free
    move       $a0,$s1
    ld         $s2,56($sp)
.L0001de9c:
    ld         $s3,48($sp)
    ld         $ra,40($sp)
    ld         $s0,32($sp)
    ld         $s1,24($sp)
    ld         $s5,16($sp)
    b          .L0001ddc0
    lw         $v0,724($s4)
.L0001deb8:
    move       $a0,$zero
    addiu      $a1,$a1,10336
    jal        cmn_err
    addiu      $a1,$a1,64
    b          .L0001de1c
    nop

glabel hwperf_change_control
    addiu      $sp,$sp,-48
    sd         $a0,0($sp)
    sd         $a1,8($sp)
    sd         $a2,16($sp)
    sd         $ra,32($sp)
    jal        hwperf_disable_counters
    sd         $a3,24($sp)
    beqz       $v0, .L0001df00
    ld         $a0,0($sp)
.L0001def4:
    ld         $ra,32($sp)
.L0001def8:
    jr         $ra
    addiu      $sp,$sp,48
.L0001df00:
    ld         $a1,8($sp)
    ld         $a3,16($sp)
    move       $a2,$zero
    jal        hwperf_enable_counters
    ld         $a4,24($sp)
    beqz       $v0, .L0001df24
    nop
    b          .L0001def8
    ld         $ra,32($sp)
.L0001df24:
    b          .L0001def4
    move       $v0,$zero

glabel hwperf_sys_control_info
    move       $a3,$a2
    addiu      $sp,$sp,-16
    move       $v0,$a0
    lw         $a0,0($gp)
    move       $at,$a1
    move       $a1,$v0
    sd         $ra,0($sp)
    jal        hwperf_control_info
    move       $a2,$at
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel hwperf_control_info
    addiu      $sp,$sp,-48
    sd         $a3,8($sp)
    sd         $a1,0($sp)
    sd         $s1,40($sp)
    move       $s1,$a2
    li         $a1,25
    sd         $s0,24($sp)
    move       $s0,$a0
    sd         $s2,16($sp)
    addiu      $s2,$a0,28
    sd         $ra,32($sp)
    jal        mutex_lock
    move       $a0,$s2
    lh         $at,0($s0)
    andi       $at,$at,0xf
    move       $a6,$s0
    ld         $a5,0($sp)
    beqz       $at, .L0001e0a0
    lui        $t0,0x8000
    lh         $v0,96($s0)
    blez       $v0, .L0001dff0
    move       $v0,$zero
.L0001dfb4:
    lhu        $a0,98($a6)
    sh         $a0,0($a5)
    lh         $v1,96($s0)
    addiu      $v0,$v0,1
    slt        $v1,$v0,$v1
    beqz       $v1, .L0001dff0
    nop
    lhu        $a2,100($a6)
    sh         $a2,2($a5)
    lh         $a1,96($s0)
    addiu      $v0,$v0,1
    slt        $a1,$v0,$a1
    addiu      $a6,$a6,4
    bnez       $a1, .L0001dfb4
    addiu      $a5,$a5,4
.L0001dff0:
    beqz       $s1, .L0001e074
    ld         $t3,8($sp)
    lh         $a4,12($s0)
    sw         $a4,0($s1)
    lh         $a3,96($s0)
    blez       $a3, .L0001e070
    move       $v0,$zero
    move       $a2,$s1
    b          .L0001e0b0
    move       $a6,$s0
.L0001e018:
    subu       $a5,$t0,$a7
.L0001e01c:
    sw         $a5,8($a2)
    lh         $a7,96($s0)
    slt        $a7,$v0,$a7
    addiu      $a2,$a2,8
    beqz       $a7, .L0001e070
    addiu      $v0,$v0,1
    lw         $a7,164($a6)
.L0001e038:
    beqz       $a7, .L0001e044
    move       $a5,$zero
    subu       $a5,$t0,$a7
.L0001e044:
    sw         $a5,4($a2)
    lh         $t1,96($s0)
    slt        $t1,$v0,$t1
    move       $a5,$zero
    beqz       $t1, .L0001e070
    addiu      $v0,$v0,1
    lw         $a7,168($a6)
    bnez       $a7, .L0001e018
    addiu      $a6,$a6,8
    b          .L0001e01c
    nop
.L0001e070:
    ld         $t3,8($sp)
.L0001e074:
    lw         $t2,24($s0)
    move       $a0,$s2
    jal        mutex_unlock
    sw         $t2,0($t3)
    move       $v0,$zero
.L0001e088:
    ld         $ra,32($sp)
    ld         $s2,16($sp)
    ld         $s0,24($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0001e0a0:
    jal        mutex_unlock
    move       $a0,$s2
    b          .L0001e088
    li         $v0,22
.L0001e0b0:
    addiu      $v0,$v0,1
    b          .L0001e038
    lw         $a7,164($a6)

glabel hwperf_get_cpu_counters
    lui        $at,0x0
    lhu        $at,4648($at)
    li         $v0,8
    bne        $at, $v0, .L0001e0fc
    addiu      $sp,$sp,-16
    lui        $v0,0x0
    sll        $v1,$a0,0x3
    addiu      $v0,$v0,0
    addu       $v0,$v0,$v1
    lw         $v0,4($v0)
    lw         $v0,864($v0)
    li         $a5,22
    bnez       $v0, .L0001e10c
    sd         $ra,0($sp)
    b          .L0001e104
    move       $v0,$a5
.L0001e0fc:
    li         $a5,22
.L0001e100:
    move       $v0,$a5
.L0001e104:
    jr         $ra
    addiu      $sp,$sp,16
.L0001e10c:
    jal        hwperf_get_counters
    move       $a0,$v0
    ld         $ra,0($sp)
    b          .L0001e100
    move       $a5,$v0

glabel hwperf_get_sys_counters
    move       $at,$a0
    lw         $a0,0($gp)
    move       $a2,$a1
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        hwperf_get_counters
    move       $a1,$at
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel hwperf_get_counters
    addiu      $sp,$sp,-48
    sd         $a2,0($sp)
    sd         $s0,24($sp)
    move       $s0,$a0
    addiu      $a0,$a0,28
    sd         $a0,8($sp)
    sd         $a1,16($sp)
    sd         $ra,32($sp)
    jal        mutex_lock
    li         $a1,25
    jal        hwperf_read_counters
    move       $a0,$s0
    lh         $at,96($s0)
    ld         $a2,0($sp)
    ld         $a3,16($sp)
    move       $a5,$s0
    move       $a4,$s0
    move       $a6,$zero
    blez       $at, .L0001e1dc
    ld         $a0,8($sp)
.L0001e198:
    ld         $a7,424($a5)
    sd         $a7,0($a3)
    lw         $t0,164($a4)
    addiu      $a5,$a5,8
    beqz       $t0, .L0001e1c8
    addiu      $a6,$a6,1
    lw         $v0,292($a4)
    subu       $v0,$v0,$t0
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    daddu      $v0,$v0,$a7
    sd         $v0,0($a3)
.L0001e1c8:
    lh         $v1,96($s0)
    slt        $v1,$a6,$v1
    addiu      $a3,$a3,8
    bnez       $v1, .L0001e198
    addiu      $a4,$a4,4
.L0001e1dc:
    lw         $a1,24($s0)
    jal        mutex_unlock
    sw         $a1,0($a2)
    ld         $ra,32($sp)
    move       $v0,$zero
    ld         $s0,24($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel hwperf_plus_counters
    addiu      $sp,$sp,-48
    sd         $s0,8($sp)
    move       $s0,$a0
    addiu      $a0,$a0,28
    sd         $a0,16($sp)
    sd         $s1,24($sp)
    move       $s1,$a2
    sd         $a1,0($sp)
    sd         $ra,32($sp)
    jal        mutex_lock
    li         $a1,25
    jal        hwperf_read_counters
    move       $a0,$s0
    lh         $at,96($s0)
    ld         $a3,0($sp)
    move       $a4,$s0
    move       $a7,$s0
    move       $a6,$zero
    blez       $at, .L0001e298
    ld         $a0,16($sp)
.L0001e24c:
    lw         $t0,164($a4)
    addiu      $a6,$a6,1
    beqz       $t0, .L0001e274
    ld         $a5,0($a3)
    lw         $v0,292($a4)
    subu       $v0,$v0,$t0
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    daddu      $a5,$v0,$a5
    sd         $a5,0($a3)
.L0001e274:
    ld         $a1,424($a7)
    daddu      $a1,$a1,$a5
    sd         $a1,0($a3)
    lh         $v1,96($s0)
    slt        $v1,$a6,$v1
    addiu      $a4,$a4,4
    addiu      $a3,$a3,8
    bnez       $v1, .L0001e24c
    addiu      $a7,$a7,8
.L0001e298:
    lw         $a2,24($s0)
    lw         $a3,0($s1)
    slt        $a3,$a3,$a2
    beqz       $a3, .L0001e2b4
    ld         $s0,8($sp)
    sw         $a2,0($s1)
    ld         $s0,8($sp)
.L0001e2b4:
    jal        mutex_unlock
    ld         $s1,24($sp)
    ld         $ra,32($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel hwperf_set_counters
    addiu      $sp,$sp,-48
    sd         $s0,8($sp)
    move       $s0,$a0
    addiu      $a0,$a0,28
    sd         $a0,24($sp)
    sd         $s1,16($sp)
    move       $s1,$a2
    sd         $a1,0($sp)
    sd         $ra,32($sp)
    jal        mutex_lock
    li         $a1,25
    lh         $at,96($s0)
    move       $a5,$s0
    move       $a3,$zero
    blez       $at, .L0001e344
    ld         $a4,0($sp)
.L0001e308:
    ld         $v1,0($a4)
    sd         $v1,424($a5)
    lh         $v0,96($s0)
    addiu      $a3,$a3,1
    slt        $v0,$a3,$v0
    beqz       $v0, .L0001e344
    nop
    ld         $a1,8($a4)
    sd         $a1,432($a5)
    lh         $a0,96($s0)
    addiu      $a3,$a3,1
    slt        $a0,$a3,$a0
    addiu      $a4,$a4,16
    bnez       $a0, .L0001e308
    addiu      $a5,$a5,16
.L0001e344:
    lw         $a2,24($s0)
    lw         $a3,0($s1)
    slt        $a3,$a3,$a2
    beqz       $a3, .L0001e360
    ld         $s0,8($sp)
    sw         $a2,0($s1)
    ld         $s0,8($sp)
.L0001e360:
    ld         $s1,16($sp)
    jal        mutex_unlock
    ld         $a0,24($sp)
    ld         $ra,32($sp)
    jr         $ra
    addiu      $sp,$sp,48

glabel hwperf_setup_counters
    lui        $at,0x0
    lhu        $at,4648($at)
    li         $v0,4
    addiu      $sp,$sp,-16
    beq        $at, $v0, .L0001e3b8
    sd         $ra,0($sp)
    lw         $v1,24($a0)
    lh         $v0,0($a0)
    addiu      $v1,$v1,1
    sw         $v1,24($a0)
    li         $v1,-9
    ori        $v0,$v0,0x40
    and        $v0,$v0,$v1
    sh         $v0,0($a0)
.L0001e3b0:
    jr         $ra
    addiu      $sp,$sp,16
.L0001e3b8:
    jal        r1nk_perf_start_counters
    sw         $a0,-23708($zero)
    b          .L0001e3b0
    ld         $ra,0($sp)

glabel hwperf_multiplex_events
    addiu      $sp,$sp,-32
    sd         $s1,8($sp)
    sd         $ra,0($sp)
    jal        r1nk_perf_update_counters
    move       $s1,$a0
    jal        .text
    move       $a0,$s1
    sd         $s0,16($sp)
    move       $s0,$zero
    beqz       $v0, .L0001e478
    sd         $s2,24($sp)
    lh         $at,0($s1)
    andi       $at,$at,0x8
    beqz       $at, .L0001e47c
    ld         $ra,0($sp)
    lh         $a0,36($s1)
    blez       $a0, .L0001e470
    nop
    b          .L0001e444
    addu       $s2,$s0,$s0
.L0001e418:
    move       $a0,$s1
    jal        .text
    move       $a1,$s0
    sh         $v0,80($s2)
    addiu      $s0,$s0,1
    lh         $a0,36($s1)
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $v0,$s0,$a0
    beqz       $v0, .L0001e470
    addu       $s2,$s0,$s0
.L0001e444:
    addu       $s2,$s1,$s2
    lh         $t8,72($s2)
    slti       $t8,$t8,2
    beqz       $t8, .L0001e418
    nop
    addiu      $s0,$s0,1
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $t8,$s0,$a0
    bnez       $t8, .L0001e444
    addu       $s2,$s0,$s0
.L0001e470:
    jal        r1nk_perf_start_counters
    move       $a0,$s1
.L0001e478:
    ld         $ra,0($sp)
.L0001e47c:
    ld         $s2,24($sp)
    ld         $s0,16($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,32

glabel hwperf_add_counters
    lh         $at,96($a0)
    move       $a4,$a0
    blez       $at, .L0001e4fc
    addiu      $a5,$a1,424
    move       $a6,$zero
    move       $a2,$a0
.L0001e4a8:
    lw         $a7,164($a2)
    addiu      $a6,$a6,1
    beqz       $a7, .L0001e4cc
    ld         $a3,424($a4)
    lw         $v0,292($a2)
    subu       $v0,$v0,$a7
    dsll32     $v0,$v0,0x0
    dsrl32     $v0,$v0,0x0
    daddu      $a3,$v0,$a3
.L0001e4cc:
    lld        $a1,0($a5)
    daddu      $a7,$a1,$a3
    move       $a1,$a7
    scd        $a7,0($a5)
    beqzl      $a7, .L0001e4cc
    nop
    lh         $v1,96($a0)
    slt        $v1,$a6,$v1
    addiu      $a4,$a4,8
    addiu      $a5,$a5,8
    bnez       $v1, .L0001e4a8
    addiu      $a2,$a2,4
.L0001e4fc:
    jr         $ra
    nop

glabel hwperf_fork_counters
    addiu      $sp,$sp,-48
    sd         $s0,16($sp)
    lw         $s0,724($a0)
    sd         $a1,8($sp)
    sd         $ra,24($sp)
    beqz       $s0, .L0001e5a0
    sd         $s1,32($sp)
    li         $a1,25
    addiu      $s1,$s0,28
    jal        mutex_lock
    move       $a0,$s1
    lh         $at,0($s0)
    andi       $at,$at,0xf
    beqz       $at, .L0001e5b4
    nop
    jal        cpumon_alloc
    ld         $a0,8($sp)
    move       $a1,$v0
    sd         $v0,0($sp)
    jal        hwperf_copy_cmp
    move       $a0,$s0
    ld         $v1,0($sp)
    lh         $v0,0($v1)
    li         $a0,-49
    li         $a1,-1
    sh         $a1,22($v1)
    and        $v0,$v0,$a0
    sh         $v0,0($v1)
    jal        mutex_unlock
    move       $a0,$s1
    lui        $a3,0x0
    addiu      $a3,$a3,4652
    li         $a4,1
.L0001e588:
    ll         $a2,0($a3)
    addu       $a5,$a2,$a4
    move       $a2,$a5
    sc         $a5,0($a3)
    beqzl      $a5, .L0001e588
    nop
.L0001e5a0:
    ld         $ra,24($sp)
.L0001e5a4:
    ld         $s0,16($sp)
    ld         $s1,32($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0001e5b4:
    jal        mutex_unlock
    move       $a0,$s1
    b          .L0001e5a4
    ld         $ra,24($sp)

glabel hwperf_intr
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        r1nk_perf_intr
    nop
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16

glabel hwperf_sys_counters
    addiu      $sp,$sp,-32
    sd         $ra,16($sp)
    jal        splhi
    sd         $a0,0($sp)
    lw         $a0,-23708($zero)
    beqz       $a0, .L0001e62c
    sd         $v0,8($sp)
    lh         $a1,0($a0)
    andi       $at,$a1,0x8
    beqz       $at, .L0001e624
    li         $a2,-9
    ori        $v1,$a1,0x40
    lw         $v0,24($a0)
    and        $v1,$v1,$a2
    sh         $v1,0($a0)
    addiu      $v0,$v0,1
    sw         $v0,24($a0)
.L0001e624:
    jal        r1nk_perf_update_counters
    nop
.L0001e62c:
    ld         $a0,0($sp)
    lw         $a1,-23712($zero)
    sd         $a1,24($sp)
    jal        hwperf_copy_cmp
    sw         $a1,-23708($zero)
    ld         $a1,24($sp)
    lh         $a3,0($a1)
    li         $a4,-3
    move       $a0,$a1
    and        $a3,$a3,$a4
    ori        $a3,$a3,0x4
    jal        r1nk_perf_start_counters
    sh         $a3,0($a1)
    jal        splx
    ld         $a0,8($sp)
    ld         $ra,16($sp)
    lh         $t0,-24176($zero)
    li         $a7,1
    sllv       $a7,$a7,$t0
    addiu      $a6,$gp,-32472
    nor        $a7,$a7,$zero
.L0001e680:
    ll         $a5,0($a6)
    and        $t0,$a5,$a7
    sc         $t0,0($a6)
    beqzl      $t0, .L0001e680
    nop
    jr         $ra
    addiu      $sp,$sp,32

glabel hwperf_get_access
    addiu      $sp,$sp,-32
    sd         $a0,0($sp)
    sd         $s0,16($sp)
    sd         $ra,8($sp)
    jal        splhi
    move       $s0,$a1
    move       $a0,$v0
    li         $a1,1
    andi       $at,$s0,0x8
    lui        $a7,0x0
    li         $t0,4
    lw         $a5,4640($a7)
    addiu      $a6,$a7,4640
    li         $s0,16
    beqz       $at, .L0001e710
    lhu        $a4,8($a6)
    li         $v0,2
    beq        $a4, $v0, .L0001e728
    ld         $a1,0($sp)
    li         $v1,1
    beq        $a4, $v1, .L0001e738
    li         $s0,16
.L0001e6f4:
    jal        splx
    nop
    ld         $ra,8($sp)
    move       $v0,$s0
    ld         $s0,16($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0001e710:
    beq        $a4, $a1, .L0001e754
    li         $a7,1
    bne        $t0, $a4, .L0001e6f4
    li         $s0,16
    b          .L0001e750
    nop
.L0001e728:
    bne        $a5, $a1, .L0001e6f4
    li         $a2,8
    b          .L0001e73c
    nop
.L0001e738:
    li         $a2,8
.L0001e73c:
    sh         $a2,8($a6)
    ld         $a3,0($sp)
    move       $s0,$zero
    b          .L0001e6f4
    sw         $a3,0($a6)
.L0001e750:
    li         $a7,1
.L0001e754:
    sh         $t0,8($a6)
    addiu      $a5,$a6,12
.L0001e75c:
    ll         $a4,0($a5)
    addu       $t1,$a4,$a7
    move       $a4,$t1
    sc         $t1,0($a5)
    beqzl      $t1, .L0001e75c
    nop
    b          .L0001e6f4
    move       $s0,$zero

glabel hwperf_check_release
    addiu      $sp,$sp,-64
    sd         $s0,24($sp)
    lui        $v0,0x2fa
    ori        $v0,$v0,0xf080
    sw         $v0,4($sp)
    sw         $zero,0($sp)
    lh         $a2,0($a0)
    sd         $s2,40($sp)
    sd         $s1,8($sp)
    andi       $at,$a2,0x1
    move       $s1,$a0
    sd         $s3,32($sp)
    li         $s3,-1
    beqz       $at, .L0001e7f4
    sd         $ra,48($sp)
    lh         $v1,22($a0)
    beq        $v1, $s3, .L0001e7d8
    nop
    jal        nano_delay
    addiu      $a0,$sp,0
    lh         $a0,22($s1)
    bne        $a0, $s3, .L0001e8b4
    lui        $a0,0x0
.L0001e7d8:
    ld         $s1,8($sp)
.L0001e7dc:
    ld         $ra,48($sp)
    ld         $s0,24($sp)
    ld         $s3,32($sp)
    ld         $s2,40($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0001e7f4:
    lui        $a0,0x0
    li         $s3,-1
    move       $s2,$zero
    andi       $a1,$a2,0x2
    andi       $a3,$a2,0x3
    lui        $a4,0x0
    lw         $a2,0($gp)
    beqz       $a1, .L0001e884
    addiu      $s0,$a4,0
    blez       $a2, .L0001e7d8
    move       $a3,$zero
    b          .L0001e84c
    lw         $a0,4($s0)
.L0001e828:
    lh         $a2,22($s1)
    bne        $a2, $s3, .L0001e894
    sd         $a3,16($sp)
.L0001e834:
    lw         $a2,0($gp)
.L0001e838:
    addiu      $s2,$s2,1
    slt        $a4,$s2,$a2
    beqz       $a4, .L0001e87c
    addiu      $s0,$s0,8
    lw         $a0,4($s0)
.L0001e84c:
    lw         $a0,864($a0)
    beqz       $a0, .L0001e838
    nop
    lh         $a1,22($a0)
    beq        $a1, $s3, .L0001e838
    lw         $a2,0($gp)
    bnez       $a3, .L0001e828
    nop
    jal        nano_delay
    addiu      $a0,$sp,0
    b          .L0001e828
    li         $a3,1
.L0001e87c:
    b          .L0001e7dc
    ld         $s1,8($sp)
.L0001e884:
    bnez       $a3, .L0001e7dc
    ld         $s1,8($sp)
    b          .L0001e8d0
    addiu      $a0,$a0,10336
.L0001e894:
    lui        $a0,0x0
    addiu      $a0,$a0,10336
    li         $a2,900
    addiu      $a1,$a0,144
    jal        assfail
    addiu      $a0,$a0,104
    b          .L0001e834
    ld         $a3,16($sp)
.L0001e8b4:
    addiu      $a0,$a0,10336
    li         $a2,888
    addiu      $a1,$a0,144
    jal        assfail
    addiu      $a0,$a0,104
    b          .L0001e7dc
    ld         $s1,8($sp)
.L0001e8d0:
    li         $a2,905
    addiu      $a1,$a0,144
    jal        assfail
    addiu      $a0,$a0,160
    b          .L0001e7dc
    ld         $s1,8($sp)

glabel hwperf_release_access
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        splhi
    move       $s0,$a0
    lh         $a5,0($s0)
    andi       $at,$a5,0x2
    move       $a0,$v0
    li         $a6,4
    beqz       $at, .L0001e950
    lui        $a4,0x0
    addiu      $a3,$a4,4640
    lw         $v0,12($a3)
    li         $a1,-3
    beqz       $v0, .L0001e99c
    li         $v0,1
    sh         $a6,8($a3)
.L0001e92c:
    lh         $v1,0($s0)
    and        $v1,$v1,$a1
    sh         $v1,0($s0)
    sw         $zero,0($a3)
.L0001e93c:
    jal        splx
    ld         $s0,0($sp)
    ld         $ra,8($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L0001e950:
    andi       $a2,$a5,0x1
    li         $a6,-1
    addiu      $a3,$a4,4640
    beqz       $a2, .L0001e93c
    addiu      $v0,$a3,12
.L0001e964:
    ll         $a7,0($v0)
    addu       $t0,$a7,$a6
    move       $a7,$t0
    sc         $t0,0($v0)
    beqzl      $t0, .L0001e964
    nop
    li         $a5,4
    li         $t2,-2
    beqz       $a7, .L0001e9a4
    lhu        $a4,8($a3)
.L0001e98c:
    lh         $t1,0($s0)
    and        $t1,$t1,$t2
    b          .L0001e93c
    sh         $t1,0($s0)
.L0001e99c:
    b          .L0001e92c
    sh         $v0,8($a3)
.L0001e9a4:
    bne        $a4, $a5, .L0001e98c
    li         $t3,1
    b          .L0001e98c
    sh         $t3,8($a3)

glabel hwperf_find_cpu
    lw         $a5,0($gp)
    lui        $a3,0x0
    blez       $a5, .L0001ea04
    addiu      $a3,$a3,0
    move       $v0,$zero
    b          .L0001e9e4
    lw         $a4,4($a3)
.L0001e9d0:
    addiu      $v0,$v0,1
.L0001e9d4:
    slt        $a4,$v0,$a5
    beqz       $a4, .L0001ea04
    nop
    lw         $a4,4($a3)
.L0001e9e4:
    lw         $a4,20($a4)
    beqz       $a4, .L0001e9d0
    addiu      $a3,$a3,8
    lw         $a6,724($a4)
    bnel       $a6, $a0, .L0001e9d4
    addiu      $v0,$v0,1
    b          .L0001ea08
    nop
.L0001ea04:
    li         $v0,-1
.L0001ea08:
    jr         $ra
    nop

glabel hwperf_initiate_startup
    lw         $v0,0($gp)
    addiu      $sp,$sp,-48
    lh         $at,0($a0)
    lui        $a1,0x0
    sd         $s4,8($sp)
    lui        $a3,0x0
    sd         $s3,0($sp)
    andi       $at,$at,0x2
    move       $s3,$a0
    li         $s4,1
    sd         $s1,16($sp)
    addiu      $s1,$a3,0
    beqz       $at, .L0001eb14
    sd         $ra,24($sp)
    sw         $zero,-32472($gp)
    sd         $s0,32($sp)
    move       $s0,$zero
    blez       $v0, .L0001eac8
    sd         $s2,40($sp)
    b          .L0001ea8c
    addiu      $s2,$a1,0
.L0001ea64:
    li         $a2,1
    dsll32     $a0,$s0,0x10
    move       $a3,$s3
    jal        cpuaction
    dsra32     $a0,$a0,0x10
    lw         $a1,0($gp)
.L0001ea7c:
    addiu      $s0,$s0,1
    slt        $a1,$s0,$a1
    beqz       $a1, .L0001eac8
    addiu      $s1,$s1,8
.L0001ea8c:
    lw         $a4,4($s1)
    lh         $a4,400($a4)
    addiu      $a3,$gp,-32472
    sllv       $a4,$s4,$a4
.L0001ea9c:
    ll         $a2,0($a3)
    or         $a5,$a2,$a4
    sc         $a5,0($a3)
    beqzl      $a5, .L0001ea9c
    nop
    bnez       $s0, .L0001ea64
    move       $a1,$s2
    jal        hwperf_sys_counters
    move       $a0,$s3
    b          .L0001ea7c
    lw         $a1,0($gp)
.L0001eac8:
    lw         $a5,-32472($gp)
    ld         $s2,40($sp)
    beqz       $a5, .L0001eafc
    ld         $s0,32($sp)
.L0001ead8:
    lw         $a6,-32472($gp)
    beqz       $a6, .L0001eafc
    nop
    lw         $a7,-32472($gp)
    beqz       $a7, .L0001eafc
    nop
    lw         $t0,-32472($gp)
    bnez       $t0, .L0001ead8
    nop
.L0001eafc:
    ld         $ra,24($sp)
.L0001eb00:
    ld         $s3,0($sp)
    ld         $s4,8($sp)
    ld         $s1,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0001eb14:
    jal        hwperf_find_cpu
    nop
    li         $t1,-1
    beq        $v0, $t1, .L0001eb00
    ld         $ra,24($sp)
    beqz       $v0, .L0001eb4c
    li         $a2,1
    dsll32     $a0,$v0,0x10
    lui        $a1,0x0
    addiu      $a1,$a1,0
    jal        cpuaction
    dsra32     $a0,$a0,0x10
    b          .L0001eb00
    ld         $ra,24($sp)
.L0001eb4c:
    jal        hwperf_proc_counters
    nop
    b          .L0001eb00
    ld         $ra,24($sp)

glabel hwperf_proc_counters
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        splhi
    sd         $s8,8($sp)
    lw         $a3,-24556($zero)
    beqz       $a3, .L0001eba0
    move       $s8,$v0
    lw         $a0,724($a3)
    beqz       $a0, .L0001eba0
    nop
    lh         $at,0($a0)
    andi       $at,$at,0x8
    beqz       $at, .L0001eba0
    nop
    lw         $v0,-23708($zero)
    beqz       $v0, .L0001ebb8
    nop
.L0001eba0:
    jal        splx
    move       $a0,$s8
    ld         $ra,0($sp)
    ld         $s8,8($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L0001ebb8:
    jal        hwperf_setup_counters
    nop
    b          .L0001eba0
    nop

glabel hwperf_update_counters
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        r1nk_perf_update_counters
    move       $a0,$zero
    lh         $a0,-24176($zero)
    li         $v1,1
    ld         $ra,0($sp)
    sllv       $v1,$v1,$a0
    addiu      $v0,$gp,-32472
    nor        $v1,$v1,$zero
.L0001ebf0:
    ll         $at,0($v0)
    and        $a0,$at,$v1
    sc         $a0,0($v0)
    beqzl      $a0, .L0001ebf0
    nop
    jr         $ra
    addiu      $sp,$sp,16

glabel hwperf_update_counters_async
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        r1nk_perf_update_counters
    move       $a0,$zero
    lh         $a0,-24176($zero)
    li         $v1,1
    ld         $ra,0($sp)
    sllv       $v1,$v1,$a0
    addiu      $v0,$gp,-32468
    nor        $v1,$v1,$zero
.L0001ec34:
    ll         $at,0($v0)
    and        $a0,$at,$v1
    sc         $a0,0($v0)
    beqzl      $a0, .L0001ec34
    nop
    jr         $ra
    addiu      $sp,$sp,16

glabel hwperf_read_counters
    addiu      $sp,$sp,-48
    sd         $ra,32($sp)
    sd         $s3,0($sp)
    lh         $at,0($a0)
    lui        $a4,0x0
    lui        $a3,0x0
    sd         $s0,16($sp)
    move       $s0,$a0
    sd         $s4,8($sp)
    andi       $at,$at,0x2
    li         $s4,1
    addiu      $s3,$a3,0
    sd         $s2,24($sp)
    addiu      $a1,$a4,0
    beqz       $at, .L0001ee50
    sd         $s1,40($sp)
    lw         $a0,0($gp)
    move       $s1,$zero
    blez       $a0, .L0001ed0c
    sw         $zero,-32472($gp)
    b          .L0001ecd0
    move       $s2,$a1
.L0001eca8:
    li         $a2,1
    dsll32     $a0,$s1,0x10
    move       $a3,$zero
    jal        cpuaction
    dsra32     $a0,$a0,0x10
    lw         $a0,0($gp)
.L0001ecc0:
    addiu      $s1,$s1,1
    slt        $a1,$s1,$a0
    beqz       $a1, .L0001ed0c
    addiu      $s2,$s2,8
.L0001ecd0:
    lw         $a4,4($s2)
    lh         $a4,400($a4)
    addiu      $a3,$gp,-32472
    sllv       $a4,$s4,$a4
.L0001ece0:
    ll         $a2,0($a3)
    or         $a5,$a2,$a4
    sc         $a5,0($a3)
    beqzl      $a5, .L0001ece0
    nop
    bnez       $s1, .L0001eca8
    move       $a1,$s3
    jal        hwperf_update_counters
    nop
    b          .L0001ecc0
    lw         $a0,0($gp)
.L0001ed0c:
    lw         $t8,-32472($gp)
    move       $s1,$zero
    lui        $s2,0x0
    lh         $a7,96($s0)
    beqz       $t8, .L0001ed48
    addiu      $s2,$s2,0
.L0001ed24:
    lw         $t9,-32472($gp)
    beqz       $t9, .L0001ed48
    nop
    lw         $ra,-32472($gp)
    beqz       $ra, .L0001ed48
    nop
    lw         $at,-32472($gp)
    bnez       $at, .L0001ed24
    nop
.L0001ed48:
    blez       $a7, .L0001eda0
    move       $a3,$zero
    move       $a1,$s0
    move       $a4,$s0
.L0001ed58:
    sd         $zero,424($a4)
    lw         $v1,164($a1)
    sw         $v1,292($a1)
    lh         $a7,96($s0)
    addiu      $a3,$a3,1
    slt        $v0,$a3,$a7
    beqz       $v0, .L0001eda0
    lw         $a0,0($gp)
    sd         $zero,432($a4)
    lw         $a2,168($a1)
    sw         $a2,296($a1)
    lh         $a7,96($s0)
    addiu      $a3,$a3,1
    slt        $a0,$a3,$a7
    addiu      $a4,$a4,16
    bnez       $a0, .L0001ed58
    addiu      $a1,$a1,8
    lw         $a0,0($gp)
.L0001eda0:
    blez       $a0, .L0001ee30
    addiu      $s2,$s2,8
    addiu      $s1,$s1,1
.L0001edac:
    lw         $a6,-4($s2)
    move       $a4,$s0
    move       $a3,$zero
    blez       $a7, .L0001ee20
    lw         $a6,864($a6)
    move       $a1,$s0
    move       $a5,$a6
    addiu      $a3,$a3,1
.L0001edcc:
    ld         $t1,424($a5)
    ld         $t0,424($a4)
    daddu      $t0,$t0,$t1
    sd         $t0,424($a4)
    lw         $a7,164($a1)
    beqz       $a7, .L0001ee00
    addiu      $a4,$a4,8
    lw         $t8,164($a6)
    lw         $t3,292($a6)
    lw         $t2,292($a1)
    subu       $t3,$t3,$t8
    addu       $t2,$t2,$t3
    sw         $t2,292($a1)
.L0001ee00:
    addiu      $a5,$a5,8
    lh         $a7,96($s0)
    slt        $t9,$a3,$a7
    addiu      $a1,$a1,4
    addiu      $a6,$a6,4
    bnez       $t9, .L0001edcc
    addiu      $a3,$a3,1
    lw         $a0,0($gp)
.L0001ee20:
    slt        $ra,$s1,$a0
    addiu      $s1,$s1,1
    bnez       $ra, .L0001edac
    addiu      $s2,$s2,8
.L0001ee30:
    ld         $s2,24($sp)
.L0001ee34:
    ld         $s3,0($sp)
    ld         $ra,32($sp)
    ld         $s4,8($sp)
    ld         $s0,16($sp)
    ld         $s1,40($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0001ee50:
    lh         $a0,22($a0)
    li         $at,-1
    addiu      $a4,$gp,-32468
    move       $v1,$s4
    move       $a3,$a1
    beq        $a0, $at, .L0001ee30
    sll        $a1,$a0,0x3
    beqz       $a0, .L0001eec4
    addu       $a2,$a3,$a1
    lw         $a6,4($a2)
    lh         $a6,400($a6)
    sllv       $a6,$v1,$a6
.L0001ee80:
    ll         $v0,0($a4)
    or         $a7,$v0,$a6
    sc         $a7,0($a4)
    beqzl      $a7, .L0001ee80
    nop
    lw         $a2,4($a2)
    lh         $a2,400($a2)
    sllv       $v1,$v1,$a2
    and        $v0,$v0,$v1
    bnez       $v0, .L0001ee30
    li         $a2,1
    move       $a3,$zero
    lui        $a1,0x0
    jal        cpuaction
    addiu      $a1,$a1,0
    b          .L0001ee34
    ld         $s2,24($sp)
.L0001eec4:
    jal        r1nk_perf_update_counters
    move       $a0,$zero
    b          .L0001ee34
    ld         $s2,24($sp)

glabel hwperf_copy_cmp
    lh         $at,96($a1)
    move       $a5,$a1
    blez       $at, .L0001ef34
    move       $a4,$a0
    move       $a3,$zero
    move       $a7,$a1
    move       $a6,$a1
    move       $t0,$a0
.L0001eef4:
    lw         $t1,164($t0)
    sw         $t1,164($a6)
    lw         $a2,164($t0)
    sw         $a2,292($a6)
    sd         $zero,424($a7)
    lhu        $v1,98($a4)
    sh         $v1,98($a5)
    lh         $v0,96($a1)
    addiu      $a4,$a4,2
    addiu      $a3,$a3,1
    addiu      $a5,$a5,2
    slt        $v0,$a3,$v0
    addiu      $t0,$t0,4
    addiu      $a6,$a6,4
    bnez       $v0, .L0001eef4
    addiu      $a7,$a7,8
.L0001ef34:
    lw         $t8,24($a0)
    lh         $t3,36($a1)
    sw         $t8,24($a1)
    move       $a4,$a0
    move       $a5,$a1
    lh         $t2,12($a0)
    move       $a3,$zero
    blez       $t3, .L0001ef88
    sh         $t2,12($a1)
.L0001ef58:
    lh         $v1,72($a4)
    sh         $v1,72($a5)
    lh         $v0,80($a4)
    sh         $v0,80($a5)
    lh         $at,88($a4)
    sh         $at,88($a5)
    lh         $t9,36($a1)
    addiu      $a3,$a3,1
    slt        $t9,$a3,$t9
    addiu      $a4,$a4,2
    bnez       $t9, .L0001ef58
    addiu      $a5,$a5,2
.L0001ef88:
    lh         $a0,0($a0)
    jr         $ra
    sh         $a0,0($a1)

glabel hwperf_arch_nosupport
    jr         $ra
    li         $v0,89

glabel hwperf_arch_fatal
    move       $a0,$zero
    lui        $a1,0x0
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        cmn_err
    addiu      $a1,$a1,10544
    ld         $ra,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
    addiu      $sp,$sp,-16
    sd         $ra,0($sp)
    jal        get_cpu_irr
    nop
    sra        $at,$v0,0x8
    slti       $at,$at,35
    move       $v0,$zero
    beqz       $at, .L0001effc
    sd         $s0,8($sp)
    li         $a0,680
    jal        kmem_zalloc
    move       $a1,$zero
    bnez       $v0, .L0001f00c
    move       $s0,$v0
    move       $v0,$zero
.L0001effc:
    ld         $ra,0($sp)
    ld         $s0,8($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L0001f00c:
    jal        get_cpu_irr
    nop
    sra        $v0,$v0,0x8
    slti       $v0,$v0,35
    beqz       $v0, .L0001f028
    move       $v0,$zero
    li         $v0,2
.L0001f028:
    jal        get_cpu_irr
    sh         $v0,36($s0)
    sra        $v1,$v0,0x8
    slti       $v1,$v1,35
    beqz       $v1, .L0001f044
    move       $v0,$zero
    li         $v0,32
.L0001f044:
    jal        r1nk_perf_architecture
    sh         $v0,96($s0)
    sw         $v0,8($s0)
    lw         $a2,-24556($zero)
    beqz       $a2, .L0001f08c
    li         $a0,0xffff
    lw         $v0,488($a2)
    beqz       $v0, .L0001f08c
    nop
    lw         $a2,408($v0)
.L0001f06c:
    sw         $a2,16($s0)
    lw         $a1,0($gp)
    sd         $a0,40($s0)
    dsll       $a0,$a0,0x10
    sd         $a0,48($s0)
    move       $v0,$s0
    b          .L0001effc
    sh         $a1,20($s0)
.L0001f08c:
    b          .L0001f06c
    move       $a2,$zero

glabel hwperf_cpu_monitor_info_free
    addiu      $sp,$sp,-16
    bnez       $a0, .L0001f0a8
    sd         $ra,0($sp)
.L0001f0a0:
    jr         $ra
    addiu      $sp,$sp,16
.L0001f0a8:
    jal        kern_free
    nop
    b          .L0001f0a0
    ld         $ra,0($sp)
    lh         $a4,36($a0)
    blez       $a4, .L0001f0e4
    move       $v0,$zero
    addiu      $v0,$v0,1
.L0001f0c8:
    lh         $at,72($a0)
    slti       $at,$at,2
    addiu      $a0,$a0,2
    beqz       $at, .L0001f0f0
    slt        $a3,$v0,$a4
    bnez       $a3, .L0001f0c8
    addiu      $v0,$v0,1
.L0001f0e4:
    move       $v0,$zero
    jr         $ra
    nop
.L0001f0f0:
    jr         $ra
    li         $v0,1
    addu       $a6,$a1,$a1
    addu       $a6,$a0,$a6
    sll        $t1,$a1,0x3
    lh         $a5,88($a6)
    addu       $t1,$a0,$t1
    lh         $a6,80($a6)
    li         $t0,1
    ld         $t1,40($t1)
    addiu      $a5,$a5,1
    move       $v0,$a6
    dsll32     $a5,$a5,0x10
    andi       $t2,$t1,0x1
    b          .L0001f14c
    dsra32     $a5,$a5,0x10
.L0001f130:
    beqz       $t2, .L0001f188
    move       $v0,$zero
    lhu        $a7,98($a0)
    bnez       $a7, .L0001f194
    nop
.L0001f144:
    beq        $a6, $v0, .L0001f198
    nop
.L0001f14c:
    addiu      $v0,$v0,1
    dsll32     $v0,$v0,0x10
    dsra32     $v0,$v0,0x10
    dsllv      $a3,$t0,$v0
    addu       $a7,$v0,$v0
    beq        $a5, $v0, .L0001f130
    addu       $a4,$a0,$a7
    and        $v1,$t1,$a3
    beqz       $v1, .L0001f144
    nop
    lhu        $a1,98($a4)
    beqz       $a1, .L0001f144
    nop
    b          .L0001f198
    nop
.L0001f188:
    move       $v0,$zero
    b          .L0001f144
    nop
.L0001f194:
    move       $v0,$zero
.L0001f198:
    jr         $ra
    nop

glabel r1nk_perf_intr
    addiu      $sp,$sp,-64
    sd         $s1,24($sp)
    lw         $s1,-23708($zero)
    sd         $ra,40($sp)
    beqz       $s1, .L0001f334
    sd         $s0,48($sp)
    lh         $a1,36($s1)
    slti       $at,$a1,4
    beqz       $at, .L0001f348
    sd         $a0,16($sp)
.L0001f1c8:
    move       $s0,$zero
    blez       $a1, .L0001f204
    sd         $s2,32($sp)
    addiu      $s2,$sp,0
.L0001f1d8:
    jal        r1nkperf_data_register_get
    move       $a0,$s0
    sll        $v1,$s0,0x2
    addiu      $a1,$s0,1
    lh         $a0,36($s1)
    dsll32     $a1,$a1,0x10
    dsra32     $s0,$a1,0x10
    slt        $a0,$s0,$a0
    addu       $v1,$s2,$v1
    bnez       $a0, .L0001f1d8
    sw         $v0,0($v1)
.L0001f204:
    addiu      $s2,$sp,0
    jal        r1nk_perf_stop_counters
    move       $a0,$s1
    lh         $a2,36($s1)
    blez       $a2, .L0001f318
    move       $s0,$zero
.L0001f21c:
    sll        $a1,$s0,0x2
    addu       $a1,$s2,$a1
    li         $a0,2
    jal        r1nkperf_data_register_set
    lw         $a1,0($a1)
    addiu      $s0,$s0,1
    lh         $a1,36($s1)
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $a2,$s0,$a1
    bnez       $a2, .L0001f21c
    nop
    blez       $a1, .L0001f318
    move       $a2,$zero
    move       $s0,$zero
    lui        $a7,0x8000
    b          .L0001f2a4
    li         $t0,-1
.L0001f264:
    dsll32     $s0,$s0,0x10
    lw         $ra,164($a6)
    subu       $ra,$a5,$ra
    dsll32     $ra,$ra,0x0
    dsrl32     $ra,$ra,0x0
.L0001f278:
    lld        $t8,0($t9)
    daddu      $at,$t8,$ra
    move       $t8,$at
    scd        $at,0($t9)
    beqzl      $at, .L0001f278
    nop
    lh         $a1,36($s1)
    dsra32     $s0,$s0,0x10
    slt        $t8,$s0,$a1
    beqz       $t8, .L0001f320
    ld         $a0,16($sp)
.L0001f2a4:
    addu       $a4,$s0,$s0
.L0001f2a8:
    addu       $a4,$s1,$a4
    lh         $a4,80($a4)
    beq        $a4, $t0, .L0001f2f8
    sll        $a6,$a4,0x2
    addu       $a6,$s1,$a6
    sll        $a5,$s0,0x2
    lw         $a1,164($a6)
    addiu      $s0,$s0,1
    sll        $t9,$a4,0x3
    addu       $a5,$a5,$s2
    addu       $t9,$s1,$t9
    addiu      $t9,$t9,424
    beqz       $a1, .L0001f264
    lw         $a5,0($a5)
    sltu       $t1,$a5,$a7
    bnez       $t1, .L0001f264
    nop
    li         $a2,1
    b          .L0001f264
    sw         $a1,292($a6)
.L0001f2f8:
    addiu      $s0,$s0,1
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $t2,$s0,$a1
    bnez       $t2, .L0001f2a8
    addu       $a4,$s0,$s0
    b          .L0001f320
    ld         $a0,16($sp)
.L0001f318:
    move       $a2,$zero
    ld         $a0,16($sp)
.L0001f320:
    jal        r1nk_perf_intr_action
    move       $a1,$s1
    ld         $s2,32($sp)
    jal        r1nk_perf_start_counters
    move       $a0,$s1
.L0001f334:
    ld         $ra,40($sp)
    ld         $s0,48($sp)
    ld         $s1,24($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0001f348:
    lui        $a0,0x0
    li         $a2,101
    addiu      $a0,$a0,10600
    jal        assfail
    addiu      $a1,$a0,32
    b          .L0001f1c8
    lh         $a1,36($s1)

glabel r1nk_perf_intr_action
    lh         $a4,0($a1)
    move       $a5,$a0
    andi       $at,$a4,0x80
    li         $a6,3
    addiu      $sp,$sp,-16
    sd         $ra,8($sp)
    beqz       $at, .L0001f3c8
    andi       $a4,$a4,0x4
    beqz       $a4, .L0001f3a8
    nop
    ld         $a3,248($a0)
    lw         $a2,244($a0)
    lw         $a1,228($a0)
    jal        prfintr
    lw         $a0,292($a0)
    b          .L0001f3c0
    ld         $ra,8($sp)
.L0001f3a8:
    lw         $a0,-24552($zero)
    beqz       $a0, .L0001f3c0
    ld         $ra,8($sp)
    lbu        $a5,112($a0)
    beq        $a5, $a6, .L0001f418
.L0001f3bc:
    ld         $ra,8($sp)
.L0001f3c0:
    jr         $ra
    addiu      $sp,$sp,16
.L0001f3c8:
    beqz       $a2, .L0001f3c0
    ld         $ra,8($sp)
    lh         $a4,12($a1)
    beqz       $a4, .L0001f3bc
    sd         $a0,0($sp)
    move       $a1,$a4
    lw         $a0,-24556($zero)
    jal        sigtouthread
    move       $a2,$zero
    ld         $a7,0($sp)
    ld         $a7,248($a7)
    li         $t0,16
    andi       $a7,$a7,0x18
    bne        $a7, $t0, .L0001f3c0
    ld         $ra,8($sp)
    lw         $t1,-24556($zero)
    lw         $t1,640($t1)
    li         $t0,1
    b          .L0001f3bc
    sw         $t0,0($t1)
.L0001f418:
    jal        splhi
    nop
    lw         $t3,-24556($zero)
    lw         $t2,520($t3)
    move       $a0,$v0
    lui        $t8,0x40
    or         $t2,$t2,$t8
    jal        splx
    sw         $t2,520($t3)
    lw         $ra,-24556($zero)
    lw         $ra,640($ra)
    li         $t9,1
    b          .L0001f3bc
    sw         $t9,0($ra)

glabel r1nk_perf_update_counters
    addiu      $sp,$sp,-48
    sd         $ra,32($sp)
    sd         $s2,24($sp)
    sd         $s1,8($sp)
    move       $s1,$a0
    beqz       $a0, .L0001f55c
    sd         $s3,16($sp)
    move       $s3,$zero
.L0001f470:
    jal        r1nk_perf_check_architecture
    move       $a0,$s1
    lh         $v0,36($s1)
    blez       $v0, .L0001f4f0
    sd         $s0,40($sp)
    b          .L0001f4c4
    move       $s0,$zero
.L0001f48c:
    jal        r1nkperf_data_register_get
    move       $a0,$s0
    sll        $a0,$s2,0x2
    addu       $a0,$s1,$a0
    lw         $at,164($a0)
    beqz       $at, .L0001f528
    sll        $ra,$s2,0x3
    sw         $v0,292($a0)
    addiu      $s0,$s0,1
.L0001f4b0:
    lh         $v0,36($s1)
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $a1,$s0,$v0
    beqz       $a1, .L0001f4f0
.L0001f4c4:
    addu       $s2,$s0,$s0
.L0001f4c8:
    addu       $s2,$s1,$s2
    lh         $s2,80($s2)
    bgez       $s2, .L0001f48c
    nop
    addiu      $s0,$s0,1
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $t8,$s0,$v0
    bnez       $t8, .L0001f4c8
    addu       $s2,$s0,$s0
.L0001f4f0:
    lh         $t8,0($s1)
    andi       $t8,$t8,0x8
    beqz       $t8, .L0001f58c
    nop
.L0001f500:
    beqz       $s3, .L0001f510
    ld         $s0,40($sp)
    jal        splx
    lw         $a0,0($sp)
.L0001f510:
    ld         $ra,32($sp)
.L0001f514:
    ld         $s2,24($sp)
    ld         $s3,16($sp)
    ld         $s1,8($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0001f528:
    addu       $ra,$s1,$ra
    move       $a0,$s0
    addiu      $ra,$ra,424
.L0001f534:
    lld        $t9,0($ra)
    daddu      $at,$t9,$v0
    move       $t9,$at
    scd        $at,0($ra)
    beqzl      $at, .L0001f534
    nop
    jal        r1nkperf_data_register_set
    move       $a1,$zero
    b          .L0001f4b0
    addiu      $s0,$s0,1
.L0001f55c:
    jal        splhi
    nop
    lw         $s1,-23708($zero)
    move       $a0,$v0
    beqz       $s1, .L0001f5b4
    li         $s3,1
    lh         $at,0($s1)
    andi       $at,$at,0xf
    beqz       $at, .L0001f5b4
    nop
    b          .L0001f470
    sw         $v0,0($sp)
.L0001f58c:
    jal        r1nk_perf_stop_counters
    move       $a0,$s1
    lh         $v0,0($s1)
    andi       $a0,$v0,0x4
    li         $v1,-5
    beqz       $a0, .L0001f5ac
    and        $v0,$v0,$v1
    sh         $v0,0($s1)
.L0001f5ac:
    b          .L0001f500
    sw         $zero,-23708($zero)
.L0001f5b4:
    jal        splx
    nop
    b          .L0001f514
    ld         $ra,32($sp)

glabel r1nk_perf_start_counters
    addiu      $sp,$sp,-48
    sd         $s1,32($sp)
    sd         $ra,40($sp)
    jal        getsr
    move       $s1,$a0
    jal        issplhi
    move       $a0,$v0
    sd         $s2,24($sp)
    sd         $s0,16($sp)
    sd         $s4,8($sp)
    beqz       $v0, .L0001f720
    sd         $s3,0($sp)
    lh         $at,0($s1)
.L0001f5f8:
    andi       $at,$at,0x8
    beqz       $at, .L0001f6fc
    ld         $s0,16($sp)
    jal        r1nk_perf_check_architecture
    move       $a0,$s1
    lh         $a0,36($s1)
    li         $s3,14
    li         $s4,15
    sh         $zero,22($s1)
    move       $s0,$zero
    blez       $a0, .L0001f6f8
    nop
    b          .L0001f678
    addu       $s2,$s0,$s0
.L0001f630:
    lhu        $a1,98($a0)
.L0001f634:
    jal        r1nkperf_control_register_set
    move       $a0,$s0
    sll        $a0,$s2,0x2
    addu       $a0,$s1,$a0
    lw         $a2,164($a0)
    beqz       $a2, .L0001f718
    move       $a1,$zero
    lw         $a1,292($a0)
.L0001f654:
    jal        r1nkperf_data_register_set
    move       $a0,$s0
    addiu      $s0,$s0,1
    lh         $a0,36($s1)
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $a1,$s0,$a0
    beqz       $a1, .L0001f6f8
    addu       $s2,$s0,$s0
.L0001f678:
    addu       $s2,$s1,$s2
    lh         $s2,80($s2)
    bltz       $s2, .L0001f6e0
    nop
    lw         $a1,-24112($zero)
    sra        $a1,$a1,0x8
    addu       $a3,$s2,$s2
    beq        $a1, $s3, .L0001f6a0
    addu       $a0,$s1,$a3
    bne        $a1, $s4, .L0001f630
.L0001f6a0:
    li         $a2,1
    bne        $s0, $a2, .L0001f630
    addu       $a3,$s2,$s2
    addu       $a3,$s1,$a3
    lhu        $a3,98($a3)
    srl        $a2,$a3,0x5
    lui        $a1,0xffff
    addiu      $a2,$a2,16
    ori        $a1,$a1,0x1f
    andi       $a2,$a2,0x7ff
    and        $a1,$a1,$a3
    sll        $a2,$a2,0x5
    or         $a1,$a1,$a2
    dsll32     $a1,$a1,0x10
    b          .L0001f634
    dsra32     $a1,$a1,0x10
.L0001f6e0:
    addiu      $s0,$s0,1
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $a4,$s0,$a0
    bnez       $a4, .L0001f678
    addu       $s2,$s0,$s0
.L0001f6f8:
    ld         $s0,16($sp)
.L0001f6fc:
    ld         $s1,32($sp)
    ld         $ra,40($sp)
    ld         $s2,24($sp)
    ld         $s3,0($sp)
    ld         $s4,8($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L0001f718:
    b          .L0001f654
    nop
.L0001f720:
    lui        $a0,0x0
    addiu      $a0,$a0,10600
    li         $a2,281
    addiu      $a1,$a0,32
    jal        assfail
    addiu      $a0,$a0,56
    b          .L0001f5f8
    lh         $at,0($s1)

glabel r1nk_perf_stop_counters
    addiu      $sp,$sp,-32
    sd         $s1,0($sp)
    sd         $ra,8($sp)
    jal        getsr
    move       $s1,$a0
    jal        issplhi
    move       $a0,$v0
    beqz       $v0, .L0001f7c0
    lui        $a0,0x0
.L0001f764:
    jal        r1nk_perf_check_architecture
    move       $a0,$s1
    lh         $at,36($s1)
    li         $v0,-1
    sh         $v0,22($s1)
    blez       $at, .L0001f7ac
    sd         $s0,16($sp)
    move       $s0,$zero
    move       $a0,$s0
.L0001f788:
    jal        r1nkperf_control_register_set
    move       $a1,$zero
    addiu      $s0,$s0,1
    lh         $v1,36($s1)
    dsll32     $s0,$s0,0x10
    dsra32     $s0,$s0,0x10
    slt        $v1,$s0,$v1
    bnez       $v1, .L0001f788
    move       $a0,$s0
.L0001f7ac:
    ld         $ra,8($sp)
    ld         $s0,16($sp)
    ld         $s1,0($sp)
    jr         $ra
    addiu      $sp,$sp,32
.L0001f7c0:
    addiu      $a0,$a0,10600
    li         $a2,350
    addiu      $a1,$a0,32
    jal        assfail
    addiu      $a0,$a0,56
    b          .L0001f764
    nop

glabel r1nk_perf_init_counters
    addiu      $sp,$sp,-64
    sd         $s1,24($sp)
    move       $s1,$a1
    sd         $s2,0($sp)
    move       $s2,$a2
    sd         $s0,8($sp)
    move       $s0,$a0
    sd         $ra,16($sp)
    li         $a0,1
    jal        cap_able
    dsll32     $a0,$a0,0x5
    lh         $a1,36($s0)
    li         $t3,-1
    move       $a4,$zero
    sd         $s3,32($sp)
    lui        $s3,0x8000
    move       $a7,$zero
    sd         $s4,40($sp)
    li         $s4,-5
    blez       $a1, .L0001f884
    sd         $s5,48($sp)
    addu       $a5,$a4,$a4
.L0001f834:
    addu       $a5,$s0,$a5
    sh         $zero,72($a5)
    addiu      $a4,$a4,1
    sh         $t3,80($a5)
    dsll32     $a4,$a4,0x10
    lh         $a2,36($s0)
    dsra32     $a4,$a4,0x10
    slt        $a2,$a4,$a2
    beqz       $a2, .L0001f884
    addu       $a5,$a4,$a4
    addu       $a5,$s0,$a5
    sh         $zero,72($a5)
    addiu      $a4,$a4,1
    sh         $t3,80($a5)
    dsll32     $a4,$a4,0x10
    lh         $a6,36($s0)
    dsra32     $a4,$a4,0x10
    slt        $a6,$a4,$a6
    bnez       $a6, .L0001f834
    addu       $a5,$a4,$a4
.L0001f884:
    lh         $a6,96($s0)
    li         $t3,-1
    blez       $a6, .L0001fa00
    li         $s5,1
    b          .L0001fa18
    sll        $a6,$a7,0x2
.L0001f89c:
    dsra32     $a7,$a1,0x10
    lh         $t0,96($s0)
    addu       $t9,$a7,$a7
    sll        $a6,$a7,0x2
    addiu      $a2,$a7,1
    slt        $t0,$a7,$t0
    dsll32     $a1,$a2,0x10
    addu       $t1,$a6,$s0
    beqz       $t0, .L0001fa00
    addu       $t8,$t9,$s1
    sll        $t2,$a7,0x3
.L0001f8c8:
    lh         $a5,0($t8)
    and        $a5,$a5,$s4
    dsll32     $a5,$a5,0x10
    addu       $t9,$t9,$s0
    dsra32     $a5,$a5,0x10
    sh         $a5,0($t8)
    dsllv      $t0,$s5,$a7
    sh         $zero,98($t9)
    addu       $at,$t2,$s0
    addu       $t2,$t2,$s2
    sw         $zero,164($t1)
    ld         $t2,8($t2)
    andi       $t8,$a5,0xa
    sra        $ra,$a5,0x5
    sd         $t2,424($at)
    beqz       $a5, .L0001f89c
    andi       $t2,$ra,0xf
    andi       $at,$a5,0x2
    addu       $a4,$a6,$s1
    beqz       $at, .L0001f920
    lw         $a4,64($a4)
    beqz       $v0, .L0001fa08
.L0001f920:
    slti       $a6,$t2,16
    bltz       $t2, .L0001f9d8
    nop
    beqz       $a6, .L0001f9d8
    nop
    beqz       $t8, .L0001f9d8
    nop
    bltz       $a4, .L0001f9d8
    nop
    beqz       $a4, .L0001f9d0
    sh         $a5,98($t9)
    subu       $a5,$s3,$a4
    sw         $a5,164($t1)
.L0001f954:
    sw         $a5,292($t1)
    lh         $a6,36($s0)
    move       $a4,$zero
    addiu      $t1,$a4,1
    sll        $a3,$a4,0x3
    blez       $a6, .L0001f89c
    addu       $a3,$s0,$a3
    b          .L0001fa10
    dsll32     $t2,$t1,0x10
.L0001f978:
    lh         $v1,72($a5)
    sh         $a7,88($a5)
    addiu      $v1,$v1,1
    sh         $v1,72($a5)
    lh         $a6,36($s0)
.L0001f98c:
    slt        $a0,$a4,$a6
    sll        $a3,$a4,0x3
    beqz       $a0, .L0001f89c
    addu       $a3,$s0,$a3
    ld         $a3,40($a3)
.L0001f9a0:
    addu       $a5,$a4,$a4
    and        $a3,$a3,$t0
    addu       $a5,$s0,$a5
    dsra32     $a4,$t2,0x10
    addiu      $t1,$a4,1
    beqz       $a3, .L0001f98c
    dsll32     $t2,$t1,0x10
    lh         $a6,80($a5)
    bne        $a6, $t3, .L0001f978
    nop
    b          .L0001f978
    sh         $a7,80($a5)
.L0001f9d0:
    b          .L0001f954
    lw         $a5,164($t1)
.L0001f9d8:
    li         $v0,22
.L0001f9dc:
    ld         $s3,32($sp)
    ld         $s2,0($sp)
    ld         $s4,40($sp)
    ld         $ra,16($sp)
    ld         $s0,8($sp)
    ld         $s1,24($sp)
    ld         $s5,48($sp)
    jr         $ra
    addiu      $sp,$sp,64
.L0001fa00:
    b          .L0001f9dc
    move       $v0,$zero
.L0001fa08:
    b          .L0001f9dc
    li         $v0,1
.L0001fa10:
    b          .L0001f9a0
    ld         $a3,40($a3)
.L0001fa18:
    addu       $t9,$a7,$a7
    addiu      $a2,$a7,1
    addu       $t8,$t9,$s1
    dsll32     $a1,$a2,0x10
    addu       $t1,$a6,$s0
    b          .L0001f8c8
    sll        $t2,$a7,0x3

glabel r1nk_perf_architecture
    lw         $a3,-24112($zero)
    addiu      $sp,$sp,-16
    li         $a4,9
    srl        $v0,$a3,0x8
    li         $at,14
    andi       $v0,$v0,0xff
    li         $a2,15
    srl        $a6,$a3,0x4
    beq        $v0, $at, .L0001fa8c
    andi       $a5,$a6,0xf
    beq        $v0, $a2, .L0001fa8c
    nop
    bne        $v0, $a4, .L0001fa94
    sd         $ra,0($sp)
    sltiu      $v1,$a5,3
    bnez       $v1, .L0001fa84
    li         $v0,1
    li         $v0,2
.L0001fa7c:
    jr         $ra
    addiu      $sp,$sp,16
.L0001fa84:
    b          .L0001fa7c
    nop
.L0001fa8c:
    b          .L0001fa7c
    li         $v0,4
.L0001fa94:
    move       $a0,$zero
    move       $a2,$zero
    lui        $a1,0x0
    jal        cmn_err
    addiu      $a1,$a1,10672
    b          .L0001fa7c
    ld         $ra,0($sp)

glabel r1nk_perf_check_architecture
    addiu      $sp,$sp,-16
    sd         $s0,0($sp)
    sd         $ra,8($sp)
    jal        r1nk_perf_architecture
    move       $s0,$a0
    lw         $at,8($s0)
    beq        $at, $v0, .L0001fb0c
    lw         $a0,0($gp)
    lh         $a2,20($s0)
    beqz       $a2, .L0001fb10
    ld         $ra,8($sp)
    lw         $v0,4($s0)
    andi       $v0,$v0,0x1
    bnez       $v0, .L0001fb10
    ld         $ra,8($sp)
    bnez       $a0, .L0001fb1c
    li         $a0,5
.L0001faf4:
    lw         $a0,16($s0)
    jal        signal
    move       $a1,$a2
    lw         $v1,4($s0)
    ori        $v1,$v1,0x1
    sw         $v1,4($s0)
.L0001fb0c:
    ld         $ra,8($sp)
.L0001fb10:
    ld         $s0,0($sp)
    jr         $ra
    addiu      $sp,$sp,16
.L0001fb1c:
    lui        $a1,0x0
    lw         $a3,16($s0)
    jal        cmn_err
    addiu      $a1,$a1,10736
    b          .L0001faf4
    lh         $a2,20($s0)

glabel read_branch_diag
    mfc0       $v0,$22
    jr         $ra
    nop

glabel write_branch_diag
    mtc0       $a0,$22
    jr         $ra
    nop

glabel branch_prediction_off
    mfc0       $v0,$22
    lui        $at,0xfffc
    ori        $at,$at,0xffff
    and        $v0,$v0,$at
    lui        $at,0x1
    or         $v0,$v0,$at
    mtc0       $v0,$22
    jr         $ra
    nop

glabel branch_prediction_on
    mfc0       $v0,$22
    lui        $at,0xfffc
    ori        $at,$at,0xffff
    and        $v0,$v0,$at
    mtc0       $v0,$22
    jr         $ra
    nop

glabel branch_prediction_taken
    mfc0       $v0,$22
    lui        $at,0xfffc
    ori        $at,$at,0xffff
    and        $v0,$v0,$at
    lui        $at,0x2
    or         $v0,$v0,$at
    mtc0       $v0,$22
    jr         $ra
    nop

glabel branch_prediction_fwd_not_taken
    mfc0       $v0,$22
    lui        $at,0x3
    or         $v0,$v0,$at
    mtc0       $v0,$22
    jr         $ra
    nop

glabel r12k_perf_overflow_intr
    .word      0x400cc801
    .word      0x400dc803
    slt        $t0,$t0,$zero
    beqz       $t0, .L0001fbe4
    slt        $t1,$t1,$zero
    mfc0       $t2,$25
    andi       $t0,$t2,0x10
.L0001fbe4:
    beqz       $t1, .L0001fbf0
    .word      0x400ec802
    andi       $t1,$t2,0x10
.L0001fbf0:
    or         $t3,$t0,$t1
    .word      0x400cc805
    .word      0x400dc807
    slt        $t0,$t0,$zero
    beqz       $t0, .L0001fc10
    slt        $t1,$t1,$zero
    .word      0x400ec804
    andi       $t0,$t2,0x10
.L0001fc10:
    beqz       $t1, .L0001fc1c
    .word      0x400ec806
    andi       $t1,$t2,0x10
.L0001fc1c:
    or         $t0,$t0,$t1
    jr         $ra
    or         $v0,$t0,$t3

glabel r10k_perf_overflow_intr
    .word      0x400cc801
    .word      0x400dc803
    slt        $t0,$t0,$zero
    beqz       $t0, .L0001fc44
    slt        $t1,$t1,$zero
    mfc0       $t2,$25
    andi       $t0,$t2,0x10
.L0001fc44:
    beqz       $t1, .L0001fc50
    .word      0x400ec802
    andi       $t1,$t2,0x10
.L0001fc50:
    jr         $ra
    or         $v0,$t0,$t1

glabel r1nkperf_data_register_get
    bnez       $a0, .L0001fc6c
    nop
    .word      0x4002c801
    jr         $ra
    nop
.L0001fc6c:
    li         $at,1
    bne        $a0, $at, .L0001fc84
    nop
    .word      0x4002c803
    jr         $ra
    nop
.L0001fc84:
    li         $at,2
    bne        $a0, $at, .L0001fc9c
    nop
    .word      0x4002c805
    jr         $ra
    nop
.L0001fc9c:
    li         $at,3
    bne        $a0, $at, .L0001fcb4
    nop
    .word      0x4002c807
    jr         $ra
    nop
.L0001fcb4:
    move       $v0,$zero
    jr         $ra
    nop

glabel r1nkperf_control_register_get
    bnez       $a0, .L0001fcd4
    nop
    mfc0       $v0,$25
    jr         $ra
    nop
.L0001fcd4:
    li         $at,1
    bne        $a0, $at, .L0001fcec
    nop
    .word      0x4002c802
    jr         $ra
    nop
.L0001fcec:
    li         $at,2
    bne        $a0, $at, .L0001fd04
    nop
    .word      0x4002c804
    jr         $ra
    nop
.L0001fd04:
    li         $at,3
    bne        $a0, $at, .L0001fd1c
    nop
    .word      0x4002c806
    jr         $ra
    nop
.L0001fd1c:
    move       $v0,$zero
    jr         $ra
    nop

glabel r1nkperf_data_register_set
    bnez       $a0, .L0001fd3c
    nop
    .word      0x4085c801
    jr         $ra
    nop
.L0001fd3c:
    li         $at,1
    bne        $a0, $at, .L0001fd54
    nop
    .word      0x4085c803
    jr         $ra
    nop
.L0001fd54:
    li         $at,2
    bne        $a0, $at, .L0001fd6c
    nop
    .word      0x4085c805
    jr         $ra
    nop
.L0001fd6c:
    li         $at,3
    bne        $a0, $at, .L0001fd84
    nop
    .word      0x4085c807
    jr         $ra
    nop
.L0001fd84:
    jr         $ra
    nop

glabel r1nkperf_control_register_set
    bnez       $a0, .L0001fda0
    nop
    mtc0       $a1,$25
    jr         $ra
    nop
.L0001fda0:
    li         $at,1
    bne        $a0, $at, .L0001fdb8
    nop
    .word      0x4085c802
    jr         $ra
    nop
.L0001fdb8:
    li         $at,2
    bne        $a0, $at, .L0001fdd0
    nop
    .word      0x4085c804
    jr         $ra
    nop
.L0001fdd0:
    li         $at,3
    bne        $a0, $at, .L0001fde8
    nop
    .word      0x4085c806
    jr         $ra
    nop
.L0001fde8:
    jr         $ra
    nop

glabel handle_ii
    mfc0       $k1,c0_prid
    andi       $k1,$k1,0xfff0
    addiu      $k1,$k1,-8976
    beqz       $k1, .L0001fe1c
    nop
    j          longway
    nop
.L0001fe1c:
    mfc0       $k1,c0_epc
    mfc0       $k0,c0_cause
    li         $at,1
    sd         $t0,-24528($zero)
    dsll       $at,$at,0x1f
    and        $t0,$k0,$at
    beqzl      $t0, .L0001fe40
    lwu        $t0,0($k1)
    lwu        $t0,4($k1)
.L0001fe40:
    li         $at,0xffff
    dsll       $at,$at,0x10
    ori        $at,$at,0x3f
    and        $k1,$t0,$at
    lui        $at,0x46e0
    ori        $at,$at,0x21
    subu       $k1,$k1,$at
    beqz       $k1, .L0001fe78
    nop
    addiu      $k1,$k1,1
    beqz       $k1, .L0001fe78
    nop
.L0001fe70:
    j          longway
    ld         $t0,-24528($zero)
.L0001fe78:
    li         $at,1
    dsll       $at,$at,0x1f
    and        $k1,$k0,$at
    bnez       $k1, .L0001fe70
    nop
    mfc0       $k0,c0_sr
    lui        $at,0x2000
    and        $k0,$k0,$at
    beqz       $k0, .L0001fe70
    nop
    srl        $k1,$t0,0x8
    lui        $k0,0x0
    sd         $gp,-24144($zero)
    andi       $k1,$k1,0xf8
    addiu      $k0,$k0,-316
    lui        $gp,0x0
    addu       $k0,$k0,$k1
    jr         $k0
    addiu      $gp,$gp,0
    b          .L0001ffc4
    dmfc1      $k0,$f0
    b          .L0001ffc4
    dmfc1      $k0,$f1
    b          .L0001ffc4
    dmfc1      $k0,$f2
    b          .L0001ffc4
    dmfc1      $k0,$f3
    b          .L0001ffc4
    dmfc1      $k0,$f4
    b          .L0001ffc4
    dmfc1      $k0,$f5
    b          .L0001ffc4
    dmfc1      $k0,$f6
    b          .L0001ffc4
    dmfc1      $k0,$f7
    b          .L0001ffc4
    dmfc1      $k0,$f8
    b          .L0001ffc4
    dmfc1      $k0,$f9
    b          .L0001ffc4
    dmfc1      $k0,$f10
    b          .L0001ffc4
    dmfc1      $k0,$f11
    b          .L0001ffc4
    dmfc1      $k0,$f12
    b          .L0001ffc4
    dmfc1      $k0,$f13
    b          .L0001ffc4
    dmfc1      $k0,$f14
    b          .L0001ffc4
    dmfc1      $k0,$f15
    b          .L0001ffc4
    dmfc1      $k0,$f16
    b          .L0001ffc4
    dmfc1      $k0,$f17
    b          .L0001ffc4
    dmfc1      $k0,$f18
    b          .L0001ffc4
    dmfc1      $k0,$f19
    b          .L0001ffc4
    dmfc1      $k0,$f20
    b          .L0001ffc4
    dmfc1      $k0,$f21
    b          .L0001ffc4
    dmfc1      $k0,$f22
    b          .L0001ffc4
    dmfc1      $k0,$f23
    b          .L0001ffc4
    dmfc1      $k0,$f24
    b          .L0001ffc4
    dmfc1      $k0,$f25
    b          .L0001ffc4
    dmfc1      $k0,$f26
    b          .L0001ffc4
    dmfc1      $k0,$f27
    b          .L0001ffc4
    dmfc1      $k0,$f28
    b          .L0001ffc4
    dmfc1      $k0,$f29
    b          .L0001ffc4
    dmfc1      $k0,$f30
    b          .L0001ffc4
    dmfc1      $k0,$f31
.L0001ffc4:
    dsra32     $k1,$k0,0x13
    beqz       $k1, .L0001ffe4
    nop
    addiu      $k1,$k1,1
    beqz       $k1, .L0001ffe4
    nop
    b          .L0001fe70
    ld         $gp,-24144($zero)
.L0001ffe4:
    li         $at,0xffff
    dsll       $at,$at,0x10
    ori        $at,$at,0x3f
    and        $k1,$t0,$at
    sdc1       $f0,-23672($zero)
    lui        $at,0x46e0
    ori        $at,$at,0x21
    dmtc1      $k0,$f0
    subu       $k1,$k1,$at
    beqzl      $k1, .L00020014
    cvt.d.l    $f0,$f0
    cvt.s.l    $f0,$f0
.L00020014:
    srl        $k1,$t0,0x3
    lui        $k0,0x0
    andi       $k1,$k1,0xf8
    addiu      $k0,$k0,52
    addu       $k0,$k0,$k1
    dmfc1      $k1,$f0
    jr         $k0
    ldc1       $f0,-23672($zero)
    b          .L00020134
    dmtc1      $k1,$f0
    b          .L00020134
    dmtc1      $k1,$f1
    b          .L00020134
    dmtc1      $k1,$f2
    b          .L00020134
    dmtc1      $k1,$f3
    b          .L00020134
    dmtc1      $k1,$f4
    b          .L00020134
    dmtc1      $k1,$f5
    b          .L00020134
    dmtc1      $k1,$f6
    b          .L00020134
    dmtc1      $k1,$f7
    b          .L00020134
    dmtc1      $k1,$f8
    b          .L00020134
    dmtc1      $k1,$f9
    b          .L00020134
    dmtc1      $k1,$f10
    b          .L00020134
    dmtc1      $k1,$f11
    b          .L00020134
    dmtc1      $k1,$f12
    b          .L00020134
    dmtc1      $k1,$f13
    b          .L00020134
    dmtc1      $k1,$f14
    b          .L00020134
    dmtc1      $k1,$f15
    b          .L00020134
    dmtc1      $k1,$f16
    b          .L00020134
    dmtc1      $k1,$f17
    b          .L00020134
    dmtc1      $k1,$f18
    b          .L00020134
    dmtc1      $k1,$f19
    b          .L00020134
    dmtc1      $k1,$f20
    b          .L00020134
    dmtc1      $k1,$f21
    b          .L00020134
    dmtc1      $k1,$f22
    b          .L00020134
    dmtc1      $k1,$f23
    b          .L00020134
    dmtc1      $k1,$f24
    b          .L00020134
    dmtc1      $k1,$f25
    b          .L00020134
    dmtc1      $k1,$f26
    b          .L00020134
    dmtc1      $k1,$f27
    b          .L00020134
    dmtc1      $k1,$f28
    b          .L00020134
    dmtc1      $k1,$f29
    b          .L00020134
    dmtc1      $k1,$f30
    b          .L00020134
    dmtc1      $k1,$f31
.L00020134:
    dmfc0      $k0,c0_epc
    addiu      $k0,$k0,4
    dmtc0      $k0,c0_epc
    ld         $gp,-24144($zero)
    ld         $t0,-24528($zero)
    ld         $at,-24536($zero)
    eret

glabel VEC_ii
    lui        $t0,0x0
    addiu      $t0,$t0,0
    lw         $t0,0($t0)
    bnez       $t0, .L0002016c
    nop
    j          VEC_trap
    nop
.L0002016c:
    li         $at,1
    dsll       $at,$at,0x1f
    ld         $t1,288($a0)
    and        $t0,$a3,$at
    beqzl      $t0, .L00020188
    lwu        $t0,0($t1)
    lwu        $t0,4($t1)
.L00020188:
    li         $at,0xffff
    dsll       $at,$at,0x10
    ori        $at,$at,0x3f
    and        $t2,$t0,$at
    lui        $at,0x46e0
    ori        $at,$at,0x21
    subu       $t2,$t2,$at
    beqz       $t2, .L000201c0
    nop
    addiu      $t2,$t2,1
    beqz       $t2, .L000201c0
    nop
    j          VEC_trap
    nop
.L000201c0:
    li         $at,-125
    li         $a1,60
    and        $a3,$a3,$at
    or         $a3,$a3,$a1
    j          VEC_fpe
    sd         $a3,280($a0)

glabel mul64
    dmultu     $a0,$a1
    mflo       $v0
    sd         $v0,0($a2)
    mfhi       $v0
    jr         $ra
    nop

glabel madd
    addiu      $sp,$sp,-160
    sd         $a6,144($sp)
    sd         $a3,120($sp)
    sw         $a2,116($sp)
    sw         $a1,108($sp)
    sd         $s0,48($sp)
    addiu      $t1,$gp,0
    sd         $s2,40($sp)
    sll        $s2,$a0,0x2
    sd         $s1,64($sp)
    addu       $t1,$s2,$t1
    move       $t3,$a1
    lw         $t1,0($t1)
    move       $t2,$a2
    move       $s1,$a0
    sd         $s4,56($sp)
    move       $s4,$a7
    move       $s0,$a5
    sd         $s3,32($sp)
    move       $s3,$a4
    bne        $t1, $a2, .L000202a4
    sd         $ra,80($sp)
    bne        $t1, $a5, .L000202e0
    lw         $a2,164($sp)
    bne        $t1, $a2, .L000206c0
    xor        $a3,$a4,$a1
    beq        $a3, $a7, .L00020680
    addiu      $a3,$gp,0
    lw         $t8,-24556($zero)
    lui        $t9,0x1
    lw         $t3,844($t8)
    ori        $t9,$t9,0x40
    or         $t3,$t3,$t9
    sw         $t3,844($t8)
    lw         $t2,-24556($zero)
    lw         $t2,844($t2)
    andi       $t2,$t2,0x800
    beqz       $t2, .L00020624
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
.L000202a4:
    bne        $t1, $a5, .L000202e0
    nop
    xor        $a3,$a6,$a3
    xor        $a6,$a6,$a3
    sd         $a6,144($sp)
    xor        $a3,$a6,$a3
    xor        $t2,$a5,$a2
    sd         $a3,120($sp)
    xor        $s0,$a5,$t2
    xor        $t3,$a4,$a1
    xor        $t2,$s0,$t2
    sw         $t2,116($sp)
    xor        $s3,$t3,$a4
    xor        $t3,$t3,$s3
    sw         $t3,108($sp)
.L000202e0:
    bne        $t1, $t2, .L00020344
    lw         $a2,164($sp)
    bne        $t1, $a2, .L00020494
    nop
    beqz       $s0, .L00020648
    xor        $a4,$s3,$t3
.L000202f8:
    beq        $s4, $a4, .L00020704
    addiu      $a3,$gp,0
    lw         $a7,-24556($zero)
.L00020304:
    lui        $t0,0x1
    lw         $a6,844($a7)
    ori        $t0,$t0,0x40
    or         $a6,$a6,$t0
    sw         $a6,844($a7)
    lw         $a5,-24556($zero)
    lw         $a5,844($a5)
    andi       $a5,$a5,0x800
    beqz       $a5, .L00020658
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
.L00020344:
    beqz       $t2, .L00020534
    nop
.L0002034c:
    beqz       $s0, .L00020544
    nop
.L00020354:
    beqz       $t2, .L000205bc
    sll        $t1,$s1,0x3
    addiu      $a1,$gp,0
    lui        $a0,0x0
    addu       $t3,$s2,$a1
    addiu      $a0,$a0,0
    lw         $t3,0($t3)
    addu       $t1,$a0,$t1
    ld         $t1,0($t1)
    addiu      $a2,$gp,0
    subu       $t2,$t2,$t3
    sw         $t2,116($sp)
    or         $t1,$t1,$a3
    beqz       $s0, .L000205f8
    sd         $t1,120($sp)
.L00020390:
    addu       $t0,$s2,$a1
    sll        $a6,$s1,0x3
    lw         $t0,0($t0)
    addu       $a6,$a0,$a6
    ld         $a6,0($a6)
    ld         $a7,144($sp)
    subu       $s0,$s0,$t0
    or         $a6,$a6,$a7
    sd         $a6,144($sp)
.L000203b4:
    beqz       $s1, .L000205a8
    ld         $a3,120($sp)
.L000203bc:
    addiu      $a2,$sp,16
    move       $a1,$a6
    lw         $t1,108($sp)
    move       $a0,$a3
    addu       $t2,$s0,$t2
    sd         $t2,24($sp)
    xor        $t1,$t1,$s3
    jal        mul64
    sd         $t1,72($sp)
    ld         $s0,72($sp)
    addiu      $a0,$sp,8
    jal        renorm_d
    sd         $v0,8($sp)
    ld         $a4,16($sp)
    ld         $a1,24($sp)
    li         $t3,11
    li         $a5,64
    ld         $a2,8($sp)
    subu       $a5,$a5,$v0
    dsllv      $a3,$a4,$v0
    sd         $a3,16($sp)
    dsrlv      $a4,$a4,$a5
    or         $a2,$a2,$a4
    bne        $v0, $t3, .L00020424
    sd         $a2,8($sp)
    addiu      $a1,$a1,1
.L00020424:
    addiu      $a6,$gp,0
    addu       $a6,$s2,$a6
    lw         $a6,0($a6)
    jalr       $a6
    move       $a0,$s0
    addiu      $a4,$sp,120
    addiu      $a3,$sp,116
    addiu      $a2,$sp,108
    addiu      $a1,$sp,0
    move       $a0,$s1
    jal        breakout_sd
    sd         $v0,0($sp)
    ld         $a6,168($sp)
    lw         $a5,164($sp)
    ld         $a3,120($sp)
    move       $a0,$s1
    lw         $a2,116($sp)
    move       $a4,$s4
    jal        add
    lw         $a1,108($sp)
    ld         $s3,32($sp)
.L00020478:
    ld         $s2,40($sp)
    ld         $ra,80($sp)
    ld         $s0,48($sp)
    ld         $s4,56($sp)
    ld         $s1,64($sp)
    jr         $ra
    addiu      $sp,$sp,160
.L00020494:
    bnez       $s0, .L000204ec
    xor        $a1,$s3,$t3
    bnez       $a6, .L000204ec
    xor        $a1,$s3,$t3
    lw         $t1,-24556($zero)
    lui        $t2,0x1
    lw         $t0,844($t1)
    ori        $t2,$t2,0x40
    or         $t0,$t0,$t2
    sw         $t0,844($t1)
    lw         $a7,-24556($zero)
    lw         $a7,844($a7)
    andi       $a7,$a7,0x800
    beqz       $a7, .L00020748
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
    xor        $a1,$s3,$t3
.L000204ec:
    addiu      $a2,$gp,0
    addiu      $a3,$gp,0
    addu       $a2,$s2,$a2
    dsll32     $a1,$a1,0x0
    addu       $a3,$s2,$a3
    lw         $a2,0($a2)
    dsrl32     $a1,$a1,0x0
    lw         $a3,0($a3)
    dsllv      $a2,$t2,$a2
    move       $a0,$s1
    dsllv      $a1,$a1,$a3
    or         $a1,$a1,$a2
    jal        fpstore_sd
    sd         $a1,0($sp)
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
.L00020534:
    bnez       $a3, .L0002034c
    nop
    b          .L0002054c
    lw         $a2,164($sp)
.L00020544:
    bnez       $a6, .L00020354
    lw         $a2,164($sp)
.L0002054c:
    bnez       $a2, .L00020770
    ld         $a3,168($sp)
    bnez       $a3, .L00020774
    addiu      $a4,$gp,0
    lw         $a3,-24556($zero)
    lbu        $a3,856($a3)
    addiu      $a2,$gp,0
    li         $a4,3
    addu       $a2,$s2,$a2
    xor        $a0,$s3,$t3
    beq        $a3, $a4, .L000207bc
    lw         $a2,0($a2)
    and        $a1,$a0,$s4
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    dsllv      $a1,$a1,$a2
    sd         $a1,0($sp)
.L00020590:
    jal        fpstore_sd
    move       $a0,$s1
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
.L000205a8:
    dsll       $a6,$a6,0x1d
    sd         $a6,144($sp)
    dsll       $a3,$a3,0x1d
    b          .L000203bc
    sd         $a3,120($sp)
.L000205bc:
    addiu      $a2,$gp,0
    addu       $a2,$s2,$a2
    lw         $a2,0($a2)
    jalr       $a2
    addiu      $a0,$sp,120
    addiu      $t2,$gp,0
    addu       $t2,$s2,$t2
    addiu      $a2,$gp,0
    lui        $a0,0x0
    lw         $t2,0($t2)
    addiu      $a1,$gp,0
    addiu      $a0,$a0,0
    subu       $t2,$t2,$v0
    bnez       $s0, .L00020390
    sw         $t2,116($sp)
.L000205f8:
    addu       $t3,$s2,$a2
    lw         $t3,0($t3)
    jalr       $t3
    addiu      $a0,$sp,144
    addiu      $s0,$gp,0
    addu       $s0,$s2,$s0
    lw         $s0,0($s0)
    lw         $t2,116($sp)
    ld         $a6,144($sp)
    b          .L000203b4
    subu       $s0,$s0,$v0
.L00020624:
    sll        $a2,$s1,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
.L00020648:
    bnez       $a6, .L000202f8
    xor        $a4,$s3,$t3
    b          .L00020304
    lw         $a7,-24556($zero)
.L00020658:
    sll        $a2,$s1,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    move       $a0,$s1
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
.L00020680:
    addiu      $a4,$gp,0
    addu       $a3,$s2,$a3
    dsll32     $a1,$a7,0x0
    addu       $a4,$s2,$a4
    lw         $a3,0($a3)
    dsrl32     $a1,$a1,0x0
    lw         $a4,0($a4)
    dsllv      $a2,$a2,$a3
    dsllv      $a1,$a1,$a4
    or         $a1,$a1,$a2
    jal        fpstore_sd
    sd         $a1,0($sp)
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
.L000206c0:
    addiu      $a2,$gp,0
    addiu      $a4,$gp,0
    addu       $a2,$s2,$a2
    dsll32     $a1,$a3,0x0
    addu       $a4,$s2,$a4
    lw         $a2,0($a2)
    dsrl32     $a1,$a1,0x0
    lw         $a3,0($a4)
    dsllv      $a2,$t2,$a2
    dsllv      $a1,$a1,$a3
    or         $a1,$a1,$a2
    jal        fpstore_sd
    sd         $a1,0($sp)
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
.L00020704:
    addiu      $a4,$gp,0
    addu       $a3,$s2,$a3
    dsll32     $a1,$s4,0x0
    addu       $a4,$s2,$a4
    lw         $a3,0($a3)
    dsrl32     $a1,$a1,0x0
    lw         $a4,0($a4)
    dsllv      $a2,$a2,$a3
    move       $a0,$s1
    dsllv      $a1,$a1,$a4
    or         $a1,$a1,$a2
    jal        fpstore_sd
    sd         $a1,0($sp)
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
.L00020748:
    sll        $a2,$s1,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    move       $a0,$s1
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
.L00020770:
    addiu      $a4,$gp,0
.L00020774:
    addiu      $a5,$gp,0
    addu       $a4,$s2,$a4
    dsll32     $a1,$s4,0x0
    addu       $a5,$s2,$a5
    lw         $a4,0($a4)
    dsrl32     $a1,$a1,0x0
    lw         $a5,0($a5)
    dsllv      $a2,$a2,$a4
    dsllv      $a1,$a1,$a5
    move       $a0,$s1
    or         $a1,$a1,$a2
    or         $a1,$a1,$a3
    jal        fpstore_sd
    sd         $a1,0($sp)
    jal        store_fpcsr
    nop
    b          .L00020478
    ld         $s3,32($sp)
.L000207bc:
    or         $a1,$a0,$s4
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    dsllv      $a1,$a1,$a2
    b          .L00020590
    sd         $a1,0($sp)

glabel add
    addiu      $sp,$sp,-144
    sd         $a6,128($sp)
    sd         $a3,104($sp)
    sd         $s0,32($sp)
    sd         $s3,16($sp)
    addiu      $v0,$gp,0
    sd         $s2,24($sp)
    sll        $s2,$a0,0x2
    sd         $s5,56($sp)
    addu       $v0,$s2,$v0
    lw         $v0,0($v0)
    move       $s5,$a0
    move       $s3,$a1
    sd         $s1,48($sp)
    move       $s1,$a2
    move       $s0,$a5
    sd         $s4,40($sp)
    move       $s4,$a4
    bne        $v0, $a2, .L00020878
    sd         $ra,72($sp)
    bne        $v0, $a5, .L00020c10
    nop
    beq        $a1, $a4, .L00020ba8
    addiu      $a1,$gp,0
    lw         $a1,-24556($zero)
    lui        $a2,0x1
    lw         $a0,844($a1)
    ori        $a2,$a2,0x40
    or         $a0,$a0,$a2
    sw         $a0,844($a1)
    lw         $v1,-24556($zero)
    lw         $v1,844($v1)
    andi       $v1,$v1,0x800
    beqz       $v1, .L00020b80
    lui        $a1,0x0
    jal        post_sig
    li         $a0,8
    jal        store_fpcsr
    nop
    b          .L000209e4
    ld         $s3,16($sp)
.L00020878:
    beq        $v0, $a5, .L00020c50
    nop
    beqz       $a2, .L00020ad8
    nop
.L00020888:
    beqz       $s0, .L00020b34
    nop
.L00020890:
    beq        $s3, $s4, .L00020a04
    nop
    bne        $s1, $s0, .L00020a04
    nop
    bne        $a6, $a3, .L00020a04
    nop
    lw         $v1,-24556($zero)
    lbu        $v1,856($v1)
    li         $a0,3
    addiu      $v0,$gp,0
    addu       $v0,$s2,$v0
    beq        $v1, $a0, .L00020cf0
    lw         $v0,0($v0)
    and        $a1,$s3,$s4
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    dsllv      $a1,$a1,$v0
.L000208d4:
    jal        fpstore_sd
    move       $a0,$s5
    jal        store_fpcsr
    nop
    b          .L000209e4
    ld         $s3,16($sp)
    move       $a1,$a6
.L000208f0:
    move       $a2,$a3
    sd         $a3,0($sp)
    subu       $v0,$s0,$s1
    sd         $s4,64($sp)
    move       $s5,$s0
.L00020904:
    ld         $s0,64($sp)
    move       $a3,$zero
    beqz       $v0, .L00020ac8
    sd         $zero,8($sp)
    li         $a3,64
    subu       $a3,$a3,$v0
    dsllv      $a3,$a2,$a3
    dsrlv      $a2,$a2,$v0
    sd         $a2,0($sp)
    beq        $s3, $s4, .L0002095c
    sd         $a3,8($sp)
    beqz       $a3, .L00020ad0
    move       $v0,$zero
.L00020938:
    li         $a4,1
    nor        $a3,$a3,$zero
    daddu      $a3,$a3,$a4
    dsll32     $a4,$v0,0x0
    sd         $a3,8($sp)
    dsrl32     $a4,$a4,0x0
    nor        $a2,$a2,$zero
    daddu      $a2,$a4,$a2
    sd         $a2,0($sp)
.L0002095c:
    daddu      $a2,$a1,$a2
    beqz       $a2, .L00020bf8
    sd         $a2,0($sp)
.L00020968:
    li         $a5,-1
    dsll32     $a5,$a5,0x15
    and        $a5,$a2,$a5
    beqz       $a5, .L00020994
    dsrl       $t0,$a2,0xb
    dsrl       $a6,$a3,0xb
    sd         $t0,0($sp)
    dsll32     $a7,$a2,0x15
    addiu      $s5,$s5,11
    or         $a6,$a6,$a7
    sd         $a6,8($sp)
.L00020994:
    jal        renorm_d
    addiu      $a0,$sp,0
    ld         $a2,0($sp)
    beqz       $v0, .L000209c8
    ld         $a3,8($sp)
    li         $t1,64
    subu       $t1,$t1,$v0
    dsrlv      $t1,$a3,$t1
    dsllv      $a3,$a3,$v0
    sd         $a3,8($sp)
    subu       $s5,$s5,$v0
    or         $a2,$a2,$t1
    sd         $a2,0($sp)
.L000209c8:
    addiu      $t2,$gp,0
    addu       $t2,$s2,$t2
    lw         $t2,0($t2)
    move       $a0,$s0
    jalr       $t2
    move       $a1,$s5
    ld         $s3,16($sp)
.L000209e4:
    ld         $s2,24($sp)
    ld         $s0,32($sp)
    ld         $ra,72($sp)
    ld         $s4,40($sp)
    ld         $s1,48($sp)
    ld         $s5,56($sp)
    jr         $ra
    addiu      $sp,$sp,144
.L00020a04:
    beqz       $s1, .L00020c90
    sll        $t3,$s5,0x3
    addiu      $a1,$gp,0
    lui        $a0,0x0
    addu       $t8,$s2,$a1
    addiu      $a0,$a0,0
    lw         $t8,0($t8)
    addu       $t3,$a0,$t3
    ld         $t3,0($t3)
    subu       $s1,$s1,$t8
    or         $t3,$t3,$a3
    beqz       $s0, .L00020cc4
    sd         $t3,104($sp)
.L00020a38:
    addu       $t0,$s2,$a1
    sll        $a6,$s5,0x3
    lw         $t0,0($t0)
    addu       $a6,$a0,$a6
    ld         $a6,0($a6)
    ld         $a7,128($sp)
    subu       $s0,$s0,$t0
    or         $a6,$a6,$a7
    sd         $a6,128($sp)
.L00020a5c:
    beqz       $s5, .L00020be4
    ld         $a3,104($sp)
.L00020a64:
    addiu      $v0,$s1,-55
    slt        $t1,$s0,$v0
    beqz       $t1, .L00020a78
    nop
    move       $s0,$v0
.L00020a78:
    addiu      $v0,$s0,-55
    slt        $t2,$s1,$v0
    beqz       $t2, .L00020a90
    slt        $t3,$s0,$s1
    move       $s1,$v0
    slt        $t3,$s0,$s1
.L00020a90:
    bnez       $t3, .L00020ab0
    move       $a1,$a3
    bne        $s1, $s0, .L000208f0
    move       $a1,$a6
    sltu       $t8,$a3,$a6
    bnez       $t8, .L000208f0
    move       $a1,$a6
    move       $a1,$a3
.L00020ab0:
    move       $a2,$a6
    subu       $v0,$s1,$s0
    sd         $a6,0($sp)
    sd         $s3,64($sp)
    b          .L00020904
    move       $s5,$s1
.L00020ac8:
    beq        $s3, $s4, .L0002095c
    nop
.L00020ad0:
    b          .L00020938
    li         $v0,1
.L00020ad8:
    bnez       $a3, .L00020888
    nop
    bnez       $a5, .L00020d08
    addiu      $a3,$gp,0
    bnez       $a6, .L00020d08
    addiu      $a3,$gp,0
    lw         $v1,-24556($zero)
    lbu        $v1,856($v1)
    addiu      $v0,$gp,0
    li         $a0,3
    addu       $v0,$s2,$v0
    beq        $v1, $a0, .L00020d4c
    lw         $v0,0($v0)
    and        $a1,$a1,$a4
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    dsllv      $a1,$a1,$v0
.L00020b1c:
    jal        fpstore_sd
    move       $a0,$s5
    jal        store_fpcsr
    nop
    b          .L000209e4
    ld         $s3,16($sp)
.L00020b34:
    bnez       $a6, .L00020890
    addiu      $a4,$gp,0
    addiu      $a1,$gp,0
    addu       $a4,$s2,$a4
    dsll32     $a2,$s3,0x0
    addu       $a1,$s2,$a1
    lw         $a4,0($a4)
    dsrl32     $a2,$a2,0x0
    lw         $a1,0($a1)
    dsllv      $a2,$a2,$a4
    dsllv      $a1,$s1,$a1
    move       $a0,$s5
    or         $a1,$a1,$a2
    jal        fpstore_sd
    or         $a1,$a3,$a1
    jal        store_fpcsr
    nop
    b          .L000209e4
    ld         $s3,16($sp)
.L00020b80:
    sll        $a2,$s5,0x3
    addiu      $a1,$a1,0
    addu       $a1,$a1,$a2
    move       $a0,$s5
    jal        fpstore_sd
    ld         $a1,0($a1)
    jal        store_fpcsr
    nop
    b          .L000209e4
    ld         $s3,16($sp)
.L00020ba8:
    addu       $a1,$s2,$a1
    lw         $a1,0($a1)
    addiu      $a3,$gp,0
    addu       $a3,$s2,$a3
    dsllv      $a1,$a2,$a1
    lw         $a3,0($a3)
    dsll32     $a2,$s3,0x0
    dsrl32     $a2,$a2,0x0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    or         $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L000209e4
    ld         $s3,16($sp)
.L00020be4:
    dsll       $a6,$a6,0x1d
    sd         $a6,128($sp)
    dsll       $a3,$a3,0x1d
    b          .L00020a64
    sd         $a3,104($sp)
.L00020bf8:
    addiu      $s5,$s5,-64
    sd         $zero,8($sp)
    move       $a2,$a3
    sd         $a3,0($sp)
    b          .L00020968
    move       $a3,$zero
.L00020c10:
    addiu      $a1,$gp,0
    addu       $a1,$s2,$a1
    lw         $a1,0($a1)
    addiu      $a3,$gp,0
    addu       $a3,$s2,$a3
    dsllv      $a1,$a2,$a1
    lw         $a3,0($a3)
    dsll32     $a2,$s3,0x0
    dsrl32     $a2,$a2,0x0
    dsllv      $a2,$a2,$a3
    jal        fpstore_sd
    or         $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L000209e4
    ld         $s3,16($sp)
.L00020c50:
    addiu      $a3,$gp,0
    addiu      $a1,$gp,0
    addu       $a3,$s2,$a3
    dsll32     $a2,$a4,0x0
    addu       $a1,$s2,$a1
    lw         $a3,0($a3)
    dsrl32     $a2,$a2,0x0
    lw         $a1,0($a1)
    dsllv      $a2,$a2,$a3
    dsllv      $a1,$a5,$a1
    jal        fpstore_sd
    or         $a1,$a1,$a2
    jal        store_fpcsr
    nop
    b          .L000209e4
    ld         $s3,16($sp)
.L00020c90:
    addiu      $a2,$gp,0
    addu       $a2,$s2,$a2
    lw         $a2,0($a2)
    jalr       $a2
    addiu      $a0,$sp,104
    addiu      $s1,$gp,0
    addu       $s1,$s2,$s1
    lui        $a0,0x0
    lw         $s1,0($s1)
    addiu      $a1,$gp,0
    addiu      $a0,$a0,0
    bnez       $s0, .L00020a38
    subu       $s1,$s1,$v0
.L00020cc4:
    addiu      $t8,$gp,0
    addu       $t8,$s2,$t8
    lw         $t8,0($t8)
    jalr       $t8
    addiu      $a0,$sp,128
    addiu      $s0,$gp,0
    addu       $s0,$s2,$s0
    lw         $s0,0($s0)
    ld         $a6,128($sp)
    b          .L00020a5c
    subu       $s0,$s0,$v0
.L00020cf0:
    or         $a1,$s3,$s4
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    b          .L000208d4
    dsllv      $a1,$a1,$v0
    addiu      $a3,$gp,0
.L00020d08:
    addiu      $a1,$gp,0
    addu       $a3,$s2,$a3
    dsll32     $a2,$s4,0x0
    addu       $a1,$s2,$a1
    lw         $a3,0($a3)
    dsrl32     $a2,$a2,0x0
    lw         $a1,0($a1)
    dsllv      $a2,$a2,$a3
    dsllv      $a1,$s0,$a1
    move       $a0,$s5
    or         $a1,$a1,$a2
    jal        fpstore_sd
    or         $a1,$a6,$a1
    jal        store_fpcsr
    nop
    b          .L000209e4
    ld         $s3,16($sp)
.L00020d4c:
    or         $a1,$a1,$a4
    dsll32     $a1,$a1,0x0
    dsrl32     $a1,$a1,0x0
    b          .L00020b1c
    dsllv      $a1,$a1,$v0

glabel VEC_tlbmod
    ld         $a2,272($k1)
    andi       $k0,$s0,0xff00
    ori        $k0,$k0,0x1
    mtc0       $k0,c0_sr
    jal        tlbmod
    move       $s1,$a0
    bnez       $v0, .L00020db0
    nop
    andi       $s2,$s0,0xff00
    mtc0       $s2,c0_sr
    j          exception_exit
    move       $k1,$s1
.L00020db0:
    move       $a0,$s1
    move       $a1,$v0
    j          soft_trap
    ld         $a3,280($a0)

glabel VEC_ibe
    ld         $ra,280($k1)
    ld         $a2,288($k1)
    bgez       $ra, .L00020dd4
    nop
    addiu      $a2,$a2,4
.L00020dd4:
    sd         $a2,272($k1)
    lui        $t0,0xb400
    ld         $t1,72($t0)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t1,0($at)
    ld         $t1,64($t0)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t1,0($at)
    ld         $t1,592($t0)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t1,0($at)
    ld         $t1,600($t0)
    lui        $at,0x0
    addiu      $at,$at,0
    sd         $t1,0($at)
    ld         $t1,88($t0)
    lui        $at,0x0
    addiu      $at,$at,0
    lui        $v0,0xb400
    sd         $t1,0($at)
    sd         $zero,592($v0)
    sd         $zero,72($v0)
    ld         $zero,72($v0)
    ld         $zero,592($v0)
    lui        $v0,0xbf08
    ori        $v0,$v0,0x4
    sw         $zero,0($v0)
    lh         $t0,-24176($zero)
    lw         $zero,0($v0)
    j          VEC_trap
    sd         $t0,320($a0)

glabel btool_size
    jr         $ra
    move       $v0,$zero

glabel btool_getinfo
    jr         $ra
    li         $v0,22

glabel btool_reinit
    jr         $ra
    nop

glabel other_prda
    lw         $v0,-32464($gp)
    lw         $at,2048($a0)
    beq        $at, $v0, .L00020e94
    li         $a2,-1
    sw         $a2,2048($a0)
.L00020e94:
    jr         $ra
    nop

glabel otherprda
    lw         $a2,-32464($gp)
    addiu      $sp,$sp,-80
    beqz       $a0, .L00020eb8
    sd         $ra,72($sp)
    sw         $a2,2048($a0)
.L00020eb0:
    jr         $ra
    addiu      $sp,$sp,80
.L00020eb8:
    addiu      $a0,$sp,0
    addiu      $a1,$sp,64
    jal        get_host_id
    move       $a2,$zero
    bnez       $v0, .L00020eb0
    ld         $ra,72($sp)
    lw         $at,64($sp)
    b          .L00020eb0
    sw         $at,-32464($gp)
