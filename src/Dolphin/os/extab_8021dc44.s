/*
 * NEW ACTOR (vtable lbl_804A6708) - main per-frame BEHAVIOR dispatcher,
 * jumptable_804A67AC on this->0x248 (state, 11 cases 0-0xa). Landed as
 * Track A (byte-matched) + structural overview: traced in full but too
 * large/branchy to narrate every case in a header comment.
 *
 * Overall shape: an idle/wait cycle (states 0-1) using frame-count
 * thresholds (0x2d, 0x78 frames) to advance; a target-acquisition pair
 * (states 2-3) using fn_801CCE3C ("find nearest player") and the
 * confirmed fn_801D05F8 target-selection helper to fill this->0x2b4
 * (target ID), gated by a per-room check (GetRoomConfigRecord/fn_802D800C) and
 * a global "is it OK to act" gate (fn_8023077C); an approach state (4)
 * that falls through to the continuous orbit/wind-up motion in
 * fn_8021E4F8 once past a frame threshold; a large attack-execution
 * state (5-ish) that resolves the target via the confirmed
 * fn_8022FE80/fn_8022FD8C pair, tests a hitbox against it via
 * fn_8038C678, and on a landed hit either sets a bit in a separate
 * "attack result" descriptor (CompanionRegistry_GetOrInit's return, via fn_8021F094)
 * or transitions state via fn_8021DFAC (this actor's own state-ENTRY
 * handler, the exact analog of TINK's fn_801E1594); and duration-gated
 * transitions elsewhere driven by this->0x24c vs fixed thresholds
 * (0x78, 0xf0) or this->0x250.
 */
.section extab, "a"
.balign 4
.global etb_8000A4A4
etb_8000A4A4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A4A4, 8

.section extabindex, "a"
.balign 4
.global eti_80018220
eti_80018220:
    .4byte fn_8021DC44
    .4byte 0x00000368
    .4byte etb_8000A4A4
.size eti_80018220, 12

.text
.balign 4
.global fn_8021DC44

