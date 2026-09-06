# Fresh-gap-hunt batch 11 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A564
etb_8000A564:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A564, 8

.global etb_8000A56C
etb_8000A56C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A56C, 8

.global etb_8000A574
etb_8000A574:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A574, 8

.section extabindex, "a"
.balign 4
.global eti_80018340
eti_80018340:
    .4byte fn_80220680
    .4byte 0x0000007C
    .4byte etb_8000A564
.size eti_80018340, 12

.global eti_8001834C
eti_8001834C:
    .4byte fn_802206FC
    .4byte 0x000001A0
    .4byte etb_8000A56C
.size eti_8001834C, 12

.global eti_80018358
eti_80018358:
    .4byte fn_8022089C
    .4byte 0x00000334
    .4byte etb_8000A574
.size eti_80018358, 12

.text
.balign 4
.global fn_80220680
.global fn_802206FC
.global fn_8022089C

fn_80220680:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x4
    .4byte 0x41820028 # beq .L_802206BC
    .4byte 0x40800010 # bge .L_802206A8
    cmpwi 0, 0x2
    .4byte 0x41820014 # beq .L_802206B4
    .4byte 0x4800002C # b .L_802206D0
L_802206A8:
    cmpwi 0, 0x6
    .4byte 0x41820010 # beq .L_802206BC
    .4byte 0x48000020 # b .L_802206D0
L_802206B4:
    bl fn_80221250
    .4byte 0x48000034 # b .L_802206EC
L_802206BC:
    lfs 1, 0x44(3)
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x44(3)
    .4byte 0x48000020 # b .L_802206EC
L_802206D0:
    .4byte 0xC002CE78 # lfs f0, lbl_8053FE18@sda21(r0)
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    lwz 12, 0x0(3)
    lwz 12, 0x84(12)
    mtctr 12
    bctrl
L_802206EC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802206FC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmplwi 0, 0x6
    .4byte 0x41810170 # bgt .L_80220888
    lis 4, jumptable_804A6974@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A6974@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    bl fn_80221408
    .4byte 0x48000150 # b .L_80220888
    bl fn_80221334
    .4byte 0x48000148 # b .L_80220888
    bl fn_802212AC
    .4byte 0x48000140 # b .L_80220888
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820024 # beq .L_80220778
    lfs 1, 0x14(31)
    .4byte 0xC002CE78 # lfs f0, lbl_8053FE18@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820120 # bne .L_80220888
    li 4, 0x4
    bl fn_8022089C
    .4byte 0x48000114 # b .L_80220888
