# fn_803D69AC - BFIN: helper (0x13C)
.section extab, "a"
.balign 4
.global etb_8000FA8C
etb_8000FA8C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000FA8C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F924
eti_8001F924:
    .4byte fn_803D69AC
    .4byte 0x0000013C
    .4byte etb_8000FA8C
.size eti_8001F924, 12

.text
.balign 4
.global fn_803D69AC

fn_803D69AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 3, 0x23c(3)
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_803D69FC
    li 0, 0x1
    li 3, -0x1
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    stb 0, 0x7f6(4)
L_803D69FC:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x418100CC # bgt .L_803D6AD0
    lwz 0, 0x234(31)
    cmpwi 0, -0x1
    .4byte 0x40820030 # bne .L_803D6A40
    li 0, 0x4
    li 4, 0x3c
    stw 0, 0x230(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458F9C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_801365C8
    li 0, 0x1
    stw 0, 0x23c(31)
    .4byte 0x48000094 # b .L_803D6AD0
L_803D6A40:
    li 30, 0x0
L_803D6A44:
    addi 0, 30, 0x241
    lbzx 0, 31, 0
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_803D6A9C
    lwz 0, 0x234(31)
    cmpw 30, 0
    .4byte 0x41820018 # beq .L_803D6A74
    mr 3, 30
    bl fn_8022F3DC
    lwz 0, 0x234(31)
    cmpw 0, 3
    .4byte 0x4082002C # bne .L_803D6A9C
L_803D6A74:
    mr 3, 30
    bl fn_8023E724
    mr 4, 3
    mr 3, 30
    li 5, 0x3e
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_803D6A9C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFA0 # blt .L_803D6A44
    li 0, 0x3
    li 4, 0x3c
    stw 0, 0x230(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458F9C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_801365C8
    li 0, 0x1
    stw 0, 0x23c(31)
L_803D6AD0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

