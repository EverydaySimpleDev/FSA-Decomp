# fn_802EB27C - TKRA: handle-cleanup scan (0x98)
# Iterates 4 handle slots (this->0x24c, stride 4), resolving each via
# SpatialRegistry_GetBase/fn_801F666C; for each resolved actor, queries its status via
# fn_801597B8 and if it equals 3, calls fn_801597C0 on it. Returns 1 if any
# action was taken.
#
# Attempted real-C++ promotion (Phase 4): matched retail except a pure
# register-allocation/scheduling choice - retail's double-move idiom for
# the resolved-actor pointer (`mr r0,r3` then a SEPARATE dot-form
# `mr. r30,r0`) and its overall r28-r31 register assignment could not be
# reproduced via 2 source variants (a plain `void* found` local; an
# `intptr_t`-cast reuse of the `id` variable). Same class of issue as
# fn_80317BB8/fn_80107014/fn_801C5680/fn_801DA438/fn_801E2180/
# dtor_801D7730/fn_803DA878/fn_801DACAC/fn_801DAD2C. Reverted to raw asm;
# see project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_8000D17C
etb_8000D17C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000D17C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C36C
eti_8001C36C:
    .4byte fn_802EB27C
    .4byte 0x00000098
    .4byte etb_8000D17C
.size eti_8001C36C, 12

.text
.balign 4
.global fn_802EB27C

fn_802EB27C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    li 28, 0x0
L_802EB2A4:
    lwz 30, 0x24c(31)
    cmpwi 30, 0x0
    .4byte 0x41800034 # blt .L_802EB2E0
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr 0, 3
    mr. 30, 0
    .4byte 0x4182001C # beq .L_802EB2E0
    bl fn_801597B8
    cmpwi 3, 0x3
    .4byte 0x40820010 # bne .L_802EB2E0
    mr 3, 30
    bl fn_801597C0
    li 29, 0x1
L_802EB2E0:
    addi 28, 28, 0x1
    addi 31, 31, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FFB8 # blt .L_802EB2A4
    lwz 0, 0x24(1)
    mr 3, 29
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

