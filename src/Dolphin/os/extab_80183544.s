.section extab, "a"
.balign 4
.global etb_800075E4
etb_800075E4:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800075E4, 8

.section extabindex, "a"
.balign 4
.global eti_800142FC
eti_800142FC:
    .4byte fn_80183544
    .4byte 0x00000058
    .4byte etb_800075E4
.size eti_800142FC, 12

.text
.balign 4
.global fn_80183544

# fn_80183544(this) - GDMN's real draw (see
# project_fsa_rivr_gdmn_fagn_actor_progress.md). Gated by state
# (`this->0x230` 0 or 1). Draws via the CONFIRMED shared render
# primitive `fn_801F06F0`, indexing GDMN's own resource table
# `lbl_80466EA8` at `this->0x254 + 0x155`. Simpler than RIVR's draw -
# no `0x258`/`0x25c` branching, model-index override always -1.
fn_80183544:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x0
    .4byte 0x41820034 # beq .L_8018358C
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_80183568
    .4byte 0x48000028 # b .L_8018358C
L_80183568:
    .4byte 0xC022AF40 # lfs f1, lbl_8053DEE0@sda21(r0)
    lis 4, lbl_80466EA8@ha
    lwz 5, 0x254(3)
    addi 4, 4, lbl_80466EA8@l
    fmr 2, 1
    li 6, 0x0
    addi 5, 5, 0x155
    li 7, -0x1
    bl fn_801F06F0
L_8018358C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
