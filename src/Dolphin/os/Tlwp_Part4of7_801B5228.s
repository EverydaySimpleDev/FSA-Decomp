# TLWP cluster, part 4/7 (Track A byte-match + overview - 1144B).
# update() state handler #1 - uses the ease primitive fn_801F71A4, the
# player validity/position family fn_8023DE58/fn_8023E724/Player_GetCapabilityFlagByIndex,
# fn_801F0E34, plus unfamiliar fn_80230498.
.section extab, "a"
.balign 4
.global etb_80007C24
etb_80007C24:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_80007C24, 8

.section extabindex, "a"
.balign 4
.global eti_80014BB4
eti_80014BB4:
    .4byte fn_801B5228
    .4byte 0x00000478
    .4byte etb_80007C24
.size eti_80014BB4, 12

.text
.balign 4
.global fn_801B5228

fn_801B5228:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    mr 30, 3
    lis 3, lbl_804A37E0@ha
    lfs 1, 0x258(30)
    addi 31, 3, lbl_804A37E0@l
    .4byte 0xC042BA88 # lfs f2, lbl_8053EA28@sda21(r0)
    addi 3, 30, 0x14
    lfs 3, 0x25c(30)
    bl fn_801F71A4
    lwz 0, 0x230(30)
    cmpwi 0, 0x9
    .4byte 0x418200BC # beq .L_801B532C
    .4byte 0x40800010 # bge .L_801B5284
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_801B5290
    .4byte 0x48000398 # b .L_801B5618
L_801B5284:
    cmpwi 0, 0xb
    .4byte 0x40800390 # bge .L_801B5618
    .4byte 0x480002B8 # b .L_801B5544
L_801B5290:
    lwz 0, 0x250(30)
    addi 3, 31, 0xe8
    mr 28, 30
    li 27, 0x0
    slwi 0, 0, 2
    add 3, 3, 0
    lwz 0, -0x4(3)
    stw 0, 0x98(30)
L_801B52B0:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820050 # beq .L_801B530C
    lwz 29, 0x4(30)
    mr 3, 27
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x4082003C # bne .L_801B530C
    mr 3, 27
    bl fn_8023E724
    lfs 0, 0x0(3)
    cmpwi 27, 0x0
    stfs 0, 0x264(28)
    lfs 0, 0x4(3)
    stfs 0, 0x268(28)
    lfs 0, 0x8(3)
    stfs 0, 0x26c(28)
    .4byte 0x40820014 # bne .L_801B530C
    lfs 1, 0x268(28)
    .4byte 0xC002BA8C # lfs f0, lbl_8053EA2C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x268(28)
L_801B530C:
    addi 27, 27, 0x1
    addi 28, 28, 0xc
    cmpwi 27, 0x4
    .4byte 0x4180FF98 # blt .L_801B52B0
    .4byte 0xC002BA90 # lfs f0, lbl_8053EA30@sda21(r0)
    li 0, 0x9
    stfs 0, 0x25c(30)
    stw 0, 0x230(30)
L_801B532C:
    li 3, 0x0
    bl fn_8023E724
    lfs 31, 0x0(3)
    lfs 30, 0x4(3)
    .4byte 0xC002BA94 # lfs f0, lbl_8053EA34@sda21(r0)
    stfs 0, 0x258(30)
    lwz 0, 0x250(30)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_801B5368
    .4byte 0xC022BA98 # lfs f1, lbl_8053EA38@sda21(r0)
    li 0, 0xbb8
    sth 0, 0x260(30)
    .4byte 0xC002BA9C # lfs f0, lbl_8053EA3C@sda21(r0)
    fsubs 31, 31, 1
    stfs 0, 0x258(30)
L_801B5368:
    lwz 0, 0x250(30)
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_801B5390
    lis 3, 0x1
    .4byte 0xC022BA98 # lfs f1, lbl_8053EA38@sda21(r0)
    subi 0, 3, 0xbb8
    .4byte 0xC002BA9C # lfs f0, lbl_8053EA3C@sda21(r0)
    sth 0, 0x260(30)
    fadds 31, 31, 1
    stfs 0, 0x258(30)
L_801B5390:
    fmr 1, 31
    .4byte 0xC042BA88 # lfs f2, lbl_8053EA28@sda21(r0)
    lfs 3, 0x25c(30)
    addi 3, 30, 0xc
    bl fn_801F71A4
    stfs 30, 0x10(30)
    .4byte 0xC002BA78 # lfs f0, lbl_8053EA18@sda21(r0)
    lfs 2, 0x14(30)
    lfs 1, 0x258(30)
    lfs 3, 0xc(30)
    fsubs 1, 2, 1
    fsubs 2, 3, 31
    fabs 3, 1
    fabs 1, 2
    frsp 3, 3
    frsp 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801B5428
    frsqrte 1, 4
    .4byte 0xC862BAA0 # lfd f3, lbl_8053EA40@sda21(r0)
    .4byte 0xC842BAA8 # lfd f2, lbl_8053EA48@sda21(r0)
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
    .4byte 0x48000088 # b .L_801B54AC
