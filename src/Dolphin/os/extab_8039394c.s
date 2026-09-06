# fn_8039394C - actor@lbl_804AF490: coordinator function (0x94)
# Directly calls the three preceding helpers (fn_80393228, fn_80391F58,
# fn_80391D44) plus fn_80230188.
.section extab, "a"
.balign 4
.global etb_8000EF60
etb_8000EF60:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000EF60, 8

.section extabindex, "a"
.balign 4
.global eti_8001EDB4
eti_8001EDB4:
    .4byte fn_8039394C
    .4byte 0x00000094
    .4byte etb_8000EF60
.size eti_8001EDB4, 12

.text
.balign 4
.global fn_8039394C

fn_8039394C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 4, 0x234(3)
    cmpwi 4, 0x0
    .4byte 0x4182000C # beq .L_80393974
    cmpwi 4, 0x4
    .4byte 0x40820010 # bne .L_80393980
L_80393974:
    mr 3, 31
    bl fn_80393228
    .4byte 0x48000050 # b .L_803939CC
L_80393980:
    cmpwi 4, 0x1
    .4byte 0x41820048 # beq .L_803939CC
    cmpwi 4, 0x2
    .4byte 0x4082000C # bne .L_80393998
    bl fn_80391F58
    .4byte 0x48000038 # b .L_803939CC
L_80393998:
    cmpwi 4, 0x3
    .4byte 0x41820018 # beq .L_803939B4
    subi 0, 4, 0x5
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_803939B4
    cmpwi 4, 0x7
    .4byte 0x4082001C # bne .L_803939CC
L_803939B4:
    lwz 3, 0x238(31)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_803939CC
    mr 3, 31
    bl fn_80391D44
L_803939CC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

