# extab_802d6d70.s - the "level/room config" module, 0x802D6D70-0x802DEE2C
# (0x80BC bytes, 87 functions). Landed as ONE object because dtk's own
# split analysis fuses this entire range into a single indivisible
# unit (confirmed via `dtk.exe -L trace dol split ...`, which reports
# "Found split auto_fn_802D6D70_text (3:0x802D6D70..0x802DEE2C)") -
# most of these 87 functions have no individual extabindex entry (only
# 28 of the 87 do), so dtk cannot carve out a smaller claim; see
# project_fsa_vtable_slot_0x34_resolved.md / project_fsa_player_proximity_helpers.md
# for the full investigation. Generated via a custom slice-and-
# transcribe script (each function individually run through
# tools/asm_transcribe_gnuas.py using its own real extab/extabindex
# pair when it has one, then recombined) - this is why the file is one
# big mechanical transcription rather than hand-written per function.
#
# Most of these 87 functions are NOT individually understood yet -
# per project practice, they are left as honest byte-matched
# transcriptions rather than guessed at. Real, evidence-based banners
# are added below only for the specific functions this project has
# independently confirmed the meaning of via real callers elsewhere:
# fn_802D7F84, fn_802D800C, fn_802DEBA0. Everything else in this file
# is Track A (byte-match only) - a future session revisiting this
# block for real understanding should treat it as its own dedicated
# investigation, not something to rush.
.section extab, "a"
.balign 4
.balign 4
.global etb_8000CD6C
etb_8000CD6C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000CD6C, 8

.balign 4
.global etb_8000CD74
etb_8000CD74:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000CD74, 8

.balign 4
.global etb_8000CD7C
etb_8000CD7C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CD7C, 8

.balign 4
.global etb_8000CD84
etb_8000CD84:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000CD84, 8

.balign 4
.global etb_8000CD8C
etb_8000CD8C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000CD8C, 8

.balign 4
.global etb_8000CD94
etb_8000CD94:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000CD94, 8

.balign 4
.global etb_8000CD9C
etb_8000CD9C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CD9C, 8

.balign 4
.global etb_8000CDA4
etb_8000CDA4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CDA4, 8

.balign 4
.global etb_8000CDAC
etb_8000CDAC:
    .4byte 0x600A0000
    .4byte 0x00000000
.size etb_8000CDAC, 8

.balign 4
.global etb_8000CDB4
etb_8000CDB4:
    .4byte 0x400A0000
    .4byte 0x00000000
.size etb_8000CDB4, 8

.balign 4
.global etb_8000CDBC
etb_8000CDBC:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000CDBC, 8

.balign 4
.global etb_8000CDC4
etb_8000CDC4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000CDC4, 8

.balign 4
.global etb_8000CDCC
etb_8000CDCC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CDCC, 8

.balign 4
.global etb_8000CDD4
etb_8000CDD4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CDD4, 8

.balign 4
.global etb_8000CDDC
etb_8000CDDC:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000CDDC, 8

.balign 4
.global etb_8000CDE4
etb_8000CDE4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CDE4, 8

.balign 4
.global etb_8000CDEC
etb_8000CDEC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000CDEC, 8

.balign 4
.global etb_8000CDF4
etb_8000CDF4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CDF4, 8

.balign 4
.global etb_8000CDFC
etb_8000CDFC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CDFC, 8

.balign 4
.global etb_8000CE04
etb_8000CE04:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CE04, 8

.balign 4
.global etb_8000CE0C
etb_8000CE0C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CE0C, 8

.balign 4
.global etb_8000CE14
etb_8000CE14:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CE14, 8

.balign 4
.global etb_8000CE1C
etb_8000CE1C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CE1C, 8

.balign 4
.global etb_8000CE24
etb_8000CE24:
    .4byte 0x48080000
    .4byte 0x00000000
.size etb_8000CE24, 8

.balign 4
.global etb_8000CE2C
etb_8000CE2C:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000CE2C, 8

.balign 4
.global etb_8000CE34
etb_8000CE34:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000CE34, 8

.balign 4
.global etb_8000CE3C
etb_8000CE3C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CE3C, 8

.balign 4
.global etb_8000CE44
etb_8000CE44:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000CE44, 8

.section extabindex, "a"
.balign 4
.balign 4
.global eti_8001BD9C
eti_8001BD9C:
    .4byte fn_802D6D70
    .4byte 0x000001C8
    .4byte etb_8000CD7C
.size eti_8001BD9C, 12

.balign 4
.global eti_8001BDA8
eti_8001BDA8:
    .4byte fn_802D7B34
    .4byte 0x000000B4
    .4byte etb_8000CD84
.size eti_8001BDA8, 12

.balign 4
.global eti_8001BDB4
eti_8001BDB4:
    .4byte fn_802D7BE8
    .4byte 0x00000118
    .4byte etb_8000CD8C
.size eti_8001BDB4, 12

.balign 4
.global eti_8001BDC0
eti_8001BDC0:
    .4byte fn_802D7D00
    .4byte 0x00000104
    .4byte etb_8000CD94
.size eti_8001BDC0, 12

.balign 4
.global eti_8001BDCC
eti_8001BDCC:
    .4byte fn_802D8128
    .4byte 0x00000100
    .4byte etb_8000CD9C
.size eti_8001BDCC, 12

.balign 4
.global eti_8001BDD8
eti_8001BDD8:
    .4byte fn_802D8228
    .4byte 0x00000100
    .4byte etb_8000CDA4
.size eti_8001BDD8, 12

.balign 4
.global eti_8001BDE4
eti_8001BDE4:
    .4byte fn_802D8328
    .4byte 0x00000A28
    .4byte etb_8000CDAC
.size eti_8001BDE4, 12

.balign 4
.global eti_8001BDF0
eti_8001BDF0:
    .4byte fn_802D8D50
    .4byte 0x000005A0
    .4byte etb_8000CDB4
.size eti_8001BDF0, 12

.balign 4
.global eti_8001BDFC
eti_8001BDFC:
    .4byte fn_802D92F0
    .4byte 0x0000092C
    .4byte etb_8000CDBC
.size eti_8001BDFC, 12

.balign 4
.global eti_8001BE08
eti_8001BE08:
    .4byte fn_802D9CB0
    .4byte 0x00000028
    .4byte etb_8000CDC4
.size eti_8001BE08, 12

.balign 4
.global eti_8001BE14
eti_8001BE14:
    .4byte fn_802D9CD8
    .4byte 0x000002E4
    .4byte etb_8000CDCC
.size eti_8001BE14, 12

.balign 4
.global eti_8001BE20
eti_8001BE20:
    .4byte fn_802DA010
    .4byte 0x00000620
    .4byte etb_8000CDD4
.size eti_8001BE20, 12

.balign 4
.global eti_8001BE2C
eti_8001BE2C:
    .4byte fn_802DA630
    .4byte 0x00000158
    .4byte etb_8000CDDC
.size eti_8001BE2C, 12

.balign 4
.global eti_8001BE38
eti_8001BE38:
    .4byte fn_802DA788
    .4byte 0x00000154
    .4byte etb_8000CDE4
.size eti_8001BE38, 12

.balign 4
.global eti_8001BE44
eti_8001BE44:
    .4byte fn_802DA8DC
    .4byte 0x00000E14
    .4byte etb_8000CDF4
.size eti_8001BE44, 12

.balign 4
.global eti_8001BE50
eti_8001BE50:
    .4byte fn_802DB6F0
    .4byte 0x00000670
    .4byte etb_8000CDFC
.size eti_8001BE50, 12

.balign 4
.global eti_8001BE5C
eti_8001BE5C:
    .4byte fn_802DBD60
    .4byte 0x00000FAC
    .4byte etb_8000CE04
.size eti_8001BE5C, 12

.balign 4
.global eti_8001BE68
eti_8001BE68:
    .4byte fn_802DCD1C
    .4byte 0x000000D8
    .4byte etb_8000CE0C
.size eti_8001BE68, 12

.balign 4
.global eti_8001BE74
eti_8001BE74:
    .4byte fn_802DCDF4
    .4byte 0x00000068
    .4byte etb_8000CE14
.size eti_8001BE74, 12

.balign 4
.global eti_8001BE80
eti_8001BE80:
    .4byte fn_802DCE5C
    .4byte 0x00000578
    .4byte etb_8000CE1C
.size eti_8001BE80, 12

.balign 4
.global eti_8001BE8C
eti_8001BE8C:
    .4byte fn_802DD3D4
    .4byte 0x00000174
    .4byte etb_8000CE24
.size eti_8001BE8C, 12

.balign 4
.global eti_8001BE98
eti_8001BE98:
    .4byte fn_802DD54C
    .4byte 0x000002BC
    .4byte etb_8000CE2C
.size eti_8001BE98, 12

.balign 4
.global eti_8001BEA4
eti_8001BEA4:
    .4byte fn_802DD808
    .4byte 0x00000DFC
    .4byte etb_8000CE34
.size eti_8001BEA4, 12

.balign 4
.global eti_8001BEB0
eti_8001BEB0:
    .4byte fn_802DE604
    .4byte 0x00000048
    .4byte etb_8000CE3C
.size eti_8001BEB0, 12

.balign 4
.global eti_8001BEBC
eti_8001BEBC:
    .4byte fn_802DE64C
    .4byte 0x00000118
    .4byte etb_8000CE44
.size eti_8001BEBC, 12

.balign 4
.global eti_8001BEC8
eti_8001BEC8:
    .4byte fn_802DEC40
    .4byte 0x00000100
    .4byte etb_8000CD6C
.size eti_8001BEC8, 12

.balign 4
.global eti_8001BED4
eti_8001BED4:
    .4byte fn_802DED40
    .4byte 0x000000BC
    .4byte etb_8000CD74
.size eti_8001BED4, 12

.balign 4
.global eti_8001BEE0
eti_8001BEE0:
    .4byte fn_802DEDFC
    .4byte 0x00000030
    .4byte etb_8000CDEC
.size eti_8001BEE0, 12

.text
.balign 4

.balign 4
.global fn_802D6D70

fn_802D6D70:
    stwu 1, -0x10(1)
    lis 3, lbl_80539D44@ha
    .4byte 0xC022E180 # lfs f1, lbl_80541120@sda21(r0)
    li 12, 0x0
    stw 31, 0xc(1)
    mr 31, 12
    lfs 2, 0x0(5)
    li 0, 0x0
    stw 30, 0x8(1)
    lfs 0, lbl_80539D44@l(3)
    li 3, 0x8
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    fmuls 3, 1, 0
    fneg 4, 3
    mtctr 3
L_802D6DAC:
    lwz 30, 0x4(9)
    addis 10, 12, 0x1
    li 11, 0x0
    lwz 8, 0xc(30)
    addi 10, 10, 0x3148
    mr 3, 11
    add 10, 8, 10
    lfs 0, 0x0(10)
    fsubs 0, 0, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_802D6DEC
    fcmpo cr0, 0, 3
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802D6DEC
    li 3, 0x1
L_802D6DEC:
    clrlwi. 3, 3, 24
    .4byte 0x4182003C # beq .L_802D6E2C
    lfs 1, 0x4(10)
    li 3, 0x0
    lfs 0, 0x4(5)
    fsubs 0, 1, 0
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_802D6E20
    fcmpo cr0, 0, 3
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802D6E20
    li 3, 0x1
L_802D6E20:
    clrlwi. 3, 3, 24
    .4byte 0x41820008 # beq .L_802D6E2C
    li 11, 0x1
L_802D6E2C:
    clrlwi. 3, 11, 24
    .4byte 0x41820024 # beq .L_802D6E54
    addis 3, 31, 0x1
    lwz 8, 0xc(30)
    addi 3, 3, 0x3188
    lwzx 3, 8, 3
    cmplw 7, 3
    .4byte 0x4082000C # bne .L_802D6E54
    li 0, 0x1
    .4byte 0x48000010 # b .L_802D6E60
L_802D6E54:
    addi 12, 12, 0x8
    addi 31, 31, 0x4
    .4byte 0x4200FF50 # bdnz .L_802D6DAC
L_802D6E60:
    clrlwi. 3, 0, 24
    .4byte 0x408200C0 # bne .L_802D6F24
    li 3, 0x8
    li 11, 0x0
    li 10, 0x0
    mtctr 3
