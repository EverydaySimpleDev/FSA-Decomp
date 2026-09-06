# Fresh-gap-hunt batch 23 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_800083A0
etb_800083A0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800083A0, 8

.section extabindex, "a"
.balign 4
.global eti_80015694
eti_80015694:
    .4byte fn_801CE5D4
    .4byte 0x000000C0
    .4byte etb_800083A0
.size eti_80015694, 12

.text
.balign 4
.global fn_801CE5D4

fn_801CE5D4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x230(3)
    clrlwi. 0, 0, 29
    .4byte 0x41820088 # beq .L_801CE67C
    lfs 0, 0x20(30)
    stfs 0, 0x14(30)
    lfs 0, 0x23c(30)
    stfs 0, 0x44(30)
    lwz 12, 0x0(3)
    lwz 12, 0x84(12)
    mtctr 12
    bctrl
    lfs 2, 0x14(30)
    lfs 1, 0x44(30)
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x14(30)
    lfs 1, 0x14(30)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820044 # bne .L_801CE67C
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801CE670
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x80(12)
    mtctr 12
    bctrl
    .4byte 0x48000010 # b .L_801CE67C
L_801CE670:
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    stfs 0, 0x14(30)
    stfs 0, 0x44(30)
L_801CE67C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

