# Fresh-gap-hunt batch 17 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008328
etb_80008328:
    .4byte 0x004A0000
    .4byte 0x00000000
.size etb_80008328, 8

.global etb_80008330
etb_80008330:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008330, 8

.section extabindex, "a"
.balign 4
.global eti_800155E0
eti_800155E0:
    .4byte fn_801CD6D8
    .4byte 0x0000007C
    .4byte etb_80008328
.size eti_800155E0, 12

.global eti_800155EC
eti_800155EC:
    .4byte fn_801CD754
    .4byte 0x00000190
    .4byte etb_80008330
.size eti_800155EC, 12

.text
.balign 4
.global fn_801CD6D8
.global fn_801CD754
.global fn_801CD8E4

fn_801CD6D8:
    stwu 1, -0x20(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    fmuls 13, 5, 5
    .4byte 0xC162BFEC # lfs f11, lbl_8053EF8C@sda21(r0)
    .4byte 0xC002C010 # lfs f0, lbl_8053EFB0@sda21(r0)
    .4byte 0xC102BFE0 # lfs f8, lbl_8053EF80@sda21(r0)
    fmuls 12, 11, 5
    fmuls 31, 13, 5
    fmuls 0, 0, 13
    .4byte 0xC0A2C00C # lfs f5, lbl_8053EFAC@sda21(r0)
    .4byte 0xC0E2C008 # lfs f7, lbl_8053EFA8@sda21(r0)
    fmuls 10, 11, 13
    .4byte 0xC0C2BFC0 # lfs f6, lbl_8053EF60@sda21(r0)
    fmsubs 0, 5, 31, 0
    fmadds 5, 7, 31, 13
    .4byte 0xC122C004 # lfs f9, lbl_8053EFA4@sda21(r0)
    fmuls 7, 8, 13
    fadds 0, 6, 0
    fsubs 5, 5, 12
    fmadds 6, 9, 31, 7
    fmuls 0, 2, 0
    fmsubs 7, 11, 31, 10
    fadds 2, 12, 6
    fmadds 0, 1, 5, 0
    fmadds 0, 3, 2, 0
    fmadds 1, 4, 7, 0
    psq_l 31, 0x18(1), 0, 0
    lfd 31, 0x10(1)
    addi 1, 1, 0x20
    blr

fn_801CD754:
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    stwu 1, -0x10(1)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801CD76C
    fmr 1, 0
    .4byte 0x48000014 # b .L_801CD77C
L_801CD76C:
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801CD77C
    fmr 1, 0
L_801CD77C:
    lfs 6, 0x0(4)
    lfs 0, 0x0(3)
    lfs 7, 0x4(4)
    fsubs 6, 6, 0
    lfs 4, 0x4(3)
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    fsubs 7, 7, 4
    fmuls 5, 6, 6
    stfs 6, 0x8(1)
    fmuls 4, 7, 7
    stfs 7, 0xc(1)
    fadds 7, 5, 4
    fcmpo cr0, 7, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801CD7BC
    .4byte 0x48000028 # b .L_801CD7E0
L_801CD7BC:
    frsqrte 6, 7
    .4byte 0xC0A2BFEC # lfs f5, lbl_8053EF8C@sda21(r0)
    .4byte 0xC002BFF0 # lfs f0, lbl_8053EF90@sda21(r0)
    frsp 6, 6
    fmuls 4, 6, 6
    fmuls 5, 5, 6
    fnmsubs 0, 7, 4, 0
    fmuls 0, 5, 0
    fmuls 7, 7, 0
L_801CD7E0:
    .4byte 0xC082BFDC # lfs f4, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 7, 4
    .4byte 0x408100C0 # ble .L_801CD8A8
    fmuls 0, 7, 1
    fcmpo cr0, 0, 2
    .4byte 0x40800034 # bge .L_801CD828
    .4byte 0xC062BFC0 # lfs f3, lbl_8053EF60@sda21(r0)
    fdivs 0, 3, 7
    fmuls 0, 2, 0
    fcmpo cr0, 0, 3
    .4byte 0x4081000C # ble .L_801CD814
    fmr 0, 3
    .4byte 0x48000010 # b .L_801CD820
L_801CD814:
    fcmpo cr0, 0, 1
    .4byte 0x40800008 # bge .L_801CD820
    fmr 0, 1
L_801CD820:
    fmr 1, 0
    .4byte 0x48000038 # b .L_801CD85C
L_801CD828:
    fcmpo cr0, 0, 3
    .4byte 0x40810030 # ble .L_801CD85C
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    fdivs 0, 0, 7
    fmuls 0, 3, 0
    fcmpo cr0, 0, 1
    .4byte 0x4081000C # ble .L_801CD84C
    fmr 0, 1
    .4byte 0x48000010 # b .L_801CD858
L_801CD84C:
    fcmpo cr0, 0, 4
    .4byte 0x40800008 # bge .L_801CD858
    fmr 0, 4
L_801CD858:
    fmr 1, 0
L_801CD85C:
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    fmr 3, 1
    lfs 2, 0x0(4)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_801CD874
    fmr 3, 0
L_801CD874:
    lfs 5, 0x0(3)
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    fsubs 2, 2, 5
    lfs 4, 0x4(4)
    fcmpo cr0, 1, 0
    fmadds 2, 3, 2, 5
    stfs 2, 0x0(3)
    .4byte 0x40810008 # ble .L_801CD898
    fmr 1, 0
L_801CD898:
    lfs 2, 0x4(3)
    fsubs 0, 4, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x4(3)
L_801CD8A8:
    lfs 1, 0x0(3)
    li 0, 0x0
    lfs 0, 0x0(4)
    fcmpu cr0, 1, 0
    .4byte 0x40820018 # bne .L_801CD8D0
    lfs 1, 0x4(3)
    lfs 0, 0x4(4)
    fcmpu cr0, 1, 0
    .4byte 0x40820008 # bne .L_801CD8D0
    li 0, 0x1
L_801CD8D0:
    clrlwi 0, 0, 24
    cntlzw 0, 0
    srwi 3, 0, 5
    addi 1, 1, 0x10
    blr

fn_801CD8E4:
    .4byte 0xC002BFC0 # lfs f0, lbl_8053EF60@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_801CD8F4
    fmr 2, 0
L_801CD8F4:
    lfs 4, 0x0(3)
    fabs 3, 3
    fsubs 0, 1, 4
    fmadds 0, 2, 0, 4
    stfs 0, 0x0(3)
    lfs 0, 0x0(3)
    fsubs 0, 0, 1
    fabs 0, 0
    fcmpo cr0, 0, 3
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801CD928
    li 3, 0x0
    blr
L_801CD928:
    li 3, 0x1
    blr

