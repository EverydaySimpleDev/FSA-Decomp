/*
 * NEW ACTOR (vtable lbl_804A5A30). Calls a base-class virtual hook
 * (this->vtable[0x84/4]) first, then computes the per-frame facing
 * offset (this->0x3c/0x40): the same "out of room boundary" gate as
 * fn_80204EB8 (formalized as fn_8020609C elsewhere), per-state presets,
 * a cached target (this->0x360/0x364), an animation-cue-indexed lookup
 * into the likely sin/cos table lbl_8052EBC0 (confirmed candidate from
 * [[project_fsa_orbit_attacker_actor_progress]]), or a fallback via the
 * confirmed fn_801D01A0 using anchor this->0x32c.
 */
.section extab, "a"
.balign 4
.global etb_80009C28
etb_80009C28:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009C28, 8

.section extabindex, "a"
.balign 4
.global eti_800175C0
eti_800175C0:
    .4byte fn_80204FEC
    .4byte 0x000001C0
    .4byte etb_80009C28
.size eti_800175C0, 12

.text
.balign 4
.global fn_80204FEC

fn_80204FEC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lwz 12, 0x0(3)
    lwz 12, 0x84(12)
    mtctr 12
    bctrl
    lhz 0, 0x94(29)
    li 31, 0x0
    cmplwi 0, 0x1
    .4byte 0x40820084 # bne .L_802050A8
    lwz 3, 0x4(29)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820074 # bne .L_802050A8
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_80205050
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_80205054
L_80205050:
    addi 3, 3, 0xdc
L_80205054:
    lfs 2, 0xc(29)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_8020509C
    lfs 1, 0x10(29)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_8020509C
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_8020509C
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8020509C
    li 0, 0x1
L_8020509C:
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_802050A8
    li 31, 0x1
L_802050A8:
    clrlwi. 0, 31, 24
    .4byte 0x41820014 # beq .L_802050C0
    .4byte 0xC002C8C0 # lfs f0, lbl_8053F860@sda21(r0)
    stfs 0, 0x3c(29)
    stfs 0, 0x40(29)
    .4byte 0x480000D4 # b .L_80205190
L_802050C0:
    lwz 0, 0x248(29)
    cmpwi 0, 0x6
    .4byte 0x41820060 # beq .L_80205128
    .4byte 0x4080001C # bge .L_802050E8
    cmpwi 0, 0x4
    .4byte 0x418200BC # beq .L_80205190
    .4byte 0x40800030 # bge .L_80205108
    cmpwi 0, 0x3
    .4byte 0x40800018 # bge .L_802050F8
    .4byte 0x48000088 # b .L_8020516C
L_802050E8:
    cmpwi 0, 0xa
    .4byte 0x40800080 # bge .L_8020516C
    cmpwi 0, 0x8
    .4byte 0x40800034 # bge .L_80205128
L_802050F8:
    .4byte 0xC002C8C0 # lfs f0, lbl_8053F860@sda21(r0)
    stfs 0, 0x3c(29)
    stfs 0, 0x40(29)
    .4byte 0x4800008C # b .L_80205190
L_80205108:
    lfs 1, 0x360(29)
    stfs 1, 0x8(1)
    lfs 0, 0x364(29)
    stfs 0, 0xc(1)
    stfs 1, 0x3c(29)
    lfs 0, 0xc(1)
    stfs 0, 0x40(29)
    .4byte 0x4800006C # b .L_80205190
L_80205128:
    lha 0, 0x33c(29)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfsx 1, 4, 0
    lfs 0, 0x4(3)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    lfs 0, 0x254(29)
    fmuls 0, 1, 0
    stfs 0, 0x3c(29)
    lfs 1, 0xc(1)
    lfs 0, 0x254(29)
    fmuls 0, 1, 0
    stfs 0, 0x40(29)
    .4byte 0x48000028 # b .L_80205190
L_8020516C:
    lfs 1, 0x254(29)
    mr 3, 29
    addi 4, 29, 0x32c
    addi 5, 1, 0x8
    bl fn_801D01A0
    lfs 0, 0x8(1)
    stfs 0, 0x3c(29)
    lfs 0, 0xc(1)
    stfs 0, 0x40(29)
L_80205190:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

