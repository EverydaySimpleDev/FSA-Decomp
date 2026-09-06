# Fresh project-wide gap hunt continuation: 7 functions, 5,224 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_8000D3EC
etb_8000D3EC:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000D3EC, 8

.global etb_8000D3F4
etb_8000D3F4:
    .4byte 0x888A0000
    .4byte 0x00000000
.size etb_8000D3F4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C6E4
eti_8001C6E4:
    .4byte fn_802F6800
    .4byte 0x000003BC
    .4byte etb_8000D3EC
.size eti_8001C6E4, 12

.global eti_8001C6F0
eti_8001C6F0:
    .4byte fn_802F6CF4
    .4byte 0x00000768
    .4byte etb_8000D3F4
.size eti_8001C6F0, 12

.text
.balign 4
.global fn_802F5FF4
.global fn_802F601C
.global fn_802F6298
.global fn_802F654C
.global fn_802F6800
.global fn_802F6BBC
.global fn_802F6CF4

fn_802F5FF4:
    .4byte 0xC002E560 # lfs f0, lbl_80541500@sda21(r0)
    .4byte 0xC042E55C # lfs f2, lbl_805414FC@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802F600C
    .4byte 0x48000008 # b .L_802F6010
L_802F600C:
    fmr 0, 1
L_802F6010:
    fsubs 0, 2, 0
    fdivs 1, 2, 0
    blr

fn_802F601C:
    li 0, 0x4
    mr 7, 3
    li 8, -0x1
    li 9, 0x0
    li 10, -0x1
    li 11, 0x0
    mtctr 0
L_802F6038:
    addis 12, 7, 0x1
    lwz 0, -0x4064(12)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802F6050
    mr 10, 11
    .4byte 0x480000E0 # b .L_802F612C
L_802F6050:
    cmpwi 8, 0x0
    .4byte 0x41800010 # blt .L_802F6064
    lwz 0, -0x4054(12)
    cmpw 8, 0
    .4byte 0x4081000C # ble .L_802F606C
L_802F6064:
    lwz 8, -0x4054(12)
    mr 9, 11
L_802F606C:
    addi 7, 7, 0x28
    addi 11, 11, 0x1
    addis 12, 7, 0x1
    lwz 0, -0x4064(12)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802F608C
    mr 10, 11
    .4byte 0x480000A4 # b .L_802F612C
L_802F608C:
    cmpwi 8, 0x0
    .4byte 0x41800010 # blt .L_802F60A0
    lwz 0, -0x4054(12)
    cmpw 8, 0
    .4byte 0x4081000C # ble .L_802F60A8
L_802F60A0:
    lwz 8, -0x4054(12)
    mr 9, 11
L_802F60A8:
    addi 7, 7, 0x28
    addi 11, 11, 0x1
    addis 12, 7, 0x1
    lwz 0, -0x4064(12)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802F60C8
    mr 10, 11
    .4byte 0x48000068 # b .L_802F612C
L_802F60C8:
    cmpwi 8, 0x0
    .4byte 0x41800010 # blt .L_802F60DC
    lwz 0, -0x4054(12)
    cmpw 8, 0
    .4byte 0x4081000C # ble .L_802F60E4
L_802F60DC:
    lwz 8, -0x4054(12)
    mr 9, 11
L_802F60E4:
    addi 7, 7, 0x28
    addi 11, 11, 0x1
    addis 12, 7, 0x1
    lwz 0, -0x4064(12)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802F6104
    mr 10, 11
    .4byte 0x4800002C # b .L_802F612C
L_802F6104:
    cmpwi 8, 0x0
    .4byte 0x41800010 # blt .L_802F6118
    lwz 0, -0x4054(12)
    cmpw 8, 0
    .4byte 0x4081000C # ble .L_802F6120
L_802F6118:
    lwz 8, -0x4054(12)
    mr 9, 11
L_802F6120:
    addi 7, 7, 0x28
    addi 11, 11, 0x1
    .4byte 0x4200FF10 # bdnz .L_802F6038
L_802F612C:
    cmpwi 10, 0x0
    .4byte 0x40800008 # bge .L_802F6138
    mr 10, 9
L_802F6138:
    mulli 7, 10, 0x28
    lfs 4, 0x0(4)
    lfs 3, 0x4(4)
    cmpwi 5, 0x4
    lfs 0, 0x8(4)
    addis 4, 7, 0x1
    subi 4, 4, 0x4064
    add 4, 3, 4
    stw 5, 0x0(4)
    stfs 4, 0x4(4)
    stfs 3, 0x8(4)
    stfs 0, 0xc(4)
    stfs 1, 0x14(4)
    stfs 2, 0x18(4)
    .4byte 0x418200F0 # beq .L_802F6260
    .4byte 0x4080001C # bge .L_802F6190
    cmpwi 5, 0x2
    .4byte 0x41820024 # beq .L_802F61A0
    .4byte 0x40800038 # bge .L_802F61B8
    cmpwi 5, 0x1
    .4byte 0x40800024 # bge .L_802F61AC
    blr
L_802F6190:
    cmpwi 5, 0x6
    .4byte 0x418200F8 # beq .L_802F628C
    bgelr
    .4byte 0x480000E4 # b .L_802F6280
L_802F61A0:
    li 0, 0x3c
    stw 0, 0x10(4)
    blr
L_802F61AC:
    li 0, 0x5
    stw 0, 0x10(4)
    blr
L_802F61B8:
    li 0, 0x12
    lfs 0, 0x0(6)
    stw 0, 0x10(4)
    lis 3, lbl_80539D44@ha
    lfs 1, 0x4(6)
    stfs 0, 0x1c(4)
    lfs 0, 0x8(6)
    stfs 1, 0x20(4)
    .4byte 0xC022E57C # lfs f1, lbl_8054151C@sda21(r0)
    stfs 0, 0x24(4)
    psq_l 3, 0x1c(4), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 3, 3, 3
    lfs 2, 0x24(4)
    fmuls 0, 1, 0
    ps_madd 4, 2, 2, 3
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    beqlr
    .4byte 0xC002E558 # lfs f0, lbl_805414F8@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802F6220
    fmr 5, 4
    .4byte 0x48000028 # b .L_802F6244
