/*
 * WARP-portal-actor cluster, part 6/12. This function is the strongest
 * evidence for the "this = a WARP portal actor" hypothesis for this
 * whole cluster: it scans the registry of "WARP"-tagged actors
 * (0x57415250 = "WARP") via fn_801F78F4 (a find-next-of-type-since-ID
 * iterator, sibling of the confirmed spatial-registry family fn_801F7818
 * / project_fsa_spatial_registry_system.md) and resolves each candidate
 * via the confirmed SpatialRegistry_GetBase/fn_801F666C id-resolve pair.
 *
 * fn_801EE24C(this): loops candidate WARP actors (starting after
 * this->0x4 if already set) until it finds one owned by the same room
 * (candidate->0x4 == this->0x4). Reads the candidate's ->0x90 field,
 * extracts a 3-bit sub-field (a facing/side index 0-7, +7 if a mask bit
 * is clear) and uses it (plus a room<8 check via the confirmed
 * GetRoomConfigRecord) to select a row from one of two 8-row x 16-byte portal
 * offset tables, computing a delta added to this->0xc/0x14 (the
 * candidate's linked-partner exit offset). Commits the found candidate's
 * side-index (+adjustment) into this->0x4. Reads as "find my linked
 * partner portal and orient myself relative to its exit side."
 */
.section extab, "a"
.balign 4
.global etb_80008D44
etb_80008D44:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008D44, 8

.section extabindex, "a"
.balign 4
.global eti_800163C0
eti_800163C0:
    .4byte fn_801EE24C
    .4byte 0x00000174
    .4byte etb_80008D44
.size eti_800163C0, 12

.text
.balign 4
.global fn_801EE24C

fn_801EE24C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    lis 31, 0x5741
    stw 30, 0x28(1)
    li 30, -0x1
    stw 29, 0x24(1)
    mr 29, 3
L_801EE270:
    bl SpatialRegistry_GetBase
    mr 5, 30
    addi 4, 31, 0x5250
    bl fn_801F78F4
    mr. 30, 3
    .4byte 0x4180011C # blt .L_801EE3A0
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFD8 # beq .L_801EE270
    lwz 4, 0x4(29)
    lwz 0, 0x4(3)
    cmpw 4, 0
    .4byte 0x4082FFC8 # bne .L_801EE270
    lwz 3, 0x90(3)
    clrlwi 0, 3, 24
    cmplwi 0, 0x8
    .4byte 0x4082FFB8 # bne .L_801EE270
    psq_l 1, 0xc(29), 0, 0
    extrwi. 30, 3, 3, 5
    lfs 0, 0x14(29)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x41820008 # beq .L_801EE2D8
    addi 30, 30, 0x7
L_801EE2D8:
    lwz 31, 0x4(29)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801EE2F0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801EE2F4
L_801EE2F0:
    addi 3, 3, 0xdc
L_801EE2F4:
    lfs 1, 0x8(1)
    lfs 0, 0x0(3)
    lwz 31, 0x4(29)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801EE31C
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801EE320
L_801EE31C:
    addi 3, 3, 0xdc
L_801EE320:
    lfs 1, 0xc(1)
    lfs 0, 0x4(3)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801EE344
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801EE348
L_801EE344:
    addi 3, 3, 0xdc
L_801EE348:
    lfs 1, 0x8(1)
    lfs 0, 0x0(3)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801EE36C
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_801EE370
L_801EE36C:
    addi 4, 3, 0xdc
L_801EE370:
    lfs 2, 0xc(1)
    li 3, 0x1
    lfs 1, 0x4(4)
    .4byte 0xC002C79C # lfs f0, lbl_8053F73C@sda21(r0)
    fadds 1, 2, 1
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    psq_st 1, 0xc(29), 0, 0
    stfs 0, 0x14(29)
    stw 30, 0x4(29)
    .4byte 0x48000008 # b .L_801EE3A4
L_801EE3A0:
    li 3, 0x0
L_801EE3A4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

