/*
 * fn_80100D28(this): the fn_8010089C-class's main update() method (0xE20/3616
 * bytes, own exception vector, -mgekko for psq_l/psq_st). Same structural
 * family as fn_800FF6F8 (the OTHER class's update()): dispatches on
 * this->0x230 (state 0-10) via jumptable_8049C940. Confirmed structure,
 * survey-level (not full per-state semantics):
 *  - Reflows position floats (this->0xc/0x10/0x14/0x60/0x64/0x68/0x6c),
 *    advances a mod-3 counter (this->0x245/0x246 against byte table
 *    lbl_80539EB0) - same idiom as fn_800FF6F8's this->0x234/0x23c pair.
 *  - Repeatedly validates a handle at this->0x238 via the same family of
 *    status-check functions seen in fn_800FF6F8 (fn_802300EC/fn_8038AD24/
 *    fn_803865B8/fn_8037EFB4/fn_80384C58/fn_80388CAC).
 *  - Uses the confirmed PRNG + fn_80093340 (angle-from-vector) to classify
 *    direction into this->0x247 via the same 0x2000/0x6000/0xa000/0xe000
 *    quadrant thresholds fn_800FF6F8 used for this->0x235 - CONFIRMS this
 *    quadrant-classification idiom is shared across both classes/files,
 *    not a one-off.
 *  - Iterates this->0x270/0x280 (4 slots, same shape as fn_801003F4's
 *    ranking arrays) and this->0x268 (per-slot 16-bit value) to find a
 *    max and toggle highlight flags via GetRoomConfigRecord/fn_802D7844 - the SAME
 *    highlight-toggle idiom fn_801003F4 used, now inlined directly into
 *    this class's update() instead of a separate helper.
 *  - Calls fn_801F9484 (confirmed effect-registry function, corrected
 *    signature per project_fsa_shared_effect_subsystem_crossref.md) and
 *    the confirmed effect-spawn subsystem (SpatialRegistry_GetBase/fn_801F68E0/
 *    fn_801F6884) on several state transitions.
 *  - Performs one true virtual call through this->vtable[0xc] (this->0x0
 *    -> +0x30, mtctr/bctrl), matching fn_800FF6F8's single virtual-call
 *    pattern exactly.
 *  - Touches the same global struct via lbl_8053AB10->0x24 (+0x7f4..+0x804
 *    one-shot guard, appears 4x) seen in fn_800FF6F8 - same shared global,
 *    not class-specific.
 * This function and fn_800FF6F8 are near-structural-twins (same idioms,
 * same shared globals/utilities, same virtual-call shape) despite being
 * different classes - strong evidence they're both instances of a shared
 * base/pattern (e.g. a common "timed target minigame" base class) rather
 * than coincidentally similar code. Exact per-state game semantics not
 * fully resolved.
 */

.section extab, "a"
.balign 4
.global etb_800058F0
etb_800058F0:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800058F0, 8

.section extabindex, "a"
.balign 4
.global eti_80011C98
eti_80011C98:
    .4byte fn_80100D28
    .4byte 0x00000E20
    .4byte etb_800058F0
.size eti_80011C98, 12

.text
.balign 4
.global fn_80100D28

