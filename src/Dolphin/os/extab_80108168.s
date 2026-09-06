/*
 * fn_80108168 (0x80108168-0x801081EC, 0x88/136 bytes) - the constructor for the
 * fn_80107360-class (embeds the "timed-cue lookup table" shared component at +0x230/+0x254,
 * confirmed via fn_801080E8's destructor - see project_fsa_multiple_inheritance_pattern.md).
 * Calls Actor_ctor (an unidentified base-class constructor step, seen for the first time
 * this session), sets the primary vtable to lbl_8049CCF0, then fn_801D267C(this+0x230) -
 * the confirmed compact constructor for that component (contrast with fn_80107F38's
 * setup(), which drives the same component via 3 separate calls:
 * fn_801D2608/fn_801D22DC/fn_801D1F14 - fn_801D267C is CONFIRMED as this component's own
 * constructor entry point, not a wrapper).
 *
 * Zero-inits the full state-machine field block consumed by fn_80107660/fn_80107F38:
 * this->0x268=1, 0x269=0, 0x26a=0, 0x26c=-1 (no accepted candidate yet), 0x270=0, 0x274=0,
 * 0x278=0, 0x27c=0, and 0x280/0x284/0x288/0x28c/0x290 all set to the same repeated
 * constant lbl_8053C2C0 (matches fn_80107F38's use of the identical constant for its own
 * 0x80-0x8c float block).
 *
 * Has a DESTROYBASE unwind action targeting dtor_801F593C at member 0(this) - if
 * construction throws after the primary vtable is set but before completion, the
 * primary base gets destroyed - same shape as fn_80105368-class's constructor
 * (fn_80105A34).
 *
 * Attempted real-C++ promotion (Phase 4): matched retail except a
 * float-load-vs-`mr r3,r31` scheduling wall MWCC wouldn't follow via
 * source reordering (moving the float declaration earlier fixed this one
 * swap but forced an unrelated cross-call-boundary FPR-spill regression
 * that broke a much larger surrounding region - reverted that attempt
 * immediately). Reverted to raw asm; see
 * project_fsa_phase4_resumed_session2.md.
 */

.section extab, "a"
.balign 4
.global etb_80005AE8
etb_80005AE8:
    .4byte 0x080A0000
    .4byte 0x0000002C
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801F593C
.size etb_80005AE8, 28

.section extabindex, "a"
.balign 4
.global eti_80011F38
eti_80011F38:
    .4byte fn_80108168
    .4byte 0x00000088
    .4byte etb_80005AE8
.size eti_80011F38, 12

.text
.balign 4
.global fn_80108168

fn_80108168:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Actor_ctor
    lis 4, lbl_8049CCF0@ha
    addi 3, 31, 0x230
    addi 0, 4, lbl_8049CCF0@l
    stw 0, 0x0(31)
    bl fn_801D267C
    li 0, 0x1
    li 4, 0x0
    stb 0, 0x268(31)
    li 0, -0x1
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    mr 3, 31
    stb 4, 0x269(31)
    stb 4, 0x26a(31)
    stw 0, 0x26c(31)
    stw 4, 0x270(31)
    stw 4, 0x274(31)
    stw 4, 0x278(31)
    stw 4, 0x27c(31)
    stfs 0, 0x280(31)
    stfs 0, 0x284(31)
    stfs 0, 0x288(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x290(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
