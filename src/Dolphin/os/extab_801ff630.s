# Fresh-gap-hunt batch 22 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008FD4
etb_80008FD4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008FD4, 8

.section extabindex, "a"
.balign 4
.global eti_80016798
eti_80016798:
    .4byte fn_801FF674
    .4byte 0x00000024
    .4byte etb_80008FD4
.size eti_80016798, 12

.text
.balign 4
.global fn_801FF630
.global fn_801FF654
.global fn_801FF65C
.global fn_801FF664
.global fn_801FF66C
.global fn_801FF674
.global fn_801FF698
.global fn_801FF6A0
.global fn_801FF6A8
.global fn_801FF6B0
.global fn_801FF6B8
.global fn_801FF6C0
.global fn_801FF6C8
.global fn_801FF6D0
.global fn_801FF6D8
.global fn_801FF6E0
.global fn_801FF6E8
.global fn_801FF6F0
.global fn_801FF704
.global fn_801FF720
.global fn_801FF728
.global fn_801FF730
.global fn_801FF738

fn_801FF630:
    lwz 5, 0x0(4)
    lwz 0, 0x4(4)
    stw 5, 0x70(3)
    lwz 5, 0x8(4)
    stw 0, 0x74(3)
    lwz 0, 0xc(4)
    stw 5, 0x78(3)
    stw 0, 0x7c(3)
    blr

fn_801FF654:
    addi 3, 3, 0x60
    blr

fn_801FF65C:
    addi 3, 3, 0x70
    blr

fn_801FF664:
    stw 4, 0x110(3)
    blr

fn_801FF66C:
    stw 4, 0x170(3)
    blr

fn_801FF674:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl GetRoomConfigRecord
    bl fn_802D39FC
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801FF698:
    stw 4, 0x16c(3)
    blr

fn_801FF6A0:
    stw 4, 0x190(3)
    blr

fn_801FF6A8:
    stw 4, 0xc0(3)
    blr

fn_801FF6B0:
    stw 4, 0x18c(3)
    blr

fn_801FF6B8:
    stb 4, 0x1a8(3)
    blr

fn_801FF6C0:
    stw 4, 0x118(3)
    blr

fn_801FF6C8:
    stw 4, 0x114(3)
    blr

fn_801FF6D0:
    stw 4, 0x90(3)
    blr

fn_801FF6D8:
    stw 4, 0x8(3)
    blr

fn_801FF6E0:
    stw 4, 0x4(3)
    blr

fn_801FF6E8:
    stw 4, 0x1a0(3)
    blr

fn_801FF6F0:
    psq_l 1, 0x0(4), 0, 0
    lfs 0, 0x8(4)
    psq_st 1, 0x24(3), 0, 0
    stfs 0, 0x2c(3)
    blr

fn_801FF704:
    psq_l 1, 0x0(4), 0, 0
    lfs 0, 0x8(4)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
    psq_st 1, 0x18(3), 0, 0
    stfs 0, 0x20(3)
    blr

fn_801FF720:
    stw 4, 0x19c(3)
    blr

fn_801FF728:
    stw 4, 0x198(3)
    blr

fn_801FF730:
    addi 3, 3, 0xc
    blr

fn_801FF738:
    li 0, 0x1
    stb 0, 0x31(3)
    blr

