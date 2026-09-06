# fn_801AAE88 - GOMA cluster, 2/7. Vtable slot 5 - the real per-frame
# update() dispatcher. Reads state at this->0x254 and routes to one of
# GOMA's two big per-phase state-machine bodies: fn_801AB6A8 (early
# states: 0, or default-fallthrough) or fn_801AAF44 (states 1-3ish).
# After dispatch, decrements 3 shared cooldown timers (0x234/0x238/0x23c)
# on both this AND a nested substruct at this+8 (an embedded second
# instance of the same timer group, consistent with GOMA having 2 legs/
# eyes tracked via near-identical substructs).
.section extab, "a"
.balign 4
.global etb_80007AB4
etb_80007AB4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007AB4, 8

.section extabindex, "a"
.balign 4
.global eti_8001498C
eti_8001498C:
    .4byte fn_801AAE88
    .4byte 0x000000BC
    .4byte etb_80007AB4
.size eti_8001498C, 12

.text
.balign 4
.global fn_801AAE88

fn_801AAE88:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x254(3)
    cmpwi 0, 0x2
    .4byte 0x41820024 # beq .L_801AAEC8
    .4byte 0x40800014 # bge .L_801AAEBC
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801AAEC8
    .4byte 0x40800020 # bge .L_801AAED4
    .4byte 0x48000024 # b .L_801AAEDC
L_801AAEBC:
    cmpwi 0, 0x4
    .4byte 0x4080001C # bge .L_801AAEDC
    .4byte 0x48000010 # b .L_801AAED4
L_801AAEC8:
    mr 3, 31
    bl fn_801AB6A8
    .4byte 0x4800000C # b .L_801AAEDC
L_801AAED4:
    mr 3, 31
    bl fn_801AAF44
L_801AAEDC:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801AAEF0
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_801AAEF0:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801AAF04
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801AAF04:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801AAF1C
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_801AAF1C:
    lwz 3, 0x238(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801AAF30
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_801AAF30:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

