.section extab, "a"
.balign 4
.global etb_8000AAB0
etb_8000AAB0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAB0, 8

.section extabindex, "a"
.balign 4
.global eti_80018B14
eti_80018B14:
    .4byte fn_8022F514
    .4byte 0x0000009C
    .4byte etb_8000AAB0
.size eti_80018B14, 12

# fn_8022F514 - standard "per-player capability predicate" delegate (see
# [[project_fsa_player_target_helper_decoded]]): forwards to
# Player_IsLinked (the "am I linked to another player" check) when
# playerObj->0xcac is set; defaults to false when unset.
.text
.balign 4
.global fn_8022F514

fn_8022F514:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022F534
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022F5A0
L_8022F534:
    .4byte 0x4082000C # bne .L_8022F540
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022F580
L_8022F540:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022F550
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022F580
L_8022F550:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022F560
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022F580
L_8022F560:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022F57C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F580
L_8022F57C:
    lbz 0, 0xcac(4)
L_8022F580:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022F59C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_IsLinked
    .4byte 0x48000008 # b .L_8022F5A0
L_8022F59C:
    li 3, 0x0
L_8022F5A0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

