# fn_800FB070: one of the jumptable_8049C6F0 state handlers exposed by
# fn_800FABC0's main update (this->0x230's state 6, per that landing's
# case-order inference) - a "falling/settling with retry" tick.
# Applies gravity to velocity.y (`this->0x44`) and integrates
# position += velocity (paired-single, `this->0xc/0x14` += `0x3c/0x44`),
# clamping to the ground plane and zeroing velocity on landing.
# Decrements the cooldown byte `this->0x256`. Reads the event-script
# opcode `this->0x278` (the SAME field `fn_800FA6B0` drives) - if it's
# 3 or 6, stashes `this->0xb0=0x10`, else `0x4` (the same "command
# slot" convention seen in `fn_800FA944`). Recomputes the anchor-
# scaled position fields (`0x60-0x8c`, matching the shape already
# documented for `fn_800F8548`/`fn_800F9F54`). Runs a wrap-around
# sub-counter (`this->0x268`) and a longer elapsed-frame counter
# (`this->0x264`) against a 280-frame(`0x118`) timeout: on timeout,
# resets state and re-arms `this->0x230=6` (this handler itself),
# plays effect `0x4002b` via the CONFIRMED `fn_801F0E34`, and
# classifies elapsed real-time (via `this->0x108`) into
# `this->0x257` (2 or 3). Before the timeout, calls a NEW
# `fn_801F2FAC(this)` gate; if true, arms two NEW duration fields
# (`this->0xd8`/`0xdc=0x14`), resets velocity, plays effect `0x40005`,
# then calls the CONFIRMED sound-handle-create primitive
# `fn_8013CC50` TWICE with the position pointer (`&this->0xc`) and two
# distinct sound IDs (`0x4eb`, `0x4ec`, looped) - see
# project_fsa_effect_playback_primitive.md for that primitive's
# established signature. Finally, if `this->0x108<=10`, invokes the
# recurring "self-notify" virtual method (vtable slot `0x24`). Needs
# `-mgekko`. Not yet cross-identified against the 195-entry dispatch
# table.
.section extab, "a"
.balign 4
.global etb_800057E8
etb_800057E8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800057E8, 8

.section extabindex, "a"
.balign 4
.global eti_80011B0C
eti_80011B0C:
    .4byte fn_800FB070
    .4byte 0x000002BC
    .4byte etb_800057E8
.size eti_80011B0C, 12

.text
.balign 4
.global fn_800FB070

fn_800FB070:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC0229020 # lfs f1, lbl_8053BFC0@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    lfs 2, 0x44(3)
    fsubs 1, 2, 1
    stfs 1, 0x44(3)
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x14(3)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800FB0D0
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
L_800FB0D0:
    lbz 3, 0x256(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_800FB0E4
    subi 0, 3, 0x1
    stb 0, 0x256(31)
L_800FB0E4:
    lbz 0, 0x278(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_800FB0F8
    cmplwi 0, 0x6
    .4byte 0x40820010 # bne .L_800FB104
L_800FB0F8:
    li 0, 0x10
    stw 0, 0xb0(31)
    .4byte 0x4800000C # b .L_800FB10C
L_800FB104:
    li 0, 0x4
    stw 0, 0xb0(31)
L_800FB10C:
    lfs 2, 0x26c(31)
    .4byte 0xC02290B4 # lfs f1, lbl_8053C054@sda21(r0)
    .4byte 0xC00290B8 # lfs f0, lbl_8053C058@sda21(r0)
    fmuls 3, 1, 2
    .4byte 0xC02290BC # lfs f1, lbl_8053C05C@sda21(r0)
    fmuls 4, 0, 2
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fmuls 1, 1, 2
    stfs 3, 0x60(31)
    stfs 4, 0x64(31)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 3, 0x80(31)
    stfs 4, 0x84(31)
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
    lwz 3, 0x268(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_800FB178
    addi 3, 3, 0x2000
    lis 0, 0x1
    stw 3, 0x268(31)
    lwz 3, 0x268(31)
    cmplw 3, 0
    .4byte 0x4081000C # ble .L_800FB178
    li 0, 0x0
    stw 0, 0x268(31)
L_800FB178:
    lwz 5, 0x264(31)
    mr 3, 31
    li 4, 0x1
    addi 0, 5, 0x1
    stw 0, 0x264(31)
    bl fn_801F3D94
    cmpwi 3, 0x1
    .4byte 0x41820184 # beq .L_800FB318
    lwz 0, 0x264(31)
    cmpwi 0, 0x118
    .4byte 0x418000C0 # blt .L_800FB260
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
    .4byte 0x4082004C # bne .L_800FB248
    lwz 3, 0x108(31)
    lis 0, 0x4330
    stw 0, 0x8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8629038 # lfd f3, lbl_8053BFD8@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC02290DC # lfs f1, lbl_8053C07C@sda21(r0)
    lfd 2, 0x8(1)
    .4byte 0xC0029024 # lfs f0, lbl_8053BFC4@sda21(r0)
    fsubs 2, 2, 3
    fdivs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_800FB240
    li 0, 0x3
    stb 0, 0x257(31)
    .4byte 0x4800000C # b .L_800FB248
L_800FB240:
    li 0, 0x2
    stb 0, 0x257(31)
L_800FB248:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x2b
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000BC # b .L_800FB318
L_800FB260:
    mr 3, 31
    bl fn_801F2FAC
    clrlwi. 0, 3, 24
    .4byte 0x418200AC # beq .L_800FB318
    li 5, 0x14
    lis 4, 0x4
    stw 5, 0xd8(31)
    li 0, 0x1
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    mr 3, 31
    stw 5, 0xdc(31)
    addi 4, 4, 0x5
    li 5, 0x0
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stw 0, 0x268(31)
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    li 5, 0x4eb
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    li 5, 0x4ec
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x108(31)
    cmpwi 0, 0xa
    .4byte 0x41810018 # bgt .L_800FB318
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_800FB318:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