L_80220778:
    .4byte 0xC022CE7C # lfs f1, lbl_8053FE1C@sda21(r0)
    addi 4, 31, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x4180006C # blt .L_802207F4
    lwz 0, 0x230(31)
    .4byte 0xC042CE80 # lfs f2, lbl_8053FE20@sda21(r0)
    ori 0, 0, 0x4000
    .4byte 0xC022CE84 # lfs f1, lbl_8053FE24@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0xC002CE78 # lfs f0, lbl_8053FE18@sda21(r0)
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    lfs 1, 0x60(31)
    stfs 1, 0x70(31)
    lfs 1, 0x64(31)
    stfs 1, 0x74(31)
    lfs 1, 0x68(31)
    stfs 1, 0x78(31)
    lfs 1, 0x6c(31)
    stfs 1, 0x7c(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200A8 # bne .L_80220888
    mr 3, 31
    li 4, 0x4
    bl fn_8022089C
    .4byte 0x48000098 # b .L_80220888
L_802207F4:
    lfs 1, 0x14(31)
    .4byte 0xC002CE78 # lfs f0, lbl_8053FE18@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820084 # bne .L_80220888
    .4byte 0xC002CED0 # lfs f0, lbl_8053FE70@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000078 # b .L_80220888
    lfs 1, 0x14(31)
    .4byte 0xC002CE78 # lfs f0, lbl_8053FE18@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820064 # bne .L_80220888
    lwz 5, 0x2bc(31)
    li 4, 0x5
    addi 0, 5, 0x1
    stw 0, 0x2bc(31)
    bl fn_8022089C
    .4byte 0x4800004C # b .L_80220888
    lwz 4, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 4, 0
    .4byte 0x4180003C # blt .L_80220888
    lwz 4, 0x2bc(31)
    lwz 0, 0x2c0(31)
    cmpw 4, 0
    .4byte 0x41800010 # blt .L_8022086C
    li 4, 0x1
    bl fn_8022149C
    .4byte 0x48000020 # b .L_80220888
L_8022086C:
    li 4, 0x3
    bl fn_8022089C
    .4byte 0x48000014 # b .L_80220888
    lwz 0, 0x24c(31)
    cmpwi 0, 0x78
    .4byte 0x41800008 # blt .L_80220888
    bl fn_801F3668
L_80220888:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022089C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    cmpwi 31, 0x5
    stw 30, 0x18(1)
    mr 30, 3
    .4byte 0x4182019C # beq .L_80220A58
    .4byte 0x40800014 # bge .L_802208D4
    cmpwi 31, 0x3
    .4byte 0x41820018 # beq .L_802208E0
    .4byte 0x40800040 # bge .L_8022090C
    .4byte 0x480002DC # b .L_80220BAC
L_802208D4:
    cmpwi 31, 0x7
    .4byte 0x408002D4 # bge .L_80220BAC
    .4byte 0x480001CC # b .L_80220AA8
L_802208E0:
    .4byte 0xC022CE88 # lfs f1, lbl_8053FE28@sda21(r0)
    .4byte 0xC002CE8C # lfs f0, lbl_8053FE2C@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    .4byte 0x480002A4 # b .L_80220BAC
L_8022090C:
    lwz 0, 0x230(30)
    .4byte 0xC042CE80 # lfs f2, lbl_8053FE20@sda21(r0)
    rlwinm 0, 0, 0, 18, 16
    .4byte 0xC022CE84 # lfs f1, lbl_8053FE24@sda21(r0)
    stw 0, 0x230(30)
    stfs 2, 0x60(30)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stfs 2, 0x80(30)
    stfs 2, 0x84(30)
    stfs 1, 0x88(30)
    stfs 1, 0x8c(30)
    .4byte 0x880D90C4 # lbz r0, lbl_8053AC84@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820028 # bne .L_80220990
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    li 0, 0x1
    .4byte 0xC022CE94 # lfs f1, lbl_8053FE34@sda21(r0)
    fneg 0, 0
    .4byte 0xC042CE90 # lfs f2, lbl_8053FE30@sda21(r0)
    .4byte 0x980D90C4 # stb r0, lbl_8053AC84@sda21(r0)
    fmuls 0, 1, 0
    fmuls 0, 2, 0
    .4byte 0xD00D90C0 # stfs f0, lbl_8053AC80@sda21(r0)
L_80220990:
    .4byte 0xC00D90C0 # lfs f0, lbl_8053AC80@sda21(r0)
    stfs 0, 0x44(30)
    lwz 0, 0x2b8(30)
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_802209B0
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802209BC
    .4byte 0x48000094 # b .L_80220A40
L_802209B0:
    cmpwi 0, 0x4
    .4byte 0x4080008C # bge .L_80220A40
    .4byte 0x48000048 # b .L_80220A00
L_802209BC:
    .4byte 0xC002CE98 # lfs f0, lbl_8053FE38@sda21(r0)
    stfs 0, 0x3c(30)
    lwz 0, 0x2b8(30)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802209DC
    lfs 0, 0x3c(30)
    fneg 0, 0
    stfs 0, 0x3c(30)
L_802209DC:
    lwz 0, 0x2bc(30)
    clrlwi. 0, 0, 31
    .4byte 0x41820010 # beq .L_802209F4
    lfs 0, 0x3c(30)
    fneg 0, 0
    stfs 0, 0x3c(30)
L_802209F4:
    .4byte 0xC002CE78 # lfs f0, lbl_8053FE18@sda21(r0)
    stfs 0, 0x40(30)
    .4byte 0x48000044 # b .L_80220A40
L_80220A00:
    .4byte 0xC002CE98 # lfs f0, lbl_8053FE38@sda21(r0)
    stfs 0, 0x40(30)
    lwz 0, 0x2b8(30)
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_80220A20
    lfs 0, 0x40(30)
    fneg 0, 0
    stfs 0, 0x40(30)
L_80220A20:
    lwz 0, 0x2bc(30)
    clrlwi. 0, 0, 31
    .4byte 0x41820010 # beq .L_80220A38
    lfs 0, 0x40(30)
    fneg 0, 0
    stfs 0, 0x40(30)
L_80220A38:
    .4byte 0xC002CE78 # lfs f0, lbl_8053FE18@sda21(r0)
    stfs 0, 0x3c(30)
L_80220A40:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xc7
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000158 # b .L_80220BAC
L_80220A58:
    .4byte 0xC022CE88 # lfs f1, lbl_8053FE28@sda21(r0)
    .4byte 0xC002CE8C # lfs f0, lbl_8053FE2C@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80220A9C
    li 0, 0x6
    stw 0, 0x250(30)
    .4byte 0x48000114 # b .L_80220BAC
L_80220A9C:
    li 0, 0xc
    stw 0, 0x250(30)
    .4byte 0x48000108 # b .L_80220BAC
L_80220AA8:
    bl fn_801F3604
    .4byte 0xC042CE80 # lfs f2, lbl_8053FE20@sda21(r0)
    .4byte 0xC022CE84 # lfs f1, lbl_8053FE24@sda21(r0)
    stfs 2, 0x60(30)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stfs 2, 0x80(30)
    stfs 2, 0x84(30)
    stfs 1, 0x88(30)
    stfs 1, 0x8c(30)
    .4byte 0x880D90CC # lbz r0, lbl_8053AC8C@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820028 # bne .L_80220B24
    .4byte 0xC002C018 # lfs f0, lbl_8053EFB8@sda21(r0)
    li 0, 0x1
    .4byte 0xC022CE9C # lfs f1, lbl_8053FE3C@sda21(r0)
    fneg 0, 0
    .4byte 0xC042CE90 # lfs f2, lbl_8053FE30@sda21(r0)
    .4byte 0x980D90CC # stb r0, lbl_8053AC8C@sda21(r0)
    fmuls 0, 1, 0
    fmuls 0, 2, 0
    .4byte 0xD00D90C8 # stfs f0, lbl_8053AC88@sda21(r0)
L_80220B24:
    .4byte 0xC00D90C8 # lfs f0, lbl_8053AC88@sda21(r0)
    mr 3, 30
    stfs 0, 0x44(30)
    bl fn_80221670
    lfs 1, 0x2b0(30)
    lis 3, lbl_80534C00@ha
    lfs 0, 0xc(30)
    addi 3, 3, lbl_80534C00@l
    .4byte 0xC042CEA0 # lfs f2, lbl_8053FE40@sda21(r0)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    stfs 0, 0x3c(30)
    lfs 1, 0x2b4(30)
    lfs 0, 0x10(30)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    stfs 0, 0x40(30)
    lfs 1, 0x3c(30)
    lfs 2, 0x40(30)
    bl fn_80093340
    .4byte 0xC002CEA4 # lfs f0, lbl_8053FE44@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(30)
    addi 3, 30, 0x270
    li 5, 0x0
    li 6, 0x0
    lwz 4, 0x98(30)
    addi 4, 4, 0x8
    bl fn_801D22DC
L_80220BAC:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

