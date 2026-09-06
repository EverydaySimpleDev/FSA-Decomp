.section extab, "a"
.balign 4
.global etb_8000A178
etb_8000A178:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000A178, 8

.section extabindex, "a"
.balign 4
.global eti_80017D7C
eti_80017D7C:
    .4byte fn_80214740
    .4byte 0x000001C0
    .4byte etb_8000A178
.size eti_80017D7C, 12

.text
.balign 4
.global fn_80214740

# fn_80214740(this, pos, dir, flag) - a chained multi-effect trigger,
# sibling of fn_802144F0/fn_802146A4/fn_80214E50 (batch2/this batch).
# Reads this->0x34->0x524 bit21 into a boolean (same idiom as
# fn_802146A4). Branches on this->0x34->0x50's sign:
#   >=0: fires FOUR sequential fn_8013CC50 effect calls at (pos,dir)
#        with literal IDs 0x1d6-0x1d9, then notifies the CONFIRMED
#        fn_801F0E34 handle primitive with ID 0x4d6.
#   <0:  selects one of two 3-entry 16-bit ID tables (lbl_8053FB90 or
#        lbl_8053FB98, chosen by `flag`), fires THREE fn_8013CC50 calls
#        using the table's entries as effect IDs, then calls the
#        not-yet-seen fn_801CDCD0(this->0x34, pos, dir) - a notify/
#        dispatch sibling of fn_80214900's fn_801CDC8C.
# The biggest chained-effect trigger seen in this cluster; confirms
# fn_8013CC50 as the project's central effect-lifecycle primitive.
#
# Attempted real-C++ promotion (session 4, 2026-09-05): full logic/
# semantics translated correctly (confirmed fn_801C0D70 returns its own
# arg - "this-preservation" pattern; fn_801CDCD0's true signature is 4
# params, the 4th a "tag" ternary 0x40048/0x4004e; `flag` needed `u8` not
# s32 for the byte-masked `clrlwi.` test). Got the function to the EXACT
# correct SIZE (0x1c0) with all logic byte-identical, but 24 of 112
# words (24 instructions) differ purely in REGISTER NUMBER/instruction
# ORDER, not logic:
#  - "gate" (bit21 flag) and "table" (id-table pointer) locals land in
#    r30/r31 SWAPPED vs retail (retail: gate=r31,table=r30; mine always
#    the opposite) - a 2-local register-pairing wall, same class as the
#    project's confirmed param-register-pairing wall but for 2 competing
#    plain locals instead of 2 params.
#  - retail evaluates `table[i]` (a `lhz`, non-relocated) BEFORE the SDA
#    float constant `lbl_8053FBA4` (a relocated `lfs`) as call args;
#    MWCC always evaluates the float arg first regardless of source
#    statement order - tried (1) hoisting `u16 id = table[i];` to a
#    named local declared before the call, (2) inlining the 4th arg's
#    ternary directly at the call site (unrelated 2nd issue, tested
#    together) - NEITHER changed a single byte of the output. This
#    ordering issue is NOT patchable via tools/patch_obj.py's simple
#    same-length substitution either, since it would require MOVING
#    the relocated `lfs` instruction to a different byte offset, which
#    would desync the .rela.text relocation entry (out of scope for
#    the current patch tool - would need relocation-entry-aware
#    patching, not implemented).
#  - the final `fn_801CDCD0` call's tag computation also reorders
#    (retail: compute tag into r6 FIRST using r3 as scratch, THEN load
#    sub/pos/dir into r3/r4/r5; mine: load sub/pos/dir first, THEN
#    compute tag into a different scratch reg r7) - same "argument
#    evaluation order fixed by compiler, not by source" symptom.
# Deferred after 2 attempts per standing discipline. Reverted to raw
# asm. NEW wall class: "call-argument evaluation order between a
# relocated SDA float load and a plain memory read is fixed by MWCC
# regardless of source statement order, and can't be patched via
# same-length substitution when it requires relocating a relocation."
fn_80214740:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 26, 3
    mr 27, 4
    mr 28, 5
    mr 29, 6
    li 31, 0x0
    lwz 3, 0x34(3)
    lwz 0, 0x524(3)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x41820008 # beq .L_80214778
    li 31, 0x1
L_80214778:
    bl fn_801C0D70
    lwz 0, 0x50(3)
    cmpwi 0, 0x0
    .4byte 0x418000BC # blt .L_80214840
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    mr 3, 27
    mr 4, 28
    mr 7, 31
    li 5, 0x1d6
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    mr 3, 27
    mr 4, 28
    mr 7, 31
    li 5, 0x1d7
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    mr 3, 27
    mr 4, 28
    mr 7, 31
    li 5, 0x1d8
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    mr 3, 27
    mr 4, 28
    mr 7, 31
    li 5, 0x1d9
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    lwz 3, 0x34(26)
    addi 4, 4, 0xd6
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000B0 # b .L_802148EC
L_80214840:
    clrlwi. 0, 29, 24
    .4byte 0x3BC2CBF0 # li r30, lbl_8053FB90@sda21
    .4byte 0x41820008 # beq .L_80214850
    .4byte 0x3BC2CBF8 # li r30, lbl_8053FB98@sda21
L_80214850:
    lhz 5, 0x0(30)
    mr 3, 27
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    mr 4, 28
    subi 7, 31, 0x1
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lhz 5, 0x2(30)
    mr 3, 27
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    mr 4, 28
    mr 7, 31
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lhz 5, 0x4(30)
    mr 3, 27
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    mr 4, 28
    mr 7, 31
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    clrlwi. 0, 29, 24
    lis 3, 0x4
    addi 6, 3, 0x48
    .4byte 0x41820008 # beq .L_802148DC
    addi 6, 3, 0x4e
L_802148DC:
    lwz 3, 0x34(26)
    mr 4, 27
    mr 5, 28
    bl fn_801CDCD0
L_802148EC:
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
