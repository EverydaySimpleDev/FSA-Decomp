.section extab, "a"
.balign 4
.global etb_80006B3C
etb_80006B3C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80006B3C, 8

.section extabindex, "a"
.balign 4
.global eti_80013468
eti_80013468:
    .4byte fn_8013BBE0
    .4byte 0x00000224
    .4byte etb_80006B3C
.size eti_80013468, 12

# fn_8013BBE0(this) - the evaluator that RECOMPUTES the this->0x39 instance
# flag every other method here reads (fn_8013B71C/BB18). Early-outs entirely
# if the current scene type (lbl_8053AAF8->0x4c) == 9.
#
# Otherwise: refreshes 5 sub-objects unconditionally (this->0x24 via
# fn_8030E154, ->0x20 via fn_802FF568, ->0x28 via fn_8013DC44, ->0x2c via
# fn_80159330, ->0x30 via fn_8016005C), then calls fn_8013C394() - a
# no-argument accessor (forward-referenced, not yet landed) that returns a
# 4-int struct. Converts all 4 ints to floats (classic PPC int->double->float
# idiom via lbl_8053CDF0, the 2^52 bias double) to build a vec4 (likely a
# room/camera bounds rect), applies it to this->0x14 (first a virtual call
# through its OWN vtable slot 0xc, then a direct fn_80094424(this->0x14,
# &vec4) - a viewport/rect setter).
#
# Then recomputes this->0x39: if the boot-phase flag (->0x7f) is set AND
# scene type == 0xc, or boot-phase is clear, falls into a scene-type
# whitelist check (the SAME 7,8,9,0x16,0xa,0xb list seen throughout this
# class, +0xc in the boot-phase-clear variant) - if NOT whitelisted:
# this->0x39=0 and return. If in the whitelist: this->0x39=1 UNLESS
# this->0x38 (a counter, likely a frame-timer) is < 0xff, in which case a
# further check runs (scene type == 0xb, OR an external predicate
# fn_80239D38()) to decide the final value of this->0x39.
.text
.balign 4
.global fn_8013BBE0

fn_8013BBE0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(4)
    cmpwi 0, 0x9
    .4byte 0x418201E0 # beq .L_8013BDE8
    lwz 3, 0x24(31)
    bl fn_8030E154
    lwz 3, 0x20(31)
    bl fn_802FF568
    lwz 3, 0x28(31)
    bl fn_8013DC44
    lwz 3, 0x2c(31)
    bl fn_80159330
    lwz 3, 0x30(31)
    bl fn_8016005C
    bl fn_8013C394
    lwz 8, 0xc(3)
    lis 7, 0x4330
    lwz 6, 0x8(3)
    addi 4, 1, 0x8
    lwz 5, 0x4(3)
    lwz 0, 0x0(3)
    stw 8, 0x1c(1)
    .4byte 0xC8229E50 # lfd f1, lbl_8053CDF0@sda21(r0)
    stw 7, 0x18(1)
    lfd 0, 0x18(1)
    stw 6, 0x24(1)
    fsubs 4, 0, 1
    stw 7, 0x20(1)
    lfd 0, 0x20(1)
    stw 5, 0x2c(1)
    fsubs 3, 0, 1
    stw 7, 0x28(1)
    lfd 0, 0x28(1)
    stw 0, 0x34(1)
    fsubs 2, 0, 1
    stw 7, 0x30(1)
    lfd 0, 0x30(1)
    stfs 2, 0xc(1)
    fsubs 0, 0, 1
    stfs 3, 0x10(1)
    stfs 0, 0x8(1)
    stfs 4, 0x14(1)
    lwz 3, 0x14(31)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    lwz 3, 0x14(31)
    addi 4, 1, 0x8
    bl fn_80094424
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 4, 0x7f(3)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8013BCE8
    lwz 5, 0x4c(3)
    subfic 0, 5, 0xc
    cntlzw 0, 0
    extrwi. 0, 0, 8, 19
    .4byte 0x41820010 # beq .L_8013BCF4
L_8013BCE8:
    li 0, 0x0
    stb 0, 0x39(31)
    .4byte 0x480000F8 # b .L_8013BDE8
L_8013BCF4:
    cmplwi 4, 0x0
    .4byte 0x41820050 # beq .L_8013BD48
    cmpwi 5, 0x7
    li 0, 0x0
    .4byte 0x4182002C # beq .L_8013BD30
    cmpwi 5, 0x8
    .4byte 0x41820024 # beq .L_8013BD30
    cmpwi 5, 0x9
    .4byte 0x4182001C # beq .L_8013BD30
    cmpwi 5, 0x16
    .4byte 0x41820014 # beq .L_8013BD30
    cmpwi 5, 0xa
    .4byte 0x4182000C # beq .L_8013BD30
    cmpwi 5, 0xb
    .4byte 0x40820008 # bne .L_8013BD34
L_8013BD30:
    li 0, 0x1
L_8013BD34:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    .4byte 0x48000054 # b .L_8013BD98
L_8013BD48:
    cmpwi 5, 0x7
    li 0, 0x0
    .4byte 0x41820034 # beq .L_8013BD84
    cmpwi 5, 0x8
    .4byte 0x4182002C # beq .L_8013BD84
    cmpwi 5, 0x9
    .4byte 0x41820024 # beq .L_8013BD84
    cmpwi 5, 0x16
    .4byte 0x4182001C # beq .L_8013BD84
    cmpwi 5, 0xa
    .4byte 0x41820014 # beq .L_8013BD84
    cmpwi 5, 0xb
    .4byte 0x4182000C # beq .L_8013BD84
    cmpwi 5, 0xc
    .4byte 0x40820008 # bne .L_8013BD88
L_8013BD84:
    li 0, 0x1
L_8013BD88:
    clrlwi 3, 0, 24
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_8013BD98:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_8013BDAC
    li 0, 0x1
    stb 0, 0x39(31)
    .4byte 0x48000040 # b .L_8013BDE8
L_8013BDAC:
    lbz 0, 0x38(31)
    li 30, 0x0
    cmplwi 0, 0xff
    .4byte 0x4180002C # blt .L_8013BDE4
    cmpwi 5, 0xb
    li 29, 0x1
    .4byte 0x41820014 # beq .L_8013BDD8
    bl fn_80239D38
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_8013BDD8
    li 29, 0x0
L_8013BDD8:
    clrlwi. 0, 29, 24
    .4byte 0x41820008 # beq .L_8013BDE4
    li 30, 0x1
L_8013BDE4:
    stb 30, 0x39(31)
L_8013BDE8:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr
