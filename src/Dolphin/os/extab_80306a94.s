.section extab, "a"
.balign 4
.global etb_8000D5C4
etb_8000D5C4:
    .4byte 0x58080000
    .4byte 0x00000000
.size etb_8000D5C4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C978
eti_8001C978:
    .4byte fn_80306A94
    .4byte 0x00000A10
    .4byte etb_8000D5C4
.size eti_8001C978, 12

.text
.balign 4
.global fn_80306A94

# fn_80306A94(this, playerIndex) - "close the loop" find for the
# HUD shadow-marker system (see
# project_fsa_shadow_marker_system_and_shared_draw.md /
# project_fsa_option_b_closure.md): THE FUNCTION that consumes what
# fn_803064A8/fn_803066F0 collect into `lbl_80506DE8`, computing each
# marker's FINAL display color/attributes. Survey-level for the
# deepest per-case branches (2576 bytes, many nested state paths) -
# genuinely understood at the structural level:
#
# 1. Sets a "which markers are stale" bit-pattern in `lbl_80506DE8`'s
#    per-player header (byte 0x3, a 4-bit nibble set to 5 or 0xe
#    depending on whether this player's active-bitmask bit
#    `(*lbl_8053AAF8)->0x82` is set) - a "mark all slots for refresh"
#    reset step.
# 2. Calls `fn_803085A4(this, playerIndex)` (a sibling in this same
#    file cluster, not yet decompiled) - some further per-player prep.
# 3. Resolves the real linked player via the CONFIRMED
#    `fn_8022EA0C`, then loops over marker indices (`fn_802340A0`
#    yields a per-index record), gating each with the CONFIRMED
#    per-player eligibility family (`Player_GetCapabilityFlagByIndex`/`fn_8023188C`) and
#    an ownership check via `fn_8023DE58(resolvedPlayer)` compared
#    against the marker's stored owner - closely mirroring
#    `fn_803064A8`'s own owner-resolution logic from the collection
#    side.
# 4. For each surviving marker, computes final packed display bytes
#    (position/blend fields at the marker's own +0x8/+0x9/+0xa/+0xb)
#    via one of several PER-PLAYER COLOR ACCESSOR calls
#    (`fn_8023D21C`/`fn_8023CEAC`/`fn_8023DAF4`/`fn_8023D644`/
#    `fn_8023CBC0`/`fn_8023CA88`/`fn_8023BCD4` - the SAME family
#    confirmed for per-player color tinting in
#    project_fsa_door_key0_full_depth.md), selecting a color entry
#    from a level-config palette table (`lbl_80541618`, indexed via
#    the CONFIRMED `GetRoomConfigRecord()` config record accessor +
#    `fn_802D7AC4` - see project_fsa_802d6a9c_config_record_resolved.md)
#    keyed by a per-player palette-slot byte (`lbl_8053AD08`).
# 5. A later section (not fully traced) does a checksum/summation
#    pass over a small buffer and further per-case logic involving
#    globals `lbl_80504A18`/`lbl_804FBC18` - likely additional
#    validation/deduplication of the final marker set, survey-level.
#
# No direct render-primitive call (GX or otherwise) appears anywhere
# in this function - it purely computes final marker ATTRIBUTES; the
# actual on-screen icon draw happens in a still-undecompiled sibling
# (candidates in this same file group: fn_80307B58/fn_8030801C/
# fn_8030A43C).

fn_80306A94:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    li 0, 0x1
    stmw 21, 0x34(1)
    mr 28, 4
    slw 0, 0, 28
    mr 27, 3
    clrlwi 0, 0, 24
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 3, 0x82(5)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_80306AEC
    mulli 4, 28, 0x68
    lis 3, lbl_80506DE8@ha
    li 5, 0x5
    addi 0, 3, lbl_80506DE8@l
    add 3, 0, 4
    lbz 0, 0x3(3)
    rlwimi 0, 5, 4, 24, 27
    stb 0, 0x3(3)
    .4byte 0x48000024 # b .L_80306B0C
L_80306AEC:
    mulli 4, 28, 0x68
    lis 3, lbl_80506DE8@ha
    li 5, 0xe
    addi 0, 3, lbl_80506DE8@l
    add 3, 0, 4
    lbz 0, 0x3(3)
    rlwimi 0, 5, 4, 24, 27
    stb 0, 0x3(3)
