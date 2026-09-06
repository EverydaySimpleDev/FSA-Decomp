.section extab, "a"
.balign 4
.global etb_8000CB64
etb_8000CB64:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000CB64, 8

.section extabindex, "a"
.balign 4
.global eti_8001BA90
eti_8001BA90:
    .4byte fn_802CB230
    .4byte 0x00000848
    .4byte etb_8000CB64
.size eti_8001BA90, 12

# fn_802CB230(this) - ONOF's real update(). Large (530 instructions) -
# read extensively and genuinely understood at the architectural level;
# the state-specific sub-branches (dispatched on `this->0x238`, 0-4) are
# survey-level for their exact per-state bodies, consistent with this
# project's practice for its largest functions.
#
# 1. **Trigger detection**: builds an expanded bounding box around the
#    switch's own position (`this->0xc/0x10 +/- constants`) and tests it
#    against all 4 players (`fn_8023AE34`/`fn_8023BA68`/`fn_8023A6CC`,
#    new - player-vs-box overlap family) to find which player, if any, is
#    standing on the switch. Also searches for 3 more specific actors by
#    literal FourCC (`fn_801F8108`/`fn_801F2718`, new "find nearest actor
#    of code X" primitives, siblings to the confirmed `fn_801F7818`) -
#    likely companion pressure-plate or linked-switch pieces.
# 2. **THE FULL READ/WRITE CYCLE OF THE GLOBAL FLAG FAMILY IS HERE**: for
#    `this->0x240` (the "combo/orientation" field from setParams) values
#    3 or 4, steps `GetRoomConfigRecord` then calls
#    **`fn_802D78B4(this->0x244, 1)`** - the CONFIRMED single-global
#    32-bit flag SETTER from [[project_fsa_flag_switch_helpers]] (the
#    write counterpart to the `fn_802D7888` check already seen in this
#    actor's own setParams, and to `fn_802D800C`'s per-room check seen in
#    its own vtable-0x10 hook `fn_802CBAFC`) - **explicitly SETS the
#    group's global flag bit when the switch's trigger condition is
#    met.** This is genuinely the write-half of the exact mechanism
#    DOOR/KEY0 read from - confirms the whole flag-registry system is a
#    real, general-purpose cross-actor puzzle-state bus, not
#    per-actor-local bookkeeping.
# 3. Plays the SAME "combo" sound sequence (`fn_802A3948` code `0xbe`)
#    seen in setParams/the hook, and fires a virtual call through
#    `this->vtable[0x30]` with a fixed argument (0xff) - an unconfirmed
#    extra per-actor hook, not part of the standard set documented so
#    far this session.
.text
.balign 4
.global fn_802CB230

