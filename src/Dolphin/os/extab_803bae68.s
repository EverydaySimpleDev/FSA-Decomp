# fn_803BAE68 - helper (0x8C)
#
# Attempted real-C++ promotion (Phase 4): tries fn_80057EBC(this,
# &lbl_8051E2C0, 0x2000, 0x2000); if that succeeds, tries again with
# flags (0x2000, 0x4000) and returns that result directly on success.
# If either call fails, copies lbl_8051E2C0's bytes at +3/+4 into
# lbl_80529DEC's +0x244/+0x246 and returns 0. Landed a byte-exact match
# for the whole control-flow/call-args portion (fixed 2 real issues en
# route: declaring the 2 globals as `extern void* arr[]` instead of a
# small scalar type, matching this project's vtable-declaration
# convention, to stop MWCC from picking @sda21 small-data addressing
# retail's build didn't use; and reusing the already-cached `target`
# pointer for the final byte-copy instead of re-deriving
# `&lbl_8051E2C0`, to avoid a redundant address recomputation). ONE
# residual: the final else-branch's 2 global-address computations
# (lbl_80529DEC's lis+addi, plus which register holds the lbz result)
# land in swapped registers vs retail (r3<->r4/r5) - 2 phrasing
# variants (original order; declaring `dst` before `src`) produced the
# identical wrong swap both times, a pure register-allocator preference
# not reachable via source reordering. Deferred after 2 attempts.
.section extab, "a"
.balign 4
.global etb_8000F704
etb_8000F704:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000F704, 8

.section extabindex, "a"
.balign 4
.global eti_8001F450
eti_8001F450:
    .4byte fn_803BAE68
    .4byte 0x0000008C
    .4byte etb_8000F704
.size eti_8001F450, 12

.text
.balign 4
.global fn_803BAE68

fn_803BAE68:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8051E2C0@ha
    li 5, 0x2000
    stw 0, 0x14(1)
    addi 4, 4, lbl_8051E2C0@l
    li 6, 0x2000
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_80057EBC
    cmpwi 3, 0x0
    .4byte 0x41820024 # beq .L_803BAEC0
    mr 3, 30
    mr 4, 31
    li 5, 0x2000
    li 6, 0x4000
    bl fn_80057EBC
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_803BAEC0
    .4byte 0x48000020 # b .L_803BAEDC
L_803BAEC0:
    lis 3, lbl_80529DEC@ha
    lbz 5, 0x3(31)
    addi 4, 3, lbl_80529DEC@l
    lbz 0, 0x4(31)
    stb 5, 0x244(4)
    li 3, 0x0
    stb 0, 0x246(4)
L_803BAEDC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
