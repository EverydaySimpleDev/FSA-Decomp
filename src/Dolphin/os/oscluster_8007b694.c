#include "types.h"

extern f32 lbl_8045E190;
extern f32 lbl_8045E1A4;
extern f32 lbl_8045E1C0;
extern f32 lbl_8045E1D4;
extern f32 lbl_8045E1E8;
extern f32 lbl_8045E200;
extern f32 lbl_8045E210;
extern f32 lbl_80498B90;
extern f32 lbl_80498C20;
extern f32 lbl_80498C30;
extern f32 lbl_80498C50;
extern f32 lbl_80498C60;
extern f32 lbl_80498CB0;
extern f32 lbl_80498D00;
extern f32 lbl_80498D20;
extern f32 lbl_80498D40;
extern f32 lbl_80498D50;
extern f32 lbl_80498D60;
extern f32 lbl_8052E820;
extern f32 lbl_8052E844;
extern f32 lbl_8053A7A0;
extern f32 lbl_8053A7E0;
extern f32 lbl_8053A7E4;
extern f32 lbl_8053A7E8;
extern f32 lbl_8053A7EC;
extern f32 lbl_8053A7F0;
extern f32 lbl_8053A7F8;
extern f32 lbl_8053A8A0;
extern f32 lbl_8053A8A8;
extern f32 lbl_8053A8AC;
extern f32 lbl_8053B6E0;
extern f32 lbl_8053B6E8;
extern f32 lbl_8053B6F0;

extern void DCInvalidateRange(void);
extern void DVDGetCommandBlockStatus(void);
extern void OSGetCurrentThread(void);
extern void OSInitMessageQueue(void);
extern void OSInitMutex(void);
extern void OSLockMutex(void);
extern void OSReceiveMessage(void);
extern void OSResumeThread(void);
extern void OSSendMessage(void);
extern void OSUnlockMutex(void);
extern void dtor_80084580(void);
extern void fn_8004810C(void);
extern void fn_80048400(void);
extern void fn_80048474(void);
extern void fn_8004853C(void);
extern void fn_80048784(void);
extern void AbsS32(void);
extern void fn_8006A36C(void);
extern void JKRAram_mainRamToAram(void);
extern void JKRAram_aramToMainRam_addr(void);
extern void fn_80079F38(void);
extern void fn_8007A8E8(void);
extern void fn_8007A9A8(void);
extern void fn_8007B030(void);
extern void fn_8007B248(void);
extern void fn_8007B268(void);
extern void fn_8007ED6C(void);
extern void fn_8007FB68(void);
extern void fn_80080214(void);
extern void fn_80080414(void);
extern void fn_80080828(void);
extern void fn_80082F8C(void);
extern void fn_80083120(void);
extern void fn_80083178(void);
extern void fn_80083868(void);
extern void fn_800838C8(void);
extern void fn_800838F4(void);
extern void fn_8008393C(void);
extern void fn_80083B50(void);
extern void fn_800842AC(void);
extern void fn_8008440C(void);
extern void fn_800845F0(void);
extern void fn_80084A44(void);
extern void fn_80085474(void);
extern void fn_80085674(void);
extern void fn_80086AF8(void);
extern void fn_80086D7C(void);
extern void fn_80086E2C(void);
extern void fn_80086E44(void);
extern void fn_80086F58(void);
extern void fn_80087010(void);
extern void fn_80087298(void);
extern void fn_8008A324(void);
extern void memset(void);
extern void strcmp(void);

ASM void fn_8007B694(void);
ASM void fn_8007B704(void);
ASM void fn_8007B754(void);
ASM void fn_8007B7B4(void);
ASM void fn_8007B824(void);
ASM void fn_8007B82C(void);
ASM void fn_8007BA18(void);
ASM void fn_8007BA74(void);
ASM void fn_8007BB3C(void);
ASM void fn_8007BBD0(void);
ASM void fn_8007BC24(void);
ASM void fn_8007BC30(void);
ASM void fn_8007BC7C(void);
ASM void fn_8007BD24(void);
ASM void fn_8007BD84(void);
ASM void fn_8007BDD0(void);
ASM void fn_8007C0EC(void);
ASM void fn_8007C130(void);
ASM void fn_8007C138(void);
ASM void fn_8007C140(void);
ASM void fn_8007C234(void);
ASM void fn_8007C574(void);
ASM void fn_8007C59C(void);
ASM void fn_8007C640(void);
ASM void fn_8007C674(void);
ASM void fn_8007C6F4(void);
ASM void fn_8007C78C(void);
ASM void fn_8007C854(void);
ASM void fn_8007C8A0(void);
ASM void fn_8007C8F0(void);
ASM void fn_8007C95C(void);
ASM void fn_8007C9C0(void);
ASM void fn_8007CB98(void);
ASM void fn_8007CC20(void);
ASM void fn_8007CC98(void);
ASM void fn_8007CD50(void);
ASM void fn_8007CDCC(void);
ASM void fn_8007CE4C(void);
ASM void fn_8007CEF8(void);
ASM void fn_8007CF9C(void);
ASM void fn_8007D018(void);
ASM void fn_8007D0B0(void);
ASM void fn_8007D110(void);
ASM void fn_8007D14C(void);
ASM void fn_8007D180(void);
ASM void fn_8007D1E0(void);
ASM void fn_8007D28C(void);
ASM void fn_8007D2B8(void);
ASM void fn_8007D368(void);
ASM void fn_8007D4B8(void);
ASM void fn_8007DA34(void);
ASM void fn_8007DBC4(void);
ASM void fn_8007DD58(void);
ASM void fn_8007DDFC(void);
ASM void fn_8007DE70(void);
ASM void fn_8007E034(void);
ASM void fn_8007E094(void);
ASM void fn_8007E0E4(void);
ASM void fn_8007E144(void);
ASM void fn_8007E20C(void);
ASM void fn_8007E23C(void);
ASM void fn_8007E2DC(void);
ASM void fn_8007E368(void);
ASM void fn_8007E50C(void);
ASM void fn_8007E5F0(void);
ASM void fn_8007E668(void);
ASM void fn_8007E6B8(void);
ASM void fn_8007E6F4(void);
ASM void fn_8007E75C(void);
ASM void fn_8007E7E0(void);
ASM void fn_8007E854(void);
ASM void fn_8007E904(void);
ASM void fn_8007E9A0(void);
ASM void fn_8007EA0C(void);
ASM void fn_8007EA84(void);
ASM void fn_8007EAFC(void);
ASM void fn_8007EB7C(void);
ASM void fn_8007EC40(void);
ASM void fn_8007EC48(void);
ASM void fn_8007EC9C(void);
ASM void fn_8007ECCC(void);

