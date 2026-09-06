.section extab, "a"
.balign 4
.global etb_80007474
etb_80007474:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007474, 8

.section extabindex, "a"
.balign 4
.global eti_800140D4
eti_800140D4:
    .4byte fn_80176538
    .4byte 0x0000027C
    .4byte etb_80007474
.size eti_800140D4, 12

.text
.balign 4
.global fn_80176538

# fn_80176538(this) - STAL (Stalfos)'s real setParams(). Genuinely
# understood, not just surveyed:
#
# 1. Standard hitbox init (`this->0x60-0x8c`) from constant tables; if a
#    spawn-param bit (`this->0x90` bit 27/MSB, extracted into `this->0x264`)
#    is set, overrides the X bounds with a WIDER constant pair - a
#    "large hitbox" spawn variant.
# 2. Strips the low 4 bits of `this->0x90` (the raw spawn-param word) back
#    into itself, zeroes a large block of per-instance state
#    (`0x94/0x238-0x258/0x268`), sets 3 floats (`0x278/27c/280`) to a
#    shared constant, and sets `this->0xb0 = 0x42205` (an initial AI/event
#    marker code, meaning unconfirmed).
# 3. Steps the CONFIRMED global PRNG (`lbl_8053AAF8->0xb4`) to compute a
#    spawn-timing jitter into `this->0x98`; if `GetRoomConfigRecord()`'s result
#    byte at a fixed offset (`+0x31df`) is set, forces the jitter's parity
#    to even (`this->0x98 &= ~1`) - a common "desync near-simultaneous
#    spawns" technique seen elsewhere this session.
# 4. Copies the jitter/state into several mirrored fields
#    (`0x250/26c/270/274/3c/40/44`, `0x260/25c` from `0x108`), then
#    DISPATCHES ON THE SPAWN-PARAM TYPE (`this->0x90`, values 0-6+):
#    - type 3: resets `this->0x240=30`, clears `0xb0`, and RESETS the type
#      field itself to 0 (collapses to the default case below).
#    - **type 5 - the interesting one**: sets `this->0x108=1000` (a timer)
#      then searches the CONFIRMED actor-pool registry
#      (`SpatialRegistry_GetBase()` for the table, `fn_801F7818(table, 'WIZR', this->4,
#      outBuf, -1)` - a find-by-4CC-code query, `'WIZR'` spelled out
#      explicitly as the literal `0x57495A52`) for a live Wizzrobe whose
#      own state (`->0x90`) equals 1. Found: `this->0x230=0`. Not found:
#      `this->0x230=7` (a "partner missing" fallback code). **This is a
#      genuine, deliberate cross-actor dependency - some Stalfos spawn
#      configurations are explicitly linked to a nearby Wizzrobe**,
#      confirmed by the literal FourCC in this exact same actor-pairing
#      session (see `fn_80178DD0`=WIZR's dtor, landed alongside this).
#    - type 4: just clears `this->0xb0`.
#    - default (types 0-2, 6+): no extra work.
#    All paths converge on `this->0x230=0` unless the type-5 partner
#    search failed (`=7`).
#
# `fn_801F7818` (the by-code registry search) is new to this session -
# not decompiled, but its call signature is now known:
# `fn_801F7818(table, code4, ownerID, outBuf*, maxCount) -> count`.
fn_80176538:
    stwu 1, -0x1020(1)
    mflr 0
    .4byte 0xC082ABF8 # lfs f4, lbl_8053DB98@sda21(r0)
    stw 0, 0x1024(1)
    .4byte 0xC062ABFC # lfs f3, lbl_8053DB9C@sda21(r0)
    stw 31, 0x101c(1)
    mr 31, 3
    .4byte 0xC042AC00 # lfs f2, lbl_8053DBA0@sda21(r0)
    stw 30, 0x1018(1)
    .4byte 0xC022ABF0 # lfs f1, lbl_8053DB90@sda21(r0)
    stfs 4, 0x60(3)
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    stfs 4, 0x64(3)
    stfs 3, 0x68(3)
    stfs 3, 0x6c(3)
    stfs 2, 0x70(3)
    stfs 2, 0x74(3)
    stfs 1, 0x78(3)
    stfs 1, 0x7c(3)
    stfs 4, 0x80(3)
    stfs 0, 0x84(3)
    stfs 3, 0x88(3)
    stfs 3, 0x8c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 27
    stw 0, 0x264(3)
    lwz 0, 0x264(3)
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_801765C4
    .4byte 0xC022AC04 # lfs f1, lbl_8053DBA4@sda21(r0)
    .4byte 0xC002AC08 # lfs f0, lbl_8053DBA8@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_801765C4:
    lwz 0, 0x90(31)
    lis 4, 0x4
    lis 3, 0x19
    li 5, 0x0
    clrlwi 0, 0, 28
    .4byte 0xC042ABB4 # lfs f2, lbl_8053DB54@sda21(r0)
    stw 0, 0x90(31)
    addi 4, 4, 0x2205
    addi 0, 3, 0x660d
    .4byte 0xC022AC0C # lfs f1, lbl_8053DBAC@sda21(r0)
    sth 5, 0x94(31)
    stw 5, 0x24c(31)
    stw 5, 0x250(31)
    stw 5, 0x254(31)
    stw 5, 0x238(31)
    stw 5, 0x23c(31)
    stw 5, 0x240(31)
    stw 5, 0x244(31)
    stw 5, 0x248(31)
    sth 5, 0x268(31)
    stw 5, 0x258(31)
    stfs 2, 0x278(31)
    stfs 2, 0x27c(31)
    stfs 2, 0x280(31)
    stw 4, 0xb0(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x1010(1)
    lwz 0, 0x1014(1)
    stw 0, 0x98(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80176694
    lwz 0, 0x98(31)
    clrlwi 0, 0, 31
    stw 0, 0x98(31)
L_80176694:
    lwz 0, 0x98(31)
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    stw 0, 0x250(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x270(31)
    stfs 0, 0x274(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    lwz 0, 0x108(31)
    stw 0, 0x260(31)
    lwz 0, 0x260(31)
    stw 0, 0x25c(31)
    lwz 0, 0x90(31)
    cmpwi 0, 0x4
    .4byte 0x418200BC # beq .L_8017678C
    .4byte 0x40800010 # bge .L_801766E4
    cmpwi 0, 0x3
    .4byte 0x40800014 # bge .L_801766F0
    .4byte 0x480000B4 # b .L_80176794
L_801766E4:
    cmpwi 0, 0x6
    .4byte 0x408000AC # bge .L_80176794
    .4byte 0x4800001C # b .L_80176708
L_801766F0:
    li 3, 0x1e
    li 0, 0x0
    stw 3, 0x240(31)
    stw 0, 0xb0(31)
    stw 0, 0x90(31)
    .4byte 0x48000090 # b .L_80176794
L_80176708:
    li 4, 0x4
    li 3, 0x0
    stw 4, 0x260(31)
    li 0, 0x3e8
    stw 4, 0x25c(31)
    stw 3, 0x190(31)
    stw 0, 0x108(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x5749
    lwz 5, 0x4(31)
    addi 4, 4, 0x5a52
    addi 6, 1, 0xc
    li 7, -0x1
    bl fn_801F7818
    addi 4, 1, 0xc
    mtctr 3
    cmpwi 3, 0x0
    .4byte 0x40810034 # ble .L_80176780
L_80176750:
    lwz 3, 0x0(4)
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_80176778
    .4byte 0x4182001C # beq .L_80176778
    lwz 0, 0x90(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80176778
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000028 # b .L_8017679C
L_80176778:
    addi 4, 4, 0x4
    .4byte 0x4200FFD4 # bdnz .L_80176750
L_80176780:
    li 0, 0x7
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_80176794
L_8017678C:
    li 0, 0x0
    stw 0, 0xb0(31)
L_80176794:
    li 0, 0x0
    stw 0, 0x230(31)
L_8017679C:
    lwz 0, 0x1024(1)
    lwz 31, 0x101c(1)
    lwz 30, 0x1018(1)
    mtlr 0
    addi 1, 1, 0x1020
    blr

