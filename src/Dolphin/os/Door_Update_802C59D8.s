.section extab, "a"
.balign 4
.global etb_8000CAAC
etb_8000CAAC:
    .4byte 0x488A0000
    .4byte 0x00000000
.size etb_8000CAAC, 8

.section extabindex, "a"
.balign 4
.global eti_8001B97C
eti_8001B97C:
    .4byte fn_802C59D8
    .4byte 0x000022E0
    .4byte etb_8000CAAC
.size eti_8001B97C, 12

.text
.balign 4
.global fn_802C59D8

# fn_802C59D8(this) - DOOR's real update(). THE LARGEST FUNCTION IN THE
# ENTIRE PROJECT (2232 instructions, ~8.9KB) - read extensively across
# its full range (opening, middle, and multiple state-transition blocks)
# and genuinely understood at the architectural level; the majority of
# its 15-state x per-door-type inner dispatch is survey-level rather than
# individually traced (each door type/state combination follows one of a
# small number of repeated shapes - flag check, sound cue, sub-actor
# spawn, or position/animation update - just with different constants),
# consistent with this project's practice for its largest functions.
#
# Confirmed architecture:
# 1. Calls `fn_80226BC4(this->4)` (new) once at the top of every frame -
#    likely a room/bounds or collision-region lookup, given its result is
#    reused throughout as an implicit "context" value.
# 2. **Main state machine**: dispatches on `this->0x230` (0-14,
#    `jumptable_804A8E00`) representing the door's lifecycle (closed,
#    opening, open, closing, locked/shake-when-blocked, various
#    type-specific sub-states), with an INNER dispatch on the door TYPE
#    field (`this->0x234`, set in setParams) inside several state
#    handlers - i.e. the same door-type taxonomy from setParams drives
#    genuinely different per-frame behavior, not just spawn-time
#    position offsets.
# 3. **Flag-gated auto-open/state-check**: repeats the SAME
#    `GetRoomConfigRecord`+`fn_802D4C10`/`fn_802D7D00` global flag/switch-query
#    pattern from setParams, checked continuously (not just at spawn) -
#    a door can open mid-game the instant its condition becomes true.
# 4. **Door open/break sequence** (a locked-door state, `this->0x234==5`
#    or `6`): plays a sound sequence via `fn_802A3948`/`fn_8029DF80`
#    (new, both keyed off the shared table `lbl_8053AC98`) plus the
#    CONFIRMED `fn_8013CC50` primitive (codes `0x564`/`0x503`, creak/open
#    cues) and `fn_801F0E34` (code `0x375`), THEN - for higher door
#    types - spawns a companion actor via the CONFIRMED
#    `SpatialRegistry_GetBase`+`fn_801F9484` pair with the literal FourCC **`'KMRI'`**
#    (0x4B4D5249) at the door's own position. **This resolves a loose end
#    flagged in an earlier session** ([[project_fsa_effect_playback_primitive]]
#    noted `'KMRI'` as "a NEW, previously-unseen 4-char code... left
#    unconfirmed/unnamed") - it's a real, spawnable actor, almost
#    certainly a smoke/debris particle effect (the door-break dust cloud;
#    "kemuri" is the Japanese word for smoke, a plausible romanized-code
#    origin matching this project's other 4CC naming conventions).
# 5. Calls the sibling helper `Actor_SetVec3_0x0` (same translation unit as
#    DOOR's own setParams `fn_802C7CC8`, immediately preceding it - not
#    yet decompiled, likely a "compute door-frame world position/matrix"
#    helper reused by both).
fn_802C59D8:
    stwu 1, -0x360(1)
    mflr 0
    stw 0, 0x364(1)
    stfd 31, 0x350(1)
    psq_st 31, 0x358(1), 0, 0
    stfd 30, 0x340(1)
    psq_st 30, 0x348(1), 0, 0
    stmw 23, 0x31c(1)
    mr 31, 3
    lis 3, lbl_8046D598@ha
    lfs 1, 0x25c(31)
    addi 30, 3, lbl_8046D598@l
    lfs 0, 0x258(31)
    addi 3, 1, 0x28
    stfs 0, 0x28(1)
    stfs 1, 0x2c(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    lwz 4, 0x230(31)
    mr 23, 3
    cmplwi 4, 0xe
    .4byte 0x41812268 # bgt .L_802C7C94
    lis 3, jumptable_804A8E00@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_804A8E00@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x234(31)
    cmpwi 3, 0x5
    .4byte 0x418209EC # beq .L_802C643C
    subi 0, 3, 0x6
    cmplwi 0, 0x1
    .4byte 0x408109E0 # ble .L_802C643C
    cmpwi 4, 0x3
    .4byte 0x40820038 # bne .L_802C5A9C
    bl GetRoomConfigRecord
    lwz 0, 0x244(31)
    lwz 4, 0x4(31)
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 24, 3
    cmpwi 24, -0x1
    .4byte 0x41820018 # beq .L_802C5A9C
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    mr 5, 24
    li 6, 0x1
    bl fn_802D7D00
L_802C5A9C:
    lwz 4, 0x4(31)
    li 29, 0x8
    cmpwi 4, 0x8
    .4byte 0x40800008 # bge .L_802C5AB0
    li 29, 0x1
L_802C5AB0:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x418202B0 # beq .L_802C5D68
    .4byte 0x40800010 # bge .L_802C5ACC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802C5AD8
    .4byte 0x480007D8 # b .L_802C62A0
L_802C5ACC:
    cmpwi 0, 0x3
    .4byte 0x408007D0 # bge .L_802C62A0
    .4byte 0x480004F4 # b .L_802C5FC8
L_802C5AD8:
    lwz 0, 0x234(31)
    addi 9, 30, 0x0
    lwz 10, 0x238(31)
    mr 5, 23
    slwi 6, 0, 4
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    slwi 8, 10, 2
    add 7, 6, 8
    add 0, 9, 6
    add 8, 0, 8
    lhzx 7, 9, 7
    lhz 8, 0x2(8)
    extrwi 6, 10, 1, 30
    bl fn_8029DEBC
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820158 # bne .L_802C5C70
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x4082014C # bne .L_802C5C70
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_802C5B80
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x2c0
    lfs 1, 0x258(31)
    lfs 0, 0x25c(31)
    fadds 1, 2, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x443
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000F4 # b .L_802C5C70
L_802C5B80:
    cmpwi 0, 0x1
    .4byte 0x4082004C # bne .L_802C5BD0
    .4byte 0xC022DD60 # lfs f1, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x2b4
    lfs 0, 0x258(31)
    lfs 2, 0x25c(31)
    fadds 1, 1, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x446
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000A4 # b .L_802C5C70
L_802C5BD0:
    cmpwi 0, 0x2
    .4byte 0x4082004C # bne .L_802C5C20
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x2a8
    lfs 0, 0x25c(31)
    lfs 1, 0x258(31)
    fadds 2, 2, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x444
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000054 # b .L_802C5C70
L_802C5C20:
    cmpwi 0, 0x3
    .4byte 0x4082004C # bne .L_802C5C70
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x29c
    lfs 1, 0x258(31)
    lfs 0, 0x25c(31)
    fadds 1, 2, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x445
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C5C70:
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802C5C84
    cmpwi 0, 0x4
    .4byte 0x40820620 # bne .L_802C62A0
L_802C5C84:
    lwz 0, 0x238(31)
    lis 5, 0x4330
    addi 3, 30, 0x260
    addi 4, 30, 0x250
    slwi 0, 0, 2
    stw 5, 0x308(1)
    lwzx 6, 3, 0
    addi 3, 1, 0x20
    lwzx 0, 4, 0
    xoris 4, 6, 0x8000
    stw 5, 0x310(1)
    xoris 0, 0, 0x8000
    .4byte 0xC862DD98 # lfd f3, lbl_80540D38@sda21(r0)
    stw 4, 0x30c(1)
    lfs 4, 0x25c(31)
    stw 0, 0x314(1)
    lfd 1, 0x308(1)
    lfd 0, 0x310(1)
    fsubs 2, 1, 3
    lfs 1, 0x258(31)
    fsubs 0, 0, 3
    fadds 2, 4, 2
    fadds 0, 1, 0
    stfs 2, 0x24(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    lwz 0, 0x234(31)
    mr 5, 3
    cmpwi 0, 0x2
    .4byte 0x40820038 # bne .L_802C5D34
    lwz 10, 0x238(31)
    addi 6, 30, 0x180
    lwz 9, 0x4(31)
    clrlwi 0, 29, 24
    slwi 7, 10, 2
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    add 4, 6, 7
    lhzx 7, 6, 7
    lhz 8, 0x2(4)
    add 4, 9, 0
    extrwi 6, 10, 1, 30
    bl fn_8029DEBC
    .4byte 0x48000570 # b .L_802C62A0
L_802C5D34:
    lwz 10, 0x238(31)
    addi 6, 30, 0x190
    lwz 9, 0x4(31)
    clrlwi 0, 29, 24
    slwi 7, 10, 2
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    add 4, 6, 7
    lhzx 7, 6, 7
    lhz 8, 0x2(4)
    add 4, 9, 0
    extrwi 6, 10, 1, 30
    bl fn_8029DEBC
    .4byte 0x4800053C # b .L_802C62A0
L_802C5D68:
    lwz 0, 0x234(31)
    addi 6, 30, 0x90
    lwz 9, 0x238(31)
    mr 5, 23
    slwi 8, 0, 5
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    slwi 7, 9, 3
    add 0, 6, 8
    add 10, 0, 7
    add 0, 8, 7
    lhz 8, 0x2(10)
    lhzx 7, 6, 0
    extrwi 6, 9, 1, 30
    lhz 9, 0x4(10)
    lhz 10, 0x6(10)
    bl fn_8029DD50
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820160 # bne .L_802C5F10
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x40820154 # bne .L_802C5F10
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_802C5E1C
    .4byte 0xC062DD6C # lfs f3, lbl_80540D0C@sda21(r0)
    addi 3, 1, 0x290
    lfs 1, 0x258(31)
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x43f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000F8 # b .L_802C5F10
L_802C5E1C:
    cmpwi 0, 0x1
    .4byte 0x4082004C # bne .L_802C5E6C
    .4byte 0xC022DD6C # lfs f1, lbl_80540D0C@sda21(r0)
    addi 3, 1, 0x284
    lfs 0, 0x258(31)
    lfs 2, 0x25c(31)
    fadds 1, 1, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x442
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000A8 # b .L_802C5F10
L_802C5E6C:
    cmpwi 0, 0x2
    .4byte 0x4082004C # bne .L_802C5EBC
    .4byte 0xC042DD6C # lfs f2, lbl_80540D0C@sda21(r0)
    addi 3, 1, 0x278
    lfs 0, 0x25c(31)
    lfs 1, 0x258(31)
    fadds 2, 2, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x440
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000058 # b .L_802C5F10
L_802C5EBC:
    cmpwi 0, 0x3
    .4byte 0x40820050 # bne .L_802C5F10
    .4byte 0xC062DD60 # lfs f3, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x26c
    lfs 1, 0x258(31)
    .4byte 0xC042DD6C # lfs f2, lbl_80540D0C@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x441
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C5F10:
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x40820388 # bne .L_802C62A0
    lwz 0, 0x238(31)
    lis 5, 0x4330
    addi 3, 30, 0x260
    addi 4, 30, 0x250
    slwi 0, 0, 2
    stw 5, 0x310(1)
    lwzx 6, 3, 0
    addi 3, 1, 0x18
    lwzx 0, 4, 0
    xoris 4, 6, 0x8000
    stw 5, 0x308(1)
    xoris 0, 0, 0x8000
    .4byte 0xC862DD98 # lfd f3, lbl_80540D38@sda21(r0)
    stw 4, 0x314(1)
    lfs 4, 0x25c(31)
    stw 0, 0x30c(1)
    lfd 1, 0x310(1)
    lfd 0, 0x308(1)
    fsubs 2, 1, 3
    lfs 1, 0x258(31)
    fsubs 0, 0, 3
    fadds 2, 4, 2
    fadds 0, 1, 0
    stfs 2, 0x1c(1)
    stfs 0, 0x18(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    lwz 11, 0x238(31)
    addi 5, 30, 0x1a0
    lwz 6, 0x4(31)
    slwi 0, 11, 3
    add 4, 5, 0
    lhzx 7, 5, 0
    mr 5, 3
    lhz 8, 0x2(4)
    clrlwi 0, 29, 24
    lhz 9, 0x4(4)
    lhz 10, 0x6(4)
    add 4, 6, 0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    extrwi 6, 11, 1, 30
    bl fn_8029DD50
    .4byte 0x480002DC # b .L_802C62A0
L_802C5FC8:
    lwz 0, 0x234(31)
    addi 8, 30, 0xf0
    lwz 3, 0x238(31)
    mr 5, 23
    mulli 9, 0, 0x30
    extrwi 6, 3, 1, 30
    mulli 3, 3, 0xc
    add 0, 8, 9
    add 10, 0, 3
    add 0, 9, 3
    lhz 7, 0x8(10)
    lhz 3, 0xa(10)
    stw 7, 0x8(1)
    lhzx 7, 8, 0
    stw 3, 0xc(1)
    lhz 8, 0x2(10)
    lhz 9, 0x4(10)
    lhz 10, 0x6(10)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    bl fn_8029DB2C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820160 # bne .L_802C6180
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x40820154 # bne .L_802C6180
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_802C608C
    .4byte 0xC062DD70 # lfs f3, lbl_80540D10@sda21(r0)
    addi 3, 1, 0x260
    lfs 1, 0x258(31)
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x43b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000F8 # b .L_802C6180
L_802C608C:
    cmpwi 0, 0x1
    .4byte 0x4082004C # bne .L_802C60DC
    .4byte 0xC022DD70 # lfs f1, lbl_80540D10@sda21(r0)
    addi 3, 1, 0x254
    lfs 0, 0x258(31)
    lfs 2, 0x25c(31)
    fadds 1, 1, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x43e
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000A8 # b .L_802C6180
L_802C60DC:
    cmpwi 0, 0x2
    .4byte 0x4082004C # bne .L_802C612C
    .4byte 0xC042DD70 # lfs f2, lbl_80540D10@sda21(r0)
    addi 3, 1, 0x248
    lfs 0, 0x25c(31)
    lfs 1, 0x258(31)
    fadds 2, 2, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x43c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000058 # b .L_802C6180
L_802C612C:
    cmpwi 0, 0x3
    .4byte 0x40820050 # bne .L_802C6180
    .4byte 0xC062DD60 # lfs f3, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x23c
    lfs 1, 0x258(31)
    .4byte 0xC042DD70 # lfs f2, lbl_80540D10@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x43d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C6180:
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x40820118 # bne .L_802C62A0
    lwz 0, 0x238(31)
    lis 5, 0x4330
    addi 3, 30, 0x260
    addi 4, 30, 0x250
    slwi 0, 0, 2
    stw 5, 0x310(1)
    lwzx 6, 3, 0
    addi 3, 1, 0x10
    lwzx 0, 4, 0
    xoris 4, 6, 0x8000
    stw 5, 0x308(1)
    xoris 0, 0, 0x8000
    .4byte 0xC862DD98 # lfd f3, lbl_80540D38@sda21(r0)
    stw 4, 0x314(1)
    lfs 4, 0x25c(31)
    stw 0, 0x30c(1)
    lfd 1, 0x310(1)
    lfd 0, 0x308(1)
    fsubs 2, 1, 3
    lfs 1, 0x258(31)
    fsubs 0, 0, 3
    fadds 2, 4, 2
    fadds 0, 1, 0
    stfs 2, 0x14(1)
    stfs 0, 0x10(1)
    lwz 4, 0x4(31)
    bl fn_80226BC4
    lwz 6, 0x238(31)
    addi 4, 30, 0x1c0
    mr 27, 4
    mr 23, 3
    mulli 10, 6, 0xc
    mr 28, 4
    addi 27, 27, 0x8
    addi 24, 4, 0x2
    lhzx 0, 27, 10
    addi 25, 4, 0x4
    addi 28, 28, 0xa
    addi 26, 4, 0x6
    stw 0, 0x8(1)
    mr 5, 23
    lhzx 0, 28, 10
    extrwi 6, 6, 1, 30
    lhzx 7, 4, 10
    stw 0, 0xc(1)
    lhzx 8, 24, 10
    lhzx 9, 25, 10
    lhzx 10, 26, 10
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 4, 0x4(31)
    bl fn_8029DB2C
    lwz 4, 0x238(31)
    addi 3, 30, 0x1c0
    clrlwi 0, 29, 24
    mr 5, 23
    mulli 10, 4, 0xc
    extrwi 6, 4, 1, 30
    lhzx 4, 27, 10
    lhzx 7, 3, 10
    stw 4, 0x8(1)
    lhzx 3, 28, 10
    lhzx 8, 24, 10
    stw 3, 0xc(1)
    lhzx 9, 25, 10
    lwz 4, 0x4(31)
    lhzx 10, 26, 10
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    add 4, 4, 0
    bl fn_8029DB2C
L_802C62A0:
    lwz 0, 0x234(31)
    cmpwi 0, 0x8
    .4byte 0x4082001C # bne .L_802C62C4
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x6
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_802C62D8
L_802C62C4:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x7
    li 5, 0x0
    bl fn_801F0E34
L_802C62D8:
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_802C62F0
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820010 # beq .L_802C62FC
L_802C62F0:
    lwz 0, 0x234(31)
    cmpwi 0, 0x4
    .4byte 0x4082006C # bne .L_802C6364
L_802C62FC:
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800074 # blt .L_802C6378
    psq_l 0, 0x258(31), 0, 0
    addi 3, 1, 0x230
    lfs 4, 0x260(31)
    psq_st 0, 0x2fc(1), 0, 0
    .4byte 0xC062DD74 # lfs f3, lbl_80540D14@sda21(r0)
    lfs 1, 0x2fc(1)
    .4byte 0xC042DD78 # lfs f2, lbl_80540D18@sda21(r0)
    lfs 0, 0x300(1)
    fadds 1, 3, 1
    stfs 4, 0x304(1)
    fadds 2, 2, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x230
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000018 # b .L_802C6378
L_802C6364:
    cmpwi 0, 0x8
    .4byte 0x40820010 # bne .L_802C6378
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
L_802C6378:
    lwz 0, 0x230(31)
    cmpwi 0, 0x3
    .4byte 0x40820040 # bne .L_802C63C0
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_802C63C0
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_802C63C0
    bl SpatialRegistry_GetBase
    lis 4, 0x5345
    lwz 5, 0x4(31)
    addi 4, 4, 0x4e32
    addi 6, 31, 0xc
    li 7, 0x2800
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802C63C0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802C63D8
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x480018C0 # b .L_802C7C94
L_802C63D8:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_802C63F0
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_802C6430
L_802C63F0:
    cmpwi 3, 0x0
    .4byte 0x40820030 # bne .L_802C6424
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800024 # bge .L_802C6424
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802C6424
    li 3, 0x9
    li 0, 0x78
    stw 3, 0x230(31)
    stw 0, 0x250(31)
    .4byte 0x48001874 # b .L_802C7C94
L_802C6424:
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x48001868 # b .L_802C7C94
L_802C6430:
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x4800185C # b .L_802C7C94
L_802C643C:
    cmpwi 4, 0x3
    .4byte 0x40821854 # bne .L_802C7C94
    cmpwi 3, 0x5
    .4byte 0x408200D4 # bne .L_802C651C
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0x258
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0x9e
    bl fn_802A3948
    lwz 3, 0x4(31)
    cmpwi 3, 0x8
    .4byte 0x41800044 # blt .L_802C64B0
    psq_l 2, 0x258(31), 0, 0
    lfs 1, 0x260(31)
    .4byte 0xC002DD64 # lfs f0, lbl_80540D04@sda21(r0)
    stfs 1, 0x2f8(1)
    psq_st 2, 0x2f0(1), 0, 0
    stfs 0, 0x2f8(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x2f0
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000050 # b .L_802C64FC
L_802C64B0:
    .4byte 0xC022DD7C # lfs f1, lbl_80540D1C@sda21(r0)
    addi 4, 31, 0x258
    li 5, 0x564
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x258
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C64FC:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x75
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x4800177C # b .L_802C7C94
L_802C651C:
    cmpwi 3, 0x6
    .4byte 0x40821774 # bne .L_802C7C94
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 23
    lwz 5, 0x4(31)
    li 6, 0x3e7
    li 7, 0x3e8
    li 8, 0x3e9
    li 9, 0x3ea
    bl fn_8029DF80
    lwz 3, 0x4(31)
    cmpwi 3, 0x8
    .4byte 0x41800044 # blt .L_802C6590
    psq_l 2, 0x258(31), 0, 0
    lfs 1, 0x260(31)
    .4byte 0xC002DD64 # lfs f0, lbl_80540D04@sda21(r0)
    stfs 1, 0x2ec(1)
    psq_st 2, 0x2e4(1), 0, 0
    stfs 0, 0x2ec(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4b4d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5249
    addi 6, 1, 0x2e4
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000050 # b .L_802C65DC
L_802C6590:
    .4byte 0xC022DD7C # lfs f1, lbl_80540D1C@sda21(r0)
    addi 4, 31, 0x258
    li 5, 0x564
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0x258
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x503
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C65DC:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x75
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x4800169C # b .L_802C7C94
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x4082001C # bne .L_802C6624
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802C6624
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48001674 # b .L_802C7C94
L_802C6624:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48001668 # b .L_802C7C94
    lwz 0, 0x234(31)
    cmplwi 0, 0x8
    .4byte 0x4181165C # bgt .L_802C7C94
    lis 3, jumptable_804A8DDC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A8DDC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41821628 # beq .L_802C7C94
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800028 # bge .L_802C66A0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802C66A0
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802C66A0
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x480015F8 # b .L_802C7C94
L_802C66A0:
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x480015EC # b .L_802C7C94
    lwz 4, 0x4(31)
    addi 3, 31, 0x26c
    .4byte 0xC022DD64 # lfs f1, lbl_80540D04@sda21(r0)
    li 5, 0x0
    bl fn_8023AF14
    stw 3, 0x248(31)
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x418015C8 # blt .L_802C7C94
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820070 # bne .L_802C6748
    lwz 3, 0x248(31)
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x408215AC # bne .L_802C7C94
    lwz 3, 0x248(31)
    bl fn_8023EEB4
    subis 0, 3, 0x4b45
    cmplwi 0, 0x5930
    .4byte 0x40821598 # bne .L_802C7C94
    lwz 3, 0x248(31)
    bl fn_8023EF50
    mr 23, 3
    bl SpatialRegistry_GetBase
    mr 4, 23
    bl fn_801F666C
    mr. 23, 3
    .4byte 0x41821578 # beq .L_802C7C94
    lwz 0, 0x90(23)
    clrlwi. 0, 0, 27
    .4byte 0x4082156C # bne .L_802C7C94
    lwz 3, 0x248(31)
    bl fn_8023EE28
    mr 3, 23
    bl fn_802C1D90
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x48001550 # b .L_802C7C94
L_802C6748:
    li 24, 0x0
L_802C674C:
    lwz 0, 0x248(31)
    cmpw 24, 0
    .4byte 0x4182002C # beq .L_802C6780
    mr 3, 24
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820074 # bne .L_802C67DC
    mr 3, 24
    bl fn_8022F3DC
    lwz 0, 0x248(31)
    cmpw 0, 3
    .4byte 0x40820060 # bne .L_802C67DC
L_802C6780:
    mr 3, 24
    bl fn_8023EEB4
    subis 0, 3, 0x4b45
    cmplwi 0, 0x5930
    .4byte 0x4082004C # bne .L_802C67DC
    mr 3, 24
    bl fn_8023EF50
    mr 23, 3
    bl SpatialRegistry_GetBase
    mr 4, 23
    bl fn_801F666C
    mr. 23, 3
    .4byte 0x4182002C # beq .L_802C67DC
    lwz 0, 0x90(23)
    clrlwi. 0, 0, 27
    .4byte 0x40820020 # bne .L_802C67DC
    mr 3, 24
    bl fn_8023EE28
    mr 3, 23
    bl fn_802C1D90
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x480014BC # b .L_802C7C94
L_802C67DC:
    addi 24, 24, 0x1
    cmpwi 24, 0x4
    .4byte 0x4180FF68 # blt .L_802C674C
    .4byte 0x480014AC # b .L_802C7C94
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x4082036C # bne .L_802C6B60
    lis 4, 0x4842
    mr 3, 31
    addi 4, 4, 0x4d42
    bl fn_801F2718
    mr. 23, 3
    .4byte 0x41801488 # blt .L_802C7C94
    bl SpatialRegistry_GetBase
    mr 4, 23
    bl fn_801F666C
    mr 23, 3
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x4182146C # beq .L_802C7C94
    li 0, 0x3
    stw 0, 0x230(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x5345
    lwz 5, 0x4(31)
    addi 4, 4, 0x4e32
    addi 6, 31, 0xc
    li 7, 0x3c00
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_802C68AC
    .4byte 0xC022DD60 # lfs f1, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x224
    lfs 0, 0x258(31)
    lfs 2, 0x25c(31)
    fadds 1, 1, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x5d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000240 # b .L_802C6AE8
L_802C68AC:
    cmpwi 0, 0x1
    .4byte 0x40820198 # bne .L_802C6A48
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_802C690C
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x218
    lfs 1, 0x258(31)
    lfs 0, 0x25c(31)
    fadds 1, 2, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x60
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480001E0 # b .L_802C6AE8
L_802C690C:
    cmpwi 0, 0x2
    .4byte 0x408201D8 # bne .L_802C6AE8
    .4byte 0xC062DD80 # lfs f3, lbl_80540D20@sda21(r0)
    addi 3, 1, 0x20c
    lfs 1, 0x258(31)
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x60
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC062DD84 # lfs f3, lbl_80540D24@sda21(r0)
    addi 3, 1, 0x200
    lfs 1, 0x258(31)
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x60
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC062DD88 # lfs f3, lbl_80540D28@sda21(r0)
    addi 3, 1, 0x1f4
    lfs 1, 0x258(31)
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x60
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC062DD8C # lfs f3, lbl_80540D2C@sda21(r0)
    addi 3, 1, 0x1e8
    lfs 1, 0x258(31)
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x60
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000A4 # b .L_802C6AE8
L_802C6A48:
    cmpwi 0, 0x2
    .4byte 0x40820050 # bne .L_802C6A9C
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x1dc
    lfs 1, 0x258(31)
    lfs 0, 0x25c(31)
    fadds 1, 2, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x5e
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000050 # b .L_802C6AE8
L_802C6A9C:
    cmpwi 0, 0x3
    .4byte 0x40820048 # bne .L_802C6AE8
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x1d0
    lfs 0, 0x25c(31)
    lfs 1, 0x258(31)
    fadds 2, 2, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x5f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C6AE8:
    lwz 0, 0x90(23)
    cmplwi 0, 0xc
    .4byte 0x418211A4 # beq .L_802C7C94
    lis 4, 0x5741
    mr 3, 31
    addi 4, 4, 0x5250
    bl fn_801F2718
    mr. 23, 3
    .4byte 0x4180118C # blt .L_802C7C94
    bl SpatialRegistry_GetBase
    mr 4, 23
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41821178 # beq .L_802C7C94
    lwz 0, 0x90(3)
    addi 24, 3, 0x238
    extrwi. 3, 0, 3, 5
    addi 23, 3, 0x7
    .4byte 0x40820008 # bne .L_802C6B38
    mr 23, 3
L_802C6B38:
    bl SpatialRegistry_GetBase
    lis 4, 0x4842
    mr 5, 23
    mr 6, 24
    li 7, 0xc
    addi 4, 4, 0x4d42
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48001138 # b .L_802C7C94
L_802C6B60:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182111C # beq .L_802C7C94
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48001110 # b .L_802C7C94
    lwz 4, 0x4(31)
    addi 3, 31, 0x26c
    .4byte 0xC022DD64 # lfs f1, lbl_80540D04@sda21(r0)
    li 5, 0x0
    bl fn_8023AF14
    stw 3, 0x248(31)
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x418010EC # blt .L_802C7C94
    bl fn_8023EEB4
    subis 0, 3, 0x4b45
    cmplwi 0, 0x5930
    .4byte 0x408210DC # bne .L_802C7C94
    lwz 3, 0x248(31)
    bl fn_8023EF50
    mr 23, 3
    bl SpatialRegistry_GetBase
    mr 4, 23
    bl fn_801F666C
    mr. 23, 3
    .4byte 0x418210BC # beq .L_802C7C94
    lwz 0, 0x90(23)
    clrlwi 0, 0, 28
    cmplwi 0, 0x1
    .4byte 0x408210AC # bne .L_802C7C94
    lwz 3, 0x248(31)
    bl fn_8023EE28
    mr 3, 23
    bl fn_802C1DFC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 23, 0x0
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802C6C2C
    lwz 3, 0x248(31)
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_802C6C48
    li 23, 0x1
    .4byte 0x48000020 # b .L_802C6C48
L_802C6C2C:
    bl fn_8023077C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_802C6C48
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
    li 23, 0x1
L_802C6C48:
    clrlwi 0, 23, 24
    cmplwi 0, 0x1
    .4byte 0x40821044 # bne .L_802C7C94
    li 0, 0xc
    stw 0, 0x230(31)
    .4byte 0x48001038 # b .L_802C7C94
    lfs 1, 0x25c(31)
    addi 3, 31, 0x26c
    lfs 0, 0x258(31)
    addi 5, 1, 0x30
    li 6, 0x1
    stfs 0, 0x30(1)
    stfs 1, 0x34(1)
    lwz 4, 0x4(31)
    bl fn_8023B8E4
    stw 3, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41801004 # blt .L_802C7C94
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48000FF8 # b .L_802C7C94
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_802C6CD4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802C6CD4
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x48000FC4 # b .L_802C7C94
L_802C6CD4:
    bl GetRoomConfigRecord
    lwz 0, 0x244(31)
    lwz 4, 0x4(31)
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 24, 3
    cmpwi 24, -0x1
    .4byte 0x41820018 # beq .L_802C6D08
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    mr 5, 24
    li 6, 0x0
    bl fn_802D7D00
L_802C6D08:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x1
    .4byte 0x418201A4 # beq .L_802C6EB4
    .4byte 0x40800010 # bge .L_802C6D24
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_802C6D30
    .4byte 0x480004C8 # b .L_802C71E8
L_802C6D24:
    cmpwi 0, 0x3
    .4byte 0x408004C0 # bge .L_802C71E8
    .4byte 0x4800031C # b .L_802C7048
L_802C6D30:
    lwz 9, 0x238(31)
    addi 7, 30, 0x1f0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 23
    slwi 0, 9, 2
    lwz 4, 0x4(31)
    add 6, 7, 0
    lhzx 7, 7, 0
    lhz 8, 0x2(6)
    extrwi 6, 9, 1, 30
    bl fn_8029DEBC
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820484 # bne .L_802C71E8
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820050 # bne .L_802C6DC0
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x1c4
    lfs 1, 0x258(31)
    lfs 0, 0x25c(31)
    fadds 1, 2, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x437
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800042C # b .L_802C71E8
L_802C6DC0:
    cmpwi 0, 0x1
    .4byte 0x4082004C # bne .L_802C6E10
    .4byte 0xC022DD60 # lfs f1, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x1b8
    lfs 0, 0x258(31)
    lfs 2, 0x25c(31)
    fadds 1, 1, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x43a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480003DC # b .L_802C71E8
L_802C6E10:
    cmpwi 0, 0x2
    .4byte 0x4082004C # bne .L_802C6E60
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x1ac
    lfs 0, 0x25c(31)
    lfs 1, 0x258(31)
    fadds 2, 2, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x438
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800038C # b .L_802C71E8
L_802C6E60:
    cmpwi 0, 0x3
    .4byte 0x40820384 # bne .L_802C71E8
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x1a0
    lfs 1, 0x258(31)
    lfs 0, 0x25c(31)
    fadds 1, 2, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x439
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000338 # b .L_802C71E8
L_802C6EB4:
    lwz 11, 0x238(31)
    addi 7, 30, 0x200
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 23
    slwi 0, 11, 3
    lwz 4, 0x4(31)
    add 6, 7, 0
    lhzx 7, 7, 0
    lhz 8, 0x2(6)
    lhz 9, 0x4(6)
    lhz 10, 0x6(6)
    extrwi 6, 11, 1, 30
    bl fn_8029DD50
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408202F8 # bne .L_802C71E8
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_802C6F50
    .4byte 0xC062DD6C # lfs f3, lbl_80540D0C@sda21(r0)
    addi 3, 1, 0x194
    lfs 1, 0x258(31)
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x433
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800029C # b .L_802C71E8
L_802C6F50:
    cmpwi 0, 0x1
    .4byte 0x4082004C # bne .L_802C6FA0
    .4byte 0xC022DD6C # lfs f1, lbl_80540D0C@sda21(r0)
    addi 3, 1, 0x188
    lfs 0, 0x258(31)
    lfs 2, 0x25c(31)
    fadds 1, 1, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x436
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800024C # b .L_802C71E8
L_802C6FA0:
    cmpwi 0, 0x2
    .4byte 0x4082004C # bne .L_802C6FF0
    .4byte 0xC042DD6C # lfs f2, lbl_80540D0C@sda21(r0)
    addi 3, 1, 0x17c
    lfs 0, 0x25c(31)
    lfs 1, 0x258(31)
    fadds 2, 2, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x434
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480001FC # b .L_802C71E8
L_802C6FF0:
    cmpwi 0, 0x3
    .4byte 0x408201F4 # bne .L_802C71E8
    .4byte 0xC062DD60 # lfs f3, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x170
    lfs 1, 0x258(31)
    .4byte 0xC042DD6C # lfs f2, lbl_80540D0C@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x435
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480001A4 # b .L_802C71E8
L_802C7048:
    lwz 3, 0x238(31)
    addi 4, 30, 0x220
    mr 5, 23
    mulli 0, 3, 0xc
    extrwi 6, 3, 1, 30
    add 3, 4, 0
    lhzx 7, 4, 0
    lhz 0, 0x8(3)
    lhz 8, 0x2(3)
    stw 0, 0x8(1)
    lhz 0, 0xa(3)
    lhz 9, 0x4(3)
    stw 0, 0xc(1)
    lhz 10, 0x6(3)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    lwz 4, 0x4(31)
    bl fn_8029DB2C
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820154 # bne .L_802C71E8
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820054 # bne .L_802C70F4
    .4byte 0xC062DD70 # lfs f3, lbl_80540D10@sda21(r0)
    addi 3, 1, 0x164
    lfs 1, 0x258(31)
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x42f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000F8 # b .L_802C71E8
L_802C70F4:
    cmpwi 0, 0x1
    .4byte 0x4082004C # bne .L_802C7144
    .4byte 0xC022DD70 # lfs f1, lbl_80540D10@sda21(r0)
    addi 3, 1, 0x158
    lfs 0, 0x258(31)
    lfs 2, 0x25c(31)
    fadds 1, 1, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x432
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x480000A8 # b .L_802C71E8
L_802C7144:
    cmpwi 0, 0x2
    .4byte 0x4082004C # bne .L_802C7194
    .4byte 0xC042DD70 # lfs f2, lbl_80540D10@sda21(r0)
    addi 3, 1, 0x14c
    lfs 0, 0x25c(31)
    lfs 1, 0x258(31)
    fadds 2, 2, 0
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x430
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000058 # b .L_802C71E8
L_802C7194:
    cmpwi 0, 0x3
    .4byte 0x40820050 # bne .L_802C71E8
    .4byte 0xC062DD60 # lfs f3, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x140
    lfs 1, 0x258(31)
    .4byte 0xC042DD70 # lfs f2, lbl_80540D10@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x431
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C71E8:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x8
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000A90 # b .L_802C7C94
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000A84 # b .L_802C7C94
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802C7228
    .4byte 0x41800A74 # blt .L_802C7C94
    .4byte 0x48000A70 # b .L_802C7C94
L_802C7228:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820A54 # bne .L_802C7C94
    li 0, 0x4
    stw 0, 0x230(31)
    .4byte 0x48000A48 # b .L_802C7C94
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x41800138 # blt .L_802C7390
    bl fn_802308E0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820A2C # bne .L_802C7C94
    lwz 3, 0x248(31)
    mr 26, 3
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802C728C
    lwz 3, 0x248(31)
    bl fn_8022F3DC
    mr 26, 3
L_802C728C:
    lis 3, 0x80
    .4byte 0xC3C2DD68 # lfs f30, lbl_80540D08@sda21(r0)
    .4byte 0xC3E2DD90 # lfs f31, lbl_80540D30@sda21(r0)
    addi 23, 3, 0x4
    li 25, 0x0
L_802C72A0:
    mr 3, 25
    bl fn_8023E724
    psq_l 3, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    mr 3, 25
    psq_st 3, 0x2d8(1), 0, 0
    lfs 1, 0x2d8(1)
    lfs 0, 0x2dc(1)
    fadds 1, 30, 1
    psq_st 3, 0x2cc(1), 0, 0
    fsubs 0, 0, 31
    stfs 2, 0x2d4(1)
    stfs 2, 0x2e0(1)
    stfs 1, 0x2cc(1)
    stfs 0, 0x2d0(1)
    stfs 2, 0x2d4(1)
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_802C7338
    mr 3, 25
    bl fn_8022F3DC
    cmpw 26, 3
    .4byte 0x4082003C # bne .L_802C7338
    lwz 24, 0x248(31)
    cmpw 25, 24
    .4byte 0x4082006C # bne .L_802C7374
    bl SpatialRegistry_GetBase
    slwi 0, 24, 26
    lis 4, 0x494d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5550
    addi 6, 1, 0x2cc
    add 7, 23, 0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000040 # b .L_802C7374
L_802C7338:
    cmpw 25, 26
    .4byte 0x40820038 # bne .L_802C7374
    lwz 24, 0x248(31)
    cmpw 25, 24
    .4byte 0x4082002C # bne .L_802C7374
    bl SpatialRegistry_GetBase
    slwi 0, 24, 26
    lis 4, 0x494d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5550
    addi 6, 1, 0x2cc
    add 7, 23, 0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802C7374:
    addi 25, 25, 0x1
    addis 23, 23, 0x100
    cmpwi 25, 0x4
    .4byte 0x4180FF20 # blt .L_802C72A0
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48000908 # b .L_802C7C94
L_802C7390:
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x480008FC # b .L_802C7C94
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C2A8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408208D0 # bne .L_802C7C94
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x480008C4 # b .L_802C7C94
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_802C73FC
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x4800089C # b .L_802C7C94
L_802C73FC:
    subi 0, 3, 0x1
    stw 0, 0x250(31)
    .4byte 0x48000890 # b .L_802C7C94
    lwz 0, 0x234(31)
    cmpwi 0, 0x5
    .4byte 0x408200EC # bne .L_802C74FC
    .4byte 0xC062DD74 # lfs f3, lbl_80540D14@sda21(r0)
    addi 3, 1, 0x134
    lfs 1, 0x258(31)
    .4byte 0xC042DD94 # lfs f2, lbl_80540D34@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC062DD74 # lfs f3, lbl_80540D14@sda21(r0)
    addi 3, 1, 0x128
    lfs 1, 0x258(31)
    .4byte 0xC042DD94 # lfs f2, lbl_80540D34@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC062DD74 # lfs f3, lbl_80540D14@sda21(r0)
    addi 3, 1, 0x11c
    lfs 1, 0x258(31)
    .4byte 0xC042DD94 # lfs f2, lbl_80540D34@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b5
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000428 # b .L_802C7920
L_802C74FC:
    lwz 0, 0x238(31)
    .4byte 0xC3E2DD64 # lfs f31, lbl_80540D04@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820110 # bne .L_802C7618
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802C7520
    .4byte 0xC3E2DD60 # lfs f31, lbl_80540D00@sda21(r0)
    .4byte 0x48000020 # b .L_802C753C
L_802C7520:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802C7530
    .4byte 0xC3E2DD6C # lfs f31, lbl_80540D0C@sda21(r0)
    .4byte 0x48000010 # b .L_802C753C
L_802C7530:
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_802C753C
    .4byte 0xC3E2DD70 # lfs f31, lbl_80540D10@sda21(r0)
L_802C753C:
    lfs 1, 0x258(31)
    addi 3, 1, 0x110
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 1, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4aa
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lfs 1, 0x258(31)
    addi 3, 1, 0x104
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 1, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4ab
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lfs 1, 0x258(31)
    addi 3, 1, 0xf8
    .4byte 0xC042DD60 # lfs f2, lbl_80540D00@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 1, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4ac
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800030C # b .L_802C7920
L_802C7618:
    cmpwi 0, 0x1
    .4byte 0x408200F8 # bne .L_802C7714
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802C7634
    .4byte 0xC3E2DD60 # lfs f31, lbl_80540D00@sda21(r0)
    .4byte 0x48000020 # b .L_802C7650
L_802C7634:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802C7644
    .4byte 0xC3E2DD6C # lfs f31, lbl_80540D0C@sda21(r0)
    .4byte 0x48000010 # b .L_802C7650
L_802C7644:
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_802C7650
    .4byte 0xC3E2DD70 # lfs f31, lbl_80540D10@sda21(r0)
L_802C7650:
    lfs 0, 0x258(31)
    addi 3, 1, 0xec
    lfs 2, 0x25c(31)
    fadds 1, 0, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lfs 0, 0x258(31)
    addi 3, 1, 0xe0
    lfs 2, 0x25c(31)
    fadds 1, 0, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lfs 0, 0x258(31)
    addi 3, 1, 0xd4
    lfs 2, 0x25c(31)
    fadds 1, 0, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b5
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000210 # b .L_802C7920
L_802C7714:
    cmpwi 0, 0x2
    .4byte 0x408200F8 # bne .L_802C7810
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802C7730
    .4byte 0xC3E2DD60 # lfs f31, lbl_80540D00@sda21(r0)
    .4byte 0x48000020 # b .L_802C774C
L_802C7730:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802C7740
    .4byte 0xC3E2DD6C # lfs f31, lbl_80540D0C@sda21(r0)
    .4byte 0x48000010 # b .L_802C774C
L_802C7740:
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_802C774C
    .4byte 0xC3E2DD70 # lfs f31, lbl_80540D10@sda21(r0)
L_802C774C:
    lfs 0, 0x25c(31)
    addi 3, 1, 0xc8
    lfs 1, 0x258(31)
    fadds 2, 0, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4ad
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lfs 0, 0x25c(31)
    addi 3, 1, 0xbc
    lfs 1, 0x258(31)
    fadds 2, 0, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4ae
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lfs 0, 0x25c(31)
    addi 3, 1, 0xb0
    lfs 1, 0x258(31)
    fadds 2, 0, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4af
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000114 # b .L_802C7920
L_802C7810:
    cmpwi 0, 0x3
    .4byte 0x4082010C # bne .L_802C7920
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802C782C
    .4byte 0xC3E2DD60 # lfs f31, lbl_80540D00@sda21(r0)
    .4byte 0x48000020 # b .L_802C7848
L_802C782C:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802C783C
    .4byte 0xC3E2DD6C # lfs f31, lbl_80540D0C@sda21(r0)
    .4byte 0x48000010 # b .L_802C7848
L_802C783C:
    cmpwi 0, 0x2
    .4byte 0x40820008 # bne .L_802C7848
    .4byte 0xC3E2DD70 # lfs f31, lbl_80540D10@sda21(r0)
L_802C7848:
    lfs 0, 0x25c(31)
    addi 3, 1, 0xa4
    .4byte 0xC082DD60 # lfs f4, lbl_80540D00@sda21(r0)
    lfs 1, 0x258(31)
    fadds 2, 0, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 1, 4, 1
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lfs 0, 0x25c(31)
    addi 3, 1, 0x98
    .4byte 0xC082DD60 # lfs f4, lbl_80540D00@sda21(r0)
    lfs 1, 0x258(31)
    fadds 2, 0, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 1, 4, 1
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b1
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lfs 0, 0x25c(31)
    addi 3, 1, 0x8c
    .4byte 0xC082DD60 # lfs f4, lbl_80540D00@sda21(r0)
    lfs 1, 0x258(31)
    fadds 2, 0, 31
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 1, 4, 1
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b2
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802C7920:
    li 3, 0x11
    li 0, 0xb
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    .4byte 0x48000364 # b .L_802C7C94
    lwz 3, 0x254(31)
    subi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x4082034C # bne .L_802C7C94
    li 0, 0x3
    lis 4, 0x3
    stw 0, 0x230(31)
    mr 3, 31
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820320 # bne .L_802C7C94
    li 0, 0x7
    stw 0, 0x230(31)
    .4byte 0x48000314 # b .L_802C7C94
    .4byte 0xC062DD60 # lfs f3, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x80
    lfs 1, 0x258(31)
    .4byte 0xC042DD94 # lfs f2, lbl_80540D34@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b3
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC062DD60 # lfs f3, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x74
    lfs 1, 0x258(31)
    .4byte 0xC042DD94 # lfs f2, lbl_80540D34@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b4
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC062DD60 # lfs f3, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x68
    lfs 1, 0x258(31)
    .4byte 0xC042DD94 # lfs f2, lbl_80540D34@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0x4b5
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x11
    li 0, 0xd
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    .4byte 0x4800021C # b .L_802C7C94
    lwz 3, 0x254(31)
    subi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x40820204 # bne .L_802C7C94
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 31, 0x258
    lwz 6, 0x4(31)
    li 5, 0x0
    li 7, 0xbc
    bl fn_802A3948
    .4byte 0xC022DD60 # lfs f1, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x5c
    lfs 0, 0x258(31)
    lwz 23, 0x4(31)
    fadds 1, 1, 0
    lfs 2, 0x25c(31)
    lfs 3, 0x260(31)
    bl Actor_SetVec3_0x0
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 6, 23
    addi 4, 1, 0x5c
    li 5, 0x0
    li 7, 0xbd
    bl fn_802A3948
    .4byte 0xC062DD60 # lfs f3, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x50
    lfs 1, 0x258(31)
    .4byte 0xC042DD74 # lfs f2, lbl_80540D14@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0xcd
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC062DD60 # lfs f3, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x44
    lfs 1, 0x258(31)
    .4byte 0xC042DD74 # lfs f2, lbl_80540D14@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0xce
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC062DD60 # lfs f3, lbl_80540D00@sda21(r0)
    addi 3, 1, 0x38
    lfs 1, 0x258(31)
    .4byte 0xC042DD74 # lfs f2, lbl_80540D14@sda21(r0)
    lfs 0, 0x25c(31)
    fadds 1, 3, 1
    .4byte 0xC062DD64 # lfs f3, lbl_80540D04@sda21(r0)
    fadds 2, 2, 0
    bl Actor_SetVec3_0x0
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022DD68 # lfs f1, lbl_80540D08@sda21(r0)
    li 5, 0xcf
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x76
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0xf
    li 0, 0xe
    stw 3, 0x254(31)
    stw 0, 0x230(31)
    .4byte 0x480000A8 # b .L_802C7C94
    lwz 3, 0x254(31)
    cmpwi 3, 0x0
    .4byte 0x40820094 # bne .L_802C7C8C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 23, 0x0
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_802C7C30
    lwz 3, 0x248(31)
    li 4, 0x0
    bl fn_8023061C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_802C7C48
    li 23, 0x1
    .4byte 0x4800001C # b .L_802C7C48
L_802C7C30:
    li 3, 0x0
    bl fn_80230534
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820008 # bne .L_802C7C48
    li 23, 0x1
L_802C7C48:
    clrlwi 0, 23, 24
    cmplwi 0, 0x1
    .4byte 0x40820044 # bne .L_802C7C94
    bl SpatialRegistry_GetBase
    lwz 0, 0x248(31)
    lis 4, 0x544b
    lwz 5, 0x4(31)
    addi 4, 4, 0x5241
    slwi 7, 0, 12
    addi 6, 31, 0xc
    addi 7, 7, 0x208
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_802C7C94
L_802C7C8C:
    subi 0, 3, 0x1
    stw 0, 0x254(31)
L_802C7C94:
    psq_l 31, 0x358(1), 0, 0
    lfd 31, 0x350(1)
    psq_l 30, 0x348(1), 0, 0
    lfd 30, 0x340(1)
    lmw 23, 0x31c(1)
    lwz 0, 0x364(1)
    mtlr 0
    addi 1, 1, 0x360
    blr

