.section extab, "a"
.balign 4
.global etb_800080B8
etb_800080B8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800080B8, 8

.section extabindex, "a"
.balign 4
.global eti_80015274
eti_80015274:
    .4byte fn_801C50A8
    .4byte 0x00000298
    .4byte etb_800080B8
.size eti_80015274, 12

.text
.balign 4
.global fn_801C50A8

# fn_801C50A8(this, newState) - the "on EXIT the OLD state" cleanup
# dispatcher called unconditionally at the very top of fn_801C3B7C
# (extab_801c3b7c.s), BEFORE the transition takes effect - confirmed by
# reading every instruction (0x298 = 664 bytes, small enough to trace
# fully unlike its two giant siblings): it dispatches on this->0x248
# (the OLD state, not yet overwritten), with `newState` used only in
# the opening check below. Together with fn_801C2ED4 (while-IN-state)
# and fn_801C3B7C (on-ENTER-new-state), this closes the confirmed
# 3-function state-machine triad.
#
# 1. Clears a flag bit in this->0x230, zeroes this->0x55c
#    unconditionally. Then, UNLESS either `newState` or the OLD state
#    is one of {0x12..0x18} (a contiguous 7-state "linked sub-mode"
#    cluster), also zeroes this->0x55d - i.e. that byte survives any
#    transition that stays within (or touches an edge of) the cluster,
#    and is only reset on a clean exit from the whole thing.
# 2. If the OLD state was 0x11, also clears the this->0x598 cooldown
#    timer early (one of fn_801C2ED4's 5 confirmed saturating timers).
# 3. Unconditionally resets this->0x52c/0x530 and 0x534/0x538 to shared
#    constants - a SECOND "reset to default" quad, distinct from the
#    familiar 0x60-0x7c/0x80-0x8c extent quads.
# 4. Main dispatch: if the OLD state is in [0x10,0x2f] (32 states),
#    jumps via `jumptable_804A4674` to a per-old-state cleanup body,
#    else falls straight to the epilogue. Every reachable body in this
#    function was read (none skipped) - several jump-table slots
#    provably point at the SAME shared body rather than distinct code
#    (confirmed where a body itself checks this->0x248 against a
#    specific value, e.g. the 0x17/0x19 special-cases below), a smaller
#    instance of the `fn_801CDD58`-style target-sharing already seen
#    elsewhere in this project - exactly which of the 32 slots point at
#    which body was not reconstructed (would need the raw table dumped
#    from the DOL, not done this session):
#    - One body delegates to fn_80214900(&this->0x4ec) (not decompiled)
#      then clears bits in this->0x230.
#    - One body just clears a different set of this->0x230 bits.
#    - One body resets BOTH extent quads (0x60-0x7c AND 0x80-0x8c) to
#      shared defaults plus clears an this->0x230 bit - this is the
#      CANONICAL implementation of the "reset extents to idle" block
#      fn_801C2ED4 and fn_801C3B7C each separately duplicate inline
#      (3+ times combined), all using the same 2 constants
#      (lbl_8053EE20/lbl_8053EE14).
#    - One body clears bits 0x1100 from this->0x230 (mask -0x1101),
#      resets the 0x60-0x7c extent quad, ORs in flag 0x4, then does a
#      state-SPECIFIC follow-up: if the OLD state was 0x17, sets the
#      this->0x59b cooldown timer to 6; else if it was 0x19, randomizes
#      this->0x560 via the CONFIRMED fn_801CD664(4) PRNG-int-in-range
#      helper - the SAME this->0x560 field fn_801C2ED4's state-0x2c/
#      lbl_80469450 lookup consumes, CLOSING that loop: it's randomized
#      on LEAVING state 0x19, consumed later on entering state 0x2c.
#      Either way (or the default fallthrough), unconditionally copies
#      this->0x57c into this->0x4, and copies a stored 3-float position
#      (this->0x580/0x584/0x588) into BOTH the current-position pair
#      (this->0xc/0x10/0x14) AND the saved-position pair (this->0x18/
#      0x1c/0x20 - the SAME pair fn_801C2ED4's collision-recovery
#      prologue rolls back to) - "teleport/reset to a stored point"
#      when leaving this state.
#    - Two more bodies each clear a different narrow set of this->0x230
#      bits with no other side effects.
#    - A final body is BYTE-FOR-BYTE IDENTICAL to the "reset both
#      extent quads" body above - a second table slot confirmed sharing
#      that exact same code.
# 5. Epilogue: no state field is written here - this->0x248 itself is
#    only ever updated by fn_801C3B7C's OWN epilogue, after this
#    function returns.
fn_801C50A8:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 4, 0x12
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x230(3)
    rlwinm 3, 3, 0, 14, 12
    stw 3, 0x230(31)
    stb 0, 0x55c(31)
    .4byte 0x41820074 # beq .L_801C5148
    lwz 3, 0x248(31)
    cmpwi 3, 0x12
    .4byte 0x41820068 # beq .L_801C5148
    cmpwi 4, 0x13
    .4byte 0x41820060 # beq .L_801C5148
    cmpwi 3, 0x13
    .4byte 0x41820058 # beq .L_801C5148
    cmpwi 4, 0x14
    .4byte 0x41820050 # beq .L_801C5148
    cmpwi 3, 0x14
    .4byte 0x41820048 # beq .L_801C5148
    cmpwi 4, 0x15
    .4byte 0x41820040 # beq .L_801C5148
    cmpwi 3, 0x15
    .4byte 0x41820038 # beq .L_801C5148
    cmpwi 4, 0x16
    .4byte 0x41820030 # beq .L_801C5148
    cmpwi 3, 0x16
    .4byte 0x41820028 # beq .L_801C5148
    cmpwi 4, 0x17
    .4byte 0x41820020 # beq .L_801C5148
    cmpwi 3, 0x17
    .4byte 0x41820018 # beq .L_801C5148
    cmpwi 4, 0x18
    .4byte 0x41820010 # beq .L_801C5148
    cmpwi 3, 0x18
    .4byte 0x41820008 # beq .L_801C5148
    stb 0, 0x55d(31)
