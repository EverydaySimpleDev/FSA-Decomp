# fn_802218C8 - a shared INTERMEDIATE Actor-derived base class
# constructor, no 4-char dispatch code of its own. Calls the shared base
# fn_801D0F40 (see extab_801d0f40.s), installs its OWN vtable
# lbl_804A6A00, and adds its own field defaults past fn_801D0F40's block:
# +0x2a8=0, +0x2ac/+0x2ad=0 (bytes), +0x2b0/+0x2b4=float from
# lbl_8053FE78. Shared by ZSLA, ZSLJ, and 3 not-yet-named codes
# (fn_80222190/fn_8022313C/fn_80224084 - see reference_fsa_full_dispatch_sweep.md).
#
# Attempted real-C++ promotion (2 variants: float local declared after
# the int-zero literal; a named `s32 zero` local declared BEFORE the
# float local): retail computes the int-zero literal BEFORE the float
# SDA load; MWCC always computes the float load first regardless of
# declaration order - the "2nd-declared-local computed first" quirk,
# unaffected here since the reorder happened with only ONE genuine
# local either way. Reverted to raw asm.
.section extab, "a"
.balign 4
.global etb_8000A618
etb_8000A618:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A618, 8

.section extabindex, "a"
.balign 4
.global eti_80018430
eti_80018430:
    .4byte fn_802218C8
    .4byte 0x00000058
    .4byte etb_8000A618
.size eti_80018430, 12

.text
.balign 4
.global fn_802218C8

fn_802218C8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 3, lbl_804A6A00@ha
    li 0, 0x0
    addi 3, 3, lbl_804A6A00@l
    .4byte 0xC002CED8 # lfs f0, lbl_8053FE78@sda21(r0)
    stw 3, 0x0(31)
    mr 3, 31
    stw 0, 0x2a8(31)
    stb 0, 0x2ac(31)
    stb 0, 0x2ad(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b4(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
