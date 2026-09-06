/*
 * IDENTIFIED: this is ZLDA - "Princess Zelda" (this ctor's own address, fn_8010AFC4, matches
 * reference_fsa_actor_dispatch_table.md's ZLDA entry exactly, as does the vtable lbl_8049CEE0
 * set below - see extab_80109534.s's header note and project_fsa_zlda_actor_progress.md, which
 * already fully decompiled this exact constructor).
 *
 * fn_8010AFC4 (0x8010AFC4-0x8010B05C, 0x9C/156 bytes) - ZLDA's real constructor. Calls
 * Actor_ctor (same base-construction step confirmed for the other
 * classes' constructors that embed the "timed-cue lookup table" shared component - see
 * project_fsa_multiple_inheritance_pattern.md), sets the primary vtable to lbl_8049CEE0
 * (matches fn_8010AF3C's dtor exactly), zero/sentinel-inits the full state block consumed by
 * every method landed for this class (this->0x2f8/0x2fc/0x300/0x304=-1/0x308/0x30c/0x310=-1/
 * 0x314/0x31c=-1/0x320/0x324/0x328/0x32c/0x330/0x334/0x338/0x339), then
 * fn_801D267C(this+0x33c) - that shared component's own constructor. Has a DESTROYBASE
 * unwind action targeting
 * dtor_801F593C. CLOSES the loop: all landed functions for this class (fn_80109534/
 * fn_801096C8/fn_80109AE0/fn_80109D78/fn_80109FA4/fn_8010AE10/fn_8010AF3C/fn_8010AFC4) are
 * confirmed as one class.
 *
 * Attempted real-C++ promotion (Phase 4): matched retail except a
 * multi-float-load scheduling wall MWCC wouldn't follow via source
 * reordering (multiple tried variants) - same class of issue as
 * Snwl_ctor_8012E780.s. Reverted to raw asm; see
 * project_fsa_phase4_resumed_session2.md.
 */

.section extab, "a"
.balign 4
.global etb_80005BCC
etb_80005BCC:
    .4byte 0x080A0000
    .4byte 0x00000084
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801F593C
.size etb_80005BCC, 28

.section extabindex, "a"
.balign 4
.global eti_80012034
eti_80012034:
    .4byte fn_8010AFC4
    .4byte 0x0000009C
    .4byte etb_80005BCC
.size eti_80012034, 12

.text
.balign 4
.global fn_8010AFC4

fn_8010AFC4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Actor_ctor
    lis 3, lbl_8049CEE0@ha
    li 5, 0x0
    addi 0, 3, lbl_8049CEE0@l
    li 4, -0x1
    stw 0, 0x0(31)
    li 0, 0x1
    .4byte 0xC0229448 # lfs f1, lbl_8053C3E8@sda21(r0)
    addi 3, 31, 0x33c
    stb 5, 0x2f8(31)
    .4byte 0xC0029440 # lfs f0, lbl_8053C3E0@sda21(r0)
    stw 5, 0x2fc(31)
    stw 4, 0x300(31)
    stw 4, 0x304(31)
    stw 5, 0x308(31)
    stw 5, 0x30c(31)
    stw 4, 0x310(31)
    stw 5, 0x314(31)
    stw 4, 0x31c(31)
    stw 5, 0x320(31)
    stw 5, 0x324(31)
    stw 5, 0x328(31)
    stw 5, 0x32c(31)
    stfs 1, 0x330(31)
    stfs 0, 0x334(31)
    stb 0, 0x338(31)
    stb 0, 0x339(31)
    bl fn_801D267C
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
