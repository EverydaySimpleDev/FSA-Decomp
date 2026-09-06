/*
 * WARP-portal-actor cluster, part 10/12.
 *
 * fn_801EE508(this): calls fn_801CB71C(this+0x100, this->0xc, 0, -1)
 * then fn_801CB71C(this+0x104, this->0xc, 0, 1) - computes two points
 * offset from this->0xc (position) in opposite directions along some
 * axis, storing them into this->0x100 and this->0x104. Reads as
 * precomputing the portal's two entry/exit-side anchor points.
 *
 * Attempted real-C++ promotion (2 variants: inline `(char*)this_+0xc`
 * repeated at each call site; a named `pos` local shared by both
 * calls): both variants cause MWCC to hoist `this+0xc` into an extra
 * saved register (r30/r31 pair) and cache it across the intervening
 * call, growing the function by 3 instructions (0x5c vs retail's
 * 0x50) - retail instead recomputes the same address fresh at each
 * call site using only ONE saved register. Matches the general
 * "compiler-internal register-caching choice not controllable via
 * source phrasing" wall class. Reverted to raw asm.
 */
.section extab, "a"
.balign 4
.global etb_80008D54
etb_80008D54:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008D54, 8

.section extabindex, "a"
.balign 4
.global eti_800163D8
eti_800163D8:
    .4byte fn_801EE508
    .4byte 0x00000050
    .4byte etb_80008D54
.size eti_800163D8, 12

.text
.balign 4
.global fn_801EE508

fn_801EE508:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x0
    li 6, -0x1
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x100
    addi 4, 31, 0xc
    bl fn_801CB71C
    addi 3, 31, 0x104
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x1
    bl fn_801CB71C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
