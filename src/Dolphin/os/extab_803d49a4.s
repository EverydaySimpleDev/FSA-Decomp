# fn_803D49A4 - helper (0x40C)
.section extab, "a"
.balign 4
.global etb_8000FA0C
etb_8000FA0C:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_8000FA0C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F894
eti_8001F894:
    .4byte fn_803D49A4
    .4byte 0x0000040C
    .4byte etb_8000FA0C
.size eti_8001F894, 12

.text
.balign 4
.global fn_803D49A4

fn_803D49A4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stfd 30, 0x10(1)
    psq_st 30, 0x18(1), 0, 0
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x2c(3)
    .4byte 0xC0620554 # lfs f3, lbl_805434F4@sda21(r0)
    lwz 4, 0x4(3)
    lfs 30, 0x18(3)
    lfs 4, 0x28(4)
    lfs 0, 0x20(4)
    lfs 2, 0x2c(4)
    lfs 1, 0x24(4)
    fsubs 31, 4, 0
    lfs 0, 0x1c(3)
    fsubs 1, 2, 1
    fsubs 2, 31, 30
    fsubs 0, 1, 0
    fmuls 1, 3, 2
    fmuls 0, 3, 0
    fneg 1, 1
    fneg 2, 0
    bl fn_80402E08
    lwz 3, 0x30(31)
    .4byte 0xC0A20554 # lfs f5, lbl_805434F4@sda21(r0)
    lwz 4, 0x4(3)
    lfs 3, 0x18(3)
    lfs 2, 0x2c(4)
    lfs 1, 0x24(4)
    lfs 4, 0x28(4)
    lfs 0, 0x20(4)
    fsubs 1, 2, 1
    fsubs 4, 4, 0
    lfs 0, 0x1c(3)
    fsubs 0, 1, 0
    fsubs 2, 4, 3
    fmuls 0, 5, 0
    fmuls 1, 5, 2
    fneg 2, 0
    bl fn_80402E08
    lwz 3, 0x34(31)
    .4byte 0xC0A20554 # lfs f5, lbl_805434F4@sda21(r0)
    lwz 4, 0x4(3)
    lfs 3, 0x18(3)
    lfs 4, 0x28(4)
    lfs 0, 0x20(4)
    lfs 2, 0x2c(4)
    fsubs 4, 4, 0
    lfs 1, 0x24(4)
    lfs 0, 0x1c(3)
    fsubs 1, 2, 1
    fsubs 2, 4, 3
    fsubs 0, 1, 0
    fmuls 1, 5, 2
    fmuls 2, 5, 0
    fneg 1, 1
    bl fn_80402E08
    lwz 3, 0x38(31)
    .4byte 0xC0A20554 # lfs f5, lbl_805434F4@sda21(r0)
    lwz 4, 0x4(3)
    lfs 3, 0x18(3)
    lfs 4, 0x28(4)
    lfs 0, 0x20(4)
    lfs 2, 0x2c(4)
    lfs 1, 0x24(4)
    fsubs 4, 4, 0
    lfs 0, 0x1c(3)
    fsubs 1, 2, 1
    fsubs 2, 4, 3
    fsubs 0, 1, 0
    fmuls 1, 5, 2
    fmuls 2, 5, 0
    bl fn_80402E08
    fdivs 1, 31, 30
    .4byte 0xC002052C # lfs f0, lbl_805434CC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800180 # bge .L_803D4C64
    lwz 5, 0x2c(31)
    lwz 3, 0x3c(31)
    lwz 4, 0x4(5)
    lfs 3, 0x18(5)
    lfs 1, 0x28(4)
    lfs 0, 0x20(4)
    lfs 4, 0x18(3)
    fsubs 0, 1, 0
    .4byte 0xC0220530 # lfs f1, lbl_805434D0@sda21(r0)
    lfs 2, 0x1c(3)
    fsubs 0, 3, 0
    fmadds 0, 1, 0, 4
    fdivs 1, 0, 4
    bl fn_80402CE0
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    lwz 3, 0x3c(31)
    fmr 2, 1
    bl fn_80402E08
    lwz 5, 0x30(31)
    lwz 3, 0x40(31)
    lwz 4, 0x4(5)
    lfs 3, 0x18(5)
    lfs 1, 0x28(4)
    lfs 0, 0x20(4)
    lfs 4, 0x18(3)
    fsubs 0, 1, 0
    .4byte 0xC0220530 # lfs f1, lbl_805434D0@sda21(r0)
    lfs 2, 0x1c(3)
    fsubs 0, 3, 0
    fmadds 0, 1, 0, 4
    fdivs 1, 0, 4
    bl fn_80402CE0
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    lwz 3, 0x40(31)
    fmr 2, 1
    bl fn_80402E08
    lwz 7, 0x34(31)
    lwz 4, 0x2c(31)
    lwz 6, 0x4(7)
    lwz 4, 0x4(4)
    lwz 5, 0x30(31)
    lfs 1, 0x2c(6)
    lfs 0, 0x24(6)
    lwz 5, 0x4(5)
    fsubs 0, 1, 0
    lfs 1, 0x1c(7)
    lwz 3, 0x44(31)
    lfs 4, 0x28(4)
    lfs 2, 0x20(4)
    fsubs 0, 1, 0
    lfs 3, 0x28(5)
    fsubs 4, 4, 2
    lfs 2, 0x20(5)
    lfs 5, 0x1c(3)
    fsubs 2, 3, 2
    .4byte 0xC0220530 # lfs f1, lbl_805434D0@sda21(r0)
    lfs 3, 0x18(3)
    fmadds 0, 1, 0, 5
    fadds 1, 4, 2
    fdivs 2, 0, 5
    fdivs 1, 1, 3
    bl fn_80402CE0
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    lwz 3, 0x44(31)
    fmr 2, 1
    bl fn_80402E08
    lwz 6, 0x38(31)
    lwz 4, 0x34(31)
    lwz 5, 0x4(6)
    lwz 4, 0x4(4)
    lfs 1, 0x2c(5)
    lfs 0, 0x24(5)
    lfs 4, 0x28(4)
    lfs 2, 0x20(4)
    fsubs 0, 1, 0
    lfs 1, 0x1c(6)
    fsubs 4, 4, 2
    lwz 3, 0x48(31)
    fsubs 0, 1, 0
    lfs 3, 0x28(5)
    lfs 2, 0x20(5)
    lfs 5, 0x1c(3)
    fsubs 2, 3, 2
    .4byte 0xC0220530 # lfs f1, lbl_805434D0@sda21(r0)
    lfs 3, 0x18(3)
    fmadds 0, 1, 0, 5
    fadds 1, 4, 2
    fdivs 2, 0, 5
    fdivs 1, 1, 3
    bl fn_80402CE0
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    lwz 3, 0x48(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0x4800012C # b .L_803D4D8C
L_803D4C64:
    lwz 3, 0x3c(31)
    lwz 6, 0x2c(31)
    lwz 4, 0x4(3)
    lwz 5, 0x4(6)
    lfs 3, 0x28(4)
    lfs 2, 0x20(4)
    lfs 1, 0x28(5)
    lfs 0, 0x20(5)
    fsubs 3, 3, 2
    lfs 2, 0x18(3)
    fsubs 1, 1, 0
    lfs 0, 0x18(6)
    fsubs 3, 3, 2
    .4byte 0xC0820554 # lfs f4, lbl_805434F4@sda21(r0)
    .4byte 0xC0420520 # lfs f2, lbl_805434C0@sda21(r0)
    fsubs 0, 1, 0
    fmadds 0, 4, 3, 0
    fneg 1, 0
    bl fn_80402E08
    lwz 3, 0x40(31)
    lwz 6, 0x30(31)
    lwz 4, 0x4(3)
    lwz 5, 0x4(6)
    lfs 3, 0x28(4)
    lfs 2, 0x20(4)
    lfs 1, 0x28(5)
    lfs 0, 0x20(5)
    fsubs 3, 3, 2
    lfs 2, 0x18(3)
    fsubs 1, 1, 0
    lfs 0, 0x18(6)
    fsubs 3, 3, 2
    .4byte 0xC0820554 # lfs f4, lbl_805434F4@sda21(r0)
    .4byte 0xC0420520 # lfs f2, lbl_805434C0@sda21(r0)
    fsubs 0, 1, 0
    fmadds 1, 4, 3, 0
    bl fn_80402E08
    lwz 3, 0x44(31)
    lwz 6, 0x34(31)
    lwz 4, 0x4(3)
    lwz 5, 0x4(6)
    lfs 3, 0x2c(4)
    lfs 2, 0x24(4)
    lfs 1, 0x2c(5)
    fsubs 4, 3, 2
    lfs 0, 0x24(5)
    lfs 3, 0x1c(3)
    fsubs 2, 1, 0
    lfs 0, 0x1c(6)
    fsubs 3, 4, 3
    .4byte 0xC0820554 # lfs f4, lbl_805434F4@sda21(r0)
    fsubs 0, 2, 0
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    fmadds 0, 4, 3, 0
    fneg 2, 0
    bl fn_80402E08
    lwz 3, 0x48(31)
    lwz 6, 0x38(31)
    lwz 4, 0x4(3)
    lwz 5, 0x4(6)
    lfs 3, 0x2c(4)
    lfs 2, 0x24(4)
    lfs 1, 0x2c(5)
    fsubs 4, 3, 2
    lfs 0, 0x24(5)
    lfs 3, 0x1c(3)
    fsubs 2, 1, 0
    lfs 0, 0x1c(6)
    fsubs 3, 4, 3
    .4byte 0xC0820554 # lfs f4, lbl_805434F4@sda21(r0)
    fsubs 0, 2, 0
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    fmadds 2, 4, 3, 0
    bl fn_80402E08
L_803D4D8C:
    psq_l 31, 0x28(1), 0, 0
    lfd 31, 0x20(1)
    psq_l 30, 0x18(1), 0, 0
    lfd 30, 0x10(1)
    lwz 0, 0x34(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

