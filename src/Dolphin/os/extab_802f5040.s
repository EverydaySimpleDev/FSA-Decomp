# fn_802F5040 - shared rendering infrastructure: transform/matrix setup helper (0x3B4)
# NOT an actor (no vtable install). Called by the confirmed spatial-triad
# members fn_802F6CF4/fn_802F745C plus fn_801618D0. Uses PSMTXIdentity and
# fn_8005EBC4/8005F48C/8005F50C/8005F538 (GX-library-style setters) plus
# fn_8013B1E8/8013B3CC/8013B3F0 (unfamiliar animation/skeleton helpers) -
# builds a world/render transform matrix feeding the shared spatial-triad
# rendering pipeline. Track A: byte-match verified, structural overview per
# the large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D3C4
etb_8000D3C4:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000D3C4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C6A8
eti_8001C6A8:
    .4byte fn_802F5040
    .4byte 0x000003B4
    .4byte etb_8000D3C4
.size eti_8001C6A8, 12

.text
.balign 4
.global fn_802F5040

fn_802F5040:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    mr. 30, 4
    mr 29, 3
    mr 31, 5
    .4byte 0x41820090 # beq .L_802F50FC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x20(3)
    addis 3, 3, 0x1
    lbz 3, -0x1b9f(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802F508C
    lbz 3, 0x20(30)
L_802F508C:
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802F50A8
    lfs 1, 0x8(29)
    .4byte 0xC002E558 # lfs f0, lbl_805414F8@sda21(r0)
    fcmpo cr0, 1, 0
    mfcr 0
    extrwi 3, 0, 1, 1
L_802F50A8:
    clrlwi. 0, 3, 24
    lbz 3, 0x1c(30)
    lbz 4, 0x1d(30)
    extsb 3, 3
    extsb 4, 4
    .4byte 0x41820014 # beq .L_802F50D0
    cmpwi 3, 0x1
    .4byte 0x4080000C # bge .L_802F50D0
    addi 3, 3, 0x1
    subi 4, 4, 0x1
L_802F50D0:
    slwi 3, 3, 10
    slwi 0, 4, 7
    add 3, 3, 0
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x40(1)
    .4byte 0xC822E568 # lfd f1, lbl_80541508@sda21(r0)
    stw 3, 0x44(1)
    lfd 0, 0x40(1)
    fsubs 31, 0, 1
    .4byte 0x48000008 # b .L_802F5100
L_802F50FC:
    .4byte 0xC3E2E558 # lfs f31, lbl_805414F8@sda21(r0)
L_802F5100:
    cmplwi 30, 0x0
    .4byte 0x4182001C # beq .L_802F5120
    lwz 0, 0x18(30)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_802F5120
    lbz 0, 0x25(30)
    cmplwi 0, 0x0
    .4byte 0x408201BC # bne .L_802F52D8
L_802F5120:
    cmplwi 30, 0x0
    .4byte 0x41820010 # beq .L_802F5134
    lwz 0, 0x18(30)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_802F5158
L_802F5134:
    .4byte 0xC022E558 # lfs f1, lbl_805414F8@sda21(r0)
    lfs 0, 0x8(29)
    fcmpu cr0, 1, 0
    .4byte 0x41820198 # beq .L_802F52D8
    cmplwi 30, 0x0
    .4byte 0x41820010 # beq .L_802F5158
    lbz 0, 0x1f(30)
    cmplwi 0, 0x0
    .4byte 0x41820184 # beq .L_802F52D8
L_802F5158:
    cmplwi 30, 0x0
    .4byte 0x41820044 # beq .L_802F51A0
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x41820038 # beq .L_802F51A0
    psq_l 5, 0x0(3), 0, 0
    psq_l 4, 0x8(3), 0, 0
    psq_l 3, 0x10(3), 0, 0
    psq_l 2, 0x18(3), 0, 0
    psq_l 1, 0x20(3), 0, 0
    psq_l 0, 0x28(3), 0, 0
    psq_st 5, 0x10(1), 0, 0
    psq_st 4, 0x18(1), 0, 0
    psq_st 3, 0x20(1), 0, 0
    psq_st 2, 0x28(1), 0, 0
    psq_st 1, 0x30(1), 0, 0
    psq_st 0, 0x38(1), 0, 0
    .4byte 0x4800000C # b .L_802F51A8
L_802F51A0:
    addi 3, 1, 0x10
    bl PSMTXIdentity
L_802F51A8:
    .4byte 0xC002E558 # lfs f0, lbl_805414F8@sda21(r0)
    lfs 1, 0x8(29)
    fcmpu cr0, 0, 1
    .4byte 0x418200CC # beq .L_802F5280
    cmplwi 30, 0x0
    .4byte 0x41820010 # beq .L_802F51CC
    lbz 0, 0x1f(30)
    cmplwi 0, 0x0
    .4byte 0x418200B8 # beq .L_802F5280
L_802F51CC:
    .4byte 0xC002E560 # lfs f0, lbl_80541500@sda21(r0)
    .4byte 0xC082E55C # lfs f4, lbl_805414FC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802F51E4
    .4byte 0x48000008 # b .L_802F51E8
L_802F51E4:
    fmr 0, 1
L_802F51E8:
    fsubs 3, 4, 0
    lfs 2, 0x10(1)
    lfs 1, 0x20(1)
    lfs 0, 0x30(1)
    fdivs 12, 4, 3
    lfs 8, 0x14(1)
    lfs 7, 0x24(1)
    lfs 6, 0x34(1)
    lfs 5, 0x18(1)
    lfs 4, 0x28(1)
    lfs 3, 0x38(1)
    fmuls 11, 2, 12
    lfs 2, 0x1c(1)
    fmuls 10, 1, 12
    lfs 1, 0x2c(1)
    fmuls 9, 0, 12
    lfs 0, 0x3c(1)
    fmuls 8, 8, 12
    stfs 11, 0x10(1)
    fmuls 7, 7, 12
    fmuls 6, 6, 12
    stfs 10, 0x20(1)
    fmuls 5, 5, 12
    fmuls 4, 4, 12
    stfs 9, 0x30(1)
    fmuls 3, 3, 12
    fmuls 2, 2, 12
    stfs 8, 0x14(1)
    fmuls 1, 1, 12
    fmuls 0, 0, 12
    stfs 7, 0x24(1)
    stfs 6, 0x34(1)
    stfs 5, 0x18(1)
    stfs 4, 0x28(1)
    stfs 3, 0x38(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x3c(1)
L_802F5280:
    lfs 1, 0x4(29)
    addi 4, 1, 0x10
    lfs 0, 0x8(29)
    fadds 2, 1, 31
    lfs 3, 0x2c(1)
    fadds 0, 0, 31
    lfs 1, 0x3c(1)
    lfs 5, 0x1c(1)
    lfs 4, 0x0(29)
    fadds 2, 3, 2
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fadds 3, 5, 4
    fadds 0, 1, 0
    stfs 2, 0x2c(1)
    stfs 3, 0x1c(1)
    stfs 0, 0x3c(1)
    bl fn_8013B3CC
    .4byte 0xC002E558 # lfs f0, lbl_805414F8@sda21(r0)
    stfs 0, 0x8(31)
    stfs 0, 0x4(31)
    stfs 0, 0x0(31)
    .4byte 0x4800002C # b .L_802F5300
L_802F52D8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B3F0
    lfs 1, 0x4(29)
    lfs 0, 0x0(29)
    lfs 2, 0x8(29)
    fadds 1, 1, 31
    stfs 0, 0x0(31)
    fadds 0, 2, 31
    stfs 1, 0x4(31)
    stfs 0, 0x8(31)
L_802F5300:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    cmplwi 30, 0x0
    .4byte 0x41820028 # beq .L_802F5334
    lwz 0, 0x34(30)
    cmpwi 0, 0x1
    .4byte 0x4082001C # bne .L_802F5334
    li 3, 0x1
    li 4, 0x4
    li 5, 0x1
    li 6, 0x5
    bl fn_8005F48C
    .4byte 0x48000044 # b .L_802F5374
L_802F5334:
    cmplwi 30, 0x0
    .4byte 0x41820028 # beq .L_802F5360
    lwz 0, 0x34(30)
    cmpwi 0, 0x2
    .4byte 0x4082001C # bne .L_802F5360
    li 3, 0x1
    li 4, 0x6
    li 5, 0x7
    li 6, 0x5
    bl fn_8005F48C
    .4byte 0x48000018 # b .L_802F5374
L_802F5360:
    li 3, 0x1
    li 4, 0x4
    li 5, 0x5
    li 6, 0x5
    bl fn_8005F48C
L_802F5374:
    cmplwi 30, 0x0
    .4byte 0x4182003C # beq .L_802F53B4
    lwz 0, 0x10(30)
    addi 4, 1, 0xc
    li 3, 0x1
    stw 0, 0xc(1)
    bl fn_8005EBC4
    lwz 0, 0x14(30)
    addi 4, 1, 0x8
    li 3, 0x2
    stw 0, 0x8(1)
    bl fn_8005EBC4
    lbz 3, 0x26(30)
    li 4, 0x3
    lbz 5, 0x2c(30)
    bl fn_8005F538
L_802F53B4:
    cmplwi 30, 0x0
    .4byte 0x41820018 # beq .L_802F53D0
    lbz 0, 0x2d(30)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_802F53D0
    li 3, 0x1
    bl fn_8005F50C
L_802F53D0:
    psq_l 31, 0x68(1), 0, 0
    lwz 0, 0x74(1)
    lfd 31, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

