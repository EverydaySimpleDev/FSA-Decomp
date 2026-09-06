/*
 * fn_801DA124(this) (0x801DA124-0x801DA438, 0x314/788 bytes) - the REAL
 * constructor/setParams() for this new class, and the piece that resolves
 * TWO open questions this session:
 *
 * 1. WHAT the "this->0x2d0 ceiling" field (fn_801D8980, extab_801d8980.s) and
 *    the "this+(pattern*8)+0x2d4 array" (fn_801D85B0/fn_801D882C/
 *    fn_801D8B28/fn_801D9960) actually ARE. This constructor:
 *    - Calls fn_801D0ED0(this) (base init, same call fn_801D6554/fn_801D7E6C
 *      make for dtor_801D46FC's class family), sets default effect-
 *      propagation fields (this->0x60-0x8c, same constants as
 *      fn_801D7E6C's fallback branch), this->0xb0/0x98/0x230/0x108/0x244/
 *      0x114/0x196 to instance defaults, and looks up a per-type settings
 *      row via the CONFIRMED GetRoomConfigRecord (self-type<8 gated, same +0xcc/+0xdc
 *      row-selection this class family always uses).
 *    - Runs a TRACE LOOP: starting from self position (this->0xc/0x10),
 *      repeatedly makes a REAL VIRTUAL CALL through vtable slot 0x4c/4=19 -
 *      THE SAME SLOT dtor_801D46FC's class uses for its "can I move this
 *      way" query in fn_801D4ED4 - confirming that hook is a genuinely
 *      shared, engine-wide Actor-base virtual contract, not tied to one
 *      class (a further generalization of the vtable-slot-13 finding
 *      documented in project_fsa_extab_bug_resolved.md). When the query
 *      fails, nudges the traced position by a fixed step via fn_801CCCC4.
 *      The loop climbs until the traced height exceeds the settings row's
 *      own max-height field, and the FINAL traced height is stored into
 *      this->0x2d0 - CONFIRMING it's a per-instance "max climbable/reachable
 *      height," computed once at construction via virtual-call probing.
 *    - Then PRECOMPUTES slots 0-11 of the pattern array (this+i*8+0x2d4, a
 *      12-SLOT array per fn_801DA504's real constructor - CORRECTING an
 *      earlier undercount here - written here as 3 height-tier GROUPS of 4
 *      consecutive slots each) from a home anchor (this->0x24/0x28) blended
 *      with fixed height/XZ step constants - CONFIRMING the pattern array is
 *      a set of candidate perch/climb points around a home position at 3
 *      progressively higher tiers, not arbitrary data.
 * 2. Commits initial FSM state (this->0x248=0, 0x24c=0, 0x250=-1 sentinel,
 *    0x254/0x258=base constant), triggers the default animation via the
 *    CONFIRMED fn_801DA9E8(this+0x2a8, 0, 2), then calls fn_801E63D8(this),
 *    fn_801DAC6C() (parameterless - a lazy-init GLOBAL singleton accessor,
 *    lbl_804C92D0, NOT per-instance, see extab_801daa48.s/oscluster_801dac6c.c
 *    - feeds fn_801DAF44(singletonPtr, this->0x198)), and finishes with the
 *    SAME GetRoomConfigRecord+fn_802D7440
 *    settings-registration tail fn_801D6554 uses. Needs -mgekko.
 */

.section extab, "a"
.balign 4
.global etb_80008794
etb_80008794:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_80008794, 8

.section extabindex, "a"
.balign 4
.global eti_80015BB0
eti_80015BB0:
    .4byte fn_801DA124
    .4byte 0x00000314
    .4byte etb_80008794
.size eti_80015BB0, 12

.text
.balign 4
.global fn_801DA124

