# Fresh-gap-hunt batch 22 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
#
# fn_801CC730(idOut, posOut): zero-inits *idOut/-posOut, finds a nearby
# "ARRW" actor via fn_8023B2B0+SpatialRegistry_GetBase/fn_801F666C, verifies
# active flag (+0x11c)/type code (+0x1a0)/cooldown (+0x108>0), writes id/pos
# out and clears the cooldown on success.
#
# Attempted real-C++ promotion (Phase 4): matched retail's logic and even
# reproduced the "load float constant once, reuse for all 3 stores" and
# multi-condition `&&` chain shapes correctly, but hit a pure register-
# allocation-only prologue-ordering mismatch (same symptom as
# fn_801DAD2C/fn_802EB27C/fn_801C1224 in this same batch). Same class of
# issue as fn_80317BB8/fn_80107014/fn_801C5680/fn_801DA438/fn_801E2180/
# dtor_801D7730/fn_803DA878/fn_801DACAC. Reverted to raw asm; see
# project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_80008280
etb_80008280:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008280, 8

.section extabindex, "a"
.balign 4
.global eti_800154E4
eti_800154E4:
    .4byte fn_801CC730
    .4byte 0x000000F0
    .4byte etb_80008280
.size eti_800154E4, 12

.text
.balign 4
.global fn_801CC730

fn_801CC730:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr. 28, 4
    .4byte 0x4182000C # beq .L_801CC764
    li 0, -0x1
    stw 0, 0x0(28)
L_801CC764:
    cmplwi 29, 0x0
    .4byte 0x41820014 # beq .L_801CC77C
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    stfs 0, 0x0(29)
    stfs 0, 0x4(29)
    stfs 0, 0x8(29)
L_801CC77C:
    bl fn_8023B2B0
    mr. 31, 3
    .4byte 0x41800078 # blt .L_801CC7FC
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820064 # beq .L_801CC7FC
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x41820058 # beq .L_801CC7FC
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4152
    cmplwi 0, 0x5257
    .4byte 0x40820048 # bne .L_801CC7FC
    lwz 0, 0x108(3)
    cmpwi 0, 0x0
    .4byte 0x4081003C # ble .L_801CC7FC
    cmplwi 28, 0x0
    li 30, 0x1
    .4byte 0x41820008 # beq .L_801CC7D4
    stw 31, 0x0(28)
L_801CC7D4:
    cmplwi 29, 0x0
    .4byte 0x4182001C # beq .L_801CC7F4
    lfs 0, 0x3c(3)
    stfs 0, 0x0(29)
    lfs 0, 0x40(3)
    stfs 0, 0x4(29)
    lfs 0, 0x44(3)
    stfs 0, 0x8(29)
L_801CC7F4:
    li 0, 0x0
    stw 0, 0x108(3)
L_801CC7FC:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

