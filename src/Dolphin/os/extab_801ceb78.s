.section extab, "a"
.balign 4
.global etb_800083D8
etb_800083D8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800083D8, 8

.section extabindex, "a"
.balign 4
.global eti_800156E8
eti_800156E8:
    .4byte fn_801CEB78
    .4byte 0x00000058
    .4byte etb_800083D8
.size eti_800156E8, 12

.text
.balign 4
.global fn_801CEB78

# fn_801CEB78(this) - FSPO's override of vtable offset 0x5c, the third
# NEW extra vtable slot (see project_fsa_fspo_fsob_actor_progress.md).
# Checks whether the tracked rect's width (`0x68-0x60`) OR height
# (`0x6c-0x64`) exceeds a small threshold (`lbl_8053EFC4`); if either
# does, calls `fn_801F2FAC()` (not further decompiled) and returns its
# result, otherwise returns 0. Reads as "has this instance's tracked
# area grown/shifted enough to trigger something" - this address lives
# far from FSPO's own cluster (near the generic 0x54/0x58 defaults'
# address range), suggesting offset 0x5c belongs to a shared
# "growable rect / area" component interface that multiple unrelated
# classes can opt into, not something FSPO-exclusive.
fn_801CEB78:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042C024 # lfs f2, lbl_8053EFC4@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810020 # ble .L_801CEBBC
    lfs 1, 0x6c(3)
    lfs 0, 0x64(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081000C # ble .L_801CEBBC
    bl fn_801F2FAC
    mr 0, 3
L_801CEBBC:
    mr 3, 0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
