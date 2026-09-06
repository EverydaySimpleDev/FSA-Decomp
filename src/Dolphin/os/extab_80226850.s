.section extab, "a"
.balign 4
.global etb_8000A7C8
etb_8000A7C8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A7C8, 8

.section extabindex, "a"
.balign 4
.global eti_800186B8
eti_800186B8:
    .4byte fn_80226850
    .4byte 0x00000148
    .4byte etb_8000A7C8
.size eti_800186B8, 12

.text
.balign 4
.global fn_80226850

# fn_80226850(pos, roomIdx) - NOT SLK2-specific. Fetches the CONFIRMED
# "level/room config record" via GetRoomConfigRecord
# (project_fsa_802d6a9c_config_record_resolved.md), selects one of two
# embedded rectangle structs by roomIdx (>=8 selects +0xdc, else +0xcc),
# and does a 2D point-in-rect test of pos against it; returns 0xf if
# outside. If inside, computes a clamped [0,0x1ff] quantized offset
# along each axis (fctiwz truncation, same idiom used elsewhere for
# packing sub-cell coordinates) and calls the CONFIRMED terrain-grid
# writer fn_802F9908 (project_fsa_proximity_loose_ends_closed.md) with
# a packed axis+quantized-offset bitfield, masking the low 10 bits of
# its result. This is a "stamp a terrain-grid marker at this position,
# for whichever room half roomIdx selects" utility, part of the
# terrain-grid subsystem rather than SLK2's own state.
fn_80226850:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    mr 4, 31
    .4byte 0x4080000C # bge .L_80226884
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_80226888
L_80226884:
    addi 7, 3, 0xdc
L_80226888:
    lwz 3, 0x0(7)
    li 0, 0x0
    lwz 6, 0x4(7)
    stw 3, 0x8(1)
    lwz 5, 0x8(7)
    lfs 2, 0x0(30)
    lfs 3, 0x8(1)
    lwz 3, 0xc(7)
    fcmpo cr0, 2, 3
    stw 6, 0xc(1)
    stw 5, 0x10(1)
    stw 3, 0x14(1)
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_802268F0
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_802268F0
    lfs 0, 0x10(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_802268F0
    lfs 0, 0x14(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_802268F0
    li 0, 0x1
L_802268F0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_80226900
    li 3, 0xf
    .4byte 0x48000084 # b .L_80226980
L_80226900:
    fsubs 2, 2, 3
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    fctiwz 2, 2
    fsubs 0, 1, 0
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 6, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 6, 0x0
    lwz 0, 0x24(1)
    .4byte 0x4080000C # bge .L_80226938
    li 6, 0x0
    .4byte 0x48000010 # b .L_80226944
L_80226938:
    cmpwi 6, 0x200
    .4byte 0x41800008 # blt .L_80226944
    li 6, 0x1ff
L_80226944:
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_80226954
    li 0, 0x0
    .4byte 0x48000010 # b .L_80226960
L_80226954:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80226960
    li 0, 0x1ff
L_80226960:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    rlwinm 5, 6, 0, 23, 23
    rlwimi 5, 0, 1, 22, 22
    lwz 3, 0x20(3)
    rlwimi 5, 0, 0, 24, 27
    rlwimi 5, 6, 28, 28, 31
    bl fn_802F9908
    clrlwi 3, 3, 22
L_80226980:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
