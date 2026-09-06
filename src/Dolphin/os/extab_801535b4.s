.section extab, "a"
.balign 4
.global etb_80006E3C
etb_80006E3C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80006E3C, 8

.global etb_80006E44
etb_80006E44:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80006E44, 8

.global etb_80006E4C
etb_80006E4C:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_80006E4C, 8

.global etb_80006E54
etb_80006E54:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006E54, 8

.global etb_80006E5C
etb_80006E5C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006E5C, 8

.global etb_80006E64
etb_80006E64:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006E64, 8

.global etb_80006E6C
etb_80006E6C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006E6C, 8

.global etb_80006E74
etb_80006E74:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006E74, 8

.global etb_80006E7C
etb_80006E7C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006E7C, 8

.global etb_80006E84
etb_80006E84:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006E84, 8

.global etb_80006E8C
etb_80006E8C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006E8C, 8

.global etb_80006E94
etb_80006E94:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006E94, 8

.global etb_80006E9C
etb_80006E9C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80006E9C, 8

.global etb_80006EA4
etb_80006EA4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006EA4, 8

.global etb_80006EAC
etb_80006EAC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006EAC, 8

.section extabindex, "a"
.balign 4
.global eti_800138E8
eti_800138E8:
    .4byte fn_801535B4
    .4byte 0x000001EC
    .4byte etb_80006E94
.size eti_800138E8, 12

.global eti_800138F4
eti_800138F4:
    .4byte fn_801537A0
    .4byte 0x000001AC
    .4byte etb_80006E9C
.size eti_800138F4, 12

.global eti_80013900
eti_80013900:
    .4byte fn_8015394C
    .4byte 0x00000158
    .4byte etb_80006EA4
.size eti_80013900, 12

.global eti_8001390C
eti_8001390C:
    .4byte fn_80153AA4
    .4byte 0x000007A4
    .4byte etb_80006EAC
.size eti_8001390C, 12

.global eti_80013918
eti_80013918:
    .4byte fn_80154248
    .4byte 0x00000064
    .4byte etb_80006E3C
.size eti_80013918, 12

.global eti_80013924
eti_80013924:
    .4byte fn_801542AC
    .4byte 0x00000064
    .4byte etb_80006E44
.size eti_80013924, 12

.global eti_80013930
eti_80013930:
    .4byte fn_80154310
    .4byte 0x0000005C
    .4byte etb_80006E4C
.size eti_80013930, 12

.global eti_8001393C
eti_8001393C:
    .4byte fn_80154378
    .4byte 0x000000E4
    .4byte etb_80006E54
.size eti_8001393C, 12

.global eti_80013948
eti_80013948:
    .4byte fn_8015445C
    .4byte 0x00000034
    .4byte etb_80006E84
.size eti_80013948, 12

.global eti_80013954
eti_80013954:
    .4byte fn_801545C0
    .4byte 0x00000020
    .4byte etb_80006E6C
.size eti_80013954, 12

.global eti_80013960
eti_80013960:
    .4byte fn_80154624
    .4byte 0x00000038
    .4byte etb_80006E5C
.size eti_80013960, 12

.global eti_8001396C
eti_8001396C:
    .4byte fn_8015465C
    .4byte 0x0000003C
    .4byte etb_80006E64
.size eti_8001396C, 12

.global eti_80013978
eti_80013978:
    .4byte fn_80154698
    .4byte 0x00000024
    .4byte etb_80006E8C
.size eti_80013978, 12

.global eti_80013984
eti_80013984:
    .4byte fn_80154718
    .4byte 0x0000002C
    .4byte etb_80006E74
.size eti_80013984, 12

.global eti_80013990
eti_80013990:
    .4byte fn_80154744
    .4byte 0x00000048
    .4byte etb_80006E7C
.size eti_80013990, 12

.text
.balign 4
.global fn_801535B4
.global fn_801537A0
.global fn_8015394C
.global fn_80153AA4
.global fn_80154248
.global fn_801542AC
.global fn_80154310
.global fn_8015436C
.global fn_80154378
.global fn_8015445C
.global fn_80154490
.global fn_8015449C
.global fn_801544AC
.global fn_801544B4
.global fn_801544C0
.global fn_801544C8
.global fn_801544D0
.global fn_801544DC
.global fn_801544E4
.global fn_801544FC
.global fn_80154510
.global fn_80154518
.global fn_80154528
.global fn_80154558
.global fn_8015457C
.global fn_80154590
.global fn_801545A4
.global fn_801545C0
.global fn_801545E0
.global fn_801545E8
.global fn_801545F0
.global fn_80154614
.global fn_8015461C
.global fn_80154624
.global fn_8015465C
.global fn_80154698
.global fn_801546BC
.global fn_801546D0
.global fn_801546E4
.global fn_801546E8
.global fn_801546F4
.global fn_80154718
.global fn_80154744

