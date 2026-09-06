# Fresh-gap-hunt batch 11 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000CA14
etb_8000CA14:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000CA14, 8

.global etb_8000CA1C
etb_8000CA1C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CA1C, 8

.global etb_8000CA24
etb_8000CA24:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CA24, 8

.global etb_8000CA2C
etb_8000CA2C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CA2C, 8

.section extabindex, "a"
.balign 4
.global eti_8001B898
eti_8001B898:
    .4byte fn_802C1970
    .4byte 0x000003C0
    .4byte etb_8000CA14
.size eti_8001B898, 12

.global eti_8001B8A4
eti_8001B8A4:
    .4byte fn_802C1D30
    .4byte 0x00000060
    .4byte etb_8000CA1C
.size eti_8001B8A4, 12

.global eti_8001B8B0
eti_8001B8B0:
    .4byte fn_802C1D90
    .4byte 0x0000006C
    .4byte etb_8000CA24
.size eti_8001B8B0, 12

.global eti_8001B8BC
eti_8001B8BC:
    .4byte fn_802C1DFC
    .4byte 0x000000C8
    .4byte etb_8000CA2C
.size eti_8001B8BC, 12

.text
.balign 4
.global fn_802C1970
.global fn_802C1D30
.global fn_802C1D90
.global fn_802C1DFC

fn_802C1970:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 3
    mr 3, 30
    stw 28, 0x10(1)
    mr 28, 4
    bl fn_8022461C
    clrlwi 31, 3, 16
    mr 3, 30
    mr 4, 28
    bl fn_80226850
    clrlwi 30, 3, 16
    cmpwi 30, 0x230
    .4byte 0x4182000C # beq .L_802C19C4
    cmpwi 30, 0x231
    .4byte 0x4082000C # bne .L_802C19CC
L_802C19C4:
    li 3, 0x0
    .4byte 0x48000348 # b .L_802C1D10
L_802C19CC:
    subi 0, 30, 0x19e
    cmplwi 0, 0x1
    .4byte 0x408100F4 # ble .L_802C1AC8
    subi 0, 30, 0x350
    cmplwi 0, 0x1
    .4byte 0x408100E8 # ble .L_802C1AC8
    subi 0, 30, 0x342
    cmplwi 0, 0x1
    .4byte 0x408100DC # ble .L_802C1AC8
    subi 0, 30, 0x345
    cmplwi 0, 0x1
    .4byte 0x408100D0 # ble .L_802C1AC8
    subi 0, 30, 0x355
    cmplwi 0, 0x1
    .4byte 0x408100C4 # ble .L_802C1AC8
    subi 0, 30, 0x2ee
    cmplwi 0, 0x1
    .4byte 0x408100B8 # ble .L_802C1AC8
    subi 0, 30, 0x2fe
    cmplwi 0, 0x1
    .4byte 0x408100AC # ble .L_802C1AC8
    subi 0, 30, 0x338
    cmplwi 0, 0x1
    .4byte 0x408100A0 # ble .L_802C1AC8
    subi 0, 30, 0x32a
    cmplwi 0, 0x1
    .4byte 0x40810094 # ble .L_802C1AC8
    subi 0, 30, 0x32d
    cmplwi 0, 0x1
    .4byte 0x40810088 # ble .L_802C1AC8
    subi 0, 30, 0x33d
    cmplwi 0, 0x1
    .4byte 0x4081007C # ble .L_802C1AC8
    subi 0, 30, 0x2ce
    cmplwi 0, 0x1
    .4byte 0x40810070 # ble .L_802C1AC8
    subi 0, 30, 0x2de
    cmplwi 0, 0x1
    .4byte 0x40810064 # ble .L_802C1AC8
    subi 0, 30, 0x3b0
    cmplwi 0, 0x1
    .4byte 0x40810058 # ble .L_802C1AC8
    subi 0, 30, 0x3a2
    cmplwi 0, 0x1
    .4byte 0x4081004C # ble .L_802C1AC8
    subi 0, 30, 0x3a5
    cmplwi 0, 0x1
    .4byte 0x40810040 # ble .L_802C1AC8
    cmpwi 30, 0x3b6
    .4byte 0x41820038 # beq .L_802C1AC8
    subi 0, 30, 0x398
    cmplwi 0, 0x1
    .4byte 0x4081002C # ble .L_802C1AC8
    subi 0, 30, 0x38a
    cmplwi 0, 0x1
    .4byte 0x40810020 # ble .L_802C1AC8
    cmpwi 30, 0x39d
    .4byte 0x41820018 # beq .L_802C1AC8
    subi 0, 30, 0x38d
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_802C1AC8
    cmpwi 30, 0x39e
    .4byte 0x4082000C # bne .L_802C1AD0
