/*
 * NEW ACTOR (vtable lbl_804A5A30). "Leave-area" vtable slot: on the
 * confirmed fn_8020609C "out of room" gate being false, checks flag bit
 * 19 clear and a "moved far from spawn" delta box (this->0x80-0x88 vs
 * a threshold); on both, records a persistent room flag via the
 * confirmed fn_801F2618(this, &this->0x264, globalByte).
 */
.section extab, "a"
.balign 4
.global etb_80009CAC
etb_80009CAC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009CAC, 8

.section extabindex, "a"
.balign 4
.global eti_80017668
eti_80017668:
    .4byte fn_80206C18
    .4byte 0x00000090
    .4byte etb_80009CAC
.size eti_80017668, 12

.text
.balign 4
.global fn_80206C18

fn_80206C18:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_8020609C
    clrlwi. 0, 3, 24
    .4byte 0x40820050 # bne .L_80206C8C
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 19, 19
    .4byte 0x40820044 # bne .L_80206C8C
    lfs 1, 0x88(30)
    lfs 0, 0x80(30)
    .4byte 0xC042C90C # lfs f2, lbl_8053F8AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081002C # ble .L_80206C8C
    lfs 1, 0x8c(30)
    lfs 0, 0x84(30)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810018 # ble .L_80206C8C
    .4byte 0x88A2C020 # lbz r5, lbl_8053EFC0@sda21(r0)
    mr 3, 30
    addi 4, 30, 0x264
    bl fn_801F2618
    mr 31, 3
L_80206C8C:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

