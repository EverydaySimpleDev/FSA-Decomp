.section extab, "a"
.balign 4
.global etb_8000802C
etb_8000802C:
    .4byte 0x08080000
    .4byte 0x0000005C
    .4byte 0x00020010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801B7E1C
.size etb_8000802C, 28

.section extabindex, "a"
.balign 4
.global eti_800151C0
eti_800151C0:
    .4byte fn_801C2414
    .4byte 0x000000A0
    .4byte etb_8000802C
.size eti_800151C0, 12

# fn_801C2414 - "SLGE" real constructor. Calls the shared base
# fn_801D0F40 (see extab_801d0f40.s), installs its own vtable, sets its
# own field defaults, constructs a 4-element array of 0x48-byte no-op-
# ctor-d records (__construct_array) at +0x2d8, embeds the physics-
# parameter-block fn_8021FB44 (see extab_8021fb44.s) at +0x3f8, then
# zeroes 8 more plain fields at +0x2b4..+0x2d0.
.text
.balign 4
.global fn_801C2414

fn_801C2414:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 4, lbl_804A4310@ha
    li 0, 0x0
    addi 4, 4, lbl_804A4310@l
    lis 3, fn_8021C5B0@ha
    stw 4, 0x0(31)
    addi 4, 3, fn_8021C5B0@l
    addi 3, 31, 0x2d8
    li 5, 0x0
    stb 0, 0x2a8(31)
    li 6, 0x48
    li 7, 0x4
    stb 0, 0x2a9(31)
    sth 0, 0x2aa(31)
    sth 0, 0x2ac(31)
    stw 0, 0x2b0(31)
    stw 0, 0x2d4(31)
    bl __construct_array
    addi 3, 31, 0x3f8
    bl fn_8021FB44
    li 0, 0x0
    mr 3, 31
    stw 0, 0x2b4(31)
    stw 0, 0x2b8(31)
    stw 0, 0x2bc(31)
    stw 0, 0x2c0(31)
    stw 0, 0x2c4(31)
    stw 0, 0x2c8(31)
    stw 0, 0x2cc(31)
    stw 0, 0x2d0(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

