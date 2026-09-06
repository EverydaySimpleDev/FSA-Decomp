# fn_804201E0 - actor@lbl_804B13D4: destructor (0x394)
.section extab, "a"
.balign 4
.global etb_8001057C
etb_8001057C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8001057C, 8

.section extabindex, "a"
.balign 4
.global eti_800203F8
eti_800203F8:
    .4byte fn_804201E0
    .4byte 0x00000394
    .4byte etb_8001057C
.size eti_800203F8, 12

.text
.balign 4
.global fn_804201E0

fn_804201E0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr. 31, 3
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    .4byte 0x4182034C # beq .L_80420550
    lis 3, lbl_804B13D4@ha
    addi 0, 3, lbl_804B13D4@l
    stw 0, 0x0(31)
    lwz 3, 0x50(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80420240
    .4byte 0x41820018 # beq .L_80420238
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420238:
    li 0, 0x0
    stw 0, 0x50(31)
L_80420240:
    lwz 3, 0x4c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420260
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420260:
    li 0, 0x0
    stw 0, 0x4c(31)
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420288
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420288:
    li 0, 0x0
    mr 28, 31
    stw 0, 0x4(31)
    li 29, 0x0
L_80420298:
    lwz 3, 0x8(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804202B8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804202B8:
    li 0, 0x0
    stw 0, 0x8(28)
    lwz 3, 0x2c(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804202E0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804202E0:
    addi 29, 29, 0x1
    li 0, 0x0
    cmpwi 29, 0x4
    stw 0, 0x2c(28)
    addi 28, 28, 0x4
    .4byte 0x4180FFA4 # blt .L_80420298
    lwz 3, 0x18(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420318
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420318:
    li 0, 0x0
    stw 0, 0x18(31)
    lwz 3, 0x54(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420340
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420340:
    li 0, 0x0
    stw 0, 0x54(31)
    lwz 3, 0x58(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420368
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420368:
    li 0, 0x0
    stw 0, 0x58(31)
    lwz 3, 0x5c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420390
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420390:
    li 0, 0x0
    stw 0, 0x5c(31)
    lwz 3, 0x6c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804203B8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804203B8:
    li 0, 0x0
    stw 0, 0x6c(31)
    lwz 3, 0x70(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804203E0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804203E0:
    li 0, 0x0
    mr 29, 31
    stw 0, 0x70(31)
    li 28, 0x0
L_804203F0:
    lwz 3, 0x74(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420410
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420410:
    li 0, 0x0
    stw 0, 0x74(29)
    lwz 3, 0x84(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420438
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420438:
    li 0, 0x0
    stw 0, 0x84(29)
    lwz 3, 0x94(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420460
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420460:
    li 0, 0x0
    stw 0, 0x94(29)
    lwz 3, 0xa4(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420488
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420488:
    li 0, 0x0
    stw 0, 0xa4(29)
    lwz 3, 0xb4(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804204B0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804204B0:
    li 0, 0x0
    stw 0, 0xb4(29)
    lwz 3, 0xc4(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804204D8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804204D8:
    li 0, 0x0
    stw 0, 0xc4(29)
    lwz 3, 0xd4(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420500
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420500:
    li 0, 0x0
    stw 0, 0xd4(29)
    lwz 3, 0xe4(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80420528
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80420528:
    addi 28, 28, 0x1
    li 0, 0x0
    cmpwi 28, 0x4
    stw 0, 0xe4(29)
    addi 29, 29, 0x4
    .4byte 0x4180FEB4 # blt .L_804203F0
    extsh. 0, 30
    .4byte 0x4081000C # ble .L_80420550
    mr 3, 31
    bl dtor_80084580
L_80420550:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

