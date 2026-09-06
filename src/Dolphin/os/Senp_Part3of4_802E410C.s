# SENP cluster, part 3/4 (96B). Uses unfamiliar fn_801F1184/
# fn_804561D8.
.section extab, "a"
.balign 4
.global etb_8000CF8C
etb_8000CF8C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CF8C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C0B4
eti_8001C0B4:
    .4byte fn_802E410C
    .4byte 0x00000060
    .4byte etb_8000CF8C
.size eti_8001C0B4, 12

.text
.balign 4
.global fn_802E410C

fn_802E410C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_801F1184
    lwz 0, 0x234(31)
    lis 4, lbl_8046F0B8@ha
    addi 6, 4, lbl_8046F0B8@l
    .4byte 0x38A2E258 # li r5, lbl_805411F8@sda21
    slwi 0, 0, 2
    addi 4, 1, 0x8
    lwzx 0, 6, 0
    li 6, 0x0
    stw 0, 0x8(1)
    lwz 0, 0x238(31)
    lbz 7, 0x23c(31)
    lbzx 5, 5, 0
    bl fn_804561D8
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

