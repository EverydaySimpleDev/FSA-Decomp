.section extab, "a"
.balign 4
.global etb_8000A5B0
etb_8000A5B0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A5B0, 8

.section extabindex, "a"
.balign 4
.global eti_80018394
eti_80018394:
    .4byte fn_80220F54
    .4byte 0x000001C0
    .4byte etb_8000A5B0
.size eti_80018394, 12

# fn_80220F54(this) - a SHARED draw() used DIRECTLY (no override) by 6+
# distinct actor vtables (confirmed via a raw pointer scan of the DOL,
# the same technique that found fn_801CDD58's 40-user update() - see
# project_fsa_rope_shared_update_dispatcher.md). Builds the standard
# shared material struct, then a per-ownerID byte-flag lookup (survey-
# level: `GetRoomConfigRecord()` return value indexed by `this->0x4` at a large
# fixed offset - the exact base object isn't confirmed, unlike OKTA's
# call to the same function which clearly takes `this` and reads small
# offsets 0xcc-0xd8 - these may be different overloads/uses of the same
# symbol) that can force-disable the material's blend flag.
#
# Branches on `this->0x248` (the SAME "draw mode" field TINK's setParams/
# dtor/draw all key off) exactly like TINK:
#  - mode==2: draws via the CONFIRMED render primitive `fn_801EF574`
#    using a shared model table (`lbl_8046AAA0`) - the "captured/
#    attached"-style single-primitive path.
#  - else: draws via the CONFIRMED universal primitive `fn_801F06F0`
#    (same model table, scale constant `lbl_8053FE74`, flag=7), then
#    ALWAYS calls `fn_80307830` (this->0x198, this->0x4, this+0xc,
#    this->0x280, 0, 1, 0, 4) - the newly-decompiled sibling of
#    `fn_803075AC` (see extab_803075ac.s/extab_80307830.s) that
#    registers a "transient effect marker" for whichever player
#    currently tracks this actor as its owner.
.text
.balign 4
.global fn_80220F54

fn_80220F54:
    stwu 1, -0x50(1)
    mflr 0
    li 10, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 9, 1, 0x8
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_80220FE4
L_80220F84:
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
L_80220FE4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80220F84
    li 7, 0x0
    li 8, -0x1
    stb 7, 0x36(1)
    li 6, 0x1
    li 5, 0x3
    li 4, 0x2
    li 0, 0x40
    stw 8, 0x38(1)
    li 3, 0xe
    stw 8, 0x18(1)
    stw 7, 0x1c(1)
    stw 7, 0x20(1)
    stb 7, 0x24(1)
    stb 7, 0x25(1)
    stb 7, 0x26(1)
    stb 6, 0x27(1)
    stb 6, 0x28(1)
    stb 7, 0x29(1)
    stb 7, 0x2a(1)
    stb 7, 0x2b(1)
    stb 7, 0x2c(1)
    stb 7, 0x2d(1)
    stb 6, 0x2e(1)
    stw 5, 0x30(1)
    stb 6, 0x34(1)
    stb 7, 0x35(1)
    stw 7, 0x3c(1)
    stw 4, 0x40(1)
    stw 3, 0x38(1)
    stb 0, 0x36(1)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8022108C
    li 0, 0x0
    stb 0, 0x27(1)
L_8022108C:
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_802210B4
    lis 3, lbl_8046AAA0@ha
    lwz 4, 0x280(31)
    addi 3, 3, lbl_8046AAA0@l
    addi 5, 31, 0xc
    addi 6, 1, 0x8
    bl fn_801EF574
    .4byte 0x4800004C # b .L_802210FC
L_802210B4:
    .4byte 0xC022CED4 # lfs f1, lbl_8053FE74@sda21(r0)
    lis 3, lbl_8046AAA0@ha
    addi 4, 3, lbl_8046AAA0@l
    lwz 5, 0x280(31)
    fmr 2, 1
    mr 3, 31
    addi 6, 1, 0x8
    li 7, 0x7
    bl fn_801F06F0
    lwz 3, 0x198(31)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 6, 0x280(31)
    li 8, 0x1
    li 9, 0x0
    li 10, 0x4
    bl fn_80307830
L_802210FC:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

