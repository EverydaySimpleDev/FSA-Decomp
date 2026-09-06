.section extab, "a"
.balign 4
.global etb_800080E0
etb_800080E0:
    .4byte 0x080A0000
    .4byte 0x0000002C
    .4byte 0x00020024
    .4byte 0x0000003C
    .4byte 0x00080018
    .4byte 0x00000000
    .4byte 0x0780001F
    .4byte 0x000004EC
    .4byte dtor_80214F9C
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801C5854
.size etb_800080E0, 48

.section extabindex, "a"
.balign 4
.global eti_800152B0
eti_800152B0:
    .4byte fn_801C573C
    .4byte 0x00000118
    .4byte etb_800080E0
.size eti_800152B0, 12

# fn_801C573C - "SLK2" real constructor. Calls the shared base
# fn_801D1974 (the "position-trail predictor" class, see
# extab_801d1974.s), installs its own vtable, then embeds 7 sub-records
# in sequence: Slk2_ResetFlags7 (+0x358, flag reset), Slk2_InitVtablePairRecord (+0x4ec, a
# dual-pointer record - see extab_802150b8.s), Slk2_ResetBlock0x0 (+0x524, see
# extab_802157b8.s), fn_80217128 (+0x528, a physics-parameter block -
# see extab_80216a8c.s), fn_80218A8C (+0x540, a PRNG-randomized u16 -
# see extab_80218a8c.s), ResetFlagBlock3c_Zero (+0x548, a flag record - see
# extab_80215558.s), and fn_80217484 (+0x550, the randomized-value
# initializer already landed for TZOK - see extab_80217484.s). Reads a
# hardware/settings register (lhz from lbl_8046A748) into its own field
# at +0x568, sets an extensive block of its own field defaults
# (+0x55c..+0x5b0), and finally writes its own this pointer back into
# fields INSIDE 3 of its just-embedded sub-records, overwriting a zero
# placeholder each left behind: +0x520 (inside the Slk2_InitVtablePairRecord record
# at +0x4ec, its own +0x34), +0x528 (fn_80217128's own +0x0), and
# +0x540 (fn_80218A8C's own +0x0) - an owner-back-reference pattern
# letting those sub-objects call back into SLK2 itself (matches
# fn_80216A8C's own owner-> field reads, see extab_80216a8c.s).
.text
.balign 4
.global fn_801C573C

fn_801C573C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D1974
    lis 4, lbl_804A43E8@ha
    addi 3, 31, 0x358
    addi 0, 4, lbl_804A43E8@l
    stw 0, 0x0(31)
    bl Slk2_ResetFlags7
    addi 3, 31, 0x4ec
    bl Slk2_InitVtablePairRecord
    addi 3, 31, 0x524
    bl Slk2_ResetBlock0x0
    addi 3, 31, 0x528
    bl fn_80217128
    addi 3, 31, 0x540
    bl fn_80218A8C
    addi 3, 31, 0x548
    bl ResetFlagBlock3c_Zero
    addi 3, 31, 0x550
    bl fn_80217484
    li 6, 0x0
    lis 3, lbl_8046A748@ha
    stb 6, 0x55c(31)
    li 5, 0x4
    lhz 4, lbl_8046A748@l(3)
    li 0, -0x1
    stb 6, 0x55d(31)
    mr 3, 31
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stb 6, 0x55e(31)
    stw 5, 0x560(31)
    stw 6, 0x564(31)
    stw 4, 0x568(31)
    stw 6, 0x56c(31)
    stfs 0, 0x570(31)
    stfs 0, 0x574(31)
    stfs 0, 0x578(31)
    stw 6, 0x57c(31)
    stfs 0, 0x580(31)
    stfs 0, 0x584(31)
    stfs 0, 0x588(31)
    stw 6, 0x58c(31)
    stw 0, 0x590(31)
    stb 6, 0x594(31)
    stb 6, 0x595(31)
    stb 6, 0x596(31)
    stb 6, 0x597(31)
    stb 6, 0x598(31)
    stb 6, 0x599(31)
    stb 6, 0x59a(31)
    stb 6, 0x59b(31)
    stb 6, 0x59c(31)
    sth 6, 0x59e(31)
    sth 6, 0x5a0(31)
    sth 6, 0x5a2(31)
    stfs 0, 0x5a4(31)
    stfs 0, 0x5a8(31)
    stfs 0, 0x5ac(31)
    stfs 0, 0x5b0(31)
    stw 31, 0x520(31)
    stw 31, 0x528(31)
    stw 31, 0x540(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

