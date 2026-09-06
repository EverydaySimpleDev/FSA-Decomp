# fn_803972A4 - component C: destructor (0x84) - also touches component B's secondary vtable lbl_804AF6E4
.section extab, "a"
.balign 4
.global etb_8000EFE0
etb_8000EFE0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000EFE0, 8

.section extabindex, "a"
.balign 4
.global eti_8001EE74
eti_8001EE74:
    .4byte fn_803972A4
    .4byte 0x00000084
    .4byte etb_8000EFE0
.size eti_8001EE74, 12

.text
.balign 4
.global fn_803972A4

fn_803972A4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182004C # beq .L_8039730C
    lis 3, lbl_804AF72C@ha
    addic. 0, 30, 0x38
    addi 0, 3, lbl_804AF72C@l
    stw 0, 0x0(30)
    .4byte 0x4182001C # beq .L_803972F0
    lis 4, lbl_804AF6E4@ha
    addi 3, 30, 0x38
    addi 0, 4, lbl_804AF6E4@l
    li 4, 0x0
    stw 0, 0x38(30)
    bl dtor_800788C0
L_803972F0:
    mr 3, 30
    li 4, 0x0
    bl dtor_800788C0
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8039730C
    mr 3, 30
    bl dtor_80084580
L_8039730C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

