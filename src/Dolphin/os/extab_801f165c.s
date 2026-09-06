/*
 * UNIVERSAL BASE-ACTOR DEFAULT (called via vtable slot 0x4c/4=19).
 * "Out of bounds" validator: true if a virtual hook (vtable slot 0x4c,
 * same slot this function itself occupies on the base class - subclasses
 * override it directly) returns true, OR the given point falls outside
 * the room-config boundary box (confirmed GetRoomConfigRecord). Immediately
 * precedes the already-confirmed fn_801F172C room-boundary/wall-push
 * validator ([[project_fsa_position_validator_closed]]) in address
 * order - likely its sibling/predecessor in the same virtual family.
 */
.section extab, "a"
.balign 4
.global etb_80008DD4
etb_80008DD4:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008DD4, 8

.section extabindex, "a"
.balign 4
.global eti_80016498
eti_80016498:
    .4byte fn_801F165C
    .4byte 0x000000D0
    .4byte etb_80008DD4
.size eti_80016498, 12

.text
.balign 4
.global fn_801F165C

fn_801F165C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr 28, 3
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801F1698
    addi 30, 3, 0xcc
    .4byte 0x48000008 # b .L_801F169C
L_801F1698:
    addi 30, 3, 0xdc
L_801F169C:
    mr 3, 28
    mr 4, 31
    lwz 12, 0x0(28)
    mr 5, 29
    li 31, 0x0
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820044 # bne .L_801F1704
    lfs 2, 0x0(29)
    lfs 0, 0x0(30)
    fcmpo cr0, 2, 0
    .4byte 0x41800034 # blt .L_801F1704
    lfs 1, 0x4(29)
    lfs 0, 0x4(30)
    fcmpo cr0, 1, 0
    .4byte 0x41800024 # blt .L_801F1704
    lfs 0, 0x8(30)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x41820014 # beq .L_801F1704
    lfs 0, 0xc(30)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F1708
L_801F1704:
    li 31, 0x1
L_801F1708:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

