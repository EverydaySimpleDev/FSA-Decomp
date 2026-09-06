# fn_803944EC - leading helper (0x1a4)
.section extab, "a"
.balign 4
.global etb_8000EF98
etb_8000EF98:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_8000EF98, 8

.section extabindex, "a"
.balign 4
.global eti_8001EE08
eti_8001EE08:
    .4byte fn_803944EC
    .4byte 0x000001A4
    .4byte etb_8000EF98
.size eti_8001EE08, 12

.text
.balign 4
.global fn_803944EC

fn_803944EC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    fmr 31, 1
    mr 31, 3
    lis 3, 0x546d
    li 5, 0x0
    addi 6, 3, 0x3031
    stfs 31, 0xb4(31)
    lfs 1, 0x60(31)
    lfs 0, 0x64(31)
    fmuls 1, 1, 31
    lwz 3, 0x20(31)
    fmuls 0, 0, 31
    lwz 12, 0x0(3)
    stfs 1, 0x18(1)
    lwz 12, 0x3c(12)
    stfs 0, 0x1c(1)
    lwz 4, 0x18(1)
    lwz 0, 0x1c(1)
    stw 4, 0x10(1)
    stw 0, 0x14(1)
    mtctr 12
    bctrl
    lfs 1, 0x10(1)
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    lfs 2, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_80394578
    .4byte 0x48000008 # b .L_8039457C
L_80394578:
    fmr 1, 0
L_8039457C:
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    stfs 1, 0x11c(3)
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_80394590
    .4byte 0x48000008 # b .L_80394594
L_80394590:
    fmr 2, 0
L_80394594:
    stfs 2, 0x120(3)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    lwz 3, 0x20(31)
    lfs 0, 0xb0(31)
    lwz 12, 0x0(3)
    fmuls 30, 0, 31
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stfs 30, 0x118(3)
    lis 3, 0x546d
    lwz 4, 0x18(1)
    addi 6, 3, 0x3032
    lwz 3, 0x20(31)
    li 5, 0x0
    lwz 0, 0x1c(1)
    lwz 12, 0x0(3)
    stw 4, 0x8(1)
    lwz 12, 0x3c(12)
    stw 0, 0xc(1)
    mtctr 12
    bctrl
    lfs 1, 0x8(1)
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    lfs 2, 0xc(1)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8039460C
    .4byte 0x48000008 # b .L_80394610
L_8039460C:
    fmr 1, 0
L_80394610:
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    stfs 1, 0x11c(3)
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_80394624
    .4byte 0x48000008 # b .L_80394628
L_80394624:
    fmr 2, 0
L_80394628:
    stfs 2, 0x120(3)
    lis 3, 0x546d
    addi 6, 3, 0x3032
    li 5, 0x0
    lwz 3, 0x20(31)
    lfs 0, 0xb0(31)
    lwz 12, 0x0(3)
    fmuls 30, 0, 31
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stfs 30, 0x118(3)
    lfs 0, 0x60(31)
    lwz 3, 0x14(31)
    stfs 31, 0x2c8(3)
    stfs 31, 0x7c(3)
    stfs 0, 0x80(3)
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 0, 0x54(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

