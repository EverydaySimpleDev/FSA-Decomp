# Unnamed actor (vtable lbl_804A3698, ctor fn_80200764 - FourCC not
# resolved, see project_fsa_actor_cluster_80203xxx.md) cluster, part
# 1/5 (444B). A room-config/terrain gate check - uses the confirmed
# terrain/hazard classifier fn_8022461C, fn_80226850 (secondary
# terrain code), and the per-room config accessor GetRoomConfigRecord - same
# general shape as the universal shared-Actor default fn_801F132C,
# but implemented as this actor's own override.
.section extab, "a"
.balign 4
.global etb_80007BC4
etb_80007BC4:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80007BC4, 8

.section extabindex, "a"
.balign 4
.global eti_80014B24
eti_80014B24:
    .4byte fn_801B27DC
    .4byte 0x000001BC
    .4byte etb_80007BC4
.size eti_80014B24, 12

.text
.balign 4
.global fn_801B27DC

fn_801B27DC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 5
    mr 3, 29
    bl fn_8022461C
    clrlwi 30, 3, 16
    mr 3, 29
    mr 4, 31
    bl fn_80226850
    clrlwi 3, 3, 16
    subi 0, 3, 0x230
    cmplwi 0, 0x1
    .4byte 0x4081000C # ble .L_801B282C
    cmpwi 3, 0x234
    .4byte 0x4082000C # bne .L_801B2834
L_801B282C:
    li 3, 0x0
    .4byte 0x4800014C # b .L_801B297C
L_801B2834:
    cmpwi 30, 0x0
    .4byte 0x41820140 # beq .L_801B2978
    cmpwi 30, 0x4
    .4byte 0x41820138 # beq .L_801B2978
    cmpwi 30, 0x5
    .4byte 0x41820130 # beq .L_801B2978
    cmpwi 30, 0x6
    .4byte 0x41820128 # beq .L_801B2978
    cmpwi 30, 0x7
    .4byte 0x41820120 # beq .L_801B2978
    cmpwi 30, 0x2
    .4byte 0x41820118 # beq .L_801B2978
    cmpwi 30, 0x3
    .4byte 0x41820110 # beq .L_801B2978
    cmpwi 30, 0x50
    .4byte 0x41820108 # beq .L_801B2978
    cmpwi 30, 0xe
    .4byte 0x41820100 # beq .L_801B2978
    cmpwi 30, 0xc
    .4byte 0x418200F8 # beq .L_801B2978
    cmpwi 30, 0x27
    .4byte 0x418200F0 # beq .L_801B2978
    cmpwi 30, 0x28
    .4byte 0x418200E8 # beq .L_801B2978
    cmpwi 30, 0x29
    .4byte 0x418200E0 # beq .L_801B2978
    cmpwi 30, 0x2a
    .4byte 0x418200D8 # beq .L_801B2978
    cmpwi 30, 0x2b
    .4byte 0x418200D0 # beq .L_801B2978
    cmpwi 30, 0x2c
    .4byte 0x418200C8 # beq .L_801B2978
    cmpwi 30, 0x2d
    .4byte 0x418200C0 # beq .L_801B2978
    cmpwi 30, 0x2e
    .4byte 0x418200B8 # beq .L_801B2978
    cmpwi 30, 0x2f
    .4byte 0x418200B0 # beq .L_801B2978
    cmpwi 30, 0x20
    .4byte 0x418200A8 # beq .L_801B2978
    cmpwi 30, 0xd
    .4byte 0x418200A0 # beq .L_801B2978
    cmpwi 30, 0x39
    .4byte 0x41820098 # beq .L_801B2978
    cmpwi 30, 0x3a
    .4byte 0x41820090 # beq .L_801B2978
    cmpwi 30, 0x3b
    .4byte 0x41820088 # beq .L_801B2978
    cmpwi 30, 0x4c
    .4byte 0x41820080 # beq .L_801B2978
    cmpwi 30, 0x4d
    .4byte 0x41820078 # beq .L_801B2978
    cmpwi 30, 0x4e
    .4byte 0x41820070 # beq .L_801B2978
    cmpwi 30, 0x4f
    .4byte 0x41820068 # beq .L_801B2978
    cmpwi 30, 0x24
    .4byte 0x41820060 # beq .L_801B2978
    cmpwi 30, 0x25
    .4byte 0x40820018 # bne .L_801B2938
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000048 # b .L_801B297C
L_801B2938:
    cmpwi 30, 0x26
    .4byte 0x4082001C # bne .L_801B2958
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    subfic 0, 0, 0x1
    cntlzw 0, 0
    extrwi 3, 0, 8, 19
    .4byte 0x48000028 # b .L_801B297C
L_801B2958:
    cmpwi 30, 0x22
    .4byte 0x40820014 # bne .L_801B2970
    bl GetRoomConfigRecord
    lbz 0, 0x170(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801B2978
L_801B2970:
    li 3, 0x1
    .4byte 0x48000008 # b .L_801B297C
L_801B2978:
    li 3, 0x0
L_801B297C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

