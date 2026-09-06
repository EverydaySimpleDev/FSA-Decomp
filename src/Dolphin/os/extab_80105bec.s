/*
 * fn_80105BEC(this): a SECOND, distinct class's constructor - own
 * DIFFERENT vtable (lbl_8049CBE0, matching fn_80105368's PRIMARY vtable
 * value exactly - worth noting, though this is a separate class/object,
 * possibly a sibling reusing the same vtable layout coincidentally or a
 * related type). Uses an EXTENDED extab format (7 words, "DESTROYBASE"
 * unwind action targeting dtor_801F593C at member+0x0) - a constructor
 * whose extab must describe how to safely tear down a partially-
 * constructed base if a later step throws; transcribed verbatim as raw
 * words (no assembler support needed beyond the existing dtor_801F593C
 * symbol reference). Initializes a 16-slot byte array at this->0x308,
 * a large set of default fields (0x318-0x370), and calls
 * fn_801D267C(this+0x374) - ANOTHER second-base-subobject init call
 * (a different init function than fn_80105A34's fn_801D2608, suggesting
 * this is a genuinely different class with its own base-subobject setup,
 * not the same class re-landed).
 */

.section extab, "a"
.balign 4
.global etb_80005A00
etb_80005A00:
    .4byte 0x080A0000
    .4byte 0x00000168
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801F593C
.size etb_80005A00, 28

.section extabindex, "a"
.balign 4
.global eti_80011E30
eti_80011E30:
    .4byte fn_80105BEC
    .4byte 0x00000194
    .4byte etb_80005A00
.size eti_80011E30, 12

.text
.balign 4
.global fn_80105BEC

fn_80105BEC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Actor_ctor
    lis 3, lbl_8049CBE0@ha
    li 0, -0x1
    addi 3, 3, lbl_8049CBE0@l
    li 7, 0x0
    stw 3, 0x0(31)
    stw 0, 0x318(31)
    stw 0, 0x31c(31)
    .4byte 0x48000084 # b .L_80105CA4
L_80105C24:
    clrlwi 3, 7, 24
    addi 4, 7, 0x1
    addi 0, 3, 0x308
    addi 6, 7, 0x2
    clrlwi 3, 4, 24
    stbx 7, 31, 0
    addi 0, 3, 0x308
    addi 5, 7, 0x3
    stbx 4, 31, 0
    clrlwi 3, 6, 24
    addi 0, 3, 0x308
    addi 4, 7, 0x4
    stbx 6, 31, 0
    clrlwi 3, 5, 24
    addi 0, 3, 0x308
    addi 6, 7, 0x5
    stbx 5, 31, 0
    clrlwi 3, 4, 24
    addi 0, 3, 0x308
    addi 5, 7, 0x6
    stbx 4, 31, 0
    clrlwi 3, 6, 24
    addi 0, 3, 0x308
    addi 4, 7, 0x7
    clrlwi 3, 5, 24
    stbx 6, 31, 0
    addi 0, 3, 0x308
    addi 7, 7, 0x8
    clrlwi 3, 4, 24
    stbx 5, 31, 0
    addi 0, 3, 0x308
    stbx 4, 31, 0
L_80105CA4:
    clrlwi 0, 7, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF78 # blt .L_80105C24
    li 7, -0x1
    li 6, 0x0
    stw 7, 0x318(31)
    li 5, 0x1
    li 4, 0x3
    li 0, 0x2
    stw 6, 0x31c(31)
    addi 3, 31, 0x374
    .4byte 0xC0029288 # lfs f0, lbl_8053C228@sda21(r0)
    stw 6, 0x320(31)
    stb 6, 0x324(31)
    stb 6, 0x325(31)
    stb 6, 0x326(31)
    stb 5, 0x327(31)
    stb 5, 0x328(31)
    stb 6, 0x329(31)
    stb 6, 0x32a(31)
    stb 6, 0x32b(31)
    stb 6, 0x32c(31)
    stb 6, 0x32d(31)
    stb 5, 0x32e(31)
    stw 4, 0x330(31)
    stb 5, 0x334(31)
    stb 6, 0x335(31)
    stb 6, 0x336(31)
    stw 7, 0x338(31)
    stw 6, 0x33c(31)
    stw 0, 0x340(31)
    stfs 0, 0x344(31)
    stfs 0, 0x348(31)
    stfs 0, 0x34c(31)
    stfs 0, 0x350(31)
    stw 6, 0x354(31)
    stw 6, 0x358(31)
    stw 7, 0x35c(31)
    stw 6, 0x360(31)
    stw 6, 0x364(31)
    stw 6, 0x368(31)
    stw 6, 0x36c(31)
    stw 6, 0x370(31)
    bl fn_801D267C
    li 0, 0x0
    mr 3, 31
    stw 0, 0x2f8(31)
    stw 0, 0x2fc(31)
    stw 0, 0x300(31)
    stw 0, 0x304(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

