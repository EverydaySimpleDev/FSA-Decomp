# 901KB-gap non-actor manager block: 5 function(s), 320 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_8000EE78
etb_8000EE78:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EE78, 8

.global etb_8000EE80
etb_8000EE80:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EE80, 8

.global etb_8000EE88
etb_8000EE88:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EE88, 8

.global etb_8000EE90
etb_8000EE90:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EE90, 8

.global etb_8000EE98
etb_8000EE98:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000EE98, 8

.section extabindex, "a"
.balign 4
.global eti_8001ECB8
eti_8001ECB8:
    .4byte fn_8039003C
    .4byte 0x0000004C
    .4byte etb_8000EE78
.size eti_8001ECB8, 12

.global eti_8001ECC4
eti_8001ECC4:
    .4byte fn_80390088
    .4byte 0x00000040
    .4byte etb_8000EE80
.size eti_8001ECC4, 12

.global eti_8001ECD0
eti_8001ECD0:
    .4byte fn_803900C8
    .4byte 0x00000040
    .4byte etb_8000EE88
.size eti_8001ECD0, 12

.global eti_8001ECDC
eti_8001ECDC:
    .4byte fn_80390108
    .4byte 0x00000034
    .4byte etb_8000EE90
.size eti_8001ECDC, 12

.global eti_8001ECE8
eti_8001ECE8:
    .4byte fn_8039013C
    .4byte 0x00000040
    .4byte etb_8000EE98
.size eti_8001ECE8, 12

.text
.balign 4
.global fn_8039003C
.global fn_80390088
.global fn_803900C8
.global fn_80390108
.global fn_8039013C

fn_8039003C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x800D91C0 # lwz r0, lbl_8053AD80@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_80390074
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8039006C
    bl fn_8040F474
    .4byte 0x48000010 # b .L_80390078
L_8039006C:
    bl fn_80414F6C
    .4byte 0x48000008 # b .L_80390078
L_80390074:
    li 3, 0x6
L_80390078:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80390088:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_803900B0
    .4byte 0x806D9238 # lwz r3, lbl_8053ADF8@sda21(r0)
    bl fn_8040F480
    .4byte 0x4800000C # b .L_803900B8
L_803900B0:
    .4byte 0x806D9240 # lwz r3, lbl_8053AE00@sda21(r0)
    bl fn_80416BD0
L_803900B8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803900C8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_803900F0
    .4byte 0x806D9238 # lwz r3, lbl_8053ADF8@sda21(r0)
    bl fn_804108B4
    .4byte 0x4800000C # b .L_803900F8
L_803900F0:
    .4byte 0x806D9240 # lwz r3, lbl_8053AE00@sda21(r0)
    bl fn_804170B0
L_803900F8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80390108:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8039012C
    .4byte 0x806D9238 # lwz r3, lbl_8053ADF8@sda21(r0)
    bl fn_804111C4
L_8039012C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8039013C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80390164
    .4byte 0x806D9238 # lwz r3, lbl_8053ADF8@sda21(r0)
    bl fn_80411230
    .4byte 0x4800000C # b .L_8039016C
L_80390164:
    .4byte 0x806D9240 # lwz r3, lbl_8053AE00@sda21(r0)
    bl fn_804170EC
L_8039016C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

