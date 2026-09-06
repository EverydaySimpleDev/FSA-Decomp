# fn_801F8658(actorPool) - per-frame "draw all active actors" loop over the
# 1024-slot actor pool (project_fsa_actor_loop_found.md). Walks the pool in
# 4-byte strides; for each non-null actor with flags 0x11c and 0x11d both
# set, and (if global "blocked" is set via fn_80134CC8) flag 0x11f also set,
# calls the actor's vtable slot 8 (its draw() function) via fn_801A3CFC as a
# pre-draw hook. After the loop, if not blocked, calls fn_801E9AFC/fn_801E9C74
# (post-draw cleanup pair).
#
# ATTEMPTED PROMOTION (2026-08-29/30, multiple sessions): Phase 4 real-C++
# push on core-systems code. IMPROVED to 10/49 instructions differing (was
# 12/49) via [[reference_fsa_virtual_dispatch_codegen_trick]] - calling the
# draw() vtable slot through a real C++ `virtual` member (a local 6-dummy-
# virtual struct padding to byte offset 0x20) fixes the previously-immovable
# r12-vs-r4 scratch-register choice for the vtable-pointer-then-funcptr
# chain, confirmed clean with ZERO residual there now. Combined with
# `bool blocked = fn_80134CC8(...) != 0;` (the single-expression cast form,
# NOT default-then-override - see below). Remaining 10 diffs, all
# re-confirmed genuinely compiler-fixed:
# - 4 instructions: an extra "mr r0,r3" prologue register-shuffle (a real
#   extra instruction, not just reordering).
# - 4 instructions: MWCC compiles the `!= 0` boolean cast via a branchless
#   neg/or/srwi bit-trick, while retail uses a branching clrlwi./beq/li
#   idiom (the "default-then-override" `bool blocked=false; if(...)
#   blocked=true;` form DOES produce retail's exact branching idiom, and
#   was previously combined with a scheduling pragma to reach 12/49 - but
#   COMBINING that default-then-override form WITH the new virtual-dispatch
#   fix regresses to a genuine 16-BYTE-LONGER function (212 vs 196 bytes,
#   confirmed via ~5 variations: pragma scoped 3 different ways, with/
#   without the pragma at all - the extra length is tied to the
#   default-then-override STATEMENT STRUCTURE itself when virtual dispatch
#   is also present, not the pragma). Since the branchless cast form is
#   what keeps the function at retail's exact 196-byte length, and getting
#   BOTH the branching idiom AND the vtable fix simultaneously has not
#   been achieved, this trade-off is currently unresolved - the branchless
#   form + vtable fix (10/49) beats the branching form without the vtable
#   fix (12/49), so this is the better of the two known-achievable states.
# - 2 instructions: the branchless idiom's byproduct - a full-word
#   `cmplwi`/`cmpwi` test of `blocked` instead of retail's byte-masking
#   `clrlwi.` test (same root cause as the branchless-vs-branching choice
#   above, not independently fixable).
# A genuinely new idea is needed to get the branching idiom's benefit
# without the virtual-dispatch-combo regression - worth revisiting if a
# future session finds one.
#
# METHODOLOGICAL NOTE: promoting this function (which carries a genuine,
# non-trivial extab entry) triggers the same mwld-internal section-size
# miscomputation bug documented for the project's 4 permanent Gate C
# blockers (reference_fsa_dtk_link_order_patch.md) - the OWN build's DOL
# header reports a shifted TEXT[1] address after a promotion attempt here.
# Any future diff against this function's freshly-compiled bytes MUST use
# retail's own (correct) header to compute the file offset for BOTH files,
# OR disassemble the compiled .o's own .text section directly and compare
# against retail's known instruction sequence by content.
.text
.balign 4
.global fn_801F8658

fn_801F8658:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134CC8
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801F868C
    li 30, 0x1
L_801F868C:
    li 29, 0x0
L_801F8690:
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820048 # beq .L_801F86E0
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_801F86E0
    lbz 0, 0x11d(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_801F86E0
    clrlwi. 0, 30, 24
    .4byte 0x41820010 # beq .L_801F86C8
    lbz 0, 0x11f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801F86E0
L_801F86C8:
    bl fn_801A3CFC
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x20(12)
    mtctr 12
    bctrl
L_801F86E0:
    addi 29, 29, 0x1
    addi 31, 31, 0x4
    cmplwi 29, 0x400
    .4byte 0x4180FFA4 # blt .L_801F8690
    clrlwi. 0, 30, 24
    .4byte 0x4082000C # bne .L_801F8700
    bl fn_801E9AFC
    bl fn_801E9C74
L_801F8700:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.section extab, "a"
.balign 4
.global etb_80008F9C
etb_80008F9C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80008F9C, 8

.section extabindex, "a"
.balign 4
.global eti_80016744
eti_80016744:
    .4byte fn_801F8658
    .4byte 0x000000C4
    .4byte etb_80008F9C
.size eti_80016744, 12
