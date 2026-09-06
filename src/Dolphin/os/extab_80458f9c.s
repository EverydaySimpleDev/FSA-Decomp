.section extab, "a"
.balign 4
.global etb_800116D8
etb_800116D8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800116D8, 8

.section extabindex, "a"
.balign 4
.global eti_80021688
eti_80021688:
    .4byte fn_80458F9C
    .4byte 0x00000054
    .4byte etb_800116D8
.size eti_80021688, 12

# fn_80458F9C - notifies an EXTERNAL object (passed in r3, not
# necessarily the caller's own `this` - e.g. the DM-family cluster calls
# this with r3 = a value loaded from the global lbl_8053AF80, not
# themselves) with a fixed argument (r4): if that object's +0x80 field
# is set, makes a plain (non-virtual) call to fn_800256C8(object) first,
# then resets 5 of its own fields (+0x58/+0x5c/+0x60/+0x64/+0x68) to
# 0/-1 defaults. Reads as a deregister-from/reset-a-shared-external-
# resource-pool-object call - the exact subsystem (fn_800256C8 itself,
# lbl_8053AF80's real type) is not traced further.
#
# Attempted real-C++ promotion (2 variants: bare `return 0;` literal;
# a shared `s32 zero=0;` local reused for both the field stores and the
# return): retail reuses the SAME register (r3) for the zero constant
# used in the field stores AND the eventual return value, needing only
# ONE `li` instruction total; MWCC always allocates a SEPARATE fresh
# register for the return value regardless of whether a shared local is
# used. Matches the documented "dead-register reuse" wall class (see
# fn_8013AC54/fn_80134FE0/fn_80139C84). Reverted to raw asm.
.text
.balign 4
.global fn_80458F9C

fn_80458F9C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x80(3)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80458FC0
    bl fn_800256C8
L_80458FC0:
    li 3, 0x0
    li 0, -0x1
    stb 3, 0x68(31)
    stw 0, 0x64(31)
    stw 3, 0x58(31)
    stw 3, 0x5c(31)
    stw 3, 0x60(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