L_802D6E78:
    lwz 8, 0x4(9)
    addis 3, 10, 0x1
    addi 3, 3, 0x3128
    lwz 8, 0xc(8)
    lwzx 3, 8, 3
    addis 3, 3, 0x1
    cmplwi 3, 0xffff
    .4byte 0x40820084 # bne .L_802D6F18
    slwi 9, 11, 3
    lfs 0, 0x0(4)
    addis 3, 9, 0x1
    lfs 2, 0x4(4)
    mr 4, 3
    lfs 1, 0x0(5)
    addi 3, 3, 0x30e8
    add 3, 8, 3
    addi 4, 4, 0x3148
    stfs 0, 0x0(3)
    lfs 0, 0x4(5)
    slwi 5, 11, 2
    stfs 2, 0x4(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    add 4, 3, 4
    stfs 1, 0x0(4)
    stfs 0, 0x4(4)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    add 3, 3, 5
    stw 6, 0x3128(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    add 3, 3, 5
    stw 7, 0x3188(3)
    .4byte 0x48000010 # b .L_802D6F24
L_802D6F18:
    addi 10, 10, 0x4
    addi 11, 11, 0x1
    .4byte 0x4200FF58 # bdnz .L_802D6E78
L_802D6F24:
    lwz 31, 0xc(1)
    clrlwi 3, 0, 24
    lwz 30, 0x8(1)
    addi 1, 1, 0x10
    blr

.balign 4
.global fn_802D6F38

fn_802D6F38:
    clrlwi 0, 7, 24
    li 9, 0x0
    cmplwi 0, 0x1
    .4byte 0x40820144 # bne .L_802D7088
    mr 8, 3
L_802D6F4C:
    addis 7, 8, 0x1
    lwz 7, 0x30c8(7)
    addis 0, 7, 0x1
    cmplwi 0, 0xffff
    .4byte 0x418200FC # beq .L_802D7058
    addi 9, 9, 0x1
    addi 8, 8, 0x4
    cmpwi 9, 0x8
    .4byte 0x4180FFE0 # blt .L_802D6F4C
    addis 7, 3, 0x1
    li 9, 0x7
    lwz 0, 0x306c(7)
    stw 0, 0x3068(7)
    lfs 0, 0x3090(7)
    stfs 0, 0x3088(7)
    lfs 0, 0x3094(7)
    stfs 0, 0x308c(7)
    lwz 0, 0x30cc(7)
    stw 0, 0x30c8(7)
    lwz 0, 0x3070(7)
    stw 0, 0x306c(7)
    lfs 0, 0x3098(7)
    stfs 0, 0x3090(7)
    lfs 0, 0x309c(7)
    stfs 0, 0x3094(7)
    lwz 0, 0x30d0(7)
    stw 0, 0x30cc(7)
    lwz 0, 0x3074(7)
    stw 0, 0x3070(7)
    lfs 0, 0x30a0(7)
    stfs 0, 0x3098(7)
    lfs 0, 0x30a4(7)
    stfs 0, 0x309c(7)
    lwz 0, 0x30d4(7)
    stw 0, 0x30d0(7)
    lwz 0, 0x3078(7)
    stw 0, 0x3074(7)
    lfs 0, 0x30a8(7)
    stfs 0, 0x30a0(7)
    lfs 0, 0x30ac(7)
    stfs 0, 0x30a4(7)
    lwz 0, 0x30d8(7)
    stw 0, 0x30d4(7)
    lwz 0, 0x307c(7)
    stw 0, 0x3078(7)
    lfs 0, 0x30b0(7)
    stfs 0, 0x30a8(7)
    lfs 0, 0x30b4(7)
    stfs 0, 0x30ac(7)
    lwz 0, 0x30dc(7)
    stw 0, 0x30d8(7)
    lwz 0, 0x3080(7)
    stw 0, 0x307c(7)
    lfs 0, 0x30b8(7)
    stfs 0, 0x30b0(7)
    lfs 0, 0x30bc(7)
    stfs 0, 0x30b4(7)
    lwz 0, 0x30e0(7)
    stw 0, 0x30dc(7)
    lwz 0, 0x3084(7)
    stw 0, 0x3080(7)
    lfs 0, 0x30c0(7)
    stfs 0, 0x30b8(7)
    lfs 0, 0x30c4(7)
    stfs 0, 0x30bc(7)
    lwz 0, 0x30e4(7)
    stw 0, 0x30e0(7)
L_802D7058:
    addis 0, 3, 0x1
    slwi 3, 9, 2
    add 7, 0, 3
    slwi 3, 9, 3
    stw 4, 0x3068(7)
    add 3, 0, 3
    lfs 1, 0x0(5)
    lfs 0, 0x4(5)
    stfs 1, 0x3088(3)
    stfs 0, 0x308c(3)
    stw 6, 0x30c8(7)
    blr
L_802D7088:
    li 0, 0x8
    mr 9, 3
    mr 10, 3
    rlwinm 11, 4, 0, 25, 19
    li 12, 0x0
    mtctr 0
L_802D70A0:
    addis 4, 9, 0x1
    lwz 0, 0x3068(4)
    rlwinm 0, 0, 0, 25, 19
    cmplw 0, 11
    .4byte 0x408201F8 # bne .L_802D72A8
    lis 7, lbl_80539D44@ha
    addis 4, 10, 0x1
    .4byte 0xC042E180 # lfs f2, lbl_80541120@sda21(r0)
    li 8, 0x0
    lfs 0, lbl_80539D44@l(7)
    mr 0, 8
    lfs 1, 0x3088(4)
    fmuls 2, 2, 0
    lfs 0, 0x0(5)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_802D70FC
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802D70FC
    li 0, 0x1
L_802D70FC:
    clrlwi. 0, 0, 24
    .4byte 0x41820040 # beq .L_802D7140
    addis 4, 10, 0x1
    lfs 0, 0x4(5)
    lfs 1, 0x308c(4)
    li 0, 0x0
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_802D7134
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802D7134
    li 0, 0x1
L_802D7134:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_802D7140
    li 8, 0x1
L_802D7140:
    clrlwi. 0, 8, 24
    .4byte 0x41820164 # beq .L_802D72A8
    addis 4, 9, 0x1
    lwz 0, 0x30c8(4)
    cmplw 0, 6
    .4byte 0x40820154 # bne .L_802D72A8
    cmpwi 12, 0x7
    slwi 5, 12, 2
    slwi 0, 12, 3
    subfic 4, 12, 0x7
    add 7, 3, 5
    add 8, 3, 0
    .4byte 0x40800114 # bge .L_802D7284
    srwi. 0, 4, 2
    mtctr 0
    .4byte 0x418200D0 # beq .L_802D724C
L_802D7180:
    addis 6, 7, 0x1
    addis 5, 8, 0x1
    lwz 0, 0x306c(6)
    addi 7, 7, 0x4
    addi 8, 8, 0x8
    stw 0, 0x3068(6)
    lfs 0, 0x3090(5)
    stfs 0, 0x3088(5)
    lfs 0, 0x3094(5)
    stfs 0, 0x308c(5)
    addis 5, 8, 0x1
    addi 8, 8, 0x8
    lwz 0, 0x30cc(6)
    stw 0, 0x30c8(6)
    addis 6, 7, 0x1
    addi 7, 7, 0x4
    lwz 0, 0x306c(6)
    stw 0, 0x3068(6)
    lfs 0, 0x3090(5)
    stfs 0, 0x3088(5)
    lfs 0, 0x3094(5)
    stfs 0, 0x308c(5)
    addis 5, 8, 0x1
    addi 8, 8, 0x8
    lwz 0, 0x30cc(6)
    stw 0, 0x30c8(6)
    addis 6, 7, 0x1
    addi 7, 7, 0x4
    lwz 0, 0x306c(6)
    stw 0, 0x3068(6)
    lfs 0, 0x3090(5)
    stfs 0, 0x3088(5)
    lfs 0, 0x3094(5)
    stfs 0, 0x308c(5)
    addis 5, 8, 0x1
    addi 8, 8, 0x8
    lwz 0, 0x30cc(6)
    stw 0, 0x30c8(6)
    addis 6, 7, 0x1
    addi 7, 7, 0x4
    lwz 0, 0x306c(6)
    stw 0, 0x3068(6)
    lfs 0, 0x3090(5)
    stfs 0, 0x3088(5)
    lfs 0, 0x3094(5)
    stfs 0, 0x308c(5)
    lwz 0, 0x30cc(6)
    stw 0, 0x30c8(6)
    .4byte 0x4200FF40 # bdnz .L_802D7180
    andi. 4, 4, 0x3
    .4byte 0x4182003C # beq .L_802D7284
L_802D724C:
    mtctr 4
L_802D7250:
    addis 6, 7, 0x1
    addis 5, 8, 0x1
    lwz 0, 0x306c(6)
    addi 7, 7, 0x4
    addi 8, 8, 0x8
    stw 0, 0x3068(6)
    lfs 0, 0x3090(5)
    stfs 0, 0x3088(5)
    lfs 0, 0x3094(5)
    stfs 0, 0x308c(5)
    lwz 0, 0x30cc(6)
    stw 0, 0x30c8(6)
    .4byte 0x4200FFD0 # bdnz .L_802D7250
L_802D7284:
    addis 3, 3, 0x1
    li 0, 0x0
    stw 0, 0x3084(3)
    li 0, -0x1
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    stfs 0, 0x30c0(3)
    stfs 0, 0x30c4(3)
    stw 0, 0x30e4(3)
    blr
L_802D72A8:
    addi 9, 9, 0x4
    addi 10, 10, 0x8
    addi 12, 12, 0x1
    .4byte 0x4200FDEC # bdnz .L_802D70A0
    blr

.balign 4
.global fn_802D72BC

fn_802D72BC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    srawi 0, 4, 5
    addze 0, 0
    slwi 6, 4, 27
    lwz 3, 0x4(3)
    srwi 5, 4, 31
    subf 4, 5, 6
    slwi 0, 0, 2
    lwz 3, 0xc(3)
    rotlwi 4, 4, 5
    add 4, 4, 5
    li 5, 0x1
    addis 3, 3, 0x1
    add 3, 3, 0
    slw 4, 5, 4
    lwz 0, 0x2fe8(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

.balign 4
.global fn_802D7310

fn_802D7310:
    clrlwi. 0, 5, 24
    slwi 6, 4, 27
    srwi 5, 4, 31
    srawi 7, 4, 5
    subf 4, 5, 6
    rotlwi 0, 4, 5
    addze 4, 7
    add 6, 0, 5
    .4byte 0x41820028 # beq .L_802D7358
    addis 3, 3, 0x1
    slwi 0, 4, 2
    add 4, 3, 0
    li 0, 0x1
    lwz 3, 0x2fe8(4)
    slw 0, 0, 6
    or 0, 3, 0
    stw 0, 0x2fe8(4)
    blr
L_802D7358:
    addis 3, 3, 0x1
    slwi 0, 4, 2
    add 5, 3, 0
    li 0, 0x1
    slw 3, 0, 6
    li 0, -0x1
    lwz 4, 0x2fe8(5)
    xor 0, 3, 0
    and 0, 4, 0
    stw 0, 0x2fe8(5)
    blr

.balign 4
.global fn_802D7384

fn_802D7384:
    srawi 5, 4, 5
    slwi 0, 4, 27
    addze 5, 5
    srwi 4, 4, 31
    subf 0, 4, 0
    addis 6, 3, 0x1
    slwi 5, 5, 2
    li 3, 0x1
    rotlwi 0, 0, 5
    add 0, 0, 4
    add 5, 6, 5
    lwz 4, 0x2f68(5)
    slw 0, 3, 0
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

.balign 4
.global fn_802D73CC

fn_802D73CC:
    clrlwi. 0, 5, 24
    slwi 6, 4, 27
    srwi 5, 4, 31
    srawi 7, 4, 5
    subf 4, 5, 6
    rotlwi 0, 4, 5
    addze 4, 7
    add 6, 0, 5
    .4byte 0x41820028 # beq .L_802D7414
    addis 3, 3, 0x1
    slwi 0, 4, 2
    add 4, 3, 0
    li 0, 0x1
    lwz 3, 0x2f68(4)
    slw 0, 0, 6
    or 0, 3, 0
    stw 0, 0x2f68(4)
    blr
L_802D7414:
    addis 3, 3, 0x1
    slwi 0, 4, 2
    add 5, 3, 0
    li 0, 0x1
    slw 3, 0, 6
    li 0, -0x1
    lwz 4, 0x2f68(5)
    xor 0, 3, 0
    and 0, 4, 0
    stw 0, 0x2f68(5)
    blr

.balign 4
.global fn_802D7440

fn_802D7440:
    clrlwi 0, 4, 24
    cmplwi 0, 0x1
    .4byte 0x408200C8 # bne .L_802D7510
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 5, 0x7f(4)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802D7478
    lis 3, lbl_8050EC80@ha
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lbz 0, 0x7c(3)
    .4byte 0x4800001C # b .L_802D7490
L_802D7478:
    lis 3, lbl_8050EC80@ha
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lbz 0, 0x7d(3)
L_802D7490:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x4182001C # beq .L_802D74B4
    lwz 3, 0x4(4)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    blr
L_802D74B4:
    cmplwi 5, 0x0
    .4byte 0x41820040 # beq .L_802D74F8
    lbz 0, 0x7e(4)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802D74E0
    lwz 3, 0x4(4)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    blr
L_802D74E0:
    lwz 3, 0x4(4)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    blr
L_802D74F8:
    lwz 3, 0x4(4)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    blr
L_802D7510:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    blr

.balign 4
.global fn_802D752C

fn_802D752C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 4, 0x31ef(3)
    blr

.balign 4
.global fn_802D7544

fn_802D7544:
    cmpwi 4, 0x0
    .4byte 0x41800034 # blt .L_802D757C
    cmpwi 4, 0x100
    .4byte 0x4080002C # bge .L_802D757C
    lwz 5, 0x18(3)
    addis 6, 3, 0x1
    lwz 0, 0x14(3)
    mulli 3, 5, 0xa00
    slwi 0, 0, 8
    add 3, 6, 3
    add 0, 3, 0
    add 3, 0, 4
    lbz 3, -0x6698(3)
    blr
L_802D757C:
    li 3, 0x0
    blr

.balign 4
.global fn_802D7584

fn_802D7584:
    cmpwi 4, 0x0
    bltlr
    cmpwi 4, 0x100
    bgelr
    lwz 6, 0x18(3)
    addis 7, 3, 0x1
    lwz 0, 0x14(3)
    mulli 3, 6, 0xa00
    slwi 0, 0, 8
    add 3, 7, 3
    add 0, 3, 0
    add 3, 0, 4
    stb 5, -0x6698(3)
    blr

.balign 4
.global fn_802D75BC

fn_802D75BC:
    lwz 7, 0x18(3)
    srawi 0, 4, 5
    lwz 6, 0x14(3)
    addze 5, 0
    mulli 7, 7, 0x500
    slwi 0, 4, 27
    srwi 4, 4, 31
    slwi 6, 6, 7
    add 3, 3, 7
    subf 0, 4, 0
    add 6, 3, 6
    slwi 3, 5, 2
    rotlwi 0, 0, 5
    add 5, 6, 3
    add 0, 0, 4
    li 3, 0x1
    lwz 4, 0x6768(5)
    slw 0, 3, 0
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

.balign 4
.global fn_802D7618

fn_802D7618:
    lwz 7, 0x18(3)
    srawi 0, 4, 5
    lwz 6, 0x14(3)
    addze 5, 0
    mulli 7, 7, 0x500
    slwi 0, 4, 27
    srwi 4, 4, 31
    slwi 6, 6, 7
    add 3, 3, 7
    subf 0, 4, 0
    add 6, 3, 6
    slwi 3, 5, 2
    add 5, 6, 3
    rotlwi 0, 0, 5
    add 0, 0, 4
    li 3, 0x1
    lwz 4, 0x6768(5)
    slw 0, 3, 0
    or 0, 4, 0
    stw 0, 0x6768(5)
    blr

.balign 4
.global fn_802D766C

fn_802D766C:
    clrlwi. 0, 4, 24
    beqlr
    li 6, 0x8
    srwi 4, 5, 31
    subfc 0, 6, 5
    subi 0, 5, 0x7
    srwi 5, 6, 31
    subfe 4, 4, 5
    andc 0, 0, 4
    slwi 0, 0, 2
    add 4, 3, 0
    lwz 3, 0x6748(4)
    addi 0, 3, 0x1
    stw 0, 0x6748(4)
    blr

.balign 4
.global fn_802D76A8

fn_802D76A8:
    lwz 7, 0x18(3)
    srawi 0, 4, 5
    lwz 6, 0x14(3)
    addze 5, 0
    mulli 7, 7, 0x500
    slwi 0, 4, 27
    srwi 4, 4, 31
    slwi 6, 6, 7
    add 3, 3, 7
    subf 0, 4, 0
    add 6, 3, 6
    slwi 3, 5, 2
    rotlwi 0, 0, 5
    add 5, 6, 3
    add 0, 0, 4
    li 3, 0x1
    lwz 4, 0x3548(5)
    slw 0, 3, 0
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

.balign 4
.global fn_802D7704

fn_802D7704:
    lwz 9, 0x18(3)
    srawi 0, 4, 5
    addze 8, 0
    lwz 7, 0x14(3)
    mulli 10, 9, 0x500
    clrlwi. 0, 5, 24
    slwi 9, 7, 7
    slwi 7, 4, 27
    add 10, 3, 10
    srwi 5, 4, 31
    subf 4, 5, 7
    slwi 8, 8, 2
    add 9, 10, 9
    li 7, 0x1
    rotlwi 4, 4, 5
    add 4, 4, 5
    add 8, 9, 8
    lwz 5, 0x3548(8)
    slw 4, 7, 4
    or 0, 5, 4
    stw 0, 0x3548(8)
    beqlr
    li 5, 0x8
    srwi 4, 6, 31
    subfc 0, 5, 6
    subi 0, 6, 0x7
    srwi 5, 5, 31
    subfe 4, 4, 5
    andc 0, 0, 4
    slwi 0, 0, 2
    add 4, 3, 0
    lwz 3, 0x6748(4)
    addi 0, 3, 0x1
    stw 0, 0x6748(4)
    blr

.balign 4
.global fn_802D7790

fn_802D7790:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    slwi 3, 4, 1
    xori 0, 5, 0xff
    lwz 4, 0x4(6)
    lwz 4, 0xc(4)
    addis 4, 4, 0x1
    add 4, 4, 3
    lhz 3, 0x31b8(4)
    and 0, 3, 0
    sth 0, 0x31b8(4)
    blr

.balign 4
.global fn_802D77BC

fn_802D77BC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slwi 0, 4, 1
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    add 3, 3, 0
    lhz 0, 0x31b8(3)
    or 0, 0, 5
    sth 0, 0x31b8(3)
    blr

.balign 4
.global fn_802D77E4

fn_802D77E4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slwi 0, 4, 1
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    add 3, 3, 0
    sth 5, 0x31b8(3)
    blr

.balign 4
.global fn_802D7804

fn_802D7804:
    addis 3, 3, 0x1
    slwi 0, 4, 1
    add 3, 3, 0
    lhz 3, 0x31b8(3)
    clrlwi 0, 5, 16
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

.balign 4
.global fn_802D782C

fn_802D782C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 4, 0x31de(3)
    blr

.balign 4
.global fn_802D7844

fn_802D7844:
    cmpwi 5, 0x0
    bltlr
    cmpwi 5, 0x4
    bgelr
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 0, 3, 0x1
    add 3, 0, 5
    stb 4, 0x31d8(3)
    blr

.balign 4
.global fn_802D7870

fn_802D7870:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    sth 4, 0x31dc(3)
    blr

.balign 4
.global fn_802D7888

fn_802D7888:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 4, 0, 4
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    lwz 0, 0x174(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

.balign 4
.global fn_802D78B4

fn_802D78B4:
    clrlwi. 0, 5, 24
    .4byte 0x41820028 # beq .L_802D78E0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 4
    lwz 3, 0x4(3)
    lwz 4, 0xc(3)
    lwz 3, 0x174(4)
    or 0, 3, 0
    stw 0, 0x174(4)
    blr
L_802D78E0:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 3, 0, 4
    li 0, -0x1
    lwz 4, 0x4(5)
    xor 0, 3, 0
    lwz 4, 0xc(4)
    lwz 3, 0x174(4)
    and 0, 3, 0
    stw 0, 0x174(4)
    blr

.balign 4
.global fn_802D790C

fn_802D790C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stb 4, 0x171(3)
    blr

.balign 4
.global fn_802D7920

fn_802D7920:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stb 4, 0x170(3)
    blr

.balign 4
.global fn_802D7934

fn_802D7934:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 4, 0x5c(3)
    blr

.balign 4
.global fn_802D7948

fn_802D7948:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 4, 0xc(3)
    lwz 3, 0x5c(4)
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_802D7968
    lwz 3, 0x58(4)
    blr
L_802D7968:
    subi 3, 3, 0x1
    blr

.balign 4
.global fn_802D7970

fn_802D7970:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    cmpwi 4, 0x11
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 4, 0x34(3)
    bgelr
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stw 0, 0x328c(3)
    blr

.balign 4
.global fn_802D79A4

fn_802D79A4:
    addis 3, 3, 0x1
    add 5, 3, 4
    lbz 0, 0x327c(5)
    cmplwi 0, 0x0
    bnelr
    slwi 0, 4, 2
    .4byte 0xC082E17C # lfs f4, lbl_8054111C@sda21(r0)
    add 3, 3, 0
    lfs 0, 0x324c(3)
    fcmpu cr0, 4, 0
    bnelr
    stfs 1, 0x324c(3)
    li 0, 0x1
    stfs 2, 0x325c(3)
    stfs 3, 0x326c(3)
    stb 0, 0x327c(5)
    blr

.balign 4
.global fn_802D79E8

fn_802D79E8:
    slwi 0, 4, 3
    add 4, 3, 0
    lfs 0, 0xf0(4)
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_802D7A00
    stfs 2, 0xf0(4)
L_802D7A00:
    add 4, 3, 0
    lfs 0, 0xf4(4)
    fcmpo cr0, 0, 1
    .4byte 0x40800008 # bge .L_802D7A14
    stfs 1, 0xf4(4)
L_802D7A14:
    clrlwi. 0, 5, 24
    bnelr
    .4byte 0xC002E184 # lfs f0, lbl_80541124@sda21(r0)
    li 0, 0x4
    li 4, 0x0
    fmuls 2, 0, 2
    fmuls 1, 0, 1
    mtctr 0
L_802D7A34:
    lfs 0, 0xf0(3)
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_802D7A44
    stfs 2, 0xf0(3)
L_802D7A44:
    lfs 0, 0xf4(3)
    fcmpo cr0, 0, 1
    .4byte 0x40800008 # bge .L_802D7A54
    stfs 1, 0xf4(3)
L_802D7A54:
    lfs 0, 0xf8(3)
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_802D7A64
    stfs 2, 0xf8(3)
L_802D7A64:
    lfs 0, 0xfc(3)
    fcmpo cr0, 0, 1
    .4byte 0x40800008 # bge .L_802D7A74
    stfs 1, 0xfc(3)
L_802D7A74:
    lfs 0, 0x100(3)
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_802D7A84
    stfs 2, 0x100(3)
L_802D7A84:
    lfs 0, 0x104(3)
    fcmpo cr0, 0, 1
    .4byte 0x40800008 # bge .L_802D7A94
    stfs 1, 0x104(3)
L_802D7A94:
    lfs 0, 0x108(3)
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_802D7AA4
    stfs 2, 0x108(3)
L_802D7AA4:
    lfs 0, 0x10c(3)
    fcmpo cr0, 0, 1
    .4byte 0x40800008 # bge .L_802D7AB4
    stfs 1, 0x10c(3)
L_802D7AB4:
    addi 3, 3, 0x20
    addi 4, 4, 0x3
    .4byte 0x4200FF78 # bdnz .L_802D7A34
    blr

.balign 4
.global fn_802D7AC4

fn_802D7AC4:
    cmpwi 4, 0x8
    .4byte 0x40800034 # bge .L_802D7AFC
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x18(3)
    lwz 5, 0x4(4)
    mulli 4, 0, 0x280
    lwz 0, 0x14(3)
    lwz 3, 0xc(5)
    slwi 0, 0, 6
    add 3, 3, 4
    add 4, 3, 0
    lwz 3, 0x1048(4)
    lwz 4, 0x104c(4)
    blr
L_802D7AFC:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    slwi 0, 4, 3
    lwz 4, 0x18(3)
    lwz 5, 0x4(5)
    mulli 4, 4, 0x280
    lwz 3, 0x14(3)
    lwz 5, 0xc(5)
    slwi 3, 3, 6
    add 4, 5, 4
    add 3, 4, 3
    add 4, 3, 0
    lwz 3, 0x1010(4)
    lwz 4, 0x1014(4)
    blr

.balign 4
.global fn_802D7B34

fn_802D7B34:
    stwu 1, -0x20(1)
    mflr 0
    li 6, 0x8
    stw 0, 0x24(1)
    subfc 0, 6, 4
    srwi 6, 6, 31
    stw 31, 0x1c(1)
    slwi 0, 5, 2
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    srwi 3, 4, 31
    subi 4, 4, 0x7
    subfe 6, 3, 6
    subfic 31, 0, 0x3c
    li 3, 0x0
    andc 30, 4, 6
    li 4, 0xf
    mr 5, 31
    bl __shl2i
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    slwi 0, 30, 3
    lwz 6, 0x18(29)
    mr 5, 31
    lwz 8, 0x4(7)
    mulli 7, 6, 0x280
    lwz 6, 0x14(29)
    lwz 8, 0xc(8)
    slwi 6, 6, 6
    add 7, 8, 7
    add 6, 7, 6
    add 6, 6, 0
    lwz 0, 0x1048(6)
    lwz 6, 0x104c(6)
    and 3, 3, 0
    and 4, 4, 6
    bl __shr2u
    lwz 0, 0x24(1)
    mr 3, 4
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.balign 4
.global fn_802D7BE8

fn_802D7BE8:
    stwu 1, -0x20(1)
    mflr 0
    li 7, 0x8
    stw 0, 0x24(1)
    subfc 0, 7, 4
    srwi 7, 7, 31
    stw 31, 0x1c(1)
    slwi 0, 5, 2
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 6
    stw 28, 0x10(1)
    mr 28, 3
    srwi 3, 4, 31
    subfe 7, 3, 7
    subi 3, 4, 0x7
    subfic 31, 0, 0x3c
    andc 30, 3, 7
    li 4, 0xf
    mr 5, 31
    li 3, 0x0
    bl __shl2i
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 6, -0x1
    lwz 0, 0x18(28)
    xor 9, 4, 6
    lwz 4, 0x4(5)
    xor 8, 3, 6
    mulli 3, 0, 0x280
    lwz 0, 0x14(28)
    lwz 4, 0xc(4)
    slwi 30, 30, 3
    slwi 0, 0, 6
    add 3, 4, 3
    add 0, 3, 0
    mr 4, 29
    add 7, 0, 30
    mr 5, 31
    lwz 0, 0x104c(7)
    li 3, 0x0
    lwz 6, 0x1048(7)
    and 0, 0, 9
    stw 0, 0x104c(7)
    and 0, 6, 8
    stw 0, 0x1048(7)
    bl __shl2i
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x18(28)
    lwz 6, 0x4(5)
    mulli 5, 0, 0x280
    lwz 0, 0x14(28)
    lwz 6, 0xc(6)
    slwi 0, 0, 6
    add 5, 6, 5
    add 0, 5, 0
    add 6, 0, 30
    lwz 0, 0x104c(6)
    lwz 5, 0x1048(6)
    or 0, 0, 4
    stw 0, 0x104c(6)
    or 0, 5, 3
    stw 0, 0x1048(6)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.balign 4
.global fn_802D7D00

fn_802D7D00:
    stwu 1, -0x10(1)
    mflr 0
    li 7, 0x8
    stw 0, 0x14(1)
    clrlwi. 0, 6, 24
    subfc 6, 7, 4
    stw 31, 0xc(1)
    srwi 0, 4, 31
    srwi 6, 7, 31
    stw 30, 0x8(1)
    subfe 6, 0, 6
    subi 0, 4, 0x7
    mr 30, 3
    andc 31, 0, 6
    .4byte 0x41820058 # beq .L_802D7D90
    li 3, 0x0
    li 4, 0x1
    bl __shl2i
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    slwi 0, 31, 3
    lwz 5, 0x18(30)
    lwz 7, 0x4(6)
    mulli 6, 5, 0x280
    lwz 5, 0x14(30)
    lwz 7, 0xc(7)
    slwi 5, 5, 6
    add 6, 7, 6
    add 5, 6, 5
    add 6, 5, 0
    lwz 0, 0x104c(6)
    lwz 5, 0x1048(6)
    or 0, 0, 4
    stw 0, 0x104c(6)
    or 0, 5, 3
    stw 0, 0x1048(6)
    .4byte 0x48000060 # b .L_802D7DEC
L_802D7D90:
    li 3, 0x0
    li 4, 0x1
    bl __shl2i
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    li 7, -0x1
    lwz 5, 0x18(30)
    slwi 0, 31, 3
    lwz 6, 0x4(6)
    xor 8, 4, 7
    mulli 5, 5, 0x280
    lwz 4, 0x14(30)
    lwz 6, 0xc(6)
    xor 7, 3, 7
    slwi 3, 4, 6
    add 4, 6, 5
    add 3, 4, 3
    add 4, 3, 0
    lwz 0, 0x104c(4)
    lwz 3, 0x1048(4)
    and 0, 0, 8
    stw 0, 0x104c(4)
    and 0, 3, 7
    stw 0, 0x1048(4)
L_802D7DEC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.balign 4
.global fn_802D7E04

fn_802D7E04:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 4
    lbz 3, 0x308(3)
    blr

.balign 4
.global fn_802D7E1C

fn_802D7E1C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 4
    lbz 3, 0x328(3)
    blr

.balign 4
.global fn_802D7E34

fn_802D7E34:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 4, 0, 4
    lbz 3, 0x308(4)
    cmplwi 3, 0xff
    bgelr
    addi 0, 3, 0x1
    stb 0, 0x308(4)
    blr

.balign 4
.global fn_802D7E5C

fn_802D7E5C:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    clrlwi 3, 4, 24
    li 7, 0x1
    li 0, 0x0
    lwz 4, 0x4(6)
    slw 7, 7, 5
    mulli 3, 3, 0x320
    lwz 4, 0xc(4)
    srawi 6, 7, 31
    add 4, 4, 3
    lwz 3, 0x3c8(4)
    lwz 5, 0x3cc(4)
    and 4, 6, 3
    and 3, 7, 5
    xor 3, 3, 0
    xor 0, 4, 0
    or 0, 3, 0
    subic 3, 0, 0x1
    subfe 0, 3, 0
    clrlwi 3, 0, 24
    blr

.balign 4
.global fn_802D7EB0

fn_802D7EB0:
    clrlwi. 0, 6, 24
    .4byte 0x41820044 # beq .L_802D7EF8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    clrlwi 3, 4, 24
    li 0, 0x1
    lwz 6, 0x4(6)
    slw 0, 0, 5
    mulli 4, 3, 0x320
    lwz 5, 0xc(6)
    srawi 3, 0, 31
    add 6, 5, 4
    lwz 5, 0x3cc(6)
    lwz 4, 0x3c8(6)
    or 0, 5, 0
    stw 0, 0x3cc(6)
    or 0, 4, 3
    stw 0, 0x3c8(6)
    blr
L_802D7EF8:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    clrlwi 6, 4, 24
    li 3, 0x1
    li 0, -0x1
    lwz 7, 0x4(7)
    slw 4, 3, 5
    mulli 5, 6, 0x320
    li 3, 0x0
    lwz 6, 0xc(7)
    xor 0, 4, 0
    add 6, 6, 5
    lwz 5, 0x3cc(6)
    lwz 4, 0x3c8(6)
    and 0, 5, 0
    stw 0, 0x3cc(6)
    and 0, 4, 3
    stw 0, 0x3c8(6)
    blr

.balign 4
.global fn_802D7F40

fn_802D7F40:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 7, 0, 4
    lwz 0, 0x8(3)
    lwz 4, 0x4(6)
    lwz 5, 0x4(3)
    slwi 0, 0, 2
    lwz 4, 0xc(4)
    slwi 3, 5, 4
    add 3, 4, 3
    add 3, 3, 0
    lwz 0, 0x348(3)
    and 3, 7, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

.balign 4
.global fn_802D7F84


# fn_802D7F84(record, flagValue, bitIndex) - sets or clears bit
# `bitIndex` in a per-record flags word. Looks up the word via
# `lbl_8053AAF8->0x4->0xc` (the SAME manager pointer the confirmed
# spatial registry uses at ->0x8, and `fn_802D800C` below uses too -
# see reference_fsa_spatial_registry_system.md), indexed by
# `record->0x4*0x10 + record->0x8*4`, at offset `+0x348`. If
# `flagValue` is nonzero, ORs the bit in; if zero, ANDs it out. Called
# from RUPY's pickup-trigger `fn_8032ABE0` (extab_8032abe0.s) right
# after a level-config gate passes, to mark that a pickup event
# happened. NOTE: this indexes and offsets DIFFERENTLY from
# `fn_802D800C` (`+0x4`/`+0x8` here vs `+0x18`/`+0x14` there, `+0x348`
# here vs `+0x178` there) - they are likely two DISTINCT flag words on
# related but different per-room records, not a strict read/write pair
# on the same field as originally assumed.
fn_802D7F84:
    clrlwi. 0, 5, 24
    .4byte 0x41820040 # beq .L_802D7FC8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    lwz 5, 0x4(3)
    slw 0, 0, 4
    lwz 6, 0x4(6)
    lwz 3, 0x8(3)
    slwi 4, 5, 4
    lwz 5, 0xc(6)
    slwi 3, 3, 2
    add 4, 5, 4
    add 4, 4, 3
    lwz 3, 0x348(4)
    or 0, 3, 0
    stw 0, 0x348(4)
    blr
L_802D7FC8:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    lwz 5, 0x4(3)
    slw 4, 0, 4
    lwz 6, 0x4(6)
    li 0, -0x1
    lwz 3, 0x8(3)
    slwi 5, 5, 4
    lwz 6, 0xc(6)
    xor 0, 4, 0
    slwi 3, 3, 2
    add 4, 6, 5
    add 4, 4, 3
    lwz 3, 0x348(4)
    and 0, 3, 0
    stw 0, 0x348(4)
    blr

.balign 4
.global fn_802D800C


# fn_802D800C(record, bitIndex) - checks whether bit `bitIndex` is set
# in a per-room flags word. Looks up a room-data table via
# `lbl_8053AAF8->0x4->0xc` (the SAME manager pointer the confirmed
# spatial registry uses at ->0x8, see
# reference_fsa_spatial_registry_system.md - a different sub-array on
# the same global manager), indexed by `record->0x18*0x28 +
# record->0x14*4`, then reads the flags word at that room-data entry's
# `+0x178` and tests it against `1<<bitIndex`. Returns 0/1. This is the
# primitive `fn_801F4760` (RUPY's shared vtable-0x34 query, see
# project_fsa_vtable_slot_0x34_resolved.md) builds on - a generic
# "does the current room have flag bit N set" check.
fn_802D800C:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 6, 0x1
    lwz 0, 0x18(3)
    slw 6, 6, 4
    lwz 5, 0x4(5)
    mulli 4, 0, 0x28
    lwz 0, 0x14(3)
    lwz 3, 0xc(5)
    slwi 0, 0, 2
    add 3, 3, 4
    add 3, 3, 0
    lwz 0, 0x178(3)
    and 3, 6, 0
    neg 0, 3
    or 0, 0, 3
    srwi 3, 0, 31
    blr

.balign 4
.global fn_802D8050

fn_802D8050:
    clrlwi. 0, 5, 24
    .4byte 0x41820078 # beq .L_802D80CC
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    lwz 5, 0x18(3)
    slw 0, 0, 4
    lwz 7, 0x4(7)
    mulli 5, 5, 0x28
    lwz 3, 0x14(3)
    lwz 7, 0xc(7)
    slwi 3, 3, 2
    add 5, 7, 5
    add 5, 5, 3
    lwz 3, 0x178(5)
    or 0, 3, 0
    stw 0, 0x178(5)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 5, 0, 4
    lbz 3, 0x308(5)
    cmplwi 3, 0xff
    .4byte 0x4080000C # bge .L_802D80B4
    addi 0, 3, 0x1
    stb 0, 0x308(5)
L_802D80B4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 4
    stb 6, 0x328(3)
    blr
L_802D80CC:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    lwz 6, 0x18(3)
    slw 5, 0, 4
    lwz 7, 0x4(7)
    li 0, -0x1
    mulli 6, 6, 0x28
    lwz 3, 0x14(3)
    lwz 7, 0xc(7)
    xor 0, 5, 0
    slwi 3, 3, 2
    add 5, 7, 6
    add 6, 5, 3
    li 5, 0xff
    lwz 3, 0x178(6)
    and 0, 3, 0
    stw 0, 0x178(6)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 4
    stb 5, 0x328(3)
    blr

.balign 4
.global fn_802D8128

fn_802D8128:
    stwu 1, -0x10(1)
    mflr 0
    mr 8, 4
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 6, 0x14(3)
    cmpwi 6, 0x0
    .4byte 0x418000C8 # blt .L_802D8210
    cmpwi 6, 0xa
    .4byte 0x408000C0 # bge .L_802D8210
    lwz 7, 0x18(31)
    cmpwi 7, 0x0
    .4byte 0x418000B4 # blt .L_802D8210
    cmpwi 7, 0xa
    .4byte 0x408000AC # bge .L_802D8210
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x8(31)
    lbz 0, 0x7f(3)
    lwz 4, 0x4(31)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802D819C
    lis 3, lbl_804A9530@ha
    slwi 4, 4, 4
    addi 3, 3, lbl_804A9530@l
    slwi 0, 5, 2
    add 3, 3, 4
    lwzx 5, 3, 0
    .4byte 0x48000008 # b .L_802D81A0
L_802D819C:
    .4byte 0x38A2E188 # li r5, lbl_80541128@sda21
L_802D81A0:
    mulli 0, 7, 0xa
    add 0, 31, 0
    add 3, 0, 6
    lbz 10, 0x60(3)
    cmpwi 10, 0xff
    .4byte 0x40820008 # bne .L_802D81BC
    li 10, 0x0
L_802D81BC:
    lis 3, 0x6666
    lis 4, lbl_8046E7E8@ha
    addi 0, 3, 0x6667
    subi 8, 8, 0x7
    mulhw 0, 0, 10
    addis 3, 31, 0x1
    addi 4, 4, lbl_8046E7E8@l
    srawi 7, 0, 2
    srawi 0, 0, 2
    srwi 6, 0, 31
    srwi 9, 7, 31
    add 0, 0, 6
    mulli 0, 0, 0xa
    add 6, 7, 9
    subf 7, 0, 10
    crclr 6
    addi 3, 3, 0x321a
    bl fn_8006B334
    addis 3, 31, 0x1
    addi 3, 3, 0x321a
    .4byte 0x48000008 # b .L_802D8214
L_802D8210:
    li 3, 0x0
L_802D8214:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.balign 4
.global fn_802D8228

fn_802D8228:
    stwu 1, -0x10(1)
    mflr 0
    mr 8, 4
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 6, 0x14(3)
    cmpwi 6, 0x0
    .4byte 0x418000C8 # blt .L_802D8310
    cmpwi 6, 0xa
    .4byte 0x408000C0 # bge .L_802D8310
    lwz 7, 0x18(31)
    cmpwi 7, 0x0
    .4byte 0x418000B4 # blt .L_802D8310
    cmpwi 7, 0xa
    .4byte 0x408000AC # bge .L_802D8310
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x8(31)
    lbz 0, 0x7f(3)
    lwz 4, 0x4(31)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802D829C
    lis 3, lbl_804A9530@ha
    slwi 4, 4, 4
    addi 3, 3, lbl_804A9530@l
    slwi 0, 5, 2
    add 3, 3, 4
    lwzx 5, 3, 0
    .4byte 0x48000008 # b .L_802D82A0
L_802D829C:
    .4byte 0x38A2E188 # li r5, lbl_80541128@sda21
L_802D82A0:
    mulli 0, 7, 0xa
    add 0, 31, 0
    add 3, 0, 6
    lbz 10, 0x60(3)
    cmpwi 10, 0xff
    .4byte 0x40820008 # bne .L_802D82BC
    li 10, 0x0
L_802D82BC:
    lis 3, 0x6666
    lis 4, lbl_8046E804@ha
    addi 0, 3, 0x6667
    subi 8, 8, 0x7
    mulhw 0, 0, 10
    addis 3, 31, 0x1
    addi 4, 4, lbl_8046E804@l
    srawi 7, 0, 2
    srawi 0, 0, 2
    srwi 6, 0, 31
    srwi 9, 7, 31
    add 0, 0, 6
    mulli 0, 0, 0xa
    add 6, 7, 9
    subf 7, 0, 10
    crclr 6
    addi 3, 3, 0x31fa
    bl fn_8006B334
    addis 3, 31, 0x1
    addi 3, 3, 0x31fa
    .4byte 0x48000008 # b .L_802D8314
L_802D8310:
    li 3, 0x0
L_802D8314:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.balign 4
.global fn_802D8328

fn_802D8328:
    stwu 1, -0x10c0(1)
    mflr 0
    stw 0, 0x10c4(1)
    stmw 20, 0x1090(1)
    mr 31, 3
    addis 3, 31, 0x1
    mr 20, 4
    li 26, 0x0
    stb 5, 0x31f6(3)
    lwz 0, 0x14(31)
    cmpwi 0, 0x0
    .4byte 0x41800694 # blt .L_802D89E8
    cmpwi 0, 0xa
    .4byte 0x4080068C # bge .L_802D89E8
    lwz 0, 0x18(31)
    cmpwi 0, 0x0
    .4byte 0x41800680 # blt .L_802D89E8
    cmpwi 0, 0xa
    .4byte 0x40800678 # bge .L_802D89E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    sth 0, 0x31dc(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x8(31)
    lbz 0, 0x7f(3)
    lwz 4, 0x4(31)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802D83C0
    lis 3, lbl_804A9530@ha
    slwi 4, 4, 4
    addi 3, 3, lbl_804A9530@l
    slwi 0, 5, 2
    add 3, 3, 4
    lwzx 29, 3, 0
    .4byte 0x48000008 # b .L_802D83C4
L_802D83C0:
    .4byte 0x3BA2E188 # li r29, lbl_80541128@sda21
L_802D83C4:
    lwz 3, 0x18(31)
    lwz 0, 0x14(31)
    mulli 3, 3, 0xa
    add 3, 31, 3
    add 3, 3, 0
    lbz 9, 0x60(3)
    cmpwi 9, 0xff
    .4byte 0x40820008 # bne .L_802D83E8
    li 9, 0x0
L_802D83E8:
    lis 3, 0x6666
    lis 4, lbl_8046E820@ha
    addi 0, 3, 0x6667
    mr 5, 29
    mulhw 0, 0, 9
    lis 3, 0x4220
    addi 4, 4, lbl_8046E820@l
    addi 27, 3, 0x2020
    addi 3, 1, 0x5c
    srawi 7, 0, 2
    srawi 0, 0, 2
    srwi 6, 0, 31
    srwi 8, 7, 31
    add 0, 0, 6
    mulli 0, 0, 0xa
    add 6, 7, 8
    subf 7, 0, 9
    crclr 6
    bl fn_8006B334
    lbz 3, 0x0(29)
    addi 4, 1, 0x5c
    lbz 0, 0x1(29)
    extsb 5, 3
    lbz 6, 0x2(29)
    extsb 3, 0
    subi 5, 5, 0x20
    extsb 6, 6
    subi 0, 3, 0x20
    slwi 3, 5, 16
    slwi 0, 0, 8
    add 0, 3, 0
    add 0, 0, 6
    add 27, 0, 27
    subi 27, 27, 0x20
    mr 3, 27
    bl fn_804032E8
    mr 29, 3
    li 25, 0x0
    bl fn_801E9AFC
    mr 4, 20
    bl fn_801EA384
    bl fn_80204638
    mr 4, 20
    bl fn_80204ABC
    bl RusaRegistry_GetOrInit
    li 0, 0x0
    stw 0, 0x80(3)
    bl CompanionRegistry_GetOrInit
    bl GrowableArray_Reset
    bl fn_801DAC6C
    bl fn_801DAF4C
    bl fn_801C0D70
    bl fn_801C151C
    bl fn_8020D58C
    bl fn_8020D690
    bl fn_801283E8
    bl fn_801283BC
    bl fn_8012F554
    bl fn_8012F494
    bl fn_8012FF9C
    bl fn_801300D8
    clrlwi. 0, 20, 24
    .4byte 0x41820014 # beq .L_802D84F4
    bl fn_80131F0C
    bl fn_80131EF8
    li 0, 0x0
    .4byte 0x980D9070 # stb r0, lbl_8053AC30@sda21(r0)
L_802D84F4:
    lis 3, lbl_8046E178@ha
    addi 27, 1, 0x7c
    addi 30, 3, lbl_8046E178@l
    li 24, 0x0
L_802D8504:
    li 23, 0x0
    mr 28, 27
L_802D850C:
    add 4, 29, 23
    lbz 0, 0x1(4)
    lbz 3, 0x0(4)
    slwi 0, 0, 16
    lbz 5, 0x2(4)
    rlwimi 0, 3, 24, 0, 7
    lbz 6, 0x3(4)
    rlwimi 0, 5, 8, 16, 23
    or 21, 6, 0
    subis 0, 21, 0x2020
    cmplwi 0, 0x2020
    .4byte 0x4182022C # beq .L_802D8764
    lbz 0, 0x8(4)
    li 8, 0x0
    lwz 5, 0x0(30)
    addi 23, 23, 0xb
    slwi 6, 0, 16
    lbz 3, 0x7(4)
    cmplw 21, 5
    lbz 0, 0x9(4)
    rlwimi 6, 3, 24, 0, 7
    lbz 5, 0xa(4)
    rlwimi 6, 0, 8, 16, 23
    lbz 7, 0x4(4)
    lbz 3, 0x5(4)
    or 20, 5, 6
    lbz 0, 0x6(4)
    .4byte 0x4082000C # bne .L_802D8584
    li 8, 0x1
    .4byte 0x48000068 # b .L_802D85E8
L_802D8584:
    addi 4, 30, 0x4
    lwz 5, 0x4(30)
    cmplw 21, 5
    .4byte 0x4082000C # bne .L_802D859C
    li 8, 0x1
    .4byte 0x48000050 # b .L_802D85E8
L_802D859C:
    lwzu 5, 0x4(4)
    cmplw 21, 5
    .4byte 0x4082000C # bne .L_802D85B0
    li 8, 0x1
    .4byte 0x4800003C # b .L_802D85E8
L_802D85B0:
    lwzu 5, 0x4(4)
    cmplw 21, 5
    .4byte 0x4082000C # bne .L_802D85C4
    li 8, 0x1
    .4byte 0x48000028 # b .L_802D85E8
L_802D85C4:
    lwzu 5, 0x4(4)
    cmplw 21, 5
    .4byte 0x4082000C # bne .L_802D85D8
    li 8, 0x1
    .4byte 0x48000014 # b .L_802D85E8
L_802D85D8:
    lwz 5, 0x4(4)
    cmplw 21, 5
    .4byte 0x40820008 # bne .L_802D85E8
    li 8, 0x1
L_802D85E8:
    clrlwi. 4, 8, 24
    .4byte 0x4182000C # beq .L_802D85F8
    cmpwi 24, 0x0
    .4byte 0x41820014 # beq .L_802D8608
L_802D85F8:
    clrlwi. 4, 8, 24
    .4byte 0x4082FF10 # bne .L_802D850C
    cmpwi 24, 0x0
    .4byte 0x4182FF08 # beq .L_802D850C
L_802D8608:
    clrlwi. 4, 7, 24
    .4byte 0x40820014 # bne .L_802D8620
    lfs 5, 0xcc(31)
    li 22, 0x0
    lfs 6, 0xd0(31)
    .4byte 0x48000010 # b .L_802D862C
L_802D8620:
    .4byte 0xC0C2E17C # lfs f6, lbl_8054111C@sda21(r0)
    addi 22, 4, 0x7
    fmr 5, 6
L_802D862C:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    srawi 4, 26, 5
    addze 7, 4
    slwi 4, 26, 27
    lwz 8, 0x4(5)
    srwi 6, 26, 31
    subf 5, 6, 4
    slwi 7, 7, 2
    lwz 4, 0xc(8)
    rotlwi 5, 5, 5
    add 5, 5, 6
    li 6, 0x1
    lwz 8, 0x18(4)
    slw 5, 6, 5
    lwz 6, 0x14(4)
    mulli 8, 8, 0x500
    slwi 6, 6, 7
    add 6, 8, 6
    add 6, 6, 7
    addi 6, 6, 0x3548
    lwzx 4, 4, 6
    and. 4, 4, 5
    .4byte 0x40820084 # bne .L_802D8708
    lis 4, 0x4330
    clrlwi 3, 3, 16
    clrlwi 0, 0, 16
    stw 3, 0x1084(1)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    stw 4, 0x1080(1)
    .4byte 0xC862E198 # lfd f3, lbl_80541138@sda21(r0)
    lfd 1, 0x1080(1)
    stw 0, 0x108c(1)
    fsubs 2, 1, 3
    .4byte 0xC082E18C # lfs f4, lbl_8054112C@sda21(r0)
    stw 4, 0x1088(1)
    lfd 1, 0x1088(1)
    fmadds 2, 4, 2, 5
    stfs 0, 0x58(1)
    fsubs 0, 1, 3
    stfs 2, 0x50(1)
    fmadds 0, 4, 0, 6
    stfs 0, 0x54(1)
    bl SpatialRegistry_GetBase
    mr 4, 21
    mr 5, 22
    mr 7, 20
    mr 8, 26
    addi 6, 1, 0x50
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x0(28)
    addi 28, 28, 0x4
    addi 27, 27, 0x4
    addi 25, 25, 0x1
    .4byte 0x48000058 # b .L_802D875C
L_802D8708:
    bl SpatialRegistry_GetBase
    lis 5, 0x6473
    mr 4, 21
    addi 5, 5, 0x7472
    bl fn_801F620C
    neg 0, 3
    li 4, 0x8
    or 0, 0, 3
    srwi 3, 22, 31
    srwi. 5, 0, 31
    subfc 0, 4, 22
    srwi 4, 4, 31
    subi 0, 22, 0x7
    subfe 3, 3, 4
    andc 0, 0, 3
    .4byte 0x41820018 # beq .L_802D875C
    slwi 3, 0, 2
    addi 4, 3, 0x6748
    lwzx 3, 31, 4
    addi 0, 3, 0x1
    stwx 0, 31, 4
L_802D875C:
    addi 26, 26, 0x1
    .4byte 0x4BFFFDAC # b .L_802D850C
L_802D8764:
    addi 24, 24, 0x1
    cmpwi 24, 0x2
    .4byte 0x4180FD98 # blt .L_802D8504
    addi 21, 1, 0x7c
    li 22, 0x0
    .4byte 0x4800003C # b .L_802D87B4
L_802D877C:
    lwz 20, 0x0(21)
    cmpwi 20, 0x0
    .4byte 0x41800028 # blt .L_802D87AC
    bl SpatialRegistry_GetBase
    mr 4, 20
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_802D87AC
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_802D87AC:
    addi 22, 22, 0x1
    addi 21, 21, 0x4
L_802D87B4:
    cmpw 22, 25
    .4byte 0x4180FFC4 # blt .L_802D877C
    bl fn_801E9AFC
    lbz 0, 0xf0(3)
    mulli 0, 0, 0x78
    add 3, 3, 0
    bl fn_801EA594
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182020C # beq .L_802D89E8
    .4byte 0x4082000C # bne .L_802D87EC
    li 0, 0x0
    .4byte 0x48000040 # b .L_802D8828
L_802D87EC:
    lwz 4, 0x4(3)
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0x9
    .4byte 0x40820010 # bne .L_802D880C
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_802D881C
L_802D880C:
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0xd
    .4byte 0x4180000C # blt .L_802D8824
L_802D881C:
    li 0, 0x1
    .4byte 0x48000008 # b .L_802D8828
L_802D8824:
    li 0, 0x0
L_802D8828:
    clrlwi. 0, 0, 24
    .4byte 0x408201BC # bne .L_802D89E8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_802D8850
    lwz 3, 0x11c(3)
    cmpwi 3, 0x1
    .4byte 0x4182019C # beq .L_802D89E8
L_802D8850:
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_802D886C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    cmpwi 3, 0x3
    .4byte 0x41820180 # beq .L_802D89E8
L_802D886C:
    cmpwi 0, 0x1
    .4byte 0x40820018 # bne .L_802D8888
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    cmpwi 3, 0x3
    .4byte 0x41820164 # beq .L_802D89E8
L_802D8888:
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_802D88A4
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    cmpwi 3, 0x3
    .4byte 0x41820148 # beq .L_802D89E8
L_802D88A4:
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_802D88C0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    cmpwi 3, 0x3
    .4byte 0x4182012C # beq .L_802D89E8
L_802D88C0:
    cmpwi 0, 0x4
    .4byte 0x40820018 # bne .L_802D88DC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    cmpwi 3, 0x3
    .4byte 0x41820110 # beq .L_802D89E8
L_802D88DC:
    cmpwi 0, 0x5
    .4byte 0x40820018 # bne .L_802D88F8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    cmpwi 3, 0x1
    .4byte 0x418200F4 # beq .L_802D89E8
L_802D88F8:
    cmpwi 0, 0x5
    .4byte 0x40820018 # bne .L_802D8914
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    cmpwi 3, 0x3
    .4byte 0x418200D8 # beq .L_802D89E8
L_802D8914:
    cmpwi 0, 0x6
    .4byte 0x40820018 # bne .L_802D8930
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    cmpwi 3, 0x1
    .4byte 0x418200BC # beq .L_802D89E8
L_802D8930:
    cmpwi 0, 0x6
    .4byte 0x40820018 # bne .L_802D894C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    cmpwi 3, 0x3
    .4byte 0x418200A0 # beq .L_802D89E8
L_802D894C:
    cmpwi 0, 0x7
    .4byte 0x40820018 # bne .L_802D8968
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    cmpwi 3, 0x0
    .4byte 0x41820084 # beq .L_802D89E8
L_802D8968:
    cmpwi 0, 0x7
    .4byte 0x40820018 # bne .L_802D8984
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x11c(3)
    cmpwi 3, 0x2
    .4byte 0x41820068 # beq .L_802D89E8
L_802D8984:
    cmpwi 0, 0x7
    .4byte 0x40820018 # bne .L_802D89A0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x4182004C # beq .L_802D89E8
L_802D89A0:
    .4byte 0xC042E190 # lfs f2, lbl_80541130@sda21(r0)
    lfs 0, 0xd0(31)
    lfs 1, 0xcc(31)
    fadds 3, 2, 0
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    fadds 1, 2, 1
    stfs 0, 0x4c(1)
    stfs 1, 0x44(1)
    stfs 3, 0x48(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5449
    addi 6, 1, 0x44
    addi 4, 4, 0x4e4b
    li 5, 0x0
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802D89E8:
    lfs 2, 0xd0(31)
    lfs 1, 0xcc(31)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    stfs 1, 0x38(1)
    stfs 2, 0x3c(1)
    stfs 0, 0x40(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4c46
    addi 6, 1, 0x38
    addi 4, 4, 0x474e
    li 5, 0x0
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    lfs 2, 0xd0(31)
    lfs 1, 0xcc(31)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    stfs 1, 0x2c(1)
    stfs 2, 0x30(1)
    stfs 0, 0x34(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5442
    mr 7, 26
    addi 4, 4, 0x474e
    addi 6, 1, 0x2c
    li 5, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820164 # bne .L_802D8BD0
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802D8A80
    li 0, 0x0
    .4byte 0x48000110 # b .L_802D8B8C
L_802D8A80:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 4, 0x118(3)
    cmpwi 4, 0x0
    .4byte 0x40820010 # bne .L_802D8AA0
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200E4 # beq .L_802D8B80
L_802D8AA0:
    cmpwi 4, 0x1
    .4byte 0x40820018 # bne .L_802D8ABC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200C8 # beq .L_802D8B80
L_802D8ABC:
    cmpwi 4, 0x2
    .4byte 0x40820018 # bne .L_802D8AD8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200AC # beq .L_802D8B80
L_802D8AD8:
    cmpwi 4, 0x3
    .4byte 0x40820018 # bne .L_802D8AF4
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820090 # beq .L_802D8B80
L_802D8AF4:
    cmpwi 4, 0x4
    .4byte 0x40820018 # bne .L_802D8B10
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820074 # beq .L_802D8B80
L_802D8B10:
    cmpwi 4, 0x5
    .4byte 0x40820018 # bne .L_802D8B2C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_802D8B80
L_802D8B2C:
    cmpwi 4, 0x6
    .4byte 0x40820018 # bne .L_802D8B48
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_802D8B80
L_802D8B48:
    cmpwi 4, 0x7
    .4byte 0x40820018 # bne .L_802D8B64
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    .4byte 0x41820020 # beq .L_802D8B80
L_802D8B64:
    cmpwi 4, 0xa
    .4byte 0x40820020 # bne .L_802D8B88
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_802D8B88
L_802D8B80:
    li 0, 0x1
    .4byte 0x48000008 # b .L_802D8B8C
L_802D8B88:
    li 0, 0x0
L_802D8B8C:
    clrlwi. 0, 0, 24
    .4byte 0x40820040 # bne .L_802D8BD0
    lfs 2, 0xd0(31)
    lfs 1, 0xcc(31)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    stfs 1, 0x20(1)
    stfs 2, 0x24(1)
    stfs 0, 0x28(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5357
    addi 6, 1, 0x20
    addi 4, 4, 0x444c
    li 5, 0x0
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802D8BD0:
    mr 20, 31
    mr 21, 31
    li 22, 0x0
L_802D8BDC:
    addis 4, 20, 0x1
    lwz 0, 0x14(31)
    lwz 23, 0x30c8(4)
    extrwi 3, 23, 8, 8
    extrwi 5, 23, 8, 16
    cmpw 3, 0
    .4byte 0x4082005C # bne .L_802D8C50
    lwz 0, 0x18(31)
    cmpw 5, 0
    .4byte 0x40820050 # bne .L_802D8C50
    addis 3, 21, 0x1
    lwz 24, 0x3068(4)
    lfs 2, 0x308c(3)
    lfs 1, 0x3088(3)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    stfs 1, 0x14(1)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4c53
    ori 7, 24, 0x80
    rlwinm 0, 23, 25, 7, 14
    clrlwi 5, 23, 24
    addi 4, 4, 0x5449
    addi 6, 1, 0x14
    or 7, 7, 0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802D8C50:
    addi 22, 22, 0x1
    addi 21, 21, 0x8
    cmpwi 22, 0x8
    addi 20, 20, 0x4
    .4byte 0x4180FF7C # blt .L_802D8BDC
    mr 21, 31
    mr 22, 31
    li 23, 0x0
L_802D8C70:
    addis 3, 21, 0x1
    lwz 0, 0x14(31)
    lwz 24, 0x3128(3)
    extrwi 3, 24, 8, 8
    extrwi 4, 24, 8, 16
    cmpw 3, 0
    .4byte 0x4082008C # bne .L_802D8D14
    lwz 0, 0x18(31)
    cmpw 4, 0
    .4byte 0x40820080 # bne .L_802D8D14
    addis 3, 22, 0x1
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    lfs 2, 0x30ec(3)
    lfs 1, 0x30e8(3)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    extrwi 0, 24, 6, 2
    lis 4, 0x4b45
    addi 4, 4, 0x5930
    clrlwi 5, 24, 24
    addi 6, 1, 0x8
    ori 7, 0, 0x980
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 20, 3
    bl SpatialRegistry_GetBase
    mr 4, 20
    bl fn_801F666C
    addis 5, 22, 0x1
    addis 4, 21, 0x1
    lfs 0, 0x3148(5)
    srwi 0, 24, 30
    stfs 0, 0x230(3)
    lfs 0, 0x314c(5)
    stfs 0, 0x234(3)
    lwz 4, 0x3188(4)
    stw 4, 0x238(3)
    stw 0, 0x23c(3)
L_802D8D14:
    addi 23, 23, 0x1
    addi 22, 22, 0x8
    cmpwi 23, 0x8
    addi 21, 21, 0x4
    .4byte 0x4180FF4C # blt .L_802D8C70
    bl SpatialRegistry_GetBase
    li 4, 0x0
    bl fn_801F6204
    li 0, 0x32
    stw 0, 0xec(31)
    lmw 20, 0x1090(1)
    lwz 0, 0x10c4(1)
    mtlr 0
    addi 1, 1, 0x10c0
    blr

.balign 4
.global fn_802D8D50

fn_802D8D50:
    stwu 1, -0x90(1)
    mflr 0
    li 6, 0x0
    lis 7, lbl_8046E148@ha
    stw 0, 0x94(1)
    li 0, 0x0
    stmw 24, 0x70(1)
    mr 26, 3
    mr 27, 4
    addi 30, 7, lbl_8046E148@l
    .4byte 0x3B82E03C # li r28, lbl_80540FDC@sda21
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(5)
    lwz 3, 0xc(3)
    stw 6, 0x5c(3)
    lwz 6, 0x14(26)
    cmpwi 6, 0x0
    .4byte 0x41800074 # blt .L_802D8E08
    cmpwi 6, 0xa
    .4byte 0x4080006C # bge .L_802D8E08
    lwz 7, 0x18(26)
    cmpwi 7, 0x0
    .4byte 0x41800060 # blt .L_802D8E08
    cmpwi 7, 0xa
    .4byte 0x40800058 # bge .L_802D8E08
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x8(26)
    lbz 0, 0x7f(3)
    lwz 4, 0x4(26)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802D8DE8
    lis 3, lbl_804A9530@ha
    slwi 4, 4, 4
    addi 3, 3, lbl_804A9530@l
    slwi 0, 5, 2
    add 3, 3, 4
    lwzx 28, 3, 0
    .4byte 0x48000008 # b .L_802D8DEC
L_802D8DE8:
    .4byte 0x3B82E188 # li r28, lbl_80541128@sda21
L_802D8DEC:
    mulli 0, 7, 0xa
    add 0, 26, 0
    add 3, 0, 6
    lbz 0, 0x60(3)
    cmpwi 0, 0xff
    .4byte 0x40820008 # bne .L_802D8E08
    li 0, 0x0
L_802D8E08:
    lis 3, 0x6666
    lbz 5, 0x0(28)
    addi 3, 3, 0x6667
    lbz 4, 0x1(28)
    mulhw 3, 3, 0
    extsb 5, 5
    extsb 4, 4
    lbz 8, 0x2(28)
    subi 7, 5, 0x20
    subi 6, 4, 0x20
    srawi 5, 3, 2
    lis 9, 0x4d20
    srawi 3, 3, 2
    slwi 7, 7, 16
    srwi 4, 3, 31
    slwi 6, 6, 8
    add 3, 3, 4
    srwi 4, 5, 31
    mulli 3, 3, 0xa
    extsb 8, 8
    add 6, 7, 6
    add 29, 5, 4
    subf 25, 3, 0
    addi 24, 9, 0x2020
    add 6, 6, 8
    mr 5, 28
    add 24, 6, 24
    mr 6, 29
    mr 7, 25
    addi 3, 1, 0x28
    addi 4, 30, 0x6f0
    crclr 6
    subi 24, 24, 0x20
    bl fn_8006B334
    mr 5, 28
    mr 6, 29
    mr 7, 25
    addi 3, 1, 0x8
    addi 4, 30, 0x70c
    crclr 6
    bl fn_8006B334
    clrlwi. 0, 27, 24
    .4byte 0x4182002C # beq .L_802D8EDC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x0
    li 5, 0x4
    lwz 3, 0x20(3)
    bl fn_802F6BBC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 4, 0x1
    li 5, 0x5
    lwz 3, 0x20(3)
    bl fn_802F6BBC
L_802D8EDC:
    lis 3, lbl_80529DEC@ha
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    addi 31, 3, lbl_80529DEC@l
    mr 28, 24
    lwz 3, 0x10(31)
    mr 4, 24
    addi 5, 1, 0x28
    lwz 25, 0x20(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr 4, 3
    mr 3, 25
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    bl fn_802F99DC
    lwz 3, 0x10(31)
    mr 4, 24
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    addi 5, 1, 0x8
    lwz 12, 0x0(3)
    lwz 25, 0x20(6)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr 4, 3
    mr 3, 25
    li 5, 0x0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    bl fn_802F99DC
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    mr 3, 26
    li 4, 0x0
    lwz 5, 0x20(5)
    stb 0, 0x235c(5)
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    lwz 5, 0x20(5)
    stb 0, 0x235d(5)
    bl fn_802D4CCC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802D8FA8
    li 0, 0x0
    .4byte 0x48000040 # b .L_802D8FE4
L_802D8FA8:
    lwz 4, 0x4(3)
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0x9
    .4byte 0x40820010 # bne .L_802D8FC8
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_802D8FD8
L_802D8FC8:
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0xd
    .4byte 0x4180000C # blt .L_802D8FE0
L_802D8FD8:
    li 0, 0x1
    .4byte 0x48000008 # b .L_802D8FE4
L_802D8FE0:
    li 0, 0x0
L_802D8FE4:
    clrlwi. 0, 0, 24
    .4byte 0x40820248 # bne .L_802D9230
    li 27, 0x0
L_802D8FF0:
    lwz 6, 0x14(26)
    cmpwi 6, 0x0
    .4byte 0x418000C4 # blt .L_802D90BC
    cmpwi 6, 0xa
    .4byte 0x408000BC # bge .L_802D90BC
    lwz 7, 0x18(26)
    cmpwi 7, 0x0
    .4byte 0x418000B0 # blt .L_802D90BC
    cmpwi 7, 0xa
    .4byte 0x408000A8 # bge .L_802D90BC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x8(26)
    lbz 0, 0x7f(3)
    lwz 4, 0x4(26)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802D904C
    lis 3, lbl_804A9530@ha
    slwi 4, 4, 4
    addi 3, 3, lbl_804A9530@l
    slwi 0, 5, 2
    add 3, 3, 4
    lwzx 5, 3, 0
    .4byte 0x48000008 # b .L_802D9050
L_802D904C:
    .4byte 0x38A2E188 # li r5, lbl_80541128@sda21
L_802D9050:
    mulli 0, 7, 0xa
    add 3, 0, 6
    addi 0, 3, 0x60
    lbzx 10, 26, 0
    cmpwi 10, 0xff
    .4byte 0x40820008 # bne .L_802D906C
    li 10, 0x0
L_802D906C:
    lis 4, 0x6666
    addis 3, 26, 0x1
    addi 0, 4, 0x6667
    addi 8, 27, 0x1
    mulhw 0, 0, 10
    addi 4, 30, 0x6bc
    srawi 7, 0, 2
    srawi 0, 0, 2
    srwi 6, 0, 31
    srwi 9, 7, 31
    add 0, 0, 6
    mulli 0, 0, 0xa
    add 6, 7, 9
    subf 7, 0, 10
    crclr 6
    addi 3, 3, 0x31fa
    bl fn_8006B334
    addis 29, 26, 0x1
    addi 29, 29, 0x31fa
    .4byte 0x48000008 # b .L_802D90C0
L_802D90BC:
    li 29, 0x0
L_802D90C0:
    lwz 6, 0x14(26)
    cmpwi 6, 0x0
    .4byte 0x418000C4 # blt .L_802D918C
    cmpwi 6, 0xa
    .4byte 0x408000BC # bge .L_802D918C
    lwz 7, 0x18(26)
    cmpwi 7, 0x0
    .4byte 0x418000B0 # blt .L_802D918C
    cmpwi 7, 0xa
    .4byte 0x408000A8 # bge .L_802D918C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x8(26)
    lbz 0, 0x7f(3)
    lwz 4, 0x4(26)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802D911C
    lis 3, lbl_804A9530@ha
    slwi 4, 4, 4
    addi 3, 3, lbl_804A9530@l
    slwi 0, 5, 2
    add 3, 3, 4
    lwzx 5, 3, 0
    .4byte 0x48000008 # b .L_802D9120
L_802D911C:
    .4byte 0x38A2E188 # li r5, lbl_80541128@sda21
L_802D9120:
    mulli 0, 7, 0xa
    add 3, 0, 6
    addi 0, 3, 0x60
    lbzx 10, 26, 0
    cmpwi 10, 0xff
    .4byte 0x40820008 # bne .L_802D913C
    li 10, 0x0
L_802D913C:
    lis 4, 0x6666
    addis 3, 26, 0x1
    addi 0, 4, 0x6667
    addi 8, 27, 0x1
    mulhw 0, 0, 10
    addi 4, 30, 0x6a0
    srawi 7, 0, 2
    srawi 0, 0, 2
    srwi 6, 0, 31
    srwi 9, 7, 31
    add 0, 0, 6
    mulli 0, 0, 0xa
    add 6, 7, 9
    subf 7, 0, 10
    crclr 6
    addi 3, 3, 0x321a
    bl fn_8006B334
    addis 25, 26, 0x1
    addi 25, 25, 0x321a
    .4byte 0x48000008 # b .L_802D9190
L_802D918C:
    li 25, 0x0
L_802D9190:
    cmplwi 29, 0x0
    .4byte 0x41820090 # beq .L_802D9224
    lwz 3, 0x10(31)
    mr 4, 28
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 29
    lwz 12, 0x0(3)
    lwz 29, 0x20(6)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr 4, 3
    mr 3, 29
    addi 6, 27, 0x8
    li 5, 0x0
    li 7, 0x0
    li 8, 0x0
    bl fn_802F99DC
    lwz 3, 0x10(31)
    mr 4, 28
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 25
    lwz 12, 0x0(3)
    lwz 25, 0x20(6)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr 4, 3
    mr 3, 25
    addi 6, 27, 0x10
    li 5, 0x0
    li 7, 0x0
    li 8, 0x0
    bl fn_802F99DC
    mr 3, 26
    addi 4, 27, 0x8
    bl fn_802D4CCC
L_802D9224:
    addi 27, 27, 0x1
    cmpwi 27, 0x7
    .4byte 0x4180FDC4 # blt .L_802D8FF0
L_802D9230:
    lwz 0, 0x14(26)
    lis 3, 0x4330
    lwz 4, 0x18(26)
    xoris 0, 0, 0x8000
    stw 3, 0x50(1)
    xoris 4, 4, 0x8000
    .4byte 0xC842E1B0 # lfd f2, lbl_80541150@sda21(r0)
    stw 0, 0x54(1)
    .4byte 0xC022E1A4 # lfs f1, lbl_80541144@sda21(r0)
    lfd 0, 0x50(1)
    stw 4, 0x4c(1)
    fsubs 0, 0, 2
    .4byte 0xC082E1A0 # lfs f4, lbl_80541140@sda21(r0)
    stw 3, 0x48(1)
    .4byte 0xC062E1A8 # lfs f3, lbl_80541148@sda21(r0)
    fmuls 5, 1, 0
    lfd 0, 0x48(1)
    fsubs 0, 0, 2
    stfs 5, 0xcc(26)
    fadds 1, 1, 5
    fmuls 0, 4, 0
    stfs 0, 0xd0(26)
    fadds 0, 4, 0
    stfs 1, 0xd4(26)
    stfs 0, 0xd8(26)
    lfs 1, 0xd4(26)
    lfs 0, 0xcc(26)
    lfs 2, 0xd8(26)
    fsubs 0, 1, 0
    lfs 1, 0xd0(26)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fsubs 1, 2, 1
    fmuls 0, 3, 0
    lwz 3, 0x20(3)
    fmuls 1, 3, 1
    fctiwz 0, 0
    fctiwz 1, 1
    stfd 0, 0x60(1)
    stfd 1, 0x58(1)
    lwz 0, 0x64(1)
    lwz 4, 0x5c(1)
    stw 0, 0x2380(3)
    stw 4, 0x2384(3)
    lmw 24, 0x70(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

.balign 4
.global fn_802D92F0

fn_802D92F0:
    stwu 1, -0x80(1)
    mflr 0
    lis 4, 0x5343
    lis 6, lbl_8046E148@ha
    stw 0, 0x84(1)
    addi 4, 4, 0x4820
    stw 31, 0x7c(1)
    addi 31, 6, lbl_8046E148@l
    stw 30, 0x78(1)
    mr 30, 3
    stw 29, 0x74(1)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xa4(5)
    addi 5, 31, 0x760
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x6000
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802FA160
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 31, 0x760
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x6000
    lwz 3, 0x20(6)
    li 6, 0x1
    li 8, 0x0
    bl fn_802FA160
    lwz 0, 0x40(30)
    cmpwi 0, 0x0
    .4byte 0x41800020 # blt .L_802D93C4
    cmpwi 0, 0x1c
    .4byte 0x40800018 # bge .L_802D93C4
    lis 3, lbl_804A9660@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_804A9660@l
    lwzx 29, 3, 0
    .4byte 0x48000008 # b .L_802D93C8
L_802D93C4:
    .4byte 0x3BA2E0CC # li r29, lbl_8054106C@sda21
L_802D93C8:
    lbz 0, 0x0(29)
    cmpwi 0, 0x75
    .4byte 0x4082001C # bne .L_802D93EC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f1(3)
L_802D93EC:
    mr 5, 29
    addi 3, 1, 0x48
    addi 4, 31, 0x770
    crclr 6
    bl fn_8006B334
    mr 5, 29
    addi 3, 1, 0x28
    addi 4, 31, 0x728
    crclr 6
    bl fn_8006B334
    mr 5, 29
    addi 3, 1, 0x8
    addi 4, 31, 0x74c
    crclr 6
    bl fn_8006B334
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 1, 0x48
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802FA160
    lbz 0, 0x0(29)
    cmpwi 0, 0x63
    .4byte 0x4082004C # bne .L_802D94C0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 31, 0x780
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x1
    li 8, 0x0
    bl fn_802FA160
    .4byte 0x48000048 # b .L_802D9504
L_802D94C0:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 1, 0x48
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x1
    li 8, 0x0
    bl fn_802FA160
L_802D9504:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 1, 0x28
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_802F9DA8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 1, 0x8
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_802F9DA8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 1, 0x8
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    li 9, 0x0
    bl fn_802F9DA8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5350
    addi 4, 3, 0x4c20
    addi 5, 31, 0x790
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    bl fn_802F9BE8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 31, 0x7a0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802F9714
    lwz 0, 0x44(30)
    cmpwi 0, 0x0
    .4byte 0x41800020 # blt .L_802D9688
    cmpwi 0, 0x10
    .4byte 0x40800018 # bge .L_802D9688
    lis 3, lbl_804A96D0@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_804A96D0@l
    lwzx 5, 3, 0
    .4byte 0x48000008 # b .L_802D968C
L_802D9688:
    .4byte 0x38A2E13C # li r5, lbl_805410DC@sda21
L_802D968C:
    addi 3, 1, 0x48
    addi 4, 31, 0x7b8
    crclr 6
    bl fn_8006B334
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 1, 0x48
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x7000
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x7d0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802D9740
    li 0, 0x0
    .4byte 0x48000040 # b .L_802D977C
L_802D9740:
    lwz 5, 0x4(4)
    lwz 3, 0xc(5)
    lwz 0, 0x4(3)
    cmpwi 0, 0x9
    .4byte 0x40820010 # bne .L_802D9760
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_802D9770
L_802D9760:
    lwz 3, 0xc(5)
    lwz 0, 0x4(3)
    cmpwi 0, 0xd
    .4byte 0x4180000C # blt .L_802D9778
L_802D9770:
    li 0, 0x1
    .4byte 0x48000008 # b .L_802D977C
L_802D9778:
    li 0, 0x0
L_802D977C:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_802D97CC
    lwz 3, 0xa4(4)
    lis 4, 0x5343
    addi 4, 4, 0x4820
    addi 5, 31, 0x7e8
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x1
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x48000044 # b .L_802D980C
L_802D97CC:
    lwz 3, 0xa4(4)
    lis 4, 0x5343
    addi 4, 4, 0x4820
    addi 5, 31, 0x7f8
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x1
    li 8, 0x0
    bl fn_802F9714
L_802D980C:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x7d0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 31, 0x808
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 31, 0x818
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x4000
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x7d0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 31, 0x828
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x3
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x7d0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x3
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x838
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x4
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x838
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x5
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x838
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x6
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x838
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x7
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x838
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x8
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x838
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x9
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x838
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0xa
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 31, 0x838
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0xb
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x2364(3)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

.balign 4
.global fn_802D9C1C

fn_802D9C1C:
    lwz 0, 0x44(3)
    cmpwi 0, 0x0
    .4byte 0x41800020 # blt .L_802D9C44
    cmpwi 0, 0x10
    .4byte 0x40800018 # bge .L_802D9C44
    lis 3, lbl_804A96D0@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_804A96D0@l
    lwzx 3, 3, 0
    blr
L_802D9C44:
    .4byte 0x3862E13C # li r3, lbl_805410DC@sda21
    blr

.balign 4
.global fn_802D9C4C

fn_802D9C4C:
    lwz 0, 0x40(3)
    cmpwi 0, 0x0
    .4byte 0x41800020 # blt .L_802D9C74
    cmpwi 0, 0x1c
    .4byte 0x40800018 # bge .L_802D9C74
    lis 3, lbl_804A9660@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_804A9660@l
    lwzx 3, 3, 0
    blr
L_802D9C74:
    .4byte 0x3862E0CC # li r3, lbl_8054106C@sda21
    blr

.balign 4
.global fn_802D9C7C

fn_802D9C7C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820020 # bne .L_802D9CA8
    lis 3, lbl_804A9530@ha
    slwi 4, 4, 4
    addi 3, 3, lbl_804A9530@l
    slwi 0, 5, 2
    add 3, 3, 4
    lwzx 3, 3, 0
    blr
L_802D9CA8:
    .4byte 0x3862E188 # li r3, lbl_80541128@sda21
    blr

.balign 4
.global fn_802D9CB0

fn_802D9CB0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C85C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.balign 4
.global fn_802D9CD8

fn_802D9CD8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_802D3D48
    li 5, 0x0
    mr 8, 5
    mr 9, 5
L_802D9CFC:
    mr 6, 8
    mr 7, 9
    li 4, 0x0
L_802D9D08:
    li 12, 0x0
    li 0, 0x8
    mr 11, 12
    mr 10, 12
    mtctr 0
L_802D9D1C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x4200FF30 # bdnz .L_802D9D1C
    li 0, 0x20
    li 3, 0x0
    mtctr 0
L_802D9DFC:
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    add 10, 10, 3
    addis 10, 10, 0x1
    subi 10, 10, 0x6698
    stbx 0, 7, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    add 10, 10, 3
    addis 10, 10, 0x1
    subi 10, 10, 0x6697
    stbx 0, 7, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    add 10, 10, 3
    addis 10, 10, 0x1
    subi 10, 10, 0x6696
    stbx 0, 7, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    add 10, 10, 3
    addis 10, 10, 0x1
    subi 10, 10, 0x6695
    stbx 0, 7, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    add 10, 10, 3
    addis 10, 10, 0x1
    subi 10, 10, 0x6694
    stbx 0, 7, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    add 10, 10, 3
    addis 10, 10, 0x1
    subi 10, 10, 0x6693
    stbx 0, 7, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    add 10, 10, 3
    addis 10, 10, 0x1
    subi 10, 10, 0x6692
    stbx 0, 7, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    add 10, 10, 3
    addi 3, 3, 0x8
    addis 10, 10, 0x1
    subi 10, 10, 0x6691
    stbx 0, 7, 10
    .4byte 0x4200FF18 # bdnz .L_802D9DFC
    addi 4, 4, 0x1
    addi 7, 7, 0x100
    cmpwi 4, 0xa
    addi 6, 6, 0x80
    .4byte 0x4180FE10 # blt .L_802D9D08
    addi 5, 5, 0x1
    addi 9, 9, 0xa00
    cmpwi 5, 0xa
    addi 8, 8, 0x500
    .4byte 0x4180FDF0 # blt .L_802D9CFC
    bl SpatialRegistry_GetBase
    bl fn_801F7B18
    bl fn_8016A3AC
    bl fn_8016A330
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    bl fn_80158B3C
    mr 3, 31
    bl fn_802D92F0
    mr 3, 31
    li 4, 0x0
    bl fn_802D8D50
    mr 3, 31
    li 4, 0x1
    li 5, 0x0
    bl fn_802D8328
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    lwz 3, 0x24(3)
    lfs 1, 0xcc(31)
    stfs 0, 0x10(1)
    stfs 1, 0x154(3)
    lfs 1, 0xd0(31)
    stfs 1, 0x158(3)
    lfs 1, 0xd4(31)
    stfs 1, 0x15c(3)
    lfs 1, 0xd8(31)
    stfs 1, 0x160(3)
    lfs 2, 0xd0(31)
    lfs 1, 0xcc(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x8(1)
    lwz 3, 0x20(3)
    stfs 2, 0xc(1)
    addi 3, 3, 0x2368
    psq_l 1, 0x8(1), 0, 0
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.balign 4
.global fn_802D9FBC

fn_802D9FBC:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802D9FDC
    lis 4, 0x1
    subi 0, 4, 0x7360
    stw 0, 0xc4(3)
    blr
L_802D9FDC:
    li 0, 0x2a30
    stw 0, 0xc4(3)
    blr

.balign 4
.global fn_802D9FE8

fn_802D9FE8:
    stw 4, 0x1c(3)
    stw 5, 0x20(3)
    blr

.balign 4
.global fn_802D9FF4

fn_802D9FF4:
    stw 4, 0x24(3)
    stw 5, 0x28(3)
    blr

.balign 4
.global fn_802DA000

fn_802DA000:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 3, 0x1e8(3)
    blr

.balign 4
.global fn_802DA010

fn_802DA010:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lwz 0, 0x24(3)
    stw 0, 0x14(3)
    lwz 0, 0x28(3)
    stw 0, 0x18(3)
    bl SpatialRegistry_GetBase
    bl fn_801F7E88
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31ef(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DA088
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7c(4)
    .4byte 0x4800001C # b .L_802DA0A0
L_802DA088:
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7d(4)
L_802DA0A0:
    clrlwi 4, 4, 24
    subfic 4, 4, 0x1
    cntlzw 4, 4
    extrwi 4, 4, 8, 19
    cmplwi 4, 0x1
    .4byte 0x408200C0 # bne .L_802DA174
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DA0DC
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7c(4)
    .4byte 0x4800001C # b .L_802DA0F4
L_802DA0DC:
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7d(4)
L_802DA0F4:
    clrlwi 4, 4, 24
    cmplwi 4, 0x1
    .4byte 0x4182001C # beq .L_802DA118
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000074 # b .L_802DA188
L_802DA118:
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_802DA15C
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802DA144
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000048 # b .L_802DA188
L_802DA144:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000030 # b .L_802DA188
L_802DA15C:
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000018 # b .L_802DA188
L_802DA174:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
L_802DA188:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 0, 0x2
    lwz 4, 0x18(31)
    li 3, 0x0
    lwz 6, 0x4(5)
    mulli 5, 4, 0x28
    lwz 4, 0x14(31)
    lwz 6, 0xc(6)
    slwi 4, 4, 2
    add 5, 6, 5
    add 5, 5, 4
    lwz 4, 0x178(5)
    clrrwi 4, 4, 16
    stw 4, 0x178(5)
    mtctr 0
L_802DA1C4:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 3, 0x308
    li 0, 0x0
    addi 3, 3, 0x8
    lwz 5, 0x4(5)
    addi 10, 4, 0x1
    addi 9, 4, 0x2
    addi 8, 4, 0x3
    lwz 11, 0xc(5)
    addi 7, 4, 0x4
    addi 6, 4, 0x5
    addi 5, 4, 0x6
    stbx 0, 11, 4
    addi 4, 4, 0x7
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 11, 0xc(11)
    stbx 0, 11, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    stbx 0, 10, 9
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 9, 0x4(9)
    lwz 9, 0xc(9)
    stbx 0, 9, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    stbx 0, 8, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    stbx 0, 7, 6
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 6, 0x4(6)
    lwz 6, 0xc(6)
    stbx 0, 6, 5
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stbx 0, 5, 4
    .4byte 0x4200FF58 # bdnz .L_802DA1C4
    li 3, 0x8
    mr 7, 0
    mr 8, 0
    li 6, 0xff
    mtctr 3
L_802DA284:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addis 3, 8, 0x1
    addi 5, 7, 0x328
    addi 8, 8, 0x4
    lwz 4, 0x4(4)
    addi 3, 3, 0x2f68
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x329
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x32a
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x32b
    addi 7, 7, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    .4byte 0x4200FF3C # bdnz .L_802DA284
    li 3, 0x0
    mr 5, 3
    mr 6, 3
L_802DA358:
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    addi 7, 5, 0x6748
    li 0, 0x8
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    stwx 4, 8, 7
    mtctr 0
L_802DA378:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2948
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294a
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294c
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294e
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2950
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2952
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2954
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 4, 4, 0x10
    addi 7, 7, 0x2956
    sthx 0, 6, 7
    .4byte 0x4200FF38 # bdnz .L_802DA378
    addi 3, 3, 0x1
    addi 6, 6, 0x80
    cmpwi 3, 0x8
    addi 5, 5, 0x4
    .4byte 0x4180FF04 # blt .L_802DA358
    bl fn_8038D454
    mr 3, 31
    li 4, 0x0
    bl fn_802D8D50
    bl SpatialRegistry_GetBase
    bl fn_801F7B18
    bl SpatialRegistry_GetBase
    li 4, 0x0
    bl fn_801F6204
    bl fn_80308D0C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802DA4A0
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x4800000C # b .L_802DA4A8
L_802DA4A0:
    li 0, 0x2a30
    stw 0, 0xc4(31)
L_802DA4A8:
    bl fn_8013C824
    bl fn_8013C8CC
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046E148@ha
    addi 29, 3, lbl_8046E148@l
    li 30, 0x0
    lwz 4, 0x4(4)
    lwz 3, 0xc(4)
    addis 3, 3, 0x1
    stb 30, 0x31de(3)
L_802DA4D0:
    lfs 2, 0x0(29)
    mr 3, 30
    lfs 1, 0x4(29)
    addi 4, 1, 0x8
    lfs 0, 0x8(29)
    li 5, 0x2
    stfs 2, 0x8(1)
    li 6, 0x0
    li 7, 0x0
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lfs 0, 0xcc(31)
    fadds 0, 2, 0
    stfs 0, 0x8(1)
    lfs 0, 0xd0(31)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    bl fn_8023F1D4
    addi 30, 30, 0x1
    addi 29, 29, 0xc
    cmpwi 30, 0x4
    .4byte 0x4180FFAC # blt .L_802DA4D0
    bl fn_8022BD70
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_802D8328
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    li 3, 0x0
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    lwz 4, 0x24(4)
    lfs 1, 0xcc(31)
    stfs 0, 0x1c(1)
    stfs 1, 0x154(4)
    lfs 1, 0xd0(31)
    stfs 1, 0x158(4)
    lfs 1, 0xd4(31)
    stfs 1, 0x15c(4)
    lfs 1, 0xd8(31)
    stfs 1, 0x160(4)
    lfs 2, 0xd0(31)
    lfs 1, 0xcc(31)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    stfs 1, 0x14(1)
    lwz 4, 0x20(4)
    stfs 2, 0x18(1)
    addi 4, 4, 0x2368
    psq_l 1, 0x14(1), 0, 0
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x8(4)
    bl fn_8023E724
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(4)
    lbz 0, 0x840(4)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_802DA5EC
    li 0, 0x1
    .4byte 0xC022E1B8 # lfs f1, lbl_80541158@sda21(r0)
    stb 0, 0x840(4)
    .4byte 0xC002E1BC # lfs f0, lbl_8054115C@sda21(r0)
    lfs 2, 0x0(3)
    stfs 2, 0x84c(4)
    stfs 2, 0x844(4)
    lfs 2, 0x4(3)
    stfs 2, 0x850(4)
    stfs 2, 0x848(4)
    stfs 1, 0x854(4)
    stfs 0, 0x1d4(4)
    stfs 0, 0x1d8(4)
L_802DA5EC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802DA60C
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x4800000C # b .L_802DA614
L_802DA60C:
    li 0, 0x2a30
    stw 0, 0xc4(31)
L_802DA614:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

.balign 4
.global fn_802DA630

fn_802DA630:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(4)
    lbz 31, 0x1e8(4)
    cmplwi 31, 0x0
    .4byte 0x408200F8 # bne .L_802DA75C
    lwz 0, 0x2c(3)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_802DA67C
    .4byte 0xC3E2E1C0 # lfs f31, lbl_80541160@sda21(r0)
    .4byte 0x48000008 # b .L_802DA680
L_802DA67C:
    .4byte 0xC3E2E1C4 # lfs f31, lbl_80541164@sda21(r0)
L_802DA680:
    li 28, 0x0
L_802DA684:
    mr 3, 28
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 1, 0x8(3)
    mr 3, 28
    psq_st 0, 0x8(1), 0, 0
    lfs 0, 0x8(1)
    stfs 1, 0x10(1)
    fadds 0, 0, 31
    stfs 0, 0x8(1)
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    mr 3, 28
    addi 4, 1, 0x8
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFAC # blt .L_802DA684
    bl SpatialRegistry_GetBase
    li 28, 0x0
    lwz 30, 0x1008(3)
    mr 29, 28
    .4byte 0x48000068 # b .L_802DA754
L_802DA6F0:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4182004C # beq .L_802DA74C
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x4f53
    cmplwi 0, 0x494e
    .4byte 0x4082003C # bne .L_802DA74C
    lwz 0, 0x230(4)
    cmpwi 0, 0x2
    .4byte 0x40820030 # bne .L_802DA74C
    psq_l 0, 0xc(4), 0, 0
    lfs 1, 0x14(4)
    psq_st 0, 0x8(1), 0, 0
    lfs 0, 0x8(1)
    stfs 1, 0x10(1)
    fadds 0, 0, 31
    stfs 0, 0x8(1)
    psq_l 0, 0x8(1), 0, 0
    psq_st 0, 0xc(4), 0, 0
    stfs 1, 0x14(4)
    .4byte 0x48000014 # b .L_802DA75C
L_802DA74C:
    addi 29, 29, 0x4
    addi 28, 28, 0x1
L_802DA754:
    cmpw 28, 30
    .4byte 0x4180FF98 # blt .L_802DA6F0
L_802DA75C:
    mr 3, 31
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

.balign 4
.global fn_802DA788

fn_802DA788:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lwz 3, 0x14(3)
    lwz 0, 0x1c(31)
    cmpw 3, 0
    .4byte 0x40800018 # bge .L_802DA7C8
    li 3, 0x1
    li 0, 0x0
    stw 3, 0x2c(31)
    stw 0, 0x30(31)
    .4byte 0x48000014 # b .L_802DA7D8
L_802DA7C8:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x2c(31)
    stw 0, 0x30(31)
L_802DA7D8:
    addi 3, 31, 0x2c
    bl fn_802DEDFC
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_802DA8C0
    bl fn_8038D454
    bl SpatialRegistry_GetBase
    bl fn_801F7CAC
    bl SpatialRegistry_GetBase
    li 4, 0x0
    bl fn_801F6204
    bl fn_80308D0C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31de(3)
    bl fn_8013C824
    bl fn_8013C8CC
    li 30, 0x0
    lis 3, lbl_8046E148@ha
    stb 30, 0xc9(31)
    addi 29, 3, lbl_8046E148@l
L_802DA834:
    lfs 2, 0x0(29)
    mr 3, 30
    lfs 1, 0x4(29)
    addi 4, 1, 0x8
    lfs 0, 0x8(29)
    li 5, 0x2
    stfs 2, 0x8(1)
    li 6, 0x0
    li 7, 0x0
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lfs 0, 0xcc(31)
    fadds 0, 2, 0
    stfs 0, 0x8(1)
    lfs 0, 0xd0(31)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    bl fn_8023F1D4
    addi 30, 30, 0x1
    addi 29, 29, 0xc
    cmpwi 30, 0x4
    .4byte 0x4180FFAC # blt .L_802DA834
    bl fn_8022BD70
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802DA8B8
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x4800000C # b .L_802DA8C0
L_802DA8B8:
    li 0, 0x2a30
    stw 0, 0xc4(31)
L_802DA8C0:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

.balign 4
.global fn_802DA8DC

fn_802DA8DC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lwz 0, 0x24(3)
    stw 0, 0x14(3)
    lwz 0, 0x28(3)
    stw 0, 0x18(3)
    bl SpatialRegistry_GetBase
    bl fn_801F7E88
    bl fn_802DEE2C
    li 4, 0x0
    mr 6, 4
L_802DA91C:
    li 0, 0xa
    li 5, 0x0
    mtctr 0
L_802DA928:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 3, 0x0
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1048
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1050
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1058
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1060
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1068
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1070
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1078
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 5, 5, 0x40
    addi 0, 7, 0x1080
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x4200FEF8 # bdnz .L_802DA928
    addi 4, 4, 0x1
    addi 6, 6, 0x280
    cmpwi 4, 0xa
    .4byte 0x4180FEDC # blt .L_802DA91C
    mr 6, 3
L_802DAA48:
    li 0, 0x8
    li 5, 0x0
    mtctr 0
L_802DAA54:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2948
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x294a
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x294c
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x294e
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2950
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2952
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2954
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 5, 5, 0x10
    addi 0, 7, 0x2956
    sthx 4, 6, 0
    .4byte 0x4200FF38 # bdnz .L_802DAA54
    addi 3, 3, 0x1
    addi 6, 6, 0x80
    cmpwi 3, 0x8
    .4byte 0x4180FF1C # blt .L_802DAA48
    mr 6, 4
L_802DAB34:
    li 0, 0x10
    li 3, 0x0
    mtctr 0
L_802DAB40:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 5, 0x0
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d48
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d4c
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d50
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d54
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d58
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d5c
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d60
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 3, 3, 0x20
    addi 0, 7, 0x2d64
    stwx 5, 6, 0
    .4byte 0x4200FF38 # bdnz .L_802DAB40
    addi 4, 4, 0x1
    addi 6, 6, 0x200
    cmpwi 4, 0x4
    .4byte 0x4180FF1C # blt .L_802DAB34
    mr 8, 5
    mr 9, 5
L_802DAC24:
    mr 6, 8
    mr 7, 9
    li 4, 0x0
L_802DAC30:
    li 12, 0x0
    li 0, 0x8
    mr 11, 12
    mr 10, 12
    mtctr 0
L_802DAC44:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x4200FF30 # bdnz .L_802DAC44
    li 0, 0x20
    li 3, 0x0
    mtctr 0
L_802DAD24:
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    li 10, 0x0
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6698
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6697
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6696
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6695
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6694
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6693
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6692
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addi 3, 3, 0x8
    addis 11, 11, 0x1
    subi 11, 11, 0x6691
    stbx 10, 7, 11
    .4byte 0x4200FF18 # bdnz .L_802DAD24
    addi 4, 4, 0x1
    addi 7, 7, 0x100
    cmpwi 4, 0xa
    addi 6, 6, 0x80
    .4byte 0x4180FE10 # blt .L_802DAC30
    addi 5, 5, 0x1
    addi 9, 9, 0xa00
    cmpwi 5, 0xa
    addi 8, 8, 0x500
    .4byte 0x4180FDF0 # blt .L_802DAC24
    li 0, 0x4
    mr 8, 10
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    mtctr 0
L_802DAE48:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addis 6, 10, 0x1
    mr 4, 6
    addis 7, 8, 0x1
    lwz 5, 0x4(5)
    li 3, 0x0
    addi 6, 6, 0x3068
    addi 7, 7, 0x3088
    lwz 5, 0xc(5)
    li 0, -0x1
    addi 4, 4, 0x30c8
    addi 10, 10, 0x4
    stwx 3, 5, 6
    addis 6, 10, 0x1
    addi 8, 8, 0x8
    addi 10, 10, 0x4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    add 7, 5, 7
    stfs 0, 0x0(7)
    stfs 0, 0x4(7)
    addis 7, 8, 0x1
    addi 7, 7, 0x3088
    addi 8, 8, 0x8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 0, 5, 4
    mr 4, 6
    addi 6, 6, 0x3068
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 4, 0x30c8
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 3, 5, 6
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    add 7, 5, 7
    stfs 0, 0x0(7)
    stfs 0, 0x4(7)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 0, 5, 4
    .4byte 0x4200FF48 # bdnz .L_802DAE48
    li 0, 0x4
    mr 10, 3
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    mtctr 0
L_802DAF14:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addis 8, 3, 0x1
    mr 9, 8
    addis 6, 10, 0x1
    lwz 5, 0x4(5)
    mr 4, 6
    addi 8, 8, 0x30e8
    li 7, -0x1
    lwz 0, 0xc(5)
    addi 6, 6, 0x3128
    addi 9, 9, 0x3148
    addi 4, 4, 0x3188
    add 8, 0, 8
    addi 3, 3, 0x8
    stfs 0, 0x0(8)
    addi 10, 10, 0x4
    stfs 0, 0x4(8)
    addis 8, 3, 0x1
    addi 3, 3, 0x8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 6
    addis 6, 10, 0x1
    addi 10, 10, 0x4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 0, 0xc(5)
    add 9, 0, 9
    stfs 0, 0x0(9)
    stfs 0, 0x4(9)
    mr 9, 8
    addi 8, 8, 0x30e8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 9, 9, 0x3148
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 4
    mr 4, 6
    addi 6, 6, 0x3128
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 4, 0x3188
    lwz 5, 0x4(5)
    lwz 0, 0xc(5)
    add 8, 0, 8
    stfs 0, 0x0(8)
    stfs 0, 0x4(8)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 6
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 0, 0xc(5)
    add 9, 0, 9
    stfs 0, 0x0(9)
    stfs 0, 0x4(9)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 4
    .4byte 0x4200FF0C # bdnz .L_802DAF14
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 5, 0x1
    li 4, 0x0
    li 0, 0x2
    lwz 3, 0x4(3)
    mr 6, 31
    li 7, 0x0
    lwz 3, 0xc(3)
    stb 5, 0x171(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 4, 0x174(3)
    mtctr 0
L_802DB044:
    addis 3, 6, 0x1
    addis 5, 7, 0x1
    addi 5, 5, 0x31df
    sth 4, 0x31b8(3)
    add 5, 31, 5
    addi 6, 6, 0x10
    stb 4, 0x0(5)
    addi 7, 7, 0x8
    sth 4, 0x31ba(3)
    stb 4, 0x1(5)
    sth 4, 0x31bc(3)
    stb 4, 0x2(5)
    sth 4, 0x31be(3)
    stb 4, 0x3(5)
    sth 4, 0x31c0(3)
    stb 4, 0x4(5)
    sth 4, 0x31c2(3)
    stb 4, 0x5(5)
    sth 4, 0x31c4(3)
    stb 4, 0x6(5)
    sth 4, 0x31c6(3)
    stb 4, 0x7(5)
    .4byte 0x4200FFA8 # bdnz .L_802DB044
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 4, 0x31de(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 4, 0x31ef(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DB0F4
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7c(4)
    .4byte 0x4800001C # b .L_802DB10C
L_802DB0F4:
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7d(4)
L_802DB10C:
    clrlwi 4, 4, 24
    subfic 4, 4, 0x1
    cntlzw 4, 4
    extrwi 4, 4, 8, 19
    cmplwi 4, 0x1
    .4byte 0x408200C0 # bne .L_802DB1E0
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DB148
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7c(4)
    .4byte 0x4800001C # b .L_802DB160
L_802DB148:
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7d(4)
L_802DB160:
    clrlwi 4, 4, 24
    cmplwi 4, 0x1
    .4byte 0x4182001C # beq .L_802DB184
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000074 # b .L_802DB1F4
L_802DB184:
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_802DB1C8
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802DB1B0
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000048 # b .L_802DB1F4
L_802DB1B0:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000030 # b .L_802DB1F4
L_802DB1C8:
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000018 # b .L_802DB1F4
L_802DB1E0:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
L_802DB1F4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 3, 0x0
    li 0, 0x2
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    addis 4, 4, 0x1
    stb 3, 0x31f1(4)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    addis 4, 4, 0x1
    stb 3, 0x31f2(4)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    addis 4, 4, 0x1
    stb 3, 0x31f3(4)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x18(31)
    lwz 6, 0x4(5)
    mulli 5, 4, 0x28
    lwz 4, 0x14(31)
    lwz 6, 0xc(6)
    slwi 4, 4, 2
    add 5, 6, 5
    add 5, 5, 4
    lwz 4, 0x178(5)
    clrrwi 4, 4, 16
    stw 4, 0x178(5)
    mtctr 0
L_802DB26C:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 3, 0x308
    li 0, 0x0
    addi 3, 3, 0x8
    lwz 5, 0x4(5)
    addi 10, 4, 0x1
    addi 9, 4, 0x2
    addi 8, 4, 0x3
    lwz 11, 0xc(5)
    addi 7, 4, 0x4
    addi 6, 4, 0x5
    addi 5, 4, 0x6
    stbx 0, 11, 4
    addi 4, 4, 0x7
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 11, 0xc(11)
    stbx 0, 11, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    stbx 0, 10, 9
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 9, 0x4(9)
    lwz 9, 0xc(9)
    stbx 0, 9, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    stbx 0, 8, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    stbx 0, 7, 6
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 6, 0x4(6)
    lwz 6, 0xc(6)
    stbx 0, 6, 5
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stbx 0, 5, 4
    .4byte 0x4200FF58 # bdnz .L_802DB26C
    li 3, 0x8
    mr 7, 0
    mr 8, 0
    li 6, 0xff
    mtctr 3
L_802DB32C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addis 3, 8, 0x1
    addi 5, 7, 0x328
    addi 8, 8, 0x4
    lwz 4, 0x4(4)
    addi 3, 3, 0x2f68
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x329
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x32a
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x32b
    addi 7, 7, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    .4byte 0x4200FF3C # bdnz .L_802DB32C
    li 3, 0x0
    mr 5, 3
    mr 6, 3
L_802DB400:
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    addi 7, 5, 0x6748
    li 0, 0x8
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    stwx 4, 8, 7
    mtctr 0
L_802DB420:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2948
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294a
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294c
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294e
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2950
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2952
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2954
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 4, 4, 0x10
    addi 7, 7, 0x2956
    sthx 0, 6, 7
    .4byte 0x4200FF38 # bdnz .L_802DB420
    addi 3, 3, 0x1
    addi 6, 6, 0x80
    cmpwi 3, 0x8
    addi 5, 5, 0x4
    .4byte 0x4180FF04 # blt .L_802DB400
    bl fn_8038D454
    mr 3, 31
    li 4, 0x0
    bl fn_802D8D50
    bl SpatialRegistry_GetBase
    bl fn_801F7B18
    bl SpatialRegistry_GetBase
    li 4, 0x0
    bl fn_801F6204
    bl fn_80308D0C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802DB548
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x4800000C # b .L_802DB550
L_802DB548:
    li 0, 0x2a30
    stw 0, 0xc4(31)
L_802DB550:
    bl fn_8013C824
    bl fn_8013C8CC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31de(3)
    bl fn_8023F78C
    bl fn_8023F728
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D834
    lis 3, lbl_8046E148@ha
    li 30, 0x0
    addi 29, 3, lbl_8046E148@l
L_802DB58C:
    lfs 2, 0x0(29)
    mr 3, 30
    lfs 1, 0x4(29)
    addi 4, 1, 0x8
    lfs 0, 0x8(29)
    li 5, 0x2
    stfs 2, 0x8(1)
    li 6, 0x0
    li 7, 0x0
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lfs 0, 0xcc(31)
    fadds 0, 2, 0
    stfs 0, 0x8(1)
    lfs 0, 0xd0(31)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    bl fn_8023F1D4
    addi 30, 30, 0x1
    addi 29, 29, 0xc
    cmpwi 30, 0x4
    .4byte 0x4180FFAC # blt .L_802DB58C
    bl fn_8022BD70
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_802D8328
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    lwz 3, 0x24(3)
    lfs 1, 0xcc(31)
    stfs 0, 0x1c(1)
    stfs 1, 0x154(3)
    lfs 1, 0xd0(31)
    stfs 1, 0x158(3)
    lfs 1, 0xd4(31)
    stfs 1, 0x15c(3)
    lfs 1, 0xd8(31)
    stfs 1, 0x160(3)
    lfs 2, 0xd0(31)
    lfs 1, 0xcc(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x14(1)
    lwz 3, 0x20(3)
    stfs 2, 0x18(1)
    addi 3, 3, 0x2368
    psq_l 1, 0x14(1), 0, 0
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802DB678
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x4800000C # b .L_802DB680
L_802DB678:
    li 0, 0x2a30
    stw 0, 0xc4(31)
L_802DB680:
    bl fn_8023F78C
    li 3, 0x0
    bl fn_8023E724
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(4)
    lbz 0, 0x840(4)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_802DB6D4
    li 0, 0x1
    .4byte 0xC022E1B8 # lfs f1, lbl_80541158@sda21(r0)
    stb 0, 0x840(4)
    .4byte 0xC002E1BC # lfs f0, lbl_8054115C@sda21(r0)
    lfs 2, 0x0(3)
    stfs 2, 0x84c(4)
    stfs 2, 0x844(4)
    lfs 2, 0x4(3)
    stfs 2, 0x850(4)
    stfs 2, 0x848(4)
    stfs 1, 0x854(4)
    stfs 0, 0x1d4(4)
    stfs 0, 0x1d8(4)
L_802DB6D4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

.balign 4
.global fn_802DB6F0

fn_802DB6F0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lwz 0, 0x24(3)
    stw 0, 0x14(3)
    lwz 0, 0x28(3)
    stw 0, 0x18(3)
    bl SpatialRegistry_GetBase
    bl fn_801F7E88
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31ef(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DB768
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7c(4)
    .4byte 0x4800001C # b .L_802DB780
L_802DB768:
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7d(4)
L_802DB780:
    clrlwi 4, 4, 24
    subfic 4, 4, 0x1
    cntlzw 4, 4
    extrwi 4, 4, 8, 19
    cmplwi 4, 0x1
    .4byte 0x408200C0 # bne .L_802DB854
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DB7BC
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7c(4)
    .4byte 0x4800001C # b .L_802DB7D4
L_802DB7BC:
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7d(4)
L_802DB7D4:
    clrlwi 4, 4, 24
    cmplwi 4, 0x1
    .4byte 0x4182001C # beq .L_802DB7F8
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000074 # b .L_802DB868
L_802DB7F8:
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_802DB83C
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802DB824
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000048 # b .L_802DB868
L_802DB824:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000030 # b .L_802DB868
L_802DB83C:
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000018 # b .L_802DB868
L_802DB854:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
L_802DB868:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 0, 0x2
    lwz 4, 0x18(31)
    li 3, 0x0
    lwz 6, 0x4(5)
    mulli 5, 4, 0x28
    lwz 4, 0x14(31)
    lwz 6, 0xc(6)
    slwi 4, 4, 2
    add 5, 6, 5
    add 5, 5, 4
    lwz 4, 0x178(5)
    clrrwi 4, 4, 16
    stw 4, 0x178(5)
    mtctr 0
L_802DB8A4:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 3, 0x308
    li 0, 0x0
    addi 3, 3, 0x8
    lwz 5, 0x4(5)
    addi 10, 4, 0x1
    addi 9, 4, 0x2
    addi 8, 4, 0x3
    lwz 11, 0xc(5)
    addi 7, 4, 0x4
    addi 6, 4, 0x5
    addi 5, 4, 0x6
    stbx 0, 11, 4
    addi 4, 4, 0x7
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 11, 0xc(11)
    stbx 0, 11, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    stbx 0, 10, 9
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 9, 0x4(9)
    lwz 9, 0xc(9)
    stbx 0, 9, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    stbx 0, 8, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    stbx 0, 7, 6
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 6, 0x4(6)
    lwz 6, 0xc(6)
    stbx 0, 6, 5
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stbx 0, 5, 4
    .4byte 0x4200FF58 # bdnz .L_802DB8A4
    li 3, 0x8
    mr 7, 0
    mr 8, 0
    li 6, 0xff
    mtctr 3
L_802DB964:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addis 3, 8, 0x1
    addi 5, 7, 0x328
    addi 8, 8, 0x4
    lwz 4, 0x4(4)
    addi 3, 3, 0x2f68
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x329
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x32a
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x32b
    addi 7, 7, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    .4byte 0x4200FF3C # bdnz .L_802DB964
    li 3, 0x0
    mr 5, 3
    mr 6, 3
L_802DBA38:
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    addi 7, 5, 0x6748
    li 0, 0x8
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    stwx 4, 8, 7
    mtctr 0
L_802DBA58:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2948
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294a
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294c
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294e
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2950
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2952
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2954
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 4, 4, 0x10
    addi 7, 7, 0x2956
    sthx 0, 6, 7
    .4byte 0x4200FF38 # bdnz .L_802DBA58
    addi 3, 3, 0x1
    addi 6, 6, 0x80
    cmpwi 3, 0x8
    addi 5, 5, 0x4
    .4byte 0x4180FF04 # blt .L_802DBA38
    bl fn_8038D454
    mr 3, 31
    li 4, 0x0
    bl fn_802D8D50
    bl SpatialRegistry_GetBase
    bl fn_801F7B18
    bl SpatialRegistry_GetBase
    li 4, 0x0
    bl fn_801F6204
    bl fn_80308D0C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802DBB80
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x4800000C # b .L_802DBB88
L_802DBB80:
    li 0, 0x2a30
    stw 0, 0xc4(31)
L_802DBB88:
    bl fn_8013C824
    bl fn_8013C8CC
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046E148@ha
    addi 29, 3, lbl_8046E148@l
    li 30, 0x0
    lwz 4, 0x4(4)
    lwz 3, 0xc(4)
    addis 3, 3, 0x1
    stb 30, 0x31de(3)
L_802DBBB0:
    lfs 2, 0x0(29)
    mr 3, 30
    lfs 1, 0x4(29)
    addi 4, 1, 0x8
    lfs 0, 0x8(29)
    li 5, 0x2
    stfs 2, 0x8(1)
    li 6, 0x0
    li 7, 0x0
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lfs 0, 0xcc(31)
    fadds 0, 2, 0
    stfs 0, 0x8(1)
    lfs 0, 0xd0(31)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    bl fn_8023F1D4
    addi 30, 30, 0x1
    addi 29, 29, 0xc
    cmpwi 30, 0x4
    .4byte 0x4180FFAC # blt .L_802DBBB0
    bl fn_8022BD70
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_802D8328
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    lwz 3, 0x24(3)
    lfs 1, 0xcc(31)
    stfs 0, 0x1c(1)
    stfs 1, 0x154(3)
    lfs 1, 0xd0(31)
    stfs 1, 0x158(3)
    lfs 1, 0xd4(31)
    stfs 1, 0x15c(3)
    lfs 1, 0xd8(31)
    stfs 1, 0x160(3)
    lfs 2, 0xd0(31)
    lfs 1, 0xcc(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x14(1)
    lwz 3, 0x20(3)
    stfs 2, 0x18(1)
    addi 3, 3, 0x2368
    psq_l 1, 0x14(1), 0, 0
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802DBC9C
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x4800000C # b .L_802DBCA4
L_802DBC9C:
    li 0, 0x2a30
    stw 0, 0xc4(31)
L_802DBCA4:
    li 29, 0x0
L_802DBCA8:
    mr 3, 29
    bl fn_8023BCD4
    mr 30, 3
    mr 3, 29
    bl fn_8023CBC0
    clrlwi 31, 3, 16
    mr 3, 29
    bl fn_8023E604
    mr 4, 3
    mr 3, 29
    mr 5, 31
    mr 6, 30
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFB8 # blt .L_802DBCA8
    li 3, 0x0
    bl fn_8023E604
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(4)
    lbz 0, 0x840(4)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_802DBD44
    li 0, 0x1
    .4byte 0xC022E1B8 # lfs f1, lbl_80541158@sda21(r0)
    stb 0, 0x840(4)
    .4byte 0xC002E1BC # lfs f0, lbl_8054115C@sda21(r0)
    lfs 2, 0x0(3)
    stfs 2, 0x84c(4)
    stfs 2, 0x844(4)
    lfs 2, 0x4(3)
    stfs 2, 0x850(4)
    stfs 2, 0x848(4)
    stfs 1, 0x854(4)
    stfs 0, 0x1d4(4)
    stfs 0, 0x1d8(4)
L_802DBD44:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

.balign 4
.global fn_802DBD60

fn_802DBD60:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    lwz 0, 0x24(3)
    stw 0, 0x14(3)
    lwz 0, 0x28(3)
    stw 0, 0x18(3)
    bl SpatialRegistry_GetBase
    bl fn_801F7E88
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31ef(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DBDD8
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7c(4)
    .4byte 0x4800001C # b .L_802DBDF0
L_802DBDD8:
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7d(4)
L_802DBDF0:
    clrlwi 4, 4, 24
    subfic 4, 4, 0x1
    cntlzw 4, 4
    extrwi 4, 4, 8, 19
    cmplwi 4, 0x1
    .4byte 0x408200C0 # bne .L_802DBEC4
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DBE2C
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7c(4)
    .4byte 0x4800001C # b .L_802DBE44
L_802DBE2C:
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7d(4)
L_802DBE44:
    clrlwi 4, 4, 24
    cmplwi 4, 0x1
    .4byte 0x4182001C # beq .L_802DBE68
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000074 # b .L_802DBED8
L_802DBE68:
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_802DBEAC
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802DBE94
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000048 # b .L_802DBED8
L_802DBE94:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000030 # b .L_802DBED8
L_802DBEAC:
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000018 # b .L_802DBED8
L_802DBEC4:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
L_802DBED8:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 0, 0x2
    lwz 4, 0x18(31)
    li 3, 0x0
    lwz 6, 0x4(5)
    mulli 5, 4, 0x28
    lwz 4, 0x14(31)
    lwz 6, 0xc(6)
    slwi 4, 4, 2
    add 5, 6, 5
    add 5, 5, 4
    lwz 4, 0x178(5)
    clrrwi 4, 4, 16
    stw 4, 0x178(5)
    mtctr 0
L_802DBF14:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 3, 0x308
    li 0, 0x0
    addi 3, 3, 0x8
    lwz 5, 0x4(5)
    addi 10, 4, 0x1
    addi 9, 4, 0x2
    addi 8, 4, 0x3
    lwz 11, 0xc(5)
    addi 7, 4, 0x4
    addi 6, 4, 0x5
    addi 5, 4, 0x6
    stbx 0, 11, 4
    addi 4, 4, 0x7
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 11, 0xc(11)
    stbx 0, 11, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    stbx 0, 10, 9
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 9, 0x4(9)
    lwz 9, 0xc(9)
    stbx 0, 9, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    stbx 0, 8, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    stbx 0, 7, 6
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 6, 0x4(6)
    lwz 6, 0xc(6)
    stbx 0, 6, 5
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stbx 0, 5, 4
    .4byte 0x4200FF58 # bdnz .L_802DBF14
    li 3, 0x8
    mr 7, 0
    mr 8, 0
    li 6, 0xff
    mtctr 3
L_802DBFD4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    addis 3, 8, 0x1
    addi 5, 7, 0x328
    addi 8, 8, 0x4
    lwz 4, 0x4(4)
    addi 3, 3, 0x2f68
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x329
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x32a
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    addi 5, 7, 0x32b
    addi 7, 7, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    addis 3, 8, 0x1
    addi 3, 3, 0x2f68
    addi 8, 8, 0x4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stbx 6, 4, 5
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    stwx 0, 4, 3
    .4byte 0x4200FF3C # bdnz .L_802DBFD4
    li 3, 0x0
    mr 5, 3
    mr 6, 3
L_802DC0A8:
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    addi 7, 5, 0x6748
    li 0, 0x8
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    stwx 4, 8, 7
    mtctr 0
L_802DC0C8:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2948
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294a
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294c
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x294e
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2950
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2952
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 7, 7, 0x2954
    sthx 0, 6, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    add 7, 7, 4
    addi 4, 4, 0x10
    addi 7, 7, 0x2956
    sthx 0, 6, 7
    .4byte 0x4200FF38 # bdnz .L_802DC0C8
    addi 3, 3, 0x1
    addi 6, 6, 0x80
    cmpwi 3, 0x8
    addi 5, 5, 0x4
    .4byte 0x4180FF04 # blt .L_802DC0A8
    bl fn_8038D454
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    lbz 0, 0x31f9(3)
    cmplwi 0, 0x2
    .4byte 0x40820854 # bne .L_802DCA18
    bl fn_802DEE2C
    li 4, 0x0
    mr 6, 4
L_802DC1D4:
    li 0, 0xa
    li 5, 0x0
    mtctr 0
L_802DC1E0:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 3, 0x0
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1048
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1050
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1058
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1060
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1068
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1070
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1078
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 5, 5, 0x40
    addi 0, 7, 0x1080
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x4200FEF8 # bdnz .L_802DC1E0
    addi 4, 4, 0x1
    addi 6, 6, 0x280
    cmpwi 4, 0xa
    .4byte 0x4180FEDC # blt .L_802DC1D4
    mr 6, 3
L_802DC300:
    li 0, 0x8
    li 5, 0x0
    mtctr 0
L_802DC30C:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2948
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x294a
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x294c
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x294e
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2950
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2952
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2954
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 5, 5, 0x10
    addi 0, 7, 0x2956
    sthx 4, 6, 0
    .4byte 0x4200FF38 # bdnz .L_802DC30C
    addi 3, 3, 0x1
    addi 6, 6, 0x80
    cmpwi 3, 0x8
    .4byte 0x4180FF1C # blt .L_802DC300
    mr 6, 4
L_802DC3EC:
    li 0, 0x10
    li 3, 0x0
    mtctr 0
L_802DC3F8:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 5, 0x0
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d48
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d4c
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d50
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d54
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d58
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d5c
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d60
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 3, 3, 0x20
    addi 0, 7, 0x2d64
    stwx 5, 6, 0
    .4byte 0x4200FF38 # bdnz .L_802DC3F8
    addi 4, 4, 0x1
    addi 6, 6, 0x200
    cmpwi 4, 0x4
    .4byte 0x4180FF1C # blt .L_802DC3EC
    mr 8, 5
    mr 9, 5
L_802DC4DC:
    mr 6, 8
    mr 7, 9
    li 4, 0x0
L_802DC4E8:
    li 12, 0x0
    li 0, 0x8
    mr 11, 12
    mr 10, 12
    mtctr 0
L_802DC4FC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x4200FF30 # bdnz .L_802DC4FC
    li 0, 0x20
    li 3, 0x0
    mtctr 0
L_802DC5DC:
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    li 10, 0x0
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6698
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6697
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6696
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6695
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6694
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6693
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6692
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addi 3, 3, 0x8
    addis 11, 11, 0x1
    subi 11, 11, 0x6691
    stbx 10, 7, 11
    .4byte 0x4200FF18 # bdnz .L_802DC5DC
    addi 4, 4, 0x1
    addi 7, 7, 0x100
    cmpwi 4, 0xa
    addi 6, 6, 0x80
    .4byte 0x4180FE10 # blt .L_802DC4E8
    addi 5, 5, 0x1
    addi 9, 9, 0xa00
    cmpwi 5, 0xa
    addi 8, 8, 0x500
    .4byte 0x4180FDF0 # blt .L_802DC4DC
    li 0, 0x4
    mr 8, 10
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    mtctr 0
L_802DC700:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addis 6, 10, 0x1
    mr 4, 6
    addis 7, 8, 0x1
    lwz 5, 0x4(5)
    li 3, 0x0
    addi 6, 6, 0x3068
    addi 7, 7, 0x3088
    lwz 5, 0xc(5)
    li 0, -0x1
    addi 4, 4, 0x30c8
    addi 10, 10, 0x4
    stwx 3, 5, 6
    addis 6, 10, 0x1
    addi 8, 8, 0x8
    addi 10, 10, 0x4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    add 7, 5, 7
    stfs 0, 0x0(7)
    stfs 0, 0x4(7)
    addis 7, 8, 0x1
    addi 7, 7, 0x3088
    addi 8, 8, 0x8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 0, 5, 4
    mr 4, 6
    addi 6, 6, 0x3068
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 4, 0x30c8
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 3, 5, 6
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    add 7, 5, 7
    stfs 0, 0x0(7)
    stfs 0, 0x4(7)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 0, 5, 4
    .4byte 0x4200FF48 # bdnz .L_802DC700
    li 0, 0x4
    mr 10, 3
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    mtctr 0
L_802DC7CC:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addis 8, 3, 0x1
    mr 9, 8
    addis 6, 10, 0x1
    lwz 5, 0x4(5)
    mr 4, 6
    addi 8, 8, 0x30e8
    li 7, -0x1
    lwz 0, 0xc(5)
    addi 6, 6, 0x3128
    addi 9, 9, 0x3148
    addi 4, 4, 0x3188
    add 8, 0, 8
    addi 3, 3, 0x8
    stfs 0, 0x0(8)
    addi 10, 10, 0x4
    stfs 0, 0x4(8)
    addis 8, 3, 0x1
    addi 3, 3, 0x8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 6
    addis 6, 10, 0x1
    addi 10, 10, 0x4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 0, 0xc(5)
    add 9, 0, 9
    stfs 0, 0x0(9)
    stfs 0, 0x4(9)
    mr 9, 8
    addi 8, 8, 0x30e8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 9, 9, 0x3148
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 4
    mr 4, 6
    addi 6, 6, 0x3128
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 4, 0x3188
    lwz 5, 0x4(5)
    lwz 0, 0xc(5)
    add 8, 0, 8
    stfs 0, 0x0(8)
    stfs 0, 0x4(8)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 6
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 0, 0xc(5)
    add 9, 0, 9
    stfs 0, 0x0(9)
    stfs 0, 0x4(9)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 4
    .4byte 0x4200FF0C # bdnz .L_802DC7CC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stb 4, 0x170(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stb 4, 0x171(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 0, 0x174(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31de(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f1(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f2(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f3(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f4(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f5(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    bl fn_80158B3C
    li 29, 0x0
L_802DC984:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802DC99C
    mr 3, 29
    bl fn_80235918
L_802DC99C:
    mr 3, 29
    bl fn_8023EE28
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFD8 # blt .L_802DC984
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stw 0, 0x328c(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    lwz 4, 0x38(3)
    cmpwi 4, 0x11
    stw 4, 0x34(3)
    .4byte 0x40800018 # bge .L_802DC9F8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stw 0, 0x328c(3)
L_802DC9F8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    bl fn_8022ADCC
    bl fn_8016A3AC
    bl fn_8016A330
    mr 3, 31
    bl fn_802D92F0
    .4byte 0x48000040 # b .L_802DCA54
L_802DCA18:
    cmplwi 0, 0x3
    .4byte 0x40820038 # bne .L_802DCA54
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    bl fn_80158B3C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820010 # bne .L_802DCA50
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x41820008 # beq .L_802DCA54
L_802DCA50:
    bl fn_8022ADE4
L_802DCA54:
    mr 3, 31
    li 4, 0x0
    bl fn_802D8D50
    bl SpatialRegistry_GetBase
    bl fn_801F7B18
    bl SpatialRegistry_GetBase
    li 4, 0x0
    bl fn_801F6204
    bl fn_80308D0C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802DCA98
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x4800000C # b .L_802DCAA0
L_802DCA98:
    li 0, 0x2a30
    stw 0, 0xc4(31)
L_802DCAA0:
    bl fn_8013C824
    bl fn_8013C8CC
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046E148@ha
    addi 29, 3, lbl_8046E148@l
    li 30, 0x0
    lwz 4, 0x4(4)
    lwz 3, 0xc(4)
    addis 3, 3, 0x1
    stb 30, 0x31de(3)
L_802DCAC8:
    lfs 2, 0x0(29)
    mr 3, 30
    lfs 1, 0x4(29)
    addi 4, 1, 0x8
    lfs 0, 0x8(29)
    li 5, 0x2
    stfs 2, 0x8(1)
    li 6, 0x0
    li 7, 0x0
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lfs 0, 0xcc(31)
    fadds 0, 2, 0
    stfs 0, 0x8(1)
    lfs 0, 0xd0(31)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    bl fn_8023F1D4
    addi 30, 30, 0x1
    addi 29, 29, 0xc
    cmpwi 30, 0x4
    .4byte 0x4180FFAC # blt .L_802DCAC8
    bl fn_8022BD70
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_802D8328
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    lbz 0, 0x31f9(3)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_802DCB60
    cmplwi 0, 0x3
    .4byte 0x40820048 # bne .L_802DCBA4
L_802DCB60:
    li 3, 0x0
    bl fn_8023E724
    psq_l 2, 0x0(3), 0, 0
    lfs 1, 0x8(3)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    stfs 1, 0x28(1)
    psq_st 2, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x474c
    addi 6, 1, 0x20
    addi 4, 4, 0x5750
    li 5, 0x0
    li 7, 0x100
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_802DCBA4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    lwz 3, 0x24(3)
    lfs 1, 0xcc(31)
    stfs 0, 0x1c(1)
    stfs 1, 0x154(3)
    lfs 1, 0xd0(31)
    stfs 1, 0x158(3)
    lfs 1, 0xd4(31)
    stfs 1, 0x15c(3)
    lfs 1, 0xd8(31)
    stfs 1, 0x160(3)
    lfs 2, 0xd0(31)
    lfs 1, 0xcc(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x14(1)
    lwz 3, 0x20(3)
    stfs 2, 0x18(1)
    addi 3, 3, 0x2368
    psq_l 1, 0x14(1), 0, 0
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802DCC1C
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x4800000C # b .L_802DCC24
L_802DCC1C:
    li 0, 0x2a30
    stw 0, 0xc4(31)
L_802DCC24:
    bl fn_8023F78C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    lbz 0, 0x31f9(3)
    cmplwi 0, 0x2
    .4byte 0x41800028 # blt .L_802DCC68
    .4byte 0x40820008 # bne .L_802DCC4C
    bl fn_8023F6C4
L_802DCC4C:
    bl fn_8023077C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f9(3)
L_802DCC68:
    li 30, 0x0
    mr 29, 31
L_802DCC70:
    addis 3, 29, 0x1
    lwz 4, 0x31a8(3)
    cmpwi 4, 0x0
    .4byte 0x41800014 # blt .L_802DCC90
    mr 3, 30
    li 5, 0x0
    li 6, 0x1
    bl fn_8022F9E4
L_802DCC90:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFD4 # blt .L_802DCC70
    li 3, 0x0
    bl fn_8023E724
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(4)
    lbz 0, 0x840(4)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_802DCCF0
    li 0, 0x1
    .4byte 0xC022E1B8 # lfs f1, lbl_80541158@sda21(r0)
    stb 0, 0x840(4)
    .4byte 0xC002E1BC # lfs f0, lbl_8054115C@sda21(r0)
    lfs 2, 0x0(3)
    stfs 2, 0x84c(4)
    stfs 2, 0x844(4)
    lfs 2, 0x4(3)
    stfs 2, 0x850(4)
    stfs 2, 0x848(4)
    stfs 1, 0x854(4)
    stfs 0, 0x1d4(4)
    stfs 0, 0x1d8(4)
L_802DCCF0:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

.balign 4
.global fn_802DCD0C

fn_802DCD0C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 3, 0x1e8(3)
    blr

.balign 4
.global fn_802DCD1C

fn_802DCD1C:
    stwu 1, -0x10(1)
    mflr 0
    li 6, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(5)
    lbz 0, 0x1e8(3)
    cmplwi 0, 0x0
    .4byte 0x40820098 # bne .L_802DCDDC
    lwz 0, 0x0(4)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_802DCD64
    lwz 3, 0x14(31)
    addi 0, 3, 0x1
    stw 0, 0x14(31)
    .4byte 0x48000040 # b .L_802DCDA0
L_802DCD64:
    .4byte 0x40800014 # bge .L_802DCD78
    lwz 3, 0x14(31)
    subi 0, 3, 0x1
    stw 0, 0x14(31)
    .4byte 0x4800002C # b .L_802DCDA0
L_802DCD78:
    lwz 0, 0x4(4)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_802DCD94
    lwz 3, 0x18(31)
    addi 0, 3, 0x1
    stw 0, 0x18(31)
    .4byte 0x48000010 # b .L_802DCDA0
L_802DCD94:
    lwz 3, 0x18(31)
    subi 0, 3, 0x1
    stw 0, 0x18(31)
L_802DCDA0:
    bl fn_80231424
    bl SpatialRegistry_GetBase
    bl fn_801F7E88
    mr 3, 31
    li 4, 0x1
    bl fn_802D8D50
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_802D8328
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xcc
    lwz 3, 0x24(3)
    bl fn_8030C928
    li 6, 0x1
L_802DCDDC:
    lwz 0, 0x14(1)
    clrlwi 3, 6, 24
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.balign 4
.global fn_802DCDF4

fn_802DCDF4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl SpatialRegistry_GetBase
    bl fn_801F7CAC
    bl SpatialRegistry_GetBase
    li 4, 0x0
    bl fn_801F6204
    bl fn_80308D0C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31de(3)
    bl fn_8013C824
    bl fn_8013C8CC
    li 0, 0x0
    stb 0, 0xc9(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.balign 4
.global fn_802DCE5C

fn_802DCE5C:
    stwu 1, -0x10(1)
    mflr 0
    li 6, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(5)
    lbz 0, 0x1e8(3)
    cmplwi 0, 0x0
    .4byte 0x40820538 # bne .L_802DD3BC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31ef(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DCECC
    lis 5, lbl_8050EC80@ha
    addi 6, 5, lbl_8050EC80@l
    lwz 5, 0x10(6)
    mulli 5, 5, 0xc8
    add 5, 6, 5
    lbz 5, 0x7c(5)
    .4byte 0x4800001C # b .L_802DCEE4
L_802DCECC:
    lis 5, lbl_8050EC80@ha
    addi 6, 5, lbl_8050EC80@l
    lwz 5, 0x10(6)
    mulli 5, 5, 0xc8
    add 5, 6, 5
    lbz 5, 0x7d(5)
L_802DCEE4:
    clrlwi 5, 5, 24
    subfic 5, 5, 0x1
    cntlzw 5, 5
    extrwi 5, 5, 8, 19
    cmplwi 5, 0x1
    .4byte 0x408200C0 # bne .L_802DCFB8
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DCF20
    lis 5, lbl_8050EC80@ha
    addi 6, 5, lbl_8050EC80@l
    lwz 5, 0x10(6)
    mulli 5, 5, 0xc8
    add 5, 6, 5
    lbz 5, 0x7c(5)
    .4byte 0x4800001C # b .L_802DCF38
L_802DCF20:
    lis 5, lbl_8050EC80@ha
    addi 6, 5, lbl_8050EC80@l
    lwz 5, 0x10(6)
    mulli 5, 5, 0xc8
    add 5, 6, 5
    lbz 5, 0x7d(5)
L_802DCF38:
    clrlwi 5, 5, 24
    cmplwi 5, 0x1
    .4byte 0x4182001C # beq .L_802DCF5C
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000074 # b .L_802DCFCC
L_802DCF5C:
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_802DCFA0
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802DCF88
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000048 # b .L_802DCFCC
L_802DCF88:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000030 # b .L_802DCFCC
L_802DCFA0:
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000018 # b .L_802DCFCC
L_802DCFB8:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
L_802DCFCC:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    li 0, 0x2
    lwz 5, 0x18(31)
    li 3, 0x0
    lwz 7, 0x4(6)
    mulli 6, 5, 0x28
    lwz 5, 0x14(31)
    lwz 7, 0xc(7)
    slwi 5, 5, 2
    add 6, 7, 6
    add 6, 6, 5
    lwz 5, 0x178(6)
    clrrwi 5, 5, 16
    stw 5, 0x178(6)
    mtctr 0
L_802DD008:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    addi 5, 3, 0x308
    li 0, 0x0
    addi 3, 3, 0x8
    lwz 6, 0x4(6)
    addi 11, 5, 0x1
    addi 10, 5, 0x2
    addi 9, 5, 0x3
    lwz 12, 0xc(6)
    addi 8, 5, 0x4
    addi 7, 5, 0x5
    addi 6, 5, 0x6
    stbx 0, 12, 5
    addi 5, 5, 0x7
    .4byte 0x818D8F38 # lwz r12, lbl_8053AAF8@sda21(r0)
    lwz 12, 0x4(12)
    lwz 12, 0xc(12)
    stbx 0, 12, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 11, 0xc(11)
    stbx 0, 11, 10
    .4byte 0x814D8F38 # lwz r10, lbl_8053AAF8@sda21(r0)
    lwz 10, 0x4(10)
    lwz 10, 0xc(10)
    stbx 0, 10, 9
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    lwz 9, 0x4(9)
    lwz 9, 0xc(9)
    stbx 0, 9, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    stbx 0, 8, 7
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 7, 0xc(7)
    stbx 0, 7, 6
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 6, 0x4(6)
    lwz 6, 0xc(6)
    stbx 0, 6, 5
    .4byte 0x4200FF58 # bdnz .L_802DD008
    li 3, 0x8
    mr 8, 0
    mr 9, 0
    li 7, 0xff
    mtctr 3
L_802DD0C8:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addis 3, 9, 0x1
    addi 6, 8, 0x328
    addi 9, 9, 0x4
    lwz 5, 0x4(5)
    addi 3, 3, 0x2f68
    lwz 5, 0xc(5)
    stbx 7, 5, 6
    addi 6, 8, 0x329
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 0, 5, 3
    addis 3, 9, 0x1
    addi 3, 3, 0x2f68
    addi 9, 9, 0x4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stbx 7, 5, 6
    addi 6, 8, 0x32a
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 0, 5, 3
    addis 3, 9, 0x1
    addi 3, 3, 0x2f68
    addi 9, 9, 0x4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stbx 7, 5, 6
    addi 6, 8, 0x32b
    addi 8, 8, 0x4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 0, 5, 3
    addis 3, 9, 0x1
    addi 3, 3, 0x2f68
    addi 9, 9, 0x4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stbx 7, 5, 6
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 0, 5, 3
    .4byte 0x4200FF3C # bdnz .L_802DD0C8
    li 3, 0x0
    mr 6, 3
    mr 7, 3
L_802DD19C:
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    li 5, 0x0
    addi 8, 6, 0x6748
    li 0, 0x8
    lwz 9, 0x4(9)
    lwz 9, 0xc(9)
    stwx 5, 9, 8
    mtctr 0
L_802DD1BC:
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 5
    addi 8, 8, 0x2948
    sthx 0, 7, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 5
    addi 8, 8, 0x294a
    sthx 0, 7, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 5
    addi 8, 8, 0x294c
    sthx 0, 7, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 5
    addi 8, 8, 0x294e
    sthx 0, 7, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 5
    addi 8, 8, 0x2950
    sthx 0, 7, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 5
    addi 8, 8, 0x2952
    sthx 0, 7, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 5
    addi 8, 8, 0x2954
    sthx 0, 7, 8
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 8, 0x4(8)
    lwz 8, 0xc(8)
    add 8, 8, 5
    addi 5, 5, 0x10
    addi 8, 8, 0x2956
    sthx 0, 7, 8
    .4byte 0x4200FF38 # bdnz .L_802DD1BC
    addi 3, 3, 0x1
    addi 7, 7, 0x80
    cmpwi 3, 0x8
    addi 6, 6, 0x4
    .4byte 0x4180FF04 # blt .L_802DD19C
    lwz 0, 0x0(4)
    cmpwi 0, 0x0
    .4byte 0x4081001C # ble .L_802DD2C0
    lwz 3, 0x14(31)
    li 0, 0x1
    addi 3, 3, 0x1
    stw 3, 0x14(31)
    stb 0, 0xc8(31)
    .4byte 0x48000058 # b .L_802DD314
L_802DD2C0:
    .4byte 0x4080001C # bge .L_802DD2DC
    lwz 3, 0x14(31)
    li 0, 0x2
    subi 3, 3, 0x1
    stw 3, 0x14(31)
    stb 0, 0xc8(31)
    .4byte 0x4800003C # b .L_802DD314
L_802DD2DC:
    lwz 0, 0x4(4)
    cmpwi 0, 0x0
    .4byte 0x4081001C # ble .L_802DD300
    lwz 3, 0x18(31)
    li 0, 0x4
    addi 3, 3, 0x1
    stw 3, 0x18(31)
    stb 0, 0xc8(31)
    .4byte 0x48000018 # b .L_802DD314
L_802DD300:
    lwz 3, 0x18(31)
    li 0, 0x8
    subi 3, 3, 0x1
    stw 3, 0x18(31)
    stb 0, 0xc8(31)
L_802DD314:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802DD334
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x4800000C # b .L_802DD33C
L_802DD334:
    li 0, 0x2a30
    stw 0, 0xc4(31)
L_802DD33C:
    bl fn_80231424
    bl SpatialRegistry_GetBase
    bl fn_801F7E88
    mr 3, 31
    li 4, 0x1
    bl fn_802D8D50
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    mr 3, 31
    li 4, 0x0
    lwz 6, 0x4(5)
    li 5, 0x0
    lwz 6, 0xc(6)
    addis 6, 6, 0x1
    stb 0, 0x31f3(6)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 6, 0x4(6)
    lwz 6, 0xc(6)
    addis 6, 6, 0x1
    stb 0, 0x31f4(6)
    bl fn_802D8328
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    addi 4, 31, 0xcc
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f2(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C9E4
    li 6, 0x1
L_802DD3BC:
    lwz 0, 0x14(1)
    clrlwi 3, 6, 24
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.balign 4
.global fn_802DD3D4

fn_802DD3D4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    li 0, 0x0
    stmw 23, 0xc(1)
    mr 26, 3
    mr 27, 4
    li 29, 0x0
    li 28, 0xf
    lwz 31, 0x14(3)
    lwz 30, 0x18(3)
    stb 0, 0xc9(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x1e8(3)
    cmplwi 0, 0x0
    .4byte 0x4082011C # bne .L_802DD530
    bl SpatialRegistry_GetBase
    lwz 25, 0x1008(3)
    li 23, 0x0
    li 24, 0x0
    .4byte 0x4800003C # b .L_802DD464
L_802DD42C:
    bl SpatialRegistry_GetBase
    addi 0, 24, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x41820020 # beq .L_802DD45C
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x5344
    cmplwi 0, 0x534d
    .4byte 0x40820010 # bne .L_802DD45C
    lwz 0, 0x90(4)
    srwi 28, 0, 4
    .4byte 0x48000014 # b .L_802DD46C
L_802DD45C:
    addi 24, 24, 0x4
    addi 23, 23, 0x1
L_802DD464:
    cmpw 23, 25
    .4byte 0x4180FFC4 # blt .L_802DD42C
L_802DD46C:
    lwz 0, 0x0(27)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_802DD488
    li 0, 0x1
    addi 31, 31, 0x1
    stb 0, 0xc8(26)
    .4byte 0x48000040 # b .L_802DD4C4
L_802DD488:
    .4byte 0x40800014 # bge .L_802DD49C
    li 0, 0x2
    subi 31, 31, 0x1
    stb 0, 0xc8(26)
    .4byte 0x4800002C # b .L_802DD4C4
L_802DD49C:
    lwz 0, 0x4(27)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_802DD4B8
    li 0, 0x4
    addi 30, 30, 0x1
    stb 0, 0xc8(26)
    .4byte 0x48000010 # b .L_802DD4C4
L_802DD4B8:
    li 0, 0x8
    subi 30, 30, 0x1
    stb 0, 0xc8(26)
L_802DD4C4:
    cmpwi 30, 0x0
    .4byte 0x41800068 # blt .L_802DD530
    cmpwi 30, 0xa
    .4byte 0x40800060 # bge .L_802DD530
    cmpwi 31, 0x0
    .4byte 0x41800058 # blt .L_802DD530
    cmpwi 31, 0xa
    .4byte 0x40800050 # bge .L_802DD530
    mulli 0, 30, 0xa
    add 0, 26, 0
    add 3, 0, 31
    lbz 0, 0x60(3)
    cmplwi 0, 0xff
    .4byte 0x41820024 # beq .L_802DD51C
    lbz 0, 0xc8(26)
    and. 0, 28, 0
    .4byte 0x4182000C # beq .L_802DD510
    li 29, 0x1
    .4byte 0x48000024 # b .L_802DD530
L_802DD510:
    li 0, 0x1
    stb 0, 0xc9(26)
    .4byte 0x48000018 # b .L_802DD530
L_802DD51C:
    lbz 0, 0xc8(26)
    and. 0, 28, 0
    .4byte 0x4082000C # bne .L_802DD530
    li 0, 0x1
    stb 0, 0xc9(26)
L_802DD530:
    clrlwi 3, 29, 24
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

.balign 4
.global fn_802DD548

fn_802DD548:
    blr

.balign 4
.global fn_802DD54C

fn_802DD54C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 31, 3
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lfs 1, 0xf0(3)
    lwz 0, 0x5c(4)
    lfs 2, 0xf4(3)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4182000C # beq .L_802DD580
    fneg 2, 2
    fneg 1, 1
L_802DD580:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 30, 31
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    li 29, 0x0
    lwz 3, 0x24(3)
    stfs 1, 0x1dc(3)
    stfs 2, 0x1e0(3)
    stfs 0, 0x1e4(3)
L_802DD5A0:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_802DD634
    mr 3, 29
    bl fn_8023DE58
    slwi 4, 3, 3
    mr 3, 29
    addi 0, 4, 0xf0
    lfsx 0, 31, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 28, 0xc(1)
    bl fn_8023DE58
    slwi 4, 3, 3
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    addi 0, 4, 0xf4
    lfsx 0, 31, 0
    lwz 0, 0x5c(3)
    fctiwz 0, 0
    rlwinm. 0, 0, 0, 30, 30
    stfd 0, 0x10(1)
    lwz 27, 0x14(1)
    .4byte 0x4182000C # beq .L_802DD608
    neg 27, 27
    neg 28, 28
L_802DD608:
    mr 3, 29
    mr 4, 28
    bl fn_8023CCE8
    addis 4, 30, 0x1
    mr 3, 29
    lfs 0, 0x323c(4)
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    add 4, 27, 0
    bl fn_8023CC5C
L_802DD634:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF60 # blt .L_802DD5A0
    li 27, 0x0
    mr 30, 31
L_802DD64C:
    lfs 0, 0xf0(30)
    .4byte 0xC02D85E8 # lfs f1, lbl_8053A1A8@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40810020 # ble .L_802DD678
    fsubs 0, 0, 1
    li 4, 0x4f
    li 5, -0x1
    stfs 0, 0xf0(30)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x4800000C # b .L_802DD680
L_802DD678:
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    stfs 0, 0xf0(30)
L_802DD680:
    lfs 0, 0xf4(30)
    .4byte 0xC02D85E8 # lfs f1, lbl_8053A1A8@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40810020 # ble .L_802DD6AC
    fsubs 0, 0, 1
    li 4, 0x4f
    li 5, -0x1
    stfs 0, 0xf4(30)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    .4byte 0x4800000C # b .L_802DD6B4
L_802DD6AC:
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    stfs 0, 0xf4(30)
L_802DD6B4:
    addi 27, 27, 0x1
    addi 30, 30, 0x8
    cmpwi 27, 0x10
    .4byte 0x4180FF8C # blt .L_802DD64C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(3)
    cmpwi 0, 0x7
    .4byte 0x40820078 # bne .L_802DD748
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802DD6E8
    li 0, 0x0
    .4byte 0x48000040 # b .L_802DD724
L_802DD6E8:
    lwz 4, 0x4(3)
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0x9
    .4byte 0x40820010 # bne .L_802DD708
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_802DD718
L_802DD708:
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0xd
    .4byte 0x4180000C # blt .L_802DD720
L_802DD718:
    li 0, 0x1
    .4byte 0x48000008 # b .L_802DD724
L_802DD720:
    li 0, 0x0
L_802DD724:
    clrlwi. 0, 0, 24
    .4byte 0x40820020 # bne .L_802DD748
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x1e8(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802DD748
    mr 3, 31
    bl fn_802D3A18
L_802DD748:
    li 0, 0x4
    mr 4, 31
    li 6, 0x0
    mtctr 0
L_802DD758:
    addis 5, 6, 0x1
    addi 5, 5, 0x327c
    lbzx 0, 31, 5
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_802DD7B8
    addis 3, 4, 0x1
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    lfs 2, 0x323c(3)
    lfs 1, 0x324c(3)
    fadds 1, 2, 1
    stfs 1, 0x323c(3)
    lfs 1, 0x323c(3)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_802DD7A0
    stfs 0, 0x323c(3)
    li 0, 0x0
    stbx 0, 31, 5
L_802DD7A0:
    addis 3, 4, 0x1
    lfs 1, 0x324c(3)
    lfs 0, 0x325c(3)
    fsubs 0, 1, 0
    stfs 0, 0x324c(3)
    .4byte 0x48000034 # b .L_802DD7E8
L_802DD7B8:
    addis 3, 4, 0x1
    .4byte 0xC042E17C # lfs f2, lbl_8054111C@sda21(r0)
    lfs 1, 0x324c(3)
    fcmpu cr0, 2, 1
    .4byte 0x41820020 # beq .L_802DD7E8
    lfs 0, 0x326c(3)
    fadds 0, 1, 0
    stfs 0, 0x324c(3)
    lfs 0, 0x324c(3)
    fcmpo cr0, 0, 2
    .4byte 0x40810008 # ble .L_802DD7E8
    stfs 2, 0x324c(3)
L_802DD7E8:
    addi 4, 4, 0x4
    addi 6, 6, 0x1
    .4byte 0x4200FF68 # bdnz .L_802DD758
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

.balign 4
.global fn_802DD808

fn_802DD808:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    li 0, 0x0
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(4)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stw 0, 0x328c(3)
    bl fn_802DEE2C
    li 4, 0x0
    mr 6, 4
L_802DD84C:
    li 0, 0xa
    li 5, 0x0
    mtctr 0
L_802DD858:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 3, 0x0
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1048
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1050
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1058
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1060
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1068
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1070
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x1078
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 5, 5, 0x40
    addi 0, 7, 0x1080
    add 7, 6, 0
    stw 3, 0x4(7)
    stw 3, 0x0(7)
    .4byte 0x4200FEF8 # bdnz .L_802DD858
    addi 4, 4, 0x1
    addi 6, 6, 0x280
    cmpwi 4, 0xa
    .4byte 0x4180FEDC # blt .L_802DD84C
    mr 6, 3
L_802DD978:
    li 0, 0x8
    li 5, 0x0
    mtctr 0
L_802DD984:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2948
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x294a
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x294c
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x294e
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2950
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2952
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 0, 7, 0x2954
    sthx 4, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 5
    addi 5, 5, 0x10
    addi 0, 7, 0x2956
    sthx 4, 6, 0
    .4byte 0x4200FF38 # bdnz .L_802DD984
    addi 3, 3, 0x1
    addi 6, 6, 0x80
    cmpwi 3, 0x8
    .4byte 0x4180FF1C # blt .L_802DD978
    mr 6, 4
L_802DDA64:
    li 0, 0x10
    li 3, 0x0
    mtctr 0
L_802DDA70:
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 5, 0x0
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d48
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d4c
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d50
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d54
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d58
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d5c
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 0, 7, 0x2d60
    stwx 5, 6, 0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 7, 0x4(7)
    lwz 0, 0xc(7)
    add 7, 0, 3
    addi 3, 3, 0x20
    addi 0, 7, 0x2d64
    stwx 5, 6, 0
    .4byte 0x4200FF38 # bdnz .L_802DDA70
    addi 4, 4, 0x1
    addi 6, 6, 0x200
    cmpwi 4, 0x4
    .4byte 0x4180FF1C # blt .L_802DDA64
    mr 8, 5
    mr 9, 5
L_802DDB54:
    mr 6, 8
    mr 7, 9
    li 4, 0x0
L_802DDB60:
    li 12, 0x0
    li 0, 0x8
    mr 11, 12
    mr 10, 12
    mtctr 0
L_802DDB74:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 0, 3, 0x3548
    stwx 11, 6, 0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 0, 0xc(3)
    add 3, 0, 12
    addi 12, 12, 0x4
    addi 0, 3, 0x6768
    stwx 10, 6, 0
    .4byte 0x4200FF30 # bdnz .L_802DDB74
    li 0, 0x20
    li 3, 0x0
    mtctr 0
L_802DDC54:
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    li 10, 0x0
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6698
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6697
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6696
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6695
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6694
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6693
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addis 11, 11, 0x1
    subi 11, 11, 0x6692
    stbx 10, 7, 11
    .4byte 0x816D8F38 # lwz r11, lbl_8053AAF8@sda21(r0)
    lwz 11, 0x4(11)
    lwz 0, 0xc(11)
    add 11, 0, 3
    addi 3, 3, 0x8
    addis 11, 11, 0x1
    subi 11, 11, 0x6691
    stbx 10, 7, 11
    .4byte 0x4200FF18 # bdnz .L_802DDC54
    addi 4, 4, 0x1
    addi 7, 7, 0x100
    cmpwi 4, 0xa
    addi 6, 6, 0x80
    .4byte 0x4180FE10 # blt .L_802DDB60
    addi 5, 5, 0x1
    addi 9, 9, 0xa00
    cmpwi 5, 0xa
    addi 8, 8, 0x500
    .4byte 0x4180FDF0 # blt .L_802DDB54
    li 0, 0x4
    mr 8, 10
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    mtctr 0
L_802DDD78:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addis 6, 10, 0x1
    mr 4, 6
    addis 7, 8, 0x1
    lwz 5, 0x4(5)
    li 3, 0x0
    addi 6, 6, 0x3068
    addi 7, 7, 0x3088
    lwz 5, 0xc(5)
    li 0, -0x1
    addi 4, 4, 0x30c8
    addi 10, 10, 0x4
    stwx 3, 5, 6
    addis 6, 10, 0x1
    addi 8, 8, 0x8
    addi 10, 10, 0x4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    add 7, 5, 7
    stfs 0, 0x0(7)
    stfs 0, 0x4(7)
    addis 7, 8, 0x1
    addi 7, 7, 0x3088
    addi 8, 8, 0x8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 0, 5, 4
    mr 4, 6
    addi 6, 6, 0x3068
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 4, 0x30c8
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 3, 5, 6
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    add 7, 5, 7
    stfs 0, 0x0(7)
    stfs 0, 0x4(7)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 0, 5, 4
    .4byte 0x4200FF48 # bdnz .L_802DDD78
    li 0, 0x4
    mr 10, 3
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    mtctr 0
L_802DDE44:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addis 8, 3, 0x1
    mr 9, 8
    addis 6, 10, 0x1
    lwz 5, 0x4(5)
    mr 4, 6
    addi 8, 8, 0x30e8
    li 7, -0x1
    lwz 0, 0xc(5)
    addi 6, 6, 0x3128
    addi 9, 9, 0x3148
    addi 4, 4, 0x3188
    add 8, 0, 8
    addi 3, 3, 0x8
    stfs 0, 0x0(8)
    addi 10, 10, 0x4
    stfs 0, 0x4(8)
    addis 8, 3, 0x1
    addi 3, 3, 0x8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 6
    addis 6, 10, 0x1
    addi 10, 10, 0x4
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 0, 0xc(5)
    add 9, 0, 9
    stfs 0, 0x0(9)
    stfs 0, 0x4(9)
    mr 9, 8
    addi 8, 8, 0x30e8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 9, 9, 0x3148
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 4
    mr 4, 6
    addi 6, 6, 0x3128
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 4, 4, 0x3188
    lwz 5, 0x4(5)
    lwz 0, 0xc(5)
    add 8, 0, 8
    stfs 0, 0x0(8)
    stfs 0, 0x4(8)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 6
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 0, 0xc(5)
    add 9, 0, 9
    stfs 0, 0x0(9)
    stfs 0, 0x4(9)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 5, 0x4(5)
    lwz 5, 0xc(5)
    stwx 7, 5, 4
    .4byte 0x4200FF0C # bdnz .L_802DDE44
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    mr 3, 31
    stfs 0, 0xf0(31)
    stfs 0, 0xf4(31)
    stfs 0, 0xf8(31)
    stfs 0, 0xfc(31)
    stfs 0, 0x100(31)
    stfs 0, 0x104(31)
    stfs 0, 0x108(31)
    stfs 0, 0x10c(31)
    stfs 0, 0x110(31)
    stfs 0, 0x114(31)
    stfs 0, 0x118(31)
    stfs 0, 0x11c(31)
    stfs 0, 0x120(31)
    stfs 0, 0x124(31)
    stfs 0, 0x128(31)
    stfs 0, 0x12c(31)
    stfs 0, 0x130(31)
    stfs 0, 0x134(31)
    stfs 0, 0x138(31)
    stfs 0, 0x13c(31)
    stfs 0, 0x140(31)
    stfs 0, 0x144(31)
    stfs 0, 0x148(31)
    stfs 0, 0x14c(31)
    stfs 0, 0x150(31)
    stfs 0, 0x154(31)
    stfs 0, 0x158(31)
    stfs 0, 0x15c(31)
    stfs 0, 0x160(31)
    stfs 0, 0x164(31)
    stfs 0, 0x168(31)
    stfs 0, 0x16c(31)
    bl fn_802D3D48
    lis 3, lbl_80529DEC@ha
    mr 29, 31
    addi 30, 3, lbl_80529DEC@l
    li 28, 0x0
L_802DDFD8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 28
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_802DE054
    mr 3, 28
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_8030A308
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_802DE054
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_802DE04C
    lwz 0, 0x118(30)
    cmpwi 0, 0xa
    .4byte 0x40820010 # bne .L_802DE04C
    lwz 0, 0x11c(30)
    cmpwi 0, 0x2
    .4byte 0x4182000C # beq .L_802DE054
L_802DE04C:
    mr 3, 28
    bl fn_80303870
L_802DE054:
    addi 28, 28, 0x1
    addis 3, 29, 0x1
    li 0, -0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x4
    stw 0, 0x31a8(3)
    .4byte 0x4180FF6C # blt .L_802DDFD8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    li 5, 0x1
    li 0, 0x2
    lwz 3, 0x4(3)
    mr 7, 4
    mr 6, 31
    lwz 3, 0xc(3)
    stb 5, 0x170(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stb 5, 0x171(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    stw 4, 0x174(3)
    mtctr 0
L_802DE0B8:
    addis 3, 6, 0x1
    addis 5, 7, 0x1
    addi 5, 5, 0x31df
    sth 4, 0x31b8(3)
    add 5, 31, 5
    addi 6, 6, 0x10
    stb 4, 0x0(5)
    addi 7, 7, 0x8
    sth 4, 0x31ba(3)
    stb 4, 0x1(5)
    sth 4, 0x31bc(3)
    stb 4, 0x2(5)
    sth 4, 0x31be(3)
    stb 4, 0x3(5)
    sth 4, 0x31c0(3)
    stb 4, 0x4(5)
    sth 4, 0x31c2(3)
    stb 4, 0x5(5)
    sth 4, 0x31c4(3)
    stb 4, 0x6(5)
    sth 4, 0x31c6(3)
    stb 4, 0x7(5)
    .4byte 0x4200FFA8 # bdnz .L_802DE0B8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 4, 0x31de(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 4, 0x31ef(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DE168
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7c(4)
    .4byte 0x4800001C # b .L_802DE180
L_802DE168:
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7d(4)
L_802DE180:
    clrlwi 4, 4, 24
    subfic 4, 4, 0x1
    cntlzw 4, 4
    extrwi 4, 4, 8, 19
    cmplwi 4, 0x1
    .4byte 0x408200C0 # bne .L_802DE254
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DE1BC
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7c(4)
    .4byte 0x4800001C # b .L_802DE1D4
L_802DE1BC:
    lis 4, lbl_8050EC80@ha
    addi 5, 4, lbl_8050EC80@l
    lwz 4, 0x10(5)
    mulli 4, 4, 0xc8
    add 4, 5, 4
    lbz 4, 0x7d(4)
L_802DE1D4:
    clrlwi 4, 4, 24
    cmplwi 4, 0x1
    .4byte 0x4182001C # beq .L_802DE1F8
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000074 # b .L_802DE268
L_802DE1F8:
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_802DE23C
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802DE224
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000048 # b .L_802DE268
L_802DE224:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000030 # b .L_802DE268
L_802DE23C:
    lwz 3, 0x4(3)
    li 0, 0x1
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
    .4byte 0x48000018 # b .L_802DE268
L_802DE254:
    lwz 3, 0x4(3)
    li 0, 0x0
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f0(3)
L_802DE268:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f1(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f2(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f3(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f4(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f9(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    addis 3, 3, 0x1
    stb 0, 0x31f5(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134D14
    mr 3, 31
    bl fn_802D92F0
    mr 3, 31
    li 4, 0x0
    bl fn_802D8D50
    lis 3, lbl_8046E148@ha
    li 28, 0x0
    addi 29, 3, lbl_8046E148@l
L_802DE310:
    lfs 2, 0x0(29)
    mr 3, 28
    lfs 1, 0x4(29)
    addi 4, 1, 0x8
    lfs 0, 0x8(29)
    li 5, 0x2
    stfs 2, 0x8(1)
    li 6, 0x0
    li 7, 0x0
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lfs 0, 0xcc(31)
    fadds 0, 2, 0
    stfs 0, 0x8(1)
    lfs 0, 0xd0(31)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    bl fn_8023F1D4
    addi 28, 28, 0x1
    addi 29, 29, 0xc
    cmpwi 28, 0x4
    .4byte 0x4180FFAC # blt .L_802DE310
    mr 3, 31
    li 4, 0x1
    li 5, 0x1
    bl fn_802D8328
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    stfs 0, 0x2c(1)
    stfs 0, 0x30(1)
    stfs 0, 0x34(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5241
    addi 6, 1, 0x2c
    addi 4, 4, 0x4e4b
    li 5, 0x0
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    stfs 0, 0x20(1)
    stfs 0, 0x24(1)
    stfs 0, 0x28(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4742
    addi 6, 1, 0x20
    addi 4, 4, 0x414f
    li 5, 0x0
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    lwz 3, 0x24(3)
    lfs 1, 0xcc(31)
    stfs 0, 0x1c(1)
    stfs 1, 0x154(3)
    lfs 1, 0xd0(31)
    stfs 1, 0x158(3)
    lfs 1, 0xd4(31)
    stfs 1, 0x15c(3)
    lfs 1, 0xd8(31)
    stfs 1, 0x160(3)
    lfs 2, 0xd0(31)
    lfs 1, 0xcc(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 1, 0x14(1)
    lwz 3, 0x20(3)
    stfs 2, 0x18(1)
    addi 3, 3, 0x2368
    psq_l 1, 0x14(1), 0, 0
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x8(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_802DE458
    lis 3, 0x1
    subi 0, 3, 0x7360
    stw 0, 0xc4(31)
    .4byte 0x4800000C # b .L_802DE460
L_802DE458:
    li 0, 0x2a30
    stw 0, 0xc4(31)
L_802DE460:
    .4byte 0xC002E17C # lfs f0, lbl_8054111C@sda21(r0)
    addis 3, 31, 0x1
    li 0, 0x0
    li 4, 0x0
    stfs 0, 0x323c(3)
    stfs 0, 0x324c(3)
    stfs 0, 0x325c(3)
    stfs 0, 0x326c(3)
    stb 0, 0x327c(3)
    stfs 0, 0x3240(3)
    stfs 0, 0x3250(3)
    stfs 0, 0x3260(3)
    stfs 0, 0x3270(3)
    stb 0, 0x327d(3)
    stfs 0, 0x3244(3)
    stfs 0, 0x3254(3)
    stfs 0, 0x3264(3)
    stfs 0, 0x3274(3)
    stb 0, 0x327e(3)
    stfs 0, 0x3248(3)
    stfs 0, 0x3258(3)
    stfs 0, 0x3268(3)
    stfs 0, 0x3278(3)
    stb 0, 0x327f(3)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134FE0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_80134FBC
    addis 4, 31, 0x1
    li 0, 0x0
    stb 0, 0x31d8(4)
    lis 3, lbl_8050EC80@ha
    addi 5, 3, lbl_8050EC80@l
    stb 0, 0x31d9(4)
    stb 0, 0x31da(4)
    stb 0, 0x31db(4)
    lwz 0, 0x10(5)
    mulli 0, 0, 0xc8
    add 3, 5, 0
    lwz 0, 0x28(3)
    rlwinm. 0, 0, 0, 19, 19
    .4byte 0x41820010 # beq .L_802DE518
    lbz 0, 0x31f7(4)
    ori 0, 0, 0x1
    stb 0, 0x31f7(4)
L_802DE518:
    lwz 4, 0x10(5)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mulli 3, 4, 0xc8
    add 3, 0, 3
    lwz 0, 0x28(3)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x41820014 # beq .L_802DE548
    addis 3, 31, 0x1
    lbz 0, 0x31f7(3)
    ori 0, 0, 0x2
    stb 0, 0x31f7(3)
L_802DE548:
    lwz 4, 0x10(5)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mulli 3, 4, 0xc8
    add 3, 0, 3
    lwz 0, 0x28(3)
    rlwinm. 0, 0, 0, 11, 11
    .4byte 0x41820014 # beq .L_802DE578
    addis 3, 31, 0x1
    lbz 0, 0x31f7(3)
    ori 0, 0, 0x4
    stb 0, 0x31f7(3)
L_802DE578:
    lwz 4, 0x10(5)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mulli 3, 4, 0xc8
    add 3, 0, 3
    lwz 0, 0x28(3)
    rlwinm. 0, 0, 0, 7, 7
    .4byte 0x41820014 # beq .L_802DE5A8
    addis 3, 31, 0x1
    lbz 0, 0x31f7(3)
    ori 0, 0, 0x8
    stb 0, 0x31f7(3)
L_802DE5A8:
    addis 29, 31, 0x1
    li 30, 0x0
    li 28, 0x1
L_802DE5B4:
    mr 3, 30
    bl fn_803B8EBC
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_802DE5D8
    slw 0, 28, 30
    lbz 3, 0x31f8(29)
    clrlwi 0, 0, 24
    or 0, 3, 0
    stb 0, 0x31f8(29)
L_802DE5D8:
    addi 30, 30, 0x1
    cmpwi 30, 0x8
    .4byte 0x4180FFD4 # blt .L_802DE5B4
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

.balign 4
.global fn_802DE604

fn_802DE604:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x4182001C # beq .L_802DE634
    lis 5, lbl_804A9950@ha
    extsh. 0, 4
    addi 0, 5, lbl_804A9950@l
    stw 0, 0x0(31)
    .4byte 0x40810008 # ble .L_802DE634
    bl dtor_80084580
L_802DE634:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.balign 4
.global fn_802DE64C

fn_802DE64C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804A9950@ha
    li 5, 0x0
    stw 0, 0x14(1)
    addi 0, 4, lbl_804A9950@l
    li 6, 0x8
    li 7, 0x10
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, fn_801546E4@ha
    stw 0, 0x0(31)
    addi 4, 3, fn_801546E4@l
    addi 3, 31, 0xf0
    bl __construct_array
    lis 4, fn_801546E4@ha
    addis 3, 31, 0x1
    addi 4, 4, fn_801546E4@l
    li 5, 0x0
    li 6, 0x8
    li 7, 0x8
    addi 3, 3, 0x3088
    bl __construct_array
    lis 4, fn_801546E4@ha
    addis 3, 31, 0x1
    addi 4, 4, fn_801546E4@l
    li 5, 0x0
    li 6, 0x8
    li 7, 0x8
    addi 3, 3, 0x30e8
    bl __construct_array
    lis 4, fn_801546E4@ha
    addis 3, 31, 0x1
    addi 4, 4, fn_801546E4@l
    li 5, 0x0
    li 6, 0x8
    li 7, 0x8
    addi 3, 3, 0x3148
    bl __construct_array
    li 0, 0x0
    .4byte 0xC022E17C # lfs f1, lbl_8054111C@sda21(r0)
    stw 0, 0x4(31)
    addis 4, 31, 0x1
    .4byte 0xC002E1A4 # lfs f0, lbl_80541144@sda21(r0)
    mr 3, 31
    stw 0, 0x8(31)
    stw 0, 0x14(31)
    stw 0, 0x18(31)
    stw 0, 0x34(31)
    stw 0, 0x38(31)
    stw 0, 0x3c(31)
    stw 0, 0x40(31)
    stw 0, 0x44(31)
    stw 0, 0x48(31)
    stw 0, 0x4c(31)
    stw 0, 0x50(31)
    stw 0, 0x54(31)
    stw 0, 0x58(31)
    stw 0, 0xec(31)
    stfs 1, 0xdc(31)
    stfs 1, 0xe0(31)
    stfs 0, 0xe4(31)
    stfs 0, 0xe8(31)
    stb 0, 0x31f7(4)
    stb 0, 0x31f8(4)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.balign 4
.global fn_802DE764

fn_802DE764:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(6)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802DE77C
    li 3, 0x0
    blr
L_802DE77C:
    lwz 6, 0x4(6)
    lwz 6, 0xc(6)
    lwz 0, 0x4(6)
    cmpw 3, 0
    .4byte 0x40820038 # bne .L_802DE7C4
    lwz 0, 0x8(6)
    cmpw 4, 0
    .4byte 0x4082002C # bne .L_802DE7C4
    lwz 3, 0x18(6)
    lwz 0, 0x14(6)
    mulli 3, 3, 0xa
    add 3, 6, 3
    add 3, 3, 0
    lbz 0, 0x60(3)
    cmpw 5, 0
    .4byte 0x4082000C # bne .L_802DE7C4
    li 3, 0x1
    blr
L_802DE7C4:
    li 3, 0x0
    blr

.balign 4
.global fn_802DE7CC

fn_802DE7CC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802DE7E4
    li 3, 0x0
    blr
L_802DE7E4:
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_802DE80C
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802DE80C
    li 3, 0x1
    blr
L_802DE80C:
    li 3, 0x0
    blr

.balign 4
.global fn_802DE814

fn_802DE814:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802DE82C
    li 3, 0x0
    blr
L_802DE82C:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 4, 0x118(3)
    cmpwi 4, 0x0
    .4byte 0x40820010 # bne .L_802DE84C
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200E4 # beq .L_802DE92C
L_802DE84C:
    cmpwi 4, 0x1
    .4byte 0x40820018 # bne .L_802DE868
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200C8 # beq .L_802DE92C
L_802DE868:
    cmpwi 4, 0x2
    .4byte 0x40820018 # bne .L_802DE884
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200AC # beq .L_802DE92C
L_802DE884:
    cmpwi 4, 0x3
    .4byte 0x40820018 # bne .L_802DE8A0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820090 # beq .L_802DE92C
L_802DE8A0:
    cmpwi 4, 0x4
    .4byte 0x40820018 # bne .L_802DE8BC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820074 # beq .L_802DE92C
L_802DE8BC:
    cmpwi 4, 0x5
    .4byte 0x40820018 # bne .L_802DE8D8
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_802DE92C
L_802DE8D8:
    cmpwi 4, 0x6
    .4byte 0x40820018 # bne .L_802DE8F4
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_802DE92C
L_802DE8F4:
    cmpwi 4, 0x7
    .4byte 0x40820018 # bne .L_802DE910
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    .4byte 0x41820020 # beq .L_802DE92C
L_802DE910:
    cmpwi 4, 0xa
    .4byte 0x40820020 # bne .L_802DE934
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_802DE934
L_802DE92C:
    li 3, 0x1
    blr
L_802DE934:
    li 3, 0x0
    blr

.balign 4
.global fn_802DE93C

fn_802DE93C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_802DE998
    lwz 4, 0x4(3)
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_802DE96C
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x41820020 # beq .L_802DE988
L_802DE96C:
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820018 # bne .L_802DE990
    lwz 0, 0x8(3)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_802DE990
L_802DE988:
    li 3, 0x1
    blr
L_802DE990:
    li 3, 0x0
    blr
L_802DE998:
    li 3, 0x0
    blr

.balign 4
.global fn_802DE9A0

fn_802DE9A0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_802DE9FC
    lwz 4, 0x4(3)
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0x2
    .4byte 0x40820010 # bne .L_802DE9D0
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x41820020 # beq .L_802DE9EC
L_802DE9D0:
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820018 # bne .L_802DE9F4
    lwz 0, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802DE9F4
L_802DE9EC:
    li 3, 0x1
    blr
L_802DE9F4:
    li 3, 0x0
    blr
L_802DE9FC:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x128(3)
    lwz 3, 0x12c(3)
    slwi 0, 0, 2
    add 0, 3, 0
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802DEA24
    cmpwi 0, 0x6
    .4byte 0x4082000C # bne .L_802DEA2C
L_802DEA24:
    li 3, 0x1
    blr
L_802DEA2C:
    li 3, 0x0
    blr

.balign 4
.global fn_802DEA34

fn_802DEA34:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_802DEAB4
    lwz 4, 0x4(3)
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0x6
    .4byte 0x40820018 # bne .L_802DEA6C
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802DEA6C
    li 3, 0x1
    blr
L_802DEA6C:
    lwz 3, 0xc(4)
    lwz 4, 0x4(3)
    cmpwi 4, 0x6
    .4byte 0x40820018 # bne .L_802DEA90
    lwz 0, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802DEA90
    li 3, 0x1
    blr
L_802DEA90:
    cmpwi 4, 0x6
    .4byte 0x40820018 # bne .L_802DEAAC
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_802DEAAC
    li 3, 0x1
    blr
L_802DEAAC:
    li 3, 0x0
    blr
L_802DEAB4:
    li 3, 0x0
    blr

.balign 4
.global fn_802DEABC

fn_802DEABC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820058 # beq .L_802DEB20
    lwz 4, 0x4(3)
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820018 # bne .L_802DEAF4
    lwz 0, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_802DEAF4
    li 3, 0x1
    blr
L_802DEAF4:
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0x7
    .4byte 0x40820018 # bne .L_802DEB18
    lwz 0, 0x8(3)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_802DEB18
    li 3, 0x1
    blr
L_802DEB18:
    li 3, 0x0
    blr
L_802DEB20:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x128(3)
    lwz 3, 0x12c(3)
    slwi 0, 0, 2
    add 0, 3, 0
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_802DEB48
    cmpwi 0, 0x9
    .4byte 0x4082000C # bne .L_802DEB50
L_802DEB48:
    li 3, 0x1
    blr
L_802DEB50:
    li 3, 0x0
    blr

.balign 4
.global fn_802DEB58

fn_802DEB58:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802DEB70
    li 3, 0x0
    blr
L_802DEB70:
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    lwz 0, 0x4(3)
    cmpwi 0, 0x3
    .4byte 0x40820018 # bne .L_802DEB98
    lwz 0, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802DEB98
    li 3, 0x1
    blr
L_802DEB98:
    li 3, 0x0
    blr

.balign 4
.global fn_802DEBA0


# fn_802DEBA0() - no arguments. Returns false immediately unless the
# confirmed global mode flag `lbl_8053AAF8->0x7f` is set. Otherwise
# reads the CURRENT room/level record (`lbl_8053AAF8->0x4->0xc`, the
# same manager pointer `fn_802D800C` uses, but dereferenced directly
# rather than through an indexed table here - so `->0xc` is itself a
# single "current room" pointer, not just an array base) and checks
# its `+0x4` "room type" field: true if it's exactly 9 AND `+0x8`
# (a sub-type) is 3, OR if it's >= 13. Reads as "is the current room
# some specific late-stage/special room" - gates whether RUPY's
# update() (extab_8032c664.s, shared tail) forces itself inactive
# every frame; per this function's own early-out, that force-inactive
# only gets suppressed when the game is actually in the `0x7f` mode
# AND the room check passes.
fn_802DEBA0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802DEBB8
    li 3, 0x0
    blr
L_802DEBB8:
    lwz 4, 0x4(3)
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0x9
    .4byte 0x40820010 # bne .L_802DEBD8
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_802DEBE8
L_802DEBD8:
    lwz 3, 0xc(4)
    lwz 0, 0x4(3)
    cmpwi 0, 0xd
    .4byte 0x4180000C # blt .L_802DEBF0
L_802DEBE8:
    li 3, 0x1
    blr
L_802DEBF0:
    li 3, 0x0
    blr

.balign 4
.global fn_802DEBF8

fn_802DEBF8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802DEC10
    li 3, 0x0
    blr
L_802DEC10:
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    lwz 0, 0x4(3)
    cmpwi 0, 0x8
    .4byte 0x40820018 # bne .L_802DEC38
    lwz 0, 0x8(3)
    cmpwi 0, 0x3
    .4byte 0x4082000C # bne .L_802DEC38
    li 3, 0x1
    blr
L_802DEC38:
    li 3, 0x0
    blr

.balign 4
.global fn_802DEC40

fn_802DEC40:
    stwu 1, -0x20(1)
    mflr 0
    li 7, 0x8
    stw 0, 0x24(1)
    slwi 0, 4, 2
    srwi 4, 3, 31
    stmw 27, 0xc(1)
    mr 27, 5
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 29, 0x4(6)
    subfc 6, 7, 3
    srwi 6, 7, 31
    subi 3, 3, 0x7
    subfe 4, 4, 6
    lwz 31, 0xc(29)
    andc 30, 3, 4
    subfic 28, 0, 0x3c
    mr 5, 28
    li 3, 0x0
    li 4, 0xf
    bl __shl2i
    lwz 5, 0x18(31)
    li 6, -0x1
    lwz 0, 0x14(31)
    xor 9, 4, 6
    mulli 4, 5, 0x280
    lwz 5, 0xc(29)
    xor 8, 3, 6
    slwi 0, 0, 6
    add 3, 5, 4
    slwi 30, 30, 3
    add 0, 3, 0
    mr 4, 27
    add 7, 0, 30
    mr 5, 28
    lwz 0, 0x104c(7)
    li 3, 0x0
    lwz 6, 0x1048(7)
    and 0, 0, 9
    stw 0, 0x104c(7)
    and 0, 6, 8
    stw 0, 0x1048(7)
    bl __shl2i
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x18(31)
    lwz 6, 0x4(5)
    mulli 5, 0, 0x280
    lwz 0, 0x14(31)
    lwz 6, 0xc(6)
    slwi 0, 0, 6
    add 5, 6, 5
    add 0, 5, 0
    add 6, 0, 30
    lwz 0, 0x104c(6)
    lwz 5, 0x1048(6)
    or 0, 0, 4
    stw 0, 0x104c(6)
    or 0, 5, 3
    stw 0, 0x1048(6)
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.balign 4
.global fn_802DED40

fn_802DED40:
    stwu 1, -0x20(1)
    mflr 0
    li 6, 0x8
    srwi 5, 3, 31
    stw 0, 0x24(1)
    slwi 0, 4, 2
    subfc 4, 6, 3
    srwi 6, 6, 31
    stw 31, 0x1c(1)
    subi 4, 3, 0x7
    subfe 6, 5, 6
    li 3, 0x0
    stw 30, 0x18(1)
    andc 31, 4, 6
    li 4, 0xf
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    subfic 28, 0, 0x3c
    mr 5, 28
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 29, 0x4(7)
    lwz 30, 0xc(29)
    bl __shl2i
    lwz 7, 0x18(30)
    slwi 0, 31, 3
    lwz 6, 0x14(30)
    mr 5, 28
    mulli 7, 7, 0x280
    lwz 8, 0xc(29)
    slwi 6, 6, 6
    add 7, 8, 7
    add 6, 7, 6
    add 6, 6, 0
    lwz 0, 0x1048(6)
    lwz 6, 0x104c(6)
    and 3, 3, 0
    and 4, 4, 6
    bl __shr2u
    lwz 0, 0x24(1)
    mr 3, 4
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.balign 4
.global fn_802DEDFC

fn_802DEDFC:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(5)
    lwz 3, 0xc(3)
    bl fn_802DCE5C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

