.section extab, "a"
.balign 4
.global etb_80008480
etb_80008480:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008480, 8

.section extabindex, "a"
.balign 4
.global eti_800157E4
eti_800157E4:
    .4byte fn_801D0ED0
    .4byte 0x00000070
    .4byte etb_80008480
.size eti_800157E4, 12

.text
.balign 4
.global fn_801D0ED0

# fn_801D0ED0(this) - the generic BASE Actor::setParams(), confirmed
# called by ROPE's own override (fn_801B7D34) and used DIRECTLY (no
# override at all) by at least 4 other actor vtables sharing the
# fn_801CDD58 base update() (see
# project_fsa_rope_shared_update_dispatcher.md). Initializes a
# scale-like float pair (this->0x60/0x64 and its duplicate at
# 0x80/0x84, both = shared constant lbl_8053F010, likely 1.0) and an
# offset-like float pair (this->0x68/0x6c and duplicate at 0x88/0x8c,
# both = lbl_8053EFDC, likely 0.0), a flags word at this->0xb0
# (0x00011101), a PRNG-jittered "variant/sub-type" value at this->0x98
# via fn_801CD664(4) (the SAME jitter-base helper ROPE's own setParams
# uses), and copies this->0x108 into this->0x244 (the "cooldown
# baseline" field fn_801CDD58's update() reads back on flag bit 22).
#
# Attempted real-C++ promotion (Phase 4): field writes/logic fully
# confirmed correct (a direct translation matched every field write and
# argument), but matches the well-established float-prologue wall -
# retail loads the float SDA constant BEFORE the r31 callee-save/copy,
# MWCC always does the callee-save first regardless of source phrasing.
# Deferred immediately per standing discipline for an already-
# established wall class.
fn_801D0ED0:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022C070 # lfs f1, lbl_8053F010@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC002C03C # lfs f0, lbl_8053EFDC@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, 0x1
    stfs 1, 0x60(31)
    addi 0, 3, 0x1101
    li 3, 0x4
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0xb0(31)
    bl fn_801CD664
    stw 3, 0x98(31)
    lwz 0, 0x108(31)
    stw 0, 0x244(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