# ============================================================================
# SLR1's ("Sword Soldier") reversed-extab function group: 0x801535B4..0x8015478C.
# dtk requires this whole span landed as ONE object - the exception tables
# for the functions inside it are stored as a single contiguous "reversed
# extab group," and splitting it at any interior boundary (even at real,
# independently-provable function starts) makes dtk reject the split. The
# group holds 43 real functions total; only the first 4 are large enough to
# be independently understood at survey depth, matching SLR1.json's rich
# per-actor field set (Type/Action States/Behavior Flags/Chief Soldier ID).
# The remaining ~39 are small (mostly 2-15 instruction) local helpers/
# accessors private to this cluster - landed but not individually annotated,
# same "grouped-but-unnamed" treatment used for oscluster_80077124.c.
# ============================================================================

# fn_801535B4 - SLR1's real vtable slot-21 override (confirmed via direct-
# DOL vtable read; a genuine per-actor slot, NOT shared with HINO, which
# instead overrides slot 17 only). Bails immediately if a nearby real-time
# gate (GetRoomConfigRecord, the same helper TKTA's update() uses to decide "hidden
# Tektites wait for the player to approach") is active, or if already in
# state 0xe. Otherwise does a real-time-delta-driven position/facing update
# (fn_801F6874 for a facing angle, indexed into the shared wave table
# lbl_8052EBC0, same table BZBR/TKTA/HINO all use) and, once the computed
# facing (fn_8022461C) settles into a narrow "aligned" range, transitions to
# state 0xd - reads as "face/turn toward a target, then commit to attack."
fn_801535B4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    lwz 30, 0x4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801535F0
    li 3, 0x0
    .4byte 0x4800019C # b .L_80153788
L_801535F0:
    lwz 0, 0x230(31)
    cmpwi 0, 0xe
    .4byte 0x4082000C # bne .L_80153604
    li 3, 0x1
    .4byte 0x48000188 # b .L_80153788
L_80153604:
    lfs 1, 0x14(31)
    .4byte 0xC002A2E8 # lfs f0, lbl_8053D288@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8015361C
    li 3, 0x0
    .4byte 0x48000170 # b .L_80153788
