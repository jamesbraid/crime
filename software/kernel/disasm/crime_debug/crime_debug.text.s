.section .text
.set noat
.set noreorder


glabel crmIsGlobalRegWrite
    sltiu      $v0,$a0,8704
    sra        $a4,$a0,0x2
    slti       $at,$a0,8192
    lui        $a5,0x0
    andi       $a3,$a4,0x3ff
    bnez       $at, .L00000030
    addiu      $a6,$a5,0
    beqz       $v0, .L00000030
    addu       $v0,$a3,$a6
    lbu        $v0,0($v0)
    jr         $ra
    nop
.L00000030:
    jr         $ra
    li         $v0,1

glabel crmFindPP
    addiu      $sp,$sp,-48
    sd         $ra,32($sp)
    sd         $s2,16($sp)
    move       $s2,$a0
    sd         $s1,8($sp)
    move       $s1,$a1
    beqz       $a1, .L0000013c
    sd         $s0,40($sp)
    addiu      $s0,$a1,-1
.L0000005c:
    sll        $v0,$s0,0x3
    addu       $v0,$s2,$v0
    lw         $v1,512($v0)
    lw         $v0,516($v0)
    sw         $v0,4($sp)
    sw         $v1,0($sp)
    lw         $a4,0($sp)
    sll        $at,$a4,0x12
    bltz       $at, .L000000a8
    li         $v0,-1
    andi       $a0,$a4,0xff
    srl        $a1,$a4,0x8
    sll        $a0,$a0,0x3
    andi       $a1,$a1,0x7
    sll        $a1,$a1,0xc
    jal        crmIsGlobalRegWrite
    or         $a0,$a0,$a1
    beqz       $v0, .L000000c0
    li         $v0,-1
.L000000a8:
    ld         $ra,32($sp)
.L000000ac:
    ld         $s0,40($sp)
    ld         $s1,8($sp)
    ld         $s2,16($sp)
    jr         $ra
    addiu      $sp,$sp,48
.L000000c0:
    beq        $s0, $s1, .L0000014c
    addiu      $v0,$s0,-1
.L000000c8:
    beqz       $s0, .L00000154
    nop
.L000000d0:
    sll        $a2,$v0,0x3
    addu       $a2,$s2,$a2
    lw         $a3,512($a2)
    lw         $a2,516($a2)
    sw         $a2,4($sp)
    sw         $a3,0($sp)
    lw         $a4,0($sp)
    sll        $a1,$a4,0x12
    move       $a0,$v0
    sd         $v0,24($sp)
    bltz       $a1, .L00000124
    move       $s0,$v0
    andi       $a0,$a4,0xff
    srl        $a1,$a4,0x8
    sll        $a0,$a0,0x3
    andi       $a1,$a1,0x7
    sll        $a1,$a1,0xc
    jal        crmIsGlobalRegWrite
    or         $a0,$a0,$a1
    beqz       $v0, .L00000144
    ld         $a0,24($sp)
.L00000124:
    li         $a1,63
    beq        $a0, $a1, .L00000134
    move       $v0,$zero
    addiu      $v0,$a0,1
.L00000134:
    b          .L000000ac
    ld         $ra,32($sp)
.L0000013c:
    b          .L0000005c
    li         $s0,63
.L00000144:
    bne        $a0, $s1, .L000000c8
    addiu      $v0,$s0,-1
.L0000014c:
    b          .L000000a8
    li         $v0,-1
.L00000154:
    li         $v0,63
    b          .L000000d0
    nop
