# 901KB-gap non-actor manager block: 1 function(s), 348 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800111D4
etb_800111D4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800111D4, 8

.section extabindex, "a"
.balign 4
.global eti_800210B8
eti_800210B8:
    .4byte fn_80442810
    .4byte 0x0000015C
    .4byte etb_800111D4
.size eti_800210B8, 12

#
# Attempted real-C++ promotion (Phase 4): fully traced (one-time lazy
# init of 2 audio-resource-loader objects - a BAA archive + a Seqs ARC,
# format strings packed in the data blob `lbl_8048FB10` - via
# fn_804019A8/fn_80401E10, bailing early on creation failure; once both
# objects report state==1, prints a debug message, calls fn_80459AE4/
# fn_800838F4, calls each object's vtable-slot-2 notify(1), prints a
# 2nd debug message, marks this->0x4 done). Landed the ENTIRE logic and
# matched retail's exact SIZE (0x15C), but hit 2 SEPARATE already-
# confirmed walls simultaneously:
# 1. Param-vs-derived-local register pairing: retail assigns
#    this_->r30, base(=&lbl_8048FB10)->r31; MWCC always assigns the
#    OPPOSITE (this_->r31, base->r30) regardless of declaration order
#    (2 variants tried: `p`/`base` order swapped) or `register`
#    keyword on the parameter - see
#    reference_fsa_param_register_pairing_wall_investigation.md. This
#    is the SAME wall class already conclusively confirmed unfixable
#    (fn_800F51D8/fn_800FAB50/fn_801F15BC), now shown to ALSO apply
#    when one of the 2 competing values is a derived local rather than
#    a 2nd incoming parameter.
# 2. Non-zero-offset multiple-inheritance vtable dispatch: the 2
#    `obj->vtableSlot2(1)` notify calls use a sub-object vtable at
#    `obj+0x8` (not offset 0), but retail's implicit `this` argument
#    for the call is the ORIGINAL `obj` pointer (UNCHANGED), while the
#    vtable fetch itself reads from `obj+8`. The established real-C++-
#    virtual-dispatch trick (see
#    reference_fsa_virtual_dispatch_codegen_trick.md) requires casting
#    the pointer itself to the dummy-vtable struct type, which computes
#    `self = obj+8` via a fused `lwzu` (auto-incrementing load) and
#    then uses THAT modified pointer as `this` for the call - wrong
#    call-argument value, not just a register-choice quirk. This is the
#    EXACT SAME shape already deferred as an unsolved wall for
#    `fn_802E72A8` (batch 18: "Satisfying BOTH the non-zero vtable
#    offset AND r12-chaining wasn't achieved") - confirms it's a
#    genuine, recurring class of case, not a one-off.
# Deferred without further attempts on either symptom, both already
# well-characterized; the full understood semantics above are ready
# for a future landing attempt if either wall is ever solved.
.text
.balign 4
.global fn_80442810

fn_80442810:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lis 3, lbl_8048FB10@ha
    lbz 0, 0x4(30)
    addi 31, 3, lbl_8048FB10@l
    cmplwi 0, 0x0
    .4byte 0x4082011C # bne .L_80442954
    .4byte 0x800D9328 # lwz r0, lbl_8053AEE8@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8044286C
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x0
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x2
    lwz 5, 0x4(5)
    bl fn_804019A8
    cmplwi 3, 0x0
    .4byte 0x906D9328 # stw r3, lbl_8053AEE8@sda21(r0)
    .4byte 0x418200EC # beq .L_80442954
L_8044286C:
    .4byte 0x800D932C # lwz r0, lbl_8053AEEC@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_8044289C
    lis 4, lbl_80529DEC@ha
    addi 3, 31, 0x24
    addi 5, 4, lbl_80529DEC@l
    li 4, 0x1
    lwz 5, 0x4(5)
    bl fn_80401E10
    cmplwi 3, 0x0
    .4byte 0x906D932C # stw r3, lbl_8053AEEC@sda21(r0)
    .4byte 0x418200BC # beq .L_80442954
L_8044289C:
    .4byte 0x806D9328 # lwz r3, lbl_8053AEE8@sda21(r0)
    lbz 0, 0x4(3)
    cmplwi 0, 0x1
    .4byte 0x408200AC # bne .L_80442954
    .4byte 0x806D932C # lwz r3, lbl_8053AEEC@sda21(r0)
    lbz 0, 0x4(3)
    cmplwi 0, 0x1
    .4byte 0x4082009C # bne .L_80442954
    addi 3, 31, 0x4c
    crclr 6
    bl OSReport
    .4byte 0x80CD9328 # lwz r6, lbl_8053AEE8@sda21(r0)
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    .4byte 0x80ED932C # lwz r7, lbl_8053AEEC@sda21(r0)
    lwz 3, 0xc(4)
    lis 5, 0x80
    lwz 4, 0x4(4)
    lwz 6, 0x14(6)
    lwz 7, 0x14(7)
    bl fn_80459AE4
    .4byte 0x806D9328 # lwz r3, lbl_8053AEE8@sda21(r0)
    li 4, 0x0
    lwz 3, 0x14(3)
    bl fn_800838F4
    .4byte 0x806D9328 # lwz r3, lbl_8053AEE8@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80442920
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80442920:
    .4byte 0x806D932C # lwz r3, lbl_8053AEEC@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80442940
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80442940:
    addi 3, 31, 0x64
    crclr 6
    bl OSReport
    li 0, 0x1
    stb 0, 0x4(30)
L_80442954:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

