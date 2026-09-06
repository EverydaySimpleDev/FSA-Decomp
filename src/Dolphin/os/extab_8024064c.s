# fn_8024064C(this) - forwards this->0x4 (a sub-object pointer) into the
# not-yet-decompiled fn_8022EA0C and returns its result directly.
#
# Attempted real-C++ promotion (Phase 4): matches the well-established
# prologue-LR-save-placement wall (7th+ confirmed instance overall, this
# session's first non-float case) - retail loads the arg (`lwz r3,0x4(r3)`)
# BEFORE storing LR (`stw r0,0x14(r1)`), while MWCC always stores LR first
# regardless of source statement order (tried a single-expression call, a
# pre-declared local, AND an empty `asm { }` scheduling-barrier statement
# inserted between the local and the call - all three produced BYTE-
# IDENTICAL wrong output, LR-save still before the load). The barrier
# idea confirms the prologue is emitted as a fixed block by MWCC's code
# generator BEFORE any user-code scheduling considerations, unreachable
# from source-level tricks of any kind tried so far. Deferred - do not
# re-attempt this wall via new source phrasings without a genuinely new
# angle (a compiler flag/pragma discovery, not another asm/local variant).
.section extab, "a"
.balign 4
.global etb_8000B2B0
etb_8000B2B0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B2B0, 8

.section extabindex, "a"
.balign 4
.global eti_800196FC
eti_800196FC:
    .4byte fn_8024064C
    .4byte 0x00000024
    .4byte etb_8000B2B0
.size eti_800196FC, 12

.text
.balign 4
.global fn_8024064C

fn_8024064C:
    stwu 1, -0x10(1)
    mflr 0
    lwz 3, 0x4(3)
    stw 0, 0x14(1)
    bl fn_8022EA0C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
