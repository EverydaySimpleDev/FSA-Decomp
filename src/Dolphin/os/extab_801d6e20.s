/*
 * fn_801D6E20(this, posSrc) (0x801D6E20-0x801D70BC, 0x29C/668 bytes) - the
 * update() for the reusable "this+0x4c4" sub-object (called by dtor_801D46FC's
 * class as fn_801D6E20(this+0x4c4, this+0xc) - see extab_801d5180.s). Caches
 * posSrc into this->0x48/0x4c/0x50 (the raw position) and this->0x40 (a target
 * ID, resolved once via the CONFIRMED fn_801CD2F8 self-ID check, with a small
 * per-call jitter added to this->0x4c if valid).
 *
 * Dispatches on a local state field (this->0x44, 0-4):
 *   - states 0/1/3: no-op.
 *   - state 4: resolves the cached target ID via the CONFIRMED SpatialRegistry_GetBase/
 *     fn_801F666C pair, copies ITS position (offset via psq_l/psq_st) into
 *     posSrc->0xc/0x14 - "snap to my target's position."
 *   - state 2: increments a timer (this->0x64); past 0x2d (45 frames), forces
 *     state 3. Otherwise ramps this->0x60/0x5c toward `lbl_8053F174`/
 *     `lbl_8053F178` over that same window (an ease-in/ease-out blend).
 *   - default: draws a random step (via the CONFIRMED fn_801CD930 PRNG-range
 *     helper, range depends on this->0x58) added into a facing angle
 *     (this->0x54), THEN (only for states 2/4, i.e. re-entering this branch
 *     from below) loops 16 times over the SAME shared anchor table
 *     `lbl_8052EBC0` pattern seen throughout this session, resolving each of
 *     16 target IDs (this->0x0[i]) via SpatialRegistry_GetBase/fn_801F666C and writing a
 *     computed orbit position into posSrc->0xc/0x14, calling fn_801D7DB4(this,
 *     f1=this->0x60) once per iteration when state==2.
 *
 * Confirms this sub-object embeds a 16-slot array of target-ID ints at its own
 * offset 0 (a DIFFERENT 16-slot array from the this+0x308 one in
 * dtor_801D46FC's own class - this is the reusable component's OWN copy).
 * Needs -mgekko.
 */

.section extab, "a"
.balign 4
.global etb_800086BC
etb_800086BC:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_800086BC, 8

.section extabindex, "a"
.balign 4
.global eti_80015A6C
eti_80015A6C:
    .4byte fn_801D6E20
    .4byte 0x0000029C
    .4byte etb_800086BC
.size eti_80015A6C, 12

.text
.balign 4
.global fn_801D6E20

fn_801D6E20:
    stwu 1, -0x40(1)
    mflr 0
    .4byte 0xC042C1CC # lfs f2, lbl_8053F16C@sda21(r0)
    stw 0, 0x44(1)
    lfs 1, 0x4(4)
    stmw 27, 0x2c(1)
    mr 31, 3
    lfs 0, 0x0(4)
    fadds 1, 2, 1
    lfs 2, 0x8(4)
    mr 27, 4
    stfs 0, 0x48(3)
    stfs 1, 0x4c(3)
    stfs 2, 0x50(3)
    lwz 3, 0x40(3)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801D6E78
    .4byte 0xC022C1D0 # lfs f1, lbl_8053F170@sda21(r0)
    lfs 0, 0x4(27)
    fadds 0, 1, 0
    stfs 0, 0x4c(31)
L_801D6E78:
    lwz 0, 0x44(31)
    cmpwi 0, 0x2
    .4byte 0x4182005C # beq .L_801D6EDC
    .4byte 0x40800014 # bge .L_801D6E98
    cmpwi 0, 0x0
    .4byte 0x41820144 # beq .L_801D6FD0
    .4byte 0x40800018 # bge .L_801D6EA8
    .4byte 0x4800013C # b .L_801D6FD0
L_801D6E98:
    cmpwi 0, 0x4
    .4byte 0x41820134 # beq .L_801D6FD0
    .4byte 0x40800130 # bge .L_801D6FD0
    .4byte 0x480000EC # b .L_801D6F90
L_801D6EA8:
    lwz 29, 0x0(31)
    cmpwi 29, 0x0
    .4byte 0x41800120 # blt .L_801D6FD0
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182010C # beq .L_801D6FD0
    psq_l 1, 0x48(31), 0, 0
    lfs 0, 0x50(31)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
    .4byte 0x480000F8 # b .L_801D6FD0
