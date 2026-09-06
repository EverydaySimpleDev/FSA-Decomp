# fn_801F11B4 - universal shared-Actor default virtual (part of the
# family alongside fn_801F172C's room-boundary/wall-push validator).
# Checks if position has moved past a threshold (lbl_8053F740) since
# last sync; if so, calls this object's own vtable slot 0x4c (a virtual
# predicate) and, if true, snaps a "last known position" pair (0xc/0x10)
# to the current position (0x18/0x1c), then computes a facing-angle
# offset via fn_801F6874 + the shared sine/cosine wave table
# lbl_8052EBC0. Finally queries the per-room config record
# (GetRoomConfigRecord) to pick one of two boundary-rectangle tables (room<8)
# and, if the current position falls inside it, mirrors a related
# vector pair (0x4/0xc-0x20 range) via psq_l/psq_st. A shared
# position-clamp/reflect utility inherited unmodified by most actors.
.section extab, "a"
.balign 4
.global etb_80008DBC
etb_80008DBC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008DBC, 8

.section extabindex, "a"
.balign 4
.global eti_80016474
eti_80016474:
    .4byte fn_801F11B4
    .4byte 0x00000178
    .4byte etb_80008DBC
.size eti_80016474, 12

.text
.balign 4
.global fn_801F11B4

fn_801F11B4:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042C7A0 # lfs f2, lbl_8053F740@sda21(r0)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    lfs 1, 0x88(3)
    lfs 0, 0x80(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081012C # ble .L_801F1310
    lfs 1, 0x8c(30)
    lfs 0, 0x84(30)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810118 # ble .L_801F1310
    lwz 12, 0x0(3)
    addi 5, 30, 0xc
    lwz 4, 0x4(30)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418200F8 # beq .L_801F1310
    lfs 0, 0x18(30)
    stfs 0, 0xc(30)
    lfs 0, 0x1c(30)
    stfs 0, 0x10(30)
    lwz 3, 0x98(30)
    bl fn_801F6874
    extsh 4, 3
    lis 3, lbl_8052EBC0@ha
    addi 0, 4, -0x8000
    .4byte 0xC022C804 # lfs f1, lbl_8053F7A4@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    lfs 0, 0xc(30)
    rlwinm 0, 0, 30, 18, 28
    lfsx 3, 3, 0
    add 3, 3, 0
    lfs 2, 0x4(3)
    fmuls 3, 3, 1
    fmuls 1, 2, 1
    fadds 0, 0, 3
    stfs 0, 0xc(30)
    lfs 0, 0x10(30)
    fadds 0, 0, 1
    stfs 0, 0x10(30)
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801F1290
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801F1294
L_801F1290:
    addi 3, 3, 0xdc
L_801F1294:
    lfs 2, 0xc(30)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_801F12DC
    lfs 1, 0x10(30)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801F12DC
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_801F12DC
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801F12DC
    li 0, 0x1
L_801F12DC:
    clrlwi. 0, 0, 24
    .4byte 0x4082002C # bne .L_801F130C
    lwz 0, 0x8(30)
    stw 0, 0x4(30)
    psq_l 1, 0x24(30), 0, 0
    lfs 0, 0x2c(30)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    psq_l 1, 0x24(30), 0, 0
    lfs 0, 0x2c(30)
    psq_st 1, 0x18(30), 0, 0
    stfs 0, 0x20(30)
L_801F130C:
    li 31, 0x1
L_801F1310:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

