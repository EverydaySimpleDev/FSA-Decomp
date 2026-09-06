# fn_800FBD90: the state-5/`this->0x234==0x19` "wind-down countdown"
# handler (the pairing `fn_800FBA14` transitions into). Decrements the
# countdown `this->0x234`; while still non-negative, just recomputes
# the 0x60-6c anchor-scaled position fields and idles. Once the
# countdown expires: recomputes the FULL anchor-scaled set (0x60-8c),
# then gates on the SAME `fn_801F2FAC` check already seen in
# `fn_800FB070` - if true, transitions to a NEW terminal-looking state
# (`this->0x230=9`, `this->0x234=0`, arms `this->0xd8/0xdc=10/9`,
# resets velocity, plays effect `0x40005`, invokes the recurring self-
# notify vtable callback if `this->0x108<=10`) - plausibly "give up
# and settle permanently." If not, gates on the CONFIRMED
# `fn_801F3D94(this,1)`, and if `this->0x264` (elapsed counter) is
# nonzero, runs the SAME 280-frame timeout/retry pattern seen in
# `fn_800FB070`/`fn_800FB32C` (wraps `this->0x268`, re-arms state 6 on
# timeout, classifies elapsed time into `this->0x257`). On FIRST entry
# (`this->0x264==0`), instead plays effect `0x4002e`, integrates
# position += velocity (paired-single), then gates on the recurring
# still-unconfirmed `fn_801F2618` "at rest"-style check - if true,
# applies the SAME weighted-sum velocity-homing blend documented in
# `fn_800FB32C`'s tail and plays a final effect `0x4002d`. Needs
# `-mgekko`. Not yet cross-identified against the 195-entry dispatch
# table.
.section extab, "a"
.balign 4
.global etb_80005808
etb_80005808:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005808, 8

.section extabindex, "a"
.balign 4
.global eti_80011B3C
eti_80011B3C:
    .4byte fn_800FBD90
    .4byte 0x00000398
    .4byte etb_80005808
.size eti_80011B3C, 12

.text
.balign 4
.global fn_800FBD90

fn_800FBD90:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lbz 3, 0x256(3)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_800FBDB8
    subi 0, 3, 0x1
    stb 0, 0x256(31)