L_801D6EDC:
    lwz 3, 0x64(31)
    addi 0, 3, 0x1
    stw 0, 0x64(31)
    lwz 0, 0x64(31)
    cmpwi 0, 0x2d
    .4byte 0x41800010 # blt .L_801D6F00
    li 0, 0x3
    stw 0, 0x44(31)
    .4byte 0x480000D4 # b .L_801D6FD0
L_801D6F00:
    subfic 3, 0, 0x2d
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x18(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC842C1E0 # lfd f2, lbl_8053F180@sda21(r0)
    stw 4, 0x1c(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0x18(1)
    fsubs 3, 1, 2
    fcmpo cr0, 3, 0
    .4byte 0x40800010 # bge .L_801D6F3C
    .4byte 0xC002C1D4 # lfs f0, lbl_8053F174@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0x4800001C # b .L_801D6F54
L_801D6F3C:
    .4byte 0xC002C1D4 # lfs f0, lbl_8053F174@sda21(r0)
    lfs 1, 0x60(31)
    fdivs 2, 0, 3
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x60(31)
L_801D6F54:
    lis 3, lbl_80539D44@ha
    lfs 0, lbl_80539D44@l(3)
    fcmpo cr0, 3, 0
    .4byte 0x40800010 # bge .L_801D6F70
    .4byte 0xC002C1D8 # lfs f0, lbl_8053F178@sda21(r0)
    stfs 0, 0x5c(31)
    .4byte 0x48000064 # b .L_801D6FD0
L_801D6F70:
    .4byte 0xC022C1D4 # lfs f1, lbl_8053F174@sda21(r0)
    .4byte 0xC002C1D8 # lfs f0, lbl_8053F178@sda21(r0)
    fdivs 2, 1, 3
    lfs 1, 0x5c(31)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x5c(31)
    .4byte 0x48000044 # b .L_801D6FD0
L_801D6F90:
    lbz 0, 0x58(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801D6FB0
    addi 3, 31, 0x56
    li 4, 0x0
    li 5, 0x20
    bl fn_801CD930
    .4byte 0x48000014 # b .L_801D6FC0
L_801D6FB0:
    addi 3, 31, 0x56
    li 4, 0x100
    li 5, 0x10
    bl fn_801CD930
L_801D6FC0:
    lha 3, 0x54(31)
    lha 0, 0x56(31)
    add 0, 3, 0
    sth 0, 0x54(31)
L_801D6FD0:
    lwz 0, 0x44(31)
    cmpwi 0, 0x4
    .4byte 0x408000D0 # bge .L_801D70A8
    cmpwi 0, 0x2
    .4byte 0x40800008 # bge .L_801D6FE8
    .4byte 0x480000C4 # b .L_801D70A8
L_801D6FE8:
    mr 30, 31
    li 27, 0x0
    li 29, 0x0
L_801D6FF4:
    lwz 28, 0x0(30)
    cmpwi 28, 0x0
    .4byte 0x41800098 # blt .L_801D7094
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820084 # beq .L_801D7094
    lha 5, 0x54(31)
    lis 4, lbl_8052EBC0@ha
    addi 0, 4, lbl_8052EBC0@l
    lfs 5, 0x50(31)
    add 4, 5, 29
    lfs 2, 0x5c(31)
    extsh 4, 4
    .4byte 0xC082C1B0 # lfs f4, lbl_8053F150@sda21(r0)
    neg 4, 4
    lfs 3, 0x4c(31)
    rlwinm 4, 4, 30, 18, 28
    lfs 1, 0x48(31)
    add 4, 0, 4
    stfs 5, 0x10(1)
    lfs 6, 0x0(4)
    lfs 7, 0x4(4)
    fmuls 0, 2, 6
    fmuls 2, 2, 7
    fmsubs 0, 4, 7, 0
    fmadds 2, 4, 6, 2
    fadds 0, 1, 0
    fadds 1, 3, 2
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    psq_l 0, 0x8(1), 0, 0
    psq_st 0, 0xc(3), 0, 0
    stfs 5, 0x14(3)
    lwz 0, 0x44(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_801D7094
    lfs 1, 0x60(31)
    bl fn_801D7DB4
L_801D7094:
    addi 27, 27, 0x1
    addi 29, 29, 0xfff
    cmpwi 27, 0x10
    addi 30, 30, 0x4
    .4byte 0x4180FF50 # blt .L_801D6FF4
L_801D70A8:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

