# FGN2 cluster, part 2 (Track A byte-match + overview - 912B). Builds
# 2 separate particle/effect parameter blocks (position, RGBA color
# bytes, scale/rotation floats sourced from this->0x2c8/0x2cc and other
# per-instance fields) and calls the confirmed effect-emission primitive
# fn_801EFD34 twice - likely draw()'s particle/trail-effect half.
.section extab, "a"
.balign 4
.global etb_80007674
etb_80007674:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_80007674, 8

.section extabindex, "a"
.balign 4
.global eti_800143D4
eti_800143D4:
    .4byte fn_801871A0
    .4byte 0x00000390
    .4byte etb_80007674
.size eti_800143D4, 12

.text
.balign 4
.global fn_801871A0

fn_801871A0:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stfd 31, 0xb0(1)
    psq_st 31, 0xb8(1), 0, 0
    stfd 30, 0xa0(1)
    psq_st 30, 0xa8(1), 0, 0
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    stw 29, 0x94(1)
    li 0, -0x1
    lis 4, lbl_804A1960@ha
    stw 0, 0x54(1)
    mr 29, 3
    addi 31, 4, lbl_804A1960@l
    addi 9, 1, 0x44
    stw 0, 0x58(1)
    li 10, 0x0
    .4byte 0x48000064 # b .L_8018724C
L_801871EC:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_8018724C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801871EC
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x54(1)
    .4byte 0xC3E2B048 # lfs f31, lbl_8053DFE8@sda21(r0)
    stw 5, 0x58(1)
    fmr 30, 31
    stw 5, 0x5c(1)
    stb 5, 0x60(1)
    stb 5, 0x61(1)
    stb 5, 0x62(1)
    stb 4, 0x63(1)
    stb 4, 0x64(1)
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stb 5, 0x67(1)
    stb 5, 0x68(1)
    stb 5, 0x69(1)
    stb 4, 0x6a(1)
    stw 3, 0x6c(1)
    stb 4, 0x70(1)
    stb 5, 0x71(1)
    stb 5, 0x72(1)
    stw 6, 0x74(1)
    stw 5, 0x78(1)
    stw 0, 0x7c(1)
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(29)
    psq_st 1, 0x8(1), 0, 0
    stfs 31, 0x20(1)
    stfs 31, 0x30(1)
    stfs 31, 0x40(1)
    stb 5, 0x63(1)
    lwz 0, 0x90(29)
    stfs 0, 0x10(1)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801872FC
    cmplwi 0, 0x1
    .4byte 0x4082020C # bne .L_80187504
L_801872FC:
    .4byte 0xC002B048 # lfs f0, lbl_8053DFE8@sda21(r0)
    stfs 0, 0x14(29)
    lwz 0, 0x278(29)
    cmpwi 0, 0x2
    .4byte 0x41820084 # beq .L_80187390
    .4byte 0x40800014 # bge .L_80187324
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80187330
    .4byte 0x40800038 # bge .L_80187354
    .4byte 0x480000B8 # b .L_801873D8
L_80187324:
    cmpwi 0, 0x4
    .4byte 0x408000B0 # bge .L_801873D8
    .4byte 0x4800008C # b .L_801873B8
L_80187330:
    lwz 0, 0x26c(29)
    lis 3, 0x4647
    addi 4, 31, 0xb0
    slwi 0, 0, 2
    addi 3, 3, 0x414e
    lwzx 4, 4, 0
    bl fn_804032E8
    mr 30, 3
    .4byte 0x48000088 # b .L_801873D8
L_80187354:
    lwz 0, 0x26c(29)
    lis 3, 0x4647
    addi 4, 31, 0xf0
    slwi 0, 0, 2
    addi 3, 3, 0x414e
    lwzx 4, 4, 0
    bl fn_804032E8
    lwz 0, 0x26c(29)
    addi 4, 31, 0xc8
    mr 30, 3
    slwi 0, 0, 3
    add 3, 4, 0
    lfsx 30, 4, 0
    lfs 31, 0x4(3)
    .4byte 0x4800004C # b .L_801873D8
