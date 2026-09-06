/*
 * NEW ACTOR (vtable lbl_804A5A30). Formalized "out of room boundary"
 * predicate: true while a mode flag (this->0x94) is 1, the owner's room
 * is <8 (confirmed fn_801CD2F8 idiom), and this->0xc/0x10 falls outside
 * the room-config boundary box (GetRoomConfigRecord) - the same gate inlined in
 * fn_80204EB8/fn_80204FEC, now given a dedicated caller by fn_80206C18.
 */
.section extab, "a"
.balign 4
.global etb_80009C50
etb_80009C50:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009C50, 8

.section extabindex, "a"
.balign 4
.global eti_800175FC
eti_800175FC:
    .4byte fn_8020609C
    .4byte 0x000000CC
    .4byte etb_80009C50
.size eti_800175FC, 12

.text
.balign 4
.global fn_8020609C

fn_8020609C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lhz 0, 0x94(3)
    stw 31, 0x1c(1)
    cmplwi 0, 0x1
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 3
    .4byte 0x40820084 # bne .L_80206148
    lwz 3, 0x4(29)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_80206148
    lwz 31, 0x4(29)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_802060F0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_802060F4
L_802060F0:
    addi 3, 3, 0xdc
L_802060F4:
    lfs 2, 0xc(29)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8020613C
    lfs 1, 0x10(29)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8020613C
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8020613C
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8020613C
    li 0, 0x1
L_8020613C:
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_80206148
    li 30, 0x1
L_80206148:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

