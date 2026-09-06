# Fresh project-wide gap hunt continuation: 9 functions, 5,460 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80009F48
etb_80009F48:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80009F48, 8

.global etb_80009F50
etb_80009F50:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009F50, 8

.global etb_80009F58
etb_80009F58:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009F58, 8

.global etb_80009F60
etb_80009F60:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80009F60, 8

.global etb_80009F68
etb_80009F68:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009F68, 8

.global etb_80009F70
etb_80009F70:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009F70, 8

.global etb_80009F78
etb_80009F78:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009F78, 8

.global etb_80009F80
etb_80009F80:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_80009F80, 8

.global etb_80009F88
etb_80009F88:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009F88, 8

.section extabindex, "a"
.balign 4
.global eti_80017A34
eti_80017A34:
    .4byte fn_8020DDC4
    .4byte 0x00000038
    .4byte etb_80009F48
.size eti_80017A34, 12

.global eti_80017A40
eti_80017A40:
    .4byte fn_8020DDFC
    .4byte 0x00000150
    .4byte etb_80009F50
.size eti_80017A40, 12

.global eti_80017A4C
eti_80017A4C:
    .4byte fn_8020DF4C
    .4byte 0x000000E4
    .4byte etb_80009F58
.size eti_80017A4C, 12

.global eti_80017A58
eti_80017A58:
    .4byte fn_8020E030
    .4byte 0x00000238
    .4byte etb_80009F60
.size eti_80017A58, 12

.global eti_80017A64
eti_80017A64:
    .4byte fn_8020E268
    .4byte 0x00000070
    .4byte etb_80009F68
.size eti_80017A64, 12

.global eti_80017A70
eti_80017A70:
    .4byte fn_8020E2D8
    .4byte 0x00000160
    .4byte etb_80009F70
.size eti_80017A70, 12

.global eti_80017A7C
eti_80017A7C:
    .4byte fn_8020E438
    .4byte 0x000006D0
    .4byte etb_80009F78
.size eti_80017A7C, 12

.global eti_80017A88
eti_80017A88:
    .4byte fn_8020EB08
    .4byte 0x00000254
    .4byte etb_80009F80
.size eti_80017A88, 12

.global eti_80017A94
eti_80017A94:
    .4byte fn_8020ED5C
    .4byte 0x000005BC
    .4byte etb_80009F88
.size eti_80017A94, 12

.text
.balign 4
.global fn_8020DDC4
.global fn_8020DDFC
.global fn_8020DF4C
.global fn_8020E030
.global fn_8020E268
.global fn_8020E2D8
.global fn_8020E438
.global fn_8020EB08
.global fn_8020ED5C

fn_8020DDC4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_8020DDEC
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    addi 4, 3, 0xc
    lwz 3, 0x24(5)
    bl fn_8030C210
L_8020DDEC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020DDFC:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC042CA8C # lfs f2, lbl_8053FA2C@sda21(r0)
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    li 31, 0x0
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100FC # ble .L_8020DF2C
    lfs 1, 0x6c(29)
    lfs 0, 0x64(29)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100E8 # ble .L_8020DF2C
    li 30, 0x0
L_8020DE4C:
    mr 3, 29
    mr 7, 30
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    li 6, 0x1
    bl fn_801F285C
    cmpw 30, 3
    .4byte 0x40820050 # bne .L_8020DEB8
    mr 3, 30
    bl fn_8023B6CC
    mr 4, 30
    addi 3, 29, 0x1dc
    bl fn_801EAC20
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_8020DEB8
    lfs 2, 0xc(1)
    addi 4, 1, 0x14
    lfs 1, 0x10(1)
    li 31, 0x1
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    li 5, 0x0
    stfs 2, 0x14(1)
    li 6, 0x0
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 3, 0x4(29)
    bl fn_801CB538
L_8020DEB8:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF8C # blt .L_8020DE4C
    clrlwi. 0, 31, 24
    .4byte 0x41820064 # beq .L_8020DF2C
    lis 4, 0x5
    mr 3, 29
    addi 4, 4, 0x7d
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x248(29)
    li 3, 0x0
    cmpwi 0, 0x7
    .4byte 0x4182002C # beq .L_8020DF18
    .4byte 0x4080001C # bge .L_8020DF0C
    cmpwi 0, 0x4
    .4byte 0x41820020 # beq .L_8020DF18
    .4byte 0x40800018 # bge .L_8020DF14
    cmpwi 0, 0x3
    .4byte 0x40800010 # bge .L_8020DF14
    .4byte 0x48000010 # b .L_8020DF18
L_8020DF0C:
    cmpwi 0, 0x9
    .4byte 0x40800008 # bge .L_8020DF18
L_8020DF14:
    li 3, 0x1
L_8020DF18:
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8020DF2C
    mr 3, 29
    li 4, 0x4
    bl fn_8020ED5C
