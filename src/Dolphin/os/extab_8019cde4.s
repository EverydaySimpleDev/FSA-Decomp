# fn_8019CDE4 / fn_8019CE40 - a bit-flag SET and QUERY pair over a
# 2D-indexed table (lbl_8050EC80, stride 0xc8), nested double range-
# checks feeding an indexed array lookup with bit-shift OR/AND logic.
# Kept as raw asm: array-indexed lookups combined with a further
# computed offset are a confirmed high-risk addressing-mode category
# for natural C++ reproduction this session. Split out of the original
# Mgr_SetSpawnParam..SetTriple_0x24c_0x250_0x254 dtk cluster.
.text
.balign 4
.global fn_8019CDE4
.global fn_8019CE40

fn_8019CDE4:
    cmpwi 3, 0x0
    bltlr
    cmpwi 3, 0x7
    .4byte 0x40810008 # ble .L_8019CDF8
    blr
L_8019CDF8:
    cmpwi 4, 0x0
    bltlr
    cmpwi 4, 0x3
    .4byte 0x40810008 # ble .L_8019CE0C
    blr
L_8019CE0C:
    lis 5, lbl_8050EC80@ha
    slwi 0, 3, 2
    addi 6, 5, lbl_8050EC80@l
    li 3, 0x1
    lwz 5, 0x10(6)
    add 0, 4, 0
    slw 0, 3, 0
    mulli 3, 5, 0xc8
    add 4, 6, 3
    lwz 3, 0x28(4)
    or 0, 3, 0
    stw 0, 0x28(4)
    blr

fn_8019CE40:
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_8019CE50
    cmpwi 3, 0x7
    .4byte 0x4081000C # ble .L_8019CE58
L_8019CE50:
    li 3, 0x0
    blr
L_8019CE58:
    cmpwi 4, 0x0
    .4byte 0x4180000C # blt .L_8019CE68
    cmpwi 4, 0x3
    .4byte 0x4081000C # ble .L_8019CE70
L_8019CE68:
    li 3, 0x0
    blr
L_8019CE70:
    lis 5, lbl_8050EC80@ha
    slwi 6, 3, 2
    addi 3, 5, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    add 4, 4, 6
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr
