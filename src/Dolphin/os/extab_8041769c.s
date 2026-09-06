# fn_8041769C - actor@lbl_804B1378: destructor (0x1E0)
.section extab, "a"
.balign 4
.global etb_800104B4
etb_800104B4:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_800104B4, 8

.section extabindex, "a"
.balign 4
.global eti_800202E4
eti_800202E4:
    .4byte fn_8041769C
    .4byte 0x000001E0
    .4byte etb_800104B4
.size eti_800202E4, 12

.text
.balign 4
.global fn_8041769C

fn_8041769C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x418201B0 # beq .L_80417864
    lis 3, lbl_804B1378@ha
    addi 0, 3, lbl_804B1378@l
    stw 0, 0x0(30)
    .4byte 0x806D9304 # lwz r3, lbl_8053AEC4@sda21(r0)
    bl fn_8042EB14
    lwz 3, 0x24(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804176EC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804176EC:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x24(30)
    li 27, 0x0
L_804176FC:
    lwz 3, 0x28(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8041771C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8041771C:
    addi 27, 27, 0x1
    stw 29, 0x28(28)
    cmpwi 27, 0x3
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_804176FC
    lwz 3, 0x34(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80417750
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80417750:
    li 0, 0x0
    stw 0, 0x34(30)
    lwz 3, 0x38(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80417778
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80417778:
    li 0, 0x0
    mr 28, 30
    stw 0, 0x38(30)
    li 27, 0x0
L_80417788:
    lwz 3, 0x3c(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804177A8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804177A8:
    li 0, 0x0
    stw 0, 0x3c(28)
    lwz 3, 0x6c(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804177D0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804177D0:
    addi 27, 27, 0x1
    li 0, 0x0
    cmpwi 27, 0xa
    stw 0, 0x6c(28)
    addi 28, 28, 0x4
    .4byte 0x4180FFA4 # blt .L_80417788
    lwz 3, 0x9c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80417808
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80417808:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x9c(30)
    li 27, 0x0
L_80417818:
    lwz 3, 0xa4(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80417838
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80417838:
    addi 27, 27, 0x1
    stw 29, 0xa4(28)
    cmpwi 27, 0xf
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_80417818
    li 3, 0x0
    extsh. 0, 31
    .4byte 0x906D9240 # stw r3, lbl_8053AE00@sda21(r0)
    .4byte 0x4081000C # ble .L_80417864
    mr 3, 30
    bl dtor_80084580
L_80417864:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

