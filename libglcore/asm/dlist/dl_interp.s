# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/dlist/dl_interp.s
# Category: dlist
# Compiler Options: 
# Total Functions: 2

.text

# Function: __glDoInterpret
# Declared: Line 57 (Source lines: 57-78)
# Address: 0x0d97a430 - 0x0d97a4bc (Size: 140 bytes, Frame: 192)
.globl __glDoInterpret
.ent __glDoInterpret
__glDoInterpret:
    # Line 57
    addiu	$sp,$sp,-64
    # Line 64
    addiu	$a0,$a0,4
    # Line 58
    sd	$ra,56($sp)
    # Line 60
    sd	$s1,48($sp)
    # Line 61
    sd	$s0,40($sp)
    # Line 63
    lw	$t9,-4($a0)
.L0d97a448:
    # Line 67
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 68
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 69
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 70
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 72
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 73
    jalr	$t9
    nop
    lw	$t9,0($v0)
    addiu	$a0,$v0,4
    # Line 75
    jalr	$t9
    nop
    # Line 76
    addiu	$a0,$v0,4
    # Line 78
    b	.L0d97a448
    # Line 77
    lw	$t9,0($v0)
.end __glDoInterpret

# Function: __glle_Sentinel
# Declared: Line 92 (Source lines: 89-94)
# Address: 0x0d97a4bc - 0x0d97a4d4 (Size: 24 bytes, Frame: 0)
.globl __glle_Sentinel
.ent __glle_Sentinel
__glle_Sentinel:
    # Line 92
    ld	$ra,56($sp)
    # Line 89
    ld	$s0,40($sp)
    # Line 90
    ld	$s1,48($sp)
    # Line 93
    addiu	$sp,$sp,64
    # Line 94
    jr	$ra
    nop
.end __glle_Sentinel

