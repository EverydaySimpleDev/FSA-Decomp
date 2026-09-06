/*
 * Cutscene/camera-cue actor (vtable lbl_804A4958). "Trigger a move
 * re-plan" gate: on the same state-range gate as fn_801E376C/
 * fn_801E3B2C, flag bit 18, owner room <8, and a "moved far" velocity
 * delta (this->0x60-0x6c), calls the unconfirmed
 * fn_801F2B7C(this, this->0x114, -1, 1) (outside this gap).
 */
.section extab, "a"
.balign 4
.global etb_80008A18
etb_80008A18:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008A18, 8

.section extabindex, "a"
.balign 4
.global eti_80015F58
eti_80015F58:
    .4byte fn_801E3A4C
    .4byte 0x000000E0
    .4byte etb_80008A18
.size eti_80015F58, 12

.text
.balign 4
.global fn_801E3A4C

fn_801E3A4C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x248(3)
    li 3, 0x1
    cmpwi 0, 0x9
    .4byte 0x4080001C # bge .L_801E3A90
    cmpwi 0, 0x5
    .4byte 0x4182002C # beq .L_801E3AA8
    .4byte 0x40800024 # bge .L_801E3AA4
    cmpwi 0, 0x0
    .4byte 0x4080001C # bge .L_801E3AA4
    .4byte 0x4800001C # b .L_801E3AA8
L_801E3A90:
    cmpwi 0, 0x1b
    .4byte 0x40800014 # bge .L_801E3AA8
    cmpwi 0, 0x15
    .4byte 0x40800008 # bge .L_801E3AA4
    .4byte 0x48000008 # b .L_801E3AA8
L_801E3AA4:
    li 3, 0x0
L_801E3AA8:
    clrlwi. 0, 3, 24
    .4byte 0x41820064 # beq .L_801E3B10
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820058 # beq .L_801E3B10
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_801E3B10
    lfs 1, 0x68(30)
    lfs 0, 0x60(30)
    .4byte 0xC042C590 # lfs f2, lbl_8053F530@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810030 # ble .L_801E3B10
    lfs 1, 0x6c(30)
    lfs 0, 0x64(30)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081001C # ble .L_801E3B10
    lwz 4, 0x114(30)
    mr 3, 30
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    mr 31, 3
L_801E3B10:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

