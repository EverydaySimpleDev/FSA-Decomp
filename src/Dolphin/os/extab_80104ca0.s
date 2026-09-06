/*
 * fn_80104CA0(this): LOSW's real update() (identity confirmed - see
 * fn_80104C3C's updated banner) - a "4-flag consensus checker" tick, and
 * a GENUINE CONFIRMATION that the room-data flag family
 * (project_fsa_flag_switch_helpers.md) supports more than SWT4's strict
 * "all 4 must be set" AND-gate.
 *  - Advances a mod-50 counter (this->0x24c/0x24d) that triggers a
 *    fn_801F0D20 call (confirmed sound-cue trigger, ID 3) and resets.
 *  - If this->0x24e==1, skips straight to the tail (already resolved).
 *  - Otherwise dispatches on this->0x240 (0-3, the "consensus mode"):
 *    modes 0/1/else all loop over LOSW's own 4 group indices
 *    (this->0x230-family, stride 4, set in setParams) calling
 *    GetRoomConfigRecord then **fn_802D800C(groupIndex)** - the CONFIRMED
 *    per-room direct-bit flag READ - and counting matches/mismatches:
 *    mode 0 = ALL 4 flags must be set (unanimous - same as SWT4's
 *    combination), mode 1 = AT LEAST ONE flag set (an OR-gate), mode
 *    3(else) = a MIXED/majority check (neither all-set nor all-clear).
 *    Each mode sets this->0x28 ("consensus reached") under its own
 *    condition.
 *  - If consensus reached: calls fn_80104EB0(this) (landed, see its own
 *    updated banner - a pure results/celebration fanfare sequence with
 *    NO flag-writing at all) and, on its success, a virtual call
 *    through this->vtable[slot 12] (arg 1), sets this->0x24c from a
 *    this->0x90 flag bit, resets this->0x24d, and if this->0x244 is
 *    set, sets this->0x24e=1 (marking resolved).
 *  - If NOT reached: a virtual call through this->vtable[slot 12] (arg
 *    0), resets this->0x24c/0x24d, and if this->0x24f was set, clears
 *    it, this->0x24a, and calls fn_80230534 (unidentified reset, seen
 *    in the minigame family too).
 * **Architectural conclusion**: LOSW never calls the write-side
 * primitives (fn_802D8050/fn_802D78B4) anywhere in its own class - it
 * is a pure READER/celebrator of flags that OTHER actors (SWT4/ONOF)
 * write, not a flippable switch itself. Confirms the flag-registry
 * system has genuinely distinct writer and reader/consumer roles.
 */

.section extab, "a"
.balign 4
.global etb_800059B8
etb_800059B8:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_800059B8, 8

.section extabindex, "a"
.balign 4
.global eti_80011DC4
eti_80011DC4:
    .4byte fn_80104CA0
    .4byte 0x00000210
    .4byte etb_800059B8
.size eti_80011DC4, 12

.text
.balign 4
.global fn_80104CA0

fn_80104CA0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    lbz 0, 0x24c(3)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_80104CE8
    lbz 4, 0x24d(31)
    addi 0, 4, 0x1
    stb 0, 0x24d(31)
    lbz 0, 0x24d(31)
    cmplwi 0, 0x32
    .4byte 0x40820014 # bne .L_80104CE8
    li 4, 0x3
    bl fn_801F0D20
    li 0, 0x0
    stb 0, 0x24c(31)
L_80104CE8:
    lbz 0, 0x24e(31)
    cmplwi 0, 0x1
    .4byte 0x418201AC # beq .L_80104E9C
    lwz 0, 0x240(31)
    li 29, 0x0
    li 28, 0x0
    cmpwi 0, 0x1
    .4byte 0x4182006C # beq .L_80104D70
    .4byte 0x40800010 # bge .L_80104D18
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80104D24
    .4byte 0x480000E0 # b .L_80104DF4
L_80104D18:
    cmpwi 0, 0x3
    .4byte 0x408000D8 # bge .L_80104DF4
    .4byte 0x48000090 # b .L_80104DB0
L_80104D24:
    li 27, 0x0
    mr 30, 31
L_80104D2C:
    bl GetRoomConfigRecord
    lwz 4, 0x230(30)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80104D4C
    lwz 0, 0x230(30)
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_80104D50
L_80104D4C:
    addi 29, 29, 0x1
L_80104D50:
    addi 27, 27, 0x1
    addi 30, 30, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FFD0 # blt .L_80104D2C
    cmpwi 29, 0x4
    .4byte 0x40820090 # bne .L_80104DF4
    li 28, 0x1
    .4byte 0x48000088 # b .L_80104DF4
L_80104D70:
    li 27, 0x0
    mr 30, 31
L_80104D78:
    bl GetRoomConfigRecord
    lwz 4, 0x230(30)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80104D90
    addi 29, 29, 0x1
L_80104D90:
    addi 27, 27, 0x1
    addi 30, 30, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FFDC # blt .L_80104D78
    cmpwi 29, 0x0
    .4byte 0x41820050 # beq .L_80104DF4
    li 28, 0x1
    .4byte 0x48000048 # b .L_80104DF4
L_80104DB0:
    li 27, 0x0
    mr 30, 31
L_80104DB8:
    bl GetRoomConfigRecord
    lwz 4, 0x230(30)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80104DD0
    addi 29, 29, 0x1
L_80104DD0:
    addi 27, 27, 0x1
    addi 30, 30, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FFDC # blt .L_80104DB8
    cmpwi 29, 0x0
    .4byte 0x41820010 # beq .L_80104DF4
    cmpwi 29, 0x4
    .4byte 0x41820008 # beq .L_80104DF4
    li 28, 0x1
L_80104DF4:
    cmpwi 28, 0x0
    .4byte 0x41820064 # beq .L_80104E5C
    mr 3, 31
    bl fn_80104EB0
    clrlwi. 0, 3, 24
    .4byte 0x41820094 # beq .L_80104E9C
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    lwz 0, 0x90(31)
    rlwinm. 0, 0, 0, 26, 26
    .4byte 0x4182000C # beq .L_80104E3C
    li 0, 0x1
    stb 0, 0x24c(31)
L_80104E3C:
    li 0, 0x0
    stb 0, 0x24d(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x41820050 # beq .L_80104E9C
    li 0, 0x1
    stb 0, 0x24e(31)
    .4byte 0x48000044 # b .L_80104E9C
L_80104E5C:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 4, 0x0
    stb 4, 0x24c(31)
    lbz 0, 0x24f(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80104E9C
    stb 4, 0x24f(31)
    li 3, 0x0
    sth 4, 0x24a(31)
    bl fn_80230534
L_80104E9C:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