L_80306B0C:
    mr 3, 27
    mr 4, 28
    bl fn_803085A4
    mr 3, 28
    bl fn_8022EA0C
    mulli 5, 28, 0x68
    lis 4, lbl_80506DE8@ha
    mr 29, 3
    addi 0, 4, lbl_80506DE8@l
    add 31, 0, 5
    li 24, 0x0
    addi 30, 31, 0x1
L_80306B3C:
    mr 3, 24
    bl fn_802340A0
    mr 26, 3
    mr 3, 24
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820070 # beq .L_80306BC4
    mr 3, 24
    bl fn_8023188C
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_80306BC4
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41800050 # blt .L_80306BC4
    mr 3, 24
    bl fn_8023E724
    mr 21, 3
    mr 3, 24
    bl fn_8023DE58
    mr 4, 3
    mr 3, 29
    mr 5, 21
    bl fn_8022BC38
    clrlwi. 0, 3, 24
    .4byte 0x40820064 # bne .L_80306C04
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41810014 # bgt .L_80306BC4
    mr 3, 24
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40810044 # ble .L_80306C04
L_80306BC4:
    slwi 0, 26, 2
    li 3, 0x1
    add 6, 31, 0
    li 4, 0x80
    lbz 5, 0xb(6)
    rlwimi 5, 3, 0, 31, 31
    li 0, 0xe0
    li 3, 0x0
    stb 5, 0xb(6)
    stb 4, 0xa(6)
    stb 0, 0x9(6)
    lbz 0, 0xb(6)
    rlwimi 0, 3, 1, 29, 30
    stb 0, 0xb(6)
    stb 3, 0x8(6)
    .4byte 0x480000DC # b .L_80306CDC
L_80306C04:
    mr 3, 24
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800064 # bge .L_80306C74
    lbz 5, 0x0(30)
    li 0, 0x1
    slw 0, 0, 26
    mr 3, 24
    extrwi 4, 5, 4, 24
    or 0, 4, 0
    rlwimi 5, 0, 4, 24, 27
    mr 4, 29
    stb 5, 0x0(30)
    bl fn_8023D21C
    slwi 0, 26, 2
    mr 4, 29
    add 21, 31, 0
    lbz 0, 0xb(21)
    rlwimi 0, 3, 24, 31, 31
    mr 3, 24
    stb 0, 0xb(21)
    bl fn_8023D21C
    stb 3, 0xa(21)
    mr 3, 24
    mr 4, 29
    bl fn_8023CEAC
    stb 3, 0x9(21)
    .4byte 0x48000044 # b .L_80306CB4
L_80306C74:
    mr 3, 24
    mr 4, 29
    bl fn_8023DAF4
    slwi 0, 26, 2
    mr 4, 29
    add 21, 31, 0
    lbz 0, 0xb(21)
    rlwimi 0, 3, 24, 31, 31
    mr 3, 24
    stb 0, 0xb(21)
    bl fn_8023DAF4
    stb 3, 0xa(21)
    mr 3, 24
    mr 4, 29
    bl fn_8023D644
    stb 3, 0x9(21)
L_80306CB4:
    mr 3, 24
    bl fn_8023CBC0
    slwi 0, 26, 2
    add 21, 31, 0
    lbz 0, 0xb(21)
    rlwimi 0, 3, 25, 29, 30
    mr 3, 24
    stb 0, 0xb(21)
    bl fn_8023CBC0
    stb 3, 0x8(21)
L_80306CDC:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FE58 # blt .L_80306B3C
    lis 3, lbl_80506D48@ha
    slwi 30, 28, 2
    addi 26, 3, lbl_80506D48@l
    lwzx 0, 26, 30
    clrlwi 0, 0, 31
    cmpwi 0, 0x1
    .4byte 0x4082012C # bne .L_80306E2C
    addi 25, 31, 0x7
    addi 24, 31, 0x6
    li 23, 0x0
