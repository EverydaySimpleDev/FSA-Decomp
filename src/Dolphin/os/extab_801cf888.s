.section extab, "a"
.balign 4
.global etb_80008420
etb_80008420:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_80008420, 8

.section extabindex, "a"
.balign 4
.global eti_80015754
eti_80015754:
    .4byte fn_801CF888
    .4byte 0x000001E8
    .4byte etb_80008420
.size eti_80015754, 12

.text
.balign 4
.global fn_801CF888

# fn_801CF888(this, pointA, pointB, roomID) - tries up to 3 candidate
# lines between pointA and pointB via fn_801CFA70 (extab_801cfa70.s):
# the direct line first, then (only if the direct line's per-sample
# virtual test never fired) two lines offset perpendicular to the direct
# one by a fixed rotation of the direction vector (the confirmed compass
# table lbl_8052EBC0, entries 0x3000/0x3004), scaled by a fixed offset
# distance (lbl_8053EFF4). Returns as soon as any candidate's
# fn_801CFA70 call reports a hit (short-circuit OR across up to 3
# tries) - see fn_801CFA70's banner for what "a hit" means; the exact
# real-world purpose of the vtable+0x4c virtual test it ultimately
# drives (obstruction vs. visibility) is not pinned down this session.
fn_801CF888:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    mr 28, 3
    mr 29, 4
    mr 30, 5
    mr 31, 6
    bl fn_801CFA70
    clrlwi. 0, 3, 24
    .4byte 0x40820174 # bne .L_801CFA40
    lfs 1, 0x4(30)
    lis 4, lbl_80539D44@ha
    lfs 0, 0x4(29)
    lfs 2, 0x0(30)
    fsubs 4, 1, 0
    lfs 0, 0x0(29)
    .4byte 0xC022C040 # lfs f1, lbl_8053EFE0@sda21(r0)
    fsubs 7, 2, 0
    lfs 0, lbl_80539D44@l(4)
    fmuls 2, 4, 4
    fmuls 0, 1, 0
    fmadds 5, 7, 7, 2
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x40820130 # bne .L_801CFA40
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801CF95C
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801CF934
    .4byte 0x48000024 # b .L_801CF954
L_801CF934:
    frsqrte 3, 5
    .4byte 0xC042C044 # lfs f2, lbl_8053EFE4@sda21(r0)
    .4byte 0xC002C048 # lfs f0, lbl_8053EFE8@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 5, 1, 0
    fmuls 5, 2, 0
L_801CF954:
    fmuls 7, 7, 5
    fmuls 4, 4, 5
L_801CF95C:
    lis 3, lbl_8052EBC0@ha
    lfs 3, 0x0(29)
    addi 4, 3, lbl_8052EBC0@l
    lfs 2, 0x4(29)
    lfs 8, 0x3004(4)
    mr 3, 28
    lfs 9, 0x3000(4)
    mr 6, 31
    fmuls 5, 4, 8
    lfs 1, 0x0(30)
    fmuls 6, 4, 9
    lfs 0, 0x4(30)
    .4byte 0xC082C054 # lfs f4, lbl_8053EFF4@sda21(r0)
    addi 4, 1, 0x10
    fmsubs 31, 7, 8, 6
    stfs 3, 0x10(1)
    fmadds 30, 7, 9, 5
    addi 5, 1, 0x8
    stfs 2, 0x14(1)
    fmuls 31, 31, 4
    fmuls 30, 30, 4
    stfs 1, 0x8(1)
    fadds 3, 3, 31
    stfs 0, 0xc(1)
    fadds 2, 2, 30
    fadds 1, 1, 31
    fadds 0, 0, 30
    stfs 3, 0x10(1)
    stfs 2, 0x14(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    bl fn_801CFA70
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_801CFA40
    fneg 6, 31
    lfs 1, 0x0(29)
    lfs 5, 0x0(30)
    fneg 7, 30
    lfs 0, 0x4(29)
    mr 3, 28
    lfs 4, 0x4(30)
    fadds 3, 1, 6
    stfs 1, 0x10(1)
    fadds 2, 0, 7
    fadds 1, 5, 6
    mr 6, 31
    stfs 0, 0x14(1)
    fadds 0, 4, 7
    addi 4, 1, 0x10
    stfs 5, 0x8(1)
    addi 5, 1, 0x8
    stfs 4, 0xc(1)
    stfs 3, 0x10(1)
    stfs 2, 0x14(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    bl fn_801CFA70
L_801CFA40:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 0, 0x54(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x50
    blr
