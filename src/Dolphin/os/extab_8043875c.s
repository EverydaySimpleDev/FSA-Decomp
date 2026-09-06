# fn_8043875C (update) + fn_804389C8 (Init) - vtable body for the sibling
# actor class of extab_80437f78.s (vtable lbl_804B174C, dtor
# extab_80438540.s, real ctor fn_8020185C already landed).
# fn_804389C8: zeros a 6-slot fixed-point state block (this+0x234..0x248),
# initializes this->0x250 from the confirmed companion-registry ID field
# this->0x198 (see project_fsa_navi_companion_registry.md - "keyed by
# this->0x198"), adjusted by -1 if a spawn-param bit (this->0x90) is set;
# also seeds color/alpha-looking fields at this+0x254-0x270.
# fn_8043875C: per-frame update - decrements 3 timer/counter fields
# (this+0x234/0x238/0x23c), integrates 2 paired-single position/velocity
# pairs (this+0xc/0x3c and this+0x14/0x44 via ps_add), then a state machine
# on this->0x230 (states -1/0/1+) that resolves a target via the confirmed
# registry pair SpatialRegistry_GetBase/fn_801F666C, reads player-related data via
# fn_8023E724/Player_GetCapabilityFlagByIndex, computes an eased color/alpha value (writing
# this+0x25c/0x260/0x264/0x268/0x26c/0x270) using fn_801F71A4 (confirmed
# ease-toward-target utility). Same shared companion-tracking family as
# extab_80437f78.s's actor - exact semantics of the color fields and states
# not claimed further (out of scope for this landing).
.section extab, "a"
.balign 4
.global etb_80010D74
etb_80010D74:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_80010D74, 8

.section extabindex, "a"
.balign 4
.global eti_80020DD0
eti_80020DD0:
    .4byte fn_8043875C
    .4byte 0x0000026C
    .4byte etb_80010D74
.size eti_80020DD0, 12

.text
.balign 4
.global fn_8043875C
.global fn_804389C8

fn_8043875C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stfd 29, 0x20(1)
    psq_st 29, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 31, 3
    lwz 3, 0x234(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_804387A0
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_804387A0:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_804387B4
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_804387B4:
    addi 4, 31, 0x8
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_804387CC
    subi 0, 3, 0x1
    stw 0, 0x234(4)
L_804387CC:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_80438810
    .4byte 0x408001A0 # bge .L_80438998
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80438808
    .4byte 0x48000194 # b .L_80438998
L_80438808:
    li 0, 0x1
    stw 0, 0x230(31)
L_80438810:
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 28
    .4byte 0x40820034 # bne .L_8043884C
    bl SpatialRegistry_GetBase
    lwz 4, 0x250(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    mr 30, 3
    .4byte 0x41820010 # beq .L_80438840
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40800048 # bge .L_80438884
L_80438840:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000150 # b .L_80438998
L_8043884C:
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x41800024 # blt .L_80438878
    cmpwi 3, 0x3
    .4byte 0x4181001C # bgt .L_80438878
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80438878
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_80438884
L_80438878:
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000118 # b .L_80438998
L_80438884:
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 28
    .4byte 0x40820014 # bne .L_804388A0
    lfs 31, 0xc(30)
    lfs 30, 0x10(30)
    lfs 29, 0x14(30)
    .4byte 0x48000018 # b .L_804388B4
L_804388A0:
    lwz 3, 0x250(31)
    bl fn_8023E724
    lfs 31, 0x0(3)
    lfs 30, 0x4(3)
    lfs 29, 0x8(3)
L_804388B4:
    lfs 0, 0x254(31)
    lwz 5, 0x24c(31)
    fadds 30, 30, 0
    cmpwi 5, 0x0
    .4byte 0x418000C8 # blt .L_8043898C
    cmpwi 5, 0x5
    .4byte 0x408000C0 # bge .L_8043898C
    subfic 0, 5, 0x4
    lis 3, 0x4330
    xoris 4, 0, 0x8000
    lwz 0, 0x234(31)
    stw 4, 0xc(1)
    .4byte 0xC8620C98 # lfd f3, lbl_80543C38@sda21(r0)
    cmpwi 0, 0x0
    stw 3, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 3
    fsubs 30, 30, 0
    .4byte 0x4082004C # bne .L_80438948
    subfic 0, 5, 0x5
    stw 3, 0x8(1)
    xoris 0, 0, 0x8000
    .4byte 0xC0420C88 # lfs f2, lbl_80543C28@sda21(r0)
    stw 0, 0xc(1)
    cmpwi 5, 0x0
    .4byte 0xC0020C84 # lfs f0, lbl_80543C24@sda21(r0)
    lfd 1, 0x8(1)
    lfs 4, 0x268(31)
    fsubs 1, 1, 3
    fmadds 0, 2, 1, 0
    fmuls 4, 4, 0
    .4byte 0x4182000C # beq .L_8043893C
    mulli 0, 5, 0xa
    stw 0, 0x234(31)
L_8043893C:
    stfs 4, 0x25c(31)
    stfs 4, 0x260(31)
    stfs 4, 0x264(31)
L_80438948:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x40820020 # bne .L_80438970
    .4byte 0xC0020C8C # lfs f0, lbl_80543C2C@sda21(r0)
    stfs 0, 0x25c(31)
    stfs 0, 0x260(31)
    stfs 0, 0x264(31)
    stfs 0, 0x268(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x270(31)
L_80438970:
    lfs 1, 0x268(31)
    addi 3, 31, 0x25c
    .4byte 0xC0420C90 # lfs f2, lbl_80543C30@sda21(r0)
    .4byte 0xC0620C94 # lfs f3, lbl_80543C34@sda21(r0)
    bl fn_801F71A4
    lfs 0, 0x25c(31)
    stfs 0, 0x260(31)
L_8043898C:
    stfs 31, 0xc(31)
    stfs 30, 0x10(31)
    stfs 29, 0x14(31)
L_80438998:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 0, 0x54(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_804389C8:
    li 0, 0x0
    stw 0, 0x234(3)
    stw 0, 0x238(3)
    stw 0, 0x23c(3)
    stw 0, 0x240(3)
    stw 0, 0x244(3)
    stw 0, 0x248(3)
    lwz 0, 0x198(3)
    stw 0, 0x250(3)
    lwz 4, 0x90(3)
    clrlwi. 0, 4, 28
    .4byte 0x4182000C # beq .L_80438A00
    subi 0, 4, 0x1
    stw 0, 0x250(3)
L_80438A00:
    li 0, 0x4
    .4byte 0xC0220C80 # lfs f1, lbl_80543C20@sda21(r0)
    stw 0, 0x24c(3)
    li 4, 0x1
    .4byte 0xC0020C8C # lfs f0, lbl_80543C2C@sda21(r0)
    li 0, 0x0
    stfs 1, 0x258(3)
    stfs 1, 0x254(3)
    stfs 0, 0x25c(3)
    stfs 0, 0x260(3)
    stfs 0, 0x264(3)
    stfs 0, 0x268(3)
    stfs 0, 0x26c(3)
    stfs 0, 0x270(3)
    stb 4, 0x11e(3)
    stw 0, 0x230(3)
    blr