L_802F6220:
    frsqrte 3, 4
    .4byte 0xC042E580 # lfs f2, lbl_80541520@sda21(r0)
    .4byte 0xC002E584 # lfs f0, lbl_80541524@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 5, 0
L_802F6244:
    psq_l 1, 0x1c(4), 0, 0
    psq_l 0, 0x24(4), 1, 0
    ps_muls0 1, 1, 5
    ps_muls0 0, 0, 5
    psq_st 1, 0x1c(4), 0, 0
    psq_st 0, 0x24(4), 1, 0
    blr
L_802F6260:
    li 3, 0x5
    li 0, 0x1
    stw 3, 0x0(4)
    lfs 0, 0x14(4)
    fneg 0, 0
    stfs 0, 0x14(4)
    stw 0, 0x10(4)
    blr
L_802F6280:
    li 0, 0x1
    stw 0, 0x10(4)
    blr
L_802F628C:
    li 0, 0x12c
    stw 0, 0x10(4)
    blr

fn_802F6298:
    addis 10, 3, 0x1
    li 11, 0x0
    lwz 0, -0x1bdc(10)
    cmpwi 0, 0x20
    .4byte 0x4080029C # bge .L_802F6544
    mulli 10, 0, 0x88
    lfs 2, 0x0(4)
    lfs 1, 0x4(4)
    cmplwi 9, 0x0
    lfs 0, 0x8(4)
    addis 4, 10, 0x1
    subi 4, 4, 0x2cdc
    add 4, 3, 4
    stfs 2, 0x0(4)
    stfs 1, 0x4(4)
    stfs 0, 0x8(4)
    stw 5, 0xc(4)
    stw 6, 0x10(4)
    stw 7, 0x14(4)
    stw 8, 0x18(4)
    .4byte 0x4182014C # beq .L_802F6434
    lwz 6, 0x0(9)
    li 0, 0x0
    lwz 5, 0x4(9)
    stw 6, 0x1c(4)
    stw 5, 0x20(4)
    lwz 6, 0x8(9)
    lwz 5, 0xc(9)
    stw 6, 0x24(4)
    stw 5, 0x28(4)
    lbz 5, 0x10(9)
    stb 5, 0x2c(4)
    lbz 5, 0x11(9)
    stb 5, 0x2d(4)
    lbz 5, 0x12(9)
    stb 5, 0x2e(4)
    lbz 5, 0x13(9)
    stb 5, 0x2f(4)
    lbz 5, 0x14(9)
    stb 5, 0x30(4)
    lbz 5, 0x15(9)
    stb 5, 0x31(4)
    lbz 5, 0x16(9)
    stb 5, 0x32(4)
    lbz 5, 0x17(9)
    stb 5, 0x33(4)
    lwz 5, 0x18(9)
    stw 5, 0x34(4)
    lbz 5, 0x1c(9)
    stb 5, 0x38(4)
    lbz 5, 0x1d(9)
    stb 5, 0x39(4)
    lbz 5, 0x1e(9)
    stb 5, 0x3a(4)
    lbz 5, 0x1f(9)
    stb 5, 0x3b(4)
    lbz 5, 0x20(9)
    stb 5, 0x3c(4)
    lbz 5, 0x21(9)
    stb 5, 0x3d(4)
    lbz 5, 0x22(9)
    stb 5, 0x3e(4)
    lbz 5, 0x23(9)
    stb 5, 0x3f(4)
    lbz 5, 0x24(9)
    stb 5, 0x40(4)
    lbz 5, 0x25(9)
    stb 5, 0x41(4)
    lbz 5, 0x26(9)
    stb 5, 0x42(4)
    lwz 5, 0x28(9)
    stw 5, 0x44(4)
    lbz 5, 0x2c(9)
    stb 5, 0x48(4)
    lbz 5, 0x2d(9)
    stb 5, 0x49(4)
    lbz 5, 0x2e(9)
    stb 5, 0x4a(4)
    lwz 5, 0x30(9)
    stw 5, 0x4c(4)
    lwz 5, 0x34(9)
    stw 5, 0x50(4)
    lwz 5, 0x38(9)
    stw 5, 0x54(4)
    stb 0, 0x3e(4)
    lwz 6, 0x18(9)
    cmplwi 6, 0x0
    .4byte 0x4182013C # beq .L_802F6530
    psq_l 5, 0x0(6), 0, 0
    addi 5, 4, 0x58
    psq_l 4, 0x8(6), 0, 0
    psq_l 3, 0x10(6), 0, 0
    psq_l 2, 0x18(6), 0, 0
    psq_l 1, 0x20(6), 0, 0
    psq_l 0, 0x28(6), 0, 0
    psq_st 5, 0x0(5), 0, 0
    psq_st 4, 0x8(5), 0, 0
    psq_st 3, 0x10(5), 0, 0
    psq_st 2, 0x18(5), 0, 0
    psq_st 1, 0x20(5), 0, 0
    psq_st 0, 0x28(5), 0, 0
    stw 5, 0x34(4)
    .4byte 0x48000100 # b .L_802F6530
L_802F6434:
    li 9, 0x0
    .4byte 0x48000084 # b .L_802F64BC
L_802F643C:
    clrlwi 5, 9, 24
    addi 6, 9, 0x1
    addi 0, 5, 0x1c
    addi 8, 9, 0x2
    clrlwi 5, 6, 24
    stbx 9, 4, 0
    addi 0, 5, 0x1c
    addi 7, 9, 0x3
    stbx 6, 4, 0
    clrlwi 5, 8, 24
    addi 0, 5, 0x1c
    addi 6, 9, 0x4
    stbx 8, 4, 0
    clrlwi 5, 7, 24
    addi 0, 5, 0x1c
    addi 8, 9, 0x5
    stbx 7, 4, 0
    clrlwi 5, 6, 24
    addi 0, 5, 0x1c
    addi 7, 9, 0x6
    stbx 6, 4, 0
    clrlwi 5, 8, 24
    addi 0, 5, 0x1c
    addi 6, 9, 0x7
    clrlwi 5, 7, 24
    stbx 8, 4, 0
    addi 0, 5, 0x1c
    addi 9, 9, 0x8
    clrlwi 5, 6, 24
    stbx 7, 4, 0
    addi 0, 5, 0x1c
    stbx 6, 4, 0
