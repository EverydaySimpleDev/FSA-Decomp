.section extab, "a"
.balign 4
.global etb_800089F0
etb_800089F0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800089F0, 8

.section extabindex, "a"
.balign 4
.global eti_80015F1C
eti_80015F1C:
    .4byte fn_801E3320
    .4byte 0x00000098
    .4byte etb_800089F0
.size eti_80015F1C, 12

.text
.balign 4
.global fn_801E3320

# fn_801E3320(this) - TINB's real setParams (see
# project_fsa_tinb_actor_progress.md). Chains the confirmed shared base
# setParams `fn_801D0ED0`, then ONLY sets up the standard 3-stacked
# zero-size rect (`0x60-0x8c`, same shape as FSPO/FSOB's rect init),
# clears `this->0xb0`, sets flags `|=0x380`, and resets the 1000-tick
# timer (`0x108`/`0x244`). No direction/offset computation, no
# per-instance array registration, no visibility-flag touch - simpler
# than FSPO. Combined with TINB's no-op update and generic no-op draw,
# and its shared vtable-0x5c override with FSPO
# (`fn_801CEB78` - the "has my tracked rect grown enough" check, see
# extab_801ceb78.s), TINB reads as a pure invisible AREA-TRIGGER actor:
# it exists solely to own a growable detection rect checked via the
# shared 0x5c hook, with no rendering, no per-frame update, and no
# marker-registration behavior of its own.
fn_801E3320:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0xC042C568 # lfs f2, lbl_8053F508@sda21(r0)
    li 3, 0x0
    .4byte 0xC022C56C # lfs f1, lbl_8053F50C@sda21(r0)
    li 0, 0x3e8
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 3, 0xb0(31)
    lwz 3, 0x230(31)
    ori 3, 3, 0x380
    stw 3, 0x230(31)
    stw 0, 0x108(31)
    lwz 0, 0x108(31)
    stw 0, 0x244(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
