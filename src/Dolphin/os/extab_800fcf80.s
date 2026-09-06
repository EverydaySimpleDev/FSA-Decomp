# fn_800FCF80: a CONSTRUCTOR - and it PARTIALLY RESOLVES the open
# question raised in project_fsa_container_class_open_question.md
# about whether the `this->0x234`-phase-dispatch family
# (fn_800F8A30/8BAC/9170/953C/A944, "Family A") and the
# `jumptable_8049C6F0` family (fn_800FABC0 + its 10 states, "Family
# B") are really the same class. THIS constructor initializes fields
# from BOTH families TOGETHER in one place: `this->0x230=0`/
# `0x234=0x1f4`/`0x2ad=0`/`0x255=0`/`0x256=0` (Family A's phase/
# ready/settle/cooldown fields) AND `this->0x254=0`/`0x260=0`/
# `0x262=0`/`0x264=0`/`0x25c=const`/`0x268=0`/`0x26c/0x270/0x274=const`/
# `0x284=0`/`0x286=0` (Family B's own phase/swing-angle/timer fields),
# recomputes the anchor-scaled `0x60-0x8c` fields from `0x26c` (the
# SAME computation independently seen in `fn_800FA944` AND every
# Family-B jumptable state), and - decisively - calls the CONFIRMED
# `fn_800FA6B0` (Family B's event-script player) DIRECTLY at
# construction time, right after initializing Family A's `0x2ad`/etc.
# This is strong evidence the two "families" ARE the same class after
# all, deliberately reusing `this->0x23c/0x240/0x244` memory (a
# position snapshot at construction time, per THIS function) for two
# disjoint purposes across different points in the object's lifetime
# - not two sibling classes as the open-question memory floated as
# the alternative. (Still not 100%: never directly observed
# `fn_800F8A30` or `fn_800FABC0` actually being called by anything,
# so the vtable-trace suggested there remains the fully conclusive
# check.)
#
# Also concretely explains where `this->0x288`/`0x28c` (the "two
# linked entries" `fn_800FA1A4`/`fn_800F9F54` read) come from: this
# constructor spawns a NEW, previously uncatalogued 4-letter code
# `"WRTC"` (`0x57525443`) 24 times unconditionally (incrementing
# variant index) via the CONFIRMED `SpatialRegistry_GetBase`+`fn_801F9484`, and
# - gated on a `this->0x238` flag bit - spawns 2 MORE "WRTC" instances
# whose registry IDs are stored directly into `this->0x288`/`0x28c`.
# This class is thus a "spawn many linked WRTC sub-actors" container -
# plausibly a chain/bead/chime-style object given the swing+shimmy+
# inter-neighbor-spacing physics already documented across both
# families. Also calls `GetRoomConfigRecord`+a NEW `fn_802D7440` (same pair
# `fn_800FAAE0` calls) and a NEW `fn_80458F9C` with global
# `lbl_8053AF80`. No `-mgekko` needed (no paired-single instructions).
# Not yet cross-identified against the 195-entry dispatch table.
.section extab, "a"
.balign 4
.global etb_80005830
etb_80005830:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80005830, 8

.section extabindex, "a"
.balign 4
.global eti_80011B78
eti_80011B78:
    .4byte fn_800FCF80
    .4byte 0x00000234
    .4byte etb_80005830
.size eti_80011B78, 12

.text
.balign 4
.global fn_800FCF80

fn_800FCF80:
    stwu 1, -0x20(1)
    mflr 0
    li 4, 0x0
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x2
    stmw 26, 0x8(1)
    mr 31, 3
    lfs 0, 0xc(3)
    li 3, 0x1f4
    stfs 0, 0x23c(31)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    lfs 2, 0x10(31)
    stfs 2, 0x240(31)
    lfs 2, 0x14(31)
    stfs 2, 0x244(31)
    lfs 2, 0xc(31)
    stfs 2, 0x248(31)
    lfs 2, 0x10(31)
    stfs 2, 0x24c(31)
    lfs 2, 0x14(31)
    stfs 2, 0x250(31)
    stw 4, 0x258(31)
    stw 4, 0x230(31)
    stw 3, 0x234(31)
    stb 4, 0x254(31)
    stw 4, 0x264(31)
    stb 4, 0x255(31)
    stb 4, 0x256(31)
    stb 4, 0x2ad(31)
    stw 4, 0x268(31)
    sth 4, 0x262(31)
    stfs 1, 0x270(31)
    stfs 0, 0x274(31)
    stfs 1, 0x26c(31)
    sth 4, 0x260(31)
    stfs 0, 0x25c(31)
    stw 4, 0x238(31)
    stb 4, 0x257(31)
    sth 4, 0x284(31)
    sth 4, 0x286(31)
    stw 0, 0x98(31)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    li 0, 0x1
    stb 0, 0x196(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_800FD054
    lwz 0, 0x238(31)
    ori 0, 0, 0x8
    stw 0, 0x238(31)
L_800FD054:
    lwz 0, 0x238(31)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820010 # beq .L_800FD06C
    li 0, 0xf0
    stw 0, 0x108(31)
    .4byte 0x4800000C # b .L_800FD074
L_800FD06C:
    li 0, 0x1e0
    stw 0, 0x108(31)
L_800FD074:
    li 0, 0x3
    lis 4, 0x4
    stw 0, 0xbc(31)
    li 0, 0x0
    .4byte 0xC02290B4 # lfs f1, lbl_8053C054@sda21(r0)
    mr 3, 31
    lfs 2, 0x26c(31)
    addi 4, 4, 0x26
    .4byte 0xC00290B8 # lfs f0, lbl_8053C058@sda21(r0)
    li 5, 0x0
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
    stw 0, 0x27c(31)
    bl fn_801F0E34
    li 0, 0x9
    mr 3, 31
    stw 0, 0x280(31)
    bl fn_800FA6B0
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    lwz 0, 0x198(31)
    li 28, 0x0
    li 29, 0x0
    lis 30, 0x5752
    clrlwi 27, 0, 16
L_800FD108:
    bl SpatialRegistry_GetBase
    addis 7, 29, 0x100
    lwz 5, 0x4(31)
    addi 4, 30, 0x5443
    addi 6, 31, 0xc
    add 7, 27, 7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lbz 3, 0x2ac(31)
    addi 28, 28, 0x1
    cmpwi 28, 0x18
    addis 29, 29, 0x1
    addi 0, 3, 0x1
    stb 0, 0x2ac(31)
    .4byte 0x4180FFC4 # blt .L_800FD108
    lwz 0, 0x238(31)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820050 # beq .L_800FD1A0
    mr 28, 31
    li 26, 0x0
    li 29, 0x0
    lis 30, 0x5752
L_800FD164:
    bl SpatialRegistry_GetBase
    addis 7, 29, 0x200
    lwz 5, 0x4(31)
    addi 4, 30, 0x5443
    addi 6, 31, 0xc
    add 7, 27, 7
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    addi 26, 26, 0x1
    stw 3, 0x288(28)
    cmpwi 26, 0x2
    addis 29, 29, 0x1
    addi 28, 28, 0x4
    .4byte 0x4180FFC8 # blt .L_800FD164
L_800FD1A0:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