L_8015361C:
    lfs 0, 0xc(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    .4byte 0xC822A348 # lfd f1, lbl_8053D2E8@sda21(r0)
    stfs 0, 0x2b8(31)
    lfs 0, 0x10(31)
    stw 0, 0x20(1)
    stfs 0, 0x2bc(31)
    lfs 0, 0x14(31)
    stfs 0, 0x2c0(31)
    lfs 0, 0x2b8(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    rlwinm 0, 0, 0, 16, 28
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x2b8(31)
    lfs 0, 0x2bc(31)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    rlwinm 0, 0, 0, 16, 28
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    stfs 0, 0x2bc(31)
    lwz 3, 0x98(31)
    bl fn_801F6874
    extsh 0, 3
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC042A374 # lfs f2, lbl_8053D314@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    lfs 0, 0x2b8(31)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x2b8(31)
    lwz 3, 0x98(31)
    bl fn_801F6874
    extsh 0, 3
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042A374 # lfs f2, lbl_8053D314@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x2bc(31)
    add 3, 3, 0
    lfs 1, 0x4(3)
    addi 3, 31, 0x2b8
    fmadds 0, 2, 1, 0
    stfs 0, 0x2bc(31)
    lwz 4, 0x4(31)
    bl fn_8022461C
    clrlwi 4, 3, 16
    subi 0, 4, 0x2
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80153714
    cmpwi 4, 0xe
    .4byte 0x40820074 # bne .L_80153784
L_80153714:
    li 0, 0x2710
    li 3, 0xc8
    stw 0, 0x250(31)
    cmpwi 4, 0xe
    li 0, 0x0
    stw 3, 0x108(31)
    stw 0, 0x280(31)
    .4byte 0x4082001C # bne .L_8015374C
    bl fn_802DE9A0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8015374C
    li 0, 0x1
    stw 0, 0x280(31)
L_8015374C:
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    li 4, 0x0
    li 0, 0xd
    li 3, 0x1
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    stw 4, 0xd8(31)
    stw 4, 0xdc(31)
    stw 0, 0x230(31)
    .4byte 0x48000008 # b .L_80153788
L_80153784:
    li 3, 0x0
L_80153788:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

# fn_801537A0 - SLR1's real destructor. Extended shape like HINO's: before
# the standard null-check/rebind-vtable/base-dtor/free-helper sequence, it
# runs a real death-drop. Branches on this->0x288 (a coarse category field
# derived from the spawn param, compared to 1/3): drops either a "RUPY"-
# family item (fn_8013CC50 with FourCC-style constant 0x52554800-ish via
# lis 0x5255/addi 0x5059, i.e. "RUPY" + a sub-code of 4) for one category,
# or the same call with sub-code 8 for the other - matching SLR1.json's
# "Chief Soldier" framing (regular soldiers vs. chief/captain-linked ones
# drop different rewards). Also releases a tracked effect handle at
# this->0x2a4 via the shared registry lookup, and clears 4 slots of a
# global scratch table at lbl_804BF850 if they reference this actor's ID
# (this->0x198) - the same "clear my ID from a shared slot list" pattern,
# reused again in slot 17 below.
fn_801537A0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr. 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    .4byte 0x4182016C # beq .L_8015392C
    lis 3, lbl_8049FCA0@ha
    addi 0, 3, lbl_8049FCA0@l
    stw 0, 0x0(31)
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x418100B4 # bgt .L_8015388C
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801537F0
    cmpwi 0, 0x3
    .4byte 0x408200A0 # bne .L_8015388C
L_801537F0:
    cmpwi 0, 0x1
    .4byte 0x40820050 # bne .L_80153844
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lis 7, 0x3
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    addi 7, 7, 0x4
    bl fn_801F8544
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    li 5, 0x3d9
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800004C # b .L_8015388C
L_80153844:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lis 7, 0x3
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 31, 0xc
    addi 7, 7, 0x8
    bl fn_801F8544
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A2C8 # lfs f1, lbl_8053D268@sda21(r0)
    li 5, 0x3d9
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8015388C:
    lwz 30, 0x2a4(31)
    cmpwi 30, 0x0
    .4byte 0x41800020 # blt .L_801538B4
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801538B4
    li 0, -0x1
    stw 0, 0x290(3)
L_801538B4:
    lis 4, lbl_804BF850@ha
    lwz 3, 0x198(31)
    addi 5, 4, lbl_804BF850@l
    li 0, -0x1
    lwz 4, 0x0(5)
    cmpw 4, 3
    .4byte 0x40820008 # bne .L_801538D4
    stw 0, 0x0(5)
L_801538D4:
    lwz 3, 0x198(31)
    lwzu 4, 0x4(5)
    cmpw 4, 3
    .4byte 0x40820008 # bne .L_801538E8
    stw 0, 0x0(5)
L_801538E8:
    lwz 3, 0x198(31)
    lwzu 4, 0x4(5)
    cmpw 4, 3
    .4byte 0x40820008 # bne .L_801538FC
    stw 0, 0x0(5)
L_801538FC:
    lwz 3, 0x198(31)
    lwzu 4, 0x4(5)
    cmpw 4, 3
    .4byte 0x40820008 # bne .L_80153910
    stw 0, 0x0(5)
L_80153910:
    mr 3, 31
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_8015392C
    mr 3, 31
    bl dtor_80084580
L_8015392C:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

# fn_8015394C - SLR1's real vtable slot-17 override (same slot HINO
# overrides, but a completely different, unrelated function body - HINO's
# is a simple effect-release hook, SLR1's is not). Sets a global flag
# (lbl_8053AB44 = 1, a shared cross-actor signal also touched by setParams)
# and this->0xb8=1, then releases a tracked effect handle at this->0x2a4
# (same registry-lookup pattern as the destructor) either unconditionally
# when not "aggro'd" (this->0x108 <= 0) or specifically when this->0x94
# (the FSALib "Action States"-derived sub-field) is in range [6,9]. Also
# clears this actor's ID from up to 4 slots of the SAME shared scratch
# table (lbl_804BF850) the destructor clears, plus a bounded counter at
# lbl_8053AB48 (incremented by 2, capped at 0xc8=200) - reads as a shared,
# global "how many soldiers are currently doing X" tally.
fn_8015394C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x1
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x900D8F84 # stw r0, lbl_8053AB44@sda21(r0)
    stw 0, 0xb8(3)
    lwz 0, 0x108(3)
    cmpwi 0, 0x0
    .4byte 0x4181002C # bgt .L_801539A4
    lwz 31, 0x2a4(30)
    cmpwi 31, 0x0
    .4byte 0x41800020 # blt .L_801539A4
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801539A4
    li 0, -0x1
    stw 0, 0x290(3)
L_801539A4:
    lhz 0, 0x94(30)
    cmplwi 0, 0x6
    .4byte 0x41800034 # blt .L_801539E0
    cmplwi 0, 0x9
    .4byte 0x4181002C # bgt .L_801539E0
    lwz 31, 0x2a4(30)
    cmpwi 31, 0x0
    .4byte 0x41800020 # blt .L_801539E0
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801539E0
    li 0, -0x1
    stw 0, 0x290(3)
L_801539E0:
    lis 3, lbl_804BF850@ha
    lwz 4, 0x198(30)
    addi 6, 3, lbl_804BF850@l
    li 3, -0x1
    lwz 5, 0x0(6)
    li 0, 0x2
    cmpw 5, 4
    .4byte 0x4082000C # bne .L_80153A08
    stw 3, 0x0(6)
    stw 0, 0xbc(30)
L_80153A08:
    lwz 4, 0x198(30)
    lwzu 5, 0x4(6)
    cmpw 5, 4
    .4byte 0x4082000C # bne .L_80153A20
    stw 3, 0x0(6)
    stw 0, 0xbc(30)
L_80153A20:
    lwz 4, 0x198(30)
    lwzu 5, 0x4(6)
    cmpw 5, 4
    .4byte 0x4082000C # bne .L_80153A38
    stw 3, 0x0(6)
    stw 0, 0xbc(30)
L_80153A38:
    lwz 4, 0x198(30)
    lwzu 5, 0x4(6)
    cmpw 5, 4
    .4byte 0x4082000C # bne .L_80153A50
    stw 3, 0x0(6)
    stw 0, 0xbc(30)
L_80153A50:
    lwz 0, 0x284(30)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_80153A8C
    .4byte 0x800D8F88 # lwz r0, lbl_8053AB48@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80153A70
    li 0, 0x0
    .4byte 0x900D83A8 # stw r0, lbl_80539F68@sda21(r0)
L_80153A70:
    .4byte 0x806D8F88 # lwz r3, lbl_8053AB48@sda21(r0)
    addi 0, 3, 0x2
    cmpwi 0, 0xc8
    .4byte 0x900D8F88 # stw r0, lbl_8053AB48@sda21(r0)
    .4byte 0x4081000C # ble .L_80153A8C
    li 0, 0xc8
    .4byte 0x900D8F88 # stw r0, lbl_8053AB48@sda21(r0)
L_80153A8C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

# fn_80153AA4 - SLR1's real setParams(), by far the largest single method
# landed this project (0x7A4 bytes, ~488 instructions) - matches SLR1.json
# documenting FOUR packed bitfields in the universal spawn param (Type,
# Action States, Behavior Flags, Chief Soldier ID), the richest per-actor
# field set decompiled so far. Survey-level: sets the standard two AI
# detection boxes, extracts sub-fields into this->0x94 (a 4-bit slice) and
# this->0x288 (another slice, later read by the destructor/slot17/draw as
# a coarse 0/1/3-valued category), and checks this->0x90 bit 23 (Behavior
# Flags' "Force Soldier"?) to set this->0x280. The bulk of the function is
# a large branch tree on the raw Type value (0/1/2/.../6+) that assigns
# per-color initial FSM state (this->0x230: 0, 0xd, or 1), a per-color
# flags word (this->0xb0), and randomized idle-phase/spin setup via the
# confirmed global PRNG (rolled twice, same LCG). Two real PRNG-jittered
# float computations feed this->0x28c (an angular offset). Not traced
# instruction-by-instruction given the size; the branch-on-Type structure
# and shared-subsystem reuse are the load-bearing facts, matching the
# survey-level precedent set for HINO's/BZBR's/TKTA's largest methods.
fn_80153AA4:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC042A2C4 # lfs f2, lbl_8053D264@sda21(r0)
    stw 0, 0x34(1)
    li 0, 0x0
    .4byte 0xC022A2E4 # lfs f1, lbl_8053D284@sda21(r0)
    stw 31, 0x2c(1)
    mr 31, 3
    .4byte 0xC002A2EC # lfs f0, lbl_8053D28C@sda21(r0)
    stw 30, 0x28(1)
    stfs 2, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stfs 2, 0x70(3)
    stfs 2, 0x74(3)
    stfs 0, 0x78(3)
    stfs 0, 0x7c(3)
    stfs 2, 0x80(3)
    stfs 2, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    lwz 3, 0x90(3)
    extrwi 3, 3, 4, 12
    sth 3, 0x94(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 4, 8
    stw 3, 0x288(31)
    stw 0, 0x280(31)
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x4182000C # beq .L_80153B2C
    li 0, 0x1
    stw 0, 0x280(31)
L_80153B2C:
    li 5, -0x1
    lis 4, lbl_804BF850@ha
    stwu 5, lbl_804BF850@l(4)
    li 3, 0xc8
    li 0, 0x0
    .4byte 0x906D83A8 # stw r3, lbl_80539F68@sda21(r0)
    stw 5, 0x4(4)
    stw 5, 0x8(4)
    stw 5, 0xc(4)
    .4byte 0x900D8F88 # stw r0, lbl_8053AB48@sda21(r0)
    stw 0, 0x284(31)
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 19, 19
    .4byte 0x4082000C # bne .L_80153B6C
    li 0, 0x1
    stw 0, 0x284(31)
L_80153B6C:
    lwz 3, 0x90(31)
    li 0, 0x0
    srwi 3, 3, 24
    stw 3, 0x2a4(31)
    stw 0, 0x2a8(31)
    lwz 0, 0x2a4(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80153B94
    li 0, -0x1
    stw 0, 0x2a4(31)
L_80153B94:
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x258(31)
    .4byte 0xC042A2B8 # lfs f2, lbl_8053D258@sda21(r0)
    stw 3, 0x25c(31)
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    stw 3, 0x260(31)
    .4byte 0xC002A300 # lfs f0, lbl_8053D2A0@sda21(r0)
    stw 3, 0x264(31)
    stw 3, 0x268(31)
    stw 3, 0x26c(31)
    stw 3, 0x270(31)
    stw 3, 0x238(31)
    stw 3, 0x23c(31)
    stw 3, 0x240(31)
    stw 3, 0x244(31)
    stw 3, 0x248(31)
    stw 3, 0x24c(31)
    stw 3, 0x250(31)
    stw 3, 0x254(31)
    stb 0, 0x234(31)
    stw 3, 0x274(31)
    stfs 2, 0x294(31)
    stfs 1, 0x298(31)
    stfs 0, 0x290(31)
    stw 3, 0x27c(31)
    sth 3, 0x29e(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80153C14
    .4byte 0xC002A378 # lfs f0, lbl_8053D318@sda21(r0)
    stfs 0, 0x290(31)
L_80153C14:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC062A2BC # lfs f3, lbl_8053D25C@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC082A2CC # lfs f4, lbl_8053D26C@sda21(r0)
    mullw 3, 0, 4
    .4byte 0xC0C2A2C8 # lfs f6, lbl_8053D268@sda21(r0)
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    .4byte 0xC022A37C # lfs f1, lbl_8053D31C@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    lfs 5, 0x290(31)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 2, 0x18(1)
    fsubs 2, 2, 3
    fmuls 2, 4, 2
    fmadds 2, 6, 5, 2
    stfs 2, 0x28c(31)
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2ac(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    clrlwi 0, 0, 30
    stw 0, 0x98(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80153CEC
    lwz 0, 0x98(31)
    clrlwi 0, 0, 31
    stw 0, 0x98(31)
L_80153CEC:
    li 0, 0x8
    lis 4, 0x1
    stw 0, 0x238(31)
    lis 3, lbl_8049FA40@ha
    subi 9, 4, 0x1
    addi 8, 4, 0x2205
    .4byte 0x800D8F80 # lwz r0, lbl_8053AB40@sda21(r0)
    addi 4, 3, lbl_8049FA40@l
    li 7, 0x2
    li 6, 0x0
    stw 0, 0x278(31)
    li 5, 0x4
    li 0, 0x1
    .4byte 0x806D8F80 # lwz r3, lbl_8053AB40@sda21(r0)
    addi 3, 3, 0x1
    .4byte 0x906D8F80 # stw r3, lbl_8053AB40@sda21(r0)
    sth 9, 0x29c(31)
    stw 8, 0xb0(31)
    stw 7, 0xbc(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 29
    stw 3, 0x90(31)
    sth 6, 0x2a0(31)
    stw 5, 0x190(31)
    lwz 3, 0x90(31)
    slwi 3, 3, 3
    lwzx 3, 4, 3
    stw 3, 0x108(31)
    lwz 3, 0x90(31)
    slwi 3, 3, 3
    add 3, 4, 3
    lwz 3, 0x4(3)
    stb 3, 0x234(31)
    stw 0, 0xb8(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x41820014 # beq .L_80153D90
    cmplwi 0, 0x5
    .4byte 0x4182000C # beq .L_80153D90
    cmplwi 0, 0x3
    .4byte 0x40820030 # bne .L_80153DBC
L_80153D90:
    li 4, 0x0
    lis 3, lbl_8049FA78@ha
    stw 4, 0xb0(31)
    li 0, 0x2
    addi 3, 3, lbl_8049FA78@l
    stw 4, 0xb8(31)
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    slwi 0, 0, 5
    lwzx 0, 3, 0
    stw 0, 0x274(31)
L_80153DBC:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x41820014 # beq .L_80153DD8
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_80153DD8
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80153DE0
L_80153DD8:
    li 0, 0x5
    stw 0, 0x190(31)
L_80153DE0:
    lwz 0, 0x90(31)
    cmpwi 0, 0x4
    .4byte 0x4080001C # bge .L_80153E04
    cmpwi 0, 0x1
    .4byte 0x418200D0 # beq .L_80153EC0
    .4byte 0x408000FC # bge .L_80153EF0
    cmpwi 0, 0x0
    .4byte 0x408000E8 # bge .L_80153EE4
    .4byte 0x480000F0 # b .L_80153EF0
L_80153E04:
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_80153E14
    .4byte 0x408000E4 # bge .L_80153EF0
    .4byte 0x480000D4 # b .L_80153EE4
L_80153E14:
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, 0x6
    .4byte 0xC0A2A2BC # lfs f5, lbl_8053D25C@sda21(r0)
    lwz 5, 0xb4(8)
    addi 0, 4, 0x660d
    .4byte 0xC0E2A2CC # lfs f7, lbl_8053D26C@sda21(r0)
    li 6, 0x3
    mullw 7, 5, 0
    li 5, 0x0
    .4byte 0xC062A2C8 # lfs f3, lbl_8053D268@sda21(r0)
    li 4, 0x6
    addi 3, 3, 0x2209
    .4byte 0xC042A2C0 # lfs f2, lbl_8053D260@sda21(r0)
    addis 7, 7, 0x3c6f
    .4byte 0xC022A2C4 # lfs f1, lbl_8053D264@sda21(r0)
    subi 0, 7, 0xca1
    .4byte 0xC002A380 # lfs f0, lbl_8053D320@sda21(r0)
    stw 0, 0xb4(8)
    li 0, 0xb
    lwz 7, 0xb4(8)
    lfs 4, 0x290(31)
    srwi 7, 7, 9
    oris 7, 7, 0x3f80
    stw 7, 0x10(1)
    lfs 6, 0x10(1)
    fsubs 5, 6, 5
    fmadds 4, 7, 5, 4
    stfs 4, 0x28c(31)
    stw 6, 0xbc(31)
    stw 6, 0xc0(31)
    stw 5, 0x284(31)
    stfs 3, 0x54(31)
    stfs 3, 0x58(31)
    stfs 3, 0x5c(31)
    stw 4, 0x190(31)
    stw 3, 0xb0(31)
    stfs 2, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    stw 0, 0x230(31)
    .4byte 0x480001D4 # b .L_80154090
L_80153EC0:
    li 4, 0x0
    li 3, 0x2
    stw 4, 0xb8(31)
    li 0, 0xc
    stw 3, 0x98(31)
    stw 0, 0x274(31)
    .4byte 0x908D8F84 # stw r4, lbl_8053AB44@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x480001B0 # b .L_80154090
L_80153EE4:
    lis 3, 0x6
    addi 0, 3, 0x2209
    stw 0, 0xb0(31)
L_80153EF0:
    li 0, 0x1
    lis 3, lbl_80529DEC@ha
    stw 0, 0x230(31)
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x0
    .4byte 0x40820188 # bne .L_80154090
    lwz 0, 0x11c(3)
    cmpwi 0, 0x0
    .4byte 0x4082017C # bne .L_80154090
    bl GetRoomConfigRecord
    lwz 0, 0x18(3)
    cmpwi 0, 0x2
    .4byte 0x4082016C # bne .L_80154090
    bl GetRoomConfigRecord
    lwz 0, 0x14(3)
    cmpwi 0, 0x2
    .4byte 0x4082015C # bne .L_80154090
    .4byte 0xC022A334 # lfs f1, lbl_8053D2D4@sda21(r0)
    lfs 0, 0xc(31)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    cmpwi 0, 0x68
    .4byte 0x40820134 # bne .L_80154088
    lfs 0, 0x10(31)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    cmpwi 0, 0x57
    .4byte 0x40820118 # bne .L_80154088
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC022A2BC # lfs f1, lbl_8053D25C@sda21(r0)
    lwz 4, 0xb4(5)
    li 0, 0x0
    .4byte 0xC062A328 # lfs f3, lbl_8053D2C8@sda21(r0)
    mullw 3, 4, 3
    .4byte 0xC002A384 # lfs f0, lbl_8053D324@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x20(1)
    lwz 3, 0x24(1)
    addi 3, 3, 0x6e
    stw 3, 0x23c(31)
    stfs 0, 0x290(31)
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_8015403C
    .4byte 0x40800014 # bge .L_80153FFC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80154008
    .4byte 0x4080002C # bge .L_80154020
    .4byte 0x48000074 # b .L_8015406C
L_80153FFC:
    cmpwi 0, 0x4
    .4byte 0x4080006C # bge .L_8015406C
    .4byte 0x48000050 # b .L_80154054
L_80154008:
    lfs 1, 0x290(31)
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    stfs 1, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b4(31)
    .4byte 0x48000050 # b .L_8015406C
L_80154020:
    lfs 1, 0x290(31)
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    fneg 1, 1
    stfs 1, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b4(31)
    .4byte 0x48000034 # b .L_8015406C
L_8015403C:
    lfs 1, 0x290(31)
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    stfs 0, 0x2ac(31)
    stfs 1, 0x2b0(31)
    stfs 0, 0x2b4(31)
    .4byte 0x4800001C # b .L_8015406C
L_80154054:
    lfs 1, 0x290(31)
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    fneg 1, 1
    stfs 0, 0x2ac(31)
    stfs 1, 0x2b0(31)
    stfs 0, 0x2b4(31)
L_8015406C:
    lfs 1, 0x10(31)
    li 0, 0x0
    .4byte 0xC002A388 # lfs f0, lbl_8053D328@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_80154090
L_80154088:
    li 0, 0x1
    stw 0, 0x270(31)
L_80154090:
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801540A4
    cmpwi 0, 0x3
    .4byte 0x408200D8 # bne .L_80154178
L_801540A4:
    .4byte 0xC042A2C4 # lfs f2, lbl_8053D264@sda21(r0)
    .4byte 0xC002A2EC # lfs f0, lbl_8053D28C@sda21(r0)
    stfs 2, 0x70(31)
    stfs 2, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x3
    .4byte 0x4082002C # bne .L_801540F0
    .4byte 0xC002A2C0 # lfs f0, lbl_8053D260@sda21(r0)
    .4byte 0xC022A380 # lfs f1, lbl_8053D320@sda21(r0)
    stfs 0, 0x70(31)
    .4byte 0xC002A2C8 # lfs f0, lbl_8053D268@sda21(r0)
    stfs 2, 0x74(31)
    stfs 1, 0x78(31)
    stfs 1, 0x7c(31)
    stfs 0, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
L_801540F0:
    lis 4, 0xa04
    lis 3, 0x19
    addi 4, 4, 0x2004
    li 0, 0x2
    stw 4, 0xb0(31)
    li 5, 0x0
    addi 4, 3, 0x660d
    .4byte 0xC002A2BC # lfs f0, lbl_8053D25C@sda21(r0)
    stb 0, 0x234(31)
    li 3, 0x10
    .4byte 0xC042A33C # lfs f2, lbl_8053D2DC@sda21(r0)
    li 0, 0x11
    stw 5, 0xb8(31)
    stw 5, 0x18c(31)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 5, 0xb4(6)
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    addi 4, 4, 0x3c
    stw 4, 0x238(31)
    stw 3, 0x274(31)
    stw 0, 0x230(31)
L_80154178:
    lwz 0, 0x2a4(31)
    cmpwi 0, 0x0
    .4byte 0x418000B0 # blt .L_80154230
    lhz 0, 0x94(31)
    cmplwi 0, 0x6
    .4byte 0x4180009C # blt .L_80154228
    cmplwi 0, 0x9
    .4byte 0x41810094 # bgt .L_80154228
    lis 4, 0xa04
    lis 3, lbl_8049FA78@ha
    addi 0, 4, 0x4
    stw 0, 0xb0(31)
    addi 3, 3, lbl_8049FA78@l
    lhz 4, 0x94(31)
    subi 0, 4, 0x6
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    stw 0, 0x25c(31)
    lwz 4, 0x98(31)
    lwz 0, 0x258(31)
    slwi 4, 4, 3
    add 0, 4, 0
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x274(31)
    lwz 0, 0x288(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801541F0
    cmpwi 0, 0x3
    .4byte 0x4082001C # bne .L_80154208
L_801541F0:
    lwz 3, 0x98(31)
    lwz 0, 0x258(31)
    slwi 3, 3, 2
    clrlwi 0, 0, 30
    add 0, 3, 0
    stw 0, 0x274(31)
L_80154208:
    .4byte 0xC022A2D4 # lfs f1, lbl_8053D274@sda21(r0)
    li 0, 0x0
    .4byte 0xC002A2DC # lfs f0, lbl_8053D27C@sda21(r0)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0xb8(31)
L_80154228:
    li 0, 0xf
    stw 0, 0x230(31)
L_80154230:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80154248:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    bl SpatialRegistry_GetBase
    mr 4, 28
    mr 5, 29
    mr 6, 30
    mr 7, 31
    bl fn_801F8544
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801542AC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    bl SpatialRegistry_GetBase
    mr 4, 28
    mr 5, 29
    mr 6, 30
    mr 7, 31
    bl fn_801F7818
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80154310:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 26, 3
    mr 27, 4
    mr 28, 5
    mr 29, 6
    mr 30, 7
    mr 31, 8
    bl SpatialRegistry_GetBase
    mr 4, 26
    mr 5, 27
    mr 6, 28
    mr 7, 29
    mr 8, 30
    mr 9, 31
    bl fn_801F9484
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8015436C:
    fabs 0, 1
    frsp 1, 0
    blr

fn_80154378:
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    stwu 1, -0x10(1)
    fcmpo cr0, 1, 0
    .4byte 0x4081004C # ble .L_801543D0
    frsqrte 2, 1
    .4byte 0xC882A358 # lfd f4, lbl_8053D2F8@sda21(r0)
    .4byte 0xC862A360 # lfd f3, lbl_8053D300@sda21(r0)
    fmul 0, 2, 2
    fmul 2, 4, 2
    fnmsub 0, 1, 0, 3
    fmul 2, 2, 0
    fmul 0, 2, 2
    fmul 2, 4, 2
    fnmsub 0, 1, 0, 3
    fmul 2, 2, 0
    fmul 0, 2, 2
    fmul 2, 4, 2
    fnmsub 0, 1, 0, 3
    fmul 0, 2, 0
    fmul 1, 1, 0
    frsp 1, 1
    .4byte 0x48000088 # b .L_80154454
L_801543D0:
    .4byte 0xC802A368 # lfd f0, lbl_8053D308@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801543E8
    lis 3, lbl_80539D38@ha
    lfs 1, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_80154454
L_801543E8:
    stfs 1, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_80154410
    .4byte 0x40800040 # bge .L_80154440
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_80154428
    .4byte 0x48000034 # b .L_80154440
L_80154410:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80154420
    li 0, 0x1
    .4byte 0x48000028 # b .L_80154444
L_80154420:
    li 0, 0x2
    .4byte 0x48000020 # b .L_80154444
L_80154428:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_80154438
    li 0, 0x5
    .4byte 0x48000010 # b .L_80154444
L_80154438:
    li 0, 0x3
    .4byte 0x48000008 # b .L_80154444
L_80154440:
    li 0, 0x4
L_80154444:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80154454
    lis 3, lbl_80539D38@ha
    lfs 1, lbl_80539D38@l(3)
L_80154454:
    addi 1, 1, 0x10
    blr

fn_8015445C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80154490:
    li 0, 0x1
    stb 0, 0x2a5(3)
    blr

fn_8015449C:
    lwz 4, 0x290(3)
    addi 0, 4, 0x1
    stw 0, 0x290(3)
    blr

fn_801544AC:
    lwz 3, 0x28c(3)
    blr

fn_801544B4:
    li 0, -0x1
    stw 0, 0x290(3)
    blr

fn_801544C0:
    lwz 3, 0x288(3)
    blr

fn_801544C8:
    lwz 3, 0x90(3)
    blr

fn_801544D0:
    stw 4, 0xd8(3)
    stw 4, 0xdc(3)
    blr

fn_801544DC:
    addi 3, 3, 0xc
    blr

fn_801544E4:
    lis 4, lbl_8052EBC0@ha
    rlwinm 0, 3, 30, 18, 28
    addi 3, 4, lbl_8052EBC0@l
    add 3, 3, 0
    lfs 1, 0x4(3)
    blr

fn_801544FC:
    lis 4, lbl_8052EBC0@ha
    rlwinm 0, 3, 30, 18, 28
    addi 3, 4, lbl_8052EBC0@l
    lfsx 1, 3, 0
    blr

fn_80154510:
    lwz 3, 0x114(3)
    blr

fn_80154518:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    stfs 3, 0x8(3)
    blr

fn_80154528:
    lfs 3, 0x8(3)
    lfs 1, 0x0(3)
    lfs 4, 0xc(3)
    lfs 0, 0x4(3)
    fsubs 1, 1, 3
    .4byte 0xC042A310 # lfs f2, lbl_8053D2B0@sda21(r0)
    fsubs 0, 0, 4
    fmadds 1, 2, 1, 3
    fmadds 0, 2, 0, 4
    stfs 1, 0x0(4)
    stfs 0, 0x4(4)
    blr

fn_80154558:
    lfs 2, 0x0(3)
    lfs 1, 0x0(4)
    lfs 0, 0x4(4)
    fadds 1, 2, 1
    stfs 1, 0x0(3)
    lfs 1, 0x4(3)
    fadds 0, 1, 0
    stfs 0, 0x4(3)
    blr

fn_8015457C:
    lfs 1, 0x0(4)
    lfs 0, 0x4(4)
    stfs 1, 0x0(3)
    stfs 0, 0x4(3)
    blr

fn_80154590:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    stfs 3, 0x8(3)
    stfs 4, 0xc(3)
    blr

fn_801545A4:
    lfs 0, 0x0(4)
    lfs 1, 0x4(4)
    stfs 0, 0x0(3)
    lfs 0, 0x8(4)
    stfs 1, 0x4(3)
    stfs 0, 0x8(3)
    blr

fn_801545C0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_801F2618
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801545E0:
    lwz 3, 0x9c(3)
    blr

fn_801545E8:
    lwz 3, 0x198(3)
    blr

fn_801545F0:
    psq_l 2, 0x0(3), 0, 0
    psq_l 1, 0x0(4), 0, 0
    psq_l 0, 0x8(4), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x0(3), 0, 0
    psq_l 1, 0x8(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(3), 1, 0
    blr

fn_80154614:
    stw 4, 0xb8(3)
    blr

fn_8015461C:
    lwz 3, 0x4(3)
    blr

fn_80154624:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 3, 0x31df(3)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8015465C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80534C00@ha
    stw 0, 0x14(1)
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002A370 # lfs f0, lbl_8053D310@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80154698:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801546BC:
    .4byte 0xC002A2B8 # lfs f0, lbl_8053D258@sda21(r0)
    stfs 0, 0x8(3)
    stfs 0, 0x4(3)
    stfs 0, 0x0(3)
    blr

fn_801546D0:
    psq_l 1, 0x0(4), 0, 0
    lfs 0, 0x8(4)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    blr

fn_801546E4:
    blr

fn_801546E8:
    stfs 1, 0x0(3)
    stfs 2, 0x4(3)
    blr

fn_801546F4:
    lfs 1, 0x0(4)
    lfs 0, 0x4(4)
    stfs 1, 0x0(3)
    lfs 1, 0x8(4)
    stfs 0, 0x4(3)
    lfs 0, 0xc(4)
    stfs 1, 0x8(3)
    stfs 0, 0xc(3)
    blr

fn_80154718:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(5)
    bl fn_8030C210
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80154744:
    stwu 1, -0x10(1)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002A2BC # lfs f0, lbl_8053D25C@sda21(r0)
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
    lfs 1, 0x8(1)
    fsubs 1, 1, 0
    addi 1, 1, 0x10
    blr