L_80306D10:
    mr 3, 23
    bl fn_802340A0
    mr 22, 3
    bl fn_8022BECC
    lbz 4, 0x0(25)
    slw 5, 3, 22
    lbz 0, 0x0(25)
    extrwi 3, 4, 4, 24
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    or 3, 3, 5
    rlwimi 0, 3, 4, 24, 27
    stb 0, 0x0(25)
    lwz 0, 0x4c(4)
    cmpwi 0, 0xb
    .4byte 0x4082000C # bne .L_80306D54
    li 0, 0x1
    .4byte 0x48000014 # b .L_80306D64
L_80306D54:
    lbz 0, 0x88(4)
    subfic 0, 0, 0x2
    cntlzw 0, 0
    srwi 0, 0, 5
L_80306D64:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_80306D74
    li 0, 0x3
    .4byte 0x48000068 # b .L_80306DD8
L_80306D74:
    mr 3, 22
    bl fn_8023CA88
    extsb. 0, 3
    .4byte 0x4081003C # ble .L_80306DBC
    mr 3, 23
    bl fn_8023DE58
    mr 21, 3
    bl GetRoomConfigRecord
    slwi 4, 21, 1
    addis 4, 4, 0x1
    addi 4, 4, 0x31b8
    lhzx 0, 3, 4
    extrwi. 0, 0, 2, 18
    .4byte 0x4082000C # bne .L_80306DB4
    li 0, 0x3
    .4byte 0x48000028 # b .L_80306DD8
L_80306DB4:
    li 0, 0x1
    .4byte 0x48000020 # b .L_80306DD8
L_80306DBC:
    mr 3, 23
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80306DD4
    li 0, 0x1
    .4byte 0x48000008 # b .L_80306DD8
L_80306DD4:
    li 0, 0x0
L_80306DD8:
    clrlwi 3, 0, 24
    slwi 0, 22, 1
    slw 0, 3, 0
    lbz 4, 0x0(24)
    mr 3, 22
    or 0, 4, 0
    stb 0, 0x0(24)
    bl fn_8023BCD4
    clrlwi 0, 3, 24
    cmplwi 0, 0xa0
    .4byte 0x40800020 # bge .L_80306E20
    lbz 4, 0x0(25)
    li 0, 0x1
    slw 0, 0, 22
    clrlwi 3, 4, 28
    or 0, 3, 0
    rlwimi 4, 0, 0, 28, 31
    stb 4, 0x0(25)
L_80306E20:
    addi 23, 23, 0x1
    cmpwi 23, 0x4
    .4byte 0x4180FEE8 # blt .L_80306D10
L_80306E2C:
    mr 3, 29
    bl fn_8023CE10
    lbz 0, 0xb(31)
    rlwimi 0, 3, 31, 24, 27
    addi 21, 31, 0xb
    mr 3, 29
    stb 0, 0xb(31)
    bl fn_8023CE10
    lbz 0, 0x0(21)
    rlwimi 0, 3, 31, 28, 28
    mr 3, 29
    stb 0, 0x0(21)
    bl fn_8023CE10
    lbz 0, 0xf(31)
    rlwimi 0, 3, 4, 24, 27
    addi 24, 31, 0xf
    mr 3, 29
    stb 0, 0xf(31)
    bl fn_8023CD74
    lbz 0, 0x13(31)
    rlwimi 0, 3, 31, 24, 27
    addi 21, 31, 0x13
    mr 3, 29
    stb 0, 0x13(31)
    bl fn_8023CD74
    lbz 0, 0x0(21)
    rlwimi 0, 3, 31, 28, 28
    mr 3, 29
    stb 0, 0x0(21)
    bl fn_8023CD74
    lbz 0, 0x17(31)
    rlwimi 0, 3, 4, 24, 27
    addi 25, 31, 0x17
    mr 3, 28
    stb 0, 0x17(31)
    li 22, 0x0
    bl fn_8037F1E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4180001C # blt .L_80306EE4
    mr 3, 28
    bl fn_8037F1E4
    clrlwi 0, 3, 24
    cmplwi 0, 0x5
    .4byte 0x41810008 # bgt .L_80306EE4
    li 22, 0x1
