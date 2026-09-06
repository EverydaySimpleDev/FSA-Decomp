.section extab, "a"
.balign 4
.global etb_8000CA94
etb_8000CA94:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000CA94, 8

.section extabindex, "a"
.balign 4
.global eti_8001B958
eti_8001B958:
    .4byte fn_802C52DC
    .4byte 0x00000450
    .4byte etb_8000CA94
.size eti_8001B958, 12

.text
.balign 4
.global fn_802C52DC

# fn_802C52DC(this) - KEY0's real setParams(). Genuinely understood at the
# architectural level; the 9-case sub-type jumptable
# (`jumptable_804A8D60`) is survey-level rather than individually traced
# for every case (each follows the same "query a flag/switch condition,
# set this->0x240 to a resulting state code" shape).
#
# 1. Unpacks the spawn-param word (`this->0x90`) into 6 fields: a 5-bit
#    "mode/type" (`this->0x280`), a 4-bit sub-type (`this->0x27c`, the
#    jumptable selector below), 3 more 5-bit fields
#    (`this->0x278/270/274`), and an owner-ID copy from `this->0x4`
#    (`this->0x26c`).
# 2. If sub-type==1, snapshots the spawn position into
#    `this->0x230/0x234` and packs a composite value from 2 real-time
#    reads (`GetRoomConfigRecord`) plus the owner ID into `this->0x238` - reads
#    as building a unique per-spawn "delivery target" identifier.
# 3. **The 9-case sub-type dispatch**: each case queries a DIFFERENT
#    room-data flag/capability helper, confirmed as follows (see
#    [[project_fsa_flag_switch_helpers]] for the full family writeup -
#    these were NOT split into their own build objects, since they sit
#    inside a still-monolithic unclaimed region dtk won't let be carved
#    up piecemeal; documented here at the confirmed call site instead):
#    - `fn_802D7544`/`fn_802D7584` = get/set a per-room BYTE value (256
#      possible indices, `room*2560+layer*256+idx`, off
#      `this+0x9968`) - reads/writes a small VALUE, not just a boolean.
#    - `fn_802D800C` = direct-bit-index check into a 32-bit-per-room/
#      layer bitmask at a fixed struct offset (`0x178`) off
#      `(*lbl_8053AAF8)->0x4->0xc` (the confirmed World/PlayField-manager
#      room-data root) - no registry indirection, `bitIdx` used directly.
#    - `fn_8022F9E4` = (see its own banner, extab_8022f9e4.s) a
#      per-player CAPABILITY check, unrelated to room-flags despite
#      appearing in this same dispatch - confirms this sub-type variant
#      gates on "can a player currently receive me" rather than
#      persistent world state.
#    Each case sets `this->0x240` to a resulting state code (0/2/4/6/8)
#    - KEY0 has several delivery-condition variants (small key vs. boss
#      key vs. quest-flag-linked key are the classic Zelda categories
#      this shape suggests), each resolved immediately at spawn, same as
#      DOOR's own flag-gated auto-open.
fn_802C52DC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    li 0, -0x1
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    lwz 3, 0x90(3)
    clrlwi 3, 3, 27
    stw 3, 0x280(30)
    lwz 3, 0x90(30)
    extrwi 3, 3, 4, 21
    stw 3, 0x27c(30)
    lwz 3, 0x90(30)
    extrwi 3, 3, 5, 15
    stw 3, 0x278(30)
    lwz 3, 0x90(30)
    extrwi 3, 3, 5, 5
    stw 3, 0x270(30)
    lwz 3, 0x90(30)
    extrwi 3, 3, 5, 10
    stw 3, 0x274(30)
    lwz 4, 0x90(30)
    lwz 3, 0x4(30)
    extrwi 31, 4, 1, 26
    stw 3, 0x26c(30)
    stw 0, 0x290(30)
    stw 0, 0x28c(30)
    lwz 0, 0x27c(30)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802C5368
    lis 0, 0x2
    stw 0, 0xb0(30)
