# fn_802F368C - TFL2: setParams (0x2C4)
# Queries per-room config via GetRoomConfigRecord and writes the terrain grid via
# fn_802F9974. Track A: byte-match verified, structural overview per the
# large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D31C
etb_8000D31C:
    .4byte 0x314A0000
    .4byte 0x00000000
.size etb_8000D31C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C5AC
eti_8001C5AC:
    .4byte fn_802F368C
    .4byte 0x000002C4
    .4byte etb_8000D31C
.size eti_8001C5AC, 12

.text
.balign 4
.global fn_802F368C

fn_802F368C:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stfd 27, 0x40(1)
    psq_st 27, 0x48(1), 0, 0
    stmw 26, 0x28(1)
    mr 30, 3
    .4byte 0xC002E4A0 # lfs f0, lbl_80541440@sda21(r0)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 24
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 12, 8
    stw 0, 0x240(3)
    stfs 0, 0x248(3)
    lwz 0, 0x234(3)
    cmpwi 0, 0x3
    .4byte 0x41820064 # beq .L_802F3760
    .4byte 0x40800010 # bge .L_802F3710
    cmpwi 0, 0x2
    .4byte 0x40800034 # bge .L_802F373C
    .4byte 0x48000014 # b .L_802F3720
L_802F3710:
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_802F3720
    .4byte 0x40800008 # bge .L_802F3720
    .4byte 0x48000068 # b .L_802F3784
L_802F3720:
    .4byte 0xC022E520 # lfs f1, lbl_805414C0@sda21(r0)
    .4byte 0xC002E4B4 # lfs f0, lbl_80541454@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x48000074 # b .L_802F37AC
L_802F373C:
    .4byte 0xC022E524 # lfs f1, lbl_805414C4@sda21(r0)
    .4byte 0xC002E520 # lfs f0, lbl_805414C0@sda21(r0)
    stfs 1, 0x60(30)
    .4byte 0xC022E4CC # lfs f1, lbl_8054146C@sda21(r0)
    stfs 0, 0x64(30)
    .4byte 0xC002E4B4 # lfs f0, lbl_80541454@sda21(r0)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x48000050 # b .L_802F37AC
L_802F3760:
    .4byte 0xC022E528 # lfs f1, lbl_805414C8@sda21(r0)
    .4byte 0xC002E520 # lfs f0, lbl_805414C0@sda21(r0)
    stfs 1, 0x60(30)
    .4byte 0xC022E4DC # lfs f1, lbl_8054147C@sda21(r0)
    stfs 0, 0x64(30)
    .4byte 0xC002E4B4 # lfs f0, lbl_80541454@sda21(r0)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x4800002C # b .L_802F37AC
L_802F3784:
    .4byte 0xC002E4D4 # lfs f0, lbl_80541474@sda21(r0)
    .4byte 0xC022E4D8 # lfs f1, lbl_80541478@sda21(r0)
    stfs 0, 0x60(30)
    .4byte 0xC002E4DC # lfs f0, lbl_8054147C@sda21(r0)
    stfs 1, 0x64(30)
    .4byte 0xC022E4E0 # lfs f1, lbl_80541480@sda21(r0)
    stfs 0, 0x68(30)
    .4byte 0xC002E52C # lfs f0, lbl_805414CC@sda21(r0)
    stfs 1, 0x6c(30)
    stfs 0, 0x248(30)
L_802F37AC:
    li 0, 0x14
    stw 0, 0x244(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802F37D0
    li 0, 0xc
    sth 0, 0x252(30)
    .4byte 0x4800000C # b .L_802F37D8
L_802F37D0:
    li 0, 0xd
    sth 0, 0x252(30)
L_802F37D8:
    lwz 0, 0x234(30)
    cmpwi 0, 0x2
    .4byte 0x4180012C # blt .L_802F390C
    lfs 29, 0xc(30)
    lwz 28, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 28, 0x8
    .4byte 0x4080000C # bge .L_802F3800
    addi 6, 3, 0xcc
    .4byte 0x48000008 # b .L_802F3804
L_802F3800:
    addi 6, 3, 0xdc
L_802F3804:
    lwz 5, 0x0(6)
    lis 4, lbl_8046F7A4@ha
    lwz 0, 0x4(6)
    lis 3, lbl_8046F788@ha
    stw 5, 0x8(1)
    addi 28, 4, lbl_8046F7A4@l
    lwz 4, 0x8(6)
    addi 29, 3, lbl_8046F788@l
    stw 0, 0xc(1)
    li 31, 0x0
    lwz 0, 0xc(6)
    stw 4, 0x10(1)
    lfs 27, 0xc(1)
    stw 0, 0x14(1)
    .4byte 0xC3E2E4E8 # lfs f31, lbl_80541488@sda21(r0)
    lfs 30, 0x8(1)
    .4byte 0x480000B4 # b .L_802F38F8
L_802F3848:
    fsubs 0, 29, 30
    lfs 28, 0x10(30)
    li 26, 0x0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 27, 0x1c(1)
    .4byte 0x4800007C # b .L_802F38DC
L_802F3864:
    fsubs 0, 28, 27
    cmpwi 27, 0x0
    mr 0, 27
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 6, 0x1c(1)
    .4byte 0x4080000C # bge .L_802F3888
    li 0, 0x0
    .4byte 0x48000010 # b .L_802F3894
L_802F3888:
    cmpwi 27, 0x200
    .4byte 0x41800008 # blt .L_802F3894
    li 0, 0x1ff
L_802F3894:
    cmpwi 6, 0x0
    .4byte 0x4080000C # bge .L_802F38A4
    li 6, 0x0
    .4byte 0x48000010 # b .L_802F38B0
L_802F38A4:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_802F38B0
    li 6, 0x1ff
L_802F38B0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 0, 0, 23, 23
    rlwimi 5, 6, 1, 22, 22
    lwz 4, 0x4(30)
    lwz 3, 0x20(3)
    rlwimi 5, 6, 0, 24, 27
    rlwimi 5, 0, 28, 28, 31
    li 6, 0x6
    bl fn_802F9974
    fadds 28, 28, 31
    addi 26, 26, 0x1
L_802F38DC:
    lwz 0, 0x234(30)
    slwi 0, 0, 2
    lwzx 0, 28, 0
    cmpw 26, 0
    .4byte 0x4180FF78 # blt .L_802F3864
    fadds 29, 29, 31
    addi 31, 31, 0x1
L_802F38F8:
    lwz 0, 0x234(30)
    slwi 0, 0, 2
    lwzx 0, 29, 0
    cmpw 31, 0
    .4byte 0x4180FF40 # blt .L_802F3848
L_802F390C:
    li 0, 0x0
    stw 0, 0x230(30)
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    psq_l 27, 0x48(1), 0, 0
    lfd 27, 0x40(1)
    lmw 26, 0x28(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