L_80187390:
    lwz 0, 0x26c(29)
    lis 3, 0x4647
    addi 4, 31, 0x104
    slwi 0, 0, 2
    addi 3, 3, 0x414e
    lwzx 4, 4, 0
    bl fn_804032E8
    .4byte 0xC3E2B04C # lfs f31, lbl_8053DFEC@sda21(r0)
    mr 30, 3
    .4byte 0x48000024 # b .L_801873D8
L_801873B8:
    lwz 0, 0x26c(29)
    lis 3, 0x4647
    addi 4, 31, 0x124
    slwi 0, 0, 2
    addi 3, 3, 0x414e
    lwzx 4, 4, 0
    bl fn_804032E8
    mr 30, 3
L_801873D8:
    li 5, 0x0
    li 0, -0x2
    stb 0, 0x61(1)
    fmr 1, 30
    .4byte 0xC0C2B050 # lfs f6, lbl_8053DFF0@sda21(r0)
    fmr 2, 31
    stb 5, 0x60(1)
    addi 0, 1, 0x14
    .4byte 0xC082B054 # lfs f4, lbl_8053DFF4@sda21(r0)
    stb 5, 0x54(1)
    mr 3, 29
    .4byte 0xC062B048 # lfs f3, lbl_8053DFE8@sda21(r0)
    mr 4, 30
    stb 5, 0x55(1)
    li 6, -0x1
    .4byte 0xC002B058 # lfs f0, lbl_8053DFF8@sda21(r0)
    stb 5, 0x56(1)
    addi 5, 1, 0x44
    lfs 5, 0x290(29)
    fmuls 5, 6, 5
    stfs 4, 0x14(1)
    stfs 3, 0x18(1)
    fctiwz 4, 5
    stfs 3, 0x1c(1)
    stfd 4, 0x80(1)
    lwz 7, 0x84(1)
    stfs 3, 0x24(1)
    stb 7, 0x57(1)
    stfs 0, 0x28(1)
    stfs 3, 0x2c(1)
    stfs 3, 0x34(1)
    stfs 3, 0x38(1)
    stfs 0, 0x3c(1)
    stw 0, 0x5c(1)
    bl fn_801EFD34
    lfs 0, 0x8(1)
    li 8, 0xe
    lfs 4, 0xc(1)
    addi 7, 1, 0x14
    stfs 0, 0xc(29)
    li 0, 0xff
    lfs 0, 0x10(1)
    fmr 1, 30
    stfs 4, 0x10(29)
    fmr 2, 31
    .4byte 0xC062B048 # lfs f3, lbl_8053DFE8@sda21(r0)
    mr 3, 29
    stfs 0, 0x14(29)
    mr 4, 30
    addi 5, 1, 0x44
    lbz 9, 0x2ee(29)
    li 6, -0x1
    stb 9, 0x61(1)
    stw 8, 0x74(1)
    lfs 4, 0x2cc(29)
    lfs 0, 0x2c8(29)
    stfs 0, 0x14(1)
    stfs 3, 0x18(1)
    stfs 3, 0x1c(1)
    stfs 3, 0x24(1)
    stfs 4, 0x28(1)
    stfs 3, 0x2c(1)
    stfs 3, 0x34(1)
    stfs 3, 0x38(1)
    stfs 4, 0x3c(1)
    stw 7, 0x5c(1)
    stb 0, 0x54(1)
    stb 0, 0x55(1)
    stb 0, 0x56(1)
    lfs 0, 0x290(29)
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    stb 0, 0x57(1)
    bl fn_801EFD34
L_80187504:
    psq_l 31, 0xb8(1), 0, 0
    lfd 31, 0xb0(1)
    psq_l 30, 0xa8(1), 0, 0
    lfd 30, 0xa0(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    lwz 0, 0xc4(1)
    lwz 29, 0x94(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