L_801B5428:
    .4byte 0xC802BAB0 # lfd f0, lbl_8053EA50@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801B5440
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801B54AC
L_801B5440:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801B5468
    .4byte 0x40800040 # bge .L_801B5498
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801B5480
    .4byte 0x48000034 # b .L_801B5498
L_801B5468:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B5478
    li 0, 0x1
    .4byte 0x48000028 # b .L_801B549C
L_801B5478:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801B549C
L_801B5480:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B5490
    li 0, 0x5
    .4byte 0x48000010 # b .L_801B549C
L_801B5490:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801B549C
L_801B5498:
    li 0, 0x4
L_801B549C:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801B54AC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801B54AC:
    .4byte 0xC002BA70 # lfs f0, lbl_8053EA10@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800164 # bge .L_801B5618
    .4byte 0x806D8558 # lwz r3, lbl_8053A118@sda21(r0)
    subic. 0, 3, 0x1
    .4byte 0x900D8558 # stw r0, lbl_8053A118@sda21(r0)
    .4byte 0x40820074 # bne .L_801B5538
    li 27, 0x0
    mr 28, 30
L_801B54D0:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_801B5514
    lwz 29, 0x4(30)
    mr 3, 27
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x40820024 # bne .L_801B5514
    mr 3, 27
    addi 4, 28, 0x264
    li 5, 0x3e
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_801B5514:
    addi 27, 27, 0x1
    addi 28, 28, 0xc
    cmpwi 27, 0x4
    .4byte 0x4180FFB0 # blt .L_801B54D0
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x52
    li 5, 0x0
    bl fn_801F0E34
L_801B5538:
    li 0, 0xa
    stw 0, 0x230(30)
    .4byte 0x480000D8 # b .L_801B5618
L_801B5544:
    .4byte 0x800D8558 # lwz r0, lbl_8053A118@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x418100CC # bgt .L_801B5618
    .4byte 0xC022BAB8 # lfs f1, lbl_8053EA58@sda21(r0)
    lfs 0, 0x258(30)
    fcmpu cr0, 1, 0
    .4byte 0x41820014 # beq .L_801B5570
    stfs 1, 0x258(30)
    .4byte 0xC002BABC # lfs f0, lbl_8053EA5C@sda21(r0)
    stfs 0, 0x25c(30)
    .4byte 0x480000AC # b .L_801B5618
L_801B5570:
    lwz 0, 0x250(30)
    cmpwi 0, 0x2
    .4byte 0x408200A0 # bne .L_801B5618
    lfs 30, 0x14(30)
    mr 28, 30
    li 27, 0x0
L_801B5588:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_801B55E0
    lwz 29, 0x4(30)
    mr 3, 27
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x40820038 # bne .L_801B55E0
    fmr 1, 30
    .4byte 0xC042BA88 # lfs f2, lbl_8053EA28@sda21(r0)
    lfs 3, 0x25c(30)
    addi 3, 28, 0x26c
    bl fn_801F71A4
    mr 3, 27
    addi 4, 28, 0x264
    li 5, 0xb0
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_801B55E0:
    addi 27, 27, 0x1
    addi 28, 28, 0xc
    cmpwi 27, 0x4
    .4byte 0x4180FF9C # blt .L_801B5588
    lfs 2, 0x14(30)
    lfs 1, 0x258(30)
    .4byte 0xC002BAC0 # lfs f0, lbl_8053EA60@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801B5618
    li 0, 0x309
    .4byte 0x900D8558 # stw r0, lbl_8053A118@sda21(r0)
L_801B5618:
    lwz 0, 0x234(30)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_801B567C
    lwz 5, 0x98(30)
    addi 4, 31, 0x88
    lwz 0, 0x240(30)
    addi 3, 31, 0xb8
    slwi 5, 5, 2
    add 0, 5, 0
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x24c(30)
    lwz 4, 0x98(30)
    lwz 0, 0x240(30)
    slwi 4, 4, 2
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x234(30)
    lwz 3, 0x240(30)
    addi 0, 3, 0x1
    stw 0, 0x240(30)
    lwz 0, 0x240(30)
    clrlwi 0, 0, 30
    stw 0, 0x240(30)
L_801B567C:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

