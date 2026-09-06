# fn_800FB32C: another jumptable_8049C6F0 state handler - the
# container's "impact/landing" tick. Unconditionally calls the
# CONFIRMED `fn_800FA1A4` inter-instance spacing physics first, then
# runs the SAME gravity+paired-single-integration+ground-clamp idiom
# as `fn_800FB070`. On landing (position.y reaches 0), branches on the
# elapsed-time category `this->0x257` (set by earlier handlers):
# category 0 re-registers the embedded sub-object (`this+0x290`, see
# fn_800FABC0's correction) into the spatial system via the CONFIRMED
# `fn_802F601C`, calls `GetRoomConfigRecord`+a NEW `fn_802D79E8` (settings-
# adjacent) and a NEW `fn_80134DE4(lbl_8053AAF8,2,0)`
# (player-registry-adjacent), then plays a 4-SOUND landing-crash burst
# (`0x4e6`-`0x4e9`) via the CONFIRMED `fn_8013CC50`; other categories
# call a NEW LOCAL sibling `fn_800FB6E0(this, category==4 ? 1 : 0)`
# (plausibly a despawn/cleanup trigger) plus one more sound
# (`0x4ed`). After the landing branch, snaps position.y to exactly 0.
#
# Independent of landing, calls a NEW `fn_801F2618(this,&stack,0)`
# (the SAME still-unconfirmed "at rest"-style gate already flagged in
# `fn_800F8BAC`'s tail); if true, applies a weighted-sum homing
# adjustment to velocity (a simpler, non-frsqrte blend, distinct from
# the fast-inverse-sqrt idiom used elsewhere), then a NEW
# `fn_80093340(velX, velZ)` - plausibly an atan2-style "angle from
# vector" helper - whose result is stored as a new u16 facing field
# `this->0x262`. Finally sets/clears bit 0 of `this->0x238` based on
# the sign of the resulting vertical velocity. Needs `-mgekko`. Not
# yet cross-identified against the 195-entry dispatch table.
.section extab, "a"
.balign 4
.global etb_800057F0
etb_800057F0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800057F0, 8

.section extabindex, "a"
.balign 4
.global eti_80011B18
eti_80011B18:
    .4byte fn_800FB32C
    .4byte 0x000003B4
    .4byte etb_800057F0
.size eti_80011B18, 12

.text
.balign 4
.global fn_800FB32C

