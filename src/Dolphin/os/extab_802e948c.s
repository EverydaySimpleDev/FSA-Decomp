# fn_802E948C - ENDM: set turn-target helper (0x68)
# Takes a target angle (f1); if it already equals this->0x270, returns 0.
# Otherwise computes the signed angular delta and stores a normalized
# per-tick turn rate at this->0x278 (sign chosen to take the shorter turn
# direction), stores the new target at this->0x274, and returns 1.
.section extab, "a"
.balign 4
.global etb_8000D144
etb_8000D144:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D144, 8

.section extabindex, "a"
.balign 4
.global eti_8001C318
eti_8001C318:
    .4byte fn_802E948C
    .4byte 0x00000068
    .4byte etb_8000D144
.size eti_8001C318, 12

.text
.balign 4
.global fn_802E948C

fn_802E948C:
    stwu 1, -0x10(1)
    lfs 3, 0x270(3)
    fcmpu cr0, 3, 1
    .4byte 0x4082000C # bne .L_802E94A4
    li 3, 0x0
    .4byte 0x4800004C # b .L_802E94EC
L_802E94A4:
    xoris 4, 4, 0x8000
    lis 0, 0x4330
    stw 4, 0xc(1)
    fsubs 0, 3, 1
    .4byte 0xC842E350 # lfd f2, lbl_805412F0@sda21(r0)
    fcmpo cr0, 3, 1
    stw 0, 0x8(1)
    fabs 3, 0
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fdivs 0, 3, 0
    .4byte 0x4080000C # bge .L_802E94DC
    stfs 0, 0x278(3)
    .4byte 0x4800000C # b .L_802E94E4
L_802E94DC:
    fneg 0, 0
    stfs 0, 0x278(3)
L_802E94E4:
    stfs 1, 0x274(3)
    li 3, 0x1
L_802E94EC:
    addi 1, 1, 0x10
    blr

