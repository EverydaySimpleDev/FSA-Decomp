# fn_800FB6E0(this, retryFlag): "pick a new bounce direction and kick
# off" - the shared sub-step called from both fn_800FB070 and
# fn_800FB32C. Queries a NEW `fn_801EEC98(this, this->0x198)`
# (plausibly a "find a clear direction" search, writes an id + 2
# floats + a quality value to stack outParams); on failure/low
# quality, just reuses the cached facing `this->0x262`. Otherwise
# resolves BOTH linked entries (`this->0x288`/`0x28c`, via the
# CONFIRMED registry pair) and picks whichever is closer using
# `PSVECMag` TWICE (mirroring `fn_800FA1A4`'s inter-entry comparison),
# computing a facing angle toward it via the NEW `fn_80093340`
# (negated relative X/Z - consistent with `fn_80093340` being an
# atan2-style "angle from vector" helper, as already suspected from
# `fn_800FB32C`) and storing it in `this->0x262`. If the search
# quality is below a threshold, further randomizes the facing using
# the CONFIRMED global PRNG. Converts the final facing into an
# initial XZ velocity (`this->0x3c/0x40`) by indexing the shared
# anchor table `lbl_8052EBC0`. Branches on `retryFlag`: first attempt
# plays effect `0x4002b` and resets the elapsed-category counter
# `this->0x257=0`; retry plays a different effect (`0x400ca`) and
# increments `this->0x257` instead. Finally sets flag bits on
# `this->0x238`, recomputes the anchor-scaled position fields
# (`0x60-6c`, the same shape used throughout this class), and
# transitions state to `this->0x230=7` with `this->0x268=1`/
# `this->0x264=0` reset. Needs `-mgekko`. Not yet cross-identified
# against the 195-entry dispatch table.
.section extab, "a"
.balign 4
.global etb_800057F8
etb_800057F8:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_800057F8, 8

.section extabindex, "a"
.balign 4
.global eti_80011B24
eti_80011B24:
    .4byte fn_800FB6E0
    .4byte 0x00000334
    .4byte etb_800057F8
.size eti_80011B24, 12

.text
.balign 4
.global fn_800FB6E0

fn_800FB6E0:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    li 0, 0x0
    sth 0, 0x8(1)
    mr 30, 3
    mr 31, 4
    addi 5, 1, 0x8
    stfs 0, 0x18(1)
    addi 6, 1, 0x14
    addi 7, 1, 0x18
    addi 8, 1, 0x10
    stw 0, 0x14(1)
    li 9, 0x0
    li 10, 0x0
    stw 0, 0x10(1)
    lwz 4, 0x198(3)
    bl fn_801EEC98
    lwz 0, 0x10(1)
    cmpwi 0, -0x1
    .4byte 0x41820020 # beq .L_800FB768
    lfs 1, 0x18(1)
    .4byte 0xC00290A8 # lfs f0, lbl_8053C048@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_800FB768
    lhz 0, 0x8(1)
    sth 0, 0x262(30)
    .4byte 0x48000194 # b .L_800FB8F8
L_800FB768:
    lwz 0, 0x238(30)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x40820010 # bne .L_800FB780
    .4byte 0xC0029034 # lfs f0, lbl_8053BFD4@sda21(r0)
    stfs 0, 0x18(1)
    .4byte 0x480000FC # b .L_800FB878
L_800FB780:
    bl SpatialRegistry_GetBase
    lwz 4, 0x288(30)
    bl fn_801F666C
    mr 29, 3
    bl SpatialRegistry_GetBase
    lwz 4, 0x28c(30)
    bl fn_801F666C
    psq_l 1, 0xc(30), 0, 0
    addi 4, 1, 0x1c
    lfs 0, 0x14(30)
    stfs 0, 0x24(1)
    stfs 0, 0x30(1)
    psq_l 2, 0x8(4), 1, 0
    psq_st 1, 0x0(4), 0, 0
    psq_l 3, 0x30(1), 1, 0
    psq_st 1, 0x28(1), 0, 0
    psq_l 0, 0xc(29), 0, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 0, 0x14(29), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x8(4), 1, 0
    psq_l 0, 0xc(3), 0, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x28(1), 0, 0
    psq_l 0, 0x14(3), 1, 0
    mr 3, 4
    ps_sub 0, 3, 0
    psq_st 0, 0x30(1), 1, 0
    bl PSVECMag
    fmr 31, 1
    addi 3, 1, 0x28
    bl PSVECMag
    fcmpo cr0, 31, 1
    .4byte 0x4080003C # bge .L_800FB844
    lfs 1, 0x1c(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x20(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC00290B0 # lfs f0, lbl_8053C050@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    sth 0, 0x8(1)
    .4byte 0x48000038 # b .L_800FB878
L_800FB844:
    lfs 1, 0x28(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x2c(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC00290B0 # lfs f0, lbl_8053C050@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    sth 0, 0x8(1)
L_800FB878:
    lfs 1, 0x18(1)
    .4byte 0xC00290E4 # lfs f0, lbl_8053C084@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_800FB894
    lhz 0, 0x8(1)
    sth 0, 0x262(30)
    .4byte 0x48000068 # b .L_800FB8F8
L_800FB894:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002902C # lfs f0, lbl_8053BFCC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC04290E8 # lfs f2, lbl_8053C088@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    lhz 3, 0x262(30)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 0, 0x3c(1)
    subfic 0, 0, 0x2000
    extsh 0, 0
    add 0, 3, 0
    sth 0, 0x262(30)
L_800FB8F8:
    lhz 0, 0x262(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0229048 # lfs f1, lbl_8053BFE8@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    cmpwi 31, 0x1
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x3c(30)
    lhz 0, 0x262(30)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x40(30)
    .4byte 0x4082002C # bne .L_800FB960
    .4byte 0xC0029008 # lfs f0, lbl_8053BFA8@sda21(r0)
    lis 4, 0x4
    li 0, 0x0
    mr 3, 30
    stfs 0, 0x44(30)
    addi 4, 4, 0x2b
    li 5, 0x0
    stb 0, 0x257(30)
    bl fn_801F0E34
    .4byte 0x4800002C # b .L_800FB988
L_800FB960:
    .4byte 0xC0029054 # lfs f0, lbl_8053BFF4@sda21(r0)
    lis 4, 0x4
    mr 3, 30
    li 5, 0x0
    stfs 0, 0x44(30)
    addi 4, 4, 0xca
    lbz 6, 0x257(30)
    addi 0, 6, 0x1
    stb 0, 0x257(30)
    bl fn_801F0E34
L_800FB988:
    lwz 0, 0x238(30)
    li 4, 0x7
    .4byte 0xC0A290EC # lfs f5, lbl_8053C08C@sda21(r0)
    li 3, 0x1
    ori 0, 0, 0x4
    .4byte 0xC06290B4 # lfs f3, lbl_8053C054@sda21(r0)
    stw 0, 0x238(30)
    li 0, 0x0
    .4byte 0xC04290B8 # lfs f2, lbl_8053C058@sda21(r0)
    lwz 5, 0x238(30)
    .4byte 0xC02290BC # lfs f1, lbl_8053C05C@sda21(r0)
    rlwinm 5, 5, 0, 28, 26
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stw 5, 0x238(30)
    lfs 4, 0x26c(30)
    fmuls 4, 5, 4
    fmuls 3, 3, 4
    fmuls 2, 2, 4
    fmuls 1, 1, 4
    stfs 3, 0x60(30)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    stw 4, 0x230(30)
    stw 3, 0x268(30)
    stw 0, 0x264(30)
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

