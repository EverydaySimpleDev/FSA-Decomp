/*
 * FLME actor cluster, part 2/6 - top-level update() wrapper.
 *
 * fn_8015DEFC(this): calls fn_8015EA2C (part 4/6, the trigger/retire
 * dispatcher) first, then (unless this->0x230==5) calls fn_8015DF7C
 * (part 3/6, the real per-frame state logic). Finally decrements 3
 * countdown timers (this->0x234/0x238/0x23c) by 1 each if positive -
 * the same "decrement N timers" idiom used by BOYO/FARY.
 *
 * Attempted real-C++ promotion (Phase 4): the first 2 timer decrements
 * and all control flow matched exactly, but the 3rd (this->0x23c)
 * writes back via a DIFFERENT computed address than it reads from -
 * retail hoists `addi r4,r31,0x8` early and stores the decremented
 * value via `stw r0,0x234(r4)` (mathematically this+8+0x234 ==
 * this+0x23c, just a different immediate split) - landed 4 bytes SHORT
 * with a direct `this+0x23c` store. Tried reproducing via an explicit
 * `char* sub = this+8;` intermediate pointer for just the write side:
 * MWCC constant-folded `sub+0x234` back to `this+0x23c` at compile time
 * regardless, identical wrong output. Deferred after 2 attempts - not
 * reachable via source-level pointer-arithmetic phrasing since the
 * optimizer unifies any two expressions that are provably the same
 * address.
 */
.section extab, "a"
.balign 4
.global etb_80007004
etb_80007004:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007004, 8

.section extabindex, "a"
.balign 4
.global eti_80013B94
eti_80013B94:
    .4byte fn_8015DEFC
    .4byte 0x00000080
    .4byte etb_80007004
.size eti_80013B94, 12

.text
.balign 4
.global fn_8015DEFC

fn_8015DEFC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8015EA2C
    lwz 0, 0x230(31)
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_8015DF28
    mr 3, 31
    bl fn_8015DF7C
L_8015DF28:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015DF3C
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_8015DF3C:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015DF50
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_8015DF50:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8015DF68
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_8015DF68:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
