.section extab, "a"
.balign 4
.global etb_8000C364
etb_8000C364:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000C364, 8

.section extabindex, "a"
.balign 4
.global eti_8001AED8
eti_8001AED8:
    .4byte fn_8029E248
    .4byte 0x000002C0
    .4byte etb_8000C364
.size eti_8001AED8, 12

.text
.balign 4
.global fn_8029E248

# fn_8029E248(this, basePos, roomFlags) - NOT SLK2-specific. Extends
# the CONFIRMED terrain-grid subsystem (GetRoomConfigRecord config accessor,
# fn_802F9908/fn_802F9974 grid read/write,
# project_fsa_proximity_loose_ends_closed.md). Resolves basePos to a
# room-relative coordinate via not-yet-seen fn_80226BC4, queries the
# terrain grid at it via fn_802F9908, and dispatches on the returned
# cell code (0x19c/0x19d = special, else default):
#   0x19d: tries 2 candidate offset points (+/-X only).
#   default: tries 3 candidate offset points (+X, -X, and centered).
# For EACH candidate: resolves it via fn_80226BC4, fetches the
# CONFIRMED room-config record via GetRoomConfigRecord, calls not-yet-seen
# fn_802D782C(flag=1), queries the terrain grid via the CONFIRMED
# fn_802F9974 (a variant of fn_802F9908 taking a literal cell-type
# argument: 0x19e/0x19f depending on which candidate), then calls
# not-yet-seen fn_802D4C10(roomFlags) to look up an actor/slot at that
# cell; if a valid slot (!=-1) is returned, calls not-yet-seen
# fn_802D7D00(slot, 1) - likely "mark/claim this grid slot." If NONE of
# the candidates find anything, calls not-yet-seen fn_80230FD0(0,0x307)
# - probably a "nothing to do here" cue/no-op sound. Surfaces 4 new
# not-yet-decompiled helpers (fn_80226BC4, fn_802D782C, fn_802D4C10,
# fn_802D7D00) worth following up alongside the terrain-grid family.
fn_8029E248:
    stwu 1, -0x50(1)
    mflr 0
    lfs 1, 0x4(4)
    stw 0, 0x54(1)
    lfs 0, 0x0(4)
    stmw 27, 0x3c(1)
    mr 29, 3
    mr 28, 5
    mr 30, 4
    mr 4, 28
    addi 3, 1, 0x28
    li 27, 0x0
    stfs 1, 0x2c(1)
    stfs 0, 0x28(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    mr 31, 28
    mr 4, 28
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(29)
    lwz 3, 0x20(3)
    bl fn_802F9908
    sth 3, 0x24(29)
    lhz 0, 0x24(29)
    cmplwi 0, 0x19c
    .4byte 0x4182000C # beq .L_8029E2B8
    cmplwi 0, 0x19d
    .4byte 0x4082023C # bne .L_8029E4F0
L_8029E2B8:
    cmplwi 0, 0x19d
    .4byte 0x40820114 # bne .L_8029E3D0
    lfs 1, 0x4(30)
    rlwinm 27, 28, 0, 24, 30
    lfs 0, 0x0(30)
    mr 4, 27
    stfs 1, 0x24(1)
    addi 3, 1, 0x20
    .4byte 0x83AD90D8 # lwz r29, lbl_8053AC98@sda21(r0)
    stfs 0, 0x20(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    lwz 28, 0x20(29)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 28
    li 6, 0x19f
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(29)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 28, 3
    cmpwi 28, -0x1
    .4byte 0x41820018 # beq .L_8029E344
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 28
    li 6, 0x1
    bl fn_802D7D00
L_8029E344:
    lfs 1, 0x0(30)
    mr 4, 27
    .4byte 0xC002D7E0 # lfs f0, lbl_80540780@sda21(r0)
    addi 3, 1, 0x18
    lfs 2, 0x4(30)
    fsubs 0, 1, 0
    .4byte 0x83AD90D8 # lwz r29, lbl_8053AC98@sda21(r0)
    stfs 2, 0x1c(1)
    stfs 0, 0x18(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    lwz 28, 0x20(29)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 28
    li 6, 0x19e
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(29)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 28, 3
    cmpwi 28, -0x1
    .4byte 0x41820128 # beq .L_8029E4DC
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 28
    li 6, 0x1
    bl fn_802D7D00
    .4byte 0x48000110 # b .L_8029E4DC
L_8029E3D0:
    lfs 1, 0x4(30)
    rlwinm 27, 28, 0, 24, 30
    lfs 0, 0x0(30)
    mr 4, 27
    stfs 1, 0x14(1)
    addi 3, 1, 0x10
    .4byte 0x83AD90D8 # lwz r29, lbl_8053AC98@sda21(r0)
    stfs 0, 0x10(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    lwz 28, 0x20(29)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 28
    li 6, 0x19e
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(29)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 28, 3
    cmpwi 28, -0x1
    .4byte 0x41820018 # beq .L_8029E454
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 28
    li 6, 0x1
    bl fn_802D7D00
L_8029E454:
    .4byte 0xC022D7E0 # lfs f1, lbl_80540780@sda21(r0)
    mr 4, 27
    lfs 0, 0x0(30)
    addi 3, 1, 0x8
    lfs 2, 0x4(30)
    fadds 0, 1, 0
    .4byte 0x83AD90D8 # lwz r29, lbl_8053AC98@sda21(r0)
    stfs 2, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_80226BC4
    stw 3, 0x20(29)
    lwz 28, 0x20(29)
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D782C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 31
    mr 5, 28
    li 6, 0x19f
    lwz 3, 0x20(3)
    bl fn_802F9974
    bl GetRoomConfigRecord
    lwz 0, 0x20(29)
    mr 4, 31
    clrlwi 5, 0, 16
    bl fn_802D4C10
    mr 28, 3
    cmpwi 28, -0x1
    .4byte 0x41820018 # beq .L_8029E4DC
    bl GetRoomConfigRecord
    mr 4, 31
    mr 5, 28
    li 6, 0x1
    bl fn_802D7D00
L_8029E4DC:
    lis 4, 0x3
    li 3, 0x0
    addi 4, 4, 0x7
    bl fn_80230FD0
    li 27, 0x1
L_8029E4F0:
    mr 3, 27
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr
