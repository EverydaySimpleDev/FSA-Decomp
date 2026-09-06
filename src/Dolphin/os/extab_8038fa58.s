# fn_8038FA58 - KNBN: update() (0x2B0)
# Terrain classifier (fn_80226850), player-validity (fn_8023E724 x3),
# per-room config (GetRoomConfigRecord x2), plus fn_8022FD8C/8022FEB8(x3)/
# 80230CFC/80388CAC/8038C678(x2) - the last one confirms the ~41KB
# "uncertain stretch" found near actor #1 is genuinely shared infrastructure
# (reused here too).
.section extab, "a"
.balign 4
.global etb_8000EE60
etb_8000EE60:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000EE60, 8

.section extabindex, "a"
.balign 4
.global eti_8001EC94
eti_8001EC94:
    .4byte fn_8038FA58
    .4byte 0x000002B0
    .4byte etb_8000EE60
.size eti_8001EC94, 12

.text
.balign 4
.global fn_8038FA58

fn_8038FA58:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    lwz 4, 0x4(3)
    addi 3, 31, 0xc
    bl fn_80226850
    clrlwi 29, 3, 16
    cmpwi 29, 0x1c7
    .4byte 0x4082001C # bne .L_8038FAA8
    .4byte 0xC02201B8 # lfs f1, lbl_80543158@sda21(r0)
    .4byte 0xC00201BC # lfs f0, lbl_8054315C@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_8038FAA8:
    lfs 3, 0x6c(31)
    .4byte 0xC04201C0 # lfs f2, lbl_80543160@sda21(r0)
    lfs 1, 0x68(31)
    lfs 0, 0x60(31)
    fsubs 5, 3, 2
    lfs 3, 0x64(31)
    fsubs 4, 1, 2
    fadds 1, 2, 0
    stfs 3, 0x24(1)
    stfs 1, 0x20(1)
    stfs 4, 0x28(1)
    stfs 5, 0x2c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 4, 0
    stfs 1, 0x20(1)
    lfs 2, 0x10(31)
    fadds 1, 3, 2
    stfs 0, 0x28(1)
    fadds 0, 5, 2
    stfs 1, 0x24(1)
    stfs 0, 0x2c(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x418201AC # beq .L_8038FCB4
    .4byte 0x408001DC # bge .L_8038FCE8
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8038FB1C
    .4byte 0x480001D0 # b .L_8038FCE8
L_8038FB1C:
    cmpwi 29, 0x71
    .4byte 0x41820014 # beq .L_8038FB34
    cmpwi 29, 0x3c
    .4byte 0x4182000C # beq .L_8038FB34
    cmpwi 29, 0x1c7
    .4byte 0x40820178 # bne .L_8038FCA8
L_8038FB34:
    lwz 28, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_8038FB6C
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    .4byte 0x4800001C # b .L_8038FB84
L_8038FB6C:
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x1
    bl fn_8022FEB8
L_8038FB84:
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    cmpwi 29, 0x71
    stw 3, 0x234(31)
    li 30, 0x400
    .4byte 0x40820008 # bne .L_8038FBA0
    li 30, 0x200
L_8038FBA0:
    lwz 28, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820064 # beq .L_8038FC1C
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x41800124 # blt .L_8038FCE8
    lwz 29, 0x198(31)
    lwz 28, 0x4(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    addi 7, 1, 0x14
    lfs 0, 0x8(3)
    mr 5, 29
    mr 6, 28
    mr 8, 30
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x1c(1)
    lwz 0, 0x90(31)
    lwz 3, 0x234(31)
    clrlwi 4, 0, 16
    addi 4, 4, 0x12b
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_8038FCE8
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x480000D0 # b .L_8038FCE8
L_8038FC1C:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x418000C4 # blt .L_8038FCE8
    bl fn_80230CFC
    cmpwi 3, 0x3
    .4byte 0x408200B8 # bne .L_8038FCE8
    lwz 3, 0x234(31)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082009C # bne .L_8038FCE8
    lwz 28, 0x198(31)
    lwz 29, 0x4(31)
    lwz 3, 0x234(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    addi 7, 1, 0x8
    lfs 0, 0x8(3)
    mr 5, 28
    mr 6, 29
    mr 8, 30
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x90(31)
    lwz 3, 0x234(31)
    clrlwi 4, 0, 16
    addi 4, 4, 0x12b
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_8038FCE8
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000044 # b .L_8038FCE8
L_8038FCA8:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000038 # b .L_8038FCE8
L_8038FCB4:
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8038FCE8
    li 0, 0x0
    stw 0, 0x230(31)
L_8038FCE8:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

