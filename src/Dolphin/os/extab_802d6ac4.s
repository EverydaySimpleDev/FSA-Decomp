# fn_802D6AC4(typeRecord, bitIndex) - reads a bit from a PER-TYPE 2D
# bitmask embedded in `typeRecord`. fn_802D6B24(typeRecord, bitIndex,
# setOrClear) - the WRITER counterpart. Kept as raw asm: dense computed-
# offset array indexing (rotlwi-based bit position + multiply/shift
# stride math) combined with the AND/OR-then-normalize boolean idiom -
# well outside the validated promotion envelope. Split out of the
# original GetRoomConfigRecord..fn_802D6C10 dtk cluster.
.text
.balign 4
.global fn_802D6AC4
.global fn_802D6B24

fn_802D6AC4:
    lwz 7, 0x18(3)
    srawi 0, 4, 5
    lwz 6, 0x14(3)
    addze 5, 0
    mulli 7, 7, 0x500
    addis 3, 3, 0x1
    slwi 6, 6, 7
    slwi 0, 4, 27
    add 7, 3, 7
    srwi 3, 4, 31
    subf 0, 3, 0
    slwi 5, 5, 2
    add 6, 7, 6
    li 4, 0x1
    rotlwi 0, 0, 5
    add 0, 0, 3
    add 5, 6, 5
    lwz 3, -0x298(5)
    slw 0, 4, 0
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

fn_802D6B24:
    clrlwi. 0, 5, 24
    slwi 6, 4, 27
    srawi 7, 4, 5
    srwi 5, 4, 31
    subf 4, 5, 6
    rotlwi 0, 4, 5
    addze 8, 7
    add 9, 0, 5
    .4byte 0x41820040 # beq .L_802D6B84
    lwz 5, 0x18(3)
    li 0, 0x1
    lwz 4, 0x14(3)
    addis 6, 3, 0x1
    mulli 5, 5, 0x500
    slwi 3, 8, 2
    slwi 4, 4, 7
    slw 0, 0, 9
    add 5, 6, 5
    add 4, 5, 4
    add 4, 4, 3
    lwz 3, -0x298(4)
    or 0, 3, 0
    stw 0, -0x298(4)
    blr
L_802D6B84:
    lwz 4, 0x18(3)
    li 0, 0x1
    lwz 5, 0x14(3)
    addis 7, 3, 0x1
    mulli 6, 4, 0x500
    slwi 4, 8, 2
    slwi 5, 5, 7
    slw 3, 0, 9
    add 6, 7, 6
    li 0, -0x1
    add 5, 6, 5
    add 4, 5, 4
    xor 0, 3, 0
    lwz 3, -0x298(4)
    and 0, 3, 0
    stw 0, -0x298(4)
    blr
