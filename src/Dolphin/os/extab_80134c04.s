.section extab, "a"
.balign 4
.global etb_8000695C
etb_8000695C:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_8000695C, 8

.section extabindex, "a"
.balign 4
.global eti_80013198
eti_80013198:
    .4byte fn_80134C04
    .4byte 0x000000BC
    .4byte etb_8000695C
.size eti_80013198, 12

# fn_80134C04() - a startup-time device/controller-type detection helper,
# called from main()'s init sequence region (found while sweeping the
# core-systems gap - see project_fsa_core_systems_gap.md). Resets a global
# device-status object (`lbl_8053A900`, ->0x84=->0x88=-1), then repeatedly
# calls fn_8008C308(100) (likely a short delay/wait) + fn_8008B8B4(device,
# &localBuf, 0) (a device-type query) and compares the result against
# successive halfword entries of a NUL-terminated lookup table
# (`lbl_804655FC`, likely known device/peripheral type IDs), advancing an
# index on a match or resetting to 0 otherwise, looping until the table
# hits its terminator. Resets the device object's ->0x84/->0x88 back to
# 0/-1 once done. Not yet decompiled in full semantic detail (fn_8008C308/
# fn_8008B8B4 not explored), but structurally this is a retry-loop that
# waits for/identifies a connected peripheral against a known-ID table.
.text
.balign 4
.global fn_80134C04

fn_80134C04:
    stwu 1, -0x20(1)
    mflr 0
    li 3, 0xc8
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    bl fn_8008C308
    .4byte 0x808D8D40 # lwz r4, lbl_8053A900@sda21(r0)
    li 0, -0x1
    lis 3, lbl_804655FC@ha
    stw 0, 0x84(4)
    addi 31, 3, lbl_804655FC@l
    stw 0, 0x88(4)
    .4byte 0x48000040 # b .L_80134C80
L_80134C44:
    li 3, 0x64
    bl fn_8008C308
    .4byte 0x806D8D40 # lwz r3, lbl_8053A900@sda21(r0)
    addi 4, 1, 0x8
    li 5, 0x0
    bl fn_8008B8B4
    lwz 3, 0x8(1)
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80134C80
    lhzx 0, 31, 30
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_80134C7C
    addi 29, 29, 0x1
    .4byte 0x48000008 # b .L_80134C80
L_80134C7C:
    li 29, 0x0
L_80134C80:
    slwi 30, 29, 1
    lhzx 0, 31, 30
    cmplwi 0, 0x0
    .4byte 0x4082FFB8 # bne .L_80134C44
    .4byte 0x808D8D40 # lwz r4, lbl_8053A900@sda21(r0)
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x84(4)
    stw 0, 0x88(4)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

