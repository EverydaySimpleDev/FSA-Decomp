# Fresh-gap-hunt batch 8 landing (non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008250
etb_80008250:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008250, 8

.global etb_80008258
etb_80008258:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_80008258, 8

.global etb_80008260
etb_80008260:
    .4byte 0x404A0000
    .4byte 0x00000000
.size etb_80008260, 8

.global etb_80008268
etb_80008268:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_80008268, 8

.section extabindex, "a"
.balign 4
.global eti_8001549C
eti_8001549C:
    .4byte fn_801CB71C
    .4byte 0x00000084
    .4byte etb_80008250
.size eti_8001549C, 12

.global eti_800154A8
eti_800154A8:
    .4byte fn_801CB85C
    .4byte 0x0000033C
    .4byte etb_80008258
.size eti_800154A8, 12

.global eti_800154B4
eti_800154B4:
    .4byte fn_801CBB98
    .4byte 0x00000704
    .4byte etb_80008260
.size eti_800154B4, 12

.global eti_800154C0
eti_800154C0:
    .4byte fn_801CC350
    .4byte 0x000001E8
    .4byte etb_80008268
.size eti_800154C0, 12

.text
.balign 4
.global fn_801CB71C
.global fn_801CB7A0
.global fn_801CB7CC
.global fn_801CB85C
.global fn_801CBB98
.global fn_801CC29C
.global fn_801CC350

fn_801CB71C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x0(3)
    cmplwi 3, 0x0
    .4byte 0x41820054 # beq .L_801CB78C
    lwz 0, 0xf4(3)
    li 8, 0x0
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_801CB760
    lwz 7, 0xd0(3)
    lwz 0, 0xdc(3)
    add. 0, 7, 0
    .4byte 0x40820008 # bne .L_801CB760
    li 8, 0x1
