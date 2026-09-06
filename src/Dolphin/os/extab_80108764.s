/*
 * fn_80108764 (0x80108764-0x801087F0, 0x90/144 bytes) - a "setup(this)" method for the 3rd
 * class this session found embedding the "timed-cue lookup table" shared component (base
 * dtor fn_80108414, spawn fn_80108494, update fn_80108568 - see
 * project_fsa_multiple_inheritance_pattern.md) - the exact structural analog of fn_80107F38
 * for the 2nd such class.
 *
 * Calls fn_801F5938 (unidentified base-class step, new this session), initializes a float
 * block at this->0x60-0x8c from lbl_8053C31C/8053C320/8053C324 constants (a DIFFERENT
 * constant set than fn_80107F38's lbl_8053C2F8-family - each MI-embedding class appears to
 * carry its own easing-constant table) and this->0x108=0.
 *
 * Then calls fn_801D2608(this+0x238, 0, 2, 0), fn_801D22DC(this+0x238, ...),
 * fn_801D1F14(this+0x238, ...) - the SAME 3-call component init sequence confirmed for the
 * 2nd such class's fn_80107F38, here at +0x238. This is the FOURTH independent confirmation
 * this session that +0x238 is where this class embeds the shared component (destructor
 * guard, update()'s tail call, and now this setup method all agree).
 */

.section extab, "a"
.balign 4
.global etb_80005B24
etb_80005B24:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005B24, 8

.section extabindex, "a"
.balign 4
.global eti_80011F74
eti_80011F74:
    .4byte fn_80108764
    .4byte 0x00000090
    .4byte etb_80005B24
.size eti_80011F74, 12

.text
.balign 4
.global fn_80108764

fn_80108764:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    .4byte 0xC042937C # lfs f2, lbl_8053C31C@sda21(r0)
    li 0, 0x0
    .4byte 0xC0229380 # lfs f1, lbl_8053C320@sda21(r0)
    addi 3, 31, 0x238
    stfs 2, 0x60(31)
    .4byte 0x388D8318 # li r4, lbl_80539ED8@sda21
    .4byte 0xC0029384 # lfs f0, lbl_8053C324@sda21(r0)
    li 5, 0x1
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 0, 0x80(31)
    stfs 0, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 0, 0x108(31)
    bl fn_801D2608
    addi 3, 31, 0x238
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229384 # lfs f1, lbl_8053C324@sda21(r0)
    addi 3, 31, 0x238
    bl fn_801D1F14
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