L_8020DF2C:
    lwz 0, 0x34(1)
    mr 3, 31
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8020DF4C:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042CA8C # lfs f2, lbl_8053FA2C@sda21(r0)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810098 # ble .L_8020E014
    lfs 1, 0x6c(30)
    lfs 0, 0x64(30)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810084 # ble .L_8020E014
    lis 5, 0x4e55
    lwz 4, 0x1a0(30)
    addi 5, 5, 0x4c4c
    li 6, 0x0
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    mr 31, 3
    .4byte 0x41820064 # beq .L_8020E014
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x7d
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x248(30)
    li 3, 0x0
    cmpwi 0, 0x7
    .4byte 0x4182002C # beq .L_8020E000
    .4byte 0x4080001C # bge .L_8020DFF4
    cmpwi 0, 0x4
    .4byte 0x41820020 # beq .L_8020E000
    .4byte 0x40800018 # bge .L_8020DFFC
    cmpwi 0, 0x3
    .4byte 0x40800010 # bge .L_8020DFFC
    .4byte 0x48000010 # b .L_8020E000
L_8020DFF4:
    cmpwi 0, 0x9
    .4byte 0x40800008 # bge .L_8020E000
L_8020DFFC:
    li 3, 0x1
L_8020E000:
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8020E014
    mr 3, 30
    li 4, 0x4
    bl fn_8020ED5C