L_802C1AC8:
    li 3, 0x1
    .4byte 0x48000244 # b .L_802C1D10
L_802C1AD0:
    lwz 3, 0x280(29)
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_802C1AF8
    subi 0, 3, 0x1
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_802C1AF8
    cmpwi 3, 0x6
    .4byte 0x4182000C # beq .L_802C1AF8
    cmpwi 3, 0x9
    .4byte 0x40820020 # bne .L_802C1B14
L_802C1AF8:
    subi 0, 30, 0x1a8
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_802C1B0C
    cmpwi 30, 0x1aa
    .4byte 0x4082000C # bne .L_802C1B14
L_802C1B0C:
    li 3, 0x1
    .4byte 0x48000200 # b .L_802C1D10
L_802C1B14:
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_802C1B40
    cmpwi 30, 0x14
    .4byte 0x4082000C # bne .L_802C1B40
    li 3, 0x0
    .4byte 0x480001D4 # b .L_802C1D10
L_802C1B40:
    cmpwi 31, 0x0
    .4byte 0x418201C8 # beq .L_802C1D0C
    cmpwi 31, 0x4
    .4byte 0x418201C0 # beq .L_802C1D0C
    cmpwi 31, 0x5
    .4byte 0x418201B8 # beq .L_802C1D0C
    cmpwi 31, 0x6
    .4byte 0x418201B0 # beq .L_802C1D0C
    cmpwi 31, 0x7
    .4byte 0x418201A8 # beq .L_802C1D0C
    cmpwi 31, 0x2
    .4byte 0x418201A0 # beq .L_802C1D0C
    cmpwi 31, 0x3
    .4byte 0x41820198 # beq .L_802C1D0C
    cmpwi 31, 0x50
    .4byte 0x41820190 # beq .L_802C1D0C
    cmpwi 31, 0xe
    .4byte 0x41820188 # beq .L_802C1D0C
    cmpwi 31, 0xc
    .4byte 0x41820180 # beq .L_802C1D0C
    cmpwi 31, 0x2c
    .4byte 0x41820178 # beq .L_802C1D0C
    cmpwi 31, 0x2d
    .4byte 0x41820170 # beq .L_802C1D0C
    cmpwi 31, 0x2e
    .4byte 0x41820168 # beq .L_802C1D0C
    cmpwi 31, 0x2f
    .4byte 0x41820160 # beq .L_802C1D0C
    cmpwi 31, 0x20
    .4byte 0x41820158 # beq .L_802C1D0C
    cmpwi 31, 0xd
    .4byte 0x41820150 # beq .L_802C1D0C
    cmpwi 31, 0x39
    .4byte 0x41820148 # beq .L_802C1D0C
    cmpwi 31, 0x3a
    .4byte 0x41820140 # beq .L_802C1D0C
    cmpwi 31, 0x3b
    .4byte 0x41820138 # beq .L_802C1D0C
    cmpwi 31, 0x4c
    .4byte 0x41820130 # beq .L_802C1D0C
    cmpwi 31, 0x4d
    .4byte 0x41820128 # beq .L_802C1D0C
    cmpwi 31, 0x4e
    .4byte 0x41820120 # beq .L_802C1D0C
    cmpwi 31, 0x4f
    .4byte 0x41820118 # beq .L_802C1D0C
    cmpwi 31, 0x24
    .4byte 0x41820110 # beq .L_802C1D0C
    subi 0, 31, 0x10
    cmplwi 0, 0x6
    .4byte 0x4081000C # ble .L_802C1C14
    cmpwi 31, 0x17
    .4byte 0x40820064 # bne .L_802C1C74
