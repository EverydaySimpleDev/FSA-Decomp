.section extab, "a"
.balign 4
.global etb_8000E74C
etb_8000E74C:
    .4byte 0x080A0000
    .4byte 0x000000B4
    .4byte 0x00060024
    .4byte 0x0000018C
    .4byte 0x00000018
    .4byte 0x00000000
    .4byte 0x0780001F
    .4byte 0x00000318
    .4byte dtor_80105D80
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_8010E004
.size etb_8000E74C, 48

.section extabindex, "a"
.balign 4
.global eti_8001E340
eti_8001E340:
    .4byte fn_8036C750
    .4byte 0x000001A4
    .4byte etb_8000E74C
.size eti_8001E340, 12

# fn_8036C750 - "DCR2" real constructor. Calls the shared base
# fn_8010E074, installs its own vtable, sets an extensive block of its
# own field defaults (+0x230..+0x290), constructs a 6-element array of
# 0xc-byte no-op-ctor'd records (__construct_array) at +0x2a8, embeds a
# blend-timer (fn_801D267C) at +0x318, then runs a small loop (7
# iterations) zeroing a primary field per iteration plus 2-3 extra
# "overflow" fields on specific iterations (indices 2, 3, and 5 get
# extra clears) - structurally a batch-clear of several similarly-shaped
# sub-slots, not traced field-by-field. Finally calls
# fn_80458F9C(lbl_8053AF80, 0x3c) - notifies an EXTERNAL global object
# (see extab_80458f9c.s), not itself.
.text
.balign 4
.global fn_8036C750

fn_8036C750:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010E074
    lis 4, lbl_804AE088@ha
    li 9, 0x0
    addi 0, 4, lbl_804AE088@l
    lis 3, fn_8003B2CC@ha
    stw 0, 0x0(31)
    addi 4, 3, fn_8003B2CC@l
    li 8, 0x1
    .4byte 0xC002FCCC # lfs f0, lbl_80542C6C@sda21(r0)
    stw 9, 0x230(31)
    li 0, -0x1
    addi 3, 31, 0x2a8
    li 5, 0x0
    stb 8, 0x234(31)
    li 6, 0xc
    li 7, 0x6
    stb 8, 0x235(31)
    stb 9, 0x236(31)
    stb 9, 0x237(31)
    stb 8, 0x238(31)
    stw 9, 0x23c(31)
    stw 9, 0x240(31)
    stw 9, 0x244(31)
    stw 9, 0x248(31)
    stw 9, 0x24c(31)
    stfs 0, 0x250(31)
    stw 9, 0x254(31)
    stw 9, 0x258(31)
    stw 0, 0x25c(31)
    stw 9, 0x26c(31)
    stb 9, 0x270(31)
    stw 9, 0x274(31)
    stfs 0, 0x278(31)
    stfs 0, 0x27c(31)
    stfs 0, 0x280(31)
    stfs 0, 0x284(31)
    stfs 0, 0x288(31)
    stw 0, 0x28c(31)
    stfs 0, 0x290(31)
    bl __construct_array
    li 0, 0x0
    addi 3, 31, 0x318
    stw 0, 0x2f0(31)
    stw 0, 0x310(31)
    stw 0, 0x314(31)
    bl fn_801D267C
    li 6, 0x0
    li 0, 0x7
    stw 6, 0x350(31)
    li 7, 0x0
    stw 6, 0x354(31)
    stw 6, 0x358(31)
    stw 6, 0x398(31)
    mtctr 0
L_8036C83C:
    cmpwi 7, 0x2
    addi 0, 6, 0x35c
    li 3, 0x0
    stwx 3, 31, 0
    .4byte 0x4080000C # bge .L_8036C858
    addi 0, 6, 0x3b4
    stwx 3, 31, 0
L_8036C858:
    cmpwi 7, 0x3
    .4byte 0x40800010 # bge .L_8036C86C
    addi 0, 6, 0x378
    li 3, 0x0
    stwx 3, 31, 0
L_8036C86C:
    cmpwi 7, 0x5
    .4byte 0x40800028 # bge .L_8036C898
    addi 0, 6, 0x384
    li 5, 0x0
    stwx 5, 31, 0
    addi 4, 6, 0x3ec
    addi 3, 6, 0x400
    addi 0, 6, 0x294
    stwx 5, 31, 4
    stwx 5, 31, 3
    stwx 5, 31, 0
L_8036C898:
    cmpwi 7, 0x6
    .4byte 0x40800028 # bge .L_8036C8C4
    addi 0, 6, 0x3bc
    li 5, 0x0
    stwx 5, 31, 0
    addi 4, 6, 0x3d4
    addi 3, 6, 0x39c
    addi 0, 6, 0x2f8
    stwx 5, 31, 4
    stwx 5, 31, 3
    stwx 5, 31, 0
L_8036C8C4:
    addi 6, 6, 0x4
    addi 7, 7, 0x1
    .4byte 0x4200FF70 # bdnz .L_8036C83C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

