.section extab, "a"
.balign 4
.global etb_8000AC98
etb_8000AC98:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AC98, 8

.section extabindex, "a"
.balign 4
.global eti_80018DF0
eti_80018DF0:
    .4byte fn_80234004
    .4byte 0x0000009C
    .4byte etb_8000AC98
.size eti_80018DF0, 12

# fn_80234004 - standard "per-player capability predicate" delegate (see
# [[project_fsa_player_target_helper_decoded]]): forwards to
# fn_80240888 (the "get my 0x1224 value, respecting the link" redirect)
# when playerObj->0xcac is set; defaults to 0 when unset.
.text
.balign 4
.global fn_80234004

fn_80234004:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80234024
    li 3, 0x0
    .4byte 0x48000070 # b .L_80234090
L_80234024:
    .4byte 0x4082000C # bne .L_80234030
    li 0, 0x0
    .4byte 0x48000044 # b .L_80234070
L_80234030:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80234040
    li 0, 0x0
    .4byte 0x48000034 # b .L_80234070
L_80234040:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80234050
    li 0, 0x0
    .4byte 0x48000024 # b .L_80234070
L_80234050:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023406C
    li 0, 0x0
    .4byte 0x48000008 # b .L_80234070
L_8023406C:
    lbz 0, 0xcac(4)
L_80234070:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023408C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80240888
    .4byte 0x48000008 # b .L_80234090
L_8023408C:
    li 3, 0x0
L_80234090:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

