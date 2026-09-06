# fn_8040F35C - actor@lbl_804B0FE0: PTMF-dispatched method (0x50)
#
# Attempted real-C++ promotion: retail schedules the 2 float SDA
# constant loads BEFORE the integer arg setup (li r4,0x14; li r5,0)
# and before the prologue's r31 save; MWCC always moves the float
# loads AFTER the integer setup regardless of source order. Same
# "float load reordering" wall as fn_8014DCD4/fn_801840A0 - deferred
# without further attempts given the confirmed precedent.
.section extab, "a"
.balign 4
.global etb_800103B4
etb_800103B4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800103B4, 8

.section extabindex, "a"
.balign 4
.global eti_80020224
eti_80020224:
    .4byte fn_8040F35C
    .4byte 0x00000050
    .4byte etb_800103B4
.size eti_80020224, 12

.text
.balign 4
.global fn_8040F35C

fn_8040F35C:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0220900 # lfs f1, lbl_805438A0@sda21(r0)
    li 4, 0x14
    stw 0, 0x14(1)
    li 5, 0x0
    .4byte 0xC04208F8 # lfs f2, lbl_80543898@sda21(r0)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x11c(3)
    bl fn_80402940
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8040F398
    li 0, 0xb
    stw 0, 0x350(31)
L_8040F398:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
