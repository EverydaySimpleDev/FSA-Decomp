/*
 * fn_801D9C58(this, newState) (0x801D9C58-0x801DA0FC, 0x4A4/1188 bytes) - THE
 * state-machine "ENTER STATE" executor for this new class - the keystone
 * function referenced by EVERY other method landed for this class so far
 * (fn_801D8400, fn_801D85B0, fn_801D882C, fn_801D8B28, fn_801D95F4,
 * fn_801D9960), the DIRECT counterpart of dtor_801D46FC's fn_801D5D84
 * (extab_801d5d84.s) - same architecture, different class.
 *
 * Resets a halfword timer (this->0x336=0); if the OUTGOING state was 0x11,
 * clears 3 flag bits in this->0x230. Then a SECOND real compiler jumptable
 * (`jumptable_804A4D50`) on `newState` (0-0x14, the same 21-state range
 * fn_801D8B28 evaluates exits for), where each case sets default fields
 * (this->0x250=-1 sentinel, this->0x258=base constant) and triggers that
 * state's animation on the this+0x2a8 animation-controller sub-object (see
 * fn_801D8A30/fn_801D89BC) via fn_801DA9E8(this+0x2a8, animID, flags) - or,
 * for a few states, the alternate fn_801DA994(this+0x2a8, animID, flags=2) -
 * usually followed by a state-specific sound cue via the CONFIRMED
 * fn_801F0E34. A couple of states instead toggle flag bits directly
 * (this->0x230 |=0x4000 / cleared) or reset the full velocity+effect-default
 * block (this->0x3c/0x40/0x44/0x254/0x258/0x60-0x7c/0xd8/0xdc) matching the
 * "effect propagation defaults" shape from fn_801D7E6C/fn_801D7DB4 (the OTHER
 * class), inline rather than via a helper. The LAST case calls
 * fn_801DAC6C() (parameterless - a GLOBAL singleton accessor, NOT per-`this`,
 * see extab_801daa48.s) + fn_801DAE24(this) (not yet landed) - a cleanup/
 * death entry matching fn_801D8B28's own state 0x14 special-casing.
 *
 * UNCONDITIONAL common exit (every case falls through to it, identical in
 * shape to fn_801D5D84's own tail): resets the elapsed-time-in-state counter
 * (this->0x24c=0) and commits `this->0x248=newState` - the actual state
 * assignment. This closes the loop on this SECOND class's entire enter/
 * update/exit finite-state-machine architecture this session
 * (fn_801D8B28=exit-conditions, fn_801D9C58=entry-effects+commit,
 * fn_801D8400/fn_801D84E4/fn_801D85B0/fn_801D882C=per-state ongoing behavior).
 */

.section extab, "a"
.balign 4
.global etb_80008784
etb_80008784:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008784, 8

.section extabindex, "a"
.balign 4
.global eti_80015B98
eti_80015B98:
    .4byte fn_801D9C58
    .4byte 0x000004A4
    .4byte etb_80008784
.size eti_80015B98, 12

.text
.balign 4
.global fn_801D9C58

fn_801D9C58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    sth 0, 0x336(3)
    lwz 0, 0x248(3)
    cmpwi 0, 0x11
    .4byte 0x40820010 # bne .L_801D9C94
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 25, 23
    stw 0, 0x230(30)
L_801D9C94:
    cmplwi 31, 0x14
    .4byte 0x41810440 # bgt .L_801DA0D8
    lis 3, jumptable_804A4D50@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_804A4D50@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    addi 3, 30, 0x2a8
    li 4, 0x3
    li 5, 0x0
    bl fn_801DA9E8
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x52
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000400 # b .L_801DA0D8
    addi 3, 30, 0x2a8
    li 4, 0x4
    li 5, 0x0
    bl fn_801DA9E8
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x5d
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480003D8 # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x2a8
    li 4, 0x0
    li 5, 0x2
    stfs 0, 0x258(30)
    bl fn_801DA994
    .4byte 0x480003B4 # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x258(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x8
    .4byte 0x40800024 # bge .L_801D9D64
    cmpwi 0, 0x6
    .4byte 0x40800008 # bge .L_801D9D50
    .4byte 0x48000018 # b .L_801D9D64
L_801D9D50:
    addi 3, 30, 0x2a8
    li 4, 0x2
    li 5, 0x0
    bl fn_801DA9E8
    .4byte 0x48000014 # b .L_801D9D74
L_801D9D64:
    addi 3, 30, 0x2a8
    li 4, 0x1
    li 5, 0x0
    bl fn_801DA9E8
