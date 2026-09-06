.section extab, "a"
.balign 4
.global etb_80006A3C
etb_80006A3C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006A3C, 8

.section extabindex, "a"
.balign 4
.global eti_800132E8
eti_800132E8:
    .4byte fn_80139C84
    .4byte 0x00000040
    .4byte etb_80006A3C
.size eti_800132E8, 12

# fn_80139C84(this) - always calls fn_8043DC98(lbl_8053AED0), then
# conditionally fn_8044B8EC() if this->0x2c is nonzero (neither
# decompiled yet). Same lbl_8053AED0 global as fn_80139C5C/the Scene
# Manager's destructor.
#
# Attempted real-C++ promotion: retail reuses the dead `this` register
# (r31) for the reload of this->0x2c instead of allocating a fresh
# register - same "dead-register reuse" wall as fn_8013AC54/
# fn_80134FE0. Reverted to raw asm.
.text
.balign 4
.global fn_80139C84

fn_80139C84:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043DC98
    lwz 3, 0x2c(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80139CB0
    bl fn_8044B8EC
L_80139CB0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
