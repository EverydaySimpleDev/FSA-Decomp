.section extab, "a"
.balign 4
.global etb_8000D3E4
etb_8000D3E4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000D3E4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C6D8
eti_8001C6D8:
    .4byte fn_802F5E9C
    .4byte 0x00000158
    .4byte etb_8000D3E4
.size eti_8001C6D8, 12

# fn_802F5E9C(registry, posVec3*, accumulator=f1) - the FIRST of the
# "spatial triad" flagged as undecompiled in
# [[project_fsa_shared_effect_subsystem_crossref]] (called throughout the
# session against `lbl_8053AB10->0x20`). Now genuinely understood: this is
# an AMBIENT LIGHT/COLOR PROBE-GRID SAMPLER.
#
# Reads `registry->0xc21c` (an active-probe-grid count) and bails (returns
# `accumulator` unchanged) if it's <= 0. Otherwise bounds-checks
# `posVec3`'s x/z against the grid's min bounds (`registry->0x2368/0x236c`)
# and max bounds (min + `registry->0x2380/0x2384` [grid cell counts] *
# `lbl_80541510` [cell size]) - bailing if outside the grid on either axis.
#
# If inside: computes fractional cell coordinates (`(pos-min) *
# lbl_80541514` [inverse cell size]), truncates to integer cell X/Z, and
# resolves a probe-data pointer as `registry->0x100 + cellZ*0x30c +
# cellX*0xc` (0x30c=780-byte row stride, 0xc=12-byte probe stride).
# Bilinearly blends 4 neighboring probe values - `probe->0x8`/`0x14`
# (current row) and `probe->0x314`/`0x320` (exactly one row-stride ahead,
# i.e. the next Z row) - weighted by the fractional X/Z offsets, and ADDS
# the blended result into `accumulator`, which is returned in `f1`. This
# confirms `lbl_8053AB10->0x20` is a 2D grid-based ambient-lighting probe
# registry, and ties it directly to the grid-cell-hash math already found
# in the camera-manager's lighting cluster (`fn_8013AC90`/`fn_8013B004`/
# `fn_8013CB44`/`fn_8013CC50`) - those functions and this one are part of
# the SAME probe-grid lighting system, not separate subsystems.
.text
.balign 4
.global fn_802F5E9C

fn_802F5E9C:
    stwu 1, -0x30(1)
    addis 5, 3, 0x1
    lfs 1, 0x8(4)
    lwz 0, -0x3de4(5)
    cmpwi 0, 0x0
    .4byte 0x4081013C # ble .L_802F5FEC
    lfs 3, 0x0(4)
    lfs 2, 0x2368(3)
    fcmpo cr0, 3, 2
    cror eq, gt, eq
    .4byte 0x40820128 # bne .L_802F5FEC
    lwz 0, 0x2380(3)
    lis 5, 0x4330
    stw 5, 0x8(1)
    xoris 0, 0, 0x8000
    .4byte 0xC882E568 # lfd f4, lbl_80541508@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC0A2E570 # lfs f5, lbl_80541510@sda21(r0)
    lfd 0, 0x8(1)
    fsubs 0, 0, 4
    fmadds 0, 5, 0, 2
    fcmpo cr0, 3, 0
    .4byte 0x408000F8 # bge .L_802F5FEC
    lfs 8, 0x4(4)
    lfs 6, 0x236c(3)
    fcmpo cr0, 8, 6
    cror eq, gt, eq
    .4byte 0x408200E4 # bne .L_802F5FEC
    lwz 0, 0x2384(3)
    stw 5, 0x8(1)
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 4
    fmadds 0, 5, 0, 6
    fcmpo cr0, 8, 0
    .4byte 0x408000C0 # bge .L_802F5FEC
    fsubs 3, 3, 2
    .4byte 0xC0E2E574 # lfs f7, lbl_80541514@sda21(r0)
    fsubs 8, 8, 6
    lwz 0, 0x2388(3)
    stw 5, 0x18(1)
    fmuls 2, 7, 3
    fmuls 0, 7, 8
    slwi 0, 0, 2
    add 3, 3, 0
    stw 5, 0x20(1)
    fctiwz 2, 2
    fctiwz 0, 0
    lwz 4, 0x100(3)
    stfd 2, 0x8(1)
    .4byte 0xC0C2E578 # lfs f6, lbl_80541518@sda21(r0)
    lwz 3, 0xc(1)
    stfd 0, 0x10(1)
    xoris 0, 3, 0x8000
    stw 0, 0x1c(1)
    mulli 0, 3, 0xc
    lwz 5, 0x14(1)
    lfd 0, 0x18(1)
    xoris 3, 5, 0x8000
    fsubs 2, 0, 4
    stw 3, 0x24(1)
    mulli 3, 5, 0x30c
    lfd 0, 0x20(1)
    fnmsubs 3, 5, 2, 3
    add 3, 3, 0
    fsubs 2, 0, 4
    add 3, 4, 3
    fmuls 9, 7, 3
    lfs 0, 0x320(3)
    fnmsubs 5, 5, 2, 8
    lfs 3, 0x14(3)
    lfs 2, 0x314(3)
    fsubs 8, 6, 9
    fmuls 0, 9, 0
    lfs 4, 0x8(3)
    fmuls 7, 7, 5
    fmuls 3, 3, 9
    fmadds 0, 8, 2, 0
    fsubs 5, 6, 7
    fmadds 2, 4, 8, 3
    fmuls 0, 7, 0
    fmadds 0, 5, 2, 0
    fadds 1, 1, 0
L_802F5FEC:
    addi 1, 1, 0x30
    blr
