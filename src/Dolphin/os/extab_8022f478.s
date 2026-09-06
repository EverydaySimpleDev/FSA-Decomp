.section extab, "a"
.balign 4
.global etb_8000AAA8
etb_8000AAA8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAA8, 8

.section extabindex, "a"
.balign 4
.global eti_80018B08
eti_80018B08:
    .4byte fn_8022F478
    .4byte 0x0000009C
    .4byte etb_8000AAA8
.size eti_80018B08, 12

# fn_8022F478 - same "per-player capability predicate" template as
# fn_80230188 (see [[project_fsa_player_target_helper_decoded]]). Delegates
# to fn_80240670(playerObj) when playerObj->0xcac is set; DEFAULTS TO TRUE
# (1) when unset - the opposite polarity from fn_80230188/fn_8022DCD8,
# meaning this specific capability is assumed available unless the deeper
# check explicitly clears it.
.text
.balign 4
.global fn_8022F478

fn_8022F478:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022F498
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022F504
L_8022F498:
    .4byte 0x4082000C # bne .L_8022F4A4
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022F4E4
L_8022F4A4:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022F4B4
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022F4E4
L_8022F4B4:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022F4C4
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022F4E4
L_8022F4C4:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022F4E0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F4E4
L_8022F4E0:
    lbz 0, 0xcac(4)
L_8022F4E4:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022F500
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80240670
    .4byte 0x48000008 # b .L_8022F504
L_8022F500:
    li 3, 0x1
L_8022F504:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

