# fn_800F8548: an effect-spawn helper for a class using the OIWA/RUPY-
# style LARGE field-offset convention (this->0x234/0x244/0x248/0x249/
# 0x23c) - but NOT the same class as the small-offset (0xc-0x16)
# actor just landed at fn_800F7FCC/802C/8210, since the two offset
# ranges are incompatible. Builds a 16-byte identity index array
# (values 0,1,2...15) into a stack scratch buffer - a common
# particle/effect parameter-block idiom seen elsewhere in this engine -
# then dispatches on `this->0x234` (the same phase-enum field
# convention OIWA/RUPY used, compared here against 2): if phase==2,
# fills a stack effect-descriptor struct and calls the ALREADY-
# CONFIRMED effect wrapper fn_801F02BC (see
# project_fsa_shared_effect_subsystem_crossref.md) with a fixed effect
# ID 0x25/37; otherwise it looks up a per-index effect ID from a table
# at lbl_8049C648 (indexed by `(this->0x23c+1)*8`, using the
# ALREADY-CONFIRMED multi-purpose global singleton accessor
# fn_804032E8 - same `lbl_80529DEC`-backed function OIWA's rotation
# code and RUPY's game-mode gate both call at other offsets) and calls
# the ALREADY-CONFIRMED fn_801EFD34 with it. A conditional bit
# (`this->0x249`) overrides one array slot's flag (offset 0x68) to
# 0xf. Not yet cross-identified against the 195-entry dispatch table;
# the owning class's constructor/destructor for THIS field convention
# haven't been located yet (may be elsewhere, not adjacent to the
# small-offset class already landed).
.section extab, "a"
.balign 4
.global etb_80005770
etb_80005770:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005770, 8

.section extabindex, "a"
.balign 4
.global eti_80011A58
eti_80011A58:
    .4byte fn_800F8548
    .4byte 0x0000029C
    .4byte etb_80005770
.size eti_80011A58, 12

.text
.balign 4
.global fn_800F8548

fn_800F8548:
    stwu 1, -0x80(1)
    mflr 0
    .4byte 0xC022900C # lfs f1, lbl_8053BFAC@sda21(r0)
    stw 0, 0x84(1)
    fmr 0, 1
    stw 31, 0x7c(1)
    mr 31, 3
    lwz 0, 0x234(3)
    cmpwi 0, 0x2
    .4byte 0x40820030 # bne .L_800F859C
    lhz 4, 0x244(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0229040 # lfs f1, lbl_8053BFE0@sda21(r0)
    addi 0, 4, 0x4000
    .4byte 0xC0029044 # lfs f0, lbl_8053BFE4@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 2, 3, 0
    fabs 2, 2
    fmuls 1, 1, 2
    fmuls 0, 0, 2
L_800F859C:
    li 0, -0x1
    addi 9, 1, 0x38
    stw 0, 0x48(1)
    li 10, 0x0
    stw 0, 0x4c(1)
    .4byte 0x48000064 # b .L_800F8614
L_800F85B4:
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
L_800F8614:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_800F85B4
    .4byte 0xC062900C # lfs f3, lbl_8053BFAC@sda21(r0)
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 5, 0x50(1)
    stb 5, 0x54(1)
    stb 5, 0x55(1)
    stb 5, 0x56(1)
    stb 4, 0x57(1)
    stb 4, 0x58(1)
    stb 5, 0x59(1)
    stb 5, 0x5a(1)
    stb 5, 0x5b(1)
    stb 5, 0x5c(1)
    stb 5, 0x5d(1)
    stb 4, 0x5e(1)
    stw 3, 0x60(1)
    stb 4, 0x64(1)
    stb 5, 0x65(1)
    stb 5, 0x66(1)
    stw 6, 0x68(1)
    stw 5, 0x6c(1)
    stw 0, 0x70(1)
    stfs 3, 0x14(1)
    stfs 3, 0x24(1)
    stfs 3, 0x34(1)
    lbz 0, 0x248(31)
    cmplwi 0, 0x2
    .4byte 0x40820064 # bne .L_800F8704
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    addi 0, 1, 0x8
    .4byte 0xC0029048 # lfs f0, lbl_8053BFE8@sda21(r0)
    lis 3, lbl_80463A58@ha
    fmr 2, 1
    addi 4, 3, lbl_80463A58@l
    stfs 0, 0x8(1)
    mr 3, 31
    addi 6, 1, 0x38
    li 5, 0x25
    stfs 3, 0xc(1)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    stfs 3, 0x10(1)
    stfs 3, 0x18(1)
    stfs 0, 0x1c(1)
    stfs 3, 0x20(1)
    stfs 3, 0x28(1)
    stfs 3, 0x2c(1)
    stfs 0, 0x30(1)
    stw 0, 0x50(1)
    bl fn_801F02BC
    .4byte 0x480000D0 # b .L_800F87D0
L_800F8704:
    .4byte 0xC042902C # lfs f2, lbl_8053BFCC@sda21(r0)
    addi 0, 1, 0x8
    stfs 3, 0xc(1)
    fadds 1, 2, 1
    fadds 0, 2, 0
    stfs 3, 0x10(1)
    stfs 1, 0x8(1)
    stfs 3, 0x18(1)
    stfs 2, 0x1c(1)
    stfs 3, 0x20(1)
    stfs 3, 0x28(1)
    stfs 3, 0x2c(1)
    stfs 0, 0x30(1)
    stw 0, 0x50(1)
    lbz 0, 0x249(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_800F8750
    li 0, 0xf
    stw 0, 0x68(1)
L_800F8750:
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x40820034 # bne .L_800F878C
    lwz 3, 0x23c(31)
    lis 4, lbl_8049C648@ha
    lis 5, 0x5741
    addi 0, 3, 0x1
    addi 4, 4, lbl_8049C648@l
    slwi 0, 0, 3
    addi 3, 5, 0x5254
    add 4, 4, 0
    lwz 4, 0x4(4)
    bl fn_804032E8
    mr 4, 3
    .4byte 0x4800002C # b .L_800F87B4
L_800F878C:
    lwz 4, 0x23c(31)
    lis 3, lbl_8049C648@ha
    lis 5, 0x5741
    addi 0, 4, 0x1
    addi 4, 3, lbl_8049C648@l
    slwi 0, 0, 3
    addi 3, 5, 0x5254
    lwzx 4, 4, 0
    bl fn_804032E8
    mr 4, 3
L_800F87B4:
    .4byte 0xC022900C # lfs f1, lbl_8053BFAC@sda21(r0)
    mr 3, 31
    addi 5, 1, 0x38
    li 6, 0x0
    fmr 2, 1
    fmr 3, 1
    bl fn_801EFD34
L_800F87D0:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

