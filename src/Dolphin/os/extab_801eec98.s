.section extab, "a"
.balign 4
.global etb_80008D6C
etb_80008D6C:
    .4byte 0x70CA0000
    .4byte 0x00000000
.size etb_80008D6C, 8

.section extabindex, "a"
.balign 4
.global eti_800163FC
eti_800163FC:
    .4byte fn_801EEC98
    .4byte 0x00000878
    .4byte etb_80008D6C
.size eti_800163FC, 12

# fn_801EEC98 - the shared "find the relevant player for a spawned/thrown
# object and report distance+angle to it" helper, previously flagged
# unexplored across KETH/BZBR/TKTA/HINO's update()/setParams() (all 4 call
# it with the same argument shape). Signature (from those call sites):
# fn_801EEC98(this, id, unused, u16 *outAngle, s32 *outHandleOrAngle,
# float *outInvDist, unused, s32 mode).
#
# 1. Looks the caller's `id` up in the shared object registry (the
#    confirmed SpatialRegistry_GetBase/fn_801F666C get-registry/find-by-ID pair). If
#    nothing resolves, writes -1 to outHandleOrAngle/outFoundSlot and
#    returns immediately - a safe "target already gone" path.
# 2. Otherwise iterates exactly 4 candidate slots (0..3 - matching this
#    game's 4-player co-op roster; mode 2 starts the loop at a caller-
#    supplied index instead of 0). Each candidate must pass a battery of
#    6 distinct validity checks (Player_GetCapabilityFlagByIndex/fn_80230188/fn_8022DCD8/
#    fn_8022F478/fn_80236B50/fn_8022D534 - none independently decompiled
#    yet, but all take just the slot index and return a bool) AND an
#    "ownership" test: fn_8023DE58(slotIndex) is compared either against
#    the sentinel 8 (a wildcard "no specific owner" match) or against the
#    resolved target object's own->0x4 field (a specific-owner match).
# 3. For each slot that passes, computes the 2D delta between the target
#    object's position (this->0xc/0x10-style fields on the found object)
#    and either the live player position (fn_8023E724(slotIndex)) or a
#    mode-specific offset table (this+0xcc/0xdc), then normalizes it via
#    the reciprocal-sqrt-with-Newton-Raphson-refinement idiom (with the
#    usual near-zero/negative/NaN bit-pattern special-casing against
#    0x7f80) to get 1/distance. Exactly one of 3 mode-pair branches
#    (0/2, 1/3, or 4/5) is active per call (`mode` is fixed per call, not
#    per-iteration), and within that branch the CLOSEST slot across all 4
#    candidates wins (gated by fn_80236228 for modes 1/3 or fn_80237774
#    for modes 4/5, both otherwise-unexplored "distance-like" helpers).
# 4. On success, writes the winning slot's u16 angle (via ClassifyBamAngleToQuadrant,
#    a float-radians-to-BAM-angle-style conversion), that angle again
#    converted through ClassifyBamAngleToQuadrant into outHandleOrAngle, the normalized
#    1/distance into outInvDist, and the winning slot index into
#    outFoundSlot. On total failure (no valid slot), outHandleOrAngle and
#    outFoundSlot both get -1.
#
# Net effect: "find which of up to 4 players is the relevant target/owner
# for this thrown or tracked object, and report how far away and in what
# direction" - explains why every recurring enemy's update() calls it
# once per frame to decide who to react to.
.text
.balign 4
.global fn_801EEC98

fn_801EEC98:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stmw 18, 0x38(1)
    mr 18, 4
    mr 25, 5
    mr 26, 6
    mr 27, 7
    mr 28, 8
    mr 29, 9
    mr 30, 10
    bl SpatialRegistry_GetBase
    mr 4, 18
    bl fn_801F666C
    mr. 24, 3
    .4byte 0xC3E2C7B4 # lfs f31, lbl_8053F754@sda21(r0)
    li 23, 0x0
    li 22, -0x1
    li 21, -0x1
    li 20, -0x1
    li 31, 0x0
    .4byte 0x40820028 # bne .L_801EED2C
    cmplwi 26, 0x0
    .4byte 0x4182000C # beq .L_801EED18
    li 0, -0x1
    stw 0, 0x0(26)
L_801EED18:
    cmplwi 28, 0x0
    .4byte 0x418207C8 # beq .L_801EF4E4
    li 0, -0x1
    stw 0, 0x0(28)
    .4byte 0x480007BC # b .L_801EF4E4
L_801EED2C:
    cmpwi 30, 0x2
    .4byte 0x40820748 # bne .L_801EF478
    mr 31, 29
    .4byte 0x48000740 # b .L_801EF478
L_801EED3C:
    cmpwi 31, 0x0
    .4byte 0x41800740 # blt .L_801EF480
    mr 3, 31
    li 19, 0x0
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800018 # bge .L_801EED6C
    lwz 0, 0x4(24)
    cmpwi 0, 0x8
    .4byte 0x4082000C # bne .L_801EED6C
    li 19, 0x2
    .4byte 0x4800001C # b .L_801EED84
L_801EED6C:
    lwz 18, 0x4(24)
    mr 3, 31
    bl fn_8023DE58
    cmpw 18, 3
    .4byte 0x40820008 # bne .L_801EED84
    li 19, 0x1
L_801EED84:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418206E4 # beq .L_801EF474
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x408206D4 # bne .L_801EF474
    mr 3, 31
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x408206C4 # bne .L_801EF474
    cmpwi 19, 0x0
    .4byte 0x418206BC # beq .L_801EF474
    mr 3, 31
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x408206AC # bne .L_801EF474
    mr 3, 31
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x4082069C # bne .L_801EF474
    mr 3, 31
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x4082068C # bne .L_801EF474
    cmpwi 19, 0x1
    .4byte 0x40820030 # bne .L_801EEE20
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 31
    lfs 0, 0xc(24)
    fsubs 30, 0, 1
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(24)
    fsubs 29, 0, 1
    .4byte 0x48000080 # b .L_801EEE9C
L_801EEE20:
    mr 3, 31
    bl fn_8023DE58
    mr 19, 3
    bl GetRoomConfigRecord
    cmpwi 19, 0x8
    .4byte 0x4080000C # bge .L_801EEE40
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_801EEE44
L_801EEE40:
    addi 7, 3, 0xdc
L_801EEE44:
    lwz 6, 0x0(7)
    mr 3, 31
    lwz 5, 0x4(7)
    lwz 4, 0x8(7)
    lwz 0, 0xc(7)
    stw 6, 0x1c(1)
    stw 5, 0x20(1)
    stw 4, 0x24(1)
    stw 0, 0x28(1)
    bl fn_8023E724
    lfs 2, 0x0(3)
    mr 3, 31
    lfs 1, 0x1c(1)
    lfs 0, 0xc(24)
    fsubs 1, 2, 1
    fsubs 30, 0, 1
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x20(1)
    lfs 0, 0x10(24)
    fsubs 1, 2, 1
    fsubs 29, 0, 1
L_801EEE9C:
    cmpwi 30, 0x0
    .4byte 0x4182000C # beq .L_801EEEAC
    cmpwi 30, 0x2
    .4byte 0x40820324 # bne .L_801EF1CC
L_801EEEAC:
    .4byte 0xC002C7B4 # lfs f0, lbl_8053F754@sda21(r0)
    fcmpu cr0, 0, 31
    .4byte 0x4082011C # bne .L_801EEFD0
    fmuls 1, 29, 29
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    fmadds 4, 30, 30, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801EEF14
    frsqrte 1, 4
    .4byte 0xC862C7B8 # lfd f3, lbl_8053F758@sda21(r0)
    .4byte 0xC842C7C0 # lfd f2, lbl_8053F760@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801EEF98
