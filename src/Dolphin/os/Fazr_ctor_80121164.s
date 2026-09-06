.section extab, "a"
.balign 4
.global etb_80006288
etb_80006288:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006288, 8

.section extabindex, "a"
.balign 4
.global eti_80012874
eti_80012874:
    .4byte fn_80121164
    .4byte 0x00000064
    .4byte etb_80006288
.size eti_80012874, 12

# fn_80121164 - "FAZR" real constructor. Its ONLY call is to the
# shared "named object" base fn_801247C8(this, lbl_80464CC0, 0x242, 0x0)
# - see extab_801247c8.s for what that base does (embeds a blend-timer,
# stores the id/flag, strcpy's the name string in). FAZR then installs
# its OWN vtable lbl_8049DF78 and sets its own extra fields: 0x3c4=0x0 (stb), 0x3c8=0x0, 0x3cc=-0x1, 0x3d0=0x0.
.text
.balign 4
.global fn_80121164

fn_80121164:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80464CC0@ha
    li 5, 0x242
    stw 0, 0x14(1)
    addi 4, 4, lbl_80464CC0@l
    li 6, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801247C8
    lis 3, lbl_8049DF78@ha
    li 4, 0x0
    addi 3, 3, lbl_8049DF78@l
    li 0, -0x1
    stw 3, 0x0(31)
    mr 3, 31
    stb 4, 0x3c4(31)
    stw 4, 0x3c8(31)
    stw 0, 0x3cc(31)
    stw 4, 0x3d0(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

