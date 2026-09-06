.section extab, "a"
.balign 4
.global etb_800081E0
etb_800081E0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800081E0, 8

.section extabindex, "a"
.balign 4
.global eti_800153F4
eti_800153F4:
    .4byte fn_801C9AF8
    .4byte 0x000001B8
    .4byte etb_800081E0
.size eti_800153F4, 12

.text
.balign 4
.global fn_801C9AF8

# fn_801C9AF8(this, roomID, point*) - a "is this point actually safe to
# use" validator. Landed as a structural overview - several called
# helpers (fn_80226850, fn_802265DC, fn_8020D58C, fn_8020D6AC) remain
# undecompiled, so their exact contracts are inferred from usage, not
# confirmed:
# 1. In a room-restricted room (GetRoomConfigRecord()->0x31df, CONFIRMED),
#    replaces the point's height field with a small epsilon
#    (lbl_8053EF20) and its other field with (original - height) -
#    exact geometric meaning unclear without the caller's point layout.
# 2. If the (possibly-adjusted) height exceeds the epsilon, fails
#    UNLESS this actor's current state (this->0x248) is 0x17 or 0x11 -
#    a state-gated height exception.
# 3. On success so far, classifies the point via the CONFIRMED
#    fn_8022461C terrain/hazard classifier
#    (project_fsa_player_proximity_helpers.md) and, depending on the
#    returned code, runs a SECOND classifier fn_80226850(this, point)
#    (not decompiled) checking its result against fixed ranges - a
#    "coarse classify, then refine for ambiguous codes" pattern
#    mirroring fn_8022461C's own confirmed usage elsewhere.
# 4. A final fallback path calls fn_802265DC(this, point, 0) (not
#    decompiled); if that's false, the point fails outright. If true,
#    looks up a per-actor-ID record via this->0x198 (a stable ID field
#    used the same way elsewhere in this project) through
#    fn_8020D58C/fn_8020D6AC (both not decompiled, an unrelated
#    0x8020Dxxx subsystem not otherwise touched by SLK2's cluster) to
#    make the final accept/reject call.
fn_801C9AF8:
    stwu 1, -0x30(1)
    mflr 0
    psq_l 1, 0x0(5), 0, 0
    stw 0, 0x34(1)
    lfs 0, 0x8(5)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    mr 29, 4
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801C9B58
    lfs 2, 0xc(1)
    lfs 1, 0x10(1)
    .4byte 0xC002BF80 # lfs f0, lbl_8053EF20@sda21(r0)
    fsubs 1, 2, 1
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
L_801C9B58:
    lfs 1, 0x10(1)
    li 3, 0x0
    .4byte 0xC002BF80 # lfs f0, lbl_8053EF20@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_801C9B90
    lwz 0, 0x248(30)
    cmpwi 0, 0x17
    .4byte 0x41820014 # beq .L_801C9B8C
    .4byte 0x40800014 # bge .L_801C9B90
    cmpwi 0, 0x11
    .4byte 0x41820008 # beq .L_801C9B8C
    .4byte 0x48000008 # b .L_801C9B90
L_801C9B8C:
    li 3, 0x1
L_801C9B90:
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_801C9C38
    mr 4, 29
    addi 3, 1, 0x8
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0x3
    .4byte 0x41820030 # beq .L_801C9BDC
    .4byte 0x40800010 # bge .L_801C9BC0
    cmpwi 0, 0x1
    .4byte 0x41820044 # beq .L_801C9BFC
    .4byte 0x4800007C # b .L_801C9C38
L_801C9BC0:
    cmpwi 0, 0x2c
    .4byte 0x40800074 # bge .L_801C9C38
    cmpwi 0, 0x27
    .4byte 0x40800008 # bge .L_801C9BD4
    .4byte 0x48000068 # b .L_801C9C38
L_801C9BD4:
    li 3, 0x0
    .4byte 0x480000BC # b .L_801C9C94
L_801C9BDC:
    mr 4, 29
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmplwi 0, 0x7a
    .4byte 0x40820048 # bne .L_801C9C38
    li 3, 0x0
    .4byte 0x4800009C # b .L_801C9C94
L_801C9BFC:
    mr 4, 29
    addi 3, 1, 0x8
    bl fn_80226850
    clrlwi 0, 3, 16
    cmpwi 0, 0x322
    .4byte 0x40800018 # bge .L_801C9C28
    cmpwi 0, 0x9d
    .4byte 0x40800020 # bge .L_801C9C38
    cmpwi 0, 0x9b
    .4byte 0x40800010 # bge .L_801C9C30
    .4byte 0x48000014 # b .L_801C9C38
L_801C9C28:
    cmpwi 0, 0x324
    .4byte 0x4080000C # bge .L_801C9C38
L_801C9C30:
    li 3, 0x0
    .4byte 0x48000060 # b .L_801C9C94
L_801C9C38:
    mr 4, 29
    addi 3, 1, 0x8
    li 31, 0x1
    li 5, 0x0
    bl fn_802265DC
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_801C9C90
    lwz 30, 0x198(30)
    bl fn_8020D58C
    mr 8, 3
    mr 4, 29
    lbz 0, 0x1(3)
    mr 6, 30
    addi 5, 1, 0x8
    .4byte 0x38E2BF78 # li r7, lbl_8053EF18@sda21
    mulli 3, 0, 0x784
    addi 3, 3, 0x4
    add 3, 8, 3
    bl fn_8020D6AC
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_801C9C90
    li 31, 0x0
L_801C9C90:
    mr 3, 31
L_801C9C94:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
