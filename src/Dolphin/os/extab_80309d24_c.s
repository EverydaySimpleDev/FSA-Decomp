# fn_8030A3B0(table, slot) -> bool: the FULL layered chain (sentinel,
# ->0xc4==4, ->0xd4==0, ->0xd8==1 exactly) - if that whole chain
# succeeds, returns true immediately; otherwise falls back to the SAME
# lbl_8053AD38[slot] check as AnimTable_IsSlotFlagged. A composite "OR" of the two.
# Split out of the original extab_80309d24.s animation-controller
# bundle (kept raw asm - uses the same scaled `slot*4+table` addressing
# as the still-unresolved fn_80309D24/D48/D6C AND-operand-order family).
.text
.balign 4
.global fn_8030A3B0

fn_8030A3B0:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_8030A3C0
    li 3, 0x0
    blr
L_8030A3C0:
    .4byte 0x4082000C # bne .L_8030A3CC
    li 3, 0x0
    .4byte 0x48000054 # b .L_8030A41C
L_8030A3CC:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 5, 0xc4(5)
    subis 0, 5, 0x4
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8030A3EC
    li 3, 0x0
    .4byte 0x48000034 # b .L_8030A41C
L_8030A3EC:
    add 3, 3, 4
    lbz 0, 0xd4(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8030A404
    li 3, 0x0
    .4byte 0x4800001C # b .L_8030A41C
L_8030A404:
    lbz 0, 0xd8(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8030A418
    li 3, 0x1
    .4byte 0x48000008 # b .L_8030A41C
L_8030A418:
    li 3, 0x0
L_8030A41C:
    clrlwi. 0, 3, 24
    bnelr
    .4byte 0x386D9178 # li r3, lbl_8053AD38@sda21
    lbzx 3, 3, 4
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr
