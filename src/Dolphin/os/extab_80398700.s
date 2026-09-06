# fn_80398700 - component A: fused multi-entry-point body (0x334, 10 vtable slots)
.section extab, "a"
.balign 4
.global etb_8000F194
etb_8000F194:
    .4byte 0x20CA0000
    .4byte 0x00000000
.size etb_8000F194, 8

.section extabindex, "a"
.balign 4
.global eti_8001EEB0
eti_8001EEB0:
    .4byte fn_80398700
    .4byte 0x00000334
    .4byte etb_8000F194
.size eti_8001EEB0, 12

.text
.balign 4
.global fn_80398700

fn_80398700:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 29, 3
    lis 6, lbl_80475768@ha
    lwz 3, 0x38(3)
    mr 31, 4
    mr 30, 5
    addi 28, 6, lbl_80475768@l
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    xoris 0, 3, 0x8000
    lis 3, 0x4330
    stw 0, 0x24(1)
    clrlwi 0, 31, 24
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    cmplwi 0, 0x9
    stw 3, 0x20(1)
    li 3, 0x0
    lfs 0, 0x48(29)
    addi 31, 1, 0xc
    lfd 1, 0x20(1)
    stb 3, 0xc(1)
    fsubs 1, 1, 2
    stb 3, 0xd(1)
    fdivs 29, 0, 1
    stb 3, 0xe(1)
    stb 3, 0xf(1)
    stb 3, 0x10(1)
    stb 3, 0x11(1)
    stb 3, 0x12(1)
    stb 3, 0x13(1)
    stb 3, 0x14(1)
    stb 3, 0x15(1)
    stb 3, 0x16(1)
    stb 3, 0x17(1)
    stb 3, 0x18(1)
    stb 3, 0x19(1)
    stb 3, 0x1a(1)
    .4byte 0x41810180 # bgt .L_8039894C
    lis 3, jumptable_804AF5AC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AF5AC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    cmpwi 30, 0x1
    .4byte 0x40820014 # bne .L_80398800
    mr 3, 31
    addi 4, 28, 0x788
    bl strcat
    .4byte 0x48000150 # b .L_8039894C
L_80398800:
    mr 3, 31
    addi 4, 28, 0x794
    bl strcat
    .4byte 0x48000140 # b .L_8039894C
    cmpwi 30, 0x1
    .4byte 0x40820014 # bne .L_80398828
    mr 3, 31
    .4byte 0x388202A4 # li r4, lbl_80543244@sda21
    bl strcat
    .4byte 0x48000128 # b .L_8039894C
L_80398828:
    mr 3, 31
    .4byte 0x388202AC # li r4, lbl_8054324C@sda21
    bl strcat
    .4byte 0x48000118 # b .L_8039894C
    cmpwi 30, 0x1
    .4byte 0x40820014 # bne .L_80398850
    mr 3, 31
    .4byte 0x388202B4 # li r4, lbl_80543254@sda21
    bl strcat
    .4byte 0x48000100 # b .L_8039894C
L_80398850:
    mr 3, 31
    addi 4, 28, 0x7a0
    bl strcat
    .4byte 0x480000F0 # b .L_8039894C
    cmpwi 30, 0x1
    .4byte 0x40820014 # bne .L_80398878
    mr 3, 31
    .4byte 0x388202BC # li r4, lbl_8054325C@sda21
    bl strcat
    .4byte 0x480000D8 # b .L_8039894C
L_80398878:
    mr 3, 31
    .4byte 0x388202C4 # li r4, lbl_80543264@sda21
    bl strcat
    .4byte 0x480000C8 # b .L_8039894C
    cmpwi 30, 0x1
    .4byte 0x40820014 # bne .L_803988A0
    mr 3, 31
    .4byte 0x388202CC # li r4, lbl_8054326C@sda21
    bl strcat
    .4byte 0x480000B0 # b .L_8039894C
L_803988A0:
    mr 3, 31
    addi 4, 28, 0x7ac
    bl strcat
    .4byte 0x480000A0 # b .L_8039894C
    cmpwi 30, 0x1
    .4byte 0x40820014 # bne .L_803988C8
    mr 3, 31
    .4byte 0x388202D4 # li r4, lbl_80543274@sda21
    bl strcat
    .4byte 0x48000088 # b .L_8039894C
L_803988C8:
    mr 3, 31
    addi 4, 28, 0x7b8
    bl strcat
    .4byte 0x48000078 # b .L_8039894C
    cmpwi 30, 0x1
    .4byte 0x40820014 # bne .L_803988F0
    mr 3, 31
    .4byte 0x388202DC # li r4, lbl_8054327C@sda21
    bl strcat
    .4byte 0x48000060 # b .L_8039894C
L_803988F0:
    mr 3, 31
    .4byte 0x388202E4 # li r4, lbl_80543284@sda21
    bl strcat
    .4byte 0x48000050 # b .L_8039894C
    cmpwi 30, 0x1
    .4byte 0x40820014 # bne .L_80398918
    mr 3, 31
    .4byte 0x388202EC # li r4, lbl_8054328C@sda21
    bl strcat
    .4byte 0x48000038 # b .L_8039894C
L_80398918:
    mr 3, 31
    addi 4, 28, 0x7c4
    bl strcat
    .4byte 0x48000028 # b .L_8039894C
    cmpwi 30, 0x1
    .4byte 0x40820014 # bne .L_80398940
    mr 3, 31
    addi 4, 28, 0x7d0
    bl strcat
    .4byte 0x48000010 # b .L_8039894C
L_80398940:
    mr 3, 31
    addi 4, 28, 0x7e0
    bl strcat
L_8039894C:
    .4byte 0xCBC20250 # lfd f30, lbl_805431F0@sda21(r0)
    li 30, 0x0
    .4byte 0xC3E20248 # lfs f31, lbl_805431E8@sda21(r0)
    lis 28, 0x4330
    .4byte 0x48000094 # b .L_803989F0
L_80398960:
    lwz 3, 0x38(29)
    extsb 4, 4
    addi 5, 1, 0x8
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x9(1)
    addi 30, 30, 0x1
    stw 28, 0x20(1)
    cmpwi 30, 0xf
    xoris 4, 3, 0x8000
    lbz 0, 0x201(29)
    stw 4, 0x24(1)
    addi 31, 31, 0x1
    slwi 3, 0, 2
    lfs 2, 0x44(29)
    lfd 1, 0x20(1)
    addi 0, 3, 0x4c
    lfsx 0, 29, 0
    fsubs 1, 1, 30
    fmuls 1, 2, 1
    fmadds 0, 29, 1, 0
    stfsx 0, 29, 0
    lbz 0, 0x201(29)
    slwi 3, 0, 2
    addi 0, 3, 0xf4
    lfsx 0, 29, 0
    fadds 0, 0, 31
    stfsx 0, 29, 0
    lbz 3, 0x201(29)
    addi 4, 3, 0x22d
    lbzx 3, 29, 4
    addi 0, 3, 0x1
    stbx 0, 29, 4
    .4byte 0x40800010 # bge .L_803989FC
L_803989F0:
    lbz 4, 0x0(31)
    extsb. 0, 4
    .4byte 0x4082FF68 # bne .L_80398960
L_803989FC:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 0, 0x74(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