L_802F64BC:
    clrlwi 0, 9, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF78 # blt .L_802F643C
    li 8, -0x1
    li 7, 0x0
    stw 8, 0x2c(4)
    li 6, 0x1
    li 5, 0x3
    li 0, 0x2
    stw 7, 0x30(4)
    stw 7, 0x34(4)
    stb 7, 0x38(4)
    stb 7, 0x39(4)
    stb 7, 0x3a(4)
    stb 6, 0x3b(4)
    stb 6, 0x3c(4)
    stb 7, 0x3d(4)
    stb 7, 0x3e(4)
    stb 7, 0x3f(4)
    stb 7, 0x40(4)
    stb 7, 0x41(4)
    stb 6, 0x42(4)
    stw 5, 0x44(4)
    stb 6, 0x48(4)
    stb 7, 0x49(4)
    stb 7, 0x4a(4)
    stw 8, 0x4c(4)
    stw 7, 0x50(4)
    stw 0, 0x54(4)
L_802F6530:
    addis 4, 3, 0x1
    li 11, 0x1
    lwz 3, -0x1bdc(4)
    addi 0, 3, 0x1
    stw 0, -0x1bdc(4)
L_802F6544:
    clrlwi 3, 11, 24
    blr

fn_802F654C:
    addis 10, 3, 0x1
    li 11, 0x0
    lwz 0, -0x2ce0(10)
    cmpwi 0, 0x20
    .4byte 0x4080029C # bge .L_802F67F8
    mulli 10, 0, 0x88
    lfs 2, 0x0(4)
    lfs 1, 0x4(4)
    cmplwi 9, 0x0
    lfs 0, 0x8(4)
    addis 4, 10, 0x1
    subi 4, 4, 0x3de0
    add 4, 3, 4
    stfs 2, 0x0(4)
    stfs 1, 0x4(4)
    stfs 0, 0x8(4)
    stw 5, 0xc(4)
    stw 6, 0x10(4)
    stw 7, 0x14(4)
    stw 8, 0x18(4)
    .4byte 0x4182014C # beq .L_802F66E8
    lwz 6, 0x0(9)
    li 0, 0x0
    lwz 5, 0x4(9)
    stw 6, 0x1c(4)
    stw 5, 0x20(4)
    lwz 6, 0x8(9)
    lwz 5, 0xc(9)
    stw 6, 0x24(4)
    stw 5, 0x28(4)
    lbz 5, 0x10(9)
    stb 5, 0x2c(4)
    lbz 5, 0x11(9)
    stb 5, 0x2d(4)
    lbz 5, 0x12(9)
    stb 5, 0x2e(4)
    lbz 5, 0x13(9)
    stb 5, 0x2f(4)
    lbz 5, 0x14(9)
    stb 5, 0x30(4)
    lbz 5, 0x15(9)
    stb 5, 0x31(4)
    lbz 5, 0x16(9)
    stb 5, 0x32(4)
    lbz 5, 0x17(9)
    stb 5, 0x33(4)
    lwz 5, 0x18(9)
    stw 5, 0x34(4)
    lbz 5, 0x1c(9)
    stb 5, 0x38(4)
    lbz 5, 0x1d(9)
    stb 5, 0x39(4)
    lbz 5, 0x1e(9)
    stb 5, 0x3a(4)
    lbz 5, 0x1f(9)
    stb 5, 0x3b(4)
    lbz 5, 0x20(9)
    stb 5, 0x3c(4)
    lbz 5, 0x21(9)
    stb 5, 0x3d(4)
    lbz 5, 0x22(9)
    stb 5, 0x3e(4)
    lbz 5, 0x23(9)
    stb 5, 0x3f(4)
    lbz 5, 0x24(9)
    stb 5, 0x40(4)
    lbz 5, 0x25(9)
    stb 5, 0x41(4)
    lbz 5, 0x26(9)
    stb 5, 0x42(4)
    lwz 5, 0x28(9)
    stw 5, 0x44(4)
    lbz 5, 0x2c(9)
    stb 5, 0x48(4)
    lbz 5, 0x2d(9)
    stb 5, 0x49(4)
    lbz 5, 0x2e(9)
    stb 5, 0x4a(4)
    lwz 5, 0x30(9)
    stw 5, 0x4c(4)
    lwz 5, 0x34(9)
    stw 5, 0x50(4)
    lwz 5, 0x38(9)
    stw 5, 0x54(4)
    stb 0, 0x3d(4)
    lwz 6, 0x18(9)
    cmplwi 6, 0x0
    .4byte 0x4182013C # beq .L_802F67E4
    psq_l 5, 0x0(6), 0, 0
    addi 5, 4, 0x58
    psq_l 4, 0x8(6), 0, 0
    psq_l 3, 0x10(6), 0, 0
    psq_l 2, 0x18(6), 0, 0
    psq_l 1, 0x20(6), 0, 0
    psq_l 0, 0x28(6), 0, 0
    psq_st 5, 0x0(5), 0, 0
    psq_st 4, 0x8(5), 0, 0
    psq_st 3, 0x10(5), 0, 0
    psq_st 2, 0x18(5), 0, 0
    psq_st 1, 0x20(5), 0, 0
    psq_st 0, 0x28(5), 0, 0
    stw 5, 0x34(4)
    .4byte 0x48000100 # b .L_802F67E4
L_802F66E8:
    li 9, 0x0
    .4byte 0x48000084 # b .L_802F6770
