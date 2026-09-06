# Fresh-gap-hunt batch 27 landing (6 non-ctors tiny candidates, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
# 2D vector accumulate: this->0x258/0x25c += vec[0]/vec[1].
# NOTE: attempted real-C++ promotion 3 times (32nd Phase 4 batch) - a
# straightforward per-component add-in-place, a preload-3-values-then-
# compute variant, and a real Vec2-struct-with-operator-style access all
# produced the SAME wrong instruction/register-assignment pattern:
# retail preloads BOTH source values for the FIRST component (this
# field AND vec field) before computing, using an unusual register
# reuse pattern (f2=this-field, f1=vec[0] then reused for the SECOND
# this-field read, f0=vec[1] then reused for the final result) that no
# phrasing tried reproduces. Same "stubborn scheduler-internal float
# register choice" hard category as fn_8021FB44/fn_802F45DC. Left as
# raw asm.
.text
.balign 4
.global fn_802C59B0

fn_802C59B0:
    lfs 2, 0x258(3)
    lfs 1, 0x0(4)
    lfs 0, 0x4(4)
    fadds 1, 2, 1
    stfs 1, 0x258(3)
    lfs 1, 0x25c(3)
    fadds 0, 1, 0
    stfs 0, 0x25c(3)
    blr

