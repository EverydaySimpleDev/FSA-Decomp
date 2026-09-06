# fn_80401D20 - vtable-slot function for lbl_804B0FC0 (0xF0) - locks/unlocks a mutex
.section extab, "a"
.balign 4
.global etb_80010184
etb_80010184:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010184, 8

.section extabindex, "a"
.balign 4
.global eti_8001FEDC
eti_8001FEDC:
    .4byte fn_80401D20
    .4byte 0x000000F0
    .4byte etb_80010184
.size eti_8001FEDC, 12

.text
.balign 4
.global fn_80401D20

fn_80401D20:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x18(3)
    cmplwi 4, 0x0
    .4byte 0x41820008 # beq .L_80401D44
    .4byte 0x48000008 # b .L_80401D48
L_80401D44:
    .4byte 0x808D9234 # lwz r4, lbl_8053ADF4@sda21(r0)
L_80401D48:
    lbz 0, 0xc(31)
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_80401D80
    li 3, 0x70
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820014 # beq .L_80401D78
    lwz 4, 0x10(31)
    li 5, 0x1
    bl fn_800845F0
    mr 0, 3
L_80401D78:
    mr 3, 0
    .4byte 0x4800002C # b .L_80401DA8
L_80401D80:
    li 3, 0x70
    li 5, -0x4
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820014 # beq .L_80401DA4
    lwz 4, 0x10(31)
    li 5, 0x2
    bl fn_800845F0
    mr 0, 3
L_80401DA4:
    mr 3, 0
L_80401DA8:
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80401DC4
    lbz 0, 0x30(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80401DC4
    stw 3, 0x14(31)
    .4byte 0x48000024 # b .L_80401DE4
L_80401DC4:
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80401DE4
    .4byte 0x41820018 # beq .L_80401DE4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80401DE4:
    li 0, 0x1
    stb 0, 0x4(31)
    lwz 3, 0x14(31)
    lwz 31, 0xc(1)
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

