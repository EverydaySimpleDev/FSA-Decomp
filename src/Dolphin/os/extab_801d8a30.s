/*
 * fn_801D8A30(this) (0x801D8A30-0x801D8B28, 0xF8/248 bytes) - an animation-
 * frame-triggered sound cue: calls fn_801DA96C(this+0x2a8) (get current
 * animation frame) and fn_801DA7C0(this+0x2a8) (advance animation), both on
 * an embedded animation-controller sub-object at this+0x2a8 (a DIFFERENT role
 * for this offset than dtor_801D46FC's class, where +0x2a8 is a child-record
 * array - confirms field offsets are per-class convention, not universal).
 * Checks the current animation ID (this->0x2a8) and, for specific IDs, checks
 * whether the frame just crossed a specific value (0x1e/0x2c/0x2f) - if so,
 * plays sound 0x458 via the CONFIRMED fn_801F0E34. Unconditionally tail-calls
 * fn_801DE12C(this) (not yet landed) - this class's next update() step.
 */

.section extab, "a"
.balign 4
.global etb_80008764
etb_80008764:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80008764, 8

.section extabindex, "a"
.balign 4
.global eti_80015B68
eti_80015B68:
    .4byte fn_801D8A30
    .4byte 0x000000F8
    .4byte etb_80008764
.size eti_80015B68, 12

.text
.balign 4
.global fn_801D8A30

fn_801D8A30:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 3
    addi 3, 29, 0x2a8
    bl fn_801DA96C
    mr 31, 3
    addi 3, 29, 0x2a8
    bl fn_801DA7C0
    lwz 0, 0x2a8(29)
    cmpwi 0, 0xe
    .4byte 0x41820040 # beq .L_801D8AAC
    .4byte 0x40800010 # bge .L_801D8A80
    cmpwi 0, 0x8
    .4byte 0x41820014 # beq .L_801D8A8C
    .4byte 0x4800006C # b .L_801D8AE8
L_801D8A80:
    cmpwi 0, 0x10
    .4byte 0x40800064 # bge .L_801D8AE8
    .4byte 0x48000044 # b .L_801D8ACC
L_801D8A8C:
    cmpwi 31, 0x1e
    .4byte 0x41820058 # beq .L_801D8AE8
    addi 3, 29, 0x2a8
    bl fn_801DA96C
    cmpwi 3, 0x1e
    .4byte 0x40820048 # bne .L_801D8AE8
    li 30, 0x1
    .4byte 0x48000040 # b .L_801D8AE8
L_801D8AAC:
    cmpwi 31, 0x2c
    .4byte 0x41820038 # beq .L_801D8AE8
    addi 3, 29, 0x2a8
    bl fn_801DA96C
    cmpwi 3, 0x2c
    .4byte 0x40820028 # bne .L_801D8AE8
    li 30, 0x1
    .4byte 0x48000020 # b .L_801D8AE8
L_801D8ACC:
    cmpwi 31, 0x2f
    .4byte 0x41820018 # beq .L_801D8AE8
    addi 3, 29, 0x2a8
    bl fn_801DA96C
    cmpwi 3, 0x2f
    .4byte 0x40820008 # bne .L_801D8AE8
    li 30, 0x1
L_801D8AE8:
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_801D8B04
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0x58
    li 5, 0x0
    bl fn_801F0E34
L_801D8B04:
    mr 3, 29
    bl fn_801DE12C
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

