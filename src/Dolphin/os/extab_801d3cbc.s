.section extab, "a"
.balign 4
.global etb_80008590
etb_80008590:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008590, 8

.section extabindex, "a"
.balign 4
.global eti_80015940
eti_80015940:
    .4byte fn_801D3CBC
    .4byte 0x000000F0
    .4byte etb_80008590
.size eti_80015940, 12

.text
.balign 4
.global fn_801D3CBC

# fn_801D3CBC(this) - a SHARED draw() dispatcher, NOT exclusive to one
# actor class: confirmed used directly as the draw() vtable slot by
# BOTH "SLK2" (lbl_804A43E8, see extab_801c573c.s) AND the class
# family built around dtor_801D46FC (see extab_801d47dc.s,
# extab_801d41b8.s, extab_801d3dac.s - all already-landed callees/
# siblings of this function from earlier work; "self type (this->0x4)"
# throughout that documentation, not tied to one actor). Dispatches on
# this->0x248 (draw mode/pose) into ranged buckets, with a special-
# case at mode 0x17 (23): if the "flag record" sub-object (this->0x524)
# has bit 22 set, calls the ALREADY-LANDED fn_801D41B8. Every bucket
# falls through to the ALREADY-LANDED fn_801D3DAC(this, extraArg) -
# the real pose/model draw work (`extraArg` is conditionally
# this->0x348 or (this->0x98)+0x3c depending on the mode range).
#
# After drawing, if flag bit 15 of this->0x230 is set: checks
# visibility via the CONFIRMED fn_801CD2F8(this->0x4) query, and if
# NOT visible, computes a position via fn_801CD150(this+0xc, &buf)
# (new) and registers a per-player shadow/carry-marker via the
# CONFIRMED fn_803075AC(this->0x198, kind=8, &buf, model=0x176,
# mode=2, ...) (see project_fsa_shadow_marker_system_and_shared_draw.md)
# - a 3RD confirmed user of that primitive beyond OKTA and TINK, fired
# specifically when the actor is off-screen/culled (an "off-screen
# indicator" use case, distinct from OKTA/TINK's "captured/attached"
# trigger).
fn_801D3CBC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0xd
    .4byte 0x418200C0 # beq .L_801D3D98
    .4byte 0x40800018 # bge .L_801D3CF4
    cmpwi 0, 0x4
    .4byte 0x40800034 # bge .L_801D3D18
    cmpwi 0, 0x0
    .4byte 0x408000AC # bge .L_801D3D98
    .4byte 0x48000028 # b .L_801D3D18
L_801D3CF4:
    cmpwi 0, 0x17
    .4byte 0x4182000C # beq .L_801D3D04
    .4byte 0x4800001C # b .L_801D3D18
    .4byte 0x48000098 # b .L_801D3D98
L_801D3D04:
    lwz 0, 0x524(31)
    rlwinm. 0, 0, 0, 22, 22
    .4byte 0x4182008C # beq .L_801D3D98
    bl fn_801D41B8
    .4byte 0x48000084 # b .L_801D3D98
L_801D3D18:
    cmpwi 0, 0x1b
    lwz 4, 0x348(31)
    .4byte 0x40800018 # bge .L_801D3D38
    cmpwi 0, 0x18
    .4byte 0x40800008 # bge .L_801D3D30
    .4byte 0x4800000C # b .L_801D3D38
L_801D3D30:
    lwz 3, 0x98(31)
    addi 4, 3, 0x3c
L_801D3D38:
    mr 3, 31
    bl fn_801D3DAC
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x41820050 # beq .L_801D3D98
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820040 # bne .L_801D3D98
    addi 3, 31, 0xc
    addi 4, 1, 0x10
    bl fn_801CD150
    li 0, 0x0
    addi 5, 1, 0x10
    stw 0, 0x8(1)
    li 4, 0x8
    li 6, 0x176
    li 7, 0x0
    stw 0, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(31)
    bl fn_803075AC
L_801D3D98:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

