/*
 * fn_80102398(this): the fn_80102278-class's main update() (0x99C/2460
 * bytes, own exception vector, -mgekko). THIRD instance of the same
 * update() shape documented on fn_800FF6F8 and fn_80100D28 - dispatches
 * on this->0x230 (state 0-8) via jumptable_8049C9C4. Confirmed shared
 * idioms (survey-level, not full per-state semantics):
 *  - Reflows position floats, advances a mod-3 counter (this->0x234/0x238
 *    against byte table lbl_80539EB8) - same idiom, third table instance.
 *  - Validates a handle at this->0x23c via the same status-check family
 *    (fn_802300EC/fn_8038AD24/fn_803865B8/fn_8037EFB4/fn_80384C58/
 *    fn_80388CAC).
 *  - Same quadrant-classification (0x2000/0x6000/0xa000/0xe000) into
 *    this->0x235 - THIRD confirmed sighting of this idiom.
 *  - Iterates a 4-slot array computing a per-slot "distance from expected"
 *    value (fn_80236100 result minus this->0x274-family) and picks the
 *    slot with the max/most-negative value, then re-iterates comparing
 *    each slot's value against that extreme and calling fn_802372F8 for
 *    matches - a real "find and act on the outlier" computation, distinct
 *    from the ranking (fn_801003F4) and hit/miss tally (fn_801008FC)
 *    seen in the other two classes, but structurally similar (once again
 *    a 4-candidate comparison, keeping with the "4-player" pattern).
 *  - Performs one true virtual call through this->vtable[0xc] on state 7,
 *    matching the exact same virtual-call shape as fn_800FF6F8/
 *    fn_80100D28.
 *  - Touches the same lbl_8053AB10->0x24 global guard struct (appears
 *    4x here too).
 * This is a THIRD class sharing the same update()/base pattern as the
 * fn_800FF060-class and fn_8010089C-class - the "shared base class"
 * finding now extends to (at least) three sibling classes, strengthening
 * the "4-player timed target minigame" hypothesis into a small family of
 * related target/challenge types.
 */

.section extab, "a"
.balign 4
.global etb_80005928
etb_80005928:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_80005928, 8

.section extabindex, "a"
.balign 4
.global eti_80011CEC
eti_80011CEC:
    .4byte fn_80102398
    .4byte 0x0000099C
    .4byte etb_80005928
.size eti_80011CEC, 12

.text
.balign 4
.global fn_80102398