L_802F66F0:
    clrlwi 5, 9, 24
    addi 6, 9, 0x1
    addi 0, 5, 0x1c
    addi 8, 9, 0x2
    clrlwi 5, 6, 24
    stbx 9, 4, 0
    addi 0, 5, 0x1c
    addi 7, 9, 0x3
    stbx 6, 4, 0
    clrlwi 5, 8, 24
    addi 0, 5, 0x1c
    addi 6, 9, 0x4
    stbx 8, 4, 0
    clrlwi 5, 7, 24
    addi 0, 5, 0x1c
    addi 8, 9, 0x5
    stbx 7, 4, 0
    clrlwi 5, 6, 24
    addi 0, 5, 0x1c
    addi 7, 9, 0x6
    stbx 6, 4, 0
    clrlwi 5, 8, 24
    addi 0, 5, 0x1c
    addi 6, 9, 0x7
    clrlwi 5, 7, 24
    stbx 8, 4, 0
    addi 0, 5, 0x1c
    addi 9, 9, 0x8
    clrlwi 5, 6, 24
    stbx 7, 4, 0
    addi 0, 5, 0x1c
    stbx 6, 4, 0
L_802F6770:
    clrlwi 0, 9, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF78 # blt .L_802F66F0
    li 8, -0x1
    li 7, 0x0
    stw 8, 0x2c(4)
    li 6, 0x1
    li 5, 0x3
    li 0, 0x2
    stw 7, 0x30(4)
    stw 7, 0x34(4)
    stb 7, 0x38(4)
    stb 7, 0x39(4)
    stb 7, 0x3a(4)
    stb 6, 0x3b(4)
    stb 6, 0x3c(4)
    stb 7, 0x3d(4)
    stb 7, 0x3e(4)
    stb 7, 0x3f(4)
    stb 7, 0x40(4)
    stb 7, 0x41(4)
    stb 6, 0x42(4)
    stw 5, 0x44(4)
    stb 6, 0x48(4)
    stb 7, 0x49(4)
    stb 7, 0x4a(4)
    stw 8, 0x4c(4)
    stw 7, 0x50(4)
    stw 0, 0x54(4)
L_802F67E4:
    addis 4, 3, 0x1
    li 11, 0x1
    lwz 3, -0x2ce0(4)
    addi 0, 3, 0x1
    stw 0, -0x2ce0(4)
L_802F67F8:
    clrlwi 3, 11, 24
    blr

fn_802F6800:
    stwu 1, -0x20(1)
    mflr 0
    addis 10, 3, 0x1
    lis 12, lbl_8046F940@ha
    stw 0, 0x24(1)
    lwz 0, 0x30(9)
    stmw 26, 0x8(1)
    li 29, 0x0
    slwi 0, 0, 2
    lbz 11, -0x4068(10)
    addi 10, 12, lbl_8046F940@l
    addi 12, 10, 0x1840
    cmplwi 11, 0x0
    lwzx 30, 12, 0
    .4byte 0x4182036C # beq .L_802F6BA4
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    add 12, 7, 8
    add 28, 5, 12
    lwz 12, 0x5c(11)
    divwu 27, 28, 30
    divw 11, 12, 30
    mullw 27, 27, 30
    mullw 11, 11, 30
    subf 27, 27, 28
    subf 11, 11, 12
    cmplw 27, 11
    .4byte 0x4082033C # bne .L_802F6BA4
    li 11, 0x100
    mr 31, 3
    mtctr 11
L_802F6878:
    lwz 3, 0x2398(31)
    cmpwi 3, 0x0
    .4byte 0x4082031C # bne .L_802F6B9C
    addi 11, 10, 0x17b0
    lwz 3, 0x30(9)
    lwzx 12, 11, 0
    addi 26, 10, 0x1720
    slwi 11, 3, 2
    addi 3, 10, 0x17f8
    lfsx 0, 3, 11
    addi 10, 10, 0x1768
    stw 12, 0x2398(31)
    add 26, 26, 0
    lbz 27, 0x13(9)
    lis 3, 0x8081
    stfs 0, 0x23a0(31)
    add 10, 10, 0
    lbz 12, 0x3(26)
    subi 0, 3, 0x7f7f
    lwz 30, 0x2398(31)
    li 11, 0xff
    lfs 0, 0x0(4)
    mullw 27, 27, 12
    stw 30, 0x239c(31)
    lbz 29, 0x11(9)
    lbz 3, 0x1(26)
    stfs 0, 0x23a4(31)
    lfs 0, 0x4(4)
    mullw 29, 29, 3
    lbz 28, 0x12(9)
    lbz 12, 0x2(26)
    stfs 0, 0x23a8(31)
    lfs 0, 0x8(4)
    lbz 4, 0x17(9)
    lbz 3, 0x3(10)
    mullw 28, 28, 12
    stfs 0, 0x23ac(31)
    add 3, 4, 3
    lbz 30, 0x10(9)
    stw 5, 0x23b0(31)
    lbz 12, 0x0(26)
    mulhw 4, 0, 27
    stw 6, 0x23b4(31)
    cmpwi 3, 0xff
    stw 7, 0x23b8(31)
    stw 8, 0x23bc(31)
    mulhw 5, 0, 28
    add 4, 4, 27
    srawi 6, 4, 7
    mulhw 4, 0, 29
    srwi 7, 6, 31
    add 5, 5, 28
    add 7, 6, 7
    srawi 5, 5, 7
    mullw 12, 30, 12
    add 4, 4, 29
    srwi 6, 5, 31
    srawi 4, 4, 7
    add 6, 5, 6
    mulhw 0, 0, 12
    srwi 5, 4, 31
    add 5, 4, 5
    add 0, 0, 12
    srawi 0, 0, 7
    srwi 4, 0, 31
    add 0, 0, 4
    stb 0, 0x242c(31)
    stb 5, 0x242d(31)
    stb 6, 0x242e(31)
    stb 7, 0x242f(31)
    .4byte 0x40800008 # bge .L_802F6998
    mr 11, 3
L_802F6998:
    lbz 4, 0x16(9)
    clrlwi 11, 11, 24
    lbz 3, 0x2(10)
    li 0, 0xff
    add 3, 4, 3
    cmpwi 3, 0xff
    .4byte 0x40800008 # bge .L_802F69B8
    mr 0, 3
L_802F69B8:
    lbz 4, 0x15(9)
    clrlwi 8, 0, 24
    lbz 3, 0x1(10)
    li 0, 0xff
    add 3, 4, 3
    cmpwi 3, 0xff
    .4byte 0x40800008 # bge .L_802F69D8
    mr 0, 3