fn_802CB230:
    stwu 1, -0x40(1)
    mflr 0
    .4byte 0xC022DE0C # lfs f1, lbl_80540DAC@sda21(r0)
    stw 0, 0x44(1)
    addi 5, 1, 0x8
    .4byte 0xC002DE10 # lfs f0, lbl_80540DB0@sda21(r0)
    stmw 26, 0x28(1)
    mr 29, 3
    lfs 3, 0x10(3)
    addi 3, 1, 0x10
    lfs 2, 0xc(29)
    stfs 2, 0x8(1)
    stfs 3, 0xc(1)
    stfs 1, 0x60(29)
    stfs 1, 0x64(29)
    stfs 0, 0x68(29)
    stfs 0, 0x6c(29)
    lfs 0, 0x60(29)
    lfs 1, 0x8(1)
    stfs 0, 0x10(1)
    fadds 3, 0, 1
    lfs 5, 0xc(1)
    lfs 0, 0x64(29)
    stfs 0, 0x14(1)
    fadds 2, 0, 5
    lfs 0, 0x68(29)
    stfs 0, 0x18(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(29)
    fadds 0, 4, 5
    stfs 4, 0x1c(1)
    stfs 3, 0x10(1)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 4, 0x4(29)
    bl fn_8023AE34
    .4byte 0xC022DE14 # lfs f1, lbl_80540DB4@sda21(r0)
    mr 27, 3
    .4byte 0xC002DE18 # lfs f0, lbl_80540DB8@sda21(r0)
    addi 3, 1, 0x10
    stfs 1, 0x60(29)
    addi 5, 1, 0x8
    li 6, 0x1
    stfs 1, 0x64(29)
    stfs 0, 0x68(29)
    stfs 0, 0x6c(29)
    lfs 0, 0x60(29)
    lfs 1, 0x8(1)
    stfs 0, 0x10(1)
    fadds 3, 0, 1
    lfs 5, 0xc(1)
    lfs 0, 0x64(29)
    stfs 0, 0x14(1)
    fadds 2, 0, 5
    lfs 0, 0x68(29)
    stfs 0, 0x18(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(29)
    fadds 0, 4, 5
    stfs 4, 0x1c(1)
    stfs 3, 0x10(1)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 4, 0x4(29)
    bl fn_8023BA68
    mr. 31, 3
    .4byte 0x40800008 # bge .L_802CB348
    mr 31, 27
L_802CB348:
    lwz 4, 0x4(29)
    addi 3, 1, 0x10
    bl fn_8023A6CC
    lis 4, 0x4c4e
    .4byte 0xC022DE1C # lfs f1, lbl_80540DBC@sda21(r0)
    mr 27, 3
    mr 3, 29
    addi 4, 4, 0x424d
    li 5, -0x1
    bl fn_801F8108
    lis 4, 0x5455
    .4byte 0xC022DE1C # lfs f1, lbl_80540DBC@sda21(r0)
    mr 30, 3
    mr 3, 29
    addi 4, 4, 0x424f
    li 5, -0x1
    bl fn_801F8108
    lis 4, 0x4842
    mr 28, 3
    mr 3, 29
    addi 4, 4, 0x4d42
    bl fn_801F2718
    li 4, 0x0
    mr 26, 3
    stw 4, 0xd8(29)
    lwz 0, 0x238(29)
    cmpwi 0, 0x2
    .4byte 0x41820338 # beq .L_802CB6EC
    .4byte 0x40800014 # bge .L_802CB3CC
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802CB3DC
    .4byte 0x408005A0 # bge .L_802CB964
    .4byte 0x4800069C # b .L_802CBA64
L_802CB3CC:
    cmpwi 0, 0x4
    .4byte 0x41820694 # beq .L_802CBA64
    .4byte 0x40800690 # bge .L_802CBA64
    .4byte 0x48000670 # b .L_802CBA48
L_802CB3DC:
    lwz 0, 0x254(29)
    cmpwi 0, 0x0
    .4byte 0x408201F0 # bne .L_802CB5D4
    cmpwi 31, 0x0
    .4byte 0x40800024 # bge .L_802CB410
    cmpwi 27, 0x0
    .4byte 0x4080001C # bge .L_802CB410
    cmpwi 30, 0x0
    .4byte 0x40800014 # bge .L_802CB410
    cmpwi 28, 0x0
    .4byte 0x4080000C # bge .L_802CB410
    cmpwi 26, 0x0
    .4byte 0x418001C8 # blt .L_802CB5D4
L_802CB410:
    cmpwi 30, 0x0
    .4byte 0x4180003C # blt .L_802CB450
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820050 # beq .L_802CB478
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x4c4e
    cmplwi 0, 0x424d
    .4byte 0x40820040 # bne .L_802CB478
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    bl fn_801BEDBC
    .4byte 0x4800002C # b .L_802CB478
L_802CB450:
    cmpwi 26, 0x0
    .4byte 0x41800024 # blt .L_802CB478
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_802CB478
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x418205F0 # beq .L_802CBA64
L_802CB478:
    lwz 0, 0x240(29)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802CB48C
    cmpwi 0, 0x4
    .4byte 0x40820014 # bne .L_802CB49C
L_802CB48C:
    bl GetRoomConfigRecord
    lwz 4, 0x244(29)
    li 5, 0x1
    bl fn_802D78B4
L_802CB49C:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 29, 0xc
    lwz 6, 0x4(29)
    li 5, 0x0
    li 7, 0xbe
    bl fn_802A3948
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DE20 # lfs f1, lbl_80540DC0@sda21(r0)
    li 5, 0x42b
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x230(29)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802CB530
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DE20 # lfs f1, lbl_80540DC0@sda21(r0)
    li 5, 0x428
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(29)
L_802CB530:
    lwz 0, 0x234(29)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802CB568
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DE20 # lfs f1, lbl_80540DC0@sda21(r0)
    li 5, 0x429
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(29)
L_802CB568:
    lwz 0, 0x240(29)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802CB57C
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_802CB590
L_802CB57C:
    li 3, 0x2
    li 0, 0x19
    stw 3, 0x238(29)
    stw 0, 0x23c(29)
    .4byte 0x48000028 # b .L_802CB5B4
L_802CB590:
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_802CB5AC
    li 0, 0x1
    stw 0, 0x238(29)
    lwz 0, 0x24c(29)
    stw 0, 0x23c(29)
    .4byte 0x4800000C # b .L_802CB5B4
L_802CB5AC:
    li 0, 0x4
    stw 0, 0x238(29)
L_802CB5B4:
    lis 4, 0x3
    mr 3, 29
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stw 0, 0x254(29)
    .4byte 0x48000494 # b .L_802CBA64
L_802CB5D4:
    lwz 0, 0x240(29)
    cmpwi 0, 0x3
    .4byte 0x408200DC # bne .L_802CB6B8
    bl GetRoomConfigRecord
    lwz 4, 0x244(29)
    bl fn_802D7888
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200C4 # bne .L_802CB6B8
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 29, 0xc
    lwz 6, 0x4(29)
    li 5, 0x0
    li 7, 0xbe
    bl fn_802A3948
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lwz 0, 0x230(29)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802CB664
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DE20 # lfs f1, lbl_80540DC0@sda21(r0)
    li 5, 0x428
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x230(29)
L_802CB664:
    lwz 0, 0x234(29)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802CB69C
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022DE20 # lfs f1, lbl_80540DC0@sda21(r0)
    li 5, 0x429
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x234(29)
L_802CB69C:
    li 0, 0x2
    li 3, 0x19
    stw 0, 0x238(29)
    li 0, 0x1
    stw 3, 0x23c(29)
    stw 0, 0x254(29)
    .4byte 0x480003B0 # b .L_802CBA64
L_802CB6B8:
    cmpwi 31, 0x0
    .4byte 0x408003A8 # bge .L_802CBA64
    cmpwi 27, 0x0
    .4byte 0x408003A0 # bge .L_802CBA64
    cmpwi 30, 0x0
    .4byte 0x40800398 # bge .L_802CBA64
    cmpwi 28, 0x0
    .4byte 0x40800390 # bge .L_802CBA64
    cmpwi 26, 0x0
    .4byte 0x40800388 # bge .L_802CBA64
    li 0, 0x0
    stw 0, 0x254(29)
    .4byte 0x4800037C # b .L_802CBA64
L_802CB6EC:
    lwz 3, 0x23c(29)
    cmpwi 3, 0x0
    .4byte 0x40820228 # bne .L_802CB91C
    lwz 0, 0x254(29)
    cmpwi 0, 0x0
    .4byte 0x4082021C # bne .L_802CB91C
    cmpwi 31, 0x0
    .4byte 0x40800024 # bge .L_802CB72C
    cmpwi 27, 0x0
    .4byte 0x4080001C # bge .L_802CB72C
    cmpwi 30, 0x0
    .4byte 0x40800014 # bge .L_802CB72C
    cmpwi 28, 0x0
    .4byte 0x4080000C # bge .L_802CB72C
    cmpwi 26, 0x0
    .4byte 0x4180013C # blt .L_802CB864
L_802CB72C:
    li 0, 0x1
    cmpwi 30, 0x0
    stw 0, 0x254(29)
    .4byte 0x4180003C # blt .L_802CB774
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820050 # beq .L_802CB79C
    lwz 3, 0x1a0(3)
    subis 0, 3, 0x4c4e
    cmplwi 0, 0x424d
    .4byte 0x40820040 # bne .L_802CB79C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    bl fn_801BEDBC
    .4byte 0x4800002C # b .L_802CB79C
L_802CB774:
    cmpwi 26, 0x0
    .4byte 0x41800024 # blt .L_802CB79C
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_802CB79C
    lhz 0, 0x94(3)
    cmplwi 0, 0x0
    .4byte 0x418202CC # beq .L_802CBA64
L_802CB79C:
    lwz 0, 0x240(29)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_802CB7B8
    bl GetRoomConfigRecord
    lwz 4, 0x244(29)
    li 5, 0x0
    bl fn_802D78B4
L_802CB7B8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 29, 0xc
    lwz 6, 0x4(29)
    li 5, 0x0
    li 7, 0xbf
    bl fn_802A3884
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x3
    lis 4, 0x3
    stw 0, 0x238(29)
    li 0, 0x19
    mr 3, 29
    addi 4, 4, 0x9
    stw 0, 0x23c(29)
    li 5, 0x0
    bl fn_801F0E34
    lwz 5, 0x230(29)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802CB838
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x230(29)
L_802CB838:
    lwz 5, 0x234(29)
    cmplwi 5, 0x0
    .4byte 0x41820224 # beq .L_802CBA64
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(29)
    .4byte 0x48000204 # b .L_802CBA64
L_802CB864:
    lwz 0, 0x240(29)
    cmpwi 0, 0x3
    .4byte 0x408201F8 # bne .L_802CBA64
    bl GetRoomConfigRecord
    lwz 4, 0x244(29)
    bl fn_802D7888
    clrlwi. 0, 3, 24
    .4byte 0x408201E4 # bne .L_802CBA64
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 29, 0xc
    lwz 6, 0x4(29)
    li 5, 0x0
    li 7, 0xbf
    bl fn_802A3884
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0x3
    li 0, 0x19
    stw 3, 0x238(29)
    stw 0, 0x23c(29)
    lwz 5, 0x230(29)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802CB8F0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x230(29)
L_802CB8F0:
    lwz 5, 0x234(29)
    cmplwi 5, 0x0
    .4byte 0x4182016C # beq .L_802CBA64
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(29)
    .4byte 0x4800014C # b .L_802CBA64
L_802CB91C:
    cmpwi 3, 0x0
    .4byte 0x41820010 # beq .L_802CB930
    lwz 3, 0x23c(29)
    subi 0, 3, 0x1
    stw 0, 0x23c(29)
L_802CB930:
    cmpwi 31, 0x0
    .4byte 0x40800130 # bge .L_802CBA64
    cmpwi 27, 0x0
    .4byte 0x40800128 # bge .L_802CBA64
    cmpwi 30, 0x0
    .4byte 0x40800120 # bge .L_802CBA64
    cmpwi 28, 0x0
    .4byte 0x40800118 # bge .L_802CBA64
    cmpwi 26, 0x0
    .4byte 0x40800110 # bge .L_802CBA64
    li 0, 0x0
    stw 0, 0x254(29)
    .4byte 0x48000104 # b .L_802CBA64
L_802CB964:
    lwz 3, 0x23c(29)
    cmpwi 3, 0x0
    .4byte 0x408200D0 # bne .L_802CBA3C
    stw 4, 0x254(29)
    lwz 0, 0x240(29)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_802CB990
    bl GetRoomConfigRecord
    lwz 4, 0x244(29)
    li 5, 0x0
    bl fn_802D78B4
L_802CB990:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    addi 4, 29, 0xc
    lwz 6, 0x4(29)
    li 5, 0x0
    li 7, 0xbf
    bl fn_802A3884
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x3
    lis 4, 0x3
    stw 0, 0x238(29)
    mr 3, 29
    addi 4, 4, 0x9
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x19
    stw 0, 0x23c(29)
    lwz 5, 0x230(29)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802CBA10
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x230(29)
L_802CBA10:
    lwz 5, 0x234(29)
    cmplwi 5, 0x0
    .4byte 0x4182004C # beq .L_802CBA64
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(29)
    .4byte 0x4800002C # b .L_802CBA64
L_802CBA3C:
    subi 0, 3, 0x1
    stw 0, 0x23c(29)
    .4byte 0x48000020 # b .L_802CBA64
L_802CBA48:
    lwz 3, 0x23c(29)
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_802CBA5C
    stw 4, 0x238(29)
    .4byte 0x4800000C # b .L_802CBA64
L_802CBA5C:
    subi 0, 3, 0x1
    stw 0, 0x23c(29)
L_802CBA64:
    lmw 26, 0x28(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

