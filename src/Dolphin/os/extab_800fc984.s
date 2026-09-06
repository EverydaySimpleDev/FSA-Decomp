# fn_800FC984: another `jumptable_8049C6F0` state handler. **New
# insight**: its "owner not ready" preamble is BYTE-IDENTICAL to
# `fn_800FC128`'s own opening block (same literals: `this->0xb0=4`,
# `0x27c=1`, `0x234=0`, `0x230=8`, same effect ID, same
# `this->0x2ad=1`) - this is a SHARED, copy-pasted redirect-to-a-
# common-"state 8"-wait-holder block, not a per-function self-
# reference; state 8 is very likely the LAST unlanded jumptable
# target (`fn_800FCCCC`), a generic "pause until sibling ready" state
# reused by multiple handlers.
#
# Always calls the CONFIRMED `fn_800FA1A4` spacing physics, throttles
# its full body to every-other tick (same wraparound idiom as
# elsewhere), advances a spin-rate accumulator, and reuses the NEW
# `fn_801F1184` easing call already seen in `fn_800FC4A8`. On
# countdown expiry, if a `this->0x238` flag bit is set and the
# owner's progress counter is still low (`<=0xc`), it SELF-LOOPS
# (`this->0x230=4`) with a freshly PRNG-randomized duration AND
# freshly PRNG-randomizes `this->0x284/0x286/0x2b2/0x2b4` - the EXACT
# FOUR fields `fn_800FC128`'s pendulum state reads as its two
# countdown timers and two drift angles. This strongly suggests
# `fn_800FC984` is the setup/re-arm step that seeds `fn_800FC128`'s
# pendulum motion before the class transitions into it, rather than a
# fully independent state. Otherwise (countdown not yet met, or
# conditions unmet), transitions to state 3 with a fixed 600-frame
# duration instead. Regardless, the tail applies the same combined
# swing+shimmy motion (via the shared anchor table) already documented
# for `fn_800FC4A8`. No `-mgekko` needed. Not yet cross-identified
# against the 195-entry dispatch table.
.section extab, "a"
.balign 4
.global etb_80005820
etb_80005820:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005820, 8

.section extabindex, "a"
.balign 4
.global eti_80011B60
eti_80011B60:
    .4byte fn_800FC984
    .4byte 0x00000348
    .4byte etb_80005820
.size eti_80011B60, 12

.text
.balign 4
.global fn_800FC984

fn_800FC984:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    lbz 0, 0x2ac(3)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_800FC9E0
    li 0, 0x4
    lis 4, 0x4
    stw 0, 0xb0(31)
    li 5, 0x1
    li 6, 0x0
    li 0, 0x8
    stw 5, 0x27c(31)
    addi 4, 4, 0x5
    li 5, 0x0
    stw 6, 0x234(31)
    stw 0, 0x230(31)
    bl fn_801F0E34
    li 0, 0x1
    stb 0, 0x2ad(31)
    .4byte 0x48000008 # b .L_800FC9E4
L_800FC9E0:
    li 0, 0x0
