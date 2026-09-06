/*
 * TINK (vtable lbl_804A51E4) - fn_801E2D88, unconditionally tail-called
 * at the end of fn_801DEA70. Final per-frame "resolve idle/wander
 * velocity" step: picks a preset offset pair for this->0x60/0x64/0x68/
 * 0x6c by state (0/0xc/0xe get fixed constants; other states use the
 * fn_801E1DB4 sub-state predicate to pick between two more preset
 * pairs), then a fn_801D0DD4(this) gate optionally nudges 0x64/0x6c by a
 * fixed jitter constant, and always commits the result into
 * this->0x70-0x7c (the same position/velocity quad used throughout
 * TINK's other functions, e.g. fn_801DE12C).
 */
.section extab, "a"
.balign 4
.global etb_800089C0
etb_800089C0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800089C0, 8

.section extabindex, "a"
.balign 4
.global eti_80015ED4
eti_80015ED4:
    .4byte fn_801E2D88
    .4byte 0x0000015C
    .4byte etb_800089C0
.size eti_80015ED4, 12

.text
.balign 4
.global fn_801E2D88

fn_801E2D88:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0xc
    .4byte 0x4182005C # beq .L_801E2E00
    .4byte 0x40800010 # bge .L_801E2DB8
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801E2DC4
    .4byte 0x4800007C # b .L_801E2E30
L_801E2DB8:
    cmpwi 0, 0xe
    .4byte 0x41820008 # beq .L_801E2DC4
    .4byte 0x48000070 # b .L_801E2E30
L_801E2DC4:
    .4byte 0xC022C540 # lfs f1, lbl_8053F4E0@sda21(r0)
    .4byte 0xC002C538 # lfs f0, lbl_8053F4D8@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    .4byte 0x480000D4 # b .L_801E2ED0
L_801E2E00:
    .4byte 0xC042C54C # lfs f2, lbl_8053F4EC@sda21(r0)
    .4byte 0xC022C530 # lfs f1, lbl_8053F4D0@sda21(r0)
    stfs 2, 0x60(31)
    .4byte 0xC002C550 # lfs f0, lbl_8053F4F0@sda21(r0)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 2, 0x70(31)
    stfs 0, 0x74(31)
    stfs 1, 0x78(31)
    stfs 1, 0x7c(31)
    .4byte 0x480000A4 # b .L_801E2ED0
L_801E2E30:
    mr 3, 31
    bl fn_801E1DB4
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801E2E64
    .4byte 0xC022C554 # lfs f1, lbl_8053F4F4@sda21(r0)
    .4byte 0xC002C558 # lfs f0, lbl_8053F4F8@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C55C # lfs f1, lbl_8053F4FC@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C560 # lfs f0, lbl_8053F500@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
    .4byte 0x48000024 # b .L_801E2E84
L_801E2E64:
    .4byte 0xC022C54C # lfs f1, lbl_8053F4EC@sda21(r0)
    .4byte 0xC002C564 # lfs f0, lbl_8053F504@sda21(r0)
    stfs 1, 0x60(31)
    .4byte 0xC022C530 # lfs f1, lbl_8053F4D0@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002C560 # lfs f0, lbl_8053F500@sda21(r0)
    stfs 1, 0x68(31)
    stfs 0, 0x6c(31)
L_801E2E84:
    mr 3, 31
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801E2EB0
    lfs 0, 0x64(31)
    .4byte 0xC022C560 # lfs f1, lbl_8053F500@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0x64(31)
    lfs 0, 0x6c(31)
    fadds 0, 0, 1
    stfs 0, 0x6c(31)
L_801E2EB0:
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
L_801E2ED0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

