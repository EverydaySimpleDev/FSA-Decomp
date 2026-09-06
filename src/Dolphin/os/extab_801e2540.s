/*
 * TINK (vtable lbl_804A51E4). Floor-bounce check: unless this->0x230
 * bit 19 is set, compares this->0x10 (Y position) against a floor
 * threshold derived from the room-config record (GetRoomConfigRecord). If below
 * either of two thresholds, clamps this->0x10 back up and sets a bounce
 * velocity triad (this->0x264/0x268/0x26c) from fixed constants,
 * returning 1; otherwise returns 0.
 */
.section extab, "a"
.balign 4
.global etb_800089A0
etb_800089A0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800089A0, 8

.section extabindex, "a"
.balign 4
.global eti_80015EA4
eti_80015EA4:
    .4byte fn_801E2540
    .4byte 0x000000D0
    .4byte etb_800089A0
.size eti_80015EA4, 12

.text
.balign 4
.global fn_801E2540

fn_801E2540:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 19, 19
    .4byte 0x40820088 # bne .L_801E25F0
    lwz 31, 0x4(29)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801E2584
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E2588
L_801E2584:
    addi 3, 3, 0xdc
L_801E2588:
    lfs 1, 0xc(3)
    .4byte 0xC002C530 # lfs f0, lbl_8053F4D0@sda21(r0)
    lfs 2, 0x10(29)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40810024 # ble .L_801E25C0
    stfs 0, 0x10(29)
    li 30, 0x1
    .4byte 0xC022C534 # lfs f1, lbl_8053F4D4@sda21(r0)
    .4byte 0xC002C538 # lfs f0, lbl_8053F4D8@sda21(r0)
    stfs 1, 0x264(29)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
    .4byte 0x48000034 # b .L_801E25F0
L_801E25C0:
    .4byte 0xC022C53C # lfs f1, lbl_8053F4DC@sda21(r0)
    lfs 0, 0x4(3)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800020 # bge .L_801E25F0
    stfs 0, 0x10(29)
    li 30, 0x1
    .4byte 0xC022C534 # lfs f1, lbl_8053F4D4@sda21(r0)
    .4byte 0xC002C540 # lfs f0, lbl_8053F4E0@sda21(r0)
    stfs 1, 0x264(29)
    stfs 0, 0x268(29)
    stfs 1, 0x26c(29)
L_801E25F0:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

