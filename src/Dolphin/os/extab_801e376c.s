/*
 * Cutscene/camera-cue actor (vtable lbl_804A4958). Per-frame "move
 * toward and arrive at my trigger box" step, gated by a state-range
 * check, flag bits 18/19, and a "moved far" velocity delta (this->
 * 0x80-0x8c) exceeding a threshold. Computes the same box as
 * fn_801E3618 (room-config or stored-rect variant), clamps this->0xc/
 * 0x10 (position) into it via the confirmed fn_801CC29C rect-clamp
 * helper, then normalizes the remaining delta to a max-step speed
 * (lbl_80539D44) using an frsqrte-based normalize; on arrival (delta
 * within a small epsilon), commits a zero/settle velocity into
 * this->0x264/0x268/0x26c.
 */
.section extab, "a"
.balign 4
.global etb_80008A10
etb_80008A10:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008A10, 8

.section extabindex, "a"
.balign 4
.global eti_80015F4C
eti_80015F4C:
    .4byte fn_801E376C
    .4byte 0x000002E0
    .4byte etb_80008A10
.size eti_80015F4C, 12

.text
.balign 4
.global fn_801E376C

fn_801E376C:
    stwu 1, -0x50(1)
    mflr 0
    li 4, 0x1
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    li 3, 0x0
    stw 30, 0x48(1)
    lwz 0, 0x248(31)
    cmpwi 0, 0x9
    .4byte 0x4080001C # bge .L_801E37B0
    cmpwi 0, 0x5
    .4byte 0x4182002C # beq .L_801E37C8
    .4byte 0x40800024 # bge .L_801E37C4
    cmpwi 0, 0x0
    .4byte 0x4080001C # bge .L_801E37C4
    .4byte 0x4800001C # b .L_801E37C8
L_801E37B0:
    cmpwi 0, 0x1b
    .4byte 0x40800014 # bge .L_801E37C8
    cmpwi 0, 0x15
    .4byte 0x40800008 # bge .L_801E37C4
    .4byte 0x48000008 # b .L_801E37C8
L_801E37C4:
    li 4, 0x0
L_801E37C8:
    clrlwi. 0, 4, 24
    .4byte 0x41820268 # beq .L_801E3A34
    lwz 4, 0x230(31)
    rlwinm. 0, 4, 0, 19, 19
    .4byte 0x4082025C # bne .L_801E3A34
    rlwinm. 0, 4, 0, 18, 18
    .4byte 0x40820254 # bne .L_801E3A34
    lfs 1, 0x88(31)
    lfs 0, 0x80(31)
    .4byte 0xC042C590 # lfs f2, lbl_8053F530@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081023C # ble .L_801E3A34
    lfs 1, 0x8c(31)
    lfs 0, 0x84(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810228 # ble .L_801E3A34
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_801E3878
    lbz 4, 0x5e9(31)
    lis 3, 0x4330
    lbz 0, 0x5e8(31)
    stw 4, 0x34(1)
    .4byte 0xC822C588 # lfd f1, lbl_8053F528@sda21(r0)
    stw 3, 0x30(1)
    .4byte 0xC042C570 # lfs f2, lbl_8053F510@sda21(r0)
    lfd 0, 0x30(1)
    stw 0, 0x3c(1)
    fsubs 0, 0, 1
    lfs 4, 0x5e4(31)
    lfs 5, 0x5e0(31)
    stw 3, 0x38(1)
    fmadds 3, 2, 0, 4
    lfd 0, 0x38(1)
    stfs 5, 0x20(1)
    fsubs 0, 0, 1
    stfs 4, 0x24(1)
    fmadds 0, 2, 0, 5
    stfs 3, 0x2c(1)
    stfs 0, 0x28(1)
    .4byte 0x480000A8 # b .L_801E391C
L_801E3878:
    lwz 30, 0x5d8(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801E3890
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801E3894
L_801E3890:
    addi 3, 3, 0xdc
L_801E3894:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820044 # beq .L_801E38E0
    lfs 1, 0xc(3)
    .4byte 0xC002C57C # lfs f0, lbl_8053F51C@sda21(r0)
    lfs 2, 0x8(3)
    .4byte 0xC062C574 # lfs f3, lbl_8053F514@sda21(r0)
    fsubs 5, 1, 0
    lfs 0, 0x0(3)
    lfs 1, 0x4(3)
    fsubs 4, 2, 3
    .4byte 0xC042C578 # lfs f2, lbl_8053F518@sda21(r0)
    fadds 0, 3, 0
    stfs 5, 0x2c(1)
    fadds 1, 2, 1
    stfs 0, 0x20(1)
    stfs 1, 0x24(1)
    stfs 4, 0x28(1)
    .4byte 0x48000040 # b .L_801E391C
L_801E38E0:
    lfs 1, 0xc(3)
    .4byte 0xC002C584 # lfs f0, lbl_8053F524@sda21(r0)
    lfs 2, 0x8(3)
    .4byte 0xC062C578 # lfs f3, lbl_8053F518@sda21(r0)
    fsubs 5, 1, 0
    lfs 0, 0x0(3)
    lfs 1, 0x4(3)
    fsubs 4, 2, 3
    .4byte 0xC042C580 # lfs f2, lbl_8053F520@sda21(r0)
    fadds 0, 3, 0
    stfs 5, 0x2c(1)
    fadds 1, 2, 1
    stfs 0, 0x20(1)
    stfs 1, 0x24(1)
    stfs 4, 0x28(1)
L_801E391C:
    lfs 1, 0x80(31)
    addi 3, 1, 0x20
    addi 4, 1, 0x10
    addi 5, 1, 0x8
    stfs 1, 0x10(1)
    lfs 4, 0x84(31)
    stfs 4, 0x14(1)
    lfs 2, 0x88(31)
    stfs 2, 0x18(1)
    lfs 3, 0x8c(31)
    stfs 3, 0x1c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x10(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x18(1)
    fadds 0, 3, 2
    stfs 1, 0x14(1)
    stfs 0, 0x1c(1)
    bl fn_801CC29C
    lfs 1, 0xc(31)
    addic. 0, 31, 0x264
    lfs 0, 0x8(1)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    lfs 1, 0x10(31)
    lfs 0, 0xc(1)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x41820098 # beq .L_801E3A30
    lfs 1, 0x8(1)
    lis 4, lbl_80539D44@ha
    lfs 0, 0xc(1)
    fmuls 3, 1, 1
    .4byte 0xC022C594 # lfs f1, lbl_8053F534@sda21(r0)
    fmuls 2, 0, 0
    lfs 0, lbl_80539D44@l(4)
    fmuls 0, 1, 0
    fadds 4, 3, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820050 # beq .L_801E3A18
    .4byte 0xC002C590 # lfs f0, lbl_8053F530@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801E39E0
    .4byte 0x48000024 # b .L_801E3A00
L_801E39E0:
    frsqrte 3, 4
    .4byte 0xC042C598 # lfs f2, lbl_8053F538@sda21(r0)
    .4byte 0xC002C59C # lfs f0, lbl_8053F53C@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_801E3A00:
    lfs 1, 0x8(1)
    lfs 0, 0xc(1)
    fmuls 1, 1, 4
    fmuls 0, 0, 4
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_801E3A18:
    lfs 2, 0xc(1)
    lfs 1, 0x8(1)
    .4byte 0xC002C590 # lfs f0, lbl_8053F530@sda21(r0)
    stfs 1, 0x264(31)
    stfs 2, 0x268(31)
    stfs 0, 0x26c(31)
L_801E3A30:
    clrlwi 3, 3, 24
L_801E3A34:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

