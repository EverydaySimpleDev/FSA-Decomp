#include "types.h"

extern f32 lbl_8045E678;
extern f32 lbl_8045E688;
extern f32 lbl_8045E69C;
extern f32 lbl_8045E6B0;
extern f32 lbl_8045E6E4;
extern f32 lbl_8045E718;
extern f32 lbl_8045E740;
extern f32 lbl_8045E770;
extern f32 lbl_8045E7A0;
extern f32 lbl_80498E98;
extern f32 lbl_80498EF8;
extern f32 lbl_80498F48;
extern f32 lbl_80498FA8;
extern f32 lbl_8052E844;
extern f32 lbl_8052E850;
extern f32 lbl_80539D80;
extern f32 lbl_8053A8A8;
extern f32 lbl_8053A8AC;
extern f32 lbl_8053A8B0;
extern f32 lbl_8053A8B4;
extern f32 lbl_8053A8B8;
extern f32 lbl_8053A8BC;
extern f32 lbl_8053A8C0;
extern f32 lbl_8053A8C4;
extern f32 lbl_8053A8C8;
extern f32 lbl_8053A8CC;
extern f32 lbl_8053B740;
extern f32 lbl_8053B744;
extern f32 lbl_8053B750;
extern f32 lbl_8053B758;
extern f32 lbl_8053B760;
extern f32 lbl_8053B768;

extern void DCInvalidateRange(void);
extern void OSCancelThread(void);
extern void OSCreateThread(void);
extern void OSDetachThread(void);
extern void OSGetArenaHi(void);
extern void OSGetArenaLo(void);
extern void OSInitAlloc(void);
extern void OSInitMessageQueue(void);
extern void OSInitMutex(void);
extern void OSIsThreadTerminated(void);
extern void OSLockMutex(void);
extern void OSSetArenaHi(void);
extern void OSSetArenaLo(void);
extern void OSUnlockMutex(void);
extern void fn_80028DA0(void);
extern void fn_8007BC7C(void);
extern void fn_8007BD24(void);
extern void fn_8007C640(void);
extern void fn_8007E23C(void);
extern void fn_8007E6F4(void);
extern void fn_8007E75C(void);
extern void fn_80080828(void);
extern void fn_80086E2C(void);
extern void fn_80086E44(void);
extern void fn_80086EDC(void);
extern void fn_80086F44(void);
extern void fn_80086F58(void);
extern void fn_80087010(void);
extern void fn_80087298(void);
extern void fn_80088FA8(void);
extern void fn_800890B0(void);
extern void fn_8008A324(void);
extern void memcpy(void);

ASM void fn_800834E8(void);
ASM void fn_8008353C(void);
ASM void fn_80083660(void);
ASM void fn_80083774(void);
ASM void fn_8008381C(void);
ASM void fn_8008382C(void);
ASM void fn_8008383C(void);
ASM void fn_80083868(void);
ASM void fn_800838C8(void);
ASM void fn_800838F4(void);
ASM void fn_8008393C(void);
ASM void fn_80083968(void);
ASM void fn_800839B8(void);
ASM void fn_800839E4(void);
ASM void fn_80083A10(void);
ASM void fn_80083A3C(void);
ASM void fn_80083A68(void);
ASM void fn_80083A94(void);
ASM void fn_80083AC0(void);
ASM void fn_80083AC8(void);
ASM void fn_80083AD0(void);
ASM void fn_80083B50(void);
ASM void fn_80083BB0(void);
ASM void fn_80083E20(void);
ASM void fn_80083E34(void);
ASM void fn_80083E4C(void);
ASM void fn_80083E54(void);
ASM void fn_80083E70(void);
ASM void fn_80083E7C(void);
ASM void fn_80083E84(void);
ASM void fn_80083E8C(void);
ASM void fn_80083EA0(void);
ASM void fn_80084110(void);
ASM void fn_800841B8(void);
ASM void fn_8008425C(void);
ASM void fn_800842AC(void);
ASM void fn_80084338(void);
ASM void fn_80084370(void);
ASM void fn_800843BC(void);
ASM void fn_8008440C(void);
ASM void fn_80084478(void);
ASM void fn_800844C4(void);
ASM void fn_80084514(void);
ASM void dtor_80084580(void);
ASM void fn_800845A4(void);
ASM void fn_800845C8(void);
ASM void fn_800845CC(void);
ASM void fn_800845E4(void);
ASM void fn_800845E8(void);
ASM void fn_800845F0(void);
ASM void fn_800846AC(void);
ASM void fn_80084754(void);
ASM void fn_800848BC(void);
ASM void fn_800848F0(void);
ASM void fn_800849B8(void);
ASM void fn_80084A08(void);
ASM void fn_80084A44(void);
ASM void fn_80084B1C(void);
ASM void fn_80084BAC(void);
ASM void fn_80084C60(void);
ASM void fn_80084CC0(void);
ASM void fn_80084D1C(void);
ASM void fn_80084D84(void);
ASM void fn_80084E48(void);
ASM void fn_80084EF8(void);
ASM void fn_80084FD0(void);
ASM void fn_800850A0(void);
ASM void fn_800850CC(void);
ASM void fn_8008512C(void);
ASM void fn_800851B8(void);
ASM void fn_800851BC(void);
ASM void fn_800851EC(void);
ASM void fn_8008521C(void);
ASM void fn_800852A8(void);
ASM void fn_800853AC(void);
ASM void fn_80085408(void);
ASM void fn_80085438(void);
ASM void fn_80085444(void);
ASM void fn_8008544C(void);
ASM void fn_80085454(void);
ASM void fn_80085474(void);
ASM void fn_8008552C(void);
ASM void fn_800855CC(void);
ASM void fn_80085674(void);
ASM void fn_8008574C(void);
ASM void fn_800857BC(void);
ASM void fn_8008584C(void);
ASM void fn_80085878(void);
ASM void fn_80085880(void);

ASM void fn_800834E8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_80083520
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80083520
    mr r3, r30
    bl dtor_80084580
L_80083520:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008353C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r31, r3
    mr r27, r4
    mr r28, r5
    mr r29, r6
    mr r30, r7
    bl fn_8007E6F4
    lis r3, lbl_80498E98@ha
    addi r26, r31, 0x40
    addi r0, r3, lbl_80498E98@l
    stw r0, 0x0(r31)
    mr r3, r26
    bl fn_80086F44
    mr r4, r31
    addi r3, r26, 0xc
    bl fn_80086E2C
    addi r3, r31, 0x5c
    bl fn_80086F44
    addi r3, r31, 0x18
    bl OSInitMutex
    stw r28, 0x38(r31)
    cmplwi r29, 0x0
    add r0, r27, r28
    stw r27, 0x30(r31)
    stw r0, 0x34(r31)
    opword  0x40820018  // bne .L_800835C4
    mr r3, r31
    bl fn_8008381C
    mr r3, r31
    bl fn_8008382C
    opword  0x48000048  // b .L_80083608
L_800835C4:
    addic. r4, r31, 0x40
    opword  0x41820008  // beq .L_800835D0
    addi r4, r4, 0xc
L_800835D0:
    addi r3, r29, 0x40
    bl fn_80086F58
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    opword  0x800D8CF0  // lwz r0, lbl_8053A8B0@sda21(r0)
    cmplw r3, r0
    opword  0x4082000C  // bne .L_800835F0
    mr r3, r31
    bl fn_8008381C
L_800835F0:
    opword  0x806D8CEC  // lwz r3, lbl_8053A8AC@sda21(r0)
    opword  0x800D8CF0  // lwz r0, lbl_8053A8B0@sda21(r0)
    cmplw r3, r0
    opword  0x4082000C  // bne .L_80083608
    mr r3, r31
    bl fn_8008382C
L_80083608:
    stb r30, 0x68(r31)
    lbz r0, 0x68(r31)
    cmplwi r0, 0x1
    opword  0x4082001C  // bne .L_80083630
    opword  0x800D8CF4  // lwz r0, lbl_8053A8B4@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_80083630
    lis r3, fn_80084338@ha
    addi r0, r3, fn_80084338@l
    opword  0x900D8CF4  // stw r0, lbl_8053A8B4@sda21(r0)
