/*
 * fn_801D4A84(this) (0x801D4A84-0x801D4BAC, 0x128/296 bytes) - dtor_801D46FC's
 * class's state-TRANSITION dispatcher: reads this->0x248 (the shared state field
 * every method in this class uses) and, based on current state plus the CONFIRMED
 * fn_801CD2F8(this->0x4) self-ID-validity check, calls fn_801D5D84(this, newState)
 * (a "commit new state" helper, not yet landed) with one of several hardcoded target
 * states (0xa/0xc/0xf/0x15/0x17).
 *
 * Also: if state==5, calls fn_801E4D74(this) unconditionally (first time seen, not
 * yet landed). Clears bit 16 of this->0x230 if set (the SAME flags word/bit family
 * fn_801D4A84's siblings read). In two branches calls fn_80217CD8(this+0x448) - a
 * NON-destructor method on the SAME sub-object dtor_801D46FC tears down via
 * dtor_80217F80 at that offset, confirming this+0x448 is a real multi-method
 * embedded sub-object, not just a destructor target. Gated in one branch by a
 * counter/timer field this->0x108 > 0.
 */

.section extab, "a"
.balign 4
.global etb_800085C0
etb_800085C0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800085C0, 8

.section extabindex, "a"
.balign 4
.global eti_80015988
eti_80015988:
    .4byte fn_801D4A84
    .4byte 0x00000128
    .4byte etb_800085C0
.size eti_80015988, 12

.text
.balign 4
.global fn_801D4A84

fn_801D4A84:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x5
    .4byte 0x40820008 # bne .L_801D4AA8
    bl fn_801E4D74
L_801D4AA8:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820040 # beq .L_801D4AF0
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 17, 15
    stw 0, 0x230(31)
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801D4AE0
    mr 3, 31
    li 4, 0x15
    bl fn_801D5D84
    .4byte 0x480000BC # b .L_801D4B98
L_801D4AE0:
    mr 3, 31
    li 4, 0x17
    bl fn_801D5D84
    .4byte 0x480000AC # b .L_801D4B98
L_801D4AF0:
    lwz 0, 0x248(31)
    cmpwi 0, 0xb
    .4byte 0x4082003C # bne .L_801D4B34
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801D4B1C
    mr 3, 31
    li 4, 0xf
    bl fn_801D5D84
    .4byte 0x48000080 # b .L_801D4B98
L_801D4B1C:
    addi 3, 31, 0x448
    bl fn_80217CD8
    mr 3, 31
    li 4, 0xc
    bl fn_801D5D84
    .4byte 0x48000068 # b .L_801D4B98
L_801D4B34:
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_801D4B78
    lwz 0, 0x248(31)
    cmpwi 0, 0x11
    .4byte 0x4182004C # beq .L_801D4B98
    .4byte 0x40800010 # bge .L_801D4B60
    cmpwi 0, 0xf
    .4byte 0x40800010 # bge .L_801D4B68
    .4byte 0x4800003C # b .L_801D4B98
L_801D4B60:
    cmpwi 0, 0x15
    .4byte 0x40800034 # bge .L_801D4B98
L_801D4B68:
    mr 3, 31
    li 4, 0xa
    bl fn_801D5D84
    .4byte 0x48000024 # b .L_801D4B98
L_801D4B78:
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40810018 # ble .L_801D4B98
    lwz 0, 0x248(31)
    cmpwi 0, 0x17
    .4byte 0x4182000C # beq .L_801D4B98
    addi 3, 31, 0x448
    bl fn_80217CD8
L_801D4B98:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