L_801CB760:
    clrlwi. 0, 8, 24
    .4byte 0x41820020 # beq .L_801CB784
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x0(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x0(31)
    .4byte 0x4800000C # b .L_801CB78C
L_801CB784:
    li 7, 0x1
    bl fn_8013CB44
L_801CB78C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801CB7A0:
    cmplwi 3, 0x0
    beqlr
    lwz 4, 0xf4(3)
    li 0, 0x1
    ori 4, 4, 0x40
    stw 4, 0xf4(3)
    lwz 4, 0xf4(3)
    ori 4, 4, 0x1
    stw 4, 0xf4(3)
    stw 0, 0x24(3)
    blr

fn_801CB7CC:
    clrlwi 4, 3, 16
    cmplwi 4, 0x4000
    .4byte 0x41810018 # bgt .L_801CB7EC
    subfic 0, 4, 0x4000
    clrlwi 3, 0, 16
    addi 0, 3, 0x4000
    extsh 3, 0
    blr
L_801CB7EC:
    .4byte 0x41800020 # blt .L_801CB80C
    cmplwi 4, 0x8000
    .4byte 0x41810018 # bgt .L_801CB80C
    subi 0, 4, 0x4000
    clrlwi 0, 0, 16
    subfic 0, 0, 0x4000
    extsh 3, 0
    blr
L_801CB80C:
    cmplwi 4, 0x8000
    .4byte 0x4180002C # blt .L_801CB83C
    cmplwi 4, 0xc000
    .4byte 0x41810024 # bgt .L_801CB83C
    lis 3, 0x1
    subi 0, 3, 0x4000
    subf 0, 4, 0
    clrlwi 3, 0, 16
    addis 3, 3, 0x1
    subi 0, 3, 0x4000
    extsh 3, 0
    blr
L_801CB83C:
    subis 4, 4, 0x1
    lis 3, 0x1
    addi 0, 4, 0x4000
    clrlwi 4, 0, 16
    subi 0, 3, 0x4000
    subf 0, 4, 0
    extsh 3, 0
    blr

fn_801CB85C:
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
    mr 30, 5
    fmr 29, 2
    lfs 4, 0x4(30)
    lis 5, lbl_80539D44@ha
    lfs 0, 0x4(3)
    li 31, 0x0
    lfs 3, 0x0(30)
    fsubs 30, 4, 0
    lfs 0, 0x0(3)
    .4byte 0xC042BFD8 # lfs f2, lbl_8053EF78@sda21(r0)
    fsubs 31, 3, 0
    lfs 0, lbl_80539D44@l(5)
    fmuls 3, 30, 30
    fmuls 2, 2, 0
    fmadds 3, 31, 31, 3
    fcmpo cr0, 3, 2
    cror eq, lt, eq
    .4byte 0x408200CC # bne .L_801CB99C
    lfs 4, 0x4(4)
    li 31, 0x1
    lfs 3, 0x0(4)
    fmuls 0, 4, 4
    fmadds 0, 3, 3, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801CB8FC
    .4byte 0xC062BFDC # lfs f3, lbl_8053EF7C@sda21(r0)
    .4byte 0xC082BFC0 # lfs f4, lbl_8053EF60@sda21(r0)
L_801CB8FC:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042BFE0 # lfs f2, lbl_8053EF80@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_801CB978
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0x3804(3)
    lfs 5, 0x3800(3)
    fmuls 0, 4, 2
    fmuls 1, 4, 5
    fmadds 30, 3, 5, 0
    fmsubs 31, 3, 2, 1
    .4byte 0x48000164 # b .L_801CBAD8
L_801CB978:
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    lfs 2, 0x804(3)
    lfs 5, 0x800(3)
    fmuls 0, 4, 2
    fmuls 1, 4, 5
    fmadds 30, 3, 5, 0
    fmsubs 31, 3, 2, 1
    .4byte 0x48000140 # b .L_801CBAD8
L_801CB99C:
    fmuls 0, 1, 1
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820130 # bne .L_801CBAD8
    lis 3, lbl_80534C00@ha
    lfs 1, 0x0(4)
    lfs 2, 0x4(4)
    addi 3, 3, lbl_80534C00@l
    li 31, 0x1
    bl fn_80093340
    .4byte 0xC002BFE4 # lfs f0, lbl_8053EF84@sda21(r0)
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    fmuls 0, 1, 0
    fmr 1, 31
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 29, 0x14(1)
    bl fn_80093340
    .4byte 0xC002BFE4 # lfs f0, lbl_8053EF84@sda21(r0)
    lis 5, 0x4330
    extsh 4, 29
    stw 5, 0x20(1)
    fmuls 1, 1, 0
    .4byte 0xC862BFC8 # lfd f3, lbl_8053EF68@sda21(r0)
    .4byte 0xC042BFE8 # lfs f2, lbl_8053EF88@sda21(r0)
    .4byte 0xC002BFEC # lfs f0, lbl_8053EF8C@sda21(r0)
    fctiwz 1, 1
    stfd 1, 0x18(1)
    lwz 0, 0x1c(1)
    extsh 6, 0
    subf 0, 6, 4
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 1, 0x20(1)
    fsubs 1, 1, 3
    fabs 1, 1
    fmuls 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810098 # ble .L_801CBAD8
    addi 3, 4, 0x4000
    subi 0, 4, 0x4000
    extsh 7, 3
    stw 5, 0x20(1)
    extsh 4, 0
    subf 3, 4, 6
    subf 0, 7, 6
    extsh 3, 3
    stw 5, 0x18(1)
    extsh 0, 0
    xoris 3, 3, 0x8000
    xoris 0, 0, 0x8000
    stw 3, 0x24(1)
    stw 0, 0x1c(1)
    lfd 1, 0x20(1)
    lfd 0, 0x18(1)
    fsubs 1, 1, 3
    fsubs 0, 0, 3
    fabs 1, 1
    fabs 3, 0
    fmuls 0, 2, 1
    fmuls 1, 2, 3
    fcmpo cr0, 1, 0
    .4byte 0x40800020 # bge .L_801CBAC0
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 7, 30, 18, 28
    addi 4, 3, lbl_8052EBC0@l
    add 3, 4, 0
    lfsx 31, 4, 0
    lfs 30, 0x4(3)
    .4byte 0x4800001C # b .L_801CBAD8
L_801CBAC0:
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 4, 30, 18, 28
    addi 4, 3, lbl_8052EBC0@l
    add 3, 4, 0
    lfsx 31, 4, 0
    lfs 30, 0x4(3)
L_801CBAD8:
    clrlwi. 0, 31, 24
    .4byte 0x41820084 # beq .L_801CBB60
    lis 3, lbl_80539D44@ha
    fmuls 2, 30, 30
    .4byte 0xC022BFD8 # lfs f1, lbl_8053EF78@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    fmadds 4, 31, 31, 2
    fmuls 0, 1, 0
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801CBB40
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801CBB18
    .4byte 0x48000024 # b .L_801CBB38
L_801CBB18:
    frsqrte 3, 4
    .4byte 0xC042BFEC # lfs f2, lbl_8053EF8C@sda21(r0)
    .4byte 0xC002BFF0 # lfs f0, lbl_8053EF90@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_801CBB38:
    fmuls 31, 31, 4
    fmuls 30, 30, 4
L_801CBB40:
    fmuls 31, 31, 29
    lfs 0, 0x0(30)
    fmuls 30, 30, 29
    fadds 0, 0, 31
    stfs 0, 0x0(30)
    lfs 0, 0x4(30)
    fadds 0, 0, 30
    stfs 0, 0x4(30)
L_801CBB60:
    mr 3, 31
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 0, 0x74(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_801CBB98:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stmw 24, 0x60(1)
    mr 25, 4
    mr 24, 3
    lfs 2, 0x0(4)
    mr 27, 6
    lfs 3, 0x0(4)
    fmr 31, 1
    lfs 0, 0x0(3)
    mr 26, 5
    stfs 2, 0x0(6)
    li 0, 0x0
    lfs 1, 0x4(4)
    fcmpo cr0, 3, 0
    stfs 1, 0x4(6)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_801CBC1C
    lfs 1, 0x4(25)
    lfs 0, 0x4(24)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801CBC1C
    lfs 0, 0x8(24)
    fcmpo cr0, 3, 0
    .4byte 0x40800014 # bge .L_801CBC1C
    lfs 0, 0xc(24)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801CBC1C
    li 0, 0x1
L_801CBC1C:
    clrlwi. 0, 0, 24
    .4byte 0x41820660 # beq .L_801CC280
    lis 4, lbl_8052EBC0@ha
    lis 3, lbl_80539D44@ha
    rlwinm 30, 26, 30, 18, 28
    lfs 0, lbl_80539D44@l(3)
    addi 31, 4, lbl_8052EBC0@l
    clrlwi 29, 26, 16
    lfsx 1, 31, 30
    fabs 2, 1
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820038 # bne .L_801CBC84
    add 3, 31, 30
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    lfs 1, 0x4(3)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_801CBC74
    lfs 0, 0xc(24)
    fadds 0, 0, 31
    stfs 0, 0x4(27)
    .4byte 0x48000610 # b .L_801CC280
L_801CBC74:
    lfs 0, 0x4(24)
    fsubs 0, 0, 31
    stfs 0, 0x4(27)
    .4byte 0x48000600 # b .L_801CC280
L_801CBC84:
    addi 28, 31, 0x4
    lfsx 2, 28, 30
    fabs 2, 2
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820030 # bne .L_801CBCC8
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_801CBCB8
    lfs 0, 0x8(24)
    fadds 0, 0, 31
    stfs 0, 0x0(27)
    .4byte 0x480005CC # b .L_801CC280
L_801CBCB8:
    lfs 0, 0x0(24)
    fsubs 0, 0, 31
    stfs 0, 0x0(27)
    .4byte 0x480005BC # b .L_801CC280
L_801CBCC8:
    cmplwi 29, 0x4000
    .4byte 0x41810144 # bgt .L_801CBE10
    lfs 4, 0x8(24)
    lis 3, lbl_80534C00@ha
    lfs 2, 0xc(24)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0x0(25)
    lfs 0, 0x4(25)
    fsubs 3, 4, 1
    stfs 4, 0x20(1)
    fsubs 0, 2, 0
    stfs 2, 0x24(1)
    frsp 1, 3
    frsp 2, 0
    stfs 3, 0x20(1)
    stfs 0, 0x24(1)
    stfs 3, 0x50(1)
    stfs 0, 0x54(1)
    bl fn_80093340
    .4byte 0xC002BFE4 # lfs f0, lbl_8053EF84@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    clrlwi 0, 0, 16
    cmplw 29, 0
    .4byte 0x4080005C # bge .L_801CBD8C
    lfsx 4, 28, 30
    lis 3, lbl_80539D44@ha
    lfs 2, 0xc(24)
    lfs 1, 0x4(25)
    fabs 5, 4
    lfs 0, lbl_80539D44@l(3)
    fsubs 1, 2, 1
    .4byte 0xC062BFDC # lfs f3, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 5, 0
    fabs 2, 1
    .4byte 0x40810014 # ble .L_801CBD70
    .4byte 0xC022BFC0 # lfs f1, lbl_8053EF60@sda21(r0)
    lfsx 0, 31, 30
    fdivs 1, 1, 4
    fmuls 3, 1, 0
L_801CBD70:
    fabs 3, 3
    lfs 1, 0x0(25)
    lfs 0, 0xc(24)
    fmadds 1, 2, 3, 1
    stfs 1, 0x0(27)
    stfs 0, 0x4(27)
    .4byte 0x48000064 # b .L_801CBDEC
L_801CBD8C:
    lfs 1, 0x8(24)
    subfic 0, 26, 0x4000
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x0(25)
    stfs 1, 0x0(27)
    lis 3, lbl_80539D44@ha
    fsubs 1, 1, 0
    lfsx 3, 28, 0
    lfs 0, lbl_80539D44@l(3)
    fabs 4, 3
    fabs 2, 1
    .4byte 0xC022BFDC # lfs f1, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4081001C # ble .L_801CBDDC
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fdivs 1, 0, 3
    lfsx 0, 3, 0
    fmuls 1, 1, 0
L_801CBDDC:
    fabs 1, 1
    lfs 0, 0x4(25)
    fmadds 0, 2, 1, 0
    stfs 0, 0x4(27)
L_801CBDEC:
    lfsx 1, 31, 30
    lfs 0, 0x0(27)
    fmadds 0, 31, 1, 0
    stfs 0, 0x0(27)
    lfsx 1, 28, 30
    lfs 0, 0x4(27)
    fmadds 0, 31, 1, 0
    stfs 0, 0x4(27)
    .4byte 0x48000474 # b .L_801CC280
L_801CBE10:
    .4byte 0x41800188 # blt .L_801CBF98
    cmplwi 29, 0x8000
    .4byte 0x41810180 # bgt .L_801CBF98
    lfs 5, 0x4(24)
    lis 3, lbl_80534C00@ha
    lfs 4, 0x8(24)
    addi 3, 3, lbl_80534C00@l
    frsp 1, 5
    lfs 0, 0x4(25)
    frsp 3, 4
    lfs 2, 0x0(25)
    stfs 4, 0x18(1)
    fsubs 0, 1, 0
    fsubs 3, 3, 2
    stfs 5, 0x1c(1)
    frsp 2, 0
    stfs 4, 0x40(1)
    frsp 1, 3
    stfs 5, 0x44(1)
    stfs 3, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 3, 0x48(1)
    stfs 0, 0x4c(1)
    bl fn_80093340
    .4byte 0xC002BFE4 # lfs f0, lbl_8053EF84@sda21(r0)
    lis 3, 0x1
    addi 0, 3, -0x8000
    fmuls 0, 1, 0
    subf 0, 29, 0
    extsh 26, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    clrlwi 0, 0, 16
    subf 0, 29, 0
    srwi. 0, 0, 31
    .4byte 0x41820068 # beq .L_801CBF08
    rlwinm 0, 26, 30, 18, 28
    lis 3, lbl_80539D44@ha
    lfsx 4, 28, 0
    lfs 2, 0x4(25)
    lfs 1, 0x4(24)
    fabs 5, 4
    lfs 0, lbl_80539D44@l(3)
    fsubs 1, 2, 1
    .4byte 0xC062BFDC # lfs f3, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 5, 0
    fabs 2, 1
    .4byte 0x4081001C # ble .L_801CBEEC
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fdivs 1, 0, 4
    lfsx 0, 3, 0
    fmuls 3, 1, 0
L_801CBEEC:
    fabs 3, 3
    lfs 1, 0x0(25)
    lfs 0, 0x4(24)
    fmadds 1, 2, 3, 1
    stfs 1, 0x0(27)
    stfs 0, 0x4(27)
    .4byte 0x48000064 # b .L_801CBF68
L_801CBF08:
    lfs 1, 0x8(24)
    subfic 0, 26, 0x4000
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x0(25)
    stfs 1, 0x0(27)
    lis 3, lbl_80539D44@ha
    fsubs 1, 1, 0
    lfsx 3, 28, 0
    lfs 0, lbl_80539D44@l(3)
    fabs 4, 3
    fabs 2, 1
    .4byte 0xC022BFDC # lfs f1, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4081001C # ble .L_801CBF58
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fdivs 1, 0, 3
    lfsx 0, 3, 0
    fmuls 1, 1, 0
L_801CBF58:
    fabs 1, 1
    lfs 0, 0x4(25)
    fnmsubs 0, 2, 1, 0
    stfs 0, 0x4(27)
L_801CBF68:
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 26, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    lfs 0, 0x0(27)
    lfsx 1, 3, 0
    fmadds 0, 31, 1, 0
    stfs 0, 0x0(27)
    lfsx 1, 28, 0
    lfs 0, 0x4(27)
    fnmsubs 0, 31, 1, 0
    stfs 0, 0x4(27)
    .4byte 0x480002EC # b .L_801CC280
L_801CBF98:
    cmplwi 29, 0x8000
    .4byte 0x41800170 # blt .L_801CC10C
    cmplwi 29, 0xc000
    .4byte 0x41810168 # bgt .L_801CC10C
    lfs 4, 0x0(24)
    lis 3, lbl_80534C00@ha
    lfs 2, 0x4(24)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0x0(25)
    lfs 0, 0x4(25)
    fsubs 3, 4, 1
    stfs 4, 0x10(1)
    fsubs 0, 2, 0
    stfs 2, 0x14(1)
    frsp 1, 3
    frsp 2, 0
    stfs 3, 0x10(1)
    stfs 0, 0x14(1)
    stfs 3, 0x38(1)
    stfs 0, 0x3c(1)
    bl fn_80093340
    .4byte 0xC002BFE4 # lfs f0, lbl_8053EF84@sda21(r0)
    addi 0, 29, -0x8000
    extsh 4, 0
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    clrlwi 0, 0, 16
    subf 0, 0, 29
    srwi. 0, 0, 31
    .4byte 0x41820068 # beq .L_801CC07C
    rlwinm 0, 4, 30, 18, 28
    lis 3, lbl_80539D44@ha
    lfsx 4, 28, 0
    lfs 2, 0x4(25)
    lfs 1, 0x4(24)
    fabs 5, 4
    lfs 0, lbl_80539D44@l(3)
    fsubs 1, 2, 1
    .4byte 0xC062BFDC # lfs f3, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 5, 0
    fabs 2, 1
    .4byte 0x4081001C # ble .L_801CC060
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fdivs 1, 0, 4
    lfsx 0, 3, 0
    fmuls 3, 1, 0
L_801CC060:
    fabs 3, 3
    lfs 1, 0x0(25)
    lfs 0, 0x4(24)
    fnmsubs 1, 2, 3, 1
    stfs 1, 0x0(27)
    stfs 0, 0x4(27)
    .4byte 0x48000064 # b .L_801CC0DC
L_801CC07C:
    lfs 1, 0x0(24)
    subfic 0, 4, 0x4000
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x0(25)
    stfs 1, 0x0(27)
    lis 3, lbl_80539D44@ha
    fsubs 1, 0, 1
    lfsx 3, 28, 0
    lfs 0, lbl_80539D44@l(3)
    fabs 4, 3
    fabs 2, 1
    .4byte 0xC022BFDC # lfs f1, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4081001C # ble .L_801CC0CC
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fdivs 1, 0, 3
    lfsx 0, 3, 0
    fmuls 1, 1, 0
L_801CC0CC:
    fabs 1, 1
    lfs 0, 0x4(25)
    fnmsubs 0, 2, 1, 0
    stfs 0, 0x4(27)
L_801CC0DC:
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 4, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    lfs 0, 0x0(27)
    lfsx 1, 3, 0
    fnmsubs 0, 31, 1, 0
    stfs 0, 0x0(27)
    lfsx 1, 28, 0
    lfs 0, 0x4(27)
    fnmsubs 0, 31, 1, 0
    stfs 0, 0x4(27)
    .4byte 0x48000178 # b .L_801CC280
L_801CC10C:
    lfs 5, 0xc(24)
    lis 3, lbl_80534C00@ha
    lfs 4, 0x0(24)
    addi 3, 3, lbl_80534C00@l
    frsp 1, 5
    lfs 0, 0x4(25)
    frsp 3, 4
    lfs 2, 0x0(25)
    stfs 4, 0x8(1)
    fsubs 0, 1, 0
    fsubs 3, 3, 2
    stfs 5, 0xc(1)
    frsp 2, 0
    stfs 4, 0x28(1)
    frsp 1, 3
    stfs 5, 0x2c(1)
    stfs 3, 0x8(1)
    stfs 0, 0xc(1)
    stfs 3, 0x30(1)
    stfs 0, 0x34(1)
    bl fn_80093340
    .4byte 0xC002BFE4 # lfs f0, lbl_8053EF84@sda21(r0)
    lis 0, 0x1
    subf 0, 29, 0
    fmuls 0, 1, 0
    extsh 4, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    clrlwi 0, 0, 16
    subf 0, 29, 0
    srwi. 0, 0, 31
    .4byte 0x41820068 # beq .L_801CC1F4
    rlwinm 0, 4, 30, 18, 28
    lis 3, lbl_80539D44@ha
    lfsx 4, 28, 0
    lfs 2, 0xc(24)
    lfs 1, 0x4(25)
    fabs 5, 4
    lfs 0, lbl_80539D44@l(3)
    fsubs 1, 2, 1
    .4byte 0xC062BFDC # lfs f3, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 5, 0
    fabs 2, 1
    .4byte 0x4081001C # ble .L_801CC1D8
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fdivs 1, 0, 4
    lfsx 0, 3, 0
    fmuls 3, 1, 0
L_801CC1D8:
    fabs 3, 3
    lfs 1, 0x0(25)
    lfs 0, 0xc(24)
    fnmsubs 1, 2, 3, 1
    stfs 1, 0x0(27)
    stfs 0, 0x4(27)
    .4byte 0x48000064 # b .L_801CC254
L_801CC1F4:
    lfs 1, 0x0(24)
    subfic 0, 4, 0x4000
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x0(25)
    stfs 1, 0x0(27)
    lis 3, lbl_80539D44@ha
    fsubs 1, 0, 1
    lfsx 3, 28, 0
    lfs 0, lbl_80539D44@l(3)
    fabs 4, 3
    fabs 2, 1
    .4byte 0xC022BFDC # lfs f1, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4081001C # ble .L_801CC244
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fdivs 1, 0, 3
    lfsx 0, 3, 0
    fmuls 1, 1, 0
L_801CC244:
    fabs 1, 1
    lfs 0, 0x4(25)
    fmadds 0, 2, 1, 0
    stfs 0, 0x4(27)
L_801CC254:
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 4, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    lfs 0, 0x0(27)
    lfsx 1, 3, 0
    fnmsubs 0, 31, 1, 0
    stfs 0, 0x0(27)
    lfsx 1, 28, 0
    lfs 0, 0x4(27)
    fmadds 0, 31, 1, 0
    stfs 0, 0x4(27)
L_801CC280:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    lmw 24, 0x60(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_801CC29C:
    lfs 1, 0x0(3)
    li 0, 0x0
    lfs 0, 0x0(4)
    .4byte 0xC042BFDC # lfs f2, lbl_8053EF7C@sda21(r0)
    fsubs 1, 1, 0
    stfs 2, 0x0(5)
    fcmpo cr0, 1, 2
    stfs 2, 0x4(5)
    .4byte 0x40810014 # ble .L_801CC2D0
    lfs 0, 0x0(5)
    li 0, 0x1
    fadds 0, 0, 1
    stfs 0, 0x0(5)
L_801CC2D0:
    lfs 2, 0x8(4)
    lfs 1, 0x8(3)
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_801CC2F8
    lfs 0, 0x0(5)
    li 0, 0x1
    fsubs 0, 0, 1
    stfs 0, 0x0(5)
L_801CC2F8:
    lfs 2, 0x4(3)
    lfs 1, 0x4(4)
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_801CC320
    lfs 0, 0x4(5)
    li 0, 0x1
    fadds 0, 0, 1
    stfs 0, 0x4(5)
L_801CC320:
    lfs 2, 0xc(4)
    lfs 1, 0xc(3)
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_801CC348
    lfs 0, 0x4(5)
    li 0, 0x1
    fsubs 0, 0, 1
    stfs 0, 0x4(5)
L_801CC348:
    mr 3, 0
    blr

fn_801CC350:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    mr 31, 4
    lis 4, lbl_80539D44@ha
    lfs 30, 0x8(31)
    lfs 4, 0x4(31)
    lfs 3, 0x0(31)
    .4byte 0xC042BFDC # lfs f2, lbl_8053EF7C@sda21(r0)
    stfs 3, 0x20(1)
    .4byte 0xC022BFD8 # lfs f1, lbl_8053EF78@sda21(r0)
    stfs 4, 0x24(1)
    lfs 0, lbl_80539D44@l(4)
    psq_l 5, 0x20(1), 0, 0
    fmuls 1, 1, 0
    stfs 2, 0x28(1)
    ps_mul 5, 5, 5
    ps_madd 0, 2, 2, 5
    ps_sum0 0, 0, 5, 5
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_801CC3D4
    fneg 0, 3
    fneg 1, 4
    stfs 0, 0x0(31)
    stfs 1, 0x4(31)
    stfs 30, 0x8(31)
    .4byte 0x48000144 # b .L_801CC514
L_801CC3D4:
    lfs 5, 0x4(3)
    lfs 0, 0x0(3)
    stfs 5, 0x18(1)
    stfs 0, 0x14(1)
    psq_l 5, 0x14(1), 0, 0
    stfs 2, 0x1c(1)
    ps_mul 5, 5, 5
    ps_madd 0, 2, 2, 5
    ps_sum0 0, 0, 5, 5
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_801CC41C
    fneg 0, 3
    fneg 1, 4
    stfs 0, 0x0(31)
    stfs 1, 0x4(31)
    stfs 30, 0x8(31)
    .4byte 0x480000FC # b .L_801CC514
L_801CC41C:
    psq_l 0, 0x14(1), 0, 0
    ps_mul 0, 0, 0
    ps_madd 4, 2, 2, 0
    ps_sum0 4, 4, 0, 0
    fcmpo cr0, 4, 1
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_801CC488
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801CC44C
    fmr 6, 4
    .4byte 0x48000028 # b .L_801CC470
L_801CC44C:
    frsqrte 3, 4
    .4byte 0xC042BFEC # lfs f2, lbl_8053EF8C@sda21(r0)
    .4byte 0xC002BFF0 # lfs f0, lbl_8053EF90@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 6, 0
L_801CC470:
    psq_l 1, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_muls0 1, 1, 6
    ps_muls0 0, 0, 6
    psq_st 1, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
L_801CC488:
    addi 3, 1, 0x20
    addi 4, 1, 0x14
    addi 5, 1, 0x8
    bl PSVECReflect
    lfs 0, 0x8(1)
    .4byte 0xC022BFF4 # lfs f1, lbl_8053EF94@sda21(r0)
    fabs 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x40800034 # bge .L_801CC4DC
    lfs 0, 0xc(1)
    fabs 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x40800024 # bge .L_801CC4DC
    lfs 0, 0x20(1)
    lfs 1, 0x24(1)
    fneg 0, 0
    fneg 1, 1
    stfs 0, 0x0(31)
    stfs 1, 0x4(31)
    stfs 30, 0x8(31)
    .4byte 0x4800003C # b .L_801CC514
L_801CC4DC:
    addi 3, 1, 0x20
    bl PSVECMag
    fmr 31, 1
    psq_l 1, 0x8(1), 0, 0
    psq_l 0, 0x10(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 1, 0xc(1)
    lfs 0, 0x8(1)
    stfs 0, 0x0(31)
    stfs 1, 0x4(31)
    stfs 30, 0x8(31)
L_801CC514:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lwz 0, 0x64(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