fn_800FB32C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    bl fn_800FA1A4
    lbz 3, 0x256(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_800FB358
    subi 0, 3, 0x1
    stb 0, 0x256(31)
L_800FB358:
    lbz 0, 0x278(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_800FB36C
    cmplwi 0, 0x6
    .4byte 0x40820010 # bne .L_800FB378
L_800FB36C:
    li 0, 0x10
    stw 0, 0xb0(31)
    .4byte 0x4800000C # b .L_800FB380
L_800FB378:
    li 0, 0x4
    stw 0, 0xb0(31)
L_800FB380:
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x1
    .4byte 0x4182033C # beq .L_800FB6CC
    lwz 3, 0x268(31)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_800FB3C8
    addi 0, 3, 0x800
    stw 0, 0x268(31)
    lwz 3, 0x268(31)
    cmplwi 3, 0x8000
    .4byte 0x4180031C # blt .L_800FB6CC
    lis 0, 0x1
    cmplw 3, 0
    .4byte 0x4081000C # ble .L_800FB3C8
    li 0, 0x0
    stw 0, 0x268(31)
L_800FB3C8:
    lfs 2, 0x44(31)
    .4byte 0xC02290E0 # lfs f1, lbl_8053C080@sda21(r0)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820200 # bne .L_800FB608
    lbz 0, 0x257(31)
    cmplwi 0, 0x0
    .4byte 0x408201A0 # bne .L_800FB5B4
    mr 3, 31
    li 4, 0x0
    bl fn_800FB6E0
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x2c
    li 5, 0x0
    bl fn_801F0E34
    psq_l 0, 0xc(31), 0, 0
    li 3, 0x1
    lfs 2, 0x14(31)
    li 0, 0x0
    psq_st 0, 0x8(1), 0, 0
    lwz 4, 0x4(31)
    lfs 0, 0x8(1)
    lfs 1, 0xc(1)
    stfs 0, 0x290(31)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stfs 1, 0x294(31)
    stfs 2, 0x298(31)
    stb 3, 0x29c(31)
    stfs 0, 0x2a0(31)
    sth 0, 0x2a4(31)
    stb 0, 0x2a6(31)
    stb 0, 0x29d(31)
    lbz 0, 0x29d(31)
    stfs 2, 0x10(1)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_800FB4B0
    .4byte 0x40800010 # bge .L_800FB49C
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_800FB4A8
    .4byte 0x48000028 # b .L_800FB4C0
L_800FB49C:
    cmpwi 0, 0x3
    .4byte 0x40800020 # bge .L_800FB4C0
    .4byte 0x48000014 # b .L_800FB4B8
L_800FB4A8:
    .4byte 0xC0229020 # lfs f1, lbl_8053BFC0@sda21(r0)
    .4byte 0x48000018 # b .L_800FB4C4
L_800FB4B0:
    .4byte 0xC0229024 # lfs f1, lbl_8053BFC4@sda21(r0)
    .4byte 0x48000010 # b .L_800FB4C4
L_800FB4B8:
    .4byte 0xC0229028 # lfs f1, lbl_8053BFC8@sda21(r0)
    .4byte 0x48000008 # b .L_800FB4C4
L_800FB4C0:
    .4byte 0xC0229020 # lfs f1, lbl_8053BFC0@sda21(r0)
L_800FB4C4:
    cmpwi 4, 0x8
    .4byte 0x40800020 # bge .L_800FB4E8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0x290
    .4byte 0xC042902C # lfs f2, lbl_8053BFCC@sda21(r0)
    li 5, 0x2
    lwz 3, 0x20(3)
    li 6, 0x0
    bl fn_802F601C
L_800FB4E8:
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC0229054 # lfs f1, lbl_8053BFF4@sda21(r0)
    .4byte 0xC042900C # lfs f2, lbl_8053BFAC@sda21(r0)
    bl fn_802D79E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x2
    li 5, 0x0
    bl fn_80134DE4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    li 5, 0x4e6
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    li 5, 0x4e7
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    li 5, 0x4e8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    li 5, 0x4e9
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000050 # b .L_800FB600
L_800FB5B4:
    cmplwi 0, 0x4
    .4byte 0x40820014 # bne .L_800FB5CC
    mr 3, 31
    li 4, 0x1
    bl fn_800FB6E0
    .4byte 0x48000010 # b .L_800FB5D8
L_800FB5CC:
    mr 3, 31
    li 4, 0x0
    bl fn_800FB6E0
L_800FB5D8:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    li 5, 0x4ed
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_800FB600:
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stfs 0, 0x14(31)
L_800FB608:
    mr 3, 31
    addi 4, 1, 0x14
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_800FB6A0
    lfs 1, 0x40(31)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x18(1)
    addi 3, 3, lbl_80534C00@l
    lfs 2, 0x3c(31)
    fmuls 0, 1, 0
    lfs 5, 0x14(1)
    lfs 4, 0x44(31)
    lfs 3, 0x1c(1)
    fmadds 1, 2, 5, 0
    .4byte 0xC0029050 # lfs f0, lbl_8053BFF0@sda21(r0)
    fmadds 1, 4, 3, 1
    fmuls 3, 0, 1
    fnmsubs 0, 3, 5, 2
    stfs 0, 0x3c(31)
    lfs 1, 0x18(1)
    lfs 0, 0x40(31)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x40(31)
    lfs 1, 0x1c(1)
    lfs 0, 0x44(31)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x44(31)
    lfs 1, 0x3c(31)
    lfs 2, 0x40(31)
    bl fn_80093340
    .4byte 0xC00290B0 # lfs f0, lbl_8053C050@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    sth 0, 0x262(31)
L_800FB6A0:
    lfs 1, 0x44(31)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810014 # ble .L_800FB6C0
    lwz 0, 0x238(31)
    ori 0, 0, 0x1
    stw 0, 0x238(31)
    .4byte 0x48000010 # b .L_800FB6CC
L_800FB6C0:
    lwz 0, 0x238(31)
    clrrwi 0, 0, 1
    stw 0, 0x238(31)
L_800FB6CC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

