#include "types.h"

extern f32 __OSFpscrEnableBits;
extern f32 lbl_8045E820;
extern f32 lbl_8045E854;
extern f32 lbl_8045E878;
extern f32 lbl_8045E934;
extern f32 lbl_8045EC1C;
extern f32 lbl_8045ED8C;
extern f32 lbl_80497194;
extern f32 lbl_804989D0;
extern f32 lbl_80498FB8;
extern f32 lbl_80499018;
extern f32 lbl_80499028;
extern f32 lbl_8049904C;
extern f32 lbl_80499068;
extern f32 lbl_80499090;
extern f32 lbl_804990B8;
extern f32 lbl_804990C8;
extern f32 lbl_80499390;
extern f32 lbl_804993B0;
extern f32 lbl_804993D0;
extern f32 lbl_80499414;
extern f32 lbl_80499520;
extern f32 lbl_80499548;
extern f32 lbl_804BA070;
extern f32 lbl_804BA0B0;
extern f32 lbl_804BA1B0;
extern f32 lbl_804BA1D0;
extern f32 lbl_8052E894;
extern f32 lbl_80539D88;
extern f32 lbl_80539D90;
extern f32 lbl_8053A8A8;
extern f32 lbl_8053A8AC;
extern f32 lbl_8053A8B0;
extern f32 lbl_8053A8D8;
extern f32 lbl_8053A8E0;
extern f32 lbl_8053A8E4;
extern f32 lbl_8053A8E8;
extern f32 lbl_8053A8F0;
extern f32 lbl_8053A8F8;
extern f32 lbl_8053A900;
extern f32 lbl_8053A904;
extern f32 lbl_8053A908;
extern f32 lbl_8053A90C;
extern f32 lbl_8053A910;
extern f32 lbl_8053A914;
extern f32 lbl_8053A918;
extern f32 lbl_8053A91C;
extern f32 lbl_8053A980;
extern f32 lbl_8053B770;
extern f32 lbl_8053B778;
extern f32 lbl_8053B780;
extern f32 lbl_8053B788;
extern f32 lbl_8053B78C;
extern f32 lbl_8053B790;
extern f32 lbl_8053B798;
extern f32 lbl_8053B7A0;
extern f32 lbl_8053B7A4;
extern f32 lbl_8053B7A8;
extern f32 lbl_8053B7AC;
extern f32 lbl_8053B7B0;
extern f32 lbl_8053B7B4;
extern f32 lbl_8053B7B8;
extern f32 lbl_8053B7C0;
extern f32 lbl_8053B7C8;
extern f32 lbl_8053B7D0;
extern f32 lbl_8053B7D8;
extern f32 lbl_8053B7DC;
extern f32 lbl_8053B7E0;
extern f32 lbl_8053B7E8;
extern f32 lbl_8053B7F0;
extern f32 lbl_8053B7F8;
extern f32 lbl_8053B800;
extern f32 lbl_8053B808;
extern f32 lbl_8053B810;
extern f32 lbl_8053B818;
extern f32 lbl_8053B820;
extern f32 lbl_8053B828;
extern f32 lbl_8053B830;
extern f32 lbl_8053B838;
extern f32 lbl_8053B840;
extern f32 lbl_8053B860;
extern f32 lbl_8053B864;
extern f32 lbl_8053B868;
extern f32 lbl_8053B86C;
extern f32 lbl_8053B874;
extern f32 lbl_8053B87C;
extern f32 lbl_8053B880;
extern f32 lbl_8053B888;
extern f32 lbl_8053B88C;

extern void DVDGetCommandBlockStatus(void);
extern void OSDisableInterrupts(void);
extern void OSEnableInterrupts(void);
extern void OSEnableScheduler(void);
extern void OSFillFPUContext(void);
extern void OSGetArenaHi(void);
extern void OSGetCurrentContext(void);
extern void OSGetCurrentThread(void);
extern void OSGetStackPointer(void);
extern void OSGetTime(void);
extern void OSInitMessageQueue(void);
extern void OSLockMutex(void);
extern void OSPanic(void);
extern void OSProtectRange(void);
extern void OSReceiveMessage(void);
extern void OSReport(void);
extern void OSRestoreInterrupts(void);
extern void OSResumeThread(void);
extern void OSSendMessage(void);
extern void OSSetErrorHandler(void);
extern void OSSuspendThread(void);
extern void OSUnlockMutex(void);
extern void OSYieldThread(void);
extern void PPCMfmsr(void);
extern void PPCMtmsr(void);
extern void __div2i(void);
extern void dtor_80084580(void);
extern void dtor_8008D028(void);
extern void fn_80040F90(void);
extern void fn_80048474(void);
extern void fn_8004853C(void);
extern void fn_80048784(void);
extern void fn_8004BA50(void);
extern void fn_8004BA94(void);
extern void fn_8004C6F0(void);
extern void fn_8004CF18(void);
extern void fn_8004D048(void);
extern void fn_8004D0BC(void);
extern void fn_8004D0C4(void);
extern void fn_8004D140(void);
extern void fn_8006B4E8(void);
extern void fn_8007E6F4(void);
extern void fn_8007E75C(void);
extern void fn_8008353C(void);
extern void fn_80083660(void);
extern void fn_80083868(void);
extern void fn_800838F4(void);
extern void fn_80083A68(void);
extern void fn_80083AD0(void);
extern void fn_8008425C(void);
extern void fn_80084370(void);
extern void fn_8008440C(void);
extern void fn_80085474(void);
extern void fn_80085674(void);
extern void fn_8008CCB8(void);
extern void fn_8008CD70(void);
extern void fn_8008CF54(void);
extern void fn_8008D15C(void);
extern void fn_8008D4CC(void);
extern void fn_800937B0(void);
extern void fn_80093894(void);
extern void fn_80093BD0(void);
extern void memcpy(void);
extern void strcat(void);
extern void strcmp(void);
extern void strcpy(void);
extern void strlen(void);
extern void strtol(void);

ASM void fn_80085968(void);
ASM void fn_800859BC(void);
ASM void fn_80085A10(void);
ASM void fn_80085B5C(void);
ASM void fn_80085BBC(void);
ASM void fn_80085C50(void);
ASM void fn_80085CB8(void);
ASM void fn_80085DEC(void);
ASM void fn_80085F0C(void);
ASM void fn_80085FF4(void);
ASM void fn_8008603C(void);
ASM void fn_800861C4(void);
ASM void fn_800863C0(void);
ASM void fn_80086438(void);
ASM void fn_8008657C(void);
ASM void fn_80086580(void);
ASM void fn_80086584(void);
ASM void fn_8008658C(void);
ASM void fn_800865DC(void);
ASM void fn_80086614(void);
ASM void fn_80086654(void);
ASM void fn_8008665C(void);
ASM void fn_8008668C(void);
ASM void fn_800866D4(void);
ASM void fn_80086724(void);
ASM void fn_80086764(void);
ASM void fn_80086890(void);
ASM void fn_8008693C(void);
ASM void fn_80086A18(void);
ASM void fn_80086A48(void);
ASM void fn_80086A54(void);
ASM void fn_80086A9C(void);
ASM void fn_80086AF8(void);
ASM void fn_80086B50(void);
ASM void fn_80086BD8(void);
ASM void fn_80086C64(void);
ASM void fn_80086CC0(void);
ASM void fn_80086D7C(void);
ASM void fn_80086DC0(void);
ASM void fn_80086E2C(void);
ASM void fn_80086E44(void);
ASM void fn_80086EA4(void);
ASM void fn_80086EDC(void);
ASM void fn_80086F44(void);
ASM void fn_80086F58(void);
ASM void fn_80087010(void);
ASM void fn_800870C8(void);
ASM void fn_80087298(void);
ASM void fn_80087348(void);
ASM void fn_8008735C(void);
ASM void fn_800873D4(void);
ASM void fn_80087450(void);
ASM void fn_800874C0(void);
ASM void fn_800874C8(void);
ASM void fn_800874D0(void);
ASM void fn_80087514(void);
ASM void fn_800875F4(void);
ASM void fn_800876DC(void);
ASM void fn_8008770C(void);
ASM void fn_80087714(void);
ASM void fn_8008775C(void);
ASM void fn_80087868(void);
ASM void fn_800878A4(void);
ASM void fn_800878F0(void);
ASM void fn_80087950(void);
ASM void fn_8008797C(void);
ASM void fn_800879A0(void);
ASM void fn_800879CC(void);
ASM void fn_80087AB4(void);
ASM void fn_80087ABC(void);
ASM void fn_80087AC0(void);
ASM void fn_80087BAC(void);
ASM void fn_80087DC0(void);
ASM void fn_80087E48(void);
ASM void fn_80087EE0(void);
ASM void fn_80087FE0(void);
ASM void fn_80088050(void);
ASM void fn_80088060(void);
ASM void fn_80088070(void);
ASM void fn_800880CC(void);
ASM void dtor_80088628(void);
ASM void fn_80088684(void);
ASM void fn_80088710(void);
ASM void fn_80088A10(void);
ASM void fn_80088A58(void);
ASM void fn_80088B34(void);
ASM void fn_80088B58(void);
ASM void fn_80088B7C(void);
ASM void fn_80088BE4(void);
ASM void fn_80088C54(void);
ASM void fn_80088D1C(void);
ASM void fn_80088DE8(void);
ASM void fn_80088E64(void);
ASM void fn_80088F88(void);
ASM void fn_80088F90(void);
ASM void fn_80088F98(void);
ASM void fn_80088FA0(void);
ASM void fn_80088FA8(void);
ASM void fn_80089084(void);
ASM void fn_800890B0(void);
ASM void fn_8008918C(void);
ASM void fn_800891B8(void);
ASM void fn_80089264(void);
ASM void fn_8008927C(void);
ASM void fn_800892B4(void);
ASM void fn_80089428(void);
ASM void fn_80089510(void);
ASM void fn_80089534(void);
ASM void fn_80089578(void);
ASM void fn_80089620(void);
ASM void fn_80089680(void);
ASM void fn_800898B0(void);
ASM void fn_80089924(void);
ASM void fn_80089A1C(void);
ASM void fn_80089C70(void);
ASM void fn_80089CA4(void);
ASM void fn_80089CD0(void);
ASM void fn_80089E44(void);
ASM void fn_80089E74(void);
ASM void fn_80089FF0(void);
ASM void fn_8008A100(void);
ASM void fn_8008A220(void);
ASM void fn_8008A324(void);
ASM void fn_8008A4C4(void);
ASM void fn_8008A50C(void);
ASM void fn_8008AC7C(void);
ASM void fn_8008AD78(void);
ASM void fn_8008AFBC(void);
ASM void fn_8008B214(void);
ASM void fn_8008B508(void);
ASM void fn_8008B8B4(void);
ASM void fn_8008BE24(void);
ASM void fn_8008C308(void);
ASM void fn_8008C390(void);
ASM void fn_8008C484(void);
ASM void fn_8008C494(void);
ASM void fn_8008C528(void);
ASM void fn_8008C608(void);
ASM void fn_8008C944(void);
ASM void fn_8008CA24(void);
ASM void fn_8008CA44(void);