L_8020E014:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020E030:
    stwu 1, -0x60(1)
    mflr 0
    .4byte 0xC042CA8C # lfs f2, lbl_8053FA2C@sda21(r0)
    stw 0, 0x64(1)
    stmw 27, 0x4c(1)
    mr 31, 3
    lfs 1, 0x78(3)
    lfs 0, 0x70(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4182001C # beq .L_8020E078
    lfs 1, 0x7c(31)
    lfs 0, 0x74(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_8020E080
L_8020E078:
    li 3, 0x0
    .4byte 0x480001D8 # b .L_8020E254
L_8020E080:
    li 0, -0x1
    stfs 2, 0x30(1)
    addi 4, 1, 0x20
    li 29, 0x0
    stw 0, 0x8(1)
    li 28, 0x0
    stfs 2, 0x34(1)
    stfs 2, 0x38(1)
    bl fn_801F317C
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    addi 5, 1, 0xc
    bl fn_8023AE34
    mr. 30, 3
    .4byte 0x41800014 # blt .L_8020E0CC
    addi 4, 1, 0x30
    bl fn_801CC820
    mr 29, 3
    .4byte 0x48000074 # b .L_8020E13C
L_8020E0CC:
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    addi 5, 1, 0xc
    bl fn_8023AA18
    mr. 30, 3
    .4byte 0x4180000C # blt .L_8020E0EC
    li 28, 0x1
    .4byte 0x48000054 # b .L_8020E13C
L_8020E0EC:
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    addi 5, 1, 0xc
    bl fn_8023AC74
    mr. 30, 3
    .4byte 0x41800018 # blt .L_8020E118
    addi 4, 1, 0xc
    addi 5, 1, 0x3c
    addi 6, 1, 0x8
    bl fn_801CC538
    .4byte 0x48000028 # b .L_8020E13C
L_8020E118:
    lwz 4, 0x4(31)
    addi 3, 1, 0x20
    addi 5, 1, 0xc
    bl fn_8023AD54
    mr. 30, 3
    .4byte 0x41800010 # blt .L_8020E13C
    addi 4, 1, 0x8
    addi 5, 1, 0x30
    bl fn_801CC640
L_8020E13C:
    cmpwi 30, 0x0
    li 27, 0x0
    .4byte 0x4180010C # blt .L_8020E250
    clrlwi. 0, 29, 24
    .4byte 0x4182000C # beq .L_8020E158
    li 27, 0x1
    .4byte 0x48000060 # b .L_8020E1B4
L_8020E158:
    clrlwi. 0, 28, 24
    .4byte 0x41820020 # beq .L_8020E17C
    mr 4, 30
    addi 3, 31, 0x1dc
    bl fn_801EAC20
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8020E1B4
    li 27, 0x1
    .4byte 0x4800003C # b .L_8020E1B4
L_8020E17C:
    lwz 30, 0x8(1)
    cmpwi 30, 0x0
    .4byte 0x41800030 # blt .L_8020E1B4
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_8020E1B4
    lwz 4, 0x198(3)
    addi 3, 31, 0x1dc
    bl fn_801EAC54
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8020E1B4
    li 27, 0x1
L_8020E1B4:
    clrlwi. 0, 27, 24
    .4byte 0x41820030 # beq .L_8020E1E8
    lfs 2, 0xc(1)
    addi 4, 1, 0x14
    lfs 1, 0x10(1)
    li 5, 0x0
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    li 6, 0x0
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 3, 0x4(31)
    bl fn_801CB538
L_8020E1E8:
    clrlwi. 0, 27, 24
    .4byte 0x41820064 # beq .L_8020E250
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x7d
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x248(31)
    li 3, 0x0
    cmpwi 0, 0x7
    .4byte 0x4182002C # beq .L_8020E23C
    .4byte 0x4080001C # bge .L_8020E230
    cmpwi 0, 0x4
    .4byte 0x41820020 # beq .L_8020E23C
    .4byte 0x40800018 # bge .L_8020E238
    cmpwi 0, 0x3
    .4byte 0x40800010 # bge .L_8020E238
    .4byte 0x48000010 # b .L_8020E23C
L_8020E230:
    cmpwi 0, 0x9
    .4byte 0x40800008 # bge .L_8020E23C
L_8020E238:
    li 3, 0x1
L_8020E23C:
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8020E250
    mr 3, 31
    li 4, 0x4
    bl fn_8020ED5C
L_8020E250:
    mr 3, 27
L_8020E254:
    lmw 27, 0x4c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8020E268:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stfs 0, 0x3c(3)
    stfs 0, 0x40(3)
    stfs 0, 0x44(3)
    lwz 0, 0x248(3)
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_8020E29C
    .4byte 0x4800002C # b .L_8020E2C4
L_8020E29C:
    lwz 4, 0x2b8(31)
    cmpwi 4, 0x0
    .4byte 0x41800020 # blt .L_8020E2C4
    .4byte 0xC022CA88 # lfs f1, lbl_8053FA28@sda21(r0)
    addi 5, 1, 0x8
    bl fn_801D00B4
    lfs 0, 0x8(1)
    stfs 0, 0x3c(31)
    lfs 0, 0xc(1)
    stfs 0, 0x40(31)
L_8020E2C4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8020E2D8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x4
    .4byte 0x41820130 # beq .L_8020E424
    bl fn_801CE4BC
    lfs 1, 0x68(31)
    lfs 0, 0x60(31)
    .4byte 0xC042CA8C # lfs f2, lbl_8053FA2C@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810114 # ble .L_8020E424
    lfs 1, 0x6c(31)
    lfs 0, 0x64(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810100 # ble .L_8020E424
    lwz 0, 0x280(31)
    cmpwi 0, 0x4
    .4byte 0x4182006C # beq .L_8020E39C
    .4byte 0x40800014 # bge .L_8020E348
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_8020E354
    .4byte 0x40800038 # bge .L_8020E378
    .4byte 0x4800009C # b .L_8020E3E0
L_8020E348:
    cmpwi 0, 0x6
    .4byte 0x40800094 # bge .L_8020E3E0
    .4byte 0x48000070 # b .L_8020E3C0
L_8020E354:
    .4byte 0xC022CA94 # lfs f1, lbl_8053FA34@sda21(r0)
    .4byte 0xC002CA98 # lfs f0, lbl_8053FA38@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022CA9C # lfs f1, lbl_8053FA3C@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002CAA0 # lfs f0, lbl_8053FA40@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x4800006C # b .L_8020E3E0
L_8020E378:
    .4byte 0xC022CA98 # lfs f1, lbl_8053FA38@sda21(r0)
    .4byte 0xC002CAA4 # lfs f0, lbl_8053FA44@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022CAA8 # lfs f1, lbl_8053FA48@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002CAA0 # lfs f0, lbl_8053FA40@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000048 # b .L_8020E3E0
L_8020E39C:
    .4byte 0xC022CA98 # lfs f1, lbl_8053FA38@sda21(r0)
    .4byte 0xC002CAAC # lfs f0, lbl_8053FA4C@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022CA88 # lfs f1, lbl_8053FA28@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002CAA0 # lfs f0, lbl_8053FA40@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000024 # b .L_8020E3E0
L_8020E3C0:
    .4byte 0xC022CAB0 # lfs f1, lbl_8053FA50@sda21(r0)
    .4byte 0xC002CAB4 # lfs f0, lbl_8053FA54@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022CA9C # lfs f1, lbl_8053FA3C@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002CAA0 # lfs f0, lbl_8053FA40@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
L_8020E3E0:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x4182001C # beq .L_8020E404
    lfs 0, 0x68(31)
    lfs 2, 0x60(31)
    fneg 1, 0
    fneg 0, 2
    stfs 1, 0x60(31)
    stfs 0, 0x68(31)
L_8020E404:
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
L_8020E424:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020E438:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    bl fn_8020EB08
    lwz 0, 0x248(31)
    cmplwi 0, 0xa
    .4byte 0x41810694 # bgt .L_8020EAF0
    lis 3, jumptable_804A60A8@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A60A8@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x40820670 # bne .L_8020EAF0
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x41800660 # blt .L_8020EAF0
    li 0, 0x0
    .4byte 0xC022CAB8 # lfs f1, lbl_8053FA58@sda21(r0)
    stw 0, 0x2bc(31)
    mr 3, 31
    addi 4, 31, 0xc
    bl fn_801D05F8
    stw 3, 0x2b8(31)
    lwz 0, 0x2b8(31)
    cmpwi 0, 0x0
    .4byte 0x41800638 # blt .L_8020EAF0
    mr 3, 31
    li 4, 0x1
    bl fn_8020ED5C
    .4byte 0x48000628 # b .L_8020EAF0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800030 # blt .L_8020E504
    lwz 0, 0x2b8(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_8020E4F4
    mr 3, 31
    li 4, 0x2
    bl fn_8020ED5C
    .4byte 0x48000600 # b .L_8020EAF0
L_8020E4F4:
    mr 3, 31
    li 4, 0xa
    bl fn_8020ED5C
    .4byte 0x480005F0 # b .L_8020EAF0
L_8020E504:
    subfic 3, 0, 0x3c
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x30(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC842CAD8 # lfd f2, lbl_8053FA78@sda21(r0)
    stw 4, 0x34(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0x30(1)
    fsubs 2, 1, 2
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_8020E540
    .4byte 0xC002CA88 # lfs f0, lbl_8053FA28@sda21(r0)
    stfs 0, 0x2b4(31)
    .4byte 0x4800001C # b .L_8020E558
L_8020E540:
    .4byte 0xC002CA88 # lfs f0, lbl_8053FA28@sda21(r0)
    lfs 1, 0x2b4(31)
    fdivs 2, 0, 2
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x2b4(31)
L_8020E558:
    lwz 3, 0x2b0(31)
    cmplwi 3, 0x0
    .4byte 0x41820078 # beq .L_8020E5D8
    lfs 1, 0x2b4(31)
    .4byte 0xC082CAC0 # lfs f4, lbl_8053FA60@sda21(r0)
    .4byte 0xC062CABC # lfs f3, lbl_8053FA5C@sda21(r0)
    .4byte 0xC002CAC4 # lfs f0, lbl_8053FA64@sda21(r0)
    fmadds 1, 1, 4, 3
    .4byte 0xC042CA8C # lfs f2, lbl_8053FA2C@sda21(r0)
    fctiwz 1, 1
    stfd 1, 0x30(1)
    lwz 0, 0x34(1)
    stb 0, 0xb8(3)
    stb 0, 0xb9(3)
    stb 0, 0xba(3)
    lfs 5, 0x2b4(31)
    lwz 4, 0x2b0(31)
    fmadds 1, 5, 0, 3
    fmadds 0, 5, 4, 3
    fmadds 2, 5, 2, 3
    fctiwz 1, 1
    fctiwz 0, 0
    fctiwz 2, 2
    stfd 1, 0x40(1)
    lwz 3, 0x44(1)
    stfd 0, 0x48(1)
    stfd 2, 0x38(1)
    lwz 0, 0x4c(1)
    stb 3, 0xbc(4)
    lwz 3, 0x3c(1)
    stb 0, 0xbd(4)
    stb 3, 0xbe(4)
L_8020E5D8:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x89
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000504 # b .L_8020EAF0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408104F8 # ble .L_8020EAF0
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418204E8 # beq .L_8020EAF0
    lwz 0, 0x2b8(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_8020E628
    mr 3, 31
    li 4, 0x3
    bl fn_8020ED5C
    .4byte 0x480004CC # b .L_8020EAF0
L_8020E628:
    mr 3, 31
    li 4, 0x8
    bl fn_8020ED5C
    .4byte 0x480004BC # b .L_8020EAF0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408104B0 # ble .L_8020EAF0
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418204A0 # beq .L_8020EAF0
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x88
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x2b8(31)
    cmpwi 3, 0x0
    .4byte 0x41800110 # blt .L_8020E780
    lwz 0, 0x248(31)
    li 30, 0x0
    cmpwi 0, 0x3
    .4byte 0x408200C8 # bne .L_8020E748
    cmpwi 3, 0x0
    .4byte 0x418000C0 # blt .L_8020E748
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x408200B4 # bne .L_8020E748
    lwz 3, 0x2b8(31)
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_8020E748
    lwz 3, 0x2b8(31)
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x40820094 # bne .L_8020E748
    lwz 3, 0x2b8(31)
    bl fn_801CD1D0
    clrlwi. 0, 3, 24
    .4byte 0x40820084 # bne .L_8020E748
    .4byte 0xC002CAC8 # lfs f0, lbl_8053FA68@sda21(r0)
    mr 3, 31
    .4byte 0xC022CAB4 # lfs f1, lbl_8053FA54@sda21(r0)
    li 4, -0x1
    stfs 0, 0x60(31)
    .4byte 0xC002CACC # lfs f0, lbl_8053FA6C@sda21(r0)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    bl fn_801F2740
    lwz 0, 0x2b8(31)
    li 4, 0x1
    clrlwi 3, 3, 24
    slw 0, 4, 0
    and. 0, 0, 3
    .4byte 0x41820008 # beq .L_8020E70C
    mr 30, 4
L_8020E70C:
    .4byte 0xC002CAD0 # lfs f0, lbl_8053FA70@sda21(r0)
    .4byte 0xC022CAB4 # lfs f1, lbl_8053FA54@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC002CAA0 # lfs f0, lbl_8053FA40@sda21(r0)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
L_8020E748:
    clrlwi. 0, 30, 24
    .4byte 0x41820034 # beq .L_8020E780
    lwz 3, 0x2b8(31)
    bl fn_80230AD4
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8020E770
    mr 3, 31
    li 4, 0x5
    bl fn_8020ED5C
    .4byte 0x48000384 # b .L_8020EAF0
L_8020E770:
    mr 3, 31
    li 4, 0x8
    bl fn_8020ED5C
    .4byte 0x48000374 # b .L_8020EAF0
L_8020E780:
    mr 3, 31
    li 4, 0x8
    bl fn_8020ED5C
    .4byte 0x48000364 # b .L_8020EAF0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x78
    .4byte 0x41800358 # blt .L_8020EAF0
    li 0, 0x0
    .4byte 0xC022CAB8 # lfs f1, lbl_8053FA58@sda21(r0)
    stw 0, 0x2bc(31)
    mr 3, 31
    addi 4, 31, 0xc
    bl fn_801D05F8
    stw 3, 0x2b8(31)
    lwz 0, 0x2b8(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_8020E7D4
    mr 3, 31
    li 4, 0x3
    bl fn_8020ED5C
    .4byte 0x48000320 # b .L_8020EAF0
L_8020E7D4:
    mr 3, 31
    li 4, 0x9
    bl fn_8020ED5C
    .4byte 0x48000310 # b .L_8020EAF0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810304 # ble .L_8020EAF0
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418202F4 # beq .L_8020EAF0
    lwz 3, 0x2b8(31)
    li 4, 0x0
    bl fn_80230224
    lwz 3, 0x2b8(31)
    li 4, 0x2
    bl fn_8022DE10
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8020E830
    mr 3, 31
    li 4, 0x6
    bl fn_8020ED5C
    .4byte 0x480002C4 # b .L_8020EAF0
L_8020E830:
    mr 3, 31
    li 4, 0x9
    bl fn_8020ED5C
    .4byte 0x480002B4 # b .L_8020EAF0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408102A8 # ble .L_8020EAF0
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820298 # beq .L_8020EAF0
    mr 3, 31
    li 4, 0x7
    bl fn_8020ED5C
    .4byte 0x48000288 # b .L_8020EAF0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x4081027C # ble .L_8020EAF0
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x4182026C # beq .L_8020EAF0
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x40820020 # bne .L_8020E8B0
    addi 3, 31, 0xc
    addi 4, 1, 0x8
    bl fn_801CD150
    lfs 1, 0xc(1)
    lfs 0, 0x8(1)
    stfs 0, 0x2a8(31)
    stfs 1, 0x2ac(31)
L_8020E8B0:
    lfs 0, 0x2ac(31)
    addi 5, 1, 0x20
    lfs 1, 0x2a8(31)
    li 4, 0x8
    stfs 0, 0x18(1)
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    stfs 1, 0x14(1)
    psq_l 1, 0x14(1), 0, 0
    stfs 0, 0x28(1)
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x1c(1)
    lwz 3, 0x2b8(31)
    bl fn_802316C8
    lwz 3, 0x2b8(31)
    bl fn_8022DD74
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8020E90C
    lwz 3, 0x230(31)
    li 0, -0x1
    rlwinm 3, 3, 0, 18, 16
    stw 3, 0x230(31)
    stw 0, 0x2c0(31)
    .4byte 0x48000018 # b .L_8020E920
L_8020E90C:
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
    lwz 0, 0x2b8(31)
    stw 0, 0x2c0(31)
L_8020E920:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CA88 # lfs f1, lbl_8053FA28@sda21(r0)
    li 5, 0x1b0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CA88 # lfs f1, lbl_8053FA28@sda21(r0)
    li 5, 0x548
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 31
    li 4, 0xa
    bl fn_8020ED5C
    .4byte 0x48000174 # b .L_8020EAF0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810168 # ble .L_8020EAF0
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820158 # beq .L_8020EAF0
    mr 3, 31
    li 4, 0x9
    bl fn_8020ED5C
    .4byte 0x48000148 # b .L_8020EAF0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x4081013C # ble .L_8020EAF0
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x4182012C # beq .L_8020EAF0
    mr 3, 31
    li 4, 0xa
    bl fn_8020ED5C
    .4byte 0x4800011C # b .L_8020EAF0
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800038 # blt .L_8020EA18
    lwz 0, 0x2b0(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_8020EA08
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2b0(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2b0(31)
L_8020EA08:
    mr 3, 31
    li 4, 0x0
    bl fn_8020ED5C
    .4byte 0x480000DC # b .L_8020EAF0
L_8020EA18:
    subfic 3, 0, 0x3c
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    stw 0, 0x48(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC842CAD8 # lfd f2, lbl_8053FA78@sda21(r0)
    stw 4, 0x4c(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0x48(1)
    fsubs 2, 1, 2
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_8020EA54
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    stfs 0, 0x2b4(31)
    .4byte 0x48000020 # b .L_8020EA70
L_8020EA54:
    .4byte 0xC022CA88 # lfs f1, lbl_8053FA28@sda21(r0)
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    fdivs 2, 1, 2
    lfs 1, 0x2b4(31)
    fsubs 0, 0, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0x2b4(31)
L_8020EA70:
    lwz 3, 0x2b0(31)
    cmplwi 3, 0x0
    .4byte 0x41820078 # beq .L_8020EAF0
    lfs 1, 0x2b4(31)
    .4byte 0xC082CAC0 # lfs f4, lbl_8053FA60@sda21(r0)
    .4byte 0xC062CABC # lfs f3, lbl_8053FA5C@sda21(r0)
    .4byte 0xC002CAC4 # lfs f0, lbl_8053FA64@sda21(r0)
    fmadds 1, 1, 4, 3
    .4byte 0xC042CA8C # lfs f2, lbl_8053FA2C@sda21(r0)
    fctiwz 1, 1
    stfd 1, 0x48(1)
    lwz 0, 0x4c(1)
    stb 0, 0xb8(3)
    stb 0, 0xb9(3)
    stb 0, 0xba(3)
    lfs 5, 0x2b4(31)
    lwz 4, 0x2b0(31)
    fmadds 1, 5, 0, 3
    fmadds 0, 5, 4, 3
    fmadds 2, 5, 2, 3
    fctiwz 1, 1
    fctiwz 0, 0
    fctiwz 2, 2
    stfd 1, 0x38(1)
    lwz 3, 0x3c(1)
    stfd 0, 0x30(1)
    stfd 2, 0x40(1)
    lwz 0, 0x34(1)
    stb 3, 0xbc(4)
    lwz 3, 0x44(1)
    stb 0, 0xbd(4)
    stb 3, 0xbe(4)
L_8020EAF0:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8020EB08:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    mr 31, 3
    li 5, 0x0
    lwz 3, 0x2b0(3)
    addi 4, 31, 0xc
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x248(31)
    cmpwi 0, 0x4
    .4byte 0x40800090 # bge .L_8020EBDC
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_8020EB5C
    .4byte 0x48000084 # b .L_8020EBDC
L_8020EB5C:
    lwz 0, 0x2b8(31)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_8020EB74
    lwz 3, 0x2bc(31)
    addi 0, 3, 0x1
    stw 0, 0x2bc(31)
L_8020EB74:
    .4byte 0xC022CA8C # lfs f1, lbl_8053FA2C@sda21(r0)
    mr 3, 31
    addi 4, 31, 0xc
    bl fn_801D05F8
    lwz 0, 0x2b8(31)
    cmpw 3, 0
    .4byte 0x41820050 # beq .L_8020EBDC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8020EBA8
    stw 3, 0x2b8(31)
    li 0, 0x0
    stw 0, 0x2bc(31)
    .4byte 0x48000038 # b .L_8020EBDC
L_8020EBA8:
    cmpwi 3, 0x0
    .4byte 0x40800018 # bge .L_8020EBC4
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x2b8(31)
    stw 0, 0x2bc(31)
    .4byte 0x4800001C # b .L_8020EBDC
L_8020EBC4:
    lwz 0, 0x2bc(31)
    cmpwi 0, 0x2d
    .4byte 0x41800010 # blt .L_8020EBDC
    stw 3, 0x2b8(31)
    li 0, 0x0
    stw 0, 0x2bc(31)
L_8020EBDC:
    lwz 0, 0x248(31)
    li 3, 0x0
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_8020EBFC
    cmpwi 0, 0x5
    .4byte 0x40800008 # bge .L_8020EBF8
    .4byte 0x48000008 # b .L_8020EBFC
L_8020EBF8:
    li 3, 0x1
L_8020EBFC:
    clrlwi. 0, 3, 24
    .4byte 0x41820108 # beq .L_8020ED08
    lwz 3, 0x2b8(31)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x14(1), 0, 0
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    lwz 0, 0x248(31)
    stfs 0, 0x1c(1)
    cmpwi 0, 0x6
    .4byte 0x40820014 # bne .L_8020EC40
    lfs 1, 0xc(31)
    lfs 31, 0x10(31)
    .4byte 0xC3C2CA9C # lfs f30, lbl_8053FA3C@sda21(r0)
    .4byte 0x48000010 # b .L_8020EC4C
L_8020EC40:
    lfs 1, 0xc(31)
    lfs 31, 0x10(31)
    .4byte 0xC3C2CA8C # lfs f30, lbl_8053FA2C@sda21(r0)
L_8020EC4C:
    .4byte 0xC042CAE0 # lfs f2, lbl_8053FA80@sda21(r0)
    addi 3, 1, 0x20
    .4byte 0xC062CA8C # lfs f3, lbl_8053FA2C@sda21(r0)
    bl fn_801CD8E4
    fmr 1, 31
    .4byte 0xC042CAE0 # lfs f2, lbl_8053FA80@sda21(r0)
    .4byte 0xC062CA8C # lfs f3, lbl_8053FA2C@sda21(r0)
    addi 3, 1, 0x24
    bl fn_801CD8E4
    fmr 1, 30
    .4byte 0xC042CAE0 # lfs f2, lbl_8053FA80@sda21(r0)
    .4byte 0xC062CA8C # lfs f3, lbl_8053FA2C@sda21(r0)
    addi 3, 1, 0x28
    bl fn_801CD8E4
    lwz 0, 0x248(31)
    cmpwi 0, 0x5
    .4byte 0x40820030 # bne .L_8020ECBC
    lwz 3, 0x2b8(31)
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    lwz 3, 0x2b8(31)
    addi 4, 1, 0x20
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000050 # b .L_8020ED08
L_8020ECBC:
    lfs 0, 0x28(1)
    addi 4, 1, 0x2c
    psq_l 1, 0x20(1), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0x14(1), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x0(4), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x8(1), 0, 0
    stfs 0, 0x34(1)
    psq_st 3, 0x38(1), 0, 0
    lwz 3, 0x2b8(31)
    stfs 0, 0x40(1)
    bl fn_8023DFF4
L_8020ED08:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820028 # beq .L_8020ED38
    lwz 3, 0x2c0(31)
    bl fn_8022DD74
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8020ED38
    lwz 3, 0x230(31)
    li 0, -0x1
    rlwinm 3, 3, 0, 18, 16
    stw 3, 0x230(31)
    stw 0, 0x2c0(31)
L_8020ED38:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lwz 0, 0x74(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8020ED5C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    cmplwi 31, 0xa
    stw 30, 0x28(1)
    mr 30, 3
    .4byte 0x41810510 # bgt .L_8020F28C
    lis 3, jumptable_804A60D4@ha
    slwi 0, 31, 2
    addi 3, 3, jumptable_804A60D4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    li 4, -0x1
    li 0, 0x0
    .4byte 0xC022CA88 # lfs f1, lbl_8053FA28@sda21(r0)
    stfs 0, 0x2b4(30)
    li 3, 0x3d
    .4byte 0xC002CA90 # lfs f0, lbl_8053FA30@sda21(r0)
    stw 4, 0x2b8(30)
    stw 0, 0x2bc(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    bl fn_801CD664
    addi 0, 3, 0x3c
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    stw 0, 0x250(30)
    lfs 1, 0x24(30)
    stfs 1, 0xc(30)
    lfs 1, 0x28(30)
    stfs 1, 0x10(30)
    lfs 1, 0x2c(30)
    stfs 1, 0x14(30)
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    .4byte 0x48000470 # b .L_8020F28C
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    addi 4, 30, 0xc
    .4byte 0xC022CA88 # lfs f1, lbl_8053FA28@sda21(r0)
    li 5, 0x1af
    stfs 0, 0x2b4(30)
    li 6, 0x0
    .4byte 0xC002CA90 # lfs f0, lbl_8053FA30@sda21(r0)
    li 7, 0x0
    stfs 1, 0x60(30)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stfs 1, 0x258(30)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    stw 3, 0x2b0(30)
    lwz 3, 0x2b0(30)
    cmplwi 3, 0x0
    .4byte 0x418203F8 # beq .L_8020F28C
    lfs 1, 0x2b4(30)
    .4byte 0xC082CAC0 # lfs f4, lbl_8053FA60@sda21(r0)
    .4byte 0xC062CABC # lfs f3, lbl_8053FA5C@sda21(r0)
    .4byte 0xC002CAC4 # lfs f0, lbl_8053FA64@sda21(r0)
    fmadds 1, 1, 4, 3
    .4byte 0xC042CA8C # lfs f2, lbl_8053FA2C@sda21(r0)
    fctiwz 1, 1
    stfd 1, 0x8(1)
    lwz 0, 0xc(1)
    stb 0, 0xb8(3)
    stb 0, 0xb9(3)
    stb 0, 0xba(3)
    lfs 5, 0x2b4(30)
    lwz 4, 0x2b0(30)
    fmadds 1, 5, 0, 3
    fmadds 0, 5, 4, 3
    fmadds 2, 5, 2, 3
    fctiwz 1, 1
    fctiwz 0, 0
    fctiwz 2, 2
    stfd 1, 0x18(1)
    lwz 3, 0x1c(1)
    stfd 0, 0x20(1)
    stfd 2, 0x10(1)
    lwz 0, 0x24(1)
    stb 3, 0xbc(4)
    lwz 3, 0x14(1)
    stb 0, 0xbd(4)
    stb 3, 0xbe(4)
    .4byte 0x48000380 # b .L_8020F28C
    .4byte 0xC042CA88 # lfs f2, lbl_8053FA28@sda21(r0)
    addi 3, 30, 0x270
    .4byte 0xC022CA90 # lfs f1, lbl_8053FA30@sda21(r0)
    li 4, 0x0
    stfs 2, 0x60(30)
    li 5, 0x0
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    li 6, 0x0
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 0, 0x258(30)
    bl fn_801D22DC
    .4byte 0x48000328 # b .L_8020F28C
    .4byte 0xC022CAD0 # lfs f1, lbl_8053FA70@sda21(r0)
    addi 3, 30, 0x270
    .4byte 0xC002CAB4 # lfs f0, lbl_8053FA54@sda21(r0)
    li 4, 0x1
    stfs 1, 0x60(30)
    li 5, 0x0
    .4byte 0xC022CAA0 # lfs f1, lbl_8053FA40@sda21(r0)
    li 6, 0x0
    stfs 0, 0x64(30)
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 0, 0x258(30)
    bl fn_801D22DC
    .4byte 0x480002CC # b .L_8020F28C
    lwz 3, 0x2b8(30)
    cmpwi 3, 0x0
    .4byte 0x4180006C # blt .L_8020F038
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8020F01C
    lwz 3, 0x2b8(30)
    bl fn_8022DD74
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8020F004
    lwz 3, 0x230(30)
    li 0, -0x1
    rlwinm 3, 3, 0, 18, 16
    stw 3, 0x230(30)
    stw 0, 0x2c0(30)
    .4byte 0x48000038 # b .L_8020F038
L_8020F004:
    lwz 0, 0x230(30)
    ori 0, 0, 0x4000
    stw 0, 0x230(30)
    lwz 0, 0x2b8(30)
    stw 0, 0x2c0(30)
    .4byte 0x48000020 # b .L_8020F038
L_8020F01C:
    lwz 3, 0x2b8(30)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8020F038
    lwz 3, 0x2b8(30)
    li 4, 0x0
    bl fn_80230224
L_8020F038:
    .4byte 0xC022CAD0 # lfs f1, lbl_8053FA70@sda21(r0)
    .4byte 0xC002CAB4 # lfs f0, lbl_8053FA54@sda21(r0)
    stfs 1, 0x60(30)
    .4byte 0xC022CAA0 # lfs f1, lbl_8053FA40@sda21(r0)
    stfs 0, 0x64(30)
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 0, 0x258(30)
    .4byte 0x48000210 # b .L_8020F28C
    .4byte 0xC022CAD0 # lfs f1, lbl_8053FA70@sda21(r0)
    addi 3, 30, 0x270
    .4byte 0xC002CAB4 # lfs f0, lbl_8053FA54@sda21(r0)
    li 4, 0x2
    stfs 1, 0x60(30)
    li 5, 0x0
    .4byte 0xC022CAA0 # lfs f1, lbl_8053FA40@sda21(r0)
    li 6, 0x0
    stfs 0, 0x64(30)
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 0, 0x258(30)
    bl fn_801D22DC
    .4byte 0x480001B4 # b .L_8020F28C
    .4byte 0xC022CAD0 # lfs f1, lbl_8053FA70@sda21(r0)
    addi 3, 30, 0x270
    .4byte 0xC002CAB4 # lfs f0, lbl_8053FA54@sda21(r0)
    li 4, 0x3
    stfs 1, 0x60(30)
    li 5, 0x0
    .4byte 0xC022CAA0 # lfs f1, lbl_8053FA40@sda21(r0)
    li 6, 0x0
    stfs 0, 0x64(30)
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 0, 0x258(30)
    bl fn_801D22DC
    .4byte 0x48000158 # b .L_8020F28C
    .4byte 0xC042CA88 # lfs f2, lbl_8053FA28@sda21(r0)
    addi 3, 30, 0x270
    .4byte 0xC022CA90 # lfs f1, lbl_8053FA30@sda21(r0)
    li 4, 0x4
    stfs 2, 0x60(30)
    li 5, 0x0
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    li 6, 0x0
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 0, 0x258(30)
    bl fn_801D22DC
    .4byte 0x48000100 # b .L_8020F28C
    .4byte 0xC022CAD0 # lfs f1, lbl_8053FA70@sda21(r0)
    addi 3, 30, 0x270
    .4byte 0xC002CAB4 # lfs f0, lbl_8053FA54@sda21(r0)
    li 4, 0x5
    stfs 1, 0x60(30)
    li 5, 0x0
    .4byte 0xC022CAA0 # lfs f1, lbl_8053FA40@sda21(r0)
    li 6, 0x0
    stfs 0, 0x64(30)
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 0, 0x258(30)
    bl fn_801D22DC
    .4byte 0x480000A4 # b .L_8020F28C
    .4byte 0xC042CA88 # lfs f2, lbl_8053FA28@sda21(r0)
    addi 3, 30, 0x270
    .4byte 0xC022CA90 # lfs f1, lbl_8053FA30@sda21(r0)
    li 4, 0x6
    stfs 2, 0x60(30)
    li 5, 0x0
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    li 6, 0x0
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 0, 0x258(30)
    bl fn_801D22DC
    .4byte 0x4800004C # b .L_8020F28C
    li 0, -0x1
    .4byte 0xC042CA88 # lfs f2, lbl_8053FA28@sda21(r0)
    stw 0, 0x2b8(30)
    .4byte 0xC022CA90 # lfs f1, lbl_8053FA30@sda21(r0)
    stfs 2, 0x60(30)
    .4byte 0xC002CA8C # lfs f0, lbl_8053FA2C@sda21(r0)
    stfs 2, 0x64(30)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    lfs 1, 0x60(30)
    stfs 1, 0x70(30)
    lfs 1, 0x64(30)
    stfs 1, 0x74(30)
    lfs 1, 0x68(30)
    stfs 1, 0x78(30)
    lfs 1, 0x6c(30)
    stfs 1, 0x7c(30)
    stfs 0, 0x258(30)
L_8020F28C:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    lwz 3, 0x2b8(30)
    cmpwi 3, 0x0
    .4byte 0x41800060 # blt .L_8020F300
    lwz 0, 0x248(30)
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_8020F300
    cmpwi 0, 0x2
    .4byte 0x40800008 # bge .L_8020F2BC
    .4byte 0x48000048 # b .L_8020F300
L_8020F2BC:
    bl fn_8023E724
    lfs 2, 0x0(3)
    .4byte 0xC022CAE4 # lfs f1, lbl_8053FA84@sda21(r0)
    lfs 3, 0xc(30)
    fsubs 0, 2, 1
    fcmpo cr0, 3, 0
    .4byte 0x40800014 # bge .L_8020F2E8
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 17, 15
    stw 0, 0x230(30)
    .4byte 0x4800001C # b .L_8020F300
L_8020F2E8:
    fadds 0, 1, 2
    fcmpo cr0, 0, 3
    .4byte 0x40800010 # bge .L_8020F300
    lwz 0, 0x230(30)
    ori 0, 0, 0x8000
    stw 0, 0x230(30)
L_8020F300:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

