/*
 * NEW ACTOR (vtable lbl_804A5A30). "Out of room boundary" trigger: while
 * a mode flag (this->0x94) is 1 and the owner's room is <8 (confirmed
 * fn_801CD2F8 idiom) and this->0xc/0x10 falls outside the room-config
 * boundary box (GetRoomConfigRecord), OR while in states {1,2,6,8}, calls the
 * unconfirmed fn_80204638() and fn_802046FC(this, &this->0x3c, &this->0xc)
 * (both outside this landed gap, in an adjacent unclaimed region not
 * covered here); on success and flag bit 19 set, records a persistent
 * room flag via fn_801F2618(this, &this->0x264, globalByte).
 */
.section extab, "a"
.balign 4
.global etb_80009C20
etb_80009C20:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009C20, 8

.section extabindex, "a"
.balign 4
.global eti_800175B4
eti_800175B4:
    .4byte fn_80204EB8
    .4byte 0x00000134
    .4byte etb_80009C20
.size eti_800175B4, 12

.text
.balign 4
.global fn_80204EB8

fn_80204EB8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lhz 0, 0x94(3)
    cmplwi 0, 0x1
    .4byte 0x40820084 # bne .L_80204F64
    lwz 3, 0x4(29)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_80204F64
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_80204F0C
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80204F10
L_80204F0C:
    addi 3, 3, 0xdc
L_80204F10:
    lfs 2, 0xc(29)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_80204F58
    lfs 1, 0x10(29)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80204F58
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80204F58
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80204F58
    li 0, 0x1
L_80204F58:
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_80204F64
    li 31, 0x1
L_80204F64:
    clrlwi. 0, 31, 24
    .4byte 0x40820068 # bne .L_80204FD0
    lwz 0, 0x248(29)
    cmpwi 0, 0x6
    .4byte 0x41820028 # beq .L_80204F9C
    .4byte 0x40800018 # bge .L_80204F90
    cmpwi 0, 0x3
    .4byte 0x40800050 # bge .L_80204FD0
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_80204F9C
    .4byte 0x48000044 # b .L_80204FD0
L_80204F90:
    cmpwi 0, 0x8
    .4byte 0x41820008 # beq .L_80204F9C
    .4byte 0x48000038 # b .L_80204FD0
L_80204F9C:
    bl fn_80204638
    addi 4, 29, 0x3c
    addi 5, 29, 0xc
    bl fn_802046FC
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_80204FD0
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 19, 19
    .4byte 0x41820014 # beq .L_80204FD0
    .4byte 0x88A2C020 # lbz r5, lbl_8053EFC0@sda21(r0)
    mr 3, 29
    addi 4, 29, 0x264
    bl fn_801F2618
L_80204FD0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