ASM void fn_80085968(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_800859A0
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800859A0
    mr r3, r30
    bl dtor_80084580
L_800859A0:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800859BC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_800859F4
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800859F4
    mr r3, r30
    bl dtor_80084580
L_800859F4:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80085A10(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r24, 0x10(r1)
    mr. r26, r5
    mr r25, r4
    mr r27, r6
    mr r28, r7
    opword  0x40820008  // bne .L_80085A38
    li r26, 0x4
L_80085A38:
    cmplw r26, r3
    opword  0x40810008  // ble .L_80085A44
    mr r3, r26
L_80085A44:
    subi r0, r26, 0x1
    add r3, r26, r3
    cmplwi r27, 0x0
    nor r31, r0, r0
    subi r0, r3, 0x1
    and r30, r31, r0
    opword  0x40820008  // bne .L_80085A64
    opword  0x836D8CF0  // lwz r27, lbl_8053A8B0@sda21(r0)
L_80085A64:
    addis r0, r25, 0x1
    cmplwi r0, 0xffff
    opword  0x40820014  // bne .L_80085A80
    mr r3, r27
    li r4, 0x8
    bl fn_80083AD0
    mr r25, r3
L_80085A80:
    cmplwi r25, 0x88
    opword  0x4080000C  // bge .L_80085A90
    li r3, 0x0
    opword  0x480000BC  // b .L_80085B48
L_80085A90:
    mr r3, r25
    mr r5, r27
    li r4, 0x0
    bl fn_80083868
    mr r0, r3
    mr. r29, r0
    opword  0x4082000C  // bne .L_80085AB4
    li r3, 0x0
    opword  0x48000098  // b .L_80085B48
L_80085AB4:
    subi r0, r25, 0x88
    slwi r5, r30, 3
    slwi r6, r0, 3
    addi r4, r29, 0x88
    addi r0, r5, 0x1
    divwu r5, r6, r0
    addi r0, r5, 0x7
    clrrwi. r0, r0, 3
    opword  0x40820014  // bne .L_80085AE8
    li r4, 0x0
    bl fn_800838F4
    li r3, 0x0
    opword  0x48000064  // b .L_80085B48
L_80085AE8:
    srwi r5, r0, 3
    add r6, r29, r25
    addi r0, r5, 0x3
    mr. r24, r29
    clrrwi r0, r0, 2
    add r0, r4, r0
    add r5, r26, r0
    subi r0, r5, 0x1
    and r5, r31, r0
    subf r8, r5, r6
    divwu r7, r8, r30
    opword  0x4182001C  // beq .L_80085B30
    stw r28, 0x8(r1)
    mr r6, r30
    mr r9, r26
    mr r10, r27
    bl fn_80085BBC
    mr r24, r3
L_80085B30:
    cmplwi r24, 0x0
    opword  0x40820010  // bne .L_80085B44
    mr r3, r29
    li r4, 0x0
    bl fn_800838F4
L_80085B44:
    mr r3, r24
L_80085B48:
    lmw r24, 0x10(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80085B5C(void)
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
    opword  0x41820024  // beq .L_80085BA4
    lwz r12, 0x0(r3)
    li r4, -0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    mr r3, r30
    mr r4, r31
    bl fn_800838F4
L_80085BA4:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80085BBC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r29, r6
    mr r30, r7
    mr r28, r5
    mr r27, r4
    lbz r7, 0x2b(r1)
    mullw r5, r29, r30
    mr r26, r3
    mr r31, r9
    mr r4, r28
    mr r6, r10
    bl fn_8008353C
    lis r3, lbl_80498FB8@ha
    li r0, 0x1
    addi r4, r3, lbl_80498FB8@l
    mr r3, r26
    stw r4, 0x0(r26)
    stw r29, 0x6c(r26)
    stw r30, 0x70(r26)
    stw r31, 0x74(r26)
    stw r27, 0x78(r26)
    stw r28, 0x7c(r26)
    stb r0, 0x84(r26)
    bl fn_80085CB8
    lwz r4, 0x6c(r26)
    mr r3, r26
    lwz r0, 0x70(r26)
    mullw r0, r4, r0
    stw r0, 0x80(r26)
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80085C50(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820030  // beq .L_80085C9C
    lis r4, lbl_80498FB8@ha
    addi r0, r4, lbl_80498FB8@l
    stw r0, 0x0(r30)
    bl fn_8008425C
    mr r3, r30
    li r4, 0x0
    bl fn_80083660
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80085C9C
    mr r3, r30
    bl dtor_80084580
L_80085C9C:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80085CB8(void)
{
    nofralloc
    lwz r6, 0x78(r3)
    li r7, 0x0
    li r4, 0x0
    opword  0x48000010  // b .L_80085CD4
L_80085CC8:
    stb r4, 0x0(r6)
    addi r6, r6, 0x1
    addi r7, r7, 0x1
L_80085CD4:
    lwz r5, 0x70(r3)
    srawi r0, r5, 3
    addze r0, r0
    cmpw r7, r0
    opword  0x4180FFE4  // blt .L_80085CC8
    clrlwi. r0, r5, 29
    opword  0x418200E4  // beq .L_80085DD0
    li r0, 0x0
    opword  0x38A287D0  // li r5, lbl_8053B770@sda21
    stb r0, 0x0(r6)
    lwz r0, 0x70(r3)
    clrlwi r0, r0, 29
    cmpwi r0, 0x8
    add r5, r5, r0
    subfic r3, r0, 0x8
    opword  0x408000BC  // bge .L_80085DCC
    srwi. r0, r3, 3
    mtctr r0
    opword  0x41820094  // beq .L_80085DB0
L_80085D20:
    lbz r0, 0x0(r6)
    lbz r4, 0x0(r5)
    or r0, r0, r4
    lbz r4, 0x1(r5)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r4
    lbz r4, 0x2(r5)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r4
    lbz r4, 0x3(r5)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r4
    lbz r4, 0x4(r5)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r4
    lbz r4, 0x5(r5)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r4
    lbz r4, 0x6(r5)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r4
    lbz r4, 0x7(r5)
    stb r0, 0x0(r6)
    addi r5, r5, 0x8
    lbz r0, 0x0(r6)
    or r0, r0, r4
    stb r0, 0x0(r6)
    opword  0x4200FF7C  // bdnz .L_80085D20
    andi. r3, r3, 0x7
    opword  0x41820020  // beq .L_80085DCC
L_80085DB0:
    mtctr r3
L_80085DB4:
    lbz r4, 0x0(r5)
    addi r5, r5, 0x1
    lbz r0, 0x0(r6)
    or r0, r0, r4
    stb r0, 0x0(r6)
    opword  0x4200FFEC  // bdnz .L_80085DB4
L_80085DCC:
    addi r6, r6, 0x1
L_80085DD0:
    li r3, 0xff
    opword  0x4800000C  // b .L_80085DE0
L_80085DD8:
    stb r3, 0x0(r6)
    addi r6, r6, 0x1
L_80085DE0:
    clrlwi. r0, r6, 30
    opword  0x4082FFF4  // bne .L_80085DD8
    blr
}

ASM void fn_80085DEC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r6, 0x6c(r3)
    cmplw r4, r6
    opword  0x41810048  // bgt .L_80085E54
    mr r4, r5
    bl fn_80085F0C
    mr. r31, r3
    opword  0x4080000C  // bge .L_80085E28
    li r3, 0x0
    opword  0x480000D0  // b .L_80085EF4
L_80085E28:
    mr r3, r30
    mr r4, r31
    bl fn_80086724
    lwz r5, 0x6c(r30)
    mr r3, r30
    lwz r0, 0x80(r30)
    mr r4, r31
    subf r0, r5, r0
    stw r0, 0x80(r30)
    bl fn_8008665C
    opword  0x480000A4  // b .L_80085EF4
L_80085E54:
    subi r0, r6, 0x1
    add r0, r4, r0
    mr r4, r5
    divwu r31, r0, r6
    mr r5, r31
    bl fn_80085FF4
    mr. r4, r3
    opword  0x4080000C  // bge .L_80085E7C
    li r3, 0x0
    opword  0x4800007C  // b .L_80085EF4
L_80085E7C:
    srawi r0, r4, 3
    mr r9, r4
    add r7, r4, r31
    lwz r6, 0x78(r30)
    addze r5, r0
    opword  0x386287D0  // li r3, lbl_8053B770@sda21
    subf r0, r9, r7
    add r8, r6, r5
    mtctr r0
    cmplw r9, r7
    opword  0x40800034  // bge .L_80085ED8
L_80085EA8:
    clrlwi. r6, r9, 29
    opword  0x40820014  // bne .L_80085EC0
    srawi r0, r9, 3
    lwz r5, 0x78(r30)
    addze r0, r0
    add r8, r5, r0
L_80085EC0:
    lbz r5, 0x0(r8)
    addi r9, r9, 0x1
    lbzx r0, r3, r6
    or r0, r5, r0
    stb r0, 0x0(r8)
    opword  0x4200FFD4  // bdnz .L_80085EA8
L_80085ED8:
    lwz r5, 0x6c(r30)
    mr r3, r30
    lwz r0, 0x80(r30)
    mullw r5, r5, r31
    subf r0, r5, r0
    stw r0, 0x80(r30)
    bl fn_8008665C
L_80085EF4:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80085F0C(void)
{
    nofralloc
    cmpwi r4, 0x0
    opword  0x4180006C  // blt .L_80085F7C
    lwz r5, 0x70(r3)
    li r8, 0x0
    lwz r7, 0x78(r3)
    lis r4, 0x8000
    addi r3, r5, 0x1f
    li r0, 0x20
    srwi r5, r3, 5
    opword  0x48000040  // b .L_80085F70
L_80085F34:
    lwz r6, 0x0(r7)
    cmplwi r6, 0xffff
    opword  0x4182002C  // beq .L_80085F68
    li r9, 0x0
    mtctr r0
L_80085F48:
    srw r3, r4, r9
    and. r3, r6, r3
    opword  0x40820010  // bne .L_80085F60
    slwi r0, r8, 5
    add r3, r9, r0
    blr
L_80085F60:
    addi r9, r9, 0x1
    opword  0x4200FFE4  // bdnz .L_80085F48
L_80085F68:
    addi r8, r8, 0x1
    addi r7, r7, 0x4
L_80085F70:
    cmplw r8, r5
    opword  0x4180FFC0  // blt .L_80085F34
    opword  0x48000074  // b .L_80085FEC
L_80085F7C:
    lwz r5, 0x70(r3)
    lis r4, 0x8000
    lwz r6, 0x78(r3)
    li r0, 0x20
    addi r5, r5, 0x1f
    rlwinm r3, r5, 29, 3, 29
    subi r7, r3, 0x4
    srwi r3, r5, 5
    add r7, r6, r7
    subi r6, r3, 0x1
    opword  0x48000040  // b .L_80085FE4
L_80085FA8:
    lwz r5, 0x0(r7)
    cmplwi r5, 0xffff
    opword  0x4182002C  // beq .L_80085FDC
    li r8, 0x1f
    mtctr r0
L_80085FBC:
    srw r3, r4, r8
    and. r3, r5, r3
    opword  0x40820010  // bne .L_80085FD4
    slwi r0, r6, 5
    add r3, r8, r0
    blr
L_80085FD4:
    subi r8, r8, 0x1
    opword  0x4200FFE4  // bdnz .L_80085FBC
L_80085FDC:
    subi r6, r6, 0x1
    subi r7, r7, 0x4
L_80085FE4:
    cmpwi r6, 0x0
    opword  0x4080FFC0  // bge .L_80085FA8
L_80085FEC:
    li r3, -0x1
    blr
}

ASM void fn_80085FF4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r5, 0x1
    stw r0, 0x14(r1)
    opword  0x4082000C  // bne .L_80086010
    bl fn_80085F0C
    opword  0x48000020  // b .L_8008602C
L_80086010:
    cmpwi r4, 0x0
    opword  0x41800010  // blt .L_80086024
    mr r4, r5
    bl fn_8008603C
    opword  0x4800000C  // b .L_8008602C
L_80086024:
    mr r4, r5
    bl fn_800861C4
L_8008602C:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008603C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    cntlzw r0, r4
    extrwi r6, r0, 1, 26
    li r9, 0x0
    stw r31, 0x1c(r1)
    neg r6, r6
    li r10, -0x1
    li r12, -0x1
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    lwz r5, 0x70(r3)
    lwz r8, 0x78(r3)
    addi r0, r5, 0x1f
    lis r5, 0x1
    subi r11, r5, 0x1
    rlwinm r0, r0, 29, 3, 29
    mr r5, r8
    andc r31, r11, r6
    add r30, r8, r0
    opword  0x48000110  // b .L_80086198
L_8008608C:
    cmplw r5, r30
    opword  0x4182000C  // beq .L_8008609C
    lwz r7, 0x0(r5)
    opword  0x48000008  // b .L_800860A0
L_8008609C:
    li r7, -0x1
L_800860A0:
    cmplwi r7, 0x0
    opword  0x4082002C  // bne .L_800860D0
    clrlwi. r0, r9, 24
    opword  0x4082001C  // bne .L_800860C8
    subf r0, r8, r5
    li r11, 0x0
    srawi r0, r0, 2
    li r9, 0x1
    addze r0, r0
    slwi r10, r0, 5
L_800860C8:
    addi r11, r11, 0x20
    opword  0x480000C8  // b .L_80086194
L_800860D0:
    addis r0, r7, 0x1
    cmplwi r0, 0xffff
    opword  0x4082000C  // bne .L_800860E4
    clrlwi. r0, r9, 24
    opword  0x418200B4  // beq .L_80086194
L_800860E4:
    li r0, 0x20
    li r29, 0x0
    lis r6, 0x8000
    mtctr r0
L_800860F4:
    srw r0, r6, r29
    and. r0, r7, r0
    opword  0x40820030  // bne .L_8008612C
    clrlwi. r0, r9, 24
    opword  0x40820020  // bne .L_80086124
    subf r0, r8, r5
    li r11, 0x0
    srawi r0, r0, 2
    li r9, 0x1
    addze r0, r0
    slwi r0, r0, 5
    add r10, r29, r0
L_80086124:
    addi r11, r11, 0x1
    opword  0x48000064  // b .L_8008618C
L_8008612C:
    clrlwi. r0, r9, 24
    opword  0x4182005C  // beq .L_8008618C
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_80086150
    cmpw r11, r31
    opword  0x40810048  // ble .L_80086188
    mr r12, r10
    mr r31, r11
    opword  0x4800003C  // b .L_80086188
L_80086150:
    cmplw r11, r4
    opword  0x4082000C  // bne .L_80086160
    mr r3, r10
    opword  0x48000054  // b .L_800861B0
L_80086160:
    opword  0x40810028  // ble .L_80086188
    lbz r0, 0x84(r3)
    cmplwi r0, 0x1
    opword  0x4082000C  // bne .L_80086178
    mr r3, r10
    opword  0x4800003C  // b .L_800861B0
L_80086178:
    cmpw r11, r31
    opword  0x4080000C  // bge .L_80086188
    mr r12, r10
    mr r31, r11
L_80086188:
    li r9, 0x0
L_8008618C:
    addi r29, r29, 0x1
    opword  0x4200FF64  // bdnz .L_800860F4
L_80086194:
    addi r5, r5, 0x4
L_80086198:
    cmplw r5, r30
    opword  0x4081FEF0  // ble .L_8008608C
    cmplwi r4, 0x0
    mr r3, r12
    opword  0x40820008  // bne .L_800861B0
    mr r3, r31
L_800861B0:
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800861C4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r6, 0x1
    subi r6, r6, 0x1
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    li r30, -0x1
    stw r29, 0x14(r1)
    lwz r7, 0x70(r3)
    lwz r5, 0x78(r3)
    addi r0, r7, 0x1f
    mr r7, r6
    rlwinm r8, r0, 29, 3, 29
    subi r12, r5, 0x4
    subi r8, r8, 0x4
    li r0, -0x1
    add r8, r5, r8
    opword  0x48000188  // b .L_80086390
L_8008620C:
    cmplw r8, r12
    opword  0x4182000C  // beq .L_8008621C
    lwz r11, 0x0(r8)
    opword  0x48000008  // b .L_80086220
L_8008621C:
    li r11, -0x1
L_80086220:
    cmplwi r11, 0x0
    opword  0x40820030  // bne .L_80086254
    clrlwi. r9, r31, 24
    opword  0x40820020  // bne .L_8008624C
    subf r9, r5, r8
    li r6, 0x0
    srawi r9, r9, 2
    li r31, 0x1
    addze r9, r9
    slwi r9, r9, 5
    addi r30, r9, 0x1f
L_8008624C:
    addi r6, r6, 0x20
    opword  0x4800013C  // b .L_8008638C
L_80086254:
    addis r9, r11, 0x1
    cmplwi r9, 0xffff
    opword  0x4082000C  // bne .L_80086268
    clrlwi. r9, r31, 24
    opword  0x41820128  // beq .L_8008638C
L_80086268:
    li r9, 0x10
    li r29, 0x1f
    lis r10, 0x8000
    mtctr r9
L_80086278:
    srw r9, r10, r29
    and. r9, r11, r9
    opword  0x40820030  // bne .L_800862B0
    clrlwi. r9, r31, 24
    opword  0x40820020  // bne .L_800862A8
    subf r9, r5, r8
    li r6, 0x0
    srawi r9, r9, 2
    li r31, 0x1
    addze r9, r9
    slwi r9, r9, 5
    add r30, r29, r9
L_800862A8:
    addi r6, r6, 0x1
    opword  0x48000050  // b .L_800862FC
L_800862B0:
    clrlwi. r9, r31, 24
    opword  0x41820048  // beq .L_800862FC
    cmplw r6, r4
    opword  0x40820010  // bne .L_800862CC
    subf r3, r6, r30
    addi r3, r3, 0x1
    opword  0x480000E4  // b .L_800863AC
L_800862CC:
    opword  0x4081002C  // ble .L_800862F8
    lbz r9, 0x84(r3)
    cmplwi r9, 0x1
    opword  0x40820010  // bne .L_800862E8
    subf r3, r4, r30
    addi r3, r3, 0x1
    opword  0x480000C8  // b .L_800863AC
L_800862E8:
    cmpw r6, r7
    opword  0x4080000C  // bge .L_800862F8
    mr r0, r30
    mr r7, r6
L_800862F8:
    li r31, 0x0
L_800862FC:
    subi r29, r29, 0x1
    srw r9, r10, r29
    and. r9, r11, r9
    opword  0x40820030  // bne .L_80086338
    clrlwi. r9, r31, 24
    opword  0x40820020  // bne .L_80086330
    subf r9, r5, r8
    li r6, 0x0
    srawi r9, r9, 2
    li r31, 0x1
    addze r9, r9
    slwi r9, r9, 5
    add r30, r29, r9
L_80086330:
    addi r6, r6, 0x1
    opword  0x48000050  // b .L_80086384
L_80086338:
    clrlwi. r9, r31, 24
    opword  0x41820048  // beq .L_80086384
    cmplw r6, r4
    opword  0x40820010  // bne .L_80086354
    subf r3, r6, r30
    addi r3, r3, 0x1
    opword  0x4800005C  // b .L_800863AC
L_80086354:
    opword  0x4081002C  // ble .L_80086380
    lbz r9, 0x84(r3)
    cmplwi r9, 0x1
    opword  0x40820010  // bne .L_80086370
    subf r3, r4, r30
    addi r3, r3, 0x1
    opword  0x48000040  // b .L_800863AC
L_80086370:
    cmpw r6, r7
    opword  0x4080000C  // bge .L_80086380
    mr r0, r30
    mr r7, r6
L_80086380:
    li r31, 0x0
L_80086384:
    subi r29, r29, 0x1
    opword  0x4200FEF0  // bdnz .L_80086278
L_8008638C:
    subi r8, r8, 0x4
L_80086390:
    cmplw r8, r12
    opword  0x4080FE78  // bge .L_8008620C
    cmpwi r0, -0x1
    li r3, -0x1
    opword  0x4182000C  // beq .L_800863AC
    subf r3, r4, r0
    addi r3, r3, 0x1
L_800863AC:
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    blr
}

ASM void fn_800863C0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_8008668C
    cmpwi r3, 0x0
    opword  0x41800048  // blt .L_80086424
    srawi r4, r3, 3
    clrlwi r0, r3, 29
    opword  0x386287D0  // li r3, lbl_8053B770@sda21
    lwz r5, 0x78(r31)
    lbzx r0, r3, r0
    addze r4, r4
    lbzx r3, r5, r4
    xori r0, r0, 0xff
    and r0, r3, r0
    stbx r0, r5, r4
    lbzx r0, r5, r4
    cmplw r3, r0
    opword  0x41820014  // beq .L_80086424
    lwz r3, 0x80(r31)
    lwz r0, 0x6c(r31)
    add r0, r3, r0
    stw r0, 0x80(r31)
L_80086424:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086438(void)
{
    nofralloc
    li r5, 0x0
    lwz r6, 0x78(r3)
    mr r4, r5
    opword  0x48000010  // b .L_80086454
L_80086448:
    stb r4, 0x0(r6)
    addi r6, r6, 0x1
    addi r5, r5, 0x1
L_80086454:
    lwz r7, 0x70(r3)
    srawi r0, r7, 3
    addze r0, r0
    cmpw r5, r0
    opword  0x4180FFE4  // blt .L_80086448
    clrlwi. r0, r7, 29
    opword  0x418200E4  // beq .L_80086550
    li r0, 0x0
    opword  0x38E287D0  // li r7, lbl_8053B770@sda21
    stb r0, 0x0(r6)
    lwz r0, 0x70(r3)
    clrlwi r0, r0, 29
    cmpwi r0, 0x8
    add r7, r7, r0
    subfic r4, r0, 0x8
    opword  0x408000BC  // bge .L_8008654C
    srwi. r0, r4, 3
    mtctr r0
    opword  0x41820094  // beq .L_80086530
L_800864A0:
    lbz r0, 0x0(r6)
    lbz r5, 0x0(r7)
    or r0, r0, r5
    lbz r5, 0x1(r7)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r5
    lbz r5, 0x2(r7)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r5
    lbz r5, 0x3(r7)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r5
    lbz r5, 0x4(r7)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r5
    lbz r5, 0x5(r7)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r5
    lbz r5, 0x6(r7)
    stb r0, 0x0(r6)
    lbz r0, 0x0(r6)
    or r0, r0, r5
    lbz r5, 0x7(r7)
    stb r0, 0x0(r6)
    addi r7, r7, 0x8
    lbz r0, 0x0(r6)
    or r0, r0, r5
    stb r0, 0x0(r6)
    opword  0x4200FF7C  // bdnz .L_800864A0
    andi. r4, r4, 0x7
    opword  0x41820020  // beq .L_8008654C
L_80086530:
    mtctr r4
L_80086534:
    lbz r5, 0x0(r7)
    addi r7, r7, 0x1
    lbz r0, 0x0(r6)
    or r0, r0, r5
    stb r0, 0x0(r6)
    opword  0x4200FFEC  // bdnz .L_80086534
L_8008654C:
    addi r6, r6, 0x1
L_80086550:
    li r4, 0xff
    opword  0x4800000C  // b .L_80086560
L_80086558:
    stb r4, 0x0(r6)
    addi r6, r6, 0x1
L_80086560:
    clrlwi. r0, r6, 30
    opword  0x4082FFF4  // bne .L_80086558
    lwz r4, 0x6c(r3)
    lwz r0, 0x70(r3)
    mullw r0, r4, r0
    stw r0, 0x80(r3)
    blr
}

ASM void fn_8008657C(void)
{
    nofralloc
    blr
}

ASM void fn_80086580(void)
{
    nofralloc
    blr
}

ASM void fn_80086584(void)
{
    nofralloc
    li r3, -0x1
    blr
}

ASM void fn_8008658C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_8008668C
    mr r0, r3
    mr r3, r31
    mr r4, r0
    bl fn_800866D4
    clrlwi. r0, r3, 24
    opword  0x4182000C  // beq .L_800865C4
    lwz r3, 0x6c(r31)
    opword  0x48000008  // b .L_800865C8
L_800865C4:
    li r3, 0x0
L_800865C8:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800865DC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r4, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_8008603C
    lwz r0, 0x6c(r31)
    lwz r31, 0xc(r1)
    mullw r3, r0, r3
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086614(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r4, 0x0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_8008603C
    mr r0, r3
    mr r3, r31
    mr r4, r0
    bl fn_8008665C
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086654(void)
{
    nofralloc
    lwz r3, 0x80(r3)
    blr
}

ASM void fn_8008665C(void)
{
    nofralloc
    cmpwi r4, 0x0
    opword  0x41800010  // blt .L_80086670
    lwz r0, 0x70(r3)
    cmplw r4, r0
    opword  0x4180000C  // blt .L_80086678
L_80086670:
    li r3, 0x0
    blr
L_80086678:
    lwz r0, 0x6c(r3)
    lwz r3, 0x7c(r3)
    mullw r0, r0, r4
    add r3, r3, r0
    blr
}

ASM void fn_8008668C(void)
{
    nofralloc
    lwz r0, 0x7c(r3)
    subf. r4, r0, r4
    opword  0x4080000C  // bge .L_800866A0
    li r3, -0x1
    blr
L_800866A0:
    lwz r0, 0x6c(r3)
    divwu r5, r4, r0
    mullw r0, r5, r0
    cmplw r4, r0
    opword  0x4182000C  // beq .L_800866BC
    li r3, -0x1
    blr
L_800866BC:
    lwz r0, 0x70(r3)
    li r3, -0x1
    cmplw r5, r0
    bgelr
    mr r3, r5
    blr
}

ASM void fn_800866D4(void)
{
    nofralloc
    cmpwi r4, 0x0
    opword  0x41800010  // blt .L_800866E8
    lwz r0, 0x70(r3)
    cmplw r4, r0
    opword  0x4180000C  // blt .L_800866F0
L_800866E8:
    li r3, 0x0
    blr
L_800866F0:
    srawi r0, r4, 3
    lwz r3, 0x78(r3)
    addze r0, r0
    clrlwi r5, r4, 29
    opword  0x388287D0  // li r4, lbl_8053B770@sda21
    lbzx r0, r3, r0
    lbzx r3, r4, r5
    and r0, r3, r0
    clrlwi r3, r0, 24
    neg r0, r3
    or r0, r0, r3
    srwi r3, r0, 31
    blr
}

ASM void fn_80086724(void)
{
    nofralloc
    cmpwi r4, 0x0
    bltlr
    lwz r0, 0x70(r3)
    cmplw r4, r0
    opword  0x41800008  // blt .L_8008673C
    blr
L_8008673C:
    srawi r0, r4, 3
    lwz r6, 0x78(r3)
    addze r5, r0
    opword  0x386287D0  // li r3, lbl_8053B770@sda21
    clrlwi r0, r4, 29
    lbzx r4, r6, r5
    lbzx r0, r3, r0
    or r0, r4, r0
    stbx r0, r6, r5
    blr
}

ASM void fn_80086764(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r5, 0x0
    stw r0, 0x14(r1)
    lwz r4, 0x70(r3)
    lwz r7, 0x78(r3)
    addi r0, r4, 0x7
    srawi r0, r0, 3
    addze. r0, r0
    mtctr r0
    opword  0x408100D4  // ble .L_80086860
L_80086790:
    lbz r6, 0x0(r7)
    cmplwi r6, 0xff
    opword  0x418200C0  // beq .L_80086858
    cmplwi r6, 0x0
    opword  0x40820014  // bne .L_800867B4
    lwz r0, 0x6c(r3)
    slwi r0, r0, 3
    add r5, r5, r0
    opword  0x480000A8  // b .L_80086858
L_800867B4:
    opword  0x388287D0  // li r4, lbl_8053B770@sda21
    opword  0x880287D0  // lbz r0, lbl_8053B770@sda21(r0)
    and. r0, r6, r0
    opword  0x4082000C  // bne .L_800867CC
    lwz r0, 0x6c(r3)
    add r5, r5, r0
L_800867CC:
    lbzu r0, 0x1(r4)
    and. r0, r6, r0
    opword  0x4082000C  // bne .L_800867E0
    lwz r0, 0x6c(r3)
    add r5, r5, r0
L_800867E0:
    lbzu r0, 0x1(r4)
    and. r0, r6, r0
    opword  0x4082000C  // bne .L_800867F4
    lwz r0, 0x6c(r3)
    add r5, r5, r0
L_800867F4:
    lbzu r0, 0x1(r4)
    and. r0, r6, r0
    opword  0x4082000C  // bne .L_80086808
    lwz r0, 0x6c(r3)
    add r5, r5, r0
L_80086808:
    lbzu r0, 0x1(r4)
    and. r0, r6, r0
    opword  0x4082000C  // bne .L_8008681C
    lwz r0, 0x6c(r3)
    add r5, r5, r0
L_8008681C:
    lbzu r0, 0x1(r4)
    and. r0, r6, r0
    opword  0x4082000C  // bne .L_80086830
    lwz r0, 0x6c(r3)
    add r5, r5, r0
L_80086830:
    lbzu r0, 0x1(r4)
    and. r0, r6, r0
    opword  0x4082000C  // bne .L_80086844
    lwz r0, 0x6c(r3)
    add r5, r5, r0
L_80086844:
    lbz r0, 0x1(r4)
    and. r0, r6, r0
    opword  0x4082000C  // bne .L_80086858
    lwz r0, 0x6c(r3)
    add r5, r5, r0
L_80086858:
    addi r7, r7, 0x1
    opword  0x4200FF34  // bdnz .L_80086790
L_80086860:
    lwz r4, 0x80(r3)
    cmplw r5, r4
    opword  0x41820014  // beq .L_8008687C
    lis r3, lbl_8045E820@ha
    addi r3, r3, lbl_8045E820@l
    crclr 6
    bl fn_800890B0
L_8008687C:
    lwz r0, 0x14(r1)
    li r3, 0x1
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086890(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    mr r0, r3
    addi r3, r30, 0x18
    mr r31, r0
    bl OSLockMutex
    lwz r5, 0x38(r30)
    lis r0, 0x4330
    lwz r4, 0x80(r30)
    lis r3, lbl_8045E854@ha
    stw r0, 0x8(r1)
    addi r3, r3, lbl_8045E854@l
    subf r4, r4, r5
    opword  0xC84287E0  // lfd f2, lbl_8053B780@sda21(r0)
    stw r4, 0xc(r1)
    opword  0xC06287D8  // lfs f3, lbl_8053B778@sda21(r0)
    lfd fp0, 0x8(r1)
    stw r5, 0x14(r1)
    fsubs fp1, fp0, fp2
    stw r0, 0x10(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    fdivs fp0, fp1, fp0
    fmuls fp1, fp3, fp0
    crset 6
    bl fn_80088FA8
    addi r3, r30, 0x18
    bl OSUnlockMutex
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008693C(void)
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
    li r5, 0x0
    subf r0, r3, r0
    stw r0, 0x0(r31)
    lwz r4, 0x7c(r30)
    lwz r6, 0x78(r30)
    addi r3, r4, 0x3
    subf r3, r6, r3
    cmplw r6, r4
    srwi r3, r3, 2
    opword  0x40800074  // bge .L_800869FC
    srwi. r0, r3, 3
    mtctr r0
    opword  0x41820054  // beq .L_800869E8
L_80086998:
    lwz r0, 0x0(r6)
    add r5, r5, r0
    lwz r0, 0x4(r6)
    add r5, r5, r0
    lwz r0, 0x8(r6)
    add r5, r5, r0
    lwz r0, 0xc(r6)
    add r5, r5, r0
    lwz r0, 0x10(r6)
    add r5, r5, r0
    lwz r0, 0x14(r6)
    add r5, r5, r0
    lwz r0, 0x18(r6)
    add r5, r5, r0
    lwz r0, 0x1c(r6)
    addi r6, r6, 0x20
    add r5, r5, r0
    opword  0x4200FFBC  // bdnz .L_80086998
    andi. r3, r3, 0x7
    opword  0x41820018  // beq .L_800869FC
L_800869E8:
    mtctr r3
L_800869EC:
    lwz r0, 0x0(r6)
    addi r6, r6, 0x4
    add r5, r5, r0
    opword  0x4200FFF4  // bdnz .L_800869EC
L_800869FC:
    stw r5, 0x4(r31)
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086A18(void)
{
    nofralloc
    lwz r6, 0x4(r4)
    li r3, 0x1
    lwz r0, 0x4(r5)
    cmplw r6, r0
    opword  0x41820008  // beq .L_80086A30
    li r3, 0x0
L_80086A30:
    lwz r4, 0x0(r4)
    lwz r0, 0x0(r5)
    cmplw r4, r0
    beqlr
    li r3, 0x0
    blr
}

ASM void fn_80086A48(void)
{
    nofralloc
    lis r3, 0x554e
    addi r3, r3, 0x4954
    blr
}

ASM void fn_80086A54(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_80086A84
    lis r5, lbl_80499018@ha
    extsh. r0, r4
    addi r0, r5, lbl_80499018@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_80086A84
    bl dtor_80084580
L_80086A84:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086A9C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_80086AE0
    lis r3, lbl_8049904C@ha
    addi r0, r3, lbl_8049904C@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_80086AD0
    lis r3, lbl_80499018@ha
    addi r0, r3, lbl_80499018@l
    stw r0, 0x0(r31)
L_80086AD0:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_80086AE0
    mr r3, r31
    bl dtor_80084580
L_80086AE0:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086AF8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r5
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    cmpw r3, r31
    opword  0x41820010  // beq .L_80086B38
    lbz r0, 0x4(r30)
    ori r0, r0, 0x1
    stb r0, 0x4(r30)
L_80086B38:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086B50(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x4800003C  // b .L_80086BB0
L_80086B78:
    mr r3, r29
    addi r4, r1, 0x8
    lwz r12, 0x0(r29)
    li r5, 0x1
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    cmplwi r3, 0x1
    opword  0x41820014  // beq .L_80086BAC
    lbz r0, 0x4(r29)
    ori r0, r0, 0x1
    stb r0, 0x4(r29)
    opword  0x48000010  // b .L_80086BB8
L_80086BAC:
    addi r31, r31, 0x1
L_80086BB0:
    cmpw r31, r30
    opword  0x4180FFC4  // blt .L_80086B78
L_80086BB8:
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80086BD8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    add r4, r31, r3
    subi r0, r31, 0x1
    subi r4, r4, 0x1
    andc r4, r4, r0
    subf. r31, r3, r4
    opword  0x41820030  // beq .L_80086C48
    lwz r12, 0x0(r30)
    mr r3, r30
    li r5, 0x0
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    cmpw r3, r31
    opword  0x41820010  // beq .L_80086C48
    lbz r0, 0x4(r30)
    ori r0, r0, 0x1
    stb r0, 0x4(r30)
L_80086C48:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086C64(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r5, 0x1
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    cmpw r3, r31
    opword  0x41820010  // beq .L_80086CA8
    lbz r0, 0x4(r30)
    ori r0, r0, 0x1
    stb r0, 0x4(r30)
L_80086CA8:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086CC0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r4
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r5
    stw r28, 0x10(r1)
    mr r28, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    mr r0, r3
    mr r3, r28
    lwz r12, 0x0(r28)
    mr r30, r0
    mr r4, r31
    mr r5, r29
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    mr r31, r3
    cmpw r31, r29
    opword  0x41820010  // beq .L_80086D34
    lbz r0, 0x4(r28)
    ori r0, r0, 0x1
    stb r0, 0x4(r28)
L_80086D34:
    cmpwi r31, 0x0
    opword  0x41820020  // beq .L_80086D58
    mr r3, r28
    mr r4, r30
    lwz r12, 0x0(r28)
    li r5, 0x0
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
L_80086D58:
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80086D7C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    lbz r0, 0x4(r31)
    rlwinm r0, r0, 0, 24, 30
    stb r0, 0x4(r31)
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086DC0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820040  // beq .L_80086E14
    lis r3, lbl_80499028@ha
    addi r0, r3, lbl_80499028@l
    stw r0, 0x0(r31)
    opword  0x41820020  // beq .L_80086E04
    lis r3, lbl_8049904C@ha
    addi r0, r3, lbl_8049904C@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_80086E04
    lis r3, lbl_80499018@ha
    addi r0, r3, lbl_80499018@l
    stw r0, 0x0(r31)
L_80086E04:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_80086E14
    mr r3, r31
    bl dtor_80084580
L_80086E14:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086E2C(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x4(r3)
    stw r4, 0x0(r3)
    stw r0, 0x8(r3)
    stw r0, 0xc(r3)
    blr
}

ASM void fn_80086E44(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820028  // beq .L_80086E88
    lwz r3, 0x4(r30)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_80086E78
    mr r4, r30
    bl fn_80087298
L_80086E78:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80086E88
    mr r3, r30
    bl dtor_80084580
L_80086E88:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086EA4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    clrlwi. r0, r4, 24
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x41820008  // beq .L_80086EC4
    bl fn_80086F44
L_80086EC4:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086EDC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182003C  // beq .L_80086F2C
    lwz r5, 0x0(r31)
    li r6, 0x0
    li r3, 0x0
    opword  0x48000010  // b .L_80086F10
L_80086F04:
    stw r3, 0x4(r5)
    addi r6, r6, 0x1
    lwz r5, 0xc(r5)
L_80086F10:
    lwz r0, 0x8(r31)
    cmplw r6, r0
    opword  0x4180FFEC  // blt .L_80086F04
    extsh. r0, r4
    opword  0x4081000C  // ble .L_80086F2C
    mr r3, r31
    bl dtor_80084580
L_80086F2C:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80086F44(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x0(r3)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    blr
}

ASM void fn_80086F58(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r3, 0x4(r4)
    cntlzw r5, r3
    extrwi. r0, r5, 8, 19
    srwi r5, r5, 5
    opword  0x4082000C  // bne .L_80086F90
    bl fn_80087298
    mr r5, r3
L_80086F90:
    clrlwi. r0, r5, 24
    opword  0x41820060  // beq .L_80086FF4
    lwz r0, 0x8(r30)
    cmplwi r0, 0x0
    opword  0x40820028  // bne .L_80086FC8
    stw r30, 0x4(r31)
    li r3, 0x0
    li r0, 0x1
    stw r3, 0x8(r31)
    stw r3, 0xc(r31)
    stw r31, 0x4(r30)
    stw r31, 0x0(r30)
    stw r0, 0x8(r30)
    opword  0x48000030  // b .L_80086FF4
L_80086FC8:
    stw r30, 0x4(r31)
    li r0, 0x0
    lwz r3, 0x4(r30)
    stw r3, 0x8(r31)
    stw r0, 0xc(r31)
    lwz r3, 0x4(r30)
    stw r31, 0xc(r3)
    stw r31, 0x4(r30)
    lwz r3, 0x8(r30)
    addi r0, r3, 0x1
    stw r0, 0x8(r30)
L_80086FF4:
    lwz r0, 0x14(r1)
    mr r3, r5
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80087010(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r3, 0x4(r4)
    cntlzw r5, r3
    extrwi. r0, r5, 8, 19
    srwi r5, r5, 5
    opword  0x4082000C  // bne .L_80087048
    bl fn_80087298
    mr r5, r3
L_80087048:
    clrlwi. r0, r5, 24
    opword  0x41820060  // beq .L_800870AC
    lwz r0, 0x8(r30)
    cmplwi r0, 0x0
    opword  0x40820028  // bne .L_80087080
    stw r30, 0x4(r31)
    li r3, 0x0
    li r0, 0x1
    stw r3, 0x8(r31)
    stw r3, 0xc(r31)
    stw r31, 0x4(r30)
    stw r31, 0x0(r30)
    stw r0, 0x8(r30)
    opword  0x48000030  // b .L_800870AC
L_80087080:
    stw r30, 0x4(r31)
    li r0, 0x0
    stw r0, 0x8(r31)
    lwz r0, 0x0(r30)
    stw r0, 0xc(r31)
    lwz r3, 0x0(r30)
    stw r31, 0x8(r3)
    stw r31, 0x0(r30)
    lwz r3, 0x8(r30)
    addi r0, r3, 0x1
    stw r0, 0x8(r30)
L_800870AC:
    lwz r0, 0x14(r1)
    mr r3, r5
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800870C8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r5
    stw r30, 0x18(r1)
    mr r30, r3
    stw r29, 0x14(r1)
    mr r29, r4
    lwz r0, 0x0(r3)
    cmplw r29, r0
    opword  0x40820090  // bne .L_80087184
    lwz r3, 0x4(r31)
    cntlzw r4, r3
    extrwi. r0, r4, 8, 19
    srwi r4, r4, 5
    opword  0x40820010  // bne .L_80087118
    mr r4, r31
    bl fn_80087298
    mr r4, r3
L_80087118:
    clrlwi. r0, r4, 24
    opword  0x41820060  // beq .L_8008717C
    lwz r0, 0x8(r30)
    cmplwi r0, 0x0
    opword  0x40820028  // bne .L_80087150
    stw r30, 0x4(r31)
    li r3, 0x0
    li r0, 0x1
    stw r3, 0x8(r31)
    stw r3, 0xc(r31)
    stw r31, 0x4(r30)
    stw r31, 0x0(r30)
    stw r0, 0x8(r30)
    opword  0x48000030  // b .L_8008717C
L_80087150:
    stw r30, 0x4(r31)
    li r0, 0x0
    stw r0, 0x8(r31)
    lwz r0, 0x0(r30)
    stw r0, 0xc(r31)
    lwz r3, 0x0(r30)
    stw r31, 0x8(r3)
    stw r31, 0x0(r30)
    lwz r3, 0x8(r30)
    addi r0, r3, 0x1
    stw r0, 0x8(r30)
L_8008717C:
    mr r3, r4
    opword  0x480000FC  // b .L_8008727C
L_80087184:
    cmplwi r29, 0x0
    opword  0x40820090  // bne .L_80087218
    lwz r3, 0x4(r31)
    cntlzw r4, r3
    extrwi. r0, r4, 8, 19
    srwi r4, r4, 5
    opword  0x40820010  // bne .L_800871AC
    mr r4, r31
    bl fn_80087298
    mr r4, r3
L_800871AC:
    clrlwi. r0, r4, 24
    opword  0x41820060  // beq .L_80087210
    lwz r0, 0x8(r30)
    cmplwi r0, 0x0
    opword  0x40820028  // bne .L_800871E4
    stw r30, 0x4(r31)
    li r3, 0x0
    li r0, 0x1
    stw r3, 0x8(r31)
    stw r3, 0xc(r31)
    stw r31, 0x4(r30)
    stw r31, 0x0(r30)
    stw r0, 0x8(r30)
    opword  0x48000030  // b .L_80087210
L_800871E4:
    stw r30, 0x4(r31)
    li r0, 0x0
    lwz r3, 0x4(r30)
    stw r3, 0x8(r31)
    stw r0, 0xc(r31)
    lwz r3, 0x4(r30)
    stw r31, 0xc(r3)
    stw r31, 0x4(r30)
    lwz r3, 0x8(r30)
    addi r0, r3, 0x1
    stw r0, 0x8(r30)
L_80087210:
    mr r3, r4
    opword  0x48000068  // b .L_8008727C
L_80087218:
    lwz r0, 0x4(r29)
    cmplw r0, r30
    opword  0x4182000C  // beq .L_8008722C
    li r3, 0x0
    opword  0x48000054  // b .L_8008727C
L_8008722C:
    lwz r3, 0x4(r31)
    cntlzw r4, r3
    extrwi. r0, r4, 8, 19
    srwi r4, r4, 5
    opword  0x40820010  // bne .L_8008724C
    mr r4, r31
    bl fn_80087298
    mr r4, r3
L_8008724C:
    clrlwi. r0, r4, 24
    opword  0x41820028  // beq .L_80087278
    lwz r3, 0x8(r29)
    stw r30, 0x4(r31)
    stw r3, 0x8(r31)
    stw r29, 0xc(r31)
    stw r31, 0xc(r3)
    stw r31, 0x8(r29)
    lwz r3, 0x8(r30)
    addi r0, r3, 0x1
    stw r0, 0x8(r30)
L_80087278:
    mr r3, r4
L_8008727C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80087298(void)
{
    nofralloc
    lwz r0, 0x4(r4)
    subf r0, r0, r3
    cntlzw r5, r0
    extrwi. r0, r5, 8, 19
    srwi r6, r5, 5
    opword  0x41820094  // beq .L_80087340
    lwz r0, 0x8(r3)
    cmplwi r0, 0x1
    opword  0x40820014  // bne .L_800872CC
    li r0, 0x0
    stw r0, 0x0(r3)
    stw r0, 0x4(r3)
    opword  0x48000064  // b .L_8008732C
L_800872CC:
    lwz r0, 0x0(r3)
    cmplw r4, r0
    opword  0x4082001C  // bne .L_800872F0
    lwz r5, 0xc(r4)
    li r0, 0x0
    stw r0, 0x8(r5)
    lwz r0, 0xc(r4)
    stw r0, 0x0(r3)
    opword  0x48000040  // b .L_8008732C
L_800872F0:
    lwz r0, 0x4(r3)
    cmplw r4, r0
    opword  0x4082001C  // bne .L_80087314
    lwz r5, 0x8(r4)
    li r0, 0x0
    stw r0, 0xc(r5)
    lwz r0, 0x8(r4)
    stw r0, 0x4(r3)
    opword  0x4800001C  // b .L_8008732C
L_80087314:
    lwz r0, 0xc(r4)
    lwz r5, 0x8(r4)
    stw r0, 0xc(r5)
    lwz r0, 0x8(r4)
    lwz r5, 0xc(r4)
    stw r0, 0x8(r5)
L_8008732C:
    li r0, 0x0
    stw r0, 0x4(r4)
    lwz r4, 0x8(r3)
    subi r0, r4, 0x1
    stw r0, 0x8(r3)
L_80087340:
    mr r3, r6
    blr
}

ASM void fn_80087348(void)
{
    nofralloc
    stw r4, 0x8(r3)
    li r0, 0x0
    stw r5, 0xc(r3)
    stw r0, 0x10(r3)
    blr
}

ASM void fn_8008735C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r5
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r6, 0x10(r3)
    lwz r3, 0xc(r3)
    add r0, r6, r31
    cmpw r0, r3
    opword  0x40810008  // ble .L_80087390
    subf r31, r6, r3
L_80087390:
    cmpwi r31, 0x0
    opword  0x40810024  // ble .L_800873B8
    lwz r0, 0x8(r30)
    mr r3, r4
    mr r5, r31
    add r4, r0, r6
    bl memcpy
    lwz r0, 0x10(r30)
    add r0, r0, r31
    stw r0, 0x10(r30)
L_800873B8:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800873D4(void)
{
    nofralloc
    cmpwi r5, 0x1
    lwz r6, 0x10(r3)
    opword  0x41820038  // beq .L_80087414
    opword  0x40800010  // bge .L_800873F0
    cmpwi r5, 0x0
    opword  0x40800014  // bge .L_800873FC
    opword  0x48000030  // b .L_8008741C
L_800873F0:
    cmpwi r5, 0x3
    opword  0x40800028  // bge .L_8008741C
    opword  0x4800000C  // b .L_80087404
L_800873FC:
    stw r4, 0x10(r3)
    opword  0x4800001C  // b .L_8008741C
L_80087404:
    lwz r0, 0xc(r3)
    subf r0, r4, r0
    stw r0, 0x10(r3)
    opword  0x4800000C  // b .L_8008741C
L_80087414:
    add r0, r6, r4
    stw r0, 0x10(r3)
L_8008741C:
    lwz r0, 0x10(r3)
    cmpwi r0, 0x0
    opword  0x4080000C  // bge .L_80087430
    li r0, 0x0
    stw r0, 0x10(r3)
L_80087430:
    lwz r0, 0x10(r3)
    lwz r4, 0xc(r3)
    cmpw r0, r4
    opword  0x40810008  // ble .L_80087444
    stw r4, 0x10(r3)
L_80087444:
    lwz r0, 0x10(r3)
    subf r3, r6, r0
    blr
}

ASM void fn_80087450(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820038  // beq .L_800874A4
    lis r4, lbl_80499068@ha
    addi r0, r4, lbl_80499068@l
    stw r0, 0x0(r30)
    opword  0x41820018  // beq .L_80087494
    lis r5, lbl_80499028@ha
    li r4, 0x0
    addi r0, r5, lbl_80499028@l
    stw r0, 0x0(r30)
    bl fn_80086A9C
L_80087494:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800874A4
    mr r3, r30
    bl dtor_80084580
L_800874A4:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800874C0(void)
{
    nofralloc
    lwz r3, 0xc(r3)
    blr
}

ASM void fn_800874C8(void)
{
    nofralloc
    lwz r3, 0x10(r3)
    blr
}

ASM void fn_800874D0(void)
{
    nofralloc
    lis r5, lbl_80499018@ha
    lis r7, lbl_8049904C@ha
    addi r0, r5, lbl_80499018@l
    lis r6, lbl_80499028@ha
    stw r0, 0x0(r3)
    li r8, 0x0
    lis r5, lbl_80499090@ha
    addi r7, r7, lbl_8049904C@l
    stb r8, 0x4(r3)
    addi r6, r6, lbl_80499028@l
    addi r0, r5, lbl_80499090@l
    stw r7, 0x0(r3)
    stw r6, 0x0(r3)
    stw r0, 0x0(r3)
    stw r4, 0x8(r3)
    stw r8, 0xc(r3)
    blr
}

ASM void fn_80087514(void)
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
    lwz r3, 0x8(r3)
    lbz r0, 0x18(r3)
    cmplwi r0, 0x0
    opword  0x41820084  // beq .L_800875D0
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    lwz r0, 0xc(r28)
    add r0, r0, r30
    cmplw r0, r3
    opword  0x40810020  // ble .L_8008758C
    lwz r3, 0x8(r28)
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    lwz r0, 0xc(r28)
    subf r30, r0, r3
L_8008758C:
    cmpwi r30, 0x0
    opword  0x40810040  // ble .L_800875D0
    lwz r3, 0x8(r28)
    mr r4, r29
    mr r5, r30
    lwz r6, 0xc(r28)
    lwz r12, 0x0(r3)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
    mr. r31, r3
    opword  0x4080000C  // bge .L_800875C4
    li r3, 0x0
    opword  0x48000014  // b .L_800875D4
L_800875C4:
    lwz r0, 0xc(r28)
    add r0, r0, r31
    stw r0, 0xc(r28)
L_800875D0:
    mr r3, r31
L_800875D4:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800875F4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    cmpwi r5, 0x1
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    lwz r31, 0xc(r3)
    opword  0x41820048  // beq .L_80087664
    opword  0x40800010  // bge .L_80087630
    cmpwi r5, 0x0
    opword  0x40800014  // bge .L_8008763C
    opword  0x48000040  // b .L_8008766C
L_80087630:
    cmpwi r5, 0x3
    opword  0x40800038  // bge .L_8008766C
    opword  0x4800000C  // b .L_80087644
L_8008763C:
    stw r30, 0xc(r29)
    opword  0x4800002C  // b .L_8008766C
L_80087644:
    lwz r3, 0x8(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    subf r0, r30, r3
    stw r0, 0xc(r29)
    opword  0x4800000C  // b .L_8008766C
L_80087664:
    add r0, r31, r30
    stw r0, 0xc(r29)
L_8008766C:
    lwz r0, 0xc(r29)
    cmpwi r0, 0x0
    opword  0x4080000C  // bge .L_80087680
    li r0, 0x0
    stw r0, 0xc(r29)
L_80087680:
    lwz r3, 0x8(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    lwz r0, 0xc(r29)
    cmpw r0, r3
    opword  0x4081001C  // ble .L_800876B8
    lwz r3, 0x8(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    stw r3, 0xc(r29)
L_800876B8:
    lwz r0, 0xc(r29)
    subf r3, r31, r0
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800876DC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lwz r3, 0x8(r3)
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008770C(void)
{
    nofralloc
    lwz r3, 0xc(r3)
    blr
}

ASM void fn_80087714(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_80087744
    lis r5, lbl_804989D0@ha
    extsh. r0, r4
    addi r0, r5, lbl_804989D0@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_80087744
    bl dtor_80084580
L_80087744:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008775C(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r26, 0x18(r1)
    mr. r27, r4
    mr r26, r3
    mr r28, r5
    opword  0x41820010  // beq .L_80087788
    lwz r0, 0x0(r27)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80087790
L_80087788:
    li r3, 0x0
    opword  0x480000C8  // b .L_80087854
L_80087790:
    lwz r12, 0x0(r3)
    mr r6, r28
    addi r5, r1, 0xc
    li r31, 0x0
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x41820008  // beq .L_800877B8
    li r31, 0x1
L_800877B8:
    clrlwi. r0, r28, 31
    mr r29, r31
    opword  0x4082008C  // bne .L_8008784C
    clrlwi. r0, r31, 24
    opword  0x40820084  // bne .L_8008784C
    mr r3, r31
    opword  0x48000084  // b .L_80087854
    opword  0x48000064  // b .L_80087838
L_800877D8:
    mr r3, r26
    mr r4, r27
    lwz r12, 0x0(r26)
    mr r6, r28
    addi r5, r1, 0x8
    li r31, 0x0
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x41820010  // beq .L_80087810
    clrlwi. r0, r29, 24
    opword  0x41820008  // beq .L_80087810
    li r31, 0x1
L_80087810:
    cmplwi r30, 0x0
    mr r29, r31
    opword  0x40820014  // bne .L_8008782C
    clrlwi. r0, r31, 24
    opword  0x4082000C  // bne .L_8008782C
    mr r3, r31
    opword  0x4800002C  // b .L_80087854
L_8008782C:
    lwz r3, 0xc(r1)
    subi r0, r3, 0x1
    stw r0, 0xc(r1)
L_80087838:
    lwz r0, 0xc(r1)
    cmplwi r0, 0x0
    opword  0x4082FF98  // bne .L_800877D8
    mr r3, r29
    opword  0x4800000C  // b .L_80087854
L_8008784C:
    rlwinm r30, r28, 0, 30, 30
    opword  0x4BFFFFE8  // b .L_80087838
L_80087854:
    lmw r26, 0x18(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80087868(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820010  // beq .L_8008788C
    extsh. r0, r4
    opword  0x40810008  // ble .L_8008788C
    bl dtor_80084580
L_8008788C:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800878A4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lwz r7, 0x0(r5)
    stw r0, 0x24(r1)
    addi r5, r1, 0x10
    addi r6, r1, 0xc
    stw r31, 0x1c(r1)
    mr r31, r3
    lwz r0, 0x0(r7)
    stw r7, 0x14(r1)
    stw r0, 0x8(r1)
    stw r0, 0xc(r1)
    stw r7, 0x10(r1)
    bl fn_800878F0
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800878F0(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lwz r5, 0x0(r5)
    stw r0, 0x34(r1)
    stmw r27, 0x1c(r1)
    mr r29, r6
    lwz r31, 0x0(r6)
    mr r27, r3
    mr r28, r4
    opword  0x48000018  // b .L_8008792C
L_80087918:
    lwz r30, 0x0(r5)
    mr r4, r28
    addi r3, r1, 0x8
    bl fn_8008797C
    mr r5, r30
L_8008792C:
    cmplw r5, r31
    opword  0x4082FFE8  // bne .L_80087918
    lwz r0, 0x0(r29)
    stw r0, 0x0(r27)
    lmw r27, 0x1c(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

// fn_80087950(outNodePtr, countPtr, head, newNode) - a generic intrusive
// doubly-linked-list INSERT primitive (inserts `newNode` just before the
// list's current first element, bumps `*countPtr`, writes `newNode` to
// `*outNodePtr`) - not item-wheel-specific, just the shared list utility
// it happens to be built on. `fn_8008797C` right below is its mirror
// REMOVE operation (same shape, decrements the count instead).
ASM void fn_80087950(void)
{
    nofralloc
    lwz r5, 0x0(r5)
    lwz r7, 0x4(r5)
    stw r5, 0x0(r6)
    stw r7, 0x4(r6)
    stw r6, 0x4(r5)
    stw r6, 0x0(r7)
    lwz r5, 0x0(r4)
    addi r0, r5, 0x1
    stw r0, 0x0(r4)
    stw r6, 0x0(r3)
    blr
}

ASM void fn_8008797C(void)
{
    nofralloc
    lwz r6, 0x0(r5)
    lwz r5, 0x4(r5)
    stw r5, 0x4(r6)
    stw r6, 0x0(r5)
    lwz r5, 0x0(r4)
    subi r0, r5, 0x1
    stw r0, 0x0(r4)
    stw r6, 0x0(r3)
    blr
}

ASM void fn_800879A0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r4, 0x8(r1)
    stw r4, 0xc(r1)
    addi r4, r1, 0xc
    bl fn_800879CC
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800879CC(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    li r5, 0x0
    lwz r6, 0x0(r4)
    addi r0, r3, 0x4
    stw r5, 0x44(r1)
    addi r8, r1, 0x44
    stw r5, 0x48(r1)
    stw r5, 0x40(r1)
    stw r8, 0x44(r1)
    stw r8, 0x48(r1)
    lwz r4, 0x4(r3)
    stw r6, 0x3c(r1)
    stw r4, 0x20(r1)
    opword  0x48000094  // b .L_80087A94
L_80087A04:
    lwz r5, 0x20(r1)
    cmplw r5, r6
    opword  0x40820080  // bne .L_80087A8C
    lwz r4, 0x0(r5)
    cmplw r8, r5
    stw r5, 0x24(r1)
    stw r4, 0x20(r1)
    stw r5, 0x2c(r1)
    stw r8, 0x28(r1)
    stw r4, 0x8(r1)
    stw r5, 0x10(r1)
    stw r8, 0xc(r1)
    opword  0x41820060  // beq .L_80087A94
    cmplw r8, r4
    stw r4, 0x18(r1)
    stw r8, 0x14(r1)
    opword  0x41820050  // beq .L_80087A94
    lwz r7, 0x0(r5)
    lwz r4, 0x4(r5)
    stw r8, 0x1c(r1)
    stw r4, 0x4(r7)
    stw r7, 0x0(r4)
    lwz r4, 0x0(r3)
    subi r4, r4, 0x1
    stw r4, 0x0(r3)
    lwz r4, 0x48(r1)
    stw r8, 0x0(r5)
    stw r4, 0x4(r5)
    stw r5, 0x48(r1)
    stw r5, 0x0(r4)
    lwz r4, 0x40(r1)
    addi r4, r4, 0x1
    stw r4, 0x40(r1)
    opword  0x4800000C  // b .L_80087A94
L_80087A8C:
    lwz r4, 0x0(r5)
    stw r4, 0x20(r1)
L_80087A94:
    lwz r4, 0x20(r1)
    cmplw r4, r0
    stw r4, 0x38(r1)
    stw r4, 0x34(r1)
    stw r4, 0x30(r1)
    opword  0x4082FF5C  // bne .L_80087A04
    addi r1, r1, 0x50
    blr
}

ASM void fn_80087AB4(void)
{
    nofralloc
    slwi r3, r4, 1
    blr
}

ASM void fn_80087ABC(void)
{
    nofralloc
    blr
}

ASM void fn_80087AC0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    opword  0x806D8D18  // lwz r3, lbl_8053A8D8@sda21(r0)
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_80087AE4
    li r0, 0x0
    opword  0x48000028  // b .L_80087B08
L_80087AE4:
    addis r0, r3, 0x1
    cmplwi r0, 0xffff
    opword  0x4182000C  // beq .L_80087AF8
    subi r0, r3, 0x1
    opword  0x900D8D18  // stw r0, lbl_8053A8D8@sda21(r0)
L_80087AF8:
    opword  0x800D8D18  // lwz r0, lbl_8053A8D8@sda21(r0)
    cmplwi r0, 0x5
    opword  0x40800008  // bge .L_80087B08
    li r0, 0x0
L_80087B08:
    cmplwi r0, 0x0
    opword  0x4182008C  // beq .L_80087B98
    opword  0x880D81C8  // lbz r0, lbl_80539D88@sda21(r0)
    cmplwi r0, 0x1
    opword  0x40820080  // bne .L_80087B98
    li r5, 0xff
    li r0, 0xc8
    opword  0x83ED8D38  // lwz r31, lbl_8053A8F8@sda21(r0)
    addi r4, r1, 0x10
    stb r5, 0xc(r1)
    lwz r6, 0x18(r31)
    mr r3, r31
    stb r0, 0xd(r1)
    stb r0, 0xe(r1)
    stb r5, 0xf(r1)
    lwz r0, 0xc(r1)
    stw r6, 0x14(r1)
    stw r0, 0x10(r1)
    bl fn_80089E44
    lis r4, lbl_804BA070@ha
    mr r3, r31
    addi r6, r4, lbl_804BA070@l
    li r5, 0x10
    li r4, 0x10
    bl fn_80089CA4
    lis r4, lbl_804BA0B0@ha
    mr r3, r31
    addi r6, r4, lbl_804BA0B0@l
    li r5, 0x18
    li r4, 0x10
    bl fn_80089CA4
    lwz r0, 0x14(r1)
    mr r3, r31
    addi r4, r1, 0x8
    stw r0, 0x8(r1)
    bl fn_80089E44
L_80087B98:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80087BAC(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stfd fp31, 0x40(r1)
    psq_st fp31, 0x48(r1), 0, 0
    stw r31, 0x3c(r1)
    stw r30, 0x38(r1)
    opword  0x806D8D18  // lwz r3, lbl_8053A8D8@sda21(r0)
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_80087BDC
    li r0, 0x0
    opword  0x48000028  // b .L_80087C00
L_80087BDC:
    addis r0, r3, 0x1
    cmplwi r0, 0xffff
    opword  0x4182000C  // beq .L_80087BF0
    subi r0, r3, 0x1
    opword  0x900D8D18  // stw r0, lbl_8053A8D8@sda21(r0)
L_80087BF0:
    opword  0x800D8D18  // lwz r0, lbl_8053A8D8@sda21(r0)
    cmplwi r0, 0x5
    opword  0x40800008  // bge .L_80087C00
    li r0, 0x0
L_80087C00:
    cmplwi r0, 0x0
    opword  0x4182019C  // beq .L_80087DA0
    opword  0x880D81C8  // lbz r0, lbl_80539D88@sda21(r0)
    cmplwi r0, 0x1
    opword  0x40820190  // bne .L_80087DA0
    opword  0x806D8D30  // lwz r3, lbl_8053A8F0@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820184  // beq .L_80087DA0
    lwz r31, 0x4(r3)
    cmplwi r31, 0x0
    opword  0x41820178  // beq .L_80087DA0
    bl fn_8004D140
    lwz r12, 0x0(r31)
    rlwinm r0, r3, 2, 24, 27
    ori r0, r0, 0xf
    mr r3, r31
    lwz r12, 0xc(r12)
    clrlwi r30, r0, 24
    mtctr r12
    bctrl
    li r0, 0xff
    stb r30, 0x9(r1)
    mr r3, r31
    addi r4, r1, 0xc
    stb r0, 0x8(r1)
    stb r30, 0xa(r1)
    stb r0, 0xb(r1)
    lwz r0, 0x8(r1)
    stw r0, 0xc(r1)
    bl fn_8008CCB8
    lis r3, lbl_804BA070@ha
    addi r3, r3, lbl_804BA070@l
    bl strlen
    lwz r12, 0x0(r31)
    mr r30, r3
    mr r3, r31
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    xoris r4, r3, 0x8000
    lis r0, 0x4330
    mr r3, r31
    stw r4, 0x14(r1)
    lwz r12, 0x0(r31)
    stw r0, 0x10(r1)
    opword  0xC82287F8  // lfd f1, lbl_8053B798@sda21(r0)
    lfd fp0, 0x10(r1)
    lwz r12, 0x28(r12)
    fsubs fp31, fp0, fp1
    mtctr r12
    bctrl
    xoris r3, r3, 0x8000
    lis r0, 0x4330
    stw r3, 0x1c(r1)
    lis r3, lbl_804BA070@ha
    addi r4, r3, lbl_804BA070@l
    opword  0xC86287F8  // lfd f3, lbl_8053B798@sda21(r0)
    stw r0, 0x18(r1)
    fmr fp4, fp31
    opword  0xC02287E8  // lfs f1, lbl_8053B788@sda21(r0)
    mr r3, r31
    lfd fp0, 0x18(r1)
    mr r5, r30
    opword  0xC04287EC  // lfs f2, lbl_8053B78C@sda21(r0)
    fsubs fp3, fp0, fp3
    li r6, 0x1
    bl fn_8008CD70
    lis r3, lbl_804BA0B0@ha
    addi r3, r3, lbl_804BA0B0@l
    bl strlen
    lwz r12, 0x0(r31)
    mr r30, r3
    mr r3, r31
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    xoris r4, r3, 0x8000
    lis r0, 0x4330
    mr r3, r31
    stw r4, 0x24(r1)
    lwz r12, 0x0(r31)
    stw r0, 0x20(r1)
    opword  0xC82287F8  // lfd f1, lbl_8053B798@sda21(r0)
    lfd fp0, 0x20(r1)
    lwz r12, 0x28(r12)
    fsubs fp31, fp0, fp1
    mtctr r12
    bctrl
    xoris r3, r3, 0x8000
    lis r0, 0x4330
    stw r3, 0x2c(r1)
    lis r3, lbl_804BA0B0@ha
    addi r4, r3, lbl_804BA0B0@l
    opword  0xC86287F8  // lfd f3, lbl_8053B798@sda21(r0)
    stw r0, 0x28(r1)
    fmr fp4, fp31
    opword  0xC02287E8  // lfs f1, lbl_8053B788@sda21(r0)
    mr r3, r31
    lfd fp0, 0x28(r1)
    mr r5, r30
    opword  0xC04287F0  // lfs f2, lbl_8053B790@sda21(r0)
    fsubs fp3, fp0, fp3
    li r6, 0x1
    bl fn_8008CD70
L_80087DA0:
    psq_l fp31, 0x48(r1), 0, 0
    lwz r0, 0x54(r1)
    lfd fp31, 0x40(r1)
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_80087DC0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r3
    mr r28, r4
    mr r29, r5
    opword  0x83CD8D20  // lwz r30, lbl_8053A8E0@sda21(r0)
    bl fn_80088050
    mr r5, r29
    li r4, 0x0
    bl fn_80083868
    mr r0, r3
    mr r29, r0
    mr. r31, r29
    opword  0x41820018  // beq .L_80087E14
    mr r4, r27
    mr r5, r28
    li r6, 0x1
    bl fn_80087EE0
    mr r31, r3
L_80087E14:
    addi r0, r29, 0x6c
    mr r3, r31
    stw r0, 0x28(r31)
    bl fn_80088070
    mr r3, r30
    mr r4, r31
    bl fn_80088BE4
    mr r3, r31
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80087E48(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r4
    stw r28, 0x10(r1)
    mr r28, r3
    mr r3, r5
    opword  0x83CD8D20  // lwz r30, lbl_8053A8E0@sda21(r0)
    mr r4, r28
    bl fn_80088060
    cmplwi r29, 0x0
    mr r5, r3
    mr r31, r29
    opword  0x41820018  // beq .L_80087EA0
    mr r3, r29
    mr r4, r28
    li r6, 0x0
    bl fn_80087EE0
    mr r31, r3
L_80087EA0:
    addi r0, r29, 0x6c
    mr r3, r31
    stw r0, 0x28(r31)
    bl fn_80088070
    mr r3, r30
    mr r4, r31
    bl fn_80088BE4
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80087EE0(void)
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
    lis r3, lbl_804990B8@ha
    li r6, 0x0
    addi r0, r3, lbl_804990B8@l
    li r5, -0x1
    stw r0, 0x0(r28)
    li r4, 0x1e
    li r3, 0x32
    li r0, 0x14
    stw r6, 0x18(r28)
    stw r6, 0x1c(r28)
    stw r5, 0x5c(r28)
    stw r5, 0x60(r28)
    stb r31, 0x2c(r28)
    stw r29, 0x20(r28)
    stw r30, 0x24(r28)
    stw r4, 0x40(r28)
    stw r3, 0x44(r28)
    stw r0, 0x48(r28)
    lwz r0, 0x48(r28)
    lwz r3, 0x24(r28)
    cmplw r0, r3
    opword  0x40810008  // ble .L_80087F6C
    stw r3, 0x48(r28)
L_80087F6C:
    li r7, 0x0
    li r6, 0x1
    stw r7, 0x4c(r28)
    li r5, 0x64
    li r4, 0xe6
    li r0, 0x8
    stb r6, 0x68(r28)
    mr r3, r28
    stb r7, 0x69(r28)
    stb r7, 0x6a(r28)
    stb r7, 0x6b(r28)
    stw r6, 0x58(r28)
    stb r7, 0x5c(r28)
    stb r7, 0x5d(r28)
    stb r7, 0x5e(r28)
    stb r5, 0x5f(r28)
    stb r7, 0x60(r28)
    stb r7, 0x61(r28)
    stb r7, 0x62(r28)
    stb r4, 0x63(r28)
    stw r0, 0x64(r28)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80087FE0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820038  // beq .L_80088034
    lis r3, lbl_804990B8@ha
    mr r4, r30
    addi r0, r3, lbl_804990B8@l
    stw r0, 0x0(r30)
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    bl fn_80088C54
    mr r3, r30
    li r4, 0x0
    bl fn_8007E75C
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80088034
    mr r3, r30
    bl dtor_80084580
L_80088034:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80088050(void)
{
    nofralloc
    addi r0, r3, 0x2
    mullw r3, r0, r4
    addi r3, r3, 0x6c
    blr
}

ASM void fn_80088060(void)
{
    nofralloc
    subi r3, r3, 0x6c
    addi r0, r4, 0x2
    divwu r3, r3, r0
    blr
}

ASM void fn_80088070(void)
{
    nofralloc
    li r6, 0x0
    li r7, 0x0
    stw r6, 0x30(r3)
    stw r6, 0x34(r3)
    stw r6, 0x38(r3)
    stw r6, 0x3c(r3)
    opword  0x4800001C  // b .L_800880A4
L_8008808C:
    lwz r4, 0x20(r3)
    lwz r5, 0x28(r3)
    addi r0, r4, 0x2
    mullw r0, r0, r7
    addi r7, r7, 0x1
    stbx r6, r5, r0
L_800880A4:
    lwz r0, 0x24(r3)
    cmplw r7, r0
    opword  0x4180FFE0  // blt .L_8008808C
    lwz r4, 0x28(r3)
    li r5, 0xff
    li r0, 0x0
    stb r5, 0x0(r4)
    lwz r3, 0x28(r3)
    stb r0, 0x1(r3)
    blr
}

// A third class found continuing the rendering-pipeline foothold (see
// [[project_fsa_rendering_pipeline_foothold]]): an ITEM/EQUIPMENT
// SELECTION WHEEL widget, called from the main loop's draw() via
// fn_80088D1C/fn_80088DE8 below (conditional on global `lbl_8053A8E0`,
// i.e. only drawn while the wheel is actually open).
//
// fn_800880CC(node, mode) - draws ONE wheel slot, survey-level (large,
// not traced instruction-by-instruction past the structure below).
// Skips entirely if node->0x68 (visible flag) is 0. Computes a screen
// transform either from a fixed "selected slot" position (this->0x60/
// 0x5c, chosen by `mode`) or, for non-selected slots, an ANGULAR
// position formula using `this->0x20 * 6` as an index - confirming the
// slots are arranged in a literal rotating WHEEL/carousel, not a list.
// Tints the slot by proximity to the current selection (bright opaque
// white if selected/adjacent, a dimmer pale tint further away) via
// `fn_8008CCB8` - the SAME "set solid quad color" primitive documented
// in oscluster_8008caec.c - applied to `node->0x4c`, which is therefore
// itself an INSTANCE of that text/quad-drawable class. Finishes with a
// virtual "draw" call through `node->0x4c`'s own vtable. Ties the two
// rendering classes found so far together under one HUD-widget system.
ASM void fn_800880CC(void)
{
    nofralloc
    stwu r1, -0x2b0(r1)
    mflr r0
    stw r0, 0x2b4(r1)
    stfd fp31, 0x2a0(r1)
    psq_st fp31, 0x2a8(r1), 0, 0
    stfd fp30, 0x290(r1)
    psq_st fp30, 0x298(r1), 0, 0
    stfd fp29, 0x280(r1)
    psq_st fp29, 0x288(r1), 0, 0
    stfd fp28, 0x270(r1)
    psq_st fp28, 0x278(r1), 0, 0
    stfd fp27, 0x260(r1)
    psq_st fp27, 0x268(r1), 0, 0
    stmw r20, 0x230(r1)
    mr r25, r3
    mr r26, r4
    lbz r0, 0x68(r3)
    cmplwi r0, 0x0
    opword  0x418204D8  // beq .L_800885EC
    lwz r0, 0x4c(r25)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8008812C
    cmpwi r26, 0x2
    opword  0x408204C4  // bne .L_800885EC
L_8008812C:
    lwz r4, 0x48(r25)
    cmplwi r4, 0x0
    opword  0x418204B8  // beq .L_800885EC
    opword  0xC0228800  // lfs f1, lbl_8053B7A0@sda21(r0)
    cntlzw r0, r26
    lfs fp0, 0x54(r25)
    cmpwi r26, 0x2
    srwi r30, r0, 5
    fadds fp31, fp1, fp0
    opword  0x418202D0  // beq .L_80088420
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    cmplwi r3, 0x0
    opword  0x40820048  // bne .L_800881A4
    opword  0xC0228804  // lfs f1, lbl_8053B7A4@sda21(r0)
    addi r3, r1, 0x108
    opword  0xC0628808  // lfs f3, lbl_8053B7A8@sda21(r0)
    fmr fp2, fp1
    opword  0xC082880C  // lfs f4, lbl_8053B7AC@sda21(r0)
    opword  0xC0A28810  // lfs f5, lbl_8053B7B0@sda21(r0)
    opword  0xC0C28814  // lfs f6, lbl_8053B7B4@sda21(r0)
    bl fn_800937B0
    addi r3, r1, 0x108
    bl fn_80093894
    lis r4, lbl_80499520@ha
    lis r3, lbl_80499548@ha
    addi r0, r4, lbl_80499520@l
    stw r0, 0x108(r1)
    addi r0, r3, lbl_80499548@l
    stw r0, 0x108(r1)
    opword  0x48000070  // b .L_80088210
L_800881A4:
    lwz r4, 0x4(r3)
    lis r0, 0x4330
    opword  0xC0228804  // lfs f1, lbl_8053B7A4@sda21(r0)
    addi r3, r1, 0x34
    lhz r5, 0x6(r4)
    lhz r4, 0x4(r4)
    fmr fp2, fp1
    stw r0, 0x1e0(r1)
    opword  0xC8828820  // lfd f4, lbl_8053B7C0@sda21(r0)
    stw r4, 0x1e4(r1)
    opword  0xC0A28810  // lfs f5, lbl_8053B7B0@sda21(r0)
    lfd fp0, 0x1e0(r1)
    stw r5, 0x1ec(r1)
    fsubs fp3, fp0, fp4
    opword  0xC0C28814  // lfs f6, lbl_8053B7B4@sda21(r0)
    stw r0, 0x1e8(r1)
    lfd fp0, 0x1e8(r1)
    fsubs fp4, fp0, fp4
    bl fn_800937B0
    addi r3, r1, 0x34
    bl fn_80093894
    lis r4, lbl_80499520@ha
    lis r3, lbl_80499548@ha
    addi r0, r4, lbl_80499520@l
    stw r0, 0x34(r1)
    addi r0, r3, lbl_80499548@l
    stw r0, 0x34(r1)
L_80088210:
    clrlwi. r0, r30, 24
    opword  0x4182000C  // beq .L_80088220
    addi r7, r25, 0x60
    opword  0x48000008  // b .L_80088224
L_80088220:
    addi r7, r25, 0x5c
L_80088224:
    lwz r5, 0x44(r25)
    lis r6, 0x4330
    lwz r4, 0x20(r25)
    addi r3, r1, 0x30
    lwz r0, 0x48(r25)
    xoris r5, r5, 0x8000
    stw r5, 0x1e4(r1)
    lwz r5, 0x40(r25)
    stw r6, 0x1e0(r1)
    opword  0xC8C28828  // lfd f6, lbl_8053B7C8@sda21(r0)
    subi r5, r5, 0x2
    lfd fp0, 0x1e0(r1)
    xoris r5, r5, 0x8000
    stw r4, 0x204(r1)
    fsubs fp1, fp0, fp6
    opword  0xC8628820  // lfd f3, lbl_8053B7C0@sda21(r0)
    stw r6, 0x200(r1)
    lfs fp4, 0x50(r25)
    lfd fp0, 0x200(r1)
    fsubs fp5, fp1, fp31
    stw r0, 0x21c(r1)
    fsubs fp2, fp0, fp3
    opword  0xC0228818  // lfs f1, lbl_8053B7B8@sda21(r0)
    stw r6, 0x218(r1)
    fctiwz fp5, fp5
    lwz r7, 0x0(r7)
    lfd fp0, 0x218(r1)
    fmadds fp1, fp4, fp2, fp1
    stfd fp5, 0x1f0(r1)
    fsubs fp0, fp0, fp3
    lwz r0, 0x1f4(r1)
    fctiwz fp1, fp1
    stw r5, 0x1ec(r1)
    fmuls fp0, fp31, fp0
    xoris r5, r0, 0x8000
    stw r6, 0x1e8(r1)
    fctiwz fp0, fp0
    stfd fp1, 0x208(r1)
    lfd fp1, 0x1e8(r1)
    lwz r0, 0x20c(r1)
    stfd fp0, 0x220(r1)
    fsubs fp1, fp1, fp6
    xoris r4, r0, 0x8000
    lwz r0, 0x224(r1)
    stw r5, 0x1fc(r1)
    xoris r0, r0, 0x8000
    stw r6, 0x1f8(r1)
    lfd fp0, 0x1f8(r1)
    stw r4, 0x214(r1)
    fsubs fp2, fp0, fp6
    stw r6, 0x210(r1)
    lfd fp0, 0x210(r1)
    stw r0, 0x22c(r1)
    fsubs fp3, fp0, fp6
    stw r6, 0x228(r1)
    lfd fp0, 0x228(r1)
    stw r7, 0x30(r1)
    fsubs fp4, fp0, fp6
    bl fn_80093BD0
    lwz r3, 0x4c(r25)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    clrlwi. r0, r30, 24
    opword  0x418200C8  // beq .L_800883F0
    lwz r5, 0x30(r25)
    lwz r0, 0x38(r25)
    lwz r3, 0x48(r25)
    subf. r4, r5, r0
    opword  0x41800008  // blt .L_80088344
    opword  0x4800000C  // b .L_8008834C
L_80088344:
    lwz r0, 0x24(r25)
    add r4, r4, r0
L_8008834C:
    subf r3, r3, r4
    addic. r0, r3, 0x1
    opword  0x41810030  // bgt .L_80088384
    li r0, 0xff
    lwz r3, 0x4c(r25)
    stb r0, 0x28(r1)
    addi r4, r1, 0x2c
    stb r0, 0x29(r1)
    stb r0, 0x2a(r1)
    stb r0, 0x2b(r1)
    lwz r0, 0x28(r1)
    stw r0, 0x2c(r1)
    bl fn_8008CCB8
    opword  0x48000118  // b .L_80088498
L_80088384:
    lwz r0, 0x34(r25)
    cmpw r5, r0
    opword  0x40820034  // bne .L_800883C0
    li r5, 0xff
    li r0, 0xe6
    stb r5, 0x20(r1)
    addi r4, r1, 0x24
    lwz r3, 0x4c(r25)
    stb r0, 0x21(r1)
    stb r0, 0x22(r1)
    stb r5, 0x23(r1)
    lwz r0, 0x20(r1)
    stw r0, 0x24(r1)
    bl fn_8008CCB8
    opword  0x480000DC  // b .L_80088498
L_800883C0:
    li r5, 0xe6
    li r0, 0xff
    stb r5, 0x18(r1)
    addi r4, r1, 0x1c
    lwz r3, 0x4c(r25)
    stb r5, 0x19(r1)
    stb r0, 0x1a(r1)
    stb r0, 0x1b(r1)
    lwz r0, 0x18(r1)
    stw r0, 0x1c(r1)
    bl fn_8008CCB8
    opword  0x480000AC  // b .L_80088498
L_800883F0:
    li r5, 0xe6
    li r0, 0xff
    stb r5, 0x10(r1)
    addi r4, r1, 0x14
    lwz r3, 0x4c(r25)
    stb r5, 0x11(r1)
    stb r5, 0x12(r1)
    stb r0, 0x13(r1)
    lwz r0, 0x10(r1)
    stw r0, 0x14(r1)
    bl fn_8008CCB8
    opword  0x4800007C  // b .L_80088498
L_80088420:
    lis r0, 0x4330
    lwz r3, 0x20(r25)
    stw r4, 0x22c(r1)
    mulli r3, r3, 0x6
    lwz r4, 0x40(r25)
    stw r0, 0x228(r1)
    opword  0xC8228820  // lfd f1, lbl_8053B7C0@sda21(r0)
    subi r4, r4, 0x3
    lfd fp0, 0x228(r1)
    lwz r5, 0x44(r25)
    addi r6, r3, 0x6
    fsubs fp0, fp0, fp1
    opword  0x806D8D38  // lwz r3, lbl_8053A8F8@sda21(r0)
    subi r5, r5, 0x2
    fmuls fp0, fp31, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x220(r1)
    lwz r7, 0x224(r1)
    addi r7, r7, 0x4
    bl fn_80089924
    li r0, 0xff
    opword  0x806D8D38  // lwz r3, lbl_8053A8F8@sda21(r0)
    stb r0, 0x8(r1)
    addi r4, r1, 0xc
    stb r0, 0x9(r1)
    stb r0, 0xa(r1)
    stb r0, 0xb(r1)
    lwz r0, 0x8(r1)
    stw r0, 0xc(r1)
    bl fn_80089E44
L_80088498:
    lwz r21, 0x24(r25)
    li r27, 0x0
    lwz r3, 0x20(r25)
    lwz r28, 0x30(r25)
    xoris r22, r21, 0x8000
    lwz r23, 0x48(r25)
    addi r31, r3, 0x2
    lwz r24, 0x34(r25)
    lwz r30, 0x28(r25)
L_800884BC:
    mullw r3, r31, r28
    addi r29, r3, 0x1
    add r29, r30, r29
    lbz r0, -0x1(r29)
    cmplwi r0, 0x0
    opword  0x4182011C  // beq .L_800885EC
    cmpwi r26, 0x2
    opword  0x41820090  // beq .L_80088568
    lwz r3, 0x44(r25)
    lis r5, 0x4330
    xoris r6, r27, 0x8000
    lwz r0, 0x40(r25)
    xoris r4, r3, 0x8000
    stw r6, 0x22c(r1)
    xoris r0, r0, 0x8000
    opword  0xC8628828  // lfd f3, lbl_8053B7C8@sda21(r0)
    stw r5, 0x228(r1)
    mr r3, r29
    lfs fp27, 0x54(r25)
    lfd fp0, 0x228(r1)
    stw r4, 0x224(r1)
    fsubs fp2, fp0, fp3
    lfs fp28, 0x50(r25)
    stw r5, 0x220(r1)
    lwz r20, 0x4c(r25)
    lfd fp0, 0x220(r1)
    stw r0, 0x21c(r1)
    fsubs fp1, fp0, fp3
    stw r5, 0x218(r1)
    lfd fp0, 0x218(r1)
    fmadds fp29, fp2, fp31, fp1
    fsubs fp30, fp0, fp3
    bl strlen
    fmr fp1, fp30
    mr r5, r3
    fmr fp2, fp29
    mr r3, r20
    fmr fp3, fp28
    mr r4, r29
    fmr fp4, fp27
    li r6, 0x1
    bl fn_8008CD70
    opword  0x4800005C  // b .L_800885C0
L_80088568:
    lwz r0, 0x44(r25)
    lis r5, 0x4330
    xoris r3, r27, 0x8000
    lwz r4, 0x40(r25)
    xoris r0, r0, 0x8000
    stw r3, 0x22c(r1)
    opword  0xC8428828  // lfd f2, lbl_8053B7C8@sda21(r0)
    mr r6, r29
    stw r5, 0x228(r1)
    clrlwi r4, r4, 16
    opword  0x806D8D38  // lwz r3, lbl_8053A8F8@sda21(r0)
    lfd fp0, 0x228(r1)
    stw r0, 0x224(r1)
    fsubs fp1, fp0, fp2
    stw r5, 0x220(r1)
    lfd fp0, 0x220(r1)
    fsubs fp0, fp0, fp2
    fmadds fp0, fp1, fp31, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x218(r1)
    lwz r5, 0x21c(r1)
    bl fn_80089CA4
L_800885C0:
    addi r3, r28, 0x1
    addi r27, r27, 0x1
    subf r0, r21, r3
    addc r0, r0, r22
    cmplw r27, r23
    subfe r0, r0, r0
    andc r0, r3, r0
    mr r28, r0
    opword  0x4080000C  // bge .L_800885EC
    cmpw r0, r24
    opword  0x4082FED4  // bne .L_800884BC
L_800885EC:
    psq_l fp31, 0x2a8(r1), 0, 0
    lfd fp31, 0x2a0(r1)
    psq_l fp30, 0x298(r1), 0, 0
    lfd fp30, 0x290(r1)
    psq_l fp29, 0x288(r1), 0, 0
    lfd fp29, 0x280(r1)
    psq_l fp28, 0x278(r1), 0, 0
    lfd fp28, 0x270(r1)
    psq_l fp27, 0x268(r1), 0, 0
    lfd fp27, 0x260(r1)
    lmw r20, 0x230(r1)
    lwz r0, 0x2b4(r1)
    mtlr r0
    addi r1, r1, 0x2b0
    blr
}

ASM void dtor_80088628(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820030  // beq .L_8008866C
    lis r3, lbl_80499520@ha
    addi r0, r3, lbl_80499520@l
    stw r0, 0x0(r31)
    opword  0x41820010  // beq .L_8008865C
    lis r3, lbl_80499548@ha
    addi r0, r3, lbl_80499548@l
    stw r0, 0x0(r31)
L_8008865C:
    extsh. r0, r4
    opword  0x4081000C  // ble .L_8008866C
    mr r3, r31
    bl dtor_80084580
L_8008866C:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80088684(void)
{
    nofralloc
    stwu r1, -0x80(r1)
    mflr r0
    stw r0, 0x84(r1)
    stw r31, 0x7c(r1)
    opword  0x40860024  // bne cr1, .L_800886B8
    stfd fp1, 0x28(r1)
    stfd fp2, 0x30(r1)
    stfd fp3, 0x38(r1)
    stfd fp4, 0x40(r1)
    stfd fp5, 0x48(r1)
    stfd fp6, 0x50(r1)
    stfd fp7, 0x58(r1)
    stfd fp8, 0x60(r1)
L_800886B8:
    addi r11, r1, 0x88
    addi r0, r1, 0x8
    lis r12, 0x200
    stw r3, 0x8(r1)
    addi r31, r1, 0x68
    stw r5, 0x10(r1)
    mr r5, r31
    stw r4, 0xc(r1)
    stw r6, 0x14(r1)
    stw r7, 0x18(r1)
    stw r8, 0x1c(r1)
    stw r9, 0x20(r1)
    stw r10, 0x24(r1)
    stw r12, 0x68(r1)
    stw r11, 0x6c(r1)
    stw r0, 0x70(r1)
    bl fn_80088A10
    lwz r0, 0x84(r1)
    lwz r31, 0x7c(r1)
    mtlr r0
    addi r1, r1, 0x80
    blr
}

ASM void fn_80088710(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    lwz r0, 0x58(r3)
    clrlwi. r0, r0, 31
    opword  0x418202C0  // beq .L_800889F4
    lwz r5, 0x20(r29)
    mr r31, r4
    lwz r3, 0x38(r29)
    addi r4, r5, 0x2
    lwz r0, 0x3c(r29)
    mullw r3, r4, r3
    lwz r4, 0x28(r29)
    addi r3, r3, 0x1
    add r30, r3, r0
    add r30, r4, r30
    opword  0x48000280  // b .L_800889E0
L_80088764:
    lbz r0, 0x6a(r29)
    cmplwi r0, 0x0
    opword  0x41820030  // beq .L_8008879C
    lwz r6, 0x38(r29)
    lwz r3, 0x24(r29)
    addi r6, r6, 0x1
    lwz r0, 0x34(r29)
    xoris r5, r3, 0x8000
    subf r3, r3, r6
    addc r3, r3, r5
    subfe r3, r3, r3
    andc r3, r6, r3
    cmpw r0, r3
    opword  0x41820254  // beq .L_800889EC
L_8008879C:
    cmpwi r4, 0xa
    opword  0x40820014  // bne .L_800887B4
    lwz r0, 0x20(r29)
    addi r31, r31, 0x1
    stw r0, 0x3c(r29)
    opword  0x480000FC  // b .L_800888AC
L_800887B4:
    cmpwi r4, 0x9
    opword  0x40820050  // bne .L_80088808
    li r5, 0x20
    addi r31, r31, 0x1
    opword  0x48000030  // b .L_800887F4
L_800887C8:
    stb r5, 0x0(r30)
    addi r30, r30, 0x1
    lwz r3, 0x3c(r29)
    addi r0, r3, 0x1
    stw r0, 0x3c(r29)
    lwz r4, 0x3c(r29)
    lwz r3, 0x64(r29)
    divw r0, r4, r3
    mullw r0, r0, r3
    subf. r0, r0, r4
    opword  0x418200BC  // beq .L_800888AC
L_800887F4:
    lwz r3, 0x3c(r29)
    lwz r0, 0x20(r29)
    cmplw r3, r0
    opword  0x4180FFC8  // blt .L_800887C8
    opword  0x480000A8  // b .L_800888AC
L_80088808:
    lwz r3, 0x4c(r29)
    cmplwi r3, 0x0
    opword  0x41820080  // beq .L_80088890
    lwz r12, 0x0(r3)
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x41820068  // beq .L_80088890
    lwz r3, 0x3c(r29)
    lwz r0, 0x20(r29)
    addi r3, r3, 0x1
    cmplw r3, r0
    opword  0x40800038  // bge .L_80088874
    lbz r3, 0x0(r31)
    lbz r0, 0x1(r31)
    addi r31, r31, 0x2
    stb r3, 0x0(r30)
    stb r0, 0x1(r30)
    addi r30, r30, 0x2
    lwz r3, 0x3c(r29)
    addi r0, r3, 0x1
    stw r0, 0x3c(r29)
    lwz r3, 0x3c(r29)
    addi r0, r3, 0x1
    stw r0, 0x3c(r29)
    opword  0x4800003C  // b .L_800888AC
L_80088874:
    li r0, 0x0
    stb r0, 0x0(r30)
    addi r30, r30, 0x1
    lwz r3, 0x3c(r29)
    addi r0, r3, 0x1
    stw r0, 0x3c(r29)
    opword  0x48000020  // b .L_800888AC
L_80088890:
    lbz r0, 0x0(r31)
    addi r31, r31, 0x1
    stb r0, 0x0(r30)
    addi r30, r30, 0x1
    lwz r3, 0x3c(r29)
    addi r0, r3, 0x1
    stw r0, 0x3c(r29)
L_800888AC:
    lwz r3, 0x3c(r29)
    lwz r0, 0x20(r29)
    cmplw r3, r0
    opword  0x41800128  // blt .L_800889E0
    li r6, 0x0
    li r5, 0xff
    stb r6, 0x0(r30)
    lwz r4, 0x38(r29)
    lwz r0, 0x24(r29)
    addi r4, r4, 0x1
    xoris r3, r0, 0x8000
    subf r0, r0, r4
    addc r0, r0, r3
    subfe r0, r0, r0
    andc r0, r4, r0
    stw r0, 0x38(r29)
    stw r6, 0x3c(r29)
    lwz r3, 0x20(r29)
    lwz r0, 0x38(r29)
    addi r3, r3, 0x2
    lwz r4, 0x28(r29)
    mullw r0, r3, r0
    stbx r5, r4, r0
    lwz r3, 0x20(r29)
    lwz r0, 0x38(r29)
    addi r3, r3, 0x2
    lwz r4, 0x28(r29)
    mullw r3, r3, r0
    addi r3, r3, 0x1
    add r3, r4, r3
    stb r6, 0x0(r3)
    mr r30, r3
    lwz r4, 0x30(r29)
    lwz r0, 0x38(r29)
    subf. r3, r4, r0
    opword  0x41800008  // blt .L_80088940
    opword  0x4800000C  // b .L_80088948
L_80088940:
    lwz r0, 0x24(r29)
    add r3, r3, r0
L_80088948:
    lwz r0, 0x48(r29)
    cmplw r3, r0
    opword  0x40820024  // bne .L_80088974
    lwz r0, 0x24(r29)
    addi r4, r4, 0x1
    xoris r3, r0, 0x8000
    subf r0, r0, r4
    addc r0, r0, r3
    subfe r0, r0, r0
    andc r0, r4, r0
    stw r0, 0x30(r29)
L_80088974:
    lwz r0, 0x38(r29)
    lwz r3, 0x34(r29)
    cmpw r0, r3
    opword  0x40820024  // bne .L_800889A4
    lwz r0, 0x24(r29)
    addi r4, r3, 0x1
    xoris r3, r0, 0x8000
    subf r0, r0, r4
    addc r0, r0, r3
    subfe r0, r0, r0
    andc r0, r4, r0
    stw r0, 0x34(r29)
L_800889A4:
    lwz r0, 0x38(r29)
    lwz r3, 0x30(r29)
    cmpw r0, r3
    opword  0x40820024  // bne .L_800889D4
    lwz r0, 0x24(r29)
    addi r4, r3, 0x1
    xoris r3, r0, 0x8000
    subf r0, r0, r4
    addc r0, r0, r3
    subfe r0, r0, r0
    andc r0, r4, r0
    stw r0, 0x30(r29)
L_800889D4:
    lbz r0, 0x6b(r29)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_800889EC
L_800889E0:
    lbz r4, 0x0(r31)
    cmplwi r4, 0x0
    opword  0x4082FD7C  // bne .L_80088764
L_800889EC:
    li r0, 0x0
    stb r0, 0x0(r30)
L_800889F4:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80088A10(void)
{
    nofralloc
    stwu r1, -0x410(r1)
    mflr r0
    mr r6, r5
    mr r5, r4
    stw r0, 0x414(r1)
    li r4, 0x400
    stw r31, 0x40c(r1)
    mr r31, r3
    addi r3, r1, 0x8
    bl fn_8006B4E8
    mr r3, r31
    addi r4, r1, 0x8
    bl fn_80088710
    lwz r0, 0x414(r1)
    lwz r31, 0x40c(r1)
    mtlr r0
    addi r1, r1, 0x410
    blr
}

ASM void fn_80088A58(void)
{
    nofralloc
    cmpwi r4, 0x0
    opword  0x40800034  // bge .L_80088A90
    lwz r5, 0x34(r3)
    lwz r0, 0x30(r3)
    subf. r5, r5, r0
    opword  0x41800008  // blt .L_80088A74
    opword  0x4800000C  // b .L_80088A7C
L_80088A74:
    lwz r0, 0x24(r3)
    add r5, r5, r0
L_80088A7C:
    neg r0, r5
    cmpw r4, r0
    opword  0x40800070  // bge .L_80088AF4
    mr r4, r0
    opword  0x48000068  // b .L_80088AF4
L_80088A90:
    opword  0x40810064  // ble .L_80088AF4
    lwz r0, 0x34(r3)
    lwz r6, 0x38(r3)
    subf. r5, r0, r6
    opword  0x41800008  // blt .L_80088AA8
    opword  0x4800000C  // b .L_80088AB0
L_80088AA8:
    lwz r0, 0x24(r3)
    add r5, r5, r0
L_80088AB0:
    lwz r7, 0x48(r3)
    addi r0, r5, 0x1
    cmplw r0, r7
    opword  0x4181000C  // bgt .L_80088AC8
    li r4, 0x0
    opword  0x48000030  // b .L_80088AF4
L_80088AC8:
    lwz r0, 0x30(r3)
    subf. r5, r0, r6
    opword  0x41800008  // blt .L_80088AD8
    opword  0x4800000C  // b .L_80088AE0
L_80088AD8:
    lwz r0, 0x24(r3)
    add r5, r5, r0
L_80088AE0:
    subf r5, r7, r5
    addi r0, r5, 0x1
    cmpw r4, r0
    opword  0x40810008  // ble .L_80088AF4
    mr r4, r0
L_80088AF4:
    lwz r0, 0x30(r3)
    add r0, r0, r4
    stw r0, 0x30(r3)
    lwz r4, 0x30(r3)
    cmpwi r4, 0x0
    opword  0x40800010  // bge .L_80088B18
    lwz r0, 0x24(r3)
    add r0, r4, r0
    stw r0, 0x30(r3)
L_80088B18:
    lwz r0, 0x30(r3)
    lwz r4, 0x24(r3)
    cmplw r0, r4
    bltlr
    subf r0, r4, r0
    stw r0, 0x30(r3)
    blr
}

ASM void fn_80088B34(void)
{
    nofralloc
    lwz r4, 0x34(r3)
    lwz r0, 0x38(r3)
    subf. r4, r4, r0
    opword  0x4180000C  // blt .L_80088B4C
    mr r3, r4
    blr
L_80088B4C:
    lwz r0, 0x24(r3)
    add r3, r4, r0
    blr
}

ASM void fn_80088B58(void)
{
    nofralloc
    lwz r4, 0x34(r3)
    lwz r0, 0x30(r3)
    subf. r4, r4, r0
    opword  0x4180000C  // blt .L_80088B70
    mr r3, r4
    blr
L_80088B70:
    lwz r0, 0x24(r3)
    add r3, r4, r0
    blr
}

ASM void fn_80088B7C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r3, 0x0
    stw r0, 0x14(r1)
    opword  0x40820008  // bne .L_80088B94
    opword  0x806D8CEC  // lwz r3, lbl_8053A8AC@sda21(r0)
L_80088B94:
    mr r4, r3
    li r3, 0x14
    li r5, 0x0
    bl fn_8008440C
    cmplwi r3, 0x0
    opword  0x41820028  // beq .L_80088BD0
    li r4, 0x0
    addi r0, r3, 0x4
    stw r4, 0x4(r3)
    stw r4, 0x8(r3)
    stw r4, 0x0(r3)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    stw r4, 0xc(r3)
    stw r4, 0x10(r3)
L_80088BD0:
    opword  0x906D8D20  // stw r3, lbl_8053A8E0@sda21(r0)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80088BE4(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    addi r5, r1, 0x14
    stw r31, 0x2c(r1)
    mr r31, r4
    addi r6, r31, 0x18
    stw r30, 0x28(r1)
    mr r30, r3
    addi r0, r30, 0x4
    addi r3, r1, 0x10
    stw r0, 0xc(r1)
    mr r4, r30
    stw r0, 0x8(r1)
    stw r0, 0x1c(r1)
    stw r0, 0x18(r1)
    stw r0, 0x14(r1)
    bl fn_80087950
    lwz r0, 0xc(r30)
    cmplwi r0, 0x0
    opword  0x40820008  // bne .L_80088C3C
    stw r31, 0xc(r30)
L_80088C3C:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80088C54(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r4
    stw r30, 0x18(r1)
    mr r30, r3
    lwz r0, 0xc(r3)
    cmplw r0, r31
    opword  0x40820058  // bne .L_80088CD0
    lwz r0, 0x0(r30)
    cmplwi r0, 0x1
    opword  0x41810010  // bgt .L_80088C94
    li r0, 0x0
    stw r0, 0xc(r30)
    opword  0x48000040  // b .L_80088CD0
L_80088C94:
    addi r3, r30, 0x4
    lwz r4, 0x8(r30)
    stw r3, 0x14(r1)
    subi r0, r4, 0x18
    cmplw r31, r0
    stw r3, 0x10(r1)
    opword  0x41820010  // beq .L_80088CBC
    lwz r3, 0x18(r31)
    subi r0, r3, 0x18
    opword  0x48000014  // b .L_80088CCC
L_80088CBC:
    lwz r3, 0x4(r30)
    stw r3, 0xc(r1)
    subi r0, r3, 0x18
    stw r3, 0x8(r1)
L_80088CCC:
    stw r0, 0xc(r30)
L_80088CD0:
    bl fn_80088FA0
    cmplw r3, r31
    opword  0x4082000C  // bne .L_80088CE4
    li r3, 0x0
    bl fn_80088F98
L_80088CE4:
    bl fn_80088F90
    cmplw r3, r31
    opword  0x4082000C  // bne .L_80088CF8
    li r3, 0x0
    bl fn_80088F88
L_80088CF8:
    mr r3, r30
    addi r4, r31, 0x18
    bl fn_800879A0
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

// fn_80088D1C - the item-wheel's own per-frame draw entry point (the
// third top-level call from the main loop's draw(), see fn_800E53E8's
// banner in oscluster_800e2b40.c - conditional on global `lbl_8053A8E0`,
// i.e. only runs while the wheel is open). Walks the circular list of
// wheel-slot nodes (sentinel head at this->0x4) calling fn_800880CC(node,
// mode=1) for every slot EXCEPT the currently-selected one (this->0xc),
// which gets mode=1 too in this pass but is drawn again with mode=0 at
// the end - i.e. two passes: all slots normal, then the selected slot
// redrawn on top/highlighted.
ASM void fn_80088D1C(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    stw r0, 0x64(r1)
    lwz r0, 0x4(r3)
    stw r31, 0x5c(r1)
    lwz r31, 0xc(r3)
    stw r30, 0x58(r1)
    stw r29, 0x54(r1)
    mr r29, r3
    addi r30, r29, 0x4
    stw r30, 0xc(r1)
    stw r0, 0x14(r1)
    stw r0, 0x10(r1)
    stw r0, 0x34(r1)
    stw r0, 0x30(r1)
    stw r0, 0x1c(r1)
    stw r0, 0x44(r1)
    stw r30, 0x8(r1)
    stw r30, 0x2c(r1)
    stw r30, 0x28(r1)
    stw r30, 0x18(r1)
    stw r30, 0x40(r1)
    stw r30, 0x3c(r1)
    stw r30, 0x24(r1)
    opword  0x48000028  // b .L_80088DA4
L_80088D80:
    lwz r3, 0x44(r1)
    subi r3, r3, 0x18
    cmplw r3, r31
    opword  0x4182000C  // beq .L_80088D98
    li r4, 0x1
    bl fn_800880CC
L_80088D98:
    lwz r3, 0x44(r1)
    lwz r0, 0x0(r3)
    stw r0, 0x44(r1)
L_80088DA4:
    lwz r0, 0x44(r1)
    cmplw r0, r30
    stw r0, 0x38(r1)
    stw r0, 0x20(r1)
    opword  0x4082FFCC  // bne .L_80088D80
    lwz r3, 0xc(r29)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_80088DCC
    li r4, 0x0
    bl fn_800880CC
L_80088DCC:
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    lwz r29, 0x54(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

// fn_80088DE8(this, waitForVsync) - the item-wheel's "commit" draw call
// (mode=2), called from a different point than fn_80088D1C. If
// this->0x10 (a "pending selection change" node?) is set and
// `waitForVsync` is true, busy-waits on `fn_8004D140` (a tick-source
// helper) across an OSEnableInterrupts/OSRestoreInterrupts pair until the
// tick value changes - i.e. blocks until the NEXT vertical-blank tick
// boundary - before drawing this->0x10 via fn_800880CC(node, mode=2).
// Reads as "finalize a selection change exactly on a frame boundary,"
// avoiding a visible tear/pop when the wheel's highlighted slot updates.
ASM void fn_80088DE8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    lwz r0, 0x10(r3)
    stw r31, 0x1c(r1)
    cmplwi r0, 0x0
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x4182003C  // beq .L_80088E48
    clrlwi. r0, r4, 24
    opword  0x41820028  // beq .L_80088E3C
    bl OSEnableInterrupts
    mr r30, r3
    bl fn_8004D140
    mr r31, r3
L_80088E28:
    bl fn_8004D140
    cmplw r31, r3
    opword  0x4182FFF8  // beq .L_80088E28
    mr r3, r30
    bl OSRestoreInterrupts
L_80088E3C:
    lwz r3, 0x10(r29)
    li r4, 0x2
    bl fn_800880CC
L_80088E48:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

// fn_80088E64(this, node) - the item-wheel's SELECT operation (the
// counterpart to fn_80088D1C/fn_80088DE8's draw). If a previous
// selection was left pending (this->0x10), commits it via fn_80087950
// first. If `node` is null, just clears the pending reference. Otherwise:
// if `node` is already the current selection (this->0xc), and this->0x0
// (a wheel mode/type field) is <= 1, CLEARS this->0xc instead - i.e.
// re-selecting the already-selected slot in these modes toggles the
// selection off (closes/cancels rather than re-confirms). If selecting a
// DIFFERENT node, recomputes this->0xc from node's position in the
// circular list, invalidates any stale getter-tracked sub-state that
// still pointed at the old selection (fn_80088FA0/F90 getters gate
// fn_80088F98/F88 setters), calls fn_800879A0(this, node's sub-object)
// to activate the new selection, then stores `node` into this->0x10 for
// the next frame's draw pass to pick up.
ASM void fn_80088E64(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stw r31, 0x3c(r1)
    stw r30, 0x38(r1)
    mr r30, r4
    stw r29, 0x34(r1)
    mr r29, r3
    lwz r31, 0x10(r3)
    cmplwi r31, 0x0
    opword  0x41820040  // beq .L_80088ECC
    addi r0, r29, 0x4
    mr r4, r29
    stw r0, 0xc(r1)
    addi r3, r1, 0x20
    addi r5, r1, 0x24
    addi r6, r31, 0x18
    stw r0, 0x8(r1)
    stw r0, 0x2c(r1)
    stw r0, 0x28(r1)
    stw r0, 0x24(r1)
    bl fn_80087950
    lwz r0, 0xc(r29)
    cmplwi r0, 0x0
    opword  0x40820008  // bne .L_80088ECC
    stw r31, 0xc(r29)
L_80088ECC:
    cmplwi r30, 0x0
    opword  0x41820098  // beq .L_80088F68
    lwz r0, 0xc(r29)
    cmplw r0, r30
    opword  0x40820058  // bne .L_80088F34
    lwz r0, 0x0(r29)
    cmplwi r0, 0x1
    opword  0x41810010  // bgt .L_80088EF8
    li r0, 0x0
    stw r0, 0xc(r29)
    opword  0x48000040  // b .L_80088F34
L_80088EF8:
    addi r3, r29, 0x4
    lwz r4, 0x8(r29)
    stw r3, 0x1c(r1)
    subi r0, r4, 0x18
    cmplw r30, r0
    stw r3, 0x18(r1)
    opword  0x41820010  // beq .L_80088F20
    lwz r3, 0x18(r30)
    subi r0, r3, 0x18
    opword  0x48000014  // b .L_80088F30
L_80088F20:
    lwz r3, 0x4(r29)
    stw r3, 0x14(r1)
    subi r0, r3, 0x18
    stw r3, 0x10(r1)
L_80088F30:
    stw r0, 0xc(r29)
L_80088F34:
    bl fn_80088FA0
    cmplw r3, r30
    opword  0x4082000C  // bne .L_80088F48
    li r3, 0x0
    bl fn_80088F98
L_80088F48:
    bl fn_80088F90
    cmplw r3, r30
    opword  0x4082000C  // bne .L_80088F5C
    li r3, 0x0
    bl fn_80088F88
L_80088F5C:
    mr r3, r29
    addi r4, r30, 0x18
    bl fn_800879A0
L_80088F68:
    stw r30, 0x10(r29)
    lwz r0, 0x44(r1)
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    lwz r29, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_80088F88(void)
{
    nofralloc
    opword  0x906D8D24  // stw r3, lbl_8053A8E4@sda21(r0)
    blr
}

ASM void fn_80088F90(void)
{
    nofralloc
    opword  0x806D8D24  // lwz r3, lbl_8053A8E4@sda21(r0)
    blr
}

ASM void fn_80088F98(void)
{
    nofralloc
    opword  0x906D8D28  // stw r3, lbl_8053A8E8@sda21(r0)
    blr
}

ASM void fn_80088FA0(void)
{
    nofralloc
    opword  0x806D8D28  // lwz r3, lbl_8053A8E8@sda21(r0)
    blr
}

ASM void fn_80088FA8(void)
{
    nofralloc
    stwu r1, -0x180(r1)
    mflr r0
    stw r0, 0x184(r1)
    stw r31, 0x17c(r1)
    stw r30, 0x178(r1)
    opword  0x40860024  // bne cr1, .L_80088FE0
    stfd fp1, 0x28(r1)
    stfd fp2, 0x30(r1)
    stfd fp3, 0x38(r1)
    stfd fp4, 0x40(r1)
    stfd fp5, 0x48(r1)
    stfd fp6, 0x50(r1)
    stfd fp7, 0x58(r1)
    stfd fp8, 0x60(r1)
L_80088FE0:
    opword  0x83CD8D24  // lwz r30, lbl_8053A8E4@sda21(r0)
    addi r11, r1, 0x188
    addi r0, r1, 0x8
    lis r12, 0x100
    cmplwi r30, 0x0
    stw r3, 0x8(r1)
    addi r31, r1, 0x68
    stw r4, 0xc(r1)
    stw r5, 0x10(r1)
    stw r6, 0x14(r1)
    stw r7, 0x18(r1)
    stw r8, 0x1c(r1)
    stw r9, 0x20(r1)
    stw r10, 0x24(r1)
    stw r12, 0x68(r1)
    stw r11, 0x6c(r1)
    stw r0, 0x70(r1)
    opword  0x4082001C  // bne .L_80089040
    mr r5, r3
    mr r6, r31
    addi r3, r1, 0x74
    li r4, 0x100
    bl fn_8006B4E8
    opword  0x48000030  // b .L_8008906C
L_80089040:
    lwz r0, 0x58(r30)
    clrlwi. r0, r0, 30
    opword  0x41820024  // beq .L_8008906C
    mr r5, r3
    mr r6, r31
    addi r3, r1, 0x74
    li r4, 0x100
    bl fn_8006B4E8
    opword  0x806D8D24  // lwz r3, lbl_8053A8E4@sda21(r0)
    addi r4, r1, 0x74
    bl fn_80088710
L_8008906C:
    lwz r0, 0x184(r1)
    lwz r31, 0x17c(r1)
    lwz r30, 0x178(r1)
    mtlr r0
    addi r1, r1, 0x180
    blr
}

ASM void fn_80089084(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r4, r3
    opword  0x38628830  // li r3, lbl_8053B7D0@sda21
    stw r0, 0x14(r1)
    crclr 6
    bl fn_80088FA8
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800890B0(void)
{
    nofralloc
    stwu r1, -0x180(r1)
    mflr r0
    stw r0, 0x184(r1)
    stw r31, 0x17c(r1)
    stw r30, 0x178(r1)
    opword  0x40860024  // bne cr1, .L_800890E8
    stfd fp1, 0x28(r1)
    stfd fp2, 0x30(r1)
    stfd fp3, 0x38(r1)
    stfd fp4, 0x40(r1)
    stfd fp5, 0x48(r1)
    stfd fp6, 0x50(r1)
    stfd fp7, 0x58(r1)
    stfd fp8, 0x60(r1)
L_800890E8:
    opword  0x83CD8D24  // lwz r30, lbl_8053A8E4@sda21(r0)
    addi r11, r1, 0x188
    addi r0, r1, 0x8
    lis r12, 0x100
    cmplwi r30, 0x0
    stw r3, 0x8(r1)
    addi r31, r1, 0x68
    stw r4, 0xc(r1)
    stw r5, 0x10(r1)
    stw r6, 0x14(r1)
    stw r7, 0x18(r1)
    stw r8, 0x1c(r1)
    stw r9, 0x20(r1)
    stw r10, 0x24(r1)
    stw r12, 0x68(r1)
    stw r11, 0x6c(r1)
    stw r0, 0x70(r1)
    opword  0x4082001C  // bne .L_80089148
    mr r5, r3
    mr r6, r31
    addi r3, r1, 0x74
    li r4, 0x100
    bl fn_8006B4E8
    opword  0x48000030  // b .L_80089174
L_80089148:
    lwz r0, 0x58(r30)
    clrlwi. r0, r0, 30
    opword  0x41820024  // beq .L_80089174
    mr r5, r3
    mr r6, r31
    addi r3, r1, 0x74
    li r4, 0x100
    bl fn_8006B4E8
    opword  0x806D8D24  // lwz r3, lbl_8053A8E4@sda21(r0)
    addi r4, r1, 0x74
    bl fn_80088710
L_80089174:
    lwz r0, 0x184(r1)
    lwz r31, 0x17c(r1)
    lwz r30, 0x178(r1)
    mtlr r0
    addi r1, r1, 0x180
    blr
}

ASM void fn_8008918C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r4, r3
    opword  0x38628830  // li r3, lbl_8053B7D0@sda21
    stw r0, 0x14(r1)
    crclr 6
    bl fn_80088FA8
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800891B8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    opword  0x800D8D30  // lwz r0, lbl_8053A8F0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082006C  // bne .L_80089248
    cmplwi r31, 0x0
    opword  0x40820008  // bne .L_800891EC
    opword  0x83ED8CEC  // lwz r31, lbl_8053A8AC@sda21(r0)
L_800891EC:
    li r3, 0x14
    bl fn_80084370
    cmplwi r3, 0x0
    opword  0x4182004C  // beq .L_80089244
    li r0, -0x1
    cmplwi r31, 0x0
    stw r0, 0x8(r3)
    li r0, 0x0
    stw r30, 0x4(r3)
    stw r0, 0x0(r3)
    opword  0x4182000C  // beq .L_80089220
    mr r0, r31
    opword  0x48000008  // b .L_80089224
L_80089220:
    opword  0x800D8CEC  // lwz r0, lbl_8053A8AC@sda21(r0)
L_80089224:
    stw r0, 0x10(r3)
    li r4, 0xff
    li r0, 0x1
    stb r4, 0x8(r3)
    stb r4, 0x9(r3)
    stb r4, 0xa(r3)
    stb r4, 0xb(r3)
    stb r0, 0xc(r3)
L_80089244:
    opword  0x906D8D30  // stw r3, lbl_8053A8F0@sda21(r0)
L_80089248:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    opword  0x806D8D30  // lwz r3, lbl_8053A8F0@sda21(r0)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80089264(void)
{
    nofralloc
    cmplwi r4, 0x0
    lwz r0, 0x4(r3)
    opword  0x41820008  // beq .L_80089274
    stw r4, 0x4(r3)
L_80089274:
    mr r3, r0
    blr
}

// A second class found during the rendering-pipeline foothold pass (see
// [[project_fsa_rendering_pipeline_foothold]] and the text/dialog-box
// class documented in oscluster_8008caec.c): a TIMED SCREEN-OVERLAY
// RECTANGLE QUEUE, called unconditionally every frame from the main
// loop's draw() (fn_800E53E8 in oscluster_800e2b40.c, via the global
// `lbl_8053A8F0`).
//
// fn_8008927C - reads the current screen width/height from the global
// screen-config struct (`lbl_8053A980->0x4` fields: halfword width at
// +4, height at +6) and forwards to fn_800892B4 as a float rect.
ASM void fn_8008927C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r4, 0x0
    li r5, 0x0
    stw r0, 0x14(r1)
    opword  0x80CD8DC0  // lwz r6, lbl_8053A980@sda21(r0)
    lwz r6, 0x4(r6)
    lhz r7, 0x6(r6)
    lhz r6, 0x4(r6)
    bl fn_800892B4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

// fn_800892B4(this, x, y, w, h) - walks a LINKED LIST of active overlay-
// rectangle nodes (this->0x4 = head, guarded by this->vtable != NULL).
// For each node: reads x/y/w-ish shorts at +0x4/+0x6/+0xa plus a data
// pointer at +0xc and calls fn_80089428 to actually draw it; decrements
// a per-node lifetime countdown at +0x8, and once it expires, UNLINKS
// and frees the node via fn_800838F4 (the shared deallocation path).
// This is a queue of temporary, auto-expiring colored screen-space
// rectangles - e.g. hit-flash or transition-wipe overlays - each drawn
// for a fixed number of frames then automatically cleaned up.
ASM void fn_800892B4(void)
{
    nofralloc
    stwu r1, -0x110(r1)
    mflr r0
    stw r0, 0x114(r1)
    stw r31, 0x10c(r1)
    stw r30, 0x108(r1)
    stw r29, 0x104(r1)
    stw r28, 0x100(r1)
    mr r28, r3
    mr r31, r28
    lwz r0, 0x4(r3)
    lwz r30, 0x0(r3)
    cmplwi r0, 0x0
    opword  0x41820124  // beq .L_80089408
    cmplwi r30, 0x0
    opword  0x4182011C  // beq .L_80089408
    lis r8, 0x4330
    xoris r3, r4, 0x8000
    xoris r5, r5, 0x8000
    xoris r4, r6, 0x8000
    xoris r0, r7, 0x8000
    stw r3, 0xe4(r1)
    opword  0xC8828840  // lfd f4, lbl_8053B7E0@sda21(r0)
    addi r3, r1, 0xc
    stw r8, 0xe0(r1)
    opword  0xC0A28838  // lfs f5, lbl_8053B7D8@sda21(r0)
    lfd fp0, 0xe0(r1)
    stw r5, 0xec(r1)
    fsubs fp1, fp0, fp4
    opword  0xC0C2883C  // lfs f6, lbl_8053B7DC@sda21(r0)
    stw r8, 0xe8(r1)
    lfd fp0, 0xe8(r1)
    stw r4, 0xf4(r1)
    fsubs fp2, fp0, fp4
    stw r8, 0xf0(r1)
    lfd fp0, 0xf0(r1)
    stw r0, 0xfc(r1)
    fsubs fp3, fp0, fp4
    stw r8, 0xf8(r1)
    lfd fp0, 0xf8(r1)
    fsubs fp4, fp0, fp4
    bl fn_800937B0
    addi r3, r1, 0xc
    bl fn_80093894
    lwz r3, 0x4(r28)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r0, 0x8(r28)
    addi r4, r1, 0x8
    stw r0, 0x8(r1)
    lwz r3, 0x4(r28)
    bl fn_8008CCB8
    opword  0x48000060  // b .L_800893E8
L_8008938C:
    lbz r0, 0xc(r28)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_800893B0
    lha r4, 0x4(r30)
    mr r3, r28
    lha r5, 0x6(r30)
    addi r7, r30, 0xc
    lha r6, 0xa(r30)
    bl fn_80089428
L_800893B0:
    lha r3, 0x8(r30)
    subi r3, r3, 0x1
    extsh. r0, r3
    sth r3, 0x8(r30)
    opword  0x41810020  // bgt .L_800893E0
    lwz r29, 0x0(r30)
    mr r3, r30
    lwz r4, 0x10(r28)
    bl fn_800838F4
    stw r29, 0x0(r31)
    mr r30, r29
    opword  0x4800000C  // b .L_800893E8
L_800893E0:
    mr r31, r30
    lwz r30, 0x0(r30)
L_800893E8:
    cmplwi r30, 0x0
    opword  0x4082FFA0  // bne .L_8008938C
    lis r4, lbl_80499520@ha
    lis r3, lbl_80499548@ha
    addi r0, r4, lbl_80499520@l
    stw r0, 0xc(r1)
    addi r0, r3, lbl_80499548@l
    stw r0, 0xc(r1)
L_80089408:
    lwz r0, 0x114(r1)
    lwz r31, 0x10c(r1)
    lwz r30, 0x108(r1)
    lwz r29, 0x104(r1)
    lwz r28, 0x100(r1)
    mtlr r0
    addi r1, r1, 0x110
    blr
}

// fn_80089428 - draws one overlay-rectangle node. CONFIRMED (precisely
// re-traced the float/register flow through the call to fn_8008CD70
// below): calls this->0x4's own vtable slot 0x24 then slot 0x28, and
// feeds their two integer return values, converted to float via the
// project's standard magic-double int->float idiom, into fn_8008CD70's
// `h` and `w` parameters respectively - i.e. these are the node's own
// HEIGHT and WIDTH accessors, NOT color/alpha as first guessed. The
// caller's own x/y args become fn_8008CD70's x/y, and this function's
// last two incoming args pass straight through as dataPtr/count. Forwards
// to fn_8008CD70 (the SAME text/box-drawing primitive documented in
// oscluster_8008caec.c) - confirming these two "separate" classes
// actually share one underlying glyph/quad rendering primitive, and that
// each queued overlay rectangle carries its own virtual (subclassable)
// width/height.
ASM void fn_80089428(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    stw r0, 0x54(r1)
    stfd fp31, 0x40(r1)
    psq_st fp31, 0x48(r1), 0, 0
    stmw r27, 0x2c(r1)
    lwz r31, 0x4(r3)
    mr r27, r4
    mr r28, r5
    mr r29, r6
    mr r3, r31
    mr r30, r7
    lwz r12, 0x0(r31)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    xoris r4, r3, 0x8000
    lis r0, 0x4330
    mr r3, r31
    stw r4, 0xc(r1)
    lwz r12, 0x0(r31)
    stw r0, 0x8(r1)
    opword  0xC8228840  // lfd f1, lbl_8053B7E0@sda21(r0)
    lfd fp0, 0x8(r1)
    lwz r12, 0x28(r12)
    fsubs fp31, fp0, fp1
    mtctr r12
    bctrl
    lis r7, 0x4330
    xoris r0, r3, 0x8000
    stw r0, 0x14(r1)
    xoris r6, r27, 0x8000
    xoris r0, r28, 0x8000
    opword  0xC8428840  // lfd f2, lbl_8053B7E0@sda21(r0)
    stw r7, 0x10(r1)
    fmr fp4, fp31
    mr r3, r31
    mr r4, r30
    lfd fp0, 0x10(r1)
    mr r5, r29
    stw r6, 0x1c(r1)
    fsubs fp3, fp0, fp2
    li r6, 0x1
    stw r7, 0x18(r1)
    lfd fp0, 0x18(r1)
    stw r0, 0x24(r1)
    fsubs fp1, fp0, fp2
    stw r7, 0x20(r1)
    lfd fp0, 0x20(r1)
    fsubs fp2, fp0, fp2
    bl fn_8008CD70
    psq_l fp31, 0x48(r1), 0, 0
    lfd fp31, 0x40(r1)
    lmw r27, 0x2c(r1)
    lwz r0, 0x54(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_80089510(void)
{
    nofralloc
    li r4, 0x0
    addi r0, r3, 0x1f
    stw r4, 0x828(r3)
    clrrwi r0, r0, 5
    stw r4, 0x82c(r3)
    stw r4, 0x824(r3)
    stw r0, 0x820(r3)
    stb r4, 0x830(r3)
    blr
}

ASM void fn_80089534(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x41820018  // beq .L_80089560
    li r5, 0x0
    extsh. r0, r4
    stb r5, 0x830(r31)
    opword  0x40810008  // ble .L_80089560
    bl dtor_80084580
L_80089560:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80089578(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr. r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x4082000C  // bne .L_800895A4
    li r3, 0x0
    opword  0x48000064  // b .L_80089604
L_800895A4:
    bl OSEnableInterrupts
    mr r0, r3
    mr r3, r30
    mr r30, r0
    addi r4, r29, 0x834
    bl fn_80048474
    mr r31, r3
    mr r3, r30
    bl OSRestoreInterrupts
    cmpwi r31, 0x0
    opword  0x40820014  // bne .L_800895E0
    li r0, 0x0
    li r3, 0x0
    stb r0, 0x830(r29)
    opword  0x48000028  // b .L_80089604
L_800895E0:
    bl OSEnableInterrupts
    lwz r0, 0x868(r29)
    stw r0, 0x828(r29)
    bl OSRestoreInterrupts
    li r3, 0x0
    li r0, 0x1
    stw r3, 0x82c(r29)
    li r3, 0x1
    stb r0, 0x830(r29)
L_80089604:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80089620(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    lbz r0, 0x830(r3)
    cmplwi r0, 0x0
    opword  0x41820028  // beq .L_80089668
    bl OSEnableInterrupts
    mr r0, r3
    addi r3, r30, 0x834
    mr r31, r0
    bl fn_8004853C
    mr r3, r31
    bl OSRestoreInterrupts
    li r0, 0x0
    stb r0, 0x830(r30)
L_80089668:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80089680(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r25, 0x14(r1)
    mr r27, r3
    mr r28, r5
    lbz r0, 0x830(r3)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_800896AC
    li r3, -0x1
    opword  0x480001F4  // b .L_8008989C
L_800896AC:
    cmpwi r28, 0x0
    opword  0x4082000C  // bne .L_800896BC
    li r3, 0x0
    opword  0x480001E4  // b .L_8008989C
L_800896BC:
    cmpwi r28, 0x1
    opword  0x4082000C  // bne .L_800896CC
    li r3, 0x1
    opword  0x480001D4  // b .L_8008989C
L_800896CC:
    cmplwi r4, 0x0
    opword  0x4082000C  // bne .L_800896DC
    li r3, -0x1
    opword  0x480001C4  // b .L_8008989C
L_800896DC:
    lwz r3, 0x82c(r27)
    lwz r0, 0x828(r27)
    cmplw r3, r0
    opword  0x4180000C  // blt .L_800896F4
    li r3, -0x1
    opword  0x480001AC  // b .L_8008989C
L_800896F4:
    mr r30, r4
    subi r31, r28, 0x1
    li r29, 0x0
    opword  0x48000170  // b .L_80089870
L_80089704:
    lwz r0, 0x824(r27)
    cmplwi r0, 0x0
    opword  0x408200A4  // bne .L_800897B0
    clrrwi r0, r3, 5
    subf r0, r0, r4
    stw r0, 0x824(r27)
    lwz r0, 0x824(r27)
    cmplwi r0, 0x800
    opword  0x4081000C  // ble .L_80089730
    li r0, 0x800
    stw r0, 0x824(r27)
L_80089730:
    bl OSEnableInterrupts
    lwz r4, 0x824(r27)
    mr r25, r3
    lwz r0, 0x82c(r27)
    addi r3, r27, 0x834
    addi r5, r4, 0x1f
    lwz r4, 0x820(r27)
    clrrwi r6, r0, 5
    li r7, 0x0
    clrrwi r5, r5, 5
    li r8, 0x2
    bl fn_80048784
    mr r26, r3
    mr r3, r25
    bl OSRestoreInterrupts
    cmpwi r26, 0x0
    opword  0x4082000C  // bne .L_8008977C
    li r0, -0x1
    opword  0x48000028  // b .L_800897A0
L_8008977C:
    bl OSEnableInterrupts
    mr r25, r3
L_80089784:
    addi r3, r27, 0x834
    bl DVDGetCommandBlockStatus
    cmpwi r3, 0x0
    opword  0x4082FFF4  // bne .L_80089784
    mr r3, r25
    bl OSRestoreInterrupts
    lwz r0, 0x824(r27)
L_800897A0:
    cmpwi r0, 0x0
    opword  0x4080000C  // bge .L_800897B0
    li r3, -0x1
    opword  0x480000F0  // b .L_8008989C
L_800897B0:
    lwz r3, 0x82c(r27)
    lwz r0, 0x824(r27)
    clrlwi r4, r3, 21
    subf r5, r4, r0
    add r0, r29, r5
    cmplw r0, r31
    opword  0x4081000C  // ble .L_800897D4
    subf r3, r29, r28
    subi r5, r3, 0x1
L_800897D4:
    li r6, 0x0
    li r7, 0x0
    mtctr r5
    cmplwi r5, 0x0
    opword  0x40810034  // ble .L_80089818
L_800897E8:
    lwz r3, 0x820(r27)
    lbzx r0, r3, r4
    addi r4, r4, 0x1
    cmpwi r0, 0xa
    stb r0, 0x0(r30)
    addi r30, r30, 0x1
    opword  0x40820010  // bne .L_80089810
    addi r5, r7, 0x1
    li r6, 0x1
    opword  0x4800000C  // b .L_80089818
L_80089810:
    addi r7, r7, 0x1
    opword  0x4200FFD4  // bdnz .L_800897E8
L_80089818:
    cmplwi r4, 0x800
    opword  0x4180000C  // blt .L_80089828
    li r0, 0x0
    stw r0, 0x824(r27)
L_80089828:
    cmpwi r6, 0x1
    opword  0x40820020  // bne .L_8008984C
    li r0, 0x0
    add r29, r29, r5
    stb r0, 0x0(r30)
    lwz r0, 0x82c(r27)
    add r0, r0, r5
    stw r0, 0x82c(r27)
    opword  0x48000038  // b .L_80089880
L_8008984C:
    lwz r0, 0x82c(r27)
    add r29, r29, r5
    cmpw r29, r31
    add r0, r0, r5
    stw r0, 0x82c(r27)
    opword  0x41800010  // blt .L_80089870
    li r0, 0x0
    stb r0, 0x0(r30)
    opword  0x48000014  // b .L_80089880
L_80089870:
    lwz r3, 0x82c(r27)
    lwz r4, 0x828(r27)
    cmplw r3, r4
    opword  0x4180FE88  // blt .L_80089704
L_80089880:
    lwz r3, 0x82c(r27)
    lwz r0, 0x828(r27)
    cmplw r3, r0
    opword  0x4180000C  // blt .L_80089898
    li r0, 0x0
    stb r0, 0x0(r30)
L_80089898:
    mr r3, r29
L_8008989C:
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800898B0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    opword  0x800D8D38  // lwz r0, lbl_8053A8F8@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820044  // bne .L_8008990C
    li r3, 0x2c
    bl fn_80084370
    mr. r31, r3
    opword  0x41820030  // beq .L_80089908
    li r0, -0x1
    li r4, 0x0
    stw r0, 0x18(r31)
    li r5, 0x0
    li r6, 0x0
    bl fn_80089C70
    mr r3, r31
    li r4, 0xff
    li r5, 0xff
    li r6, 0xff
    bl fn_80089E74
L_80089908:
    opword  0x93ED8D38  // stw r31, lbl_8053A8F8@sda21(r0)
L_8008990C:
    lwz r0, 0x14(r1)
    opword  0x806D8D38  // lwz r3, lbl_8053A8F8@sda21(r0)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80089924(void)
{
    nofralloc
    lwz r0, 0x0(r3)
    cmplwi r0, 0x0
    beqlr
    lhz r0, 0x4(r3)
    cmplwi r0, 0x190
    opword  0x4081000C  // ble .L_80089944
    slwi r4, r4, 1
    slwi r6, r6, 1
L_80089944:
    lhz r0, 0x6(r3)
    cmplwi r0, 0x12c
    opword  0x4081000C  // ble .L_80089958
    slwi r5, r5, 1
    slwi r7, r7, 1
L_80089958:
    lhz r8, 0x8(r3)
    slwi r0, r4, 1
    lwz r9, 0x14(r3)
    li r10, 0x0
    mullw r4, r8, r5
    slwi r4, r4, 1
    add r8, r4, r0
    add r8, r9, r8
    opword  0x48000098  // b .L_80089A10
L_8008997C:
    cmpwi r6, 0x0
    li r9, 0x0
    opword  0x40810078  // ble .L_800899FC
    cmpwi r6, 0x8
    subi r5, r6, 0x8
    opword  0x40810048  // ble .L_800899D8
    addi r0, r5, 0x7
    li r4, 0x1080
    srwi r0, r0, 3
    mtctr r0
    cmpwi r5, 0x0
    opword  0x40810030  // ble .L_800899D8
L_800899AC:
    sth r4, 0x0(r8)
    addi r9, r9, 0x8
    sth r4, 0x2(r8)
    sth r4, 0x4(r8)
    sth r4, 0x6(r8)
    sth r4, 0x8(r8)
    sth r4, 0xa(r8)
    sth r4, 0xc(r8)
    sth r4, 0xe(r8)
    addi r8, r8, 0x10
    opword  0x4200FFD8  // bdnz .L_800899AC
L_800899D8:
    subf r0, r9, r6
    li r4, 0x1080
    mtctr r0
    cmpw r9, r6
    opword  0x40800014  // bge .L_800899FC
L_800899EC:
    sth r4, 0x0(r8)
    addi r8, r8, 0x2
    addi r9, r9, 0x1
    opword  0x4200FFF4  // bdnz .L_800899EC
L_800899FC:
    lhz r0, 0x8(r3)
    addi r10, r10, 0x1
    subf r0, r6, r0
    slwi r0, r0, 1
    add r8, r8, r0
L_80089A10:
    cmpw r10, r7
    opword  0x4180FF68  // blt .L_8008997C
    blr
}

ASM void fn_80089A1C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    lis r7, lbl_804990C8@ha
    cmpwi r6, 0x64
    mr r9, r6
    stmw r27, 0xc(r1)
    addi r7, r7, lbl_804990C8@l
    opword  0x41800008  // blt .L_80089A3C
    subi r9, r6, 0x64
L_80089A3C:
    lis r8, 0x6666
    cmpwi r6, 0x64
    addi r0, r8, 0x6667
    addi r30, r7, 0x180
    mulhw r0, r0, r9
    srawi r6, r0, 1
    srwi r8, r6, 31
    srawi r0, r0, 1
    add r6, r6, r8
    mulli r8, r6, 0x5
    srwi r6, r0, 31
    add r0, r0, r6
    mulli r0, r0, 0x7
    subf r6, r8, r9
    slwi r0, r0, 2
    mulli r8, r6, 0x6
    add r30, r30, r0
    opword  0x4080000C  // bge .L_80089A8C
    addi r30, r7, 0x80
    add r30, r30, r0
L_80089A8C:
    lhz r0, 0x8(r3)
    li r9, 0x190
    lhz r11, 0x4(r3)
    li r10, 0x12c
    mullw r6, r0, r5
    lhz r0, 0x6(r3)
    subfc r5, r9, r11
    lwz r12, 0x14(r3)
    mr r9, r30
    subfe r5, r5, r5
    addi r5, r5, 0x2
    subfc r0, r10, r0
    subfe r10, r0, r0
    li r11, 0x0
    addi r0, r10, 0x2
    mullw r6, r0, r6
    mullw r4, r4, r5
    slwi r6, r6, 1
    slwi r4, r4, 1
    add r10, r6, r4
    mulli r4, r5, 0x6
    add r10, r12, r10
L_80089AE4:
    lwz r6, 0x0(r9)
    cmpwi r5, 0x1
    addi r9, r9, 0x4
    slw r12, r6, r8
    opword  0x4082000C  // bne .L_80089B00
    rlwinm r6, r12, 31, 1, 6
    opword  0x48000034  // b .L_80089B30
L_80089B00:
    addi r30, r7, 0x2b4
    rlwinm r6, r12, 6, 28, 29
    rlwinm r31, r12, 4, 28, 29
    rlwinm r12, r12, 8, 28, 29
    lwzx r6, r30, r6
    lwzx r31, r30, r31
    lwzx r12, r30, r12
    slwi r6, r6, 4
    slwi r31, r31, 8
    or r6, r12, r6
    or r6, r31, r6
    slwi r6, r6, 19
L_80089B30:
    addi r12, r4, 0x1
    srwi r12, r12, 1
    mtctr r12
    cmpwi r4, 0x0
    opword  0x40810104  // ble .L_80089C44
L_80089B44:
    rlwinm. r28, r6, 0, 1, 1
    opword  0x4182000C  // beq .L_80089B54
    lhz r30, 0x20(r3)
    opword  0x48000008  // b .L_80089B58
L_80089B54:
    li r30, 0x40
L_80089B58:
    clrrwi. r12, r6, 31
    opword  0x4182000C  // beq .L_80089B68
    lhz r29, 0x22(r3)
    opword  0x48000008  // b .L_80089B6C
L_80089B68:
    li r29, 0x20
L_80089B6C:
    rlwinm. r27, r6, 0, 2, 2
    opword  0x4182000C  // beq .L_80089B7C
    lhz r12, 0x22(r3)
    opword  0x48000008  // b .L_80089B80
L_80089B7C:
    li r12, 0x20
L_80089B80:
    cmplwi r28, 0x0
    opword  0x4182000C  // beq .L_80089B90
    lhz r31, 0x1c(r3)
    opword  0x48000008  // b .L_80089B94
L_80089B90:
    li r31, 0x0
L_80089B94:
    add r12, r30, r12
    cmpwi r0, 0x1
    add r12, r29, r12
    or r12, r31, r12
    sth r12, 0x0(r10)
    clrlwi r29, r12, 16
    opword  0x40810010  // ble .L_80089BBC
    lhz r12, 0x8(r3)
    slwi r12, r12, 1
    sthx r29, r10, r12
L_80089BBC:
    cmplwi r27, 0x0
    opword  0x4182000C  // beq .L_80089BCC
    lhz r29, 0x26(r3)
    opword  0x48000008  // b .L_80089BD0
L_80089BCC:
    li r29, 0x40
L_80089BD0:
    cmplwi r28, 0x0
    opword  0x4182000C  // beq .L_80089BE0
    lhz r30, 0x28(r3)
    opword  0x48000008  // b .L_80089BE4
L_80089BE0:
    li r30, 0x20
L_80089BE4:
    rlwinm. r12, r6, 0, 3, 3
    opword  0x4182000C  // beq .L_80089BF4
    lhz r12, 0x28(r3)
    opword  0x48000008  // b .L_80089BF8
L_80089BF4:
    li r12, 0x20
L_80089BF8:
    cmplwi r27, 0x0
    opword  0x4182000C  // beq .L_80089C08
    lhz r31, 0x1c(r3)
    opword  0x48000008  // b .L_80089C0C
L_80089C08:
    li r31, 0x0
L_80089C0C:
    add r12, r29, r12
    cmpwi r0, 0x1
    add r12, r30, r12
    or r12, r31, r12
    sth r12, 0x2(r10)
    clrlwi r27, r12, 16
    opword  0x40810014  // ble .L_80089C38
    lhz r12, 0x8(r3)
    slwi r12, r12, 1
    addi r12, r12, 0x2
    sthx r27, r10, r12
L_80089C38:
    slwi r6, r6, 2
    addi r10, r10, 0x4
    opword  0x4200FF04  // bdnz .L_80089B44
L_80089C44:
    lhz r6, 0x8(r3)
    addi r11, r11, 0x1
    cmpwi r11, 0x7
    mullw r6, r6, r0
    subf r6, r4, r6
    slwi r6, r6, 1
    add r10, r10, r6
    opword  0x4180FE84  // blt .L_80089AE4
    lmw r27, 0xc(r1)
    addi r1, r1, 0x20
    blr
}

ASM void fn_80089C70(void)
{
    nofralloc
    stw r4, 0x0(r3)
    addi r0, r5, 0xf
    rlwinm r0, r0, 0, 16, 27
    stw r4, 0x14(r3)
    sth r5, 0x4(r3)
    sth r6, 0x6(r3)
    sth r0, 0x8(r3)
    lhz r4, 0x8(r3)
    lhz r0, 0x6(r3)
    mullw r0, r4, r0
    slwi r0, r0, 1
    stw r0, 0xc(r3)
    blr
}

ASM void fn_80089CA4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r7, r6
    opword  0x38C28848  // li r6, lbl_8053B7E8@sda21
    stw r0, 0x14(r1)
    crclr 6
    bl fn_80089CD0
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80089CD0(void)
{
    nofralloc
    stwu r1, -0x1a0(r1)
    mflr r0
    stw r0, 0x1a4(r1)
    stmw r24, 0x180(r1)
    mr r24, r3
    mr r25, r4
    opword  0x40860024  // bne cr1, .L_80089D0C
    stfd fp1, 0x28(r1)
    stfd fp2, 0x30(r1)
    stfd fp3, 0x38(r1)
    stfd fp4, 0x40(r1)
    stfd fp5, 0x48(r1)
    stfd fp6, 0x50(r1)
    stfd fp7, 0x58(r1)
    stfd fp8, 0x60(r1)
L_80089D0C:
    stw r3, 0x8(r1)
    stw r4, 0xc(r1)
    stw r5, 0x10(r1)
    stw r6, 0x14(r1)
    stw r7, 0x18(r1)
    stw r8, 0x1c(r1)
    stw r9, 0x20(r1)
    stw r10, 0x24(r1)
    lwz r0, 0x14(r24)
    cmplwi r0, 0x0
    opword  0x418200FC  // beq .L_80089E30
    addi r3, r1, 0x1a8
    addi r0, r1, 0x8
    lis r4, 0x400
    stw r3, 0x6c(r1)
    mr r26, r5
    mr r27, r25
    stw r4, 0x68(r1)
    addi r3, r1, 0x68
    stw r0, 0x70(r1)
    opword  0x418200D4  // beq .L_80089E30
    mr r5, r6
    mr r6, r3
    addi r3, r1, 0x74
    li r4, 0x100
    bl fn_8006B4E8
    mr. r28, r3
    mr r29, r25
    opword  0x408100A8  // ble .L_80089E24
    lis r3, lbl_804990C8@ha
    addi r30, r1, 0x74
    clrlwi r25, r25, 16
    addi r31, r3, lbl_804990C8@l
    opword  0x4800008C  // b .L_80089E1C
L_80089D94:
    lbz r0, 0x0(r30)
    clrlwi r0, r0, 25
    lbzx r6, r31, r0
    cmpwi r6, 0xfe
    opword  0x40820010  // bne .L_80089DB4
    mr r27, r29
    addi r26, r26, 0x7
    opword  0x48000064  // b .L_80089E14
L_80089DB4:
    cmpwi r6, 0xfd
    opword  0x40820040  // bne .L_80089DF8
    clrlwi r6, r27, 16
    lis r3, 0x2aab
    subf r4, r25, r6
    addi r5, r4, 0x2f
    subi r0, r3, 0x5555
    mulhw r3, r0, r5
    addi r0, r6, 0x30
    srawi r3, r3, 3
    srwi r4, r3, 31
    add r3, r3, r4
    mulli r3, r3, 0x30
    subf r3, r3, r5
    subf r0, r3, r0
    clrlwi r27, r0, 16
    opword  0x48000020  // b .L_80089E14
L_80089DF8:
    cmpwi r6, 0xff
    opword  0x41820014  // beq .L_80089E10
    mr r3, r24
    clrlwi r4, r27, 16
    clrlwi r5, r26, 16
    bl fn_80089A1C
L_80089E10:
    addi r27, r27, 0x6
L_80089E14:
    subi r28, r28, 0x1
    addi r30, r30, 0x1
L_80089E1C:
    cmpwi r28, 0x0
    opword  0x4181FF74  // bgt .L_80089D94
L_80089E24:
    lwz r3, 0x14(r24)
    lwz r4, 0xc(r24)
    bl fn_80040F90
L_80089E30:
    lmw r24, 0x180(r1)
    lwz r0, 0x1a4(r1)
    mtlr r0
    addi r1, r1, 0x1a0
    blr
}

ASM void fn_80089E44(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r6, r4
    lbz r4, 0x0(r4)
    lbz r5, 0x1(r6)
    stw r0, 0x14(r1)
    lbz r6, 0x2(r6)
    bl fn_80089E74
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80089E74(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    clrlwi r0, r5, 24
    lis r8, 0x4330
    clrlwi r7, r4, 24
    xoris r0, r0, 0x8000
    stw r8, 0x58(r1)
    xoris r7, r7, 0x8000
    clrlwi r9, r6, 24
    stw r0, 0x5c(r1)
    xoris r9, r9, 0x8000
    opword  0xC80288A0  // lfd f0, lbl_8053B840@sda21(r0)
    li r10, 0xff
    lfd fp1, 0x58(r1)
    opword  0xC8428898  // lfd f2, lbl_8053B838@sda21(r0)
    fsub fp1, fp1, fp0
    stw r7, 0x54(r1)
    opword  0xC8628890  // lfd f3, lbl_8053B830@sda21(r0)
    stw r8, 0x50(r1)
    fmul fp1, fp2, fp1
    opword  0xC8C28868  // lfd f6, lbl_8053B808@sda21(r0)
    lfd fp2, 0x50(r1)
    stw r9, 0x4c(r1)
    fsub fp2, fp2, fp0
    opword  0xC9028860  // lfd f8, lbl_8053B800@sda21(r0)
    stw r8, 0x48(r1)
    fmadd fp1, fp3, fp2, fp1
    opword  0xC8628880  // lfd f3, lbl_8053B820@sda21(r0)
    lfd fp2, 0x48(r1)
    stw r0, 0x1c(r1)
    fsub fp2, fp2, fp0
    opword  0xC9228858  // lfd f9, lbl_8053B7F8@sda21(r0)
    stw r8, 0x18(r1)
    opword  0xC9428850  // lfd f10, lbl_8053B7F0@sda21(r0)
    lfd fp4, 0x18(r1)
    stw r7, 0x14(r1)
    fsub fp5, fp4, fp0
    opword  0xC8828888  // lfd f4, lbl_8053B828@sda21(r0)
    stw r8, 0x10(r1)
    fmadd fp1, fp4, fp2, fp1
    lfd fp7, 0x10(r1)
    fmul fp6, fp6, fp5
    stw r9, 0xc(r1)
    opword  0xC8A28870  // lfd f5, lbl_8053B810@sda21(r0)
    fadd fp1, fp3, fp1
    fsub fp7, fp7, fp0
    stw r8, 0x8(r1)
    fctiwz fp1, fp1
    stw r0, 0x3c(r1)
    fmsub fp7, fp8, fp7, fp6
    lfd fp3, 0x8(r1)
    stw r8, 0x38(r1)
    opword  0xC8C28878  // lfd f6, lbl_8053B818@sda21(r0)
    stfd fp1, 0x60(r1)
    fsub fp1, fp3, fp0
    lfd fp2, 0x38(r1)
    fmadd fp3, fp9, fp1, fp7
    stb r4, 0x18(r3)
    lwz r0, 0x64(r1)
    fsub fp2, fp2, fp0
    stb r5, 0x19(r3)
    clrlslwi r0, r0, 24, 8
    fadd fp3, fp10, fp3
    stb r6, 0x1a(r3)
    fmul fp2, fp5, fp2
    stb r10, 0x1b(r3)
    fctiwz fp3, fp3
    stw r7, 0x34(r1)
    stw r8, 0x30(r1)
    lfd fp1, 0x30(r1)
    stw r9, 0x2c(r1)
    fsub fp1, fp1, fp0
    stw r8, 0x28(r1)
    fmsub fp1, fp9, fp1, fp2
    lfd fp2, 0x28(r1)
    stfd fp3, 0x20(r1)
    fsub fp0, fp2, fp0
    sth r0, 0x1c(r3)
    lwz r0, 0x24(r1)
    fnmsub fp0, fp6, fp0, fp1
    sth r0, 0x1e(r3)
    extrwi r4, r0, 15, 16
    extrwi r0, r0, 14, 16
    sth r4, 0x20(r3)
    fadd fp0, fp10, fp0
    sth r0, 0x22(r3)
    fctiwz fp0, fp0
    stfd fp0, 0x40(r1)
    lwz r0, 0x44(r1)
    sth r0, 0x24(r3)
    extrwi r4, r0, 15, 16
    extrwi r0, r0, 14, 16
    sth r4, 0x26(r3)
    sth r0, 0x28(r3)
    addi r1, r1, 0x70
    blr
}

ASM void fn_80089FF0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    opword  0x800D8D40  // lwz r0, lbl_8053A900@sda21(r0)
    cmplwi r0, 0x0
    opword  0x408200D4  // bne .L_8008A0E4
    opword  0x808D8CE8  // lwz r4, lbl_8053A8A8@sda21(r0)
    li r3, 0xa4
    li r5, 0x0
    bl fn_8008440C
    mr. r31, r3
    opword  0x418200B0  // beq .L_8008A0D8
    li r4, 0x4000
    li r5, 0x10
    li r6, 0x0
    bl fn_80085474
    lis r3, lbl_80499414@ha
    lis r4, fn_8008A220@ha
    addi r0, r3, lbl_80499414@l
    stw r0, 0x0(r31)
    li r3, 0x2
    addi r4, r4, fn_8008A220@l
    stw r30, 0x80(r31)
    bl OSSetErrorHandler
    lis r4, fn_8008A220@ha
    li r3, 0x3
    addi r4, r4, fn_8008A220@l
    bl OSSetErrorHandler
    lis r4, fn_8008A220@ha
    li r3, 0x6
    addi r4, r4, fn_8008A220@l
    bl OSSetErrorHandler
    lis r4, fn_8008A220@ha
    li r3, 0x5
    addi r4, r4, fn_8008A220@l
    bl OSSetErrorHandler
    lis r4, fn_8008A220@ha
    li r3, 0xf
    addi r4, r4, fn_8008A220@l
    bl OSSetErrorHandler
    li r3, 0x0
    bl fn_8008A4C4
    li r5, 0x0
    li r4, -0x1
    opword  0x90AD8D44  // stw r5, lbl_8053A904@sda21(r0)
    li r3, 0xa
    li r0, 0x1f
    opword  0x90AD8D48  // stw r5, lbl_8053A908@sda21(r0)
    stw r5, 0x84(r31)
    stw r4, 0x88(r31)
    stw r3, 0x8c(r31)
    stw r3, 0x90(r31)
    stw r4, 0x94(r31)
    stw r5, 0x98(r31)
    stw r0, 0x9c(r31)
L_8008A0D8:
    opword  0x93ED8D40  // stw r31, lbl_8053A900@sda21(r0)
    lwz r3, 0x2c(r31)
    bl OSResumeThread
L_8008A0E4:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    opword  0x806D8D40  // lwz r3, lbl_8053A900@sda21(r0)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008A100(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r25, 0x14(r1)
    mr r31, r3
    bl PPCMfmsr
    li r0, -0x901
    and r3, r3, r0
    bl PPCMtmsr
    lis r3, lbl_80499390@ha
    opword  0x388D81D0  // li r4, lbl_80539D90@sda21
    addi r3, r3, lbl_80499390@l
    li r5, 0x1
    bl OSInitMessageQueue
    lis r3, lbl_80499390@ha
    addi r30, r3, lbl_80499390@l
L_8008A140:
    mr r3, r30
    addi r4, r1, 0x8
    li r5, 0x1
    bl OSReceiveMessage
    li r3, 0x0
    bl fn_8004BA50
    li r3, 0x0
    bl fn_8004BA94
    lwz r3, 0x8(r1)
    lhz r28, 0x4(r3)
    lwz r29, 0x0(r3)
    cmplwi r28, 0x11
    lwz r27, 0x8(r3)
    lwz r26, 0xc(r3)
    lwz r25, 0x10(r3)
    opword  0x4080000C  // bge .L_8008A188
    lwz r0, 0x4(r27)
    stw r0, 0xa0(r31)
L_8008A188:
    bl fn_8004D0BC
    stw r3, 0x7c(r31)
    lwz r0, 0x7c(r31)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8008A1A4
    opword  0x806D8D40  // lwz r3, lbl_8053A900@sda21(r0)
    bl fn_8008C390
L_8008A1A4:
    opword  0x806D8D40  // lwz r3, lbl_8053A900@sda21(r0)
    lwz r4, 0x7c(r31)
    lwz r3, 0x80(r3)
    lhz r5, 0x4(r3)
    lhz r6, 0x6(r3)
    bl fn_80089C70
    cmplwi r29, 0x0
    opword  0x41820020  // beq .L_8008A1E0
    mr r12, r29
    mr r3, r28
    mr r4, r27
    mr r5, r26
    mr r6, r25
    mtctr r12
    bctrl
L_8008A1E0:
    bl OSDisableInterrupts
    bl fn_8004D0BC
    stw r3, 0x7c(r31)
    opword  0x806D8D40  // lwz r3, lbl_8053A900@sda21(r0)
    lwz r4, 0x7c(r31)
    lwz r3, 0x80(r3)
    lhz r5, 0x4(r3)
    lhz r6, 0x6(r3)
    bl fn_80089C70
    opword  0x806D8D40  // lwz r3, lbl_8053A900@sda21(r0)
    mr r4, r28
    mr r5, r27
    mr r6, r26
    mr r7, r25
    bl fn_8008BE24
    opword  0x4BFFFF24  // b .L_8008A140
}

ASM void fn_8008A220(void)
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
    bl PPCMfmsr
    opword  0x906D8D58  // stw r3, lbl_8053A918@sda21(r0)
    mr r3, r29
    lwz r0, 0x194(r29)
    opword  0x900D8D5C  // stw r0, lbl_8053A91C@sda21(r0)
    bl OSFillFPUContext
    mr r3, r28
    li r4, 0x0
    bl OSSetErrorHandler
    clrlwi r0, r28, 16
    cmplwi r0, 0xf
    opword  0x40820054  // bne .L_8008A2CC
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0x3
    bl OSProtectRange
    li r3, 0x1
    li r4, 0x0
    li r5, 0x0
    li r6, 0x3
    bl OSProtectRange
    li r3, 0x2
    li r4, 0x0
    li r5, 0x0
    li r6, 0x3
    bl OSProtectRange
    li r3, 0x3
    li r4, 0x0
    li r5, 0x0
    li r6, 0x3
    bl OSProtectRange
L_8008A2CC:
    lis r3, lbl_804BA1B0@ha
    opword  0x800D8D44  // lwz r0, lbl_8053A904@sda21(r0)
    addi r4, r3, lbl_804BA1B0@l
    li r5, 0x1
    lis r3, lbl_80499390@ha
    stw r0, 0x0(r4)
    addi r3, r3, lbl_80499390@l
    sth r28, 0x4(r4)
    stw r29, 0x8(r4)
    stw r30, 0xc(r4)
    stw r31, 0x10(r4)
    bl OSSendMessage
    bl OSEnableScheduler
    bl OSYieldThread
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008A324(void)
{
    nofralloc
    stwu r1, -0x190(r1)
    mflr r0
    stw r0, 0x194(r1)
    stw r31, 0x18c(r1)
    mr r31, r4
    stw r30, 0x188(r1)
    mr r30, r3
    stw r29, 0x184(r1)
    opword  0x40860024  // bne cr1, .L_8008A368
    stfd fp1, 0x28(r1)
    stfd fp2, 0x30(r1)
    stfd fp3, 0x38(r1)
    stfd fp4, 0x40(r1)
    stfd fp5, 0x48(r1)
    stfd fp6, 0x50(r1)
    stfd fp7, 0x58(r1)
    stfd fp8, 0x60(r1)
L_8008A368:
    addi r11, r1, 0x198
    addi r0, r1, 0x8
    lis r12, 0x300
    stw r3, 0x8(r1)
    addi r29, r1, 0x68
    addi r3, r1, 0x74
    stw r4, 0xc(r1)
    li r4, 0xff
    stw r6, 0x14(r1)
    mr r6, r29
    stw r5, 0x10(r1)
    stw r7, 0x18(r1)
    stw r8, 0x1c(r1)
    stw r9, 0x20(r1)
    stw r10, 0x24(r1)
    stw r12, 0x68(r1)
    stw r11, 0x6c(r1)
    stw r0, 0x70(r1)
    bl fn_8006B4E8
    opword  0x800D8D40  // lwz r0, lbl_8053A900@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820018  // bne .L_8008A3D4
    mr r3, r30
    mr r4, r31
    addi r5, r1, 0x74
    crclr 6
    bl OSPanic
L_8008A3D4:
    bl OSGetCurrentContext
    lis r5, lbl_804BA1D0@ha
    mr r4, r3
    addi r3, r5, lbl_804BA1D0@l
    li r5, 0x2c8
    bl memcpy
    bl OSGetStackPointer
    opword  0x80ED8D40  // lwz r7, lbl_8053A900@sda21(r0)
    lis r6, lbl_804BA1B0@ha
    lis r4, lbl_804BA1D0@ha
    li r5, 0xff
    stw r3, 0xa0(r7)
    addi r6, r6, lbl_804BA1B0@l
    li r0, 0x0
    addi r3, r4, lbl_804BA1D0@l
    opword  0x80ED8D54  // lwz r7, lbl_8053A914@sda21(r0)
    opword  0x808D8D44  // lwz r4, lbl_8053A904@sda21(r0)
    cmplwi r7, 0x0
    sth r5, 0x4(r6)
    stw r4, 0x0(r6)
    stw r3, 0x8(r6)
    stw r0, 0xc(r6)
    stw r0, 0x10(r6)
    opword  0x41820014  // beq .L_8008A444
    opword  0x4182002C  // beq .L_8008A460
    lwz r0, 0x58(r7)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x40820020  // bne .L_8008A460
L_8008A444:
    lis r3, lbl_8045E934@ha
    mr r5, r30
    addi r3, r3, lbl_8045E934@l
    mr r6, r31
    addi r4, r1, 0x74
    crclr 6
    bl OSReport
L_8008A460:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820020  // beq .L_8008A488
    lis r4, lbl_8045E934@ha
    mr r6, r30
    addi r4, r4, lbl_8045E934@l
    mr r7, r31
    addi r5, r1, 0x74
    crclr 6
    bl fn_80088684
L_8008A488:
    lis r3, lbl_80499390@ha
    lis r4, lbl_804BA1B0@ha
    addi r3, r3, lbl_80499390@l
    li r5, 0x1
    addi r4, r4, lbl_804BA1B0@l
    bl OSSendMessage
    bl OSGetCurrentThread
    bl OSSuspendThread
    lwz r0, 0x194(r1)
    lwz r31, 0x18c(r1)
    lwz r30, 0x188(r1)
    lwz r29, 0x184(r1)
    mtlr r0
    addi r1, r1, 0x190
    blr
}

ASM void fn_8008A4C4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r3, 0x0
    stw r0, 0x14(r1)
    opword  0x906D8050  // stw r3, __OSFpscrEnableBits@sda21(r0)
    opword  0x41820018  // beq .L_8008A4F0
    lis r4, fn_8008A220@ha
    li r3, 0x10
    addi r4, r4, fn_8008A220@l
    bl OSSetErrorHandler
    opword  0x48000010  // b .L_8008A4FC
L_8008A4F0:
    li r3, 0x10
    li r4, 0x0
    bl OSSetErrorHandler
L_8008A4FC:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008A50C(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    lis r5, lbl_8045E878@ha
    stw r0, 0x64(r1)
    stmw r27, 0x4c(r1)
    mr r27, r4
    addi r30, r5, lbl_8045E878@l
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820738  // beq .L_8008AC68
    addi r4, r30, 0x128
    bl fn_80088710
    mr r29, r27
    li r28, 0x0
    lis r31, 0x7f80
L_8008A548:
    lfd fp0, 0x90(r29)
    frsp fp1, fp0
    stfs fp1, 0x2c(r1)
    lwz r3, 0x2c(r1)
    stfs fp1, 0x40(r1)
    rlwinm r0, r3, 0, 1, 8
    cmpw r0, r31
    opword  0x41820014  // beq .L_8008A578
    opword  0x40800040  // bge .L_8008A5A8
    cmpwi r0, 0x0
    opword  0x41820020  // beq .L_8008A590
    opword  0x48000034  // b .L_8008A5A8
L_8008A578:
    clrlwi. r0, r3, 9
    opword  0x4182000C  // beq .L_8008A588
    li r0, 0x1
    opword  0x48000028  // b .L_8008A5AC
L_8008A588:
    li r0, 0x2
    opword  0x48000020  // b .L_8008A5AC
L_8008A590:
    clrlwi. r0, r3, 9
    opword  0x4182000C  // beq .L_8008A5A0
    li r0, 0x5
    opword  0x48000010  // b .L_8008A5AC
L_8008A5A0:
    li r0, 0x3
    opword  0x48000008  // b .L_8008A5AC
L_8008A5A8:
    li r0, 0x4
L_8008A5AC:
    cmpwi r0, 0x1
    opword  0x4082001C  // bne .L_8008A5CC
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    mr r5, r28
    addi r4, r30, 0xd4
    crclr 6
    bl fn_80088684
    opword  0x480000DC  // b .L_8008A6A4
L_8008A5CC:
    stfs fp1, 0x28(r1)
    lis r0, 0x7f80
    lwz r4, 0x28(r1)
    rlwinm r3, r4, 0, 1, 8
    cmpw r3, r0
    opword  0x41820014  // beq .L_8008A5F4
    opword  0x40800040  // bge .L_8008A624
    cmpwi r3, 0x0
    opword  0x41820020  // beq .L_8008A60C
    opword  0x48000034  // b .L_8008A624
L_8008A5F4:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008A604
    li r0, 0x1
    opword  0x48000028  // b .L_8008A628
L_8008A604:
    li r0, 0x2
    opword  0x48000020  // b .L_8008A628
L_8008A60C:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008A61C
    li r0, 0x5
    opword  0x48000010  // b .L_8008A628
L_8008A61C:
    li r0, 0x3
    opword  0x48000008  // b .L_8008A628
L_8008A624:
    li r0, 0x4
L_8008A628:
    cmpwi r0, 0x2
    opword  0x40820040  // bne .L_8008A66C
    lbz r0, 0x40(r1)
    rlwinm. r0, r0, 0, 24, 24
    opword  0x4182001C  // beq .L_8008A654
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    mr r5, r28
    addi r4, r30, 0xe8
    crclr 6
    bl fn_80088684
    opword  0x48000054  // b .L_8008A6A4
L_8008A654:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    mr r5, r28
    addi r4, r30, 0xf8
    crclr 6
    bl fn_80088684
    opword  0x4800003C  // b .L_8008A6A4
L_8008A66C:
    opword  0xC00288C0  // lfs f0, lbl_8053B860@sda21(r0)
    fcmpu cr0, fp0, fp1
    opword  0x4082001C  // bne .L_8008A690
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    mr r5, r28
    addi r4, r30, 0x108
    crclr 6
    bl fn_80088684
    opword  0x48000018  // b .L_8008A6A4
L_8008A690:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    mr r5, r28
    addi r4, r30, 0x11c
    crset 6
    bl fn_80088684
L_8008A6A4:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    opword  0x388288C4  // li r4, lbl_8053B864@sda21
    bl fn_80088710
    lfd fp0, 0xe8(r29)
    frsp fp1, fp0
    stfs fp1, 0x24(r1)
    lwz r3, 0x24(r1)
    stfs fp1, 0x3c(r1)
    rlwinm r0, r3, 0, 1, 8
    cmpw r0, r31
    opword  0x41820014  // beq .L_8008A6E0
    opword  0x40800040  // bge .L_8008A710
    cmpwi r0, 0x0
    opword  0x41820020  // beq .L_8008A6F8
    opword  0x48000034  // b .L_8008A710
L_8008A6E0:
    clrlwi. r0, r3, 9
    opword  0x4182000C  // beq .L_8008A6F0
    li r0, 0x1
    opword  0x48000028  // b .L_8008A714
L_8008A6F0:
    li r0, 0x2
    opword  0x48000020  // b .L_8008A714
L_8008A6F8:
    clrlwi. r0, r3, 9
    opword  0x4182000C  // beq .L_8008A708
    li r0, 0x5
    opword  0x48000010  // b .L_8008A714
L_8008A708:
    li r0, 0x3
    opword  0x48000008  // b .L_8008A714
L_8008A710:
    li r0, 0x4
L_8008A714:
    cmpwi r0, 0x1
    opword  0x4082001C  // bne .L_8008A734
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xd4
    addi r5, r28, 0xb
    crclr 6
    bl fn_80088684
    opword  0x480000DC  // b .L_8008A80C
L_8008A734:
    stfs fp1, 0x20(r1)
    lis r0, 0x7f80
    lwz r4, 0x20(r1)
    rlwinm r3, r4, 0, 1, 8
    cmpw r3, r0
    opword  0x41820014  // beq .L_8008A75C
    opword  0x40800040  // bge .L_8008A78C
    cmpwi r3, 0x0
    opword  0x41820020  // beq .L_8008A774
    opword  0x48000034  // b .L_8008A78C
L_8008A75C:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008A76C
    li r0, 0x1
    opword  0x48000028  // b .L_8008A790
L_8008A76C:
    li r0, 0x2
    opword  0x48000020  // b .L_8008A790
L_8008A774:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008A784
    li r0, 0x5
    opword  0x48000010  // b .L_8008A790
L_8008A784:
    li r0, 0x3
    opword  0x48000008  // b .L_8008A790
L_8008A78C:
    li r0, 0x4
L_8008A790:
    cmpwi r0, 0x2
    opword  0x40820040  // bne .L_8008A7D4
    lbz r0, 0x3c(r1)
    rlwinm. r0, r0, 0, 24, 24
    opword  0x4182001C  // beq .L_8008A7BC
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xe8
    addi r5, r28, 0xb
    crclr 6
    bl fn_80088684
    opword  0x48000054  // b .L_8008A80C
L_8008A7BC:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xf8
    addi r5, r28, 0xb
    crclr 6
    bl fn_80088684
    opword  0x4800003C  // b .L_8008A80C
L_8008A7D4:
    opword  0xC00288C0  // lfs f0, lbl_8053B860@sda21(r0)
    fcmpu cr0, fp0, fp1
    opword  0x4082001C  // bne .L_8008A7F8
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0x108
    addi r5, r28, 0xb
    crclr 6
    bl fn_80088684
    opword  0x48000018  // b .L_8008A80C
L_8008A7F8:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0x11c
    addi r5, r28, 0xb
    crset 6
    bl fn_80088684
L_8008A80C:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    opword  0x388288C4  // li r4, lbl_8053B864@sda21
    bl fn_80088710
    lfd fp0, 0x140(r29)
    frsp fp1, fp0
    stfs fp1, 0x1c(r1)
    lwz r3, 0x1c(r1)
    stfs fp1, 0x38(r1)
    rlwinm r0, r3, 0, 1, 8
    cmpw r0, r31
    opword  0x41820014  // beq .L_8008A848
    opword  0x40800040  // bge .L_8008A878
    cmpwi r0, 0x0
    opword  0x41820020  // beq .L_8008A860
    opword  0x48000034  // b .L_8008A878
L_8008A848:
    clrlwi. r0, r3, 9
    opword  0x4182000C  // beq .L_8008A858
    li r0, 0x1
    opword  0x48000028  // b .L_8008A87C
L_8008A858:
    li r0, 0x2
    opword  0x48000020  // b .L_8008A87C
L_8008A860:
    clrlwi. r0, r3, 9
    opword  0x4182000C  // beq .L_8008A870
    li r0, 0x5
    opword  0x48000010  // b .L_8008A87C
L_8008A870:
    li r0, 0x3
    opword  0x48000008  // b .L_8008A87C
L_8008A878:
    li r0, 0x4
L_8008A87C:
    cmpwi r0, 0x1
    opword  0x4082001C  // bne .L_8008A89C
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xd4
    addi r5, r28, 0x16
    crclr 6
    bl fn_80088684
    opword  0x480000DC  // b .L_8008A974
L_8008A89C:
    stfs fp1, 0x18(r1)
    lis r0, 0x7f80
    lwz r4, 0x18(r1)
    rlwinm r3, r4, 0, 1, 8
    cmpw r3, r0
    opword  0x41820014  // beq .L_8008A8C4
    opword  0x40800040  // bge .L_8008A8F4
    cmpwi r3, 0x0
    opword  0x41820020  // beq .L_8008A8DC
    opword  0x48000034  // b .L_8008A8F4
L_8008A8C4:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008A8D4
    li r0, 0x1
    opword  0x48000028  // b .L_8008A8F8
L_8008A8D4:
    li r0, 0x2
    opword  0x48000020  // b .L_8008A8F8
L_8008A8DC:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008A8EC
    li r0, 0x5
    opword  0x48000010  // b .L_8008A8F8
L_8008A8EC:
    li r0, 0x3
    opword  0x48000008  // b .L_8008A8F8
L_8008A8F4:
    li r0, 0x4
L_8008A8F8:
    cmpwi r0, 0x2
    opword  0x40820040  // bne .L_8008A93C
    lbz r0, 0x38(r1)
    rlwinm. r0, r0, 0, 24, 24
    opword  0x4182001C  // beq .L_8008A924
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xe8
    addi r5, r28, 0x16
    crclr 6
    bl fn_80088684
    opword  0x48000054  // b .L_8008A974
L_8008A924:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xf8
    addi r5, r28, 0x16
    crclr 6
    bl fn_80088684
    opword  0x4800003C  // b .L_8008A974
L_8008A93C:
    opword  0xC00288C0  // lfs f0, lbl_8053B860@sda21(r0)
    fcmpu cr0, fp0, fp1
    opword  0x4082001C  // bne .L_8008A960
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0x108
    addi r5, r28, 0x16
    crclr 6
    bl fn_80088684
    opword  0x48000018  // b .L_8008A974
L_8008A960:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0x11c
    addi r5, r28, 0x16
    crset 6
    bl fn_80088684
L_8008A974:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    opword  0x388288C8  // li r4, lbl_8053B868@sda21
    bl fn_80088710
    addi r28, r28, 0x1
    addi r29, r29, 0x8
    cmpwi r28, 0xa
    opword  0x4180FBBC  // blt .L_8008A548
    lfd fp0, 0xe0(r27)
    lis r0, 0x7f80
    frsp fp1, fp0
    stfs fp1, 0x14(r1)
    lwz r4, 0x14(r1)
    stfs fp1, 0x34(r1)
    rlwinm r3, r4, 0, 1, 8
    cmpw r3, r0
    opword  0x41820014  // beq .L_8008A9C4
    opword  0x40800040  // bge .L_8008A9F4
    cmpwi r3, 0x0
    opword  0x41820020  // beq .L_8008A9DC
    opword  0x48000034  // b .L_8008A9F4
L_8008A9C4:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008A9D4
    li r0, 0x1
    opword  0x48000028  // b .L_8008A9F8
L_8008A9D4:
    li r0, 0x2
    opword  0x48000020  // b .L_8008A9F8
L_8008A9DC:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008A9EC
    li r0, 0x5
    opword  0x48000010  // b .L_8008A9F8
L_8008A9EC:
    li r0, 0x3
    opword  0x48000008  // b .L_8008A9F8
L_8008A9F4:
    li r0, 0x4
L_8008A9F8:
    cmpwi r0, 0x1
    opword  0x4082001C  // bne .L_8008AA18
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xd4
    li r5, 0xa
    crclr 6
    bl fn_80088684
    opword  0x480000DC  // b .L_8008AAF0
L_8008AA18:
    stfs fp1, 0x10(r1)
    lis r0, 0x7f80
    lwz r4, 0x10(r1)
    rlwinm r3, r4, 0, 1, 8
    cmpw r3, r0
    opword  0x41820014  // beq .L_8008AA40
    opword  0x40800040  // bge .L_8008AA70
    cmpwi r3, 0x0
    opword  0x41820020  // beq .L_8008AA58
    opword  0x48000034  // b .L_8008AA70
L_8008AA40:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008AA50
    li r0, 0x1
    opword  0x48000028  // b .L_8008AA74
L_8008AA50:
    li r0, 0x2
    opword  0x48000020  // b .L_8008AA74
L_8008AA58:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008AA68
    li r0, 0x5
    opword  0x48000010  // b .L_8008AA74
L_8008AA68:
    li r0, 0x3
    opword  0x48000008  // b .L_8008AA74
L_8008AA70:
    li r0, 0x4
L_8008AA74:
    cmpwi r0, 0x2
    opword  0x40820040  // bne .L_8008AAB8
    lbz r0, 0x34(r1)
    rlwinm. r0, r0, 0, 24, 24
    opword  0x4182001C  // beq .L_8008AAA0
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xe8
    li r5, 0xa
    crclr 6
    bl fn_80088684
    opword  0x48000054  // b .L_8008AAF0
L_8008AAA0:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xf8
    li r5, 0xa
    crclr 6
    bl fn_80088684
    opword  0x4800003C  // b .L_8008AAF0
L_8008AAB8:
    opword  0xC00288C0  // lfs f0, lbl_8053B860@sda21(r0)
    fcmpu cr0, fp0, fp1
    opword  0x4082001C  // bne .L_8008AADC
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0x108
    li r5, 0xa
    crclr 6
    bl fn_80088684
    opword  0x48000018  // b .L_8008AAF0
L_8008AADC:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0x11c
    li r5, 0xa
    crset 6
    bl fn_80088684
L_8008AAF0:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    opword  0x388288C4  // li r4, lbl_8053B864@sda21
    bl fn_80088710
    lfd fp0, 0x138(r27)
    lis r0, 0x7f80
    frsp fp1, fp0
    stfs fp1, 0xc(r1)
    lwz r4, 0xc(r1)
    stfs fp1, 0x30(r1)
    rlwinm r3, r4, 0, 1, 8
    cmpw r3, r0
    opword  0x41820014  // beq .L_8008AB30
    opword  0x40800040  // bge .L_8008AB60
    cmpwi r3, 0x0
    opword  0x41820020  // beq .L_8008AB48
    opword  0x48000034  // b .L_8008AB60
L_8008AB30:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008AB40
    li r0, 0x1
    opword  0x48000028  // b .L_8008AB64
L_8008AB40:
    li r0, 0x2
    opword  0x48000020  // b .L_8008AB64
L_8008AB48:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008AB58
    li r0, 0x5
    opword  0x48000010  // b .L_8008AB64
L_8008AB58:
    li r0, 0x3
    opword  0x48000008  // b .L_8008AB64
L_8008AB60:
    li r0, 0x4
L_8008AB64:
    cmpwi r0, 0x1
    opword  0x4082001C  // bne .L_8008AB84
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xd4
    li r5, 0x15
    crclr 6
    bl fn_80088684
    opword  0x480000DC  // b .L_8008AC5C
L_8008AB84:
    stfs fp1, 0x8(r1)
    lis r0, 0x7f80
    lwz r4, 0x8(r1)
    rlwinm r3, r4, 0, 1, 8
    cmpw r3, r0
    opword  0x41820014  // beq .L_8008ABAC
    opword  0x40800040  // bge .L_8008ABDC
    cmpwi r3, 0x0
    opword  0x41820020  // beq .L_8008ABC4
    opword  0x48000034  // b .L_8008ABDC
L_8008ABAC:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008ABBC
    li r0, 0x1
    opword  0x48000028  // b .L_8008ABE0
L_8008ABBC:
    li r0, 0x2
    opword  0x48000020  // b .L_8008ABE0
L_8008ABC4:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008ABD4
    li r0, 0x5
    opword  0x48000010  // b .L_8008ABE0
L_8008ABD4:
    li r0, 0x3
    opword  0x48000008  // b .L_8008ABE0
L_8008ABDC:
    li r0, 0x4
L_8008ABE0:
    cmpwi r0, 0x2
    opword  0x40820040  // bne .L_8008AC24
    lbz r0, 0x30(r1)
    rlwinm. r0, r0, 0, 24, 24
    opword  0x4182001C  // beq .L_8008AC0C
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xe8
    li r5, 0x15
    crclr 6
    bl fn_80088684
    opword  0x48000054  // b .L_8008AC5C
L_8008AC0C:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0xf8
    li r5, 0x15
    crclr 6
    bl fn_80088684
    opword  0x4800003C  // b .L_8008AC5C
L_8008AC24:
    opword  0xC00288C0  // lfs f0, lbl_8053B860@sda21(r0)
    fcmpu cr0, fp0, fp1
    opword  0x4082001C  // bne .L_8008AC48
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0x108
    li r5, 0x15
    crclr 6
    bl fn_80088684
    opword  0x48000018  // b .L_8008AC5C
L_8008AC48:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0x11c
    li r5, 0x15
    crset 6
    bl fn_80088684
L_8008AC5C:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    opword  0x388288C8  // li r4, lbl_8053B868@sda21
    bl fn_80088710
L_8008AC68:
    lmw r27, 0x4c(r1)
    lwz r0, 0x64(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_8008AC7C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r4, lbl_8045E878@ha
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    addi r31, r4, lbl_8045E878@l
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    mr r28, r3
    opword  0x800D8D54  // lwz r0, lbl_8053A914@sda21(r0)
    cmplwi r0, 0x0
    opword  0x418200AC  // beq .L_8008AD58
    mr r3, r0
    addi r4, r31, 0x150
    bl fn_80088710
    lwz r29, 0xa0(r28)
    addi r4, r31, 0x178
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    crclr 6
    bl fn_80088684
    li r30, 0x0
    opword  0x48000064  // b .L_8008AD38
L_8008ACD8:
    lwz r0, 0x94(r28)
    cmplw r30, r0
    opword  0x40810014  // ble .L_8008ACF4
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x198
    bl fn_80088710
    opword  0x48000068  // b .L_8008AD58
L_8008ACF4:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    mr r5, r29
    lwz r6, 0x0(r29)
    addi r4, r31, 0x1ac
    lwz r7, 0x4(r29)
    crclr 6
    bl fn_80088684
    lwz r4, 0x4(r29)
    mr r3, r28
    li r5, 0x0
    bl fn_8008AFBC
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
    lwz r3, 0x90(r28)
    bl fn_8008C308
    lwz r29, 0x0(r29)
L_8008AD38:
    cmplwi r29, 0x0
    opword  0x4182001C  // beq .L_8008AD58
    addis r0, r29, 0x1
    cmplwi r0, 0xffff
    opword  0x41820010  // beq .L_8008AD58
    cmplwi r30, 0x10
    addi r30, r30, 0x1
    opword  0x4180FF84  // blt .L_8008ACD8
L_8008AD58:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008AD78(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r8, lbl_8045E878@ha
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r30, r4
    mr r27, r5
    mr r28, r6
    mr r29, r7
    addi r31, r8, lbl_8045E878@l
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820200  // beq .L_8008AFA8
    clrlwi r0, r30, 16
    cmplwi r0, 0x11
    opword  0x40800024  // bge .L_8008ADD8
    lis r4, lbl_804993D0@ha
    clrlslwi r0, r30, 16, 2
    addi r4, r4, lbl_804993D0@l
    lwzx r6, r4, r0
    addi r4, r31, 0x1c4
    crclr 6
    bl fn_80088684
    opword  0x48000010  // b .L_8008ADE4
L_8008ADD8:
    addi r4, r31, 0x1e4
    crclr 6
    bl fn_80088684
L_8008ADE4:
    clrlwi r0, r30, 16
    cmplwi r0, 0x10
    opword  0x4082018C  // bne .L_8008AF78
    opword  0x806D8D5C  // lwz r3, lbl_8053A91C@sda21(r0)
    rlwinm r0, r3, 22, 2, 6
    oris r0, r0, 0x1f8
    ori r0, r0, 0x700
    and r30, r3, r0
    rlwinm. r0, r30, 0, 2, 2
    opword  0x41820110  // beq .L_8008AF18
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x1f4
    crclr 6
    bl fn_80088684
    opword  0x800D8D5C  // lwz r0, lbl_8053A91C@sda21(r0)
    rlwinm. r0, r0, 0, 7, 7
    opword  0x41820014  // beq .L_8008AE38
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    opword  0x388288CC  // li r4, lbl_8053B86C@sda21
    crclr 6
    bl fn_80088684
L_8008AE38:
    opword  0x800D8D5C  // lwz r0, lbl_8053A91C@sda21(r0)
    rlwinm. r0, r0, 0, 8, 8
    opword  0x41820014  // beq .L_8008AE54
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x210
    crclr 6
    bl fn_80088684
L_8008AE54:
    opword  0x800D8D5C  // lwz r0, lbl_8053A91C@sda21(r0)
    rlwinm. r0, r0, 0, 9, 9
    opword  0x41820014  // beq .L_8008AE70
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x228
    crclr 6
    bl fn_80088684
L_8008AE70:
    opword  0x800D8D5C  // lwz r0, lbl_8053A91C@sda21(r0)
    rlwinm. r0, r0, 0, 10, 10
    opword  0x41820014  // beq .L_8008AE8C
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    opword  0x388288D4  // li r4, lbl_8053B874@sda21
    crclr 6
    bl fn_80088684
L_8008AE8C:
    opword  0x800D8D5C  // lwz r0, lbl_8053A91C@sda21(r0)
    rlwinm. r0, r0, 0, 11, 11
    opword  0x41820014  // beq .L_8008AEA8
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x240
    crclr 6
    bl fn_80088684
L_8008AEA8:
    opword  0x800D8D5C  // lwz r0, lbl_8053A91C@sda21(r0)
    rlwinm. r0, r0, 0, 12, 12
    opword  0x41820014  // beq .L_8008AEC4
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x250
    crclr 6
    bl fn_80088684
L_8008AEC4:
    opword  0x800D8D5C  // lwz r0, lbl_8053A91C@sda21(r0)
    rlwinm. r0, r0, 0, 21, 21
    opword  0x41820014  // beq .L_8008AEE0
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x264
    crclr 6
    bl fn_80088684
L_8008AEE0:
    opword  0x800D8D5C  // lwz r0, lbl_8053A91C@sda21(r0)
    rlwinm. r0, r0, 0, 22, 22
    opword  0x41820014  // beq .L_8008AEFC
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x278
    crclr 6
    bl fn_80088684
L_8008AEFC:
    opword  0x800D8D5C  // lwz r0, lbl_8053A91C@sda21(r0)
    rlwinm. r0, r0, 0, 23, 23
    opword  0x41820014  // beq .L_8008AF18
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x290
    crclr 6
    bl fn_80088684
L_8008AF18:
    rlwinm. r0, r30, 0, 3, 3
    opword  0x41820014  // beq .L_8008AF30
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x2ac
    crclr 6
    bl fn_80088684
L_8008AF30:
    rlwinm. r0, r30, 0, 4, 4
    opword  0x41820014  // beq .L_8008AF48
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x2bc
    crclr 6
    bl fn_80088684
L_8008AF48:
    rlwinm. r0, r30, 0, 5, 5
    opword  0x41820014  // beq .L_8008AF60
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x2d0
    crclr 6
    bl fn_80088684
L_8008AF60:
    rlwinm. r0, r30, 0, 6, 6
    opword  0x41820014  // beq .L_8008AF78
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x2e8
    crclr 6
    bl fn_80088684
L_8008AF78:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x300
    lwz r5, 0x198(r27)
    lwz r6, 0x19c(r27)
    crclr 6
    bl fn_80088684
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    mr r5, r28
    mr r6, r29
    addi r4, r31, 0x31c
    crclr 6
    bl fn_80088684
L_8008AFA8:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008AFBC(void)
{
    nofralloc
    stwu r1, -0x160(r1)
    mflr r0
    stw r0, 0x164(r1)
    lis r0, 0x8000
    stw r31, 0x15c(r1)
    mr r31, r4
    cmplw r31, r0
    stw r30, 0x158(r1)
    opword  0x41800014  // blt .L_8008AFF0
    lis r3, 0x8300
    subi r0, r3, 0x1
    cmplw r31, r0
    opword  0x4081000C  // ble .L_8008AFF8
L_8008AFF0:
    li r3, 0x0
    opword  0x48000208  // b .L_8008B1FC
L_8008AFF8:
    clrlwi. r3, r5, 24
    opword  0x380288C8  // li r0, lbl_8053B868@sda21
    opword  0x40820008  // bne .L_8008B008
    opword  0x380288DC  // li r0, lbl_8053B87C@sda21
L_8008B008:
    cmplwi r31, 0x0
    opword  0x4082000C  // bne .L_8008B018
    li r30, 0x0
    opword  0x480000B0  // b .L_8008B0C4
L_8008B018:
    lis r3, 0x8000
    lwz r8, 0x30c8(r3)
    opword  0x48000098  // b .L_8008B0B8
L_8008B024:
    lwz r3, 0xc(r8)
    li r6, 0x0
    lwz r7, 0x10(r8)
    mtctr r3
    cmplwi r3, 0x0
    opword  0x4081007C  // ble .L_8008B0B4
L_8008B03C:
    lwz r9, 0x4(r7)
    cmplwi r9, 0x0
    opword  0x41820064  // beq .L_8008B0A8
    lwz r3, 0x0(r7)
    clrrwi r4, r3, 1
    cmplw r4, r31
    opword  0x41810054  // bgt .L_8008B0A8
    add r3, r4, r9
    cmplw r31, r3
    opword  0x40800048  // bge .L_8008B0A8
    addic. r3, r1, 0x20
    opword  0x4182000C  // beq .L_8008B074
    lwz r3, 0x0(r8)
    stw r3, 0x20(r1)
L_8008B074:
    addic. r3, r1, 0x1c
    opword  0x41820008  // beq .L_8008B080
    stw r6, 0x1c(r1)
L_8008B080:
    addic. r3, r1, 0x18
    opword  0x4182000C  // beq .L_8008B090
    subf r3, r4, r31
    stw r3, 0x18(r1)
L_8008B090:
    addic. r3, r1, 0x24
    opword  0x4182000C  // beq .L_8008B0A0
    lwz r3, 0x14(r8)
    stw r3, 0x24(r1)
L_8008B0A0:
    li r30, 0x1
    opword  0x48000020  // b .L_8008B0C4
L_8008B0A8:
    addi r7, r7, 0x8
    addi r6, r6, 0x1
    opword  0x4200FF8C  // bdnz .L_8008B03C
L_8008B0B4:
    lwz r8, 0x4(r8)
L_8008B0B8:
    cmplwi r8, 0x0
    opword  0x4082FF68  // bne .L_8008B024
    li r30, 0x0
L_8008B0C4:
    clrlwi r3, r30, 24
    cmplwi r3, 0x1
    opword  0x408200A8  // bne .L_8008B174
    lwz r5, 0x24(r1)
    addi r6, r1, 0x28
    mr r3, r5
    opword  0x48000014  // b .L_8008B0F0
L_8008B0E0:
    cmpwi r4, 0x5c
    opword  0x40820008  // bne .L_8008B0EC
    mr r5, r3
L_8008B0EC:
    addi r3, r3, 0x1
L_8008B0F0:
    lbz r4, 0x0(r3)
    cmplwi r4, 0x0
    opword  0x4082FFE8  // bne .L_8008B0E0
    lbz r3, 0x0(r5)
    cmpwi r3, 0x5c
    opword  0x40820008  // bne .L_8008B10C
    addi r5, r5, 0x1
L_8008B10C:
    li r4, 0x0
    opword  0x48000020  // b .L_8008B130
L_8008B114:
    cmpwi r3, 0x2e
    opword  0x4182002C  // beq .L_8008B144
    lbz r3, 0x0(r5)
    addi r4, r4, 0x1
    addi r5, r5, 0x1
    stb r3, 0x0(r6)
    addi r6, r6, 0x1
L_8008B130:
    lbz r3, 0x0(r5)
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_8008B144
    cmpwi r4, 0x20
    opword  0x4180FFD4  // blt .L_8008B114
L_8008B144:
    li r5, 0x0
    lis r3, lbl_8045EC1C@ha
    stb r5, 0x0(r6)
    addi r4, r3, lbl_8045EC1C@l
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    mr r5, r0
    lwz r7, 0x18(r1)
    addi r6, r1, 0x28
    lwz r8, 0x1c(r1)
    crclr 6
    bl fn_80088684
    li r5, 0x0
L_8008B174:
    lis r3, lbl_8052E894@ha
    lwz r0, lbl_8052E894@l(r3)
    cmplwi r0, 0x0
    opword  0x41820078  // beq .L_8008B1F8
    clrlwi r0, r30, 24
    cmplwi r0, 0x1
    opword  0x40820030  // bne .L_8008B1BC
    stw r5, 0x8(r1)
    addi r3, r1, 0x28
    lwz r4, 0x18(r1)
    addi r6, r1, 0x14
    lwz r5, 0x1c(r1)
    addi r7, r1, 0x10
    addi r8, r1, 0x4c
    li r9, 0x100
    li r10, 0x1
    bl fn_8008C528
    opword  0x4800002C  // b .L_8008B1E4
L_8008B1BC:
    stw r5, 0x8(r1)
    mr r4, r31
    addi r6, r1, 0x14
    addi r7, r1, 0x10
    addi r8, r1, 0x4c
    li r3, 0x0
    li r5, -0x1
    li r9, 0x100
    li r10, 0x1
    bl fn_8008C528
L_8008B1E4:
    clrlwi r0, r3, 24
    cmplwi r0, 0x1
    opword  0x4082000C  // bne .L_8008B1F8
    li r3, 0x1
    opword  0x48000008  // b .L_8008B1FC
L_8008B1F8:
    li r3, 0x0
L_8008B1FC:
    lwz r0, 0x164(r1)
    lwz r31, 0x15c(r1)
    lwz r30, 0x158(r1)
    mtlr r0
    addi r1, r1, 0x160
    blr
}

ASM void fn_8008B214(void)
{
    nofralloc
    stwu r1, -0x170(r1)
    mflr r0
    lis r5, lbl_8045E878@ha
    stw r0, 0x174(r1)
    stmw r24, 0x150(r1)
    mr r24, r3
    mr r25, r4
    addi r30, r5, lbl_8045E878@l
    opword  0x800D8D54  // lwz r0, lbl_8053A914@sda21(r0)
    cmplwi r0, 0x0
    opword  0x418202B8  // beq .L_8008B4F4
    mr r3, r0
    addi r4, r30, 0x3bc
    li r27, 0x0
    bl fn_80088710
    mr r28, r25
    li r26, 0x0
    lis r31, 0x8000
L_8008B25C:
    lwz r25, 0x0(r28)
    cmplw r25, r31
    opword  0x4180026C  // blt .L_8008B4D0
    lis r3, 0x8300
    subi r0, r3, 0x1
    cmplw r25, r0
    opword  0x4181025C  // bgt .L_8008B4D0
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    mr r5, r26
    mr r6, r25
    addi r4, r30, 0x3e8
    li r27, 0x1
    crclr 6
    bl fn_80088684
    lis r4, 0x8000
    li r6, 0x1
    cmplw r25, r4
    opword  0x41800014  // blt .L_8008B2B4
    lis r3, 0x8300
    subi r0, r3, 0x1
    cmplw r25, r0
    opword  0x4081000C  // ble .L_8008B2BC
L_8008B2B4:
    li r0, 0x0
    opword  0x480001F0  // b .L_8008B4A8
L_8008B2BC:
    cmplwi r25, 0x0
    opword  0x38A288C8  // li r5, lbl_8053B868@sda21
    opword  0x4082000C  // bne .L_8008B2D0
    li r29, 0x0
    opword  0x480000AC  // b .L_8008B378
L_8008B2D0:
    lwz r8, 0x30c8(r4)
    opword  0x48000098  // b .L_8008B36C
L_8008B2D8:
    lwz r0, 0xc(r8)
    li r4, 0x0
    lwz r7, 0x10(r8)
    mtctr r0
    cmplwi r0, 0x0
    opword  0x4081007C  // ble .L_8008B368
L_8008B2F0:
    lwz r9, 0x4(r7)
    cmplwi r9, 0x0
    opword  0x41820064  // beq .L_8008B35C
    lwz r0, 0x0(r7)
    clrrwi r3, r0, 1
    cmplw r3, r25
    opword  0x41810054  // bgt .L_8008B35C
    add r0, r3, r9
    cmplw r25, r0
    opword  0x40800048  // bge .L_8008B35C
    addic. r0, r1, 0x14
    opword  0x4182000C  // beq .L_8008B328
    lwz r0, 0x0(r8)
    stw r0, 0x14(r1)
L_8008B328:
    addic. r0, r1, 0x18
    opword  0x41820008  // beq .L_8008B334
    stw r4, 0x18(r1)
L_8008B334:
    addic. r0, r1, 0x1c
    opword  0x4182000C  // beq .L_8008B344
    subf r0, r3, r25
    stw r0, 0x1c(r1)
L_8008B344:
    addic. r0, r1, 0x10
    opword  0x4182000C  // beq .L_8008B354
    lwz r0, 0x14(r8)
    stw r0, 0x10(r1)
L_8008B354:
    li r29, 0x1
    opword  0x48000020  // b .L_8008B378
L_8008B35C:
    addi r7, r7, 0x8
    addi r4, r4, 0x1
    opword  0x4200FF8C  // bdnz .L_8008B2F0
L_8008B368:
    lwz r8, 0x4(r8)
L_8008B36C:
    cmplwi r8, 0x0
    opword  0x4082FF68  // bne .L_8008B2D8
    li r29, 0x0
L_8008B378:
    clrlwi r0, r29, 24
    cmplwi r0, 0x1
    opword  0x408200A0  // bne .L_8008B420
    lwz r4, 0x10(r1)
    addi r6, r1, 0x28
    mr r3, r4
    opword  0x48000014  // b .L_8008B3A4
L_8008B394:
    cmpwi r0, 0x5c
    opword  0x40820008  // bne .L_8008B3A0
    mr r4, r3
L_8008B3A0:
    addi r3, r3, 0x1
L_8008B3A4:
    lbz r0, 0x0(r3)
    cmplwi r0, 0x0
    opword  0x4082FFE8  // bne .L_8008B394
    lbz r0, 0x0(r4)
    cmpwi r0, 0x5c
    opword  0x40820008  // bne .L_8008B3C0
    addi r4, r4, 0x1
L_8008B3C0:
    li r3, 0x0
    opword  0x48000020  // b .L_8008B3E4
L_8008B3C8:
    cmpwi r0, 0x2e
    opword  0x4182002C  // beq .L_8008B3F8
    lbz r0, 0x0(r4)
    addi r3, r3, 0x1
    addi r4, r4, 0x1
    stb r0, 0x0(r6)
    addi r6, r6, 0x1
L_8008B3E4:
    lbz r0, 0x0(r4)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8008B3F8
    cmpwi r3, 0x20
    opword  0x4180FFD4  // blt .L_8008B3C8
L_8008B3F8:
    li r0, 0x0
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    stb r0, 0x0(r6)
    addi r4, r30, 0x3a4
    lwz r7, 0x1c(r1)
    addi r6, r1, 0x28
    lwz r8, 0x18(r1)
    crclr 6
    bl fn_80088684
    li r6, 0x0
L_8008B420:
    lis r3, lbl_8052E894@ha
    lwz r0, lbl_8052E894@l(r3)
    cmplwi r0, 0x0
    opword  0x41820078  // beq .L_8008B4A4
    clrlwi r0, r29, 24
    cmplwi r0, 0x1
    opword  0x40820030  // bne .L_8008B468
    stw r6, 0x8(r1)
    addi r3, r1, 0x28
    lwz r4, 0x1c(r1)
    addi r6, r1, 0x20
    lwz r5, 0x18(r1)
    addi r7, r1, 0x24
    addi r8, r1, 0x4c
    li r9, 0x100
    li r10, 0x1
    bl fn_8008C528
    opword  0x4800002C  // b .L_8008B490
L_8008B468:
    stw r6, 0x8(r1)
    mr r4, r25
    addi r6, r1, 0x20
    addi r7, r1, 0x24
    addi r8, r1, 0x4c
    li r3, 0x0
    li r5, -0x1
    li r9, 0x100
    li r10, 0x1
    bl fn_8008C528
L_8008B490:
    clrlwi r0, r3, 24
    cmplwi r0, 0x1
    opword  0x4082000C  // bne .L_8008B4A4
    li r0, 0x1
    opword  0x48000008  // b .L_8008B4A8
L_8008B4A4:
    li r0, 0x0
L_8008B4A8:
    clrlwi. r0, r0, 24
    opword  0x40820010  // bne .L_8008B4BC
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0x3f8
    bl fn_80088710
L_8008B4BC:
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
    lwz r3, 0x90(r24)
    bl fn_8008C308
L_8008B4D0:
    addi r26, r26, 0x1
    addi r28, r28, 0x4
    cmpwi r26, 0x1f
    opword  0x4180FD80  // blt .L_8008B25C
    clrlwi. r0, r27, 24
    opword  0x40820010  // bne .L_8008B4F4
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r30, 0x40c
    bl fn_80088710
L_8008B4F4:
    lmw r24, 0x150(r1)
    lwz r0, 0x174(r1)
    mtlr r0
    addi r1, r1, 0x170
    blr
}

ASM void fn_8008B508(void)
{
    nofralloc
    stwu r1, -0x160(r1)
    mflr r0
    cmpwi r4, 0x3
    lis r5, lbl_8045E878@ha
    stw r0, 0x164(r1)
    stw r31, 0x15c(r1)
    addi r31, r5, lbl_8045E878@l
    stw r30, 0x158(r1)
    stw r29, 0x154(r1)
    stw r28, 0x150(r1)
    mr r28, r6
    opword  0x418200CC  // beq .L_8008B600
    opword  0x40800014  // bge .L_8008B54C
    cmpwi r4, 0x1
    opword  0x4182001C  // beq .L_8008B55C
    opword  0x40800090  // bge .L_8008B5D4
    opword  0x4800034C  // b .L_8008B894
L_8008B54C:
    cmpwi r4, 0x5
    opword  0x418200C8  // beq .L_8008B618
    opword  0x40800340  // bge .L_8008B894
    opword  0x480000B4  // b .L_8008B60C
L_8008B55C:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820330  // beq .L_8008B894
    addi r4, r31, 0x338
    bl fn_80088710
    li r30, 0x0
    mr r29, r28
L_8008B578:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    mr r5, r30
    lwz r6, 0x0(r29)
    addi r4, r31, 0x360
    lwz r8, 0x2c(r29)
    addi r7, r30, 0xb
    lwz r10, 0x58(r29)
    addi r9, r30, 0x16
    crclr 6
    bl fn_80088684
    addi r30, r30, 0x1
    addi r29, r29, 0x4
    cmpwi r30, 0xa
    opword  0x4180FFCC  // blt .L_8008B578
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x388
    lwz r6, 0x28(r28)
    li r5, 0xa
    lwz r8, 0x54(r28)
    li r7, 0x15
    crclr 6
    bl fn_80088684
    opword  0x480002C4  // b .L_8008B894
L_8008B5D4:
    mr r4, r28
    bl fn_8008A50C
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    cmplwi r3, 0x0
    opword  0x418202B0  // beq .L_8008B894
    opword  0x80AD8D58  // lwz r5, lbl_8053A918@sda21(r0)
    addi r4, r31, 0x46c
    opword  0x80CD8D5C  // lwz r6, lbl_8053A91C@sda21(r0)
    crclr 6
    bl fn_80088684
    opword  0x48000298  // b .L_8008B894
L_8008B600:
    mr r4, r28
    bl fn_8008AC7C
    opword  0x4800028C  // b .L_8008B894
L_8008B60C:
    mr r4, r28
    bl fn_8008B214
    opword  0x48000280  // b .L_8008B894
L_8008B618:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820274  // beq .L_8008B894
    addi r4, r31, 0x434
    bl fn_80088710
    lwz r30, 0x198(r28)
    lis r0, 0x8000
    cmplw r30, r0
    opword  0x4180025C  // blt .L_8008B894
    lis r3, 0x8300
    subi r0, r3, 0x1
    cmplw r30, r0
    opword  0x4181024C  // bgt .L_8008B894
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    mr r5, r30
    addi r4, r31, 0x460
    crclr 6
    bl fn_80088684
    lis r4, 0x8000
    li r6, 0x1
    cmplw r30, r4
    opword  0x41800014  // blt .L_8008B680
    lis r3, 0x8300
    subi r0, r3, 0x1
    cmplw r30, r0
    opword  0x4081000C  // ble .L_8008B688
L_8008B680:
    li r0, 0x0
    opword  0x480001F0  // b .L_8008B874
L_8008B688:
    cmplwi r30, 0x0
    opword  0x38A288C8  // li r5, lbl_8053B868@sda21
    opword  0x4082000C  // bne .L_8008B69C
    li r29, 0x0
    opword  0x480000AC  // b .L_8008B744
L_8008B69C:
    lwz r8, 0x30c8(r4)
    opword  0x48000098  // b .L_8008B738
L_8008B6A4:
    lwz r0, 0xc(r8)
    li r4, 0x0
    lwz r7, 0x10(r8)
    mtctr r0
    cmplwi r0, 0x0
    opword  0x4081007C  // ble .L_8008B734
L_8008B6BC:
    lwz r9, 0x4(r7)
    cmplwi r9, 0x0
    opword  0x41820064  // beq .L_8008B728
    lwz r0, 0x0(r7)
    clrrwi r3, r0, 1
    cmplw r3, r30
    opword  0x41810054  // bgt .L_8008B728
    add r0, r3, r9
    cmplw r30, r0
    opword  0x40800048  // bge .L_8008B728
    addic. r0, r1, 0x14
    opword  0x4182000C  // beq .L_8008B6F4
    lwz r0, 0x0(r8)
    stw r0, 0x14(r1)
L_8008B6F4:
    addic. r0, r1, 0x18
    opword  0x41820008  // beq .L_8008B700
    stw r4, 0x18(r1)
L_8008B700:
    addic. r0, r1, 0x1c
    opword  0x4182000C  // beq .L_8008B710
    subf r0, r3, r30
    stw r0, 0x1c(r1)
L_8008B710:
    addic. r0, r1, 0x10
    opword  0x4182000C  // beq .L_8008B720
    lwz r0, 0x14(r8)
    stw r0, 0x10(r1)
L_8008B720:
    li r29, 0x1
    opword  0x48000020  // b .L_8008B744
L_8008B728:
    addi r7, r7, 0x8
    addi r4, r4, 0x1
    opword  0x4200FF8C  // bdnz .L_8008B6BC
L_8008B734:
    lwz r8, 0x4(r8)
L_8008B738:
    cmplwi r8, 0x0
    opword  0x4082FF68  // bne .L_8008B6A4
    li r29, 0x0
L_8008B744:
    clrlwi r0, r29, 24
    cmplwi r0, 0x1
    opword  0x408200A0  // bne .L_8008B7EC
    lwz r4, 0x10(r1)
    addi r6, r1, 0x28
    mr r3, r4
    opword  0x48000014  // b .L_8008B770
L_8008B760:
    cmpwi r0, 0x5c
    opword  0x40820008  // bne .L_8008B76C
    mr r4, r3
L_8008B76C:
    addi r3, r3, 0x1
L_8008B770:
    lbz r0, 0x0(r3)
    cmplwi r0, 0x0
    opword  0x4082FFE8  // bne .L_8008B760
    lbz r0, 0x0(r4)
    cmpwi r0, 0x5c
    opword  0x40820008  // bne .L_8008B78C
    addi r4, r4, 0x1
L_8008B78C:
    li r3, 0x0
    opword  0x48000020  // b .L_8008B7B0
L_8008B794:
    cmpwi r0, 0x2e
    opword  0x4182002C  // beq .L_8008B7C4
    lbz r0, 0x0(r4)
    addi r3, r3, 0x1
    addi r4, r4, 0x1
    stb r0, 0x0(r6)
    addi r6, r6, 0x1
L_8008B7B0:
    lbz r0, 0x0(r4)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8008B7C4
    cmpwi r3, 0x20
    opword  0x4180FFD4  // blt .L_8008B794
L_8008B7C4:
    li r0, 0x0
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    stb r0, 0x0(r6)
    addi r4, r31, 0x3a4
    lwz r7, 0x1c(r1)
    addi r6, r1, 0x28
    lwz r8, 0x18(r1)
    crclr 6
    bl fn_80088684
    li r6, 0x0
L_8008B7EC:
    lis r3, lbl_8052E894@ha
    lwz r0, lbl_8052E894@l(r3)
    cmplwi r0, 0x0
    opword  0x41820078  // beq .L_8008B870
    clrlwi r0, r29, 24
    cmplwi r0, 0x1
    opword  0x40820030  // bne .L_8008B834
    stw r6, 0x8(r1)
    addi r3, r1, 0x28
    lwz r4, 0x1c(r1)
    addi r6, r1, 0x20
    lwz r5, 0x18(r1)
    addi r7, r1, 0x24
    addi r8, r1, 0x4c
    li r9, 0x100
    li r10, 0x1
    bl fn_8008C528
    opword  0x4800002C  // b .L_8008B85C
L_8008B834:
    stw r6, 0x8(r1)
    mr r4, r30
    addi r6, r1, 0x20
    addi r7, r1, 0x24
    addi r8, r1, 0x4c
    li r3, 0x0
    li r5, -0x1
    li r9, 0x100
    li r10, 0x1
    bl fn_8008C528
L_8008B85C:
    clrlwi r0, r3, 24
    cmplwi r0, 0x1
    opword  0x4082000C  // bne .L_8008B870
    li r0, 0x1
    opword  0x48000008  // b .L_8008B874
L_8008B870:
    li r0, 0x0
L_8008B874:
    clrlwi. r0, r0, 24
    opword  0x40820010  // bne .L_8008B888
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x3f8
    bl fn_80088710
L_8008B888:
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
L_8008B894:
    lwz r0, 0x164(r1)
    lwz r31, 0x15c(r1)
    lwz r30, 0x158(r1)
    lwz r29, 0x154(r1)
    lwz r28, 0x150(r1)
    mtlr r0
    addi r1, r1, 0x160
    blr
}

ASM void fn_8008B8B4(void)
{
    nofralloc
    stwu r1, -0x3a0(r1)
    mflr r0
    stw r0, 0x3a4(r1)
    stmw r22, 0x378(r1)
    mr r29, r3
    mr r26, r4
    mr r25, r5
    li r22, 0x0
    bl OSGetTime
    lis r5, 0x1062
    mr r28, r4
    mr r27, r3
    lis r23, 0x8000
    addi r24, r5, 0x4dd3
    li r31, 0x32
    li r30, 0x0
L_8008B8F4:
    bl OSGetTime
    lwz r0, 0xf8(r23)
    subfc r4, r28, r4
    subfe r3, r27, r3
    li r5, 0x0
    srwi r0, r0, 2
    mulhwu r0, r24, r0
    srwi r6, r0, 6
    bl __div2i
    xoris r5, r3, 0x8000
    xoris r3, r30, 0x8000
    subfc r0, r31, r4
    subfe r3, r3, r5
    subfe r3, r5, r5
    neg. r3, r3
    opword  0x4082FFC4  // bne .L_8008B8F4
    lwz r3, 0x84(r29)
    addis r0, r3, 0x1
    cmplwi r0, 0xffff
    opword  0x408203A8  // bne .L_8008BCE8
    addi r3, r1, 0x2c8
    li r4, 0x0
    bl fn_8008CF54
    addi r3, r1, 0x218
    li r4, 0x1
    bl fn_8008CF54
    addi r3, r1, 0x168
    li r4, 0x2
    bl fn_8008CF54
    addi r3, r1, 0xb8
    li r4, 0x3
    bl fn_8008CF54
    bl fn_8008D15C
    lha r0, 0x344(r1)
    li r3, 0x0
    cmpwi r0, -0x1
    opword  0x41820014  // beq .L_8008B998
    lbz r0, 0x360(r1)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_8008B998
    li r3, 0x1
L_8008B998:
    clrlwi. r0, r3, 24
    opword  0x41820034  // beq .L_8008B9D0
    lis r3, lbl_804993B0@ha
    li r5, 0x0
    addi r4, r3, lbl_804993B0@l
    lwz r3, 0x0(r4)
    lwz r4, 0x4(r4)
    xor r0, r3, r5
    xor r5, r4, r5
    or. r0, r5, r0
    opword  0x41820008  // beq .L_8008B9C8
    opword  0x48000014  // b .L_8008B9D8
L_8008B9C8:
    bl OSGetTime
    opword  0x4800000C  // b .L_8008B9D8
L_8008B9D0:
    li r4, 0x0
    mr r3, r4
L_8008B9D8:
    lha r0, 0x294(r1)
    lis r5, lbl_804993B0@ha
    addi r6, r5, lbl_804993B0@l
    li r5, 0x0
    cmpwi r0, -0x1
    stw r4, 0x4(r6)
    stw r3, 0x0(r6)
    opword  0x41820014  // beq .L_8008BA08
    lbz r0, 0x2b0(r1)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_8008BA08
    li r5, 0x1
L_8008BA08:
    clrlwi. r0, r5, 24
    opword  0x41820034  // beq .L_8008BA40
    lis r3, lbl_804993B0@ha
    li r5, 0x0
    addi r4, r3, lbl_804993B0@l
    lwz r3, 0x8(r4)
    lwz r4, 0xc(r4)
    xor r0, r3, r5
    xor r5, r4, r5
    or. r0, r5, r0
    opword  0x41820008  // beq .L_8008BA38
    opword  0x48000014  // b .L_8008BA48
L_8008BA38:
    bl OSGetTime
    opword  0x4800000C  // b .L_8008BA48
L_8008BA40:
    li r4, 0x0
    mr r3, r4
L_8008BA48:
    lha r0, 0x1e4(r1)
    lis r5, lbl_804993B0@ha
    addi r29, r5, lbl_804993B0@l
    li r5, 0x0
    cmpwi r0, -0x1
    stw r4, 0xc(r29)
    stw r3, 0x8(r29)
    opword  0x41820014  // beq .L_8008BA78
    lbz r0, 0x200(r1)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_8008BA78
    li r5, 0x1
L_8008BA78:
    clrlwi. r0, r5, 24
    opword  0x41820034  // beq .L_8008BAB0
    lis r3, lbl_804993B0@ha
    li r5, 0x0
    addi r4, r3, lbl_804993B0@l
    lwz r3, 0x10(r4)
    lwz r4, 0x14(r4)
    xor r0, r3, r5
    xor r5, r4, r5
    or. r0, r5, r0
    opword  0x41820008  // beq .L_8008BAA8
    opword  0x48000014  // b .L_8008BAB8
L_8008BAA8:
    bl OSGetTime
    opword  0x4800000C  // b .L_8008BAB8
L_8008BAB0:
    li r4, 0x0
    mr r3, r4
L_8008BAB8:
    lha r0, 0x134(r1)
    lis r5, lbl_804993B0@ha
    addi r30, r5, lbl_804993B0@l
    li r5, 0x0
    cmpwi r0, -0x1
    stw r4, 0x14(r30)
    stw r3, 0x10(r30)
    opword  0x41820014  // beq .L_8008BAE8
    lbz r0, 0x150(r1)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_8008BAE8
    li r5, 0x1
L_8008BAE8:
    clrlwi. r0, r5, 24
    opword  0x41820034  // beq .L_8008BB20
    lis r3, lbl_804993B0@ha
    li r5, 0x0
    addi r4, r3, lbl_804993B0@l
    lwz r3, 0x18(r4)
    lwz r4, 0x1c(r4)
    xor r0, r3, r5
    xor r5, r4, r5
    or. r0, r5, r0
    opword  0x41820008  // beq .L_8008BB18
    opword  0x48000014  // b .L_8008BB28
L_8008BB18:
    bl OSGetTime
    opword  0x4800000C  // b .L_8008BB28
L_8008BB20:
    li r4, 0x0
    mr r3, r4
L_8008BB28:
    lis r5, lbl_804993B0@ha
    li r27, 0x0
    addi r31, r5, lbl_804993B0@l
    lwz r0, 0x0(r31)
    lwz r5, 0x4(r31)
    stw r4, 0x1c(r31)
    xor r0, r0, r27
    xor r4, r5, r27
    or. r0, r4, r0
    stw r3, 0x18(r31)
    opword  0x41820024  // beq .L_8008BB74
    bl OSGetTime
    lis r5, lbl_804993B0@ha
    addi r6, r5, lbl_804993B0@l
    lwz r5, 0x4(r6)
    lwz r0, 0x0(r6)
    subfc r27, r5, r4
    subfe r24, r0, r3
    opword  0x48000008  // b .L_8008BB78
L_8008BB74:
    mr r24, r27
L_8008BB78:
    lwz r0, 0x8(r29)
    li r28, 0x0
    lwz r3, 0xc(r29)
    xor r0, r0, r28
    xor r3, r3, r28
    or. r0, r3, r0
    opword  0x4182001C  // beq .L_8008BBAC
    bl OSGetTime
    lwz r5, 0xc(r29)
    lwz r0, 0x8(r29)
    subfc r28, r5, r4
    subfe r29, r0, r3
    opword  0x48000008  // b .L_8008BBB0
L_8008BBAC:
    mr r29, r28
L_8008BBB0:
    lwz r0, 0x10(r30)
    li r23, 0x0
    lwz r3, 0x14(r30)
    xor r0, r0, r23
    xor r3, r3, r23
    or. r0, r3, r0
    opword  0x4182001C  // beq .L_8008BBE4
    bl OSGetTime
    lwz r5, 0x14(r30)
    lwz r0, 0x10(r30)
    subfc r23, r5, r4
    subfe r22, r0, r3
    opword  0x48000008  // b .L_8008BBE8
L_8008BBE4:
    mr r22, r23
L_8008BBE8:
    lwz r0, 0x18(r31)
    li r30, 0x0
    lwz r3, 0x1c(r31)
    xor r0, r0, r30
    xor r3, r3, r30
    or. r0, r3, r0
    opword  0x4182001C  // beq .L_8008BC1C
    bl OSGetTime
    lwz r5, 0x1c(r31)
    lwz r0, 0x18(r31)
    subfc r30, r5, r4
    subfe r31, r0, r3
    opword  0x48000008  // b .L_8008BC20
L_8008BC1C:
    mr r31, r30
L_8008BC20:
    mr r6, r27
    mr r5, r24
    addi r3, r1, 0x2c8
    bl fn_8008D4CC
    mr r6, r28
    mr r5, r29
    addi r3, r1, 0x218
    bl fn_8008D4CC
    mr r6, r23
    mr r5, r22
    addi r3, r1, 0x168
    bl fn_8008D4CC
    mr r6, r30
    mr r5, r31
    addi r3, r1, 0xb8
    bl fn_8008D4CC
    cmplwi r26, 0x0
    opword  0x41820024  // beq .L_8008BC88
    lwz r3, 0x2e4(r1)
    lwz r0, 0x234(r1)
    lwz r4, 0x184(r1)
    or r0, r3, r0
    lwz r3, 0xd4(r1)
    or r0, r4, r0
    or r0, r3, r0
    stw r0, 0x0(r26)
L_8008BC88:
    cmplwi r25, 0x0
    opword  0x41820024  // beq .L_8008BCB0
    lwz r3, 0x2e0(r1)
    lwz r0, 0x230(r1)
    lwz r4, 0x180(r1)
    or r0, r3, r0
    lwz r3, 0xd0(r1)
    or r0, r4, r0
    or r0, r3, r0
    stw r0, 0x0(r25)
L_8008BCB0:
    addi r3, r1, 0xb8
    li r22, 0x1
    li r4, -0x1
    bl dtor_8008D028
    addi r3, r1, 0x168
    li r4, -0x1
    bl dtor_8008D028
    addi r3, r1, 0x218
    li r4, -0x1
    bl dtor_8008D028
    addi r3, r1, 0x2c8
    li r4, -0x1
    bl dtor_8008D028
    opword  0x48000128  // b .L_8008BE0C
L_8008BCE8:
    lwz r4, 0x88(r29)
    cmpwi r4, 0x0
    opword  0x418000E4  // blt .L_8008BDD4
    addi r3, r1, 0x8
    bl fn_8008CF54
    lha r0, 0x84(r1)
    lis r3, lbl_804993B0@ha
    addi r23, r3, lbl_804993B0@l
    li r3, 0x0
    cmpwi r0, -0x1
    opword  0x41820014  // beq .L_8008BD24
    lbz r0, 0xa0(r1)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_8008BD24
    li r3, 0x1
L_8008BD24:
    clrlwi. r0, r3, 24
    opword  0x4182002C  // beq .L_8008BD54
    lwz r3, 0x0(r23)
    li r5, 0x0
    lwz r4, 0x4(r23)
    xor r0, r3, r5
    xor r5, r4, r5
    or. r0, r5, r0
    opword  0x41820008  // beq .L_8008BD4C
    opword  0x48000014  // b .L_8008BD5C
L_8008BD4C:
    bl OSGetTime
    opword  0x4800000C  // b .L_8008BD5C
L_8008BD54:
    li r4, 0x0
    mr r3, r4
L_8008BD5C:
    li r6, 0x0
    stw r4, 0x4(r23)
    xor r4, r4, r6
    xor r0, r3, r6
    stw r3, 0x0(r23)
    or. r0, r4, r0
    opword  0x4182001C  // beq .L_8008BD90
    bl OSGetTime
    lwz r5, 0x4(r23)
    lwz r0, 0x0(r23)
    subfc r6, r5, r4
    subfe r5, r0, r3
    opword  0x48000008  // b .L_8008BD94
L_8008BD90:
    mr r5, r6
L_8008BD94:
    addi r3, r1, 0x8
    bl fn_8008D4CC
    bl fn_8008D15C
    cmplwi r26, 0x0
    opword  0x4182000C  // beq .L_8008BDB0
    lwz r0, 0x24(r1)
    stw r0, 0x0(r26)
L_8008BDB0:
    cmplwi r25, 0x0
    opword  0x4182000C  // beq .L_8008BDC0
    lwz r0, 0x20(r1)
    stw r0, 0x0(r25)
L_8008BDC0:
    addi r3, r1, 0x8
    li r22, 0x1
    li r4, -0x1
    bl dtor_8008D028
    opword  0x4800003C  // b .L_8008BE0C
L_8008BDD4:
    cmplwi r3, 0x0
    opword  0x41820034  // beq .L_8008BE0C
    bl fn_8008D15C
    cmplwi r26, 0x0
    opword  0x41820010  // beq .L_8008BDF4
    lwz r3, 0x84(r29)
    lwz r0, 0x1c(r3)
    stw r0, 0x0(r26)
L_8008BDF4:
    cmplwi r25, 0x0
    opword  0x41820010  // beq .L_8008BE08
    lwz r3, 0x84(r29)
    lwz r0, 0x18(r3)
    stw r0, 0x0(r25)
L_8008BE08:
    li r22, 0x1
L_8008BE0C:
    mr r3, r22
    lmw r22, 0x378(r1)
    lwz r0, 0x3a4(r1)
    mtlr r0
    addi r1, r1, 0x3a0
    blr
}

ASM void fn_8008BE24(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stmw r22, 0x18(r1)
    mr r24, r3
    lis r3, lbl_8045E878@ha
    mr r25, r4
    mr r26, r5
    mr r27, r6
    mr r28, r7
    addi r31, r3, lbl_8045E878@l
    lwz r8, 0x84(r24)
    addis r0, r8, 0x1
    cmplwi r0, 0xffff
    opword  0x4082000C  // bne .L_8008BE68
    li r0, 0x1
    opword  0x4800002C  // b .L_8008BE90
L_8008BE68:
    lwz r0, 0x88(r24)
    cmpwi r0, 0x0
    opword  0x4180000C  // blt .L_8008BE7C
    li r0, 0x1
    opword  0x48000018  // b .L_8008BE90
L_8008BE7C:
    cmplwi r8, 0x0
    opword  0x4182000C  // beq .L_8008BE8C
    li r0, 0x1
    opword  0x48000008  // b .L_8008BE90
L_8008BE8C:
    li r0, 0x0
L_8008BE90:
    opword  0x806D8D40  // lwz r3, lbl_8053A900@sda21(r0)
    clrlwi r0, r0, 24
    cntlzw r0, r0
    lwz r3, 0x80(r3)
    srwi r30, r0, 5
    lwz r0, 0x0(r3)
    cmplwi r0, 0x0
    opword  0x41820448  // beq .L_8008C2F4
    li r3, 0x0
    bl fn_8004BA50
    li r3, 0x0
    bl fn_8004BA94
    li r3, 0x0
    bl fn_8004D0C4
    bl fn_8004CF18
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820420  // beq .L_8008C2F4
    clrlwi r0, r25, 16
    cmplwi r0, 0x11
    opword  0x40800018  // bge .L_8008BEF8
    lwz r5, 0x7c(r24)
    addi r4, r31, 0x488
    crclr 6
    bl fn_80088684
    opword  0x48000014  // b .L_8008BF08
L_8008BEF8:
    lwz r5, 0x7c(r24)
    addi r4, r31, 0x4c0
    crclr 6
    bl fn_80088684
L_8008BF08:
    li r29, 0x0
    clrlwi r23, r30, 24
L_8008BF10:
    mr r3, r24
    mr r4, r25
    mr r5, r26
    mr r6, r27
    mr r7, r28
    bl fn_8008AD78
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
    lwz r3, 0x8c(r24)
    bl fn_8008C308
    lwz r0, 0x9c(r24)
    clrlwi. r0, r0, 31
    opword  0x41820034  // beq .L_8008BF78
    mr r3, r24
    mr r5, r25
    mr r6, r26
    mr r7, r27
    mr r8, r28
    li r4, 0x1
    bl fn_8008B508
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
    lwz r3, 0x8c(r24)
    bl fn_8008C308
L_8008BF78:
    lwz r0, 0x9c(r24)
    rlwinm. r0, r0, 0, 29, 29
    opword  0x41820034  // beq .L_8008BFB4
    mr r3, r24
    mr r5, r25
    mr r6, r26
    mr r7, r27
    mr r8, r28
    li r4, 0x5
    bl fn_8008B508
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
    lwz r3, 0x8c(r24)
    bl fn_8008C308
L_8008BFB4:
    lwz r0, 0x9c(r24)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x41820034  // beq .L_8008BFF0
    mr r3, r24
    mr r5, r25
    mr r6, r26
    mr r7, r27
    mr r8, r28
    li r4, 0x4
    bl fn_8008B508
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
    lwz r3, 0x8c(r24)
    bl fn_8008C308
L_8008BFF0:
    lwz r0, 0x9c(r24)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x41820034  // beq .L_8008C02C
    mr r3, r24
    mr r5, r25
    mr r6, r26
    mr r7, r27
    mr r8, r28
    li r4, 0x2
    bl fn_8008B508
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
    lwz r3, 0x8c(r24)
    bl fn_8008C308
L_8008C02C:
    lwz r0, 0x9c(r24)
    rlwinm. r0, r0, 0, 27, 27
    opword  0x41820034  // beq .L_8008C068
    mr r3, r24
    mr r5, r25
    mr r6, r26
    mr r7, r27
    mr r8, r28
    li r4, 0x3
    bl fn_8008B508
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
    lwz r3, 0x90(r24)
    bl fn_8008C308
L_8008C068:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r31, 0x4f0
    bl fn_80088710
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
    cmpwi r29, 0x0
    opword  0x40820040  // bne .L_8008C0C4
    opword  0x800D8D48  // lwz r0, lbl_8053A908@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820034  // beq .L_8008C0C4
    bl OSEnableInterrupts
    opword  0x818D8D48  // lwz r12, lbl_8053A908@sda21(r0)
    mr r22, r3
    mr r3, r25
    mr r4, r26
    mr r5, r27
    mr r6, r28
    li r29, 0x1
    mtctr r12
    bctrl
    mr r3, r22
    bl OSRestoreInterrupts
L_8008C0C4:
    lwz r0, 0x98(r24)
    cmplwi r0, 0x0
    opword  0x41820020  // beq .L_8008C0EC
    cmplwi r23, 0x0
    opword  0x41820018  // beq .L_8008C0EC
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    lwz r0, 0x58(r3)
    clrlwi r0, r0, 31
    stw r0, 0x58(r3)
    opword  0x4BFFFE28  // b .L_8008BF10
L_8008C0EC:
    clrlwi. r0, r30, 24
    opword  0x40820144  // bne .L_8008C234
    bl OSEnableInterrupts
    li r22, 0x0
    li r23, 0x0
L_8008C100:
    mr r3, r24
    addi r4, r1, 0x8
    addi r5, r1, 0xc
    bl fn_8008B8B4
    lwz r0, 0x8(r1)
    li r3, 0x0
    cmplwi r0, 0x100
    opword  0x40820014  // bne .L_8008C130
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    lwz r4, 0x24(r3)
    bl fn_80088A58
    li r3, 0x1
L_8008C130:
    lwz r0, 0x8(r1)
    cmplwi r0, 0x200
    opword  0x40820018  // bne .L_8008C150
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    lwz r0, 0x24(r3)
    neg r4, r0
    bl fn_80088A58
    li r3, 0x1
L_8008C150:
    lwz r0, 0xc(r1)
    cmplwi r0, 0x8
    opword  0x4082004C  // bne .L_8008C1A4
    cmpwi r22, 0x3
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    opword  0x4080000C  // bge .L_8008C170
    li r4, -0x1
    opword  0x48000024  // b .L_8008C190
L_8008C170:
    cmpwi r22, 0x5
    opword  0x4080000C  // bge .L_8008C180
    li r4, -0x2
    opword  0x48000014  // b .L_8008C190
L_8008C180:
    cmpwi r22, 0x7
    li r4, -0x8
    opword  0x40800008  // bge .L_8008C190
    li r4, -0x4
L_8008C190:
    bl fn_80088A58
    li r3, 0x1
    li r23, 0x0
    addi r22, r22, 0x1
    opword  0x4800005C  // b .L_8008C1FC
L_8008C1A4:
    cmplwi r0, 0x4
    opword  0x4082004C  // bne .L_8008C1F4
    cmpwi r23, 0x3
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    opword  0x4080000C  // bge .L_8008C1C0
    li r4, 0x1
    opword  0x48000024  // b .L_8008C1E0
L_8008C1C0:
    cmpwi r23, 0x5
    opword  0x4080000C  // bge .L_8008C1D0
    li r4, 0x2
    opword  0x48000014  // b .L_8008C1E0
L_8008C1D0:
    cmpwi r23, 0x7
    li r4, 0x8
    opword  0x40800008  // bge .L_8008C1E0
    li r4, 0x4
L_8008C1E0:
    bl fn_80088A58
    li r3, 0x1
    li r22, 0x0
    addi r23, r23, 0x1
    opword  0x4800000C  // b .L_8008C1FC
L_8008C1F4:
    li r22, 0x0
    li r23, 0x0
L_8008C1FC:
    clrlwi r0, r3, 24
    cmplwi r0, 0x1
    opword  0x40820024  // bne .L_8008C228
    bl fn_8004D140
    mr r25, r3
L_8008C210:
    bl fn_8004D140
    cmplw r25, r3
    opword  0x4182FFF8  // beq .L_8008C210
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
L_8008C228:
    li r3, 0x1e
    bl fn_8008C308
    opword  0x4BFFFED0  // b .L_8008C100
L_8008C234:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    lwz r0, 0x24(r3)
    neg r4, r0
    bl fn_80088A58
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
    li r3, 0x7d0
    bl fn_8008C308
L_8008C258:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    lwz r22, 0x48(r3)
    opword  0x48000054  // b .L_8008C2B4
L_8008C264:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    li r4, 0x1
    bl fn_80088A58
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    li r4, 0x1
    bl fn_80088DE8
    opword  0x832D8D54  // lwz r25, lbl_8053A914@sda21(r0)
    lwz r23, 0x48(r25)
    mr r3, r25
    bl fn_80088B58
    mr r24, r3
    mr r3, r25
    bl fn_80088B34
    subf r3, r23, r3
    addi r0, r3, 0x1
    cmplw r0, r24
    opword  0x40810018  // ble .L_8008C2BC
    li r3, 0x14
    bl fn_8008C308
    subi r22, r22, 0x1
L_8008C2B4:
    cmplwi r22, 0x0
    opword  0x4082FFAC  // bne .L_8008C264
L_8008C2BC:
    li r3, 0xbb8
    bl fn_8008C308
    opword  0x832D8D54  // lwz r25, lbl_8053A914@sda21(r0)
    lwz r23, 0x48(r25)
    mr r3, r25
    bl fn_80088B58
    mr r24, r3
    mr r3, r25
    bl fn_80088B34
    subf r3, r23, r3
    addi r0, r3, 0x1
    cmplw r0, r24
    opword  0x4081FF48  // ble .L_8008C234
    opword  0x4BFFFF68  // b .L_8008C258
L_8008C2F4:
    lmw r22, 0x18(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_8008C308(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr. r26, r3
    opword  0x41820060  // beq .L_8008C37C
    bl OSGetTime
    lis r5, 0x1062
    mr r28, r4
    mr r29, r3
    srawi r27, r26, 31
    addi r30, r5, 0x4dd3
    lis r31, 0x8000
L_8008C33C:
    bl OSGetTime
    lwz r0, 0xf8(r31)
    subfc r4, r28, r4
    subfe r3, r29, r3
    li r5, 0x0
    srwi r0, r0, 2
    mulhwu r0, r30, r0
    srwi r6, r0, 6
    bl __div2i
    xoris r5, r3, 0x8000
    xoris r3, r27, 0x8000
    subfc r0, r26, r4
    subfe r3, r3, r5
    subfe r3, r5, r5
    neg. r3, r3
    opword  0x4082FFC4  // bne .L_8008C33C
L_8008C37C:
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008C390(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r4, lbl_80497194@ha
    stw r0, 0x24(r1)
    addi r0, r4, lbl_80497194@l
    stw r31, 0x1c(r1)
    mr r31, r0
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    mr r28, r3
    bl OSGetArenaHi
    lis r4, lbl_80497194@ha
    addi r5, r4, lbl_80497194@l
    lhz r4, 0x4(r5)
    lhz r0, 0x8(r5)
    addi r4, r4, 0xf
    rlwinm r4, r4, 0, 16, 27
    mullw r0, r4, r0
    slwi r7, r0, 1
    subf r0, r7, r3
    clrrwi r30, r0, 5
    subi r0, r30, 0x14
    clrrwi. r29, r0, 5
    opword  0x41820018  // beq .L_8008C408
    mr r3, r29
    mr r4, r31
    mr r6, r30
    li r5, 0x1
    bl fn_8008CA24
L_8008C408:
    lwz r3, 0x80(r28)
    mr r4, r30
    lhz r5, 0x4(r31)
    lhz r6, 0x6(r31)
    bl fn_80089C70
    mr r3, r31
    bl fn_8004C6F0
    mr r3, r30
    bl fn_8004D048
    li r3, 0x0
    bl fn_8004D0C4
    bl fn_8004CF18
    bl fn_8004CF18
    li r30, 0x0
L_8008C440:
    bl fn_8004D140
    mr r31, r3
L_8008C448:
    bl fn_8004D140
    cmplw r31, r3
    opword  0x4182FFF8  // beq .L_8008C448
    addi r30, r30, 0x1
    cmpwi r30, 0x3
    opword  0x4180FFE4  // blt .L_8008C440
    stw r29, 0x7c(r28)
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008C484(void)
{
    nofralloc
    opword  0x800D8D44  // lwz r0, lbl_8053A904@sda21(r0)
    opword  0x906D8D44  // stw r3, lbl_8053A904@sda21(r0)
    mr r3, r0
    blr
}

ASM void fn_8008C494(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820064  // beq .L_8008C510
    lis r3, lbl_8052E894@ha
    lwz r31, lbl_8052E894@l(r3)
    opword  0x48000020  // b .L_8008C4D8
L_8008C4BC:
    lwz r4, 0x0(r31)
    mr r3, r30
    lwz r4, 0x0(r4)
    bl strcmp
    cmpwi r3, 0x0
    opword  0x41820040  // beq .L_8008C510
    lwz r31, 0xc(r31)
L_8008C4D8:
    cmplwi r31, 0x0
    opword  0x4082FFE0  // bne .L_8008C4BC
    li r3, 0x14
    bl fn_80084370
    mr. r31, r3
    opword  0x41820014  // beq .L_8008C500
    mr r4, r31
    addi r3, r31, 0x4
    bl fn_80086E2C
    stw r30, 0x0(r31)
L_8008C500:
    lis r3, lbl_8052E894@ha
    addi r4, r31, 0x4
    addi r3, r3, lbl_8052E894@l
    bl fn_80086F58
L_8008C510:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008C528(void)
{
    nofralloc
    stwu r1, -0x80(r1)
    mflr r0
    cmplwi r3, 0x0
    stw r0, 0x84(r1)
    stmw r24, 0x60(r1)
    mr r24, r4
    lbz r31, 0x8b(r1)
    mr r25, r5
    mr r26, r6
    mr r27, r7
    mr r28, r8
    mr r29, r9
    mr r30, r10
    opword  0x41820058  // beq .L_8008C5B4
    mr r4, r3
    addi r3, r1, 0x10
    bl strcpy
    addi r3, r1, 0x10
    opword  0x388288E0  // li r4, lbl_8053B880@sda21
    bl strcat
    stw r31, 0x8(r1)
    mr r4, r24
    mr r5, r25
    mr r6, r26
    mr r7, r27
    mr r8, r28
    mr r9, r29
    mr r10, r30
    addi r3, r1, 0x10
    bl fn_8008C608
    clrlwi r0, r3, 24
    cmplwi r0, 0x1
    opword  0x40820048  // bne .L_8008C5F0
    li r3, 0x1
    opword  0x48000044  // b .L_8008C5F4
L_8008C5B4:
    lis r3, lbl_8052E894@ha
    addi r3, r3, lbl_8052E894@l
    lwz r3, 0x0(r3)
    cmplwi r3, 0x0
    opword  0x4182002C  // beq .L_8008C5F0
    stw r31, 0x8(r1)
    li r5, -0x1
    lwz r3, 0x0(r3)
    lwz r3, 0x0(r3)
    bl fn_8008C608
    clrlwi r0, r3, 24
    cmplwi r0, 0x1
    opword  0x4082000C  // bne .L_8008C5F0
    li r3, 0x1
    opword  0x48000008  // b .L_8008C5F4
L_8008C5F0:
    li r3, 0x0
L_8008C5F4:
    lmw r24, 0x60(r1)
    lwz r0, 0x84(r1)
    mtlr r0
    addi r1, r1, 0x80
    blr
}

ASM void fn_8008C608(void)
{
    nofralloc
    stwu r1, -0xad0(r1)
    mflr r0
    stw r0, 0xad4(r1)
    stmw r16, 0xa90(r1)
    mr. r16, r3
    lbz r19, 0xadb(r1)
    mr r26, r4
    mr r27, r5
    mr r28, r6
    mr r29, r7
    mr r30, r8
    mr r18, r9
    mr r31, r10
    opword  0x4082000C  // bne .L_8008C648
    li r3, 0x0
    opword  0x480002EC  // b .L_8008C930
L_8008C648:
    addi r3, r1, 0x218
    bl fn_80089510
    mr r4, r16
    addi r3, r1, 0x218
    li r22, 0x0
    bl fn_80089578
    clrlwi. r0, r3, 24
    opword  0x40820018  // bne .L_8008C67C
    addi r3, r1, 0x218
    li r4, -0x1
    bl fn_80089534
    li r3, 0x0
    opword  0x480002B8  // b .L_8008C930
L_8008C67C:
    addi r25, r1, 0x19
    addi r24, r1, 0x2b
    addi r23, r1, 0x23
    addi r16, r1, 0x36
    li r17, 0x0
L_8008C690:
    li r20, 0x0
    addi r22, r22, 0x1
L_8008C698:
    addi r3, r1, 0x218
    addi r4, r1, 0x18
    li r5, 0x200
    bl fn_80089680
    cmpwi r3, 0x0
    opword  0x4180009C  // blt .L_8008C748
    lbz r0, 0x18(r1)
    cmpwi r0, 0x2e
    opword  0x4082FFE0  // bne .L_8008C698
    mr r3, r25
    addi r4, r1, 0x8
    li r6, 0x0
    opword  0x48000028  // b .L_8008C6F0
L_8008C6CC:
    lbz r0, 0x0(r3)
    stb r5, 0x0(r4)
    cmpwi r0, 0x20
    opword  0x41820024  // beq .L_8008C6FC
    cmpwi r6, 0xf
    opword  0x4182001C  // beq .L_8008C6FC
    addi r4, r4, 0x1
    addi r6, r6, 0x1
    addi r3, r3, 0x1
L_8008C6F0:
    lbz r5, 0x0(r3)
    extsb. r0, r5
    opword  0x4082FFD4  // bne .L_8008C6CC
L_8008C6FC:
    lbz r0, 0x0(r3)
    addi r4, r1, 0x8
    li r5, 0x0
    extsb. r0, r0
    stbx r5, r4, r6
    opword  0x41820038  // beq .L_8008C748
    lbz r0, 0x1(r3)
    cmpwi r0, 0x73
    opword  0x4082FF7C  // bne .L_8008C698
    lbz r0, 0x2(r3)
    cmpwi r0, 0x65
    opword  0x4082FF70  // bne .L_8008C698
    lbz r0, 0x3(r3)
    cmpwi r0, 0x63
    opword  0x4082FF64  // bne .L_8008C698
    lbz r0, 0x4(r3)
    cmpwi r0, 0x74
    opword  0x4082FF58  // bne .L_8008C698
    li r20, 0x1
L_8008C748:
    clrlwi. r0, r20, 24
    opword  0x418201BC  // beq .L_8008C908
    cmpwi r27, 0x0
    opword  0x4180000C  // blt .L_8008C760
    cmpw r27, r22
    opword  0x4082FF34  // bne .L_8008C690
L_8008C760:
    addi r3, r1, 0x218
    addi r4, r1, 0x18
    li r5, 0x200
    bl fn_80089680
    cmpwi r3, 0x4
    opword  0x40810168  // ble .L_8008C8DC
    cmpwi r3, 0x1c
    opword  0x4180FFE4  // blt .L_8008C760
    lbz r0, 0x34(r1)
    cmpwi r0, 0x34
    opword  0x4082FFD8  // bne .L_8008C760
    mr r3, r24
    li r4, 0x0
    li r5, 0x10
    bl strtol
    lbz r0, 0x2a(r1)
    li r4, 0x0
    li r5, 0x10
    extsb r6, r0
    subi r0, r6, 0x30
    slwi r0, r0, 28
    or r21, r0, r3
    mr r3, r23
    bl strtol
    cmplw r21, r26
    mr r20, r3
    opword  0x4181FF98  // bgt .L_8008C760
    add r0, r21, r20
    cmplw r26, r0
    opword  0x4080FF8C  // bge .L_8008C760
    cmplwi r28, 0x0
    opword  0x41820008  // beq .L_8008C7E4
    stw r21, 0x0(r28)
L_8008C7E4:
    cmplwi r29, 0x0
    opword  0x41820008  // beq .L_8008C7F0
    stw r20, 0x0(r29)
L_8008C7F0:
    cmplwi r30, 0x0
    opword  0x418200E4  // beq .L_8008C8D8
    mr r5, r16
    mr r6, r30
    subi r0, r18, 0x1
    li r7, 0x0
    li r3, 0x20
    opword  0x4800005C  // b .L_8008C868
L_8008C810:
    lbz r4, 0x0(r5)
    cmplwi r4, 0x20
    opword  0x4080000C  // bge .L_8008C824
    cmplwi r4, 0x9
    opword  0x40820050  // bne .L_8008C870
L_8008C824:
    cmpwi r4, 0x20
    opword  0x4182000C  // beq .L_8008C834
    cmplwi r4, 0x9
    opword  0x40820028  // bne .L_8008C858
L_8008C834:
    cmplwi r7, 0x0
    opword  0x41820020  // beq .L_8008C858
    lbz r4, -0x1(r6)
    cmpwi r4, 0x20
    opword  0x41820020  // beq .L_8008C864
    stb r3, 0x0(r6)
    addi r6, r6, 0x1
    addi r7, r7, 0x1
    opword  0x48000010  // b .L_8008C864
L_8008C858:
    stb r4, 0x0(r6)
    addi r6, r6, 0x1
    addi r7, r7, 0x1
L_8008C864:
    addi r5, r5, 0x1
L_8008C868:
    cmplw r7, r0
    opword  0x4180FFA4  // blt .L_8008C810
L_8008C870:
    cmplwi r7, 0x0
    opword  0x41820014  // beq .L_8008C888
    lbz r0, -0x1(r6)
    cmpwi r0, 0x20
    opword  0x40820008  // bne .L_8008C888
    subi r6, r6, 0x1
L_8008C888:
    li r3, 0x0
    clrlwi. r0, r31, 24
    stb r3, 0x0(r6)
    opword  0x41820044  // beq .L_8008C8D8
    clrlwi. r0, r19, 24
    opword  0x41820010  // beq .L_8008C8AC
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    opword  0x388288C8  // li r4, lbl_8053B868@sda21
    bl fn_80088710
L_8008C8AC:
    lis r4, lbl_8045ED8C@ha
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    addi r4, r4, lbl_8045ED8C@l
    mr r5, r26
    mr r7, r21
    mr r8, r20
    mr r9, r30
    addi r6, r1, 0x8
    crclr 6
    bl fn_80088684
    li r19, 0x0
L_8008C8D8:
    li r17, 0x1
L_8008C8DC:
    cmpwi r27, 0x0
    opword  0x4180FDB0  // blt .L_8008C690
    cmpw r27, r22
    opword  0x4082FDA8  // bne .L_8008C690
    clrlwi. r0, r31, 24
    opword  0x41820018  // beq .L_8008C908
    clrlwi. r0, r19, 24
    opword  0x41820010  // beq .L_8008C908
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    opword  0x388288C8  // li r4, lbl_8053B868@sda21
    bl fn_80088710
L_8008C908:
    addi r3, r1, 0x218
    bl fn_80089620
    clrlwi r5, r17, 24
    addi r3, r1, 0x218
    neg r0, r5
    li r4, -0x1
    or r0, r0, r5
    srwi r16, r0, 31
    bl fn_80089534
    mr r3, r16
L_8008C930:
    lmw r16, 0xa90(r1)
    lwz r0, 0xad4(r1)
    mtlr r0
    addi r1, r1, 0xad0
    blr
}

ASM void fn_8008C944(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x418200AC  // beq .L_8008CA0C
    cmplwi r31, 0x0
    opword  0x40820008  // bne .L_8008C970
    opword  0x480000A0  // b .L_8008CA0C
L_8008C970:
    mr r3, r31
    li r4, 0x32
    bl fn_80088060
    cmplwi r3, 0x0
    opword  0x4182008C  // beq .L_8008CA0C
    opword  0x93CD8D4C  // stw r30, lbl_8053A90C@sda21(r0)
    mr r4, r30
    mr r5, r31
    li r3, 0x32
    opword  0x93ED8D50  // stw r31, lbl_8053A910@sda21(r0)
    bl fn_80087E48
    mr r4, r3
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    opword  0x908D8D54  // stw r4, lbl_8053A914@sda21(r0)
    bl fn_80088E64
    opword  0x80AD8D54  // lwz r5, lbl_8053A914@sda21(r0)
    li r4, 0xf
    opword  0xC02288E8  // lfs f1, lbl_8053B888@sda21(r0)
    li r3, 0x1a
    opword  0xC00288EC  // lfs f0, lbl_8053B88C@sda21(r0)
    li r0, 0x17
    stfs fp1, 0x50(r5)
    stfs fp0, 0x54(r5)
    opword  0x80AD8D54  // lwz r5, lbl_8053A914@sda21(r0)
    stw r4, 0x40(r5)
    stw r3, 0x44(r5)
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    stw r0, 0x48(r3)
    lwz r0, 0x48(r3)
    lwz r4, 0x24(r3)
    cmplw r0, r4
    opword  0x40810008  // ble .L_8008C9F4
    stw r4, 0x48(r3)
L_8008C9F4:
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    li r4, 0x1
    li r0, 0x3
    stb r4, 0x68(r3)
    opword  0x806D8D54  // lwz r3, lbl_8053A914@sda21(r0)
    stw r0, 0x58(r3)
L_8008CA0C:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008CA24(void)
{
    nofralloc
    stw r4, 0x0(r3)
    li r4, 0x1
    li r0, 0x0
    stw r7, 0x4(r3)
    sth r4, 0xc(r3)
    sth r5, 0xe(r3)
    stb r0, 0x10(r3)
    blr
}

ASM void fn_8008CA44(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820028  // beq .L_8008CA88
    lis r5, lbl_80499414@ha
    li r4, 0x0
    addi r0, r5, lbl_80499414@l
    stw r0, 0x0(r30)
    bl fn_80085674
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8008CA88
    mr r3, r30
    bl dtor_80084580
L_8008CA88:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

