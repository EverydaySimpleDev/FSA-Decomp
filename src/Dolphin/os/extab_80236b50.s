.section extab, "a"
.balign 4
.global etb_8000AE58
etb_8000AE58:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AE58, 8

.section extabindex, "a"
.balign 4
.global eti_80019090
eti_80019090:
    .4byte fn_80236B50
    .4byte 0x0000009C
    .4byte etb_8000AE58
.size eti_80019090, 12

# fn_80236B50 - same "per-player capability predicate" template as
# fn_80230188 (see [[project_fsa_player_target_helper_decoded]]). Delegates
# to fn_80270A8C(playerObj) when playerObj->0xcac is set; defaults to TRUE
# (1) when unset, same polarity as fn_8022F478.
.text
.balign 4
.global fn_80236B50

fn_80236B50:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_80236B70
    li 3, 0x1
    .4byte 0x48000070 # b .L_80236BDC
L_80236B70:
    .4byte 0x4082000C # bne .L_80236B7C
    li 0, 0x0
    .4byte 0x48000044 # b .L_80236BBC
L_80236B7C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_80236B8C
    li 0, 0x0
    .4byte 0x48000034 # b .L_80236BBC
L_80236B8C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_80236B9C
    li 0, 0x0
    .4byte 0x48000024 # b .L_80236BBC
L_80236B9C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_80236BB8
    li 0, 0x0
    .4byte 0x48000008 # b .L_80236BBC
L_80236BB8:
    lbz 0, 0xcac(4)
L_80236BBC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_80236BD8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80270A8C
    .4byte 0x48000008 # b .L_80236BDC
L_80236BD8:
    li 3, 0x1
L_80236BDC:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