fn_80102398:
    stwu 1, -0xb0(1)
    mflr 0
    .4byte 0xC0029218 # lfs f0, lbl_8053C1B8@sda21(r0)
    stw 0, 0xb4(1)
    stmw 25, 0x94(1)
    mr 31, 3
    addi 3, 1, 0x5c
    psq_l 6, 0xc(31), 0, 0
    lfs 5, 0x14(31)
    lfs 1, 0x60(31)
    psq_st 6, 0x78(1), 0, 0
    stfs 1, 0x5c(1)
    lfs 2, 0x7c(1)
    lfs 4, 0x64(31)
    fsubs 0, 2, 0
    stfs 5, 0x80(1)
    stfs 4, 0x60(1)
    lfs 2, 0x68(31)
    stfs 0, 0x7c(1)
    stfs 2, 0x64(1)
    lfs 3, 0x6c(31)
    psq_st 6, 0x6c(1), 0, 0
    stfs 3, 0x68(1)
    lfs 0, 0xc(31)
    stfs 5, 0x74(1)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x5c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x64(1)
    fadds 0, 3, 2
    stfs 1, 0x60(1)
    stfs 0, 0x68(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lbz 4, 0x234(31)
    .4byte 0x386D82F8 # li r3, lbl_80539EB8@sda21
    addi 0, 4, 0x1
    stb 0, 0x234(31)
    lwz 4, 0x238(31)
    lbz 5, 0x234(31)
    lbzx 0, 3, 4
    cmplw 5, 0
    .4byte 0x40820028 # bne .L_80102474
    addi 0, 4, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_8010246C
    li 0, 0x0
    stw 0, 0x238(31)
L_8010246C:
    li 0, 0x0
    stb 0, 0x234(31)
L_80102474:
    lwz 0, 0x230(31)
    cmplwi 0, 0x8
    .4byte 0x418108A4 # bgt .L_80102D20
    lis 3, jumptable_8049C9C4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049C9C4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x23c(31)
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4180085C # blt .L_80102D20
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820850 # beq .L_80102D20
    lbz 0, 0x236(31)
    li 4, 0x32e
    cmplwi 0, 0x1
    lwz 5, 0x198(31)
    addi 7, 1, 0x50
    lwz 6, 0x4(31)
    li 8, 0x0
    psq_l 1, 0x78(1), 0, 0
    lfs 0, 0x80(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x58(1)
    lwz 3, 0x23c(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820814 # beq .L_80102D20
    li 25, 0x0
L_80102514:
    mr 3, 25
    bl fn_802308E0
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FFF0 # blt .L_80102514
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x230(31)
    mr 3, 31
    addi 4, 1, 0x2c
    addi 5, 1, 0xc
    stw 0, 0x244(31)
    lwz 6, 0x23c(31)
    addi 6, 6, 0x1
    bl fn_801EE8F4
    lfs 1, 0xc(1)
    .4byte 0xC002921C # lfs f0, lbl_8053C1BC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408007C4 # bge .L_80102D20
    lfs 1, 0x2c(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x30(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC0029220 # lfs f0, lbl_8053C1C0@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_801025A4
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_801025B0
L_801025A4:
    li 0, 0x3
    stb 0, 0x235(31)
    .4byte 0x48000774 # b .L_80102D20
L_801025B0:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_801025CC
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_801025CC
    li 0, 0x1
    stb 0, 0x235(31)
    .4byte 0x48000758 # b .L_80102D20
L_801025CC:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_801025E8
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_801025E8
    li 0, 0x2
    stb 0, 0x235(31)
    .4byte 0x4800073C # b .L_80102D20
L_801025E8:
    li 0, 0x0
    stb 0, 0x235(31)
    .4byte 0x48000730 # b .L_80102D20
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_80102638
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x6c(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x70(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x74(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_80102638:
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x23c(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418206C4 # beq .L_80102D20
    lwz 3, 0x23c(31)
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x418200F4 # beq .L_80102760
    .4byte 0x408006B0 # bge .L_80102D20
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_80102680
    .4byte 0x480006A4 # b .L_80102D20
L_80102680:
    lbz 0, 0x236(31)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_801026BC
    lwz 3, 0x23c(31)
    bl fn_80236228
    cmpwi 3, 0x0
    .4byte 0x40800024 # bge .L_801026BC
    lwz 3, 0x23c(31)
    li 4, 0x333
    bl fn_8038470C
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x244(31)
    .4byte 0x48000668 # b .L_80102D20
L_801026BC:
    lbz 0, 0x236(31)
    li 4, 0x32f
    lwz 3, 0x23c(31)
    cmplwi 0, 0x1
    bl fn_8038470C
    li 0, 0x3
    li 30, 0x0
    stw 0, 0x230(31)
    mr 28, 31
    stw 30, 0x244(31)
L_801026E4:
    mr 3, 30
    bl fn_802373EC
    stw 3, 0x254(28)
    mr 3, 30
    bl fn_8023725C
    stw 3, 0x264(28)
    mr 3, 30
    li 4, 0x9
    li 5, 0x2
    bl fn_802372F8
    addi 30, 30, 0x1
    addi 28, 28, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFCC # blt .L_801026E4
    li 25, 0x0
    mr 28, 31
L_80102724:
    mr 3, 25
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_8010274C
    mr 3, 25
    li 4, -0x64
    bl fn_8023619C
    mr 3, 25
    bl fn_80236100
    stw 3, 0x274(28)
L_8010274C:
    addi 25, 25, 0x1
    addi 28, 28, 0x4
    cmpwi 25, 0x4
    .4byte 0x4180FFCC # blt .L_80102724
    .4byte 0x480005C4 # b .L_80102D20
L_80102760:
    lwz 3, 0x23c(31)
    li 4, 0x330
    bl fn_8038470C
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x244(31)
    .4byte 0x480005A4 # b .L_80102D20
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801027C4
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x6c(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x70(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x74(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801027C4:
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820534 # beq .L_80102D20
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x230(31)
    stw 0, 0x244(31)
    bl fn_80230534
    .4byte 0x4800051C # b .L_80102D20
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8010284C
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    lfs 0, 0x6c(1)
    stw 3, 0x7f8(4)
    lfs 1, 0x70(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x74(1)
    stfs 1, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_8010284C:
    li 3, 0x0
    bl fn_8023DE58
    mr 4, 3
    lwz 3, 0x23c(31)
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418204A4 # beq .L_80102D20
    li 0, 0x4
    li 4, 0x0
    stw 0, 0x230(31)
    li 0, 0xe10
    li 3, 0x0
    stw 4, 0x244(31)
    stw 0, 0x240(31)
    bl fn_80230534
    bl SetSessionFlag_0x70
    mr 3, 31
    li 4, 0x3a
    bl fn_801F0D20
    .4byte 0x80CD93C0 # lwz r6, lbl_8053AF80@sda21(r0)
    lis 3, 0x100
    addi 4, 3, 0x7
    li 5, 0x1
    lwz 0, 0x58(6)
    li 6, 0x0
    stw 0, 0x248(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458FF0
    bl GetRoomConfigRecord
    lwz 4, 0x24c(31)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000438 # b .L_80102D20
    lwz 4, 0x240(31)
    lis 3, 0x8889
    subi 0, 3, 0x7777
    subi 3, 4, 0x1
    stw 3, 0x240(31)
    lwz 5, 0x240(31)
    mulhw 0, 0, 5
    add 3, 0, 5
    srawi 0, 3, 5
    srwi 4, 0, 31
    add 0, 0, 4
    cmpwi 0, 0xa
    .4byte 0x41810038 # bgt .L_80102954
    srawi 0, 3, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf 0, 0, 5
    cmpwi 0, 0x3b
    .4byte 0x4082001C # bne .L_80102954
    mr 3, 31
    li 4, 0x3f
    bl fn_801F0D20
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_80458508
L_80102954:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408203C4 # bne .L_80102D20
    bl fn_8023077C
    stb 3, 0x250(31)
    li 4, 0x5
    li 0, 0x0
    mr 3, 31
    stw 4, 0x230(31)
    li 4, 0x3b
    stw 0, 0x244(31)
    bl fn_801F0D20
    li 0, 0x2
    stb 0, 0x235(31)
    bl GetRoomConfigRecord
    lwz 4, 0x24c(31)
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458508
    .4byte 0x48000374 # b .L_80102D20
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lbz 0, 0x250(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801029E0
    bl fn_8023077C
    stb 3, 0x250(31)
L_801029E0:
    lwz 0, 0x244(31)
    cmpwi 0, 0x32
    .4byte 0x40810338 # ble .L_80102D20
    lbz 0, 0x250(31)
    cmplwi 0, 0x1
    .4byte 0x4082032C # bne .L_80102D20
    li 3, 0x0
    bl fn_8023DE58
    lwz 5, 0x198(31)
    mr 4, 3
    li 3, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    cmpwi 3, 0x0
    .4byte 0x408202FC # bne .L_80102D20
    lwz 5, 0x198(31)
    addi 7, 1, 0x44
    lwz 6, 0x4(31)
    li 3, 0x0
    psq_l 1, 0x78(1), 0, 0
    li 4, 0x331
    lfs 0, 0x80(1)
    li 8, 0x2
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x4c(1)
    bl fn_8038AD24
    li 3, 0x6
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x244(31)
    bl ClearSessionFlag_0x70
    .4byte 0x480002B8 # b .L_80102D20
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    li 3, 0x0
    bl fn_8023DE58
    lwz 5, 0x198(31)
    mr 4, 3
    li 3, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820278 # beq .L_80102D20
    lwz 4, 0x198(31)
    li 3, 0x0
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x41820264 # beq .L_80102D20
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0x7
    li 0, 0x0
    stw 3, 0x230(31)
    li 3, 0x0
    stw 0, 0x244(31)
    bl fn_80230534
    addi 25, 1, 0x1c
    li 29, 0x0
    mr 27, 25
    mr 26, 31
    mr 30, 29
    li 28, -0x2710
L_80102B0C:
    stw 30, 0x0(27)
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_80102B44
    mr 3, 29
    bl fn_80236100
    lwz 0, 0x274(26)
    subf 0, 0, 3
    stw 0, 0x0(27)
    lwz 0, 0x0(27)
    cmpw 0, 28
    .4byte 0x40810008 # ble .L_80102B44
    mr 28, 0
L_80102B44:
    addi 29, 29, 0x1
    addi 26, 26, 0x4
    cmpwi 29, 0x4
    addi 27, 27, 0x4
    .4byte 0x4180FFB8 # blt .L_80102B0C
    mr 26, 31
    li 30, 0x0
L_80102B60:
    mr 3, 30
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_80102B8C
    lwz 0, 0x0(25)
    cmpw 28, 0
    .4byte 0x41820014 # beq .L_80102B8C
    lwz 4, 0x254(26)
    mr 3, 30
    lwz 5, 0x264(26)
    bl fn_802372F8
L_80102B8C:
    addi 30, 30, 0x1
    addi 26, 26, 0x4
    cmpwi 30, 0x4
    addi 25, 25, 0x4
    .4byte 0x4180FFC4 # blt .L_80102B60
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 5, 0x1
    lwz 4, 0x248(31)
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x4800016C # b .L_80102D20
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x23c(31)
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4180013C # blt .L_80102D20
    lwz 5, 0x198(31)
    addi 7, 1, 0x38
    lwz 6, 0x4(31)
    li 4, 0x332
    psq_l 1, 0x78(1), 0, 0
    li 8, 0x0
    lfs 0, 0x80(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x40(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4182010C # beq .L_80102D20
    li 3, 0x8
    li 0, 0x0
    stw 3, 0x230(31)
    mr 3, 31
    addi 4, 1, 0x10
    addi 5, 1, 0x8
    stw 0, 0x244(31)
    lwz 6, 0x23c(31)
    addi 6, 6, 0x1
    bl fn_801EE8F4
    lfs 1, 0x8(1)
    .4byte 0xC002921C # lfs f0, lbl_8053C1BC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408000D4 # bge .L_80102D20
    lfs 1, 0x10(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x14(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC0029220 # lfs f0, lbl_8053C1C0@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_80102C94
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_80102CA0
L_80102C94:
    li 0, 0x3
    stb 0, 0x235(31)
    .4byte 0x48000084 # b .L_80102D20
L_80102CA0:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_80102CBC
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_80102CBC
    li 0, 0x1
    stb 0, 0x235(31)
    .4byte 0x48000068 # b .L_80102D20
L_80102CBC:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_80102CD8
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_80102CD8
    li 0, 0x2
    stb 0, 0x235(31)
    .4byte 0x4800004C # b .L_80102D20
L_80102CD8:
    li 0, 0x0
    stb 0, 0x235(31)
    .4byte 0x48000040 # b .L_80102D20
    lwz 4, 0x4(31)
    addi 3, 1, 0x5c
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80102D20
    li 3, 0x7
    li 0, 0x0
    stw 3, 0x230(31)
    stw 0, 0x244(31)
L_80102D20:
    lmw 25, 0x94(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

