# fn_80401AC8 - vtable-slot function for lbl_804B0FB0 (0xDC) - locks/unlocks a mutex
.section extab, "a"
.balign 4
.global etb_8001016C
etb_8001016C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8001016C, 8

.section extabindex, "a"
.balign 4
.global eti_8001FEB8
eti_8001FEB8:
    .4byte fn_80401AC8
    .4byte 0x000000DC
    .4byte etb_8001016C
.size eti_8001FEB8, 12

.text
.balign 4
.global fn_80401AC8

fn_80401AC8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 4, 0x18(3)
    cmplwi 4, 0x0
    .4byte 0x41820008 # beq .L_80401AF0
    .4byte 0x48000008 # b .L_80401AF4
L_80401AF0:
    .4byte 0x808D9234 # lwz r4, lbl_8053ADF4@sda21(r0)
L_80401AF4:
    lwz 0, 0x14(30)
    li 31, 0x0
    cmplwi 0, 0x0
    .4byte 0x40820054 # bne .L_80401B54
    lbz 0, 0xc(30)
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_80401B34
    li 3, 0x6c
    li 5, 0x20
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_80401B2C
    bl fn_80079EFC
    mr 0, 3
L_80401B2C:
    stw 0, 0x14(30)
    .4byte 0x48000024 # b .L_80401B54
L_80401B34:
    li 3, 0x6c
    li 5, -0x20
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_80401B50
    bl fn_80079EFC
    mr 0, 3
L_80401B50:
    stw 0, 0x14(30)
L_80401B54:
    lwz 3, 0x14(30)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80401B80
    lbz 0, 0xc(30)
    li 5, 0x2
    lwz 4, 0x10(30)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80401B78
    li 5, 0x1
L_80401B78:
    bl fn_8007A198
    clrlwi 31, 3, 24
L_80401B80:
    li 0, 0x1
    mr 3, 31
    stb 0, 0x4(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

