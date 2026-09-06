# fn_8026942C(subObj, dirIdx, outPos) - "get world-space candidate
# position `dirIdx`." Looks up a global 8-direction offset table
# (lbl_8046BA88, stride 0xc = 3 floats) by dirIdx, copies it into
# outPos, then adds subObj->0x4's OWN position (a further sub-object,
# read via paired-single x/z and a separate y/z pair) to it in place.
# Kept as raw asm - paired-single SIMD (psq_l/ps_add/psq_st) is a
# confirmed high-risk category for natural C++ reproduction (see
# project_fsa_phase4_kickoff.md's seventh batch survey). Split out of
# the original SetField_0x98/fn_8026942C dtk bundle; SetField_0x98 is now
# real C++ in Game/stub_80269420.cpp.
.text
.balign 4
.global fn_8026942C

fn_8026942C:
    mulli 0, 4, 0xc
    lis 4, lbl_8046BA88@ha
    addi 4, 4, lbl_8046BA88@l
    lfsx 0, 4, 0
    add 4, 4, 0
    lfs 1, 0x4(4)
    stfs 0, 0x0(5)
    lfs 0, 0x8(4)
    stfs 1, 0x4(5)
    stfs 0, 0x8(5)
    lwz 3, 0x4(3)
    psq_l 1, 0x0(5), 0, 0
    psq_l 0, 0x8(3), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 1, 0x8(5), 1, 0
    psq_l 0, 0x10(3), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(5), 1, 0
    blr
