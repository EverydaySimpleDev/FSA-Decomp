# fn_800FABC0: the container class's TRUE main per-frame update/tick
# method (0x800FABC0-0x800FB070, 0x4B0/1200 bytes, no `-mgekko`
# needed). A major structural finding:
#
# **`this+0x290` is passed as `this` to `fn_800F802C`** (the small-
# offset proximity-trigger method previously landed as if it belonged
# to a SEPARATE sibling class alongside `fn_800F7FCC`/`fn_800F8210`/
# `fn_800F82CC`). This is direct, unambiguous proof that the small-
# offset "class" is actually an EMBEDDED SUBOBJECT living at offset
# `0x290` inside THIS large container object, not an independent
# class at all - corrects the earlier "two distinct classes in this
# neighborhood" framing in this file's running history. The container
# unconditionally ticks its embedded sub-object every frame via this
# call, and separately, unconditionally calls the CONFIRMED
# `fn_800FA6B0` jumptable event-script player every frame too.
#
# Dispatches its own top-level state (`this->0x230`, values 0-9) via
# `jumptable_8049C6F0` into a cluster of PREVIOUSLY UNSEEN handler
# functions this landing newly exposes as call targets:
# `fn_800FCCCC`/`fn_800FC984`/`fn_800FC4A8`/`fn_800FC128`/
# `fn_800FBD90`/`fn_800FBA14`/`fn_800FB32C`/`fn_800FB070`, plus 2
# inline case bodies (a PRNG-seeded initial-position/anchor setup
# using the CONFIRMED global LCG, and a counter-driven transition that
# eventually re-arms `this->0x230=4` and schedules a delayed re-check
# via more PRNG). **Open question, not resolved here**: `fn_800F8A30`
# (landed earlier) ALSO reads/increments `this->0x230` unconditionally
# every call as if it were a simple monotonic frame counter, which
# seems hard to reconcile with THIS function treating the same field
# as a bounded 0-9 state index dispatched through a jumptable - the
# two functions' calling relationship (whether both tick every frame,
# or one is state-gated) is not yet worked out; flagging rather than
# guessing.
#
# Reuses many already-confirmed pieces: the global PRNG, the CONFIRMED
# `fn_801F0E34` effect player, `SpatialRegistry_GetBase`/`fn_801F6884` (new)
# registry-adjacent calls, and `fn_80458FF0` (new) with a global
# `lbl_8053AF80`. Also touches `lbl_8053AB10->0x24->0x179/0x178` (new
# fields on the already-seen `lbl_8053AB10` global) and calls
# `fn_8030C210` on it. Not yet cross-identified against the 195-entry
# actor dispatch table.
.section extab, "a"
.balign 4
.global etb_800057E0
etb_800057E0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800057E0, 8

.section extabindex, "a"
.balign 4
.global eti_80011B00
eti_80011B00:
    .4byte fn_800FABC0
    .4byte 0x000004B0
    .4byte etb_800057E0
.size eti_80011B00, 12

.text
.balign 4
.global fn_800FABC0

fn_800FABC0:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC00290CC # lfs f0, lbl_8053C06C@sda21(r0)
    stw 0, 0x24(1)
    .4byte 0xC04290C8 # lfs f2, lbl_8053C068@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    .4byte 0xC06290C4 # lfs f3, lbl_8053C064@sda21(r0)
    lfs 4, 0x14(3)
    fadds 1, 0, 4
    stfs 2, 0x70(3)
    .4byte 0xC00290D0 # lfs f0, lbl_8053C070@sda21(r0)
    fadds 3, 3, 4
    .4byte 0xC04290C0 # lfs f2, lbl_8053C060@sda21(r0)
    stfs 1, 0x74(3)
    .4byte 0xC022900C # lfs f1, lbl_8053BFAC@sda21(r0)
    stfs 0, 0x78(3)
    stfs 3, 0x7c(3)
    .4byte 0xC06290A8 # lfs f3, lbl_8053C048@sda21(r0)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4082043C # bne .L_800FB05C
    lwz 3, 0x238(31)
    clrlwi. 0, 3, 31
    .4byte 0x40820038 # bne .L_800FAC64
    rlwinm. 0, 3, 0, 27, 27
    .4byte 0x4182001C # beq .L_800FAC50
    mr 3, 31
    li 4, 0x4
    li 5, -0x1
    li 6, 0x6
    bl fn_801F2B7C
    .4byte 0x48000018 # b .L_800FAC64
