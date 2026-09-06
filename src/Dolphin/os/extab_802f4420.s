# fn_802F4420 - TBO2: update() (0xF0)
# Calls fn_802F86CC (confirmed spatial-triad family member) then
# fn_803075AC (HUD/map marker registration).
.section extab, "a"
.balign 4
.global etb_8000D374
etb_8000D374:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D374, 8

.section extabindex, "a"
.balign 4
.global eti_8001C630
eti_8001C630:
    .4byte fn_802F4420
    .4byte 0x000000F0
    .4byte etb_8000D374
.size eti_8001C630, 12

.text
.balign 4
.global fn_802F4420

fn_802F4420:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC002E530 # lfs f0, lbl_805414D0@sda21(r0)
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lfs 2, 0x10(3)
    lfs 1, 0xc(3)
    fsubs 2, 2, 0
    .4byte 0xC002E534 # lfs f0, lbl_805414D4@sda21(r0)
    stfs 1, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 0, 0x24(1)
    lwz 0, 0x4(3)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_802F44AC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046F928@ha
    addi 5, 3, lbl_8046F928@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022E538 # lfs f1, lbl_805414D8@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 6, 0x21
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(4)
    addi 4, 1, 0x1c
    bl fn_802F86CC
L_802F44AC:
    lfs 2, 0x10(31)
    li 0, 0x0
    .4byte 0xC002E530 # lfs f0, lbl_805414D0@sda21(r0)
    addi 5, 1, 0x10
    lfs 1, 0xc(31)
    li 6, 0x21
    fsubs 2, 2, 0
    .4byte 0xC002E534 # lfs f0, lbl_805414D4@sda21(r0)
    stfs 1, 0x10(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stfs 2, 0x14(1)
    li 10, 0x0
    stfs 0, 0x18(1)
    stw 0, 0x8(1)
    stw 0, 0xc(1)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    bl fn_803075AC
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

