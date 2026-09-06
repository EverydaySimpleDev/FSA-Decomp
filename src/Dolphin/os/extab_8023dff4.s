/*
 * Companion-fairy hint-dispatch template, instance 3/3.
 *
 * fn_8023DFF4(playerIdx, vecPtr): identical lookup+bounds-check+flag-gate
 * shape as fn_8022CD48/fn_80230FD0; on success, tail-dispatches
 * fn_80252F14(companionObj, vecPtr) - vecPtr (this wrapper's own second
 * argument, e.g. a direction/aim vector built by the caller) is passed
 * straight through unused by this wrapper's own body.
 *
 * fn_80252F14 itself is NOT landed here: it sits inside a large
 * multi-function fused block (auto_03_80252BAC..80256410, ~0x2864 bytes)
 * that dtk could not cleanly separate into individual functions, so
 * cherry-picking just this one callee would risk the boundary failure
 * documented in project_fsa_vtable_slot_0x34_resolved.md. Deferred to a
 * future session that maps that whole block properly.
 */
.section extab, "a"
.balign 4
.global etb_8000B198
etb_8000B198:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B198, 8

.section extabindex, "a"
.balign 4
.global eti_80019570
eti_80019570:
    .4byte fn_8023DFF4
    .4byte 0x0000008C
    .4byte etb_8000B198
.size eti_80019570, 12

.text
.balign 4
.global fn_8023DFF4

fn_8023DFF4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x41820068 # beq .L_8023E070
    .4byte 0x4082000C # bne .L_8023E018
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023E058
L_8023E018:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023E028
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023E058
L_8023E028:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023E038
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023E058
L_8023E038:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023E054
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023E058
L_8023E054:
    lbz 0, 0xcac(5)
L_8023E058:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8023E070
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_80252F14
L_8023E070:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

