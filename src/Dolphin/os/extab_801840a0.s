.section extab, "a"
.balign 4
.global etb_8000761C
etb_8000761C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000761C, 8

.section extabindex, "a"
.balign 4
.global eti_80014350
eti_80014350:
    .4byte fn_801840A0
    .4byte 0x00000040
    .4byte etb_8000761C
.size eti_80014350, 12

.text
.balign 4
.global fn_801840A0

# fn_801840A0(this) - FAGN's real draw (see
# project_fsa_rivr_gdmn_fagn_actor_progress.md). Unconditional (no
# state gate, unlike RIVR/GDMN). Draws via the CONFIRMED shared render
# primitive `fn_801F06F0`, indexing FAGN's own resource table
# `lbl_80466EC0` at `this->0x24c + 0x145` (the random-variant-derived
# index set in setParams), with model-index override 7.
#
# Attempted real-C++ promotion (2 variants, same as sibling
# fn_8014DCD4): retail schedules the float SDA constant load + fmr
# duplicate BEFORE the table-pointer/index setup; MWCC always moves it
# AFTER regardless of source order. Same "float load reordering" wall.
# Reverted to raw asm.
fn_801840A0:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022AF60 # lfs f1, lbl_8053DF00@sda21(r0)
    lis 4, lbl_80466EC0@ha
    stw 0, 0x14(1)
    addi 4, 4, lbl_80466EC0@l
    fmr 2, 1
    li 6, 0x0
    lwz 5, 0x24c(3)
    li 7, 0x7
    addi 5, 5, 0x145
    bl fn_801F06F0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
