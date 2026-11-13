# Source: /xlv41/6.5.30m/work/gfx/lib/opengl/CRIME/crm_listexecasm.ma
# Category: CRIME
# Compiler Options: 
# Total Functions: 4

.text

# Function: __glcrmle_Vertex3fv
# Declared: Line 41 (Source lines: 41-53)
# Address: 0x0d932c70 - 0x0d932c98 (Size: 40 bytes, Frame: 0)
.globl __glcrmle_Vertex3fv
.ent __glcrmle_Vertex3fv
__glcrmle_Vertex3fv:
    # Line 41
    lw	$t9,5540($zero)
    # Line 42
    move	$s0,$ra
    # Line 44
    pref	0x0,16($a0)
    # Line 45
    jalr	$t9
    # Line 46
    move	$s1,$a0
    # Line 49
    addiu	$v0,$s1,12
    # Line 50
    lw	$t9,0($v0)
    # Line 51
    move	$ra,$s0
    # Line 52
    jr	$t9
    # Line 53
    addiu	$a0,$v0,4
.end __glcrmle_Vertex3fv

# Function: __glcrmle_Normal3fv
# Declared: Line 65 (Source lines: 65-76)
# Address: 0x0d932c98 - 0x0d932cc0 (Size: 40 bytes, Frame: 0)
.globl __glcrmle_Normal3fv
.ent __glcrmle_Normal3fv
__glcrmle_Normal3fv:
    # Line 65
    lw	$t9,5780($zero)
    # Line 66
    move	$s0,$ra
    # Line 67
    pref	0x0,16($a0)
    # Line 68
    jalr	$t9
    # Line 69
    move	$s1,$a0
    # Line 72
    addiu	$v0,$s1,12
    # Line 73
    lw	$t9,0($v0)
    # Line 74
    move	$ra,$s0
    # Line 75
    jr	$t9
    # Line 76
    addiu	$a0,$v0,4
.end __glcrmle_Normal3fv

# Function: __glcrmle_Color3fv
# Declared: Line 88 (Source lines: 88-99)
# Address: 0x0d932cc0 - 0x0d932ce8 (Size: 40 bytes, Frame: 0)
.globl __glcrmle_Color3fv
.ent __glcrmle_Color3fv
__glcrmle_Color3fv:
    # Line 88
    lw	$t9,5612($zero)
    # Line 89
    move	$s0,$ra
    # Line 90
    pref	0x0,16($a0)
    # Line 91
    jalr	$t9
    # Line 92
    move	$s1,$a0
    # Line 95
    addiu	$v0,$s1,12
    # Line 96
    lw	$t9,0($v0)
    # Line 97
    move	$ra,$s0
    # Line 98
    jr	$t9
    # Line 99
    addiu	$a0,$v0,4
.end __glcrmle_Color3fv

# Function: __glcrmle_TexCoord2fv
# Declared: Line 111 (Source lines: 111-122)
# Address: 0x0d932ce8 - 0x0d932d10 (Size: 40 bytes, Frame: 0)
.globl __glcrmle_TexCoord2fv
.ent __glcrmle_TexCoord2fv
__glcrmle_TexCoord2fv:
    # Line 111
    lw	$t9,5844($zero)
    # Line 112
    move	$s0,$ra
    # Line 113
    pref	0x0,12($a0)
    # Line 114
    jalr	$t9
    # Line 115
    move	$s1,$a0
    # Line 118
    addiu	$v0,$s1,8
    # Line 119
    lw	$t9,0($v0)
    # Line 120
    move	$ra,$s0
    # Line 121
    jr	$t9
    # Line 122
    addiu	$a0,$v0,4
.end __glcrmle_TexCoord2fv

