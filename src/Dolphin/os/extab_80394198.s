# fn_80394198 - TALK: update()-related (0xE4)
# Calls GetRoomConfigRecord (per-room config), fn_802DCD0C, fn_80384C58, and
# fn_8038AD24 (the latter two are large functions from the ~41KB stretch
# near actor #1 - further confirmation that stretch is shared infra).
.section extab, "a"
.balign 4
.global etb_8000EF88
etb_8000EF88:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000EF88, 8

.section extabindex, "a"
.balign 4
.global eti_8001EDF0
eti_8001EDF0:
    .4byte fn_80394198
    .4byte 0x000000E4
    .4byte etb_8000EF88
.size eti_8001EDF0, 12

.text
.balign 4
.global fn_80394198

fn_80394198:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x230(3)
    lwz 3, 0x90(3)
    cmpwi 0, 0x1
    srwi 31, 3, 28
    clrlwi 4, 3, 4
    .4byte 0x4182005C # beq .L_80394220
    .4byte 0x4080009C # bge .L_80394264
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_803941D8
    .4byte 0x48000090 # b .L_80394264
L_803941D8:
    lwz 6, 0x4(30)
    addi 7, 1, 0x8
    psq_l 1, 0xc(30), 0, 0
    mr 3, 31
    lfs 0, 0x14(30)
    li 8, 0x1004
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    lwz 5, 0x234(30)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80394214
    li 0, 0x1
    stw 0, 0x230(30)
    .4byte 0x48000054 # b .L_80394264
L_80394214:
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000048 # b .L_80394264
L_80394220:
    lha 3, 0x238(30)
    subi 0, 3, 0x1
    sth 0, 0x238(30)
    lha 0, 0x238(30)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_80394248
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_80394264
L_80394248:
    lwz 4, 0x234(30)
    mr 3, 31
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80394264
    li 0, 0x0
    stb 0, 0x11c(30)
L_80394264:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

