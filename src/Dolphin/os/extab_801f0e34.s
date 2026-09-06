.section extab, "a"
.balign 4
.global etb_80008DAC
etb_80008DAC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008DAC, 8

.section extabindex, "a"
.balign 4
.global eti_8001645C
eti_8001645C:
    .4byte fn_801F0E34
    .4byte 0x00000350
    .4byte etb_80008DAC
.size eti_8001645C, 12

.text
.balign 4
.global fn_801F0E34

# fn_801F0E34(this, code, param) - a "post a room-scoped
# notification/message" dispatcher, called by "Class B" of the
# RUSA-repel movement family as `fn_801F0E34(this, 0x4097, 0)` (see
# extab_8018359c.s) and "Class C" as `fn_801F0E34(this, 0x40ab, 0)`
# (extab_801840e0.s) - both hit only the GENERIC default path
# described below, since `code` doesn't match any of the small
# special-cased constants.
#
# If `this->0x4 < 8` (room index), OR the special-cased checks below
# don't match, falls to the GENERIC path: resolves an object via
# `Registry_GetSlotValueOrFallback(lbl_8053AAF8->0x4->0x8, this->0x19c)` (the SAME
# manager->registry field the confirmed spatial registry system uses,
# see reference_fsa_spatial_registry_system.md - `this->0x19c` is this
# actor's own registered ID), stores a small signed byte at the
# resolved object's `+0x44` (`8 - this->0x4`, i.e. how far this room is
# from room 8), then classifies the room via `fn_802D7804(config,
# this->0x4, 0x800)` (a bit-test, same shape as other confirmed room-
# flag checks) and `fn_802D7948` (not decompiled) into a small enum
# (0-3) stored at the object's `+0x45`. Finally calls
# `fn_80456334(object, &{code,param}, param)` (not decompiled - the
# shape, an object + a small packed struct, matches a UI/HUD message-
# queue "post" call).
#
# NOT decompiled: 4 special-cased branches for `code` values in
# [0x30000,0x30009], 4, 0x22, and 0x4b, each looping all 4 players and
# conditionally calling `fn_803037D4(playerIdx, subCode)` - reads like
# a separate multiplayer message-broadcast system, unrelated to the
# RUSA-repel family's actual call sites (which never hit these
# branches) and not investigated further.
fn_801F0E34:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 3, 0x4(3)
    stw 28, 0x10(1)
    cmpwi 3, 0x8
    .4byte 0x4180001C # blt .L_801F0E80
    addi 4, 29, 0xc
    bl fn_8022BB48
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801F0E80
    li 3, 0x0
    .4byte 0x480002E8 # b .L_801F1164
L_801F0E80:
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x418001E8 # blt .L_801F1070
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801F0EAC
    lbz 0, 0x83(3)
    clrlwi 0, 0, 30
    cmplwi 0, 0x2
    .4byte 0x418201C8 # beq .L_801F1070
L_801F0EAC:
    subis 0, 30, 0x3
    cmplwi 0, 0x9
    .4byte 0x4082006C # bne .L_801F0F20
    li 28, 0x0
    li 30, 0x1
L_801F0EC0:
    lwz 4, 0x4(29)
    mr 3, 28
    addi 5, 29, 0xc
    bl fn_8022BC38
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_801F0F0C
    mr 3, 28
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801F0F0C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 30, 28
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_801F0F0C
    mr 3, 28
    li 4, 0x8
    bl fn_803037D4
L_801F0F0C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFAC # blt .L_801F0EC0
    li 3, 0x0
    .4byte 0x48000248 # b .L_801F1164
L_801F0F20:
    cmplwi 0, 0x4
    .4byte 0x4082006C # bne .L_801F0F90
    li 28, 0x0
    li 30, 0x1
L_801F0F30:
    lwz 4, 0x4(29)
    mr 3, 28
    addi 5, 29, 0xc
    bl fn_8022BC38
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_801F0F7C
    mr 3, 28
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801F0F7C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 30, 28
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_801F0F7C
    mr 3, 28
    li 4, 0xb
    bl fn_803037D4
L_801F0F7C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFAC # blt .L_801F0F30
    li 3, 0x0
    .4byte 0x480001D8 # b .L_801F1164
L_801F0F90:
    cmplwi 0, 0x22
    .4byte 0x4082006C # bne .L_801F1000
    li 28, 0x0
    li 30, 0x1
L_801F0FA0:
    lwz 4, 0x4(29)
    mr 3, 28
    addi 5, 29, 0xc
    bl fn_8022BC38
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_801F0FEC
    mr 3, 28
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801F0FEC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 30, 28
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_801F0FEC
    mr 3, 28
    li 4, 0x7
    bl fn_803037D4
L_801F0FEC:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFAC # blt .L_801F0FA0
    li 3, 0x0
    .4byte 0x48000168 # b .L_801F1164
L_801F1000:
    cmplwi 0, 0x4b
    .4byte 0x4082006C # bne .L_801F1070
    li 28, 0x0
    li 30, 0x1
L_801F1010:
    lwz 4, 0x4(29)
    mr 3, 28
    addi 5, 29, 0xc
    bl fn_8022BC38
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_801F105C
    mr 3, 28
    bl fn_8030381C
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801F105C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 30, 28
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_801F105C
    mr 3, 28
    li 4, 0x8
    bl fn_803037D4
L_801F105C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFAC # blt .L_801F1010
    li 3, 0x0
    .4byte 0x480000F8 # b .L_801F1164
L_801F1070:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x19c(29)
    lwz 3, 0x4(3)
    lwz 3, 0x8(3)
    bl Registry_GetSlotValueOrFallback
    lwz 6, 0x4(29)
    li 0, 0x8
    srwi 4, 0, 31
    mr 28, 3
    srawi 5, 6, 31
    subfc 0, 0, 6
    adde 0, 5, 4
    stb 0, 0x44(3)
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    li 5, 0x800
    bl fn_802D7804
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801F10C8
    li 0, 0x0
    stb 0, 0x45(28)
    .4byte 0x4800008C # b .L_801F1150
L_801F10C8:
    lwz 0, 0x4(29)
    cmpwi 0, 0x8
    .4byte 0x4080002C # bge .L_801F10FC
    bl GetRoomConfigRecord
    bl fn_802D7948
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_801F10F0
    li 0, 0x2
    stb 0, 0x45(28)
    .4byte 0x48000064 # b .L_801F1150
L_801F10F0:
    li 0, 0x0
    stb 0, 0x45(28)
    .4byte 0x48000058 # b .L_801F1150
L_801F10FC:
    .4byte 0x40820010 # bne .L_801F110C
    li 0, 0x3
    stb 0, 0x45(28)
    .4byte 0x48000048 # b .L_801F1150
L_801F110C:
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    lwz 0, 0x54(3)
    cmpw 4, 0
    .4byte 0x4080002C # bge .L_801F1148
    bl GetRoomConfigRecord
    bl fn_802D7948
    cmpwi 3, 0x1
    .4byte 0x40820010 # bne .L_801F113C
    li 0, 0x2
    stb 0, 0x45(28)
    .4byte 0x48000018 # b .L_801F1150
L_801F113C:
    li 0, 0x1
    stb 0, 0x45(28)
    .4byte 0x4800000C # b .L_801F1150
L_801F1148:
    li 0, 0x2
    stb 0, 0x45(28)
L_801F1150:
    stw 30, 0x8(1)
    mr 3, 28
    mr 5, 31
    addi 4, 1, 0x8
    bl fn_80456334
L_801F1164:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
