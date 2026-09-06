.section extab, "a"
.balign 4
.global etb_8000CB74
etb_8000CB74:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000CB74, 8

.section extabindex, "a"
.balign 4
.global eti_8001BAA8
eti_8001BAA8:
    .4byte fn_802CBAFC
    .4byte 0x00000174
    .4byte etb_8000CB74
.size eti_8001BAA8, 12

.text
.balign 4
.global fn_802CBAFC

# fn_802CBAFC(this) - ONOF's vtable slot 0x10 override (not part of the
# standard quartet). **A GENUINE MULTI-SWITCH COMBINATION-PUZZLE CHECKER**
# - the clearest confirmation yet that the flag/switch family from
# [[project_fsa_flag_switch_helpers]] generalizes across actor types,
# not just within one actor.
#
# Walks the ENTIRE actor pool (via the CONFIRMED `SpatialRegistry_GetBase` table +
# its cached high-water-mark count at `table[0x1008]`, the SAME field
# `fn_801F857C`'s destroy-all sweep maintains) looking for OTHER live
# actors whose own spawn code (`->0x1a0`) is `'SWT4'` or `'LOSW'` (2 more
# switch-family codes from the dispatch sweep) in the SAME room/group
# (`other->0x170 == this->0x170`).
#
# For each match: reads that actor's spawn param (`->0x90`), derives a
# 5-bit "switch group index" (top 5 bits, `srwi 27`) and checks 4 bit
# patterns of the raw param against a fixed table (`lbl_8046D8F8`) - for
# whichever pattern matches (and `this->0x244`, a per-pattern-slot state,
# is still 0): steps the CONFIRMED real-time helper `GetRoomConfigRecord` then
# calls **`fn_802D800C(groupIndex)`** - the CONFIRMED direct-bit-index
# global flag checker from [[project_fsa_flag_switch_helpers]] - and if
# that bit is set, plays a sound-sequence via `fn_802A3948` (the SAME
# helper DOOR's update uses, code `0xbe`) plus creates 2 sound-effect
# handles via `fn_8013CC50` (codes `0x428`/`0x429`, stored into
# `this->0x230/0x234` - the SAME 2 handles `fn_802CBA78`'s destructor
# releases) and sets `this->0x238=4` (a "combo complete" state code).
#
# Reads as: **when a group of linked switches (ONOF/SWT4/LOSW) in the
# same room all satisfy their combination condition, a shared global
# flag bit (checked via the exact same primitive DOOR/KEY0 use) gates a
# "puzzle solved" sound cue and state transition.** This is the concrete
# multi-object puzzle mechanic the flag-registry system exists to serve.
fn_802CBAFC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 24, 0x10(1)
    mr 28, 3
    bl SpatialRegistry_GetBase
    lwz 31, 0x1008(3)
    li 29, 0x0
    li 30, 0x0
    .4byte 0x48000134 # b .L_802CBC54
L_802CBB24:
    bl SpatialRegistry_GetBase
    addi 0, 30, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820118 # beq .L_802CBC4C
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x5357
    cmplwi 0, 0x5434
    .4byte 0x41820010 # beq .L_802CBB54
    subis 0, 3, 0x4c4f
    cmplwi 0, 0x5357
    .4byte 0x408200FC # bne .L_802CBC4C
L_802CBB54:
    lwz 3, 0x170(28)
    lwz 0, 0x170(4)
    cmpw 3, 0
    .4byte 0x408200EC # bne .L_802CBC4C
    lwz 27, 0x90(4)
    lis 3, lbl_8046D8F8@ha
    addi 26, 3, lbl_8046D8F8@l
    li 24, 0x0
    srwi 25, 27, 27
L_802CBB78:
    lwz 0, 0x0(26)
    lwz 3, 0x244(28)
    srw 0, 27, 0
    clrlwi 0, 0, 27
    cmplw 3, 0
    .4byte 0x408200B0 # bne .L_802CBC3C
    stw 25, 0x258(28)
    bl GetRoomConfigRecord
    lwz 4, 0x258(28)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_802CBC3C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 28, 0xc
    lwz 6, 0x4(28)
    li 5, 0x0
    li 7, 0xbe
    bl fn_802A3948
    lwz 0, 0x230(28)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802CBBF8
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DE20 # lfs f1, lbl_80540DC0@sda21(r0)
    li 5, 0x428
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(28)
L_802CBBF8:
    lwz 0, 0x234(28)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802CBC30
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022DE20 # lfs f1, lbl_80540DC0@sda21(r0)
    li 5, 0x429
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(28)
L_802CBC30:
    li 0, 0x4
    stw 0, 0x238(28)
    .4byte 0x48000014 # b .L_802CBC4C
L_802CBC3C:
    addi 24, 24, 0x1
    addi 26, 26, 0x4
    cmpwi 24, 0x4
    .4byte 0x4180FF30 # blt .L_802CBB78
L_802CBC4C:
    addi 30, 30, 0x4
    addi 29, 29, 0x1
L_802CBC54:
    cmpw 29, 31
    .4byte 0x4180FECC # blt .L_802CBB24
    lmw 24, 0x10(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