ASM void fn_8007B694(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x800D8C20  // lwz r0, lbl_8053A7E0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082003C  // bne .L_8007B6EC
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    li r3, 0x7c
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820010  // beq .L_8007B6D8
    mr r4, r31
    bl fn_8007B704
    mr r0, r3
L_8007B6D8:
    opword  0x900D8C20  // stw r0, lbl_8053A7E0@sda21(r0)
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    bl fn_8007BBD0
L_8007B6EC:
    lwz r0, 0x14(r1)
    opword  0x806D8C20  // lwz r3, lbl_8053A7E0@sda21(r0)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007B704(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r6, r4
    li r4, 0x4000
    stw r0, 0x14(r1)
    li r5, 0x10
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_80085474
    lis r3, lbl_80498C50@ha
    addi r0, r3, lbl_80498C50@l
    stw r0, 0x0(r31)
    lwz r3, 0x2c(r31)
    bl OSResumeThread
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007B754(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820028  // beq .L_8007B798
    lis r5, lbl_80498C50@ha
    li r4, 0x0
    addi r0, r5, lbl_80498C50@l
    stw r0, 0x0(r30)
    bl fn_80085674
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007B798
    mr r3, r30
    bl dtor_80084580
L_8007B798:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007B7B4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r3, lbl_80498C30@ha
    lis r4, lbl_80498C20@ha
    stw r0, 0x24(r1)
    addi r3, r3, lbl_80498C30@l
    li r5, 0x4
    addi r4, r4, lbl_80498C20@l
    stw r31, 0x1c(r1)
    bl OSInitMessageQueue
    lis r3, lbl_80498C30@ha
    addi r31, r3, lbl_80498C30@l
L_8007B7E4:
    mr r3, r31
    addi r4, r1, 0x8
    li r5, 0x1
    bl OSReceiveMessage
    lwz r3, 0x8(r1)
    lwz r0, 0x0(r3)
    cmpwi r0, 0x2
    opword  0x4182001C  // beq .L_8007B81C
    opword  0x4080FFE0  // bge .L_8007B7E4
    cmpwi r0, 0x1
    opword  0x40800008  // bge .L_8007B814
    opword  0x4BFFFFD4  // b .L_8007B7E4
L_8007B814:
    bl fn_8007B824
    opword  0x4BFFFFCC  // b .L_8007B7E4
L_8007B81C:
    bl fn_8007B82C
    opword  0x4BFFFFC4  // b .L_8007B7E4
}

ASM void fn_8007B824(void)
{
    nofralloc
    li r3, 0x1
    blr
}

ASM void fn_8007B82C(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r24, 0x10(r1)
    mr r24, r3
    li r28, 0x0
    lwz r26, 0x1c(r3)
    lwz r30, 0x8(r3)
    cmplwi r26, 0x0
    lwz r29, 0x14(r3)
    lwz r27, 0x4(r3)
    lwz r0, 0x20(r3)
    lwz r25, 0x24(r3)
    opword  0x41820028  // beq .L_8007B888
    cmplwi r0, 0x0
    lis r3, 0x1
    addi r31, r3, -0x8000
    opword  0x41820008  // beq .L_8007B878
    mr r31, r0
L_8007B878:
    stw r31, 0x20(r24)
    li r0, 0x0
    stb r0, 0x28(r24)
    opword  0x48000060  // b .L_8007B8E4
L_8007B888:
    cmplwi r0, 0x0
    lis r3, 0x1
    addi r31, r3, -0x8000
    opword  0x41820008  // beq .L_8007B89C
    mr r31, r0
L_8007B89C:
    cmplwi r25, 0x0
    opword  0x41820020  // beq .L_8007B8C0
    mr r3, r31
    mr r5, r25
    li r4, -0x20
    bl fn_80083868
    mr r26, r3
    stw r26, 0x1c(r24)
    opword  0x4800001C  // b .L_8007B8D8
L_8007B8C0:
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    mr r4, r31
    li r5, -0x20
    bl fn_800838C8
    mr r26, r3
    stw r26, 0x1c(r24)
L_8007B8D8:
    stw r31, 0x20(r24)
    li r0, 0x1
    stb r0, 0x28(r24)
L_8007B8E4:
    cmplwi r26, 0x0
    opword  0x40820058  // bne .L_8007B940
    cmplwi r25, 0x0
    opword  0x4082001C  // bne .L_8007B90C
    opword  0x806D8CEC  // lwz r3, lbl_8053A8AC@sda21(r0)
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    opword  0x48000018  // b .L_8007B920
L_8007B90C:
    mr r3, r25
    lwz r12, 0x0(r25)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
L_8007B920:
    lis r3, lbl_8045E190@ha
    lis r5, lbl_8045E1A4@ha
    addi r6, r5, lbl_8045E1A4@l
    li r4, 0xac
    addi r3, r3, lbl_8045E190@l
    opword  0x38A28740  // li r5, lbl_8053B6E0@sda21
    crclr 6
    bl fn_8008A324
L_8007B940:
    cmplwi r26, 0x0
    opword  0x418200AC  // beq .L_8007B9F0
    lwz r3, 0x10(r24)
    mr r4, r29
    li r5, 0x0
    bl fn_80086D7C
    opword  0x48000070  // b .L_8007B9C8
L_8007B95C:
    cmplw r30, r31
    mr r25, r30
    opword  0x40810008  // ble .L_8007B96C
    mr r25, r31
L_8007B96C:
    lwz r3, 0x10(r24)
    mr r4, r26
    mr r5, r25
    bl fn_80086AF8
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_8007B98C
    li r28, 0x0
    opword  0x48000048  // b .L_8007B9D0
L_8007B98C:
    mr r4, r26
    mr r5, r27
    mr r6, r25
    li r3, 0x0
    li r7, 0x0
    bl fn_8007B268
    lwz r3, 0x18(r24)
    subf r30, r25, r30
    add r28, r28, r25
    add r27, r27, r25
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_8007B9C8
    lwz r0, 0x0(r3)
    add r0, r0, r25
    stw r0, 0x0(r3)
L_8007B9C8:
    cmplwi r30, 0x0
    opword  0x4082FF90  // bne .L_8007B95C
L_8007B9D0:
    lbz r0, 0x28(r24)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_8007B9F0
    mr r3, r26
    li r4, 0x0
    bl fn_800838F4
    li r0, 0x0
    stb r0, 0x28(r24)
L_8007B9F0:
    mr r4, r28
    addi r3, r24, 0x30
    li r5, 0x0
    bl OSSendMessage
    mr r3, r28
    lmw r24, 0x10(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_8007BA18(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
    mr r31, r3
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    subf r3, r3, r31
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007BA74(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r27, r4
    mr r26, r3
    mr r28, r5
    mr r29, r6
    mr r30, r7
    li r3, 0x5c
    li r5, -0x4
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    bl fn_8008440C
    mr. r31, r3
    opword  0x4182000C  // beq .L_8007BAB8
    bl fn_8007BC24
    mr r31, r3
L_8007BAB8:
    li r0, 0x2
    li r3, 0x0
    stw r0, 0x0(r31)
    cmplwi r30, 0x0
    stw r27, 0x4(r31)
    stw r28, 0x8(r31)
    stw r26, 0x10(r31)
    stw r3, 0x2c(r31)
    stw r29, 0x14(r31)
    opword  0x800D8C24  // lwz r0, lbl_8053A7E4@sda21(r0)
    stw r0, 0x1c(r31)
    opword  0x800D8C2C  // lwz r0, lbl_8053A7EC@sda21(r0)
    stw r0, 0x24(r31)
    opword  0x800D8C28  // lwz r0, lbl_8053A7E8@sda21(r0)
    stw r0, 0x20(r31)
    stw r30, 0x18(r31)
    opword  0x41820008  // beq .L_8007BB00
    stw r3, 0x0(r30)
L_8007BB00:
    addi r3, r31, 0x30
    addi r4, r31, 0x50
    li r5, 0x1
    bl OSInitMessageQueue
    lis r3, lbl_80498C30@ha
    mr r4, r31
    addi r3, r3, lbl_80498C30@l
    li r5, 0x1
    bl OSSendMessage
    mr r3, r31
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007BB3C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    cmpwi r4, 0x0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    opword  0x40820030  // bne .L_8007BB84
    addi r3, r31, 0x30
    addi r4, r1, 0x8
    li r5, 0x1
    bl OSReceiveMessage
    lwz r0, 0x8(r1)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8007BB7C
    li r3, 0x0
    opword  0x48000044  // b .L_8007BBBC
L_8007BB7C:
    mr r3, r31
    opword  0x4800003C  // b .L_8007BBBC
L_8007BB84:
    addi r3, r31, 0x30
    addi r4, r1, 0x8
    li r5, 0x0
    bl OSReceiveMessage
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_8007BBA4
    li r3, 0x0
    opword  0x4800001C  // b .L_8007BBBC
L_8007BBA4:
    lwz r0, 0x8(r1)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8007BBB8
    li r3, 0x0
    opword  0x48000008  // b .L_8007BBBC
L_8007BBB8:
    mr r3, r31
L_8007BBBC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007BBD0(void)
{
    nofralloc
    lis r6, 0x1
    li r7, 0x0
    addi r0, r6, -0x8000
    cmplwi r3, 0x0
    opword  0x90ED8C24  // stw r7, lbl_8053A7E4@sda21(r0)
    opword  0x900D8C28  // stw r0, lbl_8053A7E8@sda21(r0)
    opword  0x90ED8C2C  // stw r7, lbl_8053A7EC@sda21(r0)
    opword  0x41820010  // beq .L_8007BBFC
    addi r0, r3, 0x1f
    clrrwi r0, r0, 5
    opword  0x900D8C24  // stw r0, lbl_8053A7E4@sda21(r0)
L_8007BBFC:
    cmplwi r4, 0x0
    opword  0x4182000C  // beq .L_8007BC0C
    clrrwi r0, r4, 5
    opword  0x900D8C28  // stw r0, lbl_8053A7E8@sda21(r0)
L_8007BC0C:
    cmplwi r5, 0x0
    beqlr
    cmplwi r3, 0x0
    bnelr
    opword  0x90AD8C2C  // stw r5, lbl_8053A7EC@sda21(r0)
    blr
}

ASM void fn_8007BC24(void)
{
    nofralloc
    li r0, 0x0
    stb r0, 0x28(r3)
    blr
}

ASM void fn_8007BC30(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_80083120
    lis r3, lbl_80498C60@ha
    li r4, 0x0
    addi r3, r3, lbl_80498C60@l
    li r0, 0x1
    stw r3, 0x0(r31)
    mr r3, r31
    stb r4, 0x30(r31)
    stw r0, 0x60(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007BC7C(void)
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
    bl fn_80083120
    lis r3, lbl_80498C60@ha
    li r4, 0x0
    addi r3, r3, lbl_80498C60@l
    li r0, 0x1
    stw r3, 0x0(r29)
    mr r3, r29
    stb r4, 0x30(r29)
    stb r31, 0x3c(r29)
    stw r0, 0x34(r29)
    stw r0, 0x58(r29)
    bl fn_80083B50
    stw r3, 0x38(r29)
    lwz r0, 0x38(r29)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8007BCE8
    opword  0x800D8CEC  // lwz r0, lbl_8053A8AC@sda21(r0)
    stw r0, 0x38(r29)
L_8007BCE8:
    stw r30, 0x40(r29)
    opword  0x800D8CE0  // lwz r0, lbl_8053A8A0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_8007BD04
    li r0, 0x0
    opword  0x93AD8CE0  // stw r29, lbl_8053A8A0@sda21(r0)
    opword  0x900D8C30  // stw r0, lbl_8053A7F0@sda21(r0)
L_8007BD04:
    lwz r0, 0x24(r1)
    mr r3, r29
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007BD24(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820028  // beq .L_8007BD68
    lis r5, lbl_80498C60@ha
    li r4, 0x0
    addi r0, r5, lbl_80498C60@l
    stw r0, 0x0(r30)
    bl fn_80083178
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007BD68
    mr r3, r30
    bl dtor_80084580
L_8007BD68:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007BD84(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    clrlwi r0, r6, 16
    lhz r6, 0x0(r4)
    cmplw r6, r0
    opword  0x4182000C  // beq .L_8007BDA8
    li r3, 0x0
    opword  0x4800001C  // b .L_8007BDC0
L_8007BDA8:
    lwz r0, 0x54(r3)
    addi r4, r4, 0x4
    add r3, r0, r5
    bl strcmp
    cntlzw r0, r3
    srwi r3, r0, 5
L_8007BDC0:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007BDD0(void)
{
    nofralloc
    stwu r1, -0x450(r1)
    mflr r0
    cmplwi r4, 0x0
    stw r0, 0x454(r1)
    stmw r25, 0x434(r1)
    mr r28, r3
    mr r25, r5
    opword  0x40820014  // bne .L_8007BE00
    lwz r3, 0x48(r28)
    slwi r0, r25, 4
    add r3, r3, r0
    opword  0x480002DC  // b .L_8007C0D8
L_8007BE00:
    addi r3, r1, 0x324
    li r5, 0x2f
    bl fn_8007C78C
    lwz r5, 0x48(r28)
    slwi r0, r25, 4
    lwz r4, 0x4c(r28)
    mr r31, r3
    add r29, r5, r0
    lwz r27, 0x54(r28)
    lwz r0, 0xc(r29)
    addi r25, r1, 0x328
    li r30, 0x0
    mulli r0, r0, 0x14
    add r26, r4, r0
    opword  0x48000290  // b .L_8007C0C8
L_8007BE3C:
    lhz r3, 0x324(r1)
    lhz r0, 0x2(r26)
    lwz r4, 0x4(r26)
    cmplw r3, r0
    clrlwi r0, r4, 8
    opword  0x4182000C  // beq .L_8007BE5C
    li r0, 0x0
    opword  0x48000018  // b .L_8007BE70
L_8007BE5C:
    mr r4, r25
    add r3, r27, r0
    bl strcmp
    cntlzw r0, r3
    srwi r0, r0, 5
L_8007BE70:
    clrlwi. r0, r0, 24
    opword  0x4182024C  // beq .L_8007C0C0
    lwz r0, 0x4(r26)
    rlwinm. r0, r0, 8, 30, 30
    opword  0x41820254  // beq .L_8007C0D4
    cmplwi r31, 0x0
    lwz r25, 0x8(r26)
    opword  0x40820014  // bne .L_8007BEA0
    lwz r3, 0x48(r28)
    slwi r0, r25, 4
    add r3, r3, r0
    opword  0x4800023C  // b .L_8007C0D8
L_8007BEA0:
    mr r4, r31
    addi r3, r1, 0x21c
    li r5, 0x2f
    bl fn_8007C78C
    lwz r5, 0x48(r28)
    slwi r0, r25, 4
    lwz r4, 0x4c(r28)
    mr r30, r3
    add r31, r5, r0
    lwz r27, 0x54(r28)
    lwz r0, 0xc(r31)
    addi r29, r1, 0x220
    li r26, 0x0
    mulli r0, r0, 0x14
    add r25, r4, r0
    opword  0x480001D0  // b .L_8007C0AC
L_8007BEE0:
    lhz r3, 0x21c(r1)
    lhz r0, 0x2(r25)
    lwz r4, 0x4(r25)
    cmplw r3, r0
    clrlwi r0, r4, 8
    opword  0x4182000C  // beq .L_8007BF00
    li r0, 0x0
    opword  0x48000018  // b .L_8007BF14
L_8007BF00:
    mr r4, r29
    add r3, r27, r0
    bl strcmp
    cntlzw r0, r3
    srwi r0, r0, 5
L_8007BF14:
    clrlwi. r0, r0, 24
    opword  0x4182018C  // beq .L_8007C0A4
    lwz r0, 0x4(r25)
    rlwinm. r0, r0, 8, 30, 30
    opword  0x41820194  // beq .L_8007C0B8
    cmplwi r30, 0x0
    lwz r25, 0x8(r25)
    opword  0x40820014  // bne .L_8007BF44
    lwz r3, 0x48(r28)
    slwi r0, r25, 4
    add r3, r3, r0
    opword  0x48000198  // b .L_8007C0D8
L_8007BF44:
    mr r4, r30
    addi r3, r1, 0x114
    li r5, 0x2f
    bl fn_8007C78C
    lwz r5, 0x48(r28)
    slwi r0, r25, 4
    lwz r4, 0x4c(r28)
    mr r29, r3
    add r27, r5, r0
    li r25, 0x0
    lwz r0, 0xc(r27)
    mulli r0, r0, 0x14
    add r26, r4, r0
    opword  0x48000118  // b .L_8007C090
L_8007BF7C:
    lwz r0, 0x4(r26)
    addi r3, r1, 0x114
    lhz r31, 0x2(r26)
    clrlwi r30, r0, 8
    bl fn_8007C138
    clrlwi r0, r3, 16
    cmplw r0, r31
    opword  0x4182000C  // beq .L_8007BFA4
    li r0, 0x0
    opword  0x48000024  // b .L_8007BFC4
L_8007BFA4:
    addi r3, r1, 0x114
    bl fn_8007C130
    lwz r0, 0x54(r28)
    mr r4, r3
    add r3, r0, r30
    bl strcmp
    cntlzw r0, r3
    srwi r0, r0, 5
L_8007BFC4:
    clrlwi. r0, r0, 24
    opword  0x418200C0  // beq .L_8007C088
    lwz r0, 0x4(r26)
    rlwinm. r0, r0, 8, 30, 30
    opword  0x418200C8  // beq .L_8007C09C
    lwz r25, 0x8(r26)
    cmplwi r29, 0x0
    stw r29, 0x8(r1)
    opword  0x40820014  // bne .L_8007BFF8
    lwz r3, 0x48(r28)
    slwi r0, r25, 4
    add r3, r3, r0
    opword  0x480000E4  // b .L_8007C0D8
L_8007BFF8:
    addi r3, r1, 0xc
    addi r4, r1, 0x8
    li r5, 0x2f
    bl fn_8007C0EC
    lwz r4, 0x48(r28)
    slwi r0, r25, 4
    lwz r3, 0x4c(r28)
    li r25, 0x0
    add r27, r4, r0
    lwz r0, 0xc(r27)
    mulli r0, r0, 0x14
    add r26, r3, r0
    opword  0x4800004C  // b .L_8007C074
L_8007C02C:
    lwz r0, 0x4(r26)
    mr r3, r28
    lhz r6, 0x2(r26)
    addi r4, r1, 0xc
    clrlwi r5, r0, 8
    bl fn_8007BD84
    clrlwi. r0, r3, 24
    opword  0x41820024  // beq .L_8007C06C
    lwz r0, 0x4(r26)
    rlwinm. r0, r0, 8, 30, 30
    opword  0x4182002C  // beq .L_8007C080
    lwz r4, 0x8(r1)
    mr r3, r28
    lwz r5, 0x8(r26)
    bl fn_8007BDD0
    opword  0x48000070  // b .L_8007C0D8
L_8007C06C:
    addi r26, r26, 0x14
    addi r25, r25, 0x1
L_8007C074:
    lhz r0, 0xa(r27)
    cmpw r25, r0
    opword  0x4180FFB0  // blt .L_8007C02C
L_8007C080:
    li r3, 0x0
    opword  0x48000054  // b .L_8007C0D8
L_8007C088:
    addi r26, r26, 0x14
    addi r25, r25, 0x1
L_8007C090:
    lhz r0, 0xa(r27)
    cmpw r25, r0
    opword  0x4180FEE4  // blt .L_8007BF7C
L_8007C09C:
    li r3, 0x0
    opword  0x48000038  // b .L_8007C0D8
L_8007C0A4:
    addi r25, r25, 0x14
    addi r26, r26, 0x1
L_8007C0AC:
    lhz r0, 0xa(r31)
    cmpw r26, r0
    opword  0x4180FE2C  // blt .L_8007BEE0
L_8007C0B8:
    li r3, 0x0
    opword  0x4800001C  // b .L_8007C0D8
L_8007C0C0:
    addi r26, r26, 0x14
    addi r30, r30, 0x1
L_8007C0C8:
    lhz r0, 0xa(r29)
    cmpw r30, r0
    opword  0x4180FD6C  // blt .L_8007BE3C
L_8007C0D4:
    li r3, 0x0
L_8007C0D8:
    lmw r25, 0x434(r1)
    lwz r0, 0x454(r1)
    mtlr r0
    addi r1, r1, 0x450
    blr
}

ASM void fn_8007C0EC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r4, 0x0(r4)
    bl fn_8007C78C
    stw r3, 0x0(r31)
    mr r3, r30
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007C130(void)
{
    nofralloc
    addi r3, r3, 0x4
    blr
}

ASM void fn_8007C138(void)
{
    nofralloc
    lhz r3, 0x0(r3)
    blr
}

ASM void fn_8007C140(void)
{
    nofralloc
    stwu r1, -0x130(r1)
    mflr r0
    stw r0, 0x134(r1)
    stmw r27, 0x11c(r1)
    mr. r27, r4
    mr r28, r3
    opword  0x418200C4  // beq .L_8007C21C
    mr r4, r5
    addi r3, r1, 0x8
    bl fn_8007C6F4
    lwz r3, 0x44(r28)
    lwz r30, 0x48(r28)
    lwz r0, 0x0(r3)
    mtctr r0
    cmplwi r0, 0x0
    opword  0x4081001C  // ble .L_8007C198
L_8007C180:
    lwz r0, 0x0(r30)
    cmplw r0, r27
    opword  0x40820008  // bne .L_8007C190
    opword  0x48000010  // b .L_8007C19C
L_8007C190:
    addi r30, r30, 0x10
    opword  0x4200FFEC  // bdnz .L_8007C180
L_8007C198:
    li r30, 0x0
L_8007C19C:
    cmplwi r30, 0x0
    opword  0x4182007C  // beq .L_8007C21C
    lwz r0, 0xc(r30)
    addi r29, r1, 0xc
    lwz r3, 0x4c(r28)
    li r27, 0x0
    mulli r0, r0, 0x14
    lwz r31, 0x54(r28)
    add r28, r3, r0
    opword  0x48000050  // b .L_8007C210
L_8007C1C4:
    lhz r3, 0x8(r1)
    lhz r0, 0x2(r28)
    lwz r4, 0x4(r28)
    cmplw r3, r0
    clrlwi r0, r4, 8
    opword  0x4182000C  // beq .L_8007C1E4
    li r0, 0x0
    opword  0x48000018  // b .L_8007C1F8
L_8007C1E4:
    mr r4, r29
    add r3, r31, r0
    bl strcmp
    cntlzw r0, r3
    srwi r0, r0, 5
L_8007C1F8:
    clrlwi. r0, r0, 24
    opword  0x4182000C  // beq .L_8007C208
    mr r3, r28
    opword  0x4800001C  // b .L_8007C220
L_8007C208:
    addi r28, r28, 0x14
    addi r27, r27, 0x1
L_8007C210:
    lhz r0, 0xa(r30)
    cmpw r27, r0
    opword  0x4180FFAC  // blt .L_8007C1C4
L_8007C21C:
    li r3, 0x0
L_8007C220:
    lmw r27, 0x11c(r1)
    lwz r0, 0x134(r1)
    mtlr r0
    addi r1, r1, 0x130
    blr
}

ASM void fn_8007C234(void)
{
    nofralloc
    stwu r1, -0x450(r1)
    mflr r0
    cmplwi r4, 0x0
    stw r0, 0x454(r1)
    stmw r25, 0x434(r1)
    mr r28, r3
    mr r25, r5
    opword  0x4182030C  // beq .L_8007C55C
    addi r3, r1, 0x324
    li r5, 0x2f
    bl fn_8007C78C
    lwz r5, 0x48(r28)
    slwi r0, r25, 4
    lwz r4, 0x4c(r28)
    mr r31, r3
    add r29, r5, r0
    lwz r27, 0x54(r28)
    lwz r0, 0xc(r29)
    addi r25, r1, 0x328
    li r30, 0x0
    mulli r0, r0, 0x14
    add r26, r4, r0
    opword  0x480002C4  // b .L_8007C550
L_8007C290:
    lhz r3, 0x324(r1)
    lhz r0, 0x2(r26)
    lwz r4, 0x4(r26)
    cmplw r3, r0
    clrlwi r0, r4, 8
    opword  0x4182000C  // beq .L_8007C2B0
    li r0, 0x0
    opword  0x48000018  // b .L_8007C2C4
L_8007C2B0:
    mr r4, r25
    add r3, r27, r0
    bl strcmp
    cntlzw r0, r3
    srwi r0, r0, 5
L_8007C2C4:
    clrlwi. r0, r0, 24
    opword  0x41820280  // beq .L_8007C548
    lwz r0, 0x4(r26)
    rlwinm. r0, r0, 8, 30, 30
    opword  0x4182025C  // beq .L_8007C530
    cmplwi r31, 0x0
    lwz r25, 0x8(r26)
    opword  0x41820248  // beq .L_8007C528
    mr r4, r31
    addi r3, r1, 0x21c
    li r5, 0x2f
    bl fn_8007C78C
    lwz r5, 0x48(r28)
    slwi r0, r25, 4
    lwz r4, 0x4c(r28)
    mr r30, r3
    add r31, r5, r0
    lwz r27, 0x54(r28)
    lwz r0, 0xc(r31)
    addi r29, r1, 0x220
    li r26, 0x0
    mulli r0, r0, 0x14
    add r25, r4, r0
    opword  0x480001FC  // b .L_8007C51C
L_8007C324:
    lhz r3, 0x21c(r1)
    lhz r0, 0x2(r25)
    lwz r4, 0x4(r25)
    cmplw r3, r0
    clrlwi r0, r4, 8
    opword  0x4182000C  // beq .L_8007C344
    li r0, 0x0
    opword  0x48000018  // b .L_8007C358
L_8007C344:
    mr r4, r29
    add r3, r27, r0
    bl strcmp
    cntlzw r0, r3
    srwi r0, r0, 5
L_8007C358:
    clrlwi. r0, r0, 24
    opword  0x418201B8  // beq .L_8007C514
    lwz r0, 0x4(r25)
    rlwinm. r0, r0, 8, 30, 30
    opword  0x41820194  // beq .L_8007C4FC
    cmplwi r30, 0x0
    lwz r25, 0x8(r25)
    opword  0x41820180  // beq .L_8007C4F4
    mr r4, r30
    addi r3, r1, 0x114
    li r5, 0x2f
    bl fn_8007C78C
    lwz r5, 0x48(r28)
    slwi r0, r25, 4
    lwz r4, 0x4c(r28)
    mr r29, r3
    add r27, r5, r0
    li r25, 0x0
    lwz r0, 0xc(r27)
    mulli r0, r0, 0x14
    add r26, r4, r0
    opword  0x4800013C  // b .L_8007C4E8
L_8007C3B0:
    lwz r0, 0x4(r26)
    addi r3, r1, 0x114
    lhz r31, 0x2(r26)
    clrlwi r30, r0, 8
    bl fn_8007C138
    clrlwi r0, r3, 16
    cmplw r0, r31
    opword  0x4182000C  // beq .L_8007C3D8
    li r0, 0x0
    opword  0x48000024  // b .L_8007C3F8
L_8007C3D8:
    addi r3, r1, 0x114
    bl fn_8007C130
    lwz r0, 0x54(r28)
    mr r4, r3
    add r3, r0, r30
    bl strcmp
    cntlzw r0, r3
    srwi r0, r0, 5
L_8007C3F8:
    clrlwi. r0, r0, 24
    opword  0x418200E4  // beq .L_8007C4E0
    lwz r0, 0x4(r26)
    rlwinm. r0, r0, 8, 30, 30
    opword  0x418200C0  // beq .L_8007C4C8
    lwz r25, 0x8(r26)
    cmplwi r29, 0x0
    stw r29, 0x8(r1)
    opword  0x418200A8  // beq .L_8007C4C0
    addi r3, r1, 0xc
    addi r4, r1, 0x8
    li r5, 0x2f
    bl fn_8007C0EC
    lwz r4, 0x48(r28)
    slwi r0, r25, 4
    lwz r3, 0x4c(r28)
    li r25, 0x0
    add r27, r4, r0
    lwz r0, 0xc(r27)
    mulli r0, r0, 0x14
    add r26, r3, r0
    opword  0x48000068  // b .L_8007C4B4
L_8007C450:
    lwz r0, 0x4(r26)
    mr r3, r28
    lhz r6, 0x2(r26)
    addi r4, r1, 0xc
    clrlwi r5, r0, 8
    bl fn_8007BD84
    clrlwi. r0, r3, 24
    opword  0x41820040  // beq .L_8007C4AC
    lwz r0, 0x4(r26)
    rlwinm. r0, r0, 8, 30, 30
    opword  0x41820018  // beq .L_8007C490
    lwz r4, 0x8(r1)
    mr r3, r28
    lwz r5, 0x8(r26)
    bl fn_8007C234
    opword  0x480000D4  // b .L_8007C560
L_8007C490:
    lwz r0, 0x8(r1)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8007C4A4
    mr r3, r26
    opword  0x480000C0  // b .L_8007C560
L_8007C4A4:
    li r3, 0x0
    opword  0x480000B8  // b .L_8007C560
L_8007C4AC:
    addi r26, r26, 0x14
    addi r25, r25, 0x1
L_8007C4B4:
    lhz r0, 0xa(r27)
    cmpw r25, r0
    opword  0x4180FF94  // blt .L_8007C450
L_8007C4C0:
    li r3, 0x0
    opword  0x4800009C  // b .L_8007C560
L_8007C4C8:
    cmplwi r29, 0x0
    opword  0x4082000C  // bne .L_8007C4D8
    mr r3, r26
    opword  0x4800008C  // b .L_8007C560
L_8007C4D8:
    li r3, 0x0
    opword  0x48000084  // b .L_8007C560
L_8007C4E0:
    addi r26, r26, 0x14
    addi r25, r25, 0x1
L_8007C4E8:
    lhz r0, 0xa(r27)
    cmpw r25, r0
    opword  0x4180FEC0  // blt .L_8007C3B0
L_8007C4F4:
    li r3, 0x0
    opword  0x48000068  // b .L_8007C560
L_8007C4FC:
    cmplwi r30, 0x0
    opword  0x4082000C  // bne .L_8007C50C
    mr r3, r25
    opword  0x48000058  // b .L_8007C560
L_8007C50C:
    li r3, 0x0
    opword  0x48000050  // b .L_8007C560
L_8007C514:
    addi r25, r25, 0x14
    addi r26, r26, 0x1
L_8007C51C:
    lhz r0, 0xa(r31)
    cmpw r26, r0
    opword  0x4180FE00  // blt .L_8007C324
L_8007C528:
    li r3, 0x0
    opword  0x48000034  // b .L_8007C560
L_8007C530:
    cmplwi r31, 0x0
    opword  0x4082000C  // bne .L_8007C540
    mr r3, r26
    opword  0x48000024  // b .L_8007C560
L_8007C540:
    li r3, 0x0
    opword  0x4800001C  // b .L_8007C560
L_8007C548:
    addi r26, r26, 0x14
    addi r30, r30, 0x1
L_8007C550:
    lhz r0, 0xa(r29)
    cmpw r30, r0
    opword  0x4180FD38  // blt .L_8007C290
L_8007C55C:
    li r3, 0x0
L_8007C560:
    lmw r25, 0x434(r1)
    lwz r0, 0x454(r1)
    mtlr r0
    addi r1, r1, 0x450
    blr
}

ASM void fn_8007C574(void)
{
    nofralloc
    lwz r5, 0x44(r3)
    lwz r0, 0x8(r5)
    cmplw r4, r0
    opword  0x40800014  // bge .L_8007C594
    mulli r0, r4, 0x14
    lwz r3, 0x4c(r3)
    add r3, r3, r0
    blr
L_8007C594:
    li r3, 0x0
    blr
}

ASM void fn_8007C59C(void)
{
    nofralloc
    stwu r1, -0x130(r1)
    mflr r0
    stw r0, 0x134(r1)
    stmw r27, 0x11c(r1)
    mr r27, r3
    lwz r28, 0x4c(r27)
    addi r3, r1, 0x8
    bl fn_8007C6F4
    lwz r30, 0x54(r27)
    addi r29, r1, 0xc
    lwz r31, 0x44(r27)
    li r27, 0x0
    opword  0x48000050  // b .L_8007C61C
L_8007C5D0:
    lhz r3, 0x8(r1)
    lhz r0, 0x2(r28)
    lwz r4, 0x4(r28)
    cmplw r3, r0
    clrlwi r0, r4, 8
    opword  0x4182000C  // beq .L_8007C5F0
    li r0, 0x0
    opword  0x48000018  // b .L_8007C604
L_8007C5F0:
    mr r4, r29
    add r3, r30, r0
    bl strcmp
    cntlzw r0, r3
    srwi r0, r0, 5
L_8007C604:
    clrlwi. r0, r0, 24
    opword  0x4182000C  // beq .L_8007C614
    mr r3, r28
    opword  0x4800001C  // b .L_8007C62C
L_8007C614:
    addi r28, r28, 0x14
    addi r27, r27, 0x1
L_8007C61C:
    lwz r0, 0x8(r31)
    cmplw r27, r0
    opword  0x4180FFAC  // blt .L_8007C5D0
    li r3, 0x0
L_8007C62C:
    lmw r27, 0x11c(r1)
    lwz r0, 0x134(r1)
    mtlr r0
    addi r1, r1, 0x130
    blr
}

ASM void fn_8007C640(void)
{
    nofralloc
    lwz r5, 0x44(r3)
    lwz r3, 0x4c(r3)
    lwz r0, 0x8(r5)
    mtctr r0
    cmplwi r0, 0x0
    opword  0x40810018  // ble .L_8007C66C
L_8007C658:
    lwz r0, 0x10(r3)
    cmplw r0, r4
    beqlr
    addi r3, r3, 0x14
    opword  0x4200FFF0  // bdnz .L_8007C658
L_8007C66C:
    li r3, 0x0
    blr
}

ASM void fn_8007C674(void)
{
    nofralloc
    clrlwi r5, r4, 16
    cmplwi r5, 0xffff
    opword  0x41820070  // beq .L_8007C6EC
    mulli r0, r5, 0x14
    lwz r6, 0x4c(r3)
    add r7, r6, r0
    lhz r0, 0x0(r7)
    cmplw r0, r5
    opword  0x40820018  // bne .L_8007C6AC
    lwz r0, 0x4(r7)
    extrwi. r0, r0, 1, 7
    opword  0x4182000C  // beq .L_8007C6AC
    mr r3, r7
    blr
L_8007C6AC:
    lwz r5, 0x44(r3)
    clrlwi r3, r4, 16
    lwz r0, 0x8(r5)
    mtctr r0
    cmplwi r0, 0x0
    opword  0x4081002C  // ble .L_8007C6EC
L_8007C6C4:
    lhz r0, 0x0(r6)
    cmplw r0, r3
    opword  0x40820018  // bne .L_8007C6E4
    lwz r0, 0x4(r6)
    extrwi. r0, r0, 1, 7
    opword  0x4182000C  // beq .L_8007C6E4
    mr r3, r6
    blr
L_8007C6E4:
    addi r6, r6, 0x14
    opword  0x4200FFDC  // bdnz .L_8007C6C4
L_8007C6EC:
    li r3, 0x0
    blr
}

ASM void fn_8007C6F4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    sth r0, 0x0(r3)
    opword  0x48000034  // b .L_8007C754
L_8007C724:
    extsb r3, r3
    bl fn_8006A36C
    lhz r0, 0x0(r29)
    cmpwi r31, 0x100
    mulli r0, r0, 0x3
    add r0, r3, r0
    sth r0, 0x0(r29)
    opword  0x40800010  // bge .L_8007C750
    addi r0, r31, 0x4
    addi r31, r31, 0x1
    stbx r3, r29, r0
L_8007C750:
    addi r30, r30, 0x1
L_8007C754:
    lbz r3, 0x0(r30)
    extsb. r0, r3
    opword  0x4082FFC8  // bne .L_8007C724
    sth r31, 0x2(r29)
    add r3, r29, r31
    li r0, 0x0
    stb r0, 0x4(r3)
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007C78C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    extsb r31, r5
    stw r30, 0x18(r1)
    li r30, 0x0
    stw r29, 0x14(r1)
    mr r29, r4
    stw r28, 0x10(r1)
    mr r28, r3
    sth r0, 0x0(r3)
    opword  0x48000034  // b .L_8007C7F4
L_8007C7C4:
    extsb r3, r3
    bl fn_8006A36C
    lhz r0, 0x0(r28)
    cmpwi r30, 0x100
    mulli r0, r0, 0x3
    add r0, r3, r0
    sth r0, 0x0(r28)
    opword  0x40800010  // bge .L_8007C7F0
    addi r0, r30, 0x4
    addi r30, r30, 0x1
    stbx r3, r28, r0
L_8007C7F0:
    addi r29, r29, 0x1
L_8007C7F4:
    lbz r3, 0x0(r29)
    extsb. r0, r3
    opword  0x41820010  // beq .L_8007C80C
    extsb r0, r3
    cmpw r0, r31
    opword  0x4082FFBC  // bne .L_8007C7C4
L_8007C80C:
    lbz r0, 0x0(r29)
    add r3, r28, r30
    sth r30, 0x2(r28)
    li r4, 0x0
    extsb. r0, r0
    stb r4, 0x4(r3)
    opword  0x4082000C  // bne .L_8007C830
    li r3, 0x0
    opword  0x48000008  // b .L_8007C834
L_8007C830:
    addi r3, r29, 0x1
L_8007C834:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007C854(void)
{
    nofralloc
    lwz r0, 0x4c(r3)
    lis r6, 0x6666
    lwz r7, 0x50(r3)
    addi r6, r6, 0x6667
    subf r0, r0, r4
    mulhw r0, r6, r0
    cmplwi r7, 0x0
    srawi r0, r0, 3
    srwi r4, r0, 31
    add r4, r0, r4
    beqlr
    lwz r3, 0x44(r3)
    lwz r0, 0x8(r3)
    cmplw r4, r0
    opword  0x41800008  // blt .L_8007C894
    blr
L_8007C894:
    slwi r0, r4, 2
    stwx r5, r7, r0
    blr
}

ASM void fn_8007C8A0(void)
{
    nofralloc
    lwz r0, 0x4c(r3)
    lis r5, 0x6666
    lwz r6, 0x50(r3)
    addi r5, r5, 0x6667
    subf r0, r0, r4
    mulhw r0, r5, r0
    cmplwi r6, 0x0
    srawi r0, r0, 3
    srwi r4, r0, 31
    add r4, r0, r4
    opword  0x41820014  // beq .L_8007C8DC
    lwz r3, 0x44(r3)
    lwz r0, 0x8(r3)
    cmplw r4, r0
    opword  0x4180000C  // blt .L_8007C8E4
L_8007C8DC:
    li r3, 0x0
    blr
L_8007C8E4:
    slwi r0, r4, 2
    lwzx r3, r6, r0
    blr
}

ASM void fn_8007C8F0(void)
{
    nofralloc
    cmplwi r4, 0x0
    opword  0x40820008  // bne .L_8007C8FC
    opword  0x808D8CEC  // lwz r4, lbl_8053A8AC@sda21(r0)
L_8007C8FC:
    lis r5, lbl_8052E844@ha
    lwz r6, lbl_8052E844@l(r5)
    opword  0x48000048  // b .L_8007C94C
L_8007C908:
    lwz r7, 0x0(r6)
    lwz r5, 0x2c(r7)
    subis r0, r5, 0x5241
    cmplwi r0, 0x5243
    opword  0x40820030  // bne .L_8007C948
    lwz r0, 0x40(r7)
    cmpw r0, r3
    opword  0x40820024  // bne .L_8007C948
    lwz r0, 0x38(r7)
    cmplw r0, r4
    opword  0x40820018  // bne .L_8007C948
    lwz r4, 0x34(r7)
    mr r3, r7
    addi r0, r4, 0x1
    stw r0, 0x34(r7)
    blr
L_8007C948:
    lwz r6, 0xc(r6)
L_8007C94C:
    cmplwi r6, 0x0
    opword  0x4082FFB8  // bne .L_8007C908
    li r3, 0x0
    blr
}

ASM void fn_8007C95C(void)
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
    bl fn_8004810C
    cmpwi r3, 0x0
    opword  0x4080000C  // bge .L_8007C994
    li r3, 0x0
    opword  0x48000014  // b .L_8007C9A4
L_8007C994:
    mr r4, r29
    mr r5, r30
    mr r6, r31
    bl fn_8007C9C0
L_8007C9A4:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007C9C0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r5, 0x0
    mr r7, r5
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r6
    stw r30, 0x8(r1)
    mr r30, r3
    opword  0x40820008  // bne .L_8007C9EC
    opword  0x80ED8CEC  // lwz r7, lbl_8053A8AC@sda21(r0)
L_8007C9EC:
    lis r3, lbl_8052E844@ha
    lwz r8, lbl_8052E844@l(r3)
    opword  0x48000044  // b .L_8007CA38
L_8007C9F8:
    lwz r3, 0x0(r8)
    lwz r6, 0x2c(r3)
    subis r0, r6, 0x5241
    cmplwi r0, 0x5243
    opword  0x4082002C  // bne .L_8007CA34
    lwz r0, 0x40(r3)
    cmpw r0, r30
    opword  0x40820020  // bne .L_8007CA34
    lwz r0, 0x38(r3)
    cmplw r0, r7
    opword  0x40820014  // bne .L_8007CA34
    lwz r6, 0x34(r3)
    addi r0, r6, 0x1
    stw r0, 0x34(r3)
    opword  0x48000014  // b .L_8007CA44
L_8007CA34:
    lwz r8, 0xc(r8)
L_8007CA38:
    cmplwi r8, 0x0
    opword  0x4082FFBC  // bne .L_8007C9F8
    li r3, 0x0
L_8007CA44:
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_8007CA50
    opword  0x48000134  // b .L_8007CB80
L_8007CA50:
    cmpwi r31, 0x1
    li r0, -0x4
    opword  0x40820008  // bne .L_8007CA60
    li r0, 0x4
L_8007CA60:
    cmpwi r4, 0x3
    opword  0x41820084  // beq .L_8007CAE8
    opword  0x40800014  // bge .L_8007CA7C
    cmpwi r4, 0x1
    opword  0x41820018  // beq .L_8007CA88
    opword  0x40800044  // bge .L_8007CAB8
    opword  0x480000CC  // b .L_8007CB44
L_8007CA7C:
    cmpwi r4, 0x5
    opword  0x408000C4  // bge .L_8007CB44
    opword  0x48000094  // b .L_8007CB18
L_8007CA88:
    mr r4, r5
    mr r5, r0
    li r3, 0x70
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820014  // beq .L_8007CAB0
    mr r4, r30
    mr r5, r31
    bl fn_800845F0
    mr r0, r3
L_8007CAB0:
    mr r4, r0
    opword  0x48000090  // b .L_8007CB44
L_8007CAB8:
    mr r4, r5
    mr r5, r0
    li r3, 0x6c
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820014  // beq .L_8007CAE0
    mr r4, r30
    mr r5, r31
    bl fn_80079F38
    mr r0, r3
L_8007CAE0:
    mr r4, r0
    opword  0x48000060  // b .L_8007CB44
L_8007CAE8:
    mr r4, r5
    mr r5, r0
    li r3, 0x6c
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820014  // beq .L_8007CB10
    mr r4, r30
    mr r5, r31
    bl fn_8007FB68
    mr r0, r3
L_8007CB10:
    mr r4, r0
    opword  0x48000030  // b .L_8007CB44
L_8007CB18:
    mr r4, r5
    mr r5, r0
    li r3, 0x80
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820014  // beq .L_8007CB40
    mr r4, r30
    mr r5, r31
    bl fn_8007D2B8
    mr r0, r3
L_8007CB40:
    mr r4, r0
L_8007CB44:
    cmplwi r4, 0x0
    opword  0x41820034  // beq .L_8007CB7C
    lbz r0, 0x3c(r4)
    cmplwi r0, 0x0
    opword  0x40820028  // bne .L_8007CB7C
    cmplwi r4, 0x0
    opword  0x4182001C  // beq .L_8007CB78
    mr r3, r4
    li r4, 0x1
    lwz r12, 0x0(r3)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007CB78:
    li r4, 0x0
L_8007CB7C:
    mr r3, r4
L_8007CB80:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007CB98(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lbz r0, 0x0(r4)
    stw r31, 0xc(r1)
    mr r31, r3
    cmpwi r0, 0x2f
    opword  0x40820024  // bne .L_8007CBD8
    lbzu r0, 0x1(r4)
    extsb. r0, r0
    opword  0x40820008  // bne .L_8007CBC8
    li r4, 0x0
L_8007CBC8:
    mr r3, r31
    li r5, 0x0
    bl fn_8007BDD0
    opword  0x4800000C  // b .L_8007CBE0
L_8007CBD8:
    opword  0x80AD8C30  // lwz r5, lbl_8053A7F0@sda21(r0)
    bl fn_8007BDD0
L_8007CBE0:
    neg r0, r3
    or r0, r0, r3
    srwi. r4, r0, 31
    opword  0x4182001C  // beq .L_8007CC08
    opword  0x93ED8CE0  // stw r31, lbl_8053A8A0@sda21(r0)
    lwz r0, 0x48(r31)
    subf r0, r0, r3
    srawi r0, r0, 4
    addze r0, r0
    opword  0x900D8C30  // stw r0, lbl_8053A7F0@sda21(r0)
L_8007CC08:
    lwz r0, 0x14(r1)
    mr r3, r4
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007CC20(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    mr r4, r5
    stw r30, 0x8(r1)
    mr r30, r3
    bl fn_8007C574
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_8007CC54
    li r3, 0x0
    opword  0x48000030  // b .L_8007CC80
L_8007CC54:
    lwz r0, 0x4(r3)
    lwz r4, 0x54(r30)
    srwi r0, r0, 24
    stb r0, 0x0(r31)
    lhz r0, 0x0(r3)
    sth r0, 0x2(r31)
    lwz r0, 0x4(r3)
    li r3, 0x1
    clrlwi r0, r0, 8
    add r0, r4, r0
    stw r0, 0x4(r31)
L_8007CC80:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007CC98(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    cmplwi r5, 0x0
    li r6, 0x0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x41820024  // beq .L_8007CCE4
    mr r3, r5
    mr r4, r29
    lwz r12, 0x0(r5)
    mr r5, r30
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
    opword  0x48000054  // b .L_8007CD34
L_8007CCE4:
    lis r3, lbl_8052E844@ha
    lwz r31, lbl_8052E844@l(r3)
    opword  0x4800003C  // b .L_8007CD28
L_8007CCF0:
    lwz r3, 0x0(r31)
    lwz r4, 0x2c(r3)
    subis r0, r4, 0x5241
    cmplwi r0, 0x5243
    opword  0x40820024  // bne .L_8007CD24
    lwz r12, 0x0(r3)
    mr r4, r29
    mr r5, r30
    lwz r12, 0x18(r12)
    mtctr r12
    bctrl
    mr. r6, r3
    opword  0x40820010  // bne .L_8007CD30
L_8007CD24:
    lwz r31, 0xc(r31)
L_8007CD28:
    cmplwi r31, 0x0
    opword  0x4082FFC4  // bne .L_8007CCF0
L_8007CD30:
    mr r3, r6
L_8007CD34:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007CD50(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lbz r0, 0x0(r4)
    stw r31, 0xc(r1)
    mr r31, r3
    cmpwi r0, 0x2f
    opword  0x40820018  // bne .L_8007CD84
    addi r4, r4, 0x1
    li r5, 0x0
    bl fn_8007C234
    mr r4, r3
    opword  0x48000010  // b .L_8007CD90
L_8007CD84:
    opword  0x80AD8C30  // lwz r5, lbl_8053A7F0@sda21(r0)
    bl fn_8007C234
    mr r4, r3
L_8007CD90:
    cmplwi r4, 0x0
    opword  0x41820020  // beq .L_8007CDB4
    lwz r12, 0x0(r31)
    mr r3, r31
    li r5, 0x0
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    opword  0x48000008  // b .L_8007CDB8
L_8007CDB4:
    li r3, 0x0
L_8007CDB8:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007CDCC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r4, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x41820010  // beq .L_8007CDF4
    subis r0, r4, 0x3f3f
    cmplwi r0, 0x3f3f
    opword  0x40820018  // bne .L_8007CE08
L_8007CDF4:
    mr r3, r31
    mr r4, r5
    bl fn_8007C59C
    mr r4, r3
    opword  0x4800000C  // b .L_8007CE10
L_8007CE08:
    bl fn_8007C140
    mr r4, r3
L_8007CE10:
    cmplwi r4, 0x0
    opword  0x41820020  // beq .L_8007CE34
    lwz r12, 0x0(r31)
    mr r3, r31
    li r5, 0x0
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    opword  0x48000008  // b .L_8007CE38
L_8007CE34:
    li r3, 0x0
L_8007CE38:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007CE4C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    cmplwi r6, 0x0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x41820010  // beq .L_8007CE84
    subis r0, r6, 0x3f3f
    cmplwi r0, 0x3f3f
    opword  0x40820018  // bne .L_8007CE98
L_8007CE84:
    mr r3, r29
    mr r4, r7
    bl fn_8007C59C
    mr r6, r3
    opword  0x48000014  // b .L_8007CEA8
L_8007CE98:
    mr r4, r6
    mr r5, r7
    bl fn_8007C140
    mr r6, r3
L_8007CEA8:
    cmplwi r6, 0x0
    opword  0x4182002C  // beq .L_8007CED8
    lwz r12, 0x0(r29)
    mr r3, r29
    mr r4, r30
    mr r5, r31
    lwz r12, 0x44(r12)
    addi r7, r1, 0x8
    mtctr r12
    bctrl
    lwz r3, 0x8(r1)
    opword  0x48000008  // b .L_8007CEDC
L_8007CED8:
    li r3, 0x0
L_8007CEDC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007CEF8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    lbz r0, 0x0(r6)
    stw r31, 0x1c(r1)
    mr r31, r5
    cmpwi r0, 0x2f
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x40820018  // bne .L_8007CF3C
    addi r4, r6, 0x1
    li r5, 0x0
    bl fn_8007C234
    mr r6, r3
    opword  0x48000014  // b .L_8007CF4C
L_8007CF3C:
    opword  0x80AD8C30  // lwz r5, lbl_8053A7F0@sda21(r0)
    mr r4, r6
    bl fn_8007C234
    mr r6, r3
L_8007CF4C:
    cmplwi r6, 0x0
    opword  0x4182002C  // beq .L_8007CF7C
    lwz r12, 0x0(r29)
    mr r3, r29
    mr r4, r30
    mr r5, r31
    lwz r12, 0x44(r12)
    addi r7, r1, 0x8
    mtctr r12
    bctrl
    lwz r3, 0x8(r1)
    opword  0x48000008  // b .L_8007CF80
L_8007CF7C:
    li r3, 0x0
L_8007CF80:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007CF9C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r4
    mr r4, r6
    stw r29, 0x14(r1)
    mr r29, r3
    bl fn_8007C674
    mr. r6, r3
    opword  0x4182002C  // beq .L_8007CFF8
    lwz r12, 0x0(r29)
    mr r3, r29
    mr r4, r30
    mr r5, r31
    lwz r12, 0x44(r12)
    addi r7, r1, 0x8
    mtctr r12
    bctrl
    lwz r3, 0x8(r1)
    opword  0x48000008  // b .L_8007CFFC
L_8007CFF8:
    li r3, 0x0
L_8007CFFC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007D018(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    mr r28, r3
    lwz r0, 0x44(r3)
    cmplwi r0, 0x0
    opword  0x41820050  // beq .L_8007D090
    lbz r0, 0x3c(r28)
    cmplwi r0, 0x1
    opword  0x41820044  // beq .L_8007D090
    lwz r30, 0x4c(r28)
    li r29, 0x0
    li r31, 0x0
    opword  0x48000024  // b .L_8007D080
L_8007D060:
    lwz r3, 0x10(r30)
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_8007D078
    lwz r4, 0x38(r28)
    bl fn_800838F4
    stw r31, 0x10(r30)
L_8007D078:
    addi r30, r30, 0x14
    addi r29, r29, 0x1
L_8007D080:
    lwz r3, 0x44(r28)
    lwz r0, 0x8(r3)
    cmplw r29, r0
    opword  0x4180FFD4  // blt .L_8007D060
L_8007D090:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007D0B0(void)
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
    opword  0x4082000C  // bne .L_8007D0E0
    li r3, 0x0
    opword  0x4800001C  // b .L_8007D0F8
L_8007D0E0:
    li r0, 0x0
    stw r0, 0x10(r3)
    mr r3, r31
    lwz r4, 0x38(r30)
    bl fn_800838F4
    li r3, 0x1
L_8007D0F8:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007D110(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_8007C640
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_8007D130
    li r3, 0x0
    opword  0x48000010  // b .L_8007D13C
L_8007D130:
    li r0, 0x0
    stw r0, 0x10(r3)
    li r3, 0x1
L_8007D13C:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007D14C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_8007C640
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_8007D16C
    li r3, -0x1
    opword  0x48000008  // b .L_8007D170
L_8007D16C:
    lwz r3, 0xc(r3)
L_8007D170:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007D180(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lbz r0, 0x0(r4)
    cmpwi r0, 0x2f
    opword  0x40820020  // bne .L_8007D1B4
    lbzu r0, 0x1(r4)
    extsb. r0, r0
    opword  0x40820008  // bne .L_8007D1A8
    li r4, 0x0
L_8007D1A8:
    li r5, 0x0
    bl fn_8007BDD0
    opword  0x4800000C  // b .L_8007D1BC
L_8007D1B4:
    opword  0x80AD8C30  // lwz r5, lbl_8053A7F0@sda21(r0)
    bl fn_8007BDD0
L_8007D1BC:
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007D1CC
    lhz r3, 0xa(r3)
    opword  0x48000008  // b .L_8007D1D0
L_8007D1CC:
    li r3, 0x0
L_8007D1D0:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007D1E0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lbz r0, 0x0(r4)
    stw r31, 0xc(r1)
    cmpwi r0, 0x2f
    stw r30, 0x8(r1)
    mr r30, r3
    opword  0x40820028  // bne .L_8007D228
    lbzu r0, 0x1(r4)
    extsb. r0, r0
    opword  0x40820008  // bne .L_8007D214
    li r4, 0x0
L_8007D214:
    mr r3, r30
    li r5, 0x0
    bl fn_8007BDD0
    mr r31, r3
    opword  0x48000010  // b .L_8007D234
L_8007D228:
    opword  0x80AD8C30  // lwz r5, lbl_8053A7F0@sda21(r0)
    bl fn_8007BDD0
    mr r31, r3
L_8007D234:
    cmplwi r31, 0x0
    opword  0x41820038  // beq .L_8007D270
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    li r3, 0x24
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820018  // beq .L_8007D268
    lwz r5, 0xc(r31)
    mr r4, r30
    lhz r6, 0xa(r31)
    bl fn_80082F8C
    mr r0, r3
L_8007D268:
    mr r3, r0
    opword  0x48000008  // b .L_8007D274
L_8007D270:
    li r3, 0x0
L_8007D274:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007D28C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007D2B8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    li r5, 0x4
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    bl fn_8007BC7C
    lis r4, lbl_80498CB0@ha
    mr r3, r29
    addi r0, r4, lbl_80498CB0@l
    mr r4, r30
    stw r0, 0x0(r29)
    stw r31, 0x60(r29)
    bl fn_8007D4B8
    clrlwi. r0, r3, 24
    opword  0x4082000C  // bne .L_8007D310
    mr r3, r29
    opword  0x48000040  // b .L_8007D34C
L_8007D310:
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
L_8007D34C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007D368(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r4
    stw r30, 0x18(r1)
    mr. r30, r3
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    opword  0x41820108  // beq .L_8007D494
    lis r3, lbl_80498CB0@ha
    addi r0, r3, lbl_80498CB0@l
    stw r0, 0x0(r30)
    lwz r0, 0x44(r30)
    cmplwi r0, 0x0
    opword  0x41820058  // beq .L_8007D3FC
    lwz r29, 0x4c(r30)
    li r28, 0x0
    opword  0x4800002C  // b .L_8007D3DC
L_8007D3B4:
    lwz r0, 0x4(r29)
    rlwinm. r0, r0, 8, 27, 27
    opword  0x40820018  // bne .L_8007D3D4
    lwz r3, 0x10(r29)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8007D3D4
    lwz r4, 0x38(r30)
    bl fn_800838F4
L_8007D3D4:
    addi r29, r29, 0x14
    addi r28, r28, 0x1
L_8007D3DC:
    lwz r3, 0x44(r30)
    lwz r0, 0x8(r3)
    cmplw r28, r0
    opword  0x4180FFCC  // blt .L_8007D3B4
    lwz r4, 0x38(r30)
    bl fn_800838F4
    li r0, 0x0
    stw r0, 0x44(r30)
L_8007D3FC:
    lwz r3, 0x68(r30)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8007D420
    opword  0x41820018  // beq .L_8007D420
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007D420:
    lwz r3, 0x50(r30)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_8007D43C
    li r4, 0x0
    bl fn_800838F4
    li r0, 0x0
    stw r0, 0x50(r30)
L_8007D43C:
    lwz r3, 0x70(r30)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8007D460
    opword  0x41820018  // beq .L_8007D460
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007D460:
    lis r3, lbl_8052E844@ha
    addi r4, r30, 0x18
    addi r3, r3, lbl_8052E844@l
    bl fn_80087298
    li r0, 0x0
    mr r3, r30
    stb r0, 0x30(r30)
    li r4, 0x0
    bl fn_8007BD24
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007D494
    mr r3, r30
    bl dtor_80084580
L_8007D494:
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

ASM void fn_8007D4B8(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    li r5, 0x0
    stw r0, 0x34(r1)
    li r0, 0x0
    stmw r25, 0x14(r1)
    mr r31, r3
    mr r27, r4
    stw r0, 0x44(r3)
    li r3, 0xf8
    stw r0, 0x64(r31)
    stw r0, 0x68(r31)
    stw r0, 0x6c(r31)
    stw r0, 0x74(r31)
    stw r0, 0x78(r31)
    stw r0, 0x7c(r31)
    stw r0, 0x48(r31)
    stw r0, 0x4c(r31)
    stw r0, 0x54(r31)
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820010  // beq .L_8007D520
    mr r4, r27
    bl fn_8007E854
    mr r0, r3
L_8007D520:
    stw r0, 0x70(r31)
    lwz r0, 0x70(r31)
    cmplwi r0, 0x0
    opword  0x40820014  // bne .L_8007D540
    li r0, 0x0
    li r3, 0x0
    stb r0, 0x3c(r31)
    opword  0x480004E4  // b .L_8007DA20
L_8007D540:
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    li r4, 0x20
    li r5, -0x20
    bl fn_800838C8
    mr. r29, r3
    opword  0x40820010  // bne .L_8007D564
    li r0, 0x0
    stb r0, 0x3c(r31)
    opword  0x48000470  // b .L_8007D9D0
L_8007D564:
    li r0, 0x0
    mr r3, r27
    stw r0, 0x8(r1)
    mr r4, r29
    addi r10, r31, 0x5c
    li r5, 0x1
    li r6, 0x20
    li r7, 0x0
    li r8, 0x1
    li r9, 0x0
    bl fn_80080828
    mr r3, r29
    li r4, 0x20
    bl DCInvalidateRange
    lwz r0, 0x14(r29)
    stw r0, 0x74(r31)
    lwz r0, 0x18(r29)
    stw r0, 0x78(r31)
    lwz r0, 0x5c(r31)
    cmpwi r0, 0x1
    opword  0x41820160  // beq .L_8007D714
    opword  0x40800010  // bge .L_8007D5C8
    cmpwi r0, 0x0
    opword  0x40800010  // bge .L_8007D5D0
    opword  0x48000358  // b .L_8007D91C
L_8007D5C8:
    cmpwi r0, 0x3
    opword  0x40800350  // bge .L_8007D91C
L_8007D5D0:
    lwz r0, 0x60(r31)
    li r4, -0x20
    cmpwi r0, 0x1
    opword  0x40820008  // bne .L_8007D5E4
    li r4, 0x20
L_8007D5E4:
    lwz r3, 0xc(r29)
    mr r30, r4
    lwz r0, 0x74(r31)
    lwz r5, 0x38(r31)
    add r3, r3, r0
    bl fn_80083868
    stw r3, 0x44(r31)
    lwz r4, 0x44(r31)
    cmplwi r4, 0x0
    opword  0x40820010  // bne .L_8007D618
    li r0, 0x0
    stb r0, 0x3c(r31)
    opword  0x48000308  // b .L_8007D91C
L_8007D618:
    li r0, 0x0
    mr r3, r27
    stw r0, 0x8(r1)
    li r5, 0x1
    li r7, 0x0
    li r8, 0x1
    lwz r6, 0xc(r29)
    li r9, 0x20
    lwz r0, 0x74(r31)
    li r10, 0x0
    add r6, r6, r0
    bl fn_80080828
    lwz r4, 0xc(r29)
    lwz r0, 0x74(r31)
    lwz r3, 0x44(r31)
    add r4, r4, r0
    bl DCInvalidateRange
    lwz r3, 0x44(r31)
    lwz r0, 0xc(r29)
    add r0, r3, r0
    stw r0, 0x64(r31)
    lwz r4, 0x78(r31)
    cmplwi r4, 0x0
    opword  0x4182005C  // beq .L_8007D6D0
    opword  0x806D8BE0  // lwz r3, lbl_8053A7A0@sda21(r0)
    li r5, 0x0
    lwz r3, 0x94(r3)
    bl fn_8007B030
    stw r3, 0x68(r31)
    lwz r9, 0x68(r31)
    cmplwi r9, 0x0
    opword  0x40820010  // bne .L_8007D6A4
    li r0, 0x0
    stb r0, 0x3c(r31)
    opword  0x4800027C  // b .L_8007D91C
L_8007D6A4:
    lwz r4, 0x74(r31)
    mr r3, r27
    lwz r0, 0xc(r29)
    li r5, 0x1
    lwz r8, 0x8(r29)
    li r7, 0x0
    add r6, r0, r4
    lwz r4, 0x14(r9)
    add r6, r8, r6
    li r8, 0x0
    bl fn_8007ED6C
L_8007D6D0:
    lwz r3, 0x44(r31)
    lwz r0, 0x4(r3)
    add r0, r3, r0
    stw r0, 0x48(r31)
    lwz r3, 0x44(r31)
    lwz r0, 0xc(r3)
    add r0, r3, r0
    stw r0, 0x4c(r31)
    lwz r3, 0x44(r31)
    lwz r0, 0x14(r3)
    add r0, r3, r0
    stw r0, 0x54(r31)
    lwz r3, 0x8(r29)
    lwz r0, 0xc(r29)
    add r0, r3, r0
    stw r0, 0x6c(r31)
    opword  0x4800020C  // b .L_8007D91C
L_8007D714:
    lwz r3, 0x70(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x60(r31)
    addi r3, r3, 0x1f
    clrrwi r25, r3, 5
    li r30, -0x20
    cmpwi r0, 0x1
    opword  0x40820008  // bne .L_8007D744
    li r30, 0x20
L_8007D744:
    neg r26, r30
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    mr r4, r25
    mr r5, r26
    bl fn_800838C8
    mr. r28, r3
    opword  0x40820010  // bne .L_8007D76C
    li r0, 0x0
    stb r0, 0x3c(r31)
    opword  0x48000174  // b .L_8007D8DC
L_8007D76C:
    li r0, 0x0
    mr r3, r27
    stw r0, 0x8(r1)
    mr r4, r28
    mr r6, r25
    li r5, 0x2
    li r7, 0x0
    li r8, 0x1
    li r9, 0x0
    li r10, 0x0
    bl fn_80080828
    mr r3, r28
    mr r4, r25
    bl DCInvalidateRange
    lbz r0, 0x5(r28)
    mr r4, r26
    lbz r3, 0x4(r28)
    slwi r0, r0, 16
    lbz r6, 0x6(r28)
    rlwimi r0, r3, 24, 0, 7
    lbz r7, 0x7(r28)
    rlwimi r0, r6, 8, 16, 23
    lwz r5, 0x38(r31)
    or r3, r7, r0
    addi r0, r3, 0x1f
    clrrwi r25, r0, 5
    mr r3, r25
    bl fn_80083868
    mr. r27, r3
    opword  0x40820010  // bne .L_8007D7F0
    li r0, 0x0
    stb r0, 0x3c(r31)
    opword  0x480000F0  // b .L_8007D8DC
L_8007D7F0:
    mr r29, r27
    mr r3, r28
    mr r4, r27
    mr r5, r25
    li r6, 0x0
    bl fn_8007E23C
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    mr r4, r28
    bl fn_8008393C
    lwz r3, 0xc(r29)
    mr r4, r30
    lwz r0, 0x74(r31)
    lwz r5, 0x38(r31)
    add r3, r3, r0
    bl fn_80083868
    stw r3, 0x44(r31)
    lwz r3, 0x44(r31)
    cmplwi r3, 0x0
    opword  0x40820010  // bne .L_8007D848
    li r0, 0x0
    stb r0, 0x3c(r31)
    opword  0x48000098  // b .L_8007D8DC
L_8007D848:
    lwz r5, 0xc(r29)
    addi r4, r29, 0x20
    lwz r0, 0x74(r31)
    add r5, r5, r0
    bl fn_800842AC
    lwz r3, 0x44(r31)
    lwz r0, 0xc(r29)
    add r0, r3, r0
    stw r0, 0x64(r31)
    lwz r4, 0x78(r31)
    cmplwi r4, 0x0
    opword  0x41820068  // beq .L_8007D8DC
    opword  0x806D8BE0  // lwz r3, lbl_8053A7A0@sda21(r0)
    li r5, 0x0
    lwz r3, 0x94(r3)
    bl fn_8007B030
    stw r3, 0x68(r31)
    lwz r5, 0x68(r31)
    cmplwi r5, 0x0
    opword  0x40820010  // bne .L_8007D8A4
    li r0, 0x0
    stb r0, 0x3c(r31)
    opword  0x4800003C  // b .L_8007D8DC
L_8007D8A4:
    lwz r4, 0x8(r29)
    li r6, 0x0
    lwz r3, 0xc(r29)
    li r7, 0x0
    lwz r0, 0x74(r31)
    li r8, 0x0
    add r3, r4, r3
    lwz r4, 0x14(r5)
    add r3, r3, r0
    lwz r5, 0x78(r31)
    add r3, r27, r3
    li r9, -0x1
    li r10, 0x0
    bl JKRAram_mainRamToAram
L_8007D8DC:
    lwz r3, 0x44(r31)
    lwz r0, 0x4(r3)
    add r0, r3, r0
    stw r0, 0x48(r31)
    lwz r3, 0x44(r31)
    lwz r0, 0xc(r3)
    add r0, r3, r0
    stw r0, 0x4c(r31)
    lwz r3, 0x44(r31)
    lwz r0, 0x14(r3)
    add r0, r3, r0
    stw r0, 0x54(r31)
    lwz r3, 0x8(r29)
    lwz r0, 0xc(r29)
    add r0, r3, r0
    stw r0, 0x6c(r31)
L_8007D91C:
    li r0, 0x0
    li r4, 0x0
    stw r0, 0x50(r31)
    lwz r3, 0x44(r31)
    lwz r5, 0x4c(r31)
    lwz r0, 0x8(r3)
    mtctr r0
    cmplwi r0, 0x0
    opword  0x40810030  // ble .L_8007D96C
L_8007D940:
    lwz r3, 0x4(r5)
    extrwi. r0, r3, 1, 7
    srwi r3, r3, 24
    opword  0x41820018  // beq .L_8007D964
    rlwinm. r0, r3, 0, 27, 27
    opword  0x40820010  // bne .L_8007D964
    rlwinm r0, r3, 0, 29, 29
    or r0, r4, r0
    clrlwi r4, r0, 24
L_8007D964:
    addi r5, r5, 0x14
    opword  0x4200FFD8  // bdnz .L_8007D940
L_8007D96C:
    clrlwi. r0, r4, 24
    opword  0x41820060  // beq .L_8007D9D0
    mr r3, r30
    bl AbsS32
    lwz r4, 0x44(r31)
    lwz r5, 0x38(r31)
    lwz r0, 0x8(r4)
    mr r4, r3
    slwi r3, r0, 2
    bl fn_80083868
    stw r3, 0x50(r31)
    lwz r3, 0x50(r31)
    cmplwi r3, 0x0
    opword  0x4082001C  // bne .L_8007D9BC
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    lwz r4, 0x44(r31)
    bl fn_8008393C
    li r0, 0x0
    stb r0, 0x3c(r31)
    opword  0x48000018  // b .L_8007D9D0
L_8007D9BC:
    lwz r5, 0x44(r31)
    li r4, 0x0
    lwz r0, 0x8(r5)
    slwi r5, r0, 2
    bl memset
L_8007D9D0:
    cmplwi r29, 0x0
    opword  0x41820010  // beq .L_8007D9E4
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    mr r4, r29
    bl fn_8008393C
L_8007D9E4:
    lbz r0, 0x3c(r31)
    cmplwi r0, 0x0
    opword  0x40820030  // bne .L_8007DA1C
    lwz r3, 0x70(r31)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8007DA14
    opword  0x41820018  // beq .L_8007DA14
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_8007DA14:
    li r3, 0x0
    opword  0x48000008  // b .L_8007DA20
L_8007DA1C:
    li r3, 0x1
L_8007DA20:
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_8007DA34(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    mr r30, r5
    stw r29, 0x24(r1)
    mr r29, r4
    stw r28, 0x20(r1)
    mr r28, r3
    lwz r3, 0x4(r4)
    lwz r5, 0xc(r4)
    rlwinm. r0, r3, 8, 29, 29
    srwi r3, r3, 24
    mr r4, r5
    opword  0x4082000C  // bne .L_8007DA7C
    li r31, 0x0
    opword  0x48000018  // b .L_8007DA90
L_8007DA7C:
    rlwinm. r0, r3, 0, 24, 24
    opword  0x4182000C  // beq .L_8007DA8C
    li r31, 0x2
    opword  0x48000008  // b .L_8007DA90
L_8007DA8C:
    li r31, 0x1
L_8007DA90:
    cmplwi r30, 0x0
    opword  0x40820008  // bne .L_8007DA9C
    addi r30, r1, 0x10
L_8007DA9C:
    lwz r0, 0x10(r29)
    cmplwi r0, 0x0
    opword  0x408200F0  // bne .L_8007DB94
    rlwinm. r0, r3, 0, 27, 27
    opword  0x4182001C  // beq .L_8007DAC8
    lwz r3, 0x64(r28)
    lwz r0, 0x8(r29)
    add r0, r3, r0
    stw r0, 0x10(r29)
    stw r4, 0x0(r30)
    opword  0x480000DC  // b .L_8007DBA0
L_8007DAC8:
    rlwinm. r0, r3, 0, 26, 26
    opword  0x41820060  // beq .L_8007DB2C
    lwz r3, 0x68(r28)
    mr r6, r31
    lwz r5, 0x8(r29)
    addi r7, r1, 0xc
    lwz r0, 0x14(r3)
    lwz r3, 0x74(r28)
    add r0, r5, r0
    lwz r5, 0x38(r28)
    subf r3, r3, r0
    bl fn_8007A9A8
    stw r3, 0x0(r30)
    cmpwi r31, 0x2
    lwz r0, 0xc(r1)
    stw r0, 0x10(r29)
    opword  0x40820098  // bne .L_8007DBA0
    mr r3, r28
    mr r4, r29
    lwz r12, 0x0(r28)
    lwz r5, 0x0(r30)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    opword  0x48000078  // b .L_8007DBA0
L_8007DB2C:
    rlwinm. r0, r3, 0, 25, 25
    opword  0x41820070  // beq .L_8007DBA0
    lwz r4, 0x6c(r28)
    mr r7, r31
    lwz r0, 0x8(r29)
    addi r9, r1, 0x8
    lwz r3, 0x40(r28)
    lwz r6, 0x38(r28)
    add r4, r4, r0
    lwz r8, 0x5c(r28)
    bl fn_80080414
    cmplwi r30, 0x0
    opword  0x41820008  // beq .L_8007DB64
    stw r3, 0x0(r30)
L_8007DB64:
    lwz r0, 0x8(r1)
    cmpwi r31, 0x2
    stw r0, 0x10(r29)
    opword  0x40820030  // bne .L_8007DBA0
    mr r3, r28
    mr r4, r29
    lwz r12, 0x0(r28)
    lwz r5, 0x0(r30)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    opword  0x48000010  // b .L_8007DBA0
L_8007DB94:
    cmplwi r30, 0x0
    opword  0x41820008  // beq .L_8007DBA0
    stw r5, 0x0(r30)
L_8007DBA0:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r3, 0x10(r29)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_8007DBC4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    mr r9, r3
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r30, r6
    mr r28, r4
    mr r29, r5
    mr r31, r7
    li r27, 0x0
    lwz r3, 0x4(r6)
    lwz r26, 0xc(r6)
    rlwinm. r0, r3, 8, 29, 29
    srwi r3, r3, 24
    addi r0, r26, 0x1f
    clrrwi r4, r0, 5
    opword  0x4082000C  // bne .L_8007DC10
    li r7, 0x0
    opword  0x48000018  // b .L_8007DC24
L_8007DC10:
    rlwinm. r0, r3, 0, 24, 24
    opword  0x4182000C  // beq .L_8007DC20
    li r7, 0x2
    opword  0x48000008  // b .L_8007DC24
L_8007DC20:
    li r7, 0x1
L_8007DC24:
    lwz r0, 0x10(r30)
    cmplwi r0, 0x0
    opword  0x41820054  // beq .L_8007DC80
    cmpwi r7, 0x2
    opword  0x40820028  // bne .L_8007DC5C
    mr r3, r9
    mr r4, r30
    lwz r12, 0x0(r9)
    lwz r12, 0x4c(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_8007DC5C
    mr r26, r3
L_8007DC5C:
    cmplw r26, r29
    opword  0x40810008  // ble .L_8007DC68
    mr r26, r29
L_8007DC68:
    lwz r4, 0x10(r30)
    mr r3, r28
    mr r5, r26
    bl fn_800842AC
    mr r27, r26
    opword  0x480000B8  // b .L_8007DD34
L_8007DC80:
    rlwinm. r0, r3, 0, 27, 27
    opword  0x41820024  // beq .L_8007DCA8
    lwz r3, 0x64(r9)
    mr r5, r28
    lwz r0, 0x8(r30)
    clrrwi r6, r29, 5
    add r3, r3, r0
    bl fn_80084A44
    mr r27, r3
    opword  0x48000090  // b .L_8007DD34
L_8007DCA8:
    rlwinm. r0, r3, 0, 26, 26
    opword  0x41820030  // beq .L_8007DCDC
    lwz r3, 0x68(r9)
    mr r5, r28
    lwz r8, 0x8(r30)
    clrrwi r6, r29, 5
    lwz r0, 0x14(r3)
    lwz r3, 0x74(r9)
    add r0, r8, r0
    subf r3, r3, r0
    bl fn_8007A8E8
    mr r27, r3
    opword  0x4800005C  // b .L_8007DD34
L_8007DCDC:
    rlwinm. r0, r3, 0, 25, 25
    opword  0x41820034  // beq .L_8007DD14
    lwz r10, 0x6c(r9)
    mr r5, r4
    lwz r0, 0x8(r30)
    mr r6, r28
    lwz r3, 0x40(r9)
    mr r8, r7
    lwz r9, 0x5c(r9)
    add r4, r10, r0
    clrrwi r7, r29, 5
    bl fn_80080214
    mr r27, r3
    opword  0x48000024  // b .L_8007DD34
L_8007DD14:
    lis r3, lbl_8045E1C0@ha
    lis r5, lbl_8045E1D4@ha
    addi r6, r5, lbl_8045E1D4@l
    li r4, 0x308
    addi r3, r3, lbl_8045E1C0@l
    opword  0x38A28748  // li r5, lbl_8053B6E8@sda21
    crclr 6
    bl fn_8008A324
L_8007DD34:
    cmplwi r31, 0x0
    opword  0x41820008  // beq .L_8007DD40
    stw r27, 0x0(r31)
L_8007DD40:
    mr r3, r28
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007DD58(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    mr r28, r3
    lwz r0, 0x44(r3)
    cmplwi r0, 0x0
    opword  0x4182005C  // beq .L_8007DDDC
    lbz r0, 0x3c(r28)
    cmplwi r0, 0x1
    opword  0x41820050  // beq .L_8007DDDC
    lwz r30, 0x4c(r28)
    li r29, 0x0
    li r31, 0x0
    opword  0x48000030  // b .L_8007DDCC
L_8007DDA0:
    lwz r3, 0x10(r30)
    lwz r0, 0x4(r30)
    cmplwi r3, 0x0
    srwi r0, r0, 24
    opword  0x41820018  // beq .L_8007DDC8
    rlwinm. r0, r0, 0, 27, 27
    opword  0x4082000C  // bne .L_8007DDC4
    lwz r4, 0x38(r28)
    bl fn_800838F4
L_8007DDC4:
    stw r31, 0x10(r30)
L_8007DDC8:
    addi r29, r29, 0x1
L_8007DDCC:
    lwz r3, 0x44(r28)
    lwz r0, 0x8(r3)
    cmplw r29, r0
    opword  0x4180FFC8  // blt .L_8007DDA0
L_8007DDDC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007DDFC(void)
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
    bl fn_8007C640
    mr. r31, r3
    opword  0x4082000C  // bne .L_8007DE30
    li r3, 0x0
    opword  0x48000028  // b .L_8007DE54
L_8007DE30:
    lwz r0, 0x4(r31)
    rlwinm. r0, r0, 8, 27, 27
    opword  0x40820010  // bne .L_8007DE48
    lwz r4, 0x38(r29)
    mr r3, r30
    bl fn_800838F4
L_8007DE48:
    li r0, 0x0
    li r3, 0x1
    stw r0, 0x10(r31)
L_8007DE54:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007DE70(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    stw r0, 0x64(r1)
    lwz r0, 0x50(r3)
    stw r31, 0x5c(r1)
    cmplwi r0, 0x0
    stw r30, 0x58(r1)
    mr r30, r4
    stw r29, 0x54(r1)
    mr r29, r3
    opword  0x40820018  // bne .L_8007DEB0
    lwz r12, 0x0(r3)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    opword  0x4800016C  // b .L_8007E018
L_8007DEB0:
    bl fn_8007C640
    mr. r31, r3
    opword  0x4082000C  // bne .L_8007DEC4
    li r3, -0x1
    opword  0x48000158  // b .L_8007E018
L_8007DEC4:
    lwz r3, 0x4(r31)
    rlwinm. r0, r3, 8, 29, 29
    srwi r4, r3, 24
    opword  0x40820020  // bne .L_8007DEF0
    mr r3, r29
    mr r4, r30
    lwz r12, 0x0(r29)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    opword  0x4800012C  // b .L_8007E018
L_8007DEF0:
    rlwinm. r0, r4, 0, 27, 27
    opword  0x41820028  // beq .L_8007DF1C
    lbz r0, 0x5(r30)
    lbz r3, 0x4(r30)
    slwi r0, r0, 16
    lbz r4, 0x6(r30)
    rlwimi r0, r3, 24, 0, 7
    lbz r5, 0x7(r30)
    rlwimi r0, r4, 8, 16, 23
    or r3, r5, r0
    opword  0x48000100  // b .L_8007E018
L_8007DF1C:
    rlwinm. r0, r4, 0, 26, 26
    addi r3, r1, 0x2f
    clrrwi r30, r3, 5
    opword  0x41820044  // beq .L_8007DF6C
    lwz r3, 0x68(r29)
    mr r4, r30
    lwz r9, 0x8(r31)
    li r5, 0x20
    lwz r0, 0x14(r3)
    li r6, 0x0
    li r7, 0x0
    li r8, 0x0
    add r3, r9, r0
    li r9, -0x1
    li r10, 0x0
    bl JKRAram_aramToMainRam_addr
    mr r3, r30
    li r4, 0x20
    bl DCInvalidateRange
    opword  0x48000070  // b .L_8007DFD8
L_8007DF6C:
    rlwinm. r0, r4, 0, 25, 25
    opword  0x41820048  // beq .L_8007DFB8
    li r0, 0x0
    lwz r9, 0x6c(r29)
    stw r0, 0x8(r1)
    mr r4, r30
    lwz r3, 0x40(r29)
    li r5, 0x2
    lwz r0, 0x8(r31)
    li r6, 0x20
    li r7, 0x0
    li r8, 0x1
    add r9, r9, r0
    li r10, 0x0
    bl fn_80080828
    mr r3, r30
    li r4, 0x20
    bl DCInvalidateRange
    opword  0x48000024  // b .L_8007DFD8
L_8007DFB8:
    lis r3, lbl_8045E1C0@ha
    lis r5, lbl_8045E1E8@ha
    addi r6, r5, lbl_8045E1E8@l
    li r4, 0x3af
    addi r3, r3, lbl_8045E1C0@l
    opword  0x38A28748  // li r5, lbl_8053B6E8@sda21
    crclr 6
    bl fn_8008A324
L_8007DFD8:
    lbz r0, 0x5(r30)
    mr r3, r29
    lwz r12, 0x0(r29)
    mr r4, r31
    lbz r5, 0x4(r30)
    slwi r0, r0, 16
    lbz r6, 0x6(r30)
    rlwimi r0, r5, 24, 0, 7
    lbz r5, 0x7(r30)
    rlwimi r0, r6, 8, 16, 23
    lwz r12, 0x48(r12)
    or r29, r5, r0
    mr r5, r29
    mtctr r12
    bctrl
    mr r3, r29
L_8007E018:
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    lwz r29, 0x54(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_8007E034(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x800D8C38  // lwz r0, lbl_8053A7F8@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082002C  // bne .L_8007E07C
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    li r3, 0x7c
    li r5, 0x0
    bl fn_8008440C
    mr. r0, r3
    opword  0x41820010  // beq .L_8007E078
    mr r4, r31
    bl fn_8007E094
    mr r0, r3
L_8007E078:
    opword  0x900D8C38  // stw r0, lbl_8053A7F8@sda21(r0)
L_8007E07C:
    lwz r0, 0x14(r1)
    opword  0x806D8C38  // lwz r3, lbl_8053A7F8@sda21(r0)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007E094(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r6, r4
    li r4, 0x4000
    stw r0, 0x14(r1)
    li r5, 0x10
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_80085474
    lis r3, lbl_80498D40@ha
    addi r0, r3, lbl_80498D40@l
    stw r0, 0x0(r31)
    lwz r3, 0x2c(r31)
    bl OSResumeThread
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007E0E4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820028  // beq .L_8007E128
    lis r5, lbl_80498D40@ha
    li r4, 0x0
    addi r0, r5, lbl_80498D40@l
    stw r0, 0x0(r30)
    bl fn_80085674
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007E128
    mr r3, r30
    bl dtor_80084580
L_8007E128:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007E144(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r3, lbl_80498D20@ha
    lis r4, lbl_80498D00@ha
    stw r0, 0x24(r1)
    addi r3, r3, lbl_80498D20@l
    li r5, 0x8
    addi r4, r4, lbl_80498D00@l
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    bl OSInitMessageQueue
    lis r3, lbl_80498D20@ha
    addi r31, r3, lbl_80498D20@l
L_8007E178:
    mr r3, r31
    addi r4, r1, 0x8
    li r5, 0x1
    bl OSReceiveMessage
    lwz r30, 0x8(r1)
    lwz r3, 0x4(r30)
    lwz r4, 0x8(r30)
    lwz r5, 0xc(r30)
    lwz r6, 0x10(r30)
    bl fn_8007E2DC
    lwz r0, 0x20(r30)
    cmpwi r0, 0x0
    opword  0x41820018  // beq .L_8007E1C0
    cmpwi r0, 0x1
    opword  0x4082FFC8  // bne .L_8007E178
    lwz r3, 0x24(r30)
    bl fn_8007B248
    opword  0x4BFFFFBC  // b .L_8007E178
L_8007E1C0:
    lwz r12, 0x14(r30)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_8007E1DC
    mr r3, r30
    mtctr r12
    bctrl
    opword  0x4BFFFFA0  // b .L_8007E178
L_8007E1DC:
    lwz r3, 0x1c(r30)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_8007E1F8
    li r4, 0x1
    li r5, 0x0
    bl OSSendMessage
    opword  0x4BFFFF84  // b .L_8007E178
L_8007E1F8:
    addi r3, r30, 0x28
    li r4, 0x1
    li r5, 0x0
    bl OSSendMessage
    opword  0x4BFFFF70  // b .L_8007E178
}

ASM void fn_8007E20C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_80498D20@ha
    mr r4, r3
    stw r0, 0x14(r1)
    addi r3, r5, lbl_80498D20@l
    li r5, 0x0
    bl OSSendMessage
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007E23C(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r27, 0x1c(r1)
    mr r28, r4
    mr r27, r3
    mr r29, r5
    mr r30, r6
    li r3, 0x4c
    li r5, -0x4
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    bl fn_8008440C
    mr. r31, r3
    opword  0x4182000C  // beq .L_8007E27C
    bl fn_8007E668
    mr r31, r3
L_8007E27C:
    stw r27, 0x4(r31)
    lis r3, lbl_80498D20@ha
    li r0, 0x0
    mr r4, r31
    stw r28, 0x8(r31)
    addi r3, r3, lbl_80498D20@l
    li r5, 0x0
    stw r29, 0xc(r31)
    stw r30, 0x10(r31)
    stw r0, 0x14(r31)
    bl OSSendMessage
    addi r3, r31, 0x28
    addi r4, r1, 0x8
    li r5, 0x1
    bl OSReceiveMessage
    mr r3, r31
    li r4, 0x1
    bl fn_8007E6B8
    lmw r27, 0x1c(r1)
    li r3, 0x1
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_8007E2DC(void)
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
    bl fn_8007E5F0
    cmpwi r3, 0x1
    opword  0x4082001C  // bne .L_8007E32C
    mr r3, r28
    mr r4, r29
    mr r5, r30
    mr r6, r31
    bl fn_8007E368
    opword  0x48000020  // b .L_8007E348
L_8007E32C:
    cmpwi r3, 0x2
    opword  0x40820018  // bne .L_8007E348
    mr r3, r28
    mr r4, r29
    mr r5, r30
    mr r6, r31
    bl fn_8007E50C
L_8007E348:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007E368(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    cmplwi r5, 0x0
    stmw r27, 0xc(r1)
    lbz r7, 0x9(r3)
    lbz r8, 0x5(r3)
    lbz r0, 0xd(r3)
    slwi r9, r7, 16
    lbz r10, 0x8(r3)
    slwi r29, r8, 16
    lbz r28, 0x4(r3)
    slwi r7, r0, 16
    lbz r0, 0xc(r3)
    rlwimi r9, r10, 24, 0, 7
    lbz r12, 0xa(r3)
    rlwimi r29, r28, 24, 0, 7
    lbz r30, 0x6(r3)
    rlwimi r7, r0, 24, 0, 7
    lbz r8, 0xe(r3)
    rlwimi r9, r12, 8, 16, 23
    lbz r28, 0xb(r3)
    rlwimi r29, r30, 8, 16, 23
    lbz r0, 0x7(r3)
    rlwimi r7, r8, 8, 16, 23
    lbz r10, 0xf(r3)
    or r9, r28, r9
    or r0, r0, r29
    li r8, 0x0
    or r12, r10, r7
    li r10, 0x0
    li r7, 0x10
    opword  0x41820120  // beq .L_8007E500
    cmplw r6, r0
    opword  0x41810118  // bgt .L_8007E500
    mr r31, r4
    add r12, r3, r12
L_8007E3F4:
    cmplwi r10, 0x0
    opword  0x40820030  // bne .L_8007E428
    add r28, r3, r7
    li r10, 0x20
    lbz r11, 0x1(r28)
    addi r7, r7, 0x4
    lbz r29, 0x0(r28)
    lbz r30, 0x2(r28)
    slwi r11, r11, 16
    rlwimi r11, r29, 24, 0, 7
    lbz r28, 0x3(r28)
    rlwimi r11, r30, 8, 16, 23
    or r11, r28, r11
L_8007E428:
    clrrwi. r29, r11, 31
    opword  0x41820034  // beq .L_8007E460
    cmplwi r6, 0x0
    opword  0x40820018  // bne .L_8007E44C
    lbz r29, 0x0(r12)
    subic. r5, r5, 0x1
    stb r29, 0x0(r31)
    opword  0x4082000C  // bne .L_8007E450
    opword  0x480000B8  // b .L_8007E500
L_8007E44C:
    subi r6, r6, 0x1
L_8007E450:
    addi r8, r8, 0x1
    addi r31, r31, 0x1
    addi r12, r12, 0x1
    opword  0x48000094  // b .L_8007E4F0
L_8007E460:
    add r28, r3, r9
    addi r9, r9, 0x2
    lbz r30, 0x0(r28)
    lbz r29, 0x1(r28)
    rlwimi r29, r30, 8, 16, 23
    srawi. r28, r29, 12
    clrlwi r29, r29, 20
    subf r27, r29, r8
    opword  0x40820014  // bne .L_8007E494
    lbz r29, 0x0(r12)
    addi r12, r12, 0x1
    addi r29, r29, 0x12
    opword  0x48000008  // b .L_8007E498
L_8007E494:
    addi r29, r28, 0x2
L_8007E498:
    subf r28, r8, r0
    cmpw r29, r28
    opword  0x40810008  // ble .L_8007E4A8
    mr r29, r28
L_8007E4A8:
    add r30, r4, r8
    mtctr r29
    cmpwi r29, 0x0
    opword  0x4081003C  // ble .L_8007E4F0
L_8007E4B8:
    cmplwi r6, 0x0
    opword  0x4082001C  // bne .L_8007E4D8
    subi r29, r27, 0x1
    subic. r5, r5, 0x1
    lbzx r29, r4, r29
    stb r29, 0x0(r30)
    opword  0x4082000C  // bne .L_8007E4DC
    opword  0x4800002C  // b .L_8007E500
L_8007E4D8:
    subi r6, r6, 0x1
L_8007E4DC:
    addi r8, r8, 0x1
    addi r31, r31, 0x1
    addi r30, r30, 0x1
    addi r27, r27, 0x1
    opword  0x4200FFCC  // bdnz .L_8007E4B8
L_8007E4F0:
    cmpw r8, r0
    slwi r11, r11, 1
    subi r10, r10, 0x1
    opword  0x4180FEF8  // blt .L_8007E3F4
L_8007E500:
    lmw r27, 0xc(r1)
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007E50C(void)
{
    nofralloc
    lwz r0, 0x4(r3)
    cmplwi r5, 0x0
    li r10, 0x0
    add r0, r4, r0
    subf r8, r6, r0
    beqlr
    lwz r0, 0x0(r3)
    cmplw r6, r0
    bgtlr
    addi r12, r3, 0x10
L_8007E534:
    cmpwi r10, 0x0
    opword  0x40820010  // bne .L_8007E548
    lbz r11, 0x0(r12)
    li r10, 0x8
    addi r12, r12, 0x1
L_8007E548:
    rlwinm. r0, r11, 0, 24, 24
    opword  0x41820030  // beq .L_8007E57C
    cmplwi r6, 0x0
    opword  0x4082001C  // bne .L_8007E570
    lbz r0, 0x0(r12)
    subic. r5, r5, 0x1
    stb r0, 0x0(r4)
    addi r4, r4, 0x1
    opword  0x4082000C  // bne .L_8007E574
    blr
L_8007E570:
    subi r6, r6, 0x1
L_8007E574:
    addi r12, r12, 0x1
    opword  0x48000064  // b .L_8007E5DC
L_8007E57C:
    lbz r3, 0x0(r12)
    lbz r0, 0x1(r12)
    addi r12, r12, 0x2
    srawi. r7, r3, 4
    rlwimi r0, r3, 8, 20, 23
    subf r9, r0, r4
    opword  0x40820014  // bne .L_8007E5A8
    lbz r3, 0x0(r12)
    addi r12, r12, 0x1
    addi r3, r3, 0x12
    opword  0x48000008  // b .L_8007E5AC
L_8007E5A8:
    addi r3, r7, 0x2
L_8007E5AC:
    cmplwi r6, 0x0
    opword  0x4082001C  // bne .L_8007E5CC
    lbz r0, -0x1(r9)
    subic. r5, r5, 0x1
    stb r0, 0x0(r4)
    addi r4, r4, 0x1
    opword  0x4082000C  // bne .L_8007E5D0
    blr
L_8007E5CC:
    subi r6, r6, 0x1
L_8007E5D0:
    subic. r3, r3, 0x1
    addi r9, r9, 0x1
    opword  0x4082FFD4  // bne .L_8007E5AC
L_8007E5DC:
    cmplw r4, r8
    slwi r11, r11, 1
    subi r10, r10, 0x1
    opword  0x4082FF4C  // bne .L_8007E534
    blr
}

ASM void fn_8007E5F0(void)
{
    nofralloc
    lbz r4, 0x0(r3)
    cmpwi r4, 0x59
    opword  0x40820040  // bne .L_8007E638
    lbz r0, 0x1(r3)
    cmpwi r0, 0x61
    opword  0x40820034  // bne .L_8007E638
    lbz r0, 0x3(r3)
    cmpwi r0, 0x30
    opword  0x40820028  // bne .L_8007E638
    lbz r0, 0x2(r3)
    cmpwi r0, 0x79
    opword  0x4082000C  // bne .L_8007E628
    li r3, 0x1
    blr
L_8007E628:
    cmpwi r0, 0x7a
    opword  0x4082000C  // bne .L_8007E638
    li r3, 0x2
    blr
L_8007E638:
    cmpwi r4, 0x41
    opword  0x40820024  // bne .L_8007E660
    lbz r0, 0x1(r3)
    cmpwi r0, 0x53
    opword  0x40820018  // bne .L_8007E660
    lbz r0, 0x2(r3)
    cmpwi r0, 0x52
    opword  0x4082000C  // bne .L_8007E660
    li r3, 0x3
    blr
L_8007E660:
    li r3, 0x0
    blr
}

ASM void fn_8007E668(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r5, 0x1
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r31, 0x28
    addi r4, r31, 0x48
    bl OSInitMessageQueue
    li r0, 0x0
    mr r3, r31
    stw r0, 0x14(r31)
    stw r0, 0x1c(r31)
    stw r31, 0x18(r31)
    stw r0, 0x20(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007E6B8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820010  // beq .L_8007E6DC
    extsh. r0, r4
    opword  0x40810008  // ble .L_8007E6DC
    bl dtor_80084580
L_8007E6DC:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007E6F4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_80498D50@ha
    stw r0, 0x14(r1)
    addi r0, r4, lbl_80498D50@l
    stw r31, 0xc(r1)
    mr r31, r3
    mr r4, r31
    stw r0, 0x0(r3)
    addi r3, r4, 0x8
    bl fn_80086E2C
    mr r3, r31
    bl fn_80083B50
    stw r3, 0x4(r31)
    lwz r3, 0x4(r31)
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_8007E744
    addi r3, r3, 0x5c
    addi r4, r31, 0x8
    bl fn_80086F58
L_8007E744:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007E75C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182004C  // beq .L_8007E7C4
    lis r3, lbl_80498D50@ha
    addi r0, r3, lbl_80498D50@l
    stw r0, 0x0(r30)
    lwz r3, 0x4(r30)
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_8007E7A0
    addi r3, r3, 0x5c
    addi r4, r30, 0x8
    bl fn_80087298
L_8007E7A0:
    addic. r0, r30, 0x8
    opword  0x41820010  // beq .L_8007E7B4
    addi r3, r30, 0x8
    li r4, 0x0
    bl fn_80086E44
L_8007E7B4:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007E7C4
    mr r3, r30
    bl dtor_80084580
L_8007E7C4:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007E7E0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    mr r0, r30
    mr r31, r0
    bl fn_8007E6F4
    lis r4, lbl_80498B90@ha
    lis r3, lbl_80498D60@ha
    addi r0, r4, lbl_80498B90@l
    li r5, 0x0
    stw r0, 0x0(r31)
    addi r0, r3, lbl_80498D60@l
    mr r4, r30
    addi r3, r30, 0xe4
    stb r5, 0x18(r31)
    stw r0, 0x0(r30)
    bl fn_80086E2C
    mr r3, r30
    bl fn_8007E9A0
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007E854(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r4
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    mr r0, r29
    mr r30, r0
    bl fn_8007E6F4
    lis r4, lbl_80498B90@ha
    lis r3, lbl_80498D60@ha
    addi r0, r4, lbl_80498B90@l
    li r5, 0x0
    stw r0, 0x0(r30)
    addi r0, r3, lbl_80498D60@l
    mr r4, r29
    addi r3, r29, 0xe4
    stb r5, 0x18(r30)
    stw r0, 0x0(r29)
    bl fn_80086E2C
    mr r3, r29
    bl fn_8007E9A0
    mr r3, r29
    mr r4, r31
    lwz r12, 0x0(r29)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    stb r3, 0x18(r29)
    lbz r0, 0x18(r29)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8007E8E4
    mr r3, r29
    opword  0x48000008  // b .L_8007E8E8
L_8007E8E4:
    mr r3, r29
L_8007E8E8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007E904(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820064  // beq .L_8007E984
    lis r4, lbl_80498D60@ha
    addi r0, r4, lbl_80498D60@l
    stw r0, 0x0(r30)
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    addic. r0, r30, 0xe4
    opword  0x41820010  // beq .L_8007E954
    addi r3, r30, 0xe4
    li r4, 0x0
    bl fn_80086E44
L_8007E954:
    cmplwi r30, 0x0
    opword  0x4182001C  // beq .L_8007E974
    lis r4, lbl_80498B90@ha
    mr r3, r30
    addi r0, r4, lbl_80498B90@l
    li r4, 0x0
    stw r0, 0x0(r30)
    bl fn_8007E75C
L_8007E974:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8007E984
    mr r3, r30
    bl dtor_80084580
L_8007E984:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007E9A0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    stw r31, 0x98(r3)
    addi r3, r31, 0x1c
    bl OSInitMutex
    addi r3, r31, 0x34
    bl OSInitMutex
    addi r3, r31, 0xc0
    addi r4, r31, 0xe0
    li r5, 0x1
    bl OSInitMessageQueue
    addi r3, r31, 0x9c
    addi r4, r31, 0xbc
    li r5, 0x1
    bl OSInitMessageQueue
    li r0, 0x0
    stw r0, 0xf4(r31)
    stw r0, 0x50(r31)
    stw r0, 0x58(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007EA0C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lbz r0, 0x18(r3)
    cmplwi r0, 0x0
    opword  0x40820044  // bne .L_8007EA6C
    mr r3, r4
    addi r4, r31, 0x5c
    bl fn_80048474
    neg r0, r3
    or r0, r0, r3
    srwi r0, r0, 31
    stb r0, 0x18(r31)
    lbz r0, 0x18(r31)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_8007EA6C
    lis r3, lbl_8052E820@ha
    addi r4, r31, 0xe4
    addi r3, r3, lbl_8052E820@l
    bl fn_80086F58
    addi r3, r31, 0x5c
    bl DVDGetCommandBlockStatus
L_8007EA6C:
    lwz r0, 0x14(r1)
    lbz r3, 0x18(r31)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007EA84(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lbz r0, 0x18(r3)
    cmplwi r0, 0x0
    opword  0x40820044  // bne .L_8007EAE4
    mr r3, r4
    addi r4, r31, 0x5c
    bl fn_80048400
    neg r0, r3
    or r0, r0, r3
    srwi r0, r0, 31
    stb r0, 0x18(r31)
    lbz r0, 0x18(r31)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_8007EAE4
    lis r3, lbl_8052E820@ha
    addi r4, r31, 0xe4
    addi r3, r3, lbl_8052E820@l
    bl fn_80086F58
    addi r3, r31, 0x5c
    bl DVDGetCommandBlockStatus
L_8007EAE4:
    lwz r0, 0x14(r1)
    lbz r3, 0x18(r31)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007EAFC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lbz r0, 0x18(r3)
    cmplwi r0, 0x0
    opword  0x41820050  // beq .L_8007EB68
    addi r3, r31, 0x5c
    bl fn_8004853C
    cmpwi r3, 0x0
    opword  0x41820020  // beq .L_8007EB48
    li r0, 0x0
    lis r3, lbl_8052E820@ha
    stb r0, 0x18(r31)
    addi r3, r3, lbl_8052E820@l
    addi r4, r31, 0xe4
    bl fn_80087298
    opword  0x48000024  // b .L_8007EB68
L_8007EB48:
    lis r3, lbl_8045E200@ha
    lis r5, lbl_8045E210@ha
    addi r6, r5, lbl_8045E210@l
    li r4, 0xd5
    addi r3, r3, lbl_8045E200@l
    opword  0x38A28750  // li r5, lbl_8053B6F0@sda21
    crclr 6
    bl fn_8008A324
L_8007EB68:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007EB7C(void)
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
    addi r3, r28, 0x1c
    bl OSLockMutex
    lwz r0, 0xf4(r28)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_8007EBCC
    addi r3, r28, 0x1c
    bl OSUnlockMutex
    li r3, -0x1
    opword  0x48000058  // b .L_8007EC20
L_8007EBCC:
    bl OSGetCurrentThread
    lis r4, fn_8007EC9C@ha
    stw r3, 0xf4(r28)
    addi r7, r4, fn_8007EC9C@l
    mr r6, r31
    mr r4, r29
    mr r5, r30
    addi r3, r28, 0x5c
    li r31, -0x1
    li r8, 0x2
    bl fn_80048784
    cmpwi r3, 0x0
    opword  0x41820010  // beq .L_8007EC0C
    mr r3, r28
    bl fn_8007EC48
    mr r31, r3
L_8007EC0C:
    li r0, 0x0
    addi r3, r28, 0x1c
    stw r0, 0xf4(r28)
    bl OSUnlockMutex
    mr r3, r31
L_8007EC20:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007EC40(void)
{
    nofralloc
    li r3, -0x1
    blr
}

ASM void fn_8007EC48(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    addi r3, r31, 0x1c
    bl OSLockMutex
    addi r3, r31, 0xc0
    addi r4, r1, 0x8
    li r5, 0x1
    bl OSReceiveMessage
    li r0, 0x0
    addi r3, r31, 0x1c
    stw r0, 0xf4(r31)
    bl OSUnlockMutex
    lwz r0, 0x24(r1)
    lwz r3, 0x8(r1)
    lwz r31, 0x1c(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8007EC9C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r5, 0x0
    stw r0, 0x14(r1)
    lwz r6, 0x3c(r4)
    mr r4, r3
    addi r3, r6, 0xc0
    bl OSSendMessage
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8007ECCC(void)
{
    nofralloc
    lwz r3, 0x90(r3)
    blr
}

