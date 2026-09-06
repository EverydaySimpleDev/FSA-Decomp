# fn_8030A308(table, slot) -> bool: the SAME layered chain as
# fn_8030A258 (sentinel, ->0xc4==4, ->0xd4==0) but returns whether
# ->0xd8 IS zero (inverted requirement from fn_8030A258's third check).
# Split out of the original extab_80309d24.s animation-controller
# bundle (kept raw asm - uses the same scaled `slot*4+table` addressing
# as the still-unresolved fn_80309D24/D48/D6C AND-operand-order family).
.text
.balign 4
.global fn_8030A308

fn_8030A308:
    cmpwi 4, -0x3e7
    .4byte 0x4082000C # bne .L_8030A318
    li 3, 0x0
    blr
L_8030A318:
    slwi 0, 4, 2
    add 5, 3, 0
    lwz 5, 0xc4(5)
    subis 0, 5, 0x4
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8030A338
    li 3, 0x0
    blr
L_8030A338:
    add 3, 3, 4
    lbz 0, 0xd4(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8030A350
    li 3, 0x0
    blr
L_8030A350:
    lbz 0, 0xd8(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    blr
