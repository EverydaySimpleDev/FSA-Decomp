# Fresh project-wide gap hunt continuation: 9 functions, 9,028 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_8000CA3C
etb_8000CA3C:
    .4byte 0x190A0000
    .4byte 0x00000000
.size etb_8000CA3C, 8

.global etb_8000CA44
etb_8000CA44:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000CA44, 8

.global etb_8000CA4C
etb_8000CA4C:
    .4byte 0x190A0000
    .4byte 0x00000000
.size etb_8000CA4C, 8

.global etb_8000CA54
etb_8000CA54:
    .4byte 0x110A0000
    .4byte 0x00000000
.size etb_8000CA54, 8

.global etb_8000CA5C
etb_8000CA5C:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_8000CA5C, 8

.global etb_8000CA64
etb_8000CA64:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CA64, 8

.global etb_8000CA6C
etb_8000CA6C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CA6C, 8

.global etb_8000CA74
etb_8000CA74:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CA74, 8

.global etb_8000CA7C
etb_8000CA7C:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000CA7C, 8

.section extabindex, "a"
.balign 4
.global eti_8001B8D4
eti_8001B8D4:
    .4byte fn_802C2154
    .4byte 0x000001AC
    .4byte etb_8000CA3C
.size eti_8001B8D4, 12

.global eti_8001B8E0
eti_8001B8E0:
    .4byte fn_802C2300
    .4byte 0x000001A8
    .4byte etb_8000CA44
.size eti_8001B8E0, 12

.global eti_8001B8EC
eti_8001B8EC:
    .4byte fn_802C24A8
    .4byte 0x000001DC
    .4byte etb_8000CA4C
.size eti_8001B8EC, 12

.global eti_8001B8F8
eti_8001B8F8:
    .4byte fn_802C2684
    .4byte 0x000001BC
    .4byte etb_8000CA54
.size eti_8001B8F8, 12

.global eti_8001B904
eti_8001B904:
    .4byte fn_802C2840
    .4byte 0x00000324
    .4byte etb_8000CA5C
.size eti_8001B904, 12

.global eti_8001B910
eti_8001B910:
    .4byte fn_802C2B64
    .4byte 0x0000006C
    .4byte etb_8000CA64
.size eti_8001B910, 12

.global eti_8001B91C
eti_8001B91C:
    .4byte fn_802C2BD0
    .4byte 0x00000060
    .4byte etb_8000CA6C
.size eti_8001B91C, 12

.global eti_8001B928
eti_8001B928:
    .4byte fn_802C2C30
    .4byte 0x00000EB4
    .4byte etb_8000CA74
.size eti_8001B928, 12

.global eti_8001B934
eti_8001B934:
    .4byte fn_802C3AE4
    .4byte 0x000009B4
    .4byte etb_8000CA7C
.size eti_8001B934, 12

.text
.balign 4
.global fn_802C2154
.global fn_802C2300
.global fn_802C24A8
.global fn_802C2684
.global fn_802C2840
.global fn_802C2B64
.global fn_802C2BD0
.global fn_802C2C30
.global fn_802C3AE4

fn_802C2154:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stfd 28, 0x20(1)
    psq_st 28, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0xC002DCE0 # lfs f0, lbl_80540C80@sda21(r0)
    lfs 31, 0x60(3)
    li 30, -0x1
    lfs 30, 0x64(3)
    lis 31, 0x5741
    lfs 29, 0x68(3)
    fsubs 31, 31, 0
    lfs 28, 0x6c(3)
    fsubs 30, 30, 0
    lfs 1, 0xc(3)
    fadds 29, 29, 0
    lfs 2, 0x10(3)
    fadds 28, 28, 0
    fadds 31, 31, 1
    fadds 30, 30, 2
    fadds 29, 29, 1
    fadds 28, 28, 2
L_802C21D4:
    bl SpatialRegistry_GetBase
    mr 5, 30
    addi 4, 31, 0x5250
    bl fn_801F78F4
    mr. 30, 3
    .4byte 0x4080000C # bge .L_802C21F4
    li 3, 0x0
    .4byte 0x480000D4 # b .L_802C22C4
L_802C21F4:
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFD0 # beq .L_802C21D4
    lwz 4, 0x4(29)
    lwz 0, 0x4(3)
    cmpw 4, 0
    .4byte 0x4082FFC0 # bne .L_802C21D4
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    cmpwi 0, 0x4
    .4byte 0x4082FFB0 # bne .L_802C21D4
    lfs 0, 0x60(3)
    lfs 3, 0xc(3)
    lfs 2, 0x68(3)
    fadds 0, 0, 3
    lfs 1, 0x64(3)
    lfs 4, 0x10(3)
    fadds 2, 2, 3
    lfs 3, 0x6c(3)
    fcmpo cr0, 0, 31
    fadds 1, 1, 4
    fadds 3, 3, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802C2260
    fmr 0, 31
L_802C2260:
    fcmpo cr0, 1, 30
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802C2270
    fmr 1, 30
L_802C2270:
    fcmpo cr0, 2, 29
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802C2280
    fmr 2, 29
L_802C2280:
    fcmpo cr0, 3, 28
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802C2290
    fmr 3, 28
L_802C2290:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_802C22B0
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802C22B0
    li 0, 0x1
L_802C22B0:
    clrlwi. 0, 0, 24
    .4byte 0x4182FF20 # beq .L_802C21D4
    li 0, 0x1
    li 3, 0x1
    stb 0, 0x2b0(29)
