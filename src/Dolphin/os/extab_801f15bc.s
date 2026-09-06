# fn_801F15BC - universal shared-Actor default virtual, the SIMPLER
# sibling of fn_801F132C (same ->0x198 manager lookup + fn_8020D58C +
# 0x784-stride fn_8020D6AC room-config-disable check), but skips the
# terrain-classification half entirely - just the room-config gate by
# itself, guarded by an initial quick predicate (fn_802265DC). Confirmed
# unlanded on ~20 of the 21 recently-mapped "GO/DD/etc-bucket" actors'
# shared vtables (FGN2/BPH2/DGT2/GNON/ALCE/SYKY/TENN/ENBZ/SAYA/HBB2/
# TTAT/DDGO/OKAM/EGOL/ZLD3/ZDCO/TLWP/SAFU/GLWP) - landing it here closes
# that slot project-wide in one shot, same as fn_801F4760/fn_801F52A4
# before it. See project_fsa_goma_actor_progress and the ~198KB-gap
# actor sweep this unlocks.
#
# Attempted real-C++ promotion (Phase 4): landed the ENTIRE function
# byte-for-byte except the r28/r29 register pairing for its 2 saved
# incoming params (`a`=r4, `b`=r5). 2 real fixes needed first: (1) the
# quick predicate's result (`fn_802265DC(b, a, 0)`) needs an explicit
# `u8` cast/local before testing, to get `clrlwi.`+`bne` instead of a
# plain `cmpwi` - same lesson as fn_801E3250/fn_801F0D20/fn_800FAB50,
# even though fn_802265DC's own established signature elsewhere returns
# plain `s32`; (2) `this->0x198` (config) is looked up ONLY on the path
# where the predicate is false - reusing the SAME local across both
# branches (or eagerly computing it) is wrong, it must be scoped/read
# lazily exactly where retail reads it. After both fixes, ONLY the
# r28/r29 pairing differs (retail: r29=a/r28=b; mine: r29=b/r28=a in
# every reference) - a 4th confirmed instance of the "register-
# allocation-choice for param-to-saved-register pairing" wall
# (previously: fn_800F51D8, fn_800FAB50 THIS SAME BATCH). Tried the
# SAME 2 unsuccessful variants (direct params; named locals in
# declaration order) - byte-identical wrong pairing both times.
# Deferred; both real fixes preserved above. HIGH VALUE if this wall is
# ever cracked - landing this one function closes the slot across ~20
# actor vtables project-wide in one shot.
.section extab, "a"
.balign 4
.global etb_80008DCC
etb_80008DCC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008DCC, 8

.section extabindex, "a"
.balign 4
.global eti_8001648C
eti_8001648C:
    .4byte fn_801F15BC
    .4byte 0x000000A0
    .4byte etb_80008DCC
.size eti_8001648C, 12

.text
.balign 4
.global fn_801F15BC

fn_801F15BC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x1
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 5
    mr 3, 28
    li 5, 0x0
    bl fn_802265DC
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_801F1638
    lwz 30, 0x198(30)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 29
    lbz 0, 0x1(3)
    mr 5, 28
    mr 6, 30
    li 7, 0x0
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_801F1638
    li 31, 0x0
L_801F1638:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

