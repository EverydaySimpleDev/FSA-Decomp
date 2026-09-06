# fn_80394690 - leading helper (0x30c) - string formatting (strcpy/strcat x4 each)
.section extab, "a"
.balign 4
.global etb_8000EFA0
etb_8000EFA0:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000EFA0, 8

.section extabindex, "a"
.balign 4
.global eti_8001EE14
eti_8001EE14:
    .4byte fn_80394690
    .4byte 0x0000030C
    .4byte etb_8000EFA0
.size eti_8001EE14, 12

.text
.balign 4
.global fn_80394690

fn_80394690:
    stwu 1, -0x260(1)
    mflr 0
    stw 0, 0x264(1)
    stfd 31, 0x250(1)
    psq_st 31, 0x258(1), 0, 0
    stw 31, 0x24c(1)
    stw 30, 0x248(1)
    mr 31, 3
    lbz 0, 0x3b0(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_803946CC
    lwz 3, 0x8(31)
    bl fn_80078C94
    li 0, 0x0
    stb 0, 0x3b0(31)
L_803946CC:
    lwz 3, 0x2c(31)
    lis 4, 0x546d
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 5, 0x164(31)
    lis 4, 0x4330
    lbz 0, 0x1aa(31)
    xoris 5, 5, 0x8000
    stw 4, 0x228(1)
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    cmplwi 0, 0x0
    stw 5, 0x22c(1)
    .4byte 0xC0620248 # lfs f3, lbl_805431E8@sda21(r0)
    lfd 0, 0x228(1)
    lfs 1, 0x118(3)
    fsubs 2, 0, 2
    .4byte 0xC0820244 # lfs f4, lbl_805431E4@sda21(r0)
    .4byte 0xC0020240 # lfs f0, lbl_805431E0@sda21(r0)
    fsubs 2, 3, 2
    fmuls 1, 2, 1
    fmadds 31, 4, 1, 0
    .4byte 0x4082024C # bne .L_8039497C
    addi 3, 1, 0x128
    addi 4, 31, 0x1ab
    bl strcpy
    addi 3, 1, 0x28
    addi 4, 31, 0x2ab
    bl strcpy
    addi 3, 31, 0x3ab
    bl strlen
    cmplwi 3, 0x0
    .4byte 0x4182010C # beq .L_80394864
    lwz 4, 0x10(31)
    lis 3, lbl_8050DB0C@ha
    addi 3, 3, lbl_8050DB0C@l
    lwz 0, 0x170(31)
    lwz 6, 0x4c(4)
    addi 4, 1, 0x128
    li 5, 0x0
    lha 7, 0x4c(3)
    stbx 5, 4, 0
    addi 3, 1, 0x28
    cmpw 6, 7
    mr 4, 6
    lwz 0, 0x170(31)
    stbx 5, 3, 0
    .4byte 0x40810008 # ble .L_8039479C
    li 4, 0x0
L_8039479C:
    subf 0, 4, 7
    lis 6, 0x4330
    xoris 3, 0, 0x8000
    stw 6, 0x228(1)
    xoris 0, 7, 0x8000
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 3, 0x22c(1)
    lis 3, lbl_80475DC8@ha
    addi 5, 3, lbl_80475DC8@l
    .4byte 0xC062024C # lfs f3, lbl_805431EC@sda21(r0)
    lfd 0, 0x228(1)
    addi 3, 1, 0x8
    stw 0, 0x234(1)
    li 4, 0x1e
    fsubs 1, 0, 2
    lwz 7, 0x154(31)
    stw 6, 0x230(1)
    lfd 0, 0x230(1)
    fmuls 1, 3, 1
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x238(1)
    lwz 0, 0x23c(1)
    mr 6, 0
    clrlwi 30, 0, 24
    rlwimi 6, 7, 0, 0, 23
    crclr 6
    bl fn_8006B414
    addi 3, 1, 0x128
    addi 4, 1, 0x8
    bl strcat
    addi 3, 1, 0x128
    addi 4, 31, 0x3ab
    bl strcat
    lwz 0, 0x158(31)
    lis 3, lbl_80475DC8@ha
    addi 5, 3, lbl_80475DC8@l
    li 4, 0x1e
    clrrwi 0, 0, 8
    addi 3, 1, 0x8
    or 6, 0, 30
    crclr 6
    bl fn_8006B414
    addi 3, 1, 0x28
    addi 4, 1, 0x8
    bl strcat
    addi 3, 1, 0x28
    addi 4, 31, 0x3ab
    bl strcat
L_80394864:
    lwz 3, 0x2c(31)
    lis 4, 0x546d
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 1, 0x128
    bl strcpy
    lwz 3, 0x2c(31)
    lis 4, 0x546d
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    addi 4, 1, 0x28
    bl strcpy
    lwz 3, 0x2c(31)
    lis 4, 0x546d
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x9c(31)
    lis 4, lbl_8050DB0C@ha
    addi 30, 4, lbl_8050DB0C@l
    lwz 12, 0x0(3)
    fadds 0, 0, 31
    lfs 2, 0x3c(30)
    lwz 12, 0x10(12)
    lfs 1, 0xd8(31)
    fadds 2, 2, 0
    mtctr 12
    bctrl
    lwz 3, 0x2c(31)
    lis 4, 0x546d
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x9c(31)
    lwz 12, 0x0(3)
    fadds 0, 0, 31
    lfs 1, 0x3c(30)
    lfs 4, 0xd8(31)
    lfs 3, 0xe0(31)
    fadds 0, 1, 0
    lfs 2, 0xe4(31)
    lwz 12, 0x10(12)
    fadds 1, 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC022023C # lfs f1, lbl_805431DC@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x2c(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_8039497C:
    psq_l 31, 0x258(1), 0, 0
    lwz 0, 0x264(1)
    lfd 31, 0x250(1)
    lwz 31, 0x24c(1)
    lwz 30, 0x248(1)
    mtlr 0
    addi 1, 1, 0x260
    blr

