.section extab, "a"
.balign 4
.global etb_80007464
etb_80007464:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_80007464, 8

.section extabindex, "a"
.balign 4
.global eti_800140BC
eti_800140BC:
    .4byte fn_801756E4
    .4byte 0x000000F0
    .4byte etb_80007464
.size eti_800140BC, 12

.text
.balign 4
.global fn_801756E4

# fn_801756E4(this) - STAL (Stalfos)'s real draw(). Genuinely understood:
#
# 1. Saves the real position (`this->0xc/10/14`) into callee-saved FP
#    registers.
# 2. If a frame counter (`this->0x248`) is within [0x1e, 0x82) (30-130,
#    presumably a "reassembling/rattling" animation window), applies a
#    small TEMPORARY X-offset to `this->0xc` - alternating add/subtract
#    based on bit 1 of the counter - a classic screen-shake/rattle wobble.
# 3. Checks the "wide hitbox" flag set in setParams (`this->0x264`) into a
#    local `isBig` boolean.
# 4. Calls `fn_801F02BC(this, lbl_80466820, jitterScale, this->0x258+0x158,
#    0, 7, isBig, 0)` - a PREVIOUSLY UNSEEN render entry point, likely a
#    4th sibling to the confirmed "universal actor render" family
#    (`fn_801F06F0`/`fn_801EF574`/`fn_801EF830`, see
#    [[project_fsa_rendering_pipeline_foothold]]) given the matching
#    shape (color/palette table pointer, a scale float, a model/resource
#    offset, a mode/count pair, a size-variant flag). Not decompiled yet.
# 5. RESTORES the real position from the saved FP registers - confirms
#    step 2's wobble is purely a one-frame draw-time offset, never
#    persisted into the actor's actual simulated position.
fn_801756E4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stfd 29, 0x10(1)
    psq_st 29, 0x18(1), 0, 0
    stw 31, 0xc(1)
    mr 31, 3
    li 8, 0x0
    lwz 0, 0x248(3)
    lfs 31, 0xc(3)
    cmpwi 0, 0x1e
    lfs 30, 0x10(3)
    lfs 29, 0x14(3)
    .4byte 0x40810038 # ble .L_80175760
    cmpwi 0, 0x82
    .4byte 0x40800030 # bge .L_80175760
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820018 # bne .L_80175750
    lfs 1, 0xc(31)
    .4byte 0xC002ABB0 # lfs f0, lbl_8053DB50@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x48000014 # b .L_80175760
L_80175750:
    lfs 1, 0xc(31)
    .4byte 0xC002ABB0 # lfs f0, lbl_8053DB50@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
L_80175760:
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80175770
    li 8, 0x1
L_80175770:
    .4byte 0xC022ABB4 # lfs f1, lbl_8053DB54@sda21(r0)
    lis 3, lbl_80466820@ha
    lwz 5, 0x258(31)
    addi 4, 3, lbl_80466820@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x158
    li 6, 0x0
    li 7, 0x7
    li 9, 0x0
    bl fn_801F02BC
    stfs 31, 0xc(31)
    stfs 30, 0x10(31)
    stfs 29, 0x14(31)
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    psq_l 29, 0x18(1), 0, 0
    lfd 29, 0x10(1)
    lwz 0, 0x44(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

