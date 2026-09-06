# fn_802D6C10(posPtr, matchID) - "consume a point-of-interest slot by
# ID+position." Scans an 8-SLOT table embedded in the config record.
# Kept as raw asm: a real loop (mtctr/bdnz) combined with dense float
# comparison logic (cror-based epsilon tests) - well outside the
# validated promotion envelope, matching this session's confirmed-hard
# loop and multi-float categories. Split out of the original
# GetRoomConfigRecord..fn_802D6C10 dtk cluster.
.text
.balign 4
.global fn_802D6C10

fn_802D6C10:
    li 10, 0x0
    li 0, 0x8
    mr 11, 10
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 12, 0x0
    mtctr 0
L_802D6C28:
    lwz 6, 0x4(7)
    addis 3, 10, 0x1
    addi 3, 3, 0x3188
    lwz 6, 0xc(6)
    lwzx 0, 6, 3
    cmplw 5, 0
    .4byte 0x4082011C # bne .L_802D6D5C
    lis 3, lbl_80539D44@ha
    addis 8, 11, 0x1
    .4byte 0xC042E180 # lfs f2, lbl_80541120@sda21(r0)
    addi 8, 8, 0x3148
    lfs 0, lbl_80539D44@l(3)
    add 8, 6, 8
    li 9, 0x0
    lfs 1, 0x0(8)
    fmuls 2, 2, 0
    lfs 0, 0x0(4)
    mr 0, 9
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_802D6C94
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802D6C94
    li 0, 0x1
L_802D6C94:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_802D6CD4
    lfs 1, 0x4(8)
    li 0, 0x0
    lfs 0, 0x4(4)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_802D6CC8
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802D6CC8
    li 0, 0x1
L_802D6CC8:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_802D6CD4
    li 9, 0x1
L_802D6CD4:
    clrlwi. 0, 9, 24
    .4byte 0x41820084 # beq .L_802D6D5C
    lwz 3, 0x4(7)
    slwi 4, 12, 3
    addis 5, 4, 0x1
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    lwz 0, 0xc(3)
    mr 6, 5
    addi 5, 5, 0x30e8
    slwi 7, 12, 2
    add 5, 0, 5
    li 4, -0x1
    stfs 0, 0x0(5)
    addi 6, 6, 0x3148
    stfs 0, 0x4(5)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 0, 3, 0x1
    add 3, 0, 7
    stw 4, 0x3128(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 6, 0, 6
    stfs 0, 0x0(6)
    stfs 0, 0x4(6)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 0, 3, 0x1
    add 3, 0, 7
    stw 4, 0x3188(3)
    blr
L_802D6D5C:
    addi 10, 10, 0x4
    addi 11, 11, 0x8
    addi 12, 12, 0x1
    .4byte 0x4200FEC0 # bdnz .L_802D6C28
    blr
