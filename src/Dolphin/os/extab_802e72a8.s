# fn_802E72A8 - WAVE: update() (0x84)
# Sends a state-advance message to the owned wave-controller sub-object
# (this->0x230, allocated in setParams) via its own vtable slot 0x14, first
# with code 0x33c; once this->0x234 leaves its initial 0 state, resends with
# code 0x33d and locks this->0x234 to that state permanently.
#
# Attempted real-C++ promotion (Phase 4): control flow/args/message codes
# all confirmed correct (a manual pointer-cast dispatch through
# sub+0x8+0x14 matches retail's ADDRESSING exactly), but retail's actual
# bytes chain BOTH loads through r12 (`lwz r12,0x8(r3); lwz
# r12,0x14(r12)`) while every phrasing tried (named locals, a single
# fully-inlined expression) makes MWCC allocate a separate intermediate
# register (r5) for the first load instead of reusing r12 throughout. The
# established real-`virtual`-member trick (reference_fsa_virtual_dispatch_
# codegen_trick.md) gets the r12-chaining right but assumes the vtable
# pointer sits at offset 0 of the target object - here it's at offset 8
# (a multiple-inheritance sub-object layout), and combining both
# requirements (right offset AND r12-chaining) wasn't achieved. Reverted
# to raw asm after 2 attempts.
.section extab, "a"
.balign 4
.global etb_8000D064
etb_8000D064:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D064, 8

.section extabindex, "a"
.balign 4
.global eti_8001C1E0
eti_8001C1E0:
    .4byte fn_802E72A8
    .4byte 0x00000084
    .4byte etb_8000D064
.size eti_8001C1E0, 12

.text
.balign 4
.global fn_802E72A8

fn_802E72A8:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, 0x3
    stw 0, 0x24(1)
    addi 0, 4, 0x3c
    addi 4, 1, 0xc
    stw 31, 0x1c(1)
    mr 31, 3
    stw 0, 0xc(1)
    lwz 3, 0x230(3)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_802E7318
    li 0, 0x3c
    lis 3, 0x3
    stw 0, 0x234(31)
    addi 0, 3, 0x3d
    addi 4, 1, 0x8
    stw 0, 0x8(1)
    lwz 3, 0x230(31)
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
L_802E7318:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
