.section extab, "a"
.balign 4
.global etb_80005E70
etb_80005E70:
    .4byte 0x080A0000
    .4byte 0x00000078
    .4byte 0x00000024
    .4byte 0x000000EC
    .4byte 0x00000018
    .4byte 0x00000000
    .4byte 0x0780001F
    .4byte 0x00000264
    .4byte dtor_80105D80
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_8010E004
.size etb_80005E70, 48

.section extabindex, "a"
.balign 4
.global eti_80012358
eti_80012358:
    .4byte fn_80115590
    .4byte 0x00000104
    .4byte etb_80005E70
.size eti_80012358, 12

# fn_80115590 - real constructor (4-char code not resolved by the
# dispatcher sweep - see reference_fsa_full_dispatch_sweep.md). Calls
# the shared base fn_8010E074, installs its own vtable, sets its own
# field defaults (+0x230..+0x260), embeds a blend-timer (fn_801D267C) at
# +0x264, then runs a small loop (7 iterations) zeroing a primary field
# per iteration plus extra "overflow" fields on iterations 2 and 3 - the
# SAME batch-clear-of-similar-sub-slots shape seen in DCR2
# (extab_8036c750.s), not traced field-by-field. Finally calls
# fn_80458F9C(lbl_8053AF80, 0x3c), same external-notify call DCR2 makes.
.text
.balign 4
.global fn_80115590

fn_80115590:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010E074
    lis 3, lbl_8049D83C@ha
    li 4, 0x1
    addi 3, 3, lbl_8049D83C@l
    li 0, 0x0
    stw 3, 0x0(31)
    addi 3, 31, 0x264
    .4byte 0xC00296FC # lfs f0, lbl_8053C69C@sda21(r0)
    stb 4, 0x230(31)
    stb 4, 0x231(31)
    stb 0, 0x232(31)
    stb 0, 0x233(31)
    stb 4, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    stw 0, 0x244(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    stfs 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    stfs 0, 0x25c(31)
    stw 0, 0x260(31)
    bl fn_801D267C
    li 3, 0x0
    li 0, 0x7
    stw 3, 0x29c(31)
    mr 4, 3
    li 5, 0x0
    stw 3, 0x2a0(31)
    stw 3, 0x2a4(31)
    stw 3, 0x2e4(31)
    mtctr 0
L_8011562C:
    addi 0, 4, 0x2a8
    cmpwi 5, 0x2
    stwx 3, 31, 0
    .4byte 0x4080000C # bge .L_80115644
    addi 0, 4, 0x2e8
    stwx 3, 31, 0
L_80115644:
    cmpwi 5, 0x3
    .4byte 0x4080000C # bge .L_80115654
    addi 0, 4, 0x2c4
    stwx 3, 31, 0
L_80115654:
    cmpwi 5, 0x5
    .4byte 0x4080000C # bge .L_80115664
    addi 0, 4, 0x2d0
    stwx 3, 31, 0
L_80115664:
    addi 4, 4, 0x4
    addi 5, 5, 0x1
    .4byte 0x4200FFC0 # bdnz .L_8011562C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

