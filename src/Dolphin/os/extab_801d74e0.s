/*
 * fn_801D74E0(this, posSrc, ?, selfID) (0x801D74E0-0x801D7638, 0x158/344 bytes) -
 * the REAL constructor/init() for the reusable "this+0x4c4" sub-object (see
 * extab_801d6e20.s/extab_801d70bc.s/extab_801d72c0.s). Fills all 16 target-ID
 * slots (this->0x0-0x3c) with -1 (CONFIRMING them as sentinel-"empty" slots),
 * zeroes state/timer fields, caches posSrc into this->0x48/0x4c/0x50 and
 * selfID into this->0x40 - then, based on the CONFIRMED fn_801CD2F8(this->0x40)
 * self-ID validity check (tested TWICE - once for a facing-angle jitter, once
 * for the branch below), sets this->0x44 (state) to 1 (valid) or 2 (invalid)
 * and loops either 1 or 16 times: SpatialRegistry_GetBase (registry) then
 * fn_801F9484(registry, "BGBL", posPtr=this+0x48, 0, -1, -1) - the CONFIRMED
 * universal actor-spawn dispatcher, here spawning 1 or 16 new actors of the
 * 4-char type "BGBL" (not yet cross-identified against the 195-entry dispatch
 * table) at the cached position - and records each spawned handle into the
 * target-ID slot array. This is the missing piece: this sub-object SPAWNS the
 * very targets fn_801D70BC/fn_801D72C0 later launch/knock back.
 */

.section extab, "a"
.balign 4
.global etb_800086D4
etb_800086D4:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_800086D4, 8

.section extabindex, "a"
.balign 4
.global eti_80015A90
eti_80015A90:
    .4byte fn_801D74E0
    .4byte 0x00000158
    .4byte etb_800086D4
.size eti_80015A90, 12

.text
.balign 4
.global fn_801D74E0

fn_801D74E0:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC062C1B0 # lfs f3, lbl_8053F150@sda21(r0)
    stw 0, 0x24(1)
    li 0, -0x1
    .4byte 0xC042C1CC # lfs f2, lbl_8053F16C@sda21(r0)
    stmw 27, 0xc(1)
    mr 27, 3
    lfs 1, 0x4(4)
    mr 28, 4
    lfs 0, 0x0(4)
    fadds 1, 2, 1
    lfs 2, 0x8(4)
    stw 0, 0x0(3)
    li 3, 0x0
    stw 0, 0x4(27)
    stw 0, 0x8(27)
    stw 0, 0xc(27)
    stw 0, 0x10(27)
    stw 0, 0x14(27)
    stw 0, 0x18(27)
    stw 0, 0x1c(27)
    stw 0, 0x20(27)
    stw 0, 0x24(27)
    stw 0, 0x28(27)
    stw 0, 0x2c(27)
    stw 0, 0x30(27)
    stw 0, 0x34(27)
    stw 0, 0x38(27)
    stw 0, 0x3c(27)
    stw 3, 0x40(27)
    stw 3, 0x44(27)
    stfs 3, 0x48(27)
    stfs 3, 0x4c(27)
    stfs 3, 0x50(27)
    sth 3, 0x54(27)
    sth 3, 0x56(27)
    stb 3, 0x58(27)
    stfs 3, 0x5c(27)
    stfs 3, 0x60(27)
    stw 3, 0x64(27)
    stw 5, 0x40(27)
    stfs 0, 0x48(27)
    stfs 1, 0x4c(27)
    stfs 2, 0x50(27)
    lwz 3, 0x40(27)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801D75B4
    .4byte 0xC022C1D0 # lfs f1, lbl_8053F170@sda21(r0)
    lfs 0, 0x4(28)
    fadds 0, 1, 0
    stfs 0, 0x4c(27)
L_801D75B4:
    lwz 3, 0x40(27)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801D75D4
    li 0, 0x1
    li 29, 0x1
    stw 0, 0x44(27)
    .4byte 0x48000010 # b .L_801D75E0
L_801D75D4:
    li 0, 0x2
    li 29, 0x10
    stw 0, 0x44(27)
L_801D75E0:
    mr 30, 27
    li 28, 0x0
    lis 31, 0x4247
    .4byte 0x48000030 # b .L_801D761C
L_801D75F0:
    bl SpatialRegistry_GetBase
    lwz 5, 0x40(27)
    addi 4, 31, 0x424c
    addi 6, 27, 0x48
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x0(30)
    addi 30, 30, 0x4
    addi 28, 28, 0x1
L_801D761C:
    cmpw 28, 29
    .4byte 0x4180FFD0 # blt .L_801D75F0
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