fn_8021DC44:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lwz 0, 0x248(3)
    cmplwi 0, 0xa
    .4byte 0x41810328 # bgt .L_8021DF90
    lis 4, jumptable_804A67AC@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A67AC@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 0, 0x24c(31)
    cmpwi 0, 0x5
    .4byte 0x41800304 # blt .L_8021DF90
    li 4, 0x1
    bl fn_8021DFAC
    .4byte 0x480002F8 # b .L_8021DF90
    lwz 0, 0x24c(31)
    cmpwi 0, 0x2d
    .4byte 0x418002EC # blt .L_8021DF90
    li 4, 0x2
    bl fn_8021DFAC
    .4byte 0x480002E0 # b .L_8021DF90
    lwz 0, 0x24c(31)
    cmpwi 0, 0x2d
    .4byte 0x418002D4 # blt .L_8021DF90
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_801CCE3C
    stw 3, 0x2b4(31)
    lwz 0, 0x2b4(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8021DCE4
    li 0, 0x0
    stw 0, 0x2b4(31)
L_8021DCE4:
    mr 3, 31
    li 4, 0x5
    bl fn_8021DFAC
    .4byte 0x480002A0 # b .L_8021DF90
    lbz 5, 0x2ad(31)
    lis 0, 0x4330
    stw 0, 0x18(1)
    addi 4, 31, 0xc
    .4byte 0xC822CDF8 # lfd f1, lbl_8053FD98@sda21(r0)
    stw 5, 0x1c(1)
    .4byte 0xC042CDEC # lfs f2, lbl_8053FD8C@sda21(r0)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    bl fn_801D05F8
    stw 3, 0x2b4(31)
    lwz 0, 0x2b4(31)
    cmpwi 0, 0x0
    .4byte 0x41800264 # blt .L_8021DF90
    lwz 29, 0x2b0(31)
    li 30, 0x0
    cmpwi 29, 0x0
    .4byte 0x41820020 # beq .L_8021DD5C
    bl GetRoomConfigRecord
    mr 4, 29
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8021DD60
    li 30, 0x1
    .4byte 0x48000008 # b .L_8021DD60
L_8021DD5C:
    li 30, 0x1
L_8021DD60:
    clrlwi. 0, 30, 24
    .4byte 0x4182022C # beq .L_8021DF90
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820220 # beq .L_8021DF90
    mr 3, 31
    li 4, 0x4
    bl fn_8021DFAC
    .4byte 0x48000210 # b .L_8021DF90
    lwz 0, 0x24c(31)
    cmpwi 0, 0x78
    .4byte 0x41800010 # blt .L_8021DD9C
    li 4, 0x5
    bl fn_8021DFAC
    .4byte 0x480001F8 # b .L_8021DF90
L_8021DD9C:
    bl fn_8021E4F8
    .4byte 0x480001F0 # b .L_8021DF90
    lwz 3, 0x230(31)
    rlwinm. 0, 3, 0, 18, 18
    .4byte 0x418201E4 # beq .L_8021DF90
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x41820014 # beq .L_8021DDC8
    bl CompanionRegistry_GetOrInit
    bl fn_8021F094
    clrlwi. 0, 3, 24
    .4byte 0x418201CC # beq .L_8021DF90
L_8021DDC8:
    lwz 3, 0x2b4(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    lwz 0, 0x2b4(31)
    cmpw 0, 3
    .4byte 0x408201A0 # bne .L_8021DF90
    .4byte 0xC022CDB8 # lfs f1, lbl_8053FD58@sda21(r0)
    mr 3, 0
    .4byte 0xC002CDF0 # lfs f0, lbl_8053FD90@sda21(r0)
    addi 7, 1, 0x8
    stfs 1, 0x8(1)
    li 8, 0x4002
    stfs 0, 0xc(1)
    stfs 1, 0x10(1)
    lwz 4, 0x2a8(31)
    lwz 5, 0x198(31)
    lwz 6, 0x4(31)
    bl fn_8038C678
    clrlwi. 0, 3, 24
    .4byte 0x41820168 # beq .L_8021DF90
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820018 # beq .L_8021DE4C
    bl CompanionRegistry_GetOrInit
    lhz 0, 0x0(3)
    ori 0, 0, 0x1
    sth 0, 0x0(3)
    .4byte 0x48000148 # b .L_8021DF90
L_8021DE4C:
    mr 3, 31
    li 4, 0x6
    bl fn_8021DFAC
    .4byte 0x48000138 # b .L_8021DF90
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182012C # beq .L_8021DF90
    lwz 3, 0x2b4(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x2b4(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820104 # beq .L_8021DF90
    lwz 3, 0x2b4(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x418200F0 # beq .L_8021DF90
    lwz 3, 0x230(31)
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x41820018 # beq .L_8021DEC4
    bl CompanionRegistry_GetOrInit
    lhz 0, 0x0(3)
    ori 0, 0, 0x2
    sth 0, 0x0(3)
    .4byte 0x480000D0 # b .L_8021DF90
L_8021DEC4:
    rlwinm. 0, 3, 0, 16, 16
    .4byte 0x41820014 # beq .L_8021DEDC
    mr 3, 31
    li 4, 0xa
    bl fn_8021DFAC
    .4byte 0x480000B8 # b .L_8021DF90
L_8021DEDC:
    mr 3, 31
    li 4, 0x7
    bl fn_8021DFAC
    .4byte 0x480000A8 # b .L_8021DF90
    lwz 0, 0x24c(31)
    cmpwi 0, 0x78
    .4byte 0x41800010 # blt .L_8021DF04
    li 4, 0x3
    bl fn_8021DFAC
    .4byte 0x48000090 # b .L_8021DF90
L_8021DF04:
    bl fn_8021E4F8
    .4byte 0x48000088 # b .L_8021DF90
    lwz 0, 0x24c(31)
    cmpwi 0, 0xf0
    .4byte 0x41800010 # blt .L_8021DF24
    li 4, 0x3
    bl fn_8021DFAC
    .4byte 0x48000070 # b .L_8021DF90
L_8021DF24:
    cmpwi 0, 0x78
    .4byte 0x40820068 # bne .L_8021DF90
    lwz 3, 0x230(31)
    rlwinm. 0, 3, 0, 13, 13
    .4byte 0x4082005C # bne .L_8021DF90
    rlwinm. 0, 3, 0, 18, 18
    .4byte 0x41820054 # beq .L_8021DF90
    li 3, 0x0
    bl fn_80230534
    lwz 0, 0x230(31)
    oris 0, 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x4800003C # b .L_8021DF90
    lwz 4, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 4, 0
    .4byte 0x4180002C # blt .L_8021DF90
    li 4, 0x9
    bl fn_8021DFAC
    .4byte 0x48000020 # b .L_8021DF90
    lfs 1, 0x14(31)
    .4byte 0xC002CDC4 # lfs f0, lbl_8053FD64@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8021DF90
    li 4, 0x3
    bl fn_8021DFAC
L_8021DF90:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