L_802C5368:
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x284(30)
    stb 0, 0x2b1(30)
    stb 0, 0x2b5(30)
    lwz 0, 0x90(30)
    rlwinm. 0, 0, 0, 20, 20
    .4byte 0x4082004C # bne .L_802C53D0
    lfs 1, 0x10(30)
    lfs 0, 0xc(30)
    stfs 0, 0x230(30)
    stfs 1, 0x234(30)
    bl GetRoomConfigRecord
    lwz 28, 0x18(3)
    bl GetRoomConfigRecord
    lwz 3, 0x14(3)
    li 0, 0x0
    lwz 4, 0x280(30)
    clrlslwi 3, 3, 24, 16
    lwz 5, 0x4(30)
    rlwimi 3, 4, 24, 3, 7
    rlwimi 3, 28, 8, 16, 23
    rlwimi 3, 5, 0, 24, 31
    stw 3, 0x238(30)
    stw 0, 0x23c(30)
    .4byte 0x48000014 # b .L_802C53E0
L_802C53D0:
    cmplwi 31, 0x0
    .4byte 0x4182000C # beq .L_802C53E0
    li 0, 0x1
    stb 0, 0x2b5(30)
L_802C53E0:
    lwz 0, 0x27c(30)
    cmplwi 0, 0x8
    .4byte 0x41810200 # bgt .L_802C55E8
    lis 3, jumptable_804A8D60@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A8D60@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl GetRoomConfigRecord
    lwz 4, 0x16c(30)
    bl fn_802D7544
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802C5424
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x480001D0 # b .L_802C55F0
L_802C5424:
    bl GetRoomConfigRecord
    lwz 4, 0x16c(30)
    li 5, 0x1
    bl fn_802D7584
    li 0, 0x2
    stw 0, 0x240(30)
    .4byte 0x480001B4 # b .L_802C55F0
    lwz 3, 0x278(30)
    li 5, 0x0
    lwz 4, 0x198(30)
    li 6, 0x0
    bl fn_8022F9E4
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802C5468
    li 0, 0x4
    stw 0, 0x240(30)
    .4byte 0x4800018C # b .L_802C55F0
L_802C5468:
    li 0, 0x8
    stw 0, 0x240(30)
    lwz 0, 0x278(30)
    stw 0, 0x23c(30)
    .4byte 0x48000178 # b .L_802C55F0
    bl GetRoomConfigRecord
    lwz 4, 0x270(30)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802C549C
    li 0, 0x0
    stw 0, 0x240(30)
    .4byte 0x48000158 # b .L_802C55F0
L_802C549C:
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x4800014C # b .L_802C55F0
    li 0, 0x6
    stw 0, 0x240(30)
    .4byte 0x48000140 # b .L_802C55F0
    bl GetRoomConfigRecord
    lwz 4, 0x270(30)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_802C54D4
    li 0, 0x1
    stw 0, 0x240(30)
    .4byte 0x48000120 # b .L_802C55F0
L_802C54D4:
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000114 # b .L_802C55F0
    li 3, 0x4
    li 0, 0x1
    stw 3, 0x240(30)
    stb 0, 0x2b1(30)
    lwz 3, 0x23c(30)
    lbz 0, 0x2b5(30)
    slwi 4, 3, 30
    lwz 5, 0x280(30)
    slwi 3, 0, 29
    lwz 0, 0x4(30)
    or 29, 4, 3
    rlwimi 29, 5, 24, 3, 7
    rlwimi 29, 0, 0, 24, 31
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_802C5544
    bl GetRoomConfigRecord
    lwz 28, 0x18(3)
    bl GetRoomConfigRecord
    lwz 3, 0x14(3)
    clrlslwi 0, 28, 24, 8
    rlwimi 0, 3, 16, 8, 15
    or 29, 29, 0
    .4byte 0x4800000C # b .L_802C554C
L_802C5544:
    lhz 0, 0x2aa(30)
    slwi 29, 0, 8