L_802C1C14:
    lwz 0, 0x280(29)
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_802C1C28
    cmpwi 0, 0x8
    .4byte 0x4082000C # bne .L_802C1C30
L_802C1C28:
    li 3, 0x0
    .4byte 0x480000E4 # b .L_802C1D10
L_802C1C30:
    lfs 1, 0x14(29)
    .4byte 0xC002DCD0 # lfs f0, lbl_80540C70@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810038 # ble .L_802C1C74
    lfs 1, 0x3c(29)
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x40820028 # bne .L_802C1C74
    li 0, 0x12c
    .4byte 0xC002DCD8 # lfs f0, lbl_80540C78@sda21(r0)
    stw 0, 0x288(29)
    lfs 1, 0x14(29)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802C1C6C
    stfs 0, 0x14(29)
L_802C1C6C:
    li 3, 0x0
    .4byte 0x480000A0 # b .L_802C1D10
L_802C1C74:
    cmpwi 30, 0x3a
    .4byte 0x4082000C # bne .L_802C1C84
    li 3, 0x1
    .4byte 0x48000090 # b .L_802C1D10
L_802C1C84:
    cmpwi 30, 0x3d
    .4byte 0x4082000C # bne .L_802C1C94
    li 3, 0x0
    .4byte 0x48000080 # b .L_802C1D10
L_802C1C94:
    cmpwi 31, 0x25
    .4byte 0x40820018 # bne .L_802C1CB0
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000064 # b .L_802C1D10
L_802C1CB0:
    cmpwi 31, 0x26
    .4byte 0x4082001C # bne .L_802C1CD0
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000044 # b .L_802C1D10
L_802C1CD0:
    subi 0, 31, 0x18
    cmplwi 0, 0x2
    .4byte 0x4081000C # ble .L_802C1CE4
    cmpwi 31, 0x1b
    .4byte 0x4082000C # bne .L_802C1CEC
L_802C1CE4:
    li 3, 0x0
    .4byte 0x48000028 # b .L_802C1D10
L_802C1CEC:
    cmpwi 31, 0x22
    .4byte 0x40820014 # bne .L_802C1D04
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_802C1D0C
L_802C1D04:
    li 3, 0x1
    .4byte 0x48000008 # b .L_802C1D10
L_802C1D0C:
    li 3, 0x0
L_802C1D10:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802C1D30:
    stwu 1, -0x10(1)
    mflr 0
    psq_l 1, 0x0(4), 0, 0
    stw 0, 0x14(1)
    lfs 0, 0x8(4)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    psq_st 1, 0x260(30), 0, 0
    stfs 0, 0x268(3)
    stw 5, 0x26c(3)
    bl GetRoomConfigRecord
    lwz 31, 0x18(3)
    bl GetRoomConfigRecord
    lwz 3, 0x14(3)
    clrlwi 0, 31, 24
    rlwimi 0, 3, 8, 16, 23
    sth 0, 0x2aa(30)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802C1D90:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lfs 1, 0x230(3)
    lfs 0, 0x234(3)
    stfs 1, 0x10(1)
    lwz 31, 0x238(3)
    stfs 0, 0x14(1)
    lwz 3, 0x10(1)
    lwz 0, 0x14(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 5, 31
    addi 4, 1, 0x8
    bl fn_802D6C10
    li 0, 0x0
    stb 0, 0x11c(30)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802C1DFC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 31, 0x4(3)
    cmpwi 31, 0x8
    .4byte 0x4180002C # blt .L_802C1E48
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 31
    addi 4, 4, 0x5249
    addi 6, 30, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800002C # b .L_802C1E70
L_802C1E48:
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    mr 3, 31
    addi 4, 30, 0xc
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C1E70:
    lfs 1, 0x230(30)
    lfs 0, 0x234(30)
    stfs 1, 0x10(1)
    lwz 31, 0x238(30)
    stfs 0, 0x14(1)
    lwz 3, 0x10(1)
    lwz 0, 0x14(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 5, 31
    addi 4, 1, 0x8
    bl fn_802D6C10
    li 0, 0x0
    stb 0, 0x11c(30)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

