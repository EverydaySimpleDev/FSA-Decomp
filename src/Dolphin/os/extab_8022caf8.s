.section extab, "a"
.balign 4
.global etb_8000A978
etb_8000A978:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A978, 8

.section extabindex, "a"
.balign 4
.global eti_80018940
eti_80018940:
    .4byte fn_8022CAF8
    .4byte 0x0000009C
    .4byte etb_8000A978
.size eti_80018940, 12

# fn_8022CAF8 - standard "per-player capability predicate" delegate (see
# [[project_fsa_player_target_helper_decoded]]): forwards to
# fn_802486A0 (the "resolve my link-group size/ID" function) when
# playerObj->0xcac is set; defaults to 0 when unset. This is the
# "get my group ID" entry point referenced by fn_8022EA0C/fn_80240670's
# group-counting logic.
.text
.balign 4
.global fn_8022CAF8

fn_8022CAF8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022CB18
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022CB84
L_8022CB18:
    .4byte 0x4082000C # bne .L_8022CB24
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022CB64
L_8022CB24:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022CB34
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022CB64
L_8022CB34:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022CB44
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022CB64
L_8022CB44:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022CB60
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022CB64
L_8022CB60:
    lbz 0, 0xcac(4)
L_8022CB64:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022CB80
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_802486A0
    .4byte 0x48000008 # b .L_8022CB84
L_8022CB80:
    li 3, 0x0
L_8022CB84:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

