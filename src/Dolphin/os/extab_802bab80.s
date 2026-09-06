/*
 * FIRE (burning status-effect actor) cluster, part 1/9. Not called by
 * any of the other 8 functions in this cluster - likely invoked from
 * FIRE's own top-level dispatcher outside this gap, matching the
 * `fn_8015DE10` (FLME) / `fn_8016636C` (ARRW) pattern seen this session.
 *
 * fn_802BAB80(this): if this->0x291 (byte)==1: snaps this->0xc/0x14
 * (position) from a cached vec3 at this->0x248/0x250 - a "restore
 * committed position" step (the same 0x248/0x250 cache the core
 * update(), part 6/9, writes every frame). Otherwise: queues cue 0x32e
 * via the confirmed fn_801F0E34, then invokes a virtual method (vtable
 * slot 0x24) - a generic "on state enter" hook.
 *
 * Attempted real-C++ promotion: the virtual dispatch (a real C++
 * `struct` with 7 dummy virtuals + the target, per
 * reference_fsa_virtual_dispatch_codegen_trick.md) matched retail
 * EXACTLY. The position-restore copy did not: 2 variants (a whole
 * 3-float struct assignment; a split 2-float struct + 1 scalar float)
 * both produced 3 SCALAR lfs/stfs pairs instead of retail's
 * paired-single (psq_l/psq_st for x/y) + 1 scalar (z), landing 4 bytes
 * too big (0x70 vs 0x6c). Same "build/copy a Vec3, needs ps codegen"
 * wall as fn_80221114/fn_801EDBA4 - 3rd confirmed instance this
 * session. Reverted to raw asm.
 */
.section extab, "a"
.balign 4
.global etb_8000C89C
etb_8000C89C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000C89C, 8

.section extabindex, "a"
.balign 4
.global eti_8001B664
eti_8001B664:
    .4byte fn_802BAB80
    .4byte 0x0000006C
    .4byte etb_8000C89C
.size eti_8001B664, 12

.text
.balign 4
.global fn_802BAB80

fn_802BAB80:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x291(3)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_802BABB4
    psq_l 1, 0x248(31), 0, 0
    lfs 0, 0x250(31)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    .4byte 0x48000028 # b .L_802BABD8
L_802BABB4:
    lis 4, 0x3
    li 5, 0x0
    addi 4, 4, 0x2e
    bl fn_801F0E34
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_802BABD8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
