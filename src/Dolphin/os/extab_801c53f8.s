.section extab, "a"
.balign 4
.global etb_800080C8
etb_800080C8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800080C8, 8

.section extabindex, "a"
.balign 4
.global eti_8001528C
eti_8001528C:
    .4byte fn_801C53F8
    .4byte 0x00000054
    .4byte etb_800080C8
.size eti_8001528C, 12

# fn_801C53F8(this) - SLK2's OWN override of vtable slot 0x10 (a hook
# every other actor landed this session inherits generically as
# fn_801F5934, still unexamined). If the embedded sub-record's
# (fn_801C0D70(this)) own ->0x50 field is negative AND flag bit 0x2000
# is set on this->0x230, calls fn_801C12B8(subRecord) (new, not yet
# decompiled) - a conditional per-frame trigger gated on both the
# sub-record's own state and an actor flag.
#
# Attempted real-C++ promotion: retail's SECOND call to fn_801C0D70
# (right before fn_801C12B8) does NOT reload r3=this beforehand - it
# reuses whatever the FIRST call's return value left in r3 with no `mr`
# instruction, meaning either (a) fn_801C0D70 doesn't actually read its
# argument, or (b) retail's real source passed something other than
# `this` a second time. Writing `fn_801C0D70(this_)` explicitly for the
# second call forces a `mr r3,r31` retail doesn't have, growing the
# function by 1 instruction (0x58 vs 0x54). Needs the real signature of
# fn_801C0D70 understood before a correct C translation is possible -
# deferred, not a simple scheduling wall. Reverted to raw asm.
.text
.balign 4
.global fn_801C53F8

fn_801C53F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801C0D70
    lwz 0, 0x50(3)
    srwi 0, 0, 31
    xori 0, 0, 0x1
    clrlwi. 0, 0, 24
    .4byte 0x40820018 # bne .L_801C5438
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182000C # beq .L_801C5438
    bl fn_801C0D70
    bl fn_801C12B8
L_801C5438:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