fn_801DA124:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0xC042C238 # lfs f2, lbl_8053F1D8@sda21(r0)
    lis 3, 0x4
    .4byte 0xC022C23C # lfs f1, lbl_8053F1DC@sda21(r0)
    addi 6, 3, 0x4
    stfs 2, 0x60(31)
    li 5, 0x2
    li 4, 0x8c
    li 3, 0x0
    stfs 2, 0x64(31)
    li 0, 0x1
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 6, 0xb0(31)
    stw 5, 0x98(31)
    lwz 5, 0x230(31)
    ori 5, 5, 0x2a0
    stw 5, 0x230(31)
    stw 4, 0x108(31)
    lwz 4, 0x108(31)
    stw 4, 0x244(31)
    stw 3, 0x114(31)
    stb 0, 0x196(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801DA1F0
    addi 30, 3, 0xcc
    .4byte 0x48000008 # b .L_801DA1F4
L_801DA1F0:
    addi 30, 3, 0xdc
L_801DA1F4:
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    .4byte 0xC3C2C22C # lfs f30, lbl_8053F1CC@sda21(r0)
    stfs 0, 0x8(1)
    .4byte 0xC3E2C258 # lfs f31, lbl_8053F1F8@sda21(r0)
    stfs 1, 0xc(1)
    .4byte 0x48000064 # b .L_801DA270
L_801DA210:
    lfs 1, 0x8(1)
    mr 3, 31
    lfs 0, 0xc(1)
    addi 5, 1, 0x10
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    stfs 30, 0x18(1)
    lwz 12, 0x0(31)
    lwz 4, 0x4(31)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801DA264
    addi 3, 1, 0x8
    bl fn_801CCCC4
    lfs 1, 0xc(1)
    .4byte 0xC002C288 # lfs f0, lbl_8053F228@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    .4byte 0x48000020 # b .L_801DA280
L_801DA264:
    lfs 0, 0xc(1)
    fadds 0, 0, 31
    stfs 0, 0xc(1)
L_801DA270:
    lfs 1, 0xc(1)
    lfs 0, 0xc(30)
    fcmpo cr0, 1, 0
    .4byte 0x4180FF94 # blt .L_801DA210
L_801DA280:
    lfs 0, 0xc(1)
    li 0, 0x0
    slwi 6, 0, 3
    .4byte 0xC022C28C # lfs f1, lbl_8053F22C@sda21(r0)
    stfs 0, 0x2d0(31)
    addi 8, 6, 0x2d4
    .4byte 0xC062C244 # lfs f3, lbl_8053F1E4@sda21(r0)
    add 8, 31, 8
    lfs 2, 0x24(31)
    li 0, 0x4
    lfs 0, 0x28(31)
    fsubs 6, 2, 1
    lfs 2, 0x2d0(31)
    fadds 5, 3, 0
    .4byte 0xC022C254 # lfs f1, lbl_8053F1F4@sda21(r0)
    .4byte 0xC002C290 # lfs f0, lbl_8053F230@sda21(r0)
    stfs 6, 0x0(8)
    fadds 4, 6, 1
    .4byte 0xC062C248 # lfs f3, lbl_8053F1E8@sda21(r0)
    stfs 5, 0x4(8)
    addi 8, 6, 0x2dc
    add 8, 31, 8
    fsubs 0, 2, 0
    stfs 4, 0x0(8)
    fadds 4, 4, 1
    fsubs 0, 0, 5
    stfs 5, 0x4(8)
    addi 8, 6, 0x2e4
    add 8, 31, 8
    stfs 4, 0x0(8)
    fadds 4, 4, 1
    fmuls 0, 3, 0
    stfs 5, 0x4(8)
    addi 8, 6, 0x2ec
    add 8, 31, 8
    stfs 4, 0x0(8)
    fadds 2, 5, 0
    stfs 5, 0x4(8)
    slwi 6, 0, 3
    addi 8, 6, 0x2d4
    fadds 4, 6, 1
    add 8, 31, 8
    li 0, 0x8
    stfs 6, 0x0(8)
    stfs 2, 0x4(8)
    addi 8, 6, 0x2dc
    add 8, 31, 8
    stfs 4, 0x0(8)
    fadds 4, 4, 1
    stfs 2, 0x4(8)
    addi 8, 6, 0x2e4
    add 8, 31, 8
    stfs 4, 0x0(8)
    fadds 4, 4, 1
    stfs 2, 0x4(8)
    addi 8, 6, 0x2ec
    add 8, 31, 8
    stfs 4, 0x0(8)
    stfs 2, 0x4(8)
    fadds 2, 2, 0
    slwi 6, 0, 3
    addi 8, 6, 0x2d4
    fadds 4, 6, 1
    add 8, 31, 8
    li 7, 0x0
    stfs 6, 0x0(8)
    li 0, -0x1
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stfs 2, 0x4(8)
    addi 8, 6, 0x2dc
    add 8, 31, 8
    addi 3, 31, 0x2a8
    stfs 4, 0x0(8)
    fadds 4, 4, 1
    li 4, 0x0
    li 5, 0x2
    stfs 2, 0x4(8)
    addi 8, 6, 0x2e4
    add 8, 31, 8
    stfs 4, 0x0(8)
    fadds 4, 4, 1
    stfs 2, 0x4(8)
    addi 8, 6, 0x2ec
    add 8, 31, 8
    stfs 4, 0x0(8)
    stfs 2, 0x4(8)
    stw 7, 0x248(31)
    stw 7, 0x24c(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801DA9E8
    mr 3, 31
    bl fn_801E63D8
    bl fn_801DAC6C
    lwz 4, 0x198(31)
    bl fn_801DAF44
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 0, 0x54(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

