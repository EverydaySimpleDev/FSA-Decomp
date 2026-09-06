.section extab, "a"
.balign 4
.global etb_800075D4
etb_800075D4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800075D4, 8

.section extabindex, "a"
.balign 4
.global eti_800142E4
eti_800142E4:
    .4byte fn_801831E0
    .4byte 0x0000012C
    .4byte etb_800075D4
.size eti_800142E4, 12

.text
.balign 4
.global fn_801831E0

# fn_801831E0(this) - RIVR's real setParams (see
# project_fsa_rivr_gdmn_fagn_actor_progress.md). No shared-base
# setParams call (this whole family bypasses that helper, matching its
# raw-base-ctor lineage). Zero-sizes 2 tracked rects (`0x60-0x6c` and
# `0x80-0x8c`) from constants, clears state fields
# (`0x248/0x24c/0x250/0x23c/0x240/0x244`), extracts 2 single-bit flags
# from `this->0x90` into `0x25c`/`0x260`, clears `0x254` and
# `0x238/0x239/0x23a`.
#
# If the level config byte (`GetRoomConfigRecord()->0x31f2`) equals 1: calls
# `fn_8018330C(&localBuf)` (a local helper filling a 4-byte buffer, not
# further decompiled) and copies those 4 bytes into
# `this->0x234/0x235/0x236/0x237` (a variant/color tuple), then
# re-derives `this->0x238/0x239/0x23a` from individual bytes of the
# newly-set `this->0x234` word.
#
# Finishes with standard init: 3 float fields (`0x268/0x26c/0x270` and
# `0x3c/0x40/0x44`) set to a constant, `0x258=0`, `0x264=0`, byte
# `0x195=1` (a "spawned/active" flag also seen elsewhere), `0x274=0`
# (the handle its own dtor later releases), `0x230=0` (flags/state).
fn_801831E0:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022AF38 # lfs f1, lbl_8053DED8@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC002AF3C # lfs f0, lbl_8053DEDC@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    li 3, 0x0
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 3, 0x248(31)
    stw 3, 0x24c(31)
    stw 3, 0x250(31)
    stw 3, 0x23c(31)
    stw 3, 0x240(31)
    stw 3, 0x244(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 31
    stw 0, 0x25c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 23
    stw 0, 0x260(31)
    stw 3, 0x254(31)
    stb 3, 0x238(31)
    stb 3, 0x239(31)
    stb 3, 0x23a(31)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_801832C0
    addi 3, 1, 0x8
    bl fn_8018330C
    lbz 0, 0x8(1)
    stb 0, 0x234(31)
    lbz 0, 0x9(1)
    stb 0, 0x235(31)
    lbz 0, 0xa(1)
    stb 0, 0x236(31)
    lbz 0, 0xb(1)
    stb 0, 0x237(31)
    lwz 0, 0x234(31)
    srwi 0, 0, 24
    stb 0, 0x238(31)
    lwz 0, 0x234(31)
    extrwi 0, 0, 8, 8
    stb 0, 0x239(31)
    lwz 0, 0x234(31)
    extrwi 0, 0, 8, 16
    stb 0, 0x23a(31)
L_801832C0:
    .4byte 0xC002AF2C # lfs f0, lbl_8053DECC@sda21(r0)
    li 3, 0x0
    li 0, 0x1
    stfs 0, 0x270(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x268(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 3, 0x258(31)
    sth 3, 0x264(31)
    stb 0, 0x195(31)
    stw 3, 0x274(31)
    stw 3, 0x230(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
