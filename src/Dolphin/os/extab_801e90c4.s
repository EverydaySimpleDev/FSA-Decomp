# Fresh-gap-hunt batch 13 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008BBC
etb_80008BBC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008BBC, 8

.global etb_80008BC4
etb_80008BC4:
    .4byte 0x2ACA0000
    .4byte 0x00000000
.size etb_80008BC4, 8

.section extabindex, "a"
.balign 4
.global eti_800161B0
eti_800161B0:
    .4byte fn_801E90C4
    .4byte 0x00000160
    .4byte etb_80008BBC
.size eti_800161B0, 12

.global eti_800161BC
eti_800161BC:
    .4byte fn_801E9224
    .4byte 0x000004D4
    .4byte etb_80008BC4
.size eti_800161BC, 12

.text
.balign 4
.global fn_801E90C4
.global fn_801E9224

fn_801E90C4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x1
    .4byte 0x418200A0 # beq .L_801E9184
    .4byte 0x40800124 # bge .L_801E920C
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801E90FC
    .4byte 0x48000118 # b .L_801E920C
    .4byte 0x48000114 # b .L_801E920C
L_801E90FC:
    lhz 31, 0x94(30)
    cmplwi 31, 0x0
    .4byte 0x41820108 # beq .L_801E920C
    bl GetRoomConfigRecord
    mr 4, 31
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x418200F4 # beq .L_801E920C
    lwz 0, 0x230(30)
    ori 0, 0, 0x2000
    stw 0, 0x230(30)
    lwz 0, 0x3c0(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_801E9144
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x3c0(30)
    bl fn_800EC240
L_801E9144:
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022C660 # lfs f1, lbl_8053F600@sda21(r0)
    li 5, 0x260
    li 6, 0x0
    li 7, -0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x3c0(30)
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(30)
    stw 0, 0x248(30)
    .4byte 0x4800008C # b .L_801E920C
L_801E9184:
    bl fn_801E9224
    lwz 3, 0x3c0(30)
    addi 4, 30, 0xc
    li 5, 0x0
    li 6, -0x2
    li 7, 0x1
    bl fn_8013CB44
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x3e
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820050 # beq .L_801E920C
    lwz 31, 0x3b8(30)
    cmpwi 31, 0x0
    .4byte 0x4180001C # blt .L_801E91E4
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801E91E4
    bl fn_801E6EAC
L_801E91E4:
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 19, 17
    stw 0, 0x230(30)
    lwz 3, 0x3c0(30)
    bl fn_801EE434
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x3c0(30)
    stw 3, 0x24c(30)
    stw 0, 0x248(30)
L_801E920C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E9224:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stfd 31, 0xd0(1)
    psq_st 31, 0xd8(1), 0, 0
    stfd 30, 0xc0(1)
    psq_st 30, 0xc8(1), 0, 0
    stfd 29, 0xb0(1)
    psq_st 29, 0xb8(1), 0, 0
    stfd 28, 0xa0(1)
    psq_st 28, 0xa8(1), 0, 0
    stfd 27, 0x90(1)
    psq_st 27, 0x98(1), 0, 0
    stfd 26, 0x80(1)
    psq_st 26, 0x88(1), 0, 0
    stfd 25, 0x70(1)
    psq_st 25, 0x78(1), 0, 0
    stfd 24, 0x60(1)
    psq_st 24, 0x68(1), 0, 0
    stfd 23, 0x50(1)
    psq_st 23, 0x58(1), 0, 0
    stfd 22, 0x40(1)
    psq_st 22, 0x48(1), 0, 0
    stfd 21, 0x30(1)
    psq_st 21, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    lwz 0, 0x230(3)
    mr 28, 3
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x408203F4 # bne .L_801E968C
    .4byte 0xC002C66C # lfs f0, lbl_8053F60C@sda21(r0)
    li 31, 0x0
    .4byte 0xC3C2C65C # lfs f30, lbl_8053F5FC@sda21(r0)
    fsel 0, 0, 0, 30
    fmr 31, 0
    .4byte 0x480003CC # b .L_801E967C
L_801E92B4:
    lfs 0, 0x3b4(28)
    lbz 4, 0x3b0(28)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 5, 0xc(1)
    clrlwi 0, 5, 24
    cmpwi 0, 0x10
    .4byte 0x41820028 # beq .L_801E92F8
    .4byte 0x40800038 # bge .L_801E930C
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801E92E4
    .4byte 0x4800002C # b .L_801E930C
L_801E92E4:
    clrlslwi 0, 4, 24, 3
    add 3, 28, 0
    lfs 27, 0x2b0(3)
    lfs 28, 0x2b4(3)
    .4byte 0x480000C4 # b .L_801E93B8
L_801E92F8:
    clrlslwi 0, 4, 24, 3
    add 3, 28, 0
    lfs 27, 0x2b8(3)
    lfs 28, 0x2bc(3)
    .4byte 0x480000B0 # b .L_801E93B8
L_801E930C:
    cmplwi 4, 0x0
    .4byte 0x40820010 # bne .L_801E9320
    lfs 27, 0x2b0(28)
    lfs 1, 0x2b4(28)
    .4byte 0x48000014 # b .L_801E9330
L_801E9320:
    clrlslwi 0, 4, 24, 3
    add 3, 28, 0
    lfs 27, 0x2a8(3)
    lfs 1, 0x2ac(3)
L_801E9330:
    lbz 3, 0x2ad(28)
    clrlslwi 0, 4, 24, 3
    add 6, 28, 0
    subi 0, 3, 0x2
    lfs 23, 0x2b8(6)
    cmpw 4, 0
    lfs 3, 0x2bc(6)
    lfs 26, 0x2b0(6)
    lfs 2, 0x2b4(6)
    .4byte 0x40820010 # bne .L_801E9364
    fmr 25, 23
    fmr 4, 3
    .4byte 0x4800000C # b .L_801E936C
L_801E9364:
    lfs 25, 0x2c0(6)
    lfs 4, 0x2c4(6)
L_801E936C:
    clrlwi 3, 5, 24
    lis 0, 0x4330
    stw 3, 0xc(1)
    .4byte 0xC8A2C678 # lfd f5, lbl_8053F618@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0C2C664 # lfs f6, lbl_8053F604@sda21(r0)
    lfd 0, 0x8(1)
    fsubs 0, 0, 5
    fmuls 22, 6, 0
    fmr 5, 22
    bl fn_801CD6D8
    fmr 28, 1
    fmr 1, 27
    fmr 2, 26
    fmr 3, 23
    fmr 4, 25
    fmr 5, 22
    bl fn_801CD6D8
    fmr 27, 1
L_801E93B8:
    lfs 0, 0x3b4(28)
    lbz 30, 0x3b0(28)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    addi 0, 3, 0x1
    clrlwi 29, 0, 24
    cmplwi 29, 0x10
    .4byte 0x41800024 # blt .L_801E93FC
    lbz 3, 0x2ad(28)
    subi 0, 3, 0x2
    cmpw 30, 0
    .4byte 0x4180000C # blt .L_801E93F4
    li 31, 0x1
    .4byte 0x4800000C # b .L_801E93FC
L_801E93F4:
    addi 30, 30, 0x1
    subi 29, 29, 0x10
L_801E93FC:
    clrlwi 0, 29, 24
    cmpwi 0, 0x10
    .4byte 0x41820028 # beq .L_801E942C
    .4byte 0x40800038 # bge .L_801E9440
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801E9418
    .4byte 0x4800002C # b .L_801E9440
L_801E9418:
    clrlslwi 0, 30, 24, 3
    add 3, 28, 0
    lfs 1, 0x2b0(3)
    lfs 25, 0x2b4(3)
    .4byte 0x480000C4 # b .L_801E94EC
L_801E942C:
    clrlslwi 0, 30, 24, 3
    add 3, 28, 0
    lfs 1, 0x2b8(3)
    lfs 25, 0x2bc(3)
    .4byte 0x480000B0 # b .L_801E94EC
L_801E9440:
    clrlwi. 0, 30, 24
    .4byte 0x40820010 # bne .L_801E9454
    lfs 26, 0x2b0(28)
    lfs 1, 0x2b4(28)
    .4byte 0x48000014 # b .L_801E9464
L_801E9454:
    clrlslwi 0, 30, 24, 3
    add 3, 28, 0
    lfs 26, 0x2a8(3)
    lfs 1, 0x2ac(3)
L_801E9464:
    lbz 3, 0x2ad(28)
    clrlslwi 0, 30, 24, 3
    add 5, 28, 0
    clrlwi 4, 30, 24
    subi 0, 3, 0x2
    lfs 22, 0x2b8(5)
    cmpw 4, 0
    lfs 3, 0x2bc(5)
    lfs 24, 0x2b0(5)
    lfs 2, 0x2b4(5)
    .4byte 0x40820010 # bne .L_801E949C
    fmr 23, 22
    fmr 4, 3
    .4byte 0x4800000C # b .L_801E94A4
L_801E949C:
    lfs 23, 0x2c0(5)
    lfs 4, 0x2c4(5)
L_801E94A4:
    clrlwi 3, 29, 24
    lis 0, 0x4330
    stw 3, 0xc(1)
    .4byte 0xC8A2C678 # lfd f5, lbl_8053F618@sda21(r0)
    stw 0, 0x8(1)
    .4byte 0xC0C2C664 # lfs f6, lbl_8053F604@sda21(r0)
    lfd 0, 0x8(1)
    fsubs 0, 0, 5
    fmuls 21, 6, 0
    fmr 5, 21
    bl fn_801CD6D8
    fmr 25, 1
    fmr 1, 26
    fmr 2, 24
    fmr 3, 22
    fmr 4, 23
    fmr 5, 21
    bl fn_801CD6D8
L_801E94EC:
    lfs 0, 0x10(28)
    fsubs 3, 1, 27
    lfs 5, 0xc(28)
    fsubs 4, 25, 28
    fsubs 2, 25, 0
    fsubs 0, 1, 5
    fmuls 5, 2, 2
    fmadds 9, 0, 0, 5
    fcmpo cr0, 9, 30
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801E9520
    fmr 5, 9
    .4byte 0x48000028 # b .L_801E9544
L_801E9520:
    frsqrte 8, 9
    .4byte 0xC0E2C66C # lfs f7, lbl_8053F60C@sda21(r0)
    .4byte 0xC0A2C670 # lfs f5, lbl_8053F610@sda21(r0)
    frsp 8, 8
    fmuls 6, 8, 8
    fmuls 7, 7, 8
    fnmsubs 5, 9, 6, 5
    fmuls 5, 7, 5
    fmuls 5, 9, 5
L_801E9544:
    fcmpo cr0, 31, 5
    cror eq, gt, eq
    .4byte 0x40820060 # bne .L_801E95AC
    stfs 1, 0xc(28)
    clrlwi. 0, 31, 24
    stfs 25, 0x10(28)
    stfs 30, 0x14(28)
    .4byte 0x41820028 # beq .L_801E9588
    lwz 0, 0x230(28)
    .4byte 0xC002C6A0 # lfs f0, lbl_8053F640@sda21(r0)
    ori 0, 0, 0x4000
    stw 0, 0x230(28)
    lbz 3, 0x2ad(28)
    subi 0, 3, 0x2
    stb 0, 0x3b0(28)
    stfs 0, 0x3b4(28)
    .4byte 0x48000108 # b .L_801E968C
L_801E9588:
    clrlwi 0, 29, 24
    stw 27, 0x8(1)
    fsubs 31, 31, 5
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 29
    stfs 0, 0x3b4(28)
    stb 30, 0x3b0(28)
    .4byte 0x480000DC # b .L_801E9684
L_801E95AC:
    lis 3, lbl_80539D44@ha
    .4byte 0xC0A2C6A4 # lfs f5, lbl_8053F644@sda21(r0)
    lfs 1, lbl_80539D44@l(3)
    fmuls 1, 5, 1
    fcmpo cr0, 9, 1
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801E9604
    .4byte 0xC022C65C # lfs f1, lbl_8053F5FC@sda21(r0)
    fcmpo cr0, 9, 1
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801E95DC
    .4byte 0x48000024 # b .L_801E95FC
L_801E95DC:
    frsqrte 7, 9
    .4byte 0xC0C2C66C # lfs f6, lbl_8053F60C@sda21(r0)
    .4byte 0xC022C670 # lfs f1, lbl_8053F610@sda21(r0)
    frsp 7, 7
    fmuls 5, 7, 7
    fmuls 6, 6, 7
    fnmsubs 1, 9, 5, 1
    fmuls 9, 6, 1
L_801E95FC:
    fmuls 0, 0, 9
    fmuls 2, 2, 9
L_801E9604:
    fmuls 0, 0, 31
    lfs 5, 0xc(28)
    fmuls 4, 4, 4
    .4byte 0xC022C65C # lfs f1, lbl_8053F5FC@sda21(r0)
    fmuls 2, 2, 31
    fadds 0, 5, 0
    fmadds 4, 3, 3, 4
    stfs 0, 0xc(28)
    fcmpo cr0, 4, 1
    lfs 0, 0x10(28)
    fadds 0, 0, 2
    stfs 0, 0x10(28)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801E9640
    .4byte 0x48000028 # b .L_801E9664
L_801E9640:
    frsqrte 3, 4
    .4byte 0xC042C66C # lfs f2, lbl_8053F60C@sda21(r0)
    .4byte 0xC002C670 # lfs f0, lbl_8053F610@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_801E9664:
    .4byte 0xC022C660 # lfs f1, lbl_8053F600@sda21(r0)
    lfs 0, 0x3b4(28)
    fdivs 1, 1, 4
    fmadds 0, 31, 1, 0
    stfs 0, 0x3b4(28)
    .4byte 0x48000014 # b .L_801E968C
L_801E967C:
    .4byte 0xCBA2C678 # lfd f29, lbl_8053F618@sda21(r0)
    lis 27, 0x4330
L_801E9684:
    fcmpo cr0, 31, 30
    .4byte 0x4181FC2C # bgt .L_801E92B4
L_801E968C:
    psq_l 31, 0xd8(1), 0, 0
    lfd 31, 0xd0(1)
    psq_l 30, 0xc8(1), 0, 0
    lfd 30, 0xc0(1)
    psq_l 29, 0xb8(1), 0, 0
    lfd 29, 0xb0(1)
    psq_l 28, 0xa8(1), 0, 0
    lfd 28, 0xa0(1)
    psq_l 27, 0x98(1), 0, 0
    lfd 27, 0x90(1)
    psq_l 26, 0x88(1), 0, 0
    lfd 26, 0x80(1)
    psq_l 25, 0x78(1), 0, 0
    lfd 25, 0x70(1)
    psq_l 24, 0x68(1), 0, 0
    lfd 24, 0x60(1)
    psq_l 23, 0x58(1), 0, 0
    lfd 23, 0x50(1)
    psq_l 22, 0x48(1), 0, 0
    lfd 22, 0x40(1)
    psq_l 21, 0x38(1), 0, 0
    lfd 21, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0xe4(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

