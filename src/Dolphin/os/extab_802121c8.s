.section extab, "a"
.balign 4
.global etb_8000A090
etb_8000A090:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A090, 8

.section extabindex, "a"
.balign 4
.global eti_80017C20
eti_80017C20:
    .4byte fn_802121C8
    .4byte 0x000000C0
    .4byte etb_8000A090
.size eti_80017C20, 12

.text
.balign 4
.global fn_802121C8

# fn_802121C8(this) - RUSA's vtable-0x10 override (see
# project_fsa_rusa_actor_progress.md), a ONE-SHOT initializer gated by
# bit 18 of `this->0x230` (skips if already run).
#
# CORRECTION (see reference_fsa_spatial_registry_system.md): an earlier
# pass mis-described `fn_801F76F0` as a spawn helper. It is actually a
# read-only nearest-neighbor QUERY against the confirmed global spatial
# registry (extab_801f856c.s/extab_801f75b4.s) - it filters candidate
# records by 4-char ASCII type code (`+0x1a0=="WARP"`, code 0x57415250)
# and a caller-supplied value matched against the record's own `+0x4`
# field (here, RUSA's own `this->0x4`). So this function does NOT spawn
# a warp point - it LOCATES an already-existing nearby WARP-type record
# (presumably placed separately, e.g. by room/level data) and adopts
# its ID into `this->0x38c` via `fn_801F666C`. It then validates the
# found warp's position (`record->0xc/0x10`) against RUSA's own
# (`this->0xc/0x10`) via a squared-distance check against threshold
# `lbl_8053FB20`; if it's too far away (or the query/lookup failed),
# discards the handle by writing -1 back to `this->0x38c`. Reads as
# "find the warp point near me and remember it, but only if it's
# actually close enough".
fn_802121C8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x40820088 # bne .L_80212270
    bl SpatialRegistry_GetBase
    lis 4, 0x5741
    lwz 5, 0x4(30)
    addi 4, 4, 0x5250
    addi 6, 30, 0xc
    li 7, -0x1
    bl fn_801F76F0
    stw 3, 0x38c(30)
    lwz 31, 0x38c(30)
    cmpwi 31, 0x0
    .4byte 0x4180005C # blt .L_80212270
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820010 # bne .L_80212238
    li 0, -0x1
    stw 0, 0x38c(30)
    .4byte 0x4800003C # b .L_80212270
L_80212238:
    lfs 3, 0xc(3)
    lfs 0, 0xc(30)
    lfs 2, 0x10(3)
    lfs 1, 0x10(30)
    fsubs 3, 3, 0
    .4byte 0xC002CB80 # lfs f0, lbl_8053FB20@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80212270
    li 0, -0x1
    stw 0, 0x38c(30)
L_80212270:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