L_800FAC50:
    mr 3, 31
    li 4, 0x1
    li 5, -0x1
    li 6, 0x6
    bl fn_801F2B7C
L_800FAC64:
    lwz 0, 0x230(31)
    cmplwi 0, 0x9
    .4byte 0x418103A0 # bgt .L_800FB00C
    lis 3, jumptable_8049C6F0@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049C6F0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 3, 31
    bl fn_800FCCCC
    .4byte 0x4800037C # b .L_800FB00C
    li 0, 0x0
    lis 3, lbl_8052EBC0@ha
    sth 0, 0x2b0(31)
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC062902C # lfs f3, lbl_8053BFCC@sda21(r0)
    lhz 4, 0x2ae(31)
    lhz 0, 0x2b0(31)
    .4byte 0xC0429054 # lfs f2, lbl_8053BFF4@sda21(r0)
    add 0, 4, 0
    sth 0, 0x2ae(31)
    stfs 3, 0x2a8(31)
    lhz 4, 0x260(31)
    addi 0, 4, 0x200
    sth 0, 0x260(31)
    lhz 0, 0x260(31)
    lfs 0, 0x25c(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x14(31)
    lbz 0, 0x254(31)
    cmpwi 0, 0x1
    .4byte 0x418200C8 # beq .L_800FADB4
    .4byte 0x4080031C # bge .L_800FB00C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_800FAD00
    .4byte 0x48000310 # b .L_800FB00C
L_800FAD00:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_800FAD24
    li 0, 0x1
    .4byte 0xC00290D4 # lfs f0, lbl_8053C074@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_800FAD24:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(31)
    lwz 4, 0x24(3)
    .4byte 0xC0029058 # lfs f0, lbl_8053BFF8@sda21(r0)
    lbz 0, 0x7f5(4)
    fsubs 2, 1, 0
    lfs 1, 0xc(31)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_800FAD70
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stw 3, 0x7f8(4)
    stfs 1, 0x7fc(4)
    stfs 2, 0x800(4)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_800FAD70:
    lbz 0, 0x2ac(31)
    cmplwi 0, 0x18
    .4byte 0x41800294 # blt .L_800FB00C
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    li 0, 0x0
    stw 0, 0x234(31)
    lbz 3, 0x254(31)
    addi 0, 3, 0x1
    stb 0, 0x254(31)
    .4byte 0x4800025C # b .L_800FB00C
L_800FADB4:
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x64
    .4byte 0x40810244 # ble .L_800FB00C
    li 0, 0x1
    lis 3, 0x19
    stw 0, 0x27c(31)
    li 4, 0x2
    addi 0, 3, 0x660d
    .4byte 0xC02290D8 # lfs f1, lbl_8053C078@sda21(r0)
    stw 4, 0x230(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    addi 0, 3, 0xc8
    stw 0, 0x234(31)
    .4byte 0x480001DC # b .L_800FB00C
    mr 3, 31
    bl fn_800FC984
    .4byte 0x480001D0 # b .L_800FB00C
    mr 3, 31
    bl fn_800FC4A8
    .4byte 0x480001C4 # b .L_800FB00C
    mr 3, 31
    bl fn_800FC128
    .4byte 0x480001B8 # b .L_800FB00C
    mr 3, 31
    bl fn_800FBD90
    .4byte 0x480001AC # b .L_800FB00C
    mr 3, 31
    bl fn_800FBA14
    .4byte 0x480001A0 # b .L_800FB00C
    mr 3, 31
    bl fn_800FB32C
    .4byte 0x48000194 # b .L_800FB00C
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    lwz 3, 0x268(31)
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_800FAEB4
    addi 3, 3, 0x2000
    lis 0, 0x2
    stw 3, 0x268(31)
    lwz 3, 0x268(31)
    cmplw 3, 0
    .4byte 0x4081000C # ble .L_800FAEB4
    li 0, 0x0
    stw 0, 0x268(31)
L_800FAEB4:
    lwz 0, 0x234(31)
    cmpwi 0, 0x3c
    .4byte 0x4082000C # bne .L_800FAEC8
    li 0, 0x0
    stw 0, 0x27c(31)
L_800FAEC8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x64
    .4byte 0x40820020 # bne .L_800FAEF0
    li 0, 0x2
    lis 4, 0x4
    stw 0, 0x27c(31)
    mr 3, 31
    addi 4, 4, 0x2a
    li 5, 0x0
    bl fn_801F0E34
L_800FAEF0:
    lwz 0, 0x234(31)
    cmpwi 0, 0x96
    .4byte 0x408100C0 # ble .L_800FAFB8
    .4byte 0xC022900C # lfs f1, lbl_8053BFAC@sda21(r0)
    li 5, 0x4
    .4byte 0xC002905C # lfs f0, lbl_8053BFFC@sda21(r0)
    li 4, 0x6
    stfs 1, 0x14(31)
    li 3, 0x1
    li 0, 0x0
    lwz 6, 0x238(31)
    ori 6, 6, 0x1
    stw 6, 0x238(31)
    lwz 6, 0x238(31)
    ori 6, 6, 0x4
    stw 6, 0x238(31)
    stw 5, 0xb0(31)
    stfs 1, 0x3c(31)
    stfs 1, 0x40(31)
    stfs 0, 0x44(31)
    stw 4, 0x230(31)
    stw 3, 0x268(31)
    stw 0, 0x264(31)
    lwz 0, 0x238(31)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x4082004C # bne .L_800FAFA0
    lwz 3, 0x108(31)
    lis 0, 0x4330
    stw 0, 0x10(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8629038 # lfd f3, lbl_8053BFD8@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC02290DC # lfs f1, lbl_8053C07C@sda21(r0)
    lfd 2, 0x10(1)
    .4byte 0xC0029024 # lfs f0, lbl_8053BFC4@sda21(r0)
    fsubs 2, 2, 3
    fdivs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_800FAF98
    li 0, 0x3
    stb 0, 0x257(31)
    .4byte 0x4800000C # b .L_800FAFA0
L_800FAF98:
    li 0, 0x2
    stb 0, 0x257(31)
L_800FAFA0:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x2b
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000058 # b .L_800FB00C
L_800FAFB8:
    lfs 2, 0x44(31)
    .4byte 0xC022906C # lfs f1, lbl_8053C00C@sda21(r0)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lfs 2, 0x14(31)
    lfs 1, 0x44(31)
    fadds 1, 2, 1
    stfs 1, 0x14(31)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800FAFF4
    stfs 0, 0x14(31)
    stfs 0, 0x44(31)
L_800FAFF4:
    lwz 3, 0x234(31)
    addi 0, 3, 0x1
    stw 0, 0x234(31)
    .4byte 0x4800000C # b .L_800FB00C
    mr 3, 31
    bl fn_800FB070
L_800FB00C:
    lwz 3, 0x258(31)
    li 0, 0x0
    addi 4, 31, 0xc
    addi 3, 3, 0x1
    stw 3, 0x258(31)
    stb 0, 0x2ac(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x179(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_800FB04C
    li 0, 0x1
    stb 0, 0x178(3)
L_800FB04C:
    addi 3, 31, 0x290
    bl fn_800F802C
    mr 3, 31
    bl fn_800FA6B0
L_800FB05C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

