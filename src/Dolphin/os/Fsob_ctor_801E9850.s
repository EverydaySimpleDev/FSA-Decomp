.section extab, "a"
.balign 4
.global etb_80008BDC
etb_80008BDC:
    .4byte 0x080A0000
    .4byte 0x00000050
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801B7E1C
.size etb_80008BDC, 28

.section extabindex, "a"
.balign 4
.global eti_800161E0
eti_800161E0:
    .4byte fn_801E9850
    .4byte 0x00000088
    .4byte etb_80008BDC
.size eti_800161E0, 12

# fn_801E9850 - "FSOB" real constructor. Calls the shared base
# fn_801D0F40 (see extab_801d0f40.s), installs its own vtable, sets its
# own field defaults, constructs a 32-element array of 8-byte no-op-
# ctor-d records (fn_801546E4, confirmed a no-op blr, see
# project_fsa_dispatcher_mass_landing.md) at +0x2b0, then sets a further
# block of its own field defaults past the array (+0x3b0..+0x3c0).
.text
.balign 4
.global fn_801E9850

fn_801E9850:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 4, lbl_804A5568@ha
    li 0, 0x0
    addi 4, 4, lbl_804A5568@l
    lis 3, fn_801546E4@ha
    stw 4, 0x0(31)
    addi 4, 3, fn_801546E4@l
    addi 3, 31, 0x2b0
    li 5, 0x0
    stw 0, 0x2a8(31)
    li 6, 0x8
    li 7, 0x20
    stb 0, 0x2ac(31)
    stb 0, 0x2ad(31)
    bl __construct_array
    li 4, 0x0
    .4byte 0xC002C65C # lfs f0, lbl_8053F5FC@sda21(r0)
    stb 4, 0x3b0(31)
    li 0, -0x1
    mr 3, 31
    stfs 0, 0x3b4(31)
    stw 0, 0x3b8(31)
    sth 4, 0x3bc(31)
    stw 4, 0x3c0(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

