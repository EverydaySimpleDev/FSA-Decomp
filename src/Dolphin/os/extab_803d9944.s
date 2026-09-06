# fn_803D9944 - TNGL (lbl_804B0478, ctor fn_80202C34 already landed):
# vtable-slot function (0x160). HUD marker (fn_803075AC x2), player-validity
# (fn_8023DE58 x2).
.section extab, "a"
.balign 4
.global etb_8000FB44
etb_8000FB44:
    .4byte 0x28CA0000
    .4byte 0x00000000
.size etb_8000FB44, 8

.section extabindex, "a"
.balign 4
.global eti_8001F9D8
eti_8001F9D8:
    .4byte fn_803D9944
    .4byte 0x00000160
    .4byte etb_8000FB44
.size eti_8001F9D8, 12

.text
.balign 4
.global fn_803D9944

fn_803D9944:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    mr 27, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x40820100 # bne .L_803D9A78
    li 29, 0x34c
    li 3, 0x0
    bl fn_80237060
    cmpwi 3, 0x2
    .4byte 0x41800008 # blt .L_803D9994
    li 29, 0x364
L_803D9994:
    lwz 0, 0x90(27)
    cmpwi 0, 0x0
    .4byte 0x408200A4 # bne .L_803D9A40
    lfs 31, 0xc(27)
    mr 30, 27
    lfs 30, 0x10(27)
    li 28, 0x0
    lfs 29, 0x14(27)
L_803D99B4:
    mr 3, 28
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800060 # blt .L_803D9A20
    lfs 0, 0x260(30)
    mr 3, 28
    stfs 0, 0xc(27)
    lfs 0, 0x264(30)
    stfs 0, 0x10(27)
    lfs 0, 0x268(30)
    stfs 0, 0x14(27)
    lwz 0, 0x24c(27)
    add 31, 29, 0
    bl fn_8023DE58
    li 0, 0x0
    mr 4, 3
    stw 0, 0x8(1)
    li 0, 0x1
    mr 6, 31
    subi 3, 28, 0x22b
    stw 0, 0xc(1)
    addi 5, 27, 0xc
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    li 10, 0x1
    bl fn_803075AC
L_803D9A20:
    addi 28, 28, 0x1
    addi 30, 30, 0xc
    cmpwi 28, 0x4
    .4byte 0x4180FF88 # blt .L_803D99B4
    stfs 31, 0xc(27)
    stfs 30, 0x10(27)
    stfs 29, 0x14(27)
    .4byte 0x4800003C # b .L_803D9A78
L_803D9A40:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x8(1)
    addi 5, 27, 0xc
    li 7, 0x0
    li 8, 0x2
    stw 0, 0xc(1)
    li 9, -0x1
    li 10, 0x1
    lwz 0, 0x24c(27)
    lwz 3, 0x198(27)
    lwz 4, 0x4(27)
    add 6, 29, 0
    bl fn_803075AC
L_803D9A78:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

