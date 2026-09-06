.section extab, "a"
.balign 4
.global etb_80008198
etb_80008198:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008198, 8

.section extabindex, "a"
.balign 4
.global eti_80015388
eti_80015388:
    .4byte fn_801C844C
    .4byte 0x00000430
    .4byte etb_80008198
.size eti_80015388, 12

.text
.balign 4
.global fn_801C844C

# fn_801C844C(this) - the most elaborate of this cluster's "advance the
# ring index" family, called first by fn_801C7F98 (extab_801c7f98.s)
# before it computes its own travel-direction byte. Records this
# actor's current position into the ring tracker via the new
# fn_800FE2E4(ringObj, point*, roomID) (a likely sibling of RAIL's
# CONFIRMED ring-traversal library, project_fsa_rail_actor_identified.md).
#
# Unless this->0x230 bit 6 is set: if this->0x524 bit 23 is set AND
# this actor is confirmed AT a waypoint (RAIL's CONFIRMED
# fn_800FD5E8), peeks the forward/backward ring neighbors (the
# standard peek-then-restore technique used throughout this cluster)
# and PRNG-tie-breaks by room-match, committing whichever passes a
# final bounds check.
#
# Then, unless this->0x230 bit 10 is set: in a config-restricted room
# (GetRoomConfigRecord()->0x31df, CONFIRMED), delegates entirely to the
# CONFIRMED fn_801C887C "stay in my room" hop selector
# (extab_801c887c.s) and returns. In an unrestricted room: rolls the
# PRNG (lbl_8053EF00 threshold) and, if it passes, peeks both
# neighbors again with the usual PRNG tie-break (lbl_8053EED8
# threshold) and commits the winner outright. Independently, rolls the
# PRNG a THIRD time (lbl_8053EED8 again) to decide whether to try the
# forward or backward neighbor first for a LINE-OF-SIGHT-gated commit:
# if that neighbor's room matches mine, runs the CONFIRMED fn_801CF888
# sweep (extab_801c887c.s cross-reference,
# project_fsa_slk2_area_probe_closed.md) from my current position to
# its computed world position, committing the neighbor only if the
# path is clear.
fn_801C844C:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    addi 3, 31, 0x358
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    stw 28, 0x60(1)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x30(1), 0, 0
    stfs 0, 0x38(1)
    bl GetCurrentSlotPtr
    lwz 5, 0x4(31)
    addi 4, 1, 0x30
    bl fn_800FE2E4
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 6, 6
    .4byte 0x408203C4 # bne .L_801C885C
    lwz 0, 0x524(31)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x41820168 # beq .L_801C860C
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    mr 30, 3
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0x3(30)
    bl fn_800FD5E8
    clrlwi. 0, 3, 24
    .4byte 0x41820144 # beq .L_801C860C
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 30, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, 0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 29, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800008 # bge .L_801C850C
    stb 30, 0x3(3)
L_801C850C:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, -0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 28, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 30, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801C8544
    stb 30, 0x3(3)
L_801C8544:
    addic. 0, 1, 0x8
    .4byte 0x41820008 # beq .L_801C8550
    stb 28, 0x8(1)
L_801C8550:
    addic. 0, 1, 0x9
    .4byte 0x41820008 # beq .L_801C855C
    stb 29, 0x9(1)
L_801C855C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF28 # lfs f1, lbl_8053EEC8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF38 # lfs f0, lbl_8053EED8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080002C # bge .L_801C85CC
    lbz 30, 0x9(1)
    addi 3, 31, 0x358
    lwz 28, 0x4(31)
    bl GetCurrentSlotPtr
    mr 4, 30
    bl fn_800FE25C
    cmpw 28, 3
    .4byte 0x41820030 # beq .L_801C85F0
    lbz 30, 0x8(1)
    .4byte 0x48000028 # b .L_801C85F0
L_801C85CC:
    lbz 30, 0x8(1)
    addi 3, 31, 0x358
    lwz 28, 0x4(31)
    bl GetCurrentSlotPtr
    mr 4, 30
    bl fn_800FE25C
    cmpw 28, 3
    .4byte 0x41820008 # beq .L_801C85F0
    lbz 30, 0x9(1)
L_801C85F0:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 30, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801C860C
    stb 30, 0x3(3)
L_801C860C:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 10, 10
    .4byte 0x40820248 # bne .L_801C885C
    lwz 28, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_801C8640
    mr 3, 31
    bl fn_801C887C
    .4byte 0x48000220 # b .L_801C885C
L_801C8640:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF28 # lfs f1, lbl_8053EEC8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF60 # lfs f0, lbl_8053EF00@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x408001D8 # bge .L_801C885C
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 28, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, 0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 29, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 28, 0
    .4byte 0x40800008 # bge .L_801C86C8
    stb 28, 0x3(3)
L_801C86C8:
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    li 4, -0x1
    bl fn_800FD818
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 30, 0x3(3)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 28, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801C8700
    stb 28, 0x3(3)
L_801C8700:
    addic. 0, 1, 0xb
    .4byte 0x41820008 # beq .L_801C870C
    stb 30, 0xb(1)
L_801C870C:
    addic. 0, 1, 0xa
    .4byte 0x41820008 # beq .L_801C8718
    stb 29, 0xa(1)
L_801C8718:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BF28 # lfs f1, lbl_8053EEC8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BF38 # lfs f0, lbl_8053EED8@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800084 # bge .L_801C87E0
    lwz 28, 0x4(31)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0xb(1)
    bl fn_800FE25C
    cmpw 28, 3
    .4byte 0x408200E4 # bne .L_801C885C
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 5, 0xb(1)
    mr 4, 3
    addi 3, 1, 0x24
    bl fn_800FE294
    lfs 0, 0x2c(1)
    addi 5, 1, 0x48
    psq_l 1, 0x24(1), 0, 0
    mr 3, 31
    stfs 0, 0x50(1)
    addi 4, 31, 0xc
    psq_st 1, 0x0(5), 0, 0
    lwz 6, 0x4(31)
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x408200A0 # bne .L_801C885C
    lbz 30, 0xb(1)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800088 # bge .L_801C885C
    stb 30, 0x3(3)
    .4byte 0x48000080 # b .L_801C885C
L_801C87E0:
    lwz 28, 0x4(31)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0xa(1)
    bl fn_800FE25C
    cmpw 28, 3
    .4byte 0x40820064 # bne .L_801C885C
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 5, 0xa(1)
    mr 4, 3
    addi 3, 1, 0x18
    bl fn_800FE294
    lfs 0, 0x20(1)
    addi 5, 1, 0x3c
    psq_l 1, 0x18(1), 0, 0
    mr 3, 31
    stfs 0, 0x44(1)
    addi 4, 31, 0xc
    psq_st 1, 0x0(5), 0, 0
    lwz 6, 0x4(31)
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_801C885C
    lbz 30, 0xa(1)
    addi 3, 31, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800008 # bge .L_801C885C
    stb 30, 0x3(3)
L_801C885C:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    lwz 28, 0x60(1)
    mtlr 0
    addi 1, 1, 0x70
    blr
