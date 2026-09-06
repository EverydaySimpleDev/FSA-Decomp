# fn_800F7CC8: the RUPY (rupee pickup) class's constructor - initializes
# the same field set the rest of the class uses (this->0x230/0x235/0x238/
# 0x23c/0x240/0x244/0x24c and the float pairs this->0x60/64/68/6c/80/84/88/
# 8c already seen in OIWA's constructors) - see
# project_fsa_extab_bug_resolved.md for the cluster overview. Derives the
# initial phase from a masked slice of this->0x90 (the universal spawn-
# parameter field), then conditionally overrides it based on two more bits
# of the same field: bit 23 forces phase=1 outright, and a virtual call
# (vtable slot 0x3c/index 15) can additionally force phase=4 if it returns
# nonzero; bit 21 resets this->0x23c/0x14 to a table-driven default. This
# is the third confirmed OIWA/RUPY-style constructor to derive its initial
# phase dynamically from spawn-parameter bits rather than hardcoding it.
.section extab, "a"
.balign 4
.global etb_80005740
etb_80005740:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005740, 8

.section extabindex, "a"
.balign 4
.global eti_80011A10
eti_80011A10:
    .4byte fn_800F7CC8
    .4byte 0x000000E0
    .4byte etb_80005740
.size eti_80011A10, 12

.text
.balign 4
.global fn_800F7CC8

fn_800F7CC8:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0428FF8 # lfs f2, lbl_8053BF98@sda21(r0)
    li 4, 0x0
    stw 0, 0x14(1)
    .4byte 0xC0228FC8 # lfs f1, lbl_8053BF68@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC0028FA8 # lfs f0, lbl_8053BF48@sda21(r0)
    stfs 2, 0x60(3)
    li 3, 0x1
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stb 4, 0x235(31)
    stw 4, 0x240(31)
    stw 4, 0x230(31)
    stw 4, 0x244(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    stb 0, 0x234(31)
    stb 3, 0x23c(31)
    stw 4, 0x238(31)
    stfs 0, 0x264(31)
    stfs 0, 0x260(31)
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x41820008 # beq .L_800F7D4C
    stw 3, 0x230(31)
L_800F7D4C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x4182000C # beq .L_800F7D70
    li 0, 0x4
    stw 0, 0x230(31)
L_800F7D70:
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x41820014 # beq .L_800F7D8C
    li 0, 0x0
    .4byte 0xC0028FFC # lfs f0, lbl_8053BF9C@sda21(r0)
    stb 0, 0x23c(31)
    stfs 0, 0x14(31)
L_800F7D8C:
    li 0, 0x0
    stw 0, 0x24c(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