L_802F69D8:
    lbz 4, 0x14(9)
    clrlwi 7, 0, 24
    lbz 3, 0x0(10)
    li 0, 0xff
    add 3, 4, 3
    cmpwi 3, 0xff
    .4byte 0x40800008 # bge .L_802F69F8
    mr 0, 3
L_802F69F8:
    stb 0, 0x2430(31)
    li 6, 0x0
    lwz 3, 0x18(9)
    li 5, 0x1
    stb 7, 0x2431(31)
    li 4, -0x1
    lbz 7, 0x1d(9)
    cmplwi 3, 0x0
    stb 8, 0x2432(31)
    lwz 8, 0x0(9)
    subi 0, 7, 0x1
    stb 11, 0x2433(31)
    lwz 10, 0x4(9)
    stw 8, 0x23c0(31)
    lwz 8, 0x8(9)
    stw 10, 0x23c4(31)
    lwz 10, 0xc(9)
    stw 8, 0x23c8(31)
    lbz 8, 0x10(9)
    stw 10, 0x23cc(31)
    lbz 10, 0x11(9)
    stb 8, 0x23d0(31)
    lbz 8, 0x12(9)
    stb 10, 0x23d1(31)
    lbz 10, 0x13(9)
    stb 8, 0x23d2(31)
    lbz 8, 0x14(9)
    stb 10, 0x23d3(31)
    lbz 10, 0x15(9)
    stb 8, 0x23d4(31)
    lbz 8, 0x16(9)
    stb 10, 0x23d5(31)
    lbz 10, 0x17(9)
    stb 8, 0x23d6(31)
    lwz 8, 0x18(9)
    stb 10, 0x23d7(31)
    lbz 12, 0x1c(9)
    stw 8, 0x23d8(31)
    lbz 11, 0x1e(9)
    stb 12, 0x23dc(31)
    lbz 10, 0x1f(9)
    stb 7, 0x23dd(31)
    lbz 8, 0x20(9)
    stb 11, 0x23de(31)
    lbz 7, 0x21(9)
    stb 10, 0x23df(31)
    lbz 11, 0x22(9)
    stb 8, 0x23e0(31)
    lbz 10, 0x23(9)
    stb 7, 0x23e1(31)
    lbz 8, 0x24(9)
    stb 11, 0x23e2(31)
    lbz 7, 0x25(9)
    stb 10, 0x23e3(31)
    lbz 11, 0x26(9)
    stb 8, 0x23e4(31)
    lwz 10, 0x28(9)
    stb 7, 0x23e5(31)
    lbz 8, 0x2c(9)
    stb 11, 0x23e6(31)
    lbz 7, 0x2d(9)
    stw 10, 0x23e8(31)
    lbz 11, 0x2e(9)
    stb 8, 0x23ec(31)
    lwz 10, 0x30(9)
    stb 7, 0x23ed(31)
    lwz 8, 0x34(9)
    stb 11, 0x23ee(31)
    lwz 7, 0x38(9)
    stw 10, 0x23f0(31)
    stw 8, 0x23f4(31)
    stw 7, 0x23f8(31)
    stb 6, 0x23ec(31)
    stb 5, 0x23ed(31)
    stb 6, 0x23ee(31)
    stw 4, 0x23f0(31)
    stw 6, 0x23f8(31)
    stb 12, 0x23dc(31)
    stb 0, 0x23dd(31)
    .4byte 0x41820040 # beq .L_802F6B74
    psq_l 5, 0x0(3), 0, 0
    addi 4, 31, 0x23fc
    psq_l 4, 0x8(3), 0, 0
    psq_l 3, 0x10(3), 0, 0
    psq_l 2, 0x18(3), 0, 0
    psq_l 1, 0x20(3), 0, 0
    psq_l 0, 0x28(3), 0, 0
    psq_st 5, 0x0(4), 0, 0
    psq_st 4, 0x8(4), 0, 0
    psq_st 3, 0x10(4), 0, 0
    psq_st 2, 0x18(4), 0, 0
    psq_st 1, 0x20(4), 0, 0
    psq_st 0, 0x28(4), 0, 0
    stw 4, 0x23d8(31)
    .4byte 0x48000024 # b .L_802F6B94
