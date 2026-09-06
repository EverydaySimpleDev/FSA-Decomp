.section extab, "a"
.balign 4
.global etb_80006460
etb_80006460:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006460, 8

.section extabindex, "a"
.balign 4
.global eti_80012AFC
eti_80012AFC:
    .4byte fn_801258D8
    .4byte 0x0000005C
    .4byte etb_80006460
.size eti_80012AFC, 12

# fn_801258D8 - "OPGL" real constructor. Its ONLY call is to the
# shared "named object" base fn_801247C8(this, lbl_80464E8C, 0x2e6, 0x1)
# - see extab_801247c8.s for what that base does (embeds a blend-timer,
# stores the id/flag, strcpy's the name string in). OPGL then installs
# its OWN vtable lbl_8049E1D0 and sets its own extra fields: 0x3c4=0x0, 0x3c8=0x0, 0x3cc=0x0.
.text
.balign 4
.global fn_801258D8

fn_801258D8:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80464E8C@ha
    li 5, 0x2e6
    stw 0, 0x14(1)
    addi 4, 4, lbl_80464E8C@l
    li 6, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801247C8
    lis 3, lbl_8049E1D0@ha
    li 0, 0x0
    addi 4, 3, lbl_8049E1D0@l
    mr 3, 31
    stw 4, 0x0(31)
    stw 0, 0x3c4(31)
    stw 0, 0x3c8(31)
    stw 0, 0x3cc(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

