/*
 * fn_801D3DAC(this, targetPtr) (0x801D3DAC-0x801D41B8, 0x40C/1036 bytes) - called by
 * fn_801D3CBC's default state-branch (extab_801d3cbc.s) with either this->0x348 or
 * (this->0x98+0x3c) as `targetPtr`. Builds a 16-byte sequential index buffer
 * (0,1,...,15 - the same "give me every slot in order" convention CONFIRMED for
 * fn_800FD894's targetType==-1 case) plus a large local spawn-parameter struct, then
 * dispatches heavily on this->0x560 and this->0x248 (the same state field
 * fn_801D3CBC switches on) to choose WHICH effect/sound to spawn via the CONFIRMED
 * fn_801F06F0(this, anchorTable, targetPtr, angle, outParams, count=7) using a shared
 * anchor table `lbl_80469488` - each branch first picks an index either directly
 * (0xff sentinel) or via the classic `0x4330....` double-bias int-to-double trick
 * (CONFIRMED idiom, see reference_fsa_global_prng.md's neighbourhood) applied to
 * this->0x24c against a per-type settings-table byte fetched through the CONFIRMED
 * `GetRoomConfigRecord` settings accessor (indexed by self type at this->0x4, offset +0x131df -
 * a per-type flag/table far beyond the accessor's small near-field cases seen so far).
 *
 * When self type (this->0x4) < 8: calls fn_801EF830 (first time seen) to seed
 * this->0x138 if it's still 0, then - ONLY for self type < 8 again - virtual-calls
 * through a global registry singleton (`lbl_8053AAF8->0xa4`, the SAME confirmed
 * manager slot documented in project_fsa_shared_effect_subsystem_crossref.md) and
 * feeds its result into fn_802F86CC - ANOTHER confirmed call site for the "spatial
 * triad" (see [[project_fsa_shared_effect_subsystem_crossref]], now 4 real call sites).
 * If self type==8 specifically, additionally calls fn_801CD0D0(this+0xc, &buf) then
 * fn_801EF574(anchorTable, targetPtr, &buf, &idxBuf) (both first-seen, not yet landed).
 *
 * Finishes with a final tail call to fn_80307830(this->0x198, this->0x4, this+0xc,
 * targetPtr, 0, 1, 0, dispatchIndex) where dispatchIndex is 4 if this->0x248==0x29 else
 * this->0x560's low byte - another SDK-shaped call (same 0x8030xxxx address family as
 * fn_803075AC in fn_801D3CBC), real signature not yet traced.
 */

.section extab, "a"
.balign 4
.global etb_80008598
etb_80008598:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008598, 8

.section extabindex, "a"
.balign 4
.global eti_8001594C
eti_8001594C:
    .4byte fn_801D3DAC
    .4byte 0x0000040C
    .4byte etb_80008598
.size eti_8001594C, 12

.text
.balign 4
.global fn_801D3DAC