L_800FC9E4:
    clrlwi. 0, 0, 24
    .4byte 0x408202D0 # bne .L_800FCCB8
    lbz 3, 0x256(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_800FCA00
    subi 0, 3, 0x1
    stb 0, 0x256(31)
L_800FCA00:
    lbz 0, 0x278(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_800FCA14
    cmplwi 0, 0x6
    .4byte 0x40820010 # bne .L_800FCA20
L_800FCA14:
    li 0, 0x10
    stw 0, 0xb0(31)
    .4byte 0x4800000C # b .L_800FCA28
L_800FCA20:
    li 0, 0x4
    stw 0, 0xb0(31)
L_800FCA28:
    mr 3, 31
    bl fn_800FA1A4
    lwz 3, 0x268(31)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_800FCA64
    addi 3, 3, 0x2000
    lis 0, 0x2
    stw 3, 0x268(31)
    lwz 3, 0x268(31)
    cmplw 3, 0
    .4byte 0x4081000C # ble .L_800FCA5C
    li 0, 0x0
    stw 0, 0x268(31)
L_800FCA5C:
    li 0, 0x1
    .4byte 0x48000008 # b .L_800FCA68
L_800FCA64:
    li 0, 0x0
L_800FCA68:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_800FCA84
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    .4byte 0x48000238 # b .L_800FCCB8
L_800FCA84:
    li 0, 0x40
    .4byte 0xC002902C # lfs f0, lbl_8053BFCC@sda21(r0)
    sth 0, 0x2b0(31)
    mr 3, 31
    lhz 4, 0x2ae(31)
    lhz 0, 0x2b0(31)
    add 0, 4, 0
    sth 0, 0x2ae(31)
    stfs 0, 0x2a8(31)
    bl fn_801F1184
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    lis 4, 0x4
    addi 4, 4, 0x2f
    li 5, 0x0
    stfs 0, 0x48(3)
    mr 3, 31
    bl fn_801F0E34
    lwz 3, 0x234(31)
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4181013C # bgt .L_800FCC18
    lwz 0, 0x238(31)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820120 # beq .L_800FCC08
    lbz 0, 0x2ac(31)
    cmplwi 0, 0xc
    .4byte 0x41810114 # bgt .L_800FCC08
    li 0, 0x4
    lis 4, 0x4330
    stw 0, 0x230(31)
    li 0, 0x0
    lis 3, 0x19
    .4byte 0xC042902C # lfs f2, lbl_8053BFCC@sda21(r0)
    stw 0, 0x234(31)
    addi 6, 3, 0x660d
    .4byte 0xC06290D8 # lfs f3, lbl_8053C078@sda21(r0)
    li 3, 0x3000
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 0, 0x5000
    stw 4, 0x18(1)
    lwz 5, 0xb4(7)
    .4byte 0xC8229038 # lfd f1, lbl_8053BFD8@sda21(r0)
    mullw 5, 5, 6
    .4byte 0xC08290F4 # lfs f4, lbl_8053C094@sda21(r0)
    stw 4, 0x30(1)
    addis 4, 5, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(7)
    lwz 4, 0xb4(7)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    xoris 4, 4, 0x8000
    stw 4, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fadds 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    sth 4, 0x284(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 4, 4, 6
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(5)
    lwz 4, 0xb4(5)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    xoris 4, 4, 0x8000
    stw 4, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 1
    fadds 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 4, 0x3c(1)
    sth 4, 0x286(31)
    sth 3, 0x2b2(31)
    sth 0, 0x2b4(31)
    .4byte 0x48000014 # b .L_800FCC18
L_800FCC08:
    li 3, 0x3
    li 0, 0x258
    stw 3, 0x230(31)
    stw 0, 0x234(31)
L_800FCC18:
    lfs 0, 0x248(31)
    lis 3, lbl_8052EBC0@ha
    addi 6, 3, lbl_8052EBC0@l
    .4byte 0xC0829054 # lfs f4, lbl_8053BFF4@sda21(r0)
    stfs 0, 0x23c(31)
    mr 3, 31
    .4byte 0xC06290D8 # lfs f3, lbl_8053C078@sda21(r0)
    li 4, 0x1
    lfs 0, 0x24c(31)
    .4byte 0xC04290A8 # lfs f2, lbl_8053C048@sda21(r0)
    stfs 0, 0x240(31)
    lfs 0, 0x250(31)
    stfs 0, 0x244(31)
    lhz 5, 0x260(31)
    addi 0, 5, 0x200
    sth 0, 0x260(31)
    lhz 0, 0x260(31)
    lfs 0, 0x25c(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 6, 0
    fmadds 0, 4, 1, 0
    stfs 0, 0x14(31)
    lhz 5, 0x262(31)
    addi 0, 5, 0xb0
    sth 0, 0x262(31)
    lhz 0, 0x262(31)
    lfs 0, 0x23c(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 6, 0
    fmadds 0, 3, 1, 0
    stfs 0, 0xc(31)
    lhz 0, 0x262(31)
    lfs 0, 0x240(31)
    rlwinm 0, 0, 30, 18, 28
    add 5, 6, 0
    lfs 1, 0x4(5)
    fmadds 0, 2, 1, 0
    fsubs 0, 0, 2
    stfs 0, 0x10(31)
    bl fn_801F3D94
L_800FCCB8:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