L_802C22C4:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    psq_l 28, 0x28(1), 0, 0
    lfd 28, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x64(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_802C2300:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    lwz 0, 0x280(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802C2334
    li 3, 0x0
    .4byte 0x4800015C # b .L_802C248C
L_802C2334:
    bl fn_802DE7CC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_802C2348
    li 3, 0x0
    .4byte 0x48000148 # b .L_802C248C
L_802C2348:
    rlwinm. 0, 29, 0, 30, 30
    clrlwi 3, 29, 24
    li 29, 0x0
    .4byte 0x4182000C # beq .L_802C2360
    li 29, 0x1
    .4byte 0x48000020 # b .L_802C237C
L_802C2360:
    rlwinm. 0, 3, 0, 29, 29
    .4byte 0x4182000C # beq .L_802C2370
    li 29, 0x2
    .4byte 0x48000010 # b .L_802C237C
L_802C2370:
    rlwinm. 0, 3, 0, 28, 28
    .4byte 0x41820008 # beq .L_802C237C
    li 29, 0x3
L_802C237C:
    clrlwi 30, 29, 24
    mr 3, 30
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820048 # bne .L_802C23D4
    mr 3, 30
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802C23A8
    li 3, 0x0
    .4byte 0x480000E8 # b .L_802C248C
L_802C23A8:
    stw 30, 0x2a4(31)
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802C23C8
    mr 3, 30
    bl fn_8022F3DC
    clrlwi 29, 3, 24
L_802C23C8:
    clrlwi 0, 29, 24
    stw 0, 0x2a0(31)
    .4byte 0x4800002C # b .L_802C23FC
L_802C23D4:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802C23F0
    mr 3, 30
    bl fn_8022F3DC
    clrlwi 29, 3, 24
L_802C23F0:
    clrlwi 0, 29, 24
    stw 0, 0x2a4(31)
    stw 0, 0x2a0(31)
L_802C23FC:
    bl GetRoomConfigRecord
    lwz 4, 0x2a0(31)
    li 5, 0x168
    li 6, 0x0
    bl fn_802D46D8
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_802C2488
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_802C2458
    lwz 3, 0x2a0(31)
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_802C2480
    lwz 3, 0x2a4(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    .4byte 0x4800002C # b .L_802C2480
L_802C2458:
    bl fn_8023077C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802C2480
    lwz 3, 0x2a4(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
L_802C2480:
    li 3, 0x1
    .4byte 0x48000008 # b .L_802C248C
L_802C2488:
    li 3, 0x0
L_802C248C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802C24A8:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stfd 28, 0x20(1)
    psq_st 28, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    li 30, -0x1
    lfs 31, 0x60(3)
    lis 31, 0x5354
    lfs 0, 0xc(3)
    lfs 29, 0x68(3)
    lfs 30, 0x64(3)
    fadds 31, 31, 0
    lfs 1, 0x10(3)
    fadds 29, 29, 0
    lfs 28, 0x6c(3)
    fadds 30, 30, 1
    fadds 28, 28, 1
L_802C2514:
    bl SpatialRegistry_GetBase
    mr 5, 30
    addi 4, 31, 0x424c
    bl fn_801F78F4
    mr. 30, 3
    .4byte 0x41800120 # blt .L_802C2648
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFD8 # beq .L_802C2514
    lwz 4, 0x4(29)
    lwz 0, 0x4(3)
    cmpw 4, 0
    .4byte 0x4082FFC8 # bne .L_802C2514
    lwz 0, 0x25c(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802C2564
    cmpwi 0, 0x2
    .4byte 0x4082FFB4 # bne .L_802C2514
L_802C2564:
    lfs 0, 0x60(3)
    lfs 3, 0xc(3)
    lfs 2, 0x68(3)
    fadds 0, 0, 3
    lfs 1, 0x64(3)
    lfs 4, 0x10(3)
    fadds 2, 2, 3
    lfs 3, 0x6c(3)
    fcmpo cr0, 0, 31
    fadds 1, 1, 4
    fadds 3, 3, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802C259C
    fmr 0, 31
L_802C259C:
    fcmpo cr0, 1, 30
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802C25AC
    fmr 1, 30
L_802C25AC:
    fcmpo cr0, 2, 29
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802C25BC
    fmr 2, 29
L_802C25BC:
    fcmpo cr0, 3, 28
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802C25CC
    fmr 3, 28
L_802C25CC:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_802C25EC
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802C25EC
    li 0, 0x1
L_802C25EC:
    clrlwi. 0, 0, 24
    .4byte 0x4182FF24 # beq .L_802C2514
    lfs 0, 0x3c(29)
    .4byte 0xC022DCF4 # lfs f1, lbl_80540C94@sda21(r0)
    fneg 0, 0
    stfs 0, 0x3c(29)
    lfs 0, 0x40(29)
    fneg 0, 0
    stfs 0, 0x40(29)
    psq_l 2, 0xc(29), 0, 0
    psq_l 0, 0x3c(29), 0, 0
    ps_add 0, 2, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 2, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x14(29), 1, 0
    lfs 0, 0x3c(29)
    fdivs 0, 0, 1
    stfs 0, 0x3c(29)
    lfs 0, 0x40(29)
    fdivs 0, 0, 1
    stfs 0, 0x40(29)
L_802C2648:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    psq_l 28, 0x28(1), 0, 0
    lfd 28, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x64(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_802C2684:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stfd 29, 0x20(1)
    psq_st 29, 0x28(1), 0, 0
    stfd 28, 0x10(1)
    psq_st 28, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    cmplwi 4, 0x0
    mr 30, 5
    .4byte 0x4082000C # bne .L_802C26CC
    li 3, 0x0
    .4byte 0x48000140 # b .L_802C2808
L_802C26CC:
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x4c49
    cmplwi 0, 0x4654
    .4byte 0x41820048 # beq .L_802C2720
    cmplwi 0, 0x4632
    .4byte 0x41820040 # beq .L_802C2720
    subis 0, 3, 0x434c
    cmplwi 0, 0x4f44
    .4byte 0x41820034 # beq .L_802C2720
    subis 0, 3, 0x4f42
    cmplwi 0, 0x4c46
    .4byte 0x40820010 # bne .L_802C2708
    lwz 0, 0x230(4)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802C2720
L_802C2708:
    subis 0, 3, 0x5353
    cmplwi 0, 0x4c46
    .4byte 0x408200F4 # bne .L_802C2804
    lha 0, 0x230(4)
    clrlwi. 0, 0, 17
    .4byte 0x408200E8 # bne .L_802C2804
L_802C2720:
    lfs 31, 0x60(4)
    lfs 0, 0xc(4)
    lfs 29, 0x68(4)
    lfs 30, 0x64(4)
    fadds 31, 31, 0
    lfs 1, 0x10(4)
    fadds 29, 29, 0
    lfs 28, 0x6c(4)
    fadds 30, 30, 1
    lwz 31, 0x4(4)
    fadds 28, 28, 1
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_802C2760
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_802C2764
L_802C2760:
    addi 3, 3, 0xdc
L_802C2764:
    lfs 1, 0x0(3)
    lfs 0, 0x4(3)
    fneg 1, 1
    lfs 2, 0x0(30)
    fneg 0, 0
    fadds 31, 31, 1
    fadds 30, 30, 0
    fadds 29, 29, 1
    fcmpo cr0, 31, 2
    fadds 28, 28, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802C2798
    fmr 31, 2
L_802C2798:
    lfs 0, 0x4(30)
    fcmpo cr0, 30, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802C27AC
    fmr 30, 0
L_802C27AC:
    lfs 0, 0x8(30)
    fcmpo cr0, 29, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802C27C0
    fmr 29, 0
L_802C27C0:
    lfs 0, 0xc(30)
    fcmpo cr0, 28, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802C27D4
    fmr 28, 0
L_802C27D4:
    fcmpo cr0, 29, 31
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_802C27F4
    fcmpo cr0, 28, 30
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802C27F4
    li 0, 0x1
L_802C27F4:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_802C2804
    li 3, 0x1
    .4byte 0x48000008 # b .L_802C2808
L_802C2804:
    li 3, 0x0
L_802C2808:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    psq_l 28, 0x18(1), 0, 0
    lfd 28, 0x10(1)
    lwz 31, 0xc(1)
    lwz 0, 0x54(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802C2840:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    mr 31, 3
    lwz 30, 0x4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_802C2898
    lfs 0, 0x14(31)
    .4byte 0xC042DCF8 # lfs f2, lbl_80540C98@sda21(r0)
    fcmpo cr0, 0, 2
    .4byte 0x41810014 # bgt .L_802C2898
    lfs 1, 0x44(31)
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_802C28A4
L_802C2898:
    li 0, -0x1
    stw 0, 0x298(31)
    .4byte 0x480002A8 # b .L_802C2B48
L_802C28A4:
    lwz 0, 0x280(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_802C28D0
    .4byte 0xC002DCEC # lfs f0, lbl_80540C8C@sda21(r0)
    .4byte 0xC022DCFC # lfs f1, lbl_80540C9C@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC002DCF4 # lfs f0, lbl_80540C94@sda21(r0)
    stfs 1, 0x64(31)
    stfs 2, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000048 # b .L_802C2914
L_802C28D0:
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802C28E0
    cmpwi 0, 0x6
    .4byte 0x41800020 # blt .L_802C28FC
L_802C28E0:
    .4byte 0xC022DCFC # lfs f1, lbl_80540C9C@sda21(r0)
    .4byte 0xC002DCF4 # lfs f0, lbl_80540C94@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800001C # b .L_802C2914
L_802C28FC:
    .4byte 0xC022DD00 # lfs f1, lbl_80540CA0@sda21(r0)
    .4byte 0xC002DCE0 # lfs f0, lbl_80540C80@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_802C2914:
    lfs 0, 0x60(31)
    stfs 0, 0x14(1)
    lfs 0, 0x64(31)
    stfs 0, 0x18(1)
    lfs 0, 0x68(31)
    stfs 0, 0x1c(1)
    lfs 0, 0x6c(31)
    stfs 0, 0x20(1)
    lwz 0, 0x280(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_802C2964
    .4byte 0xC022DD00 # lfs f1, lbl_80540CA0@sda21(r0)
    .4byte 0xC002DD04 # lfs f0, lbl_80540CA4@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022DCE0 # lfs f1, lbl_80540C80@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002DCE4 # lfs f0, lbl_80540C84@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000048 # b .L_802C29A8
L_802C2964:
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802C2974
    cmpwi 0, 0x6
    .4byte 0x41800020 # blt .L_802C2990
L_802C2974:
    .4byte 0xC022DD04 # lfs f1, lbl_80540CA4@sda21(r0)
    .4byte 0xC002DCE4 # lfs f0, lbl_80540C84@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800001C # b .L_802C29A8
L_802C2990:
    .4byte 0xC022DD08 # lfs f1, lbl_80540CA8@sda21(r0)
    .4byte 0xC002DCE8 # lfs f0, lbl_80540C88@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_802C29A8:
    lfs 5, 0x10(31)
    lfs 1, 0x18(1)
    lfs 0, 0x20(1)
    lfs 4, 0xc(31)
    fadds 2, 1, 5
    lfs 3, 0x14(1)
    fadds 0, 0, 5
    lfs 1, 0x1c(1)
    fadds 3, 3, 4
    stfs 2, 0x18(1)
    fadds 1, 1, 4
    stfs 0, 0x20(1)
    stfs 3, 0x14(1)
    stfs 1, 0x1c(1)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_802C29F8
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_802C29FC
L_802C29F8:
    addi 3, 3, 0xdc
L_802C29FC:
    lfs 1, 0x0(3)
    lfs 0, 0x4(3)
    fneg 4, 1
    lfs 3, 0x14(1)
    lfs 1, 0x1c(1)
    fneg 5, 0
    lfs 2, 0x18(1)
    lfs 0, 0x20(1)
    fadds 3, 3, 4
    fadds 2, 2, 5
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0x14(1)
    stfs 2, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 28, 0x298(31)
    cmpwi 28, -0x1
    .4byte 0x4182008C # beq .L_802C2AD0
    bl SpatialRegistry_GetBase
    slwi 0, 28, 2
    addi 5, 1, 0x14
    add 4, 3, 0
    mr 3, 31
    lwz 30, 0x8(4)
    mr 4, 30
    bl fn_802C2684
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_802C2AD0
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    stfs 0, 0x14(31)
    psq_l 1, 0xc(30), 0, 0
    psq_l 2, 0x254(31), 0, 0
    lfs 0, 0x14(30)
    ps_sub 3, 1, 2
    psq_l 2, 0xc(31), 0, 0
    stfs 0, 0x10(1)
    psq_l 0, 0x25c(31), 1, 0
    ps_add 4, 2, 3
    psq_l 2, 0x10(1), 1, 0
    psq_st 1, 0x8(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 4, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_st 3, 0x8(1), 0, 0
    ps_add 1, 1, 0
    psq_st 0, 0x10(1), 1, 0
    psq_st 1, 0x14(31), 1, 0
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 1, 0x254(31), 0, 0
    stfs 0, 0x25c(31)
    .4byte 0x4800007C # b .L_802C2B48
L_802C2AD0:
    li 0, -0x1
    stw 0, 0x298(31)
    bl SpatialRegistry_GetBase
    lwz 30, 0x1008(3)
    li 27, 0x0
    .4byte 0xC3E2DCD4 # lfs f31, lbl_80540C74@sda21(r0)
    li 28, 0x0
    .4byte 0x48000054 # b .L_802C2B40
L_802C2AF0:
    lwz 0, 0x198(31)
    cmpw 27, 0
    .4byte 0x41820040 # beq .L_802C2B38
    bl SpatialRegistry_GetBase
    addi 0, 28, 0x8
    addi 5, 1, 0x14
    lwzx 29, 3, 0
    mr 3, 31
    mr 4, 29
    bl fn_802C2684
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802C2B38
    stw 27, 0x298(31)
    stfs 31, 0x14(31)
    psq_l 1, 0xc(29), 0, 0
    lfs 0, 0x14(29)
    psq_st 1, 0x254(31), 0, 0
    stfs 0, 0x25c(31)
L_802C2B38:
    addi 28, 28, 0x4
    addi 27, 27, 0x1
L_802C2B40:
    cmpw 27, 30
    .4byte 0x4180FFAC # blt .L_802C2AF0
L_802C2B48:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802C2B64:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lwz 0, 0x240(3)
    cmpwi 0, 0x2
    .4byte 0x40820040 # bne .L_802C2BBC
    li 0, 0x1
    stb 0, 0x2b0(3)
    lfs 1, 0x230(3)
    lfs 0, 0x234(3)
    stfs 1, 0x10(1)
    lwz 31, 0x238(3)
    stfs 0, 0x14(1)
    lwz 3, 0x10(1)
    lwz 0, 0x14(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 5, 31
    addi 4, 1, 0x8
    bl fn_802D6C10
L_802C2BBC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802C2BD0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x1
    stw 31, 0x1c(1)
    stb 0, 0x2b0(3)
    lfs 1, 0x230(3)
    lfs 0, 0x234(3)
    stfs 1, 0x10(1)
    lwz 31, 0x238(3)
    stfs 0, 0x14(1)
    lwz 3, 0x10(1)
    lwz 0, 0x14(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 5, 31
    addi 4, 1, 0x8
    bl fn_802D6C10
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802C2C30:
    stwu 1, -0xe0(1)
    mflr 0
    stw 0, 0xe4(1)
    stw 31, 0xdc(1)
    stw 30, 0xd8(1)
    stw 29, 0xd4(1)
    mr 29, 3
    bl fn_802C24A8
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418205DC # beq .L_802C3244
    lbz 0, 0x2b3(29)
    cmplwi 0, 0x1
    .4byte 0x40820098 # bne .L_802C2D0C
    li 0, 0x0
    .4byte 0xC022DCD4 # lfs f1, lbl_80540C74@sda21(r0)
    stb 0, 0x2b3(29)
    .4byte 0xC002DCF4 # lfs f0, lbl_80540C94@sda21(r0)
    lfs 3, 0x10(29)
    lfs 2, 0x14(29)
    fsubs 2, 3, 2
    stfs 2, 0x10(29)
    stfs 1, 0x14(29)
    stfs 1, 0x44(29)
    lfs 1, 0x40(29)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_802C2CB8
    stfs 0, 0x40(29)
    .4byte 0x48000018 # b .L_802C2CCC
L_802C2CB8:
    .4byte 0xC002DCFC # lfs f0, lbl_80540C9C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802C2CCC
    stfs 0, 0x40(29)
L_802C2CCC:
    lwz 0, 0x280(29)
    cmpwi 0, 0x6
    .4byte 0x40820038 # bne .L_802C2D0C
    lfs 2, 0x3c(29)
    .4byte 0xC022DCD4 # lfs f1, lbl_80540C74@sda21(r0)
    fcmpu cr0, 2, 1
    .4byte 0x40820010 # bne .L_802C2CF4
    lfs 0, 0x40(29)
    fcmpu cr0, 0, 1
    .4byte 0x4182001C # beq .L_802C2D0C
L_802C2CF4:
    .4byte 0xC022DD10 # lfs f1, lbl_80540CB0@sda21(r0)
    fmuls 0, 1, 2
    stfs 0, 0x3c(29)
    lfs 0, 0x40(29)
    fmuls 0, 1, 0
    stfs 0, 0x40(29)
L_802C2D0C:
    lfs 0, 0xc(29)
    .4byte 0xC022DD14 # lfs f1, lbl_80540CB4@sda21(r0)
    stfs 0, 0x248(29)
    .4byte 0xC002DD18 # lfs f0, lbl_80540CB8@sda21(r0)
    lfs 2, 0x10(29)
    stfs 2, 0x24c(29)
    lfs 2, 0x14(29)
    stfs 2, 0x250(29)
    psq_l 3, 0xc(29), 0, 0
    psq_l 2, 0x3c(29), 0, 0
    ps_add 2, 3, 2
    psq_st 2, 0xc(29), 0, 0
    psq_l 3, 0x14(29), 1, 0
    psq_l 2, 0x44(29), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x14(29), 1, 0
    lfs 2, 0x40(29)
    fadds 1, 2, 1
    stfs 1, 0x40(29)
    lfs 1, 0x40(29)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_802C2D68
    stfs 0, 0x40(29)
L_802C2D68:
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    mr 3, 29
    addi 4, 1, 0xc0
    li 5, 0x0
    stfs 0, 0xc0(1)
    stfs 0, 0xc4(1)
    stfs 0, 0xc8(1)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820474 # beq .L_802C3200
    lwz 0, 0x280(29)
    cmpwi 0, 0x7
    .4byte 0x408200D8 # bne .L_802C2E70
    lwz 30, 0x4(29)
    cmpwi 30, 0x8
    .4byte 0x408000CC # bge .L_802C2E70
    bl SpatialRegistry_GetBase
    lwz 0, 0x290(29)
    lis 4, 0x414c
    mr 5, 30
    addi 6, 29, 0xc
    slwi 0, 0, 4
    addi 4, 4, 0x4345
    ori 7, 0, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 30, 0x4(29)
    cmpwi 30, 0x8
    .4byte 0x4180002C # blt .L_802C2E08
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 30
    addi 4, 4, 0x5249
    addi 6, 29, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800002C # b .L_802C2E30
L_802C2E08:
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    mr 3, 30
    addi 4, 29, 0xc
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C2E30:
    lfs 1, 0x230(29)
    lfs 0, 0x234(29)
    stfs 1, 0x68(1)
    lwz 30, 0x238(29)
    stfs 0, 0x6c(1)
    lwz 3, 0x68(1)
    lwz 0, 0x6c(1)
    stw 3, 0x18(1)
    stw 0, 0x1c(1)
    bl GetRoomConfigRecord
    mr 5, 30
    addi 4, 1, 0x18
    bl fn_802D6C10
    li 0, 0x0
    stb 0, 0x11c(29)
    .4byte 0x48000C5C # b .L_802C3AC8
L_802C2E70:
    cmpwi 0, 0x8
    .4byte 0x408200D8 # bne .L_802C2F4C
    lwz 30, 0x4(29)
    cmpwi 30, 0x8
    .4byte 0x408000CC # bge .L_802C2F4C
    bl SpatialRegistry_GetBase
    lwz 0, 0x290(29)
    lis 4, 0x414c
    mr 5, 30
    addi 6, 29, 0xc
    slwi 0, 0, 4
    addi 4, 4, 0x4345
    ori 7, 0, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 30, 0x4(29)
    cmpwi 30, 0x8
    .4byte 0x4180002C # blt .L_802C2EE4
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 30
    addi 4, 4, 0x5249
    addi 6, 29, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800002C # b .L_802C2F0C
L_802C2EE4:
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    mr 3, 30
    addi 4, 29, 0xc
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C2F0C:
    lfs 1, 0x230(29)
    lfs 0, 0x234(29)
    stfs 1, 0x60(1)
    lwz 30, 0x238(29)
    stfs 0, 0x64(1)
    lwz 3, 0x60(1)
    lwz 0, 0x64(1)
    stw 3, 0x10(1)
    stw 0, 0x14(1)
    bl GetRoomConfigRecord
    mr 5, 30
    addi 4, 1, 0x10
    bl fn_802D6C10
    li 0, 0x0
    stb 0, 0x11c(29)
    .4byte 0x48000B80 # b .L_802C3AC8
L_802C2F4C:
    lfs 4, 0xc4(1)
    .4byte 0xC042DCD4 # lfs f2, lbl_80540C74@sda21(r0)
    fcmpu cr0, 4, 2
    .4byte 0x41820230 # beq .L_802C3188
    cmpwi 0, 0x6
    .4byte 0x40820038 # bne .L_802C2F98
    lfs 1, 0x40(29)
    .4byte 0xC002DD1C # lfs f0, lbl_80540CBC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810028 # ble .L_802C2F98
    lfs 0, 0x3c(29)
    .4byte 0xC022DCF4 # lfs f1, lbl_80540C94@sda21(r0)
    fdivs 0, 0, 1
    stfs 0, 0x3c(29)
    lfs 0, 0x40(29)
    fdivs 0, 0, 1
    fneg 0, 0
    stfs 0, 0x40(29)
    .4byte 0x48000B34 # b .L_802C3AC8
L_802C2F98:
    .4byte 0xC062DCD4 # lfs f3, lbl_80540C74@sda21(r0)
    fcmpo cr0, 4, 3
    .4byte 0x40810018 # ble .L_802C2FB8
    lfs 0, 0x40(29)
    fcmpo cr0, 0, 3
    .4byte 0x40800B1C # bge .L_802C3AC8
    stfs 3, 0x40(29)
    .4byte 0x48000B14 # b .L_802C3AC8
L_802C2FB8:
    .4byte 0xC042DCE4 # lfs f2, lbl_80540C84@sda21(r0)
    addi 3, 1, 0xb4
    lfs 0, 0xc(29)
    .4byte 0xC022DCE8 # lfs f1, lbl_80540C88@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0xb4(1)
    lfs 0, 0x10(29)
    fadds 0, 1, 0
    stfs 3, 0xbc(1)
    stfs 0, 0xb8(1)
    lwz 4, 0x4(29)
    bl fn_80226850
    lfs 1, 0xc(29)
    mr 30, 3
    .4byte 0xC002DCE4 # lfs f0, lbl_80540C84@sda21(r0)
    addi 3, 1, 0xb4
    fsubs 0, 1, 0
    stfs 0, 0xb4(1)
    lwz 4, 0x4(29)
    bl fn_80226850
    clrlwi 0, 30, 16
    cmplwi 0, 0x16
    .4byte 0x41820010 # beq .L_802C3020
    clrlwi 0, 3, 16
    cmplwi 0, 0x16
    .4byte 0x40820040 # bne .L_802C305C
L_802C3020:
    .4byte 0xC002DCEC # lfs f0, lbl_80540C8C@sda21(r0)
    stfs 0, 0x40(29)
    lwz 3, 0x23c(29)
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(29)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_802C304C
    .4byte 0xC002DCDC # lfs f0, lbl_80540C7C@sda21(r0)
    stfs 0, 0x3c(29)
    .4byte 0x4800000C # b .L_802C3054
L_802C304C:
    .4byte 0xC002DCF0 # lfs f0, lbl_80540C90@sda21(r0)
    stfs 0, 0x3c(29)
L_802C3054:
    li 0, 0x1
    .4byte 0x48000008 # b .L_802C3060
L_802C305C:
    li 0, 0x0
L_802C3060:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x41820A60 # beq .L_802C3AC8
    mr 3, 29
    bl fn_802C2154
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820A4C # beq .L_802C3AC8
    li 0, 0x0
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    stb 0, 0x2b2(29)
    li 0, 0x2
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stw 0, 0x240(29)
    lwz 0, 0x27c(29)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_802C30B4
    li 0, 0x3
    stw 0, 0x27c(29)
L_802C30B4:
    lfs 0, 0x248(29)
    stfs 0, 0xc(29)
    lfs 0, 0x24c(29)
    stfs 0, 0x10(29)
    lfs 0, 0x250(29)
    stfs 0, 0x14(29)
    lwz 3, 0x23c(29)
    lbz 0, 0x2b5(29)
    slwi 4, 3, 30
    lwz 5, 0x280(29)
    slwi 3, 0, 29
    lwz 0, 0x4(29)
    or 30, 4, 3
    rlwimi 30, 5, 24, 3, 7
    rlwimi 30, 0, 0, 24, 31
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_802C3120
    bl GetRoomConfigRecord
    lwz 31, 0x18(3)
    bl GetRoomConfigRecord
    lwz 3, 0x14(3)
    clrlslwi 0, 31, 24, 8
    rlwimi 0, 3, 16, 8, 15
    or 30, 30, 0
    .4byte 0x4800000C # b .L_802C3128
L_802C3120:
    lhz 0, 0x2aa(29)
    slwi 30, 0, 8
L_802C3128:
    lfs 3, 0x230(29)
    lfs 2, 0x234(29)
    lfs 1, 0xc(29)
    lfs 0, 0x10(29)
    stfs 3, 0xa0(1)
    lwz 29, 0x238(29)
    stfs 2, 0xa4(1)
    lwz 5, 0xa0(1)
    stfs 1, 0x98(1)
    lwz 4, 0xa4(1)
    stfs 0, 0x9c(1)
    lwz 3, 0x98(1)
    lwz 0, 0x9c(1)
    stw 5, 0x58(1)
    stw 4, 0x5c(1)
    stw 3, 0x50(1)
    stw 0, 0x54(1)
    bl GetRoomConfigRecord
    mr 6, 30
    mr 7, 29
    addi 4, 1, 0x50
    addi 5, 1, 0x58
    bl fn_802D6D70
    .4byte 0x48000944 # b .L_802C3AC8
L_802C3188:
    lfs 0, 0xc0(1)
    fcmpu cr0, 0, 2
    .4byte 0x41820938 # beq .L_802C3AC8
    lfs 1, 0x3c(29)
    .4byte 0xC002DD20 # lfs f0, lbl_80540CC0@sda21(r0)
    fmuls 0, 1, 0
    stfs 0, 0x3c(29)
    lfs 3, 0xc0(1)
    fcmpo cr0, 3, 2
    .4byte 0x40810018 # ble .L_802C31C4
    lfs 1, 0xc(29)
    lfs 0, 0x248(29)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820024 # beq .L_802C31E4
L_802C31C4:
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    fcmpo cr0, 3, 0
    .4byte 0x408008FC # bge .L_802C3AC8
    lfs 1, 0xc(29)
    lfs 0, 0x248(29)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408208E8 # bne .L_802C3AC8
L_802C31E4:
    lfs 0, 0x248(29)
    stfs 0, 0xc(29)
    lfs 0, 0x24c(29)
    stfs 0, 0x10(29)
    lfs 0, 0x250(29)
    stfs 0, 0x14(29)
    .4byte 0x480008CC # b .L_802C3AC8
L_802C3200:
    lfs 0, 0x3c(29)
    .4byte 0xC022DCD4 # lfs f1, lbl_80540C74@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x4082001C # bne .L_802C3228
    lfs 0, 0x40(29)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_802C3228
    lfs 0, 0x44(29)
    fcmpu cr0, 0, 1
    .4byte 0x418208A4 # beq .L_802C3AC8
L_802C3228:
    lwz 0, 0x280(29)
    cmpwi 0, 0x2
    .4byte 0x41820898 # beq .L_802C3AC8
    mr 3, 29
    li 4, 0x0
    bl fn_801F2B20
    .4byte 0x48000888 # b .L_802C3AC8
L_802C3244:
    lbz 0, 0x2af(29)
    cmplwi 0, 0x0
    .4byte 0x4182010C # beq .L_802C3358
    lwz 3, 0x23c(29)
    lbz 0, 0x2b5(29)
    slwi 4, 3, 30
    lwz 5, 0x280(29)
    slwi 3, 0, 29
    lwz 0, 0x4(29)
    or 30, 4, 3
    rlwimi 30, 5, 24, 3, 7
    rlwimi 30, 0, 0, 24, 31
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_802C32A4
    bl GetRoomConfigRecord
    lwz 31, 0x18(3)
    bl GetRoomConfigRecord
    lwz 3, 0x14(3)
    clrlslwi 0, 31, 24, 8
    rlwimi 0, 3, 16, 8, 15
    or 30, 30, 0
    .4byte 0x4800000C # b .L_802C32AC
L_802C32A4:
    lhz 0, 0x2aa(29)
    slwi 30, 0, 8
L_802C32AC:
    lfs 3, 0x230(29)
    lfs 2, 0x234(29)
    lfs 1, 0xc(29)
    lfs 0, 0x10(29)
    stfs 3, 0x90(1)
    lwz 31, 0x238(29)
    stfs 2, 0x94(1)
    lwz 5, 0x90(1)
    stfs 1, 0x88(1)
    lwz 4, 0x94(1)
    stfs 0, 0x8c(1)
    lwz 3, 0x88(1)
    lwz 0, 0x8c(1)
    stw 5, 0x48(1)
    stw 4, 0x4c(1)
    stw 3, 0x40(1)
    stw 0, 0x44(1)
    bl GetRoomConfigRecord
    mr 6, 30
    mr 7, 31
    addi 4, 1, 0x40
    addi 5, 1, 0x48
    bl fn_802D6D70
    li 0, 0x0
    stb 0, 0x2af(29)
    lwz 0, 0x280(29)
    cmpwi 0, 0x6
    .4byte 0x40820040 # bne .L_802C3358
    lfs 3, 0x3c(29)
    .4byte 0xC022DCD4 # lfs f1, lbl_80540C74@sda21(r0)
    fcmpu cr0, 3, 1
    .4byte 0x40820010 # bne .L_802C3338
    lfs 0, 0x40(29)
    fcmpu cr0, 0, 1
    .4byte 0x41820024 # beq .L_802C3358
L_802C3338:
    .4byte 0xC042DD10 # lfs f2, lbl_80540CB0@sda21(r0)
    .4byte 0xC002DD24 # lfs f0, lbl_80540CC4@sda21(r0)
    fmuls 1, 2, 3
    stfs 1, 0x3c(29)
    lfs 1, 0x40(29)
    fmuls 1, 2, 1
    stfs 1, 0x40(29)
    stfs 0, 0x44(29)
L_802C3358:
    addi 3, 29, 0xc
    psq_l 1, 0x3c(29), 0, 0
    psq_l 2, 0x0(3), 0, 0
    .4byte 0xC002DD28 # lfs f0, lbl_80540CC8@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0x0(3), 0, 0
    psq_l 2, 0x8(3), 1, 0
    psq_l 1, 0x44(29), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x8(3), 1, 0
    lfs 1, 0x44(29)
    fadds 0, 1, 0
    stfs 0, 0x44(29)
    lwz 4, 0x4(29)
    bl fn_8022461C
    lwz 4, 0x298(29)
    mr 31, 3
    cmpwi 4, -0x1
    .4byte 0x41820008 # beq .L_802C33A8
    li 31, 0x0
L_802C33A8:
    lwz 0, 0x280(29)
    cmpwi 0, 0x6
    .4byte 0x408201C4 # bne .L_802C3574
    lfs 1, 0x14(29)
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4180000C # blt .L_802C33CC
    cmpwi 4, -0x1
    .4byte 0x418201AC # beq .L_802C3574
L_802C33CC:
    clrlwi 0, 31, 16
    cmplwi 0, 0x3
    .4byte 0x40820028 # bne .L_802C33FC
    mr 3, 29
    bl fn_801EE24C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082010C # bne .L_802C34F4
    li 0, 0x4
    li 3, 0x1
    stw 0, 0x240(29)
    .4byte 0x48000104 # b .L_802C34FC
L_802C33FC:
    cmplwi 0, 0xe
    .4byte 0x408200EC # bne .L_802C34EC
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_802C3478
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x2aa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 29
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000080 # b .L_802C34F4
L_802C3478:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820074 # beq .L_802C34F4
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x45e
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x45f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 29
    addi 4, 4, 0x3f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800000C # b .L_802C34F4
L_802C34EC:
    li 3, 0x0
    .4byte 0x4800000C # b .L_802C34FC
L_802C34F4:
    li 3, 0x1
    stb 3, 0x2b0(29)
L_802C34FC:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x418205C4 # beq .L_802C3AC8
    clrlwi 0, 31, 16
    cmplwi 0, 0xd
    .4byte 0x41820064 # beq .L_802C3574
    cmplwi 0, 0x39
    .4byte 0x4182005C # beq .L_802C3574
    lfs 1, 0x44(29)
    .4byte 0xC002DD2C # lfs f0, lbl_80540CCC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800038 # bge .L_802C3560
    lfs 1, 0x3c(29)
    .4byte 0xC042DCF4 # lfs f2, lbl_80540C94@sda21(r0)
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    fdivs 1, 1, 2
    stfs 1, 0x3c(29)
    lfs 1, 0x40(29)
    fdivs 1, 1, 2
    stfs 1, 0x40(29)
    lfs 1, 0x44(29)
    fdivs 1, 1, 2
    fneg 1, 1
    stfs 1, 0x44(29)
    stfs 0, 0x14(29)
L_802C3560:
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x72
    li 5, 0x0
    bl fn_801F0E34
L_802C3574:
    lfs 1, 0x14(29)
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800010 # blt .L_802C3590
    lwz 0, 0x298(29)
    cmpwi 0, -0x1
    .4byte 0x41820438 # beq .L_802C39C4
L_802C3590:
    .4byte 0xC022DCD4 # lfs f1, lbl_80540C74@sda21(r0)
    li 30, 0x1
    lfs 0, 0x3c(29)
    fcmpu cr0, 1, 0
    .4byte 0x40820014 # bne .L_802C35B4
    lfs 0, 0x40(29)
    fcmpu cr0, 1, 0
    .4byte 0x40820008 # bne .L_802C35B4
    li 30, 0x0
L_802C35B4:
    lbz 0, 0x2b1(29)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_802C35D4
    mr 3, 29
    li 4, 0x3
    bl fn_801F0D20
    li 0, 0x0
    stb 0, 0x2b1(29)
L_802C35D4:
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    li 0, 0x2
    stfs 0, 0x14(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    stw 0, 0x240(29)
    lwz 0, 0x27c(29)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_802C3604
    li 0, 0x3
    stw 0, 0x27c(29)
L_802C3604:
    clrlwi 0, 31, 16
    cmplwi 0, 0x3
    .4byte 0x40820028 # bne .L_802C3634
    mr 3, 29
    bl fn_801EE24C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082010C # bne .L_802C372C
    li 0, 0x4
    li 3, 0x1
    stw 0, 0x240(29)
    .4byte 0x48000104 # b .L_802C3734
L_802C3634:
    cmplwi 0, 0xe
    .4byte 0x408200EC # bne .L_802C3724
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_802C36B0
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x2aa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 29
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000080 # b .L_802C372C
L_802C36B0:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820074 # beq .L_802C372C
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x45e
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x45f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 29
    addi 4, 4, 0x3f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800000C # b .L_802C372C
L_802C3724:
    li 3, 0x0
    .4byte 0x4800000C # b .L_802C3734
L_802C372C:
    li 3, 0x1
    stb 3, 0x2b0(29)
L_802C3734:
    clrlwi. 0, 3, 24
    .4byte 0x40820390 # bne .L_802C3AC8
    clrlwi 0, 31, 16
    cmplwi 0, 0xd
    .4byte 0x4182000C # beq .L_802C3750
    cmplwi 0, 0x39
    .4byte 0x4082005C # bne .L_802C37A8
L_802C3750:
    lfs 1, 0x14(29)
    addi 4, 1, 0xa8
    psq_l 2, 0xc(29), 0, 0
    li 5, 0x3d0
    .4byte 0xC002DCE0 # lfs f0, lbl_80540C80@sda21(r0)
    li 6, 0x0
    stfs 1, 0xb0(1)
    li 7, 0x1
    fsubs 0, 1, 0
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    psq_st 2, 0x0(4), 0, 0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0xb0(1)
    lwz 3, 0x4(29)
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
L_802C37A8:
    lwz 3, 0x280(29)
    cmpwi 3, 0x7
    .4byte 0x4182000C # beq .L_802C37BC
    cmpwi 3, 0x8
    .4byte 0x4082011C # bne .L_802C38D4
L_802C37BC:
    lwz 31, 0x4(29)
    cmpwi 31, 0x8
    .4byte 0x40800304 # bge .L_802C3AC8
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    .4byte 0x408202F8 # bne .L_802C3AC8
    cmpwi 3, 0x7
    .4byte 0x40820034 # bne .L_802C380C
    bl SpatialRegistry_GetBase
    lwz 0, 0x290(29)
    lis 4, 0x414c
    mr 5, 31
    addi 6, 29, 0xc
    slwi 0, 0, 4
    addi 4, 4, 0x4345
    ori 7, 0, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000030 # b .L_802C3838
L_802C380C:
    bl SpatialRegistry_GetBase
    lwz 0, 0x290(29)
    lis 4, 0x414c
    mr 5, 31
    addi 6, 29, 0xc
    slwi 0, 0, 4
    addi 4, 4, 0x4345
    ori 7, 0, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802C3838:
    lwz 30, 0x4(29)
    cmpwi 30, 0x8
    .4byte 0x4180002C # blt .L_802C386C
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    mr 5, 30
    addi 4, 4, 0x5249
    addi 6, 29, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x4800002C # b .L_802C3894
L_802C386C:
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    mr 3, 30
    addi 4, 29, 0xc
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C3894:
    lfs 1, 0x230(29)
    lfs 0, 0x234(29)
    stfs 1, 0x38(1)
    lwz 30, 0x238(29)
    stfs 0, 0x3c(1)
    lwz 3, 0x38(1)
    lwz 0, 0x3c(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 5, 30
    addi 4, 1, 0x8
    bl fn_802D6C10
    li 0, 0x0
    stb 0, 0x11c(29)
    .4byte 0x480001F8 # b .L_802C3AC8
L_802C38D4:
    lfs 1, 0x230(29)
    lfs 0, 0x234(29)
    stfs 1, 0x80(1)
    lwz 30, 0x238(29)
    stfs 0, 0x84(1)
    lwz 3, 0x80(1)
    lwz 0, 0x84(1)
    stw 3, 0x30(1)
    stw 0, 0x34(1)
    bl GetRoomConfigRecord
    mr 5, 30
    addi 4, 1, 0x30
    bl fn_802D6C10
    lwz 3, 0x23c(29)
    lbz 0, 0x2b5(29)
    slwi 4, 3, 30
    lwz 5, 0x280(29)
    slwi 3, 0, 29
    lwz 0, 0x4(29)
    or 30, 4, 3
    rlwimi 30, 5, 24, 3, 7
    rlwimi 30, 0, 0, 24, 31
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_802C395C
    bl GetRoomConfigRecord
    lwz 31, 0x18(3)
    bl GetRoomConfigRecord
    lwz 3, 0x14(3)
    clrlslwi 0, 31, 24, 8
    rlwimi 0, 3, 16, 8, 15
    or 30, 30, 0
    .4byte 0x4800000C # b .L_802C3964
L_802C395C:
    lhz 0, 0x2aa(29)
    slwi 30, 0, 8
L_802C3964:
    lfs 3, 0x230(29)
    lfs 2, 0x234(29)
    lfs 1, 0xc(29)
    lfs 0, 0x10(29)
    stfs 3, 0x78(1)
    lwz 29, 0x238(29)
    stfs 2, 0x7c(1)
    lwz 5, 0x78(1)
    stfs 1, 0x70(1)
    lwz 4, 0x7c(1)
    stfs 0, 0x74(1)
    lwz 3, 0x70(1)
    lwz 0, 0x74(1)
    stw 5, 0x28(1)
    stw 4, 0x2c(1)
    stw 3, 0x20(1)
    stw 0, 0x24(1)
    bl GetRoomConfigRecord
    mr 6, 30
    mr 7, 29
    addi 4, 1, 0x20
    addi 5, 1, 0x28
    bl fn_802D6D70
    .4byte 0x48000108 # b .L_802C3AC8
L_802C39C4:
    mr 3, 29
    addi 4, 1, 0xc0
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_802C3A88
    subi 0, 31, 0xd
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x408100E0 # ble .L_802C3AC8
    clrlwi 0, 31, 16
    cmplwi 0, 0x3b
    .4byte 0x40820008 # bne .L_802C39FC
    .4byte 0x480000D0 # b .L_802C3AC8
L_802C39FC:
    lfs 1, 0xc0(1)
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820038 # beq .L_802C3A40
    lfs 0, 0x3c(29)
    .4byte 0xC022DD20 # lfs f1, lbl_80540CC0@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x3c(29)
    lfs 2, 0x3c(29)
    fcmpo cr0, 2, 1
    .4byte 0x4080000C # bge .L_802C3A30
    stfs 1, 0x3c(29)
    .4byte 0x48000014 # b .L_802C3A40
L_802C3A30:
    .4byte 0xC002DD30 # lfs f0, lbl_80540CD0@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_802C3A40
    stfs 0, 0x3c(29)
L_802C3A40:
    lfs 1, 0xc4(1)
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x4182007C # beq .L_802C3AC8
    lfs 0, 0x40(29)
    .4byte 0xC022DD20 # lfs f1, lbl_80540CC0@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x40(29)
    lfs 2, 0x40(29)
    fcmpo cr0, 2, 1
    .4byte 0x4080000C # bge .L_802C3A74
    stfs 1, 0x40(29)
    .4byte 0x48000058 # b .L_802C3AC8
L_802C3A74:
    .4byte 0xC002DD30 # lfs f0, lbl_80540CD0@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x4081004C # ble .L_802C3AC8
    stfs 0, 0x40(29)
    .4byte 0x48000044 # b .L_802C3AC8
L_802C3A88:
    lfs 0, 0x3c(29)
    .4byte 0xC022DCD4 # lfs f1, lbl_80540C74@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x4082001C # bne .L_802C3AB0
    lfs 0, 0x40(29)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_802C3AB0
    lfs 0, 0x44(29)
    fcmpu cr0, 0, 1
    .4byte 0x4182001C # beq .L_802C3AC8
L_802C3AB0:
    lwz 0, 0x280(29)
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_802C3AC8
    mr 3, 29
    li 4, 0x0
    bl fn_801F2B20
L_802C3AC8:
    lwz 0, 0xe4(1)
    lwz 31, 0xdc(1)
    lwz 30, 0xd8(1)
    lwz 29, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xe0
    blr

fn_802C3AE4:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stmw 24, 0x90(1)
    mr 25, 3
    lbz 0, 0x2b2(3)
    cmplwi 0, 0x0
    .4byte 0x41820984 # beq .L_802C4484
    lwz 0, 0x280(25)
    cmpwi 0, 0x6
    .4byte 0x4082009C # bne .L_802C3BA8
    psq_l 2, 0xc(25), 0, 0
    psq_l 0, 0x3c(25), 0, 0
    .4byte 0xC022DD34 # lfs f1, lbl_80540CD4@sda21(r0)
    ps_add 0, 2, 0
    psq_st 0, 0xc(25), 0, 0
    psq_l 2, 0x14(25), 1, 0
    psq_l 0, 0x44(25), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x14(25), 1, 0
    lfs 2, 0x3c(25)
    fcmpo cr0, 2, 1
    .4byte 0x40810010 # ble .L_802C3B4C
    fsubs 0, 2, 1
    stfs 0, 0x3c(25)
    .4byte 0x48000024 # b .L_802C3B6C
L_802C3B4C:
    .4byte 0xC002DD38 # lfs f0, lbl_80540CD8@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_802C3B64
    fadds 0, 2, 1
    stfs 0, 0x3c(25)
    .4byte 0x4800000C # b .L_802C3B6C
L_802C3B64:
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    stfs 0, 0x3c(25)
L_802C3B6C:
    lfs 2, 0x40(25)
    .4byte 0xC022DD34 # lfs f1, lbl_80540CD4@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810010 # ble .L_802C3B88
    fsubs 0, 2, 1
    stfs 0, 0x40(25)
    .4byte 0x48000024 # b .L_802C3BA8
L_802C3B88:
    .4byte 0xC002DD38 # lfs f0, lbl_80540CD8@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_802C3BA0
    fadds 0, 2, 1
    stfs 0, 0x40(25)
    .4byte 0x4800000C # b .L_802C3BA8
L_802C3BA0:
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    stfs 0, 0x40(25)
L_802C3BA8:
    lfs 3, 0x60(25)
    li 26, 0x0
    stfs 3, 0x70(1)
    lfs 2, 0x64(25)
    stfs 2, 0x74(1)
    lfs 1, 0x68(25)
    stfs 1, 0x78(1)
    lfs 0, 0x6c(25)
    stfs 0, 0x7c(1)
    lfs 5, 0x10(25)
    lfs 4, 0xc(25)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0x74(1)
    stfs 3, 0x70(1)
    stfs 1, 0x78(1)
    stfs 0, 0x7c(1)
L_802C3BF4:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820114 # beq .L_802C3D14
    lwz 5, 0x4(25)
    mr 3, 26
    addi 4, 1, 0x70
    bl fn_80239C00
    clrlwi. 0, 3, 24
    .4byte 0x418200FC # beq .L_802C3D14
    lwz 24, 0x280(25)
    cmpwi 24, 0x3
    .4byte 0x41820014 # beq .L_802C3C38
    cmpwi 24, 0x4
    .4byte 0x4182000C # beq .L_802C3C38
    cmpwi 24, 0x5
    .4byte 0x40820070 # bne .L_802C3CA4
L_802C3C38:
    bl SpatialRegistry_GetBase
    slwi 0, 26, 12
    lis 4, 0x544b
    add 7, 24, 0
    lwz 5, 0x4(25)
    addi 4, 4, 0x5241
    addi 6, 25, 0xc
    li 8, -0x1
    li 9, -0x1
    addi 7, 7, 0x210
    bl fn_801F9484
    lfs 1, 0x230(25)
    lfs 0, 0x234(25)
    stfs 1, 0x50(1)
    lwz 24, 0x238(25)
    stfs 0, 0x54(1)
    lwz 3, 0x50(1)
    lwz 0, 0x54(1)
    stw 3, 0x28(1)
    stw 0, 0x2c(1)
    bl GetRoomConfigRecord
    mr 5, 24
    addi 4, 1, 0x28
    bl fn_802D6C10
    mr 3, 25
    bl fn_801F3668
    .4byte 0x480007E4 # b .L_802C4484
L_802C3CA4:
    lwz 4, 0x198(25)
    mr 3, 26
    li 5, 0x1
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x41820058 # beq .L_802C3D14
    li 3, 0xa
    li 0, 0x3
    stw 3, 0x284(25)
    stw 0, 0x240(25)
    lfs 1, 0x230(25)
    lfs 0, 0x234(25)
    stfs 1, 0x48(1)
    lwz 24, 0x238(25)
    stfs 0, 0x4c(1)
    lwz 3, 0x48(1)
    lwz 0, 0x4c(1)
    stw 3, 0x20(1)
    stw 0, 0x24(1)
    bl GetRoomConfigRecord
    mr 5, 24
    addi 4, 1, 0x20
    bl fn_802D6C10
    li 0, 0x0
    stb 0, 0x2ae(25)
    stw 26, 0x23c(25)
    .4byte 0x48000010 # b .L_802C3D20
L_802C3D14:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FED8 # blt .L_802C3BF4
L_802C3D20:
    lwz 0, 0x240(25)
    cmpwi 0, 0x2
    .4byte 0x4082075C # bne .L_802C4484
    lwz 0, 0x4(25)
    li 4, 0x1
    cmpwi 0, 0x8
    .4byte 0x41800008 # blt .L_802C3D40
    li 4, 0x8
L_802C3D40:
    addi 3, 25, 0xc
    add 4, 0, 4
    bl fn_80226850
    clrlwi. 0, 3, 16
    .4byte 0x4182001C # beq .L_802C3D6C
    cmplwi 0, 0x39
    .4byte 0x41820014 # beq .L_802C3D6C
    li 3, 0x80
    li 0, 0x2
    stb 3, 0x2ad(25)
    stb 0, 0x2ac(25)
L_802C3D6C:
    lfs 1, 0x230(25)
    lfs 0, 0x234(25)
    stfs 1, 0x40(1)
    lwz 24, 0x238(25)
    stfs 0, 0x44(1)
    lwz 3, 0x40(1)
    lwz 0, 0x44(1)
    stw 3, 0x18(1)
    stw 0, 0x1c(1)
    bl GetRoomConfigRecord
    mr 5, 24
    addi 4, 1, 0x18
    bl fn_802D6C10
    mr 3, 25
    li 28, 0x1
    li 4, -0x1
    bl fn_801F2740
    clrlwi. 0, 3, 24
    mr 24, 3
    .4byte 0x41820340 # beq .L_802C40F8
    mr 3, 25
    mr 4, 24
    bl fn_802C2300
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802C3DE0
    li 0, 0xb
    stw 0, 0x240(25)
    .4byte 0x480006A8 # b .L_802C4484
L_802C3DE0:
    li 0, 0x1
    addi 3, 25, 0xc
    stb 0, 0x2b5(25)
    lwz 4, 0x4(25)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xd
    .4byte 0x4182000C # beq .L_802C3E08
    cmplwi 0, 0x3b
    .4byte 0x4082007C # bne .L_802C3E80
L_802C3E08:
    clrlwi 4, 24, 24
    li 3, 0x1
    and. 0, 4, 3
    li 24, 0x0
    .4byte 0x40820038 # bne .L_802C3E50
    clrlslwi 28, 28, 25, 1
    mr 24, 3
    and. 0, 4, 28
    .4byte 0x40820028 # bne .L_802C3E50
    clrlslwi 28, 28, 25, 1
    li 24, 0x2
    and. 0, 4, 28
    .4byte 0x40820018 # bne .L_802C3E50
    clrlslwi 28, 28, 25, 1
    li 24, 0x3
    and. 0, 4, 28
    .4byte 0x40820008 # bne .L_802C3E50
    li 24, 0x4
L_802C3E50:
    lwz 4, 0x198(25)
    mr 3, 24
    bl fn_8022F6E8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408202D8 # bne .L_802C413C
    stw 24, 0x29c(25)
    li 3, 0xa
    li 0, 0x0
    stw 3, 0x240(25)
    stb 0, 0x2b2(25)
    .4byte 0x480002C0 # b .L_802C413C
L_802C3E80:
    li 29, 0x0
    clrlwi 30, 24, 24
L_802C3E88:
    clrlwi 0, 28, 24
    and. 0, 30, 0
    .4byte 0x41820254 # beq .L_802C40E4
    mr 3, 29
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 4, 0x8(3)
    mr 3, 29
    psq_st 0, 0x64(1), 0, 0
    lfs 3, 0xc(25)
    lfs 2, 0x64(1)
    lfs 1, 0x10(25)
    lfs 0, 0x68(1)
    fsubs 2, 3, 2
    stfs 4, 0x6c(1)
    fsubs 0, 1, 0
    fabs 1, 2
    fabs 0, 0
    frsp 1, 1
    frsp 0, 0
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x80(1)
    stfd 0, 0x88(1)
    lwz 27, 0x84(1)
    lwz 26, 0x8c(1)
    bl fn_80230CFC
    cmpwi 27, 0x0
    mr 31, 3
    .4byte 0x41800014 # blt .L_802C3F10
    cmpwi 27, 0xf
    .4byte 0x4181000C # bgt .L_802C3F10
    cmpwi 31, 0x0
    .4byte 0x4182000C # beq .L_802C3F18
L_802C3F10:
    cmpwi 31, 0x1
    .4byte 0x40820080 # bne .L_802C3F94
L_802C3F18:
    lfs 2, 0xc(25)
    lfs 0, 0x64(1)
    fcmpo cr0, 2, 0
    .4byte 0x4081003C # ble .L_802C3F60
    subfic 3, 27, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x88(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822DD40 # lfd f1, lbl_80540CE0@sda21(r0)
    stw 0, 0x8c(1)
    li 0, 0x1
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0xc(25)
    stb 0, 0x2ae(25)
    .4byte 0x48000038 # b .L_802C3F94
L_802C3F60:
    subfic 3, 27, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x88(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822DD40 # lfd f1, lbl_80540CE0@sda21(r0)
    stw 0, 0x8c(1)
    li 0, 0x2
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    stfs 0, 0xc(25)
    stb 0, 0x2ae(25)
L_802C3F94:
    lwz 24, 0x4(25)
    bl GetRoomConfigRecord
    addis 4, 24, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_802C4020
    lfs 2, 0xc(25)
    lfs 0, 0x64(1)
    fcmpo cr0, 2, 0
    .4byte 0x40810034 # ble .L_802C3FF0
    subfic 3, 27, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x88(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822DD40 # lfd f1, lbl_80540CE0@sda21(r0)
    stw 0, 0x8c(1)
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0xc(25)
    .4byte 0x480000D0 # b .L_802C40BC
L_802C3FF0:
    subfic 3, 27, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x88(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822DD40 # lfd f1, lbl_80540CE0@sda21(r0)
    stw 0, 0x8c(1)
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    stfs 0, 0xc(25)
    .4byte 0x480000A0 # b .L_802C40BC
L_802C4020:
    cmpwi 26, 0x0
    .4byte 0x41800014 # blt .L_802C4038
    cmpwi 26, 0xf
    .4byte 0x4181000C # bgt .L_802C4038
    cmpwi 31, 0x3
    .4byte 0x4182000C # beq .L_802C4040
L_802C4038:
    cmpwi 31, 0x2
    .4byte 0x40820080 # bne .L_802C40BC
L_802C4040:
    lfs 2, 0x10(25)
    lfs 0, 0x68(1)
    fcmpo cr0, 2, 0
    .4byte 0x4081003C # ble .L_802C4088
    subfic 3, 26, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x88(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822DD40 # lfd f1, lbl_80540CE0@sda21(r0)
    stw 0, 0x8c(1)
    li 0, 0x3
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    fadds 0, 2, 0
    stfs 0, 0x10(25)
    stb 0, 0x2ae(25)
    .4byte 0x48000038 # b .L_802C40BC
L_802C4088:
    subfic 3, 26, 0xf
    lis 0, 0x4330
    srawi 3, 3, 1
    stw 0, 0x88(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822DD40 # lfd f1, lbl_80540CE0@sda21(r0)
    stw 0, 0x8c(1)
    li 0, 0x4
    lfd 0, 0x88(1)
    fsubs 0, 0, 1
    fsubs 0, 2, 0
    stfs 0, 0x10(25)
    stb 0, 0x2ae(25)
L_802C40BC:
    lwz 24, 0x4(25)
    bl GetRoomConfigRecord
    addis 4, 24, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802C40E0
    li 0, 0x0
    stb 0, 0x2ae(25)
L_802C40E0:
    stw 29, 0x23c(25)
L_802C40E4:
    addi 29, 29, 0x1
    clrlslwi 28, 28, 25, 1
    cmpwi 29, 0x4
    .4byte 0x4180FD98 # blt .L_802C3E88
    .4byte 0x48000048 # b .L_802C413C
L_802C40F8:
    lwz 0, 0x280(25)
    cmpwi 0, 0x6
    .4byte 0x4082003C # bne .L_802C413C
    lbz 3, 0x2ae(25)
    cmplwi 3, 0x0
    .4byte 0x41820030 # beq .L_802C413C
    subi 0, 3, 0x1
    lis 3, lbl_8046D560@ha
    clrlslwi 4, 0, 25, 3
    addi 3, 3, lbl_8046D560@l
    li 0, 0x0
    lfsx 1, 3, 4
    add 3, 3, 4
    lfs 0, 0x4(3)
    stfs 1, 0x3c(25)
    stfs 0, 0x40(25)
    stb 0, 0x2ae(25)
L_802C413C:
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    mr 3, 25
    addi 4, 1, 0x58
    li 5, 0x0
    stfs 0, 0x58(1)
    stfs 0, 0x5c(1)
    stfs 0, 0x60(1)
    bl fn_801F2618
    lfs 0, 0x5c(1)
    .4byte 0xC042DCD4 # lfs f2, lbl_80540C74@sda21(r0)
    fcmpu cr0, 0, 2
    .4byte 0x418200D4 # beq .L_802C423C
    lfs 0, 0x58(1)
    fcmpu cr0, 0, 2
    .4byte 0x418200C8 # beq .L_802C423C
    lfs 0, 0x10(25)
    lis 0, 0x4330
    stw 0, 0x80(1)
    fctiwz 0, 0
    .4byte 0xC822DD48 # lfd f1, lbl_80540CE8@sda21(r0)
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    clrrwi 0, 0, 4
    stw 0, 0x84(1)
    lfd 0, 0x80(1)
    fsubs 0, 0, 1
    stfs 0, 0x10(25)
    lfs 0, 0x5c(1)
    fcmpo cr0, 0, 2
    .4byte 0x40800018 # bge .L_802C41C8
    lfs 1, 0x10(25)
    .4byte 0xC002DD18 # lfs f0, lbl_80540CB8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(25)
    .4byte 0x48000014 # b .L_802C41D8
L_802C41C8:
    lfs 1, 0x10(25)
    .4byte 0xC002DCE4 # lfs f0, lbl_80540C84@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(25)
L_802C41D8:
    lfs 0, 0xc(25)
    lis 0, 0x4330
    stw 0, 0x80(1)
    fctiwz 1, 0
    .4byte 0xC842DD48 # lfd f2, lbl_80540CE8@sda21(r0)
    .4byte 0xC002DCD4 # lfs f0, lbl_80540C74@sda21(r0)
    stfd 1, 0x88(1)
    lwz 0, 0x8c(1)
    clrrwi 0, 0, 4
    stw 0, 0x84(1)
    lfd 1, 0x80(1)
    fsubs 1, 1, 2
    stfs 1, 0xc(25)
    lfs 1, 0x58(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_802C422C
    lfs 1, 0xc(25)
    .4byte 0xC002DD18 # lfs f0, lbl_80540CB8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(25)
    .4byte 0x48000014 # b .L_802C423C
L_802C422C:
    lfs 1, 0xc(25)
    .4byte 0xC002DCE4 # lfs f0, lbl_80540C84@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(25)
L_802C423C:
    lwz 0, 0x240(25)
    cmpwi 0, 0xa
    .4byte 0x418200BC # beq .L_802C4300
    lwz 3, 0x23c(25)
    lbz 0, 0x2b5(25)
    slwi 4, 3, 30
    lwz 5, 0x280(25)
    slwi 3, 0, 29
    lwz 0, 0x4(25)
    or 24, 4, 3
    rlwimi 24, 5, 24, 3, 7
    rlwimi 24, 0, 0, 24, 31
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_802C429C
    bl GetRoomConfigRecord
    lwz 26, 0x18(3)
    bl GetRoomConfigRecord
    lwz 3, 0x14(3)
    clrlslwi 0, 26, 24, 8
    rlwimi 0, 3, 16, 8, 15
    or 24, 24, 0
    .4byte 0x4800000C # b .L_802C42A4
L_802C429C:
    lhz 0, 0x2aa(25)
    slwi 24, 0, 8
L_802C42A4:
    lfs 3, 0x230(25)
    lfs 2, 0x234(25)
    lfs 1, 0xc(25)
    lfs 0, 0x10(25)
    stfs 3, 0x38(1)
    lwz 26, 0x238(25)
    stfs 2, 0x3c(1)
    lwz 5, 0x38(1)
    stfs 1, 0x30(1)
    lwz 4, 0x3c(1)
    stfs 0, 0x34(1)
    lwz 3, 0x30(1)
    lwz 0, 0x34(1)
    stw 5, 0x10(1)
    stw 4, 0x14(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 6, 24
    mr 7, 26
    addi 4, 1, 0x8
    addi 5, 1, 0x10
    bl fn_802D6D70
L_802C4300:
    lwz 4, 0x4(25)
    addi 3, 25, 0xc
    bl fn_8022461C
    lwz 0, 0x298(25)
    cmpwi 0, -0x1
    .4byte 0x41820008 # beq .L_802C431C
    li 3, 0x0
L_802C431C:
    clrlwi 0, 3, 16
    cmplwi 0, 0x3
    .4byte 0x40820028 # bne .L_802C434C
    mr 3, 25
    bl fn_801EE24C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082010C # bne .L_802C4444
    li 0, 0x4
    li 3, 0x1
    stw 0, 0x240(25)
    .4byte 0x48000104 # b .L_802C444C
L_802C434C:
    cmplwi 0, 0xe
    .4byte 0x408200EC # bne .L_802C443C
    bl fn_802DE9A0
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_802C43C8
    lwz 3, 0x4(25)
    addi 4, 25, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(25)
    addi 4, 25, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x2aa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 25
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000080 # b .L_802C4444
L_802C43C8:
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x41820074 # beq .L_802C4444
    lwz 3, 0x4(25)
    addi 4, 25, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x45e
    li 6, -0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(25)
    addi 4, 25, 0xc
    .4byte 0xC022DCDC # lfs f1, lbl_80540C7C@sda21(r0)
    li 5, 0x45f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 25
    addi 4, 4, 0x3f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800000C # b .L_802C4444
L_802C443C:
    li 3, 0x0
    .4byte 0x4800000C # b .L_802C444C
L_802C4444:
    li 3, 0x1
    stb 3, 0x2b0(25)
L_802C444C:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x41820030 # beq .L_802C4484
    lwz 24, 0x4(25)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 24
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_802C4484
    li 0, 0x0
    mr 3, 25
    stb 0, 0x2b2(25)
    bl fn_802C2154
L_802C4484:
    lmw 24, 0x90(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

