.section extab, "a"
.balign 4
.global etb_8000A7E0
etb_8000A7E0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A7E0, 8

.section extabindex, "a"
.balign 4
.global eti_800186DC
eti_800186DC:
    .4byte fn_80226BC4
    .4byte 0x000000E4
    .4byte etb_8000A7E0
.size eti_800186DC, 12

.text
.balign 4
.global fn_80226BC4

# fn_80226BC4(pos, roomIdx) - sibling of the already-landed fn_80226850
# (extab_80226850.s): identical room-boundary rect selection (via the
# CONFIRMED GetRoomConfigRecord config record) and identical clamped [0,0x1ff]
# quantized-offset computation and bitfield packing, but returns the
# packed cell-code value directly instead of also calling fn_802F9908 to
# write it. Confirmed by its caller fn_8029E248 (extab_8029e248.s),
# which uses this return value AS the cell-type argument it later passes
# to fn_802F9974 - i.e. this is the "compute (don't write) the
# terrain-grid cell code for this position" half of the pair.
fn_80226BC4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    stw 30, 0x28(1)
    mr 30, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_80226BF4
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_80226BF8
L_80226BF4:
    addi 4, 3, 0xdc
L_80226BF8:
    lwz 3, 0x0(4)
    lwz 0, 0x4(4)
    stw 3, 0x8(1)
    lwz 3, 0x8(4)
    lfs 1, 0x0(30)
    lfs 0, 0x8(1)
    stw 0, 0xc(1)
    fsubs 2, 1, 0
    lfs 1, 0x4(30)
    lfs 0, 0xc(1)
    lwz 0, 0xc(4)
    fctiwz 2, 2
    stw 3, 0x10(1)
    fsubs 0, 1, 0
    stw 0, 0x14(1)
    stfd 2, 0x18(1)
    fctiwz 0, 0
    lwz 0, 0x1c(1)
    stfd 0, 0x20(1)
    cmpwi 0, 0x0
    lwz 4, 0x24(1)
    .4byte 0x4080000C # bge .L_80226C58
    li 0, 0x0
    .4byte 0x48000010 # b .L_80226C64
L_80226C58:
    cmpwi 0, 0x200
    .4byte 0x41800008 # blt .L_80226C64
    li 0, 0x1ff
L_80226C64:
    cmpwi 4, 0x0
    .4byte 0x4080000C # bge .L_80226C74
    li 4, 0x0
    .4byte 0x48000010 # b .L_80226C80
L_80226C74:
    cmpwi 4, 0x200
    .4byte 0x41800008 # blt .L_80226C80
    li 4, 0x1ff
L_80226C80:
    rlwinm 3, 0, 0, 23, 23
    lwz 31, 0x2c(1)
    rlwimi 3, 4, 1, 22, 22
    lwz 30, 0x28(1)
    rlwimi 3, 4, 0, 24, 27
    rlwimi 3, 0, 28, 28, 31
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
