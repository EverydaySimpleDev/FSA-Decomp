.section extab, "a"
.balign 4
.global etb_800082F0
etb_800082F0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800082F0, 8

.section extabindex, "a"
.balign 4
.global eti_8001558C
eti_8001558C:
    .4byte fn_801CD150
    .4byte 0x00000080
    .4byte etb_800082F0
.size eti_8001558C, 12

.text
.balign 4
.global fn_801CD150

# fn_801CD150(srcPoint, destPoint) - the INVERSE of the already-landed
# fn_801CD0D0 (extab_801cd0d0.s): rebases a point OUT of the "room<8"
# config rect coordinate space (GetRoomConfigRecord()->0xcc/0xd0) INTO the
# "room>=8" rect space (GetRoomConfigRecord()->0xdc/0xe0), i.e.
# dest = rectB.origin + (src - rectA.origin), passing src.z straight
# through unchanged. GetRoomConfigRecord takes no arguments (the confirmed
# global level/room config accessor, see
# project_fsa_802d6a9c_config_record_resolved.md) - it's called twice
# here only because the two rect pairs live at different offsets of the
# SAME record.
fn_801CD150:
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
    lfs 0, 0xcc(31)
    lfs 3, 0x4(29)
    lfs 2, 0xd0(31)
    fsubs 0, 1, 0
    lfs 1, 0xdc(3)
    fsubs 2, 3, 2
    lfs 3, 0xe0(3)
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
