# fn_801D02E0(this, targetPos*) - a genuine "face toward a point" trig
# helper: computes dx/dz between targetPos and this->0xc/0x10 (this
# actor's position), calls fn_80093340(dx, dz) (not decompiled, but
# its signature/usage here strongly suggests it's an atan2-style
# Dolphin SDK math routine returning radians), then scales the radian
# result by lbl_8053EFEC (a radians-to-binary-angle constant,
# ~65536/(2*pi)) and returns the raw fctiwz-converted s32 (NOT
# sign-extended to s16 - the real return type is s32). Loads the
# address of lbl_80534C00 into r3 and passes it as fn_80093340's first
# argument (a lookup table pointer, NOT dead code as an earlier header
# comment mistakenly claimed).
#
# Attempted real-C++ promotion (Phase 4): fixed the return-type bug
# (s32 not s16) and confirmed the fn_80093340(table, dx, dz) parameter
# order, but hit the SAME prologue-LR-save-placement mismatch as the
# sibling fn_801D0280 in this same batch (see its own header for the
# full writeup) - retail interleaves `stw 0,0x14(1)` mid-sequence
# rather than as a block before/after the float loads. Reverted to raw
# asm; see project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_80008448
etb_80008448:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008448, 8

.section extabindex, "a"
.balign 4
.global eti_80015790
eti_80015790:
    .4byte fn_801D02E0
    .4byte 0x00000058
    .4byte etb_80008448
.size eti_80015790, 12

.text
.balign 4
.global fn_801D02E0

fn_801D02E0:
    stwu 1, -0x10(1)
    mflr 0
    mr 5, 3
    lfs 3, 0x0(4)
    lfs 1, 0xc(5)
    lis 3, lbl_80534C00@ha
    lfs 2, 0x4(4)
    addi 3, 3, lbl_80534C00@l
    lfs 0, 0x10(5)
    fsubs 1, 3, 1
    stw 0, 0x14(1)
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002C04C # lfs f0, lbl_8053EFEC@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 3, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
