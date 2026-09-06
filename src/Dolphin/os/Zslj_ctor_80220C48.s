.section extab, "a"
.balign 4
.global etb_8000A584
etb_8000A584:
    .4byte 0x08080000
    .4byte 0x00000038
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_80220CA0
.size etb_8000A584, 28

.section extabindex, "a"
.balign 4
.global eti_80018370
eti_80018370:
    .4byte fn_80220C48
    .4byte 0x00000058
    .4byte etb_8000A584
.size eti_80018370, 12

# fn_80220C48 - "ZSLJ" real constructor. Calls the shared base
# fn_802218C8 (see extab_802218c8.s), installs its own vtable
# lbl_804A68D0, sets two int fields to 0 (+0x2b8, +0x2bc), then calls
# the confirmed PRNG-random-int helper fn_801CD664(1) and stores
# result+3 at +0x2c0 - a randomized per-instance field (plausibly a
# starting animation frame or a small behavior-variant pick).
.text
.balign 4
.global fn_80220C48

fn_80220C48:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_802218C8
    lis 3, lbl_804A68D0@ha
    li 0, 0x0
    addi 4, 3, lbl_804A68D0@l
    li 3, 0x1
    stw 4, 0x0(31)
    stw 0, 0x2b8(31)
    stw 0, 0x2bc(31)
    bl fn_801CD664
    addi 0, 3, 0x3
    mr 3, 31
    stw 0, 0x2c0(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

