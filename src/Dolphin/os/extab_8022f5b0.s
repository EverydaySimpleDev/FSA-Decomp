# Fresh-gap-hunt batch 14 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000AAB8
etb_8000AAB8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAB8, 8

.global etb_8000AAC0
etb_8000AAC0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAC0, 8

.global etb_8000AAC8
etb_8000AAC8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAC8, 8

.global etb_8000AAD0
etb_8000AAD0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAD0, 8

.global etb_8000AAD8
etb_8000AAD8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAD8, 8

.global etb_8000AAE0
etb_8000AAE0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAE0, 8

.global etb_8000AAE8
etb_8000AAE8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAE8, 8

.section extabindex, "a"
.balign 4
.global eti_80018B20
eti_80018B20:
    .4byte fn_8022F5B0
    .4byte 0x0000009C
    .4byte etb_8000AAB8
.size eti_80018B20, 12

.global eti_80018B2C
eti_80018B2C:
    .4byte fn_8022F64C
    .4byte 0x0000009C
    .4byte etb_8000AAC0
.size eti_80018B2C, 12

.global eti_80018B38
eti_80018B38:
    .4byte fn_8022F6E8
    .4byte 0x0000009C
    .4byte etb_8000AAC8
.size eti_80018B38, 12

.global eti_80018B44
eti_80018B44:
    .4byte fn_8022F784
    .4byte 0x0000009C
    .4byte etb_8000AAD0
.size eti_80018B44, 12

.global eti_80018B50
eti_80018B50:
    .4byte fn_8022F820
    .4byte 0x0000008C
    .4byte etb_8000AAD8
.size eti_80018B50, 12

.global eti_80018B5C
eti_80018B5C:
    .4byte fn_8022F8AC
    .4byte 0x0000009C
    .4byte etb_8000AAE0
.size eti_80018B5C, 12

.global eti_80018B68
eti_80018B68:
    .4byte fn_8022F948
    .4byte 0x0000009C
    .4byte etb_8000AAE8
.size eti_80018B68, 12

.text
.balign 4
.global fn_8022F5B0
.global fn_8022F64C
.global fn_8022F6E8
.global fn_8022F784
.global fn_8022F820
.global fn_8022F8AC
.global fn_8022F948

fn_8022F5B0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022F5D0
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022F63C
L_8022F5D0:
    .4byte 0x4082000C # bne .L_8022F5DC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022F61C
L_8022F5DC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022F5EC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022F61C
L_8022F5EC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022F5FC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022F61C
L_8022F5FC:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022F618
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F61C
L_8022F618:
    lbz 0, 0xcac(4)
L_8022F61C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022F638
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_8024C35C
    .4byte 0x48000008 # b .L_8022F63C
L_8022F638:
    li 3, 0x0
L_8022F63C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022F64C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022F66C
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022F6D8
L_8022F66C:
    .4byte 0x4082000C # bne .L_8022F678
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022F6B8
L_8022F678:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022F688
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022F6B8
L_8022F688:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022F698
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022F6B8
L_8022F698:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022F6B4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F6B8
L_8022F6B4:
    lbz 0, 0xcac(4)
L_8022F6B8:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022F6D4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80240DCC
    .4byte 0x48000008 # b .L_8022F6D8
L_8022F6D4:
    li 3, 0x0
L_8022F6D8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022F6E8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022F708
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022F774
L_8022F708:
    .4byte 0x4082000C # bne .L_8022F714
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022F754
L_8022F714:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022F724
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022F754
L_8022F724:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022F734
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022F754
L_8022F734:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022F750
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F754
L_8022F750:
    lbz 0, 0xcac(5)
L_8022F754:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022F770
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8025EF68
    .4byte 0x48000008 # b .L_8022F774
L_8022F770:
    li 3, 0x0
L_8022F774:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022F784:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80ED90D0 # lwz r7, lbl_8053AC90@sda21(r0)
    cmplwi 7, 0x0
    .4byte 0x4082000C # bne .L_8022F7A4
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022F810
L_8022F7A4:
    .4byte 0x4082000C # bne .L_8022F7B0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022F7F0
L_8022F7B0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022F7C0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022F7F0
L_8022F7C0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022F7D0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022F7F0
L_8022F7D0:
    slwi 0, 3, 2
    add 6, 7, 0
    lwz 6, 0x4(6)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022F7EC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F7F0
L_8022F7EC:
    lbz 0, 0xcac(6)
L_8022F7F0:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022F80C
    slwi 0, 3, 2
    add 3, 7, 0
    lwz 3, 0x4(3)
    bl fn_8025EDD4
    .4byte 0x48000008 # b .L_8022F810
L_8022F80C:
    li 3, 0x0
L_8022F810:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022F820:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80ED90D0 # lwz r7, lbl_8053AC90@sda21(r0)
    cmplwi 7, 0x0
    .4byte 0x41820068 # beq .L_8022F89C
    .4byte 0x4082000C # bne .L_8022F844
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022F884
L_8022F844:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022F854
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022F884
L_8022F854:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022F864
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022F884
L_8022F864:
    slwi 0, 3, 2
    add 6, 7, 0
    lwz 6, 0x4(6)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022F880
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F884
L_8022F880:
    lbz 0, 0xcac(6)
L_8022F884:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_8022F89C
    slwi 0, 3, 2
    add 3, 7, 0
    lwz 3, 0x4(3)
    bl fn_8025EE0C
L_8022F89C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022F8AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022F8CC
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022F938
L_8022F8CC:
    .4byte 0x4082000C # bne .L_8022F8D8
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022F918
L_8022F8D8:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022F8E8
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022F918
L_8022F8E8:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022F8F8
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022F918
L_8022F8F8:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022F914
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F918
L_8022F914:
    lbz 0, 0xcac(5)
L_8022F918:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022F934
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8025EE34
    .4byte 0x48000008 # b .L_8022F938
L_8022F934:
    li 3, 0x0
L_8022F938:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022F948:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80CD90D0 # lwz r6, lbl_8053AC90@sda21(r0)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8022F968
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022F9D4
L_8022F968:
    .4byte 0x4082000C # bne .L_8022F974
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022F9B4
L_8022F974:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022F984
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022F9B4
L_8022F984:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022F994
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022F9B4
L_8022F994:
    slwi 0, 3, 2
    add 5, 6, 0
    lwz 5, 0x4(5)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022F9B0
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022F9B4
L_8022F9B0:
    lbz 0, 0xcac(5)
L_8022F9B4:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022F9D0
    slwi 0, 3, 2
    add 3, 6, 0
    lwz 3, 0x4(3)
    bl fn_8025EE48
    .4byte 0x48000008 # b .L_8022F9D4
L_8022F9D0:
    li 3, 0x0
L_8022F9D4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

