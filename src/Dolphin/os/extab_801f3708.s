# fn_801F3708(this, floatTriple) - a "claim once" latch keyed on
# this->0xc4 (siblings fn_801F36D4/fn_801F3744/fn_801F3780 are now
# real C++ in Game/stub_801f36d4.cpp): if not already set, sets it and
# copies 3 floats from floatTriple into this->0x3c/0x40/0x44. Kept as
# raw asm - float-heavy, matches this session's established hard
# category. Split out of the original fn_801F36D4 dtk bundle.
#
# NOTE: attempted real-C++ promotion (Phase 4) - genuinely a NEAR-MISS,
# not the hard category the original banner presumed. The `u32` return
# + explicit `& 0xff` mask recipe from sibling fn_801F36D4 applies
# directly (0 diffs on the control flow/latch logic itself). Writing
# the 3 float loads via literal per-field statements (no locals) gave
# 18 byte diffs (6 differing instrs); reproducing retail's literal
# 2-ahead load/store interleaving (load t0; set result=1; load t1;
# store t0; load t2; store t1; store t2 - matching retail's own
# instruction order exactly, statement for statement) closed all but
# ONE remaining issue: 8 byte diffs (3 differing instrs) - retail's
# actual order is [load t0][li result=1][load t1], but MWCC always
# emits [li result=1][load t1][load t0] instead - the SAME 2
# instructions, just re-ordered AND with the two float loads swapped
# relative to each other. Tried 4 source variations (result=1 placed
# before/between/after the 2 loads; t0/t1 declared in both possible
# orders, both inline and pre-declared-uninitialized) - all 4 produced
# BYTE-IDENTICAL wrong output, confirming this specific 3-instruction
# reordering is chosen by MWCC's own scheduler independent of source
# statement order, matching the same "MWCC's own scheduler decides, not
# source-controllable" hard category as Grve_SetParams's 3-float case and
# OSInitAlloc/OSCreateHeap's 1-2 instruction swaps. Left as raw asm -
# only 8 of 60 bytes differ, the closest near-miss in this specific
# small-function tier.
#
# ALSO TESTED: `#pragma scheduling off` / `reset` (a real MWCC pragma,
# confirmed supported by this project's own GC/1.3.2 mwcceppc.exe via a
# standalone test - it genuinely freezes emission in literal source
# order for a simple independent-loads case). Wrapping this function's
# body in the pragma made the match WORSE (17 bytes/6 differing instrs,
# up from 8/3) - even after fixing my own source order (reading the
# flag before initializing `result`), MWCC still floated the
# independent `li r5,0`/`li r0,0` ahead of the flag load regardless of
# the pragma. Conclusion: retail's own compile of THIS function was NOT
# built with scheduling disabled - the pragma is a real, situational
# lever (confirmed working on this project's actual compiler) but is
# NOT a universal unblocker for "scheduler decides" residuals; it only
# helps when retail's OWN bytes show the tell-tale unscheduled
# signature (loads sitting immediately next to their own use, no
# batching) in the first place. Reverted, don't retry this pragma here
# without a new angle.
.text
.balign 4
.global fn_801F3708

fn_801F3708:
    lbz 0, 0xc4(3)
    li 5, 0x0
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_801F373C
    li 0, 0x0
    lfs 0, 0x0(4)
    stb 0, 0xc4(3)
    li 5, 0x1
    lfs 1, 0x4(4)
    stfs 0, 0x3c(3)
    lfs 0, 0x8(4)
    stfs 1, 0x40(3)
    stfs 0, 0x44(3)
L_801F373C:
    clrlwi 3, 5, 24
    blr
