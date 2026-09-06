.section extab, "a"
.balign 4
.global etb_80006EFC
etb_80006EFC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006EFC, 8

.section extabindex, "a"
.balign 4
.global eti_80013A08
eti_80013A08:
    .4byte fn_80157C68
    .4byte 0x000001B8
    .4byte etb_80006EFC
.size eti_80013A08, 12

# fn_80157C68 - SLR2's ("Bow Soldier") real vtable slot-21 override, the
# SAME "face/turn toward target then commit to attack" pattern already
# confirmed for SLR1 (see [[project_fsa_hino_slr1_full_depth]]) - nearly
# byte-identical structure. Bails true immediately if already in state
# 0xd; bails false if a cooldown timer (this->0x14) exceeds a threshold;
# otherwise integrates position via the confirmed per-variant wave-table
# phase lookup (fn_801F6874(this->0x98) -> lbl_8052EBC0), computes facing
# via fn_8022461C, and on a matching facing value (or a special "sensed
# via fn_802DE9A0" case that also sets a byte flag at this->0x2a8) resets
# state to 0xc (SLR2's own "commit" state - one less than SLR1's 0xd,
# consistent with each soldier type having its own numbered attack state)
# with a fresh this->0x108=200/this->0x254=10000 countdown pair.
.text
.balign 4
.global fn_80157C68

fn_80157C68:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0xd
    .4byte 0x4082000C # bne .L_80157C90
    li 3, 0x1
    .4byte 0x48000180 # b .L_80157E0C
L_80157C90:
    lfs 1, 0x14(31)
    .4byte 0xC002A438 # lfs f0, lbl_8053D3D8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80157CA8
    li 3, 0x0
    .4byte 0x48000168 # b .L_80157E0C
L_80157CA8:
    lfs 0, 0xc(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    .4byte 0xC822A468 # lfd f1, lbl_8053D408@sda21(r0)
    stfs 0, 0x2b8(31)
    lfs 0, 0x10(31)
    stw 0, 0x20(1)
    stfs 0, 0x2bc(31)
    lfs 0, 0x14(31)
    stfs 0, 0x2c0(31)
    lfs 0, 0x2b8(31)
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    rlwinm 0, 0, 0, 16, 28
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    stfs 0, 0x2b8(31)
    lfs 0, 0x2bc(31)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    rlwinm 0, 0, 0, 16, 28
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 1
    stfs 0, 0x2bc(31)
    lwz 3, 0x98(31)
    bl fn_801F6874
    extsh 0, 3
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC042A3E8 # lfs f2, lbl_8053D388@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    lfs 0, 0x2b8(31)
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x2b8(31)
    lwz 3, 0x98(31)
    bl fn_801F6874
    extsh 0, 3
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042A3E8 # lfs f2, lbl_8053D388@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x2bc(31)
    add 3, 3, 0
    lfs 1, 0x4(3)
    addi 3, 31, 0x2b8
    fmadds 0, 2, 1, 0
    stfs 0, 0x2bc(31)
    lwz 4, 0x4(31)
    bl fn_8022461C
    clrlwi 3, 3, 16
    subi 0, 3, 0x2
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_80157DA0
    cmpwi 3, 0xe
    .4byte 0x4082006C # bne .L_80157E08
L_80157DA0:
    cmpwi 3, 0xe
    .4byte 0x4082001C # bne .L_80157DC0
    bl fn_802DE9A0
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80157DC0
    li 0, 0x1
    stb 0, 0x2a8(31)
L_80157DC0:
    li 3, 0x0
    .4byte 0xC002A3D8 # lfs f0, lbl_8053D378@sda21(r0)
    stw 3, 0xd8(31)
    li 5, 0x2710
    li 4, 0xc
    li 0, 0xc8
    stw 3, 0xdc(31)
    li 3, 0x1
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 0, 0x44(31)
    stfs 0, 0x2ac(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b4(31)
    stw 5, 0x254(31)
    stw 4, 0x230(31)
    stw 0, 0x108(31)
    .4byte 0x48000008 # b .L_80157E0C
L_80157E08:
    li 3, 0x0
L_80157E0C:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

