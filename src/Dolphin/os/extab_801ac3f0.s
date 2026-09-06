# fn_801AC3F0 - GOMA cluster, 7/7. setParams(). Initializes default
# scale/speed floats and zeroes GOMA's timer/counter fields, extracts an
# initial state (this->0x254) from a nibble of the spawn parameter
# (this->0x90), advances the global PRNG (lbl_8053AAF8->0xb4) to derive
# a jitter value, and cross-references the per-room config record
# (GetRoomConfigRecord, byte offset 0x31df - a per-level enable/disable flag) to
# possibly force the "disabled" bit of this->0x98. For states 0/2 sets
# "appear" defaults and plays a one-shot intro sound (fn_80458F9C,
# sound-id 0x3c) guarded by lbl_8053ABD8 (same guard released in the
# destructor fn_801AC324); states 2/3 each get their own distinct
# default-parameter block.
.section extab, "a"
.balign 4
.global etb_80007ADC
etb_80007ADC:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007ADC, 8

.section extabindex, "a"
.balign 4
.global eti_800149C8
eti_800149C8:
    .4byte fn_801AC3F0
    .4byte 0x000002D8
    .4byte etb_80007ADC
.size eti_800149C8, 12

.text
.balign 4
.global fn_801AC3F0

fn_801AC3F0:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002B810 # lfs f0, lbl_8053E7B0@sda21(r0)
    li 5, 0x0
    stw 0, 0x24(1)
    li 4, 0x1
    .4byte 0xC082B820 # lfs f4, lbl_8053E7C0@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, 0x19
    .4byte 0xC042B7F4 # lfs f2, lbl_8053E794@sda21(r0)
    stw 30, 0x18(1)
    addi 0, 3, 0x660d
    .4byte 0xC022B7D0 # lfs f1, lbl_8053E770@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC002B824 # lfs f0, lbl_8053E7C4@sda21(r0)
    stfs 4, 0x64(31)
    .4byte 0xC062B7D8 # lfs f3, lbl_8053E778@sda21(r0)
    stfs 0, 0x68(31)
    .4byte 0xC002B7D4 # lfs f0, lbl_8053E774@sda21(r0)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    .4byte 0xC022B7DC # lfs f1, lbl_8053E77C@sda21(r0)
    stfs 4, 0x84(31)
    stfs 0, 0x88(31)
    .4byte 0xC002B7B4 # lfs f0, lbl_8053E754@sda21(r0)
    stfs 2, 0x8c(31)
    .4byte 0xC042B818 # lfs f2, lbl_8053E7B8@sda21(r0)
    stfs 3, 0x70(31)
    stfs 3, 0x74(31)
    stfs 1, 0x78(31)
    stfs 1, 0x7c(31)
    lwz 3, 0x90(31)
    clrlwi 3, 3, 28
    stw 3, 0x254(31)
    stw 5, 0x244(31)
    stw 5, 0x248(31)
    stw 5, 0x24c(31)
    stw 5, 0x234(31)
    stw 5, 0x238(31)
    stw 5, 0x23c(31)
    stw 5, 0x240(31)
    stw 5, 0x27c(31)
    stw 5, 0x280(31)
    stw 4, 0xb8(31)
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
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    stw 0, 0x98(31)
    lwz 0, 0x98(31)
    clrlwi 0, 0, 30
    stw 0, 0x98(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_801AC51C
    lwz 0, 0x98(31)
    clrlwi 0, 0, 31
    stw 0, 0x98(31)
L_801AC51C:
    lwz 5, 0x98(31)
    lis 3, 0xa04
    lwz 0, 0x244(31)
    li 4, 0x3ef
    slwi 5, 5, 2
    .4byte 0xC002B7A4 # lfs f0, lbl_8053E744@sda21(r0)
    add 0, 5, 0
    li 7, 0x3
    stw 0, 0x250(31)
    addi 0, 3, 0x10
    stfs 0, 0x26c(31)
    stfs 0, 0x268(31)
    stfs 0, 0x264(31)
    stw 4, 0x108(31)
    stw 7, 0x258(31)
    lwz 4, 0x98(31)
    stw 4, 0x260(31)
    stw 0, 0xb0(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801AC578
    cmpwi 0, 0x2
    .4byte 0x408200A0 # bne .L_801AC614
L_801AC578:
    li 0, 0x2
    .4byte 0xC002B7B4 # lfs f0, lbl_8053E754@sda21(r0)
    stw 0, 0x258(31)
    stw 0, 0xbc(31)
    stfs 0, 0x270(31)
    stfs 0, 0x274(31)
    stfs 0, 0x278(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_801AC5D0
    .4byte 0xC022B828 # lfs f1, lbl_8053E7C8@sda21(r0)
    .4byte 0xC002B820 # lfs f0, lbl_8053E7C0@sda21(r0)
    stfs 1, 0x80(31)
    .4byte 0xC022B818 # lfs f1, lbl_8053E7B8@sda21(r0)
    stfs 0, 0x84(31)
    .4byte 0xC002B7F4 # lfs f0, lbl_8053E794@sda21(r0)
    stfs 1, 0x88(31)
    stfs 0, 0x8c(31)
L_801AC5D0:
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x2
    .4byte 0x408200C8 # bne .L_801AC6A8
    .4byte 0x800D9018 # lwz r0, lbl_8053ABD8@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x408200BC # bne .L_801AC6A8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    .4byte 0x806D9018 # lwz r3, lbl_8053ABD8@sda21(r0)
    li 0, 0x0
    addi 3, 3, 0x1
    .4byte 0x906D9018 # stw r3, lbl_8053ABD8@sda21(r0)
    stw 0, 0x230(31)
    .4byte 0x48000098 # b .L_801AC6A8
L_801AC614:
    stw 7, 0xbc(31)
    li 0, 0x3f2
    li 5, 0x2
    addi 4, 3, 0x4
    stw 0, 0x108(31)
    li 3, 0x13
    .4byte 0xC022B7B8 # lfs f1, lbl_8053E758@sda21(r0)
    li 0, 0x8
    lwz 6, 0x98(31)
    .4byte 0xC002B7BC # lfs f0, lbl_8053E75C@sda21(r0)
    clrlwi 6, 6, 31
    stw 6, 0x260(31)
    stw 5, 0x98(31)
    stw 4, 0xb0(31)
    stfs 1, 0x270(31)
    stfs 0, 0x274(31)
    stfs 0, 0x278(31)
    stw 7, 0xc0(31)
    lwz 4, 0x98(31)
    clrlwi 4, 4, 31
    stw 4, 0x98(31)
    stw 3, 0x250(31)
    stw 0, 0x230(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x3
    .4byte 0x40820030 # bne .L_801AC6A8
    .4byte 0x800D9018 # lwz r0, lbl_8053ABD8@sda21(r0)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_801AC6A8
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    .4byte 0x806D9018 # lwz r3, lbl_8053ABD8@sda21(r0)
    li 0, 0x7
    addi 3, 3, 0x1
    .4byte 0x906D9018 # stw r3, lbl_8053ABD8@sda21(r0)
    stw 0, 0x230(31)
L_801AC6A8:
    lwz 0, 0x108(31)
    stw 0, 0x25c(31)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