L_800FBDB8:
    lbz 0, 0x278(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_800FBDCC
    cmplwi 0, 0x6
    .4byte 0x40820010 # bne .L_800FBDD8
L_800FBDCC:
    li 0, 0x10
    stw 0, 0xb0(31)
    .4byte 0x4800000C # b .L_800FBDE0
L_800FBDD8:
    li 0, 0x4
    stw 0, 0xb0(31)
L_800FBDE0:
    mr 3, 31
    bl fn_800FA1A4
    lwz 3, 0x234(31)
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41800040 # blt .L_800FBE3C
    .4byte 0xC02290EC # lfs f1, lbl_8053C08C@sda21(r0)
    lfs 0, 0x26c(31)
    .4byte 0xC06290B4 # lfs f3, lbl_8053C054@sda21(r0)
    fmuls 4, 1, 0
    .4byte 0xC04290B8 # lfs f2, lbl_8053C058@sda21(r0)
    .4byte 0xC02290BC # lfs f1, lbl_8053C05C@sda21(r0)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fmuls 3, 3, 4
    fmuls 2, 2, 4
    fmuls 1, 1, 4
    stfs 3, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x480002DC # b .L_800FC114
L_800FBE3C:
    lwz 0, 0x238(31)
    mr 3, 31
    .4byte 0xC06290B4 # lfs f3, lbl_8053C054@sda21(r0)
    rlwinm 0, 0, 0, 28, 26
    .4byte 0xC04290B8 # lfs f2, lbl_8053C058@sda21(r0)
    stw 0, 0x238(31)
    .4byte 0xC02290BC # lfs f1, lbl_8053C05C@sda21(r0)
    lfs 4, 0x26c(31)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fmuls 3, 3, 4
    fmuls 2, 2, 4
    fmuls 1, 1, 4
    stfs 3, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 3, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x418200B4 # beq .L_800FBF48
    li 3, 0xa
    lis 4, 0x4
    stw 3, 0xd8(31)
    li 5, 0x9
    .4byte 0xC082900C # lfs f4, lbl_8053BFAC@sda21(r0)
    li 0, 0x0
    stw 3, 0xdc(31)
    mr 3, 31
    .4byte 0xC0629054 # lfs f3, lbl_8053BFF4@sda21(r0)
    addi 4, 4, 0x5
    stw 5, 0x230(31)
    li 5, 0x0
    .4byte 0xC04290B4 # lfs f2, lbl_8053C054@sda21(r0)
    lwz 6, 0x238(31)
    .4byte 0xC02290B8 # lfs f1, lbl_8053C058@sda21(r0)
    ori 6, 6, 0x1
    .4byte 0xC00290BC # lfs f0, lbl_8053C05C@sda21(r0)
    stw 6, 0x238(31)
    lwz 6, 0x238(31)
    rlwinm 6, 6, 0, 30, 28
    stw 6, 0x238(31)
    stfs 4, 0x3c(31)
    stfs 4, 0x40(31)
    stfs 3, 0x44(31)
    stw 0, 0x268(31)
    stw 0, 0x264(31)
    lfs 3, 0x26c(31)
    fmuls 2, 2, 3
    fmuls 1, 1, 3
    fmuls 0, 0, 3
    stfs 2, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 4, 0x6c(31)
    bl fn_801F0E34
    lwz 0, 0x108(31)
    cmpwi 0, 0xa
    .4byte 0x418101E8 # bgt .L_800FC114
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480001D0 # b .L_800FC114
L_800FBF48:
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820104 # beq .L_800FC060
    lwz 3, 0x268(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_800FBF8C
    addi 3, 3, 0x2000
    lis 0, 0x1
    stw 3, 0x268(31)
    lwz 3, 0x268(31)
    cmplw 3, 0
    .4byte 0x4081000C # ble .L_800FBF8C
    li 0, 0x0
    stw 0, 0x268(31)
L_800FBF8C:
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x118
    .4byte 0x40820174 # bne .L_800FC114
    li 6, 0x0
    li 4, 0x4
    stw 6, 0x264(31)
    li 3, 0x6
    .4byte 0xC022900C # lfs f1, lbl_8053BFAC@sda21(r0)
    li 0, 0x1
    lwz 5, 0x238(31)
    .4byte 0xC002905C # lfs f0, lbl_8053BFFC@sda21(r0)
    ori 5, 5, 0x1
    stw 5, 0x238(31)
    lwz 5, 0x238(31)
    ori 5, 5, 0x4
    stw 5, 0x238(31)
    stw 4, 0xb0(31)
    stfs 1, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    stw 3, 0x230(31)
    stw 0, 0x268(31)
    stw 6, 0x264(31)
    lwz 0, 0x238(31)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x4082004C # bne .L_800FC048
    lwz 3, 0x108(31)
    lis 0, 0x4330
    stw 0, 0x18(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8629038 # lfd f3, lbl_8053BFD8@sda21(r0)
    stw 0, 0x1c(1)
    .4byte 0xC02290DC # lfs f1, lbl_8053C07C@sda21(r0)
    lfd 2, 0x18(1)
    .4byte 0xC0029024 # lfs f0, lbl_8053BFC4@sda21(r0)
    fsubs 2, 2, 3
    fdivs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_800FC040
    li 0, 0x3
    stb 0, 0x257(31)
    .4byte 0x4800000C # b .L_800FC048
L_800FC040:
    li 0, 0x2
    stb 0, 0x257(31)
L_800FC048:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x2b
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000B8 # b .L_800FC114
L_800FC060:
    psq_l 1, 0xc(31), 0, 0
    lis 4, 0x4
    psq_l 0, 0x3c(31), 0, 0
    mr 3, 31
    addi 4, 4, 0x2e
    li 5, 0x0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F0E34
    mr 3, 31
    addi 4, 1, 0x8
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_800FC114
    lfs 1, 0x40(31)
    lis 4, 0x4
    lfs 0, 0xc(1)
    mr 3, 31
    lfs 2, 0x3c(31)
    addi 4, 4, 0x2d
    fmuls 0, 1, 0
    lfs 5, 0x8(1)
    lfs 4, 0x44(31)
    li 5, 0x0
    lfs 3, 0x10(1)
    fmadds 1, 2, 5, 0
    .4byte 0xC0029050 # lfs f0, lbl_8053BFF0@sda21(r0)
    fmadds 1, 4, 3, 1
    fmuls 3, 0, 1
    fnmsubs 0, 3, 5, 2
    stfs 0, 0x3c(31)
    lfs 1, 0xc(1)
    lfs 0, 0x40(31)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x40(31)
    lfs 1, 0x10(1)
    lfs 0, 0x44(31)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x44(31)
    bl fn_801F0E34
L_800FC114:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