L_802F6B74:
    .4byte 0xC022E578 # lfs f1, lbl_80541518@sda21(r0)
    lfs 0, 0x23a0(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820014 # beq .L_802F6B94
    addi 3, 31, 0x23fc
    bl PSMTXIdentity
    addi 0, 31, 0x23fc
    stw 0, 0x23d8(31)
L_802F6B94:
    li 29, 0x1
    .4byte 0x4800000C # b .L_802F6BA4
L_802F6B9C:
    addi 31, 31, 0x9c
    .4byte 0x4200FCD8 # bdnz .L_802F6878
L_802F6BA4:
    clrlwi 3, 29, 24
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802F6BBC:
    cmpwi 4, 0x0
    .4byte 0x4180001C # blt .L_802F6BDC
    cmpwi 4, 0x4
    .4byte 0x40800014 # bge .L_802F6BDC
    slwi 0, 4, 2
    add 4, 3, 0
    lwz 4, 0x28(4)
    .4byte 0x48000030 # b .L_802F6C08
L_802F6BDC:
    cmpwi 4, 0x4
    .4byte 0x4180001C # blt .L_802F6BFC
    cmpwi 4, 0x8
    .4byte 0x40800014 # bge .L_802F6BFC
    slwi 0, 4, 2
    add 4, 3, 0
    lwz 4, 0x28(4)
    .4byte 0x48000010 # b .L_802F6C08
L_802F6BFC:
    slwi 0, 4, 2
    add 4, 3, 0
    lwz 4, 0x28(4)
L_802F6C08:
    cmpwi 5, 0x0
    .4byte 0x4180001C # blt .L_802F6C28
    cmpwi 5, 0x4
    .4byte 0x40800014 # bge .L_802F6C28
    slwi 0, 5, 2
    add 3, 3, 0
    lwz 5, 0x28(3)
    .4byte 0x48000030 # b .L_802F6C54
L_802F6C28:
    cmpwi 5, 0x4
    .4byte 0x4180001C # blt .L_802F6C48
    cmpwi 5, 0x8
    .4byte 0x40800014 # bge .L_802F6C48
    slwi 0, 5, 2
    add 3, 3, 0
    lwz 5, 0x28(3)
    .4byte 0x48000010 # b .L_802F6C54
L_802F6C48:
    slwi 0, 5, 2
    add 3, 3, 0
    lwz 5, 0x28(3)
L_802F6C54:
    li 0, 0x100
    mr 3, 4
    mr 4, 5
    mtctr 0
L_802F6C64:
    lhz 0, 0x0(3)
    sth 0, 0x0(4)
    lhz 0, 0x2(3)
    sth 0, 0x2(4)
    lhz 0, 0x4(3)
    sth 0, 0x4(4)
    lhz 0, 0x6(3)
    sth 0, 0x6(4)
    lhz 0, 0x8(3)
    sth 0, 0x8(4)
    lhz 0, 0xa(3)
    sth 0, 0xa(4)
    lhz 0, 0xc(3)
    sth 0, 0xc(4)
    lhz 0, 0xe(3)
    sth 0, 0xe(4)
    lhz 0, 0x10(3)
    sth 0, 0x10(4)
    lhz 0, 0x12(3)
    sth 0, 0x12(4)
    lhz 0, 0x14(3)
    sth 0, 0x14(4)
    lhz 0, 0x16(3)
    sth 0, 0x16(4)
    lhz 0, 0x18(3)
    sth 0, 0x18(4)
    lhz 0, 0x1a(3)
    sth 0, 0x1a(4)
    lhz 0, 0x1c(3)
    sth 0, 0x1c(4)
    lhz 0, 0x1e(3)
    addi 3, 3, 0x20
    sth 0, 0x1e(4)
    addi 4, 4, 0x20
    .4byte 0x4200FF78 # bdnz .L_802F6C64
    blr

fn_802F6CF4:
    stwu 1, -0x1e0(1)
    mflr 0
    stw 0, 0x1e4(1)
    stfd 31, 0x1d0(1)
    psq_st 31, 0x1d8(1), 0, 0
    stfd 30, 0x1c0(1)
    psq_st 30, 0x1c8(1), 0, 0
    stmw 15, 0x17c(1)
    mr 29, 3
    mr 15, 4
    lbz 0, 0x2364(3)
    mr 30, 5
    mr 16, 6
    cmplwi 0, 0x0
    .4byte 0x4182070C # beq .L_802F7438
    cmplwi 16, 0x0
    .4byte 0x41820030 # beq .L_802F6D64
    lbz 0, 0x21(16)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_802F6D64
    mr 8, 30
    mr 9, 16
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_802F654C
    clrlwi. 0, 3, 24
    .4byte 0x408206D8 # bne .L_802F7438
L_802F6D64:
    cmplwi 16, 0x0
    .4byte 0x41820038 # beq .L_802F6DA0
    lbz 0, 0x22(16)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_802F6DA0
    mr 3, 29
    mr 4, 15
    mr 8, 30
    mr 9, 16
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_802F6298
    clrlwi. 0, 3, 24
    .4byte 0x4082069C # bne .L_802F7438
L_802F6DA0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B1E8
    mr 3, 15
    mr 4, 16
    addi 5, 1, 0x10
    bl fn_802F5040
    bl fn_8005AD7C
    li 3, 0x9
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xd
    li 4, 0x1
    bl fn_8005A464
    li 3, 0xe
    li 4, 0x1
    bl fn_8005A464
    li 3, 0x0
    li 4, 0x9
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xd
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x0
    li 4, 0xe
    li 5, 0x1
    li 6, 0x4
    li 7, 0x0
    bl fn_8005ADB4
    li 3, 0x1
    li 4, 0x1
    li 5, 0x5
    li 6, 0x3c
    li 7, 0x0
    li 8, 0x7d
    bl fn_8005B6BC
    li 3, 0x2
    bl fn_8005B93C
    addis 3, 29, 0x1
    lbz 0, -0x1bb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820190 # beq .L_802F6FE8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_802F6EBC
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x4182002C # beq .L_802F6EA4
    cmpwi 3, 0x8
    .4byte 0x41820024 # beq .L_802F6EA4
    cmpwi 3, 0x9
    .4byte 0x4182001C # beq .L_802F6EA4
    cmpwi 3, 0x16
    .4byte 0x41820014 # beq .L_802F6EA4
    cmpwi 3, 0xa
    .4byte 0x4182000C # beq .L_802F6EA4
    cmpwi 3, 0xb
    .4byte 0x40820008 # bne .L_802F6EA8
L_802F6EA4:
    li 0, 0x1
L_802F6EA8:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000058 # b .L_802F6F10
L_802F6EBC:
    lwz 3, 0x4c(4)
    li 0, 0x0
    cmpwi 3, 0x7
    .4byte 0x41820034 # beq .L_802F6EFC
    cmpwi 3, 0x8
    .4byte 0x4182002C # beq .L_802F6EFC
    cmpwi 3, 0x9
    .4byte 0x41820024 # beq .L_802F6EFC
    cmpwi 3, 0x16
    .4byte 0x4182001C # beq .L_802F6EFC
    cmpwi 3, 0xa
    .4byte 0x41820014 # beq .L_802F6EFC
    cmpwi 3, 0xb
    .4byte 0x4182000C # beq .L_802F6EFC
    cmpwi 3, 0xc
    .4byte 0x40820008 # bne .L_802F6F00
L_802F6EFC:
    li 0, 0x1
L_802F6F00:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_802F6F10:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_802F6F30
    lwz 0, 0x4(4)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_802F6F30
    bl GetRoomConfigRecord
    lwz 0, 0x50(3)
    .4byte 0x48000008 # b .L_802F6F34
L_802F6F30:
    li 0, 0x0
L_802F6F34:
    addis 3, 29, 0x1
    slwi 0, 0, 2
    add 3, 3, 0
    li 4, 0x1
    lwz 3, -0x1bd8(3)
    bl fn_80092984
    li 3, 0x1
    li 4, 0x1
    li 5, 0x1
    li 6, 0xff
    bl fn_8005EF80
    li 3, 0x1
    li 4, 0xf
    li 5, 0x0
    li 6, 0x8
    li 7, 0xf
    bl fn_8005EA6C
    li 3, 0x1
    li 4, 0x7
    li 5, 0x7
    li 6, 0x7
    li 7, 0x0
    bl fn_8005EAB0
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EAF4
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    bl fn_8005EB5C
    li 3, 0x1
    li 4, 0x0
    li 5, 0x0
    bl fn_8005EDE8
    li 3, 0x1
    bl fn_8005E8DC
    li 3, 0x2
    bl fn_8005F11C
L_802F6FE8:
    lis 3, lbl_80471020@ha
    addi 19, 1, 0x7c
    addi 17, 3, lbl_80471020@l
    li 21, 0x0
    li 18, 0x0
    mr 20, 17
L_802F7000:
    lwz 0, 0x18(29)
    mr 3, 19
    li 5, 0x2
    li 6, 0x10
    add 4, 0, 18
    bl fn_8005DCC8
    lwz 4, 0x0(20)
    mr 3, 19
    bl fn_8005DD00
    addi 21, 21, 0x1
    addi 19, 19, 0xc
    cmpwi 21, 0x10
    addi 20, 20, 0x4
    addi 18, 18, 0x20
    .4byte 0x4180FFC8 # blt .L_802F7000
    li 4, 0x0
    addi 18, 1, 0x3c
    stw 4, 0x3c(1)
    li 5, 0x0
    stw 4, 0x40(1)
    stw 4, 0x44(1)
    stw 4, 0x48(1)
    stw 4, 0x4c(1)
    stw 4, 0x50(1)
    stw 4, 0x54(1)
    stw 4, 0x58(1)
    stw 4, 0x5c(1)
    stw 4, 0x60(1)
    stw 4, 0x64(1)
    stw 4, 0x68(1)
    stw 4, 0x6c(1)
    stw 4, 0x70(1)
    stw 4, 0x74(1)
    stw 4, 0x78(1)
L_802F7088:
    li 0, 0x10
    mr 3, 4
    slwi 6, 4, 1
    mtctr 0
L_802F7098:
    add 8, 30, 6
    lbz 0, 0x1(8)
    lbz 7, 0x0(8)
    rlwimi 7, 0, 8, 16, 23
    clrlwi. 0, 7, 16
    .4byte 0x41820078 # beq .L_802F7124
    lwz 20, 0x24(29)
    clrlslwi 7, 0, 16, 3
    clrlslwi 8, 0, 16, 2
    addi 11, 1, 0x3c
    lhzx 19, 20, 7
    addi 0, 8, 0x1
    slwi 0, 0, 1
    addi 7, 7, 0x4
    rlwinm 12, 19, 22, 26, 29
    lhzx 9, 20, 0
    lwzx 10, 11, 12
    addi 0, 8, 0x3
    lhzx 19, 20, 7
    rlwinm 8, 9, 22, 26, 29
    addi 7, 10, 0x1
    slwi 0, 0, 1
    stwx 7, 11, 12
    rlwinm 12, 19, 22, 26, 29
    lhzx 9, 20, 0
    lwzx 7, 11, 8
    addi 0, 7, 0x1
    stwx 0, 11, 8
    rlwinm 8, 9, 22, 26, 29
    lwzx 10, 11, 12
    addi 7, 10, 0x1
    stwx 7, 11, 12
    lwzx 7, 11, 8
    addi 0, 7, 0x1
    stwx 0, 11, 8
L_802F7124:
    addi 3, 3, 0x1
    addi 6, 6, 0x2
    .4byte 0x4200FF6C # bdnz .L_802F7098
    addi 5, 5, 0x1
    addi 4, 4, 0x10
    cmpwi 5, 0x10
    .4byte 0x4180FF4C # blt .L_802F7088
    li 31, 0x0
L_802F7144:
    lwz 0, 0x0(18)
    cmpwi 0, 0x0
    .4byte 0x408102A4 # ble .L_802F73F0
    lwz 0, 0x0(17)
    addi 3, 1, 0x1c
    li 5, 0x80
    li 6, 0x200
    stw 0, 0x8(1)
    li 7, 0x8
    li 8, 0x0
    li 9, 0x0
    lwz 4, 0x4(29)
    li 10, 0x0
    bl fn_8005D92C
    addi 3, 1, 0x1c
    li 4, 0x0
    bl fn_8005DC74
    lwz 0, 0x0(18)
    li 3, 0x80
    li 4, 0x0
    clrlslwi 5, 0, 18, 2
    bl fn_8005C24C
    li 21, 0x0
    lfs 8, 0x18(1)
    lfs 9, 0x10(1)
    mr 20, 21
    lfs 10, 0x14(1)
    li 3, 0x0
L_802F71B4:
    mr 23, 21
    slwi 6, 21, 1
    li 4, 0x0
    li 22, 0x0
L_802F71C4:
    add 7, 30, 6
    lbz 0, 0x1(7)
    lbz 5, 0x0(7)
    rlwimi 5, 0, 8, 16, 23
    clrlwi. 0, 5, 16
    .4byte 0x418201EC # beq .L_802F73C4
    mr 24, 20
    clrlslwi 25, 0, 16, 2
    slwi 7, 20, 3
    li 5, 0x0
L_802F71EC:
    li 0, 0x2
    mr 27, 25
    mr 26, 22
    slwi 9, 22, 3
    slwi 8, 25, 1
    mtctr 0
L_802F7204:
    lwz 10, 0x24(29)
    lhzx 19, 10, 8
    extrwi 0, 19, 4, 16
    cmpw 0, 31
    .4byte 0x40820184 # bne .L_802F7398
    clrlwi 10, 19, 28
    lis 12, 0x4330
    xoris 10, 10, 0x8000
    xoris 28, 9, 0x8000
    extrwi 0, 19, 6, 22
    stw 10, 0x154(1)
    xoris 0, 0, 0x8000
    xoris 11, 7, 0x8000
    stw 12, 0x150(1)
    rlwinm. 10, 19, 0, 21, 21
    .4byte 0xC8E2E568 # lfd f7, lbl_80541508@sda21(r0)
    lfd 0, 0x150(1)
    stw 0, 0x15c(1)
    fsubs 1, 0, 7
    .4byte 0xC0C2E570 # lfs f6, lbl_80541510@sda21(r0)
    stw 12, 0x158(1)
    .4byte 0xC082E588 # lfs f4, lbl_80541528@sda21(r0)
    lfd 0, 0x158(1)
    fmadds 1, 6, 1, 4
    .4byte 0xC0A2E58C # lfs f5, lbl_8054152C@sda21(r0)
    fsubs 3, 0, 7
    stw 28, 0x164(1)
    .4byte 0xC042E558 # lfs f2, lbl_805414F8@sda21(r0)
    stw 12, 0x160(1)
    fmuls 11, 1, 5
    .4byte 0xC022E590 # lfs f1, lbl_80541530@sda21(r0)
    fmadds 4, 6, 3, 4
    lfd 0, 0x160(1)
    stw 11, 0x16c(1)
    fsubs 3, 0, 7
    stw 12, 0x168(1)
    fmuls 4, 4, 1
    .4byte 0xC002E594 # lfs f0, lbl_80541534@sda21(r0)
    lfd 1, 0x168(1)
    fmadds 12, 3, 5, 2
    stw 28, 0x144(1)
    fsubs 1, 1, 7
    stw 12, 0x140(1)
    fadds 31, 0, 12
    fmadds 13, 1, 5, 2
    lfd 3, 0x140(1)
    stw 11, 0x14c(1)
    fsubs 2, 3, 7
    stw 12, 0x148(1)
    fadds 30, 0, 13
    lfd 0, 0x148(1)
    fadds 2, 2, 9
    fsubs 3, 0, 7
    fadds 3, 3, 10
    .4byte 0x41820014 # beq .L_802F72F0
    .4byte 0xC002E598 # lfs f0, lbl_80541538@sda21(r0)
    fmr 5, 11
    fadds 11, 0, 11
    .4byte 0x4800000C # b .L_802F72F8
L_802F72F0:
    .4byte 0xC002E598 # lfs f0, lbl_80541538@sda21(r0)
    fadds 5, 0, 11
L_802F72F8:
    rlwinm. 0, 19, 0, 20, 20
    .4byte 0x41820014 # beq .L_802F7310
    .4byte 0xC002E59C # lfs f0, lbl_8054153C@sda21(r0)
    fmr 6, 4
    fadds 4, 0, 4
    .4byte 0x4800000C # b .L_802F7318
L_802F7310:
    .4byte 0xC002E59C # lfs f0, lbl_8054153C@sda21(r0)
    fadds 6, 0, 4
L_802F7318:
    lis 10, 0xcc01
    .4byte 0xC002E570 # lfs f0, lbl_80541510@sda21(r0)
    stfs 2, -0x8000(10)
    fadds 1, 0, 2
    stfs 3, -0x8000(10)
    fadds 0, 0, 3
    stfs 8, -0x8000(10)
    stfs 11, -0x8000(10)
    stfs 4, -0x8000(10)
    stfs 12, -0x8000(10)
    stfs 13, -0x8000(10)
    stfs 1, -0x8000(10)
    stfs 3, -0x8000(10)
    stfs 8, -0x8000(10)
    stfs 5, -0x8000(10)
    stfs 4, -0x8000(10)
    stfs 31, -0x8000(10)
    stfs 13, -0x8000(10)
    stfs 1, -0x8000(10)
    stfs 0, -0x8000(10)
    stfs 8, -0x8000(10)
    stfs 5, -0x8000(10)
    stfs 6, -0x8000(10)
    stfs 31, -0x8000(10)
    stfs 30, -0x8000(10)
    stfs 2, -0x8000(10)
    stfs 0, -0x8000(10)
    stfs 8, -0x8000(10)
    stfs 11, -0x8000(10)
    stfs 6, -0x8000(10)
    stfs 12, -0x8000(10)
    stfs 30, -0x8000(10)
L_802F7398:
    addi 27, 27, 0x1
    addi 8, 8, 0x2
    addi 26, 26, 0x1
    addi 9, 9, 0x8
    .4byte 0x4200FE5C # bdnz .L_802F7204
    addi 5, 5, 0x1
    addi 24, 24, 0x1
    cmpwi 5, 0x2
    addi 7, 7, 0x8
    addi 25, 25, 0x2
    .4byte 0x4180FE2C # blt .L_802F71EC
L_802F73C4:
    addi 4, 4, 0x1
    addi 6, 6, 0x2
    cmpwi 4, 0x10
    addi 22, 22, 0x2
    addi 23, 23, 0x1
    .4byte 0x4180FDEC # blt .L_802F71C4
    addi 3, 3, 0x1
    addi 20, 20, 0x2
    cmpwi 3, 0x10
    addi 21, 21, 0x10
    .4byte 0x4180FDC8 # blt .L_802F71B4
L_802F73F0:
    addi 31, 31, 0x1
    addi 17, 17, 0x4
    cmpwi 31, 0x10
    addi 18, 18, 0x4
    .4byte 0x4180FD44 # blt .L_802F7144
    cmplwi 16, 0x0
    .4byte 0x41820030 # beq .L_802F7438
    lwz 0, 0x30(16)
    cmpwi 0, -0x1
    .4byte 0x41820024 # beq .L_802F7438
    mr 3, 29
    mr 4, 15
    mr 8, 30
    mr 9, 16
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_802F6800
L_802F7438:
    psq_l 31, 0x1d8(1), 0, 0
    lfd 31, 0x1d0(1)
    psq_l 30, 0x1c8(1), 0, 0
    lfd 30, 0x1c0(1)
    lmw 15, 0x17c(1)
    lwz 0, 0x1e4(1)
    mtlr 0
    addi 1, 1, 0x1e0
    blr

