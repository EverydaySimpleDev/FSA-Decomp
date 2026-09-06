.section extab, "a"
.balign 4
.global etb_80006B54
etb_80006B54:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80006B54, 8

.section extabindex, "a"
.balign 4
.global eti_8001348C
eti_8001348C:
    .4byte fn_8013BFEC
    .4byte 0x000003A8
    .4byte etb_80006B54
.size eti_8001348C, 12

# fn_8013BFEC(this, dataTable) - the camera/cutscene-cue-manager class's
# real CONSTRUCTOR (936 bytes). Sets its own vtable, calls the base-class
# ctor fn_80083A68(dataTable), and stores `this` directly into the global
# singleton `lbl_8053AB10` - THIS is where the singleton is actually
# created (the Scene Manager's fn_80139300/fn_80138C9C are just the
# generic allocate+construct caller, per [[project_fsa_core_systems_gap]]).
# fn_80084BAC(-1, dataTable, 0) builds a construction-context handle stored
# at this->0x4, reused by every subsequent fn_8008440C(code, ctx, 0) call
# below - a "find child resource by code" lookup.
#
# Constructs the SAME 10 owned sub-objects the destructor (fn_8013BE60)
# tears down, in matching order, each via fn_8008440C with a distinct
# lookup code (0x24 twice for this->0x8/0xc, 0xd4 twice for this->0x10/0x14,
# 0x5c for ->0x18, 0x40 for ->0x1c[interim - reassigned below], 0xe464 for
# ->0x20, 0x85c for ->0x24, 0x411c for ->0x28, 0x10 for ->0x2c, 0x298 for
# ->0x30). this->0x8/0xc additionally get wrapped via fn_800C1DB8+
# fn_800C1E20(obj,0x80) if found. this->0x10/0x14 each read 2 u16 header
# fields (offsets 4/6) out of the CURRENT active font-width table (the
# same lbl_8053A980->0x4 table fn_8013AAD4/fn_8013AB00 set), convert them
# to floats, and feed them to fn_800937B0 - likely sizing a subtitle/message
# overlay to the active font's metrics. this->0x1c is looked up TWICE: once
# early (code 0x40, feeding fn_80092270 with the same font-table's header
# fields) and once at the very end (via fn_804030C4(lbl_80465970, 'TIMG') -
# a real J3D/BTI FourCC meaning "texture image" - then fn_80097800), so the
# final value wins. Ends with a virtual call through this->0x1c's OWN
# vtable slot 0x130, passing a small on-stack struct (0,0xff,0,0xff -
# likely a default UV/color range).
.text
.balign 4
.global fn_8013BFEC

fn_8013BFEC:
    stwu 1, -0x40(1)
    mflr 0
    lis 5, lbl_8049F108@ha
    stw 0, 0x44(1)
    addi 0, 5, lbl_8049F108@l
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    mr 30, 4
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    stw 0, 0x0(3)
    mr 3, 30
    bl fn_80083A68
    .4byte 0x93ED8F50 # stw r31, lbl_8053AB10@sda21(r0)
    mr 4, 30
    li 3, -0x1
    li 5, 0x0
    bl fn_80084BAC
    stw 3, 0x4(31)
    lwz 3, 0x4(31)
    bl fn_8008382C
    lwz 4, 0x4(31)
    li 3, 0x24
    li 5, 0x0
    bl fn_8008440C
    mr. 29, 3
    .4byte 0x41820014 # beq .L_8013C06C
    bl fn_800C1DB8
    mr 3, 29
    li 4, 0x80
    bl fn_800C1E20
L_8013C06C:
    stw 29, 0x8(31)
    li 3, 0x24
    li 5, 0x0
    lwz 4, 0x4(31)
    bl fn_8008440C
    mr. 29, 3
    .4byte 0x41820014 # beq .L_8013C098
    bl fn_800C1DB8
    mr 3, 29
    li 4, 0x80
    bl fn_800C1E20
L_8013C098:
    stw 29, 0xc(31)
    lwz 3, 0x4(31)
    bl fn_80084D84
    mr 3, 30
    bl fn_8008382C
    mr 4, 30
    li 3, 0xd4
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182005C # beq .L_8013C11C
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0229E3C # lfs f1, lbl_8053CDDC@sda21(r0)
    lwz 5, 0x4(5)
    stw 4, 0x18(1)
    fmr 2, 1
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    stw 4, 0x20(1)
    xoris 4, 5, 0x8000
    .4byte 0xC8829E48 # lfd f4, lbl_8053CDE8@sda21(r0)
    stw 4, 0x1c(1)
    .4byte 0xC0A29E58 # lfs f5, lbl_8053CDF8@sda21(r0)
    stw 0, 0x24(1)
    lfd 3, 0x18(1)
    lfd 0, 0x20(1)
    fsubs 3, 3, 4
    .4byte 0xC0C29E5C # lfs f6, lbl_8053CDFC@sda21(r0)
    fsubs 4, 0, 4
    bl fn_800937B0
    mr 0, 3
