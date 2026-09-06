# GNON cluster, part 3/8 (Track A byte-match + overview - 0x1C0=448B).
# Not part of the original 7-slot vtable manifest but sits exactly
# contiguous between draw() and update() - a private helper. Calls the
# confirmed effect-spawn fn_8013CC50 and fn_801F2B7C.
.section extab, "a"
.balign 4
.global etb_800077FC
etb_800077FC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800077FC, 8

.section extabindex, "a"
.balign 4
.global eti_80014578
eti_80014578:
    .4byte fn_80192BD8
    .4byte 0x000001C0
    .4byte etb_800077FC
.size eti_80014578, 12

.text
.balign 4
.global fn_80192BD8

fn_80192BD8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x2d
    .4byte 0x4182009C # beq .L_80192C90
    .4byte 0x408000AC # bge .L_80192CA4
    cmpwi 0, 0x2c
    .4byte 0x40800008 # bge .L_80192C08
    .4byte 0x480000A0 # b .L_80192CA4
L_80192C08:
    li 0, 0x32
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    stw 0, 0x234(31)
    addi 4, 31, 0xc
    li 5, 0x359
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x35a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B2F8 # lfs f1, lbl_8053E298@sda21(r0)
    li 5, 0x35b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x2d
    stw 0, 0x230(31)
L_80192C90:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80192CA4
    li 0, 0x0
    stb 0, 0x11c(31)
L_80192CA4:
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80192CCC
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_80192CCC:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80192CE0
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80192CE0:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80192CF8
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_80192CF8:
    lwz 3, 0x238(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80192D0C
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_80192D0C:
    lwz 3, 0x23c(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80192D20
    subi 0, 3, 0x1
    stw 0, 0x23c(4)
L_80192D20:
    lwz 3, 0x240(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80192D34
    subi 0, 3, 0x1
    stw 0, 0x240(4)
L_80192D34:
    lwz 3, 0x244(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80192D48
    subi 0, 3, 0x1
    stw 0, 0x244(4)
L_80192D48:
    lwz 3, 0x248(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80192D5C
    subi 0, 3, 0x1
    stw 0, 0x248(4)
L_80192D5C:
    lwz 3, 0x24c(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80192D70
    subi 0, 3, 0x1
    stw 0, 0x24c(4)
L_80192D70:
    lwz 3, 0x250(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80192D84
    subi 0, 3, 0x1
    stw 0, 0x250(4)
L_80192D84:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

