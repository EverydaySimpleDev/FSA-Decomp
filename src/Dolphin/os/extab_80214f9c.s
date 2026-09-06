# Fresh-gap-hunt batch 21 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A1A8
etb_8000A1A8:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000A1A8, 8

.section extabindex, "a"
.balign 4
.global eti_80017DC4
eti_80017DC4:
    .4byte dtor_80214F9C
    .4byte 0x0000011C
    .4byte etb_8000A1A8
.size eti_80017DC4, 12

.text
.balign 4
.global dtor_80214F9C

dtor_80214F9C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr. 29, 3
    .4byte 0x418200DC # beq .L_80215098
    lwz 0, 0x0(29)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80214FE4
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x0(29)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x0(29)
L_80214FE4:
    lwz 31, 0x30(29)
    cmpwi 31, 0x0
    .4byte 0x41800028 # blt .L_80215014
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8021500C
    li 0, 0x0
    stb 0, 0x11c(3)
L_8021500C:
    li 0, -0x1
    stw 0, 0x30(29)
L_80215014:
    lwz 0, 0x18(29)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80215038
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x18(29)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x18(29)
L_80215038:
    lis 4, 0x4
    lwz 3, 0x34(29)
    addi 4, 4, 0xe
    bl fn_801CDC8C
    addic. 0, 29, 0x1c
    .4byte 0x4182001C # beq .L_80215068
    lis 4, lbl_804A64A8@ha
    addi 3, 29, 0x1c
    addi 0, 4, lbl_804A64A8@l
    li 4, 0x0
    stw 0, 0x1c(29)
    bl fn_800EF320
L_80215068:
    addic. 0, 29, 0x4
    .4byte 0x4182001C # beq .L_80215088
    lis 4, lbl_804A64A8@ha
    addi 3, 29, 0x4
    addi 0, 4, lbl_804A64A8@l
    li 4, 0x0
    stw 0, 0x4(29)
    bl fn_800EF320
L_80215088:
    extsh. 0, 30
    .4byte 0x4081000C # ble .L_80215098
    mr 3, 29
    bl dtor_80084580
L_80215098:
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