L_80083630:
    opword  0x888D81C0  // lbz r4, lbl_80539D80@sda21(r0)
    li r0, 0x0
    mr r3, r31
    stb r4, 0x3c(r31)
    opword  0x888D8CF8  // lbz r4, lbl_8053A8B8@sda21(r0)
    stb r4, 0x3d(r31)
    stb r0, 0x69(r31)
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80083660(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x418200DC  // beq .L_80083758
    lis r3, lbl_80498E98@ha
    addic. r4, r30, 0x40
    addi r0, r3, lbl_80498E98@l
    stw r0, 0x0(r30)
    lwz r3, 0x50(r30)
    opword  0x41820008  // beq .L_8008369C
    addi r4, r4, 0xc
L_8008369C:
    bl fn_80087298
    opword  0x808D8CF0  // lwz r4, lbl_8053A8B0@sda21(r0)
    lwz r3, 0x40(r4)
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800836B4
    subi r3, r3, 0xc
L_800836B4:
    opword  0x800D8CEC  // lwz r0, lbl_8053A8AC@sda21(r0)
    cmplw r0, r30
    opword  0x4082001C  // bne .L_800836D8
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_800836D0
    mr r0, r4
    opword  0x48000008  // b .L_800836D4
L_800836D0:
    lwz r0, 0xc(r3)
L_800836D4:
    opword  0x900D8CEC  // stw r0, lbl_8053A8AC@sda21(r0)
L_800836D8:
    opword  0x800D8CE8  // lwz r0, lbl_8053A8A8@sda21(r0)
    cmplw r0, r30
    opword  0x40820018  // bne .L_800836F8
    cmplwi r3, 0x0
    opword  0x40820008  // bne .L_800836F0
    opword  0x48000008  // b .L_800836F4
L_800836F0:
    lwz r4, 0xc(r3)
L_800836F4:
    opword  0x908D8CE8  // stw r4, lbl_8053A8A8@sda21(r0)
L_800836F8:
    addic. r0, r30, 0x5c
    opword  0x41820010  // beq .L_8008370C
    addi r3, r30, 0x5c
    li r4, 0x0
    bl fn_80086EDC
L_8008370C:
    addic. r0, r30, 0x40
    opword  0x4182002C  // beq .L_8008373C
    addic. r0, r30, 0x4c
    opword  0x41820010  // beq .L_80083728
    addi r3, r30, 0x4c
    li r4, 0x0
    bl fn_80086E44
L_80083728:
    addic. r0, r30, 0x40
    opword  0x41820010  // beq .L_8008373C
    addi r3, r30, 0x40
    li r4, 0x0
    bl fn_80086EDC
L_8008373C:
    mr r3, r30
    li r4, 0x0
    bl fn_8007E75C
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80083758
    mr r3, r30
    bl dtor_80084580
L_80083758:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083774(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r3
    mr r28, r4
    mr r29, r5
    bl OSGetArenaLo
    mr r30, r3
    bl OSGetArenaHi
    mr r31, r3
    cmplw r30, r31
    opword  0x4082000C  // bne .L_800837B0
    li r3, 0x0
    opword  0x4800005C  // b .L_80083808
L_800837B0:
    mr r3, r30
    mr r4, r31
    mr r5, r29
    bl OSInitAlloc
    addi r0, r3, 0x1f
    clrrwi r30, r31, 5
    clrrwi r31, r0, 5
    lis r4, 0x8000
    opword  0x908D8CFC  // stw r4, lbl_8053A8BC@sda21(r0)
    mr r3, r30
    opword  0x93ED8D00  // stw r31, lbl_8053A8C0@sda21(r0)
    opword  0x93ED8D04  // stw r31, lbl_8053A8C4@sda21(r0)
    opword  0x93CD8D08  // stw r30, lbl_8053A8C8@sda21(r0)
    lwz r0, 0x28(r4)
    opword  0x900D8D0C  // stw r0, lbl_8053A8CC@sda21(r0)
    bl OSSetArenaLo
    mr r3, r30
    bl OSSetArenaHi
    stw r31, 0x0(r27)
    subf r0, r31, r30
    li r3, 0x1
    stw r0, 0x0(r28)
L_80083808:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008381C(void)
{
    nofralloc
    opword  0x800D8CE8  // lwz r0, lbl_8053A8A8@sda21(r0)
    opword  0x906D8CE8  // stw r3, lbl_8053A8A8@sda21(r0)
    mr r3, r0
    blr
}

ASM void fn_8008382C(void)
{
    nofralloc
    opword  0x800D8CEC  // lwz r0, lbl_8053A8AC@sda21(r0)
    opword  0x906D8CEC  // stw r3, lbl_8053A8AC@sda21(r0)
    mr r3, r0
    blr
}

ASM void fn_8008383C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083868(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r5, 0x0
    mr r6, r3
    stw r0, 0x14(r1)
    mr r0, r4
    opword  0x41820018  // beq .L_80083898
    mr r3, r5
    mr r4, r6
    mr r5, r0
    bl fn_800838C8
    opword  0x48000024  // b .L_800838B8
L_80083898:
    opword  0x806D8CEC  // lwz r3, lbl_8053A8AC@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_800838B4
    mr r4, r6
    mr r5, r0
    bl fn_800838C8
    opword  0x48000008  // b .L_800838B8
L_800838B4:
    li r3, 0x0
L_800838B8:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800838C8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800838F4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r4, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x40820010  // bne .L_8008391C
    bl fn_80083B50
    mr. r4, r3
    opword  0x41820010  // beq .L_80083928
L_8008391C:
    mr r3, r4
    mr r4, r31
    bl fn_8008393C
L_80083928:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008393C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x28(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083968(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x4800001C  // b .L_80083998
L_80083980:
    lwz r3, 0x0(r3)
    li r4, -0x1
    lwz r12, 0x0(r3)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_80083998:
    lwz r3, 0x5c(r31)
    cmplwi r3, 0x0
    opword  0x4082FFE0  // bne .L_80083980
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800839B8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800839E4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x38(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083A10(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x3c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083A3C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083A68(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083A94(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083AC0(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80083AC8(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80083AD0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x44(r12)
    mtctr r12
    bctrl
    mr r31, r3
    mr r3, r29
    lwz r12, 0x0(r29)
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    clrlwi r0, r31, 28
    subi r4, r30, 0x1
    subf r0, r0, r30
    and r0, r4, r0
    nor r4, r4, r4
    subf r0, r0, r3
    and r3, r4, r0
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80083B50(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r4, r3
    stw r0, 0x14(r1)
    opword  0x80AD8CF0  // lwz r5, lbl_8053A8B0@sda21(r0)
    cmplwi r5, 0x0
    opword  0x4082000C  // bne .L_80083B74
    li r3, 0x0
    opword  0x48000030  // b .L_80083BA0
L_80083B74:
    lwz r0, 0x30(r5)
    cmplw r0, r4
    opword  0x4181001C  // bgt .L_80083B98
    lwz r0, 0x34(r5)
    cmplw r4, r0
    opword  0x40800010  // bge .L_80083B98
    mr r3, r5
    bl fn_80083BB0
    opword  0x4800000C  // b .L_80083BA0
L_80083B98:
    mr r3, r5
    bl fn_80083EA0
L_80083BA0:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80083BB0(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stmw r22, 0x18(r1)
    mr r31, r4
    mr r26, r3
    lwz r0, 0x30(r3)
    cmplw r0, r31
    opword  0x41810238  // bgt .L_80083E08
    lwz r0, 0x34(r26)
    cmplw r31, r0
    opword  0x4080022C  // bge .L_80083E08
    lwz r0, 0x48(r26)
    cmplwi r0, 0x0
    opword  0x41820218  // beq .L_80083E00
    lwz r30, 0x40(r26)
    cmplwi r30, 0x0
    opword  0x41820204  // beq .L_80083DF8
    subi r30, r30, 0xc
    opword  0x480001FC  // b .L_80083DF8
L_80083C00:
    lwz r29, 0xc(r30)
    lwz r0, 0x30(r29)
    cmplw r0, r31
    opword  0x418101CC  // bgt .L_80083DD8
    lwz r0, 0x34(r29)
    cmplw r31, r0
    opword  0x408001C0  // bge .L_80083DD8
    lwz r0, 0x48(r29)
    cmplwi r0, 0x0
    opword  0x418201AC  // beq .L_80083DD0
    lwz r28, 0x40(r29)
    cmplwi r28, 0x0
    opword  0x41820198  // beq .L_80083DC8
    subi r28, r28, 0xc
    opword  0x48000190  // b .L_80083DC8
L_80083C3C:
    lwz r27, 0xc(r28)
    lwz r0, 0x30(r27)
    cmplw r0, r31
    opword  0x41810160  // bgt .L_80083DA8
    lwz r0, 0x34(r27)
    cmplw r31, r0
    opword  0x40800154  // bge .L_80083DA8
    lwz r0, 0x48(r27)
    cmplwi r0, 0x0
    opword  0x41820140  // beq .L_80083DA0
    addi r3, r27, 0x40
    bl fn_80028DA0
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80083C78
    subi r3, r3, 0xc
L_80083C78:
    mr r24, r3
    opword  0x4800011C  // b .L_80083D98
L_80083C80:
    lwz r25, 0xc(r24)
    lwz r0, 0x30(r25)
    cmplw r0, r31
    opword  0x418100EC  // bgt .L_80083D78
    lwz r0, 0x34(r25)
    cmplw r31, r0
    opword  0x408000E0  // bge .L_80083D78
    lwz r0, 0x48(r25)
    cmplwi r0, 0x0
    opword  0x418200CC  // beq .L_80083D70
    addi r3, r25, 0x40
    bl fn_80083E8C
    mr r23, r3
    opword  0x480000AC  // b .L_80083D60
L_80083CB8:
    lwz r22, 0xc(r23)
    lwz r0, 0x30(r22)
    cmplw r0, r31
    opword  0x41810080  // bgt .L_80083D44
    lwz r0, 0x34(r22)
    cmplw r31, r0
    opword  0x40800074  // bge .L_80083D44
    addi r3, r22, 0x40
    bl fn_80083E84
    cmplwi r3, 0x0
    opword  0x4182005C  // beq .L_80083D3C
    addi r3, r22, 0x40
    bl fn_80083E8C
    mr r4, r3
    addi r3, r1, 0x8
    bl fn_80083E7C
    opword  0x48000028  // b .L_80083D20
L_80083CFC:
    addi r3, r1, 0x8
    bl fn_80083E70
    mr r4, r31
    bl fn_80083BB0
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80083D18
    opword  0x48000034  // b .L_80083D48
L_80083D18:
    addi r3, r1, 0x8
    bl fn_80083E54
L_80083D20:
    addi r3, r22, 0x40
    bl fn_80083E4C
    mr r4, r3
    addi r3, r1, 0x8
    bl fn_80083E34
    clrlwi. r0, r3, 24
    opword  0x4082FFC4  // bne .L_80083CFC
L_80083D3C:
    mr r3, r22
    opword  0x48000008  // b .L_80083D48
L_80083D44:
    li r3, 0x0
L_80083D48:
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80083D54
    opword  0x4800002C  // b .L_80083D7C
L_80083D54:
    mr r3, r23
    bl fn_80083E20
    mr r23, r3
L_80083D60:
    addi r3, r25, 0x40
    bl fn_80083E4C
    cmplw r23, r3
    opword  0x4082FF4C  // bne .L_80083CB8
L_80083D70:
    mr r3, r25
    opword  0x48000008  // b .L_80083D7C
L_80083D78:
    li r3, 0x0
L_80083D7C:
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80083D88
    opword  0x48000028  // b .L_80083DAC
L_80083D88:
    lwz r24, 0x18(r24)
    cmplwi r24, 0x0
    opword  0x41820008  // beq .L_80083D98
    subi r24, r24, 0xc
L_80083D98:
    cmplwi r24, 0x0
    opword  0x4082FEE4  // bne .L_80083C80
L_80083DA0:
    mr r3, r27
    opword  0x48000008  // b .L_80083DAC
L_80083DA8:
    li r3, 0x0
L_80083DAC:
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80083DB8
    opword  0x48000028  // b .L_80083DDC
L_80083DB8:
    lwz r28, 0x18(r28)
    cmplwi r28, 0x0
    opword  0x41820008  // beq .L_80083DC8
    subi r28, r28, 0xc
L_80083DC8:
    cmplwi r28, 0x0
    opword  0x4082FE70  // bne .L_80083C3C
L_80083DD0:
    mr r3, r29
    opword  0x48000008  // b .L_80083DDC
L_80083DD8:
    li r3, 0x0
L_80083DDC:
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80083DE8
    opword  0x48000028  // b .L_80083E0C
L_80083DE8:
    lwz r30, 0x18(r30)
    cmplwi r30, 0x0
    opword  0x41820008  // beq .L_80083DF8
    subi r30, r30, 0xc
L_80083DF8:
    cmplwi r30, 0x0
    opword  0x4082FE04  // bne .L_80083C00
L_80083E00:
    mr r3, r26
    opword  0x48000008  // b .L_80083E0C
L_80083E08:
    li r3, 0x0
L_80083E0C:
    lmw r22, 0x18(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_80083E20(void)
{
    nofralloc
    lwz r3, 0x18(r3)
    cmplwi r3, 0x0
    beqlr
    subi r3, r3, 0xc
    blr
}

ASM void fn_80083E34(void)
{
    nofralloc
    lwz r0, 0x0(r3)
    subf r3, r0, r4
    subf r0, r4, r0
    or r0, r3, r0
    srwi r3, r0, 31
    blr
}

ASM void fn_80083E4C(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80083E54(void)
{
    nofralloc
    lwz r4, 0x0(r3)
    lwz r4, 0x18(r4)
    cmplwi r4, 0x0
    opword  0x41820008  // beq .L_80083E68
    subi r4, r4, 0xc
L_80083E68:
    stw r4, 0x0(r3)
    blr
}

ASM void fn_80083E70(void)
{
    nofralloc
    lwz r3, 0x0(r3)
    lwz r3, 0xc(r3)
    blr
}

ASM void fn_80083E7C(void)
{
    nofralloc
    stw r4, 0x0(r3)
    blr
}

ASM void fn_80083E84(void)
{
    nofralloc
    lwz r3, 0x8(r3)
    blr
}

ASM void fn_80083E8C(void)
{
    nofralloc
    lwz r3, 0x0(r3)
    cmplwi r3, 0x0
    beqlr
    subi r3, r3, 0xc
    blr
}

ASM void fn_80083EA0(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stmw r22, 0x18(r1)
    mr r26, r3
    mr r31, r4
    lwz r0, 0x48(r3)
    cmplwi r0, 0x0
    opword  0x41820218  // beq .L_800840D8
    lwz r30, 0x40(r26)
    cmplwi r30, 0x0
    opword  0x41820204  // beq .L_800840D0
    subi r30, r30, 0xc
    opword  0x480001FC  // b .L_800840D0
L_80083ED8:
    lwz r29, 0xc(r30)
    lwz r0, 0x48(r29)
    cmplwi r0, 0x0
    opword  0x418201AC  // beq .L_80084090
    lwz r28, 0x40(r29)
    cmplwi r28, 0x0
    opword  0x41820198  // beq .L_80084088
    subi r28, r28, 0xc
    opword  0x48000190  // b .L_80084088
L_80083EFC:
    lwz r27, 0xc(r28)
    lwz r0, 0x48(r27)
    cmplwi r0, 0x0
    opword  0x41820140  // beq .L_80084048
    addi r3, r27, 0x40
    bl fn_80028DA0
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80083F20
    subi r3, r3, 0xc
L_80083F20:
    mr r24, r3
    opword  0x4800011C  // b .L_80084040
L_80083F28:
    lwz r25, 0xc(r24)
    lwz r0, 0x48(r25)
    cmplwi r0, 0x0
    opword  0x418200CC  // beq .L_80084000
    addi r3, r25, 0x40
    bl fn_80083E8C
    mr r23, r3
    opword  0x480000AC  // b .L_80083FF0
L_80083F48:
    lwz r22, 0xc(r23)
    addi r3, r22, 0x40
    bl fn_80083E84
    cmplwi r3, 0x0
    opword  0x4182005C  // beq .L_80083FB4
    addi r3, r22, 0x40
    bl fn_80083E8C
    mr r4, r3
    addi r3, r1, 0x8
    bl fn_80083E7C
    opword  0x48000028  // b .L_80083F98
L_80083F74:
    addi r3, r1, 0x8
    bl fn_80083E70
    mr r4, r31
    bl fn_80083EA0
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80083F90
    opword  0x4800004C  // b .L_80083FD8
L_80083F90:
    addi r3, r1, 0x8
    bl fn_80083E54
L_80083F98:
    addi r3, r22, 0x40
    bl fn_80083E4C
    mr r4, r3
    addi r3, r1, 0x8
    bl fn_80083E34
    clrlwi. r0, r3, 24
    opword  0x4082FFC4  // bne .L_80083F74
L_80083FB4:
    lwz r0, 0x30(r22)
    cmplw r0, r31
    opword  0x41810018  // bgt .L_80083FD4
    lwz r0, 0x34(r22)
    cmplw r31, r0
    opword  0x4080000C  // bge .L_80083FD4
    mr r3, r22
    opword  0x48000008  // b .L_80083FD8
L_80083FD4:
    li r3, 0x0
L_80083FD8:
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80083FE4
    opword  0x48000044  // b .L_80084024
L_80083FE4:
    mr r3, r23
    bl fn_80083E20
    mr r23, r3
L_80083FF0:
    addi r3, r25, 0x40
    bl fn_80083E4C
    cmplw r23, r3
    opword  0x4082FF4C  // bne .L_80083F48
L_80084000:
    lwz r0, 0x30(r25)
    cmplw r0, r31
    opword  0x41810018  // bgt .L_80084020
    lwz r0, 0x34(r25)
    cmplw r31, r0
    opword  0x4080000C  // bge .L_80084020
    mr r3, r25
    opword  0x48000008  // b .L_80084024
L_80084020:
    li r3, 0x0
L_80084024:
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80084030
    opword  0x48000040  // b .L_8008406C
L_80084030:
    lwz r24, 0x18(r24)
    cmplwi r24, 0x0
    opword  0x41820008  // beq .L_80084040
    subi r24, r24, 0xc
L_80084040:
    cmplwi r24, 0x0
    opword  0x4082FEE4  // bne .L_80083F28
L_80084048:
    lwz r0, 0x30(r27)
    cmplw r0, r31
    opword  0x41810018  // bgt .L_80084068
    lwz r0, 0x34(r27)
    cmplw r31, r0
    opword  0x4080000C  // bge .L_80084068
    mr r3, r27
    opword  0x48000008  // b .L_8008406C
L_80084068:
    li r3, 0x0
L_8008406C:
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80084078
    opword  0x48000040  // b .L_800840B4
L_80084078:
    lwz r28, 0x18(r28)
    cmplwi r28, 0x0
    opword  0x41820008  // beq .L_80084088
    subi r28, r28, 0xc
L_80084088:
    cmplwi r28, 0x0
    opword  0x4082FE70  // bne .L_80083EFC
L_80084090:
    lwz r0, 0x30(r29)
    cmplw r0, r31
    opword  0x41810018  // bgt .L_800840B0
    lwz r0, 0x34(r29)
    cmplw r31, r0
    opword  0x4080000C  // bge .L_800840B0
    mr r3, r29
    opword  0x48000008  // b .L_800840B4
L_800840B0:
    li r3, 0x0
L_800840B4:
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800840C0
    opword  0x48000040  // b .L_800840FC
L_800840C0:
    lwz r30, 0x18(r30)
    cmplwi r30, 0x0
    opword  0x41820008  // beq .L_800840D0
    subi r30, r30, 0xc
L_800840D0:
    cmplwi r30, 0x0
    opword  0x4082FE04  // bne .L_80083ED8
L_800840D8:
    lwz r0, 0x30(r26)
    cmplw r0, r31
    opword  0x41810018  // bgt .L_800840F8
    lwz r0, 0x34(r26)
    cmplw r31, r0
    opword  0x4080000C  // bge .L_800840F8
    mr r3, r26
    opword  0x48000008  // b .L_800840FC
L_800840F8:
    li r3, 0x0
L_800840FC:
    lmw r22, 0x18(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_80084110(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r4
    add r30, r29, r5
    stw r28, 0x10(r1)
    mr r28, r3
    lwz r4, 0x5c(r3)
    opword  0x4800004C  // b .L_8008418C
L_80084144:
    lwz r3, 0x0(r4)
    cmplw r29, r3
    opword  0x41810038  // bgt .L_80084184
    cmplw r3, r30
    opword  0x40800030  // bge .L_80084184
    lwz r12, 0x0(r3)
    li r4, -0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    cmplwi r31, 0x0
    opword  0x4082000C  // bne .L_8008417C
    lwz r4, 0x5c(r28)
    opword  0x48000014  // b .L_8008418C
L_8008417C:
    lwz r4, 0xc(r31)
    opword  0x4800000C  // b .L_8008418C
L_80084184:
    mr r31, r4
    lwz r4, 0xc(r4)
L_8008418C:
    cmplwi r4, 0x0
    opword  0x4082FFB4  // bne .L_80084144
    lwz r0, 0x24(r1)
    li r3, 0x0
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800841B8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    mr r30, r5
    stw r29, 0x14(r1)
    mr r29, r4
    stw r28, 0x10(r1)
    mr r28, r3
    lwz r4, 0x5c(r3)
    opword  0x4800004C  // b .L_80084234
L_800841EC:
    lwz r3, 0x0(r4)
    cmplw r29, r3
    opword  0x41810038  // bgt .L_8008422C
    cmplw r3, r30
    opword  0x40800030  // bge .L_8008422C
    lwz r12, 0x0(r3)
    li r4, -0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    cmplwi r31, 0x0
    opword  0x4082000C  // bne .L_80084224
    lwz r4, 0x5c(r28)
    opword  0x48000014  // b .L_80084234
L_80084224:
    lwz r4, 0xc(r31)
    opword  0x4800000C  // b .L_80084234
L_8008422C:
    mr r31, r4
    lwz r4, 0xc(r4)
L_80084234:
    cmplwi r4, 0x0
    opword  0x4082FFB4  // bne .L_800841EC
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008425C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x4800001C  // b .L_8008428C
L_80084274:
    lwz r3, 0x0(r3)
    li r4, -0x1
    lwz r12, 0x0(r3)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8008428C:
    lwz r3, 0x5c(r31)
    cmplwi r3, 0x0
    opword  0x4082FFE0  // bne .L_80084274
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800842AC(void)
{
    nofralloc
    addi r0, r5, 0x3
    srwi. r0, r0, 2
    mr r5, r0
    beqlr
    srwi. r0, r0, 3
    mtctr r0
    opword  0x41820058  // beq .L_8008431C
L_800842C8:
    lwz r0, 0x0(r4)
    stw r0, 0x0(r3)
    lwz r0, 0x4(r4)
    stw r0, 0x4(r3)
    lwz r0, 0x8(r4)
    stw r0, 0x8(r3)
    lwz r0, 0xc(r4)
    stw r0, 0xc(r3)
    lwz r0, 0x10(r4)
    stw r0, 0x10(r3)
    lwz r0, 0x14(r4)
    stw r0, 0x14(r3)
    lwz r0, 0x18(r4)
    stw r0, 0x18(r3)
    lwz r0, 0x1c(r4)
    addi r4, r4, 0x20
    stw r0, 0x1c(r3)
    addi r3, r3, 0x20
    opword  0x4200FFB8  // bdnz .L_800842C8
    andi. r5, r5, 0x7
    beqlr
L_8008431C:
    mtctr r5
L_80084320:
    lwz r0, 0x0(r4)
    addi r4, r4, 0x4
    stw r0, 0x0(r3)
    addi r3, r3, 0x4
    opword  0x4200FFF0  // bdnz .L_80084320
    blr
}

ASM void fn_80084338(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_8045E678@ha
    li r4, 0x33f
    stw r0, 0x14(r1)
    addi r3, r3, lbl_8045E678@l
    opword  0x38A287A0  // li r5, lbl_8053B740@sda21
    opword  0x38C287A4  // li r6, lbl_8053B744@sda21
    crclr 6
    bl fn_8008A324
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80084370(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r4, r3
    stw r0, 0x14(r1)
    opword  0x800D8CEC  // lwz r0, lbl_8053A8AC@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820020  // beq .L_800843A8
    mr r3, r0
    li r5, 0x4
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    opword  0x48000008  // b .L_800843AC
L_800843A8:
    li r3, 0x0
L_800843AC:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800843BC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r6, r3
    mr r5, r4
    stw r0, 0x14(r1)
    opword  0x800D8CEC  // lwz r0, lbl_8053A8AC@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820020  // beq .L_800843F8
    mr r3, r0
    mr r4, r6
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    opword  0x48000008  // b .L_800843FC
L_800843F8:
    li r3, 0x0
L_800843FC:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008440C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r4, 0x0
    stw r0, 0x14(r1)
    mr r0, r3
    opword  0x41820020  // beq .L_80084440
    mr r3, r4
    mr r4, r0
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    opword  0x4800002C  // b .L_80084468
L_80084440:
    opword  0x806D8CEC  // lwz r3, lbl_8053A8AC@sda21(r0)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_80084464
    lwz r12, 0x0(r3)
    mr r4, r0
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    opword  0x48000008  // b .L_80084468
L_80084464:
    li r3, 0x0
L_80084468:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80084478(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r4, r3
    stw r0, 0x14(r1)
    opword  0x800D8CEC  // lwz r0, lbl_8053A8AC@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820020  // beq .L_800844B0
    mr r3, r0
    li r5, 0x4
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    opword  0x48000008  // b .L_800844B4
L_800844B0:
    li r3, 0x0
L_800844B4:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800844C4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r6, r3
    mr r5, r4
    stw r0, 0x14(r1)
    opword  0x800D8CEC  // lwz r0, lbl_8053A8AC@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820020  // beq .L_80084500
    mr r3, r0
    mr r4, r6
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    opword  0x48000008  // b .L_80084504
L_80084500:
    li r3, 0x0
L_80084504:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80084514(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r4, 0x0
    stw r0, 0x14(r1)
    mr r0, r3
    opword  0x41820020  // beq .L_80084548
    mr r3, r4
    mr r4, r0
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    opword  0x4800002C  // b .L_80084570
L_80084548:
    opword  0x806D8CEC  // lwz r3, lbl_8053A8AC@sda21(r0)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8008456C
    lwz r12, 0x0(r3)
    mr r4, r0
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    opword  0x48000008  // b .L_80084570
L_8008456C:
    li r3, 0x0
L_80084570:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void dtor_80084580(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r4, 0x0
    stw r0, 0x14(r1)
    bl fn_800838F4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800845A4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r4, 0x0
    stw r0, 0x14(r1)
    bl fn_800838F4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800845C8(void)
{
    nofralloc
    blr
}

ASM void fn_800845CC(void)
{
    nofralloc
    lwz r3, 0x4(r4)
    lwz r0, 0x4(r5)
    subf r0, r3, r0
    cntlzw r0, r0
    srwi r3, r0, 5
    blr
}

ASM void fn_800845E4(void)
{
    nofralloc
    blr
}

ASM void fn_800845E8(void)
{
    nofralloc
    li r3, 0x1
    blr
}

ASM void fn_800845F0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    li r5, 0x1
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    bl fn_8007BC7C
    lis r3, lbl_80498EF8@ha
    li r0, 0x0
    addi r4, r3, lbl_80498EF8@l
    mr r3, r29
    stw r4, 0x0(r29)
    mr r4, r30
    stb r0, 0x30(r29)
    stw r31, 0x60(r29)
    lwz r5, 0x60(r29)
    bl fn_80084754
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_80084654
    mr r3, r29
    opword  0x48000040  // b .L_80084690
L_80084654:
    lis r4, 0x5241
    lis r3, lbl_8052E844@ha
    addi r0, r4, 0x5243
    stw r0, 0x2c(r29)
    addi r4, r29, 0x18
    addi r3, r3, lbl_8052E844@l
    lwz r5, 0x48(r29)
    lwz r6, 0x54(r29)
    lwz r0, 0x4(r5)
    add r0, r6, r0
    stw r0, 0x28(r29)
    bl fn_80087010
    li r0, 0x1
    mr r3, r29
    stb r0, 0x30(r29)
L_80084690:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800846AC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820070  // beq .L_80084738
    lis r3, lbl_80498EF8@ha
    addi r0, r3, lbl_80498EF8@l
    stw r0, 0x0(r30)
    lbz r0, 0x30(r30)
    cmplwi r0, 0x1
    opword  0x4082003C  // bne .L_8008471C
    lbz r0, 0x6c(r30)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_80084704
    lwz r3, 0x64(r30)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_80084704
    lwz r4, 0x38(r30)
    bl fn_800838F4
L_80084704:
    lis r3, lbl_8052E844@ha
    addi r4, r30, 0x18
    addi r3, r3, lbl_8052E844@l
    bl fn_80087298
    li r0, 0x0
    stb r0, 0x30(r30)
L_8008471C:
    mr r3, r30
    li r4, 0x0
    bl fn_8007BD24
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80084738
    mr r3, r30
    bl dtor_80084580
L_80084738:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80084754(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    mr r31, r3
    stw r0, 0x64(r3)
    stw r0, 0x44(r3)
    stw r0, 0x68(r3)
    stw r0, 0x48(r3)
    stw r0, 0x4c(r3)
    stw r0, 0x54(r3)
    stb r0, 0x6c(r3)
    stw r5, 0x60(r3)
    lwz r0, 0x60(r3)
    cmpwi r0, 0x1
    opword  0x4082004C  // bne .L_800847E0
    addi r0, r1, 0x14
    mr r3, r4
    stw r0, 0x8(r1)
    addi r10, r31, 0x5c
    li r4, 0x0
    li r5, 0x1
    lwz r7, 0x38(r31)
    li r6, 0x0
    li r8, 0x1
    li r9, 0x0
    bl fn_80080828
    stw r3, 0x64(r31)
    lwz r3, 0x64(r31)
    cmplwi r3, 0x0
    opword  0x41820054  // beq .L_80084824
    lwz r4, 0x14(r1)
    bl DCInvalidateRange
    opword  0x48000048  // b .L_80084824
L_800847E0:
    addi r0, r1, 0x10
    mr r3, r4
    stw r0, 0x8(r1)
    addi r10, r31, 0x5c
    li r4, 0x0
    li r5, 0x1
    lwz r7, 0x38(r31)
    li r6, 0x0
    li r8, 0x2
    li r9, 0x0
    bl fn_80080828
    stw r3, 0x64(r31)
    lwz r3, 0x64(r31)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_80084824
    lwz r4, 0x10(r1)
    bl DCInvalidateRange
L_80084824:
    lwz r4, 0x64(r31)
    cmplwi r4, 0x0
    opword  0x40820010  // bne .L_8008483C
    li r0, 0x0
    stb r0, 0x3c(r31)
    opword  0x48000060  // b .L_80084898
L_8008483C:
    lwz r3, 0x8(r4)
    li r0, 0x1
    add r3, r4, r3
    stw r3, 0x44(r31)
    lwz r4, 0x44(r31)
    lwz r3, 0x4(r4)
    add r3, r4, r3
    stw r3, 0x48(r31)
    lwz r4, 0x44(r31)
    lwz r3, 0xc(r4)
    add r3, r4, r3
    stw r3, 0x4c(r31)
    lwz r4, 0x44(r31)
    lwz r3, 0x14(r4)
    add r3, r4, r3
    stw r3, 0x54(r31)
    lwz r5, 0x64(r31)
    lwz r4, 0xc(r5)
    lwz r3, 0x8(r5)
    add r3, r3, r4
    add r3, r5, r3
    stw r3, 0x68(r31)
    stb r0, 0x6c(r31)
L_80084898:
    lbz r3, 0x3c(r31)
    neg r0, r3
    or r0, r0, r3
    srwi r3, r0, 31
    lwz r31, 0x1c(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800848BC(void)
{
    nofralloc
    lwz r0, 0x10(r4)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_800848D8
    lwz r3, 0x68(r3)
    lwz r0, 0x8(r4)
    add r0, r3, r0
    stw r0, 0x10(r4)
L_800848D8:
    cmplwi r5, 0x0
    opword  0x4182000C  // beq .L_800848E8
    lwz r0, 0xc(r4)
    stw r0, 0x0(r5)
L_800848E8:
    lwz r3, 0x10(r4)
    blr
}

ASM void fn_800848F0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    mr r8, r5
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r7
    stw r29, 0x14(r1)
    mr r29, r4
    lwz r31, 0xc(r6)
    cmplw r31, r8
    opword  0x40810008  // ble .L_80084924
    mr r31, r8
L_80084924:
    lwz r4, 0x10(r6)
    cmplwi r4, 0x0
    opword  0x41820014  // beq .L_80084940
    mr r3, r29
    mr r5, r31
    bl memcpy
    opword  0x48000050  // b .L_8008498C
L_80084940:
    lwz r4, 0x4(r6)
    rlwinm. r0, r4, 8, 29, 29
    srwi r4, r4, 24
    opword  0x4082000C  // bne .L_80084958
    li r7, 0x0
    opword  0x48000018  // b .L_8008496C
L_80084958:
    rlwinm. r0, r4, 0, 24, 24
    opword  0x4182000C  // beq .L_80084968
    li r7, 0x2
    opword  0x48000008  // b .L_8008496C
L_80084968:
    li r7, 0x1
L_8008496C:
    lwz r0, 0x8(r6)
    mr r4, r31
    lwz r3, 0x68(r3)
    mr r5, r29
    mr r6, r8
    add r3, r3, r0
    bl fn_80084A44
    mr r31, r3
L_8008498C:
    cmplwi r30, 0x0
    opword  0x41820008  // beq .L_80084998
    stw r31, 0x0(r30)
L_80084998:
    lwz r0, 0x24(r1)
    mr r3, r29
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800849B8(void)
{
    nofralloc
    lwz r0, 0x44(r3)
    cmplwi r0, 0x0
    beqlr
    lbz r0, 0x3c(r3)
    cmplwi r0, 0x1
    beqlr
    lwz r6, 0x4c(r3)
    li r7, 0x0
    li r5, 0x0
    opword  0x48000018  // b .L_800849F4
L_800849E0:
    lwz r0, 0x10(r6)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800849F0
    stw r5, 0x10(r6)
L_800849F0:
    addi r7, r7, 0x1
L_800849F4:
    lwz r4, 0x44(r3)
    lwz r0, 0x8(r4)
    cmplw r7, r0
    opword  0x4180FFE0  // blt .L_800849E0
    blr
}

ASM void fn_80084A08(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_8007C640
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_80084A28
    li r3, 0x0
    opword  0x48000010  // b .L_80084A34
L_80084A28:
    li r0, 0x0
    stw r0, 0x10(r3)
    li r3, 0x1
L_80084A34:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80084A44(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmpwi r7, 0x0
    mr r8, r3
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    opword  0x41820014  // beq .L_80084A74
    opword  0x41800080  // blt .L_80084AE4
    cmpwi r7, 0x3
    opword  0x40800078  // bge .L_80084AE4
    opword  0x48000028  // b .L_80084A98
L_80084A74:
    cmplw r31, r6
    opword  0x40810008  // ble .L_80084A80
    mr r31, r6
L_80084A80:
    mr r3, r5
    mr r4, r8
    mr r5, r31
    bl memcpy
    mr r3, r31
    opword  0x48000074  // b .L_80084B08
L_80084A98:
    lbz r0, 0x5(r8)
    lbz r3, 0x4(r8)
    slwi r0, r0, 16
    lbz r4, 0x6(r8)
    rlwimi r0, r3, 24, 0, 7
    lbz r7, 0x7(r8)
    rlwimi r0, r4, 8, 16, 23
    or r0, r7, r0
    cmplw r0, r6
    mr r31, r0
    opword  0x40810008  // ble .L_80084AC8
    mr r31, r6
L_80084AC8:
    mr r3, r8
    mr r4, r5
    mr r5, r31
    li r6, 0x0
    bl fn_8007E23C
    mr r3, r31
    opword  0x48000028  // b .L_80084B08
L_80084AE4:
    lis r3, lbl_8045E688@ha
    lis r5, lbl_8045E69C@ha
    addi r6, r5, lbl_8045E69C@l
    li r4, 0x2d3
    addi r3, r3, lbl_8045E688@l
    opword  0x38A287B0  // li r5, lbl_8053B750@sda21
    crclr 6
    bl fn_8008A324
    li r3, 0x0
L_80084B08:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80084B1C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    bl fn_8007C640
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_80084B4C
    li r3, -0x1
    opword  0x4800004C  // b .L_80084B94
L_80084B4C:
    lwz r0, 0x4(r3)
    rlwinm. r0, r0, 8, 29, 29
    opword  0x40820020  // bne .L_80084B74
    mr r3, r30
    mr r4, r31
    lwz r12, 0x0(r30)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    opword  0x48000024  // b .L_80084B94
L_80084B74:
    lbz r0, 0x5(r31)
    lbz r3, 0x4(r31)
    slwi r0, r0, 16
    lbz r4, 0x6(r31)
    rlwimi r0, r3, 24, 0, 7
    lbz r5, 0x7(r31)
    rlwimi r0, r4, 8, 16, 23
    or r3, r5, r0
L_80084B94:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80084BAC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r5
    stw r29, 0x14(r1)
    mr. r29, r4
    opword  0x40820008  // bne .L_80084BD4
    opword  0x83AD8CF0  // lwz r29, lbl_8053A8B0@sda21(r0)
L_80084BD4:
    addis r0, r3, 0x1
    cmplwi r0, 0xffff
    opword  0x40820010  // bne .L_80084BEC
    mr r3, r29
    li r4, 0x10
    bl fn_80083AD0
L_80084BEC:
    clrrwi r31, r3, 4
    cmplwi r31, 0x80
    opword  0x4080000C  // bge .L_80084C00
    li r3, 0x0
    opword  0x48000048  // b .L_80084C44
L_80084C00:
    mr r3, r31
    mr r5, r29
    li r4, 0x10
    bl fn_80083868
    mr r0, r3
    mr. r5, r0
    addi r4, r5, 0x80
    opword  0x4082000C  // bne .L_80084C28
    li r3, 0x0
    opword  0x48000020  // b .L_80084C44
L_80084C28:
    opword  0x41820018  // beq .L_80084C40
    mr r6, r29
    mr r7, r30
    subi r5, r31, 0x80
    bl fn_80084CC0
    mr r0, r3
L_80084C40:
    mr r3, r0
L_80084C44:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80084C60(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r4, 0x50(r3)
    lwz r31, 0xc(r4)
    cmplwi r31, 0x0
    opword  0x41820024  // beq .L_80084CA8
    lwz r12, 0x0(r3)
    li r4, -0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    mr r3, r30
    mr r4, r31
    bl fn_800838F4
L_80084CA8:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80084CC0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_8008353C
    lis r3, lbl_80498F48@ha
    li r0, 0x0
    addi r4, r3, lbl_80498F48@l
    mr r3, r31
    stw r4, 0x0(r31)
    lwz r4, 0x38(r31)
    stw r4, 0x6c(r31)
    lwz r4, 0x30(r31)
    stw r4, 0x70(r31)
    lwz r4, 0x34(r31)
    stw r4, 0x74(r31)
    stw r0, 0x78(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80084D1C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820030  // beq .L_80084D68
    lis r4, lbl_80498F48@ha
    addi r0, r4, lbl_80498F48@l
    stw r0, 0x0(r30)
    bl fn_8008425C
    mr r3, r30
    li r4, 0x0
    bl fn_80083660
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80084D68
    mr r3, r30
    bl dtor_80084580
L_80084D68:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80084D84(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    lwz r3, 0x50(r3)
    lwz r31, 0xc(r3)
    cmplwi r31, 0x0
    opword  0x4182007C  // beq .L_80084E28
    addi r3, r29, 0x18
    bl OSLockMutex
    lwz r5, 0x30(r29)
    mr r3, r31
    lwz r0, 0x70(r29)
    mr r4, r29
    subf r6, r29, r5
    subf r5, r5, r0
    addi r0, r5, 0x1f
    clrrwi r30, r0, 5
    add r31, r6, r30
    mr r5, r31
    bl fn_800839E4
    cmpwi r3, -0x1
    opword  0x41820030  // beq .L_80084E18
    li r0, 0x0
    stw r0, 0x6c(r29)
    stw r30, 0x38(r29)
    lwz r3, 0x30(r29)
    lwz r0, 0x38(r29)
    add r0, r3, r0
    stw r0, 0x34(r29)
    lwz r0, 0x34(r29)
    stw r0, 0x70(r29)
    lwz r0, 0x34(r29)
    stw r0, 0x74(r29)
L_80084E18:
    addi r3, r29, 0x18
    bl OSUnlockMutex
    mr r3, r31
    opword  0x48000008  // b .L_80084E2C
L_80084E28:
    li r3, -0x1
L_80084E2C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80084E48(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    addi r3, r29, 0x18
    bl OSLockMutex
    cmplwi r30, 0x4
    opword  0x40800008  // bge .L_80084E80
    li r30, 0x4
L_80084E80:
    cmpwi r31, 0x0
    opword  0x41800028  // blt .L_80084EAC
    cmpwi r31, 0x4
    mr r3, r29
    mr r4, r30
    li r5, 0x4
    opword  0x41800008  // blt .L_80084EA0
    mr r5, r31
L_80084EA0:
    bl fn_80084EF8
    mr r31, r3
    opword  0x48000028  // b .L_80084ED0
L_80084EAC:
    neg r0, r31
    li r5, 0x4
    cmpwi r0, 0x4
    opword  0x41800008  // blt .L_80084EC0
    mr r5, r0
L_80084EC0:
    mr r3, r29
    mr r4, r30
    bl fn_80084FD0
    mr r31, r3
L_80084ED0:
    addi r3, r29, 0x18
    bl OSUnlockMutex
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80084EF8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    addi r6, r4, 0x3
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    stw r30, 0x18(r1)
    li r30, 0x0
    stw r29, 0x14(r1)
    mr r29, r5
    subi r5, r29, 0x1
    stw r28, 0x10(r1)
    nor r4, r5, r5
    clrrwi r28, r6, 2
    lwz r7, 0x70(r3)
    lwz r0, 0x6c(r3)
    add r3, r29, r7
    subi r3, r3, 0x1
    and r5, r4, r3
    subf r3, r7, r5
    add r4, r28, r3
    cmplw r4, r0
    opword  0x41810020  // bgt .L_80084F70
    add r0, r7, r4
    mr r30, r5
    stw r0, 0x70(r31)
    lwz r0, 0x6c(r31)
    subf r0, r4, r0
    stw r0, 0x6c(r31)
    opword  0x48000040  // b .L_80084FAC
L_80084F70:
    lis r3, lbl_8045E6B0@ha
    addi r3, r3, lbl_8045E6B0@l
    crclr 6
    bl fn_800890B0
    lbz r0, 0x68(r31)
    cmplwi r0, 0x1
    opword  0x40820024  // bne .L_80084FAC
    opword  0x818D8CF4  // lwz r12, lbl_8053A8B4@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_80084FAC
    mr r3, r31
    mr r4, r28
    mr r5, r29
    mtctr r12
    bctrl
L_80084FAC:
    lwz r0, 0x24(r1)
    mr r3, r30
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80084FD0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    addi r0, r4, 0x3
    stw r31, 0x1c(r1)
    mr r31, r3
    stw r30, 0x18(r1)
    li r30, 0x0
    stw r29, 0x14(r1)
    mr r29, r5
    stw r28, 0x10(r1)
    clrrwi r28, r0, 2
    subi r0, r29, 0x1
    lwz r5, 0x74(r3)
    nor r4, r0, r0
    lwz r0, 0x6c(r3)
    subf r3, r28, r5
    and r3, r4, r3
    subf r4, r3, r5
    cmplw r4, r0
    opword  0x41810020  // bgt .L_80085040
    subf r0, r4, r5
    mr r30, r3
    stw r0, 0x74(r31)
    lwz r0, 0x6c(r31)
    subf r0, r4, r0
    stw r0, 0x6c(r31)
    opword  0x48000040  // b .L_8008507C
L_80085040:
    lis r3, lbl_8045E6E4@ha
    addi r3, r3, lbl_8045E6E4@l
    crclr 6
    bl fn_800890B0
    lbz r0, 0x68(r31)
    cmplwi r0, 0x1
    opword  0x40820024  // bne .L_8008507C
    opword  0x818D8CF4  // lwz r12, lbl_8053A8B4@sda21(r0)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_8008507C
    mr r3, r31
    mr r4, r28
    mr r5, r29
    mtctr r12
    bctrl
L_8008507C:
    lwz r0, 0x24(r1)
    mr r3, r30
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800850A0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_8045E718@ha
    stw r0, 0x14(r1)
    addi r3, r3, lbl_8045E718@l
    crclr 6
    bl fn_800890B0
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800850CC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r31, 0x18
    bl OSLockMutex
    mr r3, r31
    bl fn_80083968
    lwz r4, 0x38(r31)
    li r0, 0x0
    addi r3, r31, 0x18
    stw r4, 0x6c(r31)
    lwz r4, 0x30(r31)
    stw r4, 0x70(r31)
    lwz r4, 0x34(r31)
    stw r4, 0x74(r31)
    stw r0, 0x78(r31)
    bl OSUnlockMutex
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008512C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r31, 0x18
    bl OSLockMutex
    lwz r4, 0x74(r31)
    lwz r5, 0x34(r31)
    cmplw r4, r5
    opword  0x4182000C  // beq .L_80085160
    mr r3, r31
    bl fn_800841B8
L_80085160:
    lwz r3, 0x74(r31)
    lwz r0, 0x34(r31)
    lwz r4, 0x6c(r31)
    subf r0, r3, r0
    add r0, r4, r0
    stw r0, 0x6c(r31)
    lwz r0, 0x34(r31)
    stw r0, 0x74(r31)
    lwz r3, 0x78(r31)
    opword  0x48000010  // b .L_80085194
L_80085188:
    lwz r0, 0x34(r31)
    stw r0, 0xc(r3)
    lwz r3, 0x10(r3)
L_80085194:
    cmplwi r3, 0x0
    opword  0x4082FFF0  // bne .L_80085188
    addi r3, r31, 0x18
    bl OSUnlockMutex
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800851B8(void)
{
    nofralloc
    blr
}

ASM void fn_800851BC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_8045E740@ha
    stw r0, 0x14(r1)
    addi r3, r3, lbl_8045E740@l
    crclr 6
    bl fn_800890B0
    lwz r0, 0x14(r1)
    li r3, -0x1
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800851EC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_8045E770@ha
    stw r0, 0x14(r1)
    addi r3, r3, lbl_8045E770@l
    crclr 6
    bl fn_800890B0
    lwz r0, 0x14(r1)
    li r3, -0x1
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008521C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    addi r3, r30, 0x18
    bl OSLockMutex
    lwz r5, 0x30(r30)
    li r31, 0x1
    lwz r4, 0x70(r30)
    lwz r3, 0x74(r30)
    lwz r0, 0x34(r30)
    subf r5, r5, r4
    lwz r6, 0x6c(r30)
    subf r0, r3, r0
    lwz r4, 0x38(r30)
    add r5, r5, r0
    add r5, r6, r5
    cmplw r5, r4
    opword  0x41820018  // beq .L_80085284
    lis r3, lbl_8045E7A0@ha
    li r31, 0x0
    addi r3, r3, lbl_8045E7A0@l
    crclr 6
    bl fn_800890B0
L_80085284:
    addi r3, r30, 0x18
    bl OSUnlockMutex
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800852A8(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r4, lbl_8045E6B0@ha
    stw r0, 0x34(r1)
    stw r31, 0x2c(r1)
    addi r31, r4, lbl_8045E6B0@l
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    stw r28, 0x20(r1)
    mr r28, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    mr r0, r3
    addi r3, r28, 0x18
    mr r30, r0
    bl OSLockMutex
    lwz r4, 0x30(r28)
    addi r3, r31, 0x124
    lwz r5, 0x70(r28)
    lwz r6, 0x74(r28)
    lwz r0, 0x34(r28)
    subf r5, r4, r5
    subf r0, r6, r0
    add r29, r5, r0
    crclr 6
    bl fn_80088FA8
    lwz r4, 0x74(r28)
    addi r3, r31, 0x138
    lwz r0, 0x34(r28)
    subf r5, r4, r0
    crclr 6
    bl fn_80088FA8
    lis r0, 0x4330
    xoris r3, r29, 0x8000
    lwz r5, 0x38(r28)
    mr r4, r29
    stw r3, 0xc(r1)
    addi r3, r31, 0x14c
    opword  0xC84287C0  // lfd f2, lbl_8053B760@sda21(r0)
    stw r0, 0x8(r1)
    opword  0xC82287C8  // lfd f1, lbl_8053B768@sda21(r0)
    lfd fp0, 0x8(r1)
    stw r5, 0x14(r1)
    fsubs fp2, fp0, fp2
    opword  0xC06287B8  // lfs f3, lbl_8053B758@sda21(r0)
    stw r0, 0x10(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp1
    fdivs fp0, fp2, fp0
    fmuls fp1, fp3, fp0
    crset 6
    bl fn_80088FA8
    addi r3, r28, 0x18
    bl OSUnlockMutex
    lwz r0, 0x34(r1)
    mr r3, r30
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800853AC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    stw r5, 0x14(r4)
    bl fn_80083A68
    lwz r0, 0x38(r30)
    subf r0, r3, r0
    stw r0, 0x0(r31)
    lwz r0, 0x74(r30)
    lwz r3, 0x70(r30)
    mulli r0, r0, 0x3
    add r3, r3, r0
    stw r3, 0x4(r31)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80085408(void)
{
    nofralloc
    lwz r6, 0x4(r4)
    li r3, 0x1
    lwz r0, 0x4(r5)
    cmplw r6, r0
    opword  0x41820008  // beq .L_80085420
    li r3, 0x0
L_80085420:
    lwz r4, 0x0(r4)
    lwz r0, 0x0(r5)
    cmplw r4, r0
    beqlr
    li r3, 0x0
    blr
}

ASM void fn_80085438(void)
{
    nofralloc
    lis r3, 0x534c
    addi r3, r3, 0x4944
    blr
}

ASM void fn_80085444(void)
{
    nofralloc
    lwz r3, 0x6c(r3)
    blr
}

ASM void fn_8008544C(void)
{
    nofralloc
    lwz r3, 0x70(r3)
    blr
}

ASM void fn_80085454(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_80083A3C
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80085474(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r6
    stw r30, 0x18(r1)
    mr r30, r5
    stw r29, 0x14(r1)
    mr r29, r4
    stw r28, 0x10(r1)
    mr r28, r3
    bl fn_8007E6F4
    lis r3, lbl_80498FA8@ha
    mr r4, r28
    addi r0, r3, lbl_80498FA8@l
    addi r3, r28, 0x18
    stw r0, 0x0(r28)
    bl fn_80086E2C
    li r0, 0x0
    mr r3, r28
    stw r0, 0x68(r28)
    stw r0, 0x64(r28)
    stw r0, 0x6c(r28)
    stb r0, 0x60(r28)
    stw r0, 0x70(r28)
    bl fn_80083B50
    mr. r4, r3
    opword  0x40820008  // bne .L_800854E8
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
L_800854E8:
    mr r3, r28
    mr r5, r29
    mr r6, r31
    bl fn_800857BC
    lwz r4, 0x28(r28)
    mr r3, r28
    mr r5, r30
    bl fn_8008574C
    lwz r0, 0x24(r1)
    mr r3, r28
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008552C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r3
    mr r28, r4
    mr r29, r5
    mr r30, r6
    mr r31, r7
    bl fn_8007E6F4
    lis r3, lbl_80498FA8@ha
    mr r4, r27
    addi r0, r3, lbl_80498FA8@l
    addi r3, r27, 0x18
    stw r0, 0x0(r27)
    bl fn_80086E2C
    li r0, 0x0
    cmplwi r28, 0x0
    stw r0, 0x68(r27)
    stw r0, 0x64(r27)
    stw r0, 0x6c(r27)
    stb r0, 0x60(r27)
    stw r0, 0x70(r27)
    opword  0x40820008  // bne .L_80085590
    opword  0x838D8CEC  // lwz r28, lbl_8053A8AC@sda21(r0)
L_80085590:
    mr r3, r27
    mr r4, r28
    mr r5, r29
    mr r6, r31
    bl fn_800857BC
    lwz r4, 0x28(r27)
    mr r3, r27
    mr r5, r30
    bl fn_8008574C
    mr r3, r27
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800855CC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    bl fn_8007E6F4
    lis r3, lbl_80498FA8@ha
    mr r4, r29
    addi r0, r3, lbl_80498FA8@l
    addi r3, r29, 0x18
    stw r0, 0x0(r29)
    bl fn_80086E2C
    li r0, 0x0
    mr r3, r29
    stw r0, 0x68(r29)
    mr r5, r31
    stw r0, 0x64(r29)
    stw r0, 0x6c(r29)
    stb r0, 0x60(r29)
    stw r0, 0x70(r29)
    stw r0, 0x28(r29)
    stw r30, 0x2c(r29)
    lwz r4, 0x304(r30)
    lwz r0, 0x308(r30)
    subf r0, r4, r0
    stw r0, 0x5c(r29)
    lwz r0, 0x304(r30)
    stw r0, 0x58(r29)
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    bl fn_8008574C
    lwz r0, 0x24(r1)
    mr r3, r29
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80085674(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x418200A0  // beq .L_80085730
    lis r4, lbl_80498FA8@ha
    lis r3, lbl_8052E850@ha
    addi r0, r4, lbl_80498FA8@l
    stw r0, 0x0(r30)
    addi r4, r30, 0x18
    addi r3, r3, lbl_8052E850@l
    bl fn_80087298
    lwz r0, 0x28(r30)
    cmplwi r0, 0x0
    opword  0x4182003C  // beq .L_800856F4
    lwz r3, 0x2c(r30)
    bl OSIsThreadTerminated
    cmpwi r3, 0x0
    opword  0x40820014  // bne .L_800856DC
    lwz r3, 0x2c(r30)
    bl OSDetachThread
    lwz r3, 0x2c(r30)
    bl OSCancelThread
L_800856DC:
    lwz r3, 0x58(r30)
    lwz r4, 0x28(r30)
    bl fn_800838F4
    lwz r3, 0x2c(r30)
    lwz r4, 0x28(r30)
    bl fn_800838F4
L_800856F4:
    lwz r3, 0x50(r30)
    li r4, 0x0
    bl fn_800838F4
    addic. r0, r30, 0x18
    opword  0x41820010  // beq .L_80085714
    addi r3, r30, 0x18
    li r4, 0x0
    bl fn_80086E44
L_80085714:
    mr r3, r30
    li r4, 0x0
    bl fn_8007E75C
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80085730
    mr r3, r30
    bl dtor_80084580
L_80085730:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008574C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    stw r5, 0x54(r3)
    mr r5, r4
    li r4, 0x0
    lwz r0, 0x54(r3)
    slwi r3, r0, 2
    bl fn_80083868
    stw r3, 0x50(r31)
    addi r3, r31, 0x30
    lwz r4, 0x50(r31)
    lwz r5, 0x54(r31)
    bl OSInitMessageQueue
    lis r3, lbl_8052E850@ha
    addi r4, r31, 0x18
    addi r3, r3, lbl_8052E850@l
    bl fn_80086F58
    li r0, 0x0
    stw r0, 0x74(r31)
    stw r0, 0x78(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800857BC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    clrrwi r0, r5, 5
    stw r31, 0xc(r1)
    mr r31, r6
    stw r30, 0x8(r1)
    mr r30, r3
    stw r4, 0x28(r3)
    li r4, 0x20
    stw r0, 0x5c(r3)
    lwz r3, 0x5c(r3)
    lwz r5, 0x28(r30)
    bl fn_80083868
    stw r3, 0x58(r30)
    li r3, 0x318
    li r4, 0x20
    lwz r5, 0x28(r30)
    bl fn_80083868
    stw r3, 0x2c(r30)
    lis r3, fn_8008584C@ha
    addi r4, r3, fn_8008584C@l
    mr r5, r30
    lwz r7, 0x5c(r30)
    mr r8, r31
    lwz r0, 0x58(r30)
    li r9, 0x1
    lwz r3, 0x2c(r30)
    add r6, r0, r7
    bl OSCreateThread
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008584C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80085878(void)
{
    nofralloc
    li r3, 0x0
    blr
}

ASM void fn_80085880(void)
{
    nofralloc
    cmplwi r4, 0x0
    opword  0x4082000C  // bne .L_80085890
    li r3, 0x0
    blr
L_80085890:
    lis r3, lbl_8052E850@ha
    lwz r6, 0x2c(r4)
    addi r3, r3, lbl_8052E850@l
    lwz r3, 0x0(r3)
    opword  0x4800001C  // b .L_800858BC
L_800858A4:
    lwz r7, 0x0(r3)
    lwz r0, 0x2c(r7)
    cmplw r0, r6
    opword  0x40820008  // bne .L_800858B8
    opword  0x48000014  // b .L_800858C8
L_800858B8:
    lwz r3, 0xc(r3)
L_800858BC:
    cmplwi r3, 0x0
    opword  0x4082FFE4  // bne .L_800858A4
    li r7, 0x0
L_800858C8:
    cmplwi r7, 0x0
    opword  0x41820008  // beq .L_800858D4
    mr r4, r7
L_800858D4:
    li r6, 0x0
    li r0, 0x1
    stw r6, 0x68(r4)
    mr r3, r4
    stw r6, 0x64(r4)
    stw r6, 0x6c(r4)
    stb r0, 0x60(r4)
    stw r5, 0x70(r4)
    blr
}

