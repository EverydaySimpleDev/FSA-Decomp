.section extab, "a"
.balign 4
.global etb_80006ED4
etb_80006ED4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006ED4, 8

.section extabindex, "a"
.balign 4
.global eti_800139CC
eti_800139CC:
    .4byte fn_80154C30
    .4byte 0x000004FC
    .4byte etb_80006ED4
.size eti_800139CC, 12

# fn_80154C30 - TKTA's ("Tektite") real update(), survey-level (85
# instructions). Opens by checking the raw this->0x90 Type value against
# 2 and 3 (2 = "Red hidden in bush" per FSALib; 3 is undocumented) for a
# SPECIAL path: if this->0x254 (a phase/timer field) equals the sentinel
# 0xffff, computes a facing-independent delta via GetRoomConfigRecord/
# fn_802DCD0C (a real-time-gated helper pair already seen in GNON's own
# update(), see project_fsa_gnon_actor_progress.md) combined with
# fn_80226998 (a distance/delta helper also seen in KETH's slot-19
# override); otherwise compares a freshly-computed fn_80226998 result
# against the stored this->0x254 to decide whether to re-trigger. All
# OTHER Types fall through to a default path (not traced in as much
# detail) using the CONFIRMED fn_801F3D94 validity gate, fn_801F2B7C
# temporary-bounding-box collision query, fn_801F71A4 position
# smoothing, and fn_8013CC50 effect/sound-create primitive - the same
# shared subsystems KETH/ZLDA/BZBR all use. Reads as "hidden/buried
# Tektites wait for the player to get close before popping out; normal
# Tektites just hop on their own timer using the standard actor
# subsystems."
.text
.balign 4
.global fn_80154C30

fn_80154C30:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80154C58
    cmplwi 0, 0x3
    .4byte 0x4082007C # bne .L_80154CD0
L_80154C58:
    lhz 0, 0x254(31)
    cmplwi 0, 0xffff
    .4byte 0x40820038 # bne .L_80154C98
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x408204A8 # bne .L_80155118
    lwz 4, 0x4(31)
    addi 3, 1, 0x28
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x28(1)
    stfs 1, 0x2c(1)
    bl fn_80226998
    sth 3, 0x254(31)
    .4byte 0x48000484 # b .L_80155118
L_80154C98:
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x20(1)
    stfs 1, 0x24(1)
    bl fn_80226998
    lhz 0, 0x254(31)
    clrlwi 3, 3, 16
    cmplw 0, 3
    .4byte 0x41820458 # beq .L_80155118
    lwz 0, 0x90(31)
    clrlwi 0, 0, 31
    stw 0, 0x90(31)
L_80154CD0:
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_80154CF8
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000424 # b .L_80155118
L_80154CF8:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_80154D30
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_80154D30
    li 0, 0x0
    mr 3, 31
    stw 0, 0x238(31)
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x480003EC # b .L_80155118
L_80154D30:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80154D44
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_80154D44:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80154D58
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_80154D58:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80154D6C
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_80154D6C:
    lfs 1, 0x258(31)
    addi 3, 31, 0x3c
    .4byte 0xC042A398 # lfs f2, lbl_8053D338@sda21(r0)
    .4byte 0xC062A394 # lfs f3, lbl_8053D334@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x25c(31)
    addi 3, 31, 0x40
    .4byte 0xC042A398 # lfs f2, lbl_8053D338@sda21(r0)
    .4byte 0xC062A394 # lfs f3, lbl_8053D334@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2B7C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x418201A4 # beq .L_80154F84
    .4byte 0x40800334 # bge .L_80155118
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80154DF4
    .4byte 0x48000328 # b .L_80155118
L_80154DF4:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820158 # bne .L_80154F54
    li 0, 0x0
    sth 0, 0x8(1)
    stw 0, 0x1c(1)
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 31
    .4byte 0x40820010 # bne .L_80154E24
    .4byte 0xC002A39C # lfs f0, lbl_8053D33C@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x4800000C # b .L_80154E2C