L_80306EE4:
    clrlwi 5, 22, 24
    lbz 0, 0x0(24)
    neg 4, 5
    mr 3, 29
    or 4, 4, 5
    li 22, 0x0
    rlwimi 0, 4, 4, 28, 28
    stb 0, 0x0(24)
    bl fn_8022F5B0
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_80306F38
    mr 3, 29
    bl fn_8023DE58
    mr 21, 3
    bl GetRoomConfigRecord
    mr 4, 21
    li 5, 0x2
    bl fn_802D7804
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_80306F38
    li 22, 0x1
L_80306F38:
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    clrlwi 6, 22, 24
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    lbz 4, 0x0(25)
    lbzx 3, 3, 0
    neg 5, 6
    or 0, 5, 6
    mr 7, 31
    rlwimi 4, 0, 4, 28, 28
    subic. 8, 3, 0x7
    stb 4, 0x0(25)
    .4byte 0x40810100 # ble .L_80307064
    srwi. 0, 8, 1
    mtctr 0
    .4byte 0x4182009C # beq .L_8030700C
L_80306F74:
    lbz 0, 0x1b(7)
    li 6, 0x1
    rlwimi 0, 6, 0, 31, 31
    li 5, 0x80
    stb 0, 0x1b(7)
    li 4, 0xe0
    li 3, 0x0
    stb 5, 0x1a(7)
    stb 4, 0x19(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 1, 29, 30
    stb 0, 0x1b(7)
    stb 3, 0x18(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 5, 24, 26
    stb 0, 0x1b(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 4, 27, 27
    stb 0, 0x1b(7)
    lbz 0, 0x1f(7)
    rlwimi 0, 6, 0, 31, 31
    stb 0, 0x1f(7)
    stb 5, 0x1e(7)
    stb 4, 0x1d(7)
    lbz 0, 0x1f(7)
    rlwimi 0, 3, 1, 29, 30
    stb 0, 0x1f(7)
    stb 3, 0x1c(7)
    lbz 0, 0x1f(7)
    rlwimi 0, 3, 5, 24, 26
    stb 0, 0x1f(7)
    lbz 0, 0x1f(7)
    rlwimi 0, 3, 4, 27, 27
    stb 0, 0x1f(7)
    addi 7, 7, 0x8
    .4byte 0x4200FF74 # bdnz .L_80306F74
    andi. 8, 8, 0x1
    .4byte 0x4182005C # beq .L_80307064
L_8030700C:
    mtctr 8
    li 6, 0x1
    li 5, 0x80
    li 4, 0xe0
    li 3, 0x0
L_80307020:
    lbz 0, 0x1b(7)
    rlwimi 0, 6, 0, 31, 31
    stb 0, 0x1b(7)
    stb 5, 0x1a(7)
    stb 4, 0x19(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 1, 29, 30
    stb 0, 0x1b(7)
    stb 3, 0x18(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 5, 24, 26
    stb 0, 0x1b(7)
    lbz 0, 0x1b(7)
    rlwimi 0, 3, 4, 27, 27
    stb 0, 0x1b(7)
    addi 7, 7, 0x4
    .4byte 0x4200FFC0 # bdnz .L_80307020
L_80307064:
    mr 3, 28
    li 21, 0x0
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80307098
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    .4byte 0x38A2E678 # li r5, lbl_80541618@sda21
    mr 3, 27
    mr 4, 28
    lbzx 5, 5, 0
    subi 5, 5, 0x7
    bl fn_803066F0
    mr 21, 3
L_80307098:
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_803070CC
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    .4byte 0x38A2E678 # li r5, lbl_80541618@sda21
    mr 3, 27
    mr 4, 28
    lbzx 5, 5, 0
    mr 6, 21
    subi 0, 5, 0x7
    subf 5, 21, 0
    bl fn_803064A8
L_803070CC:
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    lbzx 3, 3, 0
    subi 22, 3, 0x8
    .4byte 0x48000090 # b .L_8030716C
L_803070E0:
    mr 24, 31
    li 23, 0x0
    .4byte 0x48000078 # b .L_80307160
L_803070EC:
    lbz 0, 0x1b(24)
    lbz 4, 0x18(24)
    extrwi 3, 0, 3, 24
    rlwimi 4, 0, 7, 22, 23
    bl fn_803074A4
    addi 0, 23, 0x1
    lbz 4, 0x1c(24)
    slwi 0, 0, 2
    mr 25, 3
    add 21, 31, 0
    lbz 0, 0x1b(21)
    extrwi 3, 0, 3, 24
    rlwimi 4, 0, 7, 22, 23
    bl fn_803074A4
    lbz 4, 0x1d(24)
    cmplwi 4, 0xe0
    .4byte 0x4182002C # beq .L_80307158
    cmpw 25, 3
    .4byte 0x41800014 # blt .L_80307148
    .4byte 0x40820020 # bne .L_80307158
    lbz 0, 0x19(24)
    cmplw 0, 4
    .4byte 0x40800014 # bge .L_80307158
L_80307148:
    lwz 0, 0x18(24)
    lwz 4, 0x18(21)
    stw 0, 0x18(21)
    stw 4, 0x18(24)
L_80307158:
    addi 24, 24, 0x4
    addi 23, 23, 0x1
L_80307160:
    cmpw 23, 22
    .4byte 0x4180FF88 # blt .L_803070EC
    subi 22, 22, 0x1
L_8030716C:
    cmpwi 22, 0x0
    .4byte 0x4181FF70 # bgt .L_803070E0
    lwzx 0, 26, 30
    clrlwi. 0, 0, 31
    .4byte 0x408200D0 # bne .L_8030724C
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x4080005C # bge .L_803071E8
    bl GetRoomConfigRecord
    li 4, 0x8
    bl fn_802D7AC4
    li 0, -0x1
    and 3, 4, 0
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    stw 3, 0x20(1)
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    lbzx 0, 3, 0
    lbz 6, 0x23(1)
    slwi 3, 0, 2
    lbz 5, 0x22(1)
    lbz 4, 0x21(1)
    subi 0, 3, 0x4
    lbz 3, 0x20(1)
    stb 6, 0x24(1)
    stb 5, 0x25(1)
    stb 4, 0x26(1)
    stb 3, 0x27(1)
    lwz 3, 0x24(1)
    stwx 3, 31, 0
    .4byte 0x48000120 # b .L_80307304
L_803071E8:
    mr 3, 29
    bl fn_8023DE58
    mr 21, 3
    bl GetRoomConfigRecord
    mr 4, 21
    bl fn_802D7AC4
    li 0, -0x1
    and 3, 4, 0
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    stw 3, 0x18(1)
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    lbzx 0, 3, 0
    lbz 6, 0x1b(1)
    slwi 3, 0, 2
    lbz 5, 0x1a(1)
    lbz 4, 0x19(1)
    subi 0, 3, 0x4
    lbz 3, 0x18(1)
    stb 6, 0x1c(1)
    stb 5, 0x1d(1)
    stb 4, 0x1e(1)
    stb 3, 0x1f(1)
    lwz 3, 0x1c(1)
    stwx 3, 31, 0
    .4byte 0x480000BC # b .L_80307304
L_8030724C:
    mr 3, 29
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800054 # bge .L_803072AC
    bl GetRoomConfigRecord
    li 4, 0x8
    bl fn_802D7AC4
    stw 3, 0x10(1)
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    lbz 7, 0x13(1)
    lbz 6, 0x12(1)
    lbz 5, 0x11(1)
    lbz 4, 0x10(1)
    lbzx 0, 3, 0
    stb 7, 0x14(1)
    slwi 3, 0, 2
    stb 6, 0x15(1)
    subi 0, 3, 0x4
    stb 5, 0x16(1)
    stb 4, 0x17(1)
    lwz 3, 0x14(1)
    stwx 3, 31, 0
    .4byte 0x4800005C # b .L_80307304
L_803072AC:
    mr 3, 29
    bl fn_8023DE58
    mr 21, 3
    bl GetRoomConfigRecord
    mr 4, 21
    bl fn_802D7AC4
    stw 3, 0x8(1)
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    .4byte 0x880D9148 # lbz r0, lbl_8053AD08@sda21(r0)
    lbz 7, 0xb(1)
    lbz 6, 0xa(1)
    lbz 5, 0x9(1)
    lbz 4, 0x8(1)
    lbzx 0, 3, 0
    stb 7, 0xc(1)
    slwi 3, 0, 2
    stb 6, 0xd(1)
    subi 0, 3, 0x4
    stb 5, 0xe(1)
    stb 4, 0xf(1)
    lwz 3, 0xc(1)
    stwx 3, 31, 0
L_80307304:
    lis 3, lbl_80504A18@ha
    lis 4, lbl_804FBC18@ha
    addi 3, 3, lbl_80504A18@l
    li 0, 0x0
    lwzx 3, 3, 30
    mulli 5, 28, 0x2380
    addi 4, 4, lbl_804FBC18@l
    mulli 3, 3, 0x11c
    add 4, 4, 5
    add 3, 4, 3
    lbz 3, 0x118(3)
    cmplwi 3, 0x0
    .4byte 0x408200B0 # bne .L_803073E4
    .4byte 0x888D9148 # lbz r4, lbl_8053AD08@sda21(r0)
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    addi 6, 31, 0x8
    li 5, 0x8
    lbzx 3, 3, 4
    slwi 7, 3, 2
    cmpwi 7, 0x8
    .4byte 0x40810138 # ble .L_8030748C
    subi 3, 7, 0x8
    cmpwi 3, 0x8
    .4byte 0x40810060 # ble .L_803073C0
    subi 3, 3, 0x1
    srwi 3, 3, 3
    mtctr 3
    .4byte 0x40810050 # ble .L_803073C0
L_80307374:
    lbz 4, 0x0(6)
    addi 5, 5, 0x8
    lbz 3, 0x1(6)
    add 0, 0, 4
    lbz 4, 0x2(6)
    add 0, 0, 3
    lbz 3, 0x3(6)
    add 0, 0, 4
    lbz 4, 0x4(6)
    add 0, 0, 3
    lbz 3, 0x5(6)
    add 0, 0, 4
    lbz 4, 0x6(6)
    add 0, 0, 3
    lbz 3, 0x7(6)
    add 0, 0, 4
    addi 6, 6, 0x8
    add 0, 0, 3
    .4byte 0x4200FFB8 # bdnz .L_80307374
L_803073C0:
    subf 3, 5, 7
    mtctr 3
    cmpw 5, 7
    .4byte 0x408000C0 # bge .L_8030748C
L_803073D0:
    lbz 3, 0x0(6)
    addi 6, 6, 0x1
    add 0, 0, 3
    .4byte 0x4200FFF4 # bdnz .L_803073D0
    .4byte 0x480000AC # b .L_8030748C
L_803073E4:
    .4byte 0x888D9148 # lbz r4, lbl_8053AD08@sda21(r0)
    .4byte 0x3862E678 # li r3, lbl_80541618@sda21
    addi 6, 31, 0x8
    li 5, 0x8
    lbzx 3, 3, 4
    slwi 7, 3, 2
    cmpwi 7, 0x8
    .4byte 0x4081008C # ble .L_8030748C
    subi 3, 7, 0x8
    cmpwi 3, 0x8
    .4byte 0x40810060 # ble .L_8030746C
    subi 3, 3, 0x1
    srwi 3, 3, 3
    mtctr 3
    .4byte 0x40810050 # ble .L_8030746C
L_80307420:
    lbz 4, 0x0(6)
    addi 5, 5, 0x8
    lbz 3, 0x1(6)
    add 0, 0, 4
    lbz 4, 0x2(6)
    add 0, 0, 3
    lbz 3, 0x3(6)
    add 0, 0, 4
    lbz 4, 0x4(6)
    add 0, 0, 3
    lbz 3, 0x5(6)
    add 0, 0, 4
    lbz 4, 0x6(6)
    add 0, 0, 3
    lbz 3, 0x7(6)
    add 0, 0, 4
    addi 6, 6, 0x8
    add 0, 0, 3
    .4byte 0x4200FFB8 # bdnz .L_80307420
L_8030746C:
    subf 3, 5, 7
    mtctr 3
    cmpw 5, 7
    .4byte 0x40800014 # bge .L_8030748C
L_8030747C:
    lbz 3, 0x0(6)
    addi 6, 6, 0x1
    add 0, 0, 3
    .4byte 0x4200FFF4 # bdnz .L_8030747C
L_8030748C:
    stb 0, 0x0(31)
    lmw 21, 0x34(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

