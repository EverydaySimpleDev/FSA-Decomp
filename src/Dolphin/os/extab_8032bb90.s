.section extab, "a"
.balign 4
.global etb_8000DC34
etb_8000DC34:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000DC34, 8

.section extabindex, "a"
.balign 4
.global eti_8001D2B4
eti_8001D2B4:
    .4byte fn_8032BB90
    .4byte 0x00000420
    .4byte etb_8000DC34
.size eti_8001D2B4, 12

.text
.balign 4
.global fn_8032BB90

# fn_8032BB90(this) - RUPY's "convert into a reward" logic, called from
# update()'s states 7/8 (extab_8032c664.s). Closes out RUPY's private
# helper cluster.
#
# Scans all 4 player slots (the same `fn_8023A51C`+`fn_8023DE58`+
# `fn_8023A478` proximity idiom used in `fn_8032ABE0`/`fn_8032B7C0`)
# for one standing close by. If found, queries a room/area record via
# the CONFIRMED `lbl_8053AB10->0x24` global (already flagged important
# in project_fsa_player_registry_discovery.md - here dispatched to
# `fn_8030C2A8`); only proceeds if that check passes.
#
# On success, snaps height to a fixed constant, then branches on
# state==7 (or this->0x248==0):
#   REWARD PATH (state 7, or this->0x248==0): picks a real dispatch
#     code - "RUPY" (0x52555059, i.e. spawn ANOTHER rupee) by default,
#     or "ESRY" (0x45535259, confirmed in
#     reference_fsa_full_dispatch_sweep.md) when this->0x248 is
#     nonzero - sets flag bits in this->0x268 accordingly, then picks a
#     case index (0-4) selecting one of 5 FIXED per-case velocity
#     pairs: for specific subtypes via the CONFIRMED `fn_8023A240` (see
#     extab_8023a240.s - despite the case-selector role here, it does
#     NOT classify a spatial direction; it returns any currently
#     ELIGIBLE PLAYER'S SLOT INDEX, reused here purely as a case
#     selector), for others via a simple offset subtracted from the
#     subtype value directly. Then calls the CONFIRMED spatial
#     registry (`SpatialRegistry_GetBase`) together with `fn_801F8544` (a find-or-
#     create style call, not yet decompiled) to obtain a NEW record,
#     resolves it via `fn_801F666C`, and writes the selected fixed
#     velocity pair directly into THAT record's own fields (0x3c/0x40/
#     0x44) - launching the newly spawned RUPY/ESRY actor. Then calls
#     `fn_801F3668` to hide ITSELF - the original rupee is replaced.
#   SELF-RELAUNCH PATH (this->0x248 nonzero, not state 7): the same
#     5-case selection, but writes the velocity pair into its OWN
#     fields instead of a new record - it just bounces off again
#     rather than spawning anything.
#
# Either way (except the reward path, which returns immediately after
# hiding), falls into a SHARED tail: re-arms a fresh long lifetime
# timer (0x3d9 or 0x325 frames via the CONFIRMED
# `lbl_8053AAF8->0x7e` mode flag - the same formula used everywhere
# else in RUPY), sets a size-class rect override (this->0xb0), and
# returns to state 0 (idle).
#
# If NO qualifying player was found (or the room/area check failed),
# instead makes one final virtual call through vtable slot 0x30
# (args 0xff, 1) for a specific set of subtypes ({4-7},{0xc-0xf},0x1d,
# 0x1f) - an unexplored "final notify" hook.
fn_8032BB90:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stw 31, 0x7c(1)
    mr 31, 3
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    li 29, 0x0
L_8032BBB0:
    mr 3, 29
    bl fn_8023A51C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408203C8 # bne .L_8032BF88
    lwz 30, 0x4(31)
    mr 3, 29
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x408203B4 # bne .L_8032BF88
    mr 3, 29
    bl fn_8023A478
    addi 4, 31, 0xc
    lfs 3, 0x0(3)
    lfs 0, 0xc(31)
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC002EE18 # lfs f0, lbl_80541DB8@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x41810378 # bgt .L_8032BF88
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820360 # bne .L_8032BF88
    .4byte 0xC002EE1C # lfs f0, lbl_80541DBC@sda21(r0)
    stfs 0, 0x14(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x7
    .4byte 0x41820010 # beq .L_8032BC4C
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x418201C4 # beq .L_8032BE0C
L_8032BC4C:
    lwz 0, 0x248(31)
    lis 3, 0x5255
    addi 30, 3, 0x5059
    cmpwi 0, 0x0
    .4byte 0x41820068 # beq .L_8032BCC4
    lwz 0, 0x90(31)
    lis 4, 0x4553
    lwz 3, 0x268(31)
    addi 30, 4, 0x5259
    clrrwi 0, 0, 27
    or 0, 3, 0
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    oris 0, 0, 0x1
    stw 0, 0x268(31)
    lhz 3, 0x94(31)
    cmplwi 3, 0x20
    .4byte 0x4182000C # beq .L_8032BC9C
    cmplwi 3, 0x21
    .4byte 0x40820010 # bne .L_8032BCA8
L_8032BC9C:
    bl fn_8023A240
    mr 29, 3
    .4byte 0x48000068 # b .L_8032BD0C
L_8032BCA8:
    lwz 0, 0x248(31)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_8032BCBC
    subi 29, 3, 0x11
    .4byte 0x48000054 # b .L_8032BD0C
L_8032BCBC:
    subi 29, 3, 0x15
    .4byte 0x4800004C # b .L_8032BD0C
L_8032BCC4:
    lwz 0, 0x268(31)
    oris 0, 0, 0x200
    stw 0, 0x268(31)
    lhz 3, 0x94(31)
    cmplwi 3, 0x1d
    .4byte 0x4182000C # beq .L_8032BCE4
    cmplwi 3, 0x1e
    .4byte 0x40820010 # bne .L_8032BCF0
L_8032BCE4:
    bl fn_8023A240
    mr 29, 3
    .4byte 0x48000020 # b .L_8032BD0C
L_8032BCF0:
    cmplwi 3, 0x4
    .4byte 0x41800014 # blt .L_8032BD08
    cmplwi 3, 0x7
    .4byte 0x4181000C # bgt .L_8032BD08
    subi 29, 3, 0x4
    .4byte 0x48000008 # b .L_8032BD0C
L_8032BD08:
    subi 29, 3, 0x8
L_8032BD0C:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    mr 4, 30
    lwz 7, 0x268(31)
    addi 6, 31, 0xc
    bl fn_801F8544
    mr. 30, 3
    .4byte 0x418000D8 # blt .L_8032BE00
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmpwi 29, 0x2
    .4byte 0x41820074 # beq .L_8032BDB0
    .4byte 0x40800014 # bge .L_8032BD54
    cmpwi 29, 0x0
    .4byte 0x41820018 # beq .L_8032BD60
    .4byte 0x4080003C # bge .L_8032BD88
    .4byte 0x480000B0 # b .L_8032BE00
L_8032BD54:
    cmpwi 29, 0x4
    .4byte 0x408000A8 # bge .L_8032BE00
    .4byte 0x48000080 # b .L_8032BDDC
L_8032BD60:
    .4byte 0xC002EE10 # lfs f0, lbl_80541DB0@sda21(r0)
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    stfs 0, 0x5c(1)
    .4byte 0xC002EE1C # lfs f0, lbl_80541DBC@sda21(r0)
    stfs 1, 0x60(1)
    psq_l 1, 0x5c(1), 0, 0
    stfs 0, 0x64(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x4800007C # b .L_8032BE00
L_8032BD88:
    .4byte 0xC002EE00 # lfs f0, lbl_80541DA0@sda21(r0)
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    stfs 0, 0x50(1)
    .4byte 0xC002EE1C # lfs f0, lbl_80541DBC@sda21(r0)
    stfs 1, 0x54(1)
    psq_l 1, 0x50(1), 0, 0
    stfs 0, 0x58(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x48000054 # b .L_8032BE00
L_8032BDB0:
    .4byte 0xC002EE00 # lfs f0, lbl_80541DA0@sda21(r0)
    .4byte 0xC042EDE8 # lfs f2, lbl_80541D88@sda21(r0)
    fneg 1, 0
    .4byte 0xC002EE1C # lfs f0, lbl_80541DBC@sda21(r0)
    stfs 2, 0x44(1)
    stfs 1, 0x48(1)
    psq_l 1, 0x44(1), 0, 0
    stfs 0, 0x4c(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x48000028 # b .L_8032BE00
L_8032BDDC:
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    .4byte 0xC022EE00 # lfs f1, lbl_80541DA0@sda21(r0)
    stfs 0, 0x38(1)
    .4byte 0xC002EE1C # lfs f0, lbl_80541DBC@sda21(r0)
    stfs 1, 0x3c(1)
    psq_l 1, 0x38(1), 0, 0
    stfs 0, 0x40(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_8032BE00:
    mr 3, 31
    bl fn_801F3668
    .4byte 0x4800012C # b .L_8032BF34
L_8032BE0C:
    lhz 3, 0x94(31)
    cmplwi 3, 0x1f
    .4byte 0x4082000C # bne .L_8032BE20
    bl fn_8023A240
    .4byte 0x48000008 # b .L_8032BE24
L_8032BE20:
    subi 3, 3, 0xc
L_8032BE24:
    cmpwi 3, 0x2
    .4byte 0x41820074 # beq .L_8032BE9C
    .4byte 0x40800014 # bge .L_8032BE40
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_8032BE4C
    .4byte 0x4080003C # bge .L_8032BE74
    .4byte 0x480000B0 # b .L_8032BEEC
L_8032BE40:
    cmpwi 3, 0x4
    .4byte 0x408000A8 # bge .L_8032BEEC
    .4byte 0x48000080 # b .L_8032BEC8
L_8032BE4C:
    .4byte 0xC002EE10 # lfs f0, lbl_80541DB0@sda21(r0)
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    stfs 0, 0x2c(1)
    .4byte 0xC002EE1C # lfs f0, lbl_80541DBC@sda21(r0)
    stfs 1, 0x30(1)
    psq_l 1, 0x2c(1), 0, 0
    stfs 0, 0x34(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x4800007C # b .L_8032BEEC
L_8032BE74:
    .4byte 0xC002EE00 # lfs f0, lbl_80541DA0@sda21(r0)
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    stfs 0, 0x20(1)
    .4byte 0xC002EE1C # lfs f0, lbl_80541DBC@sda21(r0)
    stfs 1, 0x24(1)
    psq_l 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000054 # b .L_8032BEEC
L_8032BE9C:
    .4byte 0xC002EE00 # lfs f0, lbl_80541DA0@sda21(r0)
    .4byte 0xC042EDE8 # lfs f2, lbl_80541D88@sda21(r0)
    fneg 1, 0
    .4byte 0xC002EE1C # lfs f0, lbl_80541DBC@sda21(r0)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x48000028 # b .L_8032BEEC
L_8032BEC8:
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    .4byte 0xC022EE00 # lfs f1, lbl_80541DA0@sda21(r0)
    stfs 0, 0x8(1)
    .4byte 0xC002EE1C # lfs f0, lbl_80541DBC@sda21(r0)
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_8032BEEC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8032BF08
    li 0, 0x3d9
    stw 0, 0x24c(31)
    .4byte 0x4800000C # b .L_8032BF10
L_8032BF08:
    li 0, 0x325
    stw 0, 0x24c(31)
L_8032BF10:
    lis 3, 0x2
    stw 3, 0xb0(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_8032BF2C
    addi 0, 3, 0xa
    stw 0, 0xb0(31)
L_8032BF2C:
    li 0, 0x0
    stw 0, 0x230(31)
L_8032BF34:
    lhz 0, 0x94(31)
    cmplwi 0, 0x4
    .4byte 0x4180000C # blt .L_8032BF48
    cmplwi 0, 0x7
    .4byte 0x40810024 # ble .L_8032BF68
L_8032BF48:
    cmplwi 0, 0xc
    .4byte 0x4180000C # blt .L_8032BF58
    cmplwi 0, 0xf
    .4byte 0x40810014 # ble .L_8032BF68
L_8032BF58:
    cmplwi 0, 0x1d
    .4byte 0x4182000C # beq .L_8032BF68
    cmplwi 0, 0x1f
    .4byte 0x40820030 # bne .L_8032BF94
L_8032BF68:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x48000010 # b .L_8032BF94
L_8032BF88:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FC20 # blt .L_8032BBB0
L_8032BF94:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    mtlr 0
    addi 1, 1, 0x80
    blr