L_80154E24:
    .4byte 0xC002A3A0 # lfs f0, lbl_8053D340@sda21(r0)
    stfs 0, 0x44(31)
L_80154E2C:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC042A394 # lfs f2, lbl_8053D334@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC002A3A4 # lfs f0, lbl_8053D344@sda21(r0)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x4080002C # bge .L_80154E9C
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0x1c
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    .4byte 0x4800004C # b .L_80154EE4
L_80154E9C:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC022A3A8 # lfs f1, lbl_8053D348@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 0, 0x44(1)
    sth 0, 0x8(1)
L_80154EE4:
    lhz 0, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022A3AC # lfs f1, lbl_8053D34C@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x258(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x25c(31)
    lwz 0, 0x1c(1)
    cmpwi 0, -0x1
    .4byte 0x40820014 # bne .L_80154F38
    .4byte 0xC002A390 # lfs f0, lbl_8053D330@sda21(r0)
    stfs 0, 0x258(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x260(31)
L_80154F38:
    li 0, 0x0
    li 3, 0x2
    stw 0, 0xb0(31)
    li 0, 0x1
    stw 3, 0x250(31)
    stw 0, 0x230(31)
    .4byte 0x480001C8 # b .L_80155118
L_80154F54:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408201BC # bne .L_80155118
    lwz 3, 0x250(31)
    li 0, 0x8
    addi 3, 3, 0x1
    stw 3, 0x250(31)
    lwz 3, 0x250(31)
    clrlwi 3, 3, 31
    stw 3, 0x250(31)
    stw 0, 0x234(31)
    .4byte 0x48000198 # b .L_80155118
L_80154F84:
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80154FA4
    .4byte 0xC002A390 # lfs f0, lbl_8053D330@sda21(r0)
    stfs 0, 0x258(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x260(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
L_80154FA4:
    lfs 2, 0x44(31)
    .4byte 0xC002A3B0 # lfs f0, lbl_8053D350@sda21(r0)
    .4byte 0xC022A390 # lfs f1, lbl_8053D330@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x44(31)
    lfs 0, 0x14(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820154 # bne .L_80155118
    lfs 0, 0x44(31)
    fcmpo cr0, 0, 1
    .4byte 0x40800148 # bge .L_80155118
    lfs 1, 0xc(31)
    addi 4, 1, 0x30
    .4byte 0xC002A3B4 # lfs f0, lbl_8053D354@sda21(r0)
    li 5, 0x3cf
    stfs 1, 0x30(1)
    li 6, 0x0
    .4byte 0xC022A394 # lfs f1, lbl_8053D334@sda21(r0)
    li 7, 0x0
    lfs 2, 0x10(31)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 2, 0x34(1)
    fadds 0, 2, 0
    lfs 2, 0x14(31)
    stfs 2, 0x38(1)
    stfs 0, 0x34(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    li 0, 0x10
    .4byte 0xC002A390 # lfs f0, lbl_8053D330@sda21(r0)
    stw 0, 0x234(31)
    li 0, 0x1
    lis 4, 0x1
    lis 3, 0x19
    stw 0, 0x250(31)
    addi 0, 4, 0x1101
    addi 4, 3, 0x660d
    .4byte 0xC042A394 # lfs f2, lbl_8053D334@sda21(r0)
    stfs 0, 0x258(31)
    .4byte 0xC022A3B8 # lfs f1, lbl_8053D358@sda21(r0)
    stfs 0, 0x25c(31)
    stfs 0, 0x260(31)
    stfs 0, 0x44(31)
    stfs 0, 0x14(31)
    stw 0, 0xb0(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 3, 0x44(1)
    addi 0, 3, 0x32
    stw 0, 0x238(31)
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 31
    .4byte 0x4182005C # beq .L_80155110
    lwz 0, 0x108(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_80155110
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC022A3B4 # lfs f1, lbl_8053D354@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x40(1)
    lwz 3, 0x44(1)
    addi 0, 3, 0x4
    stw 0, 0x238(31)
L_80155110:
    li 0, 0x0
    stw 0, 0x230(31)
L_80155118:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

