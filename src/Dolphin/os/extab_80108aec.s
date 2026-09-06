/*
 * fn_80108AEC (0x80108AEC-0x80108C34, 0x148/328 bytes) - likely the "spawn/trigger effect"
 * method for the 4th class this session found embedding the "timed-cue lookup table" shared
 * component (base dtor just landed as fn_80108A6C - see
 * project_fsa_multiple_inheritance_pattern.md). Calls fn_801F5778 first (the SAME
 * unidentified base-class step confirmed at the start of fn_80108494, the 3rd such class's
 * own spawn method - reinforcing these are sibling methods across different classes
 * embedding the same shared component, not coincidence).
 *
 * Builds two stack structures: a 16-byte identity index array (stack[8..0x18] = 0,1,2,...,15,
 * written via an unrolled/looped byte-store sequence) and a ~40-byte config struct
 * (stack+0x18..0x40) with several boolean/enum fields (mostly 0/1, one field=3, one=2 stored
 * as a float via lbl_8053C368, one=-1 sentinel at two offsets) - not individually understood.
 * Then calls the CONFIRMED **fn_801F02BC** (the "scale-variant wrapper around fn_801F06F0"
 * spawn primitive, see project_fsa_shared_effect_subsystem_crossref.md) with
 * `this->0x240+0x17b` as the position/config offset and the two stack structures as
 * additional params.
 */

.section extab, "a"
.balign 4
.global etb_80005B58
etb_80005B58:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005B58, 8

.section extabindex, "a"
.balign 4
.global eti_80011FA4
eti_80011FA4:
    .4byte fn_80108AEC
    .4byte 0x00000148
    .4byte etb_80005B58
.size eti_80011FA4, 12

.text
.balign 4
.global fn_80108AEC

fn_80108AEC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    bl fn_801F5778
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_80108B7C
L_80108B1C:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_80108B7C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80108B1C
    li 11, 0x0
    li 10, 0x1
    li 12, -0x1
    li 5, 0x3
    li 0, 0x2
    .4byte 0xC02293C8 # lfs f1, lbl_8053C368@sda21(r0)
    stw 12, 0x18(1)
    lis 3, lbl_8046404C@ha
    fmr 2, 1
    addi 4, 3, lbl_8046404C@l
    stw 11, 0x1c(1)
    mr 3, 31
    addi 6, 1, 0x8
    li 7, 0x7
    stw 11, 0x20(1)
    li 8, 0x0
    li 9, 0x0
    stb 11, 0x24(1)
    stb 11, 0x25(1)
    stb 11, 0x26(1)
    stb 10, 0x27(1)
    stb 10, 0x28(1)
    stb 11, 0x29(1)
    stb 11, 0x2a(1)
    stb 11, 0x2b(1)
    stb 11, 0x2c(1)
    stb 11, 0x2d(1)
    stb 10, 0x2e(1)
    stw 5, 0x30(1)
    stb 10, 0x34(1)
    stb 11, 0x35(1)
    stb 11, 0x36(1)
    stw 12, 0x38(1)
    stw 11, 0x3c(1)
    stw 0, 0x40(1)
    lwz 5, 0x240(31)
    addi 5, 5, 0x17b
    bl fn_801F02BC
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

