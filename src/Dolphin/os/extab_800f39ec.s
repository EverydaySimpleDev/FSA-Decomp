# WIRED IN, 0-diff (main.dol: OK). This is the g_ecookie-style static-object
# registration thunk for the 9 static objects declared earlier in this
# translation unit's original .cpp (guarded lazy-init calling
# __register_global_object once per object, matching MWCC's -Cpp_exceptions
# codegen). What looked like a decomp-toolkit/linker bug (extab/extabindex
# sh_size coming up short by exactly one entry's size per claimed entry) was
# actually an OPERATOR bug in this hand-written GNU-AS file: local labels
# etb_800F39EC/eti_800F39EC had no .size and were plain local symbols, so GNU
# AS collapsed their extabindex-internal cross-reference into a
# SECTION-RELATIVE relocation (against the bare `extab` section symbol)
# instead of a direct symbol relocation, and left both symbols' ELF size as
# 0 - exactly the two properties decomp-toolkit's own docs require
# ("extab/extabindex entries ... must have a label and have the correct
# size, and have a direct relocation rather than a section-relative
# relocation"). Fix: add `.global` to each label and an explicit `.size
# label, N` directive (8 for extab entries, 12 for extabindex entries).
# Verified via objdump -r that the relocation is now direct-to-symbol, and
# the full DOL rebuild reports byte-exact extab/extabindex/.text sizes vs
# retail with build/G4SE01/ok reporting OK. See
# project_fsa_extab_bug_resolved.md for the full investigation and fix.
.section extab, "a"
.balign 4
.global etb_800F39EC
etb_800F39EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800F39EC, 8

.section extabindex, "a"
.balign 4
.global eti_800F39EC
eti_800F39EC:
    .4byte fn_800F39EC
    .4byte 0x00000224
    .4byte etb_800F39EC
.size eti_800F39EC, 12

.section .ctors, "a"
.balign 4
    .4byte fn_800F39EC

.text
.balign 4
.global fn_800F39EC
fn_800F39EC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BA5F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BA5F8@l
    lbz 0, lbl_8053A2AC@sda21(0)
    extsb. 0, 0
    bne .L_800F3A3C
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    stb 0, lbl_8053A2AC@sda21(0)
.L_800F3A3C:
    lbz 0, lbl_8053A2AD@sda21(0)
    extsb. 0, 0
    bne .L_800F3A74
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    stb 0, lbl_8053A2AD@sda21(0)
.L_800F3A74:
    lbz 0, lbl_8053A2AE@sda21(0)
    extsb. 0, 0
    bne .L_800F3AAC
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    stb 0, lbl_8053A2AE@sda21(0)
.L_800F3AAC:
    lbz 0, lbl_8053A2AF@sda21(0)
    extsb. 0, 0
    bne .L_800F3AE4
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    stb 0, lbl_8053A2AF@sda21(0)
.L_800F3AE4:
    lbz 0, lbl_8053A2B0@sda21(0)
    extsb. 0, 0
    bne .L_800F3B1C
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    stb 0, lbl_8053A2B0@sda21(0)
.L_800F3B1C:
    lbz 0, lbl_8053A2B1@sda21(0)
    extsb. 0, 0
    bne .L_800F3B54
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    stb 0, lbl_8053A2B1@sda21(0)
.L_800F3B54:
    lbz 0, lbl_8053A2B2@sda21(0)
    extsb. 0, 0
    bne .L_800F3B8C
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    stb 0, lbl_8053A2B2@sda21(0)
.L_800F3B8C:
    lbz 0, lbl_8053A2B3@sda21(0)
    extsb. 0, 0
    bne .L_800F3BC4
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    stb 0, lbl_8053A2B3@sda21(0)
.L_800F3BC4:
    lbz 0, lbl_8053A2B4@sda21(0)
    extsb. 0, 0
    bne .L_800F3BFC
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    stb 0, lbl_8053A2B4@sda21(0)
.L_800F3BFC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