L_802C554C:
    lfs 3, 0x230(30)
    lfs 2, 0x234(30)
    lfs 1, 0xc(30)
    lfs 0, 0x10(30)
    stfs 3, 0x20(1)
    lwz 28, 0x238(30)
    stfs 2, 0x24(1)
    lwz 5, 0x20(1)
    stfs 1, 0x18(1)
    lwz 4, 0x24(1)
    stfs 0, 0x1c(1)
    lwz 3, 0x18(1)
    lwz 0, 0x1c(1)
    stw 5, 0x10(1)
    stw 4, 0x14(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 6, 29
    mr 7, 28
    addi 4, 1, 0x8
    addi 5, 1, 0x10
    bl fn_802D6D70
    .4byte 0x48000048 # b .L_802C55F0
    bl GetRoomConfigRecord
    lwz 4, 0x16c(30)
    bl fn_802D7544
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802C55CC
    li 0, 0x0
    stb 0, 0x11c(30)
    .4byte 0x48000028 # b .L_802C55F0
L_802C55CC:
    li 0, 0x2
    li 3, 0x0
    stw 0, 0x240(30)
    li 0, 0x9
    stw 3, 0xb0(30)
    stw 0, 0x240(30)
    .4byte 0x4800000C # b .L_802C55F0
L_802C55E8:
    li 0, 0x2
    stw 0, 0x240(30)
L_802C55F0:
    li 3, 0xff
    li 0, 0x1
    stb 3, 0x2ad(30)
    stb 0, 0x2b4(30)
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 1, 0x260(30), 0, 0
    stfs 0, 0x268(30)
    lwz 0, 0x4(30)
    stw 0, 0x26c(30)
    lwz 0, 0x280(30)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_802C5648
    .4byte 0xC022DD00 # lfs f1, lbl_80540CA0@sda21(r0)
    .4byte 0xC002DD04 # lfs f0, lbl_80540CA4@sda21(r0)
    stfs 1, 0x60(30)
    .4byte 0xC022DCE0 # lfs f1, lbl_80540C80@sda21(r0)
    stfs 0, 0x64(30)
    .4byte 0xC002DCE4 # lfs f0, lbl_80540C84@sda21(r0)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x48000048 # b .L_802C568C
L_802C5648:
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802C5658
    cmpwi 0, 0x6
    .4byte 0x41800020 # blt .L_802C5674
L_802C5658:
    .4byte 0xC022DD04 # lfs f1, lbl_80540CA4@sda21(r0)
    .4byte 0xC002DCE4 # lfs f0, lbl_80540C84@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    .4byte 0x4800001C # b .L_802C568C
L_802C5674:
    .4byte 0xC022DD08 # lfs f1, lbl_80540CA8@sda21(r0)
    .4byte 0xC002DCE8 # lfs f0, lbl_80540C88@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
L_802C568C:
    .4byte 0xC022DD04 # lfs f1, lbl_80540CA4@sda21(r0)
    lis 3, 0x1
    .4byte 0xC002DCE4 # lfs f0, lbl_80540C84@sda21(r0)
    li 4, 0x0
    stfs 1, 0x80(30)
    subi 3, 3, 0x1
    li 0, -0x1
    stfs 1, 0x84(30)
    stfs 0, 0x88(30)
    stfs 0, 0x8c(30)
    stw 4, 0x288(30)
    stb 4, 0x2b2(30)
    stb 4, 0x2b3(30)
    stb 4, 0x2af(30)
    stw 4, 0x294(30)
    stb 4, 0x2ae(30)
    stb 4, 0x2b0(30)
    sth 3, 0x2a8(30)
    stw 0, 0x298(30)
    stw 0, 0x29c(30)
    bl GetRoomConfigRecord
    lwz 28, 0x18(3)
    bl GetRoomConfigRecord
    lwz 0, 0x14(3)
    clrlwi 3, 28, 24
    cmplwi 31, 0x0
    rlwimi 3, 0, 8, 16, 23
    li 0, -0x1
    sth 3, 0x2aa(30)
    stw 0, 0x2a0(30)
    .4byte 0x40820008 # bne .L_802C570C
    stw 0, 0x2a4(30)
L_802C570C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