fn_801D3DAC:
    stwu 1, -0x80(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x84(1)
    li 0, -0x1
    addi 9, 1, 0x14
    stw 31, 0x7c(1)
    mr 31, 4
    stw 30, 0x78(1)
    mr 30, 3
    stw 29, 0x74(1)
    stw 0, 0x24(1)
    stw 0, 0x28(1)
    .4byte 0x48000064 # b .L_801D3E44
L_801D3DE4:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_801D3E44:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801D3DE4
    li 7, 0x0
    li 8, -0x1
    stb 7, 0x42(1)
    li 6, 0x1
    li 5, 0x3
    li 4, 0x2
    li 0, 0x40
    stw 8, 0x44(1)
    li 3, 0xe
    lwz 29, 0x4(30)
    stw 8, 0x24(1)
    stw 7, 0x28(1)
    stw 7, 0x2c(1)
    stb 7, 0x30(1)
    stb 7, 0x31(1)
    stb 7, 0x32(1)
    stb 6, 0x33(1)
    stb 6, 0x34(1)
    stb 7, 0x35(1)
    stb 7, 0x36(1)
    stb 7, 0x37(1)
    stb 7, 0x38(1)
    stb 7, 0x39(1)
    stb 6, 0x3a(1)
    stw 5, 0x3c(1)
    stb 6, 0x40(1)
    stb 7, 0x41(1)
    stw 7, 0x48(1)
    stw 4, 0x4c(1)
    stw 3, 0x44(1)
    stb 0, 0x42(1)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_801D3EEC
    li 0, 0x0
    stb 0, 0x33(1)
L_801D3EEC:
    lwz 3, 0x560(30)
    cmpwi 3, 0x4
    .4byte 0x41820160 # beq .L_801D4054
    lwz 0, 0x248(30)
    cmpwi 0, 0x8
    .4byte 0x4182000C # beq .L_801D3F0C
    cmpwi 0, 0x9
    .4byte 0x4082014C # bne .L_801D4054
L_801D3F0C:
    cmpwi 0, 0x8
    .4byte 0x40820010 # bne .L_801D3F20
    li 0, 0xff
    stb 0, 0x27(1)
    .4byte 0x4800005C # b .L_801D3F78
L_801D3F20:
    lwz 4, 0x24c(30)
    lis 3, 0x4330
    .4byte 0x8002BE58 # lwz r0, lbl_8053EDF8@sda21(r0)
    xoris 4, 4, 0x8000
    stw 3, 0x50(1)
    xoris 0, 0, 0x8000
    .4byte 0xC842C108 # lfd f2, lbl_8053F0A8@sda21(r0)
    stw 4, 0x54(1)
    .4byte 0xC062C100 # lfs f3, lbl_8053F0A0@sda21(r0)
    lfd 0, 0x50(1)
    stw 0, 0x5c(1)
    fsubs 1, 0, 2
    stw 3, 0x58(1)
    lfd 0, 0x58(1)
    fmuls 1, 3, 1
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fsubs 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 0, 0x64(1)
    stb 0, 0x27(1)
L_801D3F78:
    lbz 0, 0x27(1)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_801D3FA8
    .4byte 0xC022C104 # lfs f1, lbl_8053F0A4@sda21(r0)
    lis 3, lbl_80469488@ha
    addi 4, 3, lbl_80469488@l
    mr 5, 31
    fmr 2, 1
    mr 3, 30
    addi 6, 1, 0x14
    li 7, 0x7
    bl fn_801F06F0
L_801D3FA8:
    lwz 3, 0x560(30)
    lwz 0, 0x248(30)
    addi 3, 3, 0xc
    cmpwi 0, 0x8
    stb 3, 0x1b(1)
    .4byte 0x4082005C # bne .L_801D4018
    lwz 4, 0x24c(30)
    lis 3, 0x4330
    .4byte 0x8002BE5C # lwz r0, lbl_8053EDFC@sda21(r0)
    xoris 4, 4, 0x8000
    stw 3, 0x60(1)
    xoris 0, 0, 0x8000
    .4byte 0xC842C108 # lfd f2, lbl_8053F0A8@sda21(r0)
    stw 4, 0x64(1)
    .4byte 0xC062C100 # lfs f3, lbl_8053F0A0@sda21(r0)
    lfd 0, 0x60(1)
    stw 0, 0x5c(1)
    fsubs 1, 0, 2
    stw 3, 0x58(1)
    lfd 0, 0x58(1)
    fmuls 1, 3, 1
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    stb 0, 0x27(1)
    .4byte 0x4800000C # b .L_801D4020
L_801D4018:
    li 0, 0xff
    stb 0, 0x27(1)
L_801D4020:
    lbz 0, 0x27(1)
    cmplwi 0, 0x0
    .4byte 0x4182013C # beq .L_801D4164
    .4byte 0xC022C104 # lfs f1, lbl_8053F0A4@sda21(r0)
    lis 3, lbl_80469488@ha
    addi 4, 3, lbl_80469488@l
    mr 5, 31
    fmr 2, 1
    mr 3, 30
    addi 6, 1, 0x14
    li 7, 0x7
    bl fn_801F06F0
    .4byte 0x48000114 # b .L_801D4164
L_801D4054:
    cmpwi 3, 0x4
    .4byte 0x41820020 # beq .L_801D4078
    lwz 0, 0x248(30)
    cmpwi 0, 0x8
    .4byte 0x40810014 # ble .L_801D4078
    cmpwi 0, 0x29
    .4byte 0x4182000C # beq .L_801D4078
    addi 0, 3, 0xc
    stb 0, 0x1b(1)
L_801D4078:
    lwz 0, 0x248(30)
    cmpwi 0, 0x10
    .4byte 0x408200C0 # bne .L_801D4140
    lwz 0, 0x138(30)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_801D40B4
    lis 4, lbl_80469488@ha
    lwz 3, 0x4(30)
    addi 7, 4, lbl_80469488@l
    mr 8, 31
    addi 4, 30, 0xc
    addi 5, 1, 0x14
    li 6, 0x7
    li 9, 0x0
    bl fn_801EF830
L_801D40B4:
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_801D410C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80469488@ha
    addi 5, 3, lbl_80469488@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022C104 # lfs f1, lbl_8053F0A4@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 31
    fmr 2, 1
    addi 7, 1, 0x14
    lwz 3, 0x20(4)
    addi 4, 30, 0xc
    bl fn_802F86CC
L_801D410C:
    lwz 0, 0x4(30)
    cmpwi 0, 0x8
    .4byte 0x40820050 # bne .L_801D4164
    addi 3, 30, 0xc
    addi 4, 1, 0x8
    bl fn_801CD0D0
    lis 3, lbl_80469488@ha
    mr 4, 31
    addi 3, 3, lbl_80469488@l
    addi 5, 1, 0x8
    addi 6, 1, 0x14
    bl fn_801EF574
    .4byte 0x48000028 # b .L_801D4164
L_801D4140:
    .4byte 0xC022C104 # lfs f1, lbl_8053F0A4@sda21(r0)
    lis 3, lbl_80469488@ha
    addi 4, 3, lbl_80469488@l
    mr 5, 31
    fmr 2, 1
    mr 3, 30
    addi 6, 1, 0x14
    li 7, 0x7
    bl fn_801F06F0
L_801D4164:
    lwz 0, 0x248(30)
    lwz 3, 0x560(30)
    cmpwi 0, 0x29
    clrlwi 10, 3, 24
    .4byte 0x40820008 # bne .L_801D417C
    li 10, 0x4
L_801D417C:
    lwz 3, 0x198(30)
    mr 6, 31
    lwz 4, 0x4(30)
    addi 5, 30, 0xc
    li 7, 0x0
    li 8, 0x1
    li 9, 0x0
    bl fn_80307830
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

