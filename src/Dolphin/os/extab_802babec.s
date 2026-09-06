/*
 * FIRE (burning status-effect actor) cluster, part 2/9.
 *
 * fn_802BABEC(this, param, gateBool): a "spawn a BLZE burst" dispatcher
 * with 3 flag variants. If gateBool is set: spawns "BLZE" (0x424C5A45,
 * the same FourCC confirmed from [[project_fsa_arrw_actor_progress]])
 * via the confirmed fn_801F9484 dispatcher with flag =
 * (this->0x98<<4)|0x18f. If not, and this->0x264 (mode) is 0/1/5: reads
 * this->0x260; if valid (>=0), spawns BLZE with flag =
 * (this->0x98<<4)|this->0x260 and an extra param this->0x110; if
 * invalid, spawns with flag=(this->0x98<<4)|0xf instead. Otherwise
 * (other modes): spawns BLZE with flag=(this->0x98<<4)|0x18f
 * unconditionally.
 */
.section extab, "a"
.balign 4
.global etb_8000C8A4
etb_8000C8A4:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000C8A4, 8

.section extabindex, "a"
.balign 4
.global eti_8001B670
eti_8001B670:
    .4byte fn_802BABEC
    .4byte 0x000000F8
    .4byte etb_8000C8A4
.size eti_8001B670, 12

.text
.balign 4
.global fn_802BABEC

fn_802BABEC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    clrlwi. 0, 5, 24
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x4082008C # bne .L_802BAC9C
    lwz 0, 0x264(29)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802BAC30
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802BAC30
    cmpwi 0, 0x5
    .4byte 0x4082009C # bne .L_802BACC8
L_802BAC30:
    lwz 31, 0x260(29)
    cmpwi 31, 0x0
    .4byte 0x40800034 # bge .L_802BAC6C
    bl SpatialRegistry_GetBase
    lwz 0, 0x98(29)
    lis 4, 0x424c
    lwz 5, 0x4(29)
    mr 6, 30
    slwi 0, 0, 4
    addi 4, 4, 0x5a45
    ori 7, 0, 0xf
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000060 # b .L_802BACC8
L_802BAC6C:
    bl SpatialRegistry_GetBase
    lwz 0, 0x98(29)
    lis 4, 0x424c
    lwz 5, 0x4(29)
    mr 6, 30
    slwi 0, 0, 4
    lwz 9, 0x110(29)
    addi 4, 4, 0x5a45
    li 8, -0x1
    or 7, 0, 31
    bl fn_801F9484
    .4byte 0x48000030 # b .L_802BACC8
L_802BAC9C:
    bl SpatialRegistry_GetBase
    lwz 0, 0x98(29)
    lis 4, 0x424c
    lwz 5, 0x4(29)
    mr 6, 30
    slwi 0, 0, 4
    addi 4, 4, 0x5a45
    ori 7, 0, 0x18f
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802BACC8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

