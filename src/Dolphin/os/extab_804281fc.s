# fn_804281FC + fn_8042828C + fn_80428294 - 3 helpers bundled (0x90+0x8+0x8),
# call into the fused bundle below.
.section extab, "a"
.balign 4
.global etb_8001077C
etb_8001077C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8001077C, 8

.section extabindex, "a"
.balign 4
.global eti_80020590
eti_80020590:
    .4byte fn_804281FC
    .4byte 0x00000090
    .4byte etb_8001077C
.size eti_80020590, 12

.text
.balign 4
.global fn_804281FC

fn_804281FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    bl fn_804286A0
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_8042826C
    bl fn_80428294
    bl fn_8042828C
    lis 4, lbl_8052BEC0@ha
    .4byte 0x800D92E4 # lwz r0, lbl_8053AEA4@sda21(r0)
    addi 5, 4, lbl_8052BEC0@l
    .4byte 0x80ED92E8 # lwz r7, lbl_8053AEA8@sda21(r0)
    lwz 6, 0x0(5)
    add 4, 0, 28
    lwz 0, 0x4(5)
    add 5, 7, 29
    add 6, 6, 30
    add 7, 0, 31
    bl fn_804288A0
    bl fn_80428A88
L_8042826C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.global fn_8042828C
.global fn_80428294

fn_8042828C:
    lwz 3, 0x4(3)
    blr

fn_80428294:
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    blr

