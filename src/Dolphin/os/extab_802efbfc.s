# fn_802EFBFC - LTEV: main per-frame update() (0x50C, largest piece)
# Drives the light/color transition set up by Ltev_SetupLightTransition, advancing the
# interpolated color/intensity values each frame. Reuses fn_80128C58/
# fn_8013A884 (same animation/texture utilities as setParams) plus
# fn_8018330C, Glwp_GetAmbientEffectGroupByte, and fn_802DEBA0 (unfamiliar helpers). Track A:
# byte-match verified, structural overview per the large/complex-function
# exception.
.section extab, "a"
.balign 4
.global etb_8000D2C4
etb_8000D2C4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D2C4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C540
eti_8001C540:
    .4byte fn_802EFBFC
    .4byte 0x0000050C
    .4byte etb_8000D2C4
.size eti_8001C540, 12

.text
.balign 4
.global fn_802EFBFC

fn_802EFBFC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    bl fn_802DEBA0
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_802EFC2C
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    stw 0, 0x244(31)
    .4byte 0x4800000C # b .L_802EFC34
L_802EFC2C:
    li 0, -0x1
    stw 0, 0x244(31)
L_802EFC34:
    lwz 4, 0x90(31)
    li 0, 0x0
    addi 3, 1, 0xc
    extrwi 4, 4, 5, 5
    stw 4, 0x240(31)
    stw 0, 0x230(31)
    bl fn_8018330C
    lbz 0, 0xc(1)
    stb 0, 0x248(31)
    lbz 0, 0xd(1)
    stb 0, 0x249(31)
    lbz 0, 0xe(1)
    stb 0, 0x24a(31)
    lbz 0, 0xf(1)
    stb 0, 0x24b(31)
    lwz 0, 0x248(31)
    srwi 0, 0, 24
    stw 0, 0x24c(31)
    lwz 0, 0x248(31)
    extrwi 0, 0, 8, 8
    stw 0, 0x250(31)
    lwz 0, 0x248(31)
    extrwi 0, 0, 8, 16
    stw 0, 0x254(31)
    lwz 0, 0x248(31)
    clrlwi 0, 0, 24
    stw 0, 0x258(31)
    bl Glwp_GetAmbientEffectGroupByte
    clrlwi 0, 3, 24
    .4byte 0xC002E490 # lfs f0, lbl_80541430@sda21(r0)
    stw 0, 0x268(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lfs 1, 0x10(3)
    fneg 1, 1
    stfs 1, 0x234(31)
    lfs 1, 0x20(3)
    fneg 1, 1
    stfs 1, 0x238(31)
    stfs 0, 0x23c(31)
    lwz 0, 0x244(31)
    cmplwi 0, 0x11
    .4byte 0x41810394 # bgt .L_802F0070
    lis 3, jumptable_804AA548@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AA548@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 3, 31
    li 4, 0xd2
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xaa
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x48000354 # b .L_802F0078
    mr 3, 31
    li 4, 0x96
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x48000324 # b .L_802F0078
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xa0
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0x82
    li 9, 0x0
    mtctr 12
    bctrl
    .4byte 0x480002F4 # b .L_802F0078
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xa0
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x480002C4 # b .L_802F0078
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xa0
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xc8
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x48000294 # b .L_802F0078
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xa0
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xc8
    li 9, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000264 # b .L_802F0078
    mr 3, 31
    li 4, 0xc8
    lwz 12, 0x0(31)
    li 5, 0xd2
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x48000234 # b .L_802F0078
    mr 3, 31
    li 4, 0xc8
    lwz 12, 0x0(31)
    li 5, 0xd2
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xc8
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x48000204 # b .L_802F0078
    mr 3, 31
    li 4, 0xc8
    lwz 12, 0x0(31)
    li 5, 0xd2
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xc8
    li 9, 0x0
    mtctr 12
    bctrl
    .4byte 0x480001D4 # b .L_802F0078
    mr 3, 31
    li 4, 0x96
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x480001A4 # b .L_802F0078
    mr 3, 31
    li 4, 0x96
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0x82
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x48000174 # b .L_802F0078
    mr 3, 31
    li 4, 0x96
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0x82
    li 9, 0x0
    mtctr 12
    bctrl
    .4byte 0x48000144 # b .L_802F0078
    mr 3, 31
    li 4, 0xd2
    lwz 12, 0x0(31)
    li 5, 0xff
    li 6, 0xff
    li 7, 0x19
    lwz 12, 0x54(12)
    li 8, 0xdc
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x48000114 # b .L_802F0078
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x80
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x480000E4 # b .L_802F0078
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x80
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xc8
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x480000B4 # b .L_802F0078
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x80
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0x82
    li 9, 0x0
    mtctr 12
    bctrl
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x4800007C # b .L_802F0078
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xc8
    li 6, 0xa0
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0xa
    li 9, 0x4
    mtctr 12
    bctrl
    li 3, 0xc8
    li 0, 0x5
    stw 3, 0x26c(31)
    stw 0, 0x230(31)
    .4byte 0x4800003C # b .L_802F0078
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0xff
    li 6, 0xff
    li 7, 0x0
    lwz 12, 0x54(12)
    li 8, 0x80
    li 9, 0x4
    mtctr 12
    bctrl
    .4byte 0x4800000C # b .L_802F0078
L_802F0070:
    li 0, 0x4
    stw 0, 0x230(31)
L_802F0078:
    lwz 0, 0x268(31)
    clrlwi 3, 0, 24
    bl fn_80128C58
    lwz 4, 0x24c(31)
    addi 3, 1, 0x8
    lwz 0, 0x250(31)
    lwz 5, 0x254(31)
    slwi 4, 4, 24
    slwi 0, 0, 16
    lwz 6, 0x258(31)
    slwi 5, 5, 8
    or 0, 4, 0
    or 0, 5, 0
    or 0, 6, 0
    stw 0, 0x8(1)
    bl fn_8013A884
    mr 3, 31
    psq_l 1, 0xc(31), 0, 0
    lwz 12, 0x0(31)
    lfs 0, 0x14(31)
    lwz 12, 0x14(12)
    psq_st 1, 0x10(1), 0, 0
    stfs 0, 0x18(1)
    mtctr 12
    bctrl
    psq_l 1, 0x10(1), 0, 0
    li 0, 0x1
    lfs 0, 0x18(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    stb 0, 0x11f(31)
    lwz 31, 0x2c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

