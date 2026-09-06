# fn_802E79B0 - MJGR: main per-frame update() (0x154)
# Gates on own virtual slot 0x34 (room-active check); if active, scans a
# 1024-cell terrain grid (fn_802F9908/fn_802F9974 r/w) looking for cells
# matching this->0x230/0x234 (target grid coordinates); on a match, if
# this->0x23c is set spawns via fn_80226CA8 + either the "KMRI" FourCC
# dispatch (fn_801F9484, for grid indices >= 8) or a fn_8013CC50 sound
# trigger (for smaller indices), and if this->0x238 is set additionally
# notifies via fn_801F0E34; after the scan, calls GetRoomConfigRecord (per-room
# config accessor) + fn_802D7584(this->0x16c, 1) and clears flag byte
# this->0x11c.
.section extab, "a"
.balign 4
.global etb_8000D0B4
etb_8000D0B4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D0B4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C240
eti_8001C240:
    .4byte fn_802E79B0
    .4byte 0x00000154
    .4byte etb_8000D0B4
.size eti_8001C240, 12

.text
.balign 4
.global fn_802E79B0

fn_802E79B0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820104 # bne .L_802E7AE8
    li 30, 0x0
L_802E79EC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 5, 30
    lwz 4, 0x4(29)
    lwz 3, 0x20(3)
    bl fn_802F9908
    lwz 4, 0x230(29)
    clrlwi 0, 3, 16
    cmpw 4, 0
    .4byte 0x408200B8 # bne .L_802E7AC4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 5, 30
    lwz 0, 0x234(29)
    lwz 3, 0x20(3)
    lwz 4, 0x4(29)
    clrlwi 6, 0, 16
    bl fn_802F9974
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x41820070 # beq .L_802E7AA4
    lwz 4, 0x4(29)
    mr 3, 30
    addi 5, 1, 0x8
    bl fn_80226CA8
    lwz 31, 0x4(29)
    cmpwi 31, 0x8
    .4byte 0x4180002C # blt .L_802E7A7C
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 31
    addi 4, 4, 0x5249
    addi 6, 1, 0x8
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800002C # b .L_802E7AA4
L_802E7A7C:
    .4byte 0xC022E2B8 # lfs f1, lbl_80541258@sda21(r0)
    mr 3, 31
    addi 4, 1, 0x8
    li 5, 0x35c
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802E7AA4:
    lwz 0, 0x238(29)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802E7AC4
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
L_802E7AC4:
    addi 30, 30, 0x1
    cmpwi 30, 0x400
    .4byte 0x4180FF20 # blt .L_802E79EC
    bl GetRoomConfigRecord
    lwz 4, 0x16c(29)
    li 5, 0x1
    bl fn_802D7584
    li 0, 0x0
    stb 0, 0x11c(29)
L_802E7AE8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