fn_80100D28:
    stwu 1, -0xc0(1)
    mflr 0
    .4byte 0xC00291C0 # lfs f0, lbl_8053C160@sda21(r0)
    stw 0, 0xc4(1)
    stw 31, 0xbc(1)
    mr 31, 3
    addi 3, 1, 0x64
    stw 30, 0xb8(1)
    stw 29, 0xb4(1)
    stw 28, 0xb0(1)
    psq_l 6, 0xc(31), 0, 0
    lfs 5, 0x14(31)
    lfs 1, 0x60(31)
    psq_st 6, 0x80(1), 0, 0
    stfs 1, 0x64(1)
    lfs 2, 0x84(1)
    lfs 4, 0x64(31)
    fsubs 0, 2, 0
    stfs 5, 0x88(1)
    stfs 4, 0x68(1)
    lfs 2, 0x68(31)
    stfs 0, 0x84(1)
    stfs 2, 0x6c(1)
    lfs 3, 0x6c(31)
    psq_st 6, 0x74(1), 0, 0
    stfs 3, 0x70(1)
    lfs 0, 0xc(31)
    stfs 5, 0x7c(1)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x64(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x6c(1)
    fadds 0, 3, 2
    stfs 1, 0x68(1)
    stfs 0, 0x70(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lbz 4, 0x245(31)
    .4byte 0x386D82F0 # li r3, lbl_80539EB0@sda21
    addi 0, 4, 0x1
    stb 0, 0x245(31)
    lbz 4, 0x246(31)
    lbz 5, 0x245(31)
    lbzx 0, 3, 4
    cmplw 5, 0
    .4byte 0x40820028 # bne .L_80100E10
    addi 0, 4, 0x1
    stb 0, 0x246(31)
    lbz 0, 0x246(31)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_80100E08
    li 0, 0x0
    stb 0, 0x246(31)
L_80100E08:
    li 0, 0x0
    stb 0, 0x245(31)
L_80100E10:
    lwz 0, 0x230(31)
    cmplwi 0, 0xa
    .4byte 0x41810D10 # bgt .L_80101B28
    lis 3, jumptable_8049C940@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049C940@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 4, 0x4(31)
    addi 3, 1, 0x64
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x238(31)
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x41800CC8 # blt .L_80101B28
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820CBC # beq .L_80101B28
    lbz 0, 0x244(31)
    li 4, 0x31f
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80100E84
    li 4, 0x328
L_80100E84:
    lwz 5, 0x198(31)
    addi 7, 1, 0x58
    lwz 6, 0x4(31)
    li 8, 0x0
    psq_l 1, 0x80(1), 0, 0
    lfs 0, 0x88(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x60(1)
    lwz 3, 0x238(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820C78 # beq .L_80101B28
    li 28, 0x0
L_80100EB8:
    mr 3, 28
    bl fn_802308E0
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFF0 # blt .L_80100EB8
    li 6, 0x0
    li 0, 0x1
    stb 6, 0x25c(31)
    mr 3, 31
    addi 4, 1, 0x34
    addi 5, 1, 0x18
    sth 6, 0x260(31)
    stb 6, 0x25d(31)
    sth 6, 0x262(31)
    stb 6, 0x25e(31)
    sth 6, 0x264(31)
    stb 6, 0x25f(31)
    sth 6, 0x266(31)
    stw 0, 0x230(31)
    lwz 6, 0x238(31)
    addi 6, 6, 0x1
    bl fn_801EE558
    lfs 1, 0x18(1)
    .4byte 0xC00291B0 # lfs f0, lbl_8053C150@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800C0C # bge .L_80101B28
    lfs 1, 0x34(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x38(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC00291C4 # lfs f0, lbl_8053C164@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 0, 0x94(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80100F64
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80100F70
L_80100F64:
    li 0, 0x3
    stb 0, 0x247(31)
    .4byte 0x48000BBC # b .L_80101B28
L_80100F70:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80100F8C
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80100F8C
    li 0, 0x1
    stb 0, 0x247(31)
    .4byte 0x48000BA0 # b .L_80101B28
L_80100F8C:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80100FA8
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80100FA8
    li 0, 0x2
    stb 0, 0x247(31)
    .4byte 0x48000B84 # b .L_80101B28
L_80100FA8:
    li 0, 0x0
    stb 0, 0x247(31)
    .4byte 0x48000B78 # b .L_80101B28
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_80100FF8
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x74(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x78(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x7c(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_80100FF8:
    lwz 4, 0x4(31)
    addi 3, 1, 0x64
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x238(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820B0C # beq .L_80101B28
    lwz 3, 0x238(31)
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x41820084 # beq .L_801010B0
    .4byte 0x40800AF8 # bge .L_80101B28
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_80101040
    .4byte 0x48000AEC # b .L_80101B28
L_80101040:
    lbz 0, 0x244(31)
    li 4, 0x320
    lwz 3, 0x238(31)
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_80101058
    li 4, 0x329
L_80101058:
    bl fn_8038470C
    li 30, 0x0
    mr 29, 31
L_80101064:
    mr 3, 30
    bl fn_802373EC
    stw 3, 0x270(29)
    mr 3, 30
    bl fn_8023725C
    stw 3, 0x280(29)
    mr 3, 30
    li 4, 0x5
    li 5, 0x1
    bl fn_802372F8
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFCC # blt .L_80101064
    li 3, 0x3
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    .4byte 0x48000A7C # b .L_80101B28
L_801010B0:
    lwz 3, 0x238(31)
    li 4, 0x321
    bl fn_8038470C
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    .4byte 0x48000A5C # b .L_80101B28
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_80101114
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x74(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x78(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x7c(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_80101114:
    lwz 4, 0x4(31)
    addi 3, 1, 0x64
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x238(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418209EC # beq .L_80101B28
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x230(31)
    stw 0, 0x234(31)
    bl fn_80230534
    .4byte 0x480009D4 # b .L_80101B28
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8010119C
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x74(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x78(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x7c(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_8010119C:
    lbz 0, 0x247(31)
    cmplwi 0, 0x3
    .4byte 0x40820018 # bne .L_801011BC
    lfs 1, 0x258(31)
    .4byte 0xC00291A0 # lfs f0, lbl_8053C140@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x258(31)
    .4byte 0x48000014 # b .L_801011CC
L_801011BC:
    lfs 1, 0x258(31)
    .4byte 0xC00291A0 # lfs f0, lbl_8053C140@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x258(31)
L_801011CC:
    lfs 1, 0x258(31)
    .4byte 0xC00291C8 # lfs f0, lbl_8053C168@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_801011E8
    stfs 0, 0x258(31)
    .4byte 0x48000018 # b .L_801011FC
L_801011E8:
    .4byte 0xC00291CC # lfs f0, lbl_8053C16C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801011FC
    stfs 0, 0x258(31)
L_801011FC:
    li 3, 0x0
    bl fn_8023DE58
    mr 4, 3
    lwz 3, 0x238(31)
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x238(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418208FC # beq .L_80101B28
    li 0, 0x4
    li 4, 0x0
    stw 0, 0x230(31)
    li 0, 0xe10
    li 3, 0x0
    stw 4, 0x234(31)
    stw 0, 0x23c(31)
    bl fn_80230534
    bl SetSessionFlag_0x6d
    .4byte 0x480008D4 # b .L_80101B28
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 3, 0x4330
    lis 4, 0x8889
    lwz 7, 0x234(31)
    lwz 6, 0x4(5)
    subi 0, 4, 0x7777
    mulhw 8, 0, 7
    stw 3, 0x90(1)
    lhz 9, 0x6(6)
    li 5, 0xff
    lhz 0, 0x4(6)
    li 6, 0x0
    xoris 4, 0, 0x8000
    xoris 0, 9, 0x8000
    stw 4, 0x94(1)
    add 4, 8, 7
    .4byte 0xC84291B8 # lfd f2, lbl_8053C158@sda21(r0)
    srawi 4, 4, 5
    lfd 0, 0x90(1)
    srwi 7, 4, 31
    stw 0, 0x9c(1)
    add 0, 4, 7
    fsubs 1, 0, 2
    .4byte 0xC08291D0 # lfs f4, lbl_8053C170@sda21(r0)
    stw 3, 0x98(1)
    subfic 4, 0, 0x3
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 7, 0x1
    lfd 0, 0x98(1)
    fmuls 1, 4, 1
    .4byte 0xC06291D4 # lfs f3, lbl_8053C174@sda21(r0)
    li 8, 0x1
    fsubs 0, 0, 2
    fmuls 2, 4, 0
    bl fn_8043CB24
    lis 3, 0x8889
    lwz 4, 0x234(31)
    subi 0, 3, 0x7777
    mulhw 0, 0, 4
    add 0, 0, 4
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf. 0, 0, 4
    .4byte 0x40820010 # bne .L_8010131C
    mr 3, 31
    li 4, 0x3f
    bl fn_801F0D20
L_8010131C:
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0xb4
    .4byte 0x408207F8 # bne .L_80101B28
    li 3, 0x5
    li 0, 0x0
    stw 3, 0x230(31)
    mr 3, 31
    li 4, 0x3a
    stw 0, 0x234(31)
    bl fn_801F0D20
    bl GetRoomConfigRecord
    lbz 4, 0x248(31)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x80CD93C0 # lwz r6, lbl_8053AF80@sda21(r0)
    lis 3, 0x100
    addi 4, 3, 0x7
    li 5, 0x1
    lwz 0, 0x58(6)
    li 6, 0x0
    stw 0, 0x240(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458FF0
    .4byte 0x480007A0 # b .L_80101B28
    lwz 4, 0x23c(31)
    lis 3, 0x8889
    subi 0, 3, 0x7777
    subi 3, 4, 0x1
    stw 3, 0x23c(31)
    lwz 5, 0x23c(31)
    mulhw 0, 0, 5
    add 3, 0, 5
    srawi 0, 3, 5
    srwi 4, 0, 31
    add 0, 0, 4
    cmpwi 0, 0xa
    .4byte 0x41810038 # bgt .L_801013F4
    srawi 0, 3, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf 0, 0, 5
    cmpwi 0, 0x3b
    .4byte 0x4082001C # bne .L_801013F4
    mr 3, 31
    li 4, 0x3f
    bl fn_801F0D20
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_80458508
L_801013F4:
    lis 3, 0x8889
    lwz 0, 0x23c(31)
    subi 3, 3, 0x7777
    mulhw 3, 3, 0
    add 0, 3, 0
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    cmpwi 0, 0xa
    .4byte 0x40820018 # bne .L_80101430
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x326
    li 5, 0x0
    li 6, 0x0
    bl fn_8043D67C
L_80101430:
    lwz 4, 0x234(31)
    lis 3, lbl_8049C8D8@ha
    addi 3, 3, lbl_8049C8D8@l
    addi 0, 4, 0x1
    stw 0, 0x234(31)
    lbz 0, 0x244(31)
    lwz 4, 0x234(31)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    cmpw 4, 0
    .4byte 0x41800188 # blt .L_801015E0
    lwz 0, 0x23c(31)
    cmpwi 0, 0x78
    .4byte 0x4180017C # blt .L_801015E0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lis 0, 0x4330
    lis 4, 0x19
    lis 3, 0x5555
    lwz 6, 0xb4(7)
    addi 5, 4, 0x660d
    .4byte 0xC14291A0 # lfs f10, lbl_8053C140@sda21(r0)
    addi 3, 3, 0x5556
    mullw 4, 6, 5
    .4byte 0xC08291D8 # lfs f4, lbl_8053C178@sda21(r0)
    stw 0, 0x90(1)
    .4byte 0xC90291B8 # lfd f8, lbl_8053C158@sda21(r0)
    .4byte 0xC06291DC # lfs f3, lbl_8053C17C@sda21(r0)
    .4byte 0xC12291E0 # lfs f9, lbl_8053C180@sda21(r0)
    addis 4, 4, 0x3c6f
    .4byte 0xC0C291E4 # lfs f6, lbl_8053C184@sda21(r0)
    subi 4, 4, 0xca1
    .4byte 0xC0A291E8 # lfs f5, lbl_8053C188@sda21(r0)
    stw 4, 0xb4(7)
    .4byte 0xC02291EC # lfs f1, lbl_8053C18C@sda21(r0)
    lwz 4, 0xb4(7)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    srwi 4, 4, 9
    stw 0, 0xa0(1)
    oris 4, 4, 0x3f80
    lwz 0, 0xb4(6)
    stw 4, 0x10(1)
    mullw 4, 0, 5
    .4byte 0xC00291F0 # lfs f0, lbl_8053C190@sda21(r0)
    lfs 2, 0x10(1)
    fsubs 2, 2, 10
    addis 4, 4, 0x3c6f
    fmuls 2, 4, 2
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    fctiwz 4, 2
    lwz 0, 0xb4(6)
    lfs 2, 0x24c(31)
    srwi 0, 0, 9
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    stfd 4, 0x98(1)
    oris 0, 0, 0x3f80
    fadds 7, 3, 2
    lwz 4, 0x9c(1)
    stw 0, 0xc(1)
    mulhw 3, 3, 4
    lfs 2, 0xc(1)
    fsubs 2, 2, 10
    srwi 0, 3, 31
    add 0, 3, 0
    fmsubs 4, 6, 2, 5
    mulli 3, 0, 0x3
    xoris 0, 0, 0x8000
    stw 0, 0xa4(1)
    subf 0, 3, 4
    xoris 0, 0, 0x8000
    lfd 2, 0xa0(1)
    stw 0, 0x94(1)
    fsubs 3, 2, 8
    lfd 2, 0x90(1)
    fsubs 2, 2, 8
    fmadds 2, 9, 2, 7
    fadds 2, 2, 4
    stfs 2, 0x28(1)
    lwz 0, 0xb4(6)
    mullw 3, 0, 5
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    lfs 2, 0x250(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    fsubs 2, 2, 1
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fmadds 2, 9, 3, 2
    stfs 0, 0x30(1)
    fsubs 0, 1, 10
    fmsubs 0, 6, 0, 5
    fadds 0, 2, 0
    stfs 0, 0x2c(1)
    bl SpatialRegistry_GetBase
    lwz 7, 0x198(31)
    lis 4, 0x4d47
    lwz 5, 0x4(31)
    addi 4, 4, 0x5941
    addi 6, 1, 0x28
    addis 7, 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 0, 0x0
    stw 0, 0x234(31)
L_801015E0:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820540 # bne .L_80101B28
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    li 3, 0x6
    li 0, 0x0
    stw 3, 0x230(31)
    mr 3, 31
    li 4, 0x3b
    stw 0, 0x234(31)
    bl fn_801F0D20
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458508
    bl GetRoomConfigRecord
    lbz 4, 0x248(31)
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
    li 0, 0x2
    stb 0, 0x247(31)
    .4byte 0x480004F0 # b .L_80101B28
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    lwz 0, 0x234(31)
    cmpwi 0, 0x32
    .4byte 0x408104C0 # ble .L_80101B28
    cmpwi 3, 0x1
    .4byte 0x408204B8 # bne .L_80101B28
    lwz 3, 0x238(31)
    bl fn_8022EA0C
    stw 3, 0x238(31)
    lwz 3, 0x238(31)
    bl fn_8023DE58
    mr 4, 3
    lwz 3, 0x238(31)
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    cmpwi 3, 0x0
    .4byte 0x4180047C # blt .L_80101B28
    lwz 5, 0x198(31)
    addi 7, 1, 0x4c
    lwz 6, 0x4(31)
    li 4, 0x322
    psq_l 1, 0x80(1), 0, 0
    li 8, 0x2
    lfs 0, 0x88(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x54(1)
    lwz 3, 0x238(31)
    bl fn_8038AD24
    li 3, 0x7
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    bl ClearSessionFlag_0x6d
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    li 0, 0x0
    stw 0, 0x234(31)
    .4byte 0x48000428 # b .L_80101B28
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x238(31)
    bl fn_8023DE58
    mr 4, 3
    lwz 3, 0x238(31)
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x238(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418203E8 # beq .L_80101B28
    lwz 4, 0x234(31)
    cmpwi 4, 0x0
    .4byte 0x4081002C # ble .L_80101778
    slwi 0, 4, 1
    add 3, 31, 0
    lhz 0, 0x25e(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80101778
    mulli 5, 0, 0x14
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    subi 4, 4, 0x1
    li 6, 0x0
    bl fn_8043D874
L_80101778:
    lwz 4, 0x234(31)
    lbz 0, 0x244(31)
    cmpw 4, 0
    .4byte 0x408000A0 # bge .L_80101824
    lwz 3, 0x238(31)
    addi 4, 4, 0x1
    bl fn_803894BC
    lwz 0, 0x234(31)
    lwz 3, 0x238(31)
    slwi 0, 0, 1
    add 4, 31, 0
    lhz 4, 0x260(4)
    bl fn_8038938C
    lwz 0, 0x234(31)
    lwz 3, 0x238(31)
    slwi 0, 0, 1
    add 4, 31, 0
    lhz 0, 0x260(4)
    mulli 4, 0, 0x14
    bl fn_80389254
    lwz 0, 0x234(31)
    slwi 0, 0, 1
    add 3, 31, 0
    lhz 0, 0x260(3)
    cmplwi 0, 0x28
    .4byte 0x4180000C # blt .L_801017E8
    li 4, 0x323
    .4byte 0x48000034 # b .L_80101818
L_801017E8:
    .4byte 0x40800014 # bge .L_801017FC
    cmplwi 0, 0x14
    .4byte 0x4180000C # blt .L_801017FC
    li 4, 0x324
    .4byte 0x48000020 # b .L_80101818
L_801017FC:
    cmplwi 0, 0x14
    .4byte 0x40800014 # bge .L_80101814
    cmplwi 0, 0x1
    .4byte 0x4180000C # blt .L_80101814
    li 4, 0x325
    .4byte 0x48000008 # b .L_80101818
L_80101814:
    li 4, 0x31e
L_80101818:
    lwz 3, 0x238(31)
    bl fn_8038470C
    .4byte 0x48000020 # b .L_80101840
L_80101824:
    lwz 3, 0x238(31)
    li 4, 0x327
    bl fn_8038470C
    li 3, 0x8
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x234(31)
L_80101840:
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    .4byte 0x480002DC # b .L_80101B28
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x238(31)
    bl fn_8023DE58
    mr 4, 3
    lwz 3, 0x238(31)
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x238(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x4182029C # beq .L_80101B28
    lwz 3, 0x238(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x41820288 # beq .L_80101B28
    li 3, 0x9
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x234(31)
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 30, 0x0
    mr 29, 31
L_801018C4:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801018E4
    lwz 4, 0x270(29)
    mr 3, 30
    lwz 5, 0x280(29)
    bl fn_802372F8
L_801018E4:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_801018C4
    lbz 0, 0x244(31)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_8010191C
    lbz 0, 0x25c(31)
    cmplwi 0, 0x1
    .4byte 0x40820098 # bne .L_801019A0
    li 3, 0x0
    li 4, 0x1f4
    bl fn_802362C4
    .4byte 0x48000088 # b .L_801019A0
L_8010191C:
    mr 3, 31
    li 29, -0x1
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x4081001C # ble .L_80101948
L_80101930:
    lhz 0, 0x268(3)
    cmpw 29, 0
    .4byte 0x40800008 # bge .L_80101940
    mr 29, 0
L_80101940:
    addi 3, 3, 0x2
    .4byte 0x4200FFEC # bdnz .L_80101930
L_80101948:
    cmpwi 29, 0x0
    .4byte 0x41820054 # beq .L_801019A0
    mr 28, 31
    li 30, 0x0
    .4byte 0x4800003C # b .L_80101994
L_8010195C:
    lhz 0, 0x268(28)
    cmpw 29, 0
    .4byte 0x40820018 # bne .L_8010197C
    bl GetRoomConfigRecord
    mr 5, 30
    li 4, 0x1
    bl fn_802D7844
    .4byte 0x48000014 # b .L_8010198C
L_8010197C:
    bl GetRoomConfigRecord
    mr 5, 30
    li 4, 0x0
    bl fn_802D7844
L_8010198C:
    addi 28, 28, 0x2
    addi 30, 30, 0x1
L_80101994:
    lbz 0, 0x244(31)
    cmpw 30, 0
    .4byte 0x4180FFC0 # blt .L_8010195C
L_801019A0:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x4800016C # b .L_80101B28
    lwz 4, 0x4(31)
    addi 3, 1, 0x64
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x238(31)
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4180013C # blt .L_80101B28
    lwz 5, 0x198(31)
    addi 7, 1, 0x40
    lwz 6, 0x4(31)
    li 4, 0x328
    psq_l 1, 0x80(1), 0, 0
    li 8, 0x0
    lfs 0, 0x88(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x48(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4182010C # beq .L_80101B28
    li 3, 0xa
    li 0, 0x0
    stw 3, 0x230(31)
    mr 3, 31
    addi 4, 1, 0x1c
    addi 5, 1, 0x14
    stw 0, 0x234(31)
    lwz 6, 0x238(31)
    addi 6, 6, 0x1
    bl fn_801EE558
    lfs 1, 0x14(1)
    .4byte 0xC00291B0 # lfs f0, lbl_8053C150@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408000D4 # bge .L_80101B28
    lfs 1, 0x1c(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x20(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC00291C4 # lfs f0, lbl_8053C164@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 0, 0xa4(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80101A9C
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80101AA8
L_80101A9C:
    li 0, 0x3
    stb 0, 0x247(31)
    .4byte 0x48000084 # b .L_80101B28
L_80101AA8:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80101AC4
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80101AC4
    li 0, 0x1
    stb 0, 0x247(31)
    .4byte 0x48000068 # b .L_80101B28
L_80101AC4:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80101AE0
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80101AE0
    li 0, 0x2
    stb 0, 0x247(31)
    .4byte 0x4800004C # b .L_80101B28
L_80101AE0:
    li 0, 0x0
    stb 0, 0x247(31)
    .4byte 0x48000040 # b .L_80101B28
    lwz 4, 0x4(31)
    addi 3, 1, 0x64
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x238(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80101B28
    li 3, 0x9
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x234(31)
L_80101B28:
    lwz 0, 0xc4(1)
    lwz 31, 0xbc(1)
    lwz 30, 0xb8(1)
    lwz 29, 0xb4(1)
    lwz 28, 0xb0(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

