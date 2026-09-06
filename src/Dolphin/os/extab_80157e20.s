.section extab, "a"
.balign 4
.global etb_80006F04
etb_80006F04:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006F04, 8

.section extabindex, "a"
.balign 4
.global eti_80013A14
eti_80013A14:
    .4byte fn_80157E20
    .4byte 0x000000B0
    .4byte etb_80006F04
.size eti_80013A14, 12

# fn_80157E20 - SLR2's ("Bow Soldier") real vtable slot-17 override
# (same slot HINO/SLR1 override, a different body each time - confirmed
# per-actor, not shared). A CONDITIONAL early version of the destructor's
# own cleanup: unconditionally releases this->0x284 (positioned effect,
# same transform as the dtor), then - ONLY if this->0x108 (aggro/attention
# countdown) has reached 0 - also releases this->0x280 (ref-count
# decrement). Reads as "stop my active visual effect always, but only
# drop my group-membership slot once I'm done being aggro'd."
.text
.balign 4
.global fn_80157E20

fn_80157E20:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 31, 0x284(3)
    cmpwi 31, 0x0
    .4byte 0x41800040 # blt .L_80157E80
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_80157E78
    .4byte 0xC022A3D8 # lfs f1, lbl_8053D378@sda21(r0)
    .4byte 0xC002A3FC # lfs f0, lbl_8053D39C@sda21(r0)
    stfs 1, 0x8(1)
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_80157E78:
    li 0, -0x1
    stw 0, 0x284(30)
L_80157E80:
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x41810030 # bgt .L_80157EB8
    lwz 31, 0x280(30)
    cmpwi 31, 0x0
    .4byte 0x41800024 # blt .L_80157EB8
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80157EB8
    lwz 4, 0x290(3)
    subi 0, 4, 0x1
    stw 0, 0x290(3)
L_80157EB8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

