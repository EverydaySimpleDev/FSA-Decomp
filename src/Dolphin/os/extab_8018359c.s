.section extab, "a"
.balign 4
.global etb_800075EC
etb_800075EC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800075EC, 8

.section extabindex, "a"
.balign 4
.global eti_80014308
eti_80014308:
    .4byte fn_8018359C
    .4byte 0x0000067C
    .4byte etb_800075EC
.size eti_80014308, 12

.text
.balign 4
.global fn_8018359C

# fn_8018359C - update() override for "Class B" of the RUSA-repel
# movement-actor family (vtable lbl_804A1790, ctor fn_80202258, see
# extab_80202258.s). A near-twin of "Class A"'s fn_8018299C
# (extab_8018299c.s, ~59% structurally identical by direct diff) - see
# that file's banner for the shared shape (knockback/interrupt gates
# with linked-actor position+color sync via `this->0x270` here instead
# of `0x274`, velocity ease+integrate, RUSA registry init+repel,
# `fn_801EEC98` call, and an 8-state switch via a SEPARATE jump table
# `jumptable_804A17E4`).
#
# CONFIRMED real difference from Class A (not just field renumbering):
# where Class A's state-0-to-1 transition picks a FIXED direction from
# the 8-entry compass table (`lbl_8052EBC0`) and arms a constant
# 100-frame timer, Class B instead advances the CONFIRMED global PRNG
# (`lbl_8053AAF8->0xb4`, the Numerical Recipes LCG - see
# reference_fsa_global_prng.md) to compute a RANDOMIZED wait duration
# for `this->0x240`, then ALSO rolls a probability check against a
# threshold float (`lbl_8053DEF0`) to decide whether to skip straight
# to state 2 instead of waiting out the random timer. Also calls
# the CONFIRMED `fn_801F0E34(this, 0x4097, 0)` (extab_801f0e34.s - a
# "post a room-scoped notification" call, hitting only its generic
# default path for this code value) right before entering state 2,
# which Class A does not do. Otherwise follows the
# same move/pick-up(`0x1da`)/drop(`0x1db`)-via-`fn_8013CC50` cycle as
# Class A, releasing its `this->0x270` link the same way.
#
# Individual state-to-state transition addresses beyond the ones shown
# here were not exhaustively hand-traced (see fn_8018299C's banner for
# the same caveat, which applies equally here).
fn_8018359C:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC002AF44 # lfs f0, lbl_8053DEE4@sda21(r0)
    li 4, 0x0
    stw 0, 0x34(1)
    li 0, -0x1
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    sth 4, 0x8(1)
    li 4, 0x1
    stfs 0, 0x14(1)
    stw 0, 0x10(1)
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x4182006C # beq .L_80183644
    lwz 3, 0x270(31)
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80183630
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_80183630
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x270(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
L_80183630:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x480005C0 # b .L_80183C00
L_80183644:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4182007C # beq .L_801836C8
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_801836C8
    lwz 3, 0x270(31)
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_801836B4
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_801836B4
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x270(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
L_801836B4:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x4800053C # b .L_80183C00
L_801836C8:
    lfs 1, 0x264(31)
    addi 3, 31, 0x3c
    .4byte 0xC042AF48 # lfs f2, lbl_8053DEE8@sda21(r0)
    .4byte 0xC062AF40 # lfs f3, lbl_8053DEE0@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x268(31)
    addi 3, 31, 0x40
    .4byte 0xC042AF48 # lfs f2, lbl_8053DEE8@sda21(r0)
    .4byte 0xC062AF40 # lfs f3, lbl_8053DEE0@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl RusaRegistry_GetOrInit
    addi 4, 31, 0xc
    bl fn_80212AF0
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 7, 1, 0x14
    addi 8, 1, 0x10
    li 6, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80183760
    mr 3, 31
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_80183760:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(31)
    cmplwi 0, 0x7
    .4byte 0x4181044C # bgt .L_80183BC4
    lis 3, jumptable_804A17E4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A17E4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x25c(31)
    cmpwi 0, 0x1
    .4byte 0x4082002C # bne .L_801837C8
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182040C # beq .L_80183BC4
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000400 # b .L_80183BC4
L_801837C8:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002AF40 # lfs f0, lbl_8053DEE0@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x1
    .4byte 0xC042AF4C # lfs f2, lbl_8053DEEC@sda21(r0)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 3, 0x1c(1)
    addi 3, 3, 0x1e
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820394 # bne .L_80183BC4
    lfs 1, 0x14(1)
    .4byte 0xC002AF50 # lfs f0, lbl_8053DEF0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810384 # bgt .L_80183BC4
    li 0, 0x2
    stw 0, 0x230(31)
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x97
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0xb8(31)
    lwz 0, 0x270(31)
    cmplwi 0, 0x0
    .4byte 0x408200B8 # bne .L_80183928
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AF40 # lfs f1, lbl_8053DEE0@sda21(r0)
    li 5, 0x1da
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 30, 3
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_801838CC
    lbz 4, 0x23a(31)
    lbz 3, 0x239(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(30)
    stb 3, 0xb9(30)
    stb 4, 0xba(30)
L_801838CC:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AF40 # lfs f1, lbl_8053DEE0@sda21(r0)
    li 5, 0x1db
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x270(31)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_80183928
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x270(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
L_80183928:
    .4byte 0xC002AF44 # lfs f0, lbl_8053DEE4@sda21(r0)
    li 5, 0x8
    li 4, 0x0
    li 3, 0x2
    stfs 0, 0x26c(31)
    li 0, 0x3
    stfs 0, 0x268(31)
    stfs 0, 0x264(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 5, 0x23c(31)
    stw 4, 0x248(31)
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820258 # bne .L_80183BC4
    lwz 3, 0x270(31)
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_801839C4
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_801839C4
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x270(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
L_801839C4:
    li 0, 0x4
    stw 0, 0x230(31)
    lis 3, 0x1
    li 6, 0x8
    addi 0, 3, 0x1101
    li 5, 0xc8
    stw 0, 0xb0(31)
    li 4, 0x0
    li 3, 0x1
    li 0, 0x5
    stw 6, 0x23c(31)
    stw 5, 0x240(31)
    stw 4, 0x248(31)
    stw 4, 0x254(31)
    stw 3, 0x258(31)
    stw 0, 0x230(31)
    lwz 3, 0x270(31)
    cmplwi 3, 0x0
    .4byte 0x4182004C # beq .L_80183A58
    lfs 0, 0xc(31)
    stfs 0, 0xa4(3)
    lfs 0, 0x10(31)
    stfs 0, 0xa8(3)
    lfs 0, 0x14(31)
    stfs 0, 0xac(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_80183A58
    lbz 5, 0x23a(31)
    lbz 4, 0x239(31)
    lwz 3, 0x270(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(3)
    stb 4, 0xb9(3)
    stb 5, 0xba(3)
L_80183A58:
    lhz 4, 0x8(1)
    addi 3, 31, 0x260
    li 5, 0x1
    li 6, 0x200
    bl fn_801F714C
    lhz 0, 0x260(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022AF54 # lfs f1, lbl_8053DEF4@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x264(31)
    lhz 0, 0x260(31)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x268(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_80183AD0
    lwz 3, 0x254(31)
    li 0, 0x8
    addi 3, 3, 0x1
    stw 3, 0x254(31)
    lwz 3, 0x254(31)
    clrlwi 3, 3, 31
    stw 3, 0x254(31)
    stw 0, 0x23c(31)
L_80183AD0:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408200EC # bne .L_80183BC4
    li 0, 0x6
    stw 0, 0x230(31)
    lwz 0, 0x270(31)
    cmplwi 0, 0x0
    .4byte 0x4182007C # beq .L_80183B68
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022AF40 # lfs f1, lbl_8053DEE0@sda21(r0)
    li 5, 0x1da
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 30, 3
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_80183B48
    lbz 4, 0x23a(31)
    lbz 3, 0x239(31)
    lbz 0, 0x238(31)
    stb 0, 0xb8(30)
    stb 3, 0xb9(30)
    stb 4, 0xba(30)
L_80183B48:
    lwz 5, 0x270(31)
    li 3, 0x1
    li 0, 0x0
    lwz 4, 0xf4(5)
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x270(31)
L_80183B68:
    li 0, 0x1000
    .4byte 0xC002AF44 # lfs f0, lbl_8053DEE4@sda21(r0)
    stw 0, 0xb0(31)
    li 5, 0x0
    li 4, 0x8
    li 3, 0x2
    stfs 0, 0x26c(31)
    li 0, 0x7
    stfs 0, 0x268(31)
    stfs 0, 0x264(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 5, 0x258(31)
    stw 4, 0x23c(31)
    stw 5, 0x248(31)
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80183BC4
    li 0, 0x0
    stw 0, 0x230(31)
L_80183BC4:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80183BD8
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80183BD8:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80183BEC
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_80183BEC:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80183C00
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80183C00:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
