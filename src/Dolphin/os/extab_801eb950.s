.section extab, "a"
.balign 4
.global etb_80008C88
etb_80008C88:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008C88, 8

.section extabindex, "a"
.balign 4
.global eti_800162C4
eti_800162C4:
    .4byte fn_801EB950
    .4byte 0x000000C4
    .4byte etb_80008C88
.size eti_800162C4, 12

# fn_801EB950 - a richer "physics/motion parameter block" initializer:
# takes an explicit target address (like fn_801D267C's blend-timer, NOT
# an inheritance base) and fills ~0x30 bytes of float defaults (radius/
# speed/accel-looking constants from small-data globals), a couple of
# int fields (including a literal 0x600), and one PRNG-jittered field at
# +0x5e via the confirmed fn_801CD664 helper - then zeroes a further
# block at +0x34..+0x4c. Used by TUGF (embedded at its own +0x230, i.e.
# effectively as TUGF's entire extra state) and by the DM-family cluster
# (see extab_80112070.s etc.) as one embedded sub-object among several.
.text
.balign 4
.global fn_801EB950

fn_801EB950:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0C2C6D8 # lfs f6, lbl_8053F678@sda21(r0)
    li 5, 0x1
    stw 0, 0x14(1)
    li 4, 0x600
    .4byte 0xC0A2C6FC # lfs f5, lbl_8053F69C@sda21(r0)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC082C700 # lfs f4, lbl_8053F6A0@sda21(r0)
    stfs 6, 0x0(3)
    .4byte 0xC062C704 # lfs f3, lbl_8053F6A4@sda21(r0)
    stfs 6, 0x4(3)
    lis 3, 0x1
    .4byte 0xC042C708 # lfs f2, lbl_8053F6A8@sda21(r0)
    stfs 6, 0x8(31)
    .4byte 0xC022C70C # lfs f1, lbl_8053F6AC@sda21(r0)
    stw 5, 0xc(31)
    .4byte 0xC002C710 # lfs f0, lbl_8053F6B0@sda21(r0)
    stw 5, 0x10(31)
    stfs 5, 0x14(31)
    stfs 4, 0x18(31)
    stfs 3, 0x1c(31)
    stfs 2, 0x20(31)
    stfs 1, 0x24(31)
    stfs 0, 0x28(31)
    stfs 1, 0x2c(31)
    sth 4, 0x30(31)
    stw 0, 0x50(31)
    stfs 6, 0x54(31)
    stfs 6, 0x58(31)
    stb 0, 0x5c(31)
    bl fn_801CD664
    sth 3, 0x5e(31)
    li 0, 0x0
    mr 3, 31
    stw 0, 0x34(31)
    stw 0, 0x38(31)
    stw 0, 0x3c(31)
    stw 0, 0x40(31)
    stw 0, 0x44(31)
    stw 0, 0x48(31)
    stw 0, 0x4c(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

