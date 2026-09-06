# fn_800FA1A4: ANOTHER container-class method - inter-instance
# formation-spacing physics between two OTHER cached registry entries
# (`this->0x288`/`this->0x28c`, resolved via the CONFIRMED
# `SpatialRegistry_GetBase`+`fn_801F666C` pair): one pass comparing the two linked
# entries directly (gated by bit 3 of `this->0x238`), then two more
# passes each comparing one linked entry against `this` itself
# (`this->0xc/0x10/0x14` as its own position), both gated by
# `this->0x2ac==0`. By far the densest use
# of the fast-inverse-sqrt idiom this session - THREE separate
# instances in one function, each guarding a distance-based velocity
# pull/push (using `PSVECMag` for the initial gate check and the
# frsqrte+Newton-Raphson refinement for the normalized pull direction)
# against per-pass distance thresholds (`lbl_8053BFF8`/
# `lbl_8053C048`). Reads/writes the already-established position
# (`0xc/0x10/0x14`) and velocity (`0x3c/0x40/0x44`) fields on the
# OTHER entries, not `this` - i.e. this function nudges OTHER
# container instances' physics to keep the formation's spacing
# correct, rather than moving itself. Needs `-mgekko`. Not yet cross-
# identified against the 195-entry dispatch table.
.section extab, "a"
.balign 4
.global etb_800057B8
etb_800057B8:
    .4byte 0x1ACA0000
    .4byte 0x00000000
.size etb_800057B8, 8

.section extabindex, "a"
.balign 4
.global eti_80011AC4
eti_80011AC4:
    .4byte fn_800FA1A4
    .4byte 0x0000050C
    .4byte etb_800057B8
.size eti_80011AC4, 12

.text
.balign 4
.global fn_800FA1A4

fn_800FA1A4:
    stwu 1, -0x120(1)
    mflr 0
    stw 0, 0x124(1)
    stfd 31, 0x110(1)
    psq_st 31, 0x118(1), 0, 0
    stfd 30, 0x100(1)
    psq_st 30, 0x108(1), 0, 0
    stfd 29, 0xf0(1)
    psq_st 29, 0xf8(1), 0, 0
    stfd 28, 0xe0(1)
    psq_st 28, 0xe8(1), 0, 0
    stfd 27, 0xd0(1)
    psq_st 27, 0xd8(1), 0, 0
    stfd 26, 0xc0(1)
    psq_st 26, 0xc8(1), 0, 0
    stfd 25, 0xb0(1)
    psq_st 25, 0xb8(1), 0, 0
    stfd 24, 0xa0(1)
    psq_st 24, 0xa8(1), 0, 0
    stfd 23, 0x90(1)
    psq_st 23, 0x98(1), 0, 0
    stfd 22, 0x80(1)
    psq_st 22, 0x88(1), 0, 0
    stfd 21, 0x70(1)
    psq_st 21, 0x78(1), 0, 0
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    lwz 0, 0x238(3)
    mr 29, 3
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x4182041C # beq .L_800FA63C
    bl SpatialRegistry_GetBase
    lwz 4, 0x288(29)
    bl fn_801F666C
    mr 30, 3
    bl SpatialRegistry_GetBase
    lwz 4, 0x28c(29)
    bl fn_801F666C
    mr 31, 3
    psq_l 1, 0xc(30), 0, 0
    psq_l 3, 0xc(31), 0, 0
    addi 3, 1, 0x38
    lfs 0, 0x14(30)
    lfs 2, 0x14(31)
    ps_sub 5, 1, 3
    psq_st 1, 0x50(1), 0, 0
    stfs 2, 0x4c(1)
    stfs 0, 0x40(1)
    psq_l 2, 0x4c(1), 1, 0
    psq_st 1, 0x0(3), 0, 0
    psq_l 4, 0x8(3), 1, 0
    stfs 0, 0x58(1)
    ps_sub 1, 4, 2
    psq_st 3, 0x44(1), 0, 0
    psq_st 5, 0x0(3), 0, 0
    psq_st 1, 0x8(3), 1, 0
    bl PSVECMag
    .4byte 0xC0029058 # lfs f0, lbl_8053BFF8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080019C # bge .L_800FA430
    psq_l 3, 0x3c(30), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 2, 0x44(30)
    psq_l 5, 0x3c(31), 0, 0
    lfs 4, 0x44(31)
    lfs 0, 0x58(1)
    psq_st 5, 0x3c(30), 0, 0
    psq_l 6, 0x50(1), 0, 0
    stfs 4, 0x44(30)
    psq_l 1, 0x44(1), 0, 0
    psq_st 3, 0x3c(31), 0, 0
    ps_add 8, 6, 1
    .4byte 0xC3E29010 # lfs f31, lbl_8053BFB0@sda21(r0)
    stfs 2, 0x44(31)
    psq_l 7, 0x4c(1), 1, 0
    psq_l 11, 0x38(1), 0, 0
    ps_muls0 9, 8, 31
    stfs 0, 0x10(1)
    ps_mul 11, 11, 11
    lfs 23, 0x40(1)
    psq_l 0, 0x10(1), 1, 0
    .4byte 0xC0229074 # lfs f1, lbl_8053C014@sda21(r0)
    ps_add 7, 0, 7
    lfs 0, lbl_80539D44@l(3)
    ps_madd 10, 23, 23, 11
    psq_st 6, 0x8(1), 0, 0
    fmuls 0, 1, 0
    psq_st 8, 0x8(1), 0, 0
    ps_sum0 10, 10, 11, 11
    ps_muls0 1, 7, 31
    psq_st 7, 0x10(1), 1, 0
    fcmpo cr0, 10, 0
    psq_st 3, 0x2c(1), 0, 0
    stfs 2, 0x34(1)
    psq_st 5, 0x20(1), 0, 0
    stfs 4, 0x28(1)
    psq_st 9, 0x8(1), 0, 0
    psq_st 1, 0x10(1), 1, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_800FA388
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fcmpo cr0, 10, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800FA350
    fmr 30, 10
    .4byte 0x48000024 # b .L_800FA370
