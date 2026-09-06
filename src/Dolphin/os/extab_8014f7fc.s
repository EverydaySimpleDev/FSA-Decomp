.section extab, "a"
.balign 4
.global etb_80006E14
etb_80006E14:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_80006E14, 8

.section extabindex, "a"
.balign 4
.global eti_800138AC
eti_800138AC:
    .4byte fn_8014F7FC
    .4byte 0x00000200
    .4byte etb_80006E14
.size eti_800138AC, 12

# fn_8014F7FC - HINO's ("Hinox") real destructor. Extended shape (not the
# minimal shape seen elsewhere): before rebinding the vtable and calling
# the base Actor destructor, it tears down TWO independently-tracked
# effect/sound handles. First, if this->0x254 (a "positioned, tracked"
# handle - same convention as the player-registry's positioned interaction
# state) is active, it looks up the handle via the shared registry
# (SpatialRegistry_GetBase/fn_801F666C), re-homes it to Hino's own position via
# fn_8023E724+fn_801F2618, optionally applies a PRNG-jittered angle offset
# from the shared wave table (lbl_8052EBC0, same table TKTA/GNON use) when
# fn_801F2618 reports Hino is "moving," then releases it via fn_8022F784.
# Second, if this->0x250 (a simpler, unposition-tracked handle) is active,
# it looks the handle up the same way and releases it via fn_801F0E34 with
# a canned "off" transform - this is the SAME cleanup block found in slot
# 17's override (fn_8014F76C), just inlined here too so it also runs on
# teardown. After both releases: null-check, rebind vtable (lbl_8049F9B4),
# base Actor destructor (dtor_801F593C), then the shared free helper
# (dtor_80084580) if the caller requests it.
.text
.balign 4
.global fn_8014F7FC

fn_8014F7FC:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x41820190 # beq .L_8014F9C4
    lis 3, lbl_8049F9B4@ha
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    addi 0, 3, lbl_8049F9B4@l
    stw 0, 0x0(30)
    stfs 1, 0x10(1)
    stfs 1, 0xc(1)
    stfs 1, 0x8(1)
    lwz 0, 0x98(30)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8014F874
    .4byte 0xC002A240 # lfs f0, lbl_8053D1E0@sda21(r0)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 1, 0x10(1)
    .4byte 0x48000014 # b .L_8014F884
L_8014F874:
    .4byte 0xC002A244 # lfs f0, lbl_8053D1E4@sda21(r0)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 1, 0x10(1)
L_8014F884:
    lwz 3, 0x254(30)
    cmpwi 3, 0x0
    .4byte 0x418000BC # blt .L_8014F948
    lfs 31, 0xc(30)
    lfs 30, 0x10(30)
    lfs 29, 0x14(30)
    bl fn_8023E724
    lfs 0, 0x0(3)
    li 4, 0x0
    li 5, 0x0
    stfs 0, 0xc(30)
    lfs 0, 0x4(3)
    stfs 0, 0x10(30)
    lfs 0, 0x8(3)
    mr 3, 30
    stfs 0, 0x14(30)
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820060 # beq .L_8014F92C
    lfs 1, 0xc(30)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(30)
    addi 3, 3, lbl_80534C00@l
    fsubs 1, 31, 1
    fsubs 2, 30, 0
    bl fn_80093340
    .4byte 0xC002A248 # lfs f0, lbl_8053D1E8@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042A24C # lfs f2, lbl_8053D1EC@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfsx 1, 4, 0
    lfs 0, 0x4(3)
    fmuls 1, 2, 1
    fmuls 0, 2, 0
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_8014F92C:
    stfs 31, 0xc(30)
    addi 5, 1, 0x8
    stfs 30, 0x10(30)
    stfs 29, 0x14(30)
    lwz 3, 0x254(30)
    lwz 4, 0x198(30)
    bl fn_8022F784
L_8014F948:
    lwz 29, 0x250(30)
    cmpwi 29, 0x0
    .4byte 0x41800058 # blt .L_8014F9A8
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_8014F9A8
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    lis 4, 0x4
    .4byte 0xC002A24C # lfs f0, lbl_8053D1EC@sda21(r0)
    li 0, -0x1
    stfs 1, 0x18(1)
    addi 4, 4, 0x8
    li 5, 0x0
    stfs 1, 0x14(1)
    psq_l 2, 0x14(1), 0, 0
    stfs 1, 0x1c(1)
    psq_st 2, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    mr 3, 30
    stfs 0, 0x1c(1)
    stw 0, 0x250(30)
    bl fn_801F0E34
L_8014F9A8:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8014F9C4
    mr 3, 30
    bl dtor_80084580
L_8014F9C4:
    mr 3, 30
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 0, 0x74(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

