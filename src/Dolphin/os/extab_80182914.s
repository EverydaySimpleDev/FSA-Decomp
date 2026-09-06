.section extab, "a"
.balign 4
.global etb_800075B4
etb_800075B4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800075B4, 8

.section extabindex, "a"
.balign 4
.global eti_800142B4
eti_800142B4:
    .4byte fn_80182914
    .4byte 0x00000088
    .4byte etb_800075B4
.size eti_800142B4, 12

.text
.balign 4
.global fn_80182914

# fn_80182914(this) - RIVR's real draw (see
# project_fsa_rivr_gdmn_fagn_actor_progress.md). CORRECTION (later
# session): this is NOT RIVR-exclusive - it is also installed at
# vtable slot +0x20 on "Class A" of the unrelated RUSA-repel movement-
# actor family (lbl_804A1718, ctor fn_8020229C, see
# extab_8020229c.s) - confirmed by the SAME state-field offsets
# (`this->0x230`/`0x258`/`0x25c`) being meaningful on both actors. A
# genuinely shared generic-ish render helper, not a RIVR-specific one.
# Gated by state
# (`this->0x230` 0 or 1, OR `this->0x23c != 0`). Draws via the
# CONFIRMED shared render-primitive helper `fn_801F06F0` (see
# project_fsa_rendering_pipeline_foothold.md), indexing a shared
# per-actor-family resource table `lbl_80466E90` at
# `this->0x254 + 0x158` (+5 more if `this->0x25c==1` and the index is
# already >=3 - a variant-swap). Passes -1 as the model-index override
# (`r7`) normally, or 0 if `this->0x258 != 0` (a different render
# path/state).
fn_80182914:
    stwu 1, -0x10(1)
    mflr 0
    li 7, -0x1
    stw 0, 0x14(1)
    lwz 0, 0x230(3)
    lwz 5, 0x254(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8018293C
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80182948
L_8018293C:
    lwz 0, 0x23c(3)
    cmpwi 0, 0x0
    .4byte 0x41820048 # beq .L_8018298C
L_80182948:
    lwz 0, 0x258(3)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_80182958
    li 7, 0x0
L_80182958:
    lwz 0, 0x25c(3)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_80182970
    cmpwi 5, 0x3
    .4byte 0x41800008 # blt .L_80182970
    addi 5, 5, 0x5
L_80182970:
    .4byte 0xC022AF28 # lfs f1, lbl_8053DEC8@sda21(r0)
    lis 4, lbl_80466E90@ha
    addi 4, 4, lbl_80466E90@l
    addi 5, 5, 0x158
    fmr 2, 1
    li 6, 0x0
    bl fn_801F06F0
L_8018298C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
