# TENN cluster, part 5/9 (Track A byte-match + overview - 940B).
# update() state handler #1 - global PRNG advance, fn_801F0E34,
# fn_801F666C/fn_801F71A4/SpatialRegistry_GetBase, fn_8023E724 (player position),
# fn_8030C210.
.section extab, "a"
.balign 4
.global etb_8000795C
etb_8000795C:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000795C, 8

.section extabindex, "a"
.balign 4
.global eti_80014788
eti_80014788:
    .4byte fn_801A0BE4
    .4byte 0x000003AC
    .4byte etb_8000795C
.size eti_80014788, 12

.text
.balign 4
.global fn_801A0BE4

fn_801A0BE4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    mr 28, 3
    addi 4, 28, 0xc
    psq_l 0, 0x3c(28), 0, 0
    psq_l 1, 0x0(4), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x44(28), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 0, 0x230(28)
    cmpwi 0, 0x13
    .4byte 0x418202A0 # beq .L_801A0EE4
    .4byte 0x40800320 # bge .L_801A0F68
    cmpwi 0, 0x12
    .4byte 0x40800008 # bge .L_801A0C58
    .4byte 0x48000314 # b .L_801A0F68
L_801A0C58:
    lwz 29, 0x320(28)
    cmpwi 29, 0x0
    .4byte 0x40800044 # bge .L_801A0CA4
    li 0, 0x32
    lis 4, 0x3
    stw 0, 0x23c(28)
    mr 3, 28
    .4byte 0xC002B550 # lfs f0, lbl_8053E4F0@sda21(r0)
    addi 4, 4, 0x4d
    .4byte 0xC022B578 # lfs f1, lbl_8053E518@sda21(r0)
    li 5, 0x0
    stfs 0, 0x3c(28)
    .4byte 0xC002B57C # lfs f0, lbl_8053E51C@sda21(r0)
    stfs 1, 0x40(28)
    stfs 0, 0x44(28)
    bl fn_801F0E34
    li 0, 0x13
    stw 0, 0x230(28)
    .4byte 0x480002C8 # b .L_801A0F68
L_801A0CA4:
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820044 # bne .L_801A0CF8
    li 0, 0x32
    lis 4, 0x3
    stw 0, 0x23c(28)
    mr 3, 28
    .4byte 0xC002B550 # lfs f0, lbl_8053E4F0@sda21(r0)
    addi 4, 4, 0x4d
    .4byte 0xC022B578 # lfs f1, lbl_8053E518@sda21(r0)
    li 5, 0x0
    stfs 0, 0x3c(28)
    .4byte 0xC002B57C # lfs f0, lbl_8053E51C@sda21(r0)
    stfs 1, 0x40(28)
    stfs 0, 0x44(28)
    bl fn_801F0E34
    li 0, 0x13
    stw 0, 0x230(28)
    .4byte 0x48000274 # b .L_801A0F68
L_801A0CF8:
    mr 31, 28
    mr 30, 3
    li 29, 0x0
L_801A0D04:
    lwz 0, 0x27c(31)
    cmpwi 0, 0x0
    .4byte 0x418001C0 # blt .L_801A0ECC
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 29
    lfs 0, 0xc(28)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(28)
    .4byte 0xC002B550 # lfs f0, lbl_8053E4F0@sda21(r0)
    fsubs 5, 1, 2
    fmuls 1, 5, 5
    fmadds 4, 31, 31, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801A0D94
    frsqrte 1, 4
    .4byte 0xC862B580 # lfd f3, lbl_8053E520@sda21(r0)
    .4byte 0xC842B588 # lfd f2, lbl_8053E528@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801A0E18
L_801A0D94:
    .4byte 0xC802B590 # lfd f0, lbl_8053E530@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801A0DAC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801A0E18
L_801A0DAC:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801A0DD4
    .4byte 0x40800040 # bge .L_801A0E04
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801A0DEC
    .4byte 0x48000034 # b .L_801A0E04
L_801A0DD4:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A0DE4
    li 0, 0x1
    .4byte 0x48000028 # b .L_801A0E08
L_801A0DE4:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801A0E08
L_801A0DEC:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801A0DFC
    li 0, 0x5
    .4byte 0x48000010 # b .L_801A0E08
L_801A0DFC:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801A0E08
L_801A0E04:
    li 0, 0x4
L_801A0E08:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801A0E18
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801A0E18:
    .4byte 0xC002B560 # lfs f0, lbl_8053E500@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4081005C # ble .L_801A0E7C
    fneg 1, 31
    lis 3, lbl_80534C00@ha
    fneg 2, 5
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002B598 # lfs f0, lbl_8053E538@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 0, 3, lbl_8052EBC0@l
    .4byte 0xC042B59C # lfs f2, lbl_8053E53C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    rlwinm 3, 3, 30, 18, 28
    add 3, 0, 3
    lfs 0, 0x0(3)
    fmuls 0, 2, 0
    stfs 0, 0x3c(28)
    lfs 0, 0x4(3)
    fmuls 0, 2, 0
    stfs 0, 0x40(28)
    .4byte 0x48000054 # b .L_801A0ECC
L_801A0E7C:
    li 0, 0x1
    lis 4, 0x3
    stw 0, 0x2ac(30)
    li 0, 0x32
    .4byte 0xC042B5A0 # lfs f2, lbl_8053E540@sda21(r0)
    mr 3, 28
    stw 0, 0x23c(28)
    addi 4, 4, 0x4d
    .4byte 0xC002B57C # lfs f0, lbl_8053E51C@sda21(r0)
    li 5, 0x0
    lfs 1, 0x3c(28)
    fmuls 1, 1, 2
    stfs 1, 0x3c(28)
    lfs 1, 0x40(28)
    fmuls 1, 1, 2
    stfs 1, 0x40(28)
    stfs 0, 0x44(28)
    bl fn_801F0E34
    li 0, 0x13
    stw 0, 0x230(28)
L_801A0ECC:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FE28 # blt .L_801A0D04
    .4byte 0x48000088 # b .L_801A0F68
L_801A0EE4:
    .4byte 0xC022B550 # lfs f1, lbl_8053E4F0@sda21(r0)
    addi 3, 28, 0x340
    .4byte 0xC042B5A4 # lfs f2, lbl_8053E544@sda21(r0)
    .4byte 0xC062B578 # lfs f3, lbl_8053E518@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x14(28)
    .4byte 0xC002B550 # lfs f0, lbl_8053E4F0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082002C # bne .L_801A0F34
    lis 4, 0x3
    mr 3, 28
    addi 4, 4, 0x4c
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC022B550 # lfs f1, lbl_8053E4F0@sda21(r0)
    .4byte 0xC002B57C # lfs f0, lbl_8053E51C@sda21(r0)
    stfs 1, 0x14(28)
    stfs 0, 0x44(28)
    .4byte 0x48000014 # b .L_801A0F44
L_801A0F34:
    lfs 1, 0x44(28)
    .4byte 0xC002B5A4 # lfs f0, lbl_8053E544@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(28)
L_801A0F44:
    lwz 0, 0x23c(28)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801A0F60
    lfs 1, 0x340(28)
    .4byte 0xC002B55C # lfs f0, lbl_8053E4FC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801A0F68
L_801A0F60:
    li 0, 0x0
    stb 0, 0x11c(28)
L_801A0F68:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

