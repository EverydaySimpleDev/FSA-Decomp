.section extab, "a"
.balign 4
.global etb_8000A368
etb_8000A368:
    .4byte 0x080A0000
    .4byte 0x0000005C
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801B7E1C
.size etb_8000A368, 28

.section extabindex, "a"
.balign 4
.global eti_80018064
eti_80018064:
    .4byte fn_8021A2D0
    .4byte 0x0000007C
    .4byte etb_8000A368
.size eti_80018064, 12

# fn_8021A2D0 - "KEPO" real constructor. Calls the shared base fn_801D0F40 (see extab_801d0f40.s),
# installs its own vtable, sets its own float/int field defaults,
# embeds a zeroed InitDefaultRecord record at +0x2c8 (see
# extab_8021ace0.s), then one more float field default.
#
# NOTE: checked (session N) as a landing candidate. This ctor's OWN
# extab is the non-trivial 28-byte action-table shape referencing
# `dtor_801B7E1C` - same closed construct_array/complex-ctor extab
# blocker as Gnef_ctor_802004EC.s and Tzok_ctor_80206810.s (see the
# latter for the wider ~30-file confirmation). Left as raw asm; Kepo's
# Draw (Kepo_Draw_8021AF28.s) was the better candidate of this pair.
.text
.balign 4
.global fn_8021A2D0

fn_8021A2D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 3, lbl_804A6550@ha
    li 4, 0x0
    addi 0, 3, lbl_804A6550@l
    .4byte 0xC022CCF4 # lfs f1, lbl_8053FC94@sda21(r0)
    stw 0, 0x0(31)
    li 0, -0x1
    .4byte 0xC002CCBC # lfs f0, lbl_8053FC5C@sda21(r0)
    addi 3, 31, 0x2c8
    stw 4, 0x2a8(31)
    stfs 1, 0x2ac(31)
    stw 4, 0x2b0(31)
    stw 4, 0x2b4(31)
    stw 0, 0x2b8(31)
    stfs 0, 0x2bc(31)
    stfs 0, 0x2c0(31)
    stw 4, 0x2c4(31)
    bl InitDefaultRecord
    .4byte 0xC002CCBC # lfs f0, lbl_8053FC5C@sda21(r0)
    mr 3, 31
    stfs 0, 0x2d8(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

