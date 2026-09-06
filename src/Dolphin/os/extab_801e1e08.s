/*
 * TINK (vtable lbl_804A51E4). The state-0 ENTRY handler (called by
 * fn_801E1594's jumptable slot 0) - TINK's full reset. Releases the
 * current tracked companion (this->0x2bc) via the spatial registry,
 * transfers its accumulated reward value (this->0x2c0) into a persistent
 * per-owner global tally (lbl_8050EC80[this->0x4 * 0xc8] + 0x2c, clamped
 * to >=0), then clears this->0x4 (owner ID) and this->0x98. Re-derives
 * this->0xc from the room-config record (GetRoomConfigRecord) and reinitializes
 * the position/velocity block (0x10/0x14/0x54-0x7c) with a launch arc from
 * lbl_8053F4C0/lbl_8053F4C4, masking a set of this->0x230 flag bits. Resets
 * all tracking state to defaults: this->0x2a8/0x2ac/0x2b0/0x2b4/0x2bc=-1,
 * 0x2c0=0, 0x2cc=PRNG(0..0xb3)+0xb4 (a randomized re-idle timer, distinct
 * from the 0x2ce countdown in fn_801DE9F4), 0x2ce=0, 0x2d0=-1, 0x250=-1,
 * 0x254/0x258=0.
 */
.section extab, "a"
.balign 4
.global etb_80008970
etb_80008970:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008970, 8

.section extabindex, "a"
.balign 4
.global eti_80015E5C
eti_80015E5C:
    .4byte fn_801E1E08
    .4byte 0x000001FC
    .4byte etb_80008970
.size eti_80015E5C, 12

.text
.balign 4
.global fn_801E1E08

fn_801E1E08:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    lwz 0, 0x2bc(3)
    cmpwi 0, 0x0
    .4byte 0x418000AC # blt .L_801E1ED4
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 12, 12
    .4byte 0x40820010 # bne .L_801E1E44
    lwz 0, 0x230(31)
    oris 0, 0, 0x4
    stw 0, 0x230(31)
L_801E1E44:
    lwz 0, 0x2bc(31)
    cmpwi 0, 0x0
    .4byte 0x41800088 # blt .L_801E1ED4
    lwz 5, 0x2c0(31)
    cmpwi 5, 0x0
    .4byte 0x40810058 # ble .L_801E1EB0
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 12, 12
    .4byte 0x40820044 # bne .L_801E1EA8
    lis 3, lbl_8050EC80@ha
    addi 4, 3, lbl_8050EC80@l
    lwz 0, 0x10(4)
    mulli 0, 0, 0xc8
    add 3, 4, 0
    lwz 0, 0x2c(3)
    add 0, 0, 5
    stw 0, 0x2c(3)
    lwz 0, 0x10(4)
    mulli 0, 0, 0xc8
    add 3, 4, 0
    lwz 0, 0x2c(3)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801E1EA8
    li 0, 0x0
    stw 0, 0x2c(3)
L_801E1EA8:
    li 0, 0x0
    stw 0, 0x2c0(31)
L_801E1EB0:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2bc(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801E1ECC
    li 0, 0x0
    stb 0, 0x11c(3)
L_801E1ECC:
    li 0, -0x1
    stw 0, 0x2bc(31)
L_801E1ED4:
    li 0, 0x0
    stw 0, 0x4(31)
    stw 0, 0x98(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801E1EF8
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E1EFC
L_801E1EF8:
    addi 3, 3, 0xdc
L_801E1EFC:
    lfs 1, 0x0(3)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801E1F24
    addi 4, 3, 0xcc
    .4byte 0x48000008 # b .L_801E1F28
L_801E1F24:
    addi 4, 3, 0xdc
L_801E1F28:
    .4byte 0xC022C528 # lfs f1, lbl_8053F4C8@sda21(r0)
    lis 3, 0xff84
    lfs 0, 0x4(4)
    li 6, 0x0
    .4byte 0xC042C504 # lfs f2, lbl_8053F4A4@sda21(r0)
    addi 4, 3, 0x1fff
    fadds 3, 1, 0
    .4byte 0xC022C520 # lfs f1, lbl_8053F4C0@sda21(r0)
    .4byte 0xC002C524 # lfs f0, lbl_8053F4C4@sda21(r0)
    li 0, -0x1
    li 3, 0x79
    stfs 3, 0x10(31)
    stfs 2, 0x14(31)
    stfs 1, 0x54(31)
    stfs 1, 0x58(31)
    stfs 1, 0x5c(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stw 6, 0xb0(31)
    lwz 5, 0x230(31)
    and 4, 5, 4
    stw 4, 0x230(31)
    stw 0, 0x2a8(31)
    stw 0, 0x2ac(31)
    stw 0, 0x2b0(31)
    stw 0, 0x2b4(31)
    stw 0, 0x2bc(31)
    stw 6, 0x2c0(31)
    bl fn_801CD664
    addi 0, 3, 0xb4
    li 3, 0x0
    sth 0, 0x2cc(31)
    li 0, -0x1
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    sth 3, 0x2ce(31)
    stw 0, 0x2d0(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