L_800FA350:
    frsqrte 2, 10
    .4byte 0xC0029000 # lfs f0, lbl_8053BFA0@sda21(r0)
    frsp 2, 2
    fmuls 1, 2, 2
    fmuls 2, 31, 2
    fnmsubs 0, 10, 1, 0
    fmuls 0, 2, 0
    fmr 30, 0
L_800FA370:
    psq_l 1, 0x38(1), 0, 0
    psq_l 0, 0x40(1), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x38(1), 0, 0
    psq_st 0, 0x40(1), 1, 0
L_800FA388:
    lfs 0, 0x40(1)
    lfs 1, 0x38(1)
    stfs 0, 0x1c(1)
    lfs 0, 0x3c(1)
    stfs 1, 0x14(1)
    .4byte 0xC3A2905C # lfs f29, lbl_8053BFFC@sda21(r0)
    stfs 0, 0x18(1)
    psq_l 0, 0x1c(1), 1, 0
    psq_l 1, 0x14(1), 0, 0
    ps_muls0 0, 0, 29
    psq_l 3, 0x10(1), 1, 0
    ps_muls0 1, 1, 29
    psq_l 5, 0x8(1), 0, 0
    .4byte 0xC38290A4 # lfs f28, lbl_8053C044@sda21(r0)
    ps_add 2, 0, 3
    psq_st 0, 0x1c(1), 1, 0
    ps_add 4, 1, 5
    psq_st 2, 0x1c(1), 1, 0
    psq_st 4, 0xc(30), 0, 0
    lfs 0, 0x1c(1)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x14(30)
    lfs 0, 0x40(1)
    psq_st 4, 0x14(1), 0, 0
    lfs 1, 0x38(1)
    stfs 0, 0x1c(1)
    lfs 0, 0x3c(1)
    psq_l 2, 0x1c(1), 1, 0
    stfs 1, 0x14(1)
    ps_muls0 1, 2, 28
    stfs 0, 0x18(1)
    psq_l 0, 0x14(1), 0, 0
    ps_add 2, 1, 3
    psq_st 1, 0x1c(1), 1, 0
    ps_muls0 0, 0, 28
    psq_st 2, 0x1c(1), 1, 0
    ps_add 1, 0, 5
    psq_st 0, 0x14(1), 0, 0
    lfs 0, 0x1c(1)
    psq_st 1, 0xc(31), 0, 0
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x14(31)
L_800FA430:
    lbz 0, 0x2ac(29)
    cmplwi 0, 0x0
    .4byte 0x40820204 # bne .L_800FA63C
    lfs 2, 0x10(29)
    addi 3, 1, 0x38
    .4byte 0xC0229058 # lfs f1, lbl_8053BFF8@sda21(r0)
    lfs 3, 0x14(29)
    lfs 0, 0xc(29)
    fsubs 1, 2, 1
    psq_l 2, 0x58(1), 1, 0
    stfs 3, 0x40(1)
    psq_l 4, 0x50(1), 0, 0
    psq_l 3, 0x8(3), 1, 0
    stfs 0, 0x38(1)
    ps_sub 0, 3, 2
    stfs 1, 0x3c(1)
    psq_l 1, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    ps_sub 0, 1, 4
    psq_st 0, 0x0(3), 0, 0
    bl PSVECMag
    .4byte 0xC00290A8 # lfs f0, lbl_8053C048@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408000B0 # bge .L_800FA53C
    psq_l 2, 0x38(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 22, 0x40(1)
    ps_mul 2, 2, 2
    .4byte 0xC0229074 # lfs f1, lbl_8053C014@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 22, 22, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_800FA514
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800FA4D8
    fmr 27, 4
    .4byte 0x48000028 # b .L_800FA4FC
L_800FA4D8:
    frsqrte 3, 4
    .4byte 0xC0429010 # lfs f2, lbl_8053BFB0@sda21(r0)
    .4byte 0xC0029000 # lfs f0, lbl_8053BFA0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 27, 0
L_800FA4FC:
    psq_l 1, 0x38(1), 0, 0
    psq_l 0, 0x40(1), 1, 0
    ps_muls0 1, 1, 27
    ps_muls0 0, 0, 27
    psq_st 1, 0x38(1), 0, 0
    psq_st 0, 0x40(1), 1, 0
L_800FA514:
    .4byte 0xC34290AC # lfs f26, lbl_8053C04C@sda21(r0)
    psq_l 0, 0x40(1), 1, 0
    psq_l 1, 0x38(1), 0, 0
    ps_muls0 0, 0, 26
    ps_muls0 1, 1, 26
    psq_st 0, 0x40(1), 1, 0
    psq_st 1, 0x38(1), 0, 0
    lfs 0, 0x40(1)
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
L_800FA53C:
    lfs 2, 0x10(29)
    addi 3, 1, 0x38
    .4byte 0xC0229058 # lfs f1, lbl_8053BFF8@sda21(r0)
    lfs 3, 0x14(29)
    lfs 0, 0xc(29)
    fsubs 1, 2, 1
    psq_l 2, 0x4c(1), 1, 0
    stfs 3, 0x40(1)
    psq_l 4, 0x44(1), 0, 0
    psq_l 3, 0x8(3), 1, 0
    stfs 0, 0x38(1)
    ps_sub 0, 3, 2
    stfs 1, 0x3c(1)
    psq_l 1, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    ps_sub 0, 1, 4
    psq_st 0, 0x0(3), 0, 0
    bl PSVECMag
    .4byte 0xC00290A8 # lfs f0, lbl_8053C048@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408000B0 # bge .L_800FA63C
    psq_l 2, 0x38(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 21, 0x40(1)
    ps_mul 2, 2, 2
    .4byte 0xC0229074 # lfs f1, lbl_8053C014@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 4, 21, 21, 2
    fmuls 0, 1, 0
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_800FA614
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800FA5D8
    fmr 25, 4
    .4byte 0x48000028 # b .L_800FA5FC
L_800FA5D8:
    frsqrte 3, 4
    .4byte 0xC0429010 # lfs f2, lbl_8053BFB0@sda21(r0)
    .4byte 0xC0029000 # lfs f0, lbl_8053BFA0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 25, 0
L_800FA5FC:
    psq_l 1, 0x38(1), 0, 0
    psq_l 0, 0x40(1), 1, 0
    ps_muls0 1, 1, 25
    ps_muls0 0, 0, 25
    psq_st 1, 0x38(1), 0, 0
    psq_st 0, 0x40(1), 1, 0
L_800FA614:
    .4byte 0xC30290AC # lfs f24, lbl_8053C04C@sda21(r0)
    psq_l 0, 0x40(1), 1, 0
    psq_l 1, 0x38(1), 0, 0
    ps_muls0 0, 0, 24
    ps_muls0 1, 1, 24
    psq_st 0, 0x40(1), 1, 0
    psq_st 1, 0x38(1), 0, 0
    lfs 0, 0x40(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_800FA63C:
    psq_l 31, 0x118(1), 0, 0
    lfd 31, 0x110(1)
    psq_l 30, 0x108(1), 0, 0
    lfd 30, 0x100(1)
    psq_l 29, 0xf8(1), 0, 0
    lfd 29, 0xf0(1)
    psq_l 28, 0xe8(1), 0, 0
    lfd 28, 0xe0(1)
    psq_l 27, 0xd8(1), 0, 0
    lfd 27, 0xd0(1)
    psq_l 26, 0xc8(1), 0, 0
    lfd 26, 0xc0(1)
    psq_l 25, 0xb8(1), 0, 0
    lfd 25, 0xb0(1)
    psq_l 24, 0xa8(1), 0, 0
    lfd 24, 0xa0(1)
    psq_l 23, 0x98(1), 0, 0
    lfd 23, 0x90(1)
    psq_l 22, 0x88(1), 0, 0
    lfd 22, 0x80(1)
    psq_l 21, 0x78(1), 0, 0
    lfd 21, 0x70(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 0, 0x124(1)
    lwz 29, 0x64(1)
    mtlr 0
    addi 1, 1, 0x120
    blr

