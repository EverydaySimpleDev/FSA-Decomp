.section extab, "a"
.balign 4
.global etb_80008878
etb_80008878:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008878, 8

.section extabindex, "a"
.balign 4
.global eti_80015CE8
eti_80015CE8:
    .4byte fn_801DC6B4
    .4byte 0x000000A4
    .4byte etb_80008878
.size eti_80015CE8, 12

# fn_801DC6B4(this) - this class's real per-frame update() (companion to
# fn_801DC3C4's "launch nearby players" and fn_801DC364's bounding-box
# gate). First calls fn_801D22A0(this+0x270, 0, 2) - a 4TH real method on
# the CONFIRMED shared "timed-cue lookup table" embedded at +0x270 (joins
# fn_801D2608/fn_801D22DC/fn_801D1D60 already seen on this same component).
#
# Then checks this->0x2a8 (the per-launch byte COUNTER incremented in
# fn_801DC3C4 every time a player gets launched) >= 10. If not yet reached,
# does nothing else. Once it reaches 10 (i.e. this actor has successfully
# launched players 10 times):
#   - resets the bounding box (this->0x60/0x64/0x68/0x6c to constants) AND
#     copies those same 4 values into a 2nd float quad at this->0x70/0x74/
#     0x78/0x7c (a "current vs. reset/original" bounding-box pair).
#   - zeroes this->0xb0.
#   - calls the CONFIRMED global singleton fn_801DAC6C() and sets bit 0x1
#     on the singleton's halfword field at +0x84 (already documented as
#     part of `lbl_804C92D0`'s tiny record) - this is new evidence that the
#     global singleton's +0x84 halfword is a GLOBAL EVENT/PROGRESS FLAG
#     set once some actor of this class completes its "launch 10 players"
#     objective, not per-instance state.
#   - commits this class's own FSM to state 1 (this->0x248=1, this->0x24c=0,
#     the standard state-commit tail written inline here rather than via a
#     separate enter-executor function).
.text
.balign 4
.global fn_801DC6B4

fn_801DC6B4:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    li 5, 0x2
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x270
    bl fn_801D22A0
    lbz 0, 0x2a8(31)
    cmplwi 0, 0xa
    .4byte 0x41800064 # blt .L_801DC744
    .4byte 0xC022C3A0 # lfs f1, lbl_8053F340@sda21(r0)
    li 0, 0x0
    .4byte 0xC002C3BC # lfs f0, lbl_8053F35C@sda21(r0)
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
    stw 0, 0xb0(31)
    bl fn_801DAC6C
    lhz 5, 0x84(3)
    li 4, 0x0
    li 0, 0x1
    ori 5, 5, 0x1
    sth 5, 0x84(3)
    stw 4, 0x24c(31)
    stw 0, 0x248(31)
L_801DC744:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

