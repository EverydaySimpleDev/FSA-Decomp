/*
 * WARP-portal-actor cluster, part 8/12.
 *
 * fn_801EE434(this): no-op if this==NULL. Otherwise fetches the current
 * room/config record via the confirmed GetRoomConfigRecord and does a 2D box
 * overlap test: this->0xa4 and (this->0xa8-this->0xac) against the
 * record's [0xcc,0xd0]-[0xd4,0xd8] bounds. If INSIDE the box: sets a bit
 * in this->0xf4 (clamps low bits then ORs in bit0) and sets this->0x24=1
 * (an "active/visible" flag). If OUTSIDE: instead fetches a manager
 * singleton via fn_8013C824()->0xc and calls fn_800EC240(manager, this) -
 * looks like "mark myself active while inside my containing room's
 * bounds, else deregister/hand off to the out-of-bounds manager."
 */
.section extab, "a"
.balign 4
.global etb_80008D4C
etb_80008D4C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008D4C, 8

.section extabindex, "a"
.balign 4
.global eti_800163CC
eti_800163CC:
    .4byte fn_801EE434
    .4byte 0x000000BC
    .4byte etb_80008D4C
.size eti_800163CC, 12

.text
.balign 4
.global fn_801EE434

fn_801EE434:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820094 # beq .L_801EE4DC
    bl GetRoomConfigRecord
    lfs 3, 0xa4(31)
    li 0, 0x0
    lfs 0, 0xcc(3)
    lfs 2, 0xa8(31)
    lfs 1, 0xac(31)
    fcmpo cr0, 3, 0
    fsubs 1, 2, 1
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_801EE4A0
    lfs 0, 0xd0(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801EE4A0
    lfs 0, 0xd4(3)
    fcmpo cr0, 3, 0
    .4byte 0x40800014 # bge .L_801EE4A0
    lfs 0, 0xd8(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801EE4A0
    li 0, 0x1
L_801EE4A0:
    clrlwi. 0, 0, 24
    .4byte 0x41820028 # beq .L_801EE4CC
    lwz 3, 0xf4(31)
    li 0, 0x1
    rlwinm 3, 3, 0, 26, 24
    stw 3, 0xf4(31)
    lwz 3, 0xf4(31)
    ori 3, 3, 0x1
    stw 3, 0xf4(31)
    stw 0, 0x24(31)
    .4byte 0x48000014 # b .L_801EE4DC
L_801EE4CC:
    bl fn_8013C824
    lwz 3, 0xc(3)
    mr 4, 31
    bl fn_800EC240
L_801EE4DC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