L_8013C11C:
    stw 0, 0x10(31)
    mr 4, 30
    li 3, 0xd4
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182005C # beq .L_8013C190
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0229E3C # lfs f1, lbl_8053CDDC@sda21(r0)
    lwz 5, 0x4(5)
    stw 4, 0x20(1)
    fmr 2, 1
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    stw 4, 0x18(1)
    xoris 4, 5, 0x8000
    .4byte 0xC8829E48 # lfd f4, lbl_8053CDE8@sda21(r0)
    stw 4, 0x24(1)
    .4byte 0xC0A29E58 # lfs f5, lbl_8053CDF8@sda21(r0)
    stw 0, 0x1c(1)
    lfd 3, 0x20(1)
    lfd 0, 0x18(1)
    fsubs 3, 3, 4
    .4byte 0xC0C29E5C # lfs f6, lbl_8053CDFC@sda21(r0)
    fsubs 4, 0, 4
    bl fn_800937B0
    mr 0, 3
L_8013C190:
    stw 0, 0x14(31)
    mr 4, 30
    li 3, 0x5c
    li 5, 0x0
    .4byte 0x80CD91B8 # lwz r6, lbl_8053AD78@sda21(r0)
    lwz 28, 0x154(6)
    bl fn_8008440C
    mr. 29, 3
    .4byte 0x41820048 # beq .L_8013C1F8
    mr 3, 28
    lwz 12, 0x0(28)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x24(1)
    mr 3, 29
    .4byte 0xC8429E48 # lfd f2, lbl_8053CDE8@sda21(r0)
    mr 4, 28
    stw 0, 0x20(1)
    .4byte 0xC0229E3C # lfs f1, lbl_8053CDDC@sda21(r0)
    lfd 0, 0x20(1)
    fsubs 2, 0, 2
    bl fn_8009AAFC
    mr 29, 3
L_8013C1F8:
    stw 29, 0x18(31)
    mr 4, 30
    li 3, 0x40
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820020 # beq .L_8013C230
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    li 6, 0x4
    lwz 4, 0x4(4)
    lhz 5, 0x6(4)
    lhz 4, 0x4(4)
    bl fn_80092270
    mr 0, 3
L_8013C230:
    lis 3, 0x1
    stw 0, 0x34(31)
    mr 4, 30
    li 5, 0x0
    subi 3, 3, 0x1b9c
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_8013C25C
    mr 4, 30
    bl fn_802FFDEC
    mr 0, 3
L_8013C25C:
    stw 0, 0x20(31)
    mr 4, 30
    li 3, 0x85c
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x4182000C # beq .L_8013C280
    bl fn_8030E718
    mr 0, 3
L_8013C280:
    stw 0, 0x24(31)
    mr 4, 30
    li 3, 0x411c
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_8013C2A8
    mr 4, 30
    bl fn_8013F3E4
    mr 0, 3
L_8013C2A8:
    stw 0, 0x28(31)
    mr 4, 30
    li 3, 0x10
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_8013C2D0
    mr 4, 30
    bl fn_801594E8
    mr 0, 3
L_8013C2D0:
    stw 0, 0x2c(31)
    mr 4, 30
    li 3, 0x298
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_8013C2F8
    mr 4, 30
    bl fn_801602E8
    mr 0, 3
L_8013C2F8:
    lis 3, lbl_80465970@ha
    lis 5, 0x5449
    addi 4, 3, lbl_80465970@l
    stw 0, 0x30(31)
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 28, 3
    mr 4, 30
    li 3, 0x168
    li 5, 0x0
    bl fn_8008440C
    mr. 0, 3
    .4byte 0x41820010 # beq .L_8013C338
    mr 4, 28
    bl fn_80097800
    mr 0, 3
L_8013C338:
    stw 0, 0x1c(31)
    li 6, 0x0
    li 0, 0xff
    addi 4, 1, 0x14
    stw 6, 0xc(1)
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x1c(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 0, 0x44(1)
    mr 3, 31
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr
