/*
 * fn_801D41B8(this) (0x801D41B8-0x801D44D8, 0x320/800 bytes) - called by
 * fn_801D3CBC's state==0x17 branch when bit 9 of this->0x524 is set
 * (extab_801d3cbc.s). Computes a 3-float position (r1+0x8/0xc/0x10) via the
 * classic `0x4330....` double-bias int-to-double trick applied to this->0x24c
 * against a global table `lbl_8053EE00`, blended with EITHER self position
 * (this->0xc/0x10/0x14, when `fn_801CD2F8(this)` is true) OR a stored position
 * triple (this->0x570/0x574/0x578, when false) - structurally the same shape as
 * fn_801D3DAC's position-select logic (extab_801d3dac.s) but with a different
 * source pair.
 *
 * Feeds that position into fn_8022461C(posPtr, 0) then, if it returns 1, into
 * fn_80226850(posPtr, 0) and checks the result falls in [0x9b,0x9c] - both
 * first-seen, not yet landed, but shaped like real map/room-ID lookups (a
 * masked 16-bit code tested against a specific ID range - "am I in a specific
 * room/zone").
 *
 * If that zone check passes AND the position-select branch flag was set:
 * rebuilds the SAME 16-byte sequential index buffer + large spawn-parameter
 * struct byte-for-byte as fn_801D3DAC, looks up the SAME per-type settings-table
 * byte via the CONFIRMED GetRoomConfigRecord accessor (self type at this->0x4, offset
 * +0x131df), then UNCONDITIONALLY (no self-type<8 gate this time) virtual-calls
 * the same global registry singleton (`lbl_8053AAF8->0xa4`) and feeds the result
 * into fn_802F86CC - a 5TH real call site for the "spatial triad" (see
 * [[project_fsa_shared_effect_subsystem_crossref]]), now cross-confirmed with
 * the SAME (registry-result, posPtr, angle, outParams) argument shape used in
 * fn_801D3DAC.
 */

.section extab, "a"
.balign 4
.global etb_800085A0
etb_800085A0:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800085A0, 8

.section extabindex, "a"
.balign 4
.global eti_80015958
eti_80015958:
    .4byte fn_801D41B8
    .4byte 0x00000320
    .4byte etb_800085A0
.size eti_80015958, 12

.text
.balign 4
.global fn_801D41B8

fn_801D41B8:
    stwu 1, -0x80(1)
    mflr 0
    .4byte 0xC002C110 # lfs f0, lbl_8053F0B0@sda21(r0)
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    mr 29, 3
    lwz 3, 0x56c(3)
    stw 28, 0x70(1)
    li 28, 0x0
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_801D4274
    .4byte 0x8002BE60 # lwz r0, lbl_8053EE00@sda21(r0)
    lis 3, 0x4330
    lwz 4, 0x24c(29)
    li 31, 0x3e
    xoris 0, 0, 0x8000
    lfs 6, 0xc(29)
    stw 0, 0x5c(1)
    xoris 0, 4, 0x8000
    lfs 5, 0x10(29)
    stw 3, 0x58(1)
    .4byte 0xC842C108 # lfd f2, lbl_8053F0A8@sda21(r0)
    lfd 0, 0x58(1)
    .4byte 0xC022C104 # lfs f1, lbl_8053F0A4@sda21(r0)
    fsubs 0, 0, 2
    lfs 4, 0x14(29)
    stw 0, 0x54(1)
    .4byte 0xC062C100 # lfs f3, lbl_8053F0A0@sda21(r0)
    fdivs 0, 1, 0
    stw 3, 0x50(1)
    lfd 1, 0x50(1)
    stfs 6, 0x8(1)
    stfs 5, 0xc(1)
    stfs 4, 0x10(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 30, 0x64(1)
    .4byte 0x48000078 # b .L_801D42E8
L_801D4274:
    .4byte 0x8002BE60 # lwz r0, lbl_8053EE00@sda21(r0)
    lis 3, 0x4330
    lwz 4, 0x24c(29)
    li 31, 0x3f
    xoris 0, 0, 0x8000
    lfs 6, 0x570(29)
    stw 0, 0x5c(1)
    xoris 0, 4, 0x8000
    lfs 5, 0x574(29)
    stw 3, 0x58(1)
    .4byte 0xC842C108 # lfd f2, lbl_8053F0A8@sda21(r0)
    lfd 0, 0x58(1)
    .4byte 0xC022C104 # lfs f1, lbl_8053F0A4@sda21(r0)
    fsubs 0, 0, 2
    lfs 4, 0x578(29)
    stw 0, 0x64(1)
    .4byte 0xC062C100 # lfs f3, lbl_8053F0A0@sda21(r0)
    fdivs 0, 1, 0
    stw 3, 0x60(1)
    lfd 1, 0x60(1)
    stfs 6, 0x8(1)
    stfs 5, 0xc(1)
    stfs 4, 0x10(1)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fnmsubs 0, 1, 0, 3
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 30, 0x54(1)
L_801D42E8:
    addi 3, 1, 0x8
    li 4, 0x0
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_801D4328
    addi 3, 1, 0x8
    li 4, 0x0
    bl fn_80226850
    clrlwi 0, 3, 16
    cmpwi 0, 0x9d
    .4byte 0x40800014 # bge .L_801D4328
    cmpwi 0, 0x9b
    .4byte 0x40800008 # bge .L_801D4324
    .4byte 0x48000008 # b .L_801D4328
L_801D4324:
    li 28, 0x1
L_801D4328:
    clrlwi. 0, 28, 24
    .4byte 0x4182018C # beq .L_801D44B8
    clrlwi. 0, 30, 24
    .4byte 0x41820184 # beq .L_801D44B8
    li 0, -0x1
    addi 9, 1, 0x14
    stw 0, 0x24(1)
    li 10, 0x0
    stw 0, 0x28(1)
    .4byte 0x48000064 # b .L_801D43B0
L_801D4350:
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
L_801D43B0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801D4350
    li 6, 0x0
    li 7, -0x1
    stw 7, 0x24(1)
    li 5, 0x1
    li 4, 0x3
    li 3, 0x2
    stb 6, 0x42(1)
    li 0, 0xe
    lwz 28, 0x4(29)
    stw 7, 0x44(1)
    stw 6, 0x28(1)
    stw 6, 0x2c(1)
    stb 6, 0x30(1)
    stb 6, 0x31(1)
    stb 6, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stb 6, 0x37(1)
    stb 6, 0x38(1)
    stb 6, 0x39(1)
    stb 5, 0x3a(1)
    stw 4, 0x3c(1)
    stb 5, 0x40(1)
    stb 6, 0x41(1)
    stw 6, 0x48(1)
    stw 3, 0x4c(1)
    stw 0, 0x44(1)
    stb 6, 0x42(1)
    stb 30, 0x27(1)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801D4458
    li 0, 0x0
    stb 0, 0x33(1)
L_801D4458:
    lwz 3, 0x560(29)
    cmpwi 3, 0x4
    .4byte 0x4182000C # beq .L_801D446C
    addi 0, 3, 0xc
    stb 0, 0x1b(1)
L_801D446C:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80469488@ha
    addi 5, 3, lbl_80469488@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022C104 # lfs f1, lbl_8053F0A4@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 31
    fmr 2, 1
    addi 7, 1, 0x14
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
L_801D44B8:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    lwz 28, 0x70(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

