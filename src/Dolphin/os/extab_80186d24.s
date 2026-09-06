.section extab, "a"
.balign 4
.global etb_8000765C
etb_8000765C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000765C, 8

.section extabindex, "a"
.balign 4
.global eti_800143B0
eti_800143B0:
    .4byte fn_80186D24
    .4byte 0x000001FC
    .4byte etb_8000765C
.size eti_800143B0, 12

.text
.balign 4
.global fn_80186D24

# fn_80186D24(this) - WNWN's real setParams (see
# project_fsa_wnwn_actor_progress.md). No shared-base setParams call
# (matches the raw-base-ctor lineage). Zero-sizes 2 tracked rects
# (`0x60-0x6c`/`0x80-0x8c`) and clears a run of state fields
# (`0x24c-0x25c`, `0x234-0x248`).
#
# Rolls the CONFIRMED global PRNG directly to pick a random variant
# (`this->0x98`, derived via the standard fixed-point float trick), then
# derives `this->0x272` via `fn_801F6874(this->0x98)` (the same
# type-to-derived-value helper IPOT/FSOB use) and an animation base
# index `this->0x264 = this->0x98*2 + this->0x24c`. Sets a sentinel
# `this->0x270 = 0xffff`.
#
# Initializes BOTH of the ctor-constructed 10-element position arrays
# (`this->0x294` and `this->0x30c`, see extab_80201fc8.s - contiguous
# in memory, walked here as one combined 0x18-byte-stride structure,
# 2 elements unrolled per loop iteration x5) to the actor's OWN current
# position (`this->0xc/0x10/0x14`) - the position "trail" WNWN's draw
# reads from starts fully collapsed at the spawn point. Also clears a
# parallel run of 5 int16 pairs at `this->0x274-0x287` (a per-slot
# timer/flag array, purpose not further traced).
fn_80186D24:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC0A2B030 # lfs f5, lbl_8053DFD0@sda21(r0)
    li 4, 0x0
    stw 0, 0x24(1)
    .4byte 0xC082AFC0 # lfs f4, lbl_8053DF60@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, 0x19
    .4byte 0xC062B034 # lfs f3, lbl_8053DFD4@sda21(r0)
    stfs 5, 0x60(31)
    addi 0, 3, 0x660d
    .4byte 0xC022AFB4 # lfs f1, lbl_8053DF54@sda21(r0)
    stfs 5, 0x64(31)
    .4byte 0xC002AFA0 # lfs f0, lbl_8053DF40@sda21(r0)
    stfs 4, 0x68(31)
    .4byte 0xC042B038 # lfs f2, lbl_8053DFD8@sda21(r0)
    stfs 4, 0x6c(31)
    stfs 5, 0x80(31)
    stfs 5, 0x84(31)
    stfs 4, 0x88(31)
    stfs 4, 0x8c(31)
    stfs 3, 0x70(31)
    stfs 3, 0x74(31)
    stfs 1, 0x78(31)
    stfs 1, 0x7c(31)
    stw 4, 0x24c(31)
    stw 4, 0x250(31)
    stw 4, 0x254(31)
    stw 4, 0x258(31)
    stw 4, 0x25c(31)
    stw 4, 0x234(31)
    stw 4, 0x238(31)
    stw 4, 0x23c(31)
    stw 4, 0x240(31)
    stw 4, 0x244(31)
    stw 4, 0x248(31)
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
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x272(31)
    lis 3, 0x1
    subi 4, 3, 0x1
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    lwz 5, 0x98(31)
    li 0, 0x5
    lwz 3, 0x24c(31)
    mr 6, 31
    slwi 5, 5, 1
    mr 7, 31
    add 3, 5, 3
    stw 3, 0x264(31)
    li 3, 0x0
    stfs 0, 0x290(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x288(31)
    lfs 0, 0xc(31)
    stfs 0, 0x384(31)
    lfs 0, 0x10(31)
    stfs 0, 0x388(31)
    lfs 0, 0x14(31)
    stfs 0, 0x38c(31)
    sth 4, 0x270(31)
    mtctr 0
L_80186E64:
    lfs 0, 0xc(31)
    stfs 0, 0x294(6)
    lfs 0, 0x10(31)
    stfs 0, 0x298(6)
    lfs 0, 0x14(31)
    stfs 0, 0x29c(6)
    lfs 0, 0xc(31)
    stfs 0, 0x30c(6)
    lfs 0, 0x10(31)
    stfs 0, 0x310(6)
    lfs 0, 0x14(31)
    stfs 0, 0x314(6)
    sth 3, 0x274(7)
    lfs 0, 0xc(31)
    stfs 0, 0x2a0(6)
    lfs 0, 0x10(31)
    stfs 0, 0x2a4(6)
    lfs 0, 0x14(31)
    stfs 0, 0x2a8(6)
    lfs 0, 0xc(31)
    stfs 0, 0x318(6)
    lfs 0, 0x10(31)
    stfs 0, 0x31c(6)
    lfs 0, 0x14(31)
    stfs 0, 0x320(6)
    addi 6, 6, 0x18
    sth 3, 0x276(7)
    addi 7, 7, 0x4
    .4byte 0x4200FF90 # bdnz .L_80186E64
    .4byte 0xC002AFA4 # lfs f0, lbl_8053DF44@sda21(r0)
    lis 3, 0xa04
    li 6, 0x3
    li 5, -0x1
    stfs 0, 0x26c(31)
    li 4, 0x4
    addi 3, 3, 0x4
    li 0, 0x0
    stw 6, 0x268(31)
    stw 5, 0x260(31)
    stw 4, 0x118(31)
    stw 3, 0xb0(31)
    stw 0, 0x230(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
