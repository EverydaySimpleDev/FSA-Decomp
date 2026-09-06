# GNON (Ganon, vtable lbl_804A25F0, a genuine 23-slot vtable) cluster,
# part 1/8. fn_80192038 - slot 9 override. Calls fn_801F0E34(0x40006)
# (a settings-gated notification/event dispatcher, magic constant not
# pinned down), then makes a VIRTUAL call to this object's own vtable
# slot 10 with (this, 2, FLOAT_CONST, FLOAT_CONST) - notably GNON does
# NOT override slot 10 itself, so this just reaches the shared base
# default through virtual dispatch. Fully understood from an earlier
# session's direct decompilation - see project_fsa_gnon_actor_progress.
#
# Attempted real-C++ promotion (Phase 4): logic/params fully correct
# (confirmed byte-for-byte except the vtable dispatch sequence), but
# the virtual call through `(*(void***)this_)[10]` with 2 FLOAT
# arguments keeps materializing the vtable pointer into r5 before
# indexing into r12, instead of retail's direct r12-chained
# `lwz r12,0x0(r31); lwz r12,0x28(r12)`. This is the SAME symptom the
# `fn_803DA878` fix solved for a plain-int virtual call, but 2 variants
# here (a named float local; inlining the global twice) both failed to
# reproduce the direct chain when float args are mixed in. Same class
# of issue as the broader register-allocation-wall family this
# session. Reverted to raw asm; see
# project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_8000779C
etb_8000779C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000779C, 8

.section extabindex, "a"
.balign 4
.global eti_80014560
eti_80014560:
    .4byte fn_80192038
    .4byte 0x00000058
    .4byte etb_8000779C
.size eti_80014560, 12

.text
.balign 4
.global fn_80192038

fn_80192038:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, 0x4
    li 5, 0x0
    stw 0, 0x14(1)
    addi 4, 4, 0x6
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F0E34
    mr 3, 31
    .4byte 0xC022B2D8 # lfs f1, lbl_8053E278@sda21(r0)
    lwz 12, 0x0(31)
    li 4, 0x2
    fmr 2, 1
    lwz 12, 0x28(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