L_801EEF14:
    .4byte 0xC802C7C8 # lfd f0, lbl_8053F768@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801EEF2C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801EEF98
L_801EEF2C:
    stfs 4, 0x18(1)
    lis 0, 0x7f80
    lwz 4, 0x18(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801EEF54
    .4byte 0x40800040 # bge .L_801EEF84
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801EEF6C
    .4byte 0x48000034 # b .L_801EEF84
L_801EEF54:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801EEF64
    li 0, 0x1
    .4byte 0x48000028 # b .L_801EEF88
L_801EEF64:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801EEF88
L_801EEF6C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801EEF7C
    li 0, 0x5
    .4byte 0x48000010 # b .L_801EEF88
L_801EEF7C:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801EEF88
L_801EEF84:
    li 0, 0x4
L_801EEF88:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801EEF98
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801EEF98:
    fmr 31, 4
    lis 3, lbl_80534C00@ha
    fneg 1, 30
    addi 3, 3, lbl_80534C00@l
    fneg 2, 29
    bl fn_80093340
    .4byte 0xC002C7D0 # lfs f0, lbl_8053F770@sda21(r0)
    mr 22, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    clrlwi 23, 0, 16
    .4byte 0x48000200 # b .L_801EF1CC
L_801EEFD0:
    fmuls 0, 29, 29
    .4byte 0xC022C7A0 # lfs f1, lbl_8053F740@sda21(r0)
    fmadds 0, 30, 30, 0
    fcmpo cr0, 0, 1
    .4byte 0x4081004C # ble .L_801EF02C
    frsqrte 2, 0
    .4byte 0xC882C7B8 # lfd f4, lbl_8053F758@sda21(r0)
    .4byte 0xC862C7C0 # lfd f3, lbl_8053F760@sda21(r0)
    fmul 1, 2, 2
    fmul 2, 4, 2
    fnmsub 1, 0, 1, 3
    fmul 2, 2, 1
    fmul 1, 2, 2
    fmul 2, 4, 2
    fnmsub 1, 0, 1, 3
    fmul 2, 2, 1
    fmul 1, 2, 2
    fmul 2, 4, 2
    fnmsub 1, 0, 1, 3
    fmul 1, 2, 1
    fmul 1, 0, 1
    frsp 1, 1
    .4byte 0x48000090 # b .L_801EF0B8
L_801EF02C:
    .4byte 0xC822C7C8 # lfd f1, lbl_8053F768@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40800010 # bge .L_801EF044
    lis 3, lbl_80539D38@ha
    lfs 1, lbl_80539D38@l(3)
    .4byte 0x48000078 # b .L_801EF0B8
L_801EF044:
    stfs 0, 0x14(1)
    lis 0, 0x7f80
    lwz 4, 0x14(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801EF06C
    .4byte 0x40800040 # bge .L_801EF09C
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801EF084
    .4byte 0x48000034 # b .L_801EF09C
L_801EF06C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801EF07C
    li 0, 0x1
    .4byte 0x48000028 # b .L_801EF0A0
L_801EF07C:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801EF0A0
L_801EF084:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801EF094
    li 0, 0x5
    .4byte 0x48000010 # b .L_801EF0A0
L_801EF094:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801EF0A0
L_801EF09C:
    li 0, 0x4
L_801EF0A0:
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_801EF0B4
    lis 3, lbl_80539D38@ha
    lfs 1, lbl_80539D38@l(3)
    .4byte 0x48000008 # b .L_801EF0B8
L_801EF0B4:
    fmr 1, 0
L_801EF0B8:
    fcmpo cr0, 31, 1
    .4byte 0x40810110 # ble .L_801EF1CC
    .4byte 0xC022C7A0 # lfs f1, lbl_8053F740@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x4081004C # ble .L_801EF114
    frsqrte 2, 0
    .4byte 0xC882C7B8 # lfd f4, lbl_8053F758@sda21(r0)
    .4byte 0xC862C7C0 # lfd f3, lbl_8053F760@sda21(r0)
    fmul 1, 2, 2
    fmul 2, 4, 2
    fnmsub 1, 0, 1, 3
    fmul 2, 2, 1
    fmul 1, 2, 2
    fmul 2, 4, 2
    fnmsub 1, 0, 1, 3
    fmul 2, 2, 1
    fmul 1, 2, 2
    fmul 2, 4, 2
    fnmsub 1, 0, 1, 3
    fmul 1, 2, 1
    fmul 0, 0, 1
    frsp 0, 0
    .4byte 0x48000088 # b .L_801EF198
L_801EF114:
    .4byte 0xC822C7C8 # lfd f1, lbl_8053F768@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40800010 # bge .L_801EF12C
    lis 3, lbl_80539D38@ha
    lfs 0, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801EF198
L_801EF12C:
    stfs 0, 0x10(1)
    lis 0, 0x7f80
    lwz 4, 0x10(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801EF154
    .4byte 0x40800040 # bge .L_801EF184
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801EF16C
    .4byte 0x48000034 # b .L_801EF184
L_801EF154:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801EF164
    li 0, 0x1
    .4byte 0x48000028 # b .L_801EF188
L_801EF164:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801EF188
L_801EF16C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801EF17C
    li 0, 0x5
    .4byte 0x48000010 # b .L_801EF188
L_801EF17C:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801EF188
L_801EF184:
    li 0, 0x4
L_801EF188:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801EF198
    lis 3, lbl_80539D38@ha
    lfs 0, lbl_80539D38@l(3)
L_801EF198:
    fmr 31, 0
    lis 3, lbl_80534C00@ha
    fneg 1, 30
    addi 3, 3, lbl_80534C00@l
    fneg 2, 29
    bl fn_80093340
    .4byte 0xC002C7D0 # lfs f0, lbl_8053F770@sda21(r0)
    mr 22, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    clrlwi 23, 0, 16
L_801EF1CC:
    cmpwi 30, 0x1
    .4byte 0x4182000C # beq .L_801EF1DC
    cmpwi 30, 0x3
    .4byte 0x40820144 # bne .L_801EF31C
L_801EF1DC:
    cmpwi 30, 0x3
    .4byte 0x4082000C # bne .L_801EF1EC
    cmpw 31, 29
    .4byte 0x41820134 # beq .L_801EF31C
L_801EF1EC:
    mr 3, 31
    bl fn_80236228
    cmpw 21, 3
    .4byte 0x40800124 # bge .L_801EF31C
    mr 3, 31
    bl fn_80236228
    fmuls 1, 29, 29
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    mr 21, 3
    fmadds 4, 30, 30, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801EF264
    frsqrte 1, 4
    .4byte 0xC862C7B8 # lfd f3, lbl_8053F758@sda21(r0)
    .4byte 0xC842C7C0 # lfd f2, lbl_8053F760@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801EF2E8
L_801EF264:
    .4byte 0xC802C7C8 # lfd f0, lbl_8053F768@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801EF27C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801EF2E8
L_801EF27C:
    stfs 4, 0xc(1)
    lis 0, 0x7f80
    lwz 4, 0xc(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801EF2A4
    .4byte 0x40800040 # bge .L_801EF2D4
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801EF2BC
    .4byte 0x48000034 # b .L_801EF2D4
L_801EF2A4:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801EF2B4
    li 0, 0x1
    .4byte 0x48000028 # b .L_801EF2D8
L_801EF2B4:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801EF2D8
L_801EF2BC:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801EF2CC
    li 0, 0x5
    .4byte 0x48000010 # b .L_801EF2D8
L_801EF2CC:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801EF2D8
L_801EF2D4:
    li 0, 0x4
L_801EF2D8:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801EF2E8
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801EF2E8:
    fmr 31, 4
    lis 3, lbl_80534C00@ha
    fneg 1, 30
    addi 3, 3, lbl_80534C00@l
    fneg 2, 29
    bl fn_80093340
    .4byte 0xC002C7D0 # lfs f0, lbl_8053F770@sda21(r0)
    mr 22, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    clrlwi 23, 0, 16
L_801EF31C:
    cmpwi 30, 0x4
    .4byte 0x4182000C # beq .L_801EF32C
    cmpwi 30, 0x5
    .4byte 0x40820144 # bne .L_801EF46C
L_801EF32C:
    cmpwi 30, 0x5
    .4byte 0x4082000C # bne .L_801EF33C
    cmpw 31, 29
    .4byte 0x41820134 # beq .L_801EF46C
L_801EF33C:
    mr 3, 31
    bl fn_80237774
    cmpw 20, 3
    .4byte 0x40800124 # bge .L_801EF46C
    mr 3, 31
    bl fn_80237774
    fmuls 1, 29, 29
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    mr 20, 3
    fmadds 4, 30, 30, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801EF3B4
    frsqrte 1, 4
    .4byte 0xC862C7B8 # lfd f3, lbl_8053F758@sda21(r0)
    .4byte 0xC842C7C0 # lfd f2, lbl_8053F760@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801EF438
L_801EF3B4:
    .4byte 0xC802C7C8 # lfd f0, lbl_8053F768@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801EF3CC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801EF438
L_801EF3CC:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801EF3F4
    .4byte 0x40800040 # bge .L_801EF424
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801EF40C
    .4byte 0x48000034 # b .L_801EF424
L_801EF3F4:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801EF404
    li 0, 0x1
    .4byte 0x48000028 # b .L_801EF428
L_801EF404:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801EF428
L_801EF40C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801EF41C
    li 0, 0x5
    .4byte 0x48000010 # b .L_801EF428
L_801EF41C:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801EF428
L_801EF424:
    li 0, 0x4
L_801EF428:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801EF438
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801EF438:
    fmr 31, 4
    lis 3, lbl_80534C00@ha
    fneg 1, 30
    addi 3, 3, lbl_80534C00@l
    fneg 2, 29
    bl fn_80093340
    .4byte 0xC002C7D0 # lfs f0, lbl_8053F770@sda21(r0)
    mr 22, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 0, 0x34(1)
    clrlwi 23, 0, 16
L_801EF46C:
    cmpwi 30, 0x2
    .4byte 0x41820010 # beq .L_801EF480
L_801EF474:
    addi 31, 31, 0x1
L_801EF478:
    cmpwi 31, 0x4
    .4byte 0x4180F8C0 # blt .L_801EED3C
L_801EF480:
    cmpwi 22, 0x0
    .4byte 0x40800028 # bge .L_801EF4AC
    cmplwi 26, 0x0
    .4byte 0x4182000C # beq .L_801EF498
    li 0, -0x1
    stw 0, 0x0(26)
L_801EF498:
    cmplwi 28, 0x0
    .4byte 0x41820048 # beq .L_801EF4E4
    li 0, -0x1
    stw 0, 0x0(28)
    .4byte 0x4800003C # b .L_801EF4E4
L_801EF4AC:
    cmplwi 25, 0x0
    .4byte 0x41820008 # beq .L_801EF4B8
    sth 23, 0x0(25)
L_801EF4B8:
    cmplwi 26, 0x0
    .4byte 0x41820010 # beq .L_801EF4CC
    clrlwi 3, 23, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x0(26)
L_801EF4CC:
    cmplwi 27, 0x0
    .4byte 0x41820008 # beq .L_801EF4D8
    stfs 31, 0x0(27)
L_801EF4D8:
    cmplwi 28, 0x0
    .4byte 0x41820008 # beq .L_801EF4E4
    stw 22, 0x0(28)
L_801EF4E4:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    lmw 18, 0x38(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