L_801D9D74:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x52
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000350 # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x2a8
    li 4, 0x3
    li 5, 0x0
    stfs 0, 0x258(30)
    bl fn_801DA9E8
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x52
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000318 # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x2a8
    li 4, 0x4
    li 5, 0x0
    stfs 0, 0x258(30)
    bl fn_801DA9E8
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x5d
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x248(30)
    cmpwi 0, 0x5
    .4byte 0x40820014 # bne .L_801D9E14
    lwz 0, 0x230(30)
    ori 0, 0, 0x4000
    stw 0, 0x230(30)
    .4byte 0x480002C8 # b .L_801DA0D8
L_801D9E14:
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 18, 16
    stw 0, 0x230(30)
    .4byte 0x480002B8 # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x2a8
    li 4, 0x5
    li 5, 0x0
    stfs 0, 0x258(30)
    bl fn_801DA9E8
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x56
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 30
    bl fn_801E6394
    mr 3, 30
    bl fn_801E631C
    .4byte 0x48000270 # b .L_801DA0D8
    lwz 4, 0x230(30)
    li 3, -0x281
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    and 4, 4, 3
    addi 3, 30, 0x2a8
    stw 4, 0x230(30)
    li 4, 0x6
    li 5, 0x0
    stw 0, 0x250(30)
    stfs 0, 0x258(30)
    bl fn_801DA9E8
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x57
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 30
    bl fn_801E631C
    .4byte 0x48000220 # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x2a8
    li 4, 0x7
    li 5, 0x0
    stfs 0, 0x258(30)
    bl fn_801DA9E8
    .4byte 0x480001FC # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C284 # lfs f0, lbl_8053F224@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x2a8
    li 4, 0x8
    li 5, 0x2
    stfs 0, 0x258(30)
    bl fn_801DA994
    lwz 0, 0x248(30)
    cmpwi 0, 0xc
    .4byte 0x418201D0 # beq .L_801DA0D8
    li 3, 0xf1
    bl fn_801CD664
    addi 0, 3, 0x78
    sth 0, 0x33c(30)
    .4byte 0x480001BC # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x2a8
    li 4, 0x9
    li 5, 0x0
    stfs 0, 0x258(30)
    bl fn_801DA9E8
    .4byte 0x48000198 # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x2a8
    li 4, 0xe
    li 5, 0x0
    stfs 0, 0x258(30)
    bl fn_801DA9E8
    .4byte 0x48000174 # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x2a8
    li 4, 0xf
    li 5, 0x0
    stfs 0, 0x258(30)
    bl fn_801DA9E8
    .4byte 0x48000150 # b .L_801DA0D8
    li 3, 0x0
    li 0, -0x1
    stb 3, 0x33f(30)
    addi 3, 30, 0x2a8
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    li 4, 0xa
    stw 0, 0x250(30)
    li 5, 0x0
    stfs 0, 0x258(30)
    bl fn_801DA9E8
    .4byte 0x48000124 # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x2a8
    li 4, 0xb
    li 5, 0x0
    stfs 0, 0x258(30)
    bl fn_801DA9E8
    .4byte 0x48000100 # b .L_801DA0D8
    lwz 4, 0x230(30)
    li 0, -0x1
    li 3, 0x1
    ori 4, 4, 0x80
    stw 4, 0x230(30)
    stw 0, 0x250(30)
    bl fn_801CD664
    addi 0, 3, 0xf0
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    sth 0, 0x336(30)
    addi 3, 30, 0x2a8
    li 4, 0xc
    li 5, 0x2
    stfs 0, 0x258(30)
    bl fn_801DA994
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x57
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 30
    bl fn_801E631C
    .4byte 0x480000A4 # b .L_801DA0D8
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stw 0, 0x250(30)
    addi 3, 30, 0x2a8
    li 4, 0xd
    li 5, 0x0
    stfs 0, 0x258(30)
    bl fn_801DA9E8
    .4byte 0x48000080 # b .L_801DA0D8
    .4byte 0xC042C238 # lfs f2, lbl_8053F1D8@sda21(r0)
    lis 4, 0x4
    .4byte 0xC022C23C # lfs f1, lbl_8053F1DC@sda21(r0)
    li 0, 0x10
    stfs 2, 0x60(30)
    mr 3, 30
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    addi 4, 4, 0x5a
    stfs 2, 0x64(30)
    li 5, 0x0
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 0, 0x258(30)
    stfs 0, 0x254(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stw 0, 0xd8(30)
    stw 0, 0xdc(30)
    bl fn_801F0E34
    .4byte 0x4800000C # b .L_801DA0D8
    bl fn_801DAC6C
    bl fn_801DAE24
L_801DA0D8:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

