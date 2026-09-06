# fn_8040F3AC - actor@lbl_804B0FE0: PTMF-dispatched method (0xC8)
.section extab, "a"
.balign 4
.global etb_800103BC
etb_800103BC:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_800103BC, 8

.section extabindex, "a"
.balign 4
.global eti_80020230
eti_80020230:
    .4byte fn_8040F3AC
    .4byte 0x000000C8
    .4byte etb_800103BC
.size eti_80020230, 12

.text
.balign 4
.global fn_8040F3AC

fn_8040F3AC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 27, 3
    li 29, 0x0
    mr 30, 27
L_8040F3C8:
    li 28, 0x0
    mr 31, 30
L_8040F3D0:
    lwz 3, 0x228(31)
    li 4, 0x14
    .4byte 0xC0220920 # lfs f1, lbl_805438C0@sda21(r0)
    li 5, 0x0
    .4byte 0xC04208F8 # lfs f2, lbl_80543898@sda21(r0)
    bl fn_80402940
    addi 28, 28, 0x1
    addi 31, 31, 0x4
    cmpwi 28, 0x2
    .4byte 0x4180FFDC # blt .L_8040F3D0
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x2
    .4byte 0x4180FFC4 # blt .L_8040F3C8
    lwz 3, 0x238(27)
    li 4, 0x14
    .4byte 0xC0220920 # lfs f1, lbl_805438C0@sda21(r0)
    li 5, 0x0
    .4byte 0xC04208F8 # lfs f2, lbl_80543898@sda21(r0)
    bl fn_80402940
    lwz 3, 0x23c(27)
    li 4, 0x14
    .4byte 0xC0220920 # lfs f1, lbl_805438C0@sda21(r0)
    li 5, 0x0
    .4byte 0xC04208F8 # lfs f2, lbl_80543898@sda21(r0)
    bl fn_80402940
    lwz 3, 0x11c(27)
    li 4, 0x14
    .4byte 0xC0220900 # lfs f1, lbl_805438A0@sda21(r0)
    li 5, 0x0
    .4byte 0xC04208F8 # lfs f2, lbl_80543898@sda21(r0)
    bl fn_80402940
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8040F460
    li 0, 0xb
    stw 0, 0x350(27)
L_8040F460:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

