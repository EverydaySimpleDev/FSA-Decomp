.section extab, "a"
.balign 4
.global etb_800094C4
etb_800094C4:
    .4byte 0x08080000
    .4byte 0x0000004C
    .4byte 0x00000024
    .4byte 0x00000054
    .4byte 0x00000018
    .4byte 0x00000000
    .4byte 0x0780001F
    .4byte 0x00000244
    .4byte dtor_80105D80
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801F593C
.size etb_800094C4, 48

.section extabindex, "a"
.balign 4
.global eti_80016D20
eti_80016D20:
    .4byte fn_8020166C
    .4byte 0x0000006C
    .4byte etb_800094C4
.size eti_80016D20, 12

# fn_8020166C - "OPGA" real constructor. Base Actor ctor (Actor_ctor) + install vtable + its own
# field defaults, then embeds TWO SEPARATE blend-timer sub-objects
# (the confirmed fn_801D267C helper, see extab_801d0f40.s) at +0x244
# and +0x27c. Attempted real-C++ promotion (Phase 4): a genuine C++
# version compiled to a different (smaller) size than retail for reasons
# not yet root-caused - initially looked like interference with the
# unrelated fn_801070B4 (~1MB away), but isolating each independently
# proved fn_801070B4 was already fine on its own and this file's own
# size mismatch is unrelated. Reverted to raw asm pending a fresh
# investigation with more targeted diagnostics. See
# project_fsa_phase4_resumed_session2.md.
.text
.balign 4
.global fn_8020166C

fn_8020166C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Actor_ctor
    lis 3, lbl_8049E350@ha
    li 4, 0x0
    addi 3, 3, lbl_8049E350@l
    li 0, -0x1
    stw 3, 0x0(31)
    addi 3, 31, 0x244
    stb 4, 0x230(31)
    stb 4, 0x231(31)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    bl fn_801D267C
    addi 3, 31, 0x27c
    bl fn_801D267C
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
