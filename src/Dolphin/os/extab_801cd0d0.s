.section extab, "a"
.balign 4
.global etb_800082E8
etb_800082E8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800082E8, 8

.section extabindex, "a"
.balign 4
.global eti_80015580
eti_80015580:
    .4byte fn_801CD0D0
    .4byte 0x00000080
    .4byte etb_800082E8
.size eti_80015580, 12

.text
.balign 4
.global fn_801CD0D0

# fn_801CD0D0(inPoint, outPoint) - CONFIRMED: a "remap a point between
# the level-config record's two room-boundary rectangles" utility,
# called by `fn_801F2B7C` (extab_801f2b7c.s) only when the "ownership"
# check finds the target player is in the OTHER room instance (the
# CONFIRMED sentinel-8 pattern from `fn_801EEC98`). Fetches the level
# config record TWICE via `GetRoomConfigRecord` (CONFIRMED) - the SAME two
# rects `fn_8022461C`/`fn_802265FC` read at `+0xcc/+0xd0` (room<8) and
# `+0xdc/+0xe0` (room>=8): `out.x = (in.x - rect2.minX) + rect1.minX`,
# `out.y = (in.y - rect2.minY) + rect1.minY`, `out.z = in.z` unchanged.
# In short: translates a position from the "room>=8" rectangle's local
# origin into the "room<8" rectangle's local origin (or vice versa,
# depending on which config accessor resolves which rect for this
# level) - confirms FSA's per-room coordinate rebasing scheme, first
# seen as the `roomParam>=8` convention in the terrain classifiers.
fn_801CD0D0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    bl GetRoomConfigRecord
    mr 31, 3
    bl GetRoomConfigRecord
    lfs 1, 0x0(29)
    lfs 0, 0xdc(3)
    lfs 3, 0x4(29)
    lfs 2, 0xe0(3)
    fsubs 0, 1, 0
    lfs 1, 0xcc(31)
    fsubs 2, 3, 2
    lfs 3, 0xd0(31)
    fadds 0, 1, 0
    lfs 4, 0x8(29)
    fadds 1, 3, 2
    stfs 0, 0x0(30)
    stfs 1, 0x4(30)
    stfs 4, 0x8(30)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
