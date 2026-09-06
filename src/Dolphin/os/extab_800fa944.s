# fn_800FA944: the container class's "settle/ready" bookkeeping
# method. **Important correction/clarification**: this function
# reads/writes `this->0x2ad` on ITSELF as a "am I ready/settled" flag
# - the EXACT SAME field `fn_800F8A30`/`fn_800F8BAC` read off their
# CACHED `this->0x240` pointer. This confirms `this->0x240` (called
# "owner/manager" in earlier landings) is actually a pointer to
# ANOTHER INSTANCE OF THIS SAME CONTAINER CLASS - a sibling/anchor
# container in the formation, not a generic manager object. Fields
# like `0x230`(phase)/`0x2ac`(progress counter)/`0x2ad`(ready flag)/
# `0x284`/`0x288`/`0x28c` are peer-coordination fields read cross-
# instance for managing a FORMATION of these containers (consistent
# with the formation-slot index `this->0x247` established in the
# constructor and the inter-instance spacing physics in
# `fn_800FA1A4`).
#
# Early-outs on 2 sentinel `this->0xb0` command-slot values (4, 0x12)
# and a `this->0x256` cooldown counter. On first activation
# (`this->0xd8==0`), increments a settle counter `this->0x255`, arms a
# 50-frame cooldown (`this->0x256=0x32`), sets a one-shot flag
# `this->0x268=1`, calls a NEW `fn_801F37AC(this,0,&this->0xc,3,0,-1)`
# (unconfirmed, plausibly a position/orientation-copy helper given the
# `&this->0xc` position pointer), plays effect `0x40005` via the
# CONFIRMED `fn_801F0E34`, and zeroes velocity (`this->0x3c/0x40/0x44`).
#
# Then, gated on the OTHER sibling's `0x2ad` flag (via cached
# `this->0x240`) being set, if this instance's own phase isn't yet 9:
# sets phase=9, plays effect `0x40005` again, sets/clears 2 bits of
# `this->0x238`, resets velocity and recomputes the anchor-scaled
# position fields (`this->0x60/64/68/6c`, matching the SAME anchor-
# init shape seen in `fn_800F8548`/`fn_800F9F54`), and if
# `this->0x108<=10` invokes the SAME "self-notify" virtual method
# (vtable slot 0x24) already seen called from `fn_800F8A30`/
# `fn_800F8BAC` - confirming that vtable slot as a recurring, generic
# per-instance notification callback. Finally, if not yet gated ready,
# sets its own `this->0x2ad=1` once the settle counter reaches 3.
# Needs `-mgekko`. Not yet cross-identified against the 195-entry
# dispatch table.
.section extab, "a"
.balign 4
.global etb_800057C8
etb_800057C8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800057C8, 8

.section extabindex, "a"
.balign 4
.global eti_80011ADC
eti_80011ADC:
    .4byte fn_800FA944
    .4byte 0x0000019C
    .4byte etb_800057C8
.size eti_80011ADC, 12

.text
.balign 4
.global fn_800FA944

fn_800FA944:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0xb0(3)
    cmplwi 0, 0x4
    .4byte 0x4182016C # beq .L_800FAACC
    cmplwi 0, 0x12
    .4byte 0x41820164 # beq .L_800FAACC
    lbz 0, 0x256(31)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_800FA97C
    .4byte 0x48000154 # b .L_800FAACC
L_800FA97C:
    lwz 0, 0xd8(31)
    cmpwi 0, 0x0
    .4byte 0x40820078 # bne .L_800FA9FC
    lbz 3, 0x255(31)
    li 0, 0x32
    addi 3, 3, 0x1
    stb 3, 0x255(31)
    stb 0, 0x256(31)
    lwz 0, 0x268(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_800FA9B0
    li 0, 0x1
    stw 0, 0x268(31)
L_800FA9B0:
    mr 3, 31
    addi 5, 31, 0xc
    li 4, 0x0
    li 6, 0x3
    li 7, 0x0
    li 8, -0x1
    bl fn_801F37AC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_800FA9FC:
    lbz 0, 0x2ad(31)
    cmplwi 0, 0x0
    .4byte 0x418200B4 # beq .L_800FAAB8
    lwz 0, 0x230(31)
    cmpwi 0, 0x9
    .4byte 0x418200BC # beq .L_800FAACC
    li 0, 0x9
    lis 4, 0x4
    stw 0, 0x230(31)
    li 0, 0x0
    .4byte 0xC082900C # lfs f4, lbl_8053BFAC@sda21(r0)
    mr 3, 31
    lwz 6, 0x238(31)
    addi 4, 4, 0x5
    .4byte 0xC0629054 # lfs f3, lbl_8053BFF4@sda21(r0)
    li 5, 0x0
    ori 6, 6, 0x1
    .4byte 0xC04290B4 # lfs f2, lbl_8053C054@sda21(r0)
    stw 6, 0x238(31)
    .4byte 0xC02290B8 # lfs f1, lbl_8053C058@sda21(r0)
    lwz 6, 0x238(31)
    .4byte 0xC00290BC # lfs f0, lbl_8053C05C@sda21(r0)
    rlwinm 6, 6, 0, 30, 28
    stw 6, 0x238(31)
    stfs 4, 0x3c(31)
    stfs 4, 0x40(31)
    stfs 3, 0x44(31)
    stw 0, 0x268(31)
    stw 0, 0x264(31)
    lfs 3, 0x26c(31)
    fmuls 2, 2, 3
    fmuls 1, 1, 3
    fmuls 0, 0, 3
    stfs 2, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 4, 0x6c(31)
    bl fn_801F0E34
    lwz 0, 0x108(31)
    cmpwi 0, 0xa
    .4byte 0x41810030 # bgt .L_800FAACC
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000018 # b .L_800FAACC
L_800FAAB8:
    lbz 0, 0x255(31)
    cmplwi 0, 0x3
    .4byte 0x4082000C # bne .L_800FAACC
    li 0, 0x1
    stb 0, 0x2ad(31)
L_800FAACC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