L_801C5148:
    lwz 0, 0x248(31)
    cmpwi 0, 0x11
    .4byte 0x4082000C # bne .L_801C515C
    li 0, 0x0
    stb 0, 0x598(31)
L_801C515C:
    .4byte 0xC022BE88 # lfs f1, lbl_8053EE28@sda21(r0)
    .4byte 0xC002BEB0 # lfs f0, lbl_8053EE50@sda21(r0)
    stfs 1, 0x52c(31)
    stfs 1, 0x530(31)
    stfs 0, 0x534(31)
    stfs 0, 0x538(31)
    lwz 3, 0x248(31)
    subi 0, 3, 0x10
    cmplwi 0, 0x1f
    .4byte 0x418101AC # bgt .L_801C532C
    lis 3, jumptable_804A4674@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A4674@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    addi 3, 31, 0x4ec
    bl fn_80214900
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 9, 7
    stw 0, 0x230(31)
    .4byte 0x4800017C # b .L_801C532C
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 20, 18
    stw 0, 0x230(31)
    .4byte 0x4800016C # b .L_801C532C
    lwz 0, 0x230(31)
    .4byte 0xC042BE80 # lfs f2, lbl_8053EE20@sda21(r0)
    rlwinm 0, 0, 0, 24, 22
    .4byte 0xC022BE74 # lfs f1, lbl_8053EE14@sda21(r0)
    stw 0, 0x230(31)
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
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
    .4byte 0x48000114 # b .L_801C532C
    lwz 3, 0x230(31)
    li 0, -0x1101
    .4byte 0xC022BE80 # lfs f1, lbl_8053EE20@sda21(r0)
    and 0, 3, 0
    .4byte 0xC002BE74 # lfs f0, lbl_8053EE14@sda21(r0)
    stw 0, 0x230(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    lwz 0, 0x230(31)
    oris 0, 0, 0x4
    stw 0, 0x230(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x17
    .4byte 0x40820010 # bne .L_801C5288
    li 0, 0x6
    stb 0, 0x59b(31)
    .4byte 0x480000A8 # b .L_801C532C
L_801C5288:
    cmpwi 0, 0x19
    .4byte 0x40820010 # bne .L_801C529C
    li 3, 0x4
    bl fn_801CD664
    stw 3, 0x560(31)
L_801C529C:
    lwz 0, 0x57c(31)
    stw 0, 0x4(31)
    psq_l 1, 0x580(31), 0, 0
    lfs 0, 0x588(31)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    psq_l 1, 0x580(31), 0, 0
    lfs 0, 0x588(31)
    psq_st 1, 0x18(31), 0, 0
    stfs 0, 0x20(31)
    .4byte 0x48000068 # b .L_801C532C
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 13, 11
    stw 0, 0x230(31)
    .4byte 0x48000058 # b .L_801C532C
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 6, 4
    stw 0, 0x230(31)
    .4byte 0x48000048 # b .L_801C532C
    lwz 0, 0x230(31)
    .4byte 0xC022BE80 # lfs f1, lbl_8053EE20@sda21(r0)
    rlwinm 0, 0, 0, 24, 22
    .4byte 0xC002BE74 # lfs f0, lbl_8053EE14@sda21(r0)
    stw 0, 0x230(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
L_801C532C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
