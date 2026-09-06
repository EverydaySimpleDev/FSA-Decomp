# fn_801F320C(this, playerIdx) - the full ownership-match predicate for
# SLK2's rail-riding/player-tracking cluster (project_fsa_slk2_rail_riding_core.md):
# true if playerIdx's group (fn_8023DE58) equals this actor's own group
# (this->0x4) [exact match], OR (playerIdx's group isn't the wildcard 8
# AND this->0x4==8) [the same wildcard-fallback test as fn_801F329C
# above]. Called by fn_801D05F8 (extab_801d05f8.s) as the fallback
# ownership test for actor types not in its first hardcoded type list.
#
# Attempted real-C++ promotion (Phase 4): a shared-tail-accumulator
# translation (matching the fn_801C11F0 boolean-predicate lesson) had
# the correct SIZE (0x90) but MWCC chose a substantially different
# register-allocation/stack-layout scheme throughout (not a narrow
# 1-2-instruction diff - the whole function body's register numbers
# and save order differ), unlike the near-miss residuals seen
# elsewhere. Deferred without further attempts - this needs a fresh
# structural idea, not a quick tweak.
.section extab, "a"
.balign 4
.global etb_80008E44
etb_80008E44:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008E44, 8

.section extabindex, "a"
.balign 4
.global eti_80016540
eti_80016540:
    .4byte fn_801F320C
    .4byte 0x00000090
    .4byte etb_80008E44
.size eti_80016540, 12

.text
.balign 4
.global fn_801F320C

fn_801F320C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lwz 31, 0x4(3)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    mr 3, 29
    bl fn_8023DE58
    cmpw 3, 31
    .4byte 0x41820030 # beq .L_801F3274
    mr 3, 29
    li 31, 0x0
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800014 # bge .L_801F326C
    lwz 0, 0x4(28)
    cmpwi 0, 0x8
    .4byte 0x40820008 # bne .L_801F326C
    li 31, 0x1
L_801F326C:
    clrlwi. 0, 31, 24
    .4byte 0x41820008 # beq .L_801F3278
L_801F3274:
    li 30, 0x1
L_801F3278:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
